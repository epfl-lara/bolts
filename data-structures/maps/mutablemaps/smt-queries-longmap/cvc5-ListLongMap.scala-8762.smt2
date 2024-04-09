; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106432 () Bool)

(assert start!106432)

(declare-fun b!1265240 () Bool)

(declare-fun e!720558 () Bool)

(declare-fun tp_is_empty!32497 () Bool)

(declare-fun tp!96321 () Bool)

(assert (=> b!1265240 (= e!720558 (and tp_is_empty!32497 tp!96321))))

(declare-fun b!1265238 () Bool)

(declare-fun res!842531 () Bool)

(declare-fun e!720559 () Bool)

(assert (=> b!1265238 (=> (not res!842531) (not e!720559))))

(declare-datatypes ((B!1964 0))(
  ( (B!1965 (val!16317 Int)) )
))
(declare-datatypes ((tuple2!21302 0))(
  ( (tuple2!21303 (_1!10661 (_ BitVec 64)) (_2!10661 B!1964)) )
))
(declare-datatypes ((List!28484 0))(
  ( (Nil!28481) (Cons!28480 (h!29689 tuple2!21302) (t!42012 List!28484)) )
))
(declare-fun l!706 () List!28484)

(assert (=> b!1265238 (= res!842531 (not (is-Cons!28480 l!706)))))

(declare-fun res!842533 () Bool)

(assert (=> start!106432 (=> (not res!842533) (not e!720559))))

(declare-fun isStrictlySorted!780 (List!28484) Bool)

(assert (=> start!106432 (= res!842533 (isStrictlySorted!780 l!706))))

(assert (=> start!106432 e!720559))

(assert (=> start!106432 e!720558))

(assert (=> start!106432 true))

(assert (=> start!106432 tp_is_empty!32497))

(declare-fun v1!26 () B!1964)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun b!1265239 () Bool)

(declare-fun insertStrictlySorted!462 (List!28484 (_ BitVec 64) B!1964) List!28484)

(assert (=> b!1265239 (= e!720559 (not (isStrictlySorted!780 (insertStrictlySorted!462 l!706 key1!31 v1!26))))))

(declare-fun b!1265237 () Bool)

(declare-fun res!842532 () Bool)

(assert (=> b!1265237 (=> (not res!842532) (not e!720559))))

(declare-fun containsKey!641 (List!28484 (_ BitVec 64)) Bool)

(assert (=> b!1265237 (= res!842532 (not (containsKey!641 l!706 key1!31)))))

(assert (= (and start!106432 res!842533) b!1265237))

(assert (= (and b!1265237 res!842532) b!1265238))

(assert (= (and b!1265238 res!842531) b!1265239))

(assert (= (and start!106432 (is-Cons!28480 l!706)) b!1265240))

(declare-fun m!1165521 () Bool)

(assert (=> start!106432 m!1165521))

(declare-fun m!1165523 () Bool)

(assert (=> b!1265239 m!1165523))

(assert (=> b!1265239 m!1165523))

(declare-fun m!1165525 () Bool)

(assert (=> b!1265239 m!1165525))

(declare-fun m!1165527 () Bool)

(assert (=> b!1265237 m!1165527))

(push 1)

(assert tp_is_empty!32497)

(assert (not b!1265240))

(assert (not b!1265237))

(assert (not b!1265239))

