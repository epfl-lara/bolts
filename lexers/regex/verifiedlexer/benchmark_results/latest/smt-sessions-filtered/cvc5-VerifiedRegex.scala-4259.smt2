; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229628 () Bool)

(assert start!229628)

(declare-fun res!993570 () Bool)

(declare-fun e!1490546 () Bool)

(assert (=> start!229628 (=> (not res!993570) (not e!1490546))))

(declare-fun i!741 () Int)

(assert (=> start!229628 (= res!993570 (<= 0 i!741))))

(assert (=> start!229628 e!1490546))

(assert (=> start!229628 true))

(declare-fun e!1490547 () Bool)

(assert (=> start!229628 e!1490547))

(declare-fun b!2326382 () Bool)

(declare-fun res!993569 () Bool)

(assert (=> b!2326382 (=> (not res!993569) (not e!1490546))))

(declare-datatypes ((T!44102 0))(
  ( (T!44103 (val!8007 Int)) )
))
(declare-datatypes ((List!27793 0))(
  ( (Nil!27695) (Cons!27695 (h!33096 T!44102) (t!207495 List!27793)) )
))
(declare-fun l!2797 () List!27793)

(declare-fun size!21971 (List!27793) Int)

(assert (=> b!2326382 (= res!993569 (<= i!741 (size!21971 l!2797)))))

(declare-fun b!2326383 () Bool)

(declare-fun ListPrimitiveSize!152 (List!27793) Int)

(assert (=> b!2326383 (= e!1490546 (< (ListPrimitiveSize!152 l!2797) 0))))

(declare-fun b!2326384 () Bool)

(declare-fun tp_is_empty!10879 () Bool)

(declare-fun tp!737172 () Bool)

(assert (=> b!2326384 (= e!1490547 (and tp_is_empty!10879 tp!737172))))

(assert (= (and start!229628 res!993570) b!2326382))

(assert (= (and b!2326382 res!993569) b!2326383))

(assert (= (and start!229628 (is-Cons!27695 l!2797)) b!2326384))

(declare-fun m!2757519 () Bool)

(assert (=> b!2326382 m!2757519))

(declare-fun m!2757521 () Bool)

(assert (=> b!2326383 m!2757521))

(push 1)

(assert (not b!2326382))

(assert (not b!2326383))

(assert (not b!2326384))

(assert tp_is_empty!10879)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!688884 () Bool)

(declare-fun lt!861660 () Int)

(assert (=> d!688884 (>= lt!861660 0)))

(declare-fun e!1490556 () Int)

(assert (=> d!688884 (= lt!861660 e!1490556)))

(declare-fun c!369438 () Bool)

(assert (=> d!688884 (= c!369438 (is-Nil!27695 l!2797))))

(assert (=> d!688884 (= (size!21971 l!2797) lt!861660)))

(declare-fun b!2326398 () Bool)

(assert (=> b!2326398 (= e!1490556 0)))

(declare-fun b!2326399 () Bool)

(assert (=> b!2326399 (= e!1490556 (+ 1 (size!21971 (t!207495 l!2797))))))

(assert (= (and d!688884 c!369438) b!2326398))

(assert (= (and d!688884 (not c!369438)) b!2326399))

(declare-fun m!2757527 () Bool)

(assert (=> b!2326399 m!2757527))

(assert (=> b!2326382 d!688884))

(declare-fun d!688886 () Bool)

(declare-fun lt!861663 () Int)

(assert (=> d!688886 (>= lt!861663 0)))

(declare-fun e!1490559 () Int)

(assert (=> d!688886 (= lt!861663 e!1490559)))

(declare-fun c!369441 () Bool)

(assert (=> d!688886 (= c!369441 (is-Nil!27695 l!2797))))

(assert (=> d!688886 (= (ListPrimitiveSize!152 l!2797) lt!861663)))

(declare-fun b!2326404 () Bool)

(assert (=> b!2326404 (= e!1490559 0)))

(declare-fun b!2326405 () Bool)

(assert (=> b!2326405 (= e!1490559 (+ 1 (ListPrimitiveSize!152 (t!207495 l!2797))))))

(assert (= (and d!688886 c!369441) b!2326404))

(assert (= (and d!688886 (not c!369441)) b!2326405))

(declare-fun m!2757529 () Bool)

(assert (=> b!2326405 m!2757529))

(assert (=> b!2326383 d!688886))

(declare-fun b!2326410 () Bool)

(declare-fun e!1490562 () Bool)

(declare-fun tp!737178 () Bool)

(assert (=> b!2326410 (= e!1490562 (and tp_is_empty!10879 tp!737178))))

(assert (=> b!2326384 (= tp!737172 e!1490562)))

(assert (= (and b!2326384 (is-Cons!27695 (t!207495 l!2797))) b!2326410))

(push 1)

(assert (not b!2326405))

(assert (not b!2326399))

(assert (not b!2326410))

(assert tp_is_empty!10879)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

