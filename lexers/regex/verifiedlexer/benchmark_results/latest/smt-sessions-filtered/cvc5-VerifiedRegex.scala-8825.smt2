; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471838 () Bool)

(assert start!471838)

(declare-fun b!4675122 () Bool)

(declare-fun res!1968842 () Bool)

(declare-fun e!2917173 () Bool)

(assert (=> b!4675122 (=> res!1968842 e!2917173)))

(declare-datatypes ((K!13528 0))(
  ( (K!13529 (val!19093 Int)) )
))
(declare-datatypes ((V!13774 0))(
  ( (V!13775 (val!19094 Int)) )
))
(declare-datatypes ((tuple2!53398 0))(
  ( (tuple2!53399 (_1!29993 K!13528) (_2!29993 V!13774)) )
))
(declare-datatypes ((List!52277 0))(
  ( (Nil!52153) (Cons!52153 (h!58348 tuple2!53398) (t!359415 List!52277)) )
))
(declare-datatypes ((tuple2!53400 0))(
  ( (tuple2!53401 (_1!29994 (_ BitVec 64)) (_2!29994 List!52277)) )
))
(declare-datatypes ((List!52278 0))(
  ( (Nil!52154) (Cons!52154 (h!58349 tuple2!53400) (t!359416 List!52278)) )
))
(declare-datatypes ((ListLongMap!3921 0))(
  ( (ListLongMap!3922 (toList!5391 List!52278)) )
))
(declare-fun lm!2023 () ListLongMap!3921)

(declare-fun newBucket!218 () List!52277)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1835247 () List!52277)

(declare-datatypes ((ListMap!4755 0))(
  ( (ListMap!4756 (toList!5392 List!52277)) )
))
(declare-fun extractMap!1777 (List!52278) ListMap!4755)

(assert (=> b!4675122 (= res!1968842 (not (= (extractMap!1777 (Cons!52154 (tuple2!53401 hash!405 lt!1835247) (t!359416 (toList!5391 lm!2023)))) (extractMap!1777 (Cons!52154 (tuple2!53401 hash!405 newBucket!218) (t!359416 (toList!5391 lm!2023)))))))))

(declare-fun b!4675123 () Bool)

(declare-fun e!2917176 () Bool)

(declare-fun e!2917172 () Bool)

(assert (=> b!4675123 (= e!2917176 (not e!2917172))))

(declare-fun res!1968850 () Bool)

(assert (=> b!4675123 (=> res!1968850 e!2917172)))

(declare-fun oldBucket!34 () List!52277)

(declare-fun key!4653 () K!13528)

(assert (=> b!4675123 (= res!1968850 (or (not (is-Cons!52153 oldBucket!34)) (not (= (_1!29993 (h!58348 oldBucket!34)) key!4653))))))

(declare-fun lt!1835245 () ListMap!4755)

(declare-fun lt!1835243 () ListMap!4755)

(declare-fun addToMapMapFromBucket!1183 (List!52277 ListMap!4755) ListMap!4755)

(assert (=> b!4675123 (= lt!1835245 (addToMapMapFromBucket!1183 (_2!29994 (h!58349 (toList!5391 lm!2023))) lt!1835243))))

(assert (=> b!4675123 (= lt!1835243 (extractMap!1777 (t!359416 (toList!5391 lm!2023))))))

(declare-fun tail!8344 (ListLongMap!3921) ListLongMap!3921)

(assert (=> b!4675123 (= (t!359416 (toList!5391 lm!2023)) (toList!5391 (tail!8344 lm!2023)))))

(declare-fun res!1968843 () Bool)

(declare-fun e!2917171 () Bool)

(assert (=> start!471838 (=> (not res!1968843) (not e!2917171))))

(declare-fun lambda!203422 () Int)

(declare-fun forall!11168 (List!52278 Int) Bool)

