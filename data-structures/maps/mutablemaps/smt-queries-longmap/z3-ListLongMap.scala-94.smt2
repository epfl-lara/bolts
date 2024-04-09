; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1400 () Bool)

(assert start!1400)

(declare-fun b_free!429 () Bool)

(declare-fun b_next!429 () Bool)

(assert (=> start!1400 (= b_free!429 (not b_next!429))))

(declare-fun tp!1750 () Bool)

(declare-fun b_and!659 () Bool)

(assert (=> start!1400 (= tp!1750 b_and!659)))

(declare-fun b!10974 () Bool)

(declare-fun e!6431 () Bool)

(declare-datatypes ((B!370 0))(
  ( (B!371 (val!280 Int)) )
))
(declare-datatypes ((tuple2!342 0))(
  ( (tuple2!343 (_1!171 (_ BitVec 64)) (_2!171 B!370)) )
))
(declare-datatypes ((List!327 0))(
  ( (Nil!324) (Cons!323 (h!889 tuple2!342) (t!2546 List!327)) )
))
(declare-fun kvs!4 () List!327)

(declare-fun ListPrimitiveSize!8 (List!327) Int)

(assert (=> b!10974 (= e!6431 (< (ListPrimitiveSize!8 kvs!4) 0))))

(declare-fun b!10973 () Bool)

(declare-fun res!9225 () Bool)

(assert (=> b!10973 (=> (not res!9225) (not e!6431))))

(declare-fun p!216 () Int)

(declare-fun forall!51 (List!327 Int) Bool)

(assert (=> b!10973 (= res!9225 (forall!51 kvs!4 p!216))))

(declare-fun b!10975 () Bool)

(declare-fun e!6429 () Bool)

(declare-fun tp!1751 () Bool)

(assert (=> b!10975 (= e!6429 tp!1751)))

(declare-fun res!9226 () Bool)

(assert (=> start!1400 (=> (not res!9226) (not e!6431))))

(declare-datatypes ((ListLongMap!323 0))(
  ( (ListLongMap!324 (toList!177 List!327)) )
))
(declare-fun lm!227 () ListLongMap!323)

(assert (=> start!1400 (= res!9226 (forall!51 (toList!177 lm!227) p!216))))

(assert (=> start!1400 e!6431))

(declare-fun inv!535 (ListLongMap!323) Bool)

(assert (=> start!1400 (and (inv!535 lm!227) e!6429)))

(assert (=> start!1400 tp!1750))

(declare-fun e!6430 () Bool)

(assert (=> start!1400 e!6430))

(declare-fun b!10976 () Bool)

(declare-fun tp_is_empty!543 () Bool)

(declare-fun tp!1749 () Bool)

(assert (=> b!10976 (= e!6430 (and tp_is_empty!543 tp!1749))))

(assert (= (and start!1400 res!9226) b!10973))

(assert (= (and b!10973 res!9225) b!10974))

(assert (= start!1400 b!10975))

(get-info :version)

(assert (= (and start!1400 ((_ is Cons!323) kvs!4)) b!10976))

(declare-fun m!7243 () Bool)

(assert (=> b!10974 m!7243))

(declare-fun m!7245 () Bool)

(assert (=> b!10973 m!7245))

(declare-fun m!7247 () Bool)

(assert (=> start!1400 m!7247))

(declare-fun m!7249 () Bool)

(assert (=> start!1400 m!7249))

(check-sat (not b!10974) (not b!10973) b_and!659 (not b!10976) (not b_next!429) tp_is_empty!543 (not start!1400) (not b!10975))
(check-sat b_and!659 (not b_next!429))
(get-model)

(declare-fun d!1283 () Bool)

(declare-fun res!9253 () Bool)

(declare-fun e!6467 () Bool)

(assert (=> d!1283 (=> res!9253 e!6467)))

(assert (=> d!1283 (= res!9253 ((_ is Nil!324) kvs!4))))

(assert (=> d!1283 (= (forall!51 kvs!4 p!216) e!6467)))

(declare-fun b!11021 () Bool)

(declare-fun e!6468 () Bool)

(assert (=> b!11021 (= e!6467 e!6468)))

(declare-fun res!9254 () Bool)

(assert (=> b!11021 (=> (not res!9254) (not e!6468))))

(declare-fun dynLambda!63 (Int tuple2!342) Bool)

(assert (=> b!11021 (= res!9254 (dynLambda!63 p!216 (h!889 kvs!4)))))

(declare-fun b!11022 () Bool)

(assert (=> b!11022 (= e!6468 (forall!51 (t!2546 kvs!4) p!216))))

(assert (= (and d!1283 (not res!9253)) b!11021))

(assert (= (and b!11021 res!9254) b!11022))

(declare-fun b_lambda!511 () Bool)

(assert (=> (not b_lambda!511) (not b!11021)))

(declare-fun t!2557 () Bool)

(declare-fun tb!227 () Bool)

(assert (=> (and start!1400 (= p!216 p!216) t!2557) tb!227))

(declare-fun result!377 () Bool)

(assert (=> tb!227 (= result!377 true)))

