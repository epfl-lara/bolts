; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!472926 () Bool)

(assert start!472926)

(declare-fun res!1973440 () Bool)

(declare-fun e!2921258 () Bool)

(assert (=> start!472926 (=> (not res!1973440) (not e!2921258))))

(declare-datatypes ((K!13658 0))(
  ( (K!13659 (val!19197 Int)) )
))
(declare-datatypes ((V!13904 0))(
  ( (V!13905 (val!19198 Int)) )
))
(declare-datatypes ((tuple2!53606 0))(
  ( (tuple2!53607 (_1!30097 K!13658) (_2!30097 V!13904)) )
))
(declare-datatypes ((List!52405 0))(
  ( (Nil!52281) (Cons!52281 (h!58500 tuple2!53606) (t!359567 List!52405)) )
))
(declare-datatypes ((tuple2!53608 0))(
  ( (tuple2!53609 (_1!30098 (_ BitVec 64)) (_2!30098 List!52405)) )
))
(declare-datatypes ((List!52406 0))(
  ( (Nil!52282) (Cons!52282 (h!58501 tuple2!53608) (t!359568 List!52406)) )
))
(declare-datatypes ((ListLongMap!4025 0))(
  ( (ListLongMap!4026 (toList!5495 List!52406)) )
))
(declare-fun lm!2023 () ListLongMap!4025)

(declare-fun lambda!205154 () Int)

(declare-fun forall!11244 (List!52406 Int) Bool)

(assert (=> start!472926 (= res!1973440 (forall!11244 (toList!5495 lm!2023) lambda!205154))))

(assert (=> start!472926 e!2921258))

(declare-fun e!2921261 () Bool)

(declare-fun inv!67533 (ListLongMap!4025) Bool)

(assert (=> start!472926 (and (inv!67533 lm!2023) e!2921261)))

(declare-fun tp_is_empty!30505 () Bool)

(assert (=> start!472926 tp_is_empty!30505))

(declare-fun e!2921257 () Bool)

(assert (=> start!472926 e!2921257))

(assert (=> start!472926 true))

(declare-fun e!2921262 () Bool)

(assert (=> start!472926 e!2921262))

(declare-fun b!4682196 () Bool)

(declare-fun tp!1345197 () Bool)

(assert (=> b!4682196 (= e!2921261 tp!1345197)))

(declare-fun b!4682197 () Bool)

(declare-fun res!1973442 () Bool)

(assert (=> b!4682197 (=> (not res!1973442) (not e!2921258))))

(declare-datatypes ((Hashable!6172 0))(
  ( (HashableExt!6171 (__x!31875 Int)) )
))
(declare-fun hashF!1323 () Hashable!6172)

(declare-fun oldBucket!34 () List!52405)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1629 (List!52405 (_ BitVec 64) Hashable!6172) Bool)

