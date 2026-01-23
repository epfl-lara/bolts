; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683422 () Bool)

(assert start!683422)

(declare-fun b!7052005 () Bool)

(assert (=> b!7052005 true))

(declare-fun b!7052007 () Bool)

(assert (=> b!7052007 true))

(declare-fun b!7052002 () Bool)

(declare-fun e!4239504 () Bool)

(declare-fun tp_is_empty!44325 () Bool)

(declare-fun tp!1939456 () Bool)

(assert (=> b!7052002 (= e!4239504 (and tp_is_empty!44325 tp!1939456))))

(declare-fun b!7052003 () Bool)

(declare-fun e!4239503 () Bool)

(declare-fun tp!1939453 () Bool)

(assert (=> b!7052003 (= e!4239503 tp!1939453)))

(declare-fun e!4239502 () Bool)

(declare-datatypes ((C!35370 0))(
  ( (C!35371 (val!27387 Int)) )
))
(declare-datatypes ((Regex!17550 0))(
  ( (ElementMatch!17550 (c!1313515 C!35370)) (Concat!26395 (regOne!35612 Regex!17550) (regTwo!35612 Regex!17550)) (EmptyExpr!17550) (Star!17550 (reg!17879 Regex!17550)) (EmptyLang!17550) (Union!17550 (regOne!35613 Regex!17550) (regTwo!35613 Regex!17550)) )
))
(declare-datatypes ((List!68176 0))(
  ( (Nil!68052) (Cons!68052 (h!74500 Regex!17550) (t!381955 List!68176)) )
))
(declare-datatypes ((Context!13092 0))(
  ( (Context!13093 (exprs!7046 List!68176)) )
))
(declare-fun setElem!49712 () Context!13092)

(declare-fun setNonEmpty!49712 () Bool)

(declare-fun tp!1939454 () Bool)

(declare-fun setRes!49712 () Bool)

(declare-fun inv!86735 (Context!13092) Bool)

(assert (=> setNonEmpty!49712 (= setRes!49712 (and tp!1939454 (inv!86735 setElem!49712) e!4239502))))

(declare-fun z1!570 () (Set Context!13092))

(declare-fun setRest!49712 () (Set Context!13092))

(assert (=> setNonEmpty!49712 (= z1!570 (set.union (set.insert setElem!49712 (as set.empty (Set Context!13092))) setRest!49712))))

(declare-fun b!7052004 () Bool)

(declare-fun tp!1939455 () Bool)

(assert (=> b!7052004 (= e!4239502 tp!1939455)))

(declare-fun e!4239506 () Bool)

(declare-fun e!4239507 () Bool)

(assert (=> b!7052005 (= e!4239506 (not e!4239507))))

(declare-fun res!2878982 () Bool)

(assert (=> b!7052005 (=> res!2878982 e!4239507)))

(declare-fun lt!2529950 () Context!13092)

(declare-datatypes ((List!68177 0))(
  ( (Nil!68053) (Cons!68053 (h!74501 C!35370) (t!381956 List!68177)) )
))
(declare-fun s!7408 () List!68177)

(declare-fun matchZipper!3090 ((Set Context!13092) List!68177) Bool)

(assert (=> b!7052005 (= res!2878982 (not (matchZipper!3090 (set.insert lt!2529950 (as set.empty (Set Context!13092))) s!7408)))))

(declare-fun lt!2529954 () (Set Context!13092))

(declare-fun lambda!419244 () Int)

(declare-fun getWitness!1599 ((Set Context!13092) Int) Context!13092)

(assert (=> b!7052005 (= lt!2529950 (getWitness!1599 lt!2529954 lambda!419244))))

(declare-datatypes ((List!68178 0))(
  ( (Nil!68054) (Cons!68054 (h!74502 Context!13092) (t!381957 List!68178)) )
))
(declare-fun lt!2529949 () List!68178)

(declare-fun exists!3525 (List!68178 Int) Bool)

(assert (=> b!7052005 (exists!3525 lt!2529949 lambda!419244)))

(declare-datatypes ((Unit!161772 0))(
  ( (Unit!161773) )
))
(declare-fun lt!2529951 () Unit!161772)

(declare-fun lemmaZipperMatchesExistsMatchingContext!471 (List!68178 List!68177) Unit!161772)

(assert (=> b!7052005 (= lt!2529951 (lemmaZipperMatchesExistsMatchingContext!471 lt!2529949 s!7408))))

