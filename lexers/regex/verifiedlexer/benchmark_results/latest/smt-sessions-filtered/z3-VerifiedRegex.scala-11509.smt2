; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!629706 () Bool)

(assert start!629706)

(declare-fun b!6356395 () Bool)

(assert (=> b!6356395 true))

(assert (=> b!6356395 true))

(declare-fun lambda!349996 () Int)

(declare-fun lambda!349995 () Int)

(assert (=> b!6356395 (not (= lambda!349996 lambda!349995))))

(assert (=> b!6356395 true))

(assert (=> b!6356395 true))

(declare-fun b!6356406 () Bool)

(assert (=> b!6356406 true))

(declare-fun bs!1591967 () Bool)

(declare-fun b!6356387 () Bool)

(assert (= bs!1591967 (and b!6356387 b!6356395)))

(declare-datatypes ((C!32800 0))(
  ( (C!32801 (val!26102 Int)) )
))
(declare-datatypes ((Regex!16265 0))(
  ( (ElementMatch!16265 (c!1156730 C!32800)) (Concat!25110 (regOne!33042 Regex!16265) (regTwo!33042 Regex!16265)) (EmptyExpr!16265) (Star!16265 (reg!16594 Regex!16265)) (EmptyLang!16265) (Union!16265 (regOne!33043 Regex!16265) (regTwo!33043 Regex!16265)) )
))
(declare-fun r!7292 () Regex!16265)

(declare-fun lt!2366179 () Regex!16265)

(declare-fun lambda!349998 () Int)

(assert (=> bs!1591967 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!349998 lambda!349995))))

(assert (=> bs!1591967 (not (= lambda!349998 lambda!349996))))

(assert (=> b!6356387 true))

(assert (=> b!6356387 true))

(assert (=> b!6356387 true))

(declare-fun lambda!349999 () Int)

(assert (=> bs!1591967 (not (= lambda!349999 lambda!349995))))

(assert (=> bs!1591967 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!349999 lambda!349996))))

(assert (=> b!6356387 (not (= lambda!349999 lambda!349998))))

(assert (=> b!6356387 true))

(assert (=> b!6356387 true))

(assert (=> b!6356387 true))

(declare-fun lambda!350000 () Int)

(declare-fun lt!2366173 () Regex!16265)

(assert (=> bs!1591967 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350000 lambda!349995))))

(assert (=> bs!1591967 (not (= lambda!350000 lambda!349996))))

(assert (=> b!6356387 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350000 lambda!349998))))

(assert (=> b!6356387 (not (= lambda!350000 lambda!349999))))

(assert (=> b!6356387 true))

(assert (=> b!6356387 true))

(assert (=> b!6356387 true))

(declare-fun lambda!350001 () Int)

(assert (=> bs!1591967 (not (= lambda!350001 lambda!349995))))

(assert (=> bs!1591967 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350001 lambda!349996))))

(assert (=> b!6356387 (not (= lambda!350001 lambda!350000))))

(assert (=> b!6356387 (not (= lambda!350001 lambda!349998))))

(assert (=> b!6356387 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350001 lambda!349999))))

(assert (=> b!6356387 true))

(assert (=> b!6356387 true))

(assert (=> b!6356387 true))

(declare-fun b!6356371 () Bool)

(declare-fun e!3859963 () Bool)

(declare-fun e!3859978 () Bool)

(assert (=> b!6356371 (= e!3859963 e!3859978)))

(declare-fun res!2615557 () Bool)

(assert (=> b!6356371 (=> res!2615557 e!3859978)))

(declare-datatypes ((List!65094 0))(
  ( (Nil!64970) (Cons!64970 (h!71418 Regex!16265) (t!378684 List!65094)) )
))
(declare-datatypes ((Context!11298 0))(
  ( (Context!11299 (exprs!6149 List!65094)) )
))
(declare-datatypes ((List!65095 0))(
  ( (Nil!64971) (Cons!64971 (h!71419 Context!11298) (t!378685 List!65095)) )
))
(declare-fun lt!2366165 () List!65095)

(declare-fun zl!343 () List!65095)

(declare-fun zipperDepthTotal!402 (List!65095) Int)

(assert (=> b!6356371 (= res!2615557 (>= (zipperDepthTotal!402 lt!2366165) (zipperDepthTotal!402 zl!343)))))

(declare-fun lt!2366194 () Context!11298)

(assert (=> b!6356371 (= lt!2366165 (Cons!64971 lt!2366194 Nil!64971))))

(declare-fun b!6356372 () Bool)

(declare-fun res!2615556 () Bool)

(declare-fun e!3859964 () Bool)

(assert (=> b!6356372 (=> res!2615556 e!3859964)))

(get-info :version)

(assert (=> b!6356372 (= res!2615556 (not ((_ is Cons!64970) (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6356373 () Bool)

(declare-fun res!2615562 () Bool)

(declare-fun e!3859965 () Bool)

(assert (=> b!6356373 (=> res!2615562 e!3859965)))

(declare-datatypes ((List!65096 0))(
  ( (Nil!64972) (Cons!64972 (h!71420 C!32800) (t!378686 List!65096)) )
))
(declare-fun s!2326 () List!65096)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2366193 () (InoxSet Context!11298))

(declare-fun lt!2366167 () Bool)

(declare-fun matchZipper!2277 ((InoxSet Context!11298) List!65096) Bool)

(assert (=> b!6356373 (= res!2615562 (not (= lt!2366167 (matchZipper!2277 lt!2366193 (t!378686 s!2326)))))))

(declare-fun b!6356374 () Bool)

(declare-fun e!3859971 () Bool)

(declare-fun lt!2366164 () Bool)

(declare-fun lt!2366180 () Bool)

(assert (=> b!6356374 (= e!3859971 (= lt!2366164 lt!2366180))))

(declare-fun lt!2366186 () Bool)

(declare-fun matchR!8448 (Regex!16265 List!65096) Bool)

(assert (=> b!6356374 (= lt!2366186 (matchR!8448 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) s!2326))))

(declare-datatypes ((Unit!158391 0))(
  ( (Unit!158392) )
))
(declare-fun lt!2366191 () Unit!158391)

(declare-fun lemmaConcatAssociative!114 (Regex!16265 Regex!16265 Regex!16265 List!65096) Unit!158391)

(assert (=> b!6356374 (= lt!2366191 (lemmaConcatAssociative!114 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326))))

(declare-fun b!6356375 () Bool)

(declare-fun res!2615553 () Bool)

(declare-fun e!3859962 () Bool)

(assert (=> b!6356375 (=> res!2615553 e!3859962)))

(declare-fun isEmpty!37069 (List!65094) Bool)

(assert (=> b!6356375 (= res!2615553 (isEmpty!37069 (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6356376 () Bool)

(declare-fun res!2615560 () Bool)

(declare-fun e!3859960 () Bool)

(assert (=> b!6356376 (=> res!2615560 e!3859960)))

(assert (=> b!6356376 (= res!2615560 (not (= lt!2366164 (matchR!8448 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) s!2326))))))

(declare-fun b!6356377 () Bool)

(declare-fun e!3859966 () Bool)

(declare-fun lt!2366163 () (InoxSet Context!11298))

(assert (=> b!6356377 (= e!3859966 (matchZipper!2277 lt!2366163 (t!378686 s!2326)))))

(declare-fun b!6356378 () Bool)

(declare-fun res!2615572 () Bool)

(assert (=> b!6356378 (=> res!2615572 e!3859964)))

(declare-fun generalisedConcat!1862 (List!65094) Regex!16265)

(assert (=> b!6356378 (= res!2615572 (not (= r!7292 (generalisedConcat!1862 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun b!6356379 () Bool)

(declare-fun e!3859977 () Bool)

(declare-fun e!3859969 () Bool)

(assert (=> b!6356379 (= e!3859977 e!3859969)))

(declare-fun res!2615576 () Bool)

(assert (=> b!6356379 (=> res!2615576 e!3859969)))

(declare-fun lt!2366169 () (InoxSet Context!11298))

(declare-fun lt!2366184 () (InoxSet Context!11298))

(assert (=> b!6356379 (= res!2615576 (not (= lt!2366169 lt!2366184)))))

(declare-fun lt!2366161 () List!65094)

(declare-fun derivationStepZipperDown!1513 (Regex!16265 Context!11298 C!32800) (InoxSet Context!11298))

(assert (=> b!6356379 (= lt!2366184 (derivationStepZipperDown!1513 (regOne!33042 (regOne!33042 r!7292)) (Context!11299 lt!2366161) (h!71420 s!2326)))))

(assert (=> b!6356379 (= lt!2366161 (Cons!64970 (regTwo!33042 (regOne!33042 r!7292)) (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6356380 () Bool)

(declare-fun res!2615559 () Bool)

(assert (=> b!6356380 (=> res!2615559 e!3859977)))

(assert (=> b!6356380 (= res!2615559 (not ((_ is Concat!25110) (regOne!33042 r!7292))))))

(declare-fun b!6356381 () Bool)

(declare-fun res!2615574 () Bool)

(assert (=> b!6356381 (=> res!2615574 e!3859964)))

(assert (=> b!6356381 (= res!2615574 (or ((_ is EmptyExpr!16265) r!7292) ((_ is EmptyLang!16265) r!7292) ((_ is ElementMatch!16265) r!7292) ((_ is Union!16265) r!7292) (not ((_ is Concat!25110) r!7292))))))

(declare-fun b!6356382 () Bool)

(declare-fun e!3859961 () Bool)

(declare-fun tp!1770703 () Bool)

(assert (=> b!6356382 (= e!3859961 tp!1770703)))

(declare-fun b!6356383 () Bool)

(declare-fun res!2615569 () Bool)

(assert (=> b!6356383 (=> res!2615569 e!3859963)))

(declare-fun contextDepthTotal!374 (Context!11298) Int)

(assert (=> b!6356383 (= res!2615569 (>= (contextDepthTotal!374 lt!2366194) (contextDepthTotal!374 (h!71419 zl!343))))))

(declare-fun b!6356384 () Bool)

(declare-fun res!2615565 () Bool)

(declare-fun e!3859968 () Bool)

(assert (=> b!6356384 (=> (not res!2615565) (not e!3859968))))

(declare-fun unfocusZipper!2007 (List!65095) Regex!16265)

(assert (=> b!6356384 (= res!2615565 (= r!7292 (unfocusZipper!2007 zl!343)))))

(declare-fun res!2615575 () Bool)

(assert (=> start!629706 (=> (not res!2615575) (not e!3859968))))

(declare-fun validRegex!8001 (Regex!16265) Bool)

(assert (=> start!629706 (= res!2615575 (validRegex!8001 r!7292))))

(assert (=> start!629706 e!3859968))

(declare-fun e!3859975 () Bool)

(assert (=> start!629706 e!3859975))

(declare-fun condSetEmpty!43294 () Bool)

(declare-fun z!1189 () (InoxSet Context!11298))

(assert (=> start!629706 (= condSetEmpty!43294 (= z!1189 ((as const (Array Context!11298 Bool)) false)))))

(declare-fun setRes!43294 () Bool)

(assert (=> start!629706 setRes!43294))

(declare-fun e!3859973 () Bool)

(assert (=> start!629706 e!3859973))

(declare-fun e!3859974 () Bool)

(assert (=> start!629706 e!3859974))

(declare-fun b!6356370 () Bool)

(declare-fun res!2615558 () Bool)

(assert (=> b!6356370 (=> res!2615558 e!3859977)))

(declare-fun e!3859967 () Bool)

(assert (=> b!6356370 (= res!2615558 e!3859967)))

(declare-fun res!2615567 () Bool)

(assert (=> b!6356370 (=> (not res!2615567) (not e!3859967))))

(assert (=> b!6356370 (= res!2615567 ((_ is Concat!25110) (regOne!33042 r!7292)))))

(declare-fun b!6356385 () Bool)

(declare-fun e!3859972 () Bool)

(assert (=> b!6356385 (= e!3859969 e!3859972)))

(declare-fun res!2615573 () Bool)

(assert (=> b!6356385 (=> res!2615573 e!3859972)))

(assert (=> b!6356385 (= res!2615573 (not (= lt!2366167 (matchZipper!2277 lt!2366184 (t!378686 s!2326)))))))

(assert (=> b!6356385 (= lt!2366167 (matchZipper!2277 lt!2366169 (t!378686 s!2326)))))

(declare-fun b!6356386 () Bool)

(declare-fun res!2615554 () Bool)

(assert (=> b!6356386 (=> res!2615554 e!3859978)))

(declare-fun zipperDepth!372 (List!65095) Int)

(assert (=> b!6356386 (= res!2615554 (> (zipperDepth!372 lt!2366165) (zipperDepth!372 zl!343)))))

(assert (=> b!6356387 (= e!3859978 e!3859960)))

(declare-fun res!2615566 () Bool)

(assert (=> b!6356387 (=> res!2615566 e!3859960)))

(declare-fun lt!2366162 () Bool)

(declare-fun lt!2366183 () Bool)

(assert (=> b!6356387 (= res!2615566 (or (not (= lt!2366180 lt!2366183)) (not (= lt!2366180 lt!2366162))))))

(assert (=> b!6356387 (= lt!2366180 (matchZipper!2277 z!1189 s!2326))))

(declare-fun Exists!3335 (Int) Bool)

(assert (=> b!6356387 (= (Exists!3335 lambda!350000) (Exists!3335 lambda!350001))))

(declare-fun lt!2366190 () Unit!158391)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1872 (Regex!16265 Regex!16265 List!65096) Unit!158391)

(assert (=> b!6356387 (= lt!2366190 (lemmaExistCutMatchRandMatchRSpecEquivalent!1872 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326))))

(declare-datatypes ((tuple2!66488 0))(
  ( (tuple2!66489 (_1!36547 List!65096) (_2!36547 List!65096)) )
))
(declare-datatypes ((Option!16156 0))(
  ( (None!16155) (Some!16155 (v!52324 tuple2!66488)) )
))
(declare-fun isDefined!12859 (Option!16156) Bool)

(declare-fun findConcatSeparation!2570 (Regex!16265 Regex!16265 List!65096 List!65096 List!65096) Option!16156)

(assert (=> b!6356387 (= (isDefined!12859 (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 Nil!64972 s!2326 s!2326)) (Exists!3335 lambda!350000))))

(declare-fun lt!2366174 () Unit!158391)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2334 (Regex!16265 Regex!16265 List!65096) Unit!158391)

(assert (=> b!6356387 (= lt!2366174 (lemmaFindConcatSeparationEquivalentToExists!2334 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326))))

(assert (=> b!6356387 (= lt!2366173 (generalisedConcat!1862 (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun matchRSpec!3366 (Regex!16265 List!65096) Bool)

(assert (=> b!6356387 (= (matchR!8448 lt!2366179 s!2326) (matchRSpec!3366 lt!2366179 s!2326))))

(declare-fun lt!2366178 () Unit!158391)

(declare-fun mainMatchTheorem!3366 (Regex!16265 List!65096) Unit!158391)

(assert (=> b!6356387 (= lt!2366178 (mainMatchTheorem!3366 lt!2366179 s!2326))))

(assert (=> b!6356387 (= (Exists!3335 lambda!349998) (Exists!3335 lambda!349999))))

(declare-fun lt!2366172 () Unit!158391)

(assert (=> b!6356387 (= lt!2366172 (lemmaExistCutMatchRandMatchRSpecEquivalent!1872 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 s!2326))))

(assert (=> b!6356387 (= (isDefined!12859 (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 Nil!64972 s!2326 s!2326)) (Exists!3335 lambda!349998))))

(declare-fun lt!2366195 () Unit!158391)

(assert (=> b!6356387 (= lt!2366195 (lemmaFindConcatSeparationEquivalentToExists!2334 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 s!2326))))

(assert (=> b!6356387 (= lt!2366179 (generalisedConcat!1862 lt!2366161))))

(declare-fun lt!2366170 () Regex!16265)

(assert (=> b!6356387 (= lt!2366162 (matchRSpec!3366 lt!2366170 s!2326))))

(declare-fun lt!2366188 () Unit!158391)

(assert (=> b!6356387 (= lt!2366188 (mainMatchTheorem!3366 lt!2366170 s!2326))))

(assert (=> b!6356387 (= lt!2366162 lt!2366183)))

(declare-fun lt!2366187 () (InoxSet Context!11298))

(assert (=> b!6356387 (= lt!2366183 (matchZipper!2277 lt!2366187 s!2326))))

(assert (=> b!6356387 (= lt!2366162 (matchR!8448 lt!2366170 s!2326))))

(declare-fun lt!2366177 () Unit!158391)

(declare-fun theoremZipperRegexEquiv!807 ((InoxSet Context!11298) List!65095 Regex!16265 List!65096) Unit!158391)

(assert (=> b!6356387 (= lt!2366177 (theoremZipperRegexEquiv!807 lt!2366187 lt!2366165 lt!2366170 s!2326))))

(declare-fun lt!2366196 () List!65094)

(assert (=> b!6356387 (= lt!2366170 (generalisedConcat!1862 lt!2366196))))

(declare-fun b!6356388 () Bool)

(declare-fun res!2615578 () Bool)

(assert (=> b!6356388 (=> (not res!2615578) (not e!3859968))))

(declare-fun toList!10049 ((InoxSet Context!11298)) List!65095)

(assert (=> b!6356388 (= res!2615578 (= (toList!10049 z!1189) zl!343))))

(declare-fun b!6356389 () Bool)

(assert (=> b!6356389 (= e!3859972 e!3859965)))

(declare-fun res!2615577 () Bool)

(assert (=> b!6356389 (=> res!2615577 e!3859965)))

(assert (=> b!6356389 (= res!2615577 (not (= lt!2366193 lt!2366184)))))

(declare-fun lambda!349997 () Int)

(declare-fun flatMap!1770 ((InoxSet Context!11298) Int) (InoxSet Context!11298))

(declare-fun derivationStepZipperUp!1439 (Context!11298 C!32800) (InoxSet Context!11298))

(assert (=> b!6356389 (= (flatMap!1770 lt!2366187 lambda!349997) (derivationStepZipperUp!1439 lt!2366194 (h!71420 s!2326)))))

(declare-fun lt!2366181 () Unit!158391)

(declare-fun lemmaFlatMapOnSingletonSet!1296 ((InoxSet Context!11298) Context!11298 Int) Unit!158391)

(assert (=> b!6356389 (= lt!2366181 (lemmaFlatMapOnSingletonSet!1296 lt!2366187 lt!2366194 lambda!349997))))

(declare-fun lt!2366168 () (InoxSet Context!11298))

(assert (=> b!6356389 (= lt!2366168 (derivationStepZipperUp!1439 lt!2366194 (h!71420 s!2326)))))

(declare-fun derivationStepZipper!2231 ((InoxSet Context!11298) C!32800) (InoxSet Context!11298))

(assert (=> b!6356389 (= lt!2366193 (derivationStepZipper!2231 lt!2366187 (h!71420 s!2326)))))

(assert (=> b!6356389 (= lt!2366187 (store ((as const (Array Context!11298 Bool)) false) lt!2366194 true))))

(assert (=> b!6356389 (= lt!2366194 (Context!11299 lt!2366196))))

(assert (=> b!6356389 (= lt!2366196 (Cons!64970 (regOne!33042 (regOne!33042 r!7292)) lt!2366161))))

(declare-fun b!6356390 () Bool)

(declare-fun tp!1770699 () Bool)

(assert (=> b!6356390 (= e!3859975 tp!1770699)))

(declare-fun b!6356391 () Bool)

(declare-fun e!3859976 () Bool)

(declare-fun tp!1770698 () Bool)

(assert (=> b!6356391 (= e!3859976 tp!1770698)))

(declare-fun b!6356392 () Bool)

(declare-fun res!2615564 () Bool)

(assert (=> b!6356392 (=> res!2615564 e!3859964)))

(declare-fun generalisedUnion!2109 (List!65094) Regex!16265)

(declare-fun unfocusZipperList!1686 (List!65095) List!65094)

(assert (=> b!6356392 (= res!2615564 (not (= r!7292 (generalisedUnion!2109 (unfocusZipperList!1686 zl!343)))))))

(declare-fun b!6356393 () Bool)

(declare-fun res!2615571 () Bool)

(assert (=> b!6356393 (=> res!2615571 e!3859964)))

(declare-fun isEmpty!37070 (List!65095) Bool)

(assert (=> b!6356393 (= res!2615571 (not (isEmpty!37070 (t!378685 zl!343))))))

(declare-fun b!6356394 () Bool)

(assert (=> b!6356394 (= e!3859960 e!3859971)))

(declare-fun res!2615551 () Bool)

(assert (=> b!6356394 (=> res!2615551 e!3859971)))

(assert (=> b!6356394 (= res!2615551 (not (= lt!2366164 lt!2366186)))))

(declare-fun lt!2366185 () Regex!16265)

(assert (=> b!6356394 (= lt!2366186 (matchR!8448 (Concat!25110 lt!2366185 lt!2366173) s!2326))))

(assert (=> b!6356395 (= e!3859964 e!3859962)))

(declare-fun res!2615561 () Bool)

(assert (=> b!6356395 (=> res!2615561 e!3859962)))

(declare-fun lt!2366160 () Bool)

(assert (=> b!6356395 (= res!2615561 (or (not (= lt!2366164 lt!2366160)) ((_ is Nil!64972) s!2326)))))

(assert (=> b!6356395 (= (Exists!3335 lambda!349995) (Exists!3335 lambda!349996))))

(declare-fun lt!2366176 () Unit!158391)

(assert (=> b!6356395 (= lt!2366176 (lemmaExistCutMatchRandMatchRSpecEquivalent!1872 (regOne!33042 r!7292) (regTwo!33042 r!7292) s!2326))))

(assert (=> b!6356395 (= lt!2366160 (Exists!3335 lambda!349995))))

(assert (=> b!6356395 (= lt!2366160 (isDefined!12859 (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) Nil!64972 s!2326 s!2326)))))

(declare-fun lt!2366175 () Unit!158391)

(assert (=> b!6356395 (= lt!2366175 (lemmaFindConcatSeparationEquivalentToExists!2334 (regOne!33042 r!7292) (regTwo!33042 r!7292) s!2326))))

(declare-fun b!6356396 () Bool)

(declare-fun nullable!6258 (Regex!16265) Bool)

(assert (=> b!6356396 (= e!3859967 (nullable!6258 (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun b!6356397 () Bool)

(assert (=> b!6356397 (= e!3859968 (not e!3859964))))

(declare-fun res!2615552 () Bool)

(assert (=> b!6356397 (=> res!2615552 e!3859964)))

(assert (=> b!6356397 (= res!2615552 (not ((_ is Cons!64971) zl!343)))))

(assert (=> b!6356397 (= lt!2366164 (matchRSpec!3366 r!7292 s!2326))))

(assert (=> b!6356397 (= lt!2366164 (matchR!8448 r!7292 s!2326))))

(declare-fun lt!2366166 () Unit!158391)

(assert (=> b!6356397 (= lt!2366166 (mainMatchTheorem!3366 r!7292 s!2326))))

(declare-fun b!6356398 () Bool)

(declare-fun tp_is_empty!41783 () Bool)

(assert (=> b!6356398 (= e!3859975 tp_is_empty!41783)))

(declare-fun b!6356399 () Bool)

(declare-fun e!3859970 () Unit!158391)

(declare-fun Unit!158393 () Unit!158391)

(assert (=> b!6356399 (= e!3859970 Unit!158393)))

(declare-fun lt!2366171 () Unit!158391)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1096 ((InoxSet Context!11298) (InoxSet Context!11298) List!65096) Unit!158391)

(assert (=> b!6356399 (= lt!2366171 (lemmaZipperConcatMatchesSameAsBothZippers!1096 lt!2366169 lt!2366163 (t!378686 s!2326)))))

(declare-fun res!2615555 () Bool)

(assert (=> b!6356399 (= res!2615555 (matchZipper!2277 lt!2366169 (t!378686 s!2326)))))

(assert (=> b!6356399 (=> res!2615555 e!3859966)))

(assert (=> b!6356399 (= (matchZipper!2277 ((_ map or) lt!2366169 lt!2366163) (t!378686 s!2326)) e!3859966)))

(declare-fun setNonEmpty!43294 () Bool)

(declare-fun tp!1770702 () Bool)

(declare-fun setElem!43294 () Context!11298)

(declare-fun inv!83909 (Context!11298) Bool)

(assert (=> setNonEmpty!43294 (= setRes!43294 (and tp!1770702 (inv!83909 setElem!43294) e!3859976))))

(declare-fun setRest!43294 () (InoxSet Context!11298))

(assert (=> setNonEmpty!43294 (= z!1189 ((_ map or) (store ((as const (Array Context!11298 Bool)) false) setElem!43294 true) setRest!43294))))

(declare-fun b!6356400 () Bool)

(declare-fun tp!1770706 () Bool)

(assert (=> b!6356400 (= e!3859974 (and tp_is_empty!41783 tp!1770706))))

(declare-fun b!6356401 () Bool)

(assert (=> b!6356401 (= e!3859965 e!3859963)))

(declare-fun res!2615563 () Bool)

(assert (=> b!6356401 (=> res!2615563 e!3859963)))

(assert (=> b!6356401 (= res!2615563 (not (= (exprs!6149 (h!71419 zl!343)) (Cons!64970 lt!2366185 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(assert (=> b!6356401 (= lt!2366185 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))))))

(declare-fun setIsEmpty!43294 () Bool)

(assert (=> setIsEmpty!43294 setRes!43294))

(declare-fun b!6356402 () Bool)

(declare-fun tp!1770701 () Bool)

(declare-fun tp!1770700 () Bool)

(assert (=> b!6356402 (= e!3859975 (and tp!1770701 tp!1770700))))

(declare-fun b!6356403 () Bool)

(declare-fun res!2615568 () Bool)

(assert (=> b!6356403 (=> res!2615568 e!3859960)))

(assert (=> b!6356403 (= res!2615568 (not (= lt!2366164 (matchR!8448 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) s!2326))))))

(declare-fun tp!1770697 () Bool)

(declare-fun b!6356404 () Bool)

(assert (=> b!6356404 (= e!3859973 (and (inv!83909 (h!71419 zl!343)) e!3859961 tp!1770697))))

(declare-fun b!6356405 () Bool)

(declare-fun tp!1770704 () Bool)

(declare-fun tp!1770705 () Bool)

(assert (=> b!6356405 (= e!3859975 (and tp!1770704 tp!1770705))))

(assert (=> b!6356406 (= e!3859962 e!3859977)))

(declare-fun res!2615570 () Bool)

(assert (=> b!6356406 (=> res!2615570 e!3859977)))

(assert (=> b!6356406 (= res!2615570 (or (and ((_ is ElementMatch!16265) (regOne!33042 r!7292)) (= (c!1156730 (regOne!33042 r!7292)) (h!71420 s!2326))) ((_ is Union!16265) (regOne!33042 r!7292))))))

(declare-fun lt!2366182 () Unit!158391)

(assert (=> b!6356406 (= lt!2366182 e!3859970)))

(declare-fun c!1156729 () Bool)

(assert (=> b!6356406 (= c!1156729 (nullable!6258 (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> b!6356406 (= (flatMap!1770 z!1189 lambda!349997) (derivationStepZipperUp!1439 (h!71419 zl!343) (h!71420 s!2326)))))

(declare-fun lt!2366159 () Unit!158391)

(assert (=> b!6356406 (= lt!2366159 (lemmaFlatMapOnSingletonSet!1296 z!1189 (h!71419 zl!343) lambda!349997))))

(declare-fun lt!2366189 () Context!11298)

(assert (=> b!6356406 (= lt!2366163 (derivationStepZipperUp!1439 lt!2366189 (h!71420 s!2326)))))

(assert (=> b!6356406 (= lt!2366169 (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (h!71419 zl!343))) lt!2366189 (h!71420 s!2326)))))

(assert (=> b!6356406 (= lt!2366189 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun lt!2366192 () (InoxSet Context!11298))

(assert (=> b!6356406 (= lt!2366192 (derivationStepZipperUp!1439 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))) (h!71420 s!2326)))))

(declare-fun b!6356407 () Bool)

(declare-fun Unit!158394 () Unit!158391)

(assert (=> b!6356407 (= e!3859970 Unit!158394)))

(assert (= (and start!629706 res!2615575) b!6356388))

(assert (= (and b!6356388 res!2615578) b!6356384))

(assert (= (and b!6356384 res!2615565) b!6356397))

(assert (= (and b!6356397 (not res!2615552)) b!6356393))

(assert (= (and b!6356393 (not res!2615571)) b!6356378))

(assert (= (and b!6356378 (not res!2615572)) b!6356372))

(assert (= (and b!6356372 (not res!2615556)) b!6356392))

(assert (= (and b!6356392 (not res!2615564)) b!6356381))

(assert (= (and b!6356381 (not res!2615574)) b!6356395))

(assert (= (and b!6356395 (not res!2615561)) b!6356375))

(assert (= (and b!6356375 (not res!2615553)) b!6356406))

(assert (= (and b!6356406 c!1156729) b!6356399))

(assert (= (and b!6356406 (not c!1156729)) b!6356407))

(assert (= (and b!6356399 (not res!2615555)) b!6356377))

(assert (= (and b!6356406 (not res!2615570)) b!6356370))

(assert (= (and b!6356370 res!2615567) b!6356396))

(assert (= (and b!6356370 (not res!2615558)) b!6356380))

(assert (= (and b!6356380 (not res!2615559)) b!6356379))

(assert (= (and b!6356379 (not res!2615576)) b!6356385))

(assert (= (and b!6356385 (not res!2615573)) b!6356389))

(assert (= (and b!6356389 (not res!2615577)) b!6356373))

(assert (= (and b!6356373 (not res!2615562)) b!6356401))

(assert (= (and b!6356401 (not res!2615563)) b!6356383))

(assert (= (and b!6356383 (not res!2615569)) b!6356371))

(assert (= (and b!6356371 (not res!2615557)) b!6356386))

(assert (= (and b!6356386 (not res!2615554)) b!6356387))

(assert (= (and b!6356387 (not res!2615566)) b!6356376))

(assert (= (and b!6356376 (not res!2615560)) b!6356403))

(assert (= (and b!6356403 (not res!2615568)) b!6356394))

(assert (= (and b!6356394 (not res!2615551)) b!6356374))

(assert (= (and start!629706 ((_ is ElementMatch!16265) r!7292)) b!6356398))

(assert (= (and start!629706 ((_ is Concat!25110) r!7292)) b!6356405))

(assert (= (and start!629706 ((_ is Star!16265) r!7292)) b!6356390))

(assert (= (and start!629706 ((_ is Union!16265) r!7292)) b!6356402))

(assert (= (and start!629706 condSetEmpty!43294) setIsEmpty!43294))

(assert (= (and start!629706 (not condSetEmpty!43294)) setNonEmpty!43294))

(assert (= setNonEmpty!43294 b!6356391))

(assert (= b!6356404 b!6356382))

(assert (= (and start!629706 ((_ is Cons!64971) zl!343)) b!6356404))

(assert (= (and start!629706 ((_ is Cons!64972) s!2326)) b!6356400))

(declare-fun m!7162520 () Bool)

(assert (=> b!6356395 m!7162520))

(declare-fun m!7162522 () Bool)

(assert (=> b!6356395 m!7162522))

(declare-fun m!7162524 () Bool)

(assert (=> b!6356395 m!7162524))

(assert (=> b!6356395 m!7162520))

(declare-fun m!7162526 () Bool)

(assert (=> b!6356395 m!7162526))

(declare-fun m!7162528 () Bool)

(assert (=> b!6356395 m!7162528))

(assert (=> b!6356395 m!7162522))

(declare-fun m!7162530 () Bool)

(assert (=> b!6356395 m!7162530))

(declare-fun m!7162532 () Bool)

(assert (=> b!6356378 m!7162532))

(declare-fun m!7162534 () Bool)

(assert (=> b!6356394 m!7162534))

(declare-fun m!7162536 () Bool)

(assert (=> b!6356379 m!7162536))

(declare-fun m!7162538 () Bool)

(assert (=> b!6356404 m!7162538))

(declare-fun m!7162540 () Bool)

(assert (=> b!6356399 m!7162540))

(declare-fun m!7162542 () Bool)

(assert (=> b!6356399 m!7162542))

(declare-fun m!7162544 () Bool)

(assert (=> b!6356399 m!7162544))

(declare-fun m!7162546 () Bool)

(assert (=> b!6356377 m!7162546))

(declare-fun m!7162548 () Bool)

(assert (=> b!6356403 m!7162548))

(declare-fun m!7162550 () Bool)

(assert (=> b!6356385 m!7162550))

(assert (=> b!6356385 m!7162542))

(declare-fun m!7162552 () Bool)

(assert (=> b!6356389 m!7162552))

(declare-fun m!7162554 () Bool)

(assert (=> b!6356389 m!7162554))

(declare-fun m!7162556 () Bool)

(assert (=> b!6356389 m!7162556))

(declare-fun m!7162558 () Bool)

(assert (=> b!6356389 m!7162558))

(declare-fun m!7162560 () Bool)

(assert (=> b!6356389 m!7162560))

(declare-fun m!7162562 () Bool)

(assert (=> setNonEmpty!43294 m!7162562))

(declare-fun m!7162564 () Bool)

(assert (=> b!6356388 m!7162564))

(declare-fun m!7162566 () Bool)

(assert (=> b!6356386 m!7162566))

(declare-fun m!7162568 () Bool)

(assert (=> b!6356386 m!7162568))

(declare-fun m!7162570 () Bool)

(assert (=> b!6356396 m!7162570))

(declare-fun m!7162572 () Bool)

(assert (=> b!6356376 m!7162572))

(declare-fun m!7162574 () Bool)

(assert (=> b!6356373 m!7162574))

(declare-fun m!7162576 () Bool)

(assert (=> start!629706 m!7162576))

(declare-fun m!7162578 () Bool)

(assert (=> b!6356384 m!7162578))

(declare-fun m!7162580 () Bool)

(assert (=> b!6356393 m!7162580))

(declare-fun m!7162582 () Bool)

(assert (=> b!6356375 m!7162582))

(declare-fun m!7162584 () Bool)

(assert (=> b!6356397 m!7162584))

(declare-fun m!7162586 () Bool)

(assert (=> b!6356397 m!7162586))

(declare-fun m!7162588 () Bool)

(assert (=> b!6356397 m!7162588))

(declare-fun m!7162590 () Bool)

(assert (=> b!6356371 m!7162590))

(declare-fun m!7162592 () Bool)

(assert (=> b!6356371 m!7162592))

(declare-fun m!7162594 () Bool)

(assert (=> b!6356387 m!7162594))

(declare-fun m!7162596 () Bool)

(assert (=> b!6356387 m!7162596))

(declare-fun m!7162598 () Bool)

(assert (=> b!6356387 m!7162598))

(declare-fun m!7162600 () Bool)

(assert (=> b!6356387 m!7162600))

(declare-fun m!7162602 () Bool)

(assert (=> b!6356387 m!7162602))

(declare-fun m!7162604 () Bool)

(assert (=> b!6356387 m!7162604))

(declare-fun m!7162606 () Bool)

(assert (=> b!6356387 m!7162606))

(declare-fun m!7162608 () Bool)

(assert (=> b!6356387 m!7162608))

(declare-fun m!7162610 () Bool)

(assert (=> b!6356387 m!7162610))

(declare-fun m!7162612 () Bool)

(assert (=> b!6356387 m!7162612))

(declare-fun m!7162614 () Bool)

(assert (=> b!6356387 m!7162614))

(assert (=> b!6356387 m!7162610))

(declare-fun m!7162616 () Bool)

(assert (=> b!6356387 m!7162616))

(declare-fun m!7162618 () Bool)

(assert (=> b!6356387 m!7162618))

(declare-fun m!7162620 () Bool)

(assert (=> b!6356387 m!7162620))

(assert (=> b!6356387 m!7162598))

(declare-fun m!7162622 () Bool)

(assert (=> b!6356387 m!7162622))

(assert (=> b!6356387 m!7162606))

(declare-fun m!7162624 () Bool)

(assert (=> b!6356387 m!7162624))

(declare-fun m!7162626 () Bool)

(assert (=> b!6356387 m!7162626))

(declare-fun m!7162628 () Bool)

(assert (=> b!6356387 m!7162628))

(declare-fun m!7162630 () Bool)

(assert (=> b!6356387 m!7162630))

(declare-fun m!7162632 () Bool)

(assert (=> b!6356387 m!7162632))

(declare-fun m!7162634 () Bool)

(assert (=> b!6356387 m!7162634))

(declare-fun m!7162636 () Bool)

(assert (=> b!6356387 m!7162636))

(declare-fun m!7162638 () Bool)

(assert (=> b!6356387 m!7162638))

(declare-fun m!7162640 () Bool)

(assert (=> b!6356387 m!7162640))

(assert (=> b!6356387 m!7162594))

(declare-fun m!7162642 () Bool)

(assert (=> b!6356406 m!7162642))

(declare-fun m!7162644 () Bool)

(assert (=> b!6356406 m!7162644))

(declare-fun m!7162646 () Bool)

(assert (=> b!6356406 m!7162646))

(declare-fun m!7162648 () Bool)

(assert (=> b!6356406 m!7162648))

(declare-fun m!7162650 () Bool)

(assert (=> b!6356406 m!7162650))

(declare-fun m!7162652 () Bool)

(assert (=> b!6356406 m!7162652))

(declare-fun m!7162654 () Bool)

(assert (=> b!6356406 m!7162654))

(declare-fun m!7162656 () Bool)

(assert (=> b!6356374 m!7162656))

(declare-fun m!7162658 () Bool)

(assert (=> b!6356374 m!7162658))

(declare-fun m!7162660 () Bool)

(assert (=> b!6356383 m!7162660))

(declare-fun m!7162662 () Bool)

(assert (=> b!6356383 m!7162662))

(declare-fun m!7162664 () Bool)

(assert (=> b!6356392 m!7162664))

(assert (=> b!6356392 m!7162664))

(declare-fun m!7162666 () Bool)

(assert (=> b!6356392 m!7162666))

(check-sat (not b!6356385) (not b!6356384) (not b!6356396) (not b!6356388) (not b!6356397) (not b!6356389) (not b!6356394) (not b!6356400) (not b!6356403) (not b!6356392) (not b!6356378) (not b!6356379) (not b!6356382) (not b!6356402) (not b!6356386) (not b!6356404) (not b!6356391) tp_is_empty!41783 (not b!6356373) (not b!6356383) (not start!629706) (not b!6356376) (not b!6356395) (not setNonEmpty!43294) (not b!6356371) (not b!6356375) (not b!6356377) (not b!6356390) (not b!6356406) (not b!6356387) (not b!6356405) (not b!6356393) (not b!6356374) (not b!6356399))
(check-sat)
(get-model)

(declare-fun b!6356613 () Bool)

(declare-fun res!2615658 () Bool)

(declare-fun e!3860095 () Bool)

(assert (=> b!6356613 (=> res!2615658 e!3860095)))

(assert (=> b!6356613 (= res!2615658 (not ((_ is Concat!25110) r!7292)))))

(declare-fun e!3860096 () Bool)

(assert (=> b!6356613 (= e!3860096 e!3860095)))

(declare-fun c!1156793 () Bool)

(declare-fun c!1156794 () Bool)

(declare-fun bm!542059 () Bool)

(declare-fun call!542065 () Bool)

(assert (=> bm!542059 (= call!542065 (validRegex!8001 (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))))))

(declare-fun b!6356614 () Bool)

(declare-fun e!3860091 () Bool)

(declare-fun call!542064 () Bool)

(assert (=> b!6356614 (= e!3860091 call!542064)))

(declare-fun bm!542060 () Bool)

(assert (=> bm!542060 (= call!542064 (validRegex!8001 (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))))))

(declare-fun b!6356615 () Bool)

(declare-fun e!3860090 () Bool)

(assert (=> b!6356615 (= e!3860090 call!542064)))

(declare-fun bm!542061 () Bool)

(declare-fun call!542066 () Bool)

(assert (=> bm!542061 (= call!542066 call!542065)))

(declare-fun b!6356617 () Bool)

(declare-fun e!3860093 () Bool)

(declare-fun e!3860094 () Bool)

(assert (=> b!6356617 (= e!3860093 e!3860094)))

(assert (=> b!6356617 (= c!1156793 ((_ is Star!16265) r!7292))))

(declare-fun b!6356618 () Bool)

(assert (=> b!6356618 (= e!3860095 e!3860090)))

(declare-fun res!2615660 () Bool)

(assert (=> b!6356618 (=> (not res!2615660) (not e!3860090))))

(assert (=> b!6356618 (= res!2615660 call!542066)))

(declare-fun b!6356619 () Bool)

(declare-fun res!2615656 () Bool)

(assert (=> b!6356619 (=> (not res!2615656) (not e!3860091))))

(assert (=> b!6356619 (= res!2615656 call!542066)))

(assert (=> b!6356619 (= e!3860096 e!3860091)))

(declare-fun b!6356620 () Bool)

(declare-fun e!3860092 () Bool)

(assert (=> b!6356620 (= e!3860094 e!3860092)))

(declare-fun res!2615657 () Bool)

(assert (=> b!6356620 (= res!2615657 (not (nullable!6258 (reg!16594 r!7292))))))

(assert (=> b!6356620 (=> (not res!2615657) (not e!3860092))))

(declare-fun b!6356621 () Bool)

(assert (=> b!6356621 (= e!3860094 e!3860096)))

(assert (=> b!6356621 (= c!1156794 ((_ is Union!16265) r!7292))))

(declare-fun d!1994048 () Bool)

(declare-fun res!2615659 () Bool)

(assert (=> d!1994048 (=> res!2615659 e!3860093)))

(assert (=> d!1994048 (= res!2615659 ((_ is ElementMatch!16265) r!7292))))

(assert (=> d!1994048 (= (validRegex!8001 r!7292) e!3860093)))

(declare-fun b!6356616 () Bool)

(assert (=> b!6356616 (= e!3860092 call!542065)))

(assert (= (and d!1994048 (not res!2615659)) b!6356617))

(assert (= (and b!6356617 c!1156793) b!6356620))

(assert (= (and b!6356617 (not c!1156793)) b!6356621))

(assert (= (and b!6356620 res!2615657) b!6356616))

(assert (= (and b!6356621 c!1156794) b!6356619))

(assert (= (and b!6356621 (not c!1156794)) b!6356613))

(assert (= (and b!6356619 res!2615656) b!6356614))

(assert (= (and b!6356613 (not res!2615658)) b!6356618))

(assert (= (and b!6356618 res!2615660) b!6356615))

(assert (= (or b!6356614 b!6356615) bm!542060))

(assert (= (or b!6356619 b!6356618) bm!542061))

(assert (= (or b!6356616 bm!542061) bm!542059))

(declare-fun m!7162788 () Bool)

(assert (=> bm!542059 m!7162788))

(declare-fun m!7162792 () Bool)

(assert (=> bm!542060 m!7162792))

(declare-fun m!7162798 () Bool)

(assert (=> b!6356620 m!7162798))

(assert (=> start!629706 d!1994048))

(declare-fun b!6356670 () Bool)

(declare-fun e!3860128 () Bool)

(declare-fun lt!2366230 () Regex!16265)

(declare-fun isEmptyLang!1674 (Regex!16265) Bool)

(assert (=> b!6356670 (= e!3860128 (isEmptyLang!1674 lt!2366230))))

(declare-fun b!6356671 () Bool)

(declare-fun e!3860127 () Bool)

(declare-fun isUnion!1104 (Regex!16265) Bool)

(assert (=> b!6356671 (= e!3860127 (isUnion!1104 lt!2366230))))

(declare-fun b!6356672 () Bool)

(declare-fun e!3860126 () Regex!16265)

(declare-fun e!3860129 () Regex!16265)

(assert (=> b!6356672 (= e!3860126 e!3860129)))

(declare-fun c!1156814 () Bool)

(assert (=> b!6356672 (= c!1156814 ((_ is Cons!64970) (unfocusZipperList!1686 zl!343)))))

(declare-fun b!6356673 () Bool)

(assert (=> b!6356673 (= e!3860128 e!3860127)))

(declare-fun c!1156813 () Bool)

(declare-fun tail!12107 (List!65094) List!65094)

(assert (=> b!6356673 (= c!1156813 (isEmpty!37069 (tail!12107 (unfocusZipperList!1686 zl!343))))))

(declare-fun b!6356674 () Bool)

(declare-fun e!3860124 () Bool)

(assert (=> b!6356674 (= e!3860124 (isEmpty!37069 (t!378684 (unfocusZipperList!1686 zl!343))))))

(declare-fun b!6356675 () Bool)

(declare-fun e!3860125 () Bool)

(assert (=> b!6356675 (= e!3860125 e!3860128)))

(declare-fun c!1156811 () Bool)

(assert (=> b!6356675 (= c!1156811 (isEmpty!37069 (unfocusZipperList!1686 zl!343)))))

(declare-fun d!1994060 () Bool)

(assert (=> d!1994060 e!3860125))

(declare-fun res!2615678 () Bool)

(assert (=> d!1994060 (=> (not res!2615678) (not e!3860125))))

(assert (=> d!1994060 (= res!2615678 (validRegex!8001 lt!2366230))))

(assert (=> d!1994060 (= lt!2366230 e!3860126)))

(declare-fun c!1156812 () Bool)

(assert (=> d!1994060 (= c!1156812 e!3860124)))

(declare-fun res!2615677 () Bool)

(assert (=> d!1994060 (=> (not res!2615677) (not e!3860124))))

(assert (=> d!1994060 (= res!2615677 ((_ is Cons!64970) (unfocusZipperList!1686 zl!343)))))

(declare-fun lambda!350020 () Int)

(declare-fun forall!15441 (List!65094 Int) Bool)

(assert (=> d!1994060 (forall!15441 (unfocusZipperList!1686 zl!343) lambda!350020)))

(assert (=> d!1994060 (= (generalisedUnion!2109 (unfocusZipperList!1686 zl!343)) lt!2366230)))

(declare-fun b!6356676 () Bool)

(assert (=> b!6356676 (= e!3860126 (h!71418 (unfocusZipperList!1686 zl!343)))))

(declare-fun b!6356677 () Bool)

(assert (=> b!6356677 (= e!3860129 (Union!16265 (h!71418 (unfocusZipperList!1686 zl!343)) (generalisedUnion!2109 (t!378684 (unfocusZipperList!1686 zl!343)))))))

(declare-fun b!6356678 () Bool)

(declare-fun head!13022 (List!65094) Regex!16265)

(assert (=> b!6356678 (= e!3860127 (= lt!2366230 (head!13022 (unfocusZipperList!1686 zl!343))))))

(declare-fun b!6356679 () Bool)

(assert (=> b!6356679 (= e!3860129 EmptyLang!16265)))

(assert (= (and d!1994060 res!2615677) b!6356674))

(assert (= (and d!1994060 c!1156812) b!6356676))

(assert (= (and d!1994060 (not c!1156812)) b!6356672))

(assert (= (and b!6356672 c!1156814) b!6356677))

(assert (= (and b!6356672 (not c!1156814)) b!6356679))

(assert (= (and d!1994060 res!2615678) b!6356675))

(assert (= (and b!6356675 c!1156811) b!6356670))

(assert (= (and b!6356675 (not c!1156811)) b!6356673))

(assert (= (and b!6356673 c!1156813) b!6356678))

(assert (= (and b!6356673 (not c!1156813)) b!6356671))

(assert (=> b!6356678 m!7162664))

(declare-fun m!7162812 () Bool)

(assert (=> b!6356678 m!7162812))

(assert (=> b!6356675 m!7162664))

(declare-fun m!7162814 () Bool)

(assert (=> b!6356675 m!7162814))

(assert (=> b!6356673 m!7162664))

(declare-fun m!7162816 () Bool)

(assert (=> b!6356673 m!7162816))

(assert (=> b!6356673 m!7162816))

(declare-fun m!7162818 () Bool)

(assert (=> b!6356673 m!7162818))

(declare-fun m!7162820 () Bool)

(assert (=> b!6356670 m!7162820))

(declare-fun m!7162822 () Bool)

(assert (=> b!6356677 m!7162822))

(declare-fun m!7162824 () Bool)

(assert (=> b!6356674 m!7162824))

(declare-fun m!7162826 () Bool)

(assert (=> b!6356671 m!7162826))

(declare-fun m!7162828 () Bool)

(assert (=> d!1994060 m!7162828))

(assert (=> d!1994060 m!7162664))

(declare-fun m!7162830 () Bool)

(assert (=> d!1994060 m!7162830))

(assert (=> b!6356392 d!1994060))

(declare-fun bs!1591986 () Bool)

(declare-fun d!1994068 () Bool)

(assert (= bs!1591986 (and d!1994068 d!1994060)))

(declare-fun lambda!350024 () Int)

(assert (=> bs!1591986 (= lambda!350024 lambda!350020)))

(declare-fun lt!2366238 () List!65094)

(assert (=> d!1994068 (forall!15441 lt!2366238 lambda!350024)))

(declare-fun e!3860137 () List!65094)

(assert (=> d!1994068 (= lt!2366238 e!3860137)))

(declare-fun c!1156819 () Bool)

(assert (=> d!1994068 (= c!1156819 ((_ is Cons!64971) zl!343))))

(assert (=> d!1994068 (= (unfocusZipperList!1686 zl!343) lt!2366238)))

(declare-fun b!6356693 () Bool)

(assert (=> b!6356693 (= e!3860137 (Cons!64970 (generalisedConcat!1862 (exprs!6149 (h!71419 zl!343))) (unfocusZipperList!1686 (t!378685 zl!343))))))

(declare-fun b!6356694 () Bool)

(assert (=> b!6356694 (= e!3860137 Nil!64970)))

(assert (= (and d!1994068 c!1156819) b!6356693))

(assert (= (and d!1994068 (not c!1156819)) b!6356694))

(declare-fun m!7162860 () Bool)

(assert (=> d!1994068 m!7162860))

(assert (=> b!6356693 m!7162532))

(declare-fun m!7162862 () Bool)

(assert (=> b!6356693 m!7162862))

(assert (=> b!6356392 d!1994068))

(declare-fun d!1994076 () Bool)

(declare-fun lt!2366242 () Int)

(assert (=> d!1994076 (>= lt!2366242 0)))

(declare-fun e!3860142 () Int)

(assert (=> d!1994076 (= lt!2366242 e!3860142)))

(declare-fun c!1156822 () Bool)

(assert (=> d!1994076 (= c!1156822 ((_ is Cons!64971) lt!2366165))))

(assert (=> d!1994076 (= (zipperDepthTotal!402 lt!2366165) lt!2366242)))

(declare-fun b!6356703 () Bool)

(assert (=> b!6356703 (= e!3860142 (+ (contextDepthTotal!374 (h!71419 lt!2366165)) (zipperDepthTotal!402 (t!378685 lt!2366165))))))

(declare-fun b!6356704 () Bool)

(assert (=> b!6356704 (= e!3860142 0)))

(assert (= (and d!1994076 c!1156822) b!6356703))

(assert (= (and d!1994076 (not c!1156822)) b!6356704))

(declare-fun m!7162868 () Bool)

(assert (=> b!6356703 m!7162868))

(declare-fun m!7162870 () Bool)

(assert (=> b!6356703 m!7162870))

(assert (=> b!6356371 d!1994076))

(declare-fun d!1994080 () Bool)

(declare-fun lt!2366243 () Int)

(assert (=> d!1994080 (>= lt!2366243 0)))

(declare-fun e!3860143 () Int)

(assert (=> d!1994080 (= lt!2366243 e!3860143)))

(declare-fun c!1156823 () Bool)

(assert (=> d!1994080 (= c!1156823 ((_ is Cons!64971) zl!343))))

(assert (=> d!1994080 (= (zipperDepthTotal!402 zl!343) lt!2366243)))

(declare-fun b!6356705 () Bool)

(assert (=> b!6356705 (= e!3860143 (+ (contextDepthTotal!374 (h!71419 zl!343)) (zipperDepthTotal!402 (t!378685 zl!343))))))

(declare-fun b!6356706 () Bool)

(assert (=> b!6356706 (= e!3860143 0)))

(assert (= (and d!1994080 c!1156823) b!6356705))

(assert (= (and d!1994080 (not c!1156823)) b!6356706))

(assert (=> b!6356705 m!7162662))

(declare-fun m!7162872 () Bool)

(assert (=> b!6356705 m!7162872))

(assert (=> b!6356371 d!1994080))

(declare-fun d!1994082 () Bool)

(assert (=> d!1994082 (= (isEmpty!37070 (t!378685 zl!343)) ((_ is Nil!64971) (t!378685 zl!343)))))

(assert (=> b!6356393 d!1994082))

(declare-fun d!1994084 () Bool)

(declare-fun e!3860148 () Bool)

(assert (=> d!1994084 e!3860148))

(declare-fun res!2615694 () Bool)

(assert (=> d!1994084 (=> (not res!2615694) (not e!3860148))))

(declare-fun lt!2366248 () List!65095)

(declare-fun noDuplicate!2094 (List!65095) Bool)

(assert (=> d!1994084 (= res!2615694 (noDuplicate!2094 lt!2366248))))

(declare-fun choose!47198 ((InoxSet Context!11298)) List!65095)

(assert (=> d!1994084 (= lt!2366248 (choose!47198 z!1189))))

(assert (=> d!1994084 (= (toList!10049 z!1189) lt!2366248)))

(declare-fun b!6356713 () Bool)

(declare-fun content!12265 (List!65095) (InoxSet Context!11298))

(assert (=> b!6356713 (= e!3860148 (= (content!12265 lt!2366248) z!1189))))

(assert (= (and d!1994084 res!2615694) b!6356713))

(declare-fun m!7162874 () Bool)

(assert (=> d!1994084 m!7162874))

(declare-fun m!7162876 () Bool)

(assert (=> d!1994084 m!7162876))

(declare-fun m!7162878 () Bool)

(assert (=> b!6356713 m!7162878))

(assert (=> b!6356388 d!1994084))

(declare-fun d!1994086 () Bool)

(declare-fun choose!47199 ((InoxSet Context!11298) Int) (InoxSet Context!11298))

(assert (=> d!1994086 (= (flatMap!1770 lt!2366187 lambda!349997) (choose!47199 lt!2366187 lambda!349997))))

(declare-fun bs!1591990 () Bool)

(assert (= bs!1591990 d!1994086))

(declare-fun m!7162880 () Bool)

(assert (=> bs!1591990 m!7162880))

(assert (=> b!6356389 d!1994086))

(declare-fun b!6356730 () Bool)

(declare-fun e!3860160 () (InoxSet Context!11298))

(declare-fun e!3860159 () (InoxSet Context!11298))

(assert (=> b!6356730 (= e!3860160 e!3860159)))

(declare-fun c!1156829 () Bool)

(assert (=> b!6356730 (= c!1156829 ((_ is Cons!64970) (exprs!6149 lt!2366194)))))

(declare-fun bm!542064 () Bool)

(declare-fun call!542069 () (InoxSet Context!11298))

(assert (=> bm!542064 (= call!542069 (derivationStepZipperDown!1513 (h!71418 (exprs!6149 lt!2366194)) (Context!11299 (t!378684 (exprs!6149 lt!2366194))) (h!71420 s!2326)))))

(declare-fun b!6356732 () Bool)

(assert (=> b!6356732 (= e!3860160 ((_ map or) call!542069 (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 lt!2366194))) (h!71420 s!2326))))))

(declare-fun b!6356733 () Bool)

(declare-fun e!3860161 () Bool)

(assert (=> b!6356733 (= e!3860161 (nullable!6258 (h!71418 (exprs!6149 lt!2366194))))))

(declare-fun b!6356734 () Bool)

(assert (=> b!6356734 (= e!3860159 ((as const (Array Context!11298 Bool)) false))))

(declare-fun d!1994088 () Bool)

(declare-fun c!1156828 () Bool)

(assert (=> d!1994088 (= c!1156828 e!3860161)))

(declare-fun res!2615703 () Bool)

(assert (=> d!1994088 (=> (not res!2615703) (not e!3860161))))

(assert (=> d!1994088 (= res!2615703 ((_ is Cons!64970) (exprs!6149 lt!2366194)))))

(assert (=> d!1994088 (= (derivationStepZipperUp!1439 lt!2366194 (h!71420 s!2326)) e!3860160)))

(declare-fun b!6356731 () Bool)

(assert (=> b!6356731 (= e!3860159 call!542069)))

(assert (= (and d!1994088 res!2615703) b!6356733))

(assert (= (and d!1994088 c!1156828) b!6356732))

(assert (= (and d!1994088 (not c!1156828)) b!6356730))

(assert (= (and b!6356730 c!1156829) b!6356731))

(assert (= (and b!6356730 (not c!1156829)) b!6356734))

(assert (= (or b!6356732 b!6356731) bm!542064))

(declare-fun m!7162892 () Bool)

(assert (=> bm!542064 m!7162892))

(declare-fun m!7162894 () Bool)

(assert (=> b!6356732 m!7162894))

(declare-fun m!7162896 () Bool)

(assert (=> b!6356733 m!7162896))

(assert (=> b!6356389 d!1994088))

(declare-fun d!1994096 () Bool)

(declare-fun dynLambda!25763 (Int Context!11298) (InoxSet Context!11298))

(assert (=> d!1994096 (= (flatMap!1770 lt!2366187 lambda!349997) (dynLambda!25763 lambda!349997 lt!2366194))))

(declare-fun lt!2366258 () Unit!158391)

(declare-fun choose!47200 ((InoxSet Context!11298) Context!11298 Int) Unit!158391)

(assert (=> d!1994096 (= lt!2366258 (choose!47200 lt!2366187 lt!2366194 lambda!349997))))

(assert (=> d!1994096 (= lt!2366187 (store ((as const (Array Context!11298 Bool)) false) lt!2366194 true))))

(assert (=> d!1994096 (= (lemmaFlatMapOnSingletonSet!1296 lt!2366187 lt!2366194 lambda!349997) lt!2366258)))

(declare-fun b_lambda!241671 () Bool)

(assert (=> (not b_lambda!241671) (not d!1994096)))

(declare-fun bs!1591997 () Bool)

(assert (= bs!1591997 d!1994096))

(assert (=> bs!1591997 m!7162554))

(declare-fun m!7162906 () Bool)

(assert (=> bs!1591997 m!7162906))

(declare-fun m!7162908 () Bool)

(assert (=> bs!1591997 m!7162908))

(assert (=> bs!1591997 m!7162552))

(assert (=> b!6356389 d!1994096))

(declare-fun bs!1591998 () Bool)

(declare-fun d!1994102 () Bool)

(assert (= bs!1591998 (and d!1994102 b!6356406)))

(declare-fun lambda!350035 () Int)

(assert (=> bs!1591998 (= lambda!350035 lambda!349997)))

(assert (=> d!1994102 true))

(assert (=> d!1994102 (= (derivationStepZipper!2231 lt!2366187 (h!71420 s!2326)) (flatMap!1770 lt!2366187 lambda!350035))))

(declare-fun bs!1591999 () Bool)

(assert (= bs!1591999 d!1994102))

(declare-fun m!7162910 () Bool)

(assert (=> bs!1591999 m!7162910))

(assert (=> b!6356389 d!1994102))

(declare-fun b!6356814 () Bool)

(assert (=> b!6356814 true))

(declare-fun bs!1592015 () Bool)

(declare-fun b!6356816 () Bool)

(assert (= bs!1592015 (and b!6356816 b!6356814)))

(declare-fun lambda!350048 () Int)

(declare-fun lambda!350046 () Int)

(declare-fun lt!2366278 () Int)

(declare-fun lt!2366276 () Int)

(assert (=> bs!1592015 (= (= lt!2366278 lt!2366276) (= lambda!350048 lambda!350046))))

(assert (=> b!6356816 true))

(declare-fun d!1994104 () Bool)

(declare-fun e!3860206 () Bool)

(assert (=> d!1994104 e!3860206))

(declare-fun res!2615725 () Bool)

(assert (=> d!1994104 (=> (not res!2615725) (not e!3860206))))

(assert (=> d!1994104 (= res!2615725 (>= lt!2366278 0))))

(declare-fun e!3860205 () Int)

(assert (=> d!1994104 (= lt!2366278 e!3860205)))

(declare-fun c!1156866 () Bool)

(assert (=> d!1994104 (= c!1156866 ((_ is Cons!64971) lt!2366165))))

(assert (=> d!1994104 (= (zipperDepth!372 lt!2366165) lt!2366278)))

(assert (=> b!6356814 (= e!3860205 lt!2366276)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!260 (Context!11298) Int)

(assert (=> b!6356814 (= lt!2366276 (maxBigInt!0 (contextDepth!260 (h!71419 lt!2366165)) (zipperDepth!372 (t!378685 lt!2366165))))))

(declare-fun lt!2366277 () Unit!158391)

(declare-fun lambda!350045 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!244 (List!65095 Int Int Int) Unit!158391)

(assert (=> b!6356814 (= lt!2366277 (lemmaForallContextDepthBiggerThanTransitive!244 (t!378685 lt!2366165) lt!2366276 (zipperDepth!372 (t!378685 lt!2366165)) lambda!350045))))

(declare-fun forall!15442 (List!65095 Int) Bool)

(assert (=> b!6356814 (forall!15442 (t!378685 lt!2366165) lambda!350046)))

(declare-fun lt!2366279 () Unit!158391)

(assert (=> b!6356814 (= lt!2366279 lt!2366277)))

(declare-fun b!6356815 () Bool)

(assert (=> b!6356815 (= e!3860205 0)))

(assert (=> b!6356816 (= e!3860206 (forall!15442 lt!2366165 lambda!350048))))

(assert (= (and d!1994104 c!1156866) b!6356814))

(assert (= (and d!1994104 (not c!1156866)) b!6356815))

(assert (= (and d!1994104 res!2615725) b!6356816))

(declare-fun m!7162984 () Bool)

(assert (=> b!6356814 m!7162984))

(declare-fun m!7162986 () Bool)

(assert (=> b!6356814 m!7162986))

(declare-fun m!7162988 () Bool)

(assert (=> b!6356814 m!7162988))

(assert (=> b!6356814 m!7162984))

(declare-fun m!7162990 () Bool)

(assert (=> b!6356814 m!7162990))

(assert (=> b!6356814 m!7162988))

(declare-fun m!7162992 () Bool)

(assert (=> b!6356814 m!7162992))

(assert (=> b!6356814 m!7162984))

(declare-fun m!7162994 () Bool)

(assert (=> b!6356816 m!7162994))

(assert (=> b!6356386 d!1994104))

(declare-fun bs!1592020 () Bool)

(declare-fun b!6356819 () Bool)

(assert (= bs!1592020 (and b!6356819 b!6356814)))

(declare-fun lambda!350049 () Int)

(assert (=> bs!1592020 (= lambda!350049 lambda!350045)))

(declare-fun lambda!350051 () Int)

(declare-fun lt!2366281 () Int)

(assert (=> bs!1592020 (= (= lt!2366281 lt!2366276) (= lambda!350051 lambda!350046))))

(declare-fun bs!1592021 () Bool)

(assert (= bs!1592021 (and b!6356819 b!6356816)))

(assert (=> bs!1592021 (= (= lt!2366281 lt!2366278) (= lambda!350051 lambda!350048))))

(assert (=> b!6356819 true))

(declare-fun bs!1592022 () Bool)

(declare-fun b!6356821 () Bool)

(assert (= bs!1592022 (and b!6356821 b!6356814)))

(declare-fun lambda!350052 () Int)

(declare-fun lt!2366283 () Int)

(assert (=> bs!1592022 (= (= lt!2366283 lt!2366276) (= lambda!350052 lambda!350046))))

(declare-fun bs!1592023 () Bool)

(assert (= bs!1592023 (and b!6356821 b!6356816)))

(assert (=> bs!1592023 (= (= lt!2366283 lt!2366278) (= lambda!350052 lambda!350048))))

(declare-fun bs!1592025 () Bool)

(assert (= bs!1592025 (and b!6356821 b!6356819)))

(assert (=> bs!1592025 (= (= lt!2366283 lt!2366281) (= lambda!350052 lambda!350051))))

(assert (=> b!6356821 true))

(declare-fun d!1994128 () Bool)

(declare-fun e!3860208 () Bool)

(assert (=> d!1994128 e!3860208))

(declare-fun res!2615726 () Bool)

(assert (=> d!1994128 (=> (not res!2615726) (not e!3860208))))

(assert (=> d!1994128 (= res!2615726 (>= lt!2366283 0))))

(declare-fun e!3860207 () Int)

(assert (=> d!1994128 (= lt!2366283 e!3860207)))

(declare-fun c!1156867 () Bool)

(assert (=> d!1994128 (= c!1156867 ((_ is Cons!64971) zl!343))))

(assert (=> d!1994128 (= (zipperDepth!372 zl!343) lt!2366283)))

(assert (=> b!6356819 (= e!3860207 lt!2366281)))

(assert (=> b!6356819 (= lt!2366281 (maxBigInt!0 (contextDepth!260 (h!71419 zl!343)) (zipperDepth!372 (t!378685 zl!343))))))

(declare-fun lt!2366282 () Unit!158391)

(assert (=> b!6356819 (= lt!2366282 (lemmaForallContextDepthBiggerThanTransitive!244 (t!378685 zl!343) lt!2366281 (zipperDepth!372 (t!378685 zl!343)) lambda!350049))))

(assert (=> b!6356819 (forall!15442 (t!378685 zl!343) lambda!350051)))

(declare-fun lt!2366284 () Unit!158391)

(assert (=> b!6356819 (= lt!2366284 lt!2366282)))

(declare-fun b!6356820 () Bool)

(assert (=> b!6356820 (= e!3860207 0)))

(assert (=> b!6356821 (= e!3860208 (forall!15442 zl!343 lambda!350052))))

(assert (= (and d!1994128 c!1156867) b!6356819))

(assert (= (and d!1994128 (not c!1156867)) b!6356820))

(assert (= (and d!1994128 res!2615726) b!6356821))

(declare-fun m!7162996 () Bool)

(assert (=> b!6356819 m!7162996))

(declare-fun m!7162998 () Bool)

(assert (=> b!6356819 m!7162998))

(declare-fun m!7163000 () Bool)

(assert (=> b!6356819 m!7163000))

(assert (=> b!6356819 m!7162996))

(declare-fun m!7163002 () Bool)

(assert (=> b!6356819 m!7163002))

(assert (=> b!6356819 m!7163000))

(declare-fun m!7163004 () Bool)

(assert (=> b!6356819 m!7163004))

(assert (=> b!6356819 m!7162996))

(declare-fun m!7163006 () Bool)

(assert (=> b!6356821 m!7163006))

(assert (=> b!6356386 d!1994128))

(declare-fun d!1994130 () Bool)

(assert (=> d!1994130 (= (flatMap!1770 z!1189 lambda!349997) (choose!47199 z!1189 lambda!349997))))

(declare-fun bs!1592026 () Bool)

(assert (= bs!1592026 d!1994130))

(declare-fun m!7163008 () Bool)

(assert (=> bs!1592026 m!7163008))

(assert (=> b!6356406 d!1994130))

(declare-fun d!1994132 () Bool)

(declare-fun nullableFct!2204 (Regex!16265) Bool)

(assert (=> d!1994132 (= (nullable!6258 (h!71418 (exprs!6149 (h!71419 zl!343)))) (nullableFct!2204 (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun bs!1592027 () Bool)

(assert (= bs!1592027 d!1994132))

(declare-fun m!7163016 () Bool)

(assert (=> bs!1592027 m!7163016))

(assert (=> b!6356406 d!1994132))

(declare-fun b!6356831 () Bool)

(declare-fun e!3860215 () (InoxSet Context!11298))

(declare-fun e!3860214 () (InoxSet Context!11298))

(assert (=> b!6356831 (= e!3860215 e!3860214)))

(declare-fun c!1156871 () Bool)

(assert (=> b!6356831 (= c!1156871 ((_ is Cons!64970) (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))))

(declare-fun bm!542084 () Bool)

(declare-fun call!542089 () (InoxSet Context!11298))

(assert (=> bm!542084 (= call!542089 (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))) (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (h!71420 s!2326)))))

(declare-fun b!6356833 () Bool)

(assert (=> b!6356833 (= e!3860215 ((_ map or) call!542089 (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (h!71420 s!2326))))))

(declare-fun b!6356834 () Bool)

(declare-fun e!3860216 () Bool)

(assert (=> b!6356834 (= e!3860216 (nullable!6258 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))))))

(declare-fun b!6356835 () Bool)

(assert (=> b!6356835 (= e!3860214 ((as const (Array Context!11298 Bool)) false))))

(declare-fun d!1994136 () Bool)

(declare-fun c!1156870 () Bool)

(assert (=> d!1994136 (= c!1156870 e!3860216)))

(declare-fun res!2615732 () Bool)

(assert (=> d!1994136 (=> (not res!2615732) (not e!3860216))))

(assert (=> d!1994136 (= res!2615732 ((_ is Cons!64970) (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))))

(assert (=> d!1994136 (= (derivationStepZipperUp!1439 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))) (h!71420 s!2326)) e!3860215)))

(declare-fun b!6356832 () Bool)

(assert (=> b!6356832 (= e!3860214 call!542089)))

(assert (= (and d!1994136 res!2615732) b!6356834))

(assert (= (and d!1994136 c!1156870) b!6356833))

(assert (= (and d!1994136 (not c!1156870)) b!6356831))

(assert (= (and b!6356831 c!1156871) b!6356832))

(assert (= (and b!6356831 (not c!1156871)) b!6356835))

(assert (= (or b!6356833 b!6356832) bm!542084))

(declare-fun m!7163018 () Bool)

(assert (=> bm!542084 m!7163018))

(declare-fun m!7163020 () Bool)

(assert (=> b!6356833 m!7163020))

(declare-fun m!7163024 () Bool)

(assert (=> b!6356834 m!7163024))

(assert (=> b!6356406 d!1994136))

(declare-fun d!1994138 () Bool)

(assert (=> d!1994138 (= (flatMap!1770 z!1189 lambda!349997) (dynLambda!25763 lambda!349997 (h!71419 zl!343)))))

(declare-fun lt!2366288 () Unit!158391)

(assert (=> d!1994138 (= lt!2366288 (choose!47200 z!1189 (h!71419 zl!343) lambda!349997))))

(assert (=> d!1994138 (= z!1189 (store ((as const (Array Context!11298 Bool)) false) (h!71419 zl!343) true))))

(assert (=> d!1994138 (= (lemmaFlatMapOnSingletonSet!1296 z!1189 (h!71419 zl!343) lambda!349997) lt!2366288)))

(declare-fun b_lambda!241673 () Bool)

(assert (=> (not b_lambda!241673) (not d!1994138)))

(declare-fun bs!1592028 () Bool)

(assert (= bs!1592028 d!1994138))

(assert (=> bs!1592028 m!7162646))

(declare-fun m!7163034 () Bool)

(assert (=> bs!1592028 m!7163034))

(declare-fun m!7163038 () Bool)

(assert (=> bs!1592028 m!7163038))

(declare-fun m!7163040 () Bool)

(assert (=> bs!1592028 m!7163040))

(assert (=> b!6356406 d!1994138))

(declare-fun b!6356836 () Bool)

(declare-fun e!3860218 () (InoxSet Context!11298))

(declare-fun e!3860217 () (InoxSet Context!11298))

(assert (=> b!6356836 (= e!3860218 e!3860217)))

(declare-fun c!1156873 () Bool)

(assert (=> b!6356836 (= c!1156873 ((_ is Cons!64970) (exprs!6149 (h!71419 zl!343))))))

(declare-fun bm!542085 () Bool)

(declare-fun call!542090 () (InoxSet Context!11298))

(assert (=> bm!542085 (= call!542090 (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (h!71419 zl!343))) (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))) (h!71420 s!2326)))))

(declare-fun b!6356838 () Bool)

(assert (=> b!6356838 (= e!3860218 ((_ map or) call!542090 (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))) (h!71420 s!2326))))))

(declare-fun b!6356839 () Bool)

(declare-fun e!3860219 () Bool)

(assert (=> b!6356839 (= e!3860219 (nullable!6258 (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6356840 () Bool)

(assert (=> b!6356840 (= e!3860217 ((as const (Array Context!11298 Bool)) false))))

(declare-fun d!1994140 () Bool)

(declare-fun c!1156872 () Bool)

(assert (=> d!1994140 (= c!1156872 e!3860219)))

(declare-fun res!2615733 () Bool)

(assert (=> d!1994140 (=> (not res!2615733) (not e!3860219))))

(assert (=> d!1994140 (= res!2615733 ((_ is Cons!64970) (exprs!6149 (h!71419 zl!343))))))

(assert (=> d!1994140 (= (derivationStepZipperUp!1439 (h!71419 zl!343) (h!71420 s!2326)) e!3860218)))

(declare-fun b!6356837 () Bool)

(assert (=> b!6356837 (= e!3860217 call!542090)))

(assert (= (and d!1994140 res!2615733) b!6356839))

(assert (= (and d!1994140 c!1156872) b!6356838))

(assert (= (and d!1994140 (not c!1156872)) b!6356836))

(assert (= (and b!6356836 c!1156873) b!6356837))

(assert (= (and b!6356836 (not c!1156873)) b!6356840))

(assert (= (or b!6356838 b!6356837) bm!542085))

(declare-fun m!7163048 () Bool)

(assert (=> bm!542085 m!7163048))

(declare-fun m!7163050 () Bool)

(assert (=> b!6356838 m!7163050))

(assert (=> b!6356839 m!7162648))

(assert (=> b!6356406 d!1994140))

(declare-fun b!6356851 () Bool)

(declare-fun e!3860227 () (InoxSet Context!11298))

(declare-fun e!3860226 () (InoxSet Context!11298))

(assert (=> b!6356851 (= e!3860227 e!3860226)))

(declare-fun c!1156879 () Bool)

(assert (=> b!6356851 (= c!1156879 ((_ is Cons!64970) (exprs!6149 lt!2366189)))))

(declare-fun bm!542086 () Bool)

(declare-fun call!542091 () (InoxSet Context!11298))

(assert (=> bm!542086 (= call!542091 (derivationStepZipperDown!1513 (h!71418 (exprs!6149 lt!2366189)) (Context!11299 (t!378684 (exprs!6149 lt!2366189))) (h!71420 s!2326)))))

(declare-fun b!6356853 () Bool)

(assert (=> b!6356853 (= e!3860227 ((_ map or) call!542091 (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 lt!2366189))) (h!71420 s!2326))))))

(declare-fun b!6356854 () Bool)

(declare-fun e!3860228 () Bool)

(assert (=> b!6356854 (= e!3860228 (nullable!6258 (h!71418 (exprs!6149 lt!2366189))))))

(declare-fun b!6356855 () Bool)

(assert (=> b!6356855 (= e!3860226 ((as const (Array Context!11298 Bool)) false))))

(declare-fun d!1994148 () Bool)

(declare-fun c!1156878 () Bool)

(assert (=> d!1994148 (= c!1156878 e!3860228)))

(declare-fun res!2615736 () Bool)

(assert (=> d!1994148 (=> (not res!2615736) (not e!3860228))))

(assert (=> d!1994148 (= res!2615736 ((_ is Cons!64970) (exprs!6149 lt!2366189)))))

(assert (=> d!1994148 (= (derivationStepZipperUp!1439 lt!2366189 (h!71420 s!2326)) e!3860227)))

(declare-fun b!6356852 () Bool)

(assert (=> b!6356852 (= e!3860226 call!542091)))

(assert (= (and d!1994148 res!2615736) b!6356854))

(assert (= (and d!1994148 c!1156878) b!6356853))

(assert (= (and d!1994148 (not c!1156878)) b!6356851))

(assert (= (and b!6356851 c!1156879) b!6356852))

(assert (= (and b!6356851 (not c!1156879)) b!6356855))

(assert (= (or b!6356853 b!6356852) bm!542086))

(declare-fun m!7163052 () Bool)

(assert (=> bm!542086 m!7163052))

(declare-fun m!7163054 () Bool)

(assert (=> b!6356853 m!7163054))

(declare-fun m!7163056 () Bool)

(assert (=> b!6356854 m!7163056))

(assert (=> b!6356406 d!1994148))

(declare-fun d!1994150 () Bool)

(declare-fun c!1156901 () Bool)

(assert (=> d!1994150 (= c!1156901 (and ((_ is ElementMatch!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))) (= (c!1156730 (h!71418 (exprs!6149 (h!71419 zl!343)))) (h!71420 s!2326))))))

(declare-fun e!3860258 () (InoxSet Context!11298))

(assert (=> d!1994150 (= (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (h!71419 zl!343))) lt!2366189 (h!71420 s!2326)) e!3860258)))

(declare-fun b!6356904 () Bool)

(declare-fun c!1156899 () Bool)

(assert (=> b!6356904 (= c!1156899 ((_ is Star!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun e!3860255 () (InoxSet Context!11298))

(declare-fun e!3860257 () (InoxSet Context!11298))

(assert (=> b!6356904 (= e!3860255 e!3860257)))

(declare-fun bm!542100 () Bool)

(declare-fun call!542108 () (InoxSet Context!11298))

(declare-fun call!542105 () (InoxSet Context!11298))

(assert (=> bm!542100 (= call!542108 call!542105)))

(declare-fun b!6356905 () Bool)

(declare-fun e!3860259 () (InoxSet Context!11298))

(assert (=> b!6356905 (= e!3860258 e!3860259)))

(declare-fun c!1156898 () Bool)

(assert (=> b!6356905 (= c!1156898 ((_ is Union!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6356906 () Bool)

(assert (=> b!6356906 (= e!3860255 call!542108)))

(declare-fun call!542106 () (InoxSet Context!11298))

(declare-fun bm!542101 () Bool)

(declare-fun c!1156900 () Bool)

(declare-fun call!542109 () List!65094)

(declare-fun c!1156902 () Bool)

(assert (=> bm!542101 (= call!542106 (derivationStepZipperDown!1513 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343))))))) (ite (or c!1156898 c!1156900) lt!2366189 (Context!11299 call!542109)) (h!71420 s!2326)))))

(declare-fun b!6356907 () Bool)

(declare-fun call!542107 () (InoxSet Context!11298))

(assert (=> b!6356907 (= e!3860259 ((_ map or) call!542107 call!542106))))

(declare-fun b!6356908 () Bool)

(declare-fun e!3860256 () (InoxSet Context!11298))

(assert (=> b!6356908 (= e!3860256 ((_ map or) call!542107 call!542105))))

(declare-fun b!6356909 () Bool)

(assert (=> b!6356909 (= e!3860258 (store ((as const (Array Context!11298 Bool)) false) lt!2366189 true))))

(declare-fun b!6356910 () Bool)

(declare-fun e!3860260 () Bool)

(assert (=> b!6356910 (= e!3860260 (nullable!6258 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun bm!542102 () Bool)

(assert (=> bm!542102 (= call!542105 call!542106)))

(declare-fun bm!542103 () Bool)

(declare-fun call!542110 () List!65094)

(declare-fun $colon$colon!2126 (List!65094 Regex!16265) List!65094)

(assert (=> bm!542103 (= call!542110 ($colon$colon!2126 (exprs!6149 lt!2366189) (ite (or c!1156900 c!1156902) (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (h!71418 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun bm!542104 () Bool)

(assert (=> bm!542104 (= call!542109 call!542110)))

(declare-fun b!6356911 () Bool)

(assert (=> b!6356911 (= c!1156900 e!3860260)))

(declare-fun res!2615749 () Bool)

(assert (=> b!6356911 (=> (not res!2615749) (not e!3860260))))

(assert (=> b!6356911 (= res!2615749 ((_ is Concat!25110) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> b!6356911 (= e!3860259 e!3860256)))

(declare-fun b!6356912 () Bool)

(assert (=> b!6356912 (= e!3860257 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6356913 () Bool)

(assert (=> b!6356913 (= e!3860257 call!542108)))

(declare-fun bm!542105 () Bool)

(assert (=> bm!542105 (= call!542107 (derivationStepZipperDown!1513 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))) (ite c!1156898 lt!2366189 (Context!11299 call!542110)) (h!71420 s!2326)))))

(declare-fun b!6356914 () Bool)

(assert (=> b!6356914 (= e!3860256 e!3860255)))

(assert (=> b!6356914 (= c!1156902 ((_ is Concat!25110) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (= (and d!1994150 c!1156901) b!6356909))

(assert (= (and d!1994150 (not c!1156901)) b!6356905))

(assert (= (and b!6356905 c!1156898) b!6356907))

(assert (= (and b!6356905 (not c!1156898)) b!6356911))

(assert (= (and b!6356911 res!2615749) b!6356910))

(assert (= (and b!6356911 c!1156900) b!6356908))

(assert (= (and b!6356911 (not c!1156900)) b!6356914))

(assert (= (and b!6356914 c!1156902) b!6356906))

(assert (= (and b!6356914 (not c!1156902)) b!6356904))

(assert (= (and b!6356904 c!1156899) b!6356913))

(assert (= (and b!6356904 (not c!1156899)) b!6356912))

(assert (= (or b!6356906 b!6356913) bm!542104))

(assert (= (or b!6356906 b!6356913) bm!542100))

(assert (= (or b!6356908 bm!542104) bm!542103))

(assert (= (or b!6356908 bm!542100) bm!542102))

(assert (= (or b!6356907 bm!542102) bm!542101))

(assert (= (or b!6356907 b!6356908) bm!542105))

(declare-fun m!7163116 () Bool)

(assert (=> b!6356909 m!7163116))

(declare-fun m!7163118 () Bool)

(assert (=> bm!542101 m!7163118))

(declare-fun m!7163120 () Bool)

(assert (=> b!6356910 m!7163120))

(declare-fun m!7163122 () Bool)

(assert (=> bm!542105 m!7163122))

(declare-fun m!7163124 () Bool)

(assert (=> bm!542103 m!7163124))

(assert (=> b!6356406 d!1994150))

(declare-fun d!1994164 () Bool)

(declare-fun choose!47205 (Int) Bool)

(assert (=> d!1994164 (= (Exists!3335 lambda!350001) (choose!47205 lambda!350001))))

(declare-fun bs!1592046 () Bool)

(assert (= bs!1592046 d!1994164))

(declare-fun m!7163126 () Bool)

(assert (=> bs!1592046 m!7163126))

(assert (=> b!6356387 d!1994164))

(declare-fun bs!1592047 () Bool)

(declare-fun d!1994166 () Bool)

(assert (= bs!1592047 (and d!1994166 b!6356395)))

(declare-fun lambda!350061 () Int)

(assert (=> bs!1592047 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350061 lambda!349995))))

(assert (=> bs!1592047 (not (= lambda!350061 lambda!349996))))

(declare-fun bs!1592048 () Bool)

(assert (= bs!1592048 (and d!1994166 b!6356387)))

(assert (=> bs!1592048 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350061 lambda!350000))))

(assert (=> bs!1592048 (not (= lambda!350061 lambda!350001))))

(assert (=> bs!1592048 (= lambda!350061 lambda!349998)))

(assert (=> bs!1592048 (not (= lambda!350061 lambda!349999))))

(assert (=> d!1994166 true))

(assert (=> d!1994166 true))

(assert (=> d!1994166 true))

(assert (=> d!1994166 (= (isDefined!12859 (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 Nil!64972 s!2326 s!2326)) (Exists!3335 lambda!350061))))

(declare-fun lt!2366298 () Unit!158391)

(declare-fun choose!47206 (Regex!16265 Regex!16265 List!65096) Unit!158391)

(assert (=> d!1994166 (= lt!2366298 (choose!47206 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 s!2326))))

(assert (=> d!1994166 (validRegex!8001 (regOne!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994166 (= (lemmaFindConcatSeparationEquivalentToExists!2334 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 s!2326) lt!2366298)))

(declare-fun bs!1592049 () Bool)

(assert (= bs!1592049 d!1994166))

(declare-fun m!7163128 () Bool)

(assert (=> bs!1592049 m!7163128))

(assert (=> bs!1592049 m!7162606))

(assert (=> bs!1592049 m!7162624))

(declare-fun m!7163130 () Bool)

(assert (=> bs!1592049 m!7163130))

(declare-fun m!7163132 () Bool)

(assert (=> bs!1592049 m!7163132))

(assert (=> bs!1592049 m!7162606))

(assert (=> b!6356387 d!1994166))

(declare-fun bs!1592072 () Bool)

(declare-fun d!1994168 () Bool)

(assert (= bs!1592072 (and d!1994168 d!1994060)))

(declare-fun lambda!350067 () Int)

(assert (=> bs!1592072 (= lambda!350067 lambda!350020)))

(declare-fun bs!1592073 () Bool)

(assert (= bs!1592073 (and d!1994168 d!1994068)))

(assert (=> bs!1592073 (= lambda!350067 lambda!350024)))

(declare-fun e!3860302 () Bool)

(assert (=> d!1994168 e!3860302))

(declare-fun res!2615777 () Bool)

(assert (=> d!1994168 (=> (not res!2615777) (not e!3860302))))

(declare-fun lt!2366302 () Regex!16265)

(assert (=> d!1994168 (= res!2615777 (validRegex!8001 lt!2366302))))

(declare-fun e!3860305 () Regex!16265)

(assert (=> d!1994168 (= lt!2366302 e!3860305)))

(declare-fun c!1156926 () Bool)

(declare-fun e!3860300 () Bool)

(assert (=> d!1994168 (= c!1156926 e!3860300)))

(declare-fun res!2615778 () Bool)

(assert (=> d!1994168 (=> (not res!2615778) (not e!3860300))))

(assert (=> d!1994168 (= res!2615778 ((_ is Cons!64970) lt!2366161))))

(assert (=> d!1994168 (forall!15441 lt!2366161 lambda!350067)))

(assert (=> d!1994168 (= (generalisedConcat!1862 lt!2366161) lt!2366302)))

(declare-fun b!6356982 () Bool)

(declare-fun e!3860301 () Bool)

(declare-fun e!3860304 () Bool)

(assert (=> b!6356982 (= e!3860301 e!3860304)))

(declare-fun c!1156923 () Bool)

(assert (=> b!6356982 (= c!1156923 (isEmpty!37069 (tail!12107 lt!2366161)))))

(declare-fun b!6356983 () Bool)

(declare-fun isConcat!1190 (Regex!16265) Bool)

(assert (=> b!6356983 (= e!3860304 (isConcat!1190 lt!2366302))))

(declare-fun b!6356984 () Bool)

(declare-fun e!3860303 () Regex!16265)

(assert (=> b!6356984 (= e!3860305 e!3860303)))

(declare-fun c!1156924 () Bool)

(assert (=> b!6356984 (= c!1156924 ((_ is Cons!64970) lt!2366161))))

(declare-fun b!6356985 () Bool)

(assert (=> b!6356985 (= e!3860303 EmptyExpr!16265)))

(declare-fun b!6356986 () Bool)

(assert (=> b!6356986 (= e!3860303 (Concat!25110 (h!71418 lt!2366161) (generalisedConcat!1862 (t!378684 lt!2366161))))))

(declare-fun b!6356987 () Bool)

(assert (=> b!6356987 (= e!3860300 (isEmpty!37069 (t!378684 lt!2366161)))))

(declare-fun b!6356988 () Bool)

(assert (=> b!6356988 (= e!3860302 e!3860301)))

(declare-fun c!1156925 () Bool)

(assert (=> b!6356988 (= c!1156925 (isEmpty!37069 lt!2366161))))

(declare-fun b!6356989 () Bool)

(assert (=> b!6356989 (= e!3860304 (= lt!2366302 (head!13022 lt!2366161)))))

(declare-fun b!6356990 () Bool)

(assert (=> b!6356990 (= e!3860305 (h!71418 lt!2366161))))

(declare-fun b!6356991 () Bool)

(declare-fun isEmptyExpr!1667 (Regex!16265) Bool)

(assert (=> b!6356991 (= e!3860301 (isEmptyExpr!1667 lt!2366302))))

(assert (= (and d!1994168 res!2615778) b!6356987))

(assert (= (and d!1994168 c!1156926) b!6356990))

(assert (= (and d!1994168 (not c!1156926)) b!6356984))

(assert (= (and b!6356984 c!1156924) b!6356986))

(assert (= (and b!6356984 (not c!1156924)) b!6356985))

(assert (= (and d!1994168 res!2615777) b!6356988))

(assert (= (and b!6356988 c!1156925) b!6356991))

(assert (= (and b!6356988 (not c!1156925)) b!6356982))

(assert (= (and b!6356982 c!1156923) b!6356989))

(assert (= (and b!6356982 (not c!1156923)) b!6356983))

(declare-fun m!7163146 () Bool)

(assert (=> b!6356982 m!7163146))

(assert (=> b!6356982 m!7163146))

(declare-fun m!7163148 () Bool)

(assert (=> b!6356982 m!7163148))

(declare-fun m!7163150 () Bool)

(assert (=> d!1994168 m!7163150))

(declare-fun m!7163152 () Bool)

(assert (=> d!1994168 m!7163152))

(declare-fun m!7163154 () Bool)

(assert (=> b!6356989 m!7163154))

(declare-fun m!7163156 () Bool)

(assert (=> b!6356983 m!7163156))

(declare-fun m!7163158 () Bool)

(assert (=> b!6356988 m!7163158))

(declare-fun m!7163160 () Bool)

(assert (=> b!6356986 m!7163160))

(declare-fun m!7163162 () Bool)

(assert (=> b!6356987 m!7163162))

(declare-fun m!7163164 () Bool)

(assert (=> b!6356991 m!7163164))

(assert (=> b!6356387 d!1994168))

(declare-fun bs!1592122 () Bool)

(declare-fun b!6357049 () Bool)

(assert (= bs!1592122 (and b!6357049 b!6356395)))

(declare-fun lambda!350077 () Int)

(assert (=> bs!1592122 (not (= lambda!350077 lambda!349995))))

(assert (=> bs!1592122 (not (= lambda!350077 lambda!349996))))

(declare-fun bs!1592125 () Bool)

(assert (= bs!1592125 (and b!6357049 b!6356387)))

(assert (=> bs!1592125 (not (= lambda!350077 lambda!350000))))

(assert (=> bs!1592125 (not (= lambda!350077 lambda!350001))))

(assert (=> bs!1592125 (not (= lambda!350077 lambda!349998))))

(assert (=> bs!1592125 (not (= lambda!350077 lambda!349999))))

(declare-fun bs!1592130 () Bool)

(assert (= bs!1592130 (and b!6357049 d!1994166)))

(assert (=> bs!1592130 (not (= lambda!350077 lambda!350061))))

(assert (=> b!6357049 true))

(assert (=> b!6357049 true))

(declare-fun bs!1592135 () Bool)

(declare-fun b!6357057 () Bool)

(assert (= bs!1592135 (and b!6357057 b!6356395)))

(declare-fun lambda!350078 () Int)

(assert (=> bs!1592135 (not (= lambda!350078 lambda!349995))))

(assert (=> bs!1592135 (= (and (= (regOne!33042 lt!2366179) (regOne!33042 r!7292)) (= (regTwo!33042 lt!2366179) (regTwo!33042 r!7292))) (= lambda!350078 lambda!349996))))

(declare-fun bs!1592136 () Bool)

(assert (= bs!1592136 (and b!6357057 b!6356387)))

(assert (=> bs!1592136 (not (= lambda!350078 lambda!350000))))

(assert (=> bs!1592136 (= (and (= (regOne!33042 lt!2366179) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 lt!2366179) lt!2366173)) (= lambda!350078 lambda!350001))))

(declare-fun bs!1592137 () Bool)

(assert (= bs!1592137 (and b!6357057 b!6357049)))

(assert (=> bs!1592137 (not (= lambda!350078 lambda!350077))))

(assert (=> bs!1592136 (not (= lambda!350078 lambda!349998))))

(assert (=> bs!1592136 (= (and (= (regOne!33042 lt!2366179) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 lt!2366179) lt!2366179)) (= lambda!350078 lambda!349999))))

(declare-fun bs!1592138 () Bool)

(assert (= bs!1592138 (and b!6357057 d!1994166)))

(assert (=> bs!1592138 (not (= lambda!350078 lambda!350061))))

(assert (=> b!6357057 true))

(assert (=> b!6357057 true))

(declare-fun e!3860343 () Bool)

(declare-fun call!542126 () Bool)

(assert (=> b!6357049 (= e!3860343 call!542126)))

(declare-fun bm!542120 () Bool)

(declare-fun call!542125 () Bool)

(declare-fun isEmpty!37073 (List!65096) Bool)

(assert (=> bm!542120 (= call!542125 (isEmpty!37073 s!2326))))

(declare-fun b!6357050 () Bool)

(declare-fun e!3860344 () Bool)

(assert (=> b!6357050 (= e!3860344 call!542125)))

(declare-fun b!6357051 () Bool)

(declare-fun e!3860346 () Bool)

(assert (=> b!6357051 (= e!3860346 (= s!2326 (Cons!64972 (c!1156730 lt!2366179) Nil!64972)))))

(declare-fun b!6357052 () Bool)

(declare-fun e!3860347 () Bool)

(assert (=> b!6357052 (= e!3860347 (matchRSpec!3366 (regTwo!33043 lt!2366179) s!2326))))

(declare-fun b!6357053 () Bool)

(declare-fun res!2615805 () Bool)

(assert (=> b!6357053 (=> res!2615805 e!3860343)))

(assert (=> b!6357053 (= res!2615805 call!542125)))

(declare-fun e!3860341 () Bool)

(assert (=> b!6357053 (= e!3860341 e!3860343)))

(declare-fun c!1156943 () Bool)

(declare-fun bm!542121 () Bool)

(assert (=> bm!542121 (= call!542126 (Exists!3335 (ite c!1156943 lambda!350077 lambda!350078)))))

(declare-fun b!6357054 () Bool)

(declare-fun e!3860342 () Bool)

(assert (=> b!6357054 (= e!3860342 e!3860341)))

(assert (=> b!6357054 (= c!1156943 ((_ is Star!16265) lt!2366179))))

(declare-fun d!1994176 () Bool)

(declare-fun c!1156946 () Bool)

(assert (=> d!1994176 (= c!1156946 ((_ is EmptyExpr!16265) lt!2366179))))

(assert (=> d!1994176 (= (matchRSpec!3366 lt!2366179 s!2326) e!3860344)))

(declare-fun b!6357055 () Bool)

(declare-fun c!1156945 () Bool)

(assert (=> b!6357055 (= c!1156945 ((_ is ElementMatch!16265) lt!2366179))))

(declare-fun e!3860345 () Bool)

(assert (=> b!6357055 (= e!3860345 e!3860346)))

(declare-fun b!6357056 () Bool)

(declare-fun c!1156944 () Bool)

(assert (=> b!6357056 (= c!1156944 ((_ is Union!16265) lt!2366179))))

(assert (=> b!6357056 (= e!3860346 e!3860342)))

(assert (=> b!6357057 (= e!3860341 call!542126)))

(declare-fun b!6357058 () Bool)

(assert (=> b!6357058 (= e!3860342 e!3860347)))

(declare-fun res!2615804 () Bool)

(assert (=> b!6357058 (= res!2615804 (matchRSpec!3366 (regOne!33043 lt!2366179) s!2326))))

(assert (=> b!6357058 (=> res!2615804 e!3860347)))

(declare-fun b!6357059 () Bool)

(assert (=> b!6357059 (= e!3860344 e!3860345)))

(declare-fun res!2615806 () Bool)

(assert (=> b!6357059 (= res!2615806 (not ((_ is EmptyLang!16265) lt!2366179)))))

(assert (=> b!6357059 (=> (not res!2615806) (not e!3860345))))

(assert (= (and d!1994176 c!1156946) b!6357050))

(assert (= (and d!1994176 (not c!1156946)) b!6357059))

(assert (= (and b!6357059 res!2615806) b!6357055))

(assert (= (and b!6357055 c!1156945) b!6357051))

(assert (= (and b!6357055 (not c!1156945)) b!6357056))

(assert (= (and b!6357056 c!1156944) b!6357058))

(assert (= (and b!6357056 (not c!1156944)) b!6357054))

(assert (= (and b!6357058 (not res!2615804)) b!6357052))

(assert (= (and b!6357054 c!1156943) b!6357053))

(assert (= (and b!6357054 (not c!1156943)) b!6357057))

(assert (= (and b!6357053 (not res!2615805)) b!6357049))

(assert (= (or b!6357049 b!6357057) bm!542121))

(assert (= (or b!6357050 b!6357053) bm!542120))

(declare-fun m!7163190 () Bool)

(assert (=> bm!542120 m!7163190))

(declare-fun m!7163192 () Bool)

(assert (=> b!6357052 m!7163192))

(declare-fun m!7163194 () Bool)

(assert (=> bm!542121 m!7163194))

(declare-fun m!7163196 () Bool)

(assert (=> b!6357058 m!7163196))

(assert (=> b!6356387 d!1994176))

(declare-fun b!6357129 () Bool)

(declare-fun e!3860393 () Bool)

(assert (=> b!6357129 (= e!3860393 (matchR!8448 lt!2366173 s!2326))))

(declare-fun b!6357130 () Bool)

(declare-fun e!3860394 () Option!16156)

(declare-fun e!3860391 () Option!16156)

(assert (=> b!6357130 (= e!3860394 e!3860391)))

(declare-fun c!1156967 () Bool)

(assert (=> b!6357130 (= c!1156967 ((_ is Nil!64972) s!2326))))

(declare-fun b!6357131 () Bool)

(declare-fun res!2615841 () Bool)

(declare-fun e!3860395 () Bool)

(assert (=> b!6357131 (=> (not res!2615841) (not e!3860395))))

(declare-fun lt!2366321 () Option!16156)

(declare-fun get!22482 (Option!16156) tuple2!66488)

(assert (=> b!6357131 (= res!2615841 (matchR!8448 (regTwo!33042 (regOne!33042 r!7292)) (_1!36547 (get!22482 lt!2366321))))))

(declare-fun b!6357132 () Bool)

(declare-fun res!2615843 () Bool)

(assert (=> b!6357132 (=> (not res!2615843) (not e!3860395))))

(assert (=> b!6357132 (= res!2615843 (matchR!8448 lt!2366173 (_2!36547 (get!22482 lt!2366321))))))

(declare-fun b!6357133 () Bool)

(assert (=> b!6357133 (= e!3860391 None!16155)))

(declare-fun d!1994188 () Bool)

(declare-fun e!3860392 () Bool)

(assert (=> d!1994188 e!3860392))

(declare-fun res!2615844 () Bool)

(assert (=> d!1994188 (=> res!2615844 e!3860392)))

(assert (=> d!1994188 (= res!2615844 e!3860395)))

(declare-fun res!2615842 () Bool)

(assert (=> d!1994188 (=> (not res!2615842) (not e!3860395))))

(assert (=> d!1994188 (= res!2615842 (isDefined!12859 lt!2366321))))

(assert (=> d!1994188 (= lt!2366321 e!3860394)))

(declare-fun c!1156966 () Bool)

(assert (=> d!1994188 (= c!1156966 e!3860393)))

(declare-fun res!2615840 () Bool)

(assert (=> d!1994188 (=> (not res!2615840) (not e!3860393))))

(assert (=> d!1994188 (= res!2615840 (matchR!8448 (regTwo!33042 (regOne!33042 r!7292)) Nil!64972))))

(assert (=> d!1994188 (validRegex!8001 (regTwo!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994188 (= (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 Nil!64972 s!2326 s!2326) lt!2366321)))

(declare-fun b!6357134 () Bool)

(declare-fun lt!2366319 () Unit!158391)

(declare-fun lt!2366320 () Unit!158391)

(assert (=> b!6357134 (= lt!2366319 lt!2366320)))

(declare-fun ++!14334 (List!65096 List!65096) List!65096)

(assert (=> b!6357134 (= (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2429 (List!65096 C!32800 List!65096 List!65096) Unit!158391)

(assert (=> b!6357134 (= lt!2366320 (lemmaMoveElementToOtherListKeepsConcatEq!2429 Nil!64972 (h!71420 s!2326) (t!378686 s!2326) s!2326))))

(assert (=> b!6357134 (= e!3860391 (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326) s!2326))))

(declare-fun b!6357135 () Bool)

(assert (=> b!6357135 (= e!3860395 (= (++!14334 (_1!36547 (get!22482 lt!2366321)) (_2!36547 (get!22482 lt!2366321))) s!2326))))

(declare-fun b!6357136 () Bool)

(assert (=> b!6357136 (= e!3860394 (Some!16155 (tuple2!66489 Nil!64972 s!2326)))))

(declare-fun b!6357137 () Bool)

(assert (=> b!6357137 (= e!3860392 (not (isDefined!12859 lt!2366321)))))

(assert (= (and d!1994188 res!2615840) b!6357129))

(assert (= (and d!1994188 c!1156966) b!6357136))

(assert (= (and d!1994188 (not c!1156966)) b!6357130))

(assert (= (and b!6357130 c!1156967) b!6357133))

(assert (= (and b!6357130 (not c!1156967)) b!6357134))

(assert (= (and d!1994188 res!2615842) b!6357131))

(assert (= (and b!6357131 res!2615841) b!6357132))

(assert (= (and b!6357132 res!2615843) b!6357135))

(assert (= (and d!1994188 (not res!2615844)) b!6357137))

(declare-fun m!7163226 () Bool)

(assert (=> b!6357137 m!7163226))

(declare-fun m!7163228 () Bool)

(assert (=> b!6357129 m!7163228))

(declare-fun m!7163230 () Bool)

(assert (=> b!6357135 m!7163230))

(declare-fun m!7163232 () Bool)

(assert (=> b!6357135 m!7163232))

(assert (=> b!6357132 m!7163230))

(declare-fun m!7163234 () Bool)

(assert (=> b!6357132 m!7163234))

(assert (=> d!1994188 m!7163226))

(declare-fun m!7163236 () Bool)

(assert (=> d!1994188 m!7163236))

(declare-fun m!7163238 () Bool)

(assert (=> d!1994188 m!7163238))

(assert (=> b!6357131 m!7163230))

(declare-fun m!7163240 () Bool)

(assert (=> b!6357131 m!7163240))

(declare-fun m!7163242 () Bool)

(assert (=> b!6357134 m!7163242))

(assert (=> b!6357134 m!7163242))

(declare-fun m!7163244 () Bool)

(assert (=> b!6357134 m!7163244))

(declare-fun m!7163246 () Bool)

(assert (=> b!6357134 m!7163246))

(assert (=> b!6357134 m!7163242))

(declare-fun m!7163248 () Bool)

(assert (=> b!6357134 m!7163248))

(assert (=> b!6356387 d!1994188))

(declare-fun bs!1592140 () Bool)

(declare-fun d!1994202 () Bool)

(assert (= bs!1592140 (and d!1994202 d!1994060)))

(declare-fun lambda!350079 () Int)

(assert (=> bs!1592140 (= lambda!350079 lambda!350020)))

(declare-fun bs!1592141 () Bool)

(assert (= bs!1592141 (and d!1994202 d!1994068)))

(assert (=> bs!1592141 (= lambda!350079 lambda!350024)))

(declare-fun bs!1592142 () Bool)

(assert (= bs!1592142 (and d!1994202 d!1994168)))

(assert (=> bs!1592142 (= lambda!350079 lambda!350067)))

(declare-fun e!3860398 () Bool)

(assert (=> d!1994202 e!3860398))

(declare-fun res!2615845 () Bool)

(assert (=> d!1994202 (=> (not res!2615845) (not e!3860398))))

(declare-fun lt!2366322 () Regex!16265)

(assert (=> d!1994202 (= res!2615845 (validRegex!8001 lt!2366322))))

(declare-fun e!3860401 () Regex!16265)

(assert (=> d!1994202 (= lt!2366322 e!3860401)))

(declare-fun c!1156971 () Bool)

(declare-fun e!3860396 () Bool)

(assert (=> d!1994202 (= c!1156971 e!3860396)))

(declare-fun res!2615846 () Bool)

(assert (=> d!1994202 (=> (not res!2615846) (not e!3860396))))

(assert (=> d!1994202 (= res!2615846 ((_ is Cons!64970) lt!2366196))))

(assert (=> d!1994202 (forall!15441 lt!2366196 lambda!350079)))

(assert (=> d!1994202 (= (generalisedConcat!1862 lt!2366196) lt!2366322)))

(declare-fun b!6357138 () Bool)

(declare-fun e!3860397 () Bool)

(declare-fun e!3860400 () Bool)

(assert (=> b!6357138 (= e!3860397 e!3860400)))

(declare-fun c!1156968 () Bool)

(assert (=> b!6357138 (= c!1156968 (isEmpty!37069 (tail!12107 lt!2366196)))))

(declare-fun b!6357139 () Bool)

(assert (=> b!6357139 (= e!3860400 (isConcat!1190 lt!2366322))))

(declare-fun b!6357140 () Bool)

(declare-fun e!3860399 () Regex!16265)

(assert (=> b!6357140 (= e!3860401 e!3860399)))

(declare-fun c!1156969 () Bool)

(assert (=> b!6357140 (= c!1156969 ((_ is Cons!64970) lt!2366196))))

(declare-fun b!6357141 () Bool)

(assert (=> b!6357141 (= e!3860399 EmptyExpr!16265)))

(declare-fun b!6357142 () Bool)

(assert (=> b!6357142 (= e!3860399 (Concat!25110 (h!71418 lt!2366196) (generalisedConcat!1862 (t!378684 lt!2366196))))))

(declare-fun b!6357143 () Bool)

(assert (=> b!6357143 (= e!3860396 (isEmpty!37069 (t!378684 lt!2366196)))))

(declare-fun b!6357144 () Bool)

(assert (=> b!6357144 (= e!3860398 e!3860397)))

(declare-fun c!1156970 () Bool)

(assert (=> b!6357144 (= c!1156970 (isEmpty!37069 lt!2366196))))

(declare-fun b!6357145 () Bool)

(assert (=> b!6357145 (= e!3860400 (= lt!2366322 (head!13022 lt!2366196)))))

(declare-fun b!6357146 () Bool)

(assert (=> b!6357146 (= e!3860401 (h!71418 lt!2366196))))

(declare-fun b!6357147 () Bool)

(assert (=> b!6357147 (= e!3860397 (isEmptyExpr!1667 lt!2366322))))

(assert (= (and d!1994202 res!2615846) b!6357143))

(assert (= (and d!1994202 c!1156971) b!6357146))

(assert (= (and d!1994202 (not c!1156971)) b!6357140))

(assert (= (and b!6357140 c!1156969) b!6357142))

(assert (= (and b!6357140 (not c!1156969)) b!6357141))

(assert (= (and d!1994202 res!2615845) b!6357144))

(assert (= (and b!6357144 c!1156970) b!6357147))

(assert (= (and b!6357144 (not c!1156970)) b!6357138))

(assert (= (and b!6357138 c!1156968) b!6357145))

(assert (= (and b!6357138 (not c!1156968)) b!6357139))

(declare-fun m!7163250 () Bool)

(assert (=> b!6357138 m!7163250))

(assert (=> b!6357138 m!7163250))

(declare-fun m!7163252 () Bool)

(assert (=> b!6357138 m!7163252))

(declare-fun m!7163254 () Bool)

(assert (=> d!1994202 m!7163254))

(declare-fun m!7163256 () Bool)

(assert (=> d!1994202 m!7163256))

(declare-fun m!7163258 () Bool)

(assert (=> b!6357145 m!7163258))

(declare-fun m!7163260 () Bool)

(assert (=> b!6357139 m!7163260))

(declare-fun m!7163262 () Bool)

(assert (=> b!6357144 m!7163262))

(declare-fun m!7163264 () Bool)

(assert (=> b!6357142 m!7163264))

(declare-fun m!7163266 () Bool)

(assert (=> b!6357143 m!7163266))

(declare-fun m!7163268 () Bool)

(assert (=> b!6357147 m!7163268))

(assert (=> b!6356387 d!1994202))

(declare-fun d!1994204 () Bool)

(assert (=> d!1994204 (= (matchR!8448 lt!2366170 s!2326) (matchRSpec!3366 lt!2366170 s!2326))))

(declare-fun lt!2366333 () Unit!158391)

(declare-fun choose!47208 (Regex!16265 List!65096) Unit!158391)

(assert (=> d!1994204 (= lt!2366333 (choose!47208 lt!2366170 s!2326))))

(assert (=> d!1994204 (validRegex!8001 lt!2366170)))

(assert (=> d!1994204 (= (mainMatchTheorem!3366 lt!2366170 s!2326) lt!2366333)))

(declare-fun bs!1592143 () Bool)

(assert (= bs!1592143 d!1994204))

(assert (=> bs!1592143 m!7162638))

(assert (=> bs!1592143 m!7162596))

(declare-fun m!7163270 () Bool)

(assert (=> bs!1592143 m!7163270))

(declare-fun m!7163272 () Bool)

(assert (=> bs!1592143 m!7163272))

(assert (=> b!6356387 d!1994204))

(declare-fun d!1994206 () Bool)

(assert (=> d!1994206 (= (Exists!3335 lambda!349999) (choose!47205 lambda!349999))))

(declare-fun bs!1592144 () Bool)

(assert (= bs!1592144 d!1994206))

(declare-fun m!7163274 () Bool)

(assert (=> bs!1592144 m!7163274))

(assert (=> b!6356387 d!1994206))

(declare-fun bs!1592154 () Bool)

(declare-fun d!1994208 () Bool)

(assert (= bs!1592154 (and d!1994208 b!6356395)))

(declare-fun lambda!350096 () Int)

(assert (=> bs!1592154 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350096 lambda!349995))))

(assert (=> bs!1592154 (not (= lambda!350096 lambda!349996))))

(declare-fun bs!1592155 () Bool)

(assert (= bs!1592155 (and d!1994208 b!6356387)))

(assert (=> bs!1592155 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350096 lambda!350000))))

(declare-fun bs!1592156 () Bool)

(assert (= bs!1592156 (and d!1994208 b!6357057)))

(assert (=> bs!1592156 (not (= lambda!350096 lambda!350078))))

(assert (=> bs!1592155 (not (= lambda!350096 lambda!350001))))

(declare-fun bs!1592157 () Bool)

(assert (= bs!1592157 (and d!1994208 b!6357049)))

(assert (=> bs!1592157 (not (= lambda!350096 lambda!350077))))

(assert (=> bs!1592155 (= lambda!350096 lambda!349998)))

(assert (=> bs!1592155 (not (= lambda!350096 lambda!349999))))

(declare-fun bs!1592158 () Bool)

(assert (= bs!1592158 (and d!1994208 d!1994166)))

(assert (=> bs!1592158 (= lambda!350096 lambda!350061)))

(assert (=> d!1994208 true))

(assert (=> d!1994208 true))

(assert (=> d!1994208 true))

(declare-fun lambda!350097 () Int)

(assert (=> bs!1592154 (not (= lambda!350097 lambda!349995))))

(assert (=> bs!1592154 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350097 lambda!349996))))

(assert (=> bs!1592156 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 lt!2366179)) (= lt!2366179 (regTwo!33042 lt!2366179))) (= lambda!350097 lambda!350078))))

(assert (=> bs!1592155 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350097 lambda!350001))))

(assert (=> bs!1592157 (not (= lambda!350097 lambda!350077))))

(assert (=> bs!1592155 (not (= lambda!350097 lambda!349998))))

(assert (=> bs!1592155 (= lambda!350097 lambda!349999)))

(assert (=> bs!1592158 (not (= lambda!350097 lambda!350061))))

(declare-fun bs!1592159 () Bool)

(assert (= bs!1592159 d!1994208))

(assert (=> bs!1592159 (not (= lambda!350097 lambda!350096))))

(assert (=> bs!1592155 (not (= lambda!350097 lambda!350000))))

(assert (=> d!1994208 true))

(assert (=> d!1994208 true))

(assert (=> d!1994208 true))

(assert (=> d!1994208 (= (Exists!3335 lambda!350096) (Exists!3335 lambda!350097))))

(declare-fun lt!2366345 () Unit!158391)

(declare-fun choose!47209 (Regex!16265 Regex!16265 List!65096) Unit!158391)

(assert (=> d!1994208 (= lt!2366345 (choose!47209 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 s!2326))))

(assert (=> d!1994208 (validRegex!8001 (regOne!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994208 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1872 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 s!2326) lt!2366345)))

(declare-fun m!7163340 () Bool)

(assert (=> bs!1592159 m!7163340))

(declare-fun m!7163342 () Bool)

(assert (=> bs!1592159 m!7163342))

(declare-fun m!7163344 () Bool)

(assert (=> bs!1592159 m!7163344))

(assert (=> bs!1592159 m!7163132))

(assert (=> b!6356387 d!1994208))

(declare-fun d!1994230 () Bool)

(assert (=> d!1994230 (= (Exists!3335 lambda!349998) (choose!47205 lambda!349998))))

(declare-fun bs!1592162 () Bool)

(assert (= bs!1592162 d!1994230))

(declare-fun m!7163346 () Bool)

(assert (=> bs!1592162 m!7163346))

(assert (=> b!6356387 d!1994230))

(declare-fun d!1994232 () Bool)

(declare-fun isEmpty!37074 (Option!16156) Bool)

(assert (=> d!1994232 (= (isDefined!12859 (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 Nil!64972 s!2326 s!2326)) (not (isEmpty!37074 (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 Nil!64972 s!2326 s!2326))))))

(declare-fun bs!1592163 () Bool)

(assert (= bs!1592163 d!1994232))

(assert (=> bs!1592163 m!7162606))

(declare-fun m!7163348 () Bool)

(assert (=> bs!1592163 m!7163348))

(assert (=> b!6356387 d!1994232))

(declare-fun bs!1592164 () Bool)

(declare-fun b!6357250 () Bool)

(assert (= bs!1592164 (and b!6357250 b!6356395)))

(declare-fun lambda!350098 () Int)

(assert (=> bs!1592164 (not (= lambda!350098 lambda!349995))))

(assert (=> bs!1592164 (not (= lambda!350098 lambda!349996))))

(declare-fun bs!1592165 () Bool)

(assert (= bs!1592165 (and b!6357250 b!6357057)))

(assert (=> bs!1592165 (not (= lambda!350098 lambda!350078))))

(declare-fun bs!1592166 () Bool)

(assert (= bs!1592166 (and b!6357250 b!6356387)))

(assert (=> bs!1592166 (not (= lambda!350098 lambda!350001))))

(declare-fun bs!1592167 () Bool)

(assert (= bs!1592167 (and b!6357250 b!6357049)))

(assert (=> bs!1592167 (= (and (= (reg!16594 lt!2366170) (reg!16594 lt!2366179)) (= lt!2366170 lt!2366179)) (= lambda!350098 lambda!350077))))

(assert (=> bs!1592166 (not (= lambda!350098 lambda!349998))))

(assert (=> bs!1592166 (not (= lambda!350098 lambda!349999))))

(declare-fun bs!1592168 () Bool)

(assert (= bs!1592168 (and b!6357250 d!1994166)))

(assert (=> bs!1592168 (not (= lambda!350098 lambda!350061))))

(declare-fun bs!1592169 () Bool)

(assert (= bs!1592169 (and b!6357250 d!1994208)))

(assert (=> bs!1592169 (not (= lambda!350098 lambda!350097))))

(assert (=> bs!1592169 (not (= lambda!350098 lambda!350096))))

(assert (=> bs!1592166 (not (= lambda!350098 lambda!350000))))

(assert (=> b!6357250 true))

(assert (=> b!6357250 true))

(declare-fun bs!1592170 () Bool)

(declare-fun b!6357258 () Bool)

(assert (= bs!1592170 (and b!6357258 b!6356395)))

(declare-fun lambda!350099 () Int)

(assert (=> bs!1592170 (not (= lambda!350099 lambda!349995))))

(assert (=> bs!1592170 (= (and (= (regOne!33042 lt!2366170) (regOne!33042 r!7292)) (= (regTwo!33042 lt!2366170) (regTwo!33042 r!7292))) (= lambda!350099 lambda!349996))))

(declare-fun bs!1592171 () Bool)

(assert (= bs!1592171 (and b!6357258 b!6357057)))

(assert (=> bs!1592171 (= (and (= (regOne!33042 lt!2366170) (regOne!33042 lt!2366179)) (= (regTwo!33042 lt!2366170) (regTwo!33042 lt!2366179))) (= lambda!350099 lambda!350078))))

(declare-fun bs!1592172 () Bool)

(assert (= bs!1592172 (and b!6357258 b!6356387)))

(assert (=> bs!1592172 (= (and (= (regOne!33042 lt!2366170) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 lt!2366170) lt!2366173)) (= lambda!350099 lambda!350001))))

(declare-fun bs!1592173 () Bool)

(assert (= bs!1592173 (and b!6357258 b!6357049)))

(assert (=> bs!1592173 (not (= lambda!350099 lambda!350077))))

(assert (=> bs!1592172 (not (= lambda!350099 lambda!349998))))

(declare-fun bs!1592174 () Bool)

(assert (= bs!1592174 (and b!6357258 b!6357250)))

(assert (=> bs!1592174 (not (= lambda!350099 lambda!350098))))

(assert (=> bs!1592172 (= (and (= (regOne!33042 lt!2366170) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 lt!2366170) lt!2366179)) (= lambda!350099 lambda!349999))))

(declare-fun bs!1592175 () Bool)

(assert (= bs!1592175 (and b!6357258 d!1994166)))

(assert (=> bs!1592175 (not (= lambda!350099 lambda!350061))))

(declare-fun bs!1592176 () Bool)

(assert (= bs!1592176 (and b!6357258 d!1994208)))

(assert (=> bs!1592176 (= (and (= (regOne!33042 lt!2366170) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 lt!2366170) lt!2366179)) (= lambda!350099 lambda!350097))))

(assert (=> bs!1592176 (not (= lambda!350099 lambda!350096))))

(assert (=> bs!1592172 (not (= lambda!350099 lambda!350000))))

(assert (=> b!6357258 true))

(assert (=> b!6357258 true))

(declare-fun e!3860454 () Bool)

(declare-fun call!542147 () Bool)

(assert (=> b!6357250 (= e!3860454 call!542147)))

(declare-fun bm!542141 () Bool)

(declare-fun call!542146 () Bool)

(assert (=> bm!542141 (= call!542146 (isEmpty!37073 s!2326))))

(declare-fun b!6357251 () Bool)

(declare-fun e!3860455 () Bool)

(assert (=> b!6357251 (= e!3860455 call!542146)))

(declare-fun b!6357252 () Bool)

(declare-fun e!3860457 () Bool)

(assert (=> b!6357252 (= e!3860457 (= s!2326 (Cons!64972 (c!1156730 lt!2366170) Nil!64972)))))

(declare-fun b!6357253 () Bool)

(declare-fun e!3860458 () Bool)

(assert (=> b!6357253 (= e!3860458 (matchRSpec!3366 (regTwo!33043 lt!2366170) s!2326))))

(declare-fun b!6357254 () Bool)

(declare-fun res!2615864 () Bool)

(assert (=> b!6357254 (=> res!2615864 e!3860454)))

(assert (=> b!6357254 (= res!2615864 call!542146)))

(declare-fun e!3860452 () Bool)

(assert (=> b!6357254 (= e!3860452 e!3860454)))

(declare-fun bm!542142 () Bool)

(declare-fun c!1156993 () Bool)

(assert (=> bm!542142 (= call!542147 (Exists!3335 (ite c!1156993 lambda!350098 lambda!350099)))))

(declare-fun b!6357255 () Bool)

(declare-fun e!3860453 () Bool)

(assert (=> b!6357255 (= e!3860453 e!3860452)))

(assert (=> b!6357255 (= c!1156993 ((_ is Star!16265) lt!2366170))))

(declare-fun d!1994234 () Bool)

(declare-fun c!1156996 () Bool)

(assert (=> d!1994234 (= c!1156996 ((_ is EmptyExpr!16265) lt!2366170))))

(assert (=> d!1994234 (= (matchRSpec!3366 lt!2366170 s!2326) e!3860455)))

(declare-fun b!6357256 () Bool)

(declare-fun c!1156995 () Bool)

(assert (=> b!6357256 (= c!1156995 ((_ is ElementMatch!16265) lt!2366170))))

(declare-fun e!3860456 () Bool)

(assert (=> b!6357256 (= e!3860456 e!3860457)))

(declare-fun b!6357257 () Bool)

(declare-fun c!1156994 () Bool)

(assert (=> b!6357257 (= c!1156994 ((_ is Union!16265) lt!2366170))))

(assert (=> b!6357257 (= e!3860457 e!3860453)))

(assert (=> b!6357258 (= e!3860452 call!542147)))

(declare-fun b!6357259 () Bool)

(assert (=> b!6357259 (= e!3860453 e!3860458)))

(declare-fun res!2615863 () Bool)

(assert (=> b!6357259 (= res!2615863 (matchRSpec!3366 (regOne!33043 lt!2366170) s!2326))))

(assert (=> b!6357259 (=> res!2615863 e!3860458)))

(declare-fun b!6357260 () Bool)

(assert (=> b!6357260 (= e!3860455 e!3860456)))

(declare-fun res!2615865 () Bool)

(assert (=> b!6357260 (= res!2615865 (not ((_ is EmptyLang!16265) lt!2366170)))))

(assert (=> b!6357260 (=> (not res!2615865) (not e!3860456))))

(assert (= (and d!1994234 c!1156996) b!6357251))

(assert (= (and d!1994234 (not c!1156996)) b!6357260))

(assert (= (and b!6357260 res!2615865) b!6357256))

(assert (= (and b!6357256 c!1156995) b!6357252))

(assert (= (and b!6357256 (not c!1156995)) b!6357257))

(assert (= (and b!6357257 c!1156994) b!6357259))

(assert (= (and b!6357257 (not c!1156994)) b!6357255))

(assert (= (and b!6357259 (not res!2615863)) b!6357253))

(assert (= (and b!6357255 c!1156993) b!6357254))

(assert (= (and b!6357255 (not c!1156993)) b!6357258))

(assert (= (and b!6357254 (not res!2615864)) b!6357250))

(assert (= (or b!6357250 b!6357258) bm!542142))

(assert (= (or b!6357251 b!6357254) bm!542141))

(assert (=> bm!542141 m!7163190))

(declare-fun m!7163350 () Bool)

(assert (=> b!6357253 m!7163350))

(declare-fun m!7163352 () Bool)

(assert (=> bm!542142 m!7163352))

(declare-fun m!7163354 () Bool)

(assert (=> b!6357259 m!7163354))

(assert (=> b!6356387 d!1994234))

(declare-fun b!6357289 () Bool)

(declare-fun e!3860479 () Bool)

(declare-fun head!13023 (List!65096) C!32800)

(assert (=> b!6357289 (= e!3860479 (not (= (head!13023 s!2326) (c!1156730 lt!2366170))))))

(declare-fun b!6357290 () Bool)

(declare-fun res!2615886 () Bool)

(declare-fun e!3860478 () Bool)

(assert (=> b!6357290 (=> (not res!2615886) (not e!3860478))))

(declare-fun call!542150 () Bool)

(assert (=> b!6357290 (= res!2615886 (not call!542150))))

(declare-fun b!6357291 () Bool)

(declare-fun e!3860476 () Bool)

(declare-fun lt!2366348 () Bool)

(assert (=> b!6357291 (= e!3860476 (= lt!2366348 call!542150))))

(declare-fun bm!542145 () Bool)

(assert (=> bm!542145 (= call!542150 (isEmpty!37073 s!2326))))

(declare-fun b!6357292 () Bool)

(declare-fun e!3860475 () Bool)

(declare-fun e!3860473 () Bool)

(assert (=> b!6357292 (= e!3860475 e!3860473)))

(declare-fun res!2615885 () Bool)

(assert (=> b!6357292 (=> (not res!2615885) (not e!3860473))))

(assert (=> b!6357292 (= res!2615885 (not lt!2366348))))

(declare-fun b!6357293 () Bool)

(assert (=> b!6357293 (= e!3860478 (= (head!13023 s!2326) (c!1156730 lt!2366170)))))

(declare-fun b!6357294 () Bool)

(declare-fun e!3860474 () Bool)

(assert (=> b!6357294 (= e!3860474 (not lt!2366348))))

(declare-fun b!6357295 () Bool)

(assert (=> b!6357295 (= e!3860473 e!3860479)))

(declare-fun res!2615887 () Bool)

(assert (=> b!6357295 (=> res!2615887 e!3860479)))

(assert (=> b!6357295 (= res!2615887 call!542150)))

(declare-fun b!6357296 () Bool)

(assert (=> b!6357296 (= e!3860476 e!3860474)))

(declare-fun c!1157003 () Bool)

(assert (=> b!6357296 (= c!1157003 ((_ is EmptyLang!16265) lt!2366170))))

(declare-fun b!6357297 () Bool)

(declare-fun e!3860477 () Bool)

(assert (=> b!6357297 (= e!3860477 (nullable!6258 lt!2366170))))

(declare-fun b!6357298 () Bool)

(declare-fun res!2615889 () Bool)

(assert (=> b!6357298 (=> res!2615889 e!3860475)))

(assert (=> b!6357298 (= res!2615889 (not ((_ is ElementMatch!16265) lt!2366170)))))

(assert (=> b!6357298 (= e!3860474 e!3860475)))

(declare-fun b!6357299 () Bool)

(declare-fun res!2615884 () Bool)

(assert (=> b!6357299 (=> res!2615884 e!3860479)))

(declare-fun tail!12108 (List!65096) List!65096)

(assert (=> b!6357299 (= res!2615884 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6357301 () Bool)

(declare-fun res!2615882 () Bool)

(assert (=> b!6357301 (=> res!2615882 e!3860475)))

(assert (=> b!6357301 (= res!2615882 e!3860478)))

(declare-fun res!2615888 () Bool)

(assert (=> b!6357301 (=> (not res!2615888) (not e!3860478))))

(assert (=> b!6357301 (= res!2615888 lt!2366348)))

(declare-fun b!6357302 () Bool)

(declare-fun res!2615883 () Bool)

(assert (=> b!6357302 (=> (not res!2615883) (not e!3860478))))

(assert (=> b!6357302 (= res!2615883 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994236 () Bool)

(assert (=> d!1994236 e!3860476))

(declare-fun c!1157005 () Bool)

(assert (=> d!1994236 (= c!1157005 ((_ is EmptyExpr!16265) lt!2366170))))

(assert (=> d!1994236 (= lt!2366348 e!3860477)))

(declare-fun c!1157004 () Bool)

(assert (=> d!1994236 (= c!1157004 (isEmpty!37073 s!2326))))

(assert (=> d!1994236 (validRegex!8001 lt!2366170)))

(assert (=> d!1994236 (= (matchR!8448 lt!2366170 s!2326) lt!2366348)))

(declare-fun b!6357300 () Bool)

(declare-fun derivativeStep!4970 (Regex!16265 C!32800) Regex!16265)

(assert (=> b!6357300 (= e!3860477 (matchR!8448 (derivativeStep!4970 lt!2366170 (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994236 c!1157004) b!6357297))

(assert (= (and d!1994236 (not c!1157004)) b!6357300))

(assert (= (and d!1994236 c!1157005) b!6357291))

(assert (= (and d!1994236 (not c!1157005)) b!6357296))

(assert (= (and b!6357296 c!1157003) b!6357294))

(assert (= (and b!6357296 (not c!1157003)) b!6357298))

(assert (= (and b!6357298 (not res!2615889)) b!6357301))

(assert (= (and b!6357301 res!2615888) b!6357290))

(assert (= (and b!6357290 res!2615886) b!6357302))

(assert (= (and b!6357302 res!2615883) b!6357293))

(assert (= (and b!6357301 (not res!2615882)) b!6357292))

(assert (= (and b!6357292 res!2615885) b!6357295))

(assert (= (and b!6357295 (not res!2615887)) b!6357299))

(assert (= (and b!6357299 (not res!2615884)) b!6357289))

(assert (= (or b!6357291 b!6357290 b!6357295) bm!542145))

(declare-fun m!7163356 () Bool)

(assert (=> b!6357299 m!7163356))

(assert (=> b!6357299 m!7163356))

(declare-fun m!7163358 () Bool)

(assert (=> b!6357299 m!7163358))

(declare-fun m!7163360 () Bool)

(assert (=> b!6357300 m!7163360))

(assert (=> b!6357300 m!7163360))

(declare-fun m!7163362 () Bool)

(assert (=> b!6357300 m!7163362))

(assert (=> b!6357300 m!7163356))

(assert (=> b!6357300 m!7163362))

(assert (=> b!6357300 m!7163356))

(declare-fun m!7163364 () Bool)

(assert (=> b!6357300 m!7163364))

(assert (=> b!6357302 m!7163356))

(assert (=> b!6357302 m!7163356))

(assert (=> b!6357302 m!7163358))

(assert (=> b!6357293 m!7163360))

(declare-fun m!7163366 () Bool)

(assert (=> b!6357297 m!7163366))

(assert (=> d!1994236 m!7163190))

(assert (=> d!1994236 m!7163272))

(assert (=> bm!542145 m!7163190))

(assert (=> b!6357289 m!7163360))

(assert (=> b!6356387 d!1994236))

(declare-fun d!1994238 () Bool)

(assert (=> d!1994238 (= (Exists!3335 lambda!350000) (choose!47205 lambda!350000))))

(declare-fun bs!1592177 () Bool)

(assert (= bs!1592177 d!1994238))

(declare-fun m!7163368 () Bool)

(assert (=> bs!1592177 m!7163368))

(assert (=> b!6356387 d!1994238))

(declare-fun bs!1592178 () Bool)

(declare-fun d!1994240 () Bool)

(assert (= bs!1592178 (and d!1994240 d!1994060)))

(declare-fun lambda!350100 () Int)

(assert (=> bs!1592178 (= lambda!350100 lambda!350020)))

(declare-fun bs!1592179 () Bool)

(assert (= bs!1592179 (and d!1994240 d!1994068)))

(assert (=> bs!1592179 (= lambda!350100 lambda!350024)))

(declare-fun bs!1592180 () Bool)

(assert (= bs!1592180 (and d!1994240 d!1994168)))

(assert (=> bs!1592180 (= lambda!350100 lambda!350067)))

(declare-fun bs!1592181 () Bool)

(assert (= bs!1592181 (and d!1994240 d!1994202)))

(assert (=> bs!1592181 (= lambda!350100 lambda!350079)))

(declare-fun e!3860482 () Bool)

(assert (=> d!1994240 e!3860482))

(declare-fun res!2615890 () Bool)

(assert (=> d!1994240 (=> (not res!2615890) (not e!3860482))))

(declare-fun lt!2366349 () Regex!16265)

(assert (=> d!1994240 (= res!2615890 (validRegex!8001 lt!2366349))))

(declare-fun e!3860485 () Regex!16265)

(assert (=> d!1994240 (= lt!2366349 e!3860485)))

(declare-fun c!1157009 () Bool)

(declare-fun e!3860480 () Bool)

(assert (=> d!1994240 (= c!1157009 e!3860480)))

(declare-fun res!2615891 () Bool)

(assert (=> d!1994240 (=> (not res!2615891) (not e!3860480))))

(assert (=> d!1994240 (= res!2615891 ((_ is Cons!64970) (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> d!1994240 (forall!15441 (t!378684 (exprs!6149 (h!71419 zl!343))) lambda!350100)))

(assert (=> d!1994240 (= (generalisedConcat!1862 (t!378684 (exprs!6149 (h!71419 zl!343)))) lt!2366349)))

(declare-fun b!6357303 () Bool)

(declare-fun e!3860481 () Bool)

(declare-fun e!3860484 () Bool)

(assert (=> b!6357303 (= e!3860481 e!3860484)))

(declare-fun c!1157006 () Bool)

(assert (=> b!6357303 (= c!1157006 (isEmpty!37069 (tail!12107 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun b!6357304 () Bool)

(assert (=> b!6357304 (= e!3860484 (isConcat!1190 lt!2366349))))

(declare-fun b!6357305 () Bool)

(declare-fun e!3860483 () Regex!16265)

(assert (=> b!6357305 (= e!3860485 e!3860483)))

(declare-fun c!1157007 () Bool)

(assert (=> b!6357305 (= c!1157007 ((_ is Cons!64970) (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6357306 () Bool)

(assert (=> b!6357306 (= e!3860483 EmptyExpr!16265)))

(declare-fun b!6357307 () Bool)

(assert (=> b!6357307 (= e!3860483 (Concat!25110 (h!71418 (t!378684 (exprs!6149 (h!71419 zl!343)))) (generalisedConcat!1862 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun b!6357308 () Bool)

(assert (=> b!6357308 (= e!3860480 (isEmpty!37069 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun b!6357309 () Bool)

(assert (=> b!6357309 (= e!3860482 e!3860481)))

(declare-fun c!1157008 () Bool)

(assert (=> b!6357309 (= c!1157008 (isEmpty!37069 (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6357310 () Bool)

(assert (=> b!6357310 (= e!3860484 (= lt!2366349 (head!13022 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun b!6357311 () Bool)

(assert (=> b!6357311 (= e!3860485 (h!71418 (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6357312 () Bool)

(assert (=> b!6357312 (= e!3860481 (isEmptyExpr!1667 lt!2366349))))

(assert (= (and d!1994240 res!2615891) b!6357308))

(assert (= (and d!1994240 c!1157009) b!6357311))

(assert (= (and d!1994240 (not c!1157009)) b!6357305))

(assert (= (and b!6357305 c!1157007) b!6357307))

(assert (= (and b!6357305 (not c!1157007)) b!6357306))

(assert (= (and d!1994240 res!2615890) b!6357309))

(assert (= (and b!6357309 c!1157008) b!6357312))

(assert (= (and b!6357309 (not c!1157008)) b!6357303))

(assert (= (and b!6357303 c!1157006) b!6357310))

(assert (= (and b!6357303 (not c!1157006)) b!6357304))

(declare-fun m!7163370 () Bool)

(assert (=> b!6357303 m!7163370))

(assert (=> b!6357303 m!7163370))

(declare-fun m!7163372 () Bool)

(assert (=> b!6357303 m!7163372))

(declare-fun m!7163374 () Bool)

(assert (=> d!1994240 m!7163374))

(declare-fun m!7163376 () Bool)

(assert (=> d!1994240 m!7163376))

(declare-fun m!7163378 () Bool)

(assert (=> b!6357310 m!7163378))

(declare-fun m!7163380 () Bool)

(assert (=> b!6357304 m!7163380))

(assert (=> b!6357309 m!7162582))

(declare-fun m!7163382 () Bool)

(assert (=> b!6357307 m!7163382))

(declare-fun m!7163384 () Bool)

(assert (=> b!6357308 m!7163384))

(declare-fun m!7163386 () Bool)

(assert (=> b!6357312 m!7163386))

(assert (=> b!6356387 d!1994240))

(declare-fun bs!1592182 () Bool)

(declare-fun d!1994242 () Bool)

(assert (= bs!1592182 (and d!1994242 b!6356395)))

(declare-fun lambda!350101 () Int)

(assert (=> bs!1592182 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350101 lambda!349995))))

(assert (=> bs!1592182 (not (= lambda!350101 lambda!349996))))

(declare-fun bs!1592183 () Bool)

(assert (= bs!1592183 (and d!1994242 b!6357057)))

(assert (=> bs!1592183 (not (= lambda!350101 lambda!350078))))

(declare-fun bs!1592184 () Bool)

(assert (= bs!1592184 (and d!1994242 b!6356387)))

(assert (=> bs!1592184 (not (= lambda!350101 lambda!350001))))

(declare-fun bs!1592185 () Bool)

(assert (= bs!1592185 (and d!1994242 b!6357258)))

(assert (=> bs!1592185 (not (= lambda!350101 lambda!350099))))

(declare-fun bs!1592186 () Bool)

(assert (= bs!1592186 (and d!1994242 b!6357049)))

(assert (=> bs!1592186 (not (= lambda!350101 lambda!350077))))

(assert (=> bs!1592184 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350101 lambda!349998))))

(declare-fun bs!1592187 () Bool)

(assert (= bs!1592187 (and d!1994242 b!6357250)))

(assert (=> bs!1592187 (not (= lambda!350101 lambda!350098))))

(assert (=> bs!1592184 (not (= lambda!350101 lambda!349999))))

(declare-fun bs!1592188 () Bool)

(assert (= bs!1592188 (and d!1994242 d!1994166)))

(assert (=> bs!1592188 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350101 lambda!350061))))

(declare-fun bs!1592189 () Bool)

(assert (= bs!1592189 (and d!1994242 d!1994208)))

(assert (=> bs!1592189 (not (= lambda!350101 lambda!350097))))

(assert (=> bs!1592189 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350101 lambda!350096))))

(assert (=> bs!1592184 (= lambda!350101 lambda!350000)))

(assert (=> d!1994242 true))

(assert (=> d!1994242 true))

(assert (=> d!1994242 true))

(assert (=> d!1994242 (= (isDefined!12859 (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 Nil!64972 s!2326 s!2326)) (Exists!3335 lambda!350101))))

(declare-fun lt!2366350 () Unit!158391)

(assert (=> d!1994242 (= lt!2366350 (choose!47206 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326))))

(assert (=> d!1994242 (validRegex!8001 (regTwo!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994242 (= (lemmaFindConcatSeparationEquivalentToExists!2334 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326) lt!2366350)))

(declare-fun bs!1592190 () Bool)

(assert (= bs!1592190 d!1994242))

(declare-fun m!7163388 () Bool)

(assert (=> bs!1592190 m!7163388))

(assert (=> bs!1592190 m!7162598))

(assert (=> bs!1592190 m!7162622))

(declare-fun m!7163390 () Bool)

(assert (=> bs!1592190 m!7163390))

(assert (=> bs!1592190 m!7163238))

(assert (=> bs!1592190 m!7162598))

(assert (=> b!6356387 d!1994242))

(declare-fun d!1994244 () Bool)

(declare-fun c!1157012 () Bool)

(assert (=> d!1994244 (= c!1157012 (isEmpty!37073 s!2326))))

(declare-fun e!3860488 () Bool)

(assert (=> d!1994244 (= (matchZipper!2277 z!1189 s!2326) e!3860488)))

(declare-fun b!6357317 () Bool)

(declare-fun nullableZipper!2031 ((InoxSet Context!11298)) Bool)

(assert (=> b!6357317 (= e!3860488 (nullableZipper!2031 z!1189))))

(declare-fun b!6357318 () Bool)

(assert (=> b!6357318 (= e!3860488 (matchZipper!2277 (derivationStepZipper!2231 z!1189 (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994244 c!1157012) b!6357317))

(assert (= (and d!1994244 (not c!1157012)) b!6357318))

(assert (=> d!1994244 m!7163190))

(declare-fun m!7163392 () Bool)

(assert (=> b!6357317 m!7163392))

(assert (=> b!6357318 m!7163360))

(assert (=> b!6357318 m!7163360))

(declare-fun m!7163394 () Bool)

(assert (=> b!6357318 m!7163394))

(assert (=> b!6357318 m!7163356))

(assert (=> b!6357318 m!7163394))

(assert (=> b!6357318 m!7163356))

(declare-fun m!7163396 () Bool)

(assert (=> b!6357318 m!7163396))

(assert (=> b!6356387 d!1994244))

(declare-fun d!1994246 () Bool)

(assert (=> d!1994246 (= (matchR!8448 lt!2366179 s!2326) (matchRSpec!3366 lt!2366179 s!2326))))

(declare-fun lt!2366351 () Unit!158391)

(assert (=> d!1994246 (= lt!2366351 (choose!47208 lt!2366179 s!2326))))

(assert (=> d!1994246 (validRegex!8001 lt!2366179)))

(assert (=> d!1994246 (= (mainMatchTheorem!3366 lt!2366179 s!2326) lt!2366351)))

(declare-fun bs!1592191 () Bool)

(assert (= bs!1592191 d!1994246))

(assert (=> bs!1592191 m!7162628))

(assert (=> bs!1592191 m!7162626))

(declare-fun m!7163398 () Bool)

(assert (=> bs!1592191 m!7163398))

(declare-fun m!7163400 () Bool)

(assert (=> bs!1592191 m!7163400))

(assert (=> b!6356387 d!1994246))

(declare-fun b!6357319 () Bool)

(declare-fun e!3860495 () Bool)

(assert (=> b!6357319 (= e!3860495 (not (= (head!13023 s!2326) (c!1156730 lt!2366179))))))

(declare-fun b!6357320 () Bool)

(declare-fun res!2615896 () Bool)

(declare-fun e!3860494 () Bool)

(assert (=> b!6357320 (=> (not res!2615896) (not e!3860494))))

(declare-fun call!542151 () Bool)

(assert (=> b!6357320 (= res!2615896 (not call!542151))))

(declare-fun b!6357321 () Bool)

(declare-fun e!3860492 () Bool)

(declare-fun lt!2366352 () Bool)

(assert (=> b!6357321 (= e!3860492 (= lt!2366352 call!542151))))

(declare-fun bm!542146 () Bool)

(assert (=> bm!542146 (= call!542151 (isEmpty!37073 s!2326))))

(declare-fun b!6357322 () Bool)

(declare-fun e!3860491 () Bool)

(declare-fun e!3860489 () Bool)

(assert (=> b!6357322 (= e!3860491 e!3860489)))

(declare-fun res!2615895 () Bool)

(assert (=> b!6357322 (=> (not res!2615895) (not e!3860489))))

(assert (=> b!6357322 (= res!2615895 (not lt!2366352))))

(declare-fun b!6357323 () Bool)

(assert (=> b!6357323 (= e!3860494 (= (head!13023 s!2326) (c!1156730 lt!2366179)))))

(declare-fun b!6357324 () Bool)

(declare-fun e!3860490 () Bool)

(assert (=> b!6357324 (= e!3860490 (not lt!2366352))))

(declare-fun b!6357325 () Bool)

(assert (=> b!6357325 (= e!3860489 e!3860495)))

(declare-fun res!2615897 () Bool)

(assert (=> b!6357325 (=> res!2615897 e!3860495)))

(assert (=> b!6357325 (= res!2615897 call!542151)))

(declare-fun b!6357326 () Bool)

(assert (=> b!6357326 (= e!3860492 e!3860490)))

(declare-fun c!1157013 () Bool)

(assert (=> b!6357326 (= c!1157013 ((_ is EmptyLang!16265) lt!2366179))))

(declare-fun b!6357327 () Bool)

(declare-fun e!3860493 () Bool)

(assert (=> b!6357327 (= e!3860493 (nullable!6258 lt!2366179))))

(declare-fun b!6357328 () Bool)

(declare-fun res!2615899 () Bool)

(assert (=> b!6357328 (=> res!2615899 e!3860491)))

(assert (=> b!6357328 (= res!2615899 (not ((_ is ElementMatch!16265) lt!2366179)))))

(assert (=> b!6357328 (= e!3860490 e!3860491)))

(declare-fun b!6357329 () Bool)

(declare-fun res!2615894 () Bool)

(assert (=> b!6357329 (=> res!2615894 e!3860495)))

(assert (=> b!6357329 (= res!2615894 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6357331 () Bool)

(declare-fun res!2615892 () Bool)

(assert (=> b!6357331 (=> res!2615892 e!3860491)))

(assert (=> b!6357331 (= res!2615892 e!3860494)))

(declare-fun res!2615898 () Bool)

(assert (=> b!6357331 (=> (not res!2615898) (not e!3860494))))

(assert (=> b!6357331 (= res!2615898 lt!2366352)))

(declare-fun b!6357332 () Bool)

(declare-fun res!2615893 () Bool)

(assert (=> b!6357332 (=> (not res!2615893) (not e!3860494))))

(assert (=> b!6357332 (= res!2615893 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994248 () Bool)

(assert (=> d!1994248 e!3860492))

(declare-fun c!1157015 () Bool)

(assert (=> d!1994248 (= c!1157015 ((_ is EmptyExpr!16265) lt!2366179))))

(assert (=> d!1994248 (= lt!2366352 e!3860493)))

(declare-fun c!1157014 () Bool)

(assert (=> d!1994248 (= c!1157014 (isEmpty!37073 s!2326))))

(assert (=> d!1994248 (validRegex!8001 lt!2366179)))

(assert (=> d!1994248 (= (matchR!8448 lt!2366179 s!2326) lt!2366352)))

(declare-fun b!6357330 () Bool)

(assert (=> b!6357330 (= e!3860493 (matchR!8448 (derivativeStep!4970 lt!2366179 (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994248 c!1157014) b!6357327))

(assert (= (and d!1994248 (not c!1157014)) b!6357330))

(assert (= (and d!1994248 c!1157015) b!6357321))

(assert (= (and d!1994248 (not c!1157015)) b!6357326))

(assert (= (and b!6357326 c!1157013) b!6357324))

(assert (= (and b!6357326 (not c!1157013)) b!6357328))

(assert (= (and b!6357328 (not res!2615899)) b!6357331))

(assert (= (and b!6357331 res!2615898) b!6357320))

(assert (= (and b!6357320 res!2615896) b!6357332))

(assert (= (and b!6357332 res!2615893) b!6357323))

(assert (= (and b!6357331 (not res!2615892)) b!6357322))

(assert (= (and b!6357322 res!2615895) b!6357325))

(assert (= (and b!6357325 (not res!2615897)) b!6357329))

(assert (= (and b!6357329 (not res!2615894)) b!6357319))

(assert (= (or b!6357321 b!6357320 b!6357325) bm!542146))

(assert (=> b!6357329 m!7163356))

(assert (=> b!6357329 m!7163356))

(assert (=> b!6357329 m!7163358))

(assert (=> b!6357330 m!7163360))

(assert (=> b!6357330 m!7163360))

(declare-fun m!7163402 () Bool)

(assert (=> b!6357330 m!7163402))

(assert (=> b!6357330 m!7163356))

(assert (=> b!6357330 m!7163402))

(assert (=> b!6357330 m!7163356))

(declare-fun m!7163404 () Bool)

(assert (=> b!6357330 m!7163404))

(assert (=> b!6357332 m!7163356))

(assert (=> b!6357332 m!7163356))

(assert (=> b!6357332 m!7163358))

(assert (=> b!6357323 m!7163360))

(declare-fun m!7163406 () Bool)

(assert (=> b!6357327 m!7163406))

(assert (=> d!1994248 m!7163190))

(assert (=> d!1994248 m!7163400))

(assert (=> bm!542146 m!7163190))

(assert (=> b!6357319 m!7163360))

(assert (=> b!6356387 d!1994248))

(declare-fun b!6357333 () Bool)

(declare-fun e!3860498 () Bool)

(assert (=> b!6357333 (= e!3860498 (matchR!8448 lt!2366179 s!2326))))

(declare-fun b!6357334 () Bool)

(declare-fun e!3860499 () Option!16156)

(declare-fun e!3860496 () Option!16156)

(assert (=> b!6357334 (= e!3860499 e!3860496)))

(declare-fun c!1157017 () Bool)

(assert (=> b!6357334 (= c!1157017 ((_ is Nil!64972) s!2326))))

(declare-fun b!6357335 () Bool)

(declare-fun res!2615901 () Bool)

(declare-fun e!3860500 () Bool)

(assert (=> b!6357335 (=> (not res!2615901) (not e!3860500))))

(declare-fun lt!2366355 () Option!16156)

(assert (=> b!6357335 (= res!2615901 (matchR!8448 (regOne!33042 (regOne!33042 r!7292)) (_1!36547 (get!22482 lt!2366355))))))

(declare-fun b!6357336 () Bool)

(declare-fun res!2615903 () Bool)

(assert (=> b!6357336 (=> (not res!2615903) (not e!3860500))))

(assert (=> b!6357336 (= res!2615903 (matchR!8448 lt!2366179 (_2!36547 (get!22482 lt!2366355))))))

(declare-fun b!6357337 () Bool)

(assert (=> b!6357337 (= e!3860496 None!16155)))

(declare-fun d!1994250 () Bool)

(declare-fun e!3860497 () Bool)

(assert (=> d!1994250 e!3860497))

(declare-fun res!2615904 () Bool)

(assert (=> d!1994250 (=> res!2615904 e!3860497)))

(assert (=> d!1994250 (= res!2615904 e!3860500)))

(declare-fun res!2615902 () Bool)

(assert (=> d!1994250 (=> (not res!2615902) (not e!3860500))))

(assert (=> d!1994250 (= res!2615902 (isDefined!12859 lt!2366355))))

(assert (=> d!1994250 (= lt!2366355 e!3860499)))

(declare-fun c!1157016 () Bool)

(assert (=> d!1994250 (= c!1157016 e!3860498)))

(declare-fun res!2615900 () Bool)

(assert (=> d!1994250 (=> (not res!2615900) (not e!3860498))))

(assert (=> d!1994250 (= res!2615900 (matchR!8448 (regOne!33042 (regOne!33042 r!7292)) Nil!64972))))

(assert (=> d!1994250 (validRegex!8001 (regOne!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994250 (= (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 Nil!64972 s!2326 s!2326) lt!2366355)))

(declare-fun b!6357338 () Bool)

(declare-fun lt!2366353 () Unit!158391)

(declare-fun lt!2366354 () Unit!158391)

(assert (=> b!6357338 (= lt!2366353 lt!2366354)))

(assert (=> b!6357338 (= (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326)) s!2326)))

(assert (=> b!6357338 (= lt!2366354 (lemmaMoveElementToOtherListKeepsConcatEq!2429 Nil!64972 (h!71420 s!2326) (t!378686 s!2326) s!2326))))

(assert (=> b!6357338 (= e!3860496 (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326) s!2326))))

(declare-fun b!6357339 () Bool)

(assert (=> b!6357339 (= e!3860500 (= (++!14334 (_1!36547 (get!22482 lt!2366355)) (_2!36547 (get!22482 lt!2366355))) s!2326))))

(declare-fun b!6357340 () Bool)

(assert (=> b!6357340 (= e!3860499 (Some!16155 (tuple2!66489 Nil!64972 s!2326)))))

(declare-fun b!6357341 () Bool)

(assert (=> b!6357341 (= e!3860497 (not (isDefined!12859 lt!2366355)))))

(assert (= (and d!1994250 res!2615900) b!6357333))

(assert (= (and d!1994250 c!1157016) b!6357340))

(assert (= (and d!1994250 (not c!1157016)) b!6357334))

(assert (= (and b!6357334 c!1157017) b!6357337))

(assert (= (and b!6357334 (not c!1157017)) b!6357338))

(assert (= (and d!1994250 res!2615902) b!6357335))

(assert (= (and b!6357335 res!2615901) b!6357336))

(assert (= (and b!6357336 res!2615903) b!6357339))

(assert (= (and d!1994250 (not res!2615904)) b!6357341))

(declare-fun m!7163408 () Bool)

(assert (=> b!6357341 m!7163408))

(assert (=> b!6357333 m!7162628))

(declare-fun m!7163410 () Bool)

(assert (=> b!6357339 m!7163410))

(declare-fun m!7163412 () Bool)

(assert (=> b!6357339 m!7163412))

(assert (=> b!6357336 m!7163410))

(declare-fun m!7163414 () Bool)

(assert (=> b!6357336 m!7163414))

(assert (=> d!1994250 m!7163408))

(declare-fun m!7163416 () Bool)

(assert (=> d!1994250 m!7163416))

(assert (=> d!1994250 m!7163132))

(assert (=> b!6357335 m!7163410))

(declare-fun m!7163418 () Bool)

(assert (=> b!6357335 m!7163418))

(assert (=> b!6357338 m!7163242))

(assert (=> b!6357338 m!7163242))

(assert (=> b!6357338 m!7163244))

(assert (=> b!6357338 m!7163246))

(assert (=> b!6357338 m!7163242))

(declare-fun m!7163420 () Bool)

(assert (=> b!6357338 m!7163420))

(assert (=> b!6356387 d!1994250))

(declare-fun d!1994252 () Bool)

(declare-fun c!1157018 () Bool)

(assert (=> d!1994252 (= c!1157018 (isEmpty!37073 s!2326))))

(declare-fun e!3860501 () Bool)

(assert (=> d!1994252 (= (matchZipper!2277 lt!2366187 s!2326) e!3860501)))

(declare-fun b!6357342 () Bool)

(assert (=> b!6357342 (= e!3860501 (nullableZipper!2031 lt!2366187))))

(declare-fun b!6357343 () Bool)

(assert (=> b!6357343 (= e!3860501 (matchZipper!2277 (derivationStepZipper!2231 lt!2366187 (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994252 c!1157018) b!6357342))

(assert (= (and d!1994252 (not c!1157018)) b!6357343))

(assert (=> d!1994252 m!7163190))

(declare-fun m!7163422 () Bool)

(assert (=> b!6357342 m!7163422))

(assert (=> b!6357343 m!7163360))

(assert (=> b!6357343 m!7163360))

(declare-fun m!7163424 () Bool)

(assert (=> b!6357343 m!7163424))

(assert (=> b!6357343 m!7163356))

(assert (=> b!6357343 m!7163424))

(assert (=> b!6357343 m!7163356))

(declare-fun m!7163426 () Bool)

(assert (=> b!6357343 m!7163426))

(assert (=> b!6356387 d!1994252))

(declare-fun d!1994254 () Bool)

(assert (=> d!1994254 (= (matchR!8448 lt!2366170 s!2326) (matchZipper!2277 lt!2366187 s!2326))))

(declare-fun lt!2366358 () Unit!158391)

(declare-fun choose!47211 ((InoxSet Context!11298) List!65095 Regex!16265 List!65096) Unit!158391)

(assert (=> d!1994254 (= lt!2366358 (choose!47211 lt!2366187 lt!2366165 lt!2366170 s!2326))))

(assert (=> d!1994254 (validRegex!8001 lt!2366170)))

(assert (=> d!1994254 (= (theoremZipperRegexEquiv!807 lt!2366187 lt!2366165 lt!2366170 s!2326) lt!2366358)))

(declare-fun bs!1592192 () Bool)

(assert (= bs!1592192 d!1994254))

(assert (=> bs!1592192 m!7162638))

(assert (=> bs!1592192 m!7162602))

(declare-fun m!7163428 () Bool)

(assert (=> bs!1592192 m!7163428))

(assert (=> bs!1592192 m!7163272))

(assert (=> b!6356387 d!1994254))

(declare-fun bs!1592193 () Bool)

(declare-fun d!1994256 () Bool)

(assert (= bs!1592193 (and d!1994256 b!6356395)))

(declare-fun lambda!350102 () Int)

(assert (=> bs!1592193 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350102 lambda!349995))))

(assert (=> bs!1592193 (not (= lambda!350102 lambda!349996))))

(declare-fun bs!1592194 () Bool)

(assert (= bs!1592194 (and d!1994256 b!6357057)))

(assert (=> bs!1592194 (not (= lambda!350102 lambda!350078))))

(declare-fun bs!1592195 () Bool)

(assert (= bs!1592195 (and d!1994256 b!6356387)))

(assert (=> bs!1592195 (not (= lambda!350102 lambda!350001))))

(declare-fun bs!1592196 () Bool)

(assert (= bs!1592196 (and d!1994256 b!6357258)))

(assert (=> bs!1592196 (not (= lambda!350102 lambda!350099))))

(declare-fun bs!1592197 () Bool)

(assert (= bs!1592197 (and d!1994256 b!6357049)))

(assert (=> bs!1592197 (not (= lambda!350102 lambda!350077))))

(assert (=> bs!1592195 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350102 lambda!349998))))

(declare-fun bs!1592198 () Bool)

(assert (= bs!1592198 (and d!1994256 b!6357250)))

(assert (=> bs!1592198 (not (= lambda!350102 lambda!350098))))

(assert (=> bs!1592195 (not (= lambda!350102 lambda!349999))))

(declare-fun bs!1592199 () Bool)

(assert (= bs!1592199 (and d!1994256 d!1994208)))

(assert (=> bs!1592199 (not (= lambda!350102 lambda!350097))))

(assert (=> bs!1592199 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350102 lambda!350096))))

(assert (=> bs!1592195 (= lambda!350102 lambda!350000)))

(declare-fun bs!1592200 () Bool)

(assert (= bs!1592200 (and d!1994256 d!1994242)))

(assert (=> bs!1592200 (= lambda!350102 lambda!350101)))

(declare-fun bs!1592201 () Bool)

(assert (= bs!1592201 (and d!1994256 d!1994166)))

(assert (=> bs!1592201 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350102 lambda!350061))))

(assert (=> d!1994256 true))

(assert (=> d!1994256 true))

(assert (=> d!1994256 true))

(declare-fun lambda!350103 () Int)

(assert (=> bs!1592193 (not (= lambda!350103 lambda!349995))))

(assert (=> bs!1592193 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350103 lambda!349996))))

(assert (=> bs!1592194 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 lt!2366179)) (= lt!2366173 (regTwo!33042 lt!2366179))) (= lambda!350103 lambda!350078))))

(assert (=> bs!1592195 (= lambda!350103 lambda!350001)))

(assert (=> bs!1592196 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 lt!2366170)) (= lt!2366173 (regTwo!33042 lt!2366170))) (= lambda!350103 lambda!350099))))

(assert (=> bs!1592197 (not (= lambda!350103 lambda!350077))))

(assert (=> bs!1592195 (not (= lambda!350103 lambda!349998))))

(assert (=> bs!1592198 (not (= lambda!350103 lambda!350098))))

(assert (=> bs!1592195 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350103 lambda!349999))))

(declare-fun bs!1592202 () Bool)

(assert (= bs!1592202 d!1994256))

(assert (=> bs!1592202 (not (= lambda!350103 lambda!350102))))

(assert (=> bs!1592199 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350103 lambda!350097))))

(assert (=> bs!1592199 (not (= lambda!350103 lambda!350096))))

(assert (=> bs!1592195 (not (= lambda!350103 lambda!350000))))

(assert (=> bs!1592200 (not (= lambda!350103 lambda!350101))))

(assert (=> bs!1592201 (not (= lambda!350103 lambda!350061))))

(assert (=> d!1994256 true))

(assert (=> d!1994256 true))

(assert (=> d!1994256 true))

(assert (=> d!1994256 (= (Exists!3335 lambda!350102) (Exists!3335 lambda!350103))))

(declare-fun lt!2366359 () Unit!158391)

(assert (=> d!1994256 (= lt!2366359 (choose!47209 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326))))

(assert (=> d!1994256 (validRegex!8001 (regTwo!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994256 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1872 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326) lt!2366359)))

(declare-fun m!7163430 () Bool)

(assert (=> bs!1592202 m!7163430))

(declare-fun m!7163432 () Bool)

(assert (=> bs!1592202 m!7163432))

(declare-fun m!7163434 () Bool)

(assert (=> bs!1592202 m!7163434))

(assert (=> bs!1592202 m!7163238))

(assert (=> b!6356387 d!1994256))

(declare-fun d!1994258 () Bool)

(assert (=> d!1994258 (= (isDefined!12859 (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 Nil!64972 s!2326 s!2326)) (not (isEmpty!37074 (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 Nil!64972 s!2326 s!2326))))))

(declare-fun bs!1592203 () Bool)

(assert (= bs!1592203 d!1994258))

(assert (=> bs!1592203 m!7162598))

(declare-fun m!7163436 () Bool)

(assert (=> bs!1592203 m!7163436))

(assert (=> b!6356387 d!1994258))

(declare-fun d!1994260 () Bool)

(declare-fun lt!2366362 () Int)

(assert (=> d!1994260 (>= lt!2366362 0)))

(declare-fun e!3860504 () Int)

(assert (=> d!1994260 (= lt!2366362 e!3860504)))

(declare-fun c!1157022 () Bool)

(assert (=> d!1994260 (= c!1157022 ((_ is Cons!64970) (exprs!6149 lt!2366194)))))

(assert (=> d!1994260 (= (contextDepthTotal!374 lt!2366194) lt!2366362)))

(declare-fun b!6357348 () Bool)

(declare-fun regexDepthTotal!222 (Regex!16265) Int)

(assert (=> b!6357348 (= e!3860504 (+ (regexDepthTotal!222 (h!71418 (exprs!6149 lt!2366194))) (contextDepthTotal!374 (Context!11299 (t!378684 (exprs!6149 lt!2366194))))))))

(declare-fun b!6357349 () Bool)

(assert (=> b!6357349 (= e!3860504 1)))

(assert (= (and d!1994260 c!1157022) b!6357348))

(assert (= (and d!1994260 (not c!1157022)) b!6357349))

(declare-fun m!7163438 () Bool)

(assert (=> b!6357348 m!7163438))

(declare-fun m!7163440 () Bool)

(assert (=> b!6357348 m!7163440))

(assert (=> b!6356383 d!1994260))

(declare-fun d!1994262 () Bool)

(declare-fun lt!2366363 () Int)

(assert (=> d!1994262 (>= lt!2366363 0)))

(declare-fun e!3860505 () Int)

(assert (=> d!1994262 (= lt!2366363 e!3860505)))

(declare-fun c!1157023 () Bool)

(assert (=> d!1994262 (= c!1157023 ((_ is Cons!64970) (exprs!6149 (h!71419 zl!343))))))

(assert (=> d!1994262 (= (contextDepthTotal!374 (h!71419 zl!343)) lt!2366363)))

(declare-fun b!6357350 () Bool)

(assert (=> b!6357350 (= e!3860505 (+ (regexDepthTotal!222 (h!71418 (exprs!6149 (h!71419 zl!343)))) (contextDepthTotal!374 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun b!6357351 () Bool)

(assert (=> b!6357351 (= e!3860505 1)))

(assert (= (and d!1994262 c!1157023) b!6357350))

(assert (= (and d!1994262 (not c!1157023)) b!6357351))

(declare-fun m!7163442 () Bool)

(assert (=> b!6357350 m!7163442))

(declare-fun m!7163444 () Bool)

(assert (=> b!6357350 m!7163444))

(assert (=> b!6356383 d!1994262))

(declare-fun b!6357352 () Bool)

(declare-fun e!3860512 () Bool)

(assert (=> b!6357352 (= e!3860512 (not (= (head!13023 s!2326) (c!1156730 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))))

(declare-fun b!6357353 () Bool)

(declare-fun res!2615909 () Bool)

(declare-fun e!3860511 () Bool)

(assert (=> b!6357353 (=> (not res!2615909) (not e!3860511))))

(declare-fun call!542152 () Bool)

(assert (=> b!6357353 (= res!2615909 (not call!542152))))

(declare-fun b!6357354 () Bool)

(declare-fun e!3860509 () Bool)

(declare-fun lt!2366364 () Bool)

(assert (=> b!6357354 (= e!3860509 (= lt!2366364 call!542152))))

(declare-fun bm!542147 () Bool)

(assert (=> bm!542147 (= call!542152 (isEmpty!37073 s!2326))))

(declare-fun b!6357355 () Bool)

(declare-fun e!3860508 () Bool)

(declare-fun e!3860506 () Bool)

(assert (=> b!6357355 (= e!3860508 e!3860506)))

(declare-fun res!2615908 () Bool)

(assert (=> b!6357355 (=> (not res!2615908) (not e!3860506))))

(assert (=> b!6357355 (= res!2615908 (not lt!2366364))))

(declare-fun b!6357356 () Bool)

(assert (=> b!6357356 (= e!3860511 (= (head!13023 s!2326) (c!1156730 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))))))

(declare-fun b!6357357 () Bool)

(declare-fun e!3860507 () Bool)

(assert (=> b!6357357 (= e!3860507 (not lt!2366364))))

(declare-fun b!6357358 () Bool)

(assert (=> b!6357358 (= e!3860506 e!3860512)))

(declare-fun res!2615910 () Bool)

(assert (=> b!6357358 (=> res!2615910 e!3860512)))

(assert (=> b!6357358 (= res!2615910 call!542152)))

(declare-fun b!6357359 () Bool)

(assert (=> b!6357359 (= e!3860509 e!3860507)))

(declare-fun c!1157024 () Bool)

(assert (=> b!6357359 (= c!1157024 ((_ is EmptyLang!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(declare-fun b!6357360 () Bool)

(declare-fun e!3860510 () Bool)

(assert (=> b!6357360 (= e!3860510 (nullable!6258 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(declare-fun b!6357361 () Bool)

(declare-fun res!2615912 () Bool)

(assert (=> b!6357361 (=> res!2615912 e!3860508)))

(assert (=> b!6357361 (= res!2615912 (not ((_ is ElementMatch!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))))))

(assert (=> b!6357361 (= e!3860507 e!3860508)))

(declare-fun b!6357362 () Bool)

(declare-fun res!2615907 () Bool)

(assert (=> b!6357362 (=> res!2615907 e!3860512)))

(assert (=> b!6357362 (= res!2615907 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6357364 () Bool)

(declare-fun res!2615905 () Bool)

(assert (=> b!6357364 (=> res!2615905 e!3860508)))

(assert (=> b!6357364 (= res!2615905 e!3860511)))

(declare-fun res!2615911 () Bool)

(assert (=> b!6357364 (=> (not res!2615911) (not e!3860511))))

(assert (=> b!6357364 (= res!2615911 lt!2366364)))

(declare-fun b!6357365 () Bool)

(declare-fun res!2615906 () Bool)

(assert (=> b!6357365 (=> (not res!2615906) (not e!3860511))))

(assert (=> b!6357365 (= res!2615906 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994264 () Bool)

(assert (=> d!1994264 e!3860509))

(declare-fun c!1157026 () Bool)

(assert (=> d!1994264 (= c!1157026 ((_ is EmptyExpr!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(assert (=> d!1994264 (= lt!2366364 e!3860510)))

(declare-fun c!1157025 () Bool)

(assert (=> d!1994264 (= c!1157025 (isEmpty!37073 s!2326))))

(assert (=> d!1994264 (validRegex!8001 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))))

(assert (=> d!1994264 (= (matchR!8448 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) s!2326) lt!2366364)))

(declare-fun b!6357363 () Bool)

(assert (=> b!6357363 (= e!3860510 (matchR!8448 (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994264 c!1157025) b!6357360))

(assert (= (and d!1994264 (not c!1157025)) b!6357363))

(assert (= (and d!1994264 c!1157026) b!6357354))

(assert (= (and d!1994264 (not c!1157026)) b!6357359))

(assert (= (and b!6357359 c!1157024) b!6357357))

(assert (= (and b!6357359 (not c!1157024)) b!6357361))

(assert (= (and b!6357361 (not res!2615912)) b!6357364))

(assert (= (and b!6357364 res!2615911) b!6357353))

(assert (= (and b!6357353 res!2615909) b!6357365))

(assert (= (and b!6357365 res!2615906) b!6357356))

(assert (= (and b!6357364 (not res!2615905)) b!6357355))

(assert (= (and b!6357355 res!2615908) b!6357358))

(assert (= (and b!6357358 (not res!2615910)) b!6357362))

(assert (= (and b!6357362 (not res!2615907)) b!6357352))

(assert (= (or b!6357354 b!6357353 b!6357358) bm!542147))

(assert (=> b!6357362 m!7163356))

(assert (=> b!6357362 m!7163356))

(assert (=> b!6357362 m!7163358))

(assert (=> b!6357363 m!7163360))

(assert (=> b!6357363 m!7163360))

(declare-fun m!7163446 () Bool)

(assert (=> b!6357363 m!7163446))

(assert (=> b!6357363 m!7163356))

(assert (=> b!6357363 m!7163446))

(assert (=> b!6357363 m!7163356))

(declare-fun m!7163448 () Bool)

(assert (=> b!6357363 m!7163448))

(assert (=> b!6357365 m!7163356))

(assert (=> b!6357365 m!7163356))

(assert (=> b!6357365 m!7163358))

(assert (=> b!6357356 m!7163360))

(declare-fun m!7163450 () Bool)

(assert (=> b!6357360 m!7163450))

(assert (=> d!1994264 m!7163190))

(declare-fun m!7163452 () Bool)

(assert (=> d!1994264 m!7163452))

(assert (=> bm!542147 m!7163190))

(assert (=> b!6357352 m!7163360))

(assert (=> b!6356403 d!1994264))

(declare-fun d!1994266 () Bool)

(declare-fun lt!2366367 () Regex!16265)

(assert (=> d!1994266 (validRegex!8001 lt!2366367)))

(assert (=> d!1994266 (= lt!2366367 (generalisedUnion!2109 (unfocusZipperList!1686 zl!343)))))

(assert (=> d!1994266 (= (unfocusZipper!2007 zl!343) lt!2366367)))

(declare-fun bs!1592204 () Bool)

(assert (= bs!1592204 d!1994266))

(declare-fun m!7163454 () Bool)

(assert (=> bs!1592204 m!7163454))

(assert (=> bs!1592204 m!7162664))

(assert (=> bs!1592204 m!7162664))

(assert (=> bs!1592204 m!7162666))

(assert (=> b!6356384 d!1994266))

(declare-fun bs!1592205 () Bool)

(declare-fun d!1994268 () Bool)

(assert (= bs!1592205 (and d!1994268 d!1994068)))

(declare-fun lambda!350106 () Int)

(assert (=> bs!1592205 (= lambda!350106 lambda!350024)))

(declare-fun bs!1592206 () Bool)

(assert (= bs!1592206 (and d!1994268 d!1994168)))

(assert (=> bs!1592206 (= lambda!350106 lambda!350067)))

(declare-fun bs!1592207 () Bool)

(assert (= bs!1592207 (and d!1994268 d!1994202)))

(assert (=> bs!1592207 (= lambda!350106 lambda!350079)))

(declare-fun bs!1592208 () Bool)

(assert (= bs!1592208 (and d!1994268 d!1994060)))

(assert (=> bs!1592208 (= lambda!350106 lambda!350020)))

(declare-fun bs!1592209 () Bool)

(assert (= bs!1592209 (and d!1994268 d!1994240)))

(assert (=> bs!1592209 (= lambda!350106 lambda!350100)))

(assert (=> d!1994268 (= (inv!83909 (h!71419 zl!343)) (forall!15441 (exprs!6149 (h!71419 zl!343)) lambda!350106))))

(declare-fun bs!1592210 () Bool)

(assert (= bs!1592210 d!1994268))

(declare-fun m!7163456 () Bool)

(assert (=> bs!1592210 m!7163456))

(assert (=> b!6356404 d!1994268))

(declare-fun d!1994270 () Bool)

(declare-fun c!1157027 () Bool)

(assert (=> d!1994270 (= c!1157027 (isEmpty!37073 (t!378686 s!2326)))))

(declare-fun e!3860513 () Bool)

(assert (=> d!1994270 (= (matchZipper!2277 lt!2366184 (t!378686 s!2326)) e!3860513)))

(declare-fun b!6357366 () Bool)

(assert (=> b!6357366 (= e!3860513 (nullableZipper!2031 lt!2366184))))

(declare-fun b!6357367 () Bool)

(assert (=> b!6357367 (= e!3860513 (matchZipper!2277 (derivationStepZipper!2231 lt!2366184 (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))))))

(assert (= (and d!1994270 c!1157027) b!6357366))

(assert (= (and d!1994270 (not c!1157027)) b!6357367))

(declare-fun m!7163458 () Bool)

(assert (=> d!1994270 m!7163458))

(declare-fun m!7163460 () Bool)

(assert (=> b!6357366 m!7163460))

(declare-fun m!7163462 () Bool)

(assert (=> b!6357367 m!7163462))

(assert (=> b!6357367 m!7163462))

(declare-fun m!7163464 () Bool)

(assert (=> b!6357367 m!7163464))

(declare-fun m!7163466 () Bool)

(assert (=> b!6357367 m!7163466))

(assert (=> b!6357367 m!7163464))

(assert (=> b!6357367 m!7163466))

(declare-fun m!7163468 () Bool)

(assert (=> b!6357367 m!7163468))

(assert (=> b!6356385 d!1994270))

(declare-fun d!1994272 () Bool)

(declare-fun c!1157028 () Bool)

(assert (=> d!1994272 (= c!1157028 (isEmpty!37073 (t!378686 s!2326)))))

(declare-fun e!3860514 () Bool)

(assert (=> d!1994272 (= (matchZipper!2277 lt!2366169 (t!378686 s!2326)) e!3860514)))

(declare-fun b!6357368 () Bool)

(assert (=> b!6357368 (= e!3860514 (nullableZipper!2031 lt!2366169))))

(declare-fun b!6357369 () Bool)

(assert (=> b!6357369 (= e!3860514 (matchZipper!2277 (derivationStepZipper!2231 lt!2366169 (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))))))

(assert (= (and d!1994272 c!1157028) b!6357368))

(assert (= (and d!1994272 (not c!1157028)) b!6357369))

(assert (=> d!1994272 m!7163458))

(declare-fun m!7163470 () Bool)

(assert (=> b!6357368 m!7163470))

(assert (=> b!6357369 m!7163462))

(assert (=> b!6357369 m!7163462))

(declare-fun m!7163472 () Bool)

(assert (=> b!6357369 m!7163472))

(assert (=> b!6357369 m!7163466))

(assert (=> b!6357369 m!7163472))

(assert (=> b!6357369 m!7163466))

(declare-fun m!7163474 () Bool)

(assert (=> b!6357369 m!7163474))

(assert (=> b!6356385 d!1994272))

(declare-fun e!3860517 () Bool)

(declare-fun d!1994274 () Bool)

(assert (=> d!1994274 (= (matchZipper!2277 ((_ map or) lt!2366169 lt!2366163) (t!378686 s!2326)) e!3860517)))

(declare-fun res!2615915 () Bool)

(assert (=> d!1994274 (=> res!2615915 e!3860517)))

(assert (=> d!1994274 (= res!2615915 (matchZipper!2277 lt!2366169 (t!378686 s!2326)))))

(declare-fun lt!2366370 () Unit!158391)

(declare-fun choose!47213 ((InoxSet Context!11298) (InoxSet Context!11298) List!65096) Unit!158391)

(assert (=> d!1994274 (= lt!2366370 (choose!47213 lt!2366169 lt!2366163 (t!378686 s!2326)))))

(assert (=> d!1994274 (= (lemmaZipperConcatMatchesSameAsBothZippers!1096 lt!2366169 lt!2366163 (t!378686 s!2326)) lt!2366370)))

(declare-fun b!6357372 () Bool)

(assert (=> b!6357372 (= e!3860517 (matchZipper!2277 lt!2366163 (t!378686 s!2326)))))

(assert (= (and d!1994274 (not res!2615915)) b!6357372))

(assert (=> d!1994274 m!7162544))

(assert (=> d!1994274 m!7162542))

(declare-fun m!7163476 () Bool)

(assert (=> d!1994274 m!7163476))

(assert (=> b!6357372 m!7162546))

(assert (=> b!6356399 d!1994274))

(assert (=> b!6356399 d!1994272))

(declare-fun d!1994276 () Bool)

(declare-fun c!1157029 () Bool)

(assert (=> d!1994276 (= c!1157029 (isEmpty!37073 (t!378686 s!2326)))))

(declare-fun e!3860518 () Bool)

(assert (=> d!1994276 (= (matchZipper!2277 ((_ map or) lt!2366169 lt!2366163) (t!378686 s!2326)) e!3860518)))

(declare-fun b!6357373 () Bool)

(assert (=> b!6357373 (= e!3860518 (nullableZipper!2031 ((_ map or) lt!2366169 lt!2366163)))))

(declare-fun b!6357374 () Bool)

(assert (=> b!6357374 (= e!3860518 (matchZipper!2277 (derivationStepZipper!2231 ((_ map or) lt!2366169 lt!2366163) (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))))))

(assert (= (and d!1994276 c!1157029) b!6357373))

(assert (= (and d!1994276 (not c!1157029)) b!6357374))

(assert (=> d!1994276 m!7163458))

(declare-fun m!7163478 () Bool)

(assert (=> b!6357373 m!7163478))

(assert (=> b!6357374 m!7163462))

(assert (=> b!6357374 m!7163462))

(declare-fun m!7163480 () Bool)

(assert (=> b!6357374 m!7163480))

(assert (=> b!6357374 m!7163466))

(assert (=> b!6357374 m!7163480))

(assert (=> b!6357374 m!7163466))

(declare-fun m!7163482 () Bool)

(assert (=> b!6357374 m!7163482))

(assert (=> b!6356399 d!1994276))

(declare-fun bs!1592211 () Bool)

(declare-fun d!1994278 () Bool)

(assert (= bs!1592211 (and d!1994278 d!1994068)))

(declare-fun lambda!350107 () Int)

(assert (=> bs!1592211 (= lambda!350107 lambda!350024)))

(declare-fun bs!1592212 () Bool)

(assert (= bs!1592212 (and d!1994278 d!1994168)))

(assert (=> bs!1592212 (= lambda!350107 lambda!350067)))

(declare-fun bs!1592213 () Bool)

(assert (= bs!1592213 (and d!1994278 d!1994268)))

(assert (=> bs!1592213 (= lambda!350107 lambda!350106)))

(declare-fun bs!1592214 () Bool)

(assert (= bs!1592214 (and d!1994278 d!1994202)))

(assert (=> bs!1592214 (= lambda!350107 lambda!350079)))

(declare-fun bs!1592215 () Bool)

(assert (= bs!1592215 (and d!1994278 d!1994060)))

(assert (=> bs!1592215 (= lambda!350107 lambda!350020)))

(declare-fun bs!1592216 () Bool)

(assert (= bs!1592216 (and d!1994278 d!1994240)))

(assert (=> bs!1592216 (= lambda!350107 lambda!350100)))

(declare-fun e!3860521 () Bool)

(assert (=> d!1994278 e!3860521))

(declare-fun res!2615916 () Bool)

(assert (=> d!1994278 (=> (not res!2615916) (not e!3860521))))

(declare-fun lt!2366371 () Regex!16265)

(assert (=> d!1994278 (= res!2615916 (validRegex!8001 lt!2366371))))

(declare-fun e!3860524 () Regex!16265)

(assert (=> d!1994278 (= lt!2366371 e!3860524)))

(declare-fun c!1157033 () Bool)

(declare-fun e!3860519 () Bool)

(assert (=> d!1994278 (= c!1157033 e!3860519)))

(declare-fun res!2615917 () Bool)

(assert (=> d!1994278 (=> (not res!2615917) (not e!3860519))))

(assert (=> d!1994278 (= res!2615917 ((_ is Cons!64970) (exprs!6149 (h!71419 zl!343))))))

(assert (=> d!1994278 (forall!15441 (exprs!6149 (h!71419 zl!343)) lambda!350107)))

(assert (=> d!1994278 (= (generalisedConcat!1862 (exprs!6149 (h!71419 zl!343))) lt!2366371)))

(declare-fun b!6357375 () Bool)

(declare-fun e!3860520 () Bool)

(declare-fun e!3860523 () Bool)

(assert (=> b!6357375 (= e!3860520 e!3860523)))

(declare-fun c!1157030 () Bool)

(assert (=> b!6357375 (= c!1157030 (isEmpty!37069 (tail!12107 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6357376 () Bool)

(assert (=> b!6357376 (= e!3860523 (isConcat!1190 lt!2366371))))

(declare-fun b!6357377 () Bool)

(declare-fun e!3860522 () Regex!16265)

(assert (=> b!6357377 (= e!3860524 e!3860522)))

(declare-fun c!1157031 () Bool)

(assert (=> b!6357377 (= c!1157031 ((_ is Cons!64970) (exprs!6149 (h!71419 zl!343))))))

(declare-fun b!6357378 () Bool)

(assert (=> b!6357378 (= e!3860522 EmptyExpr!16265)))

(declare-fun b!6357379 () Bool)

(assert (=> b!6357379 (= e!3860522 (Concat!25110 (h!71418 (exprs!6149 (h!71419 zl!343))) (generalisedConcat!1862 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun b!6357380 () Bool)

(assert (=> b!6357380 (= e!3860519 (isEmpty!37069 (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6357381 () Bool)

(assert (=> b!6357381 (= e!3860521 e!3860520)))

(declare-fun c!1157032 () Bool)

(assert (=> b!6357381 (= c!1157032 (isEmpty!37069 (exprs!6149 (h!71419 zl!343))))))

(declare-fun b!6357382 () Bool)

(assert (=> b!6357382 (= e!3860523 (= lt!2366371 (head!13022 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6357383 () Bool)

(assert (=> b!6357383 (= e!3860524 (h!71418 (exprs!6149 (h!71419 zl!343))))))

(declare-fun b!6357384 () Bool)

(assert (=> b!6357384 (= e!3860520 (isEmptyExpr!1667 lt!2366371))))

(assert (= (and d!1994278 res!2615917) b!6357380))

(assert (= (and d!1994278 c!1157033) b!6357383))

(assert (= (and d!1994278 (not c!1157033)) b!6357377))

(assert (= (and b!6357377 c!1157031) b!6357379))

(assert (= (and b!6357377 (not c!1157031)) b!6357378))

(assert (= (and d!1994278 res!2615916) b!6357381))

(assert (= (and b!6357381 c!1157032) b!6357384))

(assert (= (and b!6357381 (not c!1157032)) b!6357375))

(assert (= (and b!6357375 c!1157030) b!6357382))

(assert (= (and b!6357375 (not c!1157030)) b!6357376))

(declare-fun m!7163484 () Bool)

(assert (=> b!6357375 m!7163484))

(assert (=> b!6357375 m!7163484))

(declare-fun m!7163486 () Bool)

(assert (=> b!6357375 m!7163486))

(declare-fun m!7163488 () Bool)

(assert (=> d!1994278 m!7163488))

(declare-fun m!7163490 () Bool)

(assert (=> d!1994278 m!7163490))

(declare-fun m!7163492 () Bool)

(assert (=> b!6357382 m!7163492))

(declare-fun m!7163494 () Bool)

(assert (=> b!6357376 m!7163494))

(declare-fun m!7163496 () Bool)

(assert (=> b!6357381 m!7163496))

(assert (=> b!6357379 m!7162632))

(assert (=> b!6357380 m!7162582))

(declare-fun m!7163498 () Bool)

(assert (=> b!6357384 m!7163498))

(assert (=> b!6356378 d!1994278))

(declare-fun bs!1592217 () Bool)

(declare-fun d!1994280 () Bool)

(assert (= bs!1592217 (and d!1994280 d!1994068)))

(declare-fun lambda!350108 () Int)

(assert (=> bs!1592217 (= lambda!350108 lambda!350024)))

(declare-fun bs!1592218 () Bool)

(assert (= bs!1592218 (and d!1994280 d!1994168)))

(assert (=> bs!1592218 (= lambda!350108 lambda!350067)))

(declare-fun bs!1592219 () Bool)

(assert (= bs!1592219 (and d!1994280 d!1994268)))

(assert (=> bs!1592219 (= lambda!350108 lambda!350106)))

(declare-fun bs!1592220 () Bool)

(assert (= bs!1592220 (and d!1994280 d!1994202)))

(assert (=> bs!1592220 (= lambda!350108 lambda!350079)))

(declare-fun bs!1592221 () Bool)

(assert (= bs!1592221 (and d!1994280 d!1994240)))

(assert (=> bs!1592221 (= lambda!350108 lambda!350100)))

(declare-fun bs!1592222 () Bool)

(assert (= bs!1592222 (and d!1994280 d!1994060)))

(assert (=> bs!1592222 (= lambda!350108 lambda!350020)))

(declare-fun bs!1592223 () Bool)

(assert (= bs!1592223 (and d!1994280 d!1994278)))

(assert (=> bs!1592223 (= lambda!350108 lambda!350107)))

(assert (=> d!1994280 (= (inv!83909 setElem!43294) (forall!15441 (exprs!6149 setElem!43294) lambda!350108))))

(declare-fun bs!1592224 () Bool)

(assert (= bs!1592224 d!1994280))

(declare-fun m!7163500 () Bool)

(assert (=> bs!1592224 m!7163500))

(assert (=> setNonEmpty!43294 d!1994280))

(declare-fun d!1994282 () Bool)

(declare-fun c!1157037 () Bool)

(assert (=> d!1994282 (= c!1157037 (and ((_ is ElementMatch!16265) (regOne!33042 (regOne!33042 r!7292))) (= (c!1156730 (regOne!33042 (regOne!33042 r!7292))) (h!71420 s!2326))))))

(declare-fun e!3860528 () (InoxSet Context!11298))

(assert (=> d!1994282 (= (derivationStepZipperDown!1513 (regOne!33042 (regOne!33042 r!7292)) (Context!11299 lt!2366161) (h!71420 s!2326)) e!3860528)))

(declare-fun b!6357385 () Bool)

(declare-fun c!1157035 () Bool)

(assert (=> b!6357385 (= c!1157035 ((_ is Star!16265) (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun e!3860525 () (InoxSet Context!11298))

(declare-fun e!3860527 () (InoxSet Context!11298))

(assert (=> b!6357385 (= e!3860525 e!3860527)))

(declare-fun bm!542148 () Bool)

(declare-fun call!542156 () (InoxSet Context!11298))

(declare-fun call!542153 () (InoxSet Context!11298))

(assert (=> bm!542148 (= call!542156 call!542153)))

(declare-fun b!6357386 () Bool)

(declare-fun e!3860529 () (InoxSet Context!11298))

(assert (=> b!6357386 (= e!3860528 e!3860529)))

(declare-fun c!1157034 () Bool)

(assert (=> b!6357386 (= c!1157034 ((_ is Union!16265) (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun b!6357387 () Bool)

(assert (=> b!6357387 (= e!3860525 call!542156)))

(declare-fun c!1157036 () Bool)

(declare-fun c!1157038 () Bool)

(declare-fun bm!542149 () Bool)

(declare-fun call!542157 () List!65094)

(declare-fun call!542154 () (InoxSet Context!11298))

(assert (=> bm!542149 (= call!542154 (derivationStepZipperDown!1513 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292)))))) (ite (or c!1157034 c!1157036) (Context!11299 lt!2366161) (Context!11299 call!542157)) (h!71420 s!2326)))))

(declare-fun b!6357388 () Bool)

(declare-fun call!542155 () (InoxSet Context!11298))

(assert (=> b!6357388 (= e!3860529 ((_ map or) call!542155 call!542154))))

(declare-fun b!6357389 () Bool)

(declare-fun e!3860526 () (InoxSet Context!11298))

(assert (=> b!6357389 (= e!3860526 ((_ map or) call!542155 call!542153))))

(declare-fun b!6357390 () Bool)

(assert (=> b!6357390 (= e!3860528 (store ((as const (Array Context!11298 Bool)) false) (Context!11299 lt!2366161) true))))

(declare-fun b!6357391 () Bool)

(declare-fun e!3860530 () Bool)

(assert (=> b!6357391 (= e!3860530 (nullable!6258 (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))))))

(declare-fun bm!542150 () Bool)

(assert (=> bm!542150 (= call!542153 call!542154)))

(declare-fun bm!542151 () Bool)

(declare-fun call!542158 () List!65094)

(assert (=> bm!542151 (= call!542158 ($colon$colon!2126 (exprs!6149 (Context!11299 lt!2366161)) (ite (or c!1157036 c!1157038) (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 r!7292)))))))

(declare-fun bm!542152 () Bool)

(assert (=> bm!542152 (= call!542157 call!542158)))

(declare-fun b!6357392 () Bool)

(assert (=> b!6357392 (= c!1157036 e!3860530)))

(declare-fun res!2615918 () Bool)

(assert (=> b!6357392 (=> (not res!2615918) (not e!3860530))))

(assert (=> b!6357392 (= res!2615918 ((_ is Concat!25110) (regOne!33042 (regOne!33042 r!7292))))))

(assert (=> b!6357392 (= e!3860529 e!3860526)))

(declare-fun b!6357393 () Bool)

(assert (=> b!6357393 (= e!3860527 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6357394 () Bool)

(assert (=> b!6357394 (= e!3860527 call!542156)))

(declare-fun bm!542153 () Bool)

(assert (=> bm!542153 (= call!542155 (derivationStepZipperDown!1513 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))) (ite c!1157034 (Context!11299 lt!2366161) (Context!11299 call!542158)) (h!71420 s!2326)))))

(declare-fun b!6357395 () Bool)

(assert (=> b!6357395 (= e!3860526 e!3860525)))

(assert (=> b!6357395 (= c!1157038 ((_ is Concat!25110) (regOne!33042 (regOne!33042 r!7292))))))

(assert (= (and d!1994282 c!1157037) b!6357390))

(assert (= (and d!1994282 (not c!1157037)) b!6357386))

(assert (= (and b!6357386 c!1157034) b!6357388))

(assert (= (and b!6357386 (not c!1157034)) b!6357392))

(assert (= (and b!6357392 res!2615918) b!6357391))

(assert (= (and b!6357392 c!1157036) b!6357389))

(assert (= (and b!6357392 (not c!1157036)) b!6357395))

(assert (= (and b!6357395 c!1157038) b!6357387))

(assert (= (and b!6357395 (not c!1157038)) b!6357385))

(assert (= (and b!6357385 c!1157035) b!6357394))

(assert (= (and b!6357385 (not c!1157035)) b!6357393))

(assert (= (or b!6357387 b!6357394) bm!542152))

(assert (= (or b!6357387 b!6357394) bm!542148))

(assert (= (or b!6357389 bm!542152) bm!542151))

(assert (= (or b!6357389 bm!542148) bm!542150))

(assert (= (or b!6357388 bm!542150) bm!542149))

(assert (= (or b!6357388 b!6357389) bm!542153))

(declare-fun m!7163502 () Bool)

(assert (=> b!6357390 m!7163502))

(declare-fun m!7163504 () Bool)

(assert (=> bm!542149 m!7163504))

(declare-fun m!7163506 () Bool)

(assert (=> b!6357391 m!7163506))

(declare-fun m!7163508 () Bool)

(assert (=> bm!542153 m!7163508))

(declare-fun m!7163510 () Bool)

(assert (=> bm!542151 m!7163510))

(assert (=> b!6356379 d!1994282))

(declare-fun d!1994284 () Bool)

(assert (=> d!1994284 (= (nullable!6258 (regOne!33042 (regOne!33042 r!7292))) (nullableFct!2204 (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun bs!1592225 () Bool)

(assert (= bs!1592225 d!1994284))

(declare-fun m!7163512 () Bool)

(assert (=> bs!1592225 m!7163512))

(assert (=> b!6356396 d!1994284))

(declare-fun d!1994286 () Bool)

(assert (=> d!1994286 (= (isEmpty!37069 (t!378684 (exprs!6149 (h!71419 zl!343)))) ((_ is Nil!64970) (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> b!6356375 d!1994286))

(declare-fun bs!1592226 () Bool)

(declare-fun b!6357396 () Bool)

(assert (= bs!1592226 (and b!6357396 b!6356395)))

(declare-fun lambda!350109 () Int)

(assert (=> bs!1592226 (not (= lambda!350109 lambda!349995))))

(assert (=> bs!1592226 (not (= lambda!350109 lambda!349996))))

(declare-fun bs!1592227 () Bool)

(assert (= bs!1592227 (and b!6357396 b!6357057)))

(assert (=> bs!1592227 (not (= lambda!350109 lambda!350078))))

(declare-fun bs!1592228 () Bool)

(assert (= bs!1592228 (and b!6357396 b!6356387)))

(assert (=> bs!1592228 (not (= lambda!350109 lambda!350001))))

(declare-fun bs!1592229 () Bool)

(assert (= bs!1592229 (and b!6357396 b!6357258)))

(assert (=> bs!1592229 (not (= lambda!350109 lambda!350099))))

(declare-fun bs!1592230 () Bool)

(assert (= bs!1592230 (and b!6357396 b!6357049)))

(assert (=> bs!1592230 (= (and (= (reg!16594 r!7292) (reg!16594 lt!2366179)) (= r!7292 lt!2366179)) (= lambda!350109 lambda!350077))))

(assert (=> bs!1592228 (not (= lambda!350109 lambda!349998))))

(declare-fun bs!1592231 () Bool)

(assert (= bs!1592231 (and b!6357396 d!1994256)))

(assert (=> bs!1592231 (not (= lambda!350109 lambda!350103))))

(declare-fun bs!1592232 () Bool)

(assert (= bs!1592232 (and b!6357396 b!6357250)))

(assert (=> bs!1592232 (= (and (= (reg!16594 r!7292) (reg!16594 lt!2366170)) (= r!7292 lt!2366170)) (= lambda!350109 lambda!350098))))

(assert (=> bs!1592228 (not (= lambda!350109 lambda!349999))))

(assert (=> bs!1592231 (not (= lambda!350109 lambda!350102))))

(declare-fun bs!1592233 () Bool)

(assert (= bs!1592233 (and b!6357396 d!1994208)))

(assert (=> bs!1592233 (not (= lambda!350109 lambda!350097))))

(assert (=> bs!1592233 (not (= lambda!350109 lambda!350096))))

(assert (=> bs!1592228 (not (= lambda!350109 lambda!350000))))

(declare-fun bs!1592234 () Bool)

(assert (= bs!1592234 (and b!6357396 d!1994242)))

(assert (=> bs!1592234 (not (= lambda!350109 lambda!350101))))

(declare-fun bs!1592235 () Bool)

(assert (= bs!1592235 (and b!6357396 d!1994166)))

(assert (=> bs!1592235 (not (= lambda!350109 lambda!350061))))

(assert (=> b!6357396 true))

(assert (=> b!6357396 true))

(declare-fun bs!1592236 () Bool)

(declare-fun b!6357404 () Bool)

(assert (= bs!1592236 (and b!6357404 b!6357396)))

(declare-fun lambda!350110 () Int)

(assert (=> bs!1592236 (not (= lambda!350110 lambda!350109))))

(declare-fun bs!1592237 () Bool)

(assert (= bs!1592237 (and b!6357404 b!6356395)))

(assert (=> bs!1592237 (not (= lambda!350110 lambda!349995))))

(assert (=> bs!1592237 (= lambda!350110 lambda!349996)))

(declare-fun bs!1592238 () Bool)

(assert (= bs!1592238 (and b!6357404 b!6357057)))

(assert (=> bs!1592238 (= (and (= (regOne!33042 r!7292) (regOne!33042 lt!2366179)) (= (regTwo!33042 r!7292) (regTwo!33042 lt!2366179))) (= lambda!350110 lambda!350078))))

(declare-fun bs!1592239 () Bool)

(assert (= bs!1592239 (and b!6357404 b!6356387)))

(assert (=> bs!1592239 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350110 lambda!350001))))

(declare-fun bs!1592240 () Bool)

(assert (= bs!1592240 (and b!6357404 b!6357258)))

(assert (=> bs!1592240 (= (and (= (regOne!33042 r!7292) (regOne!33042 lt!2366170)) (= (regTwo!33042 r!7292) (regTwo!33042 lt!2366170))) (= lambda!350110 lambda!350099))))

(declare-fun bs!1592241 () Bool)

(assert (= bs!1592241 (and b!6357404 b!6357049)))

(assert (=> bs!1592241 (not (= lambda!350110 lambda!350077))))

(assert (=> bs!1592239 (not (= lambda!350110 lambda!349998))))

(declare-fun bs!1592242 () Bool)

(assert (= bs!1592242 (and b!6357404 d!1994256)))

(assert (=> bs!1592242 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350110 lambda!350103))))

(declare-fun bs!1592243 () Bool)

(assert (= bs!1592243 (and b!6357404 b!6357250)))

(assert (=> bs!1592243 (not (= lambda!350110 lambda!350098))))

(assert (=> bs!1592239 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350110 lambda!349999))))

(assert (=> bs!1592242 (not (= lambda!350110 lambda!350102))))

(declare-fun bs!1592244 () Bool)

(assert (= bs!1592244 (and b!6357404 d!1994208)))

(assert (=> bs!1592244 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350110 lambda!350097))))

(assert (=> bs!1592244 (not (= lambda!350110 lambda!350096))))

(assert (=> bs!1592239 (not (= lambda!350110 lambda!350000))))

(declare-fun bs!1592245 () Bool)

(assert (= bs!1592245 (and b!6357404 d!1994242)))

(assert (=> bs!1592245 (not (= lambda!350110 lambda!350101))))

(declare-fun bs!1592246 () Bool)

(assert (= bs!1592246 (and b!6357404 d!1994166)))

(assert (=> bs!1592246 (not (= lambda!350110 lambda!350061))))

(assert (=> b!6357404 true))

(assert (=> b!6357404 true))

(declare-fun e!3860533 () Bool)

(declare-fun call!542160 () Bool)

(assert (=> b!6357396 (= e!3860533 call!542160)))

(declare-fun bm!542154 () Bool)

(declare-fun call!542159 () Bool)

(assert (=> bm!542154 (= call!542159 (isEmpty!37073 s!2326))))

(declare-fun b!6357397 () Bool)

(declare-fun e!3860534 () Bool)

(assert (=> b!6357397 (= e!3860534 call!542159)))

(declare-fun b!6357398 () Bool)

(declare-fun e!3860536 () Bool)

(assert (=> b!6357398 (= e!3860536 (= s!2326 (Cons!64972 (c!1156730 r!7292) Nil!64972)))))

(declare-fun b!6357399 () Bool)

(declare-fun e!3860537 () Bool)

(assert (=> b!6357399 (= e!3860537 (matchRSpec!3366 (regTwo!33043 r!7292) s!2326))))

(declare-fun b!6357400 () Bool)

(declare-fun res!2615920 () Bool)

(assert (=> b!6357400 (=> res!2615920 e!3860533)))

(assert (=> b!6357400 (= res!2615920 call!542159)))

(declare-fun e!3860531 () Bool)

(assert (=> b!6357400 (= e!3860531 e!3860533)))

(declare-fun bm!542155 () Bool)

(declare-fun c!1157039 () Bool)

(assert (=> bm!542155 (= call!542160 (Exists!3335 (ite c!1157039 lambda!350109 lambda!350110)))))

(declare-fun b!6357401 () Bool)

(declare-fun e!3860532 () Bool)

(assert (=> b!6357401 (= e!3860532 e!3860531)))

(assert (=> b!6357401 (= c!1157039 ((_ is Star!16265) r!7292))))

(declare-fun d!1994288 () Bool)

(declare-fun c!1157042 () Bool)

(assert (=> d!1994288 (= c!1157042 ((_ is EmptyExpr!16265) r!7292))))

(assert (=> d!1994288 (= (matchRSpec!3366 r!7292 s!2326) e!3860534)))

(declare-fun b!6357402 () Bool)

(declare-fun c!1157041 () Bool)

(assert (=> b!6357402 (= c!1157041 ((_ is ElementMatch!16265) r!7292))))

(declare-fun e!3860535 () Bool)

(assert (=> b!6357402 (= e!3860535 e!3860536)))

(declare-fun b!6357403 () Bool)

(declare-fun c!1157040 () Bool)

(assert (=> b!6357403 (= c!1157040 ((_ is Union!16265) r!7292))))

(assert (=> b!6357403 (= e!3860536 e!3860532)))

(assert (=> b!6357404 (= e!3860531 call!542160)))

(declare-fun b!6357405 () Bool)

(assert (=> b!6357405 (= e!3860532 e!3860537)))

(declare-fun res!2615919 () Bool)

(assert (=> b!6357405 (= res!2615919 (matchRSpec!3366 (regOne!33043 r!7292) s!2326))))

(assert (=> b!6357405 (=> res!2615919 e!3860537)))

(declare-fun b!6357406 () Bool)

(assert (=> b!6357406 (= e!3860534 e!3860535)))

(declare-fun res!2615921 () Bool)

(assert (=> b!6357406 (= res!2615921 (not ((_ is EmptyLang!16265) r!7292)))))

(assert (=> b!6357406 (=> (not res!2615921) (not e!3860535))))

(assert (= (and d!1994288 c!1157042) b!6357397))

(assert (= (and d!1994288 (not c!1157042)) b!6357406))

(assert (= (and b!6357406 res!2615921) b!6357402))

(assert (= (and b!6357402 c!1157041) b!6357398))

(assert (= (and b!6357402 (not c!1157041)) b!6357403))

(assert (= (and b!6357403 c!1157040) b!6357405))

(assert (= (and b!6357403 (not c!1157040)) b!6357401))

(assert (= (and b!6357405 (not res!2615919)) b!6357399))

(assert (= (and b!6357401 c!1157039) b!6357400))

(assert (= (and b!6357401 (not c!1157039)) b!6357404))

(assert (= (and b!6357400 (not res!2615920)) b!6357396))

(assert (= (or b!6357396 b!6357404) bm!542155))

(assert (= (or b!6357397 b!6357400) bm!542154))

(assert (=> bm!542154 m!7163190))

(declare-fun m!7163514 () Bool)

(assert (=> b!6357399 m!7163514))

(declare-fun m!7163516 () Bool)

(assert (=> bm!542155 m!7163516))

(declare-fun m!7163518 () Bool)

(assert (=> b!6357405 m!7163518))

(assert (=> b!6356397 d!1994288))

(declare-fun b!6357407 () Bool)

(declare-fun e!3860544 () Bool)

(assert (=> b!6357407 (= e!3860544 (not (= (head!13023 s!2326) (c!1156730 r!7292))))))

(declare-fun b!6357408 () Bool)

(declare-fun res!2615926 () Bool)

(declare-fun e!3860543 () Bool)

(assert (=> b!6357408 (=> (not res!2615926) (not e!3860543))))

(declare-fun call!542161 () Bool)

(assert (=> b!6357408 (= res!2615926 (not call!542161))))

(declare-fun b!6357409 () Bool)

(declare-fun e!3860541 () Bool)

(declare-fun lt!2366372 () Bool)

(assert (=> b!6357409 (= e!3860541 (= lt!2366372 call!542161))))

(declare-fun bm!542156 () Bool)

(assert (=> bm!542156 (= call!542161 (isEmpty!37073 s!2326))))

(declare-fun b!6357410 () Bool)

(declare-fun e!3860540 () Bool)

(declare-fun e!3860538 () Bool)

(assert (=> b!6357410 (= e!3860540 e!3860538)))

(declare-fun res!2615925 () Bool)

(assert (=> b!6357410 (=> (not res!2615925) (not e!3860538))))

(assert (=> b!6357410 (= res!2615925 (not lt!2366372))))

(declare-fun b!6357411 () Bool)

(assert (=> b!6357411 (= e!3860543 (= (head!13023 s!2326) (c!1156730 r!7292)))))

(declare-fun b!6357412 () Bool)

(declare-fun e!3860539 () Bool)

(assert (=> b!6357412 (= e!3860539 (not lt!2366372))))

(declare-fun b!6357413 () Bool)

(assert (=> b!6357413 (= e!3860538 e!3860544)))

(declare-fun res!2615927 () Bool)

(assert (=> b!6357413 (=> res!2615927 e!3860544)))

(assert (=> b!6357413 (= res!2615927 call!542161)))

(declare-fun b!6357414 () Bool)

(assert (=> b!6357414 (= e!3860541 e!3860539)))

(declare-fun c!1157043 () Bool)

(assert (=> b!6357414 (= c!1157043 ((_ is EmptyLang!16265) r!7292))))

(declare-fun b!6357415 () Bool)

(declare-fun e!3860542 () Bool)

(assert (=> b!6357415 (= e!3860542 (nullable!6258 r!7292))))

(declare-fun b!6357416 () Bool)

(declare-fun res!2615929 () Bool)

(assert (=> b!6357416 (=> res!2615929 e!3860540)))

(assert (=> b!6357416 (= res!2615929 (not ((_ is ElementMatch!16265) r!7292)))))

(assert (=> b!6357416 (= e!3860539 e!3860540)))

(declare-fun b!6357417 () Bool)

(declare-fun res!2615924 () Bool)

(assert (=> b!6357417 (=> res!2615924 e!3860544)))

(assert (=> b!6357417 (= res!2615924 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6357419 () Bool)

(declare-fun res!2615922 () Bool)

(assert (=> b!6357419 (=> res!2615922 e!3860540)))

(assert (=> b!6357419 (= res!2615922 e!3860543)))

(declare-fun res!2615928 () Bool)

(assert (=> b!6357419 (=> (not res!2615928) (not e!3860543))))

(assert (=> b!6357419 (= res!2615928 lt!2366372)))

(declare-fun b!6357420 () Bool)

(declare-fun res!2615923 () Bool)

(assert (=> b!6357420 (=> (not res!2615923) (not e!3860543))))

(assert (=> b!6357420 (= res!2615923 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994290 () Bool)

(assert (=> d!1994290 e!3860541))

(declare-fun c!1157045 () Bool)

(assert (=> d!1994290 (= c!1157045 ((_ is EmptyExpr!16265) r!7292))))

(assert (=> d!1994290 (= lt!2366372 e!3860542)))

(declare-fun c!1157044 () Bool)

(assert (=> d!1994290 (= c!1157044 (isEmpty!37073 s!2326))))

(assert (=> d!1994290 (validRegex!8001 r!7292)))

(assert (=> d!1994290 (= (matchR!8448 r!7292 s!2326) lt!2366372)))

(declare-fun b!6357418 () Bool)

(assert (=> b!6357418 (= e!3860542 (matchR!8448 (derivativeStep!4970 r!7292 (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994290 c!1157044) b!6357415))

(assert (= (and d!1994290 (not c!1157044)) b!6357418))

(assert (= (and d!1994290 c!1157045) b!6357409))

(assert (= (and d!1994290 (not c!1157045)) b!6357414))

(assert (= (and b!6357414 c!1157043) b!6357412))

(assert (= (and b!6357414 (not c!1157043)) b!6357416))

(assert (= (and b!6357416 (not res!2615929)) b!6357419))

(assert (= (and b!6357419 res!2615928) b!6357408))

(assert (= (and b!6357408 res!2615926) b!6357420))

(assert (= (and b!6357420 res!2615923) b!6357411))

(assert (= (and b!6357419 (not res!2615922)) b!6357410))

(assert (= (and b!6357410 res!2615925) b!6357413))

(assert (= (and b!6357413 (not res!2615927)) b!6357417))

(assert (= (and b!6357417 (not res!2615924)) b!6357407))

(assert (= (or b!6357409 b!6357408 b!6357413) bm!542156))

(assert (=> b!6357417 m!7163356))

(assert (=> b!6357417 m!7163356))

(assert (=> b!6357417 m!7163358))

(assert (=> b!6357418 m!7163360))

(assert (=> b!6357418 m!7163360))

(declare-fun m!7163520 () Bool)

(assert (=> b!6357418 m!7163520))

(assert (=> b!6357418 m!7163356))

(assert (=> b!6357418 m!7163520))

(assert (=> b!6357418 m!7163356))

(declare-fun m!7163522 () Bool)

(assert (=> b!6357418 m!7163522))

(assert (=> b!6357420 m!7163356))

(assert (=> b!6357420 m!7163356))

(assert (=> b!6357420 m!7163358))

(assert (=> b!6357411 m!7163360))

(declare-fun m!7163524 () Bool)

(assert (=> b!6357415 m!7163524))

(assert (=> d!1994290 m!7163190))

(assert (=> d!1994290 m!7162576))

(assert (=> bm!542156 m!7163190))

(assert (=> b!6357407 m!7163360))

(assert (=> b!6356397 d!1994290))

(declare-fun d!1994292 () Bool)

(assert (=> d!1994292 (= (matchR!8448 r!7292 s!2326) (matchRSpec!3366 r!7292 s!2326))))

(declare-fun lt!2366373 () Unit!158391)

(assert (=> d!1994292 (= lt!2366373 (choose!47208 r!7292 s!2326))))

(assert (=> d!1994292 (validRegex!8001 r!7292)))

(assert (=> d!1994292 (= (mainMatchTheorem!3366 r!7292 s!2326) lt!2366373)))

(declare-fun bs!1592247 () Bool)

(assert (= bs!1592247 d!1994292))

(assert (=> bs!1592247 m!7162586))

(assert (=> bs!1592247 m!7162584))

(declare-fun m!7163526 () Bool)

(assert (=> bs!1592247 m!7163526))

(assert (=> bs!1592247 m!7162576))

(assert (=> b!6356397 d!1994292))

(declare-fun b!6357421 () Bool)

(declare-fun e!3860551 () Bool)

(assert (=> b!6357421 (= e!3860551 (not (= (head!13023 s!2326) (c!1156730 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))))

(declare-fun b!6357422 () Bool)

(declare-fun res!2615934 () Bool)

(declare-fun e!3860550 () Bool)

(assert (=> b!6357422 (=> (not res!2615934) (not e!3860550))))

(declare-fun call!542162 () Bool)

(assert (=> b!6357422 (= res!2615934 (not call!542162))))

(declare-fun b!6357423 () Bool)

(declare-fun e!3860548 () Bool)

(declare-fun lt!2366374 () Bool)

(assert (=> b!6357423 (= e!3860548 (= lt!2366374 call!542162))))

(declare-fun bm!542157 () Bool)

(assert (=> bm!542157 (= call!542162 (isEmpty!37073 s!2326))))

(declare-fun b!6357424 () Bool)

(declare-fun e!3860547 () Bool)

(declare-fun e!3860545 () Bool)

(assert (=> b!6357424 (= e!3860547 e!3860545)))

(declare-fun res!2615933 () Bool)

(assert (=> b!6357424 (=> (not res!2615933) (not e!3860545))))

(assert (=> b!6357424 (= res!2615933 (not lt!2366374))))

(declare-fun b!6357425 () Bool)

(assert (=> b!6357425 (= e!3860550 (= (head!13023 s!2326) (c!1156730 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))))))

(declare-fun b!6357426 () Bool)

(declare-fun e!3860546 () Bool)

(assert (=> b!6357426 (= e!3860546 (not lt!2366374))))

(declare-fun b!6357427 () Bool)

(assert (=> b!6357427 (= e!3860545 e!3860551)))

(declare-fun res!2615935 () Bool)

(assert (=> b!6357427 (=> res!2615935 e!3860551)))

(assert (=> b!6357427 (= res!2615935 call!542162)))

(declare-fun b!6357428 () Bool)

(assert (=> b!6357428 (= e!3860548 e!3860546)))

(declare-fun c!1157046 () Bool)

(assert (=> b!6357428 (= c!1157046 ((_ is EmptyLang!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(declare-fun b!6357429 () Bool)

(declare-fun e!3860549 () Bool)

(assert (=> b!6357429 (= e!3860549 (nullable!6258 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(declare-fun b!6357430 () Bool)

(declare-fun res!2615937 () Bool)

(assert (=> b!6357430 (=> res!2615937 e!3860547)))

(assert (=> b!6357430 (= res!2615937 (not ((_ is ElementMatch!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))))))

(assert (=> b!6357430 (= e!3860546 e!3860547)))

(declare-fun b!6357431 () Bool)

(declare-fun res!2615932 () Bool)

(assert (=> b!6357431 (=> res!2615932 e!3860551)))

(assert (=> b!6357431 (= res!2615932 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6357433 () Bool)

(declare-fun res!2615930 () Bool)

(assert (=> b!6357433 (=> res!2615930 e!3860547)))

(assert (=> b!6357433 (= res!2615930 e!3860550)))

(declare-fun res!2615936 () Bool)

(assert (=> b!6357433 (=> (not res!2615936) (not e!3860550))))

(assert (=> b!6357433 (= res!2615936 lt!2366374)))

(declare-fun b!6357434 () Bool)

(declare-fun res!2615931 () Bool)

(assert (=> b!6357434 (=> (not res!2615931) (not e!3860550))))

(assert (=> b!6357434 (= res!2615931 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994294 () Bool)

(assert (=> d!1994294 e!3860548))

(declare-fun c!1157048 () Bool)

(assert (=> d!1994294 (= c!1157048 ((_ is EmptyExpr!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(assert (=> d!1994294 (= lt!2366374 e!3860549)))

(declare-fun c!1157047 () Bool)

(assert (=> d!1994294 (= c!1157047 (isEmpty!37073 s!2326))))

(assert (=> d!1994294 (validRegex!8001 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))))

(assert (=> d!1994294 (= (matchR!8448 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) s!2326) lt!2366374)))

(declare-fun b!6357432 () Bool)

(assert (=> b!6357432 (= e!3860549 (matchR!8448 (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994294 c!1157047) b!6357429))

(assert (= (and d!1994294 (not c!1157047)) b!6357432))

(assert (= (and d!1994294 c!1157048) b!6357423))

(assert (= (and d!1994294 (not c!1157048)) b!6357428))

(assert (= (and b!6357428 c!1157046) b!6357426))

(assert (= (and b!6357428 (not c!1157046)) b!6357430))

(assert (= (and b!6357430 (not res!2615937)) b!6357433))

(assert (= (and b!6357433 res!2615936) b!6357422))

(assert (= (and b!6357422 res!2615934) b!6357434))

(assert (= (and b!6357434 res!2615931) b!6357425))

(assert (= (and b!6357433 (not res!2615930)) b!6357424))

(assert (= (and b!6357424 res!2615933) b!6357427))

(assert (= (and b!6357427 (not res!2615935)) b!6357431))

(assert (= (and b!6357431 (not res!2615932)) b!6357421))

(assert (= (or b!6357423 b!6357422 b!6357427) bm!542157))

(assert (=> b!6357431 m!7163356))

(assert (=> b!6357431 m!7163356))

(assert (=> b!6357431 m!7163358))

(assert (=> b!6357432 m!7163360))

(assert (=> b!6357432 m!7163360))

(declare-fun m!7163528 () Bool)

(assert (=> b!6357432 m!7163528))

(assert (=> b!6357432 m!7163356))

(assert (=> b!6357432 m!7163528))

(assert (=> b!6357432 m!7163356))

(declare-fun m!7163530 () Bool)

(assert (=> b!6357432 m!7163530))

(assert (=> b!6357434 m!7163356))

(assert (=> b!6357434 m!7163356))

(assert (=> b!6357434 m!7163358))

(assert (=> b!6357425 m!7163360))

(declare-fun m!7163532 () Bool)

(assert (=> b!6357429 m!7163532))

(assert (=> d!1994294 m!7163190))

(declare-fun m!7163534 () Bool)

(assert (=> d!1994294 m!7163534))

(assert (=> bm!542157 m!7163190))

(assert (=> b!6357421 m!7163360))

(assert (=> b!6356376 d!1994294))

(declare-fun d!1994296 () Bool)

(declare-fun c!1157049 () Bool)

(assert (=> d!1994296 (= c!1157049 (isEmpty!37073 (t!378686 s!2326)))))

(declare-fun e!3860552 () Bool)

(assert (=> d!1994296 (= (matchZipper!2277 lt!2366163 (t!378686 s!2326)) e!3860552)))

(declare-fun b!6357435 () Bool)

(assert (=> b!6357435 (= e!3860552 (nullableZipper!2031 lt!2366163))))

(declare-fun b!6357436 () Bool)

(assert (=> b!6357436 (= e!3860552 (matchZipper!2277 (derivationStepZipper!2231 lt!2366163 (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))))))

(assert (= (and d!1994296 c!1157049) b!6357435))

(assert (= (and d!1994296 (not c!1157049)) b!6357436))

(assert (=> d!1994296 m!7163458))

(declare-fun m!7163536 () Bool)

(assert (=> b!6357435 m!7163536))

(assert (=> b!6357436 m!7163462))

(assert (=> b!6357436 m!7163462))

(declare-fun m!7163538 () Bool)

(assert (=> b!6357436 m!7163538))

(assert (=> b!6357436 m!7163466))

(assert (=> b!6357436 m!7163538))

(assert (=> b!6357436 m!7163466))

(declare-fun m!7163540 () Bool)

(assert (=> b!6357436 m!7163540))

(assert (=> b!6356377 d!1994296))

(declare-fun e!3860559 () Bool)

(declare-fun b!6357437 () Bool)

(assert (=> b!6357437 (= e!3860559 (not (= (head!13023 s!2326) (c!1156730 (Concat!25110 lt!2366185 lt!2366173)))))))

(declare-fun b!6357438 () Bool)

(declare-fun res!2615942 () Bool)

(declare-fun e!3860558 () Bool)

(assert (=> b!6357438 (=> (not res!2615942) (not e!3860558))))

(declare-fun call!542163 () Bool)

(assert (=> b!6357438 (= res!2615942 (not call!542163))))

(declare-fun b!6357439 () Bool)

(declare-fun e!3860556 () Bool)

(declare-fun lt!2366375 () Bool)

(assert (=> b!6357439 (= e!3860556 (= lt!2366375 call!542163))))

(declare-fun bm!542158 () Bool)

(assert (=> bm!542158 (= call!542163 (isEmpty!37073 s!2326))))

(declare-fun b!6357440 () Bool)

(declare-fun e!3860555 () Bool)

(declare-fun e!3860553 () Bool)

(assert (=> b!6357440 (= e!3860555 e!3860553)))

(declare-fun res!2615941 () Bool)

(assert (=> b!6357440 (=> (not res!2615941) (not e!3860553))))

(assert (=> b!6357440 (= res!2615941 (not lt!2366375))))

(declare-fun b!6357441 () Bool)

(assert (=> b!6357441 (= e!3860558 (= (head!13023 s!2326) (c!1156730 (Concat!25110 lt!2366185 lt!2366173))))))

(declare-fun b!6357442 () Bool)

(declare-fun e!3860554 () Bool)

(assert (=> b!6357442 (= e!3860554 (not lt!2366375))))

(declare-fun b!6357443 () Bool)

(assert (=> b!6357443 (= e!3860553 e!3860559)))

(declare-fun res!2615943 () Bool)

(assert (=> b!6357443 (=> res!2615943 e!3860559)))

(assert (=> b!6357443 (= res!2615943 call!542163)))

(declare-fun b!6357444 () Bool)

(assert (=> b!6357444 (= e!3860556 e!3860554)))

(declare-fun c!1157050 () Bool)

(assert (=> b!6357444 (= c!1157050 ((_ is EmptyLang!16265) (Concat!25110 lt!2366185 lt!2366173)))))

(declare-fun b!6357445 () Bool)

(declare-fun e!3860557 () Bool)

(assert (=> b!6357445 (= e!3860557 (nullable!6258 (Concat!25110 lt!2366185 lt!2366173)))))

(declare-fun b!6357446 () Bool)

(declare-fun res!2615945 () Bool)

(assert (=> b!6357446 (=> res!2615945 e!3860555)))

(assert (=> b!6357446 (= res!2615945 (not ((_ is ElementMatch!16265) (Concat!25110 lt!2366185 lt!2366173))))))

(assert (=> b!6357446 (= e!3860554 e!3860555)))

(declare-fun b!6357447 () Bool)

(declare-fun res!2615940 () Bool)

(assert (=> b!6357447 (=> res!2615940 e!3860559)))

(assert (=> b!6357447 (= res!2615940 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6357449 () Bool)

(declare-fun res!2615938 () Bool)

(assert (=> b!6357449 (=> res!2615938 e!3860555)))

(assert (=> b!6357449 (= res!2615938 e!3860558)))

(declare-fun res!2615944 () Bool)

(assert (=> b!6357449 (=> (not res!2615944) (not e!3860558))))

(assert (=> b!6357449 (= res!2615944 lt!2366375)))

(declare-fun b!6357450 () Bool)

(declare-fun res!2615939 () Bool)

(assert (=> b!6357450 (=> (not res!2615939) (not e!3860558))))

(assert (=> b!6357450 (= res!2615939 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994298 () Bool)

(assert (=> d!1994298 e!3860556))

(declare-fun c!1157052 () Bool)

(assert (=> d!1994298 (= c!1157052 ((_ is EmptyExpr!16265) (Concat!25110 lt!2366185 lt!2366173)))))

(assert (=> d!1994298 (= lt!2366375 e!3860557)))

(declare-fun c!1157051 () Bool)

(assert (=> d!1994298 (= c!1157051 (isEmpty!37073 s!2326))))

(assert (=> d!1994298 (validRegex!8001 (Concat!25110 lt!2366185 lt!2366173))))

(assert (=> d!1994298 (= (matchR!8448 (Concat!25110 lt!2366185 lt!2366173) s!2326) lt!2366375)))

(declare-fun b!6357448 () Bool)

(assert (=> b!6357448 (= e!3860557 (matchR!8448 (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994298 c!1157051) b!6357445))

(assert (= (and d!1994298 (not c!1157051)) b!6357448))

(assert (= (and d!1994298 c!1157052) b!6357439))

(assert (= (and d!1994298 (not c!1157052)) b!6357444))

(assert (= (and b!6357444 c!1157050) b!6357442))

(assert (= (and b!6357444 (not c!1157050)) b!6357446))

(assert (= (and b!6357446 (not res!2615945)) b!6357449))

(assert (= (and b!6357449 res!2615944) b!6357438))

(assert (= (and b!6357438 res!2615942) b!6357450))

(assert (= (and b!6357450 res!2615939) b!6357441))

(assert (= (and b!6357449 (not res!2615938)) b!6357440))

(assert (= (and b!6357440 res!2615941) b!6357443))

(assert (= (and b!6357443 (not res!2615943)) b!6357447))

(assert (= (and b!6357447 (not res!2615940)) b!6357437))

(assert (= (or b!6357439 b!6357438 b!6357443) bm!542158))

(assert (=> b!6357447 m!7163356))

(assert (=> b!6357447 m!7163356))

(assert (=> b!6357447 m!7163358))

(assert (=> b!6357448 m!7163360))

(assert (=> b!6357448 m!7163360))

(declare-fun m!7163542 () Bool)

(assert (=> b!6357448 m!7163542))

(assert (=> b!6357448 m!7163356))

(assert (=> b!6357448 m!7163542))

(assert (=> b!6357448 m!7163356))

(declare-fun m!7163544 () Bool)

(assert (=> b!6357448 m!7163544))

(assert (=> b!6357450 m!7163356))

(assert (=> b!6357450 m!7163356))

(assert (=> b!6357450 m!7163358))

(assert (=> b!6357441 m!7163360))

(declare-fun m!7163546 () Bool)

(assert (=> b!6357445 m!7163546))

(assert (=> d!1994298 m!7163190))

(declare-fun m!7163548 () Bool)

(assert (=> d!1994298 m!7163548))

(assert (=> bm!542158 m!7163190))

(assert (=> b!6357437 m!7163360))

(assert (=> b!6356394 d!1994298))

(declare-fun d!1994300 () Bool)

(declare-fun c!1157053 () Bool)

(assert (=> d!1994300 (= c!1157053 (isEmpty!37073 (t!378686 s!2326)))))

(declare-fun e!3860560 () Bool)

(assert (=> d!1994300 (= (matchZipper!2277 lt!2366193 (t!378686 s!2326)) e!3860560)))

(declare-fun b!6357451 () Bool)

(assert (=> b!6357451 (= e!3860560 (nullableZipper!2031 lt!2366193))))

(declare-fun b!6357452 () Bool)

(assert (=> b!6357452 (= e!3860560 (matchZipper!2277 (derivationStepZipper!2231 lt!2366193 (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))))))

(assert (= (and d!1994300 c!1157053) b!6357451))

(assert (= (and d!1994300 (not c!1157053)) b!6357452))

(assert (=> d!1994300 m!7163458))

(declare-fun m!7163550 () Bool)

(assert (=> b!6357451 m!7163550))

(assert (=> b!6357452 m!7163462))

(assert (=> b!6357452 m!7163462))

(declare-fun m!7163552 () Bool)

(assert (=> b!6357452 m!7163552))

(assert (=> b!6357452 m!7163466))

(assert (=> b!6357452 m!7163552))

(assert (=> b!6357452 m!7163466))

(declare-fun m!7163554 () Bool)

(assert (=> b!6357452 m!7163554))

(assert (=> b!6356373 d!1994300))

(declare-fun b!6357453 () Bool)

(declare-fun e!3860563 () Bool)

(assert (=> b!6357453 (= e!3860563 (matchR!8448 (regTwo!33042 r!7292) s!2326))))

(declare-fun b!6357454 () Bool)

(declare-fun e!3860564 () Option!16156)

(declare-fun e!3860561 () Option!16156)

(assert (=> b!6357454 (= e!3860564 e!3860561)))

(declare-fun c!1157055 () Bool)

(assert (=> b!6357454 (= c!1157055 ((_ is Nil!64972) s!2326))))

(declare-fun b!6357455 () Bool)

(declare-fun res!2615947 () Bool)

(declare-fun e!3860565 () Bool)

(assert (=> b!6357455 (=> (not res!2615947) (not e!3860565))))

(declare-fun lt!2366378 () Option!16156)

(assert (=> b!6357455 (= res!2615947 (matchR!8448 (regOne!33042 r!7292) (_1!36547 (get!22482 lt!2366378))))))

(declare-fun b!6357456 () Bool)

(declare-fun res!2615949 () Bool)

(assert (=> b!6357456 (=> (not res!2615949) (not e!3860565))))

(assert (=> b!6357456 (= res!2615949 (matchR!8448 (regTwo!33042 r!7292) (_2!36547 (get!22482 lt!2366378))))))

(declare-fun b!6357457 () Bool)

(assert (=> b!6357457 (= e!3860561 None!16155)))

(declare-fun d!1994302 () Bool)

(declare-fun e!3860562 () Bool)

(assert (=> d!1994302 e!3860562))

(declare-fun res!2615950 () Bool)

(assert (=> d!1994302 (=> res!2615950 e!3860562)))

(assert (=> d!1994302 (= res!2615950 e!3860565)))

(declare-fun res!2615948 () Bool)

(assert (=> d!1994302 (=> (not res!2615948) (not e!3860565))))

(assert (=> d!1994302 (= res!2615948 (isDefined!12859 lt!2366378))))

(assert (=> d!1994302 (= lt!2366378 e!3860564)))

(declare-fun c!1157054 () Bool)

(assert (=> d!1994302 (= c!1157054 e!3860563)))

(declare-fun res!2615946 () Bool)

(assert (=> d!1994302 (=> (not res!2615946) (not e!3860563))))

(assert (=> d!1994302 (= res!2615946 (matchR!8448 (regOne!33042 r!7292) Nil!64972))))

(assert (=> d!1994302 (validRegex!8001 (regOne!33042 r!7292))))

(assert (=> d!1994302 (= (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) Nil!64972 s!2326 s!2326) lt!2366378)))

(declare-fun b!6357458 () Bool)

(declare-fun lt!2366376 () Unit!158391)

(declare-fun lt!2366377 () Unit!158391)

(assert (=> b!6357458 (= lt!2366376 lt!2366377)))

(assert (=> b!6357458 (= (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326)) s!2326)))

(assert (=> b!6357458 (= lt!2366377 (lemmaMoveElementToOtherListKeepsConcatEq!2429 Nil!64972 (h!71420 s!2326) (t!378686 s!2326) s!2326))))

(assert (=> b!6357458 (= e!3860561 (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326) s!2326))))

(declare-fun b!6357459 () Bool)

(assert (=> b!6357459 (= e!3860565 (= (++!14334 (_1!36547 (get!22482 lt!2366378)) (_2!36547 (get!22482 lt!2366378))) s!2326))))

(declare-fun b!6357460 () Bool)

(assert (=> b!6357460 (= e!3860564 (Some!16155 (tuple2!66489 Nil!64972 s!2326)))))

(declare-fun b!6357461 () Bool)

(assert (=> b!6357461 (= e!3860562 (not (isDefined!12859 lt!2366378)))))

(assert (= (and d!1994302 res!2615946) b!6357453))

(assert (= (and d!1994302 c!1157054) b!6357460))

(assert (= (and d!1994302 (not c!1157054)) b!6357454))

(assert (= (and b!6357454 c!1157055) b!6357457))

(assert (= (and b!6357454 (not c!1157055)) b!6357458))

(assert (= (and d!1994302 res!2615948) b!6357455))

(assert (= (and b!6357455 res!2615947) b!6357456))

(assert (= (and b!6357456 res!2615949) b!6357459))

(assert (= (and d!1994302 (not res!2615950)) b!6357461))

(declare-fun m!7163556 () Bool)

(assert (=> b!6357461 m!7163556))

(declare-fun m!7163558 () Bool)

(assert (=> b!6357453 m!7163558))

(declare-fun m!7163560 () Bool)

(assert (=> b!6357459 m!7163560))

(declare-fun m!7163562 () Bool)

(assert (=> b!6357459 m!7163562))

(assert (=> b!6357456 m!7163560))

(declare-fun m!7163564 () Bool)

(assert (=> b!6357456 m!7163564))

(assert (=> d!1994302 m!7163556))

(declare-fun m!7163566 () Bool)

(assert (=> d!1994302 m!7163566))

(declare-fun m!7163568 () Bool)

(assert (=> d!1994302 m!7163568))

(assert (=> b!6357455 m!7163560))

(declare-fun m!7163570 () Bool)

(assert (=> b!6357455 m!7163570))

(assert (=> b!6357458 m!7163242))

(assert (=> b!6357458 m!7163242))

(assert (=> b!6357458 m!7163244))

(assert (=> b!6357458 m!7163246))

(assert (=> b!6357458 m!7163242))

(declare-fun m!7163572 () Bool)

(assert (=> b!6357458 m!7163572))

(assert (=> b!6356395 d!1994302))

(declare-fun d!1994304 () Bool)

(assert (=> d!1994304 (= (Exists!3335 lambda!349996) (choose!47205 lambda!349996))))

(declare-fun bs!1592248 () Bool)

(assert (= bs!1592248 d!1994304))

(declare-fun m!7163574 () Bool)

(assert (=> bs!1592248 m!7163574))

(assert (=> b!6356395 d!1994304))

(declare-fun d!1994306 () Bool)

(assert (=> d!1994306 (= (Exists!3335 lambda!349995) (choose!47205 lambda!349995))))

(declare-fun bs!1592249 () Bool)

(assert (= bs!1592249 d!1994306))

(declare-fun m!7163576 () Bool)

(assert (=> bs!1592249 m!7163576))

(assert (=> b!6356395 d!1994306))

(declare-fun bs!1592250 () Bool)

(declare-fun d!1994308 () Bool)

(assert (= bs!1592250 (and d!1994308 b!6357396)))

(declare-fun lambda!350111 () Int)

(assert (=> bs!1592250 (not (= lambda!350111 lambda!350109))))

(declare-fun bs!1592251 () Bool)

(assert (= bs!1592251 (and d!1994308 b!6356395)))

(assert (=> bs!1592251 (= lambda!350111 lambda!349995)))

(assert (=> bs!1592251 (not (= lambda!350111 lambda!349996))))

(declare-fun bs!1592252 () Bool)

(assert (= bs!1592252 (and d!1994308 b!6357057)))

(assert (=> bs!1592252 (not (= lambda!350111 lambda!350078))))

(declare-fun bs!1592253 () Bool)

(assert (= bs!1592253 (and d!1994308 b!6356387)))

(assert (=> bs!1592253 (not (= lambda!350111 lambda!350001))))

(declare-fun bs!1592254 () Bool)

(assert (= bs!1592254 (and d!1994308 b!6357049)))

(assert (=> bs!1592254 (not (= lambda!350111 lambda!350077))))

(assert (=> bs!1592253 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350111 lambda!349998))))

(declare-fun bs!1592255 () Bool)

(assert (= bs!1592255 (and d!1994308 d!1994256)))

(assert (=> bs!1592255 (not (= lambda!350111 lambda!350103))))

(declare-fun bs!1592256 () Bool)

(assert (= bs!1592256 (and d!1994308 b!6357250)))

(assert (=> bs!1592256 (not (= lambda!350111 lambda!350098))))

(assert (=> bs!1592253 (not (= lambda!350111 lambda!349999))))

(assert (=> bs!1592255 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350111 lambda!350102))))

(declare-fun bs!1592257 () Bool)

(assert (= bs!1592257 (and d!1994308 d!1994208)))

(assert (=> bs!1592257 (not (= lambda!350111 lambda!350097))))

(assert (=> bs!1592257 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350111 lambda!350096))))

(assert (=> bs!1592253 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350111 lambda!350000))))

(declare-fun bs!1592258 () Bool)

(assert (= bs!1592258 (and d!1994308 b!6357258)))

(assert (=> bs!1592258 (not (= lambda!350111 lambda!350099))))

(declare-fun bs!1592259 () Bool)

(assert (= bs!1592259 (and d!1994308 b!6357404)))

(assert (=> bs!1592259 (not (= lambda!350111 lambda!350110))))

(declare-fun bs!1592260 () Bool)

(assert (= bs!1592260 (and d!1994308 d!1994242)))

(assert (=> bs!1592260 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350111 lambda!350101))))

(declare-fun bs!1592261 () Bool)

(assert (= bs!1592261 (and d!1994308 d!1994166)))

(assert (=> bs!1592261 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350111 lambda!350061))))

(assert (=> d!1994308 true))

(assert (=> d!1994308 true))

(assert (=> d!1994308 true))

(assert (=> d!1994308 (= (isDefined!12859 (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) Nil!64972 s!2326 s!2326)) (Exists!3335 lambda!350111))))

(declare-fun lt!2366379 () Unit!158391)

(assert (=> d!1994308 (= lt!2366379 (choose!47206 (regOne!33042 r!7292) (regTwo!33042 r!7292) s!2326))))

(assert (=> d!1994308 (validRegex!8001 (regOne!33042 r!7292))))

(assert (=> d!1994308 (= (lemmaFindConcatSeparationEquivalentToExists!2334 (regOne!33042 r!7292) (regTwo!33042 r!7292) s!2326) lt!2366379)))

(declare-fun bs!1592262 () Bool)

(assert (= bs!1592262 d!1994308))

(declare-fun m!7163578 () Bool)

(assert (=> bs!1592262 m!7163578))

(assert (=> bs!1592262 m!7162522))

(assert (=> bs!1592262 m!7162524))

(declare-fun m!7163580 () Bool)

(assert (=> bs!1592262 m!7163580))

(assert (=> bs!1592262 m!7163568))

(assert (=> bs!1592262 m!7162522))

(assert (=> b!6356395 d!1994308))

(declare-fun bs!1592263 () Bool)

(declare-fun d!1994310 () Bool)

(assert (= bs!1592263 (and d!1994310 b!6357396)))

(declare-fun lambda!350112 () Int)

(assert (=> bs!1592263 (not (= lambda!350112 lambda!350109))))

(declare-fun bs!1592264 () Bool)

(assert (= bs!1592264 (and d!1994310 b!6356395)))

(assert (=> bs!1592264 (= lambda!350112 lambda!349995)))

(assert (=> bs!1592264 (not (= lambda!350112 lambda!349996))))

(declare-fun bs!1592265 () Bool)

(assert (= bs!1592265 (and d!1994310 b!6357057)))

(assert (=> bs!1592265 (not (= lambda!350112 lambda!350078))))

(declare-fun bs!1592266 () Bool)

(assert (= bs!1592266 (and d!1994310 b!6356387)))

(assert (=> bs!1592266 (not (= lambda!350112 lambda!350001))))

(declare-fun bs!1592267 () Bool)

(assert (= bs!1592267 (and d!1994310 b!6357049)))

(assert (=> bs!1592267 (not (= lambda!350112 lambda!350077))))

(declare-fun bs!1592268 () Bool)

(assert (= bs!1592268 (and d!1994310 d!1994256)))

(assert (=> bs!1592268 (not (= lambda!350112 lambda!350103))))

(declare-fun bs!1592269 () Bool)

(assert (= bs!1592269 (and d!1994310 b!6357250)))

(assert (=> bs!1592269 (not (= lambda!350112 lambda!350098))))

(assert (=> bs!1592266 (not (= lambda!350112 lambda!349999))))

(assert (=> bs!1592268 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350112 lambda!350102))))

(declare-fun bs!1592270 () Bool)

(assert (= bs!1592270 (and d!1994310 d!1994208)))

(assert (=> bs!1592270 (not (= lambda!350112 lambda!350097))))

(assert (=> bs!1592270 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350112 lambda!350096))))

(assert (=> bs!1592266 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350112 lambda!350000))))

(declare-fun bs!1592271 () Bool)

(assert (= bs!1592271 (and d!1994310 b!6357258)))

(assert (=> bs!1592271 (not (= lambda!350112 lambda!350099))))

(declare-fun bs!1592272 () Bool)

(assert (= bs!1592272 (and d!1994310 b!6357404)))

(assert (=> bs!1592272 (not (= lambda!350112 lambda!350110))))

(declare-fun bs!1592273 () Bool)

(assert (= bs!1592273 (and d!1994310 d!1994308)))

(assert (=> bs!1592273 (= lambda!350112 lambda!350111)))

(assert (=> bs!1592266 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350112 lambda!349998))))

(declare-fun bs!1592274 () Bool)

(assert (= bs!1592274 (and d!1994310 d!1994242)))

(assert (=> bs!1592274 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350112 lambda!350101))))

(declare-fun bs!1592275 () Bool)

(assert (= bs!1592275 (and d!1994310 d!1994166)))

(assert (=> bs!1592275 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350112 lambda!350061))))

(assert (=> d!1994310 true))

(assert (=> d!1994310 true))

(assert (=> d!1994310 true))

(declare-fun lambda!350113 () Int)

(assert (=> bs!1592263 (not (= lambda!350113 lambda!350109))))

(assert (=> bs!1592264 (not (= lambda!350113 lambda!349995))))

(assert (=> bs!1592265 (= (and (= (regOne!33042 r!7292) (regOne!33042 lt!2366179)) (= (regTwo!33042 r!7292) (regTwo!33042 lt!2366179))) (= lambda!350113 lambda!350078))))

(assert (=> bs!1592266 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350113 lambda!350001))))

(assert (=> bs!1592267 (not (= lambda!350113 lambda!350077))))

(assert (=> bs!1592268 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350113 lambda!350103))))

(assert (=> bs!1592269 (not (= lambda!350113 lambda!350098))))

(assert (=> bs!1592266 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350113 lambda!349999))))

(assert (=> bs!1592268 (not (= lambda!350113 lambda!350102))))

(assert (=> bs!1592270 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350113 lambda!350097))))

(assert (=> bs!1592264 (= lambda!350113 lambda!349996)))

(declare-fun bs!1592276 () Bool)

(assert (= bs!1592276 d!1994310))

(assert (=> bs!1592276 (not (= lambda!350113 lambda!350112))))

(assert (=> bs!1592270 (not (= lambda!350113 lambda!350096))))

(assert (=> bs!1592266 (not (= lambda!350113 lambda!350000))))

(assert (=> bs!1592271 (= (and (= (regOne!33042 r!7292) (regOne!33042 lt!2366170)) (= (regTwo!33042 r!7292) (regTwo!33042 lt!2366170))) (= lambda!350113 lambda!350099))))

(assert (=> bs!1592272 (= lambda!350113 lambda!350110)))

(assert (=> bs!1592273 (not (= lambda!350113 lambda!350111))))

(assert (=> bs!1592266 (not (= lambda!350113 lambda!349998))))

(assert (=> bs!1592274 (not (= lambda!350113 lambda!350101))))

(assert (=> bs!1592275 (not (= lambda!350113 lambda!350061))))

(assert (=> d!1994310 true))

(assert (=> d!1994310 true))

(assert (=> d!1994310 true))

(assert (=> d!1994310 (= (Exists!3335 lambda!350112) (Exists!3335 lambda!350113))))

(declare-fun lt!2366380 () Unit!158391)

(assert (=> d!1994310 (= lt!2366380 (choose!47209 (regOne!33042 r!7292) (regTwo!33042 r!7292) s!2326))))

(assert (=> d!1994310 (validRegex!8001 (regOne!33042 r!7292))))

(assert (=> d!1994310 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1872 (regOne!33042 r!7292) (regTwo!33042 r!7292) s!2326) lt!2366380)))

(declare-fun m!7163582 () Bool)

(assert (=> bs!1592276 m!7163582))

(declare-fun m!7163584 () Bool)

(assert (=> bs!1592276 m!7163584))

(declare-fun m!7163586 () Bool)

(assert (=> bs!1592276 m!7163586))

(assert (=> bs!1592276 m!7163568))

(assert (=> b!6356395 d!1994310))

(declare-fun d!1994312 () Bool)

(assert (=> d!1994312 (= (isDefined!12859 (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) Nil!64972 s!2326 s!2326)) (not (isEmpty!37074 (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) Nil!64972 s!2326 s!2326))))))

(declare-fun bs!1592277 () Bool)

(assert (= bs!1592277 d!1994312))

(assert (=> bs!1592277 m!7162522))

(declare-fun m!7163588 () Bool)

(assert (=> bs!1592277 m!7163588))

(assert (=> b!6356395 d!1994312))

(declare-fun e!3860572 () Bool)

(declare-fun b!6357462 () Bool)

(assert (=> b!6357462 (= e!3860572 (not (= (head!13023 s!2326) (c!1156730 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))))

(declare-fun b!6357463 () Bool)

(declare-fun res!2615955 () Bool)

(declare-fun e!3860571 () Bool)

(assert (=> b!6357463 (=> (not res!2615955) (not e!3860571))))

(declare-fun call!542164 () Bool)

(assert (=> b!6357463 (= res!2615955 (not call!542164))))

(declare-fun b!6357464 () Bool)

(declare-fun e!3860569 () Bool)

(declare-fun lt!2366381 () Bool)

(assert (=> b!6357464 (= e!3860569 (= lt!2366381 call!542164))))

(declare-fun bm!542159 () Bool)

(assert (=> bm!542159 (= call!542164 (isEmpty!37073 s!2326))))

(declare-fun b!6357465 () Bool)

(declare-fun e!3860568 () Bool)

(declare-fun e!3860566 () Bool)

(assert (=> b!6357465 (= e!3860568 e!3860566)))

(declare-fun res!2615954 () Bool)

(assert (=> b!6357465 (=> (not res!2615954) (not e!3860566))))

(assert (=> b!6357465 (= res!2615954 (not lt!2366381))))

(declare-fun b!6357466 () Bool)

(assert (=> b!6357466 (= e!3860571 (= (head!13023 s!2326) (c!1156730 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))))))

(declare-fun b!6357467 () Bool)

(declare-fun e!3860567 () Bool)

(assert (=> b!6357467 (= e!3860567 (not lt!2366381))))

(declare-fun b!6357468 () Bool)

(assert (=> b!6357468 (= e!3860566 e!3860572)))

(declare-fun res!2615956 () Bool)

(assert (=> b!6357468 (=> res!2615956 e!3860572)))

(assert (=> b!6357468 (= res!2615956 call!542164)))

(declare-fun b!6357469 () Bool)

(assert (=> b!6357469 (= e!3860569 e!3860567)))

(declare-fun c!1157056 () Bool)

(assert (=> b!6357469 (= c!1157056 ((_ is EmptyLang!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(declare-fun b!6357470 () Bool)

(declare-fun e!3860570 () Bool)

(assert (=> b!6357470 (= e!3860570 (nullable!6258 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(declare-fun b!6357471 () Bool)

(declare-fun res!2615958 () Bool)

(assert (=> b!6357471 (=> res!2615958 e!3860568)))

(assert (=> b!6357471 (= res!2615958 (not ((_ is ElementMatch!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))))))

(assert (=> b!6357471 (= e!3860567 e!3860568)))

(declare-fun b!6357472 () Bool)

(declare-fun res!2615953 () Bool)

(assert (=> b!6357472 (=> res!2615953 e!3860572)))

(assert (=> b!6357472 (= res!2615953 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6357474 () Bool)

(declare-fun res!2615951 () Bool)

(assert (=> b!6357474 (=> res!2615951 e!3860568)))

(assert (=> b!6357474 (= res!2615951 e!3860571)))

(declare-fun res!2615957 () Bool)

(assert (=> b!6357474 (=> (not res!2615957) (not e!3860571))))

(assert (=> b!6357474 (= res!2615957 lt!2366381)))

(declare-fun b!6357475 () Bool)

(declare-fun res!2615952 () Bool)

(assert (=> b!6357475 (=> (not res!2615952) (not e!3860571))))

(assert (=> b!6357475 (= res!2615952 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994314 () Bool)

(assert (=> d!1994314 e!3860569))

(declare-fun c!1157058 () Bool)

(assert (=> d!1994314 (= c!1157058 ((_ is EmptyExpr!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(assert (=> d!1994314 (= lt!2366381 e!3860570)))

(declare-fun c!1157057 () Bool)

(assert (=> d!1994314 (= c!1157057 (isEmpty!37073 s!2326))))

(assert (=> d!1994314 (validRegex!8001 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))))

(assert (=> d!1994314 (= (matchR!8448 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) s!2326) lt!2366381)))

(declare-fun b!6357473 () Bool)

(assert (=> b!6357473 (= e!3860570 (matchR!8448 (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994314 c!1157057) b!6357470))

(assert (= (and d!1994314 (not c!1157057)) b!6357473))

(assert (= (and d!1994314 c!1157058) b!6357464))

(assert (= (and d!1994314 (not c!1157058)) b!6357469))

(assert (= (and b!6357469 c!1157056) b!6357467))

(assert (= (and b!6357469 (not c!1157056)) b!6357471))

(assert (= (and b!6357471 (not res!2615958)) b!6357474))

(assert (= (and b!6357474 res!2615957) b!6357463))

(assert (= (and b!6357463 res!2615955) b!6357475))

(assert (= (and b!6357475 res!2615952) b!6357466))

(assert (= (and b!6357474 (not res!2615951)) b!6357465))

(assert (= (and b!6357465 res!2615954) b!6357468))

(assert (= (and b!6357468 (not res!2615956)) b!6357472))

(assert (= (and b!6357472 (not res!2615953)) b!6357462))

(assert (= (or b!6357464 b!6357463 b!6357468) bm!542159))

(assert (=> b!6357472 m!7163356))

(assert (=> b!6357472 m!7163356))

(assert (=> b!6357472 m!7163358))

(assert (=> b!6357473 m!7163360))

(assert (=> b!6357473 m!7163360))

(declare-fun m!7163590 () Bool)

(assert (=> b!6357473 m!7163590))

(assert (=> b!6357473 m!7163356))

(assert (=> b!6357473 m!7163590))

(assert (=> b!6357473 m!7163356))

(declare-fun m!7163592 () Bool)

(assert (=> b!6357473 m!7163592))

(assert (=> b!6357475 m!7163356))

(assert (=> b!6357475 m!7163356))

(assert (=> b!6357475 m!7163358))

(assert (=> b!6357466 m!7163360))

(declare-fun m!7163594 () Bool)

(assert (=> b!6357470 m!7163594))

(assert (=> d!1994314 m!7163190))

(declare-fun m!7163596 () Bool)

(assert (=> d!1994314 m!7163596))

(assert (=> bm!542159 m!7163190))

(assert (=> b!6357462 m!7163360))

(assert (=> b!6356374 d!1994314))

(declare-fun d!1994316 () Bool)

(assert (=> d!1994316 (= (matchR!8448 (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173) s!2326) (matchR!8448 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) s!2326))))

(declare-fun lt!2366384 () Unit!158391)

(declare-fun choose!47214 (Regex!16265 Regex!16265 Regex!16265 List!65096) Unit!158391)

(assert (=> d!1994316 (= lt!2366384 (choose!47214 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326))))

(declare-fun e!3860575 () Bool)

(assert (=> d!1994316 e!3860575))

(declare-fun res!2615963 () Bool)

(assert (=> d!1994316 (=> (not res!2615963) (not e!3860575))))

(assert (=> d!1994316 (= res!2615963 (validRegex!8001 (regOne!33042 (regOne!33042 r!7292))))))

(assert (=> d!1994316 (= (lemmaConcatAssociative!114 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326) lt!2366384)))

(declare-fun b!6357480 () Bool)

(declare-fun res!2615964 () Bool)

(assert (=> b!6357480 (=> (not res!2615964) (not e!3860575))))

(assert (=> b!6357480 (= res!2615964 (validRegex!8001 (regTwo!33042 (regOne!33042 r!7292))))))

(declare-fun b!6357481 () Bool)

(assert (=> b!6357481 (= e!3860575 (validRegex!8001 lt!2366173))))

(assert (= (and d!1994316 res!2615963) b!6357480))

(assert (= (and b!6357480 res!2615964) b!6357481))

(declare-fun m!7163598 () Bool)

(assert (=> d!1994316 m!7163598))

(assert (=> d!1994316 m!7162656))

(declare-fun m!7163600 () Bool)

(assert (=> d!1994316 m!7163600))

(assert (=> d!1994316 m!7163132))

(assert (=> b!6357480 m!7163238))

(declare-fun m!7163602 () Bool)

(assert (=> b!6357481 m!7163602))

(assert (=> b!6356374 d!1994316))

(declare-fun b!6357493 () Bool)

(declare-fun e!3860578 () Bool)

(declare-fun tp!1770778 () Bool)

(declare-fun tp!1770779 () Bool)

(assert (=> b!6357493 (= e!3860578 (and tp!1770778 tp!1770779))))

(assert (=> b!6356405 (= tp!1770704 e!3860578)))

(declare-fun b!6357494 () Bool)

(declare-fun tp!1770777 () Bool)

(assert (=> b!6357494 (= e!3860578 tp!1770777)))

(declare-fun b!6357495 () Bool)

(declare-fun tp!1770776 () Bool)

(declare-fun tp!1770775 () Bool)

(assert (=> b!6357495 (= e!3860578 (and tp!1770776 tp!1770775))))

(declare-fun b!6357492 () Bool)

(assert (=> b!6357492 (= e!3860578 tp_is_empty!41783)))

(assert (= (and b!6356405 ((_ is ElementMatch!16265) (regOne!33042 r!7292))) b!6357492))

(assert (= (and b!6356405 ((_ is Concat!25110) (regOne!33042 r!7292))) b!6357493))

(assert (= (and b!6356405 ((_ is Star!16265) (regOne!33042 r!7292))) b!6357494))

(assert (= (and b!6356405 ((_ is Union!16265) (regOne!33042 r!7292))) b!6357495))

(declare-fun b!6357497 () Bool)

(declare-fun e!3860579 () Bool)

(declare-fun tp!1770783 () Bool)

(declare-fun tp!1770784 () Bool)

(assert (=> b!6357497 (= e!3860579 (and tp!1770783 tp!1770784))))

(assert (=> b!6356405 (= tp!1770705 e!3860579)))

(declare-fun b!6357498 () Bool)

(declare-fun tp!1770782 () Bool)

(assert (=> b!6357498 (= e!3860579 tp!1770782)))

(declare-fun b!6357499 () Bool)

(declare-fun tp!1770781 () Bool)

(declare-fun tp!1770780 () Bool)

(assert (=> b!6357499 (= e!3860579 (and tp!1770781 tp!1770780))))

(declare-fun b!6357496 () Bool)

(assert (=> b!6357496 (= e!3860579 tp_is_empty!41783)))

(assert (= (and b!6356405 ((_ is ElementMatch!16265) (regTwo!33042 r!7292))) b!6357496))

(assert (= (and b!6356405 ((_ is Concat!25110) (regTwo!33042 r!7292))) b!6357497))

(assert (= (and b!6356405 ((_ is Star!16265) (regTwo!33042 r!7292))) b!6357498))

(assert (= (and b!6356405 ((_ is Union!16265) (regTwo!33042 r!7292))) b!6357499))

(declare-fun b!6357504 () Bool)

(declare-fun e!3860582 () Bool)

(declare-fun tp!1770789 () Bool)

(declare-fun tp!1770790 () Bool)

(assert (=> b!6357504 (= e!3860582 (and tp!1770789 tp!1770790))))

(assert (=> b!6356391 (= tp!1770698 e!3860582)))

(assert (= (and b!6356391 ((_ is Cons!64970) (exprs!6149 setElem!43294))) b!6357504))

(declare-fun b!6357505 () Bool)

(declare-fun e!3860583 () Bool)

(declare-fun tp!1770791 () Bool)

(declare-fun tp!1770792 () Bool)

(assert (=> b!6357505 (= e!3860583 (and tp!1770791 tp!1770792))))

(assert (=> b!6356382 (= tp!1770703 e!3860583)))

(assert (= (and b!6356382 ((_ is Cons!64970) (exprs!6149 (h!71419 zl!343)))) b!6357505))

(declare-fun b!6357507 () Bool)

(declare-fun e!3860584 () Bool)

(declare-fun tp!1770796 () Bool)

(declare-fun tp!1770797 () Bool)

(assert (=> b!6357507 (= e!3860584 (and tp!1770796 tp!1770797))))

(assert (=> b!6356402 (= tp!1770701 e!3860584)))

(declare-fun b!6357508 () Bool)

(declare-fun tp!1770795 () Bool)

(assert (=> b!6357508 (= e!3860584 tp!1770795)))

(declare-fun b!6357509 () Bool)

(declare-fun tp!1770794 () Bool)

(declare-fun tp!1770793 () Bool)

(assert (=> b!6357509 (= e!3860584 (and tp!1770794 tp!1770793))))

(declare-fun b!6357506 () Bool)

(assert (=> b!6357506 (= e!3860584 tp_is_empty!41783)))

(assert (= (and b!6356402 ((_ is ElementMatch!16265) (regOne!33043 r!7292))) b!6357506))

(assert (= (and b!6356402 ((_ is Concat!25110) (regOne!33043 r!7292))) b!6357507))

(assert (= (and b!6356402 ((_ is Star!16265) (regOne!33043 r!7292))) b!6357508))

(assert (= (and b!6356402 ((_ is Union!16265) (regOne!33043 r!7292))) b!6357509))

(declare-fun b!6357511 () Bool)

(declare-fun e!3860585 () Bool)

(declare-fun tp!1770801 () Bool)

(declare-fun tp!1770802 () Bool)

(assert (=> b!6357511 (= e!3860585 (and tp!1770801 tp!1770802))))

(assert (=> b!6356402 (= tp!1770700 e!3860585)))

(declare-fun b!6357512 () Bool)

(declare-fun tp!1770800 () Bool)

(assert (=> b!6357512 (= e!3860585 tp!1770800)))

(declare-fun b!6357513 () Bool)

(declare-fun tp!1770799 () Bool)

(declare-fun tp!1770798 () Bool)

(assert (=> b!6357513 (= e!3860585 (and tp!1770799 tp!1770798))))

(declare-fun b!6357510 () Bool)

(assert (=> b!6357510 (= e!3860585 tp_is_empty!41783)))

(assert (= (and b!6356402 ((_ is ElementMatch!16265) (regTwo!33043 r!7292))) b!6357510))

(assert (= (and b!6356402 ((_ is Concat!25110) (regTwo!33043 r!7292))) b!6357511))

(assert (= (and b!6356402 ((_ is Star!16265) (regTwo!33043 r!7292))) b!6357512))

(assert (= (and b!6356402 ((_ is Union!16265) (regTwo!33043 r!7292))) b!6357513))

(declare-fun condSetEmpty!43300 () Bool)

(assert (=> setNonEmpty!43294 (= condSetEmpty!43300 (= setRest!43294 ((as const (Array Context!11298 Bool)) false)))))

(declare-fun setRes!43300 () Bool)

(assert (=> setNonEmpty!43294 (= tp!1770702 setRes!43300)))

(declare-fun setIsEmpty!43300 () Bool)

(assert (=> setIsEmpty!43300 setRes!43300))

(declare-fun setElem!43300 () Context!11298)

(declare-fun e!3860588 () Bool)

(declare-fun setNonEmpty!43300 () Bool)

(declare-fun tp!1770808 () Bool)

(assert (=> setNonEmpty!43300 (= setRes!43300 (and tp!1770808 (inv!83909 setElem!43300) e!3860588))))

(declare-fun setRest!43300 () (InoxSet Context!11298))

(assert (=> setNonEmpty!43300 (= setRest!43294 ((_ map or) (store ((as const (Array Context!11298 Bool)) false) setElem!43300 true) setRest!43300))))

(declare-fun b!6357518 () Bool)

(declare-fun tp!1770807 () Bool)

(assert (=> b!6357518 (= e!3860588 tp!1770807)))

(assert (= (and setNonEmpty!43294 condSetEmpty!43300) setIsEmpty!43300))

(assert (= (and setNonEmpty!43294 (not condSetEmpty!43300)) setNonEmpty!43300))

(assert (= setNonEmpty!43300 b!6357518))

(declare-fun m!7163604 () Bool)

(assert (=> setNonEmpty!43300 m!7163604))

(declare-fun b!6357526 () Bool)

(declare-fun e!3860594 () Bool)

(declare-fun tp!1770813 () Bool)

(assert (=> b!6357526 (= e!3860594 tp!1770813)))

(declare-fun e!3860593 () Bool)

(declare-fun b!6357525 () Bool)

(declare-fun tp!1770814 () Bool)

(assert (=> b!6357525 (= e!3860593 (and (inv!83909 (h!71419 (t!378685 zl!343))) e!3860594 tp!1770814))))

(assert (=> b!6356404 (= tp!1770697 e!3860593)))

(assert (= b!6357525 b!6357526))

(assert (= (and b!6356404 ((_ is Cons!64971) (t!378685 zl!343))) b!6357525))

(declare-fun m!7163606 () Bool)

(assert (=> b!6357525 m!7163606))

(declare-fun b!6357528 () Bool)

(declare-fun e!3860595 () Bool)

(declare-fun tp!1770818 () Bool)

(declare-fun tp!1770819 () Bool)

(assert (=> b!6357528 (= e!3860595 (and tp!1770818 tp!1770819))))

(assert (=> b!6356390 (= tp!1770699 e!3860595)))

(declare-fun b!6357529 () Bool)

(declare-fun tp!1770817 () Bool)

(assert (=> b!6357529 (= e!3860595 tp!1770817)))

(declare-fun b!6357530 () Bool)

(declare-fun tp!1770816 () Bool)

(declare-fun tp!1770815 () Bool)

(assert (=> b!6357530 (= e!3860595 (and tp!1770816 tp!1770815))))

(declare-fun b!6357527 () Bool)

(assert (=> b!6357527 (= e!3860595 tp_is_empty!41783)))

(assert (= (and b!6356390 ((_ is ElementMatch!16265) (reg!16594 r!7292))) b!6357527))

(assert (= (and b!6356390 ((_ is Concat!25110) (reg!16594 r!7292))) b!6357528))

(assert (= (and b!6356390 ((_ is Star!16265) (reg!16594 r!7292))) b!6357529))

(assert (= (and b!6356390 ((_ is Union!16265) (reg!16594 r!7292))) b!6357530))

(declare-fun b!6357535 () Bool)

(declare-fun e!3860598 () Bool)

(declare-fun tp!1770822 () Bool)

(assert (=> b!6357535 (= e!3860598 (and tp_is_empty!41783 tp!1770822))))

(assert (=> b!6356400 (= tp!1770706 e!3860598)))

(assert (= (and b!6356400 ((_ is Cons!64972) (t!378686 s!2326))) b!6357535))

(declare-fun b_lambda!241681 () Bool)

(assert (= b_lambda!241671 (or b!6356406 b_lambda!241681)))

(declare-fun bs!1592278 () Bool)

(declare-fun d!1994318 () Bool)

(assert (= bs!1592278 (and d!1994318 b!6356406)))

(assert (=> bs!1592278 (= (dynLambda!25763 lambda!349997 lt!2366194) (derivationStepZipperUp!1439 lt!2366194 (h!71420 s!2326)))))

(assert (=> bs!1592278 m!7162558))

(assert (=> d!1994096 d!1994318))

(declare-fun b_lambda!241683 () Bool)

(assert (= b_lambda!241673 (or b!6356406 b_lambda!241683)))

(declare-fun bs!1592279 () Bool)

(declare-fun d!1994320 () Bool)

(assert (= bs!1592279 (and d!1994320 b!6356406)))

(assert (=> bs!1592279 (= (dynLambda!25763 lambda!349997 (h!71419 zl!343)) (derivationStepZipperUp!1439 (h!71419 zl!343) (h!71420 s!2326)))))

(assert (=> bs!1592279 m!7162654))

(assert (=> d!1994138 d!1994320))

(check-sat (not b!6357452) (not b!6357441) (not d!1994268) (not b!6357451) (not b!6357129) (not d!1994060) (not b!6357134) (not bm!542155) (not b!6357143) (not b!6356713) (not b!6357525) (not b!6357505) (not b!6356991) (not b!6357333) (not d!1994244) (not b!6357499) (not b!6357530) (not b!6357425) (not b!6357382) (not b!6357495) (not d!1994274) (not d!1994316) (not b_lambda!241683) (not b!6356987) (not b!6357253) (not b!6357459) (not b!6357504) (not d!1994310) (not b!6357335) (not bm!542120) (not d!1994096) (not b!6356910) (not b!6356693) (not b!6357330) (not b!6357304) (not b!6356833) (not d!1994298) (not d!1994290) (not b!6357447) (not d!1994206) (not b!6357493) (not d!1994272) (not b!6357373) (not b!6357379) (not b!6356854) (not b!6357319) (not b!6356705) (not b!6356821) (not d!1994266) (not d!1994270) (not d!1994300) (not d!1994086) (not d!1994258) (not b!6357365) (not b!6357360) (not b!6357145) (not bs!1592278) (not b!6357420) (not b!6357453) (not b!6357327) (not b!6357375) (not b!6356988) (not b!6357511) (not d!1994264) tp_is_empty!41783 (not b!6357435) (not b!6357399) (not d!1994202) (not bm!542157) (not d!1994130) (not b!6357507) (not d!1994252) (not b!6357455) (not b!6357436) (not b!6356673) (not b!6357429) (not bm!542085) (not d!1994250) (not b!6357300) (not b!6357369) (not bm!542060) (not b!6357372) (not b!6357259) (not b!6357458) (not bm!542141) (not b!6357509) (not b!6356839) (not d!1994256) (not b!6357307) (not d!1994246) (not b!6356732) (not b!6357058) (not b!6357418) (not b!6356814) (not b!6357362) (not bm!542142) (not b!6357434) (not bm!542146) (not b!6357526) (not b!6357052) (not d!1994232) (not b!6357417) (not b!6356982) (not bm!542105) (not d!1994248) (not b!6357450) (not b!6357384) (not d!1994240) (not b!6357309) (not b!6357352) (not b!6357363) (not b!6357341) (not d!1994278) (not b!6357142) (not d!1994188) (not b!6357356) (not b!6357135) (not b!6357473) (not b!6357462) (not b!6357380) (not b!6356989) (not b!6357508) (not b!6357338) (not b!6357374) (not b!6357456) (not b!6357376) (not b!6357498) (not b!6357497) (not b!6357318) (not d!1994168) (not b!6357308) (not b!6357528) (not b!6357421) (not b!6356675) (not b!6357131) (not b!6357332) (not b!6357299) (not b!6357350) (not b!6357138) (not b!6356816) (not setNonEmpty!43300) (not b!6357144) (not b!6356834) (not d!1994102) (not d!1994306) (not b!6356678) (not bm!542158) (not bm!542153) (not d!1994238) (not bm!542149) (not d!1994068) (not d!1994236) (not bm!542084) (not b!6356986) (not b!6357348) (not d!1994314) (not b!6357289) (not d!1994204) (not b!6356677) (not b!6357139) (not b!6357147) (not d!1994280) (not d!1994132) (not b!6356853) (not b!6357366) (not b!6357494) (not d!1994208) (not bm!542145) (not b!6357475) (not b!6357391) (not b!6357466) (not b!6357336) (not b!6357339) (not d!1994164) (not b!6357512) (not b!6357342) (not b!6357472) (not d!1994294) (not b!6357513) (not b!6357323) (not bm!542154) (not b!6357437) (not b!6356733) (not b!6356674) (not bm!542064) (not bm!542121) (not b!6357329) (not b!6357431) (not b!6357132) (not d!1994308) (not b!6357137) (not d!1994138) (not bm!542101) (not b!6356819) (not d!1994166) (not b!6357481) (not b!6357411) (not d!1994292) (not b!6357415) (not b!6357293) (not b!6357310) (not b!6357448) (not d!1994302) (not b!6357518) (not b!6356703) (not d!1994284) (not b!6357312) (not bm!542059) (not b!6357297) (not b!6357470) (not b!6356671) (not b!6357367) (not b!6357407) (not b!6357480) (not b!6357368) (not d!1994230) (not b!6357461) (not b_lambda!241681) (not b!6356838) (not d!1994254) (not b!6356983) (not d!1994084) (not d!1994242) (not bs!1592279) (not b!6357303) (not bm!542103) (not b!6357381) (not bm!542151) (not bm!542086) (not d!1994296) (not b!6357445) (not d!1994304) (not b!6357405) (not b!6357529) (not b!6356620) (not b!6357535) (not b!6357317) (not b!6357302) (not b!6356670) (not bm!542156) (not b!6357432) (not d!1994276) (not bm!542147) (not d!1994312) (not bm!542159) (not b!6357343))
(check-sat)
(get-model)

(declare-fun d!1994322 () Bool)

(assert (=> d!1994322 true))

(assert (=> d!1994322 true))

(declare-fun res!2615967 () Bool)

(assert (=> d!1994322 (= (choose!47205 lambda!350000) res!2615967)))

(assert (=> d!1994238 d!1994322))

(declare-fun bs!1592280 () Bool)

(declare-fun d!1994324 () Bool)

(assert (= bs!1592280 (and d!1994324 b!6356814)))

(declare-fun lambda!350116 () Int)

(assert (=> bs!1592280 (not (= lambda!350116 lambda!350046))))

(declare-fun bs!1592281 () Bool)

(assert (= bs!1592281 (and d!1994324 b!6356816)))

(assert (=> bs!1592281 (not (= lambda!350116 lambda!350048))))

(declare-fun bs!1592282 () Bool)

(assert (= bs!1592282 (and d!1994324 b!6356819)))

(assert (=> bs!1592282 (not (= lambda!350116 lambda!350051))))

(declare-fun bs!1592283 () Bool)

(assert (= bs!1592283 (and d!1994324 b!6356821)))

(assert (=> bs!1592283 (not (= lambda!350116 lambda!350052))))

(declare-fun exists!2570 ((InoxSet Context!11298) Int) Bool)

(assert (=> d!1994324 (= (nullableZipper!2031 ((_ map or) lt!2366169 lt!2366163)) (exists!2570 ((_ map or) lt!2366169 lt!2366163) lambda!350116))))

(declare-fun bs!1592284 () Bool)

(assert (= bs!1592284 d!1994324))

(declare-fun m!7163608 () Bool)

(assert (=> bs!1592284 m!7163608))

(assert (=> b!6357373 d!1994324))

(declare-fun d!1994326 () Bool)

(assert (=> d!1994326 (= (Exists!3335 lambda!350112) (choose!47205 lambda!350112))))

(declare-fun bs!1592285 () Bool)

(assert (= bs!1592285 d!1994326))

(declare-fun m!7163610 () Bool)

(assert (=> bs!1592285 m!7163610))

(assert (=> d!1994310 d!1994326))

(declare-fun d!1994328 () Bool)

(assert (=> d!1994328 (= (Exists!3335 lambda!350113) (choose!47205 lambda!350113))))

(declare-fun bs!1592286 () Bool)

(assert (= bs!1592286 d!1994328))

(declare-fun m!7163612 () Bool)

(assert (=> bs!1592286 m!7163612))

(assert (=> d!1994310 d!1994328))

(declare-fun bs!1592287 () Bool)

(declare-fun d!1994330 () Bool)

(assert (= bs!1592287 (and d!1994330 b!6357396)))

(declare-fun lambda!350121 () Int)

(assert (=> bs!1592287 (not (= lambda!350121 lambda!350109))))

(declare-fun bs!1592288 () Bool)

(assert (= bs!1592288 (and d!1994330 b!6356395)))

(assert (=> bs!1592288 (= lambda!350121 lambda!349995)))

(declare-fun bs!1592289 () Bool)

(assert (= bs!1592289 (and d!1994330 b!6357057)))

(assert (=> bs!1592289 (not (= lambda!350121 lambda!350078))))

(declare-fun bs!1592290 () Bool)

(assert (= bs!1592290 (and d!1994330 b!6356387)))

(assert (=> bs!1592290 (not (= lambda!350121 lambda!350001))))

(declare-fun bs!1592291 () Bool)

(assert (= bs!1592291 (and d!1994330 b!6357049)))

(assert (=> bs!1592291 (not (= lambda!350121 lambda!350077))))

(declare-fun bs!1592292 () Bool)

(assert (= bs!1592292 (and d!1994330 d!1994256)))

(assert (=> bs!1592292 (not (= lambda!350121 lambda!350103))))

(declare-fun bs!1592293 () Bool)

(assert (= bs!1592293 (and d!1994330 b!6357250)))

(assert (=> bs!1592293 (not (= lambda!350121 lambda!350098))))

(assert (=> bs!1592290 (not (= lambda!350121 lambda!349999))))

(declare-fun bs!1592294 () Bool)

(assert (= bs!1592294 (and d!1994330 d!1994310)))

(assert (=> bs!1592294 (not (= lambda!350121 lambda!350113))))

(assert (=> bs!1592292 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350121 lambda!350102))))

(declare-fun bs!1592295 () Bool)

(assert (= bs!1592295 (and d!1994330 d!1994208)))

(assert (=> bs!1592295 (not (= lambda!350121 lambda!350097))))

(assert (=> bs!1592288 (not (= lambda!350121 lambda!349996))))

(assert (=> bs!1592294 (= lambda!350121 lambda!350112)))

(assert (=> bs!1592295 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350121 lambda!350096))))

(assert (=> bs!1592290 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350121 lambda!350000))))

(declare-fun bs!1592296 () Bool)

(assert (= bs!1592296 (and d!1994330 b!6357258)))

(assert (=> bs!1592296 (not (= lambda!350121 lambda!350099))))

(declare-fun bs!1592297 () Bool)

(assert (= bs!1592297 (and d!1994330 b!6357404)))

(assert (=> bs!1592297 (not (= lambda!350121 lambda!350110))))

(declare-fun bs!1592298 () Bool)

(assert (= bs!1592298 (and d!1994330 d!1994308)))

(assert (=> bs!1592298 (= lambda!350121 lambda!350111)))

(assert (=> bs!1592290 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350121 lambda!349998))))

(declare-fun bs!1592299 () Bool)

(assert (= bs!1592299 (and d!1994330 d!1994242)))

(assert (=> bs!1592299 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350121 lambda!350101))))

(declare-fun bs!1592300 () Bool)

(assert (= bs!1592300 (and d!1994330 d!1994166)))

(assert (=> bs!1592300 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350121 lambda!350061))))

(assert (=> d!1994330 true))

(assert (=> d!1994330 true))

(assert (=> d!1994330 true))

(declare-fun lambda!350122 () Int)

(assert (=> bs!1592287 (not (= lambda!350122 lambda!350109))))

(declare-fun bs!1592301 () Bool)

(assert (= bs!1592301 d!1994330))

(assert (=> bs!1592301 (not (= lambda!350122 lambda!350121))))

(assert (=> bs!1592288 (not (= lambda!350122 lambda!349995))))

(assert (=> bs!1592289 (= (and (= (regOne!33042 r!7292) (regOne!33042 lt!2366179)) (= (regTwo!33042 r!7292) (regTwo!33042 lt!2366179))) (= lambda!350122 lambda!350078))))

(assert (=> bs!1592290 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350122 lambda!350001))))

(assert (=> bs!1592291 (not (= lambda!350122 lambda!350077))))

(assert (=> bs!1592292 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350122 lambda!350103))))

(assert (=> bs!1592293 (not (= lambda!350122 lambda!350098))))

(assert (=> bs!1592290 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350122 lambda!349999))))

(assert (=> bs!1592294 (= lambda!350122 lambda!350113)))

(assert (=> bs!1592292 (not (= lambda!350122 lambda!350102))))

(assert (=> bs!1592295 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350122 lambda!350097))))

(assert (=> bs!1592288 (= lambda!350122 lambda!349996)))

(assert (=> bs!1592294 (not (= lambda!350122 lambda!350112))))

(assert (=> bs!1592295 (not (= lambda!350122 lambda!350096))))

(assert (=> bs!1592290 (not (= lambda!350122 lambda!350000))))

(assert (=> bs!1592296 (= (and (= (regOne!33042 r!7292) (regOne!33042 lt!2366170)) (= (regTwo!33042 r!7292) (regTwo!33042 lt!2366170))) (= lambda!350122 lambda!350099))))

(assert (=> bs!1592297 (= lambda!350122 lambda!350110)))

(assert (=> bs!1592298 (not (= lambda!350122 lambda!350111))))

(assert (=> bs!1592290 (not (= lambda!350122 lambda!349998))))

(assert (=> bs!1592299 (not (= lambda!350122 lambda!350101))))

(assert (=> bs!1592300 (not (= lambda!350122 lambda!350061))))

(assert (=> d!1994330 true))

(assert (=> d!1994330 true))

(assert (=> d!1994330 true))

(assert (=> d!1994330 (= (Exists!3335 lambda!350121) (Exists!3335 lambda!350122))))

(assert (=> d!1994330 true))

(declare-fun _$90!2198 () Unit!158391)

(assert (=> d!1994330 (= (choose!47209 (regOne!33042 r!7292) (regTwo!33042 r!7292) s!2326) _$90!2198)))

(declare-fun m!7163614 () Bool)

(assert (=> bs!1592301 m!7163614))

(declare-fun m!7163616 () Bool)

(assert (=> bs!1592301 m!7163616))

(assert (=> d!1994310 d!1994330))

(declare-fun b!6357544 () Bool)

(declare-fun res!2615978 () Bool)

(declare-fun e!3860608 () Bool)

(assert (=> b!6357544 (=> res!2615978 e!3860608)))

(assert (=> b!6357544 (= res!2615978 (not ((_ is Concat!25110) (regOne!33042 r!7292))))))

(declare-fun e!3860609 () Bool)

(assert (=> b!6357544 (= e!3860609 e!3860608)))

(declare-fun c!1157061 () Bool)

(declare-fun c!1157062 () Bool)

(declare-fun call!542166 () Bool)

(declare-fun bm!542160 () Bool)

(assert (=> bm!542160 (= call!542166 (validRegex!8001 (ite c!1157061 (reg!16594 (regOne!33042 r!7292)) (ite c!1157062 (regOne!33043 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6357545 () Bool)

(declare-fun e!3860604 () Bool)

(declare-fun call!542165 () Bool)

(assert (=> b!6357545 (= e!3860604 call!542165)))

(declare-fun bm!542161 () Bool)

(assert (=> bm!542161 (= call!542165 (validRegex!8001 (ite c!1157062 (regTwo!33043 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292)))))))

(declare-fun b!6357546 () Bool)

(declare-fun e!3860603 () Bool)

(assert (=> b!6357546 (= e!3860603 call!542165)))

(declare-fun bm!542162 () Bool)

(declare-fun call!542167 () Bool)

(assert (=> bm!542162 (= call!542167 call!542166)))

(declare-fun b!6357548 () Bool)

(declare-fun e!3860606 () Bool)

(declare-fun e!3860607 () Bool)

(assert (=> b!6357548 (= e!3860606 e!3860607)))

(assert (=> b!6357548 (= c!1157061 ((_ is Star!16265) (regOne!33042 r!7292)))))

(declare-fun b!6357549 () Bool)

(assert (=> b!6357549 (= e!3860608 e!3860603)))

(declare-fun res!2615980 () Bool)

(assert (=> b!6357549 (=> (not res!2615980) (not e!3860603))))

(assert (=> b!6357549 (= res!2615980 call!542167)))

(declare-fun b!6357550 () Bool)

(declare-fun res!2615976 () Bool)

(assert (=> b!6357550 (=> (not res!2615976) (not e!3860604))))

(assert (=> b!6357550 (= res!2615976 call!542167)))

(assert (=> b!6357550 (= e!3860609 e!3860604)))

(declare-fun b!6357551 () Bool)

(declare-fun e!3860605 () Bool)

(assert (=> b!6357551 (= e!3860607 e!3860605)))

(declare-fun res!2615977 () Bool)

(assert (=> b!6357551 (= res!2615977 (not (nullable!6258 (reg!16594 (regOne!33042 r!7292)))))))

(assert (=> b!6357551 (=> (not res!2615977) (not e!3860605))))

(declare-fun b!6357552 () Bool)

(assert (=> b!6357552 (= e!3860607 e!3860609)))

(assert (=> b!6357552 (= c!1157062 ((_ is Union!16265) (regOne!33042 r!7292)))))

(declare-fun d!1994332 () Bool)

(declare-fun res!2615979 () Bool)

(assert (=> d!1994332 (=> res!2615979 e!3860606)))

(assert (=> d!1994332 (= res!2615979 ((_ is ElementMatch!16265) (regOne!33042 r!7292)))))

(assert (=> d!1994332 (= (validRegex!8001 (regOne!33042 r!7292)) e!3860606)))

(declare-fun b!6357547 () Bool)

(assert (=> b!6357547 (= e!3860605 call!542166)))

(assert (= (and d!1994332 (not res!2615979)) b!6357548))

(assert (= (and b!6357548 c!1157061) b!6357551))

(assert (= (and b!6357548 (not c!1157061)) b!6357552))

(assert (= (and b!6357551 res!2615977) b!6357547))

(assert (= (and b!6357552 c!1157062) b!6357550))

(assert (= (and b!6357552 (not c!1157062)) b!6357544))

(assert (= (and b!6357550 res!2615976) b!6357545))

(assert (= (and b!6357544 (not res!2615978)) b!6357549))

(assert (= (and b!6357549 res!2615980) b!6357546))

(assert (= (or b!6357545 b!6357546) bm!542161))

(assert (= (or b!6357550 b!6357549) bm!542162))

(assert (= (or b!6357547 bm!542162) bm!542160))

(declare-fun m!7163618 () Bool)

(assert (=> bm!542160 m!7163618))

(declare-fun m!7163620 () Bool)

(assert (=> bm!542161 m!7163620))

(declare-fun m!7163622 () Bool)

(assert (=> b!6357551 m!7163622))

(assert (=> d!1994310 d!1994332))

(declare-fun bs!1592302 () Bool)

(declare-fun d!1994334 () Bool)

(assert (= bs!1592302 (and d!1994334 b!6356814)))

(declare-fun lambda!350123 () Int)

(assert (=> bs!1592302 (not (= lambda!350123 lambda!350046))))

(declare-fun bs!1592303 () Bool)

(assert (= bs!1592303 (and d!1994334 b!6356821)))

(assert (=> bs!1592303 (not (= lambda!350123 lambda!350052))))

(declare-fun bs!1592304 () Bool)

(assert (= bs!1592304 (and d!1994334 b!6356819)))

(assert (=> bs!1592304 (not (= lambda!350123 lambda!350051))))

(declare-fun bs!1592305 () Bool)

(assert (= bs!1592305 (and d!1994334 d!1994324)))

(assert (=> bs!1592305 (= lambda!350123 lambda!350116)))

(declare-fun bs!1592306 () Bool)

(assert (= bs!1592306 (and d!1994334 b!6356816)))

(assert (=> bs!1592306 (not (= lambda!350123 lambda!350048))))

(assert (=> d!1994334 (= (nullableZipper!2031 lt!2366193) (exists!2570 lt!2366193 lambda!350123))))

(declare-fun bs!1592307 () Bool)

(assert (= bs!1592307 d!1994334))

(declare-fun m!7163624 () Bool)

(assert (=> bs!1592307 m!7163624))

(assert (=> b!6357451 d!1994334))

(declare-fun d!1994336 () Bool)

(assert (=> d!1994336 (= (isEmpty!37074 (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 Nil!64972 s!2326 s!2326)) (not ((_ is Some!16155) (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 Nil!64972 s!2326 s!2326))))))

(assert (=> d!1994258 d!1994336))

(declare-fun d!1994338 () Bool)

(assert (=> d!1994338 (= (nullable!6258 r!7292) (nullableFct!2204 r!7292))))

(declare-fun bs!1592308 () Bool)

(assert (= bs!1592308 d!1994338))

(declare-fun m!7163626 () Bool)

(assert (=> bs!1592308 m!7163626))

(assert (=> b!6357415 d!1994338))

(declare-fun d!1994340 () Bool)

(assert (=> d!1994340 (= (isEmpty!37073 (tail!12108 s!2326)) ((_ is Nil!64972) (tail!12108 s!2326)))))

(assert (=> b!6357475 d!1994340))

(declare-fun d!1994342 () Bool)

(assert (=> d!1994342 (= (tail!12108 s!2326) (t!378686 s!2326))))

(assert (=> b!6357475 d!1994342))

(declare-fun b!6357553 () Bool)

(declare-fun res!2615983 () Bool)

(declare-fun e!3860615 () Bool)

(assert (=> b!6357553 (=> res!2615983 e!3860615)))

(assert (=> b!6357553 (= res!2615983 (not ((_ is Concat!25110) lt!2366173)))))

(declare-fun e!3860616 () Bool)

(assert (=> b!6357553 (= e!3860616 e!3860615)))

(declare-fun call!542169 () Bool)

(declare-fun c!1157064 () Bool)

(declare-fun c!1157063 () Bool)

(declare-fun bm!542163 () Bool)

(assert (=> bm!542163 (= call!542169 (validRegex!8001 (ite c!1157063 (reg!16594 lt!2366173) (ite c!1157064 (regOne!33043 lt!2366173) (regOne!33042 lt!2366173)))))))

(declare-fun b!6357554 () Bool)

(declare-fun e!3860611 () Bool)

(declare-fun call!542168 () Bool)

(assert (=> b!6357554 (= e!3860611 call!542168)))

(declare-fun bm!542164 () Bool)

(assert (=> bm!542164 (= call!542168 (validRegex!8001 (ite c!1157064 (regTwo!33043 lt!2366173) (regTwo!33042 lt!2366173))))))

(declare-fun b!6357555 () Bool)

(declare-fun e!3860610 () Bool)

(assert (=> b!6357555 (= e!3860610 call!542168)))

(declare-fun bm!542165 () Bool)

(declare-fun call!542170 () Bool)

(assert (=> bm!542165 (= call!542170 call!542169)))

(declare-fun b!6357557 () Bool)

(declare-fun e!3860613 () Bool)

(declare-fun e!3860614 () Bool)

(assert (=> b!6357557 (= e!3860613 e!3860614)))

(assert (=> b!6357557 (= c!1157063 ((_ is Star!16265) lt!2366173))))

(declare-fun b!6357558 () Bool)

(assert (=> b!6357558 (= e!3860615 e!3860610)))

(declare-fun res!2615985 () Bool)

(assert (=> b!6357558 (=> (not res!2615985) (not e!3860610))))

(assert (=> b!6357558 (= res!2615985 call!542170)))

(declare-fun b!6357559 () Bool)

(declare-fun res!2615981 () Bool)

(assert (=> b!6357559 (=> (not res!2615981) (not e!3860611))))

(assert (=> b!6357559 (= res!2615981 call!542170)))

(assert (=> b!6357559 (= e!3860616 e!3860611)))

(declare-fun b!6357560 () Bool)

(declare-fun e!3860612 () Bool)

(assert (=> b!6357560 (= e!3860614 e!3860612)))

(declare-fun res!2615982 () Bool)

(assert (=> b!6357560 (= res!2615982 (not (nullable!6258 (reg!16594 lt!2366173))))))

(assert (=> b!6357560 (=> (not res!2615982) (not e!3860612))))

(declare-fun b!6357561 () Bool)

(assert (=> b!6357561 (= e!3860614 e!3860616)))

(assert (=> b!6357561 (= c!1157064 ((_ is Union!16265) lt!2366173))))

(declare-fun d!1994344 () Bool)

(declare-fun res!2615984 () Bool)

(assert (=> d!1994344 (=> res!2615984 e!3860613)))

(assert (=> d!1994344 (= res!2615984 ((_ is ElementMatch!16265) lt!2366173))))

(assert (=> d!1994344 (= (validRegex!8001 lt!2366173) e!3860613)))

(declare-fun b!6357556 () Bool)

(assert (=> b!6357556 (= e!3860612 call!542169)))

(assert (= (and d!1994344 (not res!2615984)) b!6357557))

(assert (= (and b!6357557 c!1157063) b!6357560))

(assert (= (and b!6357557 (not c!1157063)) b!6357561))

(assert (= (and b!6357560 res!2615982) b!6357556))

(assert (= (and b!6357561 c!1157064) b!6357559))

(assert (= (and b!6357561 (not c!1157064)) b!6357553))

(assert (= (and b!6357559 res!2615981) b!6357554))

(assert (= (and b!6357553 (not res!2615983)) b!6357558))

(assert (= (and b!6357558 res!2615985) b!6357555))

(assert (= (or b!6357554 b!6357555) bm!542164))

(assert (= (or b!6357559 b!6357558) bm!542165))

(assert (= (or b!6357556 bm!542165) bm!542163))

(declare-fun m!7163628 () Bool)

(assert (=> bm!542163 m!7163628))

(declare-fun m!7163630 () Bool)

(assert (=> bm!542164 m!7163630))

(declare-fun m!7163632 () Bool)

(assert (=> b!6357560 m!7163632))

(assert (=> b!6357481 d!1994344))

(declare-fun d!1994346 () Bool)

(declare-fun c!1157068 () Bool)

(assert (=> d!1994346 (= c!1157068 (and ((_ is ElementMatch!16265) (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))) (= (c!1156730 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))) (h!71420 s!2326))))))

(declare-fun e!3860620 () (InoxSet Context!11298))

(assert (=> d!1994346 (= (derivationStepZipperDown!1513 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343))))))) (ite (or c!1156898 c!1156900) lt!2366189 (Context!11299 call!542109)) (h!71420 s!2326)) e!3860620)))

(declare-fun b!6357562 () Bool)

(declare-fun c!1157066 () Bool)

(assert (=> b!6357562 (= c!1157066 ((_ is Star!16265) (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))))

(declare-fun e!3860617 () (InoxSet Context!11298))

(declare-fun e!3860619 () (InoxSet Context!11298))

(assert (=> b!6357562 (= e!3860617 e!3860619)))

(declare-fun bm!542166 () Bool)

(declare-fun call!542174 () (InoxSet Context!11298))

(declare-fun call!542171 () (InoxSet Context!11298))

(assert (=> bm!542166 (= call!542174 call!542171)))

(declare-fun b!6357563 () Bool)

(declare-fun e!3860621 () (InoxSet Context!11298))

(assert (=> b!6357563 (= e!3860620 e!3860621)))

(declare-fun c!1157065 () Bool)

(assert (=> b!6357563 (= c!1157065 ((_ is Union!16265) (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))))

(declare-fun b!6357564 () Bool)

(assert (=> b!6357564 (= e!3860617 call!542174)))

(declare-fun c!1157069 () Bool)

(declare-fun call!542172 () (InoxSet Context!11298))

(declare-fun c!1157067 () Bool)

(declare-fun bm!542167 () Bool)

(declare-fun call!542175 () List!65094)

(assert (=> bm!542167 (= call!542172 (derivationStepZipperDown!1513 (ite c!1157065 (regTwo!33043 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))) (ite c!1157067 (regTwo!33042 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))) (ite c!1157069 (regOne!33042 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))) (reg!16594 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343))))))))))) (ite (or c!1157065 c!1157067) (ite (or c!1156898 c!1156900) lt!2366189 (Context!11299 call!542109)) (Context!11299 call!542175)) (h!71420 s!2326)))))

(declare-fun b!6357565 () Bool)

(declare-fun call!542173 () (InoxSet Context!11298))

(assert (=> b!6357565 (= e!3860621 ((_ map or) call!542173 call!542172))))

(declare-fun b!6357566 () Bool)

(declare-fun e!3860618 () (InoxSet Context!11298))

(assert (=> b!6357566 (= e!3860618 ((_ map or) call!542173 call!542171))))

(declare-fun b!6357567 () Bool)

(assert (=> b!6357567 (= e!3860620 (store ((as const (Array Context!11298 Bool)) false) (ite (or c!1156898 c!1156900) lt!2366189 (Context!11299 call!542109)) true))))

(declare-fun b!6357568 () Bool)

(declare-fun e!3860622 () Bool)

(assert (=> b!6357568 (= e!3860622 (nullable!6258 (regOne!33042 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343))))))))))))

(declare-fun bm!542168 () Bool)

(assert (=> bm!542168 (= call!542171 call!542172)))

(declare-fun call!542176 () List!65094)

(declare-fun bm!542169 () Bool)

(assert (=> bm!542169 (= call!542176 ($colon$colon!2126 (exprs!6149 (ite (or c!1156898 c!1156900) lt!2366189 (Context!11299 call!542109))) (ite (or c!1157067 c!1157069) (regTwo!33042 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))) (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343))))))))))))

(declare-fun bm!542170 () Bool)

(assert (=> bm!542170 (= call!542175 call!542176)))

(declare-fun b!6357569 () Bool)

(assert (=> b!6357569 (= c!1157067 e!3860622)))

(declare-fun res!2615986 () Bool)

(assert (=> b!6357569 (=> (not res!2615986) (not e!3860622))))

(assert (=> b!6357569 (= res!2615986 ((_ is Concat!25110) (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))))

(assert (=> b!6357569 (= e!3860621 e!3860618)))

(declare-fun b!6357570 () Bool)

(assert (=> b!6357570 (= e!3860619 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6357571 () Bool)

(assert (=> b!6357571 (= e!3860619 call!542174)))

(declare-fun bm!542171 () Bool)

(assert (=> bm!542171 (= call!542173 (derivationStepZipperDown!1513 (ite c!1157065 (regOne!33043 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))) (regOne!33042 (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343))))))))) (ite c!1157065 (ite (or c!1156898 c!1156900) lt!2366189 (Context!11299 call!542109)) (Context!11299 call!542176)) (h!71420 s!2326)))))

(declare-fun b!6357572 () Bool)

(assert (=> b!6357572 (= e!3860618 e!3860617)))

(assert (=> b!6357572 (= c!1157069 ((_ is Concat!25110) (ite c!1156898 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156900 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1156902 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))))

(assert (= (and d!1994346 c!1157068) b!6357567))

(assert (= (and d!1994346 (not c!1157068)) b!6357563))

(assert (= (and b!6357563 c!1157065) b!6357565))

(assert (= (and b!6357563 (not c!1157065)) b!6357569))

(assert (= (and b!6357569 res!2615986) b!6357568))

(assert (= (and b!6357569 c!1157067) b!6357566))

(assert (= (and b!6357569 (not c!1157067)) b!6357572))

(assert (= (and b!6357572 c!1157069) b!6357564))

(assert (= (and b!6357572 (not c!1157069)) b!6357562))

(assert (= (and b!6357562 c!1157066) b!6357571))

(assert (= (and b!6357562 (not c!1157066)) b!6357570))

(assert (= (or b!6357564 b!6357571) bm!542170))

(assert (= (or b!6357564 b!6357571) bm!542166))

(assert (= (or b!6357566 bm!542170) bm!542169))

(assert (= (or b!6357566 bm!542166) bm!542168))

(assert (= (or b!6357565 bm!542168) bm!542167))

(assert (= (or b!6357565 b!6357566) bm!542171))

(declare-fun m!7163634 () Bool)

(assert (=> b!6357567 m!7163634))

(declare-fun m!7163636 () Bool)

(assert (=> bm!542167 m!7163636))

(declare-fun m!7163638 () Bool)

(assert (=> b!6357568 m!7163638))

(declare-fun m!7163640 () Bool)

(assert (=> bm!542171 m!7163640))

(declare-fun m!7163642 () Bool)

(assert (=> bm!542169 m!7163642))

(assert (=> bm!542101 d!1994346))

(assert (=> bs!1592279 d!1994140))

(declare-fun d!1994348 () Bool)

(assert (=> d!1994348 (= (head!13023 s!2326) (h!71420 s!2326))))

(assert (=> b!6357293 d!1994348))

(declare-fun b!6357582 () Bool)

(declare-fun e!3860627 () List!65096)

(assert (=> b!6357582 (= e!3860627 (Cons!64972 (h!71420 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972))) (++!14334 (t!378686 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972))) (t!378686 s!2326))))))

(declare-fun b!6357583 () Bool)

(declare-fun res!2615992 () Bool)

(declare-fun e!3860628 () Bool)

(assert (=> b!6357583 (=> (not res!2615992) (not e!3860628))))

(declare-fun lt!2366387 () List!65096)

(declare-fun size!40345 (List!65096) Int)

(assert (=> b!6357583 (= res!2615992 (= (size!40345 lt!2366387) (+ (size!40345 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972))) (size!40345 (t!378686 s!2326)))))))

(declare-fun b!6357581 () Bool)

(assert (=> b!6357581 (= e!3860627 (t!378686 s!2326))))

(declare-fun b!6357584 () Bool)

(assert (=> b!6357584 (= e!3860628 (or (not (= (t!378686 s!2326) Nil!64972)) (= lt!2366387 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)))))))

(declare-fun d!1994350 () Bool)

(assert (=> d!1994350 e!3860628))

(declare-fun res!2615991 () Bool)

(assert (=> d!1994350 (=> (not res!2615991) (not e!3860628))))

(declare-fun content!12267 (List!65096) (InoxSet C!32800))

(assert (=> d!1994350 (= res!2615991 (= (content!12267 lt!2366387) ((_ map or) (content!12267 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972))) (content!12267 (t!378686 s!2326)))))))

(assert (=> d!1994350 (= lt!2366387 e!3860627)))

(declare-fun c!1157072 () Bool)

(assert (=> d!1994350 (= c!1157072 ((_ is Nil!64972) (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972))))))

(assert (=> d!1994350 (= (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326)) lt!2366387)))

(assert (= (and d!1994350 c!1157072) b!6357581))

(assert (= (and d!1994350 (not c!1157072)) b!6357582))

(assert (= (and d!1994350 res!2615991) b!6357583))

(assert (= (and b!6357583 res!2615992) b!6357584))

(declare-fun m!7163644 () Bool)

(assert (=> b!6357582 m!7163644))

(declare-fun m!7163646 () Bool)

(assert (=> b!6357583 m!7163646))

(assert (=> b!6357583 m!7163242))

(declare-fun m!7163648 () Bool)

(assert (=> b!6357583 m!7163648))

(declare-fun m!7163650 () Bool)

(assert (=> b!6357583 m!7163650))

(declare-fun m!7163652 () Bool)

(assert (=> d!1994350 m!7163652))

(assert (=> d!1994350 m!7163242))

(declare-fun m!7163654 () Bool)

(assert (=> d!1994350 m!7163654))

(declare-fun m!7163656 () Bool)

(assert (=> d!1994350 m!7163656))

(assert (=> b!6357338 d!1994350))

(declare-fun b!6357586 () Bool)

(declare-fun e!3860629 () List!65096)

(assert (=> b!6357586 (= e!3860629 (Cons!64972 (h!71420 Nil!64972) (++!14334 (t!378686 Nil!64972) (Cons!64972 (h!71420 s!2326) Nil!64972))))))

(declare-fun b!6357587 () Bool)

(declare-fun res!2615994 () Bool)

(declare-fun e!3860630 () Bool)

(assert (=> b!6357587 (=> (not res!2615994) (not e!3860630))))

(declare-fun lt!2366388 () List!65096)

(assert (=> b!6357587 (= res!2615994 (= (size!40345 lt!2366388) (+ (size!40345 Nil!64972) (size!40345 (Cons!64972 (h!71420 s!2326) Nil!64972)))))))

(declare-fun b!6357585 () Bool)

(assert (=> b!6357585 (= e!3860629 (Cons!64972 (h!71420 s!2326) Nil!64972))))

(declare-fun b!6357588 () Bool)

(assert (=> b!6357588 (= e!3860630 (or (not (= (Cons!64972 (h!71420 s!2326) Nil!64972) Nil!64972)) (= lt!2366388 Nil!64972)))))

(declare-fun d!1994352 () Bool)

(assert (=> d!1994352 e!3860630))

(declare-fun res!2615993 () Bool)

(assert (=> d!1994352 (=> (not res!2615993) (not e!3860630))))

(assert (=> d!1994352 (= res!2615993 (= (content!12267 lt!2366388) ((_ map or) (content!12267 Nil!64972) (content!12267 (Cons!64972 (h!71420 s!2326) Nil!64972)))))))

(assert (=> d!1994352 (= lt!2366388 e!3860629)))

(declare-fun c!1157073 () Bool)

(assert (=> d!1994352 (= c!1157073 ((_ is Nil!64972) Nil!64972))))

(assert (=> d!1994352 (= (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) lt!2366388)))

(assert (= (and d!1994352 c!1157073) b!6357585))

(assert (= (and d!1994352 (not c!1157073)) b!6357586))

(assert (= (and d!1994352 res!2615993) b!6357587))

(assert (= (and b!6357587 res!2615994) b!6357588))

(declare-fun m!7163658 () Bool)

(assert (=> b!6357586 m!7163658))

(declare-fun m!7163660 () Bool)

(assert (=> b!6357587 m!7163660))

(declare-fun m!7163662 () Bool)

(assert (=> b!6357587 m!7163662))

(declare-fun m!7163664 () Bool)

(assert (=> b!6357587 m!7163664))

(declare-fun m!7163666 () Bool)

(assert (=> d!1994352 m!7163666))

(declare-fun m!7163668 () Bool)

(assert (=> d!1994352 m!7163668))

(declare-fun m!7163670 () Bool)

(assert (=> d!1994352 m!7163670))

(assert (=> b!6357338 d!1994352))

(declare-fun d!1994354 () Bool)

(assert (=> d!1994354 (= (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326)) s!2326)))

(declare-fun lt!2366391 () Unit!158391)

(declare-fun choose!47215 (List!65096 C!32800 List!65096 List!65096) Unit!158391)

(assert (=> d!1994354 (= lt!2366391 (choose!47215 Nil!64972 (h!71420 s!2326) (t!378686 s!2326) s!2326))))

(assert (=> d!1994354 (= (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) (t!378686 s!2326))) s!2326)))

(assert (=> d!1994354 (= (lemmaMoveElementToOtherListKeepsConcatEq!2429 Nil!64972 (h!71420 s!2326) (t!378686 s!2326) s!2326) lt!2366391)))

(declare-fun bs!1592309 () Bool)

(assert (= bs!1592309 d!1994354))

(assert (=> bs!1592309 m!7163242))

(assert (=> bs!1592309 m!7163242))

(assert (=> bs!1592309 m!7163244))

(declare-fun m!7163672 () Bool)

(assert (=> bs!1592309 m!7163672))

(declare-fun m!7163674 () Bool)

(assert (=> bs!1592309 m!7163674))

(assert (=> b!6357338 d!1994354))

(declare-fun b!6357589 () Bool)

(declare-fun e!3860633 () Bool)

(assert (=> b!6357589 (= e!3860633 (matchR!8448 lt!2366179 (t!378686 s!2326)))))

(declare-fun b!6357590 () Bool)

(declare-fun e!3860634 () Option!16156)

(declare-fun e!3860631 () Option!16156)

(assert (=> b!6357590 (= e!3860634 e!3860631)))

(declare-fun c!1157075 () Bool)

(assert (=> b!6357590 (= c!1157075 ((_ is Nil!64972) (t!378686 s!2326)))))

(declare-fun b!6357591 () Bool)

(declare-fun res!2615996 () Bool)

(declare-fun e!3860635 () Bool)

(assert (=> b!6357591 (=> (not res!2615996) (not e!3860635))))

(declare-fun lt!2366394 () Option!16156)

(assert (=> b!6357591 (= res!2615996 (matchR!8448 (regOne!33042 (regOne!33042 r!7292)) (_1!36547 (get!22482 lt!2366394))))))

(declare-fun b!6357592 () Bool)

(declare-fun res!2615998 () Bool)

(assert (=> b!6357592 (=> (not res!2615998) (not e!3860635))))

(assert (=> b!6357592 (= res!2615998 (matchR!8448 lt!2366179 (_2!36547 (get!22482 lt!2366394))))))

(declare-fun b!6357593 () Bool)

(assert (=> b!6357593 (= e!3860631 None!16155)))

(declare-fun d!1994356 () Bool)

(declare-fun e!3860632 () Bool)

(assert (=> d!1994356 e!3860632))

(declare-fun res!2615999 () Bool)

(assert (=> d!1994356 (=> res!2615999 e!3860632)))

(assert (=> d!1994356 (= res!2615999 e!3860635)))

(declare-fun res!2615997 () Bool)

(assert (=> d!1994356 (=> (not res!2615997) (not e!3860635))))

(assert (=> d!1994356 (= res!2615997 (isDefined!12859 lt!2366394))))

(assert (=> d!1994356 (= lt!2366394 e!3860634)))

(declare-fun c!1157074 () Bool)

(assert (=> d!1994356 (= c!1157074 e!3860633)))

(declare-fun res!2615995 () Bool)

(assert (=> d!1994356 (=> (not res!2615995) (not e!3860633))))

(assert (=> d!1994356 (= res!2615995 (matchR!8448 (regOne!33042 (regOne!33042 r!7292)) (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972))))))

(assert (=> d!1994356 (validRegex!8001 (regOne!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994356 (= (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326) s!2326) lt!2366394)))

(declare-fun b!6357594 () Bool)

(declare-fun lt!2366392 () Unit!158391)

(declare-fun lt!2366393 () Unit!158391)

(assert (=> b!6357594 (= lt!2366392 lt!2366393)))

(assert (=> b!6357594 (= (++!14334 (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (Cons!64972 (h!71420 (t!378686 s!2326)) Nil!64972)) (t!378686 (t!378686 s!2326))) s!2326)))

(assert (=> b!6357594 (= lt!2366393 (lemmaMoveElementToOtherListKeepsConcatEq!2429 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (h!71420 (t!378686 s!2326)) (t!378686 (t!378686 s!2326)) s!2326))))

(assert (=> b!6357594 (= e!3860631 (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (Cons!64972 (h!71420 (t!378686 s!2326)) Nil!64972)) (t!378686 (t!378686 s!2326)) s!2326))))

(declare-fun b!6357595 () Bool)

(assert (=> b!6357595 (= e!3860635 (= (++!14334 (_1!36547 (get!22482 lt!2366394)) (_2!36547 (get!22482 lt!2366394))) s!2326))))

(declare-fun b!6357596 () Bool)

(assert (=> b!6357596 (= e!3860634 (Some!16155 (tuple2!66489 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326))))))

(declare-fun b!6357597 () Bool)

(assert (=> b!6357597 (= e!3860632 (not (isDefined!12859 lt!2366394)))))

(assert (= (and d!1994356 res!2615995) b!6357589))

(assert (= (and d!1994356 c!1157074) b!6357596))

(assert (= (and d!1994356 (not c!1157074)) b!6357590))

(assert (= (and b!6357590 c!1157075) b!6357593))

(assert (= (and b!6357590 (not c!1157075)) b!6357594))

(assert (= (and d!1994356 res!2615997) b!6357591))

(assert (= (and b!6357591 res!2615996) b!6357592))

(assert (= (and b!6357592 res!2615998) b!6357595))

(assert (= (and d!1994356 (not res!2615999)) b!6357597))

(declare-fun m!7163676 () Bool)

(assert (=> b!6357597 m!7163676))

(declare-fun m!7163678 () Bool)

(assert (=> b!6357589 m!7163678))

(declare-fun m!7163680 () Bool)

(assert (=> b!6357595 m!7163680))

(declare-fun m!7163682 () Bool)

(assert (=> b!6357595 m!7163682))

(assert (=> b!6357592 m!7163680))

(declare-fun m!7163684 () Bool)

(assert (=> b!6357592 m!7163684))

(assert (=> d!1994356 m!7163676))

(assert (=> d!1994356 m!7163242))

(declare-fun m!7163686 () Bool)

(assert (=> d!1994356 m!7163686))

(assert (=> d!1994356 m!7163132))

(assert (=> b!6357591 m!7163680))

(declare-fun m!7163688 () Bool)

(assert (=> b!6357591 m!7163688))

(assert (=> b!6357594 m!7163242))

(declare-fun m!7163690 () Bool)

(assert (=> b!6357594 m!7163690))

(assert (=> b!6357594 m!7163690))

(declare-fun m!7163692 () Bool)

(assert (=> b!6357594 m!7163692))

(assert (=> b!6357594 m!7163242))

(declare-fun m!7163694 () Bool)

(assert (=> b!6357594 m!7163694))

(assert (=> b!6357594 m!7163690))

(declare-fun m!7163696 () Bool)

(assert (=> b!6357594 m!7163696))

(assert (=> b!6357338 d!1994356))

(declare-fun b!6357598 () Bool)

(declare-fun e!3860637 () (InoxSet Context!11298))

(declare-fun e!3860636 () (InoxSet Context!11298))

(assert (=> b!6357598 (= e!3860637 e!3860636)))

(declare-fun c!1157077 () Bool)

(assert (=> b!6357598 (= c!1157077 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun bm!542172 () Bool)

(declare-fun call!542177 () (InoxSet Context!11298))

(assert (=> bm!542172 (= call!542177 (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))))) (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343))))))) (h!71420 s!2326)))))

(declare-fun b!6357600 () Bool)

(assert (=> b!6357600 (= e!3860637 ((_ map or) call!542177 (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343))))))) (h!71420 s!2326))))))

(declare-fun b!6357601 () Bool)

(declare-fun e!3860638 () Bool)

(assert (=> b!6357601 (= e!3860638 (nullable!6258 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343))))))))))

(declare-fun b!6357602 () Bool)

(assert (=> b!6357602 (= e!3860636 ((as const (Array Context!11298 Bool)) false))))

(declare-fun d!1994358 () Bool)

(declare-fun c!1157076 () Bool)

(assert (=> d!1994358 (= c!1157076 e!3860638)))

(declare-fun res!2616000 () Bool)

(assert (=> d!1994358 (=> (not res!2616000) (not e!3860638))))

(assert (=> d!1994358 (= res!2616000 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(assert (=> d!1994358 (= (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))) (h!71420 s!2326)) e!3860637)))

(declare-fun b!6357599 () Bool)

(assert (=> b!6357599 (= e!3860636 call!542177)))

(assert (= (and d!1994358 res!2616000) b!6357601))

(assert (= (and d!1994358 c!1157076) b!6357600))

(assert (= (and d!1994358 (not c!1157076)) b!6357598))

(assert (= (and b!6357598 c!1157077) b!6357599))

(assert (= (and b!6357598 (not c!1157077)) b!6357602))

(assert (= (or b!6357600 b!6357599) bm!542172))

(declare-fun m!7163698 () Bool)

(assert (=> bm!542172 m!7163698))

(declare-fun m!7163700 () Bool)

(assert (=> b!6357600 m!7163700))

(declare-fun m!7163702 () Bool)

(assert (=> b!6357601 m!7163702))

(assert (=> b!6356838 d!1994358))

(declare-fun d!1994360 () Bool)

(assert (=> d!1994360 (= (head!13022 lt!2366196) (h!71418 lt!2366196))))

(assert (=> b!6357145 d!1994360))

(declare-fun d!1994362 () Bool)

(assert (=> d!1994362 (= (isEmpty!37073 s!2326) ((_ is Nil!64972) s!2326))))

(assert (=> bm!542158 d!1994362))

(declare-fun d!1994364 () Bool)

(assert (=> d!1994364 (= (isDefined!12859 lt!2366378) (not (isEmpty!37074 lt!2366378)))))

(declare-fun bs!1592310 () Bool)

(assert (= bs!1592310 d!1994364))

(declare-fun m!7163704 () Bool)

(assert (=> bs!1592310 m!7163704))

(assert (=> d!1994302 d!1994364))

(declare-fun b!6357603 () Bool)

(declare-fun e!3860645 () Bool)

(assert (=> b!6357603 (= e!3860645 (not (= (head!13023 Nil!64972) (c!1156730 (regOne!33042 r!7292)))))))

(declare-fun b!6357604 () Bool)

(declare-fun res!2616005 () Bool)

(declare-fun e!3860644 () Bool)

(assert (=> b!6357604 (=> (not res!2616005) (not e!3860644))))

(declare-fun call!542178 () Bool)

(assert (=> b!6357604 (= res!2616005 (not call!542178))))

(declare-fun b!6357605 () Bool)

(declare-fun e!3860642 () Bool)

(declare-fun lt!2366395 () Bool)

(assert (=> b!6357605 (= e!3860642 (= lt!2366395 call!542178))))

(declare-fun bm!542173 () Bool)

(assert (=> bm!542173 (= call!542178 (isEmpty!37073 Nil!64972))))

(declare-fun b!6357606 () Bool)

(declare-fun e!3860641 () Bool)

(declare-fun e!3860639 () Bool)

(assert (=> b!6357606 (= e!3860641 e!3860639)))

(declare-fun res!2616004 () Bool)

(assert (=> b!6357606 (=> (not res!2616004) (not e!3860639))))

(assert (=> b!6357606 (= res!2616004 (not lt!2366395))))

(declare-fun b!6357607 () Bool)

(assert (=> b!6357607 (= e!3860644 (= (head!13023 Nil!64972) (c!1156730 (regOne!33042 r!7292))))))

(declare-fun b!6357608 () Bool)

(declare-fun e!3860640 () Bool)

(assert (=> b!6357608 (= e!3860640 (not lt!2366395))))

(declare-fun b!6357609 () Bool)

(assert (=> b!6357609 (= e!3860639 e!3860645)))

(declare-fun res!2616006 () Bool)

(assert (=> b!6357609 (=> res!2616006 e!3860645)))

(assert (=> b!6357609 (= res!2616006 call!542178)))

(declare-fun b!6357610 () Bool)

(assert (=> b!6357610 (= e!3860642 e!3860640)))

(declare-fun c!1157078 () Bool)

(assert (=> b!6357610 (= c!1157078 ((_ is EmptyLang!16265) (regOne!33042 r!7292)))))

(declare-fun b!6357611 () Bool)

(declare-fun e!3860643 () Bool)

(assert (=> b!6357611 (= e!3860643 (nullable!6258 (regOne!33042 r!7292)))))

(declare-fun b!6357612 () Bool)

(declare-fun res!2616008 () Bool)

(assert (=> b!6357612 (=> res!2616008 e!3860641)))

(assert (=> b!6357612 (= res!2616008 (not ((_ is ElementMatch!16265) (regOne!33042 r!7292))))))

(assert (=> b!6357612 (= e!3860640 e!3860641)))

(declare-fun b!6357613 () Bool)

(declare-fun res!2616003 () Bool)

(assert (=> b!6357613 (=> res!2616003 e!3860645)))

(assert (=> b!6357613 (= res!2616003 (not (isEmpty!37073 (tail!12108 Nil!64972))))))

(declare-fun b!6357615 () Bool)

(declare-fun res!2616001 () Bool)

(assert (=> b!6357615 (=> res!2616001 e!3860641)))

(assert (=> b!6357615 (= res!2616001 e!3860644)))

(declare-fun res!2616007 () Bool)

(assert (=> b!6357615 (=> (not res!2616007) (not e!3860644))))

(assert (=> b!6357615 (= res!2616007 lt!2366395)))

(declare-fun b!6357616 () Bool)

(declare-fun res!2616002 () Bool)

(assert (=> b!6357616 (=> (not res!2616002) (not e!3860644))))

(assert (=> b!6357616 (= res!2616002 (isEmpty!37073 (tail!12108 Nil!64972)))))

(declare-fun d!1994366 () Bool)

(assert (=> d!1994366 e!3860642))

(declare-fun c!1157080 () Bool)

(assert (=> d!1994366 (= c!1157080 ((_ is EmptyExpr!16265) (regOne!33042 r!7292)))))

(assert (=> d!1994366 (= lt!2366395 e!3860643)))

(declare-fun c!1157079 () Bool)

(assert (=> d!1994366 (= c!1157079 (isEmpty!37073 Nil!64972))))

(assert (=> d!1994366 (validRegex!8001 (regOne!33042 r!7292))))

(assert (=> d!1994366 (= (matchR!8448 (regOne!33042 r!7292) Nil!64972) lt!2366395)))

(declare-fun b!6357614 () Bool)

(assert (=> b!6357614 (= e!3860643 (matchR!8448 (derivativeStep!4970 (regOne!33042 r!7292) (head!13023 Nil!64972)) (tail!12108 Nil!64972)))))

(assert (= (and d!1994366 c!1157079) b!6357611))

(assert (= (and d!1994366 (not c!1157079)) b!6357614))

(assert (= (and d!1994366 c!1157080) b!6357605))

(assert (= (and d!1994366 (not c!1157080)) b!6357610))

(assert (= (and b!6357610 c!1157078) b!6357608))

(assert (= (and b!6357610 (not c!1157078)) b!6357612))

(assert (= (and b!6357612 (not res!2616008)) b!6357615))

(assert (= (and b!6357615 res!2616007) b!6357604))

(assert (= (and b!6357604 res!2616005) b!6357616))

(assert (= (and b!6357616 res!2616002) b!6357607))

(assert (= (and b!6357615 (not res!2616001)) b!6357606))

(assert (= (and b!6357606 res!2616004) b!6357609))

(assert (= (and b!6357609 (not res!2616006)) b!6357613))

(assert (= (and b!6357613 (not res!2616003)) b!6357603))

(assert (= (or b!6357605 b!6357604 b!6357609) bm!542173))

(declare-fun m!7163706 () Bool)

(assert (=> b!6357613 m!7163706))

(assert (=> b!6357613 m!7163706))

(declare-fun m!7163708 () Bool)

(assert (=> b!6357613 m!7163708))

(declare-fun m!7163710 () Bool)

(assert (=> b!6357614 m!7163710))

(assert (=> b!6357614 m!7163710))

(declare-fun m!7163712 () Bool)

(assert (=> b!6357614 m!7163712))

(assert (=> b!6357614 m!7163706))

(assert (=> b!6357614 m!7163712))

(assert (=> b!6357614 m!7163706))

(declare-fun m!7163714 () Bool)

(assert (=> b!6357614 m!7163714))

(assert (=> b!6357616 m!7163706))

(assert (=> b!6357616 m!7163706))

(assert (=> b!6357616 m!7163708))

(assert (=> b!6357607 m!7163710))

(declare-fun m!7163716 () Bool)

(assert (=> b!6357611 m!7163716))

(declare-fun m!7163718 () Bool)

(assert (=> d!1994366 m!7163718))

(assert (=> d!1994366 m!7163568))

(assert (=> bm!542173 m!7163718))

(assert (=> b!6357603 m!7163710))

(assert (=> d!1994302 d!1994366))

(assert (=> d!1994302 d!1994332))

(declare-fun bs!1592311 () Bool)

(declare-fun b!6357617 () Bool)

(assert (= bs!1592311 (and b!6357617 b!6357396)))

(declare-fun lambda!350124 () Int)

(assert (=> bs!1592311 (= (and (= (reg!16594 (regTwo!33043 lt!2366179)) (reg!16594 r!7292)) (= (regTwo!33043 lt!2366179) r!7292)) (= lambda!350124 lambda!350109))))

(declare-fun bs!1592312 () Bool)

(assert (= bs!1592312 (and b!6357617 d!1994330)))

(assert (=> bs!1592312 (not (= lambda!350124 lambda!350121))))

(declare-fun bs!1592313 () Bool)

(assert (= bs!1592313 (and b!6357617 b!6356395)))

(assert (=> bs!1592313 (not (= lambda!350124 lambda!349995))))

(declare-fun bs!1592314 () Bool)

(assert (= bs!1592314 (and b!6357617 b!6357057)))

(assert (=> bs!1592314 (not (= lambda!350124 lambda!350078))))

(assert (=> bs!1592312 (not (= lambda!350124 lambda!350122))))

(declare-fun bs!1592315 () Bool)

(assert (= bs!1592315 (and b!6357617 b!6356387)))

(assert (=> bs!1592315 (not (= lambda!350124 lambda!350001))))

(declare-fun bs!1592316 () Bool)

(assert (= bs!1592316 (and b!6357617 b!6357049)))

(assert (=> bs!1592316 (= (and (= (reg!16594 (regTwo!33043 lt!2366179)) (reg!16594 lt!2366179)) (= (regTwo!33043 lt!2366179) lt!2366179)) (= lambda!350124 lambda!350077))))

(declare-fun bs!1592317 () Bool)

(assert (= bs!1592317 (and b!6357617 d!1994256)))

(assert (=> bs!1592317 (not (= lambda!350124 lambda!350103))))

(declare-fun bs!1592318 () Bool)

(assert (= bs!1592318 (and b!6357617 b!6357250)))

(assert (=> bs!1592318 (= (and (= (reg!16594 (regTwo!33043 lt!2366179)) (reg!16594 lt!2366170)) (= (regTwo!33043 lt!2366179) lt!2366170)) (= lambda!350124 lambda!350098))))

(assert (=> bs!1592315 (not (= lambda!350124 lambda!349999))))

(declare-fun bs!1592319 () Bool)

(assert (= bs!1592319 (and b!6357617 d!1994310)))

(assert (=> bs!1592319 (not (= lambda!350124 lambda!350113))))

(assert (=> bs!1592317 (not (= lambda!350124 lambda!350102))))

(declare-fun bs!1592320 () Bool)

(assert (= bs!1592320 (and b!6357617 d!1994208)))

(assert (=> bs!1592320 (not (= lambda!350124 lambda!350097))))

(assert (=> bs!1592313 (not (= lambda!350124 lambda!349996))))

(assert (=> bs!1592319 (not (= lambda!350124 lambda!350112))))

(assert (=> bs!1592320 (not (= lambda!350124 lambda!350096))))

(assert (=> bs!1592315 (not (= lambda!350124 lambda!350000))))

(declare-fun bs!1592321 () Bool)

(assert (= bs!1592321 (and b!6357617 b!6357258)))

(assert (=> bs!1592321 (not (= lambda!350124 lambda!350099))))

(declare-fun bs!1592322 () Bool)

(assert (= bs!1592322 (and b!6357617 b!6357404)))

(assert (=> bs!1592322 (not (= lambda!350124 lambda!350110))))

(declare-fun bs!1592323 () Bool)

(assert (= bs!1592323 (and b!6357617 d!1994308)))

(assert (=> bs!1592323 (not (= lambda!350124 lambda!350111))))

(assert (=> bs!1592315 (not (= lambda!350124 lambda!349998))))

(declare-fun bs!1592324 () Bool)

(assert (= bs!1592324 (and b!6357617 d!1994242)))

(assert (=> bs!1592324 (not (= lambda!350124 lambda!350101))))

(declare-fun bs!1592325 () Bool)

(assert (= bs!1592325 (and b!6357617 d!1994166)))

(assert (=> bs!1592325 (not (= lambda!350124 lambda!350061))))

(assert (=> b!6357617 true))

(assert (=> b!6357617 true))

(declare-fun bs!1592326 () Bool)

(declare-fun b!6357625 () Bool)

(assert (= bs!1592326 (and b!6357625 b!6357396)))

(declare-fun lambda!350125 () Int)

(assert (=> bs!1592326 (not (= lambda!350125 lambda!350109))))

(declare-fun bs!1592327 () Bool)

(assert (= bs!1592327 (and b!6357625 b!6356395)))

(assert (=> bs!1592327 (not (= lambda!350125 lambda!349995))))

(declare-fun bs!1592328 () Bool)

(assert (= bs!1592328 (and b!6357625 b!6357057)))

(assert (=> bs!1592328 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regOne!33042 lt!2366179)) (= (regTwo!33042 (regTwo!33043 lt!2366179)) (regTwo!33042 lt!2366179))) (= lambda!350125 lambda!350078))))

(declare-fun bs!1592329 () Bool)

(assert (= bs!1592329 (and b!6357625 d!1994330)))

(assert (=> bs!1592329 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 lt!2366179)) (regTwo!33042 r!7292))) (= lambda!350125 lambda!350122))))

(declare-fun bs!1592330 () Bool)

(assert (= bs!1592330 (and b!6357625 b!6356387)))

(assert (=> bs!1592330 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 lt!2366179)) lt!2366173)) (= lambda!350125 lambda!350001))))

(declare-fun bs!1592331 () Bool)

(assert (= bs!1592331 (and b!6357625 b!6357049)))

(assert (=> bs!1592331 (not (= lambda!350125 lambda!350077))))

(declare-fun bs!1592332 () Bool)

(assert (= bs!1592332 (and b!6357625 d!1994256)))

(assert (=> bs!1592332 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 lt!2366179)) lt!2366173)) (= lambda!350125 lambda!350103))))

(declare-fun bs!1592333 () Bool)

(assert (= bs!1592333 (and b!6357625 b!6357250)))

(assert (=> bs!1592333 (not (= lambda!350125 lambda!350098))))

(assert (=> bs!1592330 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 lt!2366179)) lt!2366179)) (= lambda!350125 lambda!349999))))

(declare-fun bs!1592334 () Bool)

(assert (= bs!1592334 (and b!6357625 d!1994310)))

(assert (=> bs!1592334 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 lt!2366179)) (regTwo!33042 r!7292))) (= lambda!350125 lambda!350113))))

(assert (=> bs!1592332 (not (= lambda!350125 lambda!350102))))

(declare-fun bs!1592335 () Bool)

(assert (= bs!1592335 (and b!6357625 d!1994208)))

(assert (=> bs!1592335 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 lt!2366179)) lt!2366179)) (= lambda!350125 lambda!350097))))

(assert (=> bs!1592329 (not (= lambda!350125 lambda!350121))))

(declare-fun bs!1592336 () Bool)

(assert (= bs!1592336 (and b!6357625 b!6357617)))

(assert (=> bs!1592336 (not (= lambda!350125 lambda!350124))))

(assert (=> bs!1592327 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 lt!2366179)) (regTwo!33042 r!7292))) (= lambda!350125 lambda!349996))))

(assert (=> bs!1592334 (not (= lambda!350125 lambda!350112))))

(assert (=> bs!1592335 (not (= lambda!350125 lambda!350096))))

(assert (=> bs!1592330 (not (= lambda!350125 lambda!350000))))

(declare-fun bs!1592337 () Bool)

(assert (= bs!1592337 (and b!6357625 b!6357258)))

(assert (=> bs!1592337 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regOne!33042 lt!2366170)) (= (regTwo!33042 (regTwo!33043 lt!2366179)) (regTwo!33042 lt!2366170))) (= lambda!350125 lambda!350099))))

(declare-fun bs!1592338 () Bool)

(assert (= bs!1592338 (and b!6357625 b!6357404)))

(assert (=> bs!1592338 (= (and (= (regOne!33042 (regTwo!33043 lt!2366179)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 lt!2366179)) (regTwo!33042 r!7292))) (= lambda!350125 lambda!350110))))

(declare-fun bs!1592339 () Bool)

(assert (= bs!1592339 (and b!6357625 d!1994308)))

(assert (=> bs!1592339 (not (= lambda!350125 lambda!350111))))

(assert (=> bs!1592330 (not (= lambda!350125 lambda!349998))))

(declare-fun bs!1592340 () Bool)

(assert (= bs!1592340 (and b!6357625 d!1994242)))

(assert (=> bs!1592340 (not (= lambda!350125 lambda!350101))))

(declare-fun bs!1592341 () Bool)

(assert (= bs!1592341 (and b!6357625 d!1994166)))

(assert (=> bs!1592341 (not (= lambda!350125 lambda!350061))))

(assert (=> b!6357625 true))

(assert (=> b!6357625 true))

(declare-fun e!3860648 () Bool)

(declare-fun call!542180 () Bool)

(assert (=> b!6357617 (= e!3860648 call!542180)))

(declare-fun bm!542174 () Bool)

(declare-fun call!542179 () Bool)

(assert (=> bm!542174 (= call!542179 (isEmpty!37073 s!2326))))

(declare-fun b!6357618 () Bool)

(declare-fun e!3860649 () Bool)

(assert (=> b!6357618 (= e!3860649 call!542179)))

(declare-fun b!6357619 () Bool)

(declare-fun e!3860651 () Bool)

(assert (=> b!6357619 (= e!3860651 (= s!2326 (Cons!64972 (c!1156730 (regTwo!33043 lt!2366179)) Nil!64972)))))

(declare-fun b!6357620 () Bool)

(declare-fun e!3860652 () Bool)

(assert (=> b!6357620 (= e!3860652 (matchRSpec!3366 (regTwo!33043 (regTwo!33043 lt!2366179)) s!2326))))

(declare-fun b!6357621 () Bool)

(declare-fun res!2616010 () Bool)

(assert (=> b!6357621 (=> res!2616010 e!3860648)))

(assert (=> b!6357621 (= res!2616010 call!542179)))

(declare-fun e!3860646 () Bool)

(assert (=> b!6357621 (= e!3860646 e!3860648)))

(declare-fun bm!542175 () Bool)

(declare-fun c!1157081 () Bool)

(assert (=> bm!542175 (= call!542180 (Exists!3335 (ite c!1157081 lambda!350124 lambda!350125)))))

(declare-fun b!6357622 () Bool)

(declare-fun e!3860647 () Bool)

(assert (=> b!6357622 (= e!3860647 e!3860646)))

(assert (=> b!6357622 (= c!1157081 ((_ is Star!16265) (regTwo!33043 lt!2366179)))))

(declare-fun d!1994368 () Bool)

(declare-fun c!1157084 () Bool)

(assert (=> d!1994368 (= c!1157084 ((_ is EmptyExpr!16265) (regTwo!33043 lt!2366179)))))

(assert (=> d!1994368 (= (matchRSpec!3366 (regTwo!33043 lt!2366179) s!2326) e!3860649)))

(declare-fun b!6357623 () Bool)

(declare-fun c!1157083 () Bool)

(assert (=> b!6357623 (= c!1157083 ((_ is ElementMatch!16265) (regTwo!33043 lt!2366179)))))

(declare-fun e!3860650 () Bool)

(assert (=> b!6357623 (= e!3860650 e!3860651)))

(declare-fun b!6357624 () Bool)

(declare-fun c!1157082 () Bool)

(assert (=> b!6357624 (= c!1157082 ((_ is Union!16265) (regTwo!33043 lt!2366179)))))

(assert (=> b!6357624 (= e!3860651 e!3860647)))

(assert (=> b!6357625 (= e!3860646 call!542180)))

(declare-fun b!6357626 () Bool)

(assert (=> b!6357626 (= e!3860647 e!3860652)))

(declare-fun res!2616009 () Bool)

(assert (=> b!6357626 (= res!2616009 (matchRSpec!3366 (regOne!33043 (regTwo!33043 lt!2366179)) s!2326))))

(assert (=> b!6357626 (=> res!2616009 e!3860652)))

(declare-fun b!6357627 () Bool)

(assert (=> b!6357627 (= e!3860649 e!3860650)))

(declare-fun res!2616011 () Bool)

(assert (=> b!6357627 (= res!2616011 (not ((_ is EmptyLang!16265) (regTwo!33043 lt!2366179))))))

(assert (=> b!6357627 (=> (not res!2616011) (not e!3860650))))

(assert (= (and d!1994368 c!1157084) b!6357618))

(assert (= (and d!1994368 (not c!1157084)) b!6357627))

(assert (= (and b!6357627 res!2616011) b!6357623))

(assert (= (and b!6357623 c!1157083) b!6357619))

(assert (= (and b!6357623 (not c!1157083)) b!6357624))

(assert (= (and b!6357624 c!1157082) b!6357626))

(assert (= (and b!6357624 (not c!1157082)) b!6357622))

(assert (= (and b!6357626 (not res!2616009)) b!6357620))

(assert (= (and b!6357622 c!1157081) b!6357621))

(assert (= (and b!6357622 (not c!1157081)) b!6357625))

(assert (= (and b!6357621 (not res!2616010)) b!6357617))

(assert (= (or b!6357617 b!6357625) bm!542175))

(assert (= (or b!6357618 b!6357621) bm!542174))

(assert (=> bm!542174 m!7163190))

(declare-fun m!7163720 () Bool)

(assert (=> b!6357620 m!7163720))

(declare-fun m!7163722 () Bool)

(assert (=> bm!542175 m!7163722))

(declare-fun m!7163724 () Bool)

(assert (=> b!6357626 m!7163724))

(assert (=> b!6357052 d!1994368))

(assert (=> b!6357431 d!1994340))

(assert (=> b!6357431 d!1994342))

(assert (=> b!6357134 d!1994350))

(assert (=> b!6357134 d!1994352))

(assert (=> b!6357134 d!1994354))

(declare-fun b!6357628 () Bool)

(declare-fun e!3860655 () Bool)

(assert (=> b!6357628 (= e!3860655 (matchR!8448 lt!2366173 (t!378686 s!2326)))))

(declare-fun b!6357629 () Bool)

(declare-fun e!3860656 () Option!16156)

(declare-fun e!3860653 () Option!16156)

(assert (=> b!6357629 (= e!3860656 e!3860653)))

(declare-fun c!1157086 () Bool)

(assert (=> b!6357629 (= c!1157086 ((_ is Nil!64972) (t!378686 s!2326)))))

(declare-fun b!6357630 () Bool)

(declare-fun res!2616013 () Bool)

(declare-fun e!3860657 () Bool)

(assert (=> b!6357630 (=> (not res!2616013) (not e!3860657))))

(declare-fun lt!2366398 () Option!16156)

(assert (=> b!6357630 (= res!2616013 (matchR!8448 (regTwo!33042 (regOne!33042 r!7292)) (_1!36547 (get!22482 lt!2366398))))))

(declare-fun b!6357631 () Bool)

(declare-fun res!2616015 () Bool)

(assert (=> b!6357631 (=> (not res!2616015) (not e!3860657))))

(assert (=> b!6357631 (= res!2616015 (matchR!8448 lt!2366173 (_2!36547 (get!22482 lt!2366398))))))

(declare-fun b!6357632 () Bool)

(assert (=> b!6357632 (= e!3860653 None!16155)))

(declare-fun d!1994370 () Bool)

(declare-fun e!3860654 () Bool)

(assert (=> d!1994370 e!3860654))

(declare-fun res!2616016 () Bool)

(assert (=> d!1994370 (=> res!2616016 e!3860654)))

(assert (=> d!1994370 (= res!2616016 e!3860657)))

(declare-fun res!2616014 () Bool)

(assert (=> d!1994370 (=> (not res!2616014) (not e!3860657))))

(assert (=> d!1994370 (= res!2616014 (isDefined!12859 lt!2366398))))

(assert (=> d!1994370 (= lt!2366398 e!3860656)))

(declare-fun c!1157085 () Bool)

(assert (=> d!1994370 (= c!1157085 e!3860655)))

(declare-fun res!2616012 () Bool)

(assert (=> d!1994370 (=> (not res!2616012) (not e!3860655))))

(assert (=> d!1994370 (= res!2616012 (matchR!8448 (regTwo!33042 (regOne!33042 r!7292)) (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972))))))

(assert (=> d!1994370 (validRegex!8001 (regTwo!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994370 (= (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326) s!2326) lt!2366398)))

(declare-fun b!6357633 () Bool)

(declare-fun lt!2366396 () Unit!158391)

(declare-fun lt!2366397 () Unit!158391)

(assert (=> b!6357633 (= lt!2366396 lt!2366397)))

(assert (=> b!6357633 (= (++!14334 (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (Cons!64972 (h!71420 (t!378686 s!2326)) Nil!64972)) (t!378686 (t!378686 s!2326))) s!2326)))

(assert (=> b!6357633 (= lt!2366397 (lemmaMoveElementToOtherListKeepsConcatEq!2429 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (h!71420 (t!378686 s!2326)) (t!378686 (t!378686 s!2326)) s!2326))))

(assert (=> b!6357633 (= e!3860653 (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (Cons!64972 (h!71420 (t!378686 s!2326)) Nil!64972)) (t!378686 (t!378686 s!2326)) s!2326))))

(declare-fun b!6357634 () Bool)

(assert (=> b!6357634 (= e!3860657 (= (++!14334 (_1!36547 (get!22482 lt!2366398)) (_2!36547 (get!22482 lt!2366398))) s!2326))))

(declare-fun b!6357635 () Bool)

(assert (=> b!6357635 (= e!3860656 (Some!16155 (tuple2!66489 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326))))))

(declare-fun b!6357636 () Bool)

(assert (=> b!6357636 (= e!3860654 (not (isDefined!12859 lt!2366398)))))

(assert (= (and d!1994370 res!2616012) b!6357628))

(assert (= (and d!1994370 c!1157085) b!6357635))

(assert (= (and d!1994370 (not c!1157085)) b!6357629))

(assert (= (and b!6357629 c!1157086) b!6357632))

(assert (= (and b!6357629 (not c!1157086)) b!6357633))

(assert (= (and d!1994370 res!2616014) b!6357630))

(assert (= (and b!6357630 res!2616013) b!6357631))

(assert (= (and b!6357631 res!2616015) b!6357634))

(assert (= (and d!1994370 (not res!2616016)) b!6357636))

(declare-fun m!7163726 () Bool)

(assert (=> b!6357636 m!7163726))

(declare-fun m!7163728 () Bool)

(assert (=> b!6357628 m!7163728))

(declare-fun m!7163730 () Bool)

(assert (=> b!6357634 m!7163730))

(declare-fun m!7163732 () Bool)

(assert (=> b!6357634 m!7163732))

(assert (=> b!6357631 m!7163730))

(declare-fun m!7163734 () Bool)

(assert (=> b!6357631 m!7163734))

(assert (=> d!1994370 m!7163726))

(assert (=> d!1994370 m!7163242))

(declare-fun m!7163736 () Bool)

(assert (=> d!1994370 m!7163736))

(assert (=> d!1994370 m!7163238))

(assert (=> b!6357630 m!7163730))

(declare-fun m!7163738 () Bool)

(assert (=> b!6357630 m!7163738))

(assert (=> b!6357633 m!7163242))

(assert (=> b!6357633 m!7163690))

(assert (=> b!6357633 m!7163690))

(assert (=> b!6357633 m!7163692))

(assert (=> b!6357633 m!7163242))

(assert (=> b!6357633 m!7163694))

(assert (=> b!6357633 m!7163690))

(declare-fun m!7163740 () Bool)

(assert (=> b!6357633 m!7163740))

(assert (=> b!6357134 d!1994370))

(declare-fun d!1994372 () Bool)

(assert (=> d!1994372 (= (isDefined!12859 lt!2366321) (not (isEmpty!37074 lt!2366321)))))

(declare-fun bs!1592342 () Bool)

(assert (= bs!1592342 d!1994372))

(declare-fun m!7163742 () Bool)

(assert (=> bs!1592342 m!7163742))

(assert (=> d!1994188 d!1994372))

(declare-fun b!6357637 () Bool)

(declare-fun e!3860664 () Bool)

(assert (=> b!6357637 (= e!3860664 (not (= (head!13023 Nil!64972) (c!1156730 (regTwo!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6357638 () Bool)

(declare-fun res!2616021 () Bool)

(declare-fun e!3860663 () Bool)

(assert (=> b!6357638 (=> (not res!2616021) (not e!3860663))))

(declare-fun call!542181 () Bool)

(assert (=> b!6357638 (= res!2616021 (not call!542181))))

(declare-fun b!6357639 () Bool)

(declare-fun e!3860661 () Bool)

(declare-fun lt!2366399 () Bool)

(assert (=> b!6357639 (= e!3860661 (= lt!2366399 call!542181))))

(declare-fun bm!542176 () Bool)

(assert (=> bm!542176 (= call!542181 (isEmpty!37073 Nil!64972))))

(declare-fun b!6357640 () Bool)

(declare-fun e!3860660 () Bool)

(declare-fun e!3860658 () Bool)

(assert (=> b!6357640 (= e!3860660 e!3860658)))

(declare-fun res!2616020 () Bool)

(assert (=> b!6357640 (=> (not res!2616020) (not e!3860658))))

(assert (=> b!6357640 (= res!2616020 (not lt!2366399))))

(declare-fun b!6357641 () Bool)

(assert (=> b!6357641 (= e!3860663 (= (head!13023 Nil!64972) (c!1156730 (regTwo!33042 (regOne!33042 r!7292)))))))

(declare-fun b!6357642 () Bool)

(declare-fun e!3860659 () Bool)

(assert (=> b!6357642 (= e!3860659 (not lt!2366399))))

(declare-fun b!6357643 () Bool)

(assert (=> b!6357643 (= e!3860658 e!3860664)))

(declare-fun res!2616022 () Bool)

(assert (=> b!6357643 (=> res!2616022 e!3860664)))

(assert (=> b!6357643 (= res!2616022 call!542181)))

(declare-fun b!6357644 () Bool)

(assert (=> b!6357644 (= e!3860661 e!3860659)))

(declare-fun c!1157087 () Bool)

(assert (=> b!6357644 (= c!1157087 ((_ is EmptyLang!16265) (regTwo!33042 (regOne!33042 r!7292))))))

(declare-fun b!6357645 () Bool)

(declare-fun e!3860662 () Bool)

(assert (=> b!6357645 (= e!3860662 (nullable!6258 (regTwo!33042 (regOne!33042 r!7292))))))

(declare-fun b!6357646 () Bool)

(declare-fun res!2616024 () Bool)

(assert (=> b!6357646 (=> res!2616024 e!3860660)))

(assert (=> b!6357646 (= res!2616024 (not ((_ is ElementMatch!16265) (regTwo!33042 (regOne!33042 r!7292)))))))

(assert (=> b!6357646 (= e!3860659 e!3860660)))

(declare-fun b!6357647 () Bool)

(declare-fun res!2616019 () Bool)

(assert (=> b!6357647 (=> res!2616019 e!3860664)))

(assert (=> b!6357647 (= res!2616019 (not (isEmpty!37073 (tail!12108 Nil!64972))))))

(declare-fun b!6357649 () Bool)

(declare-fun res!2616017 () Bool)

(assert (=> b!6357649 (=> res!2616017 e!3860660)))

(assert (=> b!6357649 (= res!2616017 e!3860663)))

(declare-fun res!2616023 () Bool)

(assert (=> b!6357649 (=> (not res!2616023) (not e!3860663))))

(assert (=> b!6357649 (= res!2616023 lt!2366399)))

(declare-fun b!6357650 () Bool)

(declare-fun res!2616018 () Bool)

(assert (=> b!6357650 (=> (not res!2616018) (not e!3860663))))

(assert (=> b!6357650 (= res!2616018 (isEmpty!37073 (tail!12108 Nil!64972)))))

(declare-fun d!1994374 () Bool)

(assert (=> d!1994374 e!3860661))

(declare-fun c!1157089 () Bool)

(assert (=> d!1994374 (= c!1157089 ((_ is EmptyExpr!16265) (regTwo!33042 (regOne!33042 r!7292))))))

(assert (=> d!1994374 (= lt!2366399 e!3860662)))

(declare-fun c!1157088 () Bool)

(assert (=> d!1994374 (= c!1157088 (isEmpty!37073 Nil!64972))))

(assert (=> d!1994374 (validRegex!8001 (regTwo!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994374 (= (matchR!8448 (regTwo!33042 (regOne!33042 r!7292)) Nil!64972) lt!2366399)))

(declare-fun b!6357648 () Bool)

(assert (=> b!6357648 (= e!3860662 (matchR!8448 (derivativeStep!4970 (regTwo!33042 (regOne!33042 r!7292)) (head!13023 Nil!64972)) (tail!12108 Nil!64972)))))

(assert (= (and d!1994374 c!1157088) b!6357645))

(assert (= (and d!1994374 (not c!1157088)) b!6357648))

(assert (= (and d!1994374 c!1157089) b!6357639))

(assert (= (and d!1994374 (not c!1157089)) b!6357644))

(assert (= (and b!6357644 c!1157087) b!6357642))

(assert (= (and b!6357644 (not c!1157087)) b!6357646))

(assert (= (and b!6357646 (not res!2616024)) b!6357649))

(assert (= (and b!6357649 res!2616023) b!6357638))

(assert (= (and b!6357638 res!2616021) b!6357650))

(assert (= (and b!6357650 res!2616018) b!6357641))

(assert (= (and b!6357649 (not res!2616017)) b!6357640))

(assert (= (and b!6357640 res!2616020) b!6357643))

(assert (= (and b!6357643 (not res!2616022)) b!6357647))

(assert (= (and b!6357647 (not res!2616019)) b!6357637))

(assert (= (or b!6357639 b!6357638 b!6357643) bm!542176))

(assert (=> b!6357647 m!7163706))

(assert (=> b!6357647 m!7163706))

(assert (=> b!6357647 m!7163708))

(assert (=> b!6357648 m!7163710))

(assert (=> b!6357648 m!7163710))

(declare-fun m!7163744 () Bool)

(assert (=> b!6357648 m!7163744))

(assert (=> b!6357648 m!7163706))

(assert (=> b!6357648 m!7163744))

(assert (=> b!6357648 m!7163706))

(declare-fun m!7163746 () Bool)

(assert (=> b!6357648 m!7163746))

(assert (=> b!6357650 m!7163706))

(assert (=> b!6357650 m!7163706))

(assert (=> b!6357650 m!7163708))

(assert (=> b!6357641 m!7163710))

(declare-fun m!7163748 () Bool)

(assert (=> b!6357645 m!7163748))

(assert (=> d!1994374 m!7163718))

(assert (=> d!1994374 m!7163238))

(assert (=> bm!542176 m!7163718))

(assert (=> b!6357637 m!7163710))

(assert (=> d!1994188 d!1994374))

(declare-fun b!6357651 () Bool)

(declare-fun res!2616027 () Bool)

(declare-fun e!3860670 () Bool)

(assert (=> b!6357651 (=> res!2616027 e!3860670)))

(assert (=> b!6357651 (= res!2616027 (not ((_ is Concat!25110) (regTwo!33042 (regOne!33042 r!7292)))))))

(declare-fun e!3860671 () Bool)

(assert (=> b!6357651 (= e!3860671 e!3860670)))

(declare-fun c!1157090 () Bool)

(declare-fun bm!542177 () Bool)

(declare-fun c!1157091 () Bool)

(declare-fun call!542183 () Bool)

(assert (=> bm!542177 (= call!542183 (validRegex!8001 (ite c!1157090 (reg!16594 (regTwo!33042 (regOne!33042 r!7292))) (ite c!1157091 (regOne!33043 (regTwo!33042 (regOne!33042 r!7292))) (regOne!33042 (regTwo!33042 (regOne!33042 r!7292)))))))))

(declare-fun b!6357652 () Bool)

(declare-fun e!3860666 () Bool)

(declare-fun call!542182 () Bool)

(assert (=> b!6357652 (= e!3860666 call!542182)))

(declare-fun bm!542178 () Bool)

(assert (=> bm!542178 (= call!542182 (validRegex!8001 (ite c!1157091 (regTwo!33043 (regTwo!33042 (regOne!33042 r!7292))) (regTwo!33042 (regTwo!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6357653 () Bool)

(declare-fun e!3860665 () Bool)

(assert (=> b!6357653 (= e!3860665 call!542182)))

(declare-fun bm!542179 () Bool)

(declare-fun call!542184 () Bool)

(assert (=> bm!542179 (= call!542184 call!542183)))

(declare-fun b!6357655 () Bool)

(declare-fun e!3860668 () Bool)

(declare-fun e!3860669 () Bool)

(assert (=> b!6357655 (= e!3860668 e!3860669)))

(assert (=> b!6357655 (= c!1157090 ((_ is Star!16265) (regTwo!33042 (regOne!33042 r!7292))))))

(declare-fun b!6357656 () Bool)

(assert (=> b!6357656 (= e!3860670 e!3860665)))

(declare-fun res!2616029 () Bool)

(assert (=> b!6357656 (=> (not res!2616029) (not e!3860665))))

(assert (=> b!6357656 (= res!2616029 call!542184)))

(declare-fun b!6357657 () Bool)

(declare-fun res!2616025 () Bool)

(assert (=> b!6357657 (=> (not res!2616025) (not e!3860666))))

(assert (=> b!6357657 (= res!2616025 call!542184)))

(assert (=> b!6357657 (= e!3860671 e!3860666)))

(declare-fun b!6357658 () Bool)

(declare-fun e!3860667 () Bool)

(assert (=> b!6357658 (= e!3860669 e!3860667)))

(declare-fun res!2616026 () Bool)

(assert (=> b!6357658 (= res!2616026 (not (nullable!6258 (reg!16594 (regTwo!33042 (regOne!33042 r!7292))))))))

(assert (=> b!6357658 (=> (not res!2616026) (not e!3860667))))

(declare-fun b!6357659 () Bool)

(assert (=> b!6357659 (= e!3860669 e!3860671)))

(assert (=> b!6357659 (= c!1157091 ((_ is Union!16265) (regTwo!33042 (regOne!33042 r!7292))))))

(declare-fun d!1994376 () Bool)

(declare-fun res!2616028 () Bool)

(assert (=> d!1994376 (=> res!2616028 e!3860668)))

(assert (=> d!1994376 (= res!2616028 ((_ is ElementMatch!16265) (regTwo!33042 (regOne!33042 r!7292))))))

(assert (=> d!1994376 (= (validRegex!8001 (regTwo!33042 (regOne!33042 r!7292))) e!3860668)))

(declare-fun b!6357654 () Bool)

(assert (=> b!6357654 (= e!3860667 call!542183)))

(assert (= (and d!1994376 (not res!2616028)) b!6357655))

(assert (= (and b!6357655 c!1157090) b!6357658))

(assert (= (and b!6357655 (not c!1157090)) b!6357659))

(assert (= (and b!6357658 res!2616026) b!6357654))

(assert (= (and b!6357659 c!1157091) b!6357657))

(assert (= (and b!6357659 (not c!1157091)) b!6357651))

(assert (= (and b!6357657 res!2616025) b!6357652))

(assert (= (and b!6357651 (not res!2616027)) b!6357656))

(assert (= (and b!6357656 res!2616029) b!6357653))

(assert (= (or b!6357652 b!6357653) bm!542178))

(assert (= (or b!6357657 b!6357656) bm!542179))

(assert (= (or b!6357654 bm!542179) bm!542177))

(declare-fun m!7163750 () Bool)

(assert (=> bm!542177 m!7163750))

(declare-fun m!7163752 () Bool)

(assert (=> bm!542178 m!7163752))

(declare-fun m!7163754 () Bool)

(assert (=> b!6357658 m!7163754))

(assert (=> d!1994188 d!1994376))

(declare-fun d!1994378 () Bool)

(assert (=> d!1994378 (= (Exists!3335 (ite c!1156993 lambda!350098 lambda!350099)) (choose!47205 (ite c!1156993 lambda!350098 lambda!350099)))))

(declare-fun bs!1592343 () Bool)

(assert (= bs!1592343 d!1994378))

(declare-fun m!7163756 () Bool)

(assert (=> bs!1592343 m!7163756))

(assert (=> bm!542142 d!1994378))

(declare-fun d!1994380 () Bool)

(declare-fun c!1157092 () Bool)

(assert (=> d!1994380 (= c!1157092 (isEmpty!37073 (tail!12108 (t!378686 s!2326))))))

(declare-fun e!3860672 () Bool)

(assert (=> d!1994380 (= (matchZipper!2277 (derivationStepZipper!2231 lt!2366184 (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))) e!3860672)))

(declare-fun b!6357660 () Bool)

(assert (=> b!6357660 (= e!3860672 (nullableZipper!2031 (derivationStepZipper!2231 lt!2366184 (head!13023 (t!378686 s!2326)))))))

(declare-fun b!6357661 () Bool)

(assert (=> b!6357661 (= e!3860672 (matchZipper!2277 (derivationStepZipper!2231 (derivationStepZipper!2231 lt!2366184 (head!13023 (t!378686 s!2326))) (head!13023 (tail!12108 (t!378686 s!2326)))) (tail!12108 (tail!12108 (t!378686 s!2326)))))))

(assert (= (and d!1994380 c!1157092) b!6357660))

(assert (= (and d!1994380 (not c!1157092)) b!6357661))

(assert (=> d!1994380 m!7163466))

(declare-fun m!7163758 () Bool)

(assert (=> d!1994380 m!7163758))

(assert (=> b!6357660 m!7163464))

(declare-fun m!7163760 () Bool)

(assert (=> b!6357660 m!7163760))

(assert (=> b!6357661 m!7163466))

(declare-fun m!7163762 () Bool)

(assert (=> b!6357661 m!7163762))

(assert (=> b!6357661 m!7163464))

(assert (=> b!6357661 m!7163762))

(declare-fun m!7163764 () Bool)

(assert (=> b!6357661 m!7163764))

(assert (=> b!6357661 m!7163466))

(declare-fun m!7163766 () Bool)

(assert (=> b!6357661 m!7163766))

(assert (=> b!6357661 m!7163764))

(assert (=> b!6357661 m!7163766))

(declare-fun m!7163768 () Bool)

(assert (=> b!6357661 m!7163768))

(assert (=> b!6357367 d!1994380))

(declare-fun bs!1592344 () Bool)

(declare-fun d!1994382 () Bool)

(assert (= bs!1592344 (and d!1994382 b!6356406)))

(declare-fun lambda!350126 () Int)

(assert (=> bs!1592344 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350126 lambda!349997))))

(declare-fun bs!1592345 () Bool)

(assert (= bs!1592345 (and d!1994382 d!1994102)))

(assert (=> bs!1592345 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350126 lambda!350035))))

(assert (=> d!1994382 true))

(assert (=> d!1994382 (= (derivationStepZipper!2231 lt!2366184 (head!13023 (t!378686 s!2326))) (flatMap!1770 lt!2366184 lambda!350126))))

(declare-fun bs!1592346 () Bool)

(assert (= bs!1592346 d!1994382))

(declare-fun m!7163770 () Bool)

(assert (=> bs!1592346 m!7163770))

(assert (=> b!6357367 d!1994382))

(declare-fun d!1994384 () Bool)

(assert (=> d!1994384 (= (head!13023 (t!378686 s!2326)) (h!71420 (t!378686 s!2326)))))

(assert (=> b!6357367 d!1994384))

(declare-fun d!1994386 () Bool)

(assert (=> d!1994386 (= (tail!12108 (t!378686 s!2326)) (t!378686 (t!378686 s!2326)))))

(assert (=> b!6357367 d!1994386))

(declare-fun d!1994388 () Bool)

(declare-fun res!2616034 () Bool)

(declare-fun e!3860677 () Bool)

(assert (=> d!1994388 (=> res!2616034 e!3860677)))

(assert (=> d!1994388 (= res!2616034 ((_ is Nil!64971) lt!2366248))))

(assert (=> d!1994388 (= (noDuplicate!2094 lt!2366248) e!3860677)))

(declare-fun b!6357666 () Bool)

(declare-fun e!3860678 () Bool)

(assert (=> b!6357666 (= e!3860677 e!3860678)))

(declare-fun res!2616035 () Bool)

(assert (=> b!6357666 (=> (not res!2616035) (not e!3860678))))

(declare-fun contains!20154 (List!65095 Context!11298) Bool)

(assert (=> b!6357666 (= res!2616035 (not (contains!20154 (t!378685 lt!2366248) (h!71419 lt!2366248))))))

(declare-fun b!6357667 () Bool)

(assert (=> b!6357667 (= e!3860678 (noDuplicate!2094 (t!378685 lt!2366248)))))

(assert (= (and d!1994388 (not res!2616034)) b!6357666))

(assert (= (and b!6357666 res!2616035) b!6357667))

(declare-fun m!7163772 () Bool)

(assert (=> b!6357666 m!7163772))

(declare-fun m!7163774 () Bool)

(assert (=> b!6357667 m!7163774))

(assert (=> d!1994084 d!1994388))

(declare-fun d!1994390 () Bool)

(declare-fun e!3860687 () Bool)

(assert (=> d!1994390 e!3860687))

(declare-fun res!2616040 () Bool)

(assert (=> d!1994390 (=> (not res!2616040) (not e!3860687))))

(declare-fun res!2616041 () List!65095)

(assert (=> d!1994390 (= res!2616040 (noDuplicate!2094 res!2616041))))

(declare-fun e!3860686 () Bool)

(assert (=> d!1994390 e!3860686))

(assert (=> d!1994390 (= (choose!47198 z!1189) res!2616041)))

(declare-fun b!6357675 () Bool)

(declare-fun e!3860685 () Bool)

(declare-fun tp!1770828 () Bool)

(assert (=> b!6357675 (= e!3860685 tp!1770828)))

(declare-fun tp!1770827 () Bool)

(declare-fun b!6357674 () Bool)

(assert (=> b!6357674 (= e!3860686 (and (inv!83909 (h!71419 res!2616041)) e!3860685 tp!1770827))))

(declare-fun b!6357676 () Bool)

(assert (=> b!6357676 (= e!3860687 (= (content!12265 res!2616041) z!1189))))

(assert (= b!6357674 b!6357675))

(assert (= (and d!1994390 ((_ is Cons!64971) res!2616041)) b!6357674))

(assert (= (and d!1994390 res!2616040) b!6357676))

(declare-fun m!7163776 () Bool)

(assert (=> d!1994390 m!7163776))

(declare-fun m!7163778 () Bool)

(assert (=> b!6357674 m!7163778))

(declare-fun m!7163780 () Bool)

(assert (=> b!6357676 m!7163780))

(assert (=> d!1994084 d!1994390))

(declare-fun d!1994392 () Bool)

(assert (=> d!1994392 (= (head!13022 (t!378684 (exprs!6149 (h!71419 zl!343)))) (h!71418 (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> b!6357310 d!1994392))

(assert (=> b!6357302 d!1994340))

(assert (=> b!6357302 d!1994342))

(declare-fun c!1157096 () Bool)

(declare-fun d!1994394 () Bool)

(assert (=> d!1994394 (= c!1157096 (and ((_ is ElementMatch!16265) (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))) (= (c!1156730 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))) (h!71420 s!2326))))))

(declare-fun e!3860691 () (InoxSet Context!11298))

(assert (=> d!1994394 (= (derivationStepZipperDown!1513 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292)))))) (ite (or c!1157034 c!1157036) (Context!11299 lt!2366161) (Context!11299 call!542157)) (h!71420 s!2326)) e!3860691)))

(declare-fun c!1157094 () Bool)

(declare-fun b!6357677 () Bool)

(assert (=> b!6357677 (= c!1157094 ((_ is Star!16265) (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))))))

(declare-fun e!3860688 () (InoxSet Context!11298))

(declare-fun e!3860690 () (InoxSet Context!11298))

(assert (=> b!6357677 (= e!3860688 e!3860690)))

(declare-fun bm!542180 () Bool)

(declare-fun call!542188 () (InoxSet Context!11298))

(declare-fun call!542185 () (InoxSet Context!11298))

(assert (=> bm!542180 (= call!542188 call!542185)))

(declare-fun b!6357678 () Bool)

(declare-fun e!3860692 () (InoxSet Context!11298))

(assert (=> b!6357678 (= e!3860691 e!3860692)))

(declare-fun c!1157093 () Bool)

(assert (=> b!6357678 (= c!1157093 ((_ is Union!16265) (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))))))

(declare-fun b!6357679 () Bool)

(assert (=> b!6357679 (= e!3860688 call!542188)))

(declare-fun call!542189 () List!65094)

(declare-fun call!542186 () (InoxSet Context!11298))

(declare-fun bm!542181 () Bool)

(declare-fun c!1157097 () Bool)

(declare-fun c!1157095 () Bool)

(assert (=> bm!542181 (= call!542186 (derivationStepZipperDown!1513 (ite c!1157093 (regTwo!33043 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))) (ite c!1157095 (regTwo!33042 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))) (ite c!1157097 (regOne!33042 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))) (reg!16594 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292)))))))))) (ite (or c!1157093 c!1157095) (ite (or c!1157034 c!1157036) (Context!11299 lt!2366161) (Context!11299 call!542157)) (Context!11299 call!542189)) (h!71420 s!2326)))))

(declare-fun b!6357680 () Bool)

(declare-fun call!542187 () (InoxSet Context!11298))

(assert (=> b!6357680 (= e!3860692 ((_ map or) call!542187 call!542186))))

(declare-fun b!6357681 () Bool)

(declare-fun e!3860689 () (InoxSet Context!11298))

(assert (=> b!6357681 (= e!3860689 ((_ map or) call!542187 call!542185))))

(declare-fun b!6357682 () Bool)

(assert (=> b!6357682 (= e!3860691 (store ((as const (Array Context!11298 Bool)) false) (ite (or c!1157034 c!1157036) (Context!11299 lt!2366161) (Context!11299 call!542157)) true))))

(declare-fun e!3860693 () Bool)

(declare-fun b!6357683 () Bool)

(assert (=> b!6357683 (= e!3860693 (nullable!6258 (regOne!33042 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292)))))))))))

(declare-fun bm!542182 () Bool)

(assert (=> bm!542182 (= call!542185 call!542186)))

(declare-fun bm!542183 () Bool)

(declare-fun call!542190 () List!65094)

(assert (=> bm!542183 (= call!542190 ($colon$colon!2126 (exprs!6149 (ite (or c!1157034 c!1157036) (Context!11299 lt!2366161) (Context!11299 call!542157))) (ite (or c!1157095 c!1157097) (regTwo!33042 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))) (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292)))))))))))

(declare-fun bm!542184 () Bool)

(assert (=> bm!542184 (= call!542189 call!542190)))

(declare-fun b!6357684 () Bool)

(assert (=> b!6357684 (= c!1157095 e!3860693)))

(declare-fun res!2616042 () Bool)

(assert (=> b!6357684 (=> (not res!2616042) (not e!3860693))))

(assert (=> b!6357684 (= res!2616042 ((_ is Concat!25110) (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))))))

(assert (=> b!6357684 (= e!3860692 e!3860689)))

(declare-fun b!6357685 () Bool)

(assert (=> b!6357685 (= e!3860690 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6357686 () Bool)

(assert (=> b!6357686 (= e!3860690 call!542188)))

(declare-fun bm!542185 () Bool)

(assert (=> bm!542185 (= call!542187 (derivationStepZipperDown!1513 (ite c!1157093 (regOne!33043 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))) (regOne!33042 (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292)))))))) (ite c!1157093 (ite (or c!1157034 c!1157036) (Context!11299 lt!2366161) (Context!11299 call!542157)) (Context!11299 call!542190)) (h!71420 s!2326)))))

(declare-fun b!6357687 () Bool)

(assert (=> b!6357687 (= e!3860689 e!3860688)))

(assert (=> b!6357687 (= c!1157097 ((_ is Concat!25110) (ite c!1157034 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157036 (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157038 (regOne!33042 (regOne!33042 (regOne!33042 r!7292))) (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))))))

(assert (= (and d!1994394 c!1157096) b!6357682))

(assert (= (and d!1994394 (not c!1157096)) b!6357678))

(assert (= (and b!6357678 c!1157093) b!6357680))

(assert (= (and b!6357678 (not c!1157093)) b!6357684))

(assert (= (and b!6357684 res!2616042) b!6357683))

(assert (= (and b!6357684 c!1157095) b!6357681))

(assert (= (and b!6357684 (not c!1157095)) b!6357687))

(assert (= (and b!6357687 c!1157097) b!6357679))

(assert (= (and b!6357687 (not c!1157097)) b!6357677))

(assert (= (and b!6357677 c!1157094) b!6357686))

(assert (= (and b!6357677 (not c!1157094)) b!6357685))

(assert (= (or b!6357679 b!6357686) bm!542184))

(assert (= (or b!6357679 b!6357686) bm!542180))

(assert (= (or b!6357681 bm!542184) bm!542183))

(assert (= (or b!6357681 bm!542180) bm!542182))

(assert (= (or b!6357680 bm!542182) bm!542181))

(assert (= (or b!6357680 b!6357681) bm!542185))

(declare-fun m!7163782 () Bool)

(assert (=> b!6357682 m!7163782))

(declare-fun m!7163784 () Bool)

(assert (=> bm!542181 m!7163784))

(declare-fun m!7163786 () Bool)

(assert (=> b!6357683 m!7163786))

(declare-fun m!7163788 () Bool)

(assert (=> bm!542185 m!7163788))

(declare-fun m!7163790 () Bool)

(assert (=> bm!542183 m!7163790))

(assert (=> bm!542149 d!1994394))

(declare-fun d!1994396 () Bool)

(assert (=> d!1994396 (= (isEmpty!37069 (unfocusZipperList!1686 zl!343)) ((_ is Nil!64970) (unfocusZipperList!1686 zl!343)))))

(assert (=> b!6356675 d!1994396))

(assert (=> b!6357329 d!1994340))

(assert (=> b!6357329 d!1994342))

(declare-fun bs!1592347 () Bool)

(declare-fun d!1994398 () Bool)

(assert (= bs!1592347 (and d!1994398 b!6356814)))

(declare-fun lambda!350127 () Int)

(assert (=> bs!1592347 (not (= lambda!350127 lambda!350046))))

(declare-fun bs!1592348 () Bool)

(assert (= bs!1592348 (and d!1994398 b!6356821)))

(assert (=> bs!1592348 (not (= lambda!350127 lambda!350052))))

(declare-fun bs!1592349 () Bool)

(assert (= bs!1592349 (and d!1994398 b!6356819)))

(assert (=> bs!1592349 (not (= lambda!350127 lambda!350051))))

(declare-fun bs!1592350 () Bool)

(assert (= bs!1592350 (and d!1994398 b!6356816)))

(assert (=> bs!1592350 (not (= lambda!350127 lambda!350048))))

(declare-fun bs!1592351 () Bool)

(assert (= bs!1592351 (and d!1994398 d!1994334)))

(assert (=> bs!1592351 (= lambda!350127 lambda!350123)))

(declare-fun bs!1592352 () Bool)

(assert (= bs!1592352 (and d!1994398 d!1994324)))

(assert (=> bs!1592352 (= lambda!350127 lambda!350116)))

(assert (=> d!1994398 (= (nullableZipper!2031 lt!2366169) (exists!2570 lt!2366169 lambda!350127))))

(declare-fun bs!1592353 () Bool)

(assert (= bs!1592353 d!1994398))

(declare-fun m!7163792 () Bool)

(assert (=> bs!1592353 m!7163792))

(assert (=> b!6357368 d!1994398))

(declare-fun bs!1592354 () Bool)

(declare-fun d!1994400 () Bool)

(assert (= bs!1592354 (and d!1994400 b!6356814)))

(declare-fun lambda!350128 () Int)

(assert (=> bs!1592354 (not (= lambda!350128 lambda!350046))))

(declare-fun bs!1592355 () Bool)

(assert (= bs!1592355 (and d!1994400 d!1994398)))

(assert (=> bs!1592355 (= lambda!350128 lambda!350127)))

(declare-fun bs!1592356 () Bool)

(assert (= bs!1592356 (and d!1994400 b!6356821)))

(assert (=> bs!1592356 (not (= lambda!350128 lambda!350052))))

(declare-fun bs!1592357 () Bool)

(assert (= bs!1592357 (and d!1994400 b!6356819)))

(assert (=> bs!1592357 (not (= lambda!350128 lambda!350051))))

(declare-fun bs!1592358 () Bool)

(assert (= bs!1592358 (and d!1994400 b!6356816)))

(assert (=> bs!1592358 (not (= lambda!350128 lambda!350048))))

(declare-fun bs!1592359 () Bool)

(assert (= bs!1592359 (and d!1994400 d!1994334)))

(assert (=> bs!1592359 (= lambda!350128 lambda!350123)))

(declare-fun bs!1592360 () Bool)

(assert (= bs!1592360 (and d!1994400 d!1994324)))

(assert (=> bs!1592360 (= lambda!350128 lambda!350116)))

(assert (=> d!1994400 (= (nullableZipper!2031 lt!2366163) (exists!2570 lt!2366163 lambda!350128))))

(declare-fun bs!1592361 () Bool)

(assert (= bs!1592361 d!1994400))

(declare-fun m!7163794 () Bool)

(assert (=> bs!1592361 m!7163794))

(assert (=> b!6357435 d!1994400))

(declare-fun b!6357688 () Bool)

(declare-fun res!2616045 () Bool)

(declare-fun e!3860699 () Bool)

(assert (=> b!6357688 (=> res!2616045 e!3860699)))

(assert (=> b!6357688 (= res!2616045 (not ((_ is Concat!25110) (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292))))))))

(declare-fun e!3860700 () Bool)

(assert (=> b!6357688 (= e!3860700 e!3860699)))

(declare-fun call!542192 () Bool)

(declare-fun c!1157099 () Bool)

(declare-fun c!1157098 () Bool)

(declare-fun bm!542186 () Bool)

(assert (=> bm!542186 (= call!542192 (validRegex!8001 (ite c!1157098 (reg!16594 (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))) (ite c!1157099 (regOne!33043 (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))) (regOne!33042 (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292))))))))))

(declare-fun b!6357689 () Bool)

(declare-fun e!3860695 () Bool)

(declare-fun call!542191 () Bool)

(assert (=> b!6357689 (= e!3860695 call!542191)))

(declare-fun bm!542187 () Bool)

(assert (=> bm!542187 (= call!542191 (validRegex!8001 (ite c!1157099 (regTwo!33043 (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))) (regTwo!33042 (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))))))))

(declare-fun b!6357690 () Bool)

(declare-fun e!3860694 () Bool)

(assert (=> b!6357690 (= e!3860694 call!542191)))

(declare-fun bm!542188 () Bool)

(declare-fun call!542193 () Bool)

(assert (=> bm!542188 (= call!542193 call!542192)))

(declare-fun b!6357692 () Bool)

(declare-fun e!3860697 () Bool)

(declare-fun e!3860698 () Bool)

(assert (=> b!6357692 (= e!3860697 e!3860698)))

(assert (=> b!6357692 (= c!1157098 ((_ is Star!16265) (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))))))

(declare-fun b!6357693 () Bool)

(assert (=> b!6357693 (= e!3860699 e!3860694)))

(declare-fun res!2616047 () Bool)

(assert (=> b!6357693 (=> (not res!2616047) (not e!3860694))))

(assert (=> b!6357693 (= res!2616047 call!542193)))

(declare-fun b!6357694 () Bool)

(declare-fun res!2616043 () Bool)

(assert (=> b!6357694 (=> (not res!2616043) (not e!3860695))))

(assert (=> b!6357694 (= res!2616043 call!542193)))

(assert (=> b!6357694 (= e!3860700 e!3860695)))

(declare-fun b!6357695 () Bool)

(declare-fun e!3860696 () Bool)

(assert (=> b!6357695 (= e!3860698 e!3860696)))

(declare-fun res!2616044 () Bool)

(assert (=> b!6357695 (= res!2616044 (not (nullable!6258 (reg!16594 (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))))))))

(assert (=> b!6357695 (=> (not res!2616044) (not e!3860696))))

(declare-fun b!6357696 () Bool)

(assert (=> b!6357696 (= e!3860698 e!3860700)))

(assert (=> b!6357696 (= c!1157099 ((_ is Union!16265) (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))))))

(declare-fun d!1994402 () Bool)

(declare-fun res!2616046 () Bool)

(assert (=> d!1994402 (=> res!2616046 e!3860697)))

(assert (=> d!1994402 (= res!2616046 ((_ is ElementMatch!16265) (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))))))

(assert (=> d!1994402 (= (validRegex!8001 (ite c!1156793 (reg!16594 r!7292) (ite c!1156794 (regOne!33043 r!7292) (regOne!33042 r!7292)))) e!3860697)))

(declare-fun b!6357691 () Bool)

(assert (=> b!6357691 (= e!3860696 call!542192)))

(assert (= (and d!1994402 (not res!2616046)) b!6357692))

(assert (= (and b!6357692 c!1157098) b!6357695))

(assert (= (and b!6357692 (not c!1157098)) b!6357696))

(assert (= (and b!6357695 res!2616044) b!6357691))

(assert (= (and b!6357696 c!1157099) b!6357694))

(assert (= (and b!6357696 (not c!1157099)) b!6357688))

(assert (= (and b!6357694 res!2616043) b!6357689))

(assert (= (and b!6357688 (not res!2616045)) b!6357693))

(assert (= (and b!6357693 res!2616047) b!6357690))

(assert (= (or b!6357689 b!6357690) bm!542187))

(assert (= (or b!6357694 b!6357693) bm!542188))

(assert (= (or b!6357691 bm!542188) bm!542186))

(declare-fun m!7163796 () Bool)

(assert (=> bm!542186 m!7163796))

(declare-fun m!7163798 () Bool)

(assert (=> bm!542187 m!7163798))

(declare-fun m!7163800 () Bool)

(assert (=> b!6357695 m!7163800))

(assert (=> bm!542059 d!1994402))

(assert (=> b!6357447 d!1994340))

(assert (=> b!6357447 d!1994342))

(declare-fun d!1994404 () Bool)

(assert (=> d!1994404 (= (nullable!6258 (h!71418 (exprs!6149 lt!2366194))) (nullableFct!2204 (h!71418 (exprs!6149 lt!2366194))))))

(declare-fun bs!1592362 () Bool)

(assert (= bs!1592362 d!1994404))

(declare-fun m!7163802 () Bool)

(assert (=> bs!1592362 m!7163802))

(assert (=> b!6356733 d!1994404))

(declare-fun b!6357697 () Bool)

(declare-fun res!2616050 () Bool)

(declare-fun e!3860706 () Bool)

(assert (=> b!6357697 (=> res!2616050 e!3860706)))

(assert (=> b!6357697 (= res!2616050 (not ((_ is Concat!25110) lt!2366371)))))

(declare-fun e!3860707 () Bool)

(assert (=> b!6357697 (= e!3860707 e!3860706)))

(declare-fun call!542195 () Bool)

(declare-fun c!1157101 () Bool)

(declare-fun c!1157100 () Bool)

(declare-fun bm!542189 () Bool)

(assert (=> bm!542189 (= call!542195 (validRegex!8001 (ite c!1157100 (reg!16594 lt!2366371) (ite c!1157101 (regOne!33043 lt!2366371) (regOne!33042 lt!2366371)))))))

(declare-fun b!6357698 () Bool)

(declare-fun e!3860702 () Bool)

(declare-fun call!542194 () Bool)

(assert (=> b!6357698 (= e!3860702 call!542194)))

(declare-fun bm!542190 () Bool)

(assert (=> bm!542190 (= call!542194 (validRegex!8001 (ite c!1157101 (regTwo!33043 lt!2366371) (regTwo!33042 lt!2366371))))))

(declare-fun b!6357699 () Bool)

(declare-fun e!3860701 () Bool)

(assert (=> b!6357699 (= e!3860701 call!542194)))

(declare-fun bm!542191 () Bool)

(declare-fun call!542196 () Bool)

(assert (=> bm!542191 (= call!542196 call!542195)))

(declare-fun b!6357701 () Bool)

(declare-fun e!3860704 () Bool)

(declare-fun e!3860705 () Bool)

(assert (=> b!6357701 (= e!3860704 e!3860705)))

(assert (=> b!6357701 (= c!1157100 ((_ is Star!16265) lt!2366371))))

(declare-fun b!6357702 () Bool)

(assert (=> b!6357702 (= e!3860706 e!3860701)))

(declare-fun res!2616052 () Bool)

(assert (=> b!6357702 (=> (not res!2616052) (not e!3860701))))

(assert (=> b!6357702 (= res!2616052 call!542196)))

(declare-fun b!6357703 () Bool)

(declare-fun res!2616048 () Bool)

(assert (=> b!6357703 (=> (not res!2616048) (not e!3860702))))

(assert (=> b!6357703 (= res!2616048 call!542196)))

(assert (=> b!6357703 (= e!3860707 e!3860702)))

(declare-fun b!6357704 () Bool)

(declare-fun e!3860703 () Bool)

(assert (=> b!6357704 (= e!3860705 e!3860703)))

(declare-fun res!2616049 () Bool)

(assert (=> b!6357704 (= res!2616049 (not (nullable!6258 (reg!16594 lt!2366371))))))

(assert (=> b!6357704 (=> (not res!2616049) (not e!3860703))))

(declare-fun b!6357705 () Bool)

(assert (=> b!6357705 (= e!3860705 e!3860707)))

(assert (=> b!6357705 (= c!1157101 ((_ is Union!16265) lt!2366371))))

(declare-fun d!1994406 () Bool)

(declare-fun res!2616051 () Bool)

(assert (=> d!1994406 (=> res!2616051 e!3860704)))

(assert (=> d!1994406 (= res!2616051 ((_ is ElementMatch!16265) lt!2366371))))

(assert (=> d!1994406 (= (validRegex!8001 lt!2366371) e!3860704)))

(declare-fun b!6357700 () Bool)

(assert (=> b!6357700 (= e!3860703 call!542195)))

(assert (= (and d!1994406 (not res!2616051)) b!6357701))

(assert (= (and b!6357701 c!1157100) b!6357704))

(assert (= (and b!6357701 (not c!1157100)) b!6357705))

(assert (= (and b!6357704 res!2616049) b!6357700))

(assert (= (and b!6357705 c!1157101) b!6357703))

(assert (= (and b!6357705 (not c!1157101)) b!6357697))

(assert (= (and b!6357703 res!2616048) b!6357698))

(assert (= (and b!6357697 (not res!2616050)) b!6357702))

(assert (= (and b!6357702 res!2616052) b!6357699))

(assert (= (or b!6357698 b!6357699) bm!542190))

(assert (= (or b!6357703 b!6357702) bm!542191))

(assert (= (or b!6357700 bm!542191) bm!542189))

(declare-fun m!7163804 () Bool)

(assert (=> bm!542189 m!7163804))

(declare-fun m!7163806 () Bool)

(assert (=> bm!542190 m!7163806))

(declare-fun m!7163808 () Bool)

(assert (=> b!6357704 m!7163808))

(assert (=> d!1994278 d!1994406))

(declare-fun d!1994408 () Bool)

(declare-fun res!2616057 () Bool)

(declare-fun e!3860712 () Bool)

(assert (=> d!1994408 (=> res!2616057 e!3860712)))

(assert (=> d!1994408 (= res!2616057 ((_ is Nil!64970) (exprs!6149 (h!71419 zl!343))))))

(assert (=> d!1994408 (= (forall!15441 (exprs!6149 (h!71419 zl!343)) lambda!350107) e!3860712)))

(declare-fun b!6357710 () Bool)

(declare-fun e!3860713 () Bool)

(assert (=> b!6357710 (= e!3860712 e!3860713)))

(declare-fun res!2616058 () Bool)

(assert (=> b!6357710 (=> (not res!2616058) (not e!3860713))))

(declare-fun dynLambda!25764 (Int Regex!16265) Bool)

(assert (=> b!6357710 (= res!2616058 (dynLambda!25764 lambda!350107 (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6357711 () Bool)

(assert (=> b!6357711 (= e!3860713 (forall!15441 (t!378684 (exprs!6149 (h!71419 zl!343))) lambda!350107))))

(assert (= (and d!1994408 (not res!2616057)) b!6357710))

(assert (= (and b!6357710 res!2616058) b!6357711))

(declare-fun b_lambda!241685 () Bool)

(assert (=> (not b_lambda!241685) (not b!6357710)))

(declare-fun m!7163810 () Bool)

(assert (=> b!6357710 m!7163810))

(declare-fun m!7163812 () Bool)

(assert (=> b!6357711 m!7163812))

(assert (=> d!1994278 d!1994408))

(declare-fun d!1994410 () Bool)

(assert (=> d!1994410 (= (flatMap!1770 lt!2366187 lambda!350035) (choose!47199 lt!2366187 lambda!350035))))

(declare-fun bs!1592363 () Bool)

(assert (= bs!1592363 d!1994410))

(declare-fun m!7163814 () Bool)

(assert (=> bs!1592363 m!7163814))

(assert (=> d!1994102 d!1994410))

(declare-fun d!1994412 () Bool)

(assert (=> d!1994412 (= (Exists!3335 (ite c!1157039 lambda!350109 lambda!350110)) (choose!47205 (ite c!1157039 lambda!350109 lambda!350110)))))

(declare-fun bs!1592364 () Bool)

(assert (= bs!1592364 d!1994412))

(declare-fun m!7163816 () Bool)

(assert (=> bs!1592364 m!7163816))

(assert (=> bm!542155 d!1994412))

(assert (=> d!1994204 d!1994236))

(assert (=> d!1994204 d!1994234))

(declare-fun d!1994414 () Bool)

(assert (=> d!1994414 (= (matchR!8448 lt!2366170 s!2326) (matchRSpec!3366 lt!2366170 s!2326))))

(assert (=> d!1994414 true))

(declare-fun _$88!5028 () Unit!158391)

(assert (=> d!1994414 (= (choose!47208 lt!2366170 s!2326) _$88!5028)))

(declare-fun bs!1592365 () Bool)

(assert (= bs!1592365 d!1994414))

(assert (=> bs!1592365 m!7162638))

(assert (=> bs!1592365 m!7162596))

(assert (=> d!1994204 d!1994414))

(declare-fun b!6357712 () Bool)

(declare-fun res!2616061 () Bool)

(declare-fun e!3860719 () Bool)

(assert (=> b!6357712 (=> res!2616061 e!3860719)))

(assert (=> b!6357712 (= res!2616061 (not ((_ is Concat!25110) lt!2366170)))))

(declare-fun e!3860720 () Bool)

(assert (=> b!6357712 (= e!3860720 e!3860719)))

(declare-fun c!1157102 () Bool)

(declare-fun call!542198 () Bool)

(declare-fun c!1157103 () Bool)

(declare-fun bm!542192 () Bool)

(assert (=> bm!542192 (= call!542198 (validRegex!8001 (ite c!1157102 (reg!16594 lt!2366170) (ite c!1157103 (regOne!33043 lt!2366170) (regOne!33042 lt!2366170)))))))

(declare-fun b!6357713 () Bool)

(declare-fun e!3860715 () Bool)

(declare-fun call!542197 () Bool)

(assert (=> b!6357713 (= e!3860715 call!542197)))

(declare-fun bm!542193 () Bool)

(assert (=> bm!542193 (= call!542197 (validRegex!8001 (ite c!1157103 (regTwo!33043 lt!2366170) (regTwo!33042 lt!2366170))))))

(declare-fun b!6357714 () Bool)

(declare-fun e!3860714 () Bool)

(assert (=> b!6357714 (= e!3860714 call!542197)))

(declare-fun bm!542194 () Bool)

(declare-fun call!542199 () Bool)

(assert (=> bm!542194 (= call!542199 call!542198)))

(declare-fun b!6357716 () Bool)

(declare-fun e!3860717 () Bool)

(declare-fun e!3860718 () Bool)

(assert (=> b!6357716 (= e!3860717 e!3860718)))

(assert (=> b!6357716 (= c!1157102 ((_ is Star!16265) lt!2366170))))

(declare-fun b!6357717 () Bool)

(assert (=> b!6357717 (= e!3860719 e!3860714)))

(declare-fun res!2616063 () Bool)

(assert (=> b!6357717 (=> (not res!2616063) (not e!3860714))))

(assert (=> b!6357717 (= res!2616063 call!542199)))

(declare-fun b!6357718 () Bool)

(declare-fun res!2616059 () Bool)

(assert (=> b!6357718 (=> (not res!2616059) (not e!3860715))))

(assert (=> b!6357718 (= res!2616059 call!542199)))

(assert (=> b!6357718 (= e!3860720 e!3860715)))

(declare-fun b!6357719 () Bool)

(declare-fun e!3860716 () Bool)

(assert (=> b!6357719 (= e!3860718 e!3860716)))

(declare-fun res!2616060 () Bool)

(assert (=> b!6357719 (= res!2616060 (not (nullable!6258 (reg!16594 lt!2366170))))))

(assert (=> b!6357719 (=> (not res!2616060) (not e!3860716))))

(declare-fun b!6357720 () Bool)

(assert (=> b!6357720 (= e!3860718 e!3860720)))

(assert (=> b!6357720 (= c!1157103 ((_ is Union!16265) lt!2366170))))

(declare-fun d!1994416 () Bool)

(declare-fun res!2616062 () Bool)

(assert (=> d!1994416 (=> res!2616062 e!3860717)))

(assert (=> d!1994416 (= res!2616062 ((_ is ElementMatch!16265) lt!2366170))))

(assert (=> d!1994416 (= (validRegex!8001 lt!2366170) e!3860717)))

(declare-fun b!6357715 () Bool)

(assert (=> b!6357715 (= e!3860716 call!542198)))

(assert (= (and d!1994416 (not res!2616062)) b!6357716))

(assert (= (and b!6357716 c!1157102) b!6357719))

(assert (= (and b!6357716 (not c!1157102)) b!6357720))

(assert (= (and b!6357719 res!2616060) b!6357715))

(assert (= (and b!6357720 c!1157103) b!6357718))

(assert (= (and b!6357720 (not c!1157103)) b!6357712))

(assert (= (and b!6357718 res!2616059) b!6357713))

(assert (= (and b!6357712 (not res!2616061)) b!6357717))

(assert (= (and b!6357717 res!2616063) b!6357714))

(assert (= (or b!6357713 b!6357714) bm!542193))

(assert (= (or b!6357718 b!6357717) bm!542194))

(assert (= (or b!6357715 bm!542194) bm!542192))

(declare-fun m!7163818 () Bool)

(assert (=> bm!542192 m!7163818))

(declare-fun m!7163820 () Bool)

(assert (=> bm!542193 m!7163820))

(declare-fun m!7163822 () Bool)

(assert (=> b!6357719 m!7163822))

(assert (=> d!1994204 d!1994416))

(declare-fun d!1994418 () Bool)

(assert (=> d!1994418 (= (isEmpty!37069 (tail!12107 (unfocusZipperList!1686 zl!343))) ((_ is Nil!64970) (tail!12107 (unfocusZipperList!1686 zl!343))))))

(assert (=> b!6356673 d!1994418))

(declare-fun d!1994420 () Bool)

(assert (=> d!1994420 (= (tail!12107 (unfocusZipperList!1686 zl!343)) (t!378684 (unfocusZipperList!1686 zl!343)))))

(assert (=> b!6356673 d!1994420))

(assert (=> b!6357356 d!1994348))

(declare-fun d!1994422 () Bool)

(assert (=> d!1994422 (= (isEmpty!37069 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))) ((_ is Nil!64970) (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(assert (=> b!6357308 d!1994422))

(declare-fun d!1994424 () Bool)

(assert (=> d!1994424 (= (isConcat!1190 lt!2366371) ((_ is Concat!25110) lt!2366371))))

(assert (=> b!6357376 d!1994424))

(assert (=> b!6357407 d!1994348))

(assert (=> b!6357466 d!1994348))

(declare-fun d!1994426 () Bool)

(assert (=> d!1994426 (= (isEmpty!37069 lt!2366196) ((_ is Nil!64970) lt!2366196))))

(assert (=> b!6357144 d!1994426))

(assert (=> b!6357480 d!1994376))

(declare-fun d!1994428 () Bool)

(assert (=> d!1994428 true))

(assert (=> d!1994428 true))

(declare-fun res!2616064 () Bool)

(assert (=> d!1994428 (= (choose!47205 lambda!349995) res!2616064)))

(assert (=> d!1994306 d!1994428))

(declare-fun d!1994430 () Bool)

(assert (=> d!1994430 true))

(assert (=> d!1994430 true))

(declare-fun res!2616065 () Bool)

(assert (=> d!1994430 (= (choose!47205 lambda!350001) res!2616065)))

(assert (=> d!1994164 d!1994430))

(declare-fun bs!1592366 () Bool)

(declare-fun b!6357721 () Bool)

(assert (= bs!1592366 (and b!6357721 b!6357396)))

(declare-fun lambda!350129 () Int)

(assert (=> bs!1592366 (= (and (= (reg!16594 (regOne!33043 lt!2366179)) (reg!16594 r!7292)) (= (regOne!33043 lt!2366179) r!7292)) (= lambda!350129 lambda!350109))))

(declare-fun bs!1592367 () Bool)

(assert (= bs!1592367 (and b!6357721 b!6356395)))

(assert (=> bs!1592367 (not (= lambda!350129 lambda!349995))))

(declare-fun bs!1592368 () Bool)

(assert (= bs!1592368 (and b!6357721 b!6357057)))

(assert (=> bs!1592368 (not (= lambda!350129 lambda!350078))))

(declare-fun bs!1592369 () Bool)

(assert (= bs!1592369 (and b!6357721 d!1994330)))

(assert (=> bs!1592369 (not (= lambda!350129 lambda!350122))))

(declare-fun bs!1592370 () Bool)

(assert (= bs!1592370 (and b!6357721 b!6356387)))

(assert (=> bs!1592370 (not (= lambda!350129 lambda!350001))))

(declare-fun bs!1592371 () Bool)

(assert (= bs!1592371 (and b!6357721 b!6357049)))

(assert (=> bs!1592371 (= (and (= (reg!16594 (regOne!33043 lt!2366179)) (reg!16594 lt!2366179)) (= (regOne!33043 lt!2366179) lt!2366179)) (= lambda!350129 lambda!350077))))

(declare-fun bs!1592372 () Bool)

(assert (= bs!1592372 (and b!6357721 d!1994256)))

(assert (=> bs!1592372 (not (= lambda!350129 lambda!350103))))

(declare-fun bs!1592373 () Bool)

(assert (= bs!1592373 (and b!6357721 b!6357250)))

(assert (=> bs!1592373 (= (and (= (reg!16594 (regOne!33043 lt!2366179)) (reg!16594 lt!2366170)) (= (regOne!33043 lt!2366179) lt!2366170)) (= lambda!350129 lambda!350098))))

(assert (=> bs!1592370 (not (= lambda!350129 lambda!349999))))

(declare-fun bs!1592374 () Bool)

(assert (= bs!1592374 (and b!6357721 d!1994310)))

(assert (=> bs!1592374 (not (= lambda!350129 lambda!350113))))

(assert (=> bs!1592372 (not (= lambda!350129 lambda!350102))))

(declare-fun bs!1592375 () Bool)

(assert (= bs!1592375 (and b!6357721 d!1994208)))

(assert (=> bs!1592375 (not (= lambda!350129 lambda!350097))))

(assert (=> bs!1592369 (not (= lambda!350129 lambda!350121))))

(declare-fun bs!1592376 () Bool)

(assert (= bs!1592376 (and b!6357721 b!6357617)))

(assert (=> bs!1592376 (= (and (= (reg!16594 (regOne!33043 lt!2366179)) (reg!16594 (regTwo!33043 lt!2366179))) (= (regOne!33043 lt!2366179) (regTwo!33043 lt!2366179))) (= lambda!350129 lambda!350124))))

(assert (=> bs!1592367 (not (= lambda!350129 lambda!349996))))

(assert (=> bs!1592374 (not (= lambda!350129 lambda!350112))))

(assert (=> bs!1592375 (not (= lambda!350129 lambda!350096))))

(assert (=> bs!1592370 (not (= lambda!350129 lambda!350000))))

(declare-fun bs!1592377 () Bool)

(assert (= bs!1592377 (and b!6357721 b!6357258)))

(assert (=> bs!1592377 (not (= lambda!350129 lambda!350099))))

(declare-fun bs!1592378 () Bool)

(assert (= bs!1592378 (and b!6357721 b!6357625)))

(assert (=> bs!1592378 (not (= lambda!350129 lambda!350125))))

(declare-fun bs!1592379 () Bool)

(assert (= bs!1592379 (and b!6357721 b!6357404)))

(assert (=> bs!1592379 (not (= lambda!350129 lambda!350110))))

(declare-fun bs!1592380 () Bool)

(assert (= bs!1592380 (and b!6357721 d!1994308)))

(assert (=> bs!1592380 (not (= lambda!350129 lambda!350111))))

(assert (=> bs!1592370 (not (= lambda!350129 lambda!349998))))

(declare-fun bs!1592381 () Bool)

(assert (= bs!1592381 (and b!6357721 d!1994242)))

(assert (=> bs!1592381 (not (= lambda!350129 lambda!350101))))

(declare-fun bs!1592382 () Bool)

(assert (= bs!1592382 (and b!6357721 d!1994166)))

(assert (=> bs!1592382 (not (= lambda!350129 lambda!350061))))

(assert (=> b!6357721 true))

(assert (=> b!6357721 true))

(declare-fun bs!1592383 () Bool)

(declare-fun b!6357729 () Bool)

(assert (= bs!1592383 (and b!6357729 b!6357396)))

(declare-fun lambda!350130 () Int)

(assert (=> bs!1592383 (not (= lambda!350130 lambda!350109))))

(declare-fun bs!1592384 () Bool)

(assert (= bs!1592384 (and b!6357729 b!6356395)))

(assert (=> bs!1592384 (not (= lambda!350130 lambda!349995))))

(declare-fun bs!1592385 () Bool)

(assert (= bs!1592385 (and b!6357729 b!6357721)))

(assert (=> bs!1592385 (not (= lambda!350130 lambda!350129))))

(declare-fun bs!1592386 () Bool)

(assert (= bs!1592386 (and b!6357729 b!6357057)))

(assert (=> bs!1592386 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regOne!33042 lt!2366179)) (= (regTwo!33042 (regOne!33043 lt!2366179)) (regTwo!33042 lt!2366179))) (= lambda!350130 lambda!350078))))

(declare-fun bs!1592387 () Bool)

(assert (= bs!1592387 (and b!6357729 d!1994330)))

(assert (=> bs!1592387 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 lt!2366179)) (regTwo!33042 r!7292))) (= lambda!350130 lambda!350122))))

(declare-fun bs!1592388 () Bool)

(assert (= bs!1592388 (and b!6357729 b!6356387)))

(assert (=> bs!1592388 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 lt!2366179)) lt!2366173)) (= lambda!350130 lambda!350001))))

(declare-fun bs!1592389 () Bool)

(assert (= bs!1592389 (and b!6357729 b!6357049)))

(assert (=> bs!1592389 (not (= lambda!350130 lambda!350077))))

(declare-fun bs!1592390 () Bool)

(assert (= bs!1592390 (and b!6357729 d!1994256)))

(assert (=> bs!1592390 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 lt!2366179)) lt!2366173)) (= lambda!350130 lambda!350103))))

(declare-fun bs!1592391 () Bool)

(assert (= bs!1592391 (and b!6357729 b!6357250)))

(assert (=> bs!1592391 (not (= lambda!350130 lambda!350098))))

(assert (=> bs!1592388 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 lt!2366179)) lt!2366179)) (= lambda!350130 lambda!349999))))

(declare-fun bs!1592392 () Bool)

(assert (= bs!1592392 (and b!6357729 d!1994310)))

(assert (=> bs!1592392 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 lt!2366179)) (regTwo!33042 r!7292))) (= lambda!350130 lambda!350113))))

(assert (=> bs!1592390 (not (= lambda!350130 lambda!350102))))

(declare-fun bs!1592393 () Bool)

(assert (= bs!1592393 (and b!6357729 d!1994208)))

(assert (=> bs!1592393 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 lt!2366179)) lt!2366179)) (= lambda!350130 lambda!350097))))

(assert (=> bs!1592387 (not (= lambda!350130 lambda!350121))))

(declare-fun bs!1592394 () Bool)

(assert (= bs!1592394 (and b!6357729 b!6357617)))

(assert (=> bs!1592394 (not (= lambda!350130 lambda!350124))))

(assert (=> bs!1592384 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 lt!2366179)) (regTwo!33042 r!7292))) (= lambda!350130 lambda!349996))))

(assert (=> bs!1592392 (not (= lambda!350130 lambda!350112))))

(assert (=> bs!1592393 (not (= lambda!350130 lambda!350096))))

(assert (=> bs!1592388 (not (= lambda!350130 lambda!350000))))

(declare-fun bs!1592395 () Bool)

(assert (= bs!1592395 (and b!6357729 b!6357258)))

(assert (=> bs!1592395 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regOne!33042 lt!2366170)) (= (regTwo!33042 (regOne!33043 lt!2366179)) (regTwo!33042 lt!2366170))) (= lambda!350130 lambda!350099))))

(declare-fun bs!1592396 () Bool)

(assert (= bs!1592396 (and b!6357729 b!6357625)))

(assert (=> bs!1592396 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regOne!33042 (regTwo!33043 lt!2366179))) (= (regTwo!33042 (regOne!33043 lt!2366179)) (regTwo!33042 (regTwo!33043 lt!2366179)))) (= lambda!350130 lambda!350125))))

(declare-fun bs!1592397 () Bool)

(assert (= bs!1592397 (and b!6357729 b!6357404)))

(assert (=> bs!1592397 (= (and (= (regOne!33042 (regOne!33043 lt!2366179)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 lt!2366179)) (regTwo!33042 r!7292))) (= lambda!350130 lambda!350110))))

(declare-fun bs!1592398 () Bool)

(assert (= bs!1592398 (and b!6357729 d!1994308)))

(assert (=> bs!1592398 (not (= lambda!350130 lambda!350111))))

(assert (=> bs!1592388 (not (= lambda!350130 lambda!349998))))

(declare-fun bs!1592399 () Bool)

(assert (= bs!1592399 (and b!6357729 d!1994242)))

(assert (=> bs!1592399 (not (= lambda!350130 lambda!350101))))

(declare-fun bs!1592400 () Bool)

(assert (= bs!1592400 (and b!6357729 d!1994166)))

(assert (=> bs!1592400 (not (= lambda!350130 lambda!350061))))

(assert (=> b!6357729 true))

(assert (=> b!6357729 true))

(declare-fun e!3860723 () Bool)

(declare-fun call!542201 () Bool)

(assert (=> b!6357721 (= e!3860723 call!542201)))

(declare-fun bm!542195 () Bool)

(declare-fun call!542200 () Bool)

(assert (=> bm!542195 (= call!542200 (isEmpty!37073 s!2326))))

(declare-fun b!6357722 () Bool)

(declare-fun e!3860724 () Bool)

(assert (=> b!6357722 (= e!3860724 call!542200)))

(declare-fun b!6357723 () Bool)

(declare-fun e!3860726 () Bool)

(assert (=> b!6357723 (= e!3860726 (= s!2326 (Cons!64972 (c!1156730 (regOne!33043 lt!2366179)) Nil!64972)))))

(declare-fun b!6357724 () Bool)

(declare-fun e!3860727 () Bool)

(assert (=> b!6357724 (= e!3860727 (matchRSpec!3366 (regTwo!33043 (regOne!33043 lt!2366179)) s!2326))))

(declare-fun b!6357725 () Bool)

(declare-fun res!2616067 () Bool)

(assert (=> b!6357725 (=> res!2616067 e!3860723)))

(assert (=> b!6357725 (= res!2616067 call!542200)))

(declare-fun e!3860721 () Bool)

(assert (=> b!6357725 (= e!3860721 e!3860723)))

(declare-fun bm!542196 () Bool)

(declare-fun c!1157104 () Bool)

(assert (=> bm!542196 (= call!542201 (Exists!3335 (ite c!1157104 lambda!350129 lambda!350130)))))

(declare-fun b!6357726 () Bool)

(declare-fun e!3860722 () Bool)

(assert (=> b!6357726 (= e!3860722 e!3860721)))

(assert (=> b!6357726 (= c!1157104 ((_ is Star!16265) (regOne!33043 lt!2366179)))))

(declare-fun d!1994432 () Bool)

(declare-fun c!1157107 () Bool)

(assert (=> d!1994432 (= c!1157107 ((_ is EmptyExpr!16265) (regOne!33043 lt!2366179)))))

(assert (=> d!1994432 (= (matchRSpec!3366 (regOne!33043 lt!2366179) s!2326) e!3860724)))

(declare-fun b!6357727 () Bool)

(declare-fun c!1157106 () Bool)

(assert (=> b!6357727 (= c!1157106 ((_ is ElementMatch!16265) (regOne!33043 lt!2366179)))))

(declare-fun e!3860725 () Bool)

(assert (=> b!6357727 (= e!3860725 e!3860726)))

(declare-fun b!6357728 () Bool)

(declare-fun c!1157105 () Bool)

(assert (=> b!6357728 (= c!1157105 ((_ is Union!16265) (regOne!33043 lt!2366179)))))

(assert (=> b!6357728 (= e!3860726 e!3860722)))

(assert (=> b!6357729 (= e!3860721 call!542201)))

(declare-fun b!6357730 () Bool)

(assert (=> b!6357730 (= e!3860722 e!3860727)))

(declare-fun res!2616066 () Bool)

(assert (=> b!6357730 (= res!2616066 (matchRSpec!3366 (regOne!33043 (regOne!33043 lt!2366179)) s!2326))))

(assert (=> b!6357730 (=> res!2616066 e!3860727)))

(declare-fun b!6357731 () Bool)

(assert (=> b!6357731 (= e!3860724 e!3860725)))

(declare-fun res!2616068 () Bool)

(assert (=> b!6357731 (= res!2616068 (not ((_ is EmptyLang!16265) (regOne!33043 lt!2366179))))))

(assert (=> b!6357731 (=> (not res!2616068) (not e!3860725))))

(assert (= (and d!1994432 c!1157107) b!6357722))

(assert (= (and d!1994432 (not c!1157107)) b!6357731))

(assert (= (and b!6357731 res!2616068) b!6357727))

(assert (= (and b!6357727 c!1157106) b!6357723))

(assert (= (and b!6357727 (not c!1157106)) b!6357728))

(assert (= (and b!6357728 c!1157105) b!6357730))

(assert (= (and b!6357728 (not c!1157105)) b!6357726))

(assert (= (and b!6357730 (not res!2616066)) b!6357724))

(assert (= (and b!6357726 c!1157104) b!6357725))

(assert (= (and b!6357726 (not c!1157104)) b!6357729))

(assert (= (and b!6357725 (not res!2616067)) b!6357721))

(assert (= (or b!6357721 b!6357729) bm!542196))

(assert (= (or b!6357722 b!6357725) bm!542195))

(assert (=> bm!542195 m!7163190))

(declare-fun m!7163824 () Bool)

(assert (=> b!6357724 m!7163824))

(declare-fun m!7163826 () Bool)

(assert (=> bm!542196 m!7163826))

(declare-fun m!7163828 () Bool)

(assert (=> b!6357730 m!7163828))

(assert (=> b!6357058 d!1994432))

(assert (=> b!6356705 d!1994262))

(declare-fun d!1994434 () Bool)

(declare-fun lt!2366400 () Int)

(assert (=> d!1994434 (>= lt!2366400 0)))

(declare-fun e!3860728 () Int)

(assert (=> d!1994434 (= lt!2366400 e!3860728)))

(declare-fun c!1157108 () Bool)

(assert (=> d!1994434 (= c!1157108 ((_ is Cons!64971) (t!378685 zl!343)))))

(assert (=> d!1994434 (= (zipperDepthTotal!402 (t!378685 zl!343)) lt!2366400)))

(declare-fun b!6357732 () Bool)

(assert (=> b!6357732 (= e!3860728 (+ (contextDepthTotal!374 (h!71419 (t!378685 zl!343))) (zipperDepthTotal!402 (t!378685 (t!378685 zl!343)))))))

(declare-fun b!6357733 () Bool)

(assert (=> b!6357733 (= e!3860728 0)))

(assert (= (and d!1994434 c!1157108) b!6357732))

(assert (= (and d!1994434 (not c!1157108)) b!6357733))

(declare-fun m!7163830 () Bool)

(assert (=> b!6357732 m!7163830))

(declare-fun m!7163832 () Bool)

(assert (=> b!6357732 m!7163832))

(assert (=> b!6356705 d!1994434))

(declare-fun bs!1592401 () Bool)

(declare-fun d!1994436 () Bool)

(assert (= bs!1592401 (and d!1994436 b!6356814)))

(declare-fun lambda!350131 () Int)

(assert (=> bs!1592401 (not (= lambda!350131 lambda!350046))))

(declare-fun bs!1592402 () Bool)

(assert (= bs!1592402 (and d!1994436 d!1994398)))

(assert (=> bs!1592402 (= lambda!350131 lambda!350127)))

(declare-fun bs!1592403 () Bool)

(assert (= bs!1592403 (and d!1994436 b!6356821)))

(assert (=> bs!1592403 (not (= lambda!350131 lambda!350052))))

(declare-fun bs!1592404 () Bool)

(assert (= bs!1592404 (and d!1994436 b!6356819)))

(assert (=> bs!1592404 (not (= lambda!350131 lambda!350051))))

(declare-fun bs!1592405 () Bool)

(assert (= bs!1592405 (and d!1994436 b!6356816)))

(assert (=> bs!1592405 (not (= lambda!350131 lambda!350048))))

(declare-fun bs!1592406 () Bool)

(assert (= bs!1592406 (and d!1994436 d!1994400)))

(assert (=> bs!1592406 (= lambda!350131 lambda!350128)))

(declare-fun bs!1592407 () Bool)

(assert (= bs!1592407 (and d!1994436 d!1994334)))

(assert (=> bs!1592407 (= lambda!350131 lambda!350123)))

(declare-fun bs!1592408 () Bool)

(assert (= bs!1592408 (and d!1994436 d!1994324)))

(assert (=> bs!1592408 (= lambda!350131 lambda!350116)))

(assert (=> d!1994436 (= (nullableZipper!2031 lt!2366184) (exists!2570 lt!2366184 lambda!350131))))

(declare-fun bs!1592409 () Bool)

(assert (= bs!1592409 d!1994436))

(declare-fun m!7163834 () Bool)

(assert (=> bs!1592409 m!7163834))

(assert (=> b!6357366 d!1994436))

(declare-fun d!1994438 () Bool)

(declare-fun c!1157112 () Bool)

(assert (=> d!1994438 (= c!1157112 (and ((_ is ElementMatch!16265) (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (= (c!1156730 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (h!71420 s!2326))))))

(declare-fun e!3860732 () (InoxSet Context!11298))

(assert (=> d!1994438 (= (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))) (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (h!71420 s!2326)) e!3860732)))

(declare-fun b!6357734 () Bool)

(declare-fun c!1157110 () Bool)

(assert (=> b!6357734 (= c!1157110 ((_ is Star!16265) (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))))))

(declare-fun e!3860729 () (InoxSet Context!11298))

(declare-fun e!3860731 () (InoxSet Context!11298))

(assert (=> b!6357734 (= e!3860729 e!3860731)))

(declare-fun bm!542197 () Bool)

(declare-fun call!542205 () (InoxSet Context!11298))

(declare-fun call!542202 () (InoxSet Context!11298))

(assert (=> bm!542197 (= call!542205 call!542202)))

(declare-fun b!6357735 () Bool)

(declare-fun e!3860733 () (InoxSet Context!11298))

(assert (=> b!6357735 (= e!3860732 e!3860733)))

(declare-fun c!1157109 () Bool)

(assert (=> b!6357735 (= c!1157109 ((_ is Union!16265) (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))))))

(declare-fun b!6357736 () Bool)

(assert (=> b!6357736 (= e!3860729 call!542205)))

(declare-fun c!1157111 () Bool)

(declare-fun call!542203 () (InoxSet Context!11298))

(declare-fun call!542206 () List!65094)

(declare-fun bm!542198 () Bool)

(declare-fun c!1157113 () Bool)

(assert (=> bm!542198 (= call!542203 (derivationStepZipperDown!1513 (ite c!1157109 (regTwo!33043 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (ite c!1157111 (regTwo!33042 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (ite c!1157113 (regOne!33042 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (reg!16594 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))))) (ite (or c!1157109 c!1157111) (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (Context!11299 call!542206)) (h!71420 s!2326)))))

(declare-fun b!6357737 () Bool)

(declare-fun call!542204 () (InoxSet Context!11298))

(assert (=> b!6357737 (= e!3860733 ((_ map or) call!542204 call!542203))))

(declare-fun b!6357738 () Bool)

(declare-fun e!3860730 () (InoxSet Context!11298))

(assert (=> b!6357738 (= e!3860730 ((_ map or) call!542204 call!542202))))

(declare-fun b!6357739 () Bool)

(assert (=> b!6357739 (= e!3860732 (store ((as const (Array Context!11298 Bool)) false) (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) true))))

(declare-fun b!6357740 () Bool)

(declare-fun e!3860734 () Bool)

(assert (=> b!6357740 (= e!3860734 (nullable!6258 (regOne!33042 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))))))

(declare-fun bm!542199 () Bool)

(assert (=> bm!542199 (= call!542202 call!542203)))

(declare-fun bm!542200 () Bool)

(declare-fun call!542207 () List!65094)

(assert (=> bm!542200 (= call!542207 ($colon$colon!2126 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))) (ite (or c!1157111 c!1157113) (regTwo!33042 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))))))

(declare-fun bm!542201 () Bool)

(assert (=> bm!542201 (= call!542206 call!542207)))

(declare-fun b!6357741 () Bool)

(assert (=> b!6357741 (= c!1157111 e!3860734)))

(declare-fun res!2616069 () Bool)

(assert (=> b!6357741 (=> (not res!2616069) (not e!3860734))))

(assert (=> b!6357741 (= res!2616069 ((_ is Concat!25110) (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))))))

(assert (=> b!6357741 (= e!3860733 e!3860730)))

(declare-fun b!6357742 () Bool)

(assert (=> b!6357742 (= e!3860731 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6357743 () Bool)

(assert (=> b!6357743 (= e!3860731 call!542205)))

(declare-fun bm!542202 () Bool)

(assert (=> bm!542202 (= call!542204 (derivationStepZipperDown!1513 (ite c!1157109 (regOne!33043 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (regOne!33042 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))) (ite c!1157109 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (Context!11299 call!542207)) (h!71420 s!2326)))))

(declare-fun b!6357744 () Bool)

(assert (=> b!6357744 (= e!3860730 e!3860729)))

(assert (=> b!6357744 (= c!1157113 ((_ is Concat!25110) (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))))))

(assert (= (and d!1994438 c!1157112) b!6357739))

(assert (= (and d!1994438 (not c!1157112)) b!6357735))

(assert (= (and b!6357735 c!1157109) b!6357737))

(assert (= (and b!6357735 (not c!1157109)) b!6357741))

(assert (= (and b!6357741 res!2616069) b!6357740))

(assert (= (and b!6357741 c!1157111) b!6357738))

(assert (= (and b!6357741 (not c!1157111)) b!6357744))

(assert (= (and b!6357744 c!1157113) b!6357736))

(assert (= (and b!6357744 (not c!1157113)) b!6357734))

(assert (= (and b!6357734 c!1157110) b!6357743))

(assert (= (and b!6357734 (not c!1157110)) b!6357742))

(assert (= (or b!6357736 b!6357743) bm!542201))

(assert (= (or b!6357736 b!6357743) bm!542197))

(assert (= (or b!6357738 bm!542201) bm!542200))

(assert (= (or b!6357738 bm!542197) bm!542199))

(assert (= (or b!6357737 bm!542199) bm!542198))

(assert (= (or b!6357737 b!6357738) bm!542202))

(declare-fun m!7163836 () Bool)

(assert (=> b!6357739 m!7163836))

(declare-fun m!7163838 () Bool)

(assert (=> bm!542198 m!7163838))

(declare-fun m!7163840 () Bool)

(assert (=> b!6357740 m!7163840))

(declare-fun m!7163842 () Bool)

(assert (=> bm!542202 m!7163842))

(declare-fun m!7163844 () Bool)

(assert (=> bm!542200 m!7163844))

(assert (=> bm!542084 d!1994438))

(assert (=> b!6357461 d!1994364))

(assert (=> b!6357365 d!1994340))

(assert (=> b!6357365 d!1994342))

(declare-fun d!1994440 () Bool)

(assert (=> d!1994440 true))

(declare-fun setRes!43303 () Bool)

(assert (=> d!1994440 setRes!43303))

(declare-fun condSetEmpty!43303 () Bool)

(declare-fun res!2616072 () (InoxSet Context!11298))

(assert (=> d!1994440 (= condSetEmpty!43303 (= res!2616072 ((as const (Array Context!11298 Bool)) false)))))

(assert (=> d!1994440 (= (choose!47199 lt!2366187 lambda!349997) res!2616072)))

(declare-fun setIsEmpty!43303 () Bool)

(assert (=> setIsEmpty!43303 setRes!43303))

(declare-fun setElem!43303 () Context!11298)

(declare-fun setNonEmpty!43303 () Bool)

(declare-fun e!3860737 () Bool)

(declare-fun tp!1770833 () Bool)

(assert (=> setNonEmpty!43303 (= setRes!43303 (and tp!1770833 (inv!83909 setElem!43303) e!3860737))))

(declare-fun setRest!43303 () (InoxSet Context!11298))

(assert (=> setNonEmpty!43303 (= res!2616072 ((_ map or) (store ((as const (Array Context!11298 Bool)) false) setElem!43303 true) setRest!43303))))

(declare-fun b!6357747 () Bool)

(declare-fun tp!1770834 () Bool)

(assert (=> b!6357747 (= e!3860737 tp!1770834)))

(assert (= (and d!1994440 condSetEmpty!43303) setIsEmpty!43303))

(assert (= (and d!1994440 (not condSetEmpty!43303)) setNonEmpty!43303))

(assert (= setNonEmpty!43303 b!6357747))

(declare-fun m!7163846 () Bool)

(assert (=> setNonEmpty!43303 m!7163846))

(assert (=> d!1994086 d!1994440))

(declare-fun bm!542209 () Bool)

(declare-fun c!1157123 () Bool)

(declare-fun c!1157125 () Bool)

(declare-fun call!542216 () Int)

(assert (=> bm!542209 (= call!542216 (regexDepthTotal!222 (ite c!1157123 (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1157125 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))))))))

(declare-fun bm!542210 () Bool)

(declare-fun call!542214 () Int)

(assert (=> bm!542210 (= call!542214 (regexDepthTotal!222 (ite c!1157125 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun b!6357764 () Bool)

(declare-fun e!3860746 () Int)

(declare-fun call!542215 () Int)

(assert (=> b!6357764 (= e!3860746 (+ 1 call!542214 call!542215))))

(declare-fun b!6357765 () Bool)

(declare-fun e!3860748 () Int)

(assert (=> b!6357765 (= e!3860748 (+ 1 call!542216))))

(declare-fun b!6357766 () Bool)

(declare-fun e!3860747 () Int)

(assert (=> b!6357766 (= e!3860747 1)))

(declare-fun b!6357767 () Bool)

(declare-fun e!3860749 () Int)

(assert (=> b!6357767 (= e!3860749 (+ 1 call!542214 call!542215))))

(declare-fun b!6357769 () Bool)

(assert (=> b!6357769 (= e!3860749 1)))

(declare-fun b!6357770 () Bool)

(assert (=> b!6357770 (= e!3860747 e!3860748)))

(assert (=> b!6357770 (= c!1157123 ((_ is Star!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun bm!542211 () Bool)

(assert (=> bm!542211 (= call!542215 call!542216)))

(declare-fun b!6357771 () Bool)

(assert (=> b!6357771 (= c!1157125 ((_ is Union!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> b!6357771 (= e!3860748 e!3860746)))

(declare-fun d!1994442 () Bool)

(declare-fun lt!2366403 () Int)

(assert (=> d!1994442 (> lt!2366403 0)))

(assert (=> d!1994442 (= lt!2366403 e!3860747)))

(declare-fun c!1157124 () Bool)

(assert (=> d!1994442 (= c!1157124 ((_ is ElementMatch!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> d!1994442 (= (regexDepthTotal!222 (h!71418 (exprs!6149 (h!71419 zl!343)))) lt!2366403)))

(declare-fun b!6357768 () Bool)

(assert (=> b!6357768 (= e!3860746 e!3860749)))

(declare-fun c!1157122 () Bool)

(assert (=> b!6357768 (= c!1157122 ((_ is Concat!25110) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (= (and d!1994442 c!1157124) b!6357766))

(assert (= (and d!1994442 (not c!1157124)) b!6357770))

(assert (= (and b!6357770 c!1157123) b!6357765))

(assert (= (and b!6357770 (not c!1157123)) b!6357771))

(assert (= (and b!6357771 c!1157125) b!6357764))

(assert (= (and b!6357771 (not c!1157125)) b!6357768))

(assert (= (and b!6357768 c!1157122) b!6357767))

(assert (= (and b!6357768 (not c!1157122)) b!6357769))

(assert (= (or b!6357764 b!6357767) bm!542211))

(assert (= (or b!6357764 b!6357767) bm!542210))

(assert (= (or b!6357765 bm!542211) bm!542209))

(declare-fun m!7163848 () Bool)

(assert (=> bm!542209 m!7163848))

(declare-fun m!7163850 () Bool)

(assert (=> bm!542210 m!7163850))

(assert (=> b!6357350 d!1994442))

(declare-fun d!1994444 () Bool)

(declare-fun lt!2366404 () Int)

(assert (=> d!1994444 (>= lt!2366404 0)))

(declare-fun e!3860750 () Int)

(assert (=> d!1994444 (= lt!2366404 e!3860750)))

(declare-fun c!1157126 () Bool)

(assert (=> d!1994444 (= c!1157126 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(assert (=> d!1994444 (= (contextDepthTotal!374 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343))))) lt!2366404)))

(declare-fun b!6357772 () Bool)

(assert (=> b!6357772 (= e!3860750 (+ (regexDepthTotal!222 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343))))))) (contextDepthTotal!374 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343))))))))))))

(declare-fun b!6357773 () Bool)

(assert (=> b!6357773 (= e!3860750 1)))

(assert (= (and d!1994444 c!1157126) b!6357772))

(assert (= (and d!1994444 (not c!1157126)) b!6357773))

(declare-fun m!7163852 () Bool)

(assert (=> b!6357772 m!7163852))

(declare-fun m!7163854 () Bool)

(assert (=> b!6357772 m!7163854))

(assert (=> b!6357350 d!1994444))

(declare-fun b!6357774 () Bool)

(declare-fun e!3860757 () Bool)

(assert (=> b!6357774 (= e!3860757 (not (= (head!13023 s!2326) (c!1156730 (regTwo!33042 r!7292)))))))

(declare-fun b!6357775 () Bool)

(declare-fun res!2616077 () Bool)

(declare-fun e!3860756 () Bool)

(assert (=> b!6357775 (=> (not res!2616077) (not e!3860756))))

(declare-fun call!542217 () Bool)

(assert (=> b!6357775 (= res!2616077 (not call!542217))))

(declare-fun b!6357776 () Bool)

(declare-fun e!3860754 () Bool)

(declare-fun lt!2366405 () Bool)

(assert (=> b!6357776 (= e!3860754 (= lt!2366405 call!542217))))

(declare-fun bm!542212 () Bool)

(assert (=> bm!542212 (= call!542217 (isEmpty!37073 s!2326))))

(declare-fun b!6357777 () Bool)

(declare-fun e!3860753 () Bool)

(declare-fun e!3860751 () Bool)

(assert (=> b!6357777 (= e!3860753 e!3860751)))

(declare-fun res!2616076 () Bool)

(assert (=> b!6357777 (=> (not res!2616076) (not e!3860751))))

(assert (=> b!6357777 (= res!2616076 (not lt!2366405))))

(declare-fun b!6357778 () Bool)

(assert (=> b!6357778 (= e!3860756 (= (head!13023 s!2326) (c!1156730 (regTwo!33042 r!7292))))))

(declare-fun b!6357779 () Bool)

(declare-fun e!3860752 () Bool)

(assert (=> b!6357779 (= e!3860752 (not lt!2366405))))

(declare-fun b!6357780 () Bool)

(assert (=> b!6357780 (= e!3860751 e!3860757)))

(declare-fun res!2616078 () Bool)

(assert (=> b!6357780 (=> res!2616078 e!3860757)))

(assert (=> b!6357780 (= res!2616078 call!542217)))

(declare-fun b!6357781 () Bool)

(assert (=> b!6357781 (= e!3860754 e!3860752)))

(declare-fun c!1157127 () Bool)

(assert (=> b!6357781 (= c!1157127 ((_ is EmptyLang!16265) (regTwo!33042 r!7292)))))

(declare-fun b!6357782 () Bool)

(declare-fun e!3860755 () Bool)

(assert (=> b!6357782 (= e!3860755 (nullable!6258 (regTwo!33042 r!7292)))))

(declare-fun b!6357783 () Bool)

(declare-fun res!2616080 () Bool)

(assert (=> b!6357783 (=> res!2616080 e!3860753)))

(assert (=> b!6357783 (= res!2616080 (not ((_ is ElementMatch!16265) (regTwo!33042 r!7292))))))

(assert (=> b!6357783 (= e!3860752 e!3860753)))

(declare-fun b!6357784 () Bool)

(declare-fun res!2616075 () Bool)

(assert (=> b!6357784 (=> res!2616075 e!3860757)))

(assert (=> b!6357784 (= res!2616075 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6357786 () Bool)

(declare-fun res!2616073 () Bool)

(assert (=> b!6357786 (=> res!2616073 e!3860753)))

(assert (=> b!6357786 (= res!2616073 e!3860756)))

(declare-fun res!2616079 () Bool)

(assert (=> b!6357786 (=> (not res!2616079) (not e!3860756))))

(assert (=> b!6357786 (= res!2616079 lt!2366405)))

(declare-fun b!6357787 () Bool)

(declare-fun res!2616074 () Bool)

(assert (=> b!6357787 (=> (not res!2616074) (not e!3860756))))

(assert (=> b!6357787 (= res!2616074 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994446 () Bool)

(assert (=> d!1994446 e!3860754))

(declare-fun c!1157129 () Bool)

(assert (=> d!1994446 (= c!1157129 ((_ is EmptyExpr!16265) (regTwo!33042 r!7292)))))

(assert (=> d!1994446 (= lt!2366405 e!3860755)))

(declare-fun c!1157128 () Bool)

(assert (=> d!1994446 (= c!1157128 (isEmpty!37073 s!2326))))

(assert (=> d!1994446 (validRegex!8001 (regTwo!33042 r!7292))))

(assert (=> d!1994446 (= (matchR!8448 (regTwo!33042 r!7292) s!2326) lt!2366405)))

(declare-fun b!6357785 () Bool)

(assert (=> b!6357785 (= e!3860755 (matchR!8448 (derivativeStep!4970 (regTwo!33042 r!7292) (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994446 c!1157128) b!6357782))

(assert (= (and d!1994446 (not c!1157128)) b!6357785))

(assert (= (and d!1994446 c!1157129) b!6357776))

(assert (= (and d!1994446 (not c!1157129)) b!6357781))

(assert (= (and b!6357781 c!1157127) b!6357779))

(assert (= (and b!6357781 (not c!1157127)) b!6357783))

(assert (= (and b!6357783 (not res!2616080)) b!6357786))

(assert (= (and b!6357786 res!2616079) b!6357775))

(assert (= (and b!6357775 res!2616077) b!6357787))

(assert (= (and b!6357787 res!2616074) b!6357778))

(assert (= (and b!6357786 (not res!2616073)) b!6357777))

(assert (= (and b!6357777 res!2616076) b!6357780))

(assert (= (and b!6357780 (not res!2616078)) b!6357784))

(assert (= (and b!6357784 (not res!2616075)) b!6357774))

(assert (= (or b!6357776 b!6357775 b!6357780) bm!542212))

(assert (=> b!6357784 m!7163356))

(assert (=> b!6357784 m!7163356))

(assert (=> b!6357784 m!7163358))

(assert (=> b!6357785 m!7163360))

(assert (=> b!6357785 m!7163360))

(declare-fun m!7163856 () Bool)

(assert (=> b!6357785 m!7163856))

(assert (=> b!6357785 m!7163356))

(assert (=> b!6357785 m!7163856))

(assert (=> b!6357785 m!7163356))

(declare-fun m!7163858 () Bool)

(assert (=> b!6357785 m!7163858))

(assert (=> b!6357787 m!7163356))

(assert (=> b!6357787 m!7163356))

(assert (=> b!6357787 m!7163358))

(assert (=> b!6357778 m!7163360))

(declare-fun m!7163860 () Bool)

(assert (=> b!6357782 m!7163860))

(assert (=> d!1994446 m!7163190))

(declare-fun m!7163862 () Bool)

(assert (=> d!1994446 m!7163862))

(assert (=> bm!542212 m!7163190))

(assert (=> b!6357774 m!7163360))

(assert (=> b!6357453 d!1994446))

(assert (=> b!6357309 d!1994286))

(declare-fun d!1994448 () Bool)

(assert (=> d!1994448 (= (isEmpty!37069 (t!378684 (unfocusZipperList!1686 zl!343))) ((_ is Nil!64970) (t!378684 (unfocusZipperList!1686 zl!343))))))

(assert (=> b!6356674 d!1994448))

(declare-fun b!6357802 () Bool)

(declare-fun e!3860773 () Bool)

(declare-fun e!3860774 () Bool)

(assert (=> b!6357802 (= e!3860773 e!3860774)))

(declare-fun res!2616092 () Bool)

(assert (=> b!6357802 (=> res!2616092 e!3860774)))

(assert (=> b!6357802 (= res!2616092 ((_ is Star!16265) (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun b!6357803 () Bool)

(declare-fun e!3860772 () Bool)

(declare-fun call!542222 () Bool)

(assert (=> b!6357803 (= e!3860772 call!542222)))

(declare-fun b!6357804 () Bool)

(declare-fun e!3860770 () Bool)

(assert (=> b!6357804 (= e!3860770 e!3860772)))

(declare-fun res!2616094 () Bool)

(declare-fun call!542223 () Bool)

(assert (=> b!6357804 (= res!2616094 call!542223)))

(assert (=> b!6357804 (=> (not res!2616094) (not e!3860772))))

(declare-fun bm!542217 () Bool)

(declare-fun c!1157132 () Bool)

(assert (=> bm!542217 (= call!542223 (nullable!6258 (ite c!1157132 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6357805 () Bool)

(declare-fun e!3860771 () Bool)

(assert (=> b!6357805 (= e!3860771 e!3860773)))

(declare-fun res!2616091 () Bool)

(assert (=> b!6357805 (=> (not res!2616091) (not e!3860773))))

(assert (=> b!6357805 (= res!2616091 (and (not ((_ is EmptyLang!16265) (regOne!33042 (regOne!33042 r!7292)))) (not ((_ is ElementMatch!16265) (regOne!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6357806 () Bool)

(assert (=> b!6357806 (= e!3860774 e!3860770)))

(assert (=> b!6357806 (= c!1157132 ((_ is Union!16265) (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun b!6357807 () Bool)

(declare-fun e!3860775 () Bool)

(assert (=> b!6357807 (= e!3860775 call!542222)))

(declare-fun d!1994450 () Bool)

(declare-fun res!2616093 () Bool)

(assert (=> d!1994450 (=> res!2616093 e!3860771)))

(assert (=> d!1994450 (= res!2616093 ((_ is EmptyExpr!16265) (regOne!33042 (regOne!33042 r!7292))))))

(assert (=> d!1994450 (= (nullableFct!2204 (regOne!33042 (regOne!33042 r!7292))) e!3860771)))

(declare-fun b!6357808 () Bool)

(assert (=> b!6357808 (= e!3860770 e!3860775)))

(declare-fun res!2616095 () Bool)

(assert (=> b!6357808 (= res!2616095 call!542223)))

(assert (=> b!6357808 (=> res!2616095 e!3860775)))

(declare-fun bm!542218 () Bool)

(assert (=> bm!542218 (= call!542222 (nullable!6258 (ite c!1157132 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))))))))

(assert (= (and d!1994450 (not res!2616093)) b!6357805))

(assert (= (and b!6357805 res!2616091) b!6357802))

(assert (= (and b!6357802 (not res!2616092)) b!6357806))

(assert (= (and b!6357806 c!1157132) b!6357808))

(assert (= (and b!6357806 (not c!1157132)) b!6357804))

(assert (= (and b!6357808 (not res!2616095)) b!6357807))

(assert (= (and b!6357804 res!2616094) b!6357803))

(assert (= (or b!6357807 b!6357803) bm!542218))

(assert (= (or b!6357808 b!6357804) bm!542217))

(declare-fun m!7163864 () Bool)

(assert (=> bm!542217 m!7163864))

(declare-fun m!7163866 () Bool)

(assert (=> bm!542218 m!7163866))

(assert (=> d!1994284 d!1994450))

(declare-fun d!1994452 () Bool)

(assert (=> d!1994452 (= (head!13022 lt!2366161) (h!71418 lt!2366161))))

(assert (=> b!6356989 d!1994452))

(declare-fun b!6357809 () Bool)

(declare-fun e!3860777 () (InoxSet Context!11298))

(declare-fun e!3860776 () (InoxSet Context!11298))

(assert (=> b!6357809 (= e!3860777 e!3860776)))

(declare-fun c!1157134 () Bool)

(assert (=> b!6357809 (= c!1157134 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194))))))))

(declare-fun bm!542219 () Bool)

(declare-fun call!542224 () (InoxSet Context!11298))

(assert (=> bm!542219 (= call!542224 (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194))))) (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194)))))) (h!71420 s!2326)))))

(declare-fun b!6357811 () Bool)

(assert (=> b!6357811 (= e!3860777 ((_ map or) call!542224 (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194)))))) (h!71420 s!2326))))))

(declare-fun b!6357812 () Bool)

(declare-fun e!3860778 () Bool)

(assert (=> b!6357812 (= e!3860778 (nullable!6258 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194)))))))))

(declare-fun b!6357813 () Bool)

(assert (=> b!6357813 (= e!3860776 ((as const (Array Context!11298 Bool)) false))))

(declare-fun d!1994454 () Bool)

(declare-fun c!1157133 () Bool)

(assert (=> d!1994454 (= c!1157133 e!3860778)))

(declare-fun res!2616096 () Bool)

(assert (=> d!1994454 (=> (not res!2616096) (not e!3860778))))

(assert (=> d!1994454 (= res!2616096 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194))))))))

(assert (=> d!1994454 (= (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 lt!2366194))) (h!71420 s!2326)) e!3860777)))

(declare-fun b!6357810 () Bool)

(assert (=> b!6357810 (= e!3860776 call!542224)))

(assert (= (and d!1994454 res!2616096) b!6357812))

(assert (= (and d!1994454 c!1157133) b!6357811))

(assert (= (and d!1994454 (not c!1157133)) b!6357809))

(assert (= (and b!6357809 c!1157134) b!6357810))

(assert (= (and b!6357809 (not c!1157134)) b!6357813))

(assert (= (or b!6357811 b!6357810) bm!542219))

(declare-fun m!7163868 () Bool)

(assert (=> bm!542219 m!7163868))

(declare-fun m!7163870 () Bool)

(assert (=> b!6357811 m!7163870))

(declare-fun m!7163872 () Bool)

(assert (=> b!6357812 m!7163872))

(assert (=> b!6356732 d!1994454))

(declare-fun d!1994456 () Bool)

(declare-fun c!1157135 () Bool)

(assert (=> d!1994456 (= c!1157135 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun e!3860779 () Bool)

(assert (=> d!1994456 (= (matchZipper!2277 (derivationStepZipper!2231 lt!2366187 (head!13023 s!2326)) (tail!12108 s!2326)) e!3860779)))

(declare-fun b!6357814 () Bool)

(assert (=> b!6357814 (= e!3860779 (nullableZipper!2031 (derivationStepZipper!2231 lt!2366187 (head!13023 s!2326))))))

(declare-fun b!6357815 () Bool)

(assert (=> b!6357815 (= e!3860779 (matchZipper!2277 (derivationStepZipper!2231 (derivationStepZipper!2231 lt!2366187 (head!13023 s!2326)) (head!13023 (tail!12108 s!2326))) (tail!12108 (tail!12108 s!2326))))))

(assert (= (and d!1994456 c!1157135) b!6357814))

(assert (= (and d!1994456 (not c!1157135)) b!6357815))

(assert (=> d!1994456 m!7163356))

(assert (=> d!1994456 m!7163358))

(assert (=> b!6357814 m!7163424))

(declare-fun m!7163874 () Bool)

(assert (=> b!6357814 m!7163874))

(assert (=> b!6357815 m!7163356))

(declare-fun m!7163876 () Bool)

(assert (=> b!6357815 m!7163876))

(assert (=> b!6357815 m!7163424))

(assert (=> b!6357815 m!7163876))

(declare-fun m!7163878 () Bool)

(assert (=> b!6357815 m!7163878))

(assert (=> b!6357815 m!7163356))

(declare-fun m!7163880 () Bool)

(assert (=> b!6357815 m!7163880))

(assert (=> b!6357815 m!7163878))

(assert (=> b!6357815 m!7163880))

(declare-fun m!7163882 () Bool)

(assert (=> b!6357815 m!7163882))

(assert (=> b!6357343 d!1994456))

(declare-fun bs!1592410 () Bool)

(declare-fun d!1994458 () Bool)

(assert (= bs!1592410 (and d!1994458 b!6356406)))

(declare-fun lambda!350132 () Int)

(assert (=> bs!1592410 (= (= (head!13023 s!2326) (h!71420 s!2326)) (= lambda!350132 lambda!349997))))

(declare-fun bs!1592411 () Bool)

(assert (= bs!1592411 (and d!1994458 d!1994102)))

(assert (=> bs!1592411 (= (= (head!13023 s!2326) (h!71420 s!2326)) (= lambda!350132 lambda!350035))))

(declare-fun bs!1592412 () Bool)

(assert (= bs!1592412 (and d!1994458 d!1994382)))

(assert (=> bs!1592412 (= (= (head!13023 s!2326) (head!13023 (t!378686 s!2326))) (= lambda!350132 lambda!350126))))

(assert (=> d!1994458 true))

(assert (=> d!1994458 (= (derivationStepZipper!2231 lt!2366187 (head!13023 s!2326)) (flatMap!1770 lt!2366187 lambda!350132))))

(declare-fun bs!1592413 () Bool)

(assert (= bs!1592413 d!1994458))

(declare-fun m!7163884 () Bool)

(assert (=> bs!1592413 m!7163884))

(assert (=> b!6357343 d!1994458))

(assert (=> b!6357343 d!1994348))

(assert (=> b!6357343 d!1994342))

(declare-fun d!1994460 () Bool)

(assert (=> d!1994460 (= (isEmpty!37069 (tail!12107 (exprs!6149 (h!71419 zl!343)))) ((_ is Nil!64970) (tail!12107 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> b!6357375 d!1994460))

(declare-fun d!1994462 () Bool)

(assert (=> d!1994462 (= (tail!12107 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))

(assert (=> b!6357375 d!1994462))

(assert (=> d!1994264 d!1994362))

(declare-fun b!6357816 () Bool)

(declare-fun res!2616099 () Bool)

(declare-fun e!3860785 () Bool)

(assert (=> b!6357816 (=> res!2616099 e!3860785)))

(assert (=> b!6357816 (= res!2616099 (not ((_ is Concat!25110) (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))))))

(declare-fun e!3860786 () Bool)

(assert (=> b!6357816 (= e!3860786 e!3860785)))

(declare-fun c!1157136 () Bool)

(declare-fun bm!542220 () Bool)

(declare-fun c!1157137 () Bool)

(declare-fun call!542226 () Bool)

(assert (=> bm!542220 (= call!542226 (validRegex!8001 (ite c!1157136 (reg!16594 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) (ite c!1157137 (regOne!33043 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) (regOne!33042 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))))))))

(declare-fun b!6357817 () Bool)

(declare-fun e!3860781 () Bool)

(declare-fun call!542225 () Bool)

(assert (=> b!6357817 (= e!3860781 call!542225)))

(declare-fun bm!542221 () Bool)

(assert (=> bm!542221 (= call!542225 (validRegex!8001 (ite c!1157137 (regTwo!33043 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) (regTwo!33042 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))))

(declare-fun b!6357818 () Bool)

(declare-fun e!3860780 () Bool)

(assert (=> b!6357818 (= e!3860780 call!542225)))

(declare-fun bm!542222 () Bool)

(declare-fun call!542227 () Bool)

(assert (=> bm!542222 (= call!542227 call!542226)))

(declare-fun b!6357820 () Bool)

(declare-fun e!3860783 () Bool)

(declare-fun e!3860784 () Bool)

(assert (=> b!6357820 (= e!3860783 e!3860784)))

(assert (=> b!6357820 (= c!1157136 ((_ is Star!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(declare-fun b!6357821 () Bool)

(assert (=> b!6357821 (= e!3860785 e!3860780)))

(declare-fun res!2616101 () Bool)

(assert (=> b!6357821 (=> (not res!2616101) (not e!3860780))))

(assert (=> b!6357821 (= res!2616101 call!542227)))

(declare-fun b!6357822 () Bool)

(declare-fun res!2616097 () Bool)

(assert (=> b!6357822 (=> (not res!2616097) (not e!3860781))))

(assert (=> b!6357822 (= res!2616097 call!542227)))

(assert (=> b!6357822 (= e!3860786 e!3860781)))

(declare-fun b!6357823 () Bool)

(declare-fun e!3860782 () Bool)

(assert (=> b!6357823 (= e!3860784 e!3860782)))

(declare-fun res!2616098 () Bool)

(assert (=> b!6357823 (= res!2616098 (not (nullable!6258 (reg!16594 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))))

(assert (=> b!6357823 (=> (not res!2616098) (not e!3860782))))

(declare-fun b!6357824 () Bool)

(assert (=> b!6357824 (= e!3860784 e!3860786)))

(assert (=> b!6357824 (= c!1157137 ((_ is Union!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(declare-fun d!1994464 () Bool)

(declare-fun res!2616100 () Bool)

(assert (=> d!1994464 (=> res!2616100 e!3860783)))

(assert (=> d!1994464 (= res!2616100 ((_ is ElementMatch!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(assert (=> d!1994464 (= (validRegex!8001 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) e!3860783)))

(declare-fun b!6357819 () Bool)

(assert (=> b!6357819 (= e!3860782 call!542226)))

(assert (= (and d!1994464 (not res!2616100)) b!6357820))

(assert (= (and b!6357820 c!1157136) b!6357823))

(assert (= (and b!6357820 (not c!1157136)) b!6357824))

(assert (= (and b!6357823 res!2616098) b!6357819))

(assert (= (and b!6357824 c!1157137) b!6357822))

(assert (= (and b!6357824 (not c!1157137)) b!6357816))

(assert (= (and b!6357822 res!2616097) b!6357817))

(assert (= (and b!6357816 (not res!2616099)) b!6357821))

(assert (= (and b!6357821 res!2616101) b!6357818))

(assert (= (or b!6357817 b!6357818) bm!542221))

(assert (= (or b!6357822 b!6357821) bm!542222))

(assert (= (or b!6357819 bm!542222) bm!542220))

(declare-fun m!7163886 () Bool)

(assert (=> bm!542220 m!7163886))

(declare-fun m!7163888 () Bool)

(assert (=> bm!542221 m!7163888))

(declare-fun m!7163890 () Bool)

(assert (=> b!6357823 m!7163890))

(assert (=> d!1994264 d!1994464))

(declare-fun b!6357825 () Bool)

(declare-fun e!3860793 () Bool)

(assert (=> b!6357825 (= e!3860793 (not (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326))))))))

(declare-fun b!6357826 () Bool)

(declare-fun res!2616106 () Bool)

(declare-fun e!3860792 () Bool)

(assert (=> b!6357826 (=> (not res!2616106) (not e!3860792))))

(declare-fun call!542228 () Bool)

(assert (=> b!6357826 (= res!2616106 (not call!542228))))

(declare-fun b!6357827 () Bool)

(declare-fun e!3860790 () Bool)

(declare-fun lt!2366406 () Bool)

(assert (=> b!6357827 (= e!3860790 (= lt!2366406 call!542228))))

(declare-fun bm!542223 () Bool)

(assert (=> bm!542223 (= call!542228 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun b!6357828 () Bool)

(declare-fun e!3860789 () Bool)

(declare-fun e!3860787 () Bool)

(assert (=> b!6357828 (= e!3860789 e!3860787)))

(declare-fun res!2616105 () Bool)

(assert (=> b!6357828 (=> (not res!2616105) (not e!3860787))))

(assert (=> b!6357828 (= res!2616105 (not lt!2366406))))

(declare-fun b!6357829 () Bool)

(assert (=> b!6357829 (= e!3860792 (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326)))))))

(declare-fun b!6357830 () Bool)

(declare-fun e!3860788 () Bool)

(assert (=> b!6357830 (= e!3860788 (not lt!2366406))))

(declare-fun b!6357831 () Bool)

(assert (=> b!6357831 (= e!3860787 e!3860793)))

(declare-fun res!2616107 () Bool)

(assert (=> b!6357831 (=> res!2616107 e!3860793)))

(assert (=> b!6357831 (= res!2616107 call!542228)))

(declare-fun b!6357832 () Bool)

(assert (=> b!6357832 (= e!3860790 e!3860788)))

(declare-fun c!1157138 () Bool)

(assert (=> b!6357832 (= c!1157138 ((_ is EmptyLang!16265) (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326))))))

(declare-fun e!3860791 () Bool)

(declare-fun b!6357833 () Bool)

(assert (=> b!6357833 (= e!3860791 (nullable!6258 (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326))))))

(declare-fun b!6357834 () Bool)

(declare-fun res!2616109 () Bool)

(assert (=> b!6357834 (=> res!2616109 e!3860789)))

(assert (=> b!6357834 (= res!2616109 (not ((_ is ElementMatch!16265) (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326)))))))

(assert (=> b!6357834 (= e!3860788 e!3860789)))

(declare-fun b!6357835 () Bool)

(declare-fun res!2616104 () Bool)

(assert (=> b!6357835 (=> res!2616104 e!3860793)))

(assert (=> b!6357835 (= res!2616104 (not (isEmpty!37073 (tail!12108 (tail!12108 s!2326)))))))

(declare-fun b!6357837 () Bool)

(declare-fun res!2616102 () Bool)

(assert (=> b!6357837 (=> res!2616102 e!3860789)))

(assert (=> b!6357837 (= res!2616102 e!3860792)))

(declare-fun res!2616108 () Bool)

(assert (=> b!6357837 (=> (not res!2616108) (not e!3860792))))

(assert (=> b!6357837 (= res!2616108 lt!2366406)))

(declare-fun b!6357838 () Bool)

(declare-fun res!2616103 () Bool)

(assert (=> b!6357838 (=> (not res!2616103) (not e!3860792))))

(assert (=> b!6357838 (= res!2616103 (isEmpty!37073 (tail!12108 (tail!12108 s!2326))))))

(declare-fun d!1994466 () Bool)

(assert (=> d!1994466 e!3860790))

(declare-fun c!1157140 () Bool)

(assert (=> d!1994466 (= c!1157140 ((_ is EmptyExpr!16265) (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326))))))

(assert (=> d!1994466 (= lt!2366406 e!3860791)))

(declare-fun c!1157139 () Bool)

(assert (=> d!1994466 (= c!1157139 (isEmpty!37073 (tail!12108 s!2326)))))

(assert (=> d!1994466 (validRegex!8001 (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326)))))

(assert (=> d!1994466 (= (matchR!8448 (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326)) (tail!12108 s!2326)) lt!2366406)))

(declare-fun b!6357836 () Bool)

(assert (=> b!6357836 (= e!3860791 (matchR!8448 (derivativeStep!4970 (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326)) (head!13023 (tail!12108 s!2326))) (tail!12108 (tail!12108 s!2326))))))

(assert (= (and d!1994466 c!1157139) b!6357833))

(assert (= (and d!1994466 (not c!1157139)) b!6357836))

(assert (= (and d!1994466 c!1157140) b!6357827))

(assert (= (and d!1994466 (not c!1157140)) b!6357832))

(assert (= (and b!6357832 c!1157138) b!6357830))

(assert (= (and b!6357832 (not c!1157138)) b!6357834))

(assert (= (and b!6357834 (not res!2616109)) b!6357837))

(assert (= (and b!6357837 res!2616108) b!6357826))

(assert (= (and b!6357826 res!2616106) b!6357838))

(assert (= (and b!6357838 res!2616103) b!6357829))

(assert (= (and b!6357837 (not res!2616102)) b!6357828))

(assert (= (and b!6357828 res!2616105) b!6357831))

(assert (= (and b!6357831 (not res!2616107)) b!6357835))

(assert (= (and b!6357835 (not res!2616104)) b!6357825))

(assert (= (or b!6357827 b!6357826 b!6357831) bm!542223))

(assert (=> b!6357835 m!7163356))

(assert (=> b!6357835 m!7163880))

(assert (=> b!6357835 m!7163880))

(declare-fun m!7163892 () Bool)

(assert (=> b!6357835 m!7163892))

(assert (=> b!6357836 m!7163356))

(assert (=> b!6357836 m!7163876))

(assert (=> b!6357836 m!7163590))

(assert (=> b!6357836 m!7163876))

(declare-fun m!7163894 () Bool)

(assert (=> b!6357836 m!7163894))

(assert (=> b!6357836 m!7163356))

(assert (=> b!6357836 m!7163880))

(assert (=> b!6357836 m!7163894))

(assert (=> b!6357836 m!7163880))

(declare-fun m!7163896 () Bool)

(assert (=> b!6357836 m!7163896))

(assert (=> b!6357838 m!7163356))

(assert (=> b!6357838 m!7163880))

(assert (=> b!6357838 m!7163880))

(assert (=> b!6357838 m!7163892))

(assert (=> b!6357829 m!7163356))

(assert (=> b!6357829 m!7163876))

(assert (=> b!6357833 m!7163590))

(declare-fun m!7163898 () Bool)

(assert (=> b!6357833 m!7163898))

(assert (=> d!1994466 m!7163356))

(assert (=> d!1994466 m!7163358))

(assert (=> d!1994466 m!7163590))

(declare-fun m!7163900 () Bool)

(assert (=> d!1994466 m!7163900))

(assert (=> bm!542223 m!7163356))

(assert (=> bm!542223 m!7163358))

(assert (=> b!6357825 m!7163356))

(assert (=> b!6357825 m!7163876))

(assert (=> b!6357473 d!1994466))

(declare-fun b!6357859 () Bool)

(declare-fun e!3860806 () Regex!16265)

(declare-fun call!542238 () Regex!16265)

(declare-fun call!542237 () Regex!16265)

(assert (=> b!6357859 (= e!3860806 (Union!16265 call!542238 call!542237))))

(declare-fun b!6357860 () Bool)

(declare-fun e!3860804 () Regex!16265)

(declare-fun call!542239 () Regex!16265)

(assert (=> b!6357860 (= e!3860804 (Concat!25110 call!542239 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(declare-fun b!6357861 () Bool)

(assert (=> b!6357861 (= e!3860806 e!3860804)))

(declare-fun c!1157154 () Bool)

(assert (=> b!6357861 (= c!1157154 ((_ is Star!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(declare-fun b!6357862 () Bool)

(declare-fun e!3860805 () Regex!16265)

(assert (=> b!6357862 (= e!3860805 EmptyLang!16265)))

(declare-fun e!3860808 () Regex!16265)

(declare-fun b!6357863 () Bool)

(assert (=> b!6357863 (= e!3860808 (ite (= (head!13023 s!2326) (c!1156730 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))) EmptyExpr!16265 EmptyLang!16265))))

(declare-fun call!542240 () Regex!16265)

(declare-fun b!6357864 () Bool)

(declare-fun e!3860807 () Regex!16265)

(assert (=> b!6357864 (= e!3860807 (Union!16265 (Concat!25110 call!542240 (regTwo!33042 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))) EmptyLang!16265))))

(declare-fun bm!542232 () Bool)

(assert (=> bm!542232 (= call!542239 call!542237)))

(declare-fun bm!542233 () Bool)

(assert (=> bm!542233 (= call!542240 call!542239)))

(declare-fun b!6357865 () Bool)

(assert (=> b!6357865 (= e!3860805 e!3860808)))

(declare-fun c!1157153 () Bool)

(assert (=> b!6357865 (= c!1157153 ((_ is ElementMatch!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(declare-fun d!1994468 () Bool)

(declare-fun lt!2366409 () Regex!16265)

(assert (=> d!1994468 (validRegex!8001 lt!2366409)))

(assert (=> d!1994468 (= lt!2366409 e!3860805)))

(declare-fun c!1157152 () Bool)

(assert (=> d!1994468 (= c!1157152 (or ((_ is EmptyExpr!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) ((_ is EmptyLang!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))))))

(assert (=> d!1994468 (validRegex!8001 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))))

(assert (=> d!1994468 (= (derivativeStep!4970 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) (head!13023 s!2326)) lt!2366409)))

(declare-fun b!6357866 () Bool)

(declare-fun c!1157155 () Bool)

(assert (=> b!6357866 (= c!1157155 ((_ is Union!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(assert (=> b!6357866 (= e!3860808 e!3860806)))

(declare-fun b!6357867 () Bool)

(declare-fun c!1157151 () Bool)

(assert (=> b!6357867 (= c!1157151 (nullable!6258 (regOne!33042 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))))))

(assert (=> b!6357867 (= e!3860804 e!3860807)))

(declare-fun b!6357868 () Bool)

(assert (=> b!6357868 (= e!3860807 (Union!16265 (Concat!25110 call!542238 (regTwo!33042 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))) call!542240))))

(declare-fun bm!542234 () Bool)

(assert (=> bm!542234 (= call!542237 (derivativeStep!4970 (ite c!1157155 (regTwo!33043 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) (ite c!1157154 (reg!16594 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) (ite c!1157151 (regTwo!33042 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) (regOne!33042 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))))) (head!13023 s!2326)))))

(declare-fun bm!542235 () Bool)

(assert (=> bm!542235 (= call!542238 (derivativeStep!4970 (ite c!1157155 (regOne!33043 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) (regOne!33042 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))) (head!13023 s!2326)))))

(assert (= (and d!1994468 c!1157152) b!6357862))

(assert (= (and d!1994468 (not c!1157152)) b!6357865))

(assert (= (and b!6357865 c!1157153) b!6357863))

(assert (= (and b!6357865 (not c!1157153)) b!6357866))

(assert (= (and b!6357866 c!1157155) b!6357859))

(assert (= (and b!6357866 (not c!1157155)) b!6357861))

(assert (= (and b!6357861 c!1157154) b!6357860))

(assert (= (and b!6357861 (not c!1157154)) b!6357867))

(assert (= (and b!6357867 c!1157151) b!6357868))

(assert (= (and b!6357867 (not c!1157151)) b!6357864))

(assert (= (or b!6357868 b!6357864) bm!542233))

(assert (= (or b!6357860 bm!542233) bm!542232))

(assert (= (or b!6357859 bm!542232) bm!542234))

(assert (= (or b!6357859 b!6357868) bm!542235))

(declare-fun m!7163902 () Bool)

(assert (=> d!1994468 m!7163902))

(assert (=> d!1994468 m!7163596))

(declare-fun m!7163904 () Bool)

(assert (=> b!6357867 m!7163904))

(assert (=> bm!542234 m!7163360))

(declare-fun m!7163906 () Bool)

(assert (=> bm!542234 m!7163906))

(assert (=> bm!542235 m!7163360))

(declare-fun m!7163908 () Bool)

(assert (=> bm!542235 m!7163908))

(assert (=> b!6357473 d!1994468))

(assert (=> b!6357473 d!1994348))

(assert (=> b!6357473 d!1994342))

(assert (=> b!6357421 d!1994348))

(declare-fun bs!1592414 () Bool)

(declare-fun d!1994470 () Bool)

(assert (= bs!1592414 (and d!1994470 d!1994068)))

(declare-fun lambda!350133 () Int)

(assert (=> bs!1592414 (= lambda!350133 lambda!350024)))

(declare-fun bs!1592415 () Bool)

(assert (= bs!1592415 (and d!1994470 d!1994280)))

(assert (=> bs!1592415 (= lambda!350133 lambda!350108)))

(declare-fun bs!1592416 () Bool)

(assert (= bs!1592416 (and d!1994470 d!1994168)))

(assert (=> bs!1592416 (= lambda!350133 lambda!350067)))

(declare-fun bs!1592417 () Bool)

(assert (= bs!1592417 (and d!1994470 d!1994268)))

(assert (=> bs!1592417 (= lambda!350133 lambda!350106)))

(declare-fun bs!1592418 () Bool)

(assert (= bs!1592418 (and d!1994470 d!1994202)))

(assert (=> bs!1592418 (= lambda!350133 lambda!350079)))

(declare-fun bs!1592419 () Bool)

(assert (= bs!1592419 (and d!1994470 d!1994240)))

(assert (=> bs!1592419 (= lambda!350133 lambda!350100)))

(declare-fun bs!1592420 () Bool)

(assert (= bs!1592420 (and d!1994470 d!1994060)))

(assert (=> bs!1592420 (= lambda!350133 lambda!350020)))

(declare-fun bs!1592421 () Bool)

(assert (= bs!1592421 (and d!1994470 d!1994278)))

(assert (=> bs!1592421 (= lambda!350133 lambda!350107)))

(declare-fun e!3860811 () Bool)

(assert (=> d!1994470 e!3860811))

(declare-fun res!2616110 () Bool)

(assert (=> d!1994470 (=> (not res!2616110) (not e!3860811))))

(declare-fun lt!2366410 () Regex!16265)

(assert (=> d!1994470 (= res!2616110 (validRegex!8001 lt!2366410))))

(declare-fun e!3860814 () Regex!16265)

(assert (=> d!1994470 (= lt!2366410 e!3860814)))

(declare-fun c!1157159 () Bool)

(declare-fun e!3860809 () Bool)

(assert (=> d!1994470 (= c!1157159 e!3860809)))

(declare-fun res!2616111 () Bool)

(assert (=> d!1994470 (=> (not res!2616111) (not e!3860809))))

(assert (=> d!1994470 (= res!2616111 ((_ is Cons!64970) (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(assert (=> d!1994470 (forall!15441 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343)))) lambda!350133)))

(assert (=> d!1994470 (= (generalisedConcat!1862 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))) lt!2366410)))

(declare-fun b!6357869 () Bool)

(declare-fun e!3860810 () Bool)

(declare-fun e!3860813 () Bool)

(assert (=> b!6357869 (= e!3860810 e!3860813)))

(declare-fun c!1157156 () Bool)

(assert (=> b!6357869 (= c!1157156 (isEmpty!37069 (tail!12107 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun b!6357870 () Bool)

(assert (=> b!6357870 (= e!3860813 (isConcat!1190 lt!2366410))))

(declare-fun b!6357871 () Bool)

(declare-fun e!3860812 () Regex!16265)

(assert (=> b!6357871 (= e!3860814 e!3860812)))

(declare-fun c!1157157 () Bool)

(assert (=> b!6357871 (= c!1157157 ((_ is Cons!64970) (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun b!6357872 () Bool)

(assert (=> b!6357872 (= e!3860812 EmptyExpr!16265)))

(declare-fun b!6357873 () Bool)

(assert (=> b!6357873 (= e!3860812 (Concat!25110 (h!71418 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))) (generalisedConcat!1862 (t!378684 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))))))))

(declare-fun b!6357874 () Bool)

(assert (=> b!6357874 (= e!3860809 (isEmpty!37069 (t!378684 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun b!6357875 () Bool)

(assert (=> b!6357875 (= e!3860811 e!3860810)))

(declare-fun c!1157158 () Bool)

(assert (=> b!6357875 (= c!1157158 (isEmpty!37069 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun b!6357876 () Bool)

(assert (=> b!6357876 (= e!3860813 (= lt!2366410 (head!13022 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun b!6357877 () Bool)

(assert (=> b!6357877 (= e!3860814 (h!71418 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun b!6357878 () Bool)

(assert (=> b!6357878 (= e!3860810 (isEmptyExpr!1667 lt!2366410))))

(assert (= (and d!1994470 res!2616111) b!6357874))

(assert (= (and d!1994470 c!1157159) b!6357877))

(assert (= (and d!1994470 (not c!1157159)) b!6357871))

(assert (= (and b!6357871 c!1157157) b!6357873))

(assert (= (and b!6357871 (not c!1157157)) b!6357872))

(assert (= (and d!1994470 res!2616110) b!6357875))

(assert (= (and b!6357875 c!1157158) b!6357878))

(assert (= (and b!6357875 (not c!1157158)) b!6357869))

(assert (= (and b!6357869 c!1157156) b!6357876))

(assert (= (and b!6357869 (not c!1157156)) b!6357870))

(declare-fun m!7163910 () Bool)

(assert (=> b!6357869 m!7163910))

(assert (=> b!6357869 m!7163910))

(declare-fun m!7163912 () Bool)

(assert (=> b!6357869 m!7163912))

(declare-fun m!7163914 () Bool)

(assert (=> d!1994470 m!7163914))

(declare-fun m!7163916 () Bool)

(assert (=> d!1994470 m!7163916))

(declare-fun m!7163918 () Bool)

(assert (=> b!6357876 m!7163918))

(declare-fun m!7163920 () Bool)

(assert (=> b!6357870 m!7163920))

(assert (=> b!6357875 m!7163384))

(declare-fun m!7163922 () Bool)

(assert (=> b!6357873 m!7163922))

(declare-fun m!7163924 () Bool)

(assert (=> b!6357874 m!7163924))

(declare-fun m!7163926 () Bool)

(assert (=> b!6357878 m!7163926))

(assert (=> b!6357307 d!1994470))

(assert (=> b!6357299 d!1994340))

(assert (=> b!6357299 d!1994342))

(declare-fun d!1994472 () Bool)

(declare-fun c!1157162 () Bool)

(assert (=> d!1994472 (= c!1157162 ((_ is Nil!64971) lt!2366248))))

(declare-fun e!3860817 () (InoxSet Context!11298))

(assert (=> d!1994472 (= (content!12265 lt!2366248) e!3860817)))

(declare-fun b!6357883 () Bool)

(assert (=> b!6357883 (= e!3860817 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6357884 () Bool)

(assert (=> b!6357884 (= e!3860817 ((_ map or) (store ((as const (Array Context!11298 Bool)) false) (h!71419 lt!2366248) true) (content!12265 (t!378685 lt!2366248))))))

(assert (= (and d!1994472 c!1157162) b!6357883))

(assert (= (and d!1994472 (not c!1157162)) b!6357884))

(declare-fun m!7163928 () Bool)

(assert (=> b!6357884 m!7163928))

(declare-fun m!7163930 () Bool)

(assert (=> b!6357884 m!7163930))

(assert (=> b!6356713 d!1994472))

(declare-fun d!1994474 () Bool)

(assert (=> d!1994474 (= ($colon$colon!2126 (exprs!6149 lt!2366189) (ite (or c!1156900 c!1156902) (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (h!71418 (exprs!6149 (h!71419 zl!343))))) (Cons!64970 (ite (or c!1156900 c!1156902) (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (h!71418 (exprs!6149 (h!71419 zl!343)))) (exprs!6149 lt!2366189)))))

(assert (=> bm!542103 d!1994474))

(declare-fun d!1994476 () Bool)

(declare-fun c!1157166 () Bool)

(assert (=> d!1994476 (= c!1157166 (and ((_ is ElementMatch!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))) (= (c!1156730 (h!71418 (exprs!6149 (h!71419 zl!343)))) (h!71420 s!2326))))))

(declare-fun e!3860821 () (InoxSet Context!11298))

(assert (=> d!1994476 (= (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (h!71419 zl!343))) (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))) (h!71420 s!2326)) e!3860821)))

(declare-fun b!6357885 () Bool)

(declare-fun c!1157164 () Bool)

(assert (=> b!6357885 (= c!1157164 ((_ is Star!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun e!3860818 () (InoxSet Context!11298))

(declare-fun e!3860820 () (InoxSet Context!11298))

(assert (=> b!6357885 (= e!3860818 e!3860820)))

(declare-fun bm!542236 () Bool)

(declare-fun call!542244 () (InoxSet Context!11298))

(declare-fun call!542241 () (InoxSet Context!11298))

(assert (=> bm!542236 (= call!542244 call!542241)))

(declare-fun b!6357886 () Bool)

(declare-fun e!3860822 () (InoxSet Context!11298))

(assert (=> b!6357886 (= e!3860821 e!3860822)))

(declare-fun c!1157163 () Bool)

(assert (=> b!6357886 (= c!1157163 ((_ is Union!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6357887 () Bool)

(assert (=> b!6357887 (= e!3860818 call!542244)))

(declare-fun c!1157167 () Bool)

(declare-fun call!542245 () List!65094)

(declare-fun bm!542237 () Bool)

(declare-fun call!542242 () (InoxSet Context!11298))

(declare-fun c!1157165 () Bool)

(assert (=> bm!542237 (= call!542242 (derivationStepZipperDown!1513 (ite c!1157163 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1157165 (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (ite c!1157167 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (reg!16594 (h!71418 (exprs!6149 (h!71419 zl!343))))))) (ite (or c!1157163 c!1157165) (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))) (Context!11299 call!542245)) (h!71420 s!2326)))))

(declare-fun b!6357888 () Bool)

(declare-fun call!542243 () (InoxSet Context!11298))

(assert (=> b!6357888 (= e!3860822 ((_ map or) call!542243 call!542242))))

(declare-fun b!6357889 () Bool)

(declare-fun e!3860819 () (InoxSet Context!11298))

(assert (=> b!6357889 (= e!3860819 ((_ map or) call!542243 call!542241))))

(declare-fun b!6357890 () Bool)

(assert (=> b!6357890 (= e!3860821 (store ((as const (Array Context!11298 Bool)) false) (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))) true))))

(declare-fun b!6357891 () Bool)

(declare-fun e!3860823 () Bool)

(assert (=> b!6357891 (= e!3860823 (nullable!6258 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun bm!542238 () Bool)

(assert (=> bm!542238 (= call!542241 call!542242)))

(declare-fun bm!542239 () Bool)

(declare-fun call!542246 () List!65094)

(assert (=> bm!542239 (= call!542246 ($colon$colon!2126 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343))))) (ite (or c!1157165 c!1157167) (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))) (h!71418 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun bm!542240 () Bool)

(assert (=> bm!542240 (= call!542245 call!542246)))

(declare-fun b!6357892 () Bool)

(assert (=> b!6357892 (= c!1157165 e!3860823)))

(declare-fun res!2616112 () Bool)

(assert (=> b!6357892 (=> (not res!2616112) (not e!3860823))))

(assert (=> b!6357892 (= res!2616112 ((_ is Concat!25110) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> b!6357892 (= e!3860822 e!3860819)))

(declare-fun b!6357893 () Bool)

(assert (=> b!6357893 (= e!3860820 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6357894 () Bool)

(assert (=> b!6357894 (= e!3860820 call!542244)))

(declare-fun bm!542241 () Bool)

(assert (=> bm!542241 (= call!542243 (derivationStepZipperDown!1513 (ite c!1157163 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))) (ite c!1157163 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))) (Context!11299 call!542246)) (h!71420 s!2326)))))

(declare-fun b!6357895 () Bool)

(assert (=> b!6357895 (= e!3860819 e!3860818)))

(assert (=> b!6357895 (= c!1157167 ((_ is Concat!25110) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (= (and d!1994476 c!1157166) b!6357890))

(assert (= (and d!1994476 (not c!1157166)) b!6357886))

(assert (= (and b!6357886 c!1157163) b!6357888))

(assert (= (and b!6357886 (not c!1157163)) b!6357892))

(assert (= (and b!6357892 res!2616112) b!6357891))

(assert (= (and b!6357892 c!1157165) b!6357889))

(assert (= (and b!6357892 (not c!1157165)) b!6357895))

(assert (= (and b!6357895 c!1157167) b!6357887))

(assert (= (and b!6357895 (not c!1157167)) b!6357885))

(assert (= (and b!6357885 c!1157164) b!6357894))

(assert (= (and b!6357885 (not c!1157164)) b!6357893))

(assert (= (or b!6357887 b!6357894) bm!542240))

(assert (= (or b!6357887 b!6357894) bm!542236))

(assert (= (or b!6357889 bm!542240) bm!542239))

(assert (= (or b!6357889 bm!542236) bm!542238))

(assert (= (or b!6357888 bm!542238) bm!542237))

(assert (= (or b!6357888 b!6357889) bm!542241))

(declare-fun m!7163932 () Bool)

(assert (=> b!6357890 m!7163932))

(declare-fun m!7163934 () Bool)

(assert (=> bm!542237 m!7163934))

(assert (=> b!6357891 m!7163120))

(declare-fun m!7163936 () Bool)

(assert (=> bm!542241 m!7163936))

(declare-fun m!7163938 () Bool)

(assert (=> bm!542239 m!7163938))

(assert (=> bm!542085 d!1994476))

(assert (=> bm!542145 d!1994362))

(declare-fun d!1994478 () Bool)

(assert (=> d!1994478 (= (isEmpty!37069 (t!378684 lt!2366196)) ((_ is Nil!64970) (t!378684 lt!2366196)))))

(assert (=> b!6357143 d!1994478))

(declare-fun d!1994480 () Bool)

(assert (=> d!1994480 true))

(assert (=> d!1994480 true))

(declare-fun res!2616113 () Bool)

(assert (=> d!1994480 (= (choose!47205 lambda!349998) res!2616113)))

(assert (=> d!1994230 d!1994480))

(declare-fun b!6357896 () Bool)

(declare-fun e!3860830 () Bool)

(assert (=> b!6357896 (= e!3860830 (not (= (head!13023 (_2!36547 (get!22482 lt!2366355))) (c!1156730 lt!2366179))))))

(declare-fun b!6357897 () Bool)

(declare-fun res!2616118 () Bool)

(declare-fun e!3860829 () Bool)

(assert (=> b!6357897 (=> (not res!2616118) (not e!3860829))))

(declare-fun call!542247 () Bool)

(assert (=> b!6357897 (= res!2616118 (not call!542247))))

(declare-fun b!6357898 () Bool)

(declare-fun e!3860827 () Bool)

(declare-fun lt!2366411 () Bool)

(assert (=> b!6357898 (= e!3860827 (= lt!2366411 call!542247))))

(declare-fun bm!542242 () Bool)

(assert (=> bm!542242 (= call!542247 (isEmpty!37073 (_2!36547 (get!22482 lt!2366355))))))

(declare-fun b!6357899 () Bool)

(declare-fun e!3860826 () Bool)

(declare-fun e!3860824 () Bool)

(assert (=> b!6357899 (= e!3860826 e!3860824)))

(declare-fun res!2616117 () Bool)

(assert (=> b!6357899 (=> (not res!2616117) (not e!3860824))))

(assert (=> b!6357899 (= res!2616117 (not lt!2366411))))

(declare-fun b!6357900 () Bool)

(assert (=> b!6357900 (= e!3860829 (= (head!13023 (_2!36547 (get!22482 lt!2366355))) (c!1156730 lt!2366179)))))

(declare-fun b!6357901 () Bool)

(declare-fun e!3860825 () Bool)

(assert (=> b!6357901 (= e!3860825 (not lt!2366411))))

(declare-fun b!6357902 () Bool)

(assert (=> b!6357902 (= e!3860824 e!3860830)))

(declare-fun res!2616119 () Bool)

(assert (=> b!6357902 (=> res!2616119 e!3860830)))

(assert (=> b!6357902 (= res!2616119 call!542247)))

(declare-fun b!6357903 () Bool)

(assert (=> b!6357903 (= e!3860827 e!3860825)))

(declare-fun c!1157168 () Bool)

(assert (=> b!6357903 (= c!1157168 ((_ is EmptyLang!16265) lt!2366179))))

(declare-fun b!6357904 () Bool)

(declare-fun e!3860828 () Bool)

(assert (=> b!6357904 (= e!3860828 (nullable!6258 lt!2366179))))

(declare-fun b!6357905 () Bool)

(declare-fun res!2616121 () Bool)

(assert (=> b!6357905 (=> res!2616121 e!3860826)))

(assert (=> b!6357905 (= res!2616121 (not ((_ is ElementMatch!16265) lt!2366179)))))

(assert (=> b!6357905 (= e!3860825 e!3860826)))

(declare-fun b!6357906 () Bool)

(declare-fun res!2616116 () Bool)

(assert (=> b!6357906 (=> res!2616116 e!3860830)))

(assert (=> b!6357906 (= res!2616116 (not (isEmpty!37073 (tail!12108 (_2!36547 (get!22482 lt!2366355))))))))

(declare-fun b!6357908 () Bool)

(declare-fun res!2616114 () Bool)

(assert (=> b!6357908 (=> res!2616114 e!3860826)))

(assert (=> b!6357908 (= res!2616114 e!3860829)))

(declare-fun res!2616120 () Bool)

(assert (=> b!6357908 (=> (not res!2616120) (not e!3860829))))

(assert (=> b!6357908 (= res!2616120 lt!2366411)))

(declare-fun b!6357909 () Bool)

(declare-fun res!2616115 () Bool)

(assert (=> b!6357909 (=> (not res!2616115) (not e!3860829))))

(assert (=> b!6357909 (= res!2616115 (isEmpty!37073 (tail!12108 (_2!36547 (get!22482 lt!2366355)))))))

(declare-fun d!1994482 () Bool)

(assert (=> d!1994482 e!3860827))

(declare-fun c!1157170 () Bool)

(assert (=> d!1994482 (= c!1157170 ((_ is EmptyExpr!16265) lt!2366179))))

(assert (=> d!1994482 (= lt!2366411 e!3860828)))

(declare-fun c!1157169 () Bool)

(assert (=> d!1994482 (= c!1157169 (isEmpty!37073 (_2!36547 (get!22482 lt!2366355))))))

(assert (=> d!1994482 (validRegex!8001 lt!2366179)))

(assert (=> d!1994482 (= (matchR!8448 lt!2366179 (_2!36547 (get!22482 lt!2366355))) lt!2366411)))

(declare-fun b!6357907 () Bool)

(assert (=> b!6357907 (= e!3860828 (matchR!8448 (derivativeStep!4970 lt!2366179 (head!13023 (_2!36547 (get!22482 lt!2366355)))) (tail!12108 (_2!36547 (get!22482 lt!2366355)))))))

(assert (= (and d!1994482 c!1157169) b!6357904))

(assert (= (and d!1994482 (not c!1157169)) b!6357907))

(assert (= (and d!1994482 c!1157170) b!6357898))

(assert (= (and d!1994482 (not c!1157170)) b!6357903))

(assert (= (and b!6357903 c!1157168) b!6357901))

(assert (= (and b!6357903 (not c!1157168)) b!6357905))

(assert (= (and b!6357905 (not res!2616121)) b!6357908))

(assert (= (and b!6357908 res!2616120) b!6357897))

(assert (= (and b!6357897 res!2616118) b!6357909))

(assert (= (and b!6357909 res!2616115) b!6357900))

(assert (= (and b!6357908 (not res!2616114)) b!6357899))

(assert (= (and b!6357899 res!2616117) b!6357902))

(assert (= (and b!6357902 (not res!2616119)) b!6357906))

(assert (= (and b!6357906 (not res!2616116)) b!6357896))

(assert (= (or b!6357898 b!6357897 b!6357902) bm!542242))

(declare-fun m!7163940 () Bool)

(assert (=> b!6357906 m!7163940))

(assert (=> b!6357906 m!7163940))

(declare-fun m!7163942 () Bool)

(assert (=> b!6357906 m!7163942))

(declare-fun m!7163944 () Bool)

(assert (=> b!6357907 m!7163944))

(assert (=> b!6357907 m!7163944))

(declare-fun m!7163946 () Bool)

(assert (=> b!6357907 m!7163946))

(assert (=> b!6357907 m!7163940))

(assert (=> b!6357907 m!7163946))

(assert (=> b!6357907 m!7163940))

(declare-fun m!7163948 () Bool)

(assert (=> b!6357907 m!7163948))

(assert (=> b!6357909 m!7163940))

(assert (=> b!6357909 m!7163940))

(assert (=> b!6357909 m!7163942))

(assert (=> b!6357900 m!7163944))

(assert (=> b!6357904 m!7163406))

(declare-fun m!7163950 () Bool)

(assert (=> d!1994482 m!7163950))

(assert (=> d!1994482 m!7163400))

(assert (=> bm!542242 m!7163950))

(assert (=> b!6357896 m!7163944))

(assert (=> b!6357336 d!1994482))

(declare-fun d!1994484 () Bool)

(assert (=> d!1994484 (= (get!22482 lt!2366355) (v!52324 lt!2366355))))

(assert (=> b!6357336 d!1994484))

(assert (=> b!6357319 d!1994348))

(declare-fun bs!1592422 () Bool)

(declare-fun b!6357910 () Bool)

(assert (= bs!1592422 (and b!6357910 b!6357396)))

(declare-fun lambda!350134 () Int)

(assert (=> bs!1592422 (= (and (= (reg!16594 (regTwo!33043 lt!2366170)) (reg!16594 r!7292)) (= (regTwo!33043 lt!2366170) r!7292)) (= lambda!350134 lambda!350109))))

(declare-fun bs!1592423 () Bool)

(assert (= bs!1592423 (and b!6357910 b!6356395)))

(assert (=> bs!1592423 (not (= lambda!350134 lambda!349995))))

(declare-fun bs!1592424 () Bool)

(assert (= bs!1592424 (and b!6357910 b!6357721)))

(assert (=> bs!1592424 (= (and (= (reg!16594 (regTwo!33043 lt!2366170)) (reg!16594 (regOne!33043 lt!2366179))) (= (regTwo!33043 lt!2366170) (regOne!33043 lt!2366179))) (= lambda!350134 lambda!350129))))

(declare-fun bs!1592425 () Bool)

(assert (= bs!1592425 (and b!6357910 b!6357057)))

(assert (=> bs!1592425 (not (= lambda!350134 lambda!350078))))

(declare-fun bs!1592426 () Bool)

(assert (= bs!1592426 (and b!6357910 d!1994330)))

(assert (=> bs!1592426 (not (= lambda!350134 lambda!350122))))

(declare-fun bs!1592427 () Bool)

(assert (= bs!1592427 (and b!6357910 b!6356387)))

(assert (=> bs!1592427 (not (= lambda!350134 lambda!350001))))

(declare-fun bs!1592428 () Bool)

(assert (= bs!1592428 (and b!6357910 b!6357049)))

(assert (=> bs!1592428 (= (and (= (reg!16594 (regTwo!33043 lt!2366170)) (reg!16594 lt!2366179)) (= (regTwo!33043 lt!2366170) lt!2366179)) (= lambda!350134 lambda!350077))))

(declare-fun bs!1592429 () Bool)

(assert (= bs!1592429 (and b!6357910 d!1994256)))

(assert (=> bs!1592429 (not (= lambda!350134 lambda!350103))))

(declare-fun bs!1592430 () Bool)

(assert (= bs!1592430 (and b!6357910 b!6357250)))

(assert (=> bs!1592430 (= (and (= (reg!16594 (regTwo!33043 lt!2366170)) (reg!16594 lt!2366170)) (= (regTwo!33043 lt!2366170) lt!2366170)) (= lambda!350134 lambda!350098))))

(assert (=> bs!1592427 (not (= lambda!350134 lambda!349999))))

(declare-fun bs!1592431 () Bool)

(assert (= bs!1592431 (and b!6357910 d!1994310)))

(assert (=> bs!1592431 (not (= lambda!350134 lambda!350113))))

(assert (=> bs!1592429 (not (= lambda!350134 lambda!350102))))

(declare-fun bs!1592432 () Bool)

(assert (= bs!1592432 (and b!6357910 d!1994208)))

(assert (=> bs!1592432 (not (= lambda!350134 lambda!350097))))

(assert (=> bs!1592426 (not (= lambda!350134 lambda!350121))))

(declare-fun bs!1592433 () Bool)

(assert (= bs!1592433 (and b!6357910 b!6357617)))

(assert (=> bs!1592433 (= (and (= (reg!16594 (regTwo!33043 lt!2366170)) (reg!16594 (regTwo!33043 lt!2366179))) (= (regTwo!33043 lt!2366170) (regTwo!33043 lt!2366179))) (= lambda!350134 lambda!350124))))

(assert (=> bs!1592423 (not (= lambda!350134 lambda!349996))))

(assert (=> bs!1592431 (not (= lambda!350134 lambda!350112))))

(declare-fun bs!1592434 () Bool)

(assert (= bs!1592434 (and b!6357910 b!6357729)))

(assert (=> bs!1592434 (not (= lambda!350134 lambda!350130))))

(assert (=> bs!1592432 (not (= lambda!350134 lambda!350096))))

(assert (=> bs!1592427 (not (= lambda!350134 lambda!350000))))

(declare-fun bs!1592435 () Bool)

(assert (= bs!1592435 (and b!6357910 b!6357258)))

(assert (=> bs!1592435 (not (= lambda!350134 lambda!350099))))

(declare-fun bs!1592436 () Bool)

(assert (= bs!1592436 (and b!6357910 b!6357625)))

(assert (=> bs!1592436 (not (= lambda!350134 lambda!350125))))

(declare-fun bs!1592437 () Bool)

(assert (= bs!1592437 (and b!6357910 b!6357404)))

(assert (=> bs!1592437 (not (= lambda!350134 lambda!350110))))

(declare-fun bs!1592438 () Bool)

(assert (= bs!1592438 (and b!6357910 d!1994308)))

(assert (=> bs!1592438 (not (= lambda!350134 lambda!350111))))

(assert (=> bs!1592427 (not (= lambda!350134 lambda!349998))))

(declare-fun bs!1592439 () Bool)

(assert (= bs!1592439 (and b!6357910 d!1994242)))

(assert (=> bs!1592439 (not (= lambda!350134 lambda!350101))))

(declare-fun bs!1592440 () Bool)

(assert (= bs!1592440 (and b!6357910 d!1994166)))

(assert (=> bs!1592440 (not (= lambda!350134 lambda!350061))))

(assert (=> b!6357910 true))

(assert (=> b!6357910 true))

(declare-fun bs!1592441 () Bool)

(declare-fun b!6357918 () Bool)

(assert (= bs!1592441 (and b!6357918 b!6357396)))

(declare-fun lambda!350135 () Int)

(assert (=> bs!1592441 (not (= lambda!350135 lambda!350109))))

(declare-fun bs!1592442 () Bool)

(assert (= bs!1592442 (and b!6357918 b!6356395)))

(assert (=> bs!1592442 (not (= lambda!350135 lambda!349995))))

(declare-fun bs!1592443 () Bool)

(assert (= bs!1592443 (and b!6357918 b!6357721)))

(assert (=> bs!1592443 (not (= lambda!350135 lambda!350129))))

(declare-fun bs!1592444 () Bool)

(assert (= bs!1592444 (and b!6357918 b!6357057)))

(assert (=> bs!1592444 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 lt!2366179)) (= (regTwo!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 lt!2366179))) (= lambda!350135 lambda!350078))))

(declare-fun bs!1592445 () Bool)

(assert (= bs!1592445 (and b!6357918 d!1994330)))

(assert (=> bs!1592445 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 r!7292))) (= lambda!350135 lambda!350122))))

(declare-fun bs!1592446 () Bool)

(assert (= bs!1592446 (and b!6357918 b!6356387)))

(assert (=> bs!1592446 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 lt!2366170)) lt!2366173)) (= lambda!350135 lambda!350001))))

(declare-fun bs!1592447 () Bool)

(assert (= bs!1592447 (and b!6357918 b!6357049)))

(assert (=> bs!1592447 (not (= lambda!350135 lambda!350077))))

(declare-fun bs!1592448 () Bool)

(assert (= bs!1592448 (and b!6357918 d!1994256)))

(assert (=> bs!1592448 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 lt!2366170)) lt!2366173)) (= lambda!350135 lambda!350103))))

(declare-fun bs!1592449 () Bool)

(assert (= bs!1592449 (and b!6357918 b!6357250)))

(assert (=> bs!1592449 (not (= lambda!350135 lambda!350098))))

(assert (=> bs!1592446 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 lt!2366170)) lt!2366179)) (= lambda!350135 lambda!349999))))

(declare-fun bs!1592450 () Bool)

(assert (= bs!1592450 (and b!6357918 d!1994310)))

(assert (=> bs!1592450 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 r!7292))) (= lambda!350135 lambda!350113))))

(assert (=> bs!1592448 (not (= lambda!350135 lambda!350102))))

(declare-fun bs!1592451 () Bool)

(assert (= bs!1592451 (and b!6357918 d!1994208)))

(assert (=> bs!1592451 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 lt!2366170)) lt!2366179)) (= lambda!350135 lambda!350097))))

(assert (=> bs!1592445 (not (= lambda!350135 lambda!350121))))

(declare-fun bs!1592452 () Bool)

(assert (= bs!1592452 (and b!6357918 b!6357617)))

(assert (=> bs!1592452 (not (= lambda!350135 lambda!350124))))

(declare-fun bs!1592453 () Bool)

(assert (= bs!1592453 (and b!6357918 b!6357910)))

(assert (=> bs!1592453 (not (= lambda!350135 lambda!350134))))

(assert (=> bs!1592442 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 r!7292))) (= lambda!350135 lambda!349996))))

(assert (=> bs!1592450 (not (= lambda!350135 lambda!350112))))

(declare-fun bs!1592454 () Bool)

(assert (= bs!1592454 (and b!6357918 b!6357729)))

(assert (=> bs!1592454 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 (regOne!33043 lt!2366179))) (= (regTwo!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 (regOne!33043 lt!2366179)))) (= lambda!350135 lambda!350130))))

(assert (=> bs!1592451 (not (= lambda!350135 lambda!350096))))

(assert (=> bs!1592446 (not (= lambda!350135 lambda!350000))))

(declare-fun bs!1592455 () Bool)

(assert (= bs!1592455 (and b!6357918 b!6357258)))

(assert (=> bs!1592455 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 lt!2366170)) (= (regTwo!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 lt!2366170))) (= lambda!350135 lambda!350099))))

(declare-fun bs!1592456 () Bool)

(assert (= bs!1592456 (and b!6357918 b!6357625)))

(assert (=> bs!1592456 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 (regTwo!33043 lt!2366179))) (= (regTwo!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 (regTwo!33043 lt!2366179)))) (= lambda!350135 lambda!350125))))

(declare-fun bs!1592457 () Bool)

(assert (= bs!1592457 (and b!6357918 b!6357404)))

(assert (=> bs!1592457 (= (and (= (regOne!33042 (regTwo!33043 lt!2366170)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 lt!2366170)) (regTwo!33042 r!7292))) (= lambda!350135 lambda!350110))))

(declare-fun bs!1592458 () Bool)

(assert (= bs!1592458 (and b!6357918 d!1994308)))

(assert (=> bs!1592458 (not (= lambda!350135 lambda!350111))))

(assert (=> bs!1592446 (not (= lambda!350135 lambda!349998))))

(declare-fun bs!1592459 () Bool)

(assert (= bs!1592459 (and b!6357918 d!1994242)))

(assert (=> bs!1592459 (not (= lambda!350135 lambda!350101))))

(declare-fun bs!1592460 () Bool)

(assert (= bs!1592460 (and b!6357918 d!1994166)))

(assert (=> bs!1592460 (not (= lambda!350135 lambda!350061))))

(assert (=> b!6357918 true))

(assert (=> b!6357918 true))

(declare-fun e!3860833 () Bool)

(declare-fun call!542249 () Bool)

(assert (=> b!6357910 (= e!3860833 call!542249)))

(declare-fun bm!542243 () Bool)

(declare-fun call!542248 () Bool)

(assert (=> bm!542243 (= call!542248 (isEmpty!37073 s!2326))))

(declare-fun b!6357911 () Bool)

(declare-fun e!3860834 () Bool)

(assert (=> b!6357911 (= e!3860834 call!542248)))

(declare-fun b!6357912 () Bool)

(declare-fun e!3860836 () Bool)

(assert (=> b!6357912 (= e!3860836 (= s!2326 (Cons!64972 (c!1156730 (regTwo!33043 lt!2366170)) Nil!64972)))))

(declare-fun b!6357913 () Bool)

(declare-fun e!3860837 () Bool)

(assert (=> b!6357913 (= e!3860837 (matchRSpec!3366 (regTwo!33043 (regTwo!33043 lt!2366170)) s!2326))))

(declare-fun b!6357914 () Bool)

(declare-fun res!2616123 () Bool)

(assert (=> b!6357914 (=> res!2616123 e!3860833)))

(assert (=> b!6357914 (= res!2616123 call!542248)))

(declare-fun e!3860831 () Bool)

(assert (=> b!6357914 (= e!3860831 e!3860833)))

(declare-fun bm!542244 () Bool)

(declare-fun c!1157171 () Bool)

(assert (=> bm!542244 (= call!542249 (Exists!3335 (ite c!1157171 lambda!350134 lambda!350135)))))

(declare-fun b!6357915 () Bool)

(declare-fun e!3860832 () Bool)

(assert (=> b!6357915 (= e!3860832 e!3860831)))

(assert (=> b!6357915 (= c!1157171 ((_ is Star!16265) (regTwo!33043 lt!2366170)))))

(declare-fun d!1994486 () Bool)

(declare-fun c!1157174 () Bool)

(assert (=> d!1994486 (= c!1157174 ((_ is EmptyExpr!16265) (regTwo!33043 lt!2366170)))))

(assert (=> d!1994486 (= (matchRSpec!3366 (regTwo!33043 lt!2366170) s!2326) e!3860834)))

(declare-fun b!6357916 () Bool)

(declare-fun c!1157173 () Bool)

(assert (=> b!6357916 (= c!1157173 ((_ is ElementMatch!16265) (regTwo!33043 lt!2366170)))))

(declare-fun e!3860835 () Bool)

(assert (=> b!6357916 (= e!3860835 e!3860836)))

(declare-fun b!6357917 () Bool)

(declare-fun c!1157172 () Bool)

(assert (=> b!6357917 (= c!1157172 ((_ is Union!16265) (regTwo!33043 lt!2366170)))))

(assert (=> b!6357917 (= e!3860836 e!3860832)))

(assert (=> b!6357918 (= e!3860831 call!542249)))

(declare-fun b!6357919 () Bool)

(assert (=> b!6357919 (= e!3860832 e!3860837)))

(declare-fun res!2616122 () Bool)

(assert (=> b!6357919 (= res!2616122 (matchRSpec!3366 (regOne!33043 (regTwo!33043 lt!2366170)) s!2326))))

(assert (=> b!6357919 (=> res!2616122 e!3860837)))

(declare-fun b!6357920 () Bool)

(assert (=> b!6357920 (= e!3860834 e!3860835)))

(declare-fun res!2616124 () Bool)

(assert (=> b!6357920 (= res!2616124 (not ((_ is EmptyLang!16265) (regTwo!33043 lt!2366170))))))

(assert (=> b!6357920 (=> (not res!2616124) (not e!3860835))))

(assert (= (and d!1994486 c!1157174) b!6357911))

(assert (= (and d!1994486 (not c!1157174)) b!6357920))

(assert (= (and b!6357920 res!2616124) b!6357916))

(assert (= (and b!6357916 c!1157173) b!6357912))

(assert (= (and b!6357916 (not c!1157173)) b!6357917))

(assert (= (and b!6357917 c!1157172) b!6357919))

(assert (= (and b!6357917 (not c!1157172)) b!6357915))

(assert (= (and b!6357919 (not res!2616122)) b!6357913))

(assert (= (and b!6357915 c!1157171) b!6357914))

(assert (= (and b!6357915 (not c!1157171)) b!6357918))

(assert (= (and b!6357914 (not res!2616123)) b!6357910))

(assert (= (or b!6357910 b!6357918) bm!542244))

(assert (= (or b!6357911 b!6357914) bm!542243))

(assert (=> bm!542243 m!7163190))

(declare-fun m!7163952 () Bool)

(assert (=> b!6357913 m!7163952))

(declare-fun m!7163954 () Bool)

(assert (=> bm!542244 m!7163954))

(declare-fun m!7163956 () Bool)

(assert (=> b!6357919 m!7163956))

(assert (=> b!6357253 d!1994486))

(declare-fun d!1994488 () Bool)

(assert (=> d!1994488 (= (nullable!6258 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) (nullableFct!2204 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(declare-fun bs!1592461 () Bool)

(assert (= bs!1592461 d!1994488))

(declare-fun m!7163958 () Bool)

(assert (=> bs!1592461 m!7163958))

(assert (=> b!6357429 d!1994488))

(declare-fun d!1994490 () Bool)

(assert (=> d!1994490 (= (isEmptyExpr!1667 lt!2366371) ((_ is EmptyExpr!16265) lt!2366371))))

(assert (=> b!6357384 d!1994490))

(assert (=> d!1994314 d!1994362))

(declare-fun b!6357921 () Bool)

(declare-fun res!2616127 () Bool)

(declare-fun e!3860843 () Bool)

(assert (=> b!6357921 (=> res!2616127 e!3860843)))

(assert (=> b!6357921 (= res!2616127 (not ((_ is Concat!25110) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))))))

(declare-fun e!3860844 () Bool)

(assert (=> b!6357921 (= e!3860844 e!3860843)))

(declare-fun call!542251 () Bool)

(declare-fun c!1157175 () Bool)

(declare-fun bm!542245 () Bool)

(declare-fun c!1157176 () Bool)

(assert (=> bm!542245 (= call!542251 (validRegex!8001 (ite c!1157175 (reg!16594 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) (ite c!1157176 (regOne!33043 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) (regOne!33042 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)))))))))

(declare-fun b!6357922 () Bool)

(declare-fun e!3860839 () Bool)

(declare-fun call!542250 () Bool)

(assert (=> b!6357922 (= e!3860839 call!542250)))

(declare-fun bm!542246 () Bool)

(assert (=> bm!542246 (= call!542250 (validRegex!8001 (ite c!1157176 (regTwo!33043 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) (regTwo!33042 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))))

(declare-fun b!6357923 () Bool)

(declare-fun e!3860838 () Bool)

(assert (=> b!6357923 (= e!3860838 call!542250)))

(declare-fun bm!542247 () Bool)

(declare-fun call!542252 () Bool)

(assert (=> bm!542247 (= call!542252 call!542251)))

(declare-fun b!6357925 () Bool)

(declare-fun e!3860841 () Bool)

(declare-fun e!3860842 () Bool)

(assert (=> b!6357925 (= e!3860841 e!3860842)))

(assert (=> b!6357925 (= c!1157175 ((_ is Star!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(declare-fun b!6357926 () Bool)

(assert (=> b!6357926 (= e!3860843 e!3860838)))

(declare-fun res!2616129 () Bool)

(assert (=> b!6357926 (=> (not res!2616129) (not e!3860838))))

(assert (=> b!6357926 (= res!2616129 call!542252)))

(declare-fun b!6357927 () Bool)

(declare-fun res!2616125 () Bool)

(assert (=> b!6357927 (=> (not res!2616125) (not e!3860839))))

(assert (=> b!6357927 (= res!2616125 call!542252)))

(assert (=> b!6357927 (= e!3860844 e!3860839)))

(declare-fun b!6357928 () Bool)

(declare-fun e!3860840 () Bool)

(assert (=> b!6357928 (= e!3860842 e!3860840)))

(declare-fun res!2616126 () Bool)

(assert (=> b!6357928 (= res!2616126 (not (nullable!6258 (reg!16594 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))))

(assert (=> b!6357928 (=> (not res!2616126) (not e!3860840))))

(declare-fun b!6357929 () Bool)

(assert (=> b!6357929 (= e!3860842 e!3860844)))

(assert (=> b!6357929 (= c!1157176 ((_ is Union!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(declare-fun d!1994492 () Bool)

(declare-fun res!2616128 () Bool)

(assert (=> d!1994492 (=> res!2616128 e!3860841)))

(assert (=> d!1994492 (= res!2616128 ((_ is ElementMatch!16265) (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(assert (=> d!1994492 (= (validRegex!8001 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) e!3860841)))

(declare-fun b!6357924 () Bool)

(assert (=> b!6357924 (= e!3860840 call!542251)))

(assert (= (and d!1994492 (not res!2616128)) b!6357925))

(assert (= (and b!6357925 c!1157175) b!6357928))

(assert (= (and b!6357925 (not c!1157175)) b!6357929))

(assert (= (and b!6357928 res!2616126) b!6357924))

(assert (= (and b!6357929 c!1157176) b!6357927))

(assert (= (and b!6357929 (not c!1157176)) b!6357921))

(assert (= (and b!6357927 res!2616125) b!6357922))

(assert (= (and b!6357921 (not res!2616127)) b!6357926))

(assert (= (and b!6357926 res!2616129) b!6357923))

(assert (= (or b!6357922 b!6357923) bm!542246))

(assert (= (or b!6357927 b!6357926) bm!542247))

(assert (= (or b!6357924 bm!542247) bm!542245))

(declare-fun m!7163960 () Bool)

(assert (=> bm!542245 m!7163960))

(declare-fun m!7163962 () Bool)

(assert (=> bm!542246 m!7163962))

(declare-fun m!7163964 () Bool)

(assert (=> b!6357928 m!7163964))

(assert (=> d!1994314 d!1994492))

(declare-fun d!1994494 () Bool)

(assert (=> d!1994494 (= ($colon$colon!2126 (exprs!6149 (Context!11299 lt!2366161)) (ite (or c!1157036 c!1157038) (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 r!7292)))) (Cons!64970 (ite (or c!1157036 c!1157038) (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 r!7292))) (exprs!6149 (Context!11299 lt!2366161))))))

(assert (=> bm!542151 d!1994494))

(declare-fun d!1994496 () Bool)

(declare-fun res!2616130 () Bool)

(declare-fun e!3860845 () Bool)

(assert (=> d!1994496 (=> res!2616130 e!3860845)))

(assert (=> d!1994496 (= res!2616130 ((_ is Nil!64970) (exprs!6149 setElem!43294)))))

(assert (=> d!1994496 (= (forall!15441 (exprs!6149 setElem!43294) lambda!350108) e!3860845)))

(declare-fun b!6357930 () Bool)

(declare-fun e!3860846 () Bool)

(assert (=> b!6357930 (= e!3860845 e!3860846)))

(declare-fun res!2616131 () Bool)

(assert (=> b!6357930 (=> (not res!2616131) (not e!3860846))))

(assert (=> b!6357930 (= res!2616131 (dynLambda!25764 lambda!350108 (h!71418 (exprs!6149 setElem!43294))))))

(declare-fun b!6357931 () Bool)

(assert (=> b!6357931 (= e!3860846 (forall!15441 (t!378684 (exprs!6149 setElem!43294)) lambda!350108))))

(assert (= (and d!1994496 (not res!2616130)) b!6357930))

(assert (= (and b!6357930 res!2616131) b!6357931))

(declare-fun b_lambda!241687 () Bool)

(assert (=> (not b_lambda!241687) (not b!6357930)))

(declare-fun m!7163966 () Bool)

(assert (=> b!6357930 m!7163966))

(declare-fun m!7163968 () Bool)

(assert (=> b!6357931 m!7163968))

(assert (=> d!1994280 d!1994496))

(declare-fun d!1994498 () Bool)

(assert (=> d!1994498 (= (Exists!3335 lambda!350061) (choose!47205 lambda!350061))))

(declare-fun bs!1592462 () Bool)

(assert (= bs!1592462 d!1994498))

(declare-fun m!7163970 () Bool)

(assert (=> bs!1592462 m!7163970))

(assert (=> d!1994166 d!1994498))

(assert (=> d!1994166 d!1994232))

(declare-fun b!6357932 () Bool)

(declare-fun res!2616134 () Bool)

(declare-fun e!3860852 () Bool)

(assert (=> b!6357932 (=> res!2616134 e!3860852)))

(assert (=> b!6357932 (= res!2616134 (not ((_ is Concat!25110) (regOne!33042 (regOne!33042 r!7292)))))))

(declare-fun e!3860853 () Bool)

(assert (=> b!6357932 (= e!3860853 e!3860852)))

(declare-fun bm!542248 () Bool)

(declare-fun c!1157178 () Bool)

(declare-fun call!542254 () Bool)

(declare-fun c!1157177 () Bool)

(assert (=> bm!542248 (= call!542254 (validRegex!8001 (ite c!1157177 (reg!16594 (regOne!33042 (regOne!33042 r!7292))) (ite c!1157178 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))))))))

(declare-fun b!6357933 () Bool)

(declare-fun e!3860848 () Bool)

(declare-fun call!542253 () Bool)

(assert (=> b!6357933 (= e!3860848 call!542253)))

(declare-fun bm!542249 () Bool)

(assert (=> bm!542249 (= call!542253 (validRegex!8001 (ite c!1157178 (regTwo!33043 (regOne!33042 (regOne!33042 r!7292))) (regTwo!33042 (regOne!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6357934 () Bool)

(declare-fun e!3860847 () Bool)

(assert (=> b!6357934 (= e!3860847 call!542253)))

(declare-fun bm!542250 () Bool)

(declare-fun call!542255 () Bool)

(assert (=> bm!542250 (= call!542255 call!542254)))

(declare-fun b!6357936 () Bool)

(declare-fun e!3860850 () Bool)

(declare-fun e!3860851 () Bool)

(assert (=> b!6357936 (= e!3860850 e!3860851)))

(assert (=> b!6357936 (= c!1157177 ((_ is Star!16265) (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun b!6357937 () Bool)

(assert (=> b!6357937 (= e!3860852 e!3860847)))

(declare-fun res!2616136 () Bool)

(assert (=> b!6357937 (=> (not res!2616136) (not e!3860847))))

(assert (=> b!6357937 (= res!2616136 call!542255)))

(declare-fun b!6357938 () Bool)

(declare-fun res!2616132 () Bool)

(assert (=> b!6357938 (=> (not res!2616132) (not e!3860848))))

(assert (=> b!6357938 (= res!2616132 call!542255)))

(assert (=> b!6357938 (= e!3860853 e!3860848)))

(declare-fun b!6357939 () Bool)

(declare-fun e!3860849 () Bool)

(assert (=> b!6357939 (= e!3860851 e!3860849)))

(declare-fun res!2616133 () Bool)

(assert (=> b!6357939 (= res!2616133 (not (nullable!6258 (reg!16594 (regOne!33042 (regOne!33042 r!7292))))))))

(assert (=> b!6357939 (=> (not res!2616133) (not e!3860849))))

(declare-fun b!6357940 () Bool)

(assert (=> b!6357940 (= e!3860851 e!3860853)))

(assert (=> b!6357940 (= c!1157178 ((_ is Union!16265) (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun d!1994500 () Bool)

(declare-fun res!2616135 () Bool)

(assert (=> d!1994500 (=> res!2616135 e!3860850)))

(assert (=> d!1994500 (= res!2616135 ((_ is ElementMatch!16265) (regOne!33042 (regOne!33042 r!7292))))))

(assert (=> d!1994500 (= (validRegex!8001 (regOne!33042 (regOne!33042 r!7292))) e!3860850)))

(declare-fun b!6357935 () Bool)

(assert (=> b!6357935 (= e!3860849 call!542254)))

(assert (= (and d!1994500 (not res!2616135)) b!6357936))

(assert (= (and b!6357936 c!1157177) b!6357939))

(assert (= (and b!6357936 (not c!1157177)) b!6357940))

(assert (= (and b!6357939 res!2616133) b!6357935))

(assert (= (and b!6357940 c!1157178) b!6357938))

(assert (= (and b!6357940 (not c!1157178)) b!6357932))

(assert (= (and b!6357938 res!2616132) b!6357933))

(assert (= (and b!6357932 (not res!2616134)) b!6357937))

(assert (= (and b!6357937 res!2616136) b!6357934))

(assert (= (or b!6357933 b!6357934) bm!542249))

(assert (= (or b!6357938 b!6357937) bm!542250))

(assert (= (or b!6357935 bm!542250) bm!542248))

(declare-fun m!7163972 () Bool)

(assert (=> bm!542248 m!7163972))

(declare-fun m!7163974 () Bool)

(assert (=> bm!542249 m!7163974))

(declare-fun m!7163976 () Bool)

(assert (=> b!6357939 m!7163976))

(assert (=> d!1994166 d!1994500))

(assert (=> d!1994166 d!1994250))

(declare-fun bs!1592463 () Bool)

(declare-fun d!1994502 () Bool)

(assert (= bs!1592463 (and d!1994502 b!6357396)))

(declare-fun lambda!350138 () Int)

(assert (=> bs!1592463 (not (= lambda!350138 lambda!350109))))

(declare-fun bs!1592464 () Bool)

(assert (= bs!1592464 (and d!1994502 b!6356395)))

(assert (=> bs!1592464 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350138 lambda!349995))))

(declare-fun bs!1592465 () Bool)

(assert (= bs!1592465 (and d!1994502 b!6357721)))

(assert (=> bs!1592465 (not (= lambda!350138 lambda!350129))))

(declare-fun bs!1592466 () Bool)

(assert (= bs!1592466 (and d!1994502 b!6357057)))

(assert (=> bs!1592466 (not (= lambda!350138 lambda!350078))))

(declare-fun bs!1592467 () Bool)

(assert (= bs!1592467 (and d!1994502 d!1994330)))

(assert (=> bs!1592467 (not (= lambda!350138 lambda!350122))))

(declare-fun bs!1592468 () Bool)

(assert (= bs!1592468 (and d!1994502 b!6356387)))

(assert (=> bs!1592468 (not (= lambda!350138 lambda!350001))))

(declare-fun bs!1592469 () Bool)

(assert (= bs!1592469 (and d!1994502 b!6357049)))

(assert (=> bs!1592469 (not (= lambda!350138 lambda!350077))))

(declare-fun bs!1592470 () Bool)

(assert (= bs!1592470 (and d!1994502 b!6357250)))

(assert (=> bs!1592470 (not (= lambda!350138 lambda!350098))))

(assert (=> bs!1592468 (not (= lambda!350138 lambda!349999))))

(declare-fun bs!1592471 () Bool)

(assert (= bs!1592471 (and d!1994502 d!1994310)))

(assert (=> bs!1592471 (not (= lambda!350138 lambda!350113))))

(declare-fun bs!1592472 () Bool)

(assert (= bs!1592472 (and d!1994502 d!1994256)))

(assert (=> bs!1592472 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350138 lambda!350102))))

(declare-fun bs!1592473 () Bool)

(assert (= bs!1592473 (and d!1994502 d!1994208)))

(assert (=> bs!1592473 (not (= lambda!350138 lambda!350097))))

(assert (=> bs!1592467 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350138 lambda!350121))))

(declare-fun bs!1592474 () Bool)

(assert (= bs!1592474 (and d!1994502 b!6357617)))

(assert (=> bs!1592474 (not (= lambda!350138 lambda!350124))))

(declare-fun bs!1592475 () Bool)

(assert (= bs!1592475 (and d!1994502 b!6357910)))

(assert (=> bs!1592475 (not (= lambda!350138 lambda!350134))))

(assert (=> bs!1592464 (not (= lambda!350138 lambda!349996))))

(assert (=> bs!1592471 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350138 lambda!350112))))

(declare-fun bs!1592476 () Bool)

(assert (= bs!1592476 (and d!1994502 b!6357729)))

(assert (=> bs!1592476 (not (= lambda!350138 lambda!350130))))

(assert (=> bs!1592473 (= lambda!350138 lambda!350096)))

(assert (=> bs!1592468 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350138 lambda!350000))))

(declare-fun bs!1592477 () Bool)

(assert (= bs!1592477 (and d!1994502 b!6357258)))

(assert (=> bs!1592477 (not (= lambda!350138 lambda!350099))))

(declare-fun bs!1592478 () Bool)

(assert (= bs!1592478 (and d!1994502 b!6357625)))

(assert (=> bs!1592478 (not (= lambda!350138 lambda!350125))))

(declare-fun bs!1592479 () Bool)

(assert (= bs!1592479 (and d!1994502 b!6357404)))

(assert (=> bs!1592479 (not (= lambda!350138 lambda!350110))))

(declare-fun bs!1592480 () Bool)

(assert (= bs!1592480 (and d!1994502 d!1994308)))

(assert (=> bs!1592480 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350138 lambda!350111))))

(assert (=> bs!1592468 (= lambda!350138 lambda!349998)))

(assert (=> bs!1592472 (not (= lambda!350138 lambda!350103))))

(declare-fun bs!1592481 () Bool)

(assert (= bs!1592481 (and d!1994502 b!6357918)))

(assert (=> bs!1592481 (not (= lambda!350138 lambda!350135))))

(declare-fun bs!1592482 () Bool)

(assert (= bs!1592482 (and d!1994502 d!1994242)))

(assert (=> bs!1592482 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350138 lambda!350101))))

(declare-fun bs!1592483 () Bool)

(assert (= bs!1592483 (and d!1994502 d!1994166)))

(assert (=> bs!1592483 (= lambda!350138 lambda!350061)))

(assert (=> d!1994502 true))

(assert (=> d!1994502 true))

(assert (=> d!1994502 true))

(assert (=> d!1994502 (= (isDefined!12859 (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 Nil!64972 s!2326 s!2326)) (Exists!3335 lambda!350138))))

(assert (=> d!1994502 true))

(declare-fun _$89!2574 () Unit!158391)

(assert (=> d!1994502 (= (choose!47206 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 s!2326) _$89!2574)))

(declare-fun bs!1592484 () Bool)

(assert (= bs!1592484 d!1994502))

(assert (=> bs!1592484 m!7162606))

(assert (=> bs!1592484 m!7162606))

(assert (=> bs!1592484 m!7162624))

(declare-fun m!7163978 () Bool)

(assert (=> bs!1592484 m!7163978))

(assert (=> d!1994166 d!1994502))

(declare-fun d!1994504 () Bool)

(assert (=> d!1994504 (= (nullable!6258 (Concat!25110 lt!2366185 lt!2366173)) (nullableFct!2204 (Concat!25110 lt!2366185 lt!2366173)))))

(declare-fun bs!1592485 () Bool)

(assert (= bs!1592485 d!1994504))

(declare-fun m!7163980 () Bool)

(assert (=> bs!1592485 m!7163980))

(assert (=> b!6357445 d!1994504))

(declare-fun d!1994506 () Bool)

(assert (=> d!1994506 (= (nullable!6258 lt!2366179) (nullableFct!2204 lt!2366179))))

(declare-fun bs!1592486 () Bool)

(assert (= bs!1592486 d!1994506))

(declare-fun m!7163982 () Bool)

(assert (=> bs!1592486 m!7163982))

(assert (=> b!6357327 d!1994506))

(declare-fun d!1994508 () Bool)

(assert (=> d!1994508 (= (isEmpty!37069 lt!2366161) ((_ is Nil!64970) lt!2366161))))

(assert (=> b!6356988 d!1994508))

(declare-fun b!6357945 () Bool)

(declare-fun e!3860862 () Bool)

(assert (=> b!6357945 (= e!3860862 (not (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 lt!2366170 (head!13023 s!2326))))))))

(declare-fun b!6357946 () Bool)

(declare-fun res!2616145 () Bool)

(declare-fun e!3860861 () Bool)

(assert (=> b!6357946 (=> (not res!2616145) (not e!3860861))))

(declare-fun call!542256 () Bool)

(assert (=> b!6357946 (= res!2616145 (not call!542256))))

(declare-fun b!6357947 () Bool)

(declare-fun e!3860859 () Bool)

(declare-fun lt!2366412 () Bool)

(assert (=> b!6357947 (= e!3860859 (= lt!2366412 call!542256))))

(declare-fun bm!542251 () Bool)

(assert (=> bm!542251 (= call!542256 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun b!6357948 () Bool)

(declare-fun e!3860858 () Bool)

(declare-fun e!3860856 () Bool)

(assert (=> b!6357948 (= e!3860858 e!3860856)))

(declare-fun res!2616144 () Bool)

(assert (=> b!6357948 (=> (not res!2616144) (not e!3860856))))

(assert (=> b!6357948 (= res!2616144 (not lt!2366412))))

(declare-fun b!6357949 () Bool)

(assert (=> b!6357949 (= e!3860861 (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 lt!2366170 (head!13023 s!2326)))))))

(declare-fun b!6357950 () Bool)

(declare-fun e!3860857 () Bool)

(assert (=> b!6357950 (= e!3860857 (not lt!2366412))))

(declare-fun b!6357951 () Bool)

(assert (=> b!6357951 (= e!3860856 e!3860862)))

(declare-fun res!2616146 () Bool)

(assert (=> b!6357951 (=> res!2616146 e!3860862)))

(assert (=> b!6357951 (= res!2616146 call!542256)))

(declare-fun b!6357952 () Bool)

(assert (=> b!6357952 (= e!3860859 e!3860857)))

(declare-fun c!1157179 () Bool)

(assert (=> b!6357952 (= c!1157179 ((_ is EmptyLang!16265) (derivativeStep!4970 lt!2366170 (head!13023 s!2326))))))

(declare-fun b!6357953 () Bool)

(declare-fun e!3860860 () Bool)

(assert (=> b!6357953 (= e!3860860 (nullable!6258 (derivativeStep!4970 lt!2366170 (head!13023 s!2326))))))

(declare-fun b!6357954 () Bool)

(declare-fun res!2616148 () Bool)

(assert (=> b!6357954 (=> res!2616148 e!3860858)))

(assert (=> b!6357954 (= res!2616148 (not ((_ is ElementMatch!16265) (derivativeStep!4970 lt!2366170 (head!13023 s!2326)))))))

(assert (=> b!6357954 (= e!3860857 e!3860858)))

(declare-fun b!6357955 () Bool)

(declare-fun res!2616143 () Bool)

(assert (=> b!6357955 (=> res!2616143 e!3860862)))

(assert (=> b!6357955 (= res!2616143 (not (isEmpty!37073 (tail!12108 (tail!12108 s!2326)))))))

(declare-fun b!6357957 () Bool)

(declare-fun res!2616141 () Bool)

(assert (=> b!6357957 (=> res!2616141 e!3860858)))

(assert (=> b!6357957 (= res!2616141 e!3860861)))

(declare-fun res!2616147 () Bool)

(assert (=> b!6357957 (=> (not res!2616147) (not e!3860861))))

(assert (=> b!6357957 (= res!2616147 lt!2366412)))

(declare-fun b!6357958 () Bool)

(declare-fun res!2616142 () Bool)

(assert (=> b!6357958 (=> (not res!2616142) (not e!3860861))))

(assert (=> b!6357958 (= res!2616142 (isEmpty!37073 (tail!12108 (tail!12108 s!2326))))))

(declare-fun d!1994510 () Bool)

(assert (=> d!1994510 e!3860859))

(declare-fun c!1157181 () Bool)

(assert (=> d!1994510 (= c!1157181 ((_ is EmptyExpr!16265) (derivativeStep!4970 lt!2366170 (head!13023 s!2326))))))

(assert (=> d!1994510 (= lt!2366412 e!3860860)))

(declare-fun c!1157180 () Bool)

(assert (=> d!1994510 (= c!1157180 (isEmpty!37073 (tail!12108 s!2326)))))

(assert (=> d!1994510 (validRegex!8001 (derivativeStep!4970 lt!2366170 (head!13023 s!2326)))))

(assert (=> d!1994510 (= (matchR!8448 (derivativeStep!4970 lt!2366170 (head!13023 s!2326)) (tail!12108 s!2326)) lt!2366412)))

(declare-fun b!6357956 () Bool)

(assert (=> b!6357956 (= e!3860860 (matchR!8448 (derivativeStep!4970 (derivativeStep!4970 lt!2366170 (head!13023 s!2326)) (head!13023 (tail!12108 s!2326))) (tail!12108 (tail!12108 s!2326))))))

(assert (= (and d!1994510 c!1157180) b!6357953))

(assert (= (and d!1994510 (not c!1157180)) b!6357956))

(assert (= (and d!1994510 c!1157181) b!6357947))

(assert (= (and d!1994510 (not c!1157181)) b!6357952))

(assert (= (and b!6357952 c!1157179) b!6357950))

(assert (= (and b!6357952 (not c!1157179)) b!6357954))

(assert (= (and b!6357954 (not res!2616148)) b!6357957))

(assert (= (and b!6357957 res!2616147) b!6357946))

(assert (= (and b!6357946 res!2616145) b!6357958))

(assert (= (and b!6357958 res!2616142) b!6357949))

(assert (= (and b!6357957 (not res!2616141)) b!6357948))

(assert (= (and b!6357948 res!2616144) b!6357951))

(assert (= (and b!6357951 (not res!2616146)) b!6357955))

(assert (= (and b!6357955 (not res!2616143)) b!6357945))

(assert (= (or b!6357947 b!6357946 b!6357951) bm!542251))

(assert (=> b!6357955 m!7163356))

(assert (=> b!6357955 m!7163880))

(assert (=> b!6357955 m!7163880))

(assert (=> b!6357955 m!7163892))

(assert (=> b!6357956 m!7163356))

(assert (=> b!6357956 m!7163876))

(assert (=> b!6357956 m!7163362))

(assert (=> b!6357956 m!7163876))

(declare-fun m!7163984 () Bool)

(assert (=> b!6357956 m!7163984))

(assert (=> b!6357956 m!7163356))

(assert (=> b!6357956 m!7163880))

(assert (=> b!6357956 m!7163984))

(assert (=> b!6357956 m!7163880))

(declare-fun m!7163986 () Bool)

(assert (=> b!6357956 m!7163986))

(assert (=> b!6357958 m!7163356))

(assert (=> b!6357958 m!7163880))

(assert (=> b!6357958 m!7163880))

(assert (=> b!6357958 m!7163892))

(assert (=> b!6357949 m!7163356))

(assert (=> b!6357949 m!7163876))

(assert (=> b!6357953 m!7163362))

(declare-fun m!7163988 () Bool)

(assert (=> b!6357953 m!7163988))

(assert (=> d!1994510 m!7163356))

(assert (=> d!1994510 m!7163358))

(assert (=> d!1994510 m!7163362))

(declare-fun m!7163990 () Bool)

(assert (=> d!1994510 m!7163990))

(assert (=> bm!542251 m!7163356))

(assert (=> bm!542251 m!7163358))

(assert (=> b!6357945 m!7163356))

(assert (=> b!6357945 m!7163876))

(assert (=> b!6357300 d!1994510))

(declare-fun b!6357959 () Bool)

(declare-fun e!3860865 () Regex!16265)

(declare-fun call!542258 () Regex!16265)

(declare-fun call!542257 () Regex!16265)

(assert (=> b!6357959 (= e!3860865 (Union!16265 call!542258 call!542257))))

(declare-fun b!6357960 () Bool)

(declare-fun e!3860863 () Regex!16265)

(declare-fun call!542259 () Regex!16265)

(assert (=> b!6357960 (= e!3860863 (Concat!25110 call!542259 lt!2366170))))

(declare-fun b!6357961 () Bool)

(assert (=> b!6357961 (= e!3860865 e!3860863)))

(declare-fun c!1157185 () Bool)

(assert (=> b!6357961 (= c!1157185 ((_ is Star!16265) lt!2366170))))

(declare-fun b!6357962 () Bool)

(declare-fun e!3860864 () Regex!16265)

(assert (=> b!6357962 (= e!3860864 EmptyLang!16265)))

(declare-fun b!6357963 () Bool)

(declare-fun e!3860867 () Regex!16265)

(assert (=> b!6357963 (= e!3860867 (ite (= (head!13023 s!2326) (c!1156730 lt!2366170)) EmptyExpr!16265 EmptyLang!16265))))

(declare-fun b!6357964 () Bool)

(declare-fun e!3860866 () Regex!16265)

(declare-fun call!542260 () Regex!16265)

(assert (=> b!6357964 (= e!3860866 (Union!16265 (Concat!25110 call!542260 (regTwo!33042 lt!2366170)) EmptyLang!16265))))

(declare-fun bm!542252 () Bool)

(assert (=> bm!542252 (= call!542259 call!542257)))

(declare-fun bm!542253 () Bool)

(assert (=> bm!542253 (= call!542260 call!542259)))

(declare-fun b!6357965 () Bool)

(assert (=> b!6357965 (= e!3860864 e!3860867)))

(declare-fun c!1157184 () Bool)

(assert (=> b!6357965 (= c!1157184 ((_ is ElementMatch!16265) lt!2366170))))

(declare-fun d!1994512 () Bool)

(declare-fun lt!2366413 () Regex!16265)

(assert (=> d!1994512 (validRegex!8001 lt!2366413)))

(assert (=> d!1994512 (= lt!2366413 e!3860864)))

(declare-fun c!1157183 () Bool)

(assert (=> d!1994512 (= c!1157183 (or ((_ is EmptyExpr!16265) lt!2366170) ((_ is EmptyLang!16265) lt!2366170)))))

(assert (=> d!1994512 (validRegex!8001 lt!2366170)))

(assert (=> d!1994512 (= (derivativeStep!4970 lt!2366170 (head!13023 s!2326)) lt!2366413)))

(declare-fun b!6357966 () Bool)

(declare-fun c!1157186 () Bool)

(assert (=> b!6357966 (= c!1157186 ((_ is Union!16265) lt!2366170))))

(assert (=> b!6357966 (= e!3860867 e!3860865)))

(declare-fun b!6357967 () Bool)

(declare-fun c!1157182 () Bool)

(assert (=> b!6357967 (= c!1157182 (nullable!6258 (regOne!33042 lt!2366170)))))

(assert (=> b!6357967 (= e!3860863 e!3860866)))

(declare-fun b!6357968 () Bool)

(assert (=> b!6357968 (= e!3860866 (Union!16265 (Concat!25110 call!542258 (regTwo!33042 lt!2366170)) call!542260))))

(declare-fun bm!542254 () Bool)

(assert (=> bm!542254 (= call!542257 (derivativeStep!4970 (ite c!1157186 (regTwo!33043 lt!2366170) (ite c!1157185 (reg!16594 lt!2366170) (ite c!1157182 (regTwo!33042 lt!2366170) (regOne!33042 lt!2366170)))) (head!13023 s!2326)))))

(declare-fun bm!542255 () Bool)

(assert (=> bm!542255 (= call!542258 (derivativeStep!4970 (ite c!1157186 (regOne!33043 lt!2366170) (regOne!33042 lt!2366170)) (head!13023 s!2326)))))

(assert (= (and d!1994512 c!1157183) b!6357962))

(assert (= (and d!1994512 (not c!1157183)) b!6357965))

(assert (= (and b!6357965 c!1157184) b!6357963))

(assert (= (and b!6357965 (not c!1157184)) b!6357966))

(assert (= (and b!6357966 c!1157186) b!6357959))

(assert (= (and b!6357966 (not c!1157186)) b!6357961))

(assert (= (and b!6357961 c!1157185) b!6357960))

(assert (= (and b!6357961 (not c!1157185)) b!6357967))

(assert (= (and b!6357967 c!1157182) b!6357968))

(assert (= (and b!6357967 (not c!1157182)) b!6357964))

(assert (= (or b!6357968 b!6357964) bm!542253))

(assert (= (or b!6357960 bm!542253) bm!542252))

(assert (= (or b!6357959 bm!542252) bm!542254))

(assert (= (or b!6357959 b!6357968) bm!542255))

(declare-fun m!7163992 () Bool)

(assert (=> d!1994512 m!7163992))

(assert (=> d!1994512 m!7163272))

(declare-fun m!7163994 () Bool)

(assert (=> b!6357967 m!7163994))

(assert (=> bm!542254 m!7163360))

(declare-fun m!7163996 () Bool)

(assert (=> bm!542254 m!7163996))

(assert (=> bm!542255 m!7163360))

(declare-fun m!7163998 () Bool)

(assert (=> bm!542255 m!7163998))

(assert (=> b!6357300 d!1994512))

(assert (=> b!6357300 d!1994348))

(assert (=> b!6357300 d!1994342))

(assert (=> d!1994138 d!1994130))

(declare-fun d!1994514 () Bool)

(assert (=> d!1994514 (= (flatMap!1770 z!1189 lambda!349997) (dynLambda!25763 lambda!349997 (h!71419 zl!343)))))

(assert (=> d!1994514 true))

(declare-fun _$13!3511 () Unit!158391)

(assert (=> d!1994514 (= (choose!47200 z!1189 (h!71419 zl!343) lambda!349997) _$13!3511)))

(declare-fun b_lambda!241689 () Bool)

(assert (=> (not b_lambda!241689) (not d!1994514)))

(declare-fun bs!1592487 () Bool)

(assert (= bs!1592487 d!1994514))

(assert (=> bs!1592487 m!7162646))

(assert (=> bs!1592487 m!7163034))

(assert (=> d!1994138 d!1994514))

(declare-fun b!6357969 () Bool)

(declare-fun e!3860874 () Bool)

(assert (=> b!6357969 (= e!3860874 (not (= (head!13023 (_2!36547 (get!22482 lt!2366321))) (c!1156730 lt!2366173))))))

(declare-fun b!6357970 () Bool)

(declare-fun res!2616153 () Bool)

(declare-fun e!3860873 () Bool)

(assert (=> b!6357970 (=> (not res!2616153) (not e!3860873))))

(declare-fun call!542261 () Bool)

(assert (=> b!6357970 (= res!2616153 (not call!542261))))

(declare-fun b!6357971 () Bool)

(declare-fun e!3860871 () Bool)

(declare-fun lt!2366414 () Bool)

(assert (=> b!6357971 (= e!3860871 (= lt!2366414 call!542261))))

(declare-fun bm!542256 () Bool)

(assert (=> bm!542256 (= call!542261 (isEmpty!37073 (_2!36547 (get!22482 lt!2366321))))))

(declare-fun b!6357972 () Bool)

(declare-fun e!3860870 () Bool)

(declare-fun e!3860868 () Bool)

(assert (=> b!6357972 (= e!3860870 e!3860868)))

(declare-fun res!2616152 () Bool)

(assert (=> b!6357972 (=> (not res!2616152) (not e!3860868))))

(assert (=> b!6357972 (= res!2616152 (not lt!2366414))))

(declare-fun b!6357973 () Bool)

(assert (=> b!6357973 (= e!3860873 (= (head!13023 (_2!36547 (get!22482 lt!2366321))) (c!1156730 lt!2366173)))))

(declare-fun b!6357974 () Bool)

(declare-fun e!3860869 () Bool)

(assert (=> b!6357974 (= e!3860869 (not lt!2366414))))

(declare-fun b!6357975 () Bool)

(assert (=> b!6357975 (= e!3860868 e!3860874)))

(declare-fun res!2616154 () Bool)

(assert (=> b!6357975 (=> res!2616154 e!3860874)))

(assert (=> b!6357975 (= res!2616154 call!542261)))

(declare-fun b!6357976 () Bool)

(assert (=> b!6357976 (= e!3860871 e!3860869)))

(declare-fun c!1157187 () Bool)

(assert (=> b!6357976 (= c!1157187 ((_ is EmptyLang!16265) lt!2366173))))

(declare-fun b!6357977 () Bool)

(declare-fun e!3860872 () Bool)

(assert (=> b!6357977 (= e!3860872 (nullable!6258 lt!2366173))))

(declare-fun b!6357978 () Bool)

(declare-fun res!2616156 () Bool)

(assert (=> b!6357978 (=> res!2616156 e!3860870)))

(assert (=> b!6357978 (= res!2616156 (not ((_ is ElementMatch!16265) lt!2366173)))))

(assert (=> b!6357978 (= e!3860869 e!3860870)))

(declare-fun b!6357979 () Bool)

(declare-fun res!2616151 () Bool)

(assert (=> b!6357979 (=> res!2616151 e!3860874)))

(assert (=> b!6357979 (= res!2616151 (not (isEmpty!37073 (tail!12108 (_2!36547 (get!22482 lt!2366321))))))))

(declare-fun b!6357981 () Bool)

(declare-fun res!2616149 () Bool)

(assert (=> b!6357981 (=> res!2616149 e!3860870)))

(assert (=> b!6357981 (= res!2616149 e!3860873)))

(declare-fun res!2616155 () Bool)

(assert (=> b!6357981 (=> (not res!2616155) (not e!3860873))))

(assert (=> b!6357981 (= res!2616155 lt!2366414)))

(declare-fun b!6357982 () Bool)

(declare-fun res!2616150 () Bool)

(assert (=> b!6357982 (=> (not res!2616150) (not e!3860873))))

(assert (=> b!6357982 (= res!2616150 (isEmpty!37073 (tail!12108 (_2!36547 (get!22482 lt!2366321)))))))

(declare-fun d!1994516 () Bool)

(assert (=> d!1994516 e!3860871))

(declare-fun c!1157189 () Bool)

(assert (=> d!1994516 (= c!1157189 ((_ is EmptyExpr!16265) lt!2366173))))

(assert (=> d!1994516 (= lt!2366414 e!3860872)))

(declare-fun c!1157188 () Bool)

(assert (=> d!1994516 (= c!1157188 (isEmpty!37073 (_2!36547 (get!22482 lt!2366321))))))

(assert (=> d!1994516 (validRegex!8001 lt!2366173)))

(assert (=> d!1994516 (= (matchR!8448 lt!2366173 (_2!36547 (get!22482 lt!2366321))) lt!2366414)))

(declare-fun b!6357980 () Bool)

(assert (=> b!6357980 (= e!3860872 (matchR!8448 (derivativeStep!4970 lt!2366173 (head!13023 (_2!36547 (get!22482 lt!2366321)))) (tail!12108 (_2!36547 (get!22482 lt!2366321)))))))

(assert (= (and d!1994516 c!1157188) b!6357977))

(assert (= (and d!1994516 (not c!1157188)) b!6357980))

(assert (= (and d!1994516 c!1157189) b!6357971))

(assert (= (and d!1994516 (not c!1157189)) b!6357976))

(assert (= (and b!6357976 c!1157187) b!6357974))

(assert (= (and b!6357976 (not c!1157187)) b!6357978))

(assert (= (and b!6357978 (not res!2616156)) b!6357981))

(assert (= (and b!6357981 res!2616155) b!6357970))

(assert (= (and b!6357970 res!2616153) b!6357982))

(assert (= (and b!6357982 res!2616150) b!6357973))

(assert (= (and b!6357981 (not res!2616149)) b!6357972))

(assert (= (and b!6357972 res!2616152) b!6357975))

(assert (= (and b!6357975 (not res!2616154)) b!6357979))

(assert (= (and b!6357979 (not res!2616151)) b!6357969))

(assert (= (or b!6357971 b!6357970 b!6357975) bm!542256))

(declare-fun m!7164000 () Bool)

(assert (=> b!6357979 m!7164000))

(assert (=> b!6357979 m!7164000))

(declare-fun m!7164002 () Bool)

(assert (=> b!6357979 m!7164002))

(declare-fun m!7164004 () Bool)

(assert (=> b!6357980 m!7164004))

(assert (=> b!6357980 m!7164004))

(declare-fun m!7164006 () Bool)

(assert (=> b!6357980 m!7164006))

(assert (=> b!6357980 m!7164000))

(assert (=> b!6357980 m!7164006))

(assert (=> b!6357980 m!7164000))

(declare-fun m!7164008 () Bool)

(assert (=> b!6357980 m!7164008))

(assert (=> b!6357982 m!7164000))

(assert (=> b!6357982 m!7164000))

(assert (=> b!6357982 m!7164002))

(assert (=> b!6357973 m!7164004))

(declare-fun m!7164010 () Bool)

(assert (=> b!6357977 m!7164010))

(declare-fun m!7164012 () Bool)

(assert (=> d!1994516 m!7164012))

(assert (=> d!1994516 m!7163602))

(assert (=> bm!542256 m!7164012))

(assert (=> b!6357969 m!7164004))

(assert (=> b!6357132 d!1994516))

(declare-fun d!1994518 () Bool)

(assert (=> d!1994518 (= (get!22482 lt!2366321) (v!52324 lt!2366321))))

(assert (=> b!6357132 d!1994518))

(declare-fun d!1994520 () Bool)

(assert (=> d!1994520 (= (isUnion!1104 lt!2366230) ((_ is Union!16265) lt!2366230))))

(assert (=> b!6356671 d!1994520))

(assert (=> d!1994236 d!1994362))

(assert (=> d!1994236 d!1994416))

(declare-fun d!1994522 () Bool)

(assert (=> d!1994522 true))

(assert (=> d!1994522 true))

(declare-fun res!2616157 () Bool)

(assert (=> d!1994522 (= (choose!47205 lambda!349999) res!2616157)))

(assert (=> d!1994206 d!1994522))

(declare-fun bs!1592488 () Bool)

(declare-fun d!1994524 () Bool)

(assert (= bs!1592488 (and d!1994524 b!6356814)))

(declare-fun lambda!350139 () Int)

(assert (=> bs!1592488 (not (= lambda!350139 lambda!350046))))

(declare-fun bs!1592489 () Bool)

(assert (= bs!1592489 (and d!1994524 d!1994398)))

(assert (=> bs!1592489 (= lambda!350139 lambda!350127)))

(declare-fun bs!1592490 () Bool)

(assert (= bs!1592490 (and d!1994524 d!1994436)))

(assert (=> bs!1592490 (= lambda!350139 lambda!350131)))

(declare-fun bs!1592491 () Bool)

(assert (= bs!1592491 (and d!1994524 b!6356821)))

(assert (=> bs!1592491 (not (= lambda!350139 lambda!350052))))

(declare-fun bs!1592492 () Bool)

(assert (= bs!1592492 (and d!1994524 b!6356819)))

(assert (=> bs!1592492 (not (= lambda!350139 lambda!350051))))

(declare-fun bs!1592493 () Bool)

(assert (= bs!1592493 (and d!1994524 b!6356816)))

(assert (=> bs!1592493 (not (= lambda!350139 lambda!350048))))

(declare-fun bs!1592494 () Bool)

(assert (= bs!1592494 (and d!1994524 d!1994400)))

(assert (=> bs!1592494 (= lambda!350139 lambda!350128)))

(declare-fun bs!1592495 () Bool)

(assert (= bs!1592495 (and d!1994524 d!1994334)))

(assert (=> bs!1592495 (= lambda!350139 lambda!350123)))

(declare-fun bs!1592496 () Bool)

(assert (= bs!1592496 (and d!1994524 d!1994324)))

(assert (=> bs!1592496 (= lambda!350139 lambda!350116)))

(assert (=> d!1994524 (= (nullableZipper!2031 lt!2366187) (exists!2570 lt!2366187 lambda!350139))))

(declare-fun bs!1592497 () Bool)

(assert (= bs!1592497 d!1994524))

(declare-fun m!7164014 () Bool)

(assert (=> bs!1592497 m!7164014))

(assert (=> b!6357342 d!1994524))

(assert (=> b!6357472 d!1994340))

(assert (=> b!6357472 d!1994342))

(assert (=> bm!542147 d!1994362))

(declare-fun c!1157191 () Bool)

(declare-fun call!542264 () Int)

(declare-fun bm!542257 () Bool)

(declare-fun c!1157193 () Bool)

(assert (=> bm!542257 (= call!542264 (regexDepthTotal!222 (ite c!1157191 (reg!16594 (h!71418 (exprs!6149 lt!2366194))) (ite c!1157193 (regTwo!33043 (h!71418 (exprs!6149 lt!2366194))) (regTwo!33042 (h!71418 (exprs!6149 lt!2366194)))))))))

(declare-fun bm!542258 () Bool)

(declare-fun call!542262 () Int)

(assert (=> bm!542258 (= call!542262 (regexDepthTotal!222 (ite c!1157193 (regOne!33043 (h!71418 (exprs!6149 lt!2366194))) (regOne!33042 (h!71418 (exprs!6149 lt!2366194))))))))

(declare-fun b!6357983 () Bool)

(declare-fun e!3860875 () Int)

(declare-fun call!542263 () Int)

(assert (=> b!6357983 (= e!3860875 (+ 1 call!542262 call!542263))))

(declare-fun b!6357984 () Bool)

(declare-fun e!3860877 () Int)

(assert (=> b!6357984 (= e!3860877 (+ 1 call!542264))))

(declare-fun b!6357985 () Bool)

(declare-fun e!3860876 () Int)

(assert (=> b!6357985 (= e!3860876 1)))

(declare-fun b!6357986 () Bool)

(declare-fun e!3860878 () Int)

(assert (=> b!6357986 (= e!3860878 (+ 1 call!542262 call!542263))))

(declare-fun b!6357988 () Bool)

(assert (=> b!6357988 (= e!3860878 1)))

(declare-fun b!6357989 () Bool)

(assert (=> b!6357989 (= e!3860876 e!3860877)))

(assert (=> b!6357989 (= c!1157191 ((_ is Star!16265) (h!71418 (exprs!6149 lt!2366194))))))

(declare-fun bm!542259 () Bool)

(assert (=> bm!542259 (= call!542263 call!542264)))

(declare-fun b!6357990 () Bool)

(assert (=> b!6357990 (= c!1157193 ((_ is Union!16265) (h!71418 (exprs!6149 lt!2366194))))))

(assert (=> b!6357990 (= e!3860877 e!3860875)))

(declare-fun d!1994526 () Bool)

(declare-fun lt!2366415 () Int)

(assert (=> d!1994526 (> lt!2366415 0)))

(assert (=> d!1994526 (= lt!2366415 e!3860876)))

(declare-fun c!1157192 () Bool)

(assert (=> d!1994526 (= c!1157192 ((_ is ElementMatch!16265) (h!71418 (exprs!6149 lt!2366194))))))

(assert (=> d!1994526 (= (regexDepthTotal!222 (h!71418 (exprs!6149 lt!2366194))) lt!2366415)))

(declare-fun b!6357987 () Bool)

(assert (=> b!6357987 (= e!3860875 e!3860878)))

(declare-fun c!1157190 () Bool)

(assert (=> b!6357987 (= c!1157190 ((_ is Concat!25110) (h!71418 (exprs!6149 lt!2366194))))))

(assert (= (and d!1994526 c!1157192) b!6357985))

(assert (= (and d!1994526 (not c!1157192)) b!6357989))

(assert (= (and b!6357989 c!1157191) b!6357984))

(assert (= (and b!6357989 (not c!1157191)) b!6357990))

(assert (= (and b!6357990 c!1157193) b!6357983))

(assert (= (and b!6357990 (not c!1157193)) b!6357987))

(assert (= (and b!6357987 c!1157190) b!6357986))

(assert (= (and b!6357987 (not c!1157190)) b!6357988))

(assert (= (or b!6357983 b!6357986) bm!542259))

(assert (= (or b!6357983 b!6357986) bm!542258))

(assert (= (or b!6357984 bm!542259) bm!542257))

(declare-fun m!7164016 () Bool)

(assert (=> bm!542257 m!7164016))

(declare-fun m!7164018 () Bool)

(assert (=> bm!542258 m!7164018))

(assert (=> b!6357348 d!1994526))

(declare-fun d!1994528 () Bool)

(declare-fun lt!2366416 () Int)

(assert (=> d!1994528 (>= lt!2366416 0)))

(declare-fun e!3860879 () Int)

(assert (=> d!1994528 (= lt!2366416 e!3860879)))

(declare-fun c!1157194 () Bool)

(assert (=> d!1994528 (= c!1157194 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194))))))))

(assert (=> d!1994528 (= (contextDepthTotal!374 (Context!11299 (t!378684 (exprs!6149 lt!2366194)))) lt!2366416)))

(declare-fun b!6357991 () Bool)

(assert (=> b!6357991 (= e!3860879 (+ (regexDepthTotal!222 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194)))))) (contextDepthTotal!374 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194)))))))))))

(declare-fun b!6357992 () Bool)

(assert (=> b!6357992 (= e!3860879 1)))

(assert (= (and d!1994528 c!1157194) b!6357991))

(assert (= (and d!1994528 (not c!1157194)) b!6357992))

(declare-fun m!7164020 () Bool)

(assert (=> b!6357991 m!7164020))

(declare-fun m!7164022 () Bool)

(assert (=> b!6357991 m!7164022))

(assert (=> b!6357348 d!1994528))

(declare-fun d!1994530 () Bool)

(declare-fun res!2616162 () Bool)

(declare-fun e!3860884 () Bool)

(assert (=> d!1994530 (=> res!2616162 e!3860884)))

(assert (=> d!1994530 (= res!2616162 ((_ is Nil!64971) zl!343))))

(assert (=> d!1994530 (= (forall!15442 zl!343 lambda!350052) e!3860884)))

(declare-fun b!6357997 () Bool)

(declare-fun e!3860885 () Bool)

(assert (=> b!6357997 (= e!3860884 e!3860885)))

(declare-fun res!2616163 () Bool)

(assert (=> b!6357997 (=> (not res!2616163) (not e!3860885))))

(declare-fun dynLambda!25766 (Int Context!11298) Bool)

(assert (=> b!6357997 (= res!2616163 (dynLambda!25766 lambda!350052 (h!71419 zl!343)))))

(declare-fun b!6357998 () Bool)

(assert (=> b!6357998 (= e!3860885 (forall!15442 (t!378685 zl!343) lambda!350052))))

(assert (= (and d!1994530 (not res!2616162)) b!6357997))

(assert (= (and b!6357997 res!2616163) b!6357998))

(declare-fun b_lambda!241691 () Bool)

(assert (=> (not b_lambda!241691) (not b!6357997)))

(declare-fun m!7164024 () Bool)

(assert (=> b!6357997 m!7164024))

(declare-fun m!7164026 () Bool)

(assert (=> b!6357998 m!7164026))

(assert (=> b!6356821 d!1994530))

(declare-fun b!6357999 () Bool)

(declare-fun e!3860892 () Bool)

(assert (=> b!6357999 (= e!3860892 (not (= (head!13023 (_1!36547 (get!22482 lt!2366355))) (c!1156730 (regOne!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6358000 () Bool)

(declare-fun res!2616168 () Bool)

(declare-fun e!3860891 () Bool)

(assert (=> b!6358000 (=> (not res!2616168) (not e!3860891))))

(declare-fun call!542265 () Bool)

(assert (=> b!6358000 (= res!2616168 (not call!542265))))

(declare-fun b!6358001 () Bool)

(declare-fun e!3860889 () Bool)

(declare-fun lt!2366417 () Bool)

(assert (=> b!6358001 (= e!3860889 (= lt!2366417 call!542265))))

(declare-fun bm!542260 () Bool)

(assert (=> bm!542260 (= call!542265 (isEmpty!37073 (_1!36547 (get!22482 lt!2366355))))))

(declare-fun b!6358002 () Bool)

(declare-fun e!3860888 () Bool)

(declare-fun e!3860886 () Bool)

(assert (=> b!6358002 (= e!3860888 e!3860886)))

(declare-fun res!2616167 () Bool)

(assert (=> b!6358002 (=> (not res!2616167) (not e!3860886))))

(assert (=> b!6358002 (= res!2616167 (not lt!2366417))))

(declare-fun b!6358003 () Bool)

(assert (=> b!6358003 (= e!3860891 (= (head!13023 (_1!36547 (get!22482 lt!2366355))) (c!1156730 (regOne!33042 (regOne!33042 r!7292)))))))

(declare-fun b!6358004 () Bool)

(declare-fun e!3860887 () Bool)

(assert (=> b!6358004 (= e!3860887 (not lt!2366417))))

(declare-fun b!6358005 () Bool)

(assert (=> b!6358005 (= e!3860886 e!3860892)))

(declare-fun res!2616169 () Bool)

(assert (=> b!6358005 (=> res!2616169 e!3860892)))

(assert (=> b!6358005 (= res!2616169 call!542265)))

(declare-fun b!6358006 () Bool)

(assert (=> b!6358006 (= e!3860889 e!3860887)))

(declare-fun c!1157195 () Bool)

(assert (=> b!6358006 (= c!1157195 ((_ is EmptyLang!16265) (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun b!6358007 () Bool)

(declare-fun e!3860890 () Bool)

(assert (=> b!6358007 (= e!3860890 (nullable!6258 (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun b!6358008 () Bool)

(declare-fun res!2616171 () Bool)

(assert (=> b!6358008 (=> res!2616171 e!3860888)))

(assert (=> b!6358008 (= res!2616171 (not ((_ is ElementMatch!16265) (regOne!33042 (regOne!33042 r!7292)))))))

(assert (=> b!6358008 (= e!3860887 e!3860888)))

(declare-fun b!6358009 () Bool)

(declare-fun res!2616166 () Bool)

(assert (=> b!6358009 (=> res!2616166 e!3860892)))

(assert (=> b!6358009 (= res!2616166 (not (isEmpty!37073 (tail!12108 (_1!36547 (get!22482 lt!2366355))))))))

(declare-fun b!6358011 () Bool)

(declare-fun res!2616164 () Bool)

(assert (=> b!6358011 (=> res!2616164 e!3860888)))

(assert (=> b!6358011 (= res!2616164 e!3860891)))

(declare-fun res!2616170 () Bool)

(assert (=> b!6358011 (=> (not res!2616170) (not e!3860891))))

(assert (=> b!6358011 (= res!2616170 lt!2366417)))

(declare-fun b!6358012 () Bool)

(declare-fun res!2616165 () Bool)

(assert (=> b!6358012 (=> (not res!2616165) (not e!3860891))))

(assert (=> b!6358012 (= res!2616165 (isEmpty!37073 (tail!12108 (_1!36547 (get!22482 lt!2366355)))))))

(declare-fun d!1994532 () Bool)

(assert (=> d!1994532 e!3860889))

(declare-fun c!1157197 () Bool)

(assert (=> d!1994532 (= c!1157197 ((_ is EmptyExpr!16265) (regOne!33042 (regOne!33042 r!7292))))))

(assert (=> d!1994532 (= lt!2366417 e!3860890)))

(declare-fun c!1157196 () Bool)

(assert (=> d!1994532 (= c!1157196 (isEmpty!37073 (_1!36547 (get!22482 lt!2366355))))))

(assert (=> d!1994532 (validRegex!8001 (regOne!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994532 (= (matchR!8448 (regOne!33042 (regOne!33042 r!7292)) (_1!36547 (get!22482 lt!2366355))) lt!2366417)))

(declare-fun b!6358010 () Bool)

(assert (=> b!6358010 (= e!3860890 (matchR!8448 (derivativeStep!4970 (regOne!33042 (regOne!33042 r!7292)) (head!13023 (_1!36547 (get!22482 lt!2366355)))) (tail!12108 (_1!36547 (get!22482 lt!2366355)))))))

(assert (= (and d!1994532 c!1157196) b!6358007))

(assert (= (and d!1994532 (not c!1157196)) b!6358010))

(assert (= (and d!1994532 c!1157197) b!6358001))

(assert (= (and d!1994532 (not c!1157197)) b!6358006))

(assert (= (and b!6358006 c!1157195) b!6358004))

(assert (= (and b!6358006 (not c!1157195)) b!6358008))

(assert (= (and b!6358008 (not res!2616171)) b!6358011))

(assert (= (and b!6358011 res!2616170) b!6358000))

(assert (= (and b!6358000 res!2616168) b!6358012))

(assert (= (and b!6358012 res!2616165) b!6358003))

(assert (= (and b!6358011 (not res!2616164)) b!6358002))

(assert (= (and b!6358002 res!2616167) b!6358005))

(assert (= (and b!6358005 (not res!2616169)) b!6358009))

(assert (= (and b!6358009 (not res!2616166)) b!6357999))

(assert (= (or b!6358001 b!6358000 b!6358005) bm!542260))

(declare-fun m!7164028 () Bool)

(assert (=> b!6358009 m!7164028))

(assert (=> b!6358009 m!7164028))

(declare-fun m!7164030 () Bool)

(assert (=> b!6358009 m!7164030))

(declare-fun m!7164032 () Bool)

(assert (=> b!6358010 m!7164032))

(assert (=> b!6358010 m!7164032))

(declare-fun m!7164034 () Bool)

(assert (=> b!6358010 m!7164034))

(assert (=> b!6358010 m!7164028))

(assert (=> b!6358010 m!7164034))

(assert (=> b!6358010 m!7164028))

(declare-fun m!7164036 () Bool)

(assert (=> b!6358010 m!7164036))

(assert (=> b!6358012 m!7164028))

(assert (=> b!6358012 m!7164028))

(assert (=> b!6358012 m!7164030))

(assert (=> b!6358003 m!7164032))

(assert (=> b!6358007 m!7162570))

(declare-fun m!7164038 () Bool)

(assert (=> d!1994532 m!7164038))

(assert (=> d!1994532 m!7163132))

(assert (=> bm!542260 m!7164038))

(assert (=> b!6357999 m!7164032))

(assert (=> b!6357335 d!1994532))

(assert (=> b!6357335 d!1994484))

(declare-fun d!1994534 () Bool)

(assert (=> d!1994534 (= (isEmpty!37073 (t!378686 s!2326)) ((_ is Nil!64972) (t!378686 s!2326)))))

(assert (=> d!1994276 d!1994534))

(declare-fun bs!1592498 () Bool)

(declare-fun d!1994536 () Bool)

(assert (= bs!1592498 (and d!1994536 d!1994470)))

(declare-fun lambda!350140 () Int)

(assert (=> bs!1592498 (= lambda!350140 lambda!350133)))

(declare-fun bs!1592499 () Bool)

(assert (= bs!1592499 (and d!1994536 d!1994068)))

(assert (=> bs!1592499 (= lambda!350140 lambda!350024)))

(declare-fun bs!1592500 () Bool)

(assert (= bs!1592500 (and d!1994536 d!1994280)))

(assert (=> bs!1592500 (= lambda!350140 lambda!350108)))

(declare-fun bs!1592501 () Bool)

(assert (= bs!1592501 (and d!1994536 d!1994168)))

(assert (=> bs!1592501 (= lambda!350140 lambda!350067)))

(declare-fun bs!1592502 () Bool)

(assert (= bs!1592502 (and d!1994536 d!1994268)))

(assert (=> bs!1592502 (= lambda!350140 lambda!350106)))

(declare-fun bs!1592503 () Bool)

(assert (= bs!1592503 (and d!1994536 d!1994202)))

(assert (=> bs!1592503 (= lambda!350140 lambda!350079)))

(declare-fun bs!1592504 () Bool)

(assert (= bs!1592504 (and d!1994536 d!1994240)))

(assert (=> bs!1592504 (= lambda!350140 lambda!350100)))

(declare-fun bs!1592505 () Bool)

(assert (= bs!1592505 (and d!1994536 d!1994060)))

(assert (=> bs!1592505 (= lambda!350140 lambda!350020)))

(declare-fun bs!1592506 () Bool)

(assert (= bs!1592506 (and d!1994536 d!1994278)))

(assert (=> bs!1592506 (= lambda!350140 lambda!350107)))

(declare-fun e!3860895 () Bool)

(assert (=> d!1994536 e!3860895))

(declare-fun res!2616172 () Bool)

(assert (=> d!1994536 (=> (not res!2616172) (not e!3860895))))

(declare-fun lt!2366418 () Regex!16265)

(assert (=> d!1994536 (= res!2616172 (validRegex!8001 lt!2366418))))

(declare-fun e!3860898 () Regex!16265)

(assert (=> d!1994536 (= lt!2366418 e!3860898)))

(declare-fun c!1157201 () Bool)

(declare-fun e!3860893 () Bool)

(assert (=> d!1994536 (= c!1157201 e!3860893)))

(declare-fun res!2616173 () Bool)

(assert (=> d!1994536 (=> (not res!2616173) (not e!3860893))))

(assert (=> d!1994536 (= res!2616173 ((_ is Cons!64970) (t!378684 lt!2366196)))))

(assert (=> d!1994536 (forall!15441 (t!378684 lt!2366196) lambda!350140)))

(assert (=> d!1994536 (= (generalisedConcat!1862 (t!378684 lt!2366196)) lt!2366418)))

(declare-fun b!6358013 () Bool)

(declare-fun e!3860894 () Bool)

(declare-fun e!3860897 () Bool)

(assert (=> b!6358013 (= e!3860894 e!3860897)))

(declare-fun c!1157198 () Bool)

(assert (=> b!6358013 (= c!1157198 (isEmpty!37069 (tail!12107 (t!378684 lt!2366196))))))

(declare-fun b!6358014 () Bool)

(assert (=> b!6358014 (= e!3860897 (isConcat!1190 lt!2366418))))

(declare-fun b!6358015 () Bool)

(declare-fun e!3860896 () Regex!16265)

(assert (=> b!6358015 (= e!3860898 e!3860896)))

(declare-fun c!1157199 () Bool)

(assert (=> b!6358015 (= c!1157199 ((_ is Cons!64970) (t!378684 lt!2366196)))))

(declare-fun b!6358016 () Bool)

(assert (=> b!6358016 (= e!3860896 EmptyExpr!16265)))

(declare-fun b!6358017 () Bool)

(assert (=> b!6358017 (= e!3860896 (Concat!25110 (h!71418 (t!378684 lt!2366196)) (generalisedConcat!1862 (t!378684 (t!378684 lt!2366196)))))))

(declare-fun b!6358018 () Bool)

(assert (=> b!6358018 (= e!3860893 (isEmpty!37069 (t!378684 (t!378684 lt!2366196))))))

(declare-fun b!6358019 () Bool)

(assert (=> b!6358019 (= e!3860895 e!3860894)))

(declare-fun c!1157200 () Bool)

(assert (=> b!6358019 (= c!1157200 (isEmpty!37069 (t!378684 lt!2366196)))))

(declare-fun b!6358020 () Bool)

(assert (=> b!6358020 (= e!3860897 (= lt!2366418 (head!13022 (t!378684 lt!2366196))))))

(declare-fun b!6358021 () Bool)

(assert (=> b!6358021 (= e!3860898 (h!71418 (t!378684 lt!2366196)))))

(declare-fun b!6358022 () Bool)

(assert (=> b!6358022 (= e!3860894 (isEmptyExpr!1667 lt!2366418))))

(assert (= (and d!1994536 res!2616173) b!6358018))

(assert (= (and d!1994536 c!1157201) b!6358021))

(assert (= (and d!1994536 (not c!1157201)) b!6358015))

(assert (= (and b!6358015 c!1157199) b!6358017))

(assert (= (and b!6358015 (not c!1157199)) b!6358016))

(assert (= (and d!1994536 res!2616172) b!6358019))

(assert (= (and b!6358019 c!1157200) b!6358022))

(assert (= (and b!6358019 (not c!1157200)) b!6358013))

(assert (= (and b!6358013 c!1157198) b!6358020))

(assert (= (and b!6358013 (not c!1157198)) b!6358014))

(declare-fun m!7164040 () Bool)

(assert (=> b!6358013 m!7164040))

(assert (=> b!6358013 m!7164040))

(declare-fun m!7164042 () Bool)

(assert (=> b!6358013 m!7164042))

(declare-fun m!7164044 () Bool)

(assert (=> d!1994536 m!7164044))

(declare-fun m!7164046 () Bool)

(assert (=> d!1994536 m!7164046))

(declare-fun m!7164048 () Bool)

(assert (=> b!6358020 m!7164048))

(declare-fun m!7164050 () Bool)

(assert (=> b!6358014 m!7164050))

(assert (=> b!6358019 m!7163266))

(declare-fun m!7164052 () Bool)

(assert (=> b!6358017 m!7164052))

(declare-fun m!7164054 () Bool)

(assert (=> b!6358018 m!7164054))

(declare-fun m!7164056 () Bool)

(assert (=> b!6358022 m!7164056))

(assert (=> b!6357142 d!1994536))

(assert (=> b!6357437 d!1994348))

(declare-fun bs!1592507 () Bool)

(declare-fun b!6358023 () Bool)

(assert (= bs!1592507 (and b!6358023 b!6357396)))

(declare-fun lambda!350141 () Int)

(assert (=> bs!1592507 (= (and (= (reg!16594 (regTwo!33043 r!7292)) (reg!16594 r!7292)) (= (regTwo!33043 r!7292) r!7292)) (= lambda!350141 lambda!350109))))

(declare-fun bs!1592508 () Bool)

(assert (= bs!1592508 (and b!6358023 b!6356395)))

(assert (=> bs!1592508 (not (= lambda!350141 lambda!349995))))

(declare-fun bs!1592509 () Bool)

(assert (= bs!1592509 (and b!6358023 d!1994502)))

(assert (=> bs!1592509 (not (= lambda!350141 lambda!350138))))

(declare-fun bs!1592510 () Bool)

(assert (= bs!1592510 (and b!6358023 b!6357721)))

(assert (=> bs!1592510 (= (and (= (reg!16594 (regTwo!33043 r!7292)) (reg!16594 (regOne!33043 lt!2366179))) (= (regTwo!33043 r!7292) (regOne!33043 lt!2366179))) (= lambda!350141 lambda!350129))))

(declare-fun bs!1592511 () Bool)

(assert (= bs!1592511 (and b!6358023 b!6357057)))

(assert (=> bs!1592511 (not (= lambda!350141 lambda!350078))))

(declare-fun bs!1592512 () Bool)

(assert (= bs!1592512 (and b!6358023 d!1994330)))

(assert (=> bs!1592512 (not (= lambda!350141 lambda!350122))))

(declare-fun bs!1592513 () Bool)

(assert (= bs!1592513 (and b!6358023 b!6356387)))

(assert (=> bs!1592513 (not (= lambda!350141 lambda!350001))))

(declare-fun bs!1592514 () Bool)

(assert (= bs!1592514 (and b!6358023 b!6357049)))

(assert (=> bs!1592514 (= (and (= (reg!16594 (regTwo!33043 r!7292)) (reg!16594 lt!2366179)) (= (regTwo!33043 r!7292) lt!2366179)) (= lambda!350141 lambda!350077))))

(declare-fun bs!1592515 () Bool)

(assert (= bs!1592515 (and b!6358023 b!6357250)))

(assert (=> bs!1592515 (= (and (= (reg!16594 (regTwo!33043 r!7292)) (reg!16594 lt!2366170)) (= (regTwo!33043 r!7292) lt!2366170)) (= lambda!350141 lambda!350098))))

(assert (=> bs!1592513 (not (= lambda!350141 lambda!349999))))

(declare-fun bs!1592516 () Bool)

(assert (= bs!1592516 (and b!6358023 d!1994310)))

(assert (=> bs!1592516 (not (= lambda!350141 lambda!350113))))

(declare-fun bs!1592517 () Bool)

(assert (= bs!1592517 (and b!6358023 d!1994256)))

(assert (=> bs!1592517 (not (= lambda!350141 lambda!350102))))

(declare-fun bs!1592518 () Bool)

(assert (= bs!1592518 (and b!6358023 d!1994208)))

(assert (=> bs!1592518 (not (= lambda!350141 lambda!350097))))

(assert (=> bs!1592512 (not (= lambda!350141 lambda!350121))))

(declare-fun bs!1592519 () Bool)

(assert (= bs!1592519 (and b!6358023 b!6357617)))

(assert (=> bs!1592519 (= (and (= (reg!16594 (regTwo!33043 r!7292)) (reg!16594 (regTwo!33043 lt!2366179))) (= (regTwo!33043 r!7292) (regTwo!33043 lt!2366179))) (= lambda!350141 lambda!350124))))

(declare-fun bs!1592520 () Bool)

(assert (= bs!1592520 (and b!6358023 b!6357910)))

(assert (=> bs!1592520 (= (and (= (reg!16594 (regTwo!33043 r!7292)) (reg!16594 (regTwo!33043 lt!2366170))) (= (regTwo!33043 r!7292) (regTwo!33043 lt!2366170))) (= lambda!350141 lambda!350134))))

(assert (=> bs!1592508 (not (= lambda!350141 lambda!349996))))

(assert (=> bs!1592516 (not (= lambda!350141 lambda!350112))))

(declare-fun bs!1592521 () Bool)

(assert (= bs!1592521 (and b!6358023 b!6357729)))

(assert (=> bs!1592521 (not (= lambda!350141 lambda!350130))))

(assert (=> bs!1592518 (not (= lambda!350141 lambda!350096))))

(assert (=> bs!1592513 (not (= lambda!350141 lambda!350000))))

(declare-fun bs!1592522 () Bool)

(assert (= bs!1592522 (and b!6358023 b!6357258)))

(assert (=> bs!1592522 (not (= lambda!350141 lambda!350099))))

(declare-fun bs!1592523 () Bool)

(assert (= bs!1592523 (and b!6358023 b!6357625)))

(assert (=> bs!1592523 (not (= lambda!350141 lambda!350125))))

(declare-fun bs!1592524 () Bool)

(assert (= bs!1592524 (and b!6358023 b!6357404)))

(assert (=> bs!1592524 (not (= lambda!350141 lambda!350110))))

(declare-fun bs!1592525 () Bool)

(assert (= bs!1592525 (and b!6358023 d!1994308)))

(assert (=> bs!1592525 (not (= lambda!350141 lambda!350111))))

(assert (=> bs!1592513 (not (= lambda!350141 lambda!349998))))

(assert (=> bs!1592517 (not (= lambda!350141 lambda!350103))))

(declare-fun bs!1592526 () Bool)

(assert (= bs!1592526 (and b!6358023 b!6357918)))

(assert (=> bs!1592526 (not (= lambda!350141 lambda!350135))))

(declare-fun bs!1592527 () Bool)

(assert (= bs!1592527 (and b!6358023 d!1994242)))

(assert (=> bs!1592527 (not (= lambda!350141 lambda!350101))))

(declare-fun bs!1592528 () Bool)

(assert (= bs!1592528 (and b!6358023 d!1994166)))

(assert (=> bs!1592528 (not (= lambda!350141 lambda!350061))))

(assert (=> b!6358023 true))

(assert (=> b!6358023 true))

(declare-fun bs!1592529 () Bool)

(declare-fun b!6358031 () Bool)

(assert (= bs!1592529 (and b!6358031 b!6357396)))

(declare-fun lambda!350142 () Int)

(assert (=> bs!1592529 (not (= lambda!350142 lambda!350109))))

(declare-fun bs!1592530 () Bool)

(assert (= bs!1592530 (and b!6358031 b!6356395)))

(assert (=> bs!1592530 (not (= lambda!350142 lambda!349995))))

(declare-fun bs!1592531 () Bool)

(assert (= bs!1592531 (and b!6358031 d!1994502)))

(assert (=> bs!1592531 (not (= lambda!350142 lambda!350138))))

(declare-fun bs!1592532 () Bool)

(assert (= bs!1592532 (and b!6358031 b!6357721)))

(assert (=> bs!1592532 (not (= lambda!350142 lambda!350129))))

(declare-fun bs!1592533 () Bool)

(assert (= bs!1592533 (and b!6358031 b!6357057)))

(assert (=> bs!1592533 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 lt!2366179)) (= (regTwo!33042 (regTwo!33043 r!7292)) (regTwo!33042 lt!2366179))) (= lambda!350142 lambda!350078))))

(declare-fun bs!1592534 () Bool)

(assert (= bs!1592534 (and b!6358031 d!1994330)))

(assert (=> bs!1592534 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 r!7292)) (regTwo!33042 r!7292))) (= lambda!350142 lambda!350122))))

(declare-fun bs!1592535 () Bool)

(assert (= bs!1592535 (and b!6358031 b!6357049)))

(assert (=> bs!1592535 (not (= lambda!350142 lambda!350077))))

(declare-fun bs!1592536 () Bool)

(assert (= bs!1592536 (and b!6358031 b!6357250)))

(assert (=> bs!1592536 (not (= lambda!350142 lambda!350098))))

(declare-fun bs!1592537 () Bool)

(assert (= bs!1592537 (and b!6358031 b!6356387)))

(assert (=> bs!1592537 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 r!7292)) lt!2366179)) (= lambda!350142 lambda!349999))))

(declare-fun bs!1592538 () Bool)

(assert (= bs!1592538 (and b!6358031 d!1994310)))

(assert (=> bs!1592538 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 r!7292)) (regTwo!33042 r!7292))) (= lambda!350142 lambda!350113))))

(declare-fun bs!1592539 () Bool)

(assert (= bs!1592539 (and b!6358031 d!1994256)))

(assert (=> bs!1592539 (not (= lambda!350142 lambda!350102))))

(declare-fun bs!1592540 () Bool)

(assert (= bs!1592540 (and b!6358031 d!1994208)))

(assert (=> bs!1592540 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 r!7292)) lt!2366179)) (= lambda!350142 lambda!350097))))

(assert (=> bs!1592534 (not (= lambda!350142 lambda!350121))))

(declare-fun bs!1592541 () Bool)

(assert (= bs!1592541 (and b!6358031 b!6357617)))

(assert (=> bs!1592541 (not (= lambda!350142 lambda!350124))))

(declare-fun bs!1592542 () Bool)

(assert (= bs!1592542 (and b!6358031 b!6357910)))

(assert (=> bs!1592542 (not (= lambda!350142 lambda!350134))))

(assert (=> bs!1592530 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 r!7292)) (regTwo!33042 r!7292))) (= lambda!350142 lambda!349996))))

(assert (=> bs!1592538 (not (= lambda!350142 lambda!350112))))

(declare-fun bs!1592543 () Bool)

(assert (= bs!1592543 (and b!6358031 b!6357729)))

(assert (=> bs!1592543 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 (regOne!33043 lt!2366179))) (= (regTwo!33042 (regTwo!33043 r!7292)) (regTwo!33042 (regOne!33043 lt!2366179)))) (= lambda!350142 lambda!350130))))

(assert (=> bs!1592540 (not (= lambda!350142 lambda!350096))))

(assert (=> bs!1592537 (not (= lambda!350142 lambda!350000))))

(assert (=> bs!1592537 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 r!7292)) lt!2366173)) (= lambda!350142 lambda!350001))))

(declare-fun bs!1592544 () Bool)

(assert (= bs!1592544 (and b!6358031 b!6358023)))

(assert (=> bs!1592544 (not (= lambda!350142 lambda!350141))))

(declare-fun bs!1592545 () Bool)

(assert (= bs!1592545 (and b!6358031 b!6357258)))

(assert (=> bs!1592545 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 lt!2366170)) (= (regTwo!33042 (regTwo!33043 r!7292)) (regTwo!33042 lt!2366170))) (= lambda!350142 lambda!350099))))

(declare-fun bs!1592546 () Bool)

(assert (= bs!1592546 (and b!6358031 b!6357625)))

(assert (=> bs!1592546 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 (regTwo!33043 lt!2366179))) (= (regTwo!33042 (regTwo!33043 r!7292)) (regTwo!33042 (regTwo!33043 lt!2366179)))) (= lambda!350142 lambda!350125))))

(declare-fun bs!1592547 () Bool)

(assert (= bs!1592547 (and b!6358031 b!6357404)))

(assert (=> bs!1592547 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 r!7292)) (= (regTwo!33042 (regTwo!33043 r!7292)) (regTwo!33042 r!7292))) (= lambda!350142 lambda!350110))))

(declare-fun bs!1592548 () Bool)

(assert (= bs!1592548 (and b!6358031 d!1994308)))

(assert (=> bs!1592548 (not (= lambda!350142 lambda!350111))))

(assert (=> bs!1592537 (not (= lambda!350142 lambda!349998))))

(assert (=> bs!1592539 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regTwo!33043 r!7292)) lt!2366173)) (= lambda!350142 lambda!350103))))

(declare-fun bs!1592549 () Bool)

(assert (= bs!1592549 (and b!6358031 b!6357918)))

(assert (=> bs!1592549 (= (and (= (regOne!33042 (regTwo!33043 r!7292)) (regOne!33042 (regTwo!33043 lt!2366170))) (= (regTwo!33042 (regTwo!33043 r!7292)) (regTwo!33042 (regTwo!33043 lt!2366170)))) (= lambda!350142 lambda!350135))))

(declare-fun bs!1592550 () Bool)

(assert (= bs!1592550 (and b!6358031 d!1994242)))

(assert (=> bs!1592550 (not (= lambda!350142 lambda!350101))))

(declare-fun bs!1592551 () Bool)

(assert (= bs!1592551 (and b!6358031 d!1994166)))

(assert (=> bs!1592551 (not (= lambda!350142 lambda!350061))))

(assert (=> b!6358031 true))

(assert (=> b!6358031 true))

(declare-fun e!3860901 () Bool)

(declare-fun call!542267 () Bool)

(assert (=> b!6358023 (= e!3860901 call!542267)))

(declare-fun bm!542261 () Bool)

(declare-fun call!542266 () Bool)

(assert (=> bm!542261 (= call!542266 (isEmpty!37073 s!2326))))

(declare-fun b!6358024 () Bool)

(declare-fun e!3860902 () Bool)

(assert (=> b!6358024 (= e!3860902 call!542266)))

(declare-fun b!6358025 () Bool)

(declare-fun e!3860904 () Bool)

(assert (=> b!6358025 (= e!3860904 (= s!2326 (Cons!64972 (c!1156730 (regTwo!33043 r!7292)) Nil!64972)))))

(declare-fun b!6358026 () Bool)

(declare-fun e!3860905 () Bool)

(assert (=> b!6358026 (= e!3860905 (matchRSpec!3366 (regTwo!33043 (regTwo!33043 r!7292)) s!2326))))

(declare-fun b!6358027 () Bool)

(declare-fun res!2616175 () Bool)

(assert (=> b!6358027 (=> res!2616175 e!3860901)))

(assert (=> b!6358027 (= res!2616175 call!542266)))

(declare-fun e!3860899 () Bool)

(assert (=> b!6358027 (= e!3860899 e!3860901)))

(declare-fun bm!542262 () Bool)

(declare-fun c!1157202 () Bool)

(assert (=> bm!542262 (= call!542267 (Exists!3335 (ite c!1157202 lambda!350141 lambda!350142)))))

(declare-fun b!6358028 () Bool)

(declare-fun e!3860900 () Bool)

(assert (=> b!6358028 (= e!3860900 e!3860899)))

(assert (=> b!6358028 (= c!1157202 ((_ is Star!16265) (regTwo!33043 r!7292)))))

(declare-fun d!1994538 () Bool)

(declare-fun c!1157205 () Bool)

(assert (=> d!1994538 (= c!1157205 ((_ is EmptyExpr!16265) (regTwo!33043 r!7292)))))

(assert (=> d!1994538 (= (matchRSpec!3366 (regTwo!33043 r!7292) s!2326) e!3860902)))

(declare-fun b!6358029 () Bool)

(declare-fun c!1157204 () Bool)

(assert (=> b!6358029 (= c!1157204 ((_ is ElementMatch!16265) (regTwo!33043 r!7292)))))

(declare-fun e!3860903 () Bool)

(assert (=> b!6358029 (= e!3860903 e!3860904)))

(declare-fun b!6358030 () Bool)

(declare-fun c!1157203 () Bool)

(assert (=> b!6358030 (= c!1157203 ((_ is Union!16265) (regTwo!33043 r!7292)))))

(assert (=> b!6358030 (= e!3860904 e!3860900)))

(assert (=> b!6358031 (= e!3860899 call!542267)))

(declare-fun b!6358032 () Bool)

(assert (=> b!6358032 (= e!3860900 e!3860905)))

(declare-fun res!2616174 () Bool)

(assert (=> b!6358032 (= res!2616174 (matchRSpec!3366 (regOne!33043 (regTwo!33043 r!7292)) s!2326))))

(assert (=> b!6358032 (=> res!2616174 e!3860905)))

(declare-fun b!6358033 () Bool)

(assert (=> b!6358033 (= e!3860902 e!3860903)))

(declare-fun res!2616176 () Bool)

(assert (=> b!6358033 (= res!2616176 (not ((_ is EmptyLang!16265) (regTwo!33043 r!7292))))))

(assert (=> b!6358033 (=> (not res!2616176) (not e!3860903))))

(assert (= (and d!1994538 c!1157205) b!6358024))

(assert (= (and d!1994538 (not c!1157205)) b!6358033))

(assert (= (and b!6358033 res!2616176) b!6358029))

(assert (= (and b!6358029 c!1157204) b!6358025))

(assert (= (and b!6358029 (not c!1157204)) b!6358030))

(assert (= (and b!6358030 c!1157203) b!6358032))

(assert (= (and b!6358030 (not c!1157203)) b!6358028))

(assert (= (and b!6358032 (not res!2616174)) b!6358026))

(assert (= (and b!6358028 c!1157202) b!6358027))

(assert (= (and b!6358028 (not c!1157202)) b!6358031))

(assert (= (and b!6358027 (not res!2616175)) b!6358023))

(assert (= (or b!6358023 b!6358031) bm!542262))

(assert (= (or b!6358024 b!6358027) bm!542261))

(assert (=> bm!542261 m!7163190))

(declare-fun m!7164058 () Bool)

(assert (=> b!6358026 m!7164058))

(declare-fun m!7164060 () Bool)

(assert (=> bm!542262 m!7164060))

(declare-fun m!7164062 () Bool)

(assert (=> b!6358032 m!7164062))

(assert (=> b!6357399 d!1994538))

(assert (=> d!1994300 d!1994534))

(declare-fun bs!1592552 () Bool)

(declare-fun b!6358034 () Bool)

(assert (= bs!1592552 (and b!6358034 b!6357396)))

(declare-fun lambda!350143 () Int)

(assert (=> bs!1592552 (= (and (= (reg!16594 (regOne!33043 lt!2366170)) (reg!16594 r!7292)) (= (regOne!33043 lt!2366170) r!7292)) (= lambda!350143 lambda!350109))))

(declare-fun bs!1592553 () Bool)

(assert (= bs!1592553 (and b!6358034 b!6356395)))

(assert (=> bs!1592553 (not (= lambda!350143 lambda!349995))))

(declare-fun bs!1592554 () Bool)

(assert (= bs!1592554 (and b!6358034 d!1994502)))

(assert (=> bs!1592554 (not (= lambda!350143 lambda!350138))))

(declare-fun bs!1592555 () Bool)

(assert (= bs!1592555 (and b!6358034 b!6357721)))

(assert (=> bs!1592555 (= (and (= (reg!16594 (regOne!33043 lt!2366170)) (reg!16594 (regOne!33043 lt!2366179))) (= (regOne!33043 lt!2366170) (regOne!33043 lt!2366179))) (= lambda!350143 lambda!350129))))

(declare-fun bs!1592556 () Bool)

(assert (= bs!1592556 (and b!6358034 d!1994330)))

(assert (=> bs!1592556 (not (= lambda!350143 lambda!350122))))

(declare-fun bs!1592557 () Bool)

(assert (= bs!1592557 (and b!6358034 b!6357049)))

(assert (=> bs!1592557 (= (and (= (reg!16594 (regOne!33043 lt!2366170)) (reg!16594 lt!2366179)) (= (regOne!33043 lt!2366170) lt!2366179)) (= lambda!350143 lambda!350077))))

(declare-fun bs!1592558 () Bool)

(assert (= bs!1592558 (and b!6358034 b!6357250)))

(assert (=> bs!1592558 (= (and (= (reg!16594 (regOne!33043 lt!2366170)) (reg!16594 lt!2366170)) (= (regOne!33043 lt!2366170) lt!2366170)) (= lambda!350143 lambda!350098))))

(declare-fun bs!1592559 () Bool)

(assert (= bs!1592559 (and b!6358034 b!6356387)))

(assert (=> bs!1592559 (not (= lambda!350143 lambda!349999))))

(declare-fun bs!1592560 () Bool)

(assert (= bs!1592560 (and b!6358034 d!1994310)))

(assert (=> bs!1592560 (not (= lambda!350143 lambda!350113))))

(declare-fun bs!1592561 () Bool)

(assert (= bs!1592561 (and b!6358034 d!1994256)))

(assert (=> bs!1592561 (not (= lambda!350143 lambda!350102))))

(declare-fun bs!1592562 () Bool)

(assert (= bs!1592562 (and b!6358034 d!1994208)))

(assert (=> bs!1592562 (not (= lambda!350143 lambda!350097))))

(assert (=> bs!1592556 (not (= lambda!350143 lambda!350121))))

(declare-fun bs!1592563 () Bool)

(assert (= bs!1592563 (and b!6358034 b!6357617)))

(assert (=> bs!1592563 (= (and (= (reg!16594 (regOne!33043 lt!2366170)) (reg!16594 (regTwo!33043 lt!2366179))) (= (regOne!33043 lt!2366170) (regTwo!33043 lt!2366179))) (= lambda!350143 lambda!350124))))

(declare-fun bs!1592564 () Bool)

(assert (= bs!1592564 (and b!6358034 b!6357910)))

(assert (=> bs!1592564 (= (and (= (reg!16594 (regOne!33043 lt!2366170)) (reg!16594 (regTwo!33043 lt!2366170))) (= (regOne!33043 lt!2366170) (regTwo!33043 lt!2366170))) (= lambda!350143 lambda!350134))))

(assert (=> bs!1592553 (not (= lambda!350143 lambda!349996))))

(assert (=> bs!1592560 (not (= lambda!350143 lambda!350112))))

(declare-fun bs!1592565 () Bool)

(assert (= bs!1592565 (and b!6358034 b!6357729)))

(assert (=> bs!1592565 (not (= lambda!350143 lambda!350130))))

(assert (=> bs!1592562 (not (= lambda!350143 lambda!350096))))

(assert (=> bs!1592559 (not (= lambda!350143 lambda!350000))))

(declare-fun bs!1592566 () Bool)

(assert (= bs!1592566 (and b!6358034 b!6358031)))

(assert (=> bs!1592566 (not (= lambda!350143 lambda!350142))))

(declare-fun bs!1592567 () Bool)

(assert (= bs!1592567 (and b!6358034 b!6357057)))

(assert (=> bs!1592567 (not (= lambda!350143 lambda!350078))))

(assert (=> bs!1592559 (not (= lambda!350143 lambda!350001))))

(declare-fun bs!1592568 () Bool)

(assert (= bs!1592568 (and b!6358034 b!6358023)))

(assert (=> bs!1592568 (= (and (= (reg!16594 (regOne!33043 lt!2366170)) (reg!16594 (regTwo!33043 r!7292))) (= (regOne!33043 lt!2366170) (regTwo!33043 r!7292))) (= lambda!350143 lambda!350141))))

(declare-fun bs!1592569 () Bool)

(assert (= bs!1592569 (and b!6358034 b!6357258)))

(assert (=> bs!1592569 (not (= lambda!350143 lambda!350099))))

(declare-fun bs!1592570 () Bool)

(assert (= bs!1592570 (and b!6358034 b!6357625)))

(assert (=> bs!1592570 (not (= lambda!350143 lambda!350125))))

(declare-fun bs!1592571 () Bool)

(assert (= bs!1592571 (and b!6358034 b!6357404)))

(assert (=> bs!1592571 (not (= lambda!350143 lambda!350110))))

(declare-fun bs!1592572 () Bool)

(assert (= bs!1592572 (and b!6358034 d!1994308)))

(assert (=> bs!1592572 (not (= lambda!350143 lambda!350111))))

(assert (=> bs!1592559 (not (= lambda!350143 lambda!349998))))

(assert (=> bs!1592561 (not (= lambda!350143 lambda!350103))))

(declare-fun bs!1592573 () Bool)

(assert (= bs!1592573 (and b!6358034 b!6357918)))

(assert (=> bs!1592573 (not (= lambda!350143 lambda!350135))))

(declare-fun bs!1592574 () Bool)

(assert (= bs!1592574 (and b!6358034 d!1994242)))

(assert (=> bs!1592574 (not (= lambda!350143 lambda!350101))))

(declare-fun bs!1592575 () Bool)

(assert (= bs!1592575 (and b!6358034 d!1994166)))

(assert (=> bs!1592575 (not (= lambda!350143 lambda!350061))))

(assert (=> b!6358034 true))

(assert (=> b!6358034 true))

(declare-fun bs!1592576 () Bool)

(declare-fun b!6358042 () Bool)

(assert (= bs!1592576 (and b!6358042 b!6357396)))

(declare-fun lambda!350144 () Int)

(assert (=> bs!1592576 (not (= lambda!350144 lambda!350109))))

(declare-fun bs!1592577 () Bool)

(assert (= bs!1592577 (and b!6358042 b!6356395)))

(assert (=> bs!1592577 (not (= lambda!350144 lambda!349995))))

(declare-fun bs!1592578 () Bool)

(assert (= bs!1592578 (and b!6358042 d!1994502)))

(assert (=> bs!1592578 (not (= lambda!350144 lambda!350138))))

(declare-fun bs!1592579 () Bool)

(assert (= bs!1592579 (and b!6358042 b!6357721)))

(assert (=> bs!1592579 (not (= lambda!350144 lambda!350129))))

(declare-fun bs!1592580 () Bool)

(assert (= bs!1592580 (and b!6358042 d!1994330)))

(assert (=> bs!1592580 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 r!7292))) (= lambda!350144 lambda!350122))))

(declare-fun bs!1592581 () Bool)

(assert (= bs!1592581 (and b!6358042 b!6357049)))

(assert (=> bs!1592581 (not (= lambda!350144 lambda!350077))))

(declare-fun bs!1592582 () Bool)

(assert (= bs!1592582 (and b!6358042 b!6357250)))

(assert (=> bs!1592582 (not (= lambda!350144 lambda!350098))))

(declare-fun bs!1592583 () Bool)

(assert (= bs!1592583 (and b!6358042 b!6356387)))

(assert (=> bs!1592583 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 lt!2366170)) lt!2366179)) (= lambda!350144 lambda!349999))))

(declare-fun bs!1592584 () Bool)

(assert (= bs!1592584 (and b!6358042 d!1994310)))

(assert (=> bs!1592584 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 r!7292))) (= lambda!350144 lambda!350113))))

(declare-fun bs!1592585 () Bool)

(assert (= bs!1592585 (and b!6358042 d!1994256)))

(assert (=> bs!1592585 (not (= lambda!350144 lambda!350102))))

(declare-fun bs!1592586 () Bool)

(assert (= bs!1592586 (and b!6358042 d!1994208)))

(assert (=> bs!1592586 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 lt!2366170)) lt!2366179)) (= lambda!350144 lambda!350097))))

(assert (=> bs!1592580 (not (= lambda!350144 lambda!350121))))

(declare-fun bs!1592587 () Bool)

(assert (= bs!1592587 (and b!6358042 b!6357617)))

(assert (=> bs!1592587 (not (= lambda!350144 lambda!350124))))

(declare-fun bs!1592588 () Bool)

(assert (= bs!1592588 (and b!6358042 b!6357910)))

(assert (=> bs!1592588 (not (= lambda!350144 lambda!350134))))

(assert (=> bs!1592577 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 r!7292))) (= lambda!350144 lambda!349996))))

(assert (=> bs!1592584 (not (= lambda!350144 lambda!350112))))

(declare-fun bs!1592589 () Bool)

(assert (= bs!1592589 (and b!6358042 b!6357729)))

(assert (=> bs!1592589 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 (regOne!33043 lt!2366179))) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 (regOne!33043 lt!2366179)))) (= lambda!350144 lambda!350130))))

(assert (=> bs!1592586 (not (= lambda!350144 lambda!350096))))

(assert (=> bs!1592583 (not (= lambda!350144 lambda!350000))))

(declare-fun bs!1592590 () Bool)

(assert (= bs!1592590 (and b!6358042 b!6358031)))

(assert (=> bs!1592590 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 (regTwo!33043 r!7292))) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 (regTwo!33043 r!7292)))) (= lambda!350144 lambda!350142))))

(declare-fun bs!1592591 () Bool)

(assert (= bs!1592591 (and b!6358042 b!6357057)))

(assert (=> bs!1592591 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 lt!2366179)) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 lt!2366179))) (= lambda!350144 lambda!350078))))

(assert (=> bs!1592583 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 lt!2366170)) lt!2366173)) (= lambda!350144 lambda!350001))))

(declare-fun bs!1592592 () Bool)

(assert (= bs!1592592 (and b!6358042 b!6358023)))

(assert (=> bs!1592592 (not (= lambda!350144 lambda!350141))))

(declare-fun bs!1592593 () Bool)

(assert (= bs!1592593 (and b!6358042 b!6357258)))

(assert (=> bs!1592593 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 lt!2366170)) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 lt!2366170))) (= lambda!350144 lambda!350099))))

(declare-fun bs!1592594 () Bool)

(assert (= bs!1592594 (and b!6358042 b!6357625)))

(assert (=> bs!1592594 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 (regTwo!33043 lt!2366179))) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 (regTwo!33043 lt!2366179)))) (= lambda!350144 lambda!350125))))

(declare-fun bs!1592595 () Bool)

(assert (= bs!1592595 (and b!6358042 b!6357404)))

(assert (=> bs!1592595 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 r!7292))) (= lambda!350144 lambda!350110))))

(declare-fun bs!1592596 () Bool)

(assert (= bs!1592596 (and b!6358042 d!1994308)))

(assert (=> bs!1592596 (not (= lambda!350144 lambda!350111))))

(declare-fun bs!1592597 () Bool)

(assert (= bs!1592597 (and b!6358042 b!6358034)))

(assert (=> bs!1592597 (not (= lambda!350144 lambda!350143))))

(assert (=> bs!1592583 (not (= lambda!350144 lambda!349998))))

(assert (=> bs!1592585 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 lt!2366170)) lt!2366173)) (= lambda!350144 lambda!350103))))

(declare-fun bs!1592598 () Bool)

(assert (= bs!1592598 (and b!6358042 b!6357918)))

(assert (=> bs!1592598 (= (and (= (regOne!33042 (regOne!33043 lt!2366170)) (regOne!33042 (regTwo!33043 lt!2366170))) (= (regTwo!33042 (regOne!33043 lt!2366170)) (regTwo!33042 (regTwo!33043 lt!2366170)))) (= lambda!350144 lambda!350135))))

(declare-fun bs!1592599 () Bool)

(assert (= bs!1592599 (and b!6358042 d!1994242)))

(assert (=> bs!1592599 (not (= lambda!350144 lambda!350101))))

(declare-fun bs!1592600 () Bool)

(assert (= bs!1592600 (and b!6358042 d!1994166)))

(assert (=> bs!1592600 (not (= lambda!350144 lambda!350061))))

(assert (=> b!6358042 true))

(assert (=> b!6358042 true))

(declare-fun e!3860908 () Bool)

(declare-fun call!542269 () Bool)

(assert (=> b!6358034 (= e!3860908 call!542269)))

(declare-fun bm!542263 () Bool)

(declare-fun call!542268 () Bool)

(assert (=> bm!542263 (= call!542268 (isEmpty!37073 s!2326))))

(declare-fun b!6358035 () Bool)

(declare-fun e!3860909 () Bool)

(assert (=> b!6358035 (= e!3860909 call!542268)))

(declare-fun b!6358036 () Bool)

(declare-fun e!3860911 () Bool)

(assert (=> b!6358036 (= e!3860911 (= s!2326 (Cons!64972 (c!1156730 (regOne!33043 lt!2366170)) Nil!64972)))))

(declare-fun b!6358037 () Bool)

(declare-fun e!3860912 () Bool)

(assert (=> b!6358037 (= e!3860912 (matchRSpec!3366 (regTwo!33043 (regOne!33043 lt!2366170)) s!2326))))

(declare-fun b!6358038 () Bool)

(declare-fun res!2616178 () Bool)

(assert (=> b!6358038 (=> res!2616178 e!3860908)))

(assert (=> b!6358038 (= res!2616178 call!542268)))

(declare-fun e!3860906 () Bool)

(assert (=> b!6358038 (= e!3860906 e!3860908)))

(declare-fun c!1157206 () Bool)

(declare-fun bm!542264 () Bool)

(assert (=> bm!542264 (= call!542269 (Exists!3335 (ite c!1157206 lambda!350143 lambda!350144)))))

(declare-fun b!6358039 () Bool)

(declare-fun e!3860907 () Bool)

(assert (=> b!6358039 (= e!3860907 e!3860906)))

(assert (=> b!6358039 (= c!1157206 ((_ is Star!16265) (regOne!33043 lt!2366170)))))

(declare-fun d!1994540 () Bool)

(declare-fun c!1157209 () Bool)

(assert (=> d!1994540 (= c!1157209 ((_ is EmptyExpr!16265) (regOne!33043 lt!2366170)))))

(assert (=> d!1994540 (= (matchRSpec!3366 (regOne!33043 lt!2366170) s!2326) e!3860909)))

(declare-fun b!6358040 () Bool)

(declare-fun c!1157208 () Bool)

(assert (=> b!6358040 (= c!1157208 ((_ is ElementMatch!16265) (regOne!33043 lt!2366170)))))

(declare-fun e!3860910 () Bool)

(assert (=> b!6358040 (= e!3860910 e!3860911)))

(declare-fun b!6358041 () Bool)

(declare-fun c!1157207 () Bool)

(assert (=> b!6358041 (= c!1157207 ((_ is Union!16265) (regOne!33043 lt!2366170)))))

(assert (=> b!6358041 (= e!3860911 e!3860907)))

(assert (=> b!6358042 (= e!3860906 call!542269)))

(declare-fun b!6358043 () Bool)

(assert (=> b!6358043 (= e!3860907 e!3860912)))

(declare-fun res!2616177 () Bool)

(assert (=> b!6358043 (= res!2616177 (matchRSpec!3366 (regOne!33043 (regOne!33043 lt!2366170)) s!2326))))

(assert (=> b!6358043 (=> res!2616177 e!3860912)))

(declare-fun b!6358044 () Bool)

(assert (=> b!6358044 (= e!3860909 e!3860910)))

(declare-fun res!2616179 () Bool)

(assert (=> b!6358044 (= res!2616179 (not ((_ is EmptyLang!16265) (regOne!33043 lt!2366170))))))

(assert (=> b!6358044 (=> (not res!2616179) (not e!3860910))))

(assert (= (and d!1994540 c!1157209) b!6358035))

(assert (= (and d!1994540 (not c!1157209)) b!6358044))

(assert (= (and b!6358044 res!2616179) b!6358040))

(assert (= (and b!6358040 c!1157208) b!6358036))

(assert (= (and b!6358040 (not c!1157208)) b!6358041))

(assert (= (and b!6358041 c!1157207) b!6358043))

(assert (= (and b!6358041 (not c!1157207)) b!6358039))

(assert (= (and b!6358043 (not res!2616177)) b!6358037))

(assert (= (and b!6358039 c!1157206) b!6358038))

(assert (= (and b!6358039 (not c!1157206)) b!6358042))

(assert (= (and b!6358038 (not res!2616178)) b!6358034))

(assert (= (or b!6358034 b!6358042) bm!542264))

(assert (= (or b!6358035 b!6358038) bm!542263))

(assert (=> bm!542263 m!7163190))

(declare-fun m!7164064 () Bool)

(assert (=> b!6358037 m!7164064))

(declare-fun m!7164066 () Bool)

(assert (=> bm!542264 m!7164066))

(declare-fun m!7164068 () Bool)

(assert (=> b!6358043 m!7164068))

(assert (=> b!6357259 d!1994540))

(declare-fun b!6358046 () Bool)

(declare-fun e!3860913 () List!65096)

(assert (=> b!6358046 (= e!3860913 (Cons!64972 (h!71420 (_1!36547 (get!22482 lt!2366378))) (++!14334 (t!378686 (_1!36547 (get!22482 lt!2366378))) (_2!36547 (get!22482 lt!2366378)))))))

(declare-fun b!6358047 () Bool)

(declare-fun res!2616181 () Bool)

(declare-fun e!3860914 () Bool)

(assert (=> b!6358047 (=> (not res!2616181) (not e!3860914))))

(declare-fun lt!2366419 () List!65096)

(assert (=> b!6358047 (= res!2616181 (= (size!40345 lt!2366419) (+ (size!40345 (_1!36547 (get!22482 lt!2366378))) (size!40345 (_2!36547 (get!22482 lt!2366378))))))))

(declare-fun b!6358045 () Bool)

(assert (=> b!6358045 (= e!3860913 (_2!36547 (get!22482 lt!2366378)))))

(declare-fun b!6358048 () Bool)

(assert (=> b!6358048 (= e!3860914 (or (not (= (_2!36547 (get!22482 lt!2366378)) Nil!64972)) (= lt!2366419 (_1!36547 (get!22482 lt!2366378)))))))

(declare-fun d!1994542 () Bool)

(assert (=> d!1994542 e!3860914))

(declare-fun res!2616180 () Bool)

(assert (=> d!1994542 (=> (not res!2616180) (not e!3860914))))

(assert (=> d!1994542 (= res!2616180 (= (content!12267 lt!2366419) ((_ map or) (content!12267 (_1!36547 (get!22482 lt!2366378))) (content!12267 (_2!36547 (get!22482 lt!2366378))))))))

(assert (=> d!1994542 (= lt!2366419 e!3860913)))

(declare-fun c!1157210 () Bool)

(assert (=> d!1994542 (= c!1157210 ((_ is Nil!64972) (_1!36547 (get!22482 lt!2366378))))))

(assert (=> d!1994542 (= (++!14334 (_1!36547 (get!22482 lt!2366378)) (_2!36547 (get!22482 lt!2366378))) lt!2366419)))

(assert (= (and d!1994542 c!1157210) b!6358045))

(assert (= (and d!1994542 (not c!1157210)) b!6358046))

(assert (= (and d!1994542 res!2616180) b!6358047))

(assert (= (and b!6358047 res!2616181) b!6358048))

(declare-fun m!7164070 () Bool)

(assert (=> b!6358046 m!7164070))

(declare-fun m!7164072 () Bool)

(assert (=> b!6358047 m!7164072))

(declare-fun m!7164074 () Bool)

(assert (=> b!6358047 m!7164074))

(declare-fun m!7164076 () Bool)

(assert (=> b!6358047 m!7164076))

(declare-fun m!7164078 () Bool)

(assert (=> d!1994542 m!7164078))

(declare-fun m!7164080 () Bool)

(assert (=> d!1994542 m!7164080))

(declare-fun m!7164082 () Bool)

(assert (=> d!1994542 m!7164082))

(assert (=> b!6357459 d!1994542))

(declare-fun d!1994544 () Bool)

(assert (=> d!1994544 (= (get!22482 lt!2366378) (v!52324 lt!2366378))))

(assert (=> b!6357459 d!1994544))

(declare-fun e!3860921 () Bool)

(declare-fun b!6358049 () Bool)

(assert (=> b!6358049 (= e!3860921 (not (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326))))))))

(declare-fun b!6358050 () Bool)

(declare-fun res!2616186 () Bool)

(declare-fun e!3860920 () Bool)

(assert (=> b!6358050 (=> (not res!2616186) (not e!3860920))))

(declare-fun call!542270 () Bool)

(assert (=> b!6358050 (= res!2616186 (not call!542270))))

(declare-fun b!6358051 () Bool)

(declare-fun e!3860918 () Bool)

(declare-fun lt!2366420 () Bool)

(assert (=> b!6358051 (= e!3860918 (= lt!2366420 call!542270))))

(declare-fun bm!542265 () Bool)

(assert (=> bm!542265 (= call!542270 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun b!6358052 () Bool)

(declare-fun e!3860917 () Bool)

(declare-fun e!3860915 () Bool)

(assert (=> b!6358052 (= e!3860917 e!3860915)))

(declare-fun res!2616185 () Bool)

(assert (=> b!6358052 (=> (not res!2616185) (not e!3860915))))

(assert (=> b!6358052 (= res!2616185 (not lt!2366420))))

(declare-fun b!6358053 () Bool)

(assert (=> b!6358053 (= e!3860920 (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326)))))))

(declare-fun b!6358054 () Bool)

(declare-fun e!3860916 () Bool)

(assert (=> b!6358054 (= e!3860916 (not lt!2366420))))

(declare-fun b!6358055 () Bool)

(assert (=> b!6358055 (= e!3860915 e!3860921)))

(declare-fun res!2616187 () Bool)

(assert (=> b!6358055 (=> res!2616187 e!3860921)))

(assert (=> b!6358055 (= res!2616187 call!542270)))

(declare-fun b!6358056 () Bool)

(assert (=> b!6358056 (= e!3860918 e!3860916)))

(declare-fun c!1157211 () Bool)

(assert (=> b!6358056 (= c!1157211 ((_ is EmptyLang!16265) (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326))))))

(declare-fun e!3860919 () Bool)

(declare-fun b!6358057 () Bool)

(assert (=> b!6358057 (= e!3860919 (nullable!6258 (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326))))))

(declare-fun b!6358058 () Bool)

(declare-fun res!2616189 () Bool)

(assert (=> b!6358058 (=> res!2616189 e!3860917)))

(assert (=> b!6358058 (= res!2616189 (not ((_ is ElementMatch!16265) (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326)))))))

(assert (=> b!6358058 (= e!3860916 e!3860917)))

(declare-fun b!6358059 () Bool)

(declare-fun res!2616184 () Bool)

(assert (=> b!6358059 (=> res!2616184 e!3860921)))

(assert (=> b!6358059 (= res!2616184 (not (isEmpty!37073 (tail!12108 (tail!12108 s!2326)))))))

(declare-fun b!6358061 () Bool)

(declare-fun res!2616182 () Bool)

(assert (=> b!6358061 (=> res!2616182 e!3860917)))

(assert (=> b!6358061 (= res!2616182 e!3860920)))

(declare-fun res!2616188 () Bool)

(assert (=> b!6358061 (=> (not res!2616188) (not e!3860920))))

(assert (=> b!6358061 (= res!2616188 lt!2366420)))

(declare-fun b!6358062 () Bool)

(declare-fun res!2616183 () Bool)

(assert (=> b!6358062 (=> (not res!2616183) (not e!3860920))))

(assert (=> b!6358062 (= res!2616183 (isEmpty!37073 (tail!12108 (tail!12108 s!2326))))))

(declare-fun d!1994546 () Bool)

(assert (=> d!1994546 e!3860918))

(declare-fun c!1157213 () Bool)

(assert (=> d!1994546 (= c!1157213 ((_ is EmptyExpr!16265) (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326))))))

(assert (=> d!1994546 (= lt!2366420 e!3860919)))

(declare-fun c!1157212 () Bool)

(assert (=> d!1994546 (= c!1157212 (isEmpty!37073 (tail!12108 s!2326)))))

(assert (=> d!1994546 (validRegex!8001 (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326)))))

(assert (=> d!1994546 (= (matchR!8448 (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326)) (tail!12108 s!2326)) lt!2366420)))

(declare-fun b!6358060 () Bool)

(assert (=> b!6358060 (= e!3860919 (matchR!8448 (derivativeStep!4970 (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326)) (head!13023 (tail!12108 s!2326))) (tail!12108 (tail!12108 s!2326))))))

(assert (= (and d!1994546 c!1157212) b!6358057))

(assert (= (and d!1994546 (not c!1157212)) b!6358060))

(assert (= (and d!1994546 c!1157213) b!6358051))

(assert (= (and d!1994546 (not c!1157213)) b!6358056))

(assert (= (and b!6358056 c!1157211) b!6358054))

(assert (= (and b!6358056 (not c!1157211)) b!6358058))

(assert (= (and b!6358058 (not res!2616189)) b!6358061))

(assert (= (and b!6358061 res!2616188) b!6358050))

(assert (= (and b!6358050 res!2616186) b!6358062))

(assert (= (and b!6358062 res!2616183) b!6358053))

(assert (= (and b!6358061 (not res!2616182)) b!6358052))

(assert (= (and b!6358052 res!2616185) b!6358055))

(assert (= (and b!6358055 (not res!2616187)) b!6358059))

(assert (= (and b!6358059 (not res!2616184)) b!6358049))

(assert (= (or b!6358051 b!6358050 b!6358055) bm!542265))

(assert (=> b!6358059 m!7163356))

(assert (=> b!6358059 m!7163880))

(assert (=> b!6358059 m!7163880))

(assert (=> b!6358059 m!7163892))

(assert (=> b!6358060 m!7163356))

(assert (=> b!6358060 m!7163876))

(assert (=> b!6358060 m!7163446))

(assert (=> b!6358060 m!7163876))

(declare-fun m!7164084 () Bool)

(assert (=> b!6358060 m!7164084))

(assert (=> b!6358060 m!7163356))

(assert (=> b!6358060 m!7163880))

(assert (=> b!6358060 m!7164084))

(assert (=> b!6358060 m!7163880))

(declare-fun m!7164086 () Bool)

(assert (=> b!6358060 m!7164086))

(assert (=> b!6358062 m!7163356))

(assert (=> b!6358062 m!7163880))

(assert (=> b!6358062 m!7163880))

(assert (=> b!6358062 m!7163892))

(assert (=> b!6358053 m!7163356))

(assert (=> b!6358053 m!7163876))

(assert (=> b!6358057 m!7163446))

(declare-fun m!7164088 () Bool)

(assert (=> b!6358057 m!7164088))

(assert (=> d!1994546 m!7163356))

(assert (=> d!1994546 m!7163358))

(assert (=> d!1994546 m!7163446))

(declare-fun m!7164090 () Bool)

(assert (=> d!1994546 m!7164090))

(assert (=> bm!542265 m!7163356))

(assert (=> bm!542265 m!7163358))

(assert (=> b!6358049 m!7163356))

(assert (=> b!6358049 m!7163876))

(assert (=> b!6357363 d!1994546))

(declare-fun b!6358063 () Bool)

(declare-fun e!3860924 () Regex!16265)

(declare-fun call!542272 () Regex!16265)

(declare-fun call!542271 () Regex!16265)

(assert (=> b!6358063 (= e!3860924 (Union!16265 call!542272 call!542271))))

(declare-fun e!3860922 () Regex!16265)

(declare-fun call!542273 () Regex!16265)

(declare-fun b!6358064 () Bool)

(assert (=> b!6358064 (= e!3860922 (Concat!25110 call!542273 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(declare-fun b!6358065 () Bool)

(assert (=> b!6358065 (= e!3860924 e!3860922)))

(declare-fun c!1157217 () Bool)

(assert (=> b!6358065 (= c!1157217 ((_ is Star!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(declare-fun b!6358066 () Bool)

(declare-fun e!3860923 () Regex!16265)

(assert (=> b!6358066 (= e!3860923 EmptyLang!16265)))

(declare-fun b!6358067 () Bool)

(declare-fun e!3860926 () Regex!16265)

(assert (=> b!6358067 (= e!3860926 (ite (= (head!13023 s!2326) (c!1156730 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))) EmptyExpr!16265 EmptyLang!16265))))

(declare-fun call!542274 () Regex!16265)

(declare-fun b!6358068 () Bool)

(declare-fun e!3860925 () Regex!16265)

(assert (=> b!6358068 (= e!3860925 (Union!16265 (Concat!25110 call!542274 (regTwo!33042 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))) EmptyLang!16265))))

(declare-fun bm!542266 () Bool)

(assert (=> bm!542266 (= call!542273 call!542271)))

(declare-fun bm!542267 () Bool)

(assert (=> bm!542267 (= call!542274 call!542273)))

(declare-fun b!6358069 () Bool)

(assert (=> b!6358069 (= e!3860923 e!3860926)))

(declare-fun c!1157216 () Bool)

(assert (=> b!6358069 (= c!1157216 ((_ is ElementMatch!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(declare-fun d!1994548 () Bool)

(declare-fun lt!2366421 () Regex!16265)

(assert (=> d!1994548 (validRegex!8001 lt!2366421)))

(assert (=> d!1994548 (= lt!2366421 e!3860923)))

(declare-fun c!1157215 () Bool)

(assert (=> d!1994548 (= c!1157215 (or ((_ is EmptyExpr!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) ((_ is EmptyLang!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))))))

(assert (=> d!1994548 (validRegex!8001 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))))

(assert (=> d!1994548 (= (derivativeStep!4970 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)) (head!13023 s!2326)) lt!2366421)))

(declare-fun b!6358070 () Bool)

(declare-fun c!1157218 () Bool)

(assert (=> b!6358070 (= c!1157218 ((_ is Union!16265) (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(assert (=> b!6358070 (= e!3860926 e!3860924)))

(declare-fun b!6358071 () Bool)

(declare-fun c!1157214 () Bool)

(assert (=> b!6358071 (= c!1157214 (nullable!6258 (regOne!33042 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))))))

(assert (=> b!6358071 (= e!3860922 e!3860925)))

(declare-fun b!6358072 () Bool)

(assert (=> b!6358072 (= e!3860925 (Union!16265 (Concat!25110 call!542272 (regTwo!33042 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))) call!542274))))

(declare-fun bm!542268 () Bool)

(assert (=> bm!542268 (= call!542271 (derivativeStep!4970 (ite c!1157218 (regTwo!33043 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) (ite c!1157217 (reg!16594 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) (ite c!1157214 (regTwo!33042 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) (regOne!33042 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))))) (head!13023 s!2326)))))

(declare-fun bm!542269 () Bool)

(assert (=> bm!542269 (= call!542272 (derivativeStep!4970 (ite c!1157218 (regOne!33043 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) (regOne!33042 (Concat!25110 lt!2366185 (regTwo!33042 r!7292)))) (head!13023 s!2326)))))

(assert (= (and d!1994548 c!1157215) b!6358066))

(assert (= (and d!1994548 (not c!1157215)) b!6358069))

(assert (= (and b!6358069 c!1157216) b!6358067))

(assert (= (and b!6358069 (not c!1157216)) b!6358070))

(assert (= (and b!6358070 c!1157218) b!6358063))

(assert (= (and b!6358070 (not c!1157218)) b!6358065))

(assert (= (and b!6358065 c!1157217) b!6358064))

(assert (= (and b!6358065 (not c!1157217)) b!6358071))

(assert (= (and b!6358071 c!1157214) b!6358072))

(assert (= (and b!6358071 (not c!1157214)) b!6358068))

(assert (= (or b!6358072 b!6358068) bm!542267))

(assert (= (or b!6358064 bm!542267) bm!542266))

(assert (= (or b!6358063 bm!542266) bm!542268))

(assert (= (or b!6358063 b!6358072) bm!542269))

(declare-fun m!7164092 () Bool)

(assert (=> d!1994548 m!7164092))

(assert (=> d!1994548 m!7163452))

(declare-fun m!7164094 () Bool)

(assert (=> b!6358071 m!7164094))

(assert (=> bm!542268 m!7163360))

(declare-fun m!7164096 () Bool)

(assert (=> bm!542268 m!7164096))

(assert (=> bm!542269 m!7163360))

(declare-fun m!7164098 () Bool)

(assert (=> bm!542269 m!7164098))

(assert (=> b!6357363 d!1994548))

(assert (=> b!6357363 d!1994348))

(assert (=> b!6357363 d!1994342))

(declare-fun d!1994550 () Bool)

(declare-fun res!2616190 () Bool)

(declare-fun e!3860927 () Bool)

(assert (=> d!1994550 (=> res!2616190 e!3860927)))

(assert (=> d!1994550 (= res!2616190 ((_ is Nil!64971) lt!2366165))))

(assert (=> d!1994550 (= (forall!15442 lt!2366165 lambda!350048) e!3860927)))

(declare-fun b!6358073 () Bool)

(declare-fun e!3860928 () Bool)

(assert (=> b!6358073 (= e!3860927 e!3860928)))

(declare-fun res!2616191 () Bool)

(assert (=> b!6358073 (=> (not res!2616191) (not e!3860928))))

(assert (=> b!6358073 (= res!2616191 (dynLambda!25766 lambda!350048 (h!71419 lt!2366165)))))

(declare-fun b!6358074 () Bool)

(assert (=> b!6358074 (= e!3860928 (forall!15442 (t!378685 lt!2366165) lambda!350048))))

(assert (= (and d!1994550 (not res!2616190)) b!6358073))

(assert (= (and b!6358073 res!2616191) b!6358074))

(declare-fun b_lambda!241693 () Bool)

(assert (=> (not b_lambda!241693) (not b!6358073)))

(declare-fun m!7164100 () Bool)

(assert (=> b!6358073 m!7164100))

(declare-fun m!7164102 () Bool)

(assert (=> b!6358074 m!7164102))

(assert (=> b!6356816 d!1994550))

(assert (=> bs!1592278 d!1994088))

(assert (=> bm!542159 d!1994362))

(assert (=> d!1994272 d!1994534))

(assert (=> d!1994296 d!1994534))

(declare-fun d!1994552 () Bool)

(declare-fun c!1157222 () Bool)

(assert (=> d!1994552 (= c!1157222 (and ((_ is ElementMatch!16265) (h!71418 (exprs!6149 lt!2366194))) (= (c!1156730 (h!71418 (exprs!6149 lt!2366194))) (h!71420 s!2326))))))

(declare-fun e!3860932 () (InoxSet Context!11298))

(assert (=> d!1994552 (= (derivationStepZipperDown!1513 (h!71418 (exprs!6149 lt!2366194)) (Context!11299 (t!378684 (exprs!6149 lt!2366194))) (h!71420 s!2326)) e!3860932)))

(declare-fun b!6358075 () Bool)

(declare-fun c!1157220 () Bool)

(assert (=> b!6358075 (= c!1157220 ((_ is Star!16265) (h!71418 (exprs!6149 lt!2366194))))))

(declare-fun e!3860929 () (InoxSet Context!11298))

(declare-fun e!3860931 () (InoxSet Context!11298))

(assert (=> b!6358075 (= e!3860929 e!3860931)))

(declare-fun bm!542270 () Bool)

(declare-fun call!542278 () (InoxSet Context!11298))

(declare-fun call!542275 () (InoxSet Context!11298))

(assert (=> bm!542270 (= call!542278 call!542275)))

(declare-fun b!6358076 () Bool)

(declare-fun e!3860933 () (InoxSet Context!11298))

(assert (=> b!6358076 (= e!3860932 e!3860933)))

(declare-fun c!1157219 () Bool)

(assert (=> b!6358076 (= c!1157219 ((_ is Union!16265) (h!71418 (exprs!6149 lt!2366194))))))

(declare-fun b!6358077 () Bool)

(assert (=> b!6358077 (= e!3860929 call!542278)))

(declare-fun call!542279 () List!65094)

(declare-fun c!1157221 () Bool)

(declare-fun call!542276 () (InoxSet Context!11298))

(declare-fun bm!542271 () Bool)

(declare-fun c!1157223 () Bool)

(assert (=> bm!542271 (= call!542276 (derivationStepZipperDown!1513 (ite c!1157219 (regTwo!33043 (h!71418 (exprs!6149 lt!2366194))) (ite c!1157221 (regTwo!33042 (h!71418 (exprs!6149 lt!2366194))) (ite c!1157223 (regOne!33042 (h!71418 (exprs!6149 lt!2366194))) (reg!16594 (h!71418 (exprs!6149 lt!2366194)))))) (ite (or c!1157219 c!1157221) (Context!11299 (t!378684 (exprs!6149 lt!2366194))) (Context!11299 call!542279)) (h!71420 s!2326)))))

(declare-fun b!6358078 () Bool)

(declare-fun call!542277 () (InoxSet Context!11298))

(assert (=> b!6358078 (= e!3860933 ((_ map or) call!542277 call!542276))))

(declare-fun b!6358079 () Bool)

(declare-fun e!3860930 () (InoxSet Context!11298))

(assert (=> b!6358079 (= e!3860930 ((_ map or) call!542277 call!542275))))

(declare-fun b!6358080 () Bool)

(assert (=> b!6358080 (= e!3860932 (store ((as const (Array Context!11298 Bool)) false) (Context!11299 (t!378684 (exprs!6149 lt!2366194))) true))))

(declare-fun b!6358081 () Bool)

(declare-fun e!3860934 () Bool)

(assert (=> b!6358081 (= e!3860934 (nullable!6258 (regOne!33042 (h!71418 (exprs!6149 lt!2366194)))))))

(declare-fun bm!542272 () Bool)

(assert (=> bm!542272 (= call!542275 call!542276)))

(declare-fun bm!542273 () Bool)

(declare-fun call!542280 () List!65094)

(assert (=> bm!542273 (= call!542280 ($colon$colon!2126 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366194)))) (ite (or c!1157221 c!1157223) (regTwo!33042 (h!71418 (exprs!6149 lt!2366194))) (h!71418 (exprs!6149 lt!2366194)))))))

(declare-fun bm!542274 () Bool)

(assert (=> bm!542274 (= call!542279 call!542280)))

(declare-fun b!6358082 () Bool)

(assert (=> b!6358082 (= c!1157221 e!3860934)))

(declare-fun res!2616192 () Bool)

(assert (=> b!6358082 (=> (not res!2616192) (not e!3860934))))

(assert (=> b!6358082 (= res!2616192 ((_ is Concat!25110) (h!71418 (exprs!6149 lt!2366194))))))

(assert (=> b!6358082 (= e!3860933 e!3860930)))

(declare-fun b!6358083 () Bool)

(assert (=> b!6358083 (= e!3860931 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6358084 () Bool)

(assert (=> b!6358084 (= e!3860931 call!542278)))

(declare-fun bm!542275 () Bool)

(assert (=> bm!542275 (= call!542277 (derivationStepZipperDown!1513 (ite c!1157219 (regOne!33043 (h!71418 (exprs!6149 lt!2366194))) (regOne!33042 (h!71418 (exprs!6149 lt!2366194)))) (ite c!1157219 (Context!11299 (t!378684 (exprs!6149 lt!2366194))) (Context!11299 call!542280)) (h!71420 s!2326)))))

(declare-fun b!6358085 () Bool)

(assert (=> b!6358085 (= e!3860930 e!3860929)))

(assert (=> b!6358085 (= c!1157223 ((_ is Concat!25110) (h!71418 (exprs!6149 lt!2366194))))))

(assert (= (and d!1994552 c!1157222) b!6358080))

(assert (= (and d!1994552 (not c!1157222)) b!6358076))

(assert (= (and b!6358076 c!1157219) b!6358078))

(assert (= (and b!6358076 (not c!1157219)) b!6358082))

(assert (= (and b!6358082 res!2616192) b!6358081))

(assert (= (and b!6358082 c!1157221) b!6358079))

(assert (= (and b!6358082 (not c!1157221)) b!6358085))

(assert (= (and b!6358085 c!1157223) b!6358077))

(assert (= (and b!6358085 (not c!1157223)) b!6358075))

(assert (= (and b!6358075 c!1157220) b!6358084))

(assert (= (and b!6358075 (not c!1157220)) b!6358083))

(assert (= (or b!6358077 b!6358084) bm!542274))

(assert (= (or b!6358077 b!6358084) bm!542270))

(assert (= (or b!6358079 bm!542274) bm!542273))

(assert (= (or b!6358079 bm!542270) bm!542272))

(assert (= (or b!6358078 bm!542272) bm!542271))

(assert (= (or b!6358078 b!6358079) bm!542275))

(declare-fun m!7164104 () Bool)

(assert (=> b!6358080 m!7164104))

(declare-fun m!7164106 () Bool)

(assert (=> bm!542271 m!7164106))

(declare-fun m!7164108 () Bool)

(assert (=> b!6358081 m!7164108))

(declare-fun m!7164110 () Bool)

(assert (=> bm!542275 m!7164110))

(declare-fun m!7164112 () Bool)

(assert (=> bm!542273 m!7164112))

(assert (=> bm!542064 d!1994552))

(declare-fun d!1994554 () Bool)

(assert (=> d!1994554 (= (isEmpty!37069 (t!378684 lt!2366161)) ((_ is Nil!64970) (t!378684 lt!2366161)))))

(assert (=> b!6356987 d!1994554))

(assert (=> bm!542120 d!1994362))

(assert (=> d!1994254 d!1994236))

(assert (=> d!1994254 d!1994252))

(declare-fun d!1994556 () Bool)

(assert (=> d!1994556 (= (matchR!8448 lt!2366170 s!2326) (matchZipper!2277 lt!2366187 s!2326))))

(assert (=> d!1994556 true))

(declare-fun _$44!1639 () Unit!158391)

(assert (=> d!1994556 (= (choose!47211 lt!2366187 lt!2366165 lt!2366170 s!2326) _$44!1639)))

(declare-fun bs!1592601 () Bool)

(assert (= bs!1592601 d!1994556))

(assert (=> bs!1592601 m!7162638))

(assert (=> bs!1592601 m!7162602))

(assert (=> d!1994254 d!1994556))

(assert (=> d!1994254 d!1994416))

(declare-fun b!6358086 () Bool)

(declare-fun e!3860941 () Bool)

(assert (=> b!6358086 (= e!3860941 (not (= (head!13023 (_1!36547 (get!22482 lt!2366321))) (c!1156730 (regTwo!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6358087 () Bool)

(declare-fun res!2616197 () Bool)

(declare-fun e!3860940 () Bool)

(assert (=> b!6358087 (=> (not res!2616197) (not e!3860940))))

(declare-fun call!542281 () Bool)

(assert (=> b!6358087 (= res!2616197 (not call!542281))))

(declare-fun b!6358088 () Bool)

(declare-fun e!3860938 () Bool)

(declare-fun lt!2366422 () Bool)

(assert (=> b!6358088 (= e!3860938 (= lt!2366422 call!542281))))

(declare-fun bm!542276 () Bool)

(assert (=> bm!542276 (= call!542281 (isEmpty!37073 (_1!36547 (get!22482 lt!2366321))))))

(declare-fun b!6358089 () Bool)

(declare-fun e!3860937 () Bool)

(declare-fun e!3860935 () Bool)

(assert (=> b!6358089 (= e!3860937 e!3860935)))

(declare-fun res!2616196 () Bool)

(assert (=> b!6358089 (=> (not res!2616196) (not e!3860935))))

(assert (=> b!6358089 (= res!2616196 (not lt!2366422))))

(declare-fun b!6358090 () Bool)

(assert (=> b!6358090 (= e!3860940 (= (head!13023 (_1!36547 (get!22482 lt!2366321))) (c!1156730 (regTwo!33042 (regOne!33042 r!7292)))))))

(declare-fun b!6358091 () Bool)

(declare-fun e!3860936 () Bool)

(assert (=> b!6358091 (= e!3860936 (not lt!2366422))))

(declare-fun b!6358092 () Bool)

(assert (=> b!6358092 (= e!3860935 e!3860941)))

(declare-fun res!2616198 () Bool)

(assert (=> b!6358092 (=> res!2616198 e!3860941)))

(assert (=> b!6358092 (= res!2616198 call!542281)))

(declare-fun b!6358093 () Bool)

(assert (=> b!6358093 (= e!3860938 e!3860936)))

(declare-fun c!1157224 () Bool)

(assert (=> b!6358093 (= c!1157224 ((_ is EmptyLang!16265) (regTwo!33042 (regOne!33042 r!7292))))))

(declare-fun b!6358094 () Bool)

(declare-fun e!3860939 () Bool)

(assert (=> b!6358094 (= e!3860939 (nullable!6258 (regTwo!33042 (regOne!33042 r!7292))))))

(declare-fun b!6358095 () Bool)

(declare-fun res!2616200 () Bool)

(assert (=> b!6358095 (=> res!2616200 e!3860937)))

(assert (=> b!6358095 (= res!2616200 (not ((_ is ElementMatch!16265) (regTwo!33042 (regOne!33042 r!7292)))))))

(assert (=> b!6358095 (= e!3860936 e!3860937)))

(declare-fun b!6358096 () Bool)

(declare-fun res!2616195 () Bool)

(assert (=> b!6358096 (=> res!2616195 e!3860941)))

(assert (=> b!6358096 (= res!2616195 (not (isEmpty!37073 (tail!12108 (_1!36547 (get!22482 lt!2366321))))))))

(declare-fun b!6358098 () Bool)

(declare-fun res!2616193 () Bool)

(assert (=> b!6358098 (=> res!2616193 e!3860937)))

(assert (=> b!6358098 (= res!2616193 e!3860940)))

(declare-fun res!2616199 () Bool)

(assert (=> b!6358098 (=> (not res!2616199) (not e!3860940))))

(assert (=> b!6358098 (= res!2616199 lt!2366422)))

(declare-fun b!6358099 () Bool)

(declare-fun res!2616194 () Bool)

(assert (=> b!6358099 (=> (not res!2616194) (not e!3860940))))

(assert (=> b!6358099 (= res!2616194 (isEmpty!37073 (tail!12108 (_1!36547 (get!22482 lt!2366321)))))))

(declare-fun d!1994558 () Bool)

(assert (=> d!1994558 e!3860938))

(declare-fun c!1157226 () Bool)

(assert (=> d!1994558 (= c!1157226 ((_ is EmptyExpr!16265) (regTwo!33042 (regOne!33042 r!7292))))))

(assert (=> d!1994558 (= lt!2366422 e!3860939)))

(declare-fun c!1157225 () Bool)

(assert (=> d!1994558 (= c!1157225 (isEmpty!37073 (_1!36547 (get!22482 lt!2366321))))))

(assert (=> d!1994558 (validRegex!8001 (regTwo!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994558 (= (matchR!8448 (regTwo!33042 (regOne!33042 r!7292)) (_1!36547 (get!22482 lt!2366321))) lt!2366422)))

(declare-fun b!6358097 () Bool)

(assert (=> b!6358097 (= e!3860939 (matchR!8448 (derivativeStep!4970 (regTwo!33042 (regOne!33042 r!7292)) (head!13023 (_1!36547 (get!22482 lt!2366321)))) (tail!12108 (_1!36547 (get!22482 lt!2366321)))))))

(assert (= (and d!1994558 c!1157225) b!6358094))

(assert (= (and d!1994558 (not c!1157225)) b!6358097))

(assert (= (and d!1994558 c!1157226) b!6358088))

(assert (= (and d!1994558 (not c!1157226)) b!6358093))

(assert (= (and b!6358093 c!1157224) b!6358091))

(assert (= (and b!6358093 (not c!1157224)) b!6358095))

(assert (= (and b!6358095 (not res!2616200)) b!6358098))

(assert (= (and b!6358098 res!2616199) b!6358087))

(assert (= (and b!6358087 res!2616197) b!6358099))

(assert (= (and b!6358099 res!2616194) b!6358090))

(assert (= (and b!6358098 (not res!2616193)) b!6358089))

(assert (= (and b!6358089 res!2616196) b!6358092))

(assert (= (and b!6358092 (not res!2616198)) b!6358096))

(assert (= (and b!6358096 (not res!2616195)) b!6358086))

(assert (= (or b!6358088 b!6358087 b!6358092) bm!542276))

(declare-fun m!7164114 () Bool)

(assert (=> b!6358096 m!7164114))

(assert (=> b!6358096 m!7164114))

(declare-fun m!7164116 () Bool)

(assert (=> b!6358096 m!7164116))

(declare-fun m!7164118 () Bool)

(assert (=> b!6358097 m!7164118))

(assert (=> b!6358097 m!7164118))

(declare-fun m!7164120 () Bool)

(assert (=> b!6358097 m!7164120))

(assert (=> b!6358097 m!7164114))

(assert (=> b!6358097 m!7164120))

(assert (=> b!6358097 m!7164114))

(declare-fun m!7164122 () Bool)

(assert (=> b!6358097 m!7164122))

(assert (=> b!6358099 m!7164114))

(assert (=> b!6358099 m!7164114))

(assert (=> b!6358099 m!7164116))

(assert (=> b!6358090 m!7164118))

(assert (=> b!6358094 m!7163748))

(declare-fun m!7164124 () Bool)

(assert (=> d!1994558 m!7164124))

(assert (=> d!1994558 m!7163238))

(assert (=> bm!542276 m!7164124))

(assert (=> b!6358086 m!7164118))

(assert (=> b!6357131 d!1994558))

(assert (=> b!6357131 d!1994518))

(assert (=> b!6357411 d!1994348))

(declare-fun d!1994560 () Bool)

(assert (=> d!1994560 (= (isEmptyLang!1674 lt!2366230) ((_ is EmptyLang!16265) lt!2366230))))

(assert (=> b!6356670 d!1994560))

(declare-fun d!1994562 () Bool)

(assert (=> d!1994562 (= (isDefined!12859 lt!2366355) (not (isEmpty!37074 lt!2366355)))))

(declare-fun bs!1592602 () Bool)

(assert (= bs!1592602 d!1994562))

(declare-fun m!7164126 () Bool)

(assert (=> bs!1592602 m!7164126))

(assert (=> d!1994250 d!1994562))

(declare-fun b!6358100 () Bool)

(declare-fun e!3860948 () Bool)

(assert (=> b!6358100 (= e!3860948 (not (= (head!13023 Nil!64972) (c!1156730 (regOne!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6358101 () Bool)

(declare-fun res!2616205 () Bool)

(declare-fun e!3860947 () Bool)

(assert (=> b!6358101 (=> (not res!2616205) (not e!3860947))))

(declare-fun call!542282 () Bool)

(assert (=> b!6358101 (= res!2616205 (not call!542282))))

(declare-fun b!6358102 () Bool)

(declare-fun e!3860945 () Bool)

(declare-fun lt!2366423 () Bool)

(assert (=> b!6358102 (= e!3860945 (= lt!2366423 call!542282))))

(declare-fun bm!542277 () Bool)

(assert (=> bm!542277 (= call!542282 (isEmpty!37073 Nil!64972))))

(declare-fun b!6358103 () Bool)

(declare-fun e!3860944 () Bool)

(declare-fun e!3860942 () Bool)

(assert (=> b!6358103 (= e!3860944 e!3860942)))

(declare-fun res!2616204 () Bool)

(assert (=> b!6358103 (=> (not res!2616204) (not e!3860942))))

(assert (=> b!6358103 (= res!2616204 (not lt!2366423))))

(declare-fun b!6358104 () Bool)

(assert (=> b!6358104 (= e!3860947 (= (head!13023 Nil!64972) (c!1156730 (regOne!33042 (regOne!33042 r!7292)))))))

(declare-fun b!6358105 () Bool)

(declare-fun e!3860943 () Bool)

(assert (=> b!6358105 (= e!3860943 (not lt!2366423))))

(declare-fun b!6358106 () Bool)

(assert (=> b!6358106 (= e!3860942 e!3860948)))

(declare-fun res!2616206 () Bool)

(assert (=> b!6358106 (=> res!2616206 e!3860948)))

(assert (=> b!6358106 (= res!2616206 call!542282)))

(declare-fun b!6358107 () Bool)

(assert (=> b!6358107 (= e!3860945 e!3860943)))

(declare-fun c!1157227 () Bool)

(assert (=> b!6358107 (= c!1157227 ((_ is EmptyLang!16265) (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun b!6358108 () Bool)

(declare-fun e!3860946 () Bool)

(assert (=> b!6358108 (= e!3860946 (nullable!6258 (regOne!33042 (regOne!33042 r!7292))))))

(declare-fun b!6358109 () Bool)

(declare-fun res!2616208 () Bool)

(assert (=> b!6358109 (=> res!2616208 e!3860944)))

(assert (=> b!6358109 (= res!2616208 (not ((_ is ElementMatch!16265) (regOne!33042 (regOne!33042 r!7292)))))))

(assert (=> b!6358109 (= e!3860943 e!3860944)))

(declare-fun b!6358110 () Bool)

(declare-fun res!2616203 () Bool)

(assert (=> b!6358110 (=> res!2616203 e!3860948)))

(assert (=> b!6358110 (= res!2616203 (not (isEmpty!37073 (tail!12108 Nil!64972))))))

(declare-fun b!6358112 () Bool)

(declare-fun res!2616201 () Bool)

(assert (=> b!6358112 (=> res!2616201 e!3860944)))

(assert (=> b!6358112 (= res!2616201 e!3860947)))

(declare-fun res!2616207 () Bool)

(assert (=> b!6358112 (=> (not res!2616207) (not e!3860947))))

(assert (=> b!6358112 (= res!2616207 lt!2366423)))

(declare-fun b!6358113 () Bool)

(declare-fun res!2616202 () Bool)

(assert (=> b!6358113 (=> (not res!2616202) (not e!3860947))))

(assert (=> b!6358113 (= res!2616202 (isEmpty!37073 (tail!12108 Nil!64972)))))

(declare-fun d!1994564 () Bool)

(assert (=> d!1994564 e!3860945))

(declare-fun c!1157229 () Bool)

(assert (=> d!1994564 (= c!1157229 ((_ is EmptyExpr!16265) (regOne!33042 (regOne!33042 r!7292))))))

(assert (=> d!1994564 (= lt!2366423 e!3860946)))

(declare-fun c!1157228 () Bool)

(assert (=> d!1994564 (= c!1157228 (isEmpty!37073 Nil!64972))))

(assert (=> d!1994564 (validRegex!8001 (regOne!33042 (regOne!33042 r!7292)))))

(assert (=> d!1994564 (= (matchR!8448 (regOne!33042 (regOne!33042 r!7292)) Nil!64972) lt!2366423)))

(declare-fun b!6358111 () Bool)

(assert (=> b!6358111 (= e!3860946 (matchR!8448 (derivativeStep!4970 (regOne!33042 (regOne!33042 r!7292)) (head!13023 Nil!64972)) (tail!12108 Nil!64972)))))

(assert (= (and d!1994564 c!1157228) b!6358108))

(assert (= (and d!1994564 (not c!1157228)) b!6358111))

(assert (= (and d!1994564 c!1157229) b!6358102))

(assert (= (and d!1994564 (not c!1157229)) b!6358107))

(assert (= (and b!6358107 c!1157227) b!6358105))

(assert (= (and b!6358107 (not c!1157227)) b!6358109))

(assert (= (and b!6358109 (not res!2616208)) b!6358112))

(assert (= (and b!6358112 res!2616207) b!6358101))

(assert (= (and b!6358101 res!2616205) b!6358113))

(assert (= (and b!6358113 res!2616202) b!6358104))

(assert (= (and b!6358112 (not res!2616201)) b!6358103))

(assert (= (and b!6358103 res!2616204) b!6358106))

(assert (= (and b!6358106 (not res!2616206)) b!6358110))

(assert (= (and b!6358110 (not res!2616203)) b!6358100))

(assert (= (or b!6358102 b!6358101 b!6358106) bm!542277))

(assert (=> b!6358110 m!7163706))

(assert (=> b!6358110 m!7163706))

(assert (=> b!6358110 m!7163708))

(assert (=> b!6358111 m!7163710))

(assert (=> b!6358111 m!7163710))

(declare-fun m!7164128 () Bool)

(assert (=> b!6358111 m!7164128))

(assert (=> b!6358111 m!7163706))

(assert (=> b!6358111 m!7164128))

(assert (=> b!6358111 m!7163706))

(declare-fun m!7164130 () Bool)

(assert (=> b!6358111 m!7164130))

(assert (=> b!6358113 m!7163706))

(assert (=> b!6358113 m!7163706))

(assert (=> b!6358113 m!7163708))

(assert (=> b!6358104 m!7163710))

(assert (=> b!6358108 m!7162570))

(assert (=> d!1994564 m!7163718))

(assert (=> d!1994564 m!7163132))

(assert (=> bm!542277 m!7163718))

(assert (=> b!6358100 m!7163710))

(assert (=> d!1994250 d!1994564))

(assert (=> d!1994250 d!1994500))

(declare-fun d!1994566 () Bool)

(assert (=> d!1994566 (= (nullable!6258 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))) (nullableFct!2204 (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun bs!1592603 () Bool)

(assert (= bs!1592603 d!1994566))

(declare-fun m!7164132 () Bool)

(assert (=> bs!1592603 m!7164132))

(assert (=> b!6356910 d!1994566))

(assert (=> d!1994308 d!1994302))

(assert (=> d!1994308 d!1994332))

(assert (=> d!1994308 d!1994312))

(declare-fun d!1994568 () Bool)

(assert (=> d!1994568 (= (Exists!3335 lambda!350111) (choose!47205 lambda!350111))))

(declare-fun bs!1592604 () Bool)

(assert (= bs!1592604 d!1994568))

(declare-fun m!7164134 () Bool)

(assert (=> bs!1592604 m!7164134))

(assert (=> d!1994308 d!1994568))

(declare-fun bs!1592605 () Bool)

(declare-fun d!1994570 () Bool)

(assert (= bs!1592605 (and d!1994570 b!6357396)))

(declare-fun lambda!350145 () Int)

(assert (=> bs!1592605 (not (= lambda!350145 lambda!350109))))

(declare-fun bs!1592606 () Bool)

(assert (= bs!1592606 (and d!1994570 b!6356395)))

(assert (=> bs!1592606 (= lambda!350145 lambda!349995)))

(declare-fun bs!1592607 () Bool)

(assert (= bs!1592607 (and d!1994570 d!1994502)))

(assert (=> bs!1592607 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350145 lambda!350138))))

(declare-fun bs!1592608 () Bool)

(assert (= bs!1592608 (and d!1994570 b!6357721)))

(assert (=> bs!1592608 (not (= lambda!350145 lambda!350129))))

(declare-fun bs!1592609 () Bool)

(assert (= bs!1592609 (and d!1994570 d!1994330)))

(assert (=> bs!1592609 (not (= lambda!350145 lambda!350122))))

(declare-fun bs!1592610 () Bool)

(assert (= bs!1592610 (and d!1994570 b!6357049)))

(assert (=> bs!1592610 (not (= lambda!350145 lambda!350077))))

(declare-fun bs!1592611 () Bool)

(assert (= bs!1592611 (and d!1994570 b!6356387)))

(assert (=> bs!1592611 (not (= lambda!350145 lambda!349999))))

(declare-fun bs!1592612 () Bool)

(assert (= bs!1592612 (and d!1994570 d!1994310)))

(assert (=> bs!1592612 (not (= lambda!350145 lambda!350113))))

(declare-fun bs!1592613 () Bool)

(assert (= bs!1592613 (and d!1994570 d!1994256)))

(assert (=> bs!1592613 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350145 lambda!350102))))

(declare-fun bs!1592614 () Bool)

(assert (= bs!1592614 (and d!1994570 d!1994208)))

(assert (=> bs!1592614 (not (= lambda!350145 lambda!350097))))

(assert (=> bs!1592609 (= lambda!350145 lambda!350121)))

(declare-fun bs!1592615 () Bool)

(assert (= bs!1592615 (and d!1994570 b!6357617)))

(assert (=> bs!1592615 (not (= lambda!350145 lambda!350124))))

(declare-fun bs!1592616 () Bool)

(assert (= bs!1592616 (and d!1994570 b!6357910)))

(assert (=> bs!1592616 (not (= lambda!350145 lambda!350134))))

(assert (=> bs!1592606 (not (= lambda!350145 lambda!349996))))

(assert (=> bs!1592612 (= lambda!350145 lambda!350112)))

(declare-fun bs!1592617 () Bool)

(assert (= bs!1592617 (and d!1994570 b!6357729)))

(assert (=> bs!1592617 (not (= lambda!350145 lambda!350130))))

(assert (=> bs!1592614 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350145 lambda!350096))))

(assert (=> bs!1592611 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350145 lambda!350000))))

(declare-fun bs!1592618 () Bool)

(assert (= bs!1592618 (and d!1994570 b!6358031)))

(assert (=> bs!1592618 (not (= lambda!350145 lambda!350142))))

(declare-fun bs!1592619 () Bool)

(assert (= bs!1592619 (and d!1994570 b!6357057)))

(assert (=> bs!1592619 (not (= lambda!350145 lambda!350078))))

(assert (=> bs!1592611 (not (= lambda!350145 lambda!350001))))

(declare-fun bs!1592620 () Bool)

(assert (= bs!1592620 (and d!1994570 b!6358023)))

(assert (=> bs!1592620 (not (= lambda!350145 lambda!350141))))

(declare-fun bs!1592621 () Bool)

(assert (= bs!1592621 (and d!1994570 b!6357258)))

(assert (=> bs!1592621 (not (= lambda!350145 lambda!350099))))

(declare-fun bs!1592622 () Bool)

(assert (= bs!1592622 (and d!1994570 b!6357625)))

(assert (=> bs!1592622 (not (= lambda!350145 lambda!350125))))

(declare-fun bs!1592623 () Bool)

(assert (= bs!1592623 (and d!1994570 b!6357404)))

(assert (=> bs!1592623 (not (= lambda!350145 lambda!350110))))

(declare-fun bs!1592624 () Bool)

(assert (= bs!1592624 (and d!1994570 d!1994308)))

(assert (=> bs!1592624 (= lambda!350145 lambda!350111)))

(declare-fun bs!1592625 () Bool)

(assert (= bs!1592625 (and d!1994570 b!6358034)))

(assert (=> bs!1592625 (not (= lambda!350145 lambda!350143))))

(assert (=> bs!1592611 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350145 lambda!349998))))

(assert (=> bs!1592613 (not (= lambda!350145 lambda!350103))))

(declare-fun bs!1592626 () Bool)

(assert (= bs!1592626 (and d!1994570 b!6357918)))

(assert (=> bs!1592626 (not (= lambda!350145 lambda!350135))))

(declare-fun bs!1592627 () Bool)

(assert (= bs!1592627 (and d!1994570 b!6357250)))

(assert (=> bs!1592627 (not (= lambda!350145 lambda!350098))))

(declare-fun bs!1592628 () Bool)

(assert (= bs!1592628 (and d!1994570 b!6358042)))

(assert (=> bs!1592628 (not (= lambda!350145 lambda!350144))))

(declare-fun bs!1592629 () Bool)

(assert (= bs!1592629 (and d!1994570 d!1994242)))

(assert (=> bs!1592629 (= (and (= (regOne!33042 r!7292) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366173)) (= lambda!350145 lambda!350101))))

(declare-fun bs!1592630 () Bool)

(assert (= bs!1592630 (and d!1994570 d!1994166)))

(assert (=> bs!1592630 (= (and (= (regOne!33042 r!7292) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 r!7292) lt!2366179)) (= lambda!350145 lambda!350061))))

(assert (=> d!1994570 true))

(assert (=> d!1994570 true))

(assert (=> d!1994570 true))

(assert (=> d!1994570 (= (isDefined!12859 (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) Nil!64972 s!2326 s!2326)) (Exists!3335 lambda!350145))))

(assert (=> d!1994570 true))

(declare-fun _$89!2575 () Unit!158391)

(assert (=> d!1994570 (= (choose!47206 (regOne!33042 r!7292) (regTwo!33042 r!7292) s!2326) _$89!2575)))

(declare-fun bs!1592631 () Bool)

(assert (= bs!1592631 d!1994570))

(assert (=> bs!1592631 m!7162522))

(assert (=> bs!1592631 m!7162522))

(assert (=> bs!1592631 m!7162524))

(declare-fun m!7164136 () Bool)

(assert (=> bs!1592631 m!7164136))

(assert (=> d!1994308 d!1994570))

(declare-fun bs!1592632 () Bool)

(declare-fun d!1994572 () Bool)

(assert (= bs!1592632 (and d!1994572 d!1994470)))

(declare-fun lambda!350146 () Int)

(assert (=> bs!1592632 (= lambda!350146 lambda!350133)))

(declare-fun bs!1592633 () Bool)

(assert (= bs!1592633 (and d!1994572 d!1994068)))

(assert (=> bs!1592633 (= lambda!350146 lambda!350024)))

(declare-fun bs!1592634 () Bool)

(assert (= bs!1592634 (and d!1994572 d!1994168)))

(assert (=> bs!1592634 (= lambda!350146 lambda!350067)))

(declare-fun bs!1592635 () Bool)

(assert (= bs!1592635 (and d!1994572 d!1994268)))

(assert (=> bs!1592635 (= lambda!350146 lambda!350106)))

(declare-fun bs!1592636 () Bool)

(assert (= bs!1592636 (and d!1994572 d!1994202)))

(assert (=> bs!1592636 (= lambda!350146 lambda!350079)))

(declare-fun bs!1592637 () Bool)

(assert (= bs!1592637 (and d!1994572 d!1994240)))

(assert (=> bs!1592637 (= lambda!350146 lambda!350100)))

(declare-fun bs!1592638 () Bool)

(assert (= bs!1592638 (and d!1994572 d!1994280)))

(assert (=> bs!1592638 (= lambda!350146 lambda!350108)))

(declare-fun bs!1592639 () Bool)

(assert (= bs!1592639 (and d!1994572 d!1994536)))

(assert (=> bs!1592639 (= lambda!350146 lambda!350140)))

(declare-fun bs!1592640 () Bool)

(assert (= bs!1592640 (and d!1994572 d!1994060)))

(assert (=> bs!1592640 (= lambda!350146 lambda!350020)))

(declare-fun bs!1592641 () Bool)

(assert (= bs!1592641 (and d!1994572 d!1994278)))

(assert (=> bs!1592641 (= lambda!350146 lambda!350107)))

(assert (=> d!1994572 (= (inv!83909 (h!71419 (t!378685 zl!343))) (forall!15441 (exprs!6149 (h!71419 (t!378685 zl!343))) lambda!350146))))

(declare-fun bs!1592642 () Bool)

(assert (= bs!1592642 d!1994572))

(declare-fun m!7164138 () Bool)

(assert (=> bs!1592642 m!7164138))

(assert (=> b!6357525 d!1994572))

(declare-fun d!1994574 () Bool)

(assert (=> d!1994574 (= (nullable!6258 lt!2366170) (nullableFct!2204 lt!2366170))))

(declare-fun bs!1592643 () Bool)

(assert (= bs!1592643 d!1994574))

(declare-fun m!7164140 () Bool)

(assert (=> bs!1592643 m!7164140))

(assert (=> b!6357297 d!1994574))

(assert (=> d!1994292 d!1994290))

(assert (=> d!1994292 d!1994288))

(declare-fun d!1994576 () Bool)

(assert (=> d!1994576 (= (matchR!8448 r!7292 s!2326) (matchRSpec!3366 r!7292 s!2326))))

(assert (=> d!1994576 true))

(declare-fun _$88!5029 () Unit!158391)

(assert (=> d!1994576 (= (choose!47208 r!7292 s!2326) _$88!5029)))

(declare-fun bs!1592644 () Bool)

(assert (= bs!1592644 d!1994576))

(assert (=> bs!1592644 m!7162586))

(assert (=> bs!1592644 m!7162584))

(assert (=> d!1994292 d!1994576))

(assert (=> d!1994292 d!1994048))

(declare-fun d!1994578 () Bool)

(assert (=> d!1994578 true))

(declare-fun setRes!43304 () Bool)

(assert (=> d!1994578 setRes!43304))

(declare-fun condSetEmpty!43304 () Bool)

(declare-fun res!2616209 () (InoxSet Context!11298))

(assert (=> d!1994578 (= condSetEmpty!43304 (= res!2616209 ((as const (Array Context!11298 Bool)) false)))))

(assert (=> d!1994578 (= (choose!47199 z!1189 lambda!349997) res!2616209)))

(declare-fun setIsEmpty!43304 () Bool)

(assert (=> setIsEmpty!43304 setRes!43304))

(declare-fun e!3860949 () Bool)

(declare-fun setNonEmpty!43304 () Bool)

(declare-fun tp!1770835 () Bool)

(declare-fun setElem!43304 () Context!11298)

(assert (=> setNonEmpty!43304 (= setRes!43304 (and tp!1770835 (inv!83909 setElem!43304) e!3860949))))

(declare-fun setRest!43304 () (InoxSet Context!11298))

(assert (=> setNonEmpty!43304 (= res!2616209 ((_ map or) (store ((as const (Array Context!11298 Bool)) false) setElem!43304 true) setRest!43304))))

(declare-fun b!6358114 () Bool)

(declare-fun tp!1770836 () Bool)

(assert (=> b!6358114 (= e!3860949 tp!1770836)))

(assert (= (and d!1994578 condSetEmpty!43304) setIsEmpty!43304))

(assert (= (and d!1994578 (not condSetEmpty!43304)) setNonEmpty!43304))

(assert (= setNonEmpty!43304 b!6358114))

(declare-fun m!7164142 () Bool)

(assert (=> setNonEmpty!43304 m!7164142))

(assert (=> d!1994130 d!1994578))

(declare-fun b!6358115 () Bool)

(declare-fun res!2616212 () Bool)

(declare-fun e!3860955 () Bool)

(assert (=> b!6358115 (=> res!2616212 e!3860955)))

(assert (=> b!6358115 (= res!2616212 (not ((_ is Concat!25110) lt!2366322)))))

(declare-fun e!3860956 () Bool)

(assert (=> b!6358115 (= e!3860956 e!3860955)))

(declare-fun bm!542278 () Bool)

(declare-fun call!542284 () Bool)

(declare-fun c!1157230 () Bool)

(declare-fun c!1157231 () Bool)

(assert (=> bm!542278 (= call!542284 (validRegex!8001 (ite c!1157230 (reg!16594 lt!2366322) (ite c!1157231 (regOne!33043 lt!2366322) (regOne!33042 lt!2366322)))))))

(declare-fun b!6358116 () Bool)

(declare-fun e!3860951 () Bool)

(declare-fun call!542283 () Bool)

(assert (=> b!6358116 (= e!3860951 call!542283)))

(declare-fun bm!542279 () Bool)

(assert (=> bm!542279 (= call!542283 (validRegex!8001 (ite c!1157231 (regTwo!33043 lt!2366322) (regTwo!33042 lt!2366322))))))

(declare-fun b!6358117 () Bool)

(declare-fun e!3860950 () Bool)

(assert (=> b!6358117 (= e!3860950 call!542283)))

(declare-fun bm!542280 () Bool)

(declare-fun call!542285 () Bool)

(assert (=> bm!542280 (= call!542285 call!542284)))

(declare-fun b!6358119 () Bool)

(declare-fun e!3860953 () Bool)

(declare-fun e!3860954 () Bool)

(assert (=> b!6358119 (= e!3860953 e!3860954)))

(assert (=> b!6358119 (= c!1157230 ((_ is Star!16265) lt!2366322))))

(declare-fun b!6358120 () Bool)

(assert (=> b!6358120 (= e!3860955 e!3860950)))

(declare-fun res!2616214 () Bool)

(assert (=> b!6358120 (=> (not res!2616214) (not e!3860950))))

(assert (=> b!6358120 (= res!2616214 call!542285)))

(declare-fun b!6358121 () Bool)

(declare-fun res!2616210 () Bool)

(assert (=> b!6358121 (=> (not res!2616210) (not e!3860951))))

(assert (=> b!6358121 (= res!2616210 call!542285)))

(assert (=> b!6358121 (= e!3860956 e!3860951)))

(declare-fun b!6358122 () Bool)

(declare-fun e!3860952 () Bool)

(assert (=> b!6358122 (= e!3860954 e!3860952)))

(declare-fun res!2616211 () Bool)

(assert (=> b!6358122 (= res!2616211 (not (nullable!6258 (reg!16594 lt!2366322))))))

(assert (=> b!6358122 (=> (not res!2616211) (not e!3860952))))

(declare-fun b!6358123 () Bool)

(assert (=> b!6358123 (= e!3860954 e!3860956)))

(assert (=> b!6358123 (= c!1157231 ((_ is Union!16265) lt!2366322))))

(declare-fun d!1994580 () Bool)

(declare-fun res!2616213 () Bool)

(assert (=> d!1994580 (=> res!2616213 e!3860953)))

(assert (=> d!1994580 (= res!2616213 ((_ is ElementMatch!16265) lt!2366322))))

(assert (=> d!1994580 (= (validRegex!8001 lt!2366322) e!3860953)))

(declare-fun b!6358118 () Bool)

(assert (=> b!6358118 (= e!3860952 call!542284)))

(assert (= (and d!1994580 (not res!2616213)) b!6358119))

(assert (= (and b!6358119 c!1157230) b!6358122))

(assert (= (and b!6358119 (not c!1157230)) b!6358123))

(assert (= (and b!6358122 res!2616211) b!6358118))

(assert (= (and b!6358123 c!1157231) b!6358121))

(assert (= (and b!6358123 (not c!1157231)) b!6358115))

(assert (= (and b!6358121 res!2616210) b!6358116))

(assert (= (and b!6358115 (not res!2616212)) b!6358120))

(assert (= (and b!6358120 res!2616214) b!6358117))

(assert (= (or b!6358116 b!6358117) bm!542279))

(assert (= (or b!6358121 b!6358120) bm!542280))

(assert (= (or b!6358118 bm!542280) bm!542278))

(declare-fun m!7164144 () Bool)

(assert (=> bm!542278 m!7164144))

(declare-fun m!7164146 () Bool)

(assert (=> bm!542279 m!7164146))

(declare-fun m!7164148 () Bool)

(assert (=> b!6358122 m!7164148))

(assert (=> d!1994202 d!1994580))

(declare-fun d!1994582 () Bool)

(declare-fun res!2616215 () Bool)

(declare-fun e!3860957 () Bool)

(assert (=> d!1994582 (=> res!2616215 e!3860957)))

(assert (=> d!1994582 (= res!2616215 ((_ is Nil!64970) lt!2366196))))

(assert (=> d!1994582 (= (forall!15441 lt!2366196 lambda!350079) e!3860957)))

(declare-fun b!6358124 () Bool)

(declare-fun e!3860958 () Bool)

(assert (=> b!6358124 (= e!3860957 e!3860958)))

(declare-fun res!2616216 () Bool)

(assert (=> b!6358124 (=> (not res!2616216) (not e!3860958))))

(assert (=> b!6358124 (= res!2616216 (dynLambda!25764 lambda!350079 (h!71418 lt!2366196)))))

(declare-fun b!6358125 () Bool)

(assert (=> b!6358125 (= e!3860958 (forall!15441 (t!378684 lt!2366196) lambda!350079))))

(assert (= (and d!1994582 (not res!2616215)) b!6358124))

(assert (= (and b!6358124 res!2616216) b!6358125))

(declare-fun b_lambda!241695 () Bool)

(assert (=> (not b_lambda!241695) (not b!6358124)))

(declare-fun m!7164150 () Bool)

(assert (=> b!6358124 m!7164150))

(declare-fun m!7164152 () Bool)

(assert (=> b!6358125 m!7164152))

(assert (=> d!1994202 d!1994582))

(assert (=> b!6357458 d!1994350))

(assert (=> b!6357458 d!1994352))

(assert (=> b!6357458 d!1994354))

(declare-fun b!6358126 () Bool)

(declare-fun e!3860961 () Bool)

(assert (=> b!6358126 (= e!3860961 (matchR!8448 (regTwo!33042 r!7292) (t!378686 s!2326)))))

(declare-fun b!6358127 () Bool)

(declare-fun e!3860962 () Option!16156)

(declare-fun e!3860959 () Option!16156)

(assert (=> b!6358127 (= e!3860962 e!3860959)))

(declare-fun c!1157233 () Bool)

(assert (=> b!6358127 (= c!1157233 ((_ is Nil!64972) (t!378686 s!2326)))))

(declare-fun b!6358128 () Bool)

(declare-fun res!2616218 () Bool)

(declare-fun e!3860963 () Bool)

(assert (=> b!6358128 (=> (not res!2616218) (not e!3860963))))

(declare-fun lt!2366426 () Option!16156)

(assert (=> b!6358128 (= res!2616218 (matchR!8448 (regOne!33042 r!7292) (_1!36547 (get!22482 lt!2366426))))))

(declare-fun b!6358129 () Bool)

(declare-fun res!2616220 () Bool)

(assert (=> b!6358129 (=> (not res!2616220) (not e!3860963))))

(assert (=> b!6358129 (= res!2616220 (matchR!8448 (regTwo!33042 r!7292) (_2!36547 (get!22482 lt!2366426))))))

(declare-fun b!6358130 () Bool)

(assert (=> b!6358130 (= e!3860959 None!16155)))

(declare-fun d!1994584 () Bool)

(declare-fun e!3860960 () Bool)

(assert (=> d!1994584 e!3860960))

(declare-fun res!2616221 () Bool)

(assert (=> d!1994584 (=> res!2616221 e!3860960)))

(assert (=> d!1994584 (= res!2616221 e!3860963)))

(declare-fun res!2616219 () Bool)

(assert (=> d!1994584 (=> (not res!2616219) (not e!3860963))))

(assert (=> d!1994584 (= res!2616219 (isDefined!12859 lt!2366426))))

(assert (=> d!1994584 (= lt!2366426 e!3860962)))

(declare-fun c!1157232 () Bool)

(assert (=> d!1994584 (= c!1157232 e!3860961)))

(declare-fun res!2616217 () Bool)

(assert (=> d!1994584 (=> (not res!2616217) (not e!3860961))))

(assert (=> d!1994584 (= res!2616217 (matchR!8448 (regOne!33042 r!7292) (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972))))))

(assert (=> d!1994584 (validRegex!8001 (regOne!33042 r!7292))))

(assert (=> d!1994584 (= (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326) s!2326) lt!2366426)))

(declare-fun b!6358131 () Bool)

(declare-fun lt!2366424 () Unit!158391)

(declare-fun lt!2366425 () Unit!158391)

(assert (=> b!6358131 (= lt!2366424 lt!2366425)))

(assert (=> b!6358131 (= (++!14334 (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (Cons!64972 (h!71420 (t!378686 s!2326)) Nil!64972)) (t!378686 (t!378686 s!2326))) s!2326)))

(assert (=> b!6358131 (= lt!2366425 (lemmaMoveElementToOtherListKeepsConcatEq!2429 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (h!71420 (t!378686 s!2326)) (t!378686 (t!378686 s!2326)) s!2326))))

(assert (=> b!6358131 (= e!3860959 (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) (++!14334 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (Cons!64972 (h!71420 (t!378686 s!2326)) Nil!64972)) (t!378686 (t!378686 s!2326)) s!2326))))

(declare-fun b!6358132 () Bool)

(assert (=> b!6358132 (= e!3860963 (= (++!14334 (_1!36547 (get!22482 lt!2366426)) (_2!36547 (get!22482 lt!2366426))) s!2326))))

(declare-fun b!6358133 () Bool)

(assert (=> b!6358133 (= e!3860962 (Some!16155 (tuple2!66489 (++!14334 Nil!64972 (Cons!64972 (h!71420 s!2326) Nil!64972)) (t!378686 s!2326))))))

(declare-fun b!6358134 () Bool)

(assert (=> b!6358134 (= e!3860960 (not (isDefined!12859 lt!2366426)))))

(assert (= (and d!1994584 res!2616217) b!6358126))

(assert (= (and d!1994584 c!1157232) b!6358133))

(assert (= (and d!1994584 (not c!1157232)) b!6358127))

(assert (= (and b!6358127 c!1157233) b!6358130))

(assert (= (and b!6358127 (not c!1157233)) b!6358131))

(assert (= (and d!1994584 res!2616219) b!6358128))

(assert (= (and b!6358128 res!2616218) b!6358129))

(assert (= (and b!6358129 res!2616220) b!6358132))

(assert (= (and d!1994584 (not res!2616221)) b!6358134))

(declare-fun m!7164154 () Bool)

(assert (=> b!6358134 m!7164154))

(declare-fun m!7164156 () Bool)

(assert (=> b!6358126 m!7164156))

(declare-fun m!7164158 () Bool)

(assert (=> b!6358132 m!7164158))

(declare-fun m!7164160 () Bool)

(assert (=> b!6358132 m!7164160))

(assert (=> b!6358129 m!7164158))

(declare-fun m!7164162 () Bool)

(assert (=> b!6358129 m!7164162))

(assert (=> d!1994584 m!7164154))

(assert (=> d!1994584 m!7163242))

(declare-fun m!7164164 () Bool)

(assert (=> d!1994584 m!7164164))

(assert (=> d!1994584 m!7163568))

(assert (=> b!6358128 m!7164158))

(declare-fun m!7164166 () Bool)

(assert (=> b!6358128 m!7164166))

(assert (=> b!6358131 m!7163242))

(assert (=> b!6358131 m!7163690))

(assert (=> b!6358131 m!7163690))

(assert (=> b!6358131 m!7163692))

(assert (=> b!6358131 m!7163242))

(assert (=> b!6358131 m!7163694))

(assert (=> b!6358131 m!7163690))

(declare-fun m!7164168 () Bool)

(assert (=> b!6358131 m!7164168))

(assert (=> b!6357458 d!1994584))

(assert (=> b!6357362 d!1994340))

(assert (=> b!6357362 d!1994342))

(declare-fun d!1994588 () Bool)

(assert (=> d!1994588 (= (nullable!6258 (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))) (nullableFct!2204 (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))))))

(declare-fun bs!1592645 () Bool)

(assert (= bs!1592645 d!1994588))

(declare-fun m!7164170 () Bool)

(assert (=> bs!1592645 m!7164170))

(assert (=> b!6357391 d!1994588))

(declare-fun d!1994590 () Bool)

(declare-fun lt!2366427 () Int)

(assert (=> d!1994590 (>= lt!2366427 0)))

(declare-fun e!3860964 () Int)

(assert (=> d!1994590 (= lt!2366427 e!3860964)))

(declare-fun c!1157234 () Bool)

(assert (=> d!1994590 (= c!1157234 ((_ is Cons!64970) (exprs!6149 (h!71419 lt!2366165))))))

(assert (=> d!1994590 (= (contextDepthTotal!374 (h!71419 lt!2366165)) lt!2366427)))

(declare-fun b!6358135 () Bool)

(assert (=> b!6358135 (= e!3860964 (+ (regexDepthTotal!222 (h!71418 (exprs!6149 (h!71419 lt!2366165)))) (contextDepthTotal!374 (Context!11299 (t!378684 (exprs!6149 (h!71419 lt!2366165)))))))))

(declare-fun b!6358136 () Bool)

(assert (=> b!6358136 (= e!3860964 1)))

(assert (= (and d!1994590 c!1157234) b!6358135))

(assert (= (and d!1994590 (not c!1157234)) b!6358136))

(declare-fun m!7164172 () Bool)

(assert (=> b!6358135 m!7164172))

(declare-fun m!7164174 () Bool)

(assert (=> b!6358135 m!7164174))

(assert (=> b!6356703 d!1994590))

(declare-fun d!1994592 () Bool)

(declare-fun lt!2366428 () Int)

(assert (=> d!1994592 (>= lt!2366428 0)))

(declare-fun e!3860965 () Int)

(assert (=> d!1994592 (= lt!2366428 e!3860965)))

(declare-fun c!1157235 () Bool)

(assert (=> d!1994592 (= c!1157235 ((_ is Cons!64971) (t!378685 lt!2366165)))))

(assert (=> d!1994592 (= (zipperDepthTotal!402 (t!378685 lt!2366165)) lt!2366428)))

(declare-fun b!6358137 () Bool)

(assert (=> b!6358137 (= e!3860965 (+ (contextDepthTotal!374 (h!71419 (t!378685 lt!2366165))) (zipperDepthTotal!402 (t!378685 (t!378685 lt!2366165)))))))

(declare-fun b!6358138 () Bool)

(assert (=> b!6358138 (= e!3860965 0)))

(assert (= (and d!1994592 c!1157235) b!6358137))

(assert (= (and d!1994592 (not c!1157235)) b!6358138))

(declare-fun m!7164176 () Bool)

(assert (=> b!6358137 m!7164176))

(declare-fun m!7164178 () Bool)

(assert (=> b!6358137 m!7164178))

(assert (=> b!6356703 d!1994592))

(declare-fun b!6358139 () Bool)

(declare-fun res!2616224 () Bool)

(declare-fun e!3860971 () Bool)

(assert (=> b!6358139 (=> res!2616224 e!3860971)))

(assert (=> b!6358139 (= res!2616224 (not ((_ is Concat!25110) lt!2366349)))))

(declare-fun e!3860972 () Bool)

(assert (=> b!6358139 (= e!3860972 e!3860971)))

(declare-fun c!1157237 () Bool)

(declare-fun bm!542281 () Bool)

(declare-fun c!1157236 () Bool)

(declare-fun call!542287 () Bool)

(assert (=> bm!542281 (= call!542287 (validRegex!8001 (ite c!1157236 (reg!16594 lt!2366349) (ite c!1157237 (regOne!33043 lt!2366349) (regOne!33042 lt!2366349)))))))

(declare-fun b!6358140 () Bool)

(declare-fun e!3860967 () Bool)

(declare-fun call!542286 () Bool)

(assert (=> b!6358140 (= e!3860967 call!542286)))

(declare-fun bm!542282 () Bool)

(assert (=> bm!542282 (= call!542286 (validRegex!8001 (ite c!1157237 (regTwo!33043 lt!2366349) (regTwo!33042 lt!2366349))))))

(declare-fun b!6358141 () Bool)

(declare-fun e!3860966 () Bool)

(assert (=> b!6358141 (= e!3860966 call!542286)))

(declare-fun bm!542283 () Bool)

(declare-fun call!542288 () Bool)

(assert (=> bm!542283 (= call!542288 call!542287)))

(declare-fun b!6358143 () Bool)

(declare-fun e!3860969 () Bool)

(declare-fun e!3860970 () Bool)

(assert (=> b!6358143 (= e!3860969 e!3860970)))

(assert (=> b!6358143 (= c!1157236 ((_ is Star!16265) lt!2366349))))

(declare-fun b!6358144 () Bool)

(assert (=> b!6358144 (= e!3860971 e!3860966)))

(declare-fun res!2616226 () Bool)

(assert (=> b!6358144 (=> (not res!2616226) (not e!3860966))))

(assert (=> b!6358144 (= res!2616226 call!542288)))

(declare-fun b!6358145 () Bool)

(declare-fun res!2616222 () Bool)

(assert (=> b!6358145 (=> (not res!2616222) (not e!3860967))))

(assert (=> b!6358145 (= res!2616222 call!542288)))

(assert (=> b!6358145 (= e!3860972 e!3860967)))

(declare-fun b!6358146 () Bool)

(declare-fun e!3860968 () Bool)

(assert (=> b!6358146 (= e!3860970 e!3860968)))

(declare-fun res!2616223 () Bool)

(assert (=> b!6358146 (= res!2616223 (not (nullable!6258 (reg!16594 lt!2366349))))))

(assert (=> b!6358146 (=> (not res!2616223) (not e!3860968))))

(declare-fun b!6358147 () Bool)

(assert (=> b!6358147 (= e!3860970 e!3860972)))

(assert (=> b!6358147 (= c!1157237 ((_ is Union!16265) lt!2366349))))

(declare-fun d!1994594 () Bool)

(declare-fun res!2616225 () Bool)

(assert (=> d!1994594 (=> res!2616225 e!3860969)))

(assert (=> d!1994594 (= res!2616225 ((_ is ElementMatch!16265) lt!2366349))))

(assert (=> d!1994594 (= (validRegex!8001 lt!2366349) e!3860969)))

(declare-fun b!6358142 () Bool)

(assert (=> b!6358142 (= e!3860968 call!542287)))

(assert (= (and d!1994594 (not res!2616225)) b!6358143))

(assert (= (and b!6358143 c!1157236) b!6358146))

(assert (= (and b!6358143 (not c!1157236)) b!6358147))

(assert (= (and b!6358146 res!2616223) b!6358142))

(assert (= (and b!6358147 c!1157237) b!6358145))

(assert (= (and b!6358147 (not c!1157237)) b!6358139))

(assert (= (and b!6358145 res!2616222) b!6358140))

(assert (= (and b!6358139 (not res!2616224)) b!6358144))

(assert (= (and b!6358144 res!2616226) b!6358141))

(assert (= (or b!6358140 b!6358141) bm!542282))

(assert (= (or b!6358145 b!6358144) bm!542283))

(assert (= (or b!6358142 bm!542283) bm!542281))

(declare-fun m!7164182 () Bool)

(assert (=> bm!542281 m!7164182))

(declare-fun m!7164184 () Bool)

(assert (=> bm!542282 m!7164184))

(declare-fun m!7164188 () Bool)

(assert (=> b!6358146 m!7164188))

(assert (=> d!1994240 d!1994594))

(declare-fun d!1994600 () Bool)

(declare-fun res!2616227 () Bool)

(declare-fun e!3860973 () Bool)

(assert (=> d!1994600 (=> res!2616227 e!3860973)))

(assert (=> d!1994600 (= res!2616227 ((_ is Nil!64970) (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> d!1994600 (= (forall!15441 (t!378684 (exprs!6149 (h!71419 zl!343))) lambda!350100) e!3860973)))

(declare-fun b!6358148 () Bool)

(declare-fun e!3860974 () Bool)

(assert (=> b!6358148 (= e!3860973 e!3860974)))

(declare-fun res!2616228 () Bool)

(assert (=> b!6358148 (=> (not res!2616228) (not e!3860974))))

(assert (=> b!6358148 (= res!2616228 (dynLambda!25764 lambda!350100 (h!71418 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun b!6358149 () Bool)

(assert (=> b!6358149 (= e!3860974 (forall!15441 (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343)))) lambda!350100))))

(assert (= (and d!1994600 (not res!2616227)) b!6358148))

(assert (= (and b!6358148 res!2616228) b!6358149))

(declare-fun b_lambda!241697 () Bool)

(assert (=> (not b_lambda!241697) (not b!6358148)))

(declare-fun m!7164190 () Bool)

(assert (=> b!6358148 m!7164190))

(declare-fun m!7164192 () Bool)

(assert (=> b!6358149 m!7164192))

(assert (=> d!1994240 d!1994600))

(declare-fun bs!1592648 () Bool)

(declare-fun d!1994604 () Bool)

(assert (= bs!1592648 (and d!1994604 d!1994470)))

(declare-fun lambda!350147 () Int)

(assert (=> bs!1592648 (= lambda!350147 lambda!350133)))

(declare-fun bs!1592649 () Bool)

(assert (= bs!1592649 (and d!1994604 d!1994068)))

(assert (=> bs!1592649 (= lambda!350147 lambda!350024)))

(declare-fun bs!1592650 () Bool)

(assert (= bs!1592650 (and d!1994604 d!1994168)))

(assert (=> bs!1592650 (= lambda!350147 lambda!350067)))

(declare-fun bs!1592651 () Bool)

(assert (= bs!1592651 (and d!1994604 d!1994572)))

(assert (=> bs!1592651 (= lambda!350147 lambda!350146)))

(declare-fun bs!1592652 () Bool)

(assert (= bs!1592652 (and d!1994604 d!1994268)))

(assert (=> bs!1592652 (= lambda!350147 lambda!350106)))

(declare-fun bs!1592653 () Bool)

(assert (= bs!1592653 (and d!1994604 d!1994202)))

(assert (=> bs!1592653 (= lambda!350147 lambda!350079)))

(declare-fun bs!1592654 () Bool)

(assert (= bs!1592654 (and d!1994604 d!1994240)))

(assert (=> bs!1592654 (= lambda!350147 lambda!350100)))

(declare-fun bs!1592655 () Bool)

(assert (= bs!1592655 (and d!1994604 d!1994280)))

(assert (=> bs!1592655 (= lambda!350147 lambda!350108)))

(declare-fun bs!1592656 () Bool)

(assert (= bs!1592656 (and d!1994604 d!1994536)))

(assert (=> bs!1592656 (= lambda!350147 lambda!350140)))

(declare-fun bs!1592657 () Bool)

(assert (= bs!1592657 (and d!1994604 d!1994060)))

(assert (=> bs!1592657 (= lambda!350147 lambda!350020)))

(declare-fun bs!1592658 () Bool)

(assert (= bs!1592658 (and d!1994604 d!1994278)))

(assert (=> bs!1592658 (= lambda!350147 lambda!350107)))

(declare-fun e!3860977 () Bool)

(assert (=> d!1994604 e!3860977))

(declare-fun res!2616229 () Bool)

(assert (=> d!1994604 (=> (not res!2616229) (not e!3860977))))

(declare-fun lt!2366429 () Regex!16265)

(assert (=> d!1994604 (= res!2616229 (validRegex!8001 lt!2366429))))

(declare-fun e!3860980 () Regex!16265)

(assert (=> d!1994604 (= lt!2366429 e!3860980)))

(declare-fun c!1157241 () Bool)

(declare-fun e!3860975 () Bool)

(assert (=> d!1994604 (= c!1157241 e!3860975)))

(declare-fun res!2616230 () Bool)

(assert (=> d!1994604 (=> (not res!2616230) (not e!3860975))))

(assert (=> d!1994604 (= res!2616230 ((_ is Cons!64970) (t!378684 lt!2366161)))))

(assert (=> d!1994604 (forall!15441 (t!378684 lt!2366161) lambda!350147)))

(assert (=> d!1994604 (= (generalisedConcat!1862 (t!378684 lt!2366161)) lt!2366429)))

(declare-fun b!6358150 () Bool)

(declare-fun e!3860976 () Bool)

(declare-fun e!3860979 () Bool)

(assert (=> b!6358150 (= e!3860976 e!3860979)))

(declare-fun c!1157238 () Bool)

(assert (=> b!6358150 (= c!1157238 (isEmpty!37069 (tail!12107 (t!378684 lt!2366161))))))

(declare-fun b!6358151 () Bool)

(assert (=> b!6358151 (= e!3860979 (isConcat!1190 lt!2366429))))

(declare-fun b!6358152 () Bool)

(declare-fun e!3860978 () Regex!16265)

(assert (=> b!6358152 (= e!3860980 e!3860978)))

(declare-fun c!1157239 () Bool)

(assert (=> b!6358152 (= c!1157239 ((_ is Cons!64970) (t!378684 lt!2366161)))))

(declare-fun b!6358153 () Bool)

(assert (=> b!6358153 (= e!3860978 EmptyExpr!16265)))

(declare-fun b!6358154 () Bool)

(assert (=> b!6358154 (= e!3860978 (Concat!25110 (h!71418 (t!378684 lt!2366161)) (generalisedConcat!1862 (t!378684 (t!378684 lt!2366161)))))))

(declare-fun b!6358155 () Bool)

(assert (=> b!6358155 (= e!3860975 (isEmpty!37069 (t!378684 (t!378684 lt!2366161))))))

(declare-fun b!6358156 () Bool)

(assert (=> b!6358156 (= e!3860977 e!3860976)))

(declare-fun c!1157240 () Bool)

(assert (=> b!6358156 (= c!1157240 (isEmpty!37069 (t!378684 lt!2366161)))))

(declare-fun b!6358157 () Bool)

(assert (=> b!6358157 (= e!3860979 (= lt!2366429 (head!13022 (t!378684 lt!2366161))))))

(declare-fun b!6358158 () Bool)

(assert (=> b!6358158 (= e!3860980 (h!71418 (t!378684 lt!2366161)))))

(declare-fun b!6358159 () Bool)

(assert (=> b!6358159 (= e!3860976 (isEmptyExpr!1667 lt!2366429))))

(assert (= (and d!1994604 res!2616230) b!6358155))

(assert (= (and d!1994604 c!1157241) b!6358158))

(assert (= (and d!1994604 (not c!1157241)) b!6358152))

(assert (= (and b!6358152 c!1157239) b!6358154))

(assert (= (and b!6358152 (not c!1157239)) b!6358153))

(assert (= (and d!1994604 res!2616229) b!6358156))

(assert (= (and b!6358156 c!1157240) b!6358159))

(assert (= (and b!6358156 (not c!1157240)) b!6358150))

(assert (= (and b!6358150 c!1157238) b!6358157))

(assert (= (and b!6358150 (not c!1157238)) b!6358151))

(declare-fun m!7164194 () Bool)

(assert (=> b!6358150 m!7164194))

(assert (=> b!6358150 m!7164194))

(declare-fun m!7164196 () Bool)

(assert (=> b!6358150 m!7164196))

(declare-fun m!7164198 () Bool)

(assert (=> d!1994604 m!7164198))

(declare-fun m!7164200 () Bool)

(assert (=> d!1994604 m!7164200))

(declare-fun m!7164202 () Bool)

(assert (=> b!6358157 m!7164202))

(declare-fun m!7164204 () Bool)

(assert (=> b!6358151 m!7164204))

(assert (=> b!6358156 m!7163162))

(declare-fun m!7164206 () Bool)

(assert (=> b!6358154 m!7164206))

(declare-fun m!7164208 () Bool)

(assert (=> b!6358155 m!7164208))

(declare-fun m!7164210 () Bool)

(assert (=> b!6358159 m!7164210))

(assert (=> b!6356986 d!1994604))

(declare-fun d!1994606 () Bool)

(assert (=> d!1994606 (= (nullable!6258 (h!71418 (exprs!6149 lt!2366189))) (nullableFct!2204 (h!71418 (exprs!6149 lt!2366189))))))

(declare-fun bs!1592659 () Bool)

(assert (= bs!1592659 d!1994606))

(declare-fun m!7164212 () Bool)

(assert (=> bs!1592659 m!7164212))

(assert (=> b!6356854 d!1994606))

(assert (=> d!1994270 d!1994534))

(assert (=> d!1994096 d!1994086))

(declare-fun d!1994608 () Bool)

(assert (=> d!1994608 (= (flatMap!1770 lt!2366187 lambda!349997) (dynLambda!25763 lambda!349997 lt!2366194))))

(assert (=> d!1994608 true))

(declare-fun _$13!3512 () Unit!158391)

(assert (=> d!1994608 (= (choose!47200 lt!2366187 lt!2366194 lambda!349997) _$13!3512)))

(declare-fun b_lambda!241699 () Bool)

(assert (=> (not b_lambda!241699) (not d!1994608)))

(declare-fun bs!1592660 () Bool)

(assert (= bs!1592660 d!1994608))

(assert (=> bs!1592660 m!7162554))

(assert (=> bs!1592660 m!7162906))

(assert (=> d!1994096 d!1994608))

(declare-fun d!1994610 () Bool)

(assert (=> d!1994610 (= (head!13022 (exprs!6149 (h!71419 zl!343))) (h!71418 (exprs!6149 (h!71419 zl!343))))))

(assert (=> b!6357382 d!1994610))

(assert (=> b!6357420 d!1994340))

(assert (=> b!6357420 d!1994342))

(declare-fun d!1994612 () Bool)

(assert (=> d!1994612 (= (Exists!3335 lambda!350102) (choose!47205 lambda!350102))))

(declare-fun bs!1592661 () Bool)

(assert (= bs!1592661 d!1994612))

(declare-fun m!7164214 () Bool)

(assert (=> bs!1592661 m!7164214))

(assert (=> d!1994256 d!1994612))

(declare-fun d!1994614 () Bool)

(assert (=> d!1994614 (= (Exists!3335 lambda!350103) (choose!47205 lambda!350103))))

(declare-fun bs!1592662 () Bool)

(assert (= bs!1592662 d!1994614))

(declare-fun m!7164216 () Bool)

(assert (=> bs!1592662 m!7164216))

(assert (=> d!1994256 d!1994614))

(declare-fun bs!1592663 () Bool)

(declare-fun d!1994616 () Bool)

(assert (= bs!1592663 (and d!1994616 b!6357396)))

(declare-fun lambda!350148 () Int)

(assert (=> bs!1592663 (not (= lambda!350148 lambda!350109))))

(declare-fun bs!1592664 () Bool)

(assert (= bs!1592664 (and d!1994616 b!6356395)))

(assert (=> bs!1592664 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350148 lambda!349995))))

(declare-fun bs!1592665 () Bool)

(assert (= bs!1592665 (and d!1994616 b!6357721)))

(assert (=> bs!1592665 (not (= lambda!350148 lambda!350129))))

(declare-fun bs!1592666 () Bool)

(assert (= bs!1592666 (and d!1994616 d!1994330)))

(assert (=> bs!1592666 (not (= lambda!350148 lambda!350122))))

(declare-fun bs!1592667 () Bool)

(assert (= bs!1592667 (and d!1994616 b!6357049)))

(assert (=> bs!1592667 (not (= lambda!350148 lambda!350077))))

(declare-fun bs!1592668 () Bool)

(assert (= bs!1592668 (and d!1994616 b!6356387)))

(assert (=> bs!1592668 (not (= lambda!350148 lambda!349999))))

(declare-fun bs!1592669 () Bool)

(assert (= bs!1592669 (and d!1994616 d!1994310)))

(assert (=> bs!1592669 (not (= lambda!350148 lambda!350113))))

(declare-fun bs!1592670 () Bool)

(assert (= bs!1592670 (and d!1994616 d!1994256)))

(assert (=> bs!1592670 (= lambda!350148 lambda!350102)))

(declare-fun bs!1592671 () Bool)

(assert (= bs!1592671 (and d!1994616 d!1994208)))

(assert (=> bs!1592671 (not (= lambda!350148 lambda!350097))))

(assert (=> bs!1592666 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350148 lambda!350121))))

(declare-fun bs!1592672 () Bool)

(assert (= bs!1592672 (and d!1994616 b!6357617)))

(assert (=> bs!1592672 (not (= lambda!350148 lambda!350124))))

(declare-fun bs!1592673 () Bool)

(assert (= bs!1592673 (and d!1994616 b!6357910)))

(assert (=> bs!1592673 (not (= lambda!350148 lambda!350134))))

(assert (=> bs!1592664 (not (= lambda!350148 lambda!349996))))

(assert (=> bs!1592669 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350148 lambda!350112))))

(declare-fun bs!1592674 () Bool)

(assert (= bs!1592674 (and d!1994616 b!6357729)))

(assert (=> bs!1592674 (not (= lambda!350148 lambda!350130))))

(declare-fun bs!1592675 () Bool)

(assert (= bs!1592675 (and d!1994616 d!1994570)))

(assert (=> bs!1592675 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350148 lambda!350145))))

(declare-fun bs!1592676 () Bool)

(assert (= bs!1592676 (and d!1994616 d!1994502)))

(assert (=> bs!1592676 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350148 lambda!350138))))

(assert (=> bs!1592671 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350148 lambda!350096))))

(assert (=> bs!1592668 (= lambda!350148 lambda!350000)))

(declare-fun bs!1592677 () Bool)

(assert (= bs!1592677 (and d!1994616 b!6358031)))

(assert (=> bs!1592677 (not (= lambda!350148 lambda!350142))))

(declare-fun bs!1592678 () Bool)

(assert (= bs!1592678 (and d!1994616 b!6357057)))

(assert (=> bs!1592678 (not (= lambda!350148 lambda!350078))))

(assert (=> bs!1592668 (not (= lambda!350148 lambda!350001))))

(declare-fun bs!1592679 () Bool)

(assert (= bs!1592679 (and d!1994616 b!6358023)))

(assert (=> bs!1592679 (not (= lambda!350148 lambda!350141))))

(declare-fun bs!1592680 () Bool)

(assert (= bs!1592680 (and d!1994616 b!6357258)))

(assert (=> bs!1592680 (not (= lambda!350148 lambda!350099))))

(declare-fun bs!1592681 () Bool)

(assert (= bs!1592681 (and d!1994616 b!6357625)))

(assert (=> bs!1592681 (not (= lambda!350148 lambda!350125))))

(declare-fun bs!1592682 () Bool)

(assert (= bs!1592682 (and d!1994616 b!6357404)))

(assert (=> bs!1592682 (not (= lambda!350148 lambda!350110))))

(declare-fun bs!1592683 () Bool)

(assert (= bs!1592683 (and d!1994616 d!1994308)))

(assert (=> bs!1592683 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350148 lambda!350111))))

(declare-fun bs!1592684 () Bool)

(assert (= bs!1592684 (and d!1994616 b!6358034)))

(assert (=> bs!1592684 (not (= lambda!350148 lambda!350143))))

(assert (=> bs!1592668 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350148 lambda!349998))))

(assert (=> bs!1592670 (not (= lambda!350148 lambda!350103))))

(declare-fun bs!1592685 () Bool)

(assert (= bs!1592685 (and d!1994616 b!6357918)))

(assert (=> bs!1592685 (not (= lambda!350148 lambda!350135))))

(declare-fun bs!1592686 () Bool)

(assert (= bs!1592686 (and d!1994616 b!6357250)))

(assert (=> bs!1592686 (not (= lambda!350148 lambda!350098))))

(declare-fun bs!1592687 () Bool)

(assert (= bs!1592687 (and d!1994616 b!6358042)))

(assert (=> bs!1592687 (not (= lambda!350148 lambda!350144))))

(declare-fun bs!1592688 () Bool)

(assert (= bs!1592688 (and d!1994616 d!1994242)))

(assert (=> bs!1592688 (= lambda!350148 lambda!350101)))

(declare-fun bs!1592689 () Bool)

(assert (= bs!1592689 (and d!1994616 d!1994166)))

(assert (=> bs!1592689 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350148 lambda!350061))))

(assert (=> d!1994616 true))

(assert (=> d!1994616 true))

(assert (=> d!1994616 true))

(declare-fun lambda!350153 () Int)

(assert (=> bs!1592664 (not (= lambda!350153 lambda!349995))))

(assert (=> bs!1592665 (not (= lambda!350153 lambda!350129))))

(assert (=> bs!1592666 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350153 lambda!350122))))

(assert (=> bs!1592667 (not (= lambda!350153 lambda!350077))))

(assert (=> bs!1592668 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350153 lambda!349999))))

(assert (=> bs!1592669 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350153 lambda!350113))))

(assert (=> bs!1592670 (not (= lambda!350153 lambda!350102))))

(assert (=> bs!1592671 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350153 lambda!350097))))

(declare-fun bs!1592692 () Bool)

(assert (= bs!1592692 d!1994616))

(assert (=> bs!1592692 (not (= lambda!350153 lambda!350148))))

(assert (=> bs!1592663 (not (= lambda!350153 lambda!350109))))

(assert (=> bs!1592666 (not (= lambda!350153 lambda!350121))))

(assert (=> bs!1592672 (not (= lambda!350153 lambda!350124))))

(assert (=> bs!1592673 (not (= lambda!350153 lambda!350134))))

(assert (=> bs!1592664 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350153 lambda!349996))))

(assert (=> bs!1592669 (not (= lambda!350153 lambda!350112))))

(assert (=> bs!1592674 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33043 lt!2366179))) (= lt!2366173 (regTwo!33042 (regOne!33043 lt!2366179)))) (= lambda!350153 lambda!350130))))

(assert (=> bs!1592675 (not (= lambda!350153 lambda!350145))))

(assert (=> bs!1592676 (not (= lambda!350153 lambda!350138))))

(assert (=> bs!1592671 (not (= lambda!350153 lambda!350096))))

(assert (=> bs!1592668 (not (= lambda!350153 lambda!350000))))

(assert (=> bs!1592677 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regTwo!33043 r!7292))) (= lt!2366173 (regTwo!33042 (regTwo!33043 r!7292)))) (= lambda!350153 lambda!350142))))

(assert (=> bs!1592678 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 lt!2366179)) (= lt!2366173 (regTwo!33042 lt!2366179))) (= lambda!350153 lambda!350078))))

(assert (=> bs!1592668 (= lambda!350153 lambda!350001)))

(assert (=> bs!1592679 (not (= lambda!350153 lambda!350141))))

(assert (=> bs!1592680 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 lt!2366170)) (= lt!2366173 (regTwo!33042 lt!2366170))) (= lambda!350153 lambda!350099))))

(assert (=> bs!1592681 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regTwo!33043 lt!2366179))) (= lt!2366173 (regTwo!33042 (regTwo!33043 lt!2366179)))) (= lambda!350153 lambda!350125))))

(assert (=> bs!1592682 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350153 lambda!350110))))

(assert (=> bs!1592683 (not (= lambda!350153 lambda!350111))))

(assert (=> bs!1592684 (not (= lambda!350153 lambda!350143))))

(assert (=> bs!1592668 (not (= lambda!350153 lambda!349998))))

(assert (=> bs!1592670 (= lambda!350153 lambda!350103)))

(assert (=> bs!1592685 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regTwo!33043 lt!2366170))) (= lt!2366173 (regTwo!33042 (regTwo!33043 lt!2366170)))) (= lambda!350153 lambda!350135))))

(assert (=> bs!1592686 (not (= lambda!350153 lambda!350098))))

(assert (=> bs!1592687 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33043 lt!2366170))) (= lt!2366173 (regTwo!33042 (regOne!33043 lt!2366170)))) (= lambda!350153 lambda!350144))))

(assert (=> bs!1592688 (not (= lambda!350153 lambda!350101))))

(assert (=> bs!1592689 (not (= lambda!350153 lambda!350061))))

(assert (=> d!1994616 true))

(assert (=> d!1994616 true))

(assert (=> d!1994616 true))

(assert (=> d!1994616 (= (Exists!3335 lambda!350148) (Exists!3335 lambda!350153))))

(assert (=> d!1994616 true))

(declare-fun _$90!2199 () Unit!158391)

(assert (=> d!1994616 (= (choose!47209 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326) _$90!2199)))

(declare-fun m!7164218 () Bool)

(assert (=> bs!1592692 m!7164218))

(declare-fun m!7164220 () Bool)

(assert (=> bs!1592692 m!7164220))

(assert (=> d!1994256 d!1994616))

(assert (=> d!1994256 d!1994376))

(assert (=> b!6357441 d!1994348))

(declare-fun d!1994618 () Bool)

(assert (=> d!1994618 (= (isConcat!1190 lt!2366349) ((_ is Concat!25110) lt!2366349))))

(assert (=> b!6357304 d!1994618))

(declare-fun d!1994620 () Bool)

(declare-fun c!1157242 () Bool)

(assert (=> d!1994620 (= c!1157242 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun e!3860985 () Bool)

(assert (=> d!1994620 (= (matchZipper!2277 (derivationStepZipper!2231 z!1189 (head!13023 s!2326)) (tail!12108 s!2326)) e!3860985)))

(declare-fun b!6358168 () Bool)

(assert (=> b!6358168 (= e!3860985 (nullableZipper!2031 (derivationStepZipper!2231 z!1189 (head!13023 s!2326))))))

(declare-fun b!6358169 () Bool)

(assert (=> b!6358169 (= e!3860985 (matchZipper!2277 (derivationStepZipper!2231 (derivationStepZipper!2231 z!1189 (head!13023 s!2326)) (head!13023 (tail!12108 s!2326))) (tail!12108 (tail!12108 s!2326))))))

(assert (= (and d!1994620 c!1157242) b!6358168))

(assert (= (and d!1994620 (not c!1157242)) b!6358169))

(assert (=> d!1994620 m!7163356))

(assert (=> d!1994620 m!7163358))

(assert (=> b!6358168 m!7163394))

(declare-fun m!7164222 () Bool)

(assert (=> b!6358168 m!7164222))

(assert (=> b!6358169 m!7163356))

(assert (=> b!6358169 m!7163876))

(assert (=> b!6358169 m!7163394))

(assert (=> b!6358169 m!7163876))

(declare-fun m!7164224 () Bool)

(assert (=> b!6358169 m!7164224))

(assert (=> b!6358169 m!7163356))

(assert (=> b!6358169 m!7163880))

(assert (=> b!6358169 m!7164224))

(assert (=> b!6358169 m!7163880))

(declare-fun m!7164226 () Bool)

(assert (=> b!6358169 m!7164226))

(assert (=> b!6357318 d!1994620))

(declare-fun bs!1592706 () Bool)

(declare-fun d!1994622 () Bool)

(assert (= bs!1592706 (and d!1994622 b!6356406)))

(declare-fun lambda!350156 () Int)

(assert (=> bs!1592706 (= (= (head!13023 s!2326) (h!71420 s!2326)) (= lambda!350156 lambda!349997))))

(declare-fun bs!1592707 () Bool)

(assert (= bs!1592707 (and d!1994622 d!1994102)))

(assert (=> bs!1592707 (= (= (head!13023 s!2326) (h!71420 s!2326)) (= lambda!350156 lambda!350035))))

(declare-fun bs!1592708 () Bool)

(assert (= bs!1592708 (and d!1994622 d!1994382)))

(assert (=> bs!1592708 (= (= (head!13023 s!2326) (head!13023 (t!378686 s!2326))) (= lambda!350156 lambda!350126))))

(declare-fun bs!1592709 () Bool)

(assert (= bs!1592709 (and d!1994622 d!1994458)))

(assert (=> bs!1592709 (= lambda!350156 lambda!350132)))

(assert (=> d!1994622 true))

(assert (=> d!1994622 (= (derivationStepZipper!2231 z!1189 (head!13023 s!2326)) (flatMap!1770 z!1189 lambda!350156))))

(declare-fun bs!1592710 () Bool)

(assert (= bs!1592710 d!1994622))

(declare-fun m!7164228 () Bool)

(assert (=> bs!1592710 m!7164228))

(assert (=> b!6357318 d!1994622))

(assert (=> b!6357318 d!1994348))

(assert (=> b!6357318 d!1994342))

(declare-fun d!1994624 () Bool)

(assert (=> d!1994624 (= (isEmpty!37074 (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 Nil!64972 s!2326 s!2326)) (not ((_ is Some!16155) (findConcatSeparation!2570 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 Nil!64972 s!2326 s!2326))))))

(assert (=> d!1994232 d!1994624))

(assert (=> b!6357341 d!1994562))

(declare-fun b!6358170 () Bool)

(declare-fun res!2616241 () Bool)

(declare-fun e!3860991 () Bool)

(assert (=> b!6358170 (=> res!2616241 e!3860991)))

(assert (=> b!6358170 (= res!2616241 (not ((_ is Concat!25110) lt!2366230)))))

(declare-fun e!3860992 () Bool)

(assert (=> b!6358170 (= e!3860992 e!3860991)))

(declare-fun bm!542284 () Bool)

(declare-fun c!1157244 () Bool)

(declare-fun call!542290 () Bool)

(declare-fun c!1157243 () Bool)

(assert (=> bm!542284 (= call!542290 (validRegex!8001 (ite c!1157243 (reg!16594 lt!2366230) (ite c!1157244 (regOne!33043 lt!2366230) (regOne!33042 lt!2366230)))))))

(declare-fun b!6358171 () Bool)

(declare-fun e!3860987 () Bool)

(declare-fun call!542289 () Bool)

(assert (=> b!6358171 (= e!3860987 call!542289)))

(declare-fun bm!542285 () Bool)

(assert (=> bm!542285 (= call!542289 (validRegex!8001 (ite c!1157244 (regTwo!33043 lt!2366230) (regTwo!33042 lt!2366230))))))

(declare-fun b!6358172 () Bool)

(declare-fun e!3860986 () Bool)

(assert (=> b!6358172 (= e!3860986 call!542289)))

(declare-fun bm!542286 () Bool)

(declare-fun call!542291 () Bool)

(assert (=> bm!542286 (= call!542291 call!542290)))

(declare-fun b!6358174 () Bool)

(declare-fun e!3860989 () Bool)

(declare-fun e!3860990 () Bool)

(assert (=> b!6358174 (= e!3860989 e!3860990)))

(assert (=> b!6358174 (= c!1157243 ((_ is Star!16265) lt!2366230))))

(declare-fun b!6358175 () Bool)

(assert (=> b!6358175 (= e!3860991 e!3860986)))

(declare-fun res!2616243 () Bool)

(assert (=> b!6358175 (=> (not res!2616243) (not e!3860986))))

(assert (=> b!6358175 (= res!2616243 call!542291)))

(declare-fun b!6358176 () Bool)

(declare-fun res!2616239 () Bool)

(assert (=> b!6358176 (=> (not res!2616239) (not e!3860987))))

(assert (=> b!6358176 (= res!2616239 call!542291)))

(assert (=> b!6358176 (= e!3860992 e!3860987)))

(declare-fun b!6358177 () Bool)

(declare-fun e!3860988 () Bool)

(assert (=> b!6358177 (= e!3860990 e!3860988)))

(declare-fun res!2616240 () Bool)

(assert (=> b!6358177 (= res!2616240 (not (nullable!6258 (reg!16594 lt!2366230))))))

(assert (=> b!6358177 (=> (not res!2616240) (not e!3860988))))

(declare-fun b!6358178 () Bool)

(assert (=> b!6358178 (= e!3860990 e!3860992)))

(assert (=> b!6358178 (= c!1157244 ((_ is Union!16265) lt!2366230))))

(declare-fun d!1994626 () Bool)

(declare-fun res!2616242 () Bool)

(assert (=> d!1994626 (=> res!2616242 e!3860989)))

(assert (=> d!1994626 (= res!2616242 ((_ is ElementMatch!16265) lt!2366230))))

(assert (=> d!1994626 (= (validRegex!8001 lt!2366230) e!3860989)))

(declare-fun b!6358173 () Bool)

(assert (=> b!6358173 (= e!3860988 call!542290)))

(assert (= (and d!1994626 (not res!2616242)) b!6358174))

(assert (= (and b!6358174 c!1157243) b!6358177))

(assert (= (and b!6358174 (not c!1157243)) b!6358178))

(assert (= (and b!6358177 res!2616240) b!6358173))

(assert (= (and b!6358178 c!1157244) b!6358176))

(assert (= (and b!6358178 (not c!1157244)) b!6358170))

(assert (= (and b!6358176 res!2616239) b!6358171))

(assert (= (and b!6358170 (not res!2616241)) b!6358175))

(assert (= (and b!6358175 res!2616243) b!6358172))

(assert (= (or b!6358171 b!6358172) bm!542285))

(assert (= (or b!6358176 b!6358175) bm!542286))

(assert (= (or b!6358173 bm!542286) bm!542284))

(declare-fun m!7164232 () Bool)

(assert (=> bm!542284 m!7164232))

(declare-fun m!7164236 () Bool)

(assert (=> bm!542285 m!7164236))

(declare-fun m!7164238 () Bool)

(assert (=> b!6358177 m!7164238))

(assert (=> d!1994060 d!1994626))

(declare-fun d!1994630 () Bool)

(declare-fun res!2616246 () Bool)

(declare-fun e!3860998 () Bool)

(assert (=> d!1994630 (=> res!2616246 e!3860998)))

(assert (=> d!1994630 (= res!2616246 ((_ is Nil!64970) (unfocusZipperList!1686 zl!343)))))

(assert (=> d!1994630 (= (forall!15441 (unfocusZipperList!1686 zl!343) lambda!350020) e!3860998)))

(declare-fun b!6358179 () Bool)

(declare-fun e!3860999 () Bool)

(assert (=> b!6358179 (= e!3860998 e!3860999)))

(declare-fun res!2616247 () Bool)

(assert (=> b!6358179 (=> (not res!2616247) (not e!3860999))))

(assert (=> b!6358179 (= res!2616247 (dynLambda!25764 lambda!350020 (h!71418 (unfocusZipperList!1686 zl!343))))))

(declare-fun b!6358180 () Bool)

(assert (=> b!6358180 (= e!3860999 (forall!15441 (t!378684 (unfocusZipperList!1686 zl!343)) lambda!350020))))

(assert (= (and d!1994630 (not res!2616246)) b!6358179))

(assert (= (and b!6358179 res!2616247) b!6358180))

(declare-fun b_lambda!241701 () Bool)

(assert (=> (not b_lambda!241701) (not b!6358179)))

(declare-fun m!7164240 () Bool)

(assert (=> b!6358179 m!7164240))

(declare-fun m!7164242 () Bool)

(assert (=> b!6358180 m!7164242))

(assert (=> d!1994060 d!1994630))

(assert (=> b!6357323 d!1994348))

(assert (=> b!6357434 d!1994340))

(assert (=> b!6357434 d!1994342))

(assert (=> b!6357333 d!1994248))

(declare-fun bs!1592711 () Bool)

(declare-fun d!1994632 () Bool)

(assert (= bs!1592711 (and d!1994632 d!1994470)))

(declare-fun lambda!350157 () Int)

(assert (=> bs!1592711 (= lambda!350157 lambda!350133)))

(declare-fun bs!1592712 () Bool)

(assert (= bs!1592712 (and d!1994632 d!1994168)))

(assert (=> bs!1592712 (= lambda!350157 lambda!350067)))

(declare-fun bs!1592713 () Bool)

(assert (= bs!1592713 (and d!1994632 d!1994572)))

(assert (=> bs!1592713 (= lambda!350157 lambda!350146)))

(declare-fun bs!1592714 () Bool)

(assert (= bs!1592714 (and d!1994632 d!1994268)))

(assert (=> bs!1592714 (= lambda!350157 lambda!350106)))

(declare-fun bs!1592715 () Bool)

(assert (= bs!1592715 (and d!1994632 d!1994202)))

(assert (=> bs!1592715 (= lambda!350157 lambda!350079)))

(declare-fun bs!1592716 () Bool)

(assert (= bs!1592716 (and d!1994632 d!1994240)))

(assert (=> bs!1592716 (= lambda!350157 lambda!350100)))

(declare-fun bs!1592717 () Bool)

(assert (= bs!1592717 (and d!1994632 d!1994604)))

(assert (=> bs!1592717 (= lambda!350157 lambda!350147)))

(declare-fun bs!1592718 () Bool)

(assert (= bs!1592718 (and d!1994632 d!1994068)))

(assert (=> bs!1592718 (= lambda!350157 lambda!350024)))

(declare-fun bs!1592719 () Bool)

(assert (= bs!1592719 (and d!1994632 d!1994280)))

(assert (=> bs!1592719 (= lambda!350157 lambda!350108)))

(declare-fun bs!1592720 () Bool)

(assert (= bs!1592720 (and d!1994632 d!1994536)))

(assert (=> bs!1592720 (= lambda!350157 lambda!350140)))

(declare-fun bs!1592721 () Bool)

(assert (= bs!1592721 (and d!1994632 d!1994060)))

(assert (=> bs!1592721 (= lambda!350157 lambda!350020)))

(declare-fun bs!1592722 () Bool)

(assert (= bs!1592722 (and d!1994632 d!1994278)))

(assert (=> bs!1592722 (= lambda!350157 lambda!350107)))

(assert (=> d!1994632 (= (inv!83909 setElem!43300) (forall!15441 (exprs!6149 setElem!43300) lambda!350157))))

(declare-fun bs!1592723 () Bool)

(assert (= bs!1592723 d!1994632))

(declare-fun m!7164260 () Bool)

(assert (=> bs!1592723 m!7164260))

(assert (=> setNonEmpty!43300 d!1994632))

(declare-fun d!1994636 () Bool)

(declare-fun res!2616251 () Bool)

(declare-fun e!3861003 () Bool)

(assert (=> d!1994636 (=> res!2616251 e!3861003)))

(assert (=> d!1994636 (= res!2616251 ((_ is Nil!64971) (t!378685 zl!343)))))

(assert (=> d!1994636 (= (forall!15442 (t!378685 zl!343) lambda!350051) e!3861003)))

(declare-fun b!6358192 () Bool)

(declare-fun e!3861004 () Bool)

(assert (=> b!6358192 (= e!3861003 e!3861004)))

(declare-fun res!2616252 () Bool)

(assert (=> b!6358192 (=> (not res!2616252) (not e!3861004))))

(assert (=> b!6358192 (= res!2616252 (dynLambda!25766 lambda!350051 (h!71419 (t!378685 zl!343))))))

(declare-fun b!6358193 () Bool)

(assert (=> b!6358193 (= e!3861004 (forall!15442 (t!378685 (t!378685 zl!343)) lambda!350051))))

(assert (= (and d!1994636 (not res!2616251)) b!6358192))

(assert (= (and b!6358192 res!2616252) b!6358193))

(declare-fun b_lambda!241703 () Bool)

(assert (=> (not b_lambda!241703) (not b!6358192)))

(declare-fun m!7164264 () Bool)

(assert (=> b!6358192 m!7164264))

(declare-fun m!7164266 () Bool)

(assert (=> b!6358193 m!7164266))

(assert (=> b!6356819 d!1994636))

(declare-fun bs!1592727 () Bool)

(declare-fun b!6358233 () Bool)

(assert (= bs!1592727 (and b!6358233 d!1994470)))

(declare-fun lambda!350163 () Int)

(assert (=> bs!1592727 (not (= lambda!350163 lambda!350133))))

(declare-fun bs!1592728 () Bool)

(assert (= bs!1592728 (and b!6358233 d!1994572)))

(assert (=> bs!1592728 (not (= lambda!350163 lambda!350146))))

(declare-fun bs!1592729 () Bool)

(assert (= bs!1592729 (and b!6358233 d!1994268)))

(assert (=> bs!1592729 (not (= lambda!350163 lambda!350106))))

(declare-fun bs!1592730 () Bool)

(assert (= bs!1592730 (and b!6358233 d!1994202)))

(assert (=> bs!1592730 (not (= lambda!350163 lambda!350079))))

(declare-fun bs!1592731 () Bool)

(assert (= bs!1592731 (and b!6358233 d!1994240)))

(assert (=> bs!1592731 (not (= lambda!350163 lambda!350100))))

(declare-fun bs!1592732 () Bool)

(assert (= bs!1592732 (and b!6358233 d!1994604)))

(assert (=> bs!1592732 (not (= lambda!350163 lambda!350147))))

(declare-fun bs!1592733 () Bool)

(assert (= bs!1592733 (and b!6358233 d!1994068)))

(assert (=> bs!1592733 (not (= lambda!350163 lambda!350024))))

(declare-fun bs!1592734 () Bool)

(assert (= bs!1592734 (and b!6358233 d!1994280)))

(assert (=> bs!1592734 (not (= lambda!350163 lambda!350108))))

(declare-fun bs!1592735 () Bool)

(assert (= bs!1592735 (and b!6358233 d!1994536)))

(assert (=> bs!1592735 (not (= lambda!350163 lambda!350140))))

(declare-fun bs!1592736 () Bool)

(assert (= bs!1592736 (and b!6358233 d!1994632)))

(assert (=> bs!1592736 (not (= lambda!350163 lambda!350157))))

(declare-fun bs!1592737 () Bool)

(assert (= bs!1592737 (and b!6358233 d!1994168)))

(assert (=> bs!1592737 (not (= lambda!350163 lambda!350067))))

(declare-fun bs!1592738 () Bool)

(assert (= bs!1592738 (and b!6358233 d!1994060)))

(assert (=> bs!1592738 (not (= lambda!350163 lambda!350020))))

(declare-fun bs!1592739 () Bool)

(assert (= bs!1592739 (and b!6358233 d!1994278)))

(assert (=> bs!1592739 (not (= lambda!350163 lambda!350107))))

(assert (=> b!6358233 true))

(declare-fun bs!1592740 () Bool)

(declare-fun b!6358235 () Bool)

(assert (= bs!1592740 (and b!6358235 d!1994470)))

(declare-fun lambda!350164 () Int)

(assert (=> bs!1592740 (not (= lambda!350164 lambda!350133))))

(declare-fun bs!1592741 () Bool)

(assert (= bs!1592741 (and b!6358235 d!1994572)))

(assert (=> bs!1592741 (not (= lambda!350164 lambda!350146))))

(declare-fun bs!1592742 () Bool)

(assert (= bs!1592742 (and b!6358235 d!1994268)))

(assert (=> bs!1592742 (not (= lambda!350164 lambda!350106))))

(declare-fun bs!1592743 () Bool)

(assert (= bs!1592743 (and b!6358235 d!1994202)))

(assert (=> bs!1592743 (not (= lambda!350164 lambda!350079))))

(declare-fun bs!1592744 () Bool)

(assert (= bs!1592744 (and b!6358235 d!1994240)))

(assert (=> bs!1592744 (not (= lambda!350164 lambda!350100))))

(declare-fun bs!1592745 () Bool)

(assert (= bs!1592745 (and b!6358235 d!1994604)))

(assert (=> bs!1592745 (not (= lambda!350164 lambda!350147))))

(declare-fun bs!1592746 () Bool)

(assert (= bs!1592746 (and b!6358235 d!1994068)))

(assert (=> bs!1592746 (not (= lambda!350164 lambda!350024))))

(declare-fun bs!1592747 () Bool)

(assert (= bs!1592747 (and b!6358235 d!1994280)))

(assert (=> bs!1592747 (not (= lambda!350164 lambda!350108))))

(declare-fun bs!1592748 () Bool)

(assert (= bs!1592748 (and b!6358235 d!1994536)))

(assert (=> bs!1592748 (not (= lambda!350164 lambda!350140))))

(declare-fun bs!1592749 () Bool)

(assert (= bs!1592749 (and b!6358235 d!1994632)))

(assert (=> bs!1592749 (not (= lambda!350164 lambda!350157))))

(declare-fun bs!1592750 () Bool)

(assert (= bs!1592750 (and b!6358235 d!1994168)))

(assert (=> bs!1592750 (not (= lambda!350164 lambda!350067))))

(declare-fun bs!1592751 () Bool)

(assert (= bs!1592751 (and b!6358235 b!6358233)))

(declare-fun lt!2366439 () Int)

(declare-fun lt!2366440 () Int)

(assert (=> bs!1592751 (= (= lt!2366440 lt!2366439) (= lambda!350164 lambda!350163))))

(declare-fun bs!1592752 () Bool)

(assert (= bs!1592752 (and b!6358235 d!1994060)))

(assert (=> bs!1592752 (not (= lambda!350164 lambda!350020))))

(declare-fun bs!1592753 () Bool)

(assert (= bs!1592753 (and b!6358235 d!1994278)))

(assert (=> bs!1592753 (not (= lambda!350164 lambda!350107))))

(assert (=> b!6358235 true))

(declare-fun d!1994640 () Bool)

(declare-fun e!3861038 () Bool)

(assert (=> d!1994640 e!3861038))

(declare-fun res!2616278 () Bool)

(assert (=> d!1994640 (=> (not res!2616278) (not e!3861038))))

(assert (=> d!1994640 (= res!2616278 (>= lt!2366440 0))))

(declare-fun e!3861037 () Int)

(assert (=> d!1994640 (= lt!2366440 e!3861037)))

(declare-fun c!1157256 () Bool)

(assert (=> d!1994640 (= c!1157256 ((_ is Cons!64970) (exprs!6149 (h!71419 zl!343))))))

(assert (=> d!1994640 (= (contextDepth!260 (h!71419 zl!343)) lt!2366440)))

(assert (=> b!6358233 (= e!3861037 lt!2366439)))

(declare-fun regexDepth!327 (Regex!16265) Int)

(assert (=> b!6358233 (= lt!2366439 (maxBigInt!0 (regexDepth!327 (h!71418 (exprs!6149 (h!71419 zl!343)))) (contextDepth!260 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun lt!2366441 () Unit!158391)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!117 (List!65094 Int Int) Unit!158391)

(assert (=> b!6358233 (= lt!2366441 (lemmaForallRegexDepthBiggerThanTransitive!117 (t!378684 (exprs!6149 (h!71419 zl!343))) lt!2366439 (contextDepth!260 (Context!11299 (t!378684 (exprs!6149 (h!71419 zl!343)))))))))

(assert (=> b!6358233 (forall!15441 (t!378684 (exprs!6149 (h!71419 zl!343))) lambda!350163)))

(declare-fun lt!2366438 () Unit!158391)

(assert (=> b!6358233 (= lt!2366438 lt!2366441)))

(declare-fun b!6358234 () Bool)

(assert (=> b!6358234 (= e!3861037 0)))

(assert (=> b!6358235 (= e!3861038 (forall!15441 (exprs!6149 (h!71419 zl!343)) lambda!350164))))

(assert (= (and d!1994640 c!1157256) b!6358233))

(assert (= (and d!1994640 (not c!1157256)) b!6358234))

(assert (= (and d!1994640 res!2616278) b!6358235))

(declare-fun m!7164280 () Bool)

(assert (=> b!6358233 m!7164280))

(declare-fun m!7164282 () Bool)

(assert (=> b!6358233 m!7164282))

(assert (=> b!6358233 m!7164280))

(declare-fun m!7164284 () Bool)

(assert (=> b!6358233 m!7164284))

(assert (=> b!6358233 m!7164282))

(assert (=> b!6358233 m!7164280))

(declare-fun m!7164286 () Bool)

(assert (=> b!6358233 m!7164286))

(declare-fun m!7164288 () Bool)

(assert (=> b!6358233 m!7164288))

(declare-fun m!7164290 () Bool)

(assert (=> b!6358235 m!7164290))

(assert (=> b!6356819 d!1994640))

(declare-fun bs!1592754 () Bool)

(declare-fun b!6358250 () Bool)

(assert (= bs!1592754 (and b!6358250 b!6356814)))

(declare-fun lambda!350165 () Int)

(assert (=> bs!1592754 (= lambda!350165 lambda!350045)))

(declare-fun bs!1592755 () Bool)

(assert (= bs!1592755 (and b!6358250 b!6356819)))

(assert (=> bs!1592755 (= lambda!350165 lambda!350049)))

(declare-fun lt!2366445 () Int)

(declare-fun lambda!350166 () Int)

(assert (=> bs!1592754 (= (= lt!2366445 lt!2366276) (= lambda!350166 lambda!350046))))

(declare-fun bs!1592756 () Bool)

(assert (= bs!1592756 (and b!6358250 d!1994524)))

(assert (=> bs!1592756 (not (= lambda!350166 lambda!350139))))

(declare-fun bs!1592757 () Bool)

(assert (= bs!1592757 (and b!6358250 d!1994398)))

(assert (=> bs!1592757 (not (= lambda!350166 lambda!350127))))

(declare-fun bs!1592758 () Bool)

(assert (= bs!1592758 (and b!6358250 d!1994436)))

(assert (=> bs!1592758 (not (= lambda!350166 lambda!350131))))

(declare-fun bs!1592759 () Bool)

(assert (= bs!1592759 (and b!6358250 b!6356821)))

(assert (=> bs!1592759 (= (= lt!2366445 lt!2366283) (= lambda!350166 lambda!350052))))

(assert (=> bs!1592755 (= (= lt!2366445 lt!2366281) (= lambda!350166 lambda!350051))))

(declare-fun bs!1592760 () Bool)

(assert (= bs!1592760 (and b!6358250 b!6356816)))

(assert (=> bs!1592760 (= (= lt!2366445 lt!2366278) (= lambda!350166 lambda!350048))))

(declare-fun bs!1592761 () Bool)

(assert (= bs!1592761 (and b!6358250 d!1994400)))

(assert (=> bs!1592761 (not (= lambda!350166 lambda!350128))))

(declare-fun bs!1592762 () Bool)

(assert (= bs!1592762 (and b!6358250 d!1994334)))

(assert (=> bs!1592762 (not (= lambda!350166 lambda!350123))))

(declare-fun bs!1592763 () Bool)

(assert (= bs!1592763 (and b!6358250 d!1994324)))

(assert (=> bs!1592763 (not (= lambda!350166 lambda!350116))))

(assert (=> b!6358250 true))

(declare-fun bs!1592764 () Bool)

(declare-fun b!6358252 () Bool)

(assert (= bs!1592764 (and b!6358252 b!6356814)))

(declare-fun lt!2366447 () Int)

(declare-fun lambda!350167 () Int)

(assert (=> bs!1592764 (= (= lt!2366447 lt!2366276) (= lambda!350167 lambda!350046))))

(declare-fun bs!1592765 () Bool)

(assert (= bs!1592765 (and b!6358252 d!1994524)))

(assert (=> bs!1592765 (not (= lambda!350167 lambda!350139))))

(declare-fun bs!1592766 () Bool)

(assert (= bs!1592766 (and b!6358252 d!1994398)))

(assert (=> bs!1592766 (not (= lambda!350167 lambda!350127))))

(declare-fun bs!1592767 () Bool)

(assert (= bs!1592767 (and b!6358252 d!1994436)))

(assert (=> bs!1592767 (not (= lambda!350167 lambda!350131))))

(declare-fun bs!1592768 () Bool)

(assert (= bs!1592768 (and b!6358252 b!6356821)))

(assert (=> bs!1592768 (= (= lt!2366447 lt!2366283) (= lambda!350167 lambda!350052))))

(declare-fun bs!1592770 () Bool)

(assert (= bs!1592770 (and b!6358252 b!6356819)))

(assert (=> bs!1592770 (= (= lt!2366447 lt!2366281) (= lambda!350167 lambda!350051))))

(declare-fun bs!1592771 () Bool)

(assert (= bs!1592771 (and b!6358252 b!6356816)))

(assert (=> bs!1592771 (= (= lt!2366447 lt!2366278) (= lambda!350167 lambda!350048))))

(declare-fun bs!1592772 () Bool)

(assert (= bs!1592772 (and b!6358252 b!6358250)))

(assert (=> bs!1592772 (= (= lt!2366447 lt!2366445) (= lambda!350167 lambda!350166))))

(declare-fun bs!1592773 () Bool)

(assert (= bs!1592773 (and b!6358252 d!1994400)))

(assert (=> bs!1592773 (not (= lambda!350167 lambda!350128))))

(declare-fun bs!1592774 () Bool)

(assert (= bs!1592774 (and b!6358252 d!1994334)))

(assert (=> bs!1592774 (not (= lambda!350167 lambda!350123))))

(declare-fun bs!1592775 () Bool)

(assert (= bs!1592775 (and b!6358252 d!1994324)))

(assert (=> bs!1592775 (not (= lambda!350167 lambda!350116))))

(assert (=> b!6358252 true))

(declare-fun d!1994660 () Bool)

(declare-fun e!3861046 () Bool)

(assert (=> d!1994660 e!3861046))

(declare-fun res!2616285 () Bool)

(assert (=> d!1994660 (=> (not res!2616285) (not e!3861046))))

(assert (=> d!1994660 (= res!2616285 (>= lt!2366447 0))))

(declare-fun e!3861045 () Int)

(assert (=> d!1994660 (= lt!2366447 e!3861045)))

(declare-fun c!1157260 () Bool)

(assert (=> d!1994660 (= c!1157260 ((_ is Cons!64971) (t!378685 zl!343)))))

(assert (=> d!1994660 (= (zipperDepth!372 (t!378685 zl!343)) lt!2366447)))

(assert (=> b!6358250 (= e!3861045 lt!2366445)))

(assert (=> b!6358250 (= lt!2366445 (maxBigInt!0 (contextDepth!260 (h!71419 (t!378685 zl!343))) (zipperDepth!372 (t!378685 (t!378685 zl!343)))))))

(declare-fun lt!2366446 () Unit!158391)

(assert (=> b!6358250 (= lt!2366446 (lemmaForallContextDepthBiggerThanTransitive!244 (t!378685 (t!378685 zl!343)) lt!2366445 (zipperDepth!372 (t!378685 (t!378685 zl!343))) lambda!350165))))

(assert (=> b!6358250 (forall!15442 (t!378685 (t!378685 zl!343)) lambda!350166)))

(declare-fun lt!2366448 () Unit!158391)

(assert (=> b!6358250 (= lt!2366448 lt!2366446)))

(declare-fun b!6358251 () Bool)

(assert (=> b!6358251 (= e!3861045 0)))

(assert (=> b!6358252 (= e!3861046 (forall!15442 (t!378685 zl!343) lambda!350167))))

(assert (= (and d!1994660 c!1157260) b!6358250))

(assert (= (and d!1994660 (not c!1157260)) b!6358251))

(assert (= (and d!1994660 res!2616285) b!6358252))

(declare-fun m!7164306 () Bool)

(assert (=> b!6358250 m!7164306))

(declare-fun m!7164308 () Bool)

(assert (=> b!6358250 m!7164308))

(declare-fun m!7164310 () Bool)

(assert (=> b!6358250 m!7164310))

(assert (=> b!6358250 m!7164306))

(declare-fun m!7164312 () Bool)

(assert (=> b!6358250 m!7164312))

(assert (=> b!6358250 m!7164310))

(declare-fun m!7164314 () Bool)

(assert (=> b!6358250 m!7164314))

(assert (=> b!6358250 m!7164306))

(declare-fun m!7164316 () Bool)

(assert (=> b!6358252 m!7164316))

(assert (=> b!6356819 d!1994660))

(declare-fun d!1994668 () Bool)

(assert (=> d!1994668 (= (maxBigInt!0 (contextDepth!260 (h!71419 zl!343)) (zipperDepth!372 (t!378685 zl!343))) (ite (>= (contextDepth!260 (h!71419 zl!343)) (zipperDepth!372 (t!378685 zl!343))) (contextDepth!260 (h!71419 zl!343)) (zipperDepth!372 (t!378685 zl!343))))))

(assert (=> b!6356819 d!1994668))

(declare-fun bs!1592783 () Bool)

(declare-fun d!1994670 () Bool)

(assert (= bs!1592783 (and d!1994670 b!6358252)))

(declare-fun lambda!350173 () Int)

(assert (=> bs!1592783 (not (= lambda!350173 lambda!350167))))

(declare-fun bs!1592784 () Bool)

(assert (= bs!1592784 (and d!1994670 b!6356814)))

(assert (=> bs!1592784 (not (= lambda!350173 lambda!350046))))

(declare-fun bs!1592785 () Bool)

(assert (= bs!1592785 (and d!1994670 d!1994524)))

(assert (=> bs!1592785 (not (= lambda!350173 lambda!350139))))

(declare-fun bs!1592786 () Bool)

(assert (= bs!1592786 (and d!1994670 d!1994398)))

(assert (=> bs!1592786 (not (= lambda!350173 lambda!350127))))

(declare-fun bs!1592787 () Bool)

(assert (= bs!1592787 (and d!1994670 d!1994436)))

(assert (=> bs!1592787 (not (= lambda!350173 lambda!350131))))

(declare-fun bs!1592788 () Bool)

(assert (= bs!1592788 (and d!1994670 b!6356821)))

(assert (=> bs!1592788 (not (= lambda!350173 lambda!350052))))

(declare-fun bs!1592789 () Bool)

(assert (= bs!1592789 (and d!1994670 b!6356819)))

(assert (=> bs!1592789 (not (= lambda!350173 lambda!350051))))

(declare-fun bs!1592790 () Bool)

(assert (= bs!1592790 (and d!1994670 b!6356816)))

(assert (=> bs!1592790 (not (= lambda!350173 lambda!350048))))

(declare-fun bs!1592791 () Bool)

(assert (= bs!1592791 (and d!1994670 b!6358250)))

(assert (=> bs!1592791 (not (= lambda!350173 lambda!350166))))

(declare-fun bs!1592792 () Bool)

(assert (= bs!1592792 (and d!1994670 d!1994400)))

(assert (=> bs!1592792 (not (= lambda!350173 lambda!350128))))

(declare-fun bs!1592793 () Bool)

(assert (= bs!1592793 (and d!1994670 d!1994334)))

(assert (=> bs!1592793 (not (= lambda!350173 lambda!350123))))

(declare-fun bs!1592794 () Bool)

(assert (= bs!1592794 (and d!1994670 d!1994324)))

(assert (=> bs!1592794 (not (= lambda!350173 lambda!350116))))

(assert (=> d!1994670 true))

(assert (=> d!1994670 true))

(declare-fun order!27525 () Int)

(declare-fun order!27527 () Int)

(declare-fun dynLambda!25768 (Int Int) Int)

(declare-fun dynLambda!25769 (Int Int) Int)

(assert (=> d!1994670 (< (dynLambda!25768 order!27525 lambda!350049) (dynLambda!25769 order!27527 lambda!350173))))

(assert (=> d!1994670 (forall!15442 (t!378685 zl!343) lambda!350173)))

(declare-fun lt!2366451 () Unit!158391)

(declare-fun choose!47217 (List!65095 Int Int Int) Unit!158391)

(assert (=> d!1994670 (= lt!2366451 (choose!47217 (t!378685 zl!343) lt!2366281 (zipperDepth!372 (t!378685 zl!343)) lambda!350049))))

(assert (=> d!1994670 (>= lt!2366281 (zipperDepth!372 (t!378685 zl!343)))))

(assert (=> d!1994670 (= (lemmaForallContextDepthBiggerThanTransitive!244 (t!378685 zl!343) lt!2366281 (zipperDepth!372 (t!378685 zl!343)) lambda!350049) lt!2366451)))

(declare-fun bs!1592795 () Bool)

(assert (= bs!1592795 d!1994670))

(declare-fun m!7164334 () Bool)

(assert (=> bs!1592795 m!7164334))

(assert (=> bs!1592795 m!7162996))

(declare-fun m!7164336 () Bool)

(assert (=> bs!1592795 m!7164336))

(assert (=> b!6356819 d!1994670))

(assert (=> d!1994290 d!1994362))

(assert (=> d!1994290 d!1994048))

(assert (=> b!6356693 d!1994278))

(declare-fun bs!1592796 () Bool)

(declare-fun d!1994680 () Bool)

(assert (= bs!1592796 (and d!1994680 d!1994470)))

(declare-fun lambda!350174 () Int)

(assert (=> bs!1592796 (= lambda!350174 lambda!350133)))

(declare-fun bs!1592797 () Bool)

(assert (= bs!1592797 (and d!1994680 d!1994268)))

(assert (=> bs!1592797 (= lambda!350174 lambda!350106)))

(declare-fun bs!1592798 () Bool)

(assert (= bs!1592798 (and d!1994680 d!1994202)))

(assert (=> bs!1592798 (= lambda!350174 lambda!350079)))

(declare-fun bs!1592799 () Bool)

(assert (= bs!1592799 (and d!1994680 d!1994240)))

(assert (=> bs!1592799 (= lambda!350174 lambda!350100)))

(declare-fun bs!1592800 () Bool)

(assert (= bs!1592800 (and d!1994680 d!1994604)))

(assert (=> bs!1592800 (= lambda!350174 lambda!350147)))

(declare-fun bs!1592801 () Bool)

(assert (= bs!1592801 (and d!1994680 d!1994068)))

(assert (=> bs!1592801 (= lambda!350174 lambda!350024)))

(declare-fun bs!1592802 () Bool)

(assert (= bs!1592802 (and d!1994680 d!1994280)))

(assert (=> bs!1592802 (= lambda!350174 lambda!350108)))

(declare-fun bs!1592803 () Bool)

(assert (= bs!1592803 (and d!1994680 d!1994536)))

(assert (=> bs!1592803 (= lambda!350174 lambda!350140)))

(declare-fun bs!1592804 () Bool)

(assert (= bs!1592804 (and d!1994680 d!1994632)))

(assert (=> bs!1592804 (= lambda!350174 lambda!350157)))

(declare-fun bs!1592805 () Bool)

(assert (= bs!1592805 (and d!1994680 d!1994168)))

(assert (=> bs!1592805 (= lambda!350174 lambda!350067)))

(declare-fun bs!1592806 () Bool)

(assert (= bs!1592806 (and d!1994680 b!6358235)))

(assert (=> bs!1592806 (not (= lambda!350174 lambda!350164))))

(declare-fun bs!1592807 () Bool)

(assert (= bs!1592807 (and d!1994680 d!1994572)))

(assert (=> bs!1592807 (= lambda!350174 lambda!350146)))

(declare-fun bs!1592808 () Bool)

(assert (= bs!1592808 (and d!1994680 b!6358233)))

(assert (=> bs!1592808 (not (= lambda!350174 lambda!350163))))

(declare-fun bs!1592809 () Bool)

(assert (= bs!1592809 (and d!1994680 d!1994060)))

(assert (=> bs!1592809 (= lambda!350174 lambda!350020)))

(declare-fun bs!1592810 () Bool)

(assert (= bs!1592810 (and d!1994680 d!1994278)))

(assert (=> bs!1592810 (= lambda!350174 lambda!350107)))

(declare-fun lt!2366453 () List!65094)

(assert (=> d!1994680 (forall!15441 lt!2366453 lambda!350174)))

(declare-fun e!3861057 () List!65094)

(assert (=> d!1994680 (= lt!2366453 e!3861057)))

(declare-fun c!1157270 () Bool)

(assert (=> d!1994680 (= c!1157270 ((_ is Cons!64971) (t!378685 zl!343)))))

(assert (=> d!1994680 (= (unfocusZipperList!1686 (t!378685 zl!343)) lt!2366453)))

(declare-fun b!6358276 () Bool)

(assert (=> b!6358276 (= e!3861057 (Cons!64970 (generalisedConcat!1862 (exprs!6149 (h!71419 (t!378685 zl!343)))) (unfocusZipperList!1686 (t!378685 (t!378685 zl!343)))))))

(declare-fun b!6358277 () Bool)

(assert (=> b!6358277 (= e!3861057 Nil!64970)))

(assert (= (and d!1994680 c!1157270) b!6358276))

(assert (= (and d!1994680 (not c!1157270)) b!6358277))

(declare-fun m!7164344 () Bool)

(assert (=> d!1994680 m!7164344))

(declare-fun m!7164346 () Bool)

(assert (=> b!6358276 m!7164346))

(declare-fun m!7164348 () Bool)

(assert (=> b!6358276 m!7164348))

(assert (=> b!6356693 d!1994680))

(declare-fun d!1994684 () Bool)

(declare-fun c!1157274 () Bool)

(assert (=> d!1994684 (= c!1157274 (and ((_ is ElementMatch!16265) (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))) (= (c!1156730 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))) (h!71420 s!2326))))))

(declare-fun e!3861061 () (InoxSet Context!11298))

(assert (=> d!1994684 (= (derivationStepZipperDown!1513 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))) (ite c!1157034 (Context!11299 lt!2366161) (Context!11299 call!542158)) (h!71420 s!2326)) e!3861061)))

(declare-fun b!6358278 () Bool)

(declare-fun c!1157272 () Bool)

(assert (=> b!6358278 (= c!1157272 ((_ is Star!16265) (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))))))

(declare-fun e!3861058 () (InoxSet Context!11298))

(declare-fun e!3861060 () (InoxSet Context!11298))

(assert (=> b!6358278 (= e!3861058 e!3861060)))

(declare-fun bm!542301 () Bool)

(declare-fun call!542309 () (InoxSet Context!11298))

(declare-fun call!542306 () (InoxSet Context!11298))

(assert (=> bm!542301 (= call!542309 call!542306)))

(declare-fun b!6358279 () Bool)

(declare-fun e!3861062 () (InoxSet Context!11298))

(assert (=> b!6358279 (= e!3861061 e!3861062)))

(declare-fun c!1157271 () Bool)

(assert (=> b!6358279 (= c!1157271 ((_ is Union!16265) (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))))))

(declare-fun b!6358280 () Bool)

(assert (=> b!6358280 (= e!3861058 call!542309)))

(declare-fun call!542307 () (InoxSet Context!11298))

(declare-fun bm!542302 () Bool)

(declare-fun c!1157275 () Bool)

(declare-fun c!1157273 () Bool)

(declare-fun call!542310 () List!65094)

(assert (=> bm!542302 (= call!542307 (derivationStepZipperDown!1513 (ite c!1157271 (regTwo!33043 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))) (ite c!1157273 (regTwo!33042 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))) (ite c!1157275 (regOne!33042 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))) (reg!16594 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))))))) (ite (or c!1157271 c!1157273) (ite c!1157034 (Context!11299 lt!2366161) (Context!11299 call!542158)) (Context!11299 call!542310)) (h!71420 s!2326)))))

(declare-fun b!6358281 () Bool)

(declare-fun call!542308 () (InoxSet Context!11298))

(assert (=> b!6358281 (= e!3861062 ((_ map or) call!542308 call!542307))))

(declare-fun b!6358282 () Bool)

(declare-fun e!3861059 () (InoxSet Context!11298))

(assert (=> b!6358282 (= e!3861059 ((_ map or) call!542308 call!542306))))

(declare-fun b!6358283 () Bool)

(assert (=> b!6358283 (= e!3861061 (store ((as const (Array Context!11298 Bool)) false) (ite c!1157034 (Context!11299 lt!2366161) (Context!11299 call!542158)) true))))

(declare-fun b!6358284 () Bool)

(declare-fun e!3861063 () Bool)

(assert (=> b!6358284 (= e!3861063 (nullable!6258 (regOne!33042 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))))))))

(declare-fun bm!542303 () Bool)

(assert (=> bm!542303 (= call!542306 call!542307)))

(declare-fun bm!542304 () Bool)

(declare-fun call!542311 () List!65094)

(assert (=> bm!542304 (= call!542311 ($colon$colon!2126 (exprs!6149 (ite c!1157034 (Context!11299 lt!2366161) (Context!11299 call!542158))) (ite (or c!1157273 c!1157275) (regTwo!33042 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))) (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))))))))

(declare-fun bm!542305 () Bool)

(assert (=> bm!542305 (= call!542310 call!542311)))

(declare-fun b!6358285 () Bool)

(assert (=> b!6358285 (= c!1157273 e!3861063)))

(declare-fun res!2616295 () Bool)

(assert (=> b!6358285 (=> (not res!2616295) (not e!3861063))))

(assert (=> b!6358285 (= res!2616295 ((_ is Concat!25110) (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))))))

(assert (=> b!6358285 (= e!3861062 e!3861059)))

(declare-fun b!6358286 () Bool)

(assert (=> b!6358286 (= e!3861060 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6358287 () Bool)

(assert (=> b!6358287 (= e!3861060 call!542309)))

(declare-fun bm!542306 () Bool)

(assert (=> bm!542306 (= call!542308 (derivationStepZipperDown!1513 (ite c!1157271 (regOne!33043 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))) (regOne!33042 (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292)))))) (ite c!1157271 (ite c!1157034 (Context!11299 lt!2366161) (Context!11299 call!542158)) (Context!11299 call!542311)) (h!71420 s!2326)))))

(declare-fun b!6358288 () Bool)

(assert (=> b!6358288 (= e!3861059 e!3861058)))

(assert (=> b!6358288 (= c!1157275 ((_ is Concat!25110) (ite c!1157034 (regOne!33043 (regOne!33042 (regOne!33042 r!7292))) (regOne!33042 (regOne!33042 (regOne!33042 r!7292))))))))

(assert (= (and d!1994684 c!1157274) b!6358283))

(assert (= (and d!1994684 (not c!1157274)) b!6358279))

(assert (= (and b!6358279 c!1157271) b!6358281))

(assert (= (and b!6358279 (not c!1157271)) b!6358285))

(assert (= (and b!6358285 res!2616295) b!6358284))

(assert (= (and b!6358285 c!1157273) b!6358282))

(assert (= (and b!6358285 (not c!1157273)) b!6358288))

(assert (= (and b!6358288 c!1157275) b!6358280))

(assert (= (and b!6358288 (not c!1157275)) b!6358278))

(assert (= (and b!6358278 c!1157272) b!6358287))

(assert (= (and b!6358278 (not c!1157272)) b!6358286))

(assert (= (or b!6358280 b!6358287) bm!542305))

(assert (= (or b!6358280 b!6358287) bm!542301))

(assert (= (or b!6358282 bm!542305) bm!542304))

(assert (= (or b!6358282 bm!542301) bm!542303))

(assert (= (or b!6358281 bm!542303) bm!542302))

(assert (= (or b!6358281 b!6358282) bm!542306))

(declare-fun m!7164350 () Bool)

(assert (=> b!6358283 m!7164350))

(declare-fun m!7164352 () Bool)

(assert (=> bm!542302 m!7164352))

(declare-fun m!7164354 () Bool)

(assert (=> b!6358284 m!7164354))

(declare-fun m!7164356 () Bool)

(assert (=> bm!542306 m!7164356))

(declare-fun m!7164358 () Bool)

(assert (=> bm!542304 m!7164358))

(assert (=> bm!542153 d!1994684))

(declare-fun d!1994686 () Bool)

(assert (=> d!1994686 (= (nullable!6258 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))) (nullableFct!2204 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173))))))

(declare-fun bs!1592811 () Bool)

(assert (= bs!1592811 d!1994686))

(declare-fun m!7164360 () Bool)

(assert (=> bs!1592811 m!7164360))

(assert (=> b!6357470 d!1994686))

(assert (=> b!6357332 d!1994340))

(assert (=> b!6357332 d!1994342))

(assert (=> b!6357450 d!1994340))

(assert (=> b!6357450 d!1994342))

(assert (=> b!6357137 d!1994372))

(assert (=> b!6357289 d!1994348))

(declare-fun d!1994688 () Bool)

(declare-fun res!2616296 () Bool)

(declare-fun e!3861072 () Bool)

(assert (=> d!1994688 (=> res!2616296 e!3861072)))

(assert (=> d!1994688 (= res!2616296 ((_ is Nil!64970) (exprs!6149 (h!71419 zl!343))))))

(assert (=> d!1994688 (= (forall!15441 (exprs!6149 (h!71419 zl!343)) lambda!350106) e!3861072)))

(declare-fun b!6358305 () Bool)

(declare-fun e!3861073 () Bool)

(assert (=> b!6358305 (= e!3861072 e!3861073)))

(declare-fun res!2616297 () Bool)

(assert (=> b!6358305 (=> (not res!2616297) (not e!3861073))))

(assert (=> b!6358305 (= res!2616297 (dynLambda!25764 lambda!350106 (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6358306 () Bool)

(assert (=> b!6358306 (= e!3861073 (forall!15441 (t!378684 (exprs!6149 (h!71419 zl!343))) lambda!350106))))

(assert (= (and d!1994688 (not res!2616296)) b!6358305))

(assert (= (and b!6358305 res!2616297) b!6358306))

(declare-fun b_lambda!241707 () Bool)

(assert (=> (not b_lambda!241707) (not b!6358305)))

(declare-fun m!7164362 () Bool)

(assert (=> b!6358305 m!7164362))

(declare-fun m!7164364 () Bool)

(assert (=> b!6358306 m!7164364))

(assert (=> d!1994268 d!1994688))

(declare-fun d!1994690 () Bool)

(assert (=> d!1994690 (= (maxBigInt!0 (contextDepth!260 (h!71419 lt!2366165)) (zipperDepth!372 (t!378685 lt!2366165))) (ite (>= (contextDepth!260 (h!71419 lt!2366165)) (zipperDepth!372 (t!378685 lt!2366165))) (contextDepth!260 (h!71419 lt!2366165)) (zipperDepth!372 (t!378685 lt!2366165))))))

(assert (=> b!6356814 d!1994690))

(declare-fun bs!1592812 () Bool)

(declare-fun d!1994692 () Bool)

(assert (= bs!1592812 (and d!1994692 b!6358252)))

(declare-fun lambda!350175 () Int)

(assert (=> bs!1592812 (not (= lambda!350175 lambda!350167))))

(declare-fun bs!1592813 () Bool)

(assert (= bs!1592813 (and d!1994692 b!6356814)))

(assert (=> bs!1592813 (not (= lambda!350175 lambda!350046))))

(declare-fun bs!1592814 () Bool)

(assert (= bs!1592814 (and d!1994692 d!1994524)))

(assert (=> bs!1592814 (not (= lambda!350175 lambda!350139))))

(declare-fun bs!1592815 () Bool)

(assert (= bs!1592815 (and d!1994692 d!1994398)))

(assert (=> bs!1592815 (not (= lambda!350175 lambda!350127))))

(declare-fun bs!1592816 () Bool)

(assert (= bs!1592816 (and d!1994692 d!1994436)))

(assert (=> bs!1592816 (not (= lambda!350175 lambda!350131))))

(declare-fun bs!1592817 () Bool)

(assert (= bs!1592817 (and d!1994692 b!6356821)))

(assert (=> bs!1592817 (not (= lambda!350175 lambda!350052))))

(declare-fun bs!1592818 () Bool)

(assert (= bs!1592818 (and d!1994692 d!1994670)))

(assert (=> bs!1592818 (= (and (= lt!2366276 lt!2366281) (= lambda!350045 lambda!350049)) (= lambda!350175 lambda!350173))))

(declare-fun bs!1592819 () Bool)

(assert (= bs!1592819 (and d!1994692 b!6356819)))

(assert (=> bs!1592819 (not (= lambda!350175 lambda!350051))))

(declare-fun bs!1592820 () Bool)

(assert (= bs!1592820 (and d!1994692 b!6356816)))

(assert (=> bs!1592820 (not (= lambda!350175 lambda!350048))))

(declare-fun bs!1592821 () Bool)

(assert (= bs!1592821 (and d!1994692 b!6358250)))

(assert (=> bs!1592821 (not (= lambda!350175 lambda!350166))))

(declare-fun bs!1592822 () Bool)

(assert (= bs!1592822 (and d!1994692 d!1994400)))

(assert (=> bs!1592822 (not (= lambda!350175 lambda!350128))))

(declare-fun bs!1592823 () Bool)

(assert (= bs!1592823 (and d!1994692 d!1994334)))

(assert (=> bs!1592823 (not (= lambda!350175 lambda!350123))))

(declare-fun bs!1592824 () Bool)

(assert (= bs!1592824 (and d!1994692 d!1994324)))

(assert (=> bs!1592824 (not (= lambda!350175 lambda!350116))))

(assert (=> d!1994692 true))

(assert (=> d!1994692 true))

(assert (=> d!1994692 (< (dynLambda!25768 order!27525 lambda!350045) (dynLambda!25769 order!27527 lambda!350175))))

(assert (=> d!1994692 (forall!15442 (t!378685 lt!2366165) lambda!350175)))

(declare-fun lt!2366456 () Unit!158391)

(assert (=> d!1994692 (= lt!2366456 (choose!47217 (t!378685 lt!2366165) lt!2366276 (zipperDepth!372 (t!378685 lt!2366165)) lambda!350045))))

(assert (=> d!1994692 (>= lt!2366276 (zipperDepth!372 (t!378685 lt!2366165)))))

(assert (=> d!1994692 (= (lemmaForallContextDepthBiggerThanTransitive!244 (t!378685 lt!2366165) lt!2366276 (zipperDepth!372 (t!378685 lt!2366165)) lambda!350045) lt!2366456)))

(declare-fun bs!1592825 () Bool)

(assert (= bs!1592825 d!1994692))

(declare-fun m!7164366 () Bool)

(assert (=> bs!1592825 m!7164366))

(assert (=> bs!1592825 m!7162984))

(declare-fun m!7164368 () Bool)

(assert (=> bs!1592825 m!7164368))

(assert (=> b!6356814 d!1994692))

(declare-fun bs!1592826 () Bool)

(declare-fun b!6358307 () Bool)

(assert (= bs!1592826 (and b!6358307 b!6356814)))

(declare-fun lambda!350176 () Int)

(assert (=> bs!1592826 (= lambda!350176 lambda!350045)))

(declare-fun bs!1592827 () Bool)

(assert (= bs!1592827 (and b!6358307 b!6356819)))

(assert (=> bs!1592827 (= lambda!350176 lambda!350049)))

(declare-fun bs!1592828 () Bool)

(assert (= bs!1592828 (and b!6358307 b!6358250)))

(assert (=> bs!1592828 (= lambda!350176 lambda!350165)))

(declare-fun bs!1592829 () Bool)

(assert (= bs!1592829 (and b!6358307 b!6358252)))

(declare-fun lambda!350177 () Int)

(declare-fun lt!2366457 () Int)

(assert (=> bs!1592829 (= (= lt!2366457 lt!2366447) (= lambda!350177 lambda!350167))))

(assert (=> bs!1592826 (= (= lt!2366457 lt!2366276) (= lambda!350177 lambda!350046))))

(declare-fun bs!1592830 () Bool)

(assert (= bs!1592830 (and b!6358307 d!1994524)))

(assert (=> bs!1592830 (not (= lambda!350177 lambda!350139))))

(declare-fun bs!1592831 () Bool)

(assert (= bs!1592831 (and b!6358307 d!1994398)))

(assert (=> bs!1592831 (not (= lambda!350177 lambda!350127))))

(declare-fun bs!1592832 () Bool)

(assert (= bs!1592832 (and b!6358307 d!1994436)))

(assert (=> bs!1592832 (not (= lambda!350177 lambda!350131))))

(declare-fun bs!1592833 () Bool)

(assert (= bs!1592833 (and b!6358307 b!6356821)))

(assert (=> bs!1592833 (= (= lt!2366457 lt!2366283) (= lambda!350177 lambda!350052))))

(declare-fun bs!1592834 () Bool)

(assert (= bs!1592834 (and b!6358307 d!1994670)))

(assert (=> bs!1592834 (not (= lambda!350177 lambda!350173))))

(assert (=> bs!1592827 (= (= lt!2366457 lt!2366281) (= lambda!350177 lambda!350051))))

(declare-fun bs!1592835 () Bool)

(assert (= bs!1592835 (and b!6358307 b!6356816)))

(assert (=> bs!1592835 (= (= lt!2366457 lt!2366278) (= lambda!350177 lambda!350048))))

(declare-fun bs!1592836 () Bool)

(assert (= bs!1592836 (and b!6358307 d!1994692)))

(assert (=> bs!1592836 (not (= lambda!350177 lambda!350175))))

(assert (=> bs!1592828 (= (= lt!2366457 lt!2366445) (= lambda!350177 lambda!350166))))

(declare-fun bs!1592837 () Bool)

(assert (= bs!1592837 (and b!6358307 d!1994400)))

(assert (=> bs!1592837 (not (= lambda!350177 lambda!350128))))

(declare-fun bs!1592838 () Bool)

(assert (= bs!1592838 (and b!6358307 d!1994334)))

(assert (=> bs!1592838 (not (= lambda!350177 lambda!350123))))

(declare-fun bs!1592839 () Bool)

(assert (= bs!1592839 (and b!6358307 d!1994324)))

(assert (=> bs!1592839 (not (= lambda!350177 lambda!350116))))

(assert (=> b!6358307 true))

(declare-fun bs!1592840 () Bool)

(declare-fun b!6358309 () Bool)

(assert (= bs!1592840 (and b!6358309 b!6358252)))

(declare-fun lambda!350178 () Int)

(declare-fun lt!2366459 () Int)

(assert (=> bs!1592840 (= (= lt!2366459 lt!2366447) (= lambda!350178 lambda!350167))))

(declare-fun bs!1592841 () Bool)

(assert (= bs!1592841 (and b!6358309 d!1994524)))

(assert (=> bs!1592841 (not (= lambda!350178 lambda!350139))))

(declare-fun bs!1592842 () Bool)

(assert (= bs!1592842 (and b!6358309 d!1994398)))

(assert (=> bs!1592842 (not (= lambda!350178 lambda!350127))))

(declare-fun bs!1592843 () Bool)

(assert (= bs!1592843 (and b!6358309 d!1994436)))

(assert (=> bs!1592843 (not (= lambda!350178 lambda!350131))))

(declare-fun bs!1592844 () Bool)

(assert (= bs!1592844 (and b!6358309 b!6356821)))

(assert (=> bs!1592844 (= (= lt!2366459 lt!2366283) (= lambda!350178 lambda!350052))))

(declare-fun bs!1592845 () Bool)

(assert (= bs!1592845 (and b!6358309 d!1994670)))

(assert (=> bs!1592845 (not (= lambda!350178 lambda!350173))))

(declare-fun bs!1592846 () Bool)

(assert (= bs!1592846 (and b!6358309 b!6356819)))

(assert (=> bs!1592846 (= (= lt!2366459 lt!2366281) (= lambda!350178 lambda!350051))))

(declare-fun bs!1592847 () Bool)

(assert (= bs!1592847 (and b!6358309 b!6356816)))

(assert (=> bs!1592847 (= (= lt!2366459 lt!2366278) (= lambda!350178 lambda!350048))))

(declare-fun bs!1592848 () Bool)

(assert (= bs!1592848 (and b!6358309 d!1994692)))

(assert (=> bs!1592848 (not (= lambda!350178 lambda!350175))))

(declare-fun bs!1592849 () Bool)

(assert (= bs!1592849 (and b!6358309 b!6358250)))

(assert (=> bs!1592849 (= (= lt!2366459 lt!2366445) (= lambda!350178 lambda!350166))))

(declare-fun bs!1592850 () Bool)

(assert (= bs!1592850 (and b!6358309 b!6358307)))

(assert (=> bs!1592850 (= (= lt!2366459 lt!2366457) (= lambda!350178 lambda!350177))))

(declare-fun bs!1592851 () Bool)

(assert (= bs!1592851 (and b!6358309 b!6356814)))

(assert (=> bs!1592851 (= (= lt!2366459 lt!2366276) (= lambda!350178 lambda!350046))))

(declare-fun bs!1592852 () Bool)

(assert (= bs!1592852 (and b!6358309 d!1994400)))

(assert (=> bs!1592852 (not (= lambda!350178 lambda!350128))))

(declare-fun bs!1592853 () Bool)

(assert (= bs!1592853 (and b!6358309 d!1994334)))

(assert (=> bs!1592853 (not (= lambda!350178 lambda!350123))))

(declare-fun bs!1592854 () Bool)

(assert (= bs!1592854 (and b!6358309 d!1994324)))

(assert (=> bs!1592854 (not (= lambda!350178 lambda!350116))))

(assert (=> b!6358309 true))

(declare-fun d!1994694 () Bool)

(declare-fun e!3861075 () Bool)

(assert (=> d!1994694 e!3861075))

(declare-fun res!2616298 () Bool)

(assert (=> d!1994694 (=> (not res!2616298) (not e!3861075))))

(assert (=> d!1994694 (= res!2616298 (>= lt!2366459 0))))

(declare-fun e!3861074 () Int)

(assert (=> d!1994694 (= lt!2366459 e!3861074)))

(declare-fun c!1157284 () Bool)

(assert (=> d!1994694 (= c!1157284 ((_ is Cons!64971) (t!378685 lt!2366165)))))

(assert (=> d!1994694 (= (zipperDepth!372 (t!378685 lt!2366165)) lt!2366459)))

(assert (=> b!6358307 (= e!3861074 lt!2366457)))

(assert (=> b!6358307 (= lt!2366457 (maxBigInt!0 (contextDepth!260 (h!71419 (t!378685 lt!2366165))) (zipperDepth!372 (t!378685 (t!378685 lt!2366165)))))))

(declare-fun lt!2366458 () Unit!158391)

(assert (=> b!6358307 (= lt!2366458 (lemmaForallContextDepthBiggerThanTransitive!244 (t!378685 (t!378685 lt!2366165)) lt!2366457 (zipperDepth!372 (t!378685 (t!378685 lt!2366165))) lambda!350176))))

(assert (=> b!6358307 (forall!15442 (t!378685 (t!378685 lt!2366165)) lambda!350177)))

(declare-fun lt!2366460 () Unit!158391)

(assert (=> b!6358307 (= lt!2366460 lt!2366458)))

(declare-fun b!6358308 () Bool)

(assert (=> b!6358308 (= e!3861074 0)))

(assert (=> b!6358309 (= e!3861075 (forall!15442 (t!378685 lt!2366165) lambda!350178))))

(assert (= (and d!1994694 c!1157284) b!6358307))

(assert (= (and d!1994694 (not c!1157284)) b!6358308))

(assert (= (and d!1994694 res!2616298) b!6358309))

(declare-fun m!7164398 () Bool)

(assert (=> b!6358307 m!7164398))

(declare-fun m!7164400 () Bool)

(assert (=> b!6358307 m!7164400))

(declare-fun m!7164402 () Bool)

(assert (=> b!6358307 m!7164402))

(assert (=> b!6358307 m!7164398))

(declare-fun m!7164404 () Bool)

(assert (=> b!6358307 m!7164404))

(assert (=> b!6358307 m!7164402))

(declare-fun m!7164406 () Bool)

(assert (=> b!6358307 m!7164406))

(assert (=> b!6358307 m!7164398))

(declare-fun m!7164408 () Bool)

(assert (=> b!6358309 m!7164408))

(assert (=> b!6356814 d!1994694))

(declare-fun d!1994706 () Bool)

(declare-fun res!2616304 () Bool)

(declare-fun e!3861088 () Bool)

(assert (=> d!1994706 (=> res!2616304 e!3861088)))

(assert (=> d!1994706 (= res!2616304 ((_ is Nil!64971) (t!378685 lt!2366165)))))

(assert (=> d!1994706 (= (forall!15442 (t!378685 lt!2366165) lambda!350046) e!3861088)))

(declare-fun b!6358333 () Bool)

(declare-fun e!3861089 () Bool)

(assert (=> b!6358333 (= e!3861088 e!3861089)))

(declare-fun res!2616305 () Bool)

(assert (=> b!6358333 (=> (not res!2616305) (not e!3861089))))

(assert (=> b!6358333 (= res!2616305 (dynLambda!25766 lambda!350046 (h!71419 (t!378685 lt!2366165))))))

(declare-fun b!6358334 () Bool)

(assert (=> b!6358334 (= e!3861089 (forall!15442 (t!378685 (t!378685 lt!2366165)) lambda!350046))))

(assert (= (and d!1994706 (not res!2616304)) b!6358333))

(assert (= (and b!6358333 res!2616305) b!6358334))

(declare-fun b_lambda!241709 () Bool)

(assert (=> (not b_lambda!241709) (not b!6358333)))

(declare-fun m!7164424 () Bool)

(assert (=> b!6358333 m!7164424))

(declare-fun m!7164426 () Bool)

(assert (=> b!6358334 m!7164426))

(assert (=> b!6356814 d!1994706))

(declare-fun bs!1592855 () Bool)

(declare-fun b!6358335 () Bool)

(assert (= bs!1592855 (and b!6358335 d!1994470)))

(declare-fun lambda!350179 () Int)

(assert (=> bs!1592855 (not (= lambda!350179 lambda!350133))))

(declare-fun bs!1592856 () Bool)

(assert (= bs!1592856 (and b!6358335 d!1994680)))

(assert (=> bs!1592856 (not (= lambda!350179 lambda!350174))))

(declare-fun bs!1592857 () Bool)

(assert (= bs!1592857 (and b!6358335 d!1994268)))

(assert (=> bs!1592857 (not (= lambda!350179 lambda!350106))))

(declare-fun bs!1592858 () Bool)

(assert (= bs!1592858 (and b!6358335 d!1994202)))

(assert (=> bs!1592858 (not (= lambda!350179 lambda!350079))))

(declare-fun bs!1592859 () Bool)

(assert (= bs!1592859 (and b!6358335 d!1994240)))

(assert (=> bs!1592859 (not (= lambda!350179 lambda!350100))))

(declare-fun bs!1592860 () Bool)

(assert (= bs!1592860 (and b!6358335 d!1994604)))

(assert (=> bs!1592860 (not (= lambda!350179 lambda!350147))))

(declare-fun bs!1592861 () Bool)

(assert (= bs!1592861 (and b!6358335 d!1994068)))

(assert (=> bs!1592861 (not (= lambda!350179 lambda!350024))))

(declare-fun bs!1592862 () Bool)

(assert (= bs!1592862 (and b!6358335 d!1994280)))

(assert (=> bs!1592862 (not (= lambda!350179 lambda!350108))))

(declare-fun bs!1592863 () Bool)

(assert (= bs!1592863 (and b!6358335 d!1994536)))

(assert (=> bs!1592863 (not (= lambda!350179 lambda!350140))))

(declare-fun bs!1592864 () Bool)

(assert (= bs!1592864 (and b!6358335 d!1994632)))

(assert (=> bs!1592864 (not (= lambda!350179 lambda!350157))))

(declare-fun bs!1592865 () Bool)

(assert (= bs!1592865 (and b!6358335 d!1994168)))

(assert (=> bs!1592865 (not (= lambda!350179 lambda!350067))))

(declare-fun bs!1592866 () Bool)

(assert (= bs!1592866 (and b!6358335 b!6358235)))

(declare-fun lt!2366466 () Int)

(assert (=> bs!1592866 (= (= lt!2366466 lt!2366440) (= lambda!350179 lambda!350164))))

(declare-fun bs!1592867 () Bool)

(assert (= bs!1592867 (and b!6358335 d!1994572)))

(assert (=> bs!1592867 (not (= lambda!350179 lambda!350146))))

(declare-fun bs!1592868 () Bool)

(assert (= bs!1592868 (and b!6358335 b!6358233)))

(assert (=> bs!1592868 (= (= lt!2366466 lt!2366439) (= lambda!350179 lambda!350163))))

(declare-fun bs!1592869 () Bool)

(assert (= bs!1592869 (and b!6358335 d!1994060)))

(assert (=> bs!1592869 (not (= lambda!350179 lambda!350020))))

(declare-fun bs!1592870 () Bool)

(assert (= bs!1592870 (and b!6358335 d!1994278)))

(assert (=> bs!1592870 (not (= lambda!350179 lambda!350107))))

(assert (=> b!6358335 true))

(declare-fun bs!1592871 () Bool)

(declare-fun b!6358337 () Bool)

(assert (= bs!1592871 (and b!6358337 d!1994470)))

(declare-fun lambda!350180 () Int)

(assert (=> bs!1592871 (not (= lambda!350180 lambda!350133))))

(declare-fun bs!1592872 () Bool)

(assert (= bs!1592872 (and b!6358337 d!1994680)))

(assert (=> bs!1592872 (not (= lambda!350180 lambda!350174))))

(declare-fun bs!1592873 () Bool)

(assert (= bs!1592873 (and b!6358337 d!1994268)))

(assert (=> bs!1592873 (not (= lambda!350180 lambda!350106))))

(declare-fun bs!1592874 () Bool)

(assert (= bs!1592874 (and b!6358337 d!1994202)))

(assert (=> bs!1592874 (not (= lambda!350180 lambda!350079))))

(declare-fun bs!1592875 () Bool)

(assert (= bs!1592875 (and b!6358337 d!1994240)))

(assert (=> bs!1592875 (not (= lambda!350180 lambda!350100))))

(declare-fun bs!1592876 () Bool)

(assert (= bs!1592876 (and b!6358337 d!1994604)))

(assert (=> bs!1592876 (not (= lambda!350180 lambda!350147))))

(declare-fun bs!1592877 () Bool)

(assert (= bs!1592877 (and b!6358337 d!1994068)))

(assert (=> bs!1592877 (not (= lambda!350180 lambda!350024))))

(declare-fun bs!1592878 () Bool)

(assert (= bs!1592878 (and b!6358337 d!1994280)))

(assert (=> bs!1592878 (not (= lambda!350180 lambda!350108))))

(declare-fun bs!1592879 () Bool)

(assert (= bs!1592879 (and b!6358337 b!6358335)))

(declare-fun lt!2366467 () Int)

(assert (=> bs!1592879 (= (= lt!2366467 lt!2366466) (= lambda!350180 lambda!350179))))

(declare-fun bs!1592880 () Bool)

(assert (= bs!1592880 (and b!6358337 d!1994536)))

(assert (=> bs!1592880 (not (= lambda!350180 lambda!350140))))

(declare-fun bs!1592881 () Bool)

(assert (= bs!1592881 (and b!6358337 d!1994632)))

(assert (=> bs!1592881 (not (= lambda!350180 lambda!350157))))

(declare-fun bs!1592882 () Bool)

(assert (= bs!1592882 (and b!6358337 d!1994168)))

(assert (=> bs!1592882 (not (= lambda!350180 lambda!350067))))

(declare-fun bs!1592883 () Bool)

(assert (= bs!1592883 (and b!6358337 b!6358235)))

(assert (=> bs!1592883 (= (= lt!2366467 lt!2366440) (= lambda!350180 lambda!350164))))

(declare-fun bs!1592884 () Bool)

(assert (= bs!1592884 (and b!6358337 d!1994572)))

(assert (=> bs!1592884 (not (= lambda!350180 lambda!350146))))

(declare-fun bs!1592885 () Bool)

(assert (= bs!1592885 (and b!6358337 b!6358233)))

(assert (=> bs!1592885 (= (= lt!2366467 lt!2366439) (= lambda!350180 lambda!350163))))

(declare-fun bs!1592886 () Bool)

(assert (= bs!1592886 (and b!6358337 d!1994060)))

(assert (=> bs!1592886 (not (= lambda!350180 lambda!350020))))

(declare-fun bs!1592887 () Bool)

(assert (= bs!1592887 (and b!6358337 d!1994278)))

(assert (=> bs!1592887 (not (= lambda!350180 lambda!350107))))

(assert (=> b!6358337 true))

(declare-fun d!1994710 () Bool)

(declare-fun e!3861091 () Bool)

(assert (=> d!1994710 e!3861091))

(declare-fun res!2616306 () Bool)

(assert (=> d!1994710 (=> (not res!2616306) (not e!3861091))))

(assert (=> d!1994710 (= res!2616306 (>= lt!2366467 0))))

(declare-fun e!3861090 () Int)

(assert (=> d!1994710 (= lt!2366467 e!3861090)))

(declare-fun c!1157294 () Bool)

(assert (=> d!1994710 (= c!1157294 ((_ is Cons!64970) (exprs!6149 (h!71419 lt!2366165))))))

(assert (=> d!1994710 (= (contextDepth!260 (h!71419 lt!2366165)) lt!2366467)))

(assert (=> b!6358335 (= e!3861090 lt!2366466)))

(assert (=> b!6358335 (= lt!2366466 (maxBigInt!0 (regexDepth!327 (h!71418 (exprs!6149 (h!71419 lt!2366165)))) (contextDepth!260 (Context!11299 (t!378684 (exprs!6149 (h!71419 lt!2366165)))))))))

(declare-fun lt!2366468 () Unit!158391)

(assert (=> b!6358335 (= lt!2366468 (lemmaForallRegexDepthBiggerThanTransitive!117 (t!378684 (exprs!6149 (h!71419 lt!2366165))) lt!2366466 (contextDepth!260 (Context!11299 (t!378684 (exprs!6149 (h!71419 lt!2366165)))))))))

(assert (=> b!6358335 (forall!15441 (t!378684 (exprs!6149 (h!71419 lt!2366165))) lambda!350179)))

(declare-fun lt!2366465 () Unit!158391)

(assert (=> b!6358335 (= lt!2366465 lt!2366468)))

(declare-fun b!6358336 () Bool)

(assert (=> b!6358336 (= e!3861090 0)))

(assert (=> b!6358337 (= e!3861091 (forall!15441 (exprs!6149 (h!71419 lt!2366165)) lambda!350180))))

(assert (= (and d!1994710 c!1157294) b!6358335))

(assert (= (and d!1994710 (not c!1157294)) b!6358336))

(assert (= (and d!1994710 res!2616306) b!6358337))

(declare-fun m!7164432 () Bool)

(assert (=> b!6358335 m!7164432))

(declare-fun m!7164434 () Bool)

(assert (=> b!6358335 m!7164434))

(assert (=> b!6358335 m!7164432))

(declare-fun m!7164436 () Bool)

(assert (=> b!6358335 m!7164436))

(assert (=> b!6358335 m!7164434))

(assert (=> b!6358335 m!7164432))

(declare-fun m!7164438 () Bool)

(assert (=> b!6358335 m!7164438))

(declare-fun m!7164440 () Bool)

(assert (=> b!6358335 m!7164440))

(declare-fun m!7164442 () Bool)

(assert (=> b!6358337 m!7164442))

(assert (=> b!6356814 d!1994710))

(declare-fun b!6358347 () Bool)

(declare-fun e!3861103 () Bool)

(assert (=> b!6358347 (= e!3861103 (not (= (head!13023 s!2326) (c!1156730 lt!2366173))))))

(declare-fun b!6358348 () Bool)

(declare-fun res!2616316 () Bool)

(declare-fun e!3861102 () Bool)

(assert (=> b!6358348 (=> (not res!2616316) (not e!3861102))))

(declare-fun call!542322 () Bool)

(assert (=> b!6358348 (= res!2616316 (not call!542322))))

(declare-fun b!6358349 () Bool)

(declare-fun e!3861100 () Bool)

(declare-fun lt!2366475 () Bool)

(assert (=> b!6358349 (= e!3861100 (= lt!2366475 call!542322))))

(declare-fun bm!542317 () Bool)

(assert (=> bm!542317 (= call!542322 (isEmpty!37073 s!2326))))

(declare-fun b!6358350 () Bool)

(declare-fun e!3861099 () Bool)

(declare-fun e!3861097 () Bool)

(assert (=> b!6358350 (= e!3861099 e!3861097)))

(declare-fun res!2616315 () Bool)

(assert (=> b!6358350 (=> (not res!2616315) (not e!3861097))))

(assert (=> b!6358350 (= res!2616315 (not lt!2366475))))

(declare-fun b!6358351 () Bool)

(assert (=> b!6358351 (= e!3861102 (= (head!13023 s!2326) (c!1156730 lt!2366173)))))

(declare-fun b!6358352 () Bool)

(declare-fun e!3861098 () Bool)

(assert (=> b!6358352 (= e!3861098 (not lt!2366475))))

(declare-fun b!6358353 () Bool)

(assert (=> b!6358353 (= e!3861097 e!3861103)))

(declare-fun res!2616317 () Bool)

(assert (=> b!6358353 (=> res!2616317 e!3861103)))

(assert (=> b!6358353 (= res!2616317 call!542322)))

(declare-fun b!6358354 () Bool)

(assert (=> b!6358354 (= e!3861100 e!3861098)))

(declare-fun c!1157297 () Bool)

(assert (=> b!6358354 (= c!1157297 ((_ is EmptyLang!16265) lt!2366173))))

(declare-fun b!6358355 () Bool)

(declare-fun e!3861101 () Bool)

(assert (=> b!6358355 (= e!3861101 (nullable!6258 lt!2366173))))

(declare-fun b!6358356 () Bool)

(declare-fun res!2616319 () Bool)

(assert (=> b!6358356 (=> res!2616319 e!3861099)))

(assert (=> b!6358356 (= res!2616319 (not ((_ is ElementMatch!16265) lt!2366173)))))

(assert (=> b!6358356 (= e!3861098 e!3861099)))

(declare-fun b!6358357 () Bool)

(declare-fun res!2616314 () Bool)

(assert (=> b!6358357 (=> res!2616314 e!3861103)))

(assert (=> b!6358357 (= res!2616314 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6358359 () Bool)

(declare-fun res!2616312 () Bool)

(assert (=> b!6358359 (=> res!2616312 e!3861099)))

(assert (=> b!6358359 (= res!2616312 e!3861102)))

(declare-fun res!2616318 () Bool)

(assert (=> b!6358359 (=> (not res!2616318) (not e!3861102))))

(assert (=> b!6358359 (= res!2616318 lt!2366475)))

(declare-fun b!6358360 () Bool)

(declare-fun res!2616313 () Bool)

(assert (=> b!6358360 (=> (not res!2616313) (not e!3861102))))

(assert (=> b!6358360 (= res!2616313 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994714 () Bool)

(assert (=> d!1994714 e!3861100))

(declare-fun c!1157299 () Bool)

(assert (=> d!1994714 (= c!1157299 ((_ is EmptyExpr!16265) lt!2366173))))

(assert (=> d!1994714 (= lt!2366475 e!3861101)))

(declare-fun c!1157298 () Bool)

(assert (=> d!1994714 (= c!1157298 (isEmpty!37073 s!2326))))

(assert (=> d!1994714 (validRegex!8001 lt!2366173)))

(assert (=> d!1994714 (= (matchR!8448 lt!2366173 s!2326) lt!2366475)))

(declare-fun b!6358358 () Bool)

(assert (=> b!6358358 (= e!3861101 (matchR!8448 (derivativeStep!4970 lt!2366173 (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994714 c!1157298) b!6358355))

(assert (= (and d!1994714 (not c!1157298)) b!6358358))

(assert (= (and d!1994714 c!1157299) b!6358349))

(assert (= (and d!1994714 (not c!1157299)) b!6358354))

(assert (= (and b!6358354 c!1157297) b!6358352))

(assert (= (and b!6358354 (not c!1157297)) b!6358356))

(assert (= (and b!6358356 (not res!2616319)) b!6358359))

(assert (= (and b!6358359 res!2616318) b!6358348))

(assert (= (and b!6358348 res!2616316) b!6358360))

(assert (= (and b!6358360 res!2616313) b!6358351))

(assert (= (and b!6358359 (not res!2616312)) b!6358350))

(assert (= (and b!6358350 res!2616315) b!6358353))

(assert (= (and b!6358353 (not res!2616317)) b!6358357))

(assert (= (and b!6358357 (not res!2616314)) b!6358347))

(assert (= (or b!6358349 b!6358348 b!6358353) bm!542317))

(assert (=> b!6358357 m!7163356))

(assert (=> b!6358357 m!7163356))

(assert (=> b!6358357 m!7163358))

(assert (=> b!6358358 m!7163360))

(assert (=> b!6358358 m!7163360))

(declare-fun m!7164448 () Bool)

(assert (=> b!6358358 m!7164448))

(assert (=> b!6358358 m!7163356))

(assert (=> b!6358358 m!7164448))

(assert (=> b!6358358 m!7163356))

(declare-fun m!7164452 () Bool)

(assert (=> b!6358358 m!7164452))

(assert (=> b!6358360 m!7163356))

(assert (=> b!6358360 m!7163356))

(assert (=> b!6358360 m!7163358))

(assert (=> b!6358351 m!7163360))

(assert (=> b!6358355 m!7164010))

(assert (=> d!1994714 m!7163190))

(assert (=> d!1994714 m!7163602))

(assert (=> bm!542317 m!7163190))

(assert (=> b!6358347 m!7163360))

(assert (=> b!6357129 d!1994714))

(declare-fun d!1994716 () Bool)

(assert (=> d!1994716 (= (isEmpty!37069 (exprs!6149 (h!71419 zl!343))) ((_ is Nil!64970) (exprs!6149 (h!71419 zl!343))))))

(assert (=> b!6357381 d!1994716))

(declare-fun bs!1592893 () Bool)

(declare-fun b!6358361 () Bool)

(assert (= bs!1592893 (and b!6358361 b!6356395)))

(declare-fun lambda!350182 () Int)

(assert (=> bs!1592893 (not (= lambda!350182 lambda!349995))))

(declare-fun bs!1592896 () Bool)

(assert (= bs!1592896 (and b!6358361 b!6357721)))

(assert (=> bs!1592896 (= (and (= (reg!16594 (regOne!33043 r!7292)) (reg!16594 (regOne!33043 lt!2366179))) (= (regOne!33043 r!7292) (regOne!33043 lt!2366179))) (= lambda!350182 lambda!350129))))

(declare-fun bs!1592898 () Bool)

(assert (= bs!1592898 (and b!6358361 d!1994330)))

(assert (=> bs!1592898 (not (= lambda!350182 lambda!350122))))

(declare-fun bs!1592900 () Bool)

(assert (= bs!1592900 (and b!6358361 b!6357049)))

(assert (=> bs!1592900 (= (and (= (reg!16594 (regOne!33043 r!7292)) (reg!16594 lt!2366179)) (= (regOne!33043 r!7292) lt!2366179)) (= lambda!350182 lambda!350077))))

(declare-fun bs!1592901 () Bool)

(assert (= bs!1592901 (and b!6358361 b!6356387)))

(assert (=> bs!1592901 (not (= lambda!350182 lambda!349999))))

(declare-fun bs!1592902 () Bool)

(assert (= bs!1592902 (and b!6358361 d!1994310)))

(assert (=> bs!1592902 (not (= lambda!350182 lambda!350113))))

(declare-fun bs!1592903 () Bool)

(assert (= bs!1592903 (and b!6358361 d!1994256)))

(assert (=> bs!1592903 (not (= lambda!350182 lambda!350102))))

(declare-fun bs!1592904 () Bool)

(assert (= bs!1592904 (and b!6358361 d!1994208)))

(assert (=> bs!1592904 (not (= lambda!350182 lambda!350097))))

(declare-fun bs!1592905 () Bool)

(assert (= bs!1592905 (and b!6358361 d!1994616)))

(assert (=> bs!1592905 (not (= lambda!350182 lambda!350148))))

(declare-fun bs!1592906 () Bool)

(assert (= bs!1592906 (and b!6358361 b!6357396)))

(assert (=> bs!1592906 (= (and (= (reg!16594 (regOne!33043 r!7292)) (reg!16594 r!7292)) (= (regOne!33043 r!7292) r!7292)) (= lambda!350182 lambda!350109))))

(assert (=> bs!1592898 (not (= lambda!350182 lambda!350121))))

(declare-fun bs!1592907 () Bool)

(assert (= bs!1592907 (and b!6358361 b!6357617)))

(assert (=> bs!1592907 (= (and (= (reg!16594 (regOne!33043 r!7292)) (reg!16594 (regTwo!33043 lt!2366179))) (= (regOne!33043 r!7292) (regTwo!33043 lt!2366179))) (= lambda!350182 lambda!350124))))

(declare-fun bs!1592909 () Bool)

(assert (= bs!1592909 (and b!6358361 b!6357910)))

(assert (=> bs!1592909 (= (and (= (reg!16594 (regOne!33043 r!7292)) (reg!16594 (regTwo!33043 lt!2366170))) (= (regOne!33043 r!7292) (regTwo!33043 lt!2366170))) (= lambda!350182 lambda!350134))))

(assert (=> bs!1592893 (not (= lambda!350182 lambda!349996))))

(assert (=> bs!1592902 (not (= lambda!350182 lambda!350112))))

(declare-fun bs!1592910 () Bool)

(assert (= bs!1592910 (and b!6358361 b!6357729)))

(assert (=> bs!1592910 (not (= lambda!350182 lambda!350130))))

(declare-fun bs!1592911 () Bool)

(assert (= bs!1592911 (and b!6358361 d!1994570)))

(assert (=> bs!1592911 (not (= lambda!350182 lambda!350145))))

(declare-fun bs!1592912 () Bool)

(assert (= bs!1592912 (and b!6358361 d!1994502)))

(assert (=> bs!1592912 (not (= lambda!350182 lambda!350138))))

(assert (=> bs!1592904 (not (= lambda!350182 lambda!350096))))

(assert (=> bs!1592901 (not (= lambda!350182 lambda!350000))))

(declare-fun bs!1592913 () Bool)

(assert (= bs!1592913 (and b!6358361 b!6358031)))

(assert (=> bs!1592913 (not (= lambda!350182 lambda!350142))))

(declare-fun bs!1592915 () Bool)

(assert (= bs!1592915 (and b!6358361 b!6357057)))

(assert (=> bs!1592915 (not (= lambda!350182 lambda!350078))))

(assert (=> bs!1592901 (not (= lambda!350182 lambda!350001))))

(declare-fun bs!1592917 () Bool)

(assert (= bs!1592917 (and b!6358361 b!6358023)))

(assert (=> bs!1592917 (= (and (= (reg!16594 (regOne!33043 r!7292)) (reg!16594 (regTwo!33043 r!7292))) (= (regOne!33043 r!7292) (regTwo!33043 r!7292))) (= lambda!350182 lambda!350141))))

(declare-fun bs!1592919 () Bool)

(assert (= bs!1592919 (and b!6358361 b!6357258)))

(assert (=> bs!1592919 (not (= lambda!350182 lambda!350099))))

(declare-fun bs!1592920 () Bool)

(assert (= bs!1592920 (and b!6358361 b!6357625)))

(assert (=> bs!1592920 (not (= lambda!350182 lambda!350125))))

(declare-fun bs!1592922 () Bool)

(assert (= bs!1592922 (and b!6358361 b!6357404)))

(assert (=> bs!1592922 (not (= lambda!350182 lambda!350110))))

(declare-fun bs!1592924 () Bool)

(assert (= bs!1592924 (and b!6358361 d!1994308)))

(assert (=> bs!1592924 (not (= lambda!350182 lambda!350111))))

(declare-fun bs!1592926 () Bool)

(assert (= bs!1592926 (and b!6358361 b!6358034)))

(assert (=> bs!1592926 (= (and (= (reg!16594 (regOne!33043 r!7292)) (reg!16594 (regOne!33043 lt!2366170))) (= (regOne!33043 r!7292) (regOne!33043 lt!2366170))) (= lambda!350182 lambda!350143))))

(assert (=> bs!1592901 (not (= lambda!350182 lambda!349998))))

(assert (=> bs!1592905 (not (= lambda!350182 lambda!350153))))

(assert (=> bs!1592903 (not (= lambda!350182 lambda!350103))))

(declare-fun bs!1592931 () Bool)

(assert (= bs!1592931 (and b!6358361 b!6357918)))

(assert (=> bs!1592931 (not (= lambda!350182 lambda!350135))))

(declare-fun bs!1592933 () Bool)

(assert (= bs!1592933 (and b!6358361 b!6357250)))

(assert (=> bs!1592933 (= (and (= (reg!16594 (regOne!33043 r!7292)) (reg!16594 lt!2366170)) (= (regOne!33043 r!7292) lt!2366170)) (= lambda!350182 lambda!350098))))

(declare-fun bs!1592935 () Bool)

(assert (= bs!1592935 (and b!6358361 b!6358042)))

(assert (=> bs!1592935 (not (= lambda!350182 lambda!350144))))

(declare-fun bs!1592937 () Bool)

(assert (= bs!1592937 (and b!6358361 d!1994242)))

(assert (=> bs!1592937 (not (= lambda!350182 lambda!350101))))

(declare-fun bs!1592939 () Bool)

(assert (= bs!1592939 (and b!6358361 d!1994166)))

(assert (=> bs!1592939 (not (= lambda!350182 lambda!350061))))

(assert (=> b!6358361 true))

(assert (=> b!6358361 true))

(declare-fun bs!1592941 () Bool)

(declare-fun b!6358369 () Bool)

(assert (= bs!1592941 (and b!6358369 b!6356395)))

(declare-fun lambda!350184 () Int)

(assert (=> bs!1592941 (not (= lambda!350184 lambda!349995))))

(declare-fun bs!1592942 () Bool)

(assert (= bs!1592942 (and b!6358369 b!6357721)))

(assert (=> bs!1592942 (not (= lambda!350184 lambda!350129))))

(declare-fun bs!1592943 () Bool)

(assert (= bs!1592943 (and b!6358369 b!6358361)))

(assert (=> bs!1592943 (not (= lambda!350184 lambda!350182))))

(declare-fun bs!1592944 () Bool)

(assert (= bs!1592944 (and b!6358369 d!1994330)))

(assert (=> bs!1592944 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 r!7292))) (= lambda!350184 lambda!350122))))

(declare-fun bs!1592945 () Bool)

(assert (= bs!1592945 (and b!6358369 b!6357049)))

(assert (=> bs!1592945 (not (= lambda!350184 lambda!350077))))

(declare-fun bs!1592947 () Bool)

(assert (= bs!1592947 (and b!6358369 b!6356387)))

(assert (=> bs!1592947 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 r!7292)) lt!2366179)) (= lambda!350184 lambda!349999))))

(declare-fun bs!1592949 () Bool)

(assert (= bs!1592949 (and b!6358369 d!1994310)))

(assert (=> bs!1592949 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 r!7292))) (= lambda!350184 lambda!350113))))

(declare-fun bs!1592950 () Bool)

(assert (= bs!1592950 (and b!6358369 d!1994256)))

(assert (=> bs!1592950 (not (= lambda!350184 lambda!350102))))

(declare-fun bs!1592952 () Bool)

(assert (= bs!1592952 (and b!6358369 d!1994208)))

(assert (=> bs!1592952 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 r!7292)) lt!2366179)) (= lambda!350184 lambda!350097))))

(declare-fun bs!1592954 () Bool)

(assert (= bs!1592954 (and b!6358369 d!1994616)))

(assert (=> bs!1592954 (not (= lambda!350184 lambda!350148))))

(declare-fun bs!1592956 () Bool)

(assert (= bs!1592956 (and b!6358369 b!6357396)))

(assert (=> bs!1592956 (not (= lambda!350184 lambda!350109))))

(assert (=> bs!1592944 (not (= lambda!350184 lambda!350121))))

(declare-fun bs!1592959 () Bool)

(assert (= bs!1592959 (and b!6358369 b!6357617)))

(assert (=> bs!1592959 (not (= lambda!350184 lambda!350124))))

(declare-fun bs!1592961 () Bool)

(assert (= bs!1592961 (and b!6358369 b!6357910)))

(assert (=> bs!1592961 (not (= lambda!350184 lambda!350134))))

(assert (=> bs!1592941 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 r!7292))) (= lambda!350184 lambda!349996))))

(assert (=> bs!1592949 (not (= lambda!350184 lambda!350112))))

(declare-fun bs!1592965 () Bool)

(assert (= bs!1592965 (and b!6358369 b!6357729)))

(assert (=> bs!1592965 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 (regOne!33043 lt!2366179))) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 (regOne!33043 lt!2366179)))) (= lambda!350184 lambda!350130))))

(declare-fun bs!1592967 () Bool)

(assert (= bs!1592967 (and b!6358369 d!1994570)))

(assert (=> bs!1592967 (not (= lambda!350184 lambda!350145))))

(declare-fun bs!1592969 () Bool)

(assert (= bs!1592969 (and b!6358369 d!1994502)))

(assert (=> bs!1592969 (not (= lambda!350184 lambda!350138))))

(assert (=> bs!1592952 (not (= lambda!350184 lambda!350096))))

(assert (=> bs!1592947 (not (= lambda!350184 lambda!350000))))

(declare-fun bs!1592972 () Bool)

(assert (= bs!1592972 (and b!6358369 b!6358031)))

(assert (=> bs!1592972 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 (regTwo!33043 r!7292))) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 (regTwo!33043 r!7292)))) (= lambda!350184 lambda!350142))))

(declare-fun bs!1592973 () Bool)

(assert (= bs!1592973 (and b!6358369 b!6357057)))

(assert (=> bs!1592973 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 lt!2366179)) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 lt!2366179))) (= lambda!350184 lambda!350078))))

(assert (=> bs!1592947 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 r!7292)) lt!2366173)) (= lambda!350184 lambda!350001))))

(declare-fun bs!1592974 () Bool)

(assert (= bs!1592974 (and b!6358369 b!6358023)))

(assert (=> bs!1592974 (not (= lambda!350184 lambda!350141))))

(declare-fun bs!1592976 () Bool)

(assert (= bs!1592976 (and b!6358369 b!6357258)))

(assert (=> bs!1592976 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 lt!2366170)) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 lt!2366170))) (= lambda!350184 lambda!350099))))

(declare-fun bs!1592977 () Bool)

(assert (= bs!1592977 (and b!6358369 b!6357625)))

(assert (=> bs!1592977 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 (regTwo!33043 lt!2366179))) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 (regTwo!33043 lt!2366179)))) (= lambda!350184 lambda!350125))))

(declare-fun bs!1592978 () Bool)

(assert (= bs!1592978 (and b!6358369 b!6357404)))

(assert (=> bs!1592978 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 r!7292)) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 r!7292))) (= lambda!350184 lambda!350110))))

(declare-fun bs!1592979 () Bool)

(assert (= bs!1592979 (and b!6358369 d!1994308)))

(assert (=> bs!1592979 (not (= lambda!350184 lambda!350111))))

(declare-fun bs!1592980 () Bool)

(assert (= bs!1592980 (and b!6358369 b!6358034)))

(assert (=> bs!1592980 (not (= lambda!350184 lambda!350143))))

(assert (=> bs!1592947 (not (= lambda!350184 lambda!349998))))

(assert (=> bs!1592954 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 r!7292)) lt!2366173)) (= lambda!350184 lambda!350153))))

(assert (=> bs!1592950 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= (regTwo!33042 (regOne!33043 r!7292)) lt!2366173)) (= lambda!350184 lambda!350103))))

(declare-fun bs!1592981 () Bool)

(assert (= bs!1592981 (and b!6358369 b!6357918)))

(assert (=> bs!1592981 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 (regTwo!33043 lt!2366170))) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 (regTwo!33043 lt!2366170)))) (= lambda!350184 lambda!350135))))

(declare-fun bs!1592982 () Bool)

(assert (= bs!1592982 (and b!6358369 b!6357250)))

(assert (=> bs!1592982 (not (= lambda!350184 lambda!350098))))

(declare-fun bs!1592983 () Bool)

(assert (= bs!1592983 (and b!6358369 b!6358042)))

(assert (=> bs!1592983 (= (and (= (regOne!33042 (regOne!33043 r!7292)) (regOne!33042 (regOne!33043 lt!2366170))) (= (regTwo!33042 (regOne!33043 r!7292)) (regTwo!33042 (regOne!33043 lt!2366170)))) (= lambda!350184 lambda!350144))))

(declare-fun bs!1592984 () Bool)

(assert (= bs!1592984 (and b!6358369 d!1994242)))

(assert (=> bs!1592984 (not (= lambda!350184 lambda!350101))))

(declare-fun bs!1592985 () Bool)

(assert (= bs!1592985 (and b!6358369 d!1994166)))

(assert (=> bs!1592985 (not (= lambda!350184 lambda!350061))))

(assert (=> b!6358369 true))

(assert (=> b!6358369 true))

(declare-fun e!3861106 () Bool)

(declare-fun call!542324 () Bool)

(assert (=> b!6358361 (= e!3861106 call!542324)))

(declare-fun bm!542318 () Bool)

(declare-fun call!542323 () Bool)

(assert (=> bm!542318 (= call!542323 (isEmpty!37073 s!2326))))

(declare-fun b!6358362 () Bool)

(declare-fun e!3861107 () Bool)

(assert (=> b!6358362 (= e!3861107 call!542323)))

(declare-fun b!6358363 () Bool)

(declare-fun e!3861109 () Bool)

(assert (=> b!6358363 (= e!3861109 (= s!2326 (Cons!64972 (c!1156730 (regOne!33043 r!7292)) Nil!64972)))))

(declare-fun b!6358364 () Bool)

(declare-fun e!3861110 () Bool)

(assert (=> b!6358364 (= e!3861110 (matchRSpec!3366 (regTwo!33043 (regOne!33043 r!7292)) s!2326))))

(declare-fun b!6358365 () Bool)

(declare-fun res!2616321 () Bool)

(assert (=> b!6358365 (=> res!2616321 e!3861106)))

(assert (=> b!6358365 (= res!2616321 call!542323)))

(declare-fun e!3861104 () Bool)

(assert (=> b!6358365 (= e!3861104 e!3861106)))

(declare-fun c!1157300 () Bool)

(declare-fun bm!542319 () Bool)

(assert (=> bm!542319 (= call!542324 (Exists!3335 (ite c!1157300 lambda!350182 lambda!350184)))))

(declare-fun b!6358366 () Bool)

(declare-fun e!3861105 () Bool)

(assert (=> b!6358366 (= e!3861105 e!3861104)))

(assert (=> b!6358366 (= c!1157300 ((_ is Star!16265) (regOne!33043 r!7292)))))

(declare-fun d!1994718 () Bool)

(declare-fun c!1157303 () Bool)

(assert (=> d!1994718 (= c!1157303 ((_ is EmptyExpr!16265) (regOne!33043 r!7292)))))

(assert (=> d!1994718 (= (matchRSpec!3366 (regOne!33043 r!7292) s!2326) e!3861107)))

(declare-fun b!6358367 () Bool)

(declare-fun c!1157302 () Bool)

(assert (=> b!6358367 (= c!1157302 ((_ is ElementMatch!16265) (regOne!33043 r!7292)))))

(declare-fun e!3861108 () Bool)

(assert (=> b!6358367 (= e!3861108 e!3861109)))

(declare-fun b!6358368 () Bool)

(declare-fun c!1157301 () Bool)

(assert (=> b!6358368 (= c!1157301 ((_ is Union!16265) (regOne!33043 r!7292)))))

(assert (=> b!6358368 (= e!3861109 e!3861105)))

(assert (=> b!6358369 (= e!3861104 call!542324)))

(declare-fun b!6358370 () Bool)

(assert (=> b!6358370 (= e!3861105 e!3861110)))

(declare-fun res!2616320 () Bool)

(assert (=> b!6358370 (= res!2616320 (matchRSpec!3366 (regOne!33043 (regOne!33043 r!7292)) s!2326))))

(assert (=> b!6358370 (=> res!2616320 e!3861110)))

(declare-fun b!6358371 () Bool)

(assert (=> b!6358371 (= e!3861107 e!3861108)))

(declare-fun res!2616322 () Bool)

(assert (=> b!6358371 (= res!2616322 (not ((_ is EmptyLang!16265) (regOne!33043 r!7292))))))

(assert (=> b!6358371 (=> (not res!2616322) (not e!3861108))))

(assert (= (and d!1994718 c!1157303) b!6358362))

(assert (= (and d!1994718 (not c!1157303)) b!6358371))

(assert (= (and b!6358371 res!2616322) b!6358367))

(assert (= (and b!6358367 c!1157302) b!6358363))

(assert (= (and b!6358367 (not c!1157302)) b!6358368))

(assert (= (and b!6358368 c!1157301) b!6358370))

(assert (= (and b!6358368 (not c!1157301)) b!6358366))

(assert (= (and b!6358370 (not res!2616320)) b!6358364))

(assert (= (and b!6358366 c!1157300) b!6358365))

(assert (= (and b!6358366 (not c!1157300)) b!6358369))

(assert (= (and b!6358365 (not res!2616321)) b!6358361))

(assert (= (or b!6358361 b!6358369) bm!542319))

(assert (= (or b!6358362 b!6358365) bm!542318))

(assert (=> bm!542318 m!7163190))

(declare-fun m!7164506 () Bool)

(assert (=> b!6358364 m!7164506))

(declare-fun m!7164508 () Bool)

(assert (=> bm!542319 m!7164508))

(declare-fun m!7164510 () Bool)

(assert (=> b!6358370 m!7164510))

(assert (=> b!6357405 d!1994718))

(declare-fun b!6358395 () Bool)

(declare-fun e!3861126 () (InoxSet Context!11298))

(declare-fun e!3861125 () (InoxSet Context!11298))

(assert (=> b!6358395 (= e!3861126 e!3861125)))

(declare-fun c!1157314 () Bool)

(assert (=> b!6358395 (= c!1157314 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366189))))))))

(declare-fun bm!542322 () Bool)

(declare-fun call!542327 () (InoxSet Context!11298))

(assert (=> bm!542322 (= call!542327 (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366189))))) (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366189)))))) (h!71420 s!2326)))))

(declare-fun b!6358397 () Bool)

(assert (=> b!6358397 (= e!3861126 ((_ map or) call!542327 (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366189)))))) (h!71420 s!2326))))))

(declare-fun b!6358398 () Bool)

(declare-fun e!3861127 () Bool)

(assert (=> b!6358398 (= e!3861127 (nullable!6258 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366189)))))))))

(declare-fun b!6358399 () Bool)

(assert (=> b!6358399 (= e!3861125 ((as const (Array Context!11298 Bool)) false))))

(declare-fun d!1994732 () Bool)

(declare-fun c!1157313 () Bool)

(assert (=> d!1994732 (= c!1157313 e!3861127)))

(declare-fun res!2616328 () Bool)

(assert (=> d!1994732 (=> (not res!2616328) (not e!3861127))))

(assert (=> d!1994732 (= res!2616328 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366189))))))))

(assert (=> d!1994732 (= (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 lt!2366189))) (h!71420 s!2326)) e!3861126)))

(declare-fun b!6358396 () Bool)

(assert (=> b!6358396 (= e!3861125 call!542327)))

(assert (= (and d!1994732 res!2616328) b!6358398))

(assert (= (and d!1994732 c!1157313) b!6358397))

(assert (= (and d!1994732 (not c!1157313)) b!6358395))

(assert (= (and b!6358395 c!1157314) b!6358396))

(assert (= (and b!6358395 (not c!1157314)) b!6358399))

(assert (= (or b!6358397 b!6358396) bm!542322))

(declare-fun m!7164514 () Bool)

(assert (=> bm!542322 m!7164514))

(declare-fun m!7164516 () Bool)

(assert (=> b!6358397 m!7164516))

(declare-fun m!7164520 () Bool)

(assert (=> b!6358398 m!7164520))

(assert (=> b!6356853 d!1994732))

(declare-fun d!1994738 () Bool)

(assert (=> d!1994738 (= (head!13022 (unfocusZipperList!1686 zl!343)) (h!71418 (unfocusZipperList!1686 zl!343)))))

(assert (=> b!6356678 d!1994738))

(assert (=> bm!542141 d!1994362))

(declare-fun d!1994742 () Bool)

(assert (=> d!1994742 (= (isConcat!1190 lt!2366302) ((_ is Concat!25110) lt!2366302))))

(assert (=> b!6356983 d!1994742))

(declare-fun d!1994746 () Bool)

(assert (=> d!1994746 (= (isEmpty!37069 (tail!12107 (t!378684 (exprs!6149 (h!71419 zl!343))))) ((_ is Nil!64970) (tail!12107 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(assert (=> b!6357303 d!1994746))

(declare-fun d!1994748 () Bool)

(assert (=> d!1994748 (= (tail!12107 (t!378684 (exprs!6149 (h!71419 zl!343)))) (t!378684 (t!378684 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> b!6357303 d!1994748))

(assert (=> d!1994294 d!1994362))

(declare-fun b!6358400 () Bool)

(declare-fun res!2616331 () Bool)

(declare-fun e!3861133 () Bool)

(assert (=> b!6358400 (=> res!2616331 e!3861133)))

(assert (=> b!6358400 (= res!2616331 (not ((_ is Concat!25110) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))))))

(declare-fun e!3861134 () Bool)

(assert (=> b!6358400 (= e!3861134 e!3861133)))

(declare-fun c!1157316 () Bool)

(declare-fun bm!542323 () Bool)

(declare-fun call!542329 () Bool)

(declare-fun c!1157315 () Bool)

(assert (=> bm!542323 (= call!542329 (validRegex!8001 (ite c!1157315 (reg!16594 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) (ite c!1157316 (regOne!33043 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) (regOne!33042 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))))))))

(declare-fun b!6358401 () Bool)

(declare-fun e!3861129 () Bool)

(declare-fun call!542328 () Bool)

(assert (=> b!6358401 (= e!3861129 call!542328)))

(declare-fun bm!542324 () Bool)

(assert (=> bm!542324 (= call!542328 (validRegex!8001 (ite c!1157316 (regTwo!33043 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) (regTwo!33042 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))))

(declare-fun b!6358402 () Bool)

(declare-fun e!3861128 () Bool)

(assert (=> b!6358402 (= e!3861128 call!542328)))

(declare-fun bm!542325 () Bool)

(declare-fun call!542330 () Bool)

(assert (=> bm!542325 (= call!542330 call!542329)))

(declare-fun b!6358404 () Bool)

(declare-fun e!3861131 () Bool)

(declare-fun e!3861132 () Bool)

(assert (=> b!6358404 (= e!3861131 e!3861132)))

(assert (=> b!6358404 (= c!1157315 ((_ is Star!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(declare-fun b!6358405 () Bool)

(assert (=> b!6358405 (= e!3861133 e!3861128)))

(declare-fun res!2616333 () Bool)

(assert (=> b!6358405 (=> (not res!2616333) (not e!3861128))))

(assert (=> b!6358405 (= res!2616333 call!542330)))

(declare-fun b!6358406 () Bool)

(declare-fun res!2616329 () Bool)

(assert (=> b!6358406 (=> (not res!2616329) (not e!3861129))))

(assert (=> b!6358406 (= res!2616329 call!542330)))

(assert (=> b!6358406 (= e!3861134 e!3861129)))

(declare-fun b!6358407 () Bool)

(declare-fun e!3861130 () Bool)

(assert (=> b!6358407 (= e!3861132 e!3861130)))

(declare-fun res!2616330 () Bool)

(assert (=> b!6358407 (= res!2616330 (not (nullable!6258 (reg!16594 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))))

(assert (=> b!6358407 (=> (not res!2616330) (not e!3861130))))

(declare-fun b!6358408 () Bool)

(assert (=> b!6358408 (= e!3861132 e!3861134)))

(assert (=> b!6358408 (= c!1157316 ((_ is Union!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(declare-fun d!1994750 () Bool)

(declare-fun res!2616332 () Bool)

(assert (=> d!1994750 (=> res!2616332 e!3861131)))

(assert (=> d!1994750 (= res!2616332 ((_ is ElementMatch!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(assert (=> d!1994750 (= (validRegex!8001 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) e!3861131)))

(declare-fun b!6358403 () Bool)

(assert (=> b!6358403 (= e!3861130 call!542329)))

(assert (= (and d!1994750 (not res!2616332)) b!6358404))

(assert (= (and b!6358404 c!1157315) b!6358407))

(assert (= (and b!6358404 (not c!1157315)) b!6358408))

(assert (= (and b!6358407 res!2616330) b!6358403))

(assert (= (and b!6358408 c!1157316) b!6358406))

(assert (= (and b!6358408 (not c!1157316)) b!6358400))

(assert (= (and b!6358406 res!2616329) b!6358401))

(assert (= (and b!6358400 (not res!2616331)) b!6358405))

(assert (= (and b!6358405 res!2616333) b!6358402))

(assert (= (or b!6358401 b!6358402) bm!542324))

(assert (= (or b!6358406 b!6358405) bm!542325))

(assert (= (or b!6358403 bm!542325) bm!542323))

(declare-fun m!7164522 () Bool)

(assert (=> bm!542323 m!7164522))

(declare-fun m!7164524 () Bool)

(assert (=> bm!542324 m!7164524))

(declare-fun m!7164526 () Bool)

(assert (=> b!6358407 m!7164526))

(assert (=> d!1994294 d!1994750))

(declare-fun bs!1592996 () Bool)

(declare-fun d!1994754 () Bool)

(assert (= bs!1592996 (and d!1994754 b!6358252)))

(declare-fun lambda!350188 () Int)

(assert (=> bs!1592996 (not (= lambda!350188 lambda!350167))))

(declare-fun bs!1592997 () Bool)

(assert (= bs!1592997 (and d!1994754 d!1994524)))

(assert (=> bs!1592997 (= lambda!350188 lambda!350139)))

(declare-fun bs!1592998 () Bool)

(assert (= bs!1592998 (and d!1994754 d!1994398)))

(assert (=> bs!1592998 (= lambda!350188 lambda!350127)))

(declare-fun bs!1592999 () Bool)

(assert (= bs!1592999 (and d!1994754 d!1994436)))

(assert (=> bs!1592999 (= lambda!350188 lambda!350131)))

(declare-fun bs!1593000 () Bool)

(assert (= bs!1593000 (and d!1994754 b!6358309)))

(assert (=> bs!1593000 (not (= lambda!350188 lambda!350178))))

(declare-fun bs!1593001 () Bool)

(assert (= bs!1593001 (and d!1994754 b!6356821)))

(assert (=> bs!1593001 (not (= lambda!350188 lambda!350052))))

(declare-fun bs!1593002 () Bool)

(assert (= bs!1593002 (and d!1994754 d!1994670)))

(assert (=> bs!1593002 (not (= lambda!350188 lambda!350173))))

(declare-fun bs!1593003 () Bool)

(assert (= bs!1593003 (and d!1994754 b!6356819)))

(assert (=> bs!1593003 (not (= lambda!350188 lambda!350051))))

(declare-fun bs!1593004 () Bool)

(assert (= bs!1593004 (and d!1994754 b!6356816)))

(assert (=> bs!1593004 (not (= lambda!350188 lambda!350048))))

(declare-fun bs!1593005 () Bool)

(assert (= bs!1593005 (and d!1994754 d!1994692)))

(assert (=> bs!1593005 (not (= lambda!350188 lambda!350175))))

(declare-fun bs!1593006 () Bool)

(assert (= bs!1593006 (and d!1994754 b!6358250)))

(assert (=> bs!1593006 (not (= lambda!350188 lambda!350166))))

(declare-fun bs!1593007 () Bool)

(assert (= bs!1593007 (and d!1994754 b!6358307)))

(assert (=> bs!1593007 (not (= lambda!350188 lambda!350177))))

(declare-fun bs!1593008 () Bool)

(assert (= bs!1593008 (and d!1994754 b!6356814)))

(assert (=> bs!1593008 (not (= lambda!350188 lambda!350046))))

(declare-fun bs!1593009 () Bool)

(assert (= bs!1593009 (and d!1994754 d!1994400)))

(assert (=> bs!1593009 (= lambda!350188 lambda!350128)))

(declare-fun bs!1593010 () Bool)

(assert (= bs!1593010 (and d!1994754 d!1994334)))

(assert (=> bs!1593010 (= lambda!350188 lambda!350123)))

(declare-fun bs!1593011 () Bool)

(assert (= bs!1593011 (and d!1994754 d!1994324)))

(assert (=> bs!1593011 (= lambda!350188 lambda!350116)))

(assert (=> d!1994754 (= (nullableZipper!2031 z!1189) (exists!2570 z!1189 lambda!350188))))

(declare-fun bs!1593012 () Bool)

(assert (= bs!1593012 d!1994754))

(declare-fun m!7164528 () Bool)

(assert (=> bs!1593012 m!7164528))

(assert (=> b!6357317 d!1994754))

(assert (=> bm!542154 d!1994362))

(assert (=> d!1994248 d!1994362))

(declare-fun b!6358415 () Bool)

(declare-fun res!2616342 () Bool)

(declare-fun e!3861146 () Bool)

(assert (=> b!6358415 (=> res!2616342 e!3861146)))

(assert (=> b!6358415 (= res!2616342 (not ((_ is Concat!25110) lt!2366179)))))

(declare-fun e!3861147 () Bool)

(assert (=> b!6358415 (= e!3861147 e!3861146)))

(declare-fun c!1157318 () Bool)

(declare-fun call!542332 () Bool)

(declare-fun c!1157317 () Bool)

(declare-fun bm!542326 () Bool)

(assert (=> bm!542326 (= call!542332 (validRegex!8001 (ite c!1157317 (reg!16594 lt!2366179) (ite c!1157318 (regOne!33043 lt!2366179) (regOne!33042 lt!2366179)))))))

(declare-fun b!6358416 () Bool)

(declare-fun e!3861142 () Bool)

(declare-fun call!542331 () Bool)

(assert (=> b!6358416 (= e!3861142 call!542331)))

(declare-fun bm!542327 () Bool)

(assert (=> bm!542327 (= call!542331 (validRegex!8001 (ite c!1157318 (regTwo!33043 lt!2366179) (regTwo!33042 lt!2366179))))))

(declare-fun b!6358417 () Bool)

(declare-fun e!3861141 () Bool)

(assert (=> b!6358417 (= e!3861141 call!542331)))

(declare-fun bm!542328 () Bool)

(declare-fun call!542333 () Bool)

(assert (=> bm!542328 (= call!542333 call!542332)))

(declare-fun b!6358419 () Bool)

(declare-fun e!3861144 () Bool)

(declare-fun e!3861145 () Bool)

(assert (=> b!6358419 (= e!3861144 e!3861145)))

(assert (=> b!6358419 (= c!1157317 ((_ is Star!16265) lt!2366179))))

(declare-fun b!6358420 () Bool)

(assert (=> b!6358420 (= e!3861146 e!3861141)))

(declare-fun res!2616344 () Bool)

(assert (=> b!6358420 (=> (not res!2616344) (not e!3861141))))

(assert (=> b!6358420 (= res!2616344 call!542333)))

(declare-fun b!6358421 () Bool)

(declare-fun res!2616340 () Bool)

(assert (=> b!6358421 (=> (not res!2616340) (not e!3861142))))

(assert (=> b!6358421 (= res!2616340 call!542333)))

(assert (=> b!6358421 (= e!3861147 e!3861142)))

(declare-fun b!6358422 () Bool)

(declare-fun e!3861143 () Bool)

(assert (=> b!6358422 (= e!3861145 e!3861143)))

(declare-fun res!2616341 () Bool)

(assert (=> b!6358422 (= res!2616341 (not (nullable!6258 (reg!16594 lt!2366179))))))

(assert (=> b!6358422 (=> (not res!2616341) (not e!3861143))))

(declare-fun b!6358423 () Bool)

(assert (=> b!6358423 (= e!3861145 e!3861147)))

(assert (=> b!6358423 (= c!1157318 ((_ is Union!16265) lt!2366179))))

(declare-fun d!1994756 () Bool)

(declare-fun res!2616343 () Bool)

(assert (=> d!1994756 (=> res!2616343 e!3861144)))

(assert (=> d!1994756 (= res!2616343 ((_ is ElementMatch!16265) lt!2366179))))

(assert (=> d!1994756 (= (validRegex!8001 lt!2366179) e!3861144)))

(declare-fun b!6358418 () Bool)

(assert (=> b!6358418 (= e!3861143 call!542332)))

(assert (= (and d!1994756 (not res!2616343)) b!6358419))

(assert (= (and b!6358419 c!1157317) b!6358422))

(assert (= (and b!6358419 (not c!1157317)) b!6358423))

(assert (= (and b!6358422 res!2616341) b!6358418))

(assert (= (and b!6358423 c!1157318) b!6358421))

(assert (= (and b!6358423 (not c!1157318)) b!6358415))

(assert (= (and b!6358421 res!2616340) b!6358416))

(assert (= (and b!6358415 (not res!2616342)) b!6358420))

(assert (= (and b!6358420 res!2616344) b!6358417))

(assert (= (or b!6358416 b!6358417) bm!542327))

(assert (= (or b!6358421 b!6358420) bm!542328))

(assert (= (or b!6358418 bm!542328) bm!542326))

(declare-fun m!7164534 () Bool)

(assert (=> bm!542326 m!7164534))

(declare-fun m!7164536 () Bool)

(assert (=> bm!542327 m!7164536))

(declare-fun m!7164538 () Bool)

(assert (=> b!6358422 m!7164538))

(assert (=> d!1994248 d!1994756))

(declare-fun d!1994760 () Bool)

(assert (=> d!1994760 (= (isEmptyExpr!1667 lt!2366322) ((_ is EmptyExpr!16265) lt!2366322))))

(assert (=> b!6357147 d!1994760))

(assert (=> b!6357352 d!1994348))

(assert (=> d!1994252 d!1994362))

(assert (=> bm!542156 d!1994362))

(assert (=> d!1994246 d!1994248))

(assert (=> d!1994246 d!1994176))

(declare-fun d!1994762 () Bool)

(assert (=> d!1994762 (= (matchR!8448 lt!2366179 s!2326) (matchRSpec!3366 lt!2366179 s!2326))))

(assert (=> d!1994762 true))

(declare-fun _$88!5033 () Unit!158391)

(assert (=> d!1994762 (= (choose!47208 lt!2366179 s!2326) _$88!5033)))

(declare-fun bs!1593013 () Bool)

(assert (= bs!1593013 d!1994762))

(assert (=> bs!1593013 m!7162628))

(assert (=> bs!1593013 m!7162626))

(assert (=> d!1994246 d!1994762))

(assert (=> d!1994246 d!1994756))

(assert (=> b!6357462 d!1994348))

(declare-fun d!1994764 () Bool)

(assert (=> d!1994764 (= (isConcat!1190 lt!2366322) ((_ is Concat!25110) lt!2366322))))

(assert (=> b!6357139 d!1994764))

(declare-fun bs!1593014 () Bool)

(declare-fun d!1994766 () Bool)

(assert (= bs!1593014 (and d!1994766 b!6356395)))

(declare-fun lambda!350189 () Int)

(assert (=> bs!1593014 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350189 lambda!349995))))

(declare-fun bs!1593015 () Bool)

(assert (= bs!1593015 (and d!1994766 b!6357721)))

(assert (=> bs!1593015 (not (= lambda!350189 lambda!350129))))

(declare-fun bs!1593016 () Bool)

(assert (= bs!1593016 (and d!1994766 b!6358361)))

(assert (=> bs!1593016 (not (= lambda!350189 lambda!350182))))

(declare-fun bs!1593017 () Bool)

(assert (= bs!1593017 (and d!1994766 d!1994330)))

(assert (=> bs!1593017 (not (= lambda!350189 lambda!350122))))

(declare-fun bs!1593018 () Bool)

(assert (= bs!1593018 (and d!1994766 b!6357049)))

(assert (=> bs!1593018 (not (= lambda!350189 lambda!350077))))

(declare-fun bs!1593019 () Bool)

(assert (= bs!1593019 (and d!1994766 b!6356387)))

(assert (=> bs!1593019 (not (= lambda!350189 lambda!349999))))

(declare-fun bs!1593020 () Bool)

(assert (= bs!1593020 (and d!1994766 d!1994310)))

(assert (=> bs!1593020 (not (= lambda!350189 lambda!350113))))

(declare-fun bs!1593021 () Bool)

(assert (= bs!1593021 (and d!1994766 d!1994256)))

(assert (=> bs!1593021 (= lambda!350189 lambda!350102)))

(declare-fun bs!1593022 () Bool)

(assert (= bs!1593022 (and d!1994766 d!1994616)))

(assert (=> bs!1593022 (= lambda!350189 lambda!350148)))

(declare-fun bs!1593023 () Bool)

(assert (= bs!1593023 (and d!1994766 b!6357396)))

(assert (=> bs!1593023 (not (= lambda!350189 lambda!350109))))

(assert (=> bs!1593017 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350189 lambda!350121))))

(declare-fun bs!1593024 () Bool)

(assert (= bs!1593024 (and d!1994766 b!6357617)))

(assert (=> bs!1593024 (not (= lambda!350189 lambda!350124))))

(declare-fun bs!1593025 () Bool)

(assert (= bs!1593025 (and d!1994766 b!6357910)))

(assert (=> bs!1593025 (not (= lambda!350189 lambda!350134))))

(assert (=> bs!1593014 (not (= lambda!350189 lambda!349996))))

(assert (=> bs!1593020 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350189 lambda!350112))))

(declare-fun bs!1593026 () Bool)

(assert (= bs!1593026 (and d!1994766 b!6357729)))

(assert (=> bs!1593026 (not (= lambda!350189 lambda!350130))))

(declare-fun bs!1593027 () Bool)

(assert (= bs!1593027 (and d!1994766 d!1994570)))

(assert (=> bs!1593027 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350189 lambda!350145))))

(declare-fun bs!1593028 () Bool)

(assert (= bs!1593028 (and d!1994766 d!1994502)))

(assert (=> bs!1593028 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350189 lambda!350138))))

(declare-fun bs!1593029 () Bool)

(assert (= bs!1593029 (and d!1994766 d!1994208)))

(assert (=> bs!1593029 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350189 lambda!350096))))

(assert (=> bs!1593019 (= lambda!350189 lambda!350000)))

(declare-fun bs!1593030 () Bool)

(assert (= bs!1593030 (and d!1994766 b!6358031)))

(assert (=> bs!1593030 (not (= lambda!350189 lambda!350142))))

(declare-fun bs!1593031 () Bool)

(assert (= bs!1593031 (and d!1994766 b!6357057)))

(assert (=> bs!1593031 (not (= lambda!350189 lambda!350078))))

(assert (=> bs!1593019 (not (= lambda!350189 lambda!350001))))

(declare-fun bs!1593032 () Bool)

(assert (= bs!1593032 (and d!1994766 b!6358023)))

(assert (=> bs!1593032 (not (= lambda!350189 lambda!350141))))

(declare-fun bs!1593033 () Bool)

(assert (= bs!1593033 (and d!1994766 b!6357258)))

(assert (=> bs!1593033 (not (= lambda!350189 lambda!350099))))

(declare-fun bs!1593034 () Bool)

(assert (= bs!1593034 (and d!1994766 b!6357625)))

(assert (=> bs!1593034 (not (= lambda!350189 lambda!350125))))

(declare-fun bs!1593035 () Bool)

(assert (= bs!1593035 (and d!1994766 b!6357404)))

(assert (=> bs!1593035 (not (= lambda!350189 lambda!350110))))

(declare-fun bs!1593036 () Bool)

(assert (= bs!1593036 (and d!1994766 d!1994308)))

(assert (=> bs!1593036 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366173 (regTwo!33042 r!7292))) (= lambda!350189 lambda!350111))))

(declare-fun bs!1593037 () Bool)

(assert (= bs!1593037 (and d!1994766 b!6358034)))

(assert (=> bs!1593037 (not (= lambda!350189 lambda!350143))))

(assert (=> bs!1593019 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350189 lambda!349998))))

(assert (=> bs!1593022 (not (= lambda!350189 lambda!350153))))

(assert (=> bs!1593021 (not (= lambda!350189 lambda!350103))))

(declare-fun bs!1593038 () Bool)

(assert (= bs!1593038 (and d!1994766 b!6357918)))

(assert (=> bs!1593038 (not (= lambda!350189 lambda!350135))))

(declare-fun bs!1593039 () Bool)

(assert (= bs!1593039 (and d!1994766 b!6357250)))

(assert (=> bs!1593039 (not (= lambda!350189 lambda!350098))))

(declare-fun bs!1593040 () Bool)

(assert (= bs!1593040 (and d!1994766 b!6358042)))

(assert (=> bs!1593040 (not (= lambda!350189 lambda!350144))))

(declare-fun bs!1593041 () Bool)

(assert (= bs!1593041 (and d!1994766 d!1994242)))

(assert (=> bs!1593041 (= lambda!350189 lambda!350101)))

(declare-fun bs!1593042 () Bool)

(assert (= bs!1593042 (and d!1994766 d!1994166)))

(assert (=> bs!1593042 (= (and (= (regTwo!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33042 r!7292))) (= lt!2366173 lt!2366179)) (= lambda!350189 lambda!350061))))

(declare-fun bs!1593043 () Bool)

(assert (= bs!1593043 (and d!1994766 b!6358369)))

(assert (=> bs!1593043 (not (= lambda!350189 lambda!350184))))

(assert (=> bs!1593029 (not (= lambda!350189 lambda!350097))))

(assert (=> d!1994766 true))

(assert (=> d!1994766 true))

(assert (=> d!1994766 true))

(assert (=> d!1994766 (= (isDefined!12859 (findConcatSeparation!2570 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 Nil!64972 s!2326 s!2326)) (Exists!3335 lambda!350189))))

(assert (=> d!1994766 true))

(declare-fun _$89!2576 () Unit!158391)

(assert (=> d!1994766 (= (choose!47206 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326) _$89!2576)))

(declare-fun bs!1593044 () Bool)

(assert (= bs!1593044 d!1994766))

(assert (=> bs!1593044 m!7162598))

(assert (=> bs!1593044 m!7162598))

(assert (=> bs!1593044 m!7162622))

(declare-fun m!7164556 () Bool)

(assert (=> bs!1593044 m!7164556))

(assert (=> d!1994242 d!1994766))

(assert (=> d!1994242 d!1994376))

(declare-fun d!1994772 () Bool)

(assert (=> d!1994772 (= (Exists!3335 lambda!350101) (choose!47205 lambda!350101))))

(declare-fun bs!1593045 () Bool)

(assert (= bs!1593045 d!1994772))

(declare-fun m!7164558 () Bool)

(assert (=> bs!1593045 m!7164558))

(assert (=> d!1994242 d!1994772))

(assert (=> d!1994242 d!1994188))

(assert (=> d!1994242 d!1994258))

(declare-fun b!6358447 () Bool)

(declare-fun res!2616361 () Bool)

(declare-fun e!3861169 () Bool)

(assert (=> b!6358447 (=> res!2616361 e!3861169)))

(assert (=> b!6358447 (= res!2616361 (not ((_ is Concat!25110) (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292)))))))

(declare-fun e!3861170 () Bool)

(assert (=> b!6358447 (= e!3861170 e!3861169)))

(declare-fun c!1157322 () Bool)

(declare-fun call!542336 () Bool)

(declare-fun bm!542330 () Bool)

(declare-fun c!1157323 () Bool)

(assert (=> bm!542330 (= call!542336 (validRegex!8001 (ite c!1157322 (reg!16594 (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))) (ite c!1157323 (regOne!33043 (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))) (regOne!33042 (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292)))))))))

(declare-fun b!6358448 () Bool)

(declare-fun e!3861165 () Bool)

(declare-fun call!542335 () Bool)

(assert (=> b!6358448 (= e!3861165 call!542335)))

(declare-fun bm!542331 () Bool)

(assert (=> bm!542331 (= call!542335 (validRegex!8001 (ite c!1157323 (regTwo!33043 (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))) (regTwo!33042 (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))))))))

(declare-fun b!6358449 () Bool)

(declare-fun e!3861164 () Bool)

(assert (=> b!6358449 (= e!3861164 call!542335)))

(declare-fun bm!542332 () Bool)

(declare-fun call!542337 () Bool)

(assert (=> bm!542332 (= call!542337 call!542336)))

(declare-fun b!6358451 () Bool)

(declare-fun e!3861167 () Bool)

(declare-fun e!3861168 () Bool)

(assert (=> b!6358451 (= e!3861167 e!3861168)))

(assert (=> b!6358451 (= c!1157322 ((_ is Star!16265) (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))))))

(declare-fun b!6358452 () Bool)

(assert (=> b!6358452 (= e!3861169 e!3861164)))

(declare-fun res!2616363 () Bool)

(assert (=> b!6358452 (=> (not res!2616363) (not e!3861164))))

(assert (=> b!6358452 (= res!2616363 call!542337)))

(declare-fun b!6358453 () Bool)

(declare-fun res!2616359 () Bool)

(assert (=> b!6358453 (=> (not res!2616359) (not e!3861165))))

(assert (=> b!6358453 (= res!2616359 call!542337)))

(assert (=> b!6358453 (= e!3861170 e!3861165)))

(declare-fun b!6358454 () Bool)

(declare-fun e!3861166 () Bool)

(assert (=> b!6358454 (= e!3861168 e!3861166)))

(declare-fun res!2616360 () Bool)

(assert (=> b!6358454 (= res!2616360 (not (nullable!6258 (reg!16594 (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))))))))

(assert (=> b!6358454 (=> (not res!2616360) (not e!3861166))))

(declare-fun b!6358455 () Bool)

(assert (=> b!6358455 (= e!3861168 e!3861170)))

(assert (=> b!6358455 (= c!1157323 ((_ is Union!16265) (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))))))

(declare-fun d!1994774 () Bool)

(declare-fun res!2616362 () Bool)

(assert (=> d!1994774 (=> res!2616362 e!3861167)))

(assert (=> d!1994774 (= res!2616362 ((_ is ElementMatch!16265) (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))))))

(assert (=> d!1994774 (= (validRegex!8001 (ite c!1156794 (regTwo!33043 r!7292) (regTwo!33042 r!7292))) e!3861167)))

(declare-fun b!6358450 () Bool)

(assert (=> b!6358450 (= e!3861166 call!542336)))

(assert (= (and d!1994774 (not res!2616362)) b!6358451))

(assert (= (and b!6358451 c!1157322) b!6358454))

(assert (= (and b!6358451 (not c!1157322)) b!6358455))

(assert (= (and b!6358454 res!2616360) b!6358450))

(assert (= (and b!6358455 c!1157323) b!6358453))

(assert (= (and b!6358455 (not c!1157323)) b!6358447))

(assert (= (and b!6358453 res!2616359) b!6358448))

(assert (= (and b!6358447 (not res!2616361)) b!6358452))

(assert (= (and b!6358452 res!2616363) b!6358449))

(assert (= (or b!6358448 b!6358449) bm!542331))

(assert (= (or b!6358453 b!6358452) bm!542332))

(assert (= (or b!6358450 bm!542332) bm!542330))

(declare-fun m!7164560 () Bool)

(assert (=> bm!542330 m!7164560))

(declare-fun m!7164562 () Bool)

(assert (=> bm!542331 m!7164562))

(declare-fun m!7164564 () Bool)

(assert (=> b!6358454 m!7164564))

(assert (=> bm!542060 d!1994774))

(declare-fun d!1994776 () Bool)

(assert (=> d!1994776 true))

(assert (=> d!1994776 true))

(declare-fun res!2616364 () Bool)

(assert (=> d!1994776 (= (choose!47205 lambda!349996) res!2616364)))

(assert (=> d!1994304 d!1994776))

(declare-fun d!1994778 () Bool)

(assert (=> d!1994778 (= (Exists!3335 (ite c!1156943 lambda!350077 lambda!350078)) (choose!47205 (ite c!1156943 lambda!350077 lambda!350078)))))

(declare-fun bs!1593046 () Bool)

(assert (= bs!1593046 d!1994778))

(declare-fun m!7164566 () Bool)

(assert (=> bs!1593046 m!7164566))

(assert (=> bm!542121 d!1994778))

(declare-fun d!1994780 () Bool)

(assert (=> d!1994780 (= (nullable!6258 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (nullableFct!2204 (h!71418 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))))))

(declare-fun bs!1593047 () Bool)

(assert (= bs!1593047 d!1994780))

(declare-fun m!7164568 () Bool)

(assert (=> bs!1593047 m!7164568))

(assert (=> b!6356834 d!1994780))

(assert (=> b!6357380 d!1994286))

(declare-fun b!6358456 () Bool)

(declare-fun e!3861177 () Bool)

(assert (=> b!6358456 (= e!3861177 (not (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 r!7292 (head!13023 s!2326))))))))

(declare-fun b!6358457 () Bool)

(declare-fun res!2616369 () Bool)

(declare-fun e!3861176 () Bool)

(assert (=> b!6358457 (=> (not res!2616369) (not e!3861176))))

(declare-fun call!542338 () Bool)

(assert (=> b!6358457 (= res!2616369 (not call!542338))))

(declare-fun b!6358458 () Bool)

(declare-fun e!3861174 () Bool)

(declare-fun lt!2366478 () Bool)

(assert (=> b!6358458 (= e!3861174 (= lt!2366478 call!542338))))

(declare-fun bm!542333 () Bool)

(assert (=> bm!542333 (= call!542338 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun b!6358459 () Bool)

(declare-fun e!3861173 () Bool)

(declare-fun e!3861171 () Bool)

(assert (=> b!6358459 (= e!3861173 e!3861171)))

(declare-fun res!2616368 () Bool)

(assert (=> b!6358459 (=> (not res!2616368) (not e!3861171))))

(assert (=> b!6358459 (= res!2616368 (not lt!2366478))))

(declare-fun b!6358460 () Bool)

(assert (=> b!6358460 (= e!3861176 (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 r!7292 (head!13023 s!2326)))))))

(declare-fun b!6358461 () Bool)

(declare-fun e!3861172 () Bool)

(assert (=> b!6358461 (= e!3861172 (not lt!2366478))))

(declare-fun b!6358462 () Bool)

(assert (=> b!6358462 (= e!3861171 e!3861177)))

(declare-fun res!2616370 () Bool)

(assert (=> b!6358462 (=> res!2616370 e!3861177)))

(assert (=> b!6358462 (= res!2616370 call!542338)))

(declare-fun b!6358463 () Bool)

(assert (=> b!6358463 (= e!3861174 e!3861172)))

(declare-fun c!1157324 () Bool)

(assert (=> b!6358463 (= c!1157324 ((_ is EmptyLang!16265) (derivativeStep!4970 r!7292 (head!13023 s!2326))))))

(declare-fun b!6358464 () Bool)

(declare-fun e!3861175 () Bool)

(assert (=> b!6358464 (= e!3861175 (nullable!6258 (derivativeStep!4970 r!7292 (head!13023 s!2326))))))

(declare-fun b!6358465 () Bool)

(declare-fun res!2616372 () Bool)

(assert (=> b!6358465 (=> res!2616372 e!3861173)))

(assert (=> b!6358465 (= res!2616372 (not ((_ is ElementMatch!16265) (derivativeStep!4970 r!7292 (head!13023 s!2326)))))))

(assert (=> b!6358465 (= e!3861172 e!3861173)))

(declare-fun b!6358466 () Bool)

(declare-fun res!2616367 () Bool)

(assert (=> b!6358466 (=> res!2616367 e!3861177)))

(assert (=> b!6358466 (= res!2616367 (not (isEmpty!37073 (tail!12108 (tail!12108 s!2326)))))))

(declare-fun b!6358468 () Bool)

(declare-fun res!2616365 () Bool)

(assert (=> b!6358468 (=> res!2616365 e!3861173)))

(assert (=> b!6358468 (= res!2616365 e!3861176)))

(declare-fun res!2616371 () Bool)

(assert (=> b!6358468 (=> (not res!2616371) (not e!3861176))))

(assert (=> b!6358468 (= res!2616371 lt!2366478)))

(declare-fun b!6358469 () Bool)

(declare-fun res!2616366 () Bool)

(assert (=> b!6358469 (=> (not res!2616366) (not e!3861176))))

(assert (=> b!6358469 (= res!2616366 (isEmpty!37073 (tail!12108 (tail!12108 s!2326))))))

(declare-fun d!1994782 () Bool)

(assert (=> d!1994782 e!3861174))

(declare-fun c!1157326 () Bool)

(assert (=> d!1994782 (= c!1157326 ((_ is EmptyExpr!16265) (derivativeStep!4970 r!7292 (head!13023 s!2326))))))

(assert (=> d!1994782 (= lt!2366478 e!3861175)))

(declare-fun c!1157325 () Bool)

(assert (=> d!1994782 (= c!1157325 (isEmpty!37073 (tail!12108 s!2326)))))

(assert (=> d!1994782 (validRegex!8001 (derivativeStep!4970 r!7292 (head!13023 s!2326)))))

(assert (=> d!1994782 (= (matchR!8448 (derivativeStep!4970 r!7292 (head!13023 s!2326)) (tail!12108 s!2326)) lt!2366478)))

(declare-fun b!6358467 () Bool)

(assert (=> b!6358467 (= e!3861175 (matchR!8448 (derivativeStep!4970 (derivativeStep!4970 r!7292 (head!13023 s!2326)) (head!13023 (tail!12108 s!2326))) (tail!12108 (tail!12108 s!2326))))))

(assert (= (and d!1994782 c!1157325) b!6358464))

(assert (= (and d!1994782 (not c!1157325)) b!6358467))

(assert (= (and d!1994782 c!1157326) b!6358458))

(assert (= (and d!1994782 (not c!1157326)) b!6358463))

(assert (= (and b!6358463 c!1157324) b!6358461))

(assert (= (and b!6358463 (not c!1157324)) b!6358465))

(assert (= (and b!6358465 (not res!2616372)) b!6358468))

(assert (= (and b!6358468 res!2616371) b!6358457))

(assert (= (and b!6358457 res!2616369) b!6358469))

(assert (= (and b!6358469 res!2616366) b!6358460))

(assert (= (and b!6358468 (not res!2616365)) b!6358459))

(assert (= (and b!6358459 res!2616368) b!6358462))

(assert (= (and b!6358462 (not res!2616370)) b!6358466))

(assert (= (and b!6358466 (not res!2616367)) b!6358456))

(assert (= (or b!6358458 b!6358457 b!6358462) bm!542333))

(assert (=> b!6358466 m!7163356))

(assert (=> b!6358466 m!7163880))

(assert (=> b!6358466 m!7163880))

(assert (=> b!6358466 m!7163892))

(assert (=> b!6358467 m!7163356))

(assert (=> b!6358467 m!7163876))

(assert (=> b!6358467 m!7163520))

(assert (=> b!6358467 m!7163876))

(declare-fun m!7164570 () Bool)

(assert (=> b!6358467 m!7164570))

(assert (=> b!6358467 m!7163356))

(assert (=> b!6358467 m!7163880))

(assert (=> b!6358467 m!7164570))

(assert (=> b!6358467 m!7163880))

(declare-fun m!7164572 () Bool)

(assert (=> b!6358467 m!7164572))

(assert (=> b!6358469 m!7163356))

(assert (=> b!6358469 m!7163880))

(assert (=> b!6358469 m!7163880))

(assert (=> b!6358469 m!7163892))

(assert (=> b!6358460 m!7163356))

(assert (=> b!6358460 m!7163876))

(assert (=> b!6358464 m!7163520))

(declare-fun m!7164574 () Bool)

(assert (=> b!6358464 m!7164574))

(assert (=> d!1994782 m!7163356))

(assert (=> d!1994782 m!7163358))

(assert (=> d!1994782 m!7163520))

(declare-fun m!7164576 () Bool)

(assert (=> d!1994782 m!7164576))

(assert (=> bm!542333 m!7163356))

(assert (=> bm!542333 m!7163358))

(assert (=> b!6358456 m!7163356))

(assert (=> b!6358456 m!7163876))

(assert (=> b!6357418 d!1994782))

(declare-fun b!6358490 () Bool)

(declare-fun e!3861190 () Regex!16265)

(declare-fun call!542344 () Regex!16265)

(declare-fun call!542343 () Regex!16265)

(assert (=> b!6358490 (= e!3861190 (Union!16265 call!542344 call!542343))))

(declare-fun b!6358491 () Bool)

(declare-fun e!3861188 () Regex!16265)

(declare-fun call!542345 () Regex!16265)

(assert (=> b!6358491 (= e!3861188 (Concat!25110 call!542345 r!7292))))

(declare-fun b!6358492 () Bool)

(assert (=> b!6358492 (= e!3861190 e!3861188)))

(declare-fun c!1157340 () Bool)

(assert (=> b!6358492 (= c!1157340 ((_ is Star!16265) r!7292))))

(declare-fun b!6358493 () Bool)

(declare-fun e!3861189 () Regex!16265)

(assert (=> b!6358493 (= e!3861189 EmptyLang!16265)))

(declare-fun b!6358494 () Bool)

(declare-fun e!3861192 () Regex!16265)

(assert (=> b!6358494 (= e!3861192 (ite (= (head!13023 s!2326) (c!1156730 r!7292)) EmptyExpr!16265 EmptyLang!16265))))

(declare-fun b!6358495 () Bool)

(declare-fun e!3861191 () Regex!16265)

(declare-fun call!542346 () Regex!16265)

(assert (=> b!6358495 (= e!3861191 (Union!16265 (Concat!25110 call!542346 (regTwo!33042 r!7292)) EmptyLang!16265))))

(declare-fun bm!542338 () Bool)

(assert (=> bm!542338 (= call!542345 call!542343)))

(declare-fun bm!542339 () Bool)

(assert (=> bm!542339 (= call!542346 call!542345)))

(declare-fun b!6358496 () Bool)

(assert (=> b!6358496 (= e!3861189 e!3861192)))

(declare-fun c!1157339 () Bool)

(assert (=> b!6358496 (= c!1157339 ((_ is ElementMatch!16265) r!7292))))

(declare-fun d!1994784 () Bool)

(declare-fun lt!2366481 () Regex!16265)

(assert (=> d!1994784 (validRegex!8001 lt!2366481)))

(assert (=> d!1994784 (= lt!2366481 e!3861189)))

(declare-fun c!1157338 () Bool)

(assert (=> d!1994784 (= c!1157338 (or ((_ is EmptyExpr!16265) r!7292) ((_ is EmptyLang!16265) r!7292)))))

(assert (=> d!1994784 (validRegex!8001 r!7292)))

(assert (=> d!1994784 (= (derivativeStep!4970 r!7292 (head!13023 s!2326)) lt!2366481)))

(declare-fun b!6358497 () Bool)

(declare-fun c!1157341 () Bool)

(assert (=> b!6358497 (= c!1157341 ((_ is Union!16265) r!7292))))

(assert (=> b!6358497 (= e!3861192 e!3861190)))

(declare-fun b!6358498 () Bool)

(declare-fun c!1157337 () Bool)

(assert (=> b!6358498 (= c!1157337 (nullable!6258 (regOne!33042 r!7292)))))

(assert (=> b!6358498 (= e!3861188 e!3861191)))

(declare-fun b!6358499 () Bool)

(assert (=> b!6358499 (= e!3861191 (Union!16265 (Concat!25110 call!542344 (regTwo!33042 r!7292)) call!542346))))

(declare-fun bm!542340 () Bool)

(assert (=> bm!542340 (= call!542343 (derivativeStep!4970 (ite c!1157341 (regTwo!33043 r!7292) (ite c!1157340 (reg!16594 r!7292) (ite c!1157337 (regTwo!33042 r!7292) (regOne!33042 r!7292)))) (head!13023 s!2326)))))

(declare-fun bm!542341 () Bool)

(assert (=> bm!542341 (= call!542344 (derivativeStep!4970 (ite c!1157341 (regOne!33043 r!7292) (regOne!33042 r!7292)) (head!13023 s!2326)))))

(assert (= (and d!1994784 c!1157338) b!6358493))

(assert (= (and d!1994784 (not c!1157338)) b!6358496))

(assert (= (and b!6358496 c!1157339) b!6358494))

(assert (= (and b!6358496 (not c!1157339)) b!6358497))

(assert (= (and b!6358497 c!1157341) b!6358490))

(assert (= (and b!6358497 (not c!1157341)) b!6358492))

(assert (= (and b!6358492 c!1157340) b!6358491))

(assert (= (and b!6358492 (not c!1157340)) b!6358498))

(assert (= (and b!6358498 c!1157337) b!6358499))

(assert (= (and b!6358498 (not c!1157337)) b!6358495))

(assert (= (or b!6358499 b!6358495) bm!542339))

(assert (= (or b!6358491 bm!542339) bm!542338))

(assert (= (or b!6358490 bm!542338) bm!542340))

(assert (= (or b!6358490 b!6358499) bm!542341))

(declare-fun m!7164578 () Bool)

(assert (=> d!1994784 m!7164578))

(assert (=> d!1994784 m!7162576))

(assert (=> b!6358498 m!7163716))

(assert (=> bm!542340 m!7163360))

(declare-fun m!7164580 () Bool)

(assert (=> bm!542340 m!7164580))

(assert (=> bm!542341 m!7163360))

(declare-fun m!7164582 () Bool)

(assert (=> bm!542341 m!7164582))

(assert (=> b!6357418 d!1994784))

(assert (=> b!6357418 d!1994348))

(assert (=> b!6357418 d!1994342))

(assert (=> b!6357425 d!1994348))

(assert (=> d!1994244 d!1994362))

(declare-fun bs!1593048 () Bool)

(declare-fun d!1994786 () Bool)

(assert (= bs!1593048 (and d!1994786 d!1994470)))

(declare-fun lambda!350190 () Int)

(assert (=> bs!1593048 (= lambda!350190 lambda!350133)))

(declare-fun bs!1593049 () Bool)

(assert (= bs!1593049 (and d!1994786 d!1994680)))

(assert (=> bs!1593049 (= lambda!350190 lambda!350174)))

(declare-fun bs!1593050 () Bool)

(assert (= bs!1593050 (and d!1994786 b!6358337)))

(assert (=> bs!1593050 (not (= lambda!350190 lambda!350180))))

(declare-fun bs!1593051 () Bool)

(assert (= bs!1593051 (and d!1994786 d!1994268)))

(assert (=> bs!1593051 (= lambda!350190 lambda!350106)))

(declare-fun bs!1593052 () Bool)

(assert (= bs!1593052 (and d!1994786 d!1994202)))

(assert (=> bs!1593052 (= lambda!350190 lambda!350079)))

(declare-fun bs!1593053 () Bool)

(assert (= bs!1593053 (and d!1994786 d!1994240)))

(assert (=> bs!1593053 (= lambda!350190 lambda!350100)))

(declare-fun bs!1593054 () Bool)

(assert (= bs!1593054 (and d!1994786 d!1994604)))

(assert (=> bs!1593054 (= lambda!350190 lambda!350147)))

(declare-fun bs!1593055 () Bool)

(assert (= bs!1593055 (and d!1994786 d!1994068)))

(assert (=> bs!1593055 (= lambda!350190 lambda!350024)))

(declare-fun bs!1593056 () Bool)

(assert (= bs!1593056 (and d!1994786 d!1994280)))

(assert (=> bs!1593056 (= lambda!350190 lambda!350108)))

(declare-fun bs!1593057 () Bool)

(assert (= bs!1593057 (and d!1994786 b!6358335)))

(assert (=> bs!1593057 (not (= lambda!350190 lambda!350179))))

(declare-fun bs!1593058 () Bool)

(assert (= bs!1593058 (and d!1994786 d!1994536)))

(assert (=> bs!1593058 (= lambda!350190 lambda!350140)))

(declare-fun bs!1593059 () Bool)

(assert (= bs!1593059 (and d!1994786 d!1994632)))

(assert (=> bs!1593059 (= lambda!350190 lambda!350157)))

(declare-fun bs!1593060 () Bool)

(assert (= bs!1593060 (and d!1994786 d!1994168)))

(assert (=> bs!1593060 (= lambda!350190 lambda!350067)))

(declare-fun bs!1593061 () Bool)

(assert (= bs!1593061 (and d!1994786 b!6358235)))

(assert (=> bs!1593061 (not (= lambda!350190 lambda!350164))))

(declare-fun bs!1593062 () Bool)

(assert (= bs!1593062 (and d!1994786 d!1994572)))

(assert (=> bs!1593062 (= lambda!350190 lambda!350146)))

(declare-fun bs!1593063 () Bool)

(assert (= bs!1593063 (and d!1994786 b!6358233)))

(assert (=> bs!1593063 (not (= lambda!350190 lambda!350163))))

(declare-fun bs!1593064 () Bool)

(assert (= bs!1593064 (and d!1994786 d!1994060)))

(assert (=> bs!1593064 (= lambda!350190 lambda!350020)))

(declare-fun bs!1593065 () Bool)

(assert (= bs!1593065 (and d!1994786 d!1994278)))

(assert (=> bs!1593065 (= lambda!350190 lambda!350107)))

(declare-fun b!6358500 () Bool)

(declare-fun e!3861197 () Bool)

(declare-fun lt!2366482 () Regex!16265)

(assert (=> b!6358500 (= e!3861197 (isEmptyLang!1674 lt!2366482))))

(declare-fun b!6358501 () Bool)

(declare-fun e!3861196 () Bool)

(assert (=> b!6358501 (= e!3861196 (isUnion!1104 lt!2366482))))

(declare-fun b!6358502 () Bool)

(declare-fun e!3861195 () Regex!16265)

(declare-fun e!3861198 () Regex!16265)

(assert (=> b!6358502 (= e!3861195 e!3861198)))

(declare-fun c!1157345 () Bool)

(assert (=> b!6358502 (= c!1157345 ((_ is Cons!64970) (t!378684 (unfocusZipperList!1686 zl!343))))))

(declare-fun b!6358503 () Bool)

(assert (=> b!6358503 (= e!3861197 e!3861196)))

(declare-fun c!1157344 () Bool)

(assert (=> b!6358503 (= c!1157344 (isEmpty!37069 (tail!12107 (t!378684 (unfocusZipperList!1686 zl!343)))))))

(declare-fun b!6358504 () Bool)

(declare-fun e!3861193 () Bool)

(assert (=> b!6358504 (= e!3861193 (isEmpty!37069 (t!378684 (t!378684 (unfocusZipperList!1686 zl!343)))))))

(declare-fun b!6358505 () Bool)

(declare-fun e!3861194 () Bool)

(assert (=> b!6358505 (= e!3861194 e!3861197)))

(declare-fun c!1157342 () Bool)

(assert (=> b!6358505 (= c!1157342 (isEmpty!37069 (t!378684 (unfocusZipperList!1686 zl!343))))))

(assert (=> d!1994786 e!3861194))

(declare-fun res!2616374 () Bool)

(assert (=> d!1994786 (=> (not res!2616374) (not e!3861194))))

(assert (=> d!1994786 (= res!2616374 (validRegex!8001 lt!2366482))))

(assert (=> d!1994786 (= lt!2366482 e!3861195)))

(declare-fun c!1157343 () Bool)

(assert (=> d!1994786 (= c!1157343 e!3861193)))

(declare-fun res!2616373 () Bool)

(assert (=> d!1994786 (=> (not res!2616373) (not e!3861193))))

(assert (=> d!1994786 (= res!2616373 ((_ is Cons!64970) (t!378684 (unfocusZipperList!1686 zl!343))))))

(assert (=> d!1994786 (forall!15441 (t!378684 (unfocusZipperList!1686 zl!343)) lambda!350190)))

(assert (=> d!1994786 (= (generalisedUnion!2109 (t!378684 (unfocusZipperList!1686 zl!343))) lt!2366482)))

(declare-fun b!6358506 () Bool)

(assert (=> b!6358506 (= e!3861195 (h!71418 (t!378684 (unfocusZipperList!1686 zl!343))))))

(declare-fun b!6358507 () Bool)

(assert (=> b!6358507 (= e!3861198 (Union!16265 (h!71418 (t!378684 (unfocusZipperList!1686 zl!343))) (generalisedUnion!2109 (t!378684 (t!378684 (unfocusZipperList!1686 zl!343))))))))

(declare-fun b!6358508 () Bool)

(assert (=> b!6358508 (= e!3861196 (= lt!2366482 (head!13022 (t!378684 (unfocusZipperList!1686 zl!343)))))))

(declare-fun b!6358509 () Bool)

(assert (=> b!6358509 (= e!3861198 EmptyLang!16265)))

(assert (= (and d!1994786 res!2616373) b!6358504))

(assert (= (and d!1994786 c!1157343) b!6358506))

(assert (= (and d!1994786 (not c!1157343)) b!6358502))

(assert (= (and b!6358502 c!1157345) b!6358507))

(assert (= (and b!6358502 (not c!1157345)) b!6358509))

(assert (= (and d!1994786 res!2616374) b!6358505))

(assert (= (and b!6358505 c!1157342) b!6358500))

(assert (= (and b!6358505 (not c!1157342)) b!6358503))

(assert (= (and b!6358503 c!1157344) b!6358508))

(assert (= (and b!6358503 (not c!1157344)) b!6358501))

(declare-fun m!7164584 () Bool)

(assert (=> b!6358508 m!7164584))

(assert (=> b!6358505 m!7162824))

(declare-fun m!7164586 () Bool)

(assert (=> b!6358503 m!7164586))

(assert (=> b!6358503 m!7164586))

(declare-fun m!7164588 () Bool)

(assert (=> b!6358503 m!7164588))

(declare-fun m!7164590 () Bool)

(assert (=> b!6358500 m!7164590))

(declare-fun m!7164592 () Bool)

(assert (=> b!6358507 m!7164592))

(declare-fun m!7164594 () Bool)

(assert (=> b!6358504 m!7164594))

(declare-fun m!7164596 () Bool)

(assert (=> b!6358501 m!7164596))

(declare-fun m!7164598 () Bool)

(assert (=> d!1994786 m!7164598))

(declare-fun m!7164600 () Bool)

(assert (=> d!1994786 m!7164600))

(assert (=> b!6356677 d!1994786))

(declare-fun c!1157349 () Bool)

(declare-fun d!1994788 () Bool)

(assert (=> d!1994788 (= c!1157349 (and ((_ is ElementMatch!16265) (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))) (= (c!1156730 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))) (h!71420 s!2326))))))

(declare-fun e!3861202 () (InoxSet Context!11298))

(assert (=> d!1994788 (= (derivationStepZipperDown!1513 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))) (ite c!1156898 lt!2366189 (Context!11299 call!542110)) (h!71420 s!2326)) e!3861202)))

(declare-fun b!6358510 () Bool)

(declare-fun c!1157347 () Bool)

(assert (=> b!6358510 (= c!1157347 ((_ is Star!16265) (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun e!3861199 () (InoxSet Context!11298))

(declare-fun e!3861201 () (InoxSet Context!11298))

(assert (=> b!6358510 (= e!3861199 e!3861201)))

(declare-fun bm!542346 () Bool)

(declare-fun call!542354 () (InoxSet Context!11298))

(declare-fun call!542351 () (InoxSet Context!11298))

(assert (=> bm!542346 (= call!542354 call!542351)))

(declare-fun b!6358511 () Bool)

(declare-fun e!3861203 () (InoxSet Context!11298))

(assert (=> b!6358511 (= e!3861202 e!3861203)))

(declare-fun c!1157346 () Bool)

(assert (=> b!6358511 (= c!1157346 ((_ is Union!16265) (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun b!6358512 () Bool)

(assert (=> b!6358512 (= e!3861199 call!542354)))

(declare-fun bm!542347 () Bool)

(declare-fun c!1157350 () Bool)

(declare-fun call!542355 () List!65094)

(declare-fun c!1157348 () Bool)

(declare-fun call!542352 () (InoxSet Context!11298))

(assert (=> bm!542347 (= call!542352 (derivationStepZipperDown!1513 (ite c!1157346 (regTwo!33043 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))) (ite c!1157348 (regTwo!33042 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))) (ite c!1157350 (regOne!33042 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))) (reg!16594 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))))))) (ite (or c!1157346 c!1157348) (ite c!1156898 lt!2366189 (Context!11299 call!542110)) (Context!11299 call!542355)) (h!71420 s!2326)))))

(declare-fun b!6358513 () Bool)

(declare-fun call!542353 () (InoxSet Context!11298))

(assert (=> b!6358513 (= e!3861203 ((_ map or) call!542353 call!542352))))

(declare-fun b!6358514 () Bool)

(declare-fun e!3861200 () (InoxSet Context!11298))

(assert (=> b!6358514 (= e!3861200 ((_ map or) call!542353 call!542351))))

(declare-fun b!6358515 () Bool)

(assert (=> b!6358515 (= e!3861202 (store ((as const (Array Context!11298 Bool)) false) (ite c!1156898 lt!2366189 (Context!11299 call!542110)) true))))

(declare-fun b!6358516 () Bool)

(declare-fun e!3861204 () Bool)

(assert (=> b!6358516 (= e!3861204 (nullable!6258 (regOne!33042 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))))))))

(declare-fun bm!542348 () Bool)

(assert (=> bm!542348 (= call!542351 call!542352)))

(declare-fun call!542356 () List!65094)

(declare-fun bm!542349 () Bool)

(assert (=> bm!542349 (= call!542356 ($colon$colon!2126 (exprs!6149 (ite c!1156898 lt!2366189 (Context!11299 call!542110))) (ite (or c!1157348 c!1157350) (regTwo!33042 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))) (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))))))))

(declare-fun bm!542350 () Bool)

(assert (=> bm!542350 (= call!542355 call!542356)))

(declare-fun b!6358517 () Bool)

(assert (=> b!6358517 (= c!1157348 e!3861204)))

(declare-fun res!2616375 () Bool)

(assert (=> b!6358517 (=> (not res!2616375) (not e!3861204))))

(assert (=> b!6358517 (= res!2616375 ((_ is Concat!25110) (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))

(assert (=> b!6358517 (= e!3861203 e!3861200)))

(declare-fun b!6358518 () Bool)

(assert (=> b!6358518 (= e!3861201 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6358519 () Bool)

(assert (=> b!6358519 (= e!3861201 call!542354)))

(declare-fun bm!542351 () Bool)

(assert (=> bm!542351 (= call!542353 (derivationStepZipperDown!1513 (ite c!1157346 (regOne!33043 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))) (regOne!33042 (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343))))))) (ite c!1157346 (ite c!1156898 lt!2366189 (Context!11299 call!542110)) (Context!11299 call!542356)) (h!71420 s!2326)))))

(declare-fun b!6358520 () Bool)

(assert (=> b!6358520 (= e!3861200 e!3861199)))

(assert (=> b!6358520 (= c!1157350 ((_ is Concat!25110) (ite c!1156898 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))

(assert (= (and d!1994788 c!1157349) b!6358515))

(assert (= (and d!1994788 (not c!1157349)) b!6358511))

(assert (= (and b!6358511 c!1157346) b!6358513))

(assert (= (and b!6358511 (not c!1157346)) b!6358517))

(assert (= (and b!6358517 res!2616375) b!6358516))

(assert (= (and b!6358517 c!1157348) b!6358514))

(assert (= (and b!6358517 (not c!1157348)) b!6358520))

(assert (= (and b!6358520 c!1157350) b!6358512))

(assert (= (and b!6358520 (not c!1157350)) b!6358510))

(assert (= (and b!6358510 c!1157347) b!6358519))

(assert (= (and b!6358510 (not c!1157347)) b!6358518))

(assert (= (or b!6358512 b!6358519) bm!542350))

(assert (= (or b!6358512 b!6358519) bm!542346))

(assert (= (or b!6358514 bm!542350) bm!542349))

(assert (= (or b!6358514 bm!542346) bm!542348))

(assert (= (or b!6358513 bm!542348) bm!542347))

(assert (= (or b!6358513 b!6358514) bm!542351))

(declare-fun m!7164602 () Bool)

(assert (=> b!6358515 m!7164602))

(declare-fun m!7164604 () Bool)

(assert (=> bm!542347 m!7164604))

(declare-fun m!7164606 () Bool)

(assert (=> b!6358516 m!7164606))

(declare-fun m!7164608 () Bool)

(assert (=> bm!542351 m!7164608))

(declare-fun m!7164610 () Bool)

(assert (=> bm!542349 m!7164610))

(assert (=> bm!542105 d!1994788))

(declare-fun d!1994790 () Bool)

(assert (=> d!1994790 (= (nullable!6258 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))) (nullableFct!2204 (Concat!25110 lt!2366185 (regTwo!33042 r!7292))))))

(declare-fun bs!1593066 () Bool)

(assert (= bs!1593066 d!1994790))

(declare-fun m!7164612 () Bool)

(assert (=> bs!1593066 m!7164612))

(assert (=> b!6357360 d!1994790))

(declare-fun d!1994792 () Bool)

(assert (=> d!1994792 (= (isEmptyExpr!1667 lt!2366349) ((_ is EmptyExpr!16265) lt!2366349))))

(assert (=> b!6357312 d!1994792))

(declare-fun b!6358531 () Bool)

(declare-fun e!3861216 () Bool)

(assert (=> b!6358531 (= e!3861216 (not (= (head!13023 (_2!36547 (get!22482 lt!2366378))) (c!1156730 (regTwo!33042 r!7292)))))))

(declare-fun b!6358532 () Bool)

(declare-fun res!2616380 () Bool)

(declare-fun e!3861215 () Bool)

(assert (=> b!6358532 (=> (not res!2616380) (not e!3861215))))

(declare-fun call!542361 () Bool)

(assert (=> b!6358532 (= res!2616380 (not call!542361))))

(declare-fun b!6358533 () Bool)

(declare-fun e!3861213 () Bool)

(declare-fun lt!2366484 () Bool)

(assert (=> b!6358533 (= e!3861213 (= lt!2366484 call!542361))))

(declare-fun bm!542356 () Bool)

(assert (=> bm!542356 (= call!542361 (isEmpty!37073 (_2!36547 (get!22482 lt!2366378))))))

(declare-fun b!6358534 () Bool)

(declare-fun e!3861212 () Bool)

(declare-fun e!3861210 () Bool)

(assert (=> b!6358534 (= e!3861212 e!3861210)))

(declare-fun res!2616379 () Bool)

(assert (=> b!6358534 (=> (not res!2616379) (not e!3861210))))

(assert (=> b!6358534 (= res!2616379 (not lt!2366484))))

(declare-fun b!6358535 () Bool)

(assert (=> b!6358535 (= e!3861215 (= (head!13023 (_2!36547 (get!22482 lt!2366378))) (c!1156730 (regTwo!33042 r!7292))))))

(declare-fun b!6358536 () Bool)

(declare-fun e!3861211 () Bool)

(assert (=> b!6358536 (= e!3861211 (not lt!2366484))))

(declare-fun b!6358537 () Bool)

(assert (=> b!6358537 (= e!3861210 e!3861216)))

(declare-fun res!2616381 () Bool)

(assert (=> b!6358537 (=> res!2616381 e!3861216)))

(assert (=> b!6358537 (= res!2616381 call!542361)))

(declare-fun b!6358538 () Bool)

(assert (=> b!6358538 (= e!3861213 e!3861211)))

(declare-fun c!1157356 () Bool)

(assert (=> b!6358538 (= c!1157356 ((_ is EmptyLang!16265) (regTwo!33042 r!7292)))))

(declare-fun b!6358539 () Bool)

(declare-fun e!3861214 () Bool)

(assert (=> b!6358539 (= e!3861214 (nullable!6258 (regTwo!33042 r!7292)))))

(declare-fun b!6358540 () Bool)

(declare-fun res!2616383 () Bool)

(assert (=> b!6358540 (=> res!2616383 e!3861212)))

(assert (=> b!6358540 (= res!2616383 (not ((_ is ElementMatch!16265) (regTwo!33042 r!7292))))))

(assert (=> b!6358540 (= e!3861211 e!3861212)))

(declare-fun b!6358541 () Bool)

(declare-fun res!2616378 () Bool)

(assert (=> b!6358541 (=> res!2616378 e!3861216)))

(assert (=> b!6358541 (= res!2616378 (not (isEmpty!37073 (tail!12108 (_2!36547 (get!22482 lt!2366378))))))))

(declare-fun b!6358543 () Bool)

(declare-fun res!2616376 () Bool)

(assert (=> b!6358543 (=> res!2616376 e!3861212)))

(assert (=> b!6358543 (= res!2616376 e!3861215)))

(declare-fun res!2616382 () Bool)

(assert (=> b!6358543 (=> (not res!2616382) (not e!3861215))))

(assert (=> b!6358543 (= res!2616382 lt!2366484)))

(declare-fun b!6358544 () Bool)

(declare-fun res!2616377 () Bool)

(assert (=> b!6358544 (=> (not res!2616377) (not e!3861215))))

(assert (=> b!6358544 (= res!2616377 (isEmpty!37073 (tail!12108 (_2!36547 (get!22482 lt!2366378)))))))

(declare-fun d!1994794 () Bool)

(assert (=> d!1994794 e!3861213))

(declare-fun c!1157358 () Bool)

(assert (=> d!1994794 (= c!1157358 ((_ is EmptyExpr!16265) (regTwo!33042 r!7292)))))

(assert (=> d!1994794 (= lt!2366484 e!3861214)))

(declare-fun c!1157357 () Bool)

(assert (=> d!1994794 (= c!1157357 (isEmpty!37073 (_2!36547 (get!22482 lt!2366378))))))

(assert (=> d!1994794 (validRegex!8001 (regTwo!33042 r!7292))))

(assert (=> d!1994794 (= (matchR!8448 (regTwo!33042 r!7292) (_2!36547 (get!22482 lt!2366378))) lt!2366484)))

(declare-fun b!6358542 () Bool)

(assert (=> b!6358542 (= e!3861214 (matchR!8448 (derivativeStep!4970 (regTwo!33042 r!7292) (head!13023 (_2!36547 (get!22482 lt!2366378)))) (tail!12108 (_2!36547 (get!22482 lt!2366378)))))))

(assert (= (and d!1994794 c!1157357) b!6358539))

(assert (= (and d!1994794 (not c!1157357)) b!6358542))

(assert (= (and d!1994794 c!1157358) b!6358533))

(assert (= (and d!1994794 (not c!1157358)) b!6358538))

(assert (= (and b!6358538 c!1157356) b!6358536))

(assert (= (and b!6358538 (not c!1157356)) b!6358540))

(assert (= (and b!6358540 (not res!2616383)) b!6358543))

(assert (= (and b!6358543 res!2616382) b!6358532))

(assert (= (and b!6358532 res!2616380) b!6358544))

(assert (= (and b!6358544 res!2616377) b!6358535))

(assert (= (and b!6358543 (not res!2616376)) b!6358534))

(assert (= (and b!6358534 res!2616379) b!6358537))

(assert (= (and b!6358537 (not res!2616381)) b!6358541))

(assert (= (and b!6358541 (not res!2616378)) b!6358531))

(assert (= (or b!6358533 b!6358532 b!6358537) bm!542356))

(declare-fun m!7164624 () Bool)

(assert (=> b!6358541 m!7164624))

(assert (=> b!6358541 m!7164624))

(declare-fun m!7164626 () Bool)

(assert (=> b!6358541 m!7164626))

(declare-fun m!7164628 () Bool)

(assert (=> b!6358542 m!7164628))

(assert (=> b!6358542 m!7164628))

(declare-fun m!7164630 () Bool)

(assert (=> b!6358542 m!7164630))

(assert (=> b!6358542 m!7164624))

(assert (=> b!6358542 m!7164630))

(assert (=> b!6358542 m!7164624))

(declare-fun m!7164632 () Bool)

(assert (=> b!6358542 m!7164632))

(assert (=> b!6358544 m!7164624))

(assert (=> b!6358544 m!7164624))

(assert (=> b!6358544 m!7164626))

(assert (=> b!6358535 m!7164628))

(assert (=> b!6358539 m!7163860))

(declare-fun m!7164634 () Bool)

(assert (=> d!1994794 m!7164634))

(assert (=> d!1994794 m!7163862))

(assert (=> bm!542356 m!7164634))

(assert (=> b!6358531 m!7164628))

(assert (=> b!6357456 d!1994794))

(assert (=> b!6357456 d!1994544))

(assert (=> bm!542146 d!1994362))

(declare-fun d!1994800 () Bool)

(assert (=> d!1994800 (= (isEmpty!37069 (tail!12107 lt!2366161)) ((_ is Nil!64970) (tail!12107 lt!2366161)))))

(assert (=> b!6356982 d!1994800))

(declare-fun d!1994802 () Bool)

(assert (=> d!1994802 (= (tail!12107 lt!2366161) (t!378684 lt!2366161))))

(assert (=> b!6356982 d!1994802))

(declare-fun b!6358545 () Bool)

(declare-fun res!2616389 () Bool)

(declare-fun e!3861222 () Bool)

(assert (=> b!6358545 (=> res!2616389 e!3861222)))

(assert (=> b!6358545 (= res!2616389 (not ((_ is Concat!25110) lt!2366367)))))

(declare-fun e!3861223 () Bool)

(assert (=> b!6358545 (= e!3861223 e!3861222)))

(declare-fun c!1157359 () Bool)

(declare-fun c!1157360 () Bool)

(declare-fun bm!542357 () Bool)

(declare-fun call!542363 () Bool)

(assert (=> bm!542357 (= call!542363 (validRegex!8001 (ite c!1157359 (reg!16594 lt!2366367) (ite c!1157360 (regOne!33043 lt!2366367) (regOne!33042 lt!2366367)))))))

(declare-fun b!6358546 () Bool)

(declare-fun e!3861218 () Bool)

(declare-fun call!542362 () Bool)

(assert (=> b!6358546 (= e!3861218 call!542362)))

(declare-fun bm!542358 () Bool)

(assert (=> bm!542358 (= call!542362 (validRegex!8001 (ite c!1157360 (regTwo!33043 lt!2366367) (regTwo!33042 lt!2366367))))))

(declare-fun b!6358547 () Bool)

(declare-fun e!3861217 () Bool)

(assert (=> b!6358547 (= e!3861217 call!542362)))

(declare-fun bm!542359 () Bool)

(declare-fun call!542364 () Bool)

(assert (=> bm!542359 (= call!542364 call!542363)))

(declare-fun b!6358549 () Bool)

(declare-fun e!3861220 () Bool)

(declare-fun e!3861221 () Bool)

(assert (=> b!6358549 (= e!3861220 e!3861221)))

(assert (=> b!6358549 (= c!1157359 ((_ is Star!16265) lt!2366367))))

(declare-fun b!6358550 () Bool)

(assert (=> b!6358550 (= e!3861222 e!3861217)))

(declare-fun res!2616391 () Bool)

(assert (=> b!6358550 (=> (not res!2616391) (not e!3861217))))

(assert (=> b!6358550 (= res!2616391 call!542364)))

(declare-fun b!6358551 () Bool)

(declare-fun res!2616387 () Bool)

(assert (=> b!6358551 (=> (not res!2616387) (not e!3861218))))

(assert (=> b!6358551 (= res!2616387 call!542364)))

(assert (=> b!6358551 (= e!3861223 e!3861218)))

(declare-fun b!6358552 () Bool)

(declare-fun e!3861219 () Bool)

(assert (=> b!6358552 (= e!3861221 e!3861219)))

(declare-fun res!2616388 () Bool)

(assert (=> b!6358552 (= res!2616388 (not (nullable!6258 (reg!16594 lt!2366367))))))

(assert (=> b!6358552 (=> (not res!2616388) (not e!3861219))))

(declare-fun b!6358553 () Bool)

(assert (=> b!6358553 (= e!3861221 e!3861223)))

(assert (=> b!6358553 (= c!1157360 ((_ is Union!16265) lt!2366367))))

(declare-fun d!1994804 () Bool)

(declare-fun res!2616390 () Bool)

(assert (=> d!1994804 (=> res!2616390 e!3861220)))

(assert (=> d!1994804 (= res!2616390 ((_ is ElementMatch!16265) lt!2366367))))

(assert (=> d!1994804 (= (validRegex!8001 lt!2366367) e!3861220)))

(declare-fun b!6358548 () Bool)

(assert (=> b!6358548 (= e!3861219 call!542363)))

(assert (= (and d!1994804 (not res!2616390)) b!6358549))

(assert (= (and b!6358549 c!1157359) b!6358552))

(assert (= (and b!6358549 (not c!1157359)) b!6358553))

(assert (= (and b!6358552 res!2616388) b!6358548))

(assert (= (and b!6358553 c!1157360) b!6358551))

(assert (= (and b!6358553 (not c!1157360)) b!6358545))

(assert (= (and b!6358551 res!2616387) b!6358546))

(assert (= (and b!6358545 (not res!2616389)) b!6358550))

(assert (= (and b!6358550 res!2616391) b!6358547))

(assert (= (or b!6358546 b!6358547) bm!542358))

(assert (= (or b!6358551 b!6358550) bm!542359))

(assert (= (or b!6358548 bm!542359) bm!542357))

(declare-fun m!7164636 () Bool)

(assert (=> bm!542357 m!7164636))

(declare-fun m!7164638 () Bool)

(assert (=> bm!542358 m!7164638))

(declare-fun m!7164640 () Bool)

(assert (=> b!6358552 m!7164640))

(assert (=> d!1994266 d!1994804))

(assert (=> d!1994266 d!1994060))

(assert (=> d!1994266 d!1994068))

(declare-fun b!6358564 () Bool)

(declare-fun e!3861231 () List!65096)

(assert (=> b!6358564 (= e!3861231 (Cons!64972 (h!71420 (_1!36547 (get!22482 lt!2366355))) (++!14334 (t!378686 (_1!36547 (get!22482 lt!2366355))) (_2!36547 (get!22482 lt!2366355)))))))

(declare-fun b!6358565 () Bool)

(declare-fun res!2616398 () Bool)

(declare-fun e!3861232 () Bool)

(assert (=> b!6358565 (=> (not res!2616398) (not e!3861232))))

(declare-fun lt!2366485 () List!65096)

(assert (=> b!6358565 (= res!2616398 (= (size!40345 lt!2366485) (+ (size!40345 (_1!36547 (get!22482 lt!2366355))) (size!40345 (_2!36547 (get!22482 lt!2366355))))))))

(declare-fun b!6358563 () Bool)

(assert (=> b!6358563 (= e!3861231 (_2!36547 (get!22482 lt!2366355)))))

(declare-fun b!6358566 () Bool)

(assert (=> b!6358566 (= e!3861232 (or (not (= (_2!36547 (get!22482 lt!2366355)) Nil!64972)) (= lt!2366485 (_1!36547 (get!22482 lt!2366355)))))))

(declare-fun d!1994808 () Bool)

(assert (=> d!1994808 e!3861232))

(declare-fun res!2616397 () Bool)

(assert (=> d!1994808 (=> (not res!2616397) (not e!3861232))))

(assert (=> d!1994808 (= res!2616397 (= (content!12267 lt!2366485) ((_ map or) (content!12267 (_1!36547 (get!22482 lt!2366355))) (content!12267 (_2!36547 (get!22482 lt!2366355))))))))

(assert (=> d!1994808 (= lt!2366485 e!3861231)))

(declare-fun c!1157363 () Bool)

(assert (=> d!1994808 (= c!1157363 ((_ is Nil!64972) (_1!36547 (get!22482 lt!2366355))))))

(assert (=> d!1994808 (= (++!14334 (_1!36547 (get!22482 lt!2366355)) (_2!36547 (get!22482 lt!2366355))) lt!2366485)))

(assert (= (and d!1994808 c!1157363) b!6358563))

(assert (= (and d!1994808 (not c!1157363)) b!6358564))

(assert (= (and d!1994808 res!2616397) b!6358565))

(assert (= (and b!6358565 res!2616398) b!6358566))

(declare-fun m!7164648 () Bool)

(assert (=> b!6358564 m!7164648))

(declare-fun m!7164650 () Bool)

(assert (=> b!6358565 m!7164650))

(declare-fun m!7164652 () Bool)

(assert (=> b!6358565 m!7164652))

(declare-fun m!7164654 () Bool)

(assert (=> b!6358565 m!7164654))

(declare-fun m!7164656 () Bool)

(assert (=> d!1994808 m!7164656))

(declare-fun m!7164658 () Bool)

(assert (=> d!1994808 m!7164658))

(declare-fun m!7164660 () Bool)

(assert (=> d!1994808 m!7164660))

(assert (=> b!6357339 d!1994808))

(assert (=> b!6357339 d!1994484))

(declare-fun d!1994814 () Bool)

(declare-fun c!1157366 () Bool)

(assert (=> d!1994814 (= c!1157366 (isEmpty!37073 (tail!12108 (t!378686 s!2326))))))

(declare-fun e!3861240 () Bool)

(assert (=> d!1994814 (= (matchZipper!2277 (derivationStepZipper!2231 ((_ map or) lt!2366169 lt!2366163) (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))) e!3861240)))

(declare-fun b!6358576 () Bool)

(assert (=> b!6358576 (= e!3861240 (nullableZipper!2031 (derivationStepZipper!2231 ((_ map or) lt!2366169 lt!2366163) (head!13023 (t!378686 s!2326)))))))

(declare-fun b!6358577 () Bool)

(assert (=> b!6358577 (= e!3861240 (matchZipper!2277 (derivationStepZipper!2231 (derivationStepZipper!2231 ((_ map or) lt!2366169 lt!2366163) (head!13023 (t!378686 s!2326))) (head!13023 (tail!12108 (t!378686 s!2326)))) (tail!12108 (tail!12108 (t!378686 s!2326)))))))

(assert (= (and d!1994814 c!1157366) b!6358576))

(assert (= (and d!1994814 (not c!1157366)) b!6358577))

(assert (=> d!1994814 m!7163466))

(assert (=> d!1994814 m!7163758))

(assert (=> b!6358576 m!7163480))

(declare-fun m!7164668 () Bool)

(assert (=> b!6358576 m!7164668))

(assert (=> b!6358577 m!7163466))

(assert (=> b!6358577 m!7163762))

(assert (=> b!6358577 m!7163480))

(assert (=> b!6358577 m!7163762))

(declare-fun m!7164670 () Bool)

(assert (=> b!6358577 m!7164670))

(assert (=> b!6358577 m!7163466))

(assert (=> b!6358577 m!7163766))

(assert (=> b!6358577 m!7164670))

(assert (=> b!6358577 m!7163766))

(declare-fun m!7164672 () Bool)

(assert (=> b!6358577 m!7164672))

(assert (=> b!6357374 d!1994814))

(declare-fun bs!1593069 () Bool)

(declare-fun d!1994818 () Bool)

(assert (= bs!1593069 (and d!1994818 d!1994382)))

(declare-fun lambda!350191 () Int)

(assert (=> bs!1593069 (= lambda!350191 lambda!350126)))

(declare-fun bs!1593070 () Bool)

(assert (= bs!1593070 (and d!1994818 b!6356406)))

(assert (=> bs!1593070 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350191 lambda!349997))))

(declare-fun bs!1593071 () Bool)

(assert (= bs!1593071 (and d!1994818 d!1994102)))

(assert (=> bs!1593071 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350191 lambda!350035))))

(declare-fun bs!1593072 () Bool)

(assert (= bs!1593072 (and d!1994818 d!1994622)))

(assert (=> bs!1593072 (= (= (head!13023 (t!378686 s!2326)) (head!13023 s!2326)) (= lambda!350191 lambda!350156))))

(declare-fun bs!1593074 () Bool)

(assert (= bs!1593074 (and d!1994818 d!1994458)))

(assert (=> bs!1593074 (= (= (head!13023 (t!378686 s!2326)) (head!13023 s!2326)) (= lambda!350191 lambda!350132))))

(assert (=> d!1994818 true))

(assert (=> d!1994818 (= (derivationStepZipper!2231 ((_ map or) lt!2366169 lt!2366163) (head!13023 (t!378686 s!2326))) (flatMap!1770 ((_ map or) lt!2366169 lt!2366163) lambda!350191))))

(declare-fun bs!1593077 () Bool)

(assert (= bs!1593077 d!1994818))

(declare-fun m!7164680 () Bool)

(assert (=> bs!1593077 m!7164680))

(assert (=> b!6357374 d!1994818))

(assert (=> b!6357374 d!1994384))

(assert (=> b!6357374 d!1994386))

(declare-fun b!6358580 () Bool)

(declare-fun e!3861245 () Bool)

(declare-fun e!3861246 () Bool)

(assert (=> b!6358580 (= e!3861245 e!3861246)))

(declare-fun res!2616405 () Bool)

(assert (=> b!6358580 (=> res!2616405 e!3861246)))

(assert (=> b!6358580 (= res!2616405 ((_ is Star!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6358581 () Bool)

(declare-fun e!3861244 () Bool)

(declare-fun call!542371 () Bool)

(assert (=> b!6358581 (= e!3861244 call!542371)))

(declare-fun b!6358582 () Bool)

(declare-fun e!3861242 () Bool)

(assert (=> b!6358582 (= e!3861242 e!3861244)))

(declare-fun res!2616407 () Bool)

(declare-fun call!542372 () Bool)

(assert (=> b!6358582 (= res!2616407 call!542372)))

(assert (=> b!6358582 (=> (not res!2616407) (not e!3861244))))

(declare-fun bm!542366 () Bool)

(declare-fun c!1157368 () Bool)

(assert (=> bm!542366 (= call!542372 (nullable!6258 (ite c!1157368 (regOne!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regOne!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun b!6358583 () Bool)

(declare-fun e!3861243 () Bool)

(assert (=> b!6358583 (= e!3861243 e!3861245)))

(declare-fun res!2616404 () Bool)

(assert (=> b!6358583 (=> (not res!2616404) (not e!3861245))))

(assert (=> b!6358583 (= res!2616404 (and (not ((_ is EmptyLang!16265) (h!71418 (exprs!6149 (h!71419 zl!343))))) (not ((_ is ElementMatch!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))))

(declare-fun b!6358584 () Bool)

(assert (=> b!6358584 (= e!3861246 e!3861242)))

(assert (=> b!6358584 (= c!1157368 ((_ is Union!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun b!6358585 () Bool)

(declare-fun e!3861247 () Bool)

(assert (=> b!6358585 (= e!3861247 call!542371)))

(declare-fun d!1994822 () Bool)

(declare-fun res!2616406 () Bool)

(assert (=> d!1994822 (=> res!2616406 e!3861243)))

(assert (=> d!1994822 (= res!2616406 ((_ is EmptyExpr!16265) (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> d!1994822 (= (nullableFct!2204 (h!71418 (exprs!6149 (h!71419 zl!343)))) e!3861243)))

(declare-fun b!6358586 () Bool)

(assert (=> b!6358586 (= e!3861242 e!3861247)))

(declare-fun res!2616408 () Bool)

(assert (=> b!6358586 (= res!2616408 call!542372)))

(assert (=> b!6358586 (=> res!2616408 e!3861247)))

(declare-fun bm!542367 () Bool)

(assert (=> bm!542367 (= call!542371 (nullable!6258 (ite c!1157368 (regTwo!33043 (h!71418 (exprs!6149 (h!71419 zl!343)))) (regTwo!33042 (h!71418 (exprs!6149 (h!71419 zl!343)))))))))

(assert (= (and d!1994822 (not res!2616406)) b!6358583))

(assert (= (and b!6358583 res!2616404) b!6358580))

(assert (= (and b!6358580 (not res!2616405)) b!6358584))

(assert (= (and b!6358584 c!1157368) b!6358586))

(assert (= (and b!6358584 (not c!1157368)) b!6358582))

(assert (= (and b!6358586 (not res!2616408)) b!6358585))

(assert (= (and b!6358582 res!2616407) b!6358581))

(assert (= (or b!6358585 b!6358581) bm!542367))

(assert (= (or b!6358586 b!6358582) bm!542366))

(declare-fun m!7164684 () Bool)

(assert (=> bm!542366 m!7164684))

(declare-fun m!7164686 () Bool)

(assert (=> bm!542367 m!7164686))

(assert (=> d!1994132 d!1994822))

(declare-fun d!1994826 () Bool)

(declare-fun c!1157371 () Bool)

(assert (=> d!1994826 (= c!1157371 (isEmpty!37073 (tail!12108 (t!378686 s!2326))))))

(declare-fun e!3861255 () Bool)

(assert (=> d!1994826 (= (matchZipper!2277 (derivationStepZipper!2231 lt!2366193 (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))) e!3861255)))

(declare-fun b!6358596 () Bool)

(assert (=> b!6358596 (= e!3861255 (nullableZipper!2031 (derivationStepZipper!2231 lt!2366193 (head!13023 (t!378686 s!2326)))))))

(declare-fun b!6358597 () Bool)

(assert (=> b!6358597 (= e!3861255 (matchZipper!2277 (derivationStepZipper!2231 (derivationStepZipper!2231 lt!2366193 (head!13023 (t!378686 s!2326))) (head!13023 (tail!12108 (t!378686 s!2326)))) (tail!12108 (tail!12108 (t!378686 s!2326)))))))

(assert (= (and d!1994826 c!1157371) b!6358596))

(assert (= (and d!1994826 (not c!1157371)) b!6358597))

(assert (=> d!1994826 m!7163466))

(assert (=> d!1994826 m!7163758))

(assert (=> b!6358596 m!7163552))

(declare-fun m!7164694 () Bool)

(assert (=> b!6358596 m!7164694))

(assert (=> b!6358597 m!7163466))

(assert (=> b!6358597 m!7163762))

(assert (=> b!6358597 m!7163552))

(assert (=> b!6358597 m!7163762))

(declare-fun m!7164696 () Bool)

(assert (=> b!6358597 m!7164696))

(assert (=> b!6358597 m!7163466))

(assert (=> b!6358597 m!7163766))

(assert (=> b!6358597 m!7164696))

(assert (=> b!6358597 m!7163766))

(declare-fun m!7164698 () Bool)

(assert (=> b!6358597 m!7164698))

(assert (=> b!6357452 d!1994826))

(declare-fun bs!1593080 () Bool)

(declare-fun d!1994830 () Bool)

(assert (= bs!1593080 (and d!1994830 d!1994382)))

(declare-fun lambda!350193 () Int)

(assert (=> bs!1593080 (= lambda!350193 lambda!350126)))

(declare-fun bs!1593081 () Bool)

(assert (= bs!1593081 (and d!1994830 b!6356406)))

(assert (=> bs!1593081 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350193 lambda!349997))))

(declare-fun bs!1593082 () Bool)

(assert (= bs!1593082 (and d!1994830 d!1994818)))

(assert (=> bs!1593082 (= lambda!350193 lambda!350191)))

(declare-fun bs!1593083 () Bool)

(assert (= bs!1593083 (and d!1994830 d!1994102)))

(assert (=> bs!1593083 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350193 lambda!350035))))

(declare-fun bs!1593084 () Bool)

(assert (= bs!1593084 (and d!1994830 d!1994622)))

(assert (=> bs!1593084 (= (= (head!13023 (t!378686 s!2326)) (head!13023 s!2326)) (= lambda!350193 lambda!350156))))

(declare-fun bs!1593085 () Bool)

(assert (= bs!1593085 (and d!1994830 d!1994458)))

(assert (=> bs!1593085 (= (= (head!13023 (t!378686 s!2326)) (head!13023 s!2326)) (= lambda!350193 lambda!350132))))

(assert (=> d!1994830 true))

(assert (=> d!1994830 (= (derivationStepZipper!2231 lt!2366193 (head!13023 (t!378686 s!2326))) (flatMap!1770 lt!2366193 lambda!350193))))

(declare-fun bs!1593086 () Bool)

(assert (= bs!1593086 d!1994830))

(declare-fun m!7164700 () Bool)

(assert (=> bs!1593086 m!7164700))

(assert (=> b!6357452 d!1994830))

(assert (=> b!6357452 d!1994384))

(assert (=> b!6357452 d!1994386))

(assert (=> bm!542157 d!1994362))

(assert (=> d!1994298 d!1994362))

(declare-fun b!6358602 () Bool)

(declare-fun res!2616420 () Bool)

(declare-fun e!3861265 () Bool)

(assert (=> b!6358602 (=> res!2616420 e!3861265)))

(assert (=> b!6358602 (= res!2616420 (not ((_ is Concat!25110) (Concat!25110 lt!2366185 lt!2366173))))))

(declare-fun e!3861266 () Bool)

(assert (=> b!6358602 (= e!3861266 e!3861265)))

(declare-fun call!542377 () Bool)

(declare-fun c!1157373 () Bool)

(declare-fun bm!542371 () Bool)

(declare-fun c!1157372 () Bool)

(assert (=> bm!542371 (= call!542377 (validRegex!8001 (ite c!1157372 (reg!16594 (Concat!25110 lt!2366185 lt!2366173)) (ite c!1157373 (regOne!33043 (Concat!25110 lt!2366185 lt!2366173)) (regOne!33042 (Concat!25110 lt!2366185 lt!2366173))))))))

(declare-fun b!6358603 () Bool)

(declare-fun e!3861261 () Bool)

(declare-fun call!542376 () Bool)

(assert (=> b!6358603 (= e!3861261 call!542376)))

(declare-fun bm!542372 () Bool)

(assert (=> bm!542372 (= call!542376 (validRegex!8001 (ite c!1157373 (regTwo!33043 (Concat!25110 lt!2366185 lt!2366173)) (regTwo!33042 (Concat!25110 lt!2366185 lt!2366173)))))))

(declare-fun b!6358604 () Bool)

(declare-fun e!3861260 () Bool)

(assert (=> b!6358604 (= e!3861260 call!542376)))

(declare-fun bm!542373 () Bool)

(declare-fun call!542378 () Bool)

(assert (=> bm!542373 (= call!542378 call!542377)))

(declare-fun b!6358606 () Bool)

(declare-fun e!3861263 () Bool)

(declare-fun e!3861264 () Bool)

(assert (=> b!6358606 (= e!3861263 e!3861264)))

(assert (=> b!6358606 (= c!1157372 ((_ is Star!16265) (Concat!25110 lt!2366185 lt!2366173)))))

(declare-fun b!6358607 () Bool)

(assert (=> b!6358607 (= e!3861265 e!3861260)))

(declare-fun res!2616422 () Bool)

(assert (=> b!6358607 (=> (not res!2616422) (not e!3861260))))

(assert (=> b!6358607 (= res!2616422 call!542378)))

(declare-fun b!6358608 () Bool)

(declare-fun res!2616418 () Bool)

(assert (=> b!6358608 (=> (not res!2616418) (not e!3861261))))

(assert (=> b!6358608 (= res!2616418 call!542378)))

(assert (=> b!6358608 (= e!3861266 e!3861261)))

(declare-fun b!6358609 () Bool)

(declare-fun e!3861262 () Bool)

(assert (=> b!6358609 (= e!3861264 e!3861262)))

(declare-fun res!2616419 () Bool)

(assert (=> b!6358609 (= res!2616419 (not (nullable!6258 (reg!16594 (Concat!25110 lt!2366185 lt!2366173)))))))

(assert (=> b!6358609 (=> (not res!2616419) (not e!3861262))))

(declare-fun b!6358610 () Bool)

(assert (=> b!6358610 (= e!3861264 e!3861266)))

(assert (=> b!6358610 (= c!1157373 ((_ is Union!16265) (Concat!25110 lt!2366185 lt!2366173)))))

(declare-fun d!1994832 () Bool)

(declare-fun res!2616421 () Bool)

(assert (=> d!1994832 (=> res!2616421 e!3861263)))

(assert (=> d!1994832 (= res!2616421 ((_ is ElementMatch!16265) (Concat!25110 lt!2366185 lt!2366173)))))

(assert (=> d!1994832 (= (validRegex!8001 (Concat!25110 lt!2366185 lt!2366173)) e!3861263)))

(declare-fun b!6358605 () Bool)

(assert (=> b!6358605 (= e!3861262 call!542377)))

(assert (= (and d!1994832 (not res!2616421)) b!6358606))

(assert (= (and b!6358606 c!1157372) b!6358609))

(assert (= (and b!6358606 (not c!1157372)) b!6358610))

(assert (= (and b!6358609 res!2616419) b!6358605))

(assert (= (and b!6358610 c!1157373) b!6358608))

(assert (= (and b!6358610 (not c!1157373)) b!6358602))

(assert (= (and b!6358608 res!2616418) b!6358603))

(assert (= (and b!6358602 (not res!2616420)) b!6358607))

(assert (= (and b!6358607 res!2616422) b!6358604))

(assert (= (or b!6358603 b!6358604) bm!542372))

(assert (= (or b!6358608 b!6358607) bm!542373))

(assert (= (or b!6358605 bm!542373) bm!542371))

(declare-fun m!7164702 () Bool)

(assert (=> bm!542371 m!7164702))

(declare-fun m!7164704 () Bool)

(assert (=> bm!542372 m!7164704))

(declare-fun m!7164706 () Bool)

(assert (=> b!6358609 m!7164706))

(assert (=> d!1994298 d!1994832))

(declare-fun b!6358613 () Bool)

(declare-fun res!2616427 () Bool)

(declare-fun e!3861274 () Bool)

(assert (=> b!6358613 (=> res!2616427 e!3861274)))

(assert (=> b!6358613 (= res!2616427 (not ((_ is Concat!25110) lt!2366302)))))

(declare-fun e!3861275 () Bool)

(assert (=> b!6358613 (= e!3861275 e!3861274)))

(declare-fun bm!542374 () Bool)

(declare-fun c!1157374 () Bool)

(declare-fun c!1157375 () Bool)

(declare-fun call!542380 () Bool)

(assert (=> bm!542374 (= call!542380 (validRegex!8001 (ite c!1157374 (reg!16594 lt!2366302) (ite c!1157375 (regOne!33043 lt!2366302) (regOne!33042 lt!2366302)))))))

(declare-fun b!6358614 () Bool)

(declare-fun e!3861270 () Bool)

(declare-fun call!542379 () Bool)

(assert (=> b!6358614 (= e!3861270 call!542379)))

(declare-fun bm!542375 () Bool)

(assert (=> bm!542375 (= call!542379 (validRegex!8001 (ite c!1157375 (regTwo!33043 lt!2366302) (regTwo!33042 lt!2366302))))))

(declare-fun b!6358615 () Bool)

(declare-fun e!3861269 () Bool)

(assert (=> b!6358615 (= e!3861269 call!542379)))

(declare-fun bm!542376 () Bool)

(declare-fun call!542381 () Bool)

(assert (=> bm!542376 (= call!542381 call!542380)))

(declare-fun b!6358617 () Bool)

(declare-fun e!3861272 () Bool)

(declare-fun e!3861273 () Bool)

(assert (=> b!6358617 (= e!3861272 e!3861273)))

(assert (=> b!6358617 (= c!1157374 ((_ is Star!16265) lt!2366302))))

(declare-fun b!6358618 () Bool)

(assert (=> b!6358618 (= e!3861274 e!3861269)))

(declare-fun res!2616429 () Bool)

(assert (=> b!6358618 (=> (not res!2616429) (not e!3861269))))

(assert (=> b!6358618 (= res!2616429 call!542381)))

(declare-fun b!6358619 () Bool)

(declare-fun res!2616425 () Bool)

(assert (=> b!6358619 (=> (not res!2616425) (not e!3861270))))

(assert (=> b!6358619 (= res!2616425 call!542381)))

(assert (=> b!6358619 (= e!3861275 e!3861270)))

(declare-fun b!6358620 () Bool)

(declare-fun e!3861271 () Bool)

(assert (=> b!6358620 (= e!3861273 e!3861271)))

(declare-fun res!2616426 () Bool)

(assert (=> b!6358620 (= res!2616426 (not (nullable!6258 (reg!16594 lt!2366302))))))

(assert (=> b!6358620 (=> (not res!2616426) (not e!3861271))))

(declare-fun b!6358621 () Bool)

(assert (=> b!6358621 (= e!3861273 e!3861275)))

(assert (=> b!6358621 (= c!1157375 ((_ is Union!16265) lt!2366302))))

(declare-fun d!1994834 () Bool)

(declare-fun res!2616428 () Bool)

(assert (=> d!1994834 (=> res!2616428 e!3861272)))

(assert (=> d!1994834 (= res!2616428 ((_ is ElementMatch!16265) lt!2366302))))

(assert (=> d!1994834 (= (validRegex!8001 lt!2366302) e!3861272)))

(declare-fun b!6358616 () Bool)

(assert (=> b!6358616 (= e!3861271 call!542380)))

(assert (= (and d!1994834 (not res!2616428)) b!6358617))

(assert (= (and b!6358617 c!1157374) b!6358620))

(assert (= (and b!6358617 (not c!1157374)) b!6358621))

(assert (= (and b!6358620 res!2616426) b!6358616))

(assert (= (and b!6358621 c!1157375) b!6358619))

(assert (= (and b!6358621 (not c!1157375)) b!6358613))

(assert (= (and b!6358619 res!2616425) b!6358614))

(assert (= (and b!6358613 (not res!2616427)) b!6358618))

(assert (= (and b!6358618 res!2616429) b!6358615))

(assert (= (or b!6358614 b!6358615) bm!542375))

(assert (= (or b!6358619 b!6358618) bm!542376))

(assert (= (or b!6358616 bm!542376) bm!542374))

(declare-fun m!7164714 () Bool)

(assert (=> bm!542374 m!7164714))

(declare-fun m!7164716 () Bool)

(assert (=> bm!542375 m!7164716))

(declare-fun m!7164718 () Bool)

(assert (=> b!6358620 m!7164718))

(assert (=> d!1994168 d!1994834))

(declare-fun d!1994840 () Bool)

(declare-fun res!2616430 () Bool)

(declare-fun e!3861276 () Bool)

(assert (=> d!1994840 (=> res!2616430 e!3861276)))

(assert (=> d!1994840 (= res!2616430 ((_ is Nil!64970) lt!2366161))))

(assert (=> d!1994840 (= (forall!15441 lt!2366161 lambda!350067) e!3861276)))

(declare-fun b!6358622 () Bool)

(declare-fun e!3861277 () Bool)

(assert (=> b!6358622 (= e!3861276 e!3861277)))

(declare-fun res!2616431 () Bool)

(assert (=> b!6358622 (=> (not res!2616431) (not e!3861277))))

(assert (=> b!6358622 (= res!2616431 (dynLambda!25764 lambda!350067 (h!71418 lt!2366161)))))

(declare-fun b!6358623 () Bool)

(assert (=> b!6358623 (= e!3861277 (forall!15441 (t!378684 lt!2366161) lambda!350067))))

(assert (= (and d!1994840 (not res!2616430)) b!6358622))

(assert (= (and b!6358622 res!2616431) b!6358623))

(declare-fun b_lambda!241713 () Bool)

(assert (=> (not b_lambda!241713) (not b!6358622)))

(declare-fun m!7164722 () Bool)

(assert (=> b!6358622 m!7164722))

(declare-fun m!7164724 () Bool)

(assert (=> b!6358623 m!7164724))

(assert (=> d!1994168 d!1994840))

(assert (=> b!6356839 d!1994132))

(assert (=> d!1994274 d!1994276))

(assert (=> d!1994274 d!1994272))

(declare-fun d!1994844 () Bool)

(declare-fun e!3861291 () Bool)

(assert (=> d!1994844 (= (matchZipper!2277 ((_ map or) lt!2366169 lt!2366163) (t!378686 s!2326)) e!3861291)))

(declare-fun res!2616445 () Bool)

(assert (=> d!1994844 (=> res!2616445 e!3861291)))

(assert (=> d!1994844 (= res!2616445 (matchZipper!2277 lt!2366169 (t!378686 s!2326)))))

(assert (=> d!1994844 true))

(declare-fun _$48!2138 () Unit!158391)

(assert (=> d!1994844 (= (choose!47213 lt!2366169 lt!2366163 (t!378686 s!2326)) _$48!2138)))

(declare-fun b!6358645 () Bool)

(assert (=> b!6358645 (= e!3861291 (matchZipper!2277 lt!2366163 (t!378686 s!2326)))))

(assert (= (and d!1994844 (not res!2616445)) b!6358645))

(assert (=> d!1994844 m!7162544))

(assert (=> d!1994844 m!7162542))

(assert (=> b!6358645 m!7162546))

(assert (=> d!1994274 d!1994844))

(declare-fun d!1994854 () Bool)

(assert (=> d!1994854 (= (nullable!6258 (reg!16594 r!7292)) (nullableFct!2204 (reg!16594 r!7292)))))

(declare-fun bs!1593096 () Bool)

(assert (= bs!1593096 d!1994854))

(declare-fun m!7164740 () Bool)

(assert (=> bs!1593096 m!7164740))

(assert (=> b!6356620 d!1994854))

(declare-fun b!6358657 () Bool)

(declare-fun e!3861300 () (InoxSet Context!11298))

(declare-fun e!3861299 () (InoxSet Context!11298))

(assert (=> b!6358657 (= e!3861300 e!3861299)))

(declare-fun c!1157385 () Bool)

(assert (=> b!6358657 (= c!1157385 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))))))))

(declare-fun bm!542380 () Bool)

(declare-fun call!542385 () (InoxSet Context!11298))

(assert (=> bm!542380 (= call!542385 (derivationStepZipperDown!1513 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))))) (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))))) (h!71420 s!2326)))))

(declare-fun b!6358659 () Bool)

(assert (=> b!6358659 (= e!3861300 ((_ map or) call!542385 (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))))) (h!71420 s!2326))))))

(declare-fun b!6358660 () Bool)

(declare-fun e!3861301 () Bool)

(assert (=> b!6358660 (= e!3861301 (nullable!6258 (h!71418 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343))))))))))))))

(declare-fun b!6358661 () Bool)

(assert (=> b!6358661 (= e!3861299 ((as const (Array Context!11298 Bool)) false))))

(declare-fun d!1994856 () Bool)

(declare-fun c!1157384 () Bool)

(assert (=> d!1994856 (= c!1157384 e!3861301)))

(declare-fun res!2616449 () Bool)

(assert (=> d!1994856 (=> (not res!2616449) (not e!3861301))))

(assert (=> d!1994856 (= res!2616449 ((_ is Cons!64970) (exprs!6149 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))))))))

(assert (=> d!1994856 (= (derivationStepZipperUp!1439 (Context!11299 (t!378684 (exprs!6149 (Context!11299 (Cons!64970 (h!71418 (exprs!6149 (h!71419 zl!343))) (t!378684 (exprs!6149 (h!71419 zl!343)))))))) (h!71420 s!2326)) e!3861300)))

(declare-fun b!6358658 () Bool)

(assert (=> b!6358658 (= e!3861299 call!542385)))

(assert (= (and d!1994856 res!2616449) b!6358660))

(assert (= (and d!1994856 c!1157384) b!6358659))

(assert (= (and d!1994856 (not c!1157384)) b!6358657))

(assert (= (and b!6358657 c!1157385) b!6358658))

(assert (= (and b!6358657 (not c!1157385)) b!6358661))

(assert (= (or b!6358659 b!6358658) bm!542380))

(declare-fun m!7164742 () Bool)

(assert (=> bm!542380 m!7164742))

(declare-fun m!7164744 () Bool)

(assert (=> b!6358659 m!7164744))

(declare-fun m!7164746 () Bool)

(assert (=> b!6358660 m!7164746))

(assert (=> b!6356833 d!1994856))

(declare-fun d!1994858 () Bool)

(assert (=> d!1994858 (= (isEmpty!37069 (tail!12107 lt!2366196)) ((_ is Nil!64970) (tail!12107 lt!2366196)))))

(assert (=> b!6357138 d!1994858))

(declare-fun d!1994860 () Bool)

(assert (=> d!1994860 (= (tail!12107 lt!2366196) (t!378684 lt!2366196))))

(assert (=> b!6357138 d!1994860))

(declare-fun b!6358663 () Bool)

(declare-fun e!3861302 () List!65096)

(assert (=> b!6358663 (= e!3861302 (Cons!64972 (h!71420 (_1!36547 (get!22482 lt!2366321))) (++!14334 (t!378686 (_1!36547 (get!22482 lt!2366321))) (_2!36547 (get!22482 lt!2366321)))))))

(declare-fun b!6358664 () Bool)

(declare-fun res!2616451 () Bool)

(declare-fun e!3861303 () Bool)

(assert (=> b!6358664 (=> (not res!2616451) (not e!3861303))))

(declare-fun lt!2366488 () List!65096)

(assert (=> b!6358664 (= res!2616451 (= (size!40345 lt!2366488) (+ (size!40345 (_1!36547 (get!22482 lt!2366321))) (size!40345 (_2!36547 (get!22482 lt!2366321))))))))

(declare-fun b!6358662 () Bool)

(assert (=> b!6358662 (= e!3861302 (_2!36547 (get!22482 lt!2366321)))))

(declare-fun b!6358665 () Bool)

(assert (=> b!6358665 (= e!3861303 (or (not (= (_2!36547 (get!22482 lt!2366321)) Nil!64972)) (= lt!2366488 (_1!36547 (get!22482 lt!2366321)))))))

(declare-fun d!1994862 () Bool)

(assert (=> d!1994862 e!3861303))

(declare-fun res!2616450 () Bool)

(assert (=> d!1994862 (=> (not res!2616450) (not e!3861303))))

(assert (=> d!1994862 (= res!2616450 (= (content!12267 lt!2366488) ((_ map or) (content!12267 (_1!36547 (get!22482 lt!2366321))) (content!12267 (_2!36547 (get!22482 lt!2366321))))))))

(assert (=> d!1994862 (= lt!2366488 e!3861302)))

(declare-fun c!1157386 () Bool)

(assert (=> d!1994862 (= c!1157386 ((_ is Nil!64972) (_1!36547 (get!22482 lt!2366321))))))

(assert (=> d!1994862 (= (++!14334 (_1!36547 (get!22482 lt!2366321)) (_2!36547 (get!22482 lt!2366321))) lt!2366488)))

(assert (= (and d!1994862 c!1157386) b!6358662))

(assert (= (and d!1994862 (not c!1157386)) b!6358663))

(assert (= (and d!1994862 res!2616450) b!6358664))

(assert (= (and b!6358664 res!2616451) b!6358665))

(declare-fun m!7164748 () Bool)

(assert (=> b!6358663 m!7164748))

(declare-fun m!7164750 () Bool)

(assert (=> b!6358664 m!7164750))

(declare-fun m!7164752 () Bool)

(assert (=> b!6358664 m!7164752))

(declare-fun m!7164754 () Bool)

(assert (=> b!6358664 m!7164754))

(declare-fun m!7164756 () Bool)

(assert (=> d!1994862 m!7164756))

(declare-fun m!7164758 () Bool)

(assert (=> d!1994862 m!7164758))

(declare-fun m!7164760 () Bool)

(assert (=> d!1994862 m!7164760))

(assert (=> b!6357135 d!1994862))

(assert (=> b!6357135 d!1994518))

(declare-fun d!1994864 () Bool)

(declare-fun c!1157387 () Bool)

(assert (=> d!1994864 (= c!1157387 (isEmpty!37073 (tail!12108 (t!378686 s!2326))))))

(declare-fun e!3861304 () Bool)

(assert (=> d!1994864 (= (matchZipper!2277 (derivationStepZipper!2231 lt!2366169 (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))) e!3861304)))

(declare-fun b!6358666 () Bool)

(assert (=> b!6358666 (= e!3861304 (nullableZipper!2031 (derivationStepZipper!2231 lt!2366169 (head!13023 (t!378686 s!2326)))))))

(declare-fun b!6358667 () Bool)

(assert (=> b!6358667 (= e!3861304 (matchZipper!2277 (derivationStepZipper!2231 (derivationStepZipper!2231 lt!2366169 (head!13023 (t!378686 s!2326))) (head!13023 (tail!12108 (t!378686 s!2326)))) (tail!12108 (tail!12108 (t!378686 s!2326)))))))

(assert (= (and d!1994864 c!1157387) b!6358666))

(assert (= (and d!1994864 (not c!1157387)) b!6358667))

(assert (=> d!1994864 m!7163466))

(assert (=> d!1994864 m!7163758))

(assert (=> b!6358666 m!7163472))

(declare-fun m!7164762 () Bool)

(assert (=> b!6358666 m!7164762))

(assert (=> b!6358667 m!7163466))

(assert (=> b!6358667 m!7163762))

(assert (=> b!6358667 m!7163472))

(assert (=> b!6358667 m!7163762))

(declare-fun m!7164764 () Bool)

(assert (=> b!6358667 m!7164764))

(assert (=> b!6358667 m!7163466))

(assert (=> b!6358667 m!7163766))

(assert (=> b!6358667 m!7164764))

(assert (=> b!6358667 m!7163766))

(declare-fun m!7164766 () Bool)

(assert (=> b!6358667 m!7164766))

(assert (=> b!6357369 d!1994864))

(declare-fun bs!1593112 () Bool)

(declare-fun d!1994866 () Bool)

(assert (= bs!1593112 (and d!1994866 d!1994382)))

(declare-fun lambda!350196 () Int)

(assert (=> bs!1593112 (= lambda!350196 lambda!350126)))

(declare-fun bs!1593114 () Bool)

(assert (= bs!1593114 (and d!1994866 b!6356406)))

(assert (=> bs!1593114 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350196 lambda!349997))))

(declare-fun bs!1593115 () Bool)

(assert (= bs!1593115 (and d!1994866 d!1994818)))

(assert (=> bs!1593115 (= lambda!350196 lambda!350191)))

(declare-fun bs!1593116 () Bool)

(assert (= bs!1593116 (and d!1994866 d!1994830)))

(assert (=> bs!1593116 (= lambda!350196 lambda!350193)))

(declare-fun bs!1593117 () Bool)

(assert (= bs!1593117 (and d!1994866 d!1994102)))

(assert (=> bs!1593117 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350196 lambda!350035))))

(declare-fun bs!1593118 () Bool)

(assert (= bs!1593118 (and d!1994866 d!1994622)))

(assert (=> bs!1593118 (= (= (head!13023 (t!378686 s!2326)) (head!13023 s!2326)) (= lambda!350196 lambda!350156))))

(declare-fun bs!1593119 () Bool)

(assert (= bs!1593119 (and d!1994866 d!1994458)))

(assert (=> bs!1593119 (= (= (head!13023 (t!378686 s!2326)) (head!13023 s!2326)) (= lambda!350196 lambda!350132))))

(assert (=> d!1994866 true))

(assert (=> d!1994866 (= (derivationStepZipper!2231 lt!2366169 (head!13023 (t!378686 s!2326))) (flatMap!1770 lt!2366169 lambda!350196))))

(declare-fun bs!1593120 () Bool)

(assert (= bs!1593120 d!1994866))

(declare-fun m!7164768 () Bool)

(assert (=> bs!1593120 m!7164768))

(assert (=> b!6357369 d!1994866))

(assert (=> b!6357369 d!1994384))

(assert (=> b!6357369 d!1994386))

(declare-fun e!3861311 () Bool)

(declare-fun b!6358668 () Bool)

(assert (=> b!6358668 (= e!3861311 (not (= (head!13023 s!2326) (c!1156730 (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173)))))))

(declare-fun b!6358669 () Bool)

(declare-fun res!2616456 () Bool)

(declare-fun e!3861310 () Bool)

(assert (=> b!6358669 (=> (not res!2616456) (not e!3861310))))

(declare-fun call!542386 () Bool)

(assert (=> b!6358669 (= res!2616456 (not call!542386))))

(declare-fun b!6358670 () Bool)

(declare-fun e!3861308 () Bool)

(declare-fun lt!2366489 () Bool)

(assert (=> b!6358670 (= e!3861308 (= lt!2366489 call!542386))))

(declare-fun bm!542381 () Bool)

(assert (=> bm!542381 (= call!542386 (isEmpty!37073 s!2326))))

(declare-fun b!6358671 () Bool)

(declare-fun e!3861307 () Bool)

(declare-fun e!3861305 () Bool)

(assert (=> b!6358671 (= e!3861307 e!3861305)))

(declare-fun res!2616455 () Bool)

(assert (=> b!6358671 (=> (not res!2616455) (not e!3861305))))

(assert (=> b!6358671 (= res!2616455 (not lt!2366489))))

(declare-fun b!6358672 () Bool)

(assert (=> b!6358672 (= e!3861310 (= (head!13023 s!2326) (c!1156730 (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173))))))

(declare-fun b!6358673 () Bool)

(declare-fun e!3861306 () Bool)

(assert (=> b!6358673 (= e!3861306 (not lt!2366489))))

(declare-fun b!6358674 () Bool)

(assert (=> b!6358674 (= e!3861305 e!3861311)))

(declare-fun res!2616457 () Bool)

(assert (=> b!6358674 (=> res!2616457 e!3861311)))

(assert (=> b!6358674 (= res!2616457 call!542386)))

(declare-fun b!6358675 () Bool)

(assert (=> b!6358675 (= e!3861308 e!3861306)))

(declare-fun c!1157388 () Bool)

(assert (=> b!6358675 (= c!1157388 ((_ is EmptyLang!16265) (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173)))))

(declare-fun b!6358676 () Bool)

(declare-fun e!3861309 () Bool)

(assert (=> b!6358676 (= e!3861309 (nullable!6258 (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173)))))

(declare-fun b!6358677 () Bool)

(declare-fun res!2616459 () Bool)

(assert (=> b!6358677 (=> res!2616459 e!3861307)))

(assert (=> b!6358677 (= res!2616459 (not ((_ is ElementMatch!16265) (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173))))))

(assert (=> b!6358677 (= e!3861306 e!3861307)))

(declare-fun b!6358678 () Bool)

(declare-fun res!2616454 () Bool)

(assert (=> b!6358678 (=> res!2616454 e!3861311)))

(assert (=> b!6358678 (= res!2616454 (not (isEmpty!37073 (tail!12108 s!2326))))))

(declare-fun b!6358680 () Bool)

(declare-fun res!2616452 () Bool)

(assert (=> b!6358680 (=> res!2616452 e!3861307)))

(assert (=> b!6358680 (= res!2616452 e!3861310)))

(declare-fun res!2616458 () Bool)

(assert (=> b!6358680 (=> (not res!2616458) (not e!3861310))))

(assert (=> b!6358680 (= res!2616458 lt!2366489)))

(declare-fun b!6358681 () Bool)

(declare-fun res!2616453 () Bool)

(assert (=> b!6358681 (=> (not res!2616453) (not e!3861310))))

(assert (=> b!6358681 (= res!2616453 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun d!1994868 () Bool)

(assert (=> d!1994868 e!3861308))

(declare-fun c!1157390 () Bool)

(assert (=> d!1994868 (= c!1157390 ((_ is EmptyExpr!16265) (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173)))))

(assert (=> d!1994868 (= lt!2366489 e!3861309)))

(declare-fun c!1157389 () Bool)

(assert (=> d!1994868 (= c!1157389 (isEmpty!37073 s!2326))))

(assert (=> d!1994868 (validRegex!8001 (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173))))

(assert (=> d!1994868 (= (matchR!8448 (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173) s!2326) lt!2366489)))

(declare-fun b!6358679 () Bool)

(assert (=> b!6358679 (= e!3861309 (matchR!8448 (derivativeStep!4970 (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173) (head!13023 s!2326)) (tail!12108 s!2326)))))

(assert (= (and d!1994868 c!1157389) b!6358676))

(assert (= (and d!1994868 (not c!1157389)) b!6358679))

(assert (= (and d!1994868 c!1157390) b!6358670))

(assert (= (and d!1994868 (not c!1157390)) b!6358675))

(assert (= (and b!6358675 c!1157388) b!6358673))

(assert (= (and b!6358675 (not c!1157388)) b!6358677))

(assert (= (and b!6358677 (not res!2616459)) b!6358680))

(assert (= (and b!6358680 res!2616458) b!6358669))

(assert (= (and b!6358669 res!2616456) b!6358681))

(assert (= (and b!6358681 res!2616453) b!6358672))

(assert (= (and b!6358680 (not res!2616452)) b!6358671))

(assert (= (and b!6358671 res!2616455) b!6358674))

(assert (= (and b!6358674 (not res!2616457)) b!6358678))

(assert (= (and b!6358678 (not res!2616454)) b!6358668))

(assert (= (or b!6358670 b!6358669 b!6358674) bm!542381))

(assert (=> b!6358678 m!7163356))

(assert (=> b!6358678 m!7163356))

(assert (=> b!6358678 m!7163358))

(assert (=> b!6358679 m!7163360))

(assert (=> b!6358679 m!7163360))

(declare-fun m!7164770 () Bool)

(assert (=> b!6358679 m!7164770))

(assert (=> b!6358679 m!7163356))

(assert (=> b!6358679 m!7164770))

(assert (=> b!6358679 m!7163356))

(declare-fun m!7164772 () Bool)

(assert (=> b!6358679 m!7164772))

(assert (=> b!6358681 m!7163356))

(assert (=> b!6358681 m!7163356))

(assert (=> b!6358681 m!7163358))

(assert (=> b!6358672 m!7163360))

(declare-fun m!7164774 () Bool)

(assert (=> b!6358676 m!7164774))

(assert (=> d!1994868 m!7163190))

(declare-fun m!7164776 () Bool)

(assert (=> d!1994868 m!7164776))

(assert (=> bm!542381 m!7163190))

(assert (=> b!6358668 m!7163360))

(assert (=> d!1994316 d!1994868))

(assert (=> d!1994316 d!1994314))

(declare-fun d!1994870 () Bool)

(assert (=> d!1994870 (= (matchR!8448 (Concat!25110 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) lt!2366173) s!2326) (matchR!8448 (Concat!25110 (regOne!33042 (regOne!33042 r!7292)) (Concat!25110 (regTwo!33042 (regOne!33042 r!7292)) lt!2366173)) s!2326))))

(assert (=> d!1994870 true))

(declare-fun _$123!146 () Unit!158391)

(assert (=> d!1994870 (= (choose!47214 (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292)) lt!2366173 s!2326) _$123!146)))

(declare-fun bs!1593140 () Bool)

(assert (= bs!1593140 d!1994870))

(assert (=> bs!1593140 m!7163598))

(assert (=> bs!1593140 m!7162656))

(assert (=> d!1994316 d!1994870))

(assert (=> d!1994316 d!1994500))

(declare-fun b!6358682 () Bool)

(declare-fun e!3861318 () Bool)

(assert (=> b!6358682 (= e!3861318 (not (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326))))))))

(declare-fun b!6358683 () Bool)

(declare-fun res!2616464 () Bool)

(declare-fun e!3861317 () Bool)

(assert (=> b!6358683 (=> (not res!2616464) (not e!3861317))))

(declare-fun call!542387 () Bool)

(assert (=> b!6358683 (= res!2616464 (not call!542387))))

(declare-fun b!6358684 () Bool)

(declare-fun e!3861315 () Bool)

(declare-fun lt!2366490 () Bool)

(assert (=> b!6358684 (= e!3861315 (= lt!2366490 call!542387))))

(declare-fun bm!542382 () Bool)

(assert (=> bm!542382 (= call!542387 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun b!6358685 () Bool)

(declare-fun e!3861314 () Bool)

(declare-fun e!3861312 () Bool)

(assert (=> b!6358685 (= e!3861314 e!3861312)))

(declare-fun res!2616463 () Bool)

(assert (=> b!6358685 (=> (not res!2616463) (not e!3861312))))

(assert (=> b!6358685 (= res!2616463 (not lt!2366490))))

(declare-fun b!6358686 () Bool)

(assert (=> b!6358686 (= e!3861317 (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326)))))))

(declare-fun b!6358687 () Bool)

(declare-fun e!3861313 () Bool)

(assert (=> b!6358687 (= e!3861313 (not lt!2366490))))

(declare-fun b!6358688 () Bool)

(assert (=> b!6358688 (= e!3861312 e!3861318)))

(declare-fun res!2616465 () Bool)

(assert (=> b!6358688 (=> res!2616465 e!3861318)))

(assert (=> b!6358688 (= res!2616465 call!542387)))

(declare-fun b!6358689 () Bool)

(assert (=> b!6358689 (= e!3861315 e!3861313)))

(declare-fun c!1157391 () Bool)

(assert (=> b!6358689 (= c!1157391 ((_ is EmptyLang!16265) (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326))))))

(declare-fun b!6358690 () Bool)

(declare-fun e!3861316 () Bool)

(assert (=> b!6358690 (= e!3861316 (nullable!6258 (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326))))))

(declare-fun b!6358691 () Bool)

(declare-fun res!2616467 () Bool)

(assert (=> b!6358691 (=> res!2616467 e!3861314)))

(assert (=> b!6358691 (= res!2616467 (not ((_ is ElementMatch!16265) (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326)))))))

(assert (=> b!6358691 (= e!3861313 e!3861314)))

(declare-fun b!6358692 () Bool)

(declare-fun res!2616462 () Bool)

(assert (=> b!6358692 (=> res!2616462 e!3861318)))

(assert (=> b!6358692 (= res!2616462 (not (isEmpty!37073 (tail!12108 (tail!12108 s!2326)))))))

(declare-fun b!6358694 () Bool)

(declare-fun res!2616460 () Bool)

(assert (=> b!6358694 (=> res!2616460 e!3861314)))

(assert (=> b!6358694 (= res!2616460 e!3861317)))

(declare-fun res!2616466 () Bool)

(assert (=> b!6358694 (=> (not res!2616466) (not e!3861317))))

(assert (=> b!6358694 (= res!2616466 lt!2366490)))

(declare-fun b!6358695 () Bool)

(declare-fun res!2616461 () Bool)

(assert (=> b!6358695 (=> (not res!2616461) (not e!3861317))))

(assert (=> b!6358695 (= res!2616461 (isEmpty!37073 (tail!12108 (tail!12108 s!2326))))))

(declare-fun d!1994872 () Bool)

(assert (=> d!1994872 e!3861315))

(declare-fun c!1157393 () Bool)

(assert (=> d!1994872 (= c!1157393 ((_ is EmptyExpr!16265) (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326))))))

(assert (=> d!1994872 (= lt!2366490 e!3861316)))

(declare-fun c!1157392 () Bool)

(assert (=> d!1994872 (= c!1157392 (isEmpty!37073 (tail!12108 s!2326)))))

(assert (=> d!1994872 (validRegex!8001 (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326)))))

(assert (=> d!1994872 (= (matchR!8448 (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326)) (tail!12108 s!2326)) lt!2366490)))

(declare-fun b!6358693 () Bool)

(assert (=> b!6358693 (= e!3861316 (matchR!8448 (derivativeStep!4970 (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326)) (head!13023 (tail!12108 s!2326))) (tail!12108 (tail!12108 s!2326))))))

(assert (= (and d!1994872 c!1157392) b!6358690))

(assert (= (and d!1994872 (not c!1157392)) b!6358693))

(assert (= (and d!1994872 c!1157393) b!6358684))

(assert (= (and d!1994872 (not c!1157393)) b!6358689))

(assert (= (and b!6358689 c!1157391) b!6358687))

(assert (= (and b!6358689 (not c!1157391)) b!6358691))

(assert (= (and b!6358691 (not res!2616467)) b!6358694))

(assert (= (and b!6358694 res!2616466) b!6358683))

(assert (= (and b!6358683 res!2616464) b!6358695))

(assert (= (and b!6358695 res!2616461) b!6358686))

(assert (= (and b!6358694 (not res!2616460)) b!6358685))

(assert (= (and b!6358685 res!2616463) b!6358688))

(assert (= (and b!6358688 (not res!2616465)) b!6358692))

(assert (= (and b!6358692 (not res!2616462)) b!6358682))

(assert (= (or b!6358684 b!6358683 b!6358688) bm!542382))

(assert (=> b!6358692 m!7163356))

(assert (=> b!6358692 m!7163880))

(assert (=> b!6358692 m!7163880))

(assert (=> b!6358692 m!7163892))

(assert (=> b!6358693 m!7163356))

(assert (=> b!6358693 m!7163876))

(assert (=> b!6358693 m!7163528))

(assert (=> b!6358693 m!7163876))

(declare-fun m!7164784 () Bool)

(assert (=> b!6358693 m!7164784))

(assert (=> b!6358693 m!7163356))

(assert (=> b!6358693 m!7163880))

(assert (=> b!6358693 m!7164784))

(assert (=> b!6358693 m!7163880))

(declare-fun m!7164786 () Bool)

(assert (=> b!6358693 m!7164786))

(assert (=> b!6358695 m!7163356))

(assert (=> b!6358695 m!7163880))

(assert (=> b!6358695 m!7163880))

(assert (=> b!6358695 m!7163892))

(assert (=> b!6358686 m!7163356))

(assert (=> b!6358686 m!7163876))

(assert (=> b!6358690 m!7163528))

(declare-fun m!7164788 () Bool)

(assert (=> b!6358690 m!7164788))

(assert (=> d!1994872 m!7163356))

(assert (=> d!1994872 m!7163358))

(assert (=> d!1994872 m!7163528))

(declare-fun m!7164790 () Bool)

(assert (=> d!1994872 m!7164790))

(assert (=> bm!542382 m!7163356))

(assert (=> bm!542382 m!7163358))

(assert (=> b!6358682 m!7163356))

(assert (=> b!6358682 m!7163876))

(assert (=> b!6357432 d!1994872))

(declare-fun b!6358696 () Bool)

(declare-fun e!3861321 () Regex!16265)

(declare-fun call!542389 () Regex!16265)

(declare-fun call!542388 () Regex!16265)

(assert (=> b!6358696 (= e!3861321 (Union!16265 call!542389 call!542388))))

(declare-fun b!6358697 () Bool)

(declare-fun e!3861319 () Regex!16265)

(declare-fun call!542390 () Regex!16265)

(assert (=> b!6358697 (= e!3861319 (Concat!25110 call!542390 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(declare-fun b!6358698 () Bool)

(assert (=> b!6358698 (= e!3861321 e!3861319)))

(declare-fun c!1157397 () Bool)

(assert (=> b!6358698 (= c!1157397 ((_ is Star!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(declare-fun b!6358699 () Bool)

(declare-fun e!3861320 () Regex!16265)

(assert (=> b!6358699 (= e!3861320 EmptyLang!16265)))

(declare-fun b!6358700 () Bool)

(declare-fun e!3861323 () Regex!16265)

(assert (=> b!6358700 (= e!3861323 (ite (= (head!13023 s!2326) (c!1156730 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))) EmptyExpr!16265 EmptyLang!16265))))

(declare-fun b!6358701 () Bool)

(declare-fun e!3861322 () Regex!16265)

(declare-fun call!542391 () Regex!16265)

(assert (=> b!6358701 (= e!3861322 (Union!16265 (Concat!25110 call!542391 (regTwo!33042 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))) EmptyLang!16265))))

(declare-fun bm!542383 () Bool)

(assert (=> bm!542383 (= call!542390 call!542388)))

(declare-fun bm!542384 () Bool)

(assert (=> bm!542384 (= call!542391 call!542390)))

(declare-fun b!6358702 () Bool)

(assert (=> b!6358702 (= e!3861320 e!3861323)))

(declare-fun c!1157396 () Bool)

(assert (=> b!6358702 (= c!1157396 ((_ is ElementMatch!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(declare-fun d!1994876 () Bool)

(declare-fun lt!2366491 () Regex!16265)

(assert (=> d!1994876 (validRegex!8001 lt!2366491)))

(assert (=> d!1994876 (= lt!2366491 e!3861320)))

(declare-fun c!1157395 () Bool)

(assert (=> d!1994876 (= c!1157395 (or ((_ is EmptyExpr!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) ((_ is EmptyLang!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))))))

(assert (=> d!1994876 (validRegex!8001 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))))

(assert (=> d!1994876 (= (derivativeStep!4970 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)) (head!13023 s!2326)) lt!2366491)))

(declare-fun b!6358703 () Bool)

(declare-fun c!1157398 () Bool)

(assert (=> b!6358703 (= c!1157398 ((_ is Union!16265) (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))))))

(assert (=> b!6358703 (= e!3861323 e!3861321)))

(declare-fun b!6358704 () Bool)

(declare-fun c!1157394 () Bool)

(assert (=> b!6358704 (= c!1157394 (nullable!6258 (regOne!33042 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))))))

(assert (=> b!6358704 (= e!3861319 e!3861322)))

(declare-fun b!6358705 () Bool)

(assert (=> b!6358705 (= e!3861322 (Union!16265 (Concat!25110 call!542389 (regTwo!33042 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))) call!542391))))

(declare-fun bm!542385 () Bool)

(assert (=> bm!542385 (= call!542388 (derivativeStep!4970 (ite c!1157398 (regTwo!33043 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) (ite c!1157397 (reg!16594 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) (ite c!1157394 (regTwo!33042 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) (regOne!33042 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))))) (head!13023 s!2326)))))

(declare-fun bm!542386 () Bool)

(assert (=> bm!542386 (= call!542389 (derivativeStep!4970 (ite c!1157398 (regOne!33043 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292))) (regOne!33042 (Concat!25110 (regOne!33042 r!7292) (regTwo!33042 r!7292)))) (head!13023 s!2326)))))

(assert (= (and d!1994876 c!1157395) b!6358699))

(assert (= (and d!1994876 (not c!1157395)) b!6358702))

(assert (= (and b!6358702 c!1157396) b!6358700))

(assert (= (and b!6358702 (not c!1157396)) b!6358703))

(assert (= (and b!6358703 c!1157398) b!6358696))

(assert (= (and b!6358703 (not c!1157398)) b!6358698))

(assert (= (and b!6358698 c!1157397) b!6358697))

(assert (= (and b!6358698 (not c!1157397)) b!6358704))

(assert (= (and b!6358704 c!1157394) b!6358705))

(assert (= (and b!6358704 (not c!1157394)) b!6358701))

(assert (= (or b!6358705 b!6358701) bm!542384))

(assert (= (or b!6358697 bm!542384) bm!542383))

(assert (= (or b!6358696 bm!542383) bm!542385))

(assert (= (or b!6358696 b!6358705) bm!542386))

(declare-fun m!7164796 () Bool)

(assert (=> d!1994876 m!7164796))

(assert (=> d!1994876 m!7163534))

(declare-fun m!7164798 () Bool)

(assert (=> b!6358704 m!7164798))

(assert (=> bm!542385 m!7163360))

(declare-fun m!7164800 () Bool)

(assert (=> bm!542385 m!7164800))

(assert (=> bm!542386 m!7163360))

(declare-fun m!7164802 () Bool)

(assert (=> bm!542386 m!7164802))

(assert (=> b!6357432 d!1994876))

(assert (=> b!6357432 d!1994348))

(assert (=> b!6357432 d!1994342))

(declare-fun d!1994884 () Bool)

(declare-fun res!2616473 () Bool)

(declare-fun e!3861331 () Bool)

(assert (=> d!1994884 (=> res!2616473 e!3861331)))

(assert (=> d!1994884 (= res!2616473 ((_ is Nil!64970) lt!2366238))))

(assert (=> d!1994884 (= (forall!15441 lt!2366238 lambda!350024) e!3861331)))

(declare-fun b!6358715 () Bool)

(declare-fun e!3861332 () Bool)

(assert (=> b!6358715 (= e!3861331 e!3861332)))

(declare-fun res!2616474 () Bool)

(assert (=> b!6358715 (=> (not res!2616474) (not e!3861332))))

(assert (=> b!6358715 (= res!2616474 (dynLambda!25764 lambda!350024 (h!71418 lt!2366238)))))

(declare-fun b!6358716 () Bool)

(assert (=> b!6358716 (= e!3861332 (forall!15441 (t!378684 lt!2366238) lambda!350024))))

(assert (= (and d!1994884 (not res!2616473)) b!6358715))

(assert (= (and b!6358715 res!2616474) b!6358716))

(declare-fun b_lambda!241715 () Bool)

(assert (=> (not b_lambda!241715) (not b!6358715)))

(declare-fun m!7164810 () Bool)

(assert (=> b!6358715 m!7164810))

(declare-fun m!7164812 () Bool)

(assert (=> b!6358716 m!7164812))

(assert (=> d!1994068 d!1994884))

(assert (=> b!6357372 d!1994296))

(declare-fun d!1994888 () Bool)

(declare-fun c!1157407 () Bool)

(assert (=> d!1994888 (= c!1157407 (and ((_ is ElementMatch!16265) (h!71418 (exprs!6149 lt!2366189))) (= (c!1156730 (h!71418 (exprs!6149 lt!2366189))) (h!71420 s!2326))))))

(declare-fun e!3861343 () (InoxSet Context!11298))

(assert (=> d!1994888 (= (derivationStepZipperDown!1513 (h!71418 (exprs!6149 lt!2366189)) (Context!11299 (t!378684 (exprs!6149 lt!2366189))) (h!71420 s!2326)) e!3861343)))

(declare-fun b!6358731 () Bool)

(declare-fun c!1157405 () Bool)

(assert (=> b!6358731 (= c!1157405 ((_ is Star!16265) (h!71418 (exprs!6149 lt!2366189))))))

(declare-fun e!3861340 () (InoxSet Context!11298))

(declare-fun e!3861342 () (InoxSet Context!11298))

(assert (=> b!6358731 (= e!3861340 e!3861342)))

(declare-fun bm!542391 () Bool)

(declare-fun call!542399 () (InoxSet Context!11298))

(declare-fun call!542396 () (InoxSet Context!11298))

(assert (=> bm!542391 (= call!542399 call!542396)))

(declare-fun b!6358732 () Bool)

(declare-fun e!3861344 () (InoxSet Context!11298))

(assert (=> b!6358732 (= e!3861343 e!3861344)))

(declare-fun c!1157404 () Bool)

(assert (=> b!6358732 (= c!1157404 ((_ is Union!16265) (h!71418 (exprs!6149 lt!2366189))))))

(declare-fun b!6358733 () Bool)

(assert (=> b!6358733 (= e!3861340 call!542399)))

(declare-fun bm!542392 () Bool)

(declare-fun call!542397 () (InoxSet Context!11298))

(declare-fun call!542400 () List!65094)

(declare-fun c!1157406 () Bool)

(declare-fun c!1157408 () Bool)

(assert (=> bm!542392 (= call!542397 (derivationStepZipperDown!1513 (ite c!1157404 (regTwo!33043 (h!71418 (exprs!6149 lt!2366189))) (ite c!1157406 (regTwo!33042 (h!71418 (exprs!6149 lt!2366189))) (ite c!1157408 (regOne!33042 (h!71418 (exprs!6149 lt!2366189))) (reg!16594 (h!71418 (exprs!6149 lt!2366189)))))) (ite (or c!1157404 c!1157406) (Context!11299 (t!378684 (exprs!6149 lt!2366189))) (Context!11299 call!542400)) (h!71420 s!2326)))))

(declare-fun b!6358734 () Bool)

(declare-fun call!542398 () (InoxSet Context!11298))

(assert (=> b!6358734 (= e!3861344 ((_ map or) call!542398 call!542397))))

(declare-fun b!6358735 () Bool)

(declare-fun e!3861341 () (InoxSet Context!11298))

(assert (=> b!6358735 (= e!3861341 ((_ map or) call!542398 call!542396))))

(declare-fun b!6358736 () Bool)

(assert (=> b!6358736 (= e!3861343 (store ((as const (Array Context!11298 Bool)) false) (Context!11299 (t!378684 (exprs!6149 lt!2366189))) true))))

(declare-fun b!6358737 () Bool)

(declare-fun e!3861345 () Bool)

(assert (=> b!6358737 (= e!3861345 (nullable!6258 (regOne!33042 (h!71418 (exprs!6149 lt!2366189)))))))

(declare-fun bm!542393 () Bool)

(assert (=> bm!542393 (= call!542396 call!542397)))

(declare-fun bm!542394 () Bool)

(declare-fun call!542401 () List!65094)

(assert (=> bm!542394 (= call!542401 ($colon$colon!2126 (exprs!6149 (Context!11299 (t!378684 (exprs!6149 lt!2366189)))) (ite (or c!1157406 c!1157408) (regTwo!33042 (h!71418 (exprs!6149 lt!2366189))) (h!71418 (exprs!6149 lt!2366189)))))))

(declare-fun bm!542395 () Bool)

(assert (=> bm!542395 (= call!542400 call!542401)))

(declare-fun b!6358738 () Bool)

(assert (=> b!6358738 (= c!1157406 e!3861345)))

(declare-fun res!2616483 () Bool)

(assert (=> b!6358738 (=> (not res!2616483) (not e!3861345))))

(assert (=> b!6358738 (= res!2616483 ((_ is Concat!25110) (h!71418 (exprs!6149 lt!2366189))))))

(assert (=> b!6358738 (= e!3861344 e!3861341)))

(declare-fun b!6358739 () Bool)

(assert (=> b!6358739 (= e!3861342 ((as const (Array Context!11298 Bool)) false))))

(declare-fun b!6358740 () Bool)

(assert (=> b!6358740 (= e!3861342 call!542399)))

(declare-fun bm!542396 () Bool)

(assert (=> bm!542396 (= call!542398 (derivationStepZipperDown!1513 (ite c!1157404 (regOne!33043 (h!71418 (exprs!6149 lt!2366189))) (regOne!33042 (h!71418 (exprs!6149 lt!2366189)))) (ite c!1157404 (Context!11299 (t!378684 (exprs!6149 lt!2366189))) (Context!11299 call!542401)) (h!71420 s!2326)))))

(declare-fun b!6358741 () Bool)

(assert (=> b!6358741 (= e!3861341 e!3861340)))

(assert (=> b!6358741 (= c!1157408 ((_ is Concat!25110) (h!71418 (exprs!6149 lt!2366189))))))

(assert (= (and d!1994888 c!1157407) b!6358736))

(assert (= (and d!1994888 (not c!1157407)) b!6358732))

(assert (= (and b!6358732 c!1157404) b!6358734))

(assert (= (and b!6358732 (not c!1157404)) b!6358738))

(assert (= (and b!6358738 res!2616483) b!6358737))

(assert (= (and b!6358738 c!1157406) b!6358735))

(assert (= (and b!6358738 (not c!1157406)) b!6358741))

(assert (= (and b!6358741 c!1157408) b!6358733))

(assert (= (and b!6358741 (not c!1157408)) b!6358731))

(assert (= (and b!6358731 c!1157405) b!6358740))

(assert (= (and b!6358731 (not c!1157405)) b!6358739))

(assert (= (or b!6358733 b!6358740) bm!542395))

(assert (= (or b!6358733 b!6358740) bm!542391))

(assert (= (or b!6358735 bm!542395) bm!542394))

(assert (= (or b!6358735 bm!542391) bm!542393))

(assert (= (or b!6358734 bm!542393) bm!542392))

(assert (= (or b!6358734 b!6358735) bm!542396))

(declare-fun m!7164822 () Bool)

(assert (=> b!6358736 m!7164822))

(declare-fun m!7164826 () Bool)

(assert (=> bm!542392 m!7164826))

(declare-fun m!7164828 () Bool)

(assert (=> b!6358737 m!7164828))

(declare-fun m!7164832 () Bool)

(assert (=> bm!542396 m!7164832))

(declare-fun m!7164834 () Bool)

(assert (=> bm!542394 m!7164834))

(assert (=> bm!542086 d!1994888))

(assert (=> b!6357379 d!1994240))

(declare-fun d!1994890 () Bool)

(assert (=> d!1994890 (= (Exists!3335 lambda!350096) (choose!47205 lambda!350096))))

(declare-fun bs!1593150 () Bool)

(assert (= bs!1593150 d!1994890))

(declare-fun m!7164836 () Bool)

(assert (=> bs!1593150 m!7164836))

(assert (=> d!1994208 d!1994890))

(declare-fun d!1994894 () Bool)

(assert (=> d!1994894 (= (Exists!3335 lambda!350097) (choose!47205 lambda!350097))))

(declare-fun bs!1593151 () Bool)

(assert (= bs!1593151 d!1994894))

(declare-fun m!7164838 () Bool)

(assert (=> bs!1593151 m!7164838))

(assert (=> d!1994208 d!1994894))

(declare-fun bs!1593153 () Bool)

(declare-fun d!1994896 () Bool)

(assert (= bs!1593153 (and d!1994896 b!6356395)))

(declare-fun lambda!350199 () Int)

(assert (=> bs!1593153 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350199 lambda!349995))))

(declare-fun bs!1593154 () Bool)

(assert (= bs!1593154 (and d!1994896 b!6357721)))

(assert (=> bs!1593154 (not (= lambda!350199 lambda!350129))))

(declare-fun bs!1593155 () Bool)

(assert (= bs!1593155 (and d!1994896 d!1994766)))

(assert (=> bs!1593155 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350199 lambda!350189))))

(declare-fun bs!1593156 () Bool)

(assert (= bs!1593156 (and d!1994896 b!6358361)))

(assert (=> bs!1593156 (not (= lambda!350199 lambda!350182))))

(declare-fun bs!1593157 () Bool)

(assert (= bs!1593157 (and d!1994896 d!1994330)))

(assert (=> bs!1593157 (not (= lambda!350199 lambda!350122))))

(declare-fun bs!1593158 () Bool)

(assert (= bs!1593158 (and d!1994896 b!6357049)))

(assert (=> bs!1593158 (not (= lambda!350199 lambda!350077))))

(declare-fun bs!1593159 () Bool)

(assert (= bs!1593159 (and d!1994896 b!6356387)))

(assert (=> bs!1593159 (not (= lambda!350199 lambda!349999))))

(declare-fun bs!1593160 () Bool)

(assert (= bs!1593160 (and d!1994896 d!1994310)))

(assert (=> bs!1593160 (not (= lambda!350199 lambda!350113))))

(declare-fun bs!1593161 () Bool)

(assert (= bs!1593161 (and d!1994896 d!1994256)))

(assert (=> bs!1593161 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350199 lambda!350102))))

(declare-fun bs!1593162 () Bool)

(assert (= bs!1593162 (and d!1994896 d!1994616)))

(assert (=> bs!1593162 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350199 lambda!350148))))

(declare-fun bs!1593163 () Bool)

(assert (= bs!1593163 (and d!1994896 b!6357396)))

(assert (=> bs!1593163 (not (= lambda!350199 lambda!350109))))

(assert (=> bs!1593157 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350199 lambda!350121))))

(declare-fun bs!1593164 () Bool)

(assert (= bs!1593164 (and d!1994896 b!6357617)))

(assert (=> bs!1593164 (not (= lambda!350199 lambda!350124))))

(declare-fun bs!1593165 () Bool)

(assert (= bs!1593165 (and d!1994896 b!6357910)))

(assert (=> bs!1593165 (not (= lambda!350199 lambda!350134))))

(assert (=> bs!1593153 (not (= lambda!350199 lambda!349996))))

(assert (=> bs!1593160 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350199 lambda!350112))))

(declare-fun bs!1593166 () Bool)

(assert (= bs!1593166 (and d!1994896 b!6357729)))

(assert (=> bs!1593166 (not (= lambda!350199 lambda!350130))))

(declare-fun bs!1593167 () Bool)

(assert (= bs!1593167 (and d!1994896 d!1994570)))

(assert (=> bs!1593167 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350199 lambda!350145))))

(declare-fun bs!1593168 () Bool)

(assert (= bs!1593168 (and d!1994896 d!1994502)))

(assert (=> bs!1593168 (= lambda!350199 lambda!350138)))

(declare-fun bs!1593169 () Bool)

(assert (= bs!1593169 (and d!1994896 d!1994208)))

(assert (=> bs!1593169 (= lambda!350199 lambda!350096)))

(assert (=> bs!1593159 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350199 lambda!350000))))

(declare-fun bs!1593170 () Bool)

(assert (= bs!1593170 (and d!1994896 b!6358031)))

(assert (=> bs!1593170 (not (= lambda!350199 lambda!350142))))

(declare-fun bs!1593171 () Bool)

(assert (= bs!1593171 (and d!1994896 b!6357057)))

(assert (=> bs!1593171 (not (= lambda!350199 lambda!350078))))

(assert (=> bs!1593159 (not (= lambda!350199 lambda!350001))))

(declare-fun bs!1593172 () Bool)

(assert (= bs!1593172 (and d!1994896 b!6358023)))

(assert (=> bs!1593172 (not (= lambda!350199 lambda!350141))))

(declare-fun bs!1593173 () Bool)

(assert (= bs!1593173 (and d!1994896 b!6357258)))

(assert (=> bs!1593173 (not (= lambda!350199 lambda!350099))))

(declare-fun bs!1593174 () Bool)

(assert (= bs!1593174 (and d!1994896 b!6357625)))

(assert (=> bs!1593174 (not (= lambda!350199 lambda!350125))))

(declare-fun bs!1593175 () Bool)

(assert (= bs!1593175 (and d!1994896 b!6357404)))

(assert (=> bs!1593175 (not (= lambda!350199 lambda!350110))))

(declare-fun bs!1593176 () Bool)

(assert (= bs!1593176 (and d!1994896 d!1994308)))

(assert (=> bs!1593176 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350199 lambda!350111))))

(declare-fun bs!1593177 () Bool)

(assert (= bs!1593177 (and d!1994896 b!6358034)))

(assert (=> bs!1593177 (not (= lambda!350199 lambda!350143))))

(assert (=> bs!1593159 (= lambda!350199 lambda!349998)))

(assert (=> bs!1593162 (not (= lambda!350199 lambda!350153))))

(assert (=> bs!1593161 (not (= lambda!350199 lambda!350103))))

(declare-fun bs!1593178 () Bool)

(assert (= bs!1593178 (and d!1994896 b!6357918)))

(assert (=> bs!1593178 (not (= lambda!350199 lambda!350135))))

(declare-fun bs!1593179 () Bool)

(assert (= bs!1593179 (and d!1994896 b!6357250)))

(assert (=> bs!1593179 (not (= lambda!350199 lambda!350098))))

(declare-fun bs!1593180 () Bool)

(assert (= bs!1593180 (and d!1994896 b!6358042)))

(assert (=> bs!1593180 (not (= lambda!350199 lambda!350144))))

(declare-fun bs!1593181 () Bool)

(assert (= bs!1593181 (and d!1994896 d!1994242)))

(assert (=> bs!1593181 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350199 lambda!350101))))

(declare-fun bs!1593182 () Bool)

(assert (= bs!1593182 (and d!1994896 d!1994166)))

(assert (=> bs!1593182 (= lambda!350199 lambda!350061)))

(declare-fun bs!1593184 () Bool)

(assert (= bs!1593184 (and d!1994896 b!6358369)))

(assert (=> bs!1593184 (not (= lambda!350199 lambda!350184))))

(assert (=> bs!1593169 (not (= lambda!350199 lambda!350097))))

(assert (=> d!1994896 true))

(assert (=> d!1994896 true))

(assert (=> d!1994896 true))

(declare-fun lambda!350200 () Int)

(assert (=> bs!1593153 (not (= lambda!350200 lambda!349995))))

(assert (=> bs!1593154 (not (= lambda!350200 lambda!350129))))

(assert (=> bs!1593155 (not (= lambda!350200 lambda!350189))))

(assert (=> bs!1593156 (not (= lambda!350200 lambda!350182))))

(assert (=> bs!1593157 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350200 lambda!350122))))

(assert (=> bs!1593158 (not (= lambda!350200 lambda!350077))))

(assert (=> bs!1593159 (= lambda!350200 lambda!349999)))

(assert (=> bs!1593160 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350200 lambda!350113))))

(assert (=> bs!1593161 (not (= lambda!350200 lambda!350102))))

(assert (=> bs!1593162 (not (= lambda!350200 lambda!350148))))

(assert (=> bs!1593163 (not (= lambda!350200 lambda!350109))))

(assert (=> bs!1593157 (not (= lambda!350200 lambda!350121))))

(assert (=> bs!1593164 (not (= lambda!350200 lambda!350124))))

(declare-fun bs!1593186 () Bool)

(assert (= bs!1593186 d!1994896))

(assert (=> bs!1593186 (not (= lambda!350200 lambda!350199))))

(assert (=> bs!1593165 (not (= lambda!350200 lambda!350134))))

(assert (=> bs!1593153 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350200 lambda!349996))))

(assert (=> bs!1593160 (not (= lambda!350200 lambda!350112))))

(assert (=> bs!1593166 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33043 lt!2366179))) (= lt!2366179 (regTwo!33042 (regOne!33043 lt!2366179)))) (= lambda!350200 lambda!350130))))

(assert (=> bs!1593167 (not (= lambda!350200 lambda!350145))))

(assert (=> bs!1593168 (not (= lambda!350200 lambda!350138))))

(assert (=> bs!1593169 (not (= lambda!350200 lambda!350096))))

(assert (=> bs!1593159 (not (= lambda!350200 lambda!350000))))

(assert (=> bs!1593170 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 (regTwo!33043 r!7292))) (= lt!2366179 (regTwo!33042 (regTwo!33043 r!7292)))) (= lambda!350200 lambda!350142))))

(assert (=> bs!1593171 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 lt!2366179)) (= lt!2366179 (regTwo!33042 lt!2366179))) (= lambda!350200 lambda!350078))))

(assert (=> bs!1593159 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350200 lambda!350001))))

(assert (=> bs!1593172 (not (= lambda!350200 lambda!350141))))

(assert (=> bs!1593173 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 lt!2366170)) (= lt!2366179 (regTwo!33042 lt!2366170))) (= lambda!350200 lambda!350099))))

(assert (=> bs!1593174 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 (regTwo!33043 lt!2366179))) (= lt!2366179 (regTwo!33042 (regTwo!33043 lt!2366179)))) (= lambda!350200 lambda!350125))))

(assert (=> bs!1593175 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 r!7292)) (= lt!2366179 (regTwo!33042 r!7292))) (= lambda!350200 lambda!350110))))

(assert (=> bs!1593176 (not (= lambda!350200 lambda!350111))))

(assert (=> bs!1593177 (not (= lambda!350200 lambda!350143))))

(assert (=> bs!1593159 (not (= lambda!350200 lambda!349998))))

(assert (=> bs!1593162 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350200 lambda!350153))))

(assert (=> bs!1593161 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regTwo!33042 (regOne!33042 r!7292))) (= lt!2366179 lt!2366173)) (= lambda!350200 lambda!350103))))

(assert (=> bs!1593178 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 (regTwo!33043 lt!2366170))) (= lt!2366179 (regTwo!33042 (regTwo!33043 lt!2366170)))) (= lambda!350200 lambda!350135))))

(assert (=> bs!1593179 (not (= lambda!350200 lambda!350098))))

(assert (=> bs!1593180 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33043 lt!2366170))) (= lt!2366179 (regTwo!33042 (regOne!33043 lt!2366170)))) (= lambda!350200 lambda!350144))))

(assert (=> bs!1593181 (not (= lambda!350200 lambda!350101))))

(assert (=> bs!1593182 (not (= lambda!350200 lambda!350061))))

(assert (=> bs!1593184 (= (and (= (regOne!33042 (regOne!33042 r!7292)) (regOne!33042 (regOne!33043 r!7292))) (= lt!2366179 (regTwo!33042 (regOne!33043 r!7292)))) (= lambda!350200 lambda!350184))))

(assert (=> bs!1593169 (= lambda!350200 lambda!350097)))

(assert (=> d!1994896 true))

(assert (=> d!1994896 true))

(assert (=> d!1994896 true))

(assert (=> d!1994896 (= (Exists!3335 lambda!350199) (Exists!3335 lambda!350200))))

(assert (=> d!1994896 true))

(declare-fun _$90!2203 () Unit!158391)

(assert (=> d!1994896 (= (choose!47209 (regOne!33042 (regOne!33042 r!7292)) lt!2366179 s!2326) _$90!2203)))

(declare-fun m!7164914 () Bool)

(assert (=> bs!1593186 m!7164914))

(declare-fun m!7164916 () Bool)

(assert (=> bs!1593186 m!7164916))

(assert (=> d!1994208 d!1994896))

(assert (=> d!1994208 d!1994500))

(declare-fun d!1994922 () Bool)

(assert (=> d!1994922 (= (isEmpty!37074 (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) Nil!64972 s!2326 s!2326)) (not ((_ is Some!16155) (findConcatSeparation!2570 (regOne!33042 r!7292) (regTwo!33042 r!7292) Nil!64972 s!2326 s!2326))))))

(assert (=> d!1994312 d!1994922))

(assert (=> b!6357417 d!1994340))

(assert (=> b!6357417 d!1994342))

(declare-fun b!6358836 () Bool)

(declare-fun e!3861406 () Bool)

(assert (=> b!6358836 (= e!3861406 (not (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326))))))))

(declare-fun b!6358837 () Bool)

(declare-fun res!2616526 () Bool)

(declare-fun e!3861405 () Bool)

(assert (=> b!6358837 (=> (not res!2616526) (not e!3861405))))

(declare-fun call!542421 () Bool)

(assert (=> b!6358837 (= res!2616526 (not call!542421))))

(declare-fun b!6358838 () Bool)

(declare-fun e!3861403 () Bool)

(declare-fun lt!2366498 () Bool)

(assert (=> b!6358838 (= e!3861403 (= lt!2366498 call!542421))))

(declare-fun bm!542416 () Bool)

(assert (=> bm!542416 (= call!542421 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun b!6358839 () Bool)

(declare-fun e!3861402 () Bool)

(declare-fun e!3861400 () Bool)

(assert (=> b!6358839 (= e!3861402 e!3861400)))

(declare-fun res!2616525 () Bool)

(assert (=> b!6358839 (=> (not res!2616525) (not e!3861400))))

(assert (=> b!6358839 (= res!2616525 (not lt!2366498))))

(declare-fun b!6358840 () Bool)

(assert (=> b!6358840 (= e!3861405 (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326)))))))

(declare-fun b!6358841 () Bool)

(declare-fun e!3861401 () Bool)

(assert (=> b!6358841 (= e!3861401 (not lt!2366498))))

(declare-fun b!6358842 () Bool)

(assert (=> b!6358842 (= e!3861400 e!3861406)))

(declare-fun res!2616527 () Bool)

(assert (=> b!6358842 (=> res!2616527 e!3861406)))

(assert (=> b!6358842 (= res!2616527 call!542421)))

(declare-fun b!6358843 () Bool)

(assert (=> b!6358843 (= e!3861403 e!3861401)))

(declare-fun c!1157437 () Bool)

(assert (=> b!6358843 (= c!1157437 ((_ is EmptyLang!16265) (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326))))))

(declare-fun b!6358844 () Bool)

(declare-fun e!3861404 () Bool)

(assert (=> b!6358844 (= e!3861404 (nullable!6258 (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326))))))

(declare-fun b!6358845 () Bool)

(declare-fun res!2616529 () Bool)

(assert (=> b!6358845 (=> res!2616529 e!3861402)))

(assert (=> b!6358845 (= res!2616529 (not ((_ is ElementMatch!16265) (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326)))))))

(assert (=> b!6358845 (= e!3861401 e!3861402)))

(declare-fun b!6358846 () Bool)

(declare-fun res!2616524 () Bool)

(assert (=> b!6358846 (=> res!2616524 e!3861406)))

(assert (=> b!6358846 (= res!2616524 (not (isEmpty!37073 (tail!12108 (tail!12108 s!2326)))))))

(declare-fun b!6358848 () Bool)

(declare-fun res!2616522 () Bool)

(assert (=> b!6358848 (=> res!2616522 e!3861402)))

(assert (=> b!6358848 (= res!2616522 e!3861405)))

(declare-fun res!2616528 () Bool)

(assert (=> b!6358848 (=> (not res!2616528) (not e!3861405))))

(assert (=> b!6358848 (= res!2616528 lt!2366498)))

(declare-fun b!6358849 () Bool)

(declare-fun res!2616523 () Bool)

(assert (=> b!6358849 (=> (not res!2616523) (not e!3861405))))

(assert (=> b!6358849 (= res!2616523 (isEmpty!37073 (tail!12108 (tail!12108 s!2326))))))

(declare-fun d!1994924 () Bool)

(assert (=> d!1994924 e!3861403))

(declare-fun c!1157439 () Bool)

(assert (=> d!1994924 (= c!1157439 ((_ is EmptyExpr!16265) (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326))))))

(assert (=> d!1994924 (= lt!2366498 e!3861404)))

(declare-fun c!1157438 () Bool)

(assert (=> d!1994924 (= c!1157438 (isEmpty!37073 (tail!12108 s!2326)))))

(assert (=> d!1994924 (validRegex!8001 (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326)))))

(assert (=> d!1994924 (= (matchR!8448 (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326)) (tail!12108 s!2326)) lt!2366498)))

(declare-fun b!6358847 () Bool)

(assert (=> b!6358847 (= e!3861404 (matchR!8448 (derivativeStep!4970 (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326)) (head!13023 (tail!12108 s!2326))) (tail!12108 (tail!12108 s!2326))))))

(assert (= (and d!1994924 c!1157438) b!6358844))

(assert (= (and d!1994924 (not c!1157438)) b!6358847))

(assert (= (and d!1994924 c!1157439) b!6358838))

(assert (= (and d!1994924 (not c!1157439)) b!6358843))

(assert (= (and b!6358843 c!1157437) b!6358841))

(assert (= (and b!6358843 (not c!1157437)) b!6358845))

(assert (= (and b!6358845 (not res!2616529)) b!6358848))

(assert (= (and b!6358848 res!2616528) b!6358837))

(assert (= (and b!6358837 res!2616526) b!6358849))

(assert (= (and b!6358849 res!2616523) b!6358840))

(assert (= (and b!6358848 (not res!2616522)) b!6358839))

(assert (= (and b!6358839 res!2616525) b!6358842))

(assert (= (and b!6358842 (not res!2616527)) b!6358846))

(assert (= (and b!6358846 (not res!2616524)) b!6358836))

(assert (= (or b!6358838 b!6358837 b!6358842) bm!542416))

(assert (=> b!6358846 m!7163356))

(assert (=> b!6358846 m!7163880))

(assert (=> b!6358846 m!7163880))

(assert (=> b!6358846 m!7163892))

(assert (=> b!6358847 m!7163356))

(assert (=> b!6358847 m!7163876))

(assert (=> b!6358847 m!7163542))

(assert (=> b!6358847 m!7163876))

(declare-fun m!7164930 () Bool)

(assert (=> b!6358847 m!7164930))

(assert (=> b!6358847 m!7163356))

(assert (=> b!6358847 m!7163880))

(assert (=> b!6358847 m!7164930))

(assert (=> b!6358847 m!7163880))

(declare-fun m!7164932 () Bool)

(assert (=> b!6358847 m!7164932))

(assert (=> b!6358849 m!7163356))

(assert (=> b!6358849 m!7163880))

(assert (=> b!6358849 m!7163880))

(assert (=> b!6358849 m!7163892))

(assert (=> b!6358840 m!7163356))

(assert (=> b!6358840 m!7163876))

(assert (=> b!6358844 m!7163542))

(declare-fun m!7164934 () Bool)

(assert (=> b!6358844 m!7164934))

(assert (=> d!1994924 m!7163356))

(assert (=> d!1994924 m!7163358))

(assert (=> d!1994924 m!7163542))

(declare-fun m!7164936 () Bool)

(assert (=> d!1994924 m!7164936))

(assert (=> bm!542416 m!7163356))

(assert (=> bm!542416 m!7163358))

(assert (=> b!6358836 m!7163356))

(assert (=> b!6358836 m!7163876))

(assert (=> b!6357448 d!1994924))

(declare-fun b!6358861 () Bool)

(declare-fun e!3861416 () Regex!16265)

(declare-fun call!542425 () Regex!16265)

(declare-fun call!542424 () Regex!16265)

(assert (=> b!6358861 (= e!3861416 (Union!16265 call!542425 call!542424))))

(declare-fun e!3861414 () Regex!16265)

(declare-fun b!6358862 () Bool)

(declare-fun call!542426 () Regex!16265)

(assert (=> b!6358862 (= e!3861414 (Concat!25110 call!542426 (Concat!25110 lt!2366185 lt!2366173)))))

(declare-fun b!6358863 () Bool)

(assert (=> b!6358863 (= e!3861416 e!3861414)))

(declare-fun c!1157447 () Bool)

(assert (=> b!6358863 (= c!1157447 ((_ is Star!16265) (Concat!25110 lt!2366185 lt!2366173)))))

(declare-fun b!6358864 () Bool)

(declare-fun e!3861415 () Regex!16265)

(assert (=> b!6358864 (= e!3861415 EmptyLang!16265)))

(declare-fun b!6358865 () Bool)

(declare-fun e!3861418 () Regex!16265)

(assert (=> b!6358865 (= e!3861418 (ite (= (head!13023 s!2326) (c!1156730 (Concat!25110 lt!2366185 lt!2366173))) EmptyExpr!16265 EmptyLang!16265))))

(declare-fun call!542427 () Regex!16265)

(declare-fun e!3861417 () Regex!16265)

(declare-fun b!6358866 () Bool)

(assert (=> b!6358866 (= e!3861417 (Union!16265 (Concat!25110 call!542427 (regTwo!33042 (Concat!25110 lt!2366185 lt!2366173))) EmptyLang!16265))))

(declare-fun bm!542419 () Bool)

(assert (=> bm!542419 (= call!542426 call!542424)))

(declare-fun bm!542420 () Bool)

(assert (=> bm!542420 (= call!542427 call!542426)))

(declare-fun b!6358867 () Bool)

(assert (=> b!6358867 (= e!3861415 e!3861418)))

(declare-fun c!1157446 () Bool)

(assert (=> b!6358867 (= c!1157446 ((_ is ElementMatch!16265) (Concat!25110 lt!2366185 lt!2366173)))))

(declare-fun d!1994930 () Bool)

(declare-fun lt!2366499 () Regex!16265)

(assert (=> d!1994930 (validRegex!8001 lt!2366499)))

(assert (=> d!1994930 (= lt!2366499 e!3861415)))

(declare-fun c!1157445 () Bool)

(assert (=> d!1994930 (= c!1157445 (or ((_ is EmptyExpr!16265) (Concat!25110 lt!2366185 lt!2366173)) ((_ is EmptyLang!16265) (Concat!25110 lt!2366185 lt!2366173))))))

(assert (=> d!1994930 (validRegex!8001 (Concat!25110 lt!2366185 lt!2366173))))

(assert (=> d!1994930 (= (derivativeStep!4970 (Concat!25110 lt!2366185 lt!2366173) (head!13023 s!2326)) lt!2366499)))

(declare-fun b!6358868 () Bool)

(declare-fun c!1157448 () Bool)

(assert (=> b!6358868 (= c!1157448 ((_ is Union!16265) (Concat!25110 lt!2366185 lt!2366173)))))

(assert (=> b!6358868 (= e!3861418 e!3861416)))

(declare-fun b!6358869 () Bool)

(declare-fun c!1157444 () Bool)

(assert (=> b!6358869 (= c!1157444 (nullable!6258 (regOne!33042 (Concat!25110 lt!2366185 lt!2366173))))))

(assert (=> b!6358869 (= e!3861414 e!3861417)))

(declare-fun b!6358870 () Bool)

(assert (=> b!6358870 (= e!3861417 (Union!16265 (Concat!25110 call!542425 (regTwo!33042 (Concat!25110 lt!2366185 lt!2366173))) call!542427))))

(declare-fun bm!542421 () Bool)

(assert (=> bm!542421 (= call!542424 (derivativeStep!4970 (ite c!1157448 (regTwo!33043 (Concat!25110 lt!2366185 lt!2366173)) (ite c!1157447 (reg!16594 (Concat!25110 lt!2366185 lt!2366173)) (ite c!1157444 (regTwo!33042 (Concat!25110 lt!2366185 lt!2366173)) (regOne!33042 (Concat!25110 lt!2366185 lt!2366173))))) (head!13023 s!2326)))))

(declare-fun bm!542422 () Bool)

(assert (=> bm!542422 (= call!542425 (derivativeStep!4970 (ite c!1157448 (regOne!33043 (Concat!25110 lt!2366185 lt!2366173)) (regOne!33042 (Concat!25110 lt!2366185 lt!2366173))) (head!13023 s!2326)))))

(assert (= (and d!1994930 c!1157445) b!6358864))

(assert (= (and d!1994930 (not c!1157445)) b!6358867))

(assert (= (and b!6358867 c!1157446) b!6358865))

(assert (= (and b!6358867 (not c!1157446)) b!6358868))

(assert (= (and b!6358868 c!1157448) b!6358861))

(assert (= (and b!6358868 (not c!1157448)) b!6358863))

(assert (= (and b!6358863 c!1157447) b!6358862))

(assert (= (and b!6358863 (not c!1157447)) b!6358869))

(assert (= (and b!6358869 c!1157444) b!6358870))

(assert (= (and b!6358869 (not c!1157444)) b!6358866))

(assert (= (or b!6358870 b!6358866) bm!542420))

(assert (= (or b!6358862 bm!542420) bm!542419))

(assert (= (or b!6358861 bm!542419) bm!542421))

(assert (= (or b!6358861 b!6358870) bm!542422))

(declare-fun m!7164938 () Bool)

(assert (=> d!1994930 m!7164938))

(assert (=> d!1994930 m!7163548))

(declare-fun m!7164940 () Bool)

(assert (=> b!6358869 m!7164940))

(assert (=> bm!542421 m!7163360))

(declare-fun m!7164942 () Bool)

(assert (=> bm!542421 m!7164942))

(assert (=> bm!542422 m!7163360))

(declare-fun m!7164944 () Bool)

(assert (=> bm!542422 m!7164944))

(assert (=> b!6357448 d!1994930))

(assert (=> b!6357448 d!1994348))

(assert (=> b!6357448 d!1994342))

(declare-fun d!1994932 () Bool)

(assert (=> d!1994932 (= (isEmptyExpr!1667 lt!2366302) ((_ is EmptyExpr!16265) lt!2366302))))

(assert (=> b!6356991 d!1994932))

(declare-fun b!6358871 () Bool)

(declare-fun e!3861425 () Bool)

(assert (=> b!6358871 (= e!3861425 (not (= (head!13023 (_1!36547 (get!22482 lt!2366378))) (c!1156730 (regOne!33042 r!7292)))))))

(declare-fun b!6358872 () Bool)

(declare-fun res!2616537 () Bool)

(declare-fun e!3861424 () Bool)

(assert (=> b!6358872 (=> (not res!2616537) (not e!3861424))))

(declare-fun call!542428 () Bool)

(assert (=> b!6358872 (= res!2616537 (not call!542428))))

(declare-fun b!6358873 () Bool)

(declare-fun e!3861422 () Bool)

(declare-fun lt!2366500 () Bool)

(assert (=> b!6358873 (= e!3861422 (= lt!2366500 call!542428))))

(declare-fun bm!542423 () Bool)

(assert (=> bm!542423 (= call!542428 (isEmpty!37073 (_1!36547 (get!22482 lt!2366378))))))

(declare-fun b!6358874 () Bool)

(declare-fun e!3861421 () Bool)

(declare-fun e!3861419 () Bool)

(assert (=> b!6358874 (= e!3861421 e!3861419)))

(declare-fun res!2616536 () Bool)

(assert (=> b!6358874 (=> (not res!2616536) (not e!3861419))))

(assert (=> b!6358874 (= res!2616536 (not lt!2366500))))

(declare-fun b!6358875 () Bool)

(assert (=> b!6358875 (= e!3861424 (= (head!13023 (_1!36547 (get!22482 lt!2366378))) (c!1156730 (regOne!33042 r!7292))))))

(declare-fun b!6358876 () Bool)

(declare-fun e!3861420 () Bool)

(assert (=> b!6358876 (= e!3861420 (not lt!2366500))))

(declare-fun b!6358877 () Bool)

(assert (=> b!6358877 (= e!3861419 e!3861425)))

(declare-fun res!2616538 () Bool)

(assert (=> b!6358877 (=> res!2616538 e!3861425)))

(assert (=> b!6358877 (= res!2616538 call!542428)))

(declare-fun b!6358878 () Bool)

(assert (=> b!6358878 (= e!3861422 e!3861420)))

(declare-fun c!1157449 () Bool)

(assert (=> b!6358878 (= c!1157449 ((_ is EmptyLang!16265) (regOne!33042 r!7292)))))

(declare-fun b!6358879 () Bool)

(declare-fun e!3861423 () Bool)

(assert (=> b!6358879 (= e!3861423 (nullable!6258 (regOne!33042 r!7292)))))

(declare-fun b!6358880 () Bool)

(declare-fun res!2616540 () Bool)

(assert (=> b!6358880 (=> res!2616540 e!3861421)))

(assert (=> b!6358880 (= res!2616540 (not ((_ is ElementMatch!16265) (regOne!33042 r!7292))))))

(assert (=> b!6358880 (= e!3861420 e!3861421)))

(declare-fun b!6358881 () Bool)

(declare-fun res!2616535 () Bool)

(assert (=> b!6358881 (=> res!2616535 e!3861425)))

(assert (=> b!6358881 (= res!2616535 (not (isEmpty!37073 (tail!12108 (_1!36547 (get!22482 lt!2366378))))))))

(declare-fun b!6358883 () Bool)

(declare-fun res!2616533 () Bool)

(assert (=> b!6358883 (=> res!2616533 e!3861421)))

(assert (=> b!6358883 (= res!2616533 e!3861424)))

(declare-fun res!2616539 () Bool)

(assert (=> b!6358883 (=> (not res!2616539) (not e!3861424))))

(assert (=> b!6358883 (= res!2616539 lt!2366500)))

(declare-fun b!6358884 () Bool)

(declare-fun res!2616534 () Bool)

(assert (=> b!6358884 (=> (not res!2616534) (not e!3861424))))

(assert (=> b!6358884 (= res!2616534 (isEmpty!37073 (tail!12108 (_1!36547 (get!22482 lt!2366378)))))))

(declare-fun d!1994934 () Bool)

(assert (=> d!1994934 e!3861422))

(declare-fun c!1157451 () Bool)

(assert (=> d!1994934 (= c!1157451 ((_ is EmptyExpr!16265) (regOne!33042 r!7292)))))

(assert (=> d!1994934 (= lt!2366500 e!3861423)))

(declare-fun c!1157450 () Bool)

(assert (=> d!1994934 (= c!1157450 (isEmpty!37073 (_1!36547 (get!22482 lt!2366378))))))

(assert (=> d!1994934 (validRegex!8001 (regOne!33042 r!7292))))

(assert (=> d!1994934 (= (matchR!8448 (regOne!33042 r!7292) (_1!36547 (get!22482 lt!2366378))) lt!2366500)))

(declare-fun b!6358882 () Bool)

(assert (=> b!6358882 (= e!3861423 (matchR!8448 (derivativeStep!4970 (regOne!33042 r!7292) (head!13023 (_1!36547 (get!22482 lt!2366378)))) (tail!12108 (_1!36547 (get!22482 lt!2366378)))))))

(assert (= (and d!1994934 c!1157450) b!6358879))

(assert (= (and d!1994934 (not c!1157450)) b!6358882))

(assert (= (and d!1994934 c!1157451) b!6358873))

(assert (= (and d!1994934 (not c!1157451)) b!6358878))

(assert (= (and b!6358878 c!1157449) b!6358876))

(assert (= (and b!6358878 (not c!1157449)) b!6358880))

(assert (= (and b!6358880 (not res!2616540)) b!6358883))

(assert (= (and b!6358883 res!2616539) b!6358872))

(assert (= (and b!6358872 res!2616537) b!6358884))

(assert (= (and b!6358884 res!2616534) b!6358875))

(assert (= (and b!6358883 (not res!2616533)) b!6358874))

(assert (= (and b!6358874 res!2616536) b!6358877))

(assert (= (and b!6358877 (not res!2616538)) b!6358881))

(assert (= (and b!6358881 (not res!2616535)) b!6358871))

(assert (= (or b!6358873 b!6358872 b!6358877) bm!542423))

(declare-fun m!7164946 () Bool)

(assert (=> b!6358881 m!7164946))

(assert (=> b!6358881 m!7164946))

(declare-fun m!7164948 () Bool)

(assert (=> b!6358881 m!7164948))

(declare-fun m!7164950 () Bool)

(assert (=> b!6358882 m!7164950))

(assert (=> b!6358882 m!7164950))

(declare-fun m!7164952 () Bool)

(assert (=> b!6358882 m!7164952))

(assert (=> b!6358882 m!7164946))

(assert (=> b!6358882 m!7164952))

(assert (=> b!6358882 m!7164946))

(declare-fun m!7164954 () Bool)

(assert (=> b!6358882 m!7164954))

(assert (=> b!6358884 m!7164946))

(assert (=> b!6358884 m!7164946))

(assert (=> b!6358884 m!7164948))

(assert (=> b!6358875 m!7164950))

(assert (=> b!6358879 m!7163716))

(declare-fun m!7164956 () Bool)

(assert (=> d!1994934 m!7164956))

(assert (=> d!1994934 m!7163568))

(assert (=> bm!542423 m!7164956))

(assert (=> b!6358871 m!7164950))

(assert (=> b!6357455 d!1994934))

(assert (=> b!6357455 d!1994544))

(declare-fun b!6358885 () Bool)

(declare-fun e!3861432 () Bool)

(assert (=> b!6358885 (= e!3861432 (not (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 lt!2366179 (head!13023 s!2326))))))))

(declare-fun b!6358886 () Bool)

(declare-fun res!2616545 () Bool)

(declare-fun e!3861431 () Bool)

(assert (=> b!6358886 (=> (not res!2616545) (not e!3861431))))

(declare-fun call!542429 () Bool)

(assert (=> b!6358886 (= res!2616545 (not call!542429))))

(declare-fun b!6358887 () Bool)

(declare-fun e!3861429 () Bool)

(declare-fun lt!2366501 () Bool)

(assert (=> b!6358887 (= e!3861429 (= lt!2366501 call!542429))))

(declare-fun bm!542424 () Bool)

(assert (=> bm!542424 (= call!542429 (isEmpty!37073 (tail!12108 s!2326)))))

(declare-fun b!6358888 () Bool)

(declare-fun e!3861428 () Bool)

(declare-fun e!3861426 () Bool)

(assert (=> b!6358888 (= e!3861428 e!3861426)))

(declare-fun res!2616544 () Bool)

(assert (=> b!6358888 (=> (not res!2616544) (not e!3861426))))

(assert (=> b!6358888 (= res!2616544 (not lt!2366501))))

(declare-fun b!6358889 () Bool)

(assert (=> b!6358889 (= e!3861431 (= (head!13023 (tail!12108 s!2326)) (c!1156730 (derivativeStep!4970 lt!2366179 (head!13023 s!2326)))))))

(declare-fun b!6358890 () Bool)

(declare-fun e!3861427 () Bool)

(assert (=> b!6358890 (= e!3861427 (not lt!2366501))))

(declare-fun b!6358891 () Bool)

(assert (=> b!6358891 (= e!3861426 e!3861432)))

(declare-fun res!2616546 () Bool)

(assert (=> b!6358891 (=> res!2616546 e!3861432)))

(assert (=> b!6358891 (= res!2616546 call!542429)))

(declare-fun b!6358892 () Bool)

(assert (=> b!6358892 (= e!3861429 e!3861427)))

(declare-fun c!1157452 () Bool)

(assert (=> b!6358892 (= c!1157452 ((_ is EmptyLang!16265) (derivativeStep!4970 lt!2366179 (head!13023 s!2326))))))

(declare-fun b!6358893 () Bool)

(declare-fun e!3861430 () Bool)

(assert (=> b!6358893 (= e!3861430 (nullable!6258 (derivativeStep!4970 lt!2366179 (head!13023 s!2326))))))

(declare-fun b!6358894 () Bool)

(declare-fun res!2616548 () Bool)

(assert (=> b!6358894 (=> res!2616548 e!3861428)))

(assert (=> b!6358894 (= res!2616548 (not ((_ is ElementMatch!16265) (derivativeStep!4970 lt!2366179 (head!13023 s!2326)))))))

(assert (=> b!6358894 (= e!3861427 e!3861428)))

(declare-fun b!6358895 () Bool)

(declare-fun res!2616543 () Bool)

(assert (=> b!6358895 (=> res!2616543 e!3861432)))

(assert (=> b!6358895 (= res!2616543 (not (isEmpty!37073 (tail!12108 (tail!12108 s!2326)))))))

(declare-fun b!6358897 () Bool)

(declare-fun res!2616541 () Bool)

(assert (=> b!6358897 (=> res!2616541 e!3861428)))

(assert (=> b!6358897 (= res!2616541 e!3861431)))

(declare-fun res!2616547 () Bool)

(assert (=> b!6358897 (=> (not res!2616547) (not e!3861431))))

(assert (=> b!6358897 (= res!2616547 lt!2366501)))

(declare-fun b!6358898 () Bool)

(declare-fun res!2616542 () Bool)

(assert (=> b!6358898 (=> (not res!2616542) (not e!3861431))))

(assert (=> b!6358898 (= res!2616542 (isEmpty!37073 (tail!12108 (tail!12108 s!2326))))))

(declare-fun d!1994936 () Bool)

(assert (=> d!1994936 e!3861429))

(declare-fun c!1157454 () Bool)

(assert (=> d!1994936 (= c!1157454 ((_ is EmptyExpr!16265) (derivativeStep!4970 lt!2366179 (head!13023 s!2326))))))

(assert (=> d!1994936 (= lt!2366501 e!3861430)))

(declare-fun c!1157453 () Bool)

(assert (=> d!1994936 (= c!1157453 (isEmpty!37073 (tail!12108 s!2326)))))

(assert (=> d!1994936 (validRegex!8001 (derivativeStep!4970 lt!2366179 (head!13023 s!2326)))))

(assert (=> d!1994936 (= (matchR!8448 (derivativeStep!4970 lt!2366179 (head!13023 s!2326)) (tail!12108 s!2326)) lt!2366501)))

(declare-fun b!6358896 () Bool)

(assert (=> b!6358896 (= e!3861430 (matchR!8448 (derivativeStep!4970 (derivativeStep!4970 lt!2366179 (head!13023 s!2326)) (head!13023 (tail!12108 s!2326))) (tail!12108 (tail!12108 s!2326))))))

(assert (= (and d!1994936 c!1157453) b!6358893))

(assert (= (and d!1994936 (not c!1157453)) b!6358896))

(assert (= (and d!1994936 c!1157454) b!6358887))

(assert (= (and d!1994936 (not c!1157454)) b!6358892))

(assert (= (and b!6358892 c!1157452) b!6358890))

(assert (= (and b!6358892 (not c!1157452)) b!6358894))

(assert (= (and b!6358894 (not res!2616548)) b!6358897))

(assert (= (and b!6358897 res!2616547) b!6358886))

(assert (= (and b!6358886 res!2616545) b!6358898))

(assert (= (and b!6358898 res!2616542) b!6358889))

(assert (= (and b!6358897 (not res!2616541)) b!6358888))

(assert (= (and b!6358888 res!2616544) b!6358891))

(assert (= (and b!6358891 (not res!2616546)) b!6358895))

(assert (= (and b!6358895 (not res!2616543)) b!6358885))

(assert (= (or b!6358887 b!6358886 b!6358891) bm!542424))

(assert (=> b!6358895 m!7163356))

(assert (=> b!6358895 m!7163880))

(assert (=> b!6358895 m!7163880))

(assert (=> b!6358895 m!7163892))

(assert (=> b!6358896 m!7163356))

(assert (=> b!6358896 m!7163876))

(assert (=> b!6358896 m!7163402))

(assert (=> b!6358896 m!7163876))

(declare-fun m!7164958 () Bool)

(assert (=> b!6358896 m!7164958))

(assert (=> b!6358896 m!7163356))

(assert (=> b!6358896 m!7163880))

(assert (=> b!6358896 m!7164958))

(assert (=> b!6358896 m!7163880))

(declare-fun m!7164960 () Bool)

(assert (=> b!6358896 m!7164960))

(assert (=> b!6358898 m!7163356))

(assert (=> b!6358898 m!7163880))

(assert (=> b!6358898 m!7163880))

(assert (=> b!6358898 m!7163892))

(assert (=> b!6358889 m!7163356))

(assert (=> b!6358889 m!7163876))

(assert (=> b!6358893 m!7163402))

(declare-fun m!7164962 () Bool)

(assert (=> b!6358893 m!7164962))

(assert (=> d!1994936 m!7163356))

(assert (=> d!1994936 m!7163358))

(assert (=> d!1994936 m!7163402))

(declare-fun m!7164964 () Bool)

(assert (=> d!1994936 m!7164964))

(assert (=> bm!542424 m!7163356))

(assert (=> bm!542424 m!7163358))

(assert (=> b!6358885 m!7163356))

(assert (=> b!6358885 m!7163876))

(assert (=> b!6357330 d!1994936))

(declare-fun b!6358899 () Bool)

(declare-fun e!3861435 () Regex!16265)

(declare-fun call!542431 () Regex!16265)

(declare-fun call!542430 () Regex!16265)

(assert (=> b!6358899 (= e!3861435 (Union!16265 call!542431 call!542430))))

(declare-fun b!6358900 () Bool)

(declare-fun e!3861433 () Regex!16265)

(declare-fun call!542432 () Regex!16265)

(assert (=> b!6358900 (= e!3861433 (Concat!25110 call!542432 lt!2366179))))

(declare-fun b!6358901 () Bool)

(assert (=> b!6358901 (= e!3861435 e!3861433)))

(declare-fun c!1157458 () Bool)

(assert (=> b!6358901 (= c!1157458 ((_ is Star!16265) lt!2366179))))

(declare-fun b!6358902 () Bool)

(declare-fun e!3861434 () Regex!16265)

(assert (=> b!6358902 (= e!3861434 EmptyLang!16265)))

(declare-fun b!6358903 () Bool)

(declare-fun e!3861437 () Regex!16265)

(assert (=> b!6358903 (= e!3861437 (ite (= (head!13023 s!2326) (c!1156730 lt!2366179)) EmptyExpr!16265 EmptyLang!16265))))

(declare-fun b!6358904 () Bool)

(declare-fun e!3861436 () Regex!16265)

(declare-fun call!542433 () Regex!16265)

(assert (=> b!6358904 (= e!3861436 (Union!16265 (Concat!25110 call!542433 (regTwo!33042 lt!2366179)) EmptyLang!16265))))

(declare-fun bm!542425 () Bool)

(assert (=> bm!542425 (= call!542432 call!542430)))

(declare-fun bm!542426 () Bool)

(assert (=> bm!542426 (= call!542433 call!542432)))

(declare-fun b!6358905 () Bool)

(assert (=> b!6358905 (= e!3861434 e!3861437)))

(declare-fun c!1157457 () Bool)

(assert (=> b!6358905 (= c!1157457 ((_ is ElementMatch!16265) lt!2366179))))

(declare-fun d!1994938 () Bool)

(declare-fun lt!2366502 () Regex!16265)

(assert (=> d!1994938 (validRegex!8001 lt!2366502)))

(assert (=> d!1994938 (= lt!2366502 e!3861434)))

(declare-fun c!1157456 () Bool)

(assert (=> d!1994938 (= c!1157456 (or ((_ is EmptyExpr!16265) lt!2366179) ((_ is EmptyLang!16265) lt!2366179)))))

(assert (=> d!1994938 (validRegex!8001 lt!2366179)))

(assert (=> d!1994938 (= (derivativeStep!4970 lt!2366179 (head!13023 s!2326)) lt!2366502)))

(declare-fun b!6358906 () Bool)

(declare-fun c!1157459 () Bool)

(assert (=> b!6358906 (= c!1157459 ((_ is Union!16265) lt!2366179))))

(assert (=> b!6358906 (= e!3861437 e!3861435)))

(declare-fun b!6358907 () Bool)

(declare-fun c!1157455 () Bool)

(assert (=> b!6358907 (= c!1157455 (nullable!6258 (regOne!33042 lt!2366179)))))

(assert (=> b!6358907 (= e!3861433 e!3861436)))

(declare-fun b!6358908 () Bool)

(assert (=> b!6358908 (= e!3861436 (Union!16265 (Concat!25110 call!542431 (regTwo!33042 lt!2366179)) call!542433))))

(declare-fun bm!542427 () Bool)

(assert (=> bm!542427 (= call!542430 (derivativeStep!4970 (ite c!1157459 (regTwo!33043 lt!2366179) (ite c!1157458 (reg!16594 lt!2366179) (ite c!1157455 (regTwo!33042 lt!2366179) (regOne!33042 lt!2366179)))) (head!13023 s!2326)))))

(declare-fun bm!542428 () Bool)

(assert (=> bm!542428 (= call!542431 (derivativeStep!4970 (ite c!1157459 (regOne!33043 lt!2366179) (regOne!33042 lt!2366179)) (head!13023 s!2326)))))

(assert (= (and d!1994938 c!1157456) b!6358902))

(assert (= (and d!1994938 (not c!1157456)) b!6358905))

(assert (= (and b!6358905 c!1157457) b!6358903))

(assert (= (and b!6358905 (not c!1157457)) b!6358906))

(assert (= (and b!6358906 c!1157459) b!6358899))

(assert (= (and b!6358906 (not c!1157459)) b!6358901))

(assert (= (and b!6358901 c!1157458) b!6358900))

(assert (= (and b!6358901 (not c!1157458)) b!6358907))

(assert (= (and b!6358907 c!1157455) b!6358908))

(assert (= (and b!6358907 (not c!1157455)) b!6358904))

(assert (= (or b!6358908 b!6358904) bm!542426))

(assert (= (or b!6358900 bm!542426) bm!542425))

(assert (= (or b!6358899 bm!542425) bm!542427))

(assert (= (or b!6358899 b!6358908) bm!542428))

(declare-fun m!7164966 () Bool)

(assert (=> d!1994938 m!7164966))

(assert (=> d!1994938 m!7163400))

(declare-fun m!7164968 () Bool)

(assert (=> b!6358907 m!7164968))

(assert (=> bm!542427 m!7163360))

(declare-fun m!7164970 () Bool)

(assert (=> bm!542427 m!7164970))

(assert (=> bm!542428 m!7163360))

(declare-fun m!7164972 () Bool)

(assert (=> bm!542428 m!7164972))

(assert (=> b!6357330 d!1994938))

(assert (=> b!6357330 d!1994348))

(assert (=> b!6357330 d!1994342))

(declare-fun d!1994940 () Bool)

(declare-fun c!1157460 () Bool)

(assert (=> d!1994940 (= c!1157460 (isEmpty!37073 (tail!12108 (t!378686 s!2326))))))

(declare-fun e!3861438 () Bool)

(assert (=> d!1994940 (= (matchZipper!2277 (derivationStepZipper!2231 lt!2366163 (head!13023 (t!378686 s!2326))) (tail!12108 (t!378686 s!2326))) e!3861438)))

(declare-fun b!6358909 () Bool)

(assert (=> b!6358909 (= e!3861438 (nullableZipper!2031 (derivationStepZipper!2231 lt!2366163 (head!13023 (t!378686 s!2326)))))))

(declare-fun b!6358910 () Bool)

(assert (=> b!6358910 (= e!3861438 (matchZipper!2277 (derivationStepZipper!2231 (derivationStepZipper!2231 lt!2366163 (head!13023 (t!378686 s!2326))) (head!13023 (tail!12108 (t!378686 s!2326)))) (tail!12108 (tail!12108 (t!378686 s!2326)))))))

(assert (= (and d!1994940 c!1157460) b!6358909))

(assert (= (and d!1994940 (not c!1157460)) b!6358910))

(assert (=> d!1994940 m!7163466))

(assert (=> d!1994940 m!7163758))

(assert (=> b!6358909 m!7163538))

(declare-fun m!7164974 () Bool)

(assert (=> b!6358909 m!7164974))

(assert (=> b!6358910 m!7163466))

(assert (=> b!6358910 m!7163762))

(assert (=> b!6358910 m!7163538))

(assert (=> b!6358910 m!7163762))

(declare-fun m!7164976 () Bool)

(assert (=> b!6358910 m!7164976))

(assert (=> b!6358910 m!7163466))

(assert (=> b!6358910 m!7163766))

(assert (=> b!6358910 m!7164976))

(assert (=> b!6358910 m!7163766))

(declare-fun m!7164978 () Bool)

(assert (=> b!6358910 m!7164978))

(assert (=> b!6357436 d!1994940))

(declare-fun bs!1593236 () Bool)

(declare-fun d!1994942 () Bool)

(assert (= bs!1593236 (and d!1994942 d!1994382)))

(declare-fun lambda!350205 () Int)

(assert (=> bs!1593236 (= lambda!350205 lambda!350126)))

(declare-fun bs!1593238 () Bool)

(assert (= bs!1593238 (and d!1994942 b!6356406)))

(assert (=> bs!1593238 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350205 lambda!349997))))

(declare-fun bs!1593239 () Bool)

(assert (= bs!1593239 (and d!1994942 d!1994818)))

(assert (=> bs!1593239 (= lambda!350205 lambda!350191)))

(declare-fun bs!1593241 () Bool)

(assert (= bs!1593241 (and d!1994942 d!1994830)))

(assert (=> bs!1593241 (= lambda!350205 lambda!350193)))

(declare-fun bs!1593243 () Bool)

(assert (= bs!1593243 (and d!1994942 d!1994102)))

(assert (=> bs!1593243 (= (= (head!13023 (t!378686 s!2326)) (h!71420 s!2326)) (= lambda!350205 lambda!350035))))

(declare-fun bs!1593244 () Bool)

(assert (= bs!1593244 (and d!1994942 d!1994866)))

(assert (=> bs!1593244 (= lambda!350205 lambda!350196)))

(declare-fun bs!1593246 () Bool)

(assert (= bs!1593246 (and d!1994942 d!1994622)))

(assert (=> bs!1593246 (= (= (head!13023 (t!378686 s!2326)) (head!13023 s!2326)) (= lambda!350205 lambda!350156))))

(declare-fun bs!1593247 () Bool)

(assert (= bs!1593247 (and d!1994942 d!1994458)))

(assert (=> bs!1593247 (= (= (head!13023 (t!378686 s!2326)) (head!13023 s!2326)) (= lambda!350205 lambda!350132))))

(assert (=> d!1994942 true))

(assert (=> d!1994942 (= (derivationStepZipper!2231 lt!2366163 (head!13023 (t!378686 s!2326))) (flatMap!1770 lt!2366163 lambda!350205))))

(declare-fun bs!1593249 () Bool)

(assert (= bs!1593249 d!1994942))

(declare-fun m!7164980 () Bool)

(assert (=> bs!1593249 m!7164980))

(assert (=> b!6357436 d!1994942))

(assert (=> b!6357436 d!1994384))

(assert (=> b!6357436 d!1994386))

(declare-fun b!6358911 () Bool)

(declare-fun e!3861439 () Bool)

(declare-fun tp!1770849 () Bool)

(declare-fun tp!1770850 () Bool)

(assert (=> b!6358911 (= e!3861439 (and tp!1770849 tp!1770850))))

(assert (=> b!6357526 (= tp!1770813 e!3861439)))

(assert (= (and b!6357526 ((_ is Cons!64970) (exprs!6149 (h!71419 (t!378685 zl!343))))) b!6358911))

(declare-fun b!6358913 () Bool)

(declare-fun e!3861440 () Bool)

(declare-fun tp!1770854 () Bool)

(declare-fun tp!1770855 () Bool)

(assert (=> b!6358913 (= e!3861440 (and tp!1770854 tp!1770855))))

(assert (=> b!6357511 (= tp!1770801 e!3861440)))

(declare-fun b!6358914 () Bool)

(declare-fun tp!1770853 () Bool)

(assert (=> b!6358914 (= e!3861440 tp!1770853)))

(declare-fun b!6358915 () Bool)

(declare-fun tp!1770852 () Bool)

(declare-fun tp!1770851 () Bool)

(assert (=> b!6358915 (= e!3861440 (and tp!1770852 tp!1770851))))

(declare-fun b!6358912 () Bool)

(assert (=> b!6358912 (= e!3861440 tp_is_empty!41783)))

(assert (= (and b!6357511 ((_ is ElementMatch!16265) (regOne!33042 (regTwo!33043 r!7292)))) b!6358912))

(assert (= (and b!6357511 ((_ is Concat!25110) (regOne!33042 (regTwo!33043 r!7292)))) b!6358913))

(assert (= (and b!6357511 ((_ is Star!16265) (regOne!33042 (regTwo!33043 r!7292)))) b!6358914))

(assert (= (and b!6357511 ((_ is Union!16265) (regOne!33042 (regTwo!33043 r!7292)))) b!6358915))

(declare-fun b!6358917 () Bool)

(declare-fun e!3861441 () Bool)

(declare-fun tp!1770859 () Bool)

(declare-fun tp!1770860 () Bool)

(assert (=> b!6358917 (= e!3861441 (and tp!1770859 tp!1770860))))

(assert (=> b!6357511 (= tp!1770802 e!3861441)))

(declare-fun b!6358918 () Bool)

(declare-fun tp!1770858 () Bool)

(assert (=> b!6358918 (= e!3861441 tp!1770858)))

(declare-fun b!6358919 () Bool)

(declare-fun tp!1770857 () Bool)

(declare-fun tp!1770856 () Bool)

(assert (=> b!6358919 (= e!3861441 (and tp!1770857 tp!1770856))))

(declare-fun b!6358916 () Bool)

(assert (=> b!6358916 (= e!3861441 tp_is_empty!41783)))

(assert (= (and b!6357511 ((_ is ElementMatch!16265) (regTwo!33042 (regTwo!33043 r!7292)))) b!6358916))

(assert (= (and b!6357511 ((_ is Concat!25110) (regTwo!33042 (regTwo!33043 r!7292)))) b!6358917))

(assert (= (and b!6357511 ((_ is Star!16265) (regTwo!33042 (regTwo!33043 r!7292)))) b!6358918))

(assert (= (and b!6357511 ((_ is Union!16265) (regTwo!33042 (regTwo!33043 r!7292)))) b!6358919))

(declare-fun b!6358921 () Bool)

(declare-fun e!3861442 () Bool)

(declare-fun tp!1770864 () Bool)

(declare-fun tp!1770865 () Bool)

(assert (=> b!6358921 (= e!3861442 (and tp!1770864 tp!1770865))))

(assert (=> b!6357504 (= tp!1770789 e!3861442)))

(declare-fun b!6358922 () Bool)

(declare-fun tp!1770863 () Bool)

(assert (=> b!6358922 (= e!3861442 tp!1770863)))

(declare-fun b!6358923 () Bool)

(declare-fun tp!1770862 () Bool)

(declare-fun tp!1770861 () Bool)

(assert (=> b!6358923 (= e!3861442 (and tp!1770862 tp!1770861))))

(declare-fun b!6358920 () Bool)

(assert (=> b!6358920 (= e!3861442 tp_is_empty!41783)))

(assert (= (and b!6357504 ((_ is ElementMatch!16265) (h!71418 (exprs!6149 setElem!43294)))) b!6358920))

(assert (= (and b!6357504 ((_ is Concat!25110) (h!71418 (exprs!6149 setElem!43294)))) b!6358921))

(assert (= (and b!6357504 ((_ is Star!16265) (h!71418 (exprs!6149 setElem!43294)))) b!6358922))

(assert (= (and b!6357504 ((_ is Union!16265) (h!71418 (exprs!6149 setElem!43294)))) b!6358923))

(declare-fun b!6358924 () Bool)

(declare-fun e!3861443 () Bool)

(declare-fun tp!1770866 () Bool)

(declare-fun tp!1770867 () Bool)

(assert (=> b!6358924 (= e!3861443 (and tp!1770866 tp!1770867))))

(assert (=> b!6357504 (= tp!1770790 e!3861443)))

(assert (= (and b!6357504 ((_ is Cons!64970) (t!378684 (exprs!6149 setElem!43294)))) b!6358924))

(declare-fun b!6358926 () Bool)

(declare-fun e!3861445 () Bool)

(declare-fun tp!1770868 () Bool)

(assert (=> b!6358926 (= e!3861445 tp!1770868)))

(declare-fun tp!1770869 () Bool)

(declare-fun e!3861444 () Bool)

(declare-fun b!6358925 () Bool)

(assert (=> b!6358925 (= e!3861444 (and (inv!83909 (h!71419 (t!378685 (t!378685 zl!343)))) e!3861445 tp!1770869))))

(assert (=> b!6357525 (= tp!1770814 e!3861444)))

(assert (= b!6358925 b!6358926))

(assert (= (and b!6357525 ((_ is Cons!64971) (t!378685 (t!378685 zl!343)))) b!6358925))

(declare-fun m!7164988 () Bool)

(assert (=> b!6358925 m!7164988))

(declare-fun b!6358928 () Bool)

(declare-fun e!3861446 () Bool)

(declare-fun tp!1770873 () Bool)

(declare-fun tp!1770874 () Bool)

(assert (=> b!6358928 (= e!3861446 (and tp!1770873 tp!1770874))))

(assert (=> b!6357512 (= tp!1770800 e!3861446)))

(declare-fun b!6358929 () Bool)

(declare-fun tp!1770872 () Bool)

(assert (=> b!6358929 (= e!3861446 tp!1770872)))

(declare-fun b!6358930 () Bool)

(declare-fun tp!1770871 () Bool)

(declare-fun tp!1770870 () Bool)

(assert (=> b!6358930 (= e!3861446 (and tp!1770871 tp!1770870))))

(declare-fun b!6358927 () Bool)

(assert (=> b!6358927 (= e!3861446 tp_is_empty!41783)))

(assert (= (and b!6357512 ((_ is ElementMatch!16265) (reg!16594 (regTwo!33043 r!7292)))) b!6358927))

(assert (= (and b!6357512 ((_ is Concat!25110) (reg!16594 (regTwo!33043 r!7292)))) b!6358928))

(assert (= (and b!6357512 ((_ is Star!16265) (reg!16594 (regTwo!33043 r!7292)))) b!6358929))

(assert (= (and b!6357512 ((_ is Union!16265) (reg!16594 (regTwo!33043 r!7292)))) b!6358930))

(declare-fun b!6358932 () Bool)

(declare-fun e!3861447 () Bool)

(declare-fun tp!1770878 () Bool)

(declare-fun tp!1770879 () Bool)

(assert (=> b!6358932 (= e!3861447 (and tp!1770878 tp!1770879))))

(assert (=> b!6357497 (= tp!1770783 e!3861447)))

(declare-fun b!6358933 () Bool)

(declare-fun tp!1770877 () Bool)

(assert (=> b!6358933 (= e!3861447 tp!1770877)))

(declare-fun b!6358934 () Bool)

(declare-fun tp!1770876 () Bool)

(declare-fun tp!1770875 () Bool)

(assert (=> b!6358934 (= e!3861447 (and tp!1770876 tp!1770875))))

(declare-fun b!6358931 () Bool)

(assert (=> b!6358931 (= e!3861447 tp_is_empty!41783)))

(assert (= (and b!6357497 ((_ is ElementMatch!16265) (regOne!33042 (regTwo!33042 r!7292)))) b!6358931))

(assert (= (and b!6357497 ((_ is Concat!25110) (regOne!33042 (regTwo!33042 r!7292)))) b!6358932))

(assert (= (and b!6357497 ((_ is Star!16265) (regOne!33042 (regTwo!33042 r!7292)))) b!6358933))

(assert (= (and b!6357497 ((_ is Union!16265) (regOne!33042 (regTwo!33042 r!7292)))) b!6358934))

(declare-fun b!6358936 () Bool)

(declare-fun e!3861448 () Bool)

(declare-fun tp!1770883 () Bool)

(declare-fun tp!1770884 () Bool)

(assert (=> b!6358936 (= e!3861448 (and tp!1770883 tp!1770884))))

(assert (=> b!6357497 (= tp!1770784 e!3861448)))

(declare-fun b!6358937 () Bool)

(declare-fun tp!1770882 () Bool)

(assert (=> b!6358937 (= e!3861448 tp!1770882)))

(declare-fun b!6358938 () Bool)

(declare-fun tp!1770881 () Bool)

(declare-fun tp!1770880 () Bool)

(assert (=> b!6358938 (= e!3861448 (and tp!1770881 tp!1770880))))

(declare-fun b!6358935 () Bool)

(assert (=> b!6358935 (= e!3861448 tp_is_empty!41783)))

(assert (= (and b!6357497 ((_ is ElementMatch!16265) (regTwo!33042 (regTwo!33042 r!7292)))) b!6358935))

(assert (= (and b!6357497 ((_ is Concat!25110) (regTwo!33042 (regTwo!33042 r!7292)))) b!6358936))

(assert (= (and b!6357497 ((_ is Star!16265) (regTwo!33042 (regTwo!33042 r!7292)))) b!6358937))

(assert (= (and b!6357497 ((_ is Union!16265) (regTwo!33042 (regTwo!33042 r!7292)))) b!6358938))

(declare-fun b!6358940 () Bool)

(declare-fun e!3861449 () Bool)

(declare-fun tp!1770888 () Bool)

(declare-fun tp!1770889 () Bool)

(assert (=> b!6358940 (= e!3861449 (and tp!1770888 tp!1770889))))

(assert (=> b!6357499 (= tp!1770781 e!3861449)))

(declare-fun b!6358941 () Bool)

(declare-fun tp!1770887 () Bool)

(assert (=> b!6358941 (= e!3861449 tp!1770887)))

(declare-fun b!6358942 () Bool)

(declare-fun tp!1770886 () Bool)

(declare-fun tp!1770885 () Bool)

(assert (=> b!6358942 (= e!3861449 (and tp!1770886 tp!1770885))))

(declare-fun b!6358939 () Bool)

(assert (=> b!6358939 (= e!3861449 tp_is_empty!41783)))

(assert (= (and b!6357499 ((_ is ElementMatch!16265) (regOne!33043 (regTwo!33042 r!7292)))) b!6358939))

(assert (= (and b!6357499 ((_ is Concat!25110) (regOne!33043 (regTwo!33042 r!7292)))) b!6358940))

(assert (= (and b!6357499 ((_ is Star!16265) (regOne!33043 (regTwo!33042 r!7292)))) b!6358941))

(assert (= (and b!6357499 ((_ is Union!16265) (regOne!33043 (regTwo!33042 r!7292)))) b!6358942))

(declare-fun b!6358944 () Bool)

(declare-fun e!3861450 () Bool)

(declare-fun tp!1770893 () Bool)

(declare-fun tp!1770894 () Bool)

(assert (=> b!6358944 (= e!3861450 (and tp!1770893 tp!1770894))))

(assert (=> b!6357499 (= tp!1770780 e!3861450)))

(declare-fun b!6358945 () Bool)

(declare-fun tp!1770892 () Bool)

(assert (=> b!6358945 (= e!3861450 tp!1770892)))

(declare-fun b!6358946 () Bool)

(declare-fun tp!1770891 () Bool)

(declare-fun tp!1770890 () Bool)

(assert (=> b!6358946 (= e!3861450 (and tp!1770891 tp!1770890))))

(declare-fun b!6358943 () Bool)

(assert (=> b!6358943 (= e!3861450 tp_is_empty!41783)))

(assert (= (and b!6357499 ((_ is ElementMatch!16265) (regTwo!33043 (regTwo!33042 r!7292)))) b!6358943))

(assert (= (and b!6357499 ((_ is Concat!25110) (regTwo!33043 (regTwo!33042 r!7292)))) b!6358944))

(assert (= (and b!6357499 ((_ is Star!16265) (regTwo!33043 (regTwo!33042 r!7292)))) b!6358945))

(assert (= (and b!6357499 ((_ is Union!16265) (regTwo!33043 (regTwo!33042 r!7292)))) b!6358946))

(declare-fun b!6358948 () Bool)

(declare-fun e!3861451 () Bool)

(declare-fun tp!1770898 () Bool)

(declare-fun tp!1770899 () Bool)

(assert (=> b!6358948 (= e!3861451 (and tp!1770898 tp!1770899))))

(assert (=> b!6357513 (= tp!1770799 e!3861451)))

(declare-fun b!6358949 () Bool)

(declare-fun tp!1770897 () Bool)

(assert (=> b!6358949 (= e!3861451 tp!1770897)))

(declare-fun b!6358950 () Bool)

(declare-fun tp!1770896 () Bool)

(declare-fun tp!1770895 () Bool)

(assert (=> b!6358950 (= e!3861451 (and tp!1770896 tp!1770895))))

(declare-fun b!6358947 () Bool)

(assert (=> b!6358947 (= e!3861451 tp_is_empty!41783)))

(assert (= (and b!6357513 ((_ is ElementMatch!16265) (regOne!33043 (regTwo!33043 r!7292)))) b!6358947))

(assert (= (and b!6357513 ((_ is Concat!25110) (regOne!33043 (regTwo!33043 r!7292)))) b!6358948))

(assert (= (and b!6357513 ((_ is Star!16265) (regOne!33043 (regTwo!33043 r!7292)))) b!6358949))

(assert (= (and b!6357513 ((_ is Union!16265) (regOne!33043 (regTwo!33043 r!7292)))) b!6358950))

(declare-fun b!6358952 () Bool)

(declare-fun e!3861452 () Bool)

(declare-fun tp!1770903 () Bool)

(declare-fun tp!1770904 () Bool)

(assert (=> b!6358952 (= e!3861452 (and tp!1770903 tp!1770904))))

(assert (=> b!6357513 (= tp!1770798 e!3861452)))

(declare-fun b!6358953 () Bool)

(declare-fun tp!1770902 () Bool)

(assert (=> b!6358953 (= e!3861452 tp!1770902)))

(declare-fun b!6358954 () Bool)

(declare-fun tp!1770901 () Bool)

(declare-fun tp!1770900 () Bool)

(assert (=> b!6358954 (= e!3861452 (and tp!1770901 tp!1770900))))

(declare-fun b!6358951 () Bool)

(assert (=> b!6358951 (= e!3861452 tp_is_empty!41783)))

(assert (= (and b!6357513 ((_ is ElementMatch!16265) (regTwo!33043 (regTwo!33043 r!7292)))) b!6358951))

(assert (= (and b!6357513 ((_ is Concat!25110) (regTwo!33043 (regTwo!33043 r!7292)))) b!6358952))

(assert (= (and b!6357513 ((_ is Star!16265) (regTwo!33043 (regTwo!33043 r!7292)))) b!6358953))

(assert (= (and b!6357513 ((_ is Union!16265) (regTwo!33043 (regTwo!33043 r!7292)))) b!6358954))

(declare-fun b!6358956 () Bool)

(declare-fun e!3861453 () Bool)

(declare-fun tp!1770908 () Bool)

(declare-fun tp!1770909 () Bool)

(assert (=> b!6358956 (= e!3861453 (and tp!1770908 tp!1770909))))

(assert (=> b!6357498 (= tp!1770782 e!3861453)))

(declare-fun b!6358957 () Bool)

(declare-fun tp!1770907 () Bool)

(assert (=> b!6358957 (= e!3861453 tp!1770907)))

(declare-fun b!6358958 () Bool)

(declare-fun tp!1770906 () Bool)

(declare-fun tp!1770905 () Bool)

(assert (=> b!6358958 (= e!3861453 (and tp!1770906 tp!1770905))))

(declare-fun b!6358955 () Bool)

(assert (=> b!6358955 (= e!3861453 tp_is_empty!41783)))

(assert (= (and b!6357498 ((_ is ElementMatch!16265) (reg!16594 (regTwo!33042 r!7292)))) b!6358955))

(assert (= (and b!6357498 ((_ is Concat!25110) (reg!16594 (regTwo!33042 r!7292)))) b!6358956))

(assert (= (and b!6357498 ((_ is Star!16265) (reg!16594 (regTwo!33042 r!7292)))) b!6358957))

(assert (= (and b!6357498 ((_ is Union!16265) (reg!16594 (regTwo!33042 r!7292)))) b!6358958))

(declare-fun b!6358960 () Bool)

(declare-fun e!3861454 () Bool)

(declare-fun tp!1770913 () Bool)

(declare-fun tp!1770914 () Bool)

(assert (=> b!6358960 (= e!3861454 (and tp!1770913 tp!1770914))))

(assert (=> b!6357495 (= tp!1770776 e!3861454)))

(declare-fun b!6358961 () Bool)

(declare-fun tp!1770912 () Bool)

(assert (=> b!6358961 (= e!3861454 tp!1770912)))

(declare-fun b!6358962 () Bool)

(declare-fun tp!1770911 () Bool)

(declare-fun tp!1770910 () Bool)

(assert (=> b!6358962 (= e!3861454 (and tp!1770911 tp!1770910))))

(declare-fun b!6358959 () Bool)

(assert (=> b!6358959 (= e!3861454 tp_is_empty!41783)))

(assert (= (and b!6357495 ((_ is ElementMatch!16265) (regOne!33043 (regOne!33042 r!7292)))) b!6358959))

(assert (= (and b!6357495 ((_ is Concat!25110) (regOne!33043 (regOne!33042 r!7292)))) b!6358960))

(assert (= (and b!6357495 ((_ is Star!16265) (regOne!33043 (regOne!33042 r!7292)))) b!6358961))

(assert (= (and b!6357495 ((_ is Union!16265) (regOne!33043 (regOne!33042 r!7292)))) b!6358962))

(declare-fun b!6358964 () Bool)

(declare-fun e!3861455 () Bool)

(declare-fun tp!1770918 () Bool)

(declare-fun tp!1770919 () Bool)

(assert (=> b!6358964 (= e!3861455 (and tp!1770918 tp!1770919))))

(assert (=> b!6357495 (= tp!1770775 e!3861455)))

(declare-fun b!6358965 () Bool)

(declare-fun tp!1770917 () Bool)

(assert (=> b!6358965 (= e!3861455 tp!1770917)))

(declare-fun b!6358966 () Bool)

(declare-fun tp!1770916 () Bool)

(declare-fun tp!1770915 () Bool)

(assert (=> b!6358966 (= e!3861455 (and tp!1770916 tp!1770915))))

(declare-fun b!6358963 () Bool)

(assert (=> b!6358963 (= e!3861455 tp_is_empty!41783)))

(assert (= (and b!6357495 ((_ is ElementMatch!16265) (regTwo!33043 (regOne!33042 r!7292)))) b!6358963))

(assert (= (and b!6357495 ((_ is Concat!25110) (regTwo!33043 (regOne!33042 r!7292)))) b!6358964))

(assert (= (and b!6357495 ((_ is Star!16265) (regTwo!33043 (regOne!33042 r!7292)))) b!6358965))

(assert (= (and b!6357495 ((_ is Union!16265) (regTwo!33043 (regOne!33042 r!7292)))) b!6358966))

(declare-fun condSetEmpty!43308 () Bool)

(assert (=> setNonEmpty!43300 (= condSetEmpty!43308 (= setRest!43300 ((as const (Array Context!11298 Bool)) false)))))

(declare-fun setRes!43308 () Bool)

(assert (=> setNonEmpty!43300 (= tp!1770808 setRes!43308)))

(declare-fun setIsEmpty!43308 () Bool)

(assert (=> setIsEmpty!43308 setRes!43308))

(declare-fun tp!1770921 () Bool)

(declare-fun setElem!43308 () Context!11298)

(declare-fun e!3861456 () Bool)

(declare-fun setNonEmpty!43308 () Bool)

(assert (=> setNonEmpty!43308 (= setRes!43308 (and tp!1770921 (inv!83909 setElem!43308) e!3861456))))

(declare-fun setRest!43308 () (InoxSet Context!11298))

(assert (=> setNonEmpty!43308 (= setRest!43300 ((_ map or) (store ((as const (Array Context!11298 Bool)) false) setElem!43308 true) setRest!43308))))

(declare-fun b!6358967 () Bool)

(declare-fun tp!1770920 () Bool)

(assert (=> b!6358967 (= e!3861456 tp!1770920)))

(assert (= (and setNonEmpty!43300 condSetEmpty!43308) setIsEmpty!43308))

(assert (= (and setNonEmpty!43300 (not condSetEmpty!43308)) setNonEmpty!43308))

(assert (= setNonEmpty!43308 b!6358967))

(declare-fun m!7164994 () Bool)

(assert (=> setNonEmpty!43308 m!7164994))

(declare-fun b!6358968 () Bool)

(declare-fun e!3861457 () Bool)

(declare-fun tp!1770922 () Bool)

(declare-fun tp!1770923 () Bool)

(assert (=> b!6358968 (= e!3861457 (and tp!1770922 tp!1770923))))

(assert (=> b!6357518 (= tp!1770807 e!3861457)))

(assert (= (and b!6357518 ((_ is Cons!64970) (exprs!6149 setElem!43300))) b!6358968))

(declare-fun b!6358970 () Bool)

(declare-fun e!3861458 () Bool)

(declare-fun tp!1770927 () Bool)

(declare-fun tp!1770928 () Bool)

(assert (=> b!6358970 (= e!3861458 (and tp!1770927 tp!1770928))))

(assert (=> b!6357528 (= tp!1770818 e!3861458)))

(declare-fun b!6358971 () Bool)

(declare-fun tp!1770926 () Bool)

(assert (=> b!6358971 (= e!3861458 tp!1770926)))

(declare-fun b!6358972 () Bool)

(declare-fun tp!1770925 () Bool)

(declare-fun tp!1770924 () Bool)

(assert (=> b!6358972 (= e!3861458 (and tp!1770925 tp!1770924))))

(declare-fun b!6358969 () Bool)

(assert (=> b!6358969 (= e!3861458 tp_is_empty!41783)))

(assert (= (and b!6357528 ((_ is ElementMatch!16265) (regOne!33042 (reg!16594 r!7292)))) b!6358969))

(assert (= (and b!6357528 ((_ is Concat!25110) (regOne!33042 (reg!16594 r!7292)))) b!6358970))

(assert (= (and b!6357528 ((_ is Star!16265) (regOne!33042 (reg!16594 r!7292)))) b!6358971))

(assert (= (and b!6357528 ((_ is Union!16265) (regOne!33042 (reg!16594 r!7292)))) b!6358972))

(declare-fun b!6358974 () Bool)

(declare-fun e!3861459 () Bool)

(declare-fun tp!1770932 () Bool)

(declare-fun tp!1770933 () Bool)

(assert (=> b!6358974 (= e!3861459 (and tp!1770932 tp!1770933))))

(assert (=> b!6357528 (= tp!1770819 e!3861459)))

(declare-fun b!6358975 () Bool)

(declare-fun tp!1770931 () Bool)

(assert (=> b!6358975 (= e!3861459 tp!1770931)))

(declare-fun b!6358976 () Bool)

(declare-fun tp!1770930 () Bool)

(declare-fun tp!1770929 () Bool)

(assert (=> b!6358976 (= e!3861459 (and tp!1770930 tp!1770929))))

(declare-fun b!6358973 () Bool)

(assert (=> b!6358973 (= e!3861459 tp_is_empty!41783)))

(assert (= (and b!6357528 ((_ is ElementMatch!16265) (regTwo!33042 (reg!16594 r!7292)))) b!6358973))

(assert (= (and b!6357528 ((_ is Concat!25110) (regTwo!33042 (reg!16594 r!7292)))) b!6358974))

(assert (= (and b!6357528 ((_ is Star!16265) (regTwo!33042 (reg!16594 r!7292)))) b!6358975))

(assert (= (and b!6357528 ((_ is Union!16265) (regTwo!33042 (reg!16594 r!7292)))) b!6358976))

(declare-fun b!6358978 () Bool)

(declare-fun e!3861460 () Bool)

(declare-fun tp!1770937 () Bool)

(declare-fun tp!1770938 () Bool)

(assert (=> b!6358978 (= e!3861460 (and tp!1770937 tp!1770938))))

(assert (=> b!6357530 (= tp!1770816 e!3861460)))

(declare-fun b!6358979 () Bool)

(declare-fun tp!1770936 () Bool)

(assert (=> b!6358979 (= e!3861460 tp!1770936)))

(declare-fun b!6358980 () Bool)

(declare-fun tp!1770935 () Bool)

(declare-fun tp!1770934 () Bool)

(assert (=> b!6358980 (= e!3861460 (and tp!1770935 tp!1770934))))

(declare-fun b!6358977 () Bool)

(assert (=> b!6358977 (= e!3861460 tp_is_empty!41783)))

(assert (= (and b!6357530 ((_ is ElementMatch!16265) (regOne!33043 (reg!16594 r!7292)))) b!6358977))

(assert (= (and b!6357530 ((_ is Concat!25110) (regOne!33043 (reg!16594 r!7292)))) b!6358978))

(assert (= (and b!6357530 ((_ is Star!16265) (regOne!33043 (reg!16594 r!7292)))) b!6358979))

(assert (= (and b!6357530 ((_ is Union!16265) (regOne!33043 (reg!16594 r!7292)))) b!6358980))

(declare-fun b!6358982 () Bool)

(declare-fun e!3861461 () Bool)

(declare-fun tp!1770942 () Bool)

(declare-fun tp!1770943 () Bool)

(assert (=> b!6358982 (= e!3861461 (and tp!1770942 tp!1770943))))

(assert (=> b!6357530 (= tp!1770815 e!3861461)))

(declare-fun b!6358983 () Bool)

(declare-fun tp!1770941 () Bool)

(assert (=> b!6358983 (= e!3861461 tp!1770941)))

(declare-fun b!6358984 () Bool)

(declare-fun tp!1770940 () Bool)

(declare-fun tp!1770939 () Bool)

(assert (=> b!6358984 (= e!3861461 (and tp!1770940 tp!1770939))))

(declare-fun b!6358981 () Bool)

(assert (=> b!6358981 (= e!3861461 tp_is_empty!41783)))

(assert (= (and b!6357530 ((_ is ElementMatch!16265) (regTwo!33043 (reg!16594 r!7292)))) b!6358981))

(assert (= (and b!6357530 ((_ is Concat!25110) (regTwo!33043 (reg!16594 r!7292)))) b!6358982))

(assert (= (and b!6357530 ((_ is Star!16265) (regTwo!33043 (reg!16594 r!7292)))) b!6358983))

(assert (= (and b!6357530 ((_ is Union!16265) (regTwo!33043 (reg!16594 r!7292)))) b!6358984))

(declare-fun b!6358986 () Bool)

(declare-fun e!3861462 () Bool)

(declare-fun tp!1770947 () Bool)

(declare-fun tp!1770948 () Bool)

(assert (=> b!6358986 (= e!3861462 (and tp!1770947 tp!1770948))))

(assert (=> b!6357493 (= tp!1770778 e!3861462)))

(declare-fun b!6358987 () Bool)

(declare-fun tp!1770946 () Bool)

(assert (=> b!6358987 (= e!3861462 tp!1770946)))

(declare-fun b!6358988 () Bool)

(declare-fun tp!1770945 () Bool)

(declare-fun tp!1770944 () Bool)

(assert (=> b!6358988 (= e!3861462 (and tp!1770945 tp!1770944))))

(declare-fun b!6358985 () Bool)

(assert (=> b!6358985 (= e!3861462 tp_is_empty!41783)))

(assert (= (and b!6357493 ((_ is ElementMatch!16265) (regOne!33042 (regOne!33042 r!7292)))) b!6358985))

(assert (= (and b!6357493 ((_ is Concat!25110) (regOne!33042 (regOne!33042 r!7292)))) b!6358986))

(assert (= (and b!6357493 ((_ is Star!16265) (regOne!33042 (regOne!33042 r!7292)))) b!6358987))

(assert (= (and b!6357493 ((_ is Union!16265) (regOne!33042 (regOne!33042 r!7292)))) b!6358988))

(declare-fun b!6358990 () Bool)

(declare-fun e!3861463 () Bool)

(declare-fun tp!1770952 () Bool)

(declare-fun tp!1770953 () Bool)

(assert (=> b!6358990 (= e!3861463 (and tp!1770952 tp!1770953))))

(assert (=> b!6357493 (= tp!1770779 e!3861463)))

(declare-fun b!6358991 () Bool)

(declare-fun tp!1770951 () Bool)

(assert (=> b!6358991 (= e!3861463 tp!1770951)))

(declare-fun b!6358992 () Bool)

(declare-fun tp!1770950 () Bool)

(declare-fun tp!1770949 () Bool)

(assert (=> b!6358992 (= e!3861463 (and tp!1770950 tp!1770949))))

(declare-fun b!6358989 () Bool)

(assert (=> b!6358989 (= e!3861463 tp_is_empty!41783)))

(assert (= (and b!6357493 ((_ is ElementMatch!16265) (regTwo!33042 (regOne!33042 r!7292)))) b!6358989))

(assert (= (and b!6357493 ((_ is Concat!25110) (regTwo!33042 (regOne!33042 r!7292)))) b!6358990))

(assert (= (and b!6357493 ((_ is Star!16265) (regTwo!33042 (regOne!33042 r!7292)))) b!6358991))

(assert (= (and b!6357493 ((_ is Union!16265) (regTwo!33042 (regOne!33042 r!7292)))) b!6358992))

(declare-fun b!6358994 () Bool)

(declare-fun e!3861464 () Bool)

(declare-fun tp!1770957 () Bool)

(declare-fun tp!1770958 () Bool)

(assert (=> b!6358994 (= e!3861464 (and tp!1770957 tp!1770958))))

(assert (=> b!6357507 (= tp!1770796 e!3861464)))

(declare-fun b!6358995 () Bool)

(declare-fun tp!1770956 () Bool)

(assert (=> b!6358995 (= e!3861464 tp!1770956)))

(declare-fun b!6358996 () Bool)

(declare-fun tp!1770955 () Bool)

(declare-fun tp!1770954 () Bool)

(assert (=> b!6358996 (= e!3861464 (and tp!1770955 tp!1770954))))

(declare-fun b!6358993 () Bool)

(assert (=> b!6358993 (= e!3861464 tp_is_empty!41783)))

(assert (= (and b!6357507 ((_ is ElementMatch!16265) (regOne!33042 (regOne!33043 r!7292)))) b!6358993))

(assert (= (and b!6357507 ((_ is Concat!25110) (regOne!33042 (regOne!33043 r!7292)))) b!6358994))

(assert (= (and b!6357507 ((_ is Star!16265) (regOne!33042 (regOne!33043 r!7292)))) b!6358995))

(assert (= (and b!6357507 ((_ is Union!16265) (regOne!33042 (regOne!33043 r!7292)))) b!6358996))

(declare-fun b!6358998 () Bool)

(declare-fun e!3861465 () Bool)

(declare-fun tp!1770962 () Bool)

(declare-fun tp!1770963 () Bool)

(assert (=> b!6358998 (= e!3861465 (and tp!1770962 tp!1770963))))

(assert (=> b!6357507 (= tp!1770797 e!3861465)))

(declare-fun b!6358999 () Bool)

(declare-fun tp!1770961 () Bool)

(assert (=> b!6358999 (= e!3861465 tp!1770961)))

(declare-fun b!6359000 () Bool)

(declare-fun tp!1770960 () Bool)

(declare-fun tp!1770959 () Bool)

(assert (=> b!6359000 (= e!3861465 (and tp!1770960 tp!1770959))))

(declare-fun b!6358997 () Bool)

(assert (=> b!6358997 (= e!3861465 tp_is_empty!41783)))

(assert (= (and b!6357507 ((_ is ElementMatch!16265) (regTwo!33042 (regOne!33043 r!7292)))) b!6358997))

(assert (= (and b!6357507 ((_ is Concat!25110) (regTwo!33042 (regOne!33043 r!7292)))) b!6358998))

(assert (= (and b!6357507 ((_ is Star!16265) (regTwo!33042 (regOne!33043 r!7292)))) b!6358999))

(assert (= (and b!6357507 ((_ is Union!16265) (regTwo!33042 (regOne!33043 r!7292)))) b!6359000))

(declare-fun b!6359002 () Bool)

(declare-fun e!3861466 () Bool)

(declare-fun tp!1770967 () Bool)

(declare-fun tp!1770968 () Bool)

(assert (=> b!6359002 (= e!3861466 (and tp!1770967 tp!1770968))))

(assert (=> b!6357529 (= tp!1770817 e!3861466)))

(declare-fun b!6359003 () Bool)

(declare-fun tp!1770966 () Bool)

(assert (=> b!6359003 (= e!3861466 tp!1770966)))

(declare-fun b!6359004 () Bool)

(declare-fun tp!1770965 () Bool)

(declare-fun tp!1770964 () Bool)

(assert (=> b!6359004 (= e!3861466 (and tp!1770965 tp!1770964))))

(declare-fun b!6359001 () Bool)

(assert (=> b!6359001 (= e!3861466 tp_is_empty!41783)))

(assert (= (and b!6357529 ((_ is ElementMatch!16265) (reg!16594 (reg!16594 r!7292)))) b!6359001))

(assert (= (and b!6357529 ((_ is Concat!25110) (reg!16594 (reg!16594 r!7292)))) b!6359002))

(assert (= (and b!6357529 ((_ is Star!16265) (reg!16594 (reg!16594 r!7292)))) b!6359003))

(assert (= (and b!6357529 ((_ is Union!16265) (reg!16594 (reg!16594 r!7292)))) b!6359004))

(declare-fun b!6359006 () Bool)

(declare-fun e!3861467 () Bool)

(declare-fun tp!1770972 () Bool)

(declare-fun tp!1770973 () Bool)

(assert (=> b!6359006 (= e!3861467 (and tp!1770972 tp!1770973))))

(assert (=> b!6357509 (= tp!1770794 e!3861467)))

(declare-fun b!6359007 () Bool)

(declare-fun tp!1770971 () Bool)

(assert (=> b!6359007 (= e!3861467 tp!1770971)))

(declare-fun b!6359008 () Bool)

(declare-fun tp!1770970 () Bool)

(declare-fun tp!1770969 () Bool)

(assert (=> b!6359008 (= e!3861467 (and tp!1770970 tp!1770969))))

(declare-fun b!6359005 () Bool)

(assert (=> b!6359005 (= e!3861467 tp_is_empty!41783)))

(assert (= (and b!6357509 ((_ is ElementMatch!16265) (regOne!33043 (regOne!33043 r!7292)))) b!6359005))

(assert (= (and b!6357509 ((_ is Concat!25110) (regOne!33043 (regOne!33043 r!7292)))) b!6359006))

(assert (= (and b!6357509 ((_ is Star!16265) (regOne!33043 (regOne!33043 r!7292)))) b!6359007))

(assert (= (and b!6357509 ((_ is Union!16265) (regOne!33043 (regOne!33043 r!7292)))) b!6359008))

(declare-fun b!6359010 () Bool)

(declare-fun e!3861468 () Bool)

(declare-fun tp!1770977 () Bool)

(declare-fun tp!1770978 () Bool)

(assert (=> b!6359010 (= e!3861468 (and tp!1770977 tp!1770978))))

(assert (=> b!6357509 (= tp!1770793 e!3861468)))

(declare-fun b!6359011 () Bool)

(declare-fun tp!1770976 () Bool)

(assert (=> b!6359011 (= e!3861468 tp!1770976)))

(declare-fun b!6359012 () Bool)

(declare-fun tp!1770975 () Bool)

(declare-fun tp!1770974 () Bool)

(assert (=> b!6359012 (= e!3861468 (and tp!1770975 tp!1770974))))

(declare-fun b!6359009 () Bool)

(assert (=> b!6359009 (= e!3861468 tp_is_empty!41783)))

(assert (= (and b!6357509 ((_ is ElementMatch!16265) (regTwo!33043 (regOne!33043 r!7292)))) b!6359009))

(assert (= (and b!6357509 ((_ is Concat!25110) (regTwo!33043 (regOne!33043 r!7292)))) b!6359010))

(assert (= (and b!6357509 ((_ is Star!16265) (regTwo!33043 (regOne!33043 r!7292)))) b!6359011))

(assert (= (and b!6357509 ((_ is Union!16265) (regTwo!33043 (regOne!33043 r!7292)))) b!6359012))

(declare-fun b!6359014 () Bool)

(declare-fun e!3861469 () Bool)

(declare-fun tp!1770982 () Bool)

(declare-fun tp!1770983 () Bool)

(assert (=> b!6359014 (= e!3861469 (and tp!1770982 tp!1770983))))

(assert (=> b!6357494 (= tp!1770777 e!3861469)))

(declare-fun b!6359015 () Bool)

(declare-fun tp!1770981 () Bool)

(assert (=> b!6359015 (= e!3861469 tp!1770981)))

(declare-fun b!6359016 () Bool)

(declare-fun tp!1770980 () Bool)

(declare-fun tp!1770979 () Bool)

(assert (=> b!6359016 (= e!3861469 (and tp!1770980 tp!1770979))))

(declare-fun b!6359013 () Bool)

(assert (=> b!6359013 (= e!3861469 tp_is_empty!41783)))

(assert (= (and b!6357494 ((_ is ElementMatch!16265) (reg!16594 (regOne!33042 r!7292)))) b!6359013))

(assert (= (and b!6357494 ((_ is Concat!25110) (reg!16594 (regOne!33042 r!7292)))) b!6359014))

(assert (= (and b!6357494 ((_ is Star!16265) (reg!16594 (regOne!33042 r!7292)))) b!6359015))

(assert (= (and b!6357494 ((_ is Union!16265) (reg!16594 (regOne!33042 r!7292)))) b!6359016))

(declare-fun b!6359018 () Bool)

(declare-fun e!3861470 () Bool)

(declare-fun tp!1770987 () Bool)

(declare-fun tp!1770988 () Bool)

(assert (=> b!6359018 (= e!3861470 (and tp!1770987 tp!1770988))))

(assert (=> b!6357508 (= tp!1770795 e!3861470)))

(declare-fun b!6359019 () Bool)

(declare-fun tp!1770986 () Bool)

(assert (=> b!6359019 (= e!3861470 tp!1770986)))

(declare-fun b!6359020 () Bool)

(declare-fun tp!1770985 () Bool)

(declare-fun tp!1770984 () Bool)

(assert (=> b!6359020 (= e!3861470 (and tp!1770985 tp!1770984))))

(declare-fun b!6359017 () Bool)

(assert (=> b!6359017 (= e!3861470 tp_is_empty!41783)))

(assert (= (and b!6357508 ((_ is ElementMatch!16265) (reg!16594 (regOne!33043 r!7292)))) b!6359017))

(assert (= (and b!6357508 ((_ is Concat!25110) (reg!16594 (regOne!33043 r!7292)))) b!6359018))

(assert (= (and b!6357508 ((_ is Star!16265) (reg!16594 (regOne!33043 r!7292)))) b!6359019))

(assert (= (and b!6357508 ((_ is Union!16265) (reg!16594 (regOne!33043 r!7292)))) b!6359020))

(declare-fun b!6359022 () Bool)

(declare-fun e!3861471 () Bool)

(declare-fun tp!1770992 () Bool)

(declare-fun tp!1770993 () Bool)

(assert (=> b!6359022 (= e!3861471 (and tp!1770992 tp!1770993))))

(assert (=> b!6357505 (= tp!1770791 e!3861471)))

(declare-fun b!6359023 () Bool)

(declare-fun tp!1770991 () Bool)

(assert (=> b!6359023 (= e!3861471 tp!1770991)))

(declare-fun b!6359024 () Bool)

(declare-fun tp!1770990 () Bool)

(declare-fun tp!1770989 () Bool)

(assert (=> b!6359024 (= e!3861471 (and tp!1770990 tp!1770989))))

(declare-fun b!6359021 () Bool)

(assert (=> b!6359021 (= e!3861471 tp_is_empty!41783)))

(assert (= (and b!6357505 ((_ is ElementMatch!16265) (h!71418 (exprs!6149 (h!71419 zl!343))))) b!6359021))

(assert (= (and b!6357505 ((_ is Concat!25110) (h!71418 (exprs!6149 (h!71419 zl!343))))) b!6359022))

(assert (= (and b!6357505 ((_ is Star!16265) (h!71418 (exprs!6149 (h!71419 zl!343))))) b!6359023))

(assert (= (and b!6357505 ((_ is Union!16265) (h!71418 (exprs!6149 (h!71419 zl!343))))) b!6359024))

(declare-fun b!6359025 () Bool)

(declare-fun e!3861472 () Bool)

(declare-fun tp!1770994 () Bool)

(declare-fun tp!1770995 () Bool)

(assert (=> b!6359025 (= e!3861472 (and tp!1770994 tp!1770995))))

(assert (=> b!6357505 (= tp!1770792 e!3861472)))

(assert (= (and b!6357505 ((_ is Cons!64970) (t!378684 (exprs!6149 (h!71419 zl!343))))) b!6359025))

(declare-fun b!6359026 () Bool)

(declare-fun e!3861473 () Bool)

(declare-fun tp!1770996 () Bool)

(assert (=> b!6359026 (= e!3861473 (and tp_is_empty!41783 tp!1770996))))

(assert (=> b!6357535 (= tp!1770822 e!3861473)))

(assert (= (and b!6357535 ((_ is Cons!64972) (t!378686 (t!378686 s!2326)))) b!6359026))

(declare-fun b_lambda!241719 () Bool)

(assert (= b_lambda!241691 (or b!6356821 b_lambda!241719)))

(declare-fun bs!1593277 () Bool)

(declare-fun d!1994950 () Bool)

(assert (= bs!1593277 (and d!1994950 b!6356821)))

(assert (=> bs!1593277 (= (dynLambda!25766 lambda!350052 (h!71419 zl!343)) (>= lt!2366283 (contextDepth!260 (h!71419 zl!343))))))

(assert (=> bs!1593277 m!7163000))

(assert (=> b!6357997 d!1994950))

(declare-fun b_lambda!241721 () Bool)

(assert (= b_lambda!241713 (or d!1994168 b_lambda!241721)))

(declare-fun bs!1593278 () Bool)

(declare-fun d!1994952 () Bool)

(assert (= bs!1593278 (and d!1994952 d!1994168)))

(assert (=> bs!1593278 (= (dynLambda!25764 lambda!350067 (h!71418 lt!2366161)) (validRegex!8001 (h!71418 lt!2366161)))))

(declare-fun m!7164996 () Bool)

(assert (=> bs!1593278 m!7164996))

(assert (=> b!6358622 d!1994952))

(declare-fun b_lambda!241723 () Bool)

(assert (= b_lambda!241701 (or d!1994060 b_lambda!241723)))

(declare-fun bs!1593279 () Bool)

(declare-fun d!1994954 () Bool)

(assert (= bs!1593279 (and d!1994954 d!1994060)))

(assert (=> bs!1593279 (= (dynLambda!25764 lambda!350020 (h!71418 (unfocusZipperList!1686 zl!343))) (validRegex!8001 (h!71418 (unfocusZipperList!1686 zl!343))))))

(declare-fun m!7164998 () Bool)

(assert (=> bs!1593279 m!7164998))

(assert (=> b!6358179 d!1994954))

(declare-fun b_lambda!241725 () Bool)

(assert (= b_lambda!241709 (or b!6356814 b_lambda!241725)))

(declare-fun bs!1593280 () Bool)

(declare-fun d!1994956 () Bool)

(assert (= bs!1593280 (and d!1994956 b!6356814)))

(assert (=> bs!1593280 (= (dynLambda!25766 lambda!350046 (h!71419 (t!378685 lt!2366165))) (>= lt!2366276 (contextDepth!260 (h!71419 (t!378685 lt!2366165)))))))

(assert (=> bs!1593280 m!7164402))

(assert (=> b!6358333 d!1994956))

(declare-fun b_lambda!241727 () Bool)

(assert (= b_lambda!241715 (or d!1994068 b_lambda!241727)))

(declare-fun bs!1593281 () Bool)

(declare-fun d!1994958 () Bool)

(assert (= bs!1593281 (and d!1994958 d!1994068)))

(assert (=> bs!1593281 (= (dynLambda!25764 lambda!350024 (h!71418 lt!2366238)) (validRegex!8001 (h!71418 lt!2366238)))))

(declare-fun m!7165000 () Bool)

(assert (=> bs!1593281 m!7165000))

(assert (=> b!6358715 d!1994958))

(declare-fun b_lambda!241729 () Bool)

(assert (= b_lambda!241703 (or b!6356819 b_lambda!241729)))

(declare-fun bs!1593282 () Bool)

(declare-fun d!1994960 () Bool)

(assert (= bs!1593282 (and d!1994960 b!6356819)))

(assert (=> bs!1593282 (= (dynLambda!25766 lambda!350051 (h!71419 (t!378685 zl!343))) (>= lt!2366281 (contextDepth!260 (h!71419 (t!378685 zl!343)))))))

(assert (=> bs!1593282 m!7164310))

(assert (=> b!6358192 d!1994960))

(declare-fun b_lambda!241731 () Bool)

(assert (= b_lambda!241687 (or d!1994280 b_lambda!241731)))

(declare-fun bs!1593283 () Bool)

(declare-fun d!1994962 () Bool)

(assert (= bs!1593283 (and d!1994962 d!1994280)))

(assert (=> bs!1593283 (= (dynLambda!25764 lambda!350108 (h!71418 (exprs!6149 setElem!43294))) (validRegex!8001 (h!71418 (exprs!6149 setElem!43294))))))

(declare-fun m!7165002 () Bool)

(assert (=> bs!1593283 m!7165002))

(assert (=> b!6357930 d!1994962))

(declare-fun b_lambda!241733 () Bool)

(assert (= b_lambda!241695 (or d!1994202 b_lambda!241733)))

(declare-fun bs!1593284 () Bool)

(declare-fun d!1994964 () Bool)

(assert (= bs!1593284 (and d!1994964 d!1994202)))

(assert (=> bs!1593284 (= (dynLambda!25764 lambda!350079 (h!71418 lt!2366196)) (validRegex!8001 (h!71418 lt!2366196)))))

(declare-fun m!7165004 () Bool)

(assert (=> bs!1593284 m!7165004))

(assert (=> b!6358124 d!1994964))

(declare-fun b_lambda!241735 () Bool)

(assert (= b_lambda!241685 (or d!1994278 b_lambda!241735)))

(declare-fun bs!1593285 () Bool)

(declare-fun d!1994966 () Bool)

(assert (= bs!1593285 (and d!1994966 d!1994278)))

(assert (=> bs!1593285 (= (dynLambda!25764 lambda!350107 (h!71418 (exprs!6149 (h!71419 zl!343)))) (validRegex!8001 (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(declare-fun m!7165006 () Bool)

(assert (=> bs!1593285 m!7165006))

(assert (=> b!6357710 d!1994966))

(declare-fun b_lambda!241737 () Bool)

(assert (= b_lambda!241697 (or d!1994240 b_lambda!241737)))

(declare-fun bs!1593286 () Bool)

(declare-fun d!1994968 () Bool)

(assert (= bs!1593286 (and d!1994968 d!1994240)))

(assert (=> bs!1593286 (= (dynLambda!25764 lambda!350100 (h!71418 (t!378684 (exprs!6149 (h!71419 zl!343))))) (validRegex!8001 (h!71418 (t!378684 (exprs!6149 (h!71419 zl!343))))))))

(declare-fun m!7165008 () Bool)

(assert (=> bs!1593286 m!7165008))

(assert (=> b!6358148 d!1994968))

(declare-fun b_lambda!241739 () Bool)

(assert (= b_lambda!241699 (or b!6356406 b_lambda!241739)))

(assert (=> d!1994608 d!1994318))

(declare-fun b_lambda!241741 () Bool)

(assert (= b_lambda!241693 (or b!6356816 b_lambda!241741)))

(declare-fun bs!1593287 () Bool)

(declare-fun d!1994970 () Bool)

(assert (= bs!1593287 (and d!1994970 b!6356816)))

(assert (=> bs!1593287 (= (dynLambda!25766 lambda!350048 (h!71419 lt!2366165)) (>= lt!2366278 (contextDepth!260 (h!71419 lt!2366165))))))

(assert (=> bs!1593287 m!7162988))

(assert (=> b!6358073 d!1994970))

(declare-fun b_lambda!241743 () Bool)

(assert (= b_lambda!241689 (or b!6356406 b_lambda!241743)))

(assert (=> d!1994514 d!1994320))

(declare-fun b_lambda!241745 () Bool)

(assert (= b_lambda!241707 (or d!1994268 b_lambda!241745)))

(declare-fun bs!1593288 () Bool)

(declare-fun d!1994972 () Bool)

(assert (= bs!1593288 (and d!1994972 d!1994268)))

(assert (=> bs!1593288 (= (dynLambda!25764 lambda!350106 (h!71418 (exprs!6149 (h!71419 zl!343)))) (validRegex!8001 (h!71418 (exprs!6149 (h!71419 zl!343)))))))

(assert (=> bs!1593288 m!7165006))

(assert (=> b!6358305 d!1994972))

(check-sat (not b!6358992) (not b!6357867) (not b!6358150) (not bm!542372) (not b!6358466) (not d!1994328) (not d!1994934) (not b!6357878) (not bm!542187) (not bm!542341) (not b!6358504) (not d!1994542) (not b!6358659) (not b!6358126) (not b!6359020) (not b!6358836) (not bs!1593279) (not b!6359010) (not bm!542424) (not bs!1593277) (not b!6357875) (not b!6358086) (not b!6357634) (not b!6358979) (not b!6357876) (not b!6358110) (not b!6358108) (not bm!542318) (not b!6357626) (not b!6359011) (not d!1994790) (not bm!542396) (not b!6358059) (not bm!542183) (not bm!542200) (not b!6358922) (not b!6359026) (not d!1994826) (not b!6358104) (not b_lambda!241683) (not bs!1593287) (not b!6358422) (not b!6358996) (not b!6358046) (not bm!542171) (not b!6358012) (not b!6358156) (not b!6357836) (not b!6359025) (not d!1994570) (not b!6359012) (not b!6358149) (not b!6358695) (not d!1994670) (not b!6358942) (not d!1994512) (not d!1994924) (not b!6358094) (not b!6357732) (not b!6358869) (not b!6358967) (not b!6357647) (not b!6358464) (not b!6357676) (not b!6359007) (not bs!1593286) (not b_lambda!241741) (not b!6358507) (not b!6358952) (not b!6357873) (not bm!542193) (not bm!542385) (not bm!542248) (not d!1994370) (not bm!542279) (not b!6358010) (not b!6357833) (not b!6358019) (not b!6357999) (not d!1994588) (not b!6358885) (not bm!542356) (not b!6357650) (not setNonEmpty!43308) (not b!6357945) (not b!6358998) (not b!6358018) (not b!6357967) (not bs!1593288) (not b!6358620) (not b!6357582) (not b!6358565) (not d!1994620) (not b!6357620) (not bm!542319) (not d!1994446) (not b!6358022) (not b!6358667) (not b!6358929) (not b!6358944) (not b!6358047) (not b!6358882) (not b!6357928) (not bm!542271) (not d!1994574) (not bm!542330) (not d!1994566) (not b!6358847) (not bm!542366) (not b!6358941) (not d!1994380) (not b!6358498) (not d!1994516) (not d!1994374) (not b!6358252) (not b_lambda!241727) (not bm!542269) (not bm!542178) (not b!6357695) (not b!6357611) (not b!6357782) (not bm!542160) (not b!6357778) (not b!6357607) (not d!1994938) (not b!6357587) (not d!1994584) (not bm!542254) (not bm!542282) (not b!6357595) (not b!6357785) (not b!6357747) (not b!6358934) (not d!1994390) (not b!6358007) (not d!1994410) (not b!6357869) (not bm!542198) (not b!6358676) (not d!1994866) tp_is_empty!41783 (not b!6357870) (not b!6357907) (not bm!542261) (not b!6358535) (not d!1994868) (not b!6357724) (not b!6358501) (not b!6357711) (not b!6357603) (not b!6358999) (not b!6358157) (not bm!542245) (not bm!542192) (not bm!542277) (not b!6358096) (not b!6358678) (not bm!542189) (not b!6357815) (not b!6358358) (not b!6358013) (not d!1994556) (not b!6358910) (not b!6358668) (not b!6358933) (not d!1994692) (not b!6358924) (not bm!542163) (not d!1994872) (not b!6359018) (not bm!542212) (not b!6357956) (not b!6359004) (not b!6358168) (not bm!542264) (not b!6358991) (not bm!542175) (not b!6357730) (not b!6357900) (not b!6358456) (not b!6358037) (not b_lambda!241733) (not b!6358974) (not b!6358335) (not b_lambda!241731) (not b!6358114) (not b!6358355) (not b!6358122) (not d!1994458) (not b!6358871) (not b!6358948) (not setNonEmpty!43303) (not d!1994558) (not b!6358914) (not b!6358913) (not b!6358060) (not b!6357949) (not d!1994864) (not d!1994818) (not d!1994870) (not bm!542242) (not b!6358057) (not bm!542219) (not b!6358151) (not bm!542285) (not b!6358875) (not b!6358962) (not b!6358097) (not b!6357674) (not b!6359016) (not d!1994546) (not b!6358988) (not b_lambda!241743) (not bs!1593285) (not bm!542375) (not d!1994606) (not b!6358692) (not d!1994488) (not b!6357648) (not b!6357631) (not bm!542176) (not bs!1593281) (not b!6358716) (not d!1994572) (not b!6357904) (not b_lambda!241735) (not bm!542275) (not b!6357613) (not b!6358961) (not bm!542260) (not b!6357919) (not b!6357667) (not b!6358552) (not b!6358544) (not bm!542177) (not b!6359014) (not b!6358984) (not bm!542186) (not b!6358960) (not b!6358990) (not b_lambda!241729) (not b!6358609) (not b!6357829) (not bm!542394) (not bm!542251) (not b!6358980) (not d!1994338) (not bm!542340) (not b!6358003) (not b!6358071) (not b!6358645) (not b!6358364) (not b!6357551) (not b!6358306) (not d!1994400) (not d!1994536) (not b!6358889) (not bm!542302) (not bm!542317) (not b!6358334) (not b!6358177) (not bm!542174) (not d!1994548) (not b!6358307) (not bm!542161) (not b!6359022) (not b!6357825) (not b!6358154) (not b!6358169) (not b!6357560) (not b!6358932) (not d!1994612) (not b!6358682) (not b!6357913) (not b!6357633) (not b!6357774) (not bm!542262) (not b!6358672) (not bm!542237) (not bm!542239) (not b!6358132) (not bm!542349) (not d!1994936) (not b!6358180) (not b!6358460) (not b!6358284) (not b_lambda!241721) (not bm!542249) (not b!6358982) (not b!6357597) (not b!6357641) (not b!6358009) (not bm!542333) (not b!6359002) (not b!6358043) (not b!6357592) (not bm!542306) (not b!6358976) (not d!1994930) (not d!1994876) (not bm!542347) (not b!6358936) (not b!6358233) (not d!1994330) (not b!6358026) (not b!6357874) (not b!6358911) (not b_lambda!241723) (not b!6358250) (not d!1994378) (not b!6359008) (not d!1994608) (not b!6357616) (not b!6357784) (not bm!542221) (not b!6358681) (not bm!542374) (not b!6358360) (not bm!542324) (not b!6358921) (not bm!542195) (not b!6357884) (not d!1994468) (not b!6358925) (not d!1994504) (not b!6358159) (not d!1994762) (not bm!542173) (not b!6358693) (not bm!542172) (not b!6359000) (not b!6358564) (not bm!542386) (not bm!542392) (not d!1994614) (not b!6358915) (not d!1994784) (not d!1994844) (not d!1994502) (not b!6357909) (not b!6358014) (not bm!542181) (not b!6358704) (not b!6358407) (not b!6358956) (not d!1994324) (not d!1994766) (not b!6357835) (not b!6357568) (not b!6358957) (not b!6358953) (not bm!542422) (not d!1994778) (not b!6357812) (not d!1994894) (not bm!542220) (not bs!1593283) (not bm!542202) (not b!6358074) (not b!6358663) (not b!6358879) (not b!6357586) (not d!1994780) (not b!6358945) (not b!6357704) (not b!6358987) (not b!6358737) (not b!6358846) (not d!1994782) (not bm!542323) (not b!6358884) (not d!1994356) (not d!1994680) (not bm!542209) (not b!6359006) (not b!6358966) (not bm!542278) (not b!6357614) (not b!6357811) (not b!6357823) (not d!1994326) (not bm!542258) (not d!1994622) (not bm!542276) (not b!6358972) (not b!6357973) (not b!6358397) (not bm!542367) (not d!1994514) (not d!1994414) (not b!6358664) (not b!6358895) (not b!6357658) (not d!1994830) (not b!6357628) (not bm!542381) (not d!1994404) (not b!6358235) (not d!1994632) (not b!6357891) (not d!1994686) (not b!6358978) (not bs!1593282) (not bm!542218) (not b!6358337) (not b!6357980) (not bm!542223) (not b!6358032) (not b!6357591) (not b!6358020) (not bs!1593280) (not bm!542281) (not b!6358370) (not b!6358849) (not b!6357645) (not b!6358918) (not b!6358467) (not b!6358928) (not b_lambda!241725) (not bs!1593278) (not b!6358937) (not b!6357787) (not bm!542265) (not bm!542421) (not d!1994456) (not b!6358983) (not d!1994524) (not bm!542234) (not b!6358049) (not b!6358686) (not b!6358576) (not bm!542423) (not b!6358539) (not b!6358113) (not b!6358597) (not b!6357636) (not b!6358596) (not b!6357991) (not bm!542185) (not bm!542196) (not b!6358666) (not b!6358926) (not b!6358994) (not b!6358357) (not bm!542351) (not d!1994350) (not b!6358896) (not setNonEmpty!43304) (not b!6358081) (not bm!542241) (not d!1994754) (not b!6358099) (not b!6358134) (not b!6357896) (not b!6357601) (not d!1994786) (not bm!542244) (not b!6357661) (not b!6357958) (not b!6357953) (not b!6358508) (not d!1994364) (not bm!542263) (not d!1994354) (not bm!542327) (not d!1994568) (not b!6357666) (not b!6359024) (not b_lambda!241737) (not b!6357772) (not d!1994794) (not b!6358135) (not b!6358919) (not b!6358541) (not bm!542217) (not b!6358454) (not b!6358062) (not bm!542164) (not bm!542190) (not b!6357814) (not b!6358909) (not d!1994562) (not d!1994862) (not b!6358347) (not b!6358017) (not b!6358679) (not b!6358975) (not b!6359003) (not b!6358923) (not d!1994890) (not d!1994616) (not d!1994942) (not b!6358129) (not b!6357998) (not b!6359015) (not b!6358111) (not b!6358971) (not b_lambda!241745) (not b!6357977) (not d!1994498) (not bm!542210) (not b!6358309) (not b!6358840) (not b!6358155) (not b!6358881) (not b!6357683) (not b_lambda!241681) (not d!1994466) (not b!6358954) (not b!6358100) (not bm!542371) (not b!6357931) (not b!6359023) (not b!6358968) (not b!6358970) (not b!6358623) (not b!6357600) (not b!6358893) (not bm!542416) (not d!1994334) (not b!6358907) (not bm!542284) (not d!1994808) (not b!6359019) (not bm!542326) (not d!1994352) (not bm!542255) (not b!6358950) (not d!1994576) (not b!6358469) (not b!6357719) (not b!6357660) (not d!1994532) (not b!6358660) (not b!6357630) (not b!6358516) (not b!6357594) (not b!6358053) (not bm!542358) (not d!1994714) (not d!1994564) (not b!6357939) (not b!6358146) (not b!6358965) (not d!1994412) (not b!6357675) (not b!6358940) (not b!6358946) (not d!1994398) (not bm!542428) (not d!1994366) (not d!1994604) (not b!6358398) (not d!1994470) (not b!6358276) (not b!6357906) (not bm!542257) (not b!6358542) (not bm!542273) (not b!6357982) (not b!6357637) (not bm!542169) (not d!1994382) (not b!6358958) (not b!6358503) (not bm!542235) (not b!6357740) (not bm!542331) (not b!6358193) (not b_lambda!241719) (not b!6358577) (not d!1994896) (not d!1994854) (not bm!542304) (not bm!542268) (not b_lambda!241739) (not d!1994436) (not b!6357979) (not b!6358964) (not bs!1593284) (not b!6358500) (not b!6358131) (not b!6357969) (not bm!542322) (not b!6357589) (not d!1994372) (not bm!542256) (not d!1994940) (not bm!542246) (not b!6357583) (not d!1994772) (not b!6358995) (not b!6357838) (not b!6358986) (not bm!542427) (not d!1994510) (not b!6358125) (not bm!542382) (not d!1994814) (not d!1994506) (not b!6358137) (not b!6358930) (not b!6358531) (not b!6358505) (not b!6357955) (not b!6358090) (not bm!542243) (not b!6358949) (not b!6358898) (not b!6358128) (not bm!542380) (not b!6358351) (not d!1994482) (not bm!542357) (not b!6358690) (not b!6358917) (not bm!542167) (not b!6358938) (not b!6358844))
(check-sat)
