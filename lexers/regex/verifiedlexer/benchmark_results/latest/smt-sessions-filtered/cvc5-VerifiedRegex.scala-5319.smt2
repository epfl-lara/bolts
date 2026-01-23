; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!272128 () Bool)

(assert start!272128)

(declare-datatypes ((List!32941 0) (Conc!10163 0) (Object!5245 0) (BalanceConc!19947 0) (IArray!20331 0))(
  ( (Nil!32834) (Cons!32834 (h!38254 Object!5245) (t!229894 List!32941)) )
  ( (Node!10163 (left!24766 Conc!10163) (right!25096 Conc!10163) (csize!20556 Int) (cheight!10374 Int)) (Leaf!15483 (xs!13275 IArray!20331) (csize!20557 Int)) (Empty!10163) )
  ( (BalanceConc!19946 (value!158093 BalanceConc!19947)) (List!32940 (value!158094 List!32941)) (Character!105 (value!158095 (_ BitVec 16))) (Open!105 (value!158096 Int)) )
  ( (BalanceConc!19948 (c!455465 Conc!10163)) )
  ( (IArray!20332 (innerList!10223 List!32941)) )
))
(declare-datatypes ((T!54750 0))(
  ( (T!54751 (val!10325 Int)) )
))
(declare-datatypes ((List!32942 0))(
  ( (Nil!32835) (Cons!32835 (h!38255 T!54750) (t!229895 List!32942)) )
))
(declare-datatypes ((Vector!218 0))(
  ( (Vector!219 (underlying!8349 Object!5245) (overflowing!166 List!32942)) )
))
(declare-fun list!12298 (Vector!218) List!32942)

(declare-fun choose!16590 () Vector!218)

(assert (=> start!272128 (not (= (list!12298 choose!16590) Nil!32835))))

(declare-fun bs!516406 () Bool)

(assert (= bs!516406 start!272128))

(declare-fun m!3241227 () Bool)

(assert (=> bs!516406 m!3241227))

(assert (=> bs!516406 m!3241227))

(declare-fun m!3241229 () Bool)

(assert (=> bs!516406 m!3241229))

(push 1)

(assert (not start!272128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!816036 () Bool)

(declare-fun choose!16592 (Vector!218) List!32942)

(assert (=> d!816036 (= (list!12298 choose!16590) (choose!16592 choose!16590))))

(declare-fun bs!516408 () Bool)

(assert (= bs!516408 d!816036))

(assert (=> bs!516408 m!3241227))

(declare-fun m!3241235 () Bool)

(assert (=> bs!516408 m!3241235))

(assert (=> start!272128 d!816036))

(declare-fun d!816038 () Bool)

(declare-fun choose!16593 () Vector!218)

(assert (=> d!816038 (= choose!16590 choose!16593)))

(declare-fun bs!516409 () Bool)

(assert (= bs!516409 d!816038))

(declare-fun m!3241237 () Bool)

(assert (=> bs!516409 m!3241237))

(assert (=> start!272128 d!816038))

(push 1)

(assert (not d!816038))

(assert (not d!816036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!816044 () Bool)

(declare-fun res!1170464 () Vector!218)

(assert (=> d!816044 (= (list!12298 res!1170464) Nil!32835)))

(declare-fun e!1778021 () Bool)

(assert (=> d!816044 e!1778021))

(assert (=> d!816044 (= choose!16593 res!1170464)))

(declare-fun b!2811407 () Bool)

(declare-fun tp!897850 () Bool)

(declare-fun tp!897851 () Bool)

(assert (=> b!2811407 (= e!1778021 (and tp!897850 tp!897851))))

(assert (= d!816044 b!2811407))

(declare-fun m!3241243 () Bool)

(assert (=> d!816044 m!3241243))

(assert (=> d!816038 d!816044))

(declare-fun d!816046 () Bool)

(assert (=> d!816046 true))

(declare-fun e!1778024 () Bool)

(assert (=> d!816046 e!1778024))

(declare-fun res!1170467 () List!32942)

(assert (=> d!816046 (= (choose!16592 choose!16590) res!1170467)))

(declare-fun b!2811410 () Bool)

(declare-fun tp_is_empty!14375 () Bool)

(declare-fun tp!897854 () Bool)

(assert (=> b!2811410 (= e!1778024 (and tp_is_empty!14375 tp!897854))))

(assert (= (and d!816046 (is-Cons!32835 res!1170467)) b!2811410))

(assert (=> d!816036 d!816046))

(push 1)

(assert (not d!816044))

(assert (not b!2811410))

(assert (not b!2811407))

(assert tp_is_empty!14375)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

