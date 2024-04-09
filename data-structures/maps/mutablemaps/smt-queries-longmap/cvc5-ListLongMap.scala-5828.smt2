; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75200 () Bool)

(assert start!75200)

(declare-fun res!601513 () Bool)

(declare-fun e!492988 () Bool)

(assert (=> start!75200 (=> (not res!601513) (not e!492988))))

(declare-datatypes ((B!1286 0))(
  ( (B!1287 (val!8949 Int)) )
))
(declare-datatypes ((tuple2!11918 0))(
  ( (tuple2!11919 (_1!5969 (_ BitVec 64)) (_2!5969 B!1286)) )
))
(declare-datatypes ((List!17749 0))(
  ( (Nil!17746) (Cons!17745 (h!18876 tuple2!11918) (t!25034 List!17749)) )
))
(declare-fun l!906 () List!17749)

(declare-fun isStrictlySorted!479 (List!17749) Bool)

(assert (=> start!75200 (= res!601513 (isStrictlySorted!479 l!906))))

(assert (=> start!75200 e!492988))

(declare-fun e!492989 () Bool)

(assert (=> start!75200 e!492989))

(assert (=> start!75200 true))

(declare-fun b!885689 () Bool)

(declare-fun res!601514 () Bool)

(assert (=> b!885689 (=> (not res!601514) (not e!492988))))

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!885689 (= res!601514 (and (is-Cons!17745 l!906) (bvslt (_1!5969 (h!18876 l!906)) key1!49)))))

(declare-fun b!885690 () Bool)

(assert (=> b!885690 (= e!492988 (not (isStrictlySorted!479 (t!25034 l!906))))))

(declare-fun b!885691 () Bool)

(declare-fun tp_is_empty!17797 () Bool)

(declare-fun tp!54330 () Bool)

(assert (=> b!885691 (= e!492989 (and tp_is_empty!17797 tp!54330))))

(assert (= (and start!75200 res!601513) b!885689))

(assert (= (and b!885689 res!601514) b!885690))

(assert (= (and start!75200 (is-Cons!17745 l!906)) b!885691))

(declare-fun m!825821 () Bool)

(assert (=> start!75200 m!825821))

(declare-fun m!825823 () Bool)

(assert (=> b!885690 m!825823))

(push 1)

(assert (not b!885690))

(assert (not start!75200))

(assert (not b!885691))

(assert tp_is_empty!17797)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109381 () Bool)

(declare-fun res!601539 () Bool)

(declare-fun e!493017 () Bool)

(assert (=> d!109381 (=> res!601539 e!493017)))

(assert (=> d!109381 (= res!601539 (or (is-Nil!17746 (t!25034 l!906)) (is-Nil!17746 (t!25034 (t!25034 l!906)))))))

(assert (=> d!109381 (= (isStrictlySorted!479 (t!25034 l!906)) e!493017)))

(declare-fun b!885727 () Bool)

(declare-fun e!493018 () Bool)

(assert (=> b!885727 (= e!493017 e!493018)))

(declare-fun res!601540 () Bool)

(assert (=> b!885727 (=> (not res!601540) (not e!493018))))

(assert (=> b!885727 (= res!601540 (bvslt (_1!5969 (h!18876 (t!25034 l!906))) (_1!5969 (h!18876 (t!25034 (t!25034 l!906))))))))

(declare-fun b!885728 () Bool)

(assert (=> b!885728 (= e!493018 (isStrictlySorted!479 (t!25034 (t!25034 l!906))))))

(assert (= (and d!109381 (not res!601539)) b!885727))

(assert (= (and b!885727 res!601540) b!885728))

(declare-fun m!825835 () Bool)

(assert (=> b!885728 m!825835))

(assert (=> b!885690 d!109381))

(declare-fun d!109385 () Bool)

(declare-fun res!601541 () Bool)

(declare-fun e!493019 () Bool)

(assert (=> d!109385 (=> res!601541 e!493019)))

(assert (=> d!109385 (= res!601541 (or (is-Nil!17746 l!906) (is-Nil!17746 (t!25034 l!906))))))

(assert (=> d!109385 (= (isStrictlySorted!479 l!906) e!493019)))

(declare-fun b!885729 () Bool)

(declare-fun e!493020 () Bool)

(assert (=> b!885729 (= e!493019 e!493020)))

(declare-fun res!601542 () Bool)

(assert (=> b!885729 (=> (not res!601542) (not e!493020))))

(assert (=> b!885729 (= res!601542 (bvslt (_1!5969 (h!18876 l!906)) (_1!5969 (h!18876 (t!25034 l!906)))))))

(declare-fun b!885730 () Bool)

(assert (=> b!885730 (= e!493020 (isStrictlySorted!479 (t!25034 l!906)))))

(assert (= (and d!109385 (not res!601541)) b!885729))

(assert (= (and b!885729 res!601542) b!885730))

(assert (=> b!885730 m!825823))

(assert (=> start!75200 d!109385))

(declare-fun b!885735 () Bool)

(declare-fun e!493023 () Bool)

(declare-fun tp!54342 () Bool)

(assert (=> b!885735 (= e!493023 (and tp_is_empty!17797 tp!54342))))

(assert (=> b!885691 (= tp!54330 e!493023)))

(assert (= (and b!885691 (is-Cons!17745 (t!25034 l!906))) b!885735))

(push 1)

