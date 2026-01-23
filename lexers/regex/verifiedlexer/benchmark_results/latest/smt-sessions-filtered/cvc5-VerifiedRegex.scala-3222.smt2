; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187358 () Bool)

(assert start!187358)

(declare-fun b!1871181 () Bool)

(declare-fun e!1193771 () Bool)

(declare-fun lt!719356 () Int)

(assert (=> b!1871181 (= e!1193771 (not (<= 1 lt!719356)))))

(declare-datatypes ((T!33380 0))(
  ( (T!33381 (val!5979 Int)) )
))
(declare-datatypes ((List!20796 0))(
  ( (Nil!20714) (Cons!20714 (h!26115 T!33380) (t!173013 List!20796)) )
))
(declare-fun l!2791 () List!20796)

(declare-fun lt!719358 () Int)

(declare-fun tail!2854 (List!20796) List!20796)

(declare-fun slice!594 (List!20796 Int Int) List!20796)

(assert (=> b!1871181 (= (tail!2854 (t!173013 l!2791)) (slice!594 (t!173013 l!2791) 1 lt!719358))))

(declare-datatypes ((Unit!35321 0))(
  ( (Unit!35322) )
))
(declare-fun lt!719357 () Unit!35321)

(declare-fun sliceTailLemma!43 (List!20796) Unit!35321)

(assert (=> b!1871181 (= lt!719357 (sliceTailLemma!43 (t!173013 l!2791)))))

(declare-fun b!1871182 () Bool)

(declare-fun e!1193770 () Bool)

(declare-fun tp_is_empty!8737 () Bool)

(declare-fun tp!532316 () Bool)

(assert (=> b!1871182 (= e!1193770 (and tp_is_empty!8737 tp!532316))))

(declare-fun b!1871183 () Bool)

(declare-fun e!1193772 () Bool)

(assert (=> b!1871183 (= e!1193772 e!1193771)))

(declare-fun res!837695 () Bool)

(assert (=> b!1871183 (=> (not res!837695) (not e!1193771))))

(assert (=> b!1871183 (= res!837695 (= (slice!594 l!2791 1 lt!719356) (slice!594 (t!173013 l!2791) 0 lt!719358)))))

(declare-fun size!16447 (List!20796) Int)

(assert (=> b!1871183 (= lt!719358 (size!16447 (t!173013 l!2791)))))

(declare-fun b!1871184 () Bool)

(declare-fun res!837697 () Bool)

(assert (=> b!1871184 (=> (not res!837697) (not e!1193771))))

(assert (=> b!1871184 (= res!837697 (> lt!719358 0))))

(declare-fun b!1871185 () Bool)

(declare-fun res!837696 () Bool)

(assert (=> b!1871185 (=> (not res!837696) (not e!1193772))))

(assert (=> b!1871185 (= res!837696 (= (tail!2854 l!2791) (t!173013 l!2791)))))

(declare-fun res!837694 () Bool)

(assert (=> start!187358 (=> (not res!837694) (not e!1193772))))

(assert (=> start!187358 (= res!837694 (and (> lt!719356 0) (not (is-Nil!20714 l!2791))))))

(assert (=> start!187358 (= lt!719356 (size!16447 l!2791))))

(assert (=> start!187358 e!1193772))

(assert (=> start!187358 e!1193770))

(assert (= (and start!187358 res!837694) b!1871185))

(assert (= (and b!1871185 res!837696) b!1871183))

(assert (= (and b!1871183 res!837695) b!1871184))

(assert (= (and b!1871184 res!837697) b!1871181))

(assert (= (and start!187358 (is-Cons!20714 l!2791)) b!1871182))

(declare-fun m!2297239 () Bool)

(assert (=> b!1871181 m!2297239))

(declare-fun m!2297241 () Bool)

(assert (=> b!1871181 m!2297241))

(declare-fun m!2297243 () Bool)

(assert (=> b!1871181 m!2297243))

(declare-fun m!2297245 () Bool)

(assert (=> b!1871183 m!2297245))

(declare-fun m!2297247 () Bool)

(assert (=> b!1871183 m!2297247))

(declare-fun m!2297249 () Bool)

(assert (=> b!1871183 m!2297249))

(declare-fun m!2297251 () Bool)

(assert (=> b!1871185 m!2297251))

(declare-fun m!2297253 () Bool)

(assert (=> start!187358 m!2297253))

(push 1)

(assert (not b!1871182))

(assert tp_is_empty!8737)

(assert (not b!1871181))

(assert (not b!1871183))

(assert (not start!187358))

(assert (not b!1871185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

