; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417024 () Bool)

(assert start!417024)

(declare-fun res!1774004 () Bool)

(declare-fun e!2693741 () Bool)

(assert (=> start!417024 (=> (not res!1774004) (not e!2693741))))

(declare-datatypes ((K!9793 0))(
  ( (K!9794 (val!16105 Int)) )
))
(declare-datatypes ((V!10039 0))(
  ( (V!10040 (val!16106 Int)) )
))
(declare-datatypes ((tuple2!47570 0))(
  ( (tuple2!47571 (_1!27079 K!9793) (_2!27079 V!10039)) )
))
(declare-datatypes ((List!48613 0))(
  ( (Nil!48489) (Cons!48489 (h!53958 tuple2!47570) (t!355525 List!48613)) )
))
(declare-fun l!13867 () List!48613)

(declare-fun noDuplicateKeys!302 (List!48613) Bool)

(assert (=> start!417024 (= res!1774004 (noDuplicateKeys!302 l!13867))))

(assert (=> start!417024 e!2693741))

(declare-fun e!2693740 () Bool)

(assert (=> start!417024 e!2693740))

(declare-fun tp_is_empty!24397 () Bool)

(assert (=> start!417024 tp_is_empty!24397))

(declare-fun b!4328951 () Bool)

(declare-fun res!1774005 () Bool)

(assert (=> b!4328951 (=> (not res!1774005) (not e!2693741))))

(declare-fun key!5269 () K!9793)

(assert (=> b!4328951 (= res!1774005 (and (or (not (is-Cons!48489 l!13867)) (not (= (_1!27079 (h!53958 l!13867)) key!5269))) (not (is-Cons!48489 l!13867))))))

(declare-fun b!4328952 () Bool)

(declare-fun removePairForKey!310 (List!48613 K!9793) List!48613)

(assert (=> b!4328952 (= e!2693741 (not (noDuplicateKeys!302 (removePairForKey!310 l!13867 key!5269))))))

(declare-fun b!4328953 () Bool)

(declare-fun tp!1328097 () Bool)

(declare-fun tp_is_empty!24399 () Bool)

(assert (=> b!4328953 (= e!2693740 (and tp_is_empty!24397 tp_is_empty!24399 tp!1328097))))

(assert (= (and start!417024 res!1774004) b!4328951))

(assert (= (and b!4328951 res!1774005) b!4328952))

(assert (= (and start!417024 (is-Cons!48489 l!13867)) b!4328953))

(declare-fun m!4923625 () Bool)

(assert (=> start!417024 m!4923625))

(declare-fun m!4923627 () Bool)

(assert (=> b!4328952 m!4923627))

(assert (=> b!4328952 m!4923627))

(declare-fun m!4923629 () Bool)

(assert (=> b!4328952 m!4923629))

(push 1)

(assert tp_is_empty!24399)

(assert (not b!4328953))

(assert (not start!417024))

(assert (not b!4328952))

(assert tp_is_empty!24397)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272325 () Bool)

(declare-fun res!1774016 () Bool)

(declare-fun e!2693752 () Bool)

(assert (=> d!1272325 (=> res!1774016 e!2693752)))

(assert (=> d!1272325 (= res!1774016 (not (is-Cons!48489 l!13867)))))

(assert (=> d!1272325 (= (noDuplicateKeys!302 l!13867) e!2693752)))

(declare-fun b!4328967 () Bool)

(declare-fun e!2693753 () Bool)

(assert (=> b!4328967 (= e!2693752 e!2693753)))

(declare-fun res!1774017 () Bool)

(assert (=> b!4328967 (=> (not res!1774017) (not e!2693753))))

(declare-fun containsKey!449 (List!48613 K!9793) Bool)

(assert (=> b!4328967 (= res!1774017 (not (containsKey!449 (t!355525 l!13867) (_1!27079 (h!53958 l!13867)))))))

(declare-fun b!4328968 () Bool)

(assert (=> b!4328968 (= e!2693753 (noDuplicateKeys!302 (t!355525 l!13867)))))

(assert (= (and d!1272325 (not res!1774016)) b!4328967))

(assert (= (and b!4328967 res!1774017) b!4328968))

(declare-fun m!4923637 () Bool)

(assert (=> b!4328967 m!4923637))

(declare-fun m!4923639 () Bool)

(assert (=> b!4328968 m!4923639))

(assert (=> start!417024 d!1272325))

