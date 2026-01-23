; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!475316 () Bool)

(assert start!475316)

(declare-fun b!4694173 () Bool)

(declare-fun e!2928370 () Bool)

(declare-fun e!2928365 () Bool)

(assert (=> b!4694173 (= e!2928370 e!2928365)))

(declare-fun res!1980652 () Bool)

(assert (=> b!4694173 (=> res!1980652 e!2928365)))

(declare-datatypes ((K!13830 0))(
  ( (K!13831 (val!19335 Int)) )
))
(declare-datatypes ((V!14076 0))(
  ( (V!14077 (val!19336 Int)) )
))
(declare-datatypes ((tuple2!53882 0))(
  ( (tuple2!53883 (_1!30235 K!13830) (_2!30235 V!14076)) )
))
(declare-datatypes ((List!52583 0))(
  ( (Nil!52459) (Cons!52459 (h!58718 tuple2!53882) (t!359773 List!52583)) )
))
(declare-fun lt!1854919 () List!52583)

(declare-fun key!4653 () K!13830)

(declare-fun lt!1854917 () List!52583)

(declare-fun removePairForKey!1467 (List!52583 K!13830) List!52583)

(assert (=> b!4694173 (= res!1980652 (not (= (removePairForKey!1467 lt!1854919 key!4653) lt!1854917)))))

(declare-fun newBucket!218 () List!52583)

(declare-fun tail!8641 (List!52583) List!52583)

(assert (=> b!4694173 (= lt!1854917 (tail!8641 newBucket!218))))

(declare-fun oldBucket!34 () List!52583)

(assert (=> b!4694173 (= lt!1854919 (tail!8641 oldBucket!34))))

(declare-fun b!4694174 () Bool)

(declare-fun e!2928371 () Bool)

(assert (=> b!4694174 (= e!2928365 e!2928371)))

(declare-fun res!1980661 () Bool)

(assert (=> b!4694174 (=> res!1980661 e!2928371)))

(declare-datatypes ((ListMap!4997 0))(
  ( (ListMap!4998 (toList!5633 List!52583)) )
))
(declare-fun lt!1854899 () ListMap!4997)

(declare-fun lt!1854914 () ListMap!4997)

(declare-fun eq!1031 (ListMap!4997 ListMap!4997) Bool)

(declare-fun +!2156 (ListMap!4997 tuple2!53882) ListMap!4997)

(assert (=> b!4694174 (= res!1980661 (not (eq!1031 lt!1854914 (+!2156 lt!1854899 (h!58718 oldBucket!34)))))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((tuple2!53884 0))(
  ( (tuple2!53885 (_1!30236 (_ BitVec 64)) (_2!30236 List!52583)) )
))
(declare-datatypes ((List!52584 0))(
  ( (Nil!52460) (Cons!52460 (h!58719 tuple2!53884) (t!359774 List!52584)) )
))
(declare-datatypes ((ListLongMap!4163 0))(
  ( (ListLongMap!4164 (toList!5634 List!52584)) )
))
(declare-fun lm!2023 () ListLongMap!4163)

(declare-fun extractMap!1898 (List!52584) ListMap!4997)

(assert (=> b!4694174 (= lt!1854899 (extractMap!1898 (Cons!52460 (tuple2!53885 hash!405 lt!1854919) (t!359774 (toList!5634 lm!2023)))))))

(declare-fun lt!1854921 () tuple2!53884)

(assert (=> b!4694174 (= lt!1854914 (extractMap!1898 (Cons!52460 lt!1854921 (t!359774 (toList!5634 lm!2023)))))))

(declare-fun lt!1854923 () tuple2!53882)

(declare-fun lt!1854905 () ListMap!4997)

(declare-fun addToMapMapFromBucket!1304 (List!52583 ListMap!4997) ListMap!4997)

(assert (=> b!4694174 (eq!1031 (addToMapMapFromBucket!1304 (Cons!52459 lt!1854923 lt!1854917) lt!1854905) (+!2156 (addToMapMapFromBucket!1304 lt!1854917 lt!1854905) lt!1854923))))

(declare-datatypes ((Unit!124901 0))(
  ( (Unit!124902) )
))
(declare-fun lt!1854898 () Unit!124901)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!280 (tuple2!53882 List!52583 ListMap!4997) Unit!124901)

