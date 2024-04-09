; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133210 () Bool)

(assert start!133210)

(declare-fun b!1558018 () Bool)

(declare-fun e!867924 () Bool)

(declare-fun tp_is_empty!38425 () Bool)

(declare-fun tp!112603 () Bool)

(assert (=> b!1558018 (= e!867924 (and tp_is_empty!38425 tp!112603))))

(declare-fun b!1558015 () Bool)

(declare-fun res!1065667 () Bool)

(declare-fun e!867923 () Bool)

(assert (=> b!1558015 (=> (not res!1065667) (not e!867923))))

(declare-datatypes ((B!2420 0))(
  ( (B!2421 (val!19296 Int)) )
))
(declare-datatypes ((tuple2!25108 0))(
  ( (tuple2!25109 (_1!12564 (_ BitVec 64)) (_2!12564 B!2420)) )
))
(declare-datatypes ((List!36476 0))(
  ( (Nil!36473) (Cons!36472 (h!37919 tuple2!25108) (t!51210 List!36476)) )
))
(declare-fun l!1292 () List!36476)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!831 (List!36476 (_ BitVec 64)) Bool)

(assert (=> b!1558015 (= res!1065667 (containsKey!831 l!1292 otherKey!62))))

(declare-fun res!1065668 () Bool)

(assert (=> start!133210 (=> (not res!1065668) (not e!867923))))

(declare-fun isStrictlySorted!967 (List!36476) Bool)

(assert (=> start!133210 (= res!1065668 (isStrictlySorted!967 l!1292))))

(assert (=> start!133210 e!867923))

(assert (=> start!133210 e!867924))

(assert (=> start!133210 true))

(declare-fun b!1558017 () Bool)

(declare-fun ListPrimitiveSize!181 (List!36476) Int)

(assert (=> b!1558017 (= e!867923 (< (ListPrimitiveSize!181 l!1292) 0))))

(declare-fun b!1558016 () Bool)

(declare-fun res!1065669 () Bool)

(assert (=> b!1558016 (=> (not res!1065669) (not e!867923))))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1558016 (= res!1065669 (not (= otherKey!62 newKey!135)))))

(assert (= (and start!133210 res!1065668) b!1558015))

(assert (= (and b!1558015 res!1065667) b!1558016))

(assert (= (and b!1558016 res!1065669) b!1558017))

(assert (= (and start!133210 (is-Cons!36472 l!1292)) b!1558018))

(declare-fun m!1434891 () Bool)

(assert (=> b!1558015 m!1434891))

(declare-fun m!1434893 () Bool)

(assert (=> start!133210 m!1434893))

(declare-fun m!1434895 () Bool)

(assert (=> b!1558017 m!1434895))

(push 1)

(assert (not start!133210))

(assert (not b!1558017))

(assert tp_is_empty!38425)

(assert (not b!1558018))

(assert (not b!1558015))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162513 () Bool)

(declare-fun res!1065696 () Bool)

(declare-fun e!867948 () Bool)

(assert (=> d!162513 (=> res!1065696 e!867948)))

(assert (=> d!162513 (= res!1065696 (or (is-Nil!36473 l!1292) (is-Nil!36473 (t!51210 l!1292))))))

(assert (=> d!162513 (= (isStrictlySorted!967 l!1292) e!867948)))

(declare-fun b!1558057 () Bool)

(declare-fun e!867949 () Bool)

(assert (=> b!1558057 (= e!867948 e!867949)))

(declare-fun res!1065697 () Bool)

(assert (=> b!1558057 (=> (not res!1065697) (not e!867949))))

(assert (=> b!1558057 (= res!1065697 (bvslt (_1!12564 (h!37919 l!1292)) (_1!12564 (h!37919 (t!51210 l!1292)))))))

(declare-fun b!1558058 () Bool)

(assert (=> b!1558058 (= e!867949 (isStrictlySorted!967 (t!51210 l!1292)))))

(assert (= (and d!162513 (not res!1065696)) b!1558057))

(assert (= (and b!1558057 res!1065697) b!1558058))

(declare-fun m!1434911 () Bool)

(assert (=> b!1558058 m!1434911))

(assert (=> start!133210 d!162513))

(declare-fun d!162521 () Bool)

(declare-fun res!1065710 () Bool)

(declare-fun e!867965 () Bool)

(assert (=> d!162521 (=> res!1065710 e!867965)))

(assert (=> d!162521 (= res!1065710 (and (is-Cons!36472 l!1292) (= (_1!12564 (h!37919 l!1292)) otherKey!62)))))

(assert (=> d!162521 (= (containsKey!831 l!1292 otherKey!62) e!867965)))

(declare-fun b!1558077 () Bool)

(declare-fun e!867966 () Bool)

(assert (=> b!1558077 (= e!867965 e!867966)))

(declare-fun res!1065711 () Bool)

(assert (=> b!1558077 (=> (not res!1065711) (not e!867966))))

(assert (=> b!1558077 (= res!1065711 (and (or (not (is-Cons!36472 l!1292)) (bvsle (_1!12564 (h!37919 l!1292)) otherKey!62)) (is-Cons!36472 l!1292) (bvslt (_1!12564 (h!37919 l!1292)) otherKey!62)))))

(declare-fun b!1558078 () Bool)

(assert (=> b!1558078 (= e!867966 (containsKey!831 (t!51210 l!1292) otherKey!62))))

(assert (= (and d!162521 (not res!1065710)) b!1558077))

(assert (= (and b!1558077 res!1065711) b!1558078))

(declare-fun m!1434919 () Bool)

(assert (=> b!1558078 m!1434919))

(assert (=> b!1558015 d!162521))

(declare-fun d!162529 () Bool)

(declare-fun lt!670694 () Int)

(assert (=> d!162529 (>= lt!670694 0)))

(declare-fun e!867977 () Int)

(assert (=> d!162529 (= lt!670694 e!867977)))

(declare-fun c!144026 () Bool)

(assert (=> d!162529 (= c!144026 (is-Nil!36473 l!1292))))

(assert (=> d!162529 (= (ListPrimitiveSize!181 l!1292) lt!670694)))

(declare-fun b!1558091 () Bool)

(assert (=> b!1558091 (= e!867977 0)))

(declare-fun b!1558092 () Bool)

(assert (=> b!1558092 (= e!867977 (+ 1 (ListPrimitiveSize!181 (t!51210 l!1292))))))

(assert (= (and d!162529 c!144026) b!1558091))

(assert (= (and d!162529 (not c!144026)) b!1558092))

(declare-fun m!1434921 () Bool)

(assert (=> b!1558092 m!1434921))

(assert (=> b!1558017 d!162529))

(declare-fun b!1558109 () Bool)

(declare-fun e!867988 () Bool)

(declare-fun tp!112616 () Bool)

(assert (=> b!1558109 (= e!867988 (and tp_is_empty!38425 tp!112616))))

(assert (=> b!1558018 (= tp!112603 e!867988)))

(assert (= (and b!1558018 (is-Cons!36472 (t!51210 l!1292))) b!1558109))

(push 1)

(assert (not b!1558058))

(assert (not b!1558092))

(assert (not b!1558109))

(assert tp_is_empty!38425)

(assert (not b!1558078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

