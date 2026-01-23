; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187374 () Bool)

(assert start!187374)

(declare-fun res!837751 () Bool)

(declare-fun e!1193828 () Bool)

(assert (=> start!187374 (=> (not res!837751) (not e!1193828))))

(declare-datatypes ((T!33436 0))(
  ( (T!33437 (val!5987 Int)) )
))
(declare-datatypes ((List!20804 0))(
  ( (Nil!20722) (Cons!20722 (h!26123 T!33436) (t!173021 List!20804)) )
))
(declare-fun l!2791 () List!20804)

(declare-fun size!16455 (List!20804) Int)

(assert (=> start!187374 (= res!837751 (> (size!16455 l!2791) 0))))

(assert (=> start!187374 e!1193828))

(declare-fun e!1193829 () Bool)

(assert (=> start!187374 e!1193829))

(declare-fun b!1871261 () Bool)

(declare-fun res!837750 () Bool)

(assert (=> b!1871261 (=> (not res!837750) (not e!1193828))))

(assert (=> b!1871261 (= res!837750 (not (is-Nil!20722 l!2791)))))

(declare-fun b!1871262 () Bool)

(declare-fun tail!2860 (List!20804) List!20804)

(assert (=> b!1871262 (= e!1193828 (not (= (tail!2860 l!2791) (t!173021 l!2791))))))

(declare-fun b!1871263 () Bool)

(declare-fun tp_is_empty!8753 () Bool)

(declare-fun tp!532340 () Bool)

(assert (=> b!1871263 (= e!1193829 (and tp_is_empty!8753 tp!532340))))

(assert (= (and start!187374 res!837751) b!1871261))

(assert (= (and b!1871261 res!837750) b!1871262))

(assert (= (and start!187374 (is-Cons!20722 l!2791)) b!1871263))

(declare-fun m!2297315 () Bool)

(assert (=> start!187374 m!2297315))

(declare-fun m!2297317 () Bool)

(assert (=> b!1871262 m!2297317))

(push 1)

(assert (not b!1871262))

(assert (not start!187374))

(assert (not b!1871263))

(assert tp_is_empty!8753)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!572067 () Bool)

(assert (=> d!572067 (= (tail!2860 l!2791) (t!173021 l!2791))))

(assert (=> b!1871262 d!572067))

(declare-fun d!572069 () Bool)

(declare-fun lt!719400 () Int)

(assert (=> d!572069 (>= lt!719400 0)))

(declare-fun e!1193838 () Int)

(assert (=> d!572069 (= lt!719400 e!1193838)))

(declare-fun c!304900 () Bool)

(assert (=> d!572069 (= c!304900 (is-Nil!20722 l!2791))))

(assert (=> d!572069 (= (size!16455 l!2791) lt!719400)))

(declare-fun b!1871277 () Bool)

(assert (=> b!1871277 (= e!1193838 0)))

(declare-fun b!1871278 () Bool)

(assert (=> b!1871278 (= e!1193838 (+ 1 (size!16455 (t!173021 l!2791))))))

(assert (= (and d!572069 c!304900) b!1871277))

(assert (= (and d!572069 (not c!304900)) b!1871278))

(declare-fun m!2297323 () Bool)

(assert (=> b!1871278 m!2297323))

(assert (=> start!187374 d!572069))

(declare-fun b!1871283 () Bool)

(declare-fun e!1193841 () Bool)

(declare-fun tp!532346 () Bool)

(assert (=> b!1871283 (= e!1193841 (and tp_is_empty!8753 tp!532346))))

(assert (=> b!1871263 (= tp!532340 e!1193841)))

(assert (= (and b!1871263 (is-Cons!20722 (t!173021 l!2791))) b!1871283))

(push 1)

(assert (not b!1871278))

(assert (not b!1871283))

(assert tp_is_empty!8753)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