(assert (=> start!471838 (= res!1968843 (forall!11168 (toList!5391 lm!2023) lambda!203422))))

(assert (=> start!471838 e!2917171))

(declare-fun e!2917170 () Bool)

(declare-fun inv!67403 (ListLongMap!3921) Bool)

(assert (=> start!471838 (and (inv!67403 lm!2023) e!2917170)))

(declare-fun tp_is_empty!30297 () Bool)

(assert (=> start!471838 tp_is_empty!30297))

(declare-fun e!2917175 () Bool)

(assert (=> start!471838 e!2917175))

(assert (=> start!471838 true))

(declare-fun e!2917169 () Bool)

(assert (=> start!471838 e!2917169))

(declare-fun tp!1344489 () Bool)

(declare-fun tp_is_empty!30299 () Bool)

(declare-fun b!4675124 () Bool)

(assert (=> b!4675124 (= e!2917169 (and tp_is_empty!30297 tp_is_empty!30299 tp!1344489))))

(declare-fun b!4675125 () Bool)

(declare-fun res!1968855 () Bool)

(assert (=> b!4675125 (=> (not res!1968855) (not e!2917171))))

(declare-fun noDuplicateKeys!1751 (List!52277) Bool)

(assert (=> b!4675125 (= res!1968855 (noDuplicateKeys!1751 oldBucket!34))))

(declare-fun b!4675126 () Bool)

(declare-fun tp!1344488 () Bool)

(assert (=> b!4675126 (= e!2917170 tp!1344488)))

(declare-fun b!4675127 () Bool)

(declare-fun res!1968845 () Bool)

(assert (=> b!4675127 (=> (not res!1968845) (not e!2917171))))

(assert (=> b!4675127 (= res!1968845 (noDuplicateKeys!1751 newBucket!218))))

(declare-fun b!4675128 () Bool)

(assert (=> b!4675128 (= e!2917172 e!2917173)))

(declare-fun res!1968846 () Bool)

(assert (=> b!4675128 (=> res!1968846 e!2917173)))

(assert (=> b!4675128 (= res!1968846 (not (= lt!1835247 newBucket!218)))))

(declare-fun tail!8345 (List!52277) List!52277)

(assert (=> b!4675128 (= lt!1835247 (tail!8345 oldBucket!34))))

(declare-fun b!4675129 () Bool)

(declare-fun e!2917174 () Bool)

(assert (=> b!4675129 (= e!2917174 (not (= oldBucket!34 Nil!52153)))))

(declare-fun lt!1835248 () ListMap!4755)

(declare-fun lt!1835246 () tuple2!53398)

(declare-fun eq!940 (ListMap!4755 ListMap!4755) Bool)

(declare-fun +!2053 (ListMap!4755 tuple2!53398) ListMap!4755)

(assert (=> b!4675129 (eq!940 (addToMapMapFromBucket!1183 (Cons!52153 lt!1835246 lt!1835247) lt!1835243) (+!2053 lt!1835248 lt!1835246))))

(declare-datatypes ((Unit!121511 0))(
  ( (Unit!121512) )
))
(declare-fun lt!1835244 () Unit!121511)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!189 (tuple2!53398 List!52277 ListMap!4755) Unit!121511)

(assert (=> b!4675129 (= lt!1835244 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!189 lt!1835246 lt!1835247 lt!1835243))))

(declare-fun head!9793 (List!52277) tuple2!53398)

(assert (=> b!4675129 (= lt!1835246 (head!9793 oldBucket!34))))

(declare-fun b!4675130 () Bool)

(declare-fun res!1968853 () Bool)

(assert (=> b!4675130 (=> (not res!1968853) (not e!2917176))))

(declare-datatypes ((Hashable!6120 0))(
  ( (HashableExt!6119 (__x!31823 Int)) )
))
(declare-fun hashF!1323 () Hashable!6120)

(declare-fun allKeysSameHashInMap!1665 (ListLongMap!3921 Hashable!6120) Bool)

