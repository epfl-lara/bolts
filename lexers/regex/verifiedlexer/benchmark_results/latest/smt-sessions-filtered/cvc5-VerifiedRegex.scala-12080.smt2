; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677492 () Bool)

(assert start!677492)

(declare-fun b!7022282 () Bool)

(assert (=> b!7022282 true))

(declare-fun bs!1867872 () Bool)

(declare-fun b!7022279 () Bool)

(assert (= bs!1867872 (and b!7022279 b!7022282)))

(declare-fun lambda!411813 () Int)

(declare-fun lambda!411812 () Int)

(assert (=> bs!1867872 (not (= lambda!411813 lambda!411812))))

(declare-fun b!7022276 () Bool)

(declare-fun e!4221296 () Bool)

(declare-fun tp_is_empty!44037 () Bool)

(declare-fun tp!1934537 () Bool)

(assert (=> b!7022276 (= e!4221296 (and tp_is_empty!44037 tp!1934537))))

(declare-fun b!7022277 () Bool)

(declare-fun e!4221299 () Bool)

(declare-datatypes ((C!35082 0))(
  ( (C!35083 (val!27243 Int)) )
))
(declare-datatypes ((Regex!17406 0))(
  ( (ElementMatch!17406 (c!1305105 C!35082)) (Concat!26251 (regOne!35324 Regex!17406) (regTwo!35324 Regex!17406)) (EmptyExpr!17406) (Star!17406 (reg!17735 Regex!17406)) (EmptyLang!17406) (Union!17406 (regOne!35325 Regex!17406) (regTwo!35325 Regex!17406)) )
))
(declare-datatypes ((List!67759 0))(
  ( (Nil!67635) (Cons!67635 (h!74083 Regex!17406) (t!381514 List!67759)) )
))
(declare-datatypes ((Context!12804 0))(
  ( (Context!12805 (exprs!6902 List!67759)) )
))
(declare-fun lt!2512437 () Context!12804)

(declare-fun lt!2512432 () List!67759)

(declare-fun content!13467 (List!67759) (Set Regex!17406))

(assert (=> b!7022277 (= e!4221299 (set.subset (content!13467 (exprs!6902 lt!2512437)) (content!13467 lt!2512432)))))

(declare-fun setIsEmpty!48791 () Bool)

(declare-fun setRes!48791 () Bool)

(assert (=> setIsEmpty!48791 setRes!48791))

(declare-fun b!7022278 () Bool)

(declare-fun res!2866493 () Bool)

(declare-fun e!4221294 () Bool)

(assert (=> b!7022278 (=> (not res!2866493) (not e!4221294))))

(declare-datatypes ((List!67760 0))(
  ( (Nil!67636) (Cons!67636 (h!74084 C!35082) (t!381515 List!67760)) )
))
(declare-fun s!7408 () List!67760)

(assert (=> b!7022278 (= res!2866493 (not (is-Cons!67636 s!7408)))))

(declare-fun e!4221298 () Bool)

(assert (=> b!7022279 (= e!4221298 (not e!4221299))))

(declare-fun res!2866491 () Bool)

(assert (=> b!7022279 (=> res!2866491 e!4221299)))

(declare-fun forall!16312 (List!67759 Int) Bool)

(assert (=> b!7022279 (= res!2866491 (not (forall!16312 lt!2512432 lambda!411813)))))

(declare-fun ct2!306 () Context!12804)

(declare-fun subseq!682 (List!67759 List!67759) Bool)

(assert (=> b!7022279 (subseq!682 (exprs!6902 ct2!306) lt!2512432)))

(declare-datatypes ((Unit!161478 0))(
  ( (Unit!161479) )
))
(declare-fun lt!2512434 () Unit!161478)

(declare-fun lemmaConcatThenSecondSubseqOfTot!3 (List!67759 List!67759) Unit!161478)

(assert (=> b!7022279 (= lt!2512434 (lemmaConcatThenSecondSubseqOfTot!3 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)))))

(assert (=> b!7022279 (subseq!682 (exprs!6902 lt!2512437) lt!2512432)))

(declare-fun lt!2512436 () Unit!161478)

(declare-fun lemmaConcatThenFirstSubseqOfTot!3 (List!67759 List!67759) Unit!161478)

(assert (=> b!7022279 (= lt!2512436 (lemmaConcatThenFirstSubseqOfTot!3 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)))))

(declare-fun res!2866490 () Bool)

(assert (=> start!677492 (=> (not res!2866490) (not e!4221294))))

(declare-fun lt!2512435 () (Set Context!12804))

(declare-fun matchZipper!2946 ((Set Context!12804) List!67760) Bool)

(assert (=> start!677492 (= res!2866490 (matchZipper!2946 lt!2512435 s!7408))))

(declare-fun z1!570 () (Set Context!12804))

(declare-fun appendTo!527 ((Set Context!12804) Context!12804) (Set Context!12804))

(assert (=> start!677492 (= lt!2512435 (appendTo!527 z1!570 ct2!306))))

(assert (=> start!677492 e!4221294))

(declare-fun condSetEmpty!48791 () Bool)

(assert (=> start!677492 (= condSetEmpty!48791 (= z1!570 (as set.empty (Set Context!12804))))))

(assert (=> start!677492 setRes!48791))

(declare-fun e!4221295 () Bool)

(declare-fun inv!86375 (Context!12804) Bool)

(assert (=> start!677492 (and (inv!86375 ct2!306) e!4221295)))

(assert (=> start!677492 e!4221296))

(declare-fun b!7022280 () Bool)

