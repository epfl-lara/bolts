; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138060 () Bool)

(assert start!138060)

(declare-fun b!1584038 () Bool)

(declare-fun res!1082046 () Bool)

(declare-fun e!884258 () Bool)

(assert (=> b!1584038 (=> (not res!1082046) (not e!884258))))

(declare-datatypes ((B!2908 0))(
  ( (B!2909 (val!19816 Int)) )
))
(declare-datatypes ((tuple2!25964 0))(
  ( (tuple2!25965 (_1!12992 (_ BitVec 64)) (_2!12992 B!2908)) )
))
(declare-datatypes ((List!37097 0))(
  ( (Nil!37094) (Cons!37093 (h!38637 tuple2!25964) (t!52018 List!37097)) )
))
(declare-fun l!1251 () List!37097)

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!993 (List!37097 (_ BitVec 64)) Bool)

(assert (=> b!1584038 (= res!1082046 (not (containsKey!993 l!1251 otherKey!56)))))

(declare-fun res!1082048 () Bool)

(assert (=> start!138060 (=> (not res!1082048) (not e!884258))))

(declare-fun isStrictlySorted!1159 (List!37097) Bool)

(assert (=> start!138060 (= res!1082048 (isStrictlySorted!1159 l!1251))))

(assert (=> start!138060 e!884258))

(declare-fun e!884259 () Bool)

(assert (=> start!138060 e!884259))

(assert (=> start!138060 true))

(declare-fun b!1584041 () Bool)

(declare-fun tp_is_empty!39441 () Bool)

(declare-fun tp!115072 () Bool)

(assert (=> b!1584041 (= e!884259 (and tp_is_empty!39441 tp!115072))))

(declare-fun b!1584040 () Bool)

(declare-fun ListPrimitiveSize!218 (List!37097) Int)

(assert (=> b!1584040 (= e!884258 (< (ListPrimitiveSize!218 l!1251) 0))))

(declare-fun b!1584039 () Bool)

(declare-fun res!1082047 () Bool)

(assert (=> b!1584039 (=> (not res!1082047) (not e!884258))))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1584039 (= res!1082047 (not (= otherKey!56 newKey!123)))))

(assert (= (and start!138060 res!1082048) b!1584038))

(assert (= (and b!1584038 res!1082046) b!1584039))

(assert (= (and b!1584039 res!1082047) b!1584040))

(get-info :version)

(assert (= (and start!138060 ((_ is Cons!37093) l!1251)) b!1584041))

(declare-fun m!1453553 () Bool)

(assert (=> b!1584038 m!1453553))

(declare-fun m!1453555 () Bool)

(assert (=> start!138060 m!1453555))

(declare-fun m!1453557 () Bool)

(assert (=> b!1584040 m!1453557))

(check-sat (not b!1584040) (not start!138060) (not b!1584038) (not b!1584041) tp_is_empty!39441)
(check-sat)
(get-model)

(declare-fun d!167307 () Bool)

(declare-fun res!1082062 () Bool)

(declare-fun e!884273 () Bool)

(assert (=> d!167307 (=> res!1082062 e!884273)))

(assert (=> d!167307 (= res!1082062 (or ((_ is Nil!37094) l!1251) ((_ is Nil!37094) (t!52018 l!1251))))))

(assert (=> d!167307 (= (isStrictlySorted!1159 l!1251) e!884273)))

(declare-fun b!1584064 () Bool)

(declare-fun e!884274 () Bool)

(assert (=> b!1584064 (= e!884273 e!884274)))

(declare-fun res!1082063 () Bool)

(assert (=> b!1584064 (=> (not res!1082063) (not e!884274))))

(assert (=> b!1584064 (= res!1082063 (bvslt (_1!12992 (h!38637 l!1251)) (_1!12992 (h!38637 (t!52018 l!1251)))))))

(declare-fun b!1584065 () Bool)

(assert (=> b!1584065 (= e!884274 (isStrictlySorted!1159 (t!52018 l!1251)))))

(assert (= (and d!167307 (not res!1082062)) b!1584064))

(assert (= (and b!1584064 res!1082063) b!1584065))

(declare-fun m!1453567 () Bool)

(assert (=> b!1584065 m!1453567))

(assert (=> start!138060 d!167307))

(declare-fun d!167313 () Bool)

(declare-fun res!1082080 () Bool)

(declare-fun e!884291 () Bool)

(assert (=> d!167313 (=> res!1082080 e!884291)))

(assert (=> d!167313 (= res!1082080 (and ((_ is Cons!37093) l!1251) (= (_1!12992 (h!38637 l!1251)) otherKey!56)))))

(assert (=> d!167313 (= (containsKey!993 l!1251 otherKey!56) e!884291)))

(declare-fun b!1584082 () Bool)

(declare-fun e!884292 () Bool)

(assert (=> b!1584082 (= e!884291 e!884292)))

(declare-fun res!1082081 () Bool)

(assert (=> b!1584082 (=> (not res!1082081) (not e!884292))))

(assert (=> b!1584082 (= res!1082081 (and (or (not ((_ is Cons!37093) l!1251)) (bvsle (_1!12992 (h!38637 l!1251)) otherKey!56)) ((_ is Cons!37093) l!1251) (bvslt (_1!12992 (h!38637 l!1251)) otherKey!56)))))

(declare-fun b!1584083 () Bool)

(assert (=> b!1584083 (= e!884292 (containsKey!993 (t!52018 l!1251) otherKey!56))))

(assert (= (and d!167313 (not res!1082080)) b!1584082))

(assert (= (and b!1584082 res!1082081) b!1584083))

(declare-fun m!1453573 () Bool)

(assert (=> b!1584083 m!1453573))

(assert (=> b!1584038 d!167313))

(declare-fun d!167319 () Bool)

(declare-fun lt!677167 () Int)

(assert (=> d!167319 (>= lt!677167 0)))

(declare-fun e!884304 () Int)

(assert (=> d!167319 (= lt!677167 e!884304)))

(declare-fun c!146784 () Bool)

(assert (=> d!167319 (= c!146784 ((_ is Nil!37094) l!1251))))

(assert (=> d!167319 (= (ListPrimitiveSize!218 l!1251) lt!677167)))

(declare-fun b!1584100 () Bool)

(assert (=> b!1584100 (= e!884304 0)))

(declare-fun b!1584101 () Bool)

(assert (=> b!1584101 (= e!884304 (+ 1 (ListPrimitiveSize!218 (t!52018 l!1251))))))

(assert (= (and d!167319 c!146784) b!1584100))

(assert (= (and d!167319 (not c!146784)) b!1584101))

(declare-fun m!1453579 () Bool)

(assert (=> b!1584101 m!1453579))

(assert (=> b!1584040 d!167319))

(declare-fun b!1584115 () Bool)

(declare-fun e!884314 () Bool)

(declare-fun tp!115081 () Bool)

(assert (=> b!1584115 (= e!884314 (and tp_is_empty!39441 tp!115081))))

(assert (=> b!1584041 (= tp!115072 e!884314)))

(assert (= (and b!1584041 ((_ is Cons!37093) (t!52018 l!1251))) b!1584115))

(check-sat (not b!1584083) (not b!1584115) (not b!1584065) (not b!1584101) tp_is_empty!39441)
(check-sat)
