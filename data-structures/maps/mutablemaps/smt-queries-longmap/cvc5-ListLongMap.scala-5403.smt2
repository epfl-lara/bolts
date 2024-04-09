; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72154 () Bool)

(assert start!72154)

(declare-datatypes ((List!16057 0))(
  ( (Nil!16054) (Cons!16053 (h!17184 (_ BitVec 64)) (t!22436 List!16057)) )
))
(declare-fun l!632 () List!16057)

(declare-fun ListPrimitiveSize!73 (List!16057) Int)

(assert (=> start!72154 (< (ListPrimitiveSize!73 l!632) 0)))

(assert (=> start!72154 true))

(declare-fun bs!23507 () Bool)

(assert (= bs!23507 start!72154))

(declare-fun m!781855 () Bool)

(assert (=> bs!23507 m!781855))

(push 1)

(assert (not start!72154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107637 () Bool)

(declare-fun lt!380414 () Int)

(assert (=> d!107637 (>= lt!380414 0)))

(declare-fun e!466864 () Int)

(assert (=> d!107637 (= lt!380414 e!466864)))

(declare-fun c!91020 () Bool)

(assert (=> d!107637 (= c!91020 (is-Nil!16054 l!632))))

(assert (=> d!107637 (= (ListPrimitiveSize!73 l!632) lt!380414)))

(declare-fun b!836636 () Bool)

(assert (=> b!836636 (= e!466864 0)))

(declare-fun b!836637 () Bool)

(assert (=> b!836637 (= e!466864 (+ 1 (ListPrimitiveSize!73 (t!22436 l!632))))))

(assert (= (and d!107637 c!91020) b!836636))

(assert (= (and d!107637 (not c!91020)) b!836637))

(declare-fun m!781863 () Bool)

(assert (=> b!836637 m!781863))

(assert (=> start!72154 d!107637))

(push 1)

(assert (not b!836637))

(check-sat)

