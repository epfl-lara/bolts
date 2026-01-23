; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!533972 () Bool)

(assert start!533972)

(declare-fun b!5048665 () Bool)

(declare-fun res!2150276 () Bool)

(declare-fun e!3152172 () Bool)

(assert (=> b!5048665 (=> (not res!2150276) (not e!3152172))))

(declare-datatypes ((T!104444 0))(
  ( (T!104445 (val!23551 Int)) )
))
(declare-datatypes ((List!58461 0))(
  ( (Nil!58337) (Cons!58337 (h!64785 T!104444) (t!371100 List!58461)) )
))
(declare-fun l!2763 () List!58461)

(declare-fun i!658 () Int)

(assert (=> b!5048665 (= res!2150276 (and (not (is-Nil!58337 l!2763)) (= i!658 0)))))

(declare-fun b!5048667 () Bool)

(declare-fun e!3152171 () Bool)

(declare-fun tp_is_empty!36857 () Bool)

(declare-fun tp!1411966 () Bool)

(assert (=> b!5048667 (= e!3152171 (and tp_is_empty!36857 tp!1411966))))

(declare-fun res!2150278 () Bool)

(assert (=> start!533972 (=> (not res!2150278) (not e!3152172))))

(assert (=> start!533972 (= res!2150278 (<= 0 i!658))))

(assert (=> start!533972 e!3152172))

(assert (=> start!533972 true))

(assert (=> start!533972 e!3152171))

(declare-fun b!5048664 () Bool)

(declare-fun res!2150277 () Bool)

(assert (=> b!5048664 (=> (not res!2150277) (not e!3152172))))

(declare-fun size!38962 (List!58461) Int)

(assert (=> b!5048664 (= res!2150277 (<= i!658 (size!38962 l!2763)))))

(declare-fun b!5048666 () Bool)

(declare-fun drop!2661 (List!58461 Int) List!58461)

(assert (=> b!5048666 (= e!3152172 (not (= (drop!2661 l!2763 i!658) l!2763)))))

(assert (= (and start!533972 res!2150278) b!5048664))

(assert (= (and b!5048664 res!2150277) b!5048665))

(assert (= (and b!5048665 res!2150276) b!5048666))

(assert (= (and start!533972 (is-Cons!58337 l!2763)) b!5048667))

(declare-fun m!6083830 () Bool)

(assert (=> b!5048664 m!6083830))

(declare-fun m!6083832 () Bool)

(assert (=> b!5048666 m!6083832))

(push 1)

(assert (not b!5048664))

(assert (not b!5048666))

(assert (not b!5048667))

(assert tp_is_empty!36857)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1624711 () Bool)

(declare-fun lt!2086086 () Int)

(assert (=> d!1624711 (>= lt!2086086 0)))

(declare-fun e!3152181 () Int)

(assert (=> d!1624711 (= lt!2086086 e!3152181)))

(declare-fun c!865788 () Bool)

(assert (=> d!1624711 (= c!865788 (is-Nil!58337 l!2763))))

(assert (=> d!1624711 (= (size!38962 l!2763) lt!2086086)))

(declare-fun b!5048684 () Bool)

(assert (=> b!5048684 (= e!3152181 0)))

(declare-fun b!5048685 () Bool)

(assert (=> b!5048685 (= e!3152181 (+ 1 (size!38962 (t!371100 l!2763))))))

(assert (= (and d!1624711 c!865788) b!5048684))

(assert (= (and d!1624711 (not c!865788)) b!5048685))

(declare-fun m!6083838 () Bool)

(assert (=> b!5048685 m!6083838))

(assert (=> b!5048664 d!1624711))

(declare-fun b!5048710 () Bool)

(declare-fun e!3152196 () Int)

(declare-fun e!3152195 () Int)

(assert (=> b!5048710 (= e!3152196 e!3152195)))

(declare-fun c!865801 () Bool)

(declare-fun call!351906 () Int)

(assert (=> b!5048710 (= c!865801 (>= i!658 call!351906))))

(declare-fun b!5048711 () Bool)

