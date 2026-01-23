; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!416920 () Bool)

(assert start!416920)

(declare-fun res!1773753 () Bool)

(declare-fun e!2693405 () Bool)

(assert (=> start!416920 (=> (not res!1773753) (not e!2693405))))

(declare-datatypes ((K!9758 0))(
  ( (K!9759 (val!16077 Int)) )
))
(declare-datatypes ((V!10004 0))(
  ( (V!10005 (val!16078 Int)) )
))
(declare-datatypes ((tuple2!47542 0))(
  ( (tuple2!47543 (_1!27065 K!9758) (_2!27065 V!10004)) )
))
(declare-datatypes ((List!48599 0))(
  ( (Nil!48475) (Cons!48475 (h!53944 tuple2!47542) (t!355511 List!48599)) )
))
(declare-fun l!13867 () List!48599)

(declare-fun noDuplicateKeys!288 (List!48599) Bool)

(assert (=> start!416920 (= res!1773753 (noDuplicateKeys!288 l!13867))))

(assert (=> start!416920 e!2693405))

(declare-fun e!2693404 () Bool)

(assert (=> start!416920 e!2693404))

(declare-fun tp_is_empty!24341 () Bool)

(assert (=> start!416920 tp_is_empty!24341))

(declare-fun b!4328477 () Bool)

(declare-fun res!1773752 () Bool)

(assert (=> b!4328477 (=> (not res!1773752) (not e!2693405))))

(declare-fun key!5269 () K!9758)

(assert (=> b!4328477 (= res!1773752 (and (is-Cons!48475 l!13867) (= (_1!27065 (h!53944 l!13867)) key!5269)))))

(declare-fun b!4328478 () Bool)

(declare-fun removePairForKey!300 (List!48599 K!9758) List!48599)

(assert (=> b!4328478 (= e!2693405 (not (noDuplicateKeys!288 (removePairForKey!300 l!13867 key!5269))))))

(declare-fun b!4328479 () Bool)

(declare-fun tp_is_empty!24343 () Bool)

(declare-fun tp!1328019 () Bool)

(assert (=> b!4328479 (= e!2693404 (and tp_is_empty!24341 tp_is_empty!24343 tp!1328019))))

(assert (= (and start!416920 res!1773753) b!4328477))

(assert (= (and b!4328477 res!1773752) b!4328478))

(assert (= (and start!416920 (is-Cons!48475 l!13867)) b!4328479))

(declare-fun m!4923293 () Bool)

(assert (=> start!416920 m!4923293))

(declare-fun m!4923295 () Bool)

(assert (=> b!4328478 m!4923295))

(assert (=> b!4328478 m!4923295))

(declare-fun m!4923297 () Bool)

(assert (=> b!4328478 m!4923297))

(push 1)

(assert (not b!4328479))

(assert tp_is_empty!24341)

(assert (not start!416920))

(assert (not b!4328478))

(assert tp_is_empty!24343)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272198 () Bool)

(declare-fun res!1773764 () Bool)

(declare-fun e!2693416 () Bool)

(assert (=> d!1272198 (=> res!1773764 e!2693416)))

(assert (=> d!1272198 (= res!1773764 (not (is-Cons!48475 (removePairForKey!300 l!13867 key!5269))))))

(assert (=> d!1272198 (= (noDuplicateKeys!288 (removePairForKey!300 l!13867 key!5269)) e!2693416)))

(declare-fun b!4328493 () Bool)

(declare-fun e!2693417 () Bool)

(assert (=> b!4328493 (= e!2693416 e!2693417)))

(declare-fun res!1773765 () Bool)

(assert (=> b!4328493 (=> (not res!1773765) (not e!2693417))))

(declare-fun containsKey!438 (List!48599 K!9758) Bool)

(assert (=> b!4328493 (= res!1773765 (not (containsKey!438 (t!355511 (removePairForKey!300 l!13867 key!5269)) (_1!27065 (h!53944 (removePairForKey!300 l!13867 key!5269))))))))

(declare-fun b!4328494 () Bool)

(assert (=> b!4328494 (= e!2693417 (noDuplicateKeys!288 (t!355511 (removePairForKey!300 l!13867 key!5269))))))

(assert (= (and d!1272198 (not res!1773764)) b!4328493))

(assert (= (and b!4328493 res!1773765) b!4328494))

(declare-fun m!4923305 () Bool)

