; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417042 () Bool)

(assert start!417042)

(declare-fun b!4329056 () Bool)

(declare-fun res!1774060 () Bool)

(declare-fun e!2693805 () Bool)

(assert (=> b!4329056 (=> (not res!1774060) (not e!2693805))))

(declare-datatypes ((K!9805 0))(
  ( (K!9806 (val!16115 Int)) )
))
(declare-datatypes ((V!10051 0))(
  ( (V!10052 (val!16116 Int)) )
))
(declare-datatypes ((tuple2!47580 0))(
  ( (tuple2!47581 (_1!27084 K!9805) (_2!27084 V!10051)) )
))
(declare-datatypes ((List!48618 0))(
  ( (Nil!48494) (Cons!48494 (h!53963 tuple2!47580) (t!355530 List!48618)) )
))
(declare-fun l!13918 () List!48618)

(get-info :version)

(assert (=> b!4329056 (= res!1774060 (not ((_ is Nil!48494) l!13918)))))

(declare-fun b!4329057 () Bool)

(declare-fun noDuplicateKeys!307 (List!48618) Bool)

(assert (=> b!4329057 (= e!2693805 (not (noDuplicateKeys!307 (t!355530 l!13918))))))

(declare-fun tp_is_empty!24417 () Bool)

(declare-fun e!2693804 () Bool)

(declare-fun tp!1328118 () Bool)

(declare-fun b!4329059 () Bool)

(declare-fun tp_is_empty!24419 () Bool)

(assert (=> b!4329059 (= e!2693804 (and tp_is_empty!24417 tp_is_empty!24419 tp!1328118))))

(declare-fun b!4329060 () Bool)

(declare-fun res!1774061 () Bool)

(assert (=> b!4329060 (=> (not res!1774061) (not e!2693805))))

(declare-fun otherK!9 () K!9805)

(declare-fun containsKey!453 (List!48618 K!9805) Bool)

(assert (=> b!4329060 (= res!1774061 (not (containsKey!453 l!13918 otherK!9)))))

(declare-fun b!4329058 () Bool)

(declare-fun res!1774063 () Bool)

(assert (=> b!4329058 (=> (not res!1774063) (not e!2693805))))

(declare-fun key!5304 () K!9805)

(assert (=> b!4329058 (= res!1774063 (not (= otherK!9 key!5304)))))

(declare-fun res!1774062 () Bool)

(assert (=> start!417042 (=> (not res!1774062) (not e!2693805))))

(assert (=> start!417042 (= res!1774062 (noDuplicateKeys!307 l!13918))))

(assert (=> start!417042 e!2693805))

(assert (=> start!417042 e!2693804))

(assert (=> start!417042 tp_is_empty!24417))

(assert (= (and start!417042 res!1774062) b!4329058))

(assert (= (and b!4329058 res!1774063) b!4329060))

(assert (= (and b!4329060 res!1774061) b!4329056))

(assert (= (and b!4329056 res!1774060) b!4329057))

(assert (= (and start!417042 ((_ is Cons!48494) l!13918)) b!4329059))

(declare-fun m!4923675 () Bool)

(assert (=> b!4329057 m!4923675))

(declare-fun m!4923677 () Bool)

(assert (=> b!4329060 m!4923677))

(declare-fun m!4923679 () Bool)

(assert (=> start!417042 m!4923679))

(check-sat (not b!4329057) tp_is_empty!24417 (not start!417042) (not b!4329060) tp_is_empty!24419 (not b!4329059))
(check-sat)
(get-model)

(declare-fun d!1272341 () Bool)

(declare-fun res!1774074 () Bool)

(declare-fun e!2693816 () Bool)

(assert (=> d!1272341 (=> res!1774074 e!2693816)))

(assert (=> d!1272341 (= res!1774074 (and ((_ is Cons!48494) l!13918) (= (_1!27084 (h!53963 l!13918)) otherK!9)))))

(assert (=> d!1272341 (= (containsKey!453 l!13918 otherK!9) e!2693816)))

(declare-fun b!4329071 () Bool)

(declare-fun e!2693817 () Bool)

(assert (=> b!4329071 (= e!2693816 e!2693817)))

