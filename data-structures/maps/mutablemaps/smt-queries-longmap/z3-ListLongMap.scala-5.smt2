; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!162 () Bool)

(assert start!162)

(declare-fun b_free!27 () Bool)

(declare-fun b_next!27 () Bool)

(assert (=> start!162 (= b_free!27 (not b_next!27))))

(declare-fun tp!86 () Bool)

(declare-fun b_and!51 () Bool)

(assert (=> start!162 (= tp!86 b_and!51)))

(declare-fun res!4397 () Bool)

(declare-fun e!345 () Bool)

(assert (=> start!162 (=> (not res!4397) (not e!345))))

(declare-datatypes ((B!262 0))(
  ( (B!263 (val!13 Int)) )
))
(declare-datatypes ((tuple2!26 0))(
  ( (tuple2!27 (_1!13 (_ BitVec 64)) (_2!13 B!262)) )
))
(declare-datatypes ((List!22 0))(
  ( (Nil!19) (Cons!18 (h!584 tuple2!26) (t!2041 List!22)) )
))
(declare-datatypes ((ListLongMap!31 0))(
  ( (ListLongMap!32 (toList!31 List!22)) )
))
(declare-fun lm!258 () ListLongMap!31)

(declare-fun p!318 () Int)

(declare-fun forall!15 (List!22 Int) Bool)

(assert (=> start!162 (= res!4397 (forall!15 (toList!31 lm!258) p!318))))

(assert (=> start!162 e!345))

(declare-fun e!344 () Bool)

(declare-fun inv!48 (ListLongMap!31) Bool)

(assert (=> start!162 (and (inv!48 lm!258) e!344)))

(assert (=> start!162 tp!86))

(declare-fun b!1817 () Bool)

(declare-fun size!64 (List!22) Int)

(assert (=> b!1817 (= e!345 (< (size!64 (toList!31 lm!258)) 0))))

(declare-fun b!1818 () Bool)

(declare-fun tp!85 () Bool)

(assert (=> b!1818 (= e!344 tp!85)))

(assert (= (and start!162 res!4397) b!1817))

(assert (= start!162 b!1818))

(declare-fun m!495 () Bool)

(assert (=> start!162 m!495))

(declare-fun m!497 () Bool)

(assert (=> start!162 m!497))

(declare-fun m!499 () Bool)

(assert (=> b!1817 m!499))

(check-sat b_and!51 (not b_next!27) (not start!162) (not b!1818) (not b!1817))
(check-sat b_and!51 (not b_next!27))
(get-model)

(declare-fun d!167 () Bool)

(declare-fun res!4411 () Bool)

(declare-fun e!365 () Bool)

(assert (=> d!167 (=> res!4411 e!365)))

(get-info :version)

(assert (=> d!167 (= res!4411 ((_ is Nil!19) (toList!31 lm!258)))))

(assert (=> d!167 (= (forall!15 (toList!31 lm!258) p!318) e!365)))

(declare-fun b!1841 () Bool)

(declare-fun e!366 () Bool)

(assert (=> b!1841 (= e!365 e!366)))

(declare-fun res!4412 () Bool)

(assert (=> b!1841 (=> (not res!4412) (not e!366))))

(declare-fun dynLambda!6 (Int tuple2!26) Bool)

(assert (=> b!1841 (= res!4412 (dynLambda!6 p!318 (h!584 (toList!31 lm!258))))))

(declare-fun b!1842 () Bool)

(assert (=> b!1842 (= e!366 (forall!15 (t!2041 (toList!31 lm!258)) p!318))))

(assert (= (and d!167 (not res!4411)) b!1841))

(assert (= (and b!1841 res!4412) b!1842))

(declare-fun b_lambda!51 () Bool)

(assert (=> (not b_lambda!51) (not b!1841)))

(declare-fun t!2046 () Bool)

(declare-fun tb!21 () Bool)

(assert (=> (and start!162 (= p!318 p!318) t!2046) tb!21))

(declare-fun result!33 () Bool)

(assert (=> tb!21 (= result!33 true)))

(assert (=> b!1841 t!2046))

(declare-fun b_and!57 () Bool)

(assert (= b_and!51 (and (=> t!2046 result!33) b_and!57)))

(declare-fun m!511 () Bool)

(assert (=> b!1841 m!511))

(declare-fun m!515 () Bool)

(assert (=> b!1842 m!515))

(assert (=> start!162 d!167))

(declare-fun d!171 () Bool)

(declare-fun isStrictlySorted!4 (List!22) Bool)

(assert (=> d!171 (= (inv!48 lm!258) (isStrictlySorted!4 (toList!31 lm!258)))))

(declare-fun bs!45 () Bool)

(assert (= bs!45 d!171))

(declare-fun m!521 () Bool)

(assert (=> bs!45 m!521))

(assert (=> start!162 d!171))

(declare-fun d!177 () Bool)

(declare-fun lt!311 () Int)

(assert (=> d!177 (>= lt!311 0)))

(declare-fun e!378 () Int)

(assert (=> d!177 (= lt!311 e!378)))

(declare-fun c!92 () Bool)

(assert (=> d!177 (= c!92 ((_ is Nil!19) (toList!31 lm!258)))))

(assert (=> d!177 (= (size!64 (toList!31 lm!258)) lt!311)))

(declare-fun b!1858 () Bool)

(assert (=> b!1858 (= e!378 0)))

(declare-fun b!1859 () Bool)

(assert (=> b!1859 (= e!378 (+ 1 (size!64 (t!2041 (toList!31 lm!258)))))))

(assert (= (and d!177 c!92) b!1858))

(assert (= (and d!177 (not c!92)) b!1859))

(declare-fun m!527 () Bool)

(assert (=> b!1859 m!527))

(assert (=> b!1817 d!177))

(declare-fun b!1868 () Bool)

(declare-fun e!383 () Bool)

(declare-fun tp_is_empty!15 () Bool)

(declare-fun tp!98 () Bool)

(assert (=> b!1868 (= e!383 (and tp_is_empty!15 tp!98))))

(assert (=> b!1818 (= tp!85 e!383)))

(assert (= (and b!1818 ((_ is Cons!18) (toList!31 lm!258))) b!1868))

(declare-fun b_lambda!57 () Bool)

(assert (= b_lambda!51 (or (and start!162 b_free!27) b_lambda!57)))

(check-sat tp_is_empty!15 (not b!1842) (not b!1859) b_and!57 (not b_next!27) (not b!1868) (not b_lambda!57) (not d!171))
(check-sat b_and!57 (not b_next!27))
