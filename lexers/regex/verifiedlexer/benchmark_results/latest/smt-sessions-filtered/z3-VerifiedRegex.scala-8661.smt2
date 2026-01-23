; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461424 () Bool)

(assert start!461424)

(declare-fun res!1932259 () Bool)

(declare-fun e!2877633 () Bool)

(assert (=> start!461424 (=> (not res!1932259) (not e!2877633))))

(declare-datatypes ((K!12710 0))(
  ( (K!12711 (val!18439 Int)) )
))
(declare-datatypes ((V!12956 0))(
  ( (V!12957 (val!18440 Int)) )
))
(declare-datatypes ((tuple2!52142 0))(
  ( (tuple2!52143 (_1!29365 K!12710) (_2!29365 V!12956)) )
))
(declare-datatypes ((List!51449 0))(
  ( (Nil!51325) (Cons!51325 (h!57329 tuple2!52142) (t!358445 List!51449)) )
))
(declare-fun oldBucket!40 () List!51449)

(declare-fun noDuplicateKeys!1424 (List!51449) Bool)

(assert (=> start!461424 (= res!1932259 (noDuplicateKeys!1424 oldBucket!40))))

(assert (=> start!461424 e!2877633))

(assert (=> start!461424 true))

(declare-fun e!2877630 () Bool)

(assert (=> start!461424 e!2877630))

(declare-fun tp_is_empty!28989 () Bool)

(assert (=> start!461424 tp_is_empty!28989))

(declare-fun e!2877625 () Bool)

(assert (=> start!461424 e!2877625))

(declare-fun b!4613320 () Bool)

(declare-fun res!1932264 () Bool)

(assert (=> b!4613320 (=> (not res!1932264) (not e!2877633))))

(declare-fun key!4968 () K!12710)

(declare-fun newBucket!224 () List!51449)

(declare-fun removePairForKey!1047 (List!51449 K!12710) List!51449)

