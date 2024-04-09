; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5132 () Bool)

(assert start!5132)

(declare-datatypes ((List!1001 0))(
  ( (Nil!998) (Cons!997 (h!1565 (_ BitVec 64)) (t!3842 List!1001)) )
))
(declare-fun keys!14 () List!1001)

(declare-fun ListPrimitiveSize!36 (List!1001) Int)

(assert (=> start!5132 (< (ListPrimitiveSize!36 keys!14) 0)))

(assert (=> start!5132 true))

(declare-fun bs!1485 () Bool)

(assert (= bs!1485 start!5132))

(declare-fun m!30525 () Bool)

(assert (=> bs!1485 m!30525))

(push 1)

(assert (not start!5132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6091 () Bool)

(declare-fun lt!13896 () Int)

(assert (=> d!6091 (>= lt!13896 0)))

(declare-fun e!23939 () Int)

(assert (=> d!6091 (= lt!13896 e!23939)))

(declare-fun c!4377 () Bool)

(assert (=> d!6091 (= c!4377 (is-Nil!998 keys!14))))

(assert (=> d!6091 (= (ListPrimitiveSize!36 keys!14) lt!13896)))

(declare-fun b!37771 () Bool)

(assert (=> b!37771 (= e!23939 0)))

(declare-fun b!37773 () Bool)

(assert (=> b!37773 (= e!23939 (+ 1 (ListPrimitiveSize!36 (t!3842 keys!14))))))

(assert (= (and d!6091 c!4377) b!37771))

(assert (= (and d!6091 (not c!4377)) b!37773))

(declare-fun m!30529 () Bool)

(assert (=> b!37773 m!30529))

(assert (=> start!5132 d!6091))

(push 1)

