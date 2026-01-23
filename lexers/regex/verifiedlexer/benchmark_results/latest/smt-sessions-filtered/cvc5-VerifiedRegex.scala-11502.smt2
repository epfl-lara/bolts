; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!628728 () Bool)

(assert start!628728)

(declare-fun b!6345503 () Bool)

(assert (=> b!6345503 true))

(assert (=> b!6345503 true))

(declare-fun lambda!348783 () Int)

(declare-fun lambda!348782 () Int)

(assert (=> b!6345503 (not (= lambda!348783 lambda!348782))))

(assert (=> b!6345503 true))

(assert (=> b!6345503 true))

(declare-fun b!6345490 () Bool)

(assert (=> b!6345490 true))

(declare-fun bs!1588878 () Bool)

(declare-fun b!6345499 () Bool)

(assert (= bs!1588878 (and b!6345499 b!6345503)))

(declare-datatypes ((C!32770 0))(
  ( (C!32771 (val!26087 Int)) )
))
(declare-datatypes ((Regex!16250 0))(
  ( (ElementMatch!16250 (c!1154019 C!32770)) (Concat!25095 (regOne!33012 Regex!16250) (regTwo!33012 Regex!16250)) (EmptyExpr!16250) (Star!16250 (reg!16579 Regex!16250)) (EmptyLang!16250) (Union!16250 (regOne!33013 Regex!16250) (regTwo!33013 Regex!16250)) )
))
(declare-fun r!7292 () Regex!16250)

(declare-fun lt!2363413 () Regex!16250)

(declare-fun lambda!348785 () Int)

(assert (=> bs!1588878 (= (and (= (regOne!33012 (regOne!33012 r!7292)) (regOne!33012 r!7292)) (= lt!2363413 (regTwo!33012 r!7292))) (= lambda!348785 lambda!348782))))

(assert (=> bs!1588878 (not (= lambda!348785 lambda!348783))))

(assert (=> b!6345499 true))

(assert (=> b!6345499 true))

(assert (=> b!6345499 true))

(declare-fun b!6345476 () Bool)

(declare-fun e!3854007 () Bool)

(declare-fun e!3854009 () Bool)

(assert (=> b!6345476 (= e!3854007 e!3854009)))

(declare-fun res!2611134 () Bool)

(assert (=> b!6345476 (=> res!2611134 e!3854009)))

(declare-datatypes ((List!65049 0))(
  ( (Nil!64925) (Cons!64925 (h!71373 Regex!16250) (t!378637 List!65049)) )
))
(declare-datatypes ((Context!11268 0))(
  ( (Context!11269 (exprs!6134 List!65049)) )
))
(declare-fun lt!2363418 () (Set Context!11268))

(declare-fun lt!2363410 () (Set Context!11268))

(assert (=> b!6345476 (= res!2611134 (not (= lt!2363418 lt!2363410)))))

(declare-datatypes ((List!65050 0))(
  ( (Nil!64926) (Cons!64926 (h!71374 C!32770) (t!378638 List!65050)) )
))
(declare-fun s!2326 () List!65050)

(declare-fun lt!2363401 () List!65049)

(declare-fun derivationStepZipperDown!1498 (Regex!16250 Context!11268 C!32770) (Set Context!11268))

(assert (=> b!6345476 (= lt!2363410 (derivationStepZipperDown!1498 (regOne!33012 (regOne!33012 r!7292)) (Context!11269 lt!2363401) (h!71374 s!2326)))))

(declare-datatypes ((List!65051 0))(
  ( (Nil!64927) (Cons!64927 (h!71375 Context!11268) (t!378639 List!65051)) )
))
(declare-fun zl!343 () List!65051)

