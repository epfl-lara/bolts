; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416974 () Bool)

(assert start!416974)

(declare-fun b!4328770 () Bool)

(declare-fun res!1773911 () Bool)

(declare-fun e!2693605 () Bool)

(assert (=> b!4328770 (=> (not res!1773911) (not e!2693605))))

(declare-datatypes ((K!9785 0))(
  ( (K!9786 (val!16099 Int)) )
))
(declare-datatypes ((V!10031 0))(
  ( (V!10032 (val!16100 Int)) )
))
(declare-datatypes ((tuple2!47564 0))(
  ( (tuple2!47565 (_1!27076 K!9785) (_2!27076 V!10031)) )
))
(declare-datatypes ((List!48610 0))(
  ( (Nil!48486) (Cons!48486 (h!53955 tuple2!47564) (t!355522 List!48610)) )
))
(declare-fun l!13867 () List!48610)

(declare-fun key!5269 () K!9785)

(get-info :version)

(assert (=> b!4328770 (= res!1773911 (and (or (not ((_ is Cons!48486) l!13867)) (not (= (_1!27076 (h!53955 l!13867)) key!5269))) ((_ is Cons!48486) l!13867)))))

(declare-fun b!4328772 () Bool)

(declare-fun e!2693606 () Bool)

(assert (=> b!4328772 (= e!2693605 (not e!2693606))))

(declare-fun res!1773909 () Bool)

(assert (=> b!4328772 (=> res!1773909 e!2693606)))

(declare-fun noDuplicateKeys!299 (List!48610) Bool)

(assert (=> b!4328772 (= res!1773909 (not (noDuplicateKeys!299 (t!355522 l!13867))))))

(declare-fun removePairForKey!307 (List!48610 K!9785) List!48610)

(assert (=> b!4328772 (noDuplicateKeys!299 (removePairForKey!307 (t!355522 l!13867) key!5269))))

(declare-datatypes ((Unit!68127 0))(
  ( (Unit!68128) )
))
(declare-fun lt!1545285 () Unit!68127)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!215 (List!48610 K!9785) Unit!68127)

(assert (=> b!4328772 (= lt!1545285 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!215 (t!355522 l!13867) key!5269))))

(declare-fun b!4328773 () Bool)

(declare-fun containsKey!446 (List!48610 K!9785) Bool)

(assert (=> b!4328773 (= e!2693606 (not (containsKey!446 (t!355522 l!13867) (_1!27076 (h!53955 l!13867)))))))

(declare-fun b!4328774 () Bool)

(declare-fun res!1773910 () Bool)

(assert (=> b!4328774 (=> res!1773910 e!2693606)))

(assert (=> b!4328774 (= res!1773910 (= (_1!27076 (h!53955 l!13867)) key!5269))))

(declare-fun e!2693607 () Bool)

(declare-fun tp_is_empty!24387 () Bool)

(declare-fun b!4328771 () Bool)

(declare-fun tp_is_empty!24385 () Bool)

(declare-fun tp!1328076 () Bool)

(assert (=> b!4328771 (= e!2693607 (and tp_is_empty!24385 tp_is_empty!24387 tp!1328076))))

(declare-fun res!1773908 () Bool)

(assert (=> start!416974 (=> (not res!1773908) (not e!2693605))))

(assert (=> start!416974 (= res!1773908 (noDuplicateKeys!299 l!13867))))

(assert (=> start!416974 e!2693605))

(assert (=> start!416974 e!2693607))

(assert (=> start!416974 tp_is_empty!24385))

(assert (= (and start!416974 res!1773908) b!4328770))

(assert (= (and b!4328770 res!1773911) b!4328772))

(assert (= (and b!4328772 (not res!1773909)) b!4328774))

(assert (= (and b!4328774 (not res!1773910)) b!4328773))

(assert (= (and start!416974 ((_ is Cons!48486) l!13867)) b!4328771))

(declare-fun m!4923465 () Bool)

(assert (=> b!4328772 m!4923465))

(declare-fun m!4923467 () Bool)

(assert (=> b!4328772 m!4923467))

(assert (=> b!4328772 m!4923467))

(declare-fun m!4923469 () Bool)

(assert (=> b!4328772 m!4923469))

(declare-fun m!4923471 () Bool)

(assert (=> b!4328772 m!4923471))

(declare-fun m!4923473 () Bool)

(assert (=> b!4328773 m!4923473))

(declare-fun m!4923475 () Bool)

(assert (=> start!416974 m!4923475))

(check-sat (not start!416974) (not b!4328771) tp_is_empty!24387 (not b!4328773) (not b!4328772) tp_is_empty!24385)
(check-sat)
(get-model)

(declare-fun d!1272261 () Bool)

(declare-fun res!1773922 () Bool)

(declare-fun e!2693618 () Bool)

(assert (=> d!1272261 (=> res!1773922 e!2693618)))

