; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45048 () Bool)

(assert start!45048)

(declare-fun b_free!13141 () Bool)

(declare-fun b_next!13141 () Bool)

(assert (=> start!45048 (= b_free!13141 (not b_next!13141))))

(declare-fun tp!130638 () Bool)

(declare-fun b_and!50427 () Bool)

(assert (=> start!45048 (= tp!130638 b_and!50427)))

(declare-fun b_free!13143 () Bool)

(declare-fun b_next!13143 () Bool)

(assert (=> start!45048 (= b_free!13143 (not b_next!13143))))

(declare-fun tp!130636 () Bool)

(declare-fun b_and!50429 () Bool)

(assert (=> start!45048 (= tp!130636 b_and!50429)))

(assert (=> start!45048 true))

(declare-fun order!4169 () Int)

(declare-fun f!1027 () Int)

(declare-fun lambda!13952 () Int)

(declare-fun order!4167 () Int)

(declare-fun dynLambda!2845 (Int Int) Int)

(declare-fun dynLambda!2846 (Int Int) Int)

(assert (=> start!45048 (< (dynLambda!2845 order!4167 f!1027) (dynLambda!2846 order!4169 lambda!13952))))

(assert (=> start!45048 true))

(declare-fun order!4171 () Int)

(declare-fun p!1789 () Int)

(declare-fun dynLambda!2847 (Int Int) Int)

(assert (=> start!45048 (< (dynLambda!2847 order!4171 p!1789) (dynLambda!2846 order!4169 lambda!13952))))

(declare-fun setIsEmpty!1921 () Bool)

(declare-fun setRes!1921 () Bool)

(assert (=> setIsEmpty!1921 setRes!1921))

(declare-fun res!209099 () Bool)

(declare-fun e!288357 () Bool)

(assert (=> start!45048 (=> (not res!209099) (not e!288357))))

(declare-fun Forall!237 (Int) Bool)

(assert (=> start!45048 (= res!209099 (Forall!237 lambda!13952))))

(assert (=> start!45048 e!288357))

(assert (=> start!45048 tp!130638))

(assert (=> start!45048 tp!130636))

(declare-fun condSetEmpty!1921 () Bool)

(declare-datatypes ((A!365 0))(
  ( (A!366 (val!1503 Int)) )
))
(declare-fun s!1494 () (Set A!365))

(assert (=> start!45048 (= condSetEmpty!1921 (= s!1494 (as set.empty (Set A!365))))))

(assert (=> start!45048 setRes!1921))

(declare-fun e!288359 () Bool)

(assert (=> start!45048 e!288359))

(declare-fun setNonEmpty!1921 () Bool)

(declare-fun tp!130637 () Bool)

(declare-fun tp_is_empty!2109 () Bool)

(assert (=> setNonEmpty!1921 (= setRes!1921 (and tp!130637 tp_is_empty!2109))))

(declare-fun setElem!1921 () A!365)

(declare-fun setRest!1921 () (Set A!365))

(assert (=> setNonEmpty!1921 (= s!1494 (set.union (set.insert setElem!1921 (as set.empty (Set A!365))) setRest!1921))))

(declare-fun b!471519 () Bool)

(declare-fun e!288360 () Bool)

(declare-fun e!288356 () Bool)

(assert (=> b!471519 (= e!288360 (not e!288356))))

(declare-fun res!209098 () Bool)

(assert (=> b!471519 (=> res!209098 e!288356)))

(assert (=> b!471519 (= res!209098 (not (Forall!237 lambda!13952)))))

(declare-datatypes ((Unit!8281 0))(
  ( (Unit!8282) )
))
(declare-fun lt!210063 () Unit!8281)

(declare-datatypes ((B!927 0))(
  ( (B!928 (val!1504 Int)) )
))
(declare-datatypes ((List!4550 0))(
  ( (Nil!4540) (Cons!4540 (h!9937 B!927) (t!72967 List!4550)) )
))
(declare-fun l!2882 () List!4550)

(declare-fun lt!210064 () List!4550)

(declare-fun subseqTail!7 (List!4550 List!4550) Unit!8281)

(assert (=> b!471519 (= lt!210063 (subseqTail!7 l!2882 lt!210064))))

(declare-fun dynLambda!2848 (Int B!927) Bool)

(assert (=> b!471519 (dynLambda!2848 p!1789 (h!9937 l!2882))))

(declare-fun lt!210065 () Unit!8281)

(declare-fun lemmaFlatMapForallElem!9 ((Set A!365) Int Int B!927) Unit!8281)

(assert (=> b!471519 (= lt!210065 (lemmaFlatMapForallElem!9 s!1494 f!1027 p!1789 (h!9937 l!2882)))))

(declare-fun empty!2591 () A!365)

(declare-fun flatMapPost!15 ((Set A!365) Int B!927) A!365)

(assert (=> b!471519 (= (flatMapPost!15 s!1494 f!1027 (h!9937 l!2882)) empty!2591)))

(assert (=> b!471519 true))

(assert (=> b!471519 tp_is_empty!2109))

(declare-fun b!471520 () Bool)

(declare-fun e!288358 () Bool)

(assert (=> b!471520 (= e!288358 e!288360)))

(declare-fun res!209097 () Bool)

(assert (=> b!471520 (=> (not res!209097) (not e!288360))))

(declare-fun lt!210066 () (Set B!927))

(assert (=> b!471520 (= res!209097 (set.member (h!9937 l!2882) lt!210066))))

(declare-fun lt!210067 () Unit!8281)

(declare-fun subseqContains!17 (List!4550 List!4550 B!927) Unit!8281)

(assert (=> b!471520 (= lt!210067 (subseqContains!17 l!2882 lt!210064 (h!9937 l!2882)))))

(declare-fun b!471521 () Bool)

(declare-fun tp_is_empty!2111 () Bool)

(declare-fun tp!130639 () Bool)

(assert (=> b!471521 (= e!288359 (and tp_is_empty!2111 tp!130639))))

(declare-fun b!471522 () Bool)

(declare-fun subseq!108 (List!4550 List!4550) Bool)

(assert (=> b!471522 (= e!288356 (subseq!108 (t!72967 l!2882) lt!210064))))

(declare-fun b!471523 () Bool)

(assert (=> b!471523 (= e!288357 e!288358)))

(declare-fun res!209101 () Bool)

(assert (=> b!471523 (=> (not res!209101) (not e!288358))))

(assert (=> b!471523 (= res!209101 (subseq!108 l!2882 lt!210064))))

(declare-fun toList!321 ((Set B!927)) List!4550)

(assert (=> b!471523 (= lt!210064 (toList!321 lt!210066))))

(declare-fun flatMap!87 ((Set A!365) Int) (Set B!927))

(assert (=> b!471523 (= lt!210066 (flatMap!87 s!1494 f!1027))))

(declare-fun b!471524 () Bool)

(declare-fun res!209100 () Bool)

(assert (=> b!471524 (=> (not res!209100) (not e!288358))))

(assert (=> b!471524 (= res!209100 (is-Cons!4540 l!2882))))

