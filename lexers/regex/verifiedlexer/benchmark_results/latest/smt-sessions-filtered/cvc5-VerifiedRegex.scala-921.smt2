; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47422 () Bool)

(assert start!47422)

(assert (=> start!47422 true))

(declare-fun bs!60442 () Bool)

(declare-fun b!519556 () Bool)

(assert (= bs!60442 (and b!519556 start!47422)))

(declare-fun lambda!14853 () Int)

(declare-fun lambda!14852 () Int)

(declare-datatypes ((B!1127 0))(
  ( (B!1128 (val!1851 Int)) )
))
(declare-datatypes ((List!4791 0))(
  ( (Nil!4781) (Cons!4781 (h!10182 B!1127) (t!73381 List!4791)) )
))
(declare-fun l!3695 () List!4791)

(declare-fun lt!216570 () List!4791)

(assert (=> bs!60442 (= (= lt!216570 l!3695) (= lambda!14853 lambda!14852))))

(assert (=> b!519556 true))

(declare-fun res!220510 () Bool)

(declare-fun e!311240 () Bool)

(assert (=> start!47422 (=> (not res!220510) (not e!311240))))

(declare-fun lIn!3 () List!4791)

(declare-fun forall!1450 (List!4791 Int) Bool)

(assert (=> start!47422 (= res!220510 (forall!1450 lIn!3 lambda!14852))))

(assert (=> start!47422 e!311240))

(declare-fun e!311241 () Bool)

(assert (=> start!47422 e!311241))

(declare-fun e!311238 () Bool)

(assert (=> start!47422 e!311238))

(declare-fun b!519550 () Bool)

(declare-fun res!220506 () Bool)

(declare-fun e!311237 () Bool)

(assert (=> b!519550 (=> (not res!220506) (not e!311237))))

(declare-fun contains!1141 (List!4791 B!1127) Bool)

(assert (=> b!519550 (= res!220506 (not (contains!1141 (t!73381 lIn!3) (h!10182 lIn!3))))))

(declare-fun b!519551 () Bool)

(declare-fun tp_is_empty!2723 () Bool)

(declare-fun tp!161807 () Bool)

(assert (=> b!519551 (= e!311241 (and tp_is_empty!2723 tp!161807))))

(declare-fun b!519552 () Bool)

(declare-fun e!311239 () Bool)

(assert (=> b!519552 (= e!311237 e!311239)))

(declare-fun res!220511 () Bool)

(assert (=> b!519552 (=> (not res!220511) (not e!311239))))

(declare-fun lt!216571 () (Set B!1127))

(declare-fun content!864 (List!4791) (Set B!1127))

(assert (=> b!519552 (= res!220511 (= (content!864 lt!216570) (set.minus lt!216571 (set.insert (h!10182 lIn!3) (as set.empty (Set B!1127))))))))

(declare-fun -!67 (List!4791 B!1127) List!4791)

(assert (=> b!519552 (= lt!216570 (-!67 l!3695 (h!10182 lIn!3)))))

(declare-fun b!519553 () Bool)

(declare-fun tp!161806 () Bool)

(assert (=> b!519553 (= e!311238 (and tp_is_empty!2723 tp!161806))))

(declare-fun b!519554 () Bool)

(declare-fun e!311242 () Bool)

(declare-fun noDuplicate!142 (List!4791) Bool)

(assert (=> b!519554 (= e!311242 (not (noDuplicate!142 (t!73381 lIn!3))))))

(declare-fun b!519555 () Bool)

(assert (=> b!519555 (= e!311240 e!311237)))

(declare-fun res!220505 () Bool)

(assert (=> b!519555 (=> (not res!220505) (not e!311237))))

(assert (=> b!519555 (= res!220505 (set.subset (content!864 lIn!3) lt!216571))))

(assert (=> b!519555 (= lt!216571 (content!864 l!3695))))

(declare-datatypes ((Unit!8762 0))(
  ( (Unit!8763) )
))
(declare-fun lt!216568 () Unit!8762)

(declare-fun forallContainsSubset!25 (List!4791 List!4791) Unit!8762)

(assert (=> b!519555 (= lt!216568 (forallContainsSubset!25 lIn!3 l!3695))))

(assert (=> b!519556 (= e!311239 e!311242)))

(declare-fun res!220508 () Bool)

