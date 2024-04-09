; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137938 () Bool)

(assert start!137938)

(declare-fun res!1081682 () Bool)

(declare-fun e!883808 () Bool)

(assert (=> start!137938 (=> (not res!1081682) (not e!883808))))

(declare-datatypes ((B!2852 0))(
  ( (B!2853 (val!19788 Int)) )
))
(declare-datatypes ((tuple2!25908 0))(
  ( (tuple2!25909 (_1!12964 (_ BitVec 64)) (_2!12964 B!2852)) )
))
(declare-datatypes ((List!37069 0))(
  ( (Nil!37066) (Cons!37065 (h!38609 tuple2!25908) (t!51990 List!37069)) )
))
(declare-fun l!548 () List!37069)

(declare-fun isStrictlySorted!1140 (List!37069) Bool)

(assert (=> start!137938 (= res!1081682 (isStrictlySorted!1140 l!548))))

(assert (=> start!137938 e!883808))

(declare-fun e!883809 () Bool)

(assert (=> start!137938 e!883809))

(declare-fun b!1583320 () Bool)

(declare-fun ListPrimitiveSize!211 (List!37069) Int)

(assert (=> b!1583320 (= e!883808 (< (ListPrimitiveSize!211 l!548) 0))))

(declare-fun b!1583321 () Bool)

(declare-fun tp_is_empty!39385 () Bool)

(declare-fun tp!114952 () Bool)

(assert (=> b!1583321 (= e!883809 (and tp_is_empty!39385 tp!114952))))

(assert (= (and start!137938 res!1081682) b!1583320))

(assert (= (and start!137938 (is-Cons!37065 l!548)) b!1583321))

(declare-fun m!1453235 () Bool)

(assert (=> start!137938 m!1453235))

(declare-fun m!1453237 () Bool)

(assert (=> b!1583320 m!1453237))

(push 1)

(assert (not b!1583320))

(assert (not start!137938))

(assert (not b!1583321))

(assert tp_is_empty!39385)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167181 () Bool)

(declare-fun lt!677094 () Int)

(assert (=> d!167181 (>= lt!677094 0)))

(declare-fun e!883832 () Int)

(assert (=> d!167181 (= lt!677094 e!883832)))

(declare-fun c!146675 () Bool)

(assert (=> d!167181 (= c!146675 (is-Nil!37066 l!548))))

(assert (=> d!167181 (= (ListPrimitiveSize!211 l!548) lt!677094)))

(declare-fun b!1583348 () Bool)

(assert (=> b!1583348 (= e!883832 0)))

(declare-fun b!1583349 () Bool)

(assert (=> b!1583349 (= e!883832 (+ 1 (ListPrimitiveSize!211 (t!51990 l!548))))))

(assert (= (and d!167181 c!146675) b!1583348))

(assert (= (and d!167181 (not c!146675)) b!1583349))

(declare-fun m!1453249 () Bool)

(assert (=> b!1583349 m!1453249))

(assert (=> b!1583320 d!167181))

(declare-fun d!167187 () Bool)

(declare-fun res!1081701 () Bool)

(declare-fun e!883845 () Bool)

(assert (=> d!167187 (=> res!1081701 e!883845)))

(assert (=> d!167187 (= res!1081701 (or (is-Nil!37066 l!548) (is-Nil!37066 (t!51990 l!548))))))

(assert (=> d!167187 (= (isStrictlySorted!1140 l!548) e!883845)))

(declare-fun b!1583366 () Bool)

(declare-fun e!883846 () Bool)

(assert (=> b!1583366 (= e!883845 e!883846)))

(declare-fun res!1081702 () Bool)

(assert (=> b!1583366 (=> (not res!1081702) (not e!883846))))

(assert (=> b!1583366 (= res!1081702 (bvslt (_1!12964 (h!38609 l!548)) (_1!12964 (h!38609 (t!51990 l!548)))))))

(declare-fun b!1583367 () Bool)

(assert (=> b!1583367 (= e!883846 (isStrictlySorted!1140 (t!51990 l!548)))))

(assert (= (and d!167187 (not res!1081701)) b!1583366))

(assert (= (and b!1583366 res!1081702) b!1583367))

(declare-fun m!1453255 () Bool)

(assert (=> b!1583367 m!1453255))

(assert (=> start!137938 d!167187))

(declare-fun b!1583377 () Bool)

(declare-fun e!883852 () Bool)

(declare-fun tp!114964 () Bool)

(assert (=> b!1583377 (= e!883852 (and tp_is_empty!39385 tp!114964))))

(assert (=> b!1583321 (= tp!114952 e!883852)))

(assert (= (and b!1583321 (is-Cons!37065 (t!51990 l!548))) b!1583377))

(push 1)

