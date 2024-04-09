; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43694 () Bool)

(assert start!43694)

(declare-fun res!288143 () Bool)

(declare-fun e!284550 () Bool)

(assert (=> start!43694 (=> (not res!288143) (not e!284550))))

(declare-datatypes ((B!1068 0))(
  ( (B!1069 (val!6986 Int)) )
))
(declare-datatypes ((tuple2!9170 0))(
  ( (tuple2!9171 (_1!4595 (_ BitVec 64)) (_2!4595 B!1068)) )
))
(declare-datatypes ((List!9285 0))(
  ( (Nil!9282) (Cons!9281 (h!10137 tuple2!9170) (t!15515 List!9285)) )
))
(declare-datatypes ((ListLongMap!8097 0))(
  ( (ListLongMap!8098 (toList!4064 List!9285)) )
))
(declare-fun thiss!180 () ListLongMap!8097)

(declare-fun isEmpty!624 (ListLongMap!8097) Bool)

(assert (=> start!43694 (= res!288143 (not (isEmpty!624 thiss!180)))))

(assert (=> start!43694 e!284550))

(declare-fun e!284551 () Bool)

(declare-fun inv!15793 (ListLongMap!8097) Bool)

(assert (=> start!43694 (and (inv!15793 thiss!180) e!284551)))

(declare-fun b!483493 () Bool)

(assert (=> b!483493 (= e!284550 (= (toList!4064 thiss!180) Nil!9282))))

(declare-fun b!483494 () Bool)

(declare-fun tp!43381 () Bool)

(assert (=> b!483494 (= e!284551 tp!43381)))

(assert (= (and start!43694 res!288143) b!483493))

(assert (= start!43694 b!483494))

(declare-fun m!464481 () Bool)

(assert (=> start!43694 m!464481))

(declare-fun m!464483 () Bool)

(assert (=> start!43694 m!464483))

(push 1)

(assert (not start!43694))

(assert (not b!483494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76819 () Bool)

(declare-fun isEmpty!627 (List!9285) Bool)

(assert (=> d!76819 (= (isEmpty!624 thiss!180) (isEmpty!627 (toList!4064 thiss!180)))))

(declare-fun bs!15371 () Bool)

(assert (= bs!15371 d!76819))

(declare-fun m!464489 () Bool)

(assert (=> bs!15371 m!464489))

(assert (=> start!43694 d!76819))

(declare-fun d!76825 () Bool)

(declare-fun isStrictlySorted!391 (List!9285) Bool)

(assert (=> d!76825 (= (inv!15793 thiss!180) (isStrictlySorted!391 (toList!4064 thiss!180)))))

(declare-fun bs!15374 () Bool)

(assert (= bs!15374 d!76825))

(declare-fun m!464495 () Bool)

(assert (=> bs!15374 m!464495))

(assert (=> start!43694 d!76825))

(declare-fun b!483509 () Bool)

(declare-fun e!284560 () Bool)

(declare-fun tp_is_empty!13877 () Bool)

(declare-fun tp!43390 () Bool)

(assert (=> b!483509 (= e!284560 (and tp_is_empty!13877 tp!43390))))

(assert (=> b!483494 (= tp!43381 e!284560)))

(assert (= (and b!483494 (is-Cons!9281 (toList!4064 thiss!180))) b!483509))

(push 1)

(assert (not d!76825))

(assert (not d!76819))

(assert (not b!483509))

(assert tp_is_empty!13877)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76833 () Bool)

(declare-fun res!288160 () Bool)

(declare-fun e!284579 () Bool)

(assert (=> d!76833 (=> res!288160 e!284579)))

(assert (=> d!76833 (= res!288160 (or (is-Nil!9282 (toList!4064 thiss!180)) (is-Nil!9282 (t!15515 (toList!4064 thiss!180)))))))

(assert (=> d!76833 (= (isStrictlySorted!391 (toList!4064 thiss!180)) e!284579)))

(declare-fun b!483528 () Bool)

(declare-fun e!284580 () Bool)

(assert (=> b!483528 (= e!284579 e!284580)))

(declare-fun res!288161 () Bool)

(assert (=> b!483528 (=> (not res!288161) (not e!284580))))

(assert (=> b!483528 (= res!288161 (bvslt (_1!4595 (h!10137 (toList!4064 thiss!180))) (_1!4595 (h!10137 (t!15515 (toList!4064 thiss!180))))))))

(declare-fun b!483529 () Bool)

(assert (=> b!483529 (= e!284580 (isStrictlySorted!391 (t!15515 (toList!4064 thiss!180))))))

(assert (= (and d!76833 (not res!288160)) b!483528))

(assert (= (and b!483528 res!288161) b!483529))

(declare-fun m!464501 () Bool)

(assert (=> b!483529 m!464501))

(assert (=> d!76825 d!76833))

(declare-fun d!76837 () Bool)

(assert (=> d!76837 (= (isEmpty!627 (toList!4064 thiss!180)) (is-Nil!9282 (toList!4064 thiss!180)))))

(assert (=> d!76819 d!76837))