(declare-fun toList!10891 ((Set Context!13092)) List!68178)

(assert (=> b!7052005 (= lt!2529949 (toList!10891 lt!2529954))))

(declare-fun b!7052006 () Bool)

(declare-fun e!4239505 () Bool)

(declare-fun lt!2529952 () Context!13092)

(assert (=> b!7052006 (= e!4239505 (inv!86735 lt!2529952))))

(declare-fun lt!2529947 () Unit!161772)

(declare-fun lt!2529953 () Context!13092)

(declare-fun ct2!306 () Context!13092)

(declare-fun lambda!419246 () Int)

(declare-fun lemmaConcatPreservesForall!861 (List!68176 List!68176 Int) Unit!161772)

(assert (=> b!7052006 (= lt!2529947 (lemmaConcatPreservesForall!861 (exprs!7046 lt!2529953) (exprs!7046 ct2!306) lambda!419246))))

(declare-fun b!7052008 () Bool)

(declare-fun res!2878979 () Bool)

(assert (=> b!7052008 (=> (not res!2878979) (not e!4239506))))

(assert (=> b!7052008 (= res!2878979 (is-Cons!68053 s!7408))))

(declare-fun setIsEmpty!49712 () Bool)

(assert (=> setIsEmpty!49712 setRes!49712))

(declare-fun b!7052009 () Bool)

(declare-fun res!2878980 () Bool)

(assert (=> b!7052009 (=> res!2878980 e!4239507)))

(assert (=> b!7052009 (= res!2878980 (not (set.member lt!2529950 lt!2529954)))))

(declare-fun res!2878981 () Bool)

(assert (=> start!683422 (=> (not res!2878981) (not e!4239506))))

(assert (=> start!683422 (= res!2878981 (matchZipper!3090 lt!2529954 s!7408))))

(declare-fun appendTo!671 ((Set Context!13092) Context!13092) (Set Context!13092))

(assert (=> start!683422 (= lt!2529954 (appendTo!671 z1!570 ct2!306))))

(assert (=> start!683422 e!4239506))

(declare-fun condSetEmpty!49712 () Bool)

(assert (=> start!683422 (= condSetEmpty!49712 (= z1!570 (as set.empty (Set Context!13092))))))

(assert (=> start!683422 setRes!49712))

(assert (=> start!683422 (and (inv!86735 ct2!306) e!4239503)))

(assert (=> start!683422 e!4239504))

(assert (=> b!7052007 (= e!4239507 e!4239505)))

(declare-fun res!2878983 () Bool)

(assert (=> b!7052007 (=> res!2878983 e!4239505)))

(assert (=> b!7052007 (= res!2878983 (or (not (= lt!2529952 lt!2529950)) (not (set.member lt!2529953 z1!570))))))

(declare-fun ++!15633 (List!68176 List!68176) List!68176)

(assert (=> b!7052007 (= lt!2529952 (Context!13093 (++!15633 (exprs!7046 lt!2529953) (exprs!7046 ct2!306))))))

(declare-fun lt!2529948 () Unit!161772)

(assert (=> b!7052007 (= lt!2529948 (lemmaConcatPreservesForall!861 (exprs!7046 lt!2529953) (exprs!7046 ct2!306) lambda!419246))))

(declare-fun lambda!419245 () Int)

(declare-fun mapPost2!379 ((Set Context!13092) Int Context!13092) Context!13092)

(assert (=> b!7052007 (= lt!2529953 (mapPost2!379 z1!570 lambda!419245 lt!2529950))))

(assert (= (and start!683422 res!2878981) b!7052008))

(assert (= (and b!7052008 res!2878979) b!7052005))

(assert (= (and b!7052005 (not res!2878982)) b!7052009))

(assert (= (and b!7052009 (not res!2878980)) b!7052007))

(assert (= (and b!7052007 (not res!2878983)) b!7052006))

(assert (= (and start!683422 condSetEmpty!49712) setIsEmpty!49712))

(assert (= (and start!683422 (not condSetEmpty!49712)) setNonEmpty!49712))

(assert (= setNonEmpty!49712 b!7052004))

(assert (= start!683422 b!7052003))

(assert (= (and start!683422 (is-Cons!68053 s!7408)) b!7052002))

(declare-fun m!7768522 () Bool)

(assert (=> b!7052005 m!7768522))

(declare-fun m!7768524 () Bool)

(assert (=> b!7052005 m!7768524))

(declare-fun m!7768526 () Bool)

(assert (=> b!7052005 m!7768526))

