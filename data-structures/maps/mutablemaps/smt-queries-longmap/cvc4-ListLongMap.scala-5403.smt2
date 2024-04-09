; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72158 () Bool)

(assert start!72158)

(declare-datatypes ((List!16059 0))(
  ( (Nil!16056) (Cons!16055 (h!17186 (_ BitVec 64)) (t!22438 List!16059)) )
))
(declare-fun l!632 () List!16059)

(declare-fun ListPrimitiveSize!75 (List!16059) Int)

(assert (=> start!72158 (< (ListPrimitiveSize!75 l!632) 0)))

(assert (=> start!72158 true))

(declare-fun bs!23509 () Bool)

(assert (= bs!23509 start!72158))

(declare-fun m!781859 () Bool)

(assert (=> bs!23509 m!781859))

(push 1)

(assert (not start!72158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107641 () Bool)

(declare-fun lt!380413 () Int)

(assert (=> d!107641 (>= lt!380413 0)))

(declare-fun e!466863 () Int)

(assert (=> d!107641 (= lt!380413 e!466863)))

(declare-fun c!91019 () Bool)

(assert (=> d!107641 (= c!91019 (is-Nil!16056 l!632))))

(assert (=> d!107641 (= (ListPrimitiveSize!75 l!632) lt!380413)))

(declare-fun b!836634 () Bool)

(assert (=> b!836634 (= e!466863 0)))

(declare-fun b!836635 () Bool)

(assert (=> b!836635 (= e!466863 (+ 1 (ListPrimitiveSize!75 (t!22438 l!632))))))

(assert (= (and d!107641 c!91019) b!836634))

(assert (= (and d!107641 (not c!91019)) b!836635))

(declare-fun m!781861 () Bool)

(assert (=> b!836635 m!781861))

(assert (=> start!72158 d!107641))

(push 1)

