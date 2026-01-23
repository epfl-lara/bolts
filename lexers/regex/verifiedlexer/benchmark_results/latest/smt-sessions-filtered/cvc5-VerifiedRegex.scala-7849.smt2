; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!411482 () Bool)

(assert start!411482)

(declare-fun b!4282276 () Bool)

(declare-fun e!2658404 () Bool)

(declare-fun tp_is_empty!23051 () Bool)

(declare-fun tp!1309537 () Bool)

(assert (=> b!4282276 (= e!2658404 (and tp_is_empty!23051 tp!1309537))))

(declare-fun b!4282277 () Bool)

(declare-fun e!2658405 () Bool)

(declare-datatypes ((B!2903 0))(
  ( (B!2904 (val!15321 Int)) )
))
(declare-datatypes ((List!47530 0))(
  ( (Nil!47406) (Cons!47406 (h!52826 B!2903) (t!354119 List!47530)) )
))
(declare-fun l!2982 () List!47530)

(declare-fun i!813 () Int)

(declare-fun tail!6887 (List!47530) List!47530)

(declare-fun drop!2180 (List!47530 Int) List!47530)

(assert (=> b!4282277 (= e!2658405 (not (= (tail!6887 (drop!2180 l!2982 i!813)) (drop!2180 l!2982 (+ 1 i!813)))))))

(assert (=> b!4282277 (= (tail!6887 (drop!2180 (t!354119 l!2982) (- i!813 1))) (drop!2180 (t!354119 l!2982) (+ 1 (- i!813 1))))))

(declare-datatypes ((Unit!66355 0))(
  ( (Unit!66356) )
))
(declare-fun lt!1515352 () Unit!66355)

(declare-fun lemmaDropTail!1144 (List!47530 Int) Unit!66355)

(assert (=> b!4282277 (= lt!1515352 (lemmaDropTail!1144 (t!354119 l!2982) (- i!813 1)))))

(declare-fun res!1757533 () Bool)

(assert (=> start!411482 (=> (not res!1757533) (not e!2658405))))

(assert (=> start!411482 (= res!1757533 (>= i!813 0))))

(assert (=> start!411482 e!2658405))

(assert (=> start!411482 true))

(assert (=> start!411482 e!2658404))

(declare-fun b!4282278 () Bool)

(declare-fun res!1757532 () Bool)

(assert (=> b!4282278 (=> (not res!1757532) (not e!2658405))))

(assert (=> b!4282278 (= res!1757532 (and (not (is-Nil!47406 l!2982)) (not (= i!813 0)) (>= (- i!813 1) 0)))))

(declare-fun b!4282279 () Bool)

(declare-fun res!1757534 () Bool)

(assert (=> b!4282279 (=> (not res!1757534) (not e!2658405))))

(declare-fun size!34742 (List!47530) Int)

(assert (=> b!4282279 (= res!1757534 (< (- i!813 1) (size!34742 (t!354119 l!2982))))))

(declare-fun b!4282280 () Bool)

(declare-fun res!1757535 () Bool)

(assert (=> b!4282280 (=> (not res!1757535) (not e!2658405))))

(assert (=> b!4282280 (= res!1757535 (< i!813 (size!34742 l!2982)))))

(assert (= (and start!411482 res!1757533) b!4282280))

(assert (= (and b!4282280 res!1757535) b!4282278))

(assert (= (and b!4282278 res!1757532) b!4282279))

(assert (= (and b!4282279 res!1757534) b!4282277))

(assert (= (and start!411482 (is-Cons!47406 l!2982)) b!4282276))

(declare-fun m!4879343 () Bool)

(assert (=> b!4282277 m!4879343))

(declare-fun m!4879345 () Bool)

(assert (=> b!4282277 m!4879345))

(declare-fun m!4879347 () Bool)

(assert (=> b!4282277 m!4879347))

(declare-fun m!4879349 () Bool)

(assert (=> b!4282277 m!4879349))

(declare-fun m!4879351 () Bool)

(assert (=> b!4282277 m!4879351))

(assert (=> b!4282277 m!4879345))

(declare-fun m!4879353 () Bool)

(assert (=> b!4282277 m!4879353))

(assert (=> b!4282277 m!4879347))

(declare-fun m!4879355 () Bool)