(assert (=> b!6345476 (= lt!2363401 (Cons!64925 (regTwo!33012 (regOne!33012 r!7292)) (t!378637 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun b!6345477 () Bool)

(declare-fun res!2611132 () Bool)

(declare-fun e!3854006 () Bool)

(assert (=> b!6345477 (=> res!2611132 e!3854006)))

(declare-fun lt!2363402 () Context!11268)

(declare-fun contextDepthTotal!359 (Context!11268) Int)

(assert (=> b!6345477 (= res!2611132 (>= (contextDepthTotal!359 lt!2363402) (contextDepthTotal!359 (h!71375 zl!343))))))

(declare-fun b!6345478 () Bool)

(declare-fun e!3854001 () Bool)

(declare-fun tp!1769120 () Bool)

(assert (=> b!6345478 (= e!3854001 tp!1769120)))

(declare-fun b!6345479 () Bool)

(declare-fun e!3854005 () Bool)

(declare-fun tp_is_empty!41753 () Bool)

(assert (=> b!6345479 (= e!3854005 tp_is_empty!41753)))

(declare-fun b!6345480 () Bool)

(declare-fun res!2611137 () Bool)

(declare-fun e!3853998 () Bool)

(assert (=> b!6345480 (=> res!2611137 e!3853998)))

(declare-fun lt!2363412 () List!65051)

(declare-fun zipperDepth!357 (List!65051) Int)

(assert (=> b!6345480 (= res!2611137 (> (zipperDepth!357 lt!2363412) (zipperDepth!357 zl!343)))))

(declare-fun b!6345481 () Bool)

(declare-datatypes ((Unit!158331 0))(
  ( (Unit!158332) )
))
(declare-fun e!3853997 () Unit!158331)

(declare-fun Unit!158333 () Unit!158331)

(assert (=> b!6345481 (= e!3853997 Unit!158333)))

(declare-fun b!6345482 () Bool)

(declare-fun e!3853996 () Bool)

(declare-fun tp!1769117 () Bool)

(assert (=> b!6345482 (= e!3853996 tp!1769117)))

(declare-fun b!6345483 () Bool)

(declare-fun e!3854003 () Bool)

(assert (=> b!6345483 (= e!3854003 e!3854006)))

(declare-fun res!2611136 () Bool)

(assert (=> b!6345483 (=> res!2611136 e!3854006)))

(declare-fun lt!2363403 () (Set Context!11268))

(assert (=> b!6345483 (= res!2611136 (not (= lt!2363403 lt!2363410)))))

(declare-fun lt!2363404 () (Set Context!11268))

(declare-fun lambda!348784 () Int)

(declare-fun flatMap!1755 ((Set Context!11268) Int) (Set Context!11268))

(declare-fun derivationStepZipperUp!1424 (Context!11268 C!32770) (Set Context!11268))

(assert (=> b!6345483 (= (flatMap!1755 lt!2363404 lambda!348784) (derivationStepZipperUp!1424 lt!2363402 (h!71374 s!2326)))))

(declare-fun lt!2363422 () Unit!158331)

(declare-fun lemmaFlatMapOnSingletonSet!1281 ((Set Context!11268) Context!11268 Int) Unit!158331)

(assert (=> b!6345483 (= lt!2363422 (lemmaFlatMapOnSingletonSet!1281 lt!2363404 lt!2363402 lambda!348784))))

(declare-fun lt!2363426 () (Set Context!11268))

(assert (=> b!6345483 (= lt!2363426 (derivationStepZipperUp!1424 lt!2363402 (h!71374 s!2326)))))

(declare-fun derivationStepZipper!2216 ((Set Context!11268) C!32770) (Set Context!11268))

(assert (=> b!6345483 (= lt!2363403 (derivationStepZipper!2216 lt!2363404 (h!71374 s!2326)))))

(assert (=> b!6345483 (= lt!2363404 (set.insert lt!2363402 (as set.empty (Set Context!11268))))))

(declare-fun lt!2363408 () List!65049)

(assert (=> b!6345483 (= lt!2363402 (Context!11269 lt!2363408))))

(assert (=> b!6345483 (= lt!2363408 (Cons!64925 (regOne!33012 (regOne!33012 r!7292)) lt!2363401))))

(declare-fun b!6345484 () Bool)

(declare-fun res!2611144 () Bool)

(assert (=> b!6345484 (=> res!2611144 e!3854006)))

(declare-fun lt!2363428 () Bool)

(declare-fun matchZipper!2262 ((Set Context!11268) List!65050) Bool)

(assert (=> b!6345484 (= res!2611144 (not (= lt!2363428 (matchZipper!2262 lt!2363403 (t!378638 s!2326)))))))

(declare-fun b!6345485 () Bool)

(declare-fun e!3853995 () Bool)

(declare-fun tp!1769111 () Bool)

(assert (=> b!6345485 (= e!3853995 (and tp_is_empty!41753 tp!1769111))))

(declare-fun b!6345486 () Bool)

(declare-fun res!2611141 () Bool)

(assert (=> b!6345486 (=> res!2611141 e!3854007)))

(declare-fun e!3853994 () Bool)

(assert (=> b!6345486 (= res!2611141 e!3853994)))

(declare-fun res!2611138 () Bool)

(assert (=> b!6345486 (=> (not res!2611138) (not e!3853994))))

(assert (=> b!6345486 (= res!2611138 (is-Concat!25095 (regOne!33012 r!7292)))))

(declare-fun b!6345487 () Bool)

(declare-fun res!2611151 () Bool)

(assert (=> b!6345487 (=> res!2611151 e!3854007)))

(assert (=> b!6345487 (= res!2611151 (not (is-Concat!25095 (regOne!33012 r!7292))))))

(declare-fun b!6345488 () Bool)

(declare-fun res!2611128 () Bool)

(declare-fun e!3854008 () Bool)

(assert (=> b!6345488 (=> res!2611128 e!3854008)))

(declare-fun isEmpty!37011 (List!65051) Bool)

(assert (=> b!6345488 (= res!2611128 (not (isEmpty!37011 (t!378639 zl!343))))))

(declare-fun b!6345489 () Bool)

(declare-fun res!2611150 () Bool)

(declare-fun e!3854000 () Bool)

(assert (=> b!6345489 (=> res!2611150 e!3854000)))

(declare-fun isEmpty!37012 (List!65049) Bool)

(assert (=> b!6345489 (= res!2611150 (isEmpty!37012 (t!378637 (exprs!6134 (h!71375 zl!343)))))))

(assert (=> b!6345490 (= e!3854000 e!3854007)))

(declare-fun res!2611140 () Bool)

(assert (=> b!6345490 (=> res!2611140 e!3854007)))

(assert (=> b!6345490 (= res!2611140 (or (and (is-ElementMatch!16250 (regOne!33012 r!7292)) (= (c!1154019 (regOne!33012 r!7292)) (h!71374 s!2326))) (is-Union!16250 (regOne!33012 r!7292))))))

(declare-fun lt!2363407 () Unit!158331)

(assert (=> b!6345490 (= lt!2363407 e!3853997)))

(declare-fun c!1154018 () Bool)

(declare-fun nullable!6243 (Regex!16250) Bool)

(assert (=> b!6345490 (= c!1154018 (nullable!6243 (h!71373 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun z!1189 () (Set Context!11268))

(assert (=> b!6345490 (= (flatMap!1755 z!1189 lambda!348784) (derivationStepZipperUp!1424 (h!71375 zl!343) (h!71374 s!2326)))))

(declare-fun lt!2363424 () Unit!158331)

(assert (=> b!6345490 (= lt!2363424 (lemmaFlatMapOnSingletonSet!1281 z!1189 (h!71375 zl!343) lambda!348784))))

(declare-fun lt!2363405 () (Set Context!11268))

(declare-fun lt!2363411 () Context!11268)

(assert (=> b!6345490 (= lt!2363405 (derivationStepZipperUp!1424 lt!2363411 (h!71374 s!2326)))))

(assert (=> b!6345490 (= lt!2363418 (derivationStepZipperDown!1498 (h!71373 (exprs!6134 (h!71375 zl!343))) lt!2363411 (h!71374 s!2326)))))

(assert (=> b!6345490 (= lt!2363411 (Context!11269 (t!378637 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun lt!2363406 () (Set Context!11268))

(assert (=> b!6345490 (= lt!2363406 (derivationStepZipperUp!1424 (Context!11269 (Cons!64925 (h!71373 (exprs!6134 (h!71375 zl!343))) (t!378637 (exprs!6134 (h!71375 zl!343))))) (h!71374 s!2326)))))

(declare-fun setRes!43197 () Bool)

(declare-fun setNonEmpty!43197 () Bool)

(declare-fun tp!1769114 () Bool)

(declare-fun setElem!43197 () Context!11268)

(declare-fun inv!83873 (Context!11268) Bool)

(assert (=> setNonEmpty!43197 (= setRes!43197 (and tp!1769114 (inv!83873 setElem!43197) e!3853996))))

(declare-fun setRest!43197 () (Set Context!11268))

(assert (=> setNonEmpty!43197 (= z!1189 (set.union (set.insert setElem!43197 (as set.empty (Set Context!11268))) setRest!43197))))

(declare-fun b!6345491 () Bool)

(declare-fun res!2611145 () Bool)

(declare-fun e!3854002 () Bool)

(assert (=> b!6345491 (=> (not res!2611145) (not e!3854002))))

(declare-fun unfocusZipper!1992 (List!65051) Regex!16250)

(assert (=> b!6345491 (= res!2611145 (= r!7292 (unfocusZipper!1992 zl!343)))))

(declare-fun b!6345492 () Bool)

(declare-fun res!2611129 () Bool)

(assert (=> b!6345492 (=> res!2611129 e!3854008)))

(declare-fun generalisedUnion!2094 (List!65049) Regex!16250)

(declare-fun unfocusZipperList!1671 (List!65051) List!65049)

(assert (=> b!6345492 (= res!2611129 (not (= r!7292 (generalisedUnion!2094 (unfocusZipperList!1671 zl!343)))))))

(declare-fun b!6345493 () Bool)

(assert (=> b!6345493 (= e!3853994 (nullable!6243 (regOne!33012 (regOne!33012 r!7292))))))

(declare-fun b!6345494 () Bool)

(declare-fun res!2611131 () Bool)

(assert (=> b!6345494 (=> res!2611131 e!3854008)))

(assert (=> b!6345494 (= res!2611131 (or (is-EmptyExpr!16250 r!7292) (is-EmptyLang!16250 r!7292) (is-ElementMatch!16250 r!7292) (is-Union!16250 r!7292) (not (is-Concat!25095 r!7292))))))

(declare-fun b!6345495 () Bool)

(assert (=> b!6345495 (= e!3854009 e!3854003)))

(declare-fun res!2611127 () Bool)

(assert (=> b!6345495 (=> res!2611127 e!3854003)))

(assert (=> b!6345495 (= res!2611127 (not (= lt!2363428 (matchZipper!2262 lt!2363410 (t!378638 s!2326)))))))

(assert (=> b!6345495 (= lt!2363428 (matchZipper!2262 lt!2363418 (t!378638 s!2326)))))

(declare-fun b!6345496 () Bool)

(declare-fun tp!1769118 () Bool)

(assert (=> b!6345496 (= e!3854005 tp!1769118)))

(declare-fun b!6345497 () Bool)

(declare-fun tp!1769119 () Bool)

(declare-fun tp!1769116 () Bool)

(assert (=> b!6345497 (= e!3854005 (and tp!1769119 tp!1769116))))

(declare-fun b!6345498 () Bool)

(declare-fun tp!1769113 () Bool)

(declare-fun tp!1769115 () Bool)

(assert (=> b!6345498 (= e!3854005 (and tp!1769113 tp!1769115))))

(declare-fun e!3853999 () Bool)

(assert (=> b!6345499 (= e!3853998 e!3853999)))

(declare-fun res!2611148 () Bool)

(assert (=> b!6345499 (=> res!2611148 e!3853999)))

(declare-fun validRegex!7986 (Regex!16250) Bool)

(assert (=> b!6345499 (= res!2611148 (not (validRegex!7986 (regOne!33012 (regOne!33012 r!7292)))))))

(declare-datatypes ((tuple2!66458 0))(
  ( (tuple2!66459 (_1!36532 List!65050) (_2!36532 List!65050)) )
))
(declare-datatypes ((Option!16141 0))(
  ( (None!16140) (Some!16140 (v!52309 tuple2!66458)) )
))
(declare-fun isDefined!12844 (Option!16141) Bool)

(declare-fun findConcatSeparation!2555 (Regex!16250 Regex!16250 List!65050 List!65050 List!65050) Option!16141)

(declare-fun Exists!3320 (Int) Bool)

(assert (=> b!6345499 (= (isDefined!12844 (findConcatSeparation!2555 (regOne!33012 (regOne!33012 r!7292)) lt!2363413 Nil!64926 s!2326 s!2326)) (Exists!3320 lambda!348785))))

(declare-fun lt!2363419 () Unit!158331)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2319 (Regex!16250 Regex!16250 List!65050) Unit!158331)

(assert (=> b!6345499 (= lt!2363419 (lemmaFindConcatSeparationEquivalentToExists!2319 (regOne!33012 (regOne!33012 r!7292)) lt!2363413 s!2326))))

(declare-fun generalisedConcat!1847 (List!65049) Regex!16250)

(assert (=> b!6345499 (= lt!2363413 (generalisedConcat!1847 lt!2363401))))

(declare-fun lt!2363421 () Bool)

(declare-fun lt!2363425 () Regex!16250)

(declare-fun matchRSpec!3351 (Regex!16250 List!65050) Bool)

(assert (=> b!6345499 (= lt!2363421 (matchRSpec!3351 lt!2363425 s!2326))))

(declare-fun lt!2363423 () Unit!158331)

(declare-fun mainMatchTheorem!3351 (Regex!16250 List!65050) Unit!158331)

(assert (=> b!6345499 (= lt!2363423 (mainMatchTheorem!3351 lt!2363425 s!2326))))

(assert (=> b!6345499 (= lt!2363421 (matchZipper!2262 lt!2363404 s!2326))))

(declare-fun matchR!8433 (Regex!16250 List!65050) Bool)

(assert (=> b!6345499 (= lt!2363421 (matchR!8433 lt!2363425 s!2326))))

(declare-fun lt!2363417 () Unit!158331)

(declare-fun theoremZipperRegexEquiv!792 ((Set Context!11268) List!65051 Regex!16250 List!65050) Unit!158331)

(assert (=> b!6345499 (= lt!2363417 (theoremZipperRegexEquiv!792 lt!2363404 lt!2363412 lt!2363425 s!2326))))

(assert (=> b!6345499 (= lt!2363425 (generalisedConcat!1847 lt!2363408))))

(declare-fun b!6345500 () Bool)

(declare-fun Unit!158334 () Unit!158331)

(assert (=> b!6345500 (= e!3853997 Unit!158334)))

(declare-fun lt!2363420 () Unit!158331)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1081 ((Set Context!11268) (Set Context!11268) List!65050) Unit!158331)

(assert (=> b!6345500 (= lt!2363420 (lemmaZipperConcatMatchesSameAsBothZippers!1081 lt!2363418 lt!2363405 (t!378638 s!2326)))))

(declare-fun res!2611133 () Bool)

(assert (=> b!6345500 (= res!2611133 (matchZipper!2262 lt!2363418 (t!378638 s!2326)))))

(declare-fun e!3854004 () Bool)

(assert (=> b!6345500 (=> res!2611133 e!3854004)))

(assert (=> b!6345500 (= (matchZipper!2262 (set.union lt!2363418 lt!2363405) (t!378638 s!2326)) e!3854004)))

(declare-fun b!6345501 () Bool)

(declare-fun res!2611135 () Bool)

(assert (=> b!6345501 (=> res!2611135 e!3854008)))

(assert (=> b!6345501 (= res!2611135 (not (= r!7292 (generalisedConcat!1847 (exprs!6134 (h!71375 zl!343))))))))

(declare-fun b!6345502 () Bool)

(assert (=> b!6345502 (= e!3853999 (validRegex!7986 lt!2363413))))

(assert (=> b!6345503 (= e!3854008 e!3854000)))

(declare-fun res!2611139 () Bool)

(assert (=> b!6345503 (=> res!2611139 e!3854000)))

(declare-fun lt!2363414 () Bool)

(declare-fun lt!2363416 () Bool)

(assert (=> b!6345503 (= res!2611139 (or (not (= lt!2363416 lt!2363414)) (is-Nil!64926 s!2326)))))

(assert (=> b!6345503 (= (Exists!3320 lambda!348782) (Exists!3320 lambda!348783))))

(declare-fun lt!2363427 () Unit!158331)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1857 (Regex!16250 Regex!16250 List!65050) Unit!158331)

(assert (=> b!6345503 (= lt!2363427 (lemmaExistCutMatchRandMatchRSpecEquivalent!1857 (regOne!33012 r!7292) (regTwo!33012 r!7292) s!2326))))

(assert (=> b!6345503 (= lt!2363414 (Exists!3320 lambda!348782))))

(assert (=> b!6345503 (= lt!2363414 (isDefined!12844 (findConcatSeparation!2555 (regOne!33012 r!7292) (regTwo!33012 r!7292) Nil!64926 s!2326 s!2326)))))

(declare-fun lt!2363415 () Unit!158331)

(assert (=> b!6345503 (= lt!2363415 (lemmaFindConcatSeparationEquivalentToExists!2319 (regOne!33012 r!7292) (regTwo!33012 r!7292) s!2326))))

(declare-fun b!6345504 () Bool)

(assert (=> b!6345504 (= e!3854002 (not e!3854008))))

(declare-fun res!2611142 () Bool)

(assert (=> b!6345504 (=> res!2611142 e!3854008)))

(assert (=> b!6345504 (= res!2611142 (not (is-Cons!64927 zl!343)))))

(assert (=> b!6345504 (= lt!2363416 (matchRSpec!3351 r!7292 s!2326))))

(assert (=> b!6345504 (= lt!2363416 (matchR!8433 r!7292 s!2326))))

(declare-fun lt!2363409 () Unit!158331)

(assert (=> b!6345504 (= lt!2363409 (mainMatchTheorem!3351 r!7292 s!2326))))

(declare-fun b!6345505 () Bool)

(assert (=> b!6345505 (= e!3854004 (matchZipper!2262 lt!2363405 (t!378638 s!2326)))))

(declare-fun setIsEmpty!43197 () Bool)

(assert (=> setIsEmpty!43197 setRes!43197))

(declare-fun res!2611130 () Bool)

(assert (=> start!628728 (=> (not res!2611130) (not e!3854002))))

(assert (=> start!628728 (= res!2611130 (validRegex!7986 r!7292))))

(assert (=> start!628728 e!3854002))

(assert (=> start!628728 e!3854005))

(declare-fun condSetEmpty!43197 () Bool)

(assert (=> start!628728 (= condSetEmpty!43197 (= z!1189 (as set.empty (Set Context!11268))))))

(assert (=> start!628728 setRes!43197))

(declare-fun e!3853993 () Bool)

(assert (=> start!628728 e!3853993))

(assert (=> start!628728 e!3853995))

(declare-fun b!6345506 () Bool)

(declare-fun res!2611147 () Bool)

(assert (=> b!6345506 (=> (not res!2611147) (not e!3854002))))

(declare-fun toList!10034 ((Set Context!11268)) List!65051)

(assert (=> b!6345506 (= res!2611147 (= (toList!10034 z!1189) zl!343))))

(declare-fun b!6345507 () Bool)

(declare-fun res!2611143 () Bool)

(assert (=> b!6345507 (=> res!2611143 e!3854006)))

(assert (=> b!6345507 (= res!2611143 (not (= (exprs!6134 (h!71375 zl!343)) (Cons!64925 (Concat!25095 (regOne!33012 (regOne!33012 r!7292)) (regTwo!33012 (regOne!33012 r!7292))) (t!378637 (exprs!6134 (h!71375 zl!343)))))))))

(declare-fun b!6345508 () Bool)

(declare-fun tp!1769112 () Bool)

(assert (=> b!6345508 (= e!3853993 (and (inv!83873 (h!71375 zl!343)) e!3854001 tp!1769112))))

(declare-fun b!6345509 () Bool)

(declare-fun res!2611146 () Bool)

(assert (=> b!6345509 (=> res!2611146 e!3854008)))

(assert (=> b!6345509 (= res!2611146 (not (is-Cons!64925 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun b!6345510 () Bool)

(assert (=> b!6345510 (= e!3854006 e!3853998)))

(declare-fun res!2611149 () Bool)

(assert (=> b!6345510 (=> res!2611149 e!3853998)))

(declare-fun zipperDepthTotal!387 (List!65051) Int)

(assert (=> b!6345510 (= res!2611149 (>= (zipperDepthTotal!387 lt!2363412) (zipperDepthTotal!387 zl!343)))))

(assert (=> b!6345510 (= lt!2363412 (Cons!64927 lt!2363402 Nil!64927))))

(assert (= (and start!628728 res!2611130) b!6345506))

(assert (= (and b!6345506 res!2611147) b!6345491))

(assert (= (and b!6345491 res!2611145) b!6345504))

(assert (= (and b!6345504 (not res!2611142)) b!6345488))

(assert (= (and b!6345488 (not res!2611128)) b!6345501))

(assert (= (and b!6345501 (not res!2611135)) b!6345509))

(assert (= (and b!6345509 (not res!2611146)) b!6345492))

(assert (= (and b!6345492 (not res!2611129)) b!6345494))

(assert (= (and b!6345494 (not res!2611131)) b!6345503))

(assert (= (and b!6345503 (not res!2611139)) b!6345489))

(assert (= (and b!6345489 (not res!2611150)) b!6345490))

(assert (= (and b!6345490 c!1154018) b!6345500))

(assert (= (and b!6345490 (not c!1154018)) b!6345481))

(assert (= (and b!6345500 (not res!2611133)) b!6345505))

(assert (= (and b!6345490 (not res!2611140)) b!6345486))

(assert (= (and b!6345486 res!2611138) b!6345493))

(assert (= (and b!6345486 (not res!2611141)) b!6345487))

(assert (= (and b!6345487 (not res!2611151)) b!6345476))

(assert (= (and b!6345476 (not res!2611134)) b!6345495))

(assert (= (and b!6345495 (not res!2611127)) b!6345483))

(assert (= (and b!6345483 (not res!2611136)) b!6345484))

(assert (= (and b!6345484 (not res!2611144)) b!6345507))

(assert (= (and b!6345507 (not res!2611143)) b!6345477))

(assert (= (and b!6345477 (not res!2611132)) b!6345510))

(assert (= (and b!6345510 (not res!2611149)) b!6345480))

(assert (= (and b!6345480 (not res!2611137)) b!6345499))

(assert (= (and b!6345499 (not res!2611148)) b!6345502))

(assert (= (and start!628728 (is-ElementMatch!16250 r!7292)) b!6345479))

(assert (= (and start!628728 (is-Concat!25095 r!7292)) b!6345497))

(assert (= (and start!628728 (is-Star!16250 r!7292)) b!6345496))

(assert (= (and start!628728 (is-Union!16250 r!7292)) b!6345498))

(assert (= (and start!628728 condSetEmpty!43197) setIsEmpty!43197))

(assert (= (and start!628728 (not condSetEmpty!43197)) setNonEmpty!43197))

(assert (= setNonEmpty!43197 b!6345482))

(assert (= b!6345508 b!6345478))

(assert (= (and start!628728 (is-Cons!64927 zl!343)) b!6345508))

(assert (= (and start!628728 (is-Cons!64926 s!2326)) b!6345485))

(declare-fun m!7153196 () Bool)

(assert (=> start!628728 m!7153196))

(declare-fun m!7153198 () Bool)

(assert (=> b!6345504 m!7153198))

(declare-fun m!7153200 () Bool)

(assert (=> b!6345504 m!7153200))

(declare-fun m!7153202 () Bool)

(assert (=> b!6345504 m!7153202))

(declare-fun m!7153204 () Bool)

(assert (=> b!6345491 m!7153204))

(declare-fun m!7153206 () Bool)

(assert (=> b!6345495 m!7153206))

(declare-fun m!7153208 () Bool)

(assert (=> b!6345495 m!7153208))

(declare-fun m!7153210 () Bool)

(assert (=> b!6345493 m!7153210))

(declare-fun m!7153212 () Bool)

(assert (=> b!6345492 m!7153212))

(assert (=> b!6345492 m!7153212))

(declare-fun m!7153214 () Bool)

(assert (=> b!6345492 m!7153214))

(declare-fun m!7153216 () Bool)

(assert (=> b!6345483 m!7153216))

(declare-fun m!7153218 () Bool)

(assert (=> b!6345483 m!7153218))

(declare-fun m!7153220 () Bool)

(assert (=> b!6345483 m!7153220))

(declare-fun m!7153222 () Bool)

(assert (=> b!6345483 m!7153222))

(declare-fun m!7153224 () Bool)

(assert (=> b!6345483 m!7153224))

(declare-fun m!7153226 () Bool)

(assert (=> b!6345476 m!7153226))

(declare-fun m!7153228 () Bool)

(assert (=> b!6345508 m!7153228))

(declare-fun m!7153230 () Bool)

(assert (=> b!6345484 m!7153230))

(declare-fun m!7153232 () Bool)

(assert (=> b!6345488 m!7153232))

(declare-fun m!7153234 () Bool)

(assert (=> b!6345500 m!7153234))

(assert (=> b!6345500 m!7153208))

(declare-fun m!7153236 () Bool)

(assert (=> b!6345500 m!7153236))

(declare-fun m!7153238 () Bool)

(assert (=> b!6345510 m!7153238))

(declare-fun m!7153240 () Bool)

(assert (=> b!6345510 m!7153240))

(declare-fun m!7153242 () Bool)

(assert (=> b!6345505 m!7153242))

(declare-fun m!7153244 () Bool)

(assert (=> b!6345480 m!7153244))

(declare-fun m!7153246 () Bool)

(assert (=> b!6345480 m!7153246))

(declare-fun m!7153248 () Bool)

(assert (=> b!6345490 m!7153248))

(declare-fun m!7153250 () Bool)

(assert (=> b!6345490 m!7153250))

(declare-fun m!7153252 () Bool)

(assert (=> b!6345490 m!7153252))

(declare-fun m!7153254 () Bool)

(assert (=> b!6345490 m!7153254))

(declare-fun m!7153256 () Bool)

(assert (=> b!6345490 m!7153256))

(declare-fun m!7153258 () Bool)

(assert (=> b!6345490 m!7153258))

(declare-fun m!7153260 () Bool)

(assert (=> b!6345490 m!7153260))

(declare-fun m!7153262 () Bool)

(assert (=> b!6345502 m!7153262))

(declare-fun m!7153264 () Bool)

(assert (=> b!6345506 m!7153264))

(declare-fun m!7153266 () Bool)

(assert (=> b!6345501 m!7153266))

(declare-fun m!7153268 () Bool)

(assert (=> b!6345499 m!7153268))

(declare-fun m!7153270 () Bool)

(assert (=> b!6345499 m!7153270))

(declare-fun m!7153272 () Bool)

(assert (=> b!6345499 m!7153272))

(declare-fun m!7153274 () Bool)

(assert (=> b!6345499 m!7153274))

(declare-fun m!7153276 () Bool)

(assert (=> b!6345499 m!7153276))

(declare-fun m!7153278 () Bool)

(assert (=> b!6345499 m!7153278))

(declare-fun m!7153280 () Bool)

(assert (=> b!6345499 m!7153280))

(declare-fun m!7153282 () Bool)

(assert (=> b!6345499 m!7153282))

(assert (=> b!6345499 m!7153280))

(declare-fun m!7153284 () Bool)

(assert (=> b!6345499 m!7153284))

(declare-fun m!7153286 () Bool)

(assert (=> b!6345499 m!7153286))

(declare-fun m!7153288 () Bool)

(assert (=> b!6345499 m!7153288))

(declare-fun m!7153290 () Bool)

(assert (=> b!6345499 m!7153290))

(declare-fun m!7153292 () Bool)

(assert (=> setNonEmpty!43197 m!7153292))

(declare-fun m!7153294 () Bool)

(assert (=> b!6345477 m!7153294))

(declare-fun m!7153296 () Bool)

(assert (=> b!6345477 m!7153296))

(declare-fun m!7153298 () Bool)

(assert (=> b!6345489 m!7153298))

(declare-fun m!7153300 () Bool)

(assert (=> b!6345503 m!7153300))

(assert (=> b!6345503 m!7153300))

(declare-fun m!7153302 () Bool)

(assert (=> b!6345503 m!7153302))

(declare-fun m!7153304 () Bool)

(assert (=> b!6345503 m!7153304))

(declare-fun m!7153306 () Bool)

(assert (=> b!6345503 m!7153306))

(declare-fun m!7153308 () Bool)

(assert (=> b!6345503 m!7153308))

(assert (=> b!6345503 m!7153306))

(declare-fun m!7153310 () Bool)

(assert (=> b!6345503 m!7153310))

(push 1)

(assert (not b!6345480))

(assert (not b!6345490))

(assert (not b!6345505))

(assert (not b!6345478))

(assert (not b!6345492))

(assert (not b!6345496))

(assert (not start!628728))

(assert (not setNonEmpty!43197))

(assert (not b!6345508))

(assert (not b!6345483))

(assert (not b!6345500))

(assert (not b!6345484))

(assert (not b!6345502))

(assert (not b!6345497))

(assert (not b!6345485))

(assert (not b!6345491))

(assert (not b!6345506))

(assert (not b!6345501))

(assert (not b!6345477))

(assert (not b!6345504))

(assert (not b!6345498))

(assert (not b!6345482))

(assert (not b!6345495))

(assert (not b!6345503))

(assert (not b!6345510))

(assert (not b!6345489))

(assert (not b!6345476))

(assert tp_is_empty!41753)

(assert (not b!6345493))

(assert (not b!6345499))

(assert (not b!6345488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1991347 () Bool)

(declare-fun lt!2363515 () Regex!16250)

(assert (=> d!1991347 (validRegex!7986 lt!2363515)))

(assert (=> d!1991347 (= lt!2363515 (generalisedUnion!2094 (unfocusZipperList!1671 zl!343)))))

(assert (=> d!1991347 (= (unfocusZipper!1992 zl!343) lt!2363515)))

(declare-fun bs!1588880 () Bool)

(assert (= bs!1588880 d!1991347))

(declare-fun m!7153428 () Bool)

(assert (=> bs!1588880 m!7153428))

(assert (=> bs!1588880 m!7153212))

(assert (=> bs!1588880 m!7153212))

(assert (=> bs!1588880 m!7153214))

(assert (=> b!6345491 d!1991347))

(declare-fun d!1991349 () Bool)

(declare-fun lambda!348804 () Int)

(declare-fun forall!15412 (List!65049 Int) Bool)

(assert (=> d!1991349 (= (inv!83873 setElem!43197) (forall!15412 (exprs!6134 setElem!43197) lambda!348804))))

(declare-fun bs!1588881 () Bool)

(assert (= bs!1588881 d!1991349))

(declare-fun m!7153430 () Bool)

(assert (=> bs!1588881 m!7153430))

(assert (=> setNonEmpty!43197 d!1991349))

(declare-fun bs!1588882 () Bool)

(declare-fun d!1991351 () Bool)

(assert (= bs!1588882 (and d!1991351 d!1991349)))

(declare-fun lambda!348807 () Int)

(assert (=> bs!1588882 (= lambda!348807 lambda!348804)))

(declare-fun b!6345664 () Bool)

(declare-fun e!3854085 () Bool)

(declare-fun e!3854086 () Bool)

(assert (=> b!6345664 (= e!3854085 e!3854086)))

(declare-fun c!1154037 () Bool)

(assert (=> b!6345664 (= c!1154037 (isEmpty!37012 (unfocusZipperList!1671 zl!343)))))

(declare-fun b!6345665 () Bool)

(declare-fun e!3854084 () Regex!16250)

(assert (=> b!6345665 (= e!3854084 EmptyLang!16250)))

(declare-fun b!6345666 () Bool)

(declare-fun e!3854083 () Bool)

(declare-fun lt!2363518 () Regex!16250)

(declare-fun head!12992 (List!65049) Regex!16250)

(assert (=> b!6345666 (= e!3854083 (= lt!2363518 (head!12992 (unfocusZipperList!1671 zl!343))))))

(declare-fun b!6345667 () Bool)

(declare-fun e!3854082 () Regex!16250)

(assert (=> b!6345667 (= e!3854082 (h!71373 (unfocusZipperList!1671 zl!343)))))

(declare-fun b!6345668 () Bool)

(declare-fun e!3854081 () Bool)

(assert (=> b!6345668 (= e!3854081 (isEmpty!37012 (t!378637 (unfocusZipperList!1671 zl!343))))))

(assert (=> d!1991351 e!3854085))

(declare-fun res!2611247 () Bool)

(assert (=> d!1991351 (=> (not res!2611247) (not e!3854085))))

(assert (=> d!1991351 (= res!2611247 (validRegex!7986 lt!2363518))))

(assert (=> d!1991351 (= lt!2363518 e!3854082)))

(declare-fun c!1154040 () Bool)

(assert (=> d!1991351 (= c!1154040 e!3854081)))

(declare-fun res!2611248 () Bool)

(assert (=> d!1991351 (=> (not res!2611248) (not e!3854081))))

(assert (=> d!1991351 (= res!2611248 (is-Cons!64925 (unfocusZipperList!1671 zl!343)))))

(assert (=> d!1991351 (forall!15412 (unfocusZipperList!1671 zl!343) lambda!348807)))

(assert (=> d!1991351 (= (generalisedUnion!2094 (unfocusZipperList!1671 zl!343)) lt!2363518)))

(declare-fun b!6345669 () Bool)

(assert (=> b!6345669 (= e!3854082 e!3854084)))

(declare-fun c!1154039 () Bool)

(assert (=> b!6345669 (= c!1154039 (is-Cons!64925 (unfocusZipperList!1671 zl!343)))))

(declare-fun b!6345670 () Bool)

(assert (=> b!6345670 (= e!3854086 e!3854083)))

(declare-fun c!1154038 () Bool)

(declare-fun tail!12077 (List!65049) List!65049)

(assert (=> b!6345670 (= c!1154038 (isEmpty!37012 (tail!12077 (unfocusZipperList!1671 zl!343))))))

(declare-fun b!6345671 () Bool)

(declare-fun isEmptyLang!1659 (Regex!16250) Bool)

(assert (=> b!6345671 (= e!3854086 (isEmptyLang!1659 lt!2363518))))

(declare-fun b!6345672 () Bool)

(assert (=> b!6345672 (= e!3854084 (Union!16250 (h!71373 (unfocusZipperList!1671 zl!343)) (generalisedUnion!2094 (t!378637 (unfocusZipperList!1671 zl!343)))))))

(declare-fun b!6345673 () Bool)

(declare-fun isUnion!1089 (Regex!16250) Bool)

(assert (=> b!6345673 (= e!3854083 (isUnion!1089 lt!2363518))))

(assert (= (and d!1991351 res!2611248) b!6345668))

(assert (= (and d!1991351 c!1154040) b!6345667))

(assert (= (and d!1991351 (not c!1154040)) b!6345669))

(assert (= (and b!6345669 c!1154039) b!6345672))

(assert (= (and b!6345669 (not c!1154039)) b!6345665))

(assert (= (and d!1991351 res!2611247) b!6345664))

(assert (= (and b!6345664 c!1154037) b!6345671))

(assert (= (and b!6345664 (not c!1154037)) b!6345670))

(assert (= (and b!6345670 c!1154038) b!6345666))

(assert (= (and b!6345670 (not c!1154038)) b!6345673))

(declare-fun m!7153432 () Bool)

(assert (=> d!1991351 m!7153432))

(assert (=> d!1991351 m!7153212))

(declare-fun m!7153434 () Bool)

(assert (=> d!1991351 m!7153434))

(assert (=> b!6345670 m!7153212))

(declare-fun m!7153436 () Bool)

(assert (=> b!6345670 m!7153436))

(assert (=> b!6345670 m!7153436))

(declare-fun m!7153438 () Bool)

(assert (=> b!6345670 m!7153438))

(declare-fun m!7153440 () Bool)

(assert (=> b!6345672 m!7153440))

(assert (=> b!6345664 m!7153212))

(declare-fun m!7153442 () Bool)

(assert (=> b!6345664 m!7153442))

(declare-fun m!7153444 () Bool)

(assert (=> b!6345673 m!7153444))

(declare-fun m!7153446 () Bool)

(assert (=> b!6345671 m!7153446))

(declare-fun m!7153448 () Bool)

(assert (=> b!6345668 m!7153448))

(assert (=> b!6345666 m!7153212))

(declare-fun m!7153450 () Bool)

(assert (=> b!6345666 m!7153450))

(assert (=> b!6345492 d!1991351))

(declare-fun bs!1588883 () Bool)

(declare-fun d!1991353 () Bool)

(assert (= bs!1588883 (and d!1991353 d!1991349)))

(declare-fun lambda!348810 () Int)

(assert (=> bs!1588883 (= lambda!348810 lambda!348804)))

(declare-fun bs!1588884 () Bool)

(assert (= bs!1588884 (and d!1991353 d!1991351)))

(assert (=> bs!1588884 (= lambda!348810 lambda!348807)))

(declare-fun lt!2363521 () List!65049)

(assert (=> d!1991353 (forall!15412 lt!2363521 lambda!348810)))

(declare-fun e!3854089 () List!65049)

(assert (=> d!1991353 (= lt!2363521 e!3854089)))

(declare-fun c!1154043 () Bool)

(assert (=> d!1991353 (= c!1154043 (is-Cons!64927 zl!343))))

(assert (=> d!1991353 (= (unfocusZipperList!1671 zl!343) lt!2363521)))

(declare-fun b!6345678 () Bool)

(assert (=> b!6345678 (= e!3854089 (Cons!64925 (generalisedConcat!1847 (exprs!6134 (h!71375 zl!343))) (unfocusZipperList!1671 (t!378639 zl!343))))))

(declare-fun b!6345679 () Bool)

(assert (=> b!6345679 (= e!3854089 Nil!64925)))

(assert (= (and d!1991353 c!1154043) b!6345678))

(assert (= (and d!1991353 (not c!1154043)) b!6345679))

(declare-fun m!7153452 () Bool)

(assert (=> d!1991353 m!7153452))

(assert (=> b!6345678 m!7153266))

(declare-fun m!7153454 () Bool)

(assert (=> b!6345678 m!7153454))

(assert (=> b!6345492 d!1991353))

(declare-fun d!1991355 () Bool)

(assert (=> d!1991355 (= (isEmpty!37012 (t!378637 (exprs!6134 (h!71375 zl!343)))) (is-Nil!64925 (t!378637 (exprs!6134 (h!71375 zl!343)))))))

(assert (=> b!6345489 d!1991355))

(declare-fun bs!1588885 () Bool)

(declare-fun d!1991357 () Bool)

(assert (= bs!1588885 (and d!1991357 d!1991349)))

(declare-fun lambda!348811 () Int)

(assert (=> bs!1588885 (= lambda!348811 lambda!348804)))

(declare-fun bs!1588886 () Bool)

(assert (= bs!1588886 (and d!1991357 d!1991351)))

(assert (=> bs!1588886 (= lambda!348811 lambda!348807)))

(declare-fun bs!1588887 () Bool)

(assert (= bs!1588887 (and d!1991357 d!1991353)))

(assert (=> bs!1588887 (= lambda!348811 lambda!348810)))

(assert (=> d!1991357 (= (inv!83873 (h!71375 zl!343)) (forall!15412 (exprs!6134 (h!71375 zl!343)) lambda!348811))))

(declare-fun bs!1588888 () Bool)

(assert (= bs!1588888 d!1991357))

(declare-fun m!7153456 () Bool)

(assert (=> bs!1588888 m!7153456))

(assert (=> b!6345508 d!1991357))

(declare-fun d!1991359 () Bool)

(declare-fun lt!2363524 () Int)

(assert (=> d!1991359 (>= lt!2363524 0)))

(declare-fun e!3854092 () Int)

(assert (=> d!1991359 (= lt!2363524 e!3854092)))

(declare-fun c!1154046 () Bool)

(assert (=> d!1991359 (= c!1154046 (is-Cons!64927 lt!2363412))))

(assert (=> d!1991359 (= (zipperDepthTotal!387 lt!2363412) lt!2363524)))

(declare-fun b!6345684 () Bool)

(assert (=> b!6345684 (= e!3854092 (+ (contextDepthTotal!359 (h!71375 lt!2363412)) (zipperDepthTotal!387 (t!378639 lt!2363412))))))

(declare-fun b!6345685 () Bool)

(assert (=> b!6345685 (= e!3854092 0)))

(assert (= (and d!1991359 c!1154046) b!6345684))

(assert (= (and d!1991359 (not c!1154046)) b!6345685))

(declare-fun m!7153458 () Bool)

(assert (=> b!6345684 m!7153458))

(declare-fun m!7153460 () Bool)

(assert (=> b!6345684 m!7153460))

(assert (=> b!6345510 d!1991359))

(declare-fun d!1991361 () Bool)

(declare-fun lt!2363525 () Int)

(assert (=> d!1991361 (>= lt!2363525 0)))

(declare-fun e!3854093 () Int)

(assert (=> d!1991361 (= lt!2363525 e!3854093)))

(declare-fun c!1154047 () Bool)

(assert (=> d!1991361 (= c!1154047 (is-Cons!64927 zl!343))))

(assert (=> d!1991361 (= (zipperDepthTotal!387 zl!343) lt!2363525)))

(declare-fun b!6345686 () Bool)

(assert (=> b!6345686 (= e!3854093 (+ (contextDepthTotal!359 (h!71375 zl!343)) (zipperDepthTotal!387 (t!378639 zl!343))))))

(declare-fun b!6345687 () Bool)

(assert (=> b!6345687 (= e!3854093 0)))

(assert (= (and d!1991361 c!1154047) b!6345686))

(assert (= (and d!1991361 (not c!1154047)) b!6345687))

(assert (=> b!6345686 m!7153296))

(declare-fun m!7153462 () Bool)

(assert (=> b!6345686 m!7153462))

(assert (=> b!6345510 d!1991361))

(declare-fun d!1991363 () Bool)

(declare-fun choose!47065 ((Set Context!11268) Int) (Set Context!11268))

(assert (=> d!1991363 (= (flatMap!1755 z!1189 lambda!348784) (choose!47065 z!1189 lambda!348784))))

(declare-fun bs!1588889 () Bool)

(assert (= bs!1588889 d!1991363))

(declare-fun m!7153464 () Bool)

(assert (=> bs!1588889 m!7153464))

(assert (=> b!6345490 d!1991363))

(declare-fun b!6345698 () Bool)

(declare-fun e!3854102 () (Set Context!11268))

(declare-fun e!3854100 () (Set Context!11268))

(assert (=> b!6345698 (= e!3854102 e!3854100)))

(declare-fun c!1154053 () Bool)

(assert (=> b!6345698 (= c!1154053 (is-Cons!64925 (exprs!6134 (Context!11269 (Cons!64925 (h!71373 (exprs!6134 (h!71375 zl!343))) (t!378637 (exprs!6134 (h!71375 zl!343))))))))))

(declare-fun d!1991365 () Bool)

(declare-fun c!1154052 () Bool)

(declare-fun e!3854101 () Bool)

(assert (=> d!1991365 (= c!1154052 e!3854101)))

(declare-fun res!2611251 () Bool)

(assert (=> d!1991365 (=> (not res!2611251) (not e!3854101))))

(assert (=> d!1991365 (= res!2611251 (is-Cons!64925 (exprs!6134 (Context!11269 (Cons!64925 (h!71373 (exprs!6134 (h!71375 zl!343))) (t!378637 (exprs!6134 (h!71375 zl!343))))))))))

(assert (=> d!1991365 (= (derivationStepZipperUp!1424 (Context!11269 (Cons!64925 (h!71373 (exprs!6134 (h!71375 zl!343))) (t!378637 (exprs!6134 (h!71375 zl!343))))) (h!71374 s!2326)) e!3854102)))

(declare-fun b!6345699 () Bool)

(assert (=> b!6345699 (= e!3854101 (nullable!6243 (h!71373 (exprs!6134 (Context!11269 (Cons!64925 (h!71373 (exprs!6134 (h!71375 zl!343))) (t!378637 (exprs!6134 (h!71375 zl!343)))))))))))

(declare-fun b!6345700 () Bool)

(declare-fun call!540917 () (Set Context!11268))

(assert (=> b!6345700 (= e!3854100 call!540917)))

(declare-fun b!6345701 () Bool)

(assert (=> b!6345701 (= e!3854100 (as set.empty (Set Context!11268)))))

(declare-fun b!6345702 () Bool)

(assert (=> b!6345702 (= e!3854102 (set.union call!540917 (derivationStepZipperUp!1424 (Context!11269 (t!378637 (exprs!6134 (Context!11269 (Cons!64925 (h!71373 (exprs!6134 (h!71375 zl!343))) (t!378637 (exprs!6134 (h!71375 zl!343)))))))) (h!71374 s!2326))))))

(declare-fun bm!540912 () Bool)

(assert (=> bm!540912 (= call!540917 (derivationStepZipperDown!1498 (h!71373 (exprs!6134 (Context!11269 (Cons!64925 (h!71373 (exprs!6134 (h!71375 zl!343))) (t!378637 (exprs!6134 (h!71375 zl!343))))))) (Context!11269 (t!378637 (exprs!6134 (Context!11269 (Cons!64925 (h!71373 (exprs!6134 (h!71375 zl!343))) (t!378637 (exprs!6134 (h!71375 zl!343)))))))) (h!71374 s!2326)))))

(assert (= (and d!1991365 res!2611251) b!6345699))

(assert (= (and d!1991365 c!1154052) b!6345702))

(assert (= (and d!1991365 (not c!1154052)) b!6345698))

(assert (= (and b!6345698 c!1154053) b!6345700))

(assert (= (and b!6345698 (not c!1154053)) b!6345701))

(assert (= (or b!6345702 b!6345700) bm!540912))

(declare-fun m!7153466 () Bool)

(assert (=> b!6345699 m!7153466))

(declare-fun m!7153468 () Bool)

(assert (=> b!6345702 m!7153468))

(declare-fun m!7153470 () Bool)

(assert (=> bm!540912 m!7153470))

(assert (=> b!6345490 d!1991365))

(declare-fun d!1991367 () Bool)

(declare-fun dynLambda!25740 (Int Context!11268) (Set Context!11268))

(assert (=> d!1991367 (= (flatMap!1755 z!1189 lambda!348784) (dynLambda!25740 lambda!348784 (h!71375 zl!343)))))

(declare-fun lt!2363528 () Unit!158331)

(declare-fun choose!47066 ((Set Context!11268) Context!11268 Int) Unit!158331)

(assert (=> d!1991367 (= lt!2363528 (choose!47066 z!1189 (h!71375 zl!343) lambda!348784))))

(assert (=> d!1991367 (= z!1189 (set.insert (h!71375 zl!343) (as set.empty (Set Context!11268))))))

(assert (=> d!1991367 (= (lemmaFlatMapOnSingletonSet!1281 z!1189 (h!71375 zl!343) lambda!348784) lt!2363528)))

(declare-fun b_lambda!241445 () Bool)

(assert (=> (not b_lambda!241445) (not d!1991367)))

(declare-fun bs!1588890 () Bool)

(assert (= bs!1588890 d!1991367))

(assert (=> bs!1588890 m!7153252))

(declare-fun m!7153472 () Bool)

(assert (=> bs!1588890 m!7153472))

(declare-fun m!7153474 () Bool)

(assert (=> bs!1588890 m!7153474))

(declare-fun m!7153476 () Bool)

(assert (=> bs!1588890 m!7153476))

(assert (=> b!6345490 d!1991367))

(declare-fun b!6345703 () Bool)

(declare-fun e!3854105 () (Set Context!11268))

(declare-fun e!3854103 () (Set Context!11268))

(assert (=> b!6345703 (= e!3854105 e!3854103)))

(declare-fun c!1154055 () Bool)

(assert (=> b!6345703 (= c!1154055 (is-Cons!64925 (exprs!6134 (h!71375 zl!343))))))

(declare-fun d!1991369 () Bool)

(declare-fun c!1154054 () Bool)

(declare-fun e!3854104 () Bool)

(assert (=> d!1991369 (= c!1154054 e!3854104)))

(declare-fun res!2611252 () Bool)

(assert (=> d!1991369 (=> (not res!2611252) (not e!3854104))))

(assert (=> d!1991369 (= res!2611252 (is-Cons!64925 (exprs!6134 (h!71375 zl!343))))))

(assert (=> d!1991369 (= (derivationStepZipperUp!1424 (h!71375 zl!343) (h!71374 s!2326)) e!3854105)))

(declare-fun b!6345704 () Bool)

(assert (=> b!6345704 (= e!3854104 (nullable!6243 (h!71373 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun b!6345705 () Bool)

(declare-fun call!540918 () (Set Context!11268))

(assert (=> b!6345705 (= e!3854103 call!540918)))

(declare-fun b!6345706 () Bool)

(assert (=> b!6345706 (= e!3854103 (as set.empty (Set Context!11268)))))

(declare-fun b!6345707 () Bool)

(assert (=> b!6345707 (= e!3854105 (set.union call!540918 (derivationStepZipperUp!1424 (Context!11269 (t!378637 (exprs!6134 (h!71375 zl!343)))) (h!71374 s!2326))))))

(declare-fun bm!540913 () Bool)

(assert (=> bm!540913 (= call!540918 (derivationStepZipperDown!1498 (h!71373 (exprs!6134 (h!71375 zl!343))) (Context!11269 (t!378637 (exprs!6134 (h!71375 zl!343)))) (h!71374 s!2326)))))

(assert (= (and d!1991369 res!2611252) b!6345704))

(assert (= (and d!1991369 c!1154054) b!6345707))

(assert (= (and d!1991369 (not c!1154054)) b!6345703))

(assert (= (and b!6345703 c!1154055) b!6345705))

(assert (= (and b!6345703 (not c!1154055)) b!6345706))

(assert (= (or b!6345707 b!6345705) bm!540913))

(assert (=> b!6345704 m!7153254))

(declare-fun m!7153478 () Bool)

(assert (=> b!6345707 m!7153478))

(declare-fun m!7153480 () Bool)

(assert (=> bm!540913 m!7153480))

(assert (=> b!6345490 d!1991369))

(declare-fun b!6345708 () Bool)

(declare-fun e!3854108 () (Set Context!11268))

(declare-fun e!3854106 () (Set Context!11268))

(assert (=> b!6345708 (= e!3854108 e!3854106)))

(declare-fun c!1154057 () Bool)

(assert (=> b!6345708 (= c!1154057 (is-Cons!64925 (exprs!6134 lt!2363411)))))

(declare-fun d!1991371 () Bool)

(declare-fun c!1154056 () Bool)

(declare-fun e!3854107 () Bool)

(assert (=> d!1991371 (= c!1154056 e!3854107)))

(declare-fun res!2611253 () Bool)

(assert (=> d!1991371 (=> (not res!2611253) (not e!3854107))))

(assert (=> d!1991371 (= res!2611253 (is-Cons!64925 (exprs!6134 lt!2363411)))))

(assert (=> d!1991371 (= (derivationStepZipperUp!1424 lt!2363411 (h!71374 s!2326)) e!3854108)))

(declare-fun b!6345709 () Bool)

(assert (=> b!6345709 (= e!3854107 (nullable!6243 (h!71373 (exprs!6134 lt!2363411))))))

(declare-fun b!6345710 () Bool)

(declare-fun call!540919 () (Set Context!11268))

(assert (=> b!6345710 (= e!3854106 call!540919)))

(declare-fun b!6345711 () Bool)

(assert (=> b!6345711 (= e!3854106 (as set.empty (Set Context!11268)))))

(declare-fun b!6345712 () Bool)

(assert (=> b!6345712 (= e!3854108 (set.union call!540919 (derivationStepZipperUp!1424 (Context!11269 (t!378637 (exprs!6134 lt!2363411))) (h!71374 s!2326))))))

(declare-fun bm!540914 () Bool)

(assert (=> bm!540914 (= call!540919 (derivationStepZipperDown!1498 (h!71373 (exprs!6134 lt!2363411)) (Context!11269 (t!378637 (exprs!6134 lt!2363411))) (h!71374 s!2326)))))

(assert (= (and d!1991371 res!2611253) b!6345709))

(assert (= (and d!1991371 c!1154056) b!6345712))

(assert (= (and d!1991371 (not c!1154056)) b!6345708))

(assert (= (and b!6345708 c!1154057) b!6345710))

(assert (= (and b!6345708 (not c!1154057)) b!6345711))

(assert (= (or b!6345712 b!6345710) bm!540914))

(declare-fun m!7153482 () Bool)

(assert (=> b!6345709 m!7153482))

(declare-fun m!7153484 () Bool)

(assert (=> b!6345712 m!7153484))

(declare-fun m!7153486 () Bool)

(assert (=> bm!540914 m!7153486))

(assert (=> b!6345490 d!1991371))

(declare-fun d!1991373 () Bool)

(declare-fun nullableFct!2190 (Regex!16250) Bool)

(assert (=> d!1991373 (= (nullable!6243 (h!71373 (exprs!6134 (h!71375 zl!343)))) (nullableFct!2190 (h!71373 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun bs!1588891 () Bool)

(assert (= bs!1588891 d!1991373))

(declare-fun m!7153488 () Bool)

(assert (=> bs!1588891 m!7153488))

(assert (=> b!6345490 d!1991373))

(declare-fun b!6345735 () Bool)

(declare-fun e!3854125 () (Set Context!11268))

(assert (=> b!6345735 (= e!3854125 (as set.empty (Set Context!11268)))))

(declare-fun b!6345736 () Bool)

(declare-fun c!1154072 () Bool)

(assert (=> b!6345736 (= c!1154072 (is-Star!16250 (h!71373 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun e!3854121 () (Set Context!11268))

(assert (=> b!6345736 (= e!3854121 e!3854125)))

(declare-fun b!6345737 () Bool)

(declare-fun e!3854126 () (Set Context!11268))

(declare-fun call!540934 () (Set Context!11268))

(declare-fun call!540933 () (Set Context!11268))

(assert (=> b!6345737 (= e!3854126 (set.union call!540934 call!540933))))

(declare-fun b!6345738 () Bool)

(declare-fun call!540937 () (Set Context!11268))

(assert (=> b!6345738 (= e!3854121 call!540937)))

(declare-fun b!6345739 () Bool)

(declare-fun e!3854122 () (Set Context!11268))

(declare-fun call!540936 () (Set Context!11268))

(assert (=> b!6345739 (= e!3854122 (set.union call!540934 call!540936))))

(declare-fun b!6345740 () Bool)

(declare-fun e!3854124 () (Set Context!11268))

(assert (=> b!6345740 (= e!3854124 (set.insert lt!2363411 (as set.empty (Set Context!11268))))))

(declare-fun bm!540927 () Bool)

(assert (=> bm!540927 (= call!540937 call!540933)))

(declare-fun b!6345741 () Bool)

(declare-fun c!1154068 () Bool)

(declare-fun e!3854123 () Bool)

(assert (=> b!6345741 (= c!1154068 e!3854123)))

(declare-fun res!2611256 () Bool)

(assert (=> b!6345741 (=> (not res!2611256) (not e!3854123))))

(assert (=> b!6345741 (= res!2611256 (is-Concat!25095 (h!71373 (exprs!6134 (h!71375 zl!343)))))))

(assert (=> b!6345741 (= e!3854122 e!3854126)))

(declare-fun c!1154069 () Bool)

(declare-fun bm!540928 () Bool)

(declare-fun call!540935 () List!65049)

(assert (=> bm!540928 (= call!540934 (derivationStepZipperDown!1498 (ite c!1154069 (regOne!33013 (h!71373 (exprs!6134 (h!71375 zl!343)))) (regOne!33012 (h!71373 (exprs!6134 (h!71375 zl!343))))) (ite c!1154069 lt!2363411 (Context!11269 call!540935)) (h!71374 s!2326)))))

(declare-fun bm!540929 () Bool)

(declare-fun c!1154070 () Bool)

(declare-fun $colon$colon!2111 (List!65049 Regex!16250) List!65049)

(assert (=> bm!540929 (= call!540935 ($colon$colon!2111 (exprs!6134 lt!2363411) (ite (or c!1154068 c!1154070) (regTwo!33012 (h!71373 (exprs!6134 (h!71375 zl!343)))) (h!71373 (exprs!6134 (h!71375 zl!343))))))))

(declare-fun b!6345742 () Bool)

(assert (=> b!6345742 (= e!3854126 e!3854121)))

(assert (=> b!6345742 (= c!1154070 (is-Concat!25095 (h!71373 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun b!6345743 () Bool)

(assert (=> b!6345743 (= e!3854124 e!3854122)))

(assert (=> b!6345743 (= c!1154069 (is-Union!16250 (h!71373 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun b!6345744 () Bool)

(assert (=> b!6345744 (= e!3854125 call!540937)))

(declare-fun b!6345745 () Bool)

(assert (=> b!6345745 (= e!3854123 (nullable!6243 (regOne!33012 (h!71373 (exprs!6134 (h!71375 zl!343))))))))

(declare-fun bm!540930 () Bool)

(assert (=> bm!540930 (= call!540933 call!540936)))

(declare-fun d!1991375 () Bool)

(declare-fun c!1154071 () Bool)

(assert (=> d!1991375 (= c!1154071 (and (is-ElementMatch!16250 (h!71373 (exprs!6134 (h!71375 zl!343)))) (= (c!1154019 (h!71373 (exprs!6134 (h!71375 zl!343)))) (h!71374 s!2326))))))

(assert (=> d!1991375 (= (derivationStepZipperDown!1498 (h!71373 (exprs!6134 (h!71375 zl!343))) lt!2363411 (h!71374 s!2326)) e!3854124)))

(declare-fun bm!540931 () Bool)

(declare-fun call!540932 () List!65049)

(assert (=> bm!540931 (= call!540932 call!540935)))

(declare-fun bm!540932 () Bool)

(assert (=> bm!540932 (= call!540936 (derivationStepZipperDown!1498 (ite c!1154069 (regTwo!33013 (h!71373 (exprs!6134 (h!71375 zl!343)))) (ite c!1154068 (regTwo!33012 (h!71373 (exprs!6134 (h!71375 zl!343)))) (ite c!1154070 (regOne!33012 (h!71373 (exprs!6134 (h!71375 zl!343)))) (reg!16579 (h!71373 (exprs!6134 (h!71375 zl!343))))))) (ite (or c!1154069 c!1154068) lt!2363411 (Context!11269 call!540932)) (h!71374 s!2326)))))

(assert (= (and d!1991375 c!1154071) b!6345740))

(assert (= (and d!1991375 (not c!1154071)) b!6345743))

(assert (= (and b!6345743 c!1154069) b!6345739))

(assert (= (and b!6345743 (not c!1154069)) b!6345741))

(assert (= (and b!6345741 res!2611256) b!6345745))

(assert (= (and b!6345741 c!1154068) b!6345737))

(assert (= (and b!6345741 (not c!1154068)) b!6345742))

(assert (= (and b!6345742 c!1154070) b!6345738))

(assert (= (and b!6345742 (not c!1154070)) b!6345736))

(assert (= (and b!6345736 c!1154072) b!6345744))

(assert (= (and b!6345736 (not c!1154072)) b!6345735))

(assert (= (or b!6345738 b!6345744) bm!540931))

(assert (= (or b!6345738 b!6345744) bm!540927))

(assert (= (or b!6345737 bm!540931) bm!540929))

(assert (= (or b!6345737 bm!540927) bm!540930))

(assert (= (or b!6345739 bm!540930) bm!540932))

(assert (= (or b!6345739 b!6345737) bm!540928))

(declare-fun m!7153490 () Bool)

(assert (=> bm!540932 m!7153490))

(declare-fun m!7153492 () Bool)

(assert (=> b!6345740 m!7153492))

(declare-fun m!7153494 () Bool)

(assert (=> bm!540928 m!7153494))

(declare-fun m!7153496 () Bool)

(assert (=> bm!540929 m!7153496))

(declare-fun m!7153498 () Bool)

(assert (=> b!6345745 m!7153498))

(assert (=> b!6345490 d!1991375))

(declare-fun b!6345746 () Bool)

(declare-fun e!3854131 () (Set Context!11268))

(assert (=> b!6345746 (= e!3854131 (as set.empty (Set Context!11268)))))

(declare-fun b!6345747 () Bool)

(declare-fun c!1154077 () Bool)

(assert (=> b!6345747 (= c!1154077 (is-Star!16250 (regOne!33012 (regOne!33012 r!7292))))))

(declare-fun e!3854127 () (Set Context!11268))

(assert (=> b!6345747 (= e!3854127 e!3854131)))

(declare-fun b!6345748 () Bool)

(declare-fun e!3854132 () (Set Context!11268))

(declare-fun call!540940 () (Set Context!11268))

(declare-fun call!540939 () (Set Context!11268))

(assert (=> b!6345748 (= e!3854132 (set.union call!540940 call!540939))))

(declare-fun b!6345749 () Bool)

(declare-fun call!540943 () (Set Context!11268))

(assert (=> b!6345749 (= e!3854127 call!540943)))

(declare-fun b!6345750 () Bool)

(declare-fun e!3854128 () (Set Context!11268))

(declare-fun call!540942 () (Set Context!11268))

(assert (=> b!6345750 (= e!3854128 (set.union call!540940 call!540942))))

(declare-fun b!6345751 () Bool)

(declare-fun e!3854130 () (Set Context!11268))

(assert (=> b!6345751 (= e!3854130 (set.insert (Context!11269 lt!2363401) (as set.empty (Set Context!11268))))))

(declare-fun bm!540933 () Bool)

(assert (=> bm!540933 (= call!540943 call!540939)))

(declare-fun b!6345752 () Bool)

(declare-fun c!1154073 () Bool)

(declare-fun e!3854129 () Bool)

(assert (=> b!6345752 (= c!1154073 e!3854129)))

(declare-fun res!2611257 () Bool)

(assert (=> b!6345752 (=> (not res!2611257) (not e!3854129))))

(assert (=> b!6345752 (= res!2611257 (is-Concat!25095 (regOne!33012 (regOne!33012 r!7292))))))

(assert (=> b!6345752 (= e!3854128 e!3854132)))

(declare-fun call!540941 () List!65049)

(declare-fun c!1154074 () Bool)

(declare-fun bm!540934 () Bool)

(assert (=> bm!540934 (= call!540940 (derivationStepZipperDown!1498 (ite c!1154074 (regOne!33013 (regOne!33012 (regOne!33012 r!7292))) (regOne!33012 (regOne!33012 (regOne!33012 r!7292)))) (ite c!1154074 (Context!11269 lt!2363401) (Context!11269 call!540941)) (h!71374 s!2326)))))

(declare-fun c!1154075 () Bool)

(declare-fun bm!540935 () Bool)

(assert (=> bm!540935 (= call!540941 ($colon$colon!2111 (exprs!6134 (Context!11269 lt!2363401)) (ite (or c!1154073 c!1154075) (regTwo!33012 (regOne!33012 (regOne!33012 r!7292))) (regOne!33012 (regOne!33012 r!7292)))))))

(declare-fun b!6345753 () Bool)

(assert (=> b!6345753 (= e!3854132 e!3854127)))

(assert (=> b!6345753 (= c!1154075 (is-Concat!25095 (regOne!33012 (regOne!33012 r!7292))))))

(declare-fun b!6345754 () Bool)

(assert (=> b!6345754 (= e!3854130 e!3854128)))

(assert (=> b!6345754 (= c!1154074 (is-Union!16250 (regOne!33012 (regOne!33012 r!7292))))))

(declare-fun b!6345755 () Bool)

(assert (=> b!6345755 (= e!3854131 call!540943)))

(declare-fun b!6345756 () Bool)

(assert (=> b!6345756 (= e!3854129 (nullable!6243 (regOne!33012 (regOne!33012 (regOne!33012 r!7292)))))))

(declare-fun bm!540936 () Bool)

(assert (=> bm!540936 (= call!540939 call!540942)))

(declare-fun d!1991377 () Bool)

(declare-fun c!1154076 () Bool)

(assert (=> d!1991377 (= c!1154076 (and (is-ElementMatch!16250 (regOne!33012 (regOne!33012 r!7292))) (= (c!1154019 (regOne!33012 (regOne!33012 r!7292))) (h!71374 s!2326))))))

(assert (=> d!1991377 (= (derivationStepZipperDown!1498 (regOne!33012 (regOne!33012 r!7292)) (Context!11269 lt!2363401) (h!71374 s!2326)) e!3854130)))

(declare-fun bm!540937 () Bool)

(declare-fun call!540938 () List!65049)

(assert (=> bm!540937 (= call!540938 call!540941)))

(declare-fun bm!540938 () Bool)

(assert (=> bm!540938 (= call!540942 (derivationStepZipperDown!1498 (ite c!1154074 (regTwo!33013 (regOne!33012 (regOne!33012 r!7292))) (ite c!1154073 (regTwo!33012 (regOne!33012 (regOne!33012 r!7292))) (ite c!1154075 (regOne!33012 (regOne!33012 (regOne!33012 r!7292))) (reg!16579 (regOne!33012 (regOne!33012 r!7292)))))) (ite (or c!1154074 c!1154073) (Context!11269 lt!2363401) (Context!11269 call!540938)) (h!71374 s!2326)))))

(assert (= (and d!1991377 c!1154076) b!6345751))

(assert (= (and d!1991377 (not c!1154076)) b!6345754))

(assert (= (and b!6345754 c!1154074) b!6345750))

(assert (= (and b!6345754 (not c!1154074)) b!6345752))

(assert (= (and b!6345752 res!2611257) b!6345756))

(assert (= (and b!6345752 c!1154073) b!6345748))

(assert (= (and b!6345752 (not c!1154073)) b!6345753))

(assert (= (and b!6345753 c!1154075) b!6345749))

(assert (= (and b!6345753 (not c!1154075)) b!6345747))

(assert (= (and b!6345747 c!1154077) b!6345755))

(assert (= (and b!6345747 (not c!1154077)) b!6345746))

(assert (= (or b!6345749 b!6345755) bm!540937))

(assert (= (or b!6345749 b!6345755) bm!540933))

(assert (= (or b!6345748 bm!540937) bm!540935))

(assert (= (or b!6345748 bm!540933) bm!540936))

(assert (= (or b!6345750 bm!540936) bm!540938))

(assert (= (or b!6345750 b!6345748) bm!540934))

(declare-fun m!7153500 () Bool)

(assert (=> bm!540938 m!7153500))

(declare-fun m!7153502 () Bool)

(assert (=> b!6345751 m!7153502))

(declare-fun m!7153504 () Bool)

(assert (=> bm!540934 m!7153504))

(declare-fun m!7153506 () Bool)

(assert (=> bm!540935 m!7153506))

(declare-fun m!7153508 () Bool)

(assert (=> b!6345756 m!7153508))

(assert (=> b!6345476 d!1991377))

(declare-fun d!1991379 () Bool)

(declare-fun lt!2363531 () Int)

(assert (=> d!1991379 (>= lt!2363531 0)))

(declare-fun e!3854135 () Int)

(assert (=> d!1991379 (= lt!2363531 e!3854135)))

(declare-fun c!1154081 () Bool)

(assert (=> d!1991379 (= c!1154081 (is-Cons!64925 (exprs!6134 lt!2363402)))))

(assert (=> d!1991379 (= (contextDepthTotal!359 lt!2363402) lt!2363531)))

(declare-fun b!6345761 () Bool)

(declare-fun regexDepthTotal!208 (Regex!16250) Int)

(assert (=> b!6345761 (= e!3854135 (+ (regexDepthTotal!208 (h!71373 (exprs!6134 lt!2363402))) (contextDepthTotal!359 (Context!11269 (t!378637 (exprs!6134 lt!2363402))))))))

(declare-fun b!6345762 () Bool)

(assert (=> b!6345762 (= e!3854135 1)))

(assert (= (and d!1991379 c!1154081) b!6345761))

(assert (= (and d!1991379 (not c!1154081)) b!6345762))

(declare-fun m!7153510 () Bool)

(assert (=> b!6345761 m!7153510))

(declare-fun m!7153512 () Bool)

(assert (=> b!6345761 m!7153512))

(assert (=> b!6345477 d!1991379))

(declare-fun d!1991381 () Bool)

(declare-fun lt!2363532 () Int)

(assert (=> d!1991381 (>= lt!2363532 0)))

(declare-fun e!3854136 () Int)

(assert (=> d!1991381 (= lt!2363532 e!3854136)))

(declare-fun c!1154082 () Bool)

(assert (=> d!1991381 (= c!1154082 (is-Cons!64925 (exprs!6134 (h!71375 zl!343))))))

(assert (=> d!1991381 (= (contextDepthTotal!359 (h!71375 zl!343)) lt!2363532)))

(declare-fun b!6345763 () Bool)

(assert (=> b!6345763 (= e!3854136 (+ (regexDepthTotal!208 (h!71373 (exprs!6134 (h!71375 zl!343)))) (contextDepthTotal!359 (Context!11269 (t!378637 (exprs!6134 (h!71375 zl!343)))))))))

(declare-fun b!6345764 () Bool)

(assert (=> b!6345764 (= e!3854136 1)))

(assert (= (and d!1991381 c!1154082) b!6345763))

(assert (= (and d!1991381 (not c!1154082)) b!6345764))

(declare-fun m!7153514 () Bool)

(assert (=> b!6345763 m!7153514))

(declare-fun m!7153516 () Bool)

(assert (=> b!6345763 m!7153516))

(assert (=> b!6345477 d!1991381))

(declare-fun d!1991383 () Bool)

(assert (=> d!1991383 (= (nullable!6243 (regOne!33012 (regOne!33012 r!7292))) (nullableFct!2190 (regOne!33012 (regOne!33012 r!7292))))))

(declare-fun bs!1588892 () Bool)

(assert (= bs!1588892 d!1991383))

(declare-fun m!7153518 () Bool)

(assert (=> bs!1588892 m!7153518))

(assert (=> b!6345493 d!1991383))

(declare-fun d!1991385 () Bool)

(declare-fun c!1154085 () Bool)

(declare-fun isEmpty!37015 (List!65050) Bool)

(assert (=> d!1991385 (= c!1154085 (isEmpty!37015 (t!378638 s!2326)))))

(declare-fun e!3854139 () Bool)

(assert (=> d!1991385 (= (matchZipper!2262 lt!2363410 (t!378638 s!2326)) e!3854139)))

(declare-fun b!6345769 () Bool)

(declare-fun nullableZipper!2016 ((Set Context!11268)) Bool)

(assert (=> b!6345769 (= e!3854139 (nullableZipper!2016 lt!2363410))))

(declare-fun b!6345770 () Bool)

(declare-fun head!12993 (List!65050) C!32770)

(declare-fun tail!12078 (List!65050) List!65050)

(assert (=> b!6345770 (= e!3854139 (matchZipper!2262 (derivationStepZipper!2216 lt!2363410 (head!12993 (t!378638 s!2326))) (tail!12078 (t!378638 s!2326))))))

(assert (= (and d!1991385 c!1154085) b!6345769))

(assert (= (and d!1991385 (not c!1154085)) b!6345770))

(declare-fun m!7153520 () Bool)

(assert (=> d!1991385 m!7153520))

(declare-fun m!7153522 () Bool)

(assert (=> b!6345769 m!7153522))

(declare-fun m!7153524 () Bool)

(assert (=> b!6345770 m!7153524))

(assert (=> b!6345770 m!7153524))

(declare-fun m!7153526 () Bool)

(assert (=> b!6345770 m!7153526))

(declare-fun m!7153528 () Bool)

(assert (=> b!6345770 m!7153528))

(assert (=> b!6345770 m!7153526))

(assert (=> b!6345770 m!7153528))

(declare-fun m!7153530 () Bool)

(assert (=> b!6345770 m!7153530))

(assert (=> b!6345495 d!1991385))

(declare-fun d!1991387 () Bool)

(declare-fun c!1154086 () Bool)

(assert (=> d!1991387 (= c!1154086 (isEmpty!37015 (t!378638 s!2326)))))

(declare-fun e!3854140 () Bool)

(assert (=> d!1991387 (= (matchZipper!2262 lt!2363418 (t!378638 s!2326)) e!3854140)))

(declare-fun b!6345771 () Bool)

(assert (=> b!6345771 (= e!3854140 (nullableZipper!2016 lt!2363418))))

(declare-fun b!6345772 () Bool)

(assert (=> b!6345772 (= e!3854140 (matchZipper!2262 (derivationStepZipper!2216 lt!2363418 (head!12993 (t!378638 s!2326))) (tail!12078 (t!378638 s!2326))))))

(assert (= (and d!1991387 c!1154086) b!6345771))

(assert (= (and d!1991387 (not c!1154086)) b!6345772))

(assert (=> d!1991387 m!7153520))

(declare-fun m!7153532 () Bool)

(assert (=> b!6345771 m!7153532))

(assert (=> b!6345772 m!7153524))

(assert (=> b!6345772 m!7153524))

(declare-fun m!7153534 () Bool)

(assert (=> b!6345772 m!7153534))

(assert (=> b!6345772 m!7153528))

(assert (=> b!6345772 m!7153534))

(assert (=> b!6345772 m!7153528))

(declare-fun m!7153536 () Bool)

(assert (=> b!6345772 m!7153536))

(assert (=> b!6345495 d!1991387))

(declare-fun bs!1588893 () Bool)

(declare-fun d!1991389 () Bool)

(assert (= bs!1588893 (and d!1991389 d!1991349)))

(declare-fun lambda!348814 () Int)

(assert (=> bs!1588893 (= lambda!348814 lambda!348804)))

(declare-fun bs!1588894 () Bool)

(assert (= bs!1588894 (and d!1991389 d!1991351)))

(assert (=> bs!1588894 (= lambda!348814 lambda!348807)))

(declare-fun bs!1588895 () Bool)

(assert (= bs!1588895 (and d!1991389 d!1991353)))

(assert (=> bs!1588895 (= lambda!348814 lambda!348810)))

(declare-fun bs!1588896 () Bool)

(assert (= bs!1588896 (and d!1991389 d!1991357)))

(assert (=> bs!1588896 (= lambda!348814 lambda!348811)))

(declare-fun b!6345793 () Bool)

(declare-fun e!3854155 () Bool)

(declare-fun lt!2363535 () Regex!16250)

(declare-fun isConcat!1175 (Regex!16250) Bool)

(assert (=> b!6345793 (= e!3854155 (isConcat!1175 lt!2363535))))

(declare-fun b!6345794 () Bool)

(declare-fun e!3854156 () Bool)

(assert (=> b!6345794 (= e!3854156 (isEmpty!37012 (t!378637 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun b!6345795 () Bool)

(declare-fun e!3854153 () Regex!16250)

(assert (=> b!6345795 (= e!3854153 (Concat!25095 (h!71373 (exprs!6134 (h!71375 zl!343))) (generalisedConcat!1847 (t!378637 (exprs!6134 (h!71375 zl!343))))))))

(declare-fun b!6345796 () Bool)

(declare-fun e!3854158 () Bool)

(declare-fun isEmptyExpr!1652 (Regex!16250) Bool)

(assert (=> b!6345796 (= e!3854158 (isEmptyExpr!1652 lt!2363535))))

(declare-fun b!6345797 () Bool)

(assert (=> b!6345797 (= e!3854155 (= lt!2363535 (head!12992 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun b!6345798 () Bool)

(assert (=> b!6345798 (= e!3854158 e!3854155)))

(declare-fun c!1154095 () Bool)

(assert (=> b!6345798 (= c!1154095 (isEmpty!37012 (tail!12077 (exprs!6134 (h!71375 zl!343)))))))

(declare-fun b!6345799 () Bool)

(assert (=> b!6345799 (= e!3854153 EmptyExpr!16250)))

(declare-fun b!6345800 () Bool)

(declare-fun e!3854157 () Regex!16250)

(assert (=> b!6345800 (= e!3854157 e!3854153)))

(declare-fun c!1154098 () Bool)

(assert (=> b!6345800 (= c!1154098 (is-Cons!64925 (exprs!6134 (h!71375 zl!343))))))

(declare-fun e!3854154 () Bool)

(assert (=> d!1991389 e!3854154))

(declare-fun res!2611263 () Bool)

(assert (=> d!1991389 (=> (not res!2611263) (not e!3854154))))

(assert (=> d!1991389 (= res!2611263 (validRegex!7986 lt!2363535))))

(assert (=> d!1991389 (= lt!2363535 e!3854157)))

(declare-fun c!1154097 () Bool)

(assert (=> d!1991389 (= c!1154097 e!3854156)))

(declare-fun res!2611262 () Bool)

(assert (=> d!1991389 (=> (not res!2611262) (not e!3854156))))

(assert (=> d!1991389 (= res!2611262 (is-Cons!64925 (exprs!6134 (h!71375 zl!343))))))

(assert (=> d!1991389 (forall!15412 (exprs!6134 (h!71375 zl!343)) lambda!348814)))

(assert (=> d!1991389 (= (generalisedConcat!1847 (exprs!6134 (h!71375 zl!343))) lt!2363535)))

(declare-fun b!6345801 () Bool)

(assert (=> b!6345801 (= e!3854157 (h!71373 (exprs!6134 (h!71375 zl!343))))))

(declare-fun b!6345802 () Bool)

(assert (=> b!6345802 (= e!3854154 e!3854158)))

(declare-fun c!1154096 () Bool)

(assert (=> b!6345802 (= c!1154096 (isEmpty!37012 (exprs!6134 (h!71375 zl!343))))))

(assert (= (and d!1991389 res!2611262) b!6345794))

(assert (= (and d!1991389 c!1154097) b!6345801))

(assert (= (and d!1991389 (not c!1154097)) b!6345800))

(assert (= (and b!6345800 c!1154098) b!6345795))

(assert (= (and b!6345800 (not c!1154098)) b!6345799))

(assert (= (and d!1991389 res!2611263) b!6345802))

(assert (= (and b!6345802 c!1154096) b!6345796))

(assert (= (and b!6345802 (not c!1154096)) b!6345798))

(assert (= (and b!6345798 c!1154095) b!6345797))

(assert (= (and b!6345798 (not c!1154095)) b!6345793))

(declare-fun m!7153538 () Bool)

(assert (=> b!6345796 m!7153538))

(declare-fun m!7153540 () Bool)

(assert (=> b!6345798 m!7153540))

(assert (=> b!6345798 m!7153540))

(declare-fun m!7153542 () Bool)

(assert (=> b!6345798 m!7153542))

(declare-fun m!7153544 () Bool)

(assert (=> b!6345802 m!7153544))

(declare-fun m!7153546 () Bool)

(assert (=> b!6345795 m!7153546))

(declare-fun m!7153548 () Bool)

(assert (=> b!6345793 m!7153548))

(declare-fun m!7153550 () Bool)

(assert (=> b!6345797 m!7153550))

(assert (=> b!6345794 m!7153298))

(declare-fun m!7153552 () Bool)

(assert (=> d!1991389 m!7153552))

(declare-fun m!7153554 () Bool)

(assert (=> d!1991389 m!7153554))

(assert (=> b!6345501 d!1991389))

(declare-fun b!6345851 () Bool)

(declare-fun e!3854190 () Option!16141)

(assert (=> b!6345851 (= e!3854190 None!16140)))

(declare-fun b!6345852 () Bool)

(declare-fun res!2611282 () Bool)

(declare-fun e!3854188 () Bool)

(assert (=> b!6345852 (=> (not res!2611282) (not e!3854188))))

(declare-fun lt!2363545 () Option!16141)

(declare-fun get!22460 (Option!16141) tuple2!66458)

(assert (=> b!6345852 (= res!2611282 (matchR!8433 (regOne!33012 r!7292) (_1!36532 (get!22460 lt!2363545))))))

(declare-fun b!6345853 () Bool)

(declare-fun e!3854187 () Bool)

(assert (=> b!6345853 (= e!3854187 (not (isDefined!12844 lt!2363545)))))

(declare-fun b!6345855 () Bool)

(declare-fun e!3854191 () Bool)

(assert (=> b!6345855 (= e!3854191 (matchR!8433 (regTwo!33012 r!7292) s!2326))))

(declare-fun b!6345856 () Bool)

(declare-fun ++!14319 (List!65050 List!65050) List!65050)

(assert (=> b!6345856 (= e!3854188 (= (++!14319 (_1!36532 (get!22460 lt!2363545)) (_2!36532 (get!22460 lt!2363545))) s!2326))))

(declare-fun b!6345857 () Bool)

(declare-fun lt!2363547 () Unit!158331)

(declare-fun lt!2363546 () Unit!158331)

(assert (=> b!6345857 (= lt!2363547 lt!2363546)))

(assert (=> b!6345857 (= (++!14319 (++!14319 Nil!64926 (Cons!64926 (h!71374 s!2326) Nil!64926)) (t!378638 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2414 (List!65050 C!32770 List!65050 List!65050) Unit!158331)

(assert (=> b!6345857 (= lt!2363546 (lemmaMoveElementToOtherListKeepsConcatEq!2414 Nil!64926 (h!71374 s!2326) (t!378638 s!2326) s!2326))))

(assert (=> b!6345857 (= e!3854190 (findConcatSeparation!2555 (regOne!33012 r!7292) (regTwo!33012 r!7292) (++!14319 Nil!64926 (Cons!64926 (h!71374 s!2326) Nil!64926)) (t!378638 s!2326) s!2326))))

(declare-fun b!6345858 () Bool)

(declare-fun e!3854189 () Option!16141)

(assert (=> b!6345858 (= e!3854189 e!3854190)))

(declare-fun c!1154115 () Bool)

(assert (=> b!6345858 (= c!1154115 (is-Nil!64926 s!2326))))

(declare-fun b!6345859 () Bool)

(assert (=> b!6345859 (= e!3854189 (Some!16140 (tuple2!66459 Nil!64926 s!2326)))))

(declare-fun b!6345854 () Bool)

(declare-fun res!2611280 () Bool)

(assert (=> b!6345854 (=> (not res!2611280) (not e!3854188))))

(assert (=> b!6345854 (= res!2611280 (matchR!8433 (regTwo!33012 r!7292) (_2!36532 (get!22460 lt!2363545))))))

(declare-fun d!1991393 () Bool)

(assert (=> d!1991393 e!3854187))

(declare-fun res!2611283 () Bool)

(assert (=> d!1991393 (=> res!2611283 e!3854187)))

(assert (=> d!1991393 (= res!2611283 e!3854188)))

(declare-fun res!2611284 () Bool)

(assert (=> d!1991393 (=> (not res!2611284) (not e!3854188))))

(assert (=> d!1991393 (= res!2611284 (isDefined!12844 lt!2363545))))

(assert (=> d!1991393 (= lt!2363545 e!3854189)))

(declare-fun c!1154116 () Bool)

(assert (=> d!1991393 (= c!1154116 e!3854191)))

(declare-fun res!2611281 () Bool)

(assert (=> d!1991393 (=> (not res!2611281) (not e!3854191))))

(assert (=> d!1991393 (= res!2611281 (matchR!8433 (regOne!33012 r!7292) Nil!64926))))

(assert (=> d!1991393 (validRegex!7986 (regOne!33012 r!7292))))

(assert (=> d!1991393 (= (findConcatSeparation!2555 (regOne!33012 r!7292) (regTwo!33012 r!7292) Nil!64926 s!2326 s!2326) lt!2363545)))

(assert (= (and d!1991393 res!2611281) b!6345855))

(assert (= (and d!1991393 c!1154116) b!6345859))

(assert (= (and d!1991393 (not c!1154116)) b!6345858))

(assert (= (and b!6345858 c!1154115) b!6345851))

(assert (= (and b!6345858 (not c!1154115)) b!6345857))

(assert (= (and d!1991393 res!2611284) b!6345852))

(assert (= (and b!6345852 res!2611282) b!6345854))

(assert (= (and b!6345854 res!2611280) b!6345856))

(assert (= (and d!1991393 (not res!2611283)) b!6345853))

(declare-fun m!7153574 () Bool)

(assert (=> b!6345852 m!7153574))

(declare-fun m!7153576 () Bool)

(assert (=> b!6345852 m!7153576))

(declare-fun m!7153578 () Bool)

(assert (=> d!1991393 m!7153578))

(declare-fun m!7153580 () Bool)

(assert (=> d!1991393 m!7153580))

(declare-fun m!7153582 () Bool)

(assert (=> d!1991393 m!7153582))

(assert (=> b!6345854 m!7153574))

(declare-fun m!7153584 () Bool)

(assert (=> b!6345854 m!7153584))

(assert (=> b!6345853 m!7153578))

(assert (=> b!6345856 m!7153574))

(declare-fun m!7153586 () Bool)

(assert (=> b!6345856 m!7153586))

(declare-fun m!7153588 () Bool)

(assert (=> b!6345855 m!7153588))

(declare-fun m!7153590 () Bool)

(assert (=> b!6345857 m!7153590))

(assert (=> b!6345857 m!7153590))

(declare-fun m!7153592 () Bool)

(assert (=> b!6345857 m!7153592))

(declare-fun m!7153594 () Bool)

(assert (=> b!6345857 m!7153594))

(assert (=> b!6345857 m!7153590))

(declare-fun m!7153596 () Bool)

(assert (=> b!6345857 m!7153596))

(assert (=> b!6345503 d!1991393))

(declare-fun d!1991397 () Bool)

(declare-fun choose!47067 (Int) Bool)

(assert (=> d!1991397 (= (Exists!3320 lambda!348783) (choose!47067 lambda!348783))))

(declare-fun bs!1588897 () Bool)

(assert (= bs!1588897 d!1991397))

(declare-fun m!7153598 () Bool)

(assert (=> bs!1588897 m!7153598))

(assert (=> b!6345503 d!1991397))

(declare-fun d!1991399 () Bool)

(assert (=> d!1991399 (= (Exists!3320 lambda!348782) (choose!47067 lambda!348782))))

(declare-fun bs!1588898 () Bool)

(assert (= bs!1588898 d!1991399))

(declare-fun m!7153600 () Bool)

(assert (=> bs!1588898 m!7153600))

(assert (=> b!6345503 d!1991399))

(declare-fun bs!1588899 () Bool)

(declare-fun d!1991401 () Bool)

(assert (= bs!1588899 (and d!1991401 b!6345503)))

(declare-fun lambda!348820 () Int)

(assert (=> bs!1588899 (= lambda!348820 lambda!348782)))

(assert (=> bs!1588899 (not (= lambda!348820 lambda!348783))))

(declare-fun bs!1588900 () Bool)

(assert (= bs!1588900 (and d!1991401 b!6345499)))

(assert (=> bs!1588900 (= (and (= (regOne!33012 r!7292) (regOne!33012 (regOne!33012 r!7292))) (= (regTwo!33012 r!7292) lt!2363413)) (= lambda!348820 lambda!348785))))

(assert (=> d!1991401 true))

(assert (=> d!1991401 true))

(assert (=> d!1991401 true))

(assert (=> d!1991401 (= (isDefined!12844 (findConcatSeparation!2555 (regOne!33012 r!7292) (regTwo!33012 r!7292) Nil!64926 s!2326 s!2326)) (Exists!3320 lambda!348820))))

(declare-fun lt!2363553 () Unit!158331)

(declare-fun choose!47068 (Regex!16250 Regex!16250 List!65050) Unit!158331)

(assert (=> d!1991401 (= lt!2363553 (choose!47068 (regOne!33012 r!7292) (regTwo!33012 r!7292) s!2326))))

(assert (=> d!1991401 (validRegex!7986 (regOne!33012 r!7292))))

(assert (=> d!1991401 (= (lemmaFindConcatSeparationEquivalentToExists!2319 (regOne!33012 r!7292) (regTwo!33012 r!7292) s!2326) lt!2363553)))

(declare-fun bs!1588901 () Bool)

(assert (= bs!1588901 d!1991401))

(assert (=> bs!1588901 m!7153306))

(assert (=> bs!1588901 m!7153308))

(declare-fun m!7153608 () Bool)

(assert (=> bs!1588901 m!7153608))

(assert (=> bs!1588901 m!7153306))

(assert (=> bs!1588901 m!7153582))

(declare-fun m!7153610 () Bool)

(assert (=> bs!1588901 m!7153610))

(assert (=> b!6345503 d!1991401))

(declare-fun bs!1588902 () Bool)

(declare-fun d!1991405 () Bool)

(assert (= bs!1588902 (and d!1991405 b!6345503)))

(declare-fun lambda!348825 () Int)

(assert (=> bs!1588902 (= lambda!348825 lambda!348782)))

(assert (=> bs!1588902 (not (= lambda!348825 lambda!348783))))

(declare-fun bs!1588903 () Bool)

(assert (= bs!1588903 (and d!1991405 b!6345499)))

(assert (=> bs!1588903 (= (and (= (regOne!33012 r!7292) (regOne!33012 (regOne!33012 r!7292))) (= (regTwo!33012 r!7292) lt!2363413)) (= lambda!348825 lambda!348785))))

(declare-fun bs!1588904 () Bool)

(assert (= bs!1588904 (and d!1991405 d!1991401)))

(assert (=> bs!1588904 (= lambda!348825 lambda!348820)))

(assert (=> d!1991405 true))

(assert (=> d!1991405 true))

(assert (=> d!1991405 true))

(declare-fun lambda!348826 () Int)

(assert (=> bs!1588902 (= lambda!348826 lambda!348783)))

(assert (=> bs!1588903 (not (= lambda!348826 lambda!348785))))

(assert (=> bs!1588904 (not (= lambda!348826 lambda!348820))))

(declare-fun bs!1588905 () Bool)

(assert (= bs!1588905 d!1991405))

(assert (=> bs!1588905 (not (= lambda!348826 lambda!348825))))

(assert (=> bs!1588902 (not (= lambda!348826 lambda!348782))))

(assert (=> d!1991405 true))

(assert (=> d!1991405 true))

(assert (=> d!1991405 true))

(assert (=> d!1991405 (= (Exists!3320 lambda!348825) (Exists!3320 lambda!348826))))

(declare-fun lt!2363556 () Unit!158331)

(declare-fun choose!47069 (Regex!16250 Regex!16250 List!65050) Unit!158331)

(assert (=> d!1991405 (= lt!2363556 (choose!47069 (regOne!33012 r!7292) (regTwo!33012 r!7292) s!2326))))

(assert (=> d!1991405 (validRegex!7986 (regOne!33012 r!7292))))

(assert (=> d!1991405 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1857 (regOne!33012 r!7292) (regTwo!33012 r!7292) s!2326) lt!2363556)))

(declare-fun m!7153630 () Bool)

(assert (=> bs!1588905 m!7153630))

(declare-fun m!7153632 () Bool)

(assert (=> bs!1588905 m!7153632))

(declare-fun m!7153634 () Bool)

(assert (=> bs!1588905 m!7153634))

(assert (=> bs!1588905 m!7153582))

(assert (=> b!6345503 d!1991405))

(declare-fun d!1991411 () Bool)

(declare-fun isEmpty!37016 (Option!16141) Bool)

(assert (=> d!1991411 (= (isDefined!12844 (findConcatSeparation!2555 (regOne!33012 r!7292) (regTwo!33012 r!7292) Nil!64926 s!2326 s!2326)) (not (isEmpty!37016 (findConcatSeparation!2555 (regOne!33012 r!7292) (regTwo!33012 r!7292) Nil!64926 s!2326 s!2326))))))

(declare-fun bs!1588906 () Bool)

(assert (= bs!1588906 d!1991411))

(assert (=> bs!1588906 m!7153306))

(declare-fun m!7153636 () Bool)

(assert (=> bs!1588906 m!7153636))

(assert (=> b!6345503 d!1991411))

(declare-fun b!6345923 () Bool)

(declare-fun e!3854236 () Bool)

(declare-fun call!540960 () Bool)

(assert (=> b!6345923 (= e!3854236 call!540960)))

(declare-fun bm!540953 () Bool)

(declare-fun c!1154135 () Bool)

(declare-fun c!1154136 () Bool)

(assert (=> bm!540953 (= call!540960 (validRegex!7986 (ite c!1154135 (reg!16579 lt!2363413) (ite c!1154136 (regOne!33013 lt!2363413) (regOne!33012 lt!2363413)))))))

(declare-fun b!6345924 () Bool)

(declare-fun e!3854234 () Bool)

(assert (=> b!6345924 (= e!3854234 e!3854236)))

(declare-fun res!2611316 () Bool)

(assert (=> b!6345924 (= res!2611316 (not (nullable!6243 (reg!16579 lt!2363413))))))

(assert (=> b!6345924 (=> (not res!2611316) (not e!3854236))))

(declare-fun b!6345926 () Bool)

(declare-fun res!2611314 () Bool)

(declare-fun e!3854231 () Bool)

(assert (=> b!6345926 (=> (not res!2611314) (not e!3854231))))

(declare-fun call!540959 () Bool)

(assert (=> b!6345926 (= res!2611314 call!540959)))

(declare-fun e!3854235 () Bool)

(assert (=> b!6345926 (= e!3854235 e!3854231)))

(declare-fun bm!540954 () Bool)

(declare-fun call!540958 () Bool)

(assert (=> bm!540954 (= call!540958 (validRegex!7986 (ite c!1154136 (regTwo!33013 lt!2363413) (regTwo!33012 lt!2363413))))))

(declare-fun b!6345927 () Bool)

(assert (=> b!6345927 (= e!3854234 e!3854235)))

(assert (=> b!6345927 (= c!1154136 (is-Union!16250 lt!2363413))))

(declare-fun d!1991413 () Bool)

(declare-fun res!2611313 () Bool)

(declare-fun e!3854233 () Bool)

(assert (=> d!1991413 (=> res!2611313 e!3854233)))

(assert (=> d!1991413 (= res!2611313 (is-ElementMatch!16250 lt!2363413))))

(assert (=> d!1991413 (= (validRegex!7986 lt!2363413) e!3854233)))

(declare-fun b!6345925 () Bool)

(assert (=> b!6345925 (= e!3854231 call!540958)))

(declare-fun b!6345928 () Bool)

(declare-fun res!2611315 () Bool)

(declare-fun e!3854232 () Bool)

(assert (=> b!6345928 (=> res!2611315 e!3854232)))

(assert (=> b!6345928 (= res!2611315 (not (is-Concat!25095 lt!2363413)))))

(assert (=> b!6345928 (= e!3854235 e!3854232)))

(declare-fun bm!540955 () Bool)

(assert (=> bm!540955 (= call!540959 call!540960)))

(declare-fun b!6345929 () Bool)

(assert (=> b!6345929 (= e!3854233 e!3854234)))

(assert (=> b!6345929 (= c!1154135 (is-Star!16250 lt!2363413))))

(declare-fun b!6345930 () Bool)

(declare-fun e!3854237 () Bool)

(assert (=> b!6345930 (= e!3854237 call!540958)))

(declare-fun b!6345931 () Bool)

(assert (=> b!6345931 (= e!3854232 e!3854237)))

(declare-fun res!2611312 () Bool)

(assert (=> b!6345931 (=> (not res!2611312) (not e!3854237))))

(assert (=> b!6345931 (= res!2611312 call!540959)))

(assert (= (and d!1991413 (not res!2611313)) b!6345929))

(assert (= (and b!6345929 c!1154135) b!6345924))

(assert (= (and b!6345929 (not c!1154135)) b!6345927))

(assert (= (and b!6345924 res!2611316) b!6345923))

(assert (= (and b!6345927 c!1154136) b!6345926))

(assert (= (and b!6345927 (not c!1154136)) b!6345928))

(assert (= (and b!6345926 res!2611314) b!6345925))

(assert (= (and b!6345928 (not res!2611315)) b!6345931))

(assert (= (and b!6345931 res!2611312) b!6345930))

(assert (= (or b!6345925 b!6345930) bm!540954))

(assert (= (or b!6345926 b!6345931) bm!540955))

(assert (= (or b!6345923 bm!540955) bm!540953))

(declare-fun m!7153638 () Bool)

(assert (=> bm!540953 m!7153638))

(declare-fun m!7153640 () Bool)

(assert (=> b!6345924 m!7153640))

(declare-fun m!7153642 () Bool)

(assert (=> bm!540954 m!7153642))

(assert (=> b!6345502 d!1991413))

(declare-fun d!1991415 () Bool)

(assert (=> d!1991415 (= (Exists!3320 lambda!348785) (choose!47067 lambda!348785))))

(declare-fun bs!1588907 () Bool)

(assert (= bs!1588907 d!1991415))

(declare-fun m!7153644 () Bool)

(assert (=> bs!1588907 m!7153644))

(assert (=> b!6345499 d!1991415))

(declare-fun d!1991417 () Bool)

(assert (=> d!1991417 (= (matchR!8433 lt!2363425 s!2326) (matchZipper!2262 lt!2363404 s!2326))))

(declare-fun lt!2363559 () Unit!158331)

(declare-fun choose!47070 ((Set Context!11268) List!65051 Regex!16250 List!65050) Unit!158331)

(assert (=> d!1991417 (= lt!2363559 (choose!47070 lt!2363404 lt!2363412 lt!2363425 s!2326))))

(assert (=> d!1991417 (validRegex!7986 lt!2363425)))

(assert (=> d!1991417 (= (theoremZipperRegexEquiv!792 lt!2363404 lt!2363412 lt!2363425 s!2326) lt!2363559)))

(declare-fun bs!1588908 () Bool)

(assert (= bs!1588908 d!1991417))

(assert (=> bs!1588908 m!7153276))

(assert (=> bs!1588908 m!7153272))

(declare-fun m!7153646 () Bool)

(assert (=> bs!1588908 m!7153646))

(declare-fun m!7153648 () Bool)

(assert (=> bs!1588908 m!7153648))

(assert (=> b!6345499 d!1991417))

(declare-fun b!6345981 () Bool)

(declare-fun res!2611339 () Bool)

(declare-fun e!3854270 () Bool)

(assert (=> b!6345981 (=> res!2611339 e!3854270)))

(assert (=> b!6345981 (= res!2611339 (not (isEmpty!37015 (tail!12078 s!2326))))))

(declare-fun b!6345982 () Bool)

(declare-fun e!3854265 () Bool)

(declare-fun e!3854268 () Bool)

(assert (=> b!6345982 (= e!3854265 e!3854268)))

(declare-fun c!1154154 () Bool)

(assert (=> b!6345982 (= c!1154154 (is-EmptyLang!16250 lt!2363425))))

(declare-fun bm!540970 () Bool)

(declare-fun call!540975 () Bool)

(assert (=> bm!540970 (= call!540975 (isEmpty!37015 s!2326))))

(declare-fun d!1991419 () Bool)

(assert (=> d!1991419 e!3854265))

(declare-fun c!1154153 () Bool)

(assert (=> d!1991419 (= c!1154153 (is-EmptyExpr!16250 lt!2363425))))

(declare-fun lt!2363562 () Bool)

(declare-fun e!3854264 () Bool)

(assert (=> d!1991419 (= lt!2363562 e!3854264)))

(declare-fun c!1154152 () Bool)

(assert (=> d!1991419 (= c!1154152 (isEmpty!37015 s!2326))))

(assert (=> d!1991419 (validRegex!7986 lt!2363425)))

(assert (=> d!1991419 (= (matchR!8433 lt!2363425 s!2326) lt!2363562)))

(declare-fun b!6345983 () Bool)

(declare-fun res!2611338 () Bool)

(declare-fun e!3854267 () Bool)

(assert (=> b!6345983 (=> (not res!2611338) (not e!3854267))))

(assert (=> b!6345983 (= res!2611338 (not call!540975))))

(declare-fun b!6345984 () Bool)

(assert (=> b!6345984 (= e!3854265 (= lt!2363562 call!540975))))

(declare-fun b!6345985 () Bool)

(declare-fun e!3854269 () Bool)

(assert (=> b!6345985 (= e!3854269 e!3854270)))

(declare-fun res!2611342 () Bool)

(assert (=> b!6345985 (=> res!2611342 e!3854270)))

(assert (=> b!6345985 (= res!2611342 call!540975)))

(declare-fun b!6345986 () Bool)

(assert (=> b!6345986 (= e!3854270 (not (= (head!12993 s!2326) (c!1154019 lt!2363425))))))

(declare-fun b!6345987 () Bool)

(declare-fun res!2611340 () Bool)

(declare-fun e!3854266 () Bool)

(assert (=> b!6345987 (=> res!2611340 e!3854266)))

(assert (=> b!6345987 (= res!2611340 e!3854267)))

(declare-fun res!2611343 () Bool)

(assert (=> b!6345987 (=> (not res!2611343) (not e!3854267))))

(assert (=> b!6345987 (= res!2611343 lt!2363562)))

(declare-fun b!6345988 () Bool)

(declare-fun derivativeStep!4955 (Regex!16250 C!32770) Regex!16250)

(assert (=> b!6345988 (= e!3854264 (matchR!8433 (derivativeStep!4955 lt!2363425 (head!12993 s!2326)) (tail!12078 s!2326)))))

(declare-fun b!6345989 () Bool)

(declare-fun res!2611341 () Bool)

(assert (=> b!6345989 (=> res!2611341 e!3854266)))

(assert (=> b!6345989 (= res!2611341 (not (is-ElementMatch!16250 lt!2363425)))))

(assert (=> b!6345989 (= e!3854268 e!3854266)))

(declare-fun b!6345990 () Bool)

(assert (=> b!6345990 (= e!3854268 (not lt!2363562))))

(declare-fun b!6345991 () Bool)

(declare-fun res!2611337 () Bool)

(assert (=> b!6345991 (=> (not res!2611337) (not e!3854267))))

(assert (=> b!6345991 (= res!2611337 (isEmpty!37015 (tail!12078 s!2326)))))

(declare-fun b!6345992 () Bool)

(assert (=> b!6345992 (= e!3854266 e!3854269)))

(declare-fun res!2611336 () Bool)

(assert (=> b!6345992 (=> (not res!2611336) (not e!3854269))))

(assert (=> b!6345992 (= res!2611336 (not lt!2363562))))

(declare-fun b!6345993 () Bool)

(assert (=> b!6345993 (= e!3854267 (= (head!12993 s!2326) (c!1154019 lt!2363425)))))

(declare-fun b!6345994 () Bool)

(assert (=> b!6345994 (= e!3854264 (nullable!6243 lt!2363425))))

(assert (= (and d!1991419 c!1154152) b!6345994))

(assert (= (and d!1991419 (not c!1154152)) b!6345988))

(assert (= (and d!1991419 c!1154153) b!6345984))

(assert (= (and d!1991419 (not c!1154153)) b!6345982))

(assert (= (and b!6345982 c!1154154) b!6345990))

(assert (= (and b!6345982 (not c!1154154)) b!6345989))

(assert (= (and b!6345989 (not res!2611341)) b!6345987))

(assert (= (and b!6345987 res!2611343) b!6345983))

(assert (= (and b!6345983 res!2611338) b!6345991))

(assert (= (and b!6345991 res!2611337) b!6345993))

(assert (= (and b!6345987 (not res!2611340)) b!6345992))

(assert (= (and b!6345992 res!2611336) b!6345985))

(assert (= (and b!6345985 (not res!2611342)) b!6345981))

(assert (= (and b!6345981 (not res!2611339)) b!6345986))

(assert (= (or b!6345984 b!6345983 b!6345985) bm!540970))

(declare-fun m!7153662 () Bool)

(assert (=> b!6345986 m!7153662))

(assert (=> b!6345993 m!7153662))

(declare-fun m!7153664 () Bool)

(assert (=> bm!540970 m!7153664))

(declare-fun m!7153666 () Bool)

(assert (=> b!6345991 m!7153666))

(assert (=> b!6345991 m!7153666))

(declare-fun m!7153668 () Bool)

(assert (=> b!6345991 m!7153668))

(declare-fun m!7153670 () Bool)

(assert (=> b!6345994 m!7153670))

(assert (=> d!1991419 m!7153664))

(assert (=> d!1991419 m!7153648))

(assert (=> b!6345988 m!7153662))

(assert (=> b!6345988 m!7153662))

(declare-fun m!7153672 () Bool)

(assert (=> b!6345988 m!7153672))

(assert (=> b!6345988 m!7153666))

(assert (=> b!6345988 m!7153672))

(assert (=> b!6345988 m!7153666))

(declare-fun m!7153674 () Bool)

(assert (=> b!6345988 m!7153674))

(assert (=> b!6345981 m!7153666))

(assert (=> b!6345981 m!7153666))

(assert (=> b!6345981 m!7153668))

(assert (=> b!6345499 d!1991419))

(declare-fun d!1991425 () Bool)

(assert (=> d!1991425 (= (matchR!8433 lt!2363425 s!2326) (matchRSpec!3351 lt!2363425 s!2326))))

(declare-fun lt!2363565 () Unit!158331)

(declare-fun choose!47071 (Regex!16250 List!65050) Unit!158331)

(assert (=> d!1991425 (= lt!2363565 (choose!47071 lt!2363425 s!2326))))

(assert (=> d!1991425 (validRegex!7986 lt!2363425)))

(assert (=> d!1991425 (= (mainMatchTheorem!3351 lt!2363425 s!2326) lt!2363565)))

(declare-fun bs!1588910 () Bool)

(assert (= bs!1588910 d!1991425))

(assert (=> bs!1588910 m!7153276))

(assert (=> bs!1588910 m!7153290))

(declare-fun m!7153682 () Bool)

(assert (=> bs!1588910 m!7153682))

(assert (=> bs!1588910 m!7153648))

(assert (=> b!6345499 d!1991425))

(declare-fun d!1991429 () Bool)

(assert (=> d!1991429 (= (isDefined!12844 (findConcatSeparation!2555 (regOne!33012 (regOne!33012 r!7292)) lt!2363413 Nil!64926 s!2326 s!2326)) (not (isEmpty!37016 (findConcatSeparation!2555 (regOne!33012 (regOne!33012 r!7292)) lt!2363413 Nil!64926 s!2326 s!2326))))))

(declare-fun bs!1588911 () Bool)

(assert (= bs!1588911 d!1991429))

(assert (=> bs!1588911 m!7153280))

(declare-fun m!7153684 () Bool)

(assert (=> bs!1588911 m!7153684))

(assert (=> b!6345499 d!1991429))

(declare-fun bs!1588912 () Bool)

(declare-fun d!1991431 () Bool)

(assert (= bs!1588912 (and d!1991431 d!1991351)))

(declare-fun lambda!348827 () Int)

(assert (=> bs!1588912 (= lambda!348827 lambda!348807)))

(declare-fun bs!1588913 () Bool)

(assert (= bs!1588913 (and d!1991431 d!1991349)))

(assert (=> bs!1588913 (= lambda!348827 lambda!348804)))

(declare-fun bs!1588914 () Bool)

(assert (= bs!1588914 (and d!1991431 d!1991357)))

(assert (=> bs!1588914 (= lambda!348827 lambda!348811)))

(declare-fun bs!1588915 () Bool)

(assert (= bs!1588915 (and d!1991431 d!1991389)))

(assert (=> bs!1588915 (= lambda!348827 lambda!348814)))

(declare-fun bs!1588916 () Bool)

(assert (= bs!1588916 (and d!1991431 d!1991353)))

(assert (=> bs!1588916 (= lambda!348827 lambda!348810)))

(declare-fun b!6346000 () Bool)

(declare-fun e!3854276 () Bool)

(declare-fun lt!2363568 () Regex!16250)

(assert (=> b!6346000 (= e!3854276 (isConcat!1175 lt!2363568))))

(declare-fun b!6346001 () Bool)

(declare-fun e!3854277 () Bool)

(assert (=> b!6346001 (= e!3854277 (isEmpty!37012 (t!378637 lt!2363401)))))

(declare-fun b!6346002 () Bool)

(declare-fun e!3854274 () Regex!16250)

(assert (=> b!6346002 (= e!3854274 (Concat!25095 (h!71373 lt!2363401) (generalisedConcat!1847 (t!378637 lt!2363401))))))

(declare-fun b!6346003 () Bool)

(declare-fun e!3854279 () Bool)

(assert (=> b!6346003 (= e!3854279 (isEmptyExpr!1652 lt!2363568))))

(declare-fun b!6346004 () Bool)

(assert (=> b!6346004 (= e!3854276 (= lt!2363568 (head!12992 lt!2363401)))))

(declare-fun b!6346005 () Bool)

(assert (=> b!6346005 (= e!3854279 e!3854276)))

(declare-fun c!1154157 () Bool)

(assert (=> b!6346005 (= c!1154157 (isEmpty!37012 (tail!12077 lt!2363401)))))

(declare-fun b!6346006 () Bool)

(assert (=> b!6346006 (= e!3854274 EmptyExpr!16250)))

(declare-fun b!6346007 () Bool)

(declare-fun e!3854278 () Regex!16250)

(assert (=> b!6346007 (= e!3854278 e!3854274)))

(declare-fun c!1154160 () Bool)

(assert (=> b!6346007 (= c!1154160 (is-Cons!64925 lt!2363401))))

(declare-fun e!3854275 () Bool)

(assert (=> d!1991431 e!3854275))

(declare-fun res!2611346 () Bool)

(assert (=> d!1991431 (=> (not res!2611346) (not e!3854275))))

(assert (=> d!1991431 (= res!2611346 (validRegex!7986 lt!2363568))))

(assert (=> d!1991431 (= lt!2363568 e!3854278)))

(declare-fun c!1154159 () Bool)

(assert (=> d!1991431 (= c!1154159 e!3854277)))

(declare-fun res!2611345 () Bool)

(assert (=> d!1991431 (=> (not res!2611345) (not e!3854277))))

(assert (=> d!1991431 (= res!2611345 (is-Cons!64925 lt!2363401))))

(assert (=> d!1991431 (forall!15412 lt!2363401 lambda!348827)))

(assert (=> d!1991431 (= (generalisedConcat!1847 lt!2363401) lt!2363568)))

(declare-fun b!6346008 () Bool)

(assert (=> b!6346008 (= e!3854278 (h!71373 lt!2363401))))

(declare-fun b!6346009 () Bool)

(assert (=> b!6346009 (= e!3854275 e!3854279)))

(declare-fun c!1154158 () Bool)

(assert (=> b!6346009 (= c!1154158 (isEmpty!37012 lt!2363401))))

(assert (= (and d!1991431 res!2611345) b!6346001))

(assert (= (and d!1991431 c!1154159) b!6346008))

(assert (= (and d!1991431 (not c!1154159)) b!6346007))

(assert (= (and b!6346007 c!1154160) b!6346002))

(assert (= (and b!6346007 (not c!1154160)) b!6346006))

(assert (= (and d!1991431 res!2611346) b!6346009))

(assert (= (and b!6346009 c!1154158) b!6346003))

(assert (= (and b!6346009 (not c!1154158)) b!6346005))

(assert (= (and b!6346005 c!1154157) b!6346004))

(assert (= (and b!6346005 (not c!1154157)) b!6346000))

(declare-fun m!7153692 () Bool)

(assert (=> b!6346003 m!7153692))

(declare-fun m!7153694 () Bool)

(assert (=> b!6346005 m!7153694))

(assert (=> b!6346005 m!7153694))

(declare-fun m!7153696 () Bool)

(assert (=> b!6346005 m!7153696))

(declare-fun m!7153698 () Bool)

(assert (=> b!6346009 m!7153698))

(declare-fun m!7153700 () Bool)

(assert (=> b!6346002 m!7153700))

(declare-fun m!7153702 () Bool)

(assert (=> b!6346000 m!7153702))

(declare-fun m!7153704 () Bool)

(assert (=> b!6346004 m!7153704))

(declare-fun m!7153706 () Bool)

(assert (=> b!6346001 m!7153706))

(declare-fun m!7153708 () Bool)

(assert (=> d!1991431 m!7153708))

(declare-fun m!7153710 () Bool)

(assert (=> d!1991431 m!7153710))

(assert (=> b!6345499 d!1991431))

(declare-fun bs!1588918 () Bool)

(declare-fun d!1991435 () Bool)

(assert (= bs!1588918 (and d!1991435 b!6345503)))

(declare-fun lambda!348828 () Int)

(assert (=> bs!1588918 (not (= lambda!348828 lambda!348783))))

(declare-fun bs!1588919 () Bool)

(assert (= bs!1588919 (and d!1991435 b!6345499)))

(assert (=> bs!1588919 (= lambda!348828 lambda!348785)))

(declare-fun bs!1588921 () Bool)

(assert (= bs!1588921 (and d!1991435 d!1991401)))

(assert (=> bs!1588921 (= (and (= (regOne!33012 (regOne!33012 r!7292)) (regOne!33012 r!7292)) (= lt!2363413 (regTwo!33012 r!7292))) (= lambda!348828 lambda!348820))))

(assert (=> bs!1588918 (= (and (= (regOne!33012 (regOne!33012 r!7292)) (regOne!33012 r!7292)) (= lt!2363413 (regTwo!33012 r!7292))) (= lambda!348828 lambda!348782))))

(declare-fun bs!1588922 () Bool)

(assert (= bs!1588922 (and d!1991435 d!1991405)))

(assert (=> bs!1588922 (not (= lambda!348828 lambda!348826))))

(assert (=> bs!1588922 (= (and (= (regOne!33012 (regOne!33012 r!7292)) (regOne!33012 r!7292)) (= lt!2363413 (regTwo!33012 r!7292))) (= lambda!348828 lambda!348825))))

(assert (=> d!1991435 true))

(assert (=> d!1991435 true))

(assert (=> d!1991435 true))

(assert (=> d!1991435 (= (isDefined!12844 (findConcatSeparation!2555 (regOne!33012 (regOne!33012 r!7292)) lt!2363413 Nil!64926 s!2326 s!2326)) (Exists!3320 lambda!348828))))

(declare-fun lt!2363570 () Unit!158331)

(assert (=> d!1991435 (= lt!2363570 (choose!47068 (regOne!33012 (regOne!33012 r!7292)) lt!2363413 s!2326))))

(assert (=> d!1991435 (validRegex!7986 (regOne!33012 (regOne!33012 r!7292)))))

(assert (=> d!1991435 (= (lemmaFindConcatSeparationEquivalentToExists!2319 (regOne!33012 (regOne!33012 r!7292)) lt!2363413 s!2326) lt!2363570)))

(declare-fun bs!1588923 () Bool)

(assert (= bs!1588923 d!1991435))

(assert (=> bs!1588923 m!7153280))

(assert (=> bs!1588923 m!7153284))

(declare-fun m!7153724 () Bool)

(assert (=> bs!1588923 m!7153724))

(assert (=> bs!1588923 m!7153280))

(assert (=> bs!1588923 m!7153278))

(declare-fun m!7153726 () Bool)

(assert (=> bs!1588923 m!7153726))

(assert (=> b!6345499 d!1991435))

(declare-fun b!6346020 () Bool)

(declare-fun e!3854289 () Option!16141)

(assert (=> b!6346020 (= e!3854289 None!16140)))

(declare-fun b!6346021 () Bool)

(declare-fun res!2611351 () Bool)

(declare-fun e!3854287 () Bool)

(assert (=> b!6346021 (=> (not res!2611351) (not e!3854287))))

(declare-fun lt!2363571 () Option!16141)

(assert (=> b!6346021 (= res!2611351 (matchR!8433 (regOne!33012 (regOne!33012 r!7292)) (_1!36532 (get!22460 lt!2363571))))))

(declare-fun b!6346022 () Bool)

(declare-fun e!3854286 () Bool)

(assert (=> b!6346022 (= e!3854286 (not (isDefined!12844 lt!2363571)))))

(declare-fun b!6346024 () Bool)

(declare-fun e!3854290 () Bool)

(assert (=> b!6346024 (= e!3854290 (matchR!8433 lt!2363413 s!2326))))

(declare-fun b!6346025 () Bool)

(assert (=> b!6346025 (= e!3854287 (= (++!14319 (_1!36532 (get!22460 lt!2363571)) (_2!36532 (get!22460 lt!2363571))) s!2326))))

(declare-fun b!6346026 () Bool)

(declare-fun lt!2363573 () Unit!158331)

(declare-fun lt!2363572 () Unit!158331)

(assert (=> b!6346026 (= lt!2363573 lt!2363572)))

(assert (=> b!6346026 (= (++!14319 (++!14319 Nil!64926 (Cons!64926 (h!71374 s!2326) Nil!64926)) (t!378638 s!2326)) s!2326)))

(assert (=> b!6346026 (= lt!2363572 (lemmaMoveElementToOtherListKeepsConcatEq!2414 Nil!64926 (h!71374 s!2326) (t!378638 s!2326) s!2326))))

(assert (=> b!6346026 (= e!3854289 (findConcatSeparation!2555 (regOne!33012 (regOne!33012 r!7292)) lt!2363413 (++!14319 Nil!64926 (Cons!64926 (h!71374 s!2326) Nil!64926)) (t!378638 s!2326) s!2326))))

(declare-fun b!6346027 () Bool)

(declare-fun e!3854288 () Option!16141)

(assert (=> b!6346027 (= e!3854288 e!3854289)))

(declare-fun c!1154165 () Bool)

(assert (=> b!6346027 (= c!1154165 (is-Nil!64926 s!2326))))

(declare-fun b!6346028 () Bool)

(assert (=> b!6346028 (= e!3854288 (Some!16140 (tuple2!66459 Nil!64926 s!2326)))))

(declare-fun b!6346023 () Bool)

(declare-fun res!2611349 () Bool)

(assert (=> b!6346023 (=> (not res!2611349) (not e!3854287))))

(assert (=> b!6346023 (= res!2611349 (matchR!8433 lt!2363413 (_2!36532 (get!22460 lt!2363571))))))

(declare-fun d!1991443 () Bool)

(assert (=> d!1991443 e!3854286))

(declare-fun res!2611352 () Bool)

(assert (=> d!1991443 (=> res!2611352 e!3854286)))

(assert (=> d!1991443 (= res!2611352 e!3854287)))

(declare-fun res!2611353 () Bool)

(assert (=> d!1991443 (=> (not res!2611353) (not e!3854287))))

(assert (=> d!1991443 (= res!2611353 (isDefined!12844 lt!2363571))))

(assert (=> d!1991443 (= lt!2363571 e!3854288)))

(declare-fun c!1154166 () Bool)

(assert (=> d!1991443 (= c!1154166 e!3854290)))

(declare-fun res!2611350 () Bool)

(assert (=> d!1991443 (=> (not res!2611350) (not e!3854290))))

(assert (=> d!1991443 (= res!2611350 (matchR!8433 (regOne!33012 (regOne!33012 r!7292)) Nil!64926))))

(assert (=> d!1991443 (validRegex!7986 (regOne!33012 (regOne!33012 r!7292)))))

(assert (=> d!1991443 (= (findConcatSeparation!2555 (regOne!33012 (regOne!33012 r!7292)) lt!2363413 Nil!64926 s!2326 s!2326) lt!2363571)))

(assert (= (and d!1991443 res!2611350) b!6346024))

(assert (= (and d!1991443 c!1154166) b!6346028))

(assert (= (and d!1991443 (not c!1154166)) b!6346027))

(assert (= (and b!6346027 c!1154165) b!6346020))

(assert (= (and b!6346027 (not c!1154165)) b!6346026))

(assert (= (and d!1991443 res!2611353) b!6346021))

(assert (= (and b!6346021 res!2611351) b!6346023))

(assert (= (and b!6346023 res!2611349) b!6346025))

(assert (= (and d!1991443 (not res!2611352)) b!6346022))

(declare-fun m!7153728 () Bool)

(assert (=> b!6346021 m!7153728))

(declare-fun m!7153730 () Bool)

(assert (=> b!6346021 m!7153730))

(declare-fun m!7153732 () Bool)

(assert (=> d!1991443 m!7153732))

(declare-fun m!7153734 () Bool)

(assert (=> d!1991443 m!7153734))

(assert (=> d!1991443 m!7153278))

(assert (=> b!6346023 m!7153728))

(declare-fun m!7153736 () Bool)

(assert (=> b!6346023 m!7153736))

(assert (=> b!6346022 m!7153732))

(assert (=> b!6346025 m!7153728))

(declare-fun m!7153738 () Bool)

(assert (=> b!6346025 m!7153738))

(declare-fun m!7153740 () Bool)

(assert (=> b!6346024 m!7153740))

(assert (=> b!6346026 m!7153590))

(assert (=> b!6346026 m!7153590))

(assert (=> b!6346026 m!7153592))

(assert (=> b!6346026 m!7153594))

(assert (=> b!6346026 m!7153590))

(declare-fun m!7153742 () Bool)

(assert (=> b!6346026 m!7153742))

(assert (=> b!6345499 d!1991443))

(declare-fun bs!1588924 () Bool)

(declare-fun d!1991445 () Bool)

(assert (= bs!1588924 (and d!1991445 d!1991349)))

(declare-fun lambda!348829 () Int)

(assert (=> bs!1588924 (= lambda!348829 lambda!348804)))

(declare-fun bs!1588925 () Bool)

(assert (= bs!1588925 (and d!1991445 d!1991357)))

(assert (=> bs!1588925 (= lambda!348829 lambda!348811)))

(declare-fun bs!1588926 () Bool)

(assert (= bs!1588926 (and d!1991445 d!1991389)))

(assert (=> bs!1588926 (= lambda!348829 lambda!348814)))

(declare-fun bs!1588927 () Bool)

(assert (= bs!1588927 (and d!1991445 d!1991353)))

(assert (=> bs!1588927 (= lambda!348829 lambda!348810)))

(declare-fun bs!1588928 () Bool)

(assert (= bs!1588928 (and d!1991445 d!1991431)))

(assert (=> bs!1588928 (= lambda!348829 lambda!348827)))

(declare-fun bs!1588929 () Bool)

(assert (= bs!1588929 (and d!1991445 d!1991351)))

(assert (=> bs!1588929 (= lambda!348829 lambda!348807)))

(declare-fun b!6346029 () Bool)

(declare-fun e!3854293 () Bool)

(declare-fun lt!2363574 () Regex!16250)

(assert (=> b!6346029 (= e!3854293 (isConcat!1175 lt!2363574))))

(declare-fun b!6346030 () Bool)

(declare-fun e!3854294 () Bool)

(assert (=> b!6346030 (= e!3854294 (isEmpty!37012 (t!378637 lt!2363408)))))

(declare-fun b!6346031 () Bool)

(declare-fun e!3854291 () Regex!16250)

(assert (=> b!6346031 (= e!3854291 (Concat!25095 (h!71373 lt!2363408) (generalisedConcat!1847 (t!378637 lt!2363408))))))

(declare-fun b!6346032 () Bool)

(declare-fun e!3854296 () Bool)

(assert (=> b!6346032 (= e!3854296 (isEmptyExpr!1652 lt!2363574))))

(declare-fun b!6346033 () Bool)

(assert (=> b!6346033 (= e!3854293 (= lt!2363574 (head!12992 lt!2363408)))))

(declare-fun b!6346034 () Bool)

(assert (=> b!6346034 (= e!3854296 e!3854293)))

(declare-fun c!1154167 () Bool)

(assert (=> b!6346034 (= c!1154167 (isEmpty!37012 (tail!12077 lt!2363408)))))

(declare-fun b!6346035 () Bool)

(assert (=> b!6346035 (= e!3854291 EmptyExpr!16250)))

(declare-fun b!6346036 () Bool)

(declare-fun e!3854295 () Regex!16250)

(assert (=> b!6346036 (= e!3854295 e!3854291)))

(declare-fun c!1154170 () Bool)

(assert (=> b!6346036 (= c!1154170 (is-Cons!64925 lt!2363408))))

(declare-fun e!3854292 () Bool)

(assert (=> d!1991445 e!3854292))

(declare-fun res!2611355 () Bool)

(assert (=> d!1991445 (=> (not res!2611355) (not e!3854292))))

(assert (=> d!1991445 (= res!2611355 (validRegex!7986 lt!2363574))))

(assert (=> d!1991445 (= lt!2363574 e!3854295)))

(declare-fun c!1154169 () Bool)

(assert (=> d!1991445 (= c!1154169 e!3854294)))

(declare-fun res!2611354 () Bool)

(assert (=> d!1991445 (=> (not res!2611354) (not e!3854294))))

(assert (=> d!1991445 (= res!2611354 (is-Cons!64925 lt!2363408))))

(assert (=> d!1991445 (forall!15412 lt!2363408 lambda!348829)))

(assert (=> d!1991445 (= (generalisedConcat!1847 lt!2363408) lt!2363574)))

(declare-fun b!6346037 () Bool)

(assert (=> b!6346037 (= e!3854295 (h!71373 lt!2363408))))

(declare-fun b!6346038 () Bool)

(assert (=> b!6346038 (= e!3854292 e!3854296)))

(declare-fun c!1154168 () Bool)

(assert (=> b!6346038 (= c!1154168 (isEmpty!37012 lt!2363408))))

(assert (= (and d!1991445 res!2611354) b!6346030))

(assert (= (and d!1991445 c!1154169) b!6346037))

(assert (= (and d!1991445 (not c!1154169)) b!6346036))

(assert (= (and b!6346036 c!1154170) b!6346031))

(assert (= (and b!6346036 (not c!1154170)) b!6346035))

(assert (= (and d!1991445 res!2611355) b!6346038))

(assert (= (and b!6346038 c!1154168) b!6346032))

(assert (= (and b!6346038 (not c!1154168)) b!6346034))

(assert (= (and b!6346034 c!1154167) b!6346033))

(assert (= (and b!6346034 (not c!1154167)) b!6346029))

(declare-fun m!7153744 () Bool)

(assert (=> b!6346032 m!7153744))

(declare-fun m!7153746 () Bool)

(assert (=> b!6346034 m!7153746))

(assert (=> b!6346034 m!7153746))

(declare-fun m!7153748 () Bool)

(assert (=> b!6346034 m!7153748))

(declare-fun m!7153750 () Bool)

(assert (=> b!6346038 m!7153750))

(declare-fun m!7153752 () Bool)

(assert (=> b!6346031 m!7153752))

(declare-fun m!7153754 () Bool)

(assert (=> b!6346029 m!7153754))

(declare-fun m!7153756 () Bool)

(assert (=> b!6346033 m!7153756))

(declare-fun m!7153758 () Bool)

(assert (=> b!6346030 m!7153758))

(declare-fun m!7153760 () Bool)

(assert (=> d!1991445 m!7153760))

(declare-fun m!7153762 () Bool)

(assert (=> d!1991445 m!7153762))

(assert (=> b!6345499 d!1991445))

(declare-fun b!6346057 () Bool)

(declare-fun e!3854316 () Bool)

(declare-fun call!540985 () Bool)

(assert (=> b!6346057 (= e!3854316 call!540985)))

(declare-fun c!1154176 () Bool)

(declare-fun c!1154175 () Bool)

(declare-fun bm!540978 () Bool)

(assert (=> bm!540978 (= call!540985 (validRegex!7986 (ite c!1154175 (reg!16579 (regOne!33012 (regOne!33012 r!7292))) (ite c!1154176 (regOne!33013 (regOne!33012 (regOne!33012 r!7292))) (regOne!33012 (regOne!33012 (regOne!33012 r!7292)))))))))

(declare-fun b!6346058 () Bool)

(declare-fun e!3854314 () Bool)

(assert (=> b!6346058 (= e!3854314 e!3854316)))

(declare-fun res!2611370 () Bool)

(assert (=> b!6346058 (= res!2611370 (not (nullable!6243 (reg!16579 (regOne!33012 (regOne!33012 r!7292))))))))

(assert (=> b!6346058 (=> (not res!2611370) (not e!3854316))))

(declare-fun b!6346060 () Bool)

(declare-fun res!2611368 () Bool)

(declare-fun e!3854311 () Bool)

(assert (=> b!6346060 (=> (not res!2611368) (not e!3854311))))

(declare-fun call!540984 () Bool)

(assert (=> b!6346060 (= res!2611368 call!540984)))

(declare-fun e!3854315 () Bool)

(assert (=> b!6346060 (= e!3854315 e!3854311)))

(declare-fun bm!540979 () Bool)

(declare-fun call!540983 () Bool)

(assert (=> bm!540979 (= call!540983 (validRegex!7986 (ite c!1154176 (regTwo!33013 (regOne!33012 (regOne!33012 r!7292))) (regTwo!33012 (regOne!33012 (regOne!33012 r!7292))))))))

(declare-fun b!6346061 () Bool)

(assert (=> b!6346061 (= e!3854314 e!3854315)))

(assert (=> b!6346061 (= c!1154176 (is-Union!16250 (regOne!33012 (regOne!33012 r!7292))))))

(declare-fun d!1991447 () Bool)

(declare-fun res!2611367 () Bool)

(declare-fun e!3854313 () Bool)

(assert (=> d!1991447 (=> res!2611367 e!3854313)))

(assert (=> d!1991447 (= res!2611367 (is-ElementMatch!16250 (regOne!33012 (regOne!33012 r!7292))))))

(assert (=> d!1991447 (= (validRegex!7986 (regOne!33012 (regOne!33012 r!7292))) e!3854313)))

(declare-fun b!6346059 () Bool)

(assert (=> b!6346059 (= e!3854311 call!540983)))

(declare-fun b!6346062 () Bool)

(declare-fun res!2611369 () Bool)

(declare-fun e!3854312 () Bool)

(assert (=> b!6346062 (=> res!2611369 e!3854312)))

(assert (=> b!6346062 (= res!2611369 (not (is-Concat!25095 (regOne!33012 (regOne!33012 r!7292)))))))

(assert (=> b!6346062 (= e!3854315 e!3854312)))

(declare-fun bm!540980 () Bool)

(assert (=> bm!540980 (= call!540984 call!540985)))

(declare-fun b!6346063 () Bool)

(assert (=> b!6346063 (= e!3854313 e!3854314)))

(assert (=> b!6346063 (= c!1154175 (is-Star!16250 (regOne!33012 (regOne!33012 r!7292))))))

(declare-fun b!6346064 () Bool)

(declare-fun e!3854317 () Bool)

(assert (=> b!6346064 (= e!3854317 call!540983)))

(declare-fun b!6346065 () Bool)

(assert (=> b!6346065 (= e!3854312 e!3854317)))

(declare-fun res!2611366 () Bool)

(assert (=> b!6346065 (=> (not res!2611366) (not e!3854317))))

(assert (=> b!6346065 (= res!2611366 call!540984)))

(assert (= (and d!1991447 (not res!2611367)) b!6346063))

(assert (= (and b!6346063 c!1154175) b!6346058))

(assert (= (and b!6346063 (not c!1154175)) b!6346061))

(assert (= (and b!6346058 res!2611370) b!6346057))

(assert (= (and b!6346061 c!1154176) b!6346060))

(assert (= (and b!6346061 (not c!1154176)) b!6346062))

(assert (= (and b!6346060 res!2611368) b!6346059))

(assert (= (and b!6346062 (not res!2611369)) b!6346065))

(assert (= (and b!6346065 res!2611366) b!6346064))

(assert (= (or b!6346059 b!6346064) bm!540979))

(assert (= (or b!6346060 b!6346065) bm!540980))

(assert (= (or b!6346057 bm!540980) bm!540978))

(declare-fun m!7153764 () Bool)

(assert (=> bm!540978 m!7153764))

(declare-fun m!7153766 () Bool)

(assert (=> b!6346058 m!7153766))

(declare-fun m!7153768 () Bool)

(assert (=> bm!540979 m!7153768))

(assert (=> b!6345499 d!1991447))

(declare-fun d!1991449 () Bool)

(declare-fun c!1154177 () Bool)

(assert (=> d!1991449 (= c!1154177 (isEmpty!37015 s!2326))))

(declare-fun e!3854318 () Bool)

(assert (=> d!1991449 (= (matchZipper!2262 lt!2363404 s!2326) e!3854318)))

(declare-fun b!6346066 () Bool)

(assert (=> b!6346066 (= e!3854318 (nullableZipper!2016 lt!2363404))))

(declare-fun b!6346067 () Bool)

(assert (=> b!6346067 (= e!3854318 (matchZipper!2262 (derivationStepZipper!2216 lt!2363404 (head!12993 s!2326)) (tail!12078 s!2326)))))

(assert (= (and d!1991449 c!1154177) b!6346066))

(assert (= (and d!1991449 (not c!1154177)) b!6346067))

(assert (=> d!1991449 m!7153664))

(declare-fun m!7153770 () Bool)

(assert (=> b!6346066 m!7153770))

(assert (=> b!6346067 m!7153662))

(assert (=> b!6346067 m!7153662))

(declare-fun m!7153772 () Bool)

(assert (=> b!6346067 m!7153772))

(assert (=> b!6346067 m!7153666))

(assert (=> b!6346067 m!7153772))

(assert (=> b!6346067 m!7153666))

(declare-fun m!7153774 () Bool)

(assert (=> b!6346067 m!7153774))

(assert (=> b!6345499 d!1991449))

(declare-fun bs!1588933 () Bool)

(declare-fun b!6346118 () Bool)

(assert (= bs!1588933 (and b!6346118 b!6345503)))

(declare-fun lambda!348837 () Int)

(assert (=> bs!1588933 (not (= lambda!348837 lambda!348783))))

(declare-fun bs!1588934 () Bool)

(assert (= bs!1588934 (and b!6346118 d!1991401)))

(assert (=> bs!1588934 (not (= lambda!348837 lambda!348820))))

(assert (=> bs!1588933 (not (= lambda!348837 lambda!348782))))

(declare-fun bs!1588935 () Bool)

(assert (= bs!1588935 (and b!6346118 b!6345499)))

(assert (=> bs!1588935 (not (= lambda!348837 lambda!348785))))

(declare-fun bs!1588936 () Bool)

(assert (= bs!1588936 (and b!6346118 d!1991435)))

(assert (=> bs!1588936 (not (= lambda!348837 lambda!348828))))

(declare-fun bs!1588937 () Bool)

(assert (= bs!1588937 (and b!6346118 d!1991405)))

(assert (=> bs!1588937 (not (= lambda!348837 lambda!348826))))

(assert (=> bs!1588937 (not (= lambda!348837 lambda!348825))))

(assert (=> b!6346118 true))

(assert (=> b!6346118 true))

(declare-fun bs!1588938 () Bool)

(declare-fun b!6346124 () Bool)

(assert (= bs!1588938 (and b!6346124 b!6345503)))

(declare-fun lambda!348838 () Int)

(assert (=> bs!1588938 (= (and (= (regOne!33012 lt!2363425) (regOne!33012 r!7292)) (= (regTwo!33012 lt!2363425) (regTwo!33012 r!7292))) (= lambda!348838 lambda!348783))))

(declare-fun bs!1588939 () Bool)

(assert (= bs!1588939 (and b!6346124 b!6346118)))

(assert (=> bs!1588939 (not (= lambda!348838 lambda!348837))))

(declare-fun bs!1588940 () Bool)

(assert (= bs!1588940 (and b!6346124 d!1991401)))

(assert (=> bs!1588940 (not (= lambda!348838 lambda!348820))))

(assert (=> bs!1588938 (not (= lambda!348838 lambda!348782))))

(declare-fun bs!1588941 () Bool)

(assert (= bs!1588941 (and b!6346124 b!6345499)))

(assert (=> bs!1588941 (not (= lambda!348838 lambda!348785))))

(declare-fun bs!1588942 () Bool)

(assert (= bs!1588942 (and b!6346124 d!1991435)))

(assert (=> bs!1588942 (not (= lambda!348838 lambda!348828))))

(declare-fun bs!1588943 () Bool)

(assert (= bs!1588943 (and b!6346124 d!1991405)))

(assert (=> bs!1588943 (= (and (= (regOne!33012 lt!2363425) (regOne!33012 r!7292)) (= (regTwo!33012 lt!2363425) (regTwo!33012 r!7292))) (= lambda!348838 lambda!348826))))

(assert (=> bs!1588943 (not (= lambda!348838 lambda!348825))))

(assert (=> b!6346124 true))

(assert (=> b!6346124 true))

(declare-fun c!1154193 () Bool)

(declare-fun bm!540993 () Bool)

(declare-fun call!540999 () Bool)

(assert (=> bm!540993 (= call!540999 (Exists!3320 (ite c!1154193 lambda!348837 lambda!348838)))))

(declare-fun e!3854354 () Bool)

(assert (=> b!6346118 (= e!3854354 call!540999)))

(declare-fun b!6346119 () Bool)

(declare-fun c!1154190 () Bool)

(assert (=> b!6346119 (= c!1154190 (is-ElementMatch!16250 lt!2363425))))

(declare-fun e!3854356 () Bool)

(declare-fun e!3854357 () Bool)

(assert (=> b!6346119 (= e!3854356 e!3854357)))

(declare-fun d!1991451 () Bool)

(declare-fun c!1154191 () Bool)

(assert (=> d!1991451 (= c!1154191 (is-EmptyExpr!16250 lt!2363425))))

(declare-fun e!3854352 () Bool)

(assert (=> d!1991451 (= (matchRSpec!3351 lt!2363425 s!2326) e!3854352)))

(declare-fun b!6346120 () Bool)

(declare-fun c!1154192 () Bool)

(assert (=> b!6346120 (= c!1154192 (is-Union!16250 lt!2363425))))

(declare-fun e!3854353 () Bool)

(assert (=> b!6346120 (= e!3854357 e!3854353)))

(declare-fun b!6346121 () Bool)

(assert (=> b!6346121 (= e!3854357 (= s!2326 (Cons!64926 (c!1154019 lt!2363425) Nil!64926)))))

(declare-fun b!6346122 () Bool)

(declare-fun call!540998 () Bool)

(assert (=> b!6346122 (= e!3854352 call!540998)))

(declare-fun bm!540994 () Bool)

(assert (=> bm!540994 (= call!540998 (isEmpty!37015 s!2326))))

(declare-fun b!6346123 () Bool)

(assert (=> b!6346123 (= e!3854352 e!3854356)))

(declare-fun res!2611398 () Bool)

(assert (=> b!6346123 (= res!2611398 (not (is-EmptyLang!16250 lt!2363425)))))

(assert (=> b!6346123 (=> (not res!2611398) (not e!3854356))))

(declare-fun e!3854351 () Bool)

(assert (=> b!6346124 (= e!3854351 call!540999)))

(declare-fun b!6346125 () Bool)

(assert (=> b!6346125 (= e!3854353 e!3854351)))

(assert (=> b!6346125 (= c!1154193 (is-Star!16250 lt!2363425))))

(declare-fun b!6346126 () Bool)

(declare-fun e!3854355 () Bool)

(assert (=> b!6346126 (= e!3854353 e!3854355)))

(declare-fun res!2611399 () Bool)

(assert (=> b!6346126 (= res!2611399 (matchRSpec!3351 (regOne!33013 lt!2363425) s!2326))))

(assert (=> b!6346126 (=> res!2611399 e!3854355)))

(declare-fun b!6346127 () Bool)

(declare-fun res!2611397 () Bool)

(assert (=> b!6346127 (=> res!2611397 e!3854354)))

(assert (=> b!6346127 (= res!2611397 call!540998)))

(assert (=> b!6346127 (= e!3854351 e!3854354)))

(declare-fun b!6346128 () Bool)

(assert (=> b!6346128 (= e!3854355 (matchRSpec!3351 (regTwo!33013 lt!2363425) s!2326))))

(assert (= (and d!1991451 c!1154191) b!6346122))

(assert (= (and d!1991451 (not c!1154191)) b!6346123))

(assert (= (and b!6346123 res!2611398) b!6346119))

(assert (= (and b!6346119 c!1154190) b!6346121))

(assert (= (and b!6346119 (not c!1154190)) b!6346120))

(assert (= (and b!6346120 c!1154192) b!6346126))

(assert (= (and b!6346120 (not c!1154192)) b!6346125))

(assert (= (and b!6346126 (not res!2611399)) b!6346128))

(assert (= (and b!6346125 c!1154193) b!6346127))

(assert (= (and b!6346125 (not c!1154193)) b!6346124))

(assert (= (and b!6346127 (not res!2611397)) b!6346118))

(assert (= (or b!6346118 b!6346124) bm!540993))

(assert (= (or b!6346122 b!6346127) bm!540994))

(declare-fun m!7153806 () Bool)

(assert (=> bm!540993 m!7153806))

(assert (=> bm!540994 m!7153664))

(declare-fun m!7153808 () Bool)

(assert (=> b!6346126 m!7153808))

(declare-fun m!7153810 () Bool)

(assert (=> b!6346128 m!7153810))

(assert (=> b!6345499 d!1991451))

(declare-fun b!6346175 () Bool)

(assert (=> b!6346175 true))

(declare-fun bs!1588947 () Bool)

(declare-fun b!6346177 () Bool)

(assert (= bs!1588947 (and b!6346177 b!6346175)))

(declare-fun lt!2363593 () Int)

(declare-fun lambda!348850 () Int)

(declare-fun lambda!348849 () Int)

(declare-fun lt!2363595 () Int)

(assert (=> bs!1588947 (= (= lt!2363593 lt!2363595) (= lambda!348850 lambda!348849))))

(assert (=> b!6346177 true))

(declare-fun d!1991469 () Bool)

(declare-fun e!3854385 () Bool)

(assert (=> d!1991469 e!3854385))

(declare-fun res!2611408 () Bool)

(assert (=> d!1991469 (=> (not res!2611408) (not e!3854385))))

(assert (=> d!1991469 (= res!2611408 (>= lt!2363593 0))))

(declare-fun e!3854386 () Int)

(assert (=> d!1991469 (= lt!2363593 e!3854386)))

(declare-fun c!1154219 () Bool)

(assert (=> d!1991469 (= c!1154219 (is-Cons!64927 lt!2363412))))

(assert (=> d!1991469 (= (zipperDepth!357 lt!2363412) lt!2363593)))

(assert (=> b!6346175 (= e!3854386 lt!2363595)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!246 (Context!11268) Int)

(assert (=> b!6346175 (= lt!2363595 (maxBigInt!0 (contextDepth!246 (h!71375 lt!2363412)) (zipperDepth!357 (t!378639 lt!2363412))))))

(declare-fun lt!2363596 () Unit!158331)

(declare-fun lambda!348848 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!230 (List!65051 Int Int Int) Unit!158331)

(assert (=> b!6346175 (= lt!2363596 (lemmaForallContextDepthBiggerThanTransitive!230 (t!378639 lt!2363412) lt!2363595 (zipperDepth!357 (t!378639 lt!2363412)) lambda!348848))))

(declare-fun forall!15414 (List!65051 Int) Bool)

(assert (=> b!6346175 (forall!15414 (t!378639 lt!2363412) lambda!348849)))

(declare-fun lt!2363594 () Unit!158331)

(assert (=> b!6346175 (= lt!2363594 lt!2363596)))

(declare-fun b!6346176 () Bool)

(assert (=> b!6346176 (= e!3854386 0)))

(assert (=> b!6346177 (= e!3854385 (forall!15414 lt!2363412 lambda!348850))))

(assert (= (and d!1991469 c!1154219) b!6346175))

(assert (= (and d!1991469 (not c!1154219)) b!6346176))

(assert (= (and d!1991469 res!2611408) b!6346177))

(declare-fun m!7153828 () Bool)

(assert (=> b!6346175 m!7153828))

(declare-fun m!7153834 () Bool)

(assert (=> b!6346175 m!7153834))

(declare-fun m!7153836 () Bool)

(assert (=> b!6346175 m!7153836))

(declare-fun m!7153838 () Bool)

(assert (=> b!6346175 m!7153838))

(assert (=> b!6346175 m!7153834))

(declare-fun m!7153840 () Bool)

(assert (=> b!6346175 m!7153840))

(assert (=> b!6346175 m!7153834))

(assert (=> b!6346175 m!7153838))

(declare-fun m!7153842 () Bool)

(assert (=> b!6346177 m!7153842))

(assert (=> b!6345480 d!1991469))

(declare-fun bs!1588948 () Bool)

(declare-fun b!6346180 () Bool)

(assert (= bs!1588948 (and b!6346180 b!6346175)))

(declare-fun lambda!348851 () Int)

(assert (=> bs!1588948 (= lambda!348851 lambda!348848)))

(declare-fun lambda!348852 () Int)

(declare-fun lt!2363599 () Int)

(assert (=> bs!1588948 (= (= lt!2363599 lt!2363595) (= lambda!348852 lambda!348849))))

(declare-fun bs!1588949 () Bool)

(assert (= bs!1588949 (and b!6346180 b!6346177)))

(assert (=> bs!1588949 (= (= lt!2363599 lt!2363593) (= lambda!348852 lambda!348850))))

(assert (=> b!6346180 true))

(declare-fun bs!1588950 () Bool)

(declare-fun b!6346182 () Bool)

(assert (= bs!1588950 (and b!6346182 b!6346175)))

(declare-fun lambda!348853 () Int)

(declare-fun lt!2363597 () Int)

(assert (=> bs!1588950 (= (= lt!2363597 lt!2363595) (= lambda!348853 lambda!348849))))

(declare-fun bs!1588951 () Bool)

(assert (= bs!1588951 (and b!6346182 b!6346177)))

(assert (=> bs!1588951 (= (= lt!2363597 lt!2363593) (= lambda!348853 lambda!348850))))

(declare-fun bs!1588952 () Bool)

(assert (= bs!1588952 (and b!6346182 b!6346180)))

(assert (=> bs!1588952 (= (= lt!2363597 lt!2363599) (= lambda!348853 lambda!348852))))

(assert (=> b!6346182 true))

(declare-fun d!1991473 () Bool)

(declare-fun e!3854387 () Bool)

(assert (=> d!1991473 e!3854387))

(declare-fun res!2611409 () Bool)

(assert (=> d!1991473 (=> (not res!2611409) (not e!3854387))))

(assert (=> d!1991473 (= res!2611409 (>= lt!2363597 0))))

(declare-fun e!3854388 () Int)

(assert (=> d!1991473 (= lt!2363597 e!3854388)))

(declare-fun c!1154220 () Bool)

(assert (=> d!1991473 (= c!1154220 (is-Cons!64927 zl!343))))

(assert (=> d!1991473 (= (zipperDepth!357 zl!343) lt!2363597)))

(assert (=> b!6346180 (= e!3854388 lt!2363599)))

(assert (=> b!6346180 (= lt!2363599 (maxBigInt!0 (contextDepth!246 (h!71375 zl!343)) (zipperDepth!357 (t!378639 zl!343))))))

(declare-fun lt!2363600 () Unit!158331)

(assert (=> b!6346180 (= lt!2363600 (lemmaForallContextDepthBiggerThanTransitive!230 (t!378639 zl!343) lt!2363599 (zipperDepth!357 (t!378639 zl!343)) lambda!348851))))

(assert (=> b!6346180 (forall!15414 (t!378639 zl!343) lambda!348852)))

(declare-fun lt!2363598 () Unit!158331)

(assert (=> b!6346180 (= lt!2363598 lt!2363600)))

(declare-fun b!6346181 () Bool)

(assert (=> b!6346181 (= e!3854388 0)))

(assert (=> b!6346182 (= e!3854387 (forall!15414 zl!343 lambda!348853))))

(assert (= (and d!1991473 c!1154220) b!6346180))

(assert (= (and d!1991473 (not c!1154220)) b!6346181))

(assert (= (and d!1991473 res!2611409) b!6346182))

(declare-fun m!7153844 () Bool)

(assert (=> b!6346180 m!7153844))

(declare-fun m!7153846 () Bool)

(assert (=> b!6346180 m!7153846))

(declare-fun m!7153848 () Bool)

(assert (=> b!6346180 m!7153848))

(declare-fun m!7153850 () Bool)

(assert (=> b!6346180 m!7153850))

(assert (=> b!6346180 m!7153846))

(declare-fun m!7153852 () Bool)

(assert (=> b!6346180 m!7153852))

(assert (=> b!6346180 m!7153846))

(assert (=> b!6346180 m!7153850))

(declare-fun m!7153854 () Bool)

(assert (=> b!6346182 m!7153854))

(assert (=> b!6345480 d!1991473))

(declare-fun d!1991475 () Bool)

(declare-fun e!3854394 () Bool)

(assert (=> d!1991475 (= (matchZipper!2262 (set.union lt!2363418 lt!2363405) (t!378638 s!2326)) e!3854394)))

(declare-fun res!2611412 () Bool)

(assert (=> d!1991475 (=> res!2611412 e!3854394)))

(assert (=> d!1991475 (= res!2611412 (matchZipper!2262 lt!2363418 (t!378638 s!2326)))))

(declare-fun lt!2363606 () Unit!158331)

(declare-fun choose!47074 ((Set Context!11268) (Set Context!11268) List!65050) Unit!158331)

(assert (=> d!1991475 (= lt!2363606 (choose!47074 lt!2363418 lt!2363405 (t!378638 s!2326)))))

(assert (=> d!1991475 (= (lemmaZipperConcatMatchesSameAsBothZippers!1081 lt!2363418 lt!2363405 (t!378638 s!2326)) lt!2363606)))

(declare-fun b!6346191 () Bool)

(assert (=> b!6346191 (= e!3854394 (matchZipper!2262 lt!2363405 (t!378638 s!2326)))))

(assert (= (and d!1991475 (not res!2611412)) b!6346191))

(assert (=> d!1991475 m!7153236))

(assert (=> d!1991475 m!7153208))

(declare-fun m!7153860 () Bool)

(assert (=> d!1991475 m!7153860))

(assert (=> b!6346191 m!7153242))

(assert (=> b!6345500 d!1991475))

(assert (=> b!6345500 d!1991387))

(declare-fun d!1991479 () Bool)

(declare-fun c!1154224 () Bool)

(assert (=> d!1991479 (= c!1154224 (isEmpty!37015 (t!378638 s!2326)))))

(declare-fun e!3854395 () Bool)

(assert (=> d!1991479 (= (matchZipper!2262 (set.union lt!2363418 lt!2363405) (t!378638 s!2326)) e!3854395)))

(declare-fun b!6346192 () Bool)

(assert (=> b!6346192 (= e!3854395 (nullableZipper!2016 (set.union lt!2363418 lt!2363405)))))

(declare-fun b!6346193 () Bool)

(assert (=> b!6346193 (= e!3854395 (matchZipper!2262 (derivationStepZipper!2216 (set.union lt!2363418 lt!2363405) (head!12993 (t!378638 s!2326))) (tail!12078 (t!378638 s!2326))))))

(assert (= (and d!1991479 c!1154224) b!6346192))

(assert (= (and d!1991479 (not c!1154224)) b!6346193))

(assert (=> d!1991479 m!7153520))

(declare-fun m!7153862 () Bool)

(assert (=> b!6346192 m!7153862))

(assert (=> b!6346193 m!7153524))

(assert (=> b!6346193 m!7153524))

(declare-fun m!7153864 () Bool)

(assert (=> b!6346193 m!7153864))

(assert (=> b!6346193 m!7153528))

(assert (=> b!6346193 m!7153864))

(assert (=> b!6346193 m!7153528))

(declare-fun m!7153866 () Bool)

(assert (=> b!6346193 m!7153866))

(assert (=> b!6345500 d!1991479))

(declare-fun d!1991481 () Bool)

(declare-fun e!3854401 () Bool)

(assert (=> d!1991481 e!3854401))

(declare-fun res!2611418 () Bool)

(assert (=> d!1991481 (=> (not res!2611418) (not e!3854401))))

(declare-fun lt!2363612 () List!65051)

(declare-fun noDuplicate!2081 (List!65051) Bool)

(assert (=> d!1991481 (= res!2611418 (noDuplicate!2081 lt!2363612))))

(declare-fun choose!47076 ((Set Context!11268)) List!65051)

(assert (=> d!1991481 (= lt!2363612 (choose!47076 z!1189))))

(assert (=> d!1991481 (= (toList!10034 z!1189) lt!2363612)))

(declare-fun b!6346199 () Bool)

(declare-fun content!12250 (List!65051) (Set Context!11268))

(assert (=> b!6346199 (= e!3854401 (= (content!12250 lt!2363612) z!1189))))

(assert (= (and d!1991481 res!2611418) b!6346199))

(declare-fun m!7153870 () Bool)

(assert (=> d!1991481 m!7153870))

(declare-fun m!7153872 () Bool)

(assert (=> d!1991481 m!7153872))

(declare-fun m!7153874 () Bool)

(assert (=> b!6346199 m!7153874))

(assert (=> b!6345506 d!1991481))

(declare-fun d!1991485 () Bool)

(assert (=> d!1991485 (= (isEmpty!37011 (t!378639 zl!343)) (is-Nil!64927 (t!378639 zl!343)))))

(assert (=> b!6345488 d!1991485))

(declare-fun d!1991489 () Bool)

(declare-fun c!1154227 () Bool)

(assert (=> d!1991489 (= c!1154227 (isEmpty!37015 (t!378638 s!2326)))))

(declare-fun e!3854404 () Bool)

(assert (=> d!1991489 (= (matchZipper!2262 lt!2363403 (t!378638 s!2326)) e!3854404)))

(declare-fun b!6346204 () Bool)

(assert (=> b!6346204 (= e!3854404 (nullableZipper!2016 lt!2363403))))

(declare-fun b!6346205 () Bool)

(assert (=> b!6346205 (= e!3854404 (matchZipper!2262 (derivationStepZipper!2216 lt!2363403 (head!12993 (t!378638 s!2326))) (tail!12078 (t!378638 s!2326))))))

(assert (= (and d!1991489 c!1154227) b!6346204))

(assert (= (and d!1991489 (not c!1154227)) b!6346205))

(assert (=> d!1991489 m!7153520))

(declare-fun m!7153888 () Bool)

(assert (=> b!6346204 m!7153888))

(assert (=> b!6346205 m!7153524))

(assert (=> b!6346205 m!7153524))

(declare-fun m!7153890 () Bool)

(assert (=> b!6346205 m!7153890))

(assert (=> b!6346205 m!7153528))

(assert (=> b!6346205 m!7153890))

(assert (=> b!6346205 m!7153528))

(declare-fun m!7153892 () Bool)

(assert (=> b!6346205 m!7153892))

(assert (=> b!6345484 d!1991489))

(declare-fun b!6346206 () Bool)

(declare-fun e!3854410 () Bool)

(declare-fun call!541002 () Bool)

(assert (=> b!6346206 (= e!3854410 call!541002)))

(declare-fun bm!540995 () Bool)

(declare-fun c!1154228 () Bool)

(declare-fun c!1154229 () Bool)

(assert (=> bm!540995 (= call!541002 (validRegex!7986 (ite c!1154228 (reg!16579 r!7292) (ite c!1154229 (regOne!33013 r!7292) (regOne!33012 r!7292)))))))

(declare-fun b!6346207 () Bool)

(declare-fun e!3854408 () Bool)

(assert (=> b!6346207 (= e!3854408 e!3854410)))

(declare-fun res!2611423 () Bool)

(assert (=> b!6346207 (= res!2611423 (not (nullable!6243 (reg!16579 r!7292))))))

(assert (=> b!6346207 (=> (not res!2611423) (not e!3854410))))

(declare-fun b!6346209 () Bool)

(declare-fun res!2611421 () Bool)

(declare-fun e!3854405 () Bool)

(assert (=> b!6346209 (=> (not res!2611421) (not e!3854405))))

(declare-fun call!541001 () Bool)

(assert (=> b!6346209 (= res!2611421 call!541001)))

(declare-fun e!3854409 () Bool)

(assert (=> b!6346209 (= e!3854409 e!3854405)))

(declare-fun bm!540996 () Bool)

(declare-fun call!541000 () Bool)

(assert (=> bm!540996 (= call!541000 (validRegex!7986 (ite c!1154229 (regTwo!33013 r!7292) (regTwo!33012 r!7292))))))

(declare-fun b!6346210 () Bool)

(assert (=> b!6346210 (= e!3854408 e!3854409)))

(assert (=> b!6346210 (= c!1154229 (is-Union!16250 r!7292))))

(declare-fun d!1991493 () Bool)

(declare-fun res!2611420 () Bool)

(declare-fun e!3854407 () Bool)

(assert (=> d!1991493 (=> res!2611420 e!3854407)))

(assert (=> d!1991493 (= res!2611420 (is-ElementMatch!16250 r!7292))))

(assert (=> d!1991493 (= (validRegex!7986 r!7292) e!3854407)))

(declare-fun b!6346208 () Bool)

(assert (=> b!6346208 (= e!3854405 call!541000)))

(declare-fun b!6346211 () Bool)

(declare-fun res!2611422 () Bool)

(declare-fun e!3854406 () Bool)

(assert (=> b!6346211 (=> res!2611422 e!3854406)))

(assert (=> b!6346211 (= res!2611422 (not (is-Concat!25095 r!7292)))))

(assert (=> b!6346211 (= e!3854409 e!3854406)))

(declare-fun bm!540997 () Bool)

(assert (=> bm!540997 (= call!541001 call!541002)))

(declare-fun b!6346212 () Bool)

(assert (=> b!6346212 (= e!3854407 e!3854408)))

(assert (=> b!6346212 (= c!1154228 (is-Star!16250 r!7292))))

(declare-fun b!6346213 () Bool)

(declare-fun e!3854411 () Bool)

(assert (=> b!6346213 (= e!3854411 call!541000)))

(declare-fun b!6346214 () Bool)

(assert (=> b!6346214 (= e!3854406 e!3854411)))

(declare-fun res!2611419 () Bool)

(assert (=> b!6346214 (=> (not res!2611419) (not e!3854411))))

(assert (=> b!6346214 (= res!2611419 call!541001)))

(assert (= (and d!1991493 (not res!2611420)) b!6346212))

(assert (= (and b!6346212 c!1154228) b!6346207))

(assert (= (and b!6346212 (not c!1154228)) b!6346210))

(assert (= (and b!6346207 res!2611423) b!6346206))

(assert (= (and b!6346210 c!1154229) b!6346209))

(assert (= (and b!6346210 (not c!1154229)) b!6346211))

(assert (= (and b!6346209 res!2611421) b!6346208))

(assert (= (and b!6346211 (not res!2611422)) b!6346214))

(assert (= (and b!6346214 res!2611419) b!6346213))

(assert (= (or b!6346208 b!6346213) bm!540996))

(assert (= (or b!6346209 b!6346214) bm!540997))

(assert (= (or b!6346206 bm!540997) bm!540995))

(declare-fun m!7153894 () Bool)

(assert (=> bm!540995 m!7153894))

(declare-fun m!7153896 () Bool)

(assert (=> b!6346207 m!7153896))

(declare-fun m!7153898 () Bool)

(assert (=> bm!540996 m!7153898))

(assert (=> start!628728 d!1991493))

(declare-fun bs!1588956 () Bool)

(declare-fun b!6346215 () Bool)

(assert (= bs!1588956 (and b!6346215 b!6345503)))

(declare-fun lambda!348857 () Int)

(assert (=> bs!1588956 (not (= lambda!348857 lambda!348783))))

(declare-fun bs!1588957 () Bool)

(assert (= bs!1588957 (and b!6346215 b!6346124)))

(assert (=> bs!1588957 (not (= lambda!348857 lambda!348838))))

(declare-fun bs!1588958 () Bool)

(assert (= bs!1588958 (and b!6346215 b!6346118)))

(assert (=> bs!1588958 (= (and (= (reg!16579 r!7292) (reg!16579 lt!2363425)) (= r!7292 lt!2363425)) (= lambda!348857 lambda!348837))))

(declare-fun bs!1588959 () Bool)

(assert (= bs!1588959 (and b!6346215 d!1991401)))

(assert (=> bs!1588959 (not (= lambda!348857 lambda!348820))))

(assert (=> bs!1588956 (not (= lambda!348857 lambda!348782))))

(declare-fun bs!1588960 () Bool)

(assert (= bs!1588960 (and b!6346215 b!6345499)))

(assert (=> bs!1588960 (not (= lambda!348857 lambda!348785))))

(declare-fun bs!1588961 () Bool)

(assert (= bs!1588961 (and b!6346215 d!1991435)))

(assert (=> bs!1588961 (not (= lambda!348857 lambda!348828))))

(declare-fun bs!1588962 () Bool)

(assert (= bs!1588962 (and b!6346215 d!1991405)))

(assert (=> bs!1588962 (not (= lambda!348857 lambda!348826))))

(assert (=> bs!1588962 (not (= lambda!348857 lambda!348825))))

(assert (=> b!6346215 true))

(assert (=> b!6346215 true))

(declare-fun bs!1588963 () Bool)

(declare-fun b!6346221 () Bool)

(assert (= bs!1588963 (and b!6346221 b!6346215)))

(declare-fun lambda!348858 () Int)

(assert (=> bs!1588963 (not (= lambda!348858 lambda!348857))))

(declare-fun bs!1588964 () Bool)

(assert (= bs!1588964 (and b!6346221 b!6345503)))

(assert (=> bs!1588964 (= lambda!348858 lambda!348783)))

(declare-fun bs!1588965 () Bool)

(assert (= bs!1588965 (and b!6346221 b!6346124)))

(assert (=> bs!1588965 (= (and (= (regOne!33012 r!7292) (regOne!33012 lt!2363425)) (= (regTwo!33012 r!7292) (regTwo!33012 lt!2363425))) (= lambda!348858 lambda!348838))))

(declare-fun bs!1588966 () Bool)

(assert (= bs!1588966 (and b!6346221 b!6346118)))

(assert (=> bs!1588966 (not (= lambda!348858 lambda!348837))))

(declare-fun bs!1588967 () Bool)

(assert (= bs!1588967 (and b!6346221 d!1991401)))

(assert (=> bs!1588967 (not (= lambda!348858 lambda!348820))))

(assert (=> bs!1588964 (not (= lambda!348858 lambda!348782))))

(declare-fun bs!1588968 () Bool)

(assert (= bs!1588968 (and b!6346221 b!6345499)))

(assert (=> bs!1588968 (not (= lambda!348858 lambda!348785))))

(declare-fun bs!1588969 () Bool)

(assert (= bs!1588969 (and b!6346221 d!1991435)))

(assert (=> bs!1588969 (not (= lambda!348858 lambda!348828))))

(declare-fun bs!1588970 () Bool)

(assert (= bs!1588970 (and b!6346221 d!1991405)))

(assert (=> bs!1588970 (= lambda!348858 lambda!348826)))

(assert (=> bs!1588970 (not (= lambda!348858 lambda!348825))))

(assert (=> b!6346221 true))

(assert (=> b!6346221 true))

(declare-fun c!1154233 () Bool)

(declare-fun call!541004 () Bool)

(declare-fun bm!540998 () Bool)

(assert (=> bm!540998 (= call!541004 (Exists!3320 (ite c!1154233 lambda!348857 lambda!348858)))))

(declare-fun e!3854415 () Bool)

(assert (=> b!6346215 (= e!3854415 call!541004)))

(declare-fun b!6346216 () Bool)

(declare-fun c!1154230 () Bool)

(assert (=> b!6346216 (= c!1154230 (is-ElementMatch!16250 r!7292))))

(declare-fun e!3854417 () Bool)

(declare-fun e!3854418 () Bool)

(assert (=> b!6346216 (= e!3854417 e!3854418)))

(declare-fun d!1991495 () Bool)

(declare-fun c!1154231 () Bool)

(assert (=> d!1991495 (= c!1154231 (is-EmptyExpr!16250 r!7292))))

(declare-fun e!3854413 () Bool)

(assert (=> d!1991495 (= (matchRSpec!3351 r!7292 s!2326) e!3854413)))

(declare-fun b!6346217 () Bool)

(declare-fun c!1154232 () Bool)

(assert (=> b!6346217 (= c!1154232 (is-Union!16250 r!7292))))

(declare-fun e!3854414 () Bool)

(assert (=> b!6346217 (= e!3854418 e!3854414)))

(declare-fun b!6346218 () Bool)

(assert (=> b!6346218 (= e!3854418 (= s!2326 (Cons!64926 (c!1154019 r!7292) Nil!64926)))))

(declare-fun b!6346219 () Bool)

(declare-fun call!541003 () Bool)

(assert (=> b!6346219 (= e!3854413 call!541003)))

(declare-fun bm!540999 () Bool)

(assert (=> bm!540999 (= call!541003 (isEmpty!37015 s!2326))))

(declare-fun b!6346220 () Bool)

(assert (=> b!6346220 (= e!3854413 e!3854417)))

(declare-fun res!2611425 () Bool)

(assert (=> b!6346220 (= res!2611425 (not (is-EmptyLang!16250 r!7292)))))

(assert (=> b!6346220 (=> (not res!2611425) (not e!3854417))))

(declare-fun e!3854412 () Bool)

(assert (=> b!6346221 (= e!3854412 call!541004)))

(declare-fun b!6346222 () Bool)

(assert (=> b!6346222 (= e!3854414 e!3854412)))

(assert (=> b!6346222 (= c!1154233 (is-Star!16250 r!7292))))

(declare-fun b!6346223 () Bool)

(declare-fun e!3854416 () Bool)

(assert (=> b!6346223 (= e!3854414 e!3854416)))

(declare-fun res!2611426 () Bool)

(assert (=> b!6346223 (= res!2611426 (matchRSpec!3351 (regOne!33013 r!7292) s!2326))))

(assert (=> b!6346223 (=> res!2611426 e!3854416)))

(declare-fun b!6346224 () Bool)

(declare-fun res!2611424 () Bool)

(assert (=> b!6346224 (=> res!2611424 e!3854415)))

(assert (=> b!6346224 (= res!2611424 call!541003)))

(assert (=> b!6346224 (= e!3854412 e!3854415)))

(declare-fun b!6346225 () Bool)

(assert (=> b!6346225 (= e!3854416 (matchRSpec!3351 (regTwo!33013 r!7292) s!2326))))

(assert (= (and d!1991495 c!1154231) b!6346219))

(assert (= (and d!1991495 (not c!1154231)) b!6346220))

(assert (= (and b!6346220 res!2611425) b!6346216))

(assert (= (and b!6346216 c!1154230) b!6346218))

(assert (= (and b!6346216 (not c!1154230)) b!6346217))

(assert (= (and b!6346217 c!1154232) b!6346223))

(assert (= (and b!6346217 (not c!1154232)) b!6346222))

(assert (= (and b!6346223 (not res!2611426)) b!6346225))

(assert (= (and b!6346222 c!1154233) b!6346224))

(assert (= (and b!6346222 (not c!1154233)) b!6346221))

(assert (= (and b!6346224 (not res!2611424)) b!6346215))

(assert (= (or b!6346215 b!6346221) bm!540998))

(assert (= (or b!6346219 b!6346224) bm!540999))

(declare-fun m!7153900 () Bool)

(assert (=> bm!540998 m!7153900))

(assert (=> bm!540999 m!7153664))

(declare-fun m!7153902 () Bool)

(assert (=> b!6346223 m!7153902))

(declare-fun m!7153904 () Bool)

(assert (=> b!6346225 m!7153904))

(assert (=> b!6345504 d!1991495))

(declare-fun b!6346230 () Bool)

(declare-fun res!2611430 () Bool)

(declare-fun e!3854427 () Bool)

(assert (=> b!6346230 (=> res!2611430 e!3854427)))

(assert (=> b!6346230 (= res!2611430 (not (isEmpty!37015 (tail!12078 s!2326))))))

(declare-fun b!6346231 () Bool)

(declare-fun e!3854422 () Bool)

(declare-fun e!3854425 () Bool)

(assert (=> b!6346231 (= e!3854422 e!3854425)))

(declare-fun c!1154240 () Bool)

(assert (=> b!6346231 (= c!1154240 (is-EmptyLang!16250 r!7292))))

(declare-fun bm!541000 () Bool)

(declare-fun call!541005 () Bool)

(assert (=> bm!541000 (= call!541005 (isEmpty!37015 s!2326))))

(declare-fun d!1991497 () Bool)

(assert (=> d!1991497 e!3854422))

(declare-fun c!1154239 () Bool)

(assert (=> d!1991497 (= c!1154239 (is-EmptyExpr!16250 r!7292))))

(declare-fun lt!2363621 () Bool)

(declare-fun e!3854421 () Bool)

(assert (=> d!1991497 (= lt!2363621 e!3854421)))

(declare-fun c!1154238 () Bool)

(assert (=> d!1991497 (= c!1154238 (isEmpty!37015 s!2326))))

(assert (=> d!1991497 (validRegex!7986 r!7292)))

(assert (=> d!1991497 (= (matchR!8433 r!7292 s!2326) lt!2363621)))

(declare-fun b!6346232 () Bool)

(declare-fun res!2611429 () Bool)

(declare-fun e!3854424 () Bool)

(assert (=> b!6346232 (=> (not res!2611429) (not e!3854424))))

(assert (=> b!6346232 (= res!2611429 (not call!541005))))

(declare-fun b!6346233 () Bool)

(assert (=> b!6346233 (= e!3854422 (= lt!2363621 call!541005))))

(declare-fun b!6346234 () Bool)

(declare-fun e!3854426 () Bool)

(assert (=> b!6346234 (= e!3854426 e!3854427)))

(declare-fun res!2611433 () Bool)

(assert (=> b!6346234 (=> res!2611433 e!3854427)))

(assert (=> b!6346234 (= res!2611433 call!541005)))

(declare-fun b!6346235 () Bool)

(assert (=> b!6346235 (= e!3854427 (not (= (head!12993 s!2326) (c!1154019 r!7292))))))

(declare-fun b!6346236 () Bool)

(declare-fun res!2611431 () Bool)

(declare-fun e!3854423 () Bool)

(assert (=> b!6346236 (=> res!2611431 e!3854423)))

(assert (=> b!6346236 (= res!2611431 e!3854424)))

(declare-fun res!2611434 () Bool)

(assert (=> b!6346236 (=> (not res!2611434) (not e!3854424))))

(assert (=> b!6346236 (= res!2611434 lt!2363621)))

(declare-fun b!6346237 () Bool)

(assert (=> b!6346237 (= e!3854421 (matchR!8433 (derivativeStep!4955 r!7292 (head!12993 s!2326)) (tail!12078 s!2326)))))

(declare-fun b!6346238 () Bool)

(declare-fun res!2611432 () Bool)

(assert (=> b!6346238 (=> res!2611432 e!3854423)))

(assert (=> b!6346238 (= res!2611432 (not (is-ElementMatch!16250 r!7292)))))

(assert (=> b!6346238 (= e!3854425 e!3854423)))

(declare-fun b!6346239 () Bool)

(assert (=> b!6346239 (= e!3854425 (not lt!2363621))))

(declare-fun b!6346240 () Bool)

(declare-fun res!2611428 () Bool)

(assert (=> b!6346240 (=> (not res!2611428) (not e!3854424))))

(assert (=> b!6346240 (= res!2611428 (isEmpty!37015 (tail!12078 s!2326)))))

(declare-fun b!6346241 () Bool)

(assert (=> b!6346241 (= e!3854423 e!3854426)))

(declare-fun res!2611427 () Bool)

(assert (=> b!6346241 (=> (not res!2611427) (not e!3854426))))

(assert (=> b!6346241 (= res!2611427 (not lt!2363621))))

(declare-fun b!6346242 () Bool)

(assert (=> b!6346242 (= e!3854424 (= (head!12993 s!2326) (c!1154019 r!7292)))))

(declare-fun b!6346243 () Bool)

(assert (=> b!6346243 (= e!3854421 (nullable!6243 r!7292))))

(assert (= (and d!1991497 c!1154238) b!6346243))

(assert (= (and d!1991497 (not c!1154238)) b!6346237))

(assert (= (and d!1991497 c!1154239) b!6346233))

(assert (= (and d!1991497 (not c!1154239)) b!6346231))

(assert (= (and b!6346231 c!1154240) b!6346239))

(assert (= (and b!6346231 (not c!1154240)) b!6346238))

(assert (= (and b!6346238 (not res!2611432)) b!6346236))

(assert (= (and b!6346236 res!2611434) b!6346232))

(assert (= (and b!6346232 res!2611429) b!6346240))

(assert (= (and b!6346240 res!2611428) b!6346242))

(assert (= (and b!6346236 (not res!2611431)) b!6346241))

(assert (= (and b!6346241 res!2611427) b!6346234))

(assert (= (and b!6346234 (not res!2611433)) b!6346230))

(assert (= (and b!6346230 (not res!2611430)) b!6346235))

(assert (= (or b!6346233 b!6346232 b!6346234) bm!541000))

(assert (=> b!6346235 m!7153662))

(assert (=> b!6346242 m!7153662))

(assert (=> bm!541000 m!7153664))

(assert (=> b!6346240 m!7153666))

(assert (=> b!6346240 m!7153666))

(assert (=> b!6346240 m!7153668))

(declare-fun m!7153906 () Bool)

(assert (=> b!6346243 m!7153906))

(assert (=> d!1991497 m!7153664))

(assert (=> d!1991497 m!7153196))

(assert (=> b!6346237 m!7153662))

(assert (=> b!6346237 m!7153662))

(declare-fun m!7153908 () Bool)

(assert (=> b!6346237 m!7153908))

(assert (=> b!6346237 m!7153666))

(assert (=> b!6346237 m!7153908))

(assert (=> b!6346237 m!7153666))

(declare-fun m!7153910 () Bool)

(assert (=> b!6346237 m!7153910))

(assert (=> b!6346230 m!7153666))

(assert (=> b!6346230 m!7153666))

(assert (=> b!6346230 m!7153668))

(assert (=> b!6345504 d!1991497))

(declare-fun d!1991499 () Bool)

(assert (=> d!1991499 (= (matchR!8433 r!7292 s!2326) (matchRSpec!3351 r!7292 s!2326))))

(declare-fun lt!2363622 () Unit!158331)

(assert (=> d!1991499 (= lt!2363622 (choose!47071 r!7292 s!2326))))

(assert (=> d!1991499 (validRegex!7986 r!7292)))

(assert (=> d!1991499 (= (mainMatchTheorem!3351 r!7292 s!2326) lt!2363622)))

(declare-fun bs!1588971 () Bool)

(assert (= bs!1588971 d!1991499))

(assert (=> bs!1588971 m!7153200))

(assert (=> bs!1588971 m!7153198))

(declare-fun m!7153912 () Bool)

(assert (=> bs!1588971 m!7153912))

(assert (=> bs!1588971 m!7153196))

(assert (=> b!6345504 d!1991499))

(declare-fun d!1991501 () Bool)

(assert (=> d!1991501 (= (flatMap!1755 lt!2363404 lambda!348784) (choose!47065 lt!2363404 lambda!348784))))

(declare-fun bs!1588972 () Bool)

(assert (= bs!1588972 d!1991501))

(declare-fun m!7153914 () Bool)

(assert (=> bs!1588972 m!7153914))

(assert (=> b!6345483 d!1991501))

(declare-fun b!6346244 () Bool)

(declare-fun e!3854430 () (Set Context!11268))

(declare-fun e!3854428 () (Set Context!11268))

(assert (=> b!6346244 (= e!3854430 e!3854428)))

(declare-fun c!1154244 () Bool)

(assert (=> b!6346244 (= c!1154244 (is-Cons!64925 (exprs!6134 lt!2363402)))))

(declare-fun d!1991503 () Bool)

(declare-fun c!1154243 () Bool)

(declare-fun e!3854429 () Bool)

(assert (=> d!1991503 (= c!1154243 e!3854429)))

(declare-fun res!2611435 () Bool)

(assert (=> d!1991503 (=> (not res!2611435) (not e!3854429))))

(assert (=> d!1991503 (= res!2611435 (is-Cons!64925 (exprs!6134 lt!2363402)))))

(assert (=> d!1991503 (= (derivationStepZipperUp!1424 lt!2363402 (h!71374 s!2326)) e!3854430)))

(declare-fun b!6346245 () Bool)

(assert (=> b!6346245 (= e!3854429 (nullable!6243 (h!71373 (exprs!6134 lt!2363402))))))

(declare-fun b!6346246 () Bool)

(declare-fun call!541006 () (Set Context!11268))

(assert (=> b!6346246 (= e!3854428 call!541006)))

(declare-fun b!6346247 () Bool)

(assert (=> b!6346247 (= e!3854428 (as set.empty (Set Context!11268)))))

(declare-fun b!6346248 () Bool)

(assert (=> b!6346248 (= e!3854430 (set.union call!541006 (derivationStepZipperUp!1424 (Context!11269 (t!378637 (exprs!6134 lt!2363402))) (h!71374 s!2326))))))

(declare-fun bm!541001 () Bool)

(assert (=> bm!541001 (= call!541006 (derivationStepZipperDown!1498 (h!71373 (exprs!6134 lt!2363402)) (Context!11269 (t!378637 (exprs!6134 lt!2363402))) (h!71374 s!2326)))))

(assert (= (and d!1991503 res!2611435) b!6346245))

(assert (= (and d!1991503 c!1154243) b!6346248))

(assert (= (and d!1991503 (not c!1154243)) b!6346244))

(assert (= (and b!6346244 c!1154244) b!6346246))

(assert (= (and b!6346244 (not c!1154244)) b!6346247))

(assert (= (or b!6346248 b!6346246) bm!541001))

(declare-fun m!7153916 () Bool)

(assert (=> b!6346245 m!7153916))

(declare-fun m!7153918 () Bool)

(assert (=> b!6346248 m!7153918))

(declare-fun m!7153920 () Bool)

(assert (=> bm!541001 m!7153920))

(assert (=> b!6345483 d!1991503))

(declare-fun d!1991505 () Bool)

(assert (=> d!1991505 (= (flatMap!1755 lt!2363404 lambda!348784) (dynLambda!25740 lambda!348784 lt!2363402))))

(declare-fun lt!2363623 () Unit!158331)

(assert (=> d!1991505 (= lt!2363623 (choose!47066 lt!2363404 lt!2363402 lambda!348784))))

(assert (=> d!1991505 (= lt!2363404 (set.insert lt!2363402 (as set.empty (Set Context!11268))))))

(assert (=> d!1991505 (= (lemmaFlatMapOnSingletonSet!1281 lt!2363404 lt!2363402 lambda!348784) lt!2363623)))

(declare-fun b_lambda!241449 () Bool)

(assert (=> (not b_lambda!241449) (not d!1991505)))

(declare-fun bs!1588973 () Bool)

(assert (= bs!1588973 d!1991505))

(assert (=> bs!1588973 m!7153222))

(declare-fun m!7153922 () Bool)

(assert (=> bs!1588973 m!7153922))

(declare-fun m!7153924 () Bool)

(assert (=> bs!1588973 m!7153924))

(assert (=> bs!1588973 m!7153218))

(assert (=> b!6345483 d!1991505))

(declare-fun bs!1588974 () Bool)

(declare-fun d!1991507 () Bool)

(assert (= bs!1588974 (and d!1991507 b!6345490)))

(declare-fun lambda!348867 () Int)

(assert (=> bs!1588974 (= lambda!348867 lambda!348784)))

(assert (=> d!1991507 true))

(assert (=> d!1991507 (= (derivationStepZipper!2216 lt!2363404 (h!71374 s!2326)) (flatMap!1755 lt!2363404 lambda!348867))))

(declare-fun bs!1588975 () Bool)

(assert (= bs!1588975 d!1991507))

(declare-fun m!7153926 () Bool)

(assert (=> bs!1588975 m!7153926))

(assert (=> b!6345483 d!1991507))

(declare-fun d!1991509 () Bool)

(declare-fun c!1154249 () Bool)

(assert (=> d!1991509 (= c!1154249 (isEmpty!37015 (t!378638 s!2326)))))

(declare-fun e!3854433 () Bool)

(assert (=> d!1991509 (= (matchZipper!2262 lt!2363405 (t!378638 s!2326)) e!3854433)))

(declare-fun b!6346253 () Bool)

(assert (=> b!6346253 (= e!3854433 (nullableZipper!2016 lt!2363405))))

(declare-fun b!6346254 () Bool)

(assert (=> b!6346254 (= e!3854433 (matchZipper!2262 (derivationStepZipper!2216 lt!2363405 (head!12993 (t!378638 s!2326))) (tail!12078 (t!378638 s!2326))))))

(assert (= (and d!1991509 c!1154249) b!6346253))

(assert (= (and d!1991509 (not c!1154249)) b!6346254))

(assert (=> d!1991509 m!7153520))

(declare-fun m!7153928 () Bool)

(assert (=> b!6346253 m!7153928))

(assert (=> b!6346254 m!7153524))

(assert (=> b!6346254 m!7153524))

(declare-fun m!7153930 () Bool)

(assert (=> b!6346254 m!7153930))

(assert (=> b!6346254 m!7153528))

(assert (=> b!6346254 m!7153930))

(assert (=> b!6346254 m!7153528))

(declare-fun m!7153932 () Bool)

(assert (=> b!6346254 m!7153932))

(assert (=> b!6345505 d!1991509))

(declare-fun b!6346273 () Bool)

(declare-fun e!3854440 () Bool)

(assert (=> b!6346273 (= e!3854440 tp_is_empty!41753)))

(assert (=> b!6345496 (= tp!1769118 e!3854440)))

(declare-fun b!6346274 () Bool)

(declare-fun tp!1769165 () Bool)

(declare-fun tp!1769161 () Bool)

(assert (=> b!6346274 (= e!3854440 (and tp!1769165 tp!1769161))))

(declare-fun b!6346276 () Bool)

(declare-fun tp!1769162 () Bool)

(declare-fun tp!1769163 () Bool)

(assert (=> b!6346276 (= e!3854440 (and tp!1769162 tp!1769163))))

(declare-fun b!6346275 () Bool)

(declare-fun tp!1769164 () Bool)

(assert (=> b!6346275 (= e!3854440 tp!1769164)))

(assert (= (and b!6345496 (is-ElementMatch!16250 (reg!16579 r!7292))) b!6346273))

(assert (= (and b!6345496 (is-Concat!25095 (reg!16579 r!7292))) b!6346274))

(assert (= (and b!6345496 (is-Star!16250 (reg!16579 r!7292))) b!6346275))

(assert (= (and b!6345496 (is-Union!16250 (reg!16579 r!7292))) b!6346276))

(declare-fun condSetEmpty!43203 () Bool)

(assert (=> setNonEmpty!43197 (= condSetEmpty!43203 (= setRest!43197 (as set.empty (Set Context!11268))))))

(declare-fun setRes!43203 () Bool)

(assert (=> setNonEmpty!43197 (= tp!1769114 setRes!43203)))

(declare-fun setIsEmpty!43203 () Bool)

(assert (=> setIsEmpty!43203 setRes!43203))

(declare-fun tp!1769170 () Bool)

(declare-fun setElem!43203 () Context!11268)

(declare-fun e!3854443 () Bool)

(declare-fun setNonEmpty!43203 () Bool)

(assert (=> setNonEmpty!43203 (= setRes!43203 (and tp!1769170 (inv!83873 setElem!43203) e!3854443))))

(declare-fun setRest!43203 () (Set Context!11268))

(assert (=> setNonEmpty!43203 (= setRest!43197 (set.union (set.insert setElem!43203 (as set.empty (Set Context!11268))) setRest!43203))))

(declare-fun b!6346281 () Bool)

(declare-fun tp!1769171 () Bool)

(assert (=> b!6346281 (= e!3854443 tp!1769171)))

(assert (= (and setNonEmpty!43197 condSetEmpty!43203) setIsEmpty!43203))

(assert (= (and setNonEmpty!43197 (not condSetEmpty!43203)) setNonEmpty!43203))

(assert (= setNonEmpty!43203 b!6346281))

(declare-fun m!7153958 () Bool)

(assert (=> setNonEmpty!43203 m!7153958))

(declare-fun b!6346282 () Bool)

(declare-fun e!3854444 () Bool)

(assert (=> b!6346282 (= e!3854444 tp_is_empty!41753)))

(assert (=> b!6345497 (= tp!1769119 e!3854444)))

(declare-fun b!6346283 () Bool)

(declare-fun tp!1769176 () Bool)

(declare-fun tp!1769172 () Bool)

(assert (=> b!6346283 (= e!3854444 (and tp!1769176 tp!1769172))))

(declare-fun b!6346285 () Bool)

(declare-fun tp!1769173 () Bool)

(declare-fun tp!1769174 () Bool)

(assert (=> b!6346285 (= e!3854444 (and tp!1769173 tp!1769174))))

(declare-fun b!6346284 () Bool)

(declare-fun tp!1769175 () Bool)

(assert (=> b!6346284 (= e!3854444 tp!1769175)))

(assert (= (and b!6345497 (is-ElementMatch!16250 (regOne!33012 r!7292))) b!6346282))

(assert (= (and b!6345497 (is-Concat!25095 (regOne!33012 r!7292))) b!6346283))

(assert (= (and b!6345497 (is-Star!16250 (regOne!33012 r!7292))) b!6346284))

(assert (= (and b!6345497 (is-Union!16250 (regOne!33012 r!7292))) b!6346285))

(declare-fun b!6346286 () Bool)

(declare-fun e!3854445 () Bool)

(assert (=> b!6346286 (= e!3854445 tp_is_empty!41753)))

(assert (=> b!6345497 (= tp!1769116 e!3854445)))

(declare-fun b!6346287 () Bool)

(declare-fun tp!1769181 () Bool)

(declare-fun tp!1769177 () Bool)

(assert (=> b!6346287 (= e!3854445 (and tp!1769181 tp!1769177))))

(declare-fun b!6346289 () Bool)

(declare-fun tp!1769178 () Bool)

(declare-fun tp!1769179 () Bool)

(assert (=> b!6346289 (= e!3854445 (and tp!1769178 tp!1769179))))

(declare-fun b!6346288 () Bool)

(declare-fun tp!1769180 () Bool)

(assert (=> b!6346288 (= e!3854445 tp!1769180)))

(assert (= (and b!6345497 (is-ElementMatch!16250 (regTwo!33012 r!7292))) b!6346286))

(assert (= (and b!6345497 (is-Concat!25095 (regTwo!33012 r!7292))) b!6346287))

(assert (= (and b!6345497 (is-Star!16250 (regTwo!33012 r!7292))) b!6346288))

(assert (= (and b!6345497 (is-Union!16250 (regTwo!33012 r!7292))) b!6346289))

(declare-fun b!6346294 () Bool)

(declare-fun e!3854448 () Bool)

(declare-fun tp!1769186 () Bool)

(declare-fun tp!1769187 () Bool)

(assert (=> b!6346294 (= e!3854448 (and tp!1769186 tp!1769187))))

(assert (=> b!6345482 (= tp!1769117 e!3854448)))

(assert (= (and b!6345482 (is-Cons!64925 (exprs!6134 setElem!43197))) b!6346294))

(declare-fun b!6346302 () Bool)

(declare-fun e!3854454 () Bool)

(declare-fun tp!1769192 () Bool)

(assert (=> b!6346302 (= e!3854454 tp!1769192)))

(declare-fun b!6346301 () Bool)

(declare-fun e!3854453 () Bool)

(declare-fun tp!1769193 () Bool)

(assert (=> b!6346301 (= e!3854453 (and (inv!83873 (h!71375 (t!378639 zl!343))) e!3854454 tp!1769193))))

(assert (=> b!6345508 (= tp!1769112 e!3854453)))

(assert (= b!6346301 b!6346302))

(assert (= (and b!6345508 (is-Cons!64927 (t!378639 zl!343))) b!6346301))

(declare-fun m!7153960 () Bool)

(assert (=> b!6346301 m!7153960))

(declare-fun b!6346303 () Bool)

(declare-fun e!3854455 () Bool)

(declare-fun tp!1769194 () Bool)

(declare-fun tp!1769195 () Bool)

(assert (=> b!6346303 (= e!3854455 (and tp!1769194 tp!1769195))))

(assert (=> b!6345478 (= tp!1769120 e!3854455)))

(assert (= (and b!6345478 (is-Cons!64925 (exprs!6134 (h!71375 zl!343)))) b!6346303))

(declare-fun b!6346304 () Bool)

(declare-fun e!3854456 () Bool)

(assert (=> b!6346304 (= e!3854456 tp_is_empty!41753)))

(assert (=> b!6345498 (= tp!1769113 e!3854456)))

(declare-fun b!6346305 () Bool)

(declare-fun tp!1769200 () Bool)

(declare-fun tp!1769196 () Bool)

(assert (=> b!6346305 (= e!3854456 (and tp!1769200 tp!1769196))))

(declare-fun b!6346307 () Bool)

(declare-fun tp!1769197 () Bool)

(declare-fun tp!1769198 () Bool)

(assert (=> b!6346307 (= e!3854456 (and tp!1769197 tp!1769198))))

(declare-fun b!6346306 () Bool)

(declare-fun tp!1769199 () Bool)

(assert (=> b!6346306 (= e!3854456 tp!1769199)))

(assert (= (and b!6345498 (is-ElementMatch!16250 (regOne!33013 r!7292))) b!6346304))

(assert (= (and b!6345498 (is-Concat!25095 (regOne!33013 r!7292))) b!6346305))

(assert (= (and b!6345498 (is-Star!16250 (regOne!33013 r!7292))) b!6346306))

(assert (= (and b!6345498 (is-Union!16250 (regOne!33013 r!7292))) b!6346307))

(declare-fun b!6346308 () Bool)

(declare-fun e!3854457 () Bool)

(assert (=> b!6346308 (= e!3854457 tp_is_empty!41753)))

(assert (=> b!6345498 (= tp!1769115 e!3854457)))

(declare-fun b!6346309 () Bool)

(declare-fun tp!1769205 () Bool)

(declare-fun tp!1769201 () Bool)

(assert (=> b!6346309 (= e!3854457 (and tp!1769205 tp!1769201))))

(declare-fun b!6346311 () Bool)

(declare-fun tp!1769202 () Bool)

(declare-fun tp!1769203 () Bool)

(assert (=> b!6346311 (= e!3854457 (and tp!1769202 tp!1769203))))

(declare-fun b!6346310 () Bool)

(declare-fun tp!1769204 () Bool)

(assert (=> b!6346310 (= e!3854457 tp!1769204)))

(assert (= (and b!6345498 (is-ElementMatch!16250 (regTwo!33013 r!7292))) b!6346308))

(assert (= (and b!6345498 (is-Concat!25095 (regTwo!33013 r!7292))) b!6346309))

(assert (= (and b!6345498 (is-Star!16250 (regTwo!33013 r!7292))) b!6346310))

(assert (= (and b!6345498 (is-Union!16250 (regTwo!33013 r!7292))) b!6346311))

(declare-fun b!6346316 () Bool)

(declare-fun e!3854460 () Bool)

(declare-fun tp!1769208 () Bool)

(assert (=> b!6346316 (= e!3854460 (and tp_is_empty!41753 tp!1769208))))

(assert (=> b!6345485 (= tp!1769111 e!3854460)))

(assert (= (and b!6345485 (is-Cons!64926 (t!378638 s!2326))) b!6346316))

(declare-fun b_lambda!241451 () Bool)

(assert (= b_lambda!241445 (or b!6345490 b_lambda!241451)))

(declare-fun bs!1588982 () Bool)

(declare-fun d!1991519 () Bool)

(assert (= bs!1588982 (and d!1991519 b!6345490)))

(assert (=> bs!1588982 (= (dynLambda!25740 lambda!348784 (h!71375 zl!343)) (derivationStepZipperUp!1424 (h!71375 zl!343) (h!71374 s!2326)))))

(assert (=> bs!1588982 m!7153260))

(assert (=> d!1991367 d!1991519))

(declare-fun b_lambda!241453 () Bool)

(assert (= b_lambda!241449 (or b!6345490 b_lambda!241453)))

(declare-fun bs!1588983 () Bool)

(declare-fun d!1991521 () Bool)

(assert (= bs!1588983 (and d!1991521 b!6345490)))

(assert (=> bs!1588983 (= (dynLambda!25740 lambda!348784 lt!2363402) (derivationStepZipperUp!1424 lt!2363402 (h!71374 s!2326)))))

(assert (=> bs!1588983 m!7153224))

(assert (=> d!1991505 d!1991521))

(push 1)

(assert (not bm!540999))

(assert (not b!6346030))

(assert (not d!1991351))

(assert (not b!6346066))

(assert (not b!6345857))

(assert (not b!6345666))

(assert (not b!6345664))

(assert (not bm!540979))

(assert (not bm!540938))

(assert (not b!6345684))

(assert (not b!6345856))

(assert (not d!1991397))

(assert (not b!6345671))

(assert (not b!6346245))

(assert (not b!6346254))

(assert (not d!1991431))

(assert (not b!6346311))

(assert (not b!6346275))

(assert (not d!1991419))

(assert (not b!6346243))

(assert (not b!6346026))

(assert (not b!6345794))

(assert (not d!1991445))

(assert (not bm!540954))

(assert (not b!6345670))

(assert (not d!1991349))

(assert (not b!6345993))

(assert (not d!1991497))

(assert (not b!6346205))

(assert (not bm!540996))

(assert (not d!1991357))

(assert (not bm!541001))

(assert (not b!6346281))

(assert (not b!6345991))

(assert (not b!6345924))

(assert (not b!6346126))

(assert (not b!6346128))

(assert (not d!1991481))

(assert (not d!1991505))

(assert (not b!6345981))

(assert (not b!6345802))

(assert (not b!6346182))

(assert (not b!6346235))

(assert (not b!6346021))

(assert (not b!6346309))

(assert (not bm!541000))

(assert (not b!6346237))

(assert (not b!6345853))

(assert (not b!6346305))

(assert (not d!1991401))

(assert (not d!1991443))

(assert (not d!1991499))

(assert (not bm!540913))

(assert (not d!1991347))

(assert (not d!1991387))

(assert (not d!1991383))

(assert (not d!1991389))

(assert (not b!6346180))

(assert (not b!6346242))

(assert (not b!6345761))

(assert (not b!6346001))

(assert (not b!6346191))

(assert (not b!6346289))

(assert (not b!6346310))

(assert (not d!1991417))

(assert (not b!6346024))

(assert (not b!6346009))

(assert (not d!1991411))

(assert (not b!6345712))

(assert (not d!1991373))

(assert (not b!6345796))

(assert (not b!6345793))

(assert (not b!6346004))

(assert (not bs!1588983))

(assert (not d!1991501))

(assert (not d!1991507))

(assert (not b!6346193))

(assert (not b!6346306))

(assert (not b!6346199))

(assert (not b!6345704))

(assert (not b!6345994))

(assert (not b!6345756))

(assert (not b!6346284))

(assert (not d!1991363))

(assert (not b!6346276))

(assert (not b!6345709))

(assert (not b!6345852))

(assert (not b!6346301))

(assert (not b!6345702))

(assert (not b!6346287))

(assert (not b!6346230))

(assert (not d!1991393))

(assert (not b!6346274))

(assert (not d!1991405))

(assert (not b!6345678))

(assert (not b!6345854))

(assert (not b!6345798))

(assert (not b!6345771))

(assert (not bm!540994))

(assert (not bm!540998))

(assert (not b!6346302))

(assert (not b!6346031))

(assert (not b!6346307))

(assert (not b!6345763))

(assert (not b!6346067))

(assert (not b!6345770))

(assert (not bm!540978))

(assert (not d!1991449))

(assert (not b!6345855))

(assert (not d!1991367))

(assert (not b!6346175))

(assert (not b!6345668))

(assert (not d!1991509))

(assert (not d!1991399))

(assert (not b!6346038))

(assert (not b!6346177))

(assert (not b!6346294))

(assert (not b!6345707))

(assert (not d!1991429))

(assert (not b!6346034))

(assert (not d!1991353))

(assert (not d!1991415))

(assert (not b!6345988))

(assert (not b!6346316))

(assert (not b!6345772))

(assert (not d!1991385))

(assert (not bm!540912))

(assert (not bm!540914))

(assert (not bs!1588982))

(assert (not b!6346248))

(assert (not b!6345686))

(assert (not b!6346000))

(assert (not bm!540953))

(assert (not bm!540934))

(assert (not b!6346204))

(assert (not b!6346207))

(assert (not b!6345699))

(assert (not b!6346303))

(assert (not bm!540970))

(assert (not setNonEmpty!43203))

(assert tp_is_empty!41753)

(assert (not b!6346029))

(assert (not b!6346033))

(assert (not b!6346032))

(assert (not b!6346002))

(assert (not d!1991475))

(assert (not b!6345797))

(assert (not bm!540928))

(assert (not b!6346005))

(assert (not b!6345795))

(assert (not b!6346253))

(assert (not d!1991489))

(assert (not b!6346058))

(assert (not b!6346288))

(assert (not b!6346225))

(assert (not b!6345672))

(assert (not d!1991479))

(assert (not b!6346025))

(assert (not b!6345769))

(assert (not bm!540929))

(assert (not d!1991425))

(assert (not bm!540993))

(assert (not b!6346022))

(assert (not b!6345673))

(assert (not b!6346285))

(assert (not b!6346192))

(assert (not b!6345986))

(assert (not b!6346003))

(assert (not b!6346240))

(assert (not b_lambda!241453))

(assert (not bm!540935))

(assert (not b!6345745))

(assert (not b!6346223))

(assert (not bm!540995))

(assert (not bm!540932))

(assert (not d!1991435))

(assert (not b_lambda!241451))

(assert (not b!6346283))

(assert (not b!6346023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

