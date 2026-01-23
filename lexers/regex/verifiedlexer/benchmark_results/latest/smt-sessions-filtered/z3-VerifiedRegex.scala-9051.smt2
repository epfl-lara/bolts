; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486124 () Bool)

(assert start!486124)

(declare-fun res!2017379 () Bool)

(declare-fun e!2966555 () Bool)

(assert (=> start!486124 (=> (not res!2017379) (not e!2966555))))

(declare-datatypes ((K!14660 0))(
  ( (K!14661 (val!19999 Int)) )
))
(declare-datatypes ((V!14906 0))(
  ( (V!14907 (val!20000 Int)) )
))
(declare-datatypes ((tuple2!54968 0))(
  ( (tuple2!54969 (_1!30778 K!14660) (_2!30778 V!14906)) )
))
(declare-datatypes ((List!53268 0))(
  ( (Nil!53144) (Cons!53144 (h!59541 tuple2!54968) (t!360612 List!53268)) )
))
(declare-fun l!13115 () List!53268)

(declare-fun noDuplicateKeys!2204 (List!53268) Bool)

(assert (=> start!486124 (= res!2017379 (noDuplicateKeys!2204 l!13115))))

(assert (=> start!486124 e!2966555))

(declare-fun e!2966556 () Bool)

(assert (=> start!486124 e!2966556))

(declare-datatypes ((ListMap!5653 0))(
  ( (ListMap!5654 (toList!6172 List!53268)) )
))
(declare-fun lhm1!51 () ListMap!5653)

(declare-fun e!2966554 () Bool)

(declare-fun inv!68530 (ListMap!5653) Bool)

(assert (=> start!486124 (and (inv!68530 lhm1!51) e!2966554)))

(declare-fun lhm2!51 () ListMap!5653)

(declare-fun e!2966553 () Bool)

(assert (=> start!486124 (and (inv!68530 lhm2!51) e!2966553)))

(declare-fun b!4755347 () Bool)

(declare-fun res!2017377 () Bool)

(assert (=> b!4755347 (=> (not res!2017377) (not e!2966555))))

(get-info :version)

(assert (=> b!4755347 (= res!2017377 ((_ is Cons!53144) l!13115))))

(declare-fun b!4755348 () Bool)

(declare-fun tp!1350677 () Bool)

(assert (=> b!4755348 (= e!2966554 tp!1350677)))

(declare-fun b!4755349 () Bool)

(declare-fun tp!1350676 () Bool)

(assert (=> b!4755349 (= e!2966553 tp!1350676)))

(declare-fun b!4755350 () Bool)

(declare-fun res!2017376 () Bool)

(assert (=> b!4755350 (=> (not res!2017376) (not e!2966555))))

(declare-fun eq!1267 (ListMap!5653 ListMap!5653) Bool)

(assert (=> b!4755350 (= res!2017376 (eq!1267 lhm1!51 lhm2!51))))

(declare-fun b!4755351 () Bool)

(declare-fun e!2966552 () Bool)

(assert (=> b!4755351 (= e!2966552 true)))

(declare-fun lt!1922310 () ListMap!5653)

(declare-fun addToMapMapFromBucket!1614 (List!53268 ListMap!5653) ListMap!5653)

(assert (=> b!4755351 (= lt!1922310 (addToMapMapFromBucket!1614 l!13115 lhm1!51))))

(declare-fun lt!1922308 () ListMap!5653)

(declare-fun lt!1922311 () ListMap!5653)

(assert (=> b!4755351 (eq!1267 (addToMapMapFromBucket!1614 (t!360612 l!13115) lt!1922308) (addToMapMapFromBucket!1614 (t!360612 l!13115) lt!1922311))))

(declare-datatypes ((Unit!137546 0))(
  ( (Unit!137547) )
))
(declare-fun lt!1922309 () Unit!137546)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!130 (ListMap!5653 ListMap!5653 List!53268) Unit!137546)

