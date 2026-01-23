; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701778 () Bool)

(assert start!701778)

(declare-fun b!7232290 () Bool)

(assert (=> b!7232290 true))

(declare-fun e!4335690 () Bool)

(declare-fun e!4335691 () Bool)

(assert (=> b!7232290 (= e!4335690 (not e!4335691))))

(declare-fun res!2934253 () Bool)

(assert (=> b!7232290 (=> res!2934253 e!4335691)))

(declare-datatypes ((C!37270 0))(
  ( (C!37271 (val!28583 Int)) )
))
(declare-datatypes ((Regex!18498 0))(
  ( (ElementMatch!18498 (c!1341890 C!37270)) (Concat!27343 (regOne!37508 Regex!18498) (regTwo!37508 Regex!18498)) (EmptyExpr!18498) (Star!18498 (reg!18827 Regex!18498)) (EmptyLang!18498) (Union!18498 (regOne!37509 Regex!18498) (regTwo!37509 Regex!18498)) )
))
(declare-datatypes ((List!70102 0))(
  ( (Nil!69978) (Cons!69978 (h!76426 Regex!18498) (t!384151 List!70102)) )
))
(declare-datatypes ((Context!14876 0))(
  ( (Context!14877 (exprs!7938 List!70102)) )
))
(declare-fun lt!2573745 () (Set Context!14876))

(declare-fun lambda!439503 () Int)

(declare-fun exists!4139 ((Set Context!14876) Int) Bool)

(assert (=> b!7232290 (= res!2934253 (not (exists!4139 lt!2573745 lambda!439503)))))

(declare-datatypes ((List!70103 0))(
  ( (Nil!69979) (Cons!69979 (h!76427 Context!14876) (t!384152 List!70103)) )
))
(declare-fun lt!2573739 () List!70103)

(declare-fun exists!4140 (List!70103 Int) Bool)

(assert (=> b!7232290 (exists!4140 lt!2573739 lambda!439503)))

(declare-datatypes ((Unit!163533 0))(
  ( (Unit!163534) )
))
(declare-fun lt!2573741 () Unit!163533)

(declare-datatypes ((List!70104 0))(
  ( (Nil!69980) (Cons!69980 (h!76428 C!37270) (t!384153 List!70104)) )
))
(declare-fun s1!1971 () List!70104)

(declare-fun lemmaZipperMatchesExistsMatchingContext!641 (List!70103 List!70104) Unit!163533)

(assert (=> b!7232290 (= lt!2573741 (lemmaZipperMatchesExistsMatchingContext!641 lt!2573739 (t!384153 s1!1971)))))

(declare-fun toList!11355 ((Set Context!14876)) List!70103)

(assert (=> b!7232290 (= lt!2573739 (toList!11355 lt!2573745))))

(declare-fun b!7232291 () Bool)

(declare-fun res!2934255 () Bool)

(declare-fun e!4335695 () Bool)

(assert (=> b!7232291 (=> (not res!2934255) (not e!4335695))))

(declare-fun ct2!328 () Context!14876)

(declare-fun s2!1849 () List!70104)

(declare-fun matchZipper!3408 ((Set Context!14876) List!70104) Bool)

(assert (=> b!7232291 (= res!2934255 (matchZipper!3408 (set.insert ct2!328 (as set.empty (Set Context!14876))) s2!1849))))

(declare-fun res!2934254 () Bool)

(assert (=> start!701778 (=> (not res!2934254) (not e!4335695))))

(declare-fun lt!2573737 () (Set Context!14876))

(assert (=> start!701778 (= res!2934254 (matchZipper!3408 lt!2573737 s1!1971))))

(declare-fun ct1!232 () Context!14876)

(assert (=> start!701778 (= lt!2573737 (set.insert ct1!232 (as set.empty (Set Context!14876))))))

(assert (=> start!701778 e!4335695))

(declare-fun e!4335687 () Bool)

(declare-fun inv!89256 (Context!14876) Bool)

(assert (=> start!701778 (and (inv!89256 ct1!232) e!4335687)))

(declare-fun e!4335692 () Bool)

(assert (=> start!701778 e!4335692))

(declare-fun e!4335693 () Bool)

(assert (=> start!701778 e!4335693))

(declare-fun e!4335689 () Bool)

(assert (=> start!701778 (and (inv!89256 ct2!328) e!4335689)))

(declare-fun b!7232292 () Bool)

(declare-fun tp_is_empty!46461 () Bool)

(declare-fun tp!2034017 () Bool)

(assert (=> b!7232292 (= e!4335693 (and tp_is_empty!46461 tp!2034017))))

(declare-fun b!7232293 () Bool)

(declare-fun e!4335688 () Bool)

(assert (=> b!7232293 (= e!4335695 e!4335688)))

(declare-fun res!2934251 () Bool)

(assert (=> b!7232293 (=> (not res!2934251) (not e!4335688))))

(assert (=> b!7232293 (= res!2934251 (and (not (is-Nil!69978 (exprs!7938 ct1!232))) (is-Cons!69980 s1!1971)))))

(declare-fun lt!2573744 () List!70102)

(declare-fun ++!16296 (List!70102 List!70102) List!70102)

(assert (=> b!7232293 (= lt!2573744 (++!16296 (exprs!7938 ct1!232) (exprs!7938 ct2!328)))))

(declare-fun lambda!439502 () Int)

(declare-fun lt!2573742 () Unit!163533)

(declare-fun lemmaConcatPreservesForall!1307 (List!70102 List!70102 Int) Unit!163533)

(assert (=> b!7232293 (= lt!2573742 (lemmaConcatPreservesForall!1307 (exprs!7938 ct1!232) (exprs!7938 ct2!328) lambda!439502))))

(declare-fun b!7232294 () Bool)

(declare-fun tp!2034019 () Bool)

(assert (=> b!7232294 (= e!4335689 tp!2034019)))

(declare-fun b!7232295 () Bool)

(assert (=> b!7232295 (= e!4335688 e!4335690)))

(declare-fun res!2934252 () Bool)

(assert (=> b!7232295 (=> (not res!2934252) (not e!4335690))))

(assert (=> b!7232295 (= res!2934252 (matchZipper!3408 lt!2573745 (t!384153 s1!1971)))))

(declare-fun derivationStepZipper!3290 ((Set Context!14876) C!37270) (Set Context!14876))

(assert (=> b!7232295 (= lt!2573745 (derivationStepZipper!3290 lt!2573737 (h!76428 s1!1971)))))

(declare-fun b!7232296 () Bool)

(declare-fun e!4335694 () Bool)

(assert (=> b!7232296 (= e!4335691 e!4335694)))

(declare-fun res!2934256 () Bool)

(assert (=> b!7232296 (=> res!2934256 e!4335694)))

(declare-fun isEmpty!40331 (List!70102) Bool)

(assert (=> b!7232296 (= res!2934256 (isEmpty!40331 (exprs!7938 ct1!232)))))

(declare-fun lt!2573740 () (Set Context!14876))

(declare-fun derivationStepZipperUp!2372 (Context!14876 C!37270) (Set Context!14876))

(assert (=> b!7232296 (= lt!2573740 (derivationStepZipperUp!2372 ct1!232 (h!76428 s1!1971)))))

(declare-fun lt!2573743 () Context!14876)

(declare-fun lt!2573733 () Unit!163533)

(assert (=> b!7232296 (= lt!2573733 (lemmaConcatPreservesForall!1307 (exprs!7938 lt!2573743) (exprs!7938 ct2!328) lambda!439502))))

(declare-fun ++!16297 (List!70104 List!70104) List!70104)

(assert (=> b!7232296 (matchZipper!3408 (set.insert (Context!14877 (++!16296 (exprs!7938 lt!2573743) (exprs!7938 ct2!328))) (as set.empty (Set Context!14876))) (++!16297 (t!384153 s1!1971) s2!1849))))

(declare-fun lt!2573735 () Unit!163533)

(assert (=> b!7232296 (= lt!2573735 (lemmaConcatPreservesForall!1307 (exprs!7938 lt!2573743) (exprs!7938 ct2!328) lambda!439502))))

