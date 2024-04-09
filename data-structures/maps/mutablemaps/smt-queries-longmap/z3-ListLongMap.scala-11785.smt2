; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138498 () Bool)

(assert start!138498)

(declare-fun res!1083428 () Bool)

(declare-fun e!885929 () Bool)

(assert (=> start!138498 (=> (not res!1083428) (not e!885929))))

(declare-datatypes ((B!3052 0))(
  ( (B!3053 (val!19888 Int)) )
))
(declare-datatypes ((tuple2!26108 0))(
  ( (tuple2!26109 (_1!13064 (_ BitVec 64)) (_2!13064 B!3052)) )
))
(declare-datatypes ((List!37169 0))(
  ( (Nil!37166) (Cons!37165 (h!38709 tuple2!26108) (t!52108 List!37169)) )
))
(declare-fun l!628 () List!37169)

(get-info :version)

(assert (=> start!138498 (= res!1083428 (and (not ((_ is Nil!37166) l!628)) (not ((_ is Nil!37166) (t!52108 l!628))) (bvslt (_1!13064 (h!38709 l!628)) (_1!13064 (h!38709 (t!52108 l!628))))))))

(assert (=> start!138498 e!885929))

(declare-fun e!885930 () Bool)

(assert (=> start!138498 e!885930))

(declare-fun b!1586368 () Bool)

(declare-fun ListPrimitiveSize!239 (List!37169) Int)

(assert (=> b!1586368 (= e!885929 (>= (ListPrimitiveSize!239 (t!52108 l!628)) (ListPrimitiveSize!239 l!628)))))

(declare-fun b!1586369 () Bool)

(declare-fun tp_is_empty!39585 () Bool)

(declare-fun tp!115450 () Bool)

(assert (=> b!1586369 (= e!885930 (and tp_is_empty!39585 tp!115450))))

(assert (= (and start!138498 res!1083428) b!1586368))

(assert (= (and start!138498 ((_ is Cons!37165) l!628)) b!1586369))

(declare-fun m!1454749 () Bool)

(assert (=> b!1586368 m!1454749))

(declare-fun m!1454751 () Bool)

(assert (=> b!1586368 m!1454751))

(check-sat (not b!1586368) (not b!1586369) tp_is_empty!39585)
(check-sat)
(get-model)

(declare-fun d!167917 () Bool)

(declare-fun lt!677461 () Int)

(assert (=> d!167917 (>= lt!677461 0)))

(declare-fun e!885939 () Int)

(assert (=> d!167917 (= lt!677461 e!885939)))

(declare-fun c!147015 () Bool)

(assert (=> d!167917 (= c!147015 ((_ is Nil!37166) (t!52108 l!628)))))

(assert (=> d!167917 (= (ListPrimitiveSize!239 (t!52108 l!628)) lt!677461)))

(declare-fun b!1586380 () Bool)

(assert (=> b!1586380 (= e!885939 0)))

(declare-fun b!1586381 () Bool)

(assert (=> b!1586381 (= e!885939 (+ 1 (ListPrimitiveSize!239 (t!52108 (t!52108 l!628)))))))

(assert (= (and d!167917 c!147015) b!1586380))

(assert (= (and d!167917 (not c!147015)) b!1586381))

(declare-fun m!1454757 () Bool)

(assert (=> b!1586381 m!1454757))

(assert (=> b!1586368 d!167917))

(declare-fun d!167921 () Bool)

(declare-fun lt!677462 () Int)

(assert (=> d!167921 (>= lt!677462 0)))

(declare-fun e!885940 () Int)

(assert (=> d!167921 (= lt!677462 e!885940)))

(declare-fun c!147016 () Bool)

(assert (=> d!167921 (= c!147016 ((_ is Nil!37166) l!628))))

(assert (=> d!167921 (= (ListPrimitiveSize!239 l!628) lt!677462)))

(declare-fun b!1586382 () Bool)

(assert (=> b!1586382 (= e!885940 0)))

(declare-fun b!1586383 () Bool)

(assert (=> b!1586383 (= e!885940 (+ 1 (ListPrimitiveSize!239 (t!52108 l!628))))))

(assert (= (and d!167921 c!147016) b!1586382))

(assert (= (and d!167921 (not c!147016)) b!1586383))

(assert (=> b!1586383 m!1454749))

(assert (=> b!1586368 d!167921))

(declare-fun b!1586388 () Bool)

(declare-fun e!885943 () Bool)

(declare-fun tp!115456 () Bool)

(assert (=> b!1586388 (= e!885943 (and tp_is_empty!39585 tp!115456))))

(assert (=> b!1586369 (= tp!115450 e!885943)))

(assert (= (and b!1586369 ((_ is Cons!37165) (t!52108 l!628))) b!1586388))

(check-sat (not b!1586383) (not b!1586381) (not b!1586388) tp_is_empty!39585)
(check-sat)
