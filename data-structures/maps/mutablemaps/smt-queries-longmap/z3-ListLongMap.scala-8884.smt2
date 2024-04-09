; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107926 () Bool)

(assert start!107926)

(declare-fun b!1275006 () Bool)

(declare-fun e!727776 () Bool)

(declare-fun key!173 () (_ BitVec 64))

(declare-datatypes ((B!2176 0))(
  ( (B!2177 (val!16684 Int)) )
))
(declare-datatypes ((tuple2!21596 0))(
  ( (tuple2!21597 (_1!10808 (_ BitVec 64)) (_2!10808 B!2176)) )
))
(declare-datatypes ((List!28768 0))(
  ( (Nil!28765) (Cons!28764 (h!29973 tuple2!21596) (t!42311 List!28768)) )
))
(declare-fun containsKey!705 (List!28768 (_ BitVec 64)) Bool)

(assert (=> b!1275006 (= e!727776 (containsKey!705 Nil!28765 key!173))))

(declare-fun b!1275007 () Bool)

(declare-fun e!727775 () Bool)

(declare-fun tp_is_empty!33219 () Bool)

(declare-fun tp!98082 () Bool)

(assert (=> b!1275007 (= e!727775 (and tp_is_empty!33219 tp!98082))))

(declare-fun res!847609 () Bool)

(declare-fun e!727774 () Bool)

(assert (=> start!107926 (=> (not res!847609) (not e!727774))))

(declare-fun l!595 () List!28768)

(declare-fun isStrictlySorted!859 (List!28768) Bool)

(assert (=> start!107926 (= res!847609 (isStrictlySorted!859 l!595))))

(assert (=> start!107926 e!727774))

(assert (=> start!107926 e!727775))

(assert (=> start!107926 true))

(declare-fun b!1275005 () Bool)

(assert (=> b!1275005 (= e!727774 e!727776)))

(declare-fun res!847607 () Bool)

(assert (=> b!1275005 (=> res!847607 e!727776)))

(assert (=> b!1275005 (= res!847607 false)))

(declare-fun b!1275004 () Bool)

(declare-fun res!847608 () Bool)

(assert (=> b!1275004 (=> (not res!847608) (not e!727774))))

(get-info :version)

(assert (=> b!1275004 (= res!847608 (and (or (not ((_ is Cons!28764) l!595)) (not (= (_1!10808 (h!29973 l!595)) key!173))) (or (not ((_ is Cons!28764) l!595)) (= (_1!10808 (h!29973 l!595)) key!173)) ((_ is Nil!28765) l!595)))))

(assert (= (and start!107926 res!847609) b!1275004))

(assert (= (and b!1275004 res!847608) b!1275005))

(assert (= (and b!1275005 (not res!847607)) b!1275006))

(assert (= (and start!107926 ((_ is Cons!28764) l!595)) b!1275007))

(declare-fun m!1171469 () Bool)

(assert (=> b!1275006 m!1171469))

(declare-fun m!1171471 () Bool)

(assert (=> start!107926 m!1171471))

(check-sat (not b!1275006) (not start!107926) (not b!1275007) tp_is_empty!33219)
(check-sat)
(get-model)

(declare-fun d!140237 () Bool)

(declare-fun res!847627 () Bool)

(declare-fun e!727794 () Bool)

(assert (=> d!140237 (=> res!847627 e!727794)))

(assert (=> d!140237 (= res!847627 (and ((_ is Cons!28764) Nil!28765) (= (_1!10808 (h!29973 Nil!28765)) key!173)))))

(assert (=> d!140237 (= (containsKey!705 Nil!28765 key!173) e!727794)))

(declare-fun b!1275028 () Bool)

(declare-fun e!727795 () Bool)

(assert (=> b!1275028 (= e!727794 e!727795)))

(declare-fun res!847628 () Bool)

(assert (=> b!1275028 (=> (not res!847628) (not e!727795))))

(assert (=> b!1275028 (= res!847628 (and (or (not ((_ is Cons!28764) Nil!28765)) (bvsle (_1!10808 (h!29973 Nil!28765)) key!173)) ((_ is Cons!28764) Nil!28765) (bvslt (_1!10808 (h!29973 Nil!28765)) key!173)))))

(declare-fun b!1275029 () Bool)

(assert (=> b!1275029 (= e!727795 (containsKey!705 (t!42311 Nil!28765) key!173))))

(assert (= (and d!140237 (not res!847627)) b!1275028))

(assert (= (and b!1275028 res!847628) b!1275029))

(declare-fun m!1171477 () Bool)

(assert (=> b!1275029 m!1171477))

(assert (=> b!1275006 d!140237))

(declare-fun d!140243 () Bool)

(declare-fun res!847645 () Bool)

(declare-fun e!727812 () Bool)

(assert (=> d!140243 (=> res!847645 e!727812)))

(assert (=> d!140243 (= res!847645 (or ((_ is Nil!28765) l!595) ((_ is Nil!28765) (t!42311 l!595))))))

(assert (=> d!140243 (= (isStrictlySorted!859 l!595) e!727812)))

(declare-fun b!1275046 () Bool)

(declare-fun e!727813 () Bool)

(assert (=> b!1275046 (= e!727812 e!727813)))

(declare-fun res!847646 () Bool)

(assert (=> b!1275046 (=> (not res!847646) (not e!727813))))

(assert (=> b!1275046 (= res!847646 (bvslt (_1!10808 (h!29973 l!595)) (_1!10808 (h!29973 (t!42311 l!595)))))))

(declare-fun b!1275047 () Bool)

(assert (=> b!1275047 (= e!727813 (isStrictlySorted!859 (t!42311 l!595)))))

(assert (= (and d!140243 (not res!847645)) b!1275046))

(assert (= (and b!1275046 res!847646) b!1275047))

(declare-fun m!1171483 () Bool)

(assert (=> b!1275047 m!1171483))

(assert (=> start!107926 d!140243))

(declare-fun b!1275056 () Bool)

(declare-fun e!727818 () Bool)

(declare-fun tp!98088 () Bool)

(assert (=> b!1275056 (= e!727818 (and tp_is_empty!33219 tp!98088))))

(assert (=> b!1275007 (= tp!98082 e!727818)))

(assert (= (and b!1275007 ((_ is Cons!28764) (t!42311 l!595))) b!1275056))

(check-sat (not b!1275047) (not b!1275029) (not b!1275056) tp_is_empty!33219)
(check-sat)
