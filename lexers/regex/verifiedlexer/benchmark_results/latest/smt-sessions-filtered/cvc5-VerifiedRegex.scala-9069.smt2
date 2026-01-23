; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486366 () Bool)

(assert start!486366)

(declare-fun b!4756475 () Bool)

(declare-fun res!2017964 () Bool)

(declare-fun e!2967315 () Bool)

(assert (=> b!4756475 (=> (not res!2017964) (not e!2967315))))

(declare-datatypes ((K!14748 0))(
  ( (K!14749 (val!20069 Int)) )
))
(declare-datatypes ((V!14994 0))(
  ( (V!14995 (val!20070 Int)) )
))
(declare-datatypes ((tuple2!55050 0))(
  ( (tuple2!55051 (_1!30819 K!14748) (_2!30819 V!14994)) )
))
(declare-datatypes ((List!53309 0))(
  ( (Nil!53185) (Cons!53185 (h!59592 tuple2!55050) (t!360653 List!53309)) )
))
(declare-fun l!13802 () List!53309)

(assert (=> b!4756475 (= res!2017964 (not (is-Nil!53185 l!13802)))))

(declare-fun b!4756476 () Bool)

(declare-fun ListPrimitiveSize!346 (List!53309) Int)

(assert (=> b!4756476 (= e!2967315 (>= (ListPrimitiveSize!346 (t!360653 l!13802)) (ListPrimitiveSize!346 l!13802)))))

(declare-fun b!4756477 () Bool)

(declare-fun tp_is_empty!32249 () Bool)

(declare-fun tp!1351030 () Bool)

(declare-fun tp_is_empty!32251 () Bool)

(declare-fun e!2967316 () Bool)

(assert (=> b!4756477 (= e!2967316 (and tp_is_empty!32249 tp_is_empty!32251 tp!1351030))))

(declare-fun res!2017962 () Bool)

(assert (=> start!486366 (=> (not res!2017962) (not e!2967315))))

(declare-fun noDuplicateKeys!2233 (List!53309) Bool)

(assert (=> start!486366 (= res!2017962 (noDuplicateKeys!2233 l!13802))))

(assert (=> start!486366 e!2967315))

(assert (=> start!486366 e!2967316))

(assert (=> start!486366 true))

(declare-fun b!4756474 () Bool)

(declare-fun res!2017963 () Bool)

(assert (=> b!4756474 (=> (not res!2017963) (not e!2967315))))

(declare-fun hash!423 () (_ BitVec 64))

(declare-datatypes ((Hashable!6465 0))(
  ( (HashableExt!6464 (__x!32168 Int)) )
))
(declare-fun hashF!1449 () Hashable!6465)

(declare-fun allKeysSameHash!1922 (List!53309 (_ BitVec 64) Hashable!6465) Bool)

(assert (=> b!4756474 (= res!2017963 (allKeysSameHash!1922 l!13802 hash!423 hashF!1449))))

(assert (= (and start!486366 res!2017962) b!4756474))

(assert (= (and b!4756474 res!2017963) b!4756475))

(assert (= (and b!4756475 res!2017964) b!4756476))

(assert (= (and start!486366 (is-Cons!53185 l!13802)) b!4756477))

(declare-fun m!5726465 () Bool)

(assert (=> b!4756476 m!5726465))

(declare-fun m!5726467 () Bool)

(assert (=> b!4756476 m!5726467))

(declare-fun m!5726469 () Bool)

(assert (=> start!486366 m!5726469))

(declare-fun m!5726471 () Bool)

(assert (=> b!4756474 m!5726471))

(push 1)

(assert tp_is_empty!32251)

(assert (not b!4756477))

(assert (not b!4756476))

(assert tp_is_empty!32249)

(assert (not b!4756474))

