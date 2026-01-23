; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728018 () Bool)

(assert start!728018)

(declare-fun res!3014728 () Bool)

(declare-fun e!4483371 () Bool)

(assert (=> start!728018 (=> (not res!3014728) (not e!4483371))))

(declare-datatypes ((C!39862 0))(
  ( (C!39863 (val!30371 Int)) )
))
(declare-datatypes ((Regex!19768 0))(
  ( (ElementMatch!19768 (c!1389551 C!39862)) (Concat!28613 (regOne!40048 Regex!19768) (regTwo!40048 Regex!19768)) (EmptyExpr!19768) (Star!19768 (reg!20097 Regex!19768)) (EmptyLang!19768) (Union!19768 (regOne!40049 Regex!19768) (regTwo!40049 Regex!19768)) )
))
(declare-datatypes ((List!72679 0))(
  ( (Nil!72555) (Cons!72555 (h!79003 Regex!19768) (t!387380 List!72679)) )
))
(declare-datatypes ((Context!17040 0))(
  ( (Context!17041 (exprs!9020 List!72679)) )
))
(declare-fun context!41 () Context!17040)

(assert (=> start!728018 (= res!3014728 (is-Cons!72555 (exprs!9020 context!41)))))

(assert (=> start!728018 e!4483371))

(declare-fun e!4483370 () Bool)

(declare-fun inv!92714 (Context!17040) Bool)

(assert (=> start!728018 (and (inv!92714 context!41) e!4483370)))

(declare-fun b!7520820 () Bool)

(declare-fun res!3014727 () Bool)

(assert (=> b!7520820 (=> (not res!3014727) (not e!4483371))))

(declare-fun nullable!8604 (Regex!19768) Bool)

(assert (=> b!7520820 (= res!3014727 (nullable!8604 (h!79003 (exprs!9020 context!41))))))

(declare-fun b!7520821 () Bool)

(declare-fun size!42302 (List!72679) Int)

(assert (=> b!7520821 (= e!4483371 (>= (size!42302 (t!387380 (exprs!9020 context!41))) (size!42302 (exprs!9020 context!41))))))

(declare-fun b!7520822 () Bool)

(declare-fun tp!2184436 () Bool)

(assert (=> b!7520822 (= e!4483370 tp!2184436)))

(assert (= (and start!728018 res!3014728) b!7520820))

(assert (= (and b!7520820 res!3014727) b!7520821))

(assert (= start!728018 b!7520822))

(declare-fun m!8100192 () Bool)

(assert (=> start!728018 m!8100192))

(declare-fun m!8100194 () Bool)

(assert (=> b!7520820 m!8100194))

(declare-fun m!8100196 () Bool)

(assert (=> b!7520821 m!8100196))

(declare-fun m!8100198 () Bool)

(assert (=> b!7520821 m!8100198))

(push 1)

(assert (not start!728018))

(assert (not b!7520820))

(assert (not b!7520821))

(assert (not b!7520822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2308968 () Bool)

(declare-fun lambda!466414 () Int)

(declare-fun forall!18408 (List!72679 Int) Bool)

(assert (=> d!2308968 (= (inv!92714 context!41) (forall!18408 (exprs!9020 context!41) lambda!466414))))

(declare-fun bs!1939641 () Bool)

(assert (= bs!1939641 d!2308968))

(declare-fun m!8100212 () Bool)

(assert (=> bs!1939641 m!8100212))

(assert (=> start!728018 d!2308968))

(declare-fun d!2308978 () Bool)

(declare-fun nullableFct!3441 (Regex!19768) Bool)

(assert (=> d!2308978 (= (nullable!8604 (h!79003 (exprs!9020 context!41))) (nullableFct!3441 (h!79003 (exprs!9020 context!41))))))

(declare-fun bs!1939642 () Bool)

(assert (= bs!1939642 d!2308978))

(declare-fun m!8100214 () Bool)

(assert (=> bs!1939642 m!8100214))

(assert (=> b!7520820 d!2308978))

(declare-fun d!2308980 () Bool)

(declare-fun lt!2638599 () Int)

(assert (=> d!2308980 (>= lt!2638599 0)))

(declare-fun e!4483384 () Int)

(assert (=> d!2308980 (= lt!2638599 e!4483384)))

(declare-fun c!1389559 () Bool)

(assert (=> d!2308980 (= c!1389559 (is-Nil!72555 (t!387380 (exprs!9020 context!41))))))

(assert (=> d!2308980 (= (size!42302 (t!387380 (exprs!9020 context!41))) lt!2638599)))

(declare-fun b!7520844 () Bool)

(assert (=> b!7520844 (= e!4483384 0)))

(declare-fun b!7520845 () Bool)

(assert (=> b!7520845 (= e!4483384 (+ 1 (size!42302 (t!387380 (t!387380 (exprs!9020 context!41))))))))

(assert (= (and d!2308980 c!1389559) b!7520844))

(assert (= (and d!2308980 (not c!1389559)) b!7520845))

(declare-fun m!8100216 () Bool)

(assert (=> b!7520845 m!8100216))

(assert (=> b!7520821 d!2308980))

(declare-fun d!2308982 () Bool)

(declare-fun lt!2638600 () Int)

(assert (=> d!2308982 (>= lt!2638600 0)))

(declare-fun e!4483385 () Int)

(assert (=> d!2308982 (= lt!2638600 e!4483385)))

(declare-fun c!1389560 () Bool)

(assert (=> d!2308982 (= c!1389560 (is-Nil!72555 (exprs!9020 context!41)))))

(assert (=> d!2308982 (= (size!42302 (exprs!9020 context!41)) lt!2638600)))

(declare-fun b!7520846 () Bool)

(assert (=> b!7520846 (= e!4483385 0)))

(declare-fun b!7520847 () Bool)

(assert (=> b!7520847 (= e!4483385 (+ 1 (size!42302 (t!387380 (exprs!9020 context!41)))))))

(assert (= (and d!2308982 c!1389560) b!7520846))

(assert (= (and d!2308982 (not c!1389560)) b!7520847))

(assert (=> b!7520847 m!8100196))

(assert (=> b!7520821 d!2308982))

(declare-fun b!7520852 () Bool)

(declare-fun e!4483388 () Bool)

(declare-fun tp!2184444 () Bool)

(declare-fun tp!2184445 () Bool)

(assert (=> b!7520852 (= e!4483388 (and tp!2184444 tp!2184445))))

(assert (=> b!7520822 (= tp!2184436 e!4483388)))

(assert (= (and b!7520822 (is-Cons!72555 (exprs!9020 context!41))) b!7520852))

(push 1)

(assert (not d!2308968))

(assert (not b!7520847))

(assert (not b!7520852))

(assert (not d!2308978))

(assert (not b!7520845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

