; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484320 () Bool)

(assert start!484320)

(declare-fun b!4744599 () Bool)

(declare-fun res!2010741 () Bool)

(declare-fun e!2959508 () Bool)

(assert (=> b!4744599 (=> res!2010741 e!2959508)))

(declare-datatypes ((K!14320 0))(
  ( (K!14321 (val!19727 Int)) )
))
(declare-datatypes ((V!14566 0))(
  ( (V!14567 (val!19728 Int)) )
))
(declare-datatypes ((tuple2!54666 0))(
  ( (tuple2!54667 (_1!30627 K!14320) (_2!30627 V!14566)) )
))
(declare-datatypes ((List!53103 0))(
  ( (Nil!52979) (Cons!52979 (h!59368 tuple2!54666) (t!360409 List!53103)) )
))
(declare-datatypes ((ListMap!5389 0))(
  ( (ListMap!5390 (toList!6025 List!53103)) )
))
(declare-fun lt!1907491 () ListMap!5389)

(declare-fun lt!1907490 () ListMap!5389)

(declare-fun eq!1165 (ListMap!5389 ListMap!5389) Bool)

(assert (=> b!4744599 (= res!2010741 (not (eq!1165 lt!1907491 lt!1907490)))))

(declare-fun b!4744600 () Bool)

(declare-fun e!2959504 () Bool)

(declare-fun e!2959503 () Bool)

(assert (=> b!4744600 (= e!2959504 e!2959503)))

(declare-fun res!2010725 () Bool)

(assert (=> b!4744600 (=> res!2010725 e!2959503)))

(declare-fun lt!1907487 () ListMap!5389)

(assert (=> b!4744600 (= res!2010725 (not (eq!1165 lt!1907487 lt!1907490)))))

(declare-fun lt!1907498 () ListMap!5389)

(assert (=> b!4744600 (eq!1165 lt!1907498 lt!1907490)))

(declare-fun lt!1907517 () ListMap!5389)

(declare-fun key!4653 () K!14320)

(declare-fun -!758 (ListMap!5389 K!14320) ListMap!5389)

(assert (=> b!4744600 (= lt!1907490 (-!758 lt!1907517 key!4653))))

(declare-fun lt!1907520 () ListMap!5389)

(declare-datatypes ((Unit!134101 0))(
  ( (Unit!134102) )
))
(declare-fun lt!1907523 () Unit!134101)

(declare-fun lemmaRemovePreservesEq!124 (ListMap!5389 ListMap!5389 K!14320) Unit!134101)

(assert (=> b!4744600 (= lt!1907523 (lemmaRemovePreservesEq!124 lt!1907520 lt!1907517 key!4653))))

(declare-fun b!4744601 () Bool)

(declare-fun e!2959500 () Bool)

(declare-fun e!2959502 () Bool)

(assert (=> b!4744601 (= e!2959500 e!2959502)))

(declare-fun res!2010732 () Bool)

(assert (=> b!4744601 (=> res!2010732 e!2959502)))

(declare-fun lt!1907526 () List!53103)

(declare-fun lt!1907525 () List!53103)

(declare-fun removePairForKey!1663 (List!53103 K!14320) List!53103)

(assert (=> b!4744601 (= res!2010732 (not (= (removePairForKey!1663 lt!1907526 key!4653) lt!1907525)))))

(declare-fun newBucket!218 () List!53103)

(declare-fun tail!9143 (List!53103) List!53103)

(assert (=> b!4744601 (= lt!1907525 (tail!9143 newBucket!218))))

(declare-fun oldBucket!34 () List!53103)

(assert (=> b!4744601 (= lt!1907526 (tail!9143 oldBucket!34))))

(declare-fun b!4744602 () Bool)

(declare-fun res!2010733 () Bool)

(declare-fun e!2959506 () Bool)

(assert (=> b!4744602 (=> (not res!2010733) (not e!2959506))))

(declare-fun noDuplicateKeys!2068 (List!53103) Bool)

(assert (=> b!4744602 (= res!2010733 (noDuplicateKeys!2068 newBucket!218))))

(declare-fun b!4744603 () Bool)

(declare-fun e!2959511 () Bool)

(declare-fun tp!1349413 () Bool)

(assert (=> b!4744603 (= e!2959511 tp!1349413)))

(declare-fun b!4744604 () Bool)

(declare-fun e!2959501 () Bool)

(assert (=> b!4744604 (= e!2959501 e!2959500)))

(declare-fun res!2010734 () Bool)

(assert (=> b!4744604 (=> res!2010734 e!2959500)))

(declare-fun containsKey!3497 (List!53103 K!14320) Bool)

(assert (=> b!4744604 (= res!2010734 (not (containsKey!3497 (t!360409 oldBucket!34) key!4653)))))

(assert (=> b!4744604 (containsKey!3497 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6437 0))(
  ( (HashableExt!6436 (__x!32140 Int)) )
))
(declare-fun hashF!1323 () Hashable!6437)

(declare-fun lt!1907506 () Unit!134101)

(declare-fun lemmaGetPairDefinedThenContainsKey!352 (List!53103 K!14320 Hashable!6437) Unit!134101)