(assert (=> d!1272261 (= res!1773922 (not ((_ is Cons!48486) l!13867)))))

(assert (=> d!1272261 (= (noDuplicateKeys!299 l!13867) e!2693618)))

(declare-fun b!4328785 () Bool)

(declare-fun e!2693619 () Bool)

(assert (=> b!4328785 (= e!2693618 e!2693619)))

(declare-fun res!1773923 () Bool)

(assert (=> b!4328785 (=> (not res!1773923) (not e!2693619))))

(assert (=> b!4328785 (= res!1773923 (not (containsKey!446 (t!355522 l!13867) (_1!27076 (h!53955 l!13867)))))))

(declare-fun b!4328786 () Bool)

(assert (=> b!4328786 (= e!2693619 (noDuplicateKeys!299 (t!355522 l!13867)))))

(assert (= (and d!1272261 (not res!1773922)) b!4328785))

(assert (= (and b!4328785 res!1773923) b!4328786))

(assert (=> b!4328785 m!4923473))

(assert (=> b!4328786 m!4923465))

(assert (=> start!416974 d!1272261))

(declare-fun d!1272265 () Bool)

(declare-fun res!1773926 () Bool)

(declare-fun e!2693622 () Bool)

(assert (=> d!1272265 (=> res!1773926 e!2693622)))

(assert (=> d!1272265 (= res!1773926 (not ((_ is Cons!48486) (t!355522 l!13867))))))

(assert (=> d!1272265 (= (noDuplicateKeys!299 (t!355522 l!13867)) e!2693622)))

(declare-fun b!4328787 () Bool)

(declare-fun e!2693623 () Bool)

(assert (=> b!4328787 (= e!2693622 e!2693623)))

(declare-fun res!1773927 () Bool)

(assert (=> b!4328787 (=> (not res!1773927) (not e!2693623))))

(assert (=> b!4328787 (= res!1773927 (not (containsKey!446 (t!355522 (t!355522 l!13867)) (_1!27076 (h!53955 (t!355522 l!13867))))))))

(declare-fun b!4328788 () Bool)

(assert (=> b!4328788 (= e!2693623 (noDuplicateKeys!299 (t!355522 (t!355522 l!13867))))))

(assert (= (and d!1272265 (not res!1773926)) b!4328787))

(assert (= (and b!4328787 res!1773927) b!4328788))

(declare-fun m!4923477 () Bool)

(assert (=> b!4328787 m!4923477))

(declare-fun m!4923479 () Bool)

(assert (=> b!4328788 m!4923479))

(assert (=> b!4328772 d!1272265))

(declare-fun d!1272267 () Bool)

(declare-fun res!1773930 () Bool)

(declare-fun e!2693626 () Bool)

(assert (=> d!1272267 (=> res!1773930 e!2693626)))

(assert (=> d!1272267 (= res!1773930 (not ((_ is Cons!48486) (removePairForKey!307 (t!355522 l!13867) key!5269))))))

(assert (=> d!1272267 (= (noDuplicateKeys!299 (removePairForKey!307 (t!355522 l!13867) key!5269)) e!2693626)))

(declare-fun b!4328793 () Bool)

(declare-fun e!2693627 () Bool)

(assert (=> b!4328793 (= e!2693626 e!2693627)))

(declare-fun res!1773931 () Bool)

(assert (=> b!4328793 (=> (not res!1773931) (not e!2693627))))

(assert (=> b!4328793 (= res!1773931 (not (containsKey!446 (t!355522 (removePairForKey!307 (t!355522 l!13867) key!5269)) (_1!27076 (h!53955 (removePairForKey!307 (t!355522 l!13867) key!5269))))))))

(declare-fun b!4328794 () Bool)

(assert (=> b!4328794 (= e!2693627 (noDuplicateKeys!299 (t!355522 (removePairForKey!307 (t!355522 l!13867) key!5269))))))

(assert (= (and d!1272267 (not res!1773930)) b!4328793))

(assert (= (and b!4328793 res!1773931) b!4328794))

(declare-fun m!4923481 () Bool)

(assert (=> b!4328793 m!4923481))

(declare-fun m!4923483 () Bool)

(assert (=> b!4328794 m!4923483))

(assert (=> b!4328772 d!1272267))

(declare-fun b!4328818 () Bool)

(declare-fun e!2693642 () List!48610)

(declare-fun e!2693643 () List!48610)

(assert (=> b!4328818 (= e!2693642 e!2693643)))

(declare-fun c!736580 () Bool)

(assert (=> b!4328818 (= c!736580 ((_ is Cons!48486) (t!355522 l!13867)))))

(declare-fun d!1272269 () Bool)

(declare-fun lt!1545290 () List!48610)

(assert (=> d!1272269 (not (containsKey!446 lt!1545290 key!5269))))

(assert (=> d!1272269 (= lt!1545290 e!2693642)))

