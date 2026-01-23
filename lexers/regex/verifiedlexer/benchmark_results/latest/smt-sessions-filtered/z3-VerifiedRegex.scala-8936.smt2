; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479220 () Bool)

(assert start!479220)

(declare-fun b!4713697 () Bool)

(declare-fun res!1992696 () Bool)

(declare-fun e!2939922 () Bool)

(assert (=> b!4713697 (=> (not res!1992696) (not e!2939922))))

(declare-datatypes ((K!14085 0))(
  ( (K!14086 (val!19539 Int)) )
))
(declare-datatypes ((V!14331 0))(
  ( (V!14332 (val!19540 Int)) )
))
(declare-datatypes ((tuple2!54290 0))(
  ( (tuple2!54291 (_1!30439 K!14085) (_2!30439 V!14331)) )
))
(declare-datatypes ((List!52849 0))(
  ( (Nil!52725) (Cons!52725 (h!59046 tuple2!54290) (t!360093 List!52849)) )
))
(declare-datatypes ((tuple2!54292 0))(
  ( (tuple2!54293 (_1!30440 (_ BitVec 64)) (_2!30440 List!52849)) )
))
(declare-datatypes ((List!52850 0))(
  ( (Nil!52726) (Cons!52726 (h!59047 tuple2!54292) (t!360094 List!52850)) )
))
(declare-datatypes ((ListLongMap!4367 0))(
  ( (ListLongMap!4368 (toList!5837 List!52850)) )
))
(declare-fun lm!2023 () ListLongMap!4367)

(declare-datatypes ((Hashable!6343 0))(
  ( (HashableExt!6342 (__x!32046 Int)) )
))
(declare-fun hashF!1323 () Hashable!6343)

(declare-fun allKeysSameHashInMap!1888 (ListLongMap!4367 Hashable!6343) Bool)

(assert (=> b!4713697 (= res!1992696 (allKeysSameHashInMap!1888 lm!2023 hashF!1323))))

(declare-fun b!4713698 () Bool)

(declare-fun res!1992704 () Bool)

(declare-fun e!2939931 () Bool)

(assert (=> b!4713698 (=> res!1992704 e!2939931)))

(declare-fun lt!1878127 () List!52849)

(declare-fun key!4653 () K!14085)

(declare-fun oldBucket!34 () List!52849)

(declare-fun removePairForKey!1569 (List!52849 K!14085) List!52849)

(assert (=> b!4713698 (= res!1992704 (not (= (removePairForKey!1569 (t!360093 oldBucket!34) key!4653) lt!1878127)))))

(declare-fun b!4713699 () Bool)

(declare-fun e!2939925 () Bool)

(assert (=> b!4713699 (= e!2939925 e!2939922)))

(declare-fun res!1992702 () Bool)

(assert (=> b!4713699 (=> (not res!1992702) (not e!2939922))))

(declare-fun lt!1878131 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4713699 (= res!1992702 (= lt!1878131 hash!405))))

(declare-fun hash!4310 (Hashable!6343 K!14085) (_ BitVec 64))

(assert (=> b!4713699 (= lt!1878131 (hash!4310 hashF!1323 key!4653))))

(declare-fun b!4713700 () Bool)

(declare-fun e!2939929 () Bool)

(declare-fun lt!1878119 () tuple2!54290)

(assert (=> b!4713700 (= e!2939929 (= (h!59046 oldBucket!34) lt!1878119))))

(declare-fun b!4713701 () Bool)

(declare-fun e!2939930 () Bool)

(declare-fun e!2939926 () Bool)

(assert (=> b!4713701 (= e!2939930 (not e!2939926))))

(declare-fun res!1992707 () Bool)

(assert (=> b!4713701 (=> res!1992707 e!2939926)))

(get-info :version)