(assert (=> b!4282277 m!4879355))

(declare-fun m!4879357 () Bool)

(assert (=> b!4282279 m!4879357))

(declare-fun m!4879359 () Bool)

(assert (=> b!4282280 m!4879359))

(push 1)

(assert (not b!4282276))

(assert (not b!4282277))

(assert (not b!4282280))

(assert (not b!4282279))

(assert tp_is_empty!23051)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1264906 () Bool)

(declare-fun lt!1515358 () Int)

(assert (=> d!1264906 (>= lt!1515358 0)))

(declare-fun e!2658414 () Int)

(assert (=> d!1264906 (= lt!1515358 e!2658414)))

(declare-fun c!729925 () Bool)

(assert (=> d!1264906 (= c!729925 (is-Nil!47406 l!2982))))

(assert (=> d!1264906 (= (size!34742 l!2982) lt!1515358)))

(declare-fun b!4282300 () Bool)

(assert (=> b!4282300 (= e!2658414 0)))

(declare-fun b!4282301 () Bool)

(assert (=> b!4282301 (= e!2658414 (+ 1 (size!34742 (t!354119 l!2982))))))

(assert (= (and d!1264906 c!729925) b!4282300))

(assert (= (and d!1264906 (not c!729925)) b!4282301))

(assert (=> b!4282301 m!4879357))

(assert (=> b!4282280 d!1264906))

(declare-fun d!1264908 () Bool)

(declare-fun lt!1515359 () Int)

(assert (=> d!1264908 (>= lt!1515359 0)))

(declare-fun e!2658415 () Int)

(assert (=> d!1264908 (= lt!1515359 e!2658415)))

(declare-fun c!729926 () Bool)

(assert (=> d!1264908 (= c!729926 (is-Nil!47406 (t!354119 l!2982)))))

(assert (=> d!1264908 (= (size!34742 (t!354119 l!2982)) lt!1515359)))

(declare-fun b!4282302 () Bool)

(assert (=> b!4282302 (= e!2658415 0)))

(declare-fun b!4282303 () Bool)

(assert (=> b!4282303 (= e!2658415 (+ 1 (size!34742 (t!354119 (t!354119 l!2982)))))))

(assert (= (and d!1264908 c!729926) b!4282302))

(assert (= (and d!1264908 (not c!729926)) b!4282303))

(declare-fun m!4879379 () Bool)

(assert (=> b!4282303 m!4879379))

(assert (=> b!4282279 d!1264908))

(declare-fun d!1264910 () Bool)

(declare-fun e!2658426 () Bool)

(assert (=> d!1264910 e!2658426))

(declare-fun res!1757550 () Bool)

(assert (=> d!1264910 (=> (not res!1757550) (not e!2658426))))

(declare-fun lt!1515362 () List!47530)

(declare-fun content!7516 (List!47530) (Set B!2903))

(assert (=> d!1264910 (= res!1757550 (set.subset (content!7516 lt!1515362) (content!7516 (t!354119 l!2982))))))

(declare-fun e!2658429 () List!47530)

(assert (=> d!1264910 (= lt!1515362 e!2658429)))

(declare-fun c!729935 () Bool)

(assert (=> d!1264910 (= c!729935 (is-Nil!47406 (t!354119 l!2982)))))

(assert (=> d!1264910 (= (drop!2180 (t!354119 l!2982) (+ 1 (- i!813 1))) lt!1515362)))

(declare-fun b!4282322 () Bool)

(assert (=> b!4282322 (= e!2658429 Nil!47406)))

(declare-fun b!4282323 () Bool)

(declare-fun e!2658430 () Int)

(declare-fun e!2658427 () Int)

(assert (=> b!4282323 (= e!2658430 e!2658427)))

(declare-fun c!729936 () Bool)

(declare-fun call!294404 () Int)

(assert (=> b!4282323 (= c!729936 (>= (+ 1 (- i!813 1)) call!294404))))

(declare-fun b!4282324 () Bool)

(declare-fun e!2658428 () List!47530)

(assert (=> b!4282324 (= e!2658428 (t!354119 l!2982))))

(declare-fun bm!294399 () Bool)

(assert (=> bm!294399 (= call!294404 (size!34742 (t!354119 l!2982)))))

