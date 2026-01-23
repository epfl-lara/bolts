; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!182812 () Bool)

(assert start!182812)

(declare-fun res!826113 () Bool)

(declare-fun e!1174451 () Bool)

(assert (=> start!182812 (=> (not res!826113) (not e!1174451))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1463 0))(
  ( (B!1464 (val!5679 Int)) )
))
(declare-datatypes ((List!20279 0))(
  ( (Nil!20209) (Cons!20209 (h!25610 B!1463) (t!171708 List!20279)) )
))
(declare-fun l!3005 () List!20279)

(assert (=> start!182812 (= res!826113 (and (>= i!921 0) (not (is-Nil!20209 l!3005)) (not (= i!921 0))))))

(assert (=> start!182812 e!1174451))

(assert (=> start!182812 true))

(declare-fun e!1174453 () Bool)

(assert (=> start!182812 e!1174453))

(declare-fun e!1174452 () Bool)

(assert (=> start!182812 e!1174452))

(declare-fun b!1837959 () Bool)

(assert (=> b!1837959 (= e!1174451 (not true))))

(declare-datatypes ((tuple2!19652 0))(
  ( (tuple2!19653 (_1!11228 List!20279) (_2!11228 List!20279)) )
))
(declare-fun lt!713334 () tuple2!19652)

(declare-fun lt!713335 () List!20279)

(declare-fun splitAtIndexTr!7 (List!20279 Int List!20279) tuple2!19652)

(declare-fun ++!5482 (List!20279 List!20279) List!20279)

(assert (=> b!1837959 (= (splitAtIndexTr!7 (t!171708 l!3005) (- i!921 1) lt!713335) (tuple2!19653 (++!5482 lt!713335 (_1!11228 lt!713334)) (_2!11228 lt!713334)))))

(declare-fun splitAtIndex!9 (List!20279 Int) tuple2!19652)

(assert (=> b!1837959 (= lt!713334 (splitAtIndex!9 (t!171708 l!3005) (- i!921 1)))))

(declare-datatypes ((Unit!34921 0))(
  ( (Unit!34922) )
))
(declare-fun lt!713333 () Unit!34921)

(declare-fun lemmaSplitAtIndexTrEqualsSplitAtIndex!7 (List!20279 Int List!20279) Unit!34921)

(assert (=> b!1837959 (= lt!713333 (lemmaSplitAtIndexTrEqualsSplitAtIndex!7 (t!171708 l!3005) (- i!921 1) lt!713335))))

(declare-fun acc!274 () List!20279)

(assert (=> b!1837959 (= lt!713335 (++!5482 acc!274 (Cons!20209 (h!25610 l!3005) Nil!20209)))))

(declare-fun b!1837960 () Bool)

(declare-fun tp_is_empty!8211 () Bool)

(declare-fun tp!519962 () Bool)

(assert (=> b!1837960 (= e!1174453 (and tp_is_empty!8211 tp!519962))))

(declare-fun b!1837961 () Bool)

(declare-fun tp!519961 () Bool)

(assert (=> b!1837961 (= e!1174452 (and tp_is_empty!8211 tp!519961))))

(assert (= (and start!182812 res!826113) b!1837959))

(assert (= (and start!182812 (is-Cons!20209 l!3005)) b!1837960))

(assert (= (and start!182812 (is-Cons!20209 acc!274)) b!1837961))

(declare-fun m!2265873 () Bool)

(assert (=> b!1837959 m!2265873))

(declare-fun m!2265875 () Bool)

(assert (=> b!1837959 m!2265875))

(declare-fun m!2265877 () Bool)

(assert (=> b!1837959 m!2265877))

(declare-fun m!2265879 () Bool)

(assert (=> b!1837959 m!2265879))

(declare-fun m!2265881 () Bool)

(assert (=> b!1837959 m!2265881))

(push 1)

(assert (not b!1837959))

(assert (not b!1837961))

(assert (not b!1837960))

(assert tp_is_empty!8211)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