(assert (=> b!4713701 (= res!1992707 (or (and ((_ is Cons!52725) oldBucket!34) (= (_1!30439 (h!59046 oldBucket!34)) key!4653)) (not ((_ is Cons!52725) oldBucket!34)) (= (_1!30439 (h!59046 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!5201 0))(
  ( (ListMap!5202 (toList!5838 List!52849)) )
))
(declare-fun lt!1878134 () ListMap!5201)

(declare-fun lt!1878133 () ListMap!5201)

(declare-fun addToMapMapFromBucket!1404 (List!52849 ListMap!5201) ListMap!5201)

(assert (=> b!4713701 (= lt!1878134 (addToMapMapFromBucket!1404 (_2!30440 (h!59047 (toList!5837 lm!2023))) lt!1878133))))

(declare-fun extractMap!2000 (List!52850) ListMap!5201)

(assert (=> b!4713701 (= lt!1878133 (extractMap!2000 (t!360094 (toList!5837 lm!2023))))))

(declare-fun tail!8899 (ListLongMap!4367) ListLongMap!4367)

(assert (=> b!4713701 (= (t!360094 (toList!5837 lm!2023)) (toList!5837 (tail!8899 lm!2023)))))

(declare-fun b!4713702 () Bool)

(assert (=> b!4713702 (= e!2939922 e!2939930)))

(declare-fun res!1992701 () Bool)

(assert (=> b!4713702 (=> (not res!1992701) (not e!2939930))))

(declare-fun lt!1878121 () tuple2!54292)

(declare-fun head!10177 (List!52850) tuple2!54292)

(assert (=> b!4713702 (= res!1992701 (= (head!10177 (toList!5837 lm!2023)) lt!1878121))))

(assert (=> b!4713702 (= lt!1878121 (tuple2!54293 hash!405 oldBucket!34))))

(declare-fun e!2939923 () Bool)

(declare-fun tp!1347756 () Bool)

(declare-fun tp_is_empty!31191 () Bool)

(declare-fun tp_is_empty!31189 () Bool)

(declare-fun b!4713703 () Bool)

(assert (=> b!4713703 (= e!2939923 (and tp_is_empty!31189 tp_is_empty!31191 tp!1347756))))

(declare-fun b!4713704 () Bool)

(declare-fun e!2939928 () Bool)

(assert (=> b!4713704 (= e!2939928 e!2939931)))

(declare-fun res!1992706 () Bool)

(assert (=> b!4713704 (=> res!1992706 e!2939931)))

(declare-fun lt!1878124 () List!52849)

(assert (=> b!4713704 (= res!1992706 (not (= (removePairForKey!1569 lt!1878124 key!4653) lt!1878127)))))

(declare-fun newBucket!218 () List!52849)

(declare-fun tail!8900 (List!52849) List!52849)

(assert (=> b!4713704 (= lt!1878127 (tail!8900 newBucket!218))))

(assert (=> b!4713704 (= lt!1878124 (tail!8900 oldBucket!34))))

(declare-fun b!4713705 () Bool)

(assert (=> b!4713705 (= e!2939926 e!2939928)))

(declare-fun res!1992695 () Bool)

(assert (=> b!4713705 (=> res!1992695 e!2939928)))

(declare-fun containsKey!3295 (List!52849 K!14085) Bool)

(assert (=> b!4713705 (= res!1992695 (not (containsKey!3295 (t!360093 oldBucket!34) key!4653)))))

(assert (=> b!4713705 (containsKey!3295 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!128360 0))(
  ( (Unit!128361) )
))
(declare-fun lt!1878123 () Unit!128360)

(declare-fun lemmaGetPairDefinedThenContainsKey!288 (List!52849 K!14085 Hashable!6343) Unit!128360)

(assert (=> b!4713705 (= lt!1878123 (lemmaGetPairDefinedThenContainsKey!288 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1878126 () List!52849)

(declare-datatypes ((Option!12298 0))(
  ( (None!12297) (Some!12297 (v!46840 tuple2!54290)) )
))
(declare-fun isDefined!9552 (Option!12298) Bool)

(declare-fun getPair!540 (List!52849 K!14085) Option!12298)

(assert (=> b!4713705 (isDefined!9552 (getPair!540 lt!1878126 key!4653))))

(declare-fun lambda!213433 () Int)

(declare-fun lt!1878136 () Unit!128360)

(declare-fun lt!1878128 () tuple2!54292)

(declare-fun forallContained!3586 (List!52850 Int tuple2!54292) Unit!128360)

(assert (=> b!4713705 (= lt!1878136 (forallContained!3586 (toList!5837 lm!2023) lambda!213433 lt!1878128))))

(declare-fun contains!16045 (List!52850 tuple2!54292) Bool)

(assert (=> b!4713705 (contains!16045 (toList!5837 lm!2023) lt!1878128)))

(assert (=> b!4713705 (= lt!1878128 (tuple2!54293 lt!1878131 lt!1878126))))

(declare-fun lt!1878129 () Unit!128360)

(declare-fun lemmaGetValueImpliesTupleContained!345 (ListLongMap!4367 (_ BitVec 64) List!52849) Unit!128360)

(assert (=> b!4713705 (= lt!1878129 (lemmaGetValueImpliesTupleContained!345 lm!2023 lt!1878131 lt!1878126))))

(declare-fun apply!12423 (ListLongMap!4367 (_ BitVec 64)) List!52849)

(assert (=> b!4713705 (= lt!1878126 (apply!12423 lm!2023 lt!1878131))))

(declare-fun contains!16046 (ListLongMap!4367 (_ BitVec 64)) Bool)

(assert (=> b!4713705 (contains!16046 lm!2023 lt!1878131)))

(declare-fun lt!1878118 () Unit!128360)

(declare-fun lemmaInGenMapThenLongMapContainsHash!746 (ListLongMap!4367 K!14085 Hashable!6343) Unit!128360)

(assert (=> b!4713705 (= lt!1878118 (lemmaInGenMapThenLongMapContainsHash!746 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1878125 () Unit!128360)

(declare-fun lemmaInGenMapThenGetPairDefined!336 (ListLongMap!4367 K!14085 Hashable!6343) Unit!128360)

(assert (=> b!4713705 (= lt!1878125 (lemmaInGenMapThenGetPairDefined!336 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4713706 () Bool)

(declare-fun res!1992700 () Bool)

(declare-fun e!2939927 () Bool)

(assert (=> b!4713706 (=> (not res!1992700) (not e!2939927))))

(declare-fun allKeysSameHash!1800 (List!52849 (_ BitVec 64) Hashable!6343) Bool)

(assert (=> b!4713706 (= res!1992700 (allKeysSameHash!1800 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4713707 () Bool)

(assert (=> b!4713707 (= e!2939931 e!2939929)))

(declare-fun res!1992703 () Bool)

(assert (=> b!4713707 (=> res!1992703 e!2939929)))

(declare-fun eq!1101 (ListMap!5201 ListMap!5201) Bool)

(declare-fun +!2234 (ListMap!5201 tuple2!54290) ListMap!5201)

(assert (=> b!4713707 (= res!1992703 (not (eq!1101 (extractMap!2000 (Cons!52726 lt!1878121 (t!360094 (toList!5837 lm!2023)))) (+!2234 (extractMap!2000 (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023)))) (h!59046 oldBucket!34)))))))

(assert (=> b!4713707 (eq!1101 (addToMapMapFromBucket!1404 (Cons!52725 lt!1878119 lt!1878127) lt!1878133) (+!2234 (addToMapMapFromBucket!1404 lt!1878127 lt!1878133) lt!1878119))))

(declare-fun lt!1878120 () Unit!128360)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!350 (tuple2!54290 List!52849 ListMap!5201) Unit!128360)

(assert (=> b!4713707 (= lt!1878120 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!350 lt!1878119 lt!1878127 lt!1878133))))

(declare-fun head!10178 (List!52849) tuple2!54290)

(assert (=> b!4713707 (= lt!1878119 (head!10178 newBucket!218))))

(declare-fun lt!1878135 () tuple2!54290)

(assert (=> b!4713707 (eq!1101 (addToMapMapFromBucket!1404 (Cons!52725 lt!1878135 lt!1878124) lt!1878133) (+!2234 (addToMapMapFromBucket!1404 lt!1878124 lt!1878133) lt!1878135))))

(declare-fun lt!1878132 () Unit!128360)

(assert (=> b!4713707 (= lt!1878132 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!350 lt!1878135 lt!1878124 lt!1878133))))

(assert (=> b!4713707 (= lt!1878135 (head!10178 oldBucket!34))))

(declare-fun lt!1878122 () List!52850)

(declare-fun contains!16047 (ListMap!5201 K!14085) Bool)

(assert (=> b!4713707 (contains!16047 (extractMap!2000 lt!1878122) key!4653)))

(declare-fun lt!1878130 () Unit!128360)

(declare-fun lemmaListContainsThenExtractedMapContains!520 (ListLongMap!4367 K!14085 Hashable!6343) Unit!128360)

(assert (=> b!4713707 (= lt!1878130 (lemmaListContainsThenExtractedMapContains!520 (ListLongMap!4368 lt!1878122) key!4653 hashF!1323))))

(assert (=> b!4713707 (= lt!1878122 (Cons!52726 (tuple2!54293 hash!405 (t!360093 oldBucket!34)) (t!360094 (toList!5837 lm!2023))))))

(declare-fun b!4713708 () Bool)

(declare-fun res!1992697 () Bool)

(assert (=> b!4713708 (=> (not res!1992697) (not e!2939927))))

(declare-fun noDuplicateKeys!1974 (List!52849) Bool)

(assert (=> b!4713708 (= res!1992697 (noDuplicateKeys!1974 oldBucket!34))))

(declare-fun b!4713709 () Bool)

(declare-fun res!1992694 () Bool)

(assert (=> b!4713709 (=> (not res!1992694) (not e!2939927))))

(assert (=> b!4713709 (= res!1992694 (= (removePairForKey!1569 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4713710 () Bool)

(assert (=> b!4713710 (= e!2939927 e!2939925)))

(declare-fun res!1992699 () Bool)

(assert (=> b!4713710 (=> (not res!1992699) (not e!2939925))))

(assert (=> b!4713710 (= res!1992699 (contains!16047 lt!1878134 key!4653))))

(assert (=> b!4713710 (= lt!1878134 (extractMap!2000 (toList!5837 lm!2023)))))

(declare-fun b!4713712 () Bool)

(declare-fun res!1992705 () Bool)

(assert (=> b!4713712 (=> (not res!1992705) (not e!2939927))))

(assert (=> b!4713712 (= res!1992705 (noDuplicateKeys!1974 newBucket!218))))

(declare-fun b!4713713 () Bool)

(declare-fun res!1992709 () Bool)

(assert (=> b!4713713 (=> (not res!1992709) (not e!2939930))))

(assert (=> b!4713713 (= res!1992709 ((_ is Cons!52726) (toList!5837 lm!2023)))))

(declare-fun e!2939924 () Bool)

(declare-fun b!4713714 () Bool)

(declare-fun tp!1347755 () Bool)

(assert (=> b!4713714 (= e!2939924 (and tp_is_empty!31189 tp_is_empty!31191 tp!1347755))))

(declare-fun b!4713715 () Bool)

(declare-fun res!1992708 () Bool)

(assert (=> b!4713715 (=> (not res!1992708) (not e!2939922))))

(assert (=> b!4713715 (= res!1992708 (allKeysSameHash!1800 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!1992698 () Bool)

(assert (=> start!479220 (=> (not res!1992698) (not e!2939927))))

(declare-fun forall!11517 (List!52850 Int) Bool)

(assert (=> start!479220 (= res!1992698 (forall!11517 (toList!5837 lm!2023) lambda!213433))))

(assert (=> start!479220 e!2939927))

(declare-fun e!2939932 () Bool)

(declare-fun inv!67959 (ListLongMap!4367) Bool)

(assert (=> start!479220 (and (inv!67959 lm!2023) e!2939932)))

(assert (=> start!479220 tp_is_empty!31189))

(assert (=> start!479220 e!2939923))

(assert (=> start!479220 true))

(assert (=> start!479220 e!2939924))

(declare-fun b!4713711 () Bool)

(declare-fun tp!1347757 () Bool)

(assert (=> b!4713711 (= e!2939932 tp!1347757)))

(assert (= (and start!479220 res!1992698) b!4713708))

(assert (= (and b!4713708 res!1992697) b!4713712))

(assert (= (and b!4713712 res!1992705) b!4713709))

(assert (= (and b!4713709 res!1992694) b!4713706))

(assert (= (and b!4713706 res!1992700) b!4713710))

(assert (= (and b!4713710 res!1992699) b!4713699))

(assert (= (and b!4713699 res!1992702) b!4713715))

(assert (= (and b!4713715 res!1992708) b!4713697))

(assert (= (and b!4713697 res!1992696) b!4713702))

(assert (= (and b!4713702 res!1992701) b!4713713))

(assert (= (and b!4713713 res!1992709) b!4713701))

(assert (= (and b!4713701 (not res!1992707)) b!4713705))

(assert (= (and b!4713705 (not res!1992695)) b!4713704))

(assert (= (and b!4713704 (not res!1992706)) b!4713698))

(assert (= (and b!4713698 (not res!1992704)) b!4713707))

(assert (= (and b!4713707 (not res!1992703)) b!4713700))

(assert (= start!479220 b!4713711))

(assert (= (and start!479220 ((_ is Cons!52725) oldBucket!34)) b!4713703))

(assert (= (and start!479220 ((_ is Cons!52725) newBucket!218)) b!4713714))

(declare-fun m!5640547 () Bool)

(assert (=> b!4713704 m!5640547))

(declare-fun m!5640549 () Bool)

(assert (=> b!4713704 m!5640549))

(declare-fun m!5640551 () Bool)

(assert (=> b!4713704 m!5640551))

(declare-fun m!5640553 () Bool)

(assert (=> b!4713707 m!5640553))

(declare-fun m!5640555 () Bool)

(assert (=> b!4713707 m!5640555))

(declare-fun m!5640557 () Bool)

(assert (=> b!4713707 m!5640557))

(declare-fun m!5640559 () Bool)

(assert (=> b!4713707 m!5640559))

(assert (=> b!4713707 m!5640555))

(declare-fun m!5640561 () Bool)

(assert (=> b!4713707 m!5640561))

(declare-fun m!5640563 () Bool)

(assert (=> b!4713707 m!5640563))

(declare-fun m!5640565 () Bool)

(assert (=> b!4713707 m!5640565))

(declare-fun m!5640567 () Bool)

(assert (=> b!4713707 m!5640567))

(assert (=> b!4713707 m!5640553))

(assert (=> b!4713707 m!5640559))

(declare-fun m!5640569 () Bool)

(assert (=> b!4713707 m!5640569))

(declare-fun m!5640571 () Bool)

(assert (=> b!4713707 m!5640571))

(assert (=> b!4713707 m!5640571))

(declare-fun m!5640573 () Bool)

(assert (=> b!4713707 m!5640573))

(assert (=> b!4713707 m!5640557))

(assert (=> b!4713707 m!5640567))

(declare-fun m!5640575 () Bool)

(assert (=> b!4713707 m!5640575))

(declare-fun m!5640577 () Bool)

(assert (=> b!4713707 m!5640577))

(declare-fun m!5640579 () Bool)

(assert (=> b!4713707 m!5640579))

(declare-fun m!5640581 () Bool)

(assert (=> b!4713707 m!5640581))

(declare-fun m!5640583 () Bool)

(assert (=> b!4713707 m!5640583))

(declare-fun m!5640585 () Bool)

(assert (=> b!4713707 m!5640585))

(assert (=> b!4713707 m!5640565))

(assert (=> b!4713707 m!5640577))

(assert (=> b!4713707 m!5640581))

(declare-fun m!5640587 () Bool)

(assert (=> b!4713707 m!5640587))

(declare-fun m!5640589 () Bool)

(assert (=> b!4713707 m!5640589))

(assert (=> b!4713707 m!5640579))

(declare-fun m!5640591 () Bool)

(assert (=> b!4713709 m!5640591))

(declare-fun m!5640593 () Bool)

(assert (=> b!4713701 m!5640593))

(declare-fun m!5640595 () Bool)

(assert (=> b!4713701 m!5640595))

(declare-fun m!5640597 () Bool)

(assert (=> b!4713701 m!5640597))

(declare-fun m!5640599 () Bool)

(assert (=> b!4713706 m!5640599))

(declare-fun m!5640601 () Bool)

(assert (=> b!4713708 m!5640601))

(declare-fun m!5640603 () Bool)

(assert (=> b!4713712 m!5640603))

(declare-fun m!5640605 () Bool)

(assert (=> b!4713705 m!5640605))

(declare-fun m!5640607 () Bool)

(assert (=> b!4713705 m!5640607))

(declare-fun m!5640609 () Bool)

(assert (=> b!4713705 m!5640609))

(declare-fun m!5640611 () Bool)

(assert (=> b!4713705 m!5640611))

(declare-fun m!5640613 () Bool)

(assert (=> b!4713705 m!5640613))

(declare-fun m!5640615 () Bool)

(assert (=> b!4713705 m!5640615))

(assert (=> b!4713705 m!5640613))

(declare-fun m!5640617 () Bool)

(assert (=> b!4713705 m!5640617))

(declare-fun m!5640619 () Bool)

(assert (=> b!4713705 m!5640619))

(declare-fun m!5640621 () Bool)

(assert (=> b!4713705 m!5640621))

(declare-fun m!5640623 () Bool)

(assert (=> b!4713705 m!5640623))

(declare-fun m!5640625 () Bool)

(assert (=> b!4713705 m!5640625))

(declare-fun m!5640627 () Bool)

(assert (=> b!4713705 m!5640627))

(declare-fun m!5640629 () Bool)

(assert (=> b!4713697 m!5640629))

(declare-fun m!5640631 () Bool)

(assert (=> b!4713710 m!5640631))

(declare-fun m!5640633 () Bool)

(assert (=> b!4713710 m!5640633))

(declare-fun m!5640635 () Bool)

(assert (=> b!4713699 m!5640635))

(declare-fun m!5640637 () Bool)

(assert (=> start!479220 m!5640637))

(declare-fun m!5640639 () Bool)

(assert (=> start!479220 m!5640639))

(declare-fun m!5640641 () Bool)

(assert (=> b!4713715 m!5640641))

(declare-fun m!5640643 () Bool)

(assert (=> b!4713698 m!5640643))

(declare-fun m!5640645 () Bool)

(assert (=> b!4713702 m!5640645))

(check-sat (not b!4713715) (not b!4713706) (not b!4713711) tp_is_empty!31189 (not b!4713708) (not b!4713697) (not b!4713705) (not b!4713699) (not b!4713703) (not b!4713707) (not b!4713701) (not b!4713712) (not b!4713714) (not b!4713698) (not b!4713704) tp_is_empty!31191 (not b!4713709) (not start!479220) (not b!4713702) (not b!4713710))
(check-sat)
(get-model)

(declare-fun b!4713734 () Bool)

(declare-fun e!2939945 () Bool)

(declare-fun e!2939948 () Bool)

(assert (=> b!4713734 (= e!2939945 e!2939948)))

(declare-fun res!1992716 () Bool)

(assert (=> b!4713734 (=> (not res!1992716) (not e!2939948))))

(declare-datatypes ((Option!12300 0))(
  ( (None!12299) (Some!12299 (v!46846 V!14331)) )
))
(declare-fun isDefined!9554 (Option!12300) Bool)

(declare-fun getValueByKey!1918 (List!52849 K!14085) Option!12300)

(assert (=> b!4713734 (= res!1992716 (isDefined!9554 (getValueByKey!1918 (toList!5838 lt!1878134) key!4653)))))

(declare-fun d!1499885 () Bool)

(assert (=> d!1499885 e!2939945))

(declare-fun res!1992717 () Bool)

(assert (=> d!1499885 (=> res!1992717 e!2939945)))

(declare-fun e!2939947 () Bool)

(assert (=> d!1499885 (= res!1992717 e!2939947)))

(declare-fun res!1992718 () Bool)

(assert (=> d!1499885 (=> (not res!1992718) (not e!2939947))))

(declare-fun lt!1878154 () Bool)

(assert (=> d!1499885 (= res!1992718 (not lt!1878154))))

(declare-fun lt!1878158 () Bool)

(assert (=> d!1499885 (= lt!1878154 lt!1878158)))

(declare-fun lt!1878153 () Unit!128360)

(declare-fun e!2939946 () Unit!128360)

(assert (=> d!1499885 (= lt!1878153 e!2939946)))

(declare-fun c!805196 () Bool)

(assert (=> d!1499885 (= c!805196 lt!1878158)))

(declare-fun containsKey!3297 (List!52849 K!14085) Bool)

(assert (=> d!1499885 (= lt!1878158 (containsKey!3297 (toList!5838 lt!1878134) key!4653))))

(assert (=> d!1499885 (= (contains!16047 lt!1878134 key!4653) lt!1878154)))

(declare-fun b!4713735 () Bool)

(declare-datatypes ((List!52851 0))(
  ( (Nil!52727) (Cons!52727 (h!59050 K!14085) (t!360097 List!52851)) )
))
(declare-fun contains!16049 (List!52851 K!14085) Bool)

(declare-fun keys!18908 (ListMap!5201) List!52851)

(assert (=> b!4713735 (= e!2939948 (contains!16049 (keys!18908 lt!1878134) key!4653))))

(declare-fun b!4713736 () Bool)

(assert (=> b!4713736 false))

(declare-fun lt!1878157 () Unit!128360)

(declare-fun lt!1878156 () Unit!128360)

(assert (=> b!4713736 (= lt!1878157 lt!1878156)))

(assert (=> b!4713736 (containsKey!3297 (toList!5838 lt!1878134) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!924 (List!52849 K!14085) Unit!128360)

(assert (=> b!4713736 (= lt!1878156 (lemmaInGetKeysListThenContainsKey!924 (toList!5838 lt!1878134) key!4653))))

(declare-fun e!2939950 () Unit!128360)

(declare-fun Unit!128374 () Unit!128360)

(assert (=> b!4713736 (= e!2939950 Unit!128374)))

(declare-fun b!4713737 () Bool)

(declare-fun Unit!128375 () Unit!128360)

(assert (=> b!4713737 (= e!2939950 Unit!128375)))

(declare-fun b!4713738 () Bool)

(declare-fun lt!1878160 () Unit!128360)

(assert (=> b!4713738 (= e!2939946 lt!1878160)))

(declare-fun lt!1878159 () Unit!128360)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1809 (List!52849 K!14085) Unit!128360)

(assert (=> b!4713738 (= lt!1878159 (lemmaContainsKeyImpliesGetValueByKeyDefined!1809 (toList!5838 lt!1878134) key!4653))))

(assert (=> b!4713738 (isDefined!9554 (getValueByKey!1918 (toList!5838 lt!1878134) key!4653))))

(declare-fun lt!1878155 () Unit!128360)

(assert (=> b!4713738 (= lt!1878155 lt!1878159)))

(declare-fun lemmaInListThenGetKeysListContains!920 (List!52849 K!14085) Unit!128360)

(assert (=> b!4713738 (= lt!1878160 (lemmaInListThenGetKeysListContains!920 (toList!5838 lt!1878134) key!4653))))

(declare-fun call!329554 () Bool)

(assert (=> b!4713738 call!329554))

(declare-fun b!4713739 () Bool)

(assert (=> b!4713739 (= e!2939946 e!2939950)))

(declare-fun c!805194 () Bool)

(assert (=> b!4713739 (= c!805194 call!329554)))

(declare-fun b!4713740 () Bool)

(declare-fun e!2939949 () List!52851)

(declare-fun getKeysList!925 (List!52849) List!52851)

(assert (=> b!4713740 (= e!2939949 (getKeysList!925 (toList!5838 lt!1878134)))))

(declare-fun bm!329549 () Bool)

(assert (=> bm!329549 (= call!329554 (contains!16049 e!2939949 key!4653))))

(declare-fun c!805195 () Bool)

(assert (=> bm!329549 (= c!805195 c!805196)))

(declare-fun b!4713741 () Bool)

(assert (=> b!4713741 (= e!2939949 (keys!18908 lt!1878134))))

(declare-fun b!4713742 () Bool)

(assert (=> b!4713742 (= e!2939947 (not (contains!16049 (keys!18908 lt!1878134) key!4653)))))

(assert (= (and d!1499885 c!805196) b!4713738))

(assert (= (and d!1499885 (not c!805196)) b!4713739))

(assert (= (and b!4713739 c!805194) b!4713736))

(assert (= (and b!4713739 (not c!805194)) b!4713737))

(assert (= (or b!4713738 b!4713739) bm!329549))

(assert (= (and bm!329549 c!805195) b!4713740))

(assert (= (and bm!329549 (not c!805195)) b!4713741))

(assert (= (and d!1499885 res!1992718) b!4713742))

(assert (= (and d!1499885 (not res!1992717)) b!4713734))

(assert (= (and b!4713734 res!1992716) b!4713735))

(declare-fun m!5640647 () Bool)

(assert (=> b!4713740 m!5640647))

(declare-fun m!5640649 () Bool)

(assert (=> b!4713736 m!5640649))

(declare-fun m!5640651 () Bool)

(assert (=> b!4713736 m!5640651))

(assert (=> d!1499885 m!5640649))

(declare-fun m!5640653 () Bool)

(assert (=> b!4713742 m!5640653))

(assert (=> b!4713742 m!5640653))

(declare-fun m!5640655 () Bool)

(assert (=> b!4713742 m!5640655))

(assert (=> b!4713741 m!5640653))

(declare-fun m!5640657 () Bool)

(assert (=> b!4713738 m!5640657))

(declare-fun m!5640659 () Bool)

(assert (=> b!4713738 m!5640659))

(assert (=> b!4713738 m!5640659))

(declare-fun m!5640661 () Bool)

(assert (=> b!4713738 m!5640661))

(declare-fun m!5640663 () Bool)

(assert (=> b!4713738 m!5640663))

(declare-fun m!5640665 () Bool)

(assert (=> bm!329549 m!5640665))

(assert (=> b!4713735 m!5640653))

(assert (=> b!4713735 m!5640653))

(assert (=> b!4713735 m!5640655))

(assert (=> b!4713734 m!5640659))

(assert (=> b!4713734 m!5640659))

(assert (=> b!4713734 m!5640661))

(assert (=> b!4713710 d!1499885))

(declare-fun bs!1103088 () Bool)

(declare-fun d!1499889 () Bool)

(assert (= bs!1103088 (and d!1499889 start!479220)))

(declare-fun lambda!213436 () Int)

(assert (=> bs!1103088 (= lambda!213436 lambda!213433)))

(declare-fun lt!1878163 () ListMap!5201)

(declare-fun invariantList!1486 (List!52849) Bool)

(assert (=> d!1499889 (invariantList!1486 (toList!5838 lt!1878163))))

(declare-fun e!2939953 () ListMap!5201)

(assert (=> d!1499889 (= lt!1878163 e!2939953)))

(declare-fun c!805199 () Bool)

(assert (=> d!1499889 (= c!805199 ((_ is Cons!52726) (toList!5837 lm!2023)))))

(assert (=> d!1499889 (forall!11517 (toList!5837 lm!2023) lambda!213436)))

(assert (=> d!1499889 (= (extractMap!2000 (toList!5837 lm!2023)) lt!1878163)))

(declare-fun b!4713747 () Bool)

(assert (=> b!4713747 (= e!2939953 (addToMapMapFromBucket!1404 (_2!30440 (h!59047 (toList!5837 lm!2023))) (extractMap!2000 (t!360094 (toList!5837 lm!2023)))))))

(declare-fun b!4713748 () Bool)

(assert (=> b!4713748 (= e!2939953 (ListMap!5202 Nil!52725))))

(assert (= (and d!1499889 c!805199) b!4713747))

(assert (= (and d!1499889 (not c!805199)) b!4713748))

(declare-fun m!5640667 () Bool)

(assert (=> d!1499889 m!5640667))

(declare-fun m!5640669 () Bool)

(assert (=> d!1499889 m!5640669))

(assert (=> b!4713747 m!5640595))

(assert (=> b!4713747 m!5640595))

(declare-fun m!5640671 () Bool)

(assert (=> b!4713747 m!5640671))

(assert (=> b!4713710 d!1499889))

(declare-fun d!1499891 () Bool)

(declare-fun hash!4312 (Hashable!6343 K!14085) (_ BitVec 64))

(assert (=> d!1499891 (= (hash!4310 hashF!1323 key!4653) (hash!4312 hashF!1323 key!4653))))

(declare-fun bs!1103089 () Bool)

(assert (= bs!1103089 d!1499891))

(declare-fun m!5640673 () Bool)

(assert (=> bs!1103089 m!5640673))

(assert (=> b!4713699 d!1499891))

(declare-fun b!4713892 () Bool)

(assert (=> b!4713892 true))

(declare-fun bs!1103111 () Bool)

(declare-fun b!4713890 () Bool)

(assert (= bs!1103111 (and b!4713890 b!4713892)))

(declare-fun lambda!213514 () Int)

(declare-fun lambda!213513 () Int)

(assert (=> bs!1103111 (= lambda!213514 lambda!213513)))

(assert (=> b!4713890 true))

(declare-fun lambda!213515 () Int)

(declare-fun lt!1878355 () ListMap!5201)

(assert (=> bs!1103111 (= (= lt!1878355 lt!1878133) (= lambda!213515 lambda!213513))))

(assert (=> b!4713890 (= (= lt!1878355 lt!1878133) (= lambda!213515 lambda!213514))))

(assert (=> b!4713890 true))

(declare-fun bs!1103112 () Bool)

(declare-fun d!1499893 () Bool)

(assert (= bs!1103112 (and d!1499893 b!4713892)))

(declare-fun lt!1878365 () ListMap!5201)

(declare-fun lambda!213516 () Int)

(assert (=> bs!1103112 (= (= lt!1878365 lt!1878133) (= lambda!213516 lambda!213513))))

(declare-fun bs!1103113 () Bool)

(assert (= bs!1103113 (and d!1499893 b!4713890)))

(assert (=> bs!1103113 (= (= lt!1878365 lt!1878133) (= lambda!213516 lambda!213514))))

(assert (=> bs!1103113 (= (= lt!1878365 lt!1878355) (= lambda!213516 lambda!213515))))

(assert (=> d!1499893 true))

(declare-fun bm!329567 () Bool)

(declare-fun call!329572 () Unit!128360)

(declare-fun lemmaContainsAllItsOwnKeys!774 (ListMap!5201) Unit!128360)

(assert (=> bm!329567 (= call!329572 (lemmaContainsAllItsOwnKeys!774 lt!1878133))))

(declare-fun c!805231 () Bool)

(declare-fun bm!329568 () Bool)

(declare-fun lt!1878359 () ListMap!5201)

(declare-fun call!329574 () Bool)

(declare-fun forall!11519 (List!52849 Int) Bool)

(assert (=> bm!329568 (= call!329574 (forall!11519 (ite c!805231 (toList!5838 lt!1878133) (toList!5838 lt!1878359)) (ite c!805231 lambda!213513 lambda!213515)))))

(declare-fun e!2940046 () Bool)

(assert (=> d!1499893 e!2940046))

(declare-fun res!1992793 () Bool)

(assert (=> d!1499893 (=> (not res!1992793) (not e!2940046))))

(assert (=> d!1499893 (= res!1992793 (forall!11519 (_2!30440 (h!59047 (toList!5837 lm!2023))) lambda!213516))))

(declare-fun e!2940044 () ListMap!5201)

(assert (=> d!1499893 (= lt!1878365 e!2940044)))

(assert (=> d!1499893 (= c!805231 ((_ is Nil!52725) (_2!30440 (h!59047 (toList!5837 lm!2023)))))))

(assert (=> d!1499893 (noDuplicateKeys!1974 (_2!30440 (h!59047 (toList!5837 lm!2023))))))

(assert (=> d!1499893 (= (addToMapMapFromBucket!1404 (_2!30440 (h!59047 (toList!5837 lm!2023))) lt!1878133) lt!1878365)))

(declare-fun bm!329569 () Bool)

(declare-fun call!329573 () Bool)

(assert (=> bm!329569 (= call!329573 (forall!11519 (ite c!805231 (toList!5838 lt!1878133) (toList!5838 lt!1878359)) (ite c!805231 lambda!213513 lambda!213515)))))

(declare-fun b!4713889 () Bool)

(assert (=> b!4713889 (= e!2940046 (invariantList!1486 (toList!5838 lt!1878365)))))

(assert (=> b!4713890 (= e!2940044 lt!1878355)))

(assert (=> b!4713890 (= lt!1878359 (+!2234 lt!1878133 (h!59046 (_2!30440 (h!59047 (toList!5837 lm!2023))))))))

(assert (=> b!4713890 (= lt!1878355 (addToMapMapFromBucket!1404 (t!360093 (_2!30440 (h!59047 (toList!5837 lm!2023)))) (+!2234 lt!1878133 (h!59046 (_2!30440 (h!59047 (toList!5837 lm!2023)))))))))

(declare-fun lt!1878357 () Unit!128360)

(assert (=> b!4713890 (= lt!1878357 call!329572)))

(assert (=> b!4713890 (forall!11519 (toList!5838 lt!1878133) lambda!213514)))

(declare-fun lt!1878363 () Unit!128360)

(assert (=> b!4713890 (= lt!1878363 lt!1878357)))

(assert (=> b!4713890 call!329574))

(declare-fun lt!1878364 () Unit!128360)

(declare-fun Unit!128378 () Unit!128360)

(assert (=> b!4713890 (= lt!1878364 Unit!128378)))

(assert (=> b!4713890 (forall!11519 (t!360093 (_2!30440 (h!59047 (toList!5837 lm!2023)))) lambda!213515)))

(declare-fun lt!1878353 () Unit!128360)

(declare-fun Unit!128379 () Unit!128360)

(assert (=> b!4713890 (= lt!1878353 Unit!128379)))

(declare-fun lt!1878356 () Unit!128360)

(declare-fun Unit!128380 () Unit!128360)

(assert (=> b!4713890 (= lt!1878356 Unit!128380)))

(declare-fun lt!1878352 () Unit!128360)

(declare-fun forallContained!3588 (List!52849 Int tuple2!54290) Unit!128360)

(assert (=> b!4713890 (= lt!1878352 (forallContained!3588 (toList!5838 lt!1878359) lambda!213515 (h!59046 (_2!30440 (h!59047 (toList!5837 lm!2023))))))))

(assert (=> b!4713890 (contains!16047 lt!1878359 (_1!30439 (h!59046 (_2!30440 (h!59047 (toList!5837 lm!2023))))))))

(declare-fun lt!1878347 () Unit!128360)

(declare-fun Unit!128381 () Unit!128360)

(assert (=> b!4713890 (= lt!1878347 Unit!128381)))

(assert (=> b!4713890 (contains!16047 lt!1878355 (_1!30439 (h!59046 (_2!30440 (h!59047 (toList!5837 lm!2023))))))))

(declare-fun lt!1878360 () Unit!128360)

(declare-fun Unit!128382 () Unit!128360)

(assert (=> b!4713890 (= lt!1878360 Unit!128382)))

(assert (=> b!4713890 (forall!11519 (_2!30440 (h!59047 (toList!5837 lm!2023))) lambda!213515)))

(declare-fun lt!1878346 () Unit!128360)

(declare-fun Unit!128383 () Unit!128360)

(assert (=> b!4713890 (= lt!1878346 Unit!128383)))

(assert (=> b!4713890 call!329573))

(declare-fun lt!1878358 () Unit!128360)

(declare-fun Unit!128384 () Unit!128360)

(assert (=> b!4713890 (= lt!1878358 Unit!128384)))

(declare-fun lt!1878349 () Unit!128360)

(declare-fun Unit!128385 () Unit!128360)

(assert (=> b!4713890 (= lt!1878349 Unit!128385)))

(declare-fun lt!1878351 () Unit!128360)

(declare-fun addForallContainsKeyThenBeforeAdding!773 (ListMap!5201 ListMap!5201 K!14085 V!14331) Unit!128360)

(assert (=> b!4713890 (= lt!1878351 (addForallContainsKeyThenBeforeAdding!773 lt!1878133 lt!1878355 (_1!30439 (h!59046 (_2!30440 (h!59047 (toList!5837 lm!2023))))) (_2!30439 (h!59046 (_2!30440 (h!59047 (toList!5837 lm!2023)))))))))

(assert (=> b!4713890 (forall!11519 (toList!5838 lt!1878133) lambda!213515)))

(declare-fun lt!1878362 () Unit!128360)

(assert (=> b!4713890 (= lt!1878362 lt!1878351)))

(assert (=> b!4713890 (forall!11519 (toList!5838 lt!1878133) lambda!213515)))

(declare-fun lt!1878361 () Unit!128360)

(declare-fun Unit!128386 () Unit!128360)

(assert (=> b!4713890 (= lt!1878361 Unit!128386)))

(declare-fun res!1992794 () Bool)

(assert (=> b!4713890 (= res!1992794 (forall!11519 (_2!30440 (h!59047 (toList!5837 lm!2023))) lambda!213515))))

(declare-fun e!2940045 () Bool)

(assert (=> b!4713890 (=> (not res!1992794) (not e!2940045))))

(assert (=> b!4713890 e!2940045))

(declare-fun lt!1878366 () Unit!128360)

(declare-fun Unit!128387 () Unit!128360)

(assert (=> b!4713890 (= lt!1878366 Unit!128387)))

(declare-fun b!4713891 () Bool)

(assert (=> b!4713891 (= e!2940045 (forall!11519 (toList!5838 lt!1878133) lambda!213515))))

(assert (=> b!4713892 (= e!2940044 lt!1878133)))

(declare-fun lt!1878348 () Unit!128360)

(assert (=> b!4713892 (= lt!1878348 call!329572)))

(assert (=> b!4713892 call!329573))

(declare-fun lt!1878354 () Unit!128360)

(assert (=> b!4713892 (= lt!1878354 lt!1878348)))

(assert (=> b!4713892 call!329574))

(declare-fun lt!1878350 () Unit!128360)

(declare-fun Unit!128388 () Unit!128360)

(assert (=> b!4713892 (= lt!1878350 Unit!128388)))

(declare-fun b!4713893 () Bool)

(declare-fun res!1992792 () Bool)

(assert (=> b!4713893 (=> (not res!1992792) (not e!2940046))))

(assert (=> b!4713893 (= res!1992792 (forall!11519 (toList!5838 lt!1878133) lambda!213516))))

(assert (= (and d!1499893 c!805231) b!4713892))

(assert (= (and d!1499893 (not c!805231)) b!4713890))

(assert (= (and b!4713890 res!1992794) b!4713891))

(assert (= (or b!4713892 b!4713890) bm!329567))

(assert (= (or b!4713892 b!4713890) bm!329568))

(assert (= (or b!4713892 b!4713890) bm!329569))

(assert (= (and d!1499893 res!1992793) b!4713893))

(assert (= (and b!4713893 res!1992792) b!4713889))

(declare-fun m!5640831 () Bool)

(assert (=> b!4713893 m!5640831))

(declare-fun m!5640833 () Bool)

(assert (=> b!4713890 m!5640833))

(declare-fun m!5640835 () Bool)

(assert (=> b!4713890 m!5640835))

(declare-fun m!5640837 () Bool)

(assert (=> b!4713890 m!5640837))

(declare-fun m!5640839 () Bool)

(assert (=> b!4713890 m!5640839))

(assert (=> b!4713890 m!5640837))

(declare-fun m!5640841 () Bool)

(assert (=> b!4713890 m!5640841))

(declare-fun m!5640843 () Bool)

(assert (=> b!4713890 m!5640843))

(declare-fun m!5640845 () Bool)

(assert (=> b!4713890 m!5640845))

(assert (=> b!4713890 m!5640841))

(assert (=> b!4713890 m!5640833))

(declare-fun m!5640849 () Bool)

(assert (=> b!4713890 m!5640849))

(declare-fun m!5640853 () Bool)

(assert (=> b!4713890 m!5640853))

(declare-fun m!5640855 () Bool)

(assert (=> b!4713890 m!5640855))

(assert (=> b!4713891 m!5640837))

(declare-fun m!5640859 () Bool)

(assert (=> d!1499893 m!5640859))

(declare-fun m!5640861 () Bool)

(assert (=> d!1499893 m!5640861))

(declare-fun m!5640863 () Bool)

(assert (=> bm!329568 m!5640863))

(assert (=> bm!329569 m!5640863))

(declare-fun m!5640865 () Bool)

(assert (=> b!4713889 m!5640865))

(declare-fun m!5640867 () Bool)

(assert (=> bm!329567 m!5640867))

(assert (=> b!4713701 d!1499893))

(declare-fun bs!1103119 () Bool)

(declare-fun d!1499945 () Bool)

(assert (= bs!1103119 (and d!1499945 start!479220)))

(declare-fun lambda!213518 () Int)

(assert (=> bs!1103119 (= lambda!213518 lambda!213433)))

(declare-fun bs!1103120 () Bool)

(assert (= bs!1103120 (and d!1499945 d!1499889)))

(assert (=> bs!1103120 (= lambda!213518 lambda!213436)))

(declare-fun lt!1878376 () ListMap!5201)

(assert (=> d!1499945 (invariantList!1486 (toList!5838 lt!1878376))))

(declare-fun e!2940054 () ListMap!5201)

(assert (=> d!1499945 (= lt!1878376 e!2940054)))

(declare-fun c!805236 () Bool)

(assert (=> d!1499945 (= c!805236 ((_ is Cons!52726) (t!360094 (toList!5837 lm!2023))))))

(assert (=> d!1499945 (forall!11517 (t!360094 (toList!5837 lm!2023)) lambda!213518)))

(assert (=> d!1499945 (= (extractMap!2000 (t!360094 (toList!5837 lm!2023))) lt!1878376)))

(declare-fun b!4713907 () Bool)

(assert (=> b!4713907 (= e!2940054 (addToMapMapFromBucket!1404 (_2!30440 (h!59047 (t!360094 (toList!5837 lm!2023)))) (extractMap!2000 (t!360094 (t!360094 (toList!5837 lm!2023))))))))

(declare-fun b!4713908 () Bool)

(assert (=> b!4713908 (= e!2940054 (ListMap!5202 Nil!52725))))

(assert (= (and d!1499945 c!805236) b!4713907))

(assert (= (and d!1499945 (not c!805236)) b!4713908))

(declare-fun m!5640869 () Bool)

(assert (=> d!1499945 m!5640869))

(declare-fun m!5640871 () Bool)

(assert (=> d!1499945 m!5640871))

(declare-fun m!5640873 () Bool)

(assert (=> b!4713907 m!5640873))

(assert (=> b!4713907 m!5640873))

(declare-fun m!5640877 () Bool)

(assert (=> b!4713907 m!5640877))

(assert (=> b!4713701 d!1499945))

(declare-fun d!1499947 () Bool)

(declare-fun tail!8902 (List!52850) List!52850)

(assert (=> d!1499947 (= (tail!8899 lm!2023) (ListLongMap!4368 (tail!8902 (toList!5837 lm!2023))))))

(declare-fun bs!1103122 () Bool)

(assert (= bs!1103122 d!1499947))

(declare-fun m!5640881 () Bool)

(assert (=> bs!1103122 m!5640881))

(assert (=> b!4713701 d!1499947))

(declare-fun bs!1103123 () Bool)

(declare-fun d!1499951 () Bool)

(assert (= bs!1103123 (and d!1499951 start!479220)))

(declare-fun lambda!213521 () Int)

(assert (=> bs!1103123 (not (= lambda!213521 lambda!213433))))

(declare-fun bs!1103124 () Bool)

(assert (= bs!1103124 (and d!1499951 d!1499889)))

(assert (=> bs!1103124 (not (= lambda!213521 lambda!213436))))

(declare-fun bs!1103125 () Bool)

(assert (= bs!1103125 (and d!1499951 d!1499945)))

(assert (=> bs!1103125 (not (= lambda!213521 lambda!213518))))

(assert (=> d!1499951 true))

(assert (=> d!1499951 (= (allKeysSameHashInMap!1888 lm!2023 hashF!1323) (forall!11517 (toList!5837 lm!2023) lambda!213521))))

(declare-fun bs!1103126 () Bool)

(assert (= bs!1103126 d!1499951))

(declare-fun m!5640903 () Bool)

(assert (=> bs!1103126 m!5640903))

(assert (=> b!4713697 d!1499951))

(declare-fun bs!1103127 () Bool)

(declare-fun d!1499955 () Bool)

(assert (= bs!1103127 (and d!1499955 start!479220)))

(declare-fun lambda!213522 () Int)

(assert (=> bs!1103127 (= lambda!213522 lambda!213433)))

(declare-fun bs!1103128 () Bool)

(assert (= bs!1103128 (and d!1499955 d!1499889)))

(assert (=> bs!1103128 (= lambda!213522 lambda!213436)))

(declare-fun bs!1103129 () Bool)

(assert (= bs!1103129 (and d!1499955 d!1499945)))

(assert (=> bs!1103129 (= lambda!213522 lambda!213518)))

(declare-fun bs!1103130 () Bool)

(assert (= bs!1103130 (and d!1499955 d!1499951)))

(assert (=> bs!1103130 (not (= lambda!213522 lambda!213521))))

(declare-fun lt!1878385 () ListMap!5201)

(assert (=> d!1499955 (invariantList!1486 (toList!5838 lt!1878385))))

(declare-fun e!2940061 () ListMap!5201)

(assert (=> d!1499955 (= lt!1878385 e!2940061)))

(declare-fun c!805240 () Bool)

(assert (=> d!1499955 (= c!805240 ((_ is Cons!52726) (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023)))))))

(assert (=> d!1499955 (forall!11517 (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023))) lambda!213522)))

(assert (=> d!1499955 (= (extractMap!2000 (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023)))) lt!1878385)))

(declare-fun b!4713920 () Bool)

(assert (=> b!4713920 (= e!2940061 (addToMapMapFromBucket!1404 (_2!30440 (h!59047 (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023))))) (extractMap!2000 (t!360094 (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023)))))))))

(declare-fun b!4713921 () Bool)

(assert (=> b!4713921 (= e!2940061 (ListMap!5202 Nil!52725))))

(assert (= (and d!1499955 c!805240) b!4713920))

(assert (= (and d!1499955 (not c!805240)) b!4713921))

(declare-fun m!5640905 () Bool)

(assert (=> d!1499955 m!5640905))

(declare-fun m!5640907 () Bool)

(assert (=> d!1499955 m!5640907))

(declare-fun m!5640909 () Bool)

(assert (=> b!4713920 m!5640909))

(assert (=> b!4713920 m!5640909))

(declare-fun m!5640911 () Bool)

(assert (=> b!4713920 m!5640911))

(assert (=> b!4713707 d!1499955))

(declare-fun bs!1103131 () Bool)

(declare-fun b!4713925 () Bool)

(assert (= bs!1103131 (and b!4713925 b!4713892)))

(declare-fun lambda!213523 () Int)

(assert (=> bs!1103131 (= lambda!213523 lambda!213513)))

(declare-fun bs!1103132 () Bool)

(assert (= bs!1103132 (and b!4713925 b!4713890)))

(assert (=> bs!1103132 (= lambda!213523 lambda!213514)))

(assert (=> bs!1103132 (= (= lt!1878133 lt!1878355) (= lambda!213523 lambda!213515))))

(declare-fun bs!1103133 () Bool)

(assert (= bs!1103133 (and b!4713925 d!1499893)))

(assert (=> bs!1103133 (= (= lt!1878133 lt!1878365) (= lambda!213523 lambda!213516))))

(assert (=> b!4713925 true))

(declare-fun bs!1103134 () Bool)

(declare-fun b!4713923 () Bool)

(assert (= bs!1103134 (and b!4713923 d!1499893)))

(declare-fun lambda!213524 () Int)

(assert (=> bs!1103134 (= (= lt!1878133 lt!1878365) (= lambda!213524 lambda!213516))))

(declare-fun bs!1103135 () Bool)

(assert (= bs!1103135 (and b!4713923 b!4713890)))

(assert (=> bs!1103135 (= lambda!213524 lambda!213514)))

(assert (=> bs!1103135 (= (= lt!1878133 lt!1878355) (= lambda!213524 lambda!213515))))

(declare-fun bs!1103136 () Bool)

(assert (= bs!1103136 (and b!4713923 b!4713892)))

(assert (=> bs!1103136 (= lambda!213524 lambda!213513)))

(declare-fun bs!1103137 () Bool)

(assert (= bs!1103137 (and b!4713923 b!4713925)))

(assert (=> bs!1103137 (= lambda!213524 lambda!213523)))

(assert (=> b!4713923 true))

(declare-fun lt!1878395 () ListMap!5201)

(declare-fun lambda!213525 () Int)

(assert (=> bs!1103134 (= (= lt!1878395 lt!1878365) (= lambda!213525 lambda!213516))))

(assert (=> bs!1103135 (= (= lt!1878395 lt!1878133) (= lambda!213525 lambda!213514))))

(assert (=> b!4713923 (= (= lt!1878395 lt!1878133) (= lambda!213525 lambda!213524))))

(assert (=> bs!1103135 (= (= lt!1878395 lt!1878355) (= lambda!213525 lambda!213515))))

(assert (=> bs!1103136 (= (= lt!1878395 lt!1878133) (= lambda!213525 lambda!213513))))

(assert (=> bs!1103137 (= (= lt!1878395 lt!1878133) (= lambda!213525 lambda!213523))))

(assert (=> b!4713923 true))

(declare-fun bs!1103138 () Bool)

(declare-fun d!1499957 () Bool)

(assert (= bs!1103138 (and d!1499957 d!1499893)))

(declare-fun lt!1878405 () ListMap!5201)

(declare-fun lambda!213526 () Int)

(assert (=> bs!1103138 (= (= lt!1878405 lt!1878365) (= lambda!213526 lambda!213516))))

(declare-fun bs!1103139 () Bool)

(assert (= bs!1103139 (and d!1499957 b!4713890)))

(assert (=> bs!1103139 (= (= lt!1878405 lt!1878133) (= lambda!213526 lambda!213514))))

(assert (=> bs!1103139 (= (= lt!1878405 lt!1878355) (= lambda!213526 lambda!213515))))

(declare-fun bs!1103140 () Bool)

(assert (= bs!1103140 (and d!1499957 b!4713892)))

(assert (=> bs!1103140 (= (= lt!1878405 lt!1878133) (= lambda!213526 lambda!213513))))

(declare-fun bs!1103141 () Bool)

(assert (= bs!1103141 (and d!1499957 b!4713925)))

(assert (=> bs!1103141 (= (= lt!1878405 lt!1878133) (= lambda!213526 lambda!213523))))

(declare-fun bs!1103142 () Bool)

(assert (= bs!1103142 (and d!1499957 b!4713923)))

(assert (=> bs!1103142 (= (= lt!1878405 lt!1878133) (= lambda!213526 lambda!213524))))

(assert (=> bs!1103142 (= (= lt!1878405 lt!1878395) (= lambda!213526 lambda!213525))))

(assert (=> d!1499957 true))

(declare-fun bm!329572 () Bool)

(declare-fun call!329577 () Unit!128360)

(assert (=> bm!329572 (= call!329577 (lemmaContainsAllItsOwnKeys!774 lt!1878133))))

(declare-fun call!329579 () Bool)

(declare-fun bm!329573 () Bool)

(declare-fun c!805241 () Bool)

(declare-fun lt!1878399 () ListMap!5201)

(assert (=> bm!329573 (= call!329579 (forall!11519 (ite c!805241 (toList!5838 lt!1878133) (toList!5838 lt!1878399)) (ite c!805241 lambda!213523 lambda!213525)))))

(declare-fun e!2940064 () Bool)

(assert (=> d!1499957 e!2940064))

(declare-fun res!1992802 () Bool)

(assert (=> d!1499957 (=> (not res!1992802) (not e!2940064))))

(assert (=> d!1499957 (= res!1992802 (forall!11519 lt!1878124 lambda!213526))))

(declare-fun e!2940062 () ListMap!5201)

(assert (=> d!1499957 (= lt!1878405 e!2940062)))

(assert (=> d!1499957 (= c!805241 ((_ is Nil!52725) lt!1878124))))

(assert (=> d!1499957 (noDuplicateKeys!1974 lt!1878124)))

(assert (=> d!1499957 (= (addToMapMapFromBucket!1404 lt!1878124 lt!1878133) lt!1878405)))

(declare-fun bm!329574 () Bool)

(declare-fun call!329578 () Bool)

(assert (=> bm!329574 (= call!329578 (forall!11519 (ite c!805241 (toList!5838 lt!1878133) (toList!5838 lt!1878399)) (ite c!805241 lambda!213523 lambda!213525)))))

(declare-fun b!4713922 () Bool)

(assert (=> b!4713922 (= e!2940064 (invariantList!1486 (toList!5838 lt!1878405)))))

(assert (=> b!4713923 (= e!2940062 lt!1878395)))

(assert (=> b!4713923 (= lt!1878399 (+!2234 lt!1878133 (h!59046 lt!1878124)))))

(assert (=> b!4713923 (= lt!1878395 (addToMapMapFromBucket!1404 (t!360093 lt!1878124) (+!2234 lt!1878133 (h!59046 lt!1878124))))))

(declare-fun lt!1878397 () Unit!128360)

(assert (=> b!4713923 (= lt!1878397 call!329577)))

(assert (=> b!4713923 (forall!11519 (toList!5838 lt!1878133) lambda!213524)))

(declare-fun lt!1878403 () Unit!128360)

(assert (=> b!4713923 (= lt!1878403 lt!1878397)))

(assert (=> b!4713923 call!329579))

(declare-fun lt!1878404 () Unit!128360)

(declare-fun Unit!128391 () Unit!128360)

(assert (=> b!4713923 (= lt!1878404 Unit!128391)))

(assert (=> b!4713923 (forall!11519 (t!360093 lt!1878124) lambda!213525)))

(declare-fun lt!1878393 () Unit!128360)

(declare-fun Unit!128392 () Unit!128360)

(assert (=> b!4713923 (= lt!1878393 Unit!128392)))

(declare-fun lt!1878396 () Unit!128360)

(declare-fun Unit!128393 () Unit!128360)

(assert (=> b!4713923 (= lt!1878396 Unit!128393)))

(declare-fun lt!1878392 () Unit!128360)

(assert (=> b!4713923 (= lt!1878392 (forallContained!3588 (toList!5838 lt!1878399) lambda!213525 (h!59046 lt!1878124)))))

(assert (=> b!4713923 (contains!16047 lt!1878399 (_1!30439 (h!59046 lt!1878124)))))

(declare-fun lt!1878387 () Unit!128360)

(declare-fun Unit!128394 () Unit!128360)

(assert (=> b!4713923 (= lt!1878387 Unit!128394)))

(assert (=> b!4713923 (contains!16047 lt!1878395 (_1!30439 (h!59046 lt!1878124)))))

(declare-fun lt!1878400 () Unit!128360)

(declare-fun Unit!128395 () Unit!128360)

(assert (=> b!4713923 (= lt!1878400 Unit!128395)))

(assert (=> b!4713923 (forall!11519 lt!1878124 lambda!213525)))

(declare-fun lt!1878386 () Unit!128360)

(declare-fun Unit!128396 () Unit!128360)

(assert (=> b!4713923 (= lt!1878386 Unit!128396)))

(assert (=> b!4713923 call!329578))

(declare-fun lt!1878398 () Unit!128360)

(declare-fun Unit!128397 () Unit!128360)

(assert (=> b!4713923 (= lt!1878398 Unit!128397)))

(declare-fun lt!1878389 () Unit!128360)

(declare-fun Unit!128398 () Unit!128360)

(assert (=> b!4713923 (= lt!1878389 Unit!128398)))

(declare-fun lt!1878391 () Unit!128360)

(assert (=> b!4713923 (= lt!1878391 (addForallContainsKeyThenBeforeAdding!773 lt!1878133 lt!1878395 (_1!30439 (h!59046 lt!1878124)) (_2!30439 (h!59046 lt!1878124))))))

(assert (=> b!4713923 (forall!11519 (toList!5838 lt!1878133) lambda!213525)))

(declare-fun lt!1878402 () Unit!128360)

(assert (=> b!4713923 (= lt!1878402 lt!1878391)))

(assert (=> b!4713923 (forall!11519 (toList!5838 lt!1878133) lambda!213525)))

(declare-fun lt!1878401 () Unit!128360)

(declare-fun Unit!128399 () Unit!128360)

(assert (=> b!4713923 (= lt!1878401 Unit!128399)))

(declare-fun res!1992803 () Bool)

(assert (=> b!4713923 (= res!1992803 (forall!11519 lt!1878124 lambda!213525))))

(declare-fun e!2940063 () Bool)

(assert (=> b!4713923 (=> (not res!1992803) (not e!2940063))))

(assert (=> b!4713923 e!2940063))

(declare-fun lt!1878406 () Unit!128360)

(declare-fun Unit!128400 () Unit!128360)

(assert (=> b!4713923 (= lt!1878406 Unit!128400)))

(declare-fun b!4713924 () Bool)

(assert (=> b!4713924 (= e!2940063 (forall!11519 (toList!5838 lt!1878133) lambda!213525))))

(assert (=> b!4713925 (= e!2940062 lt!1878133)))

(declare-fun lt!1878388 () Unit!128360)

(assert (=> b!4713925 (= lt!1878388 call!329577)))

(assert (=> b!4713925 call!329578))

(declare-fun lt!1878394 () Unit!128360)

(assert (=> b!4713925 (= lt!1878394 lt!1878388)))

(assert (=> b!4713925 call!329579))

(declare-fun lt!1878390 () Unit!128360)

(declare-fun Unit!128401 () Unit!128360)

(assert (=> b!4713925 (= lt!1878390 Unit!128401)))

(declare-fun b!4713926 () Bool)

(declare-fun res!1992801 () Bool)

(assert (=> b!4713926 (=> (not res!1992801) (not e!2940064))))

(assert (=> b!4713926 (= res!1992801 (forall!11519 (toList!5838 lt!1878133) lambda!213526))))

(assert (= (and d!1499957 c!805241) b!4713925))

(assert (= (and d!1499957 (not c!805241)) b!4713923))

(assert (= (and b!4713923 res!1992803) b!4713924))

(assert (= (or b!4713925 b!4713923) bm!329572))

(assert (= (or b!4713925 b!4713923) bm!329573))

(assert (= (or b!4713925 b!4713923) bm!329574))

(assert (= (and d!1499957 res!1992802) b!4713926))

(assert (= (and b!4713926 res!1992801) b!4713922))

(declare-fun m!5640913 () Bool)

(assert (=> b!4713926 m!5640913))

(declare-fun m!5640915 () Bool)

(assert (=> b!4713923 m!5640915))

(declare-fun m!5640917 () Bool)

(assert (=> b!4713923 m!5640917))

(declare-fun m!5640919 () Bool)

(assert (=> b!4713923 m!5640919))

(declare-fun m!5640921 () Bool)

(assert (=> b!4713923 m!5640921))

(assert (=> b!4713923 m!5640919))

(declare-fun m!5640923 () Bool)

(assert (=> b!4713923 m!5640923))

(declare-fun m!5640925 () Bool)

(assert (=> b!4713923 m!5640925))

(declare-fun m!5640927 () Bool)

(assert (=> b!4713923 m!5640927))

(assert (=> b!4713923 m!5640923))

(assert (=> b!4713923 m!5640915))

(declare-fun m!5640929 () Bool)

(assert (=> b!4713923 m!5640929))

(declare-fun m!5640931 () Bool)

(assert (=> b!4713923 m!5640931))

(declare-fun m!5640933 () Bool)

(assert (=> b!4713923 m!5640933))

(assert (=> b!4713924 m!5640919))

(declare-fun m!5640935 () Bool)

(assert (=> d!1499957 m!5640935))

(declare-fun m!5640937 () Bool)

(assert (=> d!1499957 m!5640937))

(declare-fun m!5640939 () Bool)

(assert (=> bm!329573 m!5640939))

(assert (=> bm!329574 m!5640939))

(declare-fun m!5640941 () Bool)

(assert (=> b!4713922 m!5640941))

(assert (=> bm!329572 m!5640867))

(assert (=> b!4713707 d!1499957))

(declare-fun d!1499959 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9350 (List!52849) (InoxSet tuple2!54290))

(assert (=> d!1499959 (= (eq!1101 (addToMapMapFromBucket!1404 (Cons!52725 lt!1878119 lt!1878127) lt!1878133) (+!2234 (addToMapMapFromBucket!1404 lt!1878127 lt!1878133) lt!1878119)) (= (content!9350 (toList!5838 (addToMapMapFromBucket!1404 (Cons!52725 lt!1878119 lt!1878127) lt!1878133))) (content!9350 (toList!5838 (+!2234 (addToMapMapFromBucket!1404 lt!1878127 lt!1878133) lt!1878119)))))))

(declare-fun bs!1103144 () Bool)

(assert (= bs!1103144 d!1499959))

(declare-fun m!5640945 () Bool)

(assert (=> bs!1103144 m!5640945))

(declare-fun m!5640947 () Bool)

(assert (=> bs!1103144 m!5640947))

(assert (=> b!4713707 d!1499959))

(declare-fun bs!1103145 () Bool)

(declare-fun d!1499963 () Bool)

(assert (= bs!1103145 (and d!1499963 start!479220)))

(declare-fun lambda!213527 () Int)

(assert (=> bs!1103145 (= lambda!213527 lambda!213433)))

(declare-fun bs!1103147 () Bool)

(assert (= bs!1103147 (and d!1499963 d!1499945)))

(assert (=> bs!1103147 (= lambda!213527 lambda!213518)))

(declare-fun bs!1103149 () Bool)

(assert (= bs!1103149 (and d!1499963 d!1499955)))

(assert (=> bs!1103149 (= lambda!213527 lambda!213522)))

(declare-fun bs!1103151 () Bool)

(assert (= bs!1103151 (and d!1499963 d!1499889)))

(assert (=> bs!1103151 (= lambda!213527 lambda!213436)))

(declare-fun bs!1103153 () Bool)

(assert (= bs!1103153 (and d!1499963 d!1499951)))

(assert (=> bs!1103153 (not (= lambda!213527 lambda!213521))))

(declare-fun lt!1878411 () ListMap!5201)

(assert (=> d!1499963 (invariantList!1486 (toList!5838 lt!1878411))))

(declare-fun e!2940066 () ListMap!5201)

(assert (=> d!1499963 (= lt!1878411 e!2940066)))

(declare-fun c!805243 () Bool)

(assert (=> d!1499963 (= c!805243 ((_ is Cons!52726) lt!1878122))))

(assert (=> d!1499963 (forall!11517 lt!1878122 lambda!213527)))

(assert (=> d!1499963 (= (extractMap!2000 lt!1878122) lt!1878411)))

(declare-fun b!4713928 () Bool)

(assert (=> b!4713928 (= e!2940066 (addToMapMapFromBucket!1404 (_2!30440 (h!59047 lt!1878122)) (extractMap!2000 (t!360094 lt!1878122))))))

(declare-fun b!4713930 () Bool)

(assert (=> b!4713930 (= e!2940066 (ListMap!5202 Nil!52725))))

(assert (= (and d!1499963 c!805243) b!4713928))

(assert (= (and d!1499963 (not c!805243)) b!4713930))

(declare-fun m!5640949 () Bool)

(assert (=> d!1499963 m!5640949))

(declare-fun m!5640951 () Bool)

(assert (=> d!1499963 m!5640951))

(declare-fun m!5640953 () Bool)

(assert (=> b!4713928 m!5640953))

(assert (=> b!4713928 m!5640953))

(declare-fun m!5640955 () Bool)

(assert (=> b!4713928 m!5640955))

(assert (=> b!4713707 d!1499963))

(declare-fun b!4713931 () Bool)

(declare-fun e!2940067 () Bool)

(declare-fun e!2940070 () Bool)

(assert (=> b!4713931 (= e!2940067 e!2940070)))

(declare-fun res!1992804 () Bool)

(assert (=> b!4713931 (=> (not res!1992804) (not e!2940070))))

(assert (=> b!4713931 (= res!1992804 (isDefined!9554 (getValueByKey!1918 (toList!5838 (extractMap!2000 lt!1878122)) key!4653)))))

(declare-fun d!1499965 () Bool)

(assert (=> d!1499965 e!2940067))

(declare-fun res!1992805 () Bool)

(assert (=> d!1499965 (=> res!1992805 e!2940067)))

(declare-fun e!2940069 () Bool)

(assert (=> d!1499965 (= res!1992805 e!2940069)))

(declare-fun res!1992806 () Bool)

(assert (=> d!1499965 (=> (not res!1992806) (not e!2940069))))

(declare-fun lt!1878413 () Bool)

(assert (=> d!1499965 (= res!1992806 (not lt!1878413))))

(declare-fun lt!1878417 () Bool)

(assert (=> d!1499965 (= lt!1878413 lt!1878417)))

(declare-fun lt!1878412 () Unit!128360)

(declare-fun e!2940068 () Unit!128360)

(assert (=> d!1499965 (= lt!1878412 e!2940068)))

(declare-fun c!805246 () Bool)

(assert (=> d!1499965 (= c!805246 lt!1878417)))

(assert (=> d!1499965 (= lt!1878417 (containsKey!3297 (toList!5838 (extractMap!2000 lt!1878122)) key!4653))))

(assert (=> d!1499965 (= (contains!16047 (extractMap!2000 lt!1878122) key!4653) lt!1878413)))

(declare-fun b!4713932 () Bool)

(assert (=> b!4713932 (= e!2940070 (contains!16049 (keys!18908 (extractMap!2000 lt!1878122)) key!4653))))

(declare-fun b!4713933 () Bool)

(assert (=> b!4713933 false))

(declare-fun lt!1878416 () Unit!128360)

(declare-fun lt!1878415 () Unit!128360)

(assert (=> b!4713933 (= lt!1878416 lt!1878415)))

(assert (=> b!4713933 (containsKey!3297 (toList!5838 (extractMap!2000 lt!1878122)) key!4653)))

(assert (=> b!4713933 (= lt!1878415 (lemmaInGetKeysListThenContainsKey!924 (toList!5838 (extractMap!2000 lt!1878122)) key!4653))))

(declare-fun e!2940072 () Unit!128360)

(declare-fun Unit!128413 () Unit!128360)

(assert (=> b!4713933 (= e!2940072 Unit!128413)))

(declare-fun b!4713934 () Bool)

(declare-fun Unit!128414 () Unit!128360)

(assert (=> b!4713934 (= e!2940072 Unit!128414)))

(declare-fun b!4713935 () Bool)

(declare-fun lt!1878419 () Unit!128360)

(assert (=> b!4713935 (= e!2940068 lt!1878419)))

(declare-fun lt!1878418 () Unit!128360)

(assert (=> b!4713935 (= lt!1878418 (lemmaContainsKeyImpliesGetValueByKeyDefined!1809 (toList!5838 (extractMap!2000 lt!1878122)) key!4653))))

(assert (=> b!4713935 (isDefined!9554 (getValueByKey!1918 (toList!5838 (extractMap!2000 lt!1878122)) key!4653))))

(declare-fun lt!1878414 () Unit!128360)

(assert (=> b!4713935 (= lt!1878414 lt!1878418)))

(assert (=> b!4713935 (= lt!1878419 (lemmaInListThenGetKeysListContains!920 (toList!5838 (extractMap!2000 lt!1878122)) key!4653))))

(declare-fun call!329580 () Bool)

(assert (=> b!4713935 call!329580))

(declare-fun b!4713936 () Bool)

(assert (=> b!4713936 (= e!2940068 e!2940072)))

(declare-fun c!805244 () Bool)

(assert (=> b!4713936 (= c!805244 call!329580)))

(declare-fun b!4713937 () Bool)

(declare-fun e!2940071 () List!52851)

(assert (=> b!4713937 (= e!2940071 (getKeysList!925 (toList!5838 (extractMap!2000 lt!1878122))))))

(declare-fun bm!329575 () Bool)

(assert (=> bm!329575 (= call!329580 (contains!16049 e!2940071 key!4653))))

(declare-fun c!805245 () Bool)

(assert (=> bm!329575 (= c!805245 c!805246)))

(declare-fun b!4713938 () Bool)

(assert (=> b!4713938 (= e!2940071 (keys!18908 (extractMap!2000 lt!1878122)))))

(declare-fun b!4713939 () Bool)

(assert (=> b!4713939 (= e!2940069 (not (contains!16049 (keys!18908 (extractMap!2000 lt!1878122)) key!4653)))))

(assert (= (and d!1499965 c!805246) b!4713935))

(assert (= (and d!1499965 (not c!805246)) b!4713936))

(assert (= (and b!4713936 c!805244) b!4713933))

(assert (= (and b!4713936 (not c!805244)) b!4713934))

(assert (= (or b!4713935 b!4713936) bm!329575))

(assert (= (and bm!329575 c!805245) b!4713937))

(assert (= (and bm!329575 (not c!805245)) b!4713938))

(assert (= (and d!1499965 res!1992806) b!4713939))

(assert (= (and d!1499965 (not res!1992805)) b!4713931))

(assert (= (and b!4713931 res!1992804) b!4713932))

(declare-fun m!5640965 () Bool)

(assert (=> b!4713937 m!5640965))

(declare-fun m!5640967 () Bool)

(assert (=> b!4713933 m!5640967))

(declare-fun m!5640969 () Bool)

(assert (=> b!4713933 m!5640969))

(assert (=> d!1499965 m!5640967))

(assert (=> b!4713939 m!5640571))

(declare-fun m!5640971 () Bool)

(assert (=> b!4713939 m!5640971))

(assert (=> b!4713939 m!5640971))

(declare-fun m!5640973 () Bool)

(assert (=> b!4713939 m!5640973))

(assert (=> b!4713938 m!5640571))

(assert (=> b!4713938 m!5640971))

(declare-fun m!5640975 () Bool)

(assert (=> b!4713935 m!5640975))

(declare-fun m!5640977 () Bool)

(assert (=> b!4713935 m!5640977))

(assert (=> b!4713935 m!5640977))

(declare-fun m!5640979 () Bool)

(assert (=> b!4713935 m!5640979))

(declare-fun m!5640981 () Bool)

(assert (=> b!4713935 m!5640981))

(declare-fun m!5640983 () Bool)

(assert (=> bm!329575 m!5640983))

(assert (=> b!4713932 m!5640571))

(assert (=> b!4713932 m!5640971))

(assert (=> b!4713932 m!5640971))

(assert (=> b!4713932 m!5640973))

(assert (=> b!4713931 m!5640977))

(assert (=> b!4713931 m!5640977))

(assert (=> b!4713931 m!5640979))

(assert (=> b!4713707 d!1499965))

(declare-fun bs!1103156 () Bool)

(declare-fun b!4713943 () Bool)

(assert (= bs!1103156 (and b!4713943 d!1499893)))

(declare-fun lambda!213529 () Int)

(assert (=> bs!1103156 (= (= lt!1878133 lt!1878365) (= lambda!213529 lambda!213516))))

(declare-fun bs!1103157 () Bool)

(assert (= bs!1103157 (and b!4713943 b!4713890)))

(assert (=> bs!1103157 (= lambda!213529 lambda!213514)))

(declare-fun bs!1103158 () Bool)

(assert (= bs!1103158 (and b!4713943 d!1499957)))

(assert (=> bs!1103158 (= (= lt!1878133 lt!1878405) (= lambda!213529 lambda!213526))))

(assert (=> bs!1103157 (= (= lt!1878133 lt!1878355) (= lambda!213529 lambda!213515))))

(declare-fun bs!1103159 () Bool)

(assert (= bs!1103159 (and b!4713943 b!4713892)))

(assert (=> bs!1103159 (= lambda!213529 lambda!213513)))

(declare-fun bs!1103160 () Bool)

(assert (= bs!1103160 (and b!4713943 b!4713925)))

(assert (=> bs!1103160 (= lambda!213529 lambda!213523)))

(declare-fun bs!1103161 () Bool)

(assert (= bs!1103161 (and b!4713943 b!4713923)))

(assert (=> bs!1103161 (= lambda!213529 lambda!213524)))

(assert (=> bs!1103161 (= (= lt!1878133 lt!1878395) (= lambda!213529 lambda!213525))))

(assert (=> b!4713943 true))

(declare-fun bs!1103162 () Bool)

(declare-fun b!4713941 () Bool)

(assert (= bs!1103162 (and b!4713941 d!1499893)))

(declare-fun lambda!213530 () Int)

(assert (=> bs!1103162 (= (= lt!1878133 lt!1878365) (= lambda!213530 lambda!213516))))

(declare-fun bs!1103163 () Bool)

(assert (= bs!1103163 (and b!4713941 b!4713890)))

(assert (=> bs!1103163 (= lambda!213530 lambda!213514)))

(declare-fun bs!1103164 () Bool)

(assert (= bs!1103164 (and b!4713941 d!1499957)))

(assert (=> bs!1103164 (= (= lt!1878133 lt!1878405) (= lambda!213530 lambda!213526))))

(declare-fun bs!1103165 () Bool)

(assert (= bs!1103165 (and b!4713941 b!4713943)))

(assert (=> bs!1103165 (= lambda!213530 lambda!213529)))

(assert (=> bs!1103163 (= (= lt!1878133 lt!1878355) (= lambda!213530 lambda!213515))))

(declare-fun bs!1103166 () Bool)

(assert (= bs!1103166 (and b!4713941 b!4713892)))

(assert (=> bs!1103166 (= lambda!213530 lambda!213513)))

(declare-fun bs!1103167 () Bool)

(assert (= bs!1103167 (and b!4713941 b!4713925)))

(assert (=> bs!1103167 (= lambda!213530 lambda!213523)))

(declare-fun bs!1103168 () Bool)

(assert (= bs!1103168 (and b!4713941 b!4713923)))

(assert (=> bs!1103168 (= lambda!213530 lambda!213524)))

(assert (=> bs!1103168 (= (= lt!1878133 lt!1878395) (= lambda!213530 lambda!213525))))

(assert (=> b!4713941 true))

(declare-fun lambda!213531 () Int)

(declare-fun lt!1878429 () ListMap!5201)

(assert (=> bs!1103162 (= (= lt!1878429 lt!1878365) (= lambda!213531 lambda!213516))))

(assert (=> bs!1103163 (= (= lt!1878429 lt!1878133) (= lambda!213531 lambda!213514))))

(assert (=> bs!1103164 (= (= lt!1878429 lt!1878405) (= lambda!213531 lambda!213526))))

(assert (=> bs!1103165 (= (= lt!1878429 lt!1878133) (= lambda!213531 lambda!213529))))

(assert (=> bs!1103163 (= (= lt!1878429 lt!1878355) (= lambda!213531 lambda!213515))))

(assert (=> bs!1103166 (= (= lt!1878429 lt!1878133) (= lambda!213531 lambda!213513))))

(assert (=> bs!1103167 (= (= lt!1878429 lt!1878133) (= lambda!213531 lambda!213523))))

(assert (=> b!4713941 (= (= lt!1878429 lt!1878133) (= lambda!213531 lambda!213530))))

(assert (=> bs!1103168 (= (= lt!1878429 lt!1878133) (= lambda!213531 lambda!213524))))

(assert (=> bs!1103168 (= (= lt!1878429 lt!1878395) (= lambda!213531 lambda!213525))))

(assert (=> b!4713941 true))

(declare-fun bs!1103169 () Bool)

(declare-fun d!1499971 () Bool)

(assert (= bs!1103169 (and d!1499971 d!1499893)))

(declare-fun lambda!213532 () Int)

(declare-fun lt!1878439 () ListMap!5201)

(assert (=> bs!1103169 (= (= lt!1878439 lt!1878365) (= lambda!213532 lambda!213516))))

(declare-fun bs!1103170 () Bool)

(assert (= bs!1103170 (and d!1499971 b!4713890)))

(assert (=> bs!1103170 (= (= lt!1878439 lt!1878133) (= lambda!213532 lambda!213514))))

(declare-fun bs!1103171 () Bool)

(assert (= bs!1103171 (and d!1499971 d!1499957)))

(assert (=> bs!1103171 (= (= lt!1878439 lt!1878405) (= lambda!213532 lambda!213526))))

(assert (=> bs!1103170 (= (= lt!1878439 lt!1878355) (= lambda!213532 lambda!213515))))

(declare-fun bs!1103172 () Bool)

(assert (= bs!1103172 (and d!1499971 b!4713892)))

(assert (=> bs!1103172 (= (= lt!1878439 lt!1878133) (= lambda!213532 lambda!213513))))

(declare-fun bs!1103173 () Bool)

(assert (= bs!1103173 (and d!1499971 b!4713925)))

(assert (=> bs!1103173 (= (= lt!1878439 lt!1878133) (= lambda!213532 lambda!213523))))

(declare-fun bs!1103174 () Bool)

(assert (= bs!1103174 (and d!1499971 b!4713941)))

(assert (=> bs!1103174 (= (= lt!1878439 lt!1878133) (= lambda!213532 lambda!213530))))

(declare-fun bs!1103175 () Bool)

(assert (= bs!1103175 (and d!1499971 b!4713923)))

(assert (=> bs!1103175 (= (= lt!1878439 lt!1878133) (= lambda!213532 lambda!213524))))

(assert (=> bs!1103175 (= (= lt!1878439 lt!1878395) (= lambda!213532 lambda!213525))))

(assert (=> bs!1103174 (= (= lt!1878439 lt!1878429) (= lambda!213532 lambda!213531))))

(declare-fun bs!1103176 () Bool)

(assert (= bs!1103176 (and d!1499971 b!4713943)))

(assert (=> bs!1103176 (= (= lt!1878439 lt!1878133) (= lambda!213532 lambda!213529))))

(assert (=> d!1499971 true))

(declare-fun bm!329576 () Bool)

(declare-fun call!329581 () Unit!128360)

(assert (=> bm!329576 (= call!329581 (lemmaContainsAllItsOwnKeys!774 lt!1878133))))

(declare-fun c!805247 () Bool)

(declare-fun bm!329577 () Bool)

(declare-fun call!329583 () Bool)

(declare-fun lt!1878433 () ListMap!5201)

(assert (=> bm!329577 (= call!329583 (forall!11519 (ite c!805247 (toList!5838 lt!1878133) (toList!5838 lt!1878433)) (ite c!805247 lambda!213529 lambda!213531)))))

(declare-fun e!2940075 () Bool)

(assert (=> d!1499971 e!2940075))

(declare-fun res!1992808 () Bool)

(assert (=> d!1499971 (=> (not res!1992808) (not e!2940075))))

(assert (=> d!1499971 (= res!1992808 (forall!11519 (Cons!52725 lt!1878119 lt!1878127) lambda!213532))))

(declare-fun e!2940073 () ListMap!5201)

(assert (=> d!1499971 (= lt!1878439 e!2940073)))

(assert (=> d!1499971 (= c!805247 ((_ is Nil!52725) (Cons!52725 lt!1878119 lt!1878127)))))

(assert (=> d!1499971 (noDuplicateKeys!1974 (Cons!52725 lt!1878119 lt!1878127))))

(assert (=> d!1499971 (= (addToMapMapFromBucket!1404 (Cons!52725 lt!1878119 lt!1878127) lt!1878133) lt!1878439)))

(declare-fun call!329582 () Bool)

(declare-fun bm!329578 () Bool)

(assert (=> bm!329578 (= call!329582 (forall!11519 (ite c!805247 (toList!5838 lt!1878133) (toList!5838 lt!1878433)) (ite c!805247 lambda!213529 lambda!213531)))))

(declare-fun b!4713940 () Bool)

(assert (=> b!4713940 (= e!2940075 (invariantList!1486 (toList!5838 lt!1878439)))))

(assert (=> b!4713941 (= e!2940073 lt!1878429)))

(assert (=> b!4713941 (= lt!1878433 (+!2234 lt!1878133 (h!59046 (Cons!52725 lt!1878119 lt!1878127))))))

(assert (=> b!4713941 (= lt!1878429 (addToMapMapFromBucket!1404 (t!360093 (Cons!52725 lt!1878119 lt!1878127)) (+!2234 lt!1878133 (h!59046 (Cons!52725 lt!1878119 lt!1878127)))))))

(declare-fun lt!1878431 () Unit!128360)

(assert (=> b!4713941 (= lt!1878431 call!329581)))

(assert (=> b!4713941 (forall!11519 (toList!5838 lt!1878133) lambda!213530)))

(declare-fun lt!1878437 () Unit!128360)

(assert (=> b!4713941 (= lt!1878437 lt!1878431)))

(assert (=> b!4713941 call!329583))

(declare-fun lt!1878438 () Unit!128360)

(declare-fun Unit!128419 () Unit!128360)

(assert (=> b!4713941 (= lt!1878438 Unit!128419)))

(assert (=> b!4713941 (forall!11519 (t!360093 (Cons!52725 lt!1878119 lt!1878127)) lambda!213531)))

(declare-fun lt!1878427 () Unit!128360)

(declare-fun Unit!128421 () Unit!128360)

(assert (=> b!4713941 (= lt!1878427 Unit!128421)))

(declare-fun lt!1878430 () Unit!128360)

(declare-fun Unit!128423 () Unit!128360)

(assert (=> b!4713941 (= lt!1878430 Unit!128423)))

(declare-fun lt!1878426 () Unit!128360)

(assert (=> b!4713941 (= lt!1878426 (forallContained!3588 (toList!5838 lt!1878433) lambda!213531 (h!59046 (Cons!52725 lt!1878119 lt!1878127))))))

(assert (=> b!4713941 (contains!16047 lt!1878433 (_1!30439 (h!59046 (Cons!52725 lt!1878119 lt!1878127))))))

(declare-fun lt!1878421 () Unit!128360)

(declare-fun Unit!128426 () Unit!128360)

(assert (=> b!4713941 (= lt!1878421 Unit!128426)))

(assert (=> b!4713941 (contains!16047 lt!1878429 (_1!30439 (h!59046 (Cons!52725 lt!1878119 lt!1878127))))))

(declare-fun lt!1878434 () Unit!128360)

(declare-fun Unit!128427 () Unit!128360)

(assert (=> b!4713941 (= lt!1878434 Unit!128427)))

(assert (=> b!4713941 (forall!11519 (Cons!52725 lt!1878119 lt!1878127) lambda!213531)))

(declare-fun lt!1878420 () Unit!128360)

(declare-fun Unit!128429 () Unit!128360)

(assert (=> b!4713941 (= lt!1878420 Unit!128429)))

(assert (=> b!4713941 call!329582))

(declare-fun lt!1878432 () Unit!128360)

(declare-fun Unit!128430 () Unit!128360)

(assert (=> b!4713941 (= lt!1878432 Unit!128430)))

(declare-fun lt!1878423 () Unit!128360)

(declare-fun Unit!128432 () Unit!128360)

(assert (=> b!4713941 (= lt!1878423 Unit!128432)))

(declare-fun lt!1878425 () Unit!128360)

(assert (=> b!4713941 (= lt!1878425 (addForallContainsKeyThenBeforeAdding!773 lt!1878133 lt!1878429 (_1!30439 (h!59046 (Cons!52725 lt!1878119 lt!1878127))) (_2!30439 (h!59046 (Cons!52725 lt!1878119 lt!1878127)))))))

(assert (=> b!4713941 (forall!11519 (toList!5838 lt!1878133) lambda!213531)))

(declare-fun lt!1878436 () Unit!128360)

(assert (=> b!4713941 (= lt!1878436 lt!1878425)))

(assert (=> b!4713941 (forall!11519 (toList!5838 lt!1878133) lambda!213531)))

(declare-fun lt!1878435 () Unit!128360)

(declare-fun Unit!128434 () Unit!128360)

(assert (=> b!4713941 (= lt!1878435 Unit!128434)))

(declare-fun res!1992809 () Bool)

(assert (=> b!4713941 (= res!1992809 (forall!11519 (Cons!52725 lt!1878119 lt!1878127) lambda!213531))))

(declare-fun e!2940074 () Bool)

(assert (=> b!4713941 (=> (not res!1992809) (not e!2940074))))

(assert (=> b!4713941 e!2940074))

(declare-fun lt!1878440 () Unit!128360)

(declare-fun Unit!128435 () Unit!128360)

(assert (=> b!4713941 (= lt!1878440 Unit!128435)))

(declare-fun b!4713942 () Bool)

(assert (=> b!4713942 (= e!2940074 (forall!11519 (toList!5838 lt!1878133) lambda!213531))))

(assert (=> b!4713943 (= e!2940073 lt!1878133)))

(declare-fun lt!1878422 () Unit!128360)

(assert (=> b!4713943 (= lt!1878422 call!329581)))

(assert (=> b!4713943 call!329582))

(declare-fun lt!1878428 () Unit!128360)

(assert (=> b!4713943 (= lt!1878428 lt!1878422)))

(assert (=> b!4713943 call!329583))

(declare-fun lt!1878424 () Unit!128360)

(declare-fun Unit!128436 () Unit!128360)

(assert (=> b!4713943 (= lt!1878424 Unit!128436)))

(declare-fun b!4713944 () Bool)

(declare-fun res!1992807 () Bool)

(assert (=> b!4713944 (=> (not res!1992807) (not e!2940075))))

(assert (=> b!4713944 (= res!1992807 (forall!11519 (toList!5838 lt!1878133) lambda!213532))))

(assert (= (and d!1499971 c!805247) b!4713943))

(assert (= (and d!1499971 (not c!805247)) b!4713941))

(assert (= (and b!4713941 res!1992809) b!4713942))

(assert (= (or b!4713943 b!4713941) bm!329576))

(assert (= (or b!4713943 b!4713941) bm!329577))

(assert (= (or b!4713943 b!4713941) bm!329578))

(assert (= (and d!1499971 res!1992808) b!4713944))

(assert (= (and b!4713944 res!1992807) b!4713940))

(declare-fun m!5640985 () Bool)

(assert (=> b!4713944 m!5640985))

(declare-fun m!5640987 () Bool)

(assert (=> b!4713941 m!5640987))

(declare-fun m!5640989 () Bool)

(assert (=> b!4713941 m!5640989))

(declare-fun m!5640991 () Bool)

(assert (=> b!4713941 m!5640991))

(declare-fun m!5640993 () Bool)

(assert (=> b!4713941 m!5640993))

(assert (=> b!4713941 m!5640991))

(declare-fun m!5640995 () Bool)

(assert (=> b!4713941 m!5640995))

(declare-fun m!5640997 () Bool)

(assert (=> b!4713941 m!5640997))

(declare-fun m!5640999 () Bool)

(assert (=> b!4713941 m!5640999))

(assert (=> b!4713941 m!5640995))

(assert (=> b!4713941 m!5640987))

(declare-fun m!5641001 () Bool)

(assert (=> b!4713941 m!5641001))

(declare-fun m!5641003 () Bool)

(assert (=> b!4713941 m!5641003))

(declare-fun m!5641005 () Bool)

(assert (=> b!4713941 m!5641005))

(assert (=> b!4713942 m!5640991))

(declare-fun m!5641007 () Bool)

(assert (=> d!1499971 m!5641007))

(declare-fun m!5641009 () Bool)

(assert (=> d!1499971 m!5641009))

(declare-fun m!5641011 () Bool)

(assert (=> bm!329577 m!5641011))

(assert (=> bm!329578 m!5641011))

(declare-fun m!5641013 () Bool)

(assert (=> b!4713940 m!5641013))

(assert (=> bm!329576 m!5640867))

(assert (=> b!4713707 d!1499971))

(declare-fun d!1499973 () Bool)

(assert (=> d!1499973 (= (eq!1101 (addToMapMapFromBucket!1404 (Cons!52725 lt!1878135 lt!1878124) lt!1878133) (+!2234 (addToMapMapFromBucket!1404 lt!1878124 lt!1878133) lt!1878135)) (= (content!9350 (toList!5838 (addToMapMapFromBucket!1404 (Cons!52725 lt!1878135 lt!1878124) lt!1878133))) (content!9350 (toList!5838 (+!2234 (addToMapMapFromBucket!1404 lt!1878124 lt!1878133) lt!1878135)))))))

(declare-fun bs!1103177 () Bool)

(assert (= bs!1103177 d!1499973))

(declare-fun m!5641015 () Bool)

(assert (=> bs!1103177 m!5641015))

(declare-fun m!5641017 () Bool)

(assert (=> bs!1103177 m!5641017))

(assert (=> b!4713707 d!1499973))

(declare-fun d!1499975 () Bool)

(declare-fun e!2940081 () Bool)

(assert (=> d!1499975 e!2940081))

(declare-fun res!1992818 () Bool)

(assert (=> d!1499975 (=> (not res!1992818) (not e!2940081))))

(declare-fun lt!1878475 () ListMap!5201)

(assert (=> d!1499975 (= res!1992818 (contains!16047 lt!1878475 (_1!30439 (h!59046 oldBucket!34))))))

(declare-fun lt!1878476 () List!52849)

(assert (=> d!1499975 (= lt!1878475 (ListMap!5202 lt!1878476))))

(declare-fun lt!1878473 () Unit!128360)

(declare-fun lt!1878474 () Unit!128360)

(assert (=> d!1499975 (= lt!1878473 lt!1878474)))

(assert (=> d!1499975 (= (getValueByKey!1918 lt!1878476 (_1!30439 (h!59046 oldBucket!34))) (Some!12299 (_2!30439 (h!59046 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1068 (List!52849 K!14085 V!14331) Unit!128360)

(assert (=> d!1499975 (= lt!1878474 (lemmaContainsTupThenGetReturnValue!1068 lt!1878476 (_1!30439 (h!59046 oldBucket!34)) (_2!30439 (h!59046 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!576 (List!52849 K!14085 V!14331) List!52849)

(assert (=> d!1499975 (= lt!1878476 (insertNoDuplicatedKeys!576 (toList!5838 (extractMap!2000 (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023))))) (_1!30439 (h!59046 oldBucket!34)) (_2!30439 (h!59046 oldBucket!34))))))

(assert (=> d!1499975 (= (+!2234 (extractMap!2000 (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023)))) (h!59046 oldBucket!34)) lt!1878475)))

(declare-fun b!4713954 () Bool)

(declare-fun res!1992817 () Bool)

(assert (=> b!4713954 (=> (not res!1992817) (not e!2940081))))

(assert (=> b!4713954 (= res!1992817 (= (getValueByKey!1918 (toList!5838 lt!1878475) (_1!30439 (h!59046 oldBucket!34))) (Some!12299 (_2!30439 (h!59046 oldBucket!34)))))))

(declare-fun b!4713955 () Bool)

(declare-fun contains!16051 (List!52849 tuple2!54290) Bool)

(assert (=> b!4713955 (= e!2940081 (contains!16051 (toList!5838 lt!1878475) (h!59046 oldBucket!34)))))

(assert (= (and d!1499975 res!1992818) b!4713954))

(assert (= (and b!4713954 res!1992817) b!4713955))

(declare-fun m!5641045 () Bool)

(assert (=> d!1499975 m!5641045))

(declare-fun m!5641049 () Bool)

(assert (=> d!1499975 m!5641049))

(declare-fun m!5641051 () Bool)

(assert (=> d!1499975 m!5641051))

(declare-fun m!5641057 () Bool)

(assert (=> d!1499975 m!5641057))

(declare-fun m!5641061 () Bool)

(assert (=> b!4713954 m!5641061))

(declare-fun m!5641063 () Bool)

(assert (=> b!4713955 m!5641063))

(assert (=> b!4713707 d!1499975))

(declare-fun d!1499981 () Bool)

(assert (=> d!1499981 (eq!1101 (addToMapMapFromBucket!1404 (Cons!52725 lt!1878135 lt!1878124) lt!1878133) (+!2234 (addToMapMapFromBucket!1404 lt!1878124 lt!1878133) lt!1878135))))

(declare-fun lt!1878488 () Unit!128360)

(declare-fun choose!33172 (tuple2!54290 List!52849 ListMap!5201) Unit!128360)

(assert (=> d!1499981 (= lt!1878488 (choose!33172 lt!1878135 lt!1878124 lt!1878133))))

(assert (=> d!1499981 (noDuplicateKeys!1974 lt!1878124)))

(assert (=> d!1499981 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!350 lt!1878135 lt!1878124 lt!1878133) lt!1878488)))

(declare-fun bs!1103199 () Bool)

(assert (= bs!1103199 d!1499981))

(assert (=> bs!1103199 m!5640579))

(assert (=> bs!1103199 m!5640577))

(assert (=> bs!1103199 m!5640581))

(assert (=> bs!1103199 m!5640587))

(assert (=> bs!1103199 m!5640937))

(declare-fun m!5641075 () Bool)

(assert (=> bs!1103199 m!5641075))

(assert (=> bs!1103199 m!5640577))

(assert (=> bs!1103199 m!5640579))

(assert (=> bs!1103199 m!5640581))

(assert (=> b!4713707 d!1499981))

(declare-fun d!1499987 () Bool)

(assert (=> d!1499987 (= (head!10178 oldBucket!34) (h!59046 oldBucket!34))))

(assert (=> b!4713707 d!1499987))

(declare-fun d!1499989 () Bool)

(declare-fun e!2940085 () Bool)

(assert (=> d!1499989 e!2940085))

(declare-fun res!1992826 () Bool)

(assert (=> d!1499989 (=> (not res!1992826) (not e!2940085))))

(declare-fun lt!1878495 () ListMap!5201)

(assert (=> d!1499989 (= res!1992826 (contains!16047 lt!1878495 (_1!30439 lt!1878135)))))

(declare-fun lt!1878496 () List!52849)

(assert (=> d!1499989 (= lt!1878495 (ListMap!5202 lt!1878496))))

(declare-fun lt!1878493 () Unit!128360)

(declare-fun lt!1878494 () Unit!128360)

(assert (=> d!1499989 (= lt!1878493 lt!1878494)))

(assert (=> d!1499989 (= (getValueByKey!1918 lt!1878496 (_1!30439 lt!1878135)) (Some!12299 (_2!30439 lt!1878135)))))

(assert (=> d!1499989 (= lt!1878494 (lemmaContainsTupThenGetReturnValue!1068 lt!1878496 (_1!30439 lt!1878135) (_2!30439 lt!1878135)))))

(assert (=> d!1499989 (= lt!1878496 (insertNoDuplicatedKeys!576 (toList!5838 (addToMapMapFromBucket!1404 lt!1878124 lt!1878133)) (_1!30439 lt!1878135) (_2!30439 lt!1878135)))))

(assert (=> d!1499989 (= (+!2234 (addToMapMapFromBucket!1404 lt!1878124 lt!1878133) lt!1878135) lt!1878495)))

(declare-fun b!4713962 () Bool)

(declare-fun res!1992825 () Bool)

(assert (=> b!4713962 (=> (not res!1992825) (not e!2940085))))

(assert (=> b!4713962 (= res!1992825 (= (getValueByKey!1918 (toList!5838 lt!1878495) (_1!30439 lt!1878135)) (Some!12299 (_2!30439 lt!1878135))))))

(declare-fun b!4713963 () Bool)

(assert (=> b!4713963 (= e!2940085 (contains!16051 (toList!5838 lt!1878495) lt!1878135))))

(assert (= (and d!1499989 res!1992826) b!4713962))

(assert (= (and b!4713962 res!1992825) b!4713963))

(declare-fun m!5641093 () Bool)

(assert (=> d!1499989 m!5641093))

(declare-fun m!5641095 () Bool)

(assert (=> d!1499989 m!5641095))

(declare-fun m!5641097 () Bool)

(assert (=> d!1499989 m!5641097))

(declare-fun m!5641099 () Bool)

(assert (=> d!1499989 m!5641099))

(declare-fun m!5641101 () Bool)

(assert (=> b!4713962 m!5641101))

(declare-fun m!5641103 () Bool)

(assert (=> b!4713963 m!5641103))

(assert (=> b!4713707 d!1499989))

(declare-fun bs!1103205 () Bool)

(declare-fun b!4713972 () Bool)

(assert (= bs!1103205 (and b!4713972 d!1499893)))

(declare-fun lambda!213541 () Int)

(assert (=> bs!1103205 (= (= lt!1878133 lt!1878365) (= lambda!213541 lambda!213516))))

(declare-fun bs!1103207 () Bool)

(assert (= bs!1103207 (and b!4713972 b!4713890)))

(assert (=> bs!1103207 (= lambda!213541 lambda!213514)))

(declare-fun bs!1103209 () Bool)

(assert (= bs!1103209 (and b!4713972 d!1499957)))

(assert (=> bs!1103209 (= (= lt!1878133 lt!1878405) (= lambda!213541 lambda!213526))))

(assert (=> bs!1103207 (= (= lt!1878133 lt!1878355) (= lambda!213541 lambda!213515))))

(declare-fun bs!1103210 () Bool)

(assert (= bs!1103210 (and b!4713972 b!4713892)))

(assert (=> bs!1103210 (= lambda!213541 lambda!213513)))

(declare-fun bs!1103211 () Bool)

(assert (= bs!1103211 (and b!4713972 b!4713925)))

(assert (=> bs!1103211 (= lambda!213541 lambda!213523)))

(declare-fun bs!1103212 () Bool)

(assert (= bs!1103212 (and b!4713972 b!4713941)))

(assert (=> bs!1103212 (= lambda!213541 lambda!213530)))

(declare-fun bs!1103213 () Bool)

(assert (= bs!1103213 (and b!4713972 b!4713923)))

(assert (=> bs!1103213 (= lambda!213541 lambda!213524)))

(assert (=> bs!1103213 (= (= lt!1878133 lt!1878395) (= lambda!213541 lambda!213525))))

(assert (=> bs!1103212 (= (= lt!1878133 lt!1878429) (= lambda!213541 lambda!213531))))

(declare-fun bs!1103215 () Bool)

(assert (= bs!1103215 (and b!4713972 d!1499971)))

(assert (=> bs!1103215 (= (= lt!1878133 lt!1878439) (= lambda!213541 lambda!213532))))

(declare-fun bs!1103217 () Bool)

(assert (= bs!1103217 (and b!4713972 b!4713943)))

(assert (=> bs!1103217 (= lambda!213541 lambda!213529)))

(assert (=> b!4713972 true))

(declare-fun bs!1103223 () Bool)

(declare-fun b!4713970 () Bool)

(assert (= bs!1103223 (and b!4713970 d!1499893)))

(declare-fun lambda!213543 () Int)

(assert (=> bs!1103223 (= (= lt!1878133 lt!1878365) (= lambda!213543 lambda!213516))))

(declare-fun bs!1103224 () Bool)

(assert (= bs!1103224 (and b!4713970 b!4713890)))

(assert (=> bs!1103224 (= lambda!213543 lambda!213514)))

(declare-fun bs!1103225 () Bool)

(assert (= bs!1103225 (and b!4713970 b!4713972)))

(assert (=> bs!1103225 (= lambda!213543 lambda!213541)))

(declare-fun bs!1103226 () Bool)

(assert (= bs!1103226 (and b!4713970 d!1499957)))

(assert (=> bs!1103226 (= (= lt!1878133 lt!1878405) (= lambda!213543 lambda!213526))))

(assert (=> bs!1103224 (= (= lt!1878133 lt!1878355) (= lambda!213543 lambda!213515))))

(declare-fun bs!1103227 () Bool)

(assert (= bs!1103227 (and b!4713970 b!4713892)))

(assert (=> bs!1103227 (= lambda!213543 lambda!213513)))

(declare-fun bs!1103228 () Bool)

(assert (= bs!1103228 (and b!4713970 b!4713925)))

(assert (=> bs!1103228 (= lambda!213543 lambda!213523)))

(declare-fun bs!1103229 () Bool)

(assert (= bs!1103229 (and b!4713970 b!4713941)))

(assert (=> bs!1103229 (= lambda!213543 lambda!213530)))

(declare-fun bs!1103230 () Bool)

(assert (= bs!1103230 (and b!4713970 b!4713923)))

(assert (=> bs!1103230 (= lambda!213543 lambda!213524)))

(assert (=> bs!1103230 (= (= lt!1878133 lt!1878395) (= lambda!213543 lambda!213525))))

(assert (=> bs!1103229 (= (= lt!1878133 lt!1878429) (= lambda!213543 lambda!213531))))

(declare-fun bs!1103231 () Bool)

(assert (= bs!1103231 (and b!4713970 d!1499971)))

(assert (=> bs!1103231 (= (= lt!1878133 lt!1878439) (= lambda!213543 lambda!213532))))

(declare-fun bs!1103232 () Bool)

(assert (= bs!1103232 (and b!4713970 b!4713943)))

(assert (=> bs!1103232 (= lambda!213543 lambda!213529)))

(assert (=> b!4713970 true))

(declare-fun lt!1878527 () ListMap!5201)

(declare-fun lambda!213545 () Int)

(assert (=> b!4713970 (= (= lt!1878527 lt!1878133) (= lambda!213545 lambda!213543))))

(assert (=> bs!1103223 (= (= lt!1878527 lt!1878365) (= lambda!213545 lambda!213516))))

(assert (=> bs!1103224 (= (= lt!1878527 lt!1878133) (= lambda!213545 lambda!213514))))

(assert (=> bs!1103225 (= (= lt!1878527 lt!1878133) (= lambda!213545 lambda!213541))))

(assert (=> bs!1103226 (= (= lt!1878527 lt!1878405) (= lambda!213545 lambda!213526))))

(assert (=> bs!1103224 (= (= lt!1878527 lt!1878355) (= lambda!213545 lambda!213515))))

(assert (=> bs!1103227 (= (= lt!1878527 lt!1878133) (= lambda!213545 lambda!213513))))

(assert (=> bs!1103228 (= (= lt!1878527 lt!1878133) (= lambda!213545 lambda!213523))))

(assert (=> bs!1103229 (= (= lt!1878527 lt!1878133) (= lambda!213545 lambda!213530))))

(assert (=> bs!1103230 (= (= lt!1878527 lt!1878133) (= lambda!213545 lambda!213524))))

(assert (=> bs!1103230 (= (= lt!1878527 lt!1878395) (= lambda!213545 lambda!213525))))

(assert (=> bs!1103229 (= (= lt!1878527 lt!1878429) (= lambda!213545 lambda!213531))))

(assert (=> bs!1103231 (= (= lt!1878527 lt!1878439) (= lambda!213545 lambda!213532))))

(assert (=> bs!1103232 (= (= lt!1878527 lt!1878133) (= lambda!213545 lambda!213529))))

(assert (=> b!4713970 true))

(declare-fun bs!1103241 () Bool)

(declare-fun d!1499995 () Bool)

(assert (= bs!1103241 (and d!1499995 b!4713970)))

(declare-fun lambda!213547 () Int)

(declare-fun lt!1878537 () ListMap!5201)

(assert (=> bs!1103241 (= (= lt!1878537 lt!1878133) (= lambda!213547 lambda!213543))))

(declare-fun bs!1103242 () Bool)

(assert (= bs!1103242 (and d!1499995 d!1499893)))

(assert (=> bs!1103242 (= (= lt!1878537 lt!1878365) (= lambda!213547 lambda!213516))))

(declare-fun bs!1103243 () Bool)

(assert (= bs!1103243 (and d!1499995 b!4713890)))

(assert (=> bs!1103243 (= (= lt!1878537 lt!1878133) (= lambda!213547 lambda!213514))))

(declare-fun bs!1103244 () Bool)

(assert (= bs!1103244 (and d!1499995 b!4713972)))

(assert (=> bs!1103244 (= (= lt!1878537 lt!1878133) (= lambda!213547 lambda!213541))))

(assert (=> bs!1103241 (= (= lt!1878537 lt!1878527) (= lambda!213547 lambda!213545))))

(declare-fun bs!1103245 () Bool)

(assert (= bs!1103245 (and d!1499995 d!1499957)))

(assert (=> bs!1103245 (= (= lt!1878537 lt!1878405) (= lambda!213547 lambda!213526))))

(assert (=> bs!1103243 (= (= lt!1878537 lt!1878355) (= lambda!213547 lambda!213515))))

(declare-fun bs!1103246 () Bool)

(assert (= bs!1103246 (and d!1499995 b!4713892)))

(assert (=> bs!1103246 (= (= lt!1878537 lt!1878133) (= lambda!213547 lambda!213513))))

(declare-fun bs!1103247 () Bool)

(assert (= bs!1103247 (and d!1499995 b!4713925)))

(assert (=> bs!1103247 (= (= lt!1878537 lt!1878133) (= lambda!213547 lambda!213523))))

(declare-fun bs!1103248 () Bool)

(assert (= bs!1103248 (and d!1499995 b!4713941)))

(assert (=> bs!1103248 (= (= lt!1878537 lt!1878133) (= lambda!213547 lambda!213530))))

(declare-fun bs!1103249 () Bool)

(assert (= bs!1103249 (and d!1499995 b!4713923)))

(assert (=> bs!1103249 (= (= lt!1878537 lt!1878133) (= lambda!213547 lambda!213524))))

(assert (=> bs!1103249 (= (= lt!1878537 lt!1878395) (= lambda!213547 lambda!213525))))

(assert (=> bs!1103248 (= (= lt!1878537 lt!1878429) (= lambda!213547 lambda!213531))))

(declare-fun bs!1103250 () Bool)

(assert (= bs!1103250 (and d!1499995 d!1499971)))

(assert (=> bs!1103250 (= (= lt!1878537 lt!1878439) (= lambda!213547 lambda!213532))))

(declare-fun bs!1103251 () Bool)

(assert (= bs!1103251 (and d!1499995 b!4713943)))

(assert (=> bs!1103251 (= (= lt!1878537 lt!1878133) (= lambda!213547 lambda!213529))))

(assert (=> d!1499995 true))

(declare-fun bm!329585 () Bool)

(declare-fun call!329590 () Unit!128360)

(assert (=> bm!329585 (= call!329590 (lemmaContainsAllItsOwnKeys!774 lt!1878133))))

(declare-fun bm!329586 () Bool)

(declare-fun c!805250 () Bool)

(declare-fun lt!1878531 () ListMap!5201)

(declare-fun call!329592 () Bool)

(assert (=> bm!329586 (= call!329592 (forall!11519 (ite c!805250 (toList!5838 lt!1878133) (toList!5838 lt!1878531)) (ite c!805250 lambda!213541 lambda!213545)))))

(declare-fun e!2940091 () Bool)

(assert (=> d!1499995 e!2940091))

(declare-fun res!1992831 () Bool)

(assert (=> d!1499995 (=> (not res!1992831) (not e!2940091))))

(assert (=> d!1499995 (= res!1992831 (forall!11519 lt!1878127 lambda!213547))))

(declare-fun e!2940089 () ListMap!5201)

(assert (=> d!1499995 (= lt!1878537 e!2940089)))

(assert (=> d!1499995 (= c!805250 ((_ is Nil!52725) lt!1878127))))

(assert (=> d!1499995 (noDuplicateKeys!1974 lt!1878127)))

(assert (=> d!1499995 (= (addToMapMapFromBucket!1404 lt!1878127 lt!1878133) lt!1878537)))

(declare-fun call!329591 () Bool)

(declare-fun bm!329587 () Bool)

(assert (=> bm!329587 (= call!329591 (forall!11519 (ite c!805250 (toList!5838 lt!1878133) (toList!5838 lt!1878531)) (ite c!805250 lambda!213541 lambda!213545)))))

(declare-fun b!4713969 () Bool)

(assert (=> b!4713969 (= e!2940091 (invariantList!1486 (toList!5838 lt!1878537)))))

(assert (=> b!4713970 (= e!2940089 lt!1878527)))

(assert (=> b!4713970 (= lt!1878531 (+!2234 lt!1878133 (h!59046 lt!1878127)))))

(assert (=> b!4713970 (= lt!1878527 (addToMapMapFromBucket!1404 (t!360093 lt!1878127) (+!2234 lt!1878133 (h!59046 lt!1878127))))))

(declare-fun lt!1878529 () Unit!128360)

(assert (=> b!4713970 (= lt!1878529 call!329590)))

(assert (=> b!4713970 (forall!11519 (toList!5838 lt!1878133) lambda!213543)))

(declare-fun lt!1878535 () Unit!128360)

(assert (=> b!4713970 (= lt!1878535 lt!1878529)))

(assert (=> b!4713970 call!329592))

(declare-fun lt!1878536 () Unit!128360)

(declare-fun Unit!128437 () Unit!128360)

(assert (=> b!4713970 (= lt!1878536 Unit!128437)))

(assert (=> b!4713970 (forall!11519 (t!360093 lt!1878127) lambda!213545)))

(declare-fun lt!1878525 () Unit!128360)

(declare-fun Unit!128438 () Unit!128360)

(assert (=> b!4713970 (= lt!1878525 Unit!128438)))

(declare-fun lt!1878528 () Unit!128360)

(declare-fun Unit!128439 () Unit!128360)

(assert (=> b!4713970 (= lt!1878528 Unit!128439)))

(declare-fun lt!1878524 () Unit!128360)

(assert (=> b!4713970 (= lt!1878524 (forallContained!3588 (toList!5838 lt!1878531) lambda!213545 (h!59046 lt!1878127)))))

(assert (=> b!4713970 (contains!16047 lt!1878531 (_1!30439 (h!59046 lt!1878127)))))

(declare-fun lt!1878519 () Unit!128360)

(declare-fun Unit!128440 () Unit!128360)

(assert (=> b!4713970 (= lt!1878519 Unit!128440)))

(assert (=> b!4713970 (contains!16047 lt!1878527 (_1!30439 (h!59046 lt!1878127)))))

(declare-fun lt!1878532 () Unit!128360)

(declare-fun Unit!128441 () Unit!128360)

(assert (=> b!4713970 (= lt!1878532 Unit!128441)))

(assert (=> b!4713970 (forall!11519 lt!1878127 lambda!213545)))

(declare-fun lt!1878518 () Unit!128360)

(declare-fun Unit!128442 () Unit!128360)

(assert (=> b!4713970 (= lt!1878518 Unit!128442)))

(assert (=> b!4713970 call!329591))

(declare-fun lt!1878530 () Unit!128360)

(declare-fun Unit!128443 () Unit!128360)

(assert (=> b!4713970 (= lt!1878530 Unit!128443)))

(declare-fun lt!1878521 () Unit!128360)

(declare-fun Unit!128444 () Unit!128360)

(assert (=> b!4713970 (= lt!1878521 Unit!128444)))

(declare-fun lt!1878523 () Unit!128360)

(assert (=> b!4713970 (= lt!1878523 (addForallContainsKeyThenBeforeAdding!773 lt!1878133 lt!1878527 (_1!30439 (h!59046 lt!1878127)) (_2!30439 (h!59046 lt!1878127))))))

(assert (=> b!4713970 (forall!11519 (toList!5838 lt!1878133) lambda!213545)))

(declare-fun lt!1878534 () Unit!128360)

(assert (=> b!4713970 (= lt!1878534 lt!1878523)))

(assert (=> b!4713970 (forall!11519 (toList!5838 lt!1878133) lambda!213545)))

(declare-fun lt!1878533 () Unit!128360)

(declare-fun Unit!128445 () Unit!128360)

(assert (=> b!4713970 (= lt!1878533 Unit!128445)))

(declare-fun res!1992832 () Bool)

(assert (=> b!4713970 (= res!1992832 (forall!11519 lt!1878127 lambda!213545))))

(declare-fun e!2940090 () Bool)

(assert (=> b!4713970 (=> (not res!1992832) (not e!2940090))))

(assert (=> b!4713970 e!2940090))

(declare-fun lt!1878538 () Unit!128360)

(declare-fun Unit!128446 () Unit!128360)

(assert (=> b!4713970 (= lt!1878538 Unit!128446)))

(declare-fun b!4713971 () Bool)

(assert (=> b!4713971 (= e!2940090 (forall!11519 (toList!5838 lt!1878133) lambda!213545))))

(assert (=> b!4713972 (= e!2940089 lt!1878133)))

(declare-fun lt!1878520 () Unit!128360)

(assert (=> b!4713972 (= lt!1878520 call!329590)))

(assert (=> b!4713972 call!329591))

(declare-fun lt!1878526 () Unit!128360)

(assert (=> b!4713972 (= lt!1878526 lt!1878520)))

(assert (=> b!4713972 call!329592))

(declare-fun lt!1878522 () Unit!128360)

(declare-fun Unit!128448 () Unit!128360)

(assert (=> b!4713972 (= lt!1878522 Unit!128448)))

(declare-fun b!4713973 () Bool)

(declare-fun res!1992830 () Bool)

(assert (=> b!4713973 (=> (not res!1992830) (not e!2940091))))

(assert (=> b!4713973 (= res!1992830 (forall!11519 (toList!5838 lt!1878133) lambda!213547))))

(assert (= (and d!1499995 c!805250) b!4713972))

(assert (= (and d!1499995 (not c!805250)) b!4713970))

(assert (= (and b!4713970 res!1992832) b!4713971))

(assert (= (or b!4713972 b!4713970) bm!329585))

(assert (= (or b!4713972 b!4713970) bm!329586))

(assert (= (or b!4713972 b!4713970) bm!329587))

(assert (= (and d!1499995 res!1992831) b!4713973))

(assert (= (and b!4713973 res!1992830) b!4713969))

(declare-fun m!5641135 () Bool)

(assert (=> b!4713973 m!5641135))

(declare-fun m!5641137 () Bool)

(assert (=> b!4713970 m!5641137))

(declare-fun m!5641139 () Bool)

(assert (=> b!4713970 m!5641139))

(declare-fun m!5641141 () Bool)

(assert (=> b!4713970 m!5641141))

(declare-fun m!5641143 () Bool)

(assert (=> b!4713970 m!5641143))

(assert (=> b!4713970 m!5641141))

(declare-fun m!5641147 () Bool)

(assert (=> b!4713970 m!5641147))

(declare-fun m!5641151 () Bool)

(assert (=> b!4713970 m!5641151))

(declare-fun m!5641153 () Bool)

(assert (=> b!4713970 m!5641153))

(assert (=> b!4713970 m!5641147))

(assert (=> b!4713970 m!5641137))

(declare-fun m!5641157 () Bool)

(assert (=> b!4713970 m!5641157))

(declare-fun m!5641161 () Bool)

(assert (=> b!4713970 m!5641161))

(declare-fun m!5641163 () Bool)

(assert (=> b!4713970 m!5641163))

(assert (=> b!4713971 m!5641141))

(declare-fun m!5641165 () Bool)

(assert (=> d!1499995 m!5641165))

(declare-fun m!5641167 () Bool)

(assert (=> d!1499995 m!5641167))

(declare-fun m!5641169 () Bool)

(assert (=> bm!329586 m!5641169))

(assert (=> bm!329587 m!5641169))

(declare-fun m!5641171 () Bool)

(assert (=> b!4713969 m!5641171))

(assert (=> bm!329585 m!5640867))

(assert (=> b!4713707 d!1499995))

(declare-fun d!1500001 () Bool)

(assert (=> d!1500001 (= (head!10178 newBucket!218) (h!59046 newBucket!218))))

(assert (=> b!4713707 d!1500001))

(declare-fun d!1500005 () Bool)

(assert (=> d!1500005 (= (eq!1101 (extractMap!2000 (Cons!52726 lt!1878121 (t!360094 (toList!5837 lm!2023)))) (+!2234 (extractMap!2000 (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023)))) (h!59046 oldBucket!34))) (= (content!9350 (toList!5838 (extractMap!2000 (Cons!52726 lt!1878121 (t!360094 (toList!5837 lm!2023)))))) (content!9350 (toList!5838 (+!2234 (extractMap!2000 (Cons!52726 (tuple2!54293 hash!405 lt!1878124) (t!360094 (toList!5837 lm!2023)))) (h!59046 oldBucket!34))))))))

(declare-fun bs!1103261 () Bool)

(assert (= bs!1103261 d!1500005))

(declare-fun m!5641177 () Bool)

(assert (=> bs!1103261 m!5641177))

(declare-fun m!5641179 () Bool)

(assert (=> bs!1103261 m!5641179))

(assert (=> b!4713707 d!1500005))

(declare-fun d!1500007 () Bool)

(assert (=> d!1500007 (eq!1101 (addToMapMapFromBucket!1404 (Cons!52725 lt!1878119 lt!1878127) lt!1878133) (+!2234 (addToMapMapFromBucket!1404 lt!1878127 lt!1878133) lt!1878119))))

(declare-fun lt!1878544 () Unit!128360)

(assert (=> d!1500007 (= lt!1878544 (choose!33172 lt!1878119 lt!1878127 lt!1878133))))

(assert (=> d!1500007 (noDuplicateKeys!1974 lt!1878127)))

(assert (=> d!1500007 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!350 lt!1878119 lt!1878127 lt!1878133) lt!1878544)))

(declare-fun bs!1103262 () Bool)

(assert (= bs!1103262 d!1500007))

(assert (=> bs!1103262 m!5640553))

(assert (=> bs!1103262 m!5640559))

(assert (=> bs!1103262 m!5640555))

(assert (=> bs!1103262 m!5640561))

(assert (=> bs!1103262 m!5641167))

(declare-fun m!5641193 () Bool)

(assert (=> bs!1103262 m!5641193))

(assert (=> bs!1103262 m!5640559))

(assert (=> bs!1103262 m!5640553))

(assert (=> bs!1103262 m!5640555))

(assert (=> b!4713707 d!1500007))

(declare-fun bs!1103269 () Bool)

(declare-fun d!1500011 () Bool)

(assert (= bs!1103269 (and d!1500011 start!479220)))

(declare-fun lambda!213550 () Int)

(assert (=> bs!1103269 (= lambda!213550 lambda!213433)))

(declare-fun bs!1103272 () Bool)

(assert (= bs!1103272 (and d!1500011 d!1499963)))

(assert (=> bs!1103272 (= lambda!213550 lambda!213527)))

(declare-fun bs!1103274 () Bool)

(assert (= bs!1103274 (and d!1500011 d!1499945)))

(assert (=> bs!1103274 (= lambda!213550 lambda!213518)))

(declare-fun bs!1103275 () Bool)

(assert (= bs!1103275 (and d!1500011 d!1499955)))

(assert (=> bs!1103275 (= lambda!213550 lambda!213522)))

(declare-fun bs!1103276 () Bool)

(assert (= bs!1103276 (and d!1500011 d!1499889)))

(assert (=> bs!1103276 (= lambda!213550 lambda!213436)))

(declare-fun bs!1103277 () Bool)

(assert (= bs!1103277 (and d!1500011 d!1499951)))

(assert (=> bs!1103277 (not (= lambda!213550 lambda!213521))))

(declare-fun lt!1878546 () ListMap!5201)

(assert (=> d!1500011 (invariantList!1486 (toList!5838 lt!1878546))))

(declare-fun e!2940095 () ListMap!5201)

(assert (=> d!1500011 (= lt!1878546 e!2940095)))

(declare-fun c!805253 () Bool)

(assert (=> d!1500011 (= c!805253 ((_ is Cons!52726) (Cons!52726 lt!1878121 (t!360094 (toList!5837 lm!2023)))))))

(assert (=> d!1500011 (forall!11517 (Cons!52726 lt!1878121 (t!360094 (toList!5837 lm!2023))) lambda!213550)))

(assert (=> d!1500011 (= (extractMap!2000 (Cons!52726 lt!1878121 (t!360094 (toList!5837 lm!2023)))) lt!1878546)))

(declare-fun b!4713980 () Bool)

(assert (=> b!4713980 (= e!2940095 (addToMapMapFromBucket!1404 (_2!30440 (h!59047 (Cons!52726 lt!1878121 (t!360094 (toList!5837 lm!2023))))) (extractMap!2000 (t!360094 (Cons!52726 lt!1878121 (t!360094 (toList!5837 lm!2023)))))))))

(declare-fun b!4713981 () Bool)

(assert (=> b!4713981 (= e!2940095 (ListMap!5202 Nil!52725))))

(assert (= (and d!1500011 c!805253) b!4713980))

(assert (= (and d!1500011 (not c!805253)) b!4713981))

(declare-fun m!5641203 () Bool)

(assert (=> d!1500011 m!5641203))

(declare-fun m!5641205 () Bool)

(assert (=> d!1500011 m!5641205))

(declare-fun m!5641207 () Bool)

(assert (=> b!4713980 m!5641207))

(assert (=> b!4713980 m!5641207))

(declare-fun m!5641209 () Bool)

(assert (=> b!4713980 m!5641209))

(assert (=> b!4713707 d!1500011))

(declare-fun d!1500015 () Bool)

(declare-fun e!2940099 () Bool)

(assert (=> d!1500015 e!2940099))

(declare-fun res!1992839 () Bool)

(assert (=> d!1500015 (=> (not res!1992839) (not e!2940099))))

(declare-fun lt!1878570 () ListMap!5201)

(assert (=> d!1500015 (= res!1992839 (contains!16047 lt!1878570 (_1!30439 lt!1878119)))))

(declare-fun lt!1878571 () List!52849)

(assert (=> d!1500015 (= lt!1878570 (ListMap!5202 lt!1878571))))

(declare-fun lt!1878568 () Unit!128360)

(declare-fun lt!1878569 () Unit!128360)

(assert (=> d!1500015 (= lt!1878568 lt!1878569)))

(assert (=> d!1500015 (= (getValueByKey!1918 lt!1878571 (_1!30439 lt!1878119)) (Some!12299 (_2!30439 lt!1878119)))))

(assert (=> d!1500015 (= lt!1878569 (lemmaContainsTupThenGetReturnValue!1068 lt!1878571 (_1!30439 lt!1878119) (_2!30439 lt!1878119)))))

(assert (=> d!1500015 (= lt!1878571 (insertNoDuplicatedKeys!576 (toList!5838 (addToMapMapFromBucket!1404 lt!1878127 lt!1878133)) (_1!30439 lt!1878119) (_2!30439 lt!1878119)))))

(assert (=> d!1500015 (= (+!2234 (addToMapMapFromBucket!1404 lt!1878127 lt!1878133) lt!1878119) lt!1878570)))

(declare-fun b!4713987 () Bool)

(declare-fun res!1992838 () Bool)

(assert (=> b!4713987 (=> (not res!1992838) (not e!2940099))))

(assert (=> b!4713987 (= res!1992838 (= (getValueByKey!1918 (toList!5838 lt!1878570) (_1!30439 lt!1878119)) (Some!12299 (_2!30439 lt!1878119))))))

(declare-fun b!4713988 () Bool)

(assert (=> b!4713988 (= e!2940099 (contains!16051 (toList!5838 lt!1878570) lt!1878119))))

(assert (= (and d!1500015 res!1992839) b!4713987))

(assert (= (and b!4713987 res!1992838) b!4713988))

(declare-fun m!5641211 () Bool)

(assert (=> d!1500015 m!5641211))

(declare-fun m!5641213 () Bool)

(assert (=> d!1500015 m!5641213))

(declare-fun m!5641215 () Bool)

(assert (=> d!1500015 m!5641215))

(declare-fun m!5641217 () Bool)

(assert (=> d!1500015 m!5641217))

(declare-fun m!5641219 () Bool)

(assert (=> b!4713987 m!5641219))

(declare-fun m!5641221 () Bool)

(assert (=> b!4713988 m!5641221))

(assert (=> b!4713707 d!1500015))

(declare-fun bs!1103287 () Bool)

(declare-fun b!4713992 () Bool)

(assert (= bs!1103287 (and b!4713992 b!4713970)))

(declare-fun lambda!213552 () Int)

(assert (=> bs!1103287 (= lambda!213552 lambda!213543)))

(declare-fun bs!1103288 () Bool)

(assert (= bs!1103288 (and b!4713992 d!1499893)))

(assert (=> bs!1103288 (= (= lt!1878133 lt!1878365) (= lambda!213552 lambda!213516))))

(declare-fun bs!1103290 () Bool)

(assert (= bs!1103290 (and b!4713992 d!1499995)))

(assert (=> bs!1103290 (= (= lt!1878133 lt!1878537) (= lambda!213552 lambda!213547))))

(declare-fun bs!1103292 () Bool)

(assert (= bs!1103292 (and b!4713992 b!4713890)))

(assert (=> bs!1103292 (= lambda!213552 lambda!213514)))

(declare-fun bs!1103294 () Bool)

(assert (= bs!1103294 (and b!4713992 b!4713972)))

(assert (=> bs!1103294 (= lambda!213552 lambda!213541)))

(assert (=> bs!1103287 (= (= lt!1878133 lt!1878527) (= lambda!213552 lambda!213545))))

(declare-fun bs!1103297 () Bool)

(assert (= bs!1103297 (and b!4713992 d!1499957)))

(assert (=> bs!1103297 (= (= lt!1878133 lt!1878405) (= lambda!213552 lambda!213526))))

(assert (=> bs!1103292 (= (= lt!1878133 lt!1878355) (= lambda!213552 lambda!213515))))

(declare-fun bs!1103300 () Bool)

(assert (= bs!1103300 (and b!4713992 b!4713892)))

(assert (=> bs!1103300 (= lambda!213552 lambda!213513)))

(declare-fun bs!1103302 () Bool)

(assert (= bs!1103302 (and b!4713992 b!4713925)))

(assert (=> bs!1103302 (= lambda!213552 lambda!213523)))

(declare-fun bs!1103304 () Bool)

(assert (= bs!1103304 (and b!4713992 b!4713941)))

(assert (=> bs!1103304 (= lambda!213552 lambda!213530)))

(declare-fun bs!1103305 () Bool)

(assert (= bs!1103305 (and b!4713992 b!4713923)))

(assert (=> bs!1103305 (= lambda!213552 lambda!213524)))

(assert (=> bs!1103305 (= (= lt!1878133 lt!1878395) (= lambda!213552 lambda!213525))))

(assert (=> bs!1103304 (= (= lt!1878133 lt!1878429) (= lambda!213552 lambda!213531))))

(declare-fun bs!1103307 () Bool)

(assert (= bs!1103307 (and b!4713992 d!1499971)))

(assert (=> bs!1103307 (= (= lt!1878133 lt!1878439) (= lambda!213552 lambda!213532))))

(declare-fun bs!1103308 () Bool)

(assert (= bs!1103308 (and b!4713992 b!4713943)))

(assert (=> bs!1103308 (= lambda!213552 lambda!213529)))

(assert (=> b!4713992 true))

(declare-fun bs!1103309 () Bool)

(declare-fun b!4713990 () Bool)

(assert (= bs!1103309 (and b!4713990 b!4713970)))

(declare-fun lambda!213555 () Int)

(assert (=> bs!1103309 (= lambda!213555 lambda!213543)))

(declare-fun bs!1103310 () Bool)

(assert (= bs!1103310 (and b!4713990 d!1499893)))

(assert (=> bs!1103310 (= (= lt!1878133 lt!1878365) (= lambda!213555 lambda!213516))))

(declare-fun bs!1103311 () Bool)

(assert (= bs!1103311 (and b!4713990 d!1499995)))

(assert (=> bs!1103311 (= (= lt!1878133 lt!1878537) (= lambda!213555 lambda!213547))))

(declare-fun bs!1103312 () Bool)

(assert (= bs!1103312 (and b!4713990 b!4713890)))

(assert (=> bs!1103312 (= lambda!213555 lambda!213514)))

(declare-fun bs!1103313 () Bool)

(assert (= bs!1103313 (and b!4713990 b!4713972)))

(assert (=> bs!1103313 (= lambda!213555 lambda!213541)))

(assert (=> bs!1103309 (= (= lt!1878133 lt!1878527) (= lambda!213555 lambda!213545))))

(declare-fun bs!1103314 () Bool)

(assert (= bs!1103314 (and b!4713990 d!1499957)))

(assert (=> bs!1103314 (= (= lt!1878133 lt!1878405) (= lambda!213555 lambda!213526))))

(assert (=> bs!1103312 (= (= lt!1878133 lt!1878355) (= lambda!213555 lambda!213515))))

(declare-fun bs!1103315 () Bool)

(assert (= bs!1103315 (and b!4713990 b!4713925)))

(assert (=> bs!1103315 (= lambda!213555 lambda!213523)))

(declare-fun bs!1103316 () Bool)

(assert (= bs!1103316 (and b!4713990 b!4713941)))

(assert (=> bs!1103316 (= lambda!213555 lambda!213530)))

(declare-fun bs!1103317 () Bool)

(assert (= bs!1103317 (and b!4713990 b!4713923)))

(assert (=> bs!1103317 (= lambda!213555 lambda!213524)))

(assert (=> bs!1103317 (= (= lt!1878133 lt!1878395) (= lambda!213555 lambda!213525))))

(assert (=> bs!1103316 (= (= lt!1878133 lt!1878429) (= lambda!213555 lambda!213531))))

(declare-fun bs!1103318 () Bool)

(assert (= bs!1103318 (and b!4713990 d!1499971)))

(assert (=> bs!1103318 (= (= lt!1878133 lt!1878439) (= lambda!213555 lambda!213532))))

(declare-fun bs!1103319 () Bool)

(assert (= bs!1103319 (and b!4713990 b!4713943)))

(assert (=> bs!1103319 (= lambda!213555 lambda!213529)))

(declare-fun bs!1103320 () Bool)

(assert (= bs!1103320 (and b!4713990 b!4713992)))

(assert (=> bs!1103320 (= lambda!213555 lambda!213552)))

(declare-fun bs!1103321 () Bool)

(assert (= bs!1103321 (and b!4713990 b!4713892)))

(assert (=> bs!1103321 (= lambda!213555 lambda!213513)))

(assert (=> b!4713990 true))

(declare-fun lambda!213556 () Int)

(declare-fun lt!1878581 () ListMap!5201)

(assert (=> bs!1103309 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213543))))

(assert (=> bs!1103311 (= (= lt!1878581 lt!1878537) (= lambda!213556 lambda!213547))))

(assert (=> bs!1103312 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213514))))

(assert (=> bs!1103313 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213541))))

(assert (=> bs!1103309 (= (= lt!1878581 lt!1878527) (= lambda!213556 lambda!213545))))

(assert (=> bs!1103314 (= (= lt!1878581 lt!1878405) (= lambda!213556 lambda!213526))))

(assert (=> bs!1103312 (= (= lt!1878581 lt!1878355) (= lambda!213556 lambda!213515))))

(assert (=> bs!1103315 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213523))))

(assert (=> bs!1103316 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213530))))