(assert (=> b!4675130 (= res!1968853 (allKeysSameHashInMap!1665 lm!2023 hashF!1323))))

(declare-fun b!4675131 () Bool)

(assert (=> b!4675131 (= e!2917173 e!2917174)))

(declare-fun res!1968856 () Bool)

(assert (=> b!4675131 (=> res!1968856 e!2917174)))

(assert (=> b!4675131 (= res!1968856 (not (= lt!1835248 (addToMapMapFromBucket!1183 newBucket!218 lt!1835243))))))

(assert (=> b!4675131 (= lt!1835248 (addToMapMapFromBucket!1183 lt!1835247 lt!1835243))))

(declare-fun b!4675132 () Bool)

(declare-fun res!1968854 () Bool)

(assert (=> b!4675132 (=> (not res!1968854) (not e!2917176))))

(declare-fun hash!3913 (Hashable!6120 K!13528) (_ BitVec 64))

(assert (=> b!4675132 (= res!1968854 (= (hash!3913 hashF!1323 key!4653) hash!405))))

(declare-fun tp!1344490 () Bool)

(declare-fun b!4675133 () Bool)

(assert (=> b!4675133 (= e!2917175 (and tp_is_empty!30297 tp_is_empty!30299 tp!1344490))))

(declare-fun b!4675134 () Bool)

(declare-fun res!1968847 () Bool)

(assert (=> b!4675134 (=> (not res!1968847) (not e!2917176))))

(assert (=> b!4675134 (= res!1968847 (is-Cons!52154 (toList!5391 lm!2023)))))

(declare-fun b!4675135 () Bool)

(declare-fun res!1968844 () Bool)

(assert (=> b!4675135 (=> (not res!1968844) (not e!2917176))))

(declare-fun head!9794 (List!52278) tuple2!53400)

(assert (=> b!4675135 (= res!1968844 (= (head!9794 (toList!5391 lm!2023)) (tuple2!53401 hash!405 oldBucket!34)))))

(declare-fun b!4675136 () Bool)

(declare-fun res!1968851 () Bool)

(assert (=> b!4675136 (=> (not res!1968851) (not e!2917171))))

(declare-fun removePairForKey!1346 (List!52277 K!13528) List!52277)

