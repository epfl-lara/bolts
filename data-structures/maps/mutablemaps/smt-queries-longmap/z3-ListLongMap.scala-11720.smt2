; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137190 () Bool)

(assert start!137190)

(declare-fun b!1580273 () Bool)

(declare-fun e!881609 () Bool)

(declare-fun tp_is_empty!39207 () Bool)

(declare-fun tp!114472 () Bool)

(assert (=> b!1580273 (= e!881609 (and tp_is_empty!39207 tp!114472))))

(declare-fun b!1580270 () Bool)

(declare-fun res!1079666 () Bool)

(declare-fun e!881610 () Bool)

(assert (=> b!1580270 (=> (not res!1079666) (not e!881610))))

(declare-datatypes ((B!2662 0))(
  ( (B!2663 (val!19693 Int)) )
))
(declare-datatypes ((tuple2!25676 0))(
  ( (tuple2!25677 (_1!12848 (_ BitVec 64)) (_2!12848 B!2662)) )
))
(declare-datatypes ((List!36974 0))(
  ( (Nil!36971) (Cons!36970 (h!38514 tuple2!25676) (t!51895 List!36974)) )
))
(declare-fun l!1390 () List!36974)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!915 (List!36974 (_ BitVec 64)) Bool)

(assert (=> b!1580270 (= res!1079666 (containsKey!915 l!1390 key!405))))

(declare-fun b!1580271 () Bool)

(declare-fun res!1079664 () Bool)

(assert (=> b!1580271 (=> (not res!1079664) (not e!881610))))

(declare-fun value!194 () B!2662)

(declare-fun contains!10502 (List!36974 tuple2!25676) Bool)

(assert (=> b!1580271 (= res!1079664 (contains!10502 l!1390 (tuple2!25677 key!405 value!194)))))

(declare-fun b!1580272 () Bool)

(declare-fun ListPrimitiveSize!194 (List!36974) Int)

(assert (=> b!1580272 (= e!881610 (< (ListPrimitiveSize!194 l!1390) 0))))

(declare-fun res!1079665 () Bool)

(assert (=> start!137190 (=> (not res!1079665) (not e!881610))))

(declare-fun isStrictlySorted!1069 (List!36974) Bool)

(assert (=> start!137190 (= res!1079665 (isStrictlySorted!1069 l!1390))))

(assert (=> start!137190 e!881610))

(assert (=> start!137190 e!881609))

(assert (=> start!137190 true))

(assert (=> start!137190 tp_is_empty!39207))

(assert (= (and start!137190 res!1079665) b!1580270))

(assert (= (and b!1580270 res!1079666) b!1580271))

(assert (= (and b!1580271 res!1079664) b!1580272))

(get-info :version)

(assert (= (and start!137190 ((_ is Cons!36970) l!1390)) b!1580273))

(declare-fun m!1451755 () Bool)

(assert (=> b!1580270 m!1451755))

(declare-fun m!1451757 () Bool)

(assert (=> b!1580271 m!1451757))

(declare-fun m!1451759 () Bool)

(assert (=> b!1580272 m!1451759))

(declare-fun m!1451761 () Bool)

(assert (=> start!137190 m!1451761))

(check-sat (not b!1580273) tp_is_empty!39207 (not b!1580272) (not start!137190) (not b!1580271) (not b!1580270))
(check-sat)
(get-model)

(declare-fun d!166341 () Bool)

(declare-fun lt!676692 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!835 (List!36974) (InoxSet tuple2!25676))

(assert (=> d!166341 (= lt!676692 (select (content!835 l!1390) (tuple2!25677 key!405 value!194)))))

(declare-fun e!881624 () Bool)

(assert (=> d!166341 (= lt!676692 e!881624)))

(declare-fun res!1079681 () Bool)

(assert (=> d!166341 (=> (not res!1079681) (not e!881624))))

(assert (=> d!166341 (= res!1079681 ((_ is Cons!36970) l!1390))))

(assert (=> d!166341 (= (contains!10502 l!1390 (tuple2!25677 key!405 value!194)) lt!676692)))

(declare-fun b!1580294 () Bool)

(declare-fun e!881623 () Bool)

(assert (=> b!1580294 (= e!881624 e!881623)))

(declare-fun res!1079680 () Bool)

(assert (=> b!1580294 (=> res!1079680 e!881623)))

(assert (=> b!1580294 (= res!1079680 (= (h!38514 l!1390) (tuple2!25677 key!405 value!194)))))

(declare-fun b!1580295 () Bool)

(assert (=> b!1580295 (= e!881623 (contains!10502 (t!51895 l!1390) (tuple2!25677 key!405 value!194)))))

(assert (= (and d!166341 res!1079681) b!1580294))

(assert (= (and b!1580294 (not res!1079680)) b!1580295))

