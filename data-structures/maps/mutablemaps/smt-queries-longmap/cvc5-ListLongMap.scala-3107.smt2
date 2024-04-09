; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43690 () Bool)

(assert start!43690)

(declare-fun res!288137 () Bool)

(declare-fun e!284538 () Bool)

(assert (=> start!43690 (=> (not res!288137) (not e!284538))))

(declare-datatypes ((B!1064 0))(
  ( (B!1065 (val!6984 Int)) )
))
(declare-datatypes ((tuple2!9166 0))(
  ( (tuple2!9167 (_1!4593 (_ BitVec 64)) (_2!4593 B!1064)) )
))
(declare-datatypes ((List!9283 0))(
  ( (Nil!9280) (Cons!9279 (h!10135 tuple2!9166) (t!15513 List!9283)) )
))
(declare-datatypes ((ListLongMap!8093 0))(
  ( (ListLongMap!8094 (toList!4062 List!9283)) )
))
(declare-fun thiss!180 () ListLongMap!8093)

(declare-fun isEmpty!622 (ListLongMap!8093) Bool)

(assert (=> start!43690 (= res!288137 (not (isEmpty!622 thiss!180)))))

(assert (=> start!43690 e!284538))

(declare-fun e!284539 () Bool)

(declare-fun inv!15791 (ListLongMap!8093) Bool)

(assert (=> start!43690 (and (inv!15791 thiss!180) e!284539)))

(declare-fun b!483481 () Bool)

(assert (=> b!483481 (= e!284538 (= (toList!4062 thiss!180) Nil!9280))))

(declare-fun b!483482 () Bool)

(declare-fun tp!43375 () Bool)

(assert (=> b!483482 (= e!284539 tp!43375)))

(assert (= (and start!43690 res!288137) b!483481))

(assert (= start!43690 b!483482))

(declare-fun m!464473 () Bool)

(assert (=> start!43690 m!464473))

(declare-fun m!464475 () Bool)

(assert (=> start!43690 m!464475))

(push 1)

(assert (not start!43690))

(assert (not b!483482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76817 () Bool)

(declare-fun isEmpty!626 (List!9283) Bool)

(assert (=> d!76817 (= (isEmpty!622 thiss!180) (isEmpty!626 (toList!4062 thiss!180)))))

(declare-fun bs!15370 () Bool)

(assert (= bs!15370 d!76817))

(declare-fun m!464487 () Bool)

(assert (=> bs!15370 m!464487))

(assert (=> start!43690 d!76817))

(declare-fun d!76823 () Bool)

(declare-fun isStrictlySorted!390 (List!9283) Bool)

(assert (=> d!76823 (= (inv!15791 thiss!180) (isStrictlySorted!390 (toList!4062 thiss!180)))))

(declare-fun bs!15373 () Bool)

(assert (= bs!15373 d!76823))

(declare-fun m!464493 () Bool)

(assert (=> bs!15373 m!464493))

(assert (=> start!43690 d!76823))

(declare-fun b!483505 () Bool)

(declare-fun e!284557 () Bool)

(declare-fun tp_is_empty!13875 () Bool)

(declare-fun tp!43387 () Bool)

(assert (=> b!483505 (= e!284557 (and tp_is_empty!13875 tp!43387))))

(assert (=> b!483482 (= tp!43375 e!284557)))

(assert (= (and b!483482 (is-Cons!9279 (toList!4062 thiss!180))) b!483505))

(push 1)

(assert (not d!76817))

(assert (not d!76823))

(assert (not b!483505))

(assert tp_is_empty!13875)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76829 () Bool)

(assert (=> d!76829 (= (isEmpty!626 (toList!4062 thiss!180)) (is-Nil!9280 (toList!4062 thiss!180)))))

(assert (=> d!76817 d!76829))

(declare-fun d!76831 () Bool)

(declare-fun res!288158 () Bool)

(declare-fun e!284576 () Bool)

(assert (=> d!76831 (=> res!288158 e!284576)))

(assert (=> d!76831 (= res!288158 (or (is-Nil!9280 (toList!4062 thiss!180)) (is-Nil!9280 (t!15513 (toList!4062 thiss!180)))))))

(assert (=> d!76831 (= (isStrictlySorted!390 (toList!4062 thiss!180)) e!284576)))

(declare-fun b!483525 () Bool)

(declare-fun e!284577 () Bool)

(assert (=> b!483525 (= e!284576 e!284577)))

(declare-fun res!288159 () Bool)

(assert (=> b!483525 (=> (not res!288159) (not e!284577))))

(assert (=> b!483525 (= res!288159 (bvslt (_1!4593 (h!10135 (toList!4062 thiss!180))) (_1!4593 (h!10135 (t!15513 (toList!4062 thiss!180))))))))

(declare-fun b!483526 () Bool)

(assert (=> b!483526 (= e!284577 (isStrictlySorted!390 (t!15513 (toList!4062 thiss!180))))))

(assert (= (and d!76831 (not res!288158)) b!483525))

(assert (= (and b!483525 res!288159) b!483526))

(declare-fun m!464499 () Bool)

(assert (=> b!483526 m!464499))

(assert (=> d!76823 d!76831))

(declare-fun b!483527 () Bool)

(declare-fun e!284578 () Bool)

(declare-fun tp!43392 () Bool)

(assert (=> b!483527 (= e!284578 (and tp_is_empty!13875 tp!43392))))

(assert (=> b!483505 (= tp!43387 e!284578)))

(assert (= (and b!483505 (is-Cons!9279 (t!15513 (toList!4062 thiss!180)))) b!483527))

(push 1)

