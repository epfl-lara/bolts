; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216104 () Bool)

(assert start!216104)

(declare-fun b!2218134 () Bool)

(declare-fun res!952611 () Bool)

(declare-fun e!1416527 () Bool)

(assert (=> b!2218134 (=> (not res!952611) (not e!1416527))))

(declare-datatypes ((B!1799 0))(
  ( (B!1800 (val!7425 Int)) )
))
(declare-datatypes ((List!26053 0))(
  ( (Nil!25969) (Cons!25969 (h!31370 B!1799) (t!199369 List!26053)) )
))
(declare-fun l!3389 () List!26053)

(declare-fun isEmpty!14847 (List!26053) Bool)

(assert (=> b!2218134 (= res!952611 (not (isEmpty!14847 (t!199369 l!3389))))))

(declare-fun b!2218135 () Bool)

(declare-fun size!20264 (List!26053) Int)

(assert (=> b!2218135 (= e!1416527 (>= (size!20264 (t!199369 l!3389)) (size!20264 l!3389)))))

(declare-fun res!952610 () Bool)

(assert (=> start!216104 (=> (not res!952610) (not e!1416527))))

(assert (=> start!216104 (= res!952610 (not (isEmpty!14847 l!3389)))))

(assert (=> start!216104 e!1416527))

(declare-fun e!1416528 () Bool)

(assert (=> start!216104 e!1416528))

(declare-fun b!2218136 () Bool)

(declare-fun tp_is_empty!9847 () Bool)

(declare-fun tp!691069 () Bool)

(assert (=> b!2218136 (= e!1416528 (and tp_is_empty!9847 tp!691069))))

(declare-fun b!2218133 () Bool)

(declare-fun res!952609 () Bool)

(assert (=> b!2218133 (=> (not res!952609) (not e!1416527))))

(assert (=> b!2218133 (= res!952609 (and (or (not (is-Cons!25969 l!3389)) (not (is-Nil!25969 (t!199369 l!3389)))) (is-Cons!25969 l!3389)))))

(assert (= (and start!216104 res!952610) b!2218133))

(assert (= (and b!2218133 res!952609) b!2218134))

(assert (= (and b!2218134 res!952611) b!2218135))

(assert (= (and start!216104 (is-Cons!25969 l!3389)) b!2218136))

(declare-fun m!2658947 () Bool)

(assert (=> b!2218134 m!2658947))

(declare-fun m!2658949 () Bool)

(assert (=> b!2218135 m!2658949))

(declare-fun m!2658951 () Bool)

(assert (=> b!2218135 m!2658951))

(declare-fun m!2658953 () Bool)

(assert (=> start!216104 m!2658953))

(push 1)

(assert (not start!216104))

(assert (not b!2218135))

(assert tp_is_empty!9847)

(assert (not b!2218136))

(assert (not b!2218134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!662997 () Bool)

(assert (=> d!662997 (= (isEmpty!14847 l!3389) (is-Nil!25969 l!3389))))

(assert (=> start!216104 d!662997))

(declare-fun d!662999 () Bool)

(declare-fun lt!826947 () Int)

(assert (=> d!662999 (>= lt!826947 0)))

(declare-fun e!1416537 () Int)

(assert (=> d!662999 (= lt!826947 e!1416537)))

(declare-fun c!354140 () Bool)

(assert (=> d!662999 (= c!354140 (is-Nil!25969 (t!199369 l!3389)))))

(assert (=> d!662999 (= (size!20264 (t!199369 l!3389)) lt!826947)))

(declare-fun b!2218153 () Bool)

(assert (=> b!2218153 (= e!1416537 0)))

(declare-fun b!2218154 () Bool)

(assert (=> b!2218154 (= e!1416537 (+ 1 (size!20264 (t!199369 (t!199369 l!3389)))))))

(assert (= (and d!662999 c!354140) b!2218153))

(assert (= (and d!662999 (not c!354140)) b!2218154))

(declare-fun m!2658963 () Bool)

(assert (=> b!2218154 m!2658963))

(assert (=> b!2218135 d!662999))

(declare-fun d!663001 () Bool)

(declare-fun lt!826948 () Int)

(assert (=> d!663001 (>= lt!826948 0)))

(declare-fun e!1416538 () Int)

(assert (=> d!663001 (= lt!826948 e!1416538)))

(declare-fun c!354141 () Bool)

(assert (=> d!663001 (= c!354141 (is-Nil!25969 l!3389))))

(assert (=> d!663001 (= (size!20264 l!3389) lt!826948)))

(declare-fun b!2218155 () Bool)

(assert (=> b!2218155 (= e!1416538 0)))

(declare-fun b!2218156 () Bool)

(assert (=> b!2218156 (= e!1416538 (+ 1 (size!20264 (t!199369 l!3389))))))

(assert (= (and d!663001 c!354141) b!2218155))

(assert (= (and d!663001 (not c!354141)) b!2218156))

(assert (=> b!2218156 m!2658949))

(assert (=> b!2218135 d!663001))

(declare-fun d!663003 () Bool)

(assert (=> d!663003 (= (isEmpty!14847 (t!199369 l!3389)) (is-Nil!25969 (t!199369 l!3389)))))

(assert (=> b!2218134 d!663003))

(declare-fun b!2218161 () Bool)

(declare-fun e!1416541 () Bool)

(declare-fun tp!691075 () Bool)

(assert (=> b!2218161 (= e!1416541 (and tp_is_empty!9847 tp!691075))))

(assert (=> b!2218136 (= tp!691069 e!1416541)))

(assert (= (and b!2218136 (is-Cons!25969 (t!199369 l!3389))) b!2218161))

(push 1)

(assert (not b!2218154))

(assert (not b!2218156))

(assert (not b!2218161))

(assert tp_is_empty!9847)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