(declare-fun res!1774075 () Bool)

(assert (=> b!4329071 (=> (not res!1774075) (not e!2693817))))

(assert (=> b!4329071 (= res!1774075 ((_ is Cons!48494) l!13918))))

(declare-fun b!4329072 () Bool)

(assert (=> b!4329072 (= e!2693817 (containsKey!453 (t!355530 l!13918) otherK!9))))

(assert (= (and d!1272341 (not res!1774074)) b!4329071))

(assert (= (and b!4329071 res!1774075) b!4329072))

(declare-fun m!4923683 () Bool)

(assert (=> b!4329072 m!4923683))

(assert (=> b!4329060 d!1272341))

(declare-fun d!1272345 () Bool)

(declare-fun res!1774088 () Bool)

(declare-fun e!2693832 () Bool)

(assert (=> d!1272345 (=> res!1774088 e!2693832)))

(assert (=> d!1272345 (= res!1774088 (not ((_ is Cons!48494) (t!355530 l!13918))))))

(assert (=> d!1272345 (= (noDuplicateKeys!307 (t!355530 l!13918)) e!2693832)))

(declare-fun b!4329089 () Bool)

(declare-fun e!2693833 () Bool)

(assert (=> b!4329089 (= e!2693832 e!2693833)))

(declare-fun res!1774089 () Bool)

(assert (=> b!4329089 (=> (not res!1774089) (not e!2693833))))

(assert (=> b!4329089 (= res!1774089 (not (containsKey!453 (t!355530 (t!355530 l!13918)) (_1!27084 (h!53963 (t!355530 l!13918))))))))

(declare-fun b!4329090 () Bool)

(assert (=> b!4329090 (= e!2693833 (noDuplicateKeys!307 (t!355530 (t!355530 l!13918))))))

(assert (= (and d!1272345 (not res!1774088)) b!4329089))

(assert (= (and b!4329089 res!1774089) b!4329090))

(declare-fun m!4923691 () Bool)

(assert (=> b!4329089 m!4923691))

(declare-fun m!4923693 () Bool)

(assert (=> b!4329090 m!4923693))

(assert (=> b!4329057 d!1272345))

(declare-fun d!1272349 () Bool)

(declare-fun res!1774090 () Bool)

(declare-fun e!2693835 () Bool)

(assert (=> d!1272349 (=> res!1774090 e!2693835)))

(assert (=> d!1272349 (= res!1774090 (not ((_ is Cons!48494) l!13918)))))

(assert (=> d!1272349 (= (noDuplicateKeys!307 l!13918) e!2693835)))

(declare-fun b!4329092 () Bool)

(declare-fun e!2693836 () Bool)

(assert (=> b!4329092 (= e!2693835 e!2693836)))

(declare-fun res!1774091 () Bool)

(assert (=> b!4329092 (=> (not res!1774091) (not e!2693836))))

(assert (=> b!4329092 (= res!1774091 (not (containsKey!453 (t!355530 l!13918) (_1!27084 (h!53963 l!13918)))))))

(declare-fun b!4329093 () Bool)

(assert (=> b!4329093 (= e!2693836 (noDuplicateKeys!307 (t!355530 l!13918)))))

(assert (= (and d!1272349 (not res!1774090)) b!4329092))

(assert (= (and b!4329092 res!1774091) b!4329093))

(declare-fun m!4923695 () Bool)

(assert (=> b!4329092 m!4923695))

(assert (=> b!4329093 m!4923675))

(assert (=> start!417042 d!1272349))

(declare-fun tp!1328124 () Bool)

(declare-fun b!4329098 () Bool)

(declare-fun e!2693839 () Bool)

(assert (=> b!4329098 (= e!2693839 (and tp_is_empty!24417 tp_is_empty!24419 tp!1328124))))

(assert (=> b!4329059 (= tp!1328118 e!2693839)))

(assert (= (and b!4329059 ((_ is Cons!48494) (t!355530 l!13918))) b!4329098))

(check-sat (not b!4329092) (not b!4329090) (not b!4329072) tp_is_empty!24419 (not b!4329098) tp_is_empty!24417 (not b!4329093) (not b!4329089))
(check-sat)