(assert (=> b!519556 (=> (not res!220508) (not e!311242))))

(assert (=> b!519556 (= res!220508 (forall!1450 (t!73381 lIn!3) lambda!14853))))

(declare-fun lt!216569 () Unit!8762)

(declare-fun subsetContains!17 (List!4791 List!4791) Unit!8762)

(assert (=> b!519556 (= lt!216569 (subsetContains!17 (t!73381 lIn!3) lt!216570))))

(declare-fun b!519557 () Bool)

(declare-fun res!220507 () Bool)

(assert (=> b!519557 (=> (not res!220507) (not e!311240))))

(assert (=> b!519557 (= res!220507 (noDuplicate!142 lIn!3))))

(declare-fun b!519558 () Bool)

(declare-fun res!220509 () Bool)

(assert (=> b!519558 (=> (not res!220509) (not e!311240))))

(assert (=> b!519558 (= res!220509 (is-Cons!4781 lIn!3))))

(assert (= (and start!47422 res!220510) b!519557))

(assert (= (and b!519557 res!220507) b!519558))

(assert (= (and b!519558 res!220509) b!519555))

(assert (= (and b!519555 res!220505) b!519550))

(assert (= (and b!519550 res!220506) b!519552))

(assert (= (and b!519552 res!220511) b!519556))

(assert (= (and b!519556 res!220508) b!519554))

(assert (= (and start!47422 (is-Cons!4781 lIn!3)) b!519551))

(assert (= (and start!47422 (is-Cons!4781 l!3695)) b!519553))

(declare-fun m!766323 () Bool)

(assert (=> b!519554 m!766323))

(declare-fun m!766325 () Bool)

(assert (=> b!519556 m!766325))

(declare-fun m!766327 () Bool)

(assert (=> b!519556 m!766327))

(declare-fun m!766329 () Bool)

(assert (=> start!47422 m!766329))

(declare-fun m!766331 () Bool)

(assert (=> b!519555 m!766331))

(declare-fun m!766333 () Bool)

(assert (=> b!519555 m!766333))

(declare-fun m!766335 () Bool)

(assert (=> b!519555 m!766335))

(declare-fun m!766337 () Bool)

(assert (=> b!519552 m!766337))

(declare-fun m!766339 () Bool)

(assert (=> b!519552 m!766339))

(declare-fun m!766341 () Bool)

(assert (=> b!519552 m!766341))

(declare-fun m!766343 () Bool)

(assert (=> b!519550 m!766343))

(declare-fun m!766345 () Bool)

(assert (=> b!519557 m!766345))

(push 1)

(assert (not b!519554))

(assert (not b!519555))

(assert tp_is_empty!2723)

(assert (not b!519556))

(assert (not b!519551))

(assert (not start!47422))

(assert (not b!519550))

(assert (not b!519557))

(assert (not b!519553))

