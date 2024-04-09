; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107928 () Bool)

(assert start!107928)

(declare-fun b!1275018 () Bool)

(declare-fun e!727784 () Bool)

(declare-fun key!173 () (_ BitVec 64))

(declare-datatypes ((B!2178 0))(
  ( (B!2179 (val!16685 Int)) )
))
(declare-datatypes ((tuple2!21598 0))(
  ( (tuple2!21599 (_1!10809 (_ BitVec 64)) (_2!10809 B!2178)) )
))
(declare-datatypes ((List!28769 0))(
  ( (Nil!28766) (Cons!28765 (h!29974 tuple2!21598) (t!42312 List!28769)) )
))
(declare-fun containsKey!706 (List!28769 (_ BitVec 64)) Bool)

(assert (=> b!1275018 (= e!727784 (containsKey!706 Nil!28766 key!173))))

(declare-fun res!847616 () Bool)

(declare-fun e!727785 () Bool)

(assert (=> start!107928 (=> (not res!847616) (not e!727785))))

(declare-fun l!595 () List!28769)

(declare-fun isStrictlySorted!860 (List!28769) Bool)

(assert (=> start!107928 (= res!847616 (isStrictlySorted!860 l!595))))

(assert (=> start!107928 e!727785))

(declare-fun e!727783 () Bool)

(assert (=> start!107928 e!727783))

(assert (=> start!107928 true))

(declare-fun b!1275016 () Bool)

(declare-fun res!847618 () Bool)

(assert (=> b!1275016 (=> (not res!847618) (not e!727785))))

(assert (=> b!1275016 (= res!847618 (and (or (not (is-Cons!28765 l!595)) (not (= (_1!10809 (h!29974 l!595)) key!173))) (or (not (is-Cons!28765 l!595)) (= (_1!10809 (h!29974 l!595)) key!173)) (is-Nil!28766 l!595)))))

(declare-fun b!1275017 () Bool)

(assert (=> b!1275017 (= e!727785 e!727784)))

(declare-fun res!847617 () Bool)

(assert (=> b!1275017 (=> res!847617 e!727784)))

(assert (=> b!1275017 (= res!847617 false)))

(declare-fun b!1275019 () Bool)

(declare-fun tp_is_empty!33221 () Bool)

(declare-fun tp!98085 () Bool)

(assert (=> b!1275019 (= e!727783 (and tp_is_empty!33221 tp!98085))))

(assert (= (and start!107928 res!847616) b!1275016))

(assert (= (and b!1275016 res!847618) b!1275017))

(assert (= (and b!1275017 (not res!847617)) b!1275018))

(assert (= (and start!107928 (is-Cons!28765 l!595)) b!1275019))

(declare-fun m!1171473 () Bool)

(assert (=> b!1275018 m!1171473))

(declare-fun m!1171475 () Bool)

(assert (=> start!107928 m!1171475))

(push 1)

(assert (not b!1275018))

(assert (not start!107928))

(assert (not b!1275019))

(assert tp_is_empty!33221)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140239 () Bool)

(declare-fun res!847629 () Bool)

(declare-fun e!727796 () Bool)

(assert (=> d!140239 (=> res!847629 e!727796)))

(assert (=> d!140239 (= res!847629 (and (is-Cons!28765 Nil!28766) (= (_1!10809 (h!29974 Nil!28766)) key!173)))))

(assert (=> d!140239 (= (containsKey!706 Nil!28766 key!173) e!727796)))

(declare-fun b!1275030 () Bool)

(declare-fun e!727797 () Bool)

(assert (=> b!1275030 (= e!727796 e!727797)))

(declare-fun res!847630 () Bool)

(assert (=> b!1275030 (=> (not res!847630) (not e!727797))))

(assert (=> b!1275030 (= res!847630 (and (or (not (is-Cons!28765 Nil!28766)) (bvsle (_1!10809 (h!29974 Nil!28766)) key!173)) (is-Cons!28765 Nil!28766) (bvslt (_1!10809 (h!29974 Nil!28766)) key!173)))))

(declare-fun b!1275031 () Bool)

(assert (=> b!1275031 (= e!727797 (containsKey!706 (t!42312 Nil!28766) key!173))))

(assert (= (and d!140239 (not res!847629)) b!1275030))

(assert (= (and b!1275030 res!847630) b!1275031))

(declare-fun m!1171479 () Bool)

(assert (=> b!1275031 m!1171479))

(assert (=> b!1275018 d!140239))

(declare-fun d!140245 () Bool)

(declare-fun res!847647 () Bool)

(declare-fun e!727816 () Bool)

(assert (=> d!140245 (=> res!847647 e!727816)))

(assert (=> d!140245 (= res!847647 (or (is-Nil!28766 l!595) (is-Nil!28766 (t!42312 l!595))))))

(assert (=> d!140245 (= (isStrictlySorted!860 l!595) e!727816)))

(declare-fun b!1275052 () Bool)

(declare-fun e!727817 () Bool)

(assert (=> b!1275052 (= e!727816 e!727817)))

(declare-fun res!847648 () Bool)

(assert (=> b!1275052 (=> (not res!847648) (not e!727817))))

(assert (=> b!1275052 (= res!847648 (bvslt (_1!10809 (h!29974 l!595)) (_1!10809 (h!29974 (t!42312 l!595)))))))

(declare-fun b!1275053 () Bool)

(assert (=> b!1275053 (= e!727817 (isStrictlySorted!860 (t!42312 l!595)))))

(assert (= (and d!140245 (not res!847647)) b!1275052))

(assert (= (and b!1275052 res!847648) b!1275053))

(declare-fun m!1171485 () Bool)

(assert (=> b!1275053 m!1171485))

(assert (=> start!107928 d!140245))

(declare-fun b!1275063 () Bool)

(declare-fun e!727825 () Bool)

(declare-fun tp!98091 () Bool)

(assert (=> b!1275063 (= e!727825 (and tp_is_empty!33221 tp!98091))))

(assert (=> b!1275019 (= tp!98085 e!727825)))

(assert (= (and b!1275019 (is-Cons!28765 (t!42312 l!595))) b!1275063))

(push 1)

