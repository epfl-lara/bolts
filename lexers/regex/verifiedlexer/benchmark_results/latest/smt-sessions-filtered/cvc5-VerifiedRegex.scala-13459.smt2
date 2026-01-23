; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727572 () Bool)

(assert start!727572)

(declare-fun b_free!134375 () Bool)

(declare-fun b_next!135165 () Bool)

(assert (=> start!727572 (= b_free!134375 (not b_next!135165))))

(declare-fun tp!2179858 () Bool)

(declare-fun b_and!352043 () Bool)

(assert (=> start!727572 (= tp!2179858 b_and!352043)))

(declare-fun res!3012902 () Bool)

(declare-fun e!4478103 () Bool)

(assert (=> start!727572 (=> (not res!3012902) (not e!4478103))))

(declare-datatypes ((B!3911 0))(
  ( (B!3912 (val!30315 Int)) )
))
(declare-datatypes ((List!72609 0))(
  ( (Nil!72485) (Cons!72485 (h!78933 B!3911) (t!387210 List!72609)) )
))
(declare-fun l!2942 () List!72609)

(declare-fun p!1842 () Int)

(declare-fun exists!4920 (List!72609 Int) Bool)

(assert (=> start!727572 (= res!3012902 (exists!4920 l!2942 p!1842))))

(assert (=> start!727572 e!4478103))

(declare-fun e!4478104 () Bool)

(assert (=> start!727572 e!4478104))

(assert (=> start!727572 tp!2179858))

(declare-fun b!7509852 () Bool)

(declare-fun ListPrimitiveSize!439 (List!72609) Int)

(assert (=> b!7509852 (= e!4478103 (< (ListPrimitiveSize!439 l!2942) 0))))

(declare-fun b!7509853 () Bool)

(declare-fun tp_is_empty!49803 () Bool)

(declare-fun tp!2179857 () Bool)

(assert (=> b!7509853 (= e!4478104 (and tp_is_empty!49803 tp!2179857))))

(assert (= (and start!727572 res!3012902) b!7509852))

(assert (= (and start!727572 (is-Cons!72485 l!2942)) b!7509853))

(declare-fun m!8093858 () Bool)

(assert (=> start!727572 m!8093858))

(declare-fun m!8093860 () Bool)

(assert (=> b!7509852 m!8093860))

(push 1)

(assert (not b!7509852))

(assert tp_is_empty!49803)

(assert (not b_next!135165))

(assert b_and!352043)

(assert (not b!7509853))

(assert (not start!727572))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352043)

(assert (not b_next!135165))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2306212 () Bool)

(declare-fun lt!2637308 () Int)

(assert (=> d!2306212 (>= lt!2637308 0)))

(declare-fun e!4478113 () Int)

(assert (=> d!2306212 (= lt!2637308 e!4478113)))

(declare-fun c!1386834 () Bool)

(assert (=> d!2306212 (= c!1386834 (is-Nil!72485 l!2942))))

(assert (=> d!2306212 (= (ListPrimitiveSize!439 l!2942) lt!2637308)))

(declare-fun b!7509864 () Bool)

(assert (=> b!7509864 (= e!4478113 0)))

(declare-fun b!7509865 () Bool)

(assert (=> b!7509865 (= e!4478113 (+ 1 (ListPrimitiveSize!439 (t!387210 l!2942))))))

(assert (= (and d!2306212 c!1386834) b!7509864))

(assert (= (and d!2306212 (not c!1386834)) b!7509865))

(declare-fun m!8093866 () Bool)

(assert (=> b!7509865 m!8093866))

(assert (=> b!7509852 d!2306212))

(declare-fun d!2306216 () Bool)

(assert (=> d!2306216 true))

(declare-fun order!29701 () Int)

(declare-fun lambda!466140 () Int)

(declare-fun dynLambda!29819 (Int Int) Int)

(assert (=> d!2306216 (< (dynLambda!29819 order!29701 p!1842) (dynLambda!29819 order!29701 lambda!466140))))

(declare-fun forall!18365 (List!72609 Int) Bool)

(assert (=> d!2306216 (= (exists!4920 l!2942 p!1842) (not (forall!18365 l!2942 lambda!466140)))))

(declare-fun bs!1939090 () Bool)

(assert (= bs!1939090 d!2306216))

(declare-fun m!8093870 () Bool)

(assert (=> bs!1939090 m!8093870))

(assert (=> start!727572 d!2306216))

(declare-fun b!7509878 () Bool)

(declare-fun e!4478119 () Bool)

(declare-fun tp!2179867 () Bool)

(assert (=> b!7509878 (= e!4478119 (and tp_is_empty!49803 tp!2179867))))

(assert (=> b!7509853 (= tp!2179857 e!4478119)))

(assert (= (and b!7509853 (is-Cons!72485 (t!387210 l!2942))) b!7509878))

(push 1)

(assert tp_is_empty!49803)

(assert (not b_next!135165))

(assert b_and!352043)

(assert (not d!2306216))

(assert (not b!7509865))

(assert (not b!7509878))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352043)

(assert (not b_next!135165))

(check-sat)

(pop 1)

