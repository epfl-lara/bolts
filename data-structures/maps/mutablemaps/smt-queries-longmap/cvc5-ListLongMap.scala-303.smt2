; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5284 () Bool)

(assert start!5284)

(declare-datatypes ((B!806 0))(
  ( (B!807 (val!903 Int)) )
))
(declare-datatypes ((tuple2!1470 0))(
  ( (tuple2!1471 (_1!745 (_ BitVec 64)) (_2!745 B!806)) )
))
(declare-datatypes ((List!1032 0))(
  ( (Nil!1029) (Cons!1028 (h!1596 tuple2!1470) (t!3873 List!1032)) )
))
(declare-datatypes ((ListLongMap!1051 0))(
  ( (ListLongMap!1052 (toList!541 List!1032)) )
))
(declare-fun lm!266 () ListLongMap!1051)

(declare-fun ListLongMapPrimitiveSize!1 (ListLongMap!1051) Int)

(assert (=> start!5284 (< (ListLongMapPrimitiveSize!1 lm!266) 0)))

(declare-fun e!24306 () Bool)

(declare-fun inv!1723 (ListLongMap!1051) Bool)

(assert (=> start!5284 (and (inv!1723 lm!266) e!24306)))

(declare-fun b!38244 () Bool)

(declare-fun tp!5687 () Bool)

(assert (=> b!38244 (= e!24306 tp!5687)))

(assert (= start!5284 b!38244))

(declare-fun m!30857 () Bool)

(assert (=> start!5284 m!30857))

(declare-fun m!30859 () Bool)

(assert (=> start!5284 m!30859))

(push 1)

(assert (not start!5284))

(assert (not b!38244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6225 () Bool)

(declare-fun lt!14105 () Int)

(assert (=> d!6225 (>= lt!14105 0)))

(declare-fun ListPrimitiveSize!40 (List!1032) Int)

(assert (=> d!6225 (= lt!14105 (+ 1 (ListPrimitiveSize!40 (toList!541 lm!266))))))

(assert (=> d!6225 (= (ListLongMapPrimitiveSize!1 lm!266) lt!14105)))

(declare-fun bs!1553 () Bool)

(assert (= bs!1553 d!6225))

(declare-fun m!30869 () Bool)

(assert (=> bs!1553 m!30869))

(assert (=> start!5284 d!6225))

(declare-fun d!6231 () Bool)

(declare-fun isStrictlySorted!206 (List!1032) Bool)

(assert (=> d!6231 (= (inv!1723 lm!266) (isStrictlySorted!206 (toList!541 lm!266)))))

(declare-fun bs!1556 () Bool)

(assert (= bs!1556 d!6231))

(declare-fun m!30877 () Bool)

(assert (=> bs!1556 m!30877))

(assert (=> start!5284 d!6231))

(declare-fun b!38263 () Bool)

(declare-fun e!24319 () Bool)

(declare-fun tp_is_empty!1731 () Bool)

(declare-fun tp!5700 () Bool)

(assert (=> b!38263 (= e!24319 (and tp_is_empty!1731 tp!5700))))

(assert (=> b!38244 (= tp!5687 e!24319)))

(assert (= (and b!38244 (is-Cons!1028 (toList!541 lm!266))) b!38263))

(push 1)

