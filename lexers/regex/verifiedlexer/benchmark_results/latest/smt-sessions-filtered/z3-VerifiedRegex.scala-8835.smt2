; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472160 () Bool)

(assert start!472160)

(declare-fun b!4677352 () Bool)

(declare-fun e!2918356 () Bool)

(declare-fun e!2918361 () Bool)

(assert (=> b!4677352 (= e!2918356 e!2918361)))

(declare-fun res!1970299 () Bool)

(assert (=> b!4677352 (=> (not res!1970299) (not e!2918361))))

(declare-datatypes ((K!13580 0))(
  ( (K!13581 (val!19135 Int)) )
))
(declare-datatypes ((V!13826 0))(
  ( (V!13827 (val!19136 Int)) )
))
(declare-datatypes ((tuple2!53482 0))(
  ( (tuple2!53483 (_1!30035 K!13580) (_2!30035 V!13826)) )
))
(declare-datatypes ((List!52327 0))(
  ( (Nil!52203) (Cons!52203 (h!58406 tuple2!53482) (t!359473 List!52327)) )
))
(declare-datatypes ((ListMap!4797 0))(
  ( (ListMap!4798 (toList!5433 List!52327)) )
))
(declare-fun lt!1837144 () ListMap!4797)

(declare-fun key!4653 () K!13580)

(declare-fun contains!15344 (ListMap!4797 K!13580) Bool)

(assert (=> b!4677352 (= res!1970299 (contains!15344 lt!1837144 key!4653))))

(declare-datatypes ((tuple2!53484 0))(
  ( (tuple2!53485 (_1!30036 (_ BitVec 64)) (_2!30036 List!52327)) )
))
(declare-datatypes ((List!52328 0))(
  ( (Nil!52204) (Cons!52204 (h!58407 tuple2!53484) (t!359474 List!52328)) )
))
(declare-datatypes ((ListLongMap!3963 0))(
  ( (ListLongMap!3964 (toList!5434 List!52328)) )
))
(declare-fun lm!2023 () ListLongMap!3963)

(declare-fun extractMap!1798 (List!52328) ListMap!4797)

(assert (=> b!4677352 (= lt!1837144 (extractMap!1798 (toList!5434 lm!2023)))))

(declare-fun b!4677353 () Bool)

(declare-fun e!2918353 () Bool)

(declare-fun e!2918359 () Bool)

(assert (=> b!4677353 (= e!2918353 e!2918359)))

(declare-fun res!1970303 () Bool)

(assert (=> b!4677353 (=> res!1970303 e!2918359)))

(declare-fun lt!1837148 () ListMap!4797)

(declare-fun newBucket!218 () List!52327)

(declare-fun lt!1837147 () ListMap!4797)

(declare-fun addToMapMapFromBucket!1204 (List!52327 ListMap!4797) ListMap!4797)

(assert (=> b!4677353 (= res!1970303 (not (= lt!1837148 (addToMapMapFromBucket!1204 newBucket!218 lt!1837147))))))

(declare-fun lt!1837150 () List!52327)

(assert (=> b!4677353 (= lt!1837148 (addToMapMapFromBucket!1204 lt!1837150 lt!1837147))))

(declare-fun b!4677354 () Bool)

(declare-fun res!1970292 () Bool)

(assert (=> b!4677354 (=> (not res!1970292) (not e!2918361))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6141 0))(
  ( (HashableExt!6140 (__x!31844 Int)) )
))
(declare-fun hashF!1323 () Hashable!6141)

(declare-fun allKeysSameHash!1598 (List!52327 (_ BitVec 64) Hashable!6141) Bool)

