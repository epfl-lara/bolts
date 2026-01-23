; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!643950 () Bool)

(assert start!643950)

(declare-fun b!6572377 () Bool)

(assert (=> b!6572377 true))

(assert (=> b!6572377 true))

(declare-fun lambda!366034 () Int)

(declare-fun lambda!366033 () Int)

(assert (=> b!6572377 (not (= lambda!366034 lambda!366033))))

(assert (=> b!6572377 true))

(assert (=> b!6572377 true))

(declare-fun b!6572357 () Bool)

(assert (=> b!6572357 true))

(declare-fun e!3978081 () Bool)

(declare-fun e!3978090 () Bool)

(assert (=> b!6572357 (= e!3978081 e!3978090)))

(declare-fun res!2697175 () Bool)

(assert (=> b!6572357 (=> res!2697175 e!3978090)))

(declare-datatypes ((C!33168 0))(
  ( (C!33169 (val!26286 Int)) )
))
(declare-datatypes ((Regex!16449 0))(
  ( (ElementMatch!16449 (c!1208308 C!33168)) (Concat!25294 (regOne!33410 Regex!16449) (regTwo!33410 Regex!16449)) (EmptyExpr!16449) (Star!16449 (reg!16778 Regex!16449)) (EmptyLang!16449) (Union!16449 (regOne!33411 Regex!16449) (regTwo!33411 Regex!16449)) )
))
(declare-fun r!7292 () Regex!16449)

(declare-datatypes ((List!65646 0))(
  ( (Nil!65522) (Cons!65522 (h!71970 C!33168) (t!379292 List!65646)) )
))
(declare-fun s!2326 () List!65646)

(get-info :version)

(assert (=> b!6572357 (= res!2697175 (or (and ((_ is ElementMatch!16449) (regOne!33410 r!7292)) (= (c!1208308 (regOne!33410 r!7292)) (h!71970 s!2326))) ((_ is Union!16449) (regOne!33410 r!7292))))))

(declare-datatypes ((Unit!159131 0))(
  ( (Unit!159132) )
))
(declare-fun lt!2408978 () Unit!159131)

(declare-fun e!3978091 () Unit!159131)

(assert (=> b!6572357 (= lt!2408978 e!3978091)))

(declare-fun c!1208307 () Bool)

(declare-fun lt!2408996 () Bool)

(assert (=> b!6572357 (= c!1208307 lt!2408996)))

(declare-datatypes ((List!65647 0))(
  ( (Nil!65523) (Cons!65523 (h!71971 Regex!16449) (t!379293 List!65647)) )
))
(declare-datatypes ((Context!11666 0))(
  ( (Context!11667 (exprs!6333 List!65647)) )
))
(declare-datatypes ((List!65648 0))(
  ( (Nil!65524) (Cons!65524 (h!71972 Context!11666) (t!379294 List!65648)) )
))
(declare-fun zl!343 () List!65648)

(declare-fun nullable!6442 (Regex!16449) Bool)

