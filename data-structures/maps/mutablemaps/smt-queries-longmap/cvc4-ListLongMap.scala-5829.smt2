; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75216 () Bool)

(assert start!75216)

(declare-fun res!601577 () Bool)

(declare-fun e!493051 () Bool)

(assert (=> start!75216 (=> (not res!601577) (not e!493051))))

(declare-datatypes ((B!1296 0))(
  ( (B!1297 (val!8954 Int)) )
))
(declare-datatypes ((tuple2!11928 0))(
  ( (tuple2!11929 (_1!5974 (_ BitVec 64)) (_2!5974 B!1296)) )
))
(declare-datatypes ((List!17754 0))(
  ( (Nil!17751) (Cons!17750 (h!18881 tuple2!11928) (t!25039 List!17754)) )
))
(declare-fun l!906 () List!17754)

(declare-fun isStrictlySorted!484 (List!17754) Bool)

(assert (=> start!75216 (= res!601577 (isStrictlySorted!484 l!906))))

(assert (=> start!75216 e!493051))

(declare-fun e!493052 () Bool)

(assert (=> start!75216 e!493052))

(assert (=> start!75216 true))

(declare-fun b!885781 () Bool)

(declare-fun res!601575 () Bool)

(assert (=> b!885781 (=> (not res!601575) (not e!493051))))

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!885781 (= res!601575 (and (is-Cons!17750 l!906) (bvslt (_1!5974 (h!18881 l!906)) key1!49)))))

(declare-fun b!885783 () Bool)

(declare-fun ListPrimitiveSize!90 (List!17754) Int)

(assert (=> b!885783 (= e!493051 (>= (ListPrimitiveSize!90 (t!25039 l!906)) (ListPrimitiveSize!90 l!906)))))

(declare-fun b!885782 () Bool)

(declare-fun res!601576 () Bool)

(assert (=> b!885782 (=> (not res!601576) (not e!493051))))

(assert (=> b!885782 (= res!601576 (isStrictlySorted!484 (t!25039 l!906)))))

(declare-fun b!885784 () Bool)

(declare-fun tp_is_empty!17807 () Bool)

(declare-fun tp!54354 () Bool)

(assert (=> b!885784 (= e!493052 (and tp_is_empty!17807 tp!54354))))

(assert (= (and start!75216 res!601577) b!885781))

(assert (= (and b!885781 res!601575) b!885782))

(assert (= (and b!885782 res!601576) b!885783))

(assert (= (and start!75216 (is-Cons!17750 l!906)) b!885784))

(declare-fun m!825855 () Bool)

(assert (=> start!75216 m!825855))

(declare-fun m!825857 () Bool)

(assert (=> b!885783 m!825857))

(declare-fun m!825859 () Bool)

(assert (=> b!885783 m!825859))

(declare-fun m!825861 () Bool)

(assert (=> b!885782 m!825861))

(push 1)

(assert (not b!885783))

(assert (not start!75216))

(assert (not b!885784))

(assert tp_is_empty!17807)

(assert (not b!885782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109401 () Bool)

(declare-fun res!601598 () Bool)

(declare-fun e!493084 () Bool)

(assert (=> d!109401 (=> res!601598 e!493084)))

(assert (=> d!109401 (= res!601598 (or (is-Nil!17751 l!906) (is-Nil!17751 (t!25039 l!906))))))

(assert (=> d!109401 (= (isStrictlySorted!484 l!906) e!493084)))

(declare-fun b!885826 () Bool)

(declare-fun e!493085 () Bool)

(assert (=> b!885826 (= e!493084 e!493085)))

(declare-fun res!601599 () Bool)

(assert (=> b!885826 (=> (not res!601599) (not e!493085))))

(assert (=> b!885826 (= res!601599 (bvslt (_1!5974 (h!18881 l!906)) (_1!5974 (h!18881 (t!25039 l!906)))))))

(declare-fun b!885828 () Bool)

(assert (=> b!885828 (= e!493085 (isStrictlySorted!484 (t!25039 l!906)))))

(assert (= (and d!109401 (not res!601598)) b!885826))

(assert (= (and b!885826 res!601599) b!885828))

(assert (=> b!885828 m!825861))

(assert (=> start!75216 d!109401))

(declare-fun d!109411 () Bool)

(declare-fun res!601600 () Bool)

(declare-fun e!493088 () Bool)

(assert (=> d!109411 (=> res!601600 e!493088)))

(assert (=> d!109411 (= res!601600 (or (is-Nil!17751 (t!25039 l!906)) (is-Nil!17751 (t!25039 (t!25039 l!906)))))))

(assert (=> d!109411 (= (isStrictlySorted!484 (t!25039 l!906)) e!493088)))

(declare-fun b!885832 () Bool)

(declare-fun e!493089 () Bool)

(assert (=> b!885832 (= e!493088 e!493089)))

(declare-fun res!601601 () Bool)

(assert (=> b!885832 (=> (not res!601601) (not e!493089))))

(assert (=> b!885832 (= res!601601 (bvslt (_1!5974 (h!18881 (t!25039 l!906))) (_1!5974 (h!18881 (t!25039 (t!25039 l!906))))))))

(declare-fun b!885833 () Bool)

(assert (=> b!885833 (= e!493089 (isStrictlySorted!484 (t!25039 (t!25039 l!906))))))

(assert (= (and d!109411 (not res!601600)) b!885832))

(assert (= (and b!885832 res!601601) b!885833))

(declare-fun m!825871 () Bool)

(assert (=> b!885833 m!825871))

(assert (=> b!885782 d!109411))

(declare-fun d!109413 () Bool)

(declare-fun lt!401009 () Int)

(assert (=> d!109413 (>= lt!401009 0)))

(declare-fun e!493093 () Int)

(assert (=> d!109413 (= lt!401009 e!493093)))

(declare-fun c!93291 () Bool)

(assert (=> d!109413 (= c!93291 (is-Nil!17751 (t!25039 l!906)))))

(assert (=> d!109413 (= (ListPrimitiveSize!90 (t!25039 l!906)) lt!401009)))