(declare-fun lt!2573738 () Unit!163533)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!289 (Context!14876 Context!14876 List!70104 List!70104) Unit!163533)

(assert (=> b!7232296 (= lt!2573738 (lemmaConcatenateContextMatchesConcatOfStrings!289 lt!2573743 ct2!328 (t!384153 s1!1971) s2!1849))))

(declare-fun getWitness!2016 ((Set Context!14876) Int) Context!14876)

(assert (=> b!7232296 (= lt!2573743 (getWitness!2016 lt!2573745 lambda!439503))))

(declare-fun b!7232297 () Bool)

(declare-fun tp!2034020 () Bool)

(assert (=> b!7232297 (= e!4335692 (and tp_is_empty!46461 tp!2034020))))

(declare-fun b!7232298 () Bool)

(declare-fun forall!17324 (List!70102 Int) Bool)

(assert (=> b!7232298 (= e!4335694 (forall!17324 (exprs!7938 ct1!232) lambda!439502))))

(declare-fun lt!2573736 () (Set Context!14876))

(assert (=> b!7232298 (= lt!2573736 (derivationStepZipperUp!2372 (Context!14877 lt!2573744) (h!76428 s1!1971)))))

(declare-fun lt!2573732 () Unit!163533)

(assert (=> b!7232298 (= lt!2573732 (lemmaConcatPreservesForall!1307 (exprs!7938 ct1!232) (exprs!7938 ct2!328) lambda!439502))))

(declare-fun lt!2573734 () (Set Context!14876))

(declare-fun derivationStepZipperDown!2542 (Regex!18498 Context!14876 C!37270) (Set Context!14876))

(declare-fun tail!14117 (List!70102) List!70102)

(assert (=> b!7232298 (= lt!2573734 (derivationStepZipperDown!2542 (h!76426 (exprs!7938 ct1!232)) (Context!14877 (tail!14117 (exprs!7938 ct1!232))) (h!76428 s1!1971)))))

(declare-fun b!7232299 () Bool)

(declare-fun tp!2034018 () Bool)

(assert (=> b!7232299 (= e!4335687 tp!2034018)))

(assert (= (and start!701778 res!2934254) b!7232291))

(assert (= (and b!7232291 res!2934255) b!7232293))

(assert (= (and b!7232293 res!2934251) b!7232295))

(assert (= (and b!7232295 res!2934252) b!7232290))

(assert (= (and b!7232290 (not res!2934253)) b!7232296))

(assert (= (and b!7232296 (not res!2934256)) b!7232298))

(assert (= start!701778 b!7232299))

(assert (= (and start!701778 (is-Cons!69980 s1!1971)) b!7232297))

(assert (= (and start!701778 (is-Cons!69980 s2!1849)) b!7232292))

(assert (= start!701778 b!7232294))

(declare-fun m!7901464 () Bool)

(assert (=> b!7232293 m!7901464))

(declare-fun m!7901466 () Bool)

(assert (=> b!7232293 m!7901466))

(declare-fun m!7901468 () Bool)

(assert (=> b!7232296 m!7901468))

(declare-fun m!7901470 () Bool)

(assert (=> b!7232296 m!7901470))

(declare-fun m!7901472 () Bool)

(assert (=> b!7232296 m!7901472))

(declare-fun m!7901474 () Bool)

(assert (=> b!7232296 m!7901474))

(declare-fun m!7901476 () Bool)

(assert (=> b!7232296 m!7901476))

(declare-fun m!7901478 () Bool)

(assert (=> b!7232296 m!7901478))

(assert (=> b!7232296 m!7901478))

(assert (=> b!7232296 m!7901474))

(declare-fun m!7901480 () Bool)

(assert (=> b!7232296 m!7901480))

(declare-fun m!7901482 () Bool)

(assert (=> b!7232296 m!7901482))

(assert (=> b!7232296 m!7901468))

(declare-fun m!7901484 () Bool)

(assert (=> b!7232296 m!7901484))

(declare-fun m!7901486 () Bool)

(assert (=> b!7232291 m!7901486))

(assert (=> b!7232291 m!7901486))

(declare-fun m!7901488 () Bool)

(assert (=> b!7232291 m!7901488))

(declare-fun m!7901490 () Bool)

(assert (=> b!7232295 m!7901490))

(declare-fun m!7901492 () Bool)

(assert (=> b!7232295 m!7901492))

(declare-fun m!7901494 () Bool)

(assert (=> b!7232290 m!7901494))

(declare-fun m!7901496 () Bool)

(assert (=> b!7232290 m!7901496))

(declare-fun m!7901498 () Bool)

(assert (=> b!7232290 m!7901498))

(declare-fun m!7901500 () Bool)

(assert (=> b!7232290 m!7901500))

(declare-fun m!7901502 () Bool)

(assert (=> start!701778 m!7901502))

(declare-fun m!7901504 () Bool)

(assert (=> start!701778 m!7901504))

(declare-fun m!7901506 () Bool)

(assert (=> start!701778 m!7901506))

(declare-fun m!7901508 () Bool)

(assert (=> start!701778 m!7901508))

(declare-fun m!7901510 () Bool)

(assert (=> b!7232298 m!7901510))

(declare-fun m!7901512 () Bool)

(assert (=> b!7232298 m!7901512))

(declare-fun m!7901514 () Bool)

(assert (=> b!7232298 m!7901514))

(declare-fun m!7901516 () Bool)

(assert (=> b!7232298 m!7901516))

(assert (=> b!7232298 m!7901466))

(push 1)

(assert (not b!7232292))

(assert (not start!701778))

(assert (not b!7232297))

(assert (not b!7232290))

(assert (not b!7232298))

(assert (not b!7232295))

(assert (not b!7232299))

(assert tp_is_empty!46461)

(assert (not b!7232291))

(assert (not b!7232293))

(assert (not b!7232294))

