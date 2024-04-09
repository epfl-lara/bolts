; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138462 () Bool)

(assert start!138462)

(declare-fun res!1083388 () Bool)

(declare-fun e!885828 () Bool)

(assert (=> start!138462 (=> (not res!1083388) (not e!885828))))

(declare-datatypes ((B!3034 0))(
  ( (B!3035 (val!19879 Int)) )
))
(declare-datatypes ((tuple2!26090 0))(
  ( (tuple2!26091 (_1!13055 (_ BitVec 64)) (_2!13055 B!3034)) )
))
(declare-datatypes ((List!37160 0))(
  ( (Nil!37157) (Cons!37156 (h!38700 tuple2!26090) (t!52099 List!37160)) )
))
(declare-fun l!636 () List!37160)

(declare-fun isStrictlySorted!1219 (List!37160) Bool)

(assert (=> start!138462 (= res!1083388 (isStrictlySorted!1219 l!636))))

(assert (=> start!138462 e!885828))

(declare-fun e!885827 () Bool)

(assert (=> start!138462 e!885827))

(assert (=> start!138462 true))

(declare-fun b!1586229 () Bool)

(declare-fun res!1083389 () Bool)

(assert (=> b!1586229 (=> (not res!1083389) (not e!885828))))

(declare-fun key!185 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1586229 (= res!1083389 (and (or (not ((_ is Cons!37156) l!636)) (not (= (_1!13055 (h!38700 l!636)) key!185))) (or (not ((_ is Cons!37156) l!636)) (bvsle (_1!13055 (h!38700 l!636)) key!185)) ((_ is Cons!37156) l!636) (bvslt (_1!13055 (h!38700 l!636)) key!185)))))

(declare-fun b!1586230 () Bool)

(declare-fun ListPrimitiveSize!233 (List!37160) Int)

(assert (=> b!1586230 (= e!885828 (>= (ListPrimitiveSize!233 (t!52099 l!636)) (ListPrimitiveSize!233 l!636)))))

(declare-fun b!1586231 () Bool)

(declare-fun tp_is_empty!39567 () Bool)

(declare-fun tp!115405 () Bool)

(assert (=> b!1586231 (= e!885827 (and tp_is_empty!39567 tp!115405))))

(assert (= (and start!138462 res!1083388) b!1586229))

(assert (= (and b!1586229 res!1083389) b!1586230))

(assert (= (and start!138462 ((_ is Cons!37156) l!636)) b!1586231))

(declare-fun m!1454703 () Bool)

(assert (=> start!138462 m!1454703))

(declare-fun m!1454705 () Bool)

(assert (=> b!1586230 m!1454705))

(declare-fun m!1454707 () Bool)

(assert (=> b!1586230 m!1454707))

(check-sat (not start!138462) (not b!1586230) (not b!1586231) tp_is_empty!39567)
(check-sat)
(get-model)

(declare-fun d!167889 () Bool)

(declare-fun res!1083406 () Bool)

(declare-fun e!885847 () Bool)

(assert (=> d!167889 (=> res!1083406 e!885847)))

(assert (=> d!167889 (= res!1083406 (or ((_ is Nil!37157) l!636) ((_ is Nil!37157) (t!52099 l!636))))))

(assert (=> d!167889 (= (isStrictlySorted!1219 l!636) e!885847)))

(declare-fun b!1586255 () Bool)

(declare-fun e!885848 () Bool)

(assert (=> b!1586255 (= e!885847 e!885848)))

(declare-fun res!1083407 () Bool)

(assert (=> b!1586255 (=> (not res!1083407) (not e!885848))))

(assert (=> b!1586255 (= res!1083407 (bvslt (_1!13055 (h!38700 l!636)) (_1!13055 (h!38700 (t!52099 l!636)))))))

(declare-fun b!1586256 () Bool)

(assert (=> b!1586256 (= e!885848 (isStrictlySorted!1219 (t!52099 l!636)))))

(assert (= (and d!167889 (not res!1083406)) b!1586255))

(assert (= (and b!1586255 res!1083407) b!1586256))

(declare-fun m!1454717 () Bool)

(assert (=> b!1586256 m!1454717))

(assert (=> start!138462 d!167889))

(declare-fun d!167893 () Bool)

(declare-fun lt!677444 () Int)

(assert (=> d!167893 (>= lt!677444 0)))

(declare-fun e!885856 () Int)

(assert (=> d!167893 (= lt!677444 e!885856)))

(declare-fun c!146998 () Bool)

(assert (=> d!167893 (= c!146998 ((_ is Nil!37157) (t!52099 l!636)))))

(assert (=> d!167893 (= (ListPrimitiveSize!233 (t!52099 l!636)) lt!677444)))

(declare-fun b!1586270 () Bool)

(assert (=> b!1586270 (= e!885856 0)))

(declare-fun b!1586271 () Bool)

(assert (=> b!1586271 (= e!885856 (+ 1 (ListPrimitiveSize!233 (t!52099 (t!52099 l!636)))))))

(assert (= (and d!167893 c!146998) b!1586270))

(assert (= (and d!167893 (not c!146998)) b!1586271))

(declare-fun m!1454721 () Bool)

(assert (=> b!1586271 m!1454721))

(assert (=> b!1586230 d!167893))

(declare-fun d!167899 () Bool)

(declare-fun lt!677445 () Int)

(assert (=> d!167899 (>= lt!677445 0)))

(declare-fun e!885857 () Int)

(assert (=> d!167899 (= lt!677445 e!885857)))

(declare-fun c!146999 () Bool)

(assert (=> d!167899 (= c!146999 ((_ is Nil!37157) l!636))))

(assert (=> d!167899 (= (ListPrimitiveSize!233 l!636) lt!677445)))

(declare-fun b!1586272 () Bool)

(assert (=> b!1586272 (= e!885857 0)))

(declare-fun b!1586273 () Bool)

(assert (=> b!1586273 (= e!885857 (+ 1 (ListPrimitiveSize!233 (t!52099 l!636))))))

(assert (= (and d!167899 c!146999) b!1586272))

(assert (= (and d!167899 (not c!146999)) b!1586273))

(assert (=> b!1586273 m!1454705))

(assert (=> b!1586230 d!167899))

(declare-fun b!1586278 () Bool)

(declare-fun e!885860 () Bool)

(declare-fun tp!115414 () Bool)

(assert (=> b!1586278 (= e!885860 (and tp_is_empty!39567 tp!115414))))

(assert (=> b!1586231 (= tp!115405 e!885860)))

(assert (= (and b!1586231 ((_ is Cons!37156) (t!52099 l!636))) b!1586278))

(check-sat (not b!1586278) (not b!1586273) (not b!1586256) (not b!1586271) tp_is_empty!39567)
(check-sat)
