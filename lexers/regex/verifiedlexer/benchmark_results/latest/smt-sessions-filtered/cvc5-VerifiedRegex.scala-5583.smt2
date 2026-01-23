; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279874 () Bool)

(assert start!279874)

(declare-fun res!1190334 () Bool)

(declare-fun e!1815276 () Bool)

(assert (=> start!279874 (=> (not res!1190334) (not e!1815276))))

(declare-datatypes ((C!17622 0))(
  ( (C!17623 (val!10845 Int)) )
))
(declare-datatypes ((Regex!8720 0))(
  ( (ElementMatch!8720 (c!463261 C!17622)) (Concat!14041 (regOne!17952 Regex!8720) (regTwo!17952 Regex!8720)) (EmptyExpr!8720) (Star!8720 (reg!9049 Regex!8720)) (EmptyLang!8720) (Union!8720 (regOne!17953 Regex!8720) (regTwo!17953 Regex!8720)) )
))
(declare-datatypes ((List!34469 0))(
  ( (Nil!34345) (Cons!34345 (h!39765 Regex!8720) (t!233512 List!34469)) )
))
(declare-datatypes ((Context!5360 0))(
  ( (Context!5361 (exprs!3180 List!34469)) )
))
(declare-fun c!7184 () Context!5360)

(declare-fun lostCause!812 (Context!5360) Bool)

(assert (=> start!279874 (= res!1190334 (not (lostCause!812 c!7184)))))

(assert (=> start!279874 e!1815276))

(declare-fun e!1815277 () Bool)

(declare-fun inv!46388 (Context!5360) Bool)

(assert (=> start!279874 (and (inv!46388 c!7184) e!1815277)))

(declare-fun b!2867592 () Bool)

(declare-fun size!26306 (List!34469) Int)

(assert (=> b!2867592 (= e!1815276 (< (size!26306 (exprs!3180 c!7184)) 0))))

(declare-fun b!2867593 () Bool)

(declare-fun tp!923055 () Bool)

(assert (=> b!2867593 (= e!1815277 tp!923055)))

(assert (= (and start!279874 res!1190334) b!2867592))

(assert (= start!279874 b!2867593))

(declare-fun m!3287615 () Bool)

(assert (=> start!279874 m!3287615))

(declare-fun m!3287617 () Bool)

(assert (=> start!279874 m!3287617))

(declare-fun m!3287619 () Bool)

(assert (=> b!2867592 m!3287619))

(push 1)

(assert (not start!279874))

(assert (not b!2867592))

(assert (not b!2867593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828960 () Bool)

(declare-fun lambda!106887 () Int)

(declare-fun exists!1139 (List!34469 Int) Bool)

(assert (=> d!828960 (= (lostCause!812 c!7184) (exists!1139 (exprs!3180 c!7184) lambda!106887))))

(declare-fun bs!521694 () Bool)

(assert (= bs!521694 d!828960))

(declare-fun m!3287627 () Bool)

(assert (=> bs!521694 m!3287627))

(assert (=> start!279874 d!828960))

(declare-fun bs!521695 () Bool)

(declare-fun d!828964 () Bool)

(assert (= bs!521695 (and d!828964 d!828960)))

(declare-fun lambda!106890 () Int)

(assert (=> bs!521695 (not (= lambda!106890 lambda!106887))))

(declare-fun forall!7066 (List!34469 Int) Bool)

(assert (=> d!828964 (= (inv!46388 c!7184) (forall!7066 (exprs!3180 c!7184) lambda!106890))))

(declare-fun bs!521696 () Bool)

(assert (= bs!521696 d!828964))

(declare-fun m!3287629 () Bool)

(assert (=> bs!521696 m!3287629))

(assert (=> start!279874 d!828964))

(declare-fun d!828966 () Bool)

(declare-fun lt!1017350 () Int)

(assert (=> d!828966 (>= lt!1017350 0)))

(declare-fun e!1815286 () Int)

(assert (=> d!828966 (= lt!1017350 e!1815286)))

(declare-fun c!463265 () Bool)

(assert (=> d!828966 (= c!463265 (is-Nil!34345 (exprs!3180 c!7184)))))

(assert (=> d!828966 (= (size!26306 (exprs!3180 c!7184)) lt!1017350)))

(declare-fun b!2867604 () Bool)

(assert (=> b!2867604 (= e!1815286 0)))

(declare-fun b!2867605 () Bool)

(assert (=> b!2867605 (= e!1815286 (+ 1 (size!26306 (t!233512 (exprs!3180 c!7184)))))))

(assert (= (and d!828966 c!463265) b!2867604))

(assert (= (and d!828966 (not c!463265)) b!2867605))

(declare-fun m!3287631 () Bool)

(assert (=> b!2867605 m!3287631))

(assert (=> b!2867592 d!828966))

(declare-fun b!2867610 () Bool)

(declare-fun e!1815289 () Bool)

(declare-fun tp!923063 () Bool)

(declare-fun tp!923064 () Bool)

(assert (=> b!2867610 (= e!1815289 (and tp!923063 tp!923064))))

(assert (=> b!2867593 (= tp!923055 e!1815289)))

(assert (= (and b!2867593 (is-Cons!34345 (exprs!3180 c!7184))) b!2867610))

(push 1)

(assert (not d!828964))

(assert (not b!2867605))

(assert (not d!828960))

(assert (not b!2867610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

