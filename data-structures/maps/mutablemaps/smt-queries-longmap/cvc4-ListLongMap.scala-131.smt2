; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2312 () Bool)

(assert start!2312)

(declare-fun res!11530 () Bool)

(declare-fun e!9171 () Bool)

(assert (=> start!2312 (=> (not res!11530) (not e!9171))))

(declare-datatypes ((B!588 0))(
  ( (B!589 (val!392 Int)) )
))
(declare-datatypes ((tuple2!566 0))(
  ( (tuple2!567 (_1!283 (_ BitVec 64)) (_2!283 B!588)) )
))
(declare-datatypes ((List!445 0))(
  ( (Nil!442) (Cons!441 (h!1007 tuple2!566) (t!2847 List!445)) )
))
(declare-datatypes ((ListLongMap!397 0))(
  ( (ListLongMap!398 (toList!214 List!445)) )
))
(declare-fun thiss!169 () ListLongMap!397)

(declare-fun isEmpty!113 (ListLongMap!397) Bool)

(assert (=> start!2312 (= res!11530 (not (isEmpty!113 thiss!169)))))

(assert (=> start!2312 e!9171))

(declare-fun e!9172 () Bool)

(declare-fun inv!754 (ListLongMap!397) Bool)

(assert (=> start!2312 (and (inv!754 thiss!169) e!9172)))

(declare-fun b!15169 () Bool)

(assert (=> b!15169 (= e!9171 (= (toList!214 thiss!169) Nil!442))))

(declare-fun b!15170 () Bool)

(declare-fun tp!2453 () Bool)

(assert (=> b!15170 (= e!9172 tp!2453)))

(assert (= (and start!2312 res!11530) b!15169))

(assert (= start!2312 b!15170))

(declare-fun m!10095 () Bool)

(assert (=> start!2312 m!10095))

(declare-fun m!10097 () Bool)

(assert (=> start!2312 m!10097))

(push 1)

(assert (not start!2312))

(assert (not b!15170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2529 () Bool)

(declare-fun isEmpty!116 (List!445) Bool)

(assert (=> d!2529 (= (isEmpty!113 thiss!169) (isEmpty!116 (toList!214 thiss!169)))))

(declare-fun bs!636 () Bool)

(assert (= bs!636 d!2529))

(declare-fun m!10107 () Bool)

(assert (=> bs!636 m!10107))

(assert (=> start!2312 d!2529))

(declare-fun d!2531 () Bool)

(declare-fun isStrictlySorted!133 (List!445) Bool)

(assert (=> d!2531 (= (inv!754 thiss!169) (isStrictlySorted!133 (toList!214 thiss!169)))))

(declare-fun bs!637 () Bool)

(assert (= bs!637 d!2531))

(declare-fun m!10109 () Bool)

(assert (=> bs!637 m!10109))

(assert (=> start!2312 d!2531))

(declare-fun b!15185 () Bool)

(declare-fun e!9181 () Bool)

(declare-fun tp_is_empty!767 () Bool)

(declare-fun tp!2462 () Bool)

(assert (=> b!15185 (= e!9181 (and tp_is_empty!767 tp!2462))))

(assert (=> b!15170 (= tp!2453 e!9181)))

(assert (= (and b!15170 (is-Cons!441 (toList!214 thiss!169))) b!15185))

(push 1)

(assert (not d!2531))

(assert (not d!2529))

(assert (not b!15185))

(assert tp_is_empty!767)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

