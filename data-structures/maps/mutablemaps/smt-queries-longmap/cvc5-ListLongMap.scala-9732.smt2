; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115304 () Bool)

(assert start!115304)

(declare-datatypes ((List!32000 0))(
  ( (Nil!31997) (Cons!31996 (h!33205 (_ BitVec 64)) (t!46701 List!32000)) )
))
(declare-fun l!3677 () List!32000)

(declare-fun ListPrimitiveSize!169 (List!32000) Int)

(assert (=> start!115304 (< (ListPrimitiveSize!169 l!3677) 0)))

(assert (=> start!115304 true))

(declare-fun bs!39134 () Bool)

(assert (= bs!39134 start!115304))

(declare-fun m!1249261 () Bool)

(assert (=> bs!39134 m!1249261))

(push 1)

(assert (not start!115304))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146385 () Bool)

(declare-fun lt!601021 () Int)

(assert (=> d!146385 (>= lt!601021 0)))

(declare-fun e!773832 () Int)

(assert (=> d!146385 (= lt!601021 e!773832)))

(declare-fun c!127581 () Bool)

(assert (=> d!146385 (= c!127581 (is-Nil!31997 l!3677))))

(assert (=> d!146385 (= (ListPrimitiveSize!169 l!3677) lt!601021)))

(declare-fun b!1364453 () Bool)

(assert (=> b!1364453 (= e!773832 0)))

(declare-fun b!1364454 () Bool)

(assert (=> b!1364454 (= e!773832 (+ 1 (ListPrimitiveSize!169 (t!46701 l!3677))))))

(assert (= (and d!146385 c!127581) b!1364453))

(assert (= (and d!146385 (not c!127581)) b!1364454))

(declare-fun m!1249269 () Bool)

(assert (=> b!1364454 m!1249269))

(assert (=> start!115304 d!146385))

(push 1)

