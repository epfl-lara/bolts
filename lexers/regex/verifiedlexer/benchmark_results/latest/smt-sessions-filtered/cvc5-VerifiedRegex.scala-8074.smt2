; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!416952 () Bool)

(assert start!416952)

(declare-fun res!1773842 () Bool)

(declare-fun e!2693527 () Bool)

(assert (=> start!416952 (=> (not res!1773842) (not e!2693527))))

(declare-datatypes ((K!9773 0))(
  ( (K!9774 (val!16089 Int)) )
))
(declare-datatypes ((V!10019 0))(
  ( (V!10020 (val!16090 Int)) )
))
(declare-datatypes ((tuple2!47554 0))(
  ( (tuple2!47555 (_1!27071 K!9773) (_2!27071 V!10019)) )
))
(declare-datatypes ((List!48605 0))(
  ( (Nil!48481) (Cons!48481 (h!53950 tuple2!47554) (t!355517 List!48605)) )
))
(declare-fun l!13867 () List!48605)

(declare-fun noDuplicateKeys!294 (List!48605) Bool)

(assert (=> start!416952 (= res!1773842 (noDuplicateKeys!294 l!13867))))

(assert (=> start!416952 e!2693527))

(declare-fun e!2693526 () Bool)

(assert (=> start!416952 e!2693526))

(declare-fun tp_is_empty!24365 () Bool)

(assert (=> start!416952 tp_is_empty!24365))

(declare-fun b!4328655 () Bool)

(declare-fun res!1773843 () Bool)

(assert (=> b!4328655 (=> (not res!1773843) (not e!2693527))))

(declare-fun key!5269 () K!9773)

(assert (=> b!4328655 (= res!1773843 (and (or (not (is-Cons!48481 l!13867)) (not (= (_1!27071 (h!53950 l!13867)) key!5269))) (is-Cons!48481 l!13867)))))

(declare-fun b!4328656 () Bool)

(assert (=> b!4328656 (= e!2693527 (not (noDuplicateKeys!294 (t!355517 l!13867))))))

(declare-fun removePairForKey!302 (List!48605 K!9773) List!48605)

(assert (=> b!4328656 (noDuplicateKeys!294 (removePairForKey!302 (t!355517 l!13867) key!5269))))

(declare-datatypes ((Unit!68117 0))(
  ( (Unit!68118) )
))
(declare-fun lt!1545258 () Unit!68117)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!210 (List!48605 K!9773) Unit!68117)

(assert (=> b!4328656 (= lt!1545258 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!210 (t!355517 l!13867) key!5269))))

(declare-fun tp_is_empty!24367 () Bool)

(declare-fun b!4328657 () Bool)

(declare-fun tp!1328055 () Bool)

(assert (=> b!4328657 (= e!2693526 (and tp_is_empty!24365 tp_is_empty!24367 tp!1328055))))

(assert (= (and start!416952 res!1773842) b!4328655))

(assert (= (and b!4328655 res!1773843) b!4328656))

(assert (= (and start!416952 (is-Cons!48481 l!13867)) b!4328657))

(declare-fun m!4923381 () Bool)

(assert (=> start!416952 m!4923381))

(declare-fun m!4923383 () Bool)

(assert (=> b!4328656 m!4923383))

(declare-fun m!4923385 () Bool)

(assert (=> b!4328656 m!4923385))

(assert (=> b!4328656 m!4923385))

(declare-fun m!4923387 () Bool)

(assert (=> b!4328656 m!4923387))

(declare-fun m!4923389 () Bool)

(assert (=> b!4328656 m!4923389))

(push 1)

(assert (not b!4328656))

(assert tp_is_empty!24367)

(assert (not start!416952))

(assert tp_is_empty!24365)

