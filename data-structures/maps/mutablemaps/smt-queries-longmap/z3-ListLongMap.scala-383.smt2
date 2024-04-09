; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7242 () Bool)

(assert start!7242)

(declare-fun res!27054 () Bool)

(declare-fun e!29528 () Bool)

(assert (=> start!7242 (=> (not res!27054) (not e!29528))))

(declare-datatypes ((B!880 0))(
  ( (B!881 (val!1027 Int)) )
))
(declare-datatypes ((tuple2!1706 0))(
  ( (tuple2!1707 (_1!863 (_ BitVec 64)) (_2!863 B!880)) )
))
(declare-datatypes ((List!1261 0))(
  ( (Nil!1258) (Cons!1257 (h!1837 tuple2!1706) (t!4294 List!1261)) )
))
(declare-fun l!812 () List!1261)

(declare-fun isStrictlySorted!232 (List!1261) Bool)

(assert (=> start!7242 (= res!27054 (isStrictlySorted!232 l!812))))

(assert (=> start!7242 e!29528))

(declare-fun e!29527 () Bool)

(assert (=> start!7242 e!29527))

(declare-fun b!46328 () Bool)

(declare-fun res!27055 () Bool)

(assert (=> b!46328 (=> (not res!27055) (not e!29528))))

(get-info :version)

(assert (=> b!46328 (= res!27055 ((_ is Cons!1257) l!812))))

(declare-fun b!46329 () Bool)

(assert (=> b!46329 (= e!29528 (not (isStrictlySorted!232 (t!4294 l!812))))))

(declare-fun b!46330 () Bool)

(declare-fun tp_is_empty!1977 () Bool)

(declare-fun tp!6104 () Bool)

(assert (=> b!46330 (= e!29527 (and tp_is_empty!1977 tp!6104))))

(assert (= (and start!7242 res!27054) b!46328))

(assert (= (and b!46328 res!27055) b!46329))

(assert (= (and start!7242 ((_ is Cons!1257) l!812)) b!46330))

(declare-fun m!40729 () Bool)

(assert (=> start!7242 m!40729))

(declare-fun m!40731 () Bool)

(assert (=> b!46329 m!40731))

(check-sat (not b!46329) (not start!7242) (not b!46330) tp_is_empty!1977)
(check-sat)
(get-model)

(declare-fun d!9091 () Bool)

(declare-fun res!27078 () Bool)

(declare-fun e!29551 () Bool)

(assert (=> d!9091 (=> res!27078 e!29551)))

(assert (=> d!9091 (= res!27078 (or ((_ is Nil!1258) (t!4294 l!812)) ((_ is Nil!1258) (t!4294 (t!4294 l!812)))))))

(assert (=> d!9091 (= (isStrictlySorted!232 (t!4294 l!812)) e!29551)))

(declare-fun b!46356 () Bool)

(declare-fun e!29552 () Bool)

(assert (=> b!46356 (= e!29551 e!29552)))

(declare-fun res!27079 () Bool)

(assert (=> b!46356 (=> (not res!27079) (not e!29552))))

(assert (=> b!46356 (= res!27079 (bvslt (_1!863 (h!1837 (t!4294 l!812))) (_1!863 (h!1837 (t!4294 (t!4294 l!812))))))))

(declare-fun b!46357 () Bool)

(assert (=> b!46357 (= e!29552 (isStrictlySorted!232 (t!4294 (t!4294 l!812))))))

(assert (= (and d!9091 (not res!27078)) b!46356))

(assert (= (and b!46356 res!27079) b!46357))

(declare-fun m!40737 () Bool)

(assert (=> b!46357 m!40737))

(assert (=> b!46329 d!9091))

(declare-fun d!9097 () Bool)

(declare-fun res!27084 () Bool)

(declare-fun e!29557 () Bool)

(assert (=> d!9097 (=> res!27084 e!29557)))

(assert (=> d!9097 (= res!27084 (or ((_ is Nil!1258) l!812) ((_ is Nil!1258) (t!4294 l!812))))))

(assert (=> d!9097 (= (isStrictlySorted!232 l!812) e!29557)))

(declare-fun b!46362 () Bool)

(declare-fun e!29558 () Bool)

(assert (=> b!46362 (= e!29557 e!29558)))

(declare-fun res!27085 () Bool)

(assert (=> b!46362 (=> (not res!27085) (not e!29558))))

(assert (=> b!46362 (= res!27085 (bvslt (_1!863 (h!1837 l!812)) (_1!863 (h!1837 (t!4294 l!812)))))))

(declare-fun b!46363 () Bool)

(assert (=> b!46363 (= e!29558 (isStrictlySorted!232 (t!4294 l!812)))))

(assert (= (and d!9097 (not res!27084)) b!46362))

(assert (= (and b!46362 res!27085) b!46363))

(assert (=> b!46363 m!40731))

(assert (=> start!7242 d!9097))

(declare-fun b!46378 () Bool)

(declare-fun e!29567 () Bool)

(declare-fun tp!6116 () Bool)

(assert (=> b!46378 (= e!29567 (and tp_is_empty!1977 tp!6116))))

(assert (=> b!46330 (= tp!6104 e!29567)))

(assert (= (and b!46330 ((_ is Cons!1257) (t!4294 l!812))) b!46378))

(check-sat (not b!46357) (not b!46363) (not b!46378) tp_is_empty!1977)
(check-sat)
