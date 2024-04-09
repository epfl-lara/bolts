; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136966 () Bool)

(assert start!136966)

(declare-datatypes ((B!2576 0))(
  ( (B!2577 (val!19650 Int)) )
))
(declare-datatypes ((tuple2!25566 0))(
  ( (tuple2!25567 (_1!12793 (_ BitVec 64)) (_2!12793 B!2576)) )
))
(declare-datatypes ((List!36931 0))(
  ( (Nil!36928) (Cons!36927 (h!38471 tuple2!25566) (t!51852 List!36931)) )
))
(declare-datatypes ((ListLongMap!22917 0))(
  ( (ListLongMap!22918 (toList!11474 List!36931)) )
))
(declare-fun thiss!201 () ListLongMap!22917)

(declare-fun isStrictlySorted!1029 (List!36931) Bool)

(assert (=> start!136966 (not (isStrictlySorted!1029 (toList!11474 thiss!201)))))

(declare-fun e!880890 () Bool)

(declare-fun inv!58936 (ListLongMap!22917) Bool)

(assert (=> start!136966 (and (inv!58936 thiss!201) e!880890)))

(declare-fun b!1579115 () Bool)

(declare-fun tp!114298 () Bool)

(assert (=> b!1579115 (= e!880890 tp!114298)))

(assert (= start!136966 b!1579115))

(declare-fun m!1451039 () Bool)

(assert (=> start!136966 m!1451039))

(declare-fun m!1451041 () Bool)

(assert (=> start!136966 m!1451041))

(push 1)

(assert (not start!136966))

(assert (not b!1579115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166171 () Bool)

(declare-fun res!1079027 () Bool)

(declare-fun e!880905 () Bool)

(assert (=> d!166171 (=> res!1079027 e!880905)))

(assert (=> d!166171 (= res!1079027 (or (is-Nil!36928 (toList!11474 thiss!201)) (is-Nil!36928 (t!51852 (toList!11474 thiss!201)))))))

(assert (=> d!166171 (= (isStrictlySorted!1029 (toList!11474 thiss!201)) e!880905)))

(declare-fun b!1579130 () Bool)

(declare-fun e!880906 () Bool)

(assert (=> b!1579130 (= e!880905 e!880906)))

(declare-fun res!1079028 () Bool)

(assert (=> b!1579130 (=> (not res!1079028) (not e!880906))))

(assert (=> b!1579130 (= res!1079028 (bvslt (_1!12793 (h!38471 (toList!11474 thiss!201))) (_1!12793 (h!38471 (t!51852 (toList!11474 thiss!201))))))))

(declare-fun b!1579131 () Bool)

(assert (=> b!1579131 (= e!880906 (isStrictlySorted!1029 (t!51852 (toList!11474 thiss!201))))))

(assert (= (and d!166171 (not res!1079027)) b!1579130))

(assert (= (and b!1579130 res!1079028) b!1579131))

(declare-fun m!1451051 () Bool)

(assert (=> b!1579131 m!1451051))

(assert (=> start!136966 d!166171))

(declare-fun d!166175 () Bool)

(assert (=> d!166175 (= (inv!58936 thiss!201) (isStrictlySorted!1029 (toList!11474 thiss!201)))))

(declare-fun bs!45721 () Bool)

(assert (= bs!45721 d!166175))

(assert (=> bs!45721 m!1451039))

(assert (=> start!136966 d!166175))

(declare-fun b!1579142 () Bool)

(declare-fun e!880915 () Bool)

(declare-fun tp_is_empty!39121 () Bool)

(declare-fun tp!114307 () Bool)

(assert (=> b!1579142 (= e!880915 (and tp_is_empty!39121 tp!114307))))

(assert (=> b!1579115 (= tp!114298 e!880915)))

(assert (= (and b!1579115 (is-Cons!36927 (toList!11474 thiss!201))) b!1579142))

(push 1)

(assert (not d!166175))

(assert (not b!1579131))

(assert (not b!1579142))

(assert tp_is_empty!39121)

(check-sat)

(pop 1)