(assert (=> b!6572357 (= lt!2408996 (nullable!6442 (h!71971 (exprs!6333 (h!71972 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11666))

(declare-fun lambda!366035 () Int)

(declare-fun flatMap!1954 ((InoxSet Context!11666) Int) (InoxSet Context!11666))

(declare-fun derivationStepZipperUp!1623 (Context!11666 C!33168) (InoxSet Context!11666))

(assert (=> b!6572357 (= (flatMap!1954 z!1189 lambda!366035) (derivationStepZipperUp!1623 (h!71972 zl!343) (h!71970 s!2326)))))

(declare-fun lt!2408968 () Unit!159131)

(declare-fun lemmaFlatMapOnSingletonSet!1480 ((InoxSet Context!11666) Context!11666 Int) Unit!159131)

(assert (=> b!6572357 (= lt!2408968 (lemmaFlatMapOnSingletonSet!1480 z!1189 (h!71972 zl!343) lambda!366035))))

(declare-fun lt!2408976 () (InoxSet Context!11666))

(declare-fun lt!2408965 () Context!11666)

(assert (=> b!6572357 (= lt!2408976 (derivationStepZipperUp!1623 lt!2408965 (h!71970 s!2326)))))

(declare-fun lt!2408974 () (InoxSet Context!11666))

(declare-fun derivationStepZipperDown!1697 (Regex!16449 Context!11666 C!33168) (InoxSet Context!11666))

(assert (=> b!6572357 (= lt!2408974 (derivationStepZipperDown!1697 (h!71971 (exprs!6333 (h!71972 zl!343))) lt!2408965 (h!71970 s!2326)))))

(assert (=> b!6572357 (= lt!2408965 (Context!11667 (t!379293 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun lt!2408966 () (InoxSet Context!11666))

(assert (=> b!6572357 (= lt!2408966 (derivationStepZipperUp!1623 (Context!11667 (Cons!65523 (h!71971 (exprs!6333 (h!71972 zl!343))) (t!379293 (exprs!6333 (h!71972 zl!343))))) (h!71970 s!2326)))))

(declare-fun tp!1814195 () Bool)

(declare-fun setNonEmpty!44884 () Bool)

(declare-fun setRes!44884 () Bool)

(declare-fun e!3978089 () Bool)

(declare-fun setElem!44884 () Context!11666)

(declare-fun inv!84369 (Context!11666) Bool)

(assert (=> setNonEmpty!44884 (= setRes!44884 (and tp!1814195 (inv!84369 setElem!44884) e!3978089))))

(declare-fun setRest!44884 () (InoxSet Context!11666))

(assert (=> setNonEmpty!44884 (= z!1189 ((_ map or) (store ((as const (Array Context!11666 Bool)) false) setElem!44884 true) setRest!44884))))

(declare-fun b!6572359 () Bool)

(declare-fun res!2697191 () Bool)

(assert (=> b!6572359 (=> res!2697191 e!3978090)))

(declare-fun e!3978092 () Bool)

(assert (=> b!6572359 (= res!2697191 e!3978092)))

(declare-fun res!2697172 () Bool)

(assert (=> b!6572359 (=> (not res!2697172) (not e!3978092))))

(assert (=> b!6572359 (= res!2697172 ((_ is Concat!25294) (regOne!33410 r!7292)))))

(declare-fun b!6572360 () Bool)

(assert (=> b!6572360 (= e!3978092 (nullable!6442 (regOne!33410 (regOne!33410 r!7292))))))

(declare-fun b!6572361 () Bool)

(declare-fun res!2697162 () Bool)

(assert (=> b!6572361 (=> res!2697162 e!3978090)))

(assert (=> b!6572361 (= res!2697162 (or ((_ is Concat!25294) (regOne!33410 r!7292)) (not ((_ is Star!16449) (regOne!33410 r!7292)))))))

(declare-fun b!6572362 () Bool)

(declare-fun res!2697177 () Bool)

(declare-fun e!3978073 () Bool)

(assert (=> b!6572362 (=> res!2697177 e!3978073)))

(assert (=> b!6572362 (= res!2697177 (not ((_ is Cons!65523) (exprs!6333 (h!71972 zl!343)))))))

(declare-fun b!6572363 () Bool)

(declare-fun e!3978078 () Bool)

(assert (=> b!6572363 (= e!3978090 e!3978078)))

(declare-fun res!2697166 () Bool)

(assert (=> b!6572363 (=> res!2697166 e!3978078)))

(declare-fun lt!2408963 () (InoxSet Context!11666))

(assert (=> b!6572363 (= res!2697166 (not (= lt!2408974 lt!2408963)))))

(declare-fun lt!2408971 () Context!11666)

(assert (=> b!6572363 (= lt!2408963 (derivationStepZipperDown!1697 (reg!16778 (regOne!33410 r!7292)) lt!2408971 (h!71970 s!2326)))))

(declare-fun lt!2408990 () List!65647)

(assert (=> b!6572363 (= lt!2408971 (Context!11667 lt!2408990))))

(declare-fun lt!2408993 () Regex!16449)

(assert (=> b!6572363 (= lt!2408990 (Cons!65523 lt!2408993 (t!379293 (exprs!6333 (h!71972 zl!343)))))))

(assert (=> b!6572363 (= lt!2408993 (Star!16449 (reg!16778 (regOne!33410 r!7292))))))

(declare-fun setIsEmpty!44884 () Bool)

(assert (=> setIsEmpty!44884 setRes!44884))

(declare-fun b!6572364 () Bool)

(declare-fun e!3978079 () Bool)

(assert (=> b!6572364 (= e!3978079 (inv!84369 lt!2408965))))

(declare-fun e!3978094 () Bool)

(declare-fun b!6572365 () Bool)

(declare-fun tp!1814200 () Bool)

(declare-fun e!3978088 () Bool)

(assert (=> b!6572365 (= e!3978088 (and (inv!84369 (h!71972 zl!343)) e!3978094 tp!1814200))))

(declare-fun b!6572366 () Bool)

(declare-fun res!2697170 () Bool)

(declare-fun e!3978086 () Bool)

(assert (=> b!6572366 (=> (not res!2697170) (not e!3978086))))

(declare-fun toList!10233 ((InoxSet Context!11666)) List!65648)

(assert (=> b!6572366 (= res!2697170 (= (toList!10233 z!1189) zl!343))))

(declare-fun b!6572367 () Bool)

(declare-fun res!2697193 () Bool)

(declare-fun e!3978082 () Bool)

(assert (=> b!6572367 (=> res!2697193 e!3978082)))

(declare-fun lt!2408979 () Regex!16449)

(declare-fun unfocusZipper!2191 (List!65648) Regex!16449)

(assert (=> b!6572367 (= res!2697193 (not (= (unfocusZipper!2191 (Cons!65524 lt!2408971 Nil!65524)) lt!2408979)))))

(declare-fun b!6572368 () Bool)

(declare-fun e!3978085 () Bool)

(declare-fun tp_is_empty!42151 () Bool)

(assert (=> b!6572368 (= e!3978085 tp_is_empty!42151)))

(declare-fun b!6572369 () Bool)

(declare-fun e!3978074 () Bool)

(assert (=> b!6572369 (= e!3978074 e!3978082)))

(declare-fun res!2697188 () Bool)

(assert (=> b!6572369 (=> res!2697188 e!3978082)))

(declare-fun lt!2408975 () Context!11666)

(assert (=> b!6572369 (= res!2697188 (not (= (unfocusZipper!2191 (Cons!65524 lt!2408975 Nil!65524)) (reg!16778 (regOne!33410 r!7292)))))))

(declare-fun lt!2408964 () (InoxSet Context!11666))

(assert (=> b!6572369 (= (flatMap!1954 lt!2408964 lambda!366035) (derivationStepZipperUp!1623 lt!2408971 (h!71970 s!2326)))))

(declare-fun lt!2408961 () Unit!159131)

(assert (=> b!6572369 (= lt!2408961 (lemmaFlatMapOnSingletonSet!1480 lt!2408964 lt!2408971 lambda!366035))))

(declare-fun lt!2408977 () (InoxSet Context!11666))

(assert (=> b!6572369 (= (flatMap!1954 lt!2408977 lambda!366035) (derivationStepZipperUp!1623 lt!2408975 (h!71970 s!2326)))))

(declare-fun lt!2408980 () Unit!159131)

(assert (=> b!6572369 (= lt!2408980 (lemmaFlatMapOnSingletonSet!1480 lt!2408977 lt!2408975 lambda!366035))))

(declare-fun lt!2408985 () (InoxSet Context!11666))

(assert (=> b!6572369 (= lt!2408985 (derivationStepZipperUp!1623 lt!2408971 (h!71970 s!2326)))))

(declare-fun lt!2408991 () (InoxSet Context!11666))

(assert (=> b!6572369 (= lt!2408991 (derivationStepZipperUp!1623 lt!2408975 (h!71970 s!2326)))))

(assert (=> b!6572369 (= lt!2408964 (store ((as const (Array Context!11666 Bool)) false) lt!2408971 true))))

(assert (=> b!6572369 (= lt!2408977 (store ((as const (Array Context!11666 Bool)) false) lt!2408975 true))))

(assert (=> b!6572369 (= lt!2408975 (Context!11667 (Cons!65523 (reg!16778 (regOne!33410 r!7292)) Nil!65523)))))

(declare-fun b!6572370 () Bool)

(declare-fun e!3978093 () Bool)

(assert (=> b!6572370 (= e!3978082 e!3978093)))

(declare-fun res!2697189 () Bool)

(assert (=> b!6572370 (=> res!2697189 e!3978093)))

(declare-fun lt!2408989 () Bool)

(assert (=> b!6572370 (= res!2697189 lt!2408989)))

(declare-fun lt!2408988 () Regex!16449)

(declare-fun matchR!8632 (Regex!16449 List!65646) Bool)

(declare-fun matchRSpec!3550 (Regex!16449 List!65646) Bool)

(assert (=> b!6572370 (= (matchR!8632 lt!2408988 s!2326) (matchRSpec!3550 lt!2408988 s!2326))))

(declare-fun lt!2408994 () Unit!159131)

(declare-fun mainMatchTheorem!3550 (Regex!16449 List!65646) Unit!159131)

(assert (=> b!6572370 (= lt!2408994 (mainMatchTheorem!3550 lt!2408988 s!2326))))

(declare-fun b!6572371 () Bool)

(declare-fun res!2697185 () Bool)

(assert (=> b!6572371 (=> res!2697185 e!3978093)))

(declare-fun matchZipper!2461 ((InoxSet Context!11666) List!65646) Bool)

(assert (=> b!6572371 (= res!2697185 (not (matchZipper!2461 z!1189 s!2326)))))

(declare-fun b!6572372 () Bool)

(declare-fun e!3978087 () Bool)

(assert (=> b!6572372 (= e!3978087 (not e!3978073))))

(declare-fun res!2697183 () Bool)

(assert (=> b!6572372 (=> res!2697183 e!3978073)))

(assert (=> b!6572372 (= res!2697183 (not ((_ is Cons!65524) zl!343)))))

(assert (=> b!6572372 (= lt!2408989 (matchRSpec!3550 r!7292 s!2326))))

(assert (=> b!6572372 (= lt!2408989 (matchR!8632 r!7292 s!2326))))

(declare-fun lt!2408986 () Unit!159131)

(assert (=> b!6572372 (= lt!2408986 (mainMatchTheorem!3550 r!7292 s!2326))))

(declare-fun b!6572373 () Bool)

(declare-fun tp!1814201 () Bool)

(declare-fun tp!1814202 () Bool)

(assert (=> b!6572373 (= e!3978085 (and tp!1814201 tp!1814202))))

(declare-fun b!6572374 () Bool)

(declare-fun Unit!159133 () Unit!159131)

(assert (=> b!6572374 (= e!3978091 Unit!159133)))

(declare-fun b!6572375 () Bool)

(declare-fun res!2697167 () Bool)

(assert (=> b!6572375 (=> res!2697167 e!3978093)))

(assert (=> b!6572375 (= res!2697167 (not lt!2408996))))

(declare-fun b!6572376 () Bool)

(declare-fun Unit!159134 () Unit!159131)

(assert (=> b!6572376 (= e!3978091 Unit!159134)))

(declare-fun lt!2408972 () Unit!159131)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1280 ((InoxSet Context!11666) (InoxSet Context!11666) List!65646) Unit!159131)

(assert (=> b!6572376 (= lt!2408972 (lemmaZipperConcatMatchesSameAsBothZippers!1280 lt!2408974 lt!2408976 (t!379292 s!2326)))))

(declare-fun res!2697174 () Bool)

(assert (=> b!6572376 (= res!2697174 (matchZipper!2461 lt!2408974 (t!379292 s!2326)))))

(declare-fun e!3978076 () Bool)

(assert (=> b!6572376 (=> res!2697174 e!3978076)))

(assert (=> b!6572376 (= (matchZipper!2461 ((_ map or) lt!2408974 lt!2408976) (t!379292 s!2326)) e!3978076)))

(assert (=> b!6572377 (= e!3978073 e!3978081)))

(declare-fun res!2697161 () Bool)

(assert (=> b!6572377 (=> res!2697161 e!3978081)))

(declare-fun lt!2408969 () Bool)

(assert (=> b!6572377 (= res!2697161 (or (not (= lt!2408989 lt!2408969)) ((_ is Nil!65522) s!2326)))))

(declare-fun Exists!3519 (Int) Bool)

(assert (=> b!6572377 (= (Exists!3519 lambda!366033) (Exists!3519 lambda!366034))))

(declare-fun lt!2408970 () Unit!159131)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2056 (Regex!16449 Regex!16449 List!65646) Unit!159131)

(assert (=> b!6572377 (= lt!2408970 (lemmaExistCutMatchRandMatchRSpecEquivalent!2056 (regOne!33410 r!7292) (regTwo!33410 r!7292) s!2326))))

(assert (=> b!6572377 (= lt!2408969 (Exists!3519 lambda!366033))))

(declare-datatypes ((tuple2!66856 0))(
  ( (tuple2!66857 (_1!36731 List!65646) (_2!36731 List!65646)) )
))
(declare-datatypes ((Option!16340 0))(
  ( (None!16339) (Some!16339 (v!52524 tuple2!66856)) )
))
(declare-fun isDefined!13043 (Option!16340) Bool)

(declare-fun findConcatSeparation!2754 (Regex!16449 Regex!16449 List!65646 List!65646 List!65646) Option!16340)

(assert (=> b!6572377 (= lt!2408969 (isDefined!13043 (findConcatSeparation!2754 (regOne!33410 r!7292) (regTwo!33410 r!7292) Nil!65522 s!2326 s!2326)))))

(declare-fun lt!2408987 () Unit!159131)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2518 (Regex!16449 Regex!16449 List!65646) Unit!159131)

(assert (=> b!6572377 (= lt!2408987 (lemmaFindConcatSeparationEquivalentToExists!2518 (regOne!33410 r!7292) (regTwo!33410 r!7292) s!2326))))

(declare-fun b!6572378 () Bool)

(declare-fun e!3978075 () Bool)

(assert (=> b!6572378 (= e!3978075 e!3978074)))

(declare-fun res!2697169 () Bool)

(assert (=> b!6572378 (=> res!2697169 e!3978074)))

(declare-fun lt!2408981 () Context!11666)

(assert (=> b!6572378 (= res!2697169 (not (= (unfocusZipper!2191 (Cons!65524 lt!2408981 Nil!65524)) lt!2408988)))))

(assert (=> b!6572378 (= lt!2408988 (Concat!25294 (reg!16778 (regOne!33410 r!7292)) lt!2408979))))

(declare-fun b!6572358 () Bool)

(declare-fun tp!1814197 () Bool)

(assert (=> b!6572358 (= e!3978089 tp!1814197)))

(declare-fun res!2697163 () Bool)

(assert (=> start!643950 (=> (not res!2697163) (not e!3978086))))

(declare-fun validRegex!8185 (Regex!16449) Bool)

(assert (=> start!643950 (= res!2697163 (validRegex!8185 r!7292))))

(assert (=> start!643950 e!3978086))

(assert (=> start!643950 e!3978085))

(declare-fun condSetEmpty!44884 () Bool)

(assert (=> start!643950 (= condSetEmpty!44884 (= z!1189 ((as const (Array Context!11666 Bool)) false)))))

(assert (=> start!643950 setRes!44884))

(assert (=> start!643950 e!3978088))

(declare-fun e!3978084 () Bool)

(assert (=> start!643950 e!3978084))

(declare-fun b!6572379 () Bool)

(assert (=> b!6572379 (= e!3978076 (matchZipper!2461 lt!2408976 (t!379292 s!2326)))))

(declare-fun b!6572380 () Bool)

(declare-fun tp!1814198 () Bool)

(assert (=> b!6572380 (= e!3978084 (and tp_is_empty!42151 tp!1814198))))

(declare-fun b!6572381 () Bool)

(assert (=> b!6572381 (= e!3978086 e!3978087)))

(declare-fun res!2697187 () Bool)

(assert (=> b!6572381 (=> (not res!2697187) (not e!3978087))))

(declare-fun lt!2408983 () Regex!16449)

(assert (=> b!6572381 (= res!2697187 (= r!7292 lt!2408983))))

(assert (=> b!6572381 (= lt!2408983 (unfocusZipper!2191 zl!343))))

(declare-fun b!6572382 () Bool)

(declare-fun res!2697168 () Bool)

(assert (=> b!6572382 (=> res!2697168 e!3978079)))

(declare-fun zipperDepth!386 (List!65648) Int)

(assert (=> b!6572382 (= res!2697168 (< (zipperDepth!386 zl!343) (zipperDepth!386 (Cons!65524 lt!2408965 Nil!65524))))))

(declare-fun b!6572383 () Bool)

(declare-fun res!2697182 () Bool)

(assert (=> b!6572383 (=> res!2697182 e!3978073)))

(declare-fun generalisedConcat!2046 (List!65647) Regex!16449)

(assert (=> b!6572383 (= res!2697182 (not (= r!7292 (generalisedConcat!2046 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun b!6572384 () Bool)

(declare-fun res!2697173 () Bool)

(declare-fun e!3978083 () Bool)

(assert (=> b!6572384 (=> res!2697173 e!3978083)))

(assert (=> b!6572384 (= res!2697173 (not (matchZipper!2461 lt!2408976 (t!379292 s!2326))))))

(declare-fun b!6572385 () Bool)

(declare-fun res!2697186 () Bool)

(assert (=> b!6572385 (=> res!2697186 e!3978073)))

(assert (=> b!6572385 (= res!2697186 (or ((_ is EmptyExpr!16449) r!7292) ((_ is EmptyLang!16449) r!7292) ((_ is ElementMatch!16449) r!7292) ((_ is Union!16449) r!7292) (not ((_ is Concat!25294) r!7292))))))

(declare-fun b!6572386 () Bool)

(assert (=> b!6572386 (= e!3978093 e!3978083)))

(declare-fun res!2697178 () Bool)

(assert (=> b!6572386 (=> res!2697178 e!3978083)))

(declare-fun e!3978077 () Bool)

(assert (=> b!6572386 (= res!2697178 e!3978077)))

(declare-fun res!2697181 () Bool)

(assert (=> b!6572386 (=> (not res!2697181) (not e!3978077))))

(declare-fun lt!2408982 () Bool)

(assert (=> b!6572386 (= res!2697181 (not lt!2408982))))

(assert (=> b!6572386 (= lt!2408982 (matchZipper!2461 lt!2408974 (t!379292 s!2326)))))

(declare-fun b!6572387 () Bool)

(declare-fun res!2697192 () Bool)

(assert (=> b!6572387 (=> res!2697192 e!3978081)))

(declare-fun isEmpty!37773 (List!65647) Bool)

(assert (=> b!6572387 (= res!2697192 (isEmpty!37773 (t!379293 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun b!6572388 () Bool)

(declare-fun e!3978080 () Bool)

(assert (=> b!6572388 (= e!3978078 e!3978080)))

(declare-fun res!2697184 () Bool)

(assert (=> b!6572388 (=> res!2697184 e!3978080)))

(declare-fun lt!2408984 () (InoxSet Context!11666))

(assert (=> b!6572388 (= res!2697184 (not (= lt!2408984 lt!2408963)))))

(declare-fun lt!2408967 () (InoxSet Context!11666))

(assert (=> b!6572388 (= (flatMap!1954 lt!2408967 lambda!366035) (derivationStepZipperUp!1623 lt!2408981 (h!71970 s!2326)))))

(declare-fun lt!2408962 () Unit!159131)

(assert (=> b!6572388 (= lt!2408962 (lemmaFlatMapOnSingletonSet!1480 lt!2408967 lt!2408981 lambda!366035))))

(declare-fun lt!2408973 () (InoxSet Context!11666))

(assert (=> b!6572388 (= lt!2408973 (derivationStepZipperUp!1623 lt!2408981 (h!71970 s!2326)))))

(declare-fun derivationStepZipper!2415 ((InoxSet Context!11666) C!33168) (InoxSet Context!11666))

(assert (=> b!6572388 (= lt!2408984 (derivationStepZipper!2415 lt!2408967 (h!71970 s!2326)))))

(assert (=> b!6572388 (= lt!2408967 (store ((as const (Array Context!11666 Bool)) false) lt!2408981 true))))

(assert (=> b!6572388 (= lt!2408981 (Context!11667 (Cons!65523 (reg!16778 (regOne!33410 r!7292)) lt!2408990)))))

(declare-fun b!6572389 () Bool)

(assert (=> b!6572389 (= e!3978080 e!3978075)))

(declare-fun res!2697180 () Bool)

(assert (=> b!6572389 (=> res!2697180 e!3978075)))

(assert (=> b!6572389 (= res!2697180 (not (= r!7292 lt!2408979)))))

(assert (=> b!6572389 (= lt!2408979 (Concat!25294 lt!2408993 (regTwo!33410 r!7292)))))

(declare-fun b!6572390 () Bool)

(assert (=> b!6572390 (= e!3978083 e!3978079)))

(declare-fun res!2697194 () Bool)

(assert (=> b!6572390 (=> res!2697194 e!3978079)))

(declare-fun lt!2408995 () (InoxSet Context!11666))

(assert (=> b!6572390 (= res!2697194 (not (= lt!2408976 (derivationStepZipper!2415 lt!2408995 (h!71970 s!2326)))))))

(assert (=> b!6572390 (= (flatMap!1954 lt!2408995 lambda!366035) (derivationStepZipperUp!1623 lt!2408965 (h!71970 s!2326)))))

(declare-fun lt!2408992 () Unit!159131)

(assert (=> b!6572390 (= lt!2408992 (lemmaFlatMapOnSingletonSet!1480 lt!2408995 lt!2408965 lambda!366035))))

(assert (=> b!6572390 (= lt!2408995 (store ((as const (Array Context!11666 Bool)) false) lt!2408965 true))))

(declare-fun b!6572391 () Bool)

(assert (=> b!6572391 (= e!3978077 (not (matchZipper!2461 lt!2408976 (t!379292 s!2326))))))

(declare-fun b!6572392 () Bool)

(declare-fun tp!1814194 () Bool)

(assert (=> b!6572392 (= e!3978085 tp!1814194)))

(declare-fun b!6572393 () Bool)

(declare-fun res!2697176 () Bool)

(assert (=> b!6572393 (=> res!2697176 e!3978073)))

(declare-fun generalisedUnion!2293 (List!65647) Regex!16449)

(declare-fun unfocusZipperList!1870 (List!65648) List!65647)

(assert (=> b!6572393 (= res!2697176 (not (= r!7292 (generalisedUnion!2293 (unfocusZipperList!1870 zl!343)))))))

(declare-fun b!6572394 () Bool)

(declare-fun res!2697179 () Bool)

(assert (=> b!6572394 (=> res!2697179 e!3978083)))

(assert (=> b!6572394 (= res!2697179 lt!2408982)))

(declare-fun b!6572395 () Bool)

(declare-fun res!2697165 () Bool)

(assert (=> b!6572395 (=> res!2697165 e!3978080)))

(assert (=> b!6572395 (= res!2697165 (not (= (matchZipper!2461 lt!2408967 s!2326) (matchZipper!2461 lt!2408984 (t!379292 s!2326)))))))

(declare-fun b!6572396 () Bool)

(declare-fun res!2697171 () Bool)

(assert (=> b!6572396 (=> res!2697171 e!3978079)))

(declare-fun regexDepth!346 (Regex!16449) Int)

(assert (=> b!6572396 (= res!2697171 (< (regexDepth!346 r!7292) (regexDepth!346 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343)))))))))

(declare-fun b!6572397 () Bool)

(declare-fun tp!1814199 () Bool)

(assert (=> b!6572397 (= e!3978094 tp!1814199)))

(declare-fun b!6572398 () Bool)

(declare-fun res!2697164 () Bool)

(assert (=> b!6572398 (=> res!2697164 e!3978073)))

(declare-fun isEmpty!37774 (List!65648) Bool)

(assert (=> b!6572398 (= res!2697164 (not (isEmpty!37774 (t!379294 zl!343))))))

(declare-fun b!6572399 () Bool)

(declare-fun tp!1814196 () Bool)

(declare-fun tp!1814203 () Bool)

(assert (=> b!6572399 (= e!3978085 (and tp!1814196 tp!1814203))))

(declare-fun b!6572400 () Bool)

(declare-fun res!2697190 () Bool)

(assert (=> b!6572400 (=> res!2697190 e!3978080)))

(assert (=> b!6572400 (= res!2697190 (not (= lt!2408983 r!7292)))))

(assert (= (and start!643950 res!2697163) b!6572366))

(assert (= (and b!6572366 res!2697170) b!6572381))

(assert (= (and b!6572381 res!2697187) b!6572372))

(assert (= (and b!6572372 (not res!2697183)) b!6572398))

(assert (= (and b!6572398 (not res!2697164)) b!6572383))

(assert (= (and b!6572383 (not res!2697182)) b!6572362))

(assert (= (and b!6572362 (not res!2697177)) b!6572393))

(assert (= (and b!6572393 (not res!2697176)) b!6572385))

(assert (= (and b!6572385 (not res!2697186)) b!6572377))

(assert (= (and b!6572377 (not res!2697161)) b!6572387))

(assert (= (and b!6572387 (not res!2697192)) b!6572357))

(assert (= (and b!6572357 c!1208307) b!6572376))

(assert (= (and b!6572357 (not c!1208307)) b!6572374))

(assert (= (and b!6572376 (not res!2697174)) b!6572379))

(assert (= (and b!6572357 (not res!2697175)) b!6572359))

(assert (= (and b!6572359 res!2697172) b!6572360))

(assert (= (and b!6572359 (not res!2697191)) b!6572361))

(assert (= (and b!6572361 (not res!2697162)) b!6572363))

(assert (= (and b!6572363 (not res!2697166)) b!6572388))

(assert (= (and b!6572388 (not res!2697184)) b!6572395))

(assert (= (and b!6572395 (not res!2697165)) b!6572400))

(assert (= (and b!6572400 (not res!2697190)) b!6572389))

(assert (= (and b!6572389 (not res!2697180)) b!6572378))

(assert (= (and b!6572378 (not res!2697169)) b!6572369))

(assert (= (and b!6572369 (not res!2697188)) b!6572367))

(assert (= (and b!6572367 (not res!2697193)) b!6572370))

(assert (= (and b!6572370 (not res!2697189)) b!6572371))

(assert (= (and b!6572371 (not res!2697185)) b!6572375))

(assert (= (and b!6572375 (not res!2697167)) b!6572386))

(assert (= (and b!6572386 res!2697181) b!6572391))

(assert (= (and b!6572386 (not res!2697178)) b!6572394))

(assert (= (and b!6572394 (not res!2697179)) b!6572384))

(assert (= (and b!6572384 (not res!2697173)) b!6572390))

(assert (= (and b!6572390 (not res!2697194)) b!6572396))

(assert (= (and b!6572396 (not res!2697171)) b!6572382))

(assert (= (and b!6572382 (not res!2697168)) b!6572364))

(assert (= (and start!643950 ((_ is ElementMatch!16449) r!7292)) b!6572368))

(assert (= (and start!643950 ((_ is Concat!25294) r!7292)) b!6572373))

(assert (= (and start!643950 ((_ is Star!16449) r!7292)) b!6572392))

(assert (= (and start!643950 ((_ is Union!16449) r!7292)) b!6572399))

(assert (= (and start!643950 condSetEmpty!44884) setIsEmpty!44884))

(assert (= (and start!643950 (not condSetEmpty!44884)) setNonEmpty!44884))

(assert (= setNonEmpty!44884 b!6572358))

(assert (= b!6572365 b!6572397))

(assert (= (and start!643950 ((_ is Cons!65524) zl!343)) b!6572365))

(assert (= (and start!643950 ((_ is Cons!65522) s!2326)) b!6572380))

(declare-fun m!7353812 () Bool)

(assert (=> b!6572396 m!7353812))

(declare-fun m!7353814 () Bool)

(assert (=> b!6572396 m!7353814))

(assert (=> b!6572396 m!7353814))

(declare-fun m!7353816 () Bool)

(assert (=> b!6572396 m!7353816))

(declare-fun m!7353818 () Bool)

(assert (=> b!6572383 m!7353818))

(declare-fun m!7353820 () Bool)

(assert (=> b!6572376 m!7353820))

(declare-fun m!7353822 () Bool)

(assert (=> b!6572376 m!7353822))

(declare-fun m!7353824 () Bool)

(assert (=> b!6572376 m!7353824))

(declare-fun m!7353826 () Bool)

(assert (=> b!6572378 m!7353826))

(declare-fun m!7353828 () Bool)

(assert (=> b!6572377 m!7353828))

(declare-fun m!7353830 () Bool)

(assert (=> b!6572377 m!7353830))

(declare-fun m!7353832 () Bool)

(assert (=> b!6572377 m!7353832))

(declare-fun m!7353834 () Bool)

(assert (=> b!6572377 m!7353834))

(declare-fun m!7353836 () Bool)

(assert (=> b!6572377 m!7353836))

(assert (=> b!6572377 m!7353828))

(assert (=> b!6572377 m!7353830))

(declare-fun m!7353838 () Bool)

(assert (=> b!6572377 m!7353838))

(declare-fun m!7353840 () Bool)

(assert (=> b!6572372 m!7353840))

(declare-fun m!7353842 () Bool)

(assert (=> b!6572372 m!7353842))

(declare-fun m!7353844 () Bool)

(assert (=> b!6572372 m!7353844))

(declare-fun m!7353846 () Bool)

(assert (=> b!6572387 m!7353846))

(declare-fun m!7353848 () Bool)

(assert (=> b!6572382 m!7353848))

(declare-fun m!7353850 () Bool)

(assert (=> b!6572382 m!7353850))

(declare-fun m!7353852 () Bool)

(assert (=> b!6572371 m!7353852))

(declare-fun m!7353854 () Bool)

(assert (=> b!6572384 m!7353854))

(declare-fun m!7353856 () Bool)

(assert (=> b!6572366 m!7353856))

(declare-fun m!7353858 () Bool)

(assert (=> start!643950 m!7353858))

(declare-fun m!7353860 () Bool)

(assert (=> b!6572393 m!7353860))

(assert (=> b!6572393 m!7353860))

(declare-fun m!7353862 () Bool)

(assert (=> b!6572393 m!7353862))

(declare-fun m!7353864 () Bool)

(assert (=> b!6572364 m!7353864))

(declare-fun m!7353866 () Bool)

(assert (=> b!6572388 m!7353866))

(declare-fun m!7353868 () Bool)

(assert (=> b!6572388 m!7353868))

(declare-fun m!7353870 () Bool)

(assert (=> b!6572388 m!7353870))

(declare-fun m!7353872 () Bool)

(assert (=> b!6572388 m!7353872))

(declare-fun m!7353874 () Bool)

(assert (=> b!6572388 m!7353874))

(assert (=> b!6572391 m!7353854))

(declare-fun m!7353876 () Bool)

(assert (=> b!6572381 m!7353876))

(declare-fun m!7353878 () Bool)

(assert (=> b!6572398 m!7353878))

(declare-fun m!7353880 () Bool)

(assert (=> b!6572357 m!7353880))

(declare-fun m!7353882 () Bool)

(assert (=> b!6572357 m!7353882))

(declare-fun m!7353884 () Bool)

(assert (=> b!6572357 m!7353884))

(declare-fun m!7353886 () Bool)

(assert (=> b!6572357 m!7353886))

(declare-fun m!7353888 () Bool)

(assert (=> b!6572357 m!7353888))

(declare-fun m!7353890 () Bool)

(assert (=> b!6572357 m!7353890))

(declare-fun m!7353892 () Bool)

(assert (=> b!6572357 m!7353892))

(declare-fun m!7353894 () Bool)

(assert (=> b!6572367 m!7353894))

(assert (=> b!6572379 m!7353854))

(declare-fun m!7353896 () Bool)

(assert (=> b!6572369 m!7353896))

(declare-fun m!7353898 () Bool)

(assert (=> b!6572369 m!7353898))

(declare-fun m!7353900 () Bool)

(assert (=> b!6572369 m!7353900))

(declare-fun m!7353902 () Bool)

(assert (=> b!6572369 m!7353902))

(declare-fun m!7353904 () Bool)

(assert (=> b!6572369 m!7353904))

(declare-fun m!7353906 () Bool)

(assert (=> b!6572369 m!7353906))

(declare-fun m!7353908 () Bool)

(assert (=> b!6572369 m!7353908))

(declare-fun m!7353910 () Bool)

(assert (=> b!6572369 m!7353910))

(declare-fun m!7353912 () Bool)

(assert (=> b!6572369 m!7353912))

(declare-fun m!7353914 () Bool)

(assert (=> b!6572363 m!7353914))

(declare-fun m!7353916 () Bool)

(assert (=> b!6572360 m!7353916))

(declare-fun m!7353918 () Bool)

(assert (=> b!6572365 m!7353918))

(declare-fun m!7353920 () Bool)

(assert (=> b!6572395 m!7353920))

(declare-fun m!7353922 () Bool)

(assert (=> b!6572395 m!7353922))

(declare-fun m!7353924 () Bool)

(assert (=> setNonEmpty!44884 m!7353924))

(assert (=> b!6572390 m!7353884))

(declare-fun m!7353926 () Bool)

(assert (=> b!6572390 m!7353926))

(declare-fun m!7353928 () Bool)

(assert (=> b!6572390 m!7353928))

(declare-fun m!7353930 () Bool)

(assert (=> b!6572390 m!7353930))

(declare-fun m!7353932 () Bool)

(assert (=> b!6572390 m!7353932))

(declare-fun m!7353934 () Bool)

(assert (=> b!6572370 m!7353934))

(declare-fun m!7353936 () Bool)

(assert (=> b!6572370 m!7353936))

(declare-fun m!7353938 () Bool)

(assert (=> b!6572370 m!7353938))

(assert (=> b!6572386 m!7353822))

(check-sat (not b!6572397) (not b!6572396) (not b!6572378) (not b!6572377) (not b!6572376) (not b!6572364) (not setNonEmpty!44884) (not b!6572371) (not b!6572393) (not b!6572365) (not b!6572386) (not start!643950) (not b!6572388) (not b!6572367) (not b!6572358) (not b!6572380) (not b!6572387) (not b!6572395) (not b!6572384) (not b!6572366) (not b!6572360) (not b!6572379) (not b!6572370) tp_is_empty!42151 (not b!6572373) (not b!6572398) (not b!6572383) (not b!6572390) (not b!6572363) (not b!6572369) (not b!6572372) (not b!6572357) (not b!6572381) (not b!6572392) (not b!6572391) (not b!6572382) (not b!6572399))
(check-sat)
(get-model)

(declare-fun d!2061946 () Bool)

(assert (=> d!2061946 (= (isEmpty!37773 (t!379293 (exprs!6333 (h!71972 zl!343)))) ((_ is Nil!65523) (t!379293 (exprs!6333 (h!71972 zl!343)))))))

(assert (=> b!6572387 d!2061946))

(declare-fun b!6572446 () Bool)

(declare-fun e!3978127 () Bool)

(declare-fun e!3978125 () Bool)

(assert (=> b!6572446 (= e!3978127 e!3978125)))

(declare-fun res!2697210 () Bool)

(assert (=> b!6572446 (=> (not res!2697210) (not e!3978125))))

(declare-fun call!572006 () Bool)

(assert (=> b!6572446 (= res!2697210 call!572006)))

(declare-fun d!2061948 () Bool)

(declare-fun res!2697209 () Bool)

(declare-fun e!3978126 () Bool)

(assert (=> d!2061948 (=> res!2697209 e!3978126)))

(assert (=> d!2061948 (= res!2697209 ((_ is ElementMatch!16449) r!7292))))

(assert (=> d!2061948 (= (validRegex!8185 r!7292) e!3978126)))

(declare-fun b!6572447 () Bool)

(declare-fun res!2697212 () Bool)

(assert (=> b!6572447 (=> res!2697212 e!3978127)))

(assert (=> b!6572447 (= res!2697212 (not ((_ is Concat!25294) r!7292)))))

(declare-fun e!3978123 () Bool)

(assert (=> b!6572447 (= e!3978123 e!3978127)))

(declare-fun bm!572000 () Bool)

(declare-fun call!572007 () Bool)

(declare-fun call!572005 () Bool)

(assert (=> bm!572000 (= call!572007 call!572005)))

(declare-fun b!6572448 () Bool)

(assert (=> b!6572448 (= e!3978125 call!572007)))

(declare-fun b!6572449 () Bool)

(declare-fun e!3978124 () Bool)

(assert (=> b!6572449 (= e!3978124 call!572005)))

(declare-fun bm!572001 () Bool)

(declare-fun c!1208322 () Bool)

(declare-fun c!1208323 () Bool)

(assert (=> bm!572001 (= call!572005 (validRegex!8185 (ite c!1208322 (reg!16778 r!7292) (ite c!1208323 (regTwo!33411 r!7292) (regTwo!33410 r!7292)))))))

(declare-fun b!6572450 () Bool)

(declare-fun res!2697208 () Bool)

(declare-fun e!3978122 () Bool)

(assert (=> b!6572450 (=> (not res!2697208) (not e!3978122))))

(assert (=> b!6572450 (= res!2697208 call!572006)))

(assert (=> b!6572450 (= e!3978123 e!3978122)))

(declare-fun b!6572451 () Bool)

(declare-fun e!3978121 () Bool)

(assert (=> b!6572451 (= e!3978126 e!3978121)))

(assert (=> b!6572451 (= c!1208322 ((_ is Star!16449) r!7292))))

(declare-fun b!6572452 () Bool)

(assert (=> b!6572452 (= e!3978121 e!3978123)))

(assert (=> b!6572452 (= c!1208323 ((_ is Union!16449) r!7292))))

(declare-fun b!6572453 () Bool)

(assert (=> b!6572453 (= e!3978122 call!572007)))

(declare-fun b!6572454 () Bool)

(assert (=> b!6572454 (= e!3978121 e!3978124)))

(declare-fun res!2697211 () Bool)

(assert (=> b!6572454 (= res!2697211 (not (nullable!6442 (reg!16778 r!7292))))))

(assert (=> b!6572454 (=> (not res!2697211) (not e!3978124))))

(declare-fun bm!572002 () Bool)

(assert (=> bm!572002 (= call!572006 (validRegex!8185 (ite c!1208323 (regOne!33411 r!7292) (regOne!33410 r!7292))))))

(assert (= (and d!2061948 (not res!2697209)) b!6572451))

(assert (= (and b!6572451 c!1208322) b!6572454))

(assert (= (and b!6572451 (not c!1208322)) b!6572452))

(assert (= (and b!6572454 res!2697211) b!6572449))

(assert (= (and b!6572452 c!1208323) b!6572450))

(assert (= (and b!6572452 (not c!1208323)) b!6572447))

(assert (= (and b!6572450 res!2697208) b!6572453))

(assert (= (and b!6572447 (not res!2697212)) b!6572446))

(assert (= (and b!6572446 res!2697210) b!6572448))

(assert (= (or b!6572453 b!6572448) bm!572000))

(assert (= (or b!6572450 b!6572446) bm!572002))

(assert (= (or b!6572449 bm!572000) bm!572001))

(declare-fun m!7353968 () Bool)

(assert (=> bm!572001 m!7353968))

(declare-fun m!7353970 () Bool)

(assert (=> b!6572454 m!7353970))

(declare-fun m!7353972 () Bool)

(assert (=> bm!572002 m!7353972))

(assert (=> start!643950 d!2061948))

(declare-fun d!2061962 () Bool)

(declare-fun e!3978142 () Bool)

(assert (=> d!2061962 e!3978142))

(declare-fun res!2697218 () Bool)

(assert (=> d!2061962 (=> (not res!2697218) (not e!3978142))))

(declare-fun lt!2409002 () List!65648)

(declare-fun noDuplicate!2253 (List!65648) Bool)

(assert (=> d!2061962 (= res!2697218 (noDuplicate!2253 lt!2409002))))

(declare-fun choose!49095 ((InoxSet Context!11666)) List!65648)

(assert (=> d!2061962 (= lt!2409002 (choose!49095 z!1189))))

(assert (=> d!2061962 (= (toList!10233 z!1189) lt!2409002)))

(declare-fun b!6572480 () Bool)

(declare-fun content!12619 (List!65648) (InoxSet Context!11666))

(assert (=> b!6572480 (= e!3978142 (= (content!12619 lt!2409002) z!1189))))

(assert (= (and d!2061962 res!2697218) b!6572480))

(declare-fun m!7354024 () Bool)

(assert (=> d!2061962 m!7354024))

(declare-fun m!7354026 () Bool)

(assert (=> d!2061962 m!7354026))

(declare-fun m!7354028 () Bool)

(assert (=> b!6572480 m!7354028))

(assert (=> b!6572366 d!2061962))

(declare-fun d!2061988 () Bool)

(declare-fun choose!49096 ((InoxSet Context!11666) Int) (InoxSet Context!11666))

(assert (=> d!2061988 (= (flatMap!1954 lt!2408967 lambda!366035) (choose!49096 lt!2408967 lambda!366035))))

(declare-fun bs!1678765 () Bool)

(assert (= bs!1678765 d!2061988))

(declare-fun m!7354030 () Bool)

(assert (=> bs!1678765 m!7354030))

(assert (=> b!6572388 d!2061988))

(declare-fun b!6572524 () Bool)

(declare-fun call!572031 () (InoxSet Context!11666))

(declare-fun e!3978167 () (InoxSet Context!11666))

(assert (=> b!6572524 (= e!3978167 ((_ map or) call!572031 (derivationStepZipperUp!1623 (Context!11667 (t!379293 (exprs!6333 lt!2408981))) (h!71970 s!2326))))))

(declare-fun d!2061990 () Bool)

(declare-fun c!1208355 () Bool)

(declare-fun e!3978169 () Bool)

(assert (=> d!2061990 (= c!1208355 e!3978169)))

(declare-fun res!2697224 () Bool)

(assert (=> d!2061990 (=> (not res!2697224) (not e!3978169))))

(assert (=> d!2061990 (= res!2697224 ((_ is Cons!65523) (exprs!6333 lt!2408981)))))

(assert (=> d!2061990 (= (derivationStepZipperUp!1623 lt!2408981 (h!71970 s!2326)) e!3978167)))

(declare-fun bm!572026 () Bool)

(assert (=> bm!572026 (= call!572031 (derivationStepZipperDown!1697 (h!71971 (exprs!6333 lt!2408981)) (Context!11667 (t!379293 (exprs!6333 lt!2408981))) (h!71970 s!2326)))))

(declare-fun b!6572525 () Bool)

(declare-fun e!3978168 () (InoxSet Context!11666))

(assert (=> b!6572525 (= e!3978168 call!572031)))

(declare-fun b!6572526 () Bool)

(assert (=> b!6572526 (= e!3978167 e!3978168)))

(declare-fun c!1208354 () Bool)

(assert (=> b!6572526 (= c!1208354 ((_ is Cons!65523) (exprs!6333 lt!2408981)))))

(declare-fun b!6572527 () Bool)

(assert (=> b!6572527 (= e!3978168 ((as const (Array Context!11666 Bool)) false))))

(declare-fun b!6572528 () Bool)

(assert (=> b!6572528 (= e!3978169 (nullable!6442 (h!71971 (exprs!6333 lt!2408981))))))

(assert (= (and d!2061990 res!2697224) b!6572528))

(assert (= (and d!2061990 c!1208355) b!6572524))

(assert (= (and d!2061990 (not c!1208355)) b!6572526))

(assert (= (and b!6572526 c!1208354) b!6572525))

(assert (= (and b!6572526 (not c!1208354)) b!6572527))

(assert (= (or b!6572524 b!6572525) bm!572026))

(declare-fun m!7354040 () Bool)

(assert (=> b!6572524 m!7354040))

(declare-fun m!7354048 () Bool)

(assert (=> bm!572026 m!7354048))

(declare-fun m!7354050 () Bool)

(assert (=> b!6572528 m!7354050))

(assert (=> b!6572388 d!2061990))

(declare-fun d!2061996 () Bool)

(declare-fun dynLambda!26069 (Int Context!11666) (InoxSet Context!11666))

(assert (=> d!2061996 (= (flatMap!1954 lt!2408967 lambda!366035) (dynLambda!26069 lambda!366035 lt!2408981))))

(declare-fun lt!2409006 () Unit!159131)

(declare-fun choose!49097 ((InoxSet Context!11666) Context!11666 Int) Unit!159131)

(assert (=> d!2061996 (= lt!2409006 (choose!49097 lt!2408967 lt!2408981 lambda!366035))))

(assert (=> d!2061996 (= lt!2408967 (store ((as const (Array Context!11666 Bool)) false) lt!2408981 true))))

(assert (=> d!2061996 (= (lemmaFlatMapOnSingletonSet!1480 lt!2408967 lt!2408981 lambda!366035) lt!2409006)))

(declare-fun b_lambda!248573 () Bool)

(assert (=> (not b_lambda!248573) (not d!2061996)))

(declare-fun bs!1678767 () Bool)

(assert (= bs!1678767 d!2061996))

(assert (=> bs!1678767 m!7353868))

(declare-fun m!7354052 () Bool)

(assert (=> bs!1678767 m!7354052))

(declare-fun m!7354054 () Bool)

(assert (=> bs!1678767 m!7354054))

(assert (=> bs!1678767 m!7353872))

(assert (=> b!6572388 d!2061996))

(declare-fun bs!1678768 () Bool)

(declare-fun d!2061998 () Bool)

(assert (= bs!1678768 (and d!2061998 b!6572357)))

(declare-fun lambda!366046 () Int)

(assert (=> bs!1678768 (= lambda!366046 lambda!366035)))

(assert (=> d!2061998 true))

(assert (=> d!2061998 (= (derivationStepZipper!2415 lt!2408967 (h!71970 s!2326)) (flatMap!1954 lt!2408967 lambda!366046))))

(declare-fun bs!1678769 () Bool)

(assert (= bs!1678769 d!2061998))

(declare-fun m!7354056 () Bool)

(assert (=> bs!1678769 m!7354056))

(assert (=> b!6572388 d!2061998))

(declare-fun d!2062000 () Bool)

(declare-fun lt!2409018 () Regex!16449)

(assert (=> d!2062000 (validRegex!8185 lt!2409018)))

(assert (=> d!2062000 (= lt!2409018 (generalisedUnion!2293 (unfocusZipperList!1870 (Cons!65524 lt!2408971 Nil!65524))))))

(assert (=> d!2062000 (= (unfocusZipper!2191 (Cons!65524 lt!2408971 Nil!65524)) lt!2409018)))

(declare-fun bs!1678770 () Bool)

(assert (= bs!1678770 d!2062000))

(declare-fun m!7354058 () Bool)

(assert (=> bs!1678770 m!7354058))

(declare-fun m!7354060 () Bool)

(assert (=> bs!1678770 m!7354060))

(assert (=> bs!1678770 m!7354060))

(declare-fun m!7354062 () Bool)

(assert (=> bs!1678770 m!7354062))

(assert (=> b!6572367 d!2062000))

(declare-fun bs!1678771 () Bool)

(declare-fun d!2062002 () Bool)

(assert (= bs!1678771 (and d!2062002 b!6572357)))

(declare-fun lambda!366047 () Int)

(assert (=> bs!1678771 (= lambda!366047 lambda!366035)))

(declare-fun bs!1678772 () Bool)

(assert (= bs!1678772 (and d!2062002 d!2061998)))

(assert (=> bs!1678772 (= lambda!366047 lambda!366046)))

(assert (=> d!2062002 true))

(assert (=> d!2062002 (= (derivationStepZipper!2415 lt!2408995 (h!71970 s!2326)) (flatMap!1954 lt!2408995 lambda!366047))))

(declare-fun bs!1678773 () Bool)

(assert (= bs!1678773 d!2062002))

(declare-fun m!7354088 () Bool)

(assert (=> bs!1678773 m!7354088))

(assert (=> b!6572390 d!2062002))

(declare-fun d!2062006 () Bool)

(assert (=> d!2062006 (= (flatMap!1954 lt!2408995 lambda!366035) (choose!49096 lt!2408995 lambda!366035))))

(declare-fun bs!1678774 () Bool)

(assert (= bs!1678774 d!2062006))

(declare-fun m!7354090 () Bool)

(assert (=> bs!1678774 m!7354090))

(assert (=> b!6572390 d!2062006))

(declare-fun call!572032 () (InoxSet Context!11666))

(declare-fun e!3978185 () (InoxSet Context!11666))

(declare-fun b!6572558 () Bool)

(assert (=> b!6572558 (= e!3978185 ((_ map or) call!572032 (derivationStepZipperUp!1623 (Context!11667 (t!379293 (exprs!6333 lt!2408965))) (h!71970 s!2326))))))

(declare-fun d!2062008 () Bool)

(declare-fun c!1208365 () Bool)

(declare-fun e!3978187 () Bool)

(assert (=> d!2062008 (= c!1208365 e!3978187)))

(declare-fun res!2697240 () Bool)

(assert (=> d!2062008 (=> (not res!2697240) (not e!3978187))))

(assert (=> d!2062008 (= res!2697240 ((_ is Cons!65523) (exprs!6333 lt!2408965)))))

(assert (=> d!2062008 (= (derivationStepZipperUp!1623 lt!2408965 (h!71970 s!2326)) e!3978185)))

(declare-fun bm!572027 () Bool)

(assert (=> bm!572027 (= call!572032 (derivationStepZipperDown!1697 (h!71971 (exprs!6333 lt!2408965)) (Context!11667 (t!379293 (exprs!6333 lt!2408965))) (h!71970 s!2326)))))

(declare-fun b!6572559 () Bool)

(declare-fun e!3978186 () (InoxSet Context!11666))

(assert (=> b!6572559 (= e!3978186 call!572032)))

(declare-fun b!6572560 () Bool)

(assert (=> b!6572560 (= e!3978185 e!3978186)))

(declare-fun c!1208364 () Bool)

(assert (=> b!6572560 (= c!1208364 ((_ is Cons!65523) (exprs!6333 lt!2408965)))))

(declare-fun b!6572561 () Bool)

(assert (=> b!6572561 (= e!3978186 ((as const (Array Context!11666 Bool)) false))))

(declare-fun b!6572562 () Bool)

(assert (=> b!6572562 (= e!3978187 (nullable!6442 (h!71971 (exprs!6333 lt!2408965))))))

(assert (= (and d!2062008 res!2697240) b!6572562))

(assert (= (and d!2062008 c!1208365) b!6572558))

(assert (= (and d!2062008 (not c!1208365)) b!6572560))

(assert (= (and b!6572560 c!1208364) b!6572559))

(assert (= (and b!6572560 (not c!1208364)) b!6572561))

(assert (= (or b!6572558 b!6572559) bm!572027))

(declare-fun m!7354094 () Bool)

(assert (=> b!6572558 m!7354094))

(declare-fun m!7354096 () Bool)

(assert (=> bm!572027 m!7354096))

(declare-fun m!7354098 () Bool)

(assert (=> b!6572562 m!7354098))

(assert (=> b!6572390 d!2062008))

(declare-fun d!2062012 () Bool)

(assert (=> d!2062012 (= (flatMap!1954 lt!2408995 lambda!366035) (dynLambda!26069 lambda!366035 lt!2408965))))

(declare-fun lt!2409019 () Unit!159131)

(assert (=> d!2062012 (= lt!2409019 (choose!49097 lt!2408995 lt!2408965 lambda!366035))))

(assert (=> d!2062012 (= lt!2408995 (store ((as const (Array Context!11666 Bool)) false) lt!2408965 true))))

(assert (=> d!2062012 (= (lemmaFlatMapOnSingletonSet!1480 lt!2408995 lt!2408965 lambda!366035) lt!2409019)))

(declare-fun b_lambda!248575 () Bool)

(assert (=> (not b_lambda!248575) (not d!2062012)))

(declare-fun bs!1678776 () Bool)

(assert (= bs!1678776 d!2062012))

(assert (=> bs!1678776 m!7353932))

(declare-fun m!7354100 () Bool)

(assert (=> bs!1678776 m!7354100))

(declare-fun m!7354102 () Bool)

(assert (=> bs!1678776 m!7354102))

(assert (=> bs!1678776 m!7353930))

(assert (=> b!6572390 d!2062012))

(declare-fun d!2062014 () Bool)

(declare-fun lt!2409020 () Regex!16449)

(assert (=> d!2062014 (validRegex!8185 lt!2409020)))

(assert (=> d!2062014 (= lt!2409020 (generalisedUnion!2293 (unfocusZipperList!1870 (Cons!65524 lt!2408975 Nil!65524))))))

(assert (=> d!2062014 (= (unfocusZipper!2191 (Cons!65524 lt!2408975 Nil!65524)) lt!2409020)))

(declare-fun bs!1678777 () Bool)

(assert (= bs!1678777 d!2062014))

(declare-fun m!7354104 () Bool)

(assert (=> bs!1678777 m!7354104))

(declare-fun m!7354106 () Bool)

(assert (=> bs!1678777 m!7354106))

(assert (=> bs!1678777 m!7354106))

(declare-fun m!7354108 () Bool)

(assert (=> bs!1678777 m!7354108))

(assert (=> b!6572369 d!2062014))

(declare-fun call!572033 () (InoxSet Context!11666))

(declare-fun b!6572563 () Bool)

(declare-fun e!3978188 () (InoxSet Context!11666))

(assert (=> b!6572563 (= e!3978188 ((_ map or) call!572033 (derivationStepZipperUp!1623 (Context!11667 (t!379293 (exprs!6333 lt!2408971))) (h!71970 s!2326))))))

(declare-fun d!2062016 () Bool)

(declare-fun c!1208367 () Bool)

(declare-fun e!3978190 () Bool)

(assert (=> d!2062016 (= c!1208367 e!3978190)))

(declare-fun res!2697241 () Bool)

(assert (=> d!2062016 (=> (not res!2697241) (not e!3978190))))

(assert (=> d!2062016 (= res!2697241 ((_ is Cons!65523) (exprs!6333 lt!2408971)))))

(assert (=> d!2062016 (= (derivationStepZipperUp!1623 lt!2408971 (h!71970 s!2326)) e!3978188)))

(declare-fun bm!572028 () Bool)

(assert (=> bm!572028 (= call!572033 (derivationStepZipperDown!1697 (h!71971 (exprs!6333 lt!2408971)) (Context!11667 (t!379293 (exprs!6333 lt!2408971))) (h!71970 s!2326)))))

(declare-fun b!6572564 () Bool)

(declare-fun e!3978189 () (InoxSet Context!11666))

(assert (=> b!6572564 (= e!3978189 call!572033)))

(declare-fun b!6572565 () Bool)

(assert (=> b!6572565 (= e!3978188 e!3978189)))

(declare-fun c!1208366 () Bool)

(assert (=> b!6572565 (= c!1208366 ((_ is Cons!65523) (exprs!6333 lt!2408971)))))

(declare-fun b!6572566 () Bool)

(assert (=> b!6572566 (= e!3978189 ((as const (Array Context!11666 Bool)) false))))

(declare-fun b!6572567 () Bool)

(assert (=> b!6572567 (= e!3978190 (nullable!6442 (h!71971 (exprs!6333 lt!2408971))))))

(assert (= (and d!2062016 res!2697241) b!6572567))

(assert (= (and d!2062016 c!1208367) b!6572563))

(assert (= (and d!2062016 (not c!1208367)) b!6572565))

(assert (= (and b!6572565 c!1208366) b!6572564))

(assert (= (and b!6572565 (not c!1208366)) b!6572566))

(assert (= (or b!6572563 b!6572564) bm!572028))

(declare-fun m!7354110 () Bool)

(assert (=> b!6572563 m!7354110))

(declare-fun m!7354112 () Bool)

(assert (=> bm!572028 m!7354112))

(declare-fun m!7354114 () Bool)

(assert (=> b!6572567 m!7354114))

(assert (=> b!6572369 d!2062016))

(declare-fun d!2062018 () Bool)

(assert (=> d!2062018 (= (flatMap!1954 lt!2408977 lambda!366035) (choose!49096 lt!2408977 lambda!366035))))

(declare-fun bs!1678778 () Bool)

(assert (= bs!1678778 d!2062018))

(declare-fun m!7354116 () Bool)

(assert (=> bs!1678778 m!7354116))

(assert (=> b!6572369 d!2062018))

(declare-fun d!2062020 () Bool)

(assert (=> d!2062020 (= (flatMap!1954 lt!2408977 lambda!366035) (dynLambda!26069 lambda!366035 lt!2408975))))

(declare-fun lt!2409021 () Unit!159131)

(assert (=> d!2062020 (= lt!2409021 (choose!49097 lt!2408977 lt!2408975 lambda!366035))))

(assert (=> d!2062020 (= lt!2408977 (store ((as const (Array Context!11666 Bool)) false) lt!2408975 true))))

(assert (=> d!2062020 (= (lemmaFlatMapOnSingletonSet!1480 lt!2408977 lt!2408975 lambda!366035) lt!2409021)))

(declare-fun b_lambda!248577 () Bool)

(assert (=> (not b_lambda!248577) (not d!2062020)))

(declare-fun bs!1678779 () Bool)

(assert (= bs!1678779 d!2062020))

(assert (=> bs!1678779 m!7353896))

(declare-fun m!7354118 () Bool)

(assert (=> bs!1678779 m!7354118))

(declare-fun m!7354120 () Bool)

(assert (=> bs!1678779 m!7354120))

(assert (=> bs!1678779 m!7353902))

(assert (=> b!6572369 d!2062020))

(declare-fun e!3978191 () (InoxSet Context!11666))

(declare-fun b!6572568 () Bool)

(declare-fun call!572034 () (InoxSet Context!11666))

(assert (=> b!6572568 (= e!3978191 ((_ map or) call!572034 (derivationStepZipperUp!1623 (Context!11667 (t!379293 (exprs!6333 lt!2408975))) (h!71970 s!2326))))))

(declare-fun d!2062022 () Bool)

(declare-fun c!1208369 () Bool)

(declare-fun e!3978193 () Bool)

(assert (=> d!2062022 (= c!1208369 e!3978193)))

(declare-fun res!2697242 () Bool)

(assert (=> d!2062022 (=> (not res!2697242) (not e!3978193))))

(assert (=> d!2062022 (= res!2697242 ((_ is Cons!65523) (exprs!6333 lt!2408975)))))

(assert (=> d!2062022 (= (derivationStepZipperUp!1623 lt!2408975 (h!71970 s!2326)) e!3978191)))

(declare-fun bm!572029 () Bool)

(assert (=> bm!572029 (= call!572034 (derivationStepZipperDown!1697 (h!71971 (exprs!6333 lt!2408975)) (Context!11667 (t!379293 (exprs!6333 lt!2408975))) (h!71970 s!2326)))))

(declare-fun b!6572569 () Bool)

(declare-fun e!3978192 () (InoxSet Context!11666))

(assert (=> b!6572569 (= e!3978192 call!572034)))

(declare-fun b!6572570 () Bool)

(assert (=> b!6572570 (= e!3978191 e!3978192)))

(declare-fun c!1208368 () Bool)

(assert (=> b!6572570 (= c!1208368 ((_ is Cons!65523) (exprs!6333 lt!2408975)))))

(declare-fun b!6572571 () Bool)

(assert (=> b!6572571 (= e!3978192 ((as const (Array Context!11666 Bool)) false))))

(declare-fun b!6572572 () Bool)

(assert (=> b!6572572 (= e!3978193 (nullable!6442 (h!71971 (exprs!6333 lt!2408975))))))

(assert (= (and d!2062022 res!2697242) b!6572572))

(assert (= (and d!2062022 c!1208369) b!6572568))

(assert (= (and d!2062022 (not c!1208369)) b!6572570))

(assert (= (and b!6572570 c!1208368) b!6572569))

(assert (= (and b!6572570 (not c!1208368)) b!6572571))

(assert (= (or b!6572568 b!6572569) bm!572029))

(declare-fun m!7354122 () Bool)

(assert (=> b!6572568 m!7354122))

(declare-fun m!7354124 () Bool)

(assert (=> bm!572029 m!7354124))

(declare-fun m!7354126 () Bool)

(assert (=> b!6572572 m!7354126))

(assert (=> b!6572369 d!2062022))

(declare-fun d!2062024 () Bool)

(assert (=> d!2062024 (= (flatMap!1954 lt!2408964 lambda!366035) (dynLambda!26069 lambda!366035 lt!2408971))))

(declare-fun lt!2409024 () Unit!159131)

(assert (=> d!2062024 (= lt!2409024 (choose!49097 lt!2408964 lt!2408971 lambda!366035))))

(assert (=> d!2062024 (= lt!2408964 (store ((as const (Array Context!11666 Bool)) false) lt!2408971 true))))

(assert (=> d!2062024 (= (lemmaFlatMapOnSingletonSet!1480 lt!2408964 lt!2408971 lambda!366035) lt!2409024)))

(declare-fun b_lambda!248579 () Bool)

(assert (=> (not b_lambda!248579) (not d!2062024)))

(declare-fun bs!1678780 () Bool)

(assert (= bs!1678780 d!2062024))

(assert (=> bs!1678780 m!7353912))

(declare-fun m!7354128 () Bool)

(assert (=> bs!1678780 m!7354128))

(declare-fun m!7354130 () Bool)

(assert (=> bs!1678780 m!7354130))

(assert (=> bs!1678780 m!7353904))

(assert (=> b!6572369 d!2062024))

(declare-fun d!2062026 () Bool)

(assert (=> d!2062026 (= (flatMap!1954 lt!2408964 lambda!366035) (choose!49096 lt!2408964 lambda!366035))))

(declare-fun bs!1678781 () Bool)

(assert (= bs!1678781 d!2062026))

(declare-fun m!7354132 () Bool)

(assert (=> bs!1678781 m!7354132))

(assert (=> b!6572369 d!2062026))

(declare-fun d!2062028 () Bool)

(declare-fun c!1208372 () Bool)

(declare-fun isEmpty!37777 (List!65646) Bool)

(assert (=> d!2062028 (= c!1208372 (isEmpty!37777 (t!379292 s!2326)))))

(declare-fun e!3978200 () Bool)

(assert (=> d!2062028 (= (matchZipper!2461 lt!2408976 (t!379292 s!2326)) e!3978200)))

(declare-fun b!6572585 () Bool)

(declare-fun nullableZipper!2194 ((InoxSet Context!11666)) Bool)

(assert (=> b!6572585 (= e!3978200 (nullableZipper!2194 lt!2408976))))

(declare-fun b!6572586 () Bool)

(declare-fun head!13349 (List!65646) C!33168)

(declare-fun tail!12434 (List!65646) List!65646)

(assert (=> b!6572586 (= e!3978200 (matchZipper!2461 (derivationStepZipper!2415 lt!2408976 (head!13349 (t!379292 s!2326))) (tail!12434 (t!379292 s!2326))))))

(assert (= (and d!2062028 c!1208372) b!6572585))

(assert (= (and d!2062028 (not c!1208372)) b!6572586))

(declare-fun m!7354142 () Bool)

(assert (=> d!2062028 m!7354142))

(declare-fun m!7354144 () Bool)

(assert (=> b!6572585 m!7354144))

(declare-fun m!7354146 () Bool)

(assert (=> b!6572586 m!7354146))

(assert (=> b!6572586 m!7354146))

(declare-fun m!7354148 () Bool)

(assert (=> b!6572586 m!7354148))

(declare-fun m!7354150 () Bool)

(assert (=> b!6572586 m!7354150))

(assert (=> b!6572586 m!7354148))

(assert (=> b!6572586 m!7354150))

(declare-fun m!7354152 () Bool)

(assert (=> b!6572586 m!7354152))

(assert (=> b!6572391 d!2062028))

(declare-fun b!6572649 () Bool)

(declare-fun e!3978237 () Bool)

(assert (=> b!6572649 (= e!3978237 (= (head!13349 s!2326) (c!1208308 lt!2408988)))))

(declare-fun b!6572650 () Bool)

(declare-fun res!2697279 () Bool)

(declare-fun e!3978239 () Bool)

(assert (=> b!6572650 (=> res!2697279 e!3978239)))

(assert (=> b!6572650 (= res!2697279 (not (isEmpty!37777 (tail!12434 s!2326))))))

(declare-fun b!6572651 () Bool)

(assert (=> b!6572651 (= e!3978239 (not (= (head!13349 s!2326) (c!1208308 lt!2408988))))))

(declare-fun b!6572652 () Bool)

(declare-fun res!2697283 () Bool)

(declare-fun e!3978240 () Bool)

(assert (=> b!6572652 (=> res!2697283 e!3978240)))

(assert (=> b!6572652 (= res!2697283 e!3978237)))

(declare-fun res!2697282 () Bool)

(assert (=> b!6572652 (=> (not res!2697282) (not e!3978237))))

(declare-fun lt!2409034 () Bool)

(assert (=> b!6572652 (= res!2697282 lt!2409034)))

(declare-fun b!6572653 () Bool)

(declare-fun e!3978238 () Bool)

(assert (=> b!6572653 (= e!3978238 (not lt!2409034))))

(declare-fun b!6572654 () Bool)

(declare-fun e!3978236 () Bool)

(assert (=> b!6572654 (= e!3978236 e!3978238)))

(declare-fun c!1208392 () Bool)

(assert (=> b!6572654 (= c!1208392 ((_ is EmptyLang!16449) lt!2408988))))

(declare-fun b!6572655 () Bool)

(declare-fun res!2697284 () Bool)

(assert (=> b!6572655 (=> (not res!2697284) (not e!3978237))))

(assert (=> b!6572655 (= res!2697284 (isEmpty!37777 (tail!12434 s!2326)))))

(declare-fun b!6572656 () Bool)

(declare-fun res!2697281 () Bool)

(assert (=> b!6572656 (=> (not res!2697281) (not e!3978237))))

(declare-fun call!572037 () Bool)

(assert (=> b!6572656 (= res!2697281 (not call!572037))))

(declare-fun b!6572657 () Bool)

(declare-fun e!3978235 () Bool)

(assert (=> b!6572657 (= e!3978235 e!3978239)))

(declare-fun res!2697278 () Bool)

(assert (=> b!6572657 (=> res!2697278 e!3978239)))

(assert (=> b!6572657 (= res!2697278 call!572037)))

(declare-fun d!2062034 () Bool)

(assert (=> d!2062034 e!3978236))

(declare-fun c!1208393 () Bool)

(assert (=> d!2062034 (= c!1208393 ((_ is EmptyExpr!16449) lt!2408988))))

(declare-fun e!3978241 () Bool)

(assert (=> d!2062034 (= lt!2409034 e!3978241)))

(declare-fun c!1208391 () Bool)

(assert (=> d!2062034 (= c!1208391 (isEmpty!37777 s!2326))))

(assert (=> d!2062034 (validRegex!8185 lt!2408988)))

(assert (=> d!2062034 (= (matchR!8632 lt!2408988 s!2326) lt!2409034)))

(declare-fun b!6572658 () Bool)

(assert (=> b!6572658 (= e!3978236 (= lt!2409034 call!572037))))

(declare-fun b!6572659 () Bool)

(declare-fun derivativeStep!5133 (Regex!16449 C!33168) Regex!16449)

(assert (=> b!6572659 (= e!3978241 (matchR!8632 (derivativeStep!5133 lt!2408988 (head!13349 s!2326)) (tail!12434 s!2326)))))

(declare-fun b!6572660 () Bool)

(assert (=> b!6572660 (= e!3978241 (nullable!6442 lt!2408988))))

(declare-fun b!6572661 () Bool)

(declare-fun res!2697277 () Bool)

(assert (=> b!6572661 (=> res!2697277 e!3978240)))

(assert (=> b!6572661 (= res!2697277 (not ((_ is ElementMatch!16449) lt!2408988)))))

(assert (=> b!6572661 (= e!3978238 e!3978240)))

(declare-fun b!6572662 () Bool)

(assert (=> b!6572662 (= e!3978240 e!3978235)))

(declare-fun res!2697280 () Bool)

(assert (=> b!6572662 (=> (not res!2697280) (not e!3978235))))

(assert (=> b!6572662 (= res!2697280 (not lt!2409034))))

(declare-fun bm!572032 () Bool)

(assert (=> bm!572032 (= call!572037 (isEmpty!37777 s!2326))))

(assert (= (and d!2062034 c!1208391) b!6572660))

(assert (= (and d!2062034 (not c!1208391)) b!6572659))

(assert (= (and d!2062034 c!1208393) b!6572658))

(assert (= (and d!2062034 (not c!1208393)) b!6572654))

(assert (= (and b!6572654 c!1208392) b!6572653))

(assert (= (and b!6572654 (not c!1208392)) b!6572661))

(assert (= (and b!6572661 (not res!2697277)) b!6572652))

(assert (= (and b!6572652 res!2697282) b!6572656))

(assert (= (and b!6572656 res!2697281) b!6572655))

(assert (= (and b!6572655 res!2697284) b!6572649))

(assert (= (and b!6572652 (not res!2697283)) b!6572662))

(assert (= (and b!6572662 res!2697280) b!6572657))

(assert (= (and b!6572657 (not res!2697278)) b!6572650))

(assert (= (and b!6572650 (not res!2697279)) b!6572651))

(assert (= (or b!6572658 b!6572656 b!6572657) bm!572032))

(declare-fun m!7354180 () Bool)

(assert (=> b!6572660 m!7354180))

(declare-fun m!7354182 () Bool)

(assert (=> bm!572032 m!7354182))

(declare-fun m!7354184 () Bool)

(assert (=> b!6572650 m!7354184))

(assert (=> b!6572650 m!7354184))

(declare-fun m!7354186 () Bool)

(assert (=> b!6572650 m!7354186))

(declare-fun m!7354188 () Bool)

(assert (=> b!6572651 m!7354188))

(assert (=> d!2062034 m!7354182))

(declare-fun m!7354190 () Bool)

(assert (=> d!2062034 m!7354190))

(assert (=> b!6572649 m!7354188))

(assert (=> b!6572659 m!7354188))

(assert (=> b!6572659 m!7354188))

(declare-fun m!7354192 () Bool)

(assert (=> b!6572659 m!7354192))

(assert (=> b!6572659 m!7354184))

(assert (=> b!6572659 m!7354192))

(assert (=> b!6572659 m!7354184))

(declare-fun m!7354194 () Bool)

(assert (=> b!6572659 m!7354194))

(assert (=> b!6572655 m!7354184))

(assert (=> b!6572655 m!7354184))

(assert (=> b!6572655 m!7354186))

(assert (=> b!6572370 d!2062034))

(declare-fun bs!1678796 () Bool)

(declare-fun b!6572783 () Bool)

(assert (= bs!1678796 (and b!6572783 b!6572377)))

(declare-fun lambda!366071 () Int)

(assert (=> bs!1678796 (not (= lambda!366071 lambda!366033))))

(assert (=> bs!1678796 (not (= lambda!366071 lambda!366034))))

(assert (=> b!6572783 true))

(assert (=> b!6572783 true))

(declare-fun bs!1678800 () Bool)

(declare-fun b!6572775 () Bool)

(assert (= bs!1678800 (and b!6572775 b!6572377)))

(declare-fun lambda!366073 () Int)

(assert (=> bs!1678800 (not (= lambda!366073 lambda!366033))))

(assert (=> bs!1678800 (= (and (= (regOne!33410 lt!2408988) (regOne!33410 r!7292)) (= (regTwo!33410 lt!2408988) (regTwo!33410 r!7292))) (= lambda!366073 lambda!366034))))

(declare-fun bs!1678801 () Bool)

(assert (= bs!1678801 (and b!6572775 b!6572783)))

(assert (=> bs!1678801 (not (= lambda!366073 lambda!366071))))

(assert (=> b!6572775 true))

(assert (=> b!6572775 true))

(declare-fun e!3978307 () Bool)

(declare-fun call!572049 () Bool)

(assert (=> b!6572775 (= e!3978307 call!572049)))

(declare-fun b!6572776 () Bool)

(declare-fun c!1208423 () Bool)

(assert (=> b!6572776 (= c!1208423 ((_ is Union!16449) lt!2408988))))

(declare-fun e!3978303 () Bool)

(declare-fun e!3978305 () Bool)

(assert (=> b!6572776 (= e!3978303 e!3978305)))

(declare-fun b!6572777 () Bool)

(declare-fun c!1208424 () Bool)

(assert (=> b!6572777 (= c!1208424 ((_ is ElementMatch!16449) lt!2408988))))

(declare-fun e!3978306 () Bool)

(assert (=> b!6572777 (= e!3978306 e!3978303)))

(declare-fun d!2062042 () Bool)

(declare-fun c!1208425 () Bool)

(assert (=> d!2062042 (= c!1208425 ((_ is EmptyExpr!16449) lt!2408988))))

(declare-fun e!3978304 () Bool)

(assert (=> d!2062042 (= (matchRSpec!3550 lt!2408988 s!2326) e!3978304)))

(declare-fun bm!572044 () Bool)

(declare-fun call!572050 () Bool)

(assert (=> bm!572044 (= call!572050 (isEmpty!37777 s!2326))))

(declare-fun b!6572778 () Bool)

(declare-fun e!3978308 () Bool)

(assert (=> b!6572778 (= e!3978308 (matchRSpec!3550 (regTwo!33411 lt!2408988) s!2326))))

(declare-fun b!6572779 () Bool)

(assert (=> b!6572779 (= e!3978305 e!3978308)))

(declare-fun res!2697341 () Bool)

(assert (=> b!6572779 (= res!2697341 (matchRSpec!3550 (regOne!33411 lt!2408988) s!2326))))

(assert (=> b!6572779 (=> res!2697341 e!3978308)))

(declare-fun b!6572780 () Bool)

(assert (=> b!6572780 (= e!3978305 e!3978307)))

(declare-fun c!1208422 () Bool)

(assert (=> b!6572780 (= c!1208422 ((_ is Star!16449) lt!2408988))))

(declare-fun b!6572781 () Bool)

(assert (=> b!6572781 (= e!3978304 e!3978306)))

(declare-fun res!2697343 () Bool)

(assert (=> b!6572781 (= res!2697343 (not ((_ is EmptyLang!16449) lt!2408988)))))

(assert (=> b!6572781 (=> (not res!2697343) (not e!3978306))))

(declare-fun b!6572782 () Bool)

(declare-fun res!2697342 () Bool)

(declare-fun e!3978302 () Bool)

(assert (=> b!6572782 (=> res!2697342 e!3978302)))

(assert (=> b!6572782 (= res!2697342 call!572050)))

(assert (=> b!6572782 (= e!3978307 e!3978302)))

(declare-fun bm!572045 () Bool)

(assert (=> bm!572045 (= call!572049 (Exists!3519 (ite c!1208422 lambda!366071 lambda!366073)))))

(assert (=> b!6572783 (= e!3978302 call!572049)))

(declare-fun b!6572784 () Bool)

(assert (=> b!6572784 (= e!3978304 call!572050)))

(declare-fun b!6572785 () Bool)

(assert (=> b!6572785 (= e!3978303 (= s!2326 (Cons!65522 (c!1208308 lt!2408988) Nil!65522)))))

(assert (= (and d!2062042 c!1208425) b!6572784))

(assert (= (and d!2062042 (not c!1208425)) b!6572781))

(assert (= (and b!6572781 res!2697343) b!6572777))

(assert (= (and b!6572777 c!1208424) b!6572785))

(assert (= (and b!6572777 (not c!1208424)) b!6572776))

(assert (= (and b!6572776 c!1208423) b!6572779))

(assert (= (and b!6572776 (not c!1208423)) b!6572780))

(assert (= (and b!6572779 (not res!2697341)) b!6572778))

(assert (= (and b!6572780 c!1208422) b!6572782))

(assert (= (and b!6572780 (not c!1208422)) b!6572775))

(assert (= (and b!6572782 (not res!2697342)) b!6572783))

(assert (= (or b!6572783 b!6572775) bm!572045))

(assert (= (or b!6572784 b!6572782) bm!572044))

(assert (=> bm!572044 m!7354182))

(declare-fun m!7354210 () Bool)

(assert (=> b!6572778 m!7354210))

(declare-fun m!7354212 () Bool)

(assert (=> b!6572779 m!7354212))

(declare-fun m!7354214 () Bool)

(assert (=> bm!572045 m!7354214))

(assert (=> b!6572370 d!2062042))

(declare-fun d!2062048 () Bool)

(assert (=> d!2062048 (= (matchR!8632 lt!2408988 s!2326) (matchRSpec!3550 lt!2408988 s!2326))))

(declare-fun lt!2409045 () Unit!159131)

(declare-fun choose!49102 (Regex!16449 List!65646) Unit!159131)

(assert (=> d!2062048 (= lt!2409045 (choose!49102 lt!2408988 s!2326))))

(assert (=> d!2062048 (validRegex!8185 lt!2408988)))

(assert (=> d!2062048 (= (mainMatchTheorem!3550 lt!2408988 s!2326) lt!2409045)))

(declare-fun bs!1678806 () Bool)

(assert (= bs!1678806 d!2062048))

(assert (=> bs!1678806 m!7353934))

(assert (=> bs!1678806 m!7353936))

(declare-fun m!7354222 () Bool)

(assert (=> bs!1678806 m!7354222))

(assert (=> bs!1678806 m!7354190))

(assert (=> b!6572370 d!2062048))

(declare-fun d!2062052 () Bool)

(declare-fun c!1208430 () Bool)

(assert (=> d!2062052 (= c!1208430 (isEmpty!37777 s!2326))))

(declare-fun e!3978316 () Bool)

(assert (=> d!2062052 (= (matchZipper!2461 z!1189 s!2326) e!3978316)))

(declare-fun b!6572797 () Bool)

(assert (=> b!6572797 (= e!3978316 (nullableZipper!2194 z!1189))))

(declare-fun b!6572798 () Bool)

(assert (=> b!6572798 (= e!3978316 (matchZipper!2461 (derivationStepZipper!2415 z!1189 (head!13349 s!2326)) (tail!12434 s!2326)))))

(assert (= (and d!2062052 c!1208430) b!6572797))

(assert (= (and d!2062052 (not c!1208430)) b!6572798))

(assert (=> d!2062052 m!7354182))

(declare-fun m!7354224 () Bool)

(assert (=> b!6572797 m!7354224))

(assert (=> b!6572798 m!7354188))

(assert (=> b!6572798 m!7354188))

(declare-fun m!7354228 () Bool)

(assert (=> b!6572798 m!7354228))

(assert (=> b!6572798 m!7354184))

(assert (=> b!6572798 m!7354228))

(assert (=> b!6572798 m!7354184))

(declare-fun m!7354230 () Bool)

(assert (=> b!6572798 m!7354230))

(assert (=> b!6572371 d!2062052))

(declare-fun b!6572849 () Bool)

(declare-fun e!3978351 () Regex!16449)

(assert (=> b!6572849 (= e!3978351 (h!71971 (unfocusZipperList!1870 zl!343)))))

(declare-fun b!6572850 () Bool)

(declare-fun e!3978350 () Bool)

(declare-fun e!3978352 () Bool)

(assert (=> b!6572850 (= e!3978350 e!3978352)))

(declare-fun c!1208453 () Bool)

(declare-fun tail!12435 (List!65647) List!65647)

(assert (=> b!6572850 (= c!1208453 (isEmpty!37773 (tail!12435 (unfocusZipperList!1870 zl!343))))))

(declare-fun b!6572851 () Bool)

(declare-fun e!3978348 () Bool)

(assert (=> b!6572851 (= e!3978348 e!3978350)))

(declare-fun c!1208451 () Bool)

(assert (=> b!6572851 (= c!1208451 (isEmpty!37773 (unfocusZipperList!1870 zl!343)))))

(declare-fun d!2062056 () Bool)

(assert (=> d!2062056 e!3978348))

(declare-fun res!2697358 () Bool)

(assert (=> d!2062056 (=> (not res!2697358) (not e!3978348))))

(declare-fun lt!2409052 () Regex!16449)

(assert (=> d!2062056 (= res!2697358 (validRegex!8185 lt!2409052))))

(assert (=> d!2062056 (= lt!2409052 e!3978351)))

(declare-fun c!1208454 () Bool)

(declare-fun e!3978349 () Bool)

(assert (=> d!2062056 (= c!1208454 e!3978349)))

(declare-fun res!2697357 () Bool)

(assert (=> d!2062056 (=> (not res!2697357) (not e!3978349))))

(assert (=> d!2062056 (= res!2697357 ((_ is Cons!65523) (unfocusZipperList!1870 zl!343)))))

(declare-fun lambda!366080 () Int)

(declare-fun forall!15621 (List!65647 Int) Bool)

(assert (=> d!2062056 (forall!15621 (unfocusZipperList!1870 zl!343) lambda!366080)))

(assert (=> d!2062056 (= (generalisedUnion!2293 (unfocusZipperList!1870 zl!343)) lt!2409052)))

(declare-fun b!6572852 () Bool)

(declare-fun isEmptyLang!1836 (Regex!16449) Bool)

(assert (=> b!6572852 (= e!3978350 (isEmptyLang!1836 lt!2409052))))

(declare-fun b!6572853 () Bool)

(assert (=> b!6572853 (= e!3978349 (isEmpty!37773 (t!379293 (unfocusZipperList!1870 zl!343))))))

(declare-fun b!6572854 () Bool)

(declare-fun head!13350 (List!65647) Regex!16449)

(assert (=> b!6572854 (= e!3978352 (= lt!2409052 (head!13350 (unfocusZipperList!1870 zl!343))))))

(declare-fun b!6572855 () Bool)

(declare-fun e!3978347 () Regex!16449)

(assert (=> b!6572855 (= e!3978351 e!3978347)))

(declare-fun c!1208452 () Bool)

(assert (=> b!6572855 (= c!1208452 ((_ is Cons!65523) (unfocusZipperList!1870 zl!343)))))

(declare-fun b!6572856 () Bool)

(assert (=> b!6572856 (= e!3978347 (Union!16449 (h!71971 (unfocusZipperList!1870 zl!343)) (generalisedUnion!2293 (t!379293 (unfocusZipperList!1870 zl!343)))))))

(declare-fun b!6572857 () Bool)

(assert (=> b!6572857 (= e!3978347 EmptyLang!16449)))

(declare-fun b!6572858 () Bool)

(declare-fun isUnion!1266 (Regex!16449) Bool)

(assert (=> b!6572858 (= e!3978352 (isUnion!1266 lt!2409052))))

(assert (= (and d!2062056 res!2697357) b!6572853))

(assert (= (and d!2062056 c!1208454) b!6572849))

(assert (= (and d!2062056 (not c!1208454)) b!6572855))

(assert (= (and b!6572855 c!1208452) b!6572856))

(assert (= (and b!6572855 (not c!1208452)) b!6572857))

(assert (= (and d!2062056 res!2697358) b!6572851))

(assert (= (and b!6572851 c!1208451) b!6572852))

(assert (= (and b!6572851 (not c!1208451)) b!6572850))

(assert (= (and b!6572850 c!1208453) b!6572854))

(assert (= (and b!6572850 (not c!1208453)) b!6572858))

(declare-fun m!7354232 () Bool)

(assert (=> b!6572852 m!7354232))

(declare-fun m!7354234 () Bool)

(assert (=> b!6572856 m!7354234))

(assert (=> b!6572850 m!7353860))

(declare-fun m!7354236 () Bool)

(assert (=> b!6572850 m!7354236))

(assert (=> b!6572850 m!7354236))

(declare-fun m!7354238 () Bool)

(assert (=> b!6572850 m!7354238))

(assert (=> b!6572854 m!7353860))

(declare-fun m!7354240 () Bool)

(assert (=> b!6572854 m!7354240))

(declare-fun m!7354242 () Bool)

(assert (=> b!6572853 m!7354242))

(declare-fun m!7354244 () Bool)

(assert (=> b!6572858 m!7354244))

(declare-fun m!7354246 () Bool)

(assert (=> d!2062056 m!7354246))

(assert (=> d!2062056 m!7353860))

(declare-fun m!7354248 () Bool)

(assert (=> d!2062056 m!7354248))

(assert (=> b!6572851 m!7353860))

(declare-fun m!7354250 () Bool)

(assert (=> b!6572851 m!7354250))

(assert (=> b!6572393 d!2062056))

(declare-fun bs!1678824 () Bool)

(declare-fun d!2062058 () Bool)

(assert (= bs!1678824 (and d!2062058 d!2062056)))

(declare-fun lambda!366085 () Int)

(assert (=> bs!1678824 (= lambda!366085 lambda!366080)))

(declare-fun lt!2409055 () List!65647)

(assert (=> d!2062058 (forall!15621 lt!2409055 lambda!366085)))

(declare-fun e!3978362 () List!65647)

(assert (=> d!2062058 (= lt!2409055 e!3978362)))

(declare-fun c!1208461 () Bool)

(assert (=> d!2062058 (= c!1208461 ((_ is Cons!65524) zl!343))))

(assert (=> d!2062058 (= (unfocusZipperList!1870 zl!343) lt!2409055)))

(declare-fun b!6572874 () Bool)

(assert (=> b!6572874 (= e!3978362 (Cons!65523 (generalisedConcat!2046 (exprs!6333 (h!71972 zl!343))) (unfocusZipperList!1870 (t!379294 zl!343))))))

(declare-fun b!6572875 () Bool)

(assert (=> b!6572875 (= e!3978362 Nil!65523)))

(assert (= (and d!2062058 c!1208461) b!6572874))

(assert (= (and d!2062058 (not c!1208461)) b!6572875))

(declare-fun m!7354268 () Bool)

(assert (=> d!2062058 m!7354268))

(assert (=> b!6572874 m!7353818))

(declare-fun m!7354270 () Bool)

(assert (=> b!6572874 m!7354270))

(assert (=> b!6572393 d!2062058))

(declare-fun bs!1678825 () Bool)

(declare-fun b!6572884 () Bool)

(assert (= bs!1678825 (and b!6572884 b!6572377)))

(declare-fun lambda!366086 () Int)

(assert (=> bs!1678825 (not (= lambda!366086 lambda!366033))))

(assert (=> bs!1678825 (not (= lambda!366086 lambda!366034))))

(declare-fun bs!1678826 () Bool)

(assert (= bs!1678826 (and b!6572884 b!6572783)))

(assert (=> bs!1678826 (= (and (= (reg!16778 r!7292) (reg!16778 lt!2408988)) (= r!7292 lt!2408988)) (= lambda!366086 lambda!366071))))

(declare-fun bs!1678827 () Bool)

(assert (= bs!1678827 (and b!6572884 b!6572775)))

(assert (=> bs!1678827 (not (= lambda!366086 lambda!366073))))

(assert (=> b!6572884 true))

(assert (=> b!6572884 true))

(declare-fun bs!1678829 () Bool)

(declare-fun b!6572876 () Bool)

(assert (= bs!1678829 (and b!6572876 b!6572884)))

(declare-fun lambda!366087 () Int)

(assert (=> bs!1678829 (not (= lambda!366087 lambda!366086))))

(declare-fun bs!1678830 () Bool)

(assert (= bs!1678830 (and b!6572876 b!6572377)))

(assert (=> bs!1678830 (= lambda!366087 lambda!366034)))

(assert (=> bs!1678830 (not (= lambda!366087 lambda!366033))))

(declare-fun bs!1678831 () Bool)

(assert (= bs!1678831 (and b!6572876 b!6572775)))

(assert (=> bs!1678831 (= (and (= (regOne!33410 r!7292) (regOne!33410 lt!2408988)) (= (regTwo!33410 r!7292) (regTwo!33410 lt!2408988))) (= lambda!366087 lambda!366073))))

(declare-fun bs!1678832 () Bool)

(assert (= bs!1678832 (and b!6572876 b!6572783)))

(assert (=> bs!1678832 (not (= lambda!366087 lambda!366071))))

(assert (=> b!6572876 true))

(assert (=> b!6572876 true))

(declare-fun e!3978368 () Bool)

(declare-fun call!572055 () Bool)

(assert (=> b!6572876 (= e!3978368 call!572055)))

(declare-fun b!6572877 () Bool)

(declare-fun c!1208463 () Bool)

(assert (=> b!6572877 (= c!1208463 ((_ is Union!16449) r!7292))))

(declare-fun e!3978364 () Bool)

(declare-fun e!3978366 () Bool)

(assert (=> b!6572877 (= e!3978364 e!3978366)))

(declare-fun b!6572878 () Bool)

(declare-fun c!1208464 () Bool)

(assert (=> b!6572878 (= c!1208464 ((_ is ElementMatch!16449) r!7292))))

(declare-fun e!3978367 () Bool)

(assert (=> b!6572878 (= e!3978367 e!3978364)))

(declare-fun d!2062062 () Bool)

(declare-fun c!1208465 () Bool)

(assert (=> d!2062062 (= c!1208465 ((_ is EmptyExpr!16449) r!7292))))

(declare-fun e!3978365 () Bool)

(assert (=> d!2062062 (= (matchRSpec!3550 r!7292 s!2326) e!3978365)))

(declare-fun bm!572050 () Bool)

(declare-fun call!572056 () Bool)

(assert (=> bm!572050 (= call!572056 (isEmpty!37777 s!2326))))

(declare-fun b!6572879 () Bool)

(declare-fun e!3978369 () Bool)

(assert (=> b!6572879 (= e!3978369 (matchRSpec!3550 (regTwo!33411 r!7292) s!2326))))

(declare-fun b!6572880 () Bool)

(assert (=> b!6572880 (= e!3978366 e!3978369)))

(declare-fun res!2697362 () Bool)

(assert (=> b!6572880 (= res!2697362 (matchRSpec!3550 (regOne!33411 r!7292) s!2326))))

(assert (=> b!6572880 (=> res!2697362 e!3978369)))

(declare-fun b!6572881 () Bool)

(assert (=> b!6572881 (= e!3978366 e!3978368)))

(declare-fun c!1208462 () Bool)

(assert (=> b!6572881 (= c!1208462 ((_ is Star!16449) r!7292))))

(declare-fun b!6572882 () Bool)

(assert (=> b!6572882 (= e!3978365 e!3978367)))

(declare-fun res!2697364 () Bool)

(assert (=> b!6572882 (= res!2697364 (not ((_ is EmptyLang!16449) r!7292)))))

(assert (=> b!6572882 (=> (not res!2697364) (not e!3978367))))

(declare-fun b!6572883 () Bool)

(declare-fun res!2697363 () Bool)

(declare-fun e!3978363 () Bool)

(assert (=> b!6572883 (=> res!2697363 e!3978363)))

(assert (=> b!6572883 (= res!2697363 call!572056)))

(assert (=> b!6572883 (= e!3978368 e!3978363)))

(declare-fun bm!572051 () Bool)

(assert (=> bm!572051 (= call!572055 (Exists!3519 (ite c!1208462 lambda!366086 lambda!366087)))))

(assert (=> b!6572884 (= e!3978363 call!572055)))

(declare-fun b!6572885 () Bool)

(assert (=> b!6572885 (= e!3978365 call!572056)))

(declare-fun b!6572886 () Bool)

(assert (=> b!6572886 (= e!3978364 (= s!2326 (Cons!65522 (c!1208308 r!7292) Nil!65522)))))

(assert (= (and d!2062062 c!1208465) b!6572885))

(assert (= (and d!2062062 (not c!1208465)) b!6572882))

(assert (= (and b!6572882 res!2697364) b!6572878))

(assert (= (and b!6572878 c!1208464) b!6572886))

(assert (= (and b!6572878 (not c!1208464)) b!6572877))

(assert (= (and b!6572877 c!1208463) b!6572880))

(assert (= (and b!6572877 (not c!1208463)) b!6572881))

(assert (= (and b!6572880 (not res!2697362)) b!6572879))

(assert (= (and b!6572881 c!1208462) b!6572883))

(assert (= (and b!6572881 (not c!1208462)) b!6572876))

(assert (= (and b!6572883 (not res!2697363)) b!6572884))

(assert (= (or b!6572884 b!6572876) bm!572051))

(assert (= (or b!6572885 b!6572883) bm!572050))

(assert (=> bm!572050 m!7354182))

(declare-fun m!7354292 () Bool)

(assert (=> b!6572879 m!7354292))

(declare-fun m!7354294 () Bool)

(assert (=> b!6572880 m!7354294))

(declare-fun m!7354298 () Bool)

(assert (=> bm!572051 m!7354298))

(assert (=> b!6572372 d!2062062))

(declare-fun b!6572912 () Bool)

(declare-fun e!3978385 () Bool)

(assert (=> b!6572912 (= e!3978385 (= (head!13349 s!2326) (c!1208308 r!7292)))))

(declare-fun b!6572913 () Bool)

(declare-fun res!2697376 () Bool)

(declare-fun e!3978387 () Bool)

(assert (=> b!6572913 (=> res!2697376 e!3978387)))

(assert (=> b!6572913 (= res!2697376 (not (isEmpty!37777 (tail!12434 s!2326))))))

(declare-fun b!6572914 () Bool)

(assert (=> b!6572914 (= e!3978387 (not (= (head!13349 s!2326) (c!1208308 r!7292))))))

(declare-fun b!6572915 () Bool)

(declare-fun res!2697380 () Bool)

(declare-fun e!3978388 () Bool)

(assert (=> b!6572915 (=> res!2697380 e!3978388)))

(assert (=> b!6572915 (= res!2697380 e!3978385)))

(declare-fun res!2697379 () Bool)

(assert (=> b!6572915 (=> (not res!2697379) (not e!3978385))))

(declare-fun lt!2409058 () Bool)

(assert (=> b!6572915 (= res!2697379 lt!2409058)))

(declare-fun b!6572916 () Bool)

(declare-fun e!3978386 () Bool)

(assert (=> b!6572916 (= e!3978386 (not lt!2409058))))

(declare-fun b!6572917 () Bool)

(declare-fun e!3978384 () Bool)

(assert (=> b!6572917 (= e!3978384 e!3978386)))

(declare-fun c!1208475 () Bool)

(assert (=> b!6572917 (= c!1208475 ((_ is EmptyLang!16449) r!7292))))

(declare-fun b!6572918 () Bool)

(declare-fun res!2697381 () Bool)

(assert (=> b!6572918 (=> (not res!2697381) (not e!3978385))))

(assert (=> b!6572918 (= res!2697381 (isEmpty!37777 (tail!12434 s!2326)))))

(declare-fun b!6572919 () Bool)

(declare-fun res!2697378 () Bool)

(assert (=> b!6572919 (=> (not res!2697378) (not e!3978385))))

(declare-fun call!572064 () Bool)

(assert (=> b!6572919 (= res!2697378 (not call!572064))))

(declare-fun b!6572920 () Bool)

(declare-fun e!3978383 () Bool)

(assert (=> b!6572920 (= e!3978383 e!3978387)))

(declare-fun res!2697375 () Bool)

(assert (=> b!6572920 (=> res!2697375 e!3978387)))

(assert (=> b!6572920 (= res!2697375 call!572064)))

(declare-fun d!2062072 () Bool)

(assert (=> d!2062072 e!3978384))

(declare-fun c!1208476 () Bool)

(assert (=> d!2062072 (= c!1208476 ((_ is EmptyExpr!16449) r!7292))))

(declare-fun e!3978389 () Bool)

(assert (=> d!2062072 (= lt!2409058 e!3978389)))

(declare-fun c!1208474 () Bool)

(assert (=> d!2062072 (= c!1208474 (isEmpty!37777 s!2326))))

(assert (=> d!2062072 (validRegex!8185 r!7292)))

(assert (=> d!2062072 (= (matchR!8632 r!7292 s!2326) lt!2409058)))

(declare-fun b!6572921 () Bool)

(assert (=> b!6572921 (= e!3978384 (= lt!2409058 call!572064))))

(declare-fun b!6572922 () Bool)

(assert (=> b!6572922 (= e!3978389 (matchR!8632 (derivativeStep!5133 r!7292 (head!13349 s!2326)) (tail!12434 s!2326)))))

(declare-fun b!6572923 () Bool)

(assert (=> b!6572923 (= e!3978389 (nullable!6442 r!7292))))

(declare-fun b!6572924 () Bool)

(declare-fun res!2697374 () Bool)

(assert (=> b!6572924 (=> res!2697374 e!3978388)))

(assert (=> b!6572924 (= res!2697374 (not ((_ is ElementMatch!16449) r!7292)))))

(assert (=> b!6572924 (= e!3978386 e!3978388)))

(declare-fun b!6572925 () Bool)

(assert (=> b!6572925 (= e!3978388 e!3978383)))

(declare-fun res!2697377 () Bool)

(assert (=> b!6572925 (=> (not res!2697377) (not e!3978383))))

(assert (=> b!6572925 (= res!2697377 (not lt!2409058))))

(declare-fun bm!572059 () Bool)

(assert (=> bm!572059 (= call!572064 (isEmpty!37777 s!2326))))

(assert (= (and d!2062072 c!1208474) b!6572923))

(assert (= (and d!2062072 (not c!1208474)) b!6572922))

(assert (= (and d!2062072 c!1208476) b!6572921))

(assert (= (and d!2062072 (not c!1208476)) b!6572917))

(assert (= (and b!6572917 c!1208475) b!6572916))

(assert (= (and b!6572917 (not c!1208475)) b!6572924))

(assert (= (and b!6572924 (not res!2697374)) b!6572915))

(assert (= (and b!6572915 res!2697379) b!6572919))

(assert (= (and b!6572919 res!2697378) b!6572918))

(assert (= (and b!6572918 res!2697381) b!6572912))

(assert (= (and b!6572915 (not res!2697380)) b!6572925))

(assert (= (and b!6572925 res!2697377) b!6572920))

(assert (= (and b!6572920 (not res!2697375)) b!6572913))

(assert (= (and b!6572913 (not res!2697376)) b!6572914))

(assert (= (or b!6572921 b!6572919 b!6572920) bm!572059))

(declare-fun m!7354300 () Bool)

(assert (=> b!6572923 m!7354300))

(assert (=> bm!572059 m!7354182))

(assert (=> b!6572913 m!7354184))

(assert (=> b!6572913 m!7354184))

(assert (=> b!6572913 m!7354186))

(assert (=> b!6572914 m!7354188))

(assert (=> d!2062072 m!7354182))

(assert (=> d!2062072 m!7353858))

(assert (=> b!6572912 m!7354188))

(assert (=> b!6572922 m!7354188))

(assert (=> b!6572922 m!7354188))

(declare-fun m!7354302 () Bool)

(assert (=> b!6572922 m!7354302))

(assert (=> b!6572922 m!7354184))

(assert (=> b!6572922 m!7354302))

(assert (=> b!6572922 m!7354184))

(declare-fun m!7354304 () Bool)

(assert (=> b!6572922 m!7354304))

(assert (=> b!6572918 m!7354184))

(assert (=> b!6572918 m!7354184))

(assert (=> b!6572918 m!7354186))

(assert (=> b!6572372 d!2062072))

(declare-fun d!2062074 () Bool)

(assert (=> d!2062074 (= (matchR!8632 r!7292 s!2326) (matchRSpec!3550 r!7292 s!2326))))

(declare-fun lt!2409059 () Unit!159131)

(assert (=> d!2062074 (= lt!2409059 (choose!49102 r!7292 s!2326))))

(assert (=> d!2062074 (validRegex!8185 r!7292)))

(assert (=> d!2062074 (= (mainMatchTheorem!3550 r!7292 s!2326) lt!2409059)))

(declare-fun bs!1678833 () Bool)

(assert (= bs!1678833 d!2062074))

(assert (=> bs!1678833 m!7353842))

(assert (=> bs!1678833 m!7353840))

(declare-fun m!7354306 () Bool)

(assert (=> bs!1678833 m!7354306))

(assert (=> bs!1678833 m!7353858))

(assert (=> b!6572372 d!2062074))

(declare-fun d!2062076 () Bool)

(declare-fun c!1208477 () Bool)

(assert (=> d!2062076 (= c!1208477 (isEmpty!37777 s!2326))))

(declare-fun e!3978390 () Bool)

(assert (=> d!2062076 (= (matchZipper!2461 lt!2408967 s!2326) e!3978390)))

(declare-fun b!6572926 () Bool)

(assert (=> b!6572926 (= e!3978390 (nullableZipper!2194 lt!2408967))))

(declare-fun b!6572927 () Bool)

(assert (=> b!6572927 (= e!3978390 (matchZipper!2461 (derivationStepZipper!2415 lt!2408967 (head!13349 s!2326)) (tail!12434 s!2326)))))

(assert (= (and d!2062076 c!1208477) b!6572926))

(assert (= (and d!2062076 (not c!1208477)) b!6572927))

(assert (=> d!2062076 m!7354182))

(declare-fun m!7354308 () Bool)

(assert (=> b!6572926 m!7354308))

(assert (=> b!6572927 m!7354188))

(assert (=> b!6572927 m!7354188))

(declare-fun m!7354310 () Bool)

(assert (=> b!6572927 m!7354310))

(assert (=> b!6572927 m!7354184))

(assert (=> b!6572927 m!7354310))

(assert (=> b!6572927 m!7354184))

(declare-fun m!7354312 () Bool)

(assert (=> b!6572927 m!7354312))

(assert (=> b!6572395 d!2062076))

(declare-fun d!2062078 () Bool)

(declare-fun c!1208478 () Bool)

(assert (=> d!2062078 (= c!1208478 (isEmpty!37777 (t!379292 s!2326)))))

(declare-fun e!3978391 () Bool)

(assert (=> d!2062078 (= (matchZipper!2461 lt!2408984 (t!379292 s!2326)) e!3978391)))

(declare-fun b!6572928 () Bool)

(assert (=> b!6572928 (= e!3978391 (nullableZipper!2194 lt!2408984))))

(declare-fun b!6572929 () Bool)

(assert (=> b!6572929 (= e!3978391 (matchZipper!2461 (derivationStepZipper!2415 lt!2408984 (head!13349 (t!379292 s!2326))) (tail!12434 (t!379292 s!2326))))))

(assert (= (and d!2062078 c!1208478) b!6572928))

(assert (= (and d!2062078 (not c!1208478)) b!6572929))

(assert (=> d!2062078 m!7354142))

(declare-fun m!7354314 () Bool)

(assert (=> b!6572928 m!7354314))

(assert (=> b!6572929 m!7354146))

(assert (=> b!6572929 m!7354146))

(declare-fun m!7354316 () Bool)

(assert (=> b!6572929 m!7354316))

(assert (=> b!6572929 m!7354150))

(assert (=> b!6572929 m!7354316))

(assert (=> b!6572929 m!7354150))

(declare-fun m!7354320 () Bool)

(assert (=> b!6572929 m!7354320))

(assert (=> b!6572395 d!2062078))

(declare-fun c!1208506 () Bool)

(declare-fun c!1208507 () Bool)

(declare-fun bm!572076 () Bool)

(declare-fun call!572081 () Int)

(assert (=> bm!572076 (= call!572081 (regexDepth!346 (ite c!1208506 (reg!16778 r!7292) (ite c!1208507 (regTwo!33411 r!7292) (regOne!33410 r!7292)))))))

(declare-fun call!572087 () Int)

(declare-fun call!572085 () Int)

(declare-fun bm!572077 () Bool)

(declare-fun call!572083 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!572077 (= call!572085 (maxBigInt!0 (ite c!1208507 call!572087 call!572083) (ite c!1208507 call!572083 call!572087)))))

(declare-fun bm!572078 () Bool)

(declare-fun call!572086 () Int)

(declare-fun call!572084 () Int)

(assert (=> bm!572078 (= call!572086 call!572084)))

(declare-fun b!6572980 () Bool)

(declare-fun e!3978423 () Int)

(declare-fun e!3978429 () Int)

(assert (=> b!6572980 (= e!3978423 e!3978429)))

(declare-fun c!1208505 () Bool)

(assert (=> b!6572980 (= c!1208505 ((_ is Concat!25294) r!7292))))

(declare-fun b!6572981 () Bool)

(declare-fun e!3978426 () Int)

(declare-fun e!3978430 () Int)

(assert (=> b!6572981 (= e!3978426 e!3978430)))

(assert (=> b!6572981 (= c!1208506 ((_ is Star!16449) r!7292))))

(declare-fun b!6572982 () Bool)

(assert (=> b!6572982 (= e!3978430 (+ 1 call!572081))))

(declare-fun b!6572983 () Bool)

(assert (=> b!6572983 (= e!3978429 (+ 1 call!572085))))

(declare-fun b!6572984 () Bool)

(declare-fun e!3978431 () Bool)

(declare-fun e!3978422 () Bool)

(assert (=> b!6572984 (= e!3978431 e!3978422)))

(declare-fun c!1208511 () Bool)

(assert (=> b!6572984 (= c!1208511 ((_ is Concat!25294) r!7292))))

(declare-fun b!6572985 () Bool)

(declare-fun e!3978425 () Bool)

(declare-fun lt!2409077 () Int)

(declare-fun call!572082 () Int)

(assert (=> b!6572985 (= e!3978425 (> lt!2409077 call!572082))))

(declare-fun b!6572986 () Bool)

(assert (=> b!6572986 (= e!3978426 1)))

(declare-fun b!6572987 () Bool)

(assert (=> b!6572987 (= e!3978423 (+ 1 call!572085))))

(declare-fun b!6572988 () Bool)

(assert (=> b!6572988 (= c!1208507 ((_ is Union!16449) r!7292))))

(assert (=> b!6572988 (= e!3978430 e!3978423)))

(declare-fun bm!572079 () Bool)

(declare-fun c!1208510 () Bool)

(assert (=> bm!572079 (= call!572082 (regexDepth!346 (ite c!1208510 (regTwo!33411 r!7292) (regTwo!33410 r!7292))))))

(declare-fun b!6572989 () Bool)

(declare-fun e!3978424 () Bool)

(assert (=> b!6572989 (= e!3978424 (> lt!2409077 call!572082))))

(declare-fun bm!572080 () Bool)

(assert (=> bm!572080 (= call!572083 call!572081)))

(declare-fun d!2062080 () Bool)

(declare-fun e!3978428 () Bool)

(assert (=> d!2062080 e!3978428))

(declare-fun res!2697394 () Bool)

(assert (=> d!2062080 (=> (not res!2697394) (not e!3978428))))

(assert (=> d!2062080 (= res!2697394 (> lt!2409077 0))))

(assert (=> d!2062080 (= lt!2409077 e!3978426)))

(declare-fun c!1208509 () Bool)

(assert (=> d!2062080 (= c!1208509 ((_ is ElementMatch!16449) r!7292))))

(assert (=> d!2062080 (= (regexDepth!346 r!7292) lt!2409077)))

(declare-fun b!6572990 () Bool)

(assert (=> b!6572990 (= e!3978431 e!3978424)))

(declare-fun res!2697393 () Bool)

(assert (=> b!6572990 (= res!2697393 (> lt!2409077 call!572084))))

(assert (=> b!6572990 (=> (not res!2697393) (not e!3978424))))

(declare-fun b!6572991 () Bool)

(declare-fun c!1208508 () Bool)

(assert (=> b!6572991 (= c!1208508 ((_ is Star!16449) r!7292))))

(declare-fun e!3978427 () Bool)

(assert (=> b!6572991 (= e!3978422 e!3978427)))

(declare-fun b!6572992 () Bool)

(assert (=> b!6572992 (= e!3978427 (> lt!2409077 call!572086))))

(declare-fun b!6572993 () Bool)

(assert (=> b!6572993 (= e!3978429 1)))

(declare-fun b!6572994 () Bool)

(declare-fun res!2697392 () Bool)

(assert (=> b!6572994 (=> (not res!2697392) (not e!3978425))))

(assert (=> b!6572994 (= res!2697392 (> lt!2409077 call!572086))))

(assert (=> b!6572994 (= e!3978422 e!3978425)))

(declare-fun bm!572081 () Bool)

(assert (=> bm!572081 (= call!572084 (regexDepth!346 (ite c!1208510 (regOne!33411 r!7292) (ite c!1208511 (regOne!33410 r!7292) (reg!16778 r!7292)))))))

(declare-fun b!6572995 () Bool)

(assert (=> b!6572995 (= e!3978427 (= lt!2409077 1))))

(declare-fun bm!572082 () Bool)

(assert (=> bm!572082 (= call!572087 (regexDepth!346 (ite c!1208507 (regOne!33411 r!7292) (regTwo!33410 r!7292))))))

(declare-fun b!6572996 () Bool)

(assert (=> b!6572996 (= e!3978428 e!3978431)))

(assert (=> b!6572996 (= c!1208510 ((_ is Union!16449) r!7292))))

(assert (= (and d!2062080 c!1208509) b!6572986))

(assert (= (and d!2062080 (not c!1208509)) b!6572981))

(assert (= (and b!6572981 c!1208506) b!6572982))

(assert (= (and b!6572981 (not c!1208506)) b!6572988))

(assert (= (and b!6572988 c!1208507) b!6572987))

(assert (= (and b!6572988 (not c!1208507)) b!6572980))

(assert (= (and b!6572980 c!1208505) b!6572983))

(assert (= (and b!6572980 (not c!1208505)) b!6572993))

(assert (= (or b!6572987 b!6572983) bm!572080))

(assert (= (or b!6572987 b!6572983) bm!572082))

(assert (= (or b!6572987 b!6572983) bm!572077))

(assert (= (or b!6572982 bm!572080) bm!572076))

(assert (= (and d!2062080 res!2697394) b!6572996))

(assert (= (and b!6572996 c!1208510) b!6572990))

(assert (= (and b!6572996 (not c!1208510)) b!6572984))

(assert (= (and b!6572990 res!2697393) b!6572989))

(assert (= (and b!6572984 c!1208511) b!6572994))

(assert (= (and b!6572984 (not c!1208511)) b!6572991))

(assert (= (and b!6572994 res!2697392) b!6572985))

(assert (= (and b!6572991 c!1208508) b!6572992))

(assert (= (and b!6572991 (not c!1208508)) b!6572995))

(assert (= (or b!6572994 b!6572992) bm!572078))

(assert (= (or b!6572989 b!6572985) bm!572079))

(assert (= (or b!6572990 bm!572078) bm!572081))

(declare-fun m!7354358 () Bool)

(assert (=> bm!572081 m!7354358))

(declare-fun m!7354360 () Bool)

(assert (=> bm!572077 m!7354360))

(declare-fun m!7354362 () Bool)

(assert (=> bm!572082 m!7354362))

(declare-fun m!7354364 () Bool)

(assert (=> bm!572079 m!7354364))

(declare-fun m!7354366 () Bool)

(assert (=> bm!572076 m!7354366))

(assert (=> b!6572396 d!2062080))

(declare-fun c!1208514 () Bool)

(declare-fun c!1208515 () Bool)

(declare-fun call!572088 () Int)

(declare-fun bm!572083 () Bool)

(assert (=> bm!572083 (= call!572088 (regexDepth!346 (ite c!1208514 (reg!16778 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))) (ite c!1208515 (regTwo!33411 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))) (regOne!33410 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343)))))))))))

(declare-fun call!572094 () Int)

(declare-fun bm!572084 () Bool)

(declare-fun call!572092 () Int)

(declare-fun call!572090 () Int)

(assert (=> bm!572084 (= call!572092 (maxBigInt!0 (ite c!1208515 call!572094 call!572090) (ite c!1208515 call!572090 call!572094)))))

(declare-fun bm!572085 () Bool)

(declare-fun call!572093 () Int)

(declare-fun call!572091 () Int)

(assert (=> bm!572085 (= call!572093 call!572091)))

(declare-fun b!6573002 () Bool)

(declare-fun e!3978435 () Int)

(declare-fun e!3978441 () Int)

(assert (=> b!6573002 (= e!3978435 e!3978441)))

(declare-fun c!1208513 () Bool)

(assert (=> b!6573002 (= c!1208513 ((_ is Concat!25294) (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun b!6573003 () Bool)

(declare-fun e!3978438 () Int)

(declare-fun e!3978442 () Int)

(assert (=> b!6573003 (= e!3978438 e!3978442)))

(assert (=> b!6573003 (= c!1208514 ((_ is Star!16449) (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun b!6573004 () Bool)

(assert (=> b!6573004 (= e!3978442 (+ 1 call!572088))))

(declare-fun b!6573005 () Bool)

(assert (=> b!6573005 (= e!3978441 (+ 1 call!572092))))

(declare-fun b!6573006 () Bool)

(declare-fun e!3978443 () Bool)

(declare-fun e!3978434 () Bool)

(assert (=> b!6573006 (= e!3978443 e!3978434)))

(declare-fun c!1208519 () Bool)

(assert (=> b!6573006 (= c!1208519 ((_ is Concat!25294) (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun b!6573007 () Bool)

(declare-fun e!3978437 () Bool)

(declare-fun lt!2409082 () Int)

(declare-fun call!572089 () Int)

(assert (=> b!6573007 (= e!3978437 (> lt!2409082 call!572089))))

(declare-fun b!6573008 () Bool)

(assert (=> b!6573008 (= e!3978438 1)))

(declare-fun b!6573009 () Bool)

(assert (=> b!6573009 (= e!3978435 (+ 1 call!572092))))

(declare-fun b!6573010 () Bool)

(assert (=> b!6573010 (= c!1208515 ((_ is Union!16449) (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(assert (=> b!6573010 (= e!3978442 e!3978435)))

(declare-fun bm!572086 () Bool)

(declare-fun c!1208518 () Bool)

(assert (=> bm!572086 (= call!572089 (regexDepth!346 (ite c!1208518 (regTwo!33411 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))) (regTwo!33410 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))))

(declare-fun b!6573011 () Bool)

(declare-fun e!3978436 () Bool)

(assert (=> b!6573011 (= e!3978436 (> lt!2409082 call!572089))))

(declare-fun bm!572087 () Bool)

(assert (=> bm!572087 (= call!572090 call!572088)))

(declare-fun d!2062100 () Bool)

(declare-fun e!3978440 () Bool)

(assert (=> d!2062100 e!3978440))

(declare-fun res!2697398 () Bool)

(assert (=> d!2062100 (=> (not res!2697398) (not e!3978440))))

(assert (=> d!2062100 (= res!2697398 (> lt!2409082 0))))

(assert (=> d!2062100 (= lt!2409082 e!3978438)))

(declare-fun c!1208517 () Bool)

(assert (=> d!2062100 (= c!1208517 ((_ is ElementMatch!16449) (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(assert (=> d!2062100 (= (regexDepth!346 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))) lt!2409082)))

(declare-fun b!6573012 () Bool)

(assert (=> b!6573012 (= e!3978443 e!3978436)))

(declare-fun res!2697397 () Bool)

(assert (=> b!6573012 (= res!2697397 (> lt!2409082 call!572091))))

(assert (=> b!6573012 (=> (not res!2697397) (not e!3978436))))

(declare-fun b!6573013 () Bool)

(declare-fun c!1208516 () Bool)

(assert (=> b!6573013 (= c!1208516 ((_ is Star!16449) (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun e!3978439 () Bool)

(assert (=> b!6573013 (= e!3978434 e!3978439)))

(declare-fun b!6573014 () Bool)

(assert (=> b!6573014 (= e!3978439 (> lt!2409082 call!572093))))

(declare-fun b!6573015 () Bool)

(assert (=> b!6573015 (= e!3978441 1)))

(declare-fun b!6573016 () Bool)

(declare-fun res!2697396 () Bool)

(assert (=> b!6573016 (=> (not res!2697396) (not e!3978437))))

(assert (=> b!6573016 (= res!2697396 (> lt!2409082 call!572093))))

(assert (=> b!6573016 (= e!3978434 e!3978437)))

(declare-fun bm!572088 () Bool)

(assert (=> bm!572088 (= call!572091 (regexDepth!346 (ite c!1208518 (regOne!33411 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))) (ite c!1208519 (regOne!33410 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))) (reg!16778 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343)))))))))))

(declare-fun b!6573017 () Bool)

(assert (=> b!6573017 (= e!3978439 (= lt!2409082 1))))

(declare-fun bm!572089 () Bool)

(assert (=> bm!572089 (= call!572094 (regexDepth!346 (ite c!1208515 (regOne!33411 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))) (regTwo!33410 (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))))

(declare-fun b!6573018 () Bool)

(assert (=> b!6573018 (= e!3978440 e!3978443)))

(assert (=> b!6573018 (= c!1208518 ((_ is Union!16449) (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(assert (= (and d!2062100 c!1208517) b!6573008))

(assert (= (and d!2062100 (not c!1208517)) b!6573003))

(assert (= (and b!6573003 c!1208514) b!6573004))

(assert (= (and b!6573003 (not c!1208514)) b!6573010))

(assert (= (and b!6573010 c!1208515) b!6573009))

(assert (= (and b!6573010 (not c!1208515)) b!6573002))

(assert (= (and b!6573002 c!1208513) b!6573005))

(assert (= (and b!6573002 (not c!1208513)) b!6573015))

(assert (= (or b!6573009 b!6573005) bm!572087))

(assert (= (or b!6573009 b!6573005) bm!572089))

(assert (= (or b!6573009 b!6573005) bm!572084))

(assert (= (or b!6573004 bm!572087) bm!572083))

(assert (= (and d!2062100 res!2697398) b!6573018))

(assert (= (and b!6573018 c!1208518) b!6573012))

(assert (= (and b!6573018 (not c!1208518)) b!6573006))

(assert (= (and b!6573012 res!2697397) b!6573011))

(assert (= (and b!6573006 c!1208519) b!6573016))

(assert (= (and b!6573006 (not c!1208519)) b!6573013))

(assert (= (and b!6573016 res!2697396) b!6573007))

(assert (= (and b!6573013 c!1208516) b!6573014))

(assert (= (and b!6573013 (not c!1208516)) b!6573017))

(assert (= (or b!6573016 b!6573014) bm!572085))

(assert (= (or b!6573011 b!6573007) bm!572086))

(assert (= (or b!6573012 bm!572085) bm!572088))

(declare-fun m!7354380 () Bool)

(assert (=> bm!572088 m!7354380))

(declare-fun m!7354382 () Bool)

(assert (=> bm!572084 m!7354382))

(declare-fun m!7354384 () Bool)

(assert (=> bm!572089 m!7354384))

(declare-fun m!7354386 () Bool)

(assert (=> bm!572086 m!7354386))

(declare-fun m!7354388 () Bool)

(assert (=> bm!572083 m!7354388))

(assert (=> b!6572396 d!2062100))

(declare-fun bs!1678847 () Bool)

(declare-fun d!2062104 () Bool)

(assert (= bs!1678847 (and d!2062104 d!2062056)))

(declare-fun lambda!366102 () Int)

(assert (=> bs!1678847 (= lambda!366102 lambda!366080)))

(declare-fun bs!1678848 () Bool)

(assert (= bs!1678848 (and d!2062104 d!2062058)))

(assert (=> bs!1678848 (= lambda!366102 lambda!366085)))

(declare-fun b!6573065 () Bool)

(declare-fun e!3978477 () Bool)

(declare-fun e!3978476 () Bool)

(assert (=> b!6573065 (= e!3978477 e!3978476)))

(declare-fun c!1208537 () Bool)

(assert (=> b!6573065 (= c!1208537 (isEmpty!37773 (tail!12435 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun b!6573066 () Bool)

(declare-fun lt!2409092 () Regex!16449)

(declare-fun isEmptyExpr!1827 (Regex!16449) Bool)

(assert (=> b!6573066 (= e!3978477 (isEmptyExpr!1827 lt!2409092))))

(declare-fun b!6573067 () Bool)

(declare-fun e!3978478 () Regex!16449)

(assert (=> b!6573067 (= e!3978478 (Concat!25294 (h!71971 (t!379293 (exprs!6333 (h!71972 zl!343)))) (generalisedConcat!2046 (t!379293 (t!379293 (exprs!6333 (h!71972 zl!343)))))))))

(declare-fun b!6573068 () Bool)

(declare-fun e!3978480 () Regex!16449)

(assert (=> b!6573068 (= e!3978480 e!3978478)))

(declare-fun c!1208536 () Bool)

(assert (=> b!6573068 (= c!1208536 ((_ is Cons!65523) (t!379293 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun e!3978479 () Bool)

(assert (=> d!2062104 e!3978479))

(declare-fun res!2697418 () Bool)

(assert (=> d!2062104 (=> (not res!2697418) (not e!3978479))))

(assert (=> d!2062104 (= res!2697418 (validRegex!8185 lt!2409092))))

(assert (=> d!2062104 (= lt!2409092 e!3978480)))

(declare-fun c!1208534 () Bool)

(declare-fun e!3978481 () Bool)

(assert (=> d!2062104 (= c!1208534 e!3978481)))

(declare-fun res!2697417 () Bool)

(assert (=> d!2062104 (=> (not res!2697417) (not e!3978481))))

(assert (=> d!2062104 (= res!2697417 ((_ is Cons!65523) (t!379293 (exprs!6333 (h!71972 zl!343)))))))

(assert (=> d!2062104 (forall!15621 (t!379293 (exprs!6333 (h!71972 zl!343))) lambda!366102)))

(assert (=> d!2062104 (= (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343)))) lt!2409092)))

(declare-fun b!6573069 () Bool)

(assert (=> b!6573069 (= e!3978479 e!3978477)))

(declare-fun c!1208535 () Bool)

(assert (=> b!6573069 (= c!1208535 (isEmpty!37773 (t!379293 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun b!6573070 () Bool)

(assert (=> b!6573070 (= e!3978481 (isEmpty!37773 (t!379293 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun b!6573071 () Bool)

(assert (=> b!6573071 (= e!3978480 (h!71971 (t!379293 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun b!6573072 () Bool)

(assert (=> b!6573072 (= e!3978476 (= lt!2409092 (head!13350 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun b!6573073 () Bool)

(declare-fun isConcat!1350 (Regex!16449) Bool)

(assert (=> b!6573073 (= e!3978476 (isConcat!1350 lt!2409092))))

(declare-fun b!6573074 () Bool)

(assert (=> b!6573074 (= e!3978478 EmptyExpr!16449)))

(assert (= (and d!2062104 res!2697417) b!6573070))

(assert (= (and d!2062104 c!1208534) b!6573071))

(assert (= (and d!2062104 (not c!1208534)) b!6573068))

(assert (= (and b!6573068 c!1208536) b!6573067))

(assert (= (and b!6573068 (not c!1208536)) b!6573074))

(assert (= (and d!2062104 res!2697418) b!6573069))

(assert (= (and b!6573069 c!1208535) b!6573066))

(assert (= (and b!6573069 (not c!1208535)) b!6573065))

(assert (= (and b!6573065 c!1208537) b!6573072))

(assert (= (and b!6573065 (not c!1208537)) b!6573073))

(declare-fun m!7354414 () Bool)

(assert (=> b!6573065 m!7354414))

(assert (=> b!6573065 m!7354414))

(declare-fun m!7354416 () Bool)

(assert (=> b!6573065 m!7354416))

(assert (=> b!6573069 m!7353846))

(declare-fun m!7354418 () Bool)

(assert (=> b!6573073 m!7354418))

(declare-fun m!7354420 () Bool)

(assert (=> b!6573072 m!7354420))

(declare-fun m!7354422 () Bool)

(assert (=> b!6573067 m!7354422))

(declare-fun m!7354424 () Bool)

(assert (=> b!6573070 m!7354424))

(declare-fun m!7354426 () Bool)

(assert (=> d!2062104 m!7354426))

(declare-fun m!7354428 () Bool)

(assert (=> d!2062104 m!7354428))

(declare-fun m!7354430 () Bool)

(assert (=> b!6573066 m!7354430))

(assert (=> b!6572396 d!2062104))

(declare-fun d!2062114 () Bool)

(declare-fun e!3978491 () Bool)

(assert (=> d!2062114 (= (matchZipper!2461 ((_ map or) lt!2408974 lt!2408976) (t!379292 s!2326)) e!3978491)))

(declare-fun res!2697426 () Bool)

(assert (=> d!2062114 (=> res!2697426 e!3978491)))

(assert (=> d!2062114 (= res!2697426 (matchZipper!2461 lt!2408974 (t!379292 s!2326)))))

(declare-fun lt!2409097 () Unit!159131)

(declare-fun choose!49103 ((InoxSet Context!11666) (InoxSet Context!11666) List!65646) Unit!159131)

(assert (=> d!2062114 (= lt!2409097 (choose!49103 lt!2408974 lt!2408976 (t!379292 s!2326)))))

(assert (=> d!2062114 (= (lemmaZipperConcatMatchesSameAsBothZippers!1280 lt!2408974 lt!2408976 (t!379292 s!2326)) lt!2409097)))

(declare-fun b!6573086 () Bool)

(assert (=> b!6573086 (= e!3978491 (matchZipper!2461 lt!2408976 (t!379292 s!2326)))))

(assert (= (and d!2062114 (not res!2697426)) b!6573086))

(assert (=> d!2062114 m!7353824))

(assert (=> d!2062114 m!7353822))

(declare-fun m!7354452 () Bool)

(assert (=> d!2062114 m!7354452))

(assert (=> b!6573086 m!7353854))

(assert (=> b!6572376 d!2062114))

(declare-fun d!2062126 () Bool)

(declare-fun c!1208540 () Bool)

(assert (=> d!2062126 (= c!1208540 (isEmpty!37777 (t!379292 s!2326)))))

(declare-fun e!3978492 () Bool)

(assert (=> d!2062126 (= (matchZipper!2461 lt!2408974 (t!379292 s!2326)) e!3978492)))

(declare-fun b!6573087 () Bool)

(assert (=> b!6573087 (= e!3978492 (nullableZipper!2194 lt!2408974))))

(declare-fun b!6573088 () Bool)

(assert (=> b!6573088 (= e!3978492 (matchZipper!2461 (derivationStepZipper!2415 lt!2408974 (head!13349 (t!379292 s!2326))) (tail!12434 (t!379292 s!2326))))))

(assert (= (and d!2062126 c!1208540) b!6573087))

(assert (= (and d!2062126 (not c!1208540)) b!6573088))

(assert (=> d!2062126 m!7354142))

(declare-fun m!7354454 () Bool)

(assert (=> b!6573087 m!7354454))

(assert (=> b!6573088 m!7354146))

(assert (=> b!6573088 m!7354146))

(declare-fun m!7354456 () Bool)

(assert (=> b!6573088 m!7354456))

(assert (=> b!6573088 m!7354150))

(assert (=> b!6573088 m!7354456))

(assert (=> b!6573088 m!7354150))

(declare-fun m!7354458 () Bool)

(assert (=> b!6573088 m!7354458))

(assert (=> b!6572376 d!2062126))

(declare-fun d!2062128 () Bool)

(declare-fun c!1208541 () Bool)

(assert (=> d!2062128 (= c!1208541 (isEmpty!37777 (t!379292 s!2326)))))

(declare-fun e!3978493 () Bool)

(assert (=> d!2062128 (= (matchZipper!2461 ((_ map or) lt!2408974 lt!2408976) (t!379292 s!2326)) e!3978493)))

(declare-fun b!6573089 () Bool)

(assert (=> b!6573089 (= e!3978493 (nullableZipper!2194 ((_ map or) lt!2408974 lt!2408976)))))

(declare-fun b!6573090 () Bool)

(assert (=> b!6573090 (= e!3978493 (matchZipper!2461 (derivationStepZipper!2415 ((_ map or) lt!2408974 lt!2408976) (head!13349 (t!379292 s!2326))) (tail!12434 (t!379292 s!2326))))))

(assert (= (and d!2062128 c!1208541) b!6573089))

(assert (= (and d!2062128 (not c!1208541)) b!6573090))

(assert (=> d!2062128 m!7354142))

(declare-fun m!7354460 () Bool)

(assert (=> b!6573089 m!7354460))

(assert (=> b!6573090 m!7354146))

(assert (=> b!6573090 m!7354146))

(declare-fun m!7354462 () Bool)

(assert (=> b!6573090 m!7354462))

(assert (=> b!6573090 m!7354150))

(assert (=> b!6573090 m!7354462))

(assert (=> b!6573090 m!7354150))

(declare-fun m!7354464 () Bool)

(assert (=> b!6573090 m!7354464))

(assert (=> b!6572376 d!2062128))

(assert (=> b!6572357 d!2062008))

(declare-fun c!1208573 () Bool)

(declare-fun c!1208574 () Bool)

(declare-fun c!1208577 () Bool)

(declare-fun bm!572132 () Bool)

(declare-fun call!572138 () List!65647)

(declare-fun call!572137 () (InoxSet Context!11666))

(assert (=> bm!572132 (= call!572137 (derivationStepZipperDown!1697 (ite c!1208577 (regOne!33411 (h!71971 (exprs!6333 (h!71972 zl!343)))) (ite c!1208574 (regTwo!33410 (h!71971 (exprs!6333 (h!71972 zl!343)))) (ite c!1208573 (regOne!33410 (h!71971 (exprs!6333 (h!71972 zl!343)))) (reg!16778 (h!71971 (exprs!6333 (h!71972 zl!343))))))) (ite (or c!1208577 c!1208574) lt!2408965 (Context!11667 call!572138)) (h!71970 s!2326)))))

(declare-fun b!6573164 () Bool)

(declare-fun e!3978538 () (InoxSet Context!11666))

(declare-fun e!3978539 () (InoxSet Context!11666))

(assert (=> b!6573164 (= e!3978538 e!3978539)))

(assert (=> b!6573164 (= c!1208577 ((_ is Union!16449) (h!71971 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun bm!572133 () Bool)

(declare-fun call!572141 () (InoxSet Context!11666))

(declare-fun call!572142 () (InoxSet Context!11666))

(assert (=> bm!572133 (= call!572141 call!572142)))

(declare-fun d!2062130 () Bool)

(declare-fun c!1208575 () Bool)

(assert (=> d!2062130 (= c!1208575 (and ((_ is ElementMatch!16449) (h!71971 (exprs!6333 (h!71972 zl!343)))) (= (c!1208308 (h!71971 (exprs!6333 (h!71972 zl!343)))) (h!71970 s!2326))))))

(assert (=> d!2062130 (= (derivationStepZipperDown!1697 (h!71971 (exprs!6333 (h!71972 zl!343))) lt!2408965 (h!71970 s!2326)) e!3978538)))

(declare-fun b!6573165 () Bool)

(declare-fun e!3978540 () (InoxSet Context!11666))

(declare-fun e!3978541 () (InoxSet Context!11666))

(assert (=> b!6573165 (= e!3978540 e!3978541)))

(assert (=> b!6573165 (= c!1208573 ((_ is Concat!25294) (h!71971 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun b!6573166 () Bool)

(declare-fun e!3978536 () (InoxSet Context!11666))

(assert (=> b!6573166 (= e!3978536 call!572141)))

(declare-fun b!6573167 () Bool)

(assert (=> b!6573167 (= e!3978538 (store ((as const (Array Context!11666 Bool)) false) lt!2408965 true))))

(declare-fun b!6573168 () Bool)

(declare-fun call!572140 () (InoxSet Context!11666))

(assert (=> b!6573168 (= e!3978539 ((_ map or) call!572137 call!572140))))

(declare-fun b!6573169 () Bool)

(declare-fun e!3978537 () Bool)

(assert (=> b!6573169 (= c!1208574 e!3978537)))

(declare-fun res!2697438 () Bool)

(assert (=> b!6573169 (=> (not res!2697438) (not e!3978537))))

(assert (=> b!6573169 (= res!2697438 ((_ is Concat!25294) (h!71971 (exprs!6333 (h!71972 zl!343)))))))

(assert (=> b!6573169 (= e!3978539 e!3978540)))

(declare-fun b!6573170 () Bool)

(assert (=> b!6573170 (= e!3978537 (nullable!6442 (regOne!33410 (h!71971 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun b!6573171 () Bool)

(declare-fun c!1208576 () Bool)

(assert (=> b!6573171 (= c!1208576 ((_ is Star!16449) (h!71971 (exprs!6333 (h!71972 zl!343)))))))

(assert (=> b!6573171 (= e!3978541 e!3978536)))

(declare-fun b!6573172 () Bool)

(assert (=> b!6573172 (= e!3978540 ((_ map or) call!572140 call!572142))))

(declare-fun b!6573173 () Bool)

(assert (=> b!6573173 (= e!3978541 call!572141)))

(declare-fun bm!572134 () Bool)

(declare-fun call!572139 () List!65647)

(assert (=> bm!572134 (= call!572140 (derivationStepZipperDown!1697 (ite c!1208577 (regTwo!33411 (h!71971 (exprs!6333 (h!71972 zl!343)))) (regOne!33410 (h!71971 (exprs!6333 (h!71972 zl!343))))) (ite c!1208577 lt!2408965 (Context!11667 call!572139)) (h!71970 s!2326)))))

(declare-fun b!6573174 () Bool)

(assert (=> b!6573174 (= e!3978536 ((as const (Array Context!11666 Bool)) false))))

(declare-fun bm!572135 () Bool)

(assert (=> bm!572135 (= call!572138 call!572139)))

(declare-fun bm!572136 () Bool)

(assert (=> bm!572136 (= call!572142 call!572137)))

(declare-fun bm!572137 () Bool)

(declare-fun $colon$colon!2290 (List!65647 Regex!16449) List!65647)

(assert (=> bm!572137 (= call!572139 ($colon$colon!2290 (exprs!6333 lt!2408965) (ite (or c!1208574 c!1208573) (regTwo!33410 (h!71971 (exprs!6333 (h!71972 zl!343)))) (h!71971 (exprs!6333 (h!71972 zl!343))))))))

(assert (= (and d!2062130 c!1208575) b!6573167))

(assert (= (and d!2062130 (not c!1208575)) b!6573164))

(assert (= (and b!6573164 c!1208577) b!6573168))

(assert (= (and b!6573164 (not c!1208577)) b!6573169))

(assert (= (and b!6573169 res!2697438) b!6573170))

(assert (= (and b!6573169 c!1208574) b!6573172))

(assert (= (and b!6573169 (not c!1208574)) b!6573165))

(assert (= (and b!6573165 c!1208573) b!6573173))

(assert (= (and b!6573165 (not c!1208573)) b!6573171))

(assert (= (and b!6573171 c!1208576) b!6573166))

(assert (= (and b!6573171 (not c!1208576)) b!6573174))

(assert (= (or b!6573173 b!6573166) bm!572135))

(assert (= (or b!6573173 b!6573166) bm!572133))

(assert (= (or b!6573172 bm!572135) bm!572137))

(assert (= (or b!6573172 bm!572133) bm!572136))

(assert (= (or b!6573168 b!6573172) bm!572134))

(assert (= (or b!6573168 bm!572136) bm!572132))

(declare-fun m!7354476 () Bool)

(assert (=> b!6573170 m!7354476))

(assert (=> b!6573167 m!7353930))

(declare-fun m!7354478 () Bool)

(assert (=> bm!572132 m!7354478))

(declare-fun m!7354480 () Bool)

(assert (=> bm!572137 m!7354480))

(declare-fun m!7354482 () Bool)

(assert (=> bm!572134 m!7354482))

(assert (=> b!6572357 d!2062130))

(declare-fun d!2062134 () Bool)

(declare-fun nullableFct!2368 (Regex!16449) Bool)

(assert (=> d!2062134 (= (nullable!6442 (h!71971 (exprs!6333 (h!71972 zl!343)))) (nullableFct!2368 (h!71971 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun bs!1678855 () Bool)

(assert (= bs!1678855 d!2062134))

(declare-fun m!7354484 () Bool)

(assert (=> bs!1678855 m!7354484))

(assert (=> b!6572357 d!2062134))

(declare-fun e!3978552 () (InoxSet Context!11666))

(declare-fun b!6573192 () Bool)

(declare-fun call!572150 () (InoxSet Context!11666))

(assert (=> b!6573192 (= e!3978552 ((_ map or) call!572150 (derivationStepZipperUp!1623 (Context!11667 (t!379293 (exprs!6333 (Context!11667 (Cons!65523 (h!71971 (exprs!6333 (h!71972 zl!343))) (t!379293 (exprs!6333 (h!71972 zl!343)))))))) (h!71970 s!2326))))))

(declare-fun d!2062136 () Bool)

(declare-fun c!1208586 () Bool)

(declare-fun e!3978554 () Bool)

(assert (=> d!2062136 (= c!1208586 e!3978554)))

(declare-fun res!2697442 () Bool)

(assert (=> d!2062136 (=> (not res!2697442) (not e!3978554))))

(assert (=> d!2062136 (= res!2697442 ((_ is Cons!65523) (exprs!6333 (Context!11667 (Cons!65523 (h!71971 (exprs!6333 (h!71972 zl!343))) (t!379293 (exprs!6333 (h!71972 zl!343))))))))))

(assert (=> d!2062136 (= (derivationStepZipperUp!1623 (Context!11667 (Cons!65523 (h!71971 (exprs!6333 (h!71972 zl!343))) (t!379293 (exprs!6333 (h!71972 zl!343))))) (h!71970 s!2326)) e!3978552)))

(declare-fun bm!572145 () Bool)

(assert (=> bm!572145 (= call!572150 (derivationStepZipperDown!1697 (h!71971 (exprs!6333 (Context!11667 (Cons!65523 (h!71971 (exprs!6333 (h!71972 zl!343))) (t!379293 (exprs!6333 (h!71972 zl!343))))))) (Context!11667 (t!379293 (exprs!6333 (Context!11667 (Cons!65523 (h!71971 (exprs!6333 (h!71972 zl!343))) (t!379293 (exprs!6333 (h!71972 zl!343)))))))) (h!71970 s!2326)))))

(declare-fun b!6573193 () Bool)

(declare-fun e!3978553 () (InoxSet Context!11666))

(assert (=> b!6573193 (= e!3978553 call!572150)))

(declare-fun b!6573194 () Bool)

(assert (=> b!6573194 (= e!3978552 e!3978553)))

(declare-fun c!1208585 () Bool)

(assert (=> b!6573194 (= c!1208585 ((_ is Cons!65523) (exprs!6333 (Context!11667 (Cons!65523 (h!71971 (exprs!6333 (h!71972 zl!343))) (t!379293 (exprs!6333 (h!71972 zl!343))))))))))

(declare-fun b!6573195 () Bool)

(assert (=> b!6573195 (= e!3978553 ((as const (Array Context!11666 Bool)) false))))

(declare-fun b!6573196 () Bool)

(assert (=> b!6573196 (= e!3978554 (nullable!6442 (h!71971 (exprs!6333 (Context!11667 (Cons!65523 (h!71971 (exprs!6333 (h!71972 zl!343))) (t!379293 (exprs!6333 (h!71972 zl!343)))))))))))

(assert (= (and d!2062136 res!2697442) b!6573196))

(assert (= (and d!2062136 c!1208586) b!6573192))

(assert (= (and d!2062136 (not c!1208586)) b!6573194))

(assert (= (and b!6573194 c!1208585) b!6573193))

(assert (= (and b!6573194 (not c!1208585)) b!6573195))

(assert (= (or b!6573192 b!6573193) bm!572145))

(declare-fun m!7354496 () Bool)

(assert (=> b!6573192 m!7354496))

(declare-fun m!7354498 () Bool)

(assert (=> bm!572145 m!7354498))

(declare-fun m!7354500 () Bool)

(assert (=> b!6573196 m!7354500))

(assert (=> b!6572357 d!2062136))

(declare-fun d!2062140 () Bool)

(assert (=> d!2062140 (= (flatMap!1954 z!1189 lambda!366035) (dynLambda!26069 lambda!366035 (h!71972 zl!343)))))

(declare-fun lt!2409103 () Unit!159131)

(assert (=> d!2062140 (= lt!2409103 (choose!49097 z!1189 (h!71972 zl!343) lambda!366035))))

(assert (=> d!2062140 (= z!1189 (store ((as const (Array Context!11666 Bool)) false) (h!71972 zl!343) true))))

(assert (=> d!2062140 (= (lemmaFlatMapOnSingletonSet!1480 z!1189 (h!71972 zl!343) lambda!366035) lt!2409103)))

(declare-fun b_lambda!248587 () Bool)

(assert (=> (not b_lambda!248587) (not d!2062140)))

(declare-fun bs!1678862 () Bool)

(assert (= bs!1678862 d!2062140))

(assert (=> bs!1678862 m!7353888))

(declare-fun m!7354502 () Bool)

(assert (=> bs!1678862 m!7354502))

(declare-fun m!7354504 () Bool)

(assert (=> bs!1678862 m!7354504))

(declare-fun m!7354506 () Bool)

(assert (=> bs!1678862 m!7354506))

(assert (=> b!6572357 d!2062140))

(declare-fun b!6573207 () Bool)

(declare-fun call!572151 () (InoxSet Context!11666))

(declare-fun e!3978561 () (InoxSet Context!11666))

(assert (=> b!6573207 (= e!3978561 ((_ map or) call!572151 (derivationStepZipperUp!1623 (Context!11667 (t!379293 (exprs!6333 (h!71972 zl!343)))) (h!71970 s!2326))))))

(declare-fun d!2062142 () Bool)

(declare-fun c!1208592 () Bool)

(declare-fun e!3978563 () Bool)

(assert (=> d!2062142 (= c!1208592 e!3978563)))

(declare-fun res!2697445 () Bool)

(assert (=> d!2062142 (=> (not res!2697445) (not e!3978563))))

(assert (=> d!2062142 (= res!2697445 ((_ is Cons!65523) (exprs!6333 (h!71972 zl!343))))))

(assert (=> d!2062142 (= (derivationStepZipperUp!1623 (h!71972 zl!343) (h!71970 s!2326)) e!3978561)))

(declare-fun bm!572146 () Bool)

(assert (=> bm!572146 (= call!572151 (derivationStepZipperDown!1697 (h!71971 (exprs!6333 (h!71972 zl!343))) (Context!11667 (t!379293 (exprs!6333 (h!71972 zl!343)))) (h!71970 s!2326)))))

(declare-fun b!6573208 () Bool)

(declare-fun e!3978562 () (InoxSet Context!11666))

(assert (=> b!6573208 (= e!3978562 call!572151)))

(declare-fun b!6573209 () Bool)

(assert (=> b!6573209 (= e!3978561 e!3978562)))

(declare-fun c!1208591 () Bool)

(assert (=> b!6573209 (= c!1208591 ((_ is Cons!65523) (exprs!6333 (h!71972 zl!343))))))

(declare-fun b!6573210 () Bool)

(assert (=> b!6573210 (= e!3978562 ((as const (Array Context!11666 Bool)) false))))

(declare-fun b!6573211 () Bool)

(assert (=> b!6573211 (= e!3978563 (nullable!6442 (h!71971 (exprs!6333 (h!71972 zl!343)))))))

(assert (= (and d!2062142 res!2697445) b!6573211))

(assert (= (and d!2062142 c!1208592) b!6573207))

(assert (= (and d!2062142 (not c!1208592)) b!6573209))

(assert (= (and b!6573209 c!1208591) b!6573208))

(assert (= (and b!6573209 (not c!1208591)) b!6573210))

(assert (= (or b!6573207 b!6573208) bm!572146))

(declare-fun m!7354508 () Bool)

(assert (=> b!6573207 m!7354508))

(declare-fun m!7354512 () Bool)

(assert (=> bm!572146 m!7354512))

(assert (=> b!6573211 m!7353892))

(assert (=> b!6572357 d!2062142))

(declare-fun d!2062144 () Bool)

(assert (=> d!2062144 (= (flatMap!1954 z!1189 lambda!366035) (choose!49096 z!1189 lambda!366035))))

(declare-fun bs!1678863 () Bool)

(assert (= bs!1678863 d!2062144))

(declare-fun m!7354526 () Bool)

(assert (=> bs!1678863 m!7354526))

(assert (=> b!6572357 d!2062144))

(declare-fun d!2062146 () Bool)

(assert (=> d!2062146 (= (isEmpty!37774 (t!379294 zl!343)) ((_ is Nil!65524) (t!379294 zl!343)))))

(assert (=> b!6572398 d!2062146))

(declare-fun d!2062150 () Bool)

(declare-fun choose!49105 (Int) Bool)

(assert (=> d!2062150 (= (Exists!3519 lambda!366033) (choose!49105 lambda!366033))))

(declare-fun bs!1678864 () Bool)

(assert (= bs!1678864 d!2062150))

(declare-fun m!7354532 () Bool)

(assert (=> bs!1678864 m!7354532))

(assert (=> b!6572377 d!2062150))

(declare-fun b!6573289 () Bool)

(declare-fun e!3978603 () Bool)

(declare-fun lt!2409113 () Option!16340)

(assert (=> b!6573289 (= e!3978603 (not (isDefined!13043 lt!2409113)))))

(declare-fun b!6573290 () Bool)

(declare-fun e!3978604 () Option!16340)

(assert (=> b!6573290 (= e!3978604 (Some!16339 (tuple2!66857 Nil!65522 s!2326)))))

(declare-fun b!6573291 () Bool)

(declare-fun res!2697462 () Bool)

(declare-fun e!3978601 () Bool)

(assert (=> b!6573291 (=> (not res!2697462) (not e!3978601))))

(declare-fun get!22755 (Option!16340) tuple2!66856)

(assert (=> b!6573291 (= res!2697462 (matchR!8632 (regOne!33410 r!7292) (_1!36731 (get!22755 lt!2409113))))))

(declare-fun b!6573292 () Bool)

(declare-fun e!3978605 () Option!16340)

(assert (=> b!6573292 (= e!3978604 e!3978605)))

(declare-fun c!1208599 () Bool)

(assert (=> b!6573292 (= c!1208599 ((_ is Nil!65522) s!2326))))

(declare-fun b!6573294 () Bool)

(assert (=> b!6573294 (= e!3978605 None!16339)))

(declare-fun b!6573295 () Bool)

(declare-fun ++!14595 (List!65646 List!65646) List!65646)

(assert (=> b!6573295 (= e!3978601 (= (++!14595 (_1!36731 (get!22755 lt!2409113)) (_2!36731 (get!22755 lt!2409113))) s!2326))))

(declare-fun b!6573296 () Bool)

(declare-fun e!3978602 () Bool)

(assert (=> b!6573296 (= e!3978602 (matchR!8632 (regTwo!33410 r!7292) s!2326))))

(declare-fun b!6573297 () Bool)

(declare-fun res!2697459 () Bool)

(assert (=> b!6573297 (=> (not res!2697459) (not e!3978601))))

(assert (=> b!6573297 (= res!2697459 (matchR!8632 (regTwo!33410 r!7292) (_2!36731 (get!22755 lt!2409113))))))

(declare-fun b!6573293 () Bool)

(declare-fun lt!2409115 () Unit!159131)

(declare-fun lt!2409114 () Unit!159131)

(assert (=> b!6573293 (= lt!2409115 lt!2409114)))

(assert (=> b!6573293 (= (++!14595 (++!14595 Nil!65522 (Cons!65522 (h!71970 s!2326) Nil!65522)) (t!379292 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2592 (List!65646 C!33168 List!65646 List!65646) Unit!159131)

(assert (=> b!6573293 (= lt!2409114 (lemmaMoveElementToOtherListKeepsConcatEq!2592 Nil!65522 (h!71970 s!2326) (t!379292 s!2326) s!2326))))

(assert (=> b!6573293 (= e!3978605 (findConcatSeparation!2754 (regOne!33410 r!7292) (regTwo!33410 r!7292) (++!14595 Nil!65522 (Cons!65522 (h!71970 s!2326) Nil!65522)) (t!379292 s!2326) s!2326))))

(declare-fun d!2062152 () Bool)

(assert (=> d!2062152 e!3978603))

(declare-fun res!2697461 () Bool)

(assert (=> d!2062152 (=> res!2697461 e!3978603)))

(assert (=> d!2062152 (= res!2697461 e!3978601)))

(declare-fun res!2697460 () Bool)

(assert (=> d!2062152 (=> (not res!2697460) (not e!3978601))))

(assert (=> d!2062152 (= res!2697460 (isDefined!13043 lt!2409113))))

(assert (=> d!2062152 (= lt!2409113 e!3978604)))

(declare-fun c!1208598 () Bool)

(assert (=> d!2062152 (= c!1208598 e!3978602)))

(declare-fun res!2697463 () Bool)

(assert (=> d!2062152 (=> (not res!2697463) (not e!3978602))))

(assert (=> d!2062152 (= res!2697463 (matchR!8632 (regOne!33410 r!7292) Nil!65522))))

(assert (=> d!2062152 (validRegex!8185 (regOne!33410 r!7292))))

(assert (=> d!2062152 (= (findConcatSeparation!2754 (regOne!33410 r!7292) (regTwo!33410 r!7292) Nil!65522 s!2326 s!2326) lt!2409113)))

(assert (= (and d!2062152 res!2697463) b!6573296))

(assert (= (and d!2062152 c!1208598) b!6573290))

(assert (= (and d!2062152 (not c!1208598)) b!6573292))

(assert (= (and b!6573292 c!1208599) b!6573294))

(assert (= (and b!6573292 (not c!1208599)) b!6573293))

(assert (= (and d!2062152 res!2697460) b!6573291))

(assert (= (and b!6573291 res!2697462) b!6573297))

(assert (= (and b!6573297 res!2697459) b!6573295))

(assert (= (and d!2062152 (not res!2697461)) b!6573289))

(declare-fun m!7354546 () Bool)

(assert (=> b!6573296 m!7354546))

(declare-fun m!7354548 () Bool)

(assert (=> d!2062152 m!7354548))

(declare-fun m!7354550 () Bool)

(assert (=> d!2062152 m!7354550))

(declare-fun m!7354552 () Bool)

(assert (=> d!2062152 m!7354552))

(declare-fun m!7354554 () Bool)

(assert (=> b!6573297 m!7354554))

(declare-fun m!7354556 () Bool)

(assert (=> b!6573297 m!7354556))

(assert (=> b!6573289 m!7354548))

(assert (=> b!6573291 m!7354554))

(declare-fun m!7354558 () Bool)

(assert (=> b!6573291 m!7354558))

(declare-fun m!7354560 () Bool)

(assert (=> b!6573293 m!7354560))

(assert (=> b!6573293 m!7354560))

(declare-fun m!7354562 () Bool)

(assert (=> b!6573293 m!7354562))

(declare-fun m!7354564 () Bool)

(assert (=> b!6573293 m!7354564))

(assert (=> b!6573293 m!7354560))

(declare-fun m!7354566 () Bool)

(assert (=> b!6573293 m!7354566))

(assert (=> b!6573295 m!7354554))

(declare-fun m!7354568 () Bool)

(assert (=> b!6573295 m!7354568))

(assert (=> b!6572377 d!2062152))

(declare-fun d!2062166 () Bool)

(assert (=> d!2062166 (= (Exists!3519 lambda!366034) (choose!49105 lambda!366034))))

(declare-fun bs!1678870 () Bool)

(assert (= bs!1678870 d!2062166))

(declare-fun m!7354570 () Bool)

(assert (=> bs!1678870 m!7354570))

(assert (=> b!6572377 d!2062166))

(declare-fun bs!1678871 () Bool)

(declare-fun d!2062168 () Bool)

(assert (= bs!1678871 (and d!2062168 b!6572884)))

(declare-fun lambda!366107 () Int)

(assert (=> bs!1678871 (not (= lambda!366107 lambda!366086))))

(declare-fun bs!1678872 () Bool)

(assert (= bs!1678872 (and d!2062168 b!6572876)))

(assert (=> bs!1678872 (not (= lambda!366107 lambda!366087))))

(declare-fun bs!1678873 () Bool)

(assert (= bs!1678873 (and d!2062168 b!6572377)))

(assert (=> bs!1678873 (not (= lambda!366107 lambda!366034))))

(assert (=> bs!1678873 (= lambda!366107 lambda!366033)))

(declare-fun bs!1678874 () Bool)

(assert (= bs!1678874 (and d!2062168 b!6572775)))

(assert (=> bs!1678874 (not (= lambda!366107 lambda!366073))))

(declare-fun bs!1678875 () Bool)

(assert (= bs!1678875 (and d!2062168 b!6572783)))

(assert (=> bs!1678875 (not (= lambda!366107 lambda!366071))))

(assert (=> d!2062168 true))

(assert (=> d!2062168 true))

(assert (=> d!2062168 true))

(assert (=> d!2062168 (= (isDefined!13043 (findConcatSeparation!2754 (regOne!33410 r!7292) (regTwo!33410 r!7292) Nil!65522 s!2326 s!2326)) (Exists!3519 lambda!366107))))

(declare-fun lt!2409118 () Unit!159131)

(declare-fun choose!49106 (Regex!16449 Regex!16449 List!65646) Unit!159131)

(assert (=> d!2062168 (= lt!2409118 (choose!49106 (regOne!33410 r!7292) (regTwo!33410 r!7292) s!2326))))

(assert (=> d!2062168 (validRegex!8185 (regOne!33410 r!7292))))

(assert (=> d!2062168 (= (lemmaFindConcatSeparationEquivalentToExists!2518 (regOne!33410 r!7292) (regTwo!33410 r!7292) s!2326) lt!2409118)))

(declare-fun bs!1678876 () Bool)

(assert (= bs!1678876 d!2062168))

(assert (=> bs!1678876 m!7354552))

(assert (=> bs!1678876 m!7353830))

(assert (=> bs!1678876 m!7353832))

(assert (=> bs!1678876 m!7353830))

(declare-fun m!7354572 () Bool)

(assert (=> bs!1678876 m!7354572))

(declare-fun m!7354574 () Bool)

(assert (=> bs!1678876 m!7354574))

(assert (=> b!6572377 d!2062168))

(declare-fun bs!1678877 () Bool)

(declare-fun d!2062170 () Bool)

(assert (= bs!1678877 (and d!2062170 b!6572884)))

(declare-fun lambda!366112 () Int)

(assert (=> bs!1678877 (not (= lambda!366112 lambda!366086))))

(declare-fun bs!1678878 () Bool)

(assert (= bs!1678878 (and d!2062170 b!6572876)))

(assert (=> bs!1678878 (not (= lambda!366112 lambda!366087))))

(declare-fun bs!1678879 () Bool)

(assert (= bs!1678879 (and d!2062170 b!6572377)))

(assert (=> bs!1678879 (not (= lambda!366112 lambda!366034))))

(declare-fun bs!1678880 () Bool)

(assert (= bs!1678880 (and d!2062170 d!2062168)))

(assert (=> bs!1678880 (= lambda!366112 lambda!366107)))

(assert (=> bs!1678879 (= lambda!366112 lambda!366033)))

(declare-fun bs!1678881 () Bool)

(assert (= bs!1678881 (and d!2062170 b!6572775)))

(assert (=> bs!1678881 (not (= lambda!366112 lambda!366073))))

(declare-fun bs!1678882 () Bool)

(assert (= bs!1678882 (and d!2062170 b!6572783)))

(assert (=> bs!1678882 (not (= lambda!366112 lambda!366071))))

(assert (=> d!2062170 true))

(assert (=> d!2062170 true))

(assert (=> d!2062170 true))

(declare-fun bs!1678883 () Bool)

(assert (= bs!1678883 d!2062170))

(declare-fun lambda!366113 () Int)

(assert (=> bs!1678883 (not (= lambda!366113 lambda!366112))))

(assert (=> bs!1678877 (not (= lambda!366113 lambda!366086))))

(assert (=> bs!1678878 (= lambda!366113 lambda!366087)))

(assert (=> bs!1678879 (= lambda!366113 lambda!366034)))

(assert (=> bs!1678880 (not (= lambda!366113 lambda!366107))))

(assert (=> bs!1678879 (not (= lambda!366113 lambda!366033))))

(assert (=> bs!1678881 (= (and (= (regOne!33410 r!7292) (regOne!33410 lt!2408988)) (= (regTwo!33410 r!7292) (regTwo!33410 lt!2408988))) (= lambda!366113 lambda!366073))))

(assert (=> bs!1678882 (not (= lambda!366113 lambda!366071))))

(assert (=> d!2062170 true))

(assert (=> d!2062170 true))

(assert (=> d!2062170 true))

(assert (=> d!2062170 (= (Exists!3519 lambda!366112) (Exists!3519 lambda!366113))))

(declare-fun lt!2409121 () Unit!159131)

(declare-fun choose!49107 (Regex!16449 Regex!16449 List!65646) Unit!159131)

(assert (=> d!2062170 (= lt!2409121 (choose!49107 (regOne!33410 r!7292) (regTwo!33410 r!7292) s!2326))))

(assert (=> d!2062170 (validRegex!8185 (regOne!33410 r!7292))))

(assert (=> d!2062170 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2056 (regOne!33410 r!7292) (regTwo!33410 r!7292) s!2326) lt!2409121)))

(declare-fun m!7354576 () Bool)

(assert (=> bs!1678883 m!7354576))

(declare-fun m!7354578 () Bool)

(assert (=> bs!1678883 m!7354578))

(declare-fun m!7354580 () Bool)

(assert (=> bs!1678883 m!7354580))

(assert (=> bs!1678883 m!7354552))

(assert (=> b!6572377 d!2062170))

(declare-fun d!2062172 () Bool)

(declare-fun isEmpty!37778 (Option!16340) Bool)

(assert (=> d!2062172 (= (isDefined!13043 (findConcatSeparation!2754 (regOne!33410 r!7292) (regTwo!33410 r!7292) Nil!65522 s!2326 s!2326)) (not (isEmpty!37778 (findConcatSeparation!2754 (regOne!33410 r!7292) (regTwo!33410 r!7292) Nil!65522 s!2326 s!2326))))))

(declare-fun bs!1678884 () Bool)

(assert (= bs!1678884 d!2062172))

(assert (=> bs!1678884 m!7353830))

(declare-fun m!7354582 () Bool)

(assert (=> bs!1678884 m!7354582))

(assert (=> b!6572377 d!2062172))

(declare-fun bs!1678885 () Bool)

(declare-fun d!2062174 () Bool)

(assert (= bs!1678885 (and d!2062174 d!2062056)))

(declare-fun lambda!366116 () Int)

(assert (=> bs!1678885 (= lambda!366116 lambda!366080)))

(declare-fun bs!1678886 () Bool)

(assert (= bs!1678886 (and d!2062174 d!2062058)))

(assert (=> bs!1678886 (= lambda!366116 lambda!366085)))

(declare-fun bs!1678887 () Bool)

(assert (= bs!1678887 (and d!2062174 d!2062104)))

(assert (=> bs!1678887 (= lambda!366116 lambda!366102)))

(assert (=> d!2062174 (= (inv!84369 setElem!44884) (forall!15621 (exprs!6333 setElem!44884) lambda!366116))))

(declare-fun bs!1678888 () Bool)

(assert (= bs!1678888 d!2062174))

(declare-fun m!7354584 () Bool)

(assert (=> bs!1678888 m!7354584))

(assert (=> setNonEmpty!44884 d!2062174))

(declare-fun d!2062176 () Bool)

(declare-fun lt!2409122 () Regex!16449)

(assert (=> d!2062176 (validRegex!8185 lt!2409122)))

(assert (=> d!2062176 (= lt!2409122 (generalisedUnion!2293 (unfocusZipperList!1870 (Cons!65524 lt!2408981 Nil!65524))))))

(assert (=> d!2062176 (= (unfocusZipper!2191 (Cons!65524 lt!2408981 Nil!65524)) lt!2409122)))

(declare-fun bs!1678889 () Bool)

(assert (= bs!1678889 d!2062176))

(declare-fun m!7354586 () Bool)

(assert (=> bs!1678889 m!7354586))

(declare-fun m!7354588 () Bool)

(assert (=> bs!1678889 m!7354588))

(assert (=> bs!1678889 m!7354588))

(declare-fun m!7354590 () Bool)

(assert (=> bs!1678889 m!7354590))

(assert (=> b!6572378 d!2062176))

(assert (=> b!6572379 d!2062028))

(declare-fun d!2062178 () Bool)

(assert (=> d!2062178 (= (nullable!6442 (regOne!33410 (regOne!33410 r!7292))) (nullableFct!2368 (regOne!33410 (regOne!33410 r!7292))))))

(declare-fun bs!1678890 () Bool)

(assert (= bs!1678890 d!2062178))

(declare-fun m!7354592 () Bool)

(assert (=> bs!1678890 m!7354592))

(assert (=> b!6572360 d!2062178))

(declare-fun d!2062180 () Bool)

(declare-fun lt!2409123 () Regex!16449)

(assert (=> d!2062180 (validRegex!8185 lt!2409123)))

(assert (=> d!2062180 (= lt!2409123 (generalisedUnion!2293 (unfocusZipperList!1870 zl!343)))))

(assert (=> d!2062180 (= (unfocusZipper!2191 zl!343) lt!2409123)))

(declare-fun bs!1678891 () Bool)

(assert (= bs!1678891 d!2062180))

(declare-fun m!7354594 () Bool)

(assert (=> bs!1678891 m!7354594))

(assert (=> bs!1678891 m!7353860))

(assert (=> bs!1678891 m!7353860))

(assert (=> bs!1678891 m!7353862))

(assert (=> b!6572381 d!2062180))

(declare-fun b!6573316 () Bool)

(assert (=> b!6573316 true))

(declare-fun bs!1678892 () Bool)

(declare-fun b!6573318 () Bool)

(assert (= bs!1678892 (and b!6573318 b!6573316)))

(declare-fun lt!2409132 () Int)

(declare-fun lambda!366125 () Int)

(declare-fun lt!2409134 () Int)

(declare-fun lambda!366124 () Int)

(assert (=> bs!1678892 (= (= lt!2409132 lt!2409134) (= lambda!366125 lambda!366124))))

(assert (=> b!6573318 true))

(declare-fun d!2062182 () Bool)

(declare-fun e!3978616 () Bool)

(assert (=> d!2062182 e!3978616))

(declare-fun res!2697478 () Bool)

(assert (=> d!2062182 (=> (not res!2697478) (not e!3978616))))

(assert (=> d!2062182 (= res!2697478 (>= lt!2409132 0))))

(declare-fun e!3978617 () Int)

(assert (=> d!2062182 (= lt!2409132 e!3978617)))

(declare-fun c!1208608 () Bool)

(assert (=> d!2062182 (= c!1208608 ((_ is Cons!65524) zl!343))))

(assert (=> d!2062182 (= (zipperDepth!386 zl!343) lt!2409132)))

(assert (=> b!6573316 (= e!3978617 lt!2409134)))

(declare-fun contextDepth!275 (Context!11666) Int)

(assert (=> b!6573316 (= lt!2409134 (maxBigInt!0 (contextDepth!275 (h!71972 zl!343)) (zipperDepth!386 (t!379294 zl!343))))))

(declare-fun lt!2409133 () Unit!159131)

(declare-fun lambda!366123 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!259 (List!65648 Int Int Int) Unit!159131)

(assert (=> b!6573316 (= lt!2409133 (lemmaForallContextDepthBiggerThanTransitive!259 (t!379294 zl!343) lt!2409134 (zipperDepth!386 (t!379294 zl!343)) lambda!366123))))

(declare-fun forall!15623 (List!65648 Int) Bool)

(assert (=> b!6573316 (forall!15623 (t!379294 zl!343) lambda!366124)))

(declare-fun lt!2409135 () Unit!159131)

(assert (=> b!6573316 (= lt!2409135 lt!2409133)))

(declare-fun b!6573317 () Bool)

(assert (=> b!6573317 (= e!3978617 0)))

(assert (=> b!6573318 (= e!3978616 (forall!15623 zl!343 lambda!366125))))

(assert (= (and d!2062182 c!1208608) b!6573316))

(assert (= (and d!2062182 (not c!1208608)) b!6573317))

(assert (= (and d!2062182 res!2697478) b!6573318))

(declare-fun m!7354596 () Bool)

(assert (=> b!6573316 m!7354596))

(declare-fun m!7354598 () Bool)

(assert (=> b!6573316 m!7354598))

(declare-fun m!7354600 () Bool)

(assert (=> b!6573316 m!7354600))

(assert (=> b!6573316 m!7354598))

(declare-fun m!7354602 () Bool)

(assert (=> b!6573316 m!7354602))

(declare-fun m!7354604 () Bool)

(assert (=> b!6573316 m!7354604))

(assert (=> b!6573316 m!7354596))

(assert (=> b!6573316 m!7354598))

(declare-fun m!7354606 () Bool)

(assert (=> b!6573318 m!7354606))

(assert (=> b!6572382 d!2062182))

(declare-fun bs!1678893 () Bool)

(declare-fun b!6573321 () Bool)

(assert (= bs!1678893 (and b!6573321 b!6573316)))

(declare-fun lambda!366126 () Int)

(assert (=> bs!1678893 (= lambda!366126 lambda!366123)))

(declare-fun lt!2409138 () Int)

(declare-fun lambda!366127 () Int)

(assert (=> bs!1678893 (= (= lt!2409138 lt!2409134) (= lambda!366127 lambda!366124))))

(declare-fun bs!1678894 () Bool)

(assert (= bs!1678894 (and b!6573321 b!6573318)))

(assert (=> bs!1678894 (= (= lt!2409138 lt!2409132) (= lambda!366127 lambda!366125))))

(assert (=> b!6573321 true))

(declare-fun bs!1678895 () Bool)

(declare-fun b!6573323 () Bool)

(assert (= bs!1678895 (and b!6573323 b!6573316)))

(declare-fun lt!2409136 () Int)

(declare-fun lambda!366128 () Int)

(assert (=> bs!1678895 (= (= lt!2409136 lt!2409134) (= lambda!366128 lambda!366124))))

(declare-fun bs!1678896 () Bool)

(assert (= bs!1678896 (and b!6573323 b!6573318)))

(assert (=> bs!1678896 (= (= lt!2409136 lt!2409132) (= lambda!366128 lambda!366125))))

(declare-fun bs!1678897 () Bool)

(assert (= bs!1678897 (and b!6573323 b!6573321)))

(assert (=> bs!1678897 (= (= lt!2409136 lt!2409138) (= lambda!366128 lambda!366127))))

(assert (=> b!6573323 true))

(declare-fun d!2062184 () Bool)

(declare-fun e!3978618 () Bool)

(assert (=> d!2062184 e!3978618))

(declare-fun res!2697479 () Bool)

(assert (=> d!2062184 (=> (not res!2697479) (not e!3978618))))

(assert (=> d!2062184 (= res!2697479 (>= lt!2409136 0))))

(declare-fun e!3978619 () Int)

(assert (=> d!2062184 (= lt!2409136 e!3978619)))

(declare-fun c!1208609 () Bool)

(assert (=> d!2062184 (= c!1208609 ((_ is Cons!65524) (Cons!65524 lt!2408965 Nil!65524)))))

(assert (=> d!2062184 (= (zipperDepth!386 (Cons!65524 lt!2408965 Nil!65524)) lt!2409136)))

(assert (=> b!6573321 (= e!3978619 lt!2409138)))

(assert (=> b!6573321 (= lt!2409138 (maxBigInt!0 (contextDepth!275 (h!71972 (Cons!65524 lt!2408965 Nil!65524))) (zipperDepth!386 (t!379294 (Cons!65524 lt!2408965 Nil!65524)))))))

(declare-fun lt!2409137 () Unit!159131)

(assert (=> b!6573321 (= lt!2409137 (lemmaForallContextDepthBiggerThanTransitive!259 (t!379294 (Cons!65524 lt!2408965 Nil!65524)) lt!2409138 (zipperDepth!386 (t!379294 (Cons!65524 lt!2408965 Nil!65524))) lambda!366126))))

(assert (=> b!6573321 (forall!15623 (t!379294 (Cons!65524 lt!2408965 Nil!65524)) lambda!366127)))

(declare-fun lt!2409139 () Unit!159131)

(assert (=> b!6573321 (= lt!2409139 lt!2409137)))

(declare-fun b!6573322 () Bool)

(assert (=> b!6573322 (= e!3978619 0)))

(assert (=> b!6573323 (= e!3978618 (forall!15623 (Cons!65524 lt!2408965 Nil!65524) lambda!366128))))

(assert (= (and d!2062184 c!1208609) b!6573321))

(assert (= (and d!2062184 (not c!1208609)) b!6573322))

(assert (= (and d!2062184 res!2697479) b!6573323))

(declare-fun m!7354608 () Bool)

(assert (=> b!6573321 m!7354608))

(declare-fun m!7354610 () Bool)

(assert (=> b!6573321 m!7354610))

(declare-fun m!7354612 () Bool)

(assert (=> b!6573321 m!7354612))

(assert (=> b!6573321 m!7354610))

(declare-fun m!7354614 () Bool)

(assert (=> b!6573321 m!7354614))

(declare-fun m!7354616 () Bool)

(assert (=> b!6573321 m!7354616))

(assert (=> b!6573321 m!7354608))

(assert (=> b!6573321 m!7354610))

(declare-fun m!7354618 () Bool)

(assert (=> b!6573323 m!7354618))

(assert (=> b!6572382 d!2062184))

(declare-fun bs!1678898 () Bool)

(declare-fun d!2062186 () Bool)

(assert (= bs!1678898 (and d!2062186 d!2062056)))

(declare-fun lambda!366129 () Int)

(assert (=> bs!1678898 (= lambda!366129 lambda!366080)))

(declare-fun bs!1678899 () Bool)

(assert (= bs!1678899 (and d!2062186 d!2062058)))

(assert (=> bs!1678899 (= lambda!366129 lambda!366085)))

(declare-fun bs!1678900 () Bool)

(assert (= bs!1678900 (and d!2062186 d!2062104)))

(assert (=> bs!1678900 (= lambda!366129 lambda!366102)))

(declare-fun bs!1678901 () Bool)

(assert (= bs!1678901 (and d!2062186 d!2062174)))

(assert (=> bs!1678901 (= lambda!366129 lambda!366116)))

(declare-fun b!6573324 () Bool)

(declare-fun e!3978621 () Bool)

(declare-fun e!3978620 () Bool)

(assert (=> b!6573324 (= e!3978621 e!3978620)))

(declare-fun c!1208613 () Bool)

(assert (=> b!6573324 (= c!1208613 (isEmpty!37773 (tail!12435 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun b!6573325 () Bool)

(declare-fun lt!2409140 () Regex!16449)

(assert (=> b!6573325 (= e!3978621 (isEmptyExpr!1827 lt!2409140))))

(declare-fun b!6573326 () Bool)

(declare-fun e!3978622 () Regex!16449)

(assert (=> b!6573326 (= e!3978622 (Concat!25294 (h!71971 (exprs!6333 (h!71972 zl!343))) (generalisedConcat!2046 (t!379293 (exprs!6333 (h!71972 zl!343))))))))

(declare-fun b!6573327 () Bool)

(declare-fun e!3978624 () Regex!16449)

(assert (=> b!6573327 (= e!3978624 e!3978622)))

(declare-fun c!1208612 () Bool)

(assert (=> b!6573327 (= c!1208612 ((_ is Cons!65523) (exprs!6333 (h!71972 zl!343))))))

(declare-fun e!3978623 () Bool)

(assert (=> d!2062186 e!3978623))

(declare-fun res!2697481 () Bool)

(assert (=> d!2062186 (=> (not res!2697481) (not e!3978623))))

(assert (=> d!2062186 (= res!2697481 (validRegex!8185 lt!2409140))))

(assert (=> d!2062186 (= lt!2409140 e!3978624)))

(declare-fun c!1208610 () Bool)

(declare-fun e!3978625 () Bool)

(assert (=> d!2062186 (= c!1208610 e!3978625)))

(declare-fun res!2697480 () Bool)

(assert (=> d!2062186 (=> (not res!2697480) (not e!3978625))))

(assert (=> d!2062186 (= res!2697480 ((_ is Cons!65523) (exprs!6333 (h!71972 zl!343))))))

(assert (=> d!2062186 (forall!15621 (exprs!6333 (h!71972 zl!343)) lambda!366129)))

(assert (=> d!2062186 (= (generalisedConcat!2046 (exprs!6333 (h!71972 zl!343))) lt!2409140)))

(declare-fun b!6573328 () Bool)

(assert (=> b!6573328 (= e!3978623 e!3978621)))

(declare-fun c!1208611 () Bool)

(assert (=> b!6573328 (= c!1208611 (isEmpty!37773 (exprs!6333 (h!71972 zl!343))))))

(declare-fun b!6573329 () Bool)

(assert (=> b!6573329 (= e!3978625 (isEmpty!37773 (t!379293 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun b!6573330 () Bool)

(assert (=> b!6573330 (= e!3978624 (h!71971 (exprs!6333 (h!71972 zl!343))))))

(declare-fun b!6573331 () Bool)

(assert (=> b!6573331 (= e!3978620 (= lt!2409140 (head!13350 (exprs!6333 (h!71972 zl!343)))))))

(declare-fun b!6573332 () Bool)

(assert (=> b!6573332 (= e!3978620 (isConcat!1350 lt!2409140))))

(declare-fun b!6573333 () Bool)

(assert (=> b!6573333 (= e!3978622 EmptyExpr!16449)))

(assert (= (and d!2062186 res!2697480) b!6573329))

(assert (= (and d!2062186 c!1208610) b!6573330))

(assert (= (and d!2062186 (not c!1208610)) b!6573327))

(assert (= (and b!6573327 c!1208612) b!6573326))

(assert (= (and b!6573327 (not c!1208612)) b!6573333))

(assert (= (and d!2062186 res!2697481) b!6573328))

(assert (= (and b!6573328 c!1208611) b!6573325))

(assert (= (and b!6573328 (not c!1208611)) b!6573324))

(assert (= (and b!6573324 c!1208613) b!6573331))

(assert (= (and b!6573324 (not c!1208613)) b!6573332))

(declare-fun m!7354620 () Bool)

(assert (=> b!6573324 m!7354620))

(assert (=> b!6573324 m!7354620))

(declare-fun m!7354622 () Bool)

(assert (=> b!6573324 m!7354622))

(declare-fun m!7354624 () Bool)

(assert (=> b!6573328 m!7354624))

(declare-fun m!7354626 () Bool)

(assert (=> b!6573332 m!7354626))

(declare-fun m!7354628 () Bool)

(assert (=> b!6573331 m!7354628))

(assert (=> b!6573326 m!7353814))

(assert (=> b!6573329 m!7353846))

(declare-fun m!7354630 () Bool)

(assert (=> d!2062186 m!7354630))

(declare-fun m!7354632 () Bool)

(assert (=> d!2062186 m!7354632))

(declare-fun m!7354634 () Bool)

(assert (=> b!6573325 m!7354634))

(assert (=> b!6572383 d!2062186))

(declare-fun c!1208618 () Bool)

(declare-fun c!1208614 () Bool)

(declare-fun bm!572147 () Bool)

(declare-fun call!572152 () (InoxSet Context!11666))

(declare-fun call!572153 () List!65647)

(declare-fun c!1208615 () Bool)

(assert (=> bm!572147 (= call!572152 (derivationStepZipperDown!1697 (ite c!1208618 (regOne!33411 (reg!16778 (regOne!33410 r!7292))) (ite c!1208615 (regTwo!33410 (reg!16778 (regOne!33410 r!7292))) (ite c!1208614 (regOne!33410 (reg!16778 (regOne!33410 r!7292))) (reg!16778 (reg!16778 (regOne!33410 r!7292)))))) (ite (or c!1208618 c!1208615) lt!2408971 (Context!11667 call!572153)) (h!71970 s!2326)))))

(declare-fun b!6573334 () Bool)

(declare-fun e!3978628 () (InoxSet Context!11666))

(declare-fun e!3978629 () (InoxSet Context!11666))

(assert (=> b!6573334 (= e!3978628 e!3978629)))

(assert (=> b!6573334 (= c!1208618 ((_ is Union!16449) (reg!16778 (regOne!33410 r!7292))))))

(declare-fun bm!572148 () Bool)

(declare-fun call!572156 () (InoxSet Context!11666))

(declare-fun call!572157 () (InoxSet Context!11666))

(assert (=> bm!572148 (= call!572156 call!572157)))

(declare-fun d!2062188 () Bool)

(declare-fun c!1208616 () Bool)

(assert (=> d!2062188 (= c!1208616 (and ((_ is ElementMatch!16449) (reg!16778 (regOne!33410 r!7292))) (= (c!1208308 (reg!16778 (regOne!33410 r!7292))) (h!71970 s!2326))))))

(assert (=> d!2062188 (= (derivationStepZipperDown!1697 (reg!16778 (regOne!33410 r!7292)) lt!2408971 (h!71970 s!2326)) e!3978628)))

(declare-fun b!6573335 () Bool)

(declare-fun e!3978630 () (InoxSet Context!11666))

(declare-fun e!3978631 () (InoxSet Context!11666))

(assert (=> b!6573335 (= e!3978630 e!3978631)))

(assert (=> b!6573335 (= c!1208614 ((_ is Concat!25294) (reg!16778 (regOne!33410 r!7292))))))

(declare-fun b!6573336 () Bool)

(declare-fun e!3978626 () (InoxSet Context!11666))

(assert (=> b!6573336 (= e!3978626 call!572156)))

(declare-fun b!6573337 () Bool)

(assert (=> b!6573337 (= e!3978628 (store ((as const (Array Context!11666 Bool)) false) lt!2408971 true))))

(declare-fun b!6573338 () Bool)

(declare-fun call!572155 () (InoxSet Context!11666))

(assert (=> b!6573338 (= e!3978629 ((_ map or) call!572152 call!572155))))

(declare-fun b!6573339 () Bool)

(declare-fun e!3978627 () Bool)

(assert (=> b!6573339 (= c!1208615 e!3978627)))

(declare-fun res!2697482 () Bool)

(assert (=> b!6573339 (=> (not res!2697482) (not e!3978627))))

(assert (=> b!6573339 (= res!2697482 ((_ is Concat!25294) (reg!16778 (regOne!33410 r!7292))))))

(assert (=> b!6573339 (= e!3978629 e!3978630)))

(declare-fun b!6573340 () Bool)

(assert (=> b!6573340 (= e!3978627 (nullable!6442 (regOne!33410 (reg!16778 (regOne!33410 r!7292)))))))

(declare-fun b!6573341 () Bool)

(declare-fun c!1208617 () Bool)

(assert (=> b!6573341 (= c!1208617 ((_ is Star!16449) (reg!16778 (regOne!33410 r!7292))))))

(assert (=> b!6573341 (= e!3978631 e!3978626)))

(declare-fun b!6573342 () Bool)

(assert (=> b!6573342 (= e!3978630 ((_ map or) call!572155 call!572157))))

(declare-fun b!6573343 () Bool)

(assert (=> b!6573343 (= e!3978631 call!572156)))

(declare-fun call!572154 () List!65647)

(declare-fun bm!572149 () Bool)

(assert (=> bm!572149 (= call!572155 (derivationStepZipperDown!1697 (ite c!1208618 (regTwo!33411 (reg!16778 (regOne!33410 r!7292))) (regOne!33410 (reg!16778 (regOne!33410 r!7292)))) (ite c!1208618 lt!2408971 (Context!11667 call!572154)) (h!71970 s!2326)))))

(declare-fun b!6573344 () Bool)

(assert (=> b!6573344 (= e!3978626 ((as const (Array Context!11666 Bool)) false))))

(declare-fun bm!572150 () Bool)

(assert (=> bm!572150 (= call!572153 call!572154)))

(declare-fun bm!572151 () Bool)

(assert (=> bm!572151 (= call!572157 call!572152)))

(declare-fun bm!572152 () Bool)

(assert (=> bm!572152 (= call!572154 ($colon$colon!2290 (exprs!6333 lt!2408971) (ite (or c!1208615 c!1208614) (regTwo!33410 (reg!16778 (regOne!33410 r!7292))) (reg!16778 (regOne!33410 r!7292)))))))

(assert (= (and d!2062188 c!1208616) b!6573337))

(assert (= (and d!2062188 (not c!1208616)) b!6573334))

(assert (= (and b!6573334 c!1208618) b!6573338))

(assert (= (and b!6573334 (not c!1208618)) b!6573339))

(assert (= (and b!6573339 res!2697482) b!6573340))

(assert (= (and b!6573339 c!1208615) b!6573342))

(assert (= (and b!6573339 (not c!1208615)) b!6573335))

(assert (= (and b!6573335 c!1208614) b!6573343))

(assert (= (and b!6573335 (not c!1208614)) b!6573341))

(assert (= (and b!6573341 c!1208617) b!6573336))

(assert (= (and b!6573341 (not c!1208617)) b!6573344))

(assert (= (or b!6573343 b!6573336) bm!572150))

(assert (= (or b!6573343 b!6573336) bm!572148))

(assert (= (or b!6573342 bm!572150) bm!572152))

(assert (= (or b!6573342 bm!572148) bm!572151))

(assert (= (or b!6573338 b!6573342) bm!572149))

(assert (= (or b!6573338 bm!572151) bm!572147))

(declare-fun m!7354636 () Bool)

(assert (=> b!6573340 m!7354636))

(assert (=> b!6573337 m!7353904))

(declare-fun m!7354638 () Bool)

(assert (=> bm!572147 m!7354638))

(declare-fun m!7354640 () Bool)

(assert (=> bm!572152 m!7354640))

(declare-fun m!7354642 () Bool)

(assert (=> bm!572149 m!7354642))

(assert (=> b!6572363 d!2062188))

(assert (=> b!6572384 d!2062028))

(declare-fun bs!1678902 () Bool)

(declare-fun d!2062190 () Bool)

(assert (= bs!1678902 (and d!2062190 d!2062056)))

(declare-fun lambda!366130 () Int)

(assert (=> bs!1678902 (= lambda!366130 lambda!366080)))

(declare-fun bs!1678903 () Bool)

(assert (= bs!1678903 (and d!2062190 d!2062174)))

(assert (=> bs!1678903 (= lambda!366130 lambda!366116)))

(declare-fun bs!1678904 () Bool)

(assert (= bs!1678904 (and d!2062190 d!2062058)))

(assert (=> bs!1678904 (= lambda!366130 lambda!366085)))

(declare-fun bs!1678905 () Bool)

(assert (= bs!1678905 (and d!2062190 d!2062104)))

(assert (=> bs!1678905 (= lambda!366130 lambda!366102)))

(declare-fun bs!1678906 () Bool)

(assert (= bs!1678906 (and d!2062190 d!2062186)))

(assert (=> bs!1678906 (= lambda!366130 lambda!366129)))

(assert (=> d!2062190 (= (inv!84369 lt!2408965) (forall!15621 (exprs!6333 lt!2408965) lambda!366130))))

(declare-fun bs!1678907 () Bool)

(assert (= bs!1678907 d!2062190))

(declare-fun m!7354644 () Bool)

(assert (=> bs!1678907 m!7354644))

(assert (=> b!6572364 d!2062190))

(assert (=> b!6572386 d!2062126))

(declare-fun bs!1678908 () Bool)

(declare-fun d!2062192 () Bool)

(assert (= bs!1678908 (and d!2062192 d!2062056)))

(declare-fun lambda!366131 () Int)

(assert (=> bs!1678908 (= lambda!366131 lambda!366080)))

(declare-fun bs!1678909 () Bool)

(assert (= bs!1678909 (and d!2062192 d!2062190)))

(assert (=> bs!1678909 (= lambda!366131 lambda!366130)))

(declare-fun bs!1678910 () Bool)

(assert (= bs!1678910 (and d!2062192 d!2062174)))

(assert (=> bs!1678910 (= lambda!366131 lambda!366116)))

(declare-fun bs!1678911 () Bool)

(assert (= bs!1678911 (and d!2062192 d!2062058)))

(assert (=> bs!1678911 (= lambda!366131 lambda!366085)))

(declare-fun bs!1678912 () Bool)

(assert (= bs!1678912 (and d!2062192 d!2062104)))

(assert (=> bs!1678912 (= lambda!366131 lambda!366102)))

(declare-fun bs!1678913 () Bool)

(assert (= bs!1678913 (and d!2062192 d!2062186)))

(assert (=> bs!1678913 (= lambda!366131 lambda!366129)))

(assert (=> d!2062192 (= (inv!84369 (h!71972 zl!343)) (forall!15621 (exprs!6333 (h!71972 zl!343)) lambda!366131))))

(declare-fun bs!1678914 () Bool)

(assert (= bs!1678914 d!2062192))

(declare-fun m!7354646 () Bool)

(assert (=> bs!1678914 m!7354646))

(assert (=> b!6572365 d!2062192))

(declare-fun condSetEmpty!44890 () Bool)

(assert (=> setNonEmpty!44884 (= condSetEmpty!44890 (= setRest!44884 ((as const (Array Context!11666 Bool)) false)))))

(declare-fun setRes!44890 () Bool)

(assert (=> setNonEmpty!44884 (= tp!1814195 setRes!44890)))

(declare-fun setIsEmpty!44890 () Bool)

(assert (=> setIsEmpty!44890 setRes!44890))

(declare-fun setElem!44890 () Context!11666)

(declare-fun e!3978634 () Bool)

(declare-fun setNonEmpty!44890 () Bool)

(declare-fun tp!1814266 () Bool)

(assert (=> setNonEmpty!44890 (= setRes!44890 (and tp!1814266 (inv!84369 setElem!44890) e!3978634))))

(declare-fun setRest!44890 () (InoxSet Context!11666))

(assert (=> setNonEmpty!44890 (= setRest!44884 ((_ map or) (store ((as const (Array Context!11666 Bool)) false) setElem!44890 true) setRest!44890))))

(declare-fun b!6573349 () Bool)

(declare-fun tp!1814267 () Bool)

(assert (=> b!6573349 (= e!3978634 tp!1814267)))

(assert (= (and setNonEmpty!44884 condSetEmpty!44890) setIsEmpty!44890))

(assert (= (and setNonEmpty!44884 (not condSetEmpty!44890)) setNonEmpty!44890))

(assert (= setNonEmpty!44890 b!6573349))

(declare-fun m!7354648 () Bool)

(assert (=> setNonEmpty!44890 m!7354648))

(declare-fun b!6573363 () Bool)

(declare-fun e!3978637 () Bool)

(declare-fun tp!1814280 () Bool)

(declare-fun tp!1814281 () Bool)

(assert (=> b!6573363 (= e!3978637 (and tp!1814280 tp!1814281))))

(declare-fun b!6573360 () Bool)

(assert (=> b!6573360 (= e!3978637 tp_is_empty!42151)))

(declare-fun b!6573362 () Bool)

(declare-fun tp!1814279 () Bool)

(assert (=> b!6573362 (= e!3978637 tp!1814279)))

(assert (=> b!6572399 (= tp!1814196 e!3978637)))

(declare-fun b!6573361 () Bool)

(declare-fun tp!1814278 () Bool)

(declare-fun tp!1814282 () Bool)

(assert (=> b!6573361 (= e!3978637 (and tp!1814278 tp!1814282))))

(assert (= (and b!6572399 ((_ is ElementMatch!16449) (regOne!33411 r!7292))) b!6573360))

(assert (= (and b!6572399 ((_ is Concat!25294) (regOne!33411 r!7292))) b!6573361))

(assert (= (and b!6572399 ((_ is Star!16449) (regOne!33411 r!7292))) b!6573362))

(assert (= (and b!6572399 ((_ is Union!16449) (regOne!33411 r!7292))) b!6573363))

(declare-fun b!6573367 () Bool)

(declare-fun e!3978638 () Bool)

(declare-fun tp!1814285 () Bool)

(declare-fun tp!1814286 () Bool)

(assert (=> b!6573367 (= e!3978638 (and tp!1814285 tp!1814286))))

(declare-fun b!6573364 () Bool)

(assert (=> b!6573364 (= e!3978638 tp_is_empty!42151)))

(declare-fun b!6573366 () Bool)

(declare-fun tp!1814284 () Bool)

(assert (=> b!6573366 (= e!3978638 tp!1814284)))

(assert (=> b!6572399 (= tp!1814203 e!3978638)))

(declare-fun b!6573365 () Bool)

(declare-fun tp!1814283 () Bool)

(declare-fun tp!1814287 () Bool)

(assert (=> b!6573365 (= e!3978638 (and tp!1814283 tp!1814287))))

(assert (= (and b!6572399 ((_ is ElementMatch!16449) (regTwo!33411 r!7292))) b!6573364))

(assert (= (and b!6572399 ((_ is Concat!25294) (regTwo!33411 r!7292))) b!6573365))

(assert (= (and b!6572399 ((_ is Star!16449) (regTwo!33411 r!7292))) b!6573366))

(assert (= (and b!6572399 ((_ is Union!16449) (regTwo!33411 r!7292))) b!6573367))

(declare-fun b!6573371 () Bool)

(declare-fun e!3978639 () Bool)

(declare-fun tp!1814290 () Bool)

(declare-fun tp!1814291 () Bool)

(assert (=> b!6573371 (= e!3978639 (and tp!1814290 tp!1814291))))

(declare-fun b!6573368 () Bool)

(assert (=> b!6573368 (= e!3978639 tp_is_empty!42151)))

(declare-fun b!6573370 () Bool)

(declare-fun tp!1814289 () Bool)

(assert (=> b!6573370 (= e!3978639 tp!1814289)))

(assert (=> b!6572373 (= tp!1814201 e!3978639)))

(declare-fun b!6573369 () Bool)

(declare-fun tp!1814288 () Bool)

(declare-fun tp!1814292 () Bool)

(assert (=> b!6573369 (= e!3978639 (and tp!1814288 tp!1814292))))

(assert (= (and b!6572373 ((_ is ElementMatch!16449) (regOne!33410 r!7292))) b!6573368))

(assert (= (and b!6572373 ((_ is Concat!25294) (regOne!33410 r!7292))) b!6573369))

(assert (= (and b!6572373 ((_ is Star!16449) (regOne!33410 r!7292))) b!6573370))

(assert (= (and b!6572373 ((_ is Union!16449) (regOne!33410 r!7292))) b!6573371))

(declare-fun b!6573375 () Bool)

(declare-fun e!3978640 () Bool)

(declare-fun tp!1814295 () Bool)

(declare-fun tp!1814296 () Bool)

(assert (=> b!6573375 (= e!3978640 (and tp!1814295 tp!1814296))))

(declare-fun b!6573372 () Bool)

(assert (=> b!6573372 (= e!3978640 tp_is_empty!42151)))

(declare-fun b!6573374 () Bool)

(declare-fun tp!1814294 () Bool)

(assert (=> b!6573374 (= e!3978640 tp!1814294)))

(assert (=> b!6572373 (= tp!1814202 e!3978640)))

(declare-fun b!6573373 () Bool)

(declare-fun tp!1814293 () Bool)

(declare-fun tp!1814297 () Bool)

(assert (=> b!6573373 (= e!3978640 (and tp!1814293 tp!1814297))))

(assert (= (and b!6572373 ((_ is ElementMatch!16449) (regTwo!33410 r!7292))) b!6573372))

(assert (= (and b!6572373 ((_ is Concat!25294) (regTwo!33410 r!7292))) b!6573373))

(assert (= (and b!6572373 ((_ is Star!16449) (regTwo!33410 r!7292))) b!6573374))

(assert (= (and b!6572373 ((_ is Union!16449) (regTwo!33410 r!7292))) b!6573375))

(declare-fun b!6573380 () Bool)

(declare-fun e!3978643 () Bool)

(declare-fun tp!1814302 () Bool)

(declare-fun tp!1814303 () Bool)

(assert (=> b!6573380 (= e!3978643 (and tp!1814302 tp!1814303))))

(assert (=> b!6572358 (= tp!1814197 e!3978643)))

(assert (= (and b!6572358 ((_ is Cons!65523) (exprs!6333 setElem!44884))) b!6573380))

(declare-fun b!6573385 () Bool)

(declare-fun e!3978646 () Bool)

(declare-fun tp!1814306 () Bool)

(assert (=> b!6573385 (= e!3978646 (and tp_is_empty!42151 tp!1814306))))

(assert (=> b!6572380 (= tp!1814198 e!3978646)))

(assert (= (and b!6572380 ((_ is Cons!65522) (t!379292 s!2326))) b!6573385))

(declare-fun b!6573386 () Bool)

(declare-fun e!3978647 () Bool)

(declare-fun tp!1814307 () Bool)

(declare-fun tp!1814308 () Bool)

(assert (=> b!6573386 (= e!3978647 (and tp!1814307 tp!1814308))))

(assert (=> b!6572397 (= tp!1814199 e!3978647)))

(assert (= (and b!6572397 ((_ is Cons!65523) (exprs!6333 (h!71972 zl!343)))) b!6573386))

(declare-fun b!6573394 () Bool)

(declare-fun e!3978653 () Bool)

(declare-fun tp!1814313 () Bool)

(assert (=> b!6573394 (= e!3978653 tp!1814313)))

(declare-fun e!3978652 () Bool)

(declare-fun b!6573393 () Bool)

(declare-fun tp!1814314 () Bool)

(assert (=> b!6573393 (= e!3978652 (and (inv!84369 (h!71972 (t!379294 zl!343))) e!3978653 tp!1814314))))

(assert (=> b!6572365 (= tp!1814200 e!3978652)))

(assert (= b!6573393 b!6573394))

(assert (= (and b!6572365 ((_ is Cons!65524) (t!379294 zl!343))) b!6573393))

(declare-fun m!7354650 () Bool)

(assert (=> b!6573393 m!7354650))

(declare-fun b!6573398 () Bool)

(declare-fun e!3978654 () Bool)

(declare-fun tp!1814317 () Bool)

(declare-fun tp!1814318 () Bool)

(assert (=> b!6573398 (= e!3978654 (and tp!1814317 tp!1814318))))

(declare-fun b!6573395 () Bool)

(assert (=> b!6573395 (= e!3978654 tp_is_empty!42151)))

(declare-fun b!6573397 () Bool)

(declare-fun tp!1814316 () Bool)

(assert (=> b!6573397 (= e!3978654 tp!1814316)))

(assert (=> b!6572392 (= tp!1814194 e!3978654)))

(declare-fun b!6573396 () Bool)

(declare-fun tp!1814315 () Bool)

(declare-fun tp!1814319 () Bool)

(assert (=> b!6573396 (= e!3978654 (and tp!1814315 tp!1814319))))

(assert (= (and b!6572392 ((_ is ElementMatch!16449) (reg!16778 r!7292))) b!6573395))

(assert (= (and b!6572392 ((_ is Concat!25294) (reg!16778 r!7292))) b!6573396))

(assert (= (and b!6572392 ((_ is Star!16449) (reg!16778 r!7292))) b!6573397))

(assert (= (and b!6572392 ((_ is Union!16449) (reg!16778 r!7292))) b!6573398))

(declare-fun b_lambda!248599 () Bool)

(assert (= b_lambda!248579 (or b!6572357 b_lambda!248599)))

(declare-fun bs!1678915 () Bool)

(declare-fun d!2062194 () Bool)

(assert (= bs!1678915 (and d!2062194 b!6572357)))

(assert (=> bs!1678915 (= (dynLambda!26069 lambda!366035 lt!2408971) (derivationStepZipperUp!1623 lt!2408971 (h!71970 s!2326)))))

(assert (=> bs!1678915 m!7353898))

(assert (=> d!2062024 d!2062194))

(declare-fun b_lambda!248601 () Bool)

(assert (= b_lambda!248587 (or b!6572357 b_lambda!248601)))

(declare-fun bs!1678916 () Bool)

(declare-fun d!2062196 () Bool)

(assert (= bs!1678916 (and d!2062196 b!6572357)))

(assert (=> bs!1678916 (= (dynLambda!26069 lambda!366035 (h!71972 zl!343)) (derivationStepZipperUp!1623 (h!71972 zl!343) (h!71970 s!2326)))))

(assert (=> bs!1678916 m!7353886))

(assert (=> d!2062140 d!2062196))

(declare-fun b_lambda!248603 () Bool)

(assert (= b_lambda!248575 (or b!6572357 b_lambda!248603)))

(declare-fun bs!1678917 () Bool)

(declare-fun d!2062198 () Bool)

(assert (= bs!1678917 (and d!2062198 b!6572357)))

(assert (=> bs!1678917 (= (dynLambda!26069 lambda!366035 lt!2408965) (derivationStepZipperUp!1623 lt!2408965 (h!71970 s!2326)))))

(assert (=> bs!1678917 m!7353884))

(assert (=> d!2062012 d!2062198))

(declare-fun b_lambda!248605 () Bool)

(assert (= b_lambda!248577 (or b!6572357 b_lambda!248605)))

(declare-fun bs!1678918 () Bool)

(declare-fun d!2062200 () Bool)

(assert (= bs!1678918 (and d!2062200 b!6572357)))

(assert (=> bs!1678918 (= (dynLambda!26069 lambda!366035 lt!2408975) (derivationStepZipperUp!1623 lt!2408975 (h!71970 s!2326)))))

(assert (=> bs!1678918 m!7353906))

(assert (=> d!2062020 d!2062200))

(declare-fun b_lambda!248607 () Bool)

(assert (= b_lambda!248573 (or b!6572357 b_lambda!248607)))

(declare-fun bs!1678919 () Bool)

(declare-fun d!2062202 () Bool)

(assert (= bs!1678919 (and d!2062202 b!6572357)))

(assert (=> bs!1678919 (= (dynLambda!26069 lambda!366035 lt!2408981) (derivationStepZipperUp!1623 lt!2408981 (h!71970 s!2326)))))

(assert (=> bs!1678919 m!7353866))

(assert (=> d!2061996 d!2062202))

(check-sat (not d!2062150) (not d!2062074) (not b!6572798) (not d!2062192) (not d!2062026) (not d!2061998) (not d!2062006) (not b!6573331) (not b!6572480) (not d!2061996) (not bm!572026) (not bm!572079) (not b!6572649) (not d!2062114) (not b!6573069) (not d!2062076) (not b!6573318) (not bm!572152) (not d!2062190) (not bm!572077) (not d!2062176) (not bm!572028) (not bs!1678916) (not b!6572874) (not b!6572659) (not b!6572929) (not d!2062000) (not d!2061988) (not b!6572585) (not bs!1678915) (not b!6573090) (not b!6573398) (not d!2062048) (not b!6572568) (not b!6573326) (not b!6572778) (not b!6573324) (not b!6573394) (not bs!1678919) (not b!6573072) (not b!6572797) (not b!6573207) (not b!6572562) (not b!6572655) (not bm!572145) (not bm!572086) (not b!6573386) (not bm!572089) (not b!6572912) (not d!2062170) (not b!6572779) (not b!6573380) (not b!6573371) (not bm!572134) (not b!6573073) (not b!6572927) (not b!6572558) (not d!2062018) (not bm!572147) (not b!6573328) tp_is_empty!42151 (not d!2062186) (not bm!572032) (not d!2062056) (not d!2062152) (not b!6573065) (not bm!572044) (not d!2062178) (not b!6572858) (not b_lambda!248607) (not b_lambda!248605) (not b!6573393) (not d!2062168) (not b!6572563) (not bm!572029) (not bm!572001) (not bm!572050) (not b!6572856) (not d!2062144) (not b!6573375) (not b_lambda!248599) (not b!6572854) (not b!6573170) (not b_lambda!248603) (not b!6573291) (not bm!572045) (not d!2062104) (not d!2062078) (not bm!572084) (not b!6573363) (not b!6573361) (not b!6573396) (not d!2062012) (not b!6573297) (not b!6572926) (not b!6573086) (not d!2062172) (not bs!1678917) (not bm!572082) (not d!2062020) (not b!6572880) (not d!2062058) (not b!6573321) (not b!6572850) (not d!2061962) (not b!6573211) (not b!6573323) (not b!6572913) (not b!6573067) (not b!6573340) (not b!6572454) (not b!6572524) (not b!6573289) (not b!6573089) (not b!6573397) (not b!6572853) (not d!2062180) (not b!6573087) (not b!6572928) (not b!6573192) (not d!2062128) (not bm!572137) (not bm!572149) (not b!6573070) (not b!6573088) (not d!2062126) (not b!6573370) (not d!2062024) (not b!6572918) (not b!6572851) (not d!2062028) (not b!6572852) (not d!2062134) (not b!6573325) (not bm!572051) (not b!6572923) (not b!6573373) (not b!6573367) (not d!2062174) (not b!6573066) (not b!6572650) (not b!6573366) (not bm!572059) (not bm!572027) (not b!6573316) (not b!6572572) (not b!6572914) (not bm!572081) (not d!2062014) (not b!6573196) (not b_lambda!248601) (not b!6572879) (not bm!572088) (not b!6573385) (not b!6573369) (not b!6572922) (not b!6573349) (not bm!572146) (not d!2062166) (not d!2062052) (not b!6573362) (not b!6573293) (not b!6573332) (not b!6573295) (not b!6572528) (not b!6572567) (not bm!572076) (not d!2062072) (not d!2062002) (not bm!572132) (not setNonEmpty!44890) (not bm!572083) (not b!6572651) (not b!6573365) (not d!2062140) (not b!6573374) (not d!2062034) (not b!6573296) (not bm!572002) (not b!6572586) (not b!6573329) (not b!6572660) (not bs!1678918))
(check-sat)