(declare-fun m!7768528 () Bool)

(assert (=> b!7052005 m!7768528))

(declare-fun m!7768530 () Bool)

(assert (=> b!7052005 m!7768530))

(assert (=> b!7052005 m!7768522))

(declare-fun m!7768532 () Bool)

(assert (=> b!7052005 m!7768532))

(declare-fun m!7768534 () Bool)

(assert (=> b!7052009 m!7768534))

(declare-fun m!7768536 () Bool)

(assert (=> start!683422 m!7768536))

(declare-fun m!7768538 () Bool)

(assert (=> start!683422 m!7768538))

(declare-fun m!7768540 () Bool)

(assert (=> start!683422 m!7768540))

(declare-fun m!7768542 () Bool)

(assert (=> b!7052007 m!7768542))

(declare-fun m!7768544 () Bool)

(assert (=> b!7052007 m!7768544))

(declare-fun m!7768546 () Bool)

(assert (=> b!7052007 m!7768546))

(declare-fun m!7768548 () Bool)

(assert (=> b!7052007 m!7768548))

(declare-fun m!7768550 () Bool)

(assert (=> b!7052006 m!7768550))

(assert (=> b!7052006 m!7768546))

(declare-fun m!7768552 () Bool)

(assert (=> setNonEmpty!49712 m!7768552))

(push 1)

(assert (not b!7052006))

(assert tp_is_empty!44325)

(assert (not start!683422))

(assert (not b!7052007))

(assert (not setNonEmpty!49712))

(assert (not b!7052003))

(assert (not b!7052004))

(assert (not b!7052002))

(assert (not b!7052005))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2203543 () Bool)

(declare-fun c!1313525 () Bool)

(declare-fun isEmpty!39695 (List!68177) Bool)

(assert (=> d!2203543 (= c!1313525 (isEmpty!39695 s!7408))))

(declare-fun e!4239528 () Bool)

(assert (=> d!2203543 (= (matchZipper!3090 lt!2529954 s!7408) e!4239528)))

(declare-fun b!7052046 () Bool)

(declare-fun nullableZipper!2640 ((Set Context!13092)) Bool)

(assert (=> b!7052046 (= e!4239528 (nullableZipper!2640 lt!2529954))))

(declare-fun b!7052047 () Bool)

(declare-fun derivationStepZipper!3000 ((Set Context!13092) C!35370) (Set Context!13092))

(declare-fun head!14340 (List!68177) C!35370)

(declare-fun tail!13669 (List!68177) List!68177)

(assert (=> b!7052047 (= e!4239528 (matchZipper!3090 (derivationStepZipper!3000 lt!2529954 (head!14340 s!7408)) (tail!13669 s!7408)))))

(assert (= (and d!2203543 c!1313525) b!7052046))

(assert (= (and d!2203543 (not c!1313525)) b!7052047))

(declare-fun m!7768586 () Bool)

(assert (=> d!2203543 m!7768586))

(declare-fun m!7768588 () Bool)

(assert (=> b!7052046 m!7768588))

(declare-fun m!7768590 () Bool)

(assert (=> b!7052047 m!7768590))

(assert (=> b!7052047 m!7768590))

(declare-fun m!7768592 () Bool)

(assert (=> b!7052047 m!7768592))

(declare-fun m!7768594 () Bool)

(assert (=> b!7052047 m!7768594))

(assert (=> b!7052047 m!7768592))

(assert (=> b!7052047 m!7768594))

(declare-fun m!7768596 () Bool)

(assert (=> b!7052047 m!7768596))

(assert (=> start!683422 d!2203543))

(declare-fun bs!1876361 () Bool)

(declare-fun d!2203547 () Bool)

(assert (= bs!1876361 (and d!2203547 b!7052007)))

(declare-fun lambda!419266 () Int)

(assert (=> bs!1876361 (= lambda!419266 lambda!419245)))

(assert (=> d!2203547 true))

(declare-fun map!15866 ((Set Context!13092) Int) (Set Context!13092))

(assert (=> d!2203547 (= (appendTo!671 z1!570 ct2!306) (map!15866 z1!570 lambda!419266))))

(declare-fun bs!1876362 () Bool)

(assert (= bs!1876362 d!2203547))

(declare-fun m!7768598 () Bool)

(assert (=> bs!1876362 m!7768598))

(assert (=> start!683422 d!2203547))

(declare-fun bs!1876363 () Bool)

(declare-fun d!2203549 () Bool)

