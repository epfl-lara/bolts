; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5128 () Bool)

(assert start!5128)

(declare-datatypes ((List!999 0))(
  ( (Nil!996) (Cons!995 (h!1563 (_ BitVec 64)) (t!3840 List!999)) )
))
(declare-fun keys!14 () List!999)

(declare-fun ListPrimitiveSize!34 (List!999) Int)

(assert (=> start!5128 (< (ListPrimitiveSize!34 keys!14) 0)))

(assert (=> start!5128 true))

(declare-fun bs!1483 () Bool)

(assert (= bs!1483 start!5128))

(declare-fun m!30521 () Bool)

(assert (=> bs!1483 m!30521))

(push 1)

(assert (not start!5128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6093 () Bool)

(declare-fun lt!13897 () Int)

(assert (=> d!6093 (>= lt!13897 0)))

(declare-fun e!23940 () Int)

(assert (=> d!6093 (= lt!13897 e!23940)))

(declare-fun c!4378 () Bool)

(assert (=> d!6093 (= c!4378 (is-Nil!996 keys!14))))

(assert (=> d!6093 (= (ListPrimitiveSize!34 keys!14) lt!13897)))

(declare-fun b!37775 () Bool)

(assert (=> b!37775 (= e!23940 0)))

(declare-fun b!37776 () Bool)

(assert (=> b!37776 (= e!23940 (+ 1 (ListPrimitiveSize!34 (t!3840 keys!14))))))

(assert (= (and d!6093 c!4378) b!37775))

(assert (= (and d!6093 (not c!4378)) b!37776))

(declare-fun m!30531 () Bool)

(assert (=> b!37776 m!30531))

(assert (=> start!5128 d!6093))

(push 1)

