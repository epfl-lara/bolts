; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485088 () Bool)

(assert start!485088)

(declare-fun b!4748433 () Bool)

(declare-fun res!2013036 () Bool)

(declare-fun e!2961872 () Bool)

(assert (=> b!4748433 (=> (not res!2013036) (not e!2961872))))

(declare-datatypes ((K!14415 0))(
  ( (K!14416 (val!19803 Int)) )
))
(declare-datatypes ((V!14661 0))(
  ( (V!14662 (val!19804 Int)) )
))
(declare-datatypes ((tuple2!54772 0))(
  ( (tuple2!54773 (_1!30680 K!14415) (_2!30680 V!14661)) )
))
(declare-fun t!14174 () tuple2!54772)

(declare-datatypes ((List!53164 0))(
  ( (Nil!53040) (Cons!53040 (h!59437 tuple2!54772) (t!360484 List!53164)) )
))
(declare-fun l!14304 () List!53164)

(declare-fun noDuplicateKeys!2106 (List!53164) Bool)

(assert (=> b!4748433 (= res!2013036 (noDuplicateKeys!2106 (Cons!53040 t!14174 l!14304)))))

(declare-fun b!4748434 () Bool)

(declare-fun tp_is_empty!31719 () Bool)

(declare-fun tp_is_empty!31717 () Bool)

(declare-fun e!2961869 () Bool)

(declare-fun tp!1349844 () Bool)

(assert (=> b!4748434 (= e!2961869 (and tp_is_empty!31717 tp_is_empty!31719 tp!1349844))))

(declare-fun b!4748435 () Bool)

(declare-fun res!2013039 () Bool)

(declare-fun e!2961870 () Bool)

(assert (=> b!4748435 (=> (not res!2013039) (not e!2961870))))

(declare-datatypes ((ListMap!5461 0))(
  ( (ListMap!5462 (toList!6076 List!53164)) )
))
(declare-fun lt!1911180 () ListMap!5461)

(declare-fun acc!1214 () ListMap!5461)

(declare-fun eq!1183 (ListMap!5461 ListMap!5461) Bool)

(declare-fun addToMapMapFromBucket!1532 (List!53164 ListMap!5461) ListMap!5461)

(assert (=> b!4748435 (= res!2013039 (eq!1183 lt!1911180 (addToMapMapFromBucket!1532 l!14304 acc!1214)))))

(declare-fun b!4748437 () Bool)

(assert (=> b!4748437 (= e!2961872 (not true))))

(assert (=> b!4748437 e!2961870))

(declare-fun res!2013038 () Bool)

(assert (=> b!4748437 (=> (not res!2013038) (not e!2961870))))

(declare-fun lt!1911179 () ListMap!5461)

(declare-fun +!2342 (ListMap!5461 tuple2!54772) ListMap!5461)

(assert (=> b!4748437 (= res!2013038 (eq!1183 lt!1911179 (+!2342 lt!1911180 t!14174)))))

(declare-fun lt!1911178 () ListMap!5461)

(assert (=> b!4748437 (= lt!1911179 (addToMapMapFromBucket!1532 (Cons!53040 t!14174 (t!360484 l!14304)) lt!1911178))))

(declare-datatypes ((Unit!134885 0))(
  ( (Unit!134886) )
))
(declare-fun lt!1911181 () Unit!134885)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!430 (tuple2!54772 List!53164 ListMap!5461) Unit!134885)

(assert (=> b!4748437 (= lt!1911181 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!430 t!14174 (t!360484 l!14304) lt!1911178))))

(assert (=> b!4748437 (= lt!1911180 (addToMapMapFromBucket!1532 (t!360484 l!14304) lt!1911178))))

(assert (=> b!4748437 (= lt!1911178 (+!2342 acc!1214 (h!59437 l!14304)))))

(declare-fun b!4748438 () Bool)

(declare-fun e!2961871 () Bool)

(declare-fun tp!1349845 () Bool)

(assert (=> b!4748438 (= e!2961871 tp!1349845)))

(declare-fun b!4748439 () Bool)

(declare-fun res!2013035 () Bool)

(assert (=> b!4748439 (=> (not res!2013035) (not e!2961872))))

(get-info :version)

(assert (=> b!4748439 (= res!2013035 (not ((_ is Nil!53040) l!14304)))))

(declare-fun b!4748436 () Bool)

(assert (=> b!4748436 (= e!2961870 (eq!1183 lt!1911179 (addToMapMapFromBucket!1532 (t!360484 l!14304) (+!2342 lt!1911178 t!14174))))))

(declare-fun res!2013037 () Bool)

(assert (=> start!485088 (=> (not res!2013037) (not e!2961872))))

(assert (=> start!485088 (= res!2013037 (noDuplicateKeys!2106 l!14304))))

(assert (=> start!485088 e!2961872))

(assert (=> start!485088 e!2961869))

(assert (=> start!485088 (and tp_is_empty!31717 tp_is_empty!31719)))

(declare-fun inv!68287 (ListMap!5461) Bool)

(assert (=> start!485088 (and (inv!68287 acc!1214) e!2961871)))

(assert (= (and start!485088 res!2013037) b!4748433))

(assert (= (and b!4748433 res!2013036) b!4748439))

(assert (= (and b!4748439 res!2013035) b!4748437))

(assert (= (and b!4748437 res!2013038) b!4748435))

(assert (= (and b!4748435 res!2013039) b!4748436))

(assert (= (and start!485088 ((_ is Cons!53040) l!14304)) b!4748434))

(assert (= start!485088 b!4748438))

(declare-fun m!5707033 () Bool)

(assert (=> b!4748433 m!5707033))

(declare-fun m!5707035 () Bool)

(assert (=> b!4748436 m!5707035))

(assert (=> b!4748436 m!5707035))

(declare-fun m!5707037 () Bool)

(assert (=> b!4748436 m!5707037))

(assert (=> b!4748436 m!5707037))

(declare-fun m!5707039 () Bool)

(assert (=> b!4748436 m!5707039))

(declare-fun m!5707041 () Bool)

(assert (=> b!4748437 m!5707041))

(declare-fun m!5707043 () Bool)

(assert (=> b!4748437 m!5707043))

(declare-fun m!5707045 () Bool)

(assert (=> b!4748437 m!5707045))

(declare-fun m!5707047 () Bool)

(assert (=> b!4748437 m!5707047))

(assert (=> b!4748437 m!5707041))

(declare-fun m!5707049 () Bool)

(assert (=> b!4748437 m!5707049))

(declare-fun m!5707051 () Bool)

(assert (=> b!4748437 m!5707051))

(declare-fun m!5707053 () Bool)

(assert (=> start!485088 m!5707053))

(declare-fun m!5707055 () Bool)

(assert (=> start!485088 m!5707055))

(declare-fun m!5707057 () Bool)

(assert (=> b!4748435 m!5707057))

(assert (=> b!4748435 m!5707057))

(declare-fun m!5707059 () Bool)

(assert (=> b!4748435 m!5707059))

(check-sat (not b!4748436) (not b!4748433) tp_is_empty!31719 (not b!4748437) (not b!4748434) (not b!4748438) tp_is_empty!31717 (not start!485088) (not b!4748435))
(check-sat)