(assert (=> b!4675136 (= res!1968851 (= (removePairForKey!1346 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4675137 () Bool)

(declare-fun res!1968848 () Bool)

(assert (=> b!4675137 (=> (not res!1968848) (not e!2917176))))

(declare-fun allKeysSameHash!1577 (List!52277 (_ BitVec 64) Hashable!6120) Bool)

(assert (=> b!4675137 (= res!1968848 (allKeysSameHash!1577 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4675138 () Bool)

(assert (=> b!4675138 (= e!2917171 e!2917176)))

(declare-fun res!1968852 () Bool)

(assert (=> b!4675138 (=> (not res!1968852) (not e!2917176))))

(declare-fun contains!15307 (ListMap!4755 K!13528) Bool)

(assert (=> b!4675138 (= res!1968852 (contains!15307 lt!1835245 key!4653))))

(assert (=> b!4675138 (= lt!1835245 (extractMap!1777 (toList!5391 lm!2023)))))

(declare-fun b!4675139 () Bool)

(declare-fun res!1968849 () Bool)

(assert (=> b!4675139 (=> (not res!1968849) (not e!2917171))))

(assert (=> b!4675139 (= res!1968849 (allKeysSameHash!1577 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!471838 res!1968843) b!4675125))

(assert (= (and b!4675125 res!1968855) b!4675127))

(assert (= (and b!4675127 res!1968845) b!4675136))

(assert (= (and b!4675136 res!1968851) b!4675139))

(assert (= (and b!4675139 res!1968849) b!4675138))

(assert (= (and b!4675138 res!1968852) b!4675132))

(assert (= (and b!4675132 res!1968854) b!4675137))

(assert (= (and b!4675137 res!1968848) b!4675130))

(assert (= (and b!4675130 res!1968853) b!4675135))

(assert (= (and b!4675135 res!1968844) b!4675134))

(assert (= (and b!4675134 res!1968847) b!4675123))

(assert (= (and b!4675123 (not res!1968850)) b!4675128))

(assert (= (and b!4675128 (not res!1968846)) b!4675122))

(assert (= (and b!4675122 (not res!1968842)) b!4675131))

(assert (= (and b!4675131 (not res!1968856)) b!4675129))

(assert (= start!471838 b!4675126))

(assert (= (and start!471838 (is-Cons!52153 oldBucket!34)) b!4675133))

(assert (= (and start!471838 (is-Cons!52153 newBucket!218)) b!4675124))

(declare-fun m!5568553 () Bool)

(assert (=> b!4675122 m!5568553))

(declare-fun m!5568555 () Bool)

(assert (=> b!4675122 m!5568555))

(declare-fun m!5568557 () Bool)

(assert (=> b!4675130 m!5568557))

(declare-fun m!5568559 () Bool)

(assert (=> b!4675137 m!5568559))

(declare-fun m!5568561 () Bool)

(assert (=> b!4675128 m!5568561))

(declare-fun m!5568563 () Bool)

(assert (=> b!4675131 m!5568563))

(declare-fun m!5568565 () Bool)

(assert (=> b!4675131 m!5568565))

(declare-fun m!5568567 () Bool)

(assert (=> b!4675138 m!5568567))

(declare-fun m!5568569 () Bool)

(assert (=> b!4675138 m!5568569))

(declare-fun m!5568571 () Bool)

(assert (=> b!4675136 m!5568571))

(declare-fun m!5568573 () Bool)

(assert (=> start!471838 m!5568573))

(declare-fun m!5568575 () Bool)

(assert (=> start!471838 m!5568575))

(declare-fun m!5568577 () Bool)

(assert (=> b!4675125 m!5568577))

(declare-fun m!5568579 () Bool)

(assert (=> b!4675123 m!5568579))

(declare-fun m!5568581 () Bool)

(assert (=> b!4675123 m!5568581))

(declare-fun m!5568583 () Bool)

(assert (=> b!4675123 m!5568583))

(declare-fun m!5568585 () Bool)

(assert (=> b!4675129 m!5568585))

(declare-fun m!5568587 () Bool)

(assert (=> b!4675129 m!5568587))

(declare-fun m!5568589 () Bool)

(assert (=> b!4675129 m!5568589))

(declare-fun m!5568591 () Bool)

(assert (=> b!4675129 m!5568591))

(assert (=> b!4675129 m!5568585))

(assert (=> b!4675129 m!5568587))

(declare-fun m!5568593 () Bool)

(assert (=> b!4675129 m!5568593))

(declare-fun m!5568595 () Bool)

(assert (=> b!4675127 m!5568595))

(declare-fun m!5568597 () Bool)

(assert (=> b!4675135 m!5568597))

(declare-fun m!5568599 () Bool)

(assert (=> b!4675132 m!5568599))

(declare-fun m!5568601 () Bool)

(assert (=> b!4675139 m!5568601))

(push 1)

(assert (not b!4675124))

(assert (not b!4675132))

(assert (not b!4675133))

(assert (not start!471838))

(assert tp_is_empty!30299)

(assert (not b!4675135))

(assert (not b!4675131))

(assert (not b!4675123))

(assert tp_is_empty!30297)

(assert (not b!4675122))

(assert (not b!4675125))

(assert (not b!4675126))

(assert (not b!4675127))

(assert (not b!4675136))

(assert (not b!4675128))

(assert (not b!4675129))

(assert (not b!4675138))

(assert (not b!4675137))

(assert (not b!4675130))

(assert (not b!4675139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