(assert (= (and start!45048 res!209099) b!471523))

(assert (= (and b!471523 res!209101) b!471524))

(assert (= (and b!471524 res!209100) b!471520))

(assert (= (and b!471520 res!209097) b!471519))

(assert (= (and b!471519 (not res!209098)) b!471522))

(assert (= (and start!45048 condSetEmpty!1921) setIsEmpty!1921))

(assert (= (and start!45048 (not condSetEmpty!1921)) setNonEmpty!1921))

(assert (= (and start!45048 (is-Cons!4540 l!2882)) b!471521))

(declare-fun b_lambda!19667 () Bool)

(assert (=> (not b_lambda!19667) (not b!471519)))

(declare-fun t!72966 () Bool)

(declare-fun tb!47021 () Bool)

(assert (=> (and start!45048 (= p!1789 p!1789) t!72966) tb!47021))

(declare-fun result!51776 () Bool)

(assert (=> tb!47021 (= result!51776 true)))

(assert (=> b!471519 t!72966))

(declare-fun b_and!50431 () Bool)

(assert (= b_and!50429 (and (=> t!72966 result!51776) b_and!50431)))

(declare-fun m!745013 () Bool)

(assert (=> b!471522 m!745013))

(declare-fun m!745015 () Bool)

(assert (=> start!45048 m!745015))

(declare-fun m!745017 () Bool)

(assert (=> b!471519 m!745017))

(declare-fun m!745019 () Bool)

(assert (=> b!471519 m!745019))

(assert (=> b!471519 m!745015))

(declare-fun m!745021 () Bool)

(assert (=> b!471519 m!745021))

(declare-fun m!745023 () Bool)

(assert (=> b!471519 m!745023))

(declare-fun m!745025 () Bool)

(assert (=> b!471523 m!745025))

(declare-fun m!745027 () Bool)

(assert (=> b!471523 m!745027))

(declare-fun m!745029 () Bool)

(assert (=> b!471523 m!745029))

(declare-fun m!745031 () Bool)

(assert (=> b!471520 m!745031))

(declare-fun m!745033 () Bool)

(assert (=> b!471520 m!745033))

(push 1)

(assert (not b_lambda!19667))

(assert tp_is_empty!2111)

(assert (not b_next!13143))

(assert tp_is_empty!2109)

(assert (not setNonEmpty!1921))

(assert b_and!50427)

(assert b_and!50431)

(assert (not start!45048))

(assert (not b!471520))

(assert (not b!471523))

(assert (not b!471519))

(assert (not b!471522))

(assert (not b!471521))

(assert (not b_next!13141))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50427)

(assert b_and!50431)

(assert (not b_next!13143))

(assert (not b_next!13141))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19671 () Bool)

(assert (= b_lambda!19667 (or (and start!45048 b_free!13143) b_lambda!19671)))

(push 1)

(assert (not b_lambda!19671))

(assert tp_is_empty!2111)

(assert (not b_next!13143))

(assert tp_is_empty!2109)

(assert (not setNonEmpty!1921))

(assert b_and!50427)

(assert b_and!50431)

(assert (not start!45048))

(assert (not b!471520))

(assert (not b!471523))

(assert (not b!471519))

(assert (not b!471522))

(assert (not b!471521))

(assert (not b_next!13141))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50427)

(assert b_and!50431)

(assert (not b_next!13143))

(assert (not b_next!13141))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!471560 () Bool)

(declare-fun e!288385 () Bool)

(declare-fun e!288384 () Bool)

(assert (=> b!471560 (= e!288385 e!288384)))

(declare-fun res!209125 () Bool)

(assert (=> b!471560 (=> res!209125 e!288384)))

(declare-fun e!288386 () Bool)

(assert (=> b!471560 (= res!209125 e!288386)))

(declare-fun res!209126 () Bool)

(assert (=> b!471560 (=> (not res!209126) (not e!288386))))

(assert (=> b!471560 (= res!209126 (= (h!9937 (t!72967 l!2882)) (h!9937 lt!210064)))))

(declare-fun b!471561 () Bool)

(assert (=> b!471561 (= e!288386 (subseq!108 (t!72967 (t!72967 l!2882)) (t!72967 lt!210064)))))

(declare-fun b!471562 () Bool)

(assert (=> b!471562 (= e!288384 (subseq!108 (t!72967 l!2882) (t!72967 lt!210064)))))

(declare-fun b!471559 () Bool)

(declare-fun e!288387 () Bool)

(assert (=> b!471559 (= e!288387 e!288385)))

(declare-fun res!209127 () Bool)

(assert (=> b!471559 (=> (not res!209127) (not e!288385))))

(assert (=> b!471559 (= res!209127 (is-Cons!4540 lt!210064))))

(declare-fun d!179318 () Bool)

(declare-fun res!209128 () Bool)

(assert (=> d!179318 (=> res!209128 e!288387)))

(assert (=> d!179318 (= res!209128 (is-Nil!4540 (t!72967 l!2882)))))

(assert (=> d!179318 (= (subseq!108 (t!72967 l!2882) lt!210064) e!288387)))

(assert (= (and d!179318 (not res!209128)) b!471559))

(assert (= (and b!471559 res!209127) b!471560))

(assert (= (and b!471560 res!209126) b!471561))

(assert (= (and b!471560 (not res!209125)) b!471562))

(declare-fun m!745057 () Bool)

(assert (=> b!471561 m!745057))

(declare-fun m!745059 () Bool)

(assert (=> b!471562 m!745059))

(assert (=> b!471522 d!179318))

(declare-fun b!471564 () Bool)

(declare-fun e!288389 () Bool)

(declare-fun e!288388 () Bool)

(assert (=> b!471564 (= e!288389 e!288388)))

(declare-fun res!209129 () Bool)

(assert (=> b!471564 (=> res!209129 e!288388)))

(declare-fun e!288390 () Bool)

(assert (=> b!471564 (= res!209129 e!288390)))

(declare-fun res!209130 () Bool)

(assert (=> b!471564 (=> (not res!209130) (not e!288390))))

(assert (=> b!471564 (= res!209130 (= (h!9937 l!2882) (h!9937 lt!210064)))))

(declare-fun b!471565 () Bool)

(assert (=> b!471565 (= e!288390 (subseq!108 (t!72967 l!2882) (t!72967 lt!210064)))))

(declare-fun b!471566 () Bool)

(assert (=> b!471566 (= e!288388 (subseq!108 l!2882 (t!72967 lt!210064)))))

(declare-fun b!471563 () Bool)

(declare-fun e!288391 () Bool)

(assert (=> b!471563 (= e!288391 e!288389)))

(declare-fun res!209131 () Bool)

(assert (=> b!471563 (=> (not res!209131) (not e!288389))))

(assert (=> b!471563 (= res!209131 (is-Cons!4540 lt!210064))))

(declare-fun d!179320 () Bool)

(declare-fun res!209132 () Bool)

(assert (=> d!179320 (=> res!209132 e!288391)))

