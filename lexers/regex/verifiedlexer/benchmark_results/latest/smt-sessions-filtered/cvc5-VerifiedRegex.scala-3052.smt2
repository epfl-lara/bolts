; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!182808 () Bool)

(assert start!182808)

(declare-fun res!826107 () Bool)

(declare-fun e!1174434 () Bool)

(assert (=> start!182808 (=> (not res!826107) (not e!1174434))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1459 0))(
  ( (B!1460 (val!5677 Int)) )
))
(declare-datatypes ((List!20277 0))(
  ( (Nil!20207) (Cons!20207 (h!25608 B!1459) (t!171706 List!20277)) )
))
(declare-fun l!3005 () List!20277)

(assert (=> start!182808 (= res!826107 (and (>= i!921 0) (not (is-Nil!20207 l!3005)) (not (= i!921 0))))))

(assert (=> start!182808 e!1174434))

(assert (=> start!182808 true))

(declare-fun e!1174435 () Bool)

(assert (=> start!182808 e!1174435))

(declare-fun e!1174433 () Bool)

(assert (=> start!182808 e!1174433))

(declare-fun b!1837941 () Bool)

(assert (=> b!1837941 (= e!1174434 (not true))))

(declare-fun lt!713308 () List!20277)

(declare-datatypes ((tuple2!19648 0))(
  ( (tuple2!19649 (_1!11226 List!20277) (_2!11226 List!20277)) )
))
(declare-fun lt!713306 () tuple2!19648)

(declare-fun lt!713307 () List!20277)

(declare-fun acc!274 () List!20277)

(declare-fun ++!5480 (List!20277 List!20277) List!20277)

(assert (=> b!1837941 (= lt!713307 (++!5480 acc!274 (++!5480 lt!713308 (_1!11226 lt!713306))))))

(declare-datatypes ((Unit!34917 0))(
  ( (Unit!34918) )
))
(declare-fun lt!713304 () Unit!34917)

(declare-fun lemmaConcatAssociativity!1078 (List!20277 List!20277 List!20277) Unit!34917)

(assert (=> b!1837941 (= lt!713304 (lemmaConcatAssociativity!1078 acc!274 lt!713308 (_1!11226 lt!713306)))))

(declare-fun lt!713303 () List!20277)

(declare-fun splitAtIndexTr!5 (List!20277 Int List!20277) tuple2!19648)

(assert (=> b!1837941 (= (splitAtIndexTr!5 (t!171706 l!3005) (- i!921 1) lt!713303) (tuple2!19649 lt!713307 (_2!11226 lt!713306)))))

(assert (=> b!1837941 (= lt!713307 (++!5480 lt!713303 (_1!11226 lt!713306)))))

(declare-fun splitAtIndex!7 (List!20277 Int) tuple2!19648)

(assert (=> b!1837941 (= lt!713306 (splitAtIndex!7 (t!171706 l!3005) (- i!921 1)))))

(declare-fun lt!713305 () Unit!34917)

(declare-fun lemmaSplitAtIndexTrEqualsSplitAtIndex!5 (List!20277 Int List!20277) Unit!34917)

(assert (=> b!1837941 (= lt!713305 (lemmaSplitAtIndexTrEqualsSplitAtIndex!5 (t!171706 l!3005) (- i!921 1) lt!713303))))

(assert (=> b!1837941 (= lt!713303 (++!5480 acc!274 lt!713308))))

(assert (=> b!1837941 (= lt!713308 (Cons!20207 (h!25608 l!3005) Nil!20207))))

(declare-fun b!1837942 () Bool)

(declare-fun tp_is_empty!8207 () Bool)

(declare-fun tp!519949 () Bool)

(assert (=> b!1837942 (= e!1174435 (and tp_is_empty!8207 tp!519949))))

(declare-fun b!1837943 () Bool)

(declare-fun tp!519950 () Bool)

(assert (=> b!1837943 (= e!1174433 (and tp_is_empty!8207 tp!519950))))

(assert (= (and start!182808 res!826107) b!1837941))

(assert (= (and start!182808 (is-Cons!20207 l!3005)) b!1837942))

(assert (= (and start!182808 (is-Cons!20207 acc!274)) b!1837943))

(declare-fun m!2265841 () Bool)

(assert (=> b!1837941 m!2265841))

(declare-fun m!2265843 () Bool)

(assert (=> b!1837941 m!2265843))

(declare-fun m!2265845 () Bool)

(assert (=> b!1837941 m!2265845))

(declare-fun m!2265847 () Bool)

(assert (=> b!1837941 m!2265847))

(declare-fun m!2265849 () Bool)

(assert (=> b!1837941 m!2265849))

(declare-fun m!2265851 () Bool)

(assert (=> b!1837941 m!2265851))

(assert (=> b!1837941 m!2265851))

(declare-fun m!2265853 () Bool)

(assert (=> b!1837941 m!2265853))

(declare-fun m!2265855 () Bool)

(assert (=> b!1837941 m!2265855))

(push 1)

(assert (not b!1837941))

(assert (not b!1837943))

(assert (not b!1837942))

(assert tp_is_empty!8207)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

