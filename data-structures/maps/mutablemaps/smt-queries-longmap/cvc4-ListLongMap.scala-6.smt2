; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!188 () Bool)

(assert start!188)

(declare-fun b_free!35 () Bool)

(declare-fun b_next!35 () Bool)

(assert (=> start!188 (= b_free!35 (not b_next!35))))

(declare-fun tp!119 () Bool)

(declare-fun b_and!65 () Bool)

(assert (=> start!188 (= tp!119 b_and!65)))

(declare-fun res!4444 () Bool)

(declare-fun e!404 () Bool)

(assert (=> start!188 (=> (not res!4444) (not e!404))))

(declare-datatypes ((B!270 0))(
  ( (B!271 (val!17 Int)) )
))
(declare-datatypes ((tuple2!34 0))(
  ( (tuple2!35 (_1!17 (_ BitVec 64)) (_2!17 B!270)) )
))
(declare-datatypes ((List!26 0))(
  ( (Nil!23) (Cons!22 (h!588 tuple2!34) (t!2051 List!26)) )
))
(declare-datatypes ((ListLongMap!39 0))(
  ( (ListLongMap!40 (toList!35 List!26)) )
))
(declare-fun lm!258 () ListLongMap!39)

(declare-fun p!318 () Int)

(declare-fun forall!19 (List!26 Int) Bool)

(assert (=> start!188 (= res!4444 (forall!19 (toList!35 lm!258) p!318))))

(assert (=> start!188 e!404))

(declare-fun e!405 () Bool)

(declare-fun inv!57 (ListLongMap!39) Bool)

(assert (=> start!188 (and (inv!57 lm!258) e!405)))

(assert (=> start!188 tp!119))

(assert (=> start!188 true))

(declare-fun b!1911 () Bool)

(declare-fun tp!118 () Bool)

(assert (=> b!1911 (= e!405 tp!118)))

(declare-fun b!1909 () Bool)

(declare-fun res!4443 () Bool)

(assert (=> b!1909 (=> (not res!4443) (not e!404))))

(declare-fun k!394 () (_ BitVec 64))

(declare-fun head!748 (List!26) tuple2!34)

(assert (=> b!1909 (= res!4443 (not (= (_1!17 (head!748 (toList!35 lm!258))) k!394)))))

(declare-fun b!1910 () Bool)

(declare-fun tail!34 (ListLongMap!39) ListLongMap!39)

(assert (=> b!1910 (= e!404 (not (forall!19 (toList!35 (tail!34 lm!258)) p!318)))))

(declare-fun b!1908 () Bool)

(declare-fun res!4445 () Bool)

(assert (=> b!1908 (=> (not res!4445) (not e!404))))

(declare-fun isEmpty!21 (ListLongMap!39) Bool)

(assert (=> b!1908 (= res!4445 (not (isEmpty!21 lm!258)))))

(assert (= (and start!188 res!4444) b!1908))

(assert (= (and b!1908 res!4445) b!1909))

(assert (= (and b!1909 res!4443) b!1910))

(assert (= start!188 b!1911))

(declare-fun m!555 () Bool)

(assert (=> start!188 m!555))

(declare-fun m!557 () Bool)

(assert (=> start!188 m!557))

(declare-fun m!559 () Bool)

(assert (=> b!1909 m!559))

(declare-fun m!561 () Bool)

(assert (=> b!1910 m!561))

(declare-fun m!563 () Bool)

(assert (=> b!1910 m!563))

(declare-fun m!565 () Bool)

(assert (=> b!1908 m!565))

(push 1)

(assert (not b!1909))

(assert (not b_next!35))

(assert (not start!188))

(assert (not b!1911))

(assert (not b!1910))

(assert b_and!65)

(assert (not b!1908))

(check-sat)

(pop 1)

(push 1)

(assert b_and!65)

(assert (not b_next!35))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!183 () Bool)

(assert (=> d!183 (= (head!748 (toList!35 lm!258)) (h!588 (toList!35 lm!258)))))

(assert (=> b!1909 d!183))

(declare-fun d!187 () Bool)

(declare-fun isEmpty!22 (List!26) Bool)

(assert (=> d!187 (= (isEmpty!21 lm!258) (isEmpty!22 (toList!35 lm!258)))))

(declare-fun bs!51 () Bool)

(assert (= bs!51 d!187))

(declare-fun m!567 () Bool)

(assert (=> bs!51 m!567))

(assert (=> b!1908 d!187))

(declare-fun d!191 () Bool)

(declare-fun res!4462 () Bool)

(declare-fun e!422 () Bool)

(assert (=> d!191 (=> res!4462 e!422)))

(assert (=> d!191 (= res!4462 (is-Nil!23 (toList!35 lm!258)))))

(assert (=> d!191 (= (forall!19 (toList!35 lm!258) p!318) e!422)))

(declare-fun b!1928 () Bool)

(declare-fun e!423 () Bool)

(assert (=> b!1928 (= e!422 e!423)))

(declare-fun res!4463 () Bool)

(assert (=> b!1928 (=> (not res!4463) (not e!423))))

(declare-fun dynLambda!10 (Int tuple2!34) Bool)

(assert (=> b!1928 (= res!4463 (dynLambda!10 p!318 (h!588 (toList!35 lm!258))))))

(declare-fun b!1929 () Bool)

(assert (=> b!1929 (= e!423 (forall!19 (t!2051 (toList!35 lm!258)) p!318))))

