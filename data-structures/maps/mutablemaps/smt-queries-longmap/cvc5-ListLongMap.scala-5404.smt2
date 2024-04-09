; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72166 () Bool)

(assert start!72166)

(declare-fun res!569221 () Bool)

(declare-fun e!466868 () Bool)

(assert (=> start!72166 (=> (not res!569221) (not e!466868))))

(declare-datatypes ((List!16060 0))(
  ( (Nil!16057) (Cons!16056 (h!17187 (_ BitVec 64)) (t!22439 List!16060)) )
))
(declare-fun l!632 () List!16060)

(assert (=> start!72166 (= res!569221 (and (not (is-Nil!16057 l!632)) (not (is-Nil!16057 (t!22439 l!632))) (bvslt (h!17187 l!632) (h!17187 (t!22439 l!632)))))))

(assert (=> start!72166 e!466868))

(assert (=> start!72166 true))

(declare-fun b!836642 () Bool)

(declare-fun ListPrimitiveSize!76 (List!16060) Int)

(assert (=> b!836642 (= e!466868 (>= (ListPrimitiveSize!76 (t!22439 l!632)) (ListPrimitiveSize!76 l!632)))))

(assert (= (and start!72166 res!569221) b!836642))

(declare-fun m!781867 () Bool)

(assert (=> b!836642 m!781867))

(declare-fun m!781869 () Bool)

(assert (=> b!836642 m!781869))

(push 1)

(assert (not b!836642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107647 () Bool)

(declare-fun lt!380422 () Int)

(assert (=> d!107647 (>= lt!380422 0)))

(declare-fun e!466881 () Int)

(assert (=> d!107647 (= lt!380422 e!466881)))

(declare-fun c!91028 () Bool)

(assert (=> d!107647 (= c!91028 (is-Nil!16057 (t!22439 l!632)))))

(assert (=> d!107647 (= (ListPrimitiveSize!76 (t!22439 l!632)) lt!380422)))

