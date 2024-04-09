; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107812 () Bool)

(assert start!107812)

(declare-fun res!847299 () Bool)

(declare-fun e!727346 () Bool)

(assert (=> start!107812 (=> (not res!847299) (not e!727346))))

(declare-datatypes ((B!2128 0))(
  ( (B!2129 (val!16660 Int)) )
))
(declare-datatypes ((tuple2!21548 0))(
  ( (tuple2!21549 (_1!10784 (_ BitVec 64)) (_2!10784 B!2128)) )
))
(declare-datatypes ((List!28744 0))(
  ( (Nil!28741) (Cons!28740 (h!29949 tuple2!21548) (t!42284 List!28744)) )
))
(declare-fun l!595 () List!28744)

(declare-fun isStrictlySorted!841 (List!28744) Bool)

(assert (=> start!107812 (= res!847299 (isStrictlySorted!841 l!595))))

(assert (=> start!107812 e!727346))

(declare-fun e!727347 () Bool)

(assert (=> start!107812 e!727347))

(assert (=> start!107812 true))

(declare-fun b!1274456 () Bool)

(declare-fun res!847300 () Bool)

(assert (=> b!1274456 (=> (not res!847300) (not e!727346))))

(declare-fun key!173 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1274456 (= res!847300 (and (not (= (_1!10784 (h!29949 l!595)) key!173)) ((_ is Cons!28740) l!595)))))

(declare-fun b!1274457 () Bool)

(assert (=> b!1274457 (= e!727346 (not (isStrictlySorted!841 (t!42284 l!595))))))

(declare-fun b!1274458 () Bool)

(declare-fun tp_is_empty!33171 () Bool)

(declare-fun tp!97962 () Bool)

(assert (=> b!1274458 (= e!727347 (and tp_is_empty!33171 tp!97962))))

(assert (= (and start!107812 res!847299) b!1274456))

(assert (= (and b!1274456 res!847300) b!1274457))

(assert (= (and start!107812 ((_ is Cons!28740) l!595)) b!1274458))

(declare-fun m!1171217 () Bool)

(assert (=> start!107812 m!1171217))

(declare-fun m!1171219 () Bool)

(assert (=> b!1274457 m!1171219))

(check-sat (not start!107812) (not b!1274457) (not b!1274458) tp_is_empty!33171)
(check-sat)
(get-model)

(declare-fun d!140091 () Bool)

(declare-fun res!847319 () Bool)

(declare-fun e!727366 () Bool)

(assert (=> d!140091 (=> res!847319 e!727366)))

(assert (=> d!140091 (= res!847319 (or ((_ is Nil!28741) l!595) ((_ is Nil!28741) (t!42284 l!595))))))

(assert (=> d!140091 (= (isStrictlySorted!841 l!595) e!727366)))

(declare-fun b!1274480 () Bool)

(declare-fun e!727367 () Bool)

(assert (=> b!1274480 (= e!727366 e!727367)))

(declare-fun res!847320 () Bool)

(assert (=> b!1274480 (=> (not res!847320) (not e!727367))))

(assert (=> b!1274480 (= res!847320 (bvslt (_1!10784 (h!29949 l!595)) (_1!10784 (h!29949 (t!42284 l!595)))))))

(declare-fun b!1274481 () Bool)

(assert (=> b!1274481 (= e!727367 (isStrictlySorted!841 (t!42284 l!595)))))

(assert (= (and d!140091 (not res!847319)) b!1274480))

(assert (= (and b!1274480 res!847320) b!1274481))

(assert (=> b!1274481 m!1171219))

(assert (=> start!107812 d!140091))

(declare-fun d!140097 () Bool)

(declare-fun res!847321 () Bool)

(declare-fun e!727370 () Bool)

(assert (=> d!140097 (=> res!847321 e!727370)))

(assert (=> d!140097 (= res!847321 (or ((_ is Nil!28741) (t!42284 l!595)) ((_ is Nil!28741) (t!42284 (t!42284 l!595)))))))

(assert (=> d!140097 (= (isStrictlySorted!841 (t!42284 l!595)) e!727370)))

(declare-fun b!1274486 () Bool)

(declare-fun e!727373 () Bool)

(assert (=> b!1274486 (= e!727370 e!727373)))

(declare-fun res!847323 () Bool)

(assert (=> b!1274486 (=> (not res!847323) (not e!727373))))

(assert (=> b!1274486 (= res!847323 (bvslt (_1!10784 (h!29949 (t!42284 l!595))) (_1!10784 (h!29949 (t!42284 (t!42284 l!595))))))))

(declare-fun b!1274487 () Bool)

(assert (=> b!1274487 (= e!727373 (isStrictlySorted!841 (t!42284 (t!42284 l!595))))))

(assert (= (and d!140097 (not res!847321)) b!1274486))

(assert (= (and b!1274486 res!847323) b!1274487))

(declare-fun m!1171227 () Bool)

(assert (=> b!1274487 m!1171227))

(assert (=> b!1274457 d!140097))

(declare-fun b!1274497 () Bool)

(declare-fun e!727379 () Bool)

(declare-fun tp!97971 () Bool)

(assert (=> b!1274497 (= e!727379 (and tp_is_empty!33171 tp!97971))))

(assert (=> b!1274458 (= tp!97962 e!727379)))

(assert (= (and b!1274458 ((_ is Cons!28740) (t!42284 l!595))) b!1274497))

(check-sat (not b!1274481) (not b!1274487) (not b!1274497) tp_is_empty!33171)
(check-sat)
