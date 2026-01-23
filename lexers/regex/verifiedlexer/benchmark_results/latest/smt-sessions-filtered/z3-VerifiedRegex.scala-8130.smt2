; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418460 () Bool)

(assert start!418460)

(declare-fun b!4337273 () Bool)

(declare-fun e!2698781 () Bool)

(declare-fun e!2698786 () Bool)

(assert (=> b!4337273 (= e!2698781 e!2698786)))

(declare-fun res!1779229 () Bool)

(assert (=> b!4337273 (=> res!1779229 e!2698786)))

(declare-datatypes ((V!10301 0))(
  ( (V!10302 (val!16315 Int)) )
))
(declare-datatypes ((K!10055 0))(
  ( (K!10056 (val!16316 Int)) )
))
(declare-datatypes ((tuple2!47950 0))(
  ( (tuple2!47951 (_1!27269 K!10055) (_2!27269 V!10301)) )
))
(declare-datatypes ((List!48823 0))(
  ( (Nil!48699) (Cons!48699 (h!54206 tuple2!47950) (t!355739 List!48823)) )
))
(declare-datatypes ((tuple2!47952 0))(
  ( (tuple2!47953 (_1!27270 (_ BitVec 64)) (_2!27270 List!48823)) )
))
(declare-datatypes ((List!48824 0))(
  ( (Nil!48700) (Cons!48700 (h!54207 tuple2!47952) (t!355740 List!48824)) )
))
(declare-datatypes ((ListLongMap!1423 0))(
  ( (ListLongMap!1424 (toList!2773 List!48824)) )
))
(declare-fun lm!1707 () ListLongMap!1423)

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4337273 (= res!1779229 (or (not ((_ is Cons!48700) (toList!2773 lm!1707))) (not (= (_1!27270 (h!54207 (toList!2773 lm!1707))) hash!377))))))

(declare-fun e!2698785 () Bool)

(assert (=> b!4337273 e!2698785))

(declare-fun res!1779235 () Bool)

(assert (=> b!4337273 (=> (not res!1779235) (not e!2698785))))

(declare-fun lt!1551139 () ListLongMap!1423)

(declare-fun lambda!136295 () Int)

(declare-fun forall!8969 (List!48824 Int) Bool)

(assert (=> b!4337273 (= res!1779235 (forall!8969 (toList!2773 lt!1551139) lambda!136295))))

(declare-fun lt!1551144 () tuple2!47952)

(declare-fun +!461 (ListLongMap!1423 tuple2!47952) ListLongMap!1423)

(assert (=> b!4337273 (= lt!1551139 (+!461 lm!1707 lt!1551144))))

(declare-fun newBucket!200 () List!48823)

(assert (=> b!4337273 (= lt!1551144 (tuple2!47953 hash!377 newBucket!200))))

(declare-datatypes ((Unit!68869 0))(
  ( (Unit!68870) )
))
(declare-fun lt!1551145 () Unit!68869)

(declare-fun addValidProp!49 (ListLongMap!1423 Int (_ BitVec 64) List!48823) Unit!68869)

(assert (=> b!4337273 (= lt!1551145 (addValidProp!49 lm!1707 lambda!136295 hash!377 newBucket!200))))

(assert (=> b!4337273 (forall!8969 (toList!2773 lm!1707) lambda!136295)))

(declare-fun b!4337274 () Bool)

(assert (=> b!4337274 (= e!2698785 (or (not ((_ is Cons!48700) (toList!2773 lm!1707))) (not (= (_1!27270 (h!54207 (toList!2773 lm!1707))) hash!377)) (= lt!1551139 (ListLongMap!1424 (Cons!48700 lt!1551144 (t!355740 (toList!2773 lm!1707)))))))))

(declare-fun b!4337275 () Bool)

(declare-fun e!2698784 () Bool)

(assert (=> b!4337275 (= e!2698784 (not e!2698781))))

(declare-fun res!1779232 () Bool)

(assert (=> b!4337275 (=> res!1779232 e!2698781)))

(declare-fun lt!1551149 () List!48823)

(assert (=> b!4337275 (= res!1779232 (not (= newBucket!200 lt!1551149)))))

(declare-fun lt!1551147 () tuple2!47950)

(declare-fun lt!1551142 () List!48823)