(assert (not b!7232296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2246230 () Bool)

(declare-fun c!1341900 () Bool)

(declare-fun isEmpty!40333 (List!70104) Bool)

(assert (=> d!2246230 (= c!1341900 (isEmpty!40333 s1!1971))))

(declare-fun e!4335725 () Bool)

(assert (=> d!2246230 (= (matchZipper!3408 lt!2573737 s1!1971) e!4335725)))

(declare-fun b!7232338 () Bool)

(declare-fun nullableZipper!2812 ((Set Context!14876)) Bool)

(assert (=> b!7232338 (= e!4335725 (nullableZipper!2812 lt!2573737))))

(declare-fun b!7232339 () Bool)

(declare-fun head!14800 (List!70104) C!37270)

(declare-fun tail!14119 (List!70104) List!70104)

(assert (=> b!7232339 (= e!4335725 (matchZipper!3408 (derivationStepZipper!3290 lt!2573737 (head!14800 s1!1971)) (tail!14119 s1!1971)))))

(assert (= (and d!2246230 c!1341900) b!7232338))

(assert (= (and d!2246230 (not c!1341900)) b!7232339))

(declare-fun m!7901572 () Bool)

(assert (=> d!2246230 m!7901572))

(declare-fun m!7901574 () Bool)

(assert (=> b!7232338 m!7901574))

(declare-fun m!7901576 () Bool)

(assert (=> b!7232339 m!7901576))

(assert (=> b!7232339 m!7901576))

(declare-fun m!7901578 () Bool)

(assert (=> b!7232339 m!7901578))

(declare-fun m!7901580 () Bool)

(assert (=> b!7232339 m!7901580))

(assert (=> b!7232339 m!7901578))

(assert (=> b!7232339 m!7901580))

(declare-fun m!7901582 () Bool)

(assert (=> b!7232339 m!7901582))

(assert (=> start!701778 d!2246230))

(declare-fun bs!1902785 () Bool)

(declare-fun d!2246232 () Bool)

(assert (= bs!1902785 (and d!2246232 b!7232293)))

(declare-fun lambda!439524 () Int)

(assert (=> bs!1902785 (= lambda!439524 lambda!439502)))

(assert (=> d!2246232 (= (inv!89256 ct1!232) (forall!17324 (exprs!7938 ct1!232) lambda!439524))))

(declare-fun bs!1902786 () Bool)

(assert (= bs!1902786 d!2246232))

(declare-fun m!7901584 () Bool)

(assert (=> bs!1902786 m!7901584))

(assert (=> start!701778 d!2246232))

(declare-fun bs!1902787 () Bool)

(declare-fun d!2246234 () Bool)

(assert (= bs!1902787 (and d!2246234 b!7232293)))

(declare-fun lambda!439525 () Int)

(assert (=> bs!1902787 (= lambda!439525 lambda!439502)))

(declare-fun bs!1902788 () Bool)

(assert (= bs!1902788 (and d!2246234 d!2246232)))

(assert (=> bs!1902788 (= lambda!439525 lambda!439524)))

(assert (=> d!2246234 (= (inv!89256 ct2!328) (forall!17324 (exprs!7938 ct2!328) lambda!439525))))

(declare-fun bs!1902789 () Bool)

(assert (= bs!1902789 d!2246234))

(declare-fun m!7901586 () Bool)

(assert (=> bs!1902789 m!7901586))

(assert (=> start!701778 d!2246234))

(declare-fun d!2246236 () Bool)

(assert (=> d!2246236 (= (tail!14117 (exprs!7938 ct1!232)) (t!384151 (exprs!7938 ct1!232)))))

(assert (=> b!7232298 d!2246236))

(declare-fun d!2246238 () Bool)

(declare-fun res!2934279 () Bool)

(declare-fun e!4335730 () Bool)

(assert (=> d!2246238 (=> res!2934279 e!4335730)))

(assert (=> d!2246238 (= res!2934279 (is-Nil!69978 (exprs!7938 ct1!232)))))

(assert (=> d!2246238 (= (forall!17324 (exprs!7938 ct1!232) lambda!439502) e!4335730)))

(declare-fun b!7232344 () Bool)

(declare-fun e!4335731 () Bool)

(assert (=> b!7232344 (= e!4335730 e!4335731)))

(declare-fun res!2934280 () Bool)

(assert (=> b!7232344 (=> (not res!2934280) (not e!4335731))))

(declare-fun dynLambda!28523 (Int Regex!18498) Bool)

(assert (=> b!7232344 (= res!2934280 (dynLambda!28523 lambda!439502 (h!76426 (exprs!7938 ct1!232))))))

(declare-fun b!7232345 () Bool)

(assert (=> b!7232345 (= e!4335731 (forall!17324 (t!384151 (exprs!7938 ct1!232)) lambda!439502))))

(assert (= (and d!2246238 (not res!2934279)) b!7232344))

(assert (= (and b!7232344 res!2934280) b!7232345))

(declare-fun b_lambda!277183 () Bool)

(assert (=> (not b_lambda!277183) (not b!7232344)))

(declare-fun m!7901588 () Bool)

(assert (=> b!7232344 m!7901588))

(declare-fun m!7901590 () Bool)

(assert (=> b!7232345 m!7901590))

(assert (=> b!7232298 d!2246238))

(declare-fun d!2246240 () Bool)

(assert (=> d!2246240 (forall!17324 (++!16296 (exprs!7938 ct1!232) (exprs!7938 ct2!328)) lambda!439502)))

(declare-fun lt!2573790 () Unit!163533)

(declare-fun choose!55532 (List!70102 List!70102 Int) Unit!163533)

(assert (=> d!2246240 (= lt!2573790 (choose!55532 (exprs!7938 ct1!232) (exprs!7938 ct2!328) lambda!439502))))

(assert (=> d!2246240 (forall!17324 (exprs!7938 ct1!232) lambda!439502)))

(assert (=> d!2246240 (= (lemmaConcatPreservesForall!1307 (exprs!7938 ct1!232) (exprs!7938 ct2!328) lambda!439502) lt!2573790)))

(declare-fun bs!1902790 () Bool)

(assert (= bs!1902790 d!2246240))

(assert (=> bs!1902790 m!7901464))

(assert (=> bs!1902790 m!7901464))

(declare-fun m!7901592 () Bool)

(assert (=> bs!1902790 m!7901592))

(declare-fun m!7901594 () Bool)

(assert (=> bs!1902790 m!7901594))

(assert (=> bs!1902790 m!7901512))

(assert (=> b!7232298 d!2246240))

(declare-fun b!7232376 () Bool)

(declare-fun e!4335748 () (Set Context!14876))

(declare-fun call!658294 () (Set Context!14876))

(declare-fun call!658292 () (Set Context!14876))

(assert (=> b!7232376 (= e!4335748 (set.union call!658294 call!658292))))

(declare-fun b!7232377 () Bool)

(declare-fun e!4335752 () (Set Context!14876))

(assert (=> b!7232377 (= e!4335748 e!4335752)))

(declare-fun c!1341917 () Bool)

(assert (=> b!7232377 (= c!1341917 (is-Concat!27343 (h!76426 (exprs!7938 ct1!232))))))

(declare-fun b!7232378 () Bool)

(declare-fun e!4335753 () (Set Context!14876))

(declare-fun call!658291 () (Set Context!14876))

(assert (=> b!7232378 (= e!4335753 (set.union call!658294 call!658291))))

(declare-fun b!7232379 () Bool)

(declare-fun call!658289 () (Set Context!14876))

(assert (=> b!7232379 (= e!4335752 call!658289)))

(declare-fun bm!658284 () Bool)

(assert (=> bm!658284 (= call!658292 call!658291)))

(declare-fun b!7232380 () Bool)

(declare-fun e!4335750 () (Set Context!14876))

(assert (=> b!7232380 (= e!4335750 e!4335753)))

(declare-fun c!1341914 () Bool)

(assert (=> b!7232380 (= c!1341914 (is-Union!18498 (h!76426 (exprs!7938 ct1!232))))))

(declare-fun d!2246242 () Bool)

(declare-fun c!1341913 () Bool)

(assert (=> d!2246242 (= c!1341913 (and (is-ElementMatch!18498 (h!76426 (exprs!7938 ct1!232))) (= (c!1341890 (h!76426 (exprs!7938 ct1!232))) (h!76428 s1!1971))))))

(assert (=> d!2246242 (= (derivationStepZipperDown!2542 (h!76426 (exprs!7938 ct1!232)) (Context!14877 (tail!14117 (exprs!7938 ct1!232))) (h!76428 s1!1971)) e!4335750)))

(declare-fun b!7232381 () Bool)

(declare-fun e!4335749 () (Set Context!14876))

(assert (=> b!7232381 (= e!4335749 (as set.empty (Set Context!14876)))))

(declare-fun b!7232382 () Bool)

(declare-fun c!1341916 () Bool)

(assert (=> b!7232382 (= c!1341916 (is-Star!18498 (h!76426 (exprs!7938 ct1!232))))))

(assert (=> b!7232382 (= e!4335752 e!4335749)))

(declare-fun bm!658285 () Bool)

(assert (=> bm!658285 (= call!658289 call!658292)))

(declare-fun c!1341915 () Bool)

(declare-fun call!658290 () List!70102)

(declare-fun bm!658286 () Bool)

(declare-fun $colon$colon!2860 (List!70102 Regex!18498) List!70102)

(assert (=> bm!658286 (= call!658290 ($colon$colon!2860 (exprs!7938 (Context!14877 (tail!14117 (exprs!7938 ct1!232)))) (ite (or c!1341915 c!1341917) (regTwo!37508 (h!76426 (exprs!7938 ct1!232))) (h!76426 (exprs!7938 ct1!232)))))))

(declare-fun b!7232383 () Bool)

(declare-fun e!4335751 () Bool)

(declare-fun nullable!7815 (Regex!18498) Bool)

(assert (=> b!7232383 (= e!4335751 (nullable!7815 (regOne!37508 (h!76426 (exprs!7938 ct1!232)))))))

(declare-fun b!7232384 () Bool)

(assert (=> b!7232384 (= c!1341915 e!4335751)))

(declare-fun res!2934287 () Bool)

(assert (=> b!7232384 (=> (not res!2934287) (not e!4335751))))

(assert (=> b!7232384 (= res!2934287 (is-Concat!27343 (h!76426 (exprs!7938 ct1!232))))))

(assert (=> b!7232384 (= e!4335753 e!4335748)))

(declare-fun b!7232385 () Bool)

(assert (=> b!7232385 (= e!4335749 call!658289)))

(declare-fun bm!658287 () Bool)

(declare-fun call!658293 () List!70102)

(assert (=> bm!658287 (= call!658291 (derivationStepZipperDown!2542 (ite c!1341914 (regTwo!37509 (h!76426 (exprs!7938 ct1!232))) (ite c!1341915 (regTwo!37508 (h!76426 (exprs!7938 ct1!232))) (ite c!1341917 (regOne!37508 (h!76426 (exprs!7938 ct1!232))) (reg!18827 (h!76426 (exprs!7938 ct1!232)))))) (ite (or c!1341914 c!1341915) (Context!14877 (tail!14117 (exprs!7938 ct1!232))) (Context!14877 call!658293)) (h!76428 s1!1971)))))

(declare-fun bm!658288 () Bool)

(assert (=> bm!658288 (= call!658294 (derivationStepZipperDown!2542 (ite c!1341914 (regOne!37509 (h!76426 (exprs!7938 ct1!232))) (regOne!37508 (h!76426 (exprs!7938 ct1!232)))) (ite c!1341914 (Context!14877 (tail!14117 (exprs!7938 ct1!232))) (Context!14877 call!658290)) (h!76428 s1!1971)))))

(declare-fun bm!658289 () Bool)

(assert (=> bm!658289 (= call!658293 call!658290)))

(declare-fun b!7232386 () Bool)

(assert (=> b!7232386 (= e!4335750 (set.insert (Context!14877 (tail!14117 (exprs!7938 ct1!232))) (as set.empty (Set Context!14876))))))

(assert (= (and d!2246242 c!1341913) b!7232386))

(assert (= (and d!2246242 (not c!1341913)) b!7232380))

(assert (= (and b!7232380 c!1341914) b!7232378))

(assert (= (and b!7232380 (not c!1341914)) b!7232384))

(assert (= (and b!7232384 res!2934287) b!7232383))

(assert (= (and b!7232384 c!1341915) b!7232376))

(assert (= (and b!7232384 (not c!1341915)) b!7232377))

(assert (= (and b!7232377 c!1341917) b!7232379))

(assert (= (and b!7232377 (not c!1341917)) b!7232382))

(assert (= (and b!7232382 c!1341916) b!7232385))

(assert (= (and b!7232382 (not c!1341916)) b!7232381))

(assert (= (or b!7232379 b!7232385) bm!658289))

(assert (= (or b!7232379 b!7232385) bm!658285))

(assert (= (or b!7232376 bm!658289) bm!658286))

(assert (= (or b!7232376 bm!658285) bm!658284))

(assert (= (or b!7232378 bm!658284) bm!658287))

(assert (= (or b!7232378 b!7232376) bm!658288))

(declare-fun m!7901596 () Bool)

(assert (=> bm!658287 m!7901596))

(declare-fun m!7901598 () Bool)

(assert (=> b!7232386 m!7901598))

(declare-fun m!7901600 () Bool)

(assert (=> bm!658288 m!7901600))

(declare-fun m!7901602 () Bool)

(assert (=> bm!658286 m!7901602))

(declare-fun m!7901604 () Bool)

(assert (=> b!7232383 m!7901604))

(assert (=> b!7232298 d!2246242))

(declare-fun b!7232401 () Bool)

(declare-fun e!4335762 () (Set Context!14876))

(assert (=> b!7232401 (= e!4335762 (as set.empty (Set Context!14876)))))

(declare-fun b!7232402 () Bool)

(declare-fun call!658297 () (Set Context!14876))

(assert (=> b!7232402 (= e!4335762 call!658297)))

(declare-fun b!7232403 () Bool)

(declare-fun e!4335763 () (Set Context!14876))

(assert (=> b!7232403 (= e!4335763 e!4335762)))

(declare-fun c!1341924 () Bool)

(assert (=> b!7232403 (= c!1341924 (is-Cons!69978 (exprs!7938 (Context!14877 lt!2573744))))))

(declare-fun bm!658292 () Bool)

(assert (=> bm!658292 (= call!658297 (derivationStepZipperDown!2542 (h!76426 (exprs!7938 (Context!14877 lt!2573744))) (Context!14877 (t!384151 (exprs!7938 (Context!14877 lt!2573744)))) (h!76428 s1!1971)))))

(declare-fun b!7232404 () Bool)

(assert (=> b!7232404 (= e!4335763 (set.union call!658297 (derivationStepZipperUp!2372 (Context!14877 (t!384151 (exprs!7938 (Context!14877 lt!2573744)))) (h!76428 s1!1971))))))

(declare-fun b!7232405 () Bool)

(declare-fun e!4335764 () Bool)

(assert (=> b!7232405 (= e!4335764 (nullable!7815 (h!76426 (exprs!7938 (Context!14877 lt!2573744)))))))

(declare-fun d!2246246 () Bool)

(declare-fun c!1341923 () Bool)

(assert (=> d!2246246 (= c!1341923 e!4335764)))

(declare-fun res!2934292 () Bool)

(assert (=> d!2246246 (=> (not res!2934292) (not e!4335764))))

(assert (=> d!2246246 (= res!2934292 (is-Cons!69978 (exprs!7938 (Context!14877 lt!2573744))))))

(assert (=> d!2246246 (= (derivationStepZipperUp!2372 (Context!14877 lt!2573744) (h!76428 s1!1971)) e!4335763)))

(assert (= (and d!2246246 res!2934292) b!7232405))

(assert (= (and d!2246246 c!1341923) b!7232404))

(assert (= (and d!2246246 (not c!1341923)) b!7232403))

(assert (= (and b!7232403 c!1341924) b!7232402))

(assert (= (and b!7232403 (not c!1341924)) b!7232401))

(assert (= (or b!7232404 b!7232402) bm!658292))

(declare-fun m!7901620 () Bool)

(assert (=> bm!658292 m!7901620))

(declare-fun m!7901622 () Bool)

(assert (=> b!7232404 m!7901622))

(declare-fun m!7901624 () Bool)

(assert (=> b!7232405 m!7901624))

(assert (=> b!7232298 d!2246246))

(declare-fun d!2246250 () Bool)

(declare-fun c!1341925 () Bool)

(assert (=> d!2246250 (= c!1341925 (isEmpty!40333 (++!16297 (t!384153 s1!1971) s2!1849)))))

(declare-fun e!4335765 () Bool)

(assert (=> d!2246250 (= (matchZipper!3408 (set.insert (Context!14877 (++!16296 (exprs!7938 lt!2573743) (exprs!7938 ct2!328))) (as set.empty (Set Context!14876))) (++!16297 (t!384153 s1!1971) s2!1849)) e!4335765)))

(declare-fun b!7232406 () Bool)

(assert (=> b!7232406 (= e!4335765 (nullableZipper!2812 (set.insert (Context!14877 (++!16296 (exprs!7938 lt!2573743) (exprs!7938 ct2!328))) (as set.empty (Set Context!14876)))))))

(declare-fun b!7232407 () Bool)

(assert (=> b!7232407 (= e!4335765 (matchZipper!3408 (derivationStepZipper!3290 (set.insert (Context!14877 (++!16296 (exprs!7938 lt!2573743) (exprs!7938 ct2!328))) (as set.empty (Set Context!14876))) (head!14800 (++!16297 (t!384153 s1!1971) s2!1849))) (tail!14119 (++!16297 (t!384153 s1!1971) s2!1849))))))

(assert (= (and d!2246250 c!1341925) b!7232406))

(assert (= (and d!2246250 (not c!1341925)) b!7232407))

(assert (=> d!2246250 m!7901474))

(declare-fun m!7901626 () Bool)

(assert (=> d!2246250 m!7901626))

(assert (=> b!7232406 m!7901478))

(declare-fun m!7901628 () Bool)

(assert (=> b!7232406 m!7901628))

(assert (=> b!7232407 m!7901474))

(declare-fun m!7901630 () Bool)

(assert (=> b!7232407 m!7901630))

(assert (=> b!7232407 m!7901478))

(assert (=> b!7232407 m!7901630))

(declare-fun m!7901632 () Bool)

(assert (=> b!7232407 m!7901632))

(assert (=> b!7232407 m!7901474))

(declare-fun m!7901634 () Bool)

(assert (=> b!7232407 m!7901634))

(assert (=> b!7232407 m!7901632))

(assert (=> b!7232407 m!7901634))

(declare-fun m!7901636 () Bool)

(assert (=> b!7232407 m!7901636))

(assert (=> b!7232296 d!2246250))

(declare-fun d!2246252 () Bool)

(assert (=> d!2246252 (= (isEmpty!40331 (exprs!7938 ct1!232)) (is-Nil!69978 (exprs!7938 ct1!232)))))

(assert (=> b!7232296 d!2246252))

(declare-fun d!2246254 () Bool)

(declare-fun e!4335768 () Bool)

(assert (=> d!2246254 e!4335768))

(declare-fun res!2934295 () Bool)

(assert (=> d!2246254 (=> (not res!2934295) (not e!4335768))))

(declare-fun lt!2573798 () Context!14876)

(declare-fun dynLambda!28524 (Int Context!14876) Bool)

(assert (=> d!2246254 (= res!2934295 (dynLambda!28524 lambda!439503 lt!2573798))))

(declare-fun getWitness!2018 (List!70103 Int) Context!14876)

(assert (=> d!2246254 (= lt!2573798 (getWitness!2018 (toList!11355 lt!2573745) lambda!439503))))

(assert (=> d!2246254 (exists!4139 lt!2573745 lambda!439503)))

(assert (=> d!2246254 (= (getWitness!2016 lt!2573745 lambda!439503) lt!2573798)))

(declare-fun b!7232410 () Bool)

(assert (=> b!7232410 (= e!4335768 (set.member lt!2573798 lt!2573745))))

(assert (= (and d!2246254 res!2934295) b!7232410))

(declare-fun b_lambda!277185 () Bool)

(assert (=> (not b_lambda!277185) (not d!2246254)))

(declare-fun m!7901638 () Bool)

(assert (=> d!2246254 m!7901638))

(assert (=> d!2246254 m!7901500))

(assert (=> d!2246254 m!7901500))

(declare-fun m!7901640 () Bool)

(assert (=> d!2246254 m!7901640))

(assert (=> d!2246254 m!7901494))

(declare-fun m!7901642 () Bool)

(assert (=> b!7232410 m!7901642))

(assert (=> b!7232296 d!2246254))

(declare-fun b!7232421 () Bool)

(declare-fun res!2934300 () Bool)

(declare-fun e!4335774 () Bool)

(assert (=> b!7232421 (=> (not res!2934300) (not e!4335774))))

(declare-fun lt!2573802 () List!70102)

(declare-fun size!41557 (List!70102) Int)

(assert (=> b!7232421 (= res!2934300 (= (size!41557 lt!2573802) (+ (size!41557 (exprs!7938 lt!2573743)) (size!41557 (exprs!7938 ct2!328)))))))

(declare-fun d!2246256 () Bool)

(assert (=> d!2246256 e!4335774))

(declare-fun res!2934301 () Bool)

(assert (=> d!2246256 (=> (not res!2934301) (not e!4335774))))

(declare-fun content!14386 (List!70102) (Set Regex!18498))

(assert (=> d!2246256 (= res!2934301 (= (content!14386 lt!2573802) (set.union (content!14386 (exprs!7938 lt!2573743)) (content!14386 (exprs!7938 ct2!328)))))))

(declare-fun e!4335773 () List!70102)

(assert (=> d!2246256 (= lt!2573802 e!4335773)))

(declare-fun c!1341928 () Bool)

(assert (=> d!2246256 (= c!1341928 (is-Nil!69978 (exprs!7938 lt!2573743)))))

(assert (=> d!2246256 (= (++!16296 (exprs!7938 lt!2573743) (exprs!7938 ct2!328)) lt!2573802)))

(declare-fun b!7232419 () Bool)

(assert (=> b!7232419 (= e!4335773 (exprs!7938 ct2!328))))

(declare-fun b!7232420 () Bool)

(assert (=> b!7232420 (= e!4335773 (Cons!69978 (h!76426 (exprs!7938 lt!2573743)) (++!16296 (t!384151 (exprs!7938 lt!2573743)) (exprs!7938 ct2!328))))))

(declare-fun b!7232422 () Bool)

(assert (=> b!7232422 (= e!4335774 (or (not (= (exprs!7938 ct2!328) Nil!69978)) (= lt!2573802 (exprs!7938 lt!2573743))))))

(assert (= (and d!2246256 c!1341928) b!7232419))

(assert (= (and d!2246256 (not c!1341928)) b!7232420))

(assert (= (and d!2246256 res!2934301) b!7232421))

(assert (= (and b!7232421 res!2934300) b!7232422))

(declare-fun m!7901648 () Bool)

(assert (=> b!7232421 m!7901648))

(declare-fun m!7901650 () Bool)

(assert (=> b!7232421 m!7901650))

(declare-fun m!7901652 () Bool)

(assert (=> b!7232421 m!7901652))

(declare-fun m!7901654 () Bool)

(assert (=> d!2246256 m!7901654))

(declare-fun m!7901656 () Bool)

(assert (=> d!2246256 m!7901656))

(declare-fun m!7901658 () Bool)

(assert (=> d!2246256 m!7901658))

(declare-fun m!7901660 () Bool)

(assert (=> b!7232420 m!7901660))

(assert (=> b!7232296 d!2246256))

(declare-fun b!7232436 () Bool)

(declare-fun e!4335781 () List!70104)

(assert (=> b!7232436 (= e!4335781 (Cons!69980 (h!76428 (t!384153 s1!1971)) (++!16297 (t!384153 (t!384153 s1!1971)) s2!1849)))))

(declare-fun b!7232437 () Bool)

(declare-fun res!2934307 () Bool)

(declare-fun e!4335782 () Bool)

(assert (=> b!7232437 (=> (not res!2934307) (not e!4335782))))

(declare-fun lt!2573805 () List!70104)

(declare-fun size!41558 (List!70104) Int)

(assert (=> b!7232437 (= res!2934307 (= (size!41558 lt!2573805) (+ (size!41558 (t!384153 s1!1971)) (size!41558 s2!1849))))))

(declare-fun b!7232435 () Bool)

(assert (=> b!7232435 (= e!4335781 s2!1849)))

(declare-fun b!7232438 () Bool)

(assert (=> b!7232438 (= e!4335782 (or (not (= s2!1849 Nil!69980)) (= lt!2573805 (t!384153 s1!1971))))))

(declare-fun d!2246260 () Bool)

(assert (=> d!2246260 e!4335782))

(declare-fun res!2934306 () Bool)

(assert (=> d!2246260 (=> (not res!2934306) (not e!4335782))))

(declare-fun content!14387 (List!70104) (Set C!37270))

(assert (=> d!2246260 (= res!2934306 (= (content!14387 lt!2573805) (set.union (content!14387 (t!384153 s1!1971)) (content!14387 s2!1849))))))

(assert (=> d!2246260 (= lt!2573805 e!4335781)))

(declare-fun c!1341933 () Bool)

(assert (=> d!2246260 (= c!1341933 (is-Nil!69980 (t!384153 s1!1971)))))

(assert (=> d!2246260 (= (++!16297 (t!384153 s1!1971) s2!1849) lt!2573805)))

(assert (= (and d!2246260 c!1341933) b!7232435))

(assert (= (and d!2246260 (not c!1341933)) b!7232436))

(assert (= (and d!2246260 res!2934306) b!7232437))

(assert (= (and b!7232437 res!2934307) b!7232438))

(declare-fun m!7901662 () Bool)

(assert (=> b!7232436 m!7901662))

(declare-fun m!7901664 () Bool)

(assert (=> b!7232437 m!7901664))

(declare-fun m!7901666 () Bool)

(assert (=> b!7232437 m!7901666))

(declare-fun m!7901668 () Bool)

(assert (=> b!7232437 m!7901668))

(declare-fun m!7901670 () Bool)

(assert (=> d!2246260 m!7901670))

(declare-fun m!7901672 () Bool)

(assert (=> d!2246260 m!7901672))

(declare-fun m!7901674 () Bool)

(assert (=> d!2246260 m!7901674))

(assert (=> b!7232296 d!2246260))

(declare-fun b!7232439 () Bool)

(declare-fun e!4335783 () (Set Context!14876))

(assert (=> b!7232439 (= e!4335783 (as set.empty (Set Context!14876)))))

(declare-fun b!7232440 () Bool)

(declare-fun call!658298 () (Set Context!14876))

(assert (=> b!7232440 (= e!4335783 call!658298)))

(declare-fun b!7232441 () Bool)

(declare-fun e!4335784 () (Set Context!14876))

(assert (=> b!7232441 (= e!4335784 e!4335783)))

(declare-fun c!1341935 () Bool)

(assert (=> b!7232441 (= c!1341935 (is-Cons!69978 (exprs!7938 ct1!232)))))

(declare-fun bm!658293 () Bool)

(assert (=> bm!658293 (= call!658298 (derivationStepZipperDown!2542 (h!76426 (exprs!7938 ct1!232)) (Context!14877 (t!384151 (exprs!7938 ct1!232))) (h!76428 s1!1971)))))

(declare-fun b!7232442 () Bool)

(assert (=> b!7232442 (= e!4335784 (set.union call!658298 (derivationStepZipperUp!2372 (Context!14877 (t!384151 (exprs!7938 ct1!232))) (h!76428 s1!1971))))))

(declare-fun b!7232443 () Bool)

(declare-fun e!4335785 () Bool)

(assert (=> b!7232443 (= e!4335785 (nullable!7815 (h!76426 (exprs!7938 ct1!232))))))

(declare-fun d!2246262 () Bool)

(declare-fun c!1341934 () Bool)

(assert (=> d!2246262 (= c!1341934 e!4335785)))

(declare-fun res!2934308 () Bool)

(assert (=> d!2246262 (=> (not res!2934308) (not e!4335785))))

(assert (=> d!2246262 (= res!2934308 (is-Cons!69978 (exprs!7938 ct1!232)))))

(assert (=> d!2246262 (= (derivationStepZipperUp!2372 ct1!232 (h!76428 s1!1971)) e!4335784)))

(assert (= (and d!2246262 res!2934308) b!7232443))

(assert (= (and d!2246262 c!1341934) b!7232442))

(assert (= (and d!2246262 (not c!1341934)) b!7232441))

(assert (= (and b!7232441 c!1341935) b!7232440))

(assert (= (and b!7232441 (not c!1341935)) b!7232439))

(assert (= (or b!7232442 b!7232440) bm!658293))

(declare-fun m!7901676 () Bool)

(assert (=> bm!658293 m!7901676))

(declare-fun m!7901678 () Bool)

(assert (=> b!7232442 m!7901678))

(declare-fun m!7901680 () Bool)

(assert (=> b!7232443 m!7901680))

(assert (=> b!7232296 d!2246262))

(declare-fun bs!1902797 () Bool)

(declare-fun d!2246264 () Bool)

(assert (= bs!1902797 (and d!2246264 b!7232293)))

(declare-fun lambda!439532 () Int)

(assert (=> bs!1902797 (= lambda!439532 lambda!439502)))

(declare-fun bs!1902798 () Bool)

(assert (= bs!1902798 (and d!2246264 d!2246232)))

(assert (=> bs!1902798 (= lambda!439532 lambda!439524)))

(declare-fun bs!1902799 () Bool)

(assert (= bs!1902799 (and d!2246264 d!2246234)))

(assert (=> bs!1902799 (= lambda!439532 lambda!439525)))

(assert (=> d!2246264 (matchZipper!3408 (set.insert (Context!14877 (++!16296 (exprs!7938 lt!2573743) (exprs!7938 ct2!328))) (as set.empty (Set Context!14876))) (++!16297 (t!384153 s1!1971) s2!1849))))

(declare-fun lt!2573811 () Unit!163533)

(assert (=> d!2246264 (= lt!2573811 (lemmaConcatPreservesForall!1307 (exprs!7938 lt!2573743) (exprs!7938 ct2!328) lambda!439532))))

(declare-fun lt!2573810 () Unit!163533)

(declare-fun choose!55533 (Context!14876 Context!14876 List!70104 List!70104) Unit!163533)

(assert (=> d!2246264 (= lt!2573810 (choose!55533 lt!2573743 ct2!328 (t!384153 s1!1971) s2!1849))))

(assert (=> d!2246264 (matchZipper!3408 (set.insert lt!2573743 (as set.empty (Set Context!14876))) (t!384153 s1!1971))))

(assert (=> d!2246264 (= (lemmaConcatenateContextMatchesConcatOfStrings!289 lt!2573743 ct2!328 (t!384153 s1!1971) s2!1849) lt!2573810)))

(declare-fun bs!1902800 () Bool)

(assert (= bs!1902800 d!2246264))

(assert (=> bs!1902800 m!7901478))

(declare-fun m!7901710 () Bool)

(assert (=> bs!1902800 m!7901710))

(assert (=> bs!1902800 m!7901476))

(assert (=> bs!1902800 m!7901474))

(assert (=> bs!1902800 m!7901478))

(assert (=> bs!1902800 m!7901474))

(assert (=> bs!1902800 m!7901480))

(declare-fun m!7901712 () Bool)

(assert (=> bs!1902800 m!7901712))

(declare-fun m!7901714 () Bool)

(assert (=> bs!1902800 m!7901714))

(assert (=> bs!1902800 m!7901712))

(declare-fun m!7901716 () Bool)

(assert (=> bs!1902800 m!7901716))

(assert (=> b!7232296 d!2246264))

(declare-fun d!2246274 () Bool)

(assert (=> d!2246274 (forall!17324 (++!16296 (exprs!7938 lt!2573743) (exprs!7938 ct2!328)) lambda!439502)))

(declare-fun lt!2573812 () Unit!163533)

(assert (=> d!2246274 (= lt!2573812 (choose!55532 (exprs!7938 lt!2573743) (exprs!7938 ct2!328) lambda!439502))))

(assert (=> d!2246274 (forall!17324 (exprs!7938 lt!2573743) lambda!439502)))

(assert (=> d!2246274 (= (lemmaConcatPreservesForall!1307 (exprs!7938 lt!2573743) (exprs!7938 ct2!328) lambda!439502) lt!2573812)))

(declare-fun bs!1902801 () Bool)

(assert (= bs!1902801 d!2246274))

(assert (=> bs!1902801 m!7901476))

(assert (=> bs!1902801 m!7901476))

(declare-fun m!7901718 () Bool)

(assert (=> bs!1902801 m!7901718))

(declare-fun m!7901720 () Bool)

(assert (=> bs!1902801 m!7901720))

(declare-fun m!7901722 () Bool)

(assert (=> bs!1902801 m!7901722))

(assert (=> b!7232296 d!2246274))

(declare-fun d!2246276 () Bool)

(declare-fun c!1341938 () Bool)

(assert (=> d!2246276 (= c!1341938 (isEmpty!40333 s2!1849))))

(declare-fun e!4335788 () Bool)

(assert (=> d!2246276 (= (matchZipper!3408 (set.insert ct2!328 (as set.empty (Set Context!14876))) s2!1849) e!4335788)))

(declare-fun b!7232448 () Bool)

(assert (=> b!7232448 (= e!4335788 (nullableZipper!2812 (set.insert ct2!328 (as set.empty (Set Context!14876)))))))

(declare-fun b!7232449 () Bool)

(assert (=> b!7232449 (= e!4335788 (matchZipper!3408 (derivationStepZipper!3290 (set.insert ct2!328 (as set.empty (Set Context!14876))) (head!14800 s2!1849)) (tail!14119 s2!1849)))))

(assert (= (and d!2246276 c!1341938) b!7232448))

(assert (= (and d!2246276 (not c!1341938)) b!7232449))

(declare-fun m!7901724 () Bool)

(assert (=> d!2246276 m!7901724))

(assert (=> b!7232448 m!7901486))

(declare-fun m!7901726 () Bool)

(assert (=> b!7232448 m!7901726))

(declare-fun m!7901728 () Bool)

(assert (=> b!7232449 m!7901728))

(assert (=> b!7232449 m!7901486))

(assert (=> b!7232449 m!7901728))

(declare-fun m!7901730 () Bool)

(assert (=> b!7232449 m!7901730))

(declare-fun m!7901732 () Bool)

(assert (=> b!7232449 m!7901732))

(assert (=> b!7232449 m!7901730))

(assert (=> b!7232449 m!7901732))

(declare-fun m!7901734 () Bool)

(assert (=> b!7232449 m!7901734))

(assert (=> b!7232291 d!2246276))

(declare-fun d!2246278 () Bool)

(declare-fun lt!2573815 () Bool)

(assert (=> d!2246278 (= lt!2573815 (exists!4140 (toList!11355 lt!2573745) lambda!439503))))

(declare-fun choose!55534 ((Set Context!14876) Int) Bool)

(assert (=> d!2246278 (= lt!2573815 (choose!55534 lt!2573745 lambda!439503))))

(assert (=> d!2246278 (= (exists!4139 lt!2573745 lambda!439503) lt!2573815)))

(declare-fun bs!1902802 () Bool)

(assert (= bs!1902802 d!2246278))

(assert (=> bs!1902802 m!7901500))

(assert (=> bs!1902802 m!7901500))

(declare-fun m!7901736 () Bool)

(assert (=> bs!1902802 m!7901736))

(declare-fun m!7901738 () Bool)

(assert (=> bs!1902802 m!7901738))

(assert (=> b!7232290 d!2246278))

(declare-fun bs!1902803 () Bool)

(declare-fun d!2246280 () Bool)

(assert (= bs!1902803 (and d!2246280 b!7232290)))

(declare-fun lambda!439538 () Int)

(assert (=> bs!1902803 (not (= lambda!439538 lambda!439503))))

(assert (=> d!2246280 true))

(declare-fun order!28823 () Int)

(declare-fun dynLambda!28525 (Int Int) Int)

(assert (=> d!2246280 (< (dynLambda!28525 order!28823 lambda!439503) (dynLambda!28525 order!28823 lambda!439538))))

(declare-fun forall!17326 (List!70103 Int) Bool)

(assert (=> d!2246280 (= (exists!4140 lt!2573739 lambda!439503) (not (forall!17326 lt!2573739 lambda!439538)))))

(declare-fun bs!1902805 () Bool)

(assert (= bs!1902805 d!2246280))

(declare-fun m!7901742 () Bool)

(assert (=> bs!1902805 m!7901742))

(assert (=> b!7232290 d!2246280))

(declare-fun bs!1902806 () Bool)

(declare-fun d!2246284 () Bool)

(assert (= bs!1902806 (and d!2246284 b!7232290)))

(declare-fun lambda!439541 () Int)

(assert (=> bs!1902806 (= lambda!439541 lambda!439503)))

(declare-fun bs!1902807 () Bool)

(assert (= bs!1902807 (and d!2246284 d!2246280)))

(assert (=> bs!1902807 (not (= lambda!439541 lambda!439538))))

(assert (=> d!2246284 true))

(assert (=> d!2246284 (exists!4140 lt!2573739 lambda!439541)))

(declare-fun lt!2573818 () Unit!163533)

(declare-fun choose!55535 (List!70103 List!70104) Unit!163533)

(assert (=> d!2246284 (= lt!2573818 (choose!55535 lt!2573739 (t!384153 s1!1971)))))

(declare-fun content!14388 (List!70103) (Set Context!14876))

(assert (=> d!2246284 (matchZipper!3408 (content!14388 lt!2573739) (t!384153 s1!1971))))

(assert (=> d!2246284 (= (lemmaZipperMatchesExistsMatchingContext!641 lt!2573739 (t!384153 s1!1971)) lt!2573818)))

(declare-fun bs!1902808 () Bool)

(assert (= bs!1902808 d!2246284))

(declare-fun m!7901756 () Bool)

(assert (=> bs!1902808 m!7901756))

(declare-fun m!7901758 () Bool)

(assert (=> bs!1902808 m!7901758))

(declare-fun m!7901760 () Bool)

(assert (=> bs!1902808 m!7901760))

(assert (=> bs!1902808 m!7901760))

(declare-fun m!7901762 () Bool)

(assert (=> bs!1902808 m!7901762))

(assert (=> b!7232290 d!2246284))

(declare-fun d!2246290 () Bool)

(declare-fun e!4335792 () Bool)

(assert (=> d!2246290 e!4335792))

(declare-fun res!2934311 () Bool)

(assert (=> d!2246290 (=> (not res!2934311) (not e!4335792))))

(declare-fun lt!2573821 () List!70103)

(declare-fun noDuplicate!2923 (List!70103) Bool)

(assert (=> d!2246290 (= res!2934311 (noDuplicate!2923 lt!2573821))))

(declare-fun choose!55536 ((Set Context!14876)) List!70103)

(assert (=> d!2246290 (= lt!2573821 (choose!55536 lt!2573745))))

(assert (=> d!2246290 (= (toList!11355 lt!2573745) lt!2573821)))

(declare-fun b!7232460 () Bool)

(assert (=> b!7232460 (= e!4335792 (= (content!14388 lt!2573821) lt!2573745))))

(assert (= (and d!2246290 res!2934311) b!7232460))

(declare-fun m!7901764 () Bool)

(assert (=> d!2246290 m!7901764))

(declare-fun m!7901766 () Bool)

(assert (=> d!2246290 m!7901766))

(declare-fun m!7901768 () Bool)

(assert (=> b!7232460 m!7901768))

(assert (=> b!7232290 d!2246290))

(declare-fun d!2246292 () Bool)

(declare-fun c!1341946 () Bool)

(assert (=> d!2246292 (= c!1341946 (isEmpty!40333 (t!384153 s1!1971)))))

(declare-fun e!4335797 () Bool)

(assert (=> d!2246292 (= (matchZipper!3408 lt!2573745 (t!384153 s1!1971)) e!4335797)))

(declare-fun b!7232463 () Bool)

(assert (=> b!7232463 (= e!4335797 (nullableZipper!2812 lt!2573745))))

(declare-fun b!7232464 () Bool)

(assert (=> b!7232464 (= e!4335797 (matchZipper!3408 (derivationStepZipper!3290 lt!2573745 (head!14800 (t!384153 s1!1971))) (tail!14119 (t!384153 s1!1971))))))

(assert (= (and d!2246292 c!1341946) b!7232463))

(assert (= (and d!2246292 (not c!1341946)) b!7232464))

(declare-fun m!7901770 () Bool)

(assert (=> d!2246292 m!7901770))

(declare-fun m!7901772 () Bool)

(assert (=> b!7232463 m!7901772))

(declare-fun m!7901774 () Bool)

(assert (=> b!7232464 m!7901774))

(assert (=> b!7232464 m!7901774))

(declare-fun m!7901776 () Bool)

(assert (=> b!7232464 m!7901776))

(declare-fun m!7901778 () Bool)

(assert (=> b!7232464 m!7901778))

(assert (=> b!7232464 m!7901776))

(assert (=> b!7232464 m!7901778))

(declare-fun m!7901780 () Bool)

(assert (=> b!7232464 m!7901780))

(assert (=> b!7232295 d!2246292))

(declare-fun d!2246294 () Bool)

(assert (=> d!2246294 true))

(declare-fun lambda!439544 () Int)

(declare-fun flatMap!2704 ((Set Context!14876) Int) (Set Context!14876))

(assert (=> d!2246294 (= (derivationStepZipper!3290 lt!2573737 (h!76428 s1!1971)) (flatMap!2704 lt!2573737 lambda!439544))))

(declare-fun bs!1902809 () Bool)

(assert (= bs!1902809 d!2246294))

(declare-fun m!7901782 () Bool)

(assert (=> bs!1902809 m!7901782))

(assert (=> b!7232295 d!2246294))

(declare-fun b!7232475 () Bool)

(declare-fun res!2934314 () Bool)

(declare-fun e!4335801 () Bool)

(assert (=> b!7232475 (=> (not res!2934314) (not e!4335801))))

(declare-fun lt!2573822 () List!70102)

(assert (=> b!7232475 (= res!2934314 (= (size!41557 lt!2573822) (+ (size!41557 (exprs!7938 ct1!232)) (size!41557 (exprs!7938 ct2!328)))))))

(declare-fun d!2246296 () Bool)

(assert (=> d!2246296 e!4335801))

(declare-fun res!2934315 () Bool)

(assert (=> d!2246296 (=> (not res!2934315) (not e!4335801))))

(assert (=> d!2246296 (= res!2934315 (= (content!14386 lt!2573822) (set.union (content!14386 (exprs!7938 ct1!232)) (content!14386 (exprs!7938 ct2!328)))))))

(declare-fun e!4335800 () List!70102)

(assert (=> d!2246296 (= lt!2573822 e!4335800)))

(declare-fun c!1341951 () Bool)

(assert (=> d!2246296 (= c!1341951 (is-Nil!69978 (exprs!7938 ct1!232)))))

(assert (=> d!2246296 (= (++!16296 (exprs!7938 ct1!232) (exprs!7938 ct2!328)) lt!2573822)))

(declare-fun b!7232473 () Bool)

(assert (=> b!7232473 (= e!4335800 (exprs!7938 ct2!328))))

(declare-fun b!7232474 () Bool)

(assert (=> b!7232474 (= e!4335800 (Cons!69978 (h!76426 (exprs!7938 ct1!232)) (++!16296 (t!384151 (exprs!7938 ct1!232)) (exprs!7938 ct2!328))))))

(declare-fun b!7232476 () Bool)

(assert (=> b!7232476 (= e!4335801 (or (not (= (exprs!7938 ct2!328) Nil!69978)) (= lt!2573822 (exprs!7938 ct1!232))))))

(assert (= (and d!2246296 c!1341951) b!7232473))

(assert (= (and d!2246296 (not c!1341951)) b!7232474))

(assert (= (and d!2246296 res!2934315) b!7232475))

(assert (= (and b!7232475 res!2934314) b!7232476))

(declare-fun m!7901784 () Bool)

(assert (=> b!7232475 m!7901784))

(declare-fun m!7901786 () Bool)

(assert (=> b!7232475 m!7901786))

(assert (=> b!7232475 m!7901652))

(declare-fun m!7901788 () Bool)

(assert (=> d!2246296 m!7901788))

(declare-fun m!7901790 () Bool)

(assert (=> d!2246296 m!7901790))

(assert (=> d!2246296 m!7901658))

(declare-fun m!7901792 () Bool)

(assert (=> b!7232474 m!7901792))

(assert (=> b!7232293 d!2246296))

(assert (=> b!7232293 d!2246240))

(declare-fun b!7232481 () Bool)

(declare-fun e!4335804 () Bool)

(declare-fun tp!2034035 () Bool)

(assert (=> b!7232481 (= e!4335804 (and tp_is_empty!46461 tp!2034035))))

(assert (=> b!7232292 (= tp!2034017 e!4335804)))

(assert (= (and b!7232292 (is-Cons!69980 (t!384153 s2!1849))) b!7232481))

(declare-fun b!7232482 () Bool)

(declare-fun e!4335805 () Bool)

(declare-fun tp!2034036 () Bool)

(assert (=> b!7232482 (= e!4335805 (and tp_is_empty!46461 tp!2034036))))

(assert (=> b!7232297 (= tp!2034020 e!4335805)))

(assert (= (and b!7232297 (is-Cons!69980 (t!384153 s1!1971))) b!7232482))

(declare-fun b!7232487 () Bool)

(declare-fun e!4335808 () Bool)

(declare-fun tp!2034041 () Bool)

(declare-fun tp!2034042 () Bool)

(assert (=> b!7232487 (= e!4335808 (and tp!2034041 tp!2034042))))

(assert (=> b!7232294 (= tp!2034019 e!4335808)))

(assert (= (and b!7232294 (is-Cons!69978 (exprs!7938 ct2!328))) b!7232487))

(declare-fun b!7232488 () Bool)

(declare-fun e!4335809 () Bool)

(declare-fun tp!2034043 () Bool)

(declare-fun tp!2034044 () Bool)

(assert (=> b!7232488 (= e!4335809 (and tp!2034043 tp!2034044))))

(assert (=> b!7232299 (= tp!2034018 e!4335809)))

(assert (= (and b!7232299 (is-Cons!69978 (exprs!7938 ct1!232))) b!7232488))

(declare-fun b_lambda!277187 () Bool)

(assert (= b_lambda!277185 (or b!7232290 b_lambda!277187)))

(declare-fun bs!1902810 () Bool)

(declare-fun d!2246298 () Bool)

(assert (= bs!1902810 (and d!2246298 b!7232290)))

(assert (=> bs!1902810 (= (dynLambda!28524 lambda!439503 lt!2573798) (matchZipper!3408 (set.insert lt!2573798 (as set.empty (Set Context!14876))) (t!384153 s1!1971)))))

(declare-fun m!7901794 () Bool)

(assert (=> bs!1902810 m!7901794))

(assert (=> bs!1902810 m!7901794))

(declare-fun m!7901796 () Bool)

(assert (=> bs!1902810 m!7901796))

(assert (=> d!2246254 d!2246298))

(declare-fun b_lambda!277189 () Bool)

(assert (= b_lambda!277183 (or b!7232293 b_lambda!277189)))

(declare-fun bs!1902811 () Bool)

(declare-fun d!2246300 () Bool)

(assert (= bs!1902811 (and d!2246300 b!7232293)))

(declare-fun validRegex!9511 (Regex!18498) Bool)

(assert (=> bs!1902811 (= (dynLambda!28523 lambda!439502 (h!76426 (exprs!7938 ct1!232))) (validRegex!9511 (h!76426 (exprs!7938 ct1!232))))))

(declare-fun m!7901798 () Bool)

(assert (=> bs!1902811 m!7901798))

(assert (=> b!7232344 d!2246300))

(push 1)

(assert (not b!7232474))

(assert (not b!7232421))

(assert (not d!2246230))

(assert (not d!2246280))

(assert (not b_lambda!277189))

(assert (not d!2246274))

(assert (not b!7232406))

(assert (not b!7232481))

(assert (not b!7232420))

(assert tp_is_empty!46461)

(assert (not b!7232404))

(assert (not d!2246232))

(assert (not b_lambda!277187))

(assert (not bm!658288))

(assert (not d!2246294))

(assert (not bm!658293))

(assert (not b!7232482))

(assert (not d!2246296))

(assert (not d!2246292))

(assert (not b!7232464))

(assert (not b!7232345))

(assert (not d!2246264))

(assert (not b!7232383))

(assert (not b!7232436))

(assert (not b!7232338))

(assert (not b!7232487))

(assert (not d!2246290))

(assert (not b!7232448))

(assert (not d!2246260))

(assert (not b!7232449))

(assert (not bs!1902810))

(assert (not b!7232437))

(assert (not bm!658292))

(assert (not b!7232405))

(assert (not bm!658287))

(assert (not b!7232460))

(assert (not b!7232407))

(assert (not d!2246276))

(assert (not b!7232463))

(assert (not d!2246234))

(assert (not b!7232442))

(assert (not d!2246254))

(assert (not d!2246284))

(assert (not d!2246250))

(assert (not b!7232339))

(assert (not bm!658286))

(assert (not b!7232488))

(assert (not d!2246278))

(assert (not d!2246256))

(assert (not bs!1902811))

(assert (not b!7232475))

(assert (not b!7232443))

(assert (not d!2246240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