(assert (=> b!4744604 (= lt!1907506 (lemmaGetPairDefinedThenContainsKey!352 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1907494 () List!53103)

(declare-datatypes ((Option!12483 0))(
  ( (None!12482) (Some!12482 (v!47167 tuple2!54666)) )
))
(declare-fun isDefined!9737 (Option!12483) Bool)

(declare-fun getPair!608 (List!53103 K!14320) Option!12483)

(assert (=> b!4744604 (isDefined!9737 (getPair!608 lt!1907494 key!4653))))

(declare-datatypes ((tuple2!54668 0))(
  ( (tuple2!54669 (_1!30628 (_ BitVec 64)) (_2!30628 List!53103)) )
))
(declare-datatypes ((List!53104 0))(
  ( (Nil!52980) (Cons!52980 (h!59369 tuple2!54668) (t!360410 List!53104)) )
))
(declare-datatypes ((ListLongMap!4555 0))(
  ( (ListLongMap!4556 (toList!6026 List!53104)) )
))
(declare-fun lm!2023 () ListLongMap!4555)

(declare-fun lambda!219930 () Int)

(declare-fun lt!1907492 () tuple2!54668)

(declare-fun lt!1907508 () Unit!134101)

(declare-fun forallContained!3741 (List!53104 Int tuple2!54668) Unit!134101)

(assert (=> b!4744604 (= lt!1907508 (forallContained!3741 (toList!6026 lm!2023) lambda!219930 lt!1907492))))

(declare-fun contains!16404 (List!53104 tuple2!54668) Bool)

(assert (=> b!4744604 (contains!16404 (toList!6026 lm!2023) lt!1907492)))

(declare-fun lt!1907493 () (_ BitVec 64))

(assert (=> b!4744604 (= lt!1907492 (tuple2!54669 lt!1907493 lt!1907494))))

(declare-fun lt!1907519 () Unit!134101)

(declare-fun lemmaGetValueImpliesTupleContained!413 (ListLongMap!4555 (_ BitVec 64) List!53103) Unit!134101)

(assert (=> b!4744604 (= lt!1907519 (lemmaGetValueImpliesTupleContained!413 lm!2023 lt!1907493 lt!1907494))))

(declare-fun apply!12493 (ListLongMap!4555 (_ BitVec 64)) List!53103)

(assert (=> b!4744604 (= lt!1907494 (apply!12493 lm!2023 lt!1907493))))

(declare-fun contains!16405 (ListLongMap!4555 (_ BitVec 64)) Bool)

(assert (=> b!4744604 (contains!16405 lm!2023 lt!1907493)))

(declare-fun lt!1907518 () Unit!134101)

(declare-fun lemmaInGenMapThenLongMapContainsHash!814 (ListLongMap!4555 K!14320 Hashable!6437) Unit!134101)

(assert (=> b!4744604 (= lt!1907518 (lemmaInGenMapThenLongMapContainsHash!814 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1907512 () Unit!134101)

(declare-fun lemmaInGenMapThenGetPairDefined!404 (ListLongMap!4555 K!14320 Hashable!6437) Unit!134101)

(assert (=> b!4744604 (= lt!1907512 (lemmaInGenMapThenGetPairDefined!404 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4744605 () Bool)

(declare-fun res!2010729 () Bool)

(declare-fun e!2959512 () Bool)

(assert (=> b!4744605 (=> res!2010729 e!2959512)))

(assert (=> b!4744605 (= res!2010729 (not (eq!1165 lt!1907498 lt!1907487)))))

(declare-fun b!4744606 () Bool)

(declare-fun res!2010728 () Bool)

(assert (=> b!4744606 (=> res!2010728 e!2959512)))

(assert (=> b!4744606 (= res!2010728 (not (eq!1165 lt!1907520 lt!1907517)))))

(declare-fun lt!1907489 () tuple2!54668)

(declare-fun lt!1907501 () tuple2!54668)

(declare-fun lt!1907516 () List!53104)

(declare-fun b!4744607 () Bool)

(declare-fun extractMap!2094 (List!53104) ListMap!5389)

(assert (=> b!4744607 (= e!2959508 (eq!1165 (extractMap!2094 (Cons!52980 lt!1907489 lt!1907516)) (-!758 (extractMap!2094 (Cons!52980 lt!1907501 lt!1907516)) key!4653)))))

(declare-fun tail!9144 (List!53104) List!53104)

(assert (=> b!4744607 (= lt!1907516 (tail!9144 (toList!6026 lm!2023)))))

(declare-fun b!4744608 () Bool)

(declare-fun e!2959509 () Bool)

(assert (=> b!4744608 (= e!2959506 e!2959509)))

(declare-fun res!2010737 () Bool)

(assert (=> b!4744608 (=> (not res!2010737) (not e!2959509))))

(declare-fun lt!1907497 () ListMap!5389)

(declare-fun contains!16406 (ListMap!5389 K!14320) Bool)

(assert (=> b!4744608 (= res!2010737 (contains!16406 lt!1907497 key!4653))))

(assert (=> b!4744608 (= lt!1907497 (extractMap!2094 (toList!6026 lm!2023)))))

(declare-fun b!4744609 () Bool)

(declare-fun res!2010742 () Bool)

(declare-fun e!2959498 () Bool)

(assert (=> b!4744609 (=> (not res!2010742) (not e!2959498))))

(declare-fun allKeysSameHashInMap!1982 (ListLongMap!4555 Hashable!6437) Bool)

(assert (=> b!4744609 (= res!2010742 (allKeysSameHashInMap!1982 lm!2023 hashF!1323))))

(declare-fun b!4744610 () Bool)

(declare-fun res!2010720 () Bool)

(assert (=> b!4744610 (=> res!2010720 e!2959502)))

(assert (=> b!4744610 (= res!2010720 (not (= (removePairForKey!1663 (t!360409 oldBucket!34) key!4653) lt!1907525)))))

(declare-fun b!4744611 () Bool)

(assert (=> b!4744611 (= e!2959503 e!2959508)))

(declare-fun res!2010735 () Bool)

(assert (=> b!4744611 (=> res!2010735 e!2959508)))

(declare-fun lt!1907486 () ListMap!5389)

(assert (=> b!4744611 (= res!2010735 (not (eq!1165 lt!1907486 lt!1907491)))))

(assert (=> b!4744611 (= lt!1907491 (extractMap!2094 (Cons!52980 lt!1907489 (t!360410 (toList!6026 lm!2023)))))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4744611 (= lt!1907489 (tuple2!54669 hash!405 newBucket!218))))

(declare-fun e!2959510 () Bool)

(declare-fun tp!1349414 () Bool)

(declare-fun tp_is_empty!31567 () Bool)

(declare-fun b!4744612 () Bool)

(declare-fun tp_is_empty!31565 () Bool)

(assert (=> b!4744612 (= e!2959510 (and tp_is_empty!31565 tp_is_empty!31567 tp!1349414))))

(declare-fun b!4744613 () Bool)

(declare-fun res!2010740 () Bool)

(declare-fun e!2959505 () Bool)

(assert (=> b!4744613 (=> res!2010740 e!2959505)))

(declare-fun lt!1907527 () ListMap!5389)

(declare-fun lt!1907521 () tuple2!54666)

(declare-fun +!2316 (ListMap!5389 tuple2!54666) ListMap!5389)

(assert (=> b!4744613 (= res!2010740 (not (eq!1165 lt!1907517 (+!2316 lt!1907527 lt!1907521))))))

(declare-fun b!4744614 () Bool)

(declare-fun res!2010727 () Bool)

(assert (=> b!4744614 (=> (not res!2010727) (not e!2959506))))

(assert (=> b!4744614 (= res!2010727 (noDuplicateKeys!2068 oldBucket!34))))

(declare-fun tp!1349415 () Bool)

(declare-fun b!4744615 () Bool)

(declare-fun e!2959499 () Bool)

(assert (=> b!4744615 (= e!2959499 (and tp_is_empty!31565 tp_is_empty!31567 tp!1349415))))

(declare-fun b!4744616 () Bool)

(declare-fun res!2010722 () Bool)

(assert (=> b!4744616 (=> (not res!2010722) (not e!2959506))))

(assert (=> b!4744616 (= res!2010722 (= (removePairForKey!1663 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4744617 () Bool)

(declare-fun res!2010724 () Bool)

(assert (=> b!4744617 (=> (not res!2010724) (not e!2959506))))

(declare-fun allKeysSameHash!1894 (List!53103 (_ BitVec 64) Hashable!6437) Bool)

(assert (=> b!4744617 (= res!2010724 (allKeysSameHash!1894 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4744618 () Bool)

(declare-fun e!2959507 () Bool)

(assert (=> b!4744618 (= e!2959507 (not e!2959501))))

(declare-fun res!2010739 () Bool)

(assert (=> b!4744618 (=> res!2010739 e!2959501)))

(get-info :version)

(assert (=> b!4744618 (= res!2010739 (or (and ((_ is Cons!52979) oldBucket!34) (= (_1!30627 (h!59368 oldBucket!34)) key!4653)) (not ((_ is Cons!52979) oldBucket!34)) (= (_1!30627 (h!59368 oldBucket!34)) key!4653)))))

(declare-fun lt!1907515 () ListMap!5389)

(declare-fun addToMapMapFromBucket!1498 (List!53103 ListMap!5389) ListMap!5389)

(assert (=> b!4744618 (= lt!1907497 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (toList!6026 lm!2023))) lt!1907515))))

(assert (=> b!4744618 (= lt!1907515 (extractMap!2094 (t!360410 (toList!6026 lm!2023))))))

(declare-fun tail!9145 (ListLongMap!4555) ListLongMap!4555)

(assert (=> b!4744618 (= (t!360410 (toList!6026 lm!2023)) (toList!6026 (tail!9145 lm!2023)))))

(declare-fun b!4744619 () Bool)

(declare-fun e!2959497 () Bool)

(assert (=> b!4744619 (= e!2959497 e!2959512)))

(declare-fun res!2010726 () Bool)

(assert (=> b!4744619 (=> res!2010726 e!2959512)))

(assert (=> b!4744619 (= res!2010726 (not (= lt!1907498 lt!1907487)))))

(declare-fun lt!1907524 () ListMap!5389)

(assert (=> b!4744619 (= lt!1907487 (+!2316 lt!1907524 (h!59368 oldBucket!34)))))

(assert (=> b!4744619 (= lt!1907498 (-!758 lt!1907520 key!4653))))

(declare-fun lt!1907509 () ListMap!5389)

(assert (=> b!4744619 (= lt!1907520 (+!2316 lt!1907509 (h!59368 oldBucket!34)))))

(declare-fun lt!1907503 () ListMap!5389)

(declare-fun lt!1907502 () ListMap!5389)

(assert (=> b!4744619 (= lt!1907503 lt!1907502)))

(assert (=> b!4744619 (= lt!1907502 (+!2316 lt!1907524 (h!59368 oldBucket!34)))))

(assert (=> b!4744619 (= lt!1907503 (-!758 (+!2316 lt!1907509 (h!59368 oldBucket!34)) key!4653))))

(declare-fun lt!1907522 () Unit!134101)

(declare-fun addRemoveCommutativeForDiffKeys!147 (ListMap!5389 K!14320 V!14566 K!14320) Unit!134101)

(assert (=> b!4744619 (= lt!1907522 (addRemoveCommutativeForDiffKeys!147 lt!1907509 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34)) key!4653))))

(declare-fun b!4744620 () Bool)

(declare-fun res!2010745 () Bool)

(assert (=> b!4744620 (=> (not res!2010745) (not e!2959498))))

(assert (=> b!4744620 (= res!2010745 (allKeysSameHash!1894 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!2010744 () Bool)

(assert (=> start!484320 (=> (not res!2010744) (not e!2959506))))

(declare-fun forall!11701 (List!53104 Int) Bool)

(assert (=> start!484320 (= res!2010744 (forall!11701 (toList!6026 lm!2023) lambda!219930))))

(assert (=> start!484320 e!2959506))

(declare-fun inv!68194 (ListLongMap!4555) Bool)

(assert (=> start!484320 (and (inv!68194 lm!2023) e!2959511)))

(assert (=> start!484320 tp_is_empty!31565))

(assert (=> start!484320 e!2959510))

(assert (=> start!484320 true))

(assert (=> start!484320 e!2959499))

(declare-fun b!4744621 () Bool)

(declare-fun res!2010736 () Bool)

(assert (=> b!4744621 (=> (not res!2010736) (not e!2959507))))

(assert (=> b!4744621 (= res!2010736 ((_ is Cons!52980) (toList!6026 lm!2023)))))

(declare-fun b!4744622 () Bool)

(assert (=> b!4744622 (= e!2959512 e!2959504)))

(declare-fun res!2010721 () Bool)

(assert (=> b!4744622 (=> res!2010721 e!2959504)))

(assert (=> b!4744622 (= res!2010721 (not (eq!1165 lt!1907487 lt!1907486)))))

(declare-fun lt!1907514 () ListMap!5389)

(assert (=> b!4744622 (= lt!1907486 (+!2316 lt!1907514 (h!59368 oldBucket!34)))))

(assert (=> b!4744622 (eq!1165 lt!1907502 (+!2316 lt!1907514 (h!59368 oldBucket!34)))))

(declare-fun lt!1907499 () Unit!134101)

(declare-fun lemmaAddToEqMapsPreservesEq!116 (ListMap!5389 ListMap!5389 K!14320 V!14566) Unit!134101)

(assert (=> b!4744622 (= lt!1907499 (lemmaAddToEqMapsPreservesEq!116 lt!1907524 lt!1907514 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(declare-fun b!4744623 () Bool)

(assert (=> b!4744623 (= e!2959498 e!2959507)))

(declare-fun res!2010743 () Bool)

(assert (=> b!4744623 (=> (not res!2010743) (not e!2959507))))

(declare-fun head!10339 (List!53104) tuple2!54668)

(assert (=> b!4744623 (= res!2010743 (= (head!10339 (toList!6026 lm!2023)) lt!1907501))))

(assert (=> b!4744623 (= lt!1907501 (tuple2!54669 hash!405 oldBucket!34))))

(declare-fun b!4744624 () Bool)

(assert (=> b!4744624 (= e!2959509 e!2959498)))

(declare-fun res!2010738 () Bool)

(assert (=> b!4744624 (=> (not res!2010738) (not e!2959498))))

(assert (=> b!4744624 (= res!2010738 (= lt!1907493 hash!405))))

(declare-fun hash!4480 (Hashable!6437 K!14320) (_ BitVec 64))

(assert (=> b!4744624 (= lt!1907493 (hash!4480 hashF!1323 key!4653))))

(declare-fun b!4744625 () Bool)

(declare-fun res!2010723 () Bool)

(assert (=> b!4744625 (=> res!2010723 e!2959505)))

(assert (=> b!4744625 (= res!2010723 (not (= (h!59368 oldBucket!34) lt!1907521)))))

(declare-fun b!4744626 () Bool)

(assert (=> b!4744626 (= e!2959505 e!2959497)))

(declare-fun res!2010730 () Bool)

(assert (=> b!4744626 (=> res!2010730 e!2959497)))

(assert (=> b!4744626 (= res!2010730 (not (eq!1165 lt!1907514 lt!1907524)))))

(assert (=> b!4744626 (= lt!1907524 (-!758 lt!1907509 key!4653))))

(declare-fun lt!1907505 () tuple2!54668)

(assert (=> b!4744626 (= lt!1907514 (extractMap!2094 (Cons!52980 lt!1907505 (t!360410 (toList!6026 lm!2023)))))))

(declare-fun lt!1907507 () List!53104)

(declare-fun lt!1907488 () tuple2!54668)

(assert (=> b!4744626 (eq!1165 (extractMap!2094 (Cons!52980 lt!1907505 lt!1907507)) (-!758 (extractMap!2094 (Cons!52980 lt!1907488 lt!1907507)) key!4653))))

(declare-fun lt!1907504 () List!53104)

(assert (=> b!4744626 (= lt!1907507 (tail!9144 lt!1907504))))

(assert (=> b!4744626 (= lt!1907505 (tuple2!54669 hash!405 lt!1907525))))

(declare-fun lt!1907511 () ListLongMap!4555)

(declare-fun lt!1907510 () Unit!134101)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!118 (ListLongMap!4555 (_ BitVec 64) List!53103 List!53103 K!14320 Hashable!6437) Unit!134101)

(assert (=> b!4744626 (= lt!1907510 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!118 lt!1907511 hash!405 (t!360409 oldBucket!34) lt!1907525 key!4653 hashF!1323))))

(declare-fun b!4744627 () Bool)

(assert (=> b!4744627 (= e!2959502 e!2959505)))

(declare-fun res!2010731 () Bool)

(assert (=> b!4744627 (=> res!2010731 e!2959505)))

(assert (=> b!4744627 (= res!2010731 (not (eq!1165 lt!1907517 (+!2316 lt!1907527 (h!59368 oldBucket!34)))))))

(assert (=> b!4744627 (= lt!1907527 (extractMap!2094 (Cons!52980 (tuple2!54669 hash!405 lt!1907526) (t!360410 (toList!6026 lm!2023)))))))

(assert (=> b!4744627 (= lt!1907517 (extractMap!2094 (Cons!52980 lt!1907501 (t!360410 (toList!6026 lm!2023)))))))

(assert (=> b!4744627 (eq!1165 (addToMapMapFromBucket!1498 (Cons!52979 lt!1907521 lt!1907525) lt!1907515) (+!2316 (addToMapMapFromBucket!1498 lt!1907525 lt!1907515) lt!1907521))))

(declare-fun lt!1907495 () Unit!134101)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!414 (tuple2!54666 List!53103 ListMap!5389) Unit!134101)

(assert (=> b!4744627 (= lt!1907495 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!414 lt!1907521 lt!1907525 lt!1907515))))

(declare-fun head!10340 (List!53103) tuple2!54666)

(assert (=> b!4744627 (= lt!1907521 (head!10340 newBucket!218))))

(declare-fun lt!1907513 () tuple2!54666)

(assert (=> b!4744627 (eq!1165 (addToMapMapFromBucket!1498 (Cons!52979 lt!1907513 lt!1907526) lt!1907515) (+!2316 (addToMapMapFromBucket!1498 lt!1907526 lt!1907515) lt!1907513))))

(declare-fun lt!1907496 () Unit!134101)

(assert (=> b!4744627 (= lt!1907496 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!414 lt!1907513 lt!1907526 lt!1907515))))

(assert (=> b!4744627 (= lt!1907513 (head!10340 oldBucket!34))))

(assert (=> b!4744627 (contains!16406 lt!1907509 key!4653)))

(assert (=> b!4744627 (= lt!1907509 (extractMap!2094 lt!1907504))))

(declare-fun lt!1907500 () Unit!134101)

(declare-fun lemmaListContainsThenExtractedMapContains!576 (ListLongMap!4555 K!14320 Hashable!6437) Unit!134101)

(assert (=> b!4744627 (= lt!1907500 (lemmaListContainsThenExtractedMapContains!576 lt!1907511 key!4653 hashF!1323))))

(assert (=> b!4744627 (= lt!1907511 (ListLongMap!4556 lt!1907504))))

(assert (=> b!4744627 (= lt!1907504 (Cons!52980 lt!1907488 (t!360410 (toList!6026 lm!2023))))))

(assert (=> b!4744627 (= lt!1907488 (tuple2!54669 hash!405 (t!360409 oldBucket!34)))))

(assert (= (and start!484320 res!2010744) b!4744614))

(assert (= (and b!4744614 res!2010727) b!4744602))

(assert (= (and b!4744602 res!2010733) b!4744616))

(assert (= (and b!4744616 res!2010722) b!4744617))

(assert (= (and b!4744617 res!2010724) b!4744608))

(assert (= (and b!4744608 res!2010737) b!4744624))

(assert (= (and b!4744624 res!2010738) b!4744620))

(assert (= (and b!4744620 res!2010745) b!4744609))

(assert (= (and b!4744609 res!2010742) b!4744623))

(assert (= (and b!4744623 res!2010743) b!4744621))

(assert (= (and b!4744621 res!2010736) b!4744618))

(assert (= (and b!4744618 (not res!2010739)) b!4744604))

(assert (= (and b!4744604 (not res!2010734)) b!4744601))

(assert (= (and b!4744601 (not res!2010732)) b!4744610))

(assert (= (and b!4744610 (not res!2010720)) b!4744627))

(assert (= (and b!4744627 (not res!2010731)) b!4744625))

(assert (= (and b!4744625 (not res!2010723)) b!4744613))

(assert (= (and b!4744613 (not res!2010740)) b!4744626))

(assert (= (and b!4744626 (not res!2010730)) b!4744619))

(assert (= (and b!4744619 (not res!2010726)) b!4744605))

(assert (= (and b!4744605 (not res!2010729)) b!4744606))

(assert (= (and b!4744606 (not res!2010728)) b!4744622))

(assert (= (and b!4744622 (not res!2010721)) b!4744600))

(assert (= (and b!4744600 (not res!2010725)) b!4744611))

(assert (= (and b!4744611 (not res!2010735)) b!4744599))

(assert (= (and b!4744599 (not res!2010741)) b!4744607))

(assert (= start!484320 b!4744603))

(assert (= (and start!484320 ((_ is Cons!52979) oldBucket!34)) b!4744612))

(assert (= (and start!484320 ((_ is Cons!52979) newBucket!218)) b!4744615))

(declare-fun m!5700591 () Bool)

(assert (=> b!4744624 m!5700591))

(declare-fun m!5700593 () Bool)

(assert (=> b!4744619 m!5700593))

(declare-fun m!5700595 () Bool)

(assert (=> b!4744619 m!5700595))

(declare-fun m!5700597 () Bool)

(assert (=> b!4744619 m!5700597))

(assert (=> b!4744619 m!5700593))

(declare-fun m!5700599 () Bool)

(assert (=> b!4744619 m!5700599))

(declare-fun m!5700601 () Bool)

(assert (=> b!4744619 m!5700601))

(declare-fun m!5700603 () Bool)

(assert (=> b!4744599 m!5700603))

(declare-fun m!5700605 () Bool)

(assert (=> b!4744627 m!5700605))

(declare-fun m!5700607 () Bool)

(assert (=> b!4744627 m!5700607))

(declare-fun m!5700609 () Bool)

(assert (=> b!4744627 m!5700609))

(declare-fun m!5700611 () Bool)

(assert (=> b!4744627 m!5700611))

(declare-fun m!5700613 () Bool)

(assert (=> b!4744627 m!5700613))

(declare-fun m!5700615 () Bool)

(assert (=> b!4744627 m!5700615))

(assert (=> b!4744627 m!5700605))

(assert (=> b!4744627 m!5700609))

(declare-fun m!5700617 () Bool)

(assert (=> b!4744627 m!5700617))

(declare-fun m!5700619 () Bool)

(assert (=> b!4744627 m!5700619))

(declare-fun m!5700621 () Bool)

(assert (=> b!4744627 m!5700621))

(declare-fun m!5700623 () Bool)

(assert (=> b!4744627 m!5700623))

(assert (=> b!4744627 m!5700607))

(declare-fun m!5700625 () Bool)

(assert (=> b!4744627 m!5700625))

(declare-fun m!5700627 () Bool)

(assert (=> b!4744627 m!5700627))

(declare-fun m!5700629 () Bool)

(assert (=> b!4744627 m!5700629))

(declare-fun m!5700631 () Bool)

(assert (=> b!4744627 m!5700631))

(declare-fun m!5700633 () Bool)

(assert (=> b!4744627 m!5700633))

(declare-fun m!5700635 () Bool)

(assert (=> b!4744627 m!5700635))

(declare-fun m!5700637 () Bool)

(assert (=> b!4744627 m!5700637))

(assert (=> b!4744627 m!5700631))

(assert (=> b!4744627 m!5700635))

(declare-fun m!5700639 () Bool)

(assert (=> b!4744627 m!5700639))

(assert (=> b!4744627 m!5700633))

(assert (=> b!4744627 m!5700639))

(declare-fun m!5700641 () Bool)

(assert (=> b!4744627 m!5700641))

(declare-fun m!5700643 () Bool)

(assert (=> b!4744618 m!5700643))

(declare-fun m!5700645 () Bool)

(assert (=> b!4744618 m!5700645))

(declare-fun m!5700647 () Bool)

(assert (=> b!4744618 m!5700647))

(declare-fun m!5700649 () Bool)

(assert (=> b!4744606 m!5700649))

(declare-fun m!5700651 () Bool)

(assert (=> b!4744610 m!5700651))

(declare-fun m!5700653 () Bool)

(assert (=> b!4744611 m!5700653))

(declare-fun m!5700655 () Bool)

(assert (=> b!4744611 m!5700655))

(declare-fun m!5700657 () Bool)

(assert (=> b!4744607 m!5700657))

(declare-fun m!5700659 () Bool)

(assert (=> b!4744607 m!5700659))

(declare-fun m!5700661 () Bool)

(assert (=> b!4744607 m!5700661))

(declare-fun m!5700663 () Bool)

(assert (=> b!4744607 m!5700663))

(declare-fun m!5700665 () Bool)

(assert (=> b!4744607 m!5700665))

(assert (=> b!4744607 m!5700657))

(assert (=> b!4744607 m!5700661))

(assert (=> b!4744607 m!5700659))

(declare-fun m!5700667 () Bool)

(assert (=> b!4744616 m!5700667))

(declare-fun m!5700669 () Bool)

(assert (=> b!4744605 m!5700669))

(declare-fun m!5700671 () Bool)

(assert (=> b!4744609 m!5700671))

(declare-fun m!5700673 () Bool)

(assert (=> b!4744602 m!5700673))

(declare-fun m!5700675 () Bool)

(assert (=> b!4744626 m!5700675))

(declare-fun m!5700677 () Bool)

(assert (=> b!4744626 m!5700677))

(declare-fun m!5700679 () Bool)

(assert (=> b!4744626 m!5700679))

(declare-fun m!5700681 () Bool)

(assert (=> b!4744626 m!5700681))

(declare-fun m!5700683 () Bool)

(assert (=> b!4744626 m!5700683))

(assert (=> b!4744626 m!5700679))

(declare-fun m!5700685 () Bool)

(assert (=> b!4744626 m!5700685))

(declare-fun m!5700687 () Bool)

(assert (=> b!4744626 m!5700687))

(declare-fun m!5700689 () Bool)

(assert (=> b!4744626 m!5700689))

(assert (=> b!4744626 m!5700675))

(assert (=> b!4744626 m!5700681))

(declare-fun m!5700691 () Bool)

(assert (=> b!4744626 m!5700691))

(declare-fun m!5700693 () Bool)

(assert (=> b!4744617 m!5700693))

(declare-fun m!5700695 () Bool)

(assert (=> b!4744613 m!5700695))

(assert (=> b!4744613 m!5700695))

(declare-fun m!5700697 () Bool)

(assert (=> b!4744613 m!5700697))

(declare-fun m!5700699 () Bool)

(assert (=> b!4744601 m!5700699))

(declare-fun m!5700701 () Bool)

(assert (=> b!4744601 m!5700701))

(declare-fun m!5700703 () Bool)

(assert (=> b!4744601 m!5700703))

(declare-fun m!5700705 () Bool)

(assert (=> b!4744614 m!5700705))

(declare-fun m!5700707 () Bool)

(assert (=> b!4744620 m!5700707))

(declare-fun m!5700709 () Bool)

(assert (=> b!4744604 m!5700709))

(declare-fun m!5700711 () Bool)

(assert (=> b!4744604 m!5700711))

(declare-fun m!5700713 () Bool)

(assert (=> b!4744604 m!5700713))

(declare-fun m!5700715 () Bool)

(assert (=> b!4744604 m!5700715))

(declare-fun m!5700717 () Bool)

(assert (=> b!4744604 m!5700717))

(declare-fun m!5700719 () Bool)

(assert (=> b!4744604 m!5700719))

(declare-fun m!5700721 () Bool)

(assert (=> b!4744604 m!5700721))

(declare-fun m!5700723 () Bool)

(assert (=> b!4744604 m!5700723))

(declare-fun m!5700725 () Bool)

(assert (=> b!4744604 m!5700725))

(declare-fun m!5700727 () Bool)

(assert (=> b!4744604 m!5700727))

(declare-fun m!5700729 () Bool)

(assert (=> b!4744604 m!5700729))

(declare-fun m!5700731 () Bool)

(assert (=> b!4744604 m!5700731))

(assert (=> b!4744604 m!5700713))

(declare-fun m!5700733 () Bool)

(assert (=> b!4744608 m!5700733))

(declare-fun m!5700735 () Bool)

(assert (=> b!4744608 m!5700735))

(declare-fun m!5700737 () Bool)

(assert (=> start!484320 m!5700737))

(declare-fun m!5700739 () Bool)

(assert (=> start!484320 m!5700739))

(declare-fun m!5700741 () Bool)

(assert (=> b!4744600 m!5700741))

(declare-fun m!5700743 () Bool)

(assert (=> b!4744600 m!5700743))

(declare-fun m!5700745 () Bool)

(assert (=> b!4744600 m!5700745))

(declare-fun m!5700747 () Bool)

(assert (=> b!4744600 m!5700747))

(declare-fun m!5700749 () Bool)

(assert (=> b!4744623 m!5700749))

(declare-fun m!5700751 () Bool)

(assert (=> b!4744622 m!5700751))

(declare-fun m!5700753 () Bool)

(assert (=> b!4744622 m!5700753))

(assert (=> b!4744622 m!5700753))

(declare-fun m!5700755 () Bool)

(assert (=> b!4744622 m!5700755))

(declare-fun m!5700757 () Bool)

(assert (=> b!4744622 m!5700757))

(check-sat (not b!4744620) (not b!4744615) (not b!4744600) (not b!4744601) (not b!4744603) (not b!4744624) (not b!4744627) (not b!4744599) tp_is_empty!31567 (not b!4744623) (not b!4744606) (not b!4744618) tp_is_empty!31565 (not b!4744616) (not b!4744612) (not b!4744605) (not b!4744608) (not b!4744611) (not start!484320) (not b!4744609) (not b!4744626) (not b!4744607) (not b!4744619) (not b!4744622) (not b!4744610) (not b!4744604) (not b!4744614) (not b!4744613) (not b!4744602) (not b!4744617))
(check-sat)
(get-model)

(declare-fun d!1516040 () Bool)

(declare-fun res!2010752 () Bool)

(declare-fun e!2959519 () Bool)

(assert (=> d!1516040 (=> res!2010752 e!2959519)))

(assert (=> d!1516040 (= res!2010752 (not ((_ is Cons!52979) oldBucket!34)))))

(assert (=> d!1516040 (= (noDuplicateKeys!2068 oldBucket!34) e!2959519)))

(declare-fun b!4744634 () Bool)

(declare-fun e!2959520 () Bool)

(assert (=> b!4744634 (= e!2959519 e!2959520)))

(declare-fun res!2010753 () Bool)

(assert (=> b!4744634 (=> (not res!2010753) (not e!2959520))))

(assert (=> b!4744634 (= res!2010753 (not (containsKey!3497 (t!360409 oldBucket!34) (_1!30627 (h!59368 oldBucket!34)))))))

(declare-fun b!4744635 () Bool)

(assert (=> b!4744635 (= e!2959520 (noDuplicateKeys!2068 (t!360409 oldBucket!34)))))

(assert (= (and d!1516040 (not res!2010752)) b!4744634))

(assert (= (and b!4744634 res!2010753) b!4744635))

(declare-fun m!5700759 () Bool)

(assert (=> b!4744634 m!5700759))

(declare-fun m!5700761 () Bool)

(assert (=> b!4744635 m!5700761))

(assert (=> b!4744614 d!1516040))

(declare-fun d!1516044 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9485 (List!53103) (InoxSet tuple2!54666))

(assert (=> d!1516044 (= (eq!1165 lt!1907517 (+!2316 lt!1907527 lt!1907521)) (= (content!9485 (toList!6025 lt!1907517)) (content!9485 (toList!6025 (+!2316 lt!1907527 lt!1907521)))))))

(declare-fun bs!1137264 () Bool)

(assert (= bs!1137264 d!1516044))

(declare-fun m!5700769 () Bool)

(assert (=> bs!1137264 m!5700769))

(declare-fun m!5700771 () Bool)

(assert (=> bs!1137264 m!5700771))

(assert (=> b!4744613 d!1516044))

(declare-fun d!1516050 () Bool)

(declare-fun e!2959551 () Bool)

(assert (=> d!1516050 e!2959551))

(declare-fun res!2010780 () Bool)

(assert (=> d!1516050 (=> (not res!2010780) (not e!2959551))))

(declare-fun lt!1907560 () ListMap!5389)

(assert (=> d!1516050 (= res!2010780 (contains!16406 lt!1907560 (_1!30627 lt!1907521)))))

(declare-fun lt!1907557 () List!53103)

(assert (=> d!1516050 (= lt!1907560 (ListMap!5390 lt!1907557))))

(declare-fun lt!1907558 () Unit!134101)

(declare-fun lt!1907559 () Unit!134101)

(assert (=> d!1516050 (= lt!1907558 lt!1907559)))

(declare-datatypes ((Option!12485 0))(
  ( (None!12484) (Some!12484 (v!47173 V!14566)) )
))
(declare-fun getValueByKey!2035 (List!53103 K!14320) Option!12485)

(assert (=> d!1516050 (= (getValueByKey!2035 lt!1907557 (_1!30627 lt!1907521)) (Some!12484 (_2!30627 lt!1907521)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1119 (List!53103 K!14320 V!14566) Unit!134101)

(assert (=> d!1516050 (= lt!1907559 (lemmaContainsTupThenGetReturnValue!1119 lt!1907557 (_1!30627 lt!1907521) (_2!30627 lt!1907521)))))

(declare-fun insertNoDuplicatedKeys!627 (List!53103 K!14320 V!14566) List!53103)

(assert (=> d!1516050 (= lt!1907557 (insertNoDuplicatedKeys!627 (toList!6025 lt!1907527) (_1!30627 lt!1907521) (_2!30627 lt!1907521)))))

(assert (=> d!1516050 (= (+!2316 lt!1907527 lt!1907521) lt!1907560)))

(declare-fun b!4744681 () Bool)

(declare-fun res!2010781 () Bool)

(assert (=> b!4744681 (=> (not res!2010781) (not e!2959551))))

(assert (=> b!4744681 (= res!2010781 (= (getValueByKey!2035 (toList!6025 lt!1907560) (_1!30627 lt!1907521)) (Some!12484 (_2!30627 lt!1907521))))))

(declare-fun b!4744682 () Bool)

(declare-fun contains!16408 (List!53103 tuple2!54666) Bool)

(assert (=> b!4744682 (= e!2959551 (contains!16408 (toList!6025 lt!1907560) lt!1907521))))

(assert (= (and d!1516050 res!2010780) b!4744681))

(assert (= (and b!4744681 res!2010781) b!4744682))

(declare-fun m!5700807 () Bool)

(assert (=> d!1516050 m!5700807))

(declare-fun m!5700809 () Bool)

(assert (=> d!1516050 m!5700809))

(declare-fun m!5700811 () Bool)

(assert (=> d!1516050 m!5700811))

(declare-fun m!5700813 () Bool)

(assert (=> d!1516050 m!5700813))

(declare-fun m!5700815 () Bool)

(assert (=> b!4744681 m!5700815))

(declare-fun m!5700821 () Bool)

(assert (=> b!4744682 m!5700821))

(assert (=> b!4744613 d!1516050))

(declare-fun d!1516066 () Bool)

(assert (=> d!1516066 (= (eq!1165 lt!1907486 lt!1907491) (= (content!9485 (toList!6025 lt!1907486)) (content!9485 (toList!6025 lt!1907491))))))

(declare-fun bs!1137270 () Bool)

(assert (= bs!1137270 d!1516066))

(declare-fun m!5700825 () Bool)

(assert (=> bs!1137270 m!5700825))

(declare-fun m!5700827 () Bool)

(assert (=> bs!1137270 m!5700827))

(assert (=> b!4744611 d!1516066))

(declare-fun bs!1137271 () Bool)

(declare-fun d!1516068 () Bool)

(assert (= bs!1137271 (and d!1516068 start!484320)))

(declare-fun lambda!219936 () Int)

(assert (=> bs!1137271 (= lambda!219936 lambda!219930)))

(declare-fun lt!1907569 () ListMap!5389)

(declare-fun invariantList!1553 (List!53103) Bool)

(assert (=> d!1516068 (invariantList!1553 (toList!6025 lt!1907569))))

(declare-fun e!2959560 () ListMap!5389)

(assert (=> d!1516068 (= lt!1907569 e!2959560)))

(declare-fun c!810427 () Bool)

(assert (=> d!1516068 (= c!810427 ((_ is Cons!52980) (Cons!52980 lt!1907489 (t!360410 (toList!6026 lm!2023)))))))

(assert (=> d!1516068 (forall!11701 (Cons!52980 lt!1907489 (t!360410 (toList!6026 lm!2023))) lambda!219936)))

(assert (=> d!1516068 (= (extractMap!2094 (Cons!52980 lt!1907489 (t!360410 (toList!6026 lm!2023)))) lt!1907569)))

(declare-fun b!4744693 () Bool)

(assert (=> b!4744693 (= e!2959560 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (Cons!52980 lt!1907489 (t!360410 (toList!6026 lm!2023))))) (extractMap!2094 (t!360410 (Cons!52980 lt!1907489 (t!360410 (toList!6026 lm!2023)))))))))

(declare-fun b!4744694 () Bool)

(assert (=> b!4744694 (= e!2959560 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516068 c!810427) b!4744693))

(assert (= (and d!1516068 (not c!810427)) b!4744694))

(declare-fun m!5700835 () Bool)

(assert (=> d!1516068 m!5700835))

(declare-fun m!5700837 () Bool)

(assert (=> d!1516068 m!5700837))

(declare-fun m!5700839 () Bool)

(assert (=> b!4744693 m!5700839))

(assert (=> b!4744693 m!5700839))

(declare-fun m!5700841 () Bool)

(assert (=> b!4744693 m!5700841))

(assert (=> b!4744611 d!1516068))

(declare-fun b!4744718 () Bool)

(declare-fun e!2959572 () List!53103)

(assert (=> b!4744718 (= e!2959572 Nil!52979)))

(declare-fun d!1516072 () Bool)

(declare-fun lt!1907596 () List!53103)

(assert (=> d!1516072 (not (containsKey!3497 lt!1907596 key!4653))))

(declare-fun e!2959571 () List!53103)

(assert (=> d!1516072 (= lt!1907596 e!2959571)))

(declare-fun c!810432 () Bool)

(assert (=> d!1516072 (= c!810432 (and ((_ is Cons!52979) (t!360409 oldBucket!34)) (= (_1!30627 (h!59368 (t!360409 oldBucket!34))) key!4653)))))

(assert (=> d!1516072 (noDuplicateKeys!2068 (t!360409 oldBucket!34))))

(assert (=> d!1516072 (= (removePairForKey!1663 (t!360409 oldBucket!34) key!4653) lt!1907596)))

(declare-fun b!4744717 () Bool)

(assert (=> b!4744717 (= e!2959572 (Cons!52979 (h!59368 (t!360409 oldBucket!34)) (removePairForKey!1663 (t!360409 (t!360409 oldBucket!34)) key!4653)))))

(declare-fun b!4744715 () Bool)

(assert (=> b!4744715 (= e!2959571 (t!360409 (t!360409 oldBucket!34)))))

(declare-fun b!4744716 () Bool)

(assert (=> b!4744716 (= e!2959571 e!2959572)))

(declare-fun c!810433 () Bool)

(assert (=> b!4744716 (= c!810433 ((_ is Cons!52979) (t!360409 oldBucket!34)))))

(assert (= (and d!1516072 c!810432) b!4744715))

(assert (= (and d!1516072 (not c!810432)) b!4744716))

(assert (= (and b!4744716 c!810433) b!4744717))

(assert (= (and b!4744716 (not c!810433)) b!4744718))

(declare-fun m!5700863 () Bool)

(assert (=> d!1516072 m!5700863))

(assert (=> d!1516072 m!5700761))

(declare-fun m!5700867 () Bool)

(assert (=> b!4744717 m!5700867))

(assert (=> b!4744610 d!1516072))

(declare-fun bs!1137275 () Bool)

(declare-fun d!1516076 () Bool)

(assert (= bs!1137275 (and d!1516076 start!484320)))

(declare-fun lambda!219948 () Int)

(assert (=> bs!1137275 (not (= lambda!219948 lambda!219930))))

(declare-fun bs!1137277 () Bool)

(assert (= bs!1137277 (and d!1516076 d!1516068)))

(assert (=> bs!1137277 (not (= lambda!219948 lambda!219936))))

(assert (=> d!1516076 true))

(assert (=> d!1516076 (= (allKeysSameHashInMap!1982 lm!2023 hashF!1323) (forall!11701 (toList!6026 lm!2023) lambda!219948))))

(declare-fun bs!1137278 () Bool)

(assert (= bs!1137278 d!1516076))

(declare-fun m!5700875 () Bool)

(assert (=> bs!1137278 m!5700875))

(assert (=> b!4744609 d!1516076))

(declare-fun d!1516086 () Bool)

(assert (=> d!1516086 (= (-!758 (+!2316 lt!1907509 (tuple2!54667 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34)))) key!4653) (+!2316 (-!758 lt!1907509 key!4653) (tuple2!54667 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34)))))))

(declare-fun lt!1907609 () Unit!134101)

(declare-fun choose!33720 (ListMap!5389 K!14320 V!14566 K!14320) Unit!134101)

(assert (=> d!1516086 (= lt!1907609 (choose!33720 lt!1907509 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34)) key!4653))))

(assert (=> d!1516086 (not (= (_1!30627 (h!59368 oldBucket!34)) key!4653))))

(assert (=> d!1516086 (= (addRemoveCommutativeForDiffKeys!147 lt!1907509 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34)) key!4653) lt!1907609)))

(declare-fun bs!1137287 () Bool)

(assert (= bs!1137287 d!1516086))

(declare-fun m!5700911 () Bool)

(assert (=> bs!1137287 m!5700911))

(declare-fun m!5700913 () Bool)

(assert (=> bs!1137287 m!5700913))

(assert (=> bs!1137287 m!5700689))

(declare-fun m!5700915 () Bool)

(assert (=> bs!1137287 m!5700915))

(assert (=> bs!1137287 m!5700689))

(declare-fun m!5700917 () Bool)

(assert (=> bs!1137287 m!5700917))

(assert (=> bs!1137287 m!5700911))

(assert (=> b!4744619 d!1516086))

(declare-fun d!1516098 () Bool)

(declare-fun e!2959592 () Bool)

(assert (=> d!1516098 e!2959592))

(declare-fun res!2010811 () Bool)

(assert (=> d!1516098 (=> (not res!2010811) (not e!2959592))))

(declare-fun lt!1907615 () ListMap!5389)

(assert (=> d!1516098 (= res!2010811 (contains!16406 lt!1907615 (_1!30627 (h!59368 oldBucket!34))))))

(declare-fun lt!1907612 () List!53103)

(assert (=> d!1516098 (= lt!1907615 (ListMap!5390 lt!1907612))))

(declare-fun lt!1907613 () Unit!134101)

(declare-fun lt!1907614 () Unit!134101)

(assert (=> d!1516098 (= lt!1907613 lt!1907614)))

(assert (=> d!1516098 (= (getValueByKey!2035 lt!1907612 (_1!30627 (h!59368 oldBucket!34))) (Some!12484 (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516098 (= lt!1907614 (lemmaContainsTupThenGetReturnValue!1119 lt!1907612 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516098 (= lt!1907612 (insertNoDuplicatedKeys!627 (toList!6025 lt!1907524) (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516098 (= (+!2316 lt!1907524 (h!59368 oldBucket!34)) lt!1907615)))

(declare-fun b!4744752 () Bool)

(declare-fun res!2010812 () Bool)

(assert (=> b!4744752 (=> (not res!2010812) (not e!2959592))))

(assert (=> b!4744752 (= res!2010812 (= (getValueByKey!2035 (toList!6025 lt!1907615) (_1!30627 (h!59368 oldBucket!34))) (Some!12484 (_2!30627 (h!59368 oldBucket!34)))))))

(declare-fun b!4744753 () Bool)

(assert (=> b!4744753 (= e!2959592 (contains!16408 (toList!6025 lt!1907615) (h!59368 oldBucket!34)))))

(assert (= (and d!1516098 res!2010811) b!4744752))

(assert (= (and b!4744752 res!2010812) b!4744753))

(declare-fun m!5700919 () Bool)

(assert (=> d!1516098 m!5700919))

(declare-fun m!5700921 () Bool)

(assert (=> d!1516098 m!5700921))

(declare-fun m!5700923 () Bool)

(assert (=> d!1516098 m!5700923))

(declare-fun m!5700925 () Bool)

(assert (=> d!1516098 m!5700925))

(declare-fun m!5700927 () Bool)

(assert (=> b!4744752 m!5700927))

(declare-fun m!5700929 () Bool)

(assert (=> b!4744753 m!5700929))

(assert (=> b!4744619 d!1516098))

(declare-fun d!1516100 () Bool)

(declare-fun e!2959601 () Bool)

(assert (=> d!1516100 e!2959601))

(declare-fun res!2010821 () Bool)

(assert (=> d!1516100 (=> (not res!2010821) (not e!2959601))))

(declare-fun lt!1907632 () ListMap!5389)

(assert (=> d!1516100 (= res!2010821 (not (contains!16406 lt!1907632 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!405 (List!53103 K!14320) List!53103)

(assert (=> d!1516100 (= lt!1907632 (ListMap!5390 (removePresrvNoDuplicatedKeys!405 (toList!6025 lt!1907520) key!4653)))))

(assert (=> d!1516100 (= (-!758 lt!1907520 key!4653) lt!1907632)))

(declare-fun b!4744768 () Bool)

(declare-datatypes ((List!53106 0))(
  ( (Nil!52982) (Cons!52982 (h!59373 K!14320) (t!360414 List!53106)) )
))
(declare-fun content!9488 (List!53106) (InoxSet K!14320))

(declare-fun keys!19071 (ListMap!5389) List!53106)

(assert (=> b!4744768 (= e!2959601 (= ((_ map and) (content!9488 (keys!19071 lt!1907520)) ((_ map not) (store ((as const (Array K!14320 Bool)) false) key!4653 true))) (content!9488 (keys!19071 lt!1907632))))))

(assert (= (and d!1516100 res!2010821) b!4744768))

(declare-fun m!5700961 () Bool)

(assert (=> d!1516100 m!5700961))

(declare-fun m!5700963 () Bool)

(assert (=> d!1516100 m!5700963))

(declare-fun m!5700965 () Bool)

(assert (=> b!4744768 m!5700965))

(declare-fun m!5700967 () Bool)

(assert (=> b!4744768 m!5700967))

(assert (=> b!4744768 m!5700965))

(declare-fun m!5700969 () Bool)

(assert (=> b!4744768 m!5700969))

(assert (=> b!4744768 m!5700967))

(declare-fun m!5700971 () Bool)

(assert (=> b!4744768 m!5700971))

(declare-fun m!5700973 () Bool)

(assert (=> b!4744768 m!5700973))

(assert (=> b!4744619 d!1516100))

(declare-fun d!1516110 () Bool)

(declare-fun e!2959602 () Bool)

(assert (=> d!1516110 e!2959602))

(declare-fun res!2010822 () Bool)

(assert (=> d!1516110 (=> (not res!2010822) (not e!2959602))))

(declare-fun lt!1907633 () ListMap!5389)

(assert (=> d!1516110 (= res!2010822 (not (contains!16406 lt!1907633 key!4653)))))

(assert (=> d!1516110 (= lt!1907633 (ListMap!5390 (removePresrvNoDuplicatedKeys!405 (toList!6025 (+!2316 lt!1907509 (h!59368 oldBucket!34))) key!4653)))))

(assert (=> d!1516110 (= (-!758 (+!2316 lt!1907509 (h!59368 oldBucket!34)) key!4653) lt!1907633)))

(declare-fun b!4744769 () Bool)

(assert (=> b!4744769 (= e!2959602 (= ((_ map and) (content!9488 (keys!19071 (+!2316 lt!1907509 (h!59368 oldBucket!34)))) ((_ map not) (store ((as const (Array K!14320 Bool)) false) key!4653 true))) (content!9488 (keys!19071 lt!1907633))))))

(assert (= (and d!1516110 res!2010822) b!4744769))

(declare-fun m!5700975 () Bool)

(assert (=> d!1516110 m!5700975))

(declare-fun m!5700977 () Bool)

(assert (=> d!1516110 m!5700977))

(assert (=> b!4744769 m!5700593))

(declare-fun m!5700979 () Bool)

(assert (=> b!4744769 m!5700979))

(declare-fun m!5700981 () Bool)

(assert (=> b!4744769 m!5700981))

(assert (=> b!4744769 m!5700979))

(declare-fun m!5700983 () Bool)

(assert (=> b!4744769 m!5700983))

(assert (=> b!4744769 m!5700981))

(declare-fun m!5700985 () Bool)

(assert (=> b!4744769 m!5700985))

(assert (=> b!4744769 m!5700973))

(assert (=> b!4744619 d!1516110))

(declare-fun d!1516112 () Bool)

(declare-fun e!2959603 () Bool)

(assert (=> d!1516112 e!2959603))

(declare-fun res!2010823 () Bool)

(assert (=> d!1516112 (=> (not res!2010823) (not e!2959603))))

(declare-fun lt!1907637 () ListMap!5389)

(assert (=> d!1516112 (= res!2010823 (contains!16406 lt!1907637 (_1!30627 (h!59368 oldBucket!34))))))

(declare-fun lt!1907634 () List!53103)

(assert (=> d!1516112 (= lt!1907637 (ListMap!5390 lt!1907634))))

(declare-fun lt!1907635 () Unit!134101)

(declare-fun lt!1907636 () Unit!134101)

(assert (=> d!1516112 (= lt!1907635 lt!1907636)))

(assert (=> d!1516112 (= (getValueByKey!2035 lt!1907634 (_1!30627 (h!59368 oldBucket!34))) (Some!12484 (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516112 (= lt!1907636 (lemmaContainsTupThenGetReturnValue!1119 lt!1907634 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516112 (= lt!1907634 (insertNoDuplicatedKeys!627 (toList!6025 lt!1907509) (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516112 (= (+!2316 lt!1907509 (h!59368 oldBucket!34)) lt!1907637)))

(declare-fun b!4744770 () Bool)

(declare-fun res!2010824 () Bool)

(assert (=> b!4744770 (=> (not res!2010824) (not e!2959603))))

(assert (=> b!4744770 (= res!2010824 (= (getValueByKey!2035 (toList!6025 lt!1907637) (_1!30627 (h!59368 oldBucket!34))) (Some!12484 (_2!30627 (h!59368 oldBucket!34)))))))

(declare-fun b!4744771 () Bool)

(assert (=> b!4744771 (= e!2959603 (contains!16408 (toList!6025 lt!1907637) (h!59368 oldBucket!34)))))

(assert (= (and d!1516112 res!2010823) b!4744770))

(assert (= (and b!4744770 res!2010824) b!4744771))

(declare-fun m!5700987 () Bool)

(assert (=> d!1516112 m!5700987))

(declare-fun m!5700989 () Bool)

(assert (=> d!1516112 m!5700989))

(declare-fun m!5700991 () Bool)

(assert (=> d!1516112 m!5700991))

(declare-fun m!5700993 () Bool)

(assert (=> d!1516112 m!5700993))

(declare-fun m!5700995 () Bool)

(assert (=> b!4744770 m!5700995))

(declare-fun m!5700997 () Bool)

(assert (=> b!4744771 m!5700997))

(assert (=> b!4744619 d!1516112))

(declare-fun b!4744815 () Bool)

(assert (=> b!4744815 true))

(declare-fun bs!1137301 () Bool)

(declare-fun b!4744816 () Bool)

(assert (= bs!1137301 (and b!4744816 b!4744815)))

(declare-fun lambda!219999 () Int)

(declare-fun lambda!219996 () Int)

(assert (=> bs!1137301 (= lambda!219999 lambda!219996)))

(assert (=> b!4744816 true))

(declare-fun lt!1907733 () ListMap!5389)

(declare-fun lambda!220000 () Int)

(assert (=> bs!1137301 (= (= lt!1907733 lt!1907515) (= lambda!220000 lambda!219996))))

(assert (=> b!4744816 (= (= lt!1907733 lt!1907515) (= lambda!220000 lambda!219999))))

(assert (=> b!4744816 true))

(declare-fun bs!1137302 () Bool)

(declare-fun d!1516114 () Bool)

(assert (= bs!1137302 (and d!1516114 b!4744815)))

(declare-fun lambda!220005 () Int)

(declare-fun lt!1907730 () ListMap!5389)

(assert (=> bs!1137302 (= (= lt!1907730 lt!1907515) (= lambda!220005 lambda!219996))))

(declare-fun bs!1137303 () Bool)

(assert (= bs!1137303 (and d!1516114 b!4744816)))

(assert (=> bs!1137303 (= (= lt!1907730 lt!1907515) (= lambda!220005 lambda!219999))))

(assert (=> bs!1137303 (= (= lt!1907730 lt!1907733) (= lambda!220005 lambda!220000))))

(assert (=> d!1516114 true))

(declare-fun e!2959630 () Bool)

(assert (=> d!1516114 e!2959630))

(declare-fun res!2010841 () Bool)

(assert (=> d!1516114 (=> (not res!2010841) (not e!2959630))))

(declare-fun forall!11703 (List!53103 Int) Bool)

(assert (=> d!1516114 (= res!2010841 (forall!11703 (_2!30628 (h!59369 (toList!6026 lm!2023))) lambda!220005))))

(declare-fun e!2959632 () ListMap!5389)

(assert (=> d!1516114 (= lt!1907730 e!2959632)))

(declare-fun c!810458 () Bool)

(assert (=> d!1516114 (= c!810458 ((_ is Nil!52979) (_2!30628 (h!59369 (toList!6026 lm!2023)))))))

(assert (=> d!1516114 (noDuplicateKeys!2068 (_2!30628 (h!59369 (toList!6026 lm!2023))))))

(assert (=> d!1516114 (= (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (toList!6026 lm!2023))) lt!1907515) lt!1907730)))

(declare-fun b!4744813 () Bool)

(declare-fun e!2959631 () Bool)

(assert (=> b!4744813 (= e!2959631 (forall!11703 (toList!6025 lt!1907515) lambda!220000))))

(declare-fun b!4744814 () Bool)

(assert (=> b!4744814 (= e!2959630 (invariantList!1553 (toList!6025 lt!1907730)))))

(declare-fun bm!332054 () Bool)

(declare-fun call!332060 () Bool)

(assert (=> bm!332054 (= call!332060 (forall!11703 (ite c!810458 (toList!6025 lt!1907515) (t!360409 (_2!30628 (h!59369 (toList!6026 lm!2023))))) (ite c!810458 lambda!219996 lambda!220000)))))

(assert (=> b!4744815 (= e!2959632 lt!1907515)))

(declare-fun lt!1907742 () Unit!134101)

(declare-fun call!332061 () Unit!134101)

(assert (=> b!4744815 (= lt!1907742 call!332061)))

(assert (=> b!4744815 call!332060))

(declare-fun lt!1907738 () Unit!134101)

(assert (=> b!4744815 (= lt!1907738 lt!1907742)))

(declare-fun call!332059 () Bool)

(assert (=> b!4744815 call!332059))

(declare-fun lt!1907745 () Unit!134101)

(declare-fun Unit!134104 () Unit!134101)

(assert (=> b!4744815 (= lt!1907745 Unit!134104)))

(declare-fun bm!332055 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!837 (ListMap!5389) Unit!134101)

(assert (=> bm!332055 (= call!332061 (lemmaContainsAllItsOwnKeys!837 lt!1907515))))

(declare-fun bm!332056 () Bool)

(assert (=> bm!332056 (= call!332059 (forall!11703 (toList!6025 lt!1907515) (ite c!810458 lambda!219996 lambda!220000)))))

(assert (=> b!4744816 (= e!2959632 lt!1907733)))

(declare-fun lt!1907743 () ListMap!5389)

(assert (=> b!4744816 (= lt!1907743 (+!2316 lt!1907515 (h!59368 (_2!30628 (h!59369 (toList!6026 lm!2023))))))))

(assert (=> b!4744816 (= lt!1907733 (addToMapMapFromBucket!1498 (t!360409 (_2!30628 (h!59369 (toList!6026 lm!2023)))) (+!2316 lt!1907515 (h!59368 (_2!30628 (h!59369 (toList!6026 lm!2023)))))))))

(declare-fun lt!1907737 () Unit!134101)

(assert (=> b!4744816 (= lt!1907737 call!332061)))

(assert (=> b!4744816 (forall!11703 (toList!6025 lt!1907515) lambda!219999)))

(declare-fun lt!1907731 () Unit!134101)

(assert (=> b!4744816 (= lt!1907731 lt!1907737)))

(assert (=> b!4744816 (forall!11703 (toList!6025 lt!1907743) lambda!220000)))

(declare-fun lt!1907727 () Unit!134101)

(declare-fun Unit!134105 () Unit!134101)

(assert (=> b!4744816 (= lt!1907727 Unit!134105)))

(assert (=> b!4744816 call!332060))

(declare-fun lt!1907732 () Unit!134101)

(declare-fun Unit!134106 () Unit!134101)

(assert (=> b!4744816 (= lt!1907732 Unit!134106)))

(declare-fun lt!1907729 () Unit!134101)

(declare-fun Unit!134107 () Unit!134101)

(assert (=> b!4744816 (= lt!1907729 Unit!134107)))

(declare-fun lt!1907728 () Unit!134101)

(declare-fun forallContained!3742 (List!53103 Int tuple2!54666) Unit!134101)

(assert (=> b!4744816 (= lt!1907728 (forallContained!3742 (toList!6025 lt!1907743) lambda!220000 (h!59368 (_2!30628 (h!59369 (toList!6026 lm!2023))))))))

(assert (=> b!4744816 (contains!16406 lt!1907743 (_1!30627 (h!59368 (_2!30628 (h!59369 (toList!6026 lm!2023))))))))

(declare-fun lt!1907741 () Unit!134101)

(declare-fun Unit!134108 () Unit!134101)

(assert (=> b!4744816 (= lt!1907741 Unit!134108)))

(assert (=> b!4744816 (contains!16406 lt!1907733 (_1!30627 (h!59368 (_2!30628 (h!59369 (toList!6026 lm!2023))))))))

(declare-fun lt!1907747 () Unit!134101)

(declare-fun Unit!134109 () Unit!134101)

(assert (=> b!4744816 (= lt!1907747 Unit!134109)))

(assert (=> b!4744816 (forall!11703 (_2!30628 (h!59369 (toList!6026 lm!2023))) lambda!220000)))

(declare-fun lt!1907734 () Unit!134101)

(declare-fun Unit!134110 () Unit!134101)

(assert (=> b!4744816 (= lt!1907734 Unit!134110)))

(assert (=> b!4744816 (forall!11703 (toList!6025 lt!1907743) lambda!220000)))

(declare-fun lt!1907744 () Unit!134101)

(declare-fun Unit!134111 () Unit!134101)

(assert (=> b!4744816 (= lt!1907744 Unit!134111)))

(declare-fun lt!1907739 () Unit!134101)

(declare-fun Unit!134112 () Unit!134101)

(assert (=> b!4744816 (= lt!1907739 Unit!134112)))

(declare-fun lt!1907740 () Unit!134101)

(declare-fun addForallContainsKeyThenBeforeAdding!836 (ListMap!5389 ListMap!5389 K!14320 V!14566) Unit!134101)

(assert (=> b!4744816 (= lt!1907740 (addForallContainsKeyThenBeforeAdding!836 lt!1907515 lt!1907733 (_1!30627 (h!59368 (_2!30628 (h!59369 (toList!6026 lm!2023))))) (_2!30627 (h!59368 (_2!30628 (h!59369 (toList!6026 lm!2023)))))))))

(assert (=> b!4744816 (forall!11703 (toList!6025 lt!1907515) lambda!220000)))

(declare-fun lt!1907746 () Unit!134101)

(assert (=> b!4744816 (= lt!1907746 lt!1907740)))

(assert (=> b!4744816 call!332059))

(declare-fun lt!1907736 () Unit!134101)

(declare-fun Unit!134113 () Unit!134101)

(assert (=> b!4744816 (= lt!1907736 Unit!134113)))

(declare-fun res!2010840 () Bool)

(assert (=> b!4744816 (= res!2010840 (forall!11703 (_2!30628 (h!59369 (toList!6026 lm!2023))) lambda!220000))))

(assert (=> b!4744816 (=> (not res!2010840) (not e!2959631))))

(assert (=> b!4744816 e!2959631))

(declare-fun lt!1907735 () Unit!134101)

(declare-fun Unit!134114 () Unit!134101)

(assert (=> b!4744816 (= lt!1907735 Unit!134114)))

(declare-fun b!4744817 () Bool)

(declare-fun res!2010842 () Bool)

(assert (=> b!4744817 (=> (not res!2010842) (not e!2959630))))

(assert (=> b!4744817 (= res!2010842 (forall!11703 (toList!6025 lt!1907515) lambda!220005))))

(assert (= (and d!1516114 c!810458) b!4744815))

(assert (= (and d!1516114 (not c!810458)) b!4744816))

(assert (= (and b!4744816 res!2010840) b!4744813))

(assert (= (or b!4744815 b!4744816) bm!332055))

(assert (= (or b!4744815 b!4744816) bm!332056))

(assert (= (or b!4744815 b!4744816) bm!332054))

(assert (= (and d!1516114 res!2010841) b!4744817))

(assert (= (and b!4744817 res!2010842) b!4744814))

(declare-fun m!5701027 () Bool)

(assert (=> b!4744816 m!5701027))

(declare-fun m!5701029 () Bool)

(assert (=> b!4744816 m!5701029))

(declare-fun m!5701031 () Bool)

(assert (=> b!4744816 m!5701031))

(declare-fun m!5701033 () Bool)

(assert (=> b!4744816 m!5701033))

(declare-fun m!5701035 () Bool)

(assert (=> b!4744816 m!5701035))

(declare-fun m!5701037 () Bool)

(assert (=> b!4744816 m!5701037))

(declare-fun m!5701039 () Bool)

(assert (=> b!4744816 m!5701039))

(declare-fun m!5701041 () Bool)

(assert (=> b!4744816 m!5701041))

(assert (=> b!4744816 m!5701035))

(declare-fun m!5701043 () Bool)

(assert (=> b!4744816 m!5701043))

(declare-fun m!5701045 () Bool)

(assert (=> b!4744816 m!5701045))

(assert (=> b!4744816 m!5701027))

(assert (=> b!4744816 m!5701039))

(declare-fun m!5701047 () Bool)

(assert (=> d!1516114 m!5701047))

(declare-fun m!5701049 () Bool)

(assert (=> d!1516114 m!5701049))

(declare-fun m!5701051 () Bool)

(assert (=> b!4744814 m!5701051))

(declare-fun m!5701053 () Bool)

(assert (=> b!4744817 m!5701053))

(declare-fun m!5701055 () Bool)

(assert (=> bm!332055 m!5701055))

(assert (=> b!4744813 m!5701041))

(declare-fun m!5701057 () Bool)

(assert (=> bm!332056 m!5701057))

(declare-fun m!5701059 () Bool)

(assert (=> bm!332054 m!5701059))

(assert (=> b!4744618 d!1516114))

(declare-fun bs!1137304 () Bool)

(declare-fun d!1516122 () Bool)

(assert (= bs!1137304 (and d!1516122 start!484320)))

(declare-fun lambda!220012 () Int)

(assert (=> bs!1137304 (= lambda!220012 lambda!219930)))

(declare-fun bs!1137305 () Bool)

(assert (= bs!1137305 (and d!1516122 d!1516068)))

(assert (=> bs!1137305 (= lambda!220012 lambda!219936)))

(declare-fun bs!1137306 () Bool)

(assert (= bs!1137306 (and d!1516122 d!1516076)))

(assert (=> bs!1137306 (not (= lambda!220012 lambda!219948))))

(declare-fun lt!1907770 () ListMap!5389)

(assert (=> d!1516122 (invariantList!1553 (toList!6025 lt!1907770))))

(declare-fun e!2959635 () ListMap!5389)

(assert (=> d!1516122 (= lt!1907770 e!2959635)))

(declare-fun c!810459 () Bool)

(assert (=> d!1516122 (= c!810459 ((_ is Cons!52980) (t!360410 (toList!6026 lm!2023))))))

(assert (=> d!1516122 (forall!11701 (t!360410 (toList!6026 lm!2023)) lambda!220012)))

(assert (=> d!1516122 (= (extractMap!2094 (t!360410 (toList!6026 lm!2023))) lt!1907770)))

(declare-fun b!4744820 () Bool)

(assert (=> b!4744820 (= e!2959635 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (t!360410 (toList!6026 lm!2023)))) (extractMap!2094 (t!360410 (t!360410 (toList!6026 lm!2023))))))))

(declare-fun b!4744821 () Bool)

(assert (=> b!4744821 (= e!2959635 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516122 c!810459) b!4744820))

(assert (= (and d!1516122 (not c!810459)) b!4744821))

(declare-fun m!5701061 () Bool)

(assert (=> d!1516122 m!5701061))

(declare-fun m!5701063 () Bool)

(assert (=> d!1516122 m!5701063))

(declare-fun m!5701065 () Bool)

(assert (=> b!4744820 m!5701065))

(assert (=> b!4744820 m!5701065))

(declare-fun m!5701067 () Bool)

(assert (=> b!4744820 m!5701067))

(assert (=> b!4744618 d!1516122))

(declare-fun d!1516124 () Bool)

(assert (=> d!1516124 (= (tail!9145 lm!2023) (ListLongMap!4556 (tail!9144 (toList!6026 lm!2023))))))

(declare-fun bs!1137307 () Bool)

(assert (= bs!1137307 d!1516124))

(assert (=> bs!1137307 m!5700665))

(assert (=> b!4744618 d!1516124))

(declare-fun bs!1137308 () Bool)

(declare-fun d!1516126 () Bool)

(assert (= bs!1137308 (and d!1516126 b!4744815)))

(declare-fun lambda!220019 () Int)

(assert (=> bs!1137308 (not (= lambda!220019 lambda!219996))))

(declare-fun bs!1137309 () Bool)

(assert (= bs!1137309 (and d!1516126 b!4744816)))

(assert (=> bs!1137309 (not (= lambda!220019 lambda!219999))))

(assert (=> bs!1137309 (not (= lambda!220019 lambda!220000))))

(declare-fun bs!1137310 () Bool)

(assert (= bs!1137310 (and d!1516126 d!1516114)))

(assert (=> bs!1137310 (not (= lambda!220019 lambda!220005))))

(assert (=> d!1516126 true))

(assert (=> d!1516126 true))

(assert (=> d!1516126 (= (allKeysSameHash!1894 oldBucket!34 hash!405 hashF!1323) (forall!11703 oldBucket!34 lambda!220019))))

(declare-fun bs!1137311 () Bool)

(assert (= bs!1137311 d!1516126))

(declare-fun m!5701069 () Bool)

(assert (=> bs!1137311 m!5701069))

(assert (=> b!4744617 d!1516126))

(declare-fun b!4744833 () Bool)

(declare-fun e!2959639 () List!53103)

(assert (=> b!4744833 (= e!2959639 Nil!52979)))

(declare-fun d!1516128 () Bool)

(declare-fun lt!1907771 () List!53103)

(assert (=> d!1516128 (not (containsKey!3497 lt!1907771 key!4653))))

(declare-fun e!2959638 () List!53103)

(assert (=> d!1516128 (= lt!1907771 e!2959638)))

(declare-fun c!810460 () Bool)

(assert (=> d!1516128 (= c!810460 (and ((_ is Cons!52979) oldBucket!34) (= (_1!30627 (h!59368 oldBucket!34)) key!4653)))))

(assert (=> d!1516128 (noDuplicateKeys!2068 oldBucket!34)))

(assert (=> d!1516128 (= (removePairForKey!1663 oldBucket!34 key!4653) lt!1907771)))

(declare-fun b!4744832 () Bool)

(assert (=> b!4744832 (= e!2959639 (Cons!52979 (h!59368 oldBucket!34) (removePairForKey!1663 (t!360409 oldBucket!34) key!4653)))))

(declare-fun b!4744830 () Bool)

(assert (=> b!4744830 (= e!2959638 (t!360409 oldBucket!34))))

(declare-fun b!4744831 () Bool)

(assert (=> b!4744831 (= e!2959638 e!2959639)))

(declare-fun c!810461 () Bool)

(assert (=> b!4744831 (= c!810461 ((_ is Cons!52979) oldBucket!34))))

(assert (= (and d!1516128 c!810460) b!4744830))

(assert (= (and d!1516128 (not c!810460)) b!4744831))

(assert (= (and b!4744831 c!810461) b!4744832))

(assert (= (and b!4744831 (not c!810461)) b!4744833))

(declare-fun m!5701071 () Bool)

(assert (=> d!1516128 m!5701071))

(assert (=> d!1516128 m!5700705))

(assert (=> b!4744832 m!5700651))

(assert (=> b!4744616 d!1516128))

(declare-fun d!1516130 () Bool)

(declare-fun hash!4483 (Hashable!6437 K!14320) (_ BitVec 64))

(assert (=> d!1516130 (= (hash!4480 hashF!1323 key!4653) (hash!4483 hashF!1323 key!4653))))

(declare-fun bs!1137312 () Bool)

(assert (= bs!1137312 d!1516130))

(declare-fun m!5701073 () Bool)

(assert (=> bs!1137312 m!5701073))

(assert (=> b!4744624 d!1516130))

(declare-fun d!1516132 () Bool)

(assert (=> d!1516132 (= (head!10339 (toList!6026 lm!2023)) (h!59369 (toList!6026 lm!2023)))))

(assert (=> b!4744623 d!1516132))

(declare-fun d!1516134 () Bool)

(declare-fun res!2010849 () Bool)

(declare-fun e!2959640 () Bool)

(assert (=> d!1516134 (=> res!2010849 e!2959640)))

(assert (=> d!1516134 (= res!2010849 (not ((_ is Cons!52979) newBucket!218)))))

(assert (=> d!1516134 (= (noDuplicateKeys!2068 newBucket!218) e!2959640)))

(declare-fun b!4744836 () Bool)

(declare-fun e!2959641 () Bool)

(assert (=> b!4744836 (= e!2959640 e!2959641)))

(declare-fun res!2010850 () Bool)

(assert (=> b!4744836 (=> (not res!2010850) (not e!2959641))))

(assert (=> b!4744836 (= res!2010850 (not (containsKey!3497 (t!360409 newBucket!218) (_1!30627 (h!59368 newBucket!218)))))))

(declare-fun b!4744837 () Bool)

(assert (=> b!4744837 (= e!2959641 (noDuplicateKeys!2068 (t!360409 newBucket!218)))))

(assert (= (and d!1516134 (not res!2010849)) b!4744836))

(assert (= (and b!4744836 res!2010850) b!4744837))

(declare-fun m!5701075 () Bool)

(assert (=> b!4744836 m!5701075))

(declare-fun m!5701077 () Bool)

(assert (=> b!4744837 m!5701077))

(assert (=> b!4744602 d!1516134))

(declare-fun b!4744841 () Bool)

(declare-fun e!2959643 () List!53103)

(assert (=> b!4744841 (= e!2959643 Nil!52979)))

(declare-fun d!1516136 () Bool)

(declare-fun lt!1907772 () List!53103)

(assert (=> d!1516136 (not (containsKey!3497 lt!1907772 key!4653))))

(declare-fun e!2959642 () List!53103)

(assert (=> d!1516136 (= lt!1907772 e!2959642)))

(declare-fun c!810462 () Bool)

(assert (=> d!1516136 (= c!810462 (and ((_ is Cons!52979) lt!1907526) (= (_1!30627 (h!59368 lt!1907526)) key!4653)))))

(assert (=> d!1516136 (noDuplicateKeys!2068 lt!1907526)))

(assert (=> d!1516136 (= (removePairForKey!1663 lt!1907526 key!4653) lt!1907772)))

(declare-fun b!4744840 () Bool)

(assert (=> b!4744840 (= e!2959643 (Cons!52979 (h!59368 lt!1907526) (removePairForKey!1663 (t!360409 lt!1907526) key!4653)))))

(declare-fun b!4744838 () Bool)

(assert (=> b!4744838 (= e!2959642 (t!360409 lt!1907526))))

(declare-fun b!4744839 () Bool)

(assert (=> b!4744839 (= e!2959642 e!2959643)))

(declare-fun c!810463 () Bool)

(assert (=> b!4744839 (= c!810463 ((_ is Cons!52979) lt!1907526))))

(assert (= (and d!1516136 c!810462) b!4744838))

(assert (= (and d!1516136 (not c!810462)) b!4744839))

(assert (= (and b!4744839 c!810463) b!4744840))

(assert (= (and b!4744839 (not c!810463)) b!4744841))

(declare-fun m!5701079 () Bool)

(assert (=> d!1516136 m!5701079))

(declare-fun m!5701081 () Bool)

(assert (=> d!1516136 m!5701081))

(declare-fun m!5701083 () Bool)

(assert (=> b!4744840 m!5701083))

(assert (=> b!4744601 d!1516136))

(declare-fun d!1516138 () Bool)

(assert (=> d!1516138 (= (tail!9143 newBucket!218) (t!360409 newBucket!218))))

(assert (=> b!4744601 d!1516138))

(declare-fun d!1516140 () Bool)

(assert (=> d!1516140 (= (tail!9143 oldBucket!34) (t!360409 oldBucket!34))))

(assert (=> b!4744601 d!1516140))

(declare-fun d!1516142 () Bool)

(assert (=> d!1516142 (= (eq!1165 lt!1907487 lt!1907486) (= (content!9485 (toList!6025 lt!1907487)) (content!9485 (toList!6025 lt!1907486))))))

(declare-fun bs!1137313 () Bool)

(assert (= bs!1137313 d!1516142))

(declare-fun m!5701085 () Bool)

(assert (=> bs!1137313 m!5701085))

(assert (=> bs!1137313 m!5700825))

(assert (=> b!4744622 d!1516142))

(declare-fun d!1516144 () Bool)

(declare-fun e!2959644 () Bool)

(assert (=> d!1516144 e!2959644))

(declare-fun res!2010851 () Bool)

(assert (=> d!1516144 (=> (not res!2010851) (not e!2959644))))

(declare-fun lt!1907776 () ListMap!5389)

(assert (=> d!1516144 (= res!2010851 (contains!16406 lt!1907776 (_1!30627 (h!59368 oldBucket!34))))))

(declare-fun lt!1907773 () List!53103)

(assert (=> d!1516144 (= lt!1907776 (ListMap!5390 lt!1907773))))

(declare-fun lt!1907774 () Unit!134101)

(declare-fun lt!1907775 () Unit!134101)

(assert (=> d!1516144 (= lt!1907774 lt!1907775)))

(assert (=> d!1516144 (= (getValueByKey!2035 lt!1907773 (_1!30627 (h!59368 oldBucket!34))) (Some!12484 (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516144 (= lt!1907775 (lemmaContainsTupThenGetReturnValue!1119 lt!1907773 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516144 (= lt!1907773 (insertNoDuplicatedKeys!627 (toList!6025 lt!1907514) (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516144 (= (+!2316 lt!1907514 (h!59368 oldBucket!34)) lt!1907776)))

(declare-fun b!4744842 () Bool)

(declare-fun res!2010852 () Bool)

(assert (=> b!4744842 (=> (not res!2010852) (not e!2959644))))

(assert (=> b!4744842 (= res!2010852 (= (getValueByKey!2035 (toList!6025 lt!1907776) (_1!30627 (h!59368 oldBucket!34))) (Some!12484 (_2!30627 (h!59368 oldBucket!34)))))))

(declare-fun b!4744843 () Bool)

(assert (=> b!4744843 (= e!2959644 (contains!16408 (toList!6025 lt!1907776) (h!59368 oldBucket!34)))))

(assert (= (and d!1516144 res!2010851) b!4744842))

(assert (= (and b!4744842 res!2010852) b!4744843))

(declare-fun m!5701087 () Bool)

(assert (=> d!1516144 m!5701087))

(declare-fun m!5701089 () Bool)

(assert (=> d!1516144 m!5701089))

(declare-fun m!5701091 () Bool)

(assert (=> d!1516144 m!5701091))

(declare-fun m!5701093 () Bool)

(assert (=> d!1516144 m!5701093))

(declare-fun m!5701095 () Bool)

(assert (=> b!4744842 m!5701095))

(declare-fun m!5701097 () Bool)

(assert (=> b!4744843 m!5701097))

(assert (=> b!4744622 d!1516144))

(declare-fun d!1516146 () Bool)

(assert (=> d!1516146 (= (eq!1165 lt!1907502 (+!2316 lt!1907514 (h!59368 oldBucket!34))) (= (content!9485 (toList!6025 lt!1907502)) (content!9485 (toList!6025 (+!2316 lt!1907514 (h!59368 oldBucket!34))))))))

(declare-fun bs!1137314 () Bool)

(assert (= bs!1137314 d!1516146))

(declare-fun m!5701099 () Bool)

(assert (=> bs!1137314 m!5701099))

(declare-fun m!5701101 () Bool)

(assert (=> bs!1137314 m!5701101))

(assert (=> b!4744622 d!1516146))

(declare-fun d!1516148 () Bool)

(assert (=> d!1516148 (eq!1165 (+!2316 lt!1907524 (tuple2!54667 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34)))) (+!2316 lt!1907514 (tuple2!54667 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34)))))))

(declare-fun lt!1907800 () Unit!134101)

(declare-fun choose!33722 (ListMap!5389 ListMap!5389 K!14320 V!14566) Unit!134101)

(assert (=> d!1516148 (= lt!1907800 (choose!33722 lt!1907524 lt!1907514 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516148 (eq!1165 lt!1907524 lt!1907514)))

(assert (=> d!1516148 (= (lemmaAddToEqMapsPreservesEq!116 lt!1907524 lt!1907514 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))) lt!1907800)))

(declare-fun bs!1137321 () Bool)

(assert (= bs!1137321 d!1516148))

(declare-fun m!5701133 () Bool)

(assert (=> bs!1137321 m!5701133))

(declare-fun m!5701139 () Bool)

(assert (=> bs!1137321 m!5701139))

(declare-fun m!5701141 () Bool)

(assert (=> bs!1137321 m!5701141))

(declare-fun m!5701143 () Bool)

(assert (=> bs!1137321 m!5701143))

(assert (=> bs!1137321 m!5701133))

(assert (=> bs!1137321 m!5701143))

(declare-fun m!5701145 () Bool)

(assert (=> bs!1137321 m!5701145))

(assert (=> b!4744622 d!1516148))

(declare-fun d!1516152 () Bool)

(assert (=> d!1516152 (= (eq!1165 lt!1907487 lt!1907490) (= (content!9485 (toList!6025 lt!1907487)) (content!9485 (toList!6025 lt!1907490))))))

(declare-fun bs!1137322 () Bool)

(assert (= bs!1137322 d!1516152))

(assert (=> bs!1137322 m!5701085))

(declare-fun m!5701147 () Bool)

(assert (=> bs!1137322 m!5701147))

(assert (=> b!4744600 d!1516152))

(declare-fun d!1516154 () Bool)

(assert (=> d!1516154 (= (eq!1165 lt!1907498 lt!1907490) (= (content!9485 (toList!6025 lt!1907498)) (content!9485 (toList!6025 lt!1907490))))))

(declare-fun bs!1137323 () Bool)

(assert (= bs!1137323 d!1516154))

(declare-fun m!5701149 () Bool)

(assert (=> bs!1137323 m!5701149))

(assert (=> bs!1137323 m!5701147))

(assert (=> b!4744600 d!1516154))

(declare-fun d!1516156 () Bool)

(declare-fun e!2959649 () Bool)

(assert (=> d!1516156 e!2959649))

(declare-fun res!2010858 () Bool)

(assert (=> d!1516156 (=> (not res!2010858) (not e!2959649))))

(declare-fun lt!1907805 () ListMap!5389)

(assert (=> d!1516156 (= res!2010858 (not (contains!16406 lt!1907805 key!4653)))))

(assert (=> d!1516156 (= lt!1907805 (ListMap!5390 (removePresrvNoDuplicatedKeys!405 (toList!6025 lt!1907517) key!4653)))))

(assert (=> d!1516156 (= (-!758 lt!1907517 key!4653) lt!1907805)))

(declare-fun b!4744853 () Bool)

(assert (=> b!4744853 (= e!2959649 (= ((_ map and) (content!9488 (keys!19071 lt!1907517)) ((_ map not) (store ((as const (Array K!14320 Bool)) false) key!4653 true))) (content!9488 (keys!19071 lt!1907805))))))

(assert (= (and d!1516156 res!2010858) b!4744853))

(declare-fun m!5701163 () Bool)

(assert (=> d!1516156 m!5701163))

(declare-fun m!5701165 () Bool)

(assert (=> d!1516156 m!5701165))

(declare-fun m!5701167 () Bool)

(assert (=> b!4744853 m!5701167))

(declare-fun m!5701169 () Bool)

(assert (=> b!4744853 m!5701169))

(assert (=> b!4744853 m!5701167))

(declare-fun m!5701171 () Bool)

(assert (=> b!4744853 m!5701171))

(assert (=> b!4744853 m!5701169))

(declare-fun m!5701173 () Bool)

(assert (=> b!4744853 m!5701173))

(assert (=> b!4744853 m!5700973))

(assert (=> b!4744600 d!1516156))

(declare-fun d!1516160 () Bool)

(assert (=> d!1516160 (eq!1165 (-!758 lt!1907520 key!4653) (-!758 lt!1907517 key!4653))))

(declare-fun lt!1907833 () Unit!134101)

(declare-fun choose!33723 (ListMap!5389 ListMap!5389 K!14320) Unit!134101)

(assert (=> d!1516160 (= lt!1907833 (choose!33723 lt!1907520 lt!1907517 key!4653))))

(assert (=> d!1516160 (eq!1165 lt!1907520 lt!1907517)))

(assert (=> d!1516160 (= (lemmaRemovePreservesEq!124 lt!1907520 lt!1907517 key!4653) lt!1907833)))

(declare-fun bs!1137339 () Bool)

(assert (= bs!1137339 d!1516160))

(declare-fun m!5701219 () Bool)

(assert (=> bs!1137339 m!5701219))

(assert (=> bs!1137339 m!5700601))

(assert (=> bs!1137339 m!5700601))

(assert (=> bs!1137339 m!5700745))

(declare-fun m!5701223 () Bool)

(assert (=> bs!1137339 m!5701223))

(assert (=> bs!1137339 m!5700745))

(assert (=> bs!1137339 m!5700649))

(assert (=> b!4744600 d!1516160))

(declare-fun d!1516168 () Bool)

(assert (=> d!1516168 (= (eq!1165 lt!1907491 lt!1907490) (= (content!9485 (toList!6025 lt!1907491)) (content!9485 (toList!6025 lt!1907490))))))

(declare-fun bs!1137341 () Bool)

(assert (= bs!1137341 d!1516168))

(assert (=> bs!1137341 m!5700827))

(assert (=> bs!1137341 m!5701147))

(assert (=> b!4744599 d!1516168))

(declare-fun bs!1137342 () Bool)

(declare-fun d!1516172 () Bool)

(assert (= bs!1137342 (and d!1516172 b!4744815)))

(declare-fun lambda!220030 () Int)

(assert (=> bs!1137342 (not (= lambda!220030 lambda!219996))))

(declare-fun bs!1137343 () Bool)

(assert (= bs!1137343 (and d!1516172 b!4744816)))

(assert (=> bs!1137343 (not (= lambda!220030 lambda!220000))))

(declare-fun bs!1137344 () Bool)

(assert (= bs!1137344 (and d!1516172 d!1516114)))

(assert (=> bs!1137344 (not (= lambda!220030 lambda!220005))))

(assert (=> bs!1137343 (not (= lambda!220030 lambda!219999))))

(declare-fun bs!1137345 () Bool)

(assert (= bs!1137345 (and d!1516172 d!1516126)))

(assert (=> bs!1137345 (= lambda!220030 lambda!220019)))

(assert (=> d!1516172 true))

(assert (=> d!1516172 true))

(assert (=> d!1516172 (= (allKeysSameHash!1894 newBucket!218 hash!405 hashF!1323) (forall!11703 newBucket!218 lambda!220030))))

(declare-fun bs!1137346 () Bool)

(assert (= bs!1137346 d!1516172))

(declare-fun m!5701227 () Bool)

(assert (=> bs!1137346 m!5701227))

(assert (=> b!4744620 d!1516172))

(declare-fun b!4744888 () Bool)

(declare-fun e!2959673 () Unit!134101)

(declare-fun lt!1907879 () Unit!134101)

(assert (=> b!4744888 (= e!2959673 lt!1907879)))

(declare-fun lt!1907878 () Unit!134101)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1927 (List!53103 K!14320) Unit!134101)

(assert (=> b!4744888 (= lt!1907878 (lemmaContainsKeyImpliesGetValueByKeyDefined!1927 (toList!6025 lt!1907497) key!4653))))

(declare-fun isDefined!9740 (Option!12485) Bool)

(assert (=> b!4744888 (isDefined!9740 (getValueByKey!2035 (toList!6025 lt!1907497) key!4653))))

(declare-fun lt!1907881 () Unit!134101)

(assert (=> b!4744888 (= lt!1907881 lt!1907878)))

(declare-fun lemmaInListThenGetKeysListContains!987 (List!53103 K!14320) Unit!134101)

(assert (=> b!4744888 (= lt!1907879 (lemmaInListThenGetKeysListContains!987 (toList!6025 lt!1907497) key!4653))))

(declare-fun call!332079 () Bool)

(assert (=> b!4744888 call!332079))

(declare-fun b!4744889 () Bool)

(declare-fun e!2959672 () Bool)

(declare-fun contains!16410 (List!53106 K!14320) Bool)

(assert (=> b!4744889 (= e!2959672 (not (contains!16410 (keys!19071 lt!1907497) key!4653)))))

(declare-fun b!4744890 () Bool)

(declare-fun e!2959675 () Bool)

(declare-fun e!2959674 () Bool)

(assert (=> b!4744890 (= e!2959675 e!2959674)))

(declare-fun res!2010875 () Bool)

(assert (=> b!4744890 (=> (not res!2010875) (not e!2959674))))

(assert (=> b!4744890 (= res!2010875 (isDefined!9740 (getValueByKey!2035 (toList!6025 lt!1907497) key!4653)))))

(declare-fun b!4744891 () Bool)

(declare-fun e!2959676 () Unit!134101)

(assert (=> b!4744891 (= e!2959673 e!2959676)))

(declare-fun c!810476 () Bool)

(assert (=> b!4744891 (= c!810476 call!332079)))

(declare-fun bm!332074 () Bool)

(declare-fun e!2959671 () List!53106)

(assert (=> bm!332074 (= call!332079 (contains!16410 e!2959671 key!4653))))

(declare-fun c!810475 () Bool)

(declare-fun c!810477 () Bool)

(assert (=> bm!332074 (= c!810475 c!810477)))

(declare-fun b!4744892 () Bool)

(declare-fun Unit!134128 () Unit!134101)

(assert (=> b!4744892 (= e!2959676 Unit!134128)))

(declare-fun b!4744893 () Bool)

(declare-fun getKeysList!992 (List!53103) List!53106)

(assert (=> b!4744893 (= e!2959671 (getKeysList!992 (toList!6025 lt!1907497)))))

(declare-fun d!1516174 () Bool)

(assert (=> d!1516174 e!2959675))

(declare-fun res!2010873 () Bool)

(assert (=> d!1516174 (=> res!2010873 e!2959675)))

(assert (=> d!1516174 (= res!2010873 e!2959672)))

(declare-fun res!2010874 () Bool)

(assert (=> d!1516174 (=> (not res!2010874) (not e!2959672))))

(declare-fun lt!1907880 () Bool)

(assert (=> d!1516174 (= res!2010874 (not lt!1907880))))

(declare-fun lt!1907882 () Bool)

(assert (=> d!1516174 (= lt!1907880 lt!1907882)))

(declare-fun lt!1907876 () Unit!134101)

(assert (=> d!1516174 (= lt!1907876 e!2959673)))

(assert (=> d!1516174 (= c!810477 lt!1907882)))

(declare-fun containsKey!3500 (List!53103 K!14320) Bool)

(assert (=> d!1516174 (= lt!1907882 (containsKey!3500 (toList!6025 lt!1907497) key!4653))))

(assert (=> d!1516174 (= (contains!16406 lt!1907497 key!4653) lt!1907880)))

(declare-fun b!4744894 () Bool)

(assert (=> b!4744894 (= e!2959674 (contains!16410 (keys!19071 lt!1907497) key!4653))))

(declare-fun b!4744895 () Bool)

(assert (=> b!4744895 (= e!2959671 (keys!19071 lt!1907497))))

(declare-fun b!4744896 () Bool)

(assert (=> b!4744896 false))

(declare-fun lt!1907877 () Unit!134101)

(declare-fun lt!1907883 () Unit!134101)

(assert (=> b!4744896 (= lt!1907877 lt!1907883)))

(assert (=> b!4744896 (containsKey!3500 (toList!6025 lt!1907497) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!991 (List!53103 K!14320) Unit!134101)

(assert (=> b!4744896 (= lt!1907883 (lemmaInGetKeysListThenContainsKey!991 (toList!6025 lt!1907497) key!4653))))

(declare-fun Unit!134129 () Unit!134101)

(assert (=> b!4744896 (= e!2959676 Unit!134129)))

(assert (= (and d!1516174 c!810477) b!4744888))

(assert (= (and d!1516174 (not c!810477)) b!4744891))

(assert (= (and b!4744891 c!810476) b!4744896))

(assert (= (and b!4744891 (not c!810476)) b!4744892))

(assert (= (or b!4744888 b!4744891) bm!332074))

(assert (= (and bm!332074 c!810475) b!4744893))

(assert (= (and bm!332074 (not c!810475)) b!4744895))

(assert (= (and d!1516174 res!2010874) b!4744889))

(assert (= (and d!1516174 (not res!2010873)) b!4744890))

(assert (= (and b!4744890 res!2010875) b!4744894))

(declare-fun m!5701249 () Bool)

(assert (=> bm!332074 m!5701249))

(declare-fun m!5701251 () Bool)

(assert (=> b!4744890 m!5701251))

(assert (=> b!4744890 m!5701251))

(declare-fun m!5701253 () Bool)

(assert (=> b!4744890 m!5701253))

(declare-fun m!5701255 () Bool)

(assert (=> b!4744895 m!5701255))

(declare-fun m!5701257 () Bool)

(assert (=> b!4744896 m!5701257))

(declare-fun m!5701259 () Bool)

(assert (=> b!4744896 m!5701259))

(declare-fun m!5701263 () Bool)

(assert (=> b!4744888 m!5701263))

(assert (=> b!4744888 m!5701251))

(assert (=> b!4744888 m!5701251))

(assert (=> b!4744888 m!5701253))

(declare-fun m!5701267 () Bool)

(assert (=> b!4744888 m!5701267))

(assert (=> d!1516174 m!5701257))

(assert (=> b!4744894 m!5701255))

(assert (=> b!4744894 m!5701255))

(declare-fun m!5701273 () Bool)

(assert (=> b!4744894 m!5701273))

(declare-fun m!5701277 () Bool)

(assert (=> b!4744893 m!5701277))

(assert (=> b!4744889 m!5701255))

(assert (=> b!4744889 m!5701255))

(assert (=> b!4744889 m!5701273))

(assert (=> b!4744608 d!1516174))

(declare-fun bs!1137387 () Bool)

(declare-fun d!1516182 () Bool)

(assert (= bs!1137387 (and d!1516182 start!484320)))

(declare-fun lambda!220037 () Int)

(assert (=> bs!1137387 (= lambda!220037 lambda!219930)))

(declare-fun bs!1137388 () Bool)

(assert (= bs!1137388 (and d!1516182 d!1516068)))

(assert (=> bs!1137388 (= lambda!220037 lambda!219936)))

(declare-fun bs!1137389 () Bool)

(assert (= bs!1137389 (and d!1516182 d!1516076)))

(assert (=> bs!1137389 (not (= lambda!220037 lambda!219948))))

(declare-fun bs!1137390 () Bool)

(assert (= bs!1137390 (and d!1516182 d!1516122)))

(assert (=> bs!1137390 (= lambda!220037 lambda!220012)))

(declare-fun lt!1907884 () ListMap!5389)

(assert (=> d!1516182 (invariantList!1553 (toList!6025 lt!1907884))))

(declare-fun e!2959677 () ListMap!5389)

(assert (=> d!1516182 (= lt!1907884 e!2959677)))

(declare-fun c!810478 () Bool)

(assert (=> d!1516182 (= c!810478 ((_ is Cons!52980) (toList!6026 lm!2023)))))

(assert (=> d!1516182 (forall!11701 (toList!6026 lm!2023) lambda!220037)))

(assert (=> d!1516182 (= (extractMap!2094 (toList!6026 lm!2023)) lt!1907884)))

(declare-fun b!4744897 () Bool)

(assert (=> b!4744897 (= e!2959677 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (toList!6026 lm!2023))) (extractMap!2094 (t!360410 (toList!6026 lm!2023)))))))

(declare-fun b!4744898 () Bool)

(assert (=> b!4744898 (= e!2959677 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516182 c!810478) b!4744897))

(assert (= (and d!1516182 (not c!810478)) b!4744898))

(declare-fun m!5701299 () Bool)

(assert (=> d!1516182 m!5701299))

(declare-fun m!5701301 () Bool)

(assert (=> d!1516182 m!5701301))

(assert (=> b!4744897 m!5700645))

(assert (=> b!4744897 m!5700645))

(declare-fun m!5701303 () Bool)

(assert (=> b!4744897 m!5701303))

(assert (=> b!4744608 d!1516182))

(declare-fun bs!1137399 () Bool)

(declare-fun d!1516186 () Bool)

(assert (= bs!1137399 (and d!1516186 d!1516076)))

(declare-fun lambda!220039 () Int)

(assert (=> bs!1137399 (not (= lambda!220039 lambda!219948))))

(declare-fun bs!1137400 () Bool)

(assert (= bs!1137400 (and d!1516186 start!484320)))

(assert (=> bs!1137400 (= lambda!220039 lambda!219930)))

(declare-fun bs!1137402 () Bool)

(assert (= bs!1137402 (and d!1516186 d!1516122)))

(assert (=> bs!1137402 (= lambda!220039 lambda!220012)))

(declare-fun bs!1137404 () Bool)

(assert (= bs!1137404 (and d!1516186 d!1516182)))

(assert (=> bs!1137404 (= lambda!220039 lambda!220037)))

(declare-fun bs!1137405 () Bool)

(assert (= bs!1137405 (and d!1516186 d!1516068)))

(assert (=> bs!1137405 (= lambda!220039 lambda!219936)))

(declare-fun lt!1907906 () ListMap!5389)

(assert (=> d!1516186 (invariantList!1553 (toList!6025 lt!1907906))))

(declare-fun e!2959681 () ListMap!5389)

(assert (=> d!1516186 (= lt!1907906 e!2959681)))

(declare-fun c!810480 () Bool)

(assert (=> d!1516186 (= c!810480 ((_ is Cons!52980) (Cons!52980 lt!1907501 lt!1907516)))))

(assert (=> d!1516186 (forall!11701 (Cons!52980 lt!1907501 lt!1907516) lambda!220039)))

(assert (=> d!1516186 (= (extractMap!2094 (Cons!52980 lt!1907501 lt!1907516)) lt!1907906)))

(declare-fun b!4744904 () Bool)

(assert (=> b!4744904 (= e!2959681 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (Cons!52980 lt!1907501 lt!1907516))) (extractMap!2094 (t!360410 (Cons!52980 lt!1907501 lt!1907516)))))))

(declare-fun b!4744905 () Bool)

(assert (=> b!4744905 (= e!2959681 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516186 c!810480) b!4744904))

(assert (= (and d!1516186 (not c!810480)) b!4744905))

(declare-fun m!5701305 () Bool)

(assert (=> d!1516186 m!5701305))

(declare-fun m!5701307 () Bool)

(assert (=> d!1516186 m!5701307))

(declare-fun m!5701309 () Bool)

(assert (=> b!4744904 m!5701309))

(assert (=> b!4744904 m!5701309))

(declare-fun m!5701311 () Bool)

(assert (=> b!4744904 m!5701311))

(assert (=> b!4744607 d!1516186))

(declare-fun bs!1137412 () Bool)

(declare-fun d!1516188 () Bool)

(assert (= bs!1137412 (and d!1516188 d!1516186)))

(declare-fun lambda!220041 () Int)

(assert (=> bs!1137412 (= lambda!220041 lambda!220039)))

(declare-fun bs!1137414 () Bool)

(assert (= bs!1137414 (and d!1516188 d!1516076)))

(assert (=> bs!1137414 (not (= lambda!220041 lambda!219948))))

(declare-fun bs!1137416 () Bool)

(assert (= bs!1137416 (and d!1516188 start!484320)))

(assert (=> bs!1137416 (= lambda!220041 lambda!219930)))

(declare-fun bs!1137418 () Bool)

(assert (= bs!1137418 (and d!1516188 d!1516122)))

(assert (=> bs!1137418 (= lambda!220041 lambda!220012)))

(declare-fun bs!1137419 () Bool)

(assert (= bs!1137419 (and d!1516188 d!1516182)))

(assert (=> bs!1137419 (= lambda!220041 lambda!220037)))

(declare-fun bs!1137421 () Bool)

(assert (= bs!1137421 (and d!1516188 d!1516068)))

(assert (=> bs!1137421 (= lambda!220041 lambda!219936)))

(declare-fun lt!1907907 () ListMap!5389)

(assert (=> d!1516188 (invariantList!1553 (toList!6025 lt!1907907))))

(declare-fun e!2959682 () ListMap!5389)

(assert (=> d!1516188 (= lt!1907907 e!2959682)))

(declare-fun c!810481 () Bool)

(assert (=> d!1516188 (= c!810481 ((_ is Cons!52980) (Cons!52980 lt!1907489 lt!1907516)))))

(assert (=> d!1516188 (forall!11701 (Cons!52980 lt!1907489 lt!1907516) lambda!220041)))

(assert (=> d!1516188 (= (extractMap!2094 (Cons!52980 lt!1907489 lt!1907516)) lt!1907907)))

(declare-fun b!4744906 () Bool)

(assert (=> b!4744906 (= e!2959682 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (Cons!52980 lt!1907489 lt!1907516))) (extractMap!2094 (t!360410 (Cons!52980 lt!1907489 lt!1907516)))))))

(declare-fun b!4744907 () Bool)

(assert (=> b!4744907 (= e!2959682 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516188 c!810481) b!4744906))

(assert (= (and d!1516188 (not c!810481)) b!4744907))

(declare-fun m!5701313 () Bool)

(assert (=> d!1516188 m!5701313))

(declare-fun m!5701315 () Bool)

(assert (=> d!1516188 m!5701315))

(declare-fun m!5701317 () Bool)

(assert (=> b!4744906 m!5701317))

(assert (=> b!4744906 m!5701317))

(declare-fun m!5701319 () Bool)

(assert (=> b!4744906 m!5701319))

(assert (=> b!4744607 d!1516188))

(declare-fun d!1516190 () Bool)

(assert (=> d!1516190 (= (tail!9144 (toList!6026 lm!2023)) (t!360410 (toList!6026 lm!2023)))))

(assert (=> b!4744607 d!1516190))

(declare-fun d!1516192 () Bool)

(declare-fun e!2959683 () Bool)

(assert (=> d!1516192 e!2959683))

(declare-fun res!2010879 () Bool)

(assert (=> d!1516192 (=> (not res!2010879) (not e!2959683))))

(declare-fun lt!1907908 () ListMap!5389)

(assert (=> d!1516192 (= res!2010879 (not (contains!16406 lt!1907908 key!4653)))))

(assert (=> d!1516192 (= lt!1907908 (ListMap!5390 (removePresrvNoDuplicatedKeys!405 (toList!6025 (extractMap!2094 (Cons!52980 lt!1907501 lt!1907516))) key!4653)))))

(assert (=> d!1516192 (= (-!758 (extractMap!2094 (Cons!52980 lt!1907501 lt!1907516)) key!4653) lt!1907908)))

(declare-fun b!4744908 () Bool)

(assert (=> b!4744908 (= e!2959683 (= ((_ map and) (content!9488 (keys!19071 (extractMap!2094 (Cons!52980 lt!1907501 lt!1907516)))) ((_ map not) (store ((as const (Array K!14320 Bool)) false) key!4653 true))) (content!9488 (keys!19071 lt!1907908))))))

(assert (= (and d!1516192 res!2010879) b!4744908))

(declare-fun m!5701321 () Bool)

(assert (=> d!1516192 m!5701321))

(declare-fun m!5701323 () Bool)

(assert (=> d!1516192 m!5701323))

(assert (=> b!4744908 m!5700657))

(declare-fun m!5701325 () Bool)

(assert (=> b!4744908 m!5701325))

(declare-fun m!5701327 () Bool)

(assert (=> b!4744908 m!5701327))

(assert (=> b!4744908 m!5701325))

(declare-fun m!5701329 () Bool)

(assert (=> b!4744908 m!5701329))

(assert (=> b!4744908 m!5701327))

(declare-fun m!5701331 () Bool)

(assert (=> b!4744908 m!5701331))

(assert (=> b!4744908 m!5700973))

(assert (=> b!4744607 d!1516192))

(declare-fun d!1516194 () Bool)

(assert (=> d!1516194 (= (eq!1165 (extractMap!2094 (Cons!52980 lt!1907489 lt!1907516)) (-!758 (extractMap!2094 (Cons!52980 lt!1907501 lt!1907516)) key!4653)) (= (content!9485 (toList!6025 (extractMap!2094 (Cons!52980 lt!1907489 lt!1907516)))) (content!9485 (toList!6025 (-!758 (extractMap!2094 (Cons!52980 lt!1907501 lt!1907516)) key!4653)))))))

(declare-fun bs!1137423 () Bool)

(assert (= bs!1137423 d!1516194))

(declare-fun m!5701333 () Bool)

(assert (=> bs!1137423 m!5701333))

(declare-fun m!5701335 () Bool)

(assert (=> bs!1137423 m!5701335))

(assert (=> b!4744607 d!1516194))

(declare-fun d!1516196 () Bool)

(assert (=> d!1516196 (= (eq!1165 (addToMapMapFromBucket!1498 (Cons!52979 lt!1907513 lt!1907526) lt!1907515) (+!2316 (addToMapMapFromBucket!1498 lt!1907526 lt!1907515) lt!1907513)) (= (content!9485 (toList!6025 (addToMapMapFromBucket!1498 (Cons!52979 lt!1907513 lt!1907526) lt!1907515))) (content!9485 (toList!6025 (+!2316 (addToMapMapFromBucket!1498 lt!1907526 lt!1907515) lt!1907513)))))))

(declare-fun bs!1137424 () Bool)

(assert (= bs!1137424 d!1516196))

(declare-fun m!5701337 () Bool)

(assert (=> bs!1137424 m!5701337))

(declare-fun m!5701339 () Bool)

(assert (=> bs!1137424 m!5701339))

(assert (=> b!4744627 d!1516196))

(declare-fun d!1516198 () Bool)

(assert (=> d!1516198 (eq!1165 (addToMapMapFromBucket!1498 (Cons!52979 lt!1907521 lt!1907525) lt!1907515) (+!2316 (addToMapMapFromBucket!1498 lt!1907525 lt!1907515) lt!1907521))))

(declare-fun lt!1907918 () Unit!134101)

(declare-fun choose!33725 (tuple2!54666 List!53103 ListMap!5389) Unit!134101)

(assert (=> d!1516198 (= lt!1907918 (choose!33725 lt!1907521 lt!1907525 lt!1907515))))

(assert (=> d!1516198 (noDuplicateKeys!2068 lt!1907525)))

(assert (=> d!1516198 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!414 lt!1907521 lt!1907525 lt!1907515) lt!1907918)))

(declare-fun bs!1137440 () Bool)

(assert (= bs!1137440 d!1516198))

(assert (=> bs!1137440 m!5700607))

(assert (=> bs!1137440 m!5700609))

(assert (=> bs!1137440 m!5700611))

(declare-fun m!5701407 () Bool)

(assert (=> bs!1137440 m!5701407))

(assert (=> bs!1137440 m!5700607))

(declare-fun m!5701409 () Bool)

(assert (=> bs!1137440 m!5701409))

(assert (=> bs!1137440 m!5700605))

(assert (=> bs!1137440 m!5700609))

(assert (=> bs!1137440 m!5700605))

(assert (=> b!4744627 d!1516198))

(declare-fun bs!1137441 () Bool)

(declare-fun b!4744918 () Bool)

(assert (= bs!1137441 (and b!4744918 b!4744815)))

(declare-fun lambda!220044 () Int)

(assert (=> bs!1137441 (= lambda!220044 lambda!219996)))

(declare-fun bs!1137442 () Bool)

(assert (= bs!1137442 (and b!4744918 d!1516172)))

(assert (=> bs!1137442 (not (= lambda!220044 lambda!220030))))

(declare-fun bs!1137443 () Bool)

(assert (= bs!1137443 (and b!4744918 b!4744816)))

(assert (=> bs!1137443 (= (= lt!1907515 lt!1907733) (= lambda!220044 lambda!220000))))

(declare-fun bs!1137444 () Bool)

(assert (= bs!1137444 (and b!4744918 d!1516114)))

(assert (=> bs!1137444 (= (= lt!1907515 lt!1907730) (= lambda!220044 lambda!220005))))

(assert (=> bs!1137443 (= lambda!220044 lambda!219999)))

(declare-fun bs!1137445 () Bool)

(assert (= bs!1137445 (and b!4744918 d!1516126)))

(assert (=> bs!1137445 (not (= lambda!220044 lambda!220019))))

(assert (=> b!4744918 true))

(declare-fun bs!1137446 () Bool)

(declare-fun b!4744919 () Bool)

(assert (= bs!1137446 (and b!4744919 b!4744815)))

(declare-fun lambda!220045 () Int)

(assert (=> bs!1137446 (= lambda!220045 lambda!219996)))

(declare-fun bs!1137447 () Bool)

(assert (= bs!1137447 (and b!4744919 d!1516172)))

(assert (=> bs!1137447 (not (= lambda!220045 lambda!220030))))

(declare-fun bs!1137448 () Bool)

(assert (= bs!1137448 (and b!4744919 b!4744816)))

(assert (=> bs!1137448 (= (= lt!1907515 lt!1907733) (= lambda!220045 lambda!220000))))

(declare-fun bs!1137449 () Bool)

(assert (= bs!1137449 (and b!4744919 d!1516114)))

(assert (=> bs!1137449 (= (= lt!1907515 lt!1907730) (= lambda!220045 lambda!220005))))

(declare-fun bs!1137450 () Bool)

(assert (= bs!1137450 (and b!4744919 b!4744918)))

(assert (=> bs!1137450 (= lambda!220045 lambda!220044)))

(assert (=> bs!1137448 (= lambda!220045 lambda!219999)))

(declare-fun bs!1137451 () Bool)

(assert (= bs!1137451 (and b!4744919 d!1516126)))

(assert (=> bs!1137451 (not (= lambda!220045 lambda!220019))))

(assert (=> b!4744919 true))

(declare-fun lambda!220046 () Int)

(declare-fun lt!1907925 () ListMap!5389)

(assert (=> bs!1137446 (= (= lt!1907925 lt!1907515) (= lambda!220046 lambda!219996))))

(assert (=> bs!1137447 (not (= lambda!220046 lambda!220030))))

(assert (=> bs!1137448 (= (= lt!1907925 lt!1907733) (= lambda!220046 lambda!220000))))

(assert (=> bs!1137449 (= (= lt!1907925 lt!1907730) (= lambda!220046 lambda!220005))))

(assert (=> bs!1137450 (= (= lt!1907925 lt!1907515) (= lambda!220046 lambda!220044))))

(assert (=> b!4744919 (= (= lt!1907925 lt!1907515) (= lambda!220046 lambda!220045))))

(assert (=> bs!1137448 (= (= lt!1907925 lt!1907515) (= lambda!220046 lambda!219999))))

(assert (=> bs!1137451 (not (= lambda!220046 lambda!220019))))

(assert (=> b!4744919 true))

(declare-fun bs!1137452 () Bool)

(declare-fun d!1516214 () Bool)

(assert (= bs!1137452 (and d!1516214 b!4744815)))

(declare-fun lambda!220047 () Int)

(declare-fun lt!1907922 () ListMap!5389)

(assert (=> bs!1137452 (= (= lt!1907922 lt!1907515) (= lambda!220047 lambda!219996))))

(declare-fun bs!1137453 () Bool)

(assert (= bs!1137453 (and d!1516214 d!1516172)))

(assert (=> bs!1137453 (not (= lambda!220047 lambda!220030))))

(declare-fun bs!1137454 () Bool)

(assert (= bs!1137454 (and d!1516214 b!4744816)))

(assert (=> bs!1137454 (= (= lt!1907922 lt!1907733) (= lambda!220047 lambda!220000))))

(declare-fun bs!1137455 () Bool)

(assert (= bs!1137455 (and d!1516214 d!1516114)))

(assert (=> bs!1137455 (= (= lt!1907922 lt!1907730) (= lambda!220047 lambda!220005))))

(declare-fun bs!1137456 () Bool)

(assert (= bs!1137456 (and d!1516214 b!4744918)))

(assert (=> bs!1137456 (= (= lt!1907922 lt!1907515) (= lambda!220047 lambda!220044))))

(declare-fun bs!1137457 () Bool)

(assert (= bs!1137457 (and d!1516214 b!4744919)))

(assert (=> bs!1137457 (= (= lt!1907922 lt!1907515) (= lambda!220047 lambda!220045))))

(assert (=> bs!1137457 (= (= lt!1907922 lt!1907925) (= lambda!220047 lambda!220046))))

(assert (=> bs!1137454 (= (= lt!1907922 lt!1907515) (= lambda!220047 lambda!219999))))

(declare-fun bs!1137458 () Bool)

(assert (= bs!1137458 (and d!1516214 d!1516126)))

(assert (=> bs!1137458 (not (= lambda!220047 lambda!220019))))

(assert (=> d!1516214 true))

(declare-fun e!2959688 () Bool)

(assert (=> d!1516214 e!2959688))

(declare-fun res!2010884 () Bool)

(assert (=> d!1516214 (=> (not res!2010884) (not e!2959688))))

(assert (=> d!1516214 (= res!2010884 (forall!11703 lt!1907525 lambda!220047))))

(declare-fun e!2959690 () ListMap!5389)

(assert (=> d!1516214 (= lt!1907922 e!2959690)))

(declare-fun c!810484 () Bool)

(assert (=> d!1516214 (= c!810484 ((_ is Nil!52979) lt!1907525))))

(assert (=> d!1516214 (noDuplicateKeys!2068 lt!1907525)))

(assert (=> d!1516214 (= (addToMapMapFromBucket!1498 lt!1907525 lt!1907515) lt!1907922)))

(declare-fun b!4744916 () Bool)

(declare-fun e!2959689 () Bool)

(assert (=> b!4744916 (= e!2959689 (forall!11703 (toList!6025 lt!1907515) lambda!220046))))

(declare-fun b!4744917 () Bool)

(assert (=> b!4744917 (= e!2959688 (invariantList!1553 (toList!6025 lt!1907922)))))

(declare-fun call!332084 () Bool)

(declare-fun bm!332078 () Bool)

(assert (=> bm!332078 (= call!332084 (forall!11703 (ite c!810484 (toList!6025 lt!1907515) (t!360409 lt!1907525)) (ite c!810484 lambda!220044 lambda!220046)))))

(assert (=> b!4744918 (= e!2959690 lt!1907515)))

(declare-fun lt!1907934 () Unit!134101)

(declare-fun call!332085 () Unit!134101)

(assert (=> b!4744918 (= lt!1907934 call!332085)))

(assert (=> b!4744918 call!332084))

(declare-fun lt!1907930 () Unit!134101)

(assert (=> b!4744918 (= lt!1907930 lt!1907934)))

(declare-fun call!332083 () Bool)

(assert (=> b!4744918 call!332083))

(declare-fun lt!1907937 () Unit!134101)

(declare-fun Unit!134141 () Unit!134101)

(assert (=> b!4744918 (= lt!1907937 Unit!134141)))

(declare-fun bm!332079 () Bool)

(assert (=> bm!332079 (= call!332085 (lemmaContainsAllItsOwnKeys!837 lt!1907515))))

(declare-fun bm!332080 () Bool)

(assert (=> bm!332080 (= call!332083 (forall!11703 (toList!6025 lt!1907515) (ite c!810484 lambda!220044 lambda!220046)))))

(assert (=> b!4744919 (= e!2959690 lt!1907925)))

(declare-fun lt!1907935 () ListMap!5389)

(assert (=> b!4744919 (= lt!1907935 (+!2316 lt!1907515 (h!59368 lt!1907525)))))

(assert (=> b!4744919 (= lt!1907925 (addToMapMapFromBucket!1498 (t!360409 lt!1907525) (+!2316 lt!1907515 (h!59368 lt!1907525))))))

(declare-fun lt!1907929 () Unit!134101)

(assert (=> b!4744919 (= lt!1907929 call!332085)))

(assert (=> b!4744919 (forall!11703 (toList!6025 lt!1907515) lambda!220045)))

(declare-fun lt!1907923 () Unit!134101)

(assert (=> b!4744919 (= lt!1907923 lt!1907929)))

(assert (=> b!4744919 (forall!11703 (toList!6025 lt!1907935) lambda!220046)))

(declare-fun lt!1907919 () Unit!134101)

(declare-fun Unit!134142 () Unit!134101)

(assert (=> b!4744919 (= lt!1907919 Unit!134142)))

(assert (=> b!4744919 call!332084))

(declare-fun lt!1907924 () Unit!134101)

(declare-fun Unit!134143 () Unit!134101)

(assert (=> b!4744919 (= lt!1907924 Unit!134143)))

(declare-fun lt!1907921 () Unit!134101)

(declare-fun Unit!134144 () Unit!134101)

(assert (=> b!4744919 (= lt!1907921 Unit!134144)))

(declare-fun lt!1907920 () Unit!134101)

(assert (=> b!4744919 (= lt!1907920 (forallContained!3742 (toList!6025 lt!1907935) lambda!220046 (h!59368 lt!1907525)))))

(assert (=> b!4744919 (contains!16406 lt!1907935 (_1!30627 (h!59368 lt!1907525)))))

(declare-fun lt!1907933 () Unit!134101)

(declare-fun Unit!134145 () Unit!134101)

(assert (=> b!4744919 (= lt!1907933 Unit!134145)))

(assert (=> b!4744919 (contains!16406 lt!1907925 (_1!30627 (h!59368 lt!1907525)))))

(declare-fun lt!1907939 () Unit!134101)

(declare-fun Unit!134146 () Unit!134101)

(assert (=> b!4744919 (= lt!1907939 Unit!134146)))

(assert (=> b!4744919 (forall!11703 lt!1907525 lambda!220046)))

(declare-fun lt!1907926 () Unit!134101)

(declare-fun Unit!134147 () Unit!134101)

(assert (=> b!4744919 (= lt!1907926 Unit!134147)))

(assert (=> b!4744919 (forall!11703 (toList!6025 lt!1907935) lambda!220046)))

(declare-fun lt!1907936 () Unit!134101)

(declare-fun Unit!134148 () Unit!134101)

(assert (=> b!4744919 (= lt!1907936 Unit!134148)))

(declare-fun lt!1907931 () Unit!134101)

(declare-fun Unit!134149 () Unit!134101)

(assert (=> b!4744919 (= lt!1907931 Unit!134149)))

(declare-fun lt!1907932 () Unit!134101)

(assert (=> b!4744919 (= lt!1907932 (addForallContainsKeyThenBeforeAdding!836 lt!1907515 lt!1907925 (_1!30627 (h!59368 lt!1907525)) (_2!30627 (h!59368 lt!1907525))))))

(assert (=> b!4744919 (forall!11703 (toList!6025 lt!1907515) lambda!220046)))

(declare-fun lt!1907938 () Unit!134101)

(assert (=> b!4744919 (= lt!1907938 lt!1907932)))

(assert (=> b!4744919 call!332083))

(declare-fun lt!1907928 () Unit!134101)

(declare-fun Unit!134150 () Unit!134101)

(assert (=> b!4744919 (= lt!1907928 Unit!134150)))

(declare-fun res!2010883 () Bool)

(assert (=> b!4744919 (= res!2010883 (forall!11703 lt!1907525 lambda!220046))))

(assert (=> b!4744919 (=> (not res!2010883) (not e!2959689))))

(assert (=> b!4744919 e!2959689))

(declare-fun lt!1907927 () Unit!134101)

(declare-fun Unit!134151 () Unit!134101)

(assert (=> b!4744919 (= lt!1907927 Unit!134151)))

(declare-fun b!4744920 () Bool)

(declare-fun res!2010885 () Bool)

(assert (=> b!4744920 (=> (not res!2010885) (not e!2959688))))

(assert (=> b!4744920 (= res!2010885 (forall!11703 (toList!6025 lt!1907515) lambda!220047))))

(assert (= (and d!1516214 c!810484) b!4744918))

(assert (= (and d!1516214 (not c!810484)) b!4744919))

(assert (= (and b!4744919 res!2010883) b!4744916))

(assert (= (or b!4744918 b!4744919) bm!332079))

(assert (= (or b!4744918 b!4744919) bm!332080))

(assert (= (or b!4744918 b!4744919) bm!332078))

(assert (= (and d!1516214 res!2010884) b!4744920))

(assert (= (and b!4744920 res!2010885) b!4744917))

(declare-fun m!5701411 () Bool)

(assert (=> b!4744919 m!5701411))

(declare-fun m!5701413 () Bool)

(assert (=> b!4744919 m!5701413))

(declare-fun m!5701415 () Bool)

(assert (=> b!4744919 m!5701415))

(declare-fun m!5701417 () Bool)

(assert (=> b!4744919 m!5701417))

(declare-fun m!5701419 () Bool)

(assert (=> b!4744919 m!5701419))

(declare-fun m!5701421 () Bool)

(assert (=> b!4744919 m!5701421))

(declare-fun m!5701423 () Bool)

(assert (=> b!4744919 m!5701423))

(declare-fun m!5701425 () Bool)

(assert (=> b!4744919 m!5701425))

(assert (=> b!4744919 m!5701419))

(declare-fun m!5701427 () Bool)

(assert (=> b!4744919 m!5701427))

(declare-fun m!5701429 () Bool)

(assert (=> b!4744919 m!5701429))

(assert (=> b!4744919 m!5701411))

(assert (=> b!4744919 m!5701423))

(declare-fun m!5701431 () Bool)

(assert (=> d!1516214 m!5701431))

(assert (=> d!1516214 m!5701409))

(declare-fun m!5701433 () Bool)

(assert (=> b!4744917 m!5701433))

(declare-fun m!5701435 () Bool)

(assert (=> b!4744920 m!5701435))

(assert (=> bm!332079 m!5701055))

(assert (=> b!4744916 m!5701425))

(declare-fun m!5701437 () Bool)

(assert (=> bm!332080 m!5701437))

(declare-fun m!5701439 () Bool)

(assert (=> bm!332078 m!5701439))

(assert (=> b!4744627 d!1516214))

(declare-fun bs!1137460 () Bool)

(declare-fun b!4744923 () Bool)

(assert (= bs!1137460 (and b!4744923 b!4744815)))

(declare-fun lambda!220048 () Int)

(assert (=> bs!1137460 (= lambda!220048 lambda!219996)))

(declare-fun bs!1137461 () Bool)

(assert (= bs!1137461 (and b!4744923 d!1516172)))

(assert (=> bs!1137461 (not (= lambda!220048 lambda!220030))))

(declare-fun bs!1137462 () Bool)

(assert (= bs!1137462 (and b!4744923 d!1516214)))

(assert (=> bs!1137462 (= (= lt!1907515 lt!1907922) (= lambda!220048 lambda!220047))))

(declare-fun bs!1137463 () Bool)

(assert (= bs!1137463 (and b!4744923 b!4744816)))

(assert (=> bs!1137463 (= (= lt!1907515 lt!1907733) (= lambda!220048 lambda!220000))))

(declare-fun bs!1137464 () Bool)

(assert (= bs!1137464 (and b!4744923 d!1516114)))

(assert (=> bs!1137464 (= (= lt!1907515 lt!1907730) (= lambda!220048 lambda!220005))))

(declare-fun bs!1137465 () Bool)

(assert (= bs!1137465 (and b!4744923 b!4744918)))

(assert (=> bs!1137465 (= lambda!220048 lambda!220044)))

(declare-fun bs!1137466 () Bool)

(assert (= bs!1137466 (and b!4744923 b!4744919)))

(assert (=> bs!1137466 (= lambda!220048 lambda!220045)))

(assert (=> bs!1137466 (= (= lt!1907515 lt!1907925) (= lambda!220048 lambda!220046))))

(assert (=> bs!1137463 (= lambda!220048 lambda!219999)))

(declare-fun bs!1137467 () Bool)

(assert (= bs!1137467 (and b!4744923 d!1516126)))

(assert (=> bs!1137467 (not (= lambda!220048 lambda!220019))))

(assert (=> b!4744923 true))

(declare-fun bs!1137468 () Bool)

(declare-fun b!4744924 () Bool)

(assert (= bs!1137468 (and b!4744924 b!4744815)))

(declare-fun lambda!220049 () Int)

(assert (=> bs!1137468 (= lambda!220049 lambda!219996)))

(declare-fun bs!1137469 () Bool)

(assert (= bs!1137469 (and b!4744924 d!1516172)))

(assert (=> bs!1137469 (not (= lambda!220049 lambda!220030))))

(declare-fun bs!1137470 () Bool)

(assert (= bs!1137470 (and b!4744924 d!1516214)))

(assert (=> bs!1137470 (= (= lt!1907515 lt!1907922) (= lambda!220049 lambda!220047))))

(declare-fun bs!1137471 () Bool)

(assert (= bs!1137471 (and b!4744924 b!4744816)))

(assert (=> bs!1137471 (= (= lt!1907515 lt!1907733) (= lambda!220049 lambda!220000))))

(declare-fun bs!1137472 () Bool)

(assert (= bs!1137472 (and b!4744924 d!1516114)))

(assert (=> bs!1137472 (= (= lt!1907515 lt!1907730) (= lambda!220049 lambda!220005))))

(declare-fun bs!1137473 () Bool)

(assert (= bs!1137473 (and b!4744924 b!4744923)))

(assert (=> bs!1137473 (= lambda!220049 lambda!220048)))

(declare-fun bs!1137474 () Bool)

(assert (= bs!1137474 (and b!4744924 b!4744918)))

(assert (=> bs!1137474 (= lambda!220049 lambda!220044)))

(declare-fun bs!1137475 () Bool)

(assert (= bs!1137475 (and b!4744924 b!4744919)))

(assert (=> bs!1137475 (= lambda!220049 lambda!220045)))

(assert (=> bs!1137475 (= (= lt!1907515 lt!1907925) (= lambda!220049 lambda!220046))))

(assert (=> bs!1137471 (= lambda!220049 lambda!219999)))

(declare-fun bs!1137476 () Bool)

(assert (= bs!1137476 (and b!4744924 d!1516126)))

(assert (=> bs!1137476 (not (= lambda!220049 lambda!220019))))

(assert (=> b!4744924 true))

(declare-fun lambda!220050 () Int)

(declare-fun lt!1907949 () ListMap!5389)

(assert (=> bs!1137468 (= (= lt!1907949 lt!1907515) (= lambda!220050 lambda!219996))))

(assert (=> bs!1137469 (not (= lambda!220050 lambda!220030))))

(assert (=> bs!1137470 (= (= lt!1907949 lt!1907922) (= lambda!220050 lambda!220047))))

(assert (=> bs!1137471 (= (= lt!1907949 lt!1907733) (= lambda!220050 lambda!220000))))

(assert (=> bs!1137472 (= (= lt!1907949 lt!1907730) (= lambda!220050 lambda!220005))))

(assert (=> bs!1137473 (= (= lt!1907949 lt!1907515) (= lambda!220050 lambda!220048))))

(assert (=> b!4744924 (= (= lt!1907949 lt!1907515) (= lambda!220050 lambda!220049))))

(assert (=> bs!1137474 (= (= lt!1907949 lt!1907515) (= lambda!220050 lambda!220044))))

(assert (=> bs!1137475 (= (= lt!1907949 lt!1907515) (= lambda!220050 lambda!220045))))

(assert (=> bs!1137475 (= (= lt!1907949 lt!1907925) (= lambda!220050 lambda!220046))))

(assert (=> bs!1137471 (= (= lt!1907949 lt!1907515) (= lambda!220050 lambda!219999))))

(assert (=> bs!1137476 (not (= lambda!220050 lambda!220019))))

(assert (=> b!4744924 true))

(declare-fun bs!1137487 () Bool)

(declare-fun d!1516216 () Bool)

(assert (= bs!1137487 (and d!1516216 b!4744815)))

(declare-fun lambda!220052 () Int)

(declare-fun lt!1907946 () ListMap!5389)

(assert (=> bs!1137487 (= (= lt!1907946 lt!1907515) (= lambda!220052 lambda!219996))))

(declare-fun bs!1137488 () Bool)

(assert (= bs!1137488 (and d!1516216 d!1516172)))

(assert (=> bs!1137488 (not (= lambda!220052 lambda!220030))))

(declare-fun bs!1137489 () Bool)

(assert (= bs!1137489 (and d!1516216 b!4744924)))

(assert (=> bs!1137489 (= (= lt!1907946 lt!1907949) (= lambda!220052 lambda!220050))))

(declare-fun bs!1137490 () Bool)

(assert (= bs!1137490 (and d!1516216 d!1516214)))

(assert (=> bs!1137490 (= (= lt!1907946 lt!1907922) (= lambda!220052 lambda!220047))))

(declare-fun bs!1137491 () Bool)

(assert (= bs!1137491 (and d!1516216 b!4744816)))

(assert (=> bs!1137491 (= (= lt!1907946 lt!1907733) (= lambda!220052 lambda!220000))))

(declare-fun bs!1137493 () Bool)

(assert (= bs!1137493 (and d!1516216 d!1516114)))

(assert (=> bs!1137493 (= (= lt!1907946 lt!1907730) (= lambda!220052 lambda!220005))))

(declare-fun bs!1137494 () Bool)

(assert (= bs!1137494 (and d!1516216 b!4744923)))

(assert (=> bs!1137494 (= (= lt!1907946 lt!1907515) (= lambda!220052 lambda!220048))))

(assert (=> bs!1137489 (= (= lt!1907946 lt!1907515) (= lambda!220052 lambda!220049))))

(declare-fun bs!1137495 () Bool)

(assert (= bs!1137495 (and d!1516216 b!4744918)))

(assert (=> bs!1137495 (= (= lt!1907946 lt!1907515) (= lambda!220052 lambda!220044))))

(declare-fun bs!1137496 () Bool)

(assert (= bs!1137496 (and d!1516216 b!4744919)))

(assert (=> bs!1137496 (= (= lt!1907946 lt!1907515) (= lambda!220052 lambda!220045))))

(assert (=> bs!1137496 (= (= lt!1907946 lt!1907925) (= lambda!220052 lambda!220046))))

(assert (=> bs!1137491 (= (= lt!1907946 lt!1907515) (= lambda!220052 lambda!219999))))

(declare-fun bs!1137497 () Bool)

(assert (= bs!1137497 (and d!1516216 d!1516126)))

(assert (=> bs!1137497 (not (= lambda!220052 lambda!220019))))

(assert (=> d!1516216 true))

(declare-fun e!2959691 () Bool)

(assert (=> d!1516216 e!2959691))

(declare-fun res!2010887 () Bool)

(assert (=> d!1516216 (=> (not res!2010887) (not e!2959691))))

(assert (=> d!1516216 (= res!2010887 (forall!11703 (Cons!52979 lt!1907521 lt!1907525) lambda!220052))))

(declare-fun e!2959693 () ListMap!5389)

(assert (=> d!1516216 (= lt!1907946 e!2959693)))

(declare-fun c!810485 () Bool)

(assert (=> d!1516216 (= c!810485 ((_ is Nil!52979) (Cons!52979 lt!1907521 lt!1907525)))))

(assert (=> d!1516216 (noDuplicateKeys!2068 (Cons!52979 lt!1907521 lt!1907525))))

(assert (=> d!1516216 (= (addToMapMapFromBucket!1498 (Cons!52979 lt!1907521 lt!1907525) lt!1907515) lt!1907946)))

(declare-fun b!4744921 () Bool)

(declare-fun e!2959692 () Bool)

(assert (=> b!4744921 (= e!2959692 (forall!11703 (toList!6025 lt!1907515) lambda!220050))))

(declare-fun b!4744922 () Bool)

(assert (=> b!4744922 (= e!2959691 (invariantList!1553 (toList!6025 lt!1907946)))))

(declare-fun call!332087 () Bool)

(declare-fun bm!332081 () Bool)

(assert (=> bm!332081 (= call!332087 (forall!11703 (ite c!810485 (toList!6025 lt!1907515) (t!360409 (Cons!52979 lt!1907521 lt!1907525))) (ite c!810485 lambda!220048 lambda!220050)))))

(assert (=> b!4744923 (= e!2959693 lt!1907515)))

(declare-fun lt!1907958 () Unit!134101)

(declare-fun call!332088 () Unit!134101)

(assert (=> b!4744923 (= lt!1907958 call!332088)))

(assert (=> b!4744923 call!332087))

(declare-fun lt!1907954 () Unit!134101)

(assert (=> b!4744923 (= lt!1907954 lt!1907958)))

(declare-fun call!332086 () Bool)

(assert (=> b!4744923 call!332086))

(declare-fun lt!1907961 () Unit!134101)

(declare-fun Unit!134163 () Unit!134101)

(assert (=> b!4744923 (= lt!1907961 Unit!134163)))

(declare-fun bm!332082 () Bool)

(assert (=> bm!332082 (= call!332088 (lemmaContainsAllItsOwnKeys!837 lt!1907515))))

(declare-fun bm!332083 () Bool)

(assert (=> bm!332083 (= call!332086 (forall!11703 (toList!6025 lt!1907515) (ite c!810485 lambda!220048 lambda!220050)))))

(assert (=> b!4744924 (= e!2959693 lt!1907949)))

(declare-fun lt!1907959 () ListMap!5389)

(assert (=> b!4744924 (= lt!1907959 (+!2316 lt!1907515 (h!59368 (Cons!52979 lt!1907521 lt!1907525))))))

(assert (=> b!4744924 (= lt!1907949 (addToMapMapFromBucket!1498 (t!360409 (Cons!52979 lt!1907521 lt!1907525)) (+!2316 lt!1907515 (h!59368 (Cons!52979 lt!1907521 lt!1907525)))))))

(declare-fun lt!1907953 () Unit!134101)

(assert (=> b!4744924 (= lt!1907953 call!332088)))

(assert (=> b!4744924 (forall!11703 (toList!6025 lt!1907515) lambda!220049)))

(declare-fun lt!1907947 () Unit!134101)

(assert (=> b!4744924 (= lt!1907947 lt!1907953)))

(assert (=> b!4744924 (forall!11703 (toList!6025 lt!1907959) lambda!220050)))

(declare-fun lt!1907943 () Unit!134101)

(declare-fun Unit!134164 () Unit!134101)

(assert (=> b!4744924 (= lt!1907943 Unit!134164)))

(assert (=> b!4744924 call!332087))

(declare-fun lt!1907948 () Unit!134101)

(declare-fun Unit!134165 () Unit!134101)

(assert (=> b!4744924 (= lt!1907948 Unit!134165)))

(declare-fun lt!1907945 () Unit!134101)

(declare-fun Unit!134166 () Unit!134101)

(assert (=> b!4744924 (= lt!1907945 Unit!134166)))

(declare-fun lt!1907944 () Unit!134101)

(assert (=> b!4744924 (= lt!1907944 (forallContained!3742 (toList!6025 lt!1907959) lambda!220050 (h!59368 (Cons!52979 lt!1907521 lt!1907525))))))

(assert (=> b!4744924 (contains!16406 lt!1907959 (_1!30627 (h!59368 (Cons!52979 lt!1907521 lt!1907525))))))

(declare-fun lt!1907957 () Unit!134101)

(declare-fun Unit!134167 () Unit!134101)

(assert (=> b!4744924 (= lt!1907957 Unit!134167)))

(assert (=> b!4744924 (contains!16406 lt!1907949 (_1!30627 (h!59368 (Cons!52979 lt!1907521 lt!1907525))))))

(declare-fun lt!1907963 () Unit!134101)

(declare-fun Unit!134168 () Unit!134101)

(assert (=> b!4744924 (= lt!1907963 Unit!134168)))

(assert (=> b!4744924 (forall!11703 (Cons!52979 lt!1907521 lt!1907525) lambda!220050)))

(declare-fun lt!1907950 () Unit!134101)

(declare-fun Unit!134169 () Unit!134101)

(assert (=> b!4744924 (= lt!1907950 Unit!134169)))

(assert (=> b!4744924 (forall!11703 (toList!6025 lt!1907959) lambda!220050)))

(declare-fun lt!1907960 () Unit!134101)

(declare-fun Unit!134170 () Unit!134101)

(assert (=> b!4744924 (= lt!1907960 Unit!134170)))

(declare-fun lt!1907955 () Unit!134101)

(declare-fun Unit!134171 () Unit!134101)

(assert (=> b!4744924 (= lt!1907955 Unit!134171)))

(declare-fun lt!1907956 () Unit!134101)

(assert (=> b!4744924 (= lt!1907956 (addForallContainsKeyThenBeforeAdding!836 lt!1907515 lt!1907949 (_1!30627 (h!59368 (Cons!52979 lt!1907521 lt!1907525))) (_2!30627 (h!59368 (Cons!52979 lt!1907521 lt!1907525)))))))

(assert (=> b!4744924 (forall!11703 (toList!6025 lt!1907515) lambda!220050)))

(declare-fun lt!1907962 () Unit!134101)

(assert (=> b!4744924 (= lt!1907962 lt!1907956)))

(assert (=> b!4744924 call!332086))

(declare-fun lt!1907952 () Unit!134101)

(declare-fun Unit!134172 () Unit!134101)

(assert (=> b!4744924 (= lt!1907952 Unit!134172)))

(declare-fun res!2010886 () Bool)

(assert (=> b!4744924 (= res!2010886 (forall!11703 (Cons!52979 lt!1907521 lt!1907525) lambda!220050))))

(assert (=> b!4744924 (=> (not res!2010886) (not e!2959692))))

(assert (=> b!4744924 e!2959692))

(declare-fun lt!1907951 () Unit!134101)

(declare-fun Unit!134173 () Unit!134101)

(assert (=> b!4744924 (= lt!1907951 Unit!134173)))

(declare-fun b!4744925 () Bool)

(declare-fun res!2010888 () Bool)

(assert (=> b!4744925 (=> (not res!2010888) (not e!2959691))))

(assert (=> b!4744925 (= res!2010888 (forall!11703 (toList!6025 lt!1907515) lambda!220052))))

(assert (= (and d!1516216 c!810485) b!4744923))

(assert (= (and d!1516216 (not c!810485)) b!4744924))

(assert (= (and b!4744924 res!2010886) b!4744921))

(assert (= (or b!4744923 b!4744924) bm!332082))

(assert (= (or b!4744923 b!4744924) bm!332083))

(assert (= (or b!4744923 b!4744924) bm!332081))

(assert (= (and d!1516216 res!2010887) b!4744925))

(assert (= (and b!4744925 res!2010888) b!4744922))

(declare-fun m!5701513 () Bool)

(assert (=> b!4744924 m!5701513))

(declare-fun m!5701515 () Bool)

(assert (=> b!4744924 m!5701515))

(declare-fun m!5701517 () Bool)

(assert (=> b!4744924 m!5701517))

(declare-fun m!5701519 () Bool)

(assert (=> b!4744924 m!5701519))

(declare-fun m!5701521 () Bool)

(assert (=> b!4744924 m!5701521))

(declare-fun m!5701523 () Bool)

(assert (=> b!4744924 m!5701523))

(declare-fun m!5701525 () Bool)

(assert (=> b!4744924 m!5701525))

(declare-fun m!5701527 () Bool)

(assert (=> b!4744924 m!5701527))

(assert (=> b!4744924 m!5701521))

(declare-fun m!5701529 () Bool)

(assert (=> b!4744924 m!5701529))

(declare-fun m!5701531 () Bool)

(assert (=> b!4744924 m!5701531))

(assert (=> b!4744924 m!5701513))

(assert (=> b!4744924 m!5701525))

(declare-fun m!5701533 () Bool)

(assert (=> d!1516216 m!5701533))

(declare-fun m!5701535 () Bool)

(assert (=> d!1516216 m!5701535))

(declare-fun m!5701537 () Bool)

(assert (=> b!4744922 m!5701537))

(declare-fun m!5701539 () Bool)

(assert (=> b!4744925 m!5701539))

(assert (=> bm!332082 m!5701055))

(assert (=> b!4744921 m!5701527))

(declare-fun m!5701541 () Bool)

(assert (=> bm!332083 m!5701541))

(declare-fun m!5701543 () Bool)

(assert (=> bm!332081 m!5701543))

(assert (=> b!4744627 d!1516216))

(declare-fun d!1516236 () Bool)

(assert (=> d!1516236 (= (head!10340 newBucket!218) (h!59368 newBucket!218))))

(assert (=> b!4744627 d!1516236))

(declare-fun bs!1137509 () Bool)

(declare-fun d!1516240 () Bool)

(assert (= bs!1137509 (and d!1516240 d!1516186)))

(declare-fun lambda!220054 () Int)

(assert (=> bs!1137509 (= lambda!220054 lambda!220039)))

(declare-fun bs!1137510 () Bool)

(assert (= bs!1137510 (and d!1516240 d!1516076)))

(assert (=> bs!1137510 (not (= lambda!220054 lambda!219948))))

(declare-fun bs!1137512 () Bool)

(assert (= bs!1137512 (and d!1516240 start!484320)))

(assert (=> bs!1137512 (= lambda!220054 lambda!219930)))

(declare-fun bs!1137514 () Bool)

(assert (= bs!1137514 (and d!1516240 d!1516122)))

(assert (=> bs!1137514 (= lambda!220054 lambda!220012)))

(declare-fun bs!1137516 () Bool)

(assert (= bs!1137516 (and d!1516240 d!1516182)))

(assert (=> bs!1137516 (= lambda!220054 lambda!220037)))

(declare-fun bs!1137517 () Bool)

(assert (= bs!1137517 (and d!1516240 d!1516188)))

(assert (=> bs!1137517 (= lambda!220054 lambda!220041)))

(declare-fun bs!1137519 () Bool)

(assert (= bs!1137519 (and d!1516240 d!1516068)))

(assert (=> bs!1137519 (= lambda!220054 lambda!219936)))

(declare-fun lt!1907976 () ListMap!5389)

(assert (=> d!1516240 (invariantList!1553 (toList!6025 lt!1907976))))

(declare-fun e!2959700 () ListMap!5389)

(assert (=> d!1516240 (= lt!1907976 e!2959700)))

(declare-fun c!810488 () Bool)

(assert (=> d!1516240 (= c!810488 ((_ is Cons!52980) lt!1907504))))

(assert (=> d!1516240 (forall!11701 lt!1907504 lambda!220054)))

(assert (=> d!1516240 (= (extractMap!2094 lt!1907504) lt!1907976)))

(declare-fun b!4744936 () Bool)

(assert (=> b!4744936 (= e!2959700 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 lt!1907504)) (extractMap!2094 (t!360410 lt!1907504))))))

(declare-fun b!4744937 () Bool)

(assert (=> b!4744937 (= e!2959700 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516240 c!810488) b!4744936))

(assert (= (and d!1516240 (not c!810488)) b!4744937))

(declare-fun m!5701557 () Bool)

(assert (=> d!1516240 m!5701557))

(declare-fun m!5701559 () Bool)

(assert (=> d!1516240 m!5701559))

(declare-fun m!5701561 () Bool)

(assert (=> b!4744936 m!5701561))

(assert (=> b!4744936 m!5701561))

(declare-fun m!5701563 () Bool)

(assert (=> b!4744936 m!5701563))

(assert (=> b!4744627 d!1516240))

(declare-fun d!1516244 () Bool)

(assert (=> d!1516244 (= (eq!1165 lt!1907517 (+!2316 lt!1907527 (h!59368 oldBucket!34))) (= (content!9485 (toList!6025 lt!1907517)) (content!9485 (toList!6025 (+!2316 lt!1907527 (h!59368 oldBucket!34))))))))

(declare-fun bs!1137527 () Bool)

(assert (= bs!1137527 d!1516244))

(assert (=> bs!1137527 m!5700769))

(declare-fun m!5701565 () Bool)

(assert (=> bs!1137527 m!5701565))

(assert (=> b!4744627 d!1516244))

(declare-fun bs!1137540 () Bool)

(declare-fun d!1516246 () Bool)

(assert (= bs!1137540 (and d!1516246 d!1516186)))

(declare-fun lambda!220059 () Int)

(assert (=> bs!1137540 (= lambda!220059 lambda!220039)))

(declare-fun bs!1137541 () Bool)

(assert (= bs!1137541 (and d!1516246 d!1516076)))

(assert (=> bs!1137541 (not (= lambda!220059 lambda!219948))))

(declare-fun bs!1137542 () Bool)

(assert (= bs!1137542 (and d!1516246 start!484320)))

(assert (=> bs!1137542 (= lambda!220059 lambda!219930)))

(declare-fun bs!1137543 () Bool)

(assert (= bs!1137543 (and d!1516246 d!1516122)))

(assert (=> bs!1137543 (= lambda!220059 lambda!220012)))

(declare-fun bs!1137544 () Bool)

(assert (= bs!1137544 (and d!1516246 d!1516182)))

(assert (=> bs!1137544 (= lambda!220059 lambda!220037)))

(declare-fun bs!1137545 () Bool)

(assert (= bs!1137545 (and d!1516246 d!1516188)))

(assert (=> bs!1137545 (= lambda!220059 lambda!220041)))

(declare-fun bs!1137546 () Bool)

(assert (= bs!1137546 (and d!1516246 d!1516068)))

(assert (=> bs!1137546 (= lambda!220059 lambda!219936)))

(declare-fun bs!1137547 () Bool)

(assert (= bs!1137547 (and d!1516246 d!1516240)))

(assert (=> bs!1137547 (= lambda!220059 lambda!220054)))

(assert (=> d!1516246 (contains!16406 (extractMap!2094 (toList!6026 lt!1907511)) key!4653)))

(declare-fun lt!1907981 () Unit!134101)

(declare-fun choose!33726 (ListLongMap!4555 K!14320 Hashable!6437) Unit!134101)

(assert (=> d!1516246 (= lt!1907981 (choose!33726 lt!1907511 key!4653 hashF!1323))))

(assert (=> d!1516246 (forall!11701 (toList!6026 lt!1907511) lambda!220059)))

(assert (=> d!1516246 (= (lemmaListContainsThenExtractedMapContains!576 lt!1907511 key!4653 hashF!1323) lt!1907981)))

(declare-fun bs!1137548 () Bool)

(assert (= bs!1137548 d!1516246))

(declare-fun m!5701583 () Bool)

(assert (=> bs!1137548 m!5701583))

(assert (=> bs!1137548 m!5701583))

(declare-fun m!5701585 () Bool)

(assert (=> bs!1137548 m!5701585))

(declare-fun m!5701587 () Bool)

(assert (=> bs!1137548 m!5701587))

(declare-fun m!5701589 () Bool)

(assert (=> bs!1137548 m!5701589))

(assert (=> b!4744627 d!1516246))

(declare-fun bs!1137549 () Bool)

(declare-fun d!1516252 () Bool)

(assert (= bs!1137549 (and d!1516252 d!1516186)))

(declare-fun lambda!220060 () Int)

(assert (=> bs!1137549 (= lambda!220060 lambda!220039)))

(declare-fun bs!1137550 () Bool)

(assert (= bs!1137550 (and d!1516252 d!1516076)))

(assert (=> bs!1137550 (not (= lambda!220060 lambda!219948))))

(declare-fun bs!1137551 () Bool)

(assert (= bs!1137551 (and d!1516252 start!484320)))

(assert (=> bs!1137551 (= lambda!220060 lambda!219930)))

(declare-fun bs!1137552 () Bool)

(assert (= bs!1137552 (and d!1516252 d!1516122)))

(assert (=> bs!1137552 (= lambda!220060 lambda!220012)))

(declare-fun bs!1137553 () Bool)

(assert (= bs!1137553 (and d!1516252 d!1516246)))

(assert (=> bs!1137553 (= lambda!220060 lambda!220059)))

(declare-fun bs!1137554 () Bool)

(assert (= bs!1137554 (and d!1516252 d!1516182)))

(assert (=> bs!1137554 (= lambda!220060 lambda!220037)))

(declare-fun bs!1137555 () Bool)

(assert (= bs!1137555 (and d!1516252 d!1516188)))

(assert (=> bs!1137555 (= lambda!220060 lambda!220041)))

(declare-fun bs!1137556 () Bool)

(assert (= bs!1137556 (and d!1516252 d!1516068)))

(assert (=> bs!1137556 (= lambda!220060 lambda!219936)))

(declare-fun bs!1137557 () Bool)

(assert (= bs!1137557 (and d!1516252 d!1516240)))

(assert (=> bs!1137557 (= lambda!220060 lambda!220054)))

(declare-fun lt!1907982 () ListMap!5389)

(assert (=> d!1516252 (invariantList!1553 (toList!6025 lt!1907982))))

(declare-fun e!2959703 () ListMap!5389)

(assert (=> d!1516252 (= lt!1907982 e!2959703)))

(declare-fun c!810491 () Bool)

(assert (=> d!1516252 (= c!810491 ((_ is Cons!52980) (Cons!52980 lt!1907501 (t!360410 (toList!6026 lm!2023)))))))

(assert (=> d!1516252 (forall!11701 (Cons!52980 lt!1907501 (t!360410 (toList!6026 lm!2023))) lambda!220060)))

(assert (=> d!1516252 (= (extractMap!2094 (Cons!52980 lt!1907501 (t!360410 (toList!6026 lm!2023)))) lt!1907982)))

(declare-fun b!4744942 () Bool)

(assert (=> b!4744942 (= e!2959703 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (Cons!52980 lt!1907501 (t!360410 (toList!6026 lm!2023))))) (extractMap!2094 (t!360410 (Cons!52980 lt!1907501 (t!360410 (toList!6026 lm!2023)))))))))

(declare-fun b!4744943 () Bool)

(assert (=> b!4744943 (= e!2959703 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516252 c!810491) b!4744942))

(assert (= (and d!1516252 (not c!810491)) b!4744943))

(declare-fun m!5701591 () Bool)

(assert (=> d!1516252 m!5701591))

(declare-fun m!5701593 () Bool)

(assert (=> d!1516252 m!5701593))

(declare-fun m!5701595 () Bool)

(assert (=> b!4744942 m!5701595))

(assert (=> b!4744942 m!5701595))

(declare-fun m!5701597 () Bool)

(assert (=> b!4744942 m!5701597))

(assert (=> b!4744627 d!1516252))

(declare-fun bs!1137558 () Bool)

(declare-fun b!4744946 () Bool)

(assert (= bs!1137558 (and b!4744946 b!4744815)))

(declare-fun lambda!220061 () Int)

(assert (=> bs!1137558 (= lambda!220061 lambda!219996)))

(declare-fun bs!1137559 () Bool)

(assert (= bs!1137559 (and b!4744946 d!1516172)))

(assert (=> bs!1137559 (not (= lambda!220061 lambda!220030))))

(declare-fun bs!1137560 () Bool)

(assert (= bs!1137560 (and b!4744946 b!4744924)))

(assert (=> bs!1137560 (= (= lt!1907515 lt!1907949) (= lambda!220061 lambda!220050))))

(declare-fun bs!1137561 () Bool)

(assert (= bs!1137561 (and b!4744946 d!1516214)))

(assert (=> bs!1137561 (= (= lt!1907515 lt!1907922) (= lambda!220061 lambda!220047))))

(declare-fun bs!1137562 () Bool)

(assert (= bs!1137562 (and b!4744946 b!4744816)))

(assert (=> bs!1137562 (= (= lt!1907515 lt!1907733) (= lambda!220061 lambda!220000))))

(declare-fun bs!1137563 () Bool)

(assert (= bs!1137563 (and b!4744946 d!1516114)))

(assert (=> bs!1137563 (= (= lt!1907515 lt!1907730) (= lambda!220061 lambda!220005))))

(declare-fun bs!1137564 () Bool)

(assert (= bs!1137564 (and b!4744946 b!4744923)))

(assert (=> bs!1137564 (= lambda!220061 lambda!220048)))

(declare-fun bs!1137565 () Bool)

(assert (= bs!1137565 (and b!4744946 b!4744918)))

(assert (=> bs!1137565 (= lambda!220061 lambda!220044)))

(declare-fun bs!1137566 () Bool)

(assert (= bs!1137566 (and b!4744946 b!4744919)))

(assert (=> bs!1137566 (= lambda!220061 lambda!220045)))

(assert (=> bs!1137566 (= (= lt!1907515 lt!1907925) (= lambda!220061 lambda!220046))))

(assert (=> bs!1137562 (= lambda!220061 lambda!219999)))

(declare-fun bs!1137567 () Bool)

(assert (= bs!1137567 (and b!4744946 d!1516126)))

(assert (=> bs!1137567 (not (= lambda!220061 lambda!220019))))

(declare-fun bs!1137568 () Bool)

(assert (= bs!1137568 (and b!4744946 d!1516216)))

(assert (=> bs!1137568 (= (= lt!1907515 lt!1907946) (= lambda!220061 lambda!220052))))

(assert (=> bs!1137560 (= lambda!220061 lambda!220049)))

(assert (=> b!4744946 true))

(declare-fun bs!1137569 () Bool)

(declare-fun b!4744947 () Bool)

(assert (= bs!1137569 (and b!4744947 b!4744815)))

(declare-fun lambda!220062 () Int)

(assert (=> bs!1137569 (= lambda!220062 lambda!219996)))

(declare-fun bs!1137570 () Bool)

(assert (= bs!1137570 (and b!4744947 d!1516172)))

(assert (=> bs!1137570 (not (= lambda!220062 lambda!220030))))

(declare-fun bs!1137571 () Bool)

(assert (= bs!1137571 (and b!4744947 b!4744924)))

(assert (=> bs!1137571 (= (= lt!1907515 lt!1907949) (= lambda!220062 lambda!220050))))

(declare-fun bs!1137572 () Bool)

(assert (= bs!1137572 (and b!4744947 d!1516214)))

(assert (=> bs!1137572 (= (= lt!1907515 lt!1907922) (= lambda!220062 lambda!220047))))

(declare-fun bs!1137573 () Bool)

(assert (= bs!1137573 (and b!4744947 b!4744816)))

(assert (=> bs!1137573 (= (= lt!1907515 lt!1907733) (= lambda!220062 lambda!220000))))

(declare-fun bs!1137574 () Bool)

(assert (= bs!1137574 (and b!4744947 d!1516114)))

(assert (=> bs!1137574 (= (= lt!1907515 lt!1907730) (= lambda!220062 lambda!220005))))

(declare-fun bs!1137575 () Bool)

(assert (= bs!1137575 (and b!4744947 b!4744946)))

(assert (=> bs!1137575 (= lambda!220062 lambda!220061)))

(declare-fun bs!1137576 () Bool)

(assert (= bs!1137576 (and b!4744947 b!4744923)))

(assert (=> bs!1137576 (= lambda!220062 lambda!220048)))

(declare-fun bs!1137577 () Bool)

(assert (= bs!1137577 (and b!4744947 b!4744918)))

(assert (=> bs!1137577 (= lambda!220062 lambda!220044)))

(declare-fun bs!1137578 () Bool)

(assert (= bs!1137578 (and b!4744947 b!4744919)))

(assert (=> bs!1137578 (= lambda!220062 lambda!220045)))

(assert (=> bs!1137578 (= (= lt!1907515 lt!1907925) (= lambda!220062 lambda!220046))))

(assert (=> bs!1137573 (= lambda!220062 lambda!219999)))

(declare-fun bs!1137579 () Bool)

(assert (= bs!1137579 (and b!4744947 d!1516126)))

(assert (=> bs!1137579 (not (= lambda!220062 lambda!220019))))

(declare-fun bs!1137580 () Bool)

(assert (= bs!1137580 (and b!4744947 d!1516216)))

(assert (=> bs!1137580 (= (= lt!1907515 lt!1907946) (= lambda!220062 lambda!220052))))

(assert (=> bs!1137571 (= lambda!220062 lambda!220049)))

(assert (=> b!4744947 true))

(declare-fun lt!1907989 () ListMap!5389)

(declare-fun lambda!220063 () Int)

(assert (=> bs!1137569 (= (= lt!1907989 lt!1907515) (= lambda!220063 lambda!219996))))

(assert (=> bs!1137570 (not (= lambda!220063 lambda!220030))))

(assert (=> bs!1137571 (= (= lt!1907989 lt!1907949) (= lambda!220063 lambda!220050))))

(assert (=> bs!1137572 (= (= lt!1907989 lt!1907922) (= lambda!220063 lambda!220047))))

(assert (=> bs!1137573 (= (= lt!1907989 lt!1907733) (= lambda!220063 lambda!220000))))

(assert (=> bs!1137574 (= (= lt!1907989 lt!1907730) (= lambda!220063 lambda!220005))))

(assert (=> bs!1137575 (= (= lt!1907989 lt!1907515) (= lambda!220063 lambda!220061))))

(assert (=> b!4744947 (= (= lt!1907989 lt!1907515) (= lambda!220063 lambda!220062))))

(assert (=> bs!1137576 (= (= lt!1907989 lt!1907515) (= lambda!220063 lambda!220048))))

(assert (=> bs!1137577 (= (= lt!1907989 lt!1907515) (= lambda!220063 lambda!220044))))

(assert (=> bs!1137578 (= (= lt!1907989 lt!1907515) (= lambda!220063 lambda!220045))))

(assert (=> bs!1137578 (= (= lt!1907989 lt!1907925) (= lambda!220063 lambda!220046))))

(assert (=> bs!1137573 (= (= lt!1907989 lt!1907515) (= lambda!220063 lambda!219999))))

(assert (=> bs!1137579 (not (= lambda!220063 lambda!220019))))

(assert (=> bs!1137580 (= (= lt!1907989 lt!1907946) (= lambda!220063 lambda!220052))))

(assert (=> bs!1137571 (= (= lt!1907989 lt!1907515) (= lambda!220063 lambda!220049))))

(assert (=> b!4744947 true))

(declare-fun bs!1137581 () Bool)

(declare-fun d!1516254 () Bool)

(assert (= bs!1137581 (and d!1516254 b!4744815)))

(declare-fun lambda!220064 () Int)

(declare-fun lt!1907986 () ListMap!5389)

(assert (=> bs!1137581 (= (= lt!1907986 lt!1907515) (= lambda!220064 lambda!219996))))

(declare-fun bs!1137582 () Bool)

(assert (= bs!1137582 (and d!1516254 d!1516172)))

(assert (=> bs!1137582 (not (= lambda!220064 lambda!220030))))

(declare-fun bs!1137583 () Bool)

(assert (= bs!1137583 (and d!1516254 b!4744924)))

(assert (=> bs!1137583 (= (= lt!1907986 lt!1907949) (= lambda!220064 lambda!220050))))

(declare-fun bs!1137584 () Bool)

(assert (= bs!1137584 (and d!1516254 d!1516214)))

(assert (=> bs!1137584 (= (= lt!1907986 lt!1907922) (= lambda!220064 lambda!220047))))

(declare-fun bs!1137585 () Bool)

(assert (= bs!1137585 (and d!1516254 b!4744816)))

(assert (=> bs!1137585 (= (= lt!1907986 lt!1907733) (= lambda!220064 lambda!220000))))

(declare-fun bs!1137586 () Bool)

(assert (= bs!1137586 (and d!1516254 d!1516114)))

(assert (=> bs!1137586 (= (= lt!1907986 lt!1907730) (= lambda!220064 lambda!220005))))

(declare-fun bs!1137587 () Bool)

(assert (= bs!1137587 (and d!1516254 b!4744947)))

(assert (=> bs!1137587 (= (= lt!1907986 lt!1907989) (= lambda!220064 lambda!220063))))

(declare-fun bs!1137588 () Bool)

(assert (= bs!1137588 (and d!1516254 b!4744946)))

(assert (=> bs!1137588 (= (= lt!1907986 lt!1907515) (= lambda!220064 lambda!220061))))

(assert (=> bs!1137587 (= (= lt!1907986 lt!1907515) (= lambda!220064 lambda!220062))))

(declare-fun bs!1137589 () Bool)

(assert (= bs!1137589 (and d!1516254 b!4744923)))

(assert (=> bs!1137589 (= (= lt!1907986 lt!1907515) (= lambda!220064 lambda!220048))))

(declare-fun bs!1137590 () Bool)

(assert (= bs!1137590 (and d!1516254 b!4744918)))

(assert (=> bs!1137590 (= (= lt!1907986 lt!1907515) (= lambda!220064 lambda!220044))))

(declare-fun bs!1137591 () Bool)

(assert (= bs!1137591 (and d!1516254 b!4744919)))

(assert (=> bs!1137591 (= (= lt!1907986 lt!1907515) (= lambda!220064 lambda!220045))))

(assert (=> bs!1137591 (= (= lt!1907986 lt!1907925) (= lambda!220064 lambda!220046))))

(assert (=> bs!1137585 (= (= lt!1907986 lt!1907515) (= lambda!220064 lambda!219999))))

(declare-fun bs!1137592 () Bool)

(assert (= bs!1137592 (and d!1516254 d!1516126)))

(assert (=> bs!1137592 (not (= lambda!220064 lambda!220019))))

(declare-fun bs!1137593 () Bool)

(assert (= bs!1137593 (and d!1516254 d!1516216)))

(assert (=> bs!1137593 (= (= lt!1907986 lt!1907946) (= lambda!220064 lambda!220052))))

(assert (=> bs!1137583 (= (= lt!1907986 lt!1907515) (= lambda!220064 lambda!220049))))

(assert (=> d!1516254 true))

(declare-fun e!2959704 () Bool)

(assert (=> d!1516254 e!2959704))

(declare-fun res!2010896 () Bool)

(assert (=> d!1516254 (=> (not res!2010896) (not e!2959704))))

(assert (=> d!1516254 (= res!2010896 (forall!11703 (Cons!52979 lt!1907513 lt!1907526) lambda!220064))))

(declare-fun e!2959706 () ListMap!5389)

(assert (=> d!1516254 (= lt!1907986 e!2959706)))

(declare-fun c!810492 () Bool)

(assert (=> d!1516254 (= c!810492 ((_ is Nil!52979) (Cons!52979 lt!1907513 lt!1907526)))))

(assert (=> d!1516254 (noDuplicateKeys!2068 (Cons!52979 lt!1907513 lt!1907526))))

(assert (=> d!1516254 (= (addToMapMapFromBucket!1498 (Cons!52979 lt!1907513 lt!1907526) lt!1907515) lt!1907986)))

(declare-fun b!4744944 () Bool)

(declare-fun e!2959705 () Bool)

(assert (=> b!4744944 (= e!2959705 (forall!11703 (toList!6025 lt!1907515) lambda!220063))))

(declare-fun b!4744945 () Bool)

(assert (=> b!4744945 (= e!2959704 (invariantList!1553 (toList!6025 lt!1907986)))))

(declare-fun call!332090 () Bool)

(declare-fun bm!332084 () Bool)

(assert (=> bm!332084 (= call!332090 (forall!11703 (ite c!810492 (toList!6025 lt!1907515) (t!360409 (Cons!52979 lt!1907513 lt!1907526))) (ite c!810492 lambda!220061 lambda!220063)))))

(assert (=> b!4744946 (= e!2959706 lt!1907515)))

(declare-fun lt!1907998 () Unit!134101)

(declare-fun call!332091 () Unit!134101)

(assert (=> b!4744946 (= lt!1907998 call!332091)))

(assert (=> b!4744946 call!332090))

(declare-fun lt!1907994 () Unit!134101)

(assert (=> b!4744946 (= lt!1907994 lt!1907998)))

(declare-fun call!332089 () Bool)

(assert (=> b!4744946 call!332089))

(declare-fun lt!1908001 () Unit!134101)

(declare-fun Unit!134185 () Unit!134101)

(assert (=> b!4744946 (= lt!1908001 Unit!134185)))

(declare-fun bm!332085 () Bool)

(assert (=> bm!332085 (= call!332091 (lemmaContainsAllItsOwnKeys!837 lt!1907515))))

(declare-fun bm!332086 () Bool)

(assert (=> bm!332086 (= call!332089 (forall!11703 (toList!6025 lt!1907515) (ite c!810492 lambda!220061 lambda!220063)))))

(assert (=> b!4744947 (= e!2959706 lt!1907989)))

(declare-fun lt!1907999 () ListMap!5389)

(assert (=> b!4744947 (= lt!1907999 (+!2316 lt!1907515 (h!59368 (Cons!52979 lt!1907513 lt!1907526))))))

(assert (=> b!4744947 (= lt!1907989 (addToMapMapFromBucket!1498 (t!360409 (Cons!52979 lt!1907513 lt!1907526)) (+!2316 lt!1907515 (h!59368 (Cons!52979 lt!1907513 lt!1907526)))))))

(declare-fun lt!1907993 () Unit!134101)

(assert (=> b!4744947 (= lt!1907993 call!332091)))

(assert (=> b!4744947 (forall!11703 (toList!6025 lt!1907515) lambda!220062)))

(declare-fun lt!1907987 () Unit!134101)

(assert (=> b!4744947 (= lt!1907987 lt!1907993)))

(assert (=> b!4744947 (forall!11703 (toList!6025 lt!1907999) lambda!220063)))

(declare-fun lt!1907983 () Unit!134101)

(declare-fun Unit!134186 () Unit!134101)

(assert (=> b!4744947 (= lt!1907983 Unit!134186)))

(assert (=> b!4744947 call!332090))

(declare-fun lt!1907988 () Unit!134101)

(declare-fun Unit!134187 () Unit!134101)

(assert (=> b!4744947 (= lt!1907988 Unit!134187)))

(declare-fun lt!1907985 () Unit!134101)

(declare-fun Unit!134188 () Unit!134101)

(assert (=> b!4744947 (= lt!1907985 Unit!134188)))

(declare-fun lt!1907984 () Unit!134101)

(assert (=> b!4744947 (= lt!1907984 (forallContained!3742 (toList!6025 lt!1907999) lambda!220063 (h!59368 (Cons!52979 lt!1907513 lt!1907526))))))

(assert (=> b!4744947 (contains!16406 lt!1907999 (_1!30627 (h!59368 (Cons!52979 lt!1907513 lt!1907526))))))

(declare-fun lt!1907997 () Unit!134101)

(declare-fun Unit!134189 () Unit!134101)

(assert (=> b!4744947 (= lt!1907997 Unit!134189)))

(assert (=> b!4744947 (contains!16406 lt!1907989 (_1!30627 (h!59368 (Cons!52979 lt!1907513 lt!1907526))))))

(declare-fun lt!1908003 () Unit!134101)

(declare-fun Unit!134190 () Unit!134101)

(assert (=> b!4744947 (= lt!1908003 Unit!134190)))

(assert (=> b!4744947 (forall!11703 (Cons!52979 lt!1907513 lt!1907526) lambda!220063)))

(declare-fun lt!1907990 () Unit!134101)

(declare-fun Unit!134191 () Unit!134101)

(assert (=> b!4744947 (= lt!1907990 Unit!134191)))

(assert (=> b!4744947 (forall!11703 (toList!6025 lt!1907999) lambda!220063)))

(declare-fun lt!1908000 () Unit!134101)

(declare-fun Unit!134192 () Unit!134101)

(assert (=> b!4744947 (= lt!1908000 Unit!134192)))

(declare-fun lt!1907995 () Unit!134101)

(declare-fun Unit!134193 () Unit!134101)

(assert (=> b!4744947 (= lt!1907995 Unit!134193)))

(declare-fun lt!1907996 () Unit!134101)

(assert (=> b!4744947 (= lt!1907996 (addForallContainsKeyThenBeforeAdding!836 lt!1907515 lt!1907989 (_1!30627 (h!59368 (Cons!52979 lt!1907513 lt!1907526))) (_2!30627 (h!59368 (Cons!52979 lt!1907513 lt!1907526)))))))

(assert (=> b!4744947 (forall!11703 (toList!6025 lt!1907515) lambda!220063)))

(declare-fun lt!1908002 () Unit!134101)

(assert (=> b!4744947 (= lt!1908002 lt!1907996)))

(assert (=> b!4744947 call!332089))

(declare-fun lt!1907992 () Unit!134101)

(declare-fun Unit!134194 () Unit!134101)

(assert (=> b!4744947 (= lt!1907992 Unit!134194)))

(declare-fun res!2010895 () Bool)

(assert (=> b!4744947 (= res!2010895 (forall!11703 (Cons!52979 lt!1907513 lt!1907526) lambda!220063))))

(assert (=> b!4744947 (=> (not res!2010895) (not e!2959705))))

(assert (=> b!4744947 e!2959705))

(declare-fun lt!1907991 () Unit!134101)

(declare-fun Unit!134195 () Unit!134101)

(assert (=> b!4744947 (= lt!1907991 Unit!134195)))

(declare-fun b!4744948 () Bool)

(declare-fun res!2010897 () Bool)

(assert (=> b!4744948 (=> (not res!2010897) (not e!2959704))))

(assert (=> b!4744948 (= res!2010897 (forall!11703 (toList!6025 lt!1907515) lambda!220064))))

(assert (= (and d!1516254 c!810492) b!4744946))

(assert (= (and d!1516254 (not c!810492)) b!4744947))

(assert (= (and b!4744947 res!2010895) b!4744944))

(assert (= (or b!4744946 b!4744947) bm!332085))

(assert (= (or b!4744946 b!4744947) bm!332086))

(assert (= (or b!4744946 b!4744947) bm!332084))

(assert (= (and d!1516254 res!2010896) b!4744948))

(assert (= (and b!4744948 res!2010897) b!4744945))

(declare-fun m!5701599 () Bool)

(assert (=> b!4744947 m!5701599))

(declare-fun m!5701601 () Bool)

(assert (=> b!4744947 m!5701601))

(declare-fun m!5701603 () Bool)

(assert (=> b!4744947 m!5701603))

(declare-fun m!5701605 () Bool)

(assert (=> b!4744947 m!5701605))

(declare-fun m!5701607 () Bool)

(assert (=> b!4744947 m!5701607))

(declare-fun m!5701609 () Bool)

(assert (=> b!4744947 m!5701609))

(declare-fun m!5701611 () Bool)

(assert (=> b!4744947 m!5701611))

(declare-fun m!5701613 () Bool)

(assert (=> b!4744947 m!5701613))

(assert (=> b!4744947 m!5701607))

(declare-fun m!5701615 () Bool)

(assert (=> b!4744947 m!5701615))

(declare-fun m!5701617 () Bool)

(assert (=> b!4744947 m!5701617))

(assert (=> b!4744947 m!5701599))

(assert (=> b!4744947 m!5701611))

(declare-fun m!5701619 () Bool)

(assert (=> d!1516254 m!5701619))

(declare-fun m!5701621 () Bool)

(assert (=> d!1516254 m!5701621))

(declare-fun m!5701623 () Bool)

(assert (=> b!4744945 m!5701623))

(declare-fun m!5701625 () Bool)

(assert (=> b!4744948 m!5701625))

(assert (=> bm!332085 m!5701055))

(assert (=> b!4744944 m!5701613))

(declare-fun m!5701627 () Bool)

(assert (=> bm!332086 m!5701627))

(declare-fun m!5701629 () Bool)

(assert (=> bm!332084 m!5701629))

(assert (=> b!4744627 d!1516254))

(declare-fun bs!1137596 () Bool)

(declare-fun b!4744951 () Bool)

(assert (= bs!1137596 (and b!4744951 b!4744815)))

(declare-fun lambda!220068 () Int)

(assert (=> bs!1137596 (= lambda!220068 lambda!219996)))

(declare-fun bs!1137598 () Bool)

(assert (= bs!1137598 (and b!4744951 d!1516172)))

(assert (=> bs!1137598 (not (= lambda!220068 lambda!220030))))

(declare-fun bs!1137599 () Bool)

(assert (= bs!1137599 (and b!4744951 b!4744924)))

(assert (=> bs!1137599 (= (= lt!1907515 lt!1907949) (= lambda!220068 lambda!220050))))

(declare-fun bs!1137601 () Bool)

(assert (= bs!1137601 (and b!4744951 d!1516214)))

(assert (=> bs!1137601 (= (= lt!1907515 lt!1907922) (= lambda!220068 lambda!220047))))

(declare-fun bs!1137603 () Bool)

(assert (= bs!1137603 (and b!4744951 b!4744816)))

(assert (=> bs!1137603 (= (= lt!1907515 lt!1907733) (= lambda!220068 lambda!220000))))

(declare-fun bs!1137604 () Bool)

(assert (= bs!1137604 (and b!4744951 b!4744947)))

(assert (=> bs!1137604 (= (= lt!1907515 lt!1907989) (= lambda!220068 lambda!220063))))

(declare-fun bs!1137606 () Bool)

(assert (= bs!1137606 (and b!4744951 b!4744946)))

(assert (=> bs!1137606 (= lambda!220068 lambda!220061)))

(assert (=> bs!1137604 (= lambda!220068 lambda!220062)))

(declare-fun bs!1137608 () Bool)

(assert (= bs!1137608 (and b!4744951 b!4744923)))

(assert (=> bs!1137608 (= lambda!220068 lambda!220048)))

(declare-fun bs!1137610 () Bool)

(assert (= bs!1137610 (and b!4744951 b!4744918)))

(assert (=> bs!1137610 (= lambda!220068 lambda!220044)))

(declare-fun bs!1137612 () Bool)

(assert (= bs!1137612 (and b!4744951 b!4744919)))

(assert (=> bs!1137612 (= lambda!220068 lambda!220045)))

(assert (=> bs!1137612 (= (= lt!1907515 lt!1907925) (= lambda!220068 lambda!220046))))

(assert (=> bs!1137603 (= lambda!220068 lambda!219999)))

(declare-fun bs!1137615 () Bool)

(assert (= bs!1137615 (and b!4744951 d!1516126)))

(assert (=> bs!1137615 (not (= lambda!220068 lambda!220019))))

(declare-fun bs!1137617 () Bool)

(assert (= bs!1137617 (and b!4744951 d!1516114)))

(assert (=> bs!1137617 (= (= lt!1907515 lt!1907730) (= lambda!220068 lambda!220005))))

(declare-fun bs!1137618 () Bool)

(assert (= bs!1137618 (and b!4744951 d!1516254)))

(assert (=> bs!1137618 (= (= lt!1907515 lt!1907986) (= lambda!220068 lambda!220064))))

(declare-fun bs!1137620 () Bool)

(assert (= bs!1137620 (and b!4744951 d!1516216)))

(assert (=> bs!1137620 (= (= lt!1907515 lt!1907946) (= lambda!220068 lambda!220052))))

(assert (=> bs!1137599 (= lambda!220068 lambda!220049)))

(assert (=> b!4744951 true))

(declare-fun bs!1137621 () Bool)

(declare-fun b!4744952 () Bool)

(assert (= bs!1137621 (and b!4744952 b!4744815)))

(declare-fun lambda!220069 () Int)

(assert (=> bs!1137621 (= lambda!220069 lambda!219996)))

(declare-fun bs!1137622 () Bool)

(assert (= bs!1137622 (and b!4744952 d!1516172)))

(assert (=> bs!1137622 (not (= lambda!220069 lambda!220030))))

(declare-fun bs!1137623 () Bool)

(assert (= bs!1137623 (and b!4744952 d!1516214)))

(assert (=> bs!1137623 (= (= lt!1907515 lt!1907922) (= lambda!220069 lambda!220047))))

(declare-fun bs!1137624 () Bool)

(assert (= bs!1137624 (and b!4744952 b!4744816)))

(assert (=> bs!1137624 (= (= lt!1907515 lt!1907733) (= lambda!220069 lambda!220000))))

(declare-fun bs!1137625 () Bool)

(assert (= bs!1137625 (and b!4744952 b!4744947)))

(assert (=> bs!1137625 (= (= lt!1907515 lt!1907989) (= lambda!220069 lambda!220063))))

(declare-fun bs!1137627 () Bool)

(assert (= bs!1137627 (and b!4744952 b!4744946)))

(assert (=> bs!1137627 (= lambda!220069 lambda!220061)))

(assert (=> bs!1137625 (= lambda!220069 lambda!220062)))

(declare-fun bs!1137628 () Bool)

(assert (= bs!1137628 (and b!4744952 b!4744923)))

(assert (=> bs!1137628 (= lambda!220069 lambda!220048)))

(declare-fun bs!1137629 () Bool)

(assert (= bs!1137629 (and b!4744952 b!4744918)))

(assert (=> bs!1137629 (= lambda!220069 lambda!220044)))

(declare-fun bs!1137630 () Bool)

(assert (= bs!1137630 (and b!4744952 b!4744919)))

(assert (=> bs!1137630 (= lambda!220069 lambda!220045)))

(assert (=> bs!1137630 (= (= lt!1907515 lt!1907925) (= lambda!220069 lambda!220046))))

(assert (=> bs!1137624 (= lambda!220069 lambda!219999)))

(declare-fun bs!1137631 () Bool)

(assert (= bs!1137631 (and b!4744952 d!1516126)))

(assert (=> bs!1137631 (not (= lambda!220069 lambda!220019))))

(declare-fun bs!1137632 () Bool)

(assert (= bs!1137632 (and b!4744952 b!4744951)))

(assert (=> bs!1137632 (= lambda!220069 lambda!220068)))

(declare-fun bs!1137633 () Bool)

(assert (= bs!1137633 (and b!4744952 b!4744924)))

(assert (=> bs!1137633 (= (= lt!1907515 lt!1907949) (= lambda!220069 lambda!220050))))

(declare-fun bs!1137634 () Bool)

(assert (= bs!1137634 (and b!4744952 d!1516114)))

(assert (=> bs!1137634 (= (= lt!1907515 lt!1907730) (= lambda!220069 lambda!220005))))

(declare-fun bs!1137635 () Bool)

(assert (= bs!1137635 (and b!4744952 d!1516254)))

(assert (=> bs!1137635 (= (= lt!1907515 lt!1907986) (= lambda!220069 lambda!220064))))

(declare-fun bs!1137636 () Bool)

(assert (= bs!1137636 (and b!4744952 d!1516216)))

(assert (=> bs!1137636 (= (= lt!1907515 lt!1907946) (= lambda!220069 lambda!220052))))

(assert (=> bs!1137633 (= lambda!220069 lambda!220049)))

(assert (=> b!4744952 true))

(declare-fun lambda!220070 () Int)

(declare-fun lt!1908013 () ListMap!5389)

(assert (=> bs!1137621 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!219996))))

(assert (=> bs!1137622 (not (= lambda!220070 lambda!220030))))

(assert (=> bs!1137623 (= (= lt!1908013 lt!1907922) (= lambda!220070 lambda!220047))))

(assert (=> bs!1137624 (= (= lt!1908013 lt!1907733) (= lambda!220070 lambda!220000))))

(assert (=> bs!1137625 (= (= lt!1908013 lt!1907989) (= lambda!220070 lambda!220063))))

(assert (=> bs!1137627 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!220061))))

(assert (=> bs!1137625 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!220062))))

(assert (=> bs!1137628 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!220048))))