(declare-fun m!1451771 () Bool)

(assert (=> d!166341 m!1451771))

(declare-fun m!1451773 () Bool)

(assert (=> d!166341 m!1451773))

(declare-fun m!1451775 () Bool)

(assert (=> b!1580295 m!1451775))

(assert (=> b!1580271 d!166341))

(declare-fun d!166347 () Bool)

(declare-fun res!1079696 () Bool)

(declare-fun e!881640 () Bool)

(assert (=> d!166347 (=> res!1079696 e!881640)))

(assert (=> d!166347 (= res!1079696 (and ((_ is Cons!36970) l!1390) (= (_1!12848 (h!38514 l!1390)) key!405)))))

(assert (=> d!166347 (= (containsKey!915 l!1390 key!405) e!881640)))

(declare-fun b!1580312 () Bool)

(declare-fun e!881641 () Bool)

(assert (=> b!1580312 (= e!881640 e!881641)))

(declare-fun res!1079697 () Bool)

(assert (=> b!1580312 (=> (not res!1079697) (not e!881641))))

(assert (=> b!1580312 (= res!1079697 (and (or (not ((_ is Cons!36970) l!1390)) (bvsle (_1!12848 (h!38514 l!1390)) key!405)) ((_ is Cons!36970) l!1390) (bvslt (_1!12848 (h!38514 l!1390)) key!405)))))

(declare-fun b!1580313 () Bool)

(assert (=> b!1580313 (= e!881641 (containsKey!915 (t!51895 l!1390) key!405))))

(assert (= (and d!166347 (not res!1079696)) b!1580312))

(assert (= (and b!1580312 res!1079697) b!1580313))

(declare-fun m!1451785 () Bool)

(assert (=> b!1580313 m!1451785))

(assert (=> b!1580270 d!166347))

(declare-fun d!166353 () Bool)

(declare-fun res!1079710 () Bool)

(declare-fun e!881654 () Bool)

(assert (=> d!166353 (=> res!1079710 e!881654)))

(assert (=> d!166353 (= res!1079710 (or ((_ is Nil!36971) l!1390) ((_ is Nil!36971) (t!51895 l!1390))))))

(assert (=> d!166353 (= (isStrictlySorted!1069 l!1390) e!881654)))

(declare-fun b!1580326 () Bool)

(declare-fun e!881655 () Bool)

(assert (=> b!1580326 (= e!881654 e!881655)))

(declare-fun res!1079711 () Bool)

(assert (=> b!1580326 (=> (not res!1079711) (not e!881655))))

(assert (=> b!1580326 (= res!1079711 (bvslt (_1!12848 (h!38514 l!1390)) (_1!12848 (h!38514 (t!51895 l!1390)))))))

(declare-fun b!1580327 () Bool)

(assert (=> b!1580327 (= e!881655 (isStrictlySorted!1069 (t!51895 l!1390)))))

(assert (= (and d!166353 (not res!1079710)) b!1580326))

(assert (= (and b!1580326 res!1079711) b!1580327))

(declare-fun m!1451795 () Bool)

(assert (=> b!1580327 m!1451795))

(assert (=> start!137190 d!166353))

(declare-fun d!166359 () Bool)

(declare-fun lt!676702 () Int)

(assert (=> d!166359 (>= lt!676702 0)))

(declare-fun e!881670 () Int)

(assert (=> d!166359 (= lt!676702 e!881670)))

(declare-fun c!146463 () Bool)

(assert (=> d!166359 (= c!146463 ((_ is Nil!36971) l!1390))))

(assert (=> d!166359 (= (ListPrimitiveSize!194 l!1390) lt!676702)))

(declare-fun b!1580344 () Bool)

(assert (=> b!1580344 (= e!881670 0)))

(declare-fun b!1580345 () Bool)

(assert (=> b!1580345 (= e!881670 (+ 1 (ListPrimitiveSize!194 (t!51895 l!1390))))))

(assert (= (and d!166359 c!146463) b!1580344))

(assert (= (and d!166359 (not c!146463)) b!1580345))

(declare-fun m!1451801 () Bool)

(assert (=> b!1580345 m!1451801))

(assert (=> b!1580272 d!166359))

(declare-fun b!1580354 () Bool)

(declare-fun e!881675 () Bool)

(declare-fun tp!114478 () Bool)

(assert (=> b!1580354 (= e!881675 (and tp_is_empty!39207 tp!114478))))

(assert (=> b!1580273 (= tp!114472 e!881675)))

(assert (= (and b!1580273 ((_ is Cons!36970) (t!51895 l!1390))) b!1580354))

(check-sat (not b!1580354) (not b!1580295) (not b!1580313) tp_is_empty!39207 (not d!166341) (not b!1580327) (not b!1580345))
(check-sat)
