; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187408 () Bool)

(assert start!187408)

(declare-fun res!837788 () Bool)

(declare-fun e!1193954 () Bool)

(assert (=> start!187408 (=> (not res!837788) (not e!1193954))))

(declare-datatypes ((T!33464 0))(
  ( (T!33465 (val!5991 Int)) )
))
(declare-datatypes ((List!20808 0))(
  ( (Nil!20726) (Cons!20726 (h!26127 T!33464) (t!173025 List!20808)) )
))
(declare-fun l!2791 () List!20808)

(declare-fun size!16459 (List!20808) Int)

(assert (=> start!187408 (= res!837788 (> (size!16459 l!2791) 0))))

(assert (=> start!187408 e!1193954))

(declare-fun e!1193955 () Bool)

(assert (=> start!187408 e!1193955))

(declare-fun b!1871477 () Bool)

(declare-fun ListPrimitiveSize!136 (List!20808) Int)

(assert (=> b!1871477 (= e!1193954 (< (ListPrimitiveSize!136 l!2791) 0))))

(declare-fun b!1871478 () Bool)

(declare-fun tp_is_empty!8761 () Bool)

(declare-fun tp!532366 () Bool)

(assert (=> b!1871478 (= e!1193955 (and tp_is_empty!8761 tp!532366))))

(assert (= (and start!187408 res!837788) b!1871477))

(assert (= (and start!187408 (is-Cons!20726 l!2791)) b!1871478))

(declare-fun m!2297441 () Bool)

(assert (=> start!187408 m!2297441))

(declare-fun m!2297443 () Bool)

(assert (=> b!1871477 m!2297443))

(push 1)

(assert (not start!187408))

(assert (not b!1871477))

(assert (not b!1871478))

(assert tp_is_empty!8761)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!572115 () Bool)

(declare-fun lt!719438 () Int)

(assert (=> d!572115 (>= lt!719438 0)))

(declare-fun e!1193964 () Int)

(assert (=> d!572115 (= lt!719438 e!1193964)))

(declare-fun c!304972 () Bool)

(assert (=> d!572115 (= c!304972 (is-Nil!20726 l!2791))))

(assert (=> d!572115 (= (size!16459 l!2791) lt!719438)))

(declare-fun b!1871489 () Bool)

(assert (=> b!1871489 (= e!1193964 0)))

(declare-fun b!1871490 () Bool)

(assert (=> b!1871490 (= e!1193964 (+ 1 (size!16459 (t!173025 l!2791))))))

(assert (= (and d!572115 c!304972) b!1871489))

(assert (= (and d!572115 (not c!304972)) b!1871490))

(declare-fun m!2297449 () Bool)

(assert (=> b!1871490 m!2297449))

(assert (=> start!187408 d!572115))

(declare-fun d!572119 () Bool)

(declare-fun lt!719441 () Int)

(assert (=> d!572119 (>= lt!719441 0)))

(declare-fun e!1193967 () Int)

(assert (=> d!572119 (= lt!719441 e!1193967)))

(declare-fun c!304975 () Bool)

(assert (=> d!572119 (= c!304975 (is-Nil!20726 l!2791))))

(assert (=> d!572119 (= (ListPrimitiveSize!136 l!2791) lt!719441)))

(declare-fun b!1871495 () Bool)

(assert (=> b!1871495 (= e!1193967 0)))

(declare-fun b!1871496 () Bool)

(assert (=> b!1871496 (= e!1193967 (+ 1 (ListPrimitiveSize!136 (t!173025 l!2791))))))

(assert (= (and d!572119 c!304975) b!1871495))

(assert (= (and d!572119 (not c!304975)) b!1871496))

(declare-fun m!2297451 () Bool)

(assert (=> b!1871496 m!2297451))

(assert (=> b!1871477 d!572119))

(declare-fun b!1871505 () Bool)

(declare-fun e!1193972 () Bool)

(declare-fun tp!532372 () Bool)

(assert (=> b!1871505 (= e!1193972 (and tp_is_empty!8761 tp!532372))))

(assert (=> b!1871478 (= tp!532366 e!1193972)))

(assert (= (and b!1871478 (is-Cons!20726 (t!173025 l!2791))) b!1871505))

(push 1)

(assert (not b!1871490))

(assert (not b!1871496))

(assert (not b!1871505))

(assert tp_is_empty!8761)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

