; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759444 () Bool)

(assert start!759444)

(declare-fun res!3188355 () Bool)

(declare-fun e!4749370 () Bool)

(assert (=> start!759444 (=> (not res!3188355) (not e!4749370))))

(declare-datatypes ((K!23013 0))(
  ( (K!23014 (val!33083 Int)) )
))
(declare-datatypes ((V!23255 0))(
  ( (V!23256 (val!33084 Int)) )
))
(declare-datatypes ((tuple2!71048 0))(
  ( (tuple2!71049 (_1!38827 K!23013) (_2!38827 V!23255)) )
))
(declare-datatypes ((List!75779 0))(
  ( (Nil!75653) (Cons!75653 (h!82101 tuple2!71048) (t!391551 List!75779)) )
))
(declare-fun l!11061 () List!75779)

(get-info :version)

(assert (=> start!759444 (= res!3188355 ((_ is Cons!75653) l!11061))))

(assert (=> start!759444 e!4749370))

(declare-fun e!4749369 () Bool)

(assert (=> start!759444 e!4749369))

(declare-fun b!8059099 () Bool)

(declare-fun res!3188356 () Bool)

(assert (=> b!8059099 (=> (not res!3188356) (not e!4749370))))

(declare-fun containsKey!4935 (List!75779 K!23013) Bool)

(assert (=> b!8059099 (= res!3188356 (not (containsKey!4935 (t!391551 l!11061) (_1!38827 (h!82101 l!11061)))))))

(declare-fun b!8059100 () Bool)

(declare-fun ListPrimitiveSize!562 (List!75779) Int)

(assert (=> b!8059100 (= e!4749370 (>= (ListPrimitiveSize!562 (t!391551 l!11061)) (ListPrimitiveSize!562 l!11061)))))

(declare-fun tp_is_empty!55213 () Bool)

(declare-fun b!8059101 () Bool)

(declare-fun tp!2414358 () Bool)

(declare-fun tp_is_empty!55211 () Bool)

(assert (=> b!8059101 (= e!4749369 (and tp_is_empty!55211 tp_is_empty!55213 tp!2414358))))

(assert (= (and start!759444 res!3188355) b!8059099))

(assert (= (and b!8059099 res!3188356) b!8059100))

(assert (= (and start!759444 ((_ is Cons!75653) l!11061)) b!8059101))

(declare-fun m!8412394 () Bool)

(assert (=> b!8059099 m!8412394))

(declare-fun m!8412396 () Bool)

(assert (=> b!8059100 m!8412396))

(declare-fun m!8412398 () Bool)

(assert (=> b!8059100 m!8412398))

(check-sat (not b!8059101) tp_is_empty!55213 (not b!8059100) tp_is_empty!55211 (not b!8059099))
(check-sat)
(get-model)

(declare-fun d!2399303 () Bool)

(declare-fun lt!2732558 () Int)

(assert (=> d!2399303 (>= lt!2732558 0)))

(declare-fun e!4749376 () Int)

(assert (=> d!2399303 (= lt!2732558 e!4749376)))

(declare-fun c!1476839 () Bool)

(assert (=> d!2399303 (= c!1476839 ((_ is Nil!75653) (t!391551 l!11061)))))

(assert (=> d!2399303 (= (ListPrimitiveSize!562 (t!391551 l!11061)) lt!2732558)))

(declare-fun b!8059111 () Bool)

(assert (=> b!8059111 (= e!4749376 0)))

(declare-fun b!8059113 () Bool)

(assert (=> b!8059113 (= e!4749376 (+ 1 (ListPrimitiveSize!562 (t!391551 (t!391551 l!11061)))))))

(assert (= (and d!2399303 c!1476839) b!8059111))

(assert (= (and d!2399303 (not c!1476839)) b!8059113))

(declare-fun m!8412402 () Bool)

(assert (=> b!8059113 m!8412402))

(assert (=> b!8059100 d!2399303))

(declare-fun d!2399309 () Bool)

(declare-fun lt!2732560 () Int)

(assert (=> d!2399309 (>= lt!2732560 0)))

(declare-fun e!4749378 () Int)

(assert (=> d!2399309 (= lt!2732560 e!4749378)))

(declare-fun c!1476841 () Bool)

(assert (=> d!2399309 (= c!1476841 ((_ is Nil!75653) l!11061))))

(assert (=> d!2399309 (= (ListPrimitiveSize!562 l!11061) lt!2732560)))

(declare-fun b!8059115 () Bool)

(assert (=> b!8059115 (= e!4749378 0)))

(declare-fun b!8059117 () Bool)

(assert (=> b!8059117 (= e!4749378 (+ 1 (ListPrimitiveSize!562 (t!391551 l!11061))))))

(assert (= (and d!2399309 c!1476841) b!8059115))

(assert (= (and d!2399309 (not c!1476841)) b!8059117))

(assert (=> b!8059117 m!8412396))

(assert (=> b!8059100 d!2399309))

(declare-fun d!2399311 () Bool)

(declare-fun res!3188365 () Bool)

(declare-fun e!4749387 () Bool)

(assert (=> d!2399311 (=> res!3188365 e!4749387)))

(assert (=> d!2399311 (= res!3188365 (and ((_ is Cons!75653) (t!391551 l!11061)) (= (_1!38827 (h!82101 (t!391551 l!11061))) (_1!38827 (h!82101 l!11061)))))))

(assert (=> d!2399311 (= (containsKey!4935 (t!391551 l!11061) (_1!38827 (h!82101 l!11061))) e!4749387)))

(declare-fun b!8059126 () Bool)

(declare-fun e!4749388 () Bool)

(assert (=> b!8059126 (= e!4749387 e!4749388)))

(declare-fun res!3188366 () Bool)

(assert (=> b!8059126 (=> (not res!3188366) (not e!4749388))))

(assert (=> b!8059126 (= res!3188366 ((_ is Cons!75653) (t!391551 l!11061)))))

(declare-fun b!8059127 () Bool)

(assert (=> b!8059127 (= e!4749388 (containsKey!4935 (t!391551 (t!391551 l!11061)) (_1!38827 (h!82101 l!11061))))))

(assert (= (and d!2399311 (not res!3188365)) b!8059126))

(assert (= (and b!8059126 res!3188366) b!8059127))

(declare-fun m!8412404 () Bool)

(assert (=> b!8059127 m!8412404))

(assert (=> b!8059099 d!2399311))

(declare-fun b!8059138 () Bool)

(declare-fun tp!2414363 () Bool)

(declare-fun e!4749395 () Bool)

(assert (=> b!8059138 (= e!4749395 (and tp_is_empty!55211 tp_is_empty!55213 tp!2414363))))

(assert (=> b!8059101 (= tp!2414358 e!4749395)))

(assert (= (and b!8059101 ((_ is Cons!75653) (t!391551 l!11061))) b!8059138))

(check-sat (not b!8059127) tp_is_empty!55213 (not b!8059113) tp_is_empty!55211 (not b!8059117) (not b!8059138))
(check-sat)
