; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138358 () Bool)

(assert start!138358)

(declare-fun res!1083082 () Bool)

(declare-fun e!885474 () Bool)

(assert (=> start!138358 (=> (not res!1083082) (not e!885474))))

(declare-datatypes ((B!2996 0))(
  ( (B!2997 (val!19860 Int)) )
))
(declare-datatypes ((tuple2!26052 0))(
  ( (tuple2!26053 (_1!13036 (_ BitVec 64)) (_2!13036 B!2996)) )
))
(declare-datatypes ((List!37141 0))(
  ( (Nil!37138) (Cons!37137 (h!38681 tuple2!26052) (t!52074 List!37141)) )
))
(declare-fun l!556 () List!37141)

(declare-fun isStrictlySorted!1200 (List!37141) Bool)

(assert (=> start!138358 (= res!1083082 (isStrictlySorted!1200 l!556))))

(assert (=> start!138358 e!885474))

(declare-fun e!885473 () Bool)

(assert (=> start!138358 e!885473))

(assert (=> start!138358 true))

(declare-fun tp_is_empty!39529 () Bool)

(assert (=> start!138358 tp_is_empty!39529))

(declare-fun b!1585777 () Bool)

(declare-fun e!885472 () Bool)

(declare-fun lt!677370 () List!37141)

(declare-fun lt!677371 () tuple2!26052)

(declare-fun contains!10555 (List!37141 tuple2!26052) Bool)

(assert (=> b!1585777 (= e!885472 (not (contains!10555 lt!677370 lt!677371)))))

(declare-fun b!1585778 () Bool)

(assert (=> b!1585778 (= e!885474 e!885472)))

(declare-fun res!1083081 () Bool)

(assert (=> b!1585778 (=> res!1083081 e!885472)))

(assert (=> b!1585778 (= res!1083081 (not (isStrictlySorted!1200 lt!677370)))))

(declare-fun $colon$colon!1046 (List!37141 tuple2!26052) List!37141)

(assert (=> b!1585778 (= lt!677370 ($colon$colon!1046 l!556 lt!677371))))

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun newValue!21 () B!2996)

(assert (=> b!1585778 (= lt!677371 (tuple2!26053 newKey!21 newValue!21))))

(declare-fun b!1585779 () Bool)

(declare-fun res!1083080 () Bool)

(assert (=> b!1585779 (=> res!1083080 e!885472)))

(declare-fun containsKey!1013 (List!37141 (_ BitVec 64)) Bool)

(assert (=> b!1585779 (= res!1083080 (not (containsKey!1013 lt!677370 newKey!21)))))

(declare-fun b!1585780 () Bool)

(declare-fun tp!115303 () Bool)

(assert (=> b!1585780 (= e!885473 (and tp_is_empty!39529 tp!115303))))

(declare-fun b!1585781 () Bool)

(declare-fun res!1083083 () Bool)

(assert (=> b!1585781 (=> (not res!1083083) (not e!885474))))

(assert (=> b!1585781 (= res!1083083 (and (or (not (is-Cons!37137 l!556)) (bvsge (_1!13036 (h!38681 l!556)) newKey!21)) (not (= (_1!13036 (h!38681 l!556)) newKey!21)) (is-Cons!37137 l!556) (bvsgt (_1!13036 (h!38681 l!556)) newKey!21)))))

(assert (= (and start!138358 res!1083082) b!1585781))

(assert (= (and b!1585781 res!1083083) b!1585778))

(assert (= (and b!1585778 (not res!1083081)) b!1585779))

(assert (= (and b!1585779 (not res!1083080)) b!1585777))

(assert (= (and start!138358 (is-Cons!37137 l!556)) b!1585780))

(declare-fun m!1454493 () Bool)

(assert (=> start!138358 m!1454493))

(declare-fun m!1454495 () Bool)

(assert (=> b!1585777 m!1454495))

(declare-fun m!1454497 () Bool)

(assert (=> b!1585778 m!1454497))

(declare-fun m!1454499 () Bool)

(assert (=> b!1585778 m!1454499))

(declare-fun m!1454501 () Bool)

(assert (=> b!1585779 m!1454501))

(push 1)

(assert (not b!1585777))

(assert (not b!1585779))

(assert (not b!1585780))

(assert (not start!138358))

(assert tp_is_empty!39529)

