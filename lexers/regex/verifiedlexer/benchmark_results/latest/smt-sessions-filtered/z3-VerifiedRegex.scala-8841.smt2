; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472352 () Bool)

(assert start!472352)

(declare-fun b!4678835 () Bool)

(declare-fun e!2919200 () Bool)

(declare-fun e!2919202 () Bool)

(assert (=> b!4678835 (= e!2919200 e!2919202)))

(declare-fun res!1971321 () Bool)

(assert (=> b!4678835 (=> res!1971321 e!2919202)))

(declare-datatypes ((K!13610 0))(
  ( (K!13611 (val!19159 Int)) )
))
(declare-datatypes ((V!13856 0))(
  ( (V!13857 (val!19160 Int)) )
))
(declare-datatypes ((tuple2!53530 0))(
  ( (tuple2!53531 (_1!30059 K!13610) (_2!30059 V!13856)) )
))
(declare-datatypes ((List!52355 0))(
  ( (Nil!52231) (Cons!52231 (h!58438 tuple2!53530) (t!359505 List!52355)) )
))
(declare-datatypes ((ListMap!4821 0))(
  ( (ListMap!4822 (toList!5457 List!52355)) )
))
(declare-fun lt!1838466 () ListMap!4821)

(declare-fun key!4653 () K!13610)

(declare-fun lt!1838472 () ListMap!4821)

(declare-fun -!648 (ListMap!4821 K!13610) ListMap!4821)

(assert (=> b!4678835 (= res!1971321 (not (= (-!648 lt!1838472 key!4653) lt!1838466)))))

(declare-fun oldBucket!34 () List!52355)

(declare-fun +!2086 (ListMap!4821 tuple2!53530) ListMap!4821)

(assert (=> b!4678835 (= (-!648 (+!2086 lt!1838466 (tuple2!53531 key!4653 (_2!30059 (h!58438 oldBucket!34)))) key!4653) lt!1838466)))

(declare-datatypes ((Unit!122233 0))(
  ( (Unit!122234) )
))
(declare-fun lt!1838475 () Unit!122233)

(declare-fun addThenRemoveForNewKeyIsSame!39 (ListMap!4821 K!13610 V!13856) Unit!122233)

(assert (=> b!4678835 (= lt!1838475 (addThenRemoveForNewKeyIsSame!39 lt!1838466 key!4653 (_2!30059 (h!58438 oldBucket!34))))))

(declare-fun b!4678836 () Bool)

(declare-fun res!1971326 () Bool)

(declare-fun e!2919211 () Bool)

(assert (=> b!4678836 (=> res!1971326 e!2919211)))

(declare-fun lt!1838476 () ListMap!4821)

(assert (=> b!4678836 (= res!1971326 (not (= lt!1838466 lt!1838476)))))

(declare-fun b!4678837 () Bool)

(declare-fun e!2919212 () Bool)

(declare-fun e!2919206 () Bool)

(assert (=> b!4678837 (= e!2919212 e!2919206)))

(declare-fun res!1971332 () Bool)

(assert (=> b!4678837 (=> (not res!1971332) (not e!2919206))))

(declare-datatypes ((tuple2!53532 0))(
  ( (tuple2!53533 (_1!30060 (_ BitVec 64)) (_2!30060 List!52355)) )
))
(declare-datatypes ((List!52356 0))(
  ( (Nil!52232) (Cons!52232 (h!58439 tuple2!53532) (t!359506 List!52356)) )
))
(declare-datatypes ((ListLongMap!3987 0))(
  ( (ListLongMap!3988 (toList!5458 List!52356)) )
))
(declare-fun lm!2023 () ListLongMap!3987)

(declare-fun lt!1838473 () tuple2!53532)

(declare-fun head!9859 (List!52356) tuple2!53532)

(assert (=> b!4678837 (= res!1971332 (= (head!9859 (toList!5458 lm!2023)) lt!1838473))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4678837 (= lt!1838473 (tuple2!53533 hash!405 oldBucket!34))))

(declare-fun b!4678838 () Bool)

(declare-fun res!1971320 () Bool)

(assert (=> b!4678838 (=> (not res!1971320) (not e!2919212))))

