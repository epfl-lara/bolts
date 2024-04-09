; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107814 () Bool)

(assert start!107814)

(declare-fun res!847305 () Bool)

(declare-fun e!727352 () Bool)

(assert (=> start!107814 (=> (not res!847305) (not e!727352))))

(declare-datatypes ((B!2130 0))(
  ( (B!2131 (val!16661 Int)) )
))
(declare-datatypes ((tuple2!21550 0))(
  ( (tuple2!21551 (_1!10785 (_ BitVec 64)) (_2!10785 B!2130)) )
))
(declare-datatypes ((List!28745 0))(
  ( (Nil!28742) (Cons!28741 (h!29950 tuple2!21550) (t!42285 List!28745)) )
))
(declare-fun l!595 () List!28745)

(declare-fun isStrictlySorted!842 (List!28745) Bool)

(assert (=> start!107814 (= res!847305 (isStrictlySorted!842 l!595))))

(assert (=> start!107814 e!727352))

(declare-fun e!727353 () Bool)

(assert (=> start!107814 e!727353))

(assert (=> start!107814 true))

(declare-fun b!1274465 () Bool)

(declare-fun res!847306 () Bool)

(assert (=> b!1274465 (=> (not res!847306) (not e!727352))))

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1274465 (= res!847306 (and (not (= (_1!10785 (h!29950 l!595)) key!173)) (is-Cons!28741 l!595)))))

(declare-fun b!1274466 () Bool)

(assert (=> b!1274466 (= e!727352 (not (isStrictlySorted!842 (t!42285 l!595))))))

(declare-fun b!1274467 () Bool)

(declare-fun tp_is_empty!33173 () Bool)

(declare-fun tp!97965 () Bool)

(assert (=> b!1274467 (= e!727353 (and tp_is_empty!33173 tp!97965))))

(assert (= (and start!107814 res!847305) b!1274465))

(assert (= (and b!1274465 res!847306) b!1274466))

(assert (= (and start!107814 (is-Cons!28741 l!595)) b!1274467))

(declare-fun m!1171221 () Bool)

(assert (=> start!107814 m!1171221))

(declare-fun m!1171223 () Bool)

(assert (=> b!1274466 m!1171223))

(push 1)

(assert (not b!1274466))

(assert (not start!107814))

(assert (not b!1274467))

(assert tp_is_empty!33173)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140089 () Bool)

(declare-fun res!847315 () Bool)

(declare-fun e!727362 () Bool)

(assert (=> d!140089 (=> res!847315 e!727362)))

(assert (=> d!140089 (= res!847315 (or (is-Nil!28742 (t!42285 l!595)) (is-Nil!28742 (t!42285 (t!42285 l!595)))))))

(assert (=> d!140089 (= (isStrictlySorted!842 (t!42285 l!595)) e!727362)))

(declare-fun b!1274476 () Bool)

(declare-fun e!727363 () Bool)

(assert (=> b!1274476 (= e!727362 e!727363)))

(declare-fun res!847316 () Bool)

(assert (=> b!1274476 (=> (not res!847316) (not e!727363))))

(assert (=> b!1274476 (= res!847316 (bvslt (_1!10785 (h!29950 (t!42285 l!595))) (_1!10785 (h!29950 (t!42285 (t!42285 l!595))))))))

(declare-fun b!1274477 () Bool)

(assert (=> b!1274477 (= e!727363 (isStrictlySorted!842 (t!42285 (t!42285 l!595))))))

(assert (= (and d!140089 (not res!847315)) b!1274476))

(assert (= (and b!1274476 res!847316) b!1274477))

(declare-fun m!1171225 () Bool)

(assert (=> b!1274477 m!1171225))

(assert (=> b!1274466 d!140089))

(declare-fun d!140095 () Bool)

(declare-fun res!847317 () Bool)

(declare-fun e!727364 () Bool)

(assert (=> d!140095 (=> res!847317 e!727364)))

(assert (=> d!140095 (= res!847317 (or (is-Nil!28742 l!595) (is-Nil!28742 (t!42285 l!595))))))

(assert (=> d!140095 (= (isStrictlySorted!842 l!595) e!727364)))

(declare-fun b!1274478 () Bool)

(declare-fun e!727365 () Bool)

(assert (=> b!1274478 (= e!727364 e!727365)))

(declare-fun res!847318 () Bool)

(assert (=> b!1274478 (=> (not res!847318) (not e!727365))))

(assert (=> b!1274478 (= res!847318 (bvslt (_1!10785 (h!29950 l!595)) (_1!10785 (h!29950 (t!42285 l!595)))))))

(declare-fun b!1274479 () Bool)

(assert (=> b!1274479 (= e!727365 (isStrictlySorted!842 (t!42285 l!595)))))

(assert (= (and d!140095 (not res!847317)) b!1274478))

(assert (= (and b!1274478 res!847318) b!1274479))

(assert (=> b!1274479 m!1171223))

(assert (=> start!107814 d!140095))

(declare-fun b!1274492 () Bool)

(declare-fun e!727376 () Bool)

(declare-fun tp!97968 () Bool)

(assert (=> b!1274492 (= e!727376 (and tp_is_empty!33173 tp!97968))))

(assert (=> b!1274467 (= tp!97965 e!727376)))

(assert (= (and b!1274467 (is-Cons!28741 (t!42285 l!595))) b!1274492))

(push 1)

