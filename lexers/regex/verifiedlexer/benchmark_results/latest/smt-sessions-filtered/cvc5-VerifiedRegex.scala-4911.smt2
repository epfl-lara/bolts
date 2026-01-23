; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251238 () Bool)

(assert start!251238)

(declare-fun b!2592362 () Bool)

(declare-fun res!1090277 () Bool)

(declare-fun e!1635453 () Bool)

(assert (=> b!2592362 (=> res!1090277 e!1635453)))

(declare-datatypes ((B!2063 0))(
  ( (B!2064 (val!9499 Int)) )
))
(declare-datatypes ((List!29932 0))(
  ( (Nil!29832) (Cons!29832 (h!35252 B!2063) (t!212945 List!29932)) )
))
(declare-fun l!3230 () List!29932)

(declare-fun contains!5382 (List!29932 B!2063) Bool)

(assert (=> b!2592362 (= res!1090277 (contains!5382 (t!212945 l!3230) (h!35252 l!3230)))))

(declare-fun b!2592363 () Bool)

(declare-fun e!1635452 () Bool)

(assert (=> b!2592363 (= e!1635453 e!1635452)))

(declare-fun res!1090272 () Bool)

(assert (=> b!2592363 (=> res!1090272 e!1635452)))

(declare-fun lt!912087 () Int)

(declare-fun size!23139 (List!29932) Int)

(assert (=> b!2592363 (= res!1090272 (not (= (size!23139 l!3230) lt!912087)))))

(declare-fun lt!912091 () Int)

(assert (=> b!2592363 (= lt!912087 (+ 1 lt!912091))))

(declare-fun b!2592364 () Bool)

(declare-fun res!1090275 () Bool)

(assert (=> b!2592364 (=> res!1090275 e!1635453)))

(declare-fun lt!912088 () (Set B!2063))

(assert (=> b!2592364 (= res!1090275 (set.member (h!35252 l!3230) lt!912088))))

(declare-fun b!2592365 () Bool)

(declare-fun e!1635457 () Bool)

(declare-fun lt!912092 () List!29932)

(declare-fun noDuplicate!380 (List!29932) Bool)

(assert (=> b!2592365 (= e!1635457 (noDuplicate!380 lt!912092))))

(declare-datatypes ((Unit!43793 0))(
  ( (Unit!43794) )
))
(declare-fun lt!912090 () Unit!43793)

(declare-fun subsetContains!55 (List!29932 List!29932) Unit!43793)

(assert (=> b!2592365 (= lt!912090 (subsetContains!55 lt!912092 l!3230))))

(declare-fun b!2592366 () Bool)

(declare-fun e!1635455 () Bool)

(assert (=> b!2592366 (= e!1635455 e!1635457)))

(declare-fun res!1090276 () Bool)

(assert (=> b!2592366 (=> res!1090276 e!1635457)))

(assert (=> b!2592366 (= res!1090276 (>= (size!23139 lt!912092) lt!912087))))

(declare-fun lt!912086 () (Set B!2063))

(declare-fun toList!1777 ((Set B!2063)) List!29932)

(assert (=> b!2592366 (= lt!912092 (toList!1777 lt!912086))))

(declare-fun b!2592367 () Bool)

(declare-fun e!1635456 () Bool)

(assert (=> b!2592367 (= e!1635456 (not e!1635453))))

(declare-fun res!1090270 () Bool)

(assert (=> b!2592367 (=> res!1090270 e!1635453)))

(declare-fun lt!912089 () Int)

(assert (=> b!2592367 (= res!1090270 (>= lt!912089 (size!23139 l!3230)))))

(assert (=> b!2592367 (= lt!912089 lt!912091)))

(assert (=> b!2592367 (= lt!912091 (size!23139 (t!212945 l!3230)))))

(assert (=> b!2592367 (= lt!912089 (size!23139 (toList!1777 lt!912088)))))

(declare-fun content!4167 (List!29932) (Set B!2063))

(assert (=> b!2592367 (= lt!912088 (content!4167 (t!212945 l!3230)))))

(declare-fun lt!912093 () Unit!43793)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!67 (List!29932) Unit!43793)

