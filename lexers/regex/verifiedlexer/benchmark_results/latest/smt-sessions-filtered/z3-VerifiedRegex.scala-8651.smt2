; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461328 () Bool)

(assert start!461328)

(declare-fun b!4612133 () Bool)

(declare-fun res!1931326 () Bool)

(declare-fun e!2876930 () Bool)

(assert (=> b!4612133 (=> (not res!1931326) (not e!2876930))))

(declare-datatypes ((Hashable!5801 0))(
  ( (HashableExt!5800 (__x!31504 Int)) )
))
(declare-fun hashF!1389 () Hashable!5801)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12660 0))(
  ( (K!12661 (val!18399 Int)) )
))
(declare-datatypes ((V!12906 0))(
  ( (V!12907 (val!18400 Int)) )
))
(declare-datatypes ((tuple2!52062 0))(
  ( (tuple2!52063 (_1!29325 K!12660) (_2!29325 V!12906)) )
))
(declare-datatypes ((List!51407 0))(
  ( (Nil!51283) (Cons!51283 (h!57285 tuple2!52062) (t!358401 List!51407)) )
))
(declare-fun oldBucket!40 () List!51407)

(declare-fun allKeysSameHash!1258 (List!51407 (_ BitVec 64) Hashable!5801) Bool)

