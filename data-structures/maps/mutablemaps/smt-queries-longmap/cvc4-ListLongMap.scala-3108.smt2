; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43724 () Bool)

(assert start!43724)

(declare-fun res!288170 () Bool)

(declare-fun e!284598 () Bool)

(assert (=> start!43724 (=> (not res!288170) (not e!284598))))

(declare-datatypes ((B!1074 0))(
  ( (B!1075 (val!6989 Int)) )
))
(declare-datatypes ((tuple2!9176 0))(
  ( (tuple2!9177 (_1!4598 (_ BitVec 64)) (_2!4598 B!1074)) )
))
(declare-datatypes ((List!9288 0))(
  ( (Nil!9285) (Cons!9284 (h!10140 tuple2!9176) (t!15518 List!9288)) )
))
(declare-datatypes ((ListLongMap!8103 0))(
  ( (ListLongMap!8104 (toList!4067 List!9288)) )
))
(declare-fun thiss!180 () ListLongMap!8103)

(declare-fun isEmpty!630 (ListLongMap!8103) Bool)

(assert (=> start!43724 (= res!288170 (not (isEmpty!630 thiss!180)))))

(assert (=> start!43724 e!284598))

(declare-fun e!284599 () Bool)

(declare-fun inv!15801 (ListLongMap!8103) Bool)

(assert (=> start!43724 (and (inv!15801 thiss!180) e!284599)))

(declare-fun b!483547 () Bool)

(declare-fun tail!133 (List!9288) List!9288)

(assert (=> b!483547 (= e!284598 (not (inv!15801 (ListLongMap!8104 (tail!133 (toList!4067 thiss!180))))))))

(declare-fun b!483548 () Bool)

(declare-fun tp!43402 () Bool)

(assert (=> b!483548 (= e!284599 tp!43402)))

(assert (= (and start!43724 res!288170) b!483547))

(assert (= start!43724 b!483548))

(declare-fun m!464519 () Bool)

(assert (=> start!43724 m!464519))

(declare-fun m!464521 () Bool)

(assert (=> start!43724 m!464521))

(declare-fun m!464523 () Bool)

(assert (=> b!483547 m!464523))

(declare-fun m!464525 () Bool)

(assert (=> b!483547 m!464525))

(push 1)

(assert (not start!43724))

(assert (not b!483547))

(assert (not b!483548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76843 () Bool)

(declare-fun isEmpty!631 (List!9288) Bool)

(assert (=> d!76843 (= (isEmpty!630 thiss!180) (isEmpty!631 (toList!4067 thiss!180)))))

(declare-fun bs!15378 () Bool)

(assert (= bs!15378 d!76843))

(declare-fun m!464527 () Bool)

(assert (=> bs!15378 m!464527))

(assert (=> start!43724 d!76843))

(declare-fun d!76847 () Bool)

(declare-fun isStrictlySorted!394 (List!9288) Bool)

(assert (=> d!76847 (= (inv!15801 thiss!180) (isStrictlySorted!394 (toList!4067 thiss!180)))))

(declare-fun bs!15381 () Bool)

(assert (= bs!15381 d!76847))

(declare-fun m!464533 () Bool)

(assert (=> bs!15381 m!464533))

(assert (=> start!43724 d!76847))

(declare-fun d!76853 () Bool)

(assert (=> d!76853 (= (inv!15801 (ListLongMap!8104 (tail!133 (toList!4067 thiss!180)))) (isStrictlySorted!394 (toList!4067 (ListLongMap!8104 (tail!133 (toList!4067 thiss!180))))))))

(declare-fun bs!15384 () Bool)

(assert (= bs!15384 d!76853))

(declare-fun m!464539 () Bool)

(assert (=> bs!15384 m!464539))

(assert (=> b!483547 d!76853))

(declare-fun d!76859 () Bool)

(assert (=> d!76859 (= (tail!133 (toList!4067 thiss!180)) (t!15518 (toList!4067 thiss!180)))))

(assert (=> b!483547 d!76859))

(declare-fun b!483561 () Bool)

(declare-fun e!284606 () Bool)

(declare-fun tp_is_empty!13880 () Bool)

(declare-fun tp!43409 () Bool)

(assert (=> b!483561 (= e!284606 (and tp_is_empty!13880 tp!43409))))

(assert (=> b!483548 (= tp!43402 e!284606)))

(assert (= (and b!483548 (is-Cons!9284 (toList!4067 thiss!180))) b!483561))

(push 1)

(assert (not d!76853))

(assert (not d!76843))

(assert (not b!483561))

(assert (not d!76847))

(assert tp_is_empty!13880)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76875 () Bool)

(declare-fun res!288191 () Bool)

(declare-fun e!284631 () Bool)

(assert (=> d!76875 (=> res!288191 e!284631)))

(assert (=> d!76875 (= res!288191 (or (is-Nil!9285 (toList!4067 (ListLongMap!8104 (tail!133 (toList!4067 thiss!180))))) (is-Nil!9285 (t!15518 (toList!4067 (ListLongMap!8104 (tail!133 (toList!4067 thiss!180))))))))))

(assert (=> d!76875 (= (isStrictlySorted!394 (toList!4067 (ListLongMap!8104 (tail!133 (toList!4067 thiss!180))))) e!284631)))

(declare-fun b!483586 () Bool)

(declare-fun e!284632 () Bool)

(assert (=> b!483586 (= e!284631 e!284632)))

(declare-fun res!288192 () Bool)

(assert (=> b!483586 (=> (not res!288192) (not e!284632))))

(assert (=> b!483586 (= res!288192 (bvslt (_1!4598 (h!10140 (toList!4067 (ListLongMap!8104 (tail!133 (toList!4067 thiss!180)))))) (_1!4598 (h!10140 (t!15518 (toList!4067 (ListLongMap!8104 (tail!133 (toList!4067 thiss!180)))))))))))

(declare-fun b!483587 () Bool)

(assert (=> b!483587 (= e!284632 (isStrictlySorted!394 (t!15518 (toList!4067 (ListLongMap!8104 (tail!133 (toList!4067 thiss!180)))))))))

(assert (= (and d!76875 (not res!288191)) b!483586))

(assert (= (and b!483586 res!288192) b!483587))

(declare-fun m!464553 () Bool)

(assert (=> b!483587 m!464553))

(assert (=> d!76853 d!76875))

(declare-fun d!76879 () Bool)

(assert (=> d!76879 (= (isEmpty!631 (toList!4067 thiss!180)) (is-Nil!9285 (toList!4067 thiss!180)))))

(assert (=> d!76843 d!76879))

(declare-fun d!76881 () Bool)

(declare-fun res!288193 () Bool)

(declare-fun e!284633 () Bool)

(assert (=> d!76881 (=> res!288193 e!284633)))

(assert (=> d!76881 (= res!288193 (or (is-Nil!9285 (toList!4067 thiss!180)) (is-Nil!9285 (t!15518 (toList!4067 thiss!180)))))))

(assert (=> d!76881 (= (isStrictlySorted!394 (toList!4067 thiss!180)) e!284633)))