(assert (=> b!4337275 (= lt!1551149 (Cons!48699 lt!1551147 lt!1551142))))

(declare-fun lt!1551151 () List!48823)

(declare-fun key!3918 () K!10055)

(declare-fun removePairForKey!365 (List!48823 K!10055) List!48823)

(assert (=> b!4337275 (= lt!1551142 (removePairForKey!365 lt!1551151 key!3918))))

(declare-fun newValue!99 () V!10301)

(assert (=> b!4337275 (= lt!1551147 (tuple2!47951 key!3918 newValue!99))))

(declare-fun lt!1551146 () tuple2!47952)

(declare-fun lt!1551138 () Unit!68869)

(declare-fun forallContained!1619 (List!48824 Int tuple2!47952) Unit!68869)

(assert (=> b!4337275 (= lt!1551138 (forallContained!1619 (toList!2773 lm!1707) lambda!136295 lt!1551146))))

(declare-fun contains!10774 (List!48824 tuple2!47952) Bool)

(assert (=> b!4337275 (contains!10774 (toList!2773 lm!1707) lt!1551146)))

(assert (=> b!4337275 (= lt!1551146 (tuple2!47953 hash!377 lt!1551151))))

(declare-fun lt!1551148 () Unit!68869)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!242 (List!48824 (_ BitVec 64) List!48823) Unit!68869)

(assert (=> b!4337275 (= lt!1551148 (lemmaGetValueByKeyImpliesContainsTuple!242 (toList!2773 lm!1707) hash!377 lt!1551151))))

(declare-fun apply!11247 (ListLongMap!1423 (_ BitVec 64)) List!48823)

(assert (=> b!4337275 (= lt!1551151 (apply!11247 lm!1707 hash!377))))

(declare-fun res!1779228 () Bool)

(assert (=> start!418460 (=> (not res!1779228) (not e!2698784))))

(assert (=> start!418460 (= res!1779228 (forall!8969 (toList!2773 lm!1707) lambda!136295))))

(assert (=> start!418460 e!2698784))

(declare-fun e!2698782 () Bool)

(assert (=> start!418460 e!2698782))

(assert (=> start!418460 true))

(declare-fun e!2698783 () Bool)

(declare-fun inv!64241 (ListLongMap!1423) Bool)

(assert (=> start!418460 (and (inv!64241 lm!1707) e!2698783)))

(declare-fun tp_is_empty!24817 () Bool)

(assert (=> start!418460 tp_is_empty!24817))

(declare-fun tp_is_empty!24819 () Bool)

(assert (=> start!418460 tp_is_empty!24819))

(declare-fun b!4337276 () Bool)

(declare-fun res!1779225 () Bool)

(assert (=> b!4337276 (=> (not res!1779225) (not e!2698785))))

(assert (=> b!4337276 (= res!1779225 (forall!8969 (toList!2773 lt!1551139) lambda!136295))))

(declare-fun b!4337277 () Bool)

(declare-fun e!2698780 () Bool)

(declare-datatypes ((ListMap!2017 0))(
  ( (ListMap!2018 (toList!2774 List!48823)) )
))
(declare-fun lt!1551140 () ListMap!2017)

(declare-fun lt!1551152 () ListMap!2017)

(declare-fun eq!185 (ListMap!2017 ListMap!2017) Bool)

(assert (=> b!4337277 (= e!2698780 (eq!185 lt!1551140 lt!1551152))))

(declare-fun b!4337278 () Bool)

(declare-fun res!1779230 () Bool)

(assert (=> b!4337278 (=> res!1779230 e!2698781)))

(declare-fun noDuplicateKeys!395 (List!48823) Bool)

(assert (=> b!4337278 (= res!1779230 (not (noDuplicateKeys!395 newBucket!200)))))

(declare-fun b!4337279 () Bool)

(assert (=> b!4337279 (= e!2698786 (not (= newBucket!200 Nil!48699)))))

(declare-fun lt!1551136 () ListLongMap!1423)

(declare-fun tail!6893 (List!48823) List!48823)

(assert (=> b!4337279 (= lt!1551136 (+!461 lm!1707 (tuple2!47953 hash!377 (tail!6893 newBucket!200))))))

(assert (=> b!4337279 e!2698780))

(declare-fun res!1779227 () Bool)

(assert (=> b!4337279 (=> (not res!1779227) (not e!2698780))))

