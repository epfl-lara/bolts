; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471834 () Bool)

(assert start!471834)

(declare-fun b!4675010 () Bool)

(declare-fun res!1968748 () Bool)

(declare-fun e!2917130 () Bool)

(assert (=> b!4675010 (=> (not res!1968748) (not e!2917130))))

(declare-datatypes ((K!13523 0))(
  ( (K!13524 (val!19089 Int)) )
))
(declare-datatypes ((V!13769 0))(
  ( (V!13770 (val!19090 Int)) )
))
(declare-datatypes ((tuple2!53390 0))(
  ( (tuple2!53391 (_1!29989 K!13523) (_2!29989 V!13769)) )
))
(declare-datatypes ((List!52273 0))(
  ( (Nil!52149) (Cons!52149 (h!58344 tuple2!53390) (t!359411 List!52273)) )
))
(declare-datatypes ((tuple2!53392 0))(
  ( (tuple2!53393 (_1!29990 (_ BitVec 64)) (_2!29990 List!52273)) )
))
(declare-datatypes ((List!52274 0))(
  ( (Nil!52150) (Cons!52150 (h!58345 tuple2!53392) (t!359412 List!52274)) )
))
(declare-datatypes ((ListLongMap!3917 0))(
  ( (ListLongMap!3918 (toList!5387 List!52274)) )
))
(declare-fun lm!2023 () ListLongMap!3917)

(assert (=> b!4675010 (= res!1968748 (is-Cons!52150 (toList!5387 lm!2023)))))

(declare-fun b!4675011 () Bool)

(declare-fun res!1968751 () Bool)

(assert (=> b!4675011 (=> (not res!1968751) (not e!2917130))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6118 0))(
  ( (HashableExt!6117 (__x!31821 Int)) )
))
(declare-fun hashF!1323 () Hashable!6118)

(declare-fun newBucket!218 () List!52273)

(declare-fun allKeysSameHash!1575 (List!52273 (_ BitVec 64) Hashable!6118) Bool)

