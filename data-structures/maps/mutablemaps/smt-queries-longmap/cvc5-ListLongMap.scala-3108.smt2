; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43720 () Bool)

(assert start!43720)

(declare-fun res!288164 () Bool)

(declare-fun e!284586 () Bool)

(assert (=> start!43720 (=> (not res!288164) (not e!284586))))

(declare-datatypes ((B!1070 0))(
  ( (B!1071 (val!6987 Int)) )
))
(declare-datatypes ((tuple2!9172 0))(
  ( (tuple2!9173 (_1!4596 (_ BitVec 64)) (_2!4596 B!1070)) )
))
(declare-datatypes ((List!9286 0))(
  ( (Nil!9283) (Cons!9282 (h!10138 tuple2!9172) (t!15516 List!9286)) )
))
(declare-datatypes ((ListLongMap!8099 0))(
  ( (ListLongMap!8100 (toList!4065 List!9286)) )
))
(declare-fun thiss!180 () ListLongMap!8099)

(declare-fun isEmpty!628 (ListLongMap!8099) Bool)

(assert (=> start!43720 (= res!288164 (not (isEmpty!628 thiss!180)))))

(assert (=> start!43720 e!284586))

(declare-fun e!284587 () Bool)

(declare-fun inv!15799 (ListLongMap!8099) Bool)

(assert (=> start!43720 (and (inv!15799 thiss!180) e!284587)))

(declare-fun b!483535 () Bool)

(declare-fun tail!131 (List!9286) List!9286)

(assert (=> b!483535 (= e!284586 (not (inv!15799 (ListLongMap!8100 (tail!131 (toList!4065 thiss!180))))))))

(declare-fun b!483536 () Bool)

(declare-fun tp!43396 () Bool)

(assert (=> b!483536 (= e!284587 tp!43396)))

(assert (= (and start!43720 res!288164) b!483535))

(assert (= start!43720 b!483536))

(declare-fun m!464503 () Bool)

(assert (=> start!43720 m!464503))

(declare-fun m!464505 () Bool)

(assert (=> start!43720 m!464505))

(declare-fun m!464507 () Bool)

(assert (=> b!483535 m!464507))

(declare-fun m!464509 () Bool)

(assert (=> b!483535 m!464509))

(push 1)

(assert (not start!43720))

(assert (not b!483535))

