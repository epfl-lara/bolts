; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484464 () Bool)

(assert start!484464)

(declare-fun b!4745186 () Bool)

(declare-fun e!2959850 () Bool)

(declare-fun e!2959853 () Bool)

(assert (=> b!4745186 (= e!2959850 (not e!2959853))))

(declare-fun res!2011056 () Bool)

(assert (=> b!4745186 (=> res!2011056 e!2959853)))

(declare-datatypes ((K!14325 0))(
  ( (K!14326 (val!19731 Int)) )
))
(declare-datatypes ((V!14571 0))(
  ( (V!14572 (val!19732 Int)) )
))
(declare-datatypes ((tuple2!54674 0))(
  ( (tuple2!54675 (_1!30631 K!14325) (_2!30631 V!14571)) )
))
(declare-datatypes ((List!53109 0))(
  ( (Nil!52985) (Cons!52985 (h!59376 tuple2!54674) (t!360417 List!53109)) )
))
(declare-fun oldBucket!34 () List!53109)

(declare-fun key!4653 () K!14325)

(get-info :version)

(assert (=> b!4745186 (= res!2011056 (or (and ((_ is Cons!52985) oldBucket!34) (= (_1!30631 (h!59376 oldBucket!34)) key!4653)) (and ((_ is Cons!52985) oldBucket!34) (not (= (_1!30631 (h!59376 oldBucket!34)) key!4653))) (not ((_ is Nil!52985) oldBucket!34))))))

(declare-fun e!2959854 () Bool)

(assert (=> b!4745186 e!2959854))

(declare-fun res!2011046 () Bool)

(assert (=> b!4745186 (=> (not res!2011046) (not e!2959854))))

(declare-datatypes ((tuple2!54676 0))(
  ( (tuple2!54677 (_1!30632 (_ BitVec 64)) (_2!30632 List!53109)) )
))
(declare-datatypes ((List!53110 0))(
  ( (Nil!52986) (Cons!52986 (h!59377 tuple2!54676) (t!360418 List!53110)) )
))
(declare-datatypes ((ListLongMap!4559 0))(
  ( (ListLongMap!4560 (toList!6029 List!53110)) )
))
(declare-fun lm!2023 () ListLongMap!4559)

(declare-fun tail!9147 (ListLongMap!4559) ListLongMap!4559)

(assert (=> b!4745186 (= res!2011046 (= (t!360418 (toList!6029 lm!2023)) (toList!6029 (tail!9147 lm!2023))))))

(declare-fun b!4745187 () Bool)

(declare-fun e!2959851 () Bool)

(assert (=> b!4745187 (= e!2959851 e!2959850)))

(declare-fun res!2011050 () Bool)

(assert (=> b!4745187 (=> (not res!2011050) (not e!2959850))))

(declare-datatypes ((ListMap!5393 0))(
  ( (ListMap!5394 (toList!6030 List!53109)) )
))
(declare-fun lt!1908161 () ListMap!5393)

(declare-fun contains!16412 (ListMap!5393 K!14325) Bool)

(assert (=> b!4745187 (= res!2011050 (contains!16412 lt!1908161 key!4653))))

(declare-fun extractMap!2096 (List!53110) ListMap!5393)

(assert (=> b!4745187 (= lt!1908161 (extractMap!2096 (toList!6029 lm!2023)))))

(declare-fun b!4745188 () Bool)

(declare-fun res!2011047 () Bool)

(assert (=> b!4745188 (=> (not res!2011047) (not e!2959850))))

(declare-datatypes ((Hashable!6439 0))(
  ( (HashableExt!6438 (__x!32142 Int)) )
))
(declare-fun hashF!1323 () Hashable!6439)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4486 (Hashable!6439 K!14325) (_ BitVec 64))

(assert (=> b!4745188 (= res!2011047 (= (hash!4486 hashF!1323 key!4653) hash!405))))

(declare-fun b!4745189 () Bool)

