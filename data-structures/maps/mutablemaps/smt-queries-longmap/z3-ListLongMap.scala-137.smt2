; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2460 () Bool)

(assert start!2460)

(declare-fun b_free!501 () Bool)

(declare-fun b_next!501 () Bool)

(assert (=> start!2460 (= b_free!501 (not b_next!501))))

(declare-fun tp!2593 () Bool)

(declare-fun b_and!941 () Bool)

(assert (=> start!2460 (= tp!2593 b_and!941)))

(declare-fun res!11692 () Bool)

(declare-fun e!9388 () Bool)

(assert (=> start!2460 (=> (not res!11692) (not e!9388))))

(declare-datatypes ((B!622 0))(
  ( (B!623 (val!409 Int)) )
))
(declare-datatypes ((tuple2!600 0))(
  ( (tuple2!601 (_1!300 (_ BitVec 64)) (_2!300 B!622)) )
))
(declare-datatypes ((List!475 0))(
  ( (Nil!472) (Cons!471 (h!1037 tuple2!600) (t!2907 List!475)) )
))
(declare-datatypes ((ListLongMap!431 0))(
  ( (ListLongMap!432 (toList!231 List!475)) )
))
(declare-fun lm!238 () ListLongMap!431)

(declare-fun p!262 () Int)

(declare-fun forall!117 (List!475 Int) Bool)

(assert (=> start!2460 (= res!11692 (forall!117 (toList!231 lm!238) p!262))))

(assert (=> start!2460 e!9388))

(declare-fun e!9387 () Bool)

(declare-fun inv!801 (ListLongMap!431) Bool)

(assert (=> start!2460 (and (inv!801 lm!238) e!9387)))

(assert (=> start!2460 tp!2593))

(assert (=> start!2460 true))

(declare-fun b!15445 () Bool)

(declare-datatypes ((List!476 0))(
  ( (Nil!473) (Cons!472 (h!1038 (_ BitVec 64)) (t!2908 List!476)) )
))
(declare-fun l!1612 () List!476)

(declare-fun ListPrimitiveSize!29 (List!476) Int)

(assert (=> b!15445 (= e!9388 (< (ListPrimitiveSize!29 l!1612) 0))))

(declare-fun b!15446 () Bool)

(declare-fun tp!2594 () Bool)

(assert (=> b!15446 (= e!9387 tp!2594)))

(assert (= (and start!2460 res!11692) b!15445))

(assert (= start!2460 b!15446))

(declare-fun m!10387 () Bool)

(assert (=> start!2460 m!10387))

(declare-fun m!10389 () Bool)

(assert (=> start!2460 m!10389))

(declare-fun m!10391 () Bool)

(assert (=> b!15445 m!10391))

(check-sat (not start!2460) b_and!941 (not b!15446) (not b!15445) (not b_next!501))
(check-sat b_and!941 (not b_next!501))
(get-model)

(declare-fun d!2663 () Bool)

(declare-fun res!11712 () Bool)

(declare-fun e!9411 () Bool)

(assert (=> d!2663 (=> res!11712 e!9411)))

(get-info :version)

(assert (=> d!2663 (= res!11712 ((_ is Nil!472) (toList!231 lm!238)))))

(assert (=> d!2663 (= (forall!117 (toList!231 lm!238) p!262) e!9411)))

(declare-fun b!15469 () Bool)

(declare-fun e!9412 () Bool)

(assert (=> b!15469 (= e!9411 e!9412)))

(declare-fun res!11713 () Bool)

(assert (=> b!15469 (=> (not res!11713) (not e!9412))))

(declare-fun dynLambda!107 (Int tuple2!600) Bool)

(assert (=> b!15469 (= res!11713 (dynLambda!107 p!262 (h!1037 (toList!231 lm!238))))))

(declare-fun b!15470 () Bool)

(assert (=> b!15470 (= e!9412 (forall!117 (t!2907 (toList!231 lm!238)) p!262))))

(assert (= (and d!2663 (not res!11712)) b!15469))

(assert (= (and b!15469 res!11713) b!15470))

(declare-fun b_lambda!1035 () Bool)

(assert (=> (not b_lambda!1035) (not b!15469)))

(declare-fun t!2916 () Bool)

(declare-fun tb!427 () Bool)

(assert (=> (and start!2460 (= p!262 p!262) t!2916) tb!427))

(declare-fun result!751 () Bool)

(assert (=> tb!427 (= result!751 true)))

(assert (=> b!15469 t!2916))

(declare-fun b_and!949 () Bool)

(assert (= b_and!941 (and (=> t!2916 result!751) b_and!949)))

(declare-fun m!10403 () Bool)

(assert (=> b!15469 m!10403))

(declare-fun m!10409 () Bool)

(assert (=> b!15470 m!10409))

(assert (=> start!2460 d!2663))

(declare-fun d!2669 () Bool)

(declare-fun isStrictlySorted!143 (List!475) Bool)

(assert (=> d!2669 (= (inv!801 lm!238) (isStrictlySorted!143 (toList!231 lm!238)))))

(declare-fun bs!677 () Bool)

(assert (= bs!677 d!2669))

(declare-fun m!10411 () Bool)

(assert (=> bs!677 m!10411))

(assert (=> start!2460 d!2669))

(declare-fun d!2671 () Bool)

(declare-fun lt!3775 () Int)

(assert (=> d!2671 (>= lt!3775 0)))

(declare-fun e!9419 () Int)

(assert (=> d!2671 (= lt!3775 e!9419)))

(declare-fun c!1458 () Bool)

(assert (=> d!2671 (= c!1458 ((_ is Nil!473) l!1612))))

(assert (=> d!2671 (= (ListPrimitiveSize!29 l!1612) lt!3775)))

(declare-fun b!15483 () Bool)

(assert (=> b!15483 (= e!9419 0)))

(declare-fun b!15484 () Bool)

(assert (=> b!15484 (= e!9419 (+ 1 (ListPrimitiveSize!29 (t!2908 l!1612))))))

(assert (= (and d!2671 c!1458) b!15483))

(assert (= (and d!2671 (not c!1458)) b!15484))

(declare-fun m!10417 () Bool)

(assert (=> b!15484 m!10417))

(assert (=> b!15445 d!2671))

(declare-fun b!15493 () Bool)

(declare-fun e!9424 () Bool)

(declare-fun tp_is_empty!787 () Bool)

(declare-fun tp!2603 () Bool)

(assert (=> b!15493 (= e!9424 (and tp_is_empty!787 tp!2603))))

(assert (=> b!15446 (= tp!2594 e!9424)))

(assert (= (and b!15446 ((_ is Cons!471) (toList!231 lm!238))) b!15493))

(declare-fun b_lambda!1037 () Bool)

(assert (= b_lambda!1035 (or (and start!2460 b_free!501) b_lambda!1037)))

(check-sat (not b_lambda!1037) (not d!2669) (not b!15484) (not b!15493) (not b_next!501) b_and!949 tp_is_empty!787 (not b!15470))
(check-sat b_and!949 (not b_next!501))
