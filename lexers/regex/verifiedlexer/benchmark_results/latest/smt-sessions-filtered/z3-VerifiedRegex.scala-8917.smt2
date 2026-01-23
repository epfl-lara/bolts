; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478308 () Bool)

(assert start!478308)

(declare-fun b!4708556 () Bool)

(declare-fun e!2936950 () Bool)

(declare-fun e!2936948 () Bool)

(assert (=> b!4708556 (= e!2936950 (not e!2936948))))

(declare-fun res!1989566 () Bool)

(assert (=> b!4708556 (=> res!1989566 e!2936948)))

(declare-datatypes ((K!13990 0))(
  ( (K!13991 (val!19463 Int)) )
))
(declare-datatypes ((V!14236 0))(
  ( (V!14237 (val!19464 Int)) )
))
(declare-datatypes ((tuple2!54138 0))(
  ( (tuple2!54139 (_1!30363 K!13990) (_2!30363 V!14236)) )
))
(declare-datatypes ((List!52753 0))(
  ( (Nil!52629) (Cons!52629 (h!58930 tuple2!54138) (t!359985 List!52753)) )
))
(declare-fun oldBucket!34 () List!52753)

(declare-fun key!4653 () K!13990)

(get-info :version)

(assert (=> b!4708556 (= res!1989566 (or (and ((_ is Cons!52629) oldBucket!34) (= (_1!30363 (h!58930 oldBucket!34)) key!4653)) (and ((_ is Cons!52629) oldBucket!34) (not (= (_1!30363 (h!58930 oldBucket!34)) key!4653))) ((_ is Nil!52629) oldBucket!34)))))

(declare-fun e!2936951 () Bool)

(assert (=> b!4708556 e!2936951))

(declare-fun res!1989570 () Bool)

(assert (=> b!4708556 (=> (not res!1989570) (not e!2936951))))

(declare-datatypes ((tuple2!54140 0))(
  ( (tuple2!54141 (_1!30364 (_ BitVec 64)) (_2!30364 List!52753)) )
))
(declare-datatypes ((List!52754 0))(
  ( (Nil!52630) (Cons!52630 (h!58931 tuple2!54140) (t!359986 List!52754)) )
))
(declare-datatypes ((ListLongMap!4291 0))(
  ( (ListLongMap!4292 (toList!5761 List!52754)) )
))
(declare-fun lm!2023 () ListLongMap!4291)

(declare-fun tail!8812 (ListLongMap!4291) ListLongMap!4291)

(assert (=> b!4708556 (= res!1989570 (= (t!359986 (toList!5761 lm!2023)) (toList!5761 (tail!8812 lm!2023))))))

(declare-fun b!4708557 () Bool)

(declare-fun e!2936954 () Bool)

(assert (=> b!4708557 (= e!2936954 e!2936950)))

(declare-fun res!1989573 () Bool)

(assert (=> b!4708557 (=> (not res!1989573) (not e!2936950))))

(declare-fun lt!1873317 () tuple2!54140)

(declare-fun head!10122 (List!52754) tuple2!54140)

(assert (=> b!4708557 (= res!1989573 (= (head!10122 (toList!5761 lm!2023)) lt!1873317))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4708557 (= lt!1873317 (tuple2!54141 hash!405 oldBucket!34))))

(declare-fun b!4708558 () Bool)

(declare-fun res!1989568 () Bool)

(assert (=> b!4708558 (=> (not res!1989568) (not e!2936954))))

(declare-datatypes ((Hashable!6305 0))(
  ( (HashableExt!6304 (__x!32008 Int)) )
))
(declare-fun hashF!1323 () Hashable!6305)

(declare-fun allKeysSameHashInMap!1850 (ListLongMap!4291 Hashable!6305) Bool)

(assert (=> b!4708558 (= res!1989568 (allKeysSameHashInMap!1850 lm!2023 hashF!1323))))

(declare-fun lambda!212111 () Int)

(declare-fun lt!1873320 () List!52754)

(declare-fun b!4708559 () Bool)

(declare-fun forall!11459 (List!52754 Int) Bool)

(assert (=> b!4708559 (= e!2936948 (forall!11459 (Cons!52630 lt!1873317 lt!1873320) lambda!212111))))