(assert (=> b!5048711 (= e!3152195 (- call!351906 i!658))))

(declare-fun b!5048712 () Bool)

(declare-fun e!3152199 () Bool)

(declare-fun lt!2086092 () List!58461)

(assert (=> b!5048712 (= e!3152199 (= (size!38962 lt!2086092) e!3152196))))

(declare-fun c!865802 () Bool)

(assert (=> b!5048712 (= c!865802 (<= i!658 0))))

(declare-fun b!5048713 () Bool)

(declare-fun e!3152197 () List!58461)

(declare-fun e!3152198 () List!58461)

(assert (=> b!5048713 (= e!3152197 e!3152198)))

(declare-fun c!865800 () Bool)

(assert (=> b!5048713 (= c!865800 (<= i!658 0))))

(declare-fun bm!351901 () Bool)

(assert (=> bm!351901 (= call!351906 (size!38962 l!2763))))

(declare-fun b!5048714 () Bool)

(assert (=> b!5048714 (= e!3152195 0)))

(declare-fun d!1624713 () Bool)

(assert (=> d!1624713 e!3152199))

(declare-fun res!2150290 () Bool)

(assert (=> d!1624713 (=> (not res!2150290) (not e!3152199))))

(declare-fun content!10374 (List!58461) (Set T!104444))

(assert (=> d!1624713 (= res!2150290 (set.subset (content!10374 lt!2086092) (content!10374 l!2763)))))

(assert (=> d!1624713 (= lt!2086092 e!3152197)))

(declare-fun c!865803 () Bool)

(assert (=> d!1624713 (= c!865803 (is-Nil!58337 l!2763))))

(assert (=> d!1624713 (= (drop!2661 l!2763 i!658) lt!2086092)))

(declare-fun b!5048715 () Bool)

(assert (=> b!5048715 (= e!3152197 Nil!58337)))

(declare-fun b!5048716 () Bool)

(assert (=> b!5048716 (= e!3152198 l!2763)))

(declare-fun b!5048717 () Bool)

(assert (=> b!5048717 (= e!3152196 call!351906)))

(declare-fun b!5048718 () Bool)

(assert (=> b!5048718 (= e!3152198 (drop!2661 (t!371100 l!2763) (- i!658 1)))))

(assert (= (and d!1624713 c!865803) b!5048715))

(assert (= (and d!1624713 (not c!865803)) b!5048713))

(assert (= (and b!5048713 c!865800) b!5048716))

(assert (= (and b!5048713 (not c!865800)) b!5048718))

(assert (= (and d!1624713 res!2150290) b!5048712))

(assert (= (and b!5048712 c!865802) b!5048717))

(assert (= (and b!5048712 (not c!865802)) b!5048710))

(assert (= (and b!5048710 c!865801) b!5048714))

(assert (= (and b!5048710 (not c!865801)) b!5048711))

(assert (= (or b!5048717 b!5048710 b!5048711) bm!351901))

(declare-fun m!6083842 () Bool)

(assert (=> b!5048712 m!6083842))

(assert (=> bm!351901 m!6083830))

(declare-fun m!6083844 () Bool)

(assert (=> d!1624713 m!6083844))

(declare-fun m!6083846 () Bool)

(assert (=> d!1624713 m!6083846))

(declare-fun m!6083848 () Bool)

(assert (=> b!5048718 m!6083848))

(assert (=> b!5048666 d!1624713))

(declare-fun b!5048723 () Bool)

(declare-fun e!3152202 () Bool)

(declare-fun tp!1411972 () Bool)

(assert (=> b!5048723 (= e!3152202 (and tp_is_empty!36857 tp!1411972))))

(assert (=> b!5048667 (= tp!1411966 e!3152202)))

(assert (= (and b!5048667 (is-Cons!58337 (t!371100 l!2763))) b!5048723))

(push 1)

(assert (not bm!351901))

(assert (not b!5048712))

(assert (not b!5048723))

(assert (not b!5048718))

(assert tp_is_empty!36857)

(assert (not d!1624713))

(assert (not b!5048685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

