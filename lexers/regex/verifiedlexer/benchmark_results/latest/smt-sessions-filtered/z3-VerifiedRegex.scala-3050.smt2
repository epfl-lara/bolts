; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182802 () Bool)

(assert start!182802)

(declare-fun res!826098 () Bool)

(declare-fun e!1174408 () Bool)

(assert (=> start!182802 (=> (not res!826098) (not e!1174408))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1453 0))(
  ( (B!1454 (val!5674 Int)) )
))
(declare-datatypes ((List!20274 0))(
  ( (Nil!20204) (Cons!20204 (h!25605 B!1453) (t!171703 List!20274)) )
))
(declare-fun l!3005 () List!20274)

(get-info :version)

(assert (=> start!182802 (= res!826098 (and (>= i!921 0) (not ((_ is Nil!20204) l!3005)) (not (= i!921 0))))))

(assert (=> start!182802 e!1174408))

(assert (=> start!182802 true))

(declare-fun e!1174406 () Bool)

(assert (=> start!182802 e!1174406))

(declare-fun e!1174407 () Bool)

(assert (=> start!182802 e!1174407))

(declare-fun b!1837914 () Bool)

(assert (=> b!1837914 (= e!1174408 (not (>= (- i!921 1) 0)))))

(declare-fun lt!713254 () List!20274)

(declare-datatypes ((tuple2!19642 0))(
  ( (tuple2!19643 (_1!11223 List!20274) (_2!11223 List!20274)) )
))
(declare-fun lt!713253 () tuple2!19642)

(declare-fun splitAtIndexTr!2 (List!20274 Int List!20274) tuple2!19642)

(declare-fun ++!5477 (List!20274 List!20274) List!20274)

(assert (=> b!1837914 (= (splitAtIndexTr!2 (t!171703 l!3005) (- i!921 1) lt!713254) (tuple2!19643 (++!5477 lt!713254 (_1!11223 lt!713253)) (_2!11223 lt!713253)))))

(declare-fun splitAtIndex!4 (List!20274 Int) tuple2!19642)

(assert (=> b!1837914 (= lt!713253 (splitAtIndex!4 (t!171703 l!3005) (- i!921 1)))))

(declare-datatypes ((Unit!34911 0))(
  ( (Unit!34912) )
))
(declare-fun lt!713252 () Unit!34911)

(declare-fun lemmaSplitAtIndexTrEqualsSplitAtIndex!2 (List!20274 Int List!20274) Unit!34911)

(assert (=> b!1837914 (= lt!713252 (lemmaSplitAtIndexTrEqualsSplitAtIndex!2 (t!171703 l!3005) (- i!921 1) lt!713254))))

(declare-fun acc!274 () List!20274)

(assert (=> b!1837914 (= lt!713254 (++!5477 acc!274 (Cons!20204 (h!25605 l!3005) Nil!20204)))))

(declare-fun b!1837915 () Bool)

(declare-fun tp_is_empty!8201 () Bool)

(declare-fun tp!519932 () Bool)

(assert (=> b!1837915 (= e!1174406 (and tp_is_empty!8201 tp!519932))))

(declare-fun b!1837916 () Bool)

(declare-fun tp!519931 () Bool)

(assert (=> b!1837916 (= e!1174407 (and tp_is_empty!8201 tp!519931))))

(assert (= (and start!182802 res!826098) b!1837914))

(assert (= (and start!182802 ((_ is Cons!20204) l!3005)) b!1837915))

(assert (= (and start!182802 ((_ is Cons!20204) acc!274)) b!1837916))

(declare-fun m!2265799 () Bool)

(assert (=> b!1837914 m!2265799))

(declare-fun m!2265801 () Bool)

(assert (=> b!1837914 m!2265801))

(declare-fun m!2265803 () Bool)

(assert (=> b!1837914 m!2265803))

(declare-fun m!2265805 () Bool)

(assert (=> b!1837914 m!2265805))

(declare-fun m!2265807 () Bool)

(assert (=> b!1837914 m!2265807))

(check-sat (not b!1837914) (not b!1837916) (not b!1837915) tp_is_empty!8201)
(check-sat)