(assert (=> b!4682197 (= res!1973442 (allKeysSameHash!1629 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4682198 () Bool)

(declare-fun res!1973436 () Bool)

(declare-fun e!2921260 () Bool)

(assert (=> b!4682198 (=> (not res!1973436) (not e!2921260))))

(declare-fun head!9897 (List!52406) tuple2!53608)

(assert (=> b!4682198 (= res!1973436 (= (head!9897 (toList!5495 lm!2023)) (tuple2!53609 hash!405 oldBucket!34)))))

(declare-fun b!4682199 () Bool)

(declare-fun res!1973443 () Bool)

(assert (=> b!4682199 (=> (not res!1973443) (not e!2921260))))

(declare-fun allKeysSameHashInMap!1717 (ListLongMap!4025 Hashable!6172) Bool)

(assert (=> b!4682199 (= res!1973443 (allKeysSameHashInMap!1717 lm!2023 hashF!1323))))

(declare-fun b!4682200 () Bool)

(declare-fun res!1973433 () Bool)

(assert (=> b!4682200 (=> (not res!1973433) (not e!2921258))))

(declare-fun key!4653 () K!13658)

(declare-fun newBucket!218 () List!52405)

(declare-fun removePairForKey!1398 (List!52405 K!13658) List!52405)

(assert (=> b!4682200 (= res!1973433 (= (removePairForKey!1398 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4682201 () Bool)

(declare-fun e!2921263 () Bool)

(assert (=> b!4682201 (= e!2921263 (forall!11244 (toList!5495 lm!2023) lambda!205154))))

(declare-fun b!4682202 () Bool)

(assert (=> b!4682202 (= e!2921258 e!2921260)))

(declare-fun res!1973445 () Bool)

(assert (=> b!4682202 (=> (not res!1973445) (not e!2921260))))

(declare-datatypes ((ListMap!4859 0))(
  ( (ListMap!4860 (toList!5496 List!52405)) )
))
(declare-fun lt!1842213 () ListMap!4859)

(declare-fun contains!15411 (ListMap!4859 K!13658) Bool)

(assert (=> b!4682202 (= res!1973445 (contains!15411 lt!1842213 key!4653))))

(declare-fun extractMap!1829 (List!52406) ListMap!4859)

(assert (=> b!4682202 (= lt!1842213 (extractMap!1829 (toList!5495 lm!2023)))))

(declare-fun b!4682203 () Bool)

(declare-fun res!1973444 () Bool)

(assert (=> b!4682203 (=> (not res!1973444) (not e!2921260))))

(declare-fun hash!3989 (Hashable!6172 K!13658) (_ BitVec 64))

(assert (=> b!4682203 (= res!1973444 (= (hash!3989 hashF!1323 key!4653) hash!405))))

(declare-fun b!4682204 () Bool)

(declare-fun tp_is_empty!30507 () Bool)

(declare-fun tp!1345198 () Bool)

(assert (=> b!4682204 (= e!2921262 (and tp_is_empty!30505 tp_is_empty!30507 tp!1345198))))

(declare-fun b!4682205 () Bool)

(declare-fun res!1973434 () Bool)

(assert (=> b!4682205 (=> (not res!1973434) (not e!2921260))))

(assert (=> b!4682205 (= res!1973434 (is-Cons!52282 (toList!5495 lm!2023)))))

(declare-fun b!4682206 () Bool)

(assert (=> b!4682206 (= e!2921260 (not e!2921263))))

(declare-fun res!1973437 () Bool)

(assert (=> b!4682206 (=> res!1973437 e!2921263)))

(assert (=> b!4682206 (= res!1973437 (or (and (is-Cons!52281 oldBucket!34) (= (_1!30097 (h!58500 oldBucket!34)) key!4653)) (not (is-Cons!52281 oldBucket!34)) (= (_1!30097 (h!58500 oldBucket!34)) key!4653)))))

(declare-fun e!2921259 () Bool)

(assert (=> b!4682206 e!2921259))

(declare-fun res!1973435 () Bool)

(assert (=> b!4682206 (=> (not res!1973435) (not e!2921259))))

(declare-fun tail!8474 (ListLongMap!4025) ListLongMap!4025)

(assert (=> b!4682206 (= res!1973435 (= (t!359568 (toList!5495 lm!2023)) (toList!5495 (tail!8474 lm!2023))))))

(declare-fun b!4682207 () Bool)

(declare-fun res!1973432 () Bool)

(assert (=> b!4682207 (=> (not res!1973432) (not e!2921260))))

(assert (=> b!4682207 (= res!1973432 (allKeysSameHash!1629 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4682208 () Bool)

(declare-fun res!1973439 () Bool)

(assert (=> b!4682208 (=> (not res!1973439) (not e!2921258))))

(declare-fun noDuplicateKeys!1803 (List!52405) Bool)

(assert (=> b!4682208 (= res!1973439 (noDuplicateKeys!1803 oldBucket!34))))

(declare-fun b!4682209 () Bool)

(declare-fun res!1973438 () Bool)

(assert (=> b!4682209 (=> res!1973438 e!2921263)))

(assert (=> b!4682209 (= res!1973438 (not (forall!11244 (toList!5495 lm!2023) lambda!205154)))))

(declare-fun b!4682210 () Bool)

(declare-fun res!1973441 () Bool)

(assert (=> b!4682210 (=> (not res!1973441) (not e!2921258))))

(assert (=> b!4682210 (= res!1973441 (noDuplicateKeys!1803 newBucket!218))))

(declare-fun b!4682211 () Bool)

(declare-fun tp!1345196 () Bool)

(assert (=> b!4682211 (= e!2921257 (and tp_is_empty!30505 tp_is_empty!30507 tp!1345196))))

(declare-fun b!4682212 () Bool)

(declare-fun addToMapMapFromBucket!1235 (List!52405 ListMap!4859) ListMap!4859)

(assert (=> b!4682212 (= e!2921259 (= lt!1842213 (addToMapMapFromBucket!1235 (_2!30098 (h!58501 (toList!5495 lm!2023))) (extractMap!1829 (t!359568 (toList!5495 lm!2023))))))))

(assert (= (and start!472926 res!1973440) b!4682208))

(assert (= (and b!4682208 res!1973439) b!4682210))

(assert (= (and b!4682210 res!1973441) b!4682200))

(assert (= (and b!4682200 res!1973433) b!4682197))

(assert (= (and b!4682197 res!1973442) b!4682202))

(assert (= (and b!4682202 res!1973445) b!4682203))

(assert (= (and b!4682203 res!1973444) b!4682207))

(assert (= (and b!4682207 res!1973432) b!4682199))

(assert (= (and b!4682199 res!1973443) b!4682198))

(assert (= (and b!4682198 res!1973436) b!4682205))

(assert (= (and b!4682205 res!1973434) b!4682206))

(assert (= (and b!4682206 res!1973435) b!4682212))

(assert (= (and b!4682206 (not res!1973437)) b!4682209))

(assert (= (and b!4682209 (not res!1973438)) b!4682201))

(assert (= start!472926 b!4682196))

(assert (= (and start!472926 (is-Cons!52281 oldBucket!34)) b!4682211))

(assert (= (and start!472926 (is-Cons!52281 newBucket!218)) b!4682204))

(declare-fun m!5580705 () Bool)

(assert (=> b!4682200 m!5580705))

(declare-fun m!5580707 () Bool)

(assert (=> b!4682210 m!5580707))

(declare-fun m!5580709 () Bool)

(assert (=> b!4682207 m!5580709))

(declare-fun m!5580711 () Bool)

(assert (=> b!4682208 m!5580711))

(declare-fun m!5580713 () Bool)

(assert (=> b!4682197 m!5580713))

(declare-fun m!5580715 () Bool)

(assert (=> b!4682198 m!5580715))

(declare-fun m!5580717 () Bool)

(assert (=> b!4682199 m!5580717))

(declare-fun m!5580719 () Bool)

(assert (=> b!4682203 m!5580719))

(declare-fun m!5580721 () Bool)

(assert (=> b!4682212 m!5580721))

(assert (=> b!4682212 m!5580721))

(declare-fun m!5580723 () Bool)

(assert (=> b!4682212 m!5580723))

(declare-fun m!5580725 () Bool)

(assert (=> b!4682202 m!5580725))

(declare-fun m!5580727 () Bool)

(assert (=> b!4682202 m!5580727))

(declare-fun m!5580729 () Bool)

(assert (=> b!4682201 m!5580729))

(assert (=> start!472926 m!5580729))

(declare-fun m!5580731 () Bool)

(assert (=> start!472926 m!5580731))

(declare-fun m!5580733 () Bool)

(assert (=> b!4682206 m!5580733))

(assert (=> b!4682209 m!5580729))

(push 1)

(assert (not b!4682209))

(assert tp_is_empty!30505)

(assert (not start!472926))

(assert (not b!4682201))

(assert (not b!4682196))

(assert (not b!4682206))

(assert (not b!4682204))

(assert (not b!4682207))

(assert (not b!4682203))

(assert (not b!4682199))

(assert (not b!4682212))

(assert (not b!4682202))

(assert (not b!4682211))

(assert (not b!4682198))

(assert (not b!4682200))

(assert (not b!4682197))

(assert (not b!4682210))

(assert (not b!4682208))

(assert tp_is_empty!30507)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

