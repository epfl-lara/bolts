; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216810 () Bool)

(assert start!216810)

(declare-datatypes ((C!12830 0))(
  ( (C!12831 (val!7463 Int)) )
))
(declare-datatypes ((Regex!6342 0))(
  ( (ElementMatch!6342 (c!354802 C!12830)) (Concat!10680 (regOne!13196 Regex!6342) (regTwo!13196 Regex!6342)) (EmptyExpr!6342) (Star!6342 (reg!6671 Regex!6342)) (EmptyLang!6342) (Union!6342 (regOne!13197 Regex!6342) (regTwo!13197 Regex!6342)) )
))
(declare-datatypes ((List!26142 0))(
  ( (Nil!26048) (Cons!26048 (h!31449 Regex!6342) (t!199545 List!26142)) )
))
(declare-datatypes ((Context!3780 0))(
  ( (Context!3781 (exprs!2390 List!26142)) )
))
(declare-fun context!72 () Context!3780)

(declare-fun size!20323 (List!26142) Int)

(assert (=> start!216810 (< (size!20323 (exprs!2390 context!72)) 0)))

(declare-fun e!1419276 () Bool)

(declare-fun inv!35369 (Context!3780) Bool)

(assert (=> start!216810 (and (inv!35369 context!72) e!1419276)))

(declare-fun b!2221939 () Bool)

(declare-fun tp!692675 () Bool)

(assert (=> b!2221939 (= e!1419276 tp!692675)))

(assert (= start!216810 b!2221939))

(declare-fun m!2662349 () Bool)

(assert (=> start!216810 m!2662349))

(declare-fun m!2662351 () Bool)

(assert (=> start!216810 m!2662351))

(push 1)

(assert (not start!216810))

(assert (not b!2221939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!664021 () Bool)

(declare-fun lt!828166 () Int)

(assert (=> d!664021 (>= lt!828166 0)))

(declare-fun e!1419282 () Int)

(assert (=> d!664021 (= lt!828166 e!1419282)))

(declare-fun c!354806 () Bool)

(assert (=> d!664021 (= c!354806 (is-Nil!26048 (exprs!2390 context!72)))))

(assert (=> d!664021 (= (size!20323 (exprs!2390 context!72)) lt!828166)))

(declare-fun b!2221947 () Bool)

(assert (=> b!2221947 (= e!1419282 0)))

(declare-fun b!2221948 () Bool)

(assert (=> b!2221948 (= e!1419282 (+ 1 (size!20323 (t!199545 (exprs!2390 context!72)))))))

(assert (= (and d!664021 c!354806) b!2221947))

(assert (= (and d!664021 (not c!354806)) b!2221948))

(declare-fun m!2662357 () Bool)

(assert (=> b!2221948 m!2662357))

(assert (=> start!216810 d!664021))

(declare-fun d!664025 () Bool)

(declare-fun lambda!83895 () Int)

(declare-fun forall!5304 (List!26142 Int) Bool)

(assert (=> d!664025 (= (inv!35369 context!72) (forall!5304 (exprs!2390 context!72) lambda!83895))))

(declare-fun bs!452768 () Bool)

(assert (= bs!452768 d!664025))

(declare-fun m!2662361 () Bool)

(assert (=> bs!452768 m!2662361))

(assert (=> start!216810 d!664025))

(declare-fun b!2221959 () Bool)

(declare-fun e!1419288 () Bool)

(declare-fun tp!692683 () Bool)

(declare-fun tp!692684 () Bool)

(assert (=> b!2221959 (= e!1419288 (and tp!692683 tp!692684))))

(assert (=> b!2221939 (= tp!692675 e!1419288)))

(assert (= (and b!2221939 (is-Cons!26048 (exprs!2390 context!72))) b!2221959))

(push 1)

(assert (not b!2221948))

(assert (not d!664025))

(assert (not b!2221959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

