; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417074 () Bool)

(assert start!417074)

(declare-fun tp_is_empty!24451 () Bool)

(declare-fun e!2693925 () Bool)

(declare-fun b!4329260 () Bool)

(declare-fun tp_is_empty!24449 () Bool)

(declare-fun tp!1328154 () Bool)

(assert (=> b!4329260 (= e!2693925 (and tp_is_empty!24449 tp_is_empty!24451 tp!1328154))))

(declare-fun res!1774218 () Bool)

(declare-fun e!2693924 () Bool)

(assert (=> start!417074 (=> (not res!1774218) (not e!2693924))))

(declare-datatypes ((K!9825 0))(
  ( (K!9826 (val!16131 Int)) )
))
(declare-datatypes ((V!10071 0))(
  ( (V!10072 (val!16132 Int)) )
))
(declare-datatypes ((tuple2!47596 0))(
  ( (tuple2!47597 (_1!27092 K!9825) (_2!27092 V!10071)) )
))
(declare-datatypes ((List!48626 0))(
  ( (Nil!48502) (Cons!48502 (h!53971 tuple2!47596) (t!355538 List!48626)) )
))
(declare-fun l!13918 () List!48626)

(declare-fun noDuplicateKeys!315 (List!48626) Bool)

(assert (=> start!417074 (= res!1774218 (noDuplicateKeys!315 l!13918))))

(assert (=> start!417074 e!2693924))

(assert (=> start!417074 e!2693925))

(assert (=> start!417074 tp_is_empty!24449))

(declare-fun b!4329259 () Bool)

(declare-fun ListPrimitiveSize!327 (List!48626) Int)

(assert (=> b!4329259 (= e!2693924 (< (ListPrimitiveSize!327 l!13918) 0))))

(declare-fun b!4329258 () Bool)

(declare-fun res!1774217 () Bool)

(assert (=> b!4329258 (=> (not res!1774217) (not e!2693924))))

(declare-fun otherK!9 () K!9825)

(declare-fun containsKey!461 (List!48626 K!9825) Bool)

(assert (=> b!4329258 (= res!1774217 (not (containsKey!461 l!13918 otherK!9)))))

(declare-fun b!4329257 () Bool)

(declare-fun res!1774219 () Bool)

(assert (=> b!4329257 (=> (not res!1774219) (not e!2693924))))

(declare-fun key!5304 () K!9825)

(assert (=> b!4329257 (= res!1774219 (not (= otherK!9 key!5304)))))

(assert (= (and start!417074 res!1774218) b!4329257))

(assert (= (and b!4329257 res!1774219) b!4329258))

(assert (= (and b!4329258 res!1774217) b!4329259))

(get-info :version)

(assert (= (and start!417074 ((_ is Cons!48502) l!13918)) b!4329260))

(declare-fun m!4923759 () Bool)

(assert (=> start!417074 m!4923759))

(declare-fun m!4923761 () Bool)

(assert (=> b!4329259 m!4923761))

(declare-fun m!4923763 () Bool)

(assert (=> b!4329258 m!4923763))

(check-sat (not b!4329260) (not b!4329258) tp_is_empty!24451 (not b!4329259) (not start!417074) tp_is_empty!24449)
(check-sat)
(get-model)

(declare-fun d!1272371 () Bool)

(declare-fun lt!1545383 () Int)

(assert (=> d!1272371 (>= lt!1545383 0)))

(declare-fun e!2693931 () Int)

(assert (=> d!1272371 (= lt!1545383 e!2693931)))

(declare-fun c!736617 () Bool)

(assert (=> d!1272371 (= c!736617 ((_ is Nil!48502) l!13918))))

(assert (=> d!1272371 (= (ListPrimitiveSize!327 l!13918) lt!1545383)))

(declare-fun b!4329270 () Bool)

(assert (=> b!4329270 (= e!2693931 0)))

(declare-fun b!4329272 () Bool)

(assert (=> b!4329272 (= e!2693931 (+ 1 (ListPrimitiveSize!327 (t!355538 l!13918))))))

(assert (= (and d!1272371 c!736617) b!4329270))

(assert (= (and d!1272371 (not c!736617)) b!4329272))

(declare-fun m!4923767 () Bool)

(assert (=> b!4329272 m!4923767))

(assert (=> b!4329259 d!1272371))

(declare-fun d!1272377 () Bool)

(declare-fun res!1774230 () Bool)

(declare-fun e!2693942 () Bool)

(assert (=> d!1272377 (=> res!1774230 e!2693942)))

(assert (=> d!1272377 (= res!1774230 (and ((_ is Cons!48502) l!13918) (= (_1!27092 (h!53971 l!13918)) otherK!9)))))

(assert (=> d!1272377 (= (containsKey!461 l!13918 otherK!9) e!2693942)))

(declare-fun b!4329283 () Bool)

(declare-fun e!2693943 () Bool)

(assert (=> b!4329283 (= e!2693942 e!2693943)))

(declare-fun res!1774231 () Bool)

(assert (=> b!4329283 (=> (not res!1774231) (not e!2693943))))

(assert (=> b!4329283 (= res!1774231 ((_ is Cons!48502) l!13918))))

(declare-fun b!4329284 () Bool)

(assert (=> b!4329284 (= e!2693943 (containsKey!461 (t!355538 l!13918) otherK!9))))

(assert (= (and d!1272377 (not res!1774230)) b!4329283))

(assert (= (and b!4329283 res!1774231) b!4329284))

(declare-fun m!4923771 () Bool)

(assert (=> b!4329284 m!4923771))

(assert (=> b!4329258 d!1272377))

(declare-fun d!1272381 () Bool)

(declare-fun res!1774240 () Bool)

(declare-fun e!2693952 () Bool)

(assert (=> d!1272381 (=> res!1774240 e!2693952)))

(assert (=> d!1272381 (= res!1774240 (not ((_ is Cons!48502) l!13918)))))

(assert (=> d!1272381 (= (noDuplicateKeys!315 l!13918) e!2693952)))

(declare-fun b!4329293 () Bool)

(declare-fun e!2693953 () Bool)

(assert (=> b!4329293 (= e!2693952 e!2693953)))

(declare-fun res!1774241 () Bool)

(assert (=> b!4329293 (=> (not res!1774241) (not e!2693953))))

(assert (=> b!4329293 (= res!1774241 (not (containsKey!461 (t!355538 l!13918) (_1!27092 (h!53971 l!13918)))))))

(declare-fun b!4329294 () Bool)

(assert (=> b!4329294 (= e!2693953 (noDuplicateKeys!315 (t!355538 l!13918)))))

(assert (= (and d!1272381 (not res!1774240)) b!4329293))

(assert (= (and b!4329293 res!1774241) b!4329294))

(declare-fun m!4923774 () Bool)

(assert (=> b!4329293 m!4923774))

(declare-fun m!4923777 () Bool)

(assert (=> b!4329294 m!4923777))

(assert (=> start!417074 d!1272381))

(declare-fun e!2693961 () Bool)

(declare-fun tp!1328160 () Bool)

(declare-fun b!4329306 () Bool)

(assert (=> b!4329306 (= e!2693961 (and tp_is_empty!24449 tp_is_empty!24451 tp!1328160))))

(assert (=> b!4329260 (= tp!1328154 e!2693961)))

(assert (= (and b!4329260 ((_ is Cons!48502) (t!355538 l!13918))) b!4329306))

(check-sat tp_is_empty!24451 (not b!4329272) (not b!4329284) (not b!4329293) (not b!4329306) tp_is_empty!24449 (not b!4329294))
(check-sat)
