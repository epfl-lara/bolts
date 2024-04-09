; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107810 () Bool)

(assert start!107810)

(declare-fun res!847293 () Bool)

(declare-fun e!727340 () Bool)

(assert (=> start!107810 (=> (not res!847293) (not e!727340))))

(declare-datatypes ((B!2126 0))(
  ( (B!2127 (val!16659 Int)) )
))
(declare-datatypes ((tuple2!21546 0))(
  ( (tuple2!21547 (_1!10783 (_ BitVec 64)) (_2!10783 B!2126)) )
))
(declare-datatypes ((List!28743 0))(
  ( (Nil!28740) (Cons!28739 (h!29948 tuple2!21546) (t!42283 List!28743)) )
))
(declare-fun l!595 () List!28743)

(declare-fun isStrictlySorted!840 (List!28743) Bool)

(assert (=> start!107810 (= res!847293 (isStrictlySorted!840 l!595))))

(assert (=> start!107810 e!727340))

(declare-fun e!727341 () Bool)

(assert (=> start!107810 e!727341))

(assert (=> start!107810 true))

(declare-fun b!1274447 () Bool)

(declare-fun res!847294 () Bool)

(assert (=> b!1274447 (=> (not res!847294) (not e!727340))))

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1274447 (= res!847294 (and (not (= (_1!10783 (h!29948 l!595)) key!173)) (is-Cons!28739 l!595)))))

(declare-fun b!1274448 () Bool)

(assert (=> b!1274448 (= e!727340 (not (isStrictlySorted!840 (t!42283 l!595))))))

(declare-fun b!1274449 () Bool)

(declare-fun tp_is_empty!33169 () Bool)

(declare-fun tp!97959 () Bool)

(assert (=> b!1274449 (= e!727341 (and tp_is_empty!33169 tp!97959))))

(assert (= (and start!107810 res!847293) b!1274447))

(assert (= (and b!1274447 res!847294) b!1274448))

(assert (= (and start!107810 (is-Cons!28739 l!595)) b!1274449))

(declare-fun m!1171213 () Bool)

(assert (=> start!107810 m!1171213))

(declare-fun m!1171215 () Bool)

(assert (=> b!1274448 m!1171215))

(push 1)

(assert (not b!1274448))

(assert (not start!107810))

(assert (not b!1274449))

(assert tp_is_empty!33169)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140093 () Bool)

(declare-fun res!847327 () Bool)

(declare-fun e!727380 () Bool)

(assert (=> d!140093 (=> res!847327 e!727380)))

(assert (=> d!140093 (= res!847327 (or (is-Nil!28740 (t!42283 l!595)) (is-Nil!28740 (t!42283 (t!42283 l!595)))))))

(assert (=> d!140093 (= (isStrictlySorted!840 (t!42283 l!595)) e!727380)))

(declare-fun b!1274498 () Bool)

(declare-fun e!727381 () Bool)

(assert (=> b!1274498 (= e!727380 e!727381)))

(declare-fun res!847328 () Bool)

(assert (=> b!1274498 (=> (not res!847328) (not e!727381))))

(assert (=> b!1274498 (= res!847328 (bvslt (_1!10783 (h!29948 (t!42283 l!595))) (_1!10783 (h!29948 (t!42283 (t!42283 l!595))))))))

(declare-fun b!1274499 () Bool)

(assert (=> b!1274499 (= e!727381 (isStrictlySorted!840 (t!42283 (t!42283 l!595))))))

(assert (= (and d!140093 (not res!847327)) b!1274498))

(assert (= (and b!1274498 res!847328) b!1274499))

(declare-fun m!1171229 () Bool)

(assert (=> b!1274499 m!1171229))

(assert (=> b!1274448 d!140093))

(declare-fun d!140099 () Bool)

(declare-fun res!847329 () Bool)

(declare-fun e!727382 () Bool)

(assert (=> d!140099 (=> res!847329 e!727382)))

(assert (=> d!140099 (= res!847329 (or (is-Nil!28740 l!595) (is-Nil!28740 (t!42283 l!595))))))

(assert (=> d!140099 (= (isStrictlySorted!840 l!595) e!727382)))

(declare-fun b!1274500 () Bool)

(declare-fun e!727383 () Bool)

(assert (=> b!1274500 (= e!727382 e!727383)))

(declare-fun res!847330 () Bool)

(assert (=> b!1274500 (=> (not res!847330) (not e!727383))))

(assert (=> b!1274500 (= res!847330 (bvslt (_1!10783 (h!29948 l!595)) (_1!10783 (h!29948 (t!42283 l!595)))))))

(declare-fun b!1274501 () Bool)

(assert (=> b!1274501 (= e!727383 (isStrictlySorted!840 (t!42283 l!595)))))

(assert (= (and d!140099 (not res!847329)) b!1274500))

(assert (= (and b!1274500 res!847330) b!1274501))

(assert (=> b!1274501 m!1171215))

(assert (=> start!107810 d!140099))

(declare-fun b!1274506 () Bool)

(declare-fun e!727386 () Bool)

(declare-fun tp!97974 () Bool)

(assert (=> b!1274506 (= e!727386 (and tp_is_empty!33169 tp!97974))))

(assert (=> b!1274449 (= tp!97959 e!727386)))

(assert (= (and b!1274449 (is-Cons!28739 (t!42283 l!595))) b!1274506))

(push 1)