(assert (=> bs!1137629 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!220044))))

(assert (=> b!4744952 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!220069))))

(assert (=> bs!1137630 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!220045))))

(assert (=> bs!1137630 (= (= lt!1908013 lt!1907925) (= lambda!220070 lambda!220046))))

(assert (=> bs!1137624 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!219999))))

(assert (=> bs!1137631 (not (= lambda!220070 lambda!220019))))

(assert (=> bs!1137632 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!220068))))

(assert (=> bs!1137633 (= (= lt!1908013 lt!1907949) (= lambda!220070 lambda!220050))))

(assert (=> bs!1137634 (= (= lt!1908013 lt!1907730) (= lambda!220070 lambda!220005))))

(assert (=> bs!1137635 (= (= lt!1908013 lt!1907986) (= lambda!220070 lambda!220064))))

(assert (=> bs!1137636 (= (= lt!1908013 lt!1907946) (= lambda!220070 lambda!220052))))

(assert (=> bs!1137633 (= (= lt!1908013 lt!1907515) (= lambda!220070 lambda!220049))))

(assert (=> b!4744952 true))

(declare-fun bs!1137638 () Bool)

(declare-fun d!1516256 () Bool)

(assert (= bs!1137638 (and d!1516256 b!4744952)))

(declare-fun lt!1908010 () ListMap!5389)