(assert (= bs!1876363 (and d!2203549 b!7052007)))

(declare-fun lambda!419269 () Int)

(assert (=> bs!1876363 (= lambda!419269 lambda!419246)))

(declare-fun forall!16484 (List!68176 Int) Bool)

(assert (=> d!2203549 (= (inv!86735 ct2!306) (forall!16484 (exprs!7046 ct2!306) lambda!419269))))

(declare-fun bs!1876364 () Bool)

(assert (= bs!1876364 d!2203549))

(declare-fun m!7768600 () Bool)

(assert (=> bs!1876364 m!7768600))

(assert (=> start!683422 d!2203549))

(declare-fun d!2203551 () Bool)

(declare-fun c!1313529 () Bool)

(assert (=> d!2203551 (= c!1313529 (isEmpty!39695 s!7408))))

(declare-fun e!4239529 () Bool)

(assert (=> d!2203551 (= (matchZipper!3090 (set.insert lt!2529950 (as set.empty (Set Context!13092))) s!7408) e!4239529)))

(declare-fun b!7052048 () Bool)

(assert (=> b!7052048 (= e!4239529 (nullableZipper!2640 (set.insert lt!2529950 (as set.empty (Set Context!13092)))))))

(declare-fun b!7052049 () Bool)

(assert (=> b!7052049 (= e!4239529 (matchZipper!3090 (derivationStepZipper!3000 (set.insert lt!2529950 (as set.empty (Set Context!13092))) (head!14340 s!7408)) (tail!13669 s!7408)))))

(assert (= (and d!2203551 c!1313529) b!7052048))

(assert (= (and d!2203551 (not c!1313529)) b!7052049))

(assert (=> d!2203551 m!7768586))

(assert (=> b!7052048 m!7768522))

(declare-fun m!7768602 () Bool)

(assert (=> b!7052048 m!7768602))

(assert (=> b!7052049 m!7768590))

(assert (=> b!7052049 m!7768522))

(assert (=> b!7052049 m!7768590))

(declare-fun m!7768604 () Bool)

(assert (=> b!7052049 m!7768604))

(assert (=> b!7052049 m!7768594))

(assert (=> b!7052049 m!7768604))

(assert (=> b!7052049 m!7768594))

(declare-fun m!7768606 () Bool)

(assert (=> b!7052049 m!7768606))

(assert (=> b!7052005 d!2203551))

(declare-fun bs!1876367 () Bool)

(declare-fun d!2203553 () Bool)

(assert (= bs!1876367 (and d!2203553 b!7052005)))

(declare-fun lambda!419275 () Int)

(assert (=> bs!1876367 (= lambda!419275 lambda!419244)))

(assert (=> d!2203553 true))

(assert (=> d!2203553 (exists!3525 lt!2529949 lambda!419275)))

(declare-fun lt!2529988 () Unit!161772)

(declare-fun choose!53710 (List!68178 List!68177) Unit!161772)

(assert (=> d!2203553 (= lt!2529988 (choose!53710 lt!2529949 s!7408))))

(declare-fun content!13655 (List!68178) (Set Context!13092))

(assert (=> d!2203553 (matchZipper!3090 (content!13655 lt!2529949) s!7408)))

(assert (=> d!2203553 (= (lemmaZipperMatchesExistsMatchingContext!471 lt!2529949 s!7408) lt!2529988)))

(declare-fun bs!1876368 () Bool)

(assert (= bs!1876368 d!2203553))

(declare-fun m!7768616 () Bool)

(assert (=> bs!1876368 m!7768616))

(declare-fun m!7768618 () Bool)

(assert (=> bs!1876368 m!7768618))

(declare-fun m!7768620 () Bool)

(assert (=> bs!1876368 m!7768620))

(assert (=> bs!1876368 m!7768620))

(declare-fun m!7768622 () Bool)

(assert (=> bs!1876368 m!7768622))

(assert (=> b!7052005 d!2203553))

(declare-fun d!2203557 () Bool)

(declare-fun e!4239534 () Bool)

(assert (=> d!2203557 e!4239534))

(declare-fun res!2879005 () Bool)

(assert (=> d!2203557 (=> (not res!2879005) (not e!4239534))))

(declare-fun lt!2529993 () List!68178)

(declare-fun noDuplicate!2675 (List!68178) Bool)

(assert (=> d!2203557 (= res!2879005 (noDuplicate!2675 lt!2529993))))

(declare-fun choose!53711 ((Set Context!13092)) List!68178)

