; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138124 () Bool)

(assert start!138124)

(declare-fun b!1584384 () Bool)

(declare-fun res!1082283 () Bool)

(declare-fun e!884495 () Bool)

(assert (=> b!1584384 (=> (not res!1082283) (not e!884495))))

(declare-datatypes ((B!2924 0))(
  ( (B!2925 (val!19824 Int)) )
))
(declare-datatypes ((tuple2!25980 0))(
  ( (tuple2!25981 (_1!13000 (_ BitVec 64)) (_2!13000 B!2924)) )
))
(declare-datatypes ((List!37105 0))(
  ( (Nil!37102) (Cons!37101 (h!38645 tuple2!25980) (t!52026 List!37105)) )
))
(declare-fun l!1251 () List!37105)

(declare-fun isStrictlySorted!1167 (List!37105) Bool)

(assert (=> b!1584384 (= res!1082283 (isStrictlySorted!1167 (t!52026 l!1251)))))

(declare-fun b!1584385 () Bool)

(declare-fun res!1082284 () Bool)

(assert (=> b!1584385 (=> (not res!1082284) (not e!884495))))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!1001 (List!37105 (_ BitVec 64)) Bool)

(assert (=> b!1584385 (= res!1082284 (not (containsKey!1001 l!1251 otherKey!56)))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun b!1584387 () Bool)

(declare-fun newValue!123 () B!2924)

(declare-fun insertStrictlySorted!625 (List!37105 (_ BitVec 64) B!2924) List!37105)

(assert (=> b!1584387 (= e!884495 (not (not (containsKey!1001 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123) otherKey!56))))))

