; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107858 () Bool)

(assert start!107858)

(declare-fun b!1274630 () Bool)

(declare-fun e!727483 () Bool)

(declare-fun e!727485 () Bool)

(assert (=> b!1274630 (= e!727483 e!727485)))

(declare-fun res!847382 () Bool)

(assert (=> b!1274630 (=> res!847382 e!727485)))

(declare-datatypes ((B!2156 0))(
  ( (B!2157 (val!16674 Int)) )
))
(declare-datatypes ((tuple2!21576 0))(
  ( (tuple2!21577 (_1!10798 (_ BitVec 64)) (_2!10798 B!2156)) )
))
(declare-datatypes ((List!28758 0))(
  ( (Nil!28755) (Cons!28754 (h!29963 tuple2!21576) (t!42298 List!28758)) )
))
(declare-fun l!595 () List!28758)

(declare-fun isStrictlySorted!849 (List!28758) Bool)

(assert (=> b!1274630 (= res!847382 (not (isStrictlySorted!849 (t!42298 l!595))))))

(declare-fun b!1274632 () Bool)

(declare-fun e!727484 () Bool)

(declare-fun tp_is_empty!33199 () Bool)

(declare-fun tp!98022 () Bool)

(assert (=> b!1274632 (= e!727484 (and tp_is_empty!33199 tp!98022))))

(declare-fun b!1274631 () Bool)

(declare-fun key!173 () (_ BitVec 64))

(declare-fun containsKey!698 (List!28758 (_ BitVec 64)) Bool)

(assert (=> b!1274631 (= e!727485 (containsKey!698 (t!42298 l!595) key!173))))

(declare-fun res!847383 () Bool)

(assert (=> start!107858 (=> (not res!847383) (not e!727483))))

(assert (=> start!107858 (= res!847383 (isStrictlySorted!849 l!595))))

(assert (=> start!107858 e!727483))

(assert (=> start!107858 e!727484))

(assert (=> start!107858 true))

(declare-fun b!1274629 () Bool)

(declare-fun res!847384 () Bool)

(assert (=> b!1274629 (=> (not res!847384) (not e!727483))))

(assert (=> b!1274629 (= res!847384 (and (is-Cons!28754 l!595) (= (_1!10798 (h!29963 l!595)) key!173)))))

(assert (= (and start!107858 res!847383) b!1274629))

(assert (= (and b!1274629 res!847384) b!1274630))

(assert (= (and b!1274630 (not res!847382)) b!1274631))

(assert (= (and start!107858 (is-Cons!28754 l!595)) b!1274632))

(declare-fun m!1171279 () Bool)

(assert (=> b!1274630 m!1171279))

(declare-fun m!1171281 () Bool)

(assert (=> b!1274631 m!1171281))

(declare-fun m!1171283 () Bool)

(assert (=> start!107858 m!1171283))

(push 1)

(assert (not start!107858))

(assert (not b!1274631))

(assert (not b!1274632))

(assert tp_is_empty!33199)