(declare-fun e!4221297 () Bool)

(declare-fun tp!1934538 () Bool)

(assert (=> b!7022280 (= e!4221297 tp!1934538)))

(declare-fun b!7022281 () Bool)

(declare-fun e!4221293 () Bool)

(assert (=> b!7022281 (= e!4221294 e!4221293)))

(declare-fun res!2866495 () Bool)

(assert (=> b!7022281 (=> (not res!2866495) (not e!4221293))))

(declare-fun lt!2512433 () Context!12804)

(declare-fun nullableContext!66 (Context!12804) Bool)

(assert (=> b!7022281 (= res!2866495 (nullableContext!66 lt!2512433))))

(declare-fun lambda!411810 () Int)

(declare-fun getWitness!1383 ((Set Context!12804) Int) Context!12804)

(assert (=> b!7022281 (= lt!2512433 (getWitness!1383 lt!2512435 lambda!411810))))

(assert (=> b!7022282 (= e!4221293 e!4221298)))

(declare-fun res!2866494 () Bool)

(assert (=> b!7022282 (=> (not res!2866494) (not e!4221298))))

(assert (=> b!7022282 (= res!2866494 (= (Context!12805 lt!2512432) lt!2512433))))

(declare-fun ++!15441 (List!67759 List!67759) List!67759)

(assert (=> b!7022282 (= lt!2512432 (++!15441 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)))))

(declare-fun lt!2512438 () Unit!161478)

(declare-fun lemmaConcatPreservesForall!733 (List!67759 List!67759 Int) Unit!161478)

(assert (=> b!7022282 (= lt!2512438 (lemmaConcatPreservesForall!733 (exprs!6902 lt!2512437) (exprs!6902 ct2!306) lambda!411812))))

(declare-fun lambda!411811 () Int)

(declare-fun mapPost2!253 ((Set Context!12804) Int Context!12804) Context!12804)

(assert (=> b!7022282 (= lt!2512437 (mapPost2!253 z1!570 lambda!411811 lt!2512433))))

(declare-fun b!7022283 () Bool)

(declare-fun tp!1934539 () Bool)

(assert (=> b!7022283 (= e!4221295 tp!1934539)))

(declare-fun b!7022284 () Bool)

(declare-fun res!2866492 () Bool)

(assert (=> b!7022284 (=> (not res!2866492) (not e!4221294))))

(declare-fun nullableZipper!2535 ((Set Context!12804)) Bool)

(assert (=> b!7022284 (= res!2866492 (nullableZipper!2535 lt!2512435))))

(declare-fun b!7022285 () Bool)

(declare-fun res!2866496 () Bool)

(assert (=> b!7022285 (=> (not res!2866496) (not e!4221294))))

(declare-fun exists!3302 ((Set Context!12804) Int) Bool)

(assert (=> b!7022285 (= res!2866496 (exists!3302 lt!2512435 lambda!411810))))

(declare-fun tp!1934536 () Bool)

(declare-fun setNonEmpty!48791 () Bool)

(declare-fun setElem!48791 () Context!12804)

(assert (=> setNonEmpty!48791 (= setRes!48791 (and tp!1934536 (inv!86375 setElem!48791) e!4221297))))

(declare-fun setRest!48791 () (Set Context!12804))

(assert (=> setNonEmpty!48791 (= z1!570 (set.union (set.insert setElem!48791 (as set.empty (Set Context!12804))) setRest!48791))))

(assert (= (and start!677492 res!2866490) b!7022278))

(assert (= (and b!7022278 res!2866493) b!7022284))

(assert (= (and b!7022284 res!2866492) b!7022285))

(assert (= (and b!7022285 res!2866496) b!7022281))

(assert (= (and b!7022281 res!2866495) b!7022282))

(assert (= (and b!7022282 res!2866494) b!7022279))

(assert (= (and b!7022279 (not res!2866491)) b!7022277))

(assert (= (and start!677492 condSetEmpty!48791) setIsEmpty!48791))

(assert (= (and start!677492 (not condSetEmpty!48791)) setNonEmpty!48791))

(assert (= setNonEmpty!48791 b!7022280))

(assert (= start!677492 b!7022283))

(assert (= (and start!677492 (is-Cons!67636 s!7408)) b!7022276))

(declare-fun m!7724314 () Bool)

(assert (=> b!7022285 m!7724314))

(declare-fun m!7724316 () Bool)

(assert (=> b!7022284 m!7724316))

(declare-fun m!7724318 () Bool)

(assert (=> b!7022277 m!7724318))

(declare-fun m!7724320 () Bool)

(assert (=> b!7022277 m!7724320))

(declare-fun m!7724322 () Bool)

(assert (=> b!7022282 m!7724322))

(declare-fun m!7724324 () Bool)

(assert (=> b!7022282 m!7724324))

(declare-fun m!7724326 () Bool)

(assert (=> b!7022282 m!7724326))

(declare-fun m!7724328 () Bool)

(assert (=> start!677492 m!7724328))

(declare-fun m!7724330 () Bool)

(assert (=> start!677492 m!7724330))

(declare-fun m!7724332 () Bool)

(assert (=> start!677492 m!7724332))

(declare-fun m!7724334 () Bool)

(assert (=> setNonEmpty!48791 m!7724334))

(declare-fun m!7724336 () Bool)

(assert (=> b!7022281 m!7724336))

(declare-fun m!7724338 () Bool)

(assert (=> b!7022281 m!7724338))

(declare-fun m!7724340 () Bool)

(assert (=> b!7022279 m!7724340))