(assert (=> b!4613320 (= res!1932264 (= (removePairForKey!1047 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4613321 () Bool)

(declare-fun e!2877632 () Bool)

(declare-fun e!2877634 () Bool)

(assert (=> b!4613321 (= e!2877632 e!2877634)))

(declare-fun res!1932254 () Bool)

(assert (=> b!4613321 (=> res!1932254 e!2877634)))

(declare-datatypes ((tuple2!52144 0))(
  ( (tuple2!52145 (_1!29366 (_ BitVec 64)) (_2!29366 List!51449)) )
))
(declare-datatypes ((List!51450 0))(
  ( (Nil!51326) (Cons!51326 (h!57330 tuple2!52144) (t!358446 List!51450)) )
))
(declare-fun lt!1768486 () List!51450)

(declare-fun lambda!188808 () Int)

(declare-fun forall!10720 (List!51450 Int) Bool)

(assert (=> b!4613321 (= res!1932254 (not (forall!10720 lt!1768486 lambda!188808)))))

(declare-datatypes ((ListLongMap!3403 0))(
  ( (ListLongMap!3404 (toList!4813 List!51450)) )
))
(declare-fun lt!1768495 () ListLongMap!3403)

(assert (=> b!4613321 (= lt!1768495 (ListLongMap!3404 lt!1768486))))

(declare-fun tp!1341430 () Bool)

(declare-fun b!4613322 () Bool)

(declare-fun tp_is_empty!28991 () Bool)

(assert (=> b!4613322 (= e!2877630 (and tp_is_empty!28989 tp_is_empty!28991 tp!1341430))))

(declare-fun b!4613323 () Bool)

(declare-fun e!2877629 () Bool)

(assert (=> b!4613323 (= e!2877629 e!2877632)))

(declare-fun res!1932263 () Bool)

(assert (=> b!4613323 (=> res!1932263 e!2877632)))

(declare-datatypes ((ListMap!4117 0))(
  ( (ListMap!4118 (toList!4814 List!51449)) )
))
(declare-fun lt!1768490 () ListMap!4117)

(declare-fun eq!767 (ListMap!4117 ListMap!4117) Bool)

(declare-fun +!1809 (ListMap!4117 tuple2!52142) ListMap!4117)

(declare-fun addToMapMapFromBucket!885 (List!51449 ListMap!4117) ListMap!4117)

(assert (=> b!4613323 (= res!1932263 (not (eq!767 (+!1809 lt!1768490 (h!57329 oldBucket!40)) (addToMapMapFromBucket!885 oldBucket!40 (ListMap!4118 Nil!51325)))))))

(declare-fun lt!1768493 () tuple2!52142)

(declare-fun lt!1768494 () List!51449)

(assert (=> b!4613323 (eq!767 (addToMapMapFromBucket!885 (Cons!51325 lt!1768493 lt!1768494) (ListMap!4118 Nil!51325)) (+!1809 lt!1768490 lt!1768493))))

(declare-datatypes ((Unit!109618 0))(
  ( (Unit!109619) )
))
(declare-fun lt!1768489 () Unit!109618)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!18 (tuple2!52142 List!51449 ListMap!4117) Unit!109618)

(assert (=> b!4613323 (= lt!1768489 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!18 lt!1768493 lt!1768494 (ListMap!4118 Nil!51325)))))

(declare-fun head!9584 (List!51449) tuple2!52142)

(assert (=> b!4613323 (= lt!1768493 (head!9584 oldBucket!40))))

(declare-fun b!4613324 () Bool)

(declare-fun res!1932260 () Bool)

(assert (=> b!4613324 (=> res!1932260 e!2877632)))

(declare-fun lt!1768488 () ListMap!4117)

(assert (=> b!4613324 (= res!1932260 (not (= lt!1768490 lt!1768488)))))

(declare-fun b!4613325 () Bool)

(declare-fun res!1932251 () Bool)

(assert (=> b!4613325 (=> (not res!1932251) (not e!2877633))))

(assert (=> b!4613325 (= res!1932251 (noDuplicateKeys!1424 newBucket!224))))

(declare-fun b!4613326 () Bool)

(declare-fun res!1932258 () Bool)

(assert (=> b!4613326 (=> res!1932258 e!2877632)))

(declare-fun containsKey!2296 (List!51449 K!12710) Bool)

(assert (=> b!4613326 (= res!1932258 (containsKey!2296 lt!1768494 key!4968))))

(declare-fun b!4613327 () Bool)

(declare-fun e!2877624 () Bool)

(declare-fun e!2877627 () Bool)

(assert (=> b!4613327 (= e!2877624 e!2877627)))

(declare-fun res!1932252 () Bool)

(assert (=> b!4613327 (=> (not res!1932252) (not e!2877627))))

(declare-fun lt!1768487 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4613327 (= res!1932252 (= lt!1768487 hash!414))))

(declare-datatypes ((Hashable!5821 0))(
  ( (HashableExt!5820 (__x!31524 Int)) )
))
(declare-fun hashF!1389 () Hashable!5821)

(declare-fun hash!3369 (Hashable!5821 K!12710) (_ BitVec 64))

(assert (=> b!4613327 (= lt!1768487 (hash!3369 hashF!1389 key!4968))))

(declare-fun b!4613328 () Bool)

(assert (=> b!4613328 (= e!2877634 (forall!10720 lt!1768486 lambda!188808))))

(declare-fun b!4613329 () Bool)

(declare-fun e!2877623 () Bool)

(assert (=> b!4613329 (= e!2877623 e!2877629)))

(declare-fun res!1932256 () Bool)

(assert (=> b!4613329 (=> res!1932256 e!2877629)))

(assert (=> b!4613329 (= res!1932256 (not (= lt!1768490 (addToMapMapFromBucket!885 newBucket!224 (ListMap!4118 Nil!51325)))))))

(assert (=> b!4613329 (= lt!1768490 (addToMapMapFromBucket!885 lt!1768494 (ListMap!4118 Nil!51325)))))

(declare-fun b!4613330 () Bool)

(declare-fun e!2877628 () Bool)

(assert (=> b!4613330 (= e!2877627 (not e!2877628))))

(declare-fun res!1932261 () Bool)

(assert (=> b!4613330 (=> res!1932261 e!2877628)))

(get-info :version)

(assert (=> b!4613330 (= res!1932261 (or (not ((_ is Cons!51325) oldBucket!40)) (not (= (_1!29365 (h!57329 oldBucket!40)) key!4968))))))

(declare-fun e!2877626 () Bool)

(assert (=> b!4613330 e!2877626))

(declare-fun res!1932262 () Bool)

(assert (=> b!4613330 (=> (not res!1932262) (not e!2877626))))

(declare-fun lt!1768491 () ListMap!4117)

(declare-fun lt!1768492 () ListMap!4117)

(assert (=> b!4613330 (= res!1932262 (= lt!1768491 (addToMapMapFromBucket!885 oldBucket!40 lt!1768492)))))

(declare-fun extractMap!1480 (List!51450) ListMap!4117)

(assert (=> b!4613330 (= lt!1768492 (extractMap!1480 Nil!51326))))

(assert (=> b!4613330 true))

(declare-fun b!4613331 () Bool)

(declare-fun e!2877631 () Bool)

(assert (=> b!4613331 (= e!2877628 e!2877631)))

(declare-fun res!1932257 () Bool)

(assert (=> b!4613331 (=> res!1932257 e!2877631)))

(assert (=> b!4613331 (= res!1932257 (not (= lt!1768494 newBucket!224)))))

(declare-fun tail!8071 (List!51449) List!51449)

(assert (=> b!4613331 (= lt!1768494 (tail!8071 oldBucket!40))))

(declare-fun b!4613332 () Bool)

(declare-fun res!1932248 () Bool)

(assert (=> b!4613332 (=> res!1932248 e!2877634)))

(declare-fun contains!14295 (ListLongMap!3403 (_ BitVec 64)) Bool)

(assert (=> b!4613332 (= res!1932248 (not (contains!14295 lt!1768495 lt!1768487)))))

(declare-fun b!4613333 () Bool)

(assert (=> b!4613333 (= e!2877626 (= lt!1768492 (ListMap!4118 Nil!51325)))))

(declare-fun b!4613334 () Bool)

(assert (=> b!4613334 (= e!2877631 e!2877623)))

(declare-fun res!1932250 () Bool)

(assert (=> b!4613334 (=> res!1932250 e!2877623)))

(assert (=> b!4613334 (= res!1932250 (not (= lt!1768488 (extractMap!1480 (Cons!51326 (tuple2!52145 hash!414 newBucket!224) Nil!51326)))))))

(assert (=> b!4613334 (= lt!1768488 (extractMap!1480 lt!1768486))))

(assert (=> b!4613334 (= lt!1768486 (Cons!51326 (tuple2!52145 hash!414 lt!1768494) Nil!51326))))

(declare-fun b!4613335 () Bool)

(assert (=> b!4613335 (= e!2877633 e!2877624)))

(declare-fun res!1932249 () Bool)

(assert (=> b!4613335 (=> (not res!1932249) (not e!2877624))))

(declare-fun contains!14296 (ListMap!4117 K!12710) Bool)

(assert (=> b!4613335 (= res!1932249 (contains!14296 lt!1768491 key!4968))))

(assert (=> b!4613335 (= lt!1768491 (extractMap!1480 (Cons!51326 (tuple2!52145 hash!414 oldBucket!40) Nil!51326)))))

(declare-fun b!4613336 () Bool)

(declare-fun res!1932253 () Bool)

(assert (=> b!4613336 (=> (not res!1932253) (not e!2877633))))

(declare-fun allKeysSameHash!1278 (List!51449 (_ BitVec 64) Hashable!5821) Bool)

(assert (=> b!4613336 (= res!1932253 (allKeysSameHash!1278 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4613337 () Bool)

(declare-fun res!1932265 () Bool)

(assert (=> b!4613337 (=> (not res!1932265) (not e!2877627))))

(assert (=> b!4613337 (= res!1932265 (allKeysSameHash!1278 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp!1341431 () Bool)

(declare-fun b!4613338 () Bool)

(assert (=> b!4613338 (= e!2877625 (and tp_is_empty!28989 tp_is_empty!28991 tp!1341431))))

(declare-fun b!4613339 () Bool)

(declare-fun res!1932255 () Bool)

(assert (=> b!4613339 (=> res!1932255 e!2877634)))

(declare-fun apply!12115 (ListLongMap!3403 (_ BitVec 64)) List!51449)

(assert (=> b!4613339 (= res!1932255 (containsKey!2296 (apply!12115 lt!1768495 lt!1768487) key!4968))))

(declare-fun b!4613340 () Bool)

(declare-fun res!1932266 () Bool)

(assert (=> b!4613340 (=> res!1932266 e!2877634)))

(declare-fun allKeysSameHashInMap!1489 (ListLongMap!3403 Hashable!5821) Bool)

(assert (=> b!4613340 (= res!1932266 (not (allKeysSameHashInMap!1489 lt!1768495 hashF!1389)))))

(assert (= (and start!461424 res!1932259) b!4613325))

(assert (= (and b!4613325 res!1932251) b!4613320))

(assert (= (and b!4613320 res!1932264) b!4613336))

(assert (= (and b!4613336 res!1932253) b!4613335))

(assert (= (and b!4613335 res!1932249) b!4613327))

(assert (= (and b!4613327 res!1932252) b!4613337))

(assert (= (and b!4613337 res!1932265) b!4613330))

(assert (= (and b!4613330 res!1932262) b!4613333))

(assert (= (and b!4613330 (not res!1932261)) b!4613331))

(assert (= (and b!4613331 (not res!1932257)) b!4613334))

(assert (= (and b!4613334 (not res!1932250)) b!4613329))

(assert (= (and b!4613329 (not res!1932256)) b!4613323))

(assert (= (and b!4613323 (not res!1932263)) b!4613326))

(assert (= (and b!4613326 (not res!1932258)) b!4613324))

(assert (= (and b!4613324 (not res!1932260)) b!4613321))

(assert (= (and b!4613321 (not res!1932254)) b!4613340))

(assert (= (and b!4613340 (not res!1932266)) b!4613332))

(assert (= (and b!4613332 (not res!1932248)) b!4613339))

(assert (= (and b!4613339 (not res!1932255)) b!4613328))

(assert (= (and start!461424 ((_ is Cons!51325) oldBucket!40)) b!4613322))

(assert (= (and start!461424 ((_ is Cons!51325) newBucket!224)) b!4613338))

(declare-fun m!5444885 () Bool)

(assert (=> b!4613326 m!5444885))

(declare-fun m!5444887 () Bool)

(assert (=> b!4613330 m!5444887))

(declare-fun m!5444889 () Bool)

(assert (=> b!4613330 m!5444889))

(declare-fun m!5444891 () Bool)

(assert (=> start!461424 m!5444891))

(declare-fun m!5444893 () Bool)

(assert (=> b!4613334 m!5444893))

(declare-fun m!5444895 () Bool)

(assert (=> b!4613334 m!5444895))

(declare-fun m!5444897 () Bool)

(assert (=> b!4613339 m!5444897))

(assert (=> b!4613339 m!5444897))

(declare-fun m!5444899 () Bool)

(assert (=> b!4613339 m!5444899))

(declare-fun m!5444901 () Bool)

(assert (=> b!4613320 m!5444901))

(declare-fun m!5444903 () Bool)

(assert (=> b!4613329 m!5444903))

(declare-fun m!5444905 () Bool)

(assert (=> b!4613329 m!5444905))

(declare-fun m!5444907 () Bool)

(assert (=> b!4613337 m!5444907))

(declare-fun m!5444909 () Bool)

(assert (=> b!4613331 m!5444909))

(declare-fun m!5444911 () Bool)

(assert (=> b!4613321 m!5444911))

(declare-fun m!5444913 () Bool)

(assert (=> b!4613325 m!5444913))

(declare-fun m!5444915 () Bool)

(assert (=> b!4613340 m!5444915))

(declare-fun m!5444917 () Bool)

(assert (=> b!4613327 m!5444917))

(declare-fun m!5444919 () Bool)

(assert (=> b!4613335 m!5444919))

(declare-fun m!5444921 () Bool)

(assert (=> b!4613335 m!5444921))

(declare-fun m!5444923 () Bool)

(assert (=> b!4613332 m!5444923))

(declare-fun m!5444925 () Bool)

(assert (=> b!4613336 m!5444925))

(declare-fun m!5444927 () Bool)

(assert (=> b!4613323 m!5444927))

(declare-fun m!5444929 () Bool)

(assert (=> b!4613323 m!5444929))

(declare-fun m!5444931 () Bool)

(assert (=> b!4613323 m!5444931))

(assert (=> b!4613323 m!5444929))

(assert (=> b!4613323 m!5444927))

(declare-fun m!5444933 () Bool)

(assert (=> b!4613323 m!5444933))

(declare-fun m!5444935 () Bool)

(assert (=> b!4613323 m!5444935))

(declare-fun m!5444937 () Bool)

(assert (=> b!4613323 m!5444937))

(declare-fun m!5444939 () Bool)

(assert (=> b!4613323 m!5444939))

(assert (=> b!4613323 m!5444939))

(assert (=> b!4613323 m!5444937))

(declare-fun m!5444941 () Bool)

(assert (=> b!4613323 m!5444941))

(assert (=> b!4613328 m!5444911))

(check-sat (not b!4613334) (not b!4613336) (not b!4613335) (not b!4613327) (not b!4613339) (not b!4613330) (not b!4613328) (not b!4613337) (not b!4613332) (not b!4613322) (not b!4613321) (not b!4613329) (not start!461424) (not b!4613326) tp_is_empty!28989 tp_is_empty!28991 (not b!4613331) (not b!4613320) (not b!4613338) (not b!4613340) (not b!4613325) (not b!4613323))
(check-sat)