(declare-fun d!1272327 () Bool)

(declare-fun res!1774018 () Bool)

(declare-fun e!2693754 () Bool)

(assert (=> d!1272327 (=> res!1774018 e!2693754)))

(assert (=> d!1272327 (= res!1774018 (not (is-Cons!48489 (removePairForKey!310 l!13867 key!5269))))))

(assert (=> d!1272327 (= (noDuplicateKeys!302 (removePairForKey!310 l!13867 key!5269)) e!2693754)))

(declare-fun b!4328969 () Bool)

(declare-fun e!2693755 () Bool)

(assert (=> b!4328969 (= e!2693754 e!2693755)))

(declare-fun res!1774019 () Bool)

(assert (=> b!4328969 (=> (not res!1774019) (not e!2693755))))

(assert (=> b!4328969 (= res!1774019 (not (containsKey!449 (t!355525 (removePairForKey!310 l!13867 key!5269)) (_1!27079 (h!53958 (removePairForKey!310 l!13867 key!5269))))))))

(declare-fun b!4328970 () Bool)

(assert (=> b!4328970 (= e!2693755 (noDuplicateKeys!302 (t!355525 (removePairForKey!310 l!13867 key!5269))))))

(assert (= (and d!1272327 (not res!1774018)) b!4328969))

(assert (= (and b!4328969 res!1774019) b!4328970))

(declare-fun m!4923641 () Bool)

(assert (=> b!4328969 m!4923641))

(declare-fun m!4923643 () Bool)

(assert (=> b!4328970 m!4923643))

(assert (=> b!4328952 d!1272327))

(declare-fun b!4328979 () Bool)

(declare-fun e!2693760 () List!48613)

(assert (=> b!4328979 (= e!2693760 (t!355525 l!13867))))

(declare-fun d!1272329 () Bool)

(declare-fun lt!1545356 () List!48613)

(assert (=> d!1272329 (not (containsKey!449 lt!1545356 key!5269))))

(assert (=> d!1272329 (= lt!1545356 e!2693760)))

(declare-fun c!736605 () Bool)

(assert (=> d!1272329 (= c!736605 (and (is-Cons!48489 l!13867) (= (_1!27079 (h!53958 l!13867)) key!5269)))))

(assert (=> d!1272329 (noDuplicateKeys!302 l!13867)))

(assert (=> d!1272329 (= (removePairForKey!310 l!13867 key!5269) lt!1545356)))

(declare-fun b!4328982 () Bool)

(declare-fun e!2693761 () List!48613)

(assert (=> b!4328982 (= e!2693761 Nil!48489)))

(declare-fun b!4328980 () Bool)

(assert (=> b!4328980 (= e!2693760 e!2693761)))

(declare-fun c!736604 () Bool)

(assert (=> b!4328980 (= c!736604 (is-Cons!48489 l!13867))))

(declare-fun b!4328981 () Bool)

(assert (=> b!4328981 (= e!2693761 (Cons!48489 (h!53958 l!13867) (removePairForKey!310 (t!355525 l!13867) key!5269)))))

(assert (= (and d!1272329 c!736605) b!4328979))

(assert (= (and d!1272329 (not c!736605)) b!4328980))

(assert (= (and b!4328980 c!736604) b!4328981))

(assert (= (and b!4328980 (not c!736604)) b!4328982))

(declare-fun m!4923645 () Bool)

(assert (=> d!1272329 m!4923645))

(assert (=> d!1272329 m!4923625))

(declare-fun m!4923647 () Bool)

(assert (=> b!4328981 m!4923647))

(assert (=> b!4328952 d!1272329))

(declare-fun b!4328991 () Bool)

(declare-fun e!2693768 () Bool)

(declare-fun tp!1328103 () Bool)

(assert (=> b!4328991 (= e!2693768 (and tp_is_empty!24397 tp_is_empty!24399 tp!1328103))))

(assert (=> b!4328953 (= tp!1328097 e!2693768)))

(assert (= (and b!4328953 (is-Cons!48489 (t!355525 l!13867))) b!4328991))

(push 1)

(assert (not b!4328981))

(assert (not b!4328970))

(assert tp_is_empty!24399)

(assert (not d!1272329))

(assert (not b!4328968))

(assert (not b!4328969))

(assert (not b!4328991))

(assert (not b!4328967))

(assert tp_is_empty!24397)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