(declare-datatypes ((ListMap!5125 0))(
  ( (ListMap!5126 (toList!5762 List!52753)) )
))
(declare-fun lt!1873318 () ListMap!5125)

(declare-fun newBucket!218 () List!52753)

(declare-fun extractMap!1962 (List!52754) ListMap!5125)

(assert (=> b!4708559 (= lt!1873318 (extractMap!1962 (Cons!52630 (tuple2!54141 hash!405 newBucket!218) lt!1873320)))))

(declare-fun tail!8813 (List!52754) List!52754)

(assert (=> b!4708559 (= lt!1873320 (tail!8813 (toList!5761 lm!2023)))))

(declare-fun b!4708560 () Bool)

(declare-fun res!1989571 () Bool)

(declare-fun e!2936953 () Bool)

(assert (=> b!4708560 (=> (not res!1989571) (not e!2936953))))

(declare-fun noDuplicateKeys!1936 (List!52753) Bool)

(assert (=> b!4708560 (= res!1989571 (noDuplicateKeys!1936 newBucket!218))))

(declare-fun tp!1347214 () Bool)

(declare-fun tp_is_empty!31039 () Bool)

(declare-fun e!2936949 () Bool)

(declare-fun tp_is_empty!31037 () Bool)

(declare-fun b!4708561 () Bool)

(assert (=> b!4708561 (= e!2936949 (and tp_is_empty!31037 tp_is_empty!31039 tp!1347214))))

(declare-fun res!1989572 () Bool)

(assert (=> start!478308 (=> (not res!1989572) (not e!2936953))))

(assert (=> start!478308 (= res!1989572 (forall!11459 (toList!5761 lm!2023) lambda!212111))))

(assert (=> start!478308 e!2936953))

(declare-fun e!2936952 () Bool)

(declare-fun inv!67864 (ListLongMap!4291) Bool)

(assert (=> start!478308 (and (inv!67864 lm!2023) e!2936952)))

(assert (=> start!478308 tp_is_empty!31037))

(declare-fun e!2936947 () Bool)

(assert (=> start!478308 e!2936947))

(assert (=> start!478308 true))

(assert (=> start!478308 e!2936949))

(declare-fun b!4708562 () Bool)

(assert (=> b!4708562 (= e!2936953 e!2936954)))

(declare-fun res!1989569 () Bool)

(assert (=> b!4708562 (=> (not res!1989569) (not e!2936954))))

(declare-fun lt!1873319 () ListMap!5125)

(declare-fun contains!15944 (ListMap!5125 K!13990) Bool)

(assert (=> b!4708562 (= res!1989569 (contains!15944 lt!1873319 key!4653))))

(assert (=> b!4708562 (= lt!1873319 (extractMap!1962 (toList!5761 lm!2023)))))

(declare-fun b!4708563 () Bool)

(declare-fun res!1989574 () Bool)

(assert (=> b!4708563 (=> (not res!1989574) (not e!2936954))))

(declare-fun hash!4252 (Hashable!6305 K!13990) (_ BitVec 64))

(assert (=> b!4708563 (= res!1989574 (= (hash!4252 hashF!1323 key!4653) hash!405))))

(declare-fun b!4708564 () Bool)

(declare-fun tp!1347213 () Bool)

(assert (=> b!4708564 (= e!2936947 (and tp_is_empty!31037 tp_is_empty!31039 tp!1347213))))

(declare-fun b!4708565 () Bool)

(declare-fun tp!1347215 () Bool)

(assert (=> b!4708565 (= e!2936952 tp!1347215)))

(declare-fun b!4708566 () Bool)

(declare-fun res!1989575 () Bool)

(assert (=> b!4708566 (=> (not res!1989575) (not e!2936953))))

(declare-fun allKeysSameHash!1762 (List!52753 (_ BitVec 64) Hashable!6305) Bool)

