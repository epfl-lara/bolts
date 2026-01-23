; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485092 () Bool)

(assert start!485092)

(declare-fun b!4748475 () Bool)

(declare-fun e!2961900 () Bool)

(declare-fun tp!1349857 () Bool)

(assert (=> b!4748475 (= e!2961900 tp!1349857)))

(declare-fun b!4748476 () Bool)

(declare-fun e!2961899 () Bool)

(declare-fun e!2961901 () Bool)

(assert (=> b!4748476 (= e!2961899 e!2961901)))

(declare-fun res!2013069 () Bool)

(assert (=> b!4748476 (=> (not res!2013069) (not e!2961901))))

(declare-datatypes ((K!14420 0))(
  ( (K!14421 (val!19807 Int)) )
))
(declare-datatypes ((V!14666 0))(
  ( (V!14667 (val!19808 Int)) )
))
(declare-datatypes ((tuple2!54776 0))(
  ( (tuple2!54777 (_1!30682 K!14420) (_2!30682 V!14666)) )
))
(declare-datatypes ((List!53166 0))(
  ( (Nil!53042) (Cons!53042 (h!59439 tuple2!54776) (t!360486 List!53166)) )
))
(declare-fun lt!1911221 () List!53166)

(declare-fun noDuplicateKeys!2108 (List!53166) Bool)

(assert (=> b!4748476 (= res!2013069 (noDuplicateKeys!2108 lt!1911221))))

(declare-fun t!14174 () tuple2!54776)

(declare-fun l!14304 () List!53166)

(assert (=> b!4748476 (= lt!1911221 (Cons!53042 t!14174 l!14304))))

(declare-fun b!4748477 () Bool)

(declare-fun res!2013066 () Bool)

(assert (=> b!4748477 (=> (not res!2013066) (not e!2961901))))

(get-info :version)

(assert (=> b!4748477 (= res!2013066 (not ((_ is Nil!53042) l!14304)))))

(declare-fun b!4748478 () Bool)

(declare-fun res!2013068 () Bool)

(declare-fun e!2961902 () Bool)

(assert (=> b!4748478 (=> (not res!2013068) (not e!2961902))))

(declare-datatypes ((ListMap!5465 0))(
  ( (ListMap!5466 (toList!6078 List!53166)) )
))
(declare-fun lt!1911223 () ListMap!5465)

(declare-fun acc!1214 () ListMap!5465)

(declare-fun eq!1185 (ListMap!5465 ListMap!5465) Bool)

(declare-fun addToMapMapFromBucket!1534 (List!53166 ListMap!5465) ListMap!5465)

(assert (=> b!4748478 (= res!2013068 (eq!1185 lt!1911223 (addToMapMapFromBucket!1534 l!14304 acc!1214)))))

(declare-fun res!2013067 () Bool)

(assert (=> start!485092 (=> (not res!2013067) (not e!2961899))))

(assert (=> start!485092 (= res!2013067 (noDuplicateKeys!2108 l!14304))))

(assert (=> start!485092 e!2961899))

(declare-fun e!2961898 () Bool)

(assert (=> start!485092 e!2961898))

(declare-fun tp_is_empty!31725 () Bool)

(declare-fun tp_is_empty!31727 () Bool)

(assert (=> start!485092 (and tp_is_empty!31725 tp_is_empty!31727)))

(declare-fun inv!68292 (ListMap!5465) Bool)

(assert (=> start!485092 (and (inv!68292 acc!1214) e!2961900)))

(declare-fun tp!1349856 () Bool)

(declare-fun b!4748479 () Bool)

(assert (=> b!4748479 (= e!2961898 (and tp_is_empty!31725 tp_is_empty!31727 tp!1349856))))

(declare-fun b!4748480 () Bool)

(declare-fun lt!1911219 () ListMap!5465)

(declare-fun lt!1911217 () ListMap!5465)

(declare-fun +!2344 (ListMap!5465 tuple2!54776) ListMap!5465)

