; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1402 () Bool)

(assert start!1402)

(declare-fun b_free!431 () Bool)

(declare-fun b_next!431 () Bool)

(assert (=> start!1402 (= b_free!431 (not b_next!431))))

(declare-fun tp!1759 () Bool)

(declare-fun b_and!661 () Bool)

(assert (=> start!1402 (= tp!1759 b_and!661)))

(declare-fun b!10985 () Bool)

(declare-fun res!9231 () Bool)

(declare-fun e!6440 () Bool)

(assert (=> b!10985 (=> (not res!9231) (not e!6440))))

(declare-datatypes ((B!372 0))(
  ( (B!373 (val!281 Int)) )
))
(declare-datatypes ((tuple2!344 0))(
  ( (tuple2!345 (_1!172 (_ BitVec 64)) (_2!172 B!372)) )
))
(declare-datatypes ((List!328 0))(
  ( (Nil!325) (Cons!324 (h!890 tuple2!344) (t!2547 List!328)) )
))
(declare-fun kvs!4 () List!328)

(declare-fun p!216 () Int)

(declare-fun forall!52 (List!328 Int) Bool)

(assert (=> b!10985 (= res!9231 (forall!52 kvs!4 p!216))))

(declare-fun b!10988 () Bool)

(declare-fun e!6438 () Bool)

(declare-fun tp_is_empty!545 () Bool)

(declare-fun tp!1760 () Bool)

(assert (=> b!10988 (= e!6438 (and tp_is_empty!545 tp!1760))))

(declare-fun res!9232 () Bool)

(assert (=> start!1402 (=> (not res!9232) (not e!6440))))

(declare-datatypes ((ListLongMap!325 0))(
  ( (ListLongMap!326 (toList!178 List!328)) )
))
(declare-fun lm!227 () ListLongMap!325)

(assert (=> start!1402 (= res!9232 (forall!52 (toList!178 lm!227) p!216))))

(assert (=> start!1402 e!6440))

(declare-fun e!6439 () Bool)

(declare-fun inv!536 (ListLongMap!325) Bool)

(assert (=> start!1402 (and (inv!536 lm!227) e!6439)))

(assert (=> start!1402 tp!1759))

(assert (=> start!1402 e!6438))

(declare-fun b!10987 () Bool)

(declare-fun tp!1758 () Bool)

(assert (=> b!10987 (= e!6439 tp!1758)))

(declare-fun b!10986 () Bool)

(declare-fun ListPrimitiveSize!9 (List!328) Int)

(assert (=> b!10986 (= e!6440 (< (ListPrimitiveSize!9 kvs!4) 0))))

(assert (= (and start!1402 res!9232) b!10985))

(assert (= (and b!10985 res!9231) b!10986))

(assert (= start!1402 b!10987))

(assert (= (and start!1402 (is-Cons!324 kvs!4)) b!10988))

(declare-fun m!7251 () Bool)

(assert (=> b!10985 m!7251))

(declare-fun m!7253 () Bool)

(assert (=> start!1402 m!7253))

(declare-fun m!7255 () Bool)

(assert (=> start!1402 m!7255))

(declare-fun m!7257 () Bool)

(assert (=> b!10986 m!7257))

(push 1)

(assert (not b_next!431))

(assert b_and!661)

(assert (not start!1402))

(assert tp_is_empty!545)

(assert (not b!10987))

(assert (not b!10986))

(assert (not b!10985))

(assert (not b!10988))

(check-sat)

(pop 1)

(push 1)

(assert b_and!661)

(assert (not b_next!431))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1276 () Bool)

(declare-fun res!9243 () Bool)

(declare-fun e!6451 () Bool)

(assert (=> d!1276 (=> res!9243 e!6451)))

(assert (=> d!1276 (= res!9243 (is-Nil!325 kvs!4))))

(assert (=> d!1276 (= (forall!52 kvs!4 p!216) e!6451)))

(declare-fun b!10999 () Bool)

(declare-fun e!6452 () Bool)

(assert (=> b!10999 (= e!6451 e!6452)))

(declare-fun res!9244 () Bool)

(assert (=> b!10999 (=> (not res!9244) (not e!6452))))

(declare-fun dynLambda!62 (Int tuple2!344) Bool)

(assert (=> b!10999 (= res!9244 (dynLambda!62 p!216 (h!890 kvs!4)))))

(declare-fun b!11000 () Bool)

(assert (=> b!11000 (= e!6452 (forall!52 (t!2547 kvs!4) p!216))))

(assert (= (and d!1276 (not res!9243)) b!10999))

(assert (= (and b!10999 res!9244) b!11000))

(declare-fun b_lambda!505 () Bool)

(assert (=> (not b_lambda!505) (not b!10999)))

(declare-fun t!2550 () Bool)

(declare-fun tb!219 () Bool)

(assert (=> (and start!1402 (= p!216 p!216) t!2550) tb!219))

