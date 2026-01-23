; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!228392 () Bool)

(assert start!228392)

(declare-datatypes ((T!43542 0))(
  ( (T!43543 (val!7927 Int)) )
))
(declare-datatypes ((List!27713 0))(
  ( (Nil!27615) (Cons!27615 (h!33016 T!43542) (t!207315 List!27713)) )
))
(declare-datatypes ((IArray!18045 0))(
  ( (IArray!18046 (innerList!9080 List!27713)) )
))
(declare-datatypes ((Conc!9020 0))(
  ( (Node!9020 (left!20927 Conc!9020) (right!21257 Conc!9020) (csize!18270 Int) (cheight!9231 Int)) (Leaf!13240 (xs!11962 IArray!18045) (csize!18271 Int)) (Empty!9020) )
))
(declare-fun inv!37403 (Conc!9020) Bool)

(assert (=> start!228392 (not (inv!37403 Empty!9020))))

(declare-fun bs!458786 () Bool)

(assert (= bs!458786 start!228392))

(declare-fun m!2741835 () Bool)

(assert (=> bs!458786 m!2741835))

(push 1)

(assert (not start!228392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!684540 () Bool)

(declare-fun c!366908 () Bool)

(assert (=> d!684540 (= c!366908 (is-Node!9020 Empty!9020))))

(declare-fun e!1484214 () Bool)

(assert (=> d!684540 (= (inv!37403 Empty!9020) e!1484214)))

(declare-fun b!2314996 () Bool)

(declare-fun inv!37405 (Conc!9020) Bool)

(assert (=> b!2314996 (= e!1484214 (inv!37405 Empty!9020))))

(declare-fun b!2314997 () Bool)

(declare-fun e!1484215 () Bool)

(assert (=> b!2314997 (= e!1484214 e!1484215)))

(declare-fun res!989145 () Bool)

(assert (=> b!2314997 (= res!989145 (not (is-Leaf!13240 Empty!9020)))))

(assert (=> b!2314997 (=> res!989145 e!1484215)))

(declare-fun b!2314998 () Bool)

(declare-fun inv!37406 (Conc!9020) Bool)

(assert (=> b!2314998 (= e!1484215 (inv!37406 Empty!9020))))

(assert (= (and d!684540 c!366908) b!2314996))

(assert (= (and d!684540 (not c!366908)) b!2314997))

(assert (= (and b!2314997 (not res!989145)) b!2314998))

(declare-fun m!2741839 () Bool)

(assert (=> b!2314996 m!2741839))

(declare-fun m!2741841 () Bool)

(assert (=> b!2314998 m!2741841))

(assert (=> start!228392 d!684540))

(push 1)

(assert (not b!2314996))

(assert (not b!2314998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