(assert (=> d!179320 (= res!209132 (is-Nil!4540 l!2882))))

(assert (=> d!179320 (= (subseq!108 l!2882 lt!210064) e!288391)))

(assert (= (and d!179320 (not res!209132)) b!471563))

(assert (= (and b!471563 res!209131) b!471564))

(assert (= (and b!471564 res!209130) b!471565))

(assert (= (and b!471564 (not res!209129)) b!471566))

(assert (=> b!471565 m!745059))

(declare-fun m!745061 () Bool)

(assert (=> b!471566 m!745061))

(assert (=> b!471523 d!179320))

(declare-fun d!179322 () Bool)

(declare-fun e!288394 () Bool)

(assert (=> d!179322 e!288394))

(declare-fun res!209135 () Bool)

(assert (=> d!179322 (=> (not res!209135) (not e!288394))))

(declare-fun lt!210085 () List!4550)

(declare-fun noDuplicate!94 (List!4550) Bool)

(assert (=> d!179322 (= res!209135 (noDuplicate!94 lt!210085))))

(declare-fun choose!3550 ((Set B!927)) List!4550)

(assert (=> d!179322 (= lt!210085 (choose!3550 lt!210066))))

(assert (=> d!179322 (= (toList!321 lt!210066) lt!210085)))

(declare-fun b!471569 () Bool)

(declare-fun content!771 (List!4550) (Set B!927))

(assert (=> b!471569 (= e!288394 (= (content!771 lt!210085) lt!210066))))

(assert (= (and d!179322 res!209135) b!471569))

(declare-fun m!745063 () Bool)

(assert (=> d!179322 m!745063))

(declare-fun m!745065 () Bool)

(assert (=> d!179322 m!745065))

(declare-fun m!745067 () Bool)

(assert (=> b!471569 m!745067))

(assert (=> b!471523 d!179322))

(declare-fun d!179324 () Bool)

(declare-fun choose!3551 ((Set A!365) Int) (Set B!927))

(assert (=> d!179324 (= (flatMap!87 s!1494 f!1027) (choose!3551 s!1494 f!1027))))

(declare-fun bs!58421 () Bool)

(assert (= bs!58421 d!179324))

(declare-fun m!745069 () Bool)

(assert (=> bs!58421 m!745069))

(assert (=> b!471523 d!179324))

(declare-fun d!179326 () Bool)

(declare-fun choose!3552 (Int) Bool)

(assert (=> d!179326 (= (Forall!237 lambda!13952) (choose!3552 lambda!13952))))

(declare-fun bs!58422 () Bool)

(assert (= bs!58422 d!179326))

(declare-fun m!745071 () Bool)

(assert (=> bs!58422 m!745071))

(assert (=> b!471519 d!179326))

(declare-fun d!179328 () Bool)

(declare-fun tail!662 (List!4550) List!4550)

(assert (=> d!179328 (subseq!108 (tail!662 l!2882) lt!210064)))

(declare-fun lt!210088 () Unit!8281)

(declare-fun e!288404 () Unit!8281)

(assert (=> d!179328 (= lt!210088 e!288404)))

(declare-fun c!94807 () Bool)

(assert (=> d!179328 (= c!94807 (and (is-Cons!4540 l!2882) (is-Cons!4540 lt!210064)))))

(declare-fun e!288406 () Bool)

(assert (=> d!179328 e!288406))

(declare-fun res!209138 () Bool)

(assert (=> d!179328 (=> (not res!209138) (not e!288406))))

(declare-fun isEmpty!3527 (List!4550) Bool)

(assert (=> d!179328 (= res!209138 (not (isEmpty!3527 l!2882)))))

(assert (=> d!179328 (= (subseqTail!7 l!2882 lt!210064) lt!210088)))

(declare-fun b!471584 () Bool)

(declare-fun e!288405 () Unit!8281)

(declare-fun call!32801 () Unit!8281)

(assert (=> b!471584 (= e!288405 call!32801)))

(declare-fun b!471585 () Bool)

(declare-fun Unit!8285 () Unit!8281)

(assert (=> b!471585 (= e!288404 Unit!8285)))

(declare-fun b!471586 () Bool)

(declare-fun e!288403 () Unit!8281)

(declare-fun Unit!8286 () Unit!8281)

(assert (=> b!471586 (= e!288403 Unit!8286)))

(declare-fun b!471587 () Bool)

(assert (=> b!471587 (= e!288404 e!288405)))

(declare-fun c!94808 () Bool)

(assert (=> b!471587 (= c!94808 (subseq!108 l!2882 (t!72967 lt!210064)))))

(declare-fun bm!32796 () Bool)

(assert (=> bm!32796 (= call!32801 (subseqTail!7 (ite c!94808 l!2882 (t!72967 l!2882)) (t!72967 lt!210064)))))

(declare-fun b!471588 () Bool)

(declare-fun c!94809 () Bool)

(assert (=> b!471588 (= c!94809 (not (isEmpty!3527 (t!72967 l!2882))))))

(assert (=> b!471588 (= e!288405 e!288403)))

(declare-fun b!471589 () Bool)

(assert (=> b!471589 (= e!288406 (subseq!108 l!2882 lt!210064))))

(declare-fun b!471590 () Bool)

(assert (=> b!471590 (= e!288403 call!32801)))

(assert (= (and d!179328 res!209138) b!471589))

(assert (= (and d!179328 c!94807) b!471587))

(assert (= (and d!179328 (not c!94807)) b!471585))

(assert (= (and b!471587 c!94808) b!471584))

(assert (= (and b!471587 (not c!94808)) b!471588))

(assert (= (and b!471588 c!94809) b!471590))

(assert (= (and b!471588 (not c!94809)) b!471586))

(assert (= (or b!471584 b!471590) bm!32796))

(assert (=> b!471589 m!745025))

(assert (=> b!471587 m!745061))

(declare-fun m!745073 () Bool)

(assert (=> bm!32796 m!745073))

(declare-fun m!745075 () Bool)

(assert (=> d!179328 m!745075))

(assert (=> d!179328 m!745075))

(declare-fun m!745077 () Bool)

(assert (=> d!179328 m!745077))

(declare-fun m!745079 () Bool)

(assert (=> d!179328 m!745079))

(declare-fun m!745081 () Bool)

(assert (=> b!471588 m!745081))

(assert (=> b!471519 d!179328))

(declare-fun d!179330 () Bool)

(assert (=> d!179330 (dynLambda!2848 p!1789 (h!9937 l!2882))))

(declare-fun lt!210091 () Unit!8281)

(declare-fun choose!3553 ((Set A!365) Int Int B!927) Unit!8281)

(assert (=> d!179330 (= lt!210091 (choose!3553 s!1494 f!1027 p!1789 (h!9937 l!2882)))))

(assert (=> d!179330 (set.member (h!9937 l!2882) (flatMap!87 s!1494 f!1027))))

(assert (=> d!179330 (= (lemmaFlatMapForallElem!9 s!1494 f!1027 p!1789 (h!9937 l!2882)) lt!210091)))