(assert (=> b!4612133 (= res!1931326 (allKeysSameHash!1258 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4612134 () Bool)

(declare-fun e!2876934 () Bool)

(declare-datatypes ((ListMap!4077 0))(
  ( (ListMap!4078 (toList!4792 List!51407)) )
))
(declare-fun lt!1767706 () ListMap!4077)

(assert (=> b!4612134 (= e!2876934 (= lt!1767706 (ListMap!4078 Nil!51283)))))

(declare-fun e!2876932 () Bool)

(declare-fun b!4612135 () Bool)

(declare-fun tp_is_empty!28909 () Bool)

(declare-fun tp!1341303 () Bool)

(declare-fun tp_is_empty!28911 () Bool)

(assert (=> b!4612135 (= e!2876932 (and tp_is_empty!28909 tp_is_empty!28911 tp!1341303))))

(declare-fun b!4612136 () Bool)

(declare-fun e!2876936 () Bool)

(declare-fun e!2876933 () Bool)

(assert (=> b!4612136 (= e!2876936 (not e!2876933))))

(declare-fun res!1931322 () Bool)

(assert (=> b!4612136 (=> res!1931322 e!2876933)))

(declare-fun key!4968 () K!12660)

(get-info :version)

(assert (=> b!4612136 (= res!1931322 (or (not ((_ is Cons!51283) oldBucket!40)) (not (= (_1!29325 (h!57285 oldBucket!40)) key!4968))))))

(assert (=> b!4612136 e!2876934))

(declare-fun res!1931325 () Bool)

(assert (=> b!4612136 (=> (not res!1931325) (not e!2876934))))

(declare-fun lt!1767705 () ListMap!4077)

(declare-fun addToMapMapFromBucket!865 (List!51407 ListMap!4077) ListMap!4077)

(assert (=> b!4612136 (= res!1931325 (= lt!1767705 (addToMapMapFromBucket!865 oldBucket!40 lt!1767706)))))

(declare-datatypes ((tuple2!52064 0))(
  ( (tuple2!52065 (_1!29326 (_ BitVec 64)) (_2!29326 List!51407)) )
))
(declare-datatypes ((List!51408 0))(
  ( (Nil!51284) (Cons!51284 (h!57286 tuple2!52064) (t!358402 List!51408)) )
))
(declare-fun extractMap!1460 (List!51408) ListMap!4077)

(assert (=> b!4612136 (= lt!1767706 (extractMap!1460 Nil!51284))))

(assert (=> b!4612136 true))

(declare-fun b!4612137 () Bool)

(declare-fun res!1931318 () Bool)

(assert (=> b!4612137 (=> (not res!1931318) (not e!2876936))))

(declare-fun newBucket!224 () List!51407)

(assert (=> b!4612137 (= res!1931318 (allKeysSameHash!1258 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1931319 () Bool)

(assert (=> start!461328 (=> (not res!1931319) (not e!2876930))))

(declare-fun noDuplicateKeys!1404 (List!51407) Bool)

(assert (=> start!461328 (= res!1931319 (noDuplicateKeys!1404 oldBucket!40))))

(assert (=> start!461328 e!2876930))

(assert (=> start!461328 true))

(declare-fun e!2876935 () Bool)

(assert (=> start!461328 e!2876935))

(assert (=> start!461328 tp_is_empty!28909))

(assert (=> start!461328 e!2876932))

(declare-fun b!4612138 () Bool)

(declare-fun e!2876931 () Bool)

(assert (=> b!4612138 (= e!2876933 e!2876931)))

(declare-fun res!1931327 () Bool)

(assert (=> b!4612138 (=> res!1931327 e!2876931)))

(declare-fun lt!1767707 () List!51407)

(assert (=> b!4612138 (= res!1931327 (not (= lt!1767707 newBucket!224)))))

(declare-fun tail!8051 (List!51407) List!51407)

(assert (=> b!4612138 (= lt!1767707 (tail!8051 oldBucket!40))))

(declare-fun b!4612139 () Bool)

(assert (=> b!4612139 (= e!2876930 e!2876936)))

(declare-fun res!1931320 () Bool)

(assert (=> b!4612139 (=> (not res!1931320) (not e!2876936))))

(declare-fun contains!14270 (ListMap!4077 K!12660) Bool)

(assert (=> b!4612139 (= res!1931320 (contains!14270 lt!1767705 key!4968))))

(assert (=> b!4612139 (= lt!1767705 (extractMap!1460 (Cons!51284 (tuple2!52065 hash!414 oldBucket!40) Nil!51284)))))

(declare-fun b!4612140 () Bool)

(declare-fun res!1931317 () Bool)

(assert (=> b!4612140 (=> (not res!1931317) (not e!2876936))))

(declare-fun hash!3347 (Hashable!5801 K!12660) (_ BitVec 64))

(assert (=> b!4612140 (= res!1931317 (= (hash!3347 hashF!1389 key!4968) hash!414))))

(declare-fun b!4612141 () Bool)

(declare-fun res!1931321 () Bool)

(assert (=> b!4612141 (=> res!1931321 e!2876931)))

(assert (=> b!4612141 (= res!1931321 (not (= (extractMap!1460 (Cons!51284 (tuple2!52065 hash!414 lt!1767707) Nil!51284)) (extractMap!1460 (Cons!51284 (tuple2!52065 hash!414 newBucket!224) Nil!51284)))))))

(declare-fun tp!1341302 () Bool)

(declare-fun b!4612142 () Bool)

(assert (=> b!4612142 (= e!2876935 (and tp_is_empty!28909 tp_is_empty!28911 tp!1341302))))

(declare-fun b!4612143 () Bool)

(declare-fun res!1931328 () Bool)

(assert (=> b!4612143 (=> res!1931328 e!2876931)))

(assert (=> b!4612143 (= res!1931328 (not (= (addToMapMapFromBucket!865 lt!1767707 (ListMap!4078 Nil!51283)) (addToMapMapFromBucket!865 newBucket!224 (ListMap!4078 Nil!51283)))))))

(declare-fun b!4612144 () Bool)

(assert (=> b!4612144 (= e!2876931 (not (= oldBucket!40 Nil!51283)))))

(declare-fun b!4612145 () Bool)

(declare-fun res!1931323 () Bool)

(assert (=> b!4612145 (=> (not res!1931323) (not e!2876930))))

(assert (=> b!4612145 (= res!1931323 (noDuplicateKeys!1404 newBucket!224))))

(declare-fun b!4612146 () Bool)

(declare-fun res!1931324 () Bool)

(assert (=> b!4612146 (=> (not res!1931324) (not e!2876930))))

(declare-fun removePairForKey!1027 (List!51407 K!12660) List!51407)

(assert (=> b!4612146 (= res!1931324 (= (removePairForKey!1027 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!461328 res!1931319) b!4612145))

(assert (= (and b!4612145 res!1931323) b!4612146))

(assert (= (and b!4612146 res!1931324) b!4612133))

(assert (= (and b!4612133 res!1931326) b!4612139))

(assert (= (and b!4612139 res!1931320) b!4612140))

(assert (= (and b!4612140 res!1931317) b!4612137))

(assert (= (and b!4612137 res!1931318) b!4612136))

(assert (= (and b!4612136 res!1931325) b!4612134))

(assert (= (and b!4612136 (not res!1931322)) b!4612138))

(assert (= (and b!4612138 (not res!1931327)) b!4612141))

(assert (= (and b!4612141 (not res!1931321)) b!4612143))

(assert (= (and b!4612143 (not res!1931328)) b!4612144))

(assert (= (and start!461328 ((_ is Cons!51283) oldBucket!40)) b!4612142))

(assert (= (and start!461328 ((_ is Cons!51283) newBucket!224)) b!4612135))

(declare-fun m!5443455 () Bool)

(assert (=> b!4612143 m!5443455))

(declare-fun m!5443457 () Bool)

(assert (=> b!4612143 m!5443457))

(declare-fun m!5443459 () Bool)

(assert (=> b!4612145 m!5443459))

(declare-fun m!5443461 () Bool)

(assert (=> b!4612140 m!5443461))

(declare-fun m!5443463 () Bool)

(assert (=> b!4612146 m!5443463))

(declare-fun m!5443465 () Bool)

(assert (=> b!4612141 m!5443465))

(declare-fun m!5443467 () Bool)

(assert (=> b!4612141 m!5443467))

(declare-fun m!5443469 () Bool)

(assert (=> b!4612137 m!5443469))

(declare-fun m!5443471 () Bool)

(assert (=> b!4612136 m!5443471))

(declare-fun m!5443473 () Bool)

(assert (=> b!4612136 m!5443473))

(declare-fun m!5443475 () Bool)

(assert (=> start!461328 m!5443475))

(declare-fun m!5443477 () Bool)

(assert (=> b!4612133 m!5443477))

(declare-fun m!5443479 () Bool)

(assert (=> b!4612138 m!5443479))

(declare-fun m!5443481 () Bool)

(assert (=> b!4612139 m!5443481))

(declare-fun m!5443483 () Bool)

(assert (=> b!4612139 m!5443483))

(check-sat (not b!4612146) (not start!461328) (not b!4612135) (not b!4612143) (not b!4612139) (not b!4612136) tp_is_empty!28909 (not b!4612140) (not b!4612141) (not b!4612145) tp_is_empty!28911 (not b!4612133) (not b!4612138) (not b!4612142) (not b!4612137))
(check-sat)
