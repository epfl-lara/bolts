; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72198 () Bool)

(assert start!72198)

(declare-fun res!569254 () Bool)

(declare-fun e!466912 () Bool)

(assert (=> start!72198 (=> (not res!569254) (not e!466912))))

(declare-datatypes ((List!16068 0))(
  ( (Nil!16065) (Cons!16064 (h!17195 (_ BitVec 64)) (t!22447 List!16068)) )
))
(declare-fun l!404 () List!16068)

(declare-fun length!34 (List!16068) Int)

(assert (=> start!72198 (= res!569254 (< (length!34 l!404) 2147483647))))

(assert (=> start!72198 e!466912))

(assert (=> start!72198 true))

(declare-fun b!836715 () Bool)

(declare-fun ListPrimitiveSize!81 (List!16068) Int)

(assert (=> b!836715 (= e!466912 (< (ListPrimitiveSize!81 l!404) 0))))

(assert (= (and start!72198 res!569254) b!836715))

(declare-fun m!781921 () Bool)

(assert (=> start!72198 m!781921))

(declare-fun m!781923 () Bool)

(assert (=> b!836715 m!781923))

(push 1)

(assert (not start!72198))

(assert (not b!836715))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107685 () Bool)

(declare-fun size!22890 (List!16068) Int)

(assert (=> d!107685 (= (length!34 l!404) (size!22890 l!404))))

(declare-fun bs!23526 () Bool)

(assert (= bs!23526 d!107685))

(declare-fun m!781927 () Bool)

(assert (=> bs!23526 m!781927))

(assert (=> start!72198 d!107685))

(declare-fun d!107689 () Bool)

(declare-fun lt!380444 () Int)

(assert (=> d!107689 (>= lt!380444 0)))

(declare-fun e!466921 () Int)

(assert (=> d!107689 (= lt!380444 e!466921)))

(declare-fun c!91050 () Bool)

(assert (=> d!107689 (= c!91050 (is-Nil!16065 l!404))))

(assert (=> d!107689 (= (ListPrimitiveSize!81 l!404) lt!380444)))

(declare-fun b!836732 () Bool)

(assert (=> b!836732 (= e!466921 0)))

(declare-fun b!836733 () Bool)

(assert (=> b!836733 (= e!466921 (+ 1 (ListPrimitiveSize!81 (t!22447 l!404))))))

(assert (= (and d!107689 c!91050) b!836732))

