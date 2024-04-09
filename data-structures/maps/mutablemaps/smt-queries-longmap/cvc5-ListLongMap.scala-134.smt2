; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2368 () Bool)

(assert start!2368)

(declare-fun b_free!481 () Bool)

(declare-fun b_next!481 () Bool)

(assert (=> start!2368 (= b_free!481 (not b_next!481))))

(declare-fun tp!2516 () Bool)

(declare-fun b_and!897 () Bool)

(assert (=> start!2368 (= tp!2516 b_and!897)))

(declare-fun res!11590 () Bool)

(declare-fun e!9261 () Bool)

(assert (=> start!2368 (=> (not res!11590) (not e!9261))))

(declare-datatypes ((B!602 0))(
  ( (B!603 (val!399 Int)) )
))
(declare-datatypes ((tuple2!580 0))(
  ( (tuple2!581 (_1!290 (_ BitVec 64)) (_2!290 B!602)) )
))
(declare-datatypes ((List!455 0))(
  ( (Nil!452) (Cons!451 (h!1017 tuple2!580) (t!2863 List!455)) )
))
(declare-datatypes ((ListLongMap!411 0))(
  ( (ListLongMap!412 (toList!221 List!455)) )
))
(declare-fun lm!238 () ListLongMap!411)

(declare-fun p!262 () Int)

(declare-fun forall!107 (List!455 Int) Bool)

(assert (=> start!2368 (= res!11590 (forall!107 (toList!221 lm!238) p!262))))

(assert (=> start!2368 e!9261))

(declare-fun e!9262 () Bool)

(declare-fun inv!776 (ListLongMap!411) Bool)

(assert (=> start!2368 (and (inv!776 lm!238) e!9262)))

(assert (=> start!2368 tp!2516))

(assert (=> start!2368 true))

(declare-fun b!15282 () Bool)

(declare-fun res!11589 () Bool)

(assert (=> b!15282 (=> (not res!11589) (not e!9261))))

(declare-datatypes ((List!456 0))(
  ( (Nil!453) (Cons!452 (h!1018 (_ BitVec 64)) (t!2864 List!456)) )
))
(declare-fun l!1612 () List!456)

(declare-fun isEmpty!120 (List!456) Bool)

(assert (=> b!15282 (= res!11589 (not (isEmpty!120 l!1612)))))

(declare-fun b!15283 () Bool)

(assert (=> b!15283 (= e!9261 (not (not (= l!1612 Nil!453))))))

(declare-fun lt!3683 () (_ BitVec 64))

(declare-fun -!9 (ListLongMap!411 (_ BitVec 64)) ListLongMap!411)

(assert (=> b!15283 (forall!107 (toList!221 (-!9 lm!238 lt!3683)) p!262)))

(declare-datatypes ((Unit!284 0))(
  ( (Unit!285) )
))
(declare-fun lt!3684 () Unit!284)

(declare-fun removeValidProp!2 (ListLongMap!411 Int (_ BitVec 64)) Unit!284)

(assert (=> b!15283 (= lt!3684 (removeValidProp!2 lm!238 p!262 lt!3683))))

(declare-fun head!800 (List!456) (_ BitVec 64))

(assert (=> b!15283 (= lt!3683 (head!800 l!1612))))

(declare-fun b!15284 () Bool)

(declare-fun tp!2515 () Bool)

(assert (=> b!15284 (= e!9262 tp!2515)))

(assert (= (and start!2368 res!11590) b!15282))

(assert (= (and b!15282 res!11589) b!15283))

(assert (= start!2368 b!15284))

(declare-fun m!10159 () Bool)

(assert (=> start!2368 m!10159))

(declare-fun m!10161 () Bool)

(assert (=> start!2368 m!10161))

(declare-fun m!10163 () Bool)

(assert (=> b!15282 m!10163))

(declare-fun m!10165 () Bool)

(assert (=> b!15283 m!10165))

(declare-fun m!10167 () Bool)

(assert (=> b!15283 m!10167))

(declare-fun m!10169 () Bool)

(assert (=> b!15283 m!10169))