(declare-fun m!7724342 () Bool)

(assert (=> b!7022279 m!7724342))

(declare-fun m!7724344 () Bool)

(assert (=> b!7022279 m!7724344))

(declare-fun m!7724346 () Bool)

(assert (=> b!7022279 m!7724346))

(declare-fun m!7724348 () Bool)

(assert (=> b!7022279 m!7724348))

(push 1)

(assert (not b!7022279))

(assert (not b!7022277))

(assert (not b!7022284))

(assert (not b!7022285))

(assert (not start!677492))

(assert (not setNonEmpty!48791))

(assert (not b!7022276))

(assert (not b!7022283))

(assert tp_is_empty!44037)

(assert (not b!7022280))

(assert (not b!7022282))

(assert (not b!7022281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1867874 () Bool)

(declare-fun d!2189013 () Bool)

(assert (= bs!1867874 (and d!2189013 b!7022285)))

(declare-fun lambda!411832 () Int)

(assert (=> bs!1867874 (= lambda!411832 lambda!411810)))

(assert (=> d!2189013 (= (nullableZipper!2535 lt!2512435) (exists!3302 lt!2512435 lambda!411832))))

(declare-fun bs!1867875 () Bool)

(assert (= bs!1867875 d!2189013))

(declare-fun m!7724386 () Bool)

(assert (=> bs!1867875 m!7724386))

(assert (=> b!7022284 d!2189013))

(declare-fun b!7022331 () Bool)

(declare-fun e!4221326 () Bool)

(declare-fun lt!2512464 () List!67759)

(assert (=> b!7022331 (= e!4221326 (or (not (= (exprs!6902 ct2!306) Nil!67635)) (= lt!2512464 (exprs!6902 lt!2512437))))))

(declare-fun d!2189015 () Bool)

(assert (=> d!2189015 e!4221326))

(declare-fun res!2866525 () Bool)

(assert (=> d!2189015 (=> (not res!2866525) (not e!4221326))))

(assert (=> d!2189015 (= res!2866525 (= (content!13467 lt!2512464) (set.union (content!13467 (exprs!6902 lt!2512437)) (content!13467 (exprs!6902 ct2!306)))))))

(declare-fun e!4221325 () List!67759)

(assert (=> d!2189015 (= lt!2512464 e!4221325)))

(declare-fun c!1305117 () Bool)

(assert (=> d!2189015 (= c!1305117 (is-Nil!67635 (exprs!6902 lt!2512437)))))

(assert (=> d!2189015 (= (++!15441 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)) lt!2512464)))

(declare-fun b!7022330 () Bool)

(declare-fun res!2866524 () Bool)

(assert (=> b!7022330 (=> (not res!2866524) (not e!4221326))))

(declare-fun size!41027 (List!67759) Int)

(assert (=> b!7022330 (= res!2866524 (= (size!41027 lt!2512464) (+ (size!41027 (exprs!6902 lt!2512437)) (size!41027 (exprs!6902 ct2!306)))))))

(declare-fun b!7022328 () Bool)

(assert (=> b!7022328 (= e!4221325 (exprs!6902 ct2!306))))

(declare-fun b!7022329 () Bool)

(assert (=> b!7022329 (= e!4221325 (Cons!67635 (h!74083 (exprs!6902 lt!2512437)) (++!15441 (t!381514 (exprs!6902 lt!2512437)) (exprs!6902 ct2!306))))))

(assert (= (and d!2189015 c!1305117) b!7022328))

(assert (= (and d!2189015 (not c!1305117)) b!7022329))

(assert (= (and d!2189015 res!2866525) b!7022330))

(assert (= (and b!7022330 res!2866524) b!7022331))

(declare-fun m!7724388 () Bool)

(assert (=> d!2189015 m!7724388))

(assert (=> d!2189015 m!7724318))

(declare-fun m!7724390 () Bool)

(assert (=> d!2189015 m!7724390))

(declare-fun m!7724392 () Bool)

(assert (=> b!7022330 m!7724392))

(declare-fun m!7724394 () Bool)

(assert (=> b!7022330 m!7724394))

(declare-fun m!7724396 () Bool)

(assert (=> b!7022330 m!7724396))

(declare-fun m!7724398 () Bool)

(assert (=> b!7022329 m!7724398))

(assert (=> b!7022282 d!2189015))

(declare-fun d!2189017 () Bool)

(assert (=> d!2189017 (forall!16312 (++!15441 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)) lambda!411812)))

(declare-fun lt!2512467 () Unit!161478)

(declare-fun choose!52996 (List!67759 List!67759 Int) Unit!161478)

(assert (=> d!2189017 (= lt!2512467 (choose!52996 (exprs!6902 lt!2512437) (exprs!6902 ct2!306) lambda!411812))))

(assert (=> d!2189017 (forall!16312 (exprs!6902 lt!2512437) lambda!411812)))

(assert (=> d!2189017 (= (lemmaConcatPreservesForall!733 (exprs!6902 lt!2512437) (exprs!6902 ct2!306) lambda!411812) lt!2512467)))

(declare-fun bs!1867876 () Bool)

(assert (= bs!1867876 d!2189017))

(assert (=> bs!1867876 m!7724322))

(assert (=> bs!1867876 m!7724322))

(declare-fun m!7724400 () Bool)

(assert (=> bs!1867876 m!7724400))

(declare-fun m!7724402 () Bool)

(assert (=> bs!1867876 m!7724402))

(declare-fun m!7724404 () Bool)

(assert (=> bs!1867876 m!7724404))

