; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1256 () Bool)

(assert start!1256)

(declare-fun b_free!393 () Bool)

(declare-fun b_next!393 () Bool)

(assert (=> start!1256 (= b_free!393 (not b_next!393))))

(declare-fun tp!1541 () Bool)

(declare-fun b_and!551 () Bool)

(assert (=> start!1256 (= tp!1541 b_and!551)))

(declare-fun b!10480 () Bool)

(declare-fun res!8918 () Bool)

(declare-fun e!6074 () Bool)

(assert (=> b!10480 (=> (not res!8918) (not e!6074))))

(declare-datatypes ((B!334 0))(
  ( (B!335 (val!262 Int)) )
))
(declare-datatypes ((tuple2!306 0))(
  ( (tuple2!307 (_1!153 (_ BitVec 64)) (_2!153 B!334)) )
))
(declare-datatypes ((List!309 0))(
  ( (Nil!306) (Cons!305 (h!871 tuple2!306) (t!2456 List!309)) )
))
(declare-fun kvs!4 () List!309)

(declare-fun isEmpty!46 (List!309) Bool)

(assert (=> b!10480 (= res!8918 (not (isEmpty!46 kvs!4)))))

(declare-fun b!10481 () Bool)

(assert (=> b!10481 (= e!6074 (= kvs!4 Nil!306))))

(declare-fun b!10482 () Bool)

(declare-fun e!6073 () Bool)

(declare-fun tp!1540 () Bool)

(assert (=> b!10482 (= e!6073 tp!1540)))

(declare-fun b!10483 () Bool)

(declare-fun e!6072 () Bool)

(declare-fun tp_is_empty!507 () Bool)

(declare-fun tp!1539 () Bool)

(assert (=> b!10483 (= e!6072 (and tp_is_empty!507 tp!1539))))

(declare-fun b!10484 () Bool)

(declare-fun res!8920 () Bool)

(assert (=> b!10484 (=> (not res!8920) (not e!6074))))

(declare-fun p!216 () Int)

(declare-fun forall!36 (List!309 Int) Bool)

(assert (=> b!10484 (= res!8920 (forall!36 kvs!4 p!216))))

(declare-fun res!8919 () Bool)

(assert (=> start!1256 (=> (not res!8919) (not e!6074))))

(declare-datatypes ((ListLongMap!287 0))(
  ( (ListLongMap!288 (toList!159 List!309)) )
))
(declare-fun lm!227 () ListLongMap!287)

(assert (=> start!1256 (= res!8919 (forall!36 (toList!159 lm!227) p!216))))

(assert (=> start!1256 e!6074))

(declare-fun inv!487 (ListLongMap!287) Bool)

(assert (=> start!1256 (and (inv!487 lm!227) e!6073)))

(assert (=> start!1256 tp!1541))

(assert (=> start!1256 e!6072))

(assert (= (and start!1256 res!8919) b!10484))

(assert (= (and b!10484 res!8920) b!10480))

(assert (= (and b!10480 res!8918) b!10481))

(assert (= start!1256 b!10482))

(get-info :version)

(assert (= (and start!1256 ((_ is Cons!305) kvs!4)) b!10483))

(declare-fun m!6751 () Bool)

(assert (=> b!10480 m!6751))

(declare-fun m!6753 () Bool)

(assert (=> b!10484 m!6753))

(declare-fun m!6755 () Bool)

(assert (=> start!1256 m!6755))

(declare-fun m!6757 () Bool)

(assert (=> start!1256 m!6757))

(check-sat (not b!10484) b_and!551 (not b!10482) tp_is_empty!507 (not b!10483) (not start!1256) (not b!10480) (not b_next!393))
(check-sat b_and!551 (not b_next!393))
(get-model)

(declare-fun d!1117 () Bool)

(declare-fun res!8944 () Bool)

(declare-fun e!6098 () Bool)

(assert (=> d!1117 (=> res!8944 e!6098)))

(assert (=> d!1117 (= res!8944 ((_ is Nil!306) kvs!4))))

(assert (=> d!1117 (= (forall!36 kvs!4 p!216) e!6098)))

(declare-fun b!10514 () Bool)

(declare-fun e!6099 () Bool)

(assert (=> b!10514 (= e!6098 e!6099)))

(declare-fun res!8945 () Bool)

(assert (=> b!10514 (=> (not res!8945) (not e!6099))))

(declare-fun dynLambda!49 (Int tuple2!306) Bool)

(assert (=> b!10514 (= res!8945 (dynLambda!49 p!216 (h!871 kvs!4)))))

(declare-fun b!10515 () Bool)

(assert (=> b!10515 (= e!6099 (forall!36 (t!2456 kvs!4) p!216))))