(declare-fun m!10171 () Bool)

(assert (=> b!15283 m!10171))

(push 1)

(assert b_and!897)

(assert (not b_next!481))

(assert (not b!15284))

(assert (not b!15282))

(assert (not start!2368))

(assert (not b!15283))

(check-sat)

(pop 1)

(push 1)

(assert b_and!897)

(assert (not b_next!481))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2569 () Bool)

(declare-fun res!11607 () Bool)

(declare-fun e!9279 () Bool)

(assert (=> d!2569 (=> res!11607 e!9279)))

(assert (=> d!2569 (= res!11607 (is-Nil!452 (toList!221 lm!238)))))

(assert (=> d!2569 (= (forall!107 (toList!221 lm!238) p!262) e!9279)))

(declare-fun b!15307 () Bool)

(declare-fun e!9280 () Bool)

(assert (=> b!15307 (= e!9279 e!9280)))

(declare-fun res!11608 () Bool)

(assert (=> b!15307 (=> (not res!11608) (not e!9280))))

(declare-fun dynLambda!100 (Int tuple2!580) Bool)

(assert (=> b!15307 (= res!11608 (dynLambda!100 p!262 (h!1017 (toList!221 lm!238))))))

(declare-fun b!15308 () Bool)

(assert (=> b!15308 (= e!9280 (forall!107 (t!2863 (toList!221 lm!238)) p!262))))

(assert (= (and d!2569 (not res!11607)) b!15307))

(assert (= (and b!15307 res!11608) b!15308))

(declare-fun b_lambda!983 () Bool)

(assert (=> (not b_lambda!983) (not b!15307)))

(declare-fun t!2870 () Bool)

(declare-fun tb!399 () Bool)

(assert (=> (and start!2368 (= p!262 p!262) t!2870) tb!399))

(declare-fun result!711 () Bool)

(assert (=> tb!399 (= result!711 true)))

(assert (=> b!15307 t!2870))

(declare-fun b_and!903 () Bool)

(assert (= b_and!897 (and (=> t!2870 result!711) b_and!903)))

(declare-fun m!10201 () Bool)

(assert (=> b!15307 m!10201))

(declare-fun m!10203 () Bool)

(assert (=> b!15308 m!10203))

(assert (=> start!2368 d!2569))

(declare-fun d!2575 () Bool)

(declare-fun isStrictlySorted!136 (List!455) Bool)

(assert (=> d!2575 (= (inv!776 lm!238) (isStrictlySorted!136 (toList!221 lm!238)))))

(declare-fun bs!650 () Bool)

(assert (= bs!650 d!2575))

(declare-fun m!10205 () Bool)

(assert (=> bs!650 m!10205))

(assert (=> start!2368 d!2575))

(declare-fun d!2577 () Bool)

(declare-fun res!11621 () Bool)

(declare-fun e!9293 () Bool)

(assert (=> d!2577 (=> res!11621 e!9293)))

(assert (=> d!2577 (= res!11621 (is-Nil!452 (toList!221 (-!9 lm!238 lt!3683))))))

(assert (=> d!2577 (= (forall!107 (toList!221 (-!9 lm!238 lt!3683)) p!262) e!9293)))

(declare-fun b!15321 () Bool)

(declare-fun e!9294 () Bool)

(assert (=> b!15321 (= e!9293 e!9294)))

(declare-fun res!11622 () Bool)

(assert (=> b!15321 (=> (not res!11622) (not e!9294))))

(assert (=> b!15321 (= res!11622 (dynLambda!100 p!262 (h!1017 (toList!221 (-!9 lm!238 lt!3683)))))))

(declare-fun b!15322 () Bool)

(assert (=> b!15322 (= e!9294 (forall!107 (t!2863 (toList!221 (-!9 lm!238 lt!3683))) p!262))))

(assert (= (and d!2577 (not res!11621)) b!15321))

(assert (= (and b!15321 res!11622) b!15322))

(declare-fun b_lambda!989 () Bool)

(assert (=> (not b_lambda!989) (not b!15321)))

(declare-fun t!2874 () Bool)