(assert (=> d!2203557 (= lt!2529993 (choose!53711 lt!2529954))))

(assert (=> d!2203557 (= (toList!10891 lt!2529954) lt!2529993)))

(declare-fun b!7052054 () Bool)

(assert (=> b!7052054 (= e!4239534 (= (content!13655 lt!2529993) lt!2529954))))

(assert (= (and d!2203557 res!2879005) b!7052054))

(declare-fun m!7768624 () Bool)

(assert (=> d!2203557 m!7768624))

(declare-fun m!7768626 () Bool)

(assert (=> d!2203557 m!7768626))

(declare-fun m!7768628 () Bool)

(assert (=> b!7052054 m!7768628))

(assert (=> b!7052005 d!2203557))

(declare-fun d!2203559 () Bool)

(declare-fun e!4239538 () Bool)

(assert (=> d!2203559 e!4239538))

(declare-fun res!2879009 () Bool)

(assert (=> d!2203559 (=> (not res!2879009) (not e!4239538))))

(declare-fun lt!2529997 () Context!13092)

(declare-fun dynLambda!27579 (Int Context!13092) Bool)

(assert (=> d!2203559 (= res!2879009 (dynLambda!27579 lambda!419244 lt!2529997))))

(declare-fun getWitness!1601 (List!68178 Int) Context!13092)

(assert (=> d!2203559 (= lt!2529997 (getWitness!1601 (toList!10891 lt!2529954) lambda!419244))))

(declare-fun exists!3527 ((Set Context!13092) Int) Bool)

(assert (=> d!2203559 (exists!3527 lt!2529954 lambda!419244)))

(assert (=> d!2203559 (= (getWitness!1599 lt!2529954 lambda!419244) lt!2529997)))

(declare-fun b!7052058 () Bool)

(assert (=> b!7052058 (= e!4239538 (set.member lt!2529997 lt!2529954))))

(assert (= (and d!2203559 res!2879009) b!7052058))

(declare-fun b_lambda!268359 () Bool)

(assert (=> (not b_lambda!268359) (not d!2203559)))

(declare-fun m!7768636 () Bool)

(assert (=> d!2203559 m!7768636))

(assert (=> d!2203559 m!7768526))

(assert (=> d!2203559 m!7768526))

(declare-fun m!7768638 () Bool)

(assert (=> d!2203559 m!7768638))

(declare-fun m!7768640 () Bool)

(assert (=> d!2203559 m!7768640))

(declare-fun m!7768642 () Bool)

(assert (=> b!7052058 m!7768642))

(assert (=> b!7052005 d!2203559))

(declare-fun bs!1876371 () Bool)

(declare-fun d!2203563 () Bool)

(assert (= bs!1876371 (and d!2203563 b!7052005)))

(declare-fun lambda!419281 () Int)

(assert (=> bs!1876371 (not (= lambda!419281 lambda!419244))))

(declare-fun bs!1876372 () Bool)

(assert (= bs!1876372 (and d!2203563 d!2203553)))

(assert (=> bs!1876372 (not (= lambda!419281 lambda!419275))))

(assert (=> d!2203563 true))

(declare-fun order!28279 () Int)

(declare-fun dynLambda!27580 (Int Int) Int)

(assert (=> d!2203563 (< (dynLambda!27580 order!28279 lambda!419244) (dynLambda!27580 order!28279 lambda!419281))))

(declare-fun forall!16485 (List!68178 Int) Bool)

(assert (=> d!2203563 (= (exists!3525 lt!2529949 lambda!419244) (not (forall!16485 lt!2529949 lambda!419281)))))

(declare-fun bs!1876373 () Bool)

(assert (= bs!1876373 d!2203563))

(declare-fun m!7768646 () Bool)

(assert (=> bs!1876373 m!7768646))

(assert (=> b!7052005 d!2203563))

(declare-fun bs!1876375 () Bool)

(declare-fun d!2203565 () Bool)

(assert (= bs!1876375 (and d!2203565 b!7052007)))

(declare-fun lambda!419282 () Int)

(assert (=> bs!1876375 (= lambda!419282 lambda!419246)))

(declare-fun bs!1876376 () Bool)

(assert (= bs!1876376 (and d!2203565 d!2203549)))

(assert (=> bs!1876376 (= lambda!419282 lambda!419269)))

(assert (=> d!2203565 (= (inv!86735 lt!2529952) (forall!16484 (exprs!7046 lt!2529952) lambda!419282))))

