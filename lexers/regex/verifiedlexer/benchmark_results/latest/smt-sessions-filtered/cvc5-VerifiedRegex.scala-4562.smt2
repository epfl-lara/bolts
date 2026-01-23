; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!241456 () Bool)

(assert start!241456)

(declare-datatypes ((List!29010 0))(
  ( (Nil!28910) (Cons!28910 (h!34311 (_ BitVec 16)) (t!210645 List!29010)) )
))
(declare-fun l!1964 () List!29010)

(declare-fun size!22499 (List!29010) Int)

(assert (=> start!241456 (< (size!22499 l!1964) 0)))

(assert (=> start!241456 true))

(declare-fun bs!467010 () Bool)

(assert (= bs!467010 start!241456))

(declare-fun m!2843991 () Bool)

(assert (=> bs!467010 m!2843991))

(push 1)

(assert (not start!241456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!712209 () Bool)

(declare-fun lt!884133 () Int)

(assert (=> d!712209 (>= lt!884133 0)))

(declare-fun e!1570681 () Int)

(assert (=> d!712209 (= lt!884133 e!1570681)))

(declare-fun c!394038 () Bool)

(assert (=> d!712209 (= c!394038 (is-Nil!28910 l!1964))))

(assert (=> d!712209 (= (size!22499 l!1964) lt!884133)))

(declare-fun b!2475761 () Bool)

(assert (=> b!2475761 (= e!1570681 0)))

(declare-fun b!2475762 () Bool)

(assert (=> b!2475762 (= e!1570681 (+ 1 (size!22499 (t!210645 l!1964))))))

(assert (= (and d!712209 c!394038) b!2475761))

(assert (= (and d!712209 (not c!394038)) b!2475762))

(declare-fun m!2843995 () Bool)

(assert (=> b!2475762 m!2843995))

(assert (=> start!241456 d!712209))

(push 1)

(assert (not b!2475762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