(assert (=> b!7022282 d!2189017))

(declare-fun d!2189019 () Bool)

(declare-fun e!4221329 () Bool)

(assert (=> d!2189019 e!4221329))

(declare-fun res!2866528 () Bool)

(assert (=> d!2189019 (=> (not res!2866528) (not e!4221329))))

(declare-fun lt!2512470 () Context!12804)

(declare-fun dynLambda!27254 (Int Context!12804) Context!12804)

(assert (=> d!2189019 (= res!2866528 (= lt!2512433 (dynLambda!27254 lambda!411811 lt!2512470)))))

(declare-fun choose!52997 ((Set Context!12804) Int Context!12804) Context!12804)

(assert (=> d!2189019 (= lt!2512470 (choose!52997 z1!570 lambda!411811 lt!2512433))))

(declare-fun map!15696 ((Set Context!12804) Int) (Set Context!12804))

(assert (=> d!2189019 (set.member lt!2512433 (map!15696 z1!570 lambda!411811))))

(assert (=> d!2189019 (= (mapPost2!253 z1!570 lambda!411811 lt!2512433) lt!2512470)))

(declare-fun b!7022335 () Bool)

(assert (=> b!7022335 (= e!4221329 (set.member lt!2512470 z1!570))))

(assert (= (and d!2189019 res!2866528) b!7022335))

(declare-fun b_lambda!265267 () Bool)

(assert (=> (not b_lambda!265267) (not d!2189019)))

(declare-fun m!7724406 () Bool)

(assert (=> d!2189019 m!7724406))

(declare-fun m!7724408 () Bool)

(assert (=> d!2189019 m!7724408))

(declare-fun m!7724410 () Bool)

(assert (=> d!2189019 m!7724410))

(declare-fun m!7724412 () Bool)

(assert (=> d!2189019 m!7724412))

(declare-fun m!7724414 () Bool)

(assert (=> b!7022335 m!7724414))

(assert (=> b!7022282 d!2189019))

(declare-fun bs!1867877 () Bool)

(declare-fun d!2189021 () Bool)

(assert (= bs!1867877 (and d!2189021 b!7022282)))

(declare-fun lambda!411835 () Int)

(assert (=> bs!1867877 (= lambda!411835 lambda!411812)))

(declare-fun bs!1867878 () Bool)

(assert (= bs!1867878 (and d!2189021 b!7022279)))

(assert (=> bs!1867878 (not (= lambda!411835 lambda!411813))))

(assert (=> d!2189021 (= (inv!86375 setElem!48791) (forall!16312 (exprs!6902 setElem!48791) lambda!411835))))

(declare-fun bs!1867879 () Bool)

(assert (= bs!1867879 d!2189021))

(declare-fun m!7724416 () Bool)

(assert (=> bs!1867879 m!7724416))

(assert (=> setNonEmpty!48791 d!2189021))

(declare-fun d!2189023 () Bool)

(declare-fun c!1305120 () Bool)

(assert (=> d!2189023 (= c!1305120 (is-Nil!67635 (exprs!6902 lt!2512437)))))

(declare-fun e!4221332 () (Set Regex!17406))

(assert (=> d!2189023 (= (content!13467 (exprs!6902 lt!2512437)) e!4221332)))

(declare-fun b!7022340 () Bool)

(assert (=> b!7022340 (= e!4221332 (as set.empty (Set Regex!17406)))))

(declare-fun b!7022341 () Bool)

(assert (=> b!7022341 (= e!4221332 (set.union (set.insert (h!74083 (exprs!6902 lt!2512437)) (as set.empty (Set Regex!17406))) (content!13467 (t!381514 (exprs!6902 lt!2512437)))))))

(assert (= (and d!2189023 c!1305120) b!7022340))

(assert (= (and d!2189023 (not c!1305120)) b!7022341))

(declare-fun m!7724418 () Bool)

(assert (=> b!7022341 m!7724418))

(declare-fun m!7724420 () Bool)

(assert (=> b!7022341 m!7724420))

(assert (=> b!7022277 d!2189023))

(declare-fun d!2189025 () Bool)

(declare-fun c!1305121 () Bool)

(assert (=> d!2189025 (= c!1305121 (is-Nil!67635 lt!2512432))))

(declare-fun e!4221333 () (Set Regex!17406))

(assert (=> d!2189025 (= (content!13467 lt!2512432) e!4221333)))

(declare-fun b!7022342 () Bool)

(assert (=> b!7022342 (= e!4221333 (as set.empty (Set Regex!17406)))))

(declare-fun b!7022343 () Bool)

(assert (=> b!7022343 (= e!4221333 (set.union (set.insert (h!74083 lt!2512432) (as set.empty (Set Regex!17406))) (content!13467 (t!381514 lt!2512432))))))

(assert (= (and d!2189025 c!1305121) b!7022342))

(assert (= (and d!2189025 (not c!1305121)) b!7022343))

(declare-fun m!7724422 () Bool)

(assert (=> b!7022343 m!7724422))

(declare-fun m!7724424 () Bool)

(assert (=> b!7022343 m!7724424))

(assert (=> b!7022277 d!2189025))

(declare-fun bs!1867880 () Bool)

(declare-fun d!2189027 () Bool)

(assert (= bs!1867880 (and d!2189027 b!7022282)))

(declare-fun lambda!411838 () Int)

(assert (=> bs!1867880 (not (= lambda!411838 lambda!411812))))

(declare-fun bs!1867881 () Bool)

(assert (= bs!1867881 (and d!2189027 b!7022279)))