(assert (=> b!4748480 (= e!2961902 (eq!1185 lt!1911217 (addToMapMapFromBucket!1534 (t!360486 l!14304) (+!2344 lt!1911219 t!14174))))))

(declare-fun b!4748481 () Bool)

(assert (=> b!4748481 (= e!2961901 (not true))))

(declare-fun lt!1911218 () ListMap!5465)

(assert (=> b!4748481 (= lt!1911218 (+!2344 acc!1214 t!14174))))

(declare-fun lt!1911220 () ListMap!5465)

(assert (=> b!4748481 (= lt!1911220 (addToMapMapFromBucket!1534 lt!1911221 acc!1214))))

(assert (=> b!4748481 e!2961902))

(declare-fun res!2013065 () Bool)

(assert (=> b!4748481 (=> (not res!2013065) (not e!2961902))))

(assert (=> b!4748481 (= res!2013065 (eq!1185 lt!1911217 (+!2344 lt!1911223 t!14174)))))

(assert (=> b!4748481 (= lt!1911217 (addToMapMapFromBucket!1534 (Cons!53042 t!14174 (t!360486 l!14304)) lt!1911219))))

(declare-datatypes ((Unit!134889 0))(
  ( (Unit!134890) )
))
(declare-fun lt!1911222 () Unit!134889)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!432 (tuple2!54776 List!53166 ListMap!5465) Unit!134889)

(assert (=> b!4748481 (= lt!1911222 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!432 t!14174 (t!360486 l!14304) lt!1911219))))

(assert (=> b!4748481 (= lt!1911223 (addToMapMapFromBucket!1534 (t!360486 l!14304) lt!1911219))))

(assert (=> b!4748481 (= lt!1911219 (+!2344 acc!1214 (h!59439 l!14304)))))

(assert (= (and start!485092 res!2013067) b!4748476))

(assert (= (and b!4748476 res!2013069) b!4748477))

(assert (= (and b!4748477 res!2013066) b!4748481))

(assert (= (and b!4748481 res!2013065) b!4748478))

(assert (= (and b!4748478 res!2013068) b!4748480))

(assert (= (and start!485092 ((_ is Cons!53042) l!14304)) b!4748479))

(assert (= start!485092 b!4748475))

(declare-fun m!5707093 () Bool)

(assert (=> b!4748476 m!5707093))

(declare-fun m!5707095 () Bool)

(assert (=> b!4748481 m!5707095))

(declare-fun m!5707097 () Bool)

(assert (=> b!4748481 m!5707097))

(declare-fun m!5707099 () Bool)

(assert (=> b!4748481 m!5707099))

(declare-fun m!5707101 () Bool)

(assert (=> b!4748481 m!5707101))

(declare-fun m!5707103 () Bool)

(assert (=> b!4748481 m!5707103))

(declare-fun m!5707105 () Bool)

(assert (=> b!4748481 m!5707105))

(declare-fun m!5707107 () Bool)

(assert (=> b!4748481 m!5707107))

(declare-fun m!5707109 () Bool)

(assert (=> b!4748481 m!5707109))

(assert (=> b!4748481 m!5707103))

(declare-fun m!5707111 () Bool)

(assert (=> b!4748480 m!5707111))

(assert (=> b!4748480 m!5707111))

(declare-fun m!5707113 () Bool)

(assert (=> b!4748480 m!5707113))

(assert (=> b!4748480 m!5707113))

(declare-fun m!5707115 () Bool)

(assert (=> b!4748480 m!5707115))

(declare-fun m!5707117 () Bool)

(assert (=> start!485092 m!5707117))

(declare-fun m!5707119 () Bool)

(assert (=> start!485092 m!5707119))

(declare-fun m!5707121 () Bool)

(assert (=> b!4748478 m!5707121))

(assert (=> b!4748478 m!5707121))

(declare-fun m!5707123 () Bool)

(assert (=> b!4748478 m!5707123))

(check-sat (not start!485092) (not b!4748475) (not b!4748479) (not b!4748481) tp_is_empty!31725 (not b!4748476) (not b!4748480) tp_is_empty!31727 (not b!4748478))
(check-sat)