(assert (=> bs!1103310 (= (= lt!1878581 lt!1878365) (= lambda!213556 lambda!213516))))

(assert (=> b!4713990 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213555))))

(assert (=> bs!1103317 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213524))))

(assert (=> bs!1103317 (= (= lt!1878581 lt!1878395) (= lambda!213556 lambda!213525))))

(assert (=> bs!1103316 (= (= lt!1878581 lt!1878429) (= lambda!213556 lambda!213531))))

(assert (=> bs!1103318 (= (= lt!1878581 lt!1878439) (= lambda!213556 lambda!213532))))

(assert (=> bs!1103319 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213529))))

(assert (=> bs!1103320 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213552))))

(assert (=> bs!1103321 (= (= lt!1878581 lt!1878133) (= lambda!213556 lambda!213513))))

(assert (=> b!4713990 true))

(declare-fun bs!1103333 () Bool)

(declare-fun d!1500017 () Bool)

(assert (= bs!1103333 (and d!1500017 b!4713970)))

(declare-fun lambda!213558 () Int)

(declare-fun lt!1878591 () ListMap!5201)

(assert (=> bs!1103333 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213543))))

(declare-fun bs!1103334 () Bool)

(assert (= bs!1103334 (and d!1500017 b!4713890)))

(assert (=> bs!1103334 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213514))))