(declare-fun bs!1876377 () Bool)

(assert (= bs!1876377 d!2203565))

(declare-fun m!7768648 () Bool)

(assert (=> bs!1876377 m!7768648))

(assert (=> b!7052006 d!2203565))

(declare-fun d!2203569 () Bool)

(assert (=> d!2203569 (forall!16484 (++!15633 (exprs!7046 lt!2529953) (exprs!7046 ct2!306)) lambda!419246)))

(declare-fun lt!2530000 () Unit!161772)

(declare-fun choose!53712 (List!68176 List!68176 Int) Unit!161772)

(assert (=> d!2203569 (= lt!2530000 (choose!53712 (exprs!7046 lt!2529953) (exprs!7046 ct2!306) lambda!419246))))

(assert (=> d!2203569 (forall!16484 (exprs!7046 lt!2529953) lambda!419246)))

(assert (=> d!2203569 (= (lemmaConcatPreservesForall!861 (exprs!7046 lt!2529953) (exprs!7046 ct2!306) lambda!419246) lt!2530000)))

(declare-fun bs!1876378 () Bool)

(assert (= bs!1876378 d!2203569))

(assert (=> bs!1876378 m!7768544))

(assert (=> bs!1876378 m!7768544))

(declare-fun m!7768650 () Bool)

(assert (=> bs!1876378 m!7768650))

(declare-fun m!7768652 () Bool)

(assert (=> bs!1876378 m!7768652))

(declare-fun m!7768654 () Bool)

(assert (=> bs!1876378 m!7768654))

(assert (=> b!7052006 d!2203569))

(declare-fun b!7052076 () Bool)

(declare-fun lt!2530005 () List!68176)

(declare-fun e!4239546 () Bool)

(assert (=> b!7052076 (= e!4239546 (or (not (= (exprs!7046 ct2!306) Nil!68052)) (= lt!2530005 (exprs!7046 lt!2529953))))))

(declare-fun b!7052074 () Bool)

(declare-fun e!4239545 () List!68176)

(assert (=> b!7052074 (= e!4239545 (Cons!68052 (h!74500 (exprs!7046 lt!2529953)) (++!15633 (t!381955 (exprs!7046 lt!2529953)) (exprs!7046 ct2!306))))))

(declare-fun b!7052075 () Bool)

(declare-fun res!2879016 () Bool)

(assert (=> b!7052075 (=> (not res!2879016) (not e!4239546))))

(declare-fun size!41136 (List!68176) Int)

(assert (=> b!7052075 (= res!2879016 (= (size!41136 lt!2530005) (+ (size!41136 (exprs!7046 lt!2529953)) (size!41136 (exprs!7046 ct2!306)))))))

(declare-fun d!2203571 () Bool)

(assert (=> d!2203571 e!4239546))

(declare-fun res!2879017 () Bool)

(assert (=> d!2203571 (=> (not res!2879017) (not e!4239546))))

(declare-fun content!13656 (List!68176) (Set Regex!17550))

(assert (=> d!2203571 (= res!2879017 (= (content!13656 lt!2530005) (set.union (content!13656 (exprs!7046 lt!2529953)) (content!13656 (exprs!7046 ct2!306)))))))

(assert (=> d!2203571 (= lt!2530005 e!4239545)))

(declare-fun c!1313534 () Bool)

(assert (=> d!2203571 (= c!1313534 (is-Nil!68052 (exprs!7046 lt!2529953)))))

(assert (=> d!2203571 (= (++!15633 (exprs!7046 lt!2529953) (exprs!7046 ct2!306)) lt!2530005)))

(declare-fun b!7052073 () Bool)

(assert (=> b!7052073 (= e!4239545 (exprs!7046 ct2!306))))

(assert (= (and d!2203571 c!1313534) b!7052073))

(assert (= (and d!2203571 (not c!1313534)) b!7052074))

(assert (= (and d!2203571 res!2879017) b!7052075))

(assert (= (and b!7052075 res!2879016) b!7052076))

(declare-fun m!7768656 () Bool)

(assert (=> b!7052074 m!7768656))

(declare-fun m!7768658 () Bool)

(assert (=> b!7052075 m!7768658))

(declare-fun m!7768660 () Bool)

(assert (=> b!7052075 m!7768660))

(declare-fun m!7768662 () Bool)

(assert (=> b!7052075 m!7768662))

(declare-fun m!7768664 () Bool)

(assert (=> d!2203571 m!7768664))