(assert (=> b!4694174 (= lt!1854898 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!280 lt!1854923 lt!1854917 lt!1854905))))

(declare-fun head!10007 (List!52583) tuple2!53882)

(assert (=> b!4694174 (= lt!1854923 (head!10007 newBucket!218))))

(declare-fun lt!1854906 () tuple2!53882)

(assert (=> b!4694174 (eq!1031 (addToMapMapFromBucket!1304 (Cons!52459 lt!1854906 lt!1854919) lt!1854905) (+!2156 (addToMapMapFromBucket!1304 lt!1854919 lt!1854905) lt!1854906))))

(declare-fun lt!1854913 () Unit!124901)

(assert (=> b!4694174 (= lt!1854913 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!280 lt!1854906 lt!1854919 lt!1854905))))

(assert (=> b!4694174 (= lt!1854906 (head!10007 oldBucket!34))))

(declare-fun lt!1854900 () ListMap!4997)

(declare-fun contains!15690 (ListMap!4997 K!13830) Bool)

(assert (=> b!4694174 (contains!15690 lt!1854900 key!4653)))

(declare-fun lt!1854907 () List!52584)

(assert (=> b!4694174 (= lt!1854900 (extractMap!1898 lt!1854907))))

(declare-datatypes ((Hashable!6241 0))(
  ( (HashableExt!6240 (__x!31944 Int)) )
))
(declare-fun hashF!1323 () Hashable!6241)

(declare-fun lt!1854903 () Unit!124901)

(declare-fun lt!1854920 () ListLongMap!4163)

(declare-fun lemmaListContainsThenExtractedMapContains!464 (ListLongMap!4163 K!13830 Hashable!6241) Unit!124901)

(assert (=> b!4694174 (= lt!1854903 (lemmaListContainsThenExtractedMapContains!464 lt!1854920 key!4653 hashF!1323))))

(assert (=> b!4694174 (= lt!1854920 (ListLongMap!4164 lt!1854907))))

(declare-fun lt!1854922 () tuple2!53884)

(assert (=> b!4694174 (= lt!1854907 (Cons!52460 lt!1854922 (t!359774 (toList!5634 lm!2023))))))

(assert (=> b!4694174 (= lt!1854922 (tuple2!53885 hash!405 (t!359773 oldBucket!34)))))

(declare-fun b!4694175 () Bool)

(declare-fun res!1980651 () Bool)

(assert (=> b!4694175 (=> res!1980651 e!2928371)))

(assert (=> b!4694175 (= res!1980651 (not (eq!1031 lt!1854914 (+!2156 lt!1854899 lt!1854923))))))

(declare-fun res!1980650 () Bool)

(declare-fun e!2928372 () Bool)

(assert (=> start!475316 (=> (not res!1980650) (not e!2928372))))

(declare-fun lambda!208315 () Int)

(declare-fun forall!11353 (List!52584 Int) Bool)

(assert (=> start!475316 (= res!1980650 (forall!11353 (toList!5634 lm!2023) lambda!208315))))

(assert (=> start!475316 e!2928372))

(declare-fun e!2928364 () Bool)

(declare-fun inv!67704 (ListLongMap!4163) Bool)

(assert (=> start!475316 (and (inv!67704 lm!2023) e!2928364)))

(declare-fun tp_is_empty!30781 () Bool)

(assert (=> start!475316 tp_is_empty!30781))

(declare-fun e!2928373 () Bool)

(assert (=> start!475316 e!2928373))

(assert (=> start!475316 true))