(declare-fun bs!1103335 () Bool)

(assert (= bs!1103335 (and d!1500017 b!4713972)))

(assert (=> bs!1103335 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213541))))

(assert (=> bs!1103333 (= (= lt!1878591 lt!1878527) (= lambda!213558 lambda!213545))))

(declare-fun bs!1103336 () Bool)

(assert (= bs!1103336 (and d!1500017 d!1499957)))

(assert (=> bs!1103336 (= (= lt!1878591 lt!1878405) (= lambda!213558 lambda!213526))))

(assert (=> bs!1103334 (= (= lt!1878591 lt!1878355) (= lambda!213558 lambda!213515))))

(declare-fun bs!1103337 () Bool)

(assert (= bs!1103337 (and d!1500017 b!4713925)))

(assert (=> bs!1103337 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213523))))

(declare-fun bs!1103338 () Bool)

(assert (= bs!1103338 (and d!1500017 b!4713941)))

(assert (=> bs!1103338 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213530))))

(declare-fun bs!1103339 () Bool)

(assert (= bs!1103339 (and d!1500017 d!1499893)))

(assert (=> bs!1103339 (= (= lt!1878591 lt!1878365) (= lambda!213558 lambda!213516))))

(declare-fun bs!1103340 () Bool)

(assert (= bs!1103340 (and d!1500017 b!4713990)))