(assert (=> b!4328493 m!4923305))

(declare-fun m!4923307 () Bool)

(assert (=> b!4328494 m!4923307))

(assert (=> b!4328478 d!1272198))

(declare-fun b!4328507 () Bool)

(declare-fun e!2693426 () List!48599)

(assert (=> b!4328507 (= e!2693426 (t!355511 l!13867))))

(declare-fun b!4328510 () Bool)

(declare-fun e!2693427 () List!48599)

(assert (=> b!4328510 (= e!2693427 Nil!48475)))

(declare-fun b!4328509 () Bool)

(assert (=> b!4328509 (= e!2693427 (Cons!48475 (h!53944 l!13867) (removePairForKey!300 (t!355511 l!13867) key!5269)))))

(declare-fun d!1272202 () Bool)

(declare-fun lt!1545244 () List!48599)

(assert (=> d!1272202 (not (containsKey!438 lt!1545244 key!5269))))

(assert (=> d!1272202 (= lt!1545244 e!2693426)))

(declare-fun c!736544 () Bool)

(assert (=> d!1272202 (= c!736544 (and (is-Cons!48475 l!13867) (= (_1!27065 (h!53944 l!13867)) key!5269)))))

(assert (=> d!1272202 (noDuplicateKeys!288 l!13867)))

(assert (=> d!1272202 (= (removePairForKey!300 l!13867 key!5269) lt!1545244)))

(declare-fun b!4328508 () Bool)

(assert (=> b!4328508 (= e!2693426 e!2693427)))

(declare-fun c!736545 () Bool)

(assert (=> b!4328508 (= c!736545 (is-Cons!48475 l!13867))))

(assert (= (and d!1272202 c!736544) b!4328507))

(assert (= (and d!1272202 (not c!736544)) b!4328508))

(assert (= (and b!4328508 c!736545) b!4328509))

(assert (= (and b!4328508 (not c!736545)) b!4328510))

(declare-fun m!4923309 () Bool)

(assert (=> b!4328509 m!4923309))

(declare-fun m!4923311 () Bool)

(assert (=> d!1272202 m!4923311))

(assert (=> d!1272202 m!4923293))

(assert (=> b!4328478 d!1272202))

(declare-fun d!1272204 () Bool)

(declare-fun res!1773770 () Bool)

(declare-fun e!2693428 () Bool)

(assert (=> d!1272204 (=> res!1773770 e!2693428)))

(assert (=> d!1272204 (= res!1773770 (not (is-Cons!48475 l!13867)))))

(assert (=> d!1272204 (= (noDuplicateKeys!288 l!13867) e!2693428)))

(declare-fun b!4328511 () Bool)

(declare-fun e!2693429 () Bool)

(assert (=> b!4328511 (= e!2693428 e!2693429)))

(declare-fun res!1773771 () Bool)

(assert (=> b!4328511 (=> (not res!1773771) (not e!2693429))))

(assert (=> b!4328511 (= res!1773771 (not (containsKey!438 (t!355511 l!13867) (_1!27065 (h!53944 l!13867)))))))

(declare-fun b!4328512 () Bool)

(assert (=> b!4328512 (= e!2693429 (noDuplicateKeys!288 (t!355511 l!13867)))))

(assert (= (and d!1272204 (not res!1773770)) b!4328511))

(assert (= (and b!4328511 res!1773771) b!4328512))

(declare-fun m!4923313 () Bool)

(assert (=> b!4328511 m!4923313))

(declare-fun m!4923315 () Bool)

(assert (=> b!4328512 m!4923315))

(assert (=> start!416920 d!1272204))

(declare-fun b!4328519 () Bool)

(declare-fun tp!1328025 () Bool)

(declare-fun e!2693434 () Bool)

(assert (=> b!4328519 (= e!2693434 (and tp_is_empty!24341 tp_is_empty!24343 tp!1328025))))

(assert (=> b!4328479 (= tp!1328019 e!2693434)))

(assert (= (and b!4328479 (is-Cons!48475 (t!355511 l!13867))) b!4328519))

(push 1)

(assert (not b!4328511))

(assert (not b!4328512))

(assert (not b!4328509))

(assert (not d!1272202))

(assert tp_is_empty!24341)

(assert tp_is_empty!24343)

(assert (not b!4328519))

(assert (not b!4328493))

(assert (not b!4328494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

