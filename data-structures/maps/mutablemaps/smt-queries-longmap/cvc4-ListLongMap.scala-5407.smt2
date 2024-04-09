; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72216 () Bool)

(assert start!72216)

(declare-fun res!569271 () Bool)

(declare-fun e!466930 () Bool)

(assert (=> start!72216 (=> (not res!569271) (not e!466930))))

(declare-datatypes ((List!16071 0))(
  ( (Nil!16068) (Cons!16067 (h!17198 (_ BitVec 64)) (t!22450 List!16071)) )
))
(declare-fun l!404 () List!16071)

(declare-fun length!37 (List!16071) Int)

(assert (=> start!72216 (= res!569271 (< (length!37 l!404) 2147483647))))

(assert (=> start!72216 e!466930))

(assert (=> start!72216 true))

(declare-fun b!836750 () Bool)

(declare-fun res!569272 () Bool)

(assert (=> b!836750 (=> (not res!569272) (not e!466930))))

(assert (=> b!836750 (= res!569272 (is-Cons!16067 l!404))))

(declare-fun b!836751 () Bool)

(declare-fun ListPrimitiveSize!84 (List!16071) Int)

(assert (=> b!836751 (= e!466930 (>= (ListPrimitiveSize!84 (t!22450 l!404)) (ListPrimitiveSize!84 l!404)))))

(assert (= (and start!72216 res!569271) b!836750))

(assert (= (and b!836750 res!569272) b!836751))

(declare-fun m!781949 () Bool)

(assert (=> start!72216 m!781949))

(declare-fun m!781951 () Bool)

(assert (=> b!836751 m!781951))

(declare-fun m!781953 () Bool)

(assert (=> b!836751 m!781953))

(push 1)

(assert (not b!836751))

(assert (not start!72216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107699 () Bool)

(declare-fun lt!380453 () Int)

(assert (=> d!107699 (>= lt!380453 0)))

(declare-fun e!466939 () Int)

(assert (=> d!107699 (= lt!380453 e!466939)))

(declare-fun c!91059 () Bool)

(assert (=> d!107699 (= c!91059 (is-Nil!16068 (t!22450 l!404)))))

(assert (=> d!107699 (= (ListPrimitiveSize!84 (t!22450 l!404)) lt!380453)))

(declare-fun b!836768 () Bool)

(assert (=> b!836768 (= e!466939 0)))

(declare-fun b!836769 () Bool)

(assert (=> b!836769 (= e!466939 (+ 1 (ListPrimitiveSize!84 (t!22450 (t!22450 l!404)))))))

(assert (= (and d!107699 c!91059) b!836768))

(assert (= (and d!107699 (not c!91059)) b!836769))

(declare-fun m!781959 () Bool)

(assert (=> b!836769 m!781959))

(assert (=> b!836751 d!107699))

(declare-fun d!107707 () Bool)

(declare-fun lt!380455 () Int)

(assert (=> d!107707 (>= lt!380455 0)))

(declare-fun e!466941 () Int)

(assert (=> d!107707 (= lt!380455 e!466941)))

(declare-fun c!91061 () Bool)

(assert (=> d!107707 (= c!91061 (is-Nil!16068 l!404))))

(assert (=> d!107707 (= (ListPrimitiveSize!84 l!404) lt!380455)))

(declare-fun b!836772 () Bool)

(assert (=> b!836772 (= e!466941 0)))

(declare-fun b!836773 () Bool)

(assert (=> b!836773 (= e!466941 (+ 1 (ListPrimitiveSize!84 (t!22450 l!404))))))

(assert (= (and d!107707 c!91061) b!836772))

(assert (= (and d!107707 (not c!91061)) b!836773))