(assert (=> b!4677354 (= res!1970292 (allKeysSameHash!1598 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4677355 () Bool)

(declare-fun e!2918357 () Bool)

(declare-fun lt!1837146 () ListMap!4797)

(declare-fun oldBucket!34 () List!52327)

(assert (=> b!4677355 (= e!2918357 (or (not (= lt!1837148 lt!1837146)) (not (= oldBucket!34 Nil!52203))))))

(declare-fun res!1970293 () Bool)

(assert (=> start!472160 (=> (not res!1970293) (not e!2918356))))

(declare-fun lambda!203973 () Int)

(declare-fun forall!11197 (List!52328 Int) Bool)

(assert (=> start!472160 (= res!1970293 (forall!11197 (toList!5434 lm!2023) lambda!203973))))

(assert (=> start!472160 e!2918356))

(declare-fun e!2918360 () Bool)

(declare-fun inv!67454 (ListLongMap!3963) Bool)

(assert (=> start!472160 (and (inv!67454 lm!2023) e!2918360)))

(declare-fun tp_is_empty!30381 () Bool)

(assert (=> start!472160 tp_is_empty!30381))

(declare-fun e!2918362 () Bool)

(assert (=> start!472160 e!2918362))

(assert (=> start!472160 true))

(declare-fun e!2918358 () Bool)

(assert (=> start!472160 e!2918358))

(declare-fun b!4677356 () Bool)

(declare-fun res!1970302 () Bool)

(assert (=> b!4677356 (=> (not res!1970302) (not e!2918361))))

(get-info :version)

(assert (=> b!4677356 (= res!1970302 ((_ is Cons!52204) (toList!5434 lm!2023)))))

(declare-fun b!4677357 () Bool)

(declare-fun e!2918354 () Bool)

(assert (=> b!4677357 (= e!2918354 e!2918353)))

(declare-fun res!1970297 () Bool)

(assert (=> b!4677357 (=> res!1970297 e!2918353)))

(assert (=> b!4677357 (= res!1970297 (not (= lt!1837146 (extractMap!1798 (Cons!52204 (tuple2!53485 hash!405 newBucket!218) (t!359474 (toList!5434 lm!2023)))))))))

(assert (=> b!4677357 (= lt!1837146 (extractMap!1798 (Cons!52204 (tuple2!53485 hash!405 lt!1837150) (t!359474 (toList!5434 lm!2023)))))))

(declare-fun b!4677358 () Bool)

(declare-fun e!2918355 () Bool)

(assert (=> b!4677358 (= e!2918361 (not e!2918355))))

(declare-fun res!1970305 () Bool)

(assert (=> b!4677358 (=> res!1970305 e!2918355)))

(assert (=> b!4677358 (= res!1970305 (or (not ((_ is Cons!52203) oldBucket!34)) (not (= (_1!30035 (h!58406 oldBucket!34)) key!4653))))))

(assert (=> b!4677358 (= lt!1837144 (addToMapMapFromBucket!1204 (_2!30036 (h!58407 (toList!5434 lm!2023))) lt!1837147))))

(assert (=> b!4677358 (= lt!1837147 (extractMap!1798 (t!359474 (toList!5434 lm!2023))))))

(declare-fun tail!8394 (ListLongMap!3963) ListLongMap!3963)

(assert (=> b!4677358 (= (t!359474 (toList!5434 lm!2023)) (toList!5434 (tail!8394 lm!2023)))))

(declare-fun tp_is_empty!30383 () Bool)

(declare-fun tp!1344757 () Bool)

(declare-fun b!4677359 () Bool)

(assert (=> b!4677359 (= e!2918362 (and tp_is_empty!30381 tp_is_empty!30383 tp!1344757))))

(declare-fun b!4677360 () Bool)

(declare-fun res!1970296 () Bool)

(assert (=> b!4677360 (=> (not res!1970296) (not e!2918356))))

(declare-fun removePairForKey!1367 (List!52327 K!13580) List!52327)

(assert (=> b!4677360 (= res!1970296 (= (removePairForKey!1367 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4677361 () Bool)

(declare-fun res!1970300 () Bool)

(assert (=> b!4677361 (=> (not res!1970300) (not e!2918356))))

(declare-fun noDuplicateKeys!1772 (List!52327) Bool)

(assert (=> b!4677361 (= res!1970300 (noDuplicateKeys!1772 oldBucket!34))))

(declare-fun b!4677362 () Bool)

(declare-fun res!1970294 () Bool)

(assert (=> b!4677362 (=> (not res!1970294) (not e!2918356))))

(assert (=> b!4677362 (= res!1970294 (allKeysSameHash!1598 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4677363 () Bool)

(declare-fun res!1970298 () Bool)

(assert (=> b!4677363 (=> (not res!1970298) (not e!2918356))))

(assert (=> b!4677363 (= res!1970298 (noDuplicateKeys!1772 newBucket!218))))

(declare-fun b!4677364 () Bool)

(declare-fun res!1970307 () Bool)

(assert (=> b!4677364 (=> (not res!1970307) (not e!2918361))))

(declare-fun head!9835 (List!52328) tuple2!53484)

(assert (=> b!4677364 (= res!1970307 (= (head!9835 (toList!5434 lm!2023)) (tuple2!53485 hash!405 oldBucket!34)))))

(declare-fun b!4677365 () Bool)

(declare-fun res!1970291 () Bool)

(assert (=> b!4677365 (=> (not res!1970291) (not e!2918361))))

(declare-fun allKeysSameHashInMap!1686 (ListLongMap!3963 Hashable!6141) Bool)

(assert (=> b!4677365 (= res!1970291 (allKeysSameHashInMap!1686 lm!2023 hashF!1323))))

(declare-fun b!4677366 () Bool)

(declare-fun res!1970304 () Bool)

(assert (=> b!4677366 (=> res!1970304 e!2918357)))

(declare-fun containsKey!2909 (List!52327 K!13580) Bool)

(assert (=> b!4677366 (= res!1970304 (containsKey!2909 lt!1837150 key!4653))))

(declare-fun b!4677367 () Bool)

(declare-fun tp!1344759 () Bool)

(assert (=> b!4677367 (= e!2918360 tp!1344759)))

(declare-fun b!4677368 () Bool)

(declare-fun res!1970301 () Bool)

(assert (=> b!4677368 (=> (not res!1970301) (not e!2918361))))

(declare-fun hash!3942 (Hashable!6141 K!13580) (_ BitVec 64))

(assert (=> b!4677368 (= res!1970301 (= (hash!3942 hashF!1323 key!4653) hash!405))))

(declare-fun b!4677369 () Bool)

(assert (=> b!4677369 (= e!2918355 e!2918354)))

(declare-fun res!1970295 () Bool)

(assert (=> b!4677369 (=> res!1970295 e!2918354)))

(assert (=> b!4677369 (= res!1970295 (not (= lt!1837150 newBucket!218)))))

(declare-fun tail!8395 (List!52327) List!52327)

(assert (=> b!4677369 (= lt!1837150 (tail!8395 oldBucket!34))))

(declare-fun b!4677370 () Bool)

(declare-fun tp!1344758 () Bool)

(assert (=> b!4677370 (= e!2918358 (and tp_is_empty!30381 tp_is_empty!30383 tp!1344758))))

(declare-fun b!4677371 () Bool)

(assert (=> b!4677371 (= e!2918359 e!2918357)))

(declare-fun res!1970306 () Bool)

(assert (=> b!4677371 (=> res!1970306 e!2918357)))

(declare-fun eq!961 (ListMap!4797 ListMap!4797) Bool)

(declare-fun +!2074 (ListMap!4797 tuple2!53482) ListMap!4797)

(assert (=> b!4677371 (= res!1970306 (not (eq!961 (+!2074 lt!1837148 (h!58406 oldBucket!34)) (addToMapMapFromBucket!1204 oldBucket!34 lt!1837147))))))

(declare-fun lt!1837145 () tuple2!53482)

(assert (=> b!4677371 (eq!961 (addToMapMapFromBucket!1204 (Cons!52203 lt!1837145 lt!1837150) lt!1837147) (+!2074 lt!1837148 lt!1837145))))

(declare-datatypes ((Unit!121965 0))(
  ( (Unit!121966) )
))
(declare-fun lt!1837149 () Unit!121965)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!210 (tuple2!53482 List!52327 ListMap!4797) Unit!121965)

(assert (=> b!4677371 (= lt!1837149 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!210 lt!1837145 lt!1837150 lt!1837147))))

(declare-fun head!9836 (List!52327) tuple2!53482)

(assert (=> b!4677371 (= lt!1837145 (head!9836 oldBucket!34))))

(assert (= (and start!472160 res!1970293) b!4677361))

(assert (= (and b!4677361 res!1970300) b!4677363))

(assert (= (and b!4677363 res!1970298) b!4677360))

(assert (= (and b!4677360 res!1970296) b!4677362))

(assert (= (and b!4677362 res!1970294) b!4677352))

(assert (= (and b!4677352 res!1970299) b!4677368))

(assert (= (and b!4677368 res!1970301) b!4677354))

(assert (= (and b!4677354 res!1970292) b!4677365))

(assert (= (and b!4677365 res!1970291) b!4677364))

(assert (= (and b!4677364 res!1970307) b!4677356))

(assert (= (and b!4677356 res!1970302) b!4677358))

(assert (= (and b!4677358 (not res!1970305)) b!4677369))

(assert (= (and b!4677369 (not res!1970295)) b!4677357))

(assert (= (and b!4677357 (not res!1970297)) b!4677353))

(assert (= (and b!4677353 (not res!1970303)) b!4677371))

(assert (= (and b!4677371 (not res!1970306)) b!4677366))

(assert (= (and b!4677366 (not res!1970304)) b!4677355))

(assert (= start!472160 b!4677367))

(assert (= (and start!472160 ((_ is Cons!52203) oldBucket!34)) b!4677359))

(assert (= (and start!472160 ((_ is Cons!52203) newBucket!218)) b!4677370))

(declare-fun m!5571809 () Bool)

(assert (=> b!4677352 m!5571809))

(declare-fun m!5571811 () Bool)

(assert (=> b!4677352 m!5571811))

(declare-fun m!5571813 () Bool)

(assert (=> b!4677366 m!5571813))

(declare-fun m!5571815 () Bool)

(assert (=> b!4677362 m!5571815))

(declare-fun m!5571817 () Bool)

(assert (=> b!4677358 m!5571817))

(declare-fun m!5571819 () Bool)

(assert (=> b!4677358 m!5571819))

(declare-fun m!5571821 () Bool)

(assert (=> b!4677358 m!5571821))

(declare-fun m!5571823 () Bool)

(assert (=> b!4677361 m!5571823))

(declare-fun m!5571825 () Bool)

(assert (=> b!4677368 m!5571825))

(declare-fun m!5571827 () Bool)

(assert (=> b!4677357 m!5571827))

(declare-fun m!5571829 () Bool)

(assert (=> b!4677357 m!5571829))

(declare-fun m!5571831 () Bool)

(assert (=> b!4677363 m!5571831))

(declare-fun m!5571833 () Bool)

(assert (=> b!4677369 m!5571833))

(declare-fun m!5571835 () Bool)

(assert (=> b!4677354 m!5571835))

(declare-fun m!5571837 () Bool)

(assert (=> b!4677371 m!5571837))

(declare-fun m!5571839 () Bool)

(assert (=> b!4677371 m!5571839))

(declare-fun m!5571841 () Bool)

(assert (=> b!4677371 m!5571841))

(declare-fun m!5571843 () Bool)

(assert (=> b!4677371 m!5571843))

(declare-fun m!5571845 () Bool)

(assert (=> b!4677371 m!5571845))

(declare-fun m!5571847 () Bool)

(assert (=> b!4677371 m!5571847))

(assert (=> b!4677371 m!5571845))

(assert (=> b!4677371 m!5571847))

(declare-fun m!5571849 () Bool)

(assert (=> b!4677371 m!5571849))

(assert (=> b!4677371 m!5571839))

(declare-fun m!5571851 () Bool)

(assert (=> b!4677371 m!5571851))

(assert (=> b!4677371 m!5571841))

(declare-fun m!5571853 () Bool)

(assert (=> b!4677360 m!5571853))

(declare-fun m!5571855 () Bool)

(assert (=> start!472160 m!5571855))

(declare-fun m!5571857 () Bool)

(assert (=> start!472160 m!5571857))

(declare-fun m!5571859 () Bool)

(assert (=> b!4677364 m!5571859))

(declare-fun m!5571861 () Bool)

(assert (=> b!4677365 m!5571861))

(declare-fun m!5571863 () Bool)

(assert (=> b!4677353 m!5571863))

(declare-fun m!5571865 () Bool)

(assert (=> b!4677353 m!5571865))

(check-sat (not b!4677353) tp_is_empty!30383 (not b!4677369) (not b!4677361) (not b!4677357) (not b!4677362) (not b!4677354) (not b!4677370) (not b!4677364) (not b!4677366) (not b!4677358) tp_is_empty!30381 (not b!4677363) (not b!4677367) (not b!4677371) (not b!4677352) (not b!4677368) (not start!472160) (not b!4677359) (not b!4677360) (not b!4677365))
(check-sat)