(declare-fun lambda!220072 () Int)

(assert (=> bs!1137638 (= (= lt!1908010 lt!1908013) (= lambda!220072 lambda!220070))))

(declare-fun bs!1137639 () Bool)

(assert (= bs!1137639 (and d!1516256 b!4744815)))

(assert (=> bs!1137639 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!219996))))

(declare-fun bs!1137641 () Bool)

(assert (= bs!1137641 (and d!1516256 d!1516172)))

(assert (=> bs!1137641 (not (= lambda!220072 lambda!220030))))

(declare-fun bs!1137643 () Bool)

(assert (= bs!1137643 (and d!1516256 d!1516214)))

(assert (=> bs!1137643 (= (= lt!1908010 lt!1907922) (= lambda!220072 lambda!220047))))

(declare-fun bs!1137644 () Bool)

(assert (= bs!1137644 (and d!1516256 b!4744816)))

(assert (=> bs!1137644 (= (= lt!1908010 lt!1907733) (= lambda!220072 lambda!220000))))

(declare-fun bs!1137645 () Bool)

(assert (= bs!1137645 (and d!1516256 b!4744947)))

(assert (=> bs!1137645 (= (= lt!1908010 lt!1907989) (= lambda!220072 lambda!220063))))

(declare-fun bs!1137647 () Bool)