(declare-fun b_lambda!19675 () Bool)

(assert (=> (not b_lambda!19675) (not d!179330)))

(assert (=> d!179330 t!72966))

(declare-fun b_and!50439 () Bool)

(assert (= b_and!50431 (and (=> t!72966 result!51776) b_and!50439)))

(assert (=> d!179330 m!745017))

(declare-fun m!745083 () Bool)

(assert (=> d!179330 m!745083))

(assert (=> d!179330 m!745029))

(declare-fun m!745085 () Bool)

(assert (=> d!179330 m!745085))

(assert (=> b!471519 d!179330))

(declare-fun bs!58423 () Bool)

(declare-fun d!179332 () Bool)

(assert (= bs!58423 (and d!179332 start!45048)))

(declare-fun lambda!13960 () Int)

(assert (=> bs!58423 (not (= lambda!13960 lambda!13952))))

(assert (=> d!179332 true))

(assert (=> d!179332 true))

(assert (=> d!179332 (< (dynLambda!2845 order!4167 f!1027) (dynLambda!2846 order!4169 lambda!13960))))

(declare-fun exists!48 ((Set A!365) Int) Bool)

(assert (=> d!179332 (= (set.member (h!9937 l!2882) (flatMap!87 s!1494 f!1027)) (exists!48 s!1494 lambda!13960))))

(declare-fun lt!210094 () A!365)

(declare-fun choose!3554 ((Set A!365) Int B!927) A!365)

(assert (=> d!179332 (= lt!210094 (choose!3554 s!1494 f!1027 (h!9937 l!2882)))))

(assert (=> d!179332 (= (flatMapPost!15 s!1494 f!1027 (h!9937 l!2882)) lt!210094)))

(declare-fun bs!58424 () Bool)

(assert (= bs!58424 d!179332))

(assert (=> bs!58424 m!745029))

(assert (=> bs!58424 m!745085))

(declare-fun m!745087 () Bool)

(assert (=> bs!58424 m!745087))

(declare-fun m!745089 () Bool)

(assert (=> bs!58424 m!745089))

(assert (=> b!471519 d!179332))

(declare-fun d!179334 () Bool)

(declare-fun contains!1023 (List!4550 B!927) Bool)

(assert (=> d!179334 (contains!1023 lt!210064 (h!9937 l!2882))))

(declare-fun lt!210097 () Unit!8281)

(declare-fun choose!3555 (List!4550 List!4550 B!927) Unit!8281)

(assert (=> d!179334 (= lt!210097 (choose!3555 l!2882 lt!210064 (h!9937 l!2882)))))

(declare-fun e!288409 () Bool)

(assert (=> d!179334 e!288409))

(declare-fun res!209141 () Bool)

(assert (=> d!179334 (=> (not res!209141) (not e!288409))))

(assert (=> d!179334 (= res!209141 (subseq!108 l!2882 lt!210064))))

(assert (=> d!179334 (= (subseqContains!17 l!2882 lt!210064 (h!9937 l!2882)) lt!210097)))

(declare-fun b!471596 () Bool)

(assert (=> b!471596 (= e!288409 (contains!1023 l!2882 (h!9937 l!2882)))))

(assert (= (and d!179334 res!209141) b!471596))

(declare-fun m!745091 () Bool)

(assert (=> d!179334 m!745091))

(declare-fun m!745093 () Bool)

(assert (=> d!179334 m!745093))

(assert (=> d!179334 m!745025))

(declare-fun m!745095 () Bool)

(assert (=> b!471596 m!745095))

(assert (=> b!471520 d!179334))

(assert (=> start!45048 d!179326))

(declare-fun b!471601 () Bool)

(declare-fun e!288412 () Bool)

(declare-fun tp!130654 () Bool)

(assert (=> b!471601 (= e!288412 (and tp_is_empty!2111 tp!130654))))

(assert (=> b!471521 (= tp!130639 e!288412)))

(assert (= (and b!471521 (is-Cons!4540 (t!72967 l!2882))) b!471601))

(declare-fun condSetEmpty!1927 () Bool)

(assert (=> setNonEmpty!1921 (= condSetEmpty!1927 (= setRest!1921 (as set.empty (Set A!365))))))

(declare-fun setRes!1927 () Bool)

(assert (=> setNonEmpty!1921 (= tp!130637 setRes!1927)))

(declare-fun setIsEmpty!1927 () Bool)

(assert (=> setIsEmpty!1927 setRes!1927))

(declare-fun setNonEmpty!1927 () Bool)

(declare-fun tp!130657 () Bool)

(assert (=> setNonEmpty!1927 (= setRes!1927 (and tp!130657 tp_is_empty!2109))))

(declare-fun setElem!1927 () A!365)

(declare-fun setRest!1927 () (Set A!365))

(assert (=> setNonEmpty!1927 (= setRest!1921 (set.union (set.insert setElem!1927 (as set.empty (Set A!365))) setRest!1927))))

(assert (= (and setNonEmpty!1921 condSetEmpty!1927) setIsEmpty!1927))

(assert (= (and setNonEmpty!1921 (not condSetEmpty!1927)) setNonEmpty!1927))

(declare-fun b_lambda!19677 () Bool)

(assert (= b_lambda!19675 (or (and start!45048 b_free!13143) b_lambda!19677)))

(push 1)

(assert (not b!471566))

(assert (not d!179322))

(assert (not d!179328))

(assert (not b!471588))

(assert tp_is_empty!2111)

(assert (not b!471569))

(assert (not b!471596))

(assert tp_is_empty!2109)

(assert (not b_lambda!19677))

(assert (not b!471589))

(assert (not b!471601))

(assert (not d!179330))

(assert (not d!179334))

(assert (not d!179324))

(assert (not b_lambda!19671))

(assert (not setNonEmpty!1927))

(assert b_and!50439)

(assert (not b!471565))

(assert (not b!471587))

(assert (not b_next!13143))

(assert (not d!179326))

(assert (not d!179332))

(assert (not b_next!13141))

(assert b_and!50427)

(assert (not b!471562))

(assert (not bm!32796))

(assert (not b!471561))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50427)

(assert b_and!50439)

(assert (not b_next!13143))

(assert (not b_next!13141))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!471653 () Bool)

(declare-fun e!288448 () Bool)

(declare-fun e!288447 () Bool)

(assert (=> b!471653 (= e!288448 e!288447)))

(declare-fun res!209167 () Bool)

(assert (=> b!471653 (=> res!209167 e!288447)))

(declare-fun e!288449 () Bool)

(assert (=> b!471653 (= res!209167 e!288449)))

(declare-fun res!209168 () Bool)

(assert (=> b!471653 (=> (not res!209168) (not e!288449))))

(assert (=> b!471653 (= res!209168 (= (h!9937 (t!72967 l!2882)) (h!9937 (t!72967 lt!210064))))))

(declare-fun b!471654 () Bool)

(assert (=> b!471654 (= e!288449 (subseq!108 (t!72967 (t!72967 l!2882)) (t!72967 (t!72967 lt!210064))))))