(declare-fun b!4282325 () Bool)

(assert (=> b!4282325 (= e!2658430 call!294404)))

(declare-fun b!4282326 () Bool)

(assert (=> b!4282326 (= e!2658428 (drop!2180 (t!354119 (t!354119 l!2982)) (- (+ 1 (- i!813 1)) 1)))))

(declare-fun b!4282327 () Bool)

(assert (=> b!4282327 (= e!2658427 (- call!294404 (+ 1 (- i!813 1))))))

(declare-fun b!4282328 () Bool)

(assert (=> b!4282328 (= e!2658426 (= (size!34742 lt!1515362) e!2658430))))

(declare-fun c!729937 () Bool)

(assert (=> b!4282328 (= c!729937 (<= (+ 1 (- i!813 1)) 0))))

(declare-fun b!4282329 () Bool)

(assert (=> b!4282329 (= e!2658427 0)))

(declare-fun b!4282330 () Bool)

(assert (=> b!4282330 (= e!2658429 e!2658428)))

(declare-fun c!729938 () Bool)

(assert (=> b!4282330 (= c!729938 (<= (+ 1 (- i!813 1)) 0))))

(assert (= (and d!1264910 c!729935) b!4282322))

(assert (= (and d!1264910 (not c!729935)) b!4282330))

(assert (= (and b!4282330 c!729938) b!4282324))

(assert (= (and b!4282330 (not c!729938)) b!4282326))

(assert (= (and d!1264910 res!1757550) b!4282328))

(assert (= (and b!4282328 c!729937) b!4282325))

(assert (= (and b!4282328 (not c!729937)) b!4282323))

(assert (= (and b!4282323 c!729936) b!4282329))

(assert (= (and b!4282323 (not c!729936)) b!4282327))

(assert (= (or b!4282325 b!4282323 b!4282327) bm!294399))

(declare-fun m!4879381 () Bool)

(assert (=> d!1264910 m!4879381))

(declare-fun m!4879383 () Bool)

(assert (=> d!1264910 m!4879383))

(assert (=> bm!294399 m!4879357))

(declare-fun m!4879385 () Bool)

(assert (=> b!4282326 m!4879385))

(declare-fun m!4879387 () Bool)

(assert (=> b!4282328 m!4879387))

(assert (=> b!4282277 d!1264910))

(declare-fun d!1264914 () Bool)

(assert (=> d!1264914 (= (tail!6887 (drop!2180 (t!354119 l!2982) (- i!813 1))) (drop!2180 (t!354119 l!2982) (+ (- i!813 1) 1)))))

(declare-fun lt!1515367 () Unit!66355)

(declare-fun choose!26125 (List!47530 Int) Unit!66355)

(assert (=> d!1264914 (= lt!1515367 (choose!26125 (t!354119 l!2982) (- i!813 1)))))

(declare-fun e!2658437 () Bool)

(assert (=> d!1264914 e!2658437))

(declare-fun res!1757553 () Bool)

(assert (=> d!1264914 (=> (not res!1757553) (not e!2658437))))

(assert (=> d!1264914 (= res!1757553 (>= (- i!813 1) 0))))

(assert (=> d!1264914 (= (lemmaDropTail!1144 (t!354119 l!2982) (- i!813 1)) lt!1515367)))

(declare-fun b!4282341 () Bool)

(assert (=> b!4282341 (= e!2658437 (< (- i!813 1) (size!34742 (t!354119 l!2982))))))

(assert (= (and d!1264914 res!1757553) b!4282341))

(assert (=> d!1264914 m!4879347))

(assert (=> d!1264914 m!4879347))

(assert (=> d!1264914 m!4879355))

(declare-fun m!4879389 () Bool)

(assert (=> d!1264914 m!4879389))

(declare-fun m!4879391 () Bool)

(assert (=> d!1264914 m!4879391))

(assert (=> b!4282341 m!4879357))

(assert (=> b!4282277 d!1264914))

(declare-fun d!1264916 () Bool)

(declare-fun e!2658438 () Bool)

(assert (=> d!1264916 e!2658438))

(declare-fun res!1757554 () Bool)

(assert (=> d!1264916 (=> (not res!1757554) (not e!2658438))))

(declare-fun lt!1515368 () List!47530)

