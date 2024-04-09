; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132914 () Bool)

(assert start!132914)

(declare-fun res!1064684 () Bool)

(declare-fun e!866661 () Bool)

(assert (=> start!132914 (=> (not res!1064684) (not e!866661))))

(declare-datatypes ((B!2346 0))(
  ( (B!2347 (val!19259 Int)) )
))
(declare-datatypes ((tuple2!25034 0))(
  ( (tuple2!25035 (_1!12527 (_ BitVec 64)) (_2!12527 B!2346)) )
))
(declare-datatypes ((List!36439 0))(
  ( (Nil!36436) (Cons!36435 (h!37882 tuple2!25034) (t!51167 List!36439)) )
))
(declare-fun l!1177 () List!36439)

(declare-fun isStrictlySorted!943 (List!36439) Bool)

(assert (=> start!132914 (= res!1064684 (isStrictlySorted!943 l!1177))))

(assert (=> start!132914 e!866661))

(declare-fun e!866660 () Bool)

(assert (=> start!132914 e!866660))

(assert (=> start!132914 true))

(declare-fun b!1556057 () Bool)

(declare-fun res!1064683 () Bool)

(assert (=> b!1556057 (=> (not res!1064683) (not e!866661))))

(assert (=> b!1556057 (= res!1064683 (isStrictlySorted!943 (t!51167 l!1177)))))

(declare-fun b!1556059 () Bool)

(declare-fun tp_is_empty!38357 () Bool)

(declare-fun tp!112414 () Bool)

(assert (=> b!1556059 (= e!866660 (and tp_is_empty!38357 tp!112414))))

(declare-fun b!1556058 () Bool)

(declare-fun ListPrimitiveSize!180 (List!36439) Int)

(assert (=> b!1556058 (= e!866661 (>= (ListPrimitiveSize!180 (t!51167 l!1177)) (ListPrimitiveSize!180 l!1177)))))

(declare-fun b!1556056 () Bool)

(declare-fun res!1064685 () Bool)

(assert (=> b!1556056 (=> (not res!1064685) (not e!866661))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1556056 (= res!1064685 (and (not (= newKey!105 otherKey!50)) (is-Cons!36435 l!1177) (not (= (_1!12527 (h!37882 l!1177)) otherKey!50))))))

(assert (= (and start!132914 res!1064684) b!1556056))

(assert (= (and b!1556056 res!1064685) b!1556057))

(assert (= (and b!1556057 res!1064683) b!1556058))

(assert (= (and start!132914 (is-Cons!36435 l!1177)) b!1556059))

(declare-fun m!1433731 () Bool)

(assert (=> start!132914 m!1433731))

(declare-fun m!1433733 () Bool)

(assert (=> b!1556057 m!1433733))

(declare-fun m!1433735 () Bool)

(assert (=> b!1556058 m!1433735))

(declare-fun m!1433737 () Bool)

(assert (=> b!1556058 m!1433737))

(push 1)

(assert (not b!1556057))

(assert (not b!1556058))

(assert (not b!1556059))

(assert (not start!132914))

(assert tp_is_empty!38357)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161997 () Bool)

(declare-fun lt!670308 () Int)

(assert (=> d!161997 (>= lt!670308 0)))

(declare-fun e!866674 () Int)

(assert (=> d!161997 (= lt!670308 e!866674)))

(declare-fun c!143655 () Bool)

(assert (=> d!161997 (= c!143655 (is-Nil!36436 (t!51167 l!1177)))))

(assert (=> d!161997 (= (ListPrimitiveSize!180 (t!51167 l!1177)) lt!670308)))

(declare-fun b!1556078 () Bool)

(assert (=> b!1556078 (= e!866674 0)))

(declare-fun b!1556079 () Bool)

(assert (=> b!1556079 (= e!866674 (+ 1 (ListPrimitiveSize!180 (t!51167 (t!51167 l!1177)))))))

(assert (= (and d!161997 c!143655) b!1556078))

(assert (= (and d!161997 (not c!143655)) b!1556079))

(declare-fun m!1433741 () Bool)

(assert (=> b!1556079 m!1433741))

(assert (=> b!1556058 d!161997))

(declare-fun d!162003 () Bool)

(declare-fun lt!670309 () Int)

(assert (=> d!162003 (>= lt!670309 0)))

(declare-fun e!866675 () Int)

(assert (=> d!162003 (= lt!670309 e!866675)))

(declare-fun c!143656 () Bool)

(assert (=> d!162003 (= c!143656 (is-Nil!36436 l!1177))))

(assert (=> d!162003 (= (ListPrimitiveSize!180 l!1177) lt!670309)))

(declare-fun b!1556080 () Bool)

(assert (=> b!1556080 (= e!866675 0)))

(declare-fun b!1556081 () Bool)

(assert (=> b!1556081 (= e!866675 (+ 1 (ListPrimitiveSize!180 (t!51167 l!1177))))))

(assert (= (and d!162003 c!143656) b!1556080))

(assert (= (and d!162003 (not c!143656)) b!1556081))

(assert (=> b!1556081 m!1433735))

(assert (=> b!1556058 d!162003))

(declare-fun d!162005 () Bool)

(declare-fun res!1064702 () Bool)

(declare-fun e!866693 () Bool)

(assert (=> d!162005 (=> res!1064702 e!866693)))

(assert (=> d!162005 (= res!1064702 (or (is-Nil!36436 l!1177) (is-Nil!36436 (t!51167 l!1177))))))

(assert (=> d!162005 (= (isStrictlySorted!943 l!1177) e!866693)))

(declare-fun b!1556105 () Bool)

(declare-fun e!866694 () Bool)

(assert (=> b!1556105 (= e!866693 e!866694)))

(declare-fun res!1064703 () Bool)

(assert (=> b!1556105 (=> (not res!1064703) (not e!866694))))

(assert (=> b!1556105 (= res!1064703 (bvslt (_1!12527 (h!37882 l!1177)) (_1!12527 (h!37882 (t!51167 l!1177)))))))

(declare-fun b!1556106 () Bool)

(assert (=> b!1556106 (= e!866694 (isStrictlySorted!943 (t!51167 l!1177)))))

(assert (= (and d!162005 (not res!1064702)) b!1556105))

(assert (= (and b!1556105 res!1064703) b!1556106))

(assert (=> b!1556106 m!1433733))

(assert (=> start!132914 d!162005))

(declare-fun d!162015 () Bool)