(assert (= bs!1137647 (and d!1516256 b!4744946)))

(assert (=> bs!1137647 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!220061))))

(assert (=> bs!1137645 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!220062))))

(declare-fun bs!1137650 () Bool)

(assert (= bs!1137650 (and d!1516256 b!4744923)))

(assert (=> bs!1137650 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!220048))))

(declare-fun bs!1137652 () Bool)

(assert (= bs!1137652 (and d!1516256 b!4744918)))

(assert (=> bs!1137652 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!220044))))

(assert (=> bs!1137638 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!220069))))

(declare-fun bs!1137654 () Bool)

(assert (= bs!1137654 (and d!1516256 b!4744919)))

(assert (=> bs!1137654 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!220045))))

(assert (=> bs!1137654 (= (= lt!1908010 lt!1907925) (= lambda!220072 lambda!220046))))

(assert (=> bs!1137644 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!219999))))

(declare-fun bs!1137658 () Bool)

(assert (= bs!1137658 (and d!1516256 d!1516126)))

(assert (=> bs!1137658 (not (= lambda!220072 lambda!220019))))

(declare-fun bs!1137659 () Bool)

(assert (= bs!1137659 (and d!1516256 b!4744951)))

(assert (=> bs!1137659 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!220068))))

(declare-fun bs!1137661 () Bool)

