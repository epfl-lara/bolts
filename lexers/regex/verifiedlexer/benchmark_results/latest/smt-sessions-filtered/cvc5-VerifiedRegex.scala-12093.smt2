; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677864 () Bool)

(assert start!677864)

(declare-fun b!7023773 () Bool)

(assert (=> b!7023773 true))

(declare-fun b!7023772 () Bool)

(assert (=> b!7023772 true))

(declare-fun b!7023775 () Bool)

(assert (=> b!7023775 true))

(declare-fun b!7023768 () Bool)

(declare-fun e!4222264 () Bool)

(declare-fun tp!1935086 () Bool)

(assert (=> b!7023768 (= e!4222264 tp!1935086)))

(declare-fun b!7023769 () Bool)

(declare-fun e!4222262 () Bool)

(declare-fun tp!1935087 () Bool)

(assert (=> b!7023769 (= e!4222262 tp!1935087)))

(declare-fun setIsEmpty!48911 () Bool)

(declare-fun setRes!48911 () Bool)

(assert (=> setIsEmpty!48911 setRes!48911))

(declare-fun b!7023770 () Bool)

(declare-fun res!2867249 () Bool)

(declare-fun e!4222261 () Bool)

(assert (=> b!7023770 (=> res!2867249 e!4222261)))

(declare-datatypes ((C!35134 0))(
  ( (C!35135 (val!27269 Int)) )
))
(declare-datatypes ((Regex!17432 0))(
  ( (ElementMatch!17432 (c!1305433 C!35134)) (Concat!26277 (regOne!35376 Regex!17432) (regTwo!35376 Regex!17432)) (EmptyExpr!17432) (Star!17432 (reg!17761 Regex!17432)) (EmptyLang!17432) (Union!17432 (regOne!35377 Regex!17432) (regTwo!35377 Regex!17432)) )
))
(declare-datatypes ((List!67824 0))(
  ( (Nil!67700) (Cons!67700 (h!74148 Regex!17432) (t!381579 List!67824)) )
))
(declare-datatypes ((Context!12856 0))(
  ( (Context!12857 (exprs!6928 List!67824)) )
))
(declare-fun lt!2513354 () Context!12856)

(declare-fun lt!2513365 () (Set Context!12856))

(assert (=> b!7023770 (= res!2867249 (not (set.member lt!2513354 lt!2513365)))))

(declare-fun e!4222266 () Bool)

(assert (=> b!7023772 (= e!4222261 e!4222266)))

(declare-fun res!2867252 () Bool)

(assert (=> b!7023772 (=> res!2867252 e!4222266)))

(declare-fun lt!2513363 () Context!12856)

(declare-fun z1!570 () (Set Context!12856))

(declare-fun lt!2513362 () Context!12856)

(assert (=> b!7023772 (= res!2867252 (or (not (= lt!2513363 lt!2513354)) (not (set.member lt!2513362 z1!570))))))

(declare-fun ct2!306 () Context!12856)

(declare-fun ++!15465 (List!67824 List!67824) List!67824)

(assert (=> b!7023772 (= lt!2513363 (Context!12857 (++!15465 (exprs!6928 lt!2513362) (exprs!6928 ct2!306))))))

(declare-fun lambda!412396 () Int)

(declare-datatypes ((Unit!161526 0))(
  ( (Unit!161527) )
))
(declare-fun lt!2513355 () Unit!161526)

(declare-fun lemmaConcatPreservesForall!753 (List!67824 List!67824 Int) Unit!161526)

(assert (=> b!7023772 (= lt!2513355 (lemmaConcatPreservesForall!753 (exprs!6928 lt!2513362) (exprs!6928 ct2!306) lambda!412396))))

(declare-fun lambda!412395 () Int)

(declare-fun mapPost2!273 ((Set Context!12856) Int Context!12856) Context!12856)

(assert (=> b!7023772 (= lt!2513362 (mapPost2!273 z1!570 lambda!412395 lt!2513354))))

(declare-fun e!4222267 () Bool)

(assert (=> b!7023773 (= e!4222267 (not e!4222261))))

(declare-fun res!2867253 () Bool)

(assert (=> b!7023773 (=> res!2867253 e!4222261)))

(declare-fun lt!2513360 () (Set Context!12856))

(declare-datatypes ((List!67825 0))(
  ( (Nil!67701) (Cons!67701 (h!74149 C!35134) (t!381580 List!67825)) )
))
(declare-fun s!7408 () List!67825)

(declare-fun matchZipper!2972 ((Set Context!12856) List!67825) Bool)

(assert (=> b!7023773 (= res!2867253 (not (matchZipper!2972 lt!2513360 s!7408)))))

(assert (=> b!7023773 (= lt!2513360 (set.insert lt!2513354 (as set.empty (Set Context!12856))))))

(declare-fun lambda!412394 () Int)

(declare-fun getWitness!1416 ((Set Context!12856) Int) Context!12856)

(assert (=> b!7023773 (= lt!2513354 (getWitness!1416 lt!2513365 lambda!412394))))

(declare-datatypes ((List!67826 0))(
  ( (Nil!67702) (Cons!67702 (h!74150 Context!12856) (t!381581 List!67826)) )
))
(declare-fun lt!2513364 () List!67826)

(declare-fun exists!3335 (List!67826 Int) Bool)

(assert (=> b!7023773 (exists!3335 lt!2513364 lambda!412394)))