(assert (=> b!1584387 (not (containsKey!1001 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-datatypes ((Unit!52235 0))(
  ( (Unit!52236) )
))
(declare-fun lt!677182 () Unit!52235)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!10 (List!37105 (_ BitVec 64) B!2924 (_ BitVec 64)) Unit!52235)

(assert (=> b!1584387 (= lt!677182 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!10 (t!52026 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun b!1584388 () Bool)

(declare-fun res!1082282 () Bool)

(assert (=> b!1584388 (=> (not res!1082282) (not e!884495))))

(assert (=> b!1584388 (= res!1082282 (and (not (= otherKey!56 newKey!123)) (is-Cons!37101 l!1251)))))

(declare-fun b!1584389 () Bool)

(declare-fun res!1082281 () Bool)

(assert (=> b!1584389 (=> (not res!1082281) (not e!884495))))

(assert (=> b!1584389 (= res!1082281 (not (containsKey!1001 (t!52026 l!1251) otherKey!56)))))

(declare-fun b!1584386 () Bool)

(declare-fun e!884496 () Bool)

(declare-fun tp_is_empty!39457 () Bool)

(declare-fun tp!115123 () Bool)

(assert (=> b!1584386 (= e!884496 (and tp_is_empty!39457 tp!115123))))

(declare-fun res!1082285 () Bool)

(assert (=> start!138124 (=> (not res!1082285) (not e!884495))))

(assert (=> start!138124 (= res!1082285 (isStrictlySorted!1167 l!1251))))

(assert (=> start!138124 e!884495))

(assert (=> start!138124 e!884496))

(assert (=> start!138124 true))

(assert (=> start!138124 tp_is_empty!39457))

(assert (= (and start!138124 res!1082285) b!1584385))

(assert (= (and b!1584385 res!1082284) b!1584388))

(assert (= (and b!1584388 res!1082282) b!1584384))

(assert (= (and b!1584384 res!1082283) b!1584389))

(assert (= (and b!1584389 res!1082281) b!1584387))

(assert (= (and start!138124 (is-Cons!37101 l!1251)) b!1584386))

(declare-fun m!1453673 () Bool)

(assert (=> start!138124 m!1453673))

(declare-fun m!1453675 () Bool)

(assert (=> b!1584387 m!1453675))

(declare-fun m!1453677 () Bool)

(assert (=> b!1584387 m!1453677))

(declare-fun m!1453679 () Bool)

(assert (=> b!1584387 m!1453679))

(declare-fun m!1453681 () Bool)

(assert (=> b!1584387 m!1453681))

(assert (=> b!1584387 m!1453677))

(declare-fun m!1453683 () Bool)

(assert (=> b!1584387 m!1453683))

(assert (=> b!1584387 m!1453679))

(declare-fun m!1453685 () Bool)

(assert (=> b!1584384 m!1453685))

(declare-fun m!1453687 () Bool)

(assert (=> b!1584389 m!1453687))

(declare-fun m!1453689 () Bool)

(assert (=> b!1584385 m!1453689))

(push 1)

(assert (not b!1584386))

(assert (not b!1584389))

(assert (not b!1584384))

(assert (not b!1584385))

(assert tp_is_empty!39457)

(assert (not b!1584387))

(assert (not start!138124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167393 () Bool)

(declare-fun res!1082334 () Bool)

(declare-fun e!884527 () Bool)

(assert (=> d!167393 (=> res!1082334 e!884527)))

(assert (=> d!167393 (= res!1082334 (and (is-Cons!37101 (t!52026 l!1251)) (= (_1!13000 (h!38645 (t!52026 l!1251))) otherKey!56)))))

(assert (=> d!167393 (= (containsKey!1001 (t!52026 l!1251) otherKey!56) e!884527)))

(declare-fun b!1584444 () Bool)

(declare-fun e!884528 () Bool)

(assert (=> b!1584444 (= e!884527 e!884528)))

(declare-fun res!1082335 () Bool)

(assert (=> b!1584444 (=> (not res!1082335) (not e!884528))))

(assert (=> b!1584444 (= res!1082335 (and (or (not (is-Cons!37101 (t!52026 l!1251))) (bvsle (_1!13000 (h!38645 (t!52026 l!1251))) otherKey!56)) (is-Cons!37101 (t!52026 l!1251)) (bvslt (_1!13000 (h!38645 (t!52026 l!1251))) otherKey!56)))))

(declare-fun b!1584445 () Bool)

(assert (=> b!1584445 (= e!884528 (containsKey!1001 (t!52026 (t!52026 l!1251)) otherKey!56))))

(assert (= (and d!167393 (not res!1082334)) b!1584444))

(assert (= (and b!1584444 res!1082335) b!1584445))

(declare-fun m!1453731 () Bool)

(assert (=> b!1584445 m!1453731))

(assert (=> b!1584389 d!167393))

(declare-fun d!167401 () Bool)

(declare-fun res!1082340 () Bool)

(declare-fun e!884533 () Bool)

(assert (=> d!167401 (=> res!1082340 e!884533)))

(assert (=> d!167401 (= res!1082340 (or (is-Nil!37102 (t!52026 l!1251)) (is-Nil!37102 (t!52026 (t!52026 l!1251)))))))

(assert (=> d!167401 (= (isStrictlySorted!1167 (t!52026 l!1251)) e!884533)))

(declare-fun b!1584450 () Bool)

(declare-fun e!884534 () Bool)

(assert (=> b!1584450 (= e!884533 e!884534)))

(declare-fun res!1082341 () Bool)

(assert (=> b!1584450 (=> (not res!1082341) (not e!884534))))

(assert (=> b!1584450 (= res!1082341 (bvslt (_1!13000 (h!38645 (t!52026 l!1251))) (_1!13000 (h!38645 (t!52026 (t!52026 l!1251))))))))

(declare-fun b!1584451 () Bool)

(assert (=> b!1584451 (= e!884534 (isStrictlySorted!1167 (t!52026 (t!52026 l!1251))))))

(assert (= (and d!167401 (not res!1082340)) b!1584450))

(assert (= (and b!1584450 res!1082341) b!1584451))

(declare-fun m!1453733 () Bool)

(assert (=> b!1584451 m!1453733))

(assert (=> b!1584384 d!167401))

(declare-fun d!167403 () Bool)

(declare-fun res!1082342 () Bool)

(declare-fun e!884535 () Bool)

(assert (=> d!167403 (=> res!1082342 e!884535)))

(assert (=> d!167403 (= res!1082342 (or (is-Nil!37102 l!1251) (is-Nil!37102 (t!52026 l!1251))))))

(assert (=> d!167403 (= (isStrictlySorted!1167 l!1251) e!884535)))

(declare-fun b!1584452 () Bool)

(declare-fun e!884536 () Bool)

(assert (=> b!1584452 (= e!884535 e!884536)))

(declare-fun res!1082343 () Bool)

(assert (=> b!1584452 (=> (not res!1082343) (not e!884536))))

(assert (=> b!1584452 (= res!1082343 (bvslt (_1!13000 (h!38645 l!1251)) (_1!13000 (h!38645 (t!52026 l!1251)))))))

(declare-fun b!1584453 () Bool)

(assert (=> b!1584453 (= e!884536 (isStrictlySorted!1167 (t!52026 l!1251)))))

(assert (= (and d!167403 (not res!1082342)) b!1584452))

(assert (= (and b!1584452 res!1082343) b!1584453))

(assert (=> b!1584453 m!1453685))

(assert (=> start!138124 d!167403))

(declare-fun d!167405 () Bool)

(declare-fun res!1082344 () Bool)

(declare-fun e!884537 () Bool)

(assert (=> d!167405 (=> res!1082344 e!884537)))

(assert (=> d!167405 (= res!1082344 (and (is-Cons!37101 l!1251) (= (_1!13000 (h!38645 l!1251)) otherKey!56)))))

(assert (=> d!167405 (= (containsKey!1001 l!1251 otherKey!56) e!884537)))

(declare-fun b!1584454 () Bool)

(declare-fun e!884538 () Bool)

(assert (=> b!1584454 (= e!884537 e!884538)))

(declare-fun res!1082345 () Bool)

(assert (=> b!1584454 (=> (not res!1082345) (not e!884538))))

(assert (=> b!1584454 (= res!1082345 (and (or (not (is-Cons!37101 l!1251)) (bvsle (_1!13000 (h!38645 l!1251)) otherKey!56)) (is-Cons!37101 l!1251) (bvslt (_1!13000 (h!38645 l!1251)) otherKey!56)))))

(declare-fun b!1584455 () Bool)

(assert (=> b!1584455 (= e!884538 (containsKey!1001 (t!52026 l!1251) otherKey!56))))

(assert (= (and d!167405 (not res!1082344)) b!1584454))

(assert (= (and b!1584454 res!1082345) b!1584455))

(assert (=> b!1584455 m!1453687))

(assert (=> b!1584385 d!167405))

(declare-fun b!1584556 () Bool)

(declare-fun res!1082367 () Bool)

(declare-fun e!884592 () Bool)

(assert (=> b!1584556 (=> (not res!1082367) (not e!884592))))

(declare-fun lt!677199 () List!37105)

(assert (=> b!1584556 (= res!1082367 (containsKey!1001 lt!677199 newKey!123))))

(declare-fun b!1584557 () Bool)

(declare-fun contains!10545 (List!37105 tuple2!25980) Bool)

(assert (=> b!1584557 (= e!884592 (contains!10545 lt!677199 (tuple2!25981 newKey!123 newValue!123)))))

(declare-fun b!1584558 () Bool)

(declare-fun e!884589 () List!37105)

(declare-fun e!884593 () List!37105)

(assert (=> b!1584558 (= e!884589 e!884593)))

(declare-fun c!146839 () Bool)

(assert (=> b!1584558 (= c!146839 (and (is-Cons!37101 l!1251) (= (_1!13000 (h!38645 l!1251)) newKey!123)))))

(declare-fun b!1584559 () Bool)

(declare-fun call!72571 () List!37105)

(assert (=> b!1584559 (= e!884593 call!72571)))

(declare-fun b!1584560 () Bool)

(declare-fun call!72570 () List!37105)

(assert (=> b!1584560 (= e!884589 call!72570)))

(declare-fun b!1584561 () Bool)

(declare-fun e!884591 () List!37105)

(declare-fun call!72572 () List!37105)

(assert (=> b!1584561 (= e!884591 call!72572)))

(declare-fun b!1584562 () Bool)

(assert (=> b!1584562 (= e!884591 call!72572)))

(declare-fun bm!72567 () Bool)

(assert (=> bm!72567 (= call!72572 call!72571)))

(declare-fun b!1584563 () Bool)

(declare-fun c!146837 () Bool)

(assert (=> b!1584563 (= c!146837 (and (is-Cons!37101 l!1251) (bvsgt (_1!13000 (h!38645 l!1251)) newKey!123)))))

(assert (=> b!1584563 (= e!884593 e!884591)))

(declare-fun d!167407 () Bool)

(assert (=> d!167407 e!884592))

(declare-fun res!1082366 () Bool)

(assert (=> d!167407 (=> (not res!1082366) (not e!884592))))

(assert (=> d!167407 (= res!1082366 (isStrictlySorted!1167 lt!677199))))

(assert (=> d!167407 (= lt!677199 e!884589)))

(declare-fun c!146838 () Bool)

(assert (=> d!167407 (= c!146838 (and (is-Cons!37101 l!1251) (bvslt (_1!13000 (h!38645 l!1251)) newKey!123)))))

(assert (=> d!167407 (isStrictlySorted!1167 l!1251)))

(assert (=> d!167407 (= (insertStrictlySorted!625 l!1251 newKey!123 newValue!123) lt!677199)))

(declare-fun bm!72568 () Bool)

(assert (=> bm!72568 (= call!72571 call!72570)))

(declare-fun b!1584564 () Bool)

(declare-fun e!884590 () List!37105)

(assert (=> b!1584564 (= e!884590 (ite c!146839 (t!52026 l!1251) (ite c!146837 (Cons!37101 (h!38645 l!1251) (t!52026 l!1251)) Nil!37102)))))

(declare-fun bm!72569 () Bool)

(declare-fun $colon$colon!1024 (List!37105 tuple2!25980) List!37105)

(assert (=> bm!72569 (= call!72570 ($colon$colon!1024 e!884590 (ite c!146838 (h!38645 l!1251) (tuple2!25981 newKey!123 newValue!123))))))

(declare-fun c!146840 () Bool)

(assert (=> bm!72569 (= c!146840 c!146838)))

(declare-fun b!1584565 () Bool)

(assert (=> b!1584565 (= e!884590 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123))))

(assert (= (and d!167407 c!146838) b!1584560))

(assert (= (and d!167407 (not c!146838)) b!1584558))

(assert (= (and b!1584558 c!146839) b!1584559))

(assert (= (and b!1584558 (not c!146839)) b!1584563))

(assert (= (and b!1584563 c!146837) b!1584562))

(assert (= (and b!1584563 (not c!146837)) b!1584561))

(assert (= (or b!1584562 b!1584561) bm!72567))

(assert (= (or b!1584559 bm!72567) bm!72568))

(assert (= (or b!1584560 bm!72568) bm!72569))

(assert (= (and bm!72569 c!146840) b!1584565))

(assert (= (and bm!72569 (not c!146840)) b!1584564))

(assert (= (and d!167407 res!1082366) b!1584556))

(assert (= (and b!1584556 res!1082367) b!1584557))

(declare-fun m!1453771 () Bool)

(assert (=> b!1584557 m!1453771))

(declare-fun m!1453773 () Bool)

(assert (=> b!1584556 m!1453773))

(declare-fun m!1453775 () Bool)

(assert (=> bm!72569 m!1453775))

(assert (=> b!1584565 m!1453677))

(declare-fun m!1453777 () Bool)

(assert (=> d!167407 m!1453777))

(assert (=> d!167407 m!1453673))

(assert (=> b!1584387 d!167407))

(declare-fun b!1584574 () Bool)

(declare-fun res!1082377 () Bool)

(declare-fun e!884601 () Bool)

(assert (=> b!1584574 (=> (not res!1082377) (not e!884601))))

(declare-fun lt!677204 () List!37105)

(assert (=> b!1584574 (= res!1082377 (containsKey!1001 lt!677204 newKey!123))))

(declare-fun b!1584575 () Bool)

(assert (=> b!1584575 (= e!884601 (contains!10545 lt!677204 (tuple2!25981 newKey!123 newValue!123)))))

(declare-fun b!1584576 () Bool)

(declare-fun e!884598 () List!37105)

(declare-fun e!884602 () List!37105)

(assert (=> b!1584576 (= e!884598 e!884602)))

(declare-fun c!146843 () Bool)

(assert (=> b!1584576 (= c!146843 (and (is-Cons!37101 (t!52026 l!1251)) (= (_1!13000 (h!38645 (t!52026 l!1251))) newKey!123)))))

(declare-fun b!1584577 () Bool)

(declare-fun call!72574 () List!37105)

(assert (=> b!1584577 (= e!884602 call!72574)))

(declare-fun b!1584578 () Bool)

(declare-fun call!72573 () List!37105)

(assert (=> b!1584578 (= e!884598 call!72573)))

(declare-fun b!1584579 () Bool)

(declare-fun e!884600 () List!37105)

(declare-fun call!72575 () List!37105)

(assert (=> b!1584579 (= e!884600 call!72575)))

(declare-fun b!1584580 () Bool)

(assert (=> b!1584580 (= e!884600 call!72575)))

(declare-fun bm!72570 () Bool)

(assert (=> bm!72570 (= call!72575 call!72574)))

(declare-fun b!1584581 () Bool)

(declare-fun c!146841 () Bool)

(assert (=> b!1584581 (= c!146841 (and (is-Cons!37101 (t!52026 l!1251)) (bvsgt (_1!13000 (h!38645 (t!52026 l!1251))) newKey!123)))))

(assert (=> b!1584581 (= e!884602 e!884600)))

(declare-fun d!167417 () Bool)

(assert (=> d!167417 e!884601))

(declare-fun res!1082376 () Bool)

(assert (=> d!167417 (=> (not res!1082376) (not e!884601))))

(assert (=> d!167417 (= res!1082376 (isStrictlySorted!1167 lt!677204))))

(assert (=> d!167417 (= lt!677204 e!884598)))

(declare-fun c!146842 () Bool)

(assert (=> d!167417 (= c!146842 (and (is-Cons!37101 (t!52026 l!1251)) (bvslt (_1!13000 (h!38645 (t!52026 l!1251))) newKey!123)))))

(assert (=> d!167417 (isStrictlySorted!1167 (t!52026 l!1251))))

(assert (=> d!167417 (= (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123) lt!677204)))

(declare-fun bm!72571 () Bool)

(assert (=> bm!72571 (= call!72574 call!72573)))

(declare-fun e!884599 () List!37105)

(declare-fun b!1584582 () Bool)

(assert (=> b!1584582 (= e!884599 (ite c!146843 (t!52026 (t!52026 l!1251)) (ite c!146841 (Cons!37101 (h!38645 (t!52026 l!1251)) (t!52026 (t!52026 l!1251))) Nil!37102)))))

(declare-fun bm!72572 () Bool)

(assert (=> bm!72572 (= call!72573 ($colon$colon!1024 e!884599 (ite c!146842 (h!38645 (t!52026 l!1251)) (tuple2!25981 newKey!123 newValue!123))))))

(declare-fun c!146844 () Bool)

(assert (=> bm!72572 (= c!146844 c!146842)))

(declare-fun b!1584583 () Bool)

(assert (=> b!1584583 (= e!884599 (insertStrictlySorted!625 (t!52026 (t!52026 l!1251)) newKey!123 newValue!123))))

(assert (= (and d!167417 c!146842) b!1584578))

(assert (= (and d!167417 (not c!146842)) b!1584576))

(assert (= (and b!1584576 c!146843) b!1584577))

(assert (= (and b!1584576 (not c!146843)) b!1584581))

(assert (= (and b!1584581 c!146841) b!1584580))

(assert (= (and b!1584581 (not c!146841)) b!1584579))

(assert (= (or b!1584580 b!1584579) bm!72570))

(assert (= (or b!1584577 bm!72570) bm!72571))

(assert (= (or b!1584578 bm!72571) bm!72572))

(assert (= (and bm!72572 c!146844) b!1584583))

(assert (= (and bm!72572 (not c!146844)) b!1584582))

(assert (= (and d!167417 res!1082376) b!1584574))

(assert (= (and b!1584574 res!1082377) b!1584575))

(declare-fun m!1453779 () Bool)

(assert (=> b!1584575 m!1453779))

(declare-fun m!1453781 () Bool)

(assert (=> b!1584574 m!1453781))

(declare-fun m!1453783 () Bool)

(assert (=> bm!72572 m!1453783))

(declare-fun m!1453785 () Bool)

(assert (=> b!1584583 m!1453785))

(declare-fun m!1453787 () Bool)

(assert (=> d!167417 m!1453787))

(assert (=> d!167417 m!1453685))

(assert (=> b!1584387 d!167417))

(declare-fun d!167419 () Bool)

(assert (=> d!167419 (not (containsKey!1001 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-fun lt!677209 () Unit!52235)

(declare-fun choose!2115 (List!37105 (_ BitVec 64) B!2924 (_ BitVec 64)) Unit!52235)

(assert (=> d!167419 (= lt!677209 (choose!2115 (t!52026 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun e!884629 () Bool)

(assert (=> d!167419 e!884629))

(declare-fun res!1082408 () Bool)

(assert (=> d!167419 (=> (not res!1082408) (not e!884629))))

(assert (=> d!167419 (= res!1082408 (isStrictlySorted!1167 (t!52026 l!1251)))))

(assert (=> d!167419 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!10 (t!52026 l!1251) newKey!123 newValue!123 otherKey!56) lt!677209)))

(declare-fun b!1584614 () Bool)

(declare-fun res!1082409 () Bool)

(assert (=> b!1584614 (=> (not res!1082409) (not e!884629))))

(assert (=> b!1584614 (= res!1082409 (not (containsKey!1001 (t!52026 l!1251) otherKey!56)))))

(declare-fun b!1584615 () Bool)

(assert (=> b!1584615 (= e!884629 (not (= otherKey!56 newKey!123)))))

(assert (= (and d!167419 res!1082408) b!1584614))

(assert (= (and b!1584614 res!1082409) b!1584615))

(assert (=> d!167419 m!1453677))

(assert (=> d!167419 m!1453677))

(assert (=> d!167419 m!1453683))

(declare-fun m!1453805 () Bool)

(assert (=> d!167419 m!1453805))

(assert (=> d!167419 m!1453685))

(assert (=> b!1584614 m!1453687))

(assert (=> b!1584387 d!167419))

(declare-fun d!167439 () Bool)

(declare-fun res!1082414 () Bool)

(declare-fun e!884636 () Bool)

(assert (=> d!167439 (=> res!1082414 e!884636)))

(assert (=> d!167439 (= res!1082414 (and (is-Cons!37101 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123)) (= (_1!13000 (h!38645 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167439 (= (containsKey!1001 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123) otherKey!56) e!884636)))

(declare-fun b!1584624 () Bool)

(declare-fun e!884637 () Bool)

(assert (=> b!1584624 (= e!884636 e!884637)))

(declare-fun res!1082415 () Bool)

(assert (=> b!1584624 (=> (not res!1082415) (not e!884637))))

(assert (=> b!1584624 (= res!1082415 (and (or (not (is-Cons!37101 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123))) (bvsle (_1!13000 (h!38645 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123))) otherKey!56)) (is-Cons!37101 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123)) (bvslt (_1!13000 (h!38645 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1584625 () Bool)

(assert (=> b!1584625 (= e!884637 (containsKey!1001 (t!52026 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167439 (not res!1082414)) b!1584624))

(assert (= (and b!1584624 res!1082415) b!1584625))

(declare-fun m!1453807 () Bool)

(assert (=> b!1584625 m!1453807))

(assert (=> b!1584387 d!167439))

(declare-fun d!167441 () Bool)

(declare-fun res!1082416 () Bool)

(declare-fun e!884641 () Bool)

(assert (=> d!167441 (=> res!1082416 e!884641)))

(assert (=> d!167441 (= res!1082416 (and (is-Cons!37101 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123)) (= (_1!13000 (h!38645 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167441 (= (containsKey!1001 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123) otherKey!56) e!884641)))

(declare-fun b!1584631 () Bool)

(declare-fun e!884642 () Bool)

(assert (=> b!1584631 (= e!884641 e!884642)))

(declare-fun res!1082417 () Bool)

(assert (=> b!1584631 (=> (not res!1082417) (not e!884642))))

(assert (=> b!1584631 (= res!1082417 (and (or (not (is-Cons!37101 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123))) (bvsle (_1!13000 (h!38645 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123))) otherKey!56)) (is-Cons!37101 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123)) (bvslt (_1!13000 (h!38645 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1584632 () Bool)

(assert (=> b!1584632 (= e!884642 (containsKey!1001 (t!52026 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167441 (not res!1082416)) b!1584631))

(assert (= (and b!1584631 res!1082417) b!1584632))

(declare-fun m!1453809 () Bool)

(assert (=> b!1584632 m!1453809))

(assert (=> b!1584387 d!167441))

(declare-fun b!1584638 () Bool)

(declare-fun e!884646 () Bool)

(declare-fun tp!115138 () Bool)

(assert (=> b!1584638 (= e!884646 (and tp_is_empty!39457 tp!115138))))

(assert (=> b!1584386 (= tp!115123 e!884646)))

(assert (= (and b!1584386 (is-Cons!37101 (t!52026 l!1251))) b!1584638))

(push 1)

(assert (not b!1584455))

(assert (not b!1584583))

(assert (not b!1584625))

(assert (not b!1584574))

(assert (not b!1584445))

(assert (not b!1584556))

(assert (not bm!72572))

(assert (not d!167419))

(assert (not b!1584565))

(assert tp_is_empty!39457)

(assert (not b!1584614))

(assert (not b!1584557))

(assert (not bm!72569))

(assert (not d!167407))

(assert (not d!167417))

(assert (not b!1584451))

(assert (not b!1584453))

(assert (not b!1584638))

(assert (not b!1584632))

(assert (not b!1584575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!1584455 d!167393))

(declare-fun d!167447 () Bool)

(declare-fun res!1082420 () Bool)

(declare-fun e!884649 () Bool)

(assert (=> d!167447 (=> res!1082420 e!884649)))

(assert (=> d!167447 (= res!1082420 (and (is-Cons!37101 (t!52026 (t!52026 l!1251))) (= (_1!13000 (h!38645 (t!52026 (t!52026 l!1251)))) otherKey!56)))))

(assert (=> d!167447 (= (containsKey!1001 (t!52026 (t!52026 l!1251)) otherKey!56) e!884649)))

(declare-fun b!1584641 () Bool)

(declare-fun e!884650 () Bool)

(assert (=> b!1584641 (= e!884649 e!884650)))

(declare-fun res!1082421 () Bool)

(assert (=> b!1584641 (=> (not res!1082421) (not e!884650))))

(assert (=> b!1584641 (= res!1082421 (and (or (not (is-Cons!37101 (t!52026 (t!52026 l!1251)))) (bvsle (_1!13000 (h!38645 (t!52026 (t!52026 l!1251)))) otherKey!56)) (is-Cons!37101 (t!52026 (t!52026 l!1251))) (bvslt (_1!13000 (h!38645 (t!52026 (t!52026 l!1251)))) otherKey!56)))))

(declare-fun b!1584642 () Bool)

(assert (=> b!1584642 (= e!884650 (containsKey!1001 (t!52026 (t!52026 (t!52026 l!1251))) otherKey!56))))

(assert (= (and d!167447 (not res!1082420)) b!1584641))

(assert (= (and b!1584641 res!1082421) b!1584642))

(declare-fun m!1453813 () Bool)

(assert (=> b!1584642 m!1453813))

(assert (=> b!1584445 d!167447))

(declare-fun d!167449 () Bool)

(declare-fun res!1082422 () Bool)

(declare-fun e!884651 () Bool)

(assert (=> d!167449 (=> res!1082422 e!884651)))

(assert (=> d!167449 (= res!1082422 (or (is-Nil!37102 lt!677204) (is-Nil!37102 (t!52026 lt!677204))))))

(assert (=> d!167449 (= (isStrictlySorted!1167 lt!677204) e!884651)))

(declare-fun b!1584643 () Bool)

(declare-fun e!884652 () Bool)

(assert (=> b!1584643 (= e!884651 e!884652)))

(declare-fun res!1082423 () Bool)

(assert (=> b!1584643 (=> (not res!1082423) (not e!884652))))

(assert (=> b!1584643 (= res!1082423 (bvslt (_1!13000 (h!38645 lt!677204)) (_1!13000 (h!38645 (t!52026 lt!677204)))))))

(declare-fun b!1584644 () Bool)

(assert (=> b!1584644 (= e!884652 (isStrictlySorted!1167 (t!52026 lt!677204)))))

(assert (= (and d!167449 (not res!1082422)) b!1584643))

(assert (= (and b!1584643 res!1082423) b!1584644))

(declare-fun m!1453815 () Bool)

(assert (=> b!1584644 m!1453815))

(assert (=> d!167417 d!167449))

(assert (=> d!167417 d!167401))

(assert (=> d!167419 d!167441))

(assert (=> d!167419 d!167417))

(declare-fun d!167453 () Bool)

(assert (=> d!167453 (not (containsKey!1001 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123) otherKey!56))))

(assert (=> d!167453 true))

(declare-fun _$17!98 () Unit!52235)

(assert (=> d!167453 (= (choose!2115 (t!52026 l!1251) newKey!123 newValue!123 otherKey!56) _$17!98)))

(declare-fun bs!45928 () Bool)

(assert (= bs!45928 d!167453))

(assert (=> bs!45928 m!1453677))

(assert (=> bs!45928 m!1453677))

(assert (=> bs!45928 m!1453683))

(assert (=> d!167419 d!167453))

(assert (=> d!167419 d!167401))

(declare-fun d!167461 () Bool)

(declare-fun res!1082430 () Bool)

(declare-fun e!884662 () Bool)

(assert (=> d!167461 (=> res!1082430 e!884662)))

(assert (=> d!167461 (= res!1082430 (and (is-Cons!37101 (t!52026 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123))) (= (_1!13000 (h!38645 (t!52026 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123)))) otherKey!56)))))

(assert (=> d!167461 (= (containsKey!1001 (t!52026 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123)) otherKey!56) e!884662)))

(declare-fun b!1584659 () Bool)

(declare-fun e!884663 () Bool)

(assert (=> b!1584659 (= e!884662 e!884663)))

(declare-fun res!1082431 () Bool)

(assert (=> b!1584659 (=> (not res!1082431) (not e!884663))))

(assert (=> b!1584659 (= res!1082431 (and (or (not (is-Cons!37101 (t!52026 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123)))) (bvsle (_1!13000 (h!38645 (t!52026 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123)))) otherKey!56)) (is-Cons!37101 (t!52026 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123))) (bvslt (_1!13000 (h!38645 (t!52026 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123)))) otherKey!56)))))

(declare-fun b!1584660 () Bool)

(assert (=> b!1584660 (= e!884663 (containsKey!1001 (t!52026 (t!52026 (insertStrictlySorted!625 (t!52026 l!1251) newKey!123 newValue!123))) otherKey!56))))

(assert (= (and d!167461 (not res!1082430)) b!1584659))

(assert (= (and b!1584659 res!1082431) b!1584660))

(declare-fun m!1453831 () Bool)

(assert (=> b!1584660 m!1453831))

(assert (=> b!1584632 d!167461))

(assert (=> b!1584565 d!167417))

(declare-fun d!167463 () Bool)

(declare-fun lt!677213 () Bool)

(declare-fun content!864 (List!37105) (Set tuple2!25980))

(assert (=> d!167463 (= lt!677213 (set.member (tuple2!25981 newKey!123 newValue!123) (content!864 lt!677199)))))

(declare-fun e!884676 () Bool)

(assert (=> d!167463 (= lt!677213 e!884676)))

(declare-fun res!1082445 () Bool)

(assert (=> d!167463 (=> (not res!1082445) (not e!884676))))

(assert (=> d!167463 (= res!1082445 (is-Cons!37101 lt!677199))))

(assert (=> d!167463 (= (contains!10545 lt!677199 (tuple2!25981 newKey!123 newValue!123)) lt!677213)))

(declare-fun b!1584673 () Bool)

(declare-fun e!884677 () Bool)

(assert (=> b!1584673 (= e!884676 e!884677)))

(declare-fun res!1082444 () Bool)

(assert (=> b!1584673 (=> res!1082444 e!884677)))

(assert (=> b!1584673 (= res!1082444 (= (h!38645 lt!677199) (tuple2!25981 newKey!123 newValue!123)))))

(declare-fun b!1584674 () Bool)

(assert (=> b!1584674 (= e!884677 (contains!10545 (t!52026 lt!677199) (tuple2!25981 newKey!123 newValue!123)))))

(assert (= (and d!167463 res!1082445) b!1584673))

(assert (= (and b!1584673 (not res!1082444)) b!1584674))

(declare-fun m!1453841 () Bool)

(assert (=> d!167463 m!1453841))

(declare-fun m!1453843 () Bool)

(assert (=> d!167463 m!1453843))

(declare-fun m!1453845 () Bool)

(assert (=> b!1584674 m!1453845))

(assert (=> b!1584557 d!167463))

(declare-fun b!1584675 () Bool)

(declare-fun res!1082447 () Bool)

(declare-fun e!884681 () Bool)

(assert (=> b!1584675 (=> (not res!1082447) (not e!884681))))

(declare-fun lt!677214 () List!37105)

(assert (=> b!1584675 (= res!1082447 (containsKey!1001 lt!677214 newKey!123))))

(declare-fun b!1584676 () Bool)

(assert (=> b!1584676 (= e!884681 (contains!10545 lt!677214 (tuple2!25981 newKey!123 newValue!123)))))

(declare-fun b!1584677 () Bool)

(declare-fun e!884678 () List!37105)

(declare-fun e!884682 () List!37105)

(assert (=> b!1584677 (= e!884678 e!884682)))

(declare-fun c!146851 () Bool)

(assert (=> b!1584677 (= c!146851 (and (is-Cons!37101 (t!52026 (t!52026 l!1251))) (= (_1!13000 (h!38645 (t!52026 (t!52026 l!1251)))) newKey!123)))))

(declare-fun b!1584678 () Bool)

(declare-fun call!72580 () List!37105)

(assert (=> b!1584678 (= e!884682 call!72580)))

(declare-fun b!1584679 () Bool)

(declare-fun call!72579 () List!37105)

(assert (=> b!1584679 (= e!884678 call!72579)))

(declare-fun b!1584680 () Bool)

(declare-fun e!884680 () List!37105)

(declare-fun call!72581 () List!37105)

(assert (=> b!1584680 (= e!884680 call!72581)))

(declare-fun b!1584681 () Bool)

(assert (=> b!1584681 (= e!884680 call!72581)))

(declare-fun bm!72576 () Bool)

(assert (=> bm!72576 (= call!72581 call!72580)))

(declare-fun b!1584682 () Bool)

(declare-fun c!146849 () Bool)

(assert (=> b!1584682 (= c!146849 (and (is-Cons!37101 (t!52026 (t!52026 l!1251))) (bvsgt (_1!13000 (h!38645 (t!52026 (t!52026 l!1251)))) newKey!123)))))

(assert (=> b!1584682 (= e!884682 e!884680)))

(declare-fun d!167475 () Bool)

(assert (=> d!167475 e!884681))

(declare-fun res!1082446 () Bool)

(assert (=> d!167475 (=> (not res!1082446) (not e!884681))))

(assert (=> d!167475 (= res!1082446 (isStrictlySorted!1167 lt!677214))))

(assert (=> d!167475 (= lt!677214 e!884678)))

(declare-fun c!146850 () Bool)

(assert (=> d!167475 (= c!146850 (and (is-Cons!37101 (t!52026 (t!52026 l!1251))) (bvslt (_1!13000 (h!38645 (t!52026 (t!52026 l!1251)))) newKey!123)))))

(assert (=> d!167475 (isStrictlySorted!1167 (t!52026 (t!52026 l!1251)))))

(assert (=> d!167475 (= (insertStrictlySorted!625 (t!52026 (t!52026 l!1251)) newKey!123 newValue!123) lt!677214)))

(declare-fun bm!72577 () Bool)

(assert (=> bm!72577 (= call!72580 call!72579)))

(declare-fun b!1584683 () Bool)

(declare-fun e!884679 () List!37105)

(assert (=> b!1584683 (= e!884679 (ite c!146851 (t!52026 (t!52026 (t!52026 l!1251))) (ite c!146849 (Cons!37101 (h!38645 (t!52026 (t!52026 l!1251))) (t!52026 (t!52026 (t!52026 l!1251)))) Nil!37102)))))

(declare-fun bm!72578 () Bool)

(assert (=> bm!72578 (= call!72579 ($colon$colon!1024 e!884679 (ite c!146850 (h!38645 (t!52026 (t!52026 l!1251))) (tuple2!25981 newKey!123 newValue!123))))))

(declare-fun c!146852 () Bool)

(assert (=> bm!72578 (= c!146852 c!146850)))

(declare-fun b!1584684 () Bool)

(assert (=> b!1584684 (= e!884679 (insertStrictlySorted!625 (t!52026 (t!52026 (t!52026 l!1251))) newKey!123 newValue!123))))

(assert (= (and d!167475 c!146850) b!1584679))

(assert (= (and d!167475 (not c!146850)) b!1584677))

(assert (= (and b!1584677 c!146851) b!1584678))

(assert (= (and b!1584677 (not c!146851)) b!1584682))

(assert (= (and b!1584682 c!146849) b!1584681))

(assert (= (and b!1584682 (not c!146849)) b!1584680))

(assert (= (or b!1584681 b!1584680) bm!72576))

(assert (= (or b!1584678 bm!72576) bm!72577))

(assert (= (or b!1584679 bm!72577) bm!72578))

(assert (= (and bm!72578 c!146852) b!1584684))

(assert (= (and bm!72578 (not c!146852)) b!1584683))

(assert (= (and d!167475 res!1082446) b!1584675))

(assert (= (and b!1584675 res!1082447) b!1584676))

(declare-fun m!1453847 () Bool)

(assert (=> b!1584676 m!1453847))

(declare-fun m!1453849 () Bool)

(assert (=> b!1584675 m!1453849))

(declare-fun m!1453851 () Bool)

(assert (=> bm!72578 m!1453851))

(declare-fun m!1453853 () Bool)

(assert (=> b!1584684 m!1453853))

(declare-fun m!1453855 () Bool)

(assert (=> d!167475 m!1453855))

(assert (=> d!167475 m!1453733))

(assert (=> b!1584583 d!167475))

(declare-fun d!167477 () Bool)

(assert (=> d!167477 (= ($colon$colon!1024 e!884590 (ite c!146838 (h!38645 l!1251) (tuple2!25981 newKey!123 newValue!123))) (Cons!37101 (ite c!146838 (h!38645 l!1251) (tuple2!25981 newKey!123 newValue!123)) e!884590))))

(assert (=> bm!72569 d!167477))

(declare-fun lt!677218 () Bool)

(declare-fun d!167479 () Bool)

(assert (=> d!167479 (= lt!677218 (set.member (tuple2!25981 newKey!123 newValue!123) (content!864 lt!677204)))))

(declare-fun e!884689 () Bool)

(assert (=> d!167479 (= lt!677218 e!884689)))

(declare-fun res!1082455 () Bool)

(assert (=> d!167479 (=> (not res!1082455) (not e!884689))))

(assert (=> d!167479 (= res!1082455 (is-Cons!37101 lt!677204))))

(assert (=> d!167479 (= (contains!10545 lt!677204 (tuple2!25981 newKey!123 newValue!123)) lt!677218)))

(declare-fun b!1584691 () Bool)

(declare-fun e!884690 () Bool)

(assert (=> b!1584691 (= e!884689 e!884690)))

(declare-fun res!1082454 () Bool)

(assert (=> b!1584691 (=> res!1082454 e!884690)))

(assert (=> b!1584691 (= res!1082454 (= (h!38645 lt!677204) (tuple2!25981 newKey!123 newValue!123)))))

(declare-fun b!1584692 () Bool)

(assert (=> b!1584692 (= e!884690 (contains!10545 (t!52026 lt!677204) (tuple2!25981 newKey!123 newValue!123)))))

(assert (= (and d!167479 res!1082455) b!1584691))

(assert (= (and b!1584691 (not res!1082454)) b!1584692))

(declare-fun m!1453863 () Bool)

(assert (=> d!167479 m!1453863))

(declare-fun m!1453865 () Bool)

(assert (=> d!167479 m!1453865))

(declare-fun m!1453867 () Bool)

(assert (=> b!1584692 m!1453867))

(assert (=> b!1584575 d!167479))

(assert (=> b!1584614 d!167393))

(declare-fun d!167483 () Bool)

(declare-fun res!1082458 () Bool)

(declare-fun e!884693 () Bool)

(assert (=> d!167483 (=> res!1082458 e!884693)))

(assert (=> d!167483 (= res!1082458 (and (is-Cons!37101 lt!677199) (= (_1!13000 (h!38645 lt!677199)) newKey!123)))))

(assert (=> d!167483 (= (containsKey!1001 lt!677199 newKey!123) e!884693)))

(declare-fun b!1584695 () Bool)

(declare-fun e!884694 () Bool)

(assert (=> b!1584695 (= e!884693 e!884694)))

(declare-fun res!1082459 () Bool)

(assert (=> b!1584695 (=> (not res!1082459) (not e!884694))))

(assert (=> b!1584695 (= res!1082459 (and (or (not (is-Cons!37101 lt!677199)) (bvsle (_1!13000 (h!38645 lt!677199)) newKey!123)) (is-Cons!37101 lt!677199) (bvslt (_1!13000 (h!38645 lt!677199)) newKey!123)))))

(declare-fun b!1584696 () Bool)

(assert (=> b!1584696 (= e!884694 (containsKey!1001 (t!52026 lt!677199) newKey!123))))

(assert (= (and d!167483 (not res!1082458)) b!1584695))

(assert (= (and b!1584695 res!1082459) b!1584696))

(declare-fun m!1453875 () Bool)

(assert (=> b!1584696 m!1453875))

(assert (=> b!1584556 d!167483))

(declare-fun d!167487 () Bool)

(assert (=> d!167487 (= ($colon$colon!1024 e!884599 (ite c!146842 (h!38645 (t!52026 l!1251)) (tuple2!25981 newKey!123 newValue!123))) (Cons!37101 (ite c!146842 (h!38645 (t!52026 l!1251)) (tuple2!25981 newKey!123 newValue!123)) e!884599))))

(assert (=> bm!72572 d!167487))

(declare-fun d!167489 () Bool)

(declare-fun res!1082462 () Bool)

(declare-fun e!884697 () Bool)

(assert (=> d!167489 (=> res!1082462 e!884697)))

(assert (=> d!167489 (= res!1082462 (and (is-Cons!37101 lt!677204) (= (_1!13000 (h!38645 lt!677204)) newKey!123)))))

(assert (=> d!167489 (= (containsKey!1001 lt!677204 newKey!123) e!884697)))

(declare-fun b!1584699 () Bool)

(declare-fun e!884698 () Bool)

(assert (=> b!1584699 (= e!884697 e!884698)))

(declare-fun res!1082463 () Bool)

(assert (=> b!1584699 (=> (not res!1082463) (not e!884698))))

(assert (=> b!1584699 (= res!1082463 (and (or (not (is-Cons!37101 lt!677204)) (bvsle (_1!13000 (h!38645 lt!677204)) newKey!123)) (is-Cons!37101 lt!677204) (bvslt (_1!13000 (h!38645 lt!677204)) newKey!123)))))

(declare-fun b!1584700 () Bool)

(assert (=> b!1584700 (= e!884698 (containsKey!1001 (t!52026 lt!677204) newKey!123))))

(assert (= (and d!167489 (not res!1082462)) b!1584699))

(assert (= (and b!1584699 res!1082463) b!1584700))

(declare-fun m!1453879 () Bool)

(assert (=> b!1584700 m!1453879))

(assert (=> b!1584574 d!167489))

(declare-fun d!167493 () Bool)

(declare-fun res!1082464 () Bool)

(declare-fun e!884700 () Bool)

(assert (=> d!167493 (=> res!1082464 e!884700)))

(assert (=> d!167493 (= res!1082464 (and (is-Cons!37101 (t!52026 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123))) (= (_1!13000 (h!38645 (t!52026 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123)))) otherKey!56)))))

(assert (=> d!167493 (= (containsKey!1001 (t!52026 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123)) otherKey!56) e!884700)))

(declare-fun b!1584702 () Bool)

(declare-fun e!884701 () Bool)

(assert (=> b!1584702 (= e!884700 e!884701)))

(declare-fun res!1082465 () Bool)

(assert (=> b!1584702 (=> (not res!1082465) (not e!884701))))

(assert (=> b!1584702 (= res!1082465 (and (or (not (is-Cons!37101 (t!52026 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123)))) (bvsle (_1!13000 (h!38645 (t!52026 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123)))) otherKey!56)) (is-Cons!37101 (t!52026 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123))) (bvslt (_1!13000 (h!38645 (t!52026 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123)))) otherKey!56)))))

(declare-fun b!1584703 () Bool)

(assert (=> b!1584703 (= e!884701 (containsKey!1001 (t!52026 (t!52026 (insertStrictlySorted!625 l!1251 newKey!123 newValue!123))) otherKey!56))))

(assert (= (and d!167493 (not res!1082464)) b!1584702))

(assert (= (and b!1584702 res!1082465) b!1584703))

(declare-fun m!1453881 () Bool)

(assert (=> b!1584703 m!1453881))

(assert (=> b!1584625 d!167493))

(declare-fun d!167495 () Bool)

(declare-fun res!1082466 () Bool)

(declare-fun e!884702 () Bool)

(assert (=> d!167495 (=> res!1082466 e!884702)))

(assert (=> d!167495 (= res!1082466 (or (is-Nil!37102 (t!52026 (t!52026 l!1251))) (is-Nil!37102 (t!52026 (t!52026 (t!52026 l!1251))))))))

(assert (=> d!167495 (= (isStrictlySorted!1167 (t!52026 (t!52026 l!1251))) e!884702)))

(declare-fun b!1584704 () Bool)

(declare-fun e!884703 () Bool)

(assert (=> b!1584704 (= e!884702 e!884703)))

(declare-fun res!1082467 () Bool)

(assert (=> b!1584704 (=> (not res!1082467) (not e!884703))))

(assert (=> b!1584704 (= res!1082467 (bvslt (_1!13000 (h!38645 (t!52026 (t!52026 l!1251)))) (_1!13000 (h!38645 (t!52026 (t!52026 (t!52026 l!1251)))))))))

(declare-fun b!1584705 () Bool)

(assert (=> b!1584705 (= e!884703 (isStrictlySorted!1167 (t!52026 (t!52026 (t!52026 l!1251)))))))

(assert (= (and d!167495 (not res!1082466)) b!1584704))

(assert (= (and b!1584704 res!1082467) b!1584705))

(declare-fun m!1453883 () Bool)

(assert (=> b!1584705 m!1453883))

(assert (=> b!1584451 d!167495))

(assert (=> b!1584453 d!167401))

(declare-fun d!167497 () Bool)

(declare-fun res!1082468 () Bool)

(declare-fun e!884704 () Bool)

(assert (=> d!167497 (=> res!1082468 e!884704)))

(assert (=> d!167497 (= res!1082468 (or (is-Nil!37102 lt!677199) (is-Nil!37102 (t!52026 lt!677199))))))

(assert (=> d!167497 (= (isStrictlySorted!1167 lt!677199) e!884704)))

(declare-fun b!1584706 () Bool)

(declare-fun e!884705 () Bool)

(assert (=> b!1584706 (= e!884704 e!884705)))

(declare-fun res!1082469 () Bool)

(assert (=> b!1584706 (=> (not res!1082469) (not e!884705))))

(assert (=> b!1584706 (= res!1082469 (bvslt (_1!13000 (h!38645 lt!677199)) (_1!13000 (h!38645 (t!52026 lt!677199)))))))

(declare-fun b!1584707 () Bool)

(assert (=> b!1584707 (= e!884705 (isStrictlySorted!1167 (t!52026 lt!677199)))))

(assert (= (and d!167497 (not res!1082468)) b!1584706))

(assert (= (and b!1584706 res!1082469) b!1584707))

(declare-fun m!1453885 () Bool)

(assert (=> b!1584707 m!1453885))

(assert (=> d!167407 d!167497))

(assert (=> d!167407 d!167403))

(declare-fun b!1584708 () Bool)

(declare-fun e!884706 () Bool)

(declare-fun tp!115140 () Bool)

(assert (=> b!1584708 (= e!884706 (and tp_is_empty!39457 tp!115140))))

(assert (=> b!1584638 (= tp!115138 e!884706)))

(assert (= (and b!1584638 (is-Cons!37101 (t!52026 (t!52026 l!1251)))) b!1584708))

(push 1)

(assert (not b!1584707))

(assert (not d!167475))

(assert (not b!1584696))

(assert (not b!1584644))

(assert (not b!1584676))

(assert (not b!1584703))

(assert (not b!1584692))

(assert tp_is_empty!39457)

(assert (not d!167463))

(assert (not bm!72578))

(assert (not b!1584708))

(assert (not b!1584705))

(assert (not b!1584675))

(assert (not b!1584642))

(assert (not b!1584660))

(assert (not b!1584684))

(assert (not d!167479))

(assert (not d!167453))

(assert (not b!1584674))

(assert (not b!1584700))

(check-sat)

