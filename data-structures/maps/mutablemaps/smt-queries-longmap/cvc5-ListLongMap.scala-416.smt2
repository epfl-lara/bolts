; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7810 () Bool)

(assert start!7810)

(declare-datatypes ((B!1010 0))(
  ( (B!1011 (val!1125 Int)) )
))
(declare-datatypes ((tuple2!1836 0))(
  ( (tuple2!1837 (_1!928 (_ BitVec 64)) (_2!928 B!1010)) )
))
(declare-datatypes ((List!1341 0))(
  ( (Nil!1338) (Cons!1337 (h!1917 tuple2!1836) (t!4383 List!1341)) )
))
(declare-fun keyValues!2 () List!1341)

(declare-fun ListPrimitiveSize!55 (List!1341) Int)

(assert (=> start!7810 (< (ListPrimitiveSize!55 keyValues!2) 0)))

(declare-fun e!31825 () Bool)

(assert (=> start!7810 e!31825))

(declare-fun b!49515 () Bool)

(declare-fun tp_is_empty!2161 () Bool)

(declare-fun tp!6551 () Bool)

(assert (=> b!49515 (= e!31825 (and tp_is_empty!2161 tp!6551))))

(assert (= (and start!7810 (is-Cons!1337 keyValues!2)) b!49515))

(declare-fun m!42921 () Bool)

(assert (=> start!7810 m!42921))

(push 1)

(assert (not start!7810))

(assert (not b!49515))

(assert tp_is_empty!2161)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9951 () Bool)

(declare-fun lt!20773 () Int)

(assert (=> d!9951 (>= lt!20773 0)))

(declare-fun e!31838 () Int)

(assert (=> d!9951 (= lt!20773 e!31838)))

(declare-fun c!6700 () Bool)

(assert (=> d!9951 (= c!6700 (is-Nil!1338 keyValues!2))))

(assert (=> d!9951 (= (ListPrimitiveSize!55 keyValues!2) lt!20773)))

(declare-fun b!49534 () Bool)

(assert (=> b!49534 (= e!31838 0)))

(declare-fun b!49535 () Bool)

(assert (=> b!49535 (= e!31838 (+ 1 (ListPrimitiveSize!55 (t!4383 keyValues!2))))))

(assert (= (and d!9951 c!6700) b!49534))

(assert (= (and d!9951 (not c!6700)) b!49535))

(declare-fun m!42927 () Bool)

(assert (=> b!49535 m!42927))

(assert (=> start!7810 d!9951))

(declare-fun b!49548 () Bool)

(declare-fun e!31843 () Bool)

(declare-fun tp!6560 () Bool)

(assert (=> b!49548 (= e!31843 (and tp_is_empty!2161 tp!6560))))

(assert (=> b!49515 (= tp!6551 e!31843)))

(assert (= (and b!49515 (is-Cons!1337 (t!4383 keyValues!2))) b!49548))

(push 1)

