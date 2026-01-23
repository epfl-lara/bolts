; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486118 () Bool)

(assert start!486118)

(declare-fun b!4755284 () Bool)

(declare-fun res!2017343 () Bool)

(declare-fun e!2966510 () Bool)

(assert (=> b!4755284 (=> (not res!2017343) (not e!2966510))))

(declare-datatypes ((K!14653 0))(
  ( (K!14654 (val!19993 Int)) )
))
(declare-datatypes ((V!14899 0))(
  ( (V!14900 (val!19994 Int)) )
))
(declare-datatypes ((tuple2!54962 0))(
  ( (tuple2!54963 (_1!30775 K!14653) (_2!30775 V!14899)) )
))
(declare-datatypes ((List!53265 0))(
  ( (Nil!53141) (Cons!53141 (h!59538 tuple2!54962) (t!360609 List!53265)) )
))
(declare-datatypes ((ListMap!5647 0))(
  ( (ListMap!5648 (toList!6169 List!53265)) )
))
(declare-fun lhm1!51 () ListMap!5647)

(declare-fun lhm2!51 () ListMap!5647)

(declare-fun eq!1264 (ListMap!5647 ListMap!5647) Bool)

(assert (=> b!4755284 (= res!2017343 (eq!1264 lhm1!51 lhm2!51))))

(declare-fun b!4755285 () Bool)

(declare-fun e!2966509 () Bool)

(assert (=> b!4755285 (= e!2966510 (not e!2966509))))

(declare-fun res!2017342 () Bool)

(assert (=> b!4755285 (=> res!2017342 e!2966509)))

(declare-fun l!13115 () List!53265)

(declare-fun noDuplicateKeys!2201 (List!53265) Bool)

(assert (=> b!4755285 (= res!2017342 (not (noDuplicateKeys!2201 (t!360609 l!13115))))))

(declare-fun lt!1922266 () ListMap!5647)

(declare-fun lt!1922269 () ListMap!5647)

(assert (=> b!4755285 (eq!1264 lt!1922266 lt!1922269)))

(declare-datatypes ((Unit!137540 0))(
  ( (Unit!137541) )
))
(declare-fun lt!1922268 () Unit!137540)

(declare-fun lemmaAddToEqMapsPreservesEq!119 (ListMap!5647 ListMap!5647 K!14653 V!14899) Unit!137540)

(assert (=> b!4755285 (= lt!1922268 (lemmaAddToEqMapsPreservesEq!119 lhm1!51 lhm2!51 (_1!30775 (h!59538 l!13115)) (_2!30775 (h!59538 l!13115))))))

(declare-fun +!2435 (ListMap!5647 tuple2!54962) ListMap!5647)

(assert (=> b!4755285 (= lt!1922269 (+!2435 lhm2!51 (h!59538 l!13115)))))

(assert (=> b!4755285 (= lt!1922266 (+!2435 lhm1!51 (h!59538 l!13115)))))

(declare-fun b!4755286 () Bool)

(declare-fun e!2966511 () Bool)

(declare-fun tp!1350649 () Bool)

(assert (=> b!4755286 (= e!2966511 tp!1350649)))

(declare-fun b!4755287 () Bool)

(declare-fun e!2966507 () Bool)

(declare-fun tp!1350650 () Bool)

(assert (=> b!4755287 (= e!2966507 tp!1350650)))

(declare-fun res!2017340 () Bool)

(assert (=> start!486118 (=> (not res!2017340) (not e!2966510))))

(assert (=> start!486118 (= res!2017340 (noDuplicateKeys!2201 l!13115))))

(assert (=> start!486118 e!2966510))

(declare-fun e!2966508 () Bool)

(assert (=> start!486118 e!2966508))

(declare-fun inv!68524 (ListMap!5647) Bool)

(assert (=> start!486118 (and (inv!68524 lhm1!51) e!2966507)))

(assert (=> start!486118 (and (inv!68524 lhm2!51) e!2966511)))

(declare-fun tp!1350648 () Bool)

(declare-fun b!4755288 () Bool)

(declare-fun tp_is_empty!32099 () Bool)

(declare-fun tp_is_empty!32097 () Bool)

(assert (=> b!4755288 (= e!2966508 (and tp_is_empty!32097 tp_is_empty!32099 tp!1350648))))

(declare-fun b!4755289 () Bool)

(declare-fun res!2017341 () Bool)

(assert (=> b!4755289 (=> (not res!2017341) (not e!2966510))))

(assert (=> b!4755289 (= res!2017341 (is-Cons!53141 l!13115))))

(declare-fun b!4755290 () Bool)

(assert (=> b!4755290 (= e!2966509 true)))

(declare-fun addToMapMapFromBucket!1611 (List!53265 ListMap!5647) ListMap!5647)

(assert (=> b!4755290 (eq!1264 (addToMapMapFromBucket!1611 (t!360609 l!13115) lt!1922266) (addToMapMapFromBucket!1611 (t!360609 l!13115) lt!1922269))))

(declare-fun lt!1922267 () Unit!137540)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!127 (ListMap!5647 ListMap!5647 List!53265) Unit!137540)

(assert (=> b!4755290 (= lt!1922267 (lemmaAddToMapFromBucketPreservesEquivalence!127 lt!1922266 lt!1922269 (t!360609 l!13115)))))

(assert (= (and start!486118 res!2017340) b!4755284))

(assert (= (and b!4755284 res!2017343) b!4755289))

(assert (= (and b!4755289 res!2017341) b!4755285))

(assert (= (and b!4755285 (not res!2017342)) b!4755290))

(assert (= (and start!486118 (is-Cons!53141 l!13115)) b!4755288))

(assert (= start!486118 b!4755287))

(assert (= start!486118 b!4755286))

(declare-fun m!5725093 () Bool)

(assert (=> b!4755284 m!5725093))

(declare-fun m!5725095 () Bool)

(assert (=> b!4755285 m!5725095))

(declare-fun m!5725097 () Bool)

(assert (=> b!4755285 m!5725097))

(declare-fun m!5725099 () Bool)

(assert (=> b!4755285 m!5725099))

(declare-fun m!5725101 () Bool)

(assert (=> b!4755285 m!5725101))

(declare-fun m!5725103 () Bool)

(assert (=> b!4755285 m!5725103))

(declare-fun m!5725105 () Bool)

(assert (=> start!486118 m!5725105))

(declare-fun m!5725107 () Bool)

(assert (=> start!486118 m!5725107))

(declare-fun m!5725109 () Bool)

(assert (=> start!486118 m!5725109))

(declare-fun m!5725111 () Bool)

(assert (=> b!4755290 m!5725111))

(declare-fun m!5725113 () Bool)

(assert (=> b!4755290 m!5725113))

(assert (=> b!4755290 m!5725111))

(assert (=> b!4755290 m!5725113))

(declare-fun m!5725115 () Bool)

(assert (=> b!4755290 m!5725115))

(declare-fun m!5725117 () Bool)

(assert (=> b!4755290 m!5725117))

(push 1)

(assert (not b!4755287))

(assert tp_is_empty!32099)

(assert (not b!4755286))

(assert (not b!4755290))

(assert (not b!4755288))

(assert tp_is_empty!32097)

(assert (not b!4755285))

(assert (not b!4755284))

(assert (not start!486118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

