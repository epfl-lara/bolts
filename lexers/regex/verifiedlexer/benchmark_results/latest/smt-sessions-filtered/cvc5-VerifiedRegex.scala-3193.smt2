; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!186246 () Bool)

(assert start!186246)

(declare-fun b!1862374 () Bool)

(declare-fun res!833958 () Bool)

(declare-fun e!1189196 () Bool)

(assert (=> b!1862374 (=> (not res!833958) (not e!1189196))))

(declare-fun e!1189197 () Bool)

(assert (=> b!1862374 (= res!833958 e!1189197)))

(declare-fun res!833955 () Bool)

(assert (=> b!1862374 (=> res!833955 e!1189197)))

(declare-datatypes ((T!32974 0))(
  ( (T!32975 (val!5921 Int)) )
))
(declare-datatypes ((List!20738 0))(
  ( (Nil!20656) (Cons!20656 (h!26057 T!32974) (t!172795 List!20738)) )
))
(declare-datatypes ((IArray!13707 0))(
  ( (IArray!13708 (innerList!6911 List!20738)) )
))
(declare-datatypes ((Conc!6851 0))(
  ( (Node!6851 (left!16630 Conc!6851) (right!16960 Conc!6851) (csize!13932 Int) (cheight!7062 Int)) (Leaf!10045 (xs!9727 IArray!13707) (csize!13933 Int)) (Empty!6851) )
))
(declare-fun t!4595 () Conc!6851)

(assert (=> b!1862374 (= res!833955 (not (is-Node!6851 t!4595)))))

(declare-fun b!1862375 () Bool)

(declare-fun isEmpty!12860 (Conc!6851) Bool)

(assert (=> b!1862375 (= e!1189197 (not (isEmpty!12860 (left!16630 t!4595))))))

(declare-fun b!1862376 () Bool)

(declare-fun res!833957 () Bool)

(assert (=> b!1862376 (=> (not res!833957) (not e!1189196))))

(assert (=> b!1862376 (= res!833957 (is-Node!6851 t!4595))))

(declare-fun res!833959 () Bool)

(assert (=> start!186246 (=> (not res!833959) (not e!1189196))))

(declare-fun isBalanced!2152 (Conc!6851) Bool)

(assert (=> start!186246 (= res!833959 (isBalanced!2152 t!4595))))

(assert (=> start!186246 e!1189196))

(declare-fun e!1189199 () Bool)

(declare-fun inv!27252 (Conc!6851) Bool)

(assert (=> start!186246 (and (inv!27252 t!4595) e!1189199)))

(declare-fun b!1862377 () Bool)

(declare-fun res!833956 () Bool)

(assert (=> b!1862377 (=> (not res!833956) (not e!1189196))))

(assert (=> b!1862377 (= res!833956 (not (isEmpty!12860 t!4595)))))

(declare-fun b!1862378 () Bool)

(declare-fun res!833954 () Bool)

(assert (=> b!1862378 (=> (not res!833954) (not e!1189196))))

(assert (=> b!1862378 (= res!833954 (not (is-Leaf!10045 t!4595)))))

(declare-fun tp!530646 () Bool)

(declare-fun b!1862379 () Bool)

(declare-fun tp!530645 () Bool)

(assert (=> b!1862379 (= e!1189199 (and (inv!27252 (left!16630 t!4595)) tp!530646 (inv!27252 (right!16960 t!4595)) tp!530645))))

(declare-fun b!1862380 () Bool)

(assert (=> b!1862380 (= e!1189196 false)))

(declare-fun lt!717942 () List!20738)

(declare-fun list!8421 (Conc!6851) List!20738)

(assert (=> b!1862380 (= lt!717942 (list!8421 (right!16960 t!4595)))))

(declare-fun lt!717943 () List!20738)

(assert (=> b!1862380 (= lt!717943 (list!8421 (left!16630 t!4595)))))

(declare-fun b!1862381 () Bool)

(declare-fun e!1189198 () Bool)

(declare-fun inv!27253 (IArray!13707) Bool)

(assert (=> b!1862381 (= e!1189199 (and (inv!27253 (xs!9727 t!4595)) e!1189198))))

(declare-fun b!1862382 () Bool)

(declare-fun tp!530647 () Bool)

(assert (=> b!1862382 (= e!1189198 tp!530647)))

(assert (= (and start!186246 res!833959) b!1862377))

(assert (= (and b!1862377 res!833956) b!1862378))

(assert (= (and b!1862378 res!833954) b!1862374))

(assert (= (and b!1862374 (not res!833955)) b!1862375))

(assert (= (and b!1862374 res!833958) b!1862376))

(assert (= (and b!1862376 res!833957) b!1862380))

(assert (= (and start!186246 (is-Node!6851 t!4595)) b!1862379))

(assert (= b!1862381 b!1862382))

(assert (= (and start!186246 (is-Leaf!10045 t!4595)) b!1862381))

(declare-fun m!2286067 () Bool)

(assert (=> b!1862380 m!2286067))

(declare-fun m!2286069 () Bool)

(assert (=> b!1862380 m!2286069))

(declare-fun m!2286071 () Bool)

(assert (=> b!1862381 m!2286071))

(declare-fun m!2286073 () Bool)

(assert (=> b!1862375 m!2286073))

(declare-fun m!2286075 () Bool)

(assert (=> b!1862377 m!2286075))

(declare-fun m!2286077 () Bool)

(assert (=> start!186246 m!2286077))

(declare-fun m!2286079 () Bool)

(assert (=> start!186246 m!2286079))

(declare-fun m!2286081 () Bool)

(assert (=> b!1862379 m!2286081))

(declare-fun m!2286083 () Bool)

(assert (=> b!1862379 m!2286083))

(push 1)

(assert (not b!1862381))

(assert (not start!186246))

(assert (not b!1862377))

(assert (not b!1862380))

(assert (not b!1862379))

(assert (not b!1862382))

(assert (not b!1862375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

