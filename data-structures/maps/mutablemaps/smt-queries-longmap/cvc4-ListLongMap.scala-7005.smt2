; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88994 () Bool)

(assert start!88994)

(declare-fun b!1020480 () Bool)

(declare-fun e!574464 () Bool)

(declare-fun e!574465 () Bool)

(assert (=> b!1020480 (= e!574464 e!574465)))

(declare-fun res!684090 () Bool)

(assert (=> b!1020480 (=> (not res!684090) (not e!574465))))

(declare-datatypes ((B!1740 0))(
  ( (B!1741 (val!11954 Int)) )
))
(declare-datatypes ((tuple2!15544 0))(
  ( (tuple2!15545 (_1!7782 (_ BitVec 64)) (_2!7782 B!1740)) )
))
(declare-datatypes ((List!21756 0))(
  ( (Nil!21753) (Cons!21752 (h!22950 tuple2!15544) (t!30773 List!21756)) )
))
(declare-fun l!1367 () List!21756)

(declare-fun lt!449857 () tuple2!15544)

(declare-fun contains!5947 (List!21756 tuple2!15544) Bool)

(assert (=> b!1020480 (= res!684090 (contains!5947 l!1367 lt!449857))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1740)

(assert (=> b!1020480 (= lt!449857 (tuple2!15545 key!393 value!188))))

(declare-fun b!1020481 () Bool)

(declare-fun ListPrimitiveSize!144 (List!21756) Int)

(assert (=> b!1020481 (= e!574465 (>= (ListPrimitiveSize!144 (t!30773 l!1367)) (ListPrimitiveSize!144 l!1367)))))

(declare-fun res!684089 () Bool)

(assert (=> start!88994 (=> (not res!684089) (not e!574464))))

(declare-fun isStrictlySorted!703 (List!21756) Bool)

(assert (=> start!88994 (= res!684089 (isStrictlySorted!703 l!1367))))

(assert (=> start!88994 e!574464))

(declare-fun e!574463 () Bool)

(assert (=> start!88994 e!574463))

(assert (=> start!88994 true))

(declare-fun tp_is_empty!23807 () Bool)

(assert (=> start!88994 tp_is_empty!23807))

(declare-fun b!1020482 () Bool)

(declare-fun res!684092 () Bool)

(assert (=> b!1020482 (=> (not res!684092) (not e!574465))))

(assert (=> b!1020482 (= res!684092 (contains!5947 (t!30773 l!1367) lt!449857))))

(declare-fun b!1020483 () Bool)

(declare-fun res!684093 () Bool)

(assert (=> b!1020483 (=> (not res!684093) (not e!574465))))

(assert (=> b!1020483 (= res!684093 (and (is-Cons!21752 l!1367) (not (= (h!22950 l!1367) lt!449857))))))

(declare-fun b!1020484 () Bool)

(declare-fun res!684091 () Bool)

(assert (=> b!1020484 (=> (not res!684091) (not e!574465))))

(assert (=> b!1020484 (= res!684091 (isStrictlySorted!703 (t!30773 l!1367)))))

(declare-fun b!1020485 () Bool)

(declare-fun tp!71279 () Bool)

(assert (=> b!1020485 (= e!574463 (and tp_is_empty!23807 tp!71279))))

(assert (= (and start!88994 res!684089) b!1020480))

(assert (= (and b!1020480 res!684090) b!1020483))

(assert (= (and b!1020483 res!684093) b!1020484))

(assert (= (and b!1020484 res!684091) b!1020482))

(assert (= (and b!1020482 res!684092) b!1020481))

(assert (= (and start!88994 (is-Cons!21752 l!1367)) b!1020485))

(declare-fun m!940519 () Bool)

(assert (=> b!1020482 m!940519))

(declare-fun m!940521 () Bool)

(assert (=> start!88994 m!940521))

(declare-fun m!940523 () Bool)

(assert (=> b!1020481 m!940523))

(declare-fun m!940525 () Bool)

(assert (=> b!1020481 m!940525))

(declare-fun m!940527 () Bool)

(assert (=> b!1020484 m!940527))

(declare-fun m!940529 () Bool)

(assert (=> b!1020480 m!940529))

(push 1)

(assert (not b!1020482))

(assert (not b!1020480))

(assert (not b!1020485))

(assert (not start!88994))

(assert tp_is_empty!23807)

(assert (not b!1020484))

(assert (not b!1020481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122333 () Bool)

(declare-fun lt!449867 () Int)

(assert (=> d!122333 (>= lt!449867 0)))

(declare-fun e!574478 () Int)

(assert (=> d!122333 (= lt!449867 e!574478)))

(declare-fun c!103453 () Bool)

(assert (=> d!122333 (= c!103453 (is-Nil!21753 (t!30773 l!1367)))))

(assert (=> d!122333 (= (ListPrimitiveSize!144 (t!30773 l!1367)) lt!449867)))

(declare-fun b!1020504 () Bool)

(assert (=> b!1020504 (= e!574478 0)))

(declare-fun b!1020505 () Bool)

(assert (=> b!1020505 (= e!574478 (+ 1 (ListPrimitiveSize!144 (t!30773 (t!30773 l!1367)))))))

(assert (= (and d!122333 c!103453) b!1020504))

(assert (= (and d!122333 (not c!103453)) b!1020505))

(declare-fun m!940537 () Bool)

(assert (=> b!1020505 m!940537))

(assert (=> b!1020481 d!122333))

(declare-fun d!122341 () Bool)

(declare-fun lt!449868 () Int)

(assert (=> d!122341 (>= lt!449868 0)))

(declare-fun e!574479 () Int)

(assert (=> d!122341 (= lt!449868 e!574479)))

(declare-fun c!103454 () Bool)

(assert (=> d!122341 (= c!103454 (is-Nil!21753 l!1367))))

(assert (=> d!122341 (= (ListPrimitiveSize!144 l!1367) lt!449868)))

(declare-fun b!1020506 () Bool)

(assert (=> b!1020506 (= e!574479 0)))

(declare-fun b!1020507 () Bool)

(assert (=> b!1020507 (= e!574479 (+ 1 (ListPrimitiveSize!144 (t!30773 l!1367))))))

(assert (= (and d!122341 c!103454) b!1020506))

(assert (= (and d!122341 (not c!103454)) b!1020507))

(assert (=> b!1020507 m!940523))

(assert (=> b!1020481 d!122341))

(declare-fun d!122343 () Bool)

(declare-fun res!684116 () Bool)

(declare-fun e!574498 () Bool)

(assert (=> d!122343 (=> res!684116 e!574498)))

(assert (=> d!122343 (= res!684116 (or (is-Nil!21753 l!1367) (is-Nil!21753 (t!30773 l!1367))))))

(assert (=> d!122343 (= (isStrictlySorted!703 l!1367) e!574498)))

(declare-fun b!1020528 () Bool)

(declare-fun e!574499 () Bool)

(assert (=> b!1020528 (= e!574498 e!574499)))

(declare-fun res!684117 () Bool)

(assert (=> b!1020528 (=> (not res!684117) (not e!574499))))

(assert (=> b!1020528 (= res!684117 (bvslt (_1!7782 (h!22950 l!1367)) (_1!7782 (h!22950 (t!30773 l!1367)))))))

(declare-fun b!1020529 () Bool)

(assert (=> b!1020529 (= e!574499 (isStrictlySorted!703 (t!30773 l!1367)))))

(assert (= (and d!122343 (not res!684116)) b!1020528))

(assert (= (and b!1020528 res!684117) b!1020529))

(assert (=> b!1020529 m!940527))

(assert (=> start!88994 d!122343))

(declare-fun d!122349 () Bool)

(declare-fun lt!449880 () Bool)

(declare-fun content!505 (List!21756) (Set tuple2!15544))

(assert (=> d!122349 (= lt!449880 (member lt!449857 (content!505 (t!30773 l!1367))))))

(declare-fun e!574526 () Bool)

(assert (=> d!122349 (= lt!449880 e!574526)))

(declare-fun res!684137 () Bool)

(assert (=> d!122349 (=> (not res!684137) (not e!574526))))

(assert (=> d!122349 (= res!684137 (is-Cons!21752 (t!30773 l!1367)))))

(assert (=> d!122349 (= (contains!5947 (t!30773 l!1367) lt!449857) lt!449880)))

(declare-fun b!1020561 () Bool)

(declare-fun e!574525 () Bool)

(assert (=> b!1020561 (= e!574526 e!574525)))

(declare-fun res!684136 () Bool)

(assert (=> b!1020561 (=> res!684136 e!574525)))

(assert (=> b!1020561 (= res!684136 (= (h!22950 (t!30773 l!1367)) lt!449857))))

(declare-fun b!1020562 () Bool)

(assert (=> b!1020562 (= e!574525 (contains!5947 (t!30773 (t!30773 l!1367)) lt!449857))))

(assert (= (and d!122349 res!684137) b!1020561))

(assert (= (and b!1020561 (not res!684136)) b!1020562))

(declare-fun m!940561 () Bool)

(assert (=> d!122349 m!940561))

(declare-fun m!940563 () Bool)

(assert (=> d!122349 m!940563))

(declare-fun m!940565 () Bool)

(assert (=> b!1020562 m!940565))

(assert (=> b!1020482 d!122349))

(declare-fun d!122361 () Bool)

(declare-fun res!684138 () Bool)

(declare-fun e!574528 () Bool)

(assert (=> d!122361 (=> res!684138 e!574528)))

(assert (=> d!122361 (= res!684138 (or (is-Nil!21753 (t!30773 l!1367)) (is-Nil!21753 (t!30773 (t!30773 l!1367)))))))

(assert (=> d!122361 (= (isStrictlySorted!703 (t!30773 l!1367)) e!574528)))

(declare-fun b!1020564 () Bool)

(declare-fun e!574529 () Bool)

(assert (=> b!1020564 (= e!574528 e!574529)))

(declare-fun res!684139 () Bool)

(assert (=> b!1020564 (=> (not res!684139) (not e!574529))))

(assert (=> b!1020564 (= res!684139 (bvslt (_1!7782 (h!22950 (t!30773 l!1367))) (_1!7782 (h!22950 (t!30773 (t!30773 l!1367))))))))

(declare-fun b!1020565 () Bool)

(assert (=> b!1020565 (= e!574529 (isStrictlySorted!703 (t!30773 (t!30773 l!1367))))))

(assert (= (and d!122361 (not res!684138)) b!1020564))

(assert (= (and b!1020564 res!684139) b!1020565))

(declare-fun m!940567 () Bool)

(assert (=> b!1020565 m!940567))

(assert (=> b!1020484 d!122361))

