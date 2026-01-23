; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416934 () Bool)

(assert start!416934)

(declare-fun res!1773787 () Bool)

(declare-fun e!2693457 () Bool)

(assert (=> start!416934 (=> (not res!1773787) (not e!2693457))))

(declare-datatypes ((K!9765 0))(
  ( (K!9766 (val!16083 Int)) )
))
(declare-datatypes ((V!10011 0))(
  ( (V!10012 (val!16084 Int)) )
))
(declare-datatypes ((tuple2!47548 0))(
  ( (tuple2!47549 (_1!27068 K!9765) (_2!27068 V!10011)) )
))
(declare-datatypes ((List!48602 0))(
  ( (Nil!48478) (Cons!48478 (h!53947 tuple2!47548) (t!355514 List!48602)) )
))
(declare-fun l!13867 () List!48602)

(declare-fun noDuplicateKeys!291 (List!48602) Bool)

(assert (=> start!416934 (= res!1773787 (noDuplicateKeys!291 l!13867))))

(assert (=> start!416934 e!2693457))

(declare-fun e!2693456 () Bool)

(assert (=> start!416934 e!2693456))

(declare-fun tp_is_empty!24353 () Bool)

(assert (=> start!416934 tp_is_empty!24353))

(declare-fun b!4328554 () Bool)

(declare-fun res!1773786 () Bool)

(assert (=> b!4328554 (=> (not res!1773786) (not e!2693457))))

(declare-fun key!5269 () K!9765)

(get-info :version)

(assert (=> b!4328554 (= res!1773786 (and (or (not ((_ is Cons!48478) l!13867)) (not (= (_1!27068 (h!53947 l!13867)) key!5269))) ((_ is Cons!48478) l!13867)))))

(declare-fun b!4328555 () Bool)

(assert (=> b!4328555 (= e!2693457 (not (noDuplicateKeys!291 (t!355514 l!13867))))))

(declare-fun b!4328556 () Bool)

(declare-fun tp_is_empty!24355 () Bool)

(declare-fun tp!1328034 () Bool)

(assert (=> b!4328556 (= e!2693456 (and tp_is_empty!24353 tp_is_empty!24355 tp!1328034))))

(assert (= (and start!416934 res!1773787) b!4328554))

(assert (= (and b!4328554 res!1773786) b!4328555))

(assert (= (and start!416934 ((_ is Cons!48478) l!13867)) b!4328556))

(declare-fun m!4923333 () Bool)

(assert (=> start!416934 m!4923333))

(declare-fun m!4923335 () Bool)

(assert (=> b!4328555 m!4923335))

(check-sat (not b!4328556) (not start!416934) tp_is_empty!24355 tp_is_empty!24353 (not b!4328555))
(check-sat)
(get-model)

(declare-fun d!1272213 () Bool)

(declare-fun res!1773800 () Bool)

(declare-fun e!2693473 () Bool)

(assert (=> d!1272213 (=> res!1773800 e!2693473)))

(assert (=> d!1272213 (= res!1773800 (not ((_ is Cons!48478) (t!355514 l!13867))))))

(assert (=> d!1272213 (= (noDuplicateKeys!291 (t!355514 l!13867)) e!2693473)))

(declare-fun b!4328574 () Bool)

(declare-fun e!2693474 () Bool)

(assert (=> b!4328574 (= e!2693473 e!2693474)))

(declare-fun res!1773801 () Bool)

(assert (=> b!4328574 (=> (not res!1773801) (not e!2693474))))

(declare-fun containsKey!440 (List!48602 K!9765) Bool)

(assert (=> b!4328574 (= res!1773801 (not (containsKey!440 (t!355514 (t!355514 l!13867)) (_1!27068 (h!53947 (t!355514 l!13867))))))))

(declare-fun b!4328575 () Bool)

(assert (=> b!4328575 (= e!2693474 (noDuplicateKeys!291 (t!355514 (t!355514 l!13867))))))

(assert (= (and d!1272213 (not res!1773800)) b!4328574))

(assert (= (and b!4328574 res!1773801) b!4328575))

(declare-fun m!4923343 () Bool)

(assert (=> b!4328574 m!4923343))

(declare-fun m!4923345 () Bool)

(assert (=> b!4328575 m!4923345))

(assert (=> b!4328555 d!1272213))

(declare-fun d!1272217 () Bool)

(declare-fun res!1773802 () Bool)

(declare-fun e!2693475 () Bool)

(assert (=> d!1272217 (=> res!1773802 e!2693475)))

(assert (=> d!1272217 (= res!1773802 (not ((_ is Cons!48478) l!13867)))))

(assert (=> d!1272217 (= (noDuplicateKeys!291 l!13867) e!2693475)))

(declare-fun b!4328576 () Bool)

(declare-fun e!2693476 () Bool)

(assert (=> b!4328576 (= e!2693475 e!2693476)))

(declare-fun res!1773803 () Bool)

(assert (=> b!4328576 (=> (not res!1773803) (not e!2693476))))

(assert (=> b!4328576 (= res!1773803 (not (containsKey!440 (t!355514 l!13867) (_1!27068 (h!53947 l!13867)))))))

(declare-fun b!4328577 () Bool)

(assert (=> b!4328577 (= e!2693476 (noDuplicateKeys!291 (t!355514 l!13867)))))

(assert (= (and d!1272217 (not res!1773802)) b!4328576))

(assert (= (and b!4328576 res!1773803) b!4328577))

(declare-fun m!4923347 () Bool)

(assert (=> b!4328576 m!4923347))

(assert (=> b!4328577 m!4923335))

(assert (=> start!416934 d!1272217))

(declare-fun e!2693479 () Bool)

(declare-fun b!4328582 () Bool)

(declare-fun tp!1328040 () Bool)

(assert (=> b!4328582 (= e!2693479 (and tp_is_empty!24353 tp_is_empty!24355 tp!1328040))))

(assert (=> b!4328556 (= tp!1328034 e!2693479)))

(assert (= (and b!4328556 ((_ is Cons!48478) (t!355514 l!13867))) b!4328582))

(check-sat (not b!4328577) (not b!4328575) (not b!4328574) tp_is_empty!24355 tp_is_empty!24353 (not b!4328576) (not b!4328582))
(check-sat)
