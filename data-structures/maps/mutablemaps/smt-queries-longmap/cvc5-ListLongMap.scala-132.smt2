; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2338 () Bool)

(assert start!2338)

(declare-fun b_free!469 () Bool)

(declare-fun b_next!469 () Bool)

(assert (=> start!2338 (= b_free!469 (not b_next!469))))

(declare-fun tp!2471 () Bool)

(declare-fun b_and!879 () Bool)

(assert (=> start!2338 (= tp!2471 b_and!879)))

(declare-fun res!11553 () Bool)

(declare-fun e!9207 () Bool)

(assert (=> start!2338 (=> (not res!11553) (not e!9207))))

(declare-datatypes ((B!590 0))(
  ( (B!591 (val!393 Int)) )
))
(declare-datatypes ((tuple2!568 0))(
  ( (tuple2!569 (_1!284 (_ BitVec 64)) (_2!284 B!590)) )
))
(declare-datatypes ((List!446 0))(
  ( (Nil!443) (Cons!442 (h!1008 tuple2!568) (t!2848 List!446)) )
))
(declare-datatypes ((ListLongMap!399 0))(
  ( (ListLongMap!400 (toList!215 List!446)) )
))
(declare-fun lm!238 () ListLongMap!399)

(declare-fun p!262 () Int)

(declare-fun forall!104 (List!446 Int) Bool)

(assert (=> start!2338 (= res!11553 (forall!104 (toList!215 lm!238) p!262))))

(assert (=> start!2338 e!9207))

(declare-fun e!9208 () Bool)

(declare-fun inv!760 (ListLongMap!399) Bool)

(assert (=> start!2338 (and (inv!760 lm!238) e!9208)))

(assert (=> start!2338 tp!2471))

(assert (=> start!2338 true))

(declare-fun b!15213 () Bool)

(declare-fun res!11554 () Bool)

(assert (=> b!15213 (=> (not res!11554) (not e!9207))))

(declare-datatypes ((List!447 0))(
  ( (Nil!444) (Cons!443 (h!1009 (_ BitVec 64)) (t!2849 List!447)) )
))
(declare-fun l!1612 () List!447)

(declare-fun isEmpty!117 (List!447) Bool)

(assert (=> b!15213 (= res!11554 (not (isEmpty!117 l!1612)))))

(declare-fun b!15214 () Bool)

(assert (=> b!15214 (= e!9207 (= l!1612 Nil!444))))

(declare-fun b!15215 () Bool)

(declare-fun tp!2470 () Bool)

(assert (=> b!15215 (= e!9208 tp!2470)))

(assert (= (and start!2338 res!11553) b!15213))

(assert (= (and b!15213 res!11554) b!15214))

(assert (= start!2338 b!15215))

(declare-fun m!10117 () Bool)

(assert (=> start!2338 m!10117))

(declare-fun m!10119 () Bool)

(assert (=> start!2338 m!10119))

(declare-fun m!10121 () Bool)

(assert (=> b!15213 m!10121))

(push 1)

(assert (not b!15215))

(assert b_and!879)

(assert (not b!15213))

(assert (not b_next!469))

(assert (not start!2338))

(check-sat)

(pop 1)

(push 1)

(assert b_and!879)

(assert (not b_next!469))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2547 () Bool)

(declare-fun res!11571 () Bool)

(declare-fun e!9225 () Bool)

(assert (=> d!2547 (=> res!11571 e!9225)))

(assert (=> d!2547 (= res!11571 (is-Nil!443 (toList!215 lm!238)))))

(assert (=> d!2547 (= (forall!104 (toList!215 lm!238) p!262) e!9225)))

(declare-fun b!15238 () Bool)

(declare-fun e!9226 () Bool)

(assert (=> b!15238 (= e!9225 e!9226)))

(declare-fun res!11572 () Bool)

(assert (=> b!15238 (=> (not res!11572) (not e!9226))))

(declare-fun dynLambda!97 (Int tuple2!568) Bool)

(assert (=> b!15238 (= res!11572 (dynLambda!97 p!262 (h!1008 (toList!215 lm!238))))))

(declare-fun b!15239 () Bool)

(assert (=> b!15239 (= e!9226 (forall!104 (t!2848 (toList!215 lm!238)) p!262))))

(assert (= (and d!2547 (not res!11571)) b!15238))

(assert (= (and b!15238 res!11572) b!15239))

(declare-fun b_lambda!971 () Bool)

(assert (=> (not b_lambda!971) (not b!15238)))

(declare-fun t!2855 () Bool)

(declare-fun tb!393 () Bool)

(assert (=> (and start!2338 (= p!262 p!262) t!2855) tb!393))

(declare-fun result!699 () Bool)

(assert (=> tb!393 (= result!699 true)))

(assert (=> b!15238 t!2855))

(declare-fun b_and!885 () Bool)

(assert (= b_and!879 (and (=> t!2855 result!699) b_and!885)))

(declare-fun m!10135 () Bool)

(assert (=> b!15238 m!10135))

(declare-fun m!10137 () Bool)

(assert (=> b!15239 m!10137))

(assert (=> start!2338 d!2547))

(declare-fun d!2553 () Bool)

(declare-fun isStrictlySorted!134 (List!446) Bool)

(assert (=> d!2553 (= (inv!760 lm!238) (isStrictlySorted!134 (toList!215 lm!238)))))

(declare-fun bs!641 () Bool)

(assert (= bs!641 d!2553))

(declare-fun m!10143 () Bool)

(assert (=> bs!641 m!10143))

(assert (=> start!2338 d!2553))

(declare-fun d!2557 () Bool)

(assert (=> d!2557 (= (isEmpty!117 l!1612) (is-Nil!444 l!1612))))

(assert (=> b!15213 d!2557))

(declare-fun b!15256 () Bool)

(declare-fun e!9241 () Bool)

(declare-fun tp_is_empty!769 () Bool)

(declare-fun tp!2486 () Bool)

(assert (=> b!15256 (= e!9241 (and tp_is_empty!769 tp!2486))))

(assert (=> b!15215 (= tp!2470 e!9241)))

(assert (= (and b!15215 (is-Cons!442 (toList!215 lm!238))) b!15256))

(declare-fun b_lambda!977 () Bool)

(assert (= b_lambda!971 (or (and start!2338 b_free!469) b_lambda!977)))

(push 1)

(assert (not b!15239))

(assert (not b!15256))

(assert (not b_lambda!977))

(assert b_and!885)

(assert (not d!2553))

(assert (not b_next!469))

(assert tp_is_empty!769)

(check-sat)

(pop 1)

(push 1)

(assert b_and!885)

(assert (not b_next!469))

(check-sat)

(pop 1)

