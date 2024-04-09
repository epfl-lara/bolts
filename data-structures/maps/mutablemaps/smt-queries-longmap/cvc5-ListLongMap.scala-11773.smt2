; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138268 () Bool)

(assert start!138268)

(declare-fun res!1082782 () Bool)

(declare-fun e!885108 () Bool)

(assert (=> start!138268 (=> (not res!1082782) (not e!885108))))

(declare-datatypes ((B!2978 0))(
  ( (B!2979 (val!19851 Int)) )
))
(declare-datatypes ((tuple2!26034 0))(
  ( (tuple2!26035 (_1!13027 (_ BitVec 64)) (_2!13027 B!2978)) )
))
(declare-datatypes ((List!37132 0))(
  ( (Nil!37129) (Cons!37128 (h!38672 tuple2!26034) (t!52059 List!37132)) )
))
(declare-fun l!556 () List!37132)

(declare-fun isStrictlySorted!1191 (List!37132) Bool)

(assert (=> start!138268 (= res!1082782 (isStrictlySorted!1191 l!556))))

(assert (=> start!138268 e!885108))

(declare-fun e!885107 () Bool)

(assert (=> start!138268 e!885107))

(assert (=> start!138268 true))

(declare-fun b!1585266 () Bool)

(declare-fun res!1082783 () Bool)

(assert (=> b!1585266 (=> (not res!1082783) (not e!885108))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585266 (= res!1082783 (and (is-Cons!37128 l!556) (bvslt (_1!13027 (h!38672 l!556)) newKey!21)))))

(declare-fun b!1585267 () Bool)

(declare-fun ListPrimitiveSize!226 (List!37132) Int)

(assert (=> b!1585267 (= e!885108 (>= (ListPrimitiveSize!226 (t!52059 l!556)) (ListPrimitiveSize!226 l!556)))))

(declare-fun b!1585268 () Bool)

(declare-fun tp_is_empty!39511 () Bool)

(declare-fun tp!115246 () Bool)

(assert (=> b!1585268 (= e!885107 (and tp_is_empty!39511 tp!115246))))

(assert (= (and start!138268 res!1082782) b!1585266))

(assert (= (and b!1585266 res!1082783) b!1585267))

(assert (= (and start!138268 (is-Cons!37128 l!556)) b!1585268))

(declare-fun m!1454193 () Bool)

(assert (=> start!138268 m!1454193))

(declare-fun m!1454195 () Bool)

(assert (=> b!1585267 m!1454195))

(declare-fun m!1454197 () Bool)

(assert (=> b!1585267 m!1454197))

(push 1)

(assert (not b!1585267))

(assert (not start!138268))

(assert (not b!1585268))

(assert tp_is_empty!39511)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167645 () Bool)

(declare-fun lt!677297 () Int)

(assert (=> d!167645 (>= lt!677297 0)))

(declare-fun e!885131 () Int)

(assert (=> d!167645 (= lt!677297 e!885131)))

(declare-fun c!146920 () Bool)

(assert (=> d!167645 (= c!146920 (is-Nil!37129 (t!52059 l!556)))))

(assert (=> d!167645 (= (ListPrimitiveSize!226 (t!52059 l!556)) lt!677297)))

(declare-fun b!1585303 () Bool)

(assert (=> b!1585303 (= e!885131 0)))

(declare-fun b!1585304 () Bool)

(assert (=> b!1585304 (= e!885131 (+ 1 (ListPrimitiveSize!226 (t!52059 (t!52059 l!556)))))))

(assert (= (and d!167645 c!146920) b!1585303))

(assert (= (and d!167645 (not c!146920)) b!1585304))

(declare-fun m!1454213 () Bool)

(assert (=> b!1585304 m!1454213))

(assert (=> b!1585267 d!167645))

(declare-fun d!167649 () Bool)

(declare-fun lt!677298 () Int)

(assert (=> d!167649 (>= lt!677298 0)))

(declare-fun e!885134 () Int)

(assert (=> d!167649 (= lt!677298 e!885134)))

(declare-fun c!146921 () Bool)

(assert (=> d!167649 (= c!146921 (is-Nil!37129 l!556))))

(assert (=> d!167649 (= (ListPrimitiveSize!226 l!556) lt!677298)))

(declare-fun b!1585307 () Bool)

(assert (=> b!1585307 (= e!885134 0)))

(declare-fun b!1585308 () Bool)

(assert (=> b!1585308 (= e!885134 (+ 1 (ListPrimitiveSize!226 (t!52059 l!556))))))

(assert (= (and d!167649 c!146921) b!1585307))

(assert (= (and d!167649 (not c!146921)) b!1585308))

(assert (=> b!1585308 m!1454195))

(assert (=> b!1585267 d!167649))

(declare-fun d!167651 () Bool)

(declare-fun res!1082806 () Bool)

(declare-fun e!885146 () Bool)

(assert (=> d!167651 (=> res!1082806 e!885146)))

(assert (=> d!167651 (= res!1082806 (or (is-Nil!37129 l!556) (is-Nil!37129 (t!52059 l!556))))))

(assert (=> d!167651 (= (isStrictlySorted!1191 l!556) e!885146)))

(declare-fun b!1585326 () Bool)

(declare-fun e!885147 () Bool)

(assert (=> b!1585326 (= e!885146 e!885147)))

(declare-fun res!1082807 () Bool)

(assert (=> b!1585326 (=> (not res!1082807) (not e!885147))))