(assert (=> bs!1103340 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213555))))

(declare-fun bs!1103341 () Bool)

(assert (= bs!1103341 (and d!1500017 d!1499995)))

(assert (=> bs!1103341 (= (= lt!1878591 lt!1878537) (= lambda!213558 lambda!213547))))

(assert (=> bs!1103340 (= (= lt!1878591 lt!1878581) (= lambda!213558 lambda!213556))))

(declare-fun bs!1103342 () Bool)

(assert (= bs!1103342 (and d!1500017 b!4713923)))

(assert (=> bs!1103342 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213524))))

(assert (=> bs!1103342 (= (= lt!1878591 lt!1878395) (= lambda!213558 lambda!213525))))

(assert (=> bs!1103338 (= (= lt!1878591 lt!1878429) (= lambda!213558 lambda!213531))))

(declare-fun bs!1103343 () Bool)

(assert (= bs!1103343 (and d!1500017 d!1499971)))

(assert (=> bs!1103343 (= (= lt!1878591 lt!1878439) (= lambda!213558 lambda!213532))))

(declare-fun bs!1103344 () Bool)

(assert (= bs!1103344 (and d!1500017 b!4713943)))

(assert (=> bs!1103344 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213529))))

(declare-fun bs!1103345 () Bool)

(assert (= bs!1103345 (and d!1500017 b!4713992)))

