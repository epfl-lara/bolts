; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461340 () Bool)

(assert start!461340)

(declare-fun b!4612391 () Bool)

(declare-fun e!2877069 () Bool)

(declare-fun e!2877067 () Bool)

(assert (=> b!4612391 (= e!2877069 e!2877067)))

(declare-fun res!1931548 () Bool)

(assert (=> b!4612391 (=> res!1931548 e!2877067)))

(declare-datatypes ((K!12675 0))(
  ( (K!12676 (val!18411 Int)) )
))
(declare-datatypes ((V!12921 0))(
  ( (V!12922 (val!18412 Int)) )
))
(declare-datatypes ((tuple2!52086 0))(
  ( (tuple2!52087 (_1!29337 K!12675) (_2!29337 V!12921)) )
))
(declare-datatypes ((List!51419 0))(
  ( (Nil!51295) (Cons!51295 (h!57297 tuple2!52086) (t!358413 List!51419)) )
))
(declare-datatypes ((ListMap!4089 0))(
  ( (ListMap!4090 (toList!4798 List!51419)) )
))
(declare-fun lt!1767798 () ListMap!4089)

(declare-fun newBucket!224 () List!51419)

(declare-fun addToMapMapFromBucket!871 (List!51419 ListMap!4089) ListMap!4089)

(assert (=> b!4612391 (= res!1931548 (not (= lt!1767798 (addToMapMapFromBucket!871 newBucket!224 (ListMap!4090 Nil!51295)))))))

(declare-fun lt!1767800 () List!51419)

(assert (=> b!4612391 (= lt!1767798 (addToMapMapFromBucket!871 lt!1767800 (ListMap!4090 Nil!51295)))))

(declare-fun b!4612392 () Bool)

(declare-fun e!2877074 () Bool)

(declare-fun lt!1767801 () ListMap!4089)

(assert (=> b!4612392 (= e!2877074 (= lt!1767801 (ListMap!4090 Nil!51295)))))

(declare-fun b!4612393 () Bool)

(declare-fun res!1931550 () Bool)

(declare-fun e!2877070 () Bool)

(assert (=> b!4612393 (=> (not res!1931550) (not e!2877070))))

(declare-fun oldBucket!40 () List!51419)

(declare-fun key!4968 () K!12675)

(declare-fun removePairForKey!1033 (List!51419 K!12675) List!51419)

