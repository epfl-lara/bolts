; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7794 () Bool)

(assert start!7794)

(declare-datatypes ((B!1006 0))(
  ( (B!1007 (val!1123 Int)) )
))
(declare-datatypes ((tuple2!1832 0))(
  ( (tuple2!1833 (_1!926 (_ BitVec 64)) (_2!926 B!1006)) )
))
(declare-datatypes ((List!1339 0))(
  ( (Nil!1336) (Cons!1335 (h!1915 tuple2!1832) (t!4381 List!1339)) )
))
(declare-datatypes ((ListLongMap!1257 0))(
  ( (ListLongMap!1258 (toList!644 List!1339)) )
))
(declare-fun thiss!192 () ListLongMap!1257)

(declare-fun isStrictlySorted!274 (List!1339) Bool)

(assert (=> start!7794 (not (isStrictlySorted!274 (toList!644 thiss!192)))))

(declare-fun e!31792 () Bool)

(declare-fun inv!2305 (ListLongMap!1257) Bool)

(assert (=> start!7794 (and (inv!2305 thiss!192) e!31792)))

(declare-fun b!49476 () Bool)

(declare-fun tp!6536 () Bool)

(assert (=> b!49476 (= e!31792 tp!6536)))

(assert (= start!7794 b!49476))

(declare-fun m!42907 () Bool)

(assert (=> start!7794 m!42907))

(declare-fun m!42909 () Bool)

(assert (=> start!7794 m!42909))

(check-sat (not start!7794) (not b!49476))
(check-sat)
(get-model)

(declare-fun d!9935 () Bool)

(declare-fun res!28632 () Bool)

(declare-fun e!31810 () Bool)

(assert (=> d!9935 (=> res!28632 e!31810)))

(get-info :version)

(assert (=> d!9935 (= res!28632 (or ((_ is Nil!1336) (toList!644 thiss!192)) ((_ is Nil!1336) (t!4381 (toList!644 thiss!192)))))))

(assert (=> d!9935 (= (isStrictlySorted!274 (toList!644 thiss!192)) e!31810)))

(declare-fun b!49494 () Bool)

(declare-fun e!31811 () Bool)

(assert (=> b!49494 (= e!31810 e!31811)))

(declare-fun res!28633 () Bool)

(assert (=> b!49494 (=> (not res!28633) (not e!31811))))

(assert (=> b!49494 (= res!28633 (bvslt (_1!926 (h!1915 (toList!644 thiss!192))) (_1!926 (h!1915 (t!4381 (toList!644 thiss!192))))))))

(declare-fun b!49495 () Bool)

(assert (=> b!49495 (= e!31811 (isStrictlySorted!274 (t!4381 (toList!644 thiss!192))))))

(assert (= (and d!9935 (not res!28632)) b!49494))

(assert (= (and b!49494 res!28633) b!49495))

(declare-fun m!42917 () Bool)

(assert (=> b!49495 m!42917))

(assert (=> start!7794 d!9935))

(declare-fun d!9941 () Bool)

(assert (=> d!9941 (= (inv!2305 thiss!192) (isStrictlySorted!274 (toList!644 thiss!192)))))

(declare-fun bs!2298 () Bool)

(assert (= bs!2298 d!9941))

(assert (=> bs!2298 m!42907))

(assert (=> start!7794 d!9941))

(declare-fun b!49511 () Bool)

(declare-fun e!31821 () Bool)

(declare-fun tp_is_empty!2157 () Bool)

(declare-fun tp!6547 () Bool)

(assert (=> b!49511 (= e!31821 (and tp_is_empty!2157 tp!6547))))

(assert (=> b!49476 (= tp!6536 e!31821)))

(assert (= (and b!49476 ((_ is Cons!1335) (toList!644 thiss!192))) b!49511))

(check-sat (not d!9941) (not b!49495) (not b!49511) tp_is_empty!2157)