(assert (=> bs!1867881 (= lambda!411838 lambda!411813)))

(declare-fun bs!1867882 () Bool)

(assert (= bs!1867882 (and d!2189027 d!2189021)))

(assert (=> bs!1867882 (not (= lambda!411838 lambda!411835))))

(assert (=> d!2189027 (= (nullableContext!66 lt!2512433) (forall!16312 (exprs!6902 lt!2512433) lambda!411838))))

(declare-fun bs!1867883 () Bool)

(assert (= bs!1867883 d!2189027))

(declare-fun m!7724426 () Bool)

(assert (=> bs!1867883 m!7724426))

(assert (=> b!7022281 d!2189027))

(declare-fun d!2189029 () Bool)

(declare-fun e!4221336 () Bool)

(assert (=> d!2189029 e!4221336))

(declare-fun res!2866531 () Bool)

(assert (=> d!2189029 (=> (not res!2866531) (not e!4221336))))

(declare-fun lt!2512473 () Context!12804)

(declare-fun dynLambda!27255 (Int Context!12804) Bool)

(assert (=> d!2189029 (= res!2866531 (dynLambda!27255 lambda!411810 lt!2512473))))

(declare-datatypes ((List!67763 0))(
  ( (Nil!67639) (Cons!67639 (h!74087 Context!12804) (t!381518 List!67763)) )
))
(declare-fun getWitness!1385 (List!67763 Int) Context!12804)

(declare-fun toList!10762 ((Set Context!12804)) List!67763)

(assert (=> d!2189029 (= lt!2512473 (getWitness!1385 (toList!10762 lt!2512435) lambda!411810))))

(assert (=> d!2189029 (exists!3302 lt!2512435 lambda!411810)))

(assert (=> d!2189029 (= (getWitness!1383 lt!2512435 lambda!411810) lt!2512473)))

(declare-fun b!7022348 () Bool)

(assert (=> b!7022348 (= e!4221336 (set.member lt!2512473 lt!2512435))))

(assert (= (and d!2189029 res!2866531) b!7022348))

(declare-fun b_lambda!265269 () Bool)

(assert (=> (not b_lambda!265269) (not d!2189029)))

(declare-fun m!7724428 () Bool)

(assert (=> d!2189029 m!7724428))

(declare-fun m!7724430 () Bool)

(assert (=> d!2189029 m!7724430))

(assert (=> d!2189029 m!7724430))

(declare-fun m!7724432 () Bool)

(assert (=> d!2189029 m!7724432))

(assert (=> d!2189029 m!7724314))

(declare-fun m!7724434 () Bool)

(assert (=> b!7022348 m!7724434))

(assert (=> b!7022281 d!2189029))

(declare-fun d!2189033 () Bool)

(assert (=> d!2189033 (subseq!682 (exprs!6902 lt!2512437) (++!15441 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)))))

(declare-fun lt!2512476 () Unit!161478)

(declare-fun choose!52998 (List!67759 List!67759) Unit!161478)

(assert (=> d!2189033 (= lt!2512476 (choose!52998 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)))))

(assert (=> d!2189033 (= (lemmaConcatThenFirstSubseqOfTot!3 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)) lt!2512476)))

(declare-fun bs!1867884 () Bool)

(assert (= bs!1867884 d!2189033))

(assert (=> bs!1867884 m!7724322))

(assert (=> bs!1867884 m!7724322))

(declare-fun m!7724436 () Bool)

(assert (=> bs!1867884 m!7724436))

(declare-fun m!7724438 () Bool)

(assert (=> bs!1867884 m!7724438))

(assert (=> b!7022279 d!2189033))

(declare-fun d!2189035 () Bool)

(declare-fun res!2866536 () Bool)

(declare-fun e!4221345 () Bool)

(assert (=> d!2189035 (=> res!2866536 e!4221345)))

(assert (=> d!2189035 (= res!2866536 (is-Nil!67635 lt!2512432))))

(assert (=> d!2189035 (= (forall!16312 lt!2512432 lambda!411813) e!4221345)))

(declare-fun b!7022359 () Bool)

(declare-fun e!4221346 () Bool)

(assert (=> b!7022359 (= e!4221345 e!4221346)))

(declare-fun res!2866537 () Bool)

(assert (=> b!7022359 (=> (not res!2866537) (not e!4221346))))

(declare-fun dynLambda!27256 (Int Regex!17406) Bool)

(assert (=> b!7022359 (= res!2866537 (dynLambda!27256 lambda!411813 (h!74083 lt!2512432)))))

(declare-fun b!7022360 () Bool)

(assert (=> b!7022360 (= e!4221346 (forall!16312 (t!381514 lt!2512432) lambda!411813))))

(assert (= (and d!2189035 (not res!2866536)) b!7022359))

(assert (= (and b!7022359 res!2866537) b!7022360))

(declare-fun b_lambda!265271 () Bool)

(assert (=> (not b_lambda!265271) (not b!7022359)))

(declare-fun m!7724448 () Bool)

(assert (=> b!7022359 m!7724448))

(declare-fun m!7724450 () Bool)

(assert (=> b!7022360 m!7724450))

(assert (=> b!7022279 d!2189035))

(declare-fun b!7022371 () Bool)

(declare-fun e!4221357 () Bool)

(assert (=> b!7022371 (= e!4221357 (subseq!682 (t!381514 (exprs!6902 ct2!306)) (t!381514 lt!2512432)))))

(declare-fun d!2189041 () Bool)

(declare-fun res!2866546 () Bool)

(declare-fun e!4221356 () Bool)

