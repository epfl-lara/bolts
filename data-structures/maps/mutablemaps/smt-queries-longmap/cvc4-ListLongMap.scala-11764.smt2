; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138128 () Bool)

(assert start!138128)

(declare-fun b!1584420 () Bool)

(declare-fun e!884508 () Bool)

(declare-fun tp_is_empty!39461 () Bool)

(declare-fun tp!115129 () Bool)

(assert (=> b!1584420 (= e!884508 (and tp_is_empty!39461 tp!115129))))

(declare-fun b!1584421 () Bool)

(declare-fun res!1082311 () Bool)

(declare-fun e!884507 () Bool)

(assert (=> b!1584421 (=> (not res!1082311) (not e!884507))))

(declare-datatypes ((B!2928 0))(
  ( (B!2929 (val!19826 Int)) )
))
(declare-datatypes ((tuple2!25984 0))(
  ( (tuple2!25985 (_1!13002 (_ BitVec 64)) (_2!13002 B!2928)) )
))
(declare-datatypes ((List!37107 0))(
  ( (Nil!37104) (Cons!37103 (h!38647 tuple2!25984) (t!52028 List!37107)) )
))
(declare-fun l!1251 () List!37107)

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!1003 (List!37107 (_ BitVec 64)) Bool)

(assert (=> b!1584421 (= res!1082311 (not (containsKey!1003 l!1251 otherKey!56)))))

(declare-fun b!1584422 () Bool)

(declare-fun res!1082315 () Bool)

(assert (=> b!1584422 (=> (not res!1082315) (not e!884507))))

(assert (=> b!1584422 (= res!1082315 (not (containsKey!1003 (t!52028 l!1251) otherKey!56)))))

(declare-fun res!1082312 () Bool)

(assert (=> start!138128 (=> (not res!1082312) (not e!884507))))

(declare-fun isStrictlySorted!1169 (List!37107) Bool)

(assert (=> start!138128 (= res!1082312 (isStrictlySorted!1169 l!1251))))

(assert (=> start!138128 e!884507))

(assert (=> start!138128 e!884508))

(assert (=> start!138128 true))

(assert (=> start!138128 tp_is_empty!39461))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun newValue!123 () B!2928)

(declare-fun b!1584423 () Bool)

(declare-fun insertStrictlySorted!627 (List!37107 (_ BitVec 64) B!2928) List!37107)

(assert (=> b!1584423 (= e!884507 (not (not (containsKey!1003 (insertStrictlySorted!627 l!1251 newKey!123 newValue!123) otherKey!56))))))