(assert (not b!1585778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167793 () Bool)

(declare-fun res!1083118 () Bool)

(declare-fun e!885503 () Bool)

(assert (=> d!167793 (=> res!1083118 e!885503)))

(assert (=> d!167793 (= res!1083118 (or (is-Nil!37138 l!556) (is-Nil!37138 (t!52074 l!556))))))

(assert (=> d!167793 (= (isStrictlySorted!1200 l!556) e!885503)))

(declare-fun b!1585822 () Bool)

(declare-fun e!885504 () Bool)

(assert (=> b!1585822 (= e!885503 e!885504)))

(declare-fun res!1083119 () Bool)

(assert (=> b!1585822 (=> (not res!1083119) (not e!885504))))

(assert (=> b!1585822 (= res!1083119 (bvslt (_1!13036 (h!38681 l!556)) (_1!13036 (h!38681 (t!52074 l!556)))))))

(declare-fun b!1585823 () Bool)

(assert (=> b!1585823 (= e!885504 (isStrictlySorted!1200 (t!52074 l!556)))))

(assert (= (and d!167793 (not res!1083118)) b!1585822))

(assert (= (and b!1585822 res!1083119) b!1585823))

(declare-fun m!1454525 () Bool)

(assert (=> b!1585823 m!1454525))

(assert (=> start!138358 d!167793))

(declare-fun d!167797 () Bool)

(declare-fun lt!677386 () Bool)

(declare-fun content!874 (List!37141) (Set tuple2!26052))

(assert (=> d!167797 (= lt!677386 (set.member lt!677371 (content!874 lt!677370)))))

(declare-fun e!885518 () Bool)

(assert (=> d!167797 (= lt!677386 e!885518)))

(declare-fun res!1083133 () Bool)

(assert (=> d!167797 (=> (not res!1083133) (not e!885518))))

(assert (=> d!167797 (= res!1083133 (is-Cons!37137 lt!677370))))

(assert (=> d!167797 (= (contains!10555 lt!677370 lt!677371) lt!677386)))

(declare-fun b!1585836 () Bool)

(declare-fun e!885517 () Bool)

(assert (=> b!1585836 (= e!885518 e!885517)))

(declare-fun res!1083132 () Bool)

(assert (=> b!1585836 (=> res!1083132 e!885517)))

(assert (=> b!1585836 (= res!1083132 (= (h!38681 lt!677370) lt!677371))))

(declare-fun b!1585837 () Bool)

(assert (=> b!1585837 (= e!885517 (contains!10555 (t!52074 lt!677370) lt!677371))))

(assert (= (and d!167797 res!1083133) b!1585836))

(assert (= (and b!1585836 (not res!1083132)) b!1585837))

(declare-fun m!1454531 () Bool)

(assert (=> d!167797 m!1454531))

(declare-fun m!1454533 () Bool)

(assert (=> d!167797 m!1454533))

(declare-fun m!1454535 () Bool)

(assert (=> b!1585837 m!1454535))

(assert (=> b!1585777 d!167797))

(declare-fun d!167803 () Bool)

(declare-fun res!1083134 () Bool)

(declare-fun e!885519 () Bool)

(assert (=> d!167803 (=> res!1083134 e!885519)))

(assert (=> d!167803 (= res!1083134 (or (is-Nil!37138 lt!677370) (is-Nil!37138 (t!52074 lt!677370))))))

(assert (=> d!167803 (= (isStrictlySorted!1200 lt!677370) e!885519)))

(declare-fun b!1585838 () Bool)

(declare-fun e!885520 () Bool)

(assert (=> b!1585838 (= e!885519 e!885520)))

(declare-fun res!1083135 () Bool)

(assert (=> b!1585838 (=> (not res!1083135) (not e!885520))))

(assert (=> b!1585838 (= res!1083135 (bvslt (_1!13036 (h!38681 lt!677370)) (_1!13036 (h!38681 (t!52074 lt!677370)))))))

(declare-fun b!1585839 () Bool)

(assert (=> b!1585839 (= e!885520 (isStrictlySorted!1200 (t!52074 lt!677370)))))

(assert (= (and d!167803 (not res!1083134)) b!1585838))

(assert (= (and b!1585838 res!1083135) b!1585839))

(declare-fun m!1454537 () Bool)

(assert (=> b!1585839 m!1454537))

(assert (=> b!1585778 d!167803))

(declare-fun d!167805 () Bool)

(assert (=> d!167805 (= ($colon$colon!1046 l!556 lt!677371) (Cons!37137 lt!677371 l!556))))

(assert (=> b!1585778 d!167805))

(declare-fun d!167809 () Bool)

(declare-fun res!1083144 () Bool)

(declare-fun e!885529 () Bool)

(assert (=> d!167809 (=> res!1083144 e!885529)))

(assert (=> d!167809 (= res!1083144 (and (is-Cons!37137 lt!677370) (= (_1!13036 (h!38681 lt!677370)) newKey!21)))))

(assert (=> d!167809 (= (containsKey!1013 lt!677370 newKey!21) e!885529)))

(declare-fun b!1585848 () Bool)

(declare-fun e!885530 () Bool)

(assert (=> b!1585848 (= e!885529 e!885530)))

(declare-fun res!1083145 () Bool)

(assert (=> b!1585848 (=> (not res!1083145) (not e!885530))))

(assert (=> b!1585848 (= res!1083145 (and (or (not (is-Cons!37137 lt!677370)) (bvsle (_1!13036 (h!38681 lt!677370)) newKey!21)) (is-Cons!37137 lt!677370) (bvslt (_1!13036 (h!38681 lt!677370)) newKey!21)))))

(declare-fun b!1585849 () Bool)

(assert (=> b!1585849 (= e!885530 (containsKey!1013 (t!52074 lt!677370) newKey!21))))

(assert (= (and d!167809 (not res!1083144)) b!1585848))

(assert (= (and b!1585848 res!1083145) b!1585849))

(declare-fun m!1454539 () Bool)

(assert (=> b!1585849 m!1454539))

(assert (=> b!1585779 d!167809))

(declare-fun b!1585854 () Bool)

(declare-fun e!885533 () Bool)

(declare-fun tp!115312 () Bool)

(assert (=> b!1585854 (= e!885533 (and tp_is_empty!39529 tp!115312))))

(assert (=> b!1585780 (= tp!115303 e!885533)))

(assert (= (and b!1585780 (is-Cons!37137 (t!52074 l!556))) b!1585854))

(push 1)

(assert (not b!1585837))

(assert (not b!1585854))

(assert tp_is_empty!39529)

(assert (not b!1585849))

(assert (not d!167797))

(assert (not b!1585823))

(assert (not b!1585839))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

