; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704730 () Bool)

(assert start!704730)

(declare-fun b!7246542 () Bool)

(declare-fun e!4344887 () Bool)

(declare-fun tp!2036537 () Bool)

(assert (=> b!7246542 (= e!4344887 tp!2036537)))

(declare-fun res!2939329 () Bool)

(declare-fun e!4344888 () Bool)

(assert (=> start!704730 (=> (not res!2939329) (not e!4344888))))

(declare-datatypes ((C!37490 0))(
  ( (C!37491 (val!28693 Int)) )
))
(declare-datatypes ((Regex!18608 0))(
  ( (ElementMatch!18608 (c!1346228 C!37490)) (Concat!27453 (regOne!37728 Regex!18608) (regTwo!37728 Regex!18608)) (EmptyExpr!18608) (Star!18608 (reg!18937 Regex!18608)) (EmptyLang!18608) (Union!18608 (regOne!37729 Regex!18608) (regTwo!37729 Regex!18608)) )
))
(declare-datatypes ((List!70414 0))(
  ( (Nil!70290) (Cons!70290 (h!76738 Regex!18608) (t!384466 List!70414)) )
))
(declare-datatypes ((Context!15096 0))(
  ( (Context!15097 (exprs!8048 List!70414)) )
))
(declare-fun lt!2582868 () (Set Context!15096))

(declare-datatypes ((List!70415 0))(
  ( (Nil!70291) (Cons!70291 (h!76739 C!37490) (t!384467 List!70415)) )
))
(declare-fun s1!1971 () List!70415)

(declare-fun matchZipper!3518 ((Set Context!15096) List!70415) Bool)

(assert (=> start!704730 (= res!2939329 (matchZipper!3518 lt!2582868 s1!1971))))

(declare-fun ct1!232 () Context!15096)

(assert (=> start!704730 (= lt!2582868 (set.insert ct1!232 (as set.empty (Set Context!15096))))))

(assert (=> start!704730 e!4344888))

(declare-fun inv!89531 (Context!15096) Bool)

(assert (=> start!704730 (and (inv!89531 ct1!232) e!4344887)))

(declare-fun e!4344883 () Bool)

(assert (=> start!704730 e!4344883))

(declare-fun e!4344885 () Bool)

(assert (=> start!704730 e!4344885))

(declare-fun ct2!328 () Context!15096)

(declare-fun e!4344886 () Bool)

(assert (=> start!704730 (and (inv!89531 ct2!328) e!4344886)))

(declare-fun b!7246543 () Bool)

(declare-fun tp!2036540 () Bool)

(assert (=> b!7246543 (= e!4344886 tp!2036540)))

(declare-fun b!7246544 () Bool)

(declare-fun tp_is_empty!46681 () Bool)

(declare-fun tp!2036538 () Bool)

(assert (=> b!7246544 (= e!4344885 (and tp_is_empty!46681 tp!2036538))))

(declare-fun b!7246545 () Bool)

(declare-fun e!4344884 () Bool)

(declare-fun lt!2582869 () List!70414)

(assert (=> b!7246545 (= e!4344884 (not (inv!89531 (Context!15097 lt!2582869))))))

(declare-datatypes ((Unit!163799 0))(
  ( (Unit!163800) )
))
(declare-fun lt!2582872 () Unit!163799)

(declare-fun lambda!443212 () Int)

(declare-fun lemmaConcatPreservesForall!1415 (List!70414 List!70414 Int) Unit!163799)

(assert (=> b!7246545 (= lt!2582872 (lemmaConcatPreservesForall!1415 (exprs!8048 ct1!232) (exprs!8048 ct2!328) lambda!443212))))

(declare-fun isEmpty!40486 (List!70415) Bool)

(assert (=> b!7246545 (isEmpty!40486 s1!1971)))

(declare-fun lt!2582870 () Unit!163799)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!53 ((Set Context!15096) List!70415) Unit!163799)

(assert (=> b!7246545 (= lt!2582870 (lemmaZipperOfEmptyContextMatchesEmptyString!53 lt!2582868 s1!1971))))

(declare-fun b!7246546 () Bool)

(assert (=> b!7246546 (= e!4344888 e!4344884)))

(declare-fun res!2939330 () Bool)

(assert (=> b!7246546 (=> (not res!2939330) (not e!4344884))))

(assert (=> b!7246546 (= res!2939330 (is-Nil!70290 (exprs!8048 ct1!232)))))

