; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1350 () Bool)

(assert start!1350)

(declare-fun b_free!415 () Bool)

(declare-fun b_next!415 () Bool)

(assert (=> start!1350 (= b_free!415 (not b_next!415))))

(declare-fun tp!1676 () Bool)

(declare-fun b_and!621 () Bool)

(assert (=> start!1350 (= tp!1676 b_and!621)))

(declare-fun b!10780 () Bool)

(declare-fun e!6296 () Bool)

(declare-fun tp_is_empty!529 () Bool)

(declare-fun tp!1674 () Bool)

(assert (=> b!10780 (= e!6296 (and tp_is_empty!529 tp!1674))))

(declare-fun res!9097 () Bool)

(declare-fun e!6294 () Bool)

(assert (=> start!1350 (=> (not res!9097) (not e!6294))))

(declare-datatypes ((B!356 0))(
  ( (B!357 (val!273 Int)) )
))
(declare-datatypes ((tuple2!328 0))(
  ( (tuple2!329 (_1!164 (_ BitVec 64)) (_2!164 B!356)) )
))
(declare-datatypes ((List!320 0))(
  ( (Nil!317) (Cons!316 (h!882 tuple2!328) (t!2515 List!320)) )
))
(declare-datatypes ((ListLongMap!309 0))(
  ( (ListLongMap!310 (toList!170 List!320)) )
))
(declare-fun lm!227 () ListLongMap!309)

(declare-fun p!216 () Int)

(declare-fun forall!44 (List!320 Int) Bool)

(assert (=> start!1350 (= res!9097 (forall!44 (toList!170 lm!227) p!216))))

(assert (=> start!1350 e!6294))

(declare-fun e!6295 () Bool)

(declare-fun inv!518 (ListLongMap!309) Bool)

(assert (=> start!1350 (and (inv!518 lm!227) e!6295)))

(assert (=> start!1350 tp!1676))

(assert (=> start!1350 e!6296))

(declare-fun b!10781 () Bool)

(declare-fun res!9096 () Bool)

(assert (=> b!10781 (=> (not res!9096) (not e!6294))))

(declare-fun kvs!4 () List!320)

(declare-fun isEmpty!54 (List!320) Bool)

(assert (=> b!10781 (= res!9096 (not (isEmpty!54 kvs!4)))))

(declare-fun b!10782 () Bool)

(declare-fun tp!1675 () Bool)

(assert (=> b!10782 (= e!6295 tp!1675)))

(declare-fun b!10783 () Bool)

(assert (=> b!10783 (= e!6294 (not (not (= kvs!4 Nil!317))))))

(declare-fun lt!2656 () ListLongMap!309)

(declare-fun lt!2657 () tuple2!328)

(declare-fun +!17 (ListLongMap!309 tuple2!328) ListLongMap!309)

(assert (=> b!10783 (= lt!2656 (+!17 lm!227 lt!2657))))

(assert (=> b!10783 (forall!44 (toList!170 (+!17 lm!227 (tuple2!329 (_1!164 lt!2657) (_2!164 lt!2657)))) p!216)))

(declare-datatypes ((Unit!221 0))(
  ( (Unit!222) )
))
(declare-fun lt!2658 () Unit!221)

(declare-fun addValidProp!5 (ListLongMap!309 Int (_ BitVec 64) B!356) Unit!221)

(assert (=> b!10783 (= lt!2658 (addValidProp!5 lm!227 p!216 (_1!164 lt!2657) (_2!164 lt!2657)))))

(declare-fun head!761 (List!320) tuple2!328)

(assert (=> b!10783 (= lt!2657 (head!761 kvs!4))))

(declare-fun b!10784 () Bool)

(declare-fun res!9095 () Bool)

(assert (=> b!10784 (=> (not res!9095) (not e!6294))))

(assert (=> b!10784 (= res!9095 (forall!44 kvs!4 p!216))))

(assert (= (and start!1350 res!9097) b!10784))

(assert (= (and b!10784 res!9095) b!10781))

(assert (= (and b!10781 res!9096) b!10783))

(assert (= start!1350 b!10782))

(assert (= (and start!1350 (is-Cons!316 kvs!4)) b!10780))

(declare-fun m!6995 () Bool)

(assert (=> start!1350 m!6995))

(declare-fun m!6997 () Bool)

(assert (=> start!1350 m!6997))

(declare-fun m!6999 () Bool)

(assert (=> b!10781 m!6999))

(declare-fun m!7001 () Bool)

(assert (=> b!10783 m!7001))

(declare-fun m!7003 () Bool)

(assert (=> b!10783 m!7003))

(declare-fun m!7005 () Bool)

(assert (=> b!10783 m!7005))