(assert (=> b!4708566 (= res!1989575 (allKeysSameHash!1762 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4708567 () Bool)

(declare-fun res!1989564 () Bool)

(assert (=> b!4708567 (=> (not res!1989564) (not e!2936954))))

(assert (=> b!4708567 (= res!1989564 (allKeysSameHash!1762 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4708568 () Bool)

(declare-fun res!1989563 () Bool)

(assert (=> b!4708568 (=> (not res!1989563) (not e!2936953))))

(assert (=> b!4708568 (= res!1989563 (noDuplicateKeys!1936 oldBucket!34))))

(declare-fun b!4708569 () Bool)

(declare-fun res!1989565 () Bool)

(assert (=> b!4708569 (=> (not res!1989565) (not e!2936953))))

(declare-fun removePairForKey!1531 (List!52753 K!13990) List!52753)

(assert (=> b!4708569 (= res!1989565 (= (removePairForKey!1531 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4708570 () Bool)

(declare-fun res!1989567 () Bool)

(assert (=> b!4708570 (=> (not res!1989567) (not e!2936950))))

(assert (=> b!4708570 (= res!1989567 ((_ is Cons!52630) (toList!5761 lm!2023)))))

(declare-fun b!4708571 () Bool)

(declare-fun addToMapMapFromBucket!1368 (List!52753 ListMap!5125) ListMap!5125)

(assert (=> b!4708571 (= e!2936951 (= lt!1873319 (addToMapMapFromBucket!1368 (_2!30364 (h!58931 (toList!5761 lm!2023))) (extractMap!1962 (t!359986 (toList!5761 lm!2023))))))))

(assert (= (and start!478308 res!1989572) b!4708568))

(assert (= (and b!4708568 res!1989563) b!4708560))

(assert (= (and b!4708560 res!1989571) b!4708569))

(assert (= (and b!4708569 res!1989565) b!4708566))

(assert (= (and b!4708566 res!1989575) b!4708562))

(assert (= (and b!4708562 res!1989569) b!4708563))

(assert (= (and b!4708563 res!1989574) b!4708567))

(assert (= (and b!4708567 res!1989564) b!4708558))

(assert (= (and b!4708558 res!1989568) b!4708557))

(assert (= (and b!4708557 res!1989573) b!4708570))

(assert (= (and b!4708570 res!1989567) b!4708556))

(assert (= (and b!4708556 res!1989570) b!4708571))

(assert (= (and b!4708556 (not res!1989566)) b!4708559))

(assert (= start!478308 b!4708565))

(assert (= (and start!478308 ((_ is Cons!52629) oldBucket!34)) b!4708564))

(assert (= (and start!478308 ((_ is Cons!52629) newBucket!218)) b!4708561))

(declare-fun m!5632961 () Bool)

(assert (=> b!4708568 m!5632961))

(declare-fun m!5632963 () Bool)

(assert (=> b!4708556 m!5632963))

(declare-fun m!5632965 () Bool)

(assert (=> start!478308 m!5632965))

(declare-fun m!5632967 () Bool)

(assert (=> start!478308 m!5632967))

(declare-fun m!5632969 () Bool)

(assert (=> b!4708560 m!5632969))

(declare-fun m!5632971 () Bool)

(assert (=> b!4708557 m!5632971))

(declare-fun m!5632973 () Bool)

(assert (=> b!4708567 m!5632973))

(declare-fun m!5632975 () Bool)

(assert (=> b!4708569 m!5632975))

(declare-fun m!5632977 () Bool)

(assert (=> b!4708566 m!5632977))

(declare-fun m!5632979 () Bool)

(assert (=> b!4708571 m!5632979))

(assert (=> b!4708571 m!5632979))

(declare-fun m!5632981 () Bool)

(assert (=> b!4708571 m!5632981))

(declare-fun m!5632983 () Bool)

(assert (=> b!4708562 m!5632983))

(declare-fun m!5632985 () Bool)

(assert (=> b!4708562 m!5632985))

(declare-fun m!5632987 () Bool)

(assert (=> b!4708563 m!5632987))

(declare-fun m!5632989 () Bool)

(assert (=> b!4708559 m!5632989))

(declare-fun m!5632991 () Bool)

(assert (=> b!4708559 m!5632991))

(declare-fun m!5632993 () Bool)

(assert (=> b!4708559 m!5632993))

(declare-fun m!5632995 () Bool)

(assert (=> b!4708558 m!5632995))

(check-sat (not b!4708558) (not b!4708567) (not b!4708571) (not b!4708568) tp_is_empty!31037 (not b!4708556) (not b!4708565) tp_is_empty!31039 (not b!4708563) (not b!4708562) (not b!4708566) (not b!4708569) (not b!4708557) (not b!4708560) (not start!478308) (not b!4708559) (not b!4708564) (not b!4708561))
(check-sat)
