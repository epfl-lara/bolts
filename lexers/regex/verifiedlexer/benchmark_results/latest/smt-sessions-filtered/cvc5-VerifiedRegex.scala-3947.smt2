; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216070 () Bool)

(assert start!216070)

(declare-fun res!952551 () Bool)

(declare-fun e!1416446 () Bool)

(assert (=> start!216070 (=> (not res!952551) (not e!1416446))))

(declare-datatypes ((B!1787 0))(
  ( (B!1788 (val!7419 Int)) )
))
(declare-datatypes ((List!26047 0))(
  ( (Nil!25963) (Cons!25963 (h!31364 B!1787) (t!199363 List!26047)) )
))
(declare-fun l!3389 () List!26047)

(declare-fun isEmpty!14841 (List!26047) Bool)

(assert (=> start!216070 (= res!952551 (not (isEmpty!14841 l!3389)))))

(assert (=> start!216070 e!1416446))

(declare-fun e!1416447 () Bool)

(assert (=> start!216070 e!1416447))

(declare-fun b!2218009 () Bool)

(declare-fun size!20261 (List!26047) Int)

(assert (=> b!2218009 (= e!1416446 (< (size!20261 l!3389) 0))))

(declare-fun b!2218010 () Bool)

(declare-fun tp_is_empty!9835 () Bool)

(declare-fun tp!691033 () Bool)

(assert (=> b!2218010 (= e!1416447 (and tp_is_empty!9835 tp!691033))))

(assert (= (and start!216070 res!952551) b!2218009))

(assert (= (and start!216070 (is-Cons!25963 l!3389)) b!2218010))

(declare-fun m!2658895 () Bool)

(assert (=> start!216070 m!2658895))

(declare-fun m!2658897 () Bool)

(assert (=> b!2218009 m!2658897))

(push 1)

(assert (not start!216070))

(assert (not b!2218009))

(assert (not b!2218010))

(assert tp_is_empty!9835)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!662968 () Bool)

(assert (=> d!662968 (= (isEmpty!14841 l!3389) (is-Nil!25963 l!3389))))

(assert (=> start!216070 d!662968))

(declare-fun d!662970 () Bool)

(declare-fun lt!826932 () Int)

(assert (=> d!662970 (>= lt!826932 0)))

(declare-fun e!1416456 () Int)

(assert (=> d!662970 (= lt!826932 e!1416456)))

(declare-fun c!354131 () Bool)

(assert (=> d!662970 (= c!354131 (is-Nil!25963 l!3389))))

(assert (=> d!662970 (= (size!20261 l!3389) lt!826932)))

(declare-fun b!2218021 () Bool)

(assert (=> b!2218021 (= e!1416456 0)))

(declare-fun b!2218022 () Bool)

(assert (=> b!2218022 (= e!1416456 (+ 1 (size!20261 (t!199363 l!3389))))))

(assert (= (and d!662970 c!354131) b!2218021))

(assert (= (and d!662970 (not c!354131)) b!2218022))

(declare-fun m!2658903 () Bool)

(assert (=> b!2218022 m!2658903))

(assert (=> b!2218009 d!662970))

(declare-fun b!2218031 () Bool)

(declare-fun e!1416461 () Bool)

(declare-fun tp!691039 () Bool)

(assert (=> b!2218031 (= e!1416461 (and tp_is_empty!9835 tp!691039))))

(assert (=> b!2218010 (= tp!691033 e!1416461)))

(assert (= (and b!2218010 (is-Cons!25963 (t!199363 l!3389))) b!2218031))

(push 1)

(assert (not b!2218022))

(assert (not b!2218031))

(assert tp_is_empty!9835)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