(assert (=> d!1264916 (= res!1757554 (set.subset (content!7516 lt!1515368) (content!7516 (t!354119 l!2982))))))

(declare-fun e!2658441 () List!47530)

(assert (=> d!1264916 (= lt!1515368 e!2658441)))

(declare-fun c!729943 () Bool)

(assert (=> d!1264916 (= c!729943 (is-Nil!47406 (t!354119 l!2982)))))

(assert (=> d!1264916 (= (drop!2180 (t!354119 l!2982) (- i!813 1)) lt!1515368)))

(declare-fun b!4282342 () Bool)

(assert (=> b!4282342 (= e!2658441 Nil!47406)))

(declare-fun b!4282343 () Bool)

(declare-fun e!2658442 () Int)

(declare-fun e!2658439 () Int)

(assert (=> b!4282343 (= e!2658442 e!2658439)))

(declare-fun c!729944 () Bool)

(declare-fun call!294405 () Int)

(assert (=> b!4282343 (= c!729944 (>= (- i!813 1) call!294405))))

(declare-fun b!4282344 () Bool)

(declare-fun e!2658440 () List!47530)

(assert (=> b!4282344 (= e!2658440 (t!354119 l!2982))))

(declare-fun bm!294400 () Bool)

(assert (=> bm!294400 (= call!294405 (size!34742 (t!354119 l!2982)))))

(declare-fun b!4282345 () Bool)

(assert (=> b!4282345 (= e!2658442 call!294405)))

(declare-fun b!4282346 () Bool)

(assert (=> b!4282346 (= e!2658440 (drop!2180 (t!354119 (t!354119 l!2982)) (- (- i!813 1) 1)))))

(declare-fun b!4282347 () Bool)

(assert (=> b!4282347 (= e!2658439 (- call!294405 (- i!813 1)))))

(declare-fun b!4282348 () Bool)

(assert (=> b!4282348 (= e!2658438 (= (size!34742 lt!1515368) e!2658442))))

(declare-fun c!729945 () Bool)

(assert (=> b!4282348 (= c!729945 (<= (- i!813 1) 0))))

(declare-fun b!4282349 () Bool)

(assert (=> b!4282349 (= e!2658439 0)))

(declare-fun b!4282350 () Bool)

(assert (=> b!4282350 (= e!2658441 e!2658440)))

(declare-fun c!729946 () Bool)

(assert (=> b!4282350 (= c!729946 (<= (- i!813 1) 0))))

(assert (= (and d!1264916 c!729943) b!4282342))

(assert (= (and d!1264916 (not c!729943)) b!4282350))

(assert (= (and b!4282350 c!729946) b!4282344))

(assert (= (and b!4282350 (not c!729946)) b!4282346))

(assert (= (and d!1264916 res!1757554) b!4282348))

(assert (= (and b!4282348 c!729945) b!4282345))

(assert (= (and b!4282348 (not c!729945)) b!4282343))

(assert (= (and b!4282343 c!729944) b!4282349))

(assert (= (and b!4282343 (not c!729944)) b!4282347))

(assert (= (or b!4282345 b!4282343 b!4282347) bm!294400))

(declare-fun m!4879393 () Bool)

(assert (=> d!1264916 m!4879393))

(assert (=> d!1264916 m!4879383))

(assert (=> bm!294400 m!4879357))

(declare-fun m!4879395 () Bool)

(assert (=> b!4282346 m!4879395))

(declare-fun m!4879397 () Bool)

(assert (=> b!4282348 m!4879397))

(assert (=> b!4282277 d!1264916))

(declare-fun d!1264918 () Bool)

(assert (=> d!1264918 (= (tail!6887 (drop!2180 l!2982 i!813)) (t!354119 (drop!2180 l!2982 i!813)))))

(assert (=> b!4282277 d!1264918))

(declare-fun d!1264920 () Bool)

(assert (=> d!1264920 (= (tail!6887 (drop!2180 (t!354119 l!2982) (- i!813 1))) (t!354119 (drop!2180 (t!354119 l!2982) (- i!813 1))))))

(assert (=> b!4282277 d!1264920))

(declare-fun d!1264922 () Bool)

(declare-fun e!2658449 () Bool)

(assert (=> d!1264922 e!2658449))