(declare-fun b!471655 () Bool)

(assert (=> b!471655 (= e!288447 (subseq!108 (t!72967 l!2882) (t!72967 (t!72967 lt!210064))))))

(declare-fun b!471652 () Bool)

(declare-fun e!288450 () Bool)

(assert (=> b!471652 (= e!288450 e!288448)))

(declare-fun res!209169 () Bool)

(assert (=> b!471652 (=> (not res!209169) (not e!288448))))

(assert (=> b!471652 (= res!209169 (is-Cons!4540 (t!72967 lt!210064)))))

(declare-fun d!179354 () Bool)

(declare-fun res!209170 () Bool)

(assert (=> d!179354 (=> res!209170 e!288450)))

(assert (=> d!179354 (= res!209170 (is-Nil!4540 (t!72967 l!2882)))))

(assert (=> d!179354 (= (subseq!108 (t!72967 l!2882) (t!72967 lt!210064)) e!288450)))

(assert (= (and d!179354 (not res!209170)) b!471652))

(assert (= (and b!471652 res!209169) b!471653))

(assert (= (and b!471653 res!209168) b!471654))

(assert (= (and b!471653 (not res!209167)) b!471655))

(declare-fun m!745137 () Bool)

(assert (=> b!471654 m!745137))

(declare-fun m!745139 () Bool)

(assert (=> b!471655 m!745139))

(assert (=> b!471562 d!179354))

(declare-fun b!471657 () Bool)

(declare-fun e!288452 () Bool)

(declare-fun e!288451 () Bool)

(assert (=> b!471657 (= e!288452 e!288451)))

(declare-fun res!209171 () Bool)

(assert (=> b!471657 (=> res!209171 e!288451)))

(declare-fun e!288453 () Bool)

(assert (=> b!471657 (= res!209171 e!288453)))

(declare-fun res!209172 () Bool)

(assert (=> b!471657 (=> (not res!209172) (not e!288453))))

(assert (=> b!471657 (= res!209172 (= (h!9937 (t!72967 (t!72967 l!2882))) (h!9937 (t!72967 lt!210064))))))

(declare-fun b!471658 () Bool)

(assert (=> b!471658 (= e!288453 (subseq!108 (t!72967 (t!72967 (t!72967 l!2882))) (t!72967 (t!72967 lt!210064))))))

(declare-fun b!471659 () Bool)

(assert (=> b!471659 (= e!288451 (subseq!108 (t!72967 (t!72967 l!2882)) (t!72967 (t!72967 lt!210064))))))

(declare-fun b!471656 () Bool)

(declare-fun e!288454 () Bool)

(assert (=> b!471656 (= e!288454 e!288452)))

(declare-fun res!209173 () Bool)

(assert (=> b!471656 (=> (not res!209173) (not e!288452))))

(assert (=> b!471656 (= res!209173 (is-Cons!4540 (t!72967 lt!210064)))))

(declare-fun d!179356 () Bool)

(declare-fun res!209174 () Bool)

(assert (=> d!179356 (=> res!209174 e!288454)))

(assert (=> d!179356 (= res!209174 (is-Nil!4540 (t!72967 (t!72967 l!2882))))))

(assert (=> d!179356 (= (subseq!108 (t!72967 (t!72967 l!2882)) (t!72967 lt!210064)) e!288454)))

(assert (= (and d!179356 (not res!209174)) b!471656))

(assert (= (and b!471656 res!209173) b!471657))

(assert (= (and b!471657 res!209172) b!471658))

(assert (= (and b!471657 (not res!209171)) b!471659))

(declare-fun m!745141 () Bool)

(assert (=> b!471658 m!745141))

(assert (=> b!471659 m!745137))

(assert (=> b!471561 d!179356))

(declare-fun b!471661 () Bool)

(declare-fun e!288456 () Bool)

(declare-fun e!288455 () Bool)

(assert (=> b!471661 (= e!288456 e!288455)))

(declare-fun res!209175 () Bool)

(assert (=> b!471661 (=> res!209175 e!288455)))

(declare-fun e!288457 () Bool)

(assert (=> b!471661 (= res!209175 e!288457)))

(declare-fun res!209176 () Bool)

(assert (=> b!471661 (=> (not res!209176) (not e!288457))))

(assert (=> b!471661 (= res!209176 (= (h!9937 l!2882) (h!9937 (t!72967 lt!210064))))))

(declare-fun b!471662 () Bool)

(assert (=> b!471662 (= e!288457 (subseq!108 (t!72967 l!2882) (t!72967 (t!72967 lt!210064))))))

(declare-fun b!471663 () Bool)

(assert (=> b!471663 (= e!288455 (subseq!108 l!2882 (t!72967 (t!72967 lt!210064))))))

(declare-fun b!471660 () Bool)

(declare-fun e!288458 () Bool)

(assert (=> b!471660 (= e!288458 e!288456)))

(declare-fun res!209177 () Bool)

(assert (=> b!471660 (=> (not res!209177) (not e!288456))))

(assert (=> b!471660 (= res!209177 (is-Cons!4540 (t!72967 lt!210064)))))

(declare-fun d!179358 () Bool)

(declare-fun res!209178 () Bool)

(assert (=> d!179358 (=> res!209178 e!288458)))

(assert (=> d!179358 (= res!209178 (is-Nil!4540 l!2882))))

(assert (=> d!179358 (= (subseq!108 l!2882 (t!72967 lt!210064)) e!288458)))

(assert (= (and d!179358 (not res!209178)) b!471660))

(assert (= (and b!471660 res!209177) b!471661))

(assert (= (and b!471661 res!209176) b!471662))

(assert (= (and b!471661 (not res!209175)) b!471663))

(assert (=> b!471662 m!745139))

(declare-fun m!745143 () Bool)

(assert (=> b!471663 m!745143))

(assert (=> b!471566 d!179358))

(declare-fun d!179360 () Bool)

(declare-fun c!94821 () Bool)

(assert (=> d!179360 (= c!94821 (is-Nil!4540 lt!210085))))

(declare-fun e!288464 () (Set B!927))

(assert (=> d!179360 (= (content!771 lt!210085) e!288464)))

(declare-fun b!471673 () Bool)

(assert (=> b!471673 (= e!288464 (as set.empty (Set B!927)))))

(declare-fun b!471674 () Bool)

(assert (=> b!471674 (= e!288464 (set.union (set.insert (h!9937 lt!210085) (as set.empty (Set B!927))) (content!771 (t!72967 lt!210085))))))

(assert (= (and d!179360 c!94821) b!471673))

(assert (= (and d!179360 (not c!94821)) b!471674))

(declare-fun m!745145 () Bool)

(assert (=> b!471674 m!745145))

(declare-fun m!745147 () Bool)

(assert (=> b!471674 m!745147))

(assert (=> b!471569 d!179360))

(assert (=> b!471565 d!179354))

(declare-fun d!179362 () Bool)

(assert (=> d!179362 (dynLambda!2848 p!1789 (h!9937 l!2882))))

(assert (=> d!179362 true))