(declare-fun lt!2513359 () Unit!161526)

(declare-fun lemmaZipperMatchesExistsMatchingContext!371 (List!67826 List!67825) Unit!161526)

(assert (=> b!7023773 (= lt!2513359 (lemmaZipperMatchesExistsMatchingContext!371 lt!2513364 s!7408))))

(declare-fun toList!10775 ((Set Context!12856)) List!67826)

(assert (=> b!7023773 (= lt!2513364 (toList!10775 lt!2513365))))

(declare-fun setNonEmpty!48911 () Bool)

(declare-fun tp!1935088 () Bool)

(declare-fun setElem!48911 () Context!12856)

(declare-fun inv!86440 (Context!12856) Bool)

(assert (=> setNonEmpty!48911 (= setRes!48911 (and tp!1935088 (inv!86440 setElem!48911) e!4222262))))

(declare-fun setRest!48911 () (Set Context!12856))

(assert (=> setNonEmpty!48911 (= z1!570 (set.union (set.insert setElem!48911 (as set.empty (Set Context!12856))) setRest!48911))))

(declare-fun b!7023774 () Bool)

(declare-fun e!4222265 () Bool)

(assert (=> b!7023774 (= e!4222266 e!4222265)))

(declare-fun res!2867250 () Bool)

(assert (=> b!7023774 (=> res!2867250 e!4222265)))

(declare-fun lt!2513356 () (Set Context!12856))

(assert (=> b!7023774 (= res!2867250 (not (= lt!2513356 lt!2513360)))))

(assert (=> b!7023774 (= lt!2513356 (set.insert lt!2513363 (as set.empty (Set Context!12856))))))

(declare-fun lt!2513358 () Unit!161526)

(assert (=> b!7023774 (= lt!2513358 (lemmaConcatPreservesForall!753 (exprs!6928 lt!2513362) (exprs!6928 ct2!306) lambda!412396))))

(declare-fun derivationStepZipper!2888 ((Set Context!12856) C!35134) (Set Context!12856))

(declare-fun derivationStepZipperUp!2042 (Context!12856 C!35134) (Set Context!12856))

(assert (=> b!7023775 (= e!4222265 (= (derivationStepZipper!2888 lt!2513356 (h!74149 s!7408)) (derivationStepZipperUp!2042 lt!2513363 (h!74149 s!7408))))))

(declare-fun lambda!412397 () Int)

(declare-fun flatMap!2379 ((Set Context!12856) Int) (Set Context!12856))

(assert (=> b!7023775 (= (flatMap!2379 lt!2513356 lambda!412397) (derivationStepZipperUp!2042 lt!2513363 (h!74149 s!7408)))))

(declare-fun lt!2513357 () Unit!161526)

(declare-fun lemmaFlatMapOnSingletonSet!1893 ((Set Context!12856) Context!12856 Int) Unit!161526)

(assert (=> b!7023775 (= lt!2513357 (lemmaFlatMapOnSingletonSet!1893 lt!2513356 lt!2513363 lambda!412397))))

(declare-fun lt!2513361 () Unit!161526)

(assert (=> b!7023775 (= lt!2513361 (lemmaConcatPreservesForall!753 (exprs!6928 lt!2513362) (exprs!6928 ct2!306) lambda!412396))))

(declare-fun b!7023776 () Bool)

(declare-fun e!4222263 () Bool)

(declare-fun tp_is_empty!44089 () Bool)

(declare-fun tp!1935089 () Bool)

(assert (=> b!7023776 (= e!4222263 (and tp_is_empty!44089 tp!1935089))))

(declare-fun b!7023771 () Bool)

(declare-fun res!2867251 () Bool)

(assert (=> b!7023771 (=> (not res!2867251) (not e!4222267))))

(assert (=> b!7023771 (= res!2867251 (is-Cons!67701 s!7408))))

(declare-fun res!2867248 () Bool)

(assert (=> start!677864 (=> (not res!2867248) (not e!4222267))))

(assert (=> start!677864 (= res!2867248 (matchZipper!2972 lt!2513365 s!7408))))

(declare-fun appendTo!553 ((Set Context!12856) Context!12856) (Set Context!12856))

(assert (=> start!677864 (= lt!2513365 (appendTo!553 z1!570 ct2!306))))

(assert (=> start!677864 e!4222267))

(declare-fun condSetEmpty!48911 () Bool)

(assert (=> start!677864 (= condSetEmpty!48911 (= z1!570 (as set.empty (Set Context!12856))))))

(assert (=> start!677864 setRes!48911))

(assert (=> start!677864 (and (inv!86440 ct2!306) e!4222264)))

(assert (=> start!677864 e!4222263))

(assert (= (and start!677864 res!2867248) b!7023771))

(assert (= (and b!7023771 res!2867251) b!7023773))

(assert (= (and b!7023773 (not res!2867253)) b!7023770))

(assert (= (and b!7023770 (not res!2867249)) b!7023772))

(assert (= (and b!7023772 (not res!2867252)) b!7023774))

(assert (= (and b!7023774 (not res!2867250)) b!7023775))

(assert (= (and start!677864 condSetEmpty!48911) setIsEmpty!48911))

(assert (= (and start!677864 (not condSetEmpty!48911)) setNonEmpty!48911))

(assert (= setNonEmpty!48911 b!7023769))

(assert (= start!677864 b!7023768))

(assert (= (and start!677864 (is-Cons!67701 s!7408)) b!7023776))