(declare-fun m!7007 () Bool)

(assert (=> b!10783 m!7007))

(declare-fun m!7009 () Bool)

(assert (=> b!10783 m!7009))

(declare-fun m!7011 () Bool)

(assert (=> b!10784 m!7011))

(push 1)

(assert (not b!10784))

(assert tp_is_empty!529)

(assert (not b!10780))

(assert (not b!10781))

(assert (not start!1350))

(assert b_and!621)

(assert (not b!10782))

(assert (not b!10783))

(assert (not b_next!415))

(check-sat)

(pop 1)

(push 1)

(assert b_and!621)

(assert (not b_next!415))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1223 () Bool)

(assert (=> d!1223 (forall!44 (toList!170 (+!17 lm!227 (tuple2!329 (_1!164 lt!2657) (_2!164 lt!2657)))) p!216)))

(declare-fun lt!2679 () Unit!221)

(declare-fun choose!153 (ListLongMap!309 Int (_ BitVec 64) B!356) Unit!221)

(assert (=> d!1223 (= lt!2679 (choose!153 lm!227 p!216 (_1!164 lt!2657) (_2!164 lt!2657)))))

(declare-fun e!6335 () Bool)

(assert (=> d!1223 e!6335))

(declare-fun res!9136 () Bool)

(assert (=> d!1223 (=> (not res!9136) (not e!6335))))

(assert (=> d!1223 (= res!9136 (forall!44 (toList!170 lm!227) p!216))))

(assert (=> d!1223 (= (addValidProp!5 lm!227 p!216 (_1!164 lt!2657) (_2!164 lt!2657)) lt!2679)))

(declare-fun b!10836 () Bool)

(declare-fun dynLambda!60 (Int tuple2!328) Bool)

(assert (=> b!10836 (= e!6335 (dynLambda!60 p!216 (tuple2!329 (_1!164 lt!2657) (_2!164 lt!2657))))))

(assert (= (and d!1223 res!9136) b!10836))

(declare-fun b_lambda!465 () Bool)

(assert (=> (not b_lambda!465) (not b!10836)))

(declare-fun t!2529 () Bool)

(declare-fun tb!205 () Bool)

(assert (=> (and start!1350 (= p!216 p!216) t!2529) tb!205))

(declare-fun result!349 () Bool)

(assert (=> tb!205 (= result!349 true)))

(assert (=> b!10836 t!2529))

(declare-fun b_and!637 () Bool)

(assert (= b_and!621 (and (=> t!2529 result!349) b_and!637)))

(assert (=> d!1223 m!7001))

(assert (=> d!1223 m!7003))

(declare-fun m!7073 () Bool)

(assert (=> d!1223 m!7073))

(assert (=> d!1223 m!6995))

(declare-fun m!7075 () Bool)

(assert (=> b!10836 m!7075))

(assert (=> b!10783 d!1223))

(declare-fun d!1241 () Bool)

(declare-fun e!6357 () Bool)

(assert (=> d!1241 e!6357))

(declare-fun res!9163 () Bool)

(assert (=> d!1241 (=> (not res!9163) (not e!6357))))

(declare-fun lt!2723 () ListLongMap!309)

(declare-fun contains!142 (ListLongMap!309 (_ BitVec 64)) Bool)

(assert (=> d!1241 (= res!9163 (contains!142 lt!2723 (_1!164 (tuple2!329 (_1!164 lt!2657) (_2!164 lt!2657)))))))

(declare-fun lt!2722 () List!320)

(assert (=> d!1241 (= lt!2723 (ListLongMap!310 lt!2722))))

(declare-fun lt!2725 () Unit!221)

(declare-fun lt!2724 () Unit!221)

(assert (=> d!1241 (= lt!2725 lt!2724)))

(declare-datatypes ((Option!28 0))(
  ( (Some!27 (v!1342 B!356)) (None!26) )
))
(declare-fun getValueByKey!22 (List!320 (_ BitVec 64)) Option!28)

(assert (=> d!1241 (= (getValueByKey!22 lt!2722 (_1!164 (tuple2!329 (_1!164 lt!2657) (_2!164 lt!2657)))) (Some!27 (_2!164 (tuple2!329 (_1!164 lt!2657) (_2!164 lt!2657)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!6 (List!320 (_ BitVec 64) B!356) Unit!221)

(assert (=> d!1241 (= lt!2724 (lemmaContainsTupThenGetReturnValue!6 lt!2722 (_1!164 (tuple2!329 (_1!164 lt!2657) (_2!164 lt!2657))) (_2!164 (tuple2!329 (_1!164 lt!2657) (_2!164 lt!2657)))))))

(declare-fun 