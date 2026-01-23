; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184028 () Bool)

(assert start!184028)

(declare-fun b_free!51571 () Bool)

(declare-fun b_next!52275 () Bool)

(assert (=> start!184028 (= b_free!51571 (not b_next!52275))))

(declare-fun tp!521902 () Bool)

(declare-fun b_and!143721 () Bool)

(assert (=> start!184028 (= tp!521902 b_and!143721)))

(declare-fun b!1845549 () Bool)

(declare-fun res!828786 () Bool)

(declare-fun e!1179477 () Bool)

(assert (=> b!1845549 (=> (not res!828786) (not e!1179477))))

(declare-datatypes ((A!425 0))(
  ( (A!426 (val!5761 Int)) )
))
(declare-fun a!855 () A!425)

(declare-datatypes ((B!1583 0))(
  ( (B!1584 (val!5762 Int)) )
))
(declare-datatypes ((List!20429 0))(
  ( (Nil!20357) (Cons!20357 (h!25758 B!1583) (t!172056 List!20429)) )
))
(declare-fun l!2946 () List!20429)

(declare-fun f!1069 () Int)

(declare-fun dynLambda!10114 (Int B!1583) A!425)

(assert (=> b!1845549 (= res!828786 (not (= (dynLambda!10114 f!1069 (h!25758 l!2946)) a!855)))))

(declare-fun b!1845551 () Bool)

(declare-fun e!1179478 () Bool)

(declare-fun tp_is_empty!8369 () Bool)

(declare-fun tp!521903 () Bool)

(assert (=> b!1845551 (= e!1179478 (and tp_is_empty!8369 tp!521903))))

(declare-fun b!1845550 () Bool)

(assert (=> b!1845550 (= e!1179477 false)))

(declare-fun lt!714765 () Bool)

(declare-datatypes ((List!20430 0))(
  ( (Nil!20358) (Cons!20358 (h!25759 A!425) (t!172057 List!20430)) )
))
(declare-fun contains!3741 (List!20430 A!425) Bool)

(declare-fun map!4267 (List!20429 Int) List!20430)

(assert (=> b!1845550 (= lt!714765 (contains!3741 (map!4267 (t!172056 l!2946) f!1069) a!855))))

(declare-fun res!828785 () Bool)

(assert (=> start!184028 (=> (not res!828785) (not e!1179477))))

(assert (=> start!184028 (= res!828785 (contains!3741 (map!4267 l!2946 f!1069) a!855))))

(assert (=> start!184028 e!1179477))

(assert (=> start!184028 e!1179478))

(assert (=> start!184028 tp!521902))

(declare-fun tp_is_empty!8371 () Bool)

(assert (=> start!184028 tp_is_empty!8371))

(declare-fun b!1845548 () Bool)

(declare-fun res!828784 () Bool)

(assert (=> b!1845548 (=> (not res!828784) (not e!1179477))))

(assert (=> b!1845548 (= res!828784 (not (is-Nil!20357 l!2946)))))

(assert (= (and start!184028 res!828785) b!1845548))

(assert (= (and b!1845548 res!828784) b!1845549))

(assert (= (and b!1845549 res!828786) b!1845550))

(assert (= (and start!184028 (is-Cons!20357 l!2946)) b!1845551))

(declare-fun b_lambda!61205 () Bool)

(assert (=> (not b_lambda!61205) (not b!1845549)))

(declare-fun t!172055 () Bool)

(declare-fun tb!112825 () Bool)

(assert (=> (and start!184028 (= f!1069 f!1069) t!172055) tb!112825))

(declare-fun result!135888 () Bool)

(assert (=> tb!112825 (= result!135888 tp_is_empty!8371)))

(assert (=> b!1845549 t!172055))

(declare-fun b_and!143723 () Bool)

(assert (= b_and!143721 (and (=> t!172055 result!135888) b_and!143723)))

(declare-fun m!2273923 () Bool)

(assert (=> b!1845549 m!2273923))

(declare-fun m!2273925 () Bool)

(assert (=> b!1845550 m!2273925))

(assert (=> b!1845550 m!2273925))

(declare-fun m!2273927 () Bool)

(assert (=> b!1845550 m!2273927))

(declare-fun m!2273929 () Bool)

(assert (=> start!184028 m!2273929))

(assert (=> start!184028 m!2273929))

(declare-fun m!2273931 () Bool)

(assert (=> start!184028 m!2273931))

(push 1)

(assert tp_is_empty!8371)

(assert (not b_lambda!61205))

(assert (not b!1845550))

(assert (not start!184028))

(assert (not b!1845551))

(assert tp_is_empty!8369)

(assert b_and!143723)

(assert (not b_next!52275))

(check-sat)

(pop 1)

(push 1)

(assert b_and!143723)

(assert (not b_next!52275))

(check-sat)

(pop 1)