(declare-fun m!7726366 () Bool)

(assert (=> setNonEmpty!48911 m!7726366))

(declare-fun m!7726368 () Bool)

(assert (=> b!7023773 m!7726368))

(declare-fun m!7726370 () Bool)

(assert (=> b!7023773 m!7726370))

(declare-fun m!7726372 () Bool)

(assert (=> b!7023773 m!7726372))

(declare-fun m!7726374 () Bool)

(assert (=> b!7023773 m!7726374))

(declare-fun m!7726376 () Bool)

(assert (=> b!7023773 m!7726376))

(declare-fun m!7726378 () Bool)

(assert (=> b!7023773 m!7726378))

(declare-fun m!7726380 () Bool)

(assert (=> b!7023770 m!7726380))

(declare-fun m!7726382 () Bool)

(assert (=> b!7023774 m!7726382))

(declare-fun m!7726384 () Bool)

(assert (=> b!7023774 m!7726384))

(declare-fun m!7726386 () Bool)

(assert (=> start!677864 m!7726386))

(declare-fun m!7726388 () Bool)

(assert (=> start!677864 m!7726388))

(declare-fun m!7726390 () Bool)

(assert (=> start!677864 m!7726390))

(declare-fun m!7726392 () Bool)

(assert (=> b!7023772 m!7726392))

(declare-fun m!7726394 () Bool)

(assert (=> b!7023772 m!7726394))

(assert (=> b!7023772 m!7726384))

(declare-fun m!7726396 () Bool)

(assert (=> b!7023772 m!7726396))

(declare-fun m!7726398 () Bool)

(assert (=> b!7023775 m!7726398))

(declare-fun m!7726400 () Bool)

(assert (=> b!7023775 m!7726400))

(declare-fun m!7726402 () Bool)

(assert (=> b!7023775 m!7726402))

(assert (=> b!7023775 m!7726384))

(declare-fun m!7726404 () Bool)

(assert (=> b!7023775 m!7726404))

(push 1)

(assert tp_is_empty!44089)

(assert (not b!7023776))

(assert (not b!7023768))

(assert (not start!677864))

(assert (not b!7023774))

(assert (not b!7023773))

(assert (not setNonEmpty!48911))

(assert (not b!7023769))

(assert (not b!7023772))