(assert (= bs!1137661 (and d!1516256 b!4744924)))

(assert (=> bs!1137661 (= (= lt!1908010 lt!1907949) (= lambda!220072 lambda!220050))))

(declare-fun bs!1137663 () Bool)

(assert (= bs!1137663 (and d!1516256 d!1516114)))

(assert (=> bs!1137663 (= (= lt!1908010 lt!1907730) (= lambda!220072 lambda!220005))))

(declare-fun bs!1137665 () Bool)

(assert (= bs!1137665 (and d!1516256 d!1516254)))

(assert (=> bs!1137665 (= (= lt!1908010 lt!1907986) (= lambda!220072 lambda!220064))))

(declare-fun bs!1137666 () Bool)

(assert (= bs!1137666 (and d!1516256 d!1516216)))

(assert (=> bs!1137666 (= (= lt!1908010 lt!1907946) (= lambda!220072 lambda!220052))))

(assert (=> bs!1137661 (= (= lt!1908010 lt!1907515) (= lambda!220072 lambda!220049))))

(assert (=> d!1516256 true))

(declare-fun e!2959707 () Bool)

(assert (=> d!1516256 e!2959707))

(declare-fun res!2010899 () Bool)

(assert (=> d!1516256 (=> (not res!2010899) (not e!2959707))))

(assert (=> d!1516256 (= res!2010899 (forall!11703 lt!1907526 lambda!220072))))

(declare-fun e!2959709 () ListMap!5389)

(assert (=> d!1516256 (= lt!1908010 e!2959709)))

(declare-fun c!810493 () Bool)

(assert (=> d!1516256 (= c!810493 ((_ is Nil!52979) lt!1907526))))

(assert (=> d!1516256 (noDuplicateKeys!2068 lt!1907526)))

(assert (=> d!1516256 (= (addToMapMapFromBucket!1498 lt!1907526 lt!1907515) lt!1908010)))

(declare-fun b!4744949 () Bool)

(declare-fun e!2959708 () Bool)

(assert (=> b!4744949 (= e!2959708 (forall!11703 (toList!6025 lt!1907515) lambda!220070))))

(declare-fun b!4744950 () Bool)

(assert (=> b!4744950 (= e!2959707 (invariantList!1553 (toList!6025 lt!1908010)))))

(declare-fun bm!332087 () Bool)

(declare-fun call!332093 () Bool)

(assert (=> bm!332087 (= call!332093 (forall!11703 (ite c!810493 (toList!6025 lt!1907515) (t!360409 lt!1907526)) (ite c!810493 lambda!220068 lambda!220070)))))

(assert (=> b!4744951 (= e!2959709 lt!1907515)))

(declare-fun lt!1908022 () Unit!134101)

(declare-fun call!332094 () Unit!134101)

(assert (=> b!4744951 (= lt!1908022 call!332094)))

(assert (=> b!4744951 call!332093))

(declare-fun lt!1908018 () Unit!134101)

(assert (=> b!4744951 (= lt!1908018 lt!1908022)))

(declare-fun call!332092 () Bool)

(assert (=> b!4744951 call!332092))

(declare-fun lt!1908025 () Unit!134101)

(declare-fun Unit!134196 () Unit!134101)

(assert (=> b!4744951 (= lt!1908025 Unit!134196)))

(declare-fun bm!332088 () Bool)

(assert (=> bm!332088 (= call!332094 (lemmaContainsAllItsOwnKeys!837 lt!1907515))))

(declare-fun bm!332089 () Bool)

(assert (=> bm!332089 (= call!332092 (forall!11703 (toList!6025 lt!1907515) (ite c!810493 lambda!220068 lambda!220070)))))

(assert (=> b!4744952 (= e!2959709 lt!1908013)))

(declare-fun lt!1908023 () ListMap!5389)

(assert (=> b!4744952 (= lt!1908023 (+!2316 lt!1907515 (h!59368 lt!1907526)))))

(assert (=> b!4744952 (= lt!1908013 (addToMapMapFromBucket!1498 (t!360409 lt!1907526) (+!2316 lt!1907515 (h!59368 lt!1907526))))))

(declare-fun lt!1908017 () Unit!134101)

(assert (=> b!4744952 (= lt!1908017 call!332094)))

(assert (=> b!4744952 (forall!11703 (toList!6025 lt!1907515) lambda!220069)))

(declare-fun lt!1908011 () Unit!134101)

(assert (=> b!4744952 (= lt!1908011 lt!1908017)))

(assert (=> b!4744952 (forall!11703 (toList!6025 lt!1908023) lambda!220070)))

(declare-fun lt!1908007 () Unit!134101)

(declare-fun Unit!134197 () Unit!134101)

(assert (=> b!4744952 (= lt!1908007 Unit!134197)))

(assert (=> b!4744952 call!332093))

(declare-fun lt!1908012 () Unit!134101)

(declare-fun Unit!134198 () Unit!134101)

(assert (=> b!4744952 (= lt!1908012 Unit!134198)))

(declare-fun lt!1908009 () Unit!134101)

(declare-fun Unit!134199 () Unit!134101)

(assert (=> b!4744952 (= lt!1908009 Unit!134199)))

(declare-fun lt!1908008 () Unit!134101)

(assert (=> b!4744952 (= lt!1908008 (forallContained!3742 (toList!6025 lt!1908023) lambda!220070 (h!59368 lt!1907526)))))

(assert (=> b!4744952 (contains!16406 lt!1908023 (_1!30627 (h!59368 lt!1907526)))))

(declare-fun lt!1908021 () Unit!134101)

(declare-fun Unit!134200 () Unit!134101)

(assert (=> b!4744952 (= lt!1908021 Unit!134200)))

(assert (=> b!4744952 (contains!16406 lt!1908013 (_1!30627 (h!59368 lt!1907526)))))

(declare-fun lt!1908027 () Unit!134101)

(declare-fun Unit!134201 () Unit!134101)

(assert (=> b!4744952 (= lt!1908027 Unit!134201)))

(assert (=> b!4744952 (forall!11703 lt!1907526 lambda!220070)))

(declare-fun lt!1908014 () Unit!134101)

(declare-fun Unit!134202 () Unit!134101)

(assert (=> b!4744952 (= lt!1908014 Unit!134202)))

(assert (=> b!4744952 (forall!11703 (toList!6025 lt!1908023) lambda!220070)))

(declare-fun lt!1908024 () Unit!134101)

(declare-fun Unit!134203 () Unit!134101)

(assert (=> b!4744952 (= lt!1908024 Unit!134203)))

(declare-fun lt!1908019 () Unit!134101)

(declare-fun Unit!134204 () Unit!134101)

(assert (=> b!4744952 (= lt!1908019 Unit!134204)))

(declare-fun lt!1908020 () Unit!134101)

(assert (=> b!4744952 (= lt!1908020 (addForallContainsKeyThenBeforeAdding!836 lt!1907515 lt!1908013 (_1!30627 (h!59368 lt!1907526)) (_2!30627 (h!59368 lt!1907526))))))

(assert (=> b!4744952 (forall!11703 (toList!6025 lt!1907515) lambda!220070)))

(declare-fun lt!1908026 () Unit!134101)

(assert (=> b!4744952 (= lt!1908026 lt!1908020)))

(assert (=> b!4744952 call!332092))

(declare-fun lt!1908016 () Unit!134101)

(declare-fun Unit!134205 () Unit!134101)

(assert (=> b!4744952 (= lt!1908016 Unit!134205)))

(declare-fun res!2010898 () Bool)

(assert (=> b!4744952 (= res!2010898 (forall!11703 lt!1907526 lambda!220070))))

(assert (=> b!4744952 (=> (not res!2010898) (not e!2959708))))

(assert (=> b!4744952 e!2959708))

(declare-fun lt!1908015 () Unit!134101)

(declare-fun Unit!134206 () Unit!134101)

(assert (=> b!4744952 (= lt!1908015 Unit!134206)))

(declare-fun b!4744953 () Bool)

(declare-fun res!2010900 () Bool)

(assert (=> b!4744953 (=> (not res!2010900) (not e!2959707))))

(assert (=> b!4744953 (= res!2010900 (forall!11703 (toList!6025 lt!1907515) lambda!220072))))

(assert (= (and d!1516256 c!810493) b!4744951))

(assert (= (and d!1516256 (not c!810493)) b!4744952))

(assert (= (and b!4744952 res!2010898) b!4744949))

(assert (= (or b!4744951 b!4744952) bm!332088))

(assert (= (or b!4744951 b!4744952) bm!332089))

(assert (= (or b!4744951 b!4744952) bm!332087))

(assert (= (and d!1516256 res!2010899) b!4744953))

(assert (= (and b!4744953 res!2010900) b!4744950))

(declare-fun m!5701685 () Bool)

(assert (=> b!4744952 m!5701685))

(declare-fun m!5701687 () Bool)

(assert (=> b!4744952 m!5701687))

(declare-fun m!5701689 () Bool)

(assert (=> b!4744952 m!5701689))

(declare-fun m!5701691 () Bool)

(assert (=> b!4744952 m!5701691))

(declare-fun m!5701693 () Bool)

(assert (=> b!4744952 m!5701693))

(declare-fun m!5701695 () Bool)

(assert (=> b!4744952 m!5701695))

(declare-fun m!5701697 () Bool)

(assert (=> b!4744952 m!5701697))

(declare-fun m!5701699 () Bool)

(assert (=> b!4744952 m!5701699))

(assert (=> b!4744952 m!5701693))

(declare-fun m!5701701 () Bool)

(assert (=> b!4744952 m!5701701))

(declare-fun m!5701703 () Bool)

(assert (=> b!4744952 m!5701703))

(assert (=> b!4744952 m!5701685))

(assert (=> b!4744952 m!5701697))

(declare-fun m!5701705 () Bool)

(assert (=> d!1516256 m!5701705))

(assert (=> d!1516256 m!5701081))

(declare-fun m!5701707 () Bool)

(assert (=> b!4744950 m!5701707))

(declare-fun m!5701709 () Bool)

(assert (=> b!4744953 m!5701709))

(assert (=> bm!332088 m!5701055))

(assert (=> b!4744949 m!5701699))

(declare-fun m!5701711 () Bool)

(assert (=> bm!332089 m!5701711))

(declare-fun m!5701713 () Bool)

(assert (=> bm!332087 m!5701713))

(assert (=> b!4744627 d!1516256))

(declare-fun bs!1137668 () Bool)

(declare-fun d!1516268 () Bool)

(assert (= bs!1137668 (and d!1516268 d!1516186)))

(declare-fun lambda!220073 () Int)

(assert (=> bs!1137668 (= lambda!220073 lambda!220039)))

(declare-fun bs!1137669 () Bool)

(assert (= bs!1137669 (and d!1516268 d!1516076)))

(assert (=> bs!1137669 (not (= lambda!220073 lambda!219948))))

(declare-fun bs!1137670 () Bool)

(assert (= bs!1137670 (and d!1516268 start!484320)))

(assert (=> bs!1137670 (= lambda!220073 lambda!219930)))

(declare-fun bs!1137671 () Bool)

(assert (= bs!1137671 (and d!1516268 d!1516246)))

(assert (=> bs!1137671 (= lambda!220073 lambda!220059)))

(declare-fun bs!1137672 () Bool)

(assert (= bs!1137672 (and d!1516268 d!1516182)))

(assert (=> bs!1137672 (= lambda!220073 lambda!220037)))

(declare-fun bs!1137673 () Bool)

(assert (= bs!1137673 (and d!1516268 d!1516188)))

(assert (=> bs!1137673 (= lambda!220073 lambda!220041)))

(declare-fun bs!1137674 () Bool)

(assert (= bs!1137674 (and d!1516268 d!1516068)))

(assert (=> bs!1137674 (= lambda!220073 lambda!219936)))

(declare-fun bs!1137675 () Bool)

(assert (= bs!1137675 (and d!1516268 d!1516240)))

(assert (=> bs!1137675 (= lambda!220073 lambda!220054)))

(declare-fun bs!1137676 () Bool)

(assert (= bs!1137676 (and d!1516268 d!1516252)))

(assert (=> bs!1137676 (= lambda!220073 lambda!220060)))

(declare-fun bs!1137677 () Bool)

(assert (= bs!1137677 (and d!1516268 d!1516122)))

(assert (=> bs!1137677 (= lambda!220073 lambda!220012)))

(declare-fun lt!1908038 () ListMap!5389)

(assert (=> d!1516268 (invariantList!1553 (toList!6025 lt!1908038))))

(declare-fun e!2959722 () ListMap!5389)

(assert (=> d!1516268 (= lt!1908038 e!2959722)))

(declare-fun c!810498 () Bool)

(assert (=> d!1516268 (= c!810498 ((_ is Cons!52980) (Cons!52980 (tuple2!54669 hash!405 lt!1907526) (t!360410 (toList!6026 lm!2023)))))))

(assert (=> d!1516268 (forall!11701 (Cons!52980 (tuple2!54669 hash!405 lt!1907526) (t!360410 (toList!6026 lm!2023))) lambda!220073)))

(assert (=> d!1516268 (= (extractMap!2094 (Cons!52980 (tuple2!54669 hash!405 lt!1907526) (t!360410 (toList!6026 lm!2023)))) lt!1908038)))

(declare-fun b!4744970 () Bool)

(assert (=> b!4744970 (= e!2959722 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (Cons!52980 (tuple2!54669 hash!405 lt!1907526) (t!360410 (toList!6026 lm!2023))))) (extractMap!2094 (t!360410 (Cons!52980 (tuple2!54669 hash!405 lt!1907526) (t!360410 (toList!6026 lm!2023)))))))))

(declare-fun b!4744971 () Bool)

(assert (=> b!4744971 (= e!2959722 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516268 c!810498) b!4744970))

(assert (= (and d!1516268 (not c!810498)) b!4744971))

(declare-fun m!5701715 () Bool)

(assert (=> d!1516268 m!5701715))

(declare-fun m!5701717 () Bool)

(assert (=> d!1516268 m!5701717))

(declare-fun m!5701721 () Bool)

(assert (=> b!4744970 m!5701721))

(assert (=> b!4744970 m!5701721))

(declare-fun m!5701725 () Bool)

(assert (=> b!4744970 m!5701725))

(assert (=> b!4744627 d!1516268))

(declare-fun d!1516272 () Bool)

(declare-fun e!2959725 () Bool)

(assert (=> d!1516272 e!2959725))

(declare-fun res!2010911 () Bool)

(assert (=> d!1516272 (=> (not res!2010911) (not e!2959725))))

(declare-fun lt!1908042 () ListMap!5389)

(assert (=> d!1516272 (= res!2010911 (contains!16406 lt!1908042 (_1!30627 lt!1907521)))))

(declare-fun lt!1908039 () List!53103)

(assert (=> d!1516272 (= lt!1908042 (ListMap!5390 lt!1908039))))

(declare-fun lt!1908040 () Unit!134101)

(declare-fun lt!1908041 () Unit!134101)

(assert (=> d!1516272 (= lt!1908040 lt!1908041)))

(assert (=> d!1516272 (= (getValueByKey!2035 lt!1908039 (_1!30627 lt!1907521)) (Some!12484 (_2!30627 lt!1907521)))))

(assert (=> d!1516272 (= lt!1908041 (lemmaContainsTupThenGetReturnValue!1119 lt!1908039 (_1!30627 lt!1907521) (_2!30627 lt!1907521)))))

(assert (=> d!1516272 (= lt!1908039 (insertNoDuplicatedKeys!627 (toList!6025 (addToMapMapFromBucket!1498 lt!1907525 lt!1907515)) (_1!30627 lt!1907521) (_2!30627 lt!1907521)))))

(assert (=> d!1516272 (= (+!2316 (addToMapMapFromBucket!1498 lt!1907525 lt!1907515) lt!1907521) lt!1908042)))

(declare-fun b!4744974 () Bool)

(declare-fun res!2010912 () Bool)

(assert (=> b!4744974 (=> (not res!2010912) (not e!2959725))))

(assert (=> b!4744974 (= res!2010912 (= (getValueByKey!2035 (toList!6025 lt!1908042) (_1!30627 lt!1907521)) (Some!12484 (_2!30627 lt!1907521))))))

(declare-fun b!4744975 () Bool)

(assert (=> b!4744975 (= e!2959725 (contains!16408 (toList!6025 lt!1908042) lt!1907521))))

(assert (= (and d!1516272 res!2010911) b!4744974))

(assert (= (and b!4744974 res!2010912) b!4744975))

(declare-fun m!5701727 () Bool)

(assert (=> d!1516272 m!5701727))

(declare-fun m!5701729 () Bool)

(assert (=> d!1516272 m!5701729))

(declare-fun m!5701731 () Bool)

(assert (=> d!1516272 m!5701731))

(declare-fun m!5701733 () Bool)

(assert (=> d!1516272 m!5701733))

(declare-fun m!5701735 () Bool)

(assert (=> b!4744974 m!5701735))

(declare-fun m!5701737 () Bool)

(assert (=> b!4744975 m!5701737))

(assert (=> b!4744627 d!1516272))

(declare-fun d!1516276 () Bool)

(assert (=> d!1516276 (eq!1165 (addToMapMapFromBucket!1498 (Cons!52979 lt!1907513 lt!1907526) lt!1907515) (+!2316 (addToMapMapFromBucket!1498 lt!1907526 lt!1907515) lt!1907513))))

(declare-fun lt!1908064 () Unit!134101)

(assert (=> d!1516276 (= lt!1908064 (choose!33725 lt!1907513 lt!1907526 lt!1907515))))

(assert (=> d!1516276 (noDuplicateKeys!2068 lt!1907526)))

(assert (=> d!1516276 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!414 lt!1907513 lt!1907526 lt!1907515) lt!1908064)))

(declare-fun bs!1137678 () Bool)

(assert (= bs!1137678 d!1516276))

(assert (=> bs!1137678 m!5700633))

(assert (=> bs!1137678 m!5700635))

(assert (=> bs!1137678 m!5700637))

(declare-fun m!5701739 () Bool)

(assert (=> bs!1137678 m!5701739))

(assert (=> bs!1137678 m!5700633))

(assert (=> bs!1137678 m!5701081))

(assert (=> bs!1137678 m!5700631))

(assert (=> bs!1137678 m!5700635))

(assert (=> bs!1137678 m!5700631))

(assert (=> b!4744627 d!1516276))

(declare-fun d!1516278 () Bool)

(assert (=> d!1516278 (= (head!10340 oldBucket!34) (h!59368 oldBucket!34))))

(assert (=> b!4744627 d!1516278))

(declare-fun d!1516280 () Bool)

(declare-fun e!2959729 () Bool)

(assert (=> d!1516280 e!2959729))

(declare-fun res!2010916 () Bool)

(assert (=> d!1516280 (=> (not res!2010916) (not e!2959729))))

(declare-fun lt!1908068 () ListMap!5389)

(assert (=> d!1516280 (= res!2010916 (contains!16406 lt!1908068 (_1!30627 (h!59368 oldBucket!34))))))

(declare-fun lt!1908065 () List!53103)

(assert (=> d!1516280 (= lt!1908068 (ListMap!5390 lt!1908065))))

(declare-fun lt!1908066 () Unit!134101)

(declare-fun lt!1908067 () Unit!134101)

(assert (=> d!1516280 (= lt!1908066 lt!1908067)))