(assert (not start!106432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138823 () Bool)

(declare-fun res!842568 () Bool)

(declare-fun e!720588 () Bool)

(assert (=> d!138823 (=> res!842568 e!720588)))

(assert (=> d!138823 (= res!842568 (and (is-Cons!28480 l!706) (= (_1!10661 (h!29689 l!706)) key1!31)))))

(assert (=> d!138823 (= (containsKey!641 l!706 key1!31) e!720588)))

(declare-fun b!1265281 () Bool)

(declare-fun e!720589 () Bool)

(assert (=> b!1265281 (= e!720588 e!720589)))

(declare-fun res!842569 () Bool)

(assert (=> b!1265281 (=> (not res!842569) (not e!720589))))

(assert (=> b!1265281 (= res!842569 (and (or (not (is-Cons!28480 l!706)) (bvsle (_1!10661 (h!29689 l!706)) key1!31)) (is-Cons!28480 l!706) (bvslt (_1!10661 (h!29689 l!706)) key1!31)))))

(declare-fun b!1265282 () Bool)

(assert (=> b!1265282 (= e!720589 (containsKey!641 (t!42012 l!706) key1!31))))

(assert (= (and d!138823 (not res!842568)) b!1265281))

(assert (= (and b!1265281 res!842569) b!1265282))

(declare-fun m!1165549 () Bool)

(assert (=> b!1265282 m!1165549))

(assert (=> b!1265237 d!138823))

(declare-fun d!138829 () Bool)

(declare-fun res!842582 () Bool)

(declare-fun e!720602 () Bool)

(assert (=> d!138829 (=> res!842582 e!720602)))

(assert (=> d!138829 (= res!842582 (or (is-Nil!28481 (insertStrictlySorted!462 l!706 key1!31 v1!26)) (is-Nil!28481 (t!42012 (insertStrictlySorted!462 l!706 key1!31 v1!26)))))))

(assert (=> d!138829 (= (isStrictlySorted!780 (insertStrictlySorted!462 l!706 key1!31 v1!26)) e!720602)))

(declare-fun b!1265295 () Bool)

(declare-fun e!720603 () Bool)

(assert (=> b!1265295 (= e!720602 e!720603)))

(declare-fun res!842583 () Bool)

(assert (=> b!1265295 (=> (not res!842583) (not e!720603))))

(assert (=> b!1265295 (= res!842583 (bvslt (_1!10661 (h!29689 (insertStrictlySorted!462 l!706 key1!31 v1!26))) (_1!10661 (h!29689 (t!42012 (insertStrictlySorted!462 l!706 key1!31 v1!26))))))))

(declare-fun b!1265296 () Bool)

(assert (=> b!1265296 (= e!720603 (isStrictlySorted!780 (t!42012 (insertStrictlySorted!462 l!706 key1!31 v1!26))))))

(assert (= (and d!138829 (not res!842582)) b!1265295))

(assert (= (and b!1265295 res!842583) b!1265296))

(declare-fun m!1165555 () Bool)

(assert (=> b!1265296 m!1165555))

(assert (=> b!1265239 d!138829))

(declare-fun c!123261 () Bool)

(declare-fun e!720649 () List!28484)

(declare-fun c!123260 () Bool)

(declare-fun b!1265381 () Bool)

(assert (=> b!1265381 (= e!720649 (ite c!123261 (t!42012 l!706) (ite c!123260 (Cons!28480 (h!29689 l!706) (t!42012 l!706)) Nil!28481)))))

(declare-fun b!1265382 () Bool)

(declare-fun e!720648 () List!28484)

(declare-fun e!720650 () List!28484)

(assert (=> b!1265382 (= e!720648 e!720650)))

(assert (=> b!1265382 (= c!123261 (and (is-Cons!28480 l!706) (= (_1!10661 (h!29689 l!706)) key1!31)))))

(declare-fun c!123262 () Bool)

(declare-fun bm!62413 () Bool)

(declare-fun call!62416 () List!28484)

(declare-fun $colon$colon!640 (List!28484 tuple2!21302) List!28484)

(assert (=> bm!62413 (= call!62416 ($colon$colon!640 e!720649 (ite c!123262 (h!29689 l!706) (tuple2!21303 key1!31 v1!26))))))

(declare-fun c!123259 () Bool)

(assert (=> bm!62413 (= c!123259 c!123262)))

(declare-fun b!1265383 () Bool)

(declare-fun e!720651 () List!28484)

(declare-fun call!62417 () List!28484)

(assert (=> b!1265383 (= e!720651 call!62417)))

(declare-fun b!1265384 () Bool)

(assert (=> b!1265384 (= e!720648 call!62416)))

(declare-fun b!1265385 () Bool)

(declare-fun res!842604 () Bool)

(declare-fun e!720652 () Bool)

(assert (=> b!1265385 (=> (not res!842604) (not e!720652))))

(declare-fun lt!573986 () List!28484)

(assert (=> b!1265385 (= res!842604 (containsKey!641 lt!573986 key1!31))))

(declare-fun b!1265386 () Bool)

(declare-fun contains!7654 (List!28484 tuple2!21302) Bool)

(assert (=> b!1265386 (= e!720652 (contains!7654 lt!573986 (tuple2!21303 key1!31 v1!26)))))

(declare-fun bm!62415 () Bool)

(declare-fun call!62418 () List!28484)

(assert (=> bm!62415 (= call!62417 call!62418)))

(declare-fun b!1265387 () Bool)

(assert (=> b!1265387 (= c!123260 (and (is-Cons!28480 l!706) (bvsgt (_1!10661 (h!29689 l!706)) key1!31)))))

(assert (=> b!1265387 (= e!720650 e!720651)))

(declare-fun bm!62414 () Bool)

(assert (=> bm!62414 (= call!62418 call!62416)))

(declare-fun d!138835 () Bool)

(assert (=> d!138835 e!720652))

(declare-fun res!842605 () Bool)

(assert (=> d!138835 (=> (not res!842605) (not e!720652))))

(assert (=> d!138835 (= res!842605 (isStrictlySorted!780 lt!573986))))

(assert (=> d!138835 (= lt!573986 e!720648)))

(assert (=> d!138835 (= c!123262 (and (is-Cons!28480 l!706) (bvslt (_1!10661 (h!29689 l!706)) key1!31)))))

(assert (=> d!138835 (isStrictlySorted!780 l!706)))

(assert (=> d!138835 (= (insertStrictlySorted!462 l!706 key1!31 v1!26) lt!573986)))

(declare-fun b!1265388 () Bool)

(assert (=> b!1265388 (= e!720651 call!62417)))

(declare-fun b!1265389 () Bool)

(assert (=> b!1265389 (= e!720650 call!62418)))

(declare-fun b!1265390 () Bool)

(assert (=> b!1265390 (= e!720649 (insertStrictlySorted!462 (t!42012 l!706) key1!31 v1!26))))

(assert (= (and d!138835 c!123262) b!1265384))

(assert (= (and d!138835 (not c!123262)) b!1265382))

(assert (= (and b!1265382 c!123261) b!1265389))

(assert (= (and b!1265382 (not c!123261)) b!1265387))

(assert (= (and b!1265387 c!123260) b!1265383))

(assert (= (and b!1265387 (not c!123260)) b!1265388))

(assert (= (or b!1265383 b!1265388) bm!62415))

(assert (= (or b!1265389 bm!62415) bm!62414))

(assert (= (or b!1265384 bm!62414) bm!62413))

(assert (= (and bm!62413 c!123259) b!1265390))

(assert (= (and bm!62413 (not c!123259)) b!1265381))

(assert (= (and d!138835 res!842605) b!1265385))

(assert (= (and b!1265385 res!842604) b!1265386))

(declare-fun m!1165579 () Bool)

(assert (=> d!138835 m!1165579))

(assert (=> d!138835 m!1165521))

(declare-fun m!1165581 () Bool)

(assert (=> b!1265390 m!1165581))

(declare-fun m!1165583 () Bool)

(assert (=> b!1265385 m!1165583))

(declare-fun m!1165585 () Bool)

(assert (=> bm!62413 m!1165585))

(declare-fun m!1165587 () Bool)

(assert (=> b!1265386 m!1165587))

(assert (=> b!1265239 d!138835))

(declare-fun d!138841 () Bool)

(declare-fun res!842608 () Bool)

(declare-fun e!720657 () Bool)

(assert (=> d!138841 (=> res!842608 e!720657)))

(assert (=> d!138841 (= res!842608 (or (is-Nil!28481 l!706) (is-Nil!28481 (t!42012 l!706))))))

(assert (=> d!138841 (= (isStrictlySorted!780 l!706) e!720657)))

(declare-fun b!1265397 () Bool)

(declare-fun e!720658 () Bool)

(assert (=> b!1265397 (= e!720657 e!720658)))

(declare-fun res!842609 () Bool)

(assert (=> b!1265397 (=> (not res!842609) (not e!720658))))

(assert (=> b!1265397 (= res!842609 (bvslt (_1!10661 (h!29689 l!706)) (_1!10661 (h!29689 (t!42012 l!706)))))))

(declare-fun b!1265398 () Bool)

(assert (=> b!1265398 (= e!720658 (isStrictlySorted!780 (t!42012 l!706)))))

(assert (= (and d!138841 (not res!842608)) b!1265397))

(assert (= (and b!1265397 res!842609) b!1265398))

(declare-fun m!1165589 () Bool)

(assert (=> b!1265398 m!1165589))

(assert (=> start!106432 d!138841))

(declare-fun b!1265410 () Bool)

(declare-fun e!720666 () Bool)

(declare-fun tp!96335 () Bool)

(assert (=> b!1265410 (= e!720666 (and tp_is_empty!32497 tp!96335))))

(assert (=> b!1265240 (= tp!96321 e!720666)))

(assert (= (and b!1265240 (is-Cons!28480 (t!42012 l!706))) b!1265410))

(push 1)