(assert (not b!7023775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2189468 () Bool)

(declare-fun e!4222294 () Bool)

(assert (=> d!2189468 e!4222294))

(declare-fun res!2867278 () Bool)

(assert (=> d!2189468 (=> (not res!2867278) (not e!4222294))))

(declare-fun lt!2513406 () List!67824)

(declare-fun content!13482 (List!67824) (Set Regex!17432))

(assert (=> d!2189468 (= res!2867278 (= (content!13482 lt!2513406) (set.union (content!13482 (exprs!6928 lt!2513362)) (content!13482 (exprs!6928 ct2!306)))))))

(declare-fun e!4222293 () List!67824)

(assert (=> d!2189468 (= lt!2513406 e!4222293)))

(declare-fun c!1305445 () Bool)

(assert (=> d!2189468 (= c!1305445 (is-Nil!67700 (exprs!6928 lt!2513362)))))

(assert (=> d!2189468 (= (++!15465 (exprs!6928 lt!2513362) (exprs!6928 ct2!306)) lt!2513406)))

(declare-fun b!7023824 () Bool)

(assert (=> b!7023824 (= e!4222293 (exprs!6928 ct2!306))))

(declare-fun b!7023827 () Bool)

(assert (=> b!7023827 (= e!4222294 (or (not (= (exprs!6928 ct2!306) Nil!67700)) (= lt!2513406 (exprs!6928 lt!2513362))))))

(declare-fun b!7023826 () Bool)

(declare-fun res!2867279 () Bool)

(assert (=> b!7023826 (=> (not res!2867279) (not e!4222294))))

(declare-fun size!41034 (List!67824) Int)

(assert (=> b!7023826 (= res!2867279 (= (size!41034 lt!2513406) (+ (size!41034 (exprs!6928 lt!2513362)) (size!41034 (exprs!6928 ct2!306)))))))

(declare-fun b!7023825 () Bool)

(assert (=> b!7023825 (= e!4222293 (Cons!67700 (h!74148 (exprs!6928 lt!2513362)) (++!15465 (t!381579 (exprs!6928 lt!2513362)) (exprs!6928 ct2!306))))))

(assert (= (and d!2189468 c!1305445) b!7023824))

(assert (= (and d!2189468 (not c!1305445)) b!7023825))

(assert (= (and d!2189468 res!2867278) b!7023826))

(assert (= (and b!7023826 res!2867279) b!7023827))

(declare-fun m!7726446 () Bool)

(assert (=> d!2189468 m!7726446))

(declare-fun m!7726448 () Bool)

(assert (=> d!2189468 m!7726448))

(declare-fun m!7726450 () Bool)

(assert (=> d!2189468 m!7726450))

(declare-fun m!7726452 () Bool)

(assert (=> b!7023826 m!7726452))

(declare-fun m!7726454 () Bool)

(assert (=> b!7023826 m!7726454))

(declare-fun m!7726456 () Bool)

(assert (=> b!7023826 m!7726456))

(declare-fun m!7726458 () Bool)

(assert (=> b!7023825 m!7726458))

(assert (=> b!7023772 d!2189468))

(declare-fun d!2189470 () Bool)

(declare-fun forall!16332 (List!67824 Int) Bool)

(assert (=> d!2189470 (forall!16332 (++!15465 (exprs!6928 lt!2513362) (exprs!6928 ct2!306)) lambda!412396)))

(declare-fun lt!2513409 () Unit!161526)

(declare-fun choose!53031 (List!67824 List!67824 Int) Unit!161526)

(assert (=> d!2189470 (= lt!2513409 (choose!53031 (exprs!6928 lt!2513362) (exprs!6928 ct2!306) lambda!412396))))

(assert (=> d!2189470 (forall!16332 (exprs!6928 lt!2513362) lambda!412396)))

(assert (=> d!2189470 (= (lemmaConcatPreservesForall!753 (exprs!6928 lt!2513362) (exprs!6928 ct2!306) lambda!412396) lt!2513409)))

(declare-fun bs!1868153 () Bool)

(assert (= bs!1868153 d!2189470))

(assert (=> bs!1868153 m!7726394))

(assert (=> bs!1868153 m!7726394))

(declare-fun m!7726460 () Bool)

(assert (=> bs!1868153 m!7726460))

(declare-fun m!7726462 () Bool)

(assert (=> bs!1868153 m!7726462))

(declare-fun m!7726464 () Bool)

(assert (=> bs!1868153 m!7726464))

(assert (=> b!7023772 d!2189470))

(declare-fun d!2189472 () Bool)

(declare-fun e!4222297 () Bool)

(assert (=> d!2189472 e!4222297))

(declare-fun res!2867282 () Bool)

(assert (=> d!2189472 (=> (not res!2867282) (not e!4222297))))

(declare-fun lt!2513412 () Context!12856)

(declare-fun dynLambda!27278 (Int Context!12856) Context!12856)

(assert (=> d!2189472 (= res!2867282 (= lt!2513354 (dynLambda!27278 lambda!412395 lt!2513412)))))

(declare-fun choose!53032 ((Set Context!12856) Int Context!12856) Context!12856)

(assert (=> d!2189472 (= lt!2513412 (choose!53032 z1!570 lambda!412395 lt!2513354))))

(declare-fun map!15719 ((Set Context!12856) Int) (Set Context!12856))

(assert (=> d!2189472 (set.member lt!2513354 (map!15719 z1!570 lambda!412395))))

(assert (=> d!2189472 (= (mapPost2!273 z1!570 lambda!412395 lt!2513354) lt!2513412)))

(declare-fun b!7023831 () Bool)

(assert (=> b!7023831 (= e!4222297 (set.member lt!2513412 z1!570))))

(assert (= (and d!2189472 res!2867282) b!7023831))

(declare-fun b_lambda!265387 () Bool)

(assert (=> (not b_lambda!265387) (not d!2189472)))

(declare-fun m!7726466 () Bool)

(assert (=> d!2189472 m!7726466))

(declare-fun m!7726468 () Bool)

(assert (=> d!2189472 m!7726468))

(declare-fun m!7726470 () Bool)

(assert (=> d!2189472 m!7726470))

(declare-fun m!7726472 () Bool)

(assert (=> d!2189472 m!7726472))

(declare-fun m!7726474 () Bool)

(assert (=> b!7023831 m!7726474))

(assert (=> b!7023772 d!2189472))

(declare-fun d!2189474 () Bool)

(declare-fun e!4222300 () Bool)

(assert (=> d!2189474 e!4222300))

(declare-fun res!2867285 () Bool)

(assert (=> d!2189474 (=> (not res!2867285) (not e!4222300))))

(declare-fun lt!2513415 () Context!12856)

(declare-fun dynLambda!27279 (Int Context!12856) Bool)

(assert (=> d!2189474 (= res!2867285 (dynLambda!27279 lambda!412394 lt!2513415))))

(declare-fun getWitness!1418 (List!67826 Int) Context!12856)

(assert (=> d!2189474 (= lt!2513415 (getWitness!1418 (toList!10775 lt!2513365) lambda!412394))))

(declare-fun exists!3337 ((Set Context!12856) Int) Bool)

(assert (=> d!2189474 (exists!3337 lt!2513365 lambda!412394)))

(assert (=> d!2189474 (= (getWitness!1416 lt!2513365 lambda!412394) lt!2513415)))

(declare-fun b!7023834 () Bool)

(assert (=> b!7023834 (= e!4222300 (set.member lt!2513415 lt!2513365))))

(assert (= (and d!2189474 res!2867285) b!7023834))

(declare-fun b_lambda!265389 () Bool)

(assert (=> (not b_lambda!265389) (not d!2189474)))

(declare-fun m!7726476 () Bool)

(assert (=> d!2189474 m!7726476))

(assert (=> d!2189474 m!7726372))

(assert (=> d!2189474 m!7726372))

(declare-fun m!7726478 () Bool)

(assert (=> d!2189474 m!7726478))

(declare-fun m!7726480 () Bool)

(assert (=> d!2189474 m!7726480))

(declare-fun m!7726482 () Bool)

(assert (=> b!7023834 m!7726482))

(assert (=> b!7023773 d!2189474))

(declare-fun bs!1868154 () Bool)

(declare-fun d!2189476 () Bool)

(assert (= bs!1868154 (and d!2189476 b!7023773)))

(declare-fun lambda!412420 () Int)

(assert (=> bs!1868154 (= lambda!412420 lambda!412394)))

(assert (=> d!2189476 true))

(assert (=> d!2189476 (exists!3335 lt!2513364 lambda!412420)))

(declare-fun lt!2513418 () Unit!161526)

(declare-fun choose!53033 (List!67826 List!67825) Unit!161526)

(assert (=> d!2189476 (= lt!2513418 (choose!53033 lt!2513364 s!7408))))

(declare-fun content!13483 (List!67826) (Set Context!12856))

(assert (=> d!2189476 (matchZipper!2972 (content!13483 lt!2513364) s!7408)))

(assert (=> d!2189476 (= (lemmaZipperMatchesExistsMatchingContext!371 lt!2513364 s!7408) lt!2513418)))

(declare-fun bs!1868155 () Bool)

(assert (= bs!1868155 d!2189476))

(declare-fun m!7726484 () Bool)

(assert (=> bs!1868155 m!7726484))

(declare-fun m!7726486 () Bool)

(assert (=> bs!1868155 m!7726486))

(declare-fun m!7726488 () Bool)

(assert (=> bs!1868155 m!7726488))

(assert (=> bs!1868155 m!7726488))

(declare-fun m!7726490 () Bool)

(assert (=> bs!1868155 m!7726490))

(assert (=> b!7023773 d!2189476))

(declare-fun bs!1868156 () Bool)

(declare-fun d!2189478 () Bool)

(assert (= bs!1868156 (and d!2189478 b!7023773)))

(declare-fun lambda!412423 () Int)

(assert (=> bs!1868156 (not (= lambda!412423 lambda!412394))))

(declare-fun bs!1868157 () Bool)

(assert (= bs!1868157 (and d!2189478 d!2189476)))

(assert (=> bs!1868157 (not (= lambda!412423 lambda!412420))))

(assert (=> d!2189478 true))

(declare-fun order!28125 () Int)

(declare-fun dynLambda!27280 (Int Int) Int)

(assert (=> d!2189478 (< (dynLambda!27280 order!28125 lambda!412394) (dynLambda!27280 order!28125 lambda!412423))))

(declare-fun forall!16333 (List!67826 Int) Bool)

(assert (=> d!2189478 (= (exists!3335 lt!2513364 lambda!412394) (not (forall!16333 lt!2513364 lambda!412423)))))

(declare-fun bs!1868158 () Bool)

(assert (= bs!1868158 d!2189478))

(declare-fun m!7726492 () Bool)

(assert (=> bs!1868158 m!7726492))

(assert (=> b!7023773 d!2189478))

(declare-fun d!2189482 () Bool)

(declare-fun e!4222303 () Bool)

(assert (=> d!2189482 e!4222303))

(declare-fun res!2867288 () Bool)

(assert (=> d!2189482 (=> (not res!2867288) (not e!4222303))))

(declare-fun lt!2513421 () List!67826)

(declare-fun noDuplicate!2605 (List!67826) Bool)

(assert (=> d!2189482 (= res!2867288 (noDuplicate!2605 lt!2513421))))

(declare-fun choose!53034 ((Set Context!12856)) List!67826)

(assert (=> d!2189482 (= lt!2513421 (choose!53034 lt!2513365))))

(assert (=> d!2189482 (= (toList!10775 lt!2513365) lt!2513421)))

(declare-fun b!7023839 () Bool)

(assert (=> b!7023839 (= e!4222303 (= (content!13483 lt!2513421) lt!2513365))))

(assert (= (and d!2189482 res!2867288) b!7023839))

(declare-fun m!7726494 () Bool)

(assert (=> d!2189482 m!7726494))

(declare-fun m!7726496 () Bool)

(assert (=> d!2189482 m!7726496))

(declare-fun m!7726498 () Bool)

(assert (=> b!7023839 m!7726498))

(assert (=> b!7023773 d!2189482))

(declare-fun d!2189484 () Bool)

(declare-fun c!1305450 () Bool)

(declare-fun isEmpty!39477 (List!67825) Bool)

(assert (=> d!2189484 (= c!1305450 (isEmpty!39477 s!7408))))

(declare-fun e!4222309 () Bool)

(assert (=> d!2189484 (= (matchZipper!2972 lt!2513360 s!7408) e!4222309)))

(declare-fun b!7023847 () Bool)

(declare-fun nullableZipper!2556 ((Set Context!12856)) Bool)

(assert (=> b!7023847 (= e!4222309 (nullableZipper!2556 lt!2513360))))

(declare-fun b!7023848 () Bool)

(declare-fun head!14231 (List!67825) C!35134)

(declare-fun tail!13498 (List!67825) List!67825)

(assert (=> b!7023848 (= e!4222309 (matchZipper!2972 (derivationStepZipper!2888 lt!2513360 (head!14231 s!7408)) (tail!13498 s!7408)))))

(assert (= (and d!2189484 c!1305450) b!7023847))

(assert (= (and d!2189484 (not c!1305450)) b!7023848))

(declare-fun m!7726506 () Bool)

(assert (=> d!2189484 m!7726506))

(declare-fun m!7726508 () Bool)

(assert (=> b!7023847 m!7726508))

(declare-fun m!7726510 () Bool)

(assert (=> b!7023848 m!7726510))

(assert (=> b!7023848 m!7726510))

(declare-fun m!7726512 () Bool)

(assert (=> b!7023848 m!7726512))

(declare-fun m!7726514 () Bool)

(assert (=> b!7023848 m!7726514))

(assert (=> b!7023848 m!7726512))

(assert (=> b!7023848 m!7726514))

(declare-fun m!7726516 () Bool)

(assert (=> b!7023848 m!7726516))

(assert (=> b!7023773 d!2189484))

(declare-fun bs!1868159 () Bool)

(declare-fun d!2189488 () Bool)

(assert (= bs!1868159 (and d!2189488 b!7023772)))

(declare-fun lambda!412426 () Int)

(assert (=> bs!1868159 (= lambda!412426 lambda!412396)))

(assert (=> d!2189488 (= (inv!86440 setElem!48911) (forall!16332 (exprs!6928 setElem!48911) lambda!412426))))

(declare-fun bs!1868160 () Bool)

(assert (= bs!1868160 d!2189488))

(declare-fun m!7726518 () Bool)

(assert (=> bs!1868160 m!7726518))

(assert (=> setNonEmpty!48911 d!2189488))

(assert (=> b!7023774 d!2189470))

(declare-fun d!2189490 () Bool)

(declare-fun c!1305451 () Bool)

(assert (=> d!2189490 (= c!1305451 (isEmpty!39477 s!7408))))

(declare-fun e!4222310 () Bool)

(assert (=> d!2189490 (= (matchZipper!2972 lt!2513365 s!7408) e!4222310)))

(declare-fun b!7023849 () Bool)

(assert (=> b!7023849 (= e!4222310 (nullableZipper!2556 lt!2513365))))

(declare-fun b!7023850 () Bool)

(assert (=> b!7023850 (= e!4222310 (matchZipper!2972 (derivationStepZipper!2888 lt!2513365 (head!14231 s!7408)) (tail!13498 s!7408)))))

(assert (= (and d!2189490 c!1305451) b!7023849))

(assert (= (and d!2189490 (not c!1305451)) b!7023850))

(assert (=> d!2189490 m!7726506))

(declare-fun m!7726520 () Bool)

(assert (=> b!7023849 m!7726520))

(assert (=> b!7023850 m!7726510))

(assert (=> b!7023850 m!7726510))

(declare-fun m!7726522 () Bool)

(assert (=> b!7023850 m!7726522))

(assert (=> b!7023850 m!7726514))

(assert (=> b!7023850 m!7726522))

(assert (=> b!7023850 m!7726514))

(declare-fun m!7726524 () Bool)

(assert (=> b!7023850 m!7726524))

(assert (=> start!677864 d!2189490))

(declare-fun bs!1868161 () Bool)

(declare-fun d!2189492 () Bool)

(assert (= bs!1868161 (and d!2189492 b!7023772)))

(declare-fun lambda!412431 () Int)

(assert (=> bs!1868161 (= lambda!412431 lambda!412395)))

(assert (=> d!2189492 true))

(assert (=> d!2189492 (= (appendTo!553 z1!570 ct2!306) (map!15719 z1!570 lambda!412431))))

(declare-fun bs!1868162 () Bool)

(assert (= bs!1868162 d!2189492))

(declare-fun m!7726526 () Bool)

(assert (=> bs!1868162 m!7726526))

(assert (=> start!677864 d!2189492))

(declare-fun bs!1868163 () Bool)

(declare-fun d!2189494 () Bool)

(assert (= bs!1868163 (and d!2189494 b!7023772)))

(declare-fun lambda!412432 () Int)

(assert (=> bs!1868163 (= lambda!412432 lambda!412396)))

(declare-fun bs!1868164 () Bool)

(assert (= bs!1868164 (and d!2189494 d!2189488)))

(assert (=> bs!1868164 (= lambda!412432 lambda!412426)))

(assert (=> d!2189494 (= (inv!86440 ct2!306) (forall!16332 (exprs!6928 ct2!306) lambda!412432))))

(declare-fun bs!1868165 () Bool)

(assert (= bs!1868165 d!2189494))

(declare-fun m!7726528 () Bool)

(assert (=> bs!1868165 m!7726528))

(assert (=> start!677864 d!2189494))

(declare-fun d!2189496 () Bool)

(declare-fun choose!53035 ((Set Context!12856) Int) (Set Context!12856))

(assert (=> d!2189496 (= (flatMap!2379 lt!2513356 lambda!412397) (choose!53035 lt!2513356 lambda!412397))))

(declare-fun bs!1868166 () Bool)

(assert (= bs!1868166 d!2189496))

(declare-fun m!7726530 () Bool)

(assert (=> bs!1868166 m!7726530))

(assert (=> b!7023775 d!2189496))

(declare-fun bs!1868167 () Bool)

(declare-fun d!2189498 () Bool)

(assert (= bs!1868167 (and d!2189498 b!7023775)))

(declare-fun lambda!412437 () Int)

(assert (=> bs!1868167 (= lambda!412437 lambda!412397)))

(assert (=> d!2189498 true))

(assert (=> d!2189498 (= (derivationStepZipper!2888 lt!2513356 (h!74149 s!7408)) (flatMap!2379 lt!2513356 lambda!412437))))

(declare-fun bs!1868168 () Bool)

(assert (= bs!1868168 d!2189498))

(declare-fun m!7726532 () Bool)

(assert (=> bs!1868168 m!7726532))

(assert (=> b!7023775 d!2189498))

(assert (=> b!7023775 d!2189470))

(declare-fun b!7023863 () Bool)

(declare-fun e!4222318 () (Set Context!12856))

(assert (=> b!7023863 (= e!4222318 (as set.empty (Set Context!12856)))))

(declare-fun d!2189500 () Bool)

(declare-fun c!1305461 () Bool)

(declare-fun e!4222319 () Bool)

(assert (=> d!2189500 (= c!1305461 e!4222319)))

(declare-fun res!2867294 () Bool)

(assert (=> d!2189500 (=> (not res!2867294) (not e!4222319))))

(assert (=> d!2189500 (= res!2867294 (is-Cons!67700 (exprs!6928 lt!2513363)))))

(declare-fun e!4222317 () (Set Context!12856))

(assert (=> d!2189500 (= (derivationStepZipperUp!2042 lt!2513363 (h!74149 s!7408)) e!4222317)))

(declare-fun b!7023864 () Bool)

(declare-fun nullable!7144 (Regex!17432) Bool)

(assert (=> b!7023864 (= e!4222319 (nullable!7144 (h!74148 (exprs!6928 lt!2513363))))))

(declare-fun b!7023865 () Bool)

(declare-fun call!637649 () (Set Context!12856))

(assert (=> b!7023865 (= e!4222317 (set.union call!637649 (derivationStepZipperUp!2042 (Context!12857 (t!381579 (exprs!6928 lt!2513363))) (h!74149 s!7408))))))

(declare-fun b!7023866 () Bool)

(assert (=> b!7023866 (= e!4222318 call!637649)))

(declare-fun bm!637644 () Bool)

(declare-fun derivationStepZipperDown!2097 (Regex!17432 Context!12856 C!35134) (Set Context!12856))

(assert (=> bm!637644 (= call!637649 (derivationStepZipperDown!2097 (h!74148 (exprs!6928 lt!2513363)) (Context!12857 (t!381579 (exprs!6928 lt!2513363))) (h!74149 s!7408)))))

(declare-fun b!7023867 () Bool)

(assert (=> b!7023867 (= e!4222317 e!4222318)))

(declare-fun c!1305462 () Bool)

(assert (=> b!7023867 (= c!1305462 (is-Cons!67700 (exprs!6928 lt!2513363)))))

(assert (= (and d!2189500 res!2867294) b!7023864))

(assert (= (and d!2189500 c!1305461) b!7023865))

(assert (= (and d!2189500 (not c!1305461)) b!7023867))

(assert (= (and b!7023867 c!1305462) b!7023866))

(assert (= (and b!7023867 (not c!1305462)) b!7023863))

(assert (= (or b!7023865 b!7023866) bm!637644))

(declare-fun m!7726542 () Bool)

(assert (=> b!7023864 m!7726542))

(declare-fun m!7726544 () Bool)

(assert (=> b!7023865 m!7726544))

(declare-fun m!7726546 () Bool)

(assert (=> bm!637644 m!7726546))

(assert (=> b!7023775 d!2189500))

(declare-fun d!2189504 () Bool)

(declare-fun dynLambda!27281 (Int Context!12856) (Set Context!12856))

(assert (=> d!2189504 (= (flatMap!2379 lt!2513356 lambda!412397) (dynLambda!27281 lambda!412397 lt!2513363))))

(declare-fun lt!2513432 () Unit!161526)

(declare-fun choose!53036 ((Set Context!12856) Context!12856 Int) Unit!161526)

(assert (=> d!2189504 (= lt!2513432 (choose!53036 lt!2513356 lt!2513363 lambda!412397))))

(assert (=> d!2189504 (= lt!2513356 (set.insert lt!2513363 (as set.empty (Set Context!12856))))))

(assert (=> d!2189504 (= (lemmaFlatMapOnSingletonSet!1893 lt!2513356 lt!2513363 lambda!412397) lt!2513432)))

(declare-fun b_lambda!265391 () Bool)

(assert (=> (not b_lambda!265391) (not d!2189504)))

(declare-fun bs!1868173 () Bool)

(assert (= bs!1868173 d!2189504))

(assert (=> bs!1868173 m!7726398))

(declare-fun m!7726548 () Bool)

(assert (=> bs!1868173 m!7726548))

(declare-fun m!7726551 () Bool)

(assert (=> bs!1868173 m!7726551))

(assert (=> bs!1868173 m!7726382))

(assert (=> b!7023775 d!2189504))

(declare-fun b!7023874 () Bool)

(declare-fun e!4222322 () Bool)

(declare-fun tp!1935104 () Bool)

(assert (=> b!7023874 (= e!4222322 (and tp_is_empty!44089 tp!1935104))))

(assert (=> b!7023776 (= tp!1935089 e!4222322)))

(assert (= (and b!7023776 (is-Cons!67701 (t!381580 s!7408))) b!7023874))

(declare-fun b!7023879 () Bool)

(declare-fun e!4222325 () Bool)

(declare-fun tp!1935109 () Bool)

(declare-fun tp!1935110 () Bool)

(assert (=> b!7023879 (= e!4222325 (and tp!1935109 tp!1935110))))

(assert (=> b!7023768 (= tp!1935086 e!4222325)))

(assert (= (and b!7023768 (is-Cons!67700 (exprs!6928 ct2!306))) b!7023879))

(declare-fun b!7023880 () Bool)

(declare-fun e!4222326 () Bool)

(declare-fun tp!1935111 () Bool)

(declare-fun tp!1935112 () Bool)

(assert (=> b!7023880 (= e!4222326 (and tp!1935111 tp!1935112))))

(assert (=> b!7023769 (= tp!1935087 e!4222326)))

(assert (= (and b!7023769 (is-Cons!67700 (exprs!6928 setElem!48911))) b!7023880))

(declare-fun condSetEmpty!48917 () Bool)

(assert (=> setNonEmpty!48911 (= condSetEmpty!48917 (= setRest!48911 (as set.empty (Set Context!12856))))))

(declare-fun setRes!48917 () Bool)

(assert (=> setNonEmpty!48911 (= tp!1935088 setRes!48917)))

(declare-fun setIsEmpty!48917 () Bool)

(assert (=> setIsEmpty!48917 setRes!48917))

(declare-fun setNonEmpty!48917 () Bool)

(declare-fun e!4222329 () Bool)

(declare-fun tp!1935118 () Bool)

(declare-fun setElem!48917 () Context!12856)

(assert (=> setNonEmpty!48917 (= setRes!48917 (and tp!1935118 (inv!86440 setElem!48917) e!4222329))))

(declare-fun setRest!48917 () (Set Context!12856))

(assert (=> setNonEmpty!48917 (= setRest!48911 (set.union (set.insert setElem!48917 (as set.empty (Set Context!12856))) setRest!48917))))

(declare-fun b!7023885 () Bool)

(declare-fun tp!1935117 () Bool)

(assert (=> b!7023885 (= e!4222329 tp!1935117)))

(assert (= (and setNonEmpty!48911 condSetEmpty!48917) setIsEmpty!48917))

(assert (= (and setNonEmpty!48911 (not condSetEmpty!48917)) setNonEmpty!48917))

(assert (= setNonEmpty!48917 b!7023885))

(declare-fun m!7726554 () Bool)

(assert (=> setNonEmpty!48917 m!7726554))

(declare-fun b_lambda!265393 () Bool)

(assert (= b_lambda!265391 (or b!7023775 b_lambda!265393)))

(declare-fun bs!1868175 () Bool)

(declare-fun d!2189508 () Bool)

(assert (= bs!1868175 (and d!2189508 b!7023775)))

(assert (=> bs!1868175 (= (dynLambda!27281 lambda!412397 lt!2513363) (derivationStepZipperUp!2042 lt!2513363 (h!74149 s!7408)))))

(assert (=> bs!1868175 m!7726404))

(assert (=> d!2189504 d!2189508))

(declare-fun b_lambda!265395 () Bool)

(assert (= b_lambda!265389 (or b!7023773 b_lambda!265395)))

(declare-fun bs!1868176 () Bool)

(declare-fun d!2189510 () Bool)

(assert (= bs!1868176 (and d!2189510 b!7023773)))

(assert (=> bs!1868176 (= (dynLambda!27279 lambda!412394 lt!2513415) (matchZipper!2972 (set.insert lt!2513415 (as set.empty (Set Context!12856))) s!7408))))

(declare-fun m!7726556 () Bool)

(assert (=> bs!1868176 m!7726556))

(assert (=> bs!1868176 m!7726556))

(declare-fun m!7726558 () Bool)

(assert (=> bs!1868176 m!7726558))

(assert (=> d!2189474 d!2189510))

(declare-fun b_lambda!265397 () Bool)

(assert (= b_lambda!265387 (or b!7023772 b_lambda!265397)))

(declare-fun bs!1868177 () Bool)

(declare-fun d!2189512 () Bool)

(assert (= bs!1868177 (and d!2189512 b!7023772)))

(declare-fun lt!2513433 () Unit!161526)

(assert (=> bs!1868177 (= lt!2513433 (lemmaConcatPreservesForall!753 (exprs!6928 lt!2513412) (exprs!6928 ct2!306) lambda!412396))))

(assert (=> bs!1868177 (= (dynLambda!27278 lambda!412395 lt!2513412) (Context!12857 (++!15465 (exprs!6928 lt!2513412) (exprs!6928 ct2!306))))))

(declare-fun m!7726560 () Bool)

(assert (=> bs!1868177 m!7726560))

(declare-fun m!7726562 () Bool)

(assert (=> bs!1868177 m!7726562))

(assert (=> d!2189472 d!2189512))

(push 1)

(assert (not b!7023850))

(assert (not b!7023848))

(assert (not b!7023865))

(assert (not b_lambda!265393))

(assert (not d!2189474))

(assert (not d!2189478))

(assert (not b!7023864))

(assert (not d!2189498))

(assert (not d!2189468))

(assert (not d!2189482))

(assert tp_is_empty!44089)

(assert (not b!7023839))

(assert (not bm!637644))

(assert (not b_lambda!265397))

(assert (not bs!1868175))

(assert (not b!7023849))

(assert (not d!2189494))

(assert (not b!7023826))

(assert (not b_lambda!265395))

(assert (not setNonEmpty!48917))

(assert (not bs!1868176))

(assert (not d!2189490))

(assert (not d!2189492))

(assert (not b!7023874))

(assert (not d!2189470))

(assert (not b!7023847))

(assert (not b!7023880))

(assert (not b!7023825))

(assert (not b!7023885))

(assert (not bs!1868177))

(assert (not d!2189504))

(assert (not d!2189496))

(assert (not d!2189472))

(assert (not d!2189488))

(assert (not d!2189476))

(assert (not b!7023879))

(assert (not d!2189484))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