(assert (= (and d!191 (not res!4462)) b!1928))

(assert (= (and b!1928 res!4463) b!1929))

(declare-fun b_lambda!65 () Bool)

(assert (=> (not b_lambda!65) (not b!1928)))

(declare-fun t!2057 () Bool)

(declare-fun tb!29 () Bool)

(assert (=> (and start!188 (= p!318 p!318) t!2057) tb!29))

(declare-fun result!47 () Bool)

(assert (=> tb!29 (= result!47 true)))

(assert (=> b!1928 t!2057))

(declare-fun b_and!71 () Bool)

(assert (= b_and!65 (and (=> t!2057 result!47) b_and!71)))

(declare-fun m!577 () Bool)

(assert (=> b!1928 m!577))

(declare-fun m!579 () Bool)

(assert (=> b!1929 m!579))

(assert (=> start!188 d!191))

(declare-fun d!197 () Bool)

(declare-fun isStrictlySorted!7 (List!26) Bool)

(assert (=> d!197 (= (inv!57 lm!258) (isStrictlySorted!7 (toList!35 lm!258)))))

(declare-fun bs!54 () Bool)

(assert (= bs!54 d!197))

(declare-fun m!593 () Bool)

(assert (=> bs!54 m!593))

(assert (=> start!188 d!197))

(declare-fun d!207 () Bool)

(declare-fun res!4468 () Bool)

(declare-fun e!428 () Bool)

(assert (=> d!207 (=> res!4468 e!428)))

(assert (=> d!207 (= res!4468 (is-Nil!23 (toList!35 (tail!34 lm!258))))))

(assert (=> d!207 (= (forall!19 (toList!35 (tail!34 lm!258)) p!318) e!428)))

(declare-fun b!1934 () Bool)

(declare-fun e!429 () Bool)

(assert (=> b!1934 (= e!428 e!429)))

(declare-fun res!4469 () Bool)

(assert (=> b!1934 (=> (not res!4469) (not e!429))))

(assert (=> b!1934 (= res!4469 (dynLambda!10 p!318 (h!588 (toList!35 (tail!34 lm!258)))))))

(declare-fun b!1935 () Bool)

(assert (=> b!1935 (= e!429 (forall!19 (t!2051 (toList!35 (tail!34 lm!258))) p!318))))

(assert (= (and d!207 (not res!4468)) b!1934))

(assert (= (and b!1934 res!4469) b!1935))

(declare-fun b_lambda!71 () Bool)

(assert (=> (not b_lambda!71) (not b!1934)))

(declare-fun t!2063 () Bool)

(declare-fun tb!35 () Bool)

(assert (=> (and start!188 (= p!318 p!318) t!2063) tb!35))

(declare-fun result!53 () Bool)

(assert (=> tb!35 (= result!53 true)))

(assert (=> b!1934 t!2063))

(declare-fun b_and!77 () Bool)

(assert (= b_and!71 (and (=> t!2063 result!53) b_and!77)))

(declare-fun m!595 () Bool)

(assert (=> b!1934 m!595))

(declare-fun m!599 () Bool)

(assert (=> b!1935 m!599))

(assert (=> b!1910 d!207))

(declare-fun d!211 () Bool)

(declare-fun tail!37 (List!26) List!26)

(assert (=> d!211 (= (tail!34 lm!258) (ListLongMap!40 (tail!37 (toList!35 lm!258))))))

(declare-fun bs!57 () Bool)

(assert (= bs!57 d!211))

(declare-fun m!603 () Bool)

(assert (=> bs!57 m!603))

(assert (=> b!1910 d!211))

(declare-fun b!1944 () Bool)

(declare-fun e!434 () Bool)

(declare-fun tp_is_empty!19 () Bool)

(declare-fun tp!124 () Bool)

(assert (=> b!1944 (= e!434 (and tp_is_empty!19 tp!124))))

(assert (=> b!1911 (= tp!118 e!434)))

(assert (= (and b!1911 (is-Cons!22 (toList!35 lm!258))) b!1944))

(declare-fun b_lambda!73 () Bool)

(assert (= b_lambda!71 (or (and start!188 b_free!35) b_lambda!73)))

(declare-fun b_lambda!75 () Bool)

(assert (= b_lambda!65 (or (and start!188 b_free!35) b_lambda!75)))

(push 1)

(assert (not d!187))

(assert (not b_lambda!73))

(assert (not b_next!35))

(assert (not d!197))

(assert (not b!1929))

(assert (not b_lambda!75))

(assert (not d!211))

(assert (not b!1935))

(assert b_and!77)

(assert tp_is_empty!19)

(assert (not b!1944))

(check-sat)

(pop 1)

(push 1)

(assert b_and!77)

(assert (not b_next!35))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!237 () Bool)

(declare-fun res!4492 () Bool)

(declare-fun e!462 () Bool)

(assert (=> d!237 (=> res!4492 e!462)))

(assert (=> d!237 (= res!4492 (or (is-Nil!23 (toList!35 lm!258)) (is-Nil!23 (t!2051 (toList!35 lm!258)))))))

(assert (=> d!237 (= (isStrictlySorted!7 (toList!35 lm!258)) e!462)))

(declare-fun b!1974 () Bool)

(declare-fun e!463 () Bool)

(assert (=> b!1974 (= e!462 e!463)))

(declare-fun res!4493 () Bool)

(assert (=> b!1974 (=> (not res!4493) (not e!463))))

