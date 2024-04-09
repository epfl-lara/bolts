; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7588 () Bool)

(assert start!7588)

(declare-fun b!48428 () Bool)

(declare-fun e!31080 () Bool)

(declare-datatypes ((B!944 0))(
  ( (B!945 (val!1092 Int)) )
))
(declare-datatypes ((tuple2!1770 0))(
  ( (tuple2!1771 (_1!895 (_ BitVec 64)) (_2!895 B!944)) )
))
(declare-datatypes ((List!1308 0))(
  ( (Nil!1305) (Cons!1304 (h!1884 tuple2!1770) (t!4344 List!1308)) )
))
(declare-fun l!1333 () List!1308)

(declare-fun isStrictlySorted!252 (List!1308) Bool)

(assert (=> b!48428 (= e!31080 (not (isStrictlySorted!252 (t!4344 l!1333))))))

(declare-fun b!48427 () Bool)

(declare-fun res!28069 () Bool)

(assert (=> b!48427 (=> (not res!28069) (not e!31080))))

(assert (=> b!48427 (= res!28069 (not (is-Nil!1305 l!1333)))))

(declare-fun res!28071 () Bool)

(assert (=> start!7588 (=> (not res!28071) (not e!31080))))

(assert (=> start!7588 (= res!28071 (isStrictlySorted!252 l!1333))))

(assert (=> start!7588 e!31080))

(declare-fun e!31081 () Bool)

(assert (=> start!7588 e!31081))

(assert (=> start!7588 true))

(declare-fun b!48429 () Bool)

(declare-fun tp_is_empty!2095 () Bool)

(declare-fun tp!6383 () Bool)

(assert (=> b!48429 (= e!31081 (and tp_is_empty!2095 tp!6383))))

(declare-fun b!48426 () Bool)

(declare-fun res!28070 () Bool)

(assert (=> b!48426 (=> (not res!28070) (not e!31080))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!104 (List!1308 (_ BitVec 64)) Bool)

(assert (=> b!48426 (= res!28070 (not (containsKey!104 l!1333 newKey!147)))))

(assert (= (and start!7588 res!28071) b!48426))

(assert (= (and b!48426 res!28070) b!48427))

(assert (= (and b!48427 res!28069) b!48428))

(assert (= (and start!7588 (is-Cons!1304 l!1333)) b!48429))

(declare-fun m!42315 () Bool)

(assert (=> b!48428 m!42315))

(declare-fun m!42317 () Bool)

(assert (=> start!7588 m!42317))

(declare-fun m!42319 () Bool)

(assert (=> b!48426 m!42319))

(push 1)

(assert (not start!7588))

(assert (not b!48429))

(assert (not b!48428))

(assert (not b!48426))

(assert tp_is_empty!2095)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9643 () Bool)

(declare-fun res!28102 () Bool)

(declare-fun e!31106 () Bool)

(assert (=> d!9643 (=> res!28102 e!31106)))

(assert (=> d!9643 (= res!28102 (or (is-Nil!1305 (t!4344 l!1333)) (is-Nil!1305 (t!4344 (t!4344 l!1333)))))))

(assert (=> d!9643 (= (isStrictlySorted!252 (t!4344 l!1333)) e!31106)))

(declare-fun b!48466 () Bool)

(declare-fun e!31107 () Bool)

(assert (=> b!48466 (= e!31106 e!31107)))

(declare-fun res!28103 () Bool)

(assert (=> b!48466 (=> (not res!28103) (not e!31107))))

(assert (=> b!48466 (= res!28103 (bvslt (_1!895 (h!1884 (t!4344 l!1333))) (_1!895 (h!1884 (t!4344 (t!4344 l!1333))))))))

(declare-fun b!48467 () Bool)

(assert (=> b!48467 (= e!31107 (isStrictlySorted!252 (t!4344 (t!4344 l!1333))))))

(assert (= (and d!9643 (not res!28102)) b!48466))

(assert (= (and b!48466 res!28103) b!48467))

(declare-fun m!42333 () Bool)

(assert (=> b!48467 m!42333))

(assert (=> b!48428 d!9643))

(declare-fun d!9649 () Bool)

(declare-fun res!28106 () Bool)

(declare-fun e!31110 () Bool)

(assert (=> d!9649 (=> res!28106 e!31110)))

(assert (=> d!9649 (= res!28106 (or (is-Nil!1305 l!1333) (is-Nil!1305 (t!4344 l!1333))))))

(assert (=> d!9649 (= (isStrictlySorted!252 l!1333) e!31110)))

(declare-fun b!48470 () Bool)

(declare-fun e!31111 () Bool)

(assert (=> b!48470 (= e!31110 e!31111)))

(declare-fun res!28107 () Bool)

(assert (=> b!48470 (=> (not res!28107) (not e!31111))))

(assert (=> b!48470 (= res!28107 (bvslt (_1!895 (h!1884 l!1333)) (_1!895 (h!1884 (t!4344 l!1333)))))))

(declare-fun b!48471 () Bool)

(assert (=> b!48471 (= e!31111 (isStrictlySorted!252 (t!4344 l!1333)))))

(assert (= (and d!9649 (not res!28106)) b!48470))

(assert (= (and b!48470 res!28107) b!48471))

(assert (=> b!48471 m!42315))

(assert (=> start!7588 d!9649))

(declare-fun d!9651 () Bool)

(declare-fun res!28126 () Bool)

(declare-fun e!31130 () Bool)

(assert (=> d!9651 (=> res!28126 e!31130)))

(assert (=> d!9651 (= res!28126 (and (is-Cons!1304 l!1333) (= (_1!895 (h!1884 l!1333)) newKey!147)))))

(assert (=> d!9651 (= (containsKey!104 l!1333 newKey!147) e!31130)))

(declare-fun b!48490 () Bool)

(declare-fun e!31131 () Bool)

(assert (=> b!48490 (= e!31130 e!31131)))

(declare-fun res!28127 () Bool)

(assert (=> b!48490 (=> (not res!28127) (not e!31131))))

(assert (=> b!48490 (= res!28127 (and (or (not (is-Cons!1304 l!1333)) (bvsle (_1!895 (h!1884 l!1333)) newKey!147)) (is-Cons!1304 l!1333) (bvslt (_1!895 (h!1884 l!1333)) newKey!147)))))

(declare-fun b!48491 () Bool)

(assert (=> b!48491 (= e!31131 (containsKey!104 (t!4344 l!1333) newKey!147))))

(assert (= (and d!9651 (not res!28126)) b!48490))

(assert (= (and b!48490 res!28127) b!48491))

(declare-fun m!42341 () Bool)

(assert (=> b!48491 m!42341))

(assert (=> b!48426 d!9651))

(declare-fun b!48505 () Bool)

(declare-fun e!31141 () Bool)

(declare-fun tp!6395 () Bool)

(assert (=> b!48505 (= e!31141 (and tp_is_empty!2095 tp!6395))))

(assert (=> b!48429 (= tp!6383 e!31141)))

(assert (= (and b!48429 (is-Cons!1304 (t!4344 l!1333))) b!48505))

(push 1)

(assert (not b!48471))

(assert (not b!48467))

(assert (not b!48491))

(assert (not b!48505))

(assert tp_is_empty!2095)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