(assert (=> d!2189041 (=> res!2866546 e!4221356)))

(assert (=> d!2189041 (= res!2866546 (is-Nil!67635 (exprs!6902 ct2!306)))))

(assert (=> d!2189041 (= (subseq!682 (exprs!6902 ct2!306) lt!2512432) e!4221356)))

(declare-fun b!7022372 () Bool)

(declare-fun e!4221358 () Bool)

(assert (=> b!7022372 (= e!4221358 (subseq!682 (exprs!6902 ct2!306) (t!381514 lt!2512432)))))

(declare-fun b!7022370 () Bool)

(declare-fun e!4221355 () Bool)

(assert (=> b!7022370 (= e!4221355 e!4221358)))

(declare-fun res!2866547 () Bool)

(assert (=> b!7022370 (=> res!2866547 e!4221358)))

(assert (=> b!7022370 (= res!2866547 e!4221357)))

(declare-fun res!2866549 () Bool)

(assert (=> b!7022370 (=> (not res!2866549) (not e!4221357))))

(assert (=> b!7022370 (= res!2866549 (= (h!74083 (exprs!6902 ct2!306)) (h!74083 lt!2512432)))))

(declare-fun b!7022369 () Bool)

(assert (=> b!7022369 (= e!4221356 e!4221355)))

(declare-fun res!2866548 () Bool)

(assert (=> b!7022369 (=> (not res!2866548) (not e!4221355))))

(assert (=> b!7022369 (= res!2866548 (is-Cons!67635 lt!2512432))))

(assert (= (and d!2189041 (not res!2866546)) b!7022369))

(assert (= (and b!7022369 res!2866548) b!7022370))

(assert (= (and b!7022370 res!2866549) b!7022371))

(assert (= (and b!7022370 (not res!2866547)) b!7022372))

(declare-fun m!7724452 () Bool)

(assert (=> b!7022371 m!7724452))

(declare-fun m!7724454 () Bool)

(assert (=> b!7022372 m!7724454))

(assert (=> b!7022279 d!2189041))

(declare-fun d!2189043 () Bool)

(assert (=> d!2189043 (subseq!682 (exprs!6902 ct2!306) (++!15441 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)))))

(declare-fun lt!2512479 () Unit!161478)

(declare-fun choose!52999 (List!67759 List!67759) Unit!161478)

(assert (=> d!2189043 (= lt!2512479 (choose!52999 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)))))

(assert (=> d!2189043 (= (lemmaConcatThenSecondSubseqOfTot!3 (exprs!6902 lt!2512437) (exprs!6902 ct2!306)) lt!2512479)))

(declare-fun bs!1867885 () Bool)

(assert (= bs!1867885 d!2189043))

(assert (=> bs!1867885 m!7724322))

(assert (=> bs!1867885 m!7724322))

(declare-fun m!7724456 () Bool)

(assert (=> bs!1867885 m!7724456))

(declare-fun m!7724458 () Bool)

(assert (=> bs!1867885 m!7724458))

(assert (=> b!7022279 d!2189043))

(declare-fun b!7022375 () Bool)

(declare-fun e!4221361 () Bool)

(assert (=> b!7022375 (= e!4221361 (subseq!682 (t!381514 (exprs!6902 lt!2512437)) (t!381514 lt!2512432)))))

(declare-fun d!2189045 () Bool)

(declare-fun res!2866550 () Bool)

(declare-fun e!4221360 () Bool)

(assert (=> d!2189045 (=> res!2866550 e!4221360)))

(assert (=> d!2189045 (= res!2866550 (is-Nil!67635 (exprs!6902 lt!2512437)))))

(assert (=> d!2189045 (= (subseq!682 (exprs!6902 lt!2512437) lt!2512432) e!4221360)))

(declare-fun b!7022376 () Bool)

(declare-fun e!4221362 () Bool)

(assert (=> b!7022376 (= e!4221362 (subseq!682 (exprs!6902 lt!2512437) (t!381514 lt!2512432)))))

(declare-fun b!7022374 () Bool)

(declare-fun e!4221359 () Bool)

(assert (=> b!7022374 (= e!4221359 e!4221362)))

(declare-fun res!2866551 () Bool)

(assert (=> b!7022374 (=> res!2866551 e!4221362)))

(assert (=> b!7022374 (= res!2866551 e!4221361)))

(declare-fun res!2866553 () Bool)

(assert (=> b!7022374 (=> (not res!2866553) (not e!4221361))))

(assert (=> b!7022374 (= res!2866553 (= (h!74083 (exprs!6902 lt!2512437)) (h!74083 lt!2512432)))))

(declare-fun b!7022373 () Bool)

(assert (=> b!7022373 (= e!4221360 e!4221359)))

(declare-fun res!2866552 () Bool)

(assert (=> b!7022373 (=> (not res!2866552) (not e!4221359))))

(assert (=> b!7022373 (= res!2866552 (is-Cons!67635 lt!2512432))))

(assert (= (and d!2189045 (not res!2866550)) b!7022373))

(assert (= (and b!7022373 res!2866552) b!7022374))

(assert (= (and b!7022374 res!2866553) b!7022375))

(assert (= (and b!7022374 (not res!2866551)) b!7022376))

(declare-fun m!7724460 () Bool)

(assert (=> b!7022375 m!7724460))

(declare-fun m!7724462 () Bool)

(assert (=> b!7022376 m!7724462))

(assert (=> b!7022279 d!2189045))

(declare-fun d!2189047 () Bool)

(declare-fun c!1305132 () Bool)

