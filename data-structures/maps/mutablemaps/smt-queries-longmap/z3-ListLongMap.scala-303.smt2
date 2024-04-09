; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5286 () Bool)

(assert start!5286)

(declare-datatypes ((B!808 0))(
  ( (B!809 (val!904 Int)) )
))
(declare-datatypes ((tuple2!1472 0))(
  ( (tuple2!1473 (_1!746 (_ BitVec 64)) (_2!746 B!808)) )
))
(declare-datatypes ((List!1033 0))(
  ( (Nil!1030) (Cons!1029 (h!1597 tuple2!1472) (t!3874 List!1033)) )
))
(declare-datatypes ((ListLongMap!1053 0))(
  ( (ListLongMap!1054 (toList!542 List!1033)) )
))
(declare-fun lm!266 () ListLongMap!1053)

(declare-fun ListLongMapPrimitiveSize!2 (ListLongMap!1053) Int)

(assert (=> start!5286 (< (ListLongMapPrimitiveSize!2 lm!266) 0)))

(declare-fun e!24309 () Bool)

(declare-fun inv!1724 (ListLongMap!1053) Bool)

(assert (=> start!5286 (and (inv!1724 lm!266) e!24309)))

(declare-fun b!38247 () Bool)

(declare-fun tp!5690 () Bool)

(assert (=> b!38247 (= e!24309 tp!5690)))

(assert (= start!5286 b!38247))

(declare-fun m!30861 () Bool)

(assert (=> start!5286 m!30861))

(declare-fun m!30863 () Bool)

(assert (=> start!5286 m!30863))

(check-sat (not start!5286) (not b!38247))
(check-sat)
(get-model)

(declare-fun d!6223 () Bool)

(declare-fun lt!14106 () Int)

(assert (=> d!6223 (>= lt!14106 0)))

(declare-fun ListPrimitiveSize!41 (List!1033) Int)

(assert (=> d!6223 (= lt!14106 (+ 1 (ListPrimitiveSize!41 (toList!542 lm!266))))))

(assert (=> d!6223 (= (ListLongMapPrimitiveSize!2 lm!266) lt!14106)))

(declare-fun bs!1552 () Bool)

(assert (= bs!1552 d!6223))

(declare-fun m!30871 () Bool)

(assert (=> bs!1552 m!30871))

(assert (=> start!5286 d!6223))

(declare-fun d!6230 () Bool)

(declare-fun isStrictlySorted!205 (List!1033) Bool)

(assert (=> d!6230 (= (inv!1724 lm!266) (isStrictlySorted!205 (toList!542 lm!266)))))

(declare-fun bs!1555 () Bool)

(assert (= bs!1555 d!6230))

(declare-fun m!30875 () Bool)

(assert (=> bs!1555 m!30875))

(assert (=> start!5286 d!6230))

(declare-fun b!38264 () Bool)

(declare-fun e!24320 () Bool)

(declare-fun tp_is_empty!1729 () Bool)

(declare-fun tp!5701 () Bool)

(assert (=> b!38264 (= e!24320 (and tp_is_empty!1729 tp!5701))))

(assert (=> b!38247 (= tp!5690 e!24320)))

(get-info :version)

(assert (= (and b!38247 ((_ is Cons!1029) (toList!542 lm!266))) b!38264))

(check-sat (not d!6223) (not d!6230) (not b!38264) tp_is_empty!1729)
(check-sat)