(assert (not b!4328657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272237 () Bool)

(declare-fun res!1773854 () Bool)

(declare-fun e!2693538 () Bool)

(assert (=> d!1272237 (=> res!1773854 e!2693538)))

(assert (=> d!1272237 (= res!1773854 (not (is-Cons!48481 l!13867)))))

(assert (=> d!1272237 (= (noDuplicateKeys!294 l!13867) e!2693538)))

(declare-fun b!4328671 () Bool)

(declare-fun e!2693539 () Bool)

(assert (=> b!4328671 (= e!2693538 e!2693539)))

(declare-fun res!1773855 () Bool)

(assert (=> b!4328671 (=> (not res!1773855) (not e!2693539))))

(declare-fun containsKey!443 (List!48605 K!9773) Bool)

(assert (=> b!4328671 (= res!1773855 (not (containsKey!443 (t!355517 l!13867) (_1!27071 (h!53950 l!13867)))))))

(declare-fun b!4328672 () Bool)

(assert (=> b!4328672 (= e!2693539 (noDuplicateKeys!294 (t!355517 l!13867)))))

(assert (= (and d!1272237 (not res!1773854)) b!4328671))

(assert (= (and b!4328671 res!1773855) b!4328672))

(declare-fun m!4923401 () Bool)

(assert (=> b!4328671 m!4923401))

(assert (=> b!4328672 m!4923383))

(assert (=> start!416952 d!1272237))

(declare-fun d!1272239 () Bool)

(declare-fun res!1773856 () Bool)

(declare-fun e!2693540 () Bool)

(assert (=> d!1272239 (=> res!1773856 e!2693540)))

(assert (=> d!1272239 (= res!1773856 (not (is-Cons!48481 (t!355517 l!13867))))))

(assert (=> d!1272239 (= (noDuplicateKeys!294 (t!355517 l!13867)) e!2693540)))

(declare-fun b!4328673 () Bool)

(declare-fun e!2693541 () Bool)

(assert (=> b!4328673 (= e!2693540 e!2693541)))

(declare-fun res!1773857 () Bool)

(assert (=> b!4328673 (=> (not res!1773857) (not e!2693541))))

(assert (=> b!4328673 (= res!1773857 (not (containsKey!443 (t!355517 (t!355517 l!13867)) (_1!27071 (h!53950 (t!355517 l!13867))))))))

(declare-fun b!4328674 () Bool)

(assert (=> b!4328674 (= e!2693541 (noDuplicateKeys!294 (t!355517 (t!355517 l!13867))))))

(assert (= (and d!1272239 (not res!1773856)) b!4328673))

(assert (= (and b!4328673 res!1773857) b!4328674))

(declare-fun m!4923403 () Bool)

(assert (=> b!4328673 m!4923403))

(declare-fun m!4923405 () Bool)

(assert (=> b!4328674 m!4923405))

(assert (=> b!4328656 d!1272239))

(declare-fun d!1272241 () Bool)

(declare-fun res!1773858 () Bool)

(declare-fun e!2693542 () Bool)

(assert (=> d!1272241 (=> res!1773858 e!2693542)))

(assert (=> d!1272241 (= res!1773858 (not (is-Cons!48481 (removePairForKey!302 (t!355517 l!13867) key!5269))))))

(assert (=> d!1272241 (= (noDuplicateKeys!294 (removePairForKey!302 (t!355517 l!13867) key!5269)) e!2693542)))

(declare-fun b!4328675 () Bool)

(declare-fun e!2693543 () Bool)

(assert (=> b!4328675 (= e!2693542 e!2693543)))

(declare-fun res!1773859 () Bool)

(assert (=> b!4328675 (=> (not res!1773859) (not e!2693543))))

(assert (=> b!4328675 (= res!1773859 (not (containsKey!443 (t!355517 (removePairForKey!302 (t!355517 l!13867) key!5269)) (_1!27071 (h!53950 (removePairForKey!302 (t!355517 l!13867) key!5269))))))))

(declare-fun b!4328676 () Bool)

(assert (=> b!4328676 (= e!2693543 (noDuplicateKeys!294 (t!355517 (removePairForKey!302 (t!355517 l!13867) key!5269))))))

(assert (= (and d!1272241 (not res!1773858)) b!4328675))

(assert (= (and b!4328675 res!1773859) b!4328676))

(declare-fun m!4923407 () Bool)

(assert (=> b!4328675 m!4923407))

(declare-fun m!4923409 () Bool)

(assert (=> b!4328676 m!4923409))

(assert (=> b!4328656 d!1272241))

(declare-fun b!4328687 () Bool)

(declare-fun e!2693549 () List!48605)

(assert (=> b!4328687 (= e!2693549 (Cons!48481 (h!53950 (t!355517 l!13867)) (removePairForKey!302 (t!355517 (t!355517 l!13867)) key!5269)))))

(declare-fun d!1272243 () Bool)

(declare-fun lt!1545264 () List!48605)

(assert (=> d!1272243 (not (containsKey!443 lt!1545264 key!5269))))

(declare-fun e!2693548 () List!48605)

(assert (=> d!1272243 (= lt!1545264 e!2693548)))

(declare-fun c!736565 () Bool)

(assert (=> d!1272243 (= c!736565 (and (is-Cons!48481 (t!355517 l!13867)) (= (_1!27071 (h!53950 (t!355517 l!13867))) key!5269)))))

(assert (=> d!1272243 (noDuplicateKeys!294 (t!355517 l!13867))))

(assert (=> d!1272243 (= (removePairForKey!302 (t!355517 l!13867) key!5269) lt!1545264)))

(declare-fun b!4328685 () Bool)

(assert (=> b!4328685 (= e!2693548 (t!355517 (t!355517 l!13867)))))

(declare-fun b!4328688 () Bool)

(assert (=> b!4328688 (= e!2693549 Nil!48481)))

(declare-fun b!4328686 () Bool)

(assert (=> b!4328686 (= e!2693548 e!2693549)))

(declare-fun c!736564 () Bool)

(assert (=> b!4328686 (= c!736564 (is-Cons!48481 (t!355517 l!13867)))))

(assert (= (and d!1272243 c!736565) b!4328685))

(assert (= (and d!1272243 (not c!736565)) b!4328686))

(assert (= (and b!4328686 c!736564) b!4328687))

(assert (= (and b!4328686 (not c!736564)) b!4328688))

(declare-fun m!4923411 () Bool)

(assert (=> b!4328687 m!4923411))

(declare-fun m!4923413 () Bool)

(assert (=> d!1272243 m!4923413))

(assert (=> d!1272243 m!4923383))

(assert (=> b!4328656 d!1272243))

(declare-fun d!1272247 () Bool)

(assert (=> d!1272247 (noDuplicateKeys!294 (removePairForKey!302 (t!355517 l!13867) key!5269))))

(declare-fun lt!1545267 () Unit!68117)

(declare-fun choose!26470 (List!48605 K!9773) Unit!68117)

(assert (=> d!1272247 (= lt!1545267 (choose!26470 (t!355517 l!13867) key!5269))))

(assert (=> d!1272247 (noDuplicateKeys!294 (t!355517 l!13867))))

(assert (=> d!1272247 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!210 (t!355517 l!13867) key!5269) lt!1545267)))

(declare-fun bs!607592 () Bool)

(assert (= bs!607592 d!1272247))

(assert (=> bs!607592 m!4923385))

(assert (=> bs!607592 m!4923385))

(assert (=> bs!607592 m!4923387))

(declare-fun m!4923415 () Bool)

(assert (=> bs!607592 m!4923415))

(assert (=> bs!607592 m!4923383))

(assert (=> b!4328656 d!1272247))

(declare-fun tp!1328061 () Bool)

(declare-fun e!2693556 () Bool)

(declare-fun b!4328697 () Bool)

(assert (=> b!4328697 (= e!2693556 (and tp_is_empty!24365 tp_is_empty!24367 tp!1328061))))

(assert (=> b!4328657 (= tp!1328055 e!2693556)))

(assert (= (and b!4328657 (is-Cons!48481 (t!355517 l!13867))) b!4328697))

(push 1)

(assert (not b!4328676))

(assert (not b!4328671))

(assert tp_is_empty!24367)

(assert (not d!1272247))

(assert (not b!4328672))

(assert (not b!4328673))

(assert (not b!4328697))

(assert tp_is_empty!24365)

(assert (not b!4328675))

(assert (not d!1272243))

(assert (not b!4328674))

(assert (not b!4328687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

