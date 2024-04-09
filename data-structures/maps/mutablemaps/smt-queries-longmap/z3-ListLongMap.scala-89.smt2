; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1280 () Bool)

(assert start!1280)

(declare-fun b_free!399 () Bool)

(declare-fun b_next!399 () Bool)

(assert (=> start!1280 (= b_free!399 (not b_next!399))))

(declare-fun tp!1578 () Bool)

(declare-fun b_and!569 () Bool)

(assert (=> start!1280 (= tp!1578 b_and!569)))

(declare-fun res!8969 () Bool)

(declare-fun e!6135 () Bool)

(assert (=> start!1280 (=> (not res!8969) (not e!6135))))

(declare-datatypes ((B!340 0))(
  ( (B!341 (val!265 Int)) )
))
(declare-datatypes ((tuple2!312 0))(
  ( (tuple2!313 (_1!156 (_ BitVec 64)) (_2!156 B!340)) )
))
(declare-datatypes ((List!312 0))(
  ( (Nil!309) (Cons!308 (h!874 tuple2!312) (t!2471 List!312)) )
))
(declare-datatypes ((ListLongMap!293 0))(
  ( (ListLongMap!294 (toList!162 List!312)) )
))
(declare-fun lm!227 () ListLongMap!293)

(declare-fun p!216 () Int)

(declare-fun forall!39 (List!312 Int) Bool)

(assert (=> start!1280 (= res!8969 (forall!39 (toList!162 lm!227) p!216))))

(assert (=> start!1280 e!6135))

(declare-fun e!6137 () Bool)

(declare-fun inv!495 (ListLongMap!293) Bool)

(assert (=> start!1280 (and (inv!495 lm!227) e!6137)))

(assert (=> start!1280 tp!1578))

(declare-fun e!6136 () Bool)

(assert (=> start!1280 e!6136))

(declare-fun b!10567 () Bool)

(declare-fun tp_is_empty!513 () Bool)

(declare-fun tp!1579 () Bool)

(assert (=> b!10567 (= e!6136 (and tp_is_empty!513 tp!1579))))

(declare-fun b!10568 () Bool)

(declare-fun tp!1580 () Bool)

(assert (=> b!10568 (= e!6137 tp!1580)))

(declare-fun b!10569 () Bool)

(declare-fun res!8971 () Bool)

(assert (=> b!10569 (=> (not res!8971) (not e!6135))))

(declare-fun kvs!4 () List!312)

(declare-fun isEmpty!49 (List!312) Bool)

(assert (=> b!10569 (= res!8971 (not (isEmpty!49 kvs!4)))))

(declare-fun b!10570 () Bool)

(declare-fun res!8970 () Bool)

(assert (=> b!10570 (=> (not res!8970) (not e!6135))))

(assert (=> b!10570 (= res!8970 (forall!39 kvs!4 p!216))))

(declare-fun b!10571 () Bool)

(assert (=> b!10571 (= e!6135 (= kvs!4 Nil!309))))

(assert (= (and start!1280 res!8969) b!10570))

(assert (= (and b!10570 res!8970) b!10569))

(assert (= (and b!10569 res!8971) b!10571))

(assert (= start!1280 b!10568))

(get-info :version)

(assert (= (and start!1280 ((_ is Cons!308) kvs!4)) b!10567))

(declare-fun m!6805 () Bool)

(assert (=> start!1280 m!6805))

(declare-fun m!6807 () Bool)

(assert (=> start!1280 m!6807))

(declare-fun m!6809 () Bool)

(assert (=> b!10569 m!6809))

(declare-fun m!6811 () Bool)

(assert (=> b!10570 m!6811))

(check-sat (not b!10568) (not b!10569) (not b_next!399) (not b!10570) (not b!10567) (not start!1280) tp_is_empty!513 b_and!569)
(check-sat b_and!569 (not b_next!399))
(get-model)

(declare-fun d!1143 () Bool)

(assert (=> d!1143 (= (isEmpty!49 kvs!4) ((_ is Nil!309) kvs!4))))

(assert (=> b!10569 d!1143))

(declare-fun d!1147 () Bool)

(declare-fun res!8997 () Bool)

(declare-fun e!6163 () Bool)

(assert (=> d!1147 (=> res!8997 e!6163)))

(assert (=> d!1147 (= res!8997 ((_ is Nil!309) (toList!162 lm!227)))))

(assert (=> d!1147 (= (forall!39 (toList!162 lm!227) p!216) e!6163)))

(declare-fun b!10603 () Bool)

(declare-fun e!6164 () Bool)

(assert (=> b!10603 (= e!6163 e!6164)))

(declare-fun res!8998 () Bool)

(assert (=> b!10603 (=> (not res!8998) (not e!6164))))

(declare-fun dynLambda!54 (Int tuple2!312) Bool)

