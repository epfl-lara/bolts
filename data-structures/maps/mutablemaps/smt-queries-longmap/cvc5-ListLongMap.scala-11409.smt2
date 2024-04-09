; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132880 () Bool)

(assert start!132880)

(declare-fun res!1064586 () Bool)

(declare-fun e!866544 () Bool)

(assert (=> start!132880 (=> (not res!1064586) (not e!866544))))

(declare-datatypes ((B!2330 0))(
  ( (B!2331 (val!19251 Int)) )
))
(declare-datatypes ((tuple2!25018 0))(
  ( (tuple2!25019 (_1!12519 (_ BitVec 64)) (_2!12519 B!2330)) )
))
(declare-datatypes ((List!36431 0))(
  ( (Nil!36428) (Cons!36427 (h!37874 tuple2!25018) (t!51159 List!36431)) )
))
(declare-fun l!1177 () List!36431)

(declare-fun isStrictlySorted!935 (List!36431) Bool)

(assert (=> start!132880 (= res!1064586 (isStrictlySorted!935 l!1177))))

(assert (=> start!132880 e!866544))

(declare-fun e!866543 () Bool)

(assert (=> start!132880 e!866543))

(assert (=> start!132880 true))

(declare-fun b!1555886 () Bool)

(declare-fun res!1064585 () Bool)

(assert (=> b!1555886 (=> (not res!1064585) (not e!866544))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555886 (= res!1064585 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1555887 () Bool)

(declare-fun ListPrimitiveSize!175 (List!36431) Int)

(assert (=> b!1555887 (= e!866544 (< (ListPrimitiveSize!175 l!1177) 0))))

(declare-fun b!1555888 () Bool)

(declare-fun tp_is_empty!38341 () Bool)

(declare-fun tp!112372 () Bool)

(assert (=> b!1555888 (= e!866543 (and tp_is_empty!38341 tp!112372))))

(assert (= (and start!132880 res!1064586) b!1555886))

(assert (= (and b!1555886 res!1064585) b!1555887))

(assert (= (and start!132880 (is-Cons!36427 l!1177)) b!1555888))

(declare-fun m!1433673 () Bool)

(assert (=> start!132880 m!1433673))

(declare-fun m!1433675 () Bool)

(assert (=> b!1555887 m!1433675))

(push 1)

(assert (not b!1555887))

(assert (not start!132880))

(assert (not b!1555888))

(assert tp_is_empty!38341)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161971 () Bool)

(declare-fun lt!670298 () Int)

(assert (=> d!161971 (>= lt!670298 0)))

(declare-fun e!866566 () Int)

(assert (=> d!161971 (= lt!670298 e!866566)))

(declare-fun c!143645 () Bool)

(assert (=> d!161971 (= c!143645 (is-Nil!36428 l!1177))))

(assert (=> d!161971 (= (ListPrimitiveSize!175 l!1177) lt!670298)))

(declare-fun b!1555921 () Bool)

(assert (=> b!1555921 (= e!866566 0)))

(declare-fun b!1555922 () Bool)

(assert (=> b!1555922 (= e!866566 (+ 1 (ListPrimitiveSize!175 (t!51159 l!1177))))))

(assert (= (and d!161971 c!143645) b!1555921))

(assert (= (and d!161971 (not c!143645)) b!1555922))

(declare-fun m!1433687 () Bool)

(assert (=> b!1555922 m!1433687))

(assert (=> b!1555887 d!161971))

(declare-fun d!161975 () Bool)

(declare-fun res!1064615 () Bool)

(declare-fun e!866585 () Bool)

(assert (=> d!161975 (=> res!1064615 e!866585)))

(assert (=> d!161975 (= res!1064615 (or (is-Nil!36428 l!1177) (is-Nil!36428 (t!51159 l!1177))))))

(assert (=> d!161975 (= (isStrictlySorted!935 l!1177) e!866585)))

(declare-fun b!1555946 () Bool)

(declare-fun e!866586 () Bool)

(assert (=> b!1555946 (= e!866585 e!866586)))

(declare-fun res!1064616 () Bool)

(assert (=> b!1555946 (=> (not res!1064616) (not e!866586))))

(assert (=> b!1555946 (= res!1064616 (bvslt (_1!12519 (h!37874 l!1177)) (_1!12519 (h!37874 (t!51159 l!1177)))))))

(declare-fun b!1555947 () Bool)

(assert (=> b!1555947 (= e!866586 (isStrictlySorted!935 (t!51159 l!1177)))))

(assert (= (and d!161975 (not res!1064615)) b!1555946))

(assert (= (and b!1555946 res!1064616) b!1555947))

(declare-fun m!1433695 () Bool)

(assert (=> b!1555947 m!1433695))

(assert (=> start!132880 d!161975))

(declare-fun b!1555957 () Bool)

(declare-fun e!866592 () Bool)

(declare-fun tp!112387 () Bool)

(assert (=> b!1555957 (= e!866592 (and tp_is_empty!38341 tp!112387))))

(assert (=> b!1555888 (= tp!112372 e!866592)))

(assert (= (and b!1555888 (is-Cons!36427 (t!51159 l!1177))) b!1555957))

(push 1)

