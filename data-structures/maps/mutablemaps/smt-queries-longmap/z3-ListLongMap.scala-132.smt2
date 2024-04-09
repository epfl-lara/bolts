; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2340 () Bool)

(assert start!2340)

(declare-fun b_free!471 () Bool)

(declare-fun b_next!471 () Bool)

(assert (=> start!2340 (= b_free!471 (not b_next!471))))

(declare-fun tp!2477 () Bool)

(declare-fun b_and!881 () Bool)

(assert (=> start!2340 (= tp!2477 b_and!881)))

(declare-fun res!11560 () Bool)

(declare-fun e!9213 () Bool)

(assert (=> start!2340 (=> (not res!11560) (not e!9213))))

(declare-datatypes ((B!592 0))(
  ( (B!593 (val!394 Int)) )
))
(declare-datatypes ((tuple2!570 0))(
  ( (tuple2!571 (_1!285 (_ BitVec 64)) (_2!285 B!592)) )
))
(declare-datatypes ((List!448 0))(
  ( (Nil!445) (Cons!444 (h!1010 tuple2!570) (t!2850 List!448)) )
))
(declare-datatypes ((ListLongMap!401 0))(
  ( (ListLongMap!402 (toList!216 List!448)) )
))
(declare-fun lm!238 () ListLongMap!401)

(declare-fun p!262 () Int)

(declare-fun forall!105 (List!448 Int) Bool)

(assert (=> start!2340 (= res!11560 (forall!105 (toList!216 lm!238) p!262))))

(assert (=> start!2340 e!9213))

(declare-fun e!9214 () Bool)

(declare-fun inv!761 (ListLongMap!401) Bool)

(assert (=> start!2340 (and (inv!761 lm!238) e!9214)))

(assert (=> start!2340 tp!2477))

(assert (=> start!2340 true))

(declare-fun b!15222 () Bool)

(declare-fun res!11559 () Bool)

(assert (=> b!15222 (=> (not res!11559) (not e!9213))))

(declare-datatypes ((List!449 0))(
  ( (Nil!446) (Cons!445 (h!1011 (_ BitVec 64)) (t!2851 List!449)) )
))
(declare-fun l!1612 () List!449)

(declare-fun isEmpty!118 (List!449) Bool)

(assert (=> b!15222 (= res!11559 (not (isEmpty!118 l!1612)))))

(declare-fun b!15223 () Bool)

(assert (=> b!15223 (= e!9213 (= l!1612 Nil!446))))

(declare-fun b!15224 () Bool)

(declare-fun tp!2476 () Bool)

(assert (=> b!15224 (= e!9214 tp!2476)))

(assert (= (and start!2340 res!11560) b!15222))

(assert (= (and b!15222 res!11559) b!15223))

(assert (= start!2340 b!15224))

(declare-fun m!10123 () Bool)

(assert (=> start!2340 m!10123))

(declare-fun m!10125 () Bool)

(assert (=> start!2340 m!10125))

(declare-fun m!10127 () Bool)

(assert (=> b!15222 m!10127))

(check-sat (not b!15222) b_and!881 (not b_next!471) (not b!15224) (not start!2340))
(check-sat b_and!881 (not b_next!471))
(get-model)

(declare-fun d!2549 () Bool)

(declare-fun res!11579 () Bool)

(declare-fun e!9233 () Bool)

(assert (=> d!2549 (=> res!11579 e!9233)))

(get-info :version)

(assert (=> d!2549 (= res!11579 ((_ is Nil!445) (toList!216 lm!238)))))

(assert (=> d!2549 (= (forall!105 (toList!216 lm!238) p!262) e!9233)))

(declare-fun b!15246 () Bool)

(declare-fun e!9234 () Bool)

(assert (=> b!15246 (= e!9233 e!9234)))

(declare-fun res!11580 () Bool)

(assert (=> b!15246 (=> (not res!11580) (not e!9234))))

(declare-fun dynLambda!98 (Int tuple2!570) Bool)

(assert (=> b!15246 (= res!11580 (dynLambda!98 p!262 (h!1010 (toList!216 lm!238))))))

(declare-fun b!15247 () Bool)

(assert (=> b!15247 (= e!9234 (forall!105 (t!2850 (toList!216 lm!238)) p!262))))

(assert (= (and d!2549 (not res!11579)) b!15246))

(assert (= (and b!15246 res!11580) b!15247))

(declare-fun b_lambda!973 () Bool)

(assert (=> (not b_lambda!973) (not b!15246)))

(declare-fun t!2857 () Bool)

(declare-fun tb!395 () Bool)

(assert (=> (and start!2340 (= p!262 p!262) t!2857) tb!395))

(declare-fun result!701 () Bool)

(assert (=> tb!395 (= result!701 true)))

(assert (=> b!15246 t!2857))

(declare-fun b_and!887 () Bool)

(assert (= b_and!881 (and (=> t!2857 result!701) b_and!887)))

(declare-fun m!10139 () Bool)

(assert (=> b!15246 m!10139))

(declare-fun m!10141 () Bool)

(assert (=> b!15247 m!10141))

(assert (=> start!2340 d!2549))

(declare-fun d!2555 () Bool)

(declare-fun isStrictlySorted!135 (List!448) Bool)

(assert (=> d!2555 (= (inv!761 lm!238) (isStrictlySorted!135 (toList!216 lm!238)))))

(declare-fun bs!642 () Bool)

(assert (= bs!642 d!2555))

(declare-fun m!10145 () Bool)

(assert (=> bs!642 m!10145))

(assert (=> start!2340 d!2555))

(declare-fun d!2559 () Bool)

(assert (=> d!2559 (= (isEmpty!118 l!1612) ((_ is Nil!446) l!1612))))

(assert (=> b!15222 d!2559))

(declare-fun b!15261 () Bool)

(declare-fun e!9244 () Bool)

(declare-fun tp_is_empty!771 () Bool)

(declare-fun tp!2489 () Bool)

(assert (=> b!15261 (= e!9244 (and tp_is_empty!771 tp!2489))))

(assert (=> b!15224 (= tp!2476 e!9244)))

(assert (= (and b!15224 ((_ is Cons!444) (toList!216 lm!238))) b!15261))

(declare-fun b_lambda!979 () Bool)

(assert (= b_lambda!973 (or (and start!2340 b_free!471) b_lambda!979)))

(check-sat (not b_lambda!979) (not b!15261) (not d!2555) tp_is_empty!771 (not b!15247) (not b_next!471) b_and!887)
(check-sat b_and!887 (not b_next!471))