(assert (=> b!1584423 (not (containsKey!1003 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-datatypes ((Unit!52239 0))(
  ( (Unit!52240) )
))
(declare-fun lt!677188 () Unit!52239)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!12 (List!37107 (_ BitVec 64) B!2928 (_ BitVec 64)) Unit!52239)

(assert (=> b!1584423 (= lt!677188 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!12 (t!52028 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun b!1584424 () Bool)

(declare-fun res!1082314 () Bool)

(assert (=> b!1584424 (=> (not res!1082314) (not e!884507))))

(assert (=> b!1584424 (= res!1082314 (isStrictlySorted!1169 (t!52028 l!1251)))))

(declare-fun b!1584425 () Bool)

(declare-fun res!1082313 () Bool)

(assert (=> b!1584425 (=> (not res!1082313) (not e!884507))))

(assert (=> b!1584425 (= res!1082313 (and (not (= otherKey!56 newKey!123)) (is-Cons!37103 l!1251)))))

(assert (= (and start!138128 res!1082312) b!1584421))

(assert (= (and b!1584421 res!1082311) b!1584425))

(assert (= (and b!1584425 res!1082313) b!1584424))

(assert (= (and b!1584424 res!1082314) b!1584422))

(assert (= (and b!1584422 res!1082315) b!1584423))

(assert (= (and start!138128 (is-Cons!37103 l!1251)) b!1584420))

(declare-fun m!1453709 () Bool)

(assert (=> b!1584421 m!1453709))

(declare-fun m!1453711 () Bool)

(assert (=> b!1584422 m!1453711))

(declare-fun m!1453713 () Bool)

(assert (=> b!1584424 m!1453713))

(declare-fun m!1453715 () Bool)

(assert (=> b!1584423 m!1453715))

(declare-fun m!1453717 () Bool)

(assert (=> b!1584423 m!1453717))

(declare-fun m!1453719 () Bool)

(assert (=> b!1584423 m!1453719))

(declare-fun m!1453721 () Bool)

(assert (=> b!1584423 m!1453721))

(assert (=> b!1584423 m!1453717))

(declare-fun m!1453723 () Bool)

(assert (=> b!1584423 m!1453723))

(assert (=> b!1584423 m!1453719))

(declare-fun m!1453725 () Bool)

(assert (=> start!138128 m!1453725))

(push 1)

(assert tp_is_empty!39461)

(assert (not b!1584424))

(assert (not b!1584423))

(assert (not start!138128))

(assert (not b!1584420))

(assert (not b!1584421))

(assert (not b!1584422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167391 () Bool)

(declare-fun res!1082326 () Bool)

(declare-fun e!884519 () Bool)

(assert (=> d!167391 (=> res!1082326 e!884519)))

(assert (=> d!167391 (= res!1082326 (or (is-Nil!37104 (t!52028 l!1251)) (is-Nil!37104 (t!52028 (t!52028 l!1251)))))))

(assert (=> d!167391 (= (isStrictlySorted!1169 (t!52028 l!1251)) e!884519)))

(declare-fun b!1584436 () Bool)

(declare-fun e!884520 () Bool)

(assert (=> b!1584436 (= e!884519 e!884520)))

(declare-fun res!1082327 () Bool)

(assert (=> b!1584436 (=> (not res!1082327) (not e!884520))))

(assert (=> b!1584436 (= res!1082327 (bvslt (_1!13002 (h!38647 (t!52028 l!1251))) (_1!13002 (h!38647 (t!52028 (t!52028 l!1251))))))))

(declare-fun b!1584437 () Bool)

(assert (=> b!1584437 (= e!884520 (isStrictlySorted!1169 (t!52028 (t!52028 l!1251))))))

(assert (= (and d!167391 (not res!1082326)) b!1584436))

(assert (= (and b!1584436 res!1082327) b!1584437))

(declare-fun m!1453729 () Bool)

(assert (=> b!1584437 m!1453729))

(assert (=> b!1584424 d!167391))

(declare-fun b!1584518 () Bool)

(declare-fun e!884572 () List!37107)

(declare-fun call!72561 () List!37107)

(assert (=> b!1584518 (= e!884572 call!72561)))

(declare-fun bm!72556 () Bool)

(declare-fun call!72560 () List!37107)

(assert (=> bm!72556 (= call!72560 call!72561)))

(declare-fun bm!72557 () Bool)

(declare-fun call!72559 () List!37107)

(assert (=> bm!72557 (= call!72561 call!72559)))

(declare-fun b!1584519 () Bool)

(declare-fun e!884570 () List!37107)

(assert (=> b!1584519 (= e!884570 call!72560)))

(declare-fun b!1584520 () Bool)

(declare-fun e!884573 () Bool)

(declare-fun lt!677196 () List!37107)

(declare-fun contains!10543 (List!37107 tuple2!25984) Bool)

(assert (=> b!1584520 (= e!884573 (contains!10543 lt!677196 (tuple2!25985 newKey!123 newValue!123)))))

(declare-fun b!1584522 () Bool)

(declare-fun e!884571 () List!37107)

(assert (=> b!1584522 (= e!884571 call!72559)))

(declare-fun b!1584523 () Bool)

(assert (=> b!1584523 (= e!884570 call!72560)))

(declare-fun e!884574 () List!37107)

(declare-fun c!146824 () Bool)

(declare-fun c!146825 () Bool)

(declare-fun b!1584524 () Bool)

(assert (=> b!1584524 (= e!884574 (ite c!146825 (t!52028 l!1251) (ite c!146824 (Cons!37103 (h!38647 l!1251) (t!52028 l!1251)) Nil!37104)))))

(declare-fun b!1584525 () Bool)

(assert (=> b!1584525 (= c!146824 (and (is-Cons!37103 l!1251) (bvsgt (_1!13002 (h!38647 l!1251)) newKey!123)))))

(assert (=> b!1584525 (= e!884572 e!884570)))

(declare-fun b!1584526 () Bool)

(declare-fun res!1082356 () Bool)

(assert (=> b!1584526 (=> (not res!1082356) (not e!884573))))

(assert (=> b!1584526 (= res!1082356 (containsKey!1003 lt!677196 newKey!123))))

(declare-fun d!167397 () Bool)

(assert (=> d!167397 e!884573))

(declare-fun res!1082357 () Bool)

(assert (=> d!167397 (=> (not res!1082357) (not e!884573))))

(assert (=> d!167397 (= res!1082357 (isStrictlySorted!1169 lt!677196))))

(assert (=> d!167397 (= lt!677196 e!884571)))

(declare-fun c!146823 () Bool)

(assert (=> d!167397 (= c!146823 (and (is-Cons!37103 l!1251) (bvslt (_1!13002 (h!38647 l!1251)) newKey!123)))))

(assert (=> d!167397 (isStrictlySorted!1169 l!1251)))

(assert (=> d!167397 (= (insertStrictlySorted!627 l!1251 newKey!123 newValue!123) lt!677196)))

(declare-fun b!1584521 () Bool)

(assert (=> b!1584521 (= e!884574 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123))))

(declare-fun b!1584527 () Bool)

(assert (=> b!1584527 (= e!884571 e!884572)))

(assert (=> b!1584527 (= c!146825 (and (is-Cons!37103 l!1251) (= (_1!13002 (h!38647 l!1251)) newKey!123)))))

(declare-fun bm!72558 () Bool)

(declare-fun $colon$colon!1023 (List!37107 tuple2!25984) List!37107)

(assert (=> bm!72558 (= call!72559 ($colon$colon!1023 e!884574 (ite c!146823 (h!38647 l!1251) (tuple2!25985 newKey!123 newValue!123))))))

(declare-fun c!146826 () Bool)

(assert (=> bm!72558 (= c!146826 c!146823)))

(assert (= (and d!167397 c!146823) b!1584522))

(assert (= (and d!167397 (not c!146823)) b!1584527))

(assert (= (and b!1584527 c!146825) b!1584518))

(assert (= (and b!1584527 (not c!146825)) b!1584525))

(assert (= (and b!1584525 c!146824) b!1584519))

(assert (= (and b!1584525 (not c!146824)) b!1584523))

(assert (= (or b!1584519 b!1584523) bm!72556))

(assert (= (or b!1584518 bm!72556) bm!72557))

(assert (= (or b!1584522 bm!72557) bm!72558))

(assert (= (and bm!72558 c!146826) b!1584521))

(assert (= (and bm!72558 (not c!146826)) b!1584524))

(assert (= (and d!167397 res!1082357) b!1584526))

(assert (= (and b!1584526 res!1082356) b!1584520))

(assert (=> b!1584521 m!1453717))

(declare-fun m!1453737 () Bool)

(assert (=> b!1584526 m!1453737))

(declare-fun m!1453743 () Bool)

(assert (=> bm!72558 m!1453743))

(declare-fun m!1453747 () Bool)

(assert (=> d!167397 m!1453747))

(assert (=> d!167397 m!1453725))

(declare-fun m!1453749 () Bool)

(assert (=> b!1584520 m!1453749))

(assert (=> b!1584423 d!167397))

(declare-fun b!1584542 () Bool)

(declare-fun e!884584 () List!37107)

(declare-fun call!72569 () List!37107)

(assert (=> b!1584542 (= e!884584 call!72569)))

(declare-fun bm!72564 () Bool)

(declare-fun call!72568 () List!37107)

(assert (=> bm!72564 (= call!72568 call!72569)))

(declare-fun bm!72565 () Bool)

(declare-fun call!72567 () List!37107)

(assert (=> bm!72565 (= call!72569 call!72567)))

(declare-fun b!1584543 () Bool)

(declare-fun e!884582 () List!37107)

(assert (=> b!1584543 (= e!884582 call!72568)))

(declare-fun lt!677198 () List!37107)

(declare-fun b!1584544 () Bool)

(declare-fun e!884585 () Bool)

(assert (=> b!1584544 (= e!884585 (contains!10543 lt!677198 (tuple2!25985 newKey!123 newValue!123)))))

(declare-fun b!1584546 () Bool)

(declare-fun e!884583 () List!37107)

(assert (=> b!1584546 (= e!884583 call!72567)))

(declare-fun b!1584547 () Bool)

(assert (=> b!1584547 (= e!884582 call!72568)))

(declare-fun b!1584548 () Bool)

(declare-fun e!884586 () List!37107)

(declare-fun c!146834 () Bool)

(declare-fun c!146835 () Bool)

(assert (=> b!1584548 (= e!884586 (ite c!146835 (t!52028 (t!52028 l!1251)) (ite c!146834 (Cons!37103 (h!38647 (t!52028 l!1251)) (t!52028 (t!52028 l!1251))) Nil!37104)))))

(declare-fun b!1584549 () Bool)

(assert (=> b!1584549 (= c!146834 (and (is-Cons!37103 (t!52028 l!1251)) (bvsgt (_1!13002 (h!38647 (t!52028 l!1251))) newKey!123)))))

(assert (=> b!1584549 (= e!884584 e!884582)))

(declare-fun b!1584550 () Bool)

(declare-fun res!1082360 () Bool)

(assert (=> b!1584550 (=> (not res!1082360) (not e!884585))))

(assert (=> b!1584550 (= res!1082360 (containsKey!1003 lt!677198 newKey!123))))

(declare-fun d!167411 () Bool)

(assert (=> d!167411 e!884585))

(declare-fun res!1082361 () Bool)

(assert (=> d!167411 (=> (not res!1082361) (not e!884585))))

(assert (=> d!167411 (= res!1082361 (isStrictlySorted!1169 lt!677198))))

(assert (=> d!167411 (= lt!677198 e!884583)))

(declare-fun c!146833 () Bool)

(assert (=> d!167411 (= c!146833 (and (is-Cons!37103 (t!52028 l!1251)) (bvslt (_1!13002 (h!38647 (t!52028 l!1251))) newKey!123)))))

(assert (=> d!167411 (isStrictlySorted!1169 (t!52028 l!1251))))

(assert (=> d!167411 (= (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123) lt!677198)))

(declare-fun b!1584545 () Bool)

(assert (=> b!1584545 (= e!884586 (insertStrictlySorted!627 (t!52028 (t!52028 l!1251)) newKey!123 newValue!123))))

(declare-fun b!1584551 () Bool)

(assert (=> b!1584551 (= e!884583 e!884584)))

(assert (=> b!1584551 (= c!146835 (and (is-Cons!37103 (t!52028 l!1251)) (= (_1!13002 (h!38647 (t!52028 l!1251))) newKey!123)))))

(declare-fun bm!72566 () Bool)

(assert (=> bm!72566 (= call!72567 ($colon$colon!1023 e!884586 (ite c!146833 (h!38647 (t!52028 l!1251)) (tuple2!25985 newKey!123 newValue!123))))))

(declare-fun c!146836 () Bool)

(assert (=> bm!72566 (= c!146836 c!146833)))

(assert (= (and d!167411 c!146833) b!1584546))

(assert (= (and d!167411 (not c!146833)) b!1584551))

(assert (= (and b!1584551 c!146835) b!1584542))

(assert (= (and b!1584551 (not c!146835)) b!1584549))

(assert (= (and b!1584549 c!146834) b!1584543))

(assert (= (and b!1584549 (not c!146834)) b!1584547))

(assert (= (or b!1584543 b!1584547) bm!72564))

(assert (= (or b!1584542 bm!72564) bm!72565))

(assert (= (or b!1584546 bm!72565) bm!72566))

(assert (= (and bm!72566 c!146836) b!1584545))

(assert (= (and bm!72566 (not c!146836)) b!1584548))

(assert (= (and d!167411 res!1082361) b!1584550))

(assert (= (and b!1584550 res!1082360) b!1584544))

(declare-fun m!1453753 () Bool)

(assert (=> b!1584545 m!1453753))

(declare-fun m!1453757 () Bool)

(assert (=> b!1584550 m!1453757))

(declare-fun m!1453763 () Bool)

(assert (=> bm!72566 m!1453763))

(declare-fun m!1453765 () Bool)

(assert (=> d!167411 m!1453765))

(assert (=> d!167411 m!1453713))

(declare-fun m!1453769 () Bool)

(assert (=> b!1584544 m!1453769))

(assert (=> b!1584423 d!167411))

(declare-fun d!167415 () Bool)

(assert (=> d!167415 (not (containsKey!1003 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-fun lt!677206 () Unit!52239)

(declare-fun choose!2114 (List!37107 (_ BitVec 64) B!2928 (_ BitVec 64)) Unit!52239)

(assert (=> d!167415 (= lt!677206 (choose!2114 (t!52028 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun e!884604 () Bool)

(assert (=> d!167415 e!884604))

(declare-fun res!1082380 () Bool)

(assert (=> d!167415 (=> (not res!1082380) (not e!884604))))

(assert (=> d!167415 (= res!1082380 (isStrictlySorted!1169 (t!52028 l!1251)))))

(assert (=> d!167415 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!12 (t!52028 l!1251) newKey!123 newValue!123 otherKey!56) lt!677206)))

(declare-fun b!1584586 () Bool)

(declare-fun res!1082381 () Bool)

(assert (=> b!1584586 (=> (not res!1082381) (not e!884604))))

(assert (=> b!1584586 (= res!1082381 (not (containsKey!1003 (t!52028 l!1251) otherKey!56)))))

(declare-fun b!1584587 () Bool)

(assert (=> b!1584587 (= e!884604 (not (= otherKey!56 newKey!123)))))

(assert (= (and d!167415 res!1082380) b!1584586))

(assert (= (and b!1584586 res!1082381) b!1584587))

(assert (=> d!167415 m!1453717))

(assert (=> d!167415 m!1453717))

(assert (=> d!167415 m!1453723))

(declare-fun m!1453791 () Bool)

(assert (=> d!167415 m!1453791))

(assert (=> d!167415 m!1453713))

(assert (=> b!1584586 m!1453711))

(assert (=> b!1584423 d!167415))

(declare-fun d!167423 () Bool)

(declare-fun res!1082396 () Bool)

(declare-fun e!884617 () Bool)

(assert (=> d!167423 (=> res!1082396 e!884617)))

(assert (=> d!167423 (= res!1082396 (and (is-Cons!37103 (insertStrictlySorted!627 l!1251 newKey!123 newValue!123)) (= (_1!13002 (h!38647 (insertStrictlySorted!627 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167423 (= (containsKey!1003 (insertStrictlySorted!627 l!1251 newKey!123 newValue!123) otherKey!56) e!884617)))

(declare-fun b!1584602 () Bool)

(declare-fun e!884618 () Bool)

(assert (=> b!1584602 (= e!884617 e!884618)))

(declare-fun res!1082397 () Bool)

(assert (=> b!1584602 (=> (not res!1082397) (not e!884618))))

(assert (=> b!1584602 (= res!1082397 (and (or (not (is-Cons!37103 (insertStrictlySorted!627 l!1251 newKey!123 newValue!123))) (bvsle (_1!13002 (h!38647 (insertStrictlySorted!627 l!1251 newKey!123 newValue!123))) otherKey!56)) (is-Cons!37103 (insertStrictlySorted!627 l!1251 newKey!123 newValue!123)) (bvslt (_1!13002 (h!38647 (insertStrictlySorted!627 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1584603 () Bool)

(assert (=> b!1584603 (= e!884618 (containsKey!1003 (t!52028 (insertStrictlySorted!627 l!1251 newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167423 (not res!1082396)) b!1584602))

(assert (= (and b!1584602 res!1082397) b!1584603))

(declare-fun m!1453795 () Bool)

(assert (=> b!1584603 m!1453795))

(assert (=> b!1584423 d!167423))

(declare-fun d!167427 () Bool)

(declare-fun res!1082400 () Bool)

(declare-fun e!884621 () Bool)

(assert (=> d!167427 (=> res!1082400 e!884621)))

(assert (=> d!167427 (= res!1082400 (and (is-Cons!37103 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123)) (= (_1!13002 (h!38647 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167427 (= (containsKey!1003 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123) otherKey!56) e!884621)))

(declare-fun b!1584606 () Bool)

(declare-fun e!884622 () Bool)

(assert (=> b!1584606 (= e!884621 e!884622)))

(declare-fun res!1082401 () Bool)

(assert (=> b!1584606 (=> (not res!1082401) (not e!884622))))

(assert (=> b!1584606 (= res!1082401 (and (or (not (is-Cons!37103 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123))) (bvsle (_1!13002 (h!38647 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123))) otherKey!56)) (is-Cons!37103 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123)) (bvslt (_1!13002 (h!38647 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1584607 () Bool)

(assert (=> b!1584607 (= e!884622 (containsKey!1003 (t!52028 (insertStrictlySorted!627 (t!52028 l!1251) newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167427 (not res!1082400)) b!1584606))

(assert (= (and b!1584606 res!1082401) b!1584607))

(declare-fun m!1453799 () Bool)

(assert (=> b!1584607 m!1453799))

(assert (=> b!1584423 d!167427))

(declare-fun d!167431 () Bool)

(declare-fun res!1082404 () Bool)

(declare-fun e!884625 () Bool)

(assert (=> d!167431 (=> res!1082404 e!884625)))

(assert (=> d!167431 (= res!1082404 (and (is-Cons!37103 (t!52028 l!1251)) (= (_1!13002 (h!38647 (t!52028 l!1251))) otherKey!56)))))

(assert (=> d!167431 (= (containsKey!1003 (t!52028 l!1251) otherKey!56) e!884625)))

(declare-fun b!1584610 () Bool)

(declare-fun e!884626 () Bool)

(assert (=> b!1584610 (= e!884625 e!884626)))

(declare-fun res!1082405 () Bool)

(assert (=> b!1584610 (=> (not res!1082405) (not e!884626))))

(assert (=> b!1584610 (= res!1082405 (and (or (not (is-Cons!37103 (t!52028 l!1251))) (bvsle (_1!13002 (h!38647 (t!52028 l!1251))) otherKey!56)) (is-Cons!37103 (t!52028 l!1251)) (bvslt (_1!13002 (h!38647 (t!52028 l!1251))) otherKey!56)))))

(declare-fun b!1584611 () Bool)

(assert (=> b!1584611 (= e!884626 (containsKey!1003 (t!52028 (t!52028 l!1251)) otherKey!56))))

(assert (= (and d!167431 (not res!1082404)) b!1584610))

(assert (= (and b!1584610 res!1082405) b!1584611))

(declare-fun m!1453803 () Bool)

(assert (=> b!1584611 m!1453803))

(assert (=> b!1584422 d!167431))

(declare-fun d!167435 () Bool)

(declare-fun res!1082410 () Bool)

(declare-fun e!884630 () Bool)

(assert (=> d!167435 (=> res!1082410 e!884630)))

(assert (=> d!167435 (= res!1082410 (and (is-Cons!37103 l!1251) (= (_1!13002 (h!38647 l!1251)) otherKey!56)))))

(assert (=> d!167435 (= (containsKey!1003 l!1251 otherKey!56) e!884630)))

(declare-fun b!1584616 () Bool)

(declare-fun e!884631 () Bool)

(assert (=> b!1584616 (= e!884630 e!884631)))

(declare-fun res!1082411 () Bool)

(assert (=> b!1584616 (=> (not res!1082411) (not e!884631))))

(assert (=> b!1584616 (= res!1082411 (and (or (not (is-Cons!37103 l!1251)) (bvsle (_1!13002 (h!38647 l!1251)) otherKey!56)) (is-Cons!37103 l!1251) (bvslt (_1!13002 (h!38647 l!1251)) otherKey!56)))))

(declare-fun b!1584617 () Bool)

(assert (=> b!1584617 (= e!884631 (containsKey!1003 (t!52028 l!1251) otherKey!56))))

(assert (= (and d!167435 (not res!1082410)) b!1584616))

(assert (= (and b!1584616 res!1082411) b!1584617))

(assert (=> b!1584617 m!1453711))

(assert (=> b!1584421 d!167435))

(declare-fun d!167437 () Bool)

(declare-fun res!1082412 () Bool)

(declare-fun e!884634 () Bool)

(assert (=> d!167437 (=> res!1082412 e!884634)))

(assert (=> d!167437 (= res!1082412 (or (is-Nil!37104 l!1251) (is-Nil!37104 (t!52028 l!1251))))))

(assert (=> d!167437 (= (isStrictlySorted!1169 l!1251) e!884634)))

(declare-fun b!1584622 () Bool)

(declare-fun e!884635 () Bool)

(assert (=> b!1584622 (= e!884634 e!884635)))

(declare-fun res!1082413 () Bool)

(assert (=> b!1584622 (=> (not res!1082413) (not e!884635))))

(assert (=> b!1584622 (= res!1082413 (bvslt (_1!13002 (h!38647 l!1251)) (_1!13002 (h!38647 (t!52028 l!1251)))))))

(declare-fun b!1584623 () Bool)

(assert (=> b!1584623 (= e!884635 (isStrictlySorted!1169 (t!52028 l!1251)))))

(assert (= (and d!167437 (not res!1082412)) b!1584622))

(assert (= (and b!1584622 res!1082413) b!1584623))

(assert (=> b!1584623 m!1453713))

(assert (=> start!138128 d!167437))

(declare-fun b!1584633 () Bool)

(declare-fun e!884643 () Bool)

(declare-fun tp!115135 () Bool)

(assert (=> b!1584633 (= e!884643 (and tp_is_empty!39461 tp!115135))))

(assert (=> b!1584420 (= tp!115129 e!884643)))

(assert (= (and b!1584420 (is-Cons!37103 (t!52028 l!1251))) b!1584633))

(push 1)

(assert (not b!1584521))

(assert (not bm!72566))

(assert tp_is_empty!39461)

(assert (not b!1584603))

(assert (not b!1584544))

(assert (not b!1584526))

(assert (not b!1584623))

(assert (not d!167397))

(assert (not b!1584617))

(assert (not b!1584550))

(assert (not b!1584607))

(assert (not b!1584437))

(assert (not d!167415))

(assert (not d!167411))

(assert (not b!1584633))

(assert (not b!1584611))

(assert (not b!1584586))

(assert (not b!1584520))

(assert (not b!1584545))

(assert (not bm!72558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