(declare-fun _$20!72 () Unit!8281)

(assert (=> d!179362 (= (choose!3553 s!1494 f!1027 p!1789 (h!9937 l!2882)) _$20!72)))

(declare-fun b_lambda!19683 () Bool)

(assert (=> (not b_lambda!19683) (not d!179362)))

(assert (=> d!179362 t!72966))

(declare-fun b_and!50443 () Bool)

(assert (= b_and!50439 (and (=> t!72966 result!51776) b_and!50443)))

(assert (=> d!179362 m!745017))

(assert (=> d!179330 d!179362))

(assert (=> d!179330 d!179324))

(declare-fun d!179364 () Bool)

(declare-fun lt!210115 () Bool)

(assert (=> d!179364 (= lt!210115 (set.member (h!9937 l!2882) (content!771 l!2882)))))

(declare-fun e!288469 () Bool)

(assert (=> d!179364 (= lt!210115 e!288469)))

(declare-fun res!209184 () Bool)

(assert (=> d!179364 (=> (not res!209184) (not e!288469))))

(assert (=> d!179364 (= res!209184 (is-Cons!4540 l!2882))))

(assert (=> d!179364 (= (contains!1023 l!2882 (h!9937 l!2882)) lt!210115)))

(declare-fun b!471679 () Bool)

(declare-fun e!288470 () Bool)

(assert (=> b!471679 (= e!288469 e!288470)))

(declare-fun res!209183 () Bool)

(assert (=> b!471679 (=> res!209183 e!288470)))

(assert (=> b!471679 (= res!209183 (= (h!9937 l!2882) (h!9937 l!2882)))))

(declare-fun b!471680 () Bool)

(assert (=> b!471680 (= e!288470 (contains!1023 (t!72967 l!2882) (h!9937 l!2882)))))

(assert (= (and d!179364 res!209184) b!471679))

(assert (= (and b!471679 (not res!209183)) b!471680))

(declare-fun m!745149 () Bool)

(assert (=> d!179364 m!745149))

(declare-fun m!745151 () Bool)

(assert (=> d!179364 m!745151))

(declare-fun m!745153 () Bool)

(assert (=> b!471680 m!745153))

(assert (=> b!471596 d!179364))

(declare-fun d!179366 () Bool)

(assert (=> d!179366 true))

(declare-fun setRes!1933 () Bool)

(assert (=> d!179366 setRes!1933))

(declare-fun condSetEmpty!1933 () Bool)

(declare-fun res!209187 () (Set B!927))

(assert (=> d!179366 (= condSetEmpty!1933 (= res!209187 (as set.empty (Set B!927))))))

(assert (=> d!179366 (= (choose!3551 s!1494 f!1027) res!209187)))

(declare-fun setIsEmpty!1933 () Bool)

(assert (=> setIsEmpty!1933 setRes!1933))

(declare-fun setNonEmpty!1933 () Bool)

(declare-fun tp!130666 () Bool)

(assert (=> setNonEmpty!1933 (= setRes!1933 (and tp!130666 tp_is_empty!2111))))

(declare-fun setElem!1933 () B!927)

(declare-fun setRest!1933 () (Set B!927))

(assert (=> setNonEmpty!1933 (= res!209187 (set.union (set.insert setElem!1933 (as set.empty (Set B!927))) setRest!1933))))

(assert (= (and d!179366 condSetEmpty!1933) setIsEmpty!1933))

(assert (= (and d!179366 (not condSetEmpty!1933)) setNonEmpty!1933))

(assert (=> d!179324 d!179366))

(assert (=> d!179332 d!179324))

(declare-fun d!179368 () Bool)

(declare-fun lt!210118 () Bool)

(declare-datatypes ((List!4552 0))(
  ( (Nil!4542) (Cons!4542 (h!9939 A!365) (t!72974 List!4552)) )
))
(declare-fun exists!50 (List!4552 Int) Bool)

(declare-fun toList!323 ((Set A!365)) List!4552)

(assert (=> d!179368 (= lt!210118 (exists!50 (toList!323 s!1494) lambda!13960))))

(declare-fun choose!3560 ((Set A!365) Int) Bool)

(assert (=> d!179368 (= lt!210118 (choose!3560 s!1494 lambda!13960))))

(assert (=> d!179368 (= (exists!48 s!1494 lambda!13960) lt!210118)))

(declare-fun bs!58429 () Bool)

(assert (= bs!58429 d!179368))

(declare-fun m!745155 () Bool)

(assert (=> bs!58429 m!745155))

(assert (=> bs!58429 m!745155))

(declare-fun m!745157 () Bool)

(assert (=> bs!58429 m!745157))

(declare-fun m!745159 () Bool)

(assert (=> bs!58429 m!745159))

(assert (=> d!179332 d!179368))

(declare-fun bs!58430 () Bool)

(declare-fun d!179370 () Bool)

(assert (= bs!58430 (and d!179370 start!45048)))

(declare-fun lambda!13966 () Int)

(assert (=> bs!58430 (not (= lambda!13966 lambda!13952))))

(declare-fun bs!58431 () Bool)

(assert (= bs!58431 (and d!179370 d!179332)))

(assert (=> bs!58431 (= lambda!13966 lambda!13960)))

(assert (=> d!179370 true))

(assert (=> d!179370 true))

(assert (=> d!179370 (< (dynLambda!2845 order!4167 f!1027) (dynLambda!2846 order!4169 lambda!13966))))

(assert (=> d!179370 (= (set.member (h!9937 l!2882) (flatMap!87 s!1494 f!1027)) (exists!48 s!1494 lambda!13966))))

(assert (=> d!179370 tp_is_empty!2109))

(declare-fun _$3!150 () A!365)

(assert (=> d!179370 (= (choose!3554 s!1494 f!1027 (h!9937 l!2882)) _$3!150)))

(declare-fun bs!58432 () Bool)

(assert (= bs!58432 d!179370))

(assert (=> bs!58432 m!745029))

(assert (=> bs!58432 m!745085))

(declare-fun m!745161 () Bool)

(assert (=> bs!58432 m!745161))

(assert (=> d!179332 d!179370))

(assert (=> b!471589 d!179320))

(declare-fun d!179372 () Bool)

(assert (=> d!179372 true))

(assert (=> d!179372 true))

(declare-fun res!209190 () Bool)

(assert (=> d!179372 (= (choose!3552 lambda!13952) res!209190)))

(assert (=> d!179326 d!179372))

(declare-fun d!179374 () Bool)

(assert (=> d!179374 (= (isEmpty!3527 (t!72967 l!2882)) (is-Nil!4540 (t!72967 l!2882)))))

(assert (=> b!471588 d!179374))

(declare-fun d!179376 () Bool)

(assert (=> d!179376 (subseq!108 (tail!662 (ite c!94808 l!2882 (t!72967 l!2882))) (t!72967 lt!210064))))

(declare-fun lt!210119 () Unit!8281)

(declare-fun e!288472 () Unit!8281)

(assert (=> d!179376 (= lt!210119 e!288472)))