(assert (= (and d!1117 (not res!8944)) b!10514))

(assert (= (and b!10514 res!8945) b!10515))

(declare-fun b_lambda!361 () Bool)

(assert (=> (not b_lambda!361) (not b!10514)))

(declare-fun t!2461 () Bool)

(declare-fun tb!149 () Bool)

(assert (=> (and start!1256 (= p!216 p!216) t!2461) tb!149))

(declare-fun result!275 () Bool)

(assert (=> tb!149 (= result!275 true)))

(assert (=> b!10514 t!2461))

(declare-fun b_and!557 () Bool)

(assert (= b_and!551 (and (=> t!2461 result!275) b_and!557)))

(declare-fun m!6771 () Bool)

(assert (=> b!10514 m!6771))

(declare-fun m!6773 () Bool)

(assert (=> b!10515 m!6773))

(assert (=> b!10484 d!1117))

(declare-fun d!1123 () Bool)

(declare-fun res!8950 () Bool)

(declare-fun e!6104 () Bool)

(assert (=> d!1123 (=> res!8950 e!6104)))

(assert (=> d!1123 (= res!8950 ((_ is Nil!306) (toList!159 lm!227)))))

(assert (=> d!1123 (= (forall!36 (toList!159 lm!227) p!216) e!6104)))

(declare-fun b!10520 () Bool)

(declare-fun e!6105 () Bool)

(assert (=> b!10520 (= e!6104 e!6105)))

(declare-fun res!8951 () Bool)

(assert (=> b!10520 (=> (not res!8951) (not e!6105))))

(assert (=> b!10520 (= res!8951 (dynLambda!49 p!216 (h!871 (toList!159 lm!227))))))

(declare-fun b!10521 () Bool)

(assert (=> b!10521 (= e!6105 (forall!36 (t!2456 (toList!159 lm!227)) p!216))))

(assert (= (and d!1123 (not res!8950)) b!10520))

(assert (= (and b!10520 res!8951) b!10521))

(declare-fun b_lambda!367 () Bool)

(assert (=> (not b_lambda!367) (not b!10520)))

(declare-fun t!2467 () Bool)

(declare-fun tb!155 () Bool)

(assert (=> (and start!1256 (= p!216 p!216) t!2467) tb!155))

(declare-fun result!281 () Bool)

(assert (=> tb!155 (= result!281 true)))

(assert (=> b!10520 t!2467))

(declare-fun b_and!563 () Bool)

(assert (= b_and!557 (and (=> t!2467 result!281) b_and!563)))

(declare-fun m!6783 () Bool)

(assert (=> b!10520 m!6783))

(declare-fun m!6785 () Bool)

(assert (=> b!10521 m!6785))

(assert (=> start!1256 d!1123))

(declare-fun d!1129 () Bool)

(declare-fun isStrictlySorted!26 (List!309) Bool)

(assert (=> d!1129 (= (inv!487 lm!227) (isStrictlySorted!26 (toList!159 lm!227)))))

(declare-fun bs!386 () Bool)

(assert (= bs!386 d!1129))

(declare-fun m!6791 () Bool)

(assert (=> bs!386 m!6791))

(assert (=> start!1256 d!1129))

(declare-fun d!1135 () Bool)

(assert (=> d!1135 (= (isEmpty!46 kvs!4) ((_ is Nil!306) kvs!4))))

(assert (=> b!10480 d!1135))

(declare-fun b!10540 () Bool)

(declare-fun e!6118 () Bool)

(declare-fun tp!1561 () Bool)

(assert (=> b!10540 (= e!6118 (and tp_is_empty!507 tp!1561))))

(assert (=> b!10482 (= tp!1540 e!6118)))

(assert (= (and b!10482 ((_ is Cons!305) (toList!159 lm!227))) b!10540))

(declare-fun b!10541 () Bool)

(declare-fun e!6119 () Bool)

(declare-fun tp!1562 () Bool)

(assert (=> b!10541 (= e!6119 (and tp_is_empty!507 tp!1562))))

(assert (=> b!10483 (= tp!1539 e!6119)))

(assert (= (and b!10483 ((_ is Cons!305) (t!2456 kvs!4))) b!10541))

(declare-fun b_lambda!379 () Bool)

(assert (= b_lambda!367 (or (and start!1256 b_free!393) b_lambda!379)))

(declare-fun b_lambda!381 () Bool)

(assert (= b_lambda!361 (or (and start!1256 b_free!393) b_lambda!381)))

(check-sat (not b!10541) (not b!10540) (not d!1129) (not b_next!393) (not b_lambda!379) (not b!10521) b_and!563 tp_is_empty!507 (not b_lambda!381) (not b!10515))
(check-sat b_and!563 (not b_next!393))