(declare-fun res!2011053 () Bool)

(assert (=> b!4745189 (=> (not res!2011053) (not e!2959850))))

(assert (=> b!4745189 (= res!2011053 ((_ is Cons!52986) (toList!6029 lm!2023)))))

(declare-fun b!4745190 () Bool)

(declare-fun res!2011057 () Bool)

(assert (=> b!4745190 (=> (not res!2011057) (not e!2959850))))

(declare-fun head!10342 (List!53110) tuple2!54676)

(assert (=> b!4745190 (= res!2011057 (= (head!10342 (toList!6029 lm!2023)) (tuple2!54677 hash!405 oldBucket!34)))))

(declare-fun b!4745191 () Bool)

(declare-fun res!2011052 () Bool)

(assert (=> b!4745191 (=> (not res!2011052) (not e!2959851))))

(declare-fun newBucket!218 () List!53109)

(declare-fun removePairForKey!1665 (List!53109 K!14325) List!53109)

(assert (=> b!4745191 (= res!2011052 (= (removePairForKey!1665 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4745192 () Bool)

(declare-fun addToMapMapFromBucket!1500 (List!53109 ListMap!5393) ListMap!5393)

(assert (=> b!4745192 (= e!2959854 (= lt!1908161 (addToMapMapFromBucket!1500 (_2!30632 (h!59377 (toList!6029 lm!2023))) (extractMap!2096 (t!360418 (toList!6029 lm!2023))))))))

(declare-fun tp_is_empty!31573 () Bool)

(declare-fun tp!1349451 () Bool)

(declare-fun tp_is_empty!31575 () Bool)

(declare-fun e!2959849 () Bool)

(declare-fun b!4745193 () Bool)

(assert (=> b!4745193 (= e!2959849 (and tp_is_empty!31573 tp_is_empty!31575 tp!1349451))))

(declare-fun b!4745194 () Bool)

(declare-fun res!2011048 () Bool)

(assert (=> b!4745194 (=> (not res!2011048) (not e!2959851))))

(declare-fun noDuplicateKeys!2070 (List!53109) Bool)

(assert (=> b!4745194 (= res!2011048 (noDuplicateKeys!2070 oldBucket!34))))

(declare-fun b!4745195 () Bool)

(declare-fun res!2011051 () Bool)

(assert (=> b!4745195 (=> (not res!2011051) (not e!2959850))))

(declare-fun allKeysSameHashInMap!1984 (ListLongMap!4559 Hashable!6439) Bool)

(assert (=> b!4745195 (= res!2011051 (allKeysSameHashInMap!1984 lm!2023 hashF!1323))))

(declare-fun b!4745196 () Bool)

(declare-fun e!2959848 () Bool)

(declare-fun tp!1349452 () Bool)

(assert (=> b!4745196 (= e!2959848 tp!1349452)))

(declare-fun res!2011045 () Bool)

(assert (=> start!484464 (=> (not res!2011045) (not e!2959851))))

(declare-fun lambda!220108 () Int)

(declare-fun forall!11705 (List!53110 Int) Bool)

(assert (=> start!484464 (= res!2011045 (forall!11705 (toList!6029 lm!2023) lambda!220108))))

(assert (=> start!484464 e!2959851))

(declare-fun inv!68199 (ListLongMap!4559) Bool)

(assert (=> start!484464 (and (inv!68199 lm!2023) e!2959848)))

(assert (=> start!484464 tp_is_empty!31573))

(declare-fun e!2959852 () Bool)

(assert (=> start!484464 e!2959852))

(assert (=> start!484464 true))

(assert (=> start!484464 e!2959849))

(declare-fun b!4745197 () Bool)

(declare-fun res!2011054 () Bool)

(assert (=> b!4745197 (=> (not res!2011054) (not e!2959850))))

(declare-fun allKeysSameHash!1896 (List!53109 (_ BitVec 64) Hashable!6439) Bool)

(assert (=> b!4745197 (= res!2011054 (allKeysSameHash!1896 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4745198 () Bool)

(declare-fun tp!1349453 () Bool)

(assert (=> b!4745198 (= e!2959852 (and tp_is_empty!31573 tp_is_empty!31575 tp!1349453))))

(declare-fun b!4745199 () Bool)

(assert (=> b!4745199 (= e!2959853 (forall!11705 (toList!6029 lm!2023) lambda!220108))))

(declare-fun b!4745200 () Bool)

(declare-fun res!2011049 () Bool)

(assert (=> b!4745200 (=> (not res!2011049) (not e!2959851))))

(assert (=> b!4745200 (= res!2011049 (noDuplicateKeys!2070 newBucket!218))))

(declare-fun b!4745201 () Bool)

(declare-fun res!2011055 () Bool)

(assert (=> b!4745201 (=> (not res!2011055) (not e!2959851))))

(assert (=> b!4745201 (= res!2011055 (allKeysSameHash!1896 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!484464 res!2011045) b!4745194))

(assert (= (and b!4745194 res!2011048) b!4745200))

(assert (= (and b!4745200 res!2011049) b!4745191))

(assert (= (and b!4745191 res!2011052) b!4745201))

(assert (= (and b!4745201 res!2011055) b!4745187))

(assert (= (and b!4745187 res!2011050) b!4745188))

(assert (= (and b!4745188 res!2011047) b!4745197))

(assert (= (and b!4745197 res!2011054) b!4745195))

(assert (= (and b!4745195 res!2011051) b!4745190))

(assert (= (and b!4745190 res!2011057) b!4745189))

(assert (= (and b!4745189 res!2011053) b!4745186))

(assert (= (and b!4745186 res!2011046) b!4745192))

(assert (= (and b!4745186 (not res!2011056)) b!4745199))

(assert (= start!484464 b!4745196))

(assert (= (and start!484464 ((_ is Cons!52985) oldBucket!34)) b!4745198))

(assert (= (and start!484464 ((_ is Cons!52985) newBucket!218)) b!4745193))

(declare-fun m!5702069 () Bool)

(assert (=> b!4745194 m!5702069))

(declare-fun m!5702071 () Bool)

(assert (=> b!4745188 m!5702071))

(declare-fun m!5702073 () Bool)

(assert (=> b!4745191 m!5702073))

(declare-fun m!5702075 () Bool)

(assert (=> b!4745199 m!5702075))

(assert (=> start!484464 m!5702075))

(declare-fun m!5702077 () Bool)

(assert (=> start!484464 m!5702077))

(declare-fun m!5702079 () Bool)

(assert (=> b!4745187 m!5702079))

(declare-fun m!5702081 () Bool)

(assert (=> b!4745187 m!5702081))

(declare-fun m!5702083 () Bool)

(assert (=> b!4745195 m!5702083))

(declare-fun m!5702085 () Bool)

(assert (=> b!4745190 m!5702085))

(declare-fun m!5702087 () Bool)

(assert (=> b!4745200 m!5702087))

(declare-fun m!5702089 () Bool)

(assert (=> b!4745197 m!5702089))

(declare-fun m!5702091 () Bool)

(assert (=> b!4745192 m!5702091))

(assert (=> b!4745192 m!5702091))

(declare-fun m!5702093 () Bool)

(assert (=> b!4745192 m!5702093))

(declare-fun m!5702095 () Bool)

(assert (=> b!4745201 m!5702095))

(declare-fun m!5702097 () Bool)

(assert (=> b!4745186 m!5702097))

(check-sat tp_is_empty!31573 (not b!4745196) (not b!4745199) (not b!4745191) (not b!4745192) (not b!4745188) (not b!4745200) (not b!4745198) (not b!4745186) (not b!4745197) (not b!4745195) (not b!4745201) (not b!4745194) tp_is_empty!31575 (not b!4745193) (not start!484464) (not b!4745187) (not b!4745190))
(check-sat)
