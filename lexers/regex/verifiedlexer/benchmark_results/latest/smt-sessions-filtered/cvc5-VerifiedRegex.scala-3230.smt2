; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187436 () Bool)

(assert start!187436)

(declare-fun b!1871563 () Bool)

(declare-fun e!1194011 () Bool)

(declare-fun e!1194012 () Bool)

(assert (=> b!1871563 (= e!1194011 e!1194012)))

(declare-fun res!837809 () Bool)

(assert (=> b!1871563 (=> (not res!837809) (not e!1194012))))

(declare-fun lt!719464 () Int)

(declare-fun lt!719465 () Int)

(declare-datatypes ((T!33492 0))(
  ( (T!33493 (val!5995 Int)) )
))
(declare-datatypes ((List!20812 0))(
  ( (Nil!20730) (Cons!20730 (h!26131 T!33492) (t!173029 List!20812)) )
))
(declare-fun l!2791 () List!20812)

(declare-fun slice!604 (List!20812 Int Int) List!20812)

(assert (=> b!1871563 (= res!837809 (= (slice!604 l!2791 1 lt!719465) (slice!604 (t!173029 l!2791) 0 lt!719464)))))

(declare-fun size!16463 (List!20812) Int)

(assert (=> b!1871563 (= lt!719464 (size!16463 (t!173029 l!2791)))))

(declare-fun res!837806 () Bool)

(assert (=> start!187436 (=> (not res!837806) (not e!1194011))))

(assert (=> start!187436 (= res!837806 (and (> lt!719465 0) (not (is-Nil!20730 l!2791))))))

(assert (=> start!187436 (= lt!719465 (size!16463 l!2791))))

(assert (=> start!187436 e!1194011))

(declare-fun e!1194010 () Bool)

(assert (=> start!187436 e!1194010))

(declare-fun b!1871564 () Bool)

(declare-fun res!837807 () Bool)

(assert (=> b!1871564 (=> (not res!837807) (not e!1194011))))

(declare-fun tail!2866 (List!20812) List!20812)

(assert (=> b!1871564 (= res!837807 (= (tail!2866 l!2791) (t!173029 l!2791)))))

(declare-fun b!1871565 () Bool)

(declare-fun ListPrimitiveSize!138 (List!20812) Int)

(assert (=> b!1871565 (= e!1194012 (>= (ListPrimitiveSize!138 (t!173029 l!2791)) (ListPrimitiveSize!138 l!2791)))))

(declare-fun b!1871566 () Bool)

(declare-fun res!837808 () Bool)

(assert (=> b!1871566 (=> (not res!837808) (not e!1194012))))

(assert (=> b!1871566 (= res!837808 (> lt!719464 0))))

(declare-fun b!1871567 () Bool)

(declare-fun tp_is_empty!8769 () Bool)

(declare-fun tp!532390 () Bool)

(assert (=> b!1871567 (= e!1194010 (and tp_is_empty!8769 tp!532390))))

(assert (= (and start!187436 res!837806) b!1871564))

(assert (= (and b!1871564 res!837807) b!1871563))

(assert (= (and b!1871563 res!837809) b!1871566))

(assert (= (and b!1871566 res!837808) b!1871565))

(assert (= (and start!187436 (is-Cons!20730 l!2791)) b!1871567))

(declare-fun m!2297481 () Bool)

(assert (=> b!1871563 m!2297481))

(declare-fun m!2297483 () Bool)

(assert (=> b!1871563 m!2297483))

(declare-fun m!2297485 () Bool)

(assert (=> b!1871563 m!2297485))

(declare-fun m!2297487 () Bool)

(assert (=> start!187436 m!2297487))

(declare-fun m!2297489 () Bool)

(assert (=> b!1871564 m!2297489))

(declare-fun m!2297491 () Bool)

(assert (=> b!1871565 m!2297491))

(declare-fun m!2297493 () Bool)

(assert (=> b!1871565 m!2297493))

(push 1)

(assert (not b!1871563))

(assert tp_is_empty!8769)

(assert (not start!187436))

(assert (not b!1871565))

(assert (not b!1871564))