(assert (=> b!4675011 (= res!1968751 (allKeysSameHash!1575 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp!1344472 () Bool)

(declare-fun tp_is_empty!30289 () Bool)

(declare-fun tp_is_empty!30291 () Bool)

(declare-fun e!2917126 () Bool)

(declare-fun b!4675012 () Bool)

(assert (=> b!4675012 (= e!2917126 (and tp_is_empty!30289 tp_is_empty!30291 tp!1344472))))

(declare-fun b!4675013 () Bool)

(declare-fun e!2917128 () Bool)

(assert (=> b!4675013 (= e!2917128 e!2917130)))

(declare-fun res!1968754 () Bool)

(assert (=> b!4675013 (=> (not res!1968754) (not e!2917130))))

(declare-datatypes ((ListMap!4751 0))(
  ( (ListMap!4752 (toList!5388 List!52273)) )
))
(declare-fun lt!1835216 () ListMap!4751)

(declare-fun key!4653 () K!13523)

(declare-fun contains!15305 (ListMap!4751 K!13523) Bool)

(assert (=> b!4675013 (= res!1968754 (contains!15305 lt!1835216 key!4653))))

(declare-fun extractMap!1775 (List!52274) ListMap!4751)

(assert (=> b!4675013 (= lt!1835216 (extractMap!1775 (toList!5387 lm!2023)))))

(declare-fun b!4675014 () Bool)

(declare-fun e!2917125 () Bool)

(declare-fun tp!1344470 () Bool)

(assert (=> b!4675014 (= e!2917125 tp!1344470)))

(declare-fun tp!1344471 () Bool)

(declare-fun e!2917129 () Bool)

(declare-fun b!4675015 () Bool)

(assert (=> b!4675015 (= e!2917129 (and tp_is_empty!30289 tp_is_empty!30291 tp!1344471))))

(declare-fun b!4675016 () Bool)

(declare-fun res!1968749 () Bool)

(declare-fun e!2917131 () Bool)

(assert (=> b!4675016 (=> res!1968749 e!2917131)))

(declare-fun lt!1835217 () List!52273)

(declare-fun noDuplicateKeys!1749 (List!52273) Bool)

(assert (=> b!4675016 (= res!1968749 (not (noDuplicateKeys!1749 lt!1835217)))))

(declare-fun b!4675017 () Bool)

(declare-fun res!1968758 () Bool)

(assert (=> b!4675017 (=> (not res!1968758) (not e!2917128))))

(assert (=> b!4675017 (= res!1968758 (noDuplicateKeys!1749 newBucket!218))))

(declare-fun b!4675018 () Bool)

(declare-fun res!1968761 () Bool)

(assert (=> b!4675018 (=> (not res!1968761) (not e!2917130))))

(declare-fun oldBucket!34 () List!52273)

(declare-fun head!9789 (List!52274) tuple2!53392)

(assert (=> b!4675018 (= res!1968761 (= (head!9789 (toList!5387 lm!2023)) (tuple2!53393 hash!405 oldBucket!34)))))

(declare-fun b!4675019 () Bool)

(declare-fun res!1968753 () Bool)

(assert (=> b!4675019 (=> (not res!1968753) (not e!2917128))))

(assert (=> b!4675019 (= res!1968753 (allKeysSameHash!1575 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4675020 () Bool)

(declare-fun res!1968763 () Bool)

(assert (=> b!4675020 (=> (not res!1968763) (not e!2917130))))

(declare-fun hash!3911 (Hashable!6118 K!13523) (_ BitVec 64))

(assert (=> b!4675020 (= res!1968763 (= (hash!3911 hashF!1323 key!4653) hash!405))))

(declare-fun b!4675021 () Bool)

(declare-fun e!2917127 () Bool)

(assert (=> b!4675021 (= e!2917127 e!2917131)))

(declare-fun res!1968750 () Bool)

(assert (=> b!4675021 (=> res!1968750 e!2917131)))

(assert (=> b!4675021 (= res!1968750 (not (= lt!1835217 newBucket!218)))))

(declare-fun tail!8340 (List!52273) List!52273)

(assert (=> b!4675021 (= lt!1835217 (tail!8340 oldBucket!34))))

(declare-fun res!1968755 () Bool)

(assert (=> start!471834 (=> (not res!1968755) (not e!2917128))))

(declare-fun lambda!203416 () Int)

(declare-fun forall!11166 (List!52274 Int) Bool)

(assert (=> start!471834 (= res!1968755 (forall!11166 (toList!5387 lm!2023) lambda!203416))))

(assert (=> start!471834 e!2917128))

(declare-fun inv!67398 (ListLongMap!3917) Bool)

(assert (=> start!471834 (and (inv!67398 lm!2023) e!2917125)))

(assert (=> start!471834 tp_is_empty!30289))

(assert (=> start!471834 e!2917129))

(assert (=> start!471834 true))

(assert (=> start!471834 e!2917126))

(declare-fun b!4675022 () Bool)

(declare-fun res!1968757 () Bool)

(assert (=> b!4675022 (=> (not res!1968757) (not e!2917130))))

(declare-fun allKeysSameHashInMap!1663 (ListLongMap!3917 Hashable!6118) Bool)

(assert (=> b!4675022 (= res!1968757 (allKeysSameHashInMap!1663 lm!2023 hashF!1323))))

(declare-fun b!4675023 () Bool)

(declare-fun res!1968759 () Bool)

(assert (=> b!4675023 (=> res!1968759 e!2917131)))

(assert (=> b!4675023 (= res!1968759 (not (= (extractMap!1775 (Cons!52150 (tuple2!53393 hash!405 lt!1835217) (t!359412 (toList!5387 lm!2023)))) (extractMap!1775 (Cons!52150 (tuple2!53393 hash!405 newBucket!218) (t!359412 (toList!5387 lm!2023)))))))))

(declare-fun b!4675024 () Bool)

(assert (=> b!4675024 (= e!2917130 (not e!2917127))))

(declare-fun res!1968760 () Bool)

(assert (=> b!4675024 (=> res!1968760 e!2917127)))

(assert (=> b!4675024 (= res!1968760 (or (not (is-Cons!52149 oldBucket!34)) (not (= (_1!29989 (h!58344 oldBucket!34)) key!4653))))))

(declare-fun lt!1835218 () ListMap!4751)

(declare-fun addToMapMapFromBucket!1181 (List!52273 ListMap!4751) ListMap!4751)

(assert (=> b!4675024 (= lt!1835216 (addToMapMapFromBucket!1181 (_2!29990 (h!58345 (toList!5387 lm!2023))) lt!1835218))))

(assert (=> b!4675024 (= lt!1835218 (extractMap!1775 (t!359412 (toList!5387 lm!2023))))))

(declare-fun tail!8341 (ListLongMap!3917) ListLongMap!3917)

(assert (=> b!4675024 (= (t!359412 (toList!5387 lm!2023)) (toList!5387 (tail!8341 lm!2023)))))

(declare-fun b!4675025 () Bool)

(declare-fun res!1968762 () Bool)

(assert (=> b!4675025 (=> (not res!1968762) (not e!2917128))))

(declare-fun removePairForKey!1344 (List!52273 K!13523) List!52273)

(assert (=> b!4675025 (= res!1968762 (= (removePairForKey!1344 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4675026 () Bool)

(assert (=> b!4675026 (= e!2917131 true)))

(declare-fun lt!1835215 () Bool)

(declare-fun head!9790 (List!52273) tuple2!53390)

(assert (=> b!4675026 (= lt!1835215 (noDuplicateKeys!1749 (Cons!52149 (head!9790 oldBucket!34) lt!1835217)))))

(declare-fun b!4675027 () Bool)

(declare-fun res!1968752 () Bool)

(assert (=> b!4675027 (=> res!1968752 e!2917131)))

(assert (=> b!4675027 (= res!1968752 (not (= (addToMapMapFromBucket!1181 lt!1835217 lt!1835218) (addToMapMapFromBucket!1181 newBucket!218 lt!1835218))))))

(declare-fun b!4675028 () Bool)

(declare-fun res!1968756 () Bool)

(assert (=> b!4675028 (=> (not res!1968756) (not e!2917128))))

(assert (=> b!4675028 (= res!1968756 (noDuplicateKeys!1749 oldBucket!34))))

(assert (= (and start!471834 res!1968755) b!4675028))

(assert (= (and b!4675028 res!1968756) b!4675017))

(assert (= (and b!4675017 res!1968758) b!4675025))

(assert (= (and b!4675025 res!1968762) b!4675019))

(assert (= (and b!4675019 res!1968753) b!4675013))

(assert (= (and b!4675013 res!1968754) b!4675020))

(assert (= (and b!4675020 res!1968763) b!4675011))

(assert (= (and b!4675011 res!1968751) b!4675022))

(assert (= (and b!4675022 res!1968757) b!4675018))

(assert (= (and b!4675018 res!1968761) b!4675010))

(assert (= (and b!4675010 res!1968748) b!4675024))

(assert (= (and b!4675024 (not res!1968760)) b!4675021))

(assert (= (and b!4675021 (not res!1968750)) b!4675023))

(assert (= (and b!4675023 (not res!1968759)) b!4675027))

(assert (= (and b!4675027 (not res!1968752)) b!4675016))

(assert (= (and b!4675016 (not res!1968749)) b!4675026))

(assert (= start!471834 b!4675014))

(assert (= (and start!471834 (is-Cons!52149 oldBucket!34)) b!4675015))

(assert (= (and start!471834 (is-Cons!52149 newBucket!218)) b!4675012))

(declare-fun m!5568461 () Bool)

(assert (=> b!4675019 m!5568461))

(declare-fun m!5568463 () Bool)

(assert (=> b!4675020 m!5568463))

(declare-fun m!5568465 () Bool)

(assert (=> b!4675017 m!5568465))

(declare-fun m!5568467 () Bool)

(assert (=> b!4675025 m!5568467))

(declare-fun m!5568469 () Bool)

(assert (=> b!4675024 m!5568469))

(declare-fun m!5568471 () Bool)

(assert (=> b!4675024 m!5568471))

(declare-fun m!5568473 () Bool)

(assert (=> b!4675024 m!5568473))

(declare-fun m!5568475 () Bool)

(assert (=> b!4675022 m!5568475))

(declare-fun m!5568477 () Bool)

(assert (=> b!4675023 m!5568477))

(declare-fun m!5568479 () Bool)

(assert (=> b!4675023 m!5568479))

(declare-fun m!5568481 () Bool)

(assert (=> b!4675011 m!5568481))

(declare-fun m!5568483 () Bool)

(assert (=> b!4675013 m!5568483))

(declare-fun m!5568485 () Bool)

(assert (=> b!4675013 m!5568485))

(declare-fun m!5568487 () Bool)

(assert (=> start!471834 m!5568487))

(declare-fun m!5568489 () Bool)

(assert (=> start!471834 m!5568489))

(declare-fun m!5568491 () Bool)

(assert (=> b!4675021 m!5568491))

(declare-fun m!5568493 () Bool)

(assert (=> b!4675028 m!5568493))

(declare-fun m!5568495 () Bool)

(assert (=> b!4675018 m!5568495))

(declare-fun m!5568497 () Bool)

(assert (=> b!4675016 m!5568497))

(declare-fun m!5568499 () Bool)

(assert (=> b!4675026 m!5568499))

(declare-fun m!5568501 () Bool)

(assert (=> b!4675026 m!5568501))

(declare-fun m!5568503 () Bool)

(assert (=> b!4675027 m!5568503))

(declare-fun m!5568505 () Bool)

(assert (=> b!4675027 m!5568505))

(push 1)

(assert tp_is_empty!30289)

(assert tp_is_empty!30291)

(assert (not b!4675012))

(assert (not b!4675025))

(assert (not b!4675011))

(assert (not b!4675023))

(assert (not b!4675019))

(assert (not b!4675026))

(assert (not b!4675013))

(assert (not b!4675016))

(assert (not b!4675028))

(assert (not b!4675017))

(assert (not b!4675021))

(assert (not b!4675024))

(assert (not start!471834))

(assert (not b!4675014))

(assert (not b!4675020))

(assert (not b!4675022))

(assert (not b!4675015))

(assert (not b!4675027))

(assert (not b!4675018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

