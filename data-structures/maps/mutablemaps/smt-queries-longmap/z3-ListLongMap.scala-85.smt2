; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1226 () Bool)

(assert start!1226)

(declare-fun res!8881 () Bool)

(declare-fun e!5974 () Bool)

(assert (=> start!1226 (=> (not res!8881) (not e!5974))))

(declare-datatypes ((B!316 0))(
  ( (B!317 (val!253 Int)) )
))
(declare-datatypes ((tuple2!288 0))(
  ( (tuple2!289 (_1!144 (_ BitVec 64)) (_2!144 B!316)) )
))
(declare-datatypes ((List!300 0))(
  ( (Nil!297) (Cons!296 (h!862 tuple2!288) (t!2447 List!300)) )
))
(declare-fun l!408 () List!300)

(get-info :version)

(assert (=> start!1226 (= res!8881 ((_ is Cons!296) l!408))))

(assert (=> start!1226 e!5974))

(declare-fun e!5975 () Bool)

(assert (=> start!1226 e!5975))

(declare-fun b!10339 () Bool)

(declare-fun ListPrimitiveSize!5 (List!300) Int)

(assert (=> b!10339 (= e!5974 (>= (ListPrimitiveSize!5 (t!2447 l!408)) (ListPrimitiveSize!5 l!408)))))

(declare-fun b!10340 () Bool)

(declare-fun tp_is_empty!489 () Bool)

(declare-fun tp!1484 () Bool)

(assert (=> b!10340 (= e!5975 (and tp_is_empty!489 tp!1484))))

(assert (= (and start!1226 res!8881) b!10339))

(assert (= (and start!1226 ((_ is Cons!296) l!408)) b!10340))

(declare-fun m!6711 () Bool)

(assert (=> b!10339 m!6711))

(declare-fun m!6713 () Bool)

(assert (=> b!10339 m!6713))

(check-sat (not b!10339) (not b!10340) tp_is_empty!489)
(check-sat)
(get-model)

(declare-fun d!1091 () Bool)

(declare-fun lt!2545 () Int)

(assert (=> d!1091 (>= lt!2545 0)))

(declare-fun e!5988 () Int)

(assert (=> d!1091 (= lt!2545 e!5988)))

(declare-fun c!930 () Bool)

(assert (=> d!1091 (= c!930 ((_ is Nil!297) (t!2447 l!408)))))

(assert (=> d!1091 (= (ListPrimitiveSize!5 (t!2447 l!408)) lt!2545)))

(declare-fun b!10359 () Bool)

(assert (=> b!10359 (= e!5988 0)))

(declare-fun b!10361 () Bool)

(assert (=> b!10361 (= e!5988 (+ 1 (ListPrimitiveSize!5 (t!2447 (t!2447 l!408)))))))

(assert (= (and d!1091 c!930) b!10359))

(assert (= (and d!1091 (not c!930)) b!10361))

(declare-fun m!6721 () Bool)

(assert (=> b!10361 m!6721))

(assert (=> b!10339 d!1091))

(declare-fun d!1097 () Bool)

(declare-fun lt!2549 () Int)

(assert (=> d!1097 (>= lt!2549 0)))

(declare-fun e!5992 () Int)

(assert (=> d!1097 (= lt!2549 e!5992)))

(declare-fun c!934 () Bool)

(assert (=> d!1097 (= c!934 ((_ is Nil!297) l!408))))

(assert (=> d!1097 (= (ListPrimitiveSize!5 l!408) lt!2549)))

(declare-fun b!10367 () Bool)

(assert (=> b!10367 (= e!5992 0)))

(declare-fun b!10368 () Bool)

(assert (=> b!10368 (= e!5992 (+ 1 (ListPrimitiveSize!5 (t!2447 l!408))))))

(assert (= (and d!1097 c!934) b!10367))

(assert (= (and d!1097 (not c!934)) b!10368))

(assert (=> b!10368 m!6711))

(assert (=> b!10339 d!1097))

(declare-fun b!10383 () Bool)

(declare-fun e!6000 () Bool)

(declare-fun tp!1494 () Bool)

(assert (=> b!10383 (= e!6000 (and tp_is_empty!489 tp!1494))))

(assert (=> b!10340 (= tp!1484 e!6000)))

(assert (= (and b!10340 ((_ is Cons!296) (t!2447 l!408))) b!10383))

(check-sat (not b!10368) (not b!10361) (not b!10383) tp_is_empty!489)
(check-sat)