(declare-fun lt!1551137 () ListMap!2017)

(assert (=> b!4337279 (= res!1779227 (eq!185 lt!1551137 lt!1551152))))

(declare-fun lt!1551150 () ListMap!2017)

(declare-fun +!462 (ListMap!2017 tuple2!47950) ListMap!2017)

(declare-fun addToMapMapFromBucket!103 (List!48823 ListMap!2017) ListMap!2017)

(assert (=> b!4337279 (= lt!1551152 (+!462 (addToMapMapFromBucket!103 lt!1551142 lt!1551150) lt!1551147))))

(declare-fun lt!1551143 () Unit!68869)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!14 (ListMap!2017 K!10055 V!10301 List!48823) Unit!68869)

(assert (=> b!4337279 (= lt!1551143 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!14 lt!1551150 key!3918 newValue!99 lt!1551142))))

(assert (=> b!4337279 (= lt!1551140 lt!1551137)))

(assert (=> b!4337279 (= lt!1551137 (addToMapMapFromBucket!103 lt!1551142 (+!462 lt!1551150 lt!1551147)))))

(declare-fun lt!1551141 () ListMap!2017)

(assert (=> b!4337279 (= lt!1551141 lt!1551140)))

(assert (=> b!4337279 (= lt!1551140 (addToMapMapFromBucket!103 lt!1551149 lt!1551150))))

(assert (=> b!4337279 (= lt!1551141 (addToMapMapFromBucket!103 newBucket!200 lt!1551150))))

(declare-fun extractMap!454 (List!48824) ListMap!2017)

(assert (=> b!4337279 (= lt!1551141 (extractMap!454 (toList!2773 lt!1551139)))))

(assert (=> b!4337279 (= lt!1551150 (extractMap!454 (t!355740 (toList!2773 lm!1707))))))

(declare-fun b!4337280 () Bool)

(declare-fun res!1779233 () Bool)

(assert (=> b!4337280 (=> (not res!1779233) (not e!2698784))))

(declare-fun contains!10775 (ListMap!2017 K!10055) Bool)

(assert (=> b!4337280 (= res!1779233 (contains!10775 (extractMap!454 (toList!2773 lm!1707)) key!3918))))

(declare-fun b!4337281 () Bool)

(declare-fun tp!1329105 () Bool)

(assert (=> b!4337281 (= e!2698782 (and tp_is_empty!24817 tp_is_empty!24819 tp!1329105))))

(declare-fun b!4337282 () Bool)

(declare-fun res!1779234 () Bool)

(assert (=> b!4337282 (=> (not res!1779234) (not e!2698784))))

(declare-datatypes ((Hashable!4787 0))(
  ( (HashableExt!4786 (__x!30490 Int)) )
))
(declare-fun hashF!1247 () Hashable!4787)

(declare-fun allKeysSameHash!353 (List!48823 (_ BitVec 64) Hashable!4787) Bool)