(assert (=> bs!1103345 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213552))))

(declare-fun bs!1103346 () Bool)

(assert (= bs!1103346 (and d!1500017 b!4713892)))

(assert (=> bs!1103346 (= (= lt!1878591 lt!1878133) (= lambda!213558 lambda!213513))))

(assert (=> d!1500017 true))

(declare-fun bm!329591 () Bool)

(declare-fun call!329596 () Unit!128360)

(assert (=> bm!329591 (= call!329596 (lemmaContainsAllItsOwnKeys!774 lt!1878133))))

(declare-fun lt!1878585 () ListMap!5201)

(declare-fun c!805255 () Bool)

(declare-fun bm!329592 () Bool)

(declare-fun call!329598 () Bool)

(assert (=> bm!329592 (= call!329598 (forall!11519 (ite c!805255 (toList!5838 lt!1878133) (toList!5838 lt!1878585)) (ite c!805255 lambda!213552 lambda!213556)))))

(declare-fun e!2940102 () Bool)

(assert (=> d!1500017 e!2940102))

(declare-fun res!1992841 () Bool)

(assert (=> d!1500017 (=> (not res!1992841) (not e!2940102))))

(assert (=> d!1500017 (= res!1992841 (forall!11519 (Cons!52725 lt!1878135 lt!1878124) lambda!213558))))

(declare-fun e!2940100 () ListMap!5201)

(assert (=> d!1500017 (= lt!1878591 e!2940100)))

(assert (=> d!1500017 (= c!805255 ((_ is Nil!52725) (Cons!52725 lt!1878135 lt!1878124)))))

(assert (=> d!1500017 (noDuplicateKeys!1974 (Cons!52725 lt!1878135 lt!1878124))))

(assert (=> d!1500017 (= (addToMapMapFromBucket!1404 (Cons!52725 lt!1878135 lt!1878124) lt!1878133) lt!1878591)))

(declare-fun call!329597 () Bool)

(declare-fun bm!329593 () Bool)

(assert (=> bm!329593 (= call!329597 (forall!11519 (ite c!805255 (toList!5838 lt!1878133) (toList!5838 lt!1878585)) (ite c!805255 lambda!213552 lambda!213556)))))

(declare-fun b!4713989 () Bool)

(assert (=> b!4713989 (= e!2940102 (invariantList!1486 (toList!5838 lt!1878591)))))

(assert (=> b!4713990 (= e!2940100 lt!1878581)))

(assert (=> b!4713990 (= lt!1878585 (+!2234 lt!1878133 (h!59046 (Cons!52725 lt!1878135 lt!1878124))))))

(assert (=> b!4713990 (= lt!1878581 (addToMapMapFromBucket!1404 (t!360093 (Cons!52725 lt!1878135 lt!1878124)) (+!2234 lt!1878133 (h!59046 (Cons!52725 lt!1878135 lt!1878124)))))))

(declare-fun lt!1878583 () Unit!128360)

(assert (=> b!4713990 (= lt!1878583 call!329596)))

(assert (=> b!4713990 (forall!11519 (toList!5838 lt!1878133) lambda!213555)))

(declare-fun lt!1878589 () Unit!128360)

(assert (=> b!4713990 (= lt!1878589 lt!1878583)))

(assert (=> b!4713990 call!329598))

(declare-fun lt!1878590 () Unit!128360)

(declare-fun Unit!128467 () Unit!128360)

(assert (=> b!4713990 (= lt!1878590 Unit!128467)))

(assert (=> b!4713990 (forall!11519 (t!360093 (Cons!52725 lt!1878135 lt!1878124)) lambda!213556)))

(declare-fun lt!1878579 () Unit!128360)

(declare-fun Unit!128469 () Unit!128360)

(assert (=> b!4713990 (= lt!1878579 Unit!128469)))

(declare-fun lt!1878582 () Unit!128360)

(declare-fun Unit!128470 () Unit!128360)

(assert (=> b!4713990 (= lt!1878582 Unit!128470)))

(declare-fun lt!1878578 () Unit!128360)

(assert (=> b!4713990 (= lt!1878578 (forallContained!3588 (toList!5838 lt!1878585) lambda!213556 (h!59046 (Cons!52725 lt!1878135 lt!1878124))))))

(assert (=> b!4713990 (contains!16047 lt!1878585 (_1!30439 (h!59046 (Cons!52725 lt!1878135 lt!1878124))))))

(declare-fun lt!1878573 () Unit!128360)

(declare-fun Unit!128472 () Unit!128360)

(assert (=> b!4713990 (= lt!1878573 Unit!128472)))

(assert (=> b!4713990 (contains!16047 lt!1878581 (_1!30439 (h!59046 (Cons!52725 lt!1878135 lt!1878124))))))

(declare-fun lt!1878586 () Unit!128360)

(declare-fun Unit!128474 () Unit!128360)

(assert (=> b!4713990 (= lt!1878586 Unit!128474)))

(assert (=> b!4713990 (forall!11519 (Cons!52725 lt!1878135 lt!1878124) lambda!213556)))

(declare-fun lt!1878572 () Unit!128360)

(declare-fun Unit!128475 () Unit!128360)

(assert (=> b!4713990 (= lt!1878572 Unit!128475)))

(assert (=> b!4713990 call!329597))

(declare-fun lt!1878584 () Unit!128360)

(declare-fun Unit!128476 () Unit!128360)

(assert (=> b!4713990 (= lt!1878584 Unit!128476)))

(declare-fun lt!1878575 () Unit!128360)

(declare-fun Unit!128477 () Unit!128360)

(assert (=> b!4713990 (= lt!1878575 Unit!128477)))

(declare-fun lt!1878577 () Unit!128360)

(assert (=> b!4713990 (= lt!1878577 (addForallContainsKeyThenBeforeAdding!773 lt!1878133 lt!1878581 (_1!30439 (h!59046 (Cons!52725 lt!1878135 lt!1878124))) (_2!30439 (h!59046 (Cons!52725 lt!1878135 lt!1878124)))))))

(assert (=> b!4713990 (forall!11519 (toList!5838 lt!1878133) lambda!213556)))

(declare-fun lt!1878588 () Unit!128360)

(assert (=> b!4713990 (= lt!1878588 lt!1878577)))

(assert (=> b!4713990 (forall!11519 (toList!5838 lt!1878133) lambda!213556)))

(declare-fun lt!1878587 () Unit!128360)

(declare-fun Unit!128478 () Unit!128360)

(assert (=> b!4713990 (= lt!1878587 Unit!128478)))

(declare-fun res!1992842 () Bool)

(assert (=> b!4713990 (= res!1992842 (forall!11519 (Cons!52725 lt!1878135 lt!1878124) lambda!213556))))

(declare-fun e!2940101 () Bool)

(assert (=> b!4713990 (=> (not res!1992842) (not e!2940101))))

(assert (=> b!4713990 e!2940101))

(declare-fun lt!1878592 () Unit!128360)

(declare-fun Unit!128479 () Unit!128360)

(assert (=> b!4713990 (= lt!1878592 Unit!128479)))

(declare-fun b!4713991 () Bool)

(assert (=> b!4713991 (= e!2940101 (forall!11519 (toList!5838 lt!1878133) lambda!213556))))

(assert (=> b!4713992 (= e!2940100 lt!1878133)))

(declare-fun lt!1878574 () Unit!128360)

(assert (=> b!4713992 (= lt!1878574 call!329596)))

(assert (=> b!4713992 call!329597))

(declare-fun lt!1878580 () Unit!128360)

(assert (=> b!4713992 (= lt!1878580 lt!1878574)))

(assert (=> b!4713992 call!329598))

(declare-fun lt!1878576 () Unit!128360)

(declare-fun Unit!128480 () Unit!128360)

(assert (=> b!4713992 (= lt!1878576 Unit!128480)))

(declare-fun b!4713993 () Bool)

(declare-fun res!1992840 () Bool)

(assert (=> b!4713993 (=> (not res!1992840) (not e!2940102))))

(assert (=> b!4713993 (= res!1992840 (forall!11519 (toList!5838 lt!1878133) lambda!213558))))

(assert (= (and d!1500017 c!805255) b!4713992))

(assert (= (and d!1500017 (not c!805255)) b!4713990))

(assert (= (and b!4713990 res!1992842) b!4713991))

(assert (= (or b!4713992 b!4713990) bm!329591))

(assert (= (or b!4713992 b!4713990) bm!329592))

(assert (= (or b!4713992 b!4713990) bm!329593))

(assert (= (and d!1500017 res!1992841) b!4713993))

(assert (= (and b!4713993 res!1992840) b!4713989))

(declare-fun m!5641253 () Bool)

(assert (=> b!4713993 m!5641253))

(declare-fun m!5641255 () Bool)

(assert (=> b!4713990 m!5641255))

(declare-fun m!5641257 () Bool)

(assert (=> b!4713990 m!5641257))

(declare-fun m!5641259 () Bool)

(assert (=> b!4713990 m!5641259))

(declare-fun m!5641261 () Bool)

(assert (=> b!4713990 m!5641261))

(assert (=> b!4713990 m!5641259))

(declare-fun m!5641263 () Bool)

(assert (=> b!4713990 m!5641263))

(declare-fun m!5641265 () Bool)

(assert (=> b!4713990 m!5641265))

(declare-fun m!5641267 () Bool)

(assert (=> b!4713990 m!5641267))

(assert (=> b!4713990 m!5641263))

(assert (=> b!4713990 m!5641255))

(declare-fun m!5641269 () Bool)

(assert (=> b!4713990 m!5641269))

(declare-fun m!5641271 () Bool)

(assert (=> b!4713990 m!5641271))

(declare-fun m!5641273 () Bool)

(assert (=> b!4713990 m!5641273))

(assert (=> b!4713991 m!5641259))

(declare-fun m!5641275 () Bool)

(assert (=> d!1500017 m!5641275))

(declare-fun m!5641277 () Bool)

(assert (=> d!1500017 m!5641277))

(declare-fun m!5641279 () Bool)

(assert (=> bm!329592 m!5641279))

(assert (=> bm!329593 m!5641279))

(declare-fun m!5641281 () Bool)

(assert (=> b!4713989 m!5641281))

(assert (=> bm!329591 m!5640867))

(assert (=> b!4713707 d!1500017))

(declare-fun bs!1103402 () Bool)

(declare-fun d!1500021 () Bool)

(assert (= bs!1103402 (and d!1500021 start!479220)))

(declare-fun lambda!213568 () Int)

(assert (=> bs!1103402 (= lambda!213568 lambda!213433)))

(declare-fun bs!1103403 () Bool)

(assert (= bs!1103403 (and d!1500021 d!1499963)))

(assert (=> bs!1103403 (= lambda!213568 lambda!213527)))

(declare-fun bs!1103404 () Bool)

(assert (= bs!1103404 (and d!1500021 d!1499955)))

(assert (=> bs!1103404 (= lambda!213568 lambda!213522)))

(declare-fun bs!1103405 () Bool)

(assert (= bs!1103405 (and d!1500021 d!1499889)))

(assert (=> bs!1103405 (= lambda!213568 lambda!213436)))

(declare-fun bs!1103406 () Bool)

(assert (= bs!1103406 (and d!1500021 d!1499951)))

(assert (=> bs!1103406 (not (= lambda!213568 lambda!213521))))

(declare-fun bs!1103407 () Bool)

(assert (= bs!1103407 (and d!1500021 d!1499945)))

(assert (=> bs!1103407 (= lambda!213568 lambda!213518)))

(declare-fun bs!1103408 () Bool)

(assert (= bs!1103408 (and d!1500021 d!1500011)))

(assert (=> bs!1103408 (= lambda!213568 lambda!213550)))

(assert (=> d!1500021 (contains!16047 (extractMap!2000 (toList!5837 (ListLongMap!4368 lt!1878122))) key!4653)))

(declare-fun lt!1878620 () Unit!128360)

(declare-fun choose!33173 (ListLongMap!4367 K!14085 Hashable!6343) Unit!128360)

(assert (=> d!1500021 (= lt!1878620 (choose!33173 (ListLongMap!4368 lt!1878122) key!4653 hashF!1323))))

(assert (=> d!1500021 (forall!11517 (toList!5837 (ListLongMap!4368 lt!1878122)) lambda!213568)))

(assert (=> d!1500021 (= (lemmaListContainsThenExtractedMapContains!520 (ListLongMap!4368 lt!1878122) key!4653 hashF!1323) lt!1878620)))

(declare-fun bs!1103409 () Bool)

(assert (= bs!1103409 d!1500021))

(declare-fun m!5641329 () Bool)

(assert (=> bs!1103409 m!5641329))

(assert (=> bs!1103409 m!5641329))

(declare-fun m!5641331 () Bool)

(assert (=> bs!1103409 m!5641331))

(declare-fun m!5641333 () Bool)

(assert (=> bs!1103409 m!5641333))

(declare-fun m!5641335 () Bool)

(assert (=> bs!1103409 m!5641335))

(assert (=> b!4713707 d!1500021))

(declare-fun b!4714024 () Bool)

(declare-fun e!2940119 () List!52849)

(declare-fun e!2940120 () List!52849)

(assert (=> b!4714024 (= e!2940119 e!2940120)))

(declare-fun c!805263 () Bool)

(assert (=> b!4714024 (= c!805263 ((_ is Cons!52725) oldBucket!34))))

(declare-fun b!4714026 () Bool)

(assert (=> b!4714026 (= e!2940120 Nil!52725)))