(declare-fun res!1757557 () Bool)

(assert (=> d!1264922 (=> (not res!1757557) (not e!2658449))))

(declare-fun lt!1515369 () List!47530)

(assert (=> d!1264922 (= res!1757557 (set.subset (content!7516 lt!1515369) (content!7516 l!2982)))))

(declare-fun e!2658452 () List!47530)

(assert (=> d!1264922 (= lt!1515369 e!2658452)))

(declare-fun c!729951 () Bool)

(assert (=> d!1264922 (= c!729951 (is-Nil!47406 l!2982))))

(assert (=> d!1264922 (= (drop!2180 l!2982 (+ 1 i!813)) lt!1515369)))

(declare-fun b!4282361 () Bool)

(assert (=> b!4282361 (= e!2658452 Nil!47406)))

(declare-fun b!4282362 () Bool)

(declare-fun e!2658453 () Int)

(declare-fun e!2658450 () Int)

(assert (=> b!4282362 (= e!2658453 e!2658450)))

(declare-fun c!729952 () Bool)

(declare-fun call!294406 () Int)

(assert (=> b!4282362 (= c!729952 (>= (+ 1 i!813) call!294406))))

(declare-fun b!4282363 () Bool)

(declare-fun e!2658451 () List!47530)

(assert (=> b!4282363 (= e!2658451 l!2982)))

(declare-fun bm!294401 () Bool)

(assert (=> bm!294401 (= call!294406 (size!34742 l!2982))))

(declare-fun b!4282364 () Bool)

(assert (=> b!4282364 (= e!2658453 call!294406)))

(declare-fun b!4282365 () Bool)

(assert (=> b!4282365 (= e!2658451 (drop!2180 (t!354119 l!2982) (- (+ 1 i!813) 1)))))

(declare-fun b!4282366 () Bool)

(assert (=> b!4282366 (= e!2658450 (- call!294406 (+ 1 i!813)))))

(declare-fun b!4282367 () Bool)

(assert (=> b!4282367 (= e!2658449 (= (size!34742 lt!1515369) e!2658453))))

(declare-fun c!729953 () Bool)

(assert (=> b!4282367 (= c!729953 (<= (+ 1 i!813) 0))))

(declare-fun b!4282368 () Bool)

(assert (=> b!4282368 (= e!2658450 0)))

(declare-fun b!4282369 () Bool)

(assert (=> b!4282369 (= e!2658452 e!2658451)))

(declare-fun c!729954 () Bool)

(assert (=> b!4282369 (= c!729954 (<= (+ 1 i!813) 0))))

(assert (= (and d!1264922 c!729951) b!4282361))

(assert (= (and d!1264922 (not c!729951)) b!4282369))

(assert (= (and b!4282369 c!729954) b!4282363))

(assert (= (and b!4282369 (not c!729954)) b!4282365))

(assert (= (and d!1264922 res!1757557) b!4282367))

(assert (= (and b!4282367 c!729953) b!4282364))

(assert (= (and b!4282367 (not c!729953)) b!4282362))

(assert (= (and b!4282362 c!729952) b!4282368))

(assert (= (and b!4282362 (not c!729952)) b!4282366))

(assert (= (or b!4282364 b!4282362 b!4282366) bm!294401))

(declare-fun m!4879399 () Bool)

(assert (=> d!1264922 m!4879399))

(declare-fun m!4879401 () Bool)

(assert (=> d!1264922 m!4879401))

(assert (=> bm!294401 m!4879359))

(declare-fun m!4879403 () Bool)

(assert (=> b!4282365 m!4879403))

(declare-fun m!4879405 () Bool)

(assert (=> b!4282367 m!4879405))

(assert (=> b!4282277 d!1264922))

(declare-fun d!1264924 () Bool)

(declare-fun e!2658454 () Bool)

(assert (=> d!1264924 e!2658454))

(declare-fun res!1757558 () Bool)

(assert (=> d!1264924 (=> (not res!1757558) (not e!2658454))))

(declare-fun lt!1515370 () List!47530)

(assert (=> d!1264924 (= res!1757558 (set.subset (content!7516 lt!1515370) (content!7516 l!2982)))))

(declare-fun e!2658457 () List!47530)

