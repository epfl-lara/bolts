; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103750 () Bool)

(assert start!103750)

(declare-fun res!828335 () Bool)

(declare-fun e!703910 () Bool)

(assert (=> start!103750 (=> (not res!828335) (not e!703910))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103750 (= res!828335 (not (= key1!25 key2!15)))))

(assert (=> start!103750 e!703910))

(assert (=> start!103750 true))

(declare-fun e!703909 () Bool)

(assert (=> start!103750 e!703909))

(declare-fun b!1241775 () Bool)

(declare-fun res!828337 () Bool)

(assert (=> b!1241775 (=> (not res!828337) (not e!703910))))

(declare-datatypes ((B!1878 0))(
  ( (B!1879 (val!15701 Int)) )
))
(declare-datatypes ((tuple2!20430 0))(
  ( (tuple2!20431 (_1!10225 (_ BitVec 64)) (_2!10225 B!1878)) )
))
(declare-datatypes ((List!27530 0))(
  ( (Nil!27527) (Cons!27526 (h!28735 tuple2!20430) (t!41000 List!27530)) )
))
(declare-fun l!644 () List!27530)

(declare-fun isStrictlySorted!755 (List!27530) Bool)

(assert (=> b!1241775 (= res!828337 (isStrictlySorted!755 l!644))))

(declare-fun b!1241776 () Bool)

(declare-fun res!828336 () Bool)

(assert (=> b!1241776 (=> (not res!828336) (not e!703910))))

(assert (=> b!1241776 (= res!828336 (is-Cons!27526 l!644))))

(declare-fun b!1241777 () Bool)

(assert (=> b!1241777 (= e!703910 (not (isStrictlySorted!755 (t!41000 l!644))))))

(declare-fun b!1241778 () Bool)

(declare-fun tp_is_empty!31277 () Bool)

(declare-fun tp!92715 () Bool)

(assert (=> b!1241778 (= e!703909 (and tp_is_empty!31277 tp!92715))))

(assert (= (and start!103750 res!828335) b!1241775))

(assert (= (and b!1241775 res!828337) b!1241776))

(assert (= (and b!1241776 res!828336) b!1241777))

(assert (= (and start!103750 (is-Cons!27526 l!644)) b!1241778))

(declare-fun m!1144633 () Bool)

(assert (=> b!1241775 m!1144633))

(declare-fun m!1144635 () Bool)

(assert (=> b!1241777 m!1144635))

(push 1)

(assert (not b!1241775))

(assert (not b!1241777))

(assert (not b!1241778))

(assert tp_is_empty!31277)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136455 () Bool)

(declare-fun res!828348 () Bool)

(declare-fun e!703921 () Bool)

(assert (=> d!136455 (=> res!828348 e!703921)))

(assert (=> d!136455 (= res!828348 (or (is-Nil!27527 l!644) (is-Nil!27527 (t!41000 l!644))))))

(assert (=> d!136455 (= (isStrictlySorted!755 l!644) e!703921)))

(declare-fun b!1241789 () Bool)

(declare-fun e!703922 () Bool)

(assert (=> b!1241789 (= e!703921 e!703922)))

(declare-fun res!828349 () Bool)

(assert (=> b!1241789 (=> (not res!828349) (not e!703922))))

(assert (=> b!1241789 (= res!828349 (bvslt (_1!10225 (h!28735 l!644)) (_1!10225 (h!28735 (t!41000 l!644)))))))

(declare-fun b!1241790 () Bool)

(assert (=> b!1241790 (= e!703922 (isStrictlySorted!755 (t!41000 l!644)))))

(assert (= (and d!136455 (not res!828348)) b!1241789))

(assert (= (and b!1241789 res!828349) b!1241790))

(assert (=> b!1241790 m!1144635))

(assert (=> b!1241775 d!136455))

(declare-fun d!136463 () Bool)

(declare-fun res!828352 () Bool)

(declare-fun e!703925 () Bool)

(assert (=> d!136463 (=> res!828352 e!703925)))

(assert (=> d!136463 (= res!828352 (or (is-Nil!27527 (t!41000 l!644)) (is-Nil!27527 (t!41000 (t!41000 l!644)))))))

(assert (=> d!136463 (= (isStrictlySorted!755 (t!41000 l!644)) e!703925)))

(declare-fun b!1241793 () Bool)

(declare-fun e!703926 () Bool)

(assert (=> b!1241793 (= e!703925 e!703926)))

(declare-fun res!828353 () Bool)

(assert (=> b!1241793 (=> (not res!828353) (not e!703926))))

(assert (=> b!1241793 (= res!828353 (bvslt (_1!10225 (h!28735 (t!41000 l!644))) (_1!10225 (h!28735 (t!41000 (t!41000 l!644))))))))

(declare-fun b!1241794 () Bool)

(assert (=> b!1241794 (= e!703926 (isStrictlySorted!755 (t!41000 (t!41000 l!644))))))

(assert (= (and d!136463 (not res!828352)) b!1241793))

(assert (= (and b!1241793 res!828353) b!1241794))

(declare-fun m!1144639 () Bool)

(assert (=> b!1241794 m!1144639))

(assert (=> b!1241777 d!136463))

(declare-fun b!1241804 () Bool)

(declare-fun e!703932 () Bool)

(declare-fun tp!92721 () Bool)

(assert (=> b!1241804 (= e!703932 (and tp_is_empty!31277 tp!92721))))

(assert (=> b!1241778 (= tp!92715 e!703932)))

(assert (= (and b!1241778 (is-Cons!27526 (t!41000 l!644))) b!1241804))

(push 1)