(assert (=> b!10603 (= res!8998 (dynLambda!54 p!216 (h!874 (toList!162 lm!227))))))

(declare-fun b!10604 () Bool)

(assert (=> b!10604 (= e!6164 (forall!39 (t!2471 (toList!162 lm!227)) p!216))))

(assert (= (and d!1147 (not res!8997)) b!10603))

(assert (= (and b!10603 res!8998) b!10604))

(declare-fun b_lambda!387 () Bool)

(assert (=> (not b_lambda!387) (not b!10603)))

(declare-fun t!2478 () Bool)

(declare-fun tb!163 () Bool)

(assert (=> (and start!1280 (= p!216 p!216) t!2478) tb!163))

(declare-fun result!295 () Bool)

(assert (=> tb!163 (= result!295 true)))

(assert (=> b!10603 t!2478))

(declare-fun b_and!577 () Bool)

(assert (= b_and!569 (and (=> t!2478 result!295) b_and!577)))

(declare-fun m!6829 () Bool)

(assert (=> b!10603 m!6829))

(declare-fun m!6831 () Bool)

(assert (=> b!10604 m!6831))

(assert (=> start!1280 d!1147))

(declare-fun d!1153 () Bool)

(declare-fun isStrictlySorted!28 (List!312) Bool)

(assert (=> d!1153 (= (inv!495 lm!227) (isStrictlySorted!28 (toList!162 lm!227)))))

(declare-fun bs!392 () Bool)

(assert (= bs!392 d!1153))

(declare-fun m!6841 () Bool)

(assert (=> bs!392 m!6841))

(assert (=> start!1280 d!1153))

(declare-fun d!1161 () Bool)

(declare-fun res!9003 () Bool)

(declare-fun e!6169 () Bool)

(assert (=> d!1161 (=> res!9003 e!6169)))

(assert (=> d!1161 (= res!9003 ((_ is Nil!309) kvs!4))))

(assert (=> d!1161 (= (forall!39 kvs!4 p!216) e!6169)))

(declare-fun b!10609 () Bool)

(declare-fun e!6170 () Bool)

(assert (=> b!10609 (= e!6169 e!6170)))

(declare-fun res!9004 () Bool)

(assert (=> b!10609 (=> (not res!9004) (not e!6170))))

(assert (=> b!10609 (= res!9004 (dynLambda!54 p!216 (h!874 kvs!4)))))

(declare-fun b!10610 () Bool)

(assert (=> b!10610 (= e!6170 (forall!39 (t!2471 kvs!4) p!216))))

(assert (= (and d!1161 (not res!9003)) b!10609))

(assert (= (and b!10609 res!9004) b!10610))

(declare-fun b_lambda!393 () Bool)

(assert (=> (not b_lambda!393) (not b!10609)))

(declare-fun t!2484 () Bool)

(declare-fun tb!169 () Bool)

(assert (=> (and start!1280 (= p!216 p!216) t!2484) tb!169))

(declare-fun result!305 () Bool)

(assert (=> tb!169 (= result!305 true)))

(assert (=> b!10609 t!2484))

(declare-fun b_and!583 () Bool)

(assert (= b_and!577 (and (=> t!2484 result!305) b_and!583)))

(declare-fun m!6847 () Bool)

(assert (=> b!10609 m!6847))

(declare-fun m!6849 () Bool)

(assert (=> b!10610 m!6849))

(assert (=> b!10570 d!1161))

(declare-fun b!10627 () Bool)

(declare-fun e!6181 () Bool)

(declare-fun tp!1600 () Bool)

(assert (=> b!10627 (= e!6181 (and tp_is_empty!513 tp!1600))))

(assert (=> b!10568 (= tp!1580 e!6181)))

(assert (= (and b!10568 ((_ is Cons!308) (toList!162 lm!227))) b!10627))

(declare-fun b!10628 () Bool)

(declare-fun e!6182 () Bool)

(declare-fun tp!1601 () Bool)

(assert (=> b!10628 (= e!6182 (and tp_is_empty!513 tp!1601))))

(assert (=> b!10567 (= tp!1579 e!6182)))

(assert (= (and b!10567 ((_ is Cons!308) (t!2471 kvs!4))) b!10628))

(declare-fun b_lambda!403 () Bool)

(assert (= b_lambda!387 (or (and start!1280 b_free!399) b_lambda!403)))

(declare-fun b_lambda!405 () Bool)

(assert (= b_lambda!393 (or (and start!1280 b_free!399) b_lambda!405)))

(check-sat (not b!10604) tp_is_empty!513 (not b!10628) (not b_lambda!403) b_and!583 (not d!1153) (not b_lambda!405) (not b!10610) (not b!10627) (not b_next!399))
(check-sat b_and!583 (not b_next!399))