(declare-fun b!4714025 () Bool)

(assert (=> b!4714025 (= e!2940120 (Cons!52725 (h!59046 oldBucket!34) (removePairForKey!1569 (t!360093 oldBucket!34) key!4653)))))

(declare-fun d!1500029 () Bool)

(declare-fun lt!1878624 () List!52849)

(assert (=> d!1500029 (not (containsKey!3295 lt!1878624 key!4653))))

(assert (=> d!1500029 (= lt!1878624 e!2940119)))

(declare-fun c!805264 () Bool)

(assert (=> d!1500029 (= c!805264 (and ((_ is Cons!52725) oldBucket!34) (= (_1!30439 (h!59046 oldBucket!34)) key!4653)))))

(assert (=> d!1500029 (noDuplicateKeys!1974 oldBucket!34)))

(assert (=> d!1500029 (= (removePairForKey!1569 oldBucket!34 key!4653) lt!1878624)))

(declare-fun b!4714023 () Bool)

(assert (=> b!4714023 (= e!2940119 (t!360093 oldBucket!34))))

(assert (= (and d!1500029 c!805264) b!4714023))

(assert (= (and d!1500029 (not c!805264)) b!4714024))

(assert (= (and b!4714024 c!805263) b!4714025))

(assert (= (and b!4714024 (not c!805263)) b!4714026))

(assert (=> b!4714025 m!5640643))

(declare-fun m!5641349 () Bool)

(assert (=> d!1500029 m!5641349))

(assert (=> d!1500029 m!5640601))

(assert (=> b!4713709 d!1500029))

(declare-fun b!4714028 () Bool)

(declare-fun e!2940121 () List!52849)

(declare-fun e!2940122 () List!52849)

(assert (=> b!4714028 (= e!2940121 e!2940122)))

(declare-fun c!805265 () Bool)

(assert (=> b!4714028 (= c!805265 ((_ is Cons!52725) (t!360093 oldBucket!34)))))

(declare-fun b!4714030 () Bool)

(assert (=> b!4714030 (= e!2940122 Nil!52725)))

(declare-fun b!4714029 () Bool)

(assert (=> b!4714029 (= e!2940122 (Cons!52725 (h!59046 (t!360093 oldBucket!34)) (removePairForKey!1569 (t!360093 (t!360093 oldBucket!34)) key!4653)))))

(declare-fun d!1500039 () Bool)

(declare-fun lt!1878625 () List!52849)

(assert (=> d!1500039 (not (containsKey!3295 lt!1878625 key!4653))))

(assert (=> d!1500039 (= lt!1878625 e!2940121)))

(declare-fun c!805266 () Bool)

(assert (=> d!1500039 (= c!805266 (and ((_ is Cons!52725) (t!360093 oldBucket!34)) (= (_1!30439 (h!59046 (t!360093 oldBucket!34))) key!4653)))))

(assert (=> d!1500039 (noDuplicateKeys!1974 (t!360093 oldBucket!34))))

(assert (=> d!1500039 (= (removePairForKey!1569 (t!360093 oldBucket!34) key!4653) lt!1878625)))

(declare-fun b!4714027 () Bool)

(assert (=> b!4714027 (= e!2940121 (t!360093 (t!360093 oldBucket!34)))))

(assert (= (and d!1500039 c!805266) b!4714027))

(assert (= (and d!1500039 (not c!805266)) b!4714028))

(assert (= (and b!4714028 c!805265) b!4714029))

(assert (= (and b!4714028 (not c!805265)) b!4714030))

(declare-fun m!5641351 () Bool)

(assert (=> b!4714029 m!5641351))

(declare-fun m!5641353 () Bool)

(assert (=> d!1500039 m!5641353))

(declare-fun m!5641355 () Bool)

(assert (=> d!1500039 m!5641355))

(assert (=> b!4713698 d!1500039))

(declare-fun d!1500041 () Bool)

(declare-fun res!1992858 () Bool)

(declare-fun e!2940134 () Bool)

(assert (=> d!1500041 (=> res!1992858 e!2940134)))

(assert (=> d!1500041 (= res!1992858 ((_ is Nil!52726) (toList!5837 lm!2023)))))

(assert (=> d!1500041 (= (forall!11517 (toList!5837 lm!2023) lambda!213433) e!2940134)))

(declare-fun b!4714046 () Bool)

(declare-fun e!2940135 () Bool)

(assert (=> b!4714046 (= e!2940134 e!2940135)))

(declare-fun res!1992859 () Bool)

(assert (=> b!4714046 (=> (not res!1992859) (not e!2940135))))

(declare-fun dynLambda!21789 (Int tuple2!54292) Bool)

(assert (=> b!4714046 (= res!1992859 (dynLambda!21789 lambda!213433 (h!59047 (toList!5837 lm!2023))))))

(declare-fun b!4714047 () Bool)

(assert (=> b!4714047 (= e!2940135 (forall!11517 (t!360094 (toList!5837 lm!2023)) lambda!213433))))

(assert (= (and d!1500041 (not res!1992858)) b!4714046))

(assert (= (and b!4714046 res!1992859) b!4714047))

(declare-fun b_lambda!177733 () Bool)

(assert (=> (not b_lambda!177733) (not b!4714046)))

(declare-fun m!5641359 () Bool)

(assert (=> b!4714046 m!5641359))

(declare-fun m!5641361 () Bool)

(assert (=> b!4714047 m!5641361))

(assert (=> start!479220 d!1500041))

(declare-fun d!1500047 () Bool)

(declare-fun isStrictlySorted!725 (List!52850) Bool)

(assert (=> d!1500047 (= (inv!67959 lm!2023) (isStrictlySorted!725 (toList!5837 lm!2023)))))

(declare-fun bs!1103430 () Bool)

(assert (= bs!1103430 d!1500047))

(declare-fun m!5641363 () Bool)

(assert (=> bs!1103430 m!5641363))

(assert (=> start!479220 d!1500047))

(declare-fun d!1500049 () Bool)

(declare-fun res!1992864 () Bool)

(declare-fun e!2940140 () Bool)

(assert (=> d!1500049 (=> res!1992864 e!2940140)))

(assert (=> d!1500049 (= res!1992864 (not ((_ is Cons!52725) oldBucket!34)))))

(assert (=> d!1500049 (= (noDuplicateKeys!1974 oldBucket!34) e!2940140)))

(declare-fun b!4714052 () Bool)

(declare-fun e!2940141 () Bool)

(assert (=> b!4714052 (= e!2940140 e!2940141)))

(declare-fun res!1992865 () Bool)

(assert (=> b!4714052 (=> (not res!1992865) (not e!2940141))))

(assert (=> b!4714052 (= res!1992865 (not (containsKey!3295 (t!360093 oldBucket!34) (_1!30439 (h!59046 oldBucket!34)))))))

(declare-fun b!4714053 () Bool)

(assert (=> b!4714053 (= e!2940141 (noDuplicateKeys!1974 (t!360093 oldBucket!34)))))

(assert (= (and d!1500049 (not res!1992864)) b!4714052))

(assert (= (and b!4714052 res!1992865) b!4714053))

(declare-fun m!5641365 () Bool)

(assert (=> b!4714052 m!5641365))

(assert (=> b!4714053 m!5641355))

(assert (=> b!4713708 d!1500049))

(declare-fun b!4714070 () Bool)

(declare-fun e!2940154 () Bool)

(declare-fun e!2940156 () Bool)

(assert (=> b!4714070 (= e!2940154 e!2940156)))

(declare-fun res!1992874 () Bool)

(assert (=> b!4714070 (=> (not res!1992874) (not e!2940156))))

(declare-fun lt!1878628 () Option!12298)

(assert (=> b!4714070 (= res!1992874 (isDefined!9552 lt!1878628))))

(declare-fun b!4714071 () Bool)

(declare-fun get!17679 (Option!12298) tuple2!54290)

(assert (=> b!4714071 (= e!2940156 (contains!16051 lt!1878126 (get!17679 lt!1878628)))))

(declare-fun b!4714072 () Bool)

(declare-fun e!2940153 () Option!12298)

(assert (=> b!4714072 (= e!2940153 (getPair!540 (t!360093 lt!1878126) key!4653))))

(declare-fun b!4714073 () Bool)

(declare-fun e!2940152 () Bool)

(assert (=> b!4714073 (= e!2940152 (not (containsKey!3295 lt!1878126 key!4653)))))

(declare-fun b!4714074 () Bool)

(declare-fun e!2940155 () Option!12298)

(assert (=> b!4714074 (= e!2940155 (Some!12297 (h!59046 lt!1878126)))))

(declare-fun b!4714075 () Bool)

(declare-fun res!1992876 () Bool)

(assert (=> b!4714075 (=> (not res!1992876) (not e!2940156))))

(assert (=> b!4714075 (= res!1992876 (= (_1!30439 (get!17679 lt!1878628)) key!4653))))

(declare-fun b!4714076 () Bool)

(assert (=> b!4714076 (= e!2940153 None!12297)))

(declare-fun d!1500051 () Bool)

(assert (=> d!1500051 e!2940154))

(declare-fun res!1992877 () Bool)

(assert (=> d!1500051 (=> res!1992877 e!2940154)))

(assert (=> d!1500051 (= res!1992877 e!2940152)))

(declare-fun res!1992875 () Bool)

(assert (=> d!1500051 (=> (not res!1992875) (not e!2940152))))

(declare-fun isEmpty!29157 (Option!12298) Bool)

(assert (=> d!1500051 (= res!1992875 (isEmpty!29157 lt!1878628))))

(assert (=> d!1500051 (= lt!1878628 e!2940155)))

(declare-fun c!805272 () Bool)

(assert (=> d!1500051 (= c!805272 (and ((_ is Cons!52725) lt!1878126) (= (_1!30439 (h!59046 lt!1878126)) key!4653)))))

(assert (=> d!1500051 (noDuplicateKeys!1974 lt!1878126)))

(assert (=> d!1500051 (= (getPair!540 lt!1878126 key!4653) lt!1878628)))

(declare-fun b!4714077 () Bool)

(assert (=> b!4714077 (= e!2940155 e!2940153)))

(declare-fun c!805271 () Bool)

(assert (=> b!4714077 (= c!805271 ((_ is Cons!52725) lt!1878126))))

(assert (= (and d!1500051 c!805272) b!4714074))

(assert (= (and d!1500051 (not c!805272)) b!4714077))

(assert (= (and b!4714077 c!805271) b!4714072))

(assert (= (and b!4714077 (not c!805271)) b!4714076))

(assert (= (and d!1500051 res!1992875) b!4714073))

(assert (= (and d!1500051 (not res!1992877)) b!4714070))

(assert (= (and b!4714070 res!1992874) b!4714075))

(assert (= (and b!4714075 res!1992876) b!4714071))

(declare-fun m!5641367 () Bool)

(assert (=> d!1500051 m!5641367))

(declare-fun m!5641369 () Bool)

(assert (=> d!1500051 m!5641369))

(declare-fun m!5641371 () Bool)

(assert (=> b!4714073 m!5641371))

(declare-fun m!5641373 () Bool)

(assert (=> b!4714075 m!5641373))

(assert (=> b!4714071 m!5641373))

(assert (=> b!4714071 m!5641373))

(declare-fun m!5641375 () Bool)

(assert (=> b!4714071 m!5641375))

(declare-fun m!5641377 () Bool)

(assert (=> b!4714070 m!5641377))

(declare-fun m!5641379 () Bool)

(assert (=> b!4714072 m!5641379))

(assert (=> b!4713705 d!1500051))

(declare-fun d!1500053 () Bool)

(declare-fun lt!1878631 () Bool)

(declare-fun content!9351 (List!52850) (InoxSet tuple2!54292))

(assert (=> d!1500053 (= lt!1878631 (select (content!9351 (toList!5837 lm!2023)) lt!1878128))))

(declare-fun e!2940161 () Bool)

(assert (=> d!1500053 (= lt!1878631 e!2940161)))

(declare-fun res!1992882 () Bool)

(assert (=> d!1500053 (=> (not res!1992882) (not e!2940161))))

(assert (=> d!1500053 (= res!1992882 ((_ is Cons!52726) (toList!5837 lm!2023)))))

(assert (=> d!1500053 (= (contains!16045 (toList!5837 lm!2023) lt!1878128) lt!1878631)))

(declare-fun b!4714082 () Bool)

(declare-fun e!2940162 () Bool)

(assert (=> b!4714082 (= e!2940161 e!2940162)))

(declare-fun res!1992883 () Bool)

(assert (=> b!4714082 (=> res!1992883 e!2940162)))

(assert (=> b!4714082 (= res!1992883 (= (h!59047 (toList!5837 lm!2023)) lt!1878128))))

(declare-fun b!4714083 () Bool)

(assert (=> b!4714083 (= e!2940162 (contains!16045 (t!360094 (toList!5837 lm!2023)) lt!1878128))))

(assert (= (and d!1500053 res!1992882) b!4714082))

(assert (= (and b!4714082 (not res!1992883)) b!4714083))

(declare-fun m!5641381 () Bool)

(assert (=> d!1500053 m!5641381))

(declare-fun m!5641383 () Bool)

(assert (=> d!1500053 m!5641383))

(declare-fun m!5641385 () Bool)

(assert (=> b!4714083 m!5641385))

(assert (=> b!4713705 d!1500053))

(declare-fun bs!1103431 () Bool)

(declare-fun d!1500055 () Bool)

(assert (= bs!1103431 (and d!1500055 start!479220)))

(declare-fun lambda!213576 () Int)

(assert (=> bs!1103431 (= lambda!213576 lambda!213433)))

(declare-fun bs!1103432 () Bool)

(assert (= bs!1103432 (and d!1500055 d!1499963)))

(assert (=> bs!1103432 (= lambda!213576 lambda!213527)))

(declare-fun bs!1103433 () Bool)

(assert (= bs!1103433 (and d!1500055 d!1499955)))

(assert (=> bs!1103433 (= lambda!213576 lambda!213522)))

(declare-fun bs!1103434 () Bool)

(assert (= bs!1103434 (and d!1500055 d!1499889)))

(assert (=> bs!1103434 (= lambda!213576 lambda!213436)))

(declare-fun bs!1103435 () Bool)

(assert (= bs!1103435 (and d!1500055 d!1499951)))

(assert (=> bs!1103435 (not (= lambda!213576 lambda!213521))))

(declare-fun bs!1103436 () Bool)

(assert (= bs!1103436 (and d!1500055 d!1500021)))

(assert (=> bs!1103436 (= lambda!213576 lambda!213568)))

(declare-fun bs!1103437 () Bool)

(assert (= bs!1103437 (and d!1500055 d!1499945)))

(assert (=> bs!1103437 (= lambda!213576 lambda!213518)))

(declare-fun bs!1103438 () Bool)

(assert (= bs!1103438 (and d!1500055 d!1500011)))

(assert (=> bs!1103438 (= lambda!213576 lambda!213550)))

(declare-fun e!2940168 () Bool)

(declare-fun lt!1878651 () List!52849)

(declare-fun b!4714095 () Bool)

(declare-fun lt!1878655 () (_ BitVec 64))

(declare-datatypes ((Option!12302 0))(
  ( (None!12301) (Some!12301 (v!46848 List!52849)) )
))
(declare-fun getValueByKey!1920 (List!52850 (_ BitVec 64)) Option!12302)

(assert (=> b!4714095 (= e!2940168 (= (getValueByKey!1920 (toList!5837 lm!2023) lt!1878655) (Some!12301 lt!1878651)))))

(declare-fun b!4714094 () Bool)

(declare-fun e!2940167 () Bool)