(assert (not b!1274630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140127 () Bool)

(declare-fun res!847419 () Bool)

(declare-fun e!727520 () Bool)

(assert (=> d!140127 (=> res!847419 e!727520)))

(assert (=> d!140127 (= res!847419 (or (is-Nil!28755 l!595) (is-Nil!28755 (t!42298 l!595))))))

(assert (=> d!140127 (= (isStrictlySorted!849 l!595) e!727520)))

(declare-fun b!1274673 () Bool)

(declare-fun e!727521 () Bool)

(assert (=> b!1274673 (= e!727520 e!727521)))

(declare-fun res!847420 () Bool)

(assert (=> b!1274673 (=> (not res!847420) (not e!727521))))

(assert (=> b!1274673 (= res!847420 (bvslt (_1!10798 (h!29963 l!595)) (_1!10798 (h!29963 (t!42298 l!595)))))))

(declare-fun b!1274674 () Bool)

(assert (=> b!1274674 (= e!727521 (isStrictlySorted!849 (t!42298 l!595)))))

(assert (= (and d!140127 (not res!847419)) b!1274673))

(assert (= (and b!1274673 res!847420) b!1274674))

(assert (=> b!1274674 m!1171279))

(assert (=> start!107858 d!140127))

(declare-fun d!140133 () Bool)

(declare-fun res!847431 () Bool)

(declare-fun e!727532 () Bool)

(assert (=> d!140133 (=> res!847431 e!727532)))

(assert (=> d!140133 (= res!847431 (and (is-Cons!28754 (t!42298 l!595)) (= (_1!10798 (h!29963 (t!42298 l!595))) key!173)))))

(assert (=> d!140133 (= (containsKey!698 (t!42298 l!595) key!173) e!727532)))

(declare-fun b!1274685 () Bool)

(declare-fun e!727533 () Bool)

(assert (=> b!1274685 (= e!727532 e!727533)))

(declare-fun res!847432 () Bool)

(assert (=> b!1274685 (=> (not res!847432) (not e!727533))))

(assert (=> b!1274685 (= res!847432 (and (or (not (is-Cons!28754 (t!42298 l!595))) (bvsle (_1!10798 (h!29963 (t!42298 l!595))) key!173)) (is-Cons!28754 (t!42298 l!595)) (bvslt (_1!10798 (h!29963 (t!42298 l!595))) key!173)))))

(declare-fun b!1274686 () Bool)

(assert (=> b!1274686 (= e!727533 (containsKey!698 (t!42298 (t!42298 l!595)) key!173))))

(assert (= (and d!140133 (not res!847431)) b!1274685))

(assert (= (and b!1274685 res!847432) b!1274686))

(declare-fun m!1171301 () Bool)

(assert (=> b!1274686 m!1171301))

(assert (=> b!1274631 d!140133))

(declare-fun d!140137 () Bool)

(declare-fun res!847433 () Bool)

(declare-fun e!727534 () Bool)

(assert (=> d!140137 (=> res!847433 e!727534)))

(assert (=> d!140137 (= res!847433 (or (is-Nil!28755 (t!42298 l!595)) (is-Nil!28755 (t!42298 (t!42298 l!595)))))))

(assert (=> d!140137 (= (isStrictlySorted!849 (t!42298 l!595)) e!727534)))

(declare-fun b!1274687 () Bool)

(declare-fun e!727535 () Bool)

(assert (=> b!1274687 (= e!727534 e!727535)))

(declare-fun res!847434 () Bool)

(assert (=> b!1274687 (=> (not res!847434) (not e!727535))))

(assert (=> b!1274687 (= res!847434 (bvslt (_1!10798 (h!29963 (t!42298 l!595))) (_1!10798 (h!29963 (t!42298 (t!42298 l!595))))))))

(declare-fun b!1274688 () Bool)

(assert (=> b!1274688 (= e!727535 (isStrictlySorted!849 (t!42298 (t!42298 l!595))))))

(assert (= (and d!140137 (not res!847433)) b!1274687))

(assert (= (and b!1274687 res!847434) b!1274688))

(declare-fun m!1171303 () Bool)

(assert (=> b!1274688 m!1171303))

(assert (=> b!1274630 d!140137))

(declare-fun b!1274697 () Bool)

(declare-fun e!727542 () Bool)

(declare-fun tp!98031 () Bool)

(assert (=> b!1274697 (= e!727542 (and tp_is_empty!33199 tp!98031))))

(assert (=> b!1274632 (= tp!98022 e!727542)))

(assert (= (and b!1274632 (is-Cons!28754 (t!42298 l!595))) b!1274697))

(push 1)

(assert (not b!1274674))

(assert (not b!1274688))

(assert tp_is_empty!33199)

(assert (not b!1274697))

(assert (not b!1274686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