(assert (=> d!1516280 (= (getValueByKey!2035 lt!1908065 (_1!30627 (h!59368 oldBucket!34))) (Some!12484 (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516280 (= lt!1908067 (lemmaContainsTupThenGetReturnValue!1119 lt!1908065 (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516280 (= lt!1908065 (insertNoDuplicatedKeys!627 (toList!6025 lt!1907527) (_1!30627 (h!59368 oldBucket!34)) (_2!30627 (h!59368 oldBucket!34))))))

(assert (=> d!1516280 (= (+!2316 lt!1907527 (h!59368 oldBucket!34)) lt!1908068)))

(declare-fun b!4744981 () Bool)

(declare-fun res!2010917 () Bool)

(assert (=> b!4744981 (=> (not res!2010917) (not e!2959729))))

(assert (=> b!4744981 (= res!2010917 (= (getValueByKey!2035 (toList!6025 lt!1908068) (_1!30627 (h!59368 oldBucket!34))) (Some!12484 (_2!30627 (h!59368 oldBucket!34)))))))

(declare-fun b!4744982 () Bool)

(assert (=> b!4744982 (= e!2959729 (contains!16408 (toList!6025 lt!1908068) (h!59368 oldBucket!34)))))

(assert (= (and d!1516280 res!2010916) b!4744981))

(assert (= (and b!4744981 res!2010917) b!4744982))

(declare-fun m!5701741 () Bool)

(assert (=> d!1516280 m!5701741))

(declare-fun m!5701743 () Bool)

(assert (=> d!1516280 m!5701743))

(declare-fun m!5701745 () Bool)

(assert (=> d!1516280 m!5701745))

(declare-fun m!5701747 () Bool)

(assert (=> d!1516280 m!5701747))

(declare-fun m!5701749 () Bool)

(assert (=> b!4744981 m!5701749))

(declare-fun m!5701751 () Bool)

(assert (=> b!4744982 m!5701751))

(assert (=> b!4744627 d!1516280))

(declare-fun b!4744983 () Bool)

(declare-fun e!2959732 () Unit!134101)

(declare-fun lt!1908072 () Unit!134101)

(assert (=> b!4744983 (= e!2959732 lt!1908072)))

(declare-fun lt!1908071 () Unit!134101)

(assert (=> b!4744983 (= lt!1908071 (lemmaContainsKeyImpliesGetValueByKeyDefined!1927 (toList!6025 lt!1907509) key!4653))))

(assert (=> b!4744983 (isDefined!9740 (getValueByKey!2035 (toList!6025 lt!1907509) key!4653))))

(declare-fun lt!1908074 () Unit!134101)

(assert (=> b!4744983 (= lt!1908074 lt!1908071)))

(assert (=> b!4744983 (= lt!1908072 (lemmaInListThenGetKeysListContains!987 (toList!6025 lt!1907509) key!4653))))

(declare-fun call!332099 () Bool)

(assert (=> b!4744983 call!332099))

(declare-fun b!4744984 () Bool)

(declare-fun e!2959731 () Bool)

(assert (=> b!4744984 (= e!2959731 (not (contains!16410 (keys!19071 lt!1907509) key!4653)))))

(declare-fun b!4744985 () Bool)

(declare-fun e!2959734 () Bool)

(declare-fun e!2959733 () Bool)

(assert (=> b!4744985 (= e!2959734 e!2959733)))

(declare-fun res!2010920 () Bool)

(assert (=> b!4744985 (=> (not res!2010920) (not e!2959733))))

(assert (=> b!4744985 (= res!2010920 (isDefined!9740 (getValueByKey!2035 (toList!6025 lt!1907509) key!4653)))))

(declare-fun b!4744986 () Bool)

(declare-fun e!2959735 () Unit!134101)

(assert (=> b!4744986 (= e!2959732 e!2959735)))

(declare-fun c!810501 () Bool)

(assert (=> b!4744986 (= c!810501 call!332099)))

(declare-fun bm!332094 () Bool)

(declare-fun e!2959730 () List!53106)

(assert (=> bm!332094 (= call!332099 (contains!16410 e!2959730 key!4653))))

(declare-fun c!810500 () Bool)

(declare-fun c!810502 () Bool)

(assert (=> bm!332094 (= c!810500 c!810502)))

(declare-fun b!4744987 () Bool)

(declare-fun Unit!134209 () Unit!134101)

(assert (=> b!4744987 (= e!2959735 Unit!134209)))

(declare-fun b!4744988 () Bool)

(assert (=> b!4744988 (= e!2959730 (getKeysList!992 (toList!6025 lt!1907509)))))

(declare-fun d!1516282 () Bool)

(assert (=> d!1516282 e!2959734))

(declare-fun res!2010918 () Bool)

(assert (=> d!1516282 (=> res!2010918 e!2959734)))

(assert (=> d!1516282 (= res!2010918 e!2959731)))

(declare-fun res!2010919 () Bool)

(assert (=> d!1516282 (=> (not res!2010919) (not e!2959731))))

(declare-fun lt!1908073 () Bool)

(assert (=> d!1516282 (= res!2010919 (not lt!1908073))))

(declare-fun lt!1908075 () Bool)

(assert (=> d!1516282 (= lt!1908073 lt!1908075)))

(declare-fun lt!1908069 () Unit!134101)

(assert (=> d!1516282 (= lt!1908069 e!2959732)))

(assert (=> d!1516282 (= c!810502 lt!1908075)))

(assert (=> d!1516282 (= lt!1908075 (containsKey!3500 (toList!6025 lt!1907509) key!4653))))

(assert (=> d!1516282 (= (contains!16406 lt!1907509 key!4653) lt!1908073)))

(declare-fun b!4744989 () Bool)

(assert (=> b!4744989 (= e!2959733 (contains!16410 (keys!19071 lt!1907509) key!4653))))

(declare-fun b!4744990 () Bool)

(assert (=> b!4744990 (= e!2959730 (keys!19071 lt!1907509))))

(declare-fun b!4744991 () Bool)

(assert (=> b!4744991 false))

(declare-fun lt!1908070 () Unit!134101)

(declare-fun lt!1908076 () Unit!134101)

(assert (=> b!4744991 (= lt!1908070 lt!1908076)))

(assert (=> b!4744991 (containsKey!3500 (toList!6025 lt!1907509) key!4653)))

(assert (=> b!4744991 (= lt!1908076 (lemmaInGetKeysListThenContainsKey!991 (toList!6025 lt!1907509) key!4653))))

(declare-fun Unit!134210 () Unit!134101)

(assert (=> b!4744991 (= e!2959735 Unit!134210)))

(assert (= (and d!1516282 c!810502) b!4744983))

(assert (= (and d!1516282 (not c!810502)) b!4744986))

(assert (= (and b!4744986 c!810501) b!4744991))

(assert (= (and b!4744986 (not c!810501)) b!4744987))

(assert (= (or b!4744983 b!4744986) bm!332094))

(assert (= (and bm!332094 c!810500) b!4744988))

(assert (= (and bm!332094 (not c!810500)) b!4744990))

(assert (= (and d!1516282 res!2010919) b!4744984))

(assert (= (and d!1516282 (not res!2010918)) b!4744985))

(assert (= (and b!4744985 res!2010920) b!4744989))

(declare-fun m!5701753 () Bool)

(assert (=> bm!332094 m!5701753))

(declare-fun m!5701755 () Bool)

(assert (=> b!4744985 m!5701755))

(assert (=> b!4744985 m!5701755))

(declare-fun m!5701757 () Bool)

(assert (=> b!4744985 m!5701757))

(declare-fun m!5701759 () Bool)

(assert (=> b!4744990 m!5701759))

(declare-fun m!5701761 () Bool)

(assert (=> b!4744991 m!5701761))

(declare-fun m!5701763 () Bool)

(assert (=> b!4744991 m!5701763))

(declare-fun m!5701765 () Bool)

(assert (=> b!4744983 m!5701765))

(assert (=> b!4744983 m!5701755))

(assert (=> b!4744983 m!5701755))

(assert (=> b!4744983 m!5701757))

(declare-fun m!5701767 () Bool)

(assert (=> b!4744983 m!5701767))

(assert (=> d!1516282 m!5701761))

(assert (=> b!4744989 m!5701759))

(assert (=> b!4744989 m!5701759))

(declare-fun m!5701769 () Bool)

(assert (=> b!4744989 m!5701769))

(declare-fun m!5701771 () Bool)

(assert (=> b!4744988 m!5701771))

(assert (=> b!4744984 m!5701759))

(assert (=> b!4744984 m!5701759))

(assert (=> b!4744984 m!5701769))

(assert (=> b!4744627 d!1516282))

(declare-fun d!1516284 () Bool)

(declare-fun e!2959736 () Bool)

(assert (=> d!1516284 e!2959736))

(declare-fun res!2010921 () Bool)

(assert (=> d!1516284 (=> (not res!2010921) (not e!2959736))))

(declare-fun lt!1908080 () ListMap!5389)

(assert (=> d!1516284 (= res!2010921 (contains!16406 lt!1908080 (_1!30627 lt!1907513)))))

(declare-fun lt!1908077 () List!53103)

(assert (=> d!1516284 (= lt!1908080 (ListMap!5390 lt!1908077))))

(declare-fun lt!1908078 () Unit!134101)

(declare-fun lt!1908079 () Unit!134101)

(assert (=> d!1516284 (= lt!1908078 lt!1908079)))

(assert (=> d!1516284 (= (getValueByKey!2035 lt!1908077 (_1!30627 lt!1907513)) (Some!12484 (_2!30627 lt!1907513)))))

(assert (=> d!1516284 (= lt!1908079 (lemmaContainsTupThenGetReturnValue!1119 lt!1908077 (_1!30627 lt!1907513) (_2!30627 lt!1907513)))))

(assert (=> d!1516284 (= lt!1908077 (insertNoDuplicatedKeys!627 (toList!6025 (addToMapMapFromBucket!1498 lt!1907526 lt!1907515)) (_1!30627 lt!1907513) (_2!30627 lt!1907513)))))

(assert (=> d!1516284 (= (+!2316 (addToMapMapFromBucket!1498 lt!1907526 lt!1907515) lt!1907513) lt!1908080)))

(declare-fun b!4744992 () Bool)

(declare-fun res!2010922 () Bool)

(assert (=> b!4744992 (=> (not res!2010922) (not e!2959736))))

(assert (=> b!4744992 (= res!2010922 (= (getValueByKey!2035 (toList!6025 lt!1908080) (_1!30627 lt!1907513)) (Some!12484 (_2!30627 lt!1907513))))))

(declare-fun b!4744993 () Bool)

(assert (=> b!4744993 (= e!2959736 (contains!16408 (toList!6025 lt!1908080) lt!1907513))))

(assert (= (and d!1516284 res!2010921) b!4744992))

(assert (= (and b!4744992 res!2010922) b!4744993))

(declare-fun m!5701773 () Bool)

(assert (=> d!1516284 m!5701773))

(declare-fun m!5701775 () Bool)

(assert (=> d!1516284 m!5701775))

(declare-fun m!5701777 () Bool)

(assert (=> d!1516284 m!5701777))

(declare-fun m!5701779 () Bool)

(assert (=> d!1516284 m!5701779))

(declare-fun m!5701781 () Bool)

(assert (=> b!4744992 m!5701781))

(declare-fun m!5701783 () Bool)

(assert (=> b!4744993 m!5701783))

(assert (=> b!4744627 d!1516284))

(declare-fun d!1516286 () Bool)

(assert (=> d!1516286 (= (eq!1165 (addToMapMapFromBucket!1498 (Cons!52979 lt!1907521 lt!1907525) lt!1907515) (+!2316 (addToMapMapFromBucket!1498 lt!1907525 lt!1907515) lt!1907521)) (= (content!9485 (toList!6025 (addToMapMapFromBucket!1498 (Cons!52979 lt!1907521 lt!1907525) lt!1907515))) (content!9485 (toList!6025 (+!2316 (addToMapMapFromBucket!1498 lt!1907525 lt!1907515) lt!1907521)))))))

(declare-fun bs!1137698 () Bool)

(assert (= bs!1137698 d!1516286))

(declare-fun m!5701785 () Bool)

(assert (=> bs!1137698 m!5701785))

(declare-fun m!5701787 () Bool)

(assert (=> bs!1137698 m!5701787))

(assert (=> b!4744627 d!1516286))

(declare-fun d!1516288 () Bool)

(assert (=> d!1516288 (= (eq!1165 lt!1907520 lt!1907517) (= (content!9485 (toList!6025 lt!1907520)) (content!9485 (toList!6025 lt!1907517))))))

(declare-fun bs!1137700 () Bool)

(assert (= bs!1137700 d!1516288))

(declare-fun m!5701789 () Bool)

(assert (=> bs!1137700 m!5701789))

(assert (=> bs!1137700 m!5700769))

(assert (=> b!4744606 d!1516288))

(declare-fun d!1516290 () Bool)

(assert (=> d!1516290 (= (eq!1165 lt!1907498 lt!1907487) (= (content!9485 (toList!6025 lt!1907498)) (content!9485 (toList!6025 lt!1907487))))))

(declare-fun bs!1137702 () Bool)

(assert (= bs!1137702 d!1516290))

(assert (=> bs!1137702 m!5701149))

(assert (=> bs!1137702 m!5701085))

(assert (=> b!4744605 d!1516290))

(declare-fun d!1516292 () Bool)

(declare-fun res!2010927 () Bool)

(declare-fun e!2959741 () Bool)

(assert (=> d!1516292 (=> res!2010927 e!2959741)))

(assert (=> d!1516292 (= res!2010927 ((_ is Nil!52980) (toList!6026 lm!2023)))))

(assert (=> d!1516292 (= (forall!11701 (toList!6026 lm!2023) lambda!219930) e!2959741)))

(declare-fun b!4744998 () Bool)

(declare-fun e!2959742 () Bool)

(assert (=> b!4744998 (= e!2959741 e!2959742)))

(declare-fun res!2010928 () Bool)

(assert (=> b!4744998 (=> (not res!2010928) (not e!2959742))))

(declare-fun dynLambda!21883 (Int tuple2!54668) Bool)

(assert (=> b!4744998 (= res!2010928 (dynLambda!21883 lambda!219930 (h!59369 (toList!6026 lm!2023))))))

(declare-fun b!4744999 () Bool)

(assert (=> b!4744999 (= e!2959742 (forall!11701 (t!360410 (toList!6026 lm!2023)) lambda!219930))))

(assert (= (and d!1516292 (not res!2010927)) b!4744998))

(assert (= (and b!4744998 res!2010928) b!4744999))

(declare-fun b_lambda!182673 () Bool)

(assert (=> (not b_lambda!182673) (not b!4744998)))

(declare-fun m!5701791 () Bool)

(assert (=> b!4744998 m!5701791))

(declare-fun m!5701793 () Bool)

(assert (=> b!4744999 m!5701793))

(assert (=> start!484320 d!1516292))

(declare-fun d!1516294 () Bool)

(declare-fun isStrictlySorted!790 (List!53104) Bool)

(assert (=> d!1516294 (= (inv!68194 lm!2023) (isStrictlySorted!790 (toList!6026 lm!2023)))))

(declare-fun bs!1137709 () Bool)

(assert (= bs!1137709 d!1516294))

(declare-fun m!5701795 () Bool)

(assert (=> bs!1137709 m!5701795))

(assert (=> start!484320 d!1516294))

(declare-fun d!1516296 () Bool)

(assert (=> d!1516296 (= (eq!1165 lt!1907514 lt!1907524) (= (content!9485 (toList!6025 lt!1907514)) (content!9485 (toList!6025 lt!1907524))))))

(declare-fun bs!1137710 () Bool)

(assert (= bs!1137710 d!1516296))

(declare-fun m!5701797 () Bool)

(assert (=> bs!1137710 m!5701797))

(declare-fun m!5701799 () Bool)

(assert (=> bs!1137710 m!5701799))

(assert (=> b!4744626 d!1516296))

(declare-fun d!1516298 () Bool)

(declare-fun e!2959743 () Bool)

(assert (=> d!1516298 e!2959743))

(declare-fun res!2010929 () Bool)

(assert (=> d!1516298 (=> (not res!2010929) (not e!2959743))))

(declare-fun lt!1908081 () ListMap!5389)

(assert (=> d!1516298 (= res!2010929 (not (contains!16406 lt!1908081 key!4653)))))

(assert (=> d!1516298 (= lt!1908081 (ListMap!5390 (removePresrvNoDuplicatedKeys!405 (toList!6025 lt!1907509) key!4653)))))

(assert (=> d!1516298 (= (-!758 lt!1907509 key!4653) lt!1908081)))

(declare-fun b!4745000 () Bool)

(assert (=> b!4745000 (= e!2959743 (= ((_ map and) (content!9488 (keys!19071 lt!1907509)) ((_ map not) (store ((as const (Array K!14320 Bool)) false) key!4653 true))) (content!9488 (keys!19071 lt!1908081))))))

(assert (= (and d!1516298 res!2010929) b!4745000))

(declare-fun m!5701801 () Bool)

(assert (=> d!1516298 m!5701801))

(declare-fun m!5701803 () Bool)

(assert (=> d!1516298 m!5701803))

(assert (=> b!4745000 m!5701759))

(declare-fun m!5701805 () Bool)

(assert (=> b!4745000 m!5701805))

(assert (=> b!4745000 m!5701759))

(declare-fun m!5701807 () Bool)

(assert (=> b!4745000 m!5701807))

(assert (=> b!4745000 m!5701805))

(declare-fun m!5701809 () Bool)

(assert (=> b!4745000 m!5701809))

(assert (=> b!4745000 m!5700973))

(assert (=> b!4744626 d!1516298))

(declare-fun d!1516300 () Bool)

(assert (=> d!1516300 (= (eq!1165 (extractMap!2094 (Cons!52980 lt!1907505 lt!1907507)) (-!758 (extractMap!2094 (Cons!52980 lt!1907488 lt!1907507)) key!4653)) (= (content!9485 (toList!6025 (extractMap!2094 (Cons!52980 lt!1907505 lt!1907507)))) (content!9485 (toList!6025 (-!758 (extractMap!2094 (Cons!52980 lt!1907488 lt!1907507)) key!4653)))))))

(declare-fun bs!1137712 () Bool)

(assert (= bs!1137712 d!1516300))

(declare-fun m!5701811 () Bool)

(assert (=> bs!1137712 m!5701811))

(declare-fun m!5701813 () Bool)

(assert (=> bs!1137712 m!5701813))

(assert (=> b!4744626 d!1516300))

(declare-fun d!1516302 () Bool)

(assert (=> d!1516302 (= (tail!9144 lt!1907504) (t!360410 lt!1907504))))

(assert (=> b!4744626 d!1516302))

(declare-fun bs!1137771 () Bool)

(declare-fun d!1516304 () Bool)

(assert (= bs!1137771 (and d!1516304 d!1516186)))

(declare-fun lambda!220085 () Int)

(assert (=> bs!1137771 (= lambda!220085 lambda!220039)))

(declare-fun bs!1137773 () Bool)

(assert (= bs!1137773 (and d!1516304 d!1516076)))

(assert (=> bs!1137773 (not (= lambda!220085 lambda!219948))))

(declare-fun bs!1137774 () Bool)

(assert (= bs!1137774 (and d!1516304 start!484320)))

(assert (=> bs!1137774 (= lambda!220085 lambda!219930)))

(declare-fun bs!1137775 () Bool)

(assert (= bs!1137775 (and d!1516304 d!1516268)))

(assert (=> bs!1137775 (= lambda!220085 lambda!220073)))

(declare-fun bs!1137777 () Bool)

(assert (= bs!1137777 (and d!1516304 d!1516246)))

(assert (=> bs!1137777 (= lambda!220085 lambda!220059)))

(declare-fun bs!1137778 () Bool)

(assert (= bs!1137778 (and d!1516304 d!1516182)))

(assert (=> bs!1137778 (= lambda!220085 lambda!220037)))

(declare-fun bs!1137780 () Bool)

(assert (= bs!1137780 (and d!1516304 d!1516188)))

(assert (=> bs!1137780 (= lambda!220085 lambda!220041)))

(declare-fun bs!1137781 () Bool)

(assert (= bs!1137781 (and d!1516304 d!1516068)))

(assert (=> bs!1137781 (= lambda!220085 lambda!219936)))

(declare-fun bs!1137783 () Bool)

(assert (= bs!1137783 (and d!1516304 d!1516240)))

(assert (=> bs!1137783 (= lambda!220085 lambda!220054)))

(declare-fun bs!1137785 () Bool)

(assert (= bs!1137785 (and d!1516304 d!1516252)))

(assert (=> bs!1137785 (= lambda!220085 lambda!220060)))

(declare-fun bs!1137786 () Bool)

(assert (= bs!1137786 (and d!1516304 d!1516122)))

(assert (=> bs!1137786 (= lambda!220085 lambda!220012)))

(assert (=> d!1516304 (eq!1165 (extractMap!2094 (Cons!52980 (tuple2!54669 hash!405 lt!1907525) (tail!9144 (toList!6026 lt!1907511)))) (-!758 (extractMap!2094 (Cons!52980 (tuple2!54669 hash!405 (t!360409 oldBucket!34)) (tail!9144 (toList!6026 lt!1907511)))) key!4653))))

(declare-fun lt!1908085 () Unit!134101)

(declare-fun choose!33729 (ListLongMap!4555 (_ BitVec 64) List!53103 List!53103 K!14320 Hashable!6437) Unit!134101)

(assert (=> d!1516304 (= lt!1908085 (choose!33729 lt!1907511 hash!405 (t!360409 oldBucket!34) lt!1907525 key!4653 hashF!1323))))

(assert (=> d!1516304 (forall!11701 (toList!6026 lt!1907511) lambda!220085)))

(assert (=> d!1516304 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!118 lt!1907511 hash!405 (t!360409 oldBucket!34) lt!1907525 key!4653 hashF!1323) lt!1908085)))

(declare-fun bs!1137790 () Bool)

(assert (= bs!1137790 d!1516304))

(declare-fun m!5701865 () Bool)

(assert (=> bs!1137790 m!5701865))

(declare-fun m!5701867 () Bool)

(assert (=> bs!1137790 m!5701867))

(declare-fun m!5701869 () Bool)

(assert (=> bs!1137790 m!5701869))

(declare-fun m!5701871 () Bool)

(assert (=> bs!1137790 m!5701871))

(declare-fun m!5701873 () Bool)

(assert (=> bs!1137790 m!5701873))

(declare-fun m!5701875 () Bool)

(assert (=> bs!1137790 m!5701875))

(assert (=> bs!1137790 m!5701867))

(declare-fun m!5701877 () Bool)

(assert (=> bs!1137790 m!5701877))

(assert (=> bs!1137790 m!5701869))

(assert (=> bs!1137790 m!5701877))

(assert (=> b!4744626 d!1516304))

(declare-fun bs!1137791 () Bool)

(declare-fun d!1516322 () Bool)

(assert (= bs!1137791 (and d!1516322 d!1516304)))

(declare-fun lambda!220086 () Int)

(assert (=> bs!1137791 (= lambda!220086 lambda!220085)))

(declare-fun bs!1137792 () Bool)

(assert (= bs!1137792 (and d!1516322 d!1516186)))

(assert (=> bs!1137792 (= lambda!220086 lambda!220039)))

(declare-fun bs!1137793 () Bool)

(assert (= bs!1137793 (and d!1516322 d!1516076)))

(assert (=> bs!1137793 (not (= lambda!220086 lambda!219948))))

(declare-fun bs!1137794 () Bool)

(assert (= bs!1137794 (and d!1516322 start!484320)))

(assert (=> bs!1137794 (= lambda!220086 lambda!219930)))

(declare-fun bs!1137795 () Bool)

(assert (= bs!1137795 (and d!1516322 d!1516268)))

(assert (=> bs!1137795 (= lambda!220086 lambda!220073)))

(declare-fun bs!1137796 () Bool)

(assert (= bs!1137796 (and d!1516322 d!1516246)))

(assert (=> bs!1137796 (= lambda!220086 lambda!220059)))

(declare-fun bs!1137797 () Bool)

(assert (= bs!1137797 (and d!1516322 d!1516182)))

(assert (=> bs!1137797 (= lambda!220086 lambda!220037)))

(declare-fun bs!1137799 () Bool)

(assert (= bs!1137799 (and d!1516322 d!1516188)))

(assert (=> bs!1137799 (= lambda!220086 lambda!220041)))

(declare-fun bs!1137800 () Bool)

(assert (= bs!1137800 (and d!1516322 d!1516068)))

(assert (=> bs!1137800 (= lambda!220086 lambda!219936)))

(declare-fun bs!1137801 () Bool)

(assert (= bs!1137801 (and d!1516322 d!1516240)))

(assert (=> bs!1137801 (= lambda!220086 lambda!220054)))

(declare-fun bs!1137802 () Bool)

(assert (= bs!1137802 (and d!1516322 d!1516252)))

(assert (=> bs!1137802 (= lambda!220086 lambda!220060)))

(declare-fun bs!1137803 () Bool)

(assert (= bs!1137803 (and d!1516322 d!1516122)))

(assert (=> bs!1137803 (= lambda!220086 lambda!220012)))

(declare-fun lt!1908087 () ListMap!5389)

(assert (=> d!1516322 (invariantList!1553 (toList!6025 lt!1908087))))

(declare-fun e!2959749 () ListMap!5389)

(assert (=> d!1516322 (= lt!1908087 e!2959749)))

(declare-fun c!810506 () Bool)

(assert (=> d!1516322 (= c!810506 ((_ is Cons!52980) (Cons!52980 lt!1907505 lt!1907507)))))

(assert (=> d!1516322 (forall!11701 (Cons!52980 lt!1907505 lt!1907507) lambda!220086)))

(assert (=> d!1516322 (= (extractMap!2094 (Cons!52980 lt!1907505 lt!1907507)) lt!1908087)))

(declare-fun b!4745011 () Bool)

(assert (=> b!4745011 (= e!2959749 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (Cons!52980 lt!1907505 lt!1907507))) (extractMap!2094 (t!360410 (Cons!52980 lt!1907505 lt!1907507)))))))

(declare-fun b!4745012 () Bool)

(assert (=> b!4745012 (= e!2959749 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516322 c!810506) b!4745011))

(assert (= (and d!1516322 (not c!810506)) b!4745012))

(declare-fun m!5701889 () Bool)

(assert (=> d!1516322 m!5701889))

(declare-fun m!5701891 () Bool)

(assert (=> d!1516322 m!5701891))

(declare-fun m!5701893 () Bool)

(assert (=> b!4745011 m!5701893))

(assert (=> b!4745011 m!5701893))

(declare-fun m!5701897 () Bool)

(assert (=> b!4745011 m!5701897))

(assert (=> b!4744626 d!1516322))

(declare-fun bs!1137805 () Bool)

(declare-fun d!1516332 () Bool)

(assert (= bs!1137805 (and d!1516332 d!1516304)))

(declare-fun lambda!220087 () Int)

(assert (=> bs!1137805 (= lambda!220087 lambda!220085)))

(declare-fun bs!1137806 () Bool)

(assert (= bs!1137806 (and d!1516332 d!1516186)))

(assert (=> bs!1137806 (= lambda!220087 lambda!220039)))

(declare-fun bs!1137807 () Bool)

(assert (= bs!1137807 (and d!1516332 d!1516076)))

(assert (=> bs!1137807 (not (= lambda!220087 lambda!219948))))

(declare-fun bs!1137808 () Bool)

(assert (= bs!1137808 (and d!1516332 start!484320)))

(assert (=> bs!1137808 (= lambda!220087 lambda!219930)))

(declare-fun bs!1137809 () Bool)

(assert (= bs!1137809 (and d!1516332 d!1516268)))

(assert (=> bs!1137809 (= lambda!220087 lambda!220073)))

(declare-fun bs!1137810 () Bool)

(assert (= bs!1137810 (and d!1516332 d!1516246)))

(assert (=> bs!1137810 (= lambda!220087 lambda!220059)))

(declare-fun bs!1137811 () Bool)

(assert (= bs!1137811 (and d!1516332 d!1516182)))

(assert (=> bs!1137811 (= lambda!220087 lambda!220037)))

(declare-fun bs!1137812 () Bool)

(assert (= bs!1137812 (and d!1516332 d!1516322)))

(assert (=> bs!1137812 (= lambda!220087 lambda!220086)))

(declare-fun bs!1137813 () Bool)

(assert (= bs!1137813 (and d!1516332 d!1516188)))

(assert (=> bs!1137813 (= lambda!220087 lambda!220041)))

(declare-fun bs!1137814 () Bool)

(assert (= bs!1137814 (and d!1516332 d!1516068)))

(assert (=> bs!1137814 (= lambda!220087 lambda!219936)))

(declare-fun bs!1137815 () Bool)

(assert (= bs!1137815 (and d!1516332 d!1516240)))

(assert (=> bs!1137815 (= lambda!220087 lambda!220054)))

(declare-fun bs!1137816 () Bool)

(assert (= bs!1137816 (and d!1516332 d!1516252)))

(assert (=> bs!1137816 (= lambda!220087 lambda!220060)))

(declare-fun bs!1137817 () Bool)

(assert (= bs!1137817 (and d!1516332 d!1516122)))

(assert (=> bs!1137817 (= lambda!220087 lambda!220012)))

(declare-fun lt!1908092 () ListMap!5389)

(assert (=> d!1516332 (invariantList!1553 (toList!6025 lt!1908092))))

(declare-fun e!2959751 () ListMap!5389)

(assert (=> d!1516332 (= lt!1908092 e!2959751)))

(declare-fun c!810507 () Bool)

(assert (=> d!1516332 (= c!810507 ((_ is Cons!52980) (Cons!52980 lt!1907505 (t!360410 (toList!6026 lm!2023)))))))

(assert (=> d!1516332 (forall!11701 (Cons!52980 lt!1907505 (t!360410 (toList!6026 lm!2023))) lambda!220087)))

(assert (=> d!1516332 (= (extractMap!2094 (Cons!52980 lt!1907505 (t!360410 (toList!6026 lm!2023)))) lt!1908092)))

(declare-fun b!4745015 () Bool)

(assert (=> b!4745015 (= e!2959751 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (Cons!52980 lt!1907505 (t!360410 (toList!6026 lm!2023))))) (extractMap!2094 (t!360410 (Cons!52980 lt!1907505 (t!360410 (toList!6026 lm!2023)))))))))

(declare-fun b!4745016 () Bool)

(assert (=> b!4745016 (= e!2959751 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516332 c!810507) b!4745015))

(assert (= (and d!1516332 (not c!810507)) b!4745016))

(declare-fun m!5701907 () Bool)

(assert (=> d!1516332 m!5701907))

(declare-fun m!5701909 () Bool)

(assert (=> d!1516332 m!5701909))

(declare-fun m!5701911 () Bool)

(assert (=> b!4745015 m!5701911))

(assert (=> b!4745015 m!5701911))

(declare-fun m!5701913 () Bool)

(assert (=> b!4745015 m!5701913))

(assert (=> b!4744626 d!1516332))

(declare-fun bs!1137818 () Bool)

(declare-fun d!1516338 () Bool)

(assert (= bs!1137818 (and d!1516338 d!1516304)))

(declare-fun lambda!220088 () Int)

(assert (=> bs!1137818 (= lambda!220088 lambda!220085)))

(declare-fun bs!1137819 () Bool)

(assert (= bs!1137819 (and d!1516338 d!1516332)))

(assert (=> bs!1137819 (= lambda!220088 lambda!220087)))

(declare-fun bs!1137820 () Bool)

(assert (= bs!1137820 (and d!1516338 d!1516186)))

(assert (=> bs!1137820 (= lambda!220088 lambda!220039)))

(declare-fun bs!1137821 () Bool)

(assert (= bs!1137821 (and d!1516338 d!1516076)))

(assert (=> bs!1137821 (not (= lambda!220088 lambda!219948))))

(declare-fun bs!1137822 () Bool)

(assert (= bs!1137822 (and d!1516338 start!484320)))

(assert (=> bs!1137822 (= lambda!220088 lambda!219930)))

(declare-fun bs!1137823 () Bool)

(assert (= bs!1137823 (and d!1516338 d!1516268)))

(assert (=> bs!1137823 (= lambda!220088 lambda!220073)))

(declare-fun bs!1137824 () Bool)

(assert (= bs!1137824 (and d!1516338 d!1516246)))

(assert (=> bs!1137824 (= lambda!220088 lambda!220059)))

(declare-fun bs!1137825 () Bool)

(assert (= bs!1137825 (and d!1516338 d!1516182)))

(assert (=> bs!1137825 (= lambda!220088 lambda!220037)))

(declare-fun bs!1137826 () Bool)

(assert (= bs!1137826 (and d!1516338 d!1516322)))

(assert (=> bs!1137826 (= lambda!220088 lambda!220086)))

(declare-fun bs!1137827 () Bool)

(assert (= bs!1137827 (and d!1516338 d!1516188)))

(assert (=> bs!1137827 (= lambda!220088 lambda!220041)))

(declare-fun bs!1137828 () Bool)

(assert (= bs!1137828 (and d!1516338 d!1516068)))

(assert (=> bs!1137828 (= lambda!220088 lambda!219936)))

(declare-fun bs!1137829 () Bool)

(assert (= bs!1137829 (and d!1516338 d!1516240)))

(assert (=> bs!1137829 (= lambda!220088 lambda!220054)))

(declare-fun bs!1137830 () Bool)

(assert (= bs!1137830 (and d!1516338 d!1516252)))

(assert (=> bs!1137830 (= lambda!220088 lambda!220060)))

(declare-fun bs!1137831 () Bool)

(assert (= bs!1137831 (and d!1516338 d!1516122)))

(assert (=> bs!1137831 (= lambda!220088 lambda!220012)))

(declare-fun lt!1908093 () ListMap!5389)

(assert (=> d!1516338 (invariantList!1553 (toList!6025 lt!1908093))))

(declare-fun e!2959752 () ListMap!5389)

(assert (=> d!1516338 (= lt!1908093 e!2959752)))

(declare-fun c!810508 () Bool)

(assert (=> d!1516338 (= c!810508 ((_ is Cons!52980) (Cons!52980 lt!1907488 lt!1907507)))))

(assert (=> d!1516338 (forall!11701 (Cons!52980 lt!1907488 lt!1907507) lambda!220088)))

(assert (=> d!1516338 (= (extractMap!2094 (Cons!52980 lt!1907488 lt!1907507)) lt!1908093)))

(declare-fun b!4745017 () Bool)

(assert (=> b!4745017 (= e!2959752 (addToMapMapFromBucket!1498 (_2!30628 (h!59369 (Cons!52980 lt!1907488 lt!1907507))) (extractMap!2094 (t!360410 (Cons!52980 lt!1907488 lt!1907507)))))))

(declare-fun b!4745018 () Bool)

(assert (=> b!4745018 (= e!2959752 (ListMap!5390 Nil!52979))))

(assert (= (and d!1516338 c!810508) b!4745017))

(assert (= (and d!1516338 (not c!810508)) b!4745018))

(declare-fun m!5701915 () Bool)

(assert (=> d!1516338 m!5701915))

(declare-fun m!5701917 () Bool)

(assert (=> d!1516338 m!5701917))

(declare-fun m!5701919 () Bool)

(assert (=> b!4745017 m!5701919))

(assert (=> b!4745017 m!5701919))

(declare-fun m!5701921 () Bool)

(assert (=> b!4745017 m!5701921))

(assert (=> b!4744626 d!1516338))

(declare-fun d!1516340 () Bool)

(declare-fun e!2959753 () Bool)

(assert (=> d!1516340 e!2959753))

(declare-fun res!2010934 () Bool)

(assert (=> d!1516340 (=> (not res!2010934) (not e!2959753))))

(declare-fun lt!1908094 () ListMap!5389)

(assert (=> d!1516340 (= res!2010934 (not (contains!16406 lt!1908094 key!4653)))))

(assert (=> d!1516340 (= lt!1908094 (ListMap!5390 (removePresrvNoDuplicatedKeys!405 (toList!6025 (extractMap!2094 (Cons!52980 lt!1907488 lt!1907507))) key!4653)))))

(assert (=> d!1516340 (= (-!758 (extractMap!2094 (Cons!52980 lt!1907488 lt!1907507)) key!4653) lt!1908094)))

(declare-fun b!4745019 () Bool)

(assert (=> b!4745019 (= e!2959753 (= ((_ map and) (content!9488 (keys!19071 (extractMap!2094 (Cons!52980 lt!1907488 lt!1907507)))) ((_ map not) (store ((as const (Array K!14320 Bool)) false) key!4653 true))) (content!9488 (keys!19071 lt!1908094))))))

(assert (= (and d!1516340 res!2010934) b!4745019))

(declare-fun m!5701923 () Bool)

(assert (=> d!1516340 m!5701923))

(declare-fun m!5701925 () Bool)

(assert (=> d!1516340 m!5701925))

(assert (=> b!4745019 m!5700679))

(declare-fun m!5701927 () Bool)

(assert (=> b!4745019 m!5701927))

(declare-fun m!5701929 () Bool)

(assert (=> b!4745019 m!5701929))

(assert (=> b!4745019 m!5701927))

(declare-fun m!5701931 () Bool)

(assert (=> b!4745019 m!5701931))

(assert (=> b!4745019 m!5701929))

(declare-fun m!5701933 () Bool)

(assert (=> b!4745019 m!5701933))

(assert (=> b!4745019 m!5700973))

(assert (=> b!4744626 d!1516340))

(declare-fun d!1516342 () Bool)

(assert (=> d!1516342 (contains!16404 (toList!6026 lm!2023) (tuple2!54669 lt!1907493 lt!1907494))))

(declare-fun lt!1908097 () Unit!134101)

(declare-fun choose!33730 (ListLongMap!4555 (_ BitVec 64) List!53103) Unit!134101)

(assert (=> d!1516342 (= lt!1908097 (choose!33730 lm!2023 lt!1907493 lt!1907494))))