(declare-fun c!94822 () Bool)

(assert (=> d!179376 (= c!94822 (and (is-Cons!4540 (ite c!94808 l!2882 (t!72967 l!2882))) (is-Cons!4540 (t!72967 lt!210064))))))

(declare-fun e!288474 () Bool)

(assert (=> d!179376 e!288474))

(declare-fun res!209191 () Bool)

(assert (=> d!179376 (=> (not res!209191) (not e!288474))))

(assert (=> d!179376 (= res!209191 (not (isEmpty!3527 (ite c!94808 l!2882 (t!72967 l!2882)))))))

(assert (=> d!179376 (= (subseqTail!7 (ite c!94808 l!2882 (t!72967 l!2882)) (t!72967 lt!210064)) lt!210119)))

(declare-fun b!471682 () Bool)

(declare-fun e!288473 () Unit!8281)

(declare-fun call!32805 () Unit!8281)

(assert (=> b!471682 (= e!288473 call!32805)))

(declare-fun b!471683 () Bool)

(declare-fun Unit!8289 () Unit!8281)

(assert (=> b!471683 (= e!288472 Unit!8289)))

(declare-fun b!471684 () Bool)

(declare-fun e!288471 () Unit!8281)

(declare-fun Unit!8290 () Unit!8281)

(assert (=> b!471684 (= e!288471 Unit!8290)))

(declare-fun b!471685 () Bool)

(assert (=> b!471685 (= e!288472 e!288473)))

(declare-fun c!94823 () Bool)

(assert (=> b!471685 (= c!94823 (subseq!108 (ite c!94808 l!2882 (t!72967 l!2882)) (t!72967 (t!72967 lt!210064))))))

(declare-fun bm!32800 () Bool)

(assert (=> bm!32800 (= call!32805 (subseqTail!7 (ite c!94823 (ite c!94808 l!2882 (t!72967 l!2882)) (t!72967 (ite c!94808 l!2882 (t!72967 l!2882)))) (t!72967 (t!72967 lt!210064))))))

(declare-fun b!471686 () Bool)

(declare-fun c!94824 () Bool)

(assert (=> b!471686 (= c!94824 (not (isEmpty!3527 (t!72967 (ite c!94808 l!2882 (t!72967 l!2882))))))))

(assert (=> b!471686 (= e!288473 e!288471)))

(declare-fun b!471687 () Bool)

(assert (=> b!471687 (= e!288474 (subseq!108 (ite c!94808 l!2882 (t!72967 l!2882)) (t!72967 lt!210064)))))

(declare-fun b!471688 () Bool)

(assert (=> b!471688 (= e!288471 call!32805)))

(assert (= (and d!179376 res!209191) b!471687))

(assert (= (and d!179376 c!94822) b!471685))

(assert (= (and d!179376 (not c!94822)) b!471683))

(assert (= (and b!471685 c!94823) b!471682))

(assert (= (and b!471685 (not c!94823)) b!471686))

(assert (= (and b!471686 c!94824) b!471688))

(assert (= (and b!471686 (not c!94824)) b!471684))

(assert (= (or b!471682 b!471688) bm!32800))

(declare-fun m!745163 () Bool)

(assert (=> b!471687 m!745163))

(declare-fun m!745165 () Bool)

(assert (=> b!471685 m!745165))

(declare-fun m!745167 () Bool)

(assert (=> bm!32800 m!745167))

(declare-fun m!745169 () Bool)

(assert (=> d!179376 m!745169))

(assert (=> d!179376 m!745169))

(declare-fun m!745171 () Bool)

(assert (=> d!179376 m!745171))

(declare-fun m!745173 () Bool)

(assert (=> d!179376 m!745173))

(declare-fun m!745175 () Bool)

(assert (=> b!471686 m!745175))

(assert (=> bm!32796 d!179376))

(assert (=> b!471587 d!179358))

(declare-fun d!179378 () Bool)

(declare-fun res!209196 () Bool)

(declare-fun e!288479 () Bool)

(assert (=> d!179378 (=> res!209196 e!288479)))

(assert (=> d!179378 (= res!209196 (is-Nil!4540 lt!210085))))

(assert (=> d!179378 (= (noDuplicate!94 lt!210085) e!288479)))

(declare-fun b!471693 () Bool)

(declare-fun e!288480 () Bool)

(assert (=> b!471693 (= e!288479 e!288480)))

(declare-fun res!209197 () Bool)

(assert (=> b!471693 (=> (not res!209197) (not e!288480))))

(assert (=> b!471693 (= res!209197 (not (contains!1023 (t!72967 lt!210085) (h!9937 lt!210085))))))

(declare-fun b!471694 () Bool)

(assert (=> b!471694 (= e!288480 (noDuplicate!94 (t!72967 lt!210085)))))

(assert (= (and d!179378 (not res!209196)) b!471693))

(assert (= (and b!471693 res!209197) b!471694))

(declare-fun m!745177 () Bool)

(assert (=> b!471693 m!745177))

(declare-fun m!745179 () Bool)

(assert (=> b!471694 m!745179))

(assert (=> d!179322 d!179378))

(declare-fun d!179380 () Bool)

(declare-fun e!288485 () Bool)

(assert (=> d!179380 e!288485))

(declare-fun res!209203 () Bool)

(assert (=> d!179380 (=> (not res!209203) (not e!288485))))

(declare-fun res!209202 () List!4550)

(assert (=> d!179380 (= res!209203 (noDuplicate!94 res!209202))))

(declare-fun e!288486 () Bool)

(assert (=> d!179380 e!288486))

(assert (=> d!179380 (= (choose!3550 lt!210066) res!209202)))

(declare-fun b!471699 () Bool)

(declare-fun tp!130669 () Bool)

(assert (=> b!471699 (= e!288486 (and tp_is_empty!2111 tp!130669))))

(declare-fun b!471700 () Bool)

(assert (=> b!471700 (= e!288485 (= (content!771 res!209202) lt!210066))))

(assert (= (and d!179380 (is-Cons!4540 res!209202)) b!471699))

(assert (= (and d!179380 res!209203) b!471700))

(declare-fun m!745181 () Bool)

(assert (=> d!179380 m!745181))

(declare-fun m!745183 () Bool)

(assert (=> b!471700 m!745183))

(assert (=> d!179322 d!179380))

(declare-fun d!179382 () Bool)

(declare-fun lt!210120 () Bool)

(assert (=> d!179382 (= lt!210120 (set.member (h!9937 l!2882) (content!771 lt!210064)))))

(declare-fun e!288487 () Bool)

(assert (=> d!179382 (= lt!210120 e!288487)))

(declare-fun res!209205 () Bool)

(assert (=> d!179382 (=> (not res!209205) (not e!288487))))

(assert (=> d!179382 (= res!209205 (is-Cons!4540 lt!210064))))

(assert (=> d!179382 (= (contains!1023 lt!210064 (h!9937 l!2882)) lt!210120)))

(declare-fun b!471701 () Bool)

(declare-fun e!288488 () Bool)