(assert (=> b!2592367 (= lt!912093 (lemmaNoDuplicateThenContentToListSameSize!67 (t!212945 l!3230)))))

(declare-fun b!2592369 () Bool)

(declare-fun res!1090271 () Bool)

(assert (=> b!2592369 (=> (not res!1090271) (not e!1635456))))

(assert (=> b!2592369 (= res!1090271 (is-Cons!29832 l!3230))))

(declare-fun b!2592370 () Bool)

(declare-fun res!1090278 () Bool)

(assert (=> b!2592370 (=> res!1090278 e!1635457)))

(assert (=> b!2592370 (= res!1090278 (not (= lt!912086 (content!4167 l!3230))))))

(declare-fun b!2592371 () Bool)

(assert (=> b!2592371 (= e!1635452 e!1635455)))

(declare-fun res!1090273 () Bool)

(assert (=> b!2592371 (=> res!1090273 e!1635455)))

(assert (=> b!2592371 (= res!1090273 (not (= (content!4167 l!3230) lt!912086)))))

(assert (=> b!2592371 (= lt!912086 (set.union lt!912088 (set.insert (h!35252 l!3230) (as set.empty (Set B!2063)))))))

(declare-fun b!2592368 () Bool)

(declare-fun e!1635454 () Bool)

(declare-fun tp_is_empty!13343 () Bool)

(declare-fun tp!822785 () Bool)

(assert (=> b!2592368 (= e!1635454 (and tp_is_empty!13343 tp!822785))))

(declare-fun res!1090274 () Bool)

(assert (=> start!251238 (=> (not res!1090274) (not e!1635456))))

(assert (=> start!251238 (= res!1090274 (noDuplicate!380 l!3230))))

(assert (=> start!251238 e!1635456))

(assert (=> start!251238 e!1635454))

(assert (= (and start!251238 res!1090274) b!2592369))

(assert (= (and b!2592369 res!1090271) b!2592367))

(assert (= (and b!2592367 (not res!1090270)) b!2592364))

(assert (= (and b!2592364 (not res!1090275)) b!2592362))

(assert (= (and b!2592362 (not res!1090277)) b!2592363))

(assert (= (and b!2592363 (not res!1090272)) b!2592371))

(assert (= (and b!2592371 (not res!1090273)) b!2592366))

(assert (= (and b!2592366 (not res!1090276)) b!2592370))

(assert (= (and b!2592370 (not res!1090278)) b!2592365))

(assert (= (and start!251238 (is-Cons!29832 l!3230)) b!2592368))

(declare-fun m!2928413 () Bool)

(assert (=> b!2592362 m!2928413))

(declare-fun m!2928415 () Bool)

(assert (=> b!2592365 m!2928415))

(declare-fun m!2928417 () Bool)

(assert (=> b!2592365 m!2928417))

(declare-fun m!2928419 () Bool)

(assert (=> b!2592367 m!2928419))

(declare-fun m!2928421 () Bool)

(assert (=> b!2592367 m!2928421))

(declare-fun m!2928423 () Bool)

(assert (=> b!2592367 m!2928423))

(assert (=> b!2592367 m!2928421))

(declare-fun m!2928425 () Bool)

(assert (=> b!2592367 m!2928425))

(declare-fun m!2928427 () Bool)

(assert (=> b!2592367 m!2928427))

(declare-fun m!2928429 () Bool)

(assert (=> b!2592367 m!2928429))

(declare-fun m!2928431 () Bool)

(assert (=> b!2592371 m!2928431))

(declare-fun m!2928433 () Bool)

(assert (=> b!2592371 m!2928433))

(declare-fun m!2928435 () Bool)

(assert (=> b!2592364 m!2928435))

(declare-fun m!2928437 () Bool)

(assert (=> b!2592366 m!2928437))

(declare-fun m!2928439 () Bool)

(assert (=> b!2592366 m!2928439))

(assert (=> b!2592363 m!2928419))

(declare-fun m!2928441 () Bool)

(assert (=> start!251238 m!2928441))

(assert (=> b!2592370 m!2928431))

(push 1)

(assert (not b!2592371))

(assert (not b!2592370))

(assert (not start!251238))