(assert (=> d!1516342 (contains!16405 lm!2023 lt!1907493)))

(assert (=> d!1516342 (= (lemmaGetValueImpliesTupleContained!413 lm!2023 lt!1907493 lt!1907494) lt!1908097)))

(declare-fun bs!1137832 () Bool)

(assert (= bs!1137832 d!1516342))

(declare-fun m!5701935 () Bool)

(assert (=> bs!1137832 m!5701935))

(declare-fun m!5701937 () Bool)

(assert (=> bs!1137832 m!5701937))

(assert (=> bs!1137832 m!5700719))

(assert (=> b!4744604 d!1516342))

(declare-fun bs!1137837 () Bool)

(declare-fun d!1516344 () Bool)

(assert (= bs!1137837 (and d!1516344 d!1516304)))

(declare-fun lambda!220091 () Int)

(assert (=> bs!1137837 (= lambda!220091 lambda!220085)))

(declare-fun bs!1137838 () Bool)

(assert (= bs!1137838 (and d!1516344 d!1516332)))

(assert (=> bs!1137838 (= lambda!220091 lambda!220087)))

(declare-fun bs!1137839 () Bool)

(assert (= bs!1137839 (and d!1516344 d!1516186)))

(assert (=> bs!1137839 (= lambda!220091 lambda!220039)))

(declare-fun bs!1137840 () Bool)

(assert (= bs!1137840 (and d!1516344 d!1516076)))

(assert (=> bs!1137840 (not (= lambda!220091 lambda!219948))))

(declare-fun bs!1137841 () Bool)

(assert (= bs!1137841 (and d!1516344 start!484320)))

(assert (=> bs!1137841 (= lambda!220091 lambda!219930)))

(declare-fun bs!1137842 () Bool)

(assert (= bs!1137842 (and d!1516344 d!1516338)))

(assert (=> bs!1137842 (= lambda!220091 lambda!220088)))

(declare-fun bs!1137843 () Bool)

(assert (= bs!1137843 (and d!1516344 d!1516268)))

(assert (=> bs!1137843 (= lambda!220091 lambda!220073)))

(declare-fun bs!1137844 () Bool)

(assert (= bs!1137844 (and d!1516344 d!1516246)))

(assert (=> bs!1137844 (= lambda!220091 lambda!220059)))

(declare-fun bs!1137845 () Bool)

(assert (= bs!1137845 (and d!1516344 d!1516182)))

(assert (=> bs!1137845 (= lambda!220091 lambda!220037)))

(declare-fun bs!1137846 () Bool)

(assert (= bs!1137846 (and d!1516344 d!1516322)))

(assert (=> bs!1137846 (= lambda!220091 lambda!220086)))

(declare-fun bs!1137847 () Bool)

(assert (= bs!1137847 (and d!1516344 d!1516188)))

(assert (=> bs!1137847 (= lambda!220091 lambda!220041)))

(declare-fun bs!1137848 () Bool)

(assert (= bs!1137848 (and d!1516344 d!1516068)))

(assert (=> bs!1137848 (= lambda!220091 lambda!219936)))

(declare-fun bs!1137849 () Bool)

(assert (= bs!1137849 (and d!1516344 d!1516240)))

(assert (=> bs!1137849 (= lambda!220091 lambda!220054)))

(declare-fun bs!1137850 () Bool)

(assert (= bs!1137850 (and d!1516344 d!1516252)))

(assert (=> bs!1137850 (= lambda!220091 lambda!220060)))

(declare-fun bs!1137851 () Bool)

(assert (= bs!1137851 (and d!1516344 d!1516122)))

(assert (=> bs!1137851 (= lambda!220091 lambda!220012)))

(assert (=> d!1516344 (contains!16405 lm!2023 (hash!4480 hashF!1323 key!4653))))

(declare-fun lt!1908103 () Unit!134101)

(declare-fun choose!33731 (ListLongMap!4555 K!14320 Hashable!6437) Unit!134101)

(assert (=> d!1516344 (= lt!1908103 (choose!33731 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1516344 (forall!11701 (toList!6026 lm!2023) lambda!220091)))

(assert (=> d!1516344 (= (lemmaInGenMapThenLongMapContainsHash!814 lm!2023 key!4653 hashF!1323) lt!1908103)))

(declare-fun bs!1137852 () Bool)

(assert (= bs!1137852 d!1516344))

(assert (=> bs!1137852 m!5700591))

(assert (=> bs!1137852 m!5700591))

(declare-fun m!5701963 () Bool)

(assert (=> bs!1137852 m!5701963))

(declare-fun m!5701965 () Bool)

(assert (=> bs!1137852 m!5701965))

(declare-fun m!5701967 () Bool)

(assert (=> bs!1137852 m!5701967))

(assert (=> b!4744604 d!1516344))

(declare-fun d!1516356 () Bool)

(declare-datatypes ((Option!12487 0))(
  ( (None!12486) (Some!12486 (v!47175 List!53103)) )
))
(declare-fun get!17822 (Option!12487) List!53103)

(declare-fun getValueByKey!2037 (List!53104 (_ BitVec 64)) Option!12487)

(assert (=> d!1516356 (= (apply!12493 lm!2023 lt!1907493) (get!17822 (getValueByKey!2037 (toList!6026 lm!2023) lt!1907493)))))

(declare-fun bs!1137853 () Bool)

(assert (= bs!1137853 d!1516356))

(declare-fun m!5701969 () Bool)

(assert (=> bs!1137853 m!5701969))

(assert (=> bs!1137853 m!5701969))

(declare-fun m!5701971 () Bool)

(assert (=> bs!1137853 m!5701971))

(assert (=> b!4744604 d!1516356))

(declare-fun d!1516358 () Bool)

(assert (=> d!1516358 (dynLambda!21883 lambda!219930 lt!1907492)))

(declare-fun lt!1908107 () Unit!134101)

(declare-fun choose!33732 (List!53104 Int tuple2!54668) Unit!134101)

(assert (=> d!1516358 (= lt!1908107 (choose!33732 (toList!6026 lm!2023) lambda!219930 lt!1907492))))

(declare-fun e!2959757 () Bool)

(assert (=> d!1516358 e!2959757))

(declare-fun res!2010938 () Bool)

(assert (=> d!1516358 (=> (not res!2010938) (not e!2959757))))

(assert (=> d!1516358 (= res!2010938 (forall!11701 (toList!6026 lm!2023) lambda!219930))))

(assert (=> d!1516358 (= (forallContained!3741 (toList!6026 lm!2023) lambda!219930 lt!1907492) lt!1908107)))

(declare-fun b!4745024 () Bool)

(assert (=> b!4745024 (= e!2959757 (contains!16404 (toList!6026 lm!2023) lt!1907492))))

(assert (= (and d!1516358 res!2010938) b!4745024))

(declare-fun b_lambda!182675 () Bool)

(assert (=> (not b_lambda!182675) (not d!1516358)))

(declare-fun m!5701973 () Bool)

(assert (=> d!1516358 m!5701973))

(declare-fun m!5701975 () Bool)

(assert (=> d!1516358 m!5701975))

(assert (=> d!1516358 m!5700737))

(assert (=> b!4745024 m!5700717))

(assert (=> b!4744604 d!1516358))

(declare-fun d!1516360 () Bool)

(assert (=> d!1516360 (containsKey!3497 oldBucket!34 key!4653)))

(declare-fun lt!1908110 () Unit!134101)

(declare-fun choose!33733 (List!53103 K!14320 Hashable!6437) Unit!134101)

(assert (=> d!1516360 (= lt!1908110 (choose!33733 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1516360 (noDuplicateKeys!2068 oldBucket!34)))

(assert (=> d!1516360 (= (lemmaGetPairDefinedThenContainsKey!352 oldBucket!34 key!4653 hashF!1323) lt!1908110)))

(declare-fun bs!1137854 () Bool)

(assert (= bs!1137854 d!1516360))

(assert (=> bs!1137854 m!5700725))

(declare-fun m!5701977 () Bool)

(assert (=> bs!1137854 m!5701977))

(assert (=> bs!1137854 m!5700705))

(assert (=> b!4744604 d!1516360))

(declare-fun d!1516362 () Bool)

(declare-fun res!2010943 () Bool)

(declare-fun e!2959764 () Bool)

(assert (=> d!1516362 (=> res!2010943 e!2959764)))

(assert (=> d!1516362 (= res!2010943 (and ((_ is Cons!52979) (t!360409 oldBucket!34)) (= (_1!30627 (h!59368 (t!360409 oldBucket!34))) key!4653)))))

(assert (=> d!1516362 (= (containsKey!3497 (t!360409 oldBucket!34) key!4653) e!2959764)))

(declare-fun b!4745033 () Bool)

(declare-fun e!2959765 () Bool)

(assert (=> b!4745033 (= e!2959764 e!2959765)))

(declare-fun res!2010944 () Bool)

(assert (=> b!4745033 (=> (not res!2010944) (not e!2959765))))

(assert (=> b!4745033 (= res!2010944 ((_ is Cons!52979) (t!360409 oldBucket!34)))))

(declare-fun b!4745034 () Bool)

(assert (=> b!4745034 (= e!2959765 (containsKey!3497 (t!360409 (t!360409 oldBucket!34)) key!4653))))

(assert (= (and d!1516362 (not res!2010943)) b!4745033))

(assert (= (and b!4745033 res!2010944) b!4745034))

(declare-fun m!5701983 () Bool)

(assert (=> b!4745034 m!5701983))

(assert (=> b!4744604 d!1516362))

(declare-fun d!1516364 () Bool)

(declare-fun isEmpty!29245 (Option!12483) Bool)

(assert (=> d!1516364 (= (isDefined!9737 (getPair!608 lt!1907494 key!4653)) (not (isEmpty!29245 (getPair!608 lt!1907494 key!4653))))))

(declare-fun bs!1137856 () Bool)

(assert (= bs!1137856 d!1516364))

(assert (=> bs!1137856 m!5700713))

(declare-fun m!5701985 () Bool)

(assert (=> bs!1137856 m!5701985))

(assert (=> b!4744604 d!1516364))

(declare-fun d!1516366 () Bool)

(declare-fun res!2010945 () Bool)

(declare-fun e!2959769 () Bool)

(assert (=> d!1516366 (=> res!2010945 e!2959769)))

(assert (=> d!1516366 (= res!2010945 (and ((_ is Cons!52979) oldBucket!34) (= (_1!30627 (h!59368 oldBucket!34)) key!4653)))))

(assert (=> d!1516366 (= (containsKey!3497 oldBucket!34 key!4653) e!2959769)))

(declare-fun b!4745040 () Bool)

(declare-fun e!2959770 () Bool)

(assert (=> b!4745040 (= e!2959769 e!2959770)))

(declare-fun res!2010946 () Bool)

(assert (=> b!4745040 (=> (not res!2010946) (not e!2959770))))

(assert (=> b!4745040 (= res!2010946 ((_ is Cons!52979) oldBucket!34))))

(declare-fun b!4745041 () Bool)

(assert (=> b!4745041 (= e!2959770 (containsKey!3497 (t!360409 oldBucket!34) key!4653))))

(assert (= (and d!1516366 (not res!2010945)) b!4745040))

(assert (= (and b!4745040 res!2010946) b!4745041))

(assert (=> b!4745041 m!5700721))

(assert (=> b!4744604 d!1516366))

(declare-fun d!1516368 () Bool)

(declare-fun e!2959777 () Bool)

(assert (=> d!1516368 e!2959777))

(declare-fun res!2010949 () Bool)

(assert (=> d!1516368 (=> res!2010949 e!2959777)))

(declare-fun lt!1908124 () Bool)

(assert (=> d!1516368 (= res!2010949 (not lt!1908124))))

(declare-fun lt!1908123 () Bool)

(assert (=> d!1516368 (= lt!1908124 lt!1908123)))

(declare-fun lt!1908122 () Unit!134101)

(declare-fun e!2959778 () Unit!134101)

(assert (=> d!1516368 (= lt!1908122 e!2959778)))

(declare-fun c!810511 () Bool)

(assert (=> d!1516368 (= c!810511 lt!1908123)))

(declare-fun containsKey!3501 (List!53104 (_ BitVec 64)) Bool)

(assert (=> d!1516368 (= lt!1908123 (containsKey!3501 (toList!6026 lm!2023) lt!1907493))))

(assert (=> d!1516368 (= (contains!16405 lm!2023 lt!1907493) lt!1908124)))

(declare-fun b!4745050 () Bool)

(declare-fun lt!1908125 () Unit!134101)

(assert (=> b!4745050 (= e!2959778 lt!1908125)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1928 (List!53104 (_ BitVec 64)) Unit!134101)

(assert (=> b!4745050 (= lt!1908125 (lemmaContainsKeyImpliesGetValueByKeyDefined!1928 (toList!6026 lm!2023) lt!1907493))))

(declare-fun isDefined!9741 (Option!12487) Bool)

(assert (=> b!4745050 (isDefined!9741 (getValueByKey!2037 (toList!6026 lm!2023) lt!1907493))))

(declare-fun b!4745051 () Bool)

(declare-fun Unit!134222 () Unit!134101)

(assert (=> b!4745051 (= e!2959778 Unit!134222)))

(declare-fun b!4745052 () Bool)

(assert (=> b!4745052 (= e!2959777 (isDefined!9741 (getValueByKey!2037 (toList!6026 lm!2023) lt!1907493)))))

(assert (= (and d!1516368 c!810511) b!4745050))

(assert (= (and d!1516368 (not c!810511)) b!4745051))

(assert (= (and d!1516368 (not res!2010949)) b!4745052))

(declare-fun m!5701989 () Bool)

(assert (=> d!1516368 m!5701989))

(declare-fun m!5701991 () Bool)

(assert (=> b!4745050 m!5701991))

(assert (=> b!4745050 m!5701969))

(assert (=> b!4745050 m!5701969))

(declare-fun m!5701993 () Bool)

(assert (=> b!4745050 m!5701993))

(assert (=> b!4745052 m!5701969))

(assert (=> b!4745052 m!5701969))

(assert (=> b!4745052 m!5701993))

(assert (=> b!4744604 d!1516368))

(declare-fun d!1516374 () Bool)

(declare-fun lt!1908128 () Bool)

(declare-fun content!9489 (List!53104) (InoxSet tuple2!54668))

(assert (=> d!1516374 (= lt!1908128 (select (content!9489 (toList!6026 lm!2023)) lt!1907492))))

(declare-fun e!2959784 () Bool)

(assert (=> d!1516374 (= lt!1908128 e!2959784)))

(declare-fun res!2010954 () Bool)

(assert (=> d!1516374 (=> (not res!2010954) (not e!2959784))))

(assert (=> d!1516374 (= res!2010954 ((_ is Cons!52980) (toList!6026 lm!2023)))))

(assert (=> d!1516374 (= (contains!16404 (toList!6026 lm!2023) lt!1907492) lt!1908128)))

(declare-fun b!4745057 () Bool)

(declare-fun e!2959783 () Bool)

(assert (=> b!4745057 (= e!2959784 e!2959783)))

(declare-fun res!2010955 () Bool)

(assert (=> b!4745057 (=> res!2010955 e!2959783)))

(assert (=> b!4745057 (= res!2010955 (= (h!59369 (toList!6026 lm!2023)) lt!1907492))))

(declare-fun b!4745058 () Bool)

(assert (=> b!4745058 (= e!2959783 (contains!16404 (t!360410 (toList!6026 lm!2023)) lt!1907492))))

(assert (= (and d!1516374 res!2010954) b!4745057))

(assert (= (and b!4745057 (not res!2010955)) b!4745058))

(declare-fun m!5701995 () Bool)

(assert (=> d!1516374 m!5701995))

(declare-fun m!5701997 () Bool)

(assert (=> d!1516374 m!5701997))

(declare-fun m!5701999 () Bool)

(assert (=> b!4745058 m!5701999))

(assert (=> b!4744604 d!1516374))

(declare-fun b!4745075 () Bool)

(declare-fun e!2959795 () Bool)

(declare-fun lt!1908131 () Option!12483)

(declare-fun get!17823 (Option!12483) tuple2!54666)

(assert (=> b!4745075 (= e!2959795 (contains!16408 lt!1907494 (get!17823 lt!1908131)))))

(declare-fun b!4745076 () Bool)

(declare-fun e!2959797 () Option!12483)

(assert (=> b!4745076 (= e!2959797 None!12482)))

(declare-fun b!4745077 () Bool)

(declare-fun res!2010966 () Bool)

(assert (=> b!4745077 (=> (not res!2010966) (not e!2959795))))

(assert (=> b!4745077 (= res!2010966 (= (_1!30627 (get!17823 lt!1908131)) key!4653))))

(declare-fun d!1516376 () Bool)

(declare-fun e!2959799 () Bool)

(assert (=> d!1516376 e!2959799))

(declare-fun res!2010965 () Bool)

(assert (=> d!1516376 (=> res!2010965 e!2959799)))

(declare-fun e!2959796 () Bool)

(assert (=> d!1516376 (= res!2010965 e!2959796)))

(declare-fun res!2010967 () Bool)

(assert (=> d!1516376 (=> (not res!2010967) (not e!2959796))))

(assert (=> d!1516376 (= res!2010967 (isEmpty!29245 lt!1908131))))

(declare-fun e!2959798 () Option!12483)

(assert (=> d!1516376 (= lt!1908131 e!2959798)))

(declare-fun c!810516 () Bool)

(assert (=> d!1516376 (= c!810516 (and ((_ is Cons!52979) lt!1907494) (= (_1!30627 (h!59368 lt!1907494)) key!4653)))))

(assert (=> d!1516376 (noDuplicateKeys!2068 lt!1907494)))

(assert (=> d!1516376 (= (getPair!608 lt!1907494 key!4653) lt!1908131)))

(declare-fun b!4745078 () Bool)

(assert (=> b!4745078 (= e!2959797 (getPair!608 (t!360409 lt!1907494) key!4653))))

(declare-fun b!4745079 () Bool)

(assert (=> b!4745079 (= e!2959798 (Some!12482 (h!59368 lt!1907494)))))

(declare-fun b!4745080 () Bool)

(assert (=> b!4745080 (= e!2959798 e!2959797)))

(declare-fun c!810517 () Bool)

(assert (=> b!4745080 (= c!810517 ((_ is Cons!52979) lt!1907494))))

(declare-fun b!4745081 () Bool)

(assert (=> b!4745081 (= e!2959796 (not (containsKey!3497 lt!1907494 key!4653)))))

(declare-fun b!4745082 () Bool)

(assert (=> b!4745082 (= e!2959799 e!2959795)))

(declare-fun res!2010964 () Bool)

(assert (=> b!4745082 (=> (not res!2010964) (not e!2959795))))

(assert (=> b!4745082 (= res!2010964 (isDefined!9737 lt!1908131))))

(assert (= (and d!1516376 c!810516) b!4745079))

(assert (= (and d!1516376 (not c!810516)) b!4745080))

(assert (= (and b!4745080 c!810517) b!4745078))

(assert (= (and b!4745080 (not c!810517)) b!4745076))

(assert (= (and d!1516376 res!2010967) b!4745081))

(assert (= (and d!1516376 (not res!2010965)) b!4745082))

(assert (= (and b!4745082 res!2010964) b!4745077))

(assert (= (and b!4745077 res!2010966) b!4745075))

(declare-fun m!5702001 () Bool)

(assert (=> b!4745081 m!5702001))

(declare-fun m!5702003 () Bool)

(assert (=> b!4745082 m!5702003))

(declare-fun m!5702005 () Bool)

(assert (=> b!4745077 m!5702005))

(declare-fun m!5702007 () Bool)

(assert (=> b!4745078 m!5702007))

(declare-fun m!5702009 () Bool)

(assert (=> d!1516376 m!5702009))

(declare-fun m!5702011 () Bool)

(assert (=> d!1516376 m!5702011))

(assert (=> b!4745075 m!5702005))

(assert (=> b!4745075 m!5702005))

(declare-fun m!5702013 () Bool)

(assert (=> b!4745075 m!5702013))

(assert (=> b!4744604 d!1516376))

(declare-fun bs!1137859 () Bool)

(declare-fun d!1516378 () Bool)

(assert (= bs!1137859 (and d!1516378 d!1516304)))

(declare-fun lambda!220098 () Int)

(assert (=> bs!1137859 (= lambda!220098 lambda!220085)))

(declare-fun bs!1137860 () Bool)

(assert (= bs!1137860 (and d!1516378 d!1516332)))

(assert (=> bs!1137860 (= lambda!220098 lambda!220087)))

(declare-fun bs!1137861 () Bool)

(assert (= bs!1137861 (and d!1516378 d!1516186)))

(assert (=> bs!1137861 (= lambda!220098 lambda!220039)))

(declare-fun bs!1137862 () Bool)

(assert (= bs!1137862 (and d!1516378 d!1516076)))

(assert (=> bs!1137862 (not (= lambda!220098 lambda!219948))))

(declare-fun bs!1137863 () Bool)

(assert (= bs!1137863 (and d!1516378 start!484320)))

(assert (=> bs!1137863 (= lambda!220098 lambda!219930)))

(declare-fun bs!1137864 () Bool)

(assert (= bs!1137864 (and d!1516378 d!1516268)))

(assert (=> bs!1137864 (= lambda!220098 lambda!220073)))

(declare-fun bs!1137865 () Bool)

(assert (= bs!1137865 (and d!1516378 d!1516246)))

(assert (=> bs!1137865 (= lambda!220098 lambda!220059)))

(declare-fun bs!1137866 () Bool)

(assert (= bs!1137866 (and d!1516378 d!1516182)))

(assert (=> bs!1137866 (= lambda!220098 lambda!220037)))

(declare-fun bs!1137867 () Bool)

(assert (= bs!1137867 (and d!1516378 d!1516322)))

(assert (=> bs!1137867 (= lambda!220098 lambda!220086)))

(declare-fun bs!1137868 () Bool)

(assert (= bs!1137868 (and d!1516378 d!1516188)))

(assert (=> bs!1137868 (= lambda!220098 lambda!220041)))

(declare-fun bs!1137869 () Bool)

(assert (= bs!1137869 (and d!1516378 d!1516068)))

(assert (=> bs!1137869 (= lambda!220098 lambda!219936)))

(declare-fun bs!1137870 () Bool)

(assert (= bs!1137870 (and d!1516378 d!1516240)))

(assert (=> bs!1137870 (= lambda!220098 lambda!220054)))

(declare-fun bs!1137871 () Bool)

(assert (= bs!1137871 (and d!1516378 d!1516252)))

(assert (=> bs!1137871 (= lambda!220098 lambda!220060)))

(declare-fun bs!1137872 () Bool)

(assert (= bs!1137872 (and d!1516378 d!1516122)))

(assert (=> bs!1137872 (= lambda!220098 lambda!220012)))

(declare-fun bs!1137873 () Bool)

(assert (= bs!1137873 (and d!1516378 d!1516338)))

(assert (=> bs!1137873 (= lambda!220098 lambda!220088)))

(declare-fun bs!1137874 () Bool)

(assert (= bs!1137874 (and d!1516378 d!1516344)))

(assert (=> bs!1137874 (= lambda!220098 lambda!220091)))

(declare-fun e!2959805 () Bool)

(declare-fun b!4745093 () Bool)

(assert (=> b!4745093 (= e!2959805 (isDefined!9737 (getPair!608 (apply!12493 lm!2023 (hash!4480 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1908151 () Unit!134101)

(assert (=> b!4745093 (= lt!1908151 (forallContained!3741 (toList!6026 lm!2023) lambda!220098 (tuple2!54669 (hash!4480 hashF!1323 key!4653) (apply!12493 lm!2023 (hash!4480 hashF!1323 key!4653)))))))

(declare-fun lt!1908152 () Unit!134101)

(declare-fun lt!1908148 () Unit!134101)

(assert (=> b!4745093 (= lt!1908152 lt!1908148)))

(declare-fun lt!1908154 () (_ BitVec 64))

(declare-fun lt!1908155 () List!53103)

(assert (=> b!4745093 (contains!16404 (toList!6026 lm!2023) (tuple2!54669 lt!1908154 lt!1908155))))

(assert (=> b!4745093 (= lt!1908148 (lemmaGetValueImpliesTupleContained!413 lm!2023 lt!1908154 lt!1908155))))

(declare-fun e!2959804 () Bool)

(assert (=> b!4745093 e!2959804))

(declare-fun res!2010979 () Bool)

(assert (=> b!4745093 (=> (not res!2010979) (not e!2959804))))

(assert (=> b!4745093 (= res!2010979 (contains!16405 lm!2023 lt!1908154))))

(assert (=> b!4745093 (= lt!1908155 (apply!12493 lm!2023 (hash!4480 hashF!1323 key!4653)))))

(assert (=> b!4745093 (= lt!1908154 (hash!4480 hashF!1323 key!4653))))

(declare-fun lt!1908150 () Unit!134101)

(declare-fun lt!1908149 () Unit!134101)

(assert (=> b!4745093 (= lt!1908150 lt!1908149)))

(assert (=> b!4745093 (contains!16405 lm!2023 (hash!4480 hashF!1323 key!4653))))

(assert (=> b!4745093 (= lt!1908149 (lemmaInGenMapThenLongMapContainsHash!814 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1516378 e!2959805))

(declare-fun res!2010977 () Bool)

(assert (=> d!1516378 (=> (not res!2010977) (not e!2959805))))

(assert (=> d!1516378 (= res!2010977 (forall!11701 (toList!6026 lm!2023) lambda!220098))))

(declare-fun lt!1908153 () Unit!134101)

(declare-fun choose!33735 (ListLongMap!4555 K!14320 Hashable!6437) Unit!134101)

(assert (=> d!1516378 (= lt!1908153 (choose!33735 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1516378 (forall!11701 (toList!6026 lm!2023) lambda!220098)))

(assert (=> d!1516378 (= (lemmaInGenMapThenGetPairDefined!404 lm!2023 key!4653 hashF!1323) lt!1908153)))

(declare-fun b!4745094 () Bool)

(assert (=> b!4745094 (= e!2959804 (= (getValueByKey!2037 (toList!6026 lm!2023) lt!1908154) (Some!12486 lt!1908155)))))

(declare-fun b!4745091 () Bool)

(declare-fun res!2010978 () Bool)

(assert (=> b!4745091 (=> (not res!2010978) (not e!2959805))))

(assert (=> b!4745091 (= res!2010978 (allKeysSameHashInMap!1982 lm!2023 hashF!1323))))

(declare-fun b!4745092 () Bool)

(declare-fun res!2010976 () Bool)

(assert (=> b!4745092 (=> (not res!2010976) (not e!2959805))))

(assert (=> b!4745092 (= res!2010976 (contains!16406 (extractMap!2094 (toList!6026 lm!2023)) key!4653))))

(assert (= (and d!1516378 res!2010977) b!4745091))

(assert (= (and b!4745091 res!2010978) b!4745092))

(assert (= (and b!4745092 res!2010976) b!4745093))

(assert (= (and b!4745093 res!2010979) b!4745094))

(assert (=> b!4745092 m!5700735))

(assert (=> b!4745092 m!5700735))

(declare-fun m!5702015 () Bool)

(assert (=> b!4745092 m!5702015))

(declare-fun m!5702017 () Bool)

(assert (=> b!4745093 m!5702017))

(declare-fun m!5702019 () Bool)

(assert (=> b!4745093 m!5702019))

(declare-fun m!5702021 () Bool)

(assert (=> b!4745093 m!5702021))

(declare-fun m!5702023 () Bool)

(assert (=> b!4745093 m!5702023))

(declare-fun m!5702025 () Bool)

(assert (=> b!4745093 m!5702025))

(assert (=> b!4745093 m!5700591))

(declare-fun m!5702027 () Bool)

(assert (=> b!4745093 m!5702027))

(assert (=> b!4745093 m!5702021))

(assert (=> b!4745093 m!5700591))

(assert (=> b!4745093 m!5701963))

(assert (=> b!4745093 m!5700591))

(assert (=> b!4745093 m!5702027))

(assert (=> b!4745093 m!5700731))

(declare-fun m!5702029 () Bool)

(assert (=> b!4745093 m!5702029))

(declare-fun m!5702031 () Bool)

(assert (=> d!1516378 m!5702031))

(declare-fun m!5702033 () Bool)

(assert (=> d!1516378 m!5702033))

(assert (=> d!1516378 m!5702031))

(assert (=> b!4745091 m!5700671))

(declare-fun m!5702035 () Bool)

(assert (=> b!4745094 m!5702035))

(assert (=> b!4744604 d!1516378))

(declare-fun b!4745099 () Bool)

(declare-fun e!2959808 () Bool)

(declare-fun tp!1349430 () Bool)

(declare-fun tp!1349431 () Bool)

(assert (=> b!4745099 (= e!2959808 (and tp!1349430 tp!1349431))))

(assert (=> b!4744603 (= tp!1349413 e!2959808)))

(assert (= (and b!4744603 ((_ is Cons!52980) (toList!6026 lm!2023))) b!4745099))

(declare-fun tp!1349434 () Bool)

(declare-fun e!2959811 () Bool)

(declare-fun b!4745104 () Bool)

(assert (=> b!4745104 (= e!2959811 (and tp_is_empty!31565 tp_is_empty!31567 tp!1349434))))

(assert (=> b!4744612 (= tp!1349414 e!2959811)))

(assert (= (and b!4744612 ((_ is Cons!52979) (t!360409 oldBucket!34))) b!4745104))

(declare-fun b!4745105 () Bool)

(declare-fun e!2959812 () Bool)

(declare-fun tp!1349435 () Bool)

(assert (=> b!4745105 (= e!2959812 (and tp_is_empty!31565 tp_is_empty!31567 tp!1349435))))

(assert (=> b!4744615 (= tp!1349415 e!2959812)))

(assert (= (and b!4744615 ((_ is Cons!52979) (t!360409 newBucket!218))) b!4745105))

(declare-fun b_lambda!182681 () Bool)

(assert (= b_lambda!182673 (or start!484320 b_lambda!182681)))

(declare-fun bs!1137875 () Bool)

(declare-fun d!1516380 () Bool)

(assert (= bs!1137875 (and d!1516380 start!484320)))

(assert (=> bs!1137875 (= (dynLambda!21883 lambda!219930 (h!59369 (toList!6026 lm!2023))) (noDuplicateKeys!2068 (_2!30628 (h!59369 (toList!6026 lm!2023)))))))

(assert (=> bs!1137875 m!5701049))

(assert (=> b!4744998 d!1516380))

(declare-fun b_lambda!182683 () Bool)

(assert (= b_lambda!182675 (or start!484320 b_lambda!182683)))

(declare-fun bs!1137876 () Bool)

(declare-fun d!1516382 () Bool)

(assert (= bs!1137876 (and d!1516382 start!484320)))

(assert (=> bs!1137876 (= (dynLambda!21883 lambda!219930 lt!1907492) (noDuplicateKeys!2068 (_2!30628 lt!1907492)))))

(declare-fun m!5702037 () Bool)

(assert (=> bs!1137876 m!5702037))

(assert (=> d!1516358 d!1516382))

(check-sat (not bm!332079) (not b!4744717) (not bm!332084) (not d!1516154) (not b!4744982) (not d!1516376) (not b!4744820) (not d!1516246) (not bm!332082) (not d!1516338) (not b!4744984) (not b!4744895) (not d!1516182) (not b!4744768) (not d!1516374) (not b!4744970) (not b!4744832) (not d!1516172) (not d!1516244) (not b!4744990) (not b!4745058) (not b!4744945) (not b!4744814) (not d!1516112) (not b!4744843) (not b!4744948) (not d!1516216) (not d!1516340) (not b!4744904) (not d!1516358) (not b!4744944) (not d!1516282) (not b!4744950) (not b!4744842) (not b!4744942) (not b!4744889) (not b!4744920) (not b!4745078) (not b!4744890) (not d!1516086) (not b!4745017) (not bs!1137875) (not bm!332089) (not b!4744991) (not b!4744985) (not b!4744816) (not b!4744681) (not b!4744981) (not b!4744894) (not d!1516168) (not d!1516356) (not d!1516124) (not b!4744753) (not b_lambda!182681) (not d!1516360) (not b!4745099) (not b!4744770) (not b!4744893) (not b!4745094) (not d!1516186) (not b!4744771) (not b!4744988) (not bm!332080) (not d!1516160) (not d!1516122) (not d!1516068) (not d!1516188) (not b!4745041) (not b!4745034) (not b!4744693) (not b!4744840) (not d!1516136) (not d!1516114) (not b!4744921) (not b!4744999) (not d!1516364) (not b!4745092) (not d!1516378) (not b!4744896) (not b!4745019) (not d!1516290) (not bm!332087) (not b!4744983) (not b!4745093) (not d!1516174) (not b!4745011) (not b!4744635) (not d!1516344) (not b!4745081) (not b!4744813) (not b!4744989) (not d!1516296) (not b!4744752) (not bm!332086) (not d!1516286) (not b!4744992) (not bm!332078) (not b!4745000) (not d!1516284) (not d!1516298) (not b_lambda!182683) (not b!4745091) (not d!1516280) (not d!1516198) (not b!4744947) (not bm!332054) (not d!1516072) (not d!1516294) (not bm!332055) (not d!1516368) tp_is_empty!31567 (not b!4744836) (not d!1516146) (not d!1516252) (not d!1516196) (not d!1516268) (not d!1516098) (not d!1516240) (not d!1516050) (not b!4744975) (not d!1516044) (not bm!332081) (not d!1516130) (not b!4745052) (not b!4744919) (not d!1516256) (not b!4745075) (not d!1516194) (not d!1516288) (not b!4744936) (not b!4745104) (not d!1516076) (not b!4744682) (not b!4744953) (not bm!332083) (not b!4744853) (not d!1516214) (not d!1516142) (not b!4745082) (not d!1516066) (not b!4744906) (not b!4744769) (not b!4745105) (not b!4744922) (not d!1516126) (not b!4744817) (not bs!1137876) (not bm!332088) (not d!1516192) (not b!4744916) (not b!4744888) (not bm!332085) (not d!1516156) (not d!1516332) (not b!4744924) (not b!4745050) (not b!4744897) (not b!4744925) (not d!1516128) (not b!4744949) (not d!1516300) (not b!4745015) (not d!1516254) (not b!4744634) (not bm!332094) (not bm!332056) tp_is_empty!31565 (not b!4745077) (not d!1516322) (not b!4744974) (not b!4744837) (not bm!332074) (not d!1516110) (not b!4745024) (not d!1516100) (not d!1516342) (not d!1516276) (not d!1516148) (not b!4744993) (not d!1516272) (not d!1516304) (not b!4744952) (not b!4744908) (not d!1516144) (not d!1516152) (not b!4744917))
(check-sat)