(declare-fun ++!16486 (List!70414 List!70414) List!70414)

(assert (=> b!7246546 (= lt!2582869 (++!16486 (exprs!8048 ct1!232) (exprs!8048 ct2!328)))))

(declare-fun lt!2582871 () Unit!163799)

(assert (=> b!7246546 (= lt!2582871 (lemmaConcatPreservesForall!1415 (exprs!8048 ct1!232) (exprs!8048 ct2!328) lambda!443212))))

(declare-fun b!7246547 () Bool)

(declare-fun res!2939328 () Bool)

(assert (=> b!7246547 (=> (not res!2939328) (not e!4344888))))

(declare-fun s2!1849 () List!70415)

(assert (=> b!7246547 (= res!2939328 (matchZipper!3518 (set.insert ct2!328 (as set.empty (Set Context!15096))) s2!1849))))

(declare-fun b!7246548 () Bool)

(declare-fun tp!2036539 () Bool)

(assert (=> b!7246548 (= e!4344883 (and tp_is_empty!46681 tp!2036539))))

(assert (= (and start!704730 res!2939329) b!7246547))

(assert (= (and b!7246547 res!2939328) b!7246546))

(assert (= (and b!7246546 res!2939330) b!7246545))

(assert (= start!704730 b!7246542))

(assert (= (and start!704730 (is-Cons!70291 s1!1971)) b!7246548))

(assert (= (and start!704730 (is-Cons!70291 s2!1849)) b!7246544))

(assert (= start!704730 b!7246543))

(declare-fun m!7923382 () Bool)

(assert (=> start!704730 m!7923382))

(declare-fun m!7923384 () Bool)

(assert (=> start!704730 m!7923384))

(declare-fun m!7923386 () Bool)

(assert (=> start!704730 m!7923386))

(declare-fun m!7923388 () Bool)

(assert (=> start!704730 m!7923388))

(declare-fun m!7923390 () Bool)

(assert (=> b!7246545 m!7923390))

(declare-fun m!7923392 () Bool)

(assert (=> b!7246545 m!7923392))

(declare-fun m!7923394 () Bool)

(assert (=> b!7246545 m!7923394))

(declare-fun m!7923396 () Bool)

(assert (=> b!7246545 m!7923396))

(declare-fun m!7923398 () Bool)

(assert (=> b!7246546 m!7923398))

(assert (=> b!7246546 m!7923392))

(declare-fun m!7923400 () Bool)

(assert (=> b!7246547 m!7923400))

(assert (=> b!7246547 m!7923400))

(declare-fun m!7923402 () Bool)

(assert (=> b!7246547 m!7923402))

(push 1)

(assert (not b!7246544))

(assert tp_is_empty!46681)

(assert (not b!7246547))

(assert (not start!704730))

(assert (not b!7246545))

(assert (not b!7246543))

(assert (not b!7246542))

(assert (not b!7246548))