(assert (not b!2592363))

(assert (not b!2592365))

(assert tp_is_empty!13343)

(assert (not b!2592362))

(assert (not b!2592367))

(assert (not b!2592368))

(assert (not b!2592366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734382 () Bool)

(declare-fun lt!912123 () Int)

(assert (=> d!734382 (>= lt!912123 0)))

(declare-fun e!1635481 () Int)

(assert (=> d!734382 (= lt!912123 e!1635481)))

(declare-fun c!417894 () Bool)

(assert (=> d!734382 (= c!417894 (is-Nil!29832 (toList!1777 lt!912088)))))

(assert (=> d!734382 (= (size!23139 (toList!1777 lt!912088)) lt!912123)))

(declare-fun b!2592412 () Bool)

(assert (=> b!2592412 (= e!1635481 0)))

(declare-fun b!2592413 () Bool)

(assert (=> b!2592413 (= e!1635481 (+ 1 (size!23139 (t!212945 (toList!1777 lt!912088)))))))

(assert (= (and d!734382 c!417894) b!2592412))

(assert (= (and d!734382 (not c!417894)) b!2592413))

(declare-fun m!2928475 () Bool)

(assert (=> b!2592413 m!2928475))

(assert (=> b!2592367 d!734382))

(declare-fun d!734386 () Bool)

(declare-fun lt!912124 () Int)

(assert (=> d!734386 (>= lt!912124 0)))

(declare-fun e!1635482 () Int)

(assert (=> d!734386 (= lt!912124 e!1635482)))

(declare-fun c!417895 () Bool)

(assert (=> d!734386 (= c!417895 (is-Nil!29832 l!3230))))

(assert (=> d!734386 (= (size!23139 l!3230) lt!912124)))

(declare-fun b!2592414 () Bool)

(assert (=> b!2592414 (= e!1635482 0)))

(declare-fun b!2592415 () Bool)

(assert (=> b!2592415 (= e!1635482 (+ 1 (size!23139 (t!212945 l!3230))))))

(assert (= (and d!734386 c!417895) b!2592414))

(assert (= (and d!734386 (not c!417895)) b!2592415))

(assert (=> b!2592415 m!2928425))

(assert (=> b!2592367 d!734386))

(declare-fun d!734388 () Bool)

(declare-fun lt!912125 () Int)

(assert (=> d!734388 (>= lt!912125 0)))

(declare-fun e!1635483 () Int)

(assert (=> d!734388 (= lt!912125 e!1635483)))

(declare-fun c!417896 () Bool)

(assert (=> d!734388 (= c!417896 (is-Nil!29832 (t!212945 l!3230)))))

(assert (=> d!734388 (= (size!23139 (t!212945 l!3230)) lt!912125)))

(declare-fun b!2592416 () Bool)

(assert (=> b!2592416 (= e!1635483 0)))

(declare-fun b!2592417 () Bool)

(assert (=> b!2592417 (= e!1635483 (+ 1 (size!23139 (t!212945 (t!212945 l!3230)))))))

(assert (= (and d!734388 c!417896) b!2592416))

(assert (= (and d!734388 (not c!417896)) b!2592417))

(declare-fun m!2928477 () Bool)

(assert (=> b!2592417 m!2928477))

(assert (=> b!2592367 d!734388))

(declare-fun d!734390 () Bool)

(declare-fun c!417899 () Bool)

(assert (=> d!734390 (= c!417899 (is-Nil!29832 (t!212945 l!3230)))))

(declare-fun e!1635489 () (Set B!2063))

(assert (=> d!734390 (= (content!4167 (t!212945 l!3230)) e!1635489)))

(declare-fun b!2592425 () Bool)

(assert (=> b!2592425 (= e!1635489 (as set.empty (Set B!2063)))))

(declare-fun b!2592426 () Bool)

(assert (=> b!2592426 (= e!1635489 (set.union (set.insert (h!35252 (t!212945 l!3230)) (as set.empty (Set B!2063))) (content!4167 (t!212945 (t!212945 l!3230)))))))

(assert (= (and d!734390 c!417899) b!2592425))

(assert (= (and d!734390 (not c!417899)) b!2592426))

(declare-fun m!2928485 () Bool)

(assert (=> b!2592426 m!2928485))

(declare-fun m!2928487 () Bool)

(assert (=> b!2592426 m!2928487))

(assert (=> b!2592367 d!734390))

(declare-fun d!734394 () Bool)

(assert (=> d!734394 (= (size!23139 (toList!1777 (content!4167 (t!212945 l!3230)))) (size!23139 (t!212945 l!3230)))))

(declare-fun lt!912131 () Unit!43793)

(declare-fun choose!15330 (List!29932) Unit!43793)

(assert (=> d!734394 (= lt!912131 (choose!15330 (t!212945 l!3230)))))

(assert (=> d!734394 (noDuplicate!380 (t!212945 l!3230))))

(assert (=> d!734394 (= (lemmaNoDuplicateThenContentToListSameSize!67 (t!212945 l!3230)) lt!912131)))

(declare-fun bs!472373 () Bool)

(assert (= bs!472373 d!734394))

(assert (=> bs!472373 m!2928427))

(declare-fun m!2928489 () Bool)

(assert (=> bs!472373 m!2928489))

(assert (=> bs!472373 m!2928489))

(declare-fun m!2928491 () Bool)

(assert (=> bs!472373 m!2928491))

(declare-fun m!2928493 () Bool)

(assert (=> bs!472373 m!2928493))

(assert (=> bs!472373 m!2928425))

(declare-fun m!2928495 () Bool)

(assert (=> bs!472373 m!2928495))

(assert (=> bs!472373 m!2928427))

(assert (=> b!2592367 d!734394))

(declare-fun d!734398 () Bool)

(declare-fun e!1635505 () Bool)

(assert (=> d!734398 e!1635505))

(declare-fun res!1090318 () Bool)

(assert (=> d!734398 (=> (not res!1090318) (not e!1635505))))

(declare-fun lt!912137 () List!29932)

(assert (=> d!734398 (= res!1090318 (noDuplicate!380 lt!912137))))

(declare-fun choose!15331 ((Set B!2063)) List!29932)

(assert (=> d!734398 (= lt!912137 (choose!15331 lt!912088))))

(assert (=> d!734398 (= (toList!1777 lt!912088) lt!912137)))

(declare-fun b!2592448 () Bool)

(assert (=> b!2592448 (= e!1635505 (= (content!4167 lt!912137) lt!912088))))

(assert (= (and d!734398 res!1090318) b!2592448))

(declare-fun m!2928511 () Bool)

(assert (=> d!734398 m!2928511))

(declare-fun m!2928513 () Bool)

(assert (=> d!734398 m!2928513))

(declare-fun m!2928515 () Bool)

(assert (=> b!2592448 m!2928515))

(assert (=> b!2592367 d!734398))

(declare-fun d!734410 () Bool)

(declare-fun lt!912144 () Bool)

(assert (=> d!734410 (= lt!912144 (set.member (h!35252 l!3230) (content!4167 (t!212945 l!3230))))))

(declare-fun e!1635512 () Bool)

(assert (=> d!734410 (= lt!912144 e!1635512)))

(declare-fun res!1090323 () Bool)

(assert (=> d!734410 (=> (not res!1090323) (not e!1635512))))

(assert (=> d!734410 (= res!1090323 (is-Cons!29832 (t!212945 l!3230)))))

(assert (=> d!734410 (= (contains!5382 (t!212945 l!3230) (h!35252 l!3230)) lt!912144)))

(declare-fun b!2592455 () Bool)

(declare-fun e!1635511 () Bool)

(assert (=> b!2592455 (= e!1635512 e!1635511)))

(declare-fun res!1090324 () Bool)

(assert (=> b!2592455 (=> res!1090324 e!1635511)))

(assert (=> b!2592455 (= res!1090324 (= (h!35252 (t!212945 l!3230)) (h!35252 l!3230)))))

(declare-fun b!2592456 () Bool)

(assert (=> b!2592456 (= e!1635511 (contains!5382 (t!212945 (t!212945 l!3230)) (h!35252 l!3230)))))

(assert (= (and d!734410 res!1090323) b!2592455))

(assert (= (and b!2592455 (not res!1090324)) b!2592456))

(assert (=> d!734410 m!2928427))

(declare-fun m!2928525 () Bool)

(assert (=> d!734410 m!2928525))

(declare-fun m!2928527 () Bool)

(assert (=> b!2592456 m!2928527))

(assert (=> b!2592362 d!734410))

(declare-fun d!734416 () Bool)

(declare-fun c!417907 () Bool)

(assert (=> d!734416 (= c!417907 (is-Nil!29832 l!3230))))

(declare-fun e!1635515 () (Set B!2063))

(assert (=> d!734416 (= (content!4167 l!3230) e!1635515)))

(declare-fun b!2592459 () Bool)

(assert (=> b!2592459 (= e!1635515 (as set.empty (Set B!2063)))))

(declare-fun b!2592460 () Bool)

(assert (=> b!2592460 (= e!1635515 (set.union (set.insert (h!35252 l!3230) (as set.empty (Set B!2063))) (content!4167 (t!212945 l!3230))))))

(assert (= (and d!734416 c!417907) b!2592459))

(assert (= (and d!734416 (not c!417907)) b!2592460))

(assert (=> b!2592460 m!2928433))

(assert (=> b!2592460 m!2928427))

(assert (=> b!2592371 d!734416))

(declare-fun d!734420 () Bool)

(declare-fun lt!912145 () Int)

(assert (=> d!734420 (>= lt!912145 0)))

(declare-fun e!1635516 () Int)

(assert (=> d!734420 (= lt!912145 e!1635516)))

(declare-fun c!417908 () Bool)

(assert (=> d!734420 (= c!417908 (is-Nil!29832 lt!912092))))

(assert (=> d!734420 (= (size!23139 lt!912092) lt!912145)))

(declare-fun b!2592461 () Bool)

(assert (=> b!2592461 (= e!1635516 0)))

(declare-fun b!2592462 () Bool)

(assert (=> b!2592462 (= e!1635516 (+ 1 (size!23139 (t!212945 lt!912092))))))

(assert (= (and d!734420 c!417908) b!2592461))

(assert (= (and d!734420 (not c!417908)) b!2592462))

(declare-fun m!2928533 () Bool)

(assert (=> b!2592462 m!2928533))

(assert (=> b!2592366 d!734420))

(declare-fun d!734422 () Bool)

(declare-fun e!1635517 () Bool)

(assert (=> d!734422 e!1635517))

(declare-fun res!1090327 () Bool)

(assert (=> d!734422 (=> (not res!1090327) (not e!1635517))))

(declare-fun lt!912146 () List!29932)

(assert (=> d!734422 (= res!1090327 (noDuplicate!380 lt!912146))))

(assert (=> d!734422 (= lt!912146 (choose!15331 lt!912086))))

(assert (=> d!734422 (= (toList!1777 lt!912086) lt!912146)))

(declare-fun b!2592463 () Bool)

(assert (=> b!2592463 (= e!1635517 (= (content!4167 lt!912146) lt!912086))))

(assert (= (and d!734422 res!1090327) b!2592463))

(declare-fun m!2928535 () Bool)

(assert (=> d!734422 m!2928535))

(declare-fun m!2928537 () Bool)

(assert (=> d!734422 m!2928537))

(declare-fun m!2928539 () Bool)

(assert (=> b!2592463 m!2928539))

(assert (=> b!2592366 d!734422))

(assert (=> b!2592370 d!734416))

(declare-fun d!734424 () Bool)

(declare-fun res!1090332 () Bool)

(declare-fun e!1635522 () Bool)

(assert (=> d!734424 (=> res!1090332 e!1635522)))

(assert (=> d!734424 (= res!1090332 (is-Nil!29832 lt!912092))))

(assert (=> d!734424 (= (noDuplicate!380 lt!912092) e!1635522)))

(declare-fun b!2592468 () Bool)

(declare-fun e!1635523 () Bool)

(assert (=> b!2592468 (= e!1635522 e!1635523)))

(declare-fun res!1090333 () Bool)

(assert (=> b!2592468 (=> (not res!1090333) (not e!1635523))))

(assert (=> b!2592468 (= res!1090333 (not (contains!5382 (t!212945 lt!912092) (h!35252 lt!912092))))))

(declare-fun b!2592469 () Bool)

(assert (=> b!2592469 (= e!1635523 (noDuplicate!380 (t!212945 lt!912092)))))

(assert (= (and d!734424 (not res!1090332)) b!2592468))

(assert (= (and b!2592468 res!1090333) b!2592469))

(declare-fun m!2928541 () Bool)

(assert (=> b!2592468 m!2928541))

(declare-fun m!2928543 () Bool)

(assert (=> b!2592469 m!2928543))

(assert (=> b!2592365 d!734424))

(declare-fun d!734426 () Bool)

(assert (=> d!734426 true))

(declare-fun lambda!96197 () Int)

(declare-fun forall!6081 (List!29932 Int) Bool)

(assert (=> d!734426 (forall!6081 lt!912092 lambda!96197)))

(declare-fun lt!912151 () Unit!43793)

(declare-fun choose!15332 (List!29932 List!29932) Unit!43793)

(assert (=> d!734426 (= lt!912151 (choose!15332 lt!912092 l!3230))))

(assert (=> d!734426 (set.subset (content!4167 lt!912092) (content!4167 l!3230))))

(assert (=> d!734426 (= (subsetContains!55 lt!912092 l!3230) lt!912151)))

(declare-fun bs!472375 () Bool)

(assert (= bs!472375 d!734426))

(declare-fun m!2928545 () Bool)

(assert (=> bs!472375 m!2928545))

(declare-fun m!2928547 () Bool)

(assert (=> bs!472375 m!2928547))

(declare-fun m!2928549 () Bool)

(assert (=> bs!472375 m!2928549))

(assert (=> bs!472375 m!2928431))

(assert (=> b!2592365 d!734426))

(assert (=> b!2592363 d!734386))

(declare-fun d!734428 () Bool)

(declare-fun res!1090334 () Bool)

(declare-fun e!1635524 () Bool)

(assert (=> d!734428 (=> res!1090334 e!1635524)))

(assert (=> d!734428 (= res!1090334 (is-Nil!29832 l!3230))))

(assert (=> d!734428 (= (noDuplicate!380 l!3230) e!1635524)))

(declare-fun b!2592472 () Bool)

(declare-fun e!1635525 () Bool)

(assert (=> b!2592472 (= e!1635524 e!1635525)))

(declare-fun res!1090335 () Bool)

(assert (=> b!2592472 (=> (not res!1090335) (not e!1635525))))

(assert (=> b!2592472 (= res!1090335 (not (contains!5382 (t!212945 l!3230) (h!35252 l!3230))))))

(declare-fun b!2592473 () Bool)

(assert (=> b!2592473 (= e!1635525 (noDuplicate!380 (t!212945 l!3230)))))

(assert (= (and d!734428 (not res!1090334)) b!2592472))

(assert (= (and b!2592472 res!1090335) b!2592473))

(assert (=> b!2592472 m!2928413))

(assert (=> b!2592473 m!2928493))

(assert (=> start!251238 d!734428))

(declare-fun b!2592478 () Bool)

(declare-fun e!1635528 () Bool)

(declare-fun tp!822791 () Bool)

(assert (=> b!2592478 (= e!1635528 (and tp_is_empty!13343 tp!822791))))

(assert (=> b!2592368 (= tp!822785 e!1635528)))

(assert (= (and b!2592368 (is-Cons!29832 (t!212945 l!3230))) b!2592478))

(push 1)

(assert (not d!734398))

(assert (not d!734410))

(assert (not b!2592417))

(assert tp_is_empty!13343)

(assert (not b!2592415))

(assert (not d!734394))

(assert (not b!2592460))

(assert (not d!734426))

(assert (not b!2592478))

(assert (not b!2592463))

(assert (not b!2592469))

(assert (not b!2592473))

(assert (not b!2592413))

(assert (not b!2592456))

(assert (not d!734422))

(assert (not b!2592468))

(assert (not b!2592462))

(assert (not b!2592426))

(assert (not b!2592448))

(assert (not b!2592472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