(assert (=> b!471701 (= e!288487 e!288488)))

(declare-fun res!209204 () Bool)

(assert (=> b!471701 (=> res!209204 e!288488)))

(assert (=> b!471701 (= res!209204 (= (h!9937 lt!210064) (h!9937 l!2882)))))

(declare-fun b!471702 () Bool)

(assert (=> b!471702 (= e!288488 (contains!1023 (t!72967 lt!210064) (h!9937 l!2882)))))

(assert (= (and d!179382 res!209205) b!471701))

(assert (= (and b!471701 (not res!209204)) b!471702))

(declare-fun m!745185 () Bool)

(assert (=> d!179382 m!745185))

(declare-fun m!745187 () Bool)

(assert (=> d!179382 m!745187))

(declare-fun m!745189 () Bool)

(assert (=> b!471702 m!745189))

(assert (=> d!179334 d!179382))

(declare-fun d!179384 () Bool)

(assert (=> d!179384 (contains!1023 lt!210064 (h!9937 l!2882))))

(assert (=> d!179384 true))

(declare-fun _$10!103 () Unit!8281)

(assert (=> d!179384 (= (choose!3555 l!2882 lt!210064 (h!9937 l!2882)) _$10!103)))

(declare-fun bs!58433 () Bool)

(assert (= bs!58433 d!179384))

(assert (=> bs!58433 m!745091))

(assert (=> d!179334 d!179384))

(assert (=> d!179334 d!179320))

(declare-fun b!471704 () Bool)

(declare-fun e!288490 () Bool)

(declare-fun e!288489 () Bool)

(assert (=> b!471704 (= e!288490 e!288489)))

(declare-fun res!209206 () Bool)

(assert (=> b!471704 (=> res!209206 e!288489)))

(declare-fun e!288491 () Bool)

(assert (=> b!471704 (= res!209206 e!288491)))

(declare-fun res!209207 () Bool)

(assert (=> b!471704 (=> (not res!209207) (not e!288491))))

(assert (=> b!471704 (= res!209207 (= (h!9937 (tail!662 l!2882)) (h!9937 lt!210064)))))

(declare-fun b!471705 () Bool)

(assert (=> b!471705 (= e!288491 (subseq!108 (t!72967 (tail!662 l!2882)) (t!72967 lt!210064)))))

(declare-fun b!471706 () Bool)

(assert (=> b!471706 (= e!288489 (subseq!108 (tail!662 l!2882) (t!72967 lt!210064)))))

(declare-fun b!471703 () Bool)

(declare-fun e!288492 () Bool)

(assert (=> b!471703 (= e!288492 e!288490)))

(declare-fun res!209208 () Bool)

(assert (=> b!471703 (=> (not res!209208) (not e!288490))))

(assert (=> b!471703 (= res!209208 (is-Cons!4540 lt!210064))))

(declare-fun d!179386 () Bool)

(declare-fun res!209209 () Bool)

(assert (=> d!179386 (=> res!209209 e!288492)))

(assert (=> d!179386 (= res!209209 (is-Nil!4540 (tail!662 l!2882)))))

(assert (=> d!179386 (= (subseq!108 (tail!662 l!2882) lt!210064) e!288492)))

(assert (= (and d!179386 (not res!209209)) b!471703))

(assert (= (and b!471703 res!209208) b!471704))

(assert (= (and b!471704 res!209207) b!471705))

(assert (= (and b!471704 (not res!209206)) b!471706))

(declare-fun m!745191 () Bool)

(assert (=> b!471705 m!745191))

(assert (=> b!471706 m!745075))

(declare-fun m!745193 () Bool)

(assert (=> b!471706 m!745193))

(assert (=> d!179328 d!179386))

(declare-fun d!179388 () Bool)

(assert (=> d!179388 (= (tail!662 l!2882) (t!72967 l!2882))))

(assert (=> d!179328 d!179388))

(declare-fun d!179390 () Bool)

(assert (=> d!179390 (= (isEmpty!3527 l!2882) (is-Nil!4540 l!2882))))

(assert (=> d!179328 d!179390))

(declare-fun b!471707 () Bool)

(declare-fun e!288493 () Bool)

(declare-fun tp!130670 () Bool)

(assert (=> b!471707 (= e!288493 (and tp_is_empty!2111 tp!130670))))

(assert (=> b!471601 (= tp!130654 e!288493)))

(assert (= (and b!471601 (is-Cons!4540 (t!72967 (t!72967 l!2882)))) b!471707))

(declare-fun condSetEmpty!1934 () Bool)

(assert (=> setNonEmpty!1927 (= condSetEmpty!1934 (= setRest!1927 (as set.empty (Set A!365))))))

(declare-fun setRes!1934 () Bool)

(assert (=> setNonEmpty!1927 (= tp!130657 setRes!1934)))

(declare-fun setIsEmpty!1934 () Bool)

(assert (=> setIsEmpty!1934 setRes!1934))

(declare-fun setNonEmpty!1934 () Bool)

(declare-fun tp!130671 () Bool)

(assert (=> setNonEmpty!1934 (= setRes!1934 (and tp!130671 tp_is_empty!2109))))

(declare-fun setElem!1934 () A!365)

(declare-fun setRest!1934 () (Set A!365))

(assert (=> setNonEmpty!1934 (= setRest!1927 (set.union (set.insert setElem!1934 (as set.empty (Set A!365))) setRest!1934))))

(assert (= (and setNonEmpty!1927 condSetEmpty!1934) setIsEmpty!1934))

(assert (= (and setNonEmpty!1927 (not condSetEmpty!1934)) setNonEmpty!1934))

(declare-fun b_lambda!19685 () Bool)

(assert (= b_lambda!19683 (or (and start!45048 b_free!13143) b_lambda!19685)))

(push 1)

(assert (not b!471702))

(assert (not b!471654))

(assert (not d!179364))

(assert (not d!179382))

(assert (not b!471680))

(assert (not b!471655))

(assert (not bm!32800))

(assert tp_is_empty!2109)

(assert b_and!50427)

(assert (not d!179368))

(assert (not b!471700))

(assert (not d!179380))

(assert (not b!471705))

(assert (not b!471687))

(assert (not b!471693))

(assert (not b!471694))

(assert (not d!179384))

(assert (not b!471699))

(assert (not b_lambda!19671))

(assert (not b!471659))

(assert (not setNonEmpty!1933))

(assert (not b!471707))

(assert b_and!50443)

(assert (not b_lambda!19685))

(assert tp_is_empty!2111)

(assert (not b!471674))

(assert (not d!179376))

(assert (not b!471685))

(assert (not b!471658))

(assert (not b_next!13143))

(assert (not b_next!13141))

(assert (not b!471686))

(assert (not b!471662))

(assert (not b_lambda!19677))

(assert (not b!471706))

(assert (not b!471663))

(assert (not setNonEmpty!1934))

(assert (not d!179370))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50427)

(assert b_and!50443)

(assert (not b_next!13143))

(assert (not b_next!13141))

(check-sat)

(pop 1)