(declare-fun tb!403 () Bool)

(assert (=> (and start!2368 (= p!262 p!262) t!2874) tb!403))

(declare-fun result!715 () Bool)

(assert (=> tb!403 (= result!715 true)))

(assert (=> b!15321 t!2874))

(declare-fun b_and!907 () Bool)

(assert (= b_and!903 (and (=> t!2874 result!715) b_and!907)))

(declare-fun m!10211 () Bool)

(assert (=> b!15321 m!10211))

(declare-fun m!10213 () Bool)

(assert (=> b!15322 m!10213))

(assert (=> b!15283 d!2577))

(declare-fun d!2581 () Bool)

(declare-fun lt!3699 () ListLongMap!411)

(declare-fun contains!181 (ListLongMap!411 (_ BitVec 64)) Bool)

(assert (=> d!2581 (not (contains!181 lt!3699 lt!3683))))

(declare-fun removeStrictlySorted!4 (List!455 (_ BitVec 64)) List!455)

(assert (=> d!2581 (= lt!3699 (ListLongMap!412 (removeStrictlySorted!4 (toList!221 lm!238) lt!3683)))))

(assert (=> d!2581 (= (-!9 lm!238 lt!3683) lt!3699)))

(declare-fun bs!651 () Bool)

(assert (= bs!651 d!2581))

(declare-fun m!10219 () Bool)

(assert (=> bs!651 m!10219))

(declare-fun m!10221 () Bool)

(assert (=> bs!651 m!10221))

(assert (=> b!15283 d!2581))

(declare-fun d!2585 () Bool)

(assert (=> d!2585 (forall!107 (toList!221 (-!9 lm!238 lt!3683)) p!262)))

(declare-fun lt!3708 () Unit!284)

(declare-fun choose!169 (ListLongMap!411 Int (_ BitVec 64)) Unit!284)

(assert (=> d!2585 (= lt!3708 (choose!169 lm!238 p!262 lt!3683))))

(assert (=> d!2585 (forall!107 (toList!221 lm!238) p!262)))

(assert (=> d!2585 (= (removeValidProp!2 lm!238 p!262 lt!3683) lt!3708)))

(declare-fun bs!654 () Bool)

(assert (= bs!654 d!2585))

(assert (=> bs!654 m!10165))

(assert (=> bs!654 m!10167))

(declare-fun m!10231 () Bool)

(assert (=> bs!654 m!10231))

(assert (=> bs!654 m!10159))

(assert (=> b!15283 d!2585))

(declare-fun d!2591 () Bool)

(assert (=> d!2591 (= (head!800 l!1612) (h!1018 l!1612))))

(assert (=> b!15283 d!2591))

(declare-fun d!2593 () Bool)

(assert (=> d!2593 (= (isEmpty!120 l!1612) (is-Nil!453 l!1612))))

(assert (=> b!15282 d!2593))

(declare-fun b!15327 () Bool)

(declare-fun e!9297 () Bool)

(declare-fun tp_is_empty!775 () Bool)

(declare-fun tp!2531 () Bool)

(assert (=> b!15327 (= e!9297 (and tp_is_empty!775 tp!2531))))

(assert (=> b!15284 (= tp!2515 e!9297)))

(assert (= (and b!15284 (is-Cons!451 (toList!221 lm!238))) b!15327))

(declare-fun b_lambda!991 () Bool)

(assert (= b_lambda!989 (or (and start!2368 b_free!481) b_lambda!991)))

(declare-fun b_lambda!993 () Bool)

(assert (= b_lambda!983 (or (and start!2368 b_free!481) b_lambda!993)))

(push 1)

(assert (not d!2581))

(assert (not d!2585))

(assert (not b!15322))

(assert (not b_next!481))

(assert (not b!15327))

(assert (not d!2575))

(assert (not b_lambda!993))

(assert (not b_lambda!991))

(assert b_and!907)

(assert tp_is_empty!775)

(assert (not b!15308))

(check-sat)

(pop 1)

(push 1)

(assert b_and!907)

(assert (not b_next!481))

(check-sat)

(pop 1)