(assert (=> b!4714094 (= e!2940167 (isDefined!9552 (getPair!540 (apply!12423 lm!2023 (hash!4310 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1878650 () Unit!128360)

(assert (=> b!4714094 (= lt!1878650 (forallContained!3586 (toList!5837 lm!2023) lambda!213576 (tuple2!54293 (hash!4310 hashF!1323 key!4653) (apply!12423 lm!2023 (hash!4310 hashF!1323 key!4653)))))))

(declare-fun lt!1878652 () Unit!128360)

(declare-fun lt!1878654 () Unit!128360)

(assert (=> b!4714094 (= lt!1878652 lt!1878654)))

(assert (=> b!4714094 (contains!16045 (toList!5837 lm!2023) (tuple2!54293 lt!1878655 lt!1878651))))

(assert (=> b!4714094 (= lt!1878654 (lemmaGetValueImpliesTupleContained!345 lm!2023 lt!1878655 lt!1878651))))

(assert (=> b!4714094 e!2940168))

(declare-fun res!1992892 () Bool)

(assert (=> b!4714094 (=> (not res!1992892) (not e!2940168))))

(assert (=> b!4714094 (= res!1992892 (contains!16046 lm!2023 lt!1878655))))

(assert (=> b!4714094 (= lt!1878651 (apply!12423 lm!2023 (hash!4310 hashF!1323 key!4653)))))

(assert (=> b!4714094 (= lt!1878655 (hash!4310 hashF!1323 key!4653))))

(declare-fun lt!1878653 () Unit!128360)

(declare-fun lt!1878648 () Unit!128360)

(assert (=> b!4714094 (= lt!1878653 lt!1878648)))

(assert (=> b!4714094 (contains!16046 lm!2023 (hash!4310 hashF!1323 key!4653))))

(assert (=> b!4714094 (= lt!1878648 (lemmaInGenMapThenLongMapContainsHash!746 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4714093 () Bool)

(declare-fun res!1992894 () Bool)

(assert (=> b!4714093 (=> (not res!1992894) (not e!2940167))))

(assert (=> b!4714093 (= res!1992894 (contains!16047 (extractMap!2000 (toList!5837 lm!2023)) key!4653))))

(declare-fun b!4714092 () Bool)

(declare-fun res!1992893 () Bool)

(assert (=> b!4714092 (=> (not res!1992893) (not e!2940167))))

(assert (=> b!4714092 (= res!1992893 (allKeysSameHashInMap!1888 lm!2023 hashF!1323))))

(assert (=> d!1500055 e!2940167))

(declare-fun res!1992895 () Bool)

(assert (=> d!1500055 (=> (not res!1992895) (not e!2940167))))

(assert (=> d!1500055 (= res!1992895 (forall!11517 (toList!5837 lm!2023) lambda!213576))))

(declare-fun lt!1878649 () Unit!128360)

(declare-fun choose!33174 (ListLongMap!4367 K!14085 Hashable!6343) Unit!128360)

(assert (=> d!1500055 (= lt!1878649 (choose!33174 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500055 (forall!11517 (toList!5837 lm!2023) lambda!213576)))

(assert (=> d!1500055 (= (lemmaInGenMapThenGetPairDefined!336 lm!2023 key!4653 hashF!1323) lt!1878649)))

(assert (= (and d!1500055 res!1992895) b!4714092))

(assert (= (and b!4714092 res!1992893) b!4714093))

(assert (= (and b!4714093 res!1992894) b!4714094))

(assert (= (and b!4714094 res!1992892) b!4714095))

(assert (=> b!4714093 m!5640633))

(assert (=> b!4714093 m!5640633))

(declare-fun m!5641387 () Bool)

(assert (=> b!4714093 m!5641387))

(assert (=> b!4714094 m!5640635))

(declare-fun m!5641389 () Bool)

(assert (=> b!4714094 m!5641389))

(declare-fun m!5641391 () Bool)

(assert (=> b!4714094 m!5641391))

(assert (=> b!4714094 m!5640609))

(declare-fun m!5641393 () Bool)

(assert (=> b!4714094 m!5641393))

(declare-fun m!5641395 () Bool)

(assert (=> b!4714094 m!5641395))

(assert (=> b!4714094 m!5640635))

(declare-fun m!5641397 () Bool)

(assert (=> b!4714094 m!5641397))

(declare-fun m!5641399 () Bool)

(assert (=> b!4714094 m!5641399))

(declare-fun m!5641401 () Bool)

(assert (=> b!4714094 m!5641401))

(declare-fun m!5641403 () Bool)

(assert (=> b!4714094 m!5641403))

(assert (=> b!4714094 m!5641397))

(assert (=> b!4714094 m!5641393))

(assert (=> b!4714094 m!5640635))

(assert (=> b!4714092 m!5640629))

(declare-fun m!5641405 () Bool)

(assert (=> b!4714095 m!5641405))

(declare-fun m!5641407 () Bool)

(assert (=> d!1500055 m!5641407))

(declare-fun m!5641409 () Bool)

(assert (=> d!1500055 m!5641409))

(assert (=> d!1500055 m!5641407))

(assert (=> b!4713705 d!1500055))

(declare-fun d!1500057 () Bool)

(declare-fun e!2940173 () Bool)

(assert (=> d!1500057 e!2940173))

(declare-fun res!1992898 () Bool)

(assert (=> d!1500057 (=> res!1992898 e!2940173)))

(declare-fun lt!1878667 () Bool)

(assert (=> d!1500057 (= res!1992898 (not lt!1878667))))

(declare-fun lt!1878665 () Bool)

(assert (=> d!1500057 (= lt!1878667 lt!1878665)))

(declare-fun lt!1878666 () Unit!128360)

(declare-fun e!2940174 () Unit!128360)

(assert (=> d!1500057 (= lt!1878666 e!2940174)))

(declare-fun c!805275 () Bool)

(assert (=> d!1500057 (= c!805275 lt!1878665)))

(declare-fun containsKey!3299 (List!52850 (_ BitVec 64)) Bool)

(assert (=> d!1500057 (= lt!1878665 (containsKey!3299 (toList!5837 lm!2023) lt!1878131))))

(assert (=> d!1500057 (= (contains!16046 lm!2023 lt!1878131) lt!1878667)))

(declare-fun b!4714102 () Bool)

(declare-fun lt!1878664 () Unit!128360)

(assert (=> b!4714102 (= e!2940174 lt!1878664)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1811 (List!52850 (_ BitVec 64)) Unit!128360)

(assert (=> b!4714102 (= lt!1878664 (lemmaContainsKeyImpliesGetValueByKeyDefined!1811 (toList!5837 lm!2023) lt!1878131))))

(declare-fun isDefined!9556 (Option!12302) Bool)

(assert (=> b!4714102 (isDefined!9556 (getValueByKey!1920 (toList!5837 lm!2023) lt!1878131))))

(declare-fun b!4714103 () Bool)

(declare-fun Unit!128481 () Unit!128360)

(assert (=> b!4714103 (= e!2940174 Unit!128481)))

(declare-fun b!4714104 () Bool)

(assert (=> b!4714104 (= e!2940173 (isDefined!9556 (getValueByKey!1920 (toList!5837 lm!2023) lt!1878131)))))

(assert (= (and d!1500057 c!805275) b!4714102))

(assert (= (and d!1500057 (not c!805275)) b!4714103))

(assert (= (and d!1500057 (not res!1992898)) b!4714104))

(declare-fun m!5641411 () Bool)

(assert (=> d!1500057 m!5641411))

(declare-fun m!5641413 () Bool)

(assert (=> b!4714102 m!5641413))

(declare-fun m!5641415 () Bool)

(assert (=> b!4714102 m!5641415))

(assert (=> b!4714102 m!5641415))

(declare-fun m!5641417 () Bool)

(assert (=> b!4714102 m!5641417))

(assert (=> b!4714104 m!5641415))

(assert (=> b!4714104 m!5641415))

(assert (=> b!4714104 m!5641417))

(assert (=> b!4713705 d!1500057))

(declare-fun d!1500059 () Bool)

(declare-fun res!1992903 () Bool)

(declare-fun e!2940179 () Bool)

(assert (=> d!1500059 (=> res!1992903 e!2940179)))

(assert (=> d!1500059 (= res!1992903 (and ((_ is Cons!52725) (t!360093 oldBucket!34)) (= (_1!30439 (h!59046 (t!360093 oldBucket!34))) key!4653)))))

(assert (=> d!1500059 (= (containsKey!3295 (t!360093 oldBucket!34) key!4653) e!2940179)))

(declare-fun b!4714109 () Bool)

(declare-fun e!2940180 () Bool)

(assert (=> b!4714109 (= e!2940179 e!2940180)))

(declare-fun res!1992904 () Bool)

(assert (=> b!4714109 (=> (not res!1992904) (not e!2940180))))

(assert (=> b!4714109 (= res!1992904 ((_ is Cons!52725) (t!360093 oldBucket!34)))))

(declare-fun b!4714110 () Bool)

(assert (=> b!4714110 (= e!2940180 (containsKey!3295 (t!360093 (t!360093 oldBucket!34)) key!4653))))

(assert (= (and d!1500059 (not res!1992903)) b!4714109))

(assert (= (and b!4714109 res!1992904) b!4714110))

(declare-fun m!5641419 () Bool)

(assert (=> b!4714110 m!5641419))

(assert (=> b!4713705 d!1500059))

(declare-fun d!1500061 () Bool)

(assert (=> d!1500061 (dynLambda!21789 lambda!213433 lt!1878128)))

(declare-fun lt!1878670 () Unit!128360)

(declare-fun choose!33175 (List!52850 Int tuple2!54292) Unit!128360)

(assert (=> d!1500061 (= lt!1878670 (choose!33175 (toList!5837 lm!2023) lambda!213433 lt!1878128))))

(declare-fun e!2940183 () Bool)

(assert (=> d!1500061 e!2940183))

(declare-fun res!1992907 () Bool)

(assert (=> d!1500061 (=> (not res!1992907) (not e!2940183))))

(assert (=> d!1500061 (= res!1992907 (forall!11517 (toList!5837 lm!2023) lambda!213433))))

(assert (=> d!1500061 (= (forallContained!3586 (toList!5837 lm!2023) lambda!213433 lt!1878128) lt!1878670)))

(declare-fun b!4714113 () Bool)

(assert (=> b!4714113 (= e!2940183 (contains!16045 (toList!5837 lm!2023) lt!1878128))))

(assert (= (and d!1500061 res!1992907) b!4714113))

(declare-fun b_lambda!177735 () Bool)

(assert (=> (not b_lambda!177735) (not d!1500061)))

(declare-fun m!5641421 () Bool)

(assert (=> d!1500061 m!5641421))

(declare-fun m!5641423 () Bool)

(assert (=> d!1500061 m!5641423))

(assert (=> d!1500061 m!5640637))

(assert (=> b!4714113 m!5640627))

(assert (=> b!4713705 d!1500061))

(declare-fun d!1500063 () Bool)

(assert (=> d!1500063 (= (isDefined!9552 (getPair!540 lt!1878126 key!4653)) (not (isEmpty!29157 (getPair!540 lt!1878126 key!4653))))))

(declare-fun bs!1103439 () Bool)

(assert (= bs!1103439 d!1500063))

(assert (=> bs!1103439 m!5640613))

(declare-fun m!5641425 () Bool)

(assert (=> bs!1103439 m!5641425))

(assert (=> b!4713705 d!1500063))

(declare-fun d!1500065 () Bool)

(declare-fun res!1992908 () Bool)

(declare-fun e!2940184 () Bool)

(assert (=> d!1500065 (=> res!1992908 e!2940184)))

(assert (=> d!1500065 (= res!1992908 (and ((_ is Cons!52725) oldBucket!34) (= (_1!30439 (h!59046 oldBucket!34)) key!4653)))))

(assert (=> d!1500065 (= (containsKey!3295 oldBucket!34 key!4653) e!2940184)))

(declare-fun b!4714114 () Bool)

(declare-fun e!2940185 () Bool)

(assert (=> b!4714114 (= e!2940184 e!2940185)))

(declare-fun res!1992909 () Bool)

(assert (=> b!4714114 (=> (not res!1992909) (not e!2940185))))

(assert (=> b!4714114 (= res!1992909 ((_ is Cons!52725) oldBucket!34))))

(declare-fun b!4714115 () Bool)

(assert (=> b!4714115 (= e!2940185 (containsKey!3295 (t!360093 oldBucket!34) key!4653))))

(assert (= (and d!1500065 (not res!1992908)) b!4714114))

(assert (= (and b!4714114 res!1992909) b!4714115))

(assert (=> b!4714115 m!5640617))

(assert (=> b!4713705 d!1500065))

(declare-fun d!1500067 () Bool)

(assert (=> d!1500067 (contains!16045 (toList!5837 lm!2023) (tuple2!54293 lt!1878131 lt!1878126))))

(declare-fun lt!1878673 () Unit!128360)

(declare-fun choose!33176 (ListLongMap!4367 (_ BitVec 64) List!52849) Unit!128360)

(assert (=> d!1500067 (= lt!1878673 (choose!33176 lm!2023 lt!1878131 lt!1878126))))

(assert (=> d!1500067 (contains!16046 lm!2023 lt!1878131)))

(assert (=> d!1500067 (= (lemmaGetValueImpliesTupleContained!345 lm!2023 lt!1878131 lt!1878126) lt!1878673)))

(declare-fun bs!1103440 () Bool)

(assert (= bs!1103440 d!1500067))

(declare-fun m!5641427 () Bool)

(assert (=> bs!1103440 m!5641427))

(declare-fun m!5641429 () Bool)

(assert (=> bs!1103440 m!5641429))

(assert (=> bs!1103440 m!5640611))

(assert (=> b!4713705 d!1500067))

(declare-fun bs!1103441 () Bool)

(declare-fun d!1500069 () Bool)

(assert (= bs!1103441 (and d!1500069 start!479220)))

(declare-fun lambda!213579 () Int)

(assert (=> bs!1103441 (= lambda!213579 lambda!213433)))

(declare-fun bs!1103442 () Bool)

(assert (= bs!1103442 (and d!1500069 d!1499963)))

(assert (=> bs!1103442 (= lambda!213579 lambda!213527)))

(declare-fun bs!1103443 () Bool)

(assert (= bs!1103443 (and d!1500069 d!1499955)))

(assert (=> bs!1103443 (= lambda!213579 lambda!213522)))

(declare-fun bs!1103444 () Bool)

(assert (= bs!1103444 (and d!1500069 d!1499889)))

(assert (=> bs!1103444 (= lambda!213579 lambda!213436)))

(declare-fun bs!1103445 () Bool)

(assert (= bs!1103445 (and d!1500069 d!1499951)))

(assert (=> bs!1103445 (not (= lambda!213579 lambda!213521))))

(declare-fun bs!1103446 () Bool)

(assert (= bs!1103446 (and d!1500069 d!1499945)))

(assert (=> bs!1103446 (= lambda!213579 lambda!213518)))

(declare-fun bs!1103447 () Bool)

(assert (= bs!1103447 (and d!1500069 d!1500011)))

(assert (=> bs!1103447 (= lambda!213579 lambda!213550)))

(declare-fun bs!1103448 () Bool)

(assert (= bs!1103448 (and d!1500069 d!1500021)))

(assert (=> bs!1103448 (= lambda!213579 lambda!213568)))

(declare-fun bs!1103449 () Bool)

(assert (= bs!1103449 (and d!1500069 d!1500055)))

(assert (=> bs!1103449 (= lambda!213579 lambda!213576)))

(assert (=> d!1500069 (contains!16046 lm!2023 (hash!4310 hashF!1323 key!4653))))

(declare-fun lt!1878676 () Unit!128360)

(declare-fun choose!33177 (ListLongMap!4367 K!14085 Hashable!6343) Unit!128360)

(assert (=> d!1500069 (= lt!1878676 (choose!33177 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500069 (forall!11517 (toList!5837 lm!2023) lambda!213579)))

(assert (=> d!1500069 (= (lemmaInGenMapThenLongMapContainsHash!746 lm!2023 key!4653 hashF!1323) lt!1878676)))

(declare-fun bs!1103450 () Bool)

(assert (= bs!1103450 d!1500069))

(assert (=> bs!1103450 m!5640635))

(assert (=> bs!1103450 m!5640635))

(assert (=> bs!1103450 m!5641389))

(declare-fun m!5641431 () Bool)

(assert (=> bs!1103450 m!5641431))

(declare-fun m!5641433 () Bool)

(assert (=> bs!1103450 m!5641433))

(assert (=> b!4713705 d!1500069))

(declare-fun d!1500071 () Bool)

(assert (=> d!1500071 (containsKey!3295 oldBucket!34 key!4653)))

(declare-fun lt!1878679 () Unit!128360)

(declare-fun choose!33178 (List!52849 K!14085 Hashable!6343) Unit!128360)

(assert (=> d!1500071 (= lt!1878679 (choose!33178 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1500071 (noDuplicateKeys!1974 oldBucket!34)))

(assert (=> d!1500071 (= (lemmaGetPairDefinedThenContainsKey!288 oldBucket!34 key!4653 hashF!1323) lt!1878679)))

(declare-fun bs!1103451 () Bool)

(assert (= bs!1103451 d!1500071))

(assert (=> bs!1103451 m!5640625))

(declare-fun m!5641435 () Bool)

(assert (=> bs!1103451 m!5641435))

(assert (=> bs!1103451 m!5640601))

(assert (=> b!4713705 d!1500071))

(declare-fun d!1500073 () Bool)

(declare-fun get!17680 (Option!12302) List!52849)

(assert (=> d!1500073 (= (apply!12423 lm!2023 lt!1878131) (get!17680 (getValueByKey!1920 (toList!5837 lm!2023) lt!1878131)))))

(declare-fun bs!1103452 () Bool)

(assert (= bs!1103452 d!1500073))

(assert (=> bs!1103452 m!5641415))

(assert (=> bs!1103452 m!5641415))

(declare-fun m!5641437 () Bool)

(assert (=> bs!1103452 m!5641437))

(assert (=> b!4713705 d!1500073))

(declare-fun bs!1103453 () Bool)

(declare-fun d!1500075 () Bool)

(assert (= bs!1103453 (and d!1500075 b!4713970)))

(declare-fun lambda!213582 () Int)

(assert (=> bs!1103453 (not (= lambda!213582 lambda!213543))))

(declare-fun bs!1103454 () Bool)

(assert (= bs!1103454 (and d!1500075 b!4713890)))

(assert (=> bs!1103454 (not (= lambda!213582 lambda!213514))))

(declare-fun bs!1103455 () Bool)

(assert (= bs!1103455 (and d!1500075 b!4713972)))

(assert (=> bs!1103455 (not (= lambda!213582 lambda!213541))))

(assert (=> bs!1103453 (not (= lambda!213582 lambda!213545))))

(declare-fun bs!1103456 () Bool)

(assert (= bs!1103456 (and d!1500075 d!1499957)))

(assert (=> bs!1103456 (not (= lambda!213582 lambda!213526))))

(assert (=> bs!1103454 (not (= lambda!213582 lambda!213515))))

(declare-fun bs!1103457 () Bool)

(assert (= bs!1103457 (and d!1500075 b!4713925)))

(assert (=> bs!1103457 (not (= lambda!213582 lambda!213523))))

(declare-fun bs!1103458 () Bool)

(assert (= bs!1103458 (and d!1500075 b!4713941)))

(assert (=> bs!1103458 (not (= lambda!213582 lambda!213530))))

(declare-fun bs!1103459 () Bool)

(assert (= bs!1103459 (and d!1500075 d!1499893)))

(assert (=> bs!1103459 (not (= lambda!213582 lambda!213516))))

(declare-fun bs!1103460 () Bool)

(assert (= bs!1103460 (and d!1500075 b!4713990)))

(assert (=> bs!1103460 (not (= lambda!213582 lambda!213555))))

(declare-fun bs!1103461 () Bool)

(assert (= bs!1103461 (and d!1500075 d!1500017)))

(assert (=> bs!1103461 (not (= lambda!213582 lambda!213558))))

(declare-fun bs!1103462 () Bool)

(assert (= bs!1103462 (and d!1500075 d!1499995)))

(assert (=> bs!1103462 (not (= lambda!213582 lambda!213547))))

(assert (=> bs!1103460 (not (= lambda!213582 lambda!213556))))

(declare-fun bs!1103463 () Bool)

(assert (= bs!1103463 (and d!1500075 b!4713923)))

(assert (=> bs!1103463 (not (= lambda!213582 lambda!213524))))

(assert (=> bs!1103463 (not (= lambda!213582 lambda!213525))))

(assert (=> bs!1103458 (not (= lambda!213582 lambda!213531))))

(declare-fun bs!1103464 () Bool)

(assert (= bs!1103464 (and d!1500075 d!1499971)))

(assert (=> bs!1103464 (not (= lambda!213582 lambda!213532))))

(declare-fun bs!1103465 () Bool)

(assert (= bs!1103465 (and d!1500075 b!4713943)))

(assert (=> bs!1103465 (not (= lambda!213582 lambda!213529))))

(declare-fun bs!1103466 () Bool)

(assert (= bs!1103466 (and d!1500075 b!4713992)))

(assert (=> bs!1103466 (not (= lambda!213582 lambda!213552))))

(declare-fun bs!1103467 () Bool)

(assert (= bs!1103467 (and d!1500075 b!4713892)))

(assert (=> bs!1103467 (not (= lambda!213582 lambda!213513))))

(assert (=> d!1500075 true))

(assert (=> d!1500075 true))

(assert (=> d!1500075 (= (allKeysSameHash!1800 newBucket!218 hash!405 hashF!1323) (forall!11519 newBucket!218 lambda!213582))))

(declare-fun bs!1103468 () Bool)

(assert (= bs!1103468 d!1500075))

(declare-fun m!5641439 () Bool)

(assert (=> bs!1103468 m!5641439))

(assert (=> b!4713715 d!1500075))

(declare-fun b!4714122 () Bool)

(declare-fun e!2940186 () List!52849)

(declare-fun e!2940187 () List!52849)

(assert (=> b!4714122 (= e!2940186 e!2940187)))

(declare-fun c!805276 () Bool)

(assert (=> b!4714122 (= c!805276 ((_ is Cons!52725) lt!1878124))))

(declare-fun b!4714124 () Bool)

(assert (=> b!4714124 (= e!2940187 Nil!52725)))

(declare-fun b!4714123 () Bool)

(assert (=> b!4714123 (= e!2940187 (Cons!52725 (h!59046 lt!1878124) (removePairForKey!1569 (t!360093 lt!1878124) key!4653)))))

(declare-fun d!1500077 () Bool)

(declare-fun lt!1878680 () List!52849)

(assert (=> d!1500077 (not (containsKey!3295 lt!1878680 key!4653))))

(assert (=> d!1500077 (= lt!1878680 e!2940186)))

(declare-fun c!805277 () Bool)

(assert (=> d!1500077 (= c!805277 (and ((_ is Cons!52725) lt!1878124) (= (_1!30439 (h!59046 lt!1878124)) key!4653)))))

(assert (=> d!1500077 (noDuplicateKeys!1974 lt!1878124)))

(assert (=> d!1500077 (= (removePairForKey!1569 lt!1878124 key!4653) lt!1878680)))

(declare-fun b!4714121 () Bool)

(assert (=> b!4714121 (= e!2940186 (t!360093 lt!1878124))))

(assert (= (and d!1500077 c!805277) b!4714121))

(assert (= (and d!1500077 (not c!805277)) b!4714122))

(assert (= (and b!4714122 c!805276) b!4714123))

(assert (= (and b!4714122 (not c!805276)) b!4714124))

(declare-fun m!5641441 () Bool)

(assert (=> b!4714123 m!5641441))

(declare-fun m!5641443 () Bool)

(assert (=> d!1500077 m!5641443))

(assert (=> d!1500077 m!5640937))

(assert (=> b!4713704 d!1500077))

(declare-fun d!1500079 () Bool)

(assert (=> d!1500079 (= (tail!8900 newBucket!218) (t!360093 newBucket!218))))

(assert (=> b!4713704 d!1500079))

(declare-fun d!1500081 () Bool)

(assert (=> d!1500081 (= (tail!8900 oldBucket!34) (t!360093 oldBucket!34))))

(assert (=> b!4713704 d!1500081))

(declare-fun bs!1103469 () Bool)

(declare-fun d!1500083 () Bool)

(assert (= bs!1103469 (and d!1500083 b!4713970)))

(declare-fun lambda!213583 () Int)

(assert (=> bs!1103469 (not (= lambda!213583 lambda!213543))))

(declare-fun bs!1103470 () Bool)

(assert (= bs!1103470 (and d!1500083 b!4713890)))

(assert (=> bs!1103470 (not (= lambda!213583 lambda!213514))))

(declare-fun bs!1103471 () Bool)

(assert (= bs!1103471 (and d!1500083 b!4713972)))

(assert (=> bs!1103471 (not (= lambda!213583 lambda!213541))))

(assert (=> bs!1103469 (not (= lambda!213583 lambda!213545))))

(declare-fun bs!1103472 () Bool)

(assert (= bs!1103472 (and d!1500083 d!1499957)))

(assert (=> bs!1103472 (not (= lambda!213583 lambda!213526))))

(assert (=> bs!1103470 (not (= lambda!213583 lambda!213515))))

(declare-fun bs!1103473 () Bool)

(assert (= bs!1103473 (and d!1500083 d!1500075)))

(assert (=> bs!1103473 (= lambda!213583 lambda!213582)))

(declare-fun bs!1103474 () Bool)

(assert (= bs!1103474 (and d!1500083 b!4713925)))

(assert (=> bs!1103474 (not (= lambda!213583 lambda!213523))))

(declare-fun bs!1103475 () Bool)

(assert (= bs!1103475 (and d!1500083 b!4713941)))

(assert (=> bs!1103475 (not (= lambda!213583 lambda!213530))))

(declare-fun bs!1103476 () Bool)

(assert (= bs!1103476 (and d!1500083 d!1499893)))

(assert (=> bs!1103476 (not (= lambda!213583 lambda!213516))))

(declare-fun bs!1103477 () Bool)

(assert (= bs!1103477 (and d!1500083 b!4713990)))

(assert (=> bs!1103477 (not (= lambda!213583 lambda!213555))))

(declare-fun bs!1103478 () Bool)

(assert (= bs!1103478 (and d!1500083 d!1500017)))

(assert (=> bs!1103478 (not (= lambda!213583 lambda!213558))))

(declare-fun bs!1103479 () Bool)

(assert (= bs!1103479 (and d!1500083 d!1499995)))

(assert (=> bs!1103479 (not (= lambda!213583 lambda!213547))))

(assert (=> bs!1103477 (not (= lambda!213583 lambda!213556))))

(declare-fun bs!1103480 () Bool)

(assert (= bs!1103480 (and d!1500083 b!4713923)))

(assert (=> bs!1103480 (not (= lambda!213583 lambda!213524))))

(assert (=> bs!1103480 (not (= lambda!213583 lambda!213525))))

(assert (=> bs!1103475 (not (= lambda!213583 lambda!213531))))

(declare-fun bs!1103481 () Bool)

(assert (= bs!1103481 (and d!1500083 d!1499971)))

(assert (=> bs!1103481 (not (= lambda!213583 lambda!213532))))

(declare-fun bs!1103482 () Bool)

(assert (= bs!1103482 (and d!1500083 b!4713943)))

(assert (=> bs!1103482 (not (= lambda!213583 lambda!213529))))

(declare-fun bs!1103483 () Bool)

(assert (= bs!1103483 (and d!1500083 b!4713992)))

(assert (=> bs!1103483 (not (= lambda!213583 lambda!213552))))

(declare-fun bs!1103484 () Bool)

(assert (= bs!1103484 (and d!1500083 b!4713892)))

(assert (=> bs!1103484 (not (= lambda!213583 lambda!213513))))

(assert (=> d!1500083 true))

(assert (=> d!1500083 true))

(assert (=> d!1500083 (= (allKeysSameHash!1800 oldBucket!34 hash!405 hashF!1323) (forall!11519 oldBucket!34 lambda!213583))))

(declare-fun bs!1103485 () Bool)

(assert (= bs!1103485 d!1500083))

(declare-fun m!5641445 () Bool)

(assert (=> bs!1103485 m!5641445))

(assert (=> b!4713706 d!1500083))

(declare-fun d!1500085 () Bool)

(assert (=> d!1500085 (= (head!10177 (toList!5837 lm!2023)) (h!59047 (toList!5837 lm!2023)))))

(assert (=> b!4713702 d!1500085))

(declare-fun d!1500087 () Bool)

(declare-fun res!1992910 () Bool)

(declare-fun e!2940188 () Bool)

(assert (=> d!1500087 (=> res!1992910 e!2940188)))

(assert (=> d!1500087 (= res!1992910 (not ((_ is Cons!52725) newBucket!218)))))

(assert (=> d!1500087 (= (noDuplicateKeys!1974 newBucket!218) e!2940188)))

(declare-fun b!4714125 () Bool)

(declare-fun e!2940189 () Bool)

(assert (=> b!4714125 (= e!2940188 e!2940189)))

(declare-fun res!1992911 () Bool)

(assert (=> b!4714125 (=> (not res!1992911) (not e!2940189))))

(assert (=> b!4714125 (= res!1992911 (not (containsKey!3295 (t!360093 newBucket!218) (_1!30439 (h!59046 newBucket!218)))))))

(declare-fun b!4714126 () Bool)

(assert (=> b!4714126 (= e!2940189 (noDuplicateKeys!1974 (t!360093 newBucket!218)))))

(assert (= (and d!1500087 (not res!1992910)) b!4714125))

(assert (= (and b!4714125 res!1992911) b!4714126))

(declare-fun m!5641447 () Bool)

(assert (=> b!4714125 m!5641447))

(declare-fun m!5641449 () Bool)

(assert (=> b!4714126 m!5641449))

(assert (=> b!4713712 d!1500087))

(declare-fun b!4714131 () Bool)

(declare-fun e!2940192 () Bool)

(declare-fun tp!1347772 () Bool)

(declare-fun tp!1347773 () Bool)

(assert (=> b!4714131 (= e!2940192 (and tp!1347772 tp!1347773))))

(assert (=> b!4713711 (= tp!1347757 e!2940192)))

(assert (= (and b!4713711 ((_ is Cons!52726) (toList!5837 lm!2023))) b!4714131))

(declare-fun e!2940195 () Bool)

(declare-fun b!4714136 () Bool)

(declare-fun tp!1347776 () Bool)

(assert (=> b!4714136 (= e!2940195 (and tp_is_empty!31189 tp_is_empty!31191 tp!1347776))))

(assert (=> b!4713714 (= tp!1347755 e!2940195)))

(assert (= (and b!4713714 ((_ is Cons!52725) (t!360093 newBucket!218))) b!4714136))

(declare-fun tp!1347777 () Bool)

(declare-fun e!2940196 () Bool)

(declare-fun b!4714137 () Bool)

(assert (=> b!4714137 (= e!2940196 (and tp_is_empty!31189 tp_is_empty!31191 tp!1347777))))

(assert (=> b!4713703 (= tp!1347756 e!2940196)))

(assert (= (and b!4713703 ((_ is Cons!52725) (t!360093 oldBucket!34))) b!4714137))

(declare-fun b_lambda!177737 () Bool)

(assert (= b_lambda!177735 (or start!479220 b_lambda!177737)))

(declare-fun bs!1103486 () Bool)

(declare-fun d!1500089 () Bool)

(assert (= bs!1103486 (and d!1500089 start!479220)))

(assert (=> bs!1103486 (= (dynLambda!21789 lambda!213433 lt!1878128) (noDuplicateKeys!1974 (_2!30440 lt!1878128)))))

(declare-fun m!5641451 () Bool)

(assert (=> bs!1103486 m!5641451))

(assert (=> d!1500061 d!1500089))

(declare-fun b_lambda!177739 () Bool)

(assert (= b_lambda!177733 (or start!479220 b_lambda!177739)))

(declare-fun bs!1103487 () Bool)

(declare-fun d!1500091 () Bool)

(assert (= bs!1103487 (and d!1500091 start!479220)))

(assert (=> bs!1103487 (= (dynLambda!21789 lambda!213433 (h!59047 (toList!5837 lm!2023))) (noDuplicateKeys!1974 (_2!30440 (h!59047 (toList!5837 lm!2023)))))))

(assert (=> bs!1103487 m!5640861))

(assert (=> b!4714046 d!1500091))

(check-sat (not d!1500047) (not d!1500007) (not b!4714104) (not b!4713962) (not b!4713970) (not d!1500039) (not b!4713989) (not d!1499955) (not bm!329586) (not d!1499889) (not b!4714125) (not b!4713924) (not b!4713931) (not b!4714094) (not b!4713928) (not b!4714071) (not b!4714070) (not b!4713993) (not d!1500029) (not d!1500005) (not b!4713941) (not d!1500055) (not b!4713991) (not bm!329574) (not b!4714113) (not d!1499947) (not d!1500083) (not b!4714092) (not b_lambda!177739) (not bm!329576) (not b!4713980) (not d!1500067) (not d!1499965) (not b!4713738) (not b!4714115) (not b!4714123) (not b!4714126) (not bm!329569) (not d!1499885) (not b!4714083) (not d!1500073) (not b!4713963) (not b!4713942) (not b!4714047) (not b!4713971) (not d!1499989) (not d!1500057) (not bs!1103487) (not b!4713907) (not d!1500063) (not b!4713736) (not d!1499975) (not d!1500075) (not b!4714136) (not bm!329568) (not b!4713734) (not bm!329572) (not b!4713988) (not b!4713937) (not b!4714053) (not b!4713740) (not b!4713969) (not b!4713987) (not d!1500069) (not d!1500017) (not d!1499893) (not bm!329592) (not bm!329585) (not d!1499981) (not b!4713938) (not b!4713954) tp_is_empty!31191 (not d!1499959) (not b!4713741) (not bm!329593) (not b!4713933) (not d!1499971) (not b!4713735) (not b_lambda!177737) (not d!1500021) (not d!1500051) (not b!4713893) (not b!4713935) (not d!1500053) (not b!4713973) tp_is_empty!31189 (not d!1499995) (not b!4714131) (not b!4714137) (not b!4713955) (not b!4713923) (not b!4713891) (not b!4713920) (not d!1500077) (not d!1500071) (not b!4713926) (not d!1499951) (not b!4714025) (not b!4714102) (not d!1499973) (not b!4714093) (not b!4714075) (not d!1499957) (not d!1500015) (not bm!329587) (not b!4713940) (not d!1500011) (not bm!329575) (not b!4713747) (not b!4713990) (not b!4714029) (not b!4713889) (not bm!329573) (not b!4714110) (not b!4713932) (not b!4713742) (not bm!329591) (not d!1499963) (not bs!1103486) (not bm!329567) (not b!4714095) (not bm!329549) (not b!4713922) (not b!4714073) (not b!4714052) (not b!4713939) (not d!1500061) (not b!4714072) (not d!1499891) (not d!1499945) (not bm!329578) (not b!4713944) (not b!4713890) (not bm!329577))
(check-sat)
