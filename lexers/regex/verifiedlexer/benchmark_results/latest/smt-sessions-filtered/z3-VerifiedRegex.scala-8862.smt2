; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473352 () Bool)

(assert start!473352)

(declare-fun b!4684715 () Bool)

(declare-fun e!2922701 () Bool)

(declare-fun e!2922708 () Bool)

(assert (=> b!4684715 (= e!2922701 e!2922708)))

(declare-fun res!1975082 () Bool)

(assert (=> b!4684715 (=> res!1975082 e!2922708)))

(declare-datatypes ((K!13715 0))(
  ( (K!13716 (val!19243 Int)) )
))
(declare-fun key!4653 () K!13715)

(declare-datatypes ((V!13961 0))(
  ( (V!13962 (val!19244 Int)) )
))
(declare-datatypes ((tuple2!53698 0))(
  ( (tuple2!53699 (_1!30143 K!13715) (_2!30143 V!13961)) )
))
(declare-datatypes ((List!52459 0))(
  ( (Nil!52335) (Cons!52335 (h!58562 tuple2!53698) (t!359621 List!52459)) )
))
(declare-fun oldBucket!34 () List!52459)

(declare-fun lt!1843992 () List!52459)

(declare-fun removePairForKey!1421 (List!52459 K!13715) List!52459)

(declare-fun tail!8516 (List!52459) List!52459)

(assert (=> b!4684715 (= res!1975082 (not (= (removePairForKey!1421 (tail!8516 oldBucket!34) key!4653) lt!1843992)))))

(declare-fun newBucket!218 () List!52459)

(assert (=> b!4684715 (= lt!1843992 (tail!8516 newBucket!218))))

(declare-fun res!1975073 () Bool)

(declare-fun e!2922704 () Bool)

(assert (=> start!473352 (=> (not res!1975073) (not e!2922704))))

(declare-datatypes ((tuple2!53700 0))(
  ( (tuple2!53701 (_1!30144 (_ BitVec 64)) (_2!30144 List!52459)) )
))
(declare-datatypes ((List!52460 0))(
  ( (Nil!52336) (Cons!52336 (h!58563 tuple2!53700) (t!359622 List!52460)) )
))
(declare-datatypes ((ListLongMap!4071 0))(
  ( (ListLongMap!4072 (toList!5541 List!52460)) )
))
(declare-fun lm!2023 () ListLongMap!4071)

(declare-fun lambda!205707 () Int)

(declare-fun forall!11275 (List!52460 Int) Bool)

(assert (=> start!473352 (= res!1975073 (forall!11275 (toList!5541 lm!2023) lambda!205707))))

(assert (=> start!473352 e!2922704))

(declare-fun e!2922710 () Bool)

(declare-fun inv!67589 (ListLongMap!4071) Bool)

(assert (=> start!473352 (and (inv!67589 lm!2023) e!2922710)))

(declare-fun tp_is_empty!30597 () Bool)

(assert (=> start!473352 tp_is_empty!30597))

(declare-fun e!2922702 () Bool)

(assert (=> start!473352 e!2922702))

(assert (=> start!473352 true))

(declare-fun e!2922706 () Bool)

(assert (=> start!473352 e!2922706))

(declare-fun b!4684716 () Bool)

(declare-fun e!2922705 () Bool)

(declare-fun e!2922707 () Bool)

(assert (=> b!4684716 (= e!2922705 e!2922707)))

(declare-fun res!1975083 () Bool)

(assert (=> b!4684716 (=> (not res!1975083) (not e!2922707))))

(declare-fun lt!1843994 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4684716 (= res!1975083 (= lt!1843994 hash!405))))

(declare-datatypes ((Hashable!6195 0))(
  ( (HashableExt!6194 (__x!31898 Int)) )
))
(declare-fun hashF!1323 () Hashable!6195)

(declare-fun hash!4019 (Hashable!6195 K!13715) (_ BitVec 64))

(assert (=> b!4684716 (= lt!1843994 (hash!4019 hashF!1323 key!4653))))

(declare-fun b!4684717 () Bool)

(declare-fun lt!1843995 () List!52460)

(assert (=> b!4684717 (= e!2922708 (forall!11275 lt!1843995 lambda!205707))))

(declare-datatypes ((ListMap!4905 0))(
  ( (ListMap!4906 (toList!5542 List!52459)) )
))
(declare-fun contains!15488 (ListMap!4905 K!13715) Bool)

(declare-fun extractMap!1852 (List!52460) ListMap!4905)

(assert (=> b!4684717 (contains!15488 (extractMap!1852 lt!1843995) key!4653)))

(declare-datatypes ((Unit!123153 0))(
  ( (Unit!123154) )
))
(declare-fun lt!1843988 () Unit!123153)

(declare-fun lemmaListContainsThenExtractedMapContains!418 (ListLongMap!4071 K!13715 Hashable!6195) Unit!123153)

(assert (=> b!4684717 (= lt!1843988 (lemmaListContainsThenExtractedMapContains!418 (ListLongMap!4072 lt!1843995) key!4653 hashF!1323))))

(assert (=> b!4684717 (= lt!1843995 (Cons!52336 (tuple2!53701 hash!405 (t!359621 oldBucket!34)) (t!359622 (toList!5541 lm!2023))))))

(declare-fun b!4684718 () Bool)

(declare-fun res!1975084 () Bool)

(assert (=> b!4684718 (=> (not res!1975084) (not e!2922704))))

(declare-fun noDuplicateKeys!1826 (List!52459) Bool)

(assert (=> b!4684718 (= res!1975084 (noDuplicateKeys!1826 oldBucket!34))))

(declare-fun b!4684719 () Bool)

(declare-fun res!1975072 () Bool)

(assert (=> b!4684719 (=> (not res!1975072) (not e!2922707))))

(declare-fun allKeysSameHash!1652 (List!52459 (_ BitVec 64) Hashable!6195) Bool)