(assert (=> b!4337282 (= res!1779234 (allKeysSameHash!353 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4337283 () Bool)

(declare-fun tp!1329106 () Bool)

(assert (=> b!4337283 (= e!2698783 tp!1329106)))

(declare-fun b!4337284 () Bool)

(declare-fun res!1779231 () Bool)

(assert (=> b!4337284 (=> (not res!1779231) (not e!2698784))))

(declare-fun hash!1348 (Hashable!4787 K!10055) (_ BitVec 64))

(assert (=> b!4337284 (= res!1779231 (= (hash!1348 hashF!1247 key!3918) hash!377))))

(declare-fun b!4337285 () Bool)

(declare-fun res!1779224 () Bool)

(assert (=> b!4337285 (=> (not res!1779224) (not e!2698784))))

(declare-fun contains!10776 (ListLongMap!1423 (_ BitVec 64)) Bool)

(assert (=> b!4337285 (= res!1779224 (contains!10776 lm!1707 hash!377))))

(declare-fun b!4337286 () Bool)

(declare-fun res!1779226 () Bool)

(assert (=> b!4337286 (=> (not res!1779226) (not e!2698784))))

(declare-fun allKeysSameHashInMap!499 (ListLongMap!1423 Hashable!4787) Bool)

(assert (=> b!4337286 (= res!1779226 (allKeysSameHashInMap!499 lm!1707 hashF!1247))))

(assert (= (and start!418460 res!1779228) b!4337286))

(assert (= (and b!4337286 res!1779226) b!4337284))

(assert (= (and b!4337284 res!1779231) b!4337282))

(assert (= (and b!4337282 res!1779234) b!4337280))

(assert (= (and b!4337280 res!1779233) b!4337285))

(assert (= (and b!4337285 res!1779224) b!4337275))

(assert (= (and b!4337275 (not res!1779232)) b!4337278))

(assert (= (and b!4337278 (not res!1779230)) b!4337273))

(assert (= (and b!4337273 res!1779235) b!4337276))

(assert (= (and b!4337276 res!1779225) b!4337274))

(assert (= (and b!4337273 (not res!1779229)) b!4337279))

(assert (= (and b!4337279 res!1779227) b!4337277))

(assert (= (and start!418460 ((_ is Cons!48699) newBucket!200)) b!4337281))

(assert (= start!418460 b!4337283))

(declare-fun m!4933371 () Bool)

(assert (=> b!4337278 m!4933371))

(declare-fun m!4933373 () Bool)

(assert (=> b!4337273 m!4933373))

(declare-fun m!4933375 () Bool)

(assert (=> b!4337273 m!4933375))

(declare-fun m!4933377 () Bool)

(assert (=> b!4337273 m!4933377))

(declare-fun m!4933379 () Bool)

(assert (=> b!4337273 m!4933379))

(declare-fun m!4933381 () Bool)

(assert (=> b!4337286 m!4933381))

(assert (=> start!418460 m!4933379))

(declare-fun m!4933383 () Bool)

(assert (=> start!418460 m!4933383))

(declare-fun m!4933385 () Bool)

(assert (=> b!4337277 m!4933385))

(declare-fun m!4933387 () Bool)

(assert (=> b!4337275 m!4933387))

(declare-fun m!4933389 () Bool)

(assert (=> b!4337275 m!4933389))

(declare-fun m!4933391 () Bool)

(assert (=> b!4337275 m!4933391))

(declare-fun m!4933393 () Bool)

(assert (=> b!4337275 m!4933393))

(declare-fun m!4933395 () Bool)

(assert (=> b!4337275 m!4933395))

(declare-fun m!4933397 () Bool)

(assert (=> b!4337285 m!4933397))

(declare-fun m!4933399 () Bool)

(assert (=> b!4337282 m!4933399))

(declare-fun m!4933401 () Bool)

(assert (=> b!4337284 m!4933401))

(declare-fun m!4933403 () Bool)

(assert (=> b!4337280 m!4933403))

(assert (=> b!4337280 m!4933403))

(declare-fun m!4933405 () Bool)

(assert (=> b!4337280 m!4933405))

(assert (=> b!4337276 m!4933373))

(declare-fun m!4933407 () Bool)

(assert (=> b!4337279 m!4933407))

(declare-fun m!4933409 () Bool)

(assert (=> b!4337279 m!4933409))

(declare-fun m!4933411 () Bool)

(assert (=> b!4337279 m!4933411))

(declare-fun m!4933413 () Bool)

(assert (=> b!4337279 m!4933413))

(declare-fun m!4933415 () Bool)

(assert (=> b!4337279 m!4933415))

(declare-fun m!4933417 () Bool)

(assert (=> b!4337279 m!4933417))

(declare-fun m!4933419 () Bool)

(assert (=> b!4337279 m!4933419))

(declare-fun m!4933421 () Bool)

(assert (=> b!4337279 m!4933421))

(declare-fun m!4933423 () Bool)

(assert (=> b!4337279 m!4933423))

(declare-fun m!4933425 () Bool)

(assert (=> b!4337279 m!4933425))

(assert (=> b!4337279 m!4933407))

(declare-fun m!4933427 () Bool)

(assert (=> b!4337279 m!4933427))

(assert (=> b!4337279 m!4933419))

(declare-fun m!4933429 () Bool)

(assert (=> b!4337279 m!4933429))

(check-sat (not b!4337276) (not b!4337284) tp_is_empty!24819 tp_is_empty!24817 (not b!4337285) (not b!4337286) (not b!4337277) (not b!4337279) (not b!4337283) (not b!4337273) (not b!4337275) (not b!4337280) (not start!418460) (not b!4337282) (not b!4337278) (not b!4337281))
(check-sat)