(declare-datatypes ((Hashable!6153 0))(
  ( (HashableExt!6152 (__x!31856 Int)) )
))
(declare-fun hashF!1323 () Hashable!6153)

(declare-fun newBucket!218 () List!52355)

(declare-fun allKeysSameHash!1610 (List!52355 (_ BitVec 64) Hashable!6153) Bool)

(assert (=> b!4678838 (= res!1971320 (allKeysSameHash!1610 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4678839 () Bool)

(declare-fun e!2919201 () Bool)

(declare-fun e!2919210 () Bool)

(assert (=> b!4678839 (= e!2919201 e!2919210)))

(declare-fun res!1971316 () Bool)

(assert (=> b!4678839 (=> res!1971316 e!2919210)))

(declare-fun lt!1838464 () ListMap!4821)

(declare-fun addToMapMapFromBucket!1216 (List!52355 ListMap!4821) ListMap!4821)

(assert (=> b!4678839 (= res!1971316 (not (= lt!1838466 (addToMapMapFromBucket!1216 newBucket!218 lt!1838464))))))

(declare-fun lt!1838471 () List!52355)

(assert (=> b!4678839 (= lt!1838466 (addToMapMapFromBucket!1216 lt!1838471 lt!1838464))))

(declare-fun b!4678840 () Bool)

(declare-fun res!1971325 () Bool)

(declare-fun e!2919205 () Bool)

(assert (=> b!4678840 (=> (not res!1971325) (not e!2919205))))

(declare-fun removePairForKey!1379 (List!52355 K!13610) List!52355)

(assert (=> b!4678840 (= res!1971325 (= (removePairForKey!1379 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4678841 () Bool)

(declare-fun e!2919207 () Bool)

(assert (=> b!4678841 (= e!2919207 e!2919201)))

(declare-fun res!1971333 () Bool)

(assert (=> b!4678841 (=> res!1971333 e!2919201)))

(declare-fun extractMap!1810 (List!52356) ListMap!4821)

(assert (=> b!4678841 (= res!1971333 (not (= lt!1838476 (extractMap!1810 (Cons!52232 (tuple2!53533 hash!405 newBucket!218) (t!359506 (toList!5458 lm!2023)))))))))

(declare-fun lt!1838468 () List!52356)

(assert (=> b!4678841 (= lt!1838476 (extractMap!1810 lt!1838468))))

(assert (=> b!4678841 (= lt!1838468 (Cons!52232 (tuple2!53533 hash!405 lt!1838471) (t!359506 (toList!5458 lm!2023))))))

(declare-fun b!4678842 () Bool)

(declare-fun e!2919209 () Bool)

(declare-fun tp!1344905 () Bool)

(assert (=> b!4678842 (= e!2919209 tp!1344905)))

(declare-fun res!1971323 () Bool)

(assert (=> start!472352 (=> (not res!1971323) (not e!2919205))))

(declare-fun lambda!204287 () Int)

(declare-fun forall!11213 (List!52356 Int) Bool)

(assert (=> start!472352 (= res!1971323 (forall!11213 (toList!5458 lm!2023) lambda!204287))))

(assert (=> start!472352 e!2919205))

(declare-fun inv!67484 (ListLongMap!3987) Bool)

(assert (=> start!472352 (and (inv!67484 lm!2023) e!2919209)))

(declare-fun tp_is_empty!30429 () Bool)

(assert (=> start!472352 tp_is_empty!30429))

(declare-fun e!2919208 () Bool)

(assert (=> start!472352 e!2919208))

(assert (=> start!472352 true))

(declare-fun e!2919204 () Bool)

(assert (=> start!472352 e!2919204))

(declare-fun b!4678843 () Bool)

(declare-fun res!1971329 () Bool)

(assert (=> b!4678843 (=> res!1971329 e!2919211)))

(declare-fun containsKey!2925 (List!52355 K!13610) Bool)

(assert (=> b!4678843 (= res!1971329 (containsKey!2925 lt!1838471 key!4653))))

(declare-fun b!4678844 () Bool)

(declare-fun res!1971318 () Bool)

(assert (=> b!4678844 (=> (not res!1971318) (not e!2919205))))

(declare-fun noDuplicateKeys!1784 (List!52355) Bool)

(assert (=> b!4678844 (= res!1971318 (noDuplicateKeys!1784 oldBucket!34))))

(declare-fun b!4678845 () Bool)

(assert (=> b!4678845 (= e!2919210 e!2919211)))

(declare-fun res!1971317 () Bool)

(assert (=> b!4678845 (=> res!1971317 e!2919211)))

(declare-fun eq!973 (ListMap!4821 ListMap!4821) Bool)

(assert (=> b!4678845 (= res!1971317 (not (eq!973 lt!1838472 (addToMapMapFromBucket!1216 oldBucket!34 lt!1838464))))))

(assert (=> b!4678845 (= lt!1838472 (+!2086 lt!1838466 (h!58438 oldBucket!34)))))

(declare-fun lt!1838470 () tuple2!53530)

(assert (=> b!4678845 (eq!973 (addToMapMapFromBucket!1216 (Cons!52231 lt!1838470 lt!1838471) lt!1838464) (+!2086 lt!1838466 lt!1838470))))

(declare-fun lt!1838465 () Unit!122233)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!222 (tuple2!53530 List!52355 ListMap!4821) Unit!122233)

(assert (=> b!4678845 (= lt!1838465 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!222 lt!1838470 lt!1838471 lt!1838464))))

(declare-fun head!9860 (List!52355) tuple2!53530)

(assert (=> b!4678845 (= lt!1838470 (head!9860 oldBucket!34))))

(declare-fun b!4678846 () Bool)

(declare-fun res!1971314 () Bool)

(assert (=> b!4678846 (=> (not res!1971314) (not e!2919205))))

(assert (=> b!4678846 (= res!1971314 (allKeysSameHash!1610 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp!1344907 () Bool)

(declare-fun tp_is_empty!30431 () Bool)

(declare-fun b!4678847 () Bool)

(assert (=> b!4678847 (= e!2919208 (and tp_is_empty!30429 tp_is_empty!30431 tp!1344907))))

(declare-fun b!4678848 () Bool)

(declare-fun res!1971327 () Bool)

(assert (=> b!4678848 (=> (not res!1971327) (not e!2919206))))

(get-info :version)

(assert (=> b!4678848 (= res!1971327 ((_ is Cons!52232) (toList!5458 lm!2023)))))

(declare-fun b!4678849 () Bool)

(declare-fun res!1971328 () Bool)

(assert (=> b!4678849 (=> (not res!1971328) (not e!2919205))))

(assert (=> b!4678849 (= res!1971328 (noDuplicateKeys!1784 newBucket!218))))

(declare-fun b!4678850 () Bool)

(assert (=> b!4678850 (= e!2919202 true)))

(declare-fun lt!1838474 () Bool)

(assert (=> b!4678850 (= lt!1838474 (eq!973 lt!1838472 (extractMap!1810 (Cons!52232 lt!1838473 (t!359506 (toList!5458 lm!2023))))))))

(declare-fun b!4678851 () Bool)

(declare-fun res!1971324 () Bool)

(assert (=> b!4678851 (=> (not res!1971324) (not e!2919212))))

(declare-fun hash!3958 (Hashable!6153 K!13610) (_ BitVec 64))

(assert (=> b!4678851 (= res!1971324 (= (hash!3958 hashF!1323 key!4653) hash!405))))

(declare-fun b!4678852 () Bool)

(declare-fun e!2919203 () Bool)

(assert (=> b!4678852 (= e!2919206 (not e!2919203))))

(declare-fun res!1971319 () Bool)

(assert (=> b!4678852 (=> res!1971319 e!2919203)))

(assert (=> b!4678852 (= res!1971319 (or (not ((_ is Cons!52231) oldBucket!34)) (not (= (_1!30059 (h!58438 oldBucket!34)) key!4653))))))

(declare-fun lt!1838469 () ListMap!4821)

(assert (=> b!4678852 (= lt!1838469 (addToMapMapFromBucket!1216 (_2!30060 (h!58439 (toList!5458 lm!2023))) lt!1838464))))

(assert (=> b!4678852 (= lt!1838464 (extractMap!1810 (t!359506 (toList!5458 lm!2023))))))

(declare-fun tail!8422 (ListLongMap!3987) ListLongMap!3987)

(assert (=> b!4678852 (= (t!359506 (toList!5458 lm!2023)) (toList!5458 (tail!8422 lm!2023)))))

(declare-fun b!4678853 () Bool)

(declare-fun tp!1344906 () Bool)

(assert (=> b!4678853 (= e!2919204 (and tp_is_empty!30429 tp_is_empty!30431 tp!1344906))))

(declare-fun b!4678854 () Bool)

(assert (=> b!4678854 (= e!2919205 e!2919212)))

(declare-fun res!1971322 () Bool)

(assert (=> b!4678854 (=> (not res!1971322) (not e!2919212))))

(declare-fun contains!15368 (ListMap!4821 K!13610) Bool)

(assert (=> b!4678854 (= res!1971322 (contains!15368 lt!1838469 key!4653))))

(assert (=> b!4678854 (= lt!1838469 (extractMap!1810 (toList!5458 lm!2023)))))

(declare-fun b!4678855 () Bool)

(assert (=> b!4678855 (= e!2919203 e!2919207)))

(declare-fun res!1971315 () Bool)

(assert (=> b!4678855 (=> res!1971315 e!2919207)))

(assert (=> b!4678855 (= res!1971315 (not (= lt!1838471 newBucket!218)))))

(declare-fun tail!8423 (List!52355) List!52355)

(assert (=> b!4678855 (= lt!1838471 (tail!8423 oldBucket!34))))

(declare-fun b!4678856 () Bool)

(assert (=> b!4678856 (= e!2919211 e!2919200)))

(declare-fun res!1971331 () Bool)

(assert (=> b!4678856 (=> res!1971331 e!2919200)))

(assert (=> b!4678856 (= res!1971331 (contains!15368 lt!1838466 key!4653))))

(assert (=> b!4678856 (not (contains!15368 lt!1838476 key!4653))))

(declare-fun lt!1838467 () Unit!122233)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!384 (ListLongMap!3987 K!13610 Hashable!6153) Unit!122233)

(assert (=> b!4678856 (= lt!1838467 (lemmaNotInItsHashBucketThenNotInMap!384 (ListLongMap!3988 lt!1838468) key!4653 hashF!1323))))

(declare-fun b!4678857 () Bool)

(declare-fun res!1971330 () Bool)

(assert (=> b!4678857 (=> (not res!1971330) (not e!2919212))))

(declare-fun allKeysSameHashInMap!1698 (ListLongMap!3987 Hashable!6153) Bool)

(assert (=> b!4678857 (= res!1971330 (allKeysSameHashInMap!1698 lm!2023 hashF!1323))))

(assert (= (and start!472352 res!1971323) b!4678844))

(assert (= (and b!4678844 res!1971318) b!4678849))

(assert (= (and b!4678849 res!1971328) b!4678840))

(assert (= (and b!4678840 res!1971325) b!4678846))

(assert (= (and b!4678846 res!1971314) b!4678854))

(assert (= (and b!4678854 res!1971322) b!4678851))

(assert (= (and b!4678851 res!1971324) b!4678838))

(assert (= (and b!4678838 res!1971320) b!4678857))

(assert (= (and b!4678857 res!1971330) b!4678837))

(assert (= (and b!4678837 res!1971332) b!4678848))

(assert (= (and b!4678848 res!1971327) b!4678852))

(assert (= (and b!4678852 (not res!1971319)) b!4678855))

(assert (= (and b!4678855 (not res!1971315)) b!4678841))

(assert (= (and b!4678841 (not res!1971333)) b!4678839))

(assert (= (and b!4678839 (not res!1971316)) b!4678845))

(assert (= (and b!4678845 (not res!1971317)) b!4678843))

(assert (= (and b!4678843 (not res!1971329)) b!4678836))

(assert (= (and b!4678836 (not res!1971326)) b!4678856))

(assert (= (and b!4678856 (not res!1971331)) b!4678835))

(assert (= (and b!4678835 (not res!1971321)) b!4678850))

(assert (= start!472352 b!4678842))

(assert (= (and start!472352 ((_ is Cons!52231) oldBucket!34)) b!4678847))

(assert (= (and start!472352 ((_ is Cons!52231) newBucket!218)) b!4678853))

(declare-fun m!5574177 () Bool)

(assert (=> b!4678845 m!5574177))

(declare-fun m!5574179 () Bool)

(assert (=> b!4678845 m!5574179))

(assert (=> b!4678845 m!5574179))

(declare-fun m!5574181 () Bool)

(assert (=> b!4678845 m!5574181))

(declare-fun m!5574183 () Bool)

(assert (=> b!4678845 m!5574183))

(declare-fun m!5574185 () Bool)

(assert (=> b!4678845 m!5574185))

(assert (=> b!4678845 m!5574177))

(declare-fun m!5574187 () Bool)

(assert (=> b!4678845 m!5574187))

(assert (=> b!4678845 m!5574181))

(declare-fun m!5574189 () Bool)

(assert (=> b!4678845 m!5574189))

(declare-fun m!5574191 () Bool)

(assert (=> b!4678845 m!5574191))

(declare-fun m!5574193 () Bool)

(assert (=> b!4678835 m!5574193))

(declare-fun m!5574195 () Bool)

(assert (=> b!4678835 m!5574195))

(assert (=> b!4678835 m!5574195))

(declare-fun m!5574197 () Bool)

(assert (=> b!4678835 m!5574197))

(declare-fun m!5574199 () Bool)

(assert (=> b!4678835 m!5574199))

(declare-fun m!5574201 () Bool)

(assert (=> b!4678852 m!5574201))

(declare-fun m!5574203 () Bool)

(assert (=> b!4678852 m!5574203))

(declare-fun m!5574205 () Bool)

(assert (=> b!4678852 m!5574205))

(declare-fun m!5574207 () Bool)

(assert (=> b!4678855 m!5574207))

(declare-fun m!5574209 () Bool)

(assert (=> b!4678857 m!5574209))

(declare-fun m!5574211 () Bool)

(assert (=> b!4678851 m!5574211))

(declare-fun m!5574213 () Bool)

(assert (=> b!4678839 m!5574213))

(declare-fun m!5574215 () Bool)

(assert (=> b!4678839 m!5574215))

(declare-fun m!5574217 () Bool)

(assert (=> b!4678837 m!5574217))

(declare-fun m!5574219 () Bool)

(assert (=> b!4678841 m!5574219))

(declare-fun m!5574221 () Bool)

(assert (=> b!4678841 m!5574221))

(declare-fun m!5574223 () Bool)

(assert (=> b!4678854 m!5574223))

(declare-fun m!5574225 () Bool)

(assert (=> b!4678854 m!5574225))

(declare-fun m!5574227 () Bool)

(assert (=> start!472352 m!5574227))

(declare-fun m!5574229 () Bool)

(assert (=> start!472352 m!5574229))

(declare-fun m!5574231 () Bool)

(assert (=> b!4678849 m!5574231))

(declare-fun m!5574233 () Bool)

(assert (=> b!4678856 m!5574233))

(declare-fun m!5574235 () Bool)

(assert (=> b!4678856 m!5574235))

(declare-fun m!5574237 () Bool)

(assert (=> b!4678856 m!5574237))

(declare-fun m!5574239 () Bool)

(assert (=> b!4678840 m!5574239))

(declare-fun m!5574241 () Bool)

(assert (=> b!4678844 m!5574241))

(declare-fun m!5574243 () Bool)

(assert (=> b!4678838 m!5574243))

(declare-fun m!5574245 () Bool)

(assert (=> b!4678850 m!5574245))

(assert (=> b!4678850 m!5574245))

(declare-fun m!5574247 () Bool)

(assert (=> b!4678850 m!5574247))

(declare-fun m!5574249 () Bool)

(assert (=> b!4678843 m!5574249))

(declare-fun m!5574251 () Bool)

(assert (=> b!4678846 m!5574251))

(check-sat (not b!4678851) (not b!4678849) (not b!4678850) (not b!4678841) (not b!4678845) (not start!472352) (not b!4678842) (not b!4678846) tp_is_empty!30429 (not b!4678853) (not b!4678844) tp_is_empty!30431 (not b!4678855) (not b!4678847) (not b!4678843) (not b!4678854) (not b!4678838) (not b!4678856) (not b!4678840) (not b!4678835) (not b!4678839) (not b!4678852) (not b!4678857) (not b!4678837))
(check-sat)