(declare-fun result!370 () Bool)

(assert (=> tb!219 (= result!370 true)))

(assert (=> b!10999 t!2550))

(declare-fun b_and!664 () Bool)

(assert (= b_and!661 (and (=> t!2550 result!370) b_and!664)))

(declare-fun m!7260 () Bool)

(assert (=> b!10999 m!7260))

(declare-fun m!7265 () Bool)

(assert (=> b!11000 m!7265))

(assert (=> b!10985 d!1276))

(declare-fun d!1280 () Bool)

(declare-fun lt!2757 () Int)

(assert (=> d!1280 (>= lt!2757 0)))

(declare-fun e!6458 () Int)

(assert (=> d!1280 (= lt!2757 e!6458)))

(declare-fun c!950 () Bool)

(assert (=> d!1280 (= c!950 (is-Nil!325 kvs!4))))

(assert (=> d!1280 (= (ListPrimitiveSize!9 kvs!4) lt!2757)))

(declare-fun b!11010 () Bool)

(assert (=> b!11010 (= e!6458 0)))

(declare-fun b!11012 () Bool)

(assert (=> b!11012 (= e!6458 (+ 1 (ListPrimitiveSize!9 (t!2547 kvs!4))))))

(assert (= (and d!1280 c!950) b!11010))

(assert (= (and d!1280 (not c!950)) b!11012))

(declare-fun m!7269 () Bool)

(assert (=> b!11012 m!7269))

(assert (=> b!10986 d!1280))

(declare-fun d!1286 () Bool)

(declare-fun res!9249 () Bool)

(declare-fun e!6463 () Bool)

(assert (=> d!1286 (=> res!9249 e!6463)))

(assert (=> d!1286 (= res!9249 (is-Nil!325 (toList!178 lm!227)))))

(assert (=> d!1286 (= (forall!52 (toList!178 lm!227) p!216) e!6463)))

(declare-fun b!11017 () Bool)

(declare-fun e!6465 () Bool)

(assert (=> b!11017 (= e!6463 e!6465)))

(declare-fun res!9251 () Bool)

(assert (=> b!11017 (=> (not res!9251) (not e!6465))))

(assert (=> b!11017 (= res!9251 (dynLambda!62 p!216 (h!890 (toList!178 lm!227))))))

(declare-fun b!11019 () Bool)

(assert (=> b!11019 (= e!6465 (forall!52 (t!2547 (toList!178 lm!227)) p!216))))

(assert (= (and d!1286 (not res!9249)) b!11017))

(assert (= (and b!11017 res!9251) b!11019))

(declare-fun b_lambda!509 () Bool)

(assert (=> (not b_lambda!509) (not b!11017)))

(declare-fun t!2555 () Bool)

(declare-fun tb!225 () Bool)

(assert (=> (and start!1402 (= p!216 p!216) t!2555) tb!225))

(declare-fun result!374 () Bool)

(assert (=> tb!225 (= result!374 true)))

(assert (=> b!11017 t!2555))

(declare-fun b_and!668 () Bool)

(assert (= b_and!664 (and (=> t!2555 result!374) b_and!668)))

(declare-fun m!7272 () Bool)

(assert (=> b!11017 m!7272))

(declare-fun m!7276 () Bool)

(assert (=> b!11019 m!7276))

(assert (=> start!1402 d!1286))

(declare-fun d!1290 () Bool)

(declare-fun isStrictlySorted!37 (List!328) Bool)

(assert (=> d!1290 (= (inv!536 lm!227) (isStrictlySorted!37 (toList!178 lm!227)))))

(declare-fun bs!415 () Bool)

(assert (= bs!415 d!1290))

(declare-fun m!7281 () Bool)

(assert (=> bs!415 m!7281))

(assert (=> start!1402 d!1290))

(declare-fun b!11032 () Bool)

(declare-fun e!6474 () Bool)

(declare-fun tp!1766 () Bool)

(assert (=> b!11032 (= e!6474 (and tp_is_empty!545 tp!1766))))

(assert (=> b!10988 (= tp!1760 e!6474)))

(assert (= (and b!10988 (is-Cons!324 (t!2547 kvs!4))) b!11032))

(declare-fun b!11034 () Bool)

(declare-fun e!6476 () Bool)

(declare-fun tp!1768 () Bool)

(assert (=> b!11034 (= e!6476 (and tp_is_empty!545 tp!1768))))

(assert (=> b!10987 (= tp!1758 e!6476)))

(assert (= (and b!10987 (is-Cons!324 (toList!178 lm!227))) b!11034))

(declare-fun b_lambda!513 () Bool)

(assert (= b_lambda!509 (or (and start!1402 b_free!431) b_lambda!513)))

(declare-fun b_lambda!517 () Bool)

(assert (= b_lambda!505 (or (and start!1402 b_free!431) b_lambda!517)))

(push 1)

