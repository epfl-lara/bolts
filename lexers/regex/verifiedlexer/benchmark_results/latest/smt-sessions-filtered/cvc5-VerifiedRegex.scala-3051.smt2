; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!182804 () Bool)

(assert start!182804)

(declare-fun res!826101 () Bool)

(declare-fun e!1174417 () Bool)

(assert (=> start!182804 (=> (not res!826101) (not e!1174417))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1455 0))(
  ( (B!1456 (val!5675 Int)) )
))
(declare-datatypes ((List!20275 0))(
  ( (Nil!20205) (Cons!20205 (h!25606 B!1455) (t!171704 List!20275)) )
))
(declare-fun l!3005 () List!20275)

(assert (=> start!182804 (= res!826101 (and (>= i!921 0) (not (is-Nil!20205 l!3005)) (not (= i!921 0))))))

(assert (=> start!182804 e!1174417))

(assert (=> start!182804 true))

(declare-fun e!1174415 () Bool)

(assert (=> start!182804 e!1174415))

(declare-fun e!1174416 () Bool)

(assert (=> start!182804 e!1174416))

(declare-fun b!1837923 () Bool)

(assert (=> b!1837923 (= e!1174417 (not (>= (- i!921 1) 0)))))

(declare-datatypes ((tuple2!19644 0))(
  ( (tuple2!19645 (_1!11224 List!20275) (_2!11224 List!20275)) )
))
(declare-fun lt!713269 () tuple2!19644)

(declare-fun acc!274 () List!20275)

(declare-fun lt!713268 () List!20275)

(declare-fun lt!713270 () List!20275)

(declare-fun ++!5478 (List!20275 List!20275) List!20275)

(assert (=> b!1837923 (= lt!713268 (++!5478 acc!274 (++!5478 lt!713270 (_1!11224 lt!713269))))))

(declare-datatypes ((Unit!34913 0))(
  ( (Unit!34914) )
))
(declare-fun lt!713272 () Unit!34913)

(declare-fun lemmaConcatAssociativity!1076 (List!20275 List!20275 List!20275) Unit!34913)

(assert (=> b!1837923 (= lt!713272 (lemmaConcatAssociativity!1076 acc!274 lt!713270 (_1!11224 lt!713269)))))

(declare-fun lt!713267 () List!20275)

(declare-fun splitAtIndexTr!3 (List!20275 Int List!20275) tuple2!19644)

(assert (=> b!1837923 (= (splitAtIndexTr!3 (t!171704 l!3005) (- i!921 1) lt!713267) (tuple2!19645 lt!713268 (_2!11224 lt!713269)))))

(assert (=> b!1837923 (= lt!713268 (++!5478 lt!713267 (_1!11224 lt!713269)))))

(declare-fun splitAtIndex!5 (List!20275 Int) tuple2!19644)

(assert (=> b!1837923 (= lt!713269 (splitAtIndex!5 (t!171704 l!3005) (- i!921 1)))))

(declare-fun lt!713271 () Unit!34913)

(declare-fun lemmaSplitAtIndexTrEqualsSplitAtIndex!3 (List!20275 Int List!20275) Unit!34913)

(assert (=> b!1837923 (= lt!713271 (lemmaSplitAtIndexTrEqualsSplitAtIndex!3 (t!171704 l!3005) (- i!921 1) lt!713267))))

(assert (=> b!1837923 (= lt!713267 (++!5478 acc!274 lt!713270))))

(assert (=> b!1837923 (= lt!713270 (Cons!20205 (h!25606 l!3005) Nil!20205))))

(declare-fun b!1837924 () Bool)

(declare-fun tp_is_empty!8203 () Bool)

(declare-fun tp!519937 () Bool)

(assert (=> b!1837924 (= e!1174415 (and tp_is_empty!8203 tp!519937))))

(declare-fun b!1837925 () Bool)

(declare-fun tp!519938 () Bool)

(assert (=> b!1837925 (= e!1174416 (and tp_is_empty!8203 tp!519938))))

(assert (= (and start!182804 res!826101) b!1837923))

(assert (= (and start!182804 (is-Cons!20205 l!3005)) b!1837924))

(assert (= (and start!182804 (is-Cons!20205 acc!274)) b!1837925))

(declare-fun m!2265809 () Bool)

(assert (=> b!1837923 m!2265809))

(declare-fun m!2265811 () Bool)

(assert (=> b!1837923 m!2265811))

(declare-fun m!2265813 () Bool)

(assert (=> b!1837923 m!2265813))

(declare-fun m!2265815 () Bool)

(assert (=> b!1837923 m!2265815))

(assert (=> b!1837923 m!2265815))

(declare-fun m!2265817 () Bool)

(assert (=> b!1837923 m!2265817))

(declare-fun m!2265819 () Bool)

(assert (=> b!1837923 m!2265819))

(declare-fun m!2265821 () Bool)

(assert (=> b!1837923 m!2265821))

(declare-fun m!2265823 () Bool)

(assert (=> b!1837923 m!2265823))

(push 1)

(assert (not b!1837923))

(assert (not b!1837925))

(assert (not b!1837924))

(assert tp_is_empty!8203)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