(declare-fun m!7768666 () Bool)

(assert (=> d!2203571 m!7768666))

(declare-fun m!7768668 () Bool)

(assert (=> d!2203571 m!7768668))

(assert (=> b!7052007 d!2203571))

(assert (=> b!7052007 d!2203569))

(declare-fun d!2203573 () Bool)

(declare-fun e!4239550 () Bool)

(assert (=> d!2203573 e!4239550))

(declare-fun res!2879021 () Bool)

(assert (=> d!2203573 (=> (not res!2879021) (not e!4239550))))

(declare-fun lt!2530009 () Context!13092)

(declare-fun dynLambda!27581 (Int Context!13092) Context!13092)

(assert (=> d!2203573 (= res!2879021 (= lt!2529950 (dynLambda!27581 lambda!419245 lt!2530009)))))

(declare-fun choose!53713 ((Set Context!13092) Int Context!13092) Context!13092)

(assert (=> d!2203573 (= lt!2530009 (choose!53713 z1!570 lambda!419245 lt!2529950))))

(assert (=> d!2203573 (set.member lt!2529950 (map!15866 z1!570 lambda!419245))))

(assert (=> d!2203573 (= (mapPost2!379 z1!570 lambda!419245 lt!2529950) lt!2530009)))

(declare-fun b!7052081 () Bool)

(assert (=> b!7052081 (= e!4239550 (set.member lt!2530009 z1!570))))

(assert (= (and d!2203573 res!2879021) b!7052081))

(declare-fun b_lambda!268363 () Bool)

(assert (=> (not b_lambda!268363) (not d!2203573)))

(declare-fun m!7768678 () Bool)

(assert (=> d!2203573 m!7768678))

(declare-fun m!7768680 () Bool)

(assert (=> d!2203573 m!7768680))

(declare-fun m!7768682 () Bool)

(assert (=> d!2203573 m!7768682))

(declare-fun m!7768684 () Bool)

(assert (=> d!2203573 m!7768684))

(declare-fun m!7768686 () Bool)

(assert (=> b!7052081 m!7768686))

(assert (=> b!7052007 d!2203573))

(declare-fun bs!1876379 () Bool)

(declare-fun d!2203577 () Bool)

(assert (= bs!1876379 (and d!2203577 b!7052007)))

(declare-fun lambda!419283 () Int)

(assert (=> bs!1876379 (= lambda!419283 lambda!419246)))

(declare-fun bs!1876380 () Bool)

(assert (= bs!1876380 (and d!2203577 d!2203549)))

(assert (=> bs!1876380 (= lambda!419283 lambda!419269)))

(declare-fun bs!1876381 () Bool)

(assert (= bs!1876381 (and d!2203577 d!2203565)))

(assert (=> bs!1876381 (= lambda!419283 lambda!419282)))

(assert (=> d!2203577 (= (inv!86735 setElem!49712) (forall!16484 (exprs!7046 setElem!49712) lambda!419283))))

(declare-fun bs!1876382 () Bool)

(assert (= bs!1876382 d!2203577))

(declare-fun m!7768688 () Bool)

(assert (=> bs!1876382 m!7768688))

(assert (=> setNonEmpty!49712 d!2203577))

(declare-fun b!7052086 () Bool)

(declare-fun e!4239553 () Bool)

(declare-fun tp!1939473 () Bool)

(declare-fun tp!1939474 () Bool)

(assert (=> b!7052086 (= e!4239553 (and tp!1939473 tp!1939474))))

(assert (=> b!7052003 (= tp!1939453 e!4239553)))

(assert (= (and b!7052003 (is-Cons!68052 (exprs!7046 ct2!306))) b!7052086))

(declare-fun b!7052091 () Bool)

(declare-fun e!4239556 () Bool)

(declare-fun tp!1939477 () Bool)

(assert (=> b!7052091 (= e!4239556 (and tp_is_empty!44325 tp!1939477))))

(assert (=> b!7052002 (= tp!1939456 e!4239556)))

(assert (= (and b!7052002 (is-Cons!68053 (t!381956 s!7408))) b!7052091))

(declare-fun condSetEmpty!49718 () Bool)

(assert (=> setNonEmpty!49712 (= condSetEmpty!49718 (= setRest!49712 (as set.empty (Set Context!13092))))))

(declare-fun setRes!49718 () Bool)

(assert (=> setNonEmpty!49712 (= tp!1939454 setRes!49718)))

