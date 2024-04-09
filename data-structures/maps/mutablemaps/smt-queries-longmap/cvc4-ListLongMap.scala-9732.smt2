; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115308 () Bool)

(assert start!115308)

(declare-datatypes ((List!32002 0))(
  ( (Nil!31999) (Cons!31998 (h!33207 (_ BitVec 64)) (t!46703 List!32002)) )
))
(declare-fun l!3677 () List!32002)

(declare-fun ListPrimitiveSize!171 (List!32002) Int)

(assert (=> start!115308 (< (ListPrimitiveSize!171 l!3677) 0)))

(assert (=> start!115308 true))

(declare-fun bs!39136 () Bool)

(assert (= bs!39136 start!115308))

(declare-fun m!1249265 () Bool)

(assert (=> bs!39136 m!1249265))

(push 1)

(assert (not start!115308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146387 () Bool)

(declare-fun lt!601022 () Int)

(assert (=> d!146387 (>= lt!601022 0)))

(declare-fun e!773833 () Int)

(assert (=> d!146387 (= lt!601022 e!773833)))

(declare-fun c!127582 () Bool)

(assert (=> d!146387 (= c!127582 (is-Nil!31999 l!3677))))

(assert (=> d!146387 (= (ListPrimitiveSize!171 l!3677) lt!601022)))

(declare-fun b!1364455 () Bool)

(assert (=> b!1364455 (= e!773833 0)))

(declare-fun b!1364456 () Bool)

(assert (=> b!1364456 (= e!773833 (+ 1 (ListPrimitiveSize!171 (t!46703 l!3677))))))

(assert (= (and d!146387 c!127582) b!1364455))

(assert (= (and d!146387 (not c!127582)) b!1364456))

(declare-fun m!1249271 () Bool)

(assert (=> b!1364456 m!1249271))

(assert (=> start!115308 d!146387))

(push 1)