(assert (=> b!11021 t!2557))

(declare-fun b_and!671 () Bool)

(assert (= b_and!659 (and (=> t!2557 result!377) b_and!671)))

(declare-fun m!7283 () Bool)

(assert (=> b!11021 m!7283))

(declare-fun m!7285 () Bool)

(assert (=> b!11022 m!7285))

(assert (=> b!10973 d!1283))

(declare-fun d!1293 () Bool)

(declare-fun lt!2760 () Int)

(assert (=> d!1293 (>= lt!2760 0)))

(declare-fun e!6479 () Int)

(assert (=> d!1293 (= lt!2760 e!6479)))

(declare-fun c!953 () Bool)

(assert (=> d!1293 (= c!953 ((_ is Nil!324) kvs!4))))

(assert (=> d!1293 (= (ListPrimitiveSize!8 kvs!4) lt!2760)))

(declare-fun b!11039 () Bool)

(assert (=> b!11039 (= e!6479 0)))

(declare-fun b!11040 () Bool)

(assert (=> b!11040 (= e!6479 (+ 1 (ListPrimitiveSize!8 (t!2546 kvs!4))))))

(assert (= (and d!1293 c!953) b!11039))

(assert (= (and d!1293 (not c!953)) b!11040))

(declare-fun m!7287 () Bool)

(assert (=> b!11040 m!7287))

(assert (=> b!10974 d!1293))

(declare-fun d!1295 () Bool)

(declare-fun res!9255 () Bool)

(declare-fun e!6480 () Bool)

(assert (=> d!1295 (=> res!9255 e!6480)))

(assert (=> d!1295 (= res!9255 ((_ is Nil!324) (toList!177 lm!227)))))

(assert (=> d!1295 (= (forall!51 (toList!177 lm!227) p!216) e!6480)))

(declare-fun b!11041 () Bool)

(declare-fun e!6481 () Bool)

(assert (=> b!11041 (= e!6480 e!6481)))

(declare-fun res!9256 () Bool)

(assert (=> b!11041 (=> (not res!9256) (not e!6481))))

(assert (=> b!11041 (= res!9256 (dynLambda!63 p!216 (h!889 (toList!177 lm!227))))))

(declare-fun b!11042 () Bool)

(assert (=> b!11042 (= e!6481 (forall!51 (t!2546 (toList!177 lm!227)) p!216))))

(assert (= (and d!1295 (not res!9255)) b!11041))

(assert (= (and b!11041 res!9256) b!11042))

(declare-fun b_lambda!521 () Bool)

(assert (=> (not b_lambda!521) (not b!11041)))

(declare-fun t!2559 () Bool)

(declare-fun tb!229 () Bool)

(assert (=> (and start!1400 (= p!216 p!216) t!2559) tb!229))

(declare-fun result!383 () Bool)

(assert (=> tb!229 (= result!383 true)))

(assert (=> b!11041 t!2559))

(declare-fun b_and!673 () Bool)

(assert (= b_and!671 (and (=> t!2559 result!383) b_and!673)))

(declare-fun m!7289 () Bool)

(assert (=> b!11041 m!7289))

(declare-fun m!7291 () Bool)

(assert (=> b!11042 m!7291))

(assert (=> start!1400 d!1295))

(declare-fun d!1297 () Bool)

(declare-fun isStrictlySorted!38 (List!327) Bool)

(assert (=> d!1297 (= (inv!535 lm!227) (isStrictlySorted!38 (toList!177 lm!227)))))

(declare-fun bs!416 () Bool)

(assert (= bs!416 d!1297))

(declare-fun m!7293 () Bool)

(assert (=> bs!416 m!7293))

(assert (=> start!1400 d!1297))

(declare-fun b!11047 () Bool)

(declare-fun e!6484 () Bool)

(declare-fun tp!1771 () Bool)

(assert (=> b!11047 (= e!6484 (and tp_is_empty!543 tp!1771))))

(assert (=> b!10975 (= tp!1751 e!6484)))

(assert (= (and b!10975 ((_ is Cons!323) (toList!177 lm!227))) b!11047))

(declare-fun b!11048 () Bool)

(declare-fun e!6485 () Bool)

(declare-fun tp!1772 () Bool)

(assert (=> b!11048 (= e!6485 (and tp_is_empty!543 tp!1772))))

(assert (=> b!10976 (= tp!1749 e!6485)))

(assert (= (and b!10976 ((_ is Cons!323) (t!2546 kvs!4))) b!11048))

(declare-fun b_lambda!523 () Bool)

(assert (= b_lambda!521 (or (and start!1400 b_free!429) b_lambda!523)))

(declare-fun b_lambda!525 () Bool)

(assert (= b_lambda!511 (or (and start!1400 b_free!429) b_lambda!525)))

(check-sat (not b!11042) (not b_lambda!525) (not b!11022) b_and!673 (not b!11047) (not b_next!429) tp_is_empty!543 (not d!1297) (not b!11040) (not b!11048) (not b_lambda!523))
(check-sat b_and!673 (not b_next!429))