(assert (=> b!4684719 (= res!1975072 (allKeysSameHash!1652 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4684720 () Bool)

(declare-fun e!2922703 () Bool)

(declare-fun lt!1843991 () ListMap!4905)

(declare-fun addToMapMapFromBucket!1258 (List!52459 ListMap!4905) ListMap!4905)

(assert (=> b!4684720 (= e!2922703 (= lt!1843991 (addToMapMapFromBucket!1258 (_2!30144 (h!58563 (toList!5541 lm!2023))) (extractMap!1852 (t!359622 (toList!5541 lm!2023))))))))

(declare-fun b!4684721 () Bool)

(declare-fun res!1975079 () Bool)

(assert (=> b!4684721 (=> (not res!1975079) (not e!2922707))))

(get-info :version)

(assert (=> b!4684721 (= res!1975079 ((_ is Cons!52336) (toList!5541 lm!2023)))))

(declare-fun b!4684722 () Bool)

(declare-fun res!1975076 () Bool)

(assert (=> b!4684722 (=> (not res!1975076) (not e!2922704))))

(assert (=> b!4684722 (= res!1975076 (noDuplicateKeys!1826 newBucket!218))))

(declare-fun b!4684723 () Bool)

(declare-fun tp_is_empty!30599 () Bool)

(declare-fun tp!1345484 () Bool)

(assert (=> b!4684723 (= e!2922706 (and tp_is_empty!30597 tp_is_empty!30599 tp!1345484))))

(declare-fun b!4684724 () Bool)

(declare-fun e!2922709 () Bool)

(assert (=> b!4684724 (= e!2922707 (not e!2922709))))

(declare-fun res!1975078 () Bool)

(assert (=> b!4684724 (=> res!1975078 e!2922709)))

(assert (=> b!4684724 (= res!1975078 (or (and ((_ is Cons!52335) oldBucket!34) (= (_1!30143 (h!58562 oldBucket!34)) key!4653)) (not ((_ is Cons!52335) oldBucket!34)) (= (_1!30143 (h!58562 oldBucket!34)) key!4653)))))

(assert (=> b!4684724 e!2922703))

(declare-fun res!1975074 () Bool)

(assert (=> b!4684724 (=> (not res!1975074) (not e!2922703))))

(declare-fun tail!8517 (ListLongMap!4071) ListLongMap!4071)

(assert (=> b!4684724 (= res!1975074 (= (t!359622 (toList!5541 lm!2023)) (toList!5541 (tail!8517 lm!2023))))))

(declare-fun b!4684725 () Bool)

(declare-fun res!1975077 () Bool)

(assert (=> b!4684725 (=> (not res!1975077) (not e!2922704))))

(assert (=> b!4684725 (= res!1975077 (= (removePairForKey!1421 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4684726 () Bool)

(declare-fun res!1975080 () Bool)

(assert (=> b!4684726 (=> res!1975080 e!2922708)))

(assert (=> b!4684726 (= res!1975080 (not (= (removePairForKey!1421 (t!359621 oldBucket!34) key!4653) lt!1843992)))))

(declare-fun b!4684727 () Bool)

(declare-fun res!1975075 () Bool)

(assert (=> b!4684727 (=> (not res!1975075) (not e!2922707))))

(declare-fun head!9920 (List!52460) tuple2!53700)

(assert (=> b!4684727 (= res!1975075 (= (head!9920 (toList!5541 lm!2023)) (tuple2!53701 hash!405 oldBucket!34)))))

(declare-fun b!4684728 () Bool)

(assert (=> b!4684728 (= e!2922704 e!2922705)))

(declare-fun res!1975085 () Bool)

(assert (=> b!4684728 (=> (not res!1975085) (not e!2922705))))

(assert (=> b!4684728 (= res!1975085 (contains!15488 lt!1843991 key!4653))))

(assert (=> b!4684728 (= lt!1843991 (extractMap!1852 (toList!5541 lm!2023)))))

(declare-fun b!4684729 () Bool)

(declare-fun res!1975081 () Bool)

(assert (=> b!4684729 (=> (not res!1975081) (not e!2922707))))

(declare-fun allKeysSameHashInMap!1740 (ListLongMap!4071 Hashable!6195) Bool)

(assert (=> b!4684729 (= res!1975081 (allKeysSameHashInMap!1740 lm!2023 hashF!1323))))

(declare-fun b!4684730 () Bool)

(declare-fun tp!1345485 () Bool)

(assert (=> b!4684730 (= e!2922702 (and tp_is_empty!30597 tp_is_empty!30599 tp!1345485))))

(declare-fun b!4684731 () Bool)

(declare-fun res!1975086 () Bool)

(assert (=> b!4684731 (=> (not res!1975086) (not e!2922704))))

(assert (=> b!4684731 (= res!1975086 (allKeysSameHash!1652 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4684732 () Bool)

(assert (=> b!4684732 (= e!2922709 e!2922701)))

(declare-fun res!1975087 () Bool)

(assert (=> b!4684732 (=> res!1975087 e!2922701)))

(declare-fun containsKey!2989 (List!52459 K!13715) Bool)

(assert (=> b!4684732 (= res!1975087 (not (containsKey!2989 (t!359621 oldBucket!34) key!4653)))))

(assert (=> b!4684732 (containsKey!2989 oldBucket!34 key!4653)))

(declare-fun lt!1843987 () Unit!123153)

(declare-fun lemmaGetPairDefinedThenContainsKey!178 (List!52459 K!13715 Hashable!6195) Unit!123153)

(assert (=> b!4684732 (= lt!1843987 (lemmaGetPairDefinedThenContainsKey!178 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1843996 () List!52459)

(declare-datatypes ((Option!12013 0))(
  ( (None!12012) (Some!12012 (v!46391 tuple2!53698)) )
))
(declare-fun isDefined!9268 (Option!12013) Bool)

(declare-fun getPair!430 (List!52459 K!13715) Option!12013)

(assert (=> b!4684732 (isDefined!9268 (getPair!430 lt!1843996 key!4653))))

(declare-fun lt!1843993 () Unit!123153)

(declare-fun lt!1843989 () tuple2!53700)

(declare-fun forallContained!3382 (List!52460 Int tuple2!53700) Unit!123153)

(assert (=> b!4684732 (= lt!1843993 (forallContained!3382 (toList!5541 lm!2023) lambda!205707 lt!1843989))))

(declare-fun contains!15489 (List!52460 tuple2!53700) Bool)

(assert (=> b!4684732 (contains!15489 (toList!5541 lm!2023) lt!1843989)))

(assert (=> b!4684732 (= lt!1843989 (tuple2!53701 lt!1843994 lt!1843996))))

(declare-fun lt!1843998 () Unit!123153)

(declare-fun lemmaGetValueImpliesTupleContained!235 (ListLongMap!4071 (_ BitVec 64) List!52459) Unit!123153)

(assert (=> b!4684732 (= lt!1843998 (lemmaGetValueImpliesTupleContained!235 lm!2023 lt!1843994 lt!1843996))))

(declare-fun apply!12309 (ListLongMap!4071 (_ BitVec 64)) List!52459)

(assert (=> b!4684732 (= lt!1843996 (apply!12309 lm!2023 lt!1843994))))

(declare-fun contains!15490 (ListLongMap!4071 (_ BitVec 64)) Bool)

(assert (=> b!4684732 (contains!15490 lm!2023 lt!1843994)))

(declare-fun lt!1843990 () Unit!123153)

(declare-fun lemmaInGenMapThenLongMapContainsHash!636 (ListLongMap!4071 K!13715 Hashable!6195) Unit!123153)

(assert (=> b!4684732 (= lt!1843990 (lemmaInGenMapThenLongMapContainsHash!636 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1843997 () Unit!123153)

(declare-fun lemmaInGenMapThenGetPairDefined!226 (ListLongMap!4071 K!13715 Hashable!6195) Unit!123153)

(assert (=> b!4684732 (= lt!1843997 (lemmaInGenMapThenGetPairDefined!226 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4684733 () Bool)

(declare-fun tp!1345483 () Bool)

(assert (=> b!4684733 (= e!2922710 tp!1345483)))

(assert (= (and start!473352 res!1975073) b!4684718))

(assert (= (and b!4684718 res!1975084) b!4684722))

(assert (= (and b!4684722 res!1975076) b!4684725))

(assert (= (and b!4684725 res!1975077) b!4684731))

(assert (= (and b!4684731 res!1975086) b!4684728))

(assert (= (and b!4684728 res!1975085) b!4684716))

(assert (= (and b!4684716 res!1975083) b!4684719))

(assert (= (and b!4684719 res!1975072) b!4684729))

(assert (= (and b!4684729 res!1975081) b!4684727))

(assert (= (and b!4684727 res!1975075) b!4684721))

(assert (= (and b!4684721 res!1975079) b!4684724))

(assert (= (and b!4684724 res!1975074) b!4684720))

(assert (= (and b!4684724 (not res!1975078)) b!4684732))

(assert (= (and b!4684732 (not res!1975087)) b!4684715))

(assert (= (and b!4684715 (not res!1975082)) b!4684726))

(assert (= (and b!4684726 (not res!1975080)) b!4684717))

(assert (= start!473352 b!4684733))

(assert (= (and start!473352 ((_ is Cons!52335) oldBucket!34)) b!4684730))

(assert (= (and start!473352 ((_ is Cons!52335) newBucket!218)) b!4684723))

(declare-fun m!5583335 () Bool)

(assert (=> b!4684720 m!5583335))

(assert (=> b!4684720 m!5583335))

(declare-fun m!5583337 () Bool)

(assert (=> b!4684720 m!5583337))

(declare-fun m!5583339 () Bool)

(assert (=> start!473352 m!5583339))

(declare-fun m!5583341 () Bool)

(assert (=> start!473352 m!5583341))

(declare-fun m!5583343 () Bool)

(assert (=> b!4684732 m!5583343))

(declare-fun m!5583345 () Bool)

(assert (=> b!4684732 m!5583345))

(declare-fun m!5583347 () Bool)

(assert (=> b!4684732 m!5583347))

(declare-fun m!5583349 () Bool)

(assert (=> b!4684732 m!5583349))

(declare-fun m!5583351 () Bool)

(assert (=> b!4684732 m!5583351))

(declare-fun m!5583353 () Bool)

(assert (=> b!4684732 m!5583353))

(declare-fun m!5583355 () Bool)

(assert (=> b!4684732 m!5583355))

(declare-fun m!5583357 () Bool)

(assert (=> b!4684732 m!5583357))

(declare-fun m!5583359 () Bool)

(assert (=> b!4684732 m!5583359))

(declare-fun m!5583361 () Bool)

(assert (=> b!4684732 m!5583361))

(assert (=> b!4684732 m!5583347))

(declare-fun m!5583363 () Bool)

(assert (=> b!4684732 m!5583363))

(declare-fun m!5583365 () Bool)

(assert (=> b!4684732 m!5583365))

(declare-fun m!5583367 () Bool)

(assert (=> b!4684731 m!5583367))

(declare-fun m!5583369 () Bool)

(assert (=> b!4684724 m!5583369))

(declare-fun m!5583371 () Bool)

(assert (=> b!4684729 m!5583371))

(declare-fun m!5583373 () Bool)

(assert (=> b!4684722 m!5583373))

(declare-fun m!5583375 () Bool)

(assert (=> b!4684715 m!5583375))

(assert (=> b!4684715 m!5583375))

(declare-fun m!5583377 () Bool)

(assert (=> b!4684715 m!5583377))

(declare-fun m!5583379 () Bool)

(assert (=> b!4684715 m!5583379))

(declare-fun m!5583381 () Bool)

(assert (=> b!4684726 m!5583381))

(declare-fun m!5583383 () Bool)

(assert (=> b!4684717 m!5583383))

(declare-fun m!5583385 () Bool)

(assert (=> b!4684717 m!5583385))

(assert (=> b!4684717 m!5583385))

(declare-fun m!5583387 () Bool)

(assert (=> b!4684717 m!5583387))

(declare-fun m!5583389 () Bool)

(assert (=> b!4684717 m!5583389))

(declare-fun m!5583391 () Bool)

(assert (=> b!4684725 m!5583391))

(declare-fun m!5583393 () Bool)

(assert (=> b!4684716 m!5583393))

(declare-fun m!5583395 () Bool)

(assert (=> b!4684728 m!5583395))

(declare-fun m!5583397 () Bool)

(assert (=> b!4684728 m!5583397))

(declare-fun m!5583399 () Bool)

(assert (=> b!4684719 m!5583399))

(declare-fun m!5583401 () Bool)

(assert (=> b!4684727 m!5583401))

(declare-fun m!5583403 () Bool)

(assert (=> b!4684718 m!5583403))

(check-sat (not start!473352) (not b!4684732) (not b!4684722) (not b!4684730) tp_is_empty!30597 (not b!4684716) (not b!4684719) (not b!4684727) (not b!4684726) tp_is_empty!30599 (not b!4684724) (not b!4684715) (not b!4684728) (not b!4684725) (not b!4684731) (not b!4684729) (not b!4684733) (not b!4684718) (not b!4684723) (not b!4684720) (not b!4684717))
(check-sat)
(get-model)

(declare-fun d!1488751 () Bool)

(declare-fun res!1975092 () Bool)

(declare-fun e!2922715 () Bool)

(assert (=> d!1488751 (=> res!1975092 e!2922715)))

(assert (=> d!1488751 (= res!1975092 ((_ is Nil!52336) (toList!5541 lm!2023)))))

(assert (=> d!1488751 (= (forall!11275 (toList!5541 lm!2023) lambda!205707) e!2922715)))

(declare-fun b!4684738 () Bool)

(declare-fun e!2922716 () Bool)

(assert (=> b!4684738 (= e!2922715 e!2922716)))

(declare-fun res!1975093 () Bool)

(assert (=> b!4684738 (=> (not res!1975093) (not e!2922716))))

(declare-fun dynLambda!21695 (Int tuple2!53700) Bool)

(assert (=> b!4684738 (= res!1975093 (dynLambda!21695 lambda!205707 (h!58563 (toList!5541 lm!2023))))))

(declare-fun b!4684739 () Bool)

(assert (=> b!4684739 (= e!2922716 (forall!11275 (t!359622 (toList!5541 lm!2023)) lambda!205707))))

(assert (= (and d!1488751 (not res!1975092)) b!4684738))

(assert (= (and b!4684738 res!1975093) b!4684739))

(declare-fun b_lambda!176789 () Bool)

(assert (=> (not b_lambda!176789) (not b!4684738)))

(declare-fun m!5583405 () Bool)

(assert (=> b!4684738 m!5583405))

(declare-fun m!5583407 () Bool)

(assert (=> b!4684739 m!5583407))

(assert (=> start!473352 d!1488751))

(declare-fun d!1488755 () Bool)

(declare-fun isStrictlySorted!631 (List!52460) Bool)

(assert (=> d!1488755 (= (inv!67589 lm!2023) (isStrictlySorted!631 (toList!5541 lm!2023)))))

(declare-fun bs!1083938 () Bool)

(assert (= bs!1083938 d!1488755))

(declare-fun m!5583417 () Bool)

(assert (=> bs!1083938 m!5583417))

(assert (=> start!473352 d!1488755))

(declare-fun b!4684761 () Bool)

(declare-fun e!2922730 () List!52459)

(assert (=> b!4684761 (= e!2922730 (t!359621 oldBucket!34))))

(declare-fun b!4684763 () Bool)

(declare-fun e!2922731 () List!52459)

(assert (=> b!4684763 (= e!2922731 (Cons!52335 (h!58562 oldBucket!34) (removePairForKey!1421 (t!359621 oldBucket!34) key!4653)))))

(declare-fun b!4684764 () Bool)

(assert (=> b!4684764 (= e!2922731 Nil!52335)))

(declare-fun b!4684762 () Bool)

(assert (=> b!4684762 (= e!2922730 e!2922731)))

(declare-fun c!801116 () Bool)

(assert (=> b!4684762 (= c!801116 ((_ is Cons!52335) oldBucket!34))))

(declare-fun d!1488759 () Bool)

(declare-fun lt!1844022 () List!52459)

(assert (=> d!1488759 (not (containsKey!2989 lt!1844022 key!4653))))

(assert (=> d!1488759 (= lt!1844022 e!2922730)))

(declare-fun c!801115 () Bool)

(assert (=> d!1488759 (= c!801115 (and ((_ is Cons!52335) oldBucket!34) (= (_1!30143 (h!58562 oldBucket!34)) key!4653)))))

(assert (=> d!1488759 (noDuplicateKeys!1826 oldBucket!34)))

(assert (=> d!1488759 (= (removePairForKey!1421 oldBucket!34 key!4653) lt!1844022)))

(assert (= (and d!1488759 c!801115) b!4684761))

(assert (= (and d!1488759 (not c!801115)) b!4684762))

(assert (= (and b!4684762 c!801116) b!4684763))

(assert (= (and b!4684762 (not c!801116)) b!4684764))

(assert (=> b!4684763 m!5583381))

(declare-fun m!5583435 () Bool)

(assert (=> d!1488759 m!5583435))

(assert (=> d!1488759 m!5583403))

(assert (=> b!4684725 d!1488759))

(declare-fun b!4684765 () Bool)

(declare-fun e!2922732 () List!52459)

(assert (=> b!4684765 (= e!2922732 (t!359621 (tail!8516 oldBucket!34)))))

(declare-fun b!4684767 () Bool)

(declare-fun e!2922733 () List!52459)

(assert (=> b!4684767 (= e!2922733 (Cons!52335 (h!58562 (tail!8516 oldBucket!34)) (removePairForKey!1421 (t!359621 (tail!8516 oldBucket!34)) key!4653)))))

(declare-fun b!4684768 () Bool)

(assert (=> b!4684768 (= e!2922733 Nil!52335)))

(declare-fun b!4684766 () Bool)

(assert (=> b!4684766 (= e!2922732 e!2922733)))

(declare-fun c!801118 () Bool)

(assert (=> b!4684766 (= c!801118 ((_ is Cons!52335) (tail!8516 oldBucket!34)))))

(declare-fun d!1488769 () Bool)

(declare-fun lt!1844023 () List!52459)

(assert (=> d!1488769 (not (containsKey!2989 lt!1844023 key!4653))))

(assert (=> d!1488769 (= lt!1844023 e!2922732)))

(declare-fun c!801117 () Bool)

(assert (=> d!1488769 (= c!801117 (and ((_ is Cons!52335) (tail!8516 oldBucket!34)) (= (_1!30143 (h!58562 (tail!8516 oldBucket!34))) key!4653)))))

(assert (=> d!1488769 (noDuplicateKeys!1826 (tail!8516 oldBucket!34))))

(assert (=> d!1488769 (= (removePairForKey!1421 (tail!8516 oldBucket!34) key!4653) lt!1844023)))

(assert (= (and d!1488769 c!801117) b!4684765))

(assert (= (and d!1488769 (not c!801117)) b!4684766))

(assert (= (and b!4684766 c!801118) b!4684767))

(assert (= (and b!4684766 (not c!801118)) b!4684768))

(declare-fun m!5583437 () Bool)

(assert (=> b!4684767 m!5583437))

(declare-fun m!5583439 () Bool)

(assert (=> d!1488769 m!5583439))

(assert (=> d!1488769 m!5583375))

(declare-fun m!5583441 () Bool)

(assert (=> d!1488769 m!5583441))

(assert (=> b!4684715 d!1488769))

(declare-fun d!1488771 () Bool)

(assert (=> d!1488771 (= (tail!8516 oldBucket!34) (t!359621 oldBucket!34))))

(assert (=> b!4684715 d!1488771))

(declare-fun d!1488773 () Bool)

(assert (=> d!1488773 (= (tail!8516 newBucket!218) (t!359621 newBucket!218))))

(assert (=> b!4684715 d!1488773))

(declare-fun b!4684769 () Bool)

(declare-fun e!2922734 () List!52459)

(assert (=> b!4684769 (= e!2922734 (t!359621 (t!359621 oldBucket!34)))))

(declare-fun b!4684771 () Bool)

(declare-fun e!2922735 () List!52459)

(assert (=> b!4684771 (= e!2922735 (Cons!52335 (h!58562 (t!359621 oldBucket!34)) (removePairForKey!1421 (t!359621 (t!359621 oldBucket!34)) key!4653)))))

(declare-fun b!4684772 () Bool)

(assert (=> b!4684772 (= e!2922735 Nil!52335)))

(declare-fun b!4684770 () Bool)

(assert (=> b!4684770 (= e!2922734 e!2922735)))

(declare-fun c!801120 () Bool)

(assert (=> b!4684770 (= c!801120 ((_ is Cons!52335) (t!359621 oldBucket!34)))))

(declare-fun d!1488775 () Bool)

(declare-fun lt!1844024 () List!52459)

(assert (=> d!1488775 (not (containsKey!2989 lt!1844024 key!4653))))

(assert (=> d!1488775 (= lt!1844024 e!2922734)))

(declare-fun c!801119 () Bool)

(assert (=> d!1488775 (= c!801119 (and ((_ is Cons!52335) (t!359621 oldBucket!34)) (= (_1!30143 (h!58562 (t!359621 oldBucket!34))) key!4653)))))

(assert (=> d!1488775 (noDuplicateKeys!1826 (t!359621 oldBucket!34))))

(assert (=> d!1488775 (= (removePairForKey!1421 (t!359621 oldBucket!34) key!4653) lt!1844024)))

(assert (= (and d!1488775 c!801119) b!4684769))

(assert (= (and d!1488775 (not c!801119)) b!4684770))

(assert (= (and b!4684770 c!801120) b!4684771))

(assert (= (and b!4684770 (not c!801120)) b!4684772))

(declare-fun m!5583443 () Bool)

(assert (=> b!4684771 m!5583443))

(declare-fun m!5583445 () Bool)

(assert (=> d!1488775 m!5583445))

(declare-fun m!5583447 () Bool)

(assert (=> d!1488775 m!5583447))

(assert (=> b!4684726 d!1488775))

(declare-fun d!1488777 () Bool)

(declare-fun hash!4021 (Hashable!6195 K!13715) (_ BitVec 64))

(assert (=> d!1488777 (= (hash!4019 hashF!1323 key!4653) (hash!4021 hashF!1323 key!4653))))

(declare-fun bs!1083943 () Bool)

(assert (= bs!1083943 d!1488777))

(declare-fun m!5583449 () Bool)

(assert (=> bs!1083943 m!5583449))

(assert (=> b!4684716 d!1488777))

(declare-fun d!1488779 () Bool)

(assert (=> d!1488779 (= (head!9920 (toList!5541 lm!2023)) (h!58563 (toList!5541 lm!2023)))))

(assert (=> b!4684727 d!1488779))

(declare-fun d!1488781 () Bool)

(declare-fun res!1975104 () Bool)

(declare-fun e!2922740 () Bool)

(assert (=> d!1488781 (=> res!1975104 e!2922740)))

(assert (=> d!1488781 (= res!1975104 (not ((_ is Cons!52335) newBucket!218)))))

(assert (=> d!1488781 (= (noDuplicateKeys!1826 newBucket!218) e!2922740)))

(declare-fun b!4684777 () Bool)

(declare-fun e!2922741 () Bool)

(assert (=> b!4684777 (= e!2922740 e!2922741)))

(declare-fun res!1975105 () Bool)

(assert (=> b!4684777 (=> (not res!1975105) (not e!2922741))))

(assert (=> b!4684777 (= res!1975105 (not (containsKey!2989 (t!359621 newBucket!218) (_1!30143 (h!58562 newBucket!218)))))))

(declare-fun b!4684778 () Bool)

(assert (=> b!4684778 (= e!2922741 (noDuplicateKeys!1826 (t!359621 newBucket!218)))))

(assert (= (and d!1488781 (not res!1975104)) b!4684777))

(assert (= (and b!4684777 res!1975105) b!4684778))

(declare-fun m!5583451 () Bool)

(assert (=> b!4684777 m!5583451))

(declare-fun m!5583453 () Bool)

(assert (=> b!4684778 m!5583453))

(assert (=> b!4684722 d!1488781))

(declare-fun d!1488783 () Bool)

(declare-fun tail!8519 (List!52460) List!52460)

(assert (=> d!1488783 (= (tail!8517 lm!2023) (ListLongMap!4072 (tail!8519 (toList!5541 lm!2023))))))

(declare-fun bs!1083944 () Bool)

(assert (= bs!1083944 d!1488783))

(declare-fun m!5583455 () Bool)

(assert (=> bs!1083944 m!5583455))

(assert (=> b!4684724 d!1488783))

(declare-fun b!4684865 () Bool)

(assert (=> b!4684865 true))

(declare-fun bs!1083957 () Bool)

(declare-fun b!4684864 () Bool)

(assert (= bs!1083957 (and b!4684864 b!4684865)))

(declare-fun lambda!205782 () Int)

(declare-fun lambda!205781 () Int)

(assert (=> bs!1083957 (= lambda!205782 lambda!205781)))

(assert (=> b!4684864 true))

(declare-fun lambda!205783 () Int)

(declare-fun lt!1844168 () ListMap!4905)

(assert (=> bs!1083957 (= (= lt!1844168 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) (= lambda!205783 lambda!205781))))

(assert (=> b!4684864 (= (= lt!1844168 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) (= lambda!205783 lambda!205782))))

(assert (=> b!4684864 true))

(declare-fun bs!1083958 () Bool)

(declare-fun d!1488785 () Bool)

(assert (= bs!1083958 (and d!1488785 b!4684865)))

(declare-fun lambda!205784 () Int)

(declare-fun lt!1844166 () ListMap!4905)

(assert (=> bs!1083958 (= (= lt!1844166 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) (= lambda!205784 lambda!205781))))

(declare-fun bs!1083959 () Bool)

(assert (= bs!1083959 (and d!1488785 b!4684864)))

(assert (=> bs!1083959 (= (= lt!1844166 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) (= lambda!205784 lambda!205782))))

(assert (=> bs!1083959 (= (= lt!1844166 lt!1844168) (= lambda!205784 lambda!205783))))

(assert (=> d!1488785 true))

(declare-fun b!4684862 () Bool)

(declare-fun res!1975160 () Bool)

(declare-fun e!2922797 () Bool)

(assert (=> b!4684862 (=> (not res!1975160) (not e!2922797))))

(declare-fun forall!11277 (List!52459 Int) Bool)

(assert (=> b!4684862 (= res!1975160 (forall!11277 (toList!5542 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) lambda!205784))))

(declare-fun b!4684863 () Bool)

(declare-fun invariantList!1392 (List!52459) Bool)

(assert (=> b!4684863 (= e!2922797 (invariantList!1392 (toList!5542 lt!1844166)))))

(assert (=> d!1488785 e!2922797))

(declare-fun res!1975161 () Bool)

(assert (=> d!1488785 (=> (not res!1975161) (not e!2922797))))

(assert (=> d!1488785 (= res!1975161 (forall!11277 (_2!30144 (h!58563 (toList!5541 lm!2023))) lambda!205784))))

(declare-fun e!2922795 () ListMap!4905)

(assert (=> d!1488785 (= lt!1844166 e!2922795)))

(declare-fun c!801135 () Bool)

(assert (=> d!1488785 (= c!801135 ((_ is Nil!52335) (_2!30144 (h!58563 (toList!5541 lm!2023)))))))

(assert (=> d!1488785 (noDuplicateKeys!1826 (_2!30144 (h!58563 (toList!5541 lm!2023))))))

(assert (=> d!1488785 (= (addToMapMapFromBucket!1258 (_2!30144 (h!58563 (toList!5541 lm!2023))) (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) lt!1844166)))

(assert (=> b!4684864 (= e!2922795 lt!1844168)))

(declare-fun lt!1844180 () ListMap!4905)

(declare-fun +!2114 (ListMap!4905 tuple2!53698) ListMap!4905)

(assert (=> b!4684864 (= lt!1844180 (+!2114 (extractMap!1852 (t!359622 (toList!5541 lm!2023))) (h!58562 (_2!30144 (h!58563 (toList!5541 lm!2023))))))))

(assert (=> b!4684864 (= lt!1844168 (addToMapMapFromBucket!1258 (t!359621 (_2!30144 (h!58563 (toList!5541 lm!2023)))) (+!2114 (extractMap!1852 (t!359622 (toList!5541 lm!2023))) (h!58562 (_2!30144 (h!58563 (toList!5541 lm!2023)))))))))

(declare-fun lt!1844172 () Unit!123153)

(declare-fun call!327396 () Unit!123153)

(assert (=> b!4684864 (= lt!1844172 call!327396)))

(assert (=> b!4684864 (forall!11277 (toList!5542 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) lambda!205782)))

(declare-fun lt!1844185 () Unit!123153)

(assert (=> b!4684864 (= lt!1844185 lt!1844172)))

(declare-fun call!327397 () Bool)

(assert (=> b!4684864 call!327397))

(declare-fun lt!1844186 () Unit!123153)

(declare-fun Unit!123167 () Unit!123153)

(assert (=> b!4684864 (= lt!1844186 Unit!123167)))

(assert (=> b!4684864 (forall!11277 (t!359621 (_2!30144 (h!58563 (toList!5541 lm!2023)))) lambda!205783)))

(declare-fun lt!1844176 () Unit!123153)

(declare-fun Unit!123168 () Unit!123153)

(assert (=> b!4684864 (= lt!1844176 Unit!123168)))

(declare-fun lt!1844174 () Unit!123153)

(declare-fun Unit!123170 () Unit!123153)

(assert (=> b!4684864 (= lt!1844174 Unit!123170)))

(declare-fun lt!1844177 () Unit!123153)

(declare-fun forallContained!3384 (List!52459 Int tuple2!53698) Unit!123153)

(assert (=> b!4684864 (= lt!1844177 (forallContained!3384 (toList!5542 lt!1844180) lambda!205783 (h!58562 (_2!30144 (h!58563 (toList!5541 lm!2023))))))))

(assert (=> b!4684864 (contains!15488 lt!1844180 (_1!30143 (h!58562 (_2!30144 (h!58563 (toList!5541 lm!2023))))))))

(declare-fun lt!1844179 () Unit!123153)

(declare-fun Unit!123171 () Unit!123153)

(assert (=> b!4684864 (= lt!1844179 Unit!123171)))

(assert (=> b!4684864 (contains!15488 lt!1844168 (_1!30143 (h!58562 (_2!30144 (h!58563 (toList!5541 lm!2023))))))))

(declare-fun lt!1844178 () Unit!123153)

(declare-fun Unit!123172 () Unit!123153)

(assert (=> b!4684864 (= lt!1844178 Unit!123172)))

(assert (=> b!4684864 (forall!11277 (_2!30144 (h!58563 (toList!5541 lm!2023))) lambda!205783)))

(declare-fun lt!1844181 () Unit!123153)

(declare-fun Unit!123173 () Unit!123153)

(assert (=> b!4684864 (= lt!1844181 Unit!123173)))

(assert (=> b!4684864 (forall!11277 (toList!5542 lt!1844180) lambda!205783)))

(declare-fun lt!1844175 () Unit!123153)

(declare-fun Unit!123174 () Unit!123153)

(assert (=> b!4684864 (= lt!1844175 Unit!123174)))

(declare-fun lt!1844167 () Unit!123153)

(declare-fun Unit!123175 () Unit!123153)

(assert (=> b!4684864 (= lt!1844167 Unit!123175)))

(declare-fun lt!1844173 () Unit!123153)

(declare-fun addForallContainsKeyThenBeforeAdding!679 (ListMap!4905 ListMap!4905 K!13715 V!13961) Unit!123153)

(assert (=> b!4684864 (= lt!1844173 (addForallContainsKeyThenBeforeAdding!679 (extractMap!1852 (t!359622 (toList!5541 lm!2023))) lt!1844168 (_1!30143 (h!58562 (_2!30144 (h!58563 (toList!5541 lm!2023))))) (_2!30143 (h!58562 (_2!30144 (h!58563 (toList!5541 lm!2023)))))))))

(assert (=> b!4684864 (forall!11277 (toList!5542 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) lambda!205783)))

(declare-fun lt!1844169 () Unit!123153)

(assert (=> b!4684864 (= lt!1844169 lt!1844173)))

(assert (=> b!4684864 (forall!11277 (toList!5542 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) lambda!205783)))

(declare-fun lt!1844182 () Unit!123153)

(declare-fun Unit!123177 () Unit!123153)

(assert (=> b!4684864 (= lt!1844182 Unit!123177)))

(declare-fun res!1975159 () Bool)

(assert (=> b!4684864 (= res!1975159 (forall!11277 (_2!30144 (h!58563 (toList!5541 lm!2023))) lambda!205783))))

(declare-fun e!2922796 () Bool)

(assert (=> b!4684864 (=> (not res!1975159) (not e!2922796))))

(assert (=> b!4684864 e!2922796))

(declare-fun lt!1844170 () Unit!123153)

(declare-fun Unit!123178 () Unit!123153)

(assert (=> b!4684864 (= lt!1844170 Unit!123178)))

(declare-fun bm!327390 () Bool)

(assert (=> bm!327390 (= call!327397 (forall!11277 (ite c!801135 (toList!5542 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) (toList!5542 lt!1844180)) (ite c!801135 lambda!205781 lambda!205783)))))

(declare-fun bm!327391 () Bool)

(declare-fun call!327395 () Bool)

(assert (=> bm!327391 (= call!327395 (forall!11277 (toList!5542 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))) (ite c!801135 lambda!205781 lambda!205783)))))

(assert (=> b!4684865 (= e!2922795 (extractMap!1852 (t!359622 (toList!5541 lm!2023))))))

(declare-fun lt!1844171 () Unit!123153)

(assert (=> b!4684865 (= lt!1844171 call!327396)))

(assert (=> b!4684865 call!327395))

(declare-fun lt!1844184 () Unit!123153)

(assert (=> b!4684865 (= lt!1844184 lt!1844171)))

(assert (=> b!4684865 call!327397))

(declare-fun lt!1844183 () Unit!123153)

(declare-fun Unit!123179 () Unit!123153)

(assert (=> b!4684865 (= lt!1844183 Unit!123179)))

(declare-fun b!4684866 () Bool)

(assert (=> b!4684866 (= e!2922796 call!327395)))

(declare-fun bm!327392 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!680 (ListMap!4905) Unit!123153)

(assert (=> bm!327392 (= call!327396 (lemmaContainsAllItsOwnKeys!680 (extractMap!1852 (t!359622 (toList!5541 lm!2023)))))))

(assert (= (and d!1488785 c!801135) b!4684865))

(assert (= (and d!1488785 (not c!801135)) b!4684864))

(assert (= (and b!4684864 res!1975159) b!4684866))

(assert (= (or b!4684865 b!4684864) bm!327392))

(assert (= (or b!4684865 b!4684866) bm!327391))

(assert (= (or b!4684865 b!4684864) bm!327390))

(assert (= (and d!1488785 res!1975161) b!4684862))

(assert (= (and b!4684862 res!1975160) b!4684863))

(declare-fun m!5583561 () Bool)

(assert (=> bm!327390 m!5583561))

(assert (=> bm!327392 m!5583335))

(declare-fun m!5583563 () Bool)

(assert (=> bm!327392 m!5583563))

(declare-fun m!5583565 () Bool)

(assert (=> bm!327391 m!5583565))

(declare-fun m!5583567 () Bool)

(assert (=> b!4684864 m!5583567))

(declare-fun m!5583569 () Bool)

(assert (=> b!4684864 m!5583569))

(declare-fun m!5583571 () Bool)

(assert (=> b!4684864 m!5583571))

(assert (=> b!4684864 m!5583571))

(declare-fun m!5583573 () Bool)

(assert (=> b!4684864 m!5583573))

(assert (=> b!4684864 m!5583335))

(declare-fun m!5583575 () Bool)

(assert (=> b!4684864 m!5583575))

(assert (=> b!4684864 m!5583335))

(assert (=> b!4684864 m!5583567))

(declare-fun m!5583577 () Bool)

(assert (=> b!4684864 m!5583577))

(declare-fun m!5583579 () Bool)

(assert (=> b!4684864 m!5583579))

(assert (=> b!4684864 m!5583573))

(declare-fun m!5583581 () Bool)

(assert (=> b!4684864 m!5583581))

(declare-fun m!5583583 () Bool)

(assert (=> b!4684864 m!5583583))

(declare-fun m!5583585 () Bool)

(assert (=> b!4684864 m!5583585))

(declare-fun m!5583587 () Bool)

(assert (=> b!4684864 m!5583587))

(declare-fun m!5583589 () Bool)

(assert (=> b!4684863 m!5583589))

(declare-fun m!5583591 () Bool)

(assert (=> d!1488785 m!5583591))

(declare-fun m!5583593 () Bool)

(assert (=> d!1488785 m!5583593))

(declare-fun m!5583595 () Bool)

(assert (=> b!4684862 m!5583595))

(assert (=> b!4684720 d!1488785))

(declare-fun bs!1083964 () Bool)

(declare-fun d!1488815 () Bool)

(assert (= bs!1083964 (and d!1488815 start!473352)))

(declare-fun lambda!205790 () Int)

(assert (=> bs!1083964 (= lambda!205790 lambda!205707)))

(declare-fun lt!1844194 () ListMap!4905)

(assert (=> d!1488815 (invariantList!1392 (toList!5542 lt!1844194))))

(declare-fun e!2922816 () ListMap!4905)

(assert (=> d!1488815 (= lt!1844194 e!2922816)))

(declare-fun c!801148 () Bool)

(assert (=> d!1488815 (= c!801148 ((_ is Cons!52336) (t!359622 (toList!5541 lm!2023))))))

(assert (=> d!1488815 (forall!11275 (t!359622 (toList!5541 lm!2023)) lambda!205790)))

(assert (=> d!1488815 (= (extractMap!1852 (t!359622 (toList!5541 lm!2023))) lt!1844194)))

(declare-fun b!4684903 () Bool)

(assert (=> b!4684903 (= e!2922816 (addToMapMapFromBucket!1258 (_2!30144 (h!58563 (t!359622 (toList!5541 lm!2023)))) (extractMap!1852 (t!359622 (t!359622 (toList!5541 lm!2023))))))))

(declare-fun b!4684904 () Bool)

(assert (=> b!4684904 (= e!2922816 (ListMap!4906 Nil!52335))))

(assert (= (and d!1488815 c!801148) b!4684903))

(assert (= (and d!1488815 (not c!801148)) b!4684904))

(declare-fun m!5583609 () Bool)

(assert (=> d!1488815 m!5583609))

(declare-fun m!5583611 () Bool)

(assert (=> d!1488815 m!5583611))

(declare-fun m!5583613 () Bool)

(assert (=> b!4684903 m!5583613))

(assert (=> b!4684903 m!5583613))

(declare-fun m!5583615 () Bool)

(assert (=> b!4684903 m!5583615))

(assert (=> b!4684720 d!1488815))

(declare-fun bs!1083965 () Bool)

(declare-fun d!1488827 () Bool)

(assert (= bs!1083965 (and d!1488827 b!4684865)))

(declare-fun lambda!205793 () Int)

(assert (=> bs!1083965 (not (= lambda!205793 lambda!205781))))

(declare-fun bs!1083966 () Bool)

(assert (= bs!1083966 (and d!1488827 b!4684864)))

(assert (=> bs!1083966 (not (= lambda!205793 lambda!205782))))

(assert (=> bs!1083966 (not (= lambda!205793 lambda!205783))))

(declare-fun bs!1083967 () Bool)

(assert (= bs!1083967 (and d!1488827 d!1488785)))

(assert (=> bs!1083967 (not (= lambda!205793 lambda!205784))))

(assert (=> d!1488827 true))

(assert (=> d!1488827 true))

(assert (=> d!1488827 (= (allKeysSameHash!1652 oldBucket!34 hash!405 hashF!1323) (forall!11277 oldBucket!34 lambda!205793))))

(declare-fun bs!1083968 () Bool)

(assert (= bs!1083968 d!1488827))

(declare-fun m!5583617 () Bool)

(assert (=> bs!1083968 m!5583617))

(assert (=> b!4684731 d!1488827))

(declare-fun d!1488829 () Bool)

(declare-fun isEmpty!29076 (Option!12013) Bool)

(assert (=> d!1488829 (= (isDefined!9268 (getPair!430 lt!1843996 key!4653)) (not (isEmpty!29076 (getPair!430 lt!1843996 key!4653))))))

(declare-fun bs!1083969 () Bool)

(assert (= bs!1083969 d!1488829))

(assert (=> bs!1083969 m!5583347))

(declare-fun m!5583619 () Bool)

(assert (=> bs!1083969 m!5583619))

(assert (=> b!4684732 d!1488829))

(declare-fun d!1488831 () Bool)

(declare-fun e!2922849 () Bool)

(assert (=> d!1488831 e!2922849))

(declare-fun res!1975185 () Bool)

(assert (=> d!1488831 (=> res!1975185 e!2922849)))

(declare-fun e!2922848 () Bool)

(assert (=> d!1488831 (= res!1975185 e!2922848)))

(declare-fun res!1975187 () Bool)

(assert (=> d!1488831 (=> (not res!1975187) (not e!2922848))))

(declare-fun lt!1844222 () Option!12013)

(assert (=> d!1488831 (= res!1975187 (isEmpty!29076 lt!1844222))))

(declare-fun e!2922846 () Option!12013)

(assert (=> d!1488831 (= lt!1844222 e!2922846)))

(declare-fun c!801163 () Bool)

(assert (=> d!1488831 (= c!801163 (and ((_ is Cons!52335) lt!1843996) (= (_1!30143 (h!58562 lt!1843996)) key!4653)))))

(assert (=> d!1488831 (noDuplicateKeys!1826 lt!1843996)))

(assert (=> d!1488831 (= (getPair!430 lt!1843996 key!4653) lt!1844222)))

(declare-fun b!4684954 () Bool)

(declare-fun e!2922850 () Bool)

(assert (=> b!4684954 (= e!2922849 e!2922850)))

(declare-fun res!1975186 () Bool)

(assert (=> b!4684954 (=> (not res!1975186) (not e!2922850))))

(assert (=> b!4684954 (= res!1975186 (isDefined!9268 lt!1844222))))

(declare-fun b!4684955 () Bool)

(declare-fun contains!15493 (List!52459 tuple2!53698) Bool)

(declare-fun get!17443 (Option!12013) tuple2!53698)

(assert (=> b!4684955 (= e!2922850 (contains!15493 lt!1843996 (get!17443 lt!1844222)))))

(declare-fun b!4684956 () Bool)

(assert (=> b!4684956 (= e!2922846 (Some!12012 (h!58562 lt!1843996)))))

(declare-fun b!4684957 () Bool)

(declare-fun e!2922847 () Option!12013)

(assert (=> b!4684957 (= e!2922847 None!12012)))

(declare-fun b!4684958 () Bool)

(assert (=> b!4684958 (= e!2922846 e!2922847)))

(declare-fun c!801164 () Bool)

(assert (=> b!4684958 (= c!801164 ((_ is Cons!52335) lt!1843996))))

(declare-fun b!4684959 () Bool)

(assert (=> b!4684959 (= e!2922848 (not (containsKey!2989 lt!1843996 key!4653)))))

(declare-fun b!4684960 () Bool)

(declare-fun res!1975188 () Bool)

(assert (=> b!4684960 (=> (not res!1975188) (not e!2922850))))

(assert (=> b!4684960 (= res!1975188 (= (_1!30143 (get!17443 lt!1844222)) key!4653))))

(declare-fun b!4684961 () Bool)

(assert (=> b!4684961 (= e!2922847 (getPair!430 (t!359621 lt!1843996) key!4653))))

(assert (= (and d!1488831 c!801163) b!4684956))

(assert (= (and d!1488831 (not c!801163)) b!4684958))

(assert (= (and b!4684958 c!801164) b!4684961))

(assert (= (and b!4684958 (not c!801164)) b!4684957))

(assert (= (and d!1488831 res!1975187) b!4684959))

(assert (= (and d!1488831 (not res!1975185)) b!4684954))

(assert (= (and b!4684954 res!1975186) b!4684960))

(assert (= (and b!4684960 res!1975188) b!4684955))

(declare-fun m!5583641 () Bool)

(assert (=> d!1488831 m!5583641))

(declare-fun m!5583645 () Bool)

(assert (=> d!1488831 m!5583645))

(declare-fun m!5583649 () Bool)

(assert (=> b!4684955 m!5583649))

(assert (=> b!4684955 m!5583649))

(declare-fun m!5583653 () Bool)

(assert (=> b!4684955 m!5583653))

(declare-fun m!5583655 () Bool)

(assert (=> b!4684961 m!5583655))

(declare-fun m!5583659 () Bool)

(assert (=> b!4684959 m!5583659))

(assert (=> b!4684960 m!5583649))

(declare-fun m!5583661 () Bool)

(assert (=> b!4684954 m!5583661))

(assert (=> b!4684732 d!1488831))

(declare-fun bs!1083974 () Bool)

(declare-fun d!1488837 () Bool)

(assert (= bs!1083974 (and d!1488837 start!473352)))

(declare-fun lambda!205797 () Int)

(assert (=> bs!1083974 (= lambda!205797 lambda!205707)))

(declare-fun bs!1083975 () Bool)

(assert (= bs!1083975 (and d!1488837 d!1488815)))

(assert (=> bs!1083975 (= lambda!205797 lambda!205790)))

(assert (=> d!1488837 (contains!15490 lm!2023 (hash!4019 hashF!1323 key!4653))))

(declare-fun lt!1844225 () Unit!123153)

(declare-fun choose!32462 (ListLongMap!4071 K!13715 Hashable!6195) Unit!123153)

(assert (=> d!1488837 (= lt!1844225 (choose!32462 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488837 (forall!11275 (toList!5541 lm!2023) lambda!205797)))

(assert (=> d!1488837 (= (lemmaInGenMapThenLongMapContainsHash!636 lm!2023 key!4653 hashF!1323) lt!1844225)))

(declare-fun bs!1083976 () Bool)

(assert (= bs!1083976 d!1488837))

(assert (=> bs!1083976 m!5583393))

(assert (=> bs!1083976 m!5583393))

(declare-fun m!5583663 () Bool)

(assert (=> bs!1083976 m!5583663))

(declare-fun m!5583665 () Bool)

(assert (=> bs!1083976 m!5583665))

(declare-fun m!5583667 () Bool)

(assert (=> bs!1083976 m!5583667))

(assert (=> b!4684732 d!1488837))

(declare-fun d!1488839 () Bool)

(assert (=> d!1488839 (contains!15489 (toList!5541 lm!2023) (tuple2!53701 lt!1843994 lt!1843996))))

(declare-fun lt!1844228 () Unit!123153)

(declare-fun choose!32463 (ListLongMap!4071 (_ BitVec 64) List!52459) Unit!123153)

(assert (=> d!1488839 (= lt!1844228 (choose!32463 lm!2023 lt!1843994 lt!1843996))))

(assert (=> d!1488839 (contains!15490 lm!2023 lt!1843994)))

(assert (=> d!1488839 (= (lemmaGetValueImpliesTupleContained!235 lm!2023 lt!1843994 lt!1843996) lt!1844228)))

(declare-fun bs!1083977 () Bool)

(assert (= bs!1083977 d!1488839))

(declare-fun m!5583669 () Bool)

(assert (=> bs!1083977 m!5583669))

(declare-fun m!5583671 () Bool)

(assert (=> bs!1083977 m!5583671))

(assert (=> bs!1083977 m!5583359))

(assert (=> b!4684732 d!1488839))

(declare-fun bs!1084007 () Bool)

(declare-fun d!1488841 () Bool)

(assert (= bs!1084007 (and d!1488841 start!473352)))

(declare-fun lambda!205812 () Int)

(assert (=> bs!1084007 (= lambda!205812 lambda!205707)))

(declare-fun bs!1084008 () Bool)

(assert (= bs!1084008 (and d!1488841 d!1488815)))

(assert (=> bs!1084008 (= lambda!205812 lambda!205790)))

(declare-fun bs!1084009 () Bool)

(assert (= bs!1084009 (and d!1488841 d!1488837)))

(assert (=> bs!1084009 (= lambda!205812 lambda!205797)))

(declare-fun e!2922879 () Bool)

(declare-fun b!4685007 () Bool)

(assert (=> b!4685007 (= e!2922879 (isDefined!9268 (getPair!430 (apply!12309 lm!2023 (hash!4019 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1844258 () Unit!123153)

(assert (=> b!4685007 (= lt!1844258 (forallContained!3382 (toList!5541 lm!2023) lambda!205812 (tuple2!53701 (hash!4019 hashF!1323 key!4653) (apply!12309 lm!2023 (hash!4019 hashF!1323 key!4653)))))))

(declare-fun lt!1844259 () Unit!123153)

(declare-fun lt!1844257 () Unit!123153)

(assert (=> b!4685007 (= lt!1844259 lt!1844257)))

(declare-fun lt!1844262 () (_ BitVec 64))

(declare-fun lt!1844261 () List!52459)

(assert (=> b!4685007 (contains!15489 (toList!5541 lm!2023) (tuple2!53701 lt!1844262 lt!1844261))))

(assert (=> b!4685007 (= lt!1844257 (lemmaGetValueImpliesTupleContained!235 lm!2023 lt!1844262 lt!1844261))))

(declare-fun e!2922880 () Bool)

(assert (=> b!4685007 e!2922880))

(declare-fun res!1975210 () Bool)

(assert (=> b!4685007 (=> (not res!1975210) (not e!2922880))))

(assert (=> b!4685007 (= res!1975210 (contains!15490 lm!2023 lt!1844262))))

(assert (=> b!4685007 (= lt!1844261 (apply!12309 lm!2023 (hash!4019 hashF!1323 key!4653)))))

(assert (=> b!4685007 (= lt!1844262 (hash!4019 hashF!1323 key!4653))))

(declare-fun lt!1844264 () Unit!123153)

(declare-fun lt!1844263 () Unit!123153)

(assert (=> b!4685007 (= lt!1844264 lt!1844263)))

(assert (=> b!4685007 (contains!15490 lm!2023 (hash!4019 hashF!1323 key!4653))))

(assert (=> b!4685007 (= lt!1844263 (lemmaInGenMapThenLongMapContainsHash!636 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4685006 () Bool)

(declare-fun res!1975211 () Bool)

(assert (=> b!4685006 (=> (not res!1975211) (not e!2922879))))

(assert (=> b!4685006 (= res!1975211 (contains!15488 (extractMap!1852 (toList!5541 lm!2023)) key!4653))))

(declare-fun b!4685008 () Bool)

(declare-datatypes ((Option!12016 0))(
  ( (None!12015) (Some!12015 (v!46398 List!52459)) )
))
(declare-fun getValueByKey!1744 (List!52460 (_ BitVec 64)) Option!12016)

(assert (=> b!4685008 (= e!2922880 (= (getValueByKey!1744 (toList!5541 lm!2023) lt!1844262) (Some!12015 lt!1844261)))))

(assert (=> d!1488841 e!2922879))

(declare-fun res!1975212 () Bool)

(assert (=> d!1488841 (=> (not res!1975212) (not e!2922879))))

(assert (=> d!1488841 (= res!1975212 (forall!11275 (toList!5541 lm!2023) lambda!205812))))

(declare-fun lt!1844260 () Unit!123153)

(declare-fun choose!32464 (ListLongMap!4071 K!13715 Hashable!6195) Unit!123153)

(assert (=> d!1488841 (= lt!1844260 (choose!32464 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488841 (forall!11275 (toList!5541 lm!2023) lambda!205812)))

(assert (=> d!1488841 (= (lemmaInGenMapThenGetPairDefined!226 lm!2023 key!4653 hashF!1323) lt!1844260)))

(declare-fun b!4685005 () Bool)

(declare-fun res!1975213 () Bool)

(assert (=> b!4685005 (=> (not res!1975213) (not e!2922879))))

(assert (=> b!4685005 (= res!1975213 (allKeysSameHashInMap!1740 lm!2023 hashF!1323))))

(assert (= (and d!1488841 res!1975212) b!4685005))

(assert (= (and b!4685005 res!1975213) b!4685006))

(assert (= (and b!4685006 res!1975211) b!4685007))

(assert (= (and b!4685007 res!1975210) b!4685008))

(assert (=> b!4685007 m!5583345))

(declare-fun m!5583725 () Bool)

(assert (=> b!4685007 m!5583725))

(declare-fun m!5583727 () Bool)

(assert (=> b!4685007 m!5583727))

(declare-fun m!5583729 () Bool)

(assert (=> b!4685007 m!5583729))

(assert (=> b!4685007 m!5583393))

(assert (=> b!4685007 m!5583663))

(assert (=> b!4685007 m!5583393))

(assert (=> b!4685007 m!5583725))

(declare-fun m!5583731 () Bool)

(assert (=> b!4685007 m!5583731))

(assert (=> b!4685007 m!5583393))

(declare-fun m!5583733 () Bool)

(assert (=> b!4685007 m!5583733))

(assert (=> b!4685007 m!5583727))

(declare-fun m!5583735 () Bool)

(assert (=> b!4685007 m!5583735))

(declare-fun m!5583737 () Bool)

(assert (=> b!4685007 m!5583737))

(assert (=> b!4685005 m!5583371))

(assert (=> b!4685006 m!5583397))

(assert (=> b!4685006 m!5583397))

(declare-fun m!5583739 () Bool)

(assert (=> b!4685006 m!5583739))

(declare-fun m!5583741 () Bool)

(assert (=> b!4685008 m!5583741))

(declare-fun m!5583743 () Bool)

(assert (=> d!1488841 m!5583743))

(declare-fun m!5583745 () Bool)

(assert (=> d!1488841 m!5583745))

(assert (=> d!1488841 m!5583743))

(assert (=> b!4684732 d!1488841))

(declare-fun d!1488865 () Bool)

(assert (=> d!1488865 (containsKey!2989 oldBucket!34 key!4653)))

(declare-fun lt!1844267 () Unit!123153)

(declare-fun choose!32465 (List!52459 K!13715 Hashable!6195) Unit!123153)

(assert (=> d!1488865 (= lt!1844267 (choose!32465 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1488865 (noDuplicateKeys!1826 oldBucket!34)))

(assert (=> d!1488865 (= (lemmaGetPairDefinedThenContainsKey!178 oldBucket!34 key!4653 hashF!1323) lt!1844267)))

(declare-fun bs!1084010 () Bool)

(assert (= bs!1084010 d!1488865))

(assert (=> bs!1084010 m!5583353))

(declare-fun m!5583747 () Bool)

(assert (=> bs!1084010 m!5583747))

(assert (=> bs!1084010 m!5583403))

(assert (=> b!4684732 d!1488865))

(declare-fun d!1488867 () Bool)

(declare-fun lt!1844270 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9132 (List!52460) (InoxSet tuple2!53700))

(assert (=> d!1488867 (= lt!1844270 (select (content!9132 (toList!5541 lm!2023)) lt!1843989))))

(declare-fun e!2922885 () Bool)

(assert (=> d!1488867 (= lt!1844270 e!2922885)))

(declare-fun res!1975218 () Bool)

(assert (=> d!1488867 (=> (not res!1975218) (not e!2922885))))

(assert (=> d!1488867 (= res!1975218 ((_ is Cons!52336) (toList!5541 lm!2023)))))

(assert (=> d!1488867 (= (contains!15489 (toList!5541 lm!2023) lt!1843989) lt!1844270)))

(declare-fun b!4685013 () Bool)

(declare-fun e!2922886 () Bool)

(assert (=> b!4685013 (= e!2922885 e!2922886)))

(declare-fun res!1975219 () Bool)

(assert (=> b!4685013 (=> res!1975219 e!2922886)))

(assert (=> b!4685013 (= res!1975219 (= (h!58563 (toList!5541 lm!2023)) lt!1843989))))

(declare-fun b!4685014 () Bool)

(assert (=> b!4685014 (= e!2922886 (contains!15489 (t!359622 (toList!5541 lm!2023)) lt!1843989))))

(assert (= (and d!1488867 res!1975218) b!4685013))

(assert (= (and b!4685013 (not res!1975219)) b!4685014))

(declare-fun m!5583749 () Bool)

(assert (=> d!1488867 m!5583749))

(declare-fun m!5583751 () Bool)

(assert (=> d!1488867 m!5583751))

(declare-fun m!5583753 () Bool)

(assert (=> b!4685014 m!5583753))

(assert (=> b!4684732 d!1488867))

(declare-fun d!1488869 () Bool)

(assert (=> d!1488869 (dynLambda!21695 lambda!205707 lt!1843989)))

(declare-fun lt!1844273 () Unit!123153)

(declare-fun choose!32466 (List!52460 Int tuple2!53700) Unit!123153)

(assert (=> d!1488869 (= lt!1844273 (choose!32466 (toList!5541 lm!2023) lambda!205707 lt!1843989))))

(declare-fun e!2922889 () Bool)

(assert (=> d!1488869 e!2922889))

(declare-fun res!1975222 () Bool)

(assert (=> d!1488869 (=> (not res!1975222) (not e!2922889))))

(assert (=> d!1488869 (= res!1975222 (forall!11275 (toList!5541 lm!2023) lambda!205707))))

(assert (=> d!1488869 (= (forallContained!3382 (toList!5541 lm!2023) lambda!205707 lt!1843989) lt!1844273)))

(declare-fun b!4685017 () Bool)

(assert (=> b!4685017 (= e!2922889 (contains!15489 (toList!5541 lm!2023) lt!1843989))))

(assert (= (and d!1488869 res!1975222) b!4685017))

(declare-fun b_lambda!176803 () Bool)

(assert (=> (not b_lambda!176803) (not d!1488869)))

(declare-fun m!5583755 () Bool)

(assert (=> d!1488869 m!5583755))

(declare-fun m!5583757 () Bool)

(assert (=> d!1488869 m!5583757))

(assert (=> d!1488869 m!5583339))

(assert (=> b!4685017 m!5583351))

(assert (=> b!4684732 d!1488869))

(declare-fun d!1488871 () Bool)

(declare-fun res!1975227 () Bool)

(declare-fun e!2922894 () Bool)

(assert (=> d!1488871 (=> res!1975227 e!2922894)))

(assert (=> d!1488871 (= res!1975227 (and ((_ is Cons!52335) (t!359621 oldBucket!34)) (= (_1!30143 (h!58562 (t!359621 oldBucket!34))) key!4653)))))

(assert (=> d!1488871 (= (containsKey!2989 (t!359621 oldBucket!34) key!4653) e!2922894)))

(declare-fun b!4685022 () Bool)

(declare-fun e!2922895 () Bool)

(assert (=> b!4685022 (= e!2922894 e!2922895)))

(declare-fun res!1975228 () Bool)

(assert (=> b!4685022 (=> (not res!1975228) (not e!2922895))))

(assert (=> b!4685022 (= res!1975228 ((_ is Cons!52335) (t!359621 oldBucket!34)))))

(declare-fun b!4685023 () Bool)

(assert (=> b!4685023 (= e!2922895 (containsKey!2989 (t!359621 (t!359621 oldBucket!34)) key!4653))))

(assert (= (and d!1488871 (not res!1975227)) b!4685022))

(assert (= (and b!4685022 res!1975228) b!4685023))

(declare-fun m!5583759 () Bool)

(assert (=> b!4685023 m!5583759))

(assert (=> b!4684732 d!1488871))

(declare-fun d!1488873 () Bool)

(declare-fun e!2922900 () Bool)

(assert (=> d!1488873 e!2922900))

(declare-fun res!1975231 () Bool)

(assert (=> d!1488873 (=> res!1975231 e!2922900)))

(declare-fun lt!1844282 () Bool)

(assert (=> d!1488873 (= res!1975231 (not lt!1844282))))

(declare-fun lt!1844283 () Bool)

(assert (=> d!1488873 (= lt!1844282 lt!1844283)))

(declare-fun lt!1844284 () Unit!123153)

(declare-fun e!2922901 () Unit!123153)

(assert (=> d!1488873 (= lt!1844284 e!2922901)))

(declare-fun c!801171 () Bool)

(assert (=> d!1488873 (= c!801171 lt!1844283)))

(declare-fun containsKey!2992 (List!52460 (_ BitVec 64)) Bool)

(assert (=> d!1488873 (= lt!1844283 (containsKey!2992 (toList!5541 lm!2023) lt!1843994))))

(assert (=> d!1488873 (= (contains!15490 lm!2023 lt!1843994) lt!1844282)))

(declare-fun b!4685030 () Bool)

(declare-fun lt!1844285 () Unit!123153)

(assert (=> b!4685030 (= e!2922901 lt!1844285)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1636 (List!52460 (_ BitVec 64)) Unit!123153)

(assert (=> b!4685030 (= lt!1844285 (lemmaContainsKeyImpliesGetValueByKeyDefined!1636 (toList!5541 lm!2023) lt!1843994))))

(declare-fun isDefined!9271 (Option!12016) Bool)

(assert (=> b!4685030 (isDefined!9271 (getValueByKey!1744 (toList!5541 lm!2023) lt!1843994))))

(declare-fun b!4685031 () Bool)

(declare-fun Unit!123182 () Unit!123153)

(assert (=> b!4685031 (= e!2922901 Unit!123182)))

(declare-fun b!4685032 () Bool)

(assert (=> b!4685032 (= e!2922900 (isDefined!9271 (getValueByKey!1744 (toList!5541 lm!2023) lt!1843994)))))

(assert (= (and d!1488873 c!801171) b!4685030))

(assert (= (and d!1488873 (not c!801171)) b!4685031))

(assert (= (and d!1488873 (not res!1975231)) b!4685032))

(declare-fun m!5583761 () Bool)

(assert (=> d!1488873 m!5583761))

(declare-fun m!5583763 () Bool)

(assert (=> b!4685030 m!5583763))

(declare-fun m!5583765 () Bool)

(assert (=> b!4685030 m!5583765))

(assert (=> b!4685030 m!5583765))

(declare-fun m!5583767 () Bool)

(assert (=> b!4685030 m!5583767))

(assert (=> b!4685032 m!5583765))

(assert (=> b!4685032 m!5583765))

(assert (=> b!4685032 m!5583767))

(assert (=> b!4684732 d!1488873))

(declare-fun d!1488875 () Bool)

(declare-fun get!17444 (Option!12016) List!52459)

(assert (=> d!1488875 (= (apply!12309 lm!2023 lt!1843994) (get!17444 (getValueByKey!1744 (toList!5541 lm!2023) lt!1843994)))))

(declare-fun bs!1084011 () Bool)

(assert (= bs!1084011 d!1488875))

(assert (=> bs!1084011 m!5583765))

(assert (=> bs!1084011 m!5583765))

(declare-fun m!5583769 () Bool)

(assert (=> bs!1084011 m!5583769))

(assert (=> b!4684732 d!1488875))

(declare-fun d!1488877 () Bool)

(declare-fun res!1975232 () Bool)

(declare-fun e!2922902 () Bool)

(assert (=> d!1488877 (=> res!1975232 e!2922902)))

(assert (=> d!1488877 (= res!1975232 (and ((_ is Cons!52335) oldBucket!34) (= (_1!30143 (h!58562 oldBucket!34)) key!4653)))))

(assert (=> d!1488877 (= (containsKey!2989 oldBucket!34 key!4653) e!2922902)))

(declare-fun b!4685033 () Bool)

(declare-fun e!2922903 () Bool)

(assert (=> b!4685033 (= e!2922902 e!2922903)))

(declare-fun res!1975233 () Bool)

(assert (=> b!4685033 (=> (not res!1975233) (not e!2922903))))

(assert (=> b!4685033 (= res!1975233 ((_ is Cons!52335) oldBucket!34))))

(declare-fun b!4685034 () Bool)

(assert (=> b!4685034 (= e!2922903 (containsKey!2989 (t!359621 oldBucket!34) key!4653))))

(assert (= (and d!1488877 (not res!1975232)) b!4685033))

(assert (= (and b!4685033 res!1975233) b!4685034))

(assert (=> b!4685034 m!5583357))

(assert (=> b!4684732 d!1488877))

(declare-fun d!1488879 () Bool)

(declare-fun res!1975234 () Bool)

(declare-fun e!2922904 () Bool)

(assert (=> d!1488879 (=> res!1975234 e!2922904)))

(assert (=> d!1488879 (= res!1975234 ((_ is Nil!52336) lt!1843995))))

(assert (=> d!1488879 (= (forall!11275 lt!1843995 lambda!205707) e!2922904)))

(declare-fun b!4685035 () Bool)

(declare-fun e!2922905 () Bool)

(assert (=> b!4685035 (= e!2922904 e!2922905)))

(declare-fun res!1975235 () Bool)

(assert (=> b!4685035 (=> (not res!1975235) (not e!2922905))))

(assert (=> b!4685035 (= res!1975235 (dynLambda!21695 lambda!205707 (h!58563 lt!1843995)))))

(declare-fun b!4685036 () Bool)

(assert (=> b!4685036 (= e!2922905 (forall!11275 (t!359622 lt!1843995) lambda!205707))))

(assert (= (and d!1488879 (not res!1975234)) b!4685035))

(assert (= (and b!4685035 res!1975235) b!4685036))

(declare-fun b_lambda!176805 () Bool)

(assert (=> (not b_lambda!176805) (not b!4685035)))

(declare-fun m!5583771 () Bool)

(assert (=> b!4685035 m!5583771))

(declare-fun m!5583773 () Bool)

(assert (=> b!4685036 m!5583773))

(assert (=> b!4684717 d!1488879))

(declare-fun b!4685055 () Bool)

(declare-fun e!2922921 () Bool)

(declare-datatypes ((List!52462 0))(
  ( (Nil!52338) (Cons!52338 (h!58567 K!13715) (t!359624 List!52462)) )
))
(declare-fun contains!15494 (List!52462 K!13715) Bool)

(declare-fun keys!18667 (ListMap!4905) List!52462)

(assert (=> b!4685055 (= e!2922921 (contains!15494 (keys!18667 (extractMap!1852 lt!1843995)) key!4653))))

(declare-fun bm!327399 () Bool)

(declare-fun call!327404 () Bool)

(declare-fun e!2922923 () List!52462)

(assert (=> bm!327399 (= call!327404 (contains!15494 e!2922923 key!4653))))

(declare-fun c!801179 () Bool)

(declare-fun c!801180 () Bool)

(assert (=> bm!327399 (= c!801179 c!801180)))

(declare-fun b!4685056 () Bool)

(assert (=> b!4685056 false))

(declare-fun lt!1844303 () Unit!123153)

(declare-fun lt!1844308 () Unit!123153)

(assert (=> b!4685056 (= lt!1844303 lt!1844308)))

(declare-fun containsKey!2993 (List!52459 K!13715) Bool)

(assert (=> b!4685056 (containsKey!2993 (toList!5542 (extractMap!1852 lt!1843995)) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!831 (List!52459 K!13715) Unit!123153)

(assert (=> b!4685056 (= lt!1844308 (lemmaInGetKeysListThenContainsKey!831 (toList!5542 (extractMap!1852 lt!1843995)) key!4653))))

(declare-fun e!2922920 () Unit!123153)

(declare-fun Unit!123183 () Unit!123153)

(assert (=> b!4685056 (= e!2922920 Unit!123183)))

(declare-fun b!4685057 () Bool)

(declare-fun e!2922922 () Unit!123153)

(assert (=> b!4685057 (= e!2922922 e!2922920)))

(declare-fun c!801178 () Bool)

(assert (=> b!4685057 (= c!801178 call!327404)))

(declare-fun b!4685058 () Bool)

(assert (=> b!4685058 (= e!2922923 (keys!18667 (extractMap!1852 lt!1843995)))))

(declare-fun d!1488881 () Bool)

(declare-fun e!2922919 () Bool)

(assert (=> d!1488881 e!2922919))

(declare-fun res!1975243 () Bool)

(assert (=> d!1488881 (=> res!1975243 e!2922919)))

(declare-fun e!2922918 () Bool)

(assert (=> d!1488881 (= res!1975243 e!2922918)))

(declare-fun res!1975242 () Bool)

(assert (=> d!1488881 (=> (not res!1975242) (not e!2922918))))

(declare-fun lt!1844309 () Bool)

(assert (=> d!1488881 (= res!1975242 (not lt!1844309))))

(declare-fun lt!1844307 () Bool)

(assert (=> d!1488881 (= lt!1844309 lt!1844307)))

(declare-fun lt!1844305 () Unit!123153)

(assert (=> d!1488881 (= lt!1844305 e!2922922)))

(assert (=> d!1488881 (= c!801180 lt!1844307)))

(assert (=> d!1488881 (= lt!1844307 (containsKey!2993 (toList!5542 (extractMap!1852 lt!1843995)) key!4653))))

(assert (=> d!1488881 (= (contains!15488 (extractMap!1852 lt!1843995) key!4653) lt!1844309)))

(declare-fun b!4685059 () Bool)

(declare-fun Unit!123184 () Unit!123153)

(assert (=> b!4685059 (= e!2922920 Unit!123184)))

(declare-fun b!4685060 () Bool)

(declare-fun getKeysList!832 (List!52459) List!52462)

(assert (=> b!4685060 (= e!2922923 (getKeysList!832 (toList!5542 (extractMap!1852 lt!1843995))))))

(declare-fun b!4685061 () Bool)

(declare-fun lt!1844304 () Unit!123153)

(assert (=> b!4685061 (= e!2922922 lt!1844304)))

(declare-fun lt!1844306 () Unit!123153)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1637 (List!52459 K!13715) Unit!123153)

(assert (=> b!4685061 (= lt!1844306 (lemmaContainsKeyImpliesGetValueByKeyDefined!1637 (toList!5542 (extractMap!1852 lt!1843995)) key!4653))))

(declare-datatypes ((Option!12017 0))(
  ( (None!12016) (Some!12016 (v!46399 V!13961)) )
))
(declare-fun isDefined!9272 (Option!12017) Bool)

(declare-fun getValueByKey!1745 (List!52459 K!13715) Option!12017)

(assert (=> b!4685061 (isDefined!9272 (getValueByKey!1745 (toList!5542 (extractMap!1852 lt!1843995)) key!4653))))

(declare-fun lt!1844302 () Unit!123153)

(assert (=> b!4685061 (= lt!1844302 lt!1844306)))

(declare-fun lemmaInListThenGetKeysListContains!827 (List!52459 K!13715) Unit!123153)

(assert (=> b!4685061 (= lt!1844304 (lemmaInListThenGetKeysListContains!827 (toList!5542 (extractMap!1852 lt!1843995)) key!4653))))

(assert (=> b!4685061 call!327404))

(declare-fun b!4685062 () Bool)

(assert (=> b!4685062 (= e!2922918 (not (contains!15494 (keys!18667 (extractMap!1852 lt!1843995)) key!4653)))))

(declare-fun b!4685063 () Bool)

(assert (=> b!4685063 (= e!2922919 e!2922921)))

(declare-fun res!1975244 () Bool)

(assert (=> b!4685063 (=> (not res!1975244) (not e!2922921))))

(assert (=> b!4685063 (= res!1975244 (isDefined!9272 (getValueByKey!1745 (toList!5542 (extractMap!1852 lt!1843995)) key!4653)))))

(assert (= (and d!1488881 c!801180) b!4685061))

(assert (= (and d!1488881 (not c!801180)) b!4685057))

(assert (= (and b!4685057 c!801178) b!4685056))

(assert (= (and b!4685057 (not c!801178)) b!4685059))

(assert (= (or b!4685061 b!4685057) bm!327399))

(assert (= (and bm!327399 c!801179) b!4685060))

(assert (= (and bm!327399 (not c!801179)) b!4685058))

(assert (= (and d!1488881 res!1975242) b!4685062))

(assert (= (and d!1488881 (not res!1975243)) b!4685063))

(assert (= (and b!4685063 res!1975244) b!4685055))

(declare-fun m!5583775 () Bool)

(assert (=> b!4685061 m!5583775))

(declare-fun m!5583777 () Bool)

(assert (=> b!4685061 m!5583777))

(assert (=> b!4685061 m!5583777))

(declare-fun m!5583779 () Bool)

(assert (=> b!4685061 m!5583779))

(declare-fun m!5583781 () Bool)

(assert (=> b!4685061 m!5583781))

(declare-fun m!5583783 () Bool)

(assert (=> b!4685056 m!5583783))

(declare-fun m!5583785 () Bool)

(assert (=> b!4685056 m!5583785))

(assert (=> b!4685055 m!5583385))

(declare-fun m!5583787 () Bool)

(assert (=> b!4685055 m!5583787))

(assert (=> b!4685055 m!5583787))

(declare-fun m!5583789 () Bool)

(assert (=> b!4685055 m!5583789))

(assert (=> b!4685063 m!5583777))

(assert (=> b!4685063 m!5583777))

(assert (=> b!4685063 m!5583779))

(assert (=> b!4685062 m!5583385))

(assert (=> b!4685062 m!5583787))

(assert (=> b!4685062 m!5583787))

(assert (=> b!4685062 m!5583789))

(assert (=> d!1488881 m!5583783))

(declare-fun m!5583791 () Bool)

(assert (=> b!4685060 m!5583791))

(assert (=> b!4685058 m!5583385))

(assert (=> b!4685058 m!5583787))

(declare-fun m!5583793 () Bool)

(assert (=> bm!327399 m!5583793))

(assert (=> b!4684717 d!1488881))

(declare-fun bs!1084012 () Bool)

(declare-fun d!1488883 () Bool)

(assert (= bs!1084012 (and d!1488883 start!473352)))

(declare-fun lambda!205813 () Int)

(assert (=> bs!1084012 (= lambda!205813 lambda!205707)))

(declare-fun bs!1084013 () Bool)

(assert (= bs!1084013 (and d!1488883 d!1488815)))

(assert (=> bs!1084013 (= lambda!205813 lambda!205790)))

(declare-fun bs!1084014 () Bool)

(assert (= bs!1084014 (and d!1488883 d!1488837)))

(assert (=> bs!1084014 (= lambda!205813 lambda!205797)))

(declare-fun bs!1084015 () Bool)

(assert (= bs!1084015 (and d!1488883 d!1488841)))

(assert (=> bs!1084015 (= lambda!205813 lambda!205812)))

(declare-fun lt!1844310 () ListMap!4905)

(assert (=> d!1488883 (invariantList!1392 (toList!5542 lt!1844310))))

(declare-fun e!2922924 () ListMap!4905)

(assert (=> d!1488883 (= lt!1844310 e!2922924)))

(declare-fun c!801181 () Bool)

(assert (=> d!1488883 (= c!801181 ((_ is Cons!52336) lt!1843995))))

(assert (=> d!1488883 (forall!11275 lt!1843995 lambda!205813)))

(assert (=> d!1488883 (= (extractMap!1852 lt!1843995) lt!1844310)))

(declare-fun b!4685064 () Bool)

(assert (=> b!4685064 (= e!2922924 (addToMapMapFromBucket!1258 (_2!30144 (h!58563 lt!1843995)) (extractMap!1852 (t!359622 lt!1843995))))))

(declare-fun b!4685065 () Bool)

(assert (=> b!4685065 (= e!2922924 (ListMap!4906 Nil!52335))))

(assert (= (and d!1488883 c!801181) b!4685064))

(assert (= (and d!1488883 (not c!801181)) b!4685065))

(declare-fun m!5583795 () Bool)

(assert (=> d!1488883 m!5583795))

(declare-fun m!5583797 () Bool)

(assert (=> d!1488883 m!5583797))

(declare-fun m!5583799 () Bool)

(assert (=> b!4685064 m!5583799))

(assert (=> b!4685064 m!5583799))

(declare-fun m!5583801 () Bool)

(assert (=> b!4685064 m!5583801))

(assert (=> b!4684717 d!1488883))

(declare-fun bs!1084016 () Bool)

(declare-fun d!1488885 () Bool)

(assert (= bs!1084016 (and d!1488885 d!1488815)))

(declare-fun lambda!205816 () Int)

(assert (=> bs!1084016 (= lambda!205816 lambda!205790)))

(declare-fun bs!1084017 () Bool)

(assert (= bs!1084017 (and d!1488885 d!1488883)))

(assert (=> bs!1084017 (= lambda!205816 lambda!205813)))

(declare-fun bs!1084018 () Bool)

(assert (= bs!1084018 (and d!1488885 d!1488841)))

(assert (=> bs!1084018 (= lambda!205816 lambda!205812)))

(declare-fun bs!1084019 () Bool)

(assert (= bs!1084019 (and d!1488885 d!1488837)))

(assert (=> bs!1084019 (= lambda!205816 lambda!205797)))

(declare-fun bs!1084020 () Bool)

(assert (= bs!1084020 (and d!1488885 start!473352)))

(assert (=> bs!1084020 (= lambda!205816 lambda!205707)))

(assert (=> d!1488885 (contains!15488 (extractMap!1852 (toList!5541 (ListLongMap!4072 lt!1843995))) key!4653)))

(declare-fun lt!1844313 () Unit!123153)

(declare-fun choose!32467 (ListLongMap!4071 K!13715 Hashable!6195) Unit!123153)

(assert (=> d!1488885 (= lt!1844313 (choose!32467 (ListLongMap!4072 lt!1843995) key!4653 hashF!1323))))

(assert (=> d!1488885 (forall!11275 (toList!5541 (ListLongMap!4072 lt!1843995)) lambda!205816)))

(assert (=> d!1488885 (= (lemmaListContainsThenExtractedMapContains!418 (ListLongMap!4072 lt!1843995) key!4653 hashF!1323) lt!1844313)))

(declare-fun bs!1084021 () Bool)

(assert (= bs!1084021 d!1488885))

(declare-fun m!5583803 () Bool)

(assert (=> bs!1084021 m!5583803))

(assert (=> bs!1084021 m!5583803))

(declare-fun m!5583805 () Bool)

(assert (=> bs!1084021 m!5583805))

(declare-fun m!5583807 () Bool)

(assert (=> bs!1084021 m!5583807))

(declare-fun m!5583809 () Bool)

(assert (=> bs!1084021 m!5583809))

(assert (=> b!4684717 d!1488885))

(declare-fun b!4685066 () Bool)

(declare-fun e!2922928 () Bool)

(assert (=> b!4685066 (= e!2922928 (contains!15494 (keys!18667 lt!1843991) key!4653))))

(declare-fun bm!327400 () Bool)

(declare-fun call!327405 () Bool)

(declare-fun e!2922930 () List!52462)

(assert (=> bm!327400 (= call!327405 (contains!15494 e!2922930 key!4653))))

(declare-fun c!801183 () Bool)

(declare-fun c!801184 () Bool)

(assert (=> bm!327400 (= c!801183 c!801184)))

(declare-fun b!4685067 () Bool)

(assert (=> b!4685067 false))

(declare-fun lt!1844315 () Unit!123153)

(declare-fun lt!1844320 () Unit!123153)

(assert (=> b!4685067 (= lt!1844315 lt!1844320)))

(assert (=> b!4685067 (containsKey!2993 (toList!5542 lt!1843991) key!4653)))

(assert (=> b!4685067 (= lt!1844320 (lemmaInGetKeysListThenContainsKey!831 (toList!5542 lt!1843991) key!4653))))

(declare-fun e!2922927 () Unit!123153)

(declare-fun Unit!123185 () Unit!123153)

(assert (=> b!4685067 (= e!2922927 Unit!123185)))

(declare-fun b!4685068 () Bool)

(declare-fun e!2922929 () Unit!123153)

(assert (=> b!4685068 (= e!2922929 e!2922927)))

(declare-fun c!801182 () Bool)

(assert (=> b!4685068 (= c!801182 call!327405)))

(declare-fun b!4685069 () Bool)

(assert (=> b!4685069 (= e!2922930 (keys!18667 lt!1843991))))

(declare-fun d!1488887 () Bool)

(declare-fun e!2922926 () Bool)

(assert (=> d!1488887 e!2922926))

(declare-fun res!1975246 () Bool)

(assert (=> d!1488887 (=> res!1975246 e!2922926)))

(declare-fun e!2922925 () Bool)

(assert (=> d!1488887 (= res!1975246 e!2922925)))

(declare-fun res!1975245 () Bool)

(assert (=> d!1488887 (=> (not res!1975245) (not e!2922925))))

(declare-fun lt!1844321 () Bool)

(assert (=> d!1488887 (= res!1975245 (not lt!1844321))))

(declare-fun lt!1844319 () Bool)

(assert (=> d!1488887 (= lt!1844321 lt!1844319)))

(declare-fun lt!1844317 () Unit!123153)

(assert (=> d!1488887 (= lt!1844317 e!2922929)))

(assert (=> d!1488887 (= c!801184 lt!1844319)))

(assert (=> d!1488887 (= lt!1844319 (containsKey!2993 (toList!5542 lt!1843991) key!4653))))

(assert (=> d!1488887 (= (contains!15488 lt!1843991 key!4653) lt!1844321)))

(declare-fun b!4685070 () Bool)

(declare-fun Unit!123186 () Unit!123153)

(assert (=> b!4685070 (= e!2922927 Unit!123186)))

(declare-fun b!4685071 () Bool)

(assert (=> b!4685071 (= e!2922930 (getKeysList!832 (toList!5542 lt!1843991)))))

(declare-fun b!4685072 () Bool)

(declare-fun lt!1844316 () Unit!123153)

(assert (=> b!4685072 (= e!2922929 lt!1844316)))

(declare-fun lt!1844318 () Unit!123153)

(assert (=> b!4685072 (= lt!1844318 (lemmaContainsKeyImpliesGetValueByKeyDefined!1637 (toList!5542 lt!1843991) key!4653))))

(assert (=> b!4685072 (isDefined!9272 (getValueByKey!1745 (toList!5542 lt!1843991) key!4653))))

(declare-fun lt!1844314 () Unit!123153)

(assert (=> b!4685072 (= lt!1844314 lt!1844318)))

(assert (=> b!4685072 (= lt!1844316 (lemmaInListThenGetKeysListContains!827 (toList!5542 lt!1843991) key!4653))))

(assert (=> b!4685072 call!327405))

(declare-fun b!4685073 () Bool)

(assert (=> b!4685073 (= e!2922925 (not (contains!15494 (keys!18667 lt!1843991) key!4653)))))

(declare-fun b!4685074 () Bool)

(assert (=> b!4685074 (= e!2922926 e!2922928)))

(declare-fun res!1975247 () Bool)

(assert (=> b!4685074 (=> (not res!1975247) (not e!2922928))))

(assert (=> b!4685074 (= res!1975247 (isDefined!9272 (getValueByKey!1745 (toList!5542 lt!1843991) key!4653)))))

(assert (= (and d!1488887 c!801184) b!4685072))

(assert (= (and d!1488887 (not c!801184)) b!4685068))

(assert (= (and b!4685068 c!801182) b!4685067))

(assert (= (and b!4685068 (not c!801182)) b!4685070))

(assert (= (or b!4685072 b!4685068) bm!327400))

(assert (= (and bm!327400 c!801183) b!4685071))

(assert (= (and bm!327400 (not c!801183)) b!4685069))

(assert (= (and d!1488887 res!1975245) b!4685073))

(assert (= (and d!1488887 (not res!1975246)) b!4685074))

(assert (= (and b!4685074 res!1975247) b!4685066))

(declare-fun m!5583811 () Bool)

(assert (=> b!4685072 m!5583811))

(declare-fun m!5583813 () Bool)

(assert (=> b!4685072 m!5583813))

(assert (=> b!4685072 m!5583813))

(declare-fun m!5583815 () Bool)

(assert (=> b!4685072 m!5583815))

(declare-fun m!5583817 () Bool)

(assert (=> b!4685072 m!5583817))

(declare-fun m!5583819 () Bool)

(assert (=> b!4685067 m!5583819))

(declare-fun m!5583821 () Bool)

(assert (=> b!4685067 m!5583821))

(declare-fun m!5583823 () Bool)

(assert (=> b!4685066 m!5583823))

(assert (=> b!4685066 m!5583823))

(declare-fun m!5583825 () Bool)

(assert (=> b!4685066 m!5583825))

(assert (=> b!4685074 m!5583813))

(assert (=> b!4685074 m!5583813))

(assert (=> b!4685074 m!5583815))

(assert (=> b!4685073 m!5583823))

(assert (=> b!4685073 m!5583823))

(assert (=> b!4685073 m!5583825))

(assert (=> d!1488887 m!5583819))

(declare-fun m!5583827 () Bool)

(assert (=> b!4685071 m!5583827))

(assert (=> b!4685069 m!5583823))

(declare-fun m!5583829 () Bool)

(assert (=> bm!327400 m!5583829))

(assert (=> b!4684728 d!1488887))

(declare-fun bs!1084022 () Bool)

(declare-fun d!1488889 () Bool)

(assert (= bs!1084022 (and d!1488889 d!1488815)))

(declare-fun lambda!205817 () Int)

(assert (=> bs!1084022 (= lambda!205817 lambda!205790)))

(declare-fun bs!1084023 () Bool)

(assert (= bs!1084023 (and d!1488889 d!1488883)))

(assert (=> bs!1084023 (= lambda!205817 lambda!205813)))

(declare-fun bs!1084024 () Bool)

(assert (= bs!1084024 (and d!1488889 d!1488841)))

(assert (=> bs!1084024 (= lambda!205817 lambda!205812)))

(declare-fun bs!1084025 () Bool)

(assert (= bs!1084025 (and d!1488889 d!1488837)))

(assert (=> bs!1084025 (= lambda!205817 lambda!205797)))

(declare-fun bs!1084026 () Bool)

(assert (= bs!1084026 (and d!1488889 d!1488885)))

(assert (=> bs!1084026 (= lambda!205817 lambda!205816)))

(declare-fun bs!1084027 () Bool)

(assert (= bs!1084027 (and d!1488889 start!473352)))

(assert (=> bs!1084027 (= lambda!205817 lambda!205707)))

(declare-fun lt!1844322 () ListMap!4905)

(assert (=> d!1488889 (invariantList!1392 (toList!5542 lt!1844322))))

(declare-fun e!2922931 () ListMap!4905)

(assert (=> d!1488889 (= lt!1844322 e!2922931)))

(declare-fun c!801185 () Bool)

(assert (=> d!1488889 (= c!801185 ((_ is Cons!52336) (toList!5541 lm!2023)))))

(assert (=> d!1488889 (forall!11275 (toList!5541 lm!2023) lambda!205817)))

(assert (=> d!1488889 (= (extractMap!1852 (toList!5541 lm!2023)) lt!1844322)))

(declare-fun b!4685075 () Bool)

(assert (=> b!4685075 (= e!2922931 (addToMapMapFromBucket!1258 (_2!30144 (h!58563 (toList!5541 lm!2023))) (extractMap!1852 (t!359622 (toList!5541 lm!2023)))))))

(declare-fun b!4685076 () Bool)

(assert (=> b!4685076 (= e!2922931 (ListMap!4906 Nil!52335))))

(assert (= (and d!1488889 c!801185) b!4685075))

(assert (= (and d!1488889 (not c!801185)) b!4685076))

(declare-fun m!5583831 () Bool)

(assert (=> d!1488889 m!5583831))

(declare-fun m!5583833 () Bool)

(assert (=> d!1488889 m!5583833))

(assert (=> b!4685075 m!5583335))

(assert (=> b!4685075 m!5583335))

(assert (=> b!4685075 m!5583337))

(assert (=> b!4684728 d!1488889))

(declare-fun d!1488891 () Bool)

(declare-fun res!1975248 () Bool)

(declare-fun e!2922932 () Bool)

(assert (=> d!1488891 (=> res!1975248 e!2922932)))

(assert (=> d!1488891 (= res!1975248 (not ((_ is Cons!52335) oldBucket!34)))))

(assert (=> d!1488891 (= (noDuplicateKeys!1826 oldBucket!34) e!2922932)))

(declare-fun b!4685077 () Bool)

(declare-fun e!2922933 () Bool)

(assert (=> b!4685077 (= e!2922932 e!2922933)))

(declare-fun res!1975249 () Bool)

(assert (=> b!4685077 (=> (not res!1975249) (not e!2922933))))

(assert (=> b!4685077 (= res!1975249 (not (containsKey!2989 (t!359621 oldBucket!34) (_1!30143 (h!58562 oldBucket!34)))))))

(declare-fun b!4685078 () Bool)

(assert (=> b!4685078 (= e!2922933 (noDuplicateKeys!1826 (t!359621 oldBucket!34)))))

(assert (= (and d!1488891 (not res!1975248)) b!4685077))

(assert (= (and b!4685077 res!1975249) b!4685078))

(declare-fun m!5583835 () Bool)

(assert (=> b!4685077 m!5583835))

(assert (=> b!4685078 m!5583447))

(assert (=> b!4684718 d!1488891))

(declare-fun bs!1084028 () Bool)

(declare-fun d!1488893 () Bool)

(assert (= bs!1084028 (and d!1488893 d!1488815)))

(declare-fun lambda!205820 () Int)

(assert (=> bs!1084028 (not (= lambda!205820 lambda!205790))))

(declare-fun bs!1084029 () Bool)

(assert (= bs!1084029 (and d!1488893 d!1488883)))

(assert (=> bs!1084029 (not (= lambda!205820 lambda!205813))))

(declare-fun bs!1084030 () Bool)

(assert (= bs!1084030 (and d!1488893 d!1488841)))

(assert (=> bs!1084030 (not (= lambda!205820 lambda!205812))))

(declare-fun bs!1084031 () Bool)

(assert (= bs!1084031 (and d!1488893 d!1488889)))

(assert (=> bs!1084031 (not (= lambda!205820 lambda!205817))))

(declare-fun bs!1084032 () Bool)

(assert (= bs!1084032 (and d!1488893 d!1488837)))

(assert (=> bs!1084032 (not (= lambda!205820 lambda!205797))))

(declare-fun bs!1084033 () Bool)

(assert (= bs!1084033 (and d!1488893 d!1488885)))

(assert (=> bs!1084033 (not (= lambda!205820 lambda!205816))))

(declare-fun bs!1084034 () Bool)

(assert (= bs!1084034 (and d!1488893 start!473352)))

(assert (=> bs!1084034 (not (= lambda!205820 lambda!205707))))

(assert (=> d!1488893 true))

(assert (=> d!1488893 (= (allKeysSameHashInMap!1740 lm!2023 hashF!1323) (forall!11275 (toList!5541 lm!2023) lambda!205820))))

(declare-fun bs!1084035 () Bool)

(assert (= bs!1084035 d!1488893))

(declare-fun m!5583837 () Bool)

(assert (=> bs!1084035 m!5583837))

(assert (=> b!4684729 d!1488893))

(declare-fun bs!1084036 () Bool)

(declare-fun d!1488895 () Bool)

(assert (= bs!1084036 (and d!1488895 d!1488827)))

(declare-fun lambda!205821 () Int)

(assert (=> bs!1084036 (= lambda!205821 lambda!205793)))

(declare-fun bs!1084037 () Bool)

(assert (= bs!1084037 (and d!1488895 b!4684865)))

(assert (=> bs!1084037 (not (= lambda!205821 lambda!205781))))

(declare-fun bs!1084038 () Bool)

(assert (= bs!1084038 (and d!1488895 b!4684864)))

(assert (=> bs!1084038 (not (= lambda!205821 lambda!205783))))

(declare-fun bs!1084039 () Bool)

(assert (= bs!1084039 (and d!1488895 d!1488785)))

(assert (=> bs!1084039 (not (= lambda!205821 lambda!205784))))

(assert (=> bs!1084038 (not (= lambda!205821 lambda!205782))))

(assert (=> d!1488895 true))

(assert (=> d!1488895 true))

(assert (=> d!1488895 (= (allKeysSameHash!1652 newBucket!218 hash!405 hashF!1323) (forall!11277 newBucket!218 lambda!205821))))

(declare-fun bs!1084040 () Bool)

(assert (= bs!1084040 d!1488895))

(declare-fun m!5583839 () Bool)

(assert (=> bs!1084040 m!5583839))

(assert (=> b!4684719 d!1488895))

(declare-fun e!2922936 () Bool)

(declare-fun b!4685085 () Bool)

(declare-fun tp!1345498 () Bool)

(assert (=> b!4685085 (= e!2922936 (and tp_is_empty!30597 tp_is_empty!30599 tp!1345498))))

(assert (=> b!4684730 (= tp!1345485 e!2922936)))

(assert (= (and b!4684730 ((_ is Cons!52335) (t!359621 oldBucket!34))) b!4685085))

(declare-fun b!4685090 () Bool)

(declare-fun e!2922939 () Bool)

(declare-fun tp!1345503 () Bool)

(declare-fun tp!1345504 () Bool)

(assert (=> b!4685090 (= e!2922939 (and tp!1345503 tp!1345504))))

(assert (=> b!4684733 (= tp!1345483 e!2922939)))

(assert (= (and b!4684733 ((_ is Cons!52336) (toList!5541 lm!2023))) b!4685090))

(declare-fun b!4685091 () Bool)

(declare-fun tp!1345505 () Bool)

(declare-fun e!2922940 () Bool)

(assert (=> b!4685091 (= e!2922940 (and tp_is_empty!30597 tp_is_empty!30599 tp!1345505))))

(assert (=> b!4684723 (= tp!1345484 e!2922940)))

(assert (= (and b!4684723 ((_ is Cons!52335) (t!359621 newBucket!218))) b!4685091))

(declare-fun b_lambda!176807 () Bool)

(assert (= b_lambda!176789 (or start!473352 b_lambda!176807)))

(declare-fun bs!1084041 () Bool)

(declare-fun d!1488897 () Bool)

(assert (= bs!1084041 (and d!1488897 start!473352)))

(assert (=> bs!1084041 (= (dynLambda!21695 lambda!205707 (h!58563 (toList!5541 lm!2023))) (noDuplicateKeys!1826 (_2!30144 (h!58563 (toList!5541 lm!2023)))))))

(assert (=> bs!1084041 m!5583593))

(assert (=> b!4684738 d!1488897))

(declare-fun b_lambda!176809 () Bool)

(assert (= b_lambda!176805 (or start!473352 b_lambda!176809)))

(declare-fun bs!1084042 () Bool)

(declare-fun d!1488899 () Bool)

(assert (= bs!1084042 (and d!1488899 start!473352)))

(assert (=> bs!1084042 (= (dynLambda!21695 lambda!205707 (h!58563 lt!1843995)) (noDuplicateKeys!1826 (_2!30144 (h!58563 lt!1843995))))))

(declare-fun m!5583841 () Bool)

(assert (=> bs!1084042 m!5583841))

(assert (=> b!4685035 d!1488899))

(declare-fun b_lambda!176811 () Bool)

(assert (= b_lambda!176803 (or start!473352 b_lambda!176811)))

(declare-fun bs!1084043 () Bool)

(declare-fun d!1488901 () Bool)

(assert (= bs!1084043 (and d!1488901 start!473352)))

(assert (=> bs!1084043 (= (dynLambda!21695 lambda!205707 lt!1843989) (noDuplicateKeys!1826 (_2!30144 lt!1843989)))))

(declare-fun m!5583843 () Bool)

(assert (=> bs!1084043 m!5583843))

(assert (=> d!1488869 d!1488901))

(check-sat (not b_lambda!176811) (not d!1488839) (not b!4685063) (not b!4685078) (not d!1488759) (not b!4684961) (not b_lambda!176807) (not bm!327391) (not d!1488873) (not b!4685062) (not b!4685006) (not b!4684863) (not b!4684862) (not b!4685072) (not d!1488885) tp_is_empty!30599 (not d!1488867) (not b!4684763) (not b!4685017) (not d!1488827) (not d!1488837) (not d!1488883) (not bs!1084042) (not b!4685056) (not d!1488777) (not d!1488889) (not b!4684954) (not d!1488881) (not d!1488875) (not b!4685074) (not bm!327399) (not b!4685067) (not d!1488841) (not bm!327392) (not bm!327400) (not b!4684777) (not b!4685077) (not b!4684955) (not d!1488887) (not b!4685064) (not b!4684903) (not d!1488829) (not b!4685066) (not b!4685034) (not d!1488755) (not d!1488831) (not b!4685073) (not b!4685090) (not b!4685058) (not b!4685008) (not b!4685071) (not d!1488895) (not b!4685005) (not b!4685061) (not b!4685023) (not b!4685030) (not d!1488869) (not b!4685007) (not d!1488893) (not b!4684778) tp_is_empty!30597 (not bm!327390) (not b!4685014) (not d!1488783) (not b!4685032) (not b!4685075) (not b!4685055) (not b!4685069) (not b!4684864) (not b!4685060) (not bs!1084043) (not b!4684739) (not b!4685085) (not bs!1084041) (not d!1488775) (not b!4685091) (not d!1488865) (not d!1488769) (not b!4684960) (not b!4684771) (not b_lambda!176809) (not b!4684767) (not d!1488785) (not b!4684959) (not d!1488815) (not b!4685036))
(check-sat)