(assert (=> b!4755351 (= lt!1922309 (lemmaAddToMapFromBucketPreservesEquivalence!130 lt!1922308 lt!1922311 (t!360612 l!13115)))))

(declare-fun tp_is_empty!32111 () Bool)

(declare-fun b!4755352 () Bool)

(declare-fun tp_is_empty!32109 () Bool)

(declare-fun tp!1350675 () Bool)

(assert (=> b!4755352 (= e!2966556 (and tp_is_empty!32109 tp_is_empty!32111 tp!1350675))))

(declare-fun b!4755353 () Bool)

(assert (=> b!4755353 (= e!2966555 (not e!2966552))))

(declare-fun res!2017378 () Bool)

(assert (=> b!4755353 (=> res!2017378 e!2966552)))

(assert (=> b!4755353 (= res!2017378 (not (noDuplicateKeys!2204 (t!360612 l!13115))))))

(assert (=> b!4755353 (eq!1267 lt!1922308 lt!1922311)))

(declare-fun lt!1922307 () Unit!137546)

(declare-fun lemmaAddToEqMapsPreservesEq!122 (ListMap!5653 ListMap!5653 K!14660 V!14906) Unit!137546)

(assert (=> b!4755353 (= lt!1922307 (lemmaAddToEqMapsPreservesEq!122 lhm1!51 lhm2!51 (_1!30778 (h!59541 l!13115)) (_2!30778 (h!59541 l!13115))))))

(declare-fun +!2438 (ListMap!5653 tuple2!54968) ListMap!5653)

(assert (=> b!4755353 (= lt!1922311 (+!2438 lhm2!51 (h!59541 l!13115)))))

(assert (=> b!4755353 (= lt!1922308 (+!2438 lhm1!51 (h!59541 l!13115)))))

(assert (= (and start!486124 res!2017379) b!4755350))

(assert (= (and b!4755350 res!2017376) b!4755347))

(assert (= (and b!4755347 res!2017377) b!4755353))

(assert (= (and b!4755353 (not res!2017378)) b!4755351))

(assert (= (and start!486124 ((_ is Cons!53144) l!13115)) b!4755352))

(assert (= start!486124 b!4755348))

(assert (= start!486124 b!4755349))

(declare-fun m!5725173 () Bool)

(assert (=> start!486124 m!5725173))

(declare-fun m!5725175 () Bool)

(assert (=> start!486124 m!5725175))

(declare-fun m!5725177 () Bool)

(assert (=> start!486124 m!5725177))

(declare-fun m!5725179 () Bool)

(assert (=> b!4755350 m!5725179))

(declare-fun m!5725181 () Bool)

(assert (=> b!4755351 m!5725181))

(declare-fun m!5725183 () Bool)

(assert (=> b!4755351 m!5725183))

(declare-fun m!5725185 () Bool)

(assert (=> b!4755351 m!5725185))

(declare-fun m!5725187 () Bool)

(assert (=> b!4755351 m!5725187))

(assert (=> b!4755351 m!5725185))

(assert (=> b!4755351 m!5725183))

(declare-fun m!5725189 () Bool)

(assert (=> b!4755351 m!5725189))

(declare-fun m!5725191 () Bool)

(assert (=> b!4755353 m!5725191))

(declare-fun m!5725193 () Bool)

(assert (=> b!4755353 m!5725193))

(declare-fun m!5725195 () Bool)

(assert (=> b!4755353 m!5725195))

(declare-fun m!5725197 () Bool)

(assert (=> b!4755353 m!5725197))

(declare-fun m!5725199 () Bool)

(assert (=> b!4755353 m!5725199))

(check-sat tp_is_empty!32111 (not b!4755350) (not b!4755352) (not b!4755353) (not b!4755351) tp_is_empty!32109 (not b!4755348) (not b!4755349) (not start!486124))
(check-sat)