(assert (not start!486366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1520896 () Bool)

(declare-fun lt!1923011 () Int)

(assert (=> d!1520896 (>= lt!1923011 0)))

(declare-fun e!2967327 () Int)

(assert (=> d!1520896 (= lt!1923011 e!2967327)))

(declare-fun c!811710 () Bool)

(assert (=> d!1520896 (= c!811710 (is-Nil!53185 (t!360653 l!13802)))))

(assert (=> d!1520896 (= (ListPrimitiveSize!346 (t!360653 l!13802)) lt!1923011)))

(declare-fun b!4756498 () Bool)

(assert (=> b!4756498 (= e!2967327 0)))

(declare-fun b!4756499 () Bool)

(assert (=> b!4756499 (= e!2967327 (+ 1 (ListPrimitiveSize!346 (t!360653 (t!360653 l!13802)))))))

(assert (= (and d!1520896 c!811710) b!4756498))

(assert (= (and d!1520896 (not c!811710)) b!4756499))

(declare-fun m!5726481 () Bool)

(assert (=> b!4756499 m!5726481))

(assert (=> b!4756476 d!1520896))

(declare-fun d!1520900 () Bool)

(declare-fun lt!1923013 () Int)

(assert (=> d!1520900 (>= lt!1923013 0)))

(declare-fun e!2967329 () Int)

(assert (=> d!1520900 (= lt!1923013 e!2967329)))

(declare-fun c!811712 () Bool)

(assert (=> d!1520900 (= c!811712 (is-Nil!53185 l!13802))))

(assert (=> d!1520900 (= (ListPrimitiveSize!346 l!13802) lt!1923013)))

(declare-fun b!4756502 () Bool)

(assert (=> b!4756502 (= e!2967329 0)))

(declare-fun b!4756503 () Bool)

(assert (=> b!4756503 (= e!2967329 (+ 1 (ListPrimitiveSize!346 (t!360653 l!13802))))))

(assert (= (and d!1520900 c!811712) b!4756502))

(assert (= (and d!1520900 (not c!811712)) b!4756503))

(assert (=> b!4756503 m!5726465))

(assert (=> b!4756476 d!1520900))

(declare-fun d!1520904 () Bool)

(declare-fun res!2017982 () Bool)

(declare-fun e!2967339 () Bool)

(assert (=> d!1520904 (=> res!2017982 e!2967339)))

(assert (=> d!1520904 (= res!2017982 (not (is-Cons!53185 l!13802)))))

(assert (=> d!1520904 (= (noDuplicateKeys!2233 l!13802) e!2967339)))

(declare-fun b!4756514 () Bool)

(declare-fun e!2967340 () Bool)

(assert (=> b!4756514 (= e!2967339 e!2967340)))

(declare-fun res!2017983 () Bool)

(assert (=> b!4756514 (=> (not res!2017983) (not e!2967340))))

(declare-fun containsKey!3618 (List!53309 K!14748) Bool)

(assert (=> b!4756514 (= res!2017983 (not (containsKey!3618 (t!360653 l!13802) (_1!30819 (h!59592 l!13802)))))))

(declare-fun b!4756515 () Bool)

(assert (=> b!4756515 (= e!2967340 (noDuplicateKeys!2233 (t!360653 l!13802)))))

(assert (= (and d!1520904 (not res!2017982)) b!4756514))

(assert (= (and b!4756514 res!2017983) b!4756515))

(declare-fun m!5726485 () Bool)

(assert (=> b!4756514 m!5726485))

(declare-fun m!5726487 () Bool)

(assert (=> b!4756515 m!5726487))

(assert (=> start!486366 d!1520904))

(declare-fun d!1520908 () Bool)

(assert (=> d!1520908 true))

(assert (=> d!1520908 true))

(declare-fun lambda!223526 () Int)

(declare-fun forall!11803 (List!53309 Int) Bool)

(assert (=> d!1520908 (= (allKeysSameHash!1922 l!13802 hash!423 hashF!1449) (forall!11803 l!13802 lambda!223526))))

(declare-fun bs!1146931 () Bool)

(assert (= bs!1146931 d!1520908))

(declare-fun m!5726493 () Bool)

(assert (=> bs!1146931 m!5726493))

(assert (=> b!4756474 d!1520908))

(declare-fun tp!1351036 () Bool)

(declare-fun b!4756526 () Bool)

(declare-fun e!2967345 () Bool)

(assert (=> b!4756526 (= e!2967345 (and tp_is_empty!32249 tp_is_empty!32251 tp!1351036))))

(assert (=> b!4756477 (= tp!1351030 e!2967345)))

(assert (= (and b!4756477 (is-Cons!53185 (t!360653 l!13802))) b!4756526))

(push 1)

(assert tp_is_empty!32251)

(assert (not b!4756503))

(assert (not b!4756515))

(assert (not b!4756514))

(assert (not d!1520908))

(assert (not b!4756526))

(assert (not b!4756499))

(assert tp_is_empty!32249)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