(assert (=> d!1264924 (= lt!1515370 e!2658457)))

(declare-fun c!729955 () Bool)

(assert (=> d!1264924 (= c!729955 (is-Nil!47406 l!2982))))

(assert (=> d!1264924 (= (drop!2180 l!2982 i!813) lt!1515370)))

(declare-fun b!4282370 () Bool)

(assert (=> b!4282370 (= e!2658457 Nil!47406)))

(declare-fun b!4282371 () Bool)

(declare-fun e!2658458 () Int)

(declare-fun e!2658455 () Int)

(assert (=> b!4282371 (= e!2658458 e!2658455)))

(declare-fun c!729956 () Bool)

(declare-fun call!294409 () Int)

(assert (=> b!4282371 (= c!729956 (>= i!813 call!294409))))

(declare-fun b!4282372 () Bool)

(declare-fun e!2658456 () List!47530)

(assert (=> b!4282372 (= e!2658456 l!2982)))

(declare-fun bm!294404 () Bool)

(assert (=> bm!294404 (= call!294409 (size!34742 l!2982))))

(declare-fun b!4282373 () Bool)

(assert (=> b!4282373 (= e!2658458 call!294409)))

(declare-fun b!4282374 () Bool)

(assert (=> b!4282374 (= e!2658456 (drop!2180 (t!354119 l!2982) (- i!813 1)))))

(declare-fun b!4282375 () Bool)

(assert (=> b!4282375 (= e!2658455 (- call!294409 i!813))))

(declare-fun b!4282376 () Bool)

(assert (=> b!4282376 (= e!2658454 (= (size!34742 lt!1515370) e!2658458))))

(declare-fun c!729957 () Bool)

(assert (=> b!4282376 (= c!729957 (<= i!813 0))))

(declare-fun b!4282377 () Bool)

(assert (=> b!4282377 (= e!2658455 0)))

(declare-fun b!4282378 () Bool)

(assert (=> b!4282378 (= e!2658457 e!2658456)))

(declare-fun c!729958 () Bool)

(assert (=> b!4282378 (= c!729958 (<= i!813 0))))

(assert (= (and d!1264924 c!729955) b!4282370))

(assert (= (and d!1264924 (not c!729955)) b!4282378))

(assert (= (and b!4282378 c!729958) b!4282372))

(assert (= (and b!4282378 (not c!729958)) b!4282374))

(assert (= (and d!1264924 res!1757558) b!4282376))

(assert (= (and b!4282376 c!729957) b!4282373))

(assert (= (and b!4282376 (not c!729957)) b!4282371))

(assert (= (and b!4282371 c!729956) b!4282377))

(assert (= (and b!4282371 (not c!729956)) b!4282375))

(assert (= (or b!4282373 b!4282371 b!4282375) bm!294404))

(declare-fun m!4879407 () Bool)

(assert (=> d!1264924 m!4879407))

(assert (=> d!1264924 m!4879401))

(assert (=> bm!294404 m!4879359))

(assert (=> b!4282374 m!4879347))

(declare-fun m!4879409 () Bool)

(assert (=> b!4282376 m!4879409))

(assert (=> b!4282277 d!1264924))

(declare-fun b!4282383 () Bool)

(declare-fun e!2658461 () Bool)

(declare-fun tp!1309543 () Bool)

(assert (=> b!4282383 (= e!2658461 (and tp_is_empty!23051 tp!1309543))))

(assert (=> b!4282276 (= tp!1309537 e!2658461)))

(assert (= (and b!4282276 (is-Cons!47406 (t!354119 l!2982))) b!4282383))

(push 1)

(assert (not b!4282348))

(assert (not d!1264922))

(assert (not d!1264910))

(assert (not bm!294399))

(assert (not d!1264924))

(assert (not d!1264914))

(assert (not b!4282301))

(assert (not d!1264916))

(assert (not b!4282383))

(assert (not b!4282376))

(assert (not b!4282303))

(assert (not bm!294404))

(assert (not b!4282328))

(assert (not b!4282326))

(assert (not b!4282346))

(assert (not bm!294401))

(assert (not b!4282365))

(assert (not b!4282374))

(assert tp_is_empty!23051)

(assert (not b!4282341))

(assert (not b!4282367))

(assert (not bm!294400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