(assert (not b!7246546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1905302 () Bool)

(declare-fun d!2251935 () Bool)

(assert (= bs!1905302 (and d!2251935 b!7246546)))

(declare-fun lambda!443220 () Int)

(assert (=> bs!1905302 (= lambda!443220 lambda!443212)))

(declare-fun forall!17449 (List!70414 Int) Bool)

(assert (=> d!2251935 (= (inv!89531 (Context!15097 lt!2582869)) (forall!17449 (exprs!8048 (Context!15097 lt!2582869)) lambda!443220))))

(declare-fun bs!1905303 () Bool)

(assert (= bs!1905303 d!2251935))

(declare-fun m!7923426 () Bool)

(assert (=> bs!1905303 m!7923426))

(assert (=> b!7246545 d!2251935))

(declare-fun d!2251937 () Bool)

(assert (=> d!2251937 (forall!17449 (++!16486 (exprs!8048 ct1!232) (exprs!8048 ct2!328)) lambda!443212)))

(declare-fun lt!2582890 () Unit!163799)

(declare-fun choose!55909 (List!70414 List!70414 Int) Unit!163799)

(assert (=> d!2251937 (= lt!2582890 (choose!55909 (exprs!8048 ct1!232) (exprs!8048 ct2!328) lambda!443212))))

(assert (=> d!2251937 (forall!17449 (exprs!8048 ct1!232) lambda!443212)))

(assert (=> d!2251937 (= (lemmaConcatPreservesForall!1415 (exprs!8048 ct1!232) (exprs!8048 ct2!328) lambda!443212) lt!2582890)))

(declare-fun bs!1905304 () Bool)

(assert (= bs!1905304 d!2251937))

(assert (=> bs!1905304 m!7923398))

(assert (=> bs!1905304 m!7923398))

(declare-fun m!7923428 () Bool)

(assert (=> bs!1905304 m!7923428))

(declare-fun m!7923430 () Bool)

(assert (=> bs!1905304 m!7923430))

(declare-fun m!7923432 () Bool)

(assert (=> bs!1905304 m!7923432))

(assert (=> b!7246545 d!2251937))

(declare-fun d!2251941 () Bool)

(assert (=> d!2251941 (= (isEmpty!40486 s1!1971) (is-Nil!70291 s1!1971))))

(assert (=> b!7246545 d!2251941))

(declare-fun d!2251943 () Bool)

(assert (=> d!2251943 (= (matchZipper!3518 lt!2582868 s1!1971) (isEmpty!40486 s1!1971))))

(declare-fun lt!2582893 () Unit!163799)

(declare-fun choose!55910 ((Set Context!15096) List!70415) Unit!163799)

(assert (=> d!2251943 (= lt!2582893 (choose!55910 lt!2582868 s1!1971))))

(assert (=> d!2251943 (= lt!2582868 (set.singleton (Context!15097 Nil!70290)))))

(assert (=> d!2251943 (= (lemmaZipperOfEmptyContextMatchesEmptyString!53 lt!2582868 s1!1971) lt!2582893)))

(declare-fun bs!1905305 () Bool)

(assert (= bs!1905305 d!2251943))

(assert (=> bs!1905305 m!7923382))

(assert (=> bs!1905305 m!7923394))

(declare-fun m!7923434 () Bool)

(assert (=> bs!1905305 m!7923434))

(assert (=> b!7246545 d!2251943))

(declare-fun b!7246584 () Bool)

(declare-fun e!4344914 () List!70414)

(assert (=> b!7246584 (= e!4344914 (exprs!8048 ct2!328))))

(declare-fun b!7246585 () Bool)

(assert (=> b!7246585 (= e!4344914 (Cons!70290 (h!76738 (exprs!8048 ct1!232)) (++!16486 (t!384466 (exprs!8048 ct1!232)) (exprs!8048 ct2!328))))))

(declare-fun e!4344915 () Bool)

(declare-fun b!7246587 () Bool)

(declare-fun lt!2582896 () List!70414)

(assert (=> b!7246587 (= e!4344915 (or (not (= (exprs!8048 ct2!328) Nil!70290)) (= lt!2582896 (exprs!8048 ct1!232))))))

(declare-fun d!2251945 () Bool)

(assert (=> d!2251945 e!4344915))

(declare-fun res!2939345 () Bool)

(assert (=> d!2251945 (=> (not res!2939345) (not e!4344915))))

(declare-fun content!14550 (List!70414) (Set Regex!18608))

(assert (=> d!2251945 (= res!2939345 (= (content!14550 lt!2582896) (set.union (content!14550 (exprs!8048 ct1!232)) (content!14550 (exprs!8048 ct2!328)))))))

(assert (=> d!2251945 (= lt!2582896 e!4344914)))

(declare-fun c!1346235 () Bool)

(assert (=> d!2251945 (= c!1346235 (is-Nil!70290 (exprs!8048 ct1!232)))))

(assert (=> d!2251945 (= (++!16486 (exprs!8048 ct1!232) (exprs!8048 ct2!328)) lt!2582896)))

(declare-fun b!7246586 () Bool)

(declare-fun res!2939344 () Bool)

(assert (=> b!7246586 (=> (not res!2939344) (not e!4344915))))

(declare-fun size!41675 (List!70414) Int)

(assert (=> b!7246586 (= res!2939344 (= (size!41675 lt!2582896) (+ (size!41675 (exprs!8048 ct1!232)) (size!41675 (exprs!8048 ct2!328)))))))

(assert (= (and d!2251945 c!1346235) b!7246584))

(assert (= (and d!2251945 (not c!1346235)) b!7246585))

(assert (= (and d!2251945 res!2939345) b!7246586))

(assert (= (and b!7246586 res!2939344) b!7246587))

(declare-fun m!7923446 () Bool)

(assert (=> b!7246585 m!7923446))

(declare-fun m!7923448 () Bool)

(assert (=> d!2251945 m!7923448))

(declare-fun m!7923450 () Bool)

(assert (=> d!2251945 m!7923450))

(declare-fun m!7923452 () Bool)

(assert (=> d!2251945 m!7923452))

(declare-fun m!7923454 () Bool)

(assert (=> b!7246586 m!7923454))

(declare-fun m!7923456 () Bool)

(assert (=> b!7246586 m!7923456))

(declare-fun m!7923458 () Bool)

(assert (=> b!7246586 m!7923458))

(assert (=> b!7246546 d!2251945))

(assert (=> b!7246546 d!2251937))

(declare-fun d!2251949 () Bool)

(declare-fun c!1346239 () Bool)

(assert (=> d!2251949 (= c!1346239 (isEmpty!40486 s2!1849))))

(declare-fun e!4344919 () Bool)

(assert (=> d!2251949 (= (matchZipper!3518 (set.insert ct2!328 (as set.empty (Set Context!15096))) s2!1849) e!4344919)))

(declare-fun b!7246594 () Bool)

(declare-fun nullableZipper!2889 ((Set Context!15096)) Bool)

(assert (=> b!7246594 (= e!4344919 (nullableZipper!2889 (set.insert ct2!328 (as set.empty (Set Context!15096)))))))

(declare-fun b!7246595 () Bool)

(declare-fun derivationStepZipper!3394 ((Set Context!15096) C!37490) (Set Context!15096))

(declare-fun head!14877 (List!70415) C!37490)

(declare-fun tail!14279 (List!70415) List!70415)

(assert (=> b!7246595 (= e!4344919 (matchZipper!3518 (derivationStepZipper!3394 (set.insert ct2!328 (as set.empty (Set Context!15096))) (head!14877 s2!1849)) (tail!14279 s2!1849)))))

(assert (= (and d!2251949 c!1346239) b!7246594))

(assert (= (and d!2251949 (not c!1346239)) b!7246595))

(declare-fun m!7923476 () Bool)

(assert (=> d!2251949 m!7923476))

(assert (=> b!7246594 m!7923400))

(declare-fun m!7923478 () Bool)

(assert (=> b!7246594 m!7923478))

(declare-fun m!7923480 () Bool)

(assert (=> b!7246595 m!7923480))

(assert (=> b!7246595 m!7923400))

(assert (=> b!7246595 m!7923480))

(declare-fun m!7923482 () Bool)

(assert (=> b!7246595 m!7923482))

(declare-fun m!7923484 () Bool)

(assert (=> b!7246595 m!7923484))

(assert (=> b!7246595 m!7923482))

(assert (=> b!7246595 m!7923484))

(declare-fun m!7923486 () Bool)

(assert (=> b!7246595 m!7923486))

(assert (=> b!7246547 d!2251949))

(declare-fun d!2251957 () Bool)

(declare-fun c!1346240 () Bool)

(assert (=> d!2251957 (= c!1346240 (isEmpty!40486 s1!1971))))

(declare-fun e!4344920 () Bool)

(assert (=> d!2251957 (= (matchZipper!3518 lt!2582868 s1!1971) e!4344920)))

(declare-fun b!7246596 () Bool)

(assert (=> b!7246596 (= e!4344920 (nullableZipper!2889 lt!2582868))))

(declare-fun b!7246597 () Bool)

(assert (=> b!7246597 (= e!4344920 (matchZipper!3518 (derivationStepZipper!3394 lt!2582868 (head!14877 s1!1971)) (tail!14279 s1!1971)))))

(assert (= (and d!2251957 c!1346240) b!7246596))

(assert (= (and d!2251957 (not c!1346240)) b!7246597))

(assert (=> d!2251957 m!7923394))

(declare-fun m!7923490 () Bool)

(assert (=> b!7246596 m!7923490))

(declare-fun m!7923492 () Bool)

(assert (=> b!7246597 m!7923492))

(assert (=> b!7246597 m!7923492))

(declare-fun m!7923494 () Bool)

(assert (=> b!7246597 m!7923494))

(declare-fun m!7923496 () Bool)

(assert (=> b!7246597 m!7923496))

(assert (=> b!7246597 m!7923494))

(assert (=> b!7246597 m!7923496))

(declare-fun m!7923498 () Bool)

(assert (=> b!7246597 m!7923498))

(assert (=> start!704730 d!2251957))

(declare-fun bs!1905315 () Bool)

(declare-fun d!2251961 () Bool)

(assert (= bs!1905315 (and d!2251961 b!7246546)))

(declare-fun lambda!443226 () Int)

(assert (=> bs!1905315 (= lambda!443226 lambda!443212)))

(declare-fun bs!1905316 () Bool)

(assert (= bs!1905316 (and d!2251961 d!2251935)))

(assert (=> bs!1905316 (= lambda!443226 lambda!443220)))

(assert (=> d!2251961 (= (inv!89531 ct1!232) (forall!17449 (exprs!8048 ct1!232) lambda!443226))))

(declare-fun bs!1905317 () Bool)

(assert (= bs!1905317 d!2251961))

(declare-fun m!7923500 () Bool)

(assert (=> bs!1905317 m!7923500))

(assert (=> start!704730 d!2251961))

(declare-fun bs!1905318 () Bool)

(declare-fun d!2251963 () Bool)

(assert (= bs!1905318 (and d!2251963 b!7246546)))

(declare-fun lambda!443227 () Int)

(assert (=> bs!1905318 (= lambda!443227 lambda!443212)))

(declare-fun bs!1905319 () Bool)

(assert (= bs!1905319 (and d!2251963 d!2251935)))

(assert (=> bs!1905319 (= lambda!443227 lambda!443220)))

(declare-fun bs!1905320 () Bool)

(assert (= bs!1905320 (and d!2251963 d!2251961)))

(assert (=> bs!1905320 (= lambda!443227 lambda!443226)))

(assert (=> d!2251963 (= (inv!89531 ct2!328) (forall!17449 (exprs!8048 ct2!328) lambda!443227))))

(declare-fun bs!1905321 () Bool)

(assert (= bs!1905321 d!2251963))

(declare-fun m!7923502 () Bool)

(assert (=> bs!1905321 m!7923502))

(assert (=> start!704730 d!2251963))

(declare-fun b!7246602 () Bool)

(declare-fun e!4344923 () Bool)

(declare-fun tp!2036557 () Bool)

(declare-fun tp!2036558 () Bool)

(assert (=> b!7246602 (= e!4344923 (and tp!2036557 tp!2036558))))

(assert (=> b!7246542 (= tp!2036537 e!4344923)))

(assert (= (and b!7246542 (is-Cons!70290 (exprs!8048 ct1!232))) b!7246602))

(declare-fun b!7246607 () Bool)

(declare-fun e!4344926 () Bool)

(declare-fun tp!2036561 () Bool)

(assert (=> b!7246607 (= e!4344926 (and tp_is_empty!46681 tp!2036561))))

(assert (=> b!7246548 (= tp!2036539 e!4344926)))

(assert (= (and b!7246548 (is-Cons!70291 (t!384467 s1!1971))) b!7246607))

(declare-fun b!7246608 () Bool)

(declare-fun e!4344927 () Bool)

(declare-fun tp!2036562 () Bool)

(declare-fun tp!2036563 () Bool)

(assert (=> b!7246608 (= e!4344927 (and tp!2036562 tp!2036563))))

(assert (=> b!7246543 (= tp!2036540 e!4344927)))

(assert (= (and b!7246543 (is-Cons!70290 (exprs!8048 ct2!328))) b!7246608))

(declare-fun b!7246609 () Bool)

(declare-fun e!4344928 () Bool)

(declare-fun tp!2036564 () Bool)

(assert (=> b!7246609 (= e!4344928 (and tp_is_empty!46681 tp!2036564))))

(assert (=> b!7246544 (= tp!2036538 e!4344928)))

(assert (= (and b!7246544 (is-Cons!70291 (t!384467 s2!1849))) b!7246609))

(push 1)

(assert (not d!2251961))

(assert (not b!7246602))

(assert (not d!2251935))

(assert tp_is_empty!46681)

(assert (not b!7246585))

(assert (not b!7246586))

(assert (not b!7246596))

(assert (not b!7246608))

(assert (not b!7246609))

(assert (not b!7246597))

(assert (not b!7246594))

(assert (not d!2251957))

(assert (not b!7246595))

(assert (not d!2251945))

(assert (not d!2251943))

(assert (not d!2251949))

(assert (not d!2251937))

(assert (not b!7246607))

(assert (not d!2251963))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

