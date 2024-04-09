; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7814 () Bool)

(assert start!7814)

(declare-datatypes ((B!1014 0))(
  ( (B!1015 (val!1127 Int)) )
))
(declare-datatypes ((tuple2!1840 0))(
  ( (tuple2!1841 (_1!930 (_ BitVec 64)) (_2!930 B!1014)) )
))
(declare-datatypes ((List!1343 0))(
  ( (Nil!1340) (Cons!1339 (h!1919 tuple2!1840) (t!4385 List!1343)) )
))
(declare-fun keyValues!2 () List!1343)

(declare-fun ListPrimitiveSize!57 (List!1343) Int)

(assert (=> start!7814 (< (ListPrimitiveSize!57 keyValues!2) 0)))

(declare-fun e!31831 () Bool)

(assert (=> start!7814 e!31831))

(declare-fun b!49521 () Bool)

(declare-fun tp_is_empty!2165 () Bool)

(declare-fun tp!6557 () Bool)

(assert (=> b!49521 (= e!31831 (and tp_is_empty!2165 tp!6557))))

(assert (= (and start!7814 (is-Cons!1339 keyValues!2)) b!49521))

(declare-fun m!42925 () Bool)

(assert (=> start!7814 m!42925))

(push 1)

(assert (not start!7814))

(assert (not b!49521))

(assert tp_is_empty!2165)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9949 () Bool)

(declare-fun lt!20775 () Int)

(assert (=> d!9949 (>= lt!20775 0)))

(declare-fun e!31842 () Int)

(assert (=> d!9949 (= lt!20775 e!31842)))

(declare-fun c!6702 () Bool)

(assert (=> d!9949 (= c!6702 (is-Nil!1340 keyValues!2))))

(assert (=> d!9949 (= (ListPrimitiveSize!57 keyValues!2) lt!20775)))

(declare-fun b!49542 () Bool)

(assert (=> b!49542 (= e!31842 0)))

(declare-fun b!49543 () Bool)

(assert (=> b!49543 (= e!31842 (+ 1 (ListPrimitiveSize!57 (t!4385 keyValues!2))))))

(assert (= (and d!9949 c!6702) b!49542))

(assert (= (and d!9949 (not c!6702)) b!49543))

(declare-fun m!42930 () Bool)

(assert (=> b!49543 m!42930))

(assert (=> start!7814 d!9949))

(declare-fun b!49554 () Bool)

(declare-fun e!31849 () Bool)

(declare-fun tp!6566 () Bool)

(assert (=> b!49554 (= e!31849 (and tp_is_empty!2165 tp!6566))))

(assert (=> b!49521 (= tp!6557 e!31849)))

(assert (= (and b!49521 (is-Cons!1339 (t!4385 keyValues!2))) b!49554))

(push 1)

