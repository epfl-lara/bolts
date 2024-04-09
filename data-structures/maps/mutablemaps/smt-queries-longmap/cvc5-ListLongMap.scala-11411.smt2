; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132910 () Bool)

(assert start!132910)

(declare-fun b!1556034 () Bool)

(declare-fun e!866649 () Bool)

(declare-datatypes ((B!2342 0))(
  ( (B!2343 (val!19257 Int)) )
))
(declare-datatypes ((tuple2!25030 0))(
  ( (tuple2!25031 (_1!12525 (_ BitVec 64)) (_2!12525 B!2342)) )
))
(declare-datatypes ((List!36437 0))(
  ( (Nil!36434) (Cons!36433 (h!37880 tuple2!25030) (t!51165 List!36437)) )
))
(declare-fun l!1177 () List!36437)

(declare-fun ListPrimitiveSize!178 (List!36437) Int)

(assert (=> b!1556034 (= e!866649 (>= (ListPrimitiveSize!178 (t!51165 l!1177)) (ListPrimitiveSize!178 l!1177)))))

(declare-fun b!1556035 () Bool)

(declare-fun e!866648 () Bool)

(declare-fun tp_is_empty!38353 () Bool)

(declare-fun tp!112408 () Bool)

(assert (=> b!1556035 (= e!866648 (and tp_is_empty!38353 tp!112408))))

(declare-fun res!1064665 () Bool)

(assert (=> start!132910 (=> (not res!1064665) (not e!866649))))

(declare-fun isStrictlySorted!941 (List!36437) Bool)

(assert (=> start!132910 (= res!1064665 (isStrictlySorted!941 l!1177))))

(assert (=> start!132910 e!866649))

(assert (=> start!132910 e!866648))

(assert (=> start!132910 true))

(declare-fun b!1556033 () Bool)

(declare-fun res!1064666 () Bool)

(assert (=> b!1556033 (=> (not res!1064666) (not e!866649))))

(assert (=> b!1556033 (= res!1064666 (isStrictlySorted!941 (t!51165 l!1177)))))

(declare-fun b!1556032 () Bool)

(declare-fun res!1064667 () Bool)

(assert (=> b!1556032 (=> (not res!1064667) (not e!866649))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1556032 (= res!1064667 (and (not (= newKey!105 otherKey!50)) (is-Cons!36433 l!1177) (not (= (_1!12525 (h!37880 l!1177)) otherKey!50))))))

(assert (= (and start!132910 res!1064665) b!1556032))

(assert (= (and b!1556032 res!1064667) b!1556033))

(assert (= (and b!1556033 res!1064666) b!1556034))

(assert (= (and start!132910 (is-Cons!36433 l!1177)) b!1556035))

(declare-fun m!1433715 () Bool)

(assert (=> b!1556034 m!1433715))

(declare-fun m!1433717 () Bool)

(assert (=> b!1556034 m!1433717))

(declare-fun m!1433719 () Bool)

(assert (=> start!132910 m!1433719))

(declare-fun m!1433721 () Bool)

(assert (=> b!1556033 m!1433721))

(push 1)

(assert (not start!132910))

(assert (not b!1556034))

(assert tp_is_empty!38353)

(assert (not b!1556035))

(assert (not b!1556033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162001 () Bool)

(declare-fun lt!670311 () Int)

(assert (=> d!162001 (>= lt!670311 0)))

(declare-fun e!866677 () Int)

(assert (=> d!162001 (= lt!670311 e!866677)))

(declare-fun c!143658 () Bool)

(assert (=> d!162001 (= c!143658 (is-Nil!36434 (t!51165 l!1177)))))

(assert (=> d!162001 (= (ListPrimitiveSize!178 (t!51165 l!1177)) lt!670311)))

(declare-fun b!1556084 () Bool)

(assert (=> b!1556084 (= e!866677 0)))

(declare-fun b!1556085 () Bool)

(assert (=> b!1556085 (= e!866677 (+ 1 (ListPrimitiveSize!178 (t!51165 (t!51165 l!1177)))))))

(assert (= (and d!162001 c!143658) b!1556084))

(assert (= (and d!162001 (not c!143658)) b!1556085))

(declare-fun m!1433745 () Bool)

(assert (=> b!1556085 m!1433745))

(assert (=> b!1556034 d!162001))

(declare-fun d!162009 () Bool)

(declare-fun lt!670313 () Int)

(assert (=> d!162009 (>= lt!670313 0)))

(declare-fun e!866679 () Int)

(assert (=> d!162009 (= lt!670313 e!866679)))

(declare-fun c!143660 () Bool)

(assert (=> d!162009 (= c!143660 (is-Nil!36434 l!1177))))

(assert (=> d!162009 (= (ListPrimitiveSize!178 l!1177) lt!670313)))

(declare-fun b!1556088 () Bool)

(assert (=> b!1556088 (= e!866679 0)))

(declare-fun b!1556089 () Bool)

(assert (=> b!1556089 (= e!866679 (+ 1 (ListPrimitiveSize!178 (t!51165 l!1177))))))

(assert (= (and d!162009 c!143660) b!1556088))

(assert (= (and d!162009 (not c!143660)) b!1556089))

(assert (=> b!1556089 m!1433715))

(assert (=> b!1556034 d!162009))

(declare-fun d!162013 () Bool)

(declare-fun res!1064706 () Bool)

(declare-fun e!866697 () Bool)

(assert (=> d!162013 (=> res!1064706 e!866697)))

(assert (=> d!162013 (= res!1064706 (or (is-Nil!36434 l!1177) (is-Nil!36434 (t!51165 l!1177))))))

(assert (=> d!162013 (= (isStrictlySorted!941 l!1177) e!866697)))

(declare-fun b!1556109 () Bool)

(declare-fun e!866698 () Bool)

(assert (=> b!1556109 (= e!866697 e!866698)))

(declare-fun res!1064707 () Bool)

(assert (=> b!1556109 (=> (not res!1064707) (not e!866698))))

(assert (=> b!1556109 (= res!1064707 (bvslt (_1!12525 (h!37880 l!1177)) (_1!12525 (h!37880 (t!51165 l!1177)))))))

(declare-fun b!1556110 () Bool)

(assert (=> b!1556110 (= e!866698 (isStrictlySorted!941 (t!51165 l!1177)))))

(assert (= (and d!162013 (not res!1064706)) b!1556109))

(assert (= (and b!1556109 res!1064707) b!1556110))

(assert (=> b!1556110 m!1433721))

(assert (=> start!132910 d!162013))

(declare-fun d!162017 () Bool)

(declare-fun res!1064708 () Bool)

(declare-fun e!866699 () Bool)

(assert (=> d!162017 (=> res!1064708 e!866699)))

(assert (=> d!162017 (= res!1064708 (or (is-Nil!36434 (t!51165 l!1177)) (is-Nil!36434 (t!51165 (t!51165 l!1177)))))))

(assert (=> d!162017 (= (isStrictlySorted!941 (t!51165 l!1177)) e!866699)))

(declare-fun b!1556111 () Bool)

(declare-fun e!866700 () Bool)

(assert (=> b!1556111 (= e!866699 e!866700)))

(declare-fun res!1064709 () Bool)

(assert (=> b!1556111 (=> (not res!1064709) (not e!866700))))

(assert (=> b!1556111 (= res!1064709 (bvslt (_1!12525 (h!37880 (t!51165 l!1177))) (_1!12525 (h!37880 (t!51165 (t!51165 l!1177))))))))

(declare-fun b!1556112 () Bool)

