; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1924 () Bool)

(assert start!1924)

(declare-fun res!10285 () Bool)

(declare-fun e!7776 () Bool)

(assert (=> start!1924 (=> (not res!10285) (not e!7776))))

(declare-datatypes ((B!464 0))(
  ( (B!465 (val!330 Int)) )
))
(declare-datatypes ((tuple2!442 0))(
  ( (tuple2!443 (_1!221 (_ BitVec 64)) (_2!221 B!464)) )
))
(declare-datatypes ((List!380 0))(
  ( (Nil!377) (Cons!376 (h!942 tuple2!442) (t!2773 List!380)) )
))
(declare-fun l!522 () List!380)

(declare-fun isStrictlySorted!71 (List!380) Bool)

(assert (=> start!1924 (= res!10285 (isStrictlySorted!71 l!522))))

(assert (=> start!1924 e!7776))

(declare-fun e!7777 () Bool)

(assert (=> start!1924 e!7777))

(declare-fun tp_is_empty!643 () Bool)

(assert (=> start!1924 tp_is_empty!643))

(declare-fun b!12975 () Bool)

(declare-fun res!10284 () Bool)

(assert (=> b!12975 (=> (not res!10284) (not e!7776))))

(declare-fun value!159 () B!464)

(assert (=> b!12975 (= res!10284 (and (is-Cons!376 l!522) (= (_2!221 (h!942 l!522)) value!159)))))

(declare-fun b!12976 () Bool)

(assert (=> b!12976 (= e!7776 (not (isStrictlySorted!71 (t!2773 l!522))))))

(declare-fun b!12977 () Bool)

(declare-fun tp!2123 () Bool)

(assert (=> b!12977 (= e!7777 (and tp_is_empty!643 tp!2123))))

(assert (= (and start!1924 res!10285) b!12975))

(assert (= (and b!12975 res!10284) b!12976))

(assert (= (and start!1924 (is-Cons!376 l!522)) b!12977))

(declare-fun m!8899 () Bool)

(assert (=> start!1924 m!8899))

(declare-fun m!8901 () Bool)

(assert (=> b!12976 m!8901))

(push 1)

(assert (not start!1924))

(assert (not b!12976))

(assert (not b!12977))

(assert tp_is_empty!643)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1930 () Bool)

(declare-fun res!10306 () Bool)

(declare-fun e!7798 () Bool)

(assert (=> d!1930 (=> res!10306 e!7798)))

(assert (=> d!1930 (= res!10306 (or (is-Nil!377 l!522) (is-Nil!377 (t!2773 l!522))))))

(assert (=> d!1930 (= (isStrictlySorted!71 l!522) e!7798)))

(declare-fun b!13004 () Bool)

(declare-fun e!7799 () Bool)

(assert (=> b!13004 (= e!7798 e!7799)))

(declare-fun res!10307 () Bool)

(assert (=> b!13004 (=> (not res!10307) (not e!7799))))

(assert (=> b!13004 (= res!10307 (bvslt (_1!221 (h!942 l!522)) (_1!221 (h!942 (t!2773 l!522)))))))

(declare-fun b!13005 () Bool)

(assert (=> b!13005 (= e!7799 (isStrictlySorted!71 (t!2773 l!522)))))

(assert (= (and d!1930 (not res!10306)) b!13004))

(assert (= (and b!13004 res!10307) b!13005))

(assert (=> b!13005 m!8901))

(assert (=> start!1924 d!1930))

(declare-fun d!1935 () Bool)

(declare-fun res!10310 () Bool)

(declare-fun e!7802 () Bool)

(assert (=> d!1935 (=> res!10310 e!7802)))

(assert (=> d!1935 (= res!10310 (or (is-Nil!377 (t!2773 l!522)) (is-Nil!377 (t!2773 (t!2773 l!522)))))))

(assert (=> d!1935 (= (isStrictlySorted!71 (t!2773 l!522)) e!7802)))

(declare-fun b!13008 () Bool)

(declare-fun e!7803 () Bool)

(assert (=> b!13008 (= e!7802 e!7803)))

(declare-fun res!10311 () Bool)

(assert (=> b!13008 (=> (not res!10311) (not e!7803))))

(assert (=> b!13008 (= res!10311 (bvslt (_1!221 (h!942 (t!2773 l!522))) (_1!221 (h!942 (t!2773 (t!2773 l!522))))))))

(declare-fun b!13009 () Bool)

(assert (=> b!13009 (= e!7803 (isStrictlySorted!71 (t!2773 (t!2773 l!522))))))

(assert (= (and d!1935 (not res!10310)) b!13008))

(assert (= (and b!13008 res!10311) b!13009))

(declare-fun m!8911 () Bool)

(assert (=> b!13009 m!8911))

(assert (=> b!12976 d!1935))

(declare-fun b!13025 () Bool)

(declare-fun e!7815 () Bool)

(declare-fun tp!2135 () Bool)

(assert (=> b!13025 (= e!7815 (and tp_is_empty!643 tp!2135))))

(assert (=> b!12977 (= tp!2123 e!7815)))

(assert (= (and b!12977 (is-Cons!376 (t!2773 l!522))) b!13025))

(push 1)

(assert (not b!13005))

(assert (not b!13009))

(assert (not b!13025))

(assert tp_is_empty!643)

(check-sat)

(pop 1)