(declare-fun c!736581 () Bool)

(assert (=> d!1272269 (= c!736581 (and ((_ is Cons!48486) (t!355522 l!13867)) (= (_1!27076 (h!53955 (t!355522 l!13867))) key!5269)))))

(assert (=> d!1272269 (noDuplicateKeys!299 (t!355522 l!13867))))

(assert (=> d!1272269 (= (removePairForKey!307 (t!355522 l!13867) key!5269) lt!1545290)))

(declare-fun b!4328819 () Bool)

(assert (=> b!4328819 (= e!2693643 (Cons!48486 (h!53955 (t!355522 l!13867)) (removePairForKey!307 (t!355522 (t!355522 l!13867)) key!5269)))))

(declare-fun b!4328817 () Bool)

(assert (=> b!4328817 (= e!2693642 (t!355522 (t!355522 l!13867)))))

(declare-fun b!4328820 () Bool)

(assert (=> b!4328820 (= e!2693643 Nil!48486)))

(assert (= (and d!1272269 c!736581) b!4328817))

(assert (= (and d!1272269 (not c!736581)) b!4328818))

(assert (= (and b!4328818 c!736580) b!4328819))

(assert (= (and b!4328818 (not c!736580)) b!4328820))

(declare-fun m!4923495 () Bool)

(assert (=> d!1272269 m!4923495))

(assert (=> d!1272269 m!4923465))

(declare-fun m!4923497 () Bool)

(assert (=> b!4328819 m!4923497))

(assert (=> b!4328772 d!1272269))

(declare-fun d!1272277 () Bool)

(assert (=> d!1272277 (noDuplicateKeys!299 (removePairForKey!307 (t!355522 l!13867) key!5269))))

(declare-fun lt!1545294 () Unit!68127)

(declare-fun choose!26471 (List!48610 K!9785) Unit!68127)

(assert (=> d!1272277 (= lt!1545294 (choose!26471 (t!355522 l!13867) key!5269))))

(assert (=> d!1272277 (noDuplicateKeys!299 (t!355522 l!13867))))

(assert (=> d!1272277 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!215 (t!355522 l!13867) key!5269) lt!1545294)))

(declare-fun bs!607598 () Bool)

(assert (= bs!607598 d!1272277))

(assert (=> bs!607598 m!4923467))

(assert (=> bs!607598 m!4923467))

(assert (=> bs!607598 m!4923469))

(declare-fun m!4923503 () Bool)

(assert (=> bs!607598 m!4923503))

(assert (=> bs!607598 m!4923465))

(assert (=> b!4328772 d!1272277))

(declare-fun d!1272281 () Bool)

(declare-fun res!1773942 () Bool)

(declare-fun e!2693652 () Bool)

(assert (=> d!1272281 (=> res!1773942 e!2693652)))

(assert (=> d!1272281 (= res!1773942 (and ((_ is Cons!48486) (t!355522 l!13867)) (= (_1!27076 (h!53955 (t!355522 l!13867))) (_1!27076 (h!53955 l!13867)))))))

(assert (=> d!1272281 (= (containsKey!446 (t!355522 l!13867) (_1!27076 (h!53955 l!13867))) e!2693652)))

(declare-fun b!4328833 () Bool)

(declare-fun e!2693653 () Bool)

(assert (=> b!4328833 (= e!2693652 e!2693653)))

(declare-fun res!1773943 () Bool)

(assert (=> b!4328833 (=> (not res!1773943) (not e!2693653))))

(assert (=> b!4328833 (= res!1773943 ((_ is Cons!48486) (t!355522 l!13867)))))

(declare-fun b!4328834 () Bool)

(assert (=> b!4328834 (= e!2693653 (containsKey!446 (t!355522 (t!355522 l!13867)) (_1!27076 (h!53955 l!13867))))))

(assert (= (and d!1272281 (not res!1773942)) b!4328833))

(assert (= (and b!4328833 res!1773943) b!4328834))

(declare-fun m!4923507 () Bool)

(assert (=> b!4328834 m!4923507))

(assert (=> b!4328773 d!1272281))

(declare-fun tp!1328082 () Bool)

(declare-fun e!2693657 () Bool)

(declare-fun b!4328840 () Bool)

(assert (=> b!4328840 (= e!2693657 (and tp_is_empty!24385 tp_is_empty!24387 tp!1328082))))

(assert (=> b!4328771 (= tp!1328076 e!2693657)))

(assert (= (and b!4328771 ((_ is Cons!48486) (t!355522 l!13867))) b!4328840))

(check-sat (not b!4328785) tp_is_empty!24387 (not b!4328794) (not b!4328834) (not b!4328793) (not b!4328840) (not d!1272269) (not b!4328819) (not b!4328787) (not b!4328788) tp_is_empty!24385 (not b!4328786) (not d!1272277))
(check-sat)