(declare-fun isEmpty!39466 (List!67760) Bool)

(assert (=> d!2189047 (= c!1305132 (isEmpty!39466 s!7408))))

(declare-fun e!4221368 () Bool)

(assert (=> d!2189047 (= (matchZipper!2946 lt!2512435 s!7408) e!4221368)))

(declare-fun b!7022387 () Bool)

(assert (=> b!7022387 (= e!4221368 (nullableZipper!2535 lt!2512435))))

(declare-fun b!7022388 () Bool)

(declare-fun derivationStepZipper!2878 ((Set Context!12804) C!35082) (Set Context!12804))

(declare-fun head!14221 (List!67760) C!35082)

(declare-fun tail!13488 (List!67760) List!67760)

(assert (=> b!7022388 (= e!4221368 (matchZipper!2946 (derivationStepZipper!2878 lt!2512435 (head!14221 s!7408)) (tail!13488 s!7408)))))

(assert (= (and d!2189047 c!1305132) b!7022387))

(assert (= (and d!2189047 (not c!1305132)) b!7022388))

(declare-fun m!7724474 () Bool)

(assert (=> d!2189047 m!7724474))

(assert (=> b!7022387 m!7724316))

(declare-fun m!7724476 () Bool)

(assert (=> b!7022388 m!7724476))

(assert (=> b!7022388 m!7724476))

(declare-fun m!7724478 () Bool)

(assert (=> b!7022388 m!7724478))

(declare-fun m!7724480 () Bool)

(assert (=> b!7022388 m!7724480))

(assert (=> b!7022388 m!7724478))

(assert (=> b!7022388 m!7724480))

(declare-fun m!7724482 () Bool)

(assert (=> b!7022388 m!7724482))

(assert (=> start!677492 d!2189047))

(declare-fun bs!1867886 () Bool)

(declare-fun d!2189051 () Bool)

(assert (= bs!1867886 (and d!2189051 b!7022282)))

(declare-fun lambda!411843 () Int)

(assert (=> bs!1867886 (= lambda!411843 lambda!411811)))

(assert (=> d!2189051 true))

(assert (=> d!2189051 (= (appendTo!527 z1!570 ct2!306) (map!15696 z1!570 lambda!411843))))

(declare-fun bs!1867887 () Bool)

(assert (= bs!1867887 d!2189051))

(declare-fun m!7724484 () Bool)

(assert (=> bs!1867887 m!7724484))

(assert (=> start!677492 d!2189051))

(declare-fun bs!1867888 () Bool)

(declare-fun d!2189053 () Bool)

(assert (= bs!1867888 (and d!2189053 b!7022282)))

(declare-fun lambda!411844 () Int)

(assert (=> bs!1867888 (= lambda!411844 lambda!411812)))

(declare-fun bs!1867889 () Bool)

(assert (= bs!1867889 (and d!2189053 b!7022279)))

(assert (=> bs!1867889 (not (= lambda!411844 lambda!411813))))

(declare-fun bs!1867890 () Bool)

(assert (= bs!1867890 (and d!2189053 d!2189021)))

(assert (=> bs!1867890 (= lambda!411844 lambda!411835)))

(declare-fun bs!1867891 () Bool)

(assert (= bs!1867891 (and d!2189053 d!2189027)))

(assert (=> bs!1867891 (not (= lambda!411844 lambda!411838))))

(assert (=> d!2189053 (= (inv!86375 ct2!306) (forall!16312 (exprs!6902 ct2!306) lambda!411844))))

(declare-fun bs!1867892 () Bool)

(assert (= bs!1867892 d!2189053))

(declare-fun m!7724486 () Bool)

(assert (=> bs!1867892 m!7724486))

(assert (=> start!677492 d!2189053))

(declare-fun d!2189055 () Bool)

(declare-fun lt!2512486 () Bool)

(declare-fun exists!3304 (List!67763 Int) Bool)

(assert (=> d!2189055 (= lt!2512486 (exists!3304 (toList!10762 lt!2512435) lambda!411810))))

(declare-fun choose!53000 ((Set Context!12804) Int) Bool)

(assert (=> d!2189055 (= lt!2512486 (choose!53000 lt!2512435 lambda!411810))))

(assert (=> d!2189055 (= (exists!3302 lt!2512435 lambda!411810) lt!2512486)))

(declare-fun bs!1867893 () Bool)

(assert (= bs!1867893 d!2189055))

(assert (=> bs!1867893 m!7724430))

(assert (=> bs!1867893 m!7724430))

(declare-fun m!7724488 () Bool)

(assert (=> bs!1867893 m!7724488))

(declare-fun m!7724490 () Bool)

(assert (=> bs!1867893 m!7724490))

(assert (=> b!7022285 d!2189055))

(declare-fun b!7022393 () Bool)

(declare-fun e!4221371 () Bool)

(declare-fun tp!1934556 () Bool)

(declare-fun tp!1934557 () Bool)

(assert (=> b!7022393 (= e!4221371 (and tp!1934556 tp!1934557))))

(assert (=> b!7022283 (= tp!1934539 e!4221371)))

(assert (= (and b!7022283 (is-Cons!67635 (exprs!6902 ct2!306))) b!7022393))

(declare-fun condSetEmpty!48797 () Bool)

(assert (=> setNonEmpty!48791 (= condSetEmpty!48797 (= setRest!48791 (as set.empty (Set Context!12804))))))

(declare-fun setRes!48797 () Bool)

(assert (=> setNonEmpty!48791 (= tp!1934536 setRes!48797)))

