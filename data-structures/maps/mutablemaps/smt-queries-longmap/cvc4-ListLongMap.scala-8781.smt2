; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106826 () Bool)

(assert start!106826)

(declare-fun b!1267333 () Bool)

(declare-fun e!721995 () Bool)

(declare-datatypes ((B!2082 0))(
  ( (B!2083 (val!16376 Int)) )
))
(declare-datatypes ((tuple2!21420 0))(
  ( (tuple2!21421 (_1!10720 (_ BitVec 64)) (_2!10720 B!2082)) )
))
(declare-datatypes ((List!28543 0))(
  ( (Nil!28540) (Cons!28539 (h!29748 tuple2!21420) (t!42077 List!28543)) )
))
(declare-fun l!874 () List!28543)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!682 (List!28543 (_ BitVec 64)) Bool)

(assert (=> b!1267333 (= e!721995 (containsKey!682 (t!42077 l!874) key!235))))

(declare-fun b!1267334 () Bool)

(declare-fun e!721996 () Bool)

(declare-fun tp_is_empty!32603 () Bool)

(declare-fun tp!96612 () Bool)

(assert (=> b!1267334 (= e!721996 (and tp_is_empty!32603 tp!96612))))

(declare-fun b!1267335 () Bool)

(declare-fun res!843707 () Bool)

(assert (=> b!1267335 (=> (not res!843707) (not e!721995))))

(declare-fun isStrictlySorted!821 (List!28543) Bool)

(assert (=> b!1267335 (= res!843707 (isStrictlySorted!821 (t!42077 l!874)))))

(declare-fun res!843709 () Bool)

(assert (=> start!106826 (=> (not res!843709) (not e!721995))))

(assert (=> start!106826 (= res!843709 (isStrictlySorted!821 l!874))))

(assert (=> start!106826 e!721995))

(assert (=> start!106826 e!721996))

(assert (=> start!106826 true))

(declare-fun b!1267336 () Bool)

(declare-fun res!843706 () Bool)

(assert (=> b!1267336 (=> (not res!843706) (not e!721995))))

(assert (=> b!1267336 (= res!843706 (not (containsKey!682 l!874 key!235)))))

(declare-fun b!1267337 () Bool)

(declare-fun res!843708 () Bool)

(assert (=> b!1267337 (=> (not res!843708) (not e!721995))))

(assert (=> b!1267337 (= res!843708 (is-Cons!28539 l!874))))

(assert (= (and start!106826 res!843709) b!1267336))

(assert (= (and b!1267336 res!843706) b!1267337))

(assert (= (and b!1267337 res!843708) b!1267335))

(assert (= (and b!1267335 res!843707) b!1267333))

(assert (= (and start!106826 (is-Cons!28539 l!874)) b!1267334))

(declare-fun m!1166683 () Bool)

(assert (=> b!1267333 m!1166683))

(declare-fun m!1166685 () Bool)

(assert (=> b!1267335 m!1166685))

(declare-fun m!1166687 () Bool)

(assert (=> start!106826 m!1166687))

(declare-fun m!1166689 () Bool)

(assert (=> b!1267336 m!1166689))

(push 1)

(assert (not start!106826))

(assert (not b!1267336))

(assert (not b!1267335))

(assert (not b!1267334))

(assert (not b!1267333))

(assert tp_is_empty!32603)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139383 () Bool)

(declare-fun res!843724 () Bool)

(declare-fun e!722011 () Bool)

(assert (=> d!139383 (=> res!843724 e!722011)))

(assert (=> d!139383 (= res!843724 (or (is-Nil!28540 l!874) (is-Nil!28540 (t!42077 l!874))))))

(assert (=> d!139383 (= (isStrictlySorted!821 l!874) e!722011)))

(declare-fun b!1267352 () Bool)

(declare-fun e!722012 () Bool)

(assert (=> b!1267352 (= e!722011 e!722012)))

(declare-fun res!843725 () Bool)

(assert (=> b!1267352 (=> (not res!843725) (not e!722012))))

(assert (=> b!1267352 (= res!843725 (bvslt (_1!10720 (h!29748 l!874)) (_1!10720 (h!29748 (t!42077 l!874)))))))

(declare-fun b!1267353 () Bool)

(assert (=> b!1267353 (= e!722012 (isStrictlySorted!821 (t!42077 l!874)))))

(assert (= (and d!139383 (not res!843724)) b!1267352))

(assert (= (and b!1267352 res!843725) b!1267353))

(assert (=> b!1267353 m!1166685))

(assert (=> start!106826 d!139383))

(declare-fun d!139387 () Bool)

(declare-fun res!843744 () Bool)

(declare-fun e!722031 () Bool)

(assert (=> d!139387 (=> res!843744 e!722031)))