(declare-fun setIsEmpty!49718 () Bool)

(assert (=> setIsEmpty!49718 setRes!49718))

(declare-fun tp!1939482 () Bool)

(declare-fun e!4239559 () Bool)

(declare-fun setElem!49718 () Context!13092)

(declare-fun setNonEmpty!49718 () Bool)

(assert (=> setNonEmpty!49718 (= setRes!49718 (and tp!1939482 (inv!86735 setElem!49718) e!4239559))))

(declare-fun setRest!49718 () (Set Context!13092))

(assert (=> setNonEmpty!49718 (= setRest!49712 (set.union (set.insert setElem!49718 (as set.empty (Set Context!13092))) setRest!49718))))

(declare-fun b!7052096 () Bool)

(declare-fun tp!1939483 () Bool)

(assert (=> b!7052096 (= e!4239559 tp!1939483)))

(assert (= (and setNonEmpty!49712 condSetEmpty!49718) setIsEmpty!49718))

(assert (= (and setNonEmpty!49712 (not condSetEmpty!49718)) setNonEmpty!49718))

(assert (= setNonEmpty!49718 b!7052096))

(declare-fun m!7768690 () Bool)

(assert (=> setNonEmpty!49718 m!7768690))

(declare-fun b!7052097 () Bool)

(declare-fun e!4239560 () Bool)

(declare-fun tp!1939484 () Bool)

(declare-fun tp!1939485 () Bool)

(assert (=> b!7052097 (= e!4239560 (and tp!1939484 tp!1939485))))

(assert (=> b!7052004 (= tp!1939455 e!4239560)))

(assert (= (and b!7052004 (is-Cons!68052 (exprs!7046 setElem!49712))) b!7052097))

(declare-fun b_lambda!268365 () Bool)

(assert (= b_lambda!268363 (or b!7052007 b_lambda!268365)))

(declare-fun bs!1876383 () Bool)

(declare-fun d!2203579 () Bool)

(assert (= bs!1876383 (and d!2203579 b!7052007)))

(declare-fun lt!2530010 () Unit!161772)

(assert (=> bs!1876383 (= lt!2530010 (lemmaConcatPreservesForall!861 (exprs!7046 lt!2530009) (exprs!7046 ct2!306) lambda!419246))))

(assert (=> bs!1876383 (= (dynLambda!27581 lambda!419245 lt!2530009) (Context!13093 (++!15633 (exprs!7046 lt!2530009) (exprs!7046 ct2!306))))))

(declare-fun m!7768692 () Bool)

(assert (=> bs!1876383 m!7768692))

(declare-fun m!7768694 () Bool)

(assert (=> bs!1876383 m!7768694))

(assert (=> d!2203573 d!2203579))

(declare-fun b_lambda!268367 () Bool)

(assert (= b_lambda!268359 (or b!7052005 b_lambda!268367)))

(declare-fun bs!1876384 () Bool)

(declare-fun d!2203581 () Bool)

(assert (= bs!1876384 (and d!2203581 b!7052005)))

(assert (=> bs!1876384 (= (dynLambda!27579 lambda!419244 lt!2529997) (matchZipper!3090 (set.insert lt!2529997 (as set.empty (Set Context!13092))) s!7408))))

(declare-fun m!7768696 () Bool)

(assert (=> bs!1876384 m!7768696))

(assert (=> bs!1876384 m!7768696))

(declare-fun m!7768698 () Bool)

(assert (=> bs!1876384 m!7768698))

(assert (=> d!2203559 d!2203581))

(push 1)

(assert (not b!7052091))

(assert (not b_lambda!268367))

(assert (not b!7052096))

(assert (not b!7052074))

(assert (not bs!1876383))

(assert (not d!2203563))

(assert (not d!2203573))

(assert (not d!2203571))

(assert (not b!7052046))

(assert (not b!7052049))

(assert (not bs!1876384))

(assert (not d!2203577))

(assert (not b!7052047))

(assert (not b!7052086))

(assert (not d!2203549))

(assert (not d!2203569))

(assert tp_is_empty!44325)

(assert (not setNonEmpty!49718))

(assert (not d!2203543))

(assert (not d!2203557))

(assert (not b_lambda!268365))

(assert (not b!7052048))

(assert (not d!2203551))

(assert (not d!2203565))

(assert (not d!2203559))

(assert (not d!2203547))

(assert (not b!7052097))

(assert (not d!2203553))

(assert (not b!7052054))

(assert (not b!7052075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