(declare-fun e!2928374 () Bool)

(assert (=> start!475316 e!2928374))

(declare-fun b!4694176 () Bool)

(declare-fun e!2928366 () Bool)

(declare-fun e!2928367 () Bool)

(assert (=> b!4694176 (= e!2928366 e!2928367)))

(declare-fun res!1980659 () Bool)

(assert (=> b!4694176 (=> (not res!1980659) (not e!2928367))))

(declare-fun lt!1854901 () (_ BitVec 64))

(assert (=> b!4694176 (= res!1980659 (= lt!1854901 hash!405))))

(declare-fun hash!4105 (Hashable!6241 K!13830) (_ BitVec 64))

(assert (=> b!4694176 (= lt!1854901 (hash!4105 hashF!1323 key!4653))))

(declare-fun b!4694177 () Bool)

(declare-fun res!1980663 () Bool)

(assert (=> b!4694177 (=> res!1980663 e!2928371)))

(assert (=> b!4694177 (= res!1980663 (not (= (h!58718 oldBucket!34) lt!1854923)))))

(declare-fun b!4694178 () Bool)

(declare-fun e!2928369 () Bool)

(assert (=> b!4694178 (= e!2928369 e!2928370)))

(declare-fun res!1980658 () Bool)

(assert (=> b!4694178 (=> res!1980658 e!2928370)))

(declare-fun containsKey!3099 (List!52583 K!13830) Bool)

(assert (=> b!4694178 (= res!1980658 (not (containsKey!3099 (t!359773 oldBucket!34) key!4653)))))

(assert (=> b!4694178 (containsKey!3099 oldBucket!34 key!4653)))

(declare-fun lt!1854915 () Unit!124901)

(declare-fun lemmaGetPairDefinedThenContainsKey!224 (List!52583 K!13830 Hashable!6241) Unit!124901)