(assert (=> d!139387 (= res!843744 (and (is-Cons!28539 l!874) (= (_1!10720 (h!29748 l!874)) key!235)))))

(assert (=> d!139387 (= (containsKey!682 l!874 key!235) e!722031)))

(declare-fun b!1267372 () Bool)

(declare-fun e!722032 () Bool)

(assert (=> b!1267372 (= e!722031 e!722032)))

(declare-fun res!843745 () Bool)

(assert (=> b!1267372 (=> (not res!843745) (not e!722032))))

(assert (=> b!1267372 (= res!843745 (and (or (not (is-Cons!28539 l!874)) (bvsle (_1!10720 (h!29748 l!874)) key!235)) (is-Cons!28539 l!874) (bvslt (_1!10720 (h!29748 l!874)) key!235)))))

(declare-fun b!1267373 () Bool)

(assert (=> b!1267373 (= e!722032 (containsKey!682 (t!42077 l!874) key!235))))

(assert (= (and d!139387 (not res!843744)) b!1267372))

(assert (= (and b!1267372 res!843745) b!1267373))

(assert (=> b!1267373 m!1166683))

(assert (=> b!1267336 d!139387))

(declare-fun d!139395 () Bool)

(declare-fun res!843750 () Bool)

(declare-fun e!722037 () Bool)

(assert (=> d!139395 (=> res!843750 e!722037)))

(assert (=> d!139395 (= res!843750 (or (is-Nil!28540 (t!42077 l!874)) (is-Nil!28540 (t!42077 (t!42077 l!874)))))))

(assert (=> d!139395 (= (isStrictlySorted!821 (t!42077 l!874)) e!722037)))

(declare-fun b!1267378 () Bool)

(declare-fun e!722038 () Bool)

(assert (=> b!1267378 (= e!722037 e!722038)))

(declare-fun res!843751 () Bool)

(assert (=> b!1267378 (=> (not res!843751) (not e!722038))))

(assert (=> b!1267378 (= res!843751 (bvslt (_1!10720 (h!29748 (t!42077 l!874))) (_1!10720 (h!29748 (t!42077 (t!42077 l!874))))))))

(declare-fun b!1267379 () Bool)

(assert (=> b!1267379 (= e!722038 (isStrictlySorted!821 (t!42077 (t!42077 l!874))))))

(assert (= (and d!139395 (not res!843750)) b!1267378))

(assert (= (and b!1267378 res!843751) b!1267379))

(declare-fun m!1166695 () Bool)

(assert (=> b!1267379 m!1166695))

(assert (=> b!1267335 d!139395))

(declare-fun d!139401 () Bool)

(declare-fun res!843756 () Bool)

(declare-fun e!722043 () Bool)

(assert (=> d!139401 (=> res!843756 e!722043)))

(assert (=> d!139401 (= res!843756 (and (is-Cons!28539 (t!42077 l!874)) (= (_1!10720 (h!29748 (t!42077 l!874))) key!235)))))

(assert (=> d!139401 (= (containsKey!682 (t!42077 l!874) key!235) e!722043)))

(declare-fun b!1267384 () Bool)

(declare-fun e!722044 () Bool)

(assert (=> b!1267384 (= e!722043 e!722044)))

(declare-fun res!843757 () Bool)

(assert (=> b!1267384 (=> (not res!843757) (not e!722044))))

(assert (=> b!1267384 (= res!843757 (and (or (not (is-Cons!28539 (t!42077 l!874))) (bvsle (_1!10720 (h!29748 (t!42077 l!874))) key!235)) (is-Cons!28539 (t!42077 l!874)) (bvslt (_1!10720 (h!29748 (t!42077 l!874))) key!235)))))

(declare-fun b!1267385 () Bool)

(assert (=> b!1267385 (= e!722044 (containsKey!682 (t!42077 (t!42077 l!874)) key!235))))

(assert (= (and d!139401 (not res!843756)) b!1267384))

(assert (= (and b!1267384 res!843757) b!1267385))

(declare-fun m!1166701 () Bool)

(assert (=> b!1267385 m!1166701))

(assert (=> b!1267333 d!139401))

(declare-fun b!1267400 () Bool)

(declare-fun e!722053 () Bool)

(declare-fun tp!96621 () Bool)

(assert (=> b!1267400 (= e!722053 (and tp_is_empty!32603 tp!96621))))

(assert (=> b!1267334 (= tp!96612 e!722053)))

(assert (= (and b!1267334 (is-Cons!28539 (t!42077 l!874))) b!1267400))

(push 1)

(assert (not b!1267373))

(assert (not b!1267385))

(assert (not b!1267400))

(assert (not b!1267379))

(assert tp_is_empty!32603)

(assert (not b!1267353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