(assert (not b!483536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76841 () Bool)

(declare-fun isEmpty!633 (List!9286) Bool)

(assert (=> d!76841 (= (isEmpty!628 thiss!180) (isEmpty!633 (toList!4065 thiss!180)))))

(declare-fun bs!15379 () Bool)

(assert (= bs!15379 d!76841))

(declare-fun m!464529 () Bool)

(assert (=> bs!15379 m!464529))

(assert (=> start!43720 d!76841))

(declare-fun d!76849 () Bool)

(declare-fun isStrictlySorted!393 (List!9286) Bool)

(assert (=> d!76849 (= (inv!15799 thiss!180) (isStrictlySorted!393 (toList!4065 thiss!180)))))

(declare-fun bs!15383 () Bool)

(assert (= bs!15383 d!76849))

(declare-fun m!464537 () Bool)

(assert (=> bs!15383 m!464537))

(assert (=> start!43720 d!76849))

(declare-fun d!76857 () Bool)

(assert (=> d!76857 (= (inv!15799 (ListLongMap!8100 (tail!131 (toList!4065 thiss!180)))) (isStrictlySorted!393 (toList!4065 (ListLongMap!8100 (tail!131 (toList!4065 thiss!180))))))))

(declare-fun bs!15386 () Bool)

(assert (= bs!15386 d!76857))

(declare-fun m!464543 () Bool)

(assert (=> bs!15386 m!464543))

(assert (=> b!483535 d!76857))

(declare-fun d!76863 () Bool)

(assert (=> d!76863 (= (tail!131 (toList!4065 thiss!180)) (t!15516 (toList!4065 thiss!180)))))

(assert (=> b!483535 d!76863))

(declare-fun b!483563 () Bool)

(declare-fun e!284608 () Bool)

(declare-fun tp_is_empty!13883 () Bool)

(declare-fun tp!43411 () Bool)

(assert (=> b!483563 (= e!284608 (and tp_is_empty!13883 tp!43411))))

(assert (=> b!483536 (= tp!43396 e!284608)))

(assert (= (and b!483536 (is-Cons!9282 (toList!4065 thiss!180))) b!483563))

(push 1)

(assert (not d!76857))

(assert (not d!76841))

(assert tp_is_empty!13883)

(assert (not d!76849))

(assert (not b!483563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76867 () Bool)

(assert (=> d!76867 (= (isEmpty!633 (toList!4065 thiss!180)) (is-Nil!9283 (toList!4065 thiss!180)))))

(assert (=> d!76841 d!76867))

(declare-fun d!76869 () Bool)

(declare-fun res!288187 () Bool)

(declare-fun e!284626 () Bool)

(assert (=> d!76869 (=> res!288187 e!284626)))

(assert (=> d!76869 (= res!288187 (or (is-Nil!9283 (toList!4065 thiss!180)) (is-Nil!9283 (t!15516 (toList!4065 thiss!180)))))))

(assert (=> d!76869 (= (isStrictlySorted!393 (toList!4065 thiss!180)) e!284626)))

(declare-fun b!483581 () Bool)

(declare-fun e!284627 () Bool)

(assert (=> b!483581 (= e!284626 e!284627)))

(declare-fun res!288188 () Bool)

(assert (=> b!483581 (=> (not res!288188) (not e!284627))))

(assert (=> b!483581 (= res!288188 (bvslt (_1!4596 (h!10138 (toList!4065 thiss!180))) (_1!4596 (h!10138 (t!15516 (toList!4065 thiss!180))))))))

(declare-fun b!483582 () Bool)

(assert (=> b!483582 (= e!284627 (isStrictlySorted!393 (t!15516 (toList!4065 thiss!180))))))

(assert (= (and d!76869 (not res!288187)) b!483581))

(assert (= (and b!483581 res!288188) b!483582))

(declare-fun m!464549 () Bool)

(assert (=> b!483582 m!464549))

(assert (=> d!76849 d!76869))

(declare-fun d!76877 () Bool)

(declare-fun res!288189 () Bool)

(declare-fun e!284628 () Bool)

(assert (=> d!76877 (=> res!288189 e!284628)))

(assert (=> d!76877 (= res!288189 (or (is-Nil!9283 (toList!4065 (ListLongMap!8100 (tail!131 (toList!4065 thiss!180))))) (is-Nil!9283 (t!15516 (toList!4065 (ListLongMap!8100 (tail!131 (toList!4065 thiss!180))))))))))

(assert (=> d!76877 (= (isStrictlySorted!393 (toList!4065 (ListLongMap!8100 (tail!131 (toList!4065 thiss!180))))) e!284628)))

(declare-fun b!483583 () Bool)

(declare-fun e!284629 () Bool)

(assert (=> b!483583 (= e!284628 e!284629)))

(declare-fun res!288190 () Bool)

(assert (=> b!483583 (=> (not res!288190) (not e!284629))))

(assert (=> b!483583 (= res!288190 (bvslt (_1!4596 (h!10138 (toList!4065 (ListLongMap!8100 (tail!131 (toList!4065 thiss!180)))))) (_1!4596 (h!10138 (t!15516 (toList!4065 (ListLongMap!8100 (tail!131 (toList!4065 thiss!180)))))))))))

(declare-fun b!483584 () Bool)

(assert (=> b!483584 (= e!284629 (isStrictlySorted!393 (t!15516 (toList!4065 (ListLongMap!8100 (tail!131 (toList!4065 thiss!180)))))))))

(assert (= (and d!76877 (not res!288189)) b!483583))

(assert (= (and b!483583 res!288190) b!483584))

(declare-fun m!464551 () Bool)

(assert (=> b!483584 m!464551))

(assert (=> d!76857 d!76877))

(declare-fun b!483585 () Bool)

