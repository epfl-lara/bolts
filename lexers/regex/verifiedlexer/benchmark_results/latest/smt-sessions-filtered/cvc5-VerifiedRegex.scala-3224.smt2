; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187366 () Bool)

(assert start!187366)

(declare-fun b!1871234 () Bool)

(declare-fun e!1193808 () Bool)

(declare-fun e!1193807 () Bool)

(assert (=> b!1871234 (= e!1193808 e!1193807)))

(declare-fun res!837735 () Bool)

(assert (=> b!1871234 (=> (not res!837735) (not e!1193807))))

(declare-datatypes ((T!33408 0))(
  ( (T!33409 (val!5983 Int)) )
))
(declare-datatypes ((List!20800 0))(
  ( (Nil!20718) (Cons!20718 (h!26119 T!33408) (t!173017 List!20800)) )
))
(declare-fun l!2791 () List!20800)

(declare-fun lt!719385 () Int)

(declare-fun lt!719384 () Int)

(declare-fun slice!598 (List!20800 Int Int) List!20800)

(assert (=> b!1871234 (= res!837735 (= (slice!598 l!2791 1 lt!719385) (slice!598 (t!173017 l!2791) 0 lt!719384)))))

(declare-fun size!16451 (List!20800) Int)

(assert (=> b!1871234 (= lt!719384 (size!16451 (t!173017 l!2791)))))

(declare-fun res!837736 () Bool)

(assert (=> start!187366 (=> (not res!837736) (not e!1193808))))

(assert (=> start!187366 (= res!837736 (and (> lt!719385 0) (not (is-Nil!20718 l!2791))))))

(assert (=> start!187366 (= lt!719385 (size!16451 l!2791))))

(assert (=> start!187366 e!1193808))

(declare-fun e!1193806 () Bool)

(assert (=> start!187366 e!1193806))

(declare-fun b!1871236 () Bool)

(declare-fun tp_is_empty!8745 () Bool)

(declare-fun tp!532328 () Bool)

(assert (=> b!1871236 (= e!1193806 (and tp_is_empty!8745 tp!532328))))

(declare-fun b!1871235 () Bool)

(assert (=> b!1871235 (= e!1193807 (and (<= lt!719384 0) (> 1 lt!719385)))))

(declare-fun b!1871233 () Bool)

(declare-fun res!837734 () Bool)

(assert (=> b!1871233 (=> (not res!837734) (not e!1193808))))

(declare-fun tail!2858 (List!20800) List!20800)

(assert (=> b!1871233 (= res!837734 (= (tail!2858 l!2791) (t!173017 l!2791)))))

(assert (= (and start!187366 res!837736) b!1871233))

(assert (= (and b!1871233 res!837734) b!1871234))

(assert (= (and b!1871234 res!837735) b!1871235))

(assert (= (and start!187366 (is-Cons!20718 l!2791)) b!1871236))

(declare-fun m!2297291 () Bool)

(assert (=> b!1871234 m!2297291))

(declare-fun m!2297293 () Bool)

(assert (=> b!1871234 m!2297293))

(declare-fun m!2297295 () Bool)

(assert (=> b!1871234 m!2297295))

(declare-fun m!2297297 () Bool)

(assert (=> start!187366 m!2297297))

(declare-fun m!2297299 () Bool)

(assert (=> b!1871233 m!2297299))

(push 1)

(assert (not start!187366))

(assert (not b!1871234))

(assert (not b!1871233))

(assert (not b!1871236))

(assert tp_is_empty!8745)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

