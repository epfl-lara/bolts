; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461332 () Bool)

(assert start!461332)

(declare-fun b!4612222 () Bool)

(declare-fun res!1931395 () Bool)

(declare-fun e!2876975 () Bool)

(assert (=> b!4612222 (=> (not res!1931395) (not e!2876975))))

(declare-datatypes ((K!12665 0))(
  ( (K!12666 (val!18403 Int)) )
))
(declare-datatypes ((V!12911 0))(
  ( (V!12912 (val!18404 Int)) )
))
(declare-datatypes ((tuple2!52070 0))(
  ( (tuple2!52071 (_1!29329 K!12665) (_2!29329 V!12911)) )
))
(declare-datatypes ((List!51411 0))(
  ( (Nil!51287) (Cons!51287 (h!57289 tuple2!52070) (t!358405 List!51411)) )
))
(declare-fun oldBucket!40 () List!51411)

(declare-fun key!4968 () K!12665)

(declare-fun newBucket!224 () List!51411)

(declare-fun removePairForKey!1029 (List!51411 K!12665) List!51411)

(assert (=> b!4612222 (= res!1931395 (= (removePairForKey!1029 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4612223 () Bool)

(declare-fun res!1931404 () Bool)

(assert (=> b!4612223 (=> (not res!1931404) (not e!2876975))))

(declare-datatypes ((Hashable!5803 0))(
  ( (HashableExt!5802 (__x!31506 Int)) )
))
(declare-fun hashF!1389 () Hashable!5803)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1260 (List!51411 (_ BitVec 64) Hashable!5803) Bool)

(assert (=> b!4612223 (= res!1931404 (allKeysSameHash!1260 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4612225 () Bool)

(declare-fun res!1931405 () Bool)

(assert (=> b!4612225 (=> (not res!1931405) (not e!2876975))))

(declare-fun noDuplicateKeys!1406 (List!51411) Bool)

(assert (=> b!4612225 (= res!1931405 (noDuplicateKeys!1406 newBucket!224))))

(declare-fun b!4612226 () Bool)

(declare-fun res!1931396 () Bool)

(declare-fun e!2876976 () Bool)

(assert (=> b!4612226 (=> (not res!1931396) (not e!2876976))))

(declare-fun hash!3349 (Hashable!5803 K!12665) (_ BitVec 64))

(assert (=> b!4612226 (= res!1931396 (= (hash!3349 hashF!1389 key!4968) hash!414))))

(declare-fun b!4612227 () Bool)

(declare-fun e!2876974 () Bool)

(declare-datatypes ((ListMap!4081 0))(
  ( (ListMap!4082 (toList!4794 List!51411)) )
))
(declare-fun lt!1767729 () ListMap!4081)

(assert (=> b!4612227 (= e!2876974 (= lt!1767729 (ListMap!4082 Nil!51287)))))

(declare-fun b!4612228 () Bool)

(declare-fun e!2876977 () Bool)

(assert (=> b!4612228 (= e!2876976 (not e!2876977))))

(declare-fun res!1931401 () Bool)

(assert (=> b!4612228 (=> res!1931401 e!2876977)))

(get-info :version)

(assert (=> b!4612228 (= res!1931401 (or (not ((_ is Cons!51287) oldBucket!40)) (not (= (_1!29329 (h!57289 oldBucket!40)) key!4968))))))

(assert (=> b!4612228 e!2876974))

(declare-fun res!1931402 () Bool)

(assert (=> b!4612228 (=> (not res!1931402) (not e!2876974))))

(declare-fun lt!1767731 () ListMap!4081)

(declare-fun addToMapMapFromBucket!867 (List!51411 ListMap!4081) ListMap!4081)

(assert (=> b!4612228 (= res!1931402 (= lt!1767731 (addToMapMapFromBucket!867 oldBucket!40 lt!1767729)))))

(declare-datatypes ((tuple2!52072 0))(
  ( (tuple2!52073 (_1!29330 (_ BitVec 64)) (_2!29330 List!51411)) )
))
(declare-datatypes ((List!51412 0))(
  ( (Nil!51288) (Cons!51288 (h!57290 tuple2!52072) (t!358406 List!51412)) )
))
(declare-fun extractMap!1462 (List!51412) ListMap!4081)

(assert (=> b!4612228 (= lt!1767729 (extractMap!1462 Nil!51288))))

(assert (=> b!4612228 true))

(declare-fun b!4612229 () Bool)

(declare-fun e!2876973 () Bool)

(declare-fun tp!1341315 () Bool)

(declare-fun tp_is_empty!28919 () Bool)

(declare-fun tp_is_empty!28917 () Bool)

(assert (=> b!4612229 (= e!2876973 (and tp_is_empty!28917 tp_is_empty!28919 tp!1341315))))

(declare-fun b!4612230 () Bool)

(declare-fun res!1931394 () Bool)

(assert (=> b!4612230 (=> (not res!1931394) (not e!2876976))))

(assert (=> b!4612230 (= res!1931394 (allKeysSameHash!1260 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1931398 () Bool)

(assert (=> start!461332 (=> (not res!1931398) (not e!2876975))))

(assert (=> start!461332 (= res!1931398 (noDuplicateKeys!1406 oldBucket!40))))

(assert (=> start!461332 e!2876975))

(assert (=> start!461332 true))

(declare-fun e!2876978 () Bool)

(assert (=> start!461332 e!2876978))

(assert (=> start!461332 tp_is_empty!28917))

(assert (=> start!461332 e!2876973))

(declare-fun b!4612224 () Bool)

(declare-fun res!1931399 () Bool)

(declare-fun e!2876972 () Bool)

(assert (=> b!4612224 (=> res!1931399 e!2876972)))

(declare-fun lt!1767728 () List!51411)

(assert (=> b!4612224 (= res!1931399 (not (= (addToMapMapFromBucket!867 lt!1767728 (ListMap!4082 Nil!51287)) (addToMapMapFromBucket!867 newBucket!224 (ListMap!4082 Nil!51287)))))))

(declare-fun b!4612231 () Bool)

(assert (=> b!4612231 (= e!2876975 e!2876976)))

(declare-fun res!1931400 () Bool)

(assert (=> b!4612231 (=> (not res!1931400) (not e!2876976))))

(declare-fun contains!14272 (ListMap!4081 K!12665) Bool)

(assert (=> b!4612231 (= res!1931400 (contains!14272 lt!1767731 key!4968))))

(assert (=> b!4612231 (= lt!1767731 (extractMap!1462 (Cons!51288 (tuple2!52073 hash!414 oldBucket!40) Nil!51288)))))

(declare-fun b!4612232 () Bool)

(assert (=> b!4612232 (= e!2876972 true)))

(declare-fun lt!1767730 () Bool)

(declare-fun head!9566 (List!51411) tuple2!52070)

(assert (=> b!4612232 (= lt!1767730 (noDuplicateKeys!1406 (Cons!51287 (head!9566 oldBucket!40) lt!1767728)))))

(declare-fun b!4612233 () Bool)

(declare-fun res!1931406 () Bool)

(assert (=> b!4612233 (=> res!1931406 e!2876972)))

(assert (=> b!4612233 (= res!1931406 (not (noDuplicateKeys!1406 lt!1767728)))))

(declare-fun tp!1341314 () Bool)

(declare-fun b!4612234 () Bool)

(assert (=> b!4612234 (= e!2876978 (and tp_is_empty!28917 tp_is_empty!28919 tp!1341314))))

(declare-fun b!4612235 () Bool)

(declare-fun res!1931397 () Bool)

(assert (=> b!4612235 (=> res!1931397 e!2876972)))

(assert (=> b!4612235 (= res!1931397 (not (= (extractMap!1462 (Cons!51288 (tuple2!52073 hash!414 lt!1767728) Nil!51288)) (extractMap!1462 (Cons!51288 (tuple2!52073 hash!414 newBucket!224) Nil!51288)))))))

(declare-fun b!4612236 () Bool)

(assert (=> b!4612236 (= e!2876977 e!2876972)))

(declare-fun res!1931403 () Bool)

(assert (=> b!4612236 (=> res!1931403 e!2876972)))

(assert (=> b!4612236 (= res!1931403 (not (= lt!1767728 newBucket!224)))))

(declare-fun tail!8053 (List!51411) List!51411)

(assert (=> b!4612236 (= lt!1767728 (tail!8053 oldBucket!40))))

(assert (= (and start!461332 res!1931398) b!4612225))

(assert (= (and b!4612225 res!1931405) b!4612222))

(assert (= (and b!4612222 res!1931395) b!4612223))

(assert (= (and b!4612223 res!1931404) b!4612231))

(assert (= (and b!4612231 res!1931400) b!4612226))

(assert (= (and b!4612226 res!1931396) b!4612230))

(assert (= (and b!4612230 res!1931394) b!4612228))

(assert (= (and b!4612228 res!1931402) b!4612227))

(assert (= (and b!4612228 (not res!1931401)) b!4612236))

(assert (= (and b!4612236 (not res!1931403)) b!4612235))

(assert (= (and b!4612235 (not res!1931397)) b!4612224))

(assert (= (and b!4612224 (not res!1931399)) b!4612233))

(assert (= (and b!4612233 (not res!1931406)) b!4612232))

(assert (= (and start!461332 ((_ is Cons!51287) oldBucket!40)) b!4612234))

(assert (= (and start!461332 ((_ is Cons!51287) newBucket!224)) b!4612229))

(declare-fun m!5443521 () Bool)

(assert (=> b!4612222 m!5443521))

(declare-fun m!5443523 () Bool)

(assert (=> b!4612232 m!5443523))

(declare-fun m!5443525 () Bool)

(assert (=> b!4612232 m!5443525))

(declare-fun m!5443527 () Bool)

(assert (=> b!4612235 m!5443527))

(declare-fun m!5443529 () Bool)

(assert (=> b!4612235 m!5443529))

(declare-fun m!5443531 () Bool)

(assert (=> b!4612231 m!5443531))

(declare-fun m!5443533 () Bool)

(assert (=> b!4612231 m!5443533))

(declare-fun m!5443535 () Bool)

(assert (=> b!4612236 m!5443535))

(declare-fun m!5443537 () Bool)

(assert (=> b!4612223 m!5443537))

(declare-fun m!5443539 () Bool)

(assert (=> b!4612225 m!5443539))

(declare-fun m!5443541 () Bool)

(assert (=> start!461332 m!5443541))

(declare-fun m!5443543 () Bool)

(assert (=> b!4612230 m!5443543))

(declare-fun m!5443545 () Bool)

(assert (=> b!4612226 m!5443545))

(declare-fun m!5443547 () Bool)

(assert (=> b!4612233 m!5443547))

(declare-fun m!5443549 () Bool)

(assert (=> b!4612224 m!5443549))

(declare-fun m!5443551 () Bool)

(assert (=> b!4612224 m!5443551))

(declare-fun m!5443553 () Bool)

(assert (=> b!4612228 m!5443553))

(declare-fun m!5443555 () Bool)

(assert (=> b!4612228 m!5443555))

(check-sat (not b!4612233) (not b!4612236) (not b!4612229) (not b!4612230) (not b!4612226) (not b!4612235) (not start!461332) (not b!4612234) tp_is_empty!28919 tp_is_empty!28917 (not b!4612222) (not b!4612228) (not b!4612225) (not b!4612224) (not b!4612231) (not b!4612223) (not b!4612232))
(check-sat)