(assert (=> b!4694178 (= lt!1854915 (lemmaGetPairDefinedThenContainsKey!224 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1854912 () List!52583)

(declare-datatypes ((Option!12123 0))(
  ( (None!12122) (Some!12122 (v!46565 tuple2!53882)) )
))
(declare-fun isDefined!9378 (Option!12123) Bool)

(declare-fun getPair!476 (List!52583 K!13830) Option!12123)

(assert (=> b!4694178 (isDefined!9378 (getPair!476 lt!1854912 key!4653))))

(declare-fun lt!1854908 () Unit!124901)

(declare-fun lt!1854924 () tuple2!53884)

(declare-fun forallContained!3460 (List!52584 Int tuple2!53884) Unit!124901)

(assert (=> b!4694178 (= lt!1854908 (forallContained!3460 (toList!5634 lm!2023) lambda!208315 lt!1854924))))

(declare-fun contains!15691 (List!52584 tuple2!53884) Bool)

(assert (=> b!4694178 (contains!15691 (toList!5634 lm!2023) lt!1854924)))

(assert (=> b!4694178 (= lt!1854924 (tuple2!53885 lt!1854901 lt!1854912))))

(declare-fun lt!1854918 () Unit!124901)

(declare-fun lemmaGetValueImpliesTupleContained!281 (ListLongMap!4163 (_ BitVec 64) List!52583) Unit!124901)

(assert (=> b!4694178 (= lt!1854918 (lemmaGetValueImpliesTupleContained!281 lm!2023 lt!1854901 lt!1854912))))

(declare-fun apply!12355 (ListLongMap!4163 (_ BitVec 64)) List!52583)

(assert (=> b!4694178 (= lt!1854912 (apply!12355 lm!2023 lt!1854901))))

(declare-fun contains!15692 (ListLongMap!4163 (_ BitVec 64)) Bool)

(assert (=> b!4694178 (contains!15692 lm!2023 lt!1854901)))

(declare-fun lt!1854904 () Unit!124901)

(declare-fun lemmaInGenMapThenLongMapContainsHash!682 (ListLongMap!4163 K!13830 Hashable!6241) Unit!124901)

(assert (=> b!4694178 (= lt!1854904 (lemmaInGenMapThenLongMapContainsHash!682 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1854909 () Unit!124901)

(declare-fun lemmaInGenMapThenGetPairDefined!272 (ListLongMap!4163 K!13830 Hashable!6241) Unit!124901)

(assert (=> b!4694178 (= lt!1854909 (lemmaInGenMapThenGetPairDefined!272 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4694179 () Bool)

(declare-fun res!1980660 () Bool)

(assert (=> b!4694179 (=> (not res!1980660) (not e!2928367))))

(declare-fun allKeysSameHash!1698 (List!52583 (_ BitVec 64) Hashable!6241) Bool)

(assert (=> b!4694179 (= res!1980660 (allKeysSameHash!1698 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4694180 () Bool)

(declare-fun res!1980665 () Bool)

(assert (=> b!4694180 (=> (not res!1980665) (not e!2928372))))

(declare-fun noDuplicateKeys!1872 (List!52583) Bool)

(assert (=> b!4694180 (= res!1980665 (noDuplicateKeys!1872 oldBucket!34))))

(declare-fun b!4694181 () Bool)

(assert (=> b!4694181 (= e!2928371 true)))

(declare-fun lt!1854897 () tuple2!53884)

(declare-fun lt!1854910 () Bool)

(declare-fun -!676 (ListMap!4997 K!13830) ListMap!4997)

(assert (=> b!4694181 (= lt!1854910 (eq!1031 (extractMap!1898 (Cons!52460 lt!1854897 (t!359774 (toList!5634 lm!2023)))) (-!676 lt!1854900 key!4653)))))

(declare-fun lt!1854911 () List!52584)

(assert (=> b!4694181 (eq!1031 (extractMap!1898 (Cons!52460 lt!1854897 lt!1854911)) (-!676 (extractMap!1898 (Cons!52460 lt!1854922 lt!1854911)) key!4653))))

(declare-fun tail!8642 (List!52584) List!52584)

(assert (=> b!4694181 (= lt!1854911 (tail!8642 lt!1854907))))

(assert (=> b!4694181 (= lt!1854897 (tuple2!53885 hash!405 lt!1854917))))

(declare-fun lt!1854916 () Unit!124901)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!46 (ListLongMap!4163 (_ BitVec 64) List!52583 List!52583 K!13830 Hashable!6241) Unit!124901)

(assert (=> b!4694181 (= lt!1854916 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!46 lt!1854920 hash!405 (t!359773 oldBucket!34) lt!1854917 key!4653 hashF!1323))))

(declare-fun b!4694182 () Bool)

(declare-fun e!2928368 () Bool)

(assert (=> b!4694182 (= e!2928368 (not e!2928369))))

(declare-fun res!1980657 () Bool)

(assert (=> b!4694182 (=> res!1980657 e!2928369)))

(get-info :version)

(assert (=> b!4694182 (= res!1980657 (or (and ((_ is Cons!52459) oldBucket!34) (= (_1!30235 (h!58718 oldBucket!34)) key!4653)) (not ((_ is Cons!52459) oldBucket!34)) (= (_1!30235 (h!58718 oldBucket!34)) key!4653)))))

(declare-fun lt!1854902 () ListMap!4997)

(assert (=> b!4694182 (= lt!1854902 (addToMapMapFromBucket!1304 (_2!30236 (h!58719 (toList!5634 lm!2023))) lt!1854905))))

(assert (=> b!4694182 (= lt!1854905 (extractMap!1898 (t!359774 (toList!5634 lm!2023))))))

(declare-fun tail!8643 (ListLongMap!4163) ListLongMap!4163)

(assert (=> b!4694182 (= (t!359774 (toList!5634 lm!2023)) (toList!5634 (tail!8643 lm!2023)))))

(declare-fun b!4694183 () Bool)

(assert (=> b!4694183 (= e!2928372 e!2928366)))

(declare-fun res!1980662 () Bool)

(assert (=> b!4694183 (=> (not res!1980662) (not e!2928366))))

(assert (=> b!4694183 (= res!1980662 (contains!15690 lt!1854902 key!4653))))

(assert (=> b!4694183 (= lt!1854902 (extractMap!1898 (toList!5634 lm!2023)))))

(declare-fun b!4694184 () Bool)

(declare-fun tp!1346217 () Bool)

(assert (=> b!4694184 (= e!2928364 tp!1346217)))

(declare-fun b!4694185 () Bool)

(assert (=> b!4694185 (= e!2928367 e!2928368)))

(declare-fun res!1980664 () Bool)

(assert (=> b!4694185 (=> (not res!1980664) (not e!2928368))))

(declare-fun head!10008 (List!52584) tuple2!53884)

(assert (=> b!4694185 (= res!1980664 (= (head!10008 (toList!5634 lm!2023)) lt!1854921))))

(assert (=> b!4694185 (= lt!1854921 (tuple2!53885 hash!405 oldBucket!34))))

(declare-fun tp_is_empty!30783 () Bool)

(declare-fun tp!1346219 () Bool)

(declare-fun b!4694186 () Bool)

(assert (=> b!4694186 (= e!2928374 (and tp_is_empty!30781 tp_is_empty!30783 tp!1346219))))

(declare-fun b!4694187 () Bool)

(declare-fun res!1980655 () Bool)

(assert (=> b!4694187 (=> (not res!1980655) (not e!2928372))))

(assert (=> b!4694187 (= res!1980655 (= (removePairForKey!1467 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4694188 () Bool)

(declare-fun res!1980653 () Bool)

(assert (=> b!4694188 (=> (not res!1980653) (not e!2928367))))

(declare-fun allKeysSameHashInMap!1786 (ListLongMap!4163 Hashable!6241) Bool)

(assert (=> b!4694188 (= res!1980653 (allKeysSameHashInMap!1786 lm!2023 hashF!1323))))

(declare-fun b!4694189 () Bool)

(declare-fun res!1980649 () Bool)

(assert (=> b!4694189 (=> res!1980649 e!2928365)))

(assert (=> b!4694189 (= res!1980649 (not (= (removePairForKey!1467 (t!359773 oldBucket!34) key!4653) lt!1854917)))))

(declare-fun b!4694190 () Bool)

(declare-fun res!1980656 () Bool)

(assert (=> b!4694190 (=> (not res!1980656) (not e!2928368))))

(assert (=> b!4694190 (= res!1980656 ((_ is Cons!52460) (toList!5634 lm!2023)))))

(declare-fun tp!1346218 () Bool)

(declare-fun b!4694191 () Bool)

(assert (=> b!4694191 (= e!2928373 (and tp_is_empty!30781 tp_is_empty!30783 tp!1346218))))

(declare-fun b!4694192 () Bool)

(declare-fun res!1980648 () Bool)

(assert (=> b!4694192 (=> (not res!1980648) (not e!2928372))))

(assert (=> b!4694192 (= res!1980648 (noDuplicateKeys!1872 newBucket!218))))

(declare-fun b!4694193 () Bool)

(declare-fun res!1980654 () Bool)

(assert (=> b!4694193 (=> (not res!1980654) (not e!2928372))))

(assert (=> b!4694193 (= res!1980654 (allKeysSameHash!1698 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!475316 res!1980650) b!4694180))

(assert (= (and b!4694180 res!1980665) b!4694192))

(assert (= (and b!4694192 res!1980648) b!4694187))

(assert (= (and b!4694187 res!1980655) b!4694193))

(assert (= (and b!4694193 res!1980654) b!4694183))

(assert (= (and b!4694183 res!1980662) b!4694176))

(assert (= (and b!4694176 res!1980659) b!4694179))

(assert (= (and b!4694179 res!1980660) b!4694188))

(assert (= (and b!4694188 res!1980653) b!4694185))

(assert (= (and b!4694185 res!1980664) b!4694190))

(assert (= (and b!4694190 res!1980656) b!4694182))

(assert (= (and b!4694182 (not res!1980657)) b!4694178))

(assert (= (and b!4694178 (not res!1980658)) b!4694173))

(assert (= (and b!4694173 (not res!1980652)) b!4694189))

(assert (= (and b!4694189 (not res!1980649)) b!4694174))

(assert (= (and b!4694174 (not res!1980661)) b!4694177))

(assert (= (and b!4694177 (not res!1980663)) b!4694175))

(assert (= (and b!4694175 (not res!1980651)) b!4694181))

(assert (= start!475316 b!4694184))

(assert (= (and start!475316 ((_ is Cons!52459) oldBucket!34)) b!4694191))

(assert (= (and start!475316 ((_ is Cons!52459) newBucket!218)) b!4694186))

(declare-fun m!5600429 () Bool)

(assert (=> b!4694180 m!5600429))

(declare-fun m!5600431 () Bool)

(assert (=> b!4694193 m!5600431))

(declare-fun m!5600433 () Bool)

(assert (=> b!4694178 m!5600433))

(declare-fun m!5600435 () Bool)

(assert (=> b!4694178 m!5600435))

(declare-fun m!5600437 () Bool)

(assert (=> b!4694178 m!5600437))

(declare-fun m!5600439 () Bool)

(assert (=> b!4694178 m!5600439))

(declare-fun m!5600441 () Bool)

(assert (=> b!4694178 m!5600441))

(declare-fun m!5600443 () Bool)

(assert (=> b!4694178 m!5600443))

(declare-fun m!5600445 () Bool)

(assert (=> b!4694178 m!5600445))

(declare-fun m!5600447 () Bool)

(assert (=> b!4694178 m!5600447))

(declare-fun m!5600449 () Bool)

(assert (=> b!4694178 m!5600449))

(declare-fun m!5600451 () Bool)

(assert (=> b!4694178 m!5600451))

(assert (=> b!4694178 m!5600439))

(declare-fun m!5600453 () Bool)

(assert (=> b!4694178 m!5600453))

(declare-fun m!5600455 () Bool)

(assert (=> b!4694178 m!5600455))

(declare-fun m!5600457 () Bool)

(assert (=> b!4694175 m!5600457))

(assert (=> b!4694175 m!5600457))

(declare-fun m!5600459 () Bool)

(assert (=> b!4694175 m!5600459))

(declare-fun m!5600461 () Bool)

(assert (=> b!4694174 m!5600461))

(declare-fun m!5600463 () Bool)

(assert (=> b!4694174 m!5600463))

(declare-fun m!5600465 () Bool)

(assert (=> b!4694174 m!5600465))

(declare-fun m!5600467 () Bool)

(assert (=> b!4694174 m!5600467))

(declare-fun m!5600469 () Bool)

(assert (=> b!4694174 m!5600469))

(declare-fun m!5600471 () Bool)

(assert (=> b!4694174 m!5600471))

(declare-fun m!5600473 () Bool)

(assert (=> b!4694174 m!5600473))

(declare-fun m!5600475 () Bool)

(assert (=> b!4694174 m!5600475))

(assert (=> b!4694174 m!5600471))

(declare-fun m!5600477 () Bool)

(assert (=> b!4694174 m!5600477))

(assert (=> b!4694174 m!5600475))

(assert (=> b!4694174 m!5600465))

(assert (=> b!4694174 m!5600477))

(declare-fun m!5600479 () Bool)

(assert (=> b!4694174 m!5600479))

(declare-fun m!5600481 () Bool)

(assert (=> b!4694174 m!5600481))

(declare-fun m!5600483 () Bool)

(assert (=> b!4694174 m!5600483))

(declare-fun m!5600485 () Bool)

(assert (=> b!4694174 m!5600485))

(declare-fun m!5600487 () Bool)

(assert (=> b!4694174 m!5600487))

(assert (=> b!4694174 m!5600463))

(declare-fun m!5600489 () Bool)

(assert (=> b!4694174 m!5600489))

(declare-fun m!5600491 () Bool)

(assert (=> b!4694174 m!5600491))

(declare-fun m!5600493 () Bool)

(assert (=> b!4694174 m!5600493))

(declare-fun m!5600495 () Bool)

(assert (=> b!4694174 m!5600495))

(assert (=> b!4694174 m!5600487))

(assert (=> b!4694174 m!5600479))

(declare-fun m!5600497 () Bool)

(assert (=> b!4694174 m!5600497))

(declare-fun m!5600499 () Bool)

(assert (=> b!4694181 m!5600499))

(declare-fun m!5600501 () Bool)

(assert (=> b!4694181 m!5600501))

(declare-fun m!5600503 () Bool)

(assert (=> b!4694181 m!5600503))

(declare-fun m!5600505 () Bool)

(assert (=> b!4694181 m!5600505))

(declare-fun m!5600507 () Bool)

(assert (=> b!4694181 m!5600507))

(assert (=> b!4694181 m!5600503))

(declare-fun m!5600509 () Bool)

(assert (=> b!4694181 m!5600509))

(declare-fun m!5600511 () Bool)

(assert (=> b!4694181 m!5600511))

(declare-fun m!5600513 () Bool)

(assert (=> b!4694181 m!5600513))

(assert (=> b!4694181 m!5600509))

(assert (=> b!4694181 m!5600505))

(assert (=> b!4694181 m!5600501))

(assert (=> b!4694181 m!5600513))

(declare-fun m!5600515 () Bool)

(assert (=> b!4694181 m!5600515))

(declare-fun m!5600517 () Bool)

(assert (=> b!4694185 m!5600517))

(declare-fun m!5600519 () Bool)

(assert (=> b!4694188 m!5600519))

(declare-fun m!5600521 () Bool)

(assert (=> start!475316 m!5600521))

(declare-fun m!5600523 () Bool)

(assert (=> start!475316 m!5600523))

(declare-fun m!5600525 () Bool)

(assert (=> b!4694187 m!5600525))

(declare-fun m!5600527 () Bool)

(assert (=> b!4694183 m!5600527))

(declare-fun m!5600529 () Bool)

(assert (=> b!4694183 m!5600529))

(declare-fun m!5600531 () Bool)

(assert (=> b!4694189 m!5600531))

(declare-fun m!5600533 () Bool)

(assert (=> b!4694192 m!5600533))

(declare-fun m!5600535 () Bool)

(assert (=> b!4694176 m!5600535))

(declare-fun m!5600537 () Bool)

(assert (=> b!4694173 m!5600537))

(declare-fun m!5600539 () Bool)

(assert (=> b!4694173 m!5600539))

(declare-fun m!5600541 () Bool)

(assert (=> b!4694173 m!5600541))

(declare-fun m!5600543 () Bool)

(assert (=> b!4694182 m!5600543))

(declare-fun m!5600545 () Bool)

(assert (=> b!4694182 m!5600545))

(declare-fun m!5600547 () Bool)

(assert (=> b!4694182 m!5600547))

(declare-fun m!5600549 () Bool)

(assert (=> b!4694179 m!5600549))

(check-sat (not start!475316) (not b!4694176) (not b!4694192) tp_is_empty!30781 (not b!4694183) (not b!4694173) (not b!4694179) (not b!4694187) tp_is_empty!30783 (not b!4694175) (not b!4694188) (not b!4694181) (not b!4694191) (not b!4694189) (not b!4694184) (not b!4694174) (not b!4694193) (not b!4694178) (not b!4694186) (not b!4694180) (not b!4694185) (not b!4694182))
(check-sat)