(assert (=> b!4612393 (= res!1931550 (= (removePairForKey!1033 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1931539 () Bool)

(assert (=> start!461340 (=> (not res!1931539) (not e!2877070))))

(declare-fun noDuplicateKeys!1410 (List!51419) Bool)

(assert (=> start!461340 (= res!1931539 (noDuplicateKeys!1410 oldBucket!40))))

(assert (=> start!461340 e!2877070))

(assert (=> start!461340 true))

(declare-fun e!2877073 () Bool)

(assert (=> start!461340 e!2877073))

(declare-fun tp_is_empty!28933 () Bool)

(assert (=> start!461340 tp_is_empty!28933))

(declare-fun e!2877068 () Bool)

(assert (=> start!461340 e!2877068))

(declare-fun b!4612394 () Bool)

(declare-fun res!1931544 () Bool)

(assert (=> b!4612394 (=> res!1931544 e!2877069)))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((tuple2!52088 0))(
  ( (tuple2!52089 (_1!29338 (_ BitVec 64)) (_2!29338 List!51419)) )
))
(declare-datatypes ((List!51420 0))(
  ( (Nil!51296) (Cons!51296 (h!57298 tuple2!52088) (t!358414 List!51420)) )
))
(declare-fun extractMap!1466 (List!51420) ListMap!4089)

(assert (=> b!4612394 (= res!1931544 (not (= (extractMap!1466 (Cons!51296 (tuple2!52089 hash!414 lt!1767800) Nil!51296)) (extractMap!1466 (Cons!51296 (tuple2!52089 hash!414 newBucket!224) Nil!51296)))))))

(declare-fun tp!1341339 () Bool)

(declare-fun b!4612395 () Bool)

(declare-fun tp_is_empty!28935 () Bool)

(assert (=> b!4612395 (= e!2877068 (and tp_is_empty!28933 tp_is_empty!28935 tp!1341339))))

(declare-fun b!4612396 () Bool)

(assert (=> b!4612396 (= e!2877067 (noDuplicateKeys!1410 lt!1767800))))

(declare-fun lt!1767799 () tuple2!52086)

(declare-fun eq!753 (ListMap!4089 ListMap!4089) Bool)

(declare-fun +!1795 (ListMap!4089 tuple2!52086) ListMap!4089)

(assert (=> b!4612396 (eq!753 (addToMapMapFromBucket!871 (Cons!51295 lt!1767799 lt!1767800) (ListMap!4090 Nil!51295)) (+!1795 lt!1767798 lt!1767799))))

(declare-datatypes ((Unit!109476 0))(
  ( (Unit!109477) )
))
(declare-fun lt!1767803 () Unit!109476)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!4 (tuple2!52086 List!51419 ListMap!4089) Unit!109476)

(assert (=> b!4612396 (= lt!1767803 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!4 lt!1767799 lt!1767800 (ListMap!4090 Nil!51295)))))

(declare-fun head!9570 (List!51419) tuple2!52086)

(assert (=> b!4612396 (= lt!1767799 (head!9570 oldBucket!40))))

(declare-fun b!4612397 () Bool)

(declare-fun e!2877071 () Bool)

(assert (=> b!4612397 (= e!2877071 e!2877069)))

(declare-fun res!1931543 () Bool)

(assert (=> b!4612397 (=> res!1931543 e!2877069)))

(assert (=> b!4612397 (= res!1931543 (not (= lt!1767800 newBucket!224)))))

(declare-fun tail!8057 (List!51419) List!51419)

(assert (=> b!4612397 (= lt!1767800 (tail!8057 oldBucket!40))))

(declare-fun b!4612398 () Bool)

(declare-fun res!1931547 () Bool)

(declare-fun e!2877072 () Bool)

(assert (=> b!4612398 (=> (not res!1931547) (not e!2877072))))

(declare-datatypes ((Hashable!5807 0))(
  ( (HashableExt!5806 (__x!31510 Int)) )
))
(declare-fun hashF!1389 () Hashable!5807)

(declare-fun hash!3353 (Hashable!5807 K!12675) (_ BitVec 64))

(assert (=> b!4612398 (= res!1931547 (= (hash!3353 hashF!1389 key!4968) hash!414))))

(declare-fun b!4612399 () Bool)

(declare-fun res!1931546 () Bool)

(assert (=> b!4612399 (=> (not res!1931546) (not e!2877070))))

(assert (=> b!4612399 (= res!1931546 (noDuplicateKeys!1410 newBucket!224))))

(declare-fun b!4612400 () Bool)

(declare-fun tp!1341338 () Bool)

(assert (=> b!4612400 (= e!2877073 (and tp_is_empty!28933 tp_is_empty!28935 tp!1341338))))

(declare-fun b!4612401 () Bool)

(declare-fun res!1931542 () Bool)

(assert (=> b!4612401 (=> (not res!1931542) (not e!2877072))))

(declare-fun allKeysSameHash!1264 (List!51419 (_ BitVec 64) Hashable!5807) Bool)

(assert (=> b!4612401 (= res!1931542 (allKeysSameHash!1264 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4612402 () Bool)

(assert (=> b!4612402 (= e!2877072 (not e!2877071))))

(declare-fun res!1931540 () Bool)

(assert (=> b!4612402 (=> res!1931540 e!2877071)))

(get-info :version)

(assert (=> b!4612402 (= res!1931540 (or (not ((_ is Cons!51295) oldBucket!40)) (not (= (_1!29337 (h!57297 oldBucket!40)) key!4968))))))

(assert (=> b!4612402 e!2877074))

(declare-fun res!1931541 () Bool)

(assert (=> b!4612402 (=> (not res!1931541) (not e!2877074))))

(declare-fun lt!1767802 () ListMap!4089)

(assert (=> b!4612402 (= res!1931541 (= lt!1767802 (addToMapMapFromBucket!871 oldBucket!40 lt!1767801)))))

(assert (=> b!4612402 (= lt!1767801 (extractMap!1466 Nil!51296))))

(assert (=> b!4612402 true))

(declare-fun b!4612403 () Bool)

(declare-fun res!1931549 () Bool)

(assert (=> b!4612403 (=> (not res!1931549) (not e!2877070))))

(assert (=> b!4612403 (= res!1931549 (allKeysSameHash!1264 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4612404 () Bool)

(assert (=> b!4612404 (= e!2877070 e!2877072)))

(declare-fun res!1931545 () Bool)

(assert (=> b!4612404 (=> (not res!1931545) (not e!2877072))))

(declare-fun contains!14276 (ListMap!4089 K!12675) Bool)

(assert (=> b!4612404 (= res!1931545 (contains!14276 lt!1767802 key!4968))))

(assert (=> b!4612404 (= lt!1767802 (extractMap!1466 (Cons!51296 (tuple2!52089 hash!414 oldBucket!40) Nil!51296)))))

(assert (= (and start!461340 res!1931539) b!4612399))

(assert (= (and b!4612399 res!1931546) b!4612393))

(assert (= (and b!4612393 res!1931550) b!4612403))

(assert (= (and b!4612403 res!1931549) b!4612404))

(assert (= (and b!4612404 res!1931545) b!4612398))

(assert (= (and b!4612398 res!1931547) b!4612401))

(assert (= (and b!4612401 res!1931542) b!4612402))

(assert (= (and b!4612402 res!1931541) b!4612392))

(assert (= (and b!4612402 (not res!1931540)) b!4612397))

(assert (= (and b!4612397 (not res!1931543)) b!4612394))

(assert (= (and b!4612394 (not res!1931544)) b!4612391))

(assert (= (and b!4612391 (not res!1931548)) b!4612396))

(assert (= (and start!461340 ((_ is Cons!51295) oldBucket!40)) b!4612400))

(assert (= (and start!461340 ((_ is Cons!51295) newBucket!224)) b!4612395))

(declare-fun m!5443679 () Bool)

(assert (=> b!4612398 m!5443679))

(declare-fun m!5443681 () Bool)

(assert (=> start!461340 m!5443681))

(declare-fun m!5443683 () Bool)

(assert (=> b!4612399 m!5443683))

(declare-fun m!5443685 () Bool)

(assert (=> b!4612397 m!5443685))

(declare-fun m!5443687 () Bool)

(assert (=> b!4612393 m!5443687))

(declare-fun m!5443689 () Bool)

(assert (=> b!4612391 m!5443689))

(declare-fun m!5443691 () Bool)

(assert (=> b!4612391 m!5443691))

(declare-fun m!5443693 () Bool)

(assert (=> b!4612402 m!5443693))

(declare-fun m!5443695 () Bool)

(assert (=> b!4612402 m!5443695))

(declare-fun m!5443697 () Bool)

(assert (=> b!4612403 m!5443697))

(declare-fun m!5443699 () Bool)

(assert (=> b!4612394 m!5443699))

(declare-fun m!5443701 () Bool)

(assert (=> b!4612394 m!5443701))

(declare-fun m!5443703 () Bool)

(assert (=> b!4612401 m!5443703))

(declare-fun m!5443705 () Bool)

(assert (=> b!4612396 m!5443705))

(declare-fun m!5443707 () Bool)

(assert (=> b!4612396 m!5443707))

(declare-fun m!5443709 () Bool)

(assert (=> b!4612396 m!5443709))

(declare-fun m!5443711 () Bool)

(assert (=> b!4612396 m!5443711))

(declare-fun m!5443713 () Bool)

(assert (=> b!4612396 m!5443713))

(assert (=> b!4612396 m!5443709))

(assert (=> b!4612396 m!5443705))

(declare-fun m!5443715 () Bool)

(assert (=> b!4612396 m!5443715))

(declare-fun m!5443717 () Bool)

(assert (=> b!4612404 m!5443717))

(declare-fun m!5443719 () Bool)

(assert (=> b!4612404 m!5443719))

(check-sat (not b!4612404) tp_is_empty!28933 (not b!4612399) (not b!4612391) (not b!4612400) (not start!461340) (not b!4612398) (not b!4612402) (not b!4612393) (not b!4612401) tp_is_empty!28935 (not b!4612403) (not b!4612395) (not b!4612396) (not b!4612397) (not b!4612394))
(check-sat)