(assert (not b!519552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185566 () Bool)

(declare-fun res!220537 () Bool)

(declare-fun e!311269 () Bool)

(assert (=> d!185566 (=> res!220537 e!311269)))

(assert (=> d!185566 (= res!220537 (is-Nil!4781 (t!73381 lIn!3)))))

(assert (=> d!185566 (= (forall!1450 (t!73381 lIn!3) lambda!14853) e!311269)))

(declare-fun b!519594 () Bool)

(declare-fun e!311270 () Bool)

(assert (=> b!519594 (= e!311269 e!311270)))

(declare-fun res!220538 () Bool)

(assert (=> b!519594 (=> (not res!220538) (not e!311270))))

(declare-fun dynLambda!3004 (Int B!1127) Bool)

(assert (=> b!519594 (= res!220538 (dynLambda!3004 lambda!14853 (h!10182 (t!73381 lIn!3))))))

(declare-fun b!519595 () Bool)

(assert (=> b!519595 (= e!311270 (forall!1450 (t!73381 (t!73381 lIn!3)) lambda!14853))))

(assert (= (and d!185566 (not res!220537)) b!519594))

(assert (= (and b!519594 res!220538) b!519595))

(declare-fun b_lambda!20253 () Bool)

(assert (=> (not b_lambda!20253) (not b!519594)))

(declare-fun m!766371 () Bool)

(assert (=> b!519594 m!766371))

(declare-fun m!766373 () Bool)

(assert (=> b!519595 m!766373))

(assert (=> b!519556 d!185566))

(declare-fun bs!60444 () Bool)

(declare-fun d!185568 () Bool)

(assert (= bs!60444 (and d!185568 start!47422)))

(declare-fun lambda!14862 () Int)

(assert (=> bs!60444 (= (= lt!216570 l!3695) (= lambda!14862 lambda!14852))))

(declare-fun bs!60445 () Bool)

(assert (= bs!60445 (and d!185568 b!519556)))

(assert (=> bs!60445 (= lambda!14862 lambda!14853)))

(assert (=> d!185568 true))

(assert (=> d!185568 (forall!1450 (t!73381 lIn!3) lambda!14862)))

(declare-fun lt!216586 () Unit!8762)

(declare-fun choose!3719 (List!4791 List!4791) Unit!8762)

(assert (=> d!185568 (= lt!216586 (choose!3719 (t!73381 lIn!3) lt!216570))))

(assert (=> d!185568 (set.subset (content!864 (t!73381 lIn!3)) (content!864 lt!216570))))

(assert (=> d!185568 (= (subsetContains!17 (t!73381 lIn!3) lt!216570) lt!216586)))

(declare-fun bs!60446 () Bool)

(assert (= bs!60446 d!185568))

(declare-fun m!766375 () Bool)

(assert (=> bs!60446 m!766375))

(declare-fun m!766377 () Bool)

(assert (=> bs!60446 m!766377))

(declare-fun m!766379 () Bool)

(assert (=> bs!60446 m!766379))

(assert (=> bs!60446 m!766337))

(assert (=> b!519556 d!185568))

(declare-fun d!185570 () Bool)

(declare-fun lt!216589 () Bool)

(assert (=> d!185570 (= lt!216589 (set.member (h!10182 lIn!3) (content!864 (t!73381 lIn!3))))))

(declare-fun e!311276 () Bool)

(assert (=> d!185570 (= lt!216589 e!311276)))

(declare-fun res!220544 () Bool)

(assert (=> d!185570 (=> (not res!220544) (not e!311276))))

(assert (=> d!185570 (= res!220544 (is-Cons!4781 (t!73381 lIn!3)))))

(assert (=> d!185570 (= (contains!1141 (t!73381 lIn!3) (h!10182 lIn!3)) lt!216589)))

(declare-fun b!519600 () Bool)

(declare-fun e!311275 () Bool)

(assert (=> b!519600 (= e!311276 e!311275)))

(declare-fun res!220543 () Bool)

(assert (=> b!519600 (=> res!220543 e!311275)))

(assert (=> b!519600 (= res!220543 (= (h!10182 (t!73381 lIn!3)) (h!10182 lIn!3)))))

(declare-fun b!519601 () Bool)

(assert (=> b!519601 (= e!311275 (contains!1141 (t!73381 (t!73381 lIn!3)) (h!10182 lIn!3)))))

(assert (= (and d!185570 res!220544) b!519600))

(assert (= (and b!519600 (not res!220543)) b!519601))

(assert (=> d!185570 m!766379))

(declare-fun m!766381 () Bool)

(assert (=> d!185570 m!766381))

(declare-fun m!766383 () Bool)

(assert (=> b!519601 m!766383))

(assert (=> b!519550 d!185570))

(declare-fun d!185572 () Bool)

(declare-fun c!100486 () Bool)

(assert (=> d!185572 (= c!100486 (is-Nil!4781 lIn!3))))

(declare-fun e!311279 () (Set B!1127))

(assert (=> d!185572 (= (content!864 lIn!3) e!311279)))

(declare-fun b!519606 () Bool)

(assert (=> b!519606 (= e!311279 (as set.empty (Set B!1127)))))

(declare-fun b!519607 () Bool)

(assert (=> b!519607 (= e!311279 (set.union (set.insert (h!10182 lIn!3) (as set.empty (Set B!1127))) (content!864 (t!73381 lIn!3))))))

(assert (= (and d!185572 c!100486) b!519606))

(assert (= (and d!185572 (not c!100486)) b!519607))

(assert (=> b!519607 m!766339))

(assert (=> b!519607 m!766379))

(assert (=> b!519555 d!185572))

(declare-fun d!185574 () Bool)

(declare-fun c!100487 () Bool)

(assert (=> d!185574 (= c!100487 (is-Nil!4781 l!3695))))

(declare-fun e!311280 () (Set B!1127))

(assert (=> d!185574 (= (content!864 l!3695) e!311280)))

(declare-fun b!519608 () Bool)

(assert (=> b!519608 (= e!311280 (as set.empty (Set B!1127)))))

(declare-fun b!519609 () Bool)

(assert (=> b!519609 (= e!311280 (set.union (set.insert (h!10182 l!3695) (as set.empty (Set B!1127))) (content!864 (t!73381 l!3695))))))

(assert (= (and d!185574 c!100487) b!519608))

(assert (= (and d!185574 (not c!100487)) b!519609))

(declare-fun m!766385 () Bool)

(assert (=> b!519609 m!766385))

(declare-fun m!766387 () Bool)

(assert (=> b!519609 m!766387))

(assert (=> b!519555 d!185574))

(declare-fun bs!60447 () Bool)

(declare-fun d!185576 () Bool)

(assert (= bs!60447 (and d!185576 start!47422)))

(declare-fun lambda!14865 () Int)

(assert (=> bs!60447 (= lambda!14865 lambda!14852)))

(declare-fun bs!60448 () Bool)

(assert (= bs!60448 (and d!185576 b!519556)))

(assert (=> bs!60448 (= (= l!3695 lt!216570) (= lambda!14865 lambda!14853))))

(declare-fun bs!60449 () Bool)

(assert (= bs!60449 (and d!185576 d!185568)))

(assert (=> bs!60449 (= (= l!3695 lt!216570) (= lambda!14865 lambda!14862))))

(assert (=> d!185576 true))

(assert (=> d!185576 (set.subset (content!864 lIn!3) (content!864 l!3695))))

(declare-fun lt!216592 () Unit!8762)

(declare-fun choose!3720 (List!4791 List!4791) Unit!8762)

(assert (=> d!185576 (= lt!216592 (choose!3720 lIn!3 l!3695))))

(assert (=> d!185576 (forall!1450 lIn!3 lambda!14865)))

(assert (=> d!185576 (= (forallContainsSubset!25 lIn!3 l!3695) lt!216592)))

(declare-fun bs!60450 () Bool)

(assert (= bs!60450 d!185576))

(assert (=> bs!60450 m!766331))

(assert (=> bs!60450 m!766333))

(declare-fun m!766389 () Bool)

(assert (=> bs!60450 m!766389))

(declare-fun m!766391 () Bool)

(assert (=> bs!60450 m!766391))

(assert (=> b!519555 d!185576))

(declare-fun d!185580 () Bool)

(declare-fun c!100488 () Bool)

(assert (=> d!185580 (= c!100488 (is-Nil!4781 lt!216570))))

(declare-fun e!311281 () (Set B!1127))

(assert (=> d!185580 (= (content!864 lt!216570) e!311281)))

(declare-fun b!519610 () Bool)

(assert (=> b!519610 (= e!311281 (as set.empty (Set B!1127)))))

(declare-fun b!519611 () Bool)

(assert (=> b!519611 (= e!311281 (set.union (set.insert (h!10182 lt!216570) (as set.empty (Set B!1127))) (content!864 (t!73381 lt!216570))))))

(assert (= (and d!185580 c!100488) b!519610))

(assert (= (and d!185580 (not c!100488)) b!519611))

(declare-fun m!766393 () Bool)

(assert (=> b!519611 m!766393))

(declare-fun m!766395 () Bool)

(assert (=> b!519611 m!766395))

(assert (=> b!519552 d!185580))

(declare-fun d!185582 () Bool)

(declare-fun e!311296 () Bool)

(assert (=> d!185582 e!311296))

(declare-fun res!220553 () Bool)

(assert (=> d!185582 (=> (not res!220553) (not e!311296))))

(declare-fun lt!216595 () List!4791)

(declare-fun size!3903 (List!4791) Int)

(assert (=> d!185582 (= res!220553 (<= (size!3903 lt!216595) (size!3903 l!3695)))))

(declare-fun e!311297 () List!4791)

(assert (=> d!185582 (= lt!216595 e!311297)))

(declare-fun c!100493 () Bool)

(assert (=> d!185582 (= c!100493 (is-Cons!4781 l!3695))))

(assert (=> d!185582 (= (-!67 l!3695 (h!10182 lIn!3)) lt!216595)))

(declare-fun b!519628 () Bool)

(declare-fun e!311295 () List!4791)

(assert (=> b!519628 (= e!311297 e!311295)))

(declare-fun c!100494 () Bool)

(assert (=> b!519628 (= c!100494 (= (h!10182 lIn!3) (h!10182 l!3695)))))

(declare-fun b!519629 () Bool)

(assert (=> b!519629 (= e!311296 (= (content!864 lt!216595) (set.minus (content!864 l!3695) (set.insert (h!10182 lIn!3) (as set.empty (Set B!1127))))))))

(declare-fun b!519630 () Bool)

(declare-fun call!38021 () List!4791)

(assert (=> b!519630 (= e!311295 call!38021)))

(declare-fun b!519631 () Bool)

(assert (=> b!519631 (= e!311295 (Cons!4781 (h!10182 l!3695) call!38021))))

(declare-fun bm!38016 () Bool)

(assert (=> bm!38016 (= call!38021 (-!67 (t!73381 l!3695) (h!10182 lIn!3)))))

(declare-fun b!519632 () Bool)

(assert (=> b!519632 (= e!311297 Nil!4781)))

(assert (= (and d!185582 c!100493) b!519628))

(assert (= (and d!185582 (not c!100493)) b!519632))

(assert (= (and b!519628 c!100494) b!519630))

(assert (= (and b!519628 (not c!100494)) b!519631))

(assert (= (or b!519630 b!519631) bm!38016))

(assert (= (and d!185582 res!220553) b!519629))

(declare-fun m!766397 () Bool)

(assert (=> d!185582 m!766397))

(declare-fun m!766399 () Bool)

(assert (=> d!185582 m!766399))

(declare-fun m!766401 () Bool)

(assert (=> b!519629 m!766401))

(assert (=> b!519629 m!766333))

(assert (=> b!519629 m!766339))

(declare-fun m!766403 () Bool)

(assert (=> bm!38016 m!766403))

(assert (=> b!519552 d!185582))

(declare-fun d!185586 () Bool)

(declare-fun res!220562 () Bool)

(declare-fun e!311306 () Bool)

(assert (=> d!185586 (=> res!220562 e!311306)))

(assert (=> d!185586 (= res!220562 (is-Nil!4781 lIn!3))))

(assert (=> d!185586 (= (noDuplicate!142 lIn!3) e!311306)))

(declare-fun b!519641 () Bool)

(declare-fun e!311307 () Bool)

(assert (=> b!519641 (= e!311306 e!311307)))

(declare-fun res!220563 () Bool)

(assert (=> b!519641 (=> (not res!220563) (not e!311307))))

(assert (=> b!519641 (= res!220563 (not (contains!1141 (t!73381 lIn!3) (h!10182 lIn!3))))))

(declare-fun b!519642 () Bool)

(assert (=> b!519642 (= e!311307 (noDuplicate!142 (t!73381 lIn!3)))))

(assert (= (and d!185586 (not res!220562)) b!519641))

(assert (= (and b!519641 res!220563) b!519642))

(assert (=> b!519641 m!766343))

(assert (=> b!519642 m!766323))

(assert (=> b!519557 d!185586))

(declare-fun d!185588 () Bool)

(declare-fun res!220566 () Bool)

(declare-fun e!311310 () Bool)

(assert (=> d!185588 (=> res!220566 e!311310)))

(assert (=> d!185588 (= res!220566 (is-Nil!4781 (t!73381 lIn!3)))))

(assert (=> d!185588 (= (noDuplicate!142 (t!73381 lIn!3)) e!311310)))

(declare-fun b!519645 () Bool)

(declare-fun e!311311 () Bool)

(assert (=> b!519645 (= e!311310 e!311311)))

(declare-fun res!220567 () Bool)

(assert (=> b!519645 (=> (not res!220567) (not e!311311))))

(assert (=> b!519645 (= res!220567 (not (contains!1141 (t!73381 (t!73381 lIn!3)) (h!10182 (t!73381 lIn!3)))))))

(declare-fun b!519646 () Bool)

(assert (=> b!519646 (= e!311311 (noDuplicate!142 (t!73381 (t!73381 lIn!3))))))

(assert (= (and d!185588 (not res!220566)) b!519645))

(assert (= (and b!519645 res!220567) b!519646))

(declare-fun m!766405 () Bool)

(assert (=> b!519645 m!766405))

(declare-fun m!766407 () Bool)

(assert (=> b!519646 m!766407))

(assert (=> b!519554 d!185588))

(declare-fun d!185590 () Bool)

(declare-fun res!220568 () Bool)

(declare-fun e!311312 () Bool)

(assert (=> d!185590 (=> res!220568 e!311312)))

(assert (=> d!185590 (= res!220568 (is-Nil!4781 lIn!3))))

(assert (=> d!185590 (= (forall!1450 lIn!3 lambda!14852) e!311312)))

(declare-fun b!519647 () Bool)

(declare-fun e!311313 () Bool)

(assert (=> b!519647 (= e!311312 e!311313)))

(declare-fun res!220569 () Bool)

(assert (=> b!519647 (=> (not res!220569) (not e!311313))))

(assert (=> b!519647 (= res!220569 (dynLambda!3004 lambda!14852 (h!10182 lIn!3)))))

(declare-fun b!519648 () Bool)

(assert (=> b!519648 (= e!311313 (forall!1450 (t!73381 lIn!3) lambda!14852))))

(assert (= (and d!185590 (not res!220568)) b!519647))

(assert (= (and b!519647 res!220569) b!519648))

(declare-fun b_lambda!20255 () Bool)

(assert (=> (not b_lambda!20255) (not b!519647)))

(declare-fun m!766409 () Bool)

(assert (=> b!519647 m!766409))

(declare-fun m!766411 () Bool)

(assert (=> b!519648 m!766411))

(assert (=> start!47422 d!185590))

(declare-fun b!519653 () Bool)

(declare-fun e!311316 () Bool)

(declare-fun tp!161816 () Bool)

(assert (=> b!519653 (= e!311316 (and tp_is_empty!2723 tp!161816))))

(assert (=> b!519551 (= tp!161807 e!311316)))

(assert (= (and b!519551 (is-Cons!4781 (t!73381 lIn!3))) b!519653))

(declare-fun b!519654 () Bool)

(declare-fun e!311317 () Bool)

(declare-fun tp!161817 () Bool)

(assert (=> b!519654 (= e!311317 (and tp_is_empty!2723 tp!161817))))

(assert (=> b!519553 (= tp!161806 e!311317)))

(assert (= (and b!519553 (is-Cons!4781 (t!73381 l!3695))) b!519654))

(declare-fun b_lambda!20259 () Bool)

(assert (= b_lambda!20253 (or b!519556 b_lambda!20259)))

(declare-fun bs!60451 () Bool)

(declare-fun d!185594 () Bool)

(assert (= bs!60451 (and d!185594 b!519556)))

(assert (=> bs!60451 (= (dynLambda!3004 lambda!14853 (h!10182 (t!73381 lIn!3))) (contains!1141 lt!216570 (h!10182 (t!73381 lIn!3))))))

(declare-fun m!766417 () Bool)

(assert (=> bs!60451 m!766417))

(assert (=> b!519594 d!185594))

(declare-fun b_lambda!20261 () Bool)

(assert (= b_lambda!20255 (or start!47422 b_lambda!20261)))

(declare-fun bs!60452 () Bool)

(declare-fun d!185596 () Bool)

(assert (= bs!60452 (and d!185596 start!47422)))

(assert (=> bs!60452 (= (dynLambda!3004 lambda!14852 (h!10182 lIn!3)) (contains!1141 l!3695 (h!10182 lIn!3)))))

(declare-fun m!766419 () Bool)

(assert (=> bs!60452 m!766419))

(assert (=> b!519647 d!185596))

(push 1)

(assert (not d!185582))

(assert (not bm!38016))

(assert (not b_lambda!20261))

(assert tp_is_empty!2723)

(assert (not b!519642))

(assert (not b!519601))

(assert (not bs!60451))

(assert (not b!519609))

(assert (not b!519646))

(assert (not b!519648))

(assert (not b!519611))

(assert (not b!519629))

(assert (not bs!60452))

(assert (not b!519607))

(assert (not b!519641))

(assert (not b!519645))

(assert (not b_lambda!20259))

(assert (not d!185568))

(assert (not b!519654))

(assert (not d!185576))

(assert (not b!519595))

(assert (not b!519653))

(assert (not d!185570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