(declare-fun setIsEmpty!48797 () Bool)

(assert (=> setIsEmpty!48797 setRes!48797))

(declare-fun setElem!48797 () Context!12804)

(declare-fun e!4221374 () Bool)

(declare-fun setNonEmpty!48797 () Bool)

(declare-fun tp!1934562 () Bool)

(assert (=> setNonEmpty!48797 (= setRes!48797 (and tp!1934562 (inv!86375 setElem!48797) e!4221374))))

(declare-fun setRest!48797 () (Set Context!12804))

(assert (=> setNonEmpty!48797 (= setRest!48791 (set.union (set.insert setElem!48797 (as set.empty (Set Context!12804))) setRest!48797))))

(declare-fun b!7022398 () Bool)

(declare-fun tp!1934563 () Bool)

(assert (=> b!7022398 (= e!4221374 tp!1934563)))

(assert (= (and setNonEmpty!48791 condSetEmpty!48797) setIsEmpty!48797))

(assert (= (and setNonEmpty!48791 (not condSetEmpty!48797)) setNonEmpty!48797))

(assert (= setNonEmpty!48797 b!7022398))

(declare-fun m!7724492 () Bool)

(assert (=> setNonEmpty!48797 m!7724492))

(declare-fun b!7022403 () Bool)

(declare-fun e!4221377 () Bool)

(declare-fun tp!1934566 () Bool)

(assert (=> b!7022403 (= e!4221377 (and tp_is_empty!44037 tp!1934566))))

(assert (=> b!7022276 (= tp!1934537 e!4221377)))

(assert (= (and b!7022276 (is-Cons!67636 (t!381515 s!7408))) b!7022403))

(declare-fun b!7022404 () Bool)

(declare-fun e!4221378 () Bool)

(declare-fun tp!1934567 () Bool)

(declare-fun tp!1934568 () Bool)

(assert (=> b!7022404 (= e!4221378 (and tp!1934567 tp!1934568))))

(assert (=> b!7022280 (= tp!1934538 e!4221378)))

(assert (= (and b!7022280 (is-Cons!67635 (exprs!6902 setElem!48791))) b!7022404))

(declare-fun b_lambda!265273 () Bool)

(assert (= b_lambda!265267 (or b!7022282 b_lambda!265273)))

(declare-fun bs!1867894 () Bool)

(declare-fun d!2189057 () Bool)

(assert (= bs!1867894 (and d!2189057 b!7022282)))

(declare-fun lt!2512487 () Unit!161478)

(assert (=> bs!1867894 (= lt!2512487 (lemmaConcatPreservesForall!733 (exprs!6902 lt!2512470) (exprs!6902 ct2!306) lambda!411812))))

(assert (=> bs!1867894 (= (dynLambda!27254 lambda!411811 lt!2512470) (Context!12805 (++!15441 (exprs!6902 lt!2512470) (exprs!6902 ct2!306))))))

(declare-fun m!7724494 () Bool)

(assert (=> bs!1867894 m!7724494))

(declare-fun m!7724496 () Bool)

(assert (=> bs!1867894 m!7724496))

(assert (=> d!2189019 d!2189057))

(declare-fun b_lambda!265275 () Bool)

(assert (= b_lambda!265271 (or b!7022279 b_lambda!265275)))

(declare-fun bs!1867896 () Bool)

(declare-fun d!2189059 () Bool)

(assert (= bs!1867896 (and d!2189059 b!7022279)))

(declare-fun nullable!7141 (Regex!17406) Bool)

(assert (=> bs!1867896 (= (dynLambda!27256 lambda!411813 (h!74083 lt!2512432)) (nullable!7141 (h!74083 lt!2512432)))))

(declare-fun m!7724498 () Bool)

(assert (=> bs!1867896 m!7724498))

(assert (=> b!7022359 d!2189059))

(declare-fun b_lambda!265277 () Bool)

(assert (= b_lambda!265269 (or b!7022285 b_lambda!265277)))

(declare-fun bs!1867897 () Bool)

(declare-fun d!2189061 () Bool)

(assert (= bs!1867897 (and d!2189061 b!7022285)))

(assert (=> bs!1867897 (= (dynLambda!27255 lambda!411810 lt!2512473) (nullableContext!66 lt!2512473))))

(declare-fun m!7724502 () Bool)

(assert (=> bs!1867897 m!7724502))

(assert (=> d!2189029 d!2189061))

(push 1)

(assert (not d!2189013))

(assert (not b!7022404))

(assert (not setNonEmpty!48797))

(assert (not d!2189027))

(assert (not d!2189033))

(assert (not b!7022388))

(assert (not b_lambda!265277))

(assert (not d!2189055))

(assert (not b!7022375))

(assert (not d!2189051))

(assert (not b!7022341))

(assert (not b!7022329))

(assert (not b!7022387))

(assert (not b!7022403))

(assert tp_is_empty!44037)

(assert (not b!7022398))

(assert (not bs!1867897))

(assert (not d!2189053))

(assert (not b!7022343))

(assert (not bs!1867894))

(assert (not d!2189015))

(assert (not d!2189029))

(assert (not b_lambda!265273))

(assert (not d!2189019))

(assert (not bs!1867896))

(assert (not b!7022393))

(assert (not d!2189017))

(assert (not b!7022371))

(assert (not d!2189043))

(assert (not b!7022360))

(assert (not b!7022330))

(assert (not b_lambda!265275))

(assert (not d!2189021))

(assert (not d!2189047))

(assert (not b!7022376))

(assert (not b!7022372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

