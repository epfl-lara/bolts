; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5130 () Bool)

(assert start!5130)

(declare-datatypes ((List!1000 0))(
  ( (Nil!997) (Cons!996 (h!1564 (_ BitVec 64)) (t!3841 List!1000)) )
))
(declare-fun keys!14 () List!1000)

(declare-fun ListPrimitiveSize!35 (List!1000) Int)

(assert (=> start!5130 (< (ListPrimitiveSize!35 keys!14) 0)))

(assert (=> start!5130 true))

(declare-fun bs!1484 () Bool)

(assert (= bs!1484 start!5130))

(declare-fun m!30523 () Bool)

(assert (=> bs!1484 m!30523))

(check-sat (not start!5130))
(check-sat)
(get-model)

(declare-fun d!6095 () Bool)

(declare-fun lt!13895 () Int)

(assert (=> d!6095 (>= lt!13895 0)))

(declare-fun e!23938 () Int)

(assert (=> d!6095 (= lt!13895 e!23938)))

(declare-fun c!4376 () Bool)

(get-info :version)

(assert (=> d!6095 (= c!4376 ((_ is Nil!997) keys!14))))

(assert (=> d!6095 (= (ListPrimitiveSize!35 keys!14) lt!13895)))

(declare-fun b!37772 () Bool)

(assert (=> b!37772 (= e!23938 0)))

(declare-fun b!37774 () Bool)

(assert (=> b!37774 (= e!23938 (+ 1 (ListPrimitiveSize!35 (t!3841 keys!14))))))

(assert (= (and d!6095 c!4376) b!37772))

(assert (= (and d!6095 (not c!4376)) b!37774))

(declare-fun m!30528 () Bool)

(assert (=> b!37774 m!30528))

(assert (=> start!5130 d!6095))

(check-sat (not b!37774))
(check-sat)