(assert (not b!1871567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!572137 () Bool)

(declare-fun lt!719474 () Int)

(assert (=> d!572137 (>= lt!719474 0)))

(declare-fun e!1194024 () Int)

(assert (=> d!572137 (= lt!719474 e!1194024)))

(declare-fun c!304990 () Bool)

(assert (=> d!572137 (= c!304990 (is-Nil!20730 (t!173029 l!2791)))))

(assert (=> d!572137 (= (ListPrimitiveSize!138 (t!173029 l!2791)) lt!719474)))

(declare-fun b!1871587 () Bool)

(assert (=> b!1871587 (= e!1194024 0)))

(declare-fun b!1871588 () Bool)

(assert (=> b!1871588 (= e!1194024 (+ 1 (ListPrimitiveSize!138 (t!173029 (t!173029 l!2791)))))))

(assert (= (and d!572137 c!304990) b!1871587))

(assert (= (and d!572137 (not c!304990)) b!1871588))

(declare-fun m!2297509 () Bool)

(assert (=> b!1871588 m!2297509))

(assert (=> b!1871565 d!572137))

(declare-fun d!572141 () Bool)

(declare-fun lt!719475 () Int)

(assert (=> d!572141 (>= lt!719475 0)))

(declare-fun e!1194025 () Int)

(assert (=> d!572141 (= lt!719475 e!1194025)))

(declare-fun c!304991 () Bool)

(assert (=> d!572141 (= c!304991 (is-Nil!20730 l!2791))))

(assert (=> d!572141 (= (ListPrimitiveSize!138 l!2791) lt!719475)))

(declare-fun b!1871589 () Bool)

(assert (=> b!1871589 (= e!1194025 0)))

(declare-fun b!1871590 () Bool)

(assert (=> b!1871590 (= e!1194025 (+ 1 (ListPrimitiveSize!138 (t!173029 l!2791))))))

(assert (= (and d!572141 c!304991) b!1871589))

(assert (= (and d!572141 (not c!304991)) b!1871590))

(assert (=> b!1871590 m!2297491))

(assert (=> b!1871565 d!572141))

(declare-fun d!572143 () Bool)

(declare-fun take!170 (List!20812 Int) List!20812)

(declare-fun drop!997 (List!20812 Int) List!20812)

(assert (=> d!572143 (= (slice!604 l!2791 1 lt!719465) (take!170 (drop!997 l!2791 1) (- lt!719465 1)))))

(declare-fun bs!412018 () Bool)

(assert (= bs!412018 d!572143))

(declare-fun m!2297511 () Bool)

(assert (=> bs!412018 m!2297511))

(assert (=> bs!412018 m!2297511))

(declare-fun m!2297513 () Bool)

(assert (=> bs!412018 m!2297513))

(assert (=> b!1871563 d!572143))

(declare-fun d!572145 () Bool)

(assert (=> d!572145 (= (slice!604 (t!173029 l!2791) 0 lt!719464) (take!170 (drop!997 (t!173029 l!2791) 0) (- lt!719464 0)))))

(declare-fun bs!412019 () Bool)

(assert (= bs!412019 d!572145))

(declare-fun m!2297515 () Bool)

(assert (=> bs!412019 m!2297515))

(assert (=> bs!412019 m!2297515))

(declare-fun m!2297517 () Bool)

(assert (=> bs!412019 m!2297517))

(assert (=> b!1871563 d!572145))

(declare-fun d!572147 () Bool)

(declare-fun lt!719482 () Int)

(assert (=> d!572147 (>= lt!719482 0)))

(declare-fun e!1194032 () Int)

(assert (=> d!572147 (= lt!719482 e!1194032)))

(declare-fun c!304998 () Bool)

(assert (=> d!572147 (= c!304998 (is-Nil!20730 (t!173029 l!2791)))))

(assert (=> d!572147 (= (size!16463 (t!173029 l!2791)) lt!719482)))

(declare-fun b!1871603 () Bool)

(assert (=> b!1871603 (= e!1194032 0)))

(declare-fun b!1871604 () Bool)

(assert (=> b!1871604 (= e!1194032 (+ 1 (size!16463 (t!173029 (t!173029 l!2791)))))))

(assert (= (and d!572147 c!304998) b!1871603))

(assert (= (and d!572147 (not c!304998)) b!1871604))

(declare-fun m!2297521 () Bool)

(assert (=> b!1871604 m!2297521))

(assert (=> b!1871563 d!572147))

(declare-fun d!572151 () Bool)

(assert (=> d!572151 (= (tail!2866 l!2791) (t!173029 l!2791))))

(assert (=> b!1871564 d!572151))

(declare-fun d!572155 () Bool)

(declare-fun lt!719483 () Int)

(assert (=> d!572155 (>= lt!719483 0)))

(declare-fun e!1194033 () Int)

(assert (=> d!572155 (= lt!719483 e!1194033)))

(declare-fun c!304999 () Bool)

(assert (=> d!572155 (= c!304999 (is-Nil!20730 l!2791))))

(assert (=> d!572155 (= (size!16463 l!2791) lt!719483)))

(declare-fun b!1871605 () Bool)

(assert (=> b!1871605 (= e!1194033 0)))

(declare-fun b!1871606 () Bool)

(assert (=> b!1871606 (= e!1194033 (+ 1 (size!16463 (t!173029 l!2791))))))

(assert (= (and d!572155 c!304999) b!1871605))

(assert (= (and d!572155 (not c!304999)) b!1871606))

(assert (=> b!1871606 m!2297485))

(assert (=> start!187436 d!572155))

(declare-fun b!1871611 () Bool)

(declare-fun e!1194036 () Bool)

(declare-fun tp!532396 () Bool)

(assert (=> b!1871611 (= e!1194036 (and tp_is_empty!8769 tp!532396))))

(assert (=> b!1871567 (= tp!532390 e!1194036)))

(assert (= (and b!1871567 (is-Cons!20730 (t!173029 l!2791))) b!1871611))

(push 1)

(assert tp_is_empty!8769)

(assert (not d!572145))

(assert (not d!572143))

(assert (not b!1871611))

(assert (not b!1871588))

(assert (not b!1871604))

(assert (not b!1871606))

(assert (not b!1871590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

