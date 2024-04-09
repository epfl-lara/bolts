; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71994 () Bool)

(assert start!71994)

(declare-datatypes ((B!1174 0))(
  ( (B!1175 (val!7669 Int)) )
))
(declare-datatypes ((tuple2!10216 0))(
  ( (tuple2!10217 (_1!5118 (_ BitVec 64)) (_2!5118 B!1174)) )
))
(declare-datatypes ((List!16028 0))(
  ( (Nil!16025) (Cons!16024 (h!17155 tuple2!10216) (t!22407 List!16028)) )
))
(declare-datatypes ((ListLongMap!9041 0))(
  ( (ListLongMap!9042 (toList!4536 List!16028)) )
))
(declare-fun thiss!193 () ListLongMap!9041)

(declare-fun isStrictlySorted!440 (List!16028) Bool)

(assert (=> start!71994 (not (isStrictlySorted!440 (toList!4536 thiss!193)))))

(declare-fun e!466430 () Bool)

(declare-fun inv!27241 (ListLongMap!9041) Bool)

(assert (=> start!71994 (and (inv!27241 thiss!193) e!466430)))

(declare-fun b!836054 () Bool)

(declare-fun tp!47390 () Bool)

(assert (=> b!836054 (= e!466430 tp!47390)))

(assert (= start!71994 b!836054))

(declare-fun m!781577 () Bool)

(assert (=> start!71994 m!781577))

(declare-fun m!781579 () Bool)

(assert (=> start!71994 m!781579))

(check-sat (not start!71994) (not b!836054))
(check-sat)
(get-model)

(declare-fun d!107457 () Bool)

(declare-fun res!568965 () Bool)

(declare-fun e!466447 () Bool)

(assert (=> d!107457 (=> res!568965 e!466447)))

(get-info :version)

(assert (=> d!107457 (= res!568965 (or ((_ is Nil!16025) (toList!4536 thiss!193)) ((_ is Nil!16025) (t!22407 (toList!4536 thiss!193)))))))

(assert (=> d!107457 (= (isStrictlySorted!440 (toList!4536 thiss!193)) e!466447)))

(declare-fun b!836071 () Bool)

(declare-fun e!466449 () Bool)

(assert (=> b!836071 (= e!466447 e!466449)))

(declare-fun res!568967 () Bool)

(assert (=> b!836071 (=> (not res!568967) (not e!466449))))

(assert (=> b!836071 (= res!568967 (bvslt (_1!5118 (h!17155 (toList!4536 thiss!193))) (_1!5118 (h!17155 (t!22407 (toList!4536 thiss!193))))))))

(declare-fun b!836073 () Bool)

(assert (=> b!836073 (= e!466449 (isStrictlySorted!440 (t!22407 (toList!4536 thiss!193))))))

(assert (= (and d!107457 (not res!568965)) b!836071))

(assert (= (and b!836071 res!568967) b!836073))

(declare-fun m!781585 () Bool)

(assert (=> b!836073 m!781585))

(assert (=> start!71994 d!107457))

(declare-fun d!107461 () Bool)

(assert (=> d!107461 (= (inv!27241 thiss!193) (isStrictlySorted!440 (toList!4536 thiss!193)))))

(declare-fun bs!23462 () Bool)

(assert (= bs!23462 d!107461))

(assert (=> bs!23462 m!781577))

(assert (=> start!71994 d!107461))

(declare-fun b!836088 () Bool)

(declare-fun e!466458 () Bool)

(declare-fun tp_is_empty!15245 () Bool)

(declare-fun tp!47400 () Bool)

(assert (=> b!836088 (= e!466458 (and tp_is_empty!15245 tp!47400))))

(assert (=> b!836054 (= tp!47390 e!466458)))

(assert (= (and b!836054 ((_ is Cons!16024) (toList!4536 thiss!193))) b!836088))

(check-sat (not d!107461) (not b!836073) (not b!836088) tp_is_empty!15245)
(check-sat)
