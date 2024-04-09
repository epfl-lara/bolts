; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138486 () Bool)

(assert start!138486)

(declare-datatypes ((B!3046 0))(
  ( (B!3047 (val!19885 Int)) )
))
(declare-datatypes ((tuple2!26102 0))(
  ( (tuple2!26103 (_1!13061 (_ BitVec 64)) (_2!13061 B!3046)) )
))
(declare-datatypes ((List!37166 0))(
  ( (Nil!37163) (Cons!37162 (h!38706 tuple2!26102) (t!52105 List!37166)) )
))
(declare-fun l!628 () List!37166)

(declare-fun ListPrimitiveSize!236 (List!37166) Int)

(assert (=> start!138486 (< (ListPrimitiveSize!236 l!628) 0)))

(declare-fun e!885897 () Bool)

(assert (=> start!138486 e!885897))

(declare-fun b!1586321 () Bool)

(declare-fun tp_is_empty!39579 () Bool)

(declare-fun tp!115432 () Bool)

(assert (=> b!1586321 (= e!885897 (and tp_is_empty!39579 tp!115432))))

(get-info :version)

(assert (= (and start!138486 ((_ is Cons!37162) l!628)) b!1586321))

(declare-fun m!1454735 () Bool)

(assert (=> start!138486 m!1454735))

(check-sat (not start!138486) (not b!1586321) tp_is_empty!39579)
(check-sat)
(get-model)

(declare-fun d!167909 () Bool)

(declare-fun lt!677456 () Int)

(assert (=> d!167909 (>= lt!677456 0)))

(declare-fun e!885907 () Int)

(assert (=> d!167909 (= lt!677456 e!885907)))

(declare-fun c!147010 () Bool)

(assert (=> d!167909 (= c!147010 ((_ is Nil!37163) l!628))))

(assert (=> d!167909 (= (ListPrimitiveSize!236 l!628) lt!677456)))

(declare-fun b!1586337 () Bool)

(assert (=> b!1586337 (= e!885907 0)))

(declare-fun b!1586338 () Bool)

(assert (=> b!1586338 (= e!885907 (+ 1 (ListPrimitiveSize!236 (t!52105 l!628))))))

(assert (= (and d!167909 c!147010) b!1586337))

(assert (= (and d!167909 (not c!147010)) b!1586338))

(declare-fun m!1454739 () Bool)

(assert (=> b!1586338 m!1454739))

(assert (=> start!138486 d!167909))

(declare-fun b!1586347 () Bool)

(declare-fun e!885912 () Bool)

(declare-fun tp!115438 () Bool)

(assert (=> b!1586347 (= e!885912 (and tp_is_empty!39579 tp!115438))))

(assert (=> b!1586321 (= tp!115432 e!885912)))

(assert (= (and b!1586321 ((_ is Cons!37162) (t!52105 l!628))) b!1586347))

(check-sat (not b!1586338) (not b!1586347) tp_is_empty!39579)
(check-sat)
