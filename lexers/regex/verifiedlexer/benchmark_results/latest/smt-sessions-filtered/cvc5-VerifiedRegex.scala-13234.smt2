; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720360 () Bool)

(assert start!720360)

(declare-fun res!2978157 () Bool)

(declare-fun e!4420269 () Bool)

(assert (=> start!720360 (=> (not res!2978157) (not e!4420269))))

(declare-datatypes ((C!38958 0))(
  ( (C!38959 (val!29853 Int)) )
))
(declare-datatypes ((Regex!19342 0))(
  ( (ElementMatch!19342 (c!1372602 C!38958)) (Concat!28187 (regOne!39196 Regex!19342) (regTwo!39196 Regex!19342)) (EmptyExpr!19342) (Star!19342 (reg!19671 Regex!19342)) (EmptyLang!19342) (Union!19342 (regOne!39197 Regex!19342) (regTwo!39197 Regex!19342)) )
))
(declare-datatypes ((List!71852 0))(
  ( (Nil!71728) (Cons!71728 (h!78176 Regex!19342) (t!386403 List!71852)) )
))
(declare-datatypes ((Context!16564 0))(
  ( (Context!16565 (exprs!8782 List!71852)) )
))
(declare-fun c!7050 () Context!16564)

(assert (=> start!720360 (= res!2978157 (is-Cons!71728 (exprs!8782 c!7050)))))

(assert (=> start!720360 e!4420269))

(declare-fun e!4420270 () Bool)

(declare-fun inv!91717 (Context!16564) Bool)

(assert (=> start!720360 (and (inv!91717 c!7050) e!4420270)))

(declare-fun b!7384651 () Bool)

(declare-fun size!42178 (List!71852) Int)

(assert (=> b!7384651 (= e!4420269 (>= (size!42178 (t!386403 (exprs!8782 c!7050))) (size!42178 (exprs!8782 c!7050))))))

(declare-fun b!7384652 () Bool)

(declare-fun tp!2100865 () Bool)

(assert (=> b!7384652 (= e!4420270 tp!2100865)))

(assert (= (and start!720360 res!2978157) b!7384651))

(assert (= start!720360 b!7384652))

(declare-fun m!8033462 () Bool)

(assert (=> start!720360 m!8033462))

(declare-fun m!8033464 () Bool)

(assert (=> b!7384651 m!8033464))

(declare-fun m!8033466 () Bool)

(assert (=> b!7384651 m!8033466))

(push 1)

(assert (not start!720360))

(assert (not b!7384651))

(assert (not b!7384652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2286343 () Bool)

(declare-fun lambda!458779 () Int)

(declare-fun forall!18135 (List!71852 Int) Bool)

(assert (=> d!2286343 (= (inv!91717 c!7050) (forall!18135 (exprs!8782 c!7050) lambda!458779))))

(declare-fun bs!1921881 () Bool)

(assert (= bs!1921881 d!2286343))

(declare-fun m!8033476 () Bool)

(assert (=> bs!1921881 m!8033476))

(assert (=> start!720360 d!2286343))

(declare-fun d!2286351 () Bool)

(declare-fun lt!2617532 () Int)

(assert (=> d!2286351 (>= lt!2617532 0)))

(declare-fun e!4420283 () Int)

(assert (=> d!2286351 (= lt!2617532 e!4420283)))

(declare-fun c!1372610 () Bool)

(assert (=> d!2286351 (= c!1372610 (is-Nil!71728 (t!386403 (exprs!8782 c!7050))))))

(assert (=> d!2286351 (= (size!42178 (t!386403 (exprs!8782 c!7050))) lt!2617532)))

(declare-fun b!7384671 () Bool)

(assert (=> b!7384671 (= e!4420283 0)))

(declare-fun b!7384672 () Bool)

(assert (=> b!7384672 (= e!4420283 (+ 1 (size!42178 (t!386403 (t!386403 (exprs!8782 c!7050))))))))

(assert (= (and d!2286351 c!1372610) b!7384671))

(assert (= (and d!2286351 (not c!1372610)) b!7384672))

(declare-fun m!8033478 () Bool)

(assert (=> b!7384672 m!8033478))

(assert (=> b!7384651 d!2286351))

(declare-fun d!2286353 () Bool)

(declare-fun lt!2617533 () Int)

(assert (=> d!2286353 (>= lt!2617533 0)))

(declare-fun e!4420284 () Int)

(assert (=> d!2286353 (= lt!2617533 e!4420284)))

(declare-fun c!1372611 () Bool)

(assert (=> d!2286353 (= c!1372611 (is-Nil!71728 (exprs!8782 c!7050)))))

(assert (=> d!2286353 (= (size!42178 (exprs!8782 c!7050)) lt!2617533)))

(declare-fun b!7384673 () Bool)

(assert (=> b!7384673 (= e!4420284 0)))

(declare-fun b!7384674 () Bool)

(assert (=> b!7384674 (= e!4420284 (+ 1 (size!42178 (t!386403 (exprs!8782 c!7050)))))))

(assert (= (and d!2286353 c!1372611) b!7384673))

(assert (= (and d!2286353 (not c!1372611)) b!7384674))

(assert (=> b!7384674 m!8033464))

(assert (=> b!7384651 d!2286353))

(declare-fun b!7384679 () Bool)

(declare-fun e!4420287 () Bool)

(declare-fun tp!2100873 () Bool)

(declare-fun tp!2100874 () Bool)

(assert (=> b!7384679 (= e!4420287 (and tp!2100873 tp!2100874))))

(assert (=> b!7384652 (= tp!2100865 e!4420287)))

(assert (= (and b!7384652 (is-Cons!71728 (exprs!8782 c!7050))) b!7384679))

(push 1)

(assert (not b!7384672))

(assert (not d!2286343))

(assert (not b!7384674))

(assert (not b!7384679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

