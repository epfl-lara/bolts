; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474788 () Bool)

(assert start!474788)

(declare-fun b!4691881 () Bool)

(declare-fun e!2926974 () Bool)

(declare-datatypes ((K!13810 0))(
  ( (K!13811 (val!19319 Int)) )
))
(declare-datatypes ((V!14056 0))(
  ( (V!14057 (val!19320 Int)) )
))
(declare-datatypes ((tuple2!53850 0))(
  ( (tuple2!53851 (_1!30219 K!13810) (_2!30219 V!14056)) )
))
(declare-datatypes ((List!52559 0))(
  ( (Nil!52435) (Cons!52435 (h!58686 tuple2!53850) (t!359741 List!52559)) )
))
(declare-fun newBucket!218 () List!52559)

(assert (=> b!4691881 (= e!2926974 (not (= newBucket!218 Nil!52435)))))

(declare-fun lt!1851981 () List!52559)

(declare-fun key!4653 () K!13810)

(declare-datatypes ((tuple2!53852 0))(
  ( (tuple2!53853 (_1!30220 (_ BitVec 64)) (_2!30220 List!52559)) )
))
(declare-datatypes ((List!52560 0))(
  ( (Nil!52436) (Cons!52436 (h!58687 tuple2!53852) (t!359742 List!52560)) )
))
(declare-fun lt!1851997 () List!52560)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1851980 () tuple2!53852)

(declare-datatypes ((ListMap!4981 0))(
  ( (ListMap!4982 (toList!5617 List!52559)) )
))
(declare-fun eq!1023 (ListMap!4981 ListMap!4981) Bool)

(declare-fun extractMap!1890 (List!52560) ListMap!4981)

(declare-fun -!668 (ListMap!4981 K!13810) ListMap!4981)

(assert (=> b!4691881 (eq!1023 (extractMap!1890 (Cons!52436 (tuple2!53853 hash!405 lt!1851981) lt!1851997)) (-!668 (extractMap!1890 (Cons!52436 lt!1851980 lt!1851997)) key!4653))))

(declare-fun lt!1851991 () List!52560)

(declare-fun tail!8617 (List!52560) List!52560)

(assert (=> b!4691881 (= lt!1851997 (tail!8617 lt!1851991))))

(declare-datatypes ((ListLongMap!4147 0))(
  ( (ListLongMap!4148 (toList!5618 List!52560)) )
))
(declare-fun lt!1851996 () ListLongMap!4147)

(declare-fun oldBucket!34 () List!52559)

(declare-datatypes ((Hashable!6233 0))(
  ( (HashableExt!6232 (__x!31936 Int)) )
))
(declare-fun hashF!1323 () Hashable!6233)

(declare-datatypes ((Unit!124405 0))(
  ( (Unit!124406) )
))
(declare-fun lt!1851983 () Unit!124405)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!38 (ListLongMap!4147 (_ BitVec 64) List!52559 List!52559 K!13810 Hashable!6233) Unit!124405)

(assert (=> b!4691881 (= lt!1851983 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!38 lt!1851996 hash!405 (t!359741 oldBucket!34) lt!1851981 key!4653 hashF!1323))))

(declare-fun b!4691882 () Bool)

(declare-fun e!2926980 () Bool)

(declare-fun e!2926977 () Bool)

(assert (=> b!4691882 (= e!2926980 e!2926977)))

(declare-fun res!1979348 () Bool)

(assert (=> b!4691882 (=> res!1979348 e!2926977)))

(declare-fun lt!1851987 () List!52559)

(declare-fun removePairForKey!1459 (List!52559 K!13810) List!52559)

(assert (=> b!4691882 (= res!1979348 (not (= (removePairForKey!1459 lt!1851987 key!4653) lt!1851981)))))

(declare-fun tail!8618 (List!52559) List!52559)

(assert (=> b!4691882 (= lt!1851981 (tail!8618 newBucket!218))))

(assert (=> b!4691882 (= lt!1851987 (tail!8618 oldBucket!34))))

(declare-fun b!4691883 () Bool)

(declare-fun res!1979352 () Bool)

(declare-fun e!2926975 () Bool)

(assert (=> b!4691883 (=> (not res!1979352) (not e!2926975))))

(declare-fun lm!2023 () ListLongMap!4147)

(declare-fun allKeysSameHashInMap!1778 (ListLongMap!4147 Hashable!6233) Bool)

(assert (=> b!4691883 (= res!1979352 (allKeysSameHashInMap!1778 lm!2023 hashF!1323))))

(declare-fun b!4691884 () Bool)

(declare-fun e!2926972 () Bool)

(declare-fun e!2926976 () Bool)

(assert (=> b!4691884 (= e!2926972 (not e!2926976))))

(declare-fun res!1979365 () Bool)

(assert (=> b!4691884 (=> res!1979365 e!2926976)))

(get-info :version)

(assert (=> b!4691884 (= res!1979365 (or (and ((_ is Cons!52435) oldBucket!34) (= (_1!30219 (h!58686 oldBucket!34)) key!4653)) (not ((_ is Cons!52435) oldBucket!34)) (= (_1!30219 (h!58686 oldBucket!34)) key!4653)))))

(declare-fun lt!1851978 () ListMap!4981)

(declare-fun lt!1851993 () ListMap!4981)

(declare-fun addToMapMapFromBucket!1296 (List!52559 ListMap!4981) ListMap!4981)

(assert (=> b!4691884 (= lt!1851978 (addToMapMapFromBucket!1296 (_2!30220 (h!58687 (toList!5618 lm!2023))) lt!1851993))))

(assert (=> b!4691884 (= lt!1851993 (extractMap!1890 (t!359742 (toList!5618 lm!2023))))))

(declare-fun tail!8619 (ListLongMap!4147) ListLongMap!4147)

(assert (=> b!4691884 (= (t!359742 (toList!5618 lm!2023)) (toList!5618 (tail!8619 lm!2023)))))

(declare-fun b!4691885 () Bool)

(declare-fun res!1979359 () Bool)

(declare-fun e!2926979 () Bool)

(assert (=> b!4691885 (=> (not res!1979359) (not e!2926979))))

(declare-fun noDuplicateKeys!1864 (List!52559) Bool)

(assert (=> b!4691885 (= res!1979359 (noDuplicateKeys!1864 newBucket!218))))

(declare-fun b!4691886 () Bool)

(declare-fun e!2926973 () Bool)

(assert (=> b!4691886 (= e!2926973 e!2926975)))

(declare-fun res!1979351 () Bool)

(assert (=> b!4691886 (=> (not res!1979351) (not e!2926975))))

(declare-fun lt!1851998 () (_ BitVec 64))

(assert (=> b!4691886 (= res!1979351 (= lt!1851998 hash!405))))

(declare-fun hash!4081 (Hashable!6233 K!13810) (_ BitVec 64))

(assert (=> b!4691886 (= lt!1851998 (hash!4081 hashF!1323 key!4653))))

(declare-fun b!4691887 () Bool)

(declare-fun res!1979356 () Bool)

(assert (=> b!4691887 (=> (not res!1979356) (not e!2926979))))

(declare-fun allKeysSameHash!1690 (List!52559 (_ BitVec 64) Hashable!6233) Bool)

(assert (=> b!4691887 (= res!1979356 (allKeysSameHash!1690 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4691888 () Bool)

(declare-fun res!1979357 () Bool)

(assert (=> b!4691888 (=> res!1979357 e!2926974)))

(declare-fun lt!1851988 () tuple2!53850)

(assert (=> b!4691888 (= res!1979357 (not (= (h!58686 oldBucket!34) lt!1851988)))))

(declare-fun b!4691889 () Bool)

(declare-fun res!1979362 () Bool)

(assert (=> b!4691889 (=> (not res!1979362) (not e!2926979))))

(assert (=> b!4691889 (= res!1979362 (= (removePairForKey!1459 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4691890 () Bool)

(assert (=> b!4691890 (= e!2926975 e!2926972)))

(declare-fun res!1979364 () Bool)

(assert (=> b!4691890 (=> (not res!1979364) (not e!2926972))))

(declare-fun lt!1851985 () tuple2!53852)

(declare-fun head!9991 (List!52560) tuple2!53852)

(assert (=> b!4691890 (= res!1979364 (= (head!9991 (toList!5618 lm!2023)) lt!1851985))))

(assert (=> b!4691890 (= lt!1851985 (tuple2!53853 hash!405 oldBucket!34))))

(declare-fun b!4691891 () Bool)

(assert (=> b!4691891 (= e!2926976 e!2926980)))

(declare-fun res!1979349 () Bool)

(assert (=> b!4691891 (=> res!1979349 e!2926980)))

(declare-fun containsKey!3075 (List!52559 K!13810) Bool)

(assert (=> b!4691891 (= res!1979349 (not (containsKey!3075 (t!359741 oldBucket!34) key!4653)))))

(assert (=> b!4691891 (containsKey!3075 oldBucket!34 key!4653)))

(declare-fun lt!1851995 () Unit!124405)

(declare-fun lemmaGetPairDefinedThenContainsKey!216 (List!52559 K!13810 Hashable!6233) Unit!124405)

(assert (=> b!4691891 (= lt!1851995 (lemmaGetPairDefinedThenContainsKey!216 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1851994 () List!52559)

(declare-datatypes ((Option!12099 0))(
  ( (None!12098) (Some!12098 (v!46525 tuple2!53850)) )
))
(declare-fun isDefined!9354 (Option!12099) Bool)

(declare-fun getPair!468 (List!52559 K!13810) Option!12099)

(assert (=> b!4691891 (isDefined!9354 (getPair!468 lt!1851994 key!4653))))

(declare-fun lt!1851990 () tuple2!53852)

(declare-fun lambda!207619 () Int)

(declare-fun lt!1851975 () Unit!124405)

(declare-fun forallContained!3444 (List!52560 Int tuple2!53852) Unit!124405)

(assert (=> b!4691891 (= lt!1851975 (forallContained!3444 (toList!5618 lm!2023) lambda!207619 lt!1851990))))

(declare-fun contains!15650 (List!52560 tuple2!53852) Bool)

(assert (=> b!4691891 (contains!15650 (toList!5618 lm!2023) lt!1851990)))

(assert (=> b!4691891 (= lt!1851990 (tuple2!53853 lt!1851998 lt!1851994))))

(declare-fun lt!1851979 () Unit!124405)

(declare-fun lemmaGetValueImpliesTupleContained!273 (ListLongMap!4147 (_ BitVec 64) List!52559) Unit!124405)

(assert (=> b!4691891 (= lt!1851979 (lemmaGetValueImpliesTupleContained!273 lm!2023 lt!1851998 lt!1851994))))

(declare-fun apply!12347 (ListLongMap!4147 (_ BitVec 64)) List!52559)

(assert (=> b!4691891 (= lt!1851994 (apply!12347 lm!2023 lt!1851998))))

(declare-fun contains!15651 (ListLongMap!4147 (_ BitVec 64)) Bool)

(assert (=> b!4691891 (contains!15651 lm!2023 lt!1851998)))

(declare-fun lt!1851986 () Unit!124405)

(declare-fun lemmaInGenMapThenLongMapContainsHash!674 (ListLongMap!4147 K!13810 Hashable!6233) Unit!124405)

(assert (=> b!4691891 (= lt!1851986 (lemmaInGenMapThenLongMapContainsHash!674 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1851989 () Unit!124405)

(declare-fun lemmaInGenMapThenGetPairDefined!264 (ListLongMap!4147 K!13810 Hashable!6233) Unit!124405)

(assert (=> b!4691891 (= lt!1851989 (lemmaInGenMapThenGetPairDefined!264 lm!2023 key!4653 hashF!1323))))

(declare-fun tp_is_empty!30751 () Bool)

(declare-fun tp_is_empty!30749 () Bool)

(declare-fun b!4691892 () Bool)

(declare-fun e!2926982 () Bool)

(declare-fun tp!1346066 () Bool)

(assert (=> b!4691892 (= e!2926982 (and tp_is_empty!30749 tp_is_empty!30751 tp!1346066))))

(declare-fun res!1979360 () Bool)

(assert (=> start!474788 (=> (not res!1979360) (not e!2926979))))

(declare-fun forall!11337 (List!52560 Int) Bool)

(assert (=> start!474788 (= res!1979360 (forall!11337 (toList!5618 lm!2023) lambda!207619))))

(assert (=> start!474788 e!2926979))

(declare-fun e!2926981 () Bool)

(declare-fun inv!67684 (ListLongMap!4147) Bool)

(assert (=> start!474788 (and (inv!67684 lm!2023) e!2926981)))

(assert (=> start!474788 tp_is_empty!30749))

(declare-fun e!2926978 () Bool)

(assert (=> start!474788 e!2926978))

(assert (=> start!474788 true))

(assert (=> start!474788 e!2926982))

(declare-fun b!4691893 () Bool)

(declare-fun res!1979350 () Bool)

(assert (=> b!4691893 (=> (not res!1979350) (not e!2926979))))

(assert (=> b!4691893 (= res!1979350 (noDuplicateKeys!1864 oldBucket!34))))

(declare-fun b!4691894 () Bool)

(declare-fun res!1979361 () Bool)

(assert (=> b!4691894 (=> res!1979361 e!2926977)))

(assert (=> b!4691894 (= res!1979361 (not (= (removePairForKey!1459 (t!359741 oldBucket!34) key!4653) lt!1851981)))))

(declare-fun b!4691895 () Bool)

(declare-fun res!1979358 () Bool)

(assert (=> b!4691895 (=> (not res!1979358) (not e!2926972))))

(assert (=> b!4691895 (= res!1979358 ((_ is Cons!52436) (toList!5618 lm!2023)))))

(declare-fun b!4691896 () Bool)

(declare-fun tp!1346065 () Bool)

(assert (=> b!4691896 (= e!2926978 (and tp_is_empty!30749 tp_is_empty!30751 tp!1346065))))

(declare-fun b!4691897 () Bool)

(declare-fun res!1979363 () Bool)

(assert (=> b!4691897 (=> (not res!1979363) (not e!2926975))))

(assert (=> b!4691897 (= res!1979363 (allKeysSameHash!1690 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4691898 () Bool)

(assert (=> b!4691898 (= e!2926977 e!2926974)))

(declare-fun res!1979355 () Bool)

(assert (=> b!4691898 (=> res!1979355 e!2926974)))

(declare-fun lt!1851984 () ListMap!4981)

(declare-fun lt!1851976 () ListMap!4981)

(declare-fun +!2148 (ListMap!4981 tuple2!53850) ListMap!4981)

(assert (=> b!4691898 (= res!1979355 (not (eq!1023 lt!1851984 (+!2148 lt!1851976 (h!58686 oldBucket!34)))))))

(assert (=> b!4691898 (= lt!1851976 (extractMap!1890 (Cons!52436 (tuple2!53853 hash!405 lt!1851987) (t!359742 (toList!5618 lm!2023)))))))

(assert (=> b!4691898 (= lt!1851984 (extractMap!1890 (Cons!52436 lt!1851985 (t!359742 (toList!5618 lm!2023)))))))

(assert (=> b!4691898 (eq!1023 (addToMapMapFromBucket!1296 (Cons!52435 lt!1851988 lt!1851981) lt!1851993) (+!2148 (addToMapMapFromBucket!1296 lt!1851981 lt!1851993) lt!1851988))))

(declare-fun lt!1851977 () Unit!124405)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!272 (tuple2!53850 List!52559 ListMap!4981) Unit!124405)

(assert (=> b!4691898 (= lt!1851977 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!272 lt!1851988 lt!1851981 lt!1851993))))

(declare-fun head!9992 (List!52559) tuple2!53850)

(assert (=> b!4691898 (= lt!1851988 (head!9992 newBucket!218))))

(declare-fun lt!1851974 () tuple2!53850)

(assert (=> b!4691898 (eq!1023 (addToMapMapFromBucket!1296 (Cons!52435 lt!1851974 lt!1851987) lt!1851993) (+!2148 (addToMapMapFromBucket!1296 lt!1851987 lt!1851993) lt!1851974))))

(declare-fun lt!1851992 () Unit!124405)

(assert (=> b!4691898 (= lt!1851992 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!272 lt!1851974 lt!1851987 lt!1851993))))

(assert (=> b!4691898 (= lt!1851974 (head!9992 oldBucket!34))))

(declare-fun contains!15652 (ListMap!4981 K!13810) Bool)

(assert (=> b!4691898 (contains!15652 (extractMap!1890 lt!1851991) key!4653)))

(declare-fun lt!1851982 () Unit!124405)

(declare-fun lemmaListContainsThenExtractedMapContains!456 (ListLongMap!4147 K!13810 Hashable!6233) Unit!124405)

(assert (=> b!4691898 (= lt!1851982 (lemmaListContainsThenExtractedMapContains!456 lt!1851996 key!4653 hashF!1323))))

(assert (=> b!4691898 (= lt!1851996 (ListLongMap!4148 lt!1851991))))

(assert (=> b!4691898 (= lt!1851991 (Cons!52436 lt!1851980 (t!359742 (toList!5618 lm!2023))))))

(assert (=> b!4691898 (= lt!1851980 (tuple2!53853 hash!405 (t!359741 oldBucket!34)))))

(declare-fun b!4691899 () Bool)

(assert (=> b!4691899 (= e!2926979 e!2926973)))

(declare-fun res!1979353 () Bool)

(assert (=> b!4691899 (=> (not res!1979353) (not e!2926973))))

(assert (=> b!4691899 (= res!1979353 (contains!15652 lt!1851978 key!4653))))

(assert (=> b!4691899 (= lt!1851978 (extractMap!1890 (toList!5618 lm!2023)))))

(declare-fun b!4691900 () Bool)

(declare-fun res!1979354 () Bool)

(assert (=> b!4691900 (=> res!1979354 e!2926974)))

(assert (=> b!4691900 (= res!1979354 (not (eq!1023 lt!1851984 (+!2148 lt!1851976 lt!1851988))))))

(declare-fun b!4691901 () Bool)

(declare-fun tp!1346067 () Bool)

(assert (=> b!4691901 (= e!2926981 tp!1346067)))

(assert (= (and start!474788 res!1979360) b!4691893))

(assert (= (and b!4691893 res!1979350) b!4691885))

(assert (= (and b!4691885 res!1979359) b!4691889))

(assert (= (and b!4691889 res!1979362) b!4691887))

(assert (= (and b!4691887 res!1979356) b!4691899))

(assert (= (and b!4691899 res!1979353) b!4691886))

(assert (= (and b!4691886 res!1979351) b!4691897))

(assert (= (and b!4691897 res!1979363) b!4691883))

(assert (= (and b!4691883 res!1979352) b!4691890))

(assert (= (and b!4691890 res!1979364) b!4691895))

(assert (= (and b!4691895 res!1979358) b!4691884))

(assert (= (and b!4691884 (not res!1979365)) b!4691891))

(assert (= (and b!4691891 (not res!1979349)) b!4691882))

(assert (= (and b!4691882 (not res!1979348)) b!4691894))

(assert (= (and b!4691894 (not res!1979361)) b!4691898))

(assert (= (and b!4691898 (not res!1979355)) b!4691888))

(assert (= (and b!4691888 (not res!1979357)) b!4691900))

(assert (= (and b!4691900 (not res!1979354)) b!4691881))

(assert (= start!474788 b!4691901))

(assert (= (and start!474788 ((_ is Cons!52435) oldBucket!34)) b!4691896))

(assert (= (and start!474788 ((_ is Cons!52435) newBucket!218)) b!4691892))

(declare-fun m!5595571 () Bool)

(assert (=> b!4691889 m!5595571))

(declare-fun m!5595573 () Bool)

(assert (=> b!4691884 m!5595573))

(declare-fun m!5595575 () Bool)

(assert (=> b!4691884 m!5595575))

(declare-fun m!5595577 () Bool)

(assert (=> b!4691884 m!5595577))

(declare-fun m!5595579 () Bool)

(assert (=> b!4691891 m!5595579))

(declare-fun m!5595581 () Bool)

(assert (=> b!4691891 m!5595581))

(declare-fun m!5595583 () Bool)

(assert (=> b!4691891 m!5595583))

(declare-fun m!5595585 () Bool)

(assert (=> b!4691891 m!5595585))

(assert (=> b!4691891 m!5595585))

(declare-fun m!5595587 () Bool)

(assert (=> b!4691891 m!5595587))

(declare-fun m!5595589 () Bool)

(assert (=> b!4691891 m!5595589))

(declare-fun m!5595591 () Bool)

(assert (=> b!4691891 m!5595591))

(declare-fun m!5595593 () Bool)

(assert (=> b!4691891 m!5595593))

(declare-fun m!5595595 () Bool)

(assert (=> b!4691891 m!5595595))

(declare-fun m!5595597 () Bool)

(assert (=> b!4691891 m!5595597))

(declare-fun m!5595599 () Bool)

(assert (=> b!4691891 m!5595599))

(declare-fun m!5595601 () Bool)

(assert (=> b!4691891 m!5595601))

(declare-fun m!5595603 () Bool)

(assert (=> b!4691883 m!5595603))

(declare-fun m!5595605 () Bool)

(assert (=> b!4691899 m!5595605))

(declare-fun m!5595607 () Bool)

(assert (=> b!4691899 m!5595607))

(declare-fun m!5595609 () Bool)

(assert (=> b!4691881 m!5595609))

(declare-fun m!5595611 () Bool)

(assert (=> b!4691881 m!5595611))

(declare-fun m!5595613 () Bool)

(assert (=> b!4691881 m!5595613))

(assert (=> b!4691881 m!5595611))

(declare-fun m!5595615 () Bool)

(assert (=> b!4691881 m!5595615))

(assert (=> b!4691881 m!5595613))

(assert (=> b!4691881 m!5595609))

(declare-fun m!5595617 () Bool)

(assert (=> b!4691881 m!5595617))

(declare-fun m!5595619 () Bool)

(assert (=> b!4691881 m!5595619))

(declare-fun m!5595621 () Bool)

(assert (=> b!4691890 m!5595621))

(declare-fun m!5595623 () Bool)

(assert (=> start!474788 m!5595623))

(declare-fun m!5595625 () Bool)

(assert (=> start!474788 m!5595625))

(declare-fun m!5595627 () Bool)

(assert (=> b!4691898 m!5595627))

(declare-fun m!5595629 () Bool)

(assert (=> b!4691898 m!5595629))

(declare-fun m!5595631 () Bool)

(assert (=> b!4691898 m!5595631))

(declare-fun m!5595633 () Bool)

(assert (=> b!4691898 m!5595633))

(declare-fun m!5595635 () Bool)

(assert (=> b!4691898 m!5595635))

(declare-fun m!5595637 () Bool)

(assert (=> b!4691898 m!5595637))

(declare-fun m!5595639 () Bool)

(assert (=> b!4691898 m!5595639))

(declare-fun m!5595641 () Bool)

(assert (=> b!4691898 m!5595641))

(declare-fun m!5595643 () Bool)

(assert (=> b!4691898 m!5595643))

(declare-fun m!5595645 () Bool)

(assert (=> b!4691898 m!5595645))

(declare-fun m!5595647 () Bool)

(assert (=> b!4691898 m!5595647))

(assert (=> b!4691898 m!5595645))

(declare-fun m!5595649 () Bool)

(assert (=> b!4691898 m!5595649))

(declare-fun m!5595651 () Bool)

(assert (=> b!4691898 m!5595651))

(assert (=> b!4691898 m!5595633))

(assert (=> b!4691898 m!5595649))

(declare-fun m!5595653 () Bool)

(assert (=> b!4691898 m!5595653))

(declare-fun m!5595655 () Bool)

(assert (=> b!4691898 m!5595655))

(declare-fun m!5595657 () Bool)

(assert (=> b!4691898 m!5595657))

(assert (=> b!4691898 m!5595651))

(declare-fun m!5595659 () Bool)

(assert (=> b!4691898 m!5595659))

(assert (=> b!4691898 m!5595647))

(declare-fun m!5595661 () Bool)

(assert (=> b!4691898 m!5595661))

(declare-fun m!5595663 () Bool)

(assert (=> b!4691898 m!5595663))

(assert (=> b!4691898 m!5595627))

(assert (=> b!4691898 m!5595661))

(assert (=> b!4691898 m!5595655))

(declare-fun m!5595665 () Bool)

(assert (=> b!4691887 m!5595665))

(declare-fun m!5595667 () Bool)

(assert (=> b!4691886 m!5595667))

(declare-fun m!5595669 () Bool)

(assert (=> b!4691897 m!5595669))

(declare-fun m!5595671 () Bool)

(assert (=> b!4691900 m!5595671))

(assert (=> b!4691900 m!5595671))

(declare-fun m!5595673 () Bool)

(assert (=> b!4691900 m!5595673))

(declare-fun m!5595675 () Bool)

(assert (=> b!4691893 m!5595675))

(declare-fun m!5595677 () Bool)

(assert (=> b!4691885 m!5595677))

(declare-fun m!5595679 () Bool)

(assert (=> b!4691882 m!5595679))

(declare-fun m!5595681 () Bool)

(assert (=> b!4691882 m!5595681))

(declare-fun m!5595683 () Bool)

(assert (=> b!4691882 m!5595683))

(declare-fun m!5595685 () Bool)

(assert (=> b!4691894 m!5595685))

(check-sat (not b!4691891) tp_is_empty!30751 (not b!4691881) (not b!4691892) (not b!4691901) (not b!4691894) (not b!4691900) (not b!4691883) (not b!4691884) (not b!4691885) (not b!4691889) (not b!4691897) (not b!4691887) (not start!474788) (not b!4691882) (not b!4691890) (not b!4691896) tp_is_empty!30749 (not b!4691886) (not b!4691893) (not b!4691899) (not b!4691898))
(check-sat)
(get-model)

(declare-fun b!4691927 () Bool)

(declare-fun e!2927001 () Unit!124405)

(declare-fun lt!1852031 () Unit!124405)

(assert (=> b!4691927 (= e!2927001 lt!1852031)))

(declare-fun lt!1852029 () Unit!124405)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1683 (List!52559 K!13810) Unit!124405)

(assert (=> b!4691927 (= lt!1852029 (lemmaContainsKeyImpliesGetValueByKeyDefined!1683 (toList!5617 lt!1851978) key!4653))))

(declare-datatypes ((Option!12101 0))(
  ( (None!12100) (Some!12100 (v!46531 V!14056)) )
))
(declare-fun isDefined!9356 (Option!12101) Bool)

(declare-fun getValueByKey!1791 (List!52559 K!13810) Option!12101)

(assert (=> b!4691927 (isDefined!9356 (getValueByKey!1791 (toList!5617 lt!1851978) key!4653))))

(declare-fun lt!1852030 () Unit!124405)

(assert (=> b!4691927 (= lt!1852030 lt!1852029)))

(declare-fun lemmaInListThenGetKeysListContains!850 (List!52559 K!13810) Unit!124405)

(assert (=> b!4691927 (= lt!1852031 (lemmaInListThenGetKeysListContains!850 (toList!5617 lt!1851978) key!4653))))

(declare-fun call!327910 () Bool)

(assert (=> b!4691927 call!327910))

(declare-fun d!1491110 () Bool)

(declare-fun e!2927005 () Bool)

(assert (=> d!1491110 e!2927005))

(declare-fun res!1979378 () Bool)

(assert (=> d!1491110 (=> res!1979378 e!2927005)))

(declare-fun e!2927003 () Bool)

(assert (=> d!1491110 (= res!1979378 e!2927003)))

(declare-fun res!1979380 () Bool)

(assert (=> d!1491110 (=> (not res!1979380) (not e!2927003))))

(declare-fun lt!1852028 () Bool)

(assert (=> d!1491110 (= res!1979380 (not lt!1852028))))

(declare-fun lt!1852025 () Bool)

(assert (=> d!1491110 (= lt!1852028 lt!1852025)))

(declare-fun lt!1852024 () Unit!124405)

(assert (=> d!1491110 (= lt!1852024 e!2927001)))

(declare-fun c!802149 () Bool)

(assert (=> d!1491110 (= c!802149 lt!1852025)))

(declare-fun containsKey!3077 (List!52559 K!13810) Bool)

(assert (=> d!1491110 (= lt!1852025 (containsKey!3077 (toList!5617 lt!1851978) key!4653))))

(assert (=> d!1491110 (= (contains!15652 lt!1851978 key!4653) lt!1852028)))

(declare-fun b!4691928 () Bool)

(declare-fun e!2927006 () Bool)

(declare-datatypes ((List!52561 0))(
  ( (Nil!52437) (Cons!52437 (h!58690 K!13810) (t!359745 List!52561)) )
))
(declare-fun contains!15654 (List!52561 K!13810) Bool)

(declare-fun keys!18728 (ListMap!4981) List!52561)

(assert (=> b!4691928 (= e!2927006 (contains!15654 (keys!18728 lt!1851978) key!4653))))

(declare-fun b!4691929 () Bool)

(declare-fun e!2927004 () List!52561)

(assert (=> b!4691929 (= e!2927004 (keys!18728 lt!1851978))))

(declare-fun b!4691930 () Bool)

(assert (=> b!4691930 false))

(declare-fun lt!1852027 () Unit!124405)

(declare-fun lt!1852026 () Unit!124405)

(assert (=> b!4691930 (= lt!1852027 lt!1852026)))

(assert (=> b!4691930 (containsKey!3077 (toList!5617 lt!1851978) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!854 (List!52559 K!13810) Unit!124405)

(assert (=> b!4691930 (= lt!1852026 (lemmaInGetKeysListThenContainsKey!854 (toList!5617 lt!1851978) key!4653))))

(declare-fun e!2927002 () Unit!124405)

(declare-fun Unit!124419 () Unit!124405)

(assert (=> b!4691930 (= e!2927002 Unit!124419)))

(declare-fun b!4691931 () Bool)

(assert (=> b!4691931 (= e!2927001 e!2927002)))

(declare-fun c!802148 () Bool)

(assert (=> b!4691931 (= c!802148 call!327910)))

(declare-fun b!4691932 () Bool)

(assert (=> b!4691932 (= e!2927003 (not (contains!15654 (keys!18728 lt!1851978) key!4653)))))

(declare-fun b!4691933 () Bool)

(declare-fun getKeysList!855 (List!52559) List!52561)

(assert (=> b!4691933 (= e!2927004 (getKeysList!855 (toList!5617 lt!1851978)))))

(declare-fun b!4691934 () Bool)

(declare-fun Unit!124420 () Unit!124405)

(assert (=> b!4691934 (= e!2927002 Unit!124420)))

(declare-fun b!4691935 () Bool)

(assert (=> b!4691935 (= e!2927005 e!2927006)))

(declare-fun res!1979379 () Bool)

(assert (=> b!4691935 (=> (not res!1979379) (not e!2927006))))

(assert (=> b!4691935 (= res!1979379 (isDefined!9356 (getValueByKey!1791 (toList!5617 lt!1851978) key!4653)))))

(declare-fun bm!327905 () Bool)

(assert (=> bm!327905 (= call!327910 (contains!15654 e!2927004 key!4653))))

(declare-fun c!802150 () Bool)

(assert (=> bm!327905 (= c!802150 c!802149)))

(assert (= (and d!1491110 c!802149) b!4691927))

(assert (= (and d!1491110 (not c!802149)) b!4691931))

(assert (= (and b!4691931 c!802148) b!4691930))

(assert (= (and b!4691931 (not c!802148)) b!4691934))

(assert (= (or b!4691927 b!4691931) bm!327905))

(assert (= (and bm!327905 c!802150) b!4691933))

(assert (= (and bm!327905 (not c!802150)) b!4691929))

(assert (= (and d!1491110 res!1979380) b!4691932))

(assert (= (and d!1491110 (not res!1979378)) b!4691935))

(assert (= (and b!4691935 res!1979379) b!4691928))

(declare-fun m!5595703 () Bool)

(assert (=> b!4691930 m!5595703))

(declare-fun m!5595705 () Bool)

(assert (=> b!4691930 m!5595705))

(declare-fun m!5595707 () Bool)

(assert (=> b!4691927 m!5595707))

(declare-fun m!5595709 () Bool)

(assert (=> b!4691927 m!5595709))

(assert (=> b!4691927 m!5595709))

(declare-fun m!5595711 () Bool)

(assert (=> b!4691927 m!5595711))

(declare-fun m!5595713 () Bool)

(assert (=> b!4691927 m!5595713))

(assert (=> d!1491110 m!5595703))

(declare-fun m!5595715 () Bool)

(assert (=> b!4691928 m!5595715))

(assert (=> b!4691928 m!5595715))

(declare-fun m!5595717 () Bool)

(assert (=> b!4691928 m!5595717))

(declare-fun m!5595719 () Bool)

(assert (=> bm!327905 m!5595719))

(assert (=> b!4691929 m!5595715))

(assert (=> b!4691935 m!5595709))

(assert (=> b!4691935 m!5595709))

(assert (=> b!4691935 m!5595711))

(assert (=> b!4691932 m!5595715))

(assert (=> b!4691932 m!5595715))

(assert (=> b!4691932 m!5595717))

(declare-fun m!5595721 () Bool)

(assert (=> b!4691933 m!5595721))

(assert (=> b!4691899 d!1491110))

(declare-fun bs!1087750 () Bool)

(declare-fun d!1491120 () Bool)

(assert (= bs!1087750 (and d!1491120 start!474788)))

(declare-fun lambda!207632 () Int)

(assert (=> bs!1087750 (= lambda!207632 lambda!207619)))

(declare-fun lt!1852061 () ListMap!4981)

(declare-fun invariantList!1416 (List!52559) Bool)

(assert (=> d!1491120 (invariantList!1416 (toList!5617 lt!1852061))))

(declare-fun e!2927015 () ListMap!4981)

(assert (=> d!1491120 (= lt!1852061 e!2927015)))

(declare-fun c!802153 () Bool)

(assert (=> d!1491120 (= c!802153 ((_ is Cons!52436) (toList!5618 lm!2023)))))

(assert (=> d!1491120 (forall!11337 (toList!5618 lm!2023) lambda!207632)))

(assert (=> d!1491120 (= (extractMap!1890 (toList!5618 lm!2023)) lt!1852061)))

(declare-fun b!4691952 () Bool)

(assert (=> b!4691952 (= e!2927015 (addToMapMapFromBucket!1296 (_2!30220 (h!58687 (toList!5618 lm!2023))) (extractMap!1890 (t!359742 (toList!5618 lm!2023)))))))

(declare-fun b!4691953 () Bool)

(assert (=> b!4691953 (= e!2927015 (ListMap!4982 Nil!52435))))

(assert (= (and d!1491120 c!802153) b!4691952))

(assert (= (and d!1491120 (not c!802153)) b!4691953))

(declare-fun m!5595747 () Bool)

(assert (=> d!1491120 m!5595747))

(declare-fun m!5595749 () Bool)

(assert (=> d!1491120 m!5595749))

(assert (=> b!4691952 m!5595575))

(assert (=> b!4691952 m!5595575))

(declare-fun m!5595751 () Bool)

(assert (=> b!4691952 m!5595751))

(assert (=> b!4691899 d!1491120))

(declare-fun d!1491126 () Bool)

(declare-fun lt!1852076 () List!52559)

(assert (=> d!1491126 (not (containsKey!3075 lt!1852076 key!4653))))

(declare-fun e!2927034 () List!52559)

(assert (=> d!1491126 (= lt!1852076 e!2927034)))

(declare-fun c!802161 () Bool)

(assert (=> d!1491126 (= c!802161 (and ((_ is Cons!52435) oldBucket!34) (= (_1!30219 (h!58686 oldBucket!34)) key!4653)))))

(assert (=> d!1491126 (noDuplicateKeys!1864 oldBucket!34)))

(assert (=> d!1491126 (= (removePairForKey!1459 oldBucket!34 key!4653) lt!1852076)))

(declare-fun b!4691979 () Bool)

(assert (=> b!4691979 (= e!2927034 (t!359741 oldBucket!34))))

(declare-fun b!4691982 () Bool)

(declare-fun e!2927035 () List!52559)

(assert (=> b!4691982 (= e!2927035 Nil!52435)))

(declare-fun b!4691981 () Bool)

(assert (=> b!4691981 (= e!2927035 (Cons!52435 (h!58686 oldBucket!34) (removePairForKey!1459 (t!359741 oldBucket!34) key!4653)))))

(declare-fun b!4691980 () Bool)

(assert (=> b!4691980 (= e!2927034 e!2927035)))

(declare-fun c!802162 () Bool)

(assert (=> b!4691980 (= c!802162 ((_ is Cons!52435) oldBucket!34))))

(assert (= (and d!1491126 c!802161) b!4691979))

(assert (= (and d!1491126 (not c!802161)) b!4691980))

(assert (= (and b!4691980 c!802162) b!4691981))

(assert (= (and b!4691980 (not c!802162)) b!4691982))

(declare-fun m!5595763 () Bool)

(assert (=> d!1491126 m!5595763))

(assert (=> d!1491126 m!5595675))

(assert (=> b!4691981 m!5595685))

(assert (=> b!4691889 d!1491126))

(declare-fun d!1491134 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9177 (List!52559) (InoxSet tuple2!53850))

(assert (=> d!1491134 (= (eq!1023 lt!1851984 (+!2148 lt!1851976 lt!1851988)) (= (content!9177 (toList!5617 lt!1851984)) (content!9177 (toList!5617 (+!2148 lt!1851976 lt!1851988)))))))

(declare-fun bs!1087751 () Bool)

(assert (= bs!1087751 d!1491134))

(declare-fun m!5595777 () Bool)

(assert (=> bs!1087751 m!5595777))

(declare-fun m!5595781 () Bool)

(assert (=> bs!1087751 m!5595781))

(assert (=> b!4691900 d!1491134))

(declare-fun d!1491138 () Bool)

(declare-fun e!2927062 () Bool)

(assert (=> d!1491138 e!2927062))

(declare-fun res!1979429 () Bool)

(assert (=> d!1491138 (=> (not res!1979429) (not e!2927062))))

(declare-fun lt!1852091 () ListMap!4981)

(assert (=> d!1491138 (= res!1979429 (contains!15652 lt!1852091 (_1!30219 lt!1851988)))))

(declare-fun lt!1852093 () List!52559)

(assert (=> d!1491138 (= lt!1852091 (ListMap!4982 lt!1852093))))

(declare-fun lt!1852094 () Unit!124405)

(declare-fun lt!1852092 () Unit!124405)

(assert (=> d!1491138 (= lt!1852094 lt!1852092)))

(assert (=> d!1491138 (= (getValueByKey!1791 lt!1852093 (_1!30219 lt!1851988)) (Some!12100 (_2!30219 lt!1851988)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1006 (List!52559 K!13810 V!14056) Unit!124405)

(assert (=> d!1491138 (= lt!1852092 (lemmaContainsTupThenGetReturnValue!1006 lt!1852093 (_1!30219 lt!1851988) (_2!30219 lt!1851988)))))

(declare-fun insertNoDuplicatedKeys!514 (List!52559 K!13810 V!14056) List!52559)

(assert (=> d!1491138 (= lt!1852093 (insertNoDuplicatedKeys!514 (toList!5617 lt!1851976) (_1!30219 lt!1851988) (_2!30219 lt!1851988)))))

(assert (=> d!1491138 (= (+!2148 lt!1851976 lt!1851988) lt!1852091)))

(declare-fun b!4692020 () Bool)

(declare-fun res!1979430 () Bool)

(assert (=> b!4692020 (=> (not res!1979430) (not e!2927062))))

(assert (=> b!4692020 (= res!1979430 (= (getValueByKey!1791 (toList!5617 lt!1852091) (_1!30219 lt!1851988)) (Some!12100 (_2!30219 lt!1851988))))))

(declare-fun b!4692021 () Bool)

(declare-fun contains!15655 (List!52559 tuple2!53850) Bool)

(assert (=> b!4692021 (= e!2927062 (contains!15655 (toList!5617 lt!1852091) lt!1851988))))

(assert (= (and d!1491138 res!1979429) b!4692020))

(assert (= (and b!4692020 res!1979430) b!4692021))

(declare-fun m!5595795 () Bool)

(assert (=> d!1491138 m!5595795))

(declare-fun m!5595797 () Bool)

(assert (=> d!1491138 m!5595797))

(declare-fun m!5595799 () Bool)

(assert (=> d!1491138 m!5595799))

(declare-fun m!5595801 () Bool)

(assert (=> d!1491138 m!5595801))

(declare-fun m!5595803 () Bool)

(assert (=> b!4692020 m!5595803))

(declare-fun m!5595805 () Bool)

(assert (=> b!4692021 m!5595805))

(assert (=> b!4691900 d!1491138))

(declare-fun d!1491148 () Bool)

(assert (=> d!1491148 (= (head!9991 (toList!5618 lm!2023)) (h!58687 (toList!5618 lm!2023)))))

(assert (=> b!4691890 d!1491148))

(declare-fun d!1491150 () Bool)

(assert (=> d!1491150 (contains!15650 (toList!5618 lm!2023) (tuple2!53853 lt!1851998 lt!1851994))))

(declare-fun lt!1852097 () Unit!124405)

(declare-fun choose!32625 (ListLongMap!4147 (_ BitVec 64) List!52559) Unit!124405)

(assert (=> d!1491150 (= lt!1852097 (choose!32625 lm!2023 lt!1851998 lt!1851994))))

(assert (=> d!1491150 (contains!15651 lm!2023 lt!1851998)))

(assert (=> d!1491150 (= (lemmaGetValueImpliesTupleContained!273 lm!2023 lt!1851998 lt!1851994) lt!1852097)))

(declare-fun bs!1087754 () Bool)

(assert (= bs!1087754 d!1491150))

(declare-fun m!5595807 () Bool)

(assert (=> bs!1087754 m!5595807))

(declare-fun m!5595809 () Bool)

(assert (=> bs!1087754 m!5595809))

(assert (=> bs!1087754 m!5595597))

(assert (=> b!4691891 d!1491150))

(declare-fun d!1491152 () Bool)

(declare-fun lt!1852100 () Bool)

(declare-fun content!9178 (List!52560) (InoxSet tuple2!53852))

(assert (=> d!1491152 (= lt!1852100 (select (content!9178 (toList!5618 lm!2023)) lt!1851990))))

(declare-fun e!2927068 () Bool)

(assert (=> d!1491152 (= lt!1852100 e!2927068)))

(declare-fun res!1979436 () Bool)

(assert (=> d!1491152 (=> (not res!1979436) (not e!2927068))))

(assert (=> d!1491152 (= res!1979436 ((_ is Cons!52436) (toList!5618 lm!2023)))))

(assert (=> d!1491152 (= (contains!15650 (toList!5618 lm!2023) lt!1851990) lt!1852100)))

(declare-fun b!4692027 () Bool)

(declare-fun e!2927067 () Bool)

(assert (=> b!4692027 (= e!2927068 e!2927067)))

(declare-fun res!1979435 () Bool)

(assert (=> b!4692027 (=> res!1979435 e!2927067)))

(assert (=> b!4692027 (= res!1979435 (= (h!58687 (toList!5618 lm!2023)) lt!1851990))))

(declare-fun b!4692028 () Bool)

(assert (=> b!4692028 (= e!2927067 (contains!15650 (t!359742 (toList!5618 lm!2023)) lt!1851990))))

(assert (= (and d!1491152 res!1979436) b!4692027))

(assert (= (and b!4692027 (not res!1979435)) b!4692028))

(declare-fun m!5595811 () Bool)

(assert (=> d!1491152 m!5595811))

(declare-fun m!5595813 () Bool)

(assert (=> d!1491152 m!5595813))

(declare-fun m!5595815 () Bool)

(assert (=> b!4692028 m!5595815))

(assert (=> b!4691891 d!1491152))

(declare-fun b!4692045 () Bool)

(declare-fun res!1979447 () Bool)

(declare-fun e!2927079 () Bool)

(assert (=> b!4692045 (=> (not res!1979447) (not e!2927079))))

(declare-fun lt!1852103 () Option!12099)

(declare-fun get!17510 (Option!12099) tuple2!53850)

(assert (=> b!4692045 (= res!1979447 (= (_1!30219 (get!17510 lt!1852103)) key!4653))))

(declare-fun b!4692046 () Bool)

(declare-fun e!2927083 () Option!12099)

(assert (=> b!4692046 (= e!2927083 (Some!12098 (h!58686 lt!1851994)))))

(declare-fun d!1491154 () Bool)

(declare-fun e!2927081 () Bool)

(assert (=> d!1491154 e!2927081))

(declare-fun res!1979448 () Bool)

(assert (=> d!1491154 (=> res!1979448 e!2927081)))

(declare-fun e!2927082 () Bool)

(assert (=> d!1491154 (= res!1979448 e!2927082)))

(declare-fun res!1979446 () Bool)

(assert (=> d!1491154 (=> (not res!1979446) (not e!2927082))))

(declare-fun isEmpty!29100 (Option!12099) Bool)

(assert (=> d!1491154 (= res!1979446 (isEmpty!29100 lt!1852103))))

(assert (=> d!1491154 (= lt!1852103 e!2927083)))

(declare-fun c!802173 () Bool)

(assert (=> d!1491154 (= c!802173 (and ((_ is Cons!52435) lt!1851994) (= (_1!30219 (h!58686 lt!1851994)) key!4653)))))

(assert (=> d!1491154 (noDuplicateKeys!1864 lt!1851994)))

(assert (=> d!1491154 (= (getPair!468 lt!1851994 key!4653) lt!1852103)))

(declare-fun b!4692047 () Bool)

(assert (=> b!4692047 (= e!2927079 (contains!15655 lt!1851994 (get!17510 lt!1852103)))))

(declare-fun b!4692048 () Bool)

(assert (=> b!4692048 (= e!2927081 e!2927079)))

(declare-fun res!1979445 () Bool)

(assert (=> b!4692048 (=> (not res!1979445) (not e!2927079))))

(assert (=> b!4692048 (= res!1979445 (isDefined!9354 lt!1852103))))

(declare-fun b!4692049 () Bool)

(declare-fun e!2927080 () Option!12099)

(assert (=> b!4692049 (= e!2927080 None!12098)))

(declare-fun b!4692050 () Bool)

(assert (=> b!4692050 (= e!2927080 (getPair!468 (t!359741 lt!1851994) key!4653))))

(declare-fun b!4692051 () Bool)

(assert (=> b!4692051 (= e!2927083 e!2927080)))

(declare-fun c!802174 () Bool)

(assert (=> b!4692051 (= c!802174 ((_ is Cons!52435) lt!1851994))))

(declare-fun b!4692052 () Bool)

(assert (=> b!4692052 (= e!2927082 (not (containsKey!3075 lt!1851994 key!4653)))))

(assert (= (and d!1491154 c!802173) b!4692046))

(assert (= (and d!1491154 (not c!802173)) b!4692051))

(assert (= (and b!4692051 c!802174) b!4692050))

(assert (= (and b!4692051 (not c!802174)) b!4692049))

(assert (= (and d!1491154 res!1979446) b!4692052))

(assert (= (and d!1491154 (not res!1979448)) b!4692048))

(assert (= (and b!4692048 res!1979445) b!4692045))

(assert (= (and b!4692045 res!1979447) b!4692047))

(declare-fun m!5595817 () Bool)

(assert (=> b!4692052 m!5595817))

(declare-fun m!5595819 () Bool)

(assert (=> b!4692050 m!5595819))

(declare-fun m!5595821 () Bool)

(assert (=> b!4692047 m!5595821))

(assert (=> b!4692047 m!5595821))

(declare-fun m!5595823 () Bool)

(assert (=> b!4692047 m!5595823))

(declare-fun m!5595825 () Bool)

(assert (=> d!1491154 m!5595825))

(declare-fun m!5595827 () Bool)

(assert (=> d!1491154 m!5595827))

(assert (=> b!4692045 m!5595821))

(declare-fun m!5595829 () Bool)

(assert (=> b!4692048 m!5595829))

(assert (=> b!4691891 d!1491154))

(declare-fun d!1491156 () Bool)

(declare-fun e!2927088 () Bool)

(assert (=> d!1491156 e!2927088))

(declare-fun res!1979451 () Bool)

(assert (=> d!1491156 (=> res!1979451 e!2927088)))

(declare-fun lt!1852113 () Bool)

(assert (=> d!1491156 (= res!1979451 (not lt!1852113))))

(declare-fun lt!1852114 () Bool)

(assert (=> d!1491156 (= lt!1852113 lt!1852114)))

(declare-fun lt!1852112 () Unit!124405)

(declare-fun e!2927089 () Unit!124405)

(assert (=> d!1491156 (= lt!1852112 e!2927089)))

(declare-fun c!802177 () Bool)

(assert (=> d!1491156 (= c!802177 lt!1852114)))

(declare-fun containsKey!3078 (List!52560 (_ BitVec 64)) Bool)

(assert (=> d!1491156 (= lt!1852114 (containsKey!3078 (toList!5618 lm!2023) lt!1851998))))

(assert (=> d!1491156 (= (contains!15651 lm!2023 lt!1851998) lt!1852113)))

(declare-fun b!4692059 () Bool)

(declare-fun lt!1852115 () Unit!124405)

(assert (=> b!4692059 (= e!2927089 lt!1852115)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1684 (List!52560 (_ BitVec 64)) Unit!124405)

(assert (=> b!4692059 (= lt!1852115 (lemmaContainsKeyImpliesGetValueByKeyDefined!1684 (toList!5618 lm!2023) lt!1851998))))

(declare-datatypes ((Option!12103 0))(
  ( (None!12102) (Some!12102 (v!46533 List!52559)) )
))
(declare-fun isDefined!9357 (Option!12103) Bool)

(declare-fun getValueByKey!1793 (List!52560 (_ BitVec 64)) Option!12103)

(assert (=> b!4692059 (isDefined!9357 (getValueByKey!1793 (toList!5618 lm!2023) lt!1851998))))

(declare-fun b!4692060 () Bool)

(declare-fun Unit!124421 () Unit!124405)

(assert (=> b!4692060 (= e!2927089 Unit!124421)))

(declare-fun b!4692061 () Bool)

(assert (=> b!4692061 (= e!2927088 (isDefined!9357 (getValueByKey!1793 (toList!5618 lm!2023) lt!1851998)))))

(assert (= (and d!1491156 c!802177) b!4692059))

(assert (= (and d!1491156 (not c!802177)) b!4692060))

(assert (= (and d!1491156 (not res!1979451)) b!4692061))

(declare-fun m!5595831 () Bool)

(assert (=> d!1491156 m!5595831))

(declare-fun m!5595833 () Bool)

(assert (=> b!4692059 m!5595833))

(declare-fun m!5595835 () Bool)

(assert (=> b!4692059 m!5595835))

(assert (=> b!4692059 m!5595835))

(declare-fun m!5595837 () Bool)

(assert (=> b!4692059 m!5595837))

(assert (=> b!4692061 m!5595835))

(assert (=> b!4692061 m!5595835))

(assert (=> b!4692061 m!5595837))

(assert (=> b!4691891 d!1491156))

(declare-fun bs!1087755 () Bool)

(declare-fun d!1491158 () Bool)

(assert (= bs!1087755 (and d!1491158 start!474788)))

(declare-fun lambda!207635 () Int)

(assert (=> bs!1087755 (= lambda!207635 lambda!207619)))

(declare-fun bs!1087756 () Bool)

(assert (= bs!1087756 (and d!1491158 d!1491120)))

(assert (=> bs!1087756 (= lambda!207635 lambda!207632)))

(assert (=> d!1491158 (contains!15651 lm!2023 (hash!4081 hashF!1323 key!4653))))

(declare-fun lt!1852118 () Unit!124405)

(declare-fun choose!32626 (ListLongMap!4147 K!13810 Hashable!6233) Unit!124405)

(assert (=> d!1491158 (= lt!1852118 (choose!32626 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1491158 (forall!11337 (toList!5618 lm!2023) lambda!207635)))

(assert (=> d!1491158 (= (lemmaInGenMapThenLongMapContainsHash!674 lm!2023 key!4653 hashF!1323) lt!1852118)))

(declare-fun bs!1087757 () Bool)

(assert (= bs!1087757 d!1491158))

(assert (=> bs!1087757 m!5595667))

(assert (=> bs!1087757 m!5595667))

(declare-fun m!5595839 () Bool)

(assert (=> bs!1087757 m!5595839))

(declare-fun m!5595841 () Bool)

(assert (=> bs!1087757 m!5595841))

(declare-fun m!5595843 () Bool)

(assert (=> bs!1087757 m!5595843))

(assert (=> b!4691891 d!1491158))

(declare-fun bs!1087758 () Bool)

(declare-fun d!1491160 () Bool)

(assert (= bs!1087758 (and d!1491160 start!474788)))

(declare-fun lambda!207670 () Int)

(assert (=> bs!1087758 (= lambda!207670 lambda!207619)))

(declare-fun bs!1087759 () Bool)

(assert (= bs!1087759 (and d!1491160 d!1491120)))

(assert (=> bs!1087759 (= lambda!207670 lambda!207632)))

(declare-fun bs!1087760 () Bool)

(assert (= bs!1087760 (and d!1491160 d!1491158)))

(assert (=> bs!1087760 (= lambda!207670 lambda!207635)))

(declare-fun e!2927100 () Bool)

(assert (=> d!1491160 e!2927100))

(declare-fun res!1979466 () Bool)

(assert (=> d!1491160 (=> (not res!1979466) (not e!2927100))))

(assert (=> d!1491160 (= res!1979466 (forall!11337 (toList!5618 lm!2023) lambda!207670))))

(declare-fun lt!1852182 () Unit!124405)

(declare-fun choose!32627 (ListLongMap!4147 K!13810 Hashable!6233) Unit!124405)

(assert (=> d!1491160 (= lt!1852182 (choose!32627 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1491160 (forall!11337 (toList!5618 lm!2023) lambda!207670)))

(assert (=> d!1491160 (= (lemmaInGenMapThenGetPairDefined!264 lm!2023 key!4653 hashF!1323) lt!1852182)))

(declare-fun b!4692081 () Bool)

(declare-fun res!1979468 () Bool)

(assert (=> b!4692081 (=> (not res!1979468) (not e!2927100))))

(assert (=> b!4692081 (= res!1979468 (contains!15652 (extractMap!1890 (toList!5618 lm!2023)) key!4653))))

(declare-fun b!4692082 () Bool)

(assert (=> b!4692082 (= e!2927100 (isDefined!9354 (getPair!468 (apply!12347 lm!2023 (hash!4081 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1852180 () Unit!124405)

(assert (=> b!4692082 (= lt!1852180 (forallContained!3444 (toList!5618 lm!2023) lambda!207670 (tuple2!53853 (hash!4081 hashF!1323 key!4653) (apply!12347 lm!2023 (hash!4081 hashF!1323 key!4653)))))))

(declare-fun lt!1852184 () Unit!124405)

(declare-fun lt!1852181 () Unit!124405)

(assert (=> b!4692082 (= lt!1852184 lt!1852181)))

(declare-fun lt!1852183 () (_ BitVec 64))

(declare-fun lt!1852177 () List!52559)

(assert (=> b!4692082 (contains!15650 (toList!5618 lm!2023) (tuple2!53853 lt!1852183 lt!1852177))))

(assert (=> b!4692082 (= lt!1852181 (lemmaGetValueImpliesTupleContained!273 lm!2023 lt!1852183 lt!1852177))))

(declare-fun e!2927101 () Bool)

(assert (=> b!4692082 e!2927101))

(declare-fun res!1979467 () Bool)

(assert (=> b!4692082 (=> (not res!1979467) (not e!2927101))))

(assert (=> b!4692082 (= res!1979467 (contains!15651 lm!2023 lt!1852183))))

(assert (=> b!4692082 (= lt!1852177 (apply!12347 lm!2023 (hash!4081 hashF!1323 key!4653)))))

(assert (=> b!4692082 (= lt!1852183 (hash!4081 hashF!1323 key!4653))))

(declare-fun lt!1852178 () Unit!124405)

(declare-fun lt!1852179 () Unit!124405)

(assert (=> b!4692082 (= lt!1852178 lt!1852179)))

(assert (=> b!4692082 (contains!15651 lm!2023 (hash!4081 hashF!1323 key!4653))))

(assert (=> b!4692082 (= lt!1852179 (lemmaInGenMapThenLongMapContainsHash!674 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4692080 () Bool)

(declare-fun res!1979469 () Bool)

(assert (=> b!4692080 (=> (not res!1979469) (not e!2927100))))

(assert (=> b!4692080 (= res!1979469 (allKeysSameHashInMap!1778 lm!2023 hashF!1323))))

(declare-fun b!4692083 () Bool)

(assert (=> b!4692083 (= e!2927101 (= (getValueByKey!1793 (toList!5618 lm!2023) lt!1852183) (Some!12102 lt!1852177)))))

(assert (= (and d!1491160 res!1979466) b!4692080))

(assert (= (and b!4692080 res!1979469) b!4692081))

(assert (= (and b!4692081 res!1979468) b!4692082))

(assert (= (and b!4692082 res!1979467) b!4692083))

(declare-fun m!5595845 () Bool)

(assert (=> b!4692083 m!5595845))

(declare-fun m!5595847 () Bool)

(assert (=> d!1491160 m!5595847))

(declare-fun m!5595849 () Bool)

(assert (=> d!1491160 m!5595849))

(assert (=> d!1491160 m!5595847))

(assert (=> b!4692082 m!5595667))

(declare-fun m!5595851 () Bool)

(assert (=> b!4692082 m!5595851))

(assert (=> b!4692082 m!5595851))

(declare-fun m!5595853 () Bool)

(assert (=> b!4692082 m!5595853))

(declare-fun m!5595855 () Bool)

(assert (=> b!4692082 m!5595855))

(assert (=> b!4692082 m!5595667))

(assert (=> b!4692082 m!5595839))

(assert (=> b!4692082 m!5595667))

(declare-fun m!5595857 () Bool)

(assert (=> b!4692082 m!5595857))

(assert (=> b!4692082 m!5595583))

(assert (=> b!4692082 m!5595853))

(declare-fun m!5595859 () Bool)

(assert (=> b!4692082 m!5595859))

(declare-fun m!5595861 () Bool)

(assert (=> b!4692082 m!5595861))

(declare-fun m!5595863 () Bool)

(assert (=> b!4692082 m!5595863))

(assert (=> b!4692080 m!5595603))

(assert (=> b!4692081 m!5595607))

(assert (=> b!4692081 m!5595607))

(declare-fun m!5595865 () Bool)

(assert (=> b!4692081 m!5595865))

(assert (=> b!4691891 d!1491160))

(declare-fun d!1491162 () Bool)

(declare-fun res!1979477 () Bool)

(declare-fun e!2927109 () Bool)

(assert (=> d!1491162 (=> res!1979477 e!2927109)))

(assert (=> d!1491162 (= res!1979477 (and ((_ is Cons!52435) (t!359741 oldBucket!34)) (= (_1!30219 (h!58686 (t!359741 oldBucket!34))) key!4653)))))

(assert (=> d!1491162 (= (containsKey!3075 (t!359741 oldBucket!34) key!4653) e!2927109)))

(declare-fun b!4692095 () Bool)

(declare-fun e!2927110 () Bool)

(assert (=> b!4692095 (= e!2927109 e!2927110)))

(declare-fun res!1979478 () Bool)

(assert (=> b!4692095 (=> (not res!1979478) (not e!2927110))))

(assert (=> b!4692095 (= res!1979478 ((_ is Cons!52435) (t!359741 oldBucket!34)))))

(declare-fun b!4692096 () Bool)

(assert (=> b!4692096 (= e!2927110 (containsKey!3075 (t!359741 (t!359741 oldBucket!34)) key!4653))))

(assert (= (and d!1491162 (not res!1979477)) b!4692095))

(assert (= (and b!4692095 res!1979478) b!4692096))

(declare-fun m!5595867 () Bool)

(assert (=> b!4692096 m!5595867))

(assert (=> b!4691891 d!1491162))

(declare-fun d!1491164 () Bool)

(declare-fun dynLambda!21719 (Int tuple2!53852) Bool)

(assert (=> d!1491164 (dynLambda!21719 lambda!207619 lt!1851990)))

(declare-fun lt!1852208 () Unit!124405)

(declare-fun choose!32628 (List!52560 Int tuple2!53852) Unit!124405)

(assert (=> d!1491164 (= lt!1852208 (choose!32628 (toList!5618 lm!2023) lambda!207619 lt!1851990))))

(declare-fun e!2927113 () Bool)

(assert (=> d!1491164 e!2927113))

(declare-fun res!1979481 () Bool)

(assert (=> d!1491164 (=> (not res!1979481) (not e!2927113))))

(assert (=> d!1491164 (= res!1979481 (forall!11337 (toList!5618 lm!2023) lambda!207619))))

(assert (=> d!1491164 (= (forallContained!3444 (toList!5618 lm!2023) lambda!207619 lt!1851990) lt!1852208)))

(declare-fun b!4692099 () Bool)

(assert (=> b!4692099 (= e!2927113 (contains!15650 (toList!5618 lm!2023) lt!1851990))))

(assert (= (and d!1491164 res!1979481) b!4692099))

(declare-fun b_lambda!177047 () Bool)

(assert (=> (not b_lambda!177047) (not d!1491164)))

(declare-fun m!5595903 () Bool)

(assert (=> d!1491164 m!5595903))

(declare-fun m!5595905 () Bool)

(assert (=> d!1491164 m!5595905))

(assert (=> d!1491164 m!5595623))

(assert (=> b!4692099 m!5595601))

(assert (=> b!4691891 d!1491164))

(declare-fun d!1491168 () Bool)

(declare-fun res!1979482 () Bool)

(declare-fun e!2927114 () Bool)

(assert (=> d!1491168 (=> res!1979482 e!2927114)))

(assert (=> d!1491168 (= res!1979482 (and ((_ is Cons!52435) oldBucket!34) (= (_1!30219 (h!58686 oldBucket!34)) key!4653)))))

(assert (=> d!1491168 (= (containsKey!3075 oldBucket!34 key!4653) e!2927114)))

(declare-fun b!4692100 () Bool)

(declare-fun e!2927115 () Bool)

(assert (=> b!4692100 (= e!2927114 e!2927115)))

(declare-fun res!1979483 () Bool)

(assert (=> b!4692100 (=> (not res!1979483) (not e!2927115))))

(assert (=> b!4692100 (= res!1979483 ((_ is Cons!52435) oldBucket!34))))

(declare-fun b!4692101 () Bool)

(assert (=> b!4692101 (= e!2927115 (containsKey!3075 (t!359741 oldBucket!34) key!4653))))

(assert (= (and d!1491168 (not res!1979482)) b!4692100))

(assert (= (and b!4692100 res!1979483) b!4692101))

(assert (=> b!4692101 m!5595589))

(assert (=> b!4691891 d!1491168))

(declare-fun d!1491170 () Bool)

(declare-fun get!17511 (Option!12103) List!52559)

(assert (=> d!1491170 (= (apply!12347 lm!2023 lt!1851998) (get!17511 (getValueByKey!1793 (toList!5618 lm!2023) lt!1851998)))))

(declare-fun bs!1087764 () Bool)

(assert (= bs!1087764 d!1491170))

(assert (=> bs!1087764 m!5595835))

(assert (=> bs!1087764 m!5595835))

(declare-fun m!5595907 () Bool)

(assert (=> bs!1087764 m!5595907))

(assert (=> b!4691891 d!1491170))

(declare-fun d!1491172 () Bool)

(assert (=> d!1491172 (containsKey!3075 oldBucket!34 key!4653)))

(declare-fun lt!1852211 () Unit!124405)

(declare-fun choose!32629 (List!52559 K!13810 Hashable!6233) Unit!124405)

(assert (=> d!1491172 (= lt!1852211 (choose!32629 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1491172 (noDuplicateKeys!1864 oldBucket!34)))

(assert (=> d!1491172 (= (lemmaGetPairDefinedThenContainsKey!216 oldBucket!34 key!4653 hashF!1323) lt!1852211)))

(declare-fun bs!1087765 () Bool)

(assert (= bs!1087765 d!1491172))

(assert (=> bs!1087765 m!5595595))

(declare-fun m!5595909 () Bool)

(assert (=> bs!1087765 m!5595909))

(assert (=> bs!1087765 m!5595675))

(assert (=> b!4691891 d!1491172))

(declare-fun d!1491174 () Bool)

(assert (=> d!1491174 (= (isDefined!9354 (getPair!468 lt!1851994 key!4653)) (not (isEmpty!29100 (getPair!468 lt!1851994 key!4653))))))

(declare-fun bs!1087766 () Bool)

(assert (= bs!1087766 d!1491174))

(assert (=> bs!1087766 m!5595585))

(declare-fun m!5595911 () Bool)

(assert (=> bs!1087766 m!5595911))

(assert (=> b!4691891 d!1491174))

(declare-fun bs!1087771 () Bool)

(declare-fun d!1491176 () Bool)

(assert (= bs!1087771 (and d!1491176 start!474788)))

(declare-fun lambda!207682 () Int)

(assert (=> bs!1087771 (= lambda!207682 lambda!207619)))

(declare-fun bs!1087772 () Bool)

(assert (= bs!1087772 (and d!1491176 d!1491120)))

(assert (=> bs!1087772 (= lambda!207682 lambda!207632)))

(declare-fun bs!1087773 () Bool)

(assert (= bs!1087773 (and d!1491176 d!1491158)))

(assert (=> bs!1087773 (= lambda!207682 lambda!207635)))

(declare-fun bs!1087774 () Bool)

(assert (= bs!1087774 (and d!1491176 d!1491160)))

(assert (=> bs!1087774 (= lambda!207682 lambda!207670)))

(assert (=> d!1491176 (eq!1023 (extractMap!1890 (Cons!52436 (tuple2!53853 hash!405 lt!1851981) (tail!8617 (toList!5618 lt!1851996)))) (-!668 (extractMap!1890 (Cons!52436 (tuple2!53853 hash!405 (t!359741 oldBucket!34)) (tail!8617 (toList!5618 lt!1851996)))) key!4653))))

(declare-fun lt!1852220 () Unit!124405)

(declare-fun choose!32630 (ListLongMap!4147 (_ BitVec 64) List!52559 List!52559 K!13810 Hashable!6233) Unit!124405)

(assert (=> d!1491176 (= lt!1852220 (choose!32630 lt!1851996 hash!405 (t!359741 oldBucket!34) lt!1851981 key!4653 hashF!1323))))

(assert (=> d!1491176 (forall!11337 (toList!5618 lt!1851996) lambda!207682)))

(assert (=> d!1491176 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!38 lt!1851996 hash!405 (t!359741 oldBucket!34) lt!1851981 key!4653 hashF!1323) lt!1852220)))

(declare-fun bs!1087778 () Bool)

(assert (= bs!1087778 d!1491176))

(declare-fun m!5595929 () Bool)

(assert (=> bs!1087778 m!5595929))

(declare-fun m!5595931 () Bool)

(assert (=> bs!1087778 m!5595931))

(declare-fun m!5595933 () Bool)

(assert (=> bs!1087778 m!5595933))

(declare-fun m!5595935 () Bool)

(assert (=> bs!1087778 m!5595935))

(declare-fun m!5595937 () Bool)

(assert (=> bs!1087778 m!5595937))

(assert (=> bs!1087778 m!5595933))

(declare-fun m!5595941 () Bool)

(assert (=> bs!1087778 m!5595941))

(declare-fun m!5595943 () Bool)

(assert (=> bs!1087778 m!5595943))

(assert (=> bs!1087778 m!5595929))

(assert (=> bs!1087778 m!5595941))

(assert (=> b!4691881 d!1491176))

(declare-fun d!1491188 () Bool)

(declare-fun e!2927129 () Bool)

(assert (=> d!1491188 e!2927129))

(declare-fun res!1979488 () Bool)

(assert (=> d!1491188 (=> (not res!1979488) (not e!2927129))))

(declare-fun lt!1852223 () ListMap!4981)

(assert (=> d!1491188 (= res!1979488 (not (contains!15652 lt!1852223 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!336 (List!52559 K!13810) List!52559)

(assert (=> d!1491188 (= lt!1852223 (ListMap!4982 (removePresrvNoDuplicatedKeys!336 (toList!5617 (extractMap!1890 (Cons!52436 lt!1851980 lt!1851997))) key!4653)))))

(assert (=> d!1491188 (= (-!668 (extractMap!1890 (Cons!52436 lt!1851980 lt!1851997)) key!4653) lt!1852223)))

(declare-fun b!4692126 () Bool)

(declare-fun content!9179 (List!52561) (InoxSet K!13810))

(assert (=> b!4692126 (= e!2927129 (= ((_ map and) (content!9179 (keys!18728 (extractMap!1890 (Cons!52436 lt!1851980 lt!1851997)))) ((_ map not) (store ((as const (Array K!13810 Bool)) false) key!4653 true))) (content!9179 (keys!18728 lt!1852223))))))

(assert (= (and d!1491188 res!1979488) b!4692126))

(declare-fun m!5595949 () Bool)

(assert (=> d!1491188 m!5595949))

(declare-fun m!5595951 () Bool)

(assert (=> d!1491188 m!5595951))

(declare-fun m!5595953 () Bool)

(assert (=> b!4692126 m!5595953))

(declare-fun m!5595955 () Bool)

(assert (=> b!4692126 m!5595955))

(declare-fun m!5595957 () Bool)

(assert (=> b!4692126 m!5595957))

(declare-fun m!5595959 () Bool)

(assert (=> b!4692126 m!5595959))

(assert (=> b!4692126 m!5595953))

(assert (=> b!4692126 m!5595609))

(assert (=> b!4692126 m!5595957))

(declare-fun m!5595961 () Bool)

(assert (=> b!4692126 m!5595961))

(assert (=> b!4691881 d!1491188))

(declare-fun bs!1087782 () Bool)

(declare-fun d!1491192 () Bool)

(assert (= bs!1087782 (and d!1491192 d!1491160)))

(declare-fun lambda!207684 () Int)

(assert (=> bs!1087782 (= lambda!207684 lambda!207670)))

(declare-fun bs!1087783 () Bool)

(assert (= bs!1087783 (and d!1491192 start!474788)))

(assert (=> bs!1087783 (= lambda!207684 lambda!207619)))

(declare-fun bs!1087784 () Bool)

(assert (= bs!1087784 (and d!1491192 d!1491158)))

(assert (=> bs!1087784 (= lambda!207684 lambda!207635)))

(declare-fun bs!1087785 () Bool)

(assert (= bs!1087785 (and d!1491192 d!1491120)))

(assert (=> bs!1087785 (= lambda!207684 lambda!207632)))

(declare-fun bs!1087786 () Bool)

(assert (= bs!1087786 (and d!1491192 d!1491176)))

(assert (=> bs!1087786 (= lambda!207684 lambda!207682)))

(declare-fun lt!1852224 () ListMap!4981)

(assert (=> d!1491192 (invariantList!1416 (toList!5617 lt!1852224))))

(declare-fun e!2927130 () ListMap!4981)

(assert (=> d!1491192 (= lt!1852224 e!2927130)))

(declare-fun c!802190 () Bool)

(assert (=> d!1491192 (= c!802190 ((_ is Cons!52436) (Cons!52436 lt!1851980 lt!1851997)))))

(assert (=> d!1491192 (forall!11337 (Cons!52436 lt!1851980 lt!1851997) lambda!207684)))

(assert (=> d!1491192 (= (extractMap!1890 (Cons!52436 lt!1851980 lt!1851997)) lt!1852224)))

(declare-fun b!4692127 () Bool)

(assert (=> b!4692127 (= e!2927130 (addToMapMapFromBucket!1296 (_2!30220 (h!58687 (Cons!52436 lt!1851980 lt!1851997))) (extractMap!1890 (t!359742 (Cons!52436 lt!1851980 lt!1851997)))))))

(declare-fun b!4692128 () Bool)

(assert (=> b!4692128 (= e!2927130 (ListMap!4982 Nil!52435))))

(assert (= (and d!1491192 c!802190) b!4692127))

(assert (= (and d!1491192 (not c!802190)) b!4692128))

(declare-fun m!5595963 () Bool)

(assert (=> d!1491192 m!5595963))

(declare-fun m!5595965 () Bool)

(assert (=> d!1491192 m!5595965))

(declare-fun m!5595967 () Bool)

(assert (=> b!4692127 m!5595967))

(assert (=> b!4692127 m!5595967))

(declare-fun m!5595969 () Bool)

(assert (=> b!4692127 m!5595969))

(assert (=> b!4691881 d!1491192))

(declare-fun d!1491194 () Bool)

(assert (=> d!1491194 (= (eq!1023 (extractMap!1890 (Cons!52436 (tuple2!53853 hash!405 lt!1851981) lt!1851997)) (-!668 (extractMap!1890 (Cons!52436 lt!1851980 lt!1851997)) key!4653)) (= (content!9177 (toList!5617 (extractMap!1890 (Cons!52436 (tuple2!53853 hash!405 lt!1851981) lt!1851997)))) (content!9177 (toList!5617 (-!668 (extractMap!1890 (Cons!52436 lt!1851980 lt!1851997)) key!4653)))))))

(declare-fun bs!1087787 () Bool)

(assert (= bs!1087787 d!1491194))

(declare-fun m!5595971 () Bool)

(assert (=> bs!1087787 m!5595971))

(declare-fun m!5595973 () Bool)

(assert (=> bs!1087787 m!5595973))

(assert (=> b!4691881 d!1491194))

(declare-fun bs!1087788 () Bool)

(declare-fun d!1491196 () Bool)

(assert (= bs!1087788 (and d!1491196 d!1491160)))

(declare-fun lambda!207685 () Int)

(assert (=> bs!1087788 (= lambda!207685 lambda!207670)))

(declare-fun bs!1087789 () Bool)

(assert (= bs!1087789 (and d!1491196 start!474788)))

(assert (=> bs!1087789 (= lambda!207685 lambda!207619)))

(declare-fun bs!1087790 () Bool)

(assert (= bs!1087790 (and d!1491196 d!1491192)))

(assert (=> bs!1087790 (= lambda!207685 lambda!207684)))

(declare-fun bs!1087791 () Bool)

(assert (= bs!1087791 (and d!1491196 d!1491158)))

(assert (=> bs!1087791 (= lambda!207685 lambda!207635)))

(declare-fun bs!1087792 () Bool)

(assert (= bs!1087792 (and d!1491196 d!1491120)))

(assert (=> bs!1087792 (= lambda!207685 lambda!207632)))

(declare-fun bs!1087793 () Bool)

(assert (= bs!1087793 (and d!1491196 d!1491176)))

(assert (=> bs!1087793 (= lambda!207685 lambda!207682)))

(declare-fun lt!1852233 () ListMap!4981)

(assert (=> d!1491196 (invariantList!1416 (toList!5617 lt!1852233))))

(declare-fun e!2927133 () ListMap!4981)

(assert (=> d!1491196 (= lt!1852233 e!2927133)))

(declare-fun c!802191 () Bool)

(assert (=> d!1491196 (= c!802191 ((_ is Cons!52436) (Cons!52436 (tuple2!53853 hash!405 lt!1851981) lt!1851997)))))

(assert (=> d!1491196 (forall!11337 (Cons!52436 (tuple2!53853 hash!405 lt!1851981) lt!1851997) lambda!207685)))

(assert (=> d!1491196 (= (extractMap!1890 (Cons!52436 (tuple2!53853 hash!405 lt!1851981) lt!1851997)) lt!1852233)))

(declare-fun b!4692133 () Bool)

(assert (=> b!4692133 (= e!2927133 (addToMapMapFromBucket!1296 (_2!30220 (h!58687 (Cons!52436 (tuple2!53853 hash!405 lt!1851981) lt!1851997))) (extractMap!1890 (t!359742 (Cons!52436 (tuple2!53853 hash!405 lt!1851981) lt!1851997)))))))

(declare-fun b!4692134 () Bool)

(assert (=> b!4692134 (= e!2927133 (ListMap!4982 Nil!52435))))

(assert (= (and d!1491196 c!802191) b!4692133))

(assert (= (and d!1491196 (not c!802191)) b!4692134))

(declare-fun m!5595975 () Bool)

(assert (=> d!1491196 m!5595975))

(declare-fun m!5595977 () Bool)

(assert (=> d!1491196 m!5595977))

(declare-fun m!5595979 () Bool)

(assert (=> b!4692133 m!5595979))

(assert (=> b!4692133 m!5595979))

(declare-fun m!5595981 () Bool)

(assert (=> b!4692133 m!5595981))

(assert (=> b!4691881 d!1491196))

(declare-fun d!1491198 () Bool)

(assert (=> d!1491198 (= (tail!8617 lt!1851991) (t!359742 lt!1851991))))

(assert (=> b!4691881 d!1491198))

(declare-fun d!1491202 () Bool)

(declare-fun lt!1852239 () List!52559)

(assert (=> d!1491202 (not (containsKey!3075 lt!1852239 key!4653))))

(declare-fun e!2927137 () List!52559)

(assert (=> d!1491202 (= lt!1852239 e!2927137)))

(declare-fun c!802194 () Bool)

(assert (=> d!1491202 (= c!802194 (and ((_ is Cons!52435) lt!1851987) (= (_1!30219 (h!58686 lt!1851987)) key!4653)))))

(assert (=> d!1491202 (noDuplicateKeys!1864 lt!1851987)))

(assert (=> d!1491202 (= (removePairForKey!1459 lt!1851987 key!4653) lt!1852239)))

(declare-fun b!4692141 () Bool)

(assert (=> b!4692141 (= e!2927137 (t!359741 lt!1851987))))

(declare-fun b!4692144 () Bool)

(declare-fun e!2927138 () List!52559)

(assert (=> b!4692144 (= e!2927138 Nil!52435)))

(declare-fun b!4692143 () Bool)

(assert (=> b!4692143 (= e!2927138 (Cons!52435 (h!58686 lt!1851987) (removePairForKey!1459 (t!359741 lt!1851987) key!4653)))))

(declare-fun b!4692142 () Bool)

(assert (=> b!4692142 (= e!2927137 e!2927138)))

(declare-fun c!802195 () Bool)

(assert (=> b!4692142 (= c!802195 ((_ is Cons!52435) lt!1851987))))

(assert (= (and d!1491202 c!802194) b!4692141))

(assert (= (and d!1491202 (not c!802194)) b!4692142))

(assert (= (and b!4692142 c!802195) b!4692143))

(assert (= (and b!4692142 (not c!802195)) b!4692144))

(declare-fun m!5596001 () Bool)

(assert (=> d!1491202 m!5596001))

(declare-fun m!5596003 () Bool)

(assert (=> d!1491202 m!5596003))

(declare-fun m!5596005 () Bool)

(assert (=> b!4692143 m!5596005))

(assert (=> b!4691882 d!1491202))

(declare-fun d!1491206 () Bool)

(assert (=> d!1491206 (= (tail!8618 newBucket!218) (t!359741 newBucket!218))))

(assert (=> b!4691882 d!1491206))

(declare-fun d!1491212 () Bool)

(assert (=> d!1491212 (= (tail!8618 oldBucket!34) (t!359741 oldBucket!34))))

(assert (=> b!4691882 d!1491212))

(declare-fun d!1491214 () Bool)

(declare-fun res!1979503 () Bool)

(declare-fun e!2927149 () Bool)

(assert (=> d!1491214 (=> res!1979503 e!2927149)))

(assert (=> d!1491214 (= res!1979503 (not ((_ is Cons!52435) oldBucket!34)))))

(assert (=> d!1491214 (= (noDuplicateKeys!1864 oldBucket!34) e!2927149)))

(declare-fun b!4692157 () Bool)

(declare-fun e!2927150 () Bool)

(assert (=> b!4692157 (= e!2927149 e!2927150)))

(declare-fun res!1979504 () Bool)

(assert (=> b!4692157 (=> (not res!1979504) (not e!2927150))))

(assert (=> b!4692157 (= res!1979504 (not (containsKey!3075 (t!359741 oldBucket!34) (_1!30219 (h!58686 oldBucket!34)))))))

(declare-fun b!4692158 () Bool)

(assert (=> b!4692158 (= e!2927150 (noDuplicateKeys!1864 (t!359741 oldBucket!34)))))

(assert (= (and d!1491214 (not res!1979503)) b!4692157))

(assert (= (and b!4692157 res!1979504) b!4692158))

(declare-fun m!5596011 () Bool)

(assert (=> b!4692157 m!5596011))

(declare-fun m!5596013 () Bool)

(assert (=> b!4692158 m!5596013))

(assert (=> b!4691893 d!1491214))

(declare-fun bs!1087799 () Bool)

(declare-fun d!1491218 () Bool)

(assert (= bs!1087799 (and d!1491218 d!1491160)))

(declare-fun lambda!207689 () Int)

(assert (=> bs!1087799 (not (= lambda!207689 lambda!207670))))

(declare-fun bs!1087800 () Bool)

(assert (= bs!1087800 (and d!1491218 d!1491196)))

(assert (=> bs!1087800 (not (= lambda!207689 lambda!207685))))

(declare-fun bs!1087801 () Bool)

(assert (= bs!1087801 (and d!1491218 start!474788)))

(assert (=> bs!1087801 (not (= lambda!207689 lambda!207619))))

(declare-fun bs!1087803 () Bool)

(assert (= bs!1087803 (and d!1491218 d!1491192)))

(assert (=> bs!1087803 (not (= lambda!207689 lambda!207684))))

(declare-fun bs!1087805 () Bool)

(assert (= bs!1087805 (and d!1491218 d!1491158)))

(assert (=> bs!1087805 (not (= lambda!207689 lambda!207635))))

(declare-fun bs!1087806 () Bool)

(assert (= bs!1087806 (and d!1491218 d!1491120)))

(assert (=> bs!1087806 (not (= lambda!207689 lambda!207632))))

(declare-fun bs!1087808 () Bool)

(assert (= bs!1087808 (and d!1491218 d!1491176)))

(assert (=> bs!1087808 (not (= lambda!207689 lambda!207682))))

(assert (=> d!1491218 true))

(assert (=> d!1491218 (= (allKeysSameHashInMap!1778 lm!2023 hashF!1323) (forall!11337 (toList!5618 lm!2023) lambda!207689))))

(declare-fun bs!1087810 () Bool)

(assert (= bs!1087810 d!1491218))

(declare-fun m!5596025 () Bool)

(assert (=> bs!1087810 m!5596025))

(assert (=> b!4691883 d!1491218))

(declare-fun d!1491226 () Bool)

(declare-fun lt!1852262 () List!52559)

(assert (=> d!1491226 (not (containsKey!3075 lt!1852262 key!4653))))

(declare-fun e!2927156 () List!52559)

(assert (=> d!1491226 (= lt!1852262 e!2927156)))

(declare-fun c!802199 () Bool)

(assert (=> d!1491226 (= c!802199 (and ((_ is Cons!52435) (t!359741 oldBucket!34)) (= (_1!30219 (h!58686 (t!359741 oldBucket!34))) key!4653)))))

(assert (=> d!1491226 (noDuplicateKeys!1864 (t!359741 oldBucket!34))))

(assert (=> d!1491226 (= (removePairForKey!1459 (t!359741 oldBucket!34) key!4653) lt!1852262)))

(declare-fun b!4692168 () Bool)

(assert (=> b!4692168 (= e!2927156 (t!359741 (t!359741 oldBucket!34)))))

(declare-fun b!4692171 () Bool)

(declare-fun e!2927157 () List!52559)

(assert (=> b!4692171 (= e!2927157 Nil!52435)))

(declare-fun b!4692170 () Bool)

(assert (=> b!4692170 (= e!2927157 (Cons!52435 (h!58686 (t!359741 oldBucket!34)) (removePairForKey!1459 (t!359741 (t!359741 oldBucket!34)) key!4653)))))

(declare-fun b!4692169 () Bool)

(assert (=> b!4692169 (= e!2927156 e!2927157)))

(declare-fun c!802200 () Bool)

(assert (=> b!4692169 (= c!802200 ((_ is Cons!52435) (t!359741 oldBucket!34)))))

(assert (= (and d!1491226 c!802199) b!4692168))

(assert (= (and d!1491226 (not c!802199)) b!4692169))

(assert (= (and b!4692169 c!802200) b!4692170))

(assert (= (and b!4692169 (not c!802200)) b!4692171))

(declare-fun m!5596027 () Bool)

(assert (=> d!1491226 m!5596027))

(assert (=> d!1491226 m!5596013))

(declare-fun m!5596029 () Bool)

(assert (=> b!4692170 m!5596029))

(assert (=> b!4691894 d!1491226))

(declare-fun b!4692253 () Bool)

(assert (=> b!4692253 true))

(declare-fun bs!1087997 () Bool)

(declare-fun b!4692254 () Bool)

(assert (= bs!1087997 (and b!4692254 b!4692253)))

(declare-fun lambda!207749 () Int)

(declare-fun lambda!207747 () Int)

(assert (=> bs!1087997 (= lambda!207749 lambda!207747)))

(assert (=> b!4692254 true))

(declare-fun lt!1852442 () ListMap!4981)

(declare-fun lambda!207750 () Int)

(assert (=> bs!1087997 (= (= lt!1852442 lt!1851993) (= lambda!207750 lambda!207747))))

(assert (=> b!4692254 (= (= lt!1852442 lt!1851993) (= lambda!207750 lambda!207749))))

(assert (=> b!4692254 true))

(declare-fun bs!1088004 () Bool)

(declare-fun d!1491228 () Bool)

(assert (= bs!1088004 (and d!1491228 b!4692253)))

(declare-fun lambda!207751 () Int)

(declare-fun lt!1852426 () ListMap!4981)

(assert (=> bs!1088004 (= (= lt!1852426 lt!1851993) (= lambda!207751 lambda!207747))))

(declare-fun bs!1088005 () Bool)

(assert (= bs!1088005 (and d!1491228 b!4692254)))

(assert (=> bs!1088005 (= (= lt!1852426 lt!1851993) (= lambda!207751 lambda!207749))))

(assert (=> bs!1088005 (= (= lt!1852426 lt!1852442) (= lambda!207751 lambda!207750))))

(assert (=> d!1491228 true))

(declare-fun bm!327937 () Bool)

(declare-fun call!327944 () Unit!124405)

(declare-fun lemmaContainsAllItsOwnKeys!704 (ListMap!4981) Unit!124405)

(assert (=> bm!327937 (= call!327944 (lemmaContainsAllItsOwnKeys!704 lt!1851993))))

(declare-fun b!4692251 () Bool)

(declare-fun e!2927205 () Bool)

(declare-fun forall!11339 (List!52559 Int) Bool)

(assert (=> b!4692251 (= e!2927205 (forall!11339 (toList!5617 lt!1851993) lambda!207750))))

(declare-fun lt!1852434 () ListMap!4981)

(declare-fun call!327942 () Bool)

(declare-fun c!802222 () Bool)

(declare-fun bm!327938 () Bool)

(assert (=> bm!327938 (= call!327942 (forall!11339 (ite c!802222 (toList!5617 lt!1851993) (toList!5617 lt!1852434)) (ite c!802222 lambda!207747 lambda!207750)))))

(declare-fun b!4692252 () Bool)

(declare-fun res!1979545 () Bool)

(declare-fun e!2927206 () Bool)

(assert (=> b!4692252 (=> (not res!1979545) (not e!2927206))))

(assert (=> b!4692252 (= res!1979545 (forall!11339 (toList!5617 lt!1851993) lambda!207751))))

(declare-fun e!2927204 () ListMap!4981)

(assert (=> b!4692253 (= e!2927204 lt!1851993)))

(declare-fun lt!1852436 () Unit!124405)

(assert (=> b!4692253 (= lt!1852436 call!327944)))

(assert (=> b!4692253 call!327942))

(declare-fun lt!1852429 () Unit!124405)

(assert (=> b!4692253 (= lt!1852429 lt!1852436)))

(declare-fun call!327943 () Bool)

(assert (=> b!4692253 call!327943))

(declare-fun lt!1852428 () Unit!124405)

(declare-fun Unit!124444 () Unit!124405)

(assert (=> b!4692253 (= lt!1852428 Unit!124444)))

(assert (=> b!4692254 (= e!2927204 lt!1852442)))

(assert (=> b!4692254 (= lt!1852434 (+!2148 lt!1851993 (h!58686 (_2!30220 (h!58687 (toList!5618 lm!2023))))))))

(assert (=> b!4692254 (= lt!1852442 (addToMapMapFromBucket!1296 (t!359741 (_2!30220 (h!58687 (toList!5618 lm!2023)))) (+!2148 lt!1851993 (h!58686 (_2!30220 (h!58687 (toList!5618 lm!2023)))))))))

(declare-fun lt!1852439 () Unit!124405)

(assert (=> b!4692254 (= lt!1852439 call!327944)))

(assert (=> b!4692254 (forall!11339 (toList!5617 lt!1851993) lambda!207749)))

(declare-fun lt!1852433 () Unit!124405)

(assert (=> b!4692254 (= lt!1852433 lt!1852439)))

(assert (=> b!4692254 (forall!11339 (toList!5617 lt!1852434) lambda!207750)))

(declare-fun lt!1852431 () Unit!124405)

(declare-fun Unit!124445 () Unit!124405)

(assert (=> b!4692254 (= lt!1852431 Unit!124445)))

(assert (=> b!4692254 (forall!11339 (t!359741 (_2!30220 (h!58687 (toList!5618 lm!2023)))) lambda!207750)))

(declare-fun lt!1852432 () Unit!124405)

(declare-fun Unit!124446 () Unit!124405)

(assert (=> b!4692254 (= lt!1852432 Unit!124446)))

(declare-fun lt!1852444 () Unit!124405)

(declare-fun Unit!124447 () Unit!124405)

(assert (=> b!4692254 (= lt!1852444 Unit!124447)))

(declare-fun lt!1852435 () Unit!124405)

(declare-fun forallContained!3446 (List!52559 Int tuple2!53850) Unit!124405)

(assert (=> b!4692254 (= lt!1852435 (forallContained!3446 (toList!5617 lt!1852434) lambda!207750 (h!58686 (_2!30220 (h!58687 (toList!5618 lm!2023))))))))

(assert (=> b!4692254 (contains!15652 lt!1852434 (_1!30219 (h!58686 (_2!30220 (h!58687 (toList!5618 lm!2023))))))))

(declare-fun lt!1852443 () Unit!124405)

(declare-fun Unit!124448 () Unit!124405)

(assert (=> b!4692254 (= lt!1852443 Unit!124448)))

(assert (=> b!4692254 (contains!15652 lt!1852442 (_1!30219 (h!58686 (_2!30220 (h!58687 (toList!5618 lm!2023))))))))

(declare-fun lt!1852437 () Unit!124405)

(declare-fun Unit!124449 () Unit!124405)

(assert (=> b!4692254 (= lt!1852437 Unit!124449)))

(assert (=> b!4692254 (forall!11339 (_2!30220 (h!58687 (toList!5618 lm!2023))) lambda!207750)))

(declare-fun lt!1852430 () Unit!124405)

(declare-fun Unit!124450 () Unit!124405)

(assert (=> b!4692254 (= lt!1852430 Unit!124450)))

(assert (=> b!4692254 call!327942))

(declare-fun lt!1852427 () Unit!124405)

(declare-fun Unit!124451 () Unit!124405)

(assert (=> b!4692254 (= lt!1852427 Unit!124451)))

(declare-fun lt!1852446 () Unit!124405)

(declare-fun Unit!124452 () Unit!124405)

(assert (=> b!4692254 (= lt!1852446 Unit!124452)))

(declare-fun lt!1852438 () Unit!124405)

(declare-fun addForallContainsKeyThenBeforeAdding!703 (ListMap!4981 ListMap!4981 K!13810 V!14056) Unit!124405)

(assert (=> b!4692254 (= lt!1852438 (addForallContainsKeyThenBeforeAdding!703 lt!1851993 lt!1852442 (_1!30219 (h!58686 (_2!30220 (h!58687 (toList!5618 lm!2023))))) (_2!30219 (h!58686 (_2!30220 (h!58687 (toList!5618 lm!2023)))))))))

(assert (=> b!4692254 (forall!11339 (toList!5617 lt!1851993) lambda!207750)))

(declare-fun lt!1852440 () Unit!124405)

(assert (=> b!4692254 (= lt!1852440 lt!1852438)))

(assert (=> b!4692254 call!327943))

(declare-fun lt!1852445 () Unit!124405)

(declare-fun Unit!124453 () Unit!124405)

(assert (=> b!4692254 (= lt!1852445 Unit!124453)))

(declare-fun res!1979544 () Bool)

(assert (=> b!4692254 (= res!1979544 (forall!11339 (_2!30220 (h!58687 (toList!5618 lm!2023))) lambda!207750))))

(assert (=> b!4692254 (=> (not res!1979544) (not e!2927205))))

(assert (=> b!4692254 e!2927205))

(declare-fun lt!1852441 () Unit!124405)

(declare-fun Unit!124454 () Unit!124405)

(assert (=> b!4692254 (= lt!1852441 Unit!124454)))

(declare-fun bm!327939 () Bool)

(assert (=> bm!327939 (= call!327943 (forall!11339 (toList!5617 lt!1851993) (ite c!802222 lambda!207747 lambda!207750)))))

(declare-fun b!4692255 () Bool)

(assert (=> b!4692255 (= e!2927206 (invariantList!1416 (toList!5617 lt!1852426)))))

(assert (=> d!1491228 e!2927206))

(declare-fun res!1979543 () Bool)

(assert (=> d!1491228 (=> (not res!1979543) (not e!2927206))))

(assert (=> d!1491228 (= res!1979543 (forall!11339 (_2!30220 (h!58687 (toList!5618 lm!2023))) lambda!207751))))

(assert (=> d!1491228 (= lt!1852426 e!2927204)))

(assert (=> d!1491228 (= c!802222 ((_ is Nil!52435) (_2!30220 (h!58687 (toList!5618 lm!2023)))))))

(assert (=> d!1491228 (noDuplicateKeys!1864 (_2!30220 (h!58687 (toList!5618 lm!2023))))))

(assert (=> d!1491228 (= (addToMapMapFromBucket!1296 (_2!30220 (h!58687 (toList!5618 lm!2023))) lt!1851993) lt!1852426)))

(assert (= (and d!1491228 c!802222) b!4692253))

(assert (= (and d!1491228 (not c!802222)) b!4692254))

(assert (= (and b!4692254 res!1979544) b!4692251))

(assert (= (or b!4692253 b!4692254) bm!327937))

(assert (= (or b!4692253 b!4692254) bm!327939))

(assert (= (or b!4692253 b!4692254) bm!327938))

(assert (= (and d!1491228 res!1979543) b!4692252))

(assert (= (and b!4692252 res!1979545) b!4692255))

(declare-fun m!5596313 () Bool)

(assert (=> bm!327938 m!5596313))

(declare-fun m!5596315 () Bool)

(assert (=> b!4692251 m!5596315))

(declare-fun m!5596317 () Bool)

(assert (=> b!4692255 m!5596317))

(declare-fun m!5596319 () Bool)

(assert (=> bm!327939 m!5596319))

(declare-fun m!5596321 () Bool)

(assert (=> bm!327937 m!5596321))

(declare-fun m!5596323 () Bool)

(assert (=> b!4692252 m!5596323))

(declare-fun m!5596325 () Bool)

(assert (=> d!1491228 m!5596325))

(declare-fun m!5596327 () Bool)

(assert (=> d!1491228 m!5596327))

(declare-fun m!5596329 () Bool)

(assert (=> b!4692254 m!5596329))

(declare-fun m!5596331 () Bool)

(assert (=> b!4692254 m!5596331))

(declare-fun m!5596333 () Bool)

(assert (=> b!4692254 m!5596333))

(declare-fun m!5596335 () Bool)

(assert (=> b!4692254 m!5596335))

(declare-fun m!5596337 () Bool)

(assert (=> b!4692254 m!5596337))

(assert (=> b!4692254 m!5596337))

(declare-fun m!5596339 () Bool)

(assert (=> b!4692254 m!5596339))

(assert (=> b!4692254 m!5596315))

(assert (=> b!4692254 m!5596335))

(declare-fun m!5596341 () Bool)

(assert (=> b!4692254 m!5596341))

(declare-fun m!5596343 () Bool)

(assert (=> b!4692254 m!5596343))

(declare-fun m!5596345 () Bool)

(assert (=> b!4692254 m!5596345))

(declare-fun m!5596347 () Bool)

(assert (=> b!4692254 m!5596347))

(assert (=> b!4691884 d!1491228))

(declare-fun bs!1088006 () Bool)

(declare-fun d!1491286 () Bool)

(assert (= bs!1088006 (and d!1491286 d!1491160)))

(declare-fun lambda!207752 () Int)

(assert (=> bs!1088006 (= lambda!207752 lambda!207670)))

(declare-fun bs!1088007 () Bool)

(assert (= bs!1088007 (and d!1491286 d!1491196)))

(assert (=> bs!1088007 (= lambda!207752 lambda!207685)))

(declare-fun bs!1088008 () Bool)

(assert (= bs!1088008 (and d!1491286 start!474788)))

(assert (=> bs!1088008 (= lambda!207752 lambda!207619)))

(declare-fun bs!1088009 () Bool)

(assert (= bs!1088009 (and d!1491286 d!1491192)))

(assert (=> bs!1088009 (= lambda!207752 lambda!207684)))

(declare-fun bs!1088010 () Bool)

(assert (= bs!1088010 (and d!1491286 d!1491218)))

(assert (=> bs!1088010 (not (= lambda!207752 lambda!207689))))

(declare-fun bs!1088011 () Bool)

(assert (= bs!1088011 (and d!1491286 d!1491158)))

(assert (=> bs!1088011 (= lambda!207752 lambda!207635)))

(declare-fun bs!1088012 () Bool)

(assert (= bs!1088012 (and d!1491286 d!1491120)))

(assert (=> bs!1088012 (= lambda!207752 lambda!207632)))

(declare-fun bs!1088013 () Bool)

(assert (= bs!1088013 (and d!1491286 d!1491176)))

(assert (=> bs!1088013 (= lambda!207752 lambda!207682)))

(declare-fun lt!1852448 () ListMap!4981)

(assert (=> d!1491286 (invariantList!1416 (toList!5617 lt!1852448))))

(declare-fun e!2927208 () ListMap!4981)

(assert (=> d!1491286 (= lt!1852448 e!2927208)))

(declare-fun c!802224 () Bool)

(assert (=> d!1491286 (= c!802224 ((_ is Cons!52436) (t!359742 (toList!5618 lm!2023))))))

(assert (=> d!1491286 (forall!11337 (t!359742 (toList!5618 lm!2023)) lambda!207752)))

(assert (=> d!1491286 (= (extractMap!1890 (t!359742 (toList!5618 lm!2023))) lt!1852448)))

(declare-fun b!4692260 () Bool)

(assert (=> b!4692260 (= e!2927208 (addToMapMapFromBucket!1296 (_2!30220 (h!58687 (t!359742 (toList!5618 lm!2023)))) (extractMap!1890 (t!359742 (t!359742 (toList!5618 lm!2023))))))))

(declare-fun b!4692261 () Bool)

(assert (=> b!4692261 (= e!2927208 (ListMap!4982 Nil!52435))))

(assert (= (and d!1491286 c!802224) b!4692260))

(assert (= (and d!1491286 (not c!802224)) b!4692261))

(declare-fun m!5596349 () Bool)

(assert (=> d!1491286 m!5596349))

(declare-fun m!5596351 () Bool)

(assert (=> d!1491286 m!5596351))

(declare-fun m!5596353 () Bool)

(assert (=> b!4692260 m!5596353))

(assert (=> b!4692260 m!5596353))

(declare-fun m!5596355 () Bool)

(assert (=> b!4692260 m!5596355))

(assert (=> b!4691884 d!1491286))

(declare-fun d!1491288 () Bool)

(assert (=> d!1491288 (= (tail!8619 lm!2023) (ListLongMap!4148 (tail!8617 (toList!5618 lm!2023))))))

(declare-fun bs!1088014 () Bool)

(assert (= bs!1088014 d!1491288))

(declare-fun m!5596357 () Bool)

(assert (=> bs!1088014 m!5596357))

(assert (=> b!4691884 d!1491288))

(declare-fun d!1491290 () Bool)

(declare-fun res!1979546 () Bool)

(declare-fun e!2927209 () Bool)

(assert (=> d!1491290 (=> res!1979546 e!2927209)))

(assert (=> d!1491290 (= res!1979546 (not ((_ is Cons!52435) newBucket!218)))))

(assert (=> d!1491290 (= (noDuplicateKeys!1864 newBucket!218) e!2927209)))

(declare-fun b!4692262 () Bool)

(declare-fun e!2927210 () Bool)

(assert (=> b!4692262 (= e!2927209 e!2927210)))

(declare-fun res!1979547 () Bool)

(assert (=> b!4692262 (=> (not res!1979547) (not e!2927210))))

(assert (=> b!4692262 (= res!1979547 (not (containsKey!3075 (t!359741 newBucket!218) (_1!30219 (h!58686 newBucket!218)))))))

(declare-fun b!4692263 () Bool)

(assert (=> b!4692263 (= e!2927210 (noDuplicateKeys!1864 (t!359741 newBucket!218)))))

(assert (= (and d!1491290 (not res!1979546)) b!4692262))

(assert (= (and b!4692262 res!1979547) b!4692263))

(declare-fun m!5596359 () Bool)

(assert (=> b!4692262 m!5596359))

(declare-fun m!5596361 () Bool)

(assert (=> b!4692263 m!5596361))

(assert (=> b!4691885 d!1491290))

(declare-fun d!1491292 () Bool)

(declare-fun res!1979555 () Bool)

(declare-fun e!2927219 () Bool)

(assert (=> d!1491292 (=> res!1979555 e!2927219)))

(assert (=> d!1491292 (= res!1979555 ((_ is Nil!52436) (toList!5618 lm!2023)))))

(assert (=> d!1491292 (= (forall!11337 (toList!5618 lm!2023) lambda!207619) e!2927219)))

(declare-fun b!4692273 () Bool)

(declare-fun e!2927220 () Bool)

(assert (=> b!4692273 (= e!2927219 e!2927220)))

(declare-fun res!1979556 () Bool)

(assert (=> b!4692273 (=> (not res!1979556) (not e!2927220))))

(assert (=> b!4692273 (= res!1979556 (dynLambda!21719 lambda!207619 (h!58687 (toList!5618 lm!2023))))))

(declare-fun b!4692274 () Bool)

(assert (=> b!4692274 (= e!2927220 (forall!11337 (t!359742 (toList!5618 lm!2023)) lambda!207619))))

(assert (= (and d!1491292 (not res!1979555)) b!4692273))

(assert (= (and b!4692273 res!1979556) b!4692274))

(declare-fun b_lambda!177051 () Bool)

(assert (=> (not b_lambda!177051) (not b!4692273)))

(declare-fun m!5596377 () Bool)

(assert (=> b!4692273 m!5596377))

(declare-fun m!5596379 () Bool)

(assert (=> b!4692274 m!5596379))

(assert (=> start!474788 d!1491292))

(declare-fun d!1491296 () Bool)

(declare-fun isStrictlySorted!656 (List!52560) Bool)

(assert (=> d!1491296 (= (inv!67684 lm!2023) (isStrictlySorted!656 (toList!5618 lm!2023)))))

(declare-fun bs!1088027 () Bool)

(assert (= bs!1088027 d!1491296))

(declare-fun m!5596381 () Bool)

(assert (=> bs!1088027 m!5596381))

(assert (=> start!474788 d!1491296))

(declare-fun d!1491298 () Bool)

(declare-fun hash!4084 (Hashable!6233 K!13810) (_ BitVec 64))

(assert (=> d!1491298 (= (hash!4081 hashF!1323 key!4653) (hash!4084 hashF!1323 key!4653))))

(declare-fun bs!1088028 () Bool)

(assert (= bs!1088028 d!1491298))

(declare-fun m!5596391 () Bool)

(assert (=> bs!1088028 m!5596391))

(assert (=> b!4691886 d!1491298))

(declare-fun bs!1088031 () Bool)

(declare-fun d!1491300 () Bool)

(assert (= bs!1088031 (and d!1491300 b!4692253)))

(declare-fun lambda!207756 () Int)

(assert (=> bs!1088031 (not (= lambda!207756 lambda!207747))))

(declare-fun bs!1088032 () Bool)

(assert (= bs!1088032 (and d!1491300 b!4692254)))

(assert (=> bs!1088032 (not (= lambda!207756 lambda!207749))))

(assert (=> bs!1088032 (not (= lambda!207756 lambda!207750))))

(declare-fun bs!1088033 () Bool)

(assert (= bs!1088033 (and d!1491300 d!1491228)))

(assert (=> bs!1088033 (not (= lambda!207756 lambda!207751))))

(assert (=> d!1491300 true))

(assert (=> d!1491300 true))

(assert (=> d!1491300 (= (allKeysSameHash!1690 newBucket!218 hash!405 hashF!1323) (forall!11339 newBucket!218 lambda!207756))))

(declare-fun bs!1088034 () Bool)

(assert (= bs!1088034 d!1491300))

(declare-fun m!5596395 () Bool)

(assert (=> bs!1088034 m!5596395))

(assert (=> b!4691897 d!1491300))

(declare-fun bs!1088035 () Bool)

(declare-fun d!1491306 () Bool)

(assert (= bs!1088035 (and d!1491306 b!4692254)))

(declare-fun lambda!207757 () Int)

(assert (=> bs!1088035 (not (= lambda!207757 lambda!207750))))

(declare-fun bs!1088036 () Bool)

(assert (= bs!1088036 (and d!1491306 d!1491300)))

(assert (=> bs!1088036 (= lambda!207757 lambda!207756)))

(assert (=> bs!1088035 (not (= lambda!207757 lambda!207749))))

(declare-fun bs!1088037 () Bool)

(assert (= bs!1088037 (and d!1491306 b!4692253)))

(assert (=> bs!1088037 (not (= lambda!207757 lambda!207747))))

(declare-fun bs!1088038 () Bool)

(assert (= bs!1088038 (and d!1491306 d!1491228)))

(assert (=> bs!1088038 (not (= lambda!207757 lambda!207751))))

(assert (=> d!1491306 true))

(assert (=> d!1491306 true))

(assert (=> d!1491306 (= (allKeysSameHash!1690 oldBucket!34 hash!405 hashF!1323) (forall!11339 oldBucket!34 lambda!207757))))

(declare-fun bs!1088039 () Bool)

(assert (= bs!1088039 d!1491306))

(declare-fun m!5596397 () Bool)

(assert (=> bs!1088039 m!5596397))

(assert (=> b!4691887 d!1491306))

(declare-fun bs!1088040 () Bool)

(declare-fun b!4692292 () Bool)

(assert (= bs!1088040 (and b!4692292 b!4692254)))

(declare-fun lambda!207758 () Int)

(assert (=> bs!1088040 (= (= lt!1851993 lt!1852442) (= lambda!207758 lambda!207750))))

(declare-fun bs!1088041 () Bool)

(assert (= bs!1088041 (and b!4692292 d!1491306)))

(assert (=> bs!1088041 (not (= lambda!207758 lambda!207757))))

(declare-fun bs!1088042 () Bool)

(assert (= bs!1088042 (and b!4692292 d!1491300)))

(assert (=> bs!1088042 (not (= lambda!207758 lambda!207756))))

(assert (=> bs!1088040 (= lambda!207758 lambda!207749)))

(declare-fun bs!1088043 () Bool)

(assert (= bs!1088043 (and b!4692292 b!4692253)))

(assert (=> bs!1088043 (= lambda!207758 lambda!207747)))

(declare-fun bs!1088044 () Bool)

(assert (= bs!1088044 (and b!4692292 d!1491228)))

(assert (=> bs!1088044 (= (= lt!1851993 lt!1852426) (= lambda!207758 lambda!207751))))

(assert (=> b!4692292 true))

(declare-fun bs!1088045 () Bool)

(declare-fun b!4692293 () Bool)

(assert (= bs!1088045 (and b!4692293 b!4692254)))

(declare-fun lambda!207759 () Int)

(assert (=> bs!1088045 (= (= lt!1851993 lt!1852442) (= lambda!207759 lambda!207750))))

(declare-fun bs!1088046 () Bool)

(assert (= bs!1088046 (and b!4692293 d!1491306)))

(assert (=> bs!1088046 (not (= lambda!207759 lambda!207757))))

(declare-fun bs!1088047 () Bool)

(assert (= bs!1088047 (and b!4692293 d!1491300)))

(assert (=> bs!1088047 (not (= lambda!207759 lambda!207756))))

(assert (=> bs!1088045 (= lambda!207759 lambda!207749)))

(declare-fun bs!1088048 () Bool)

(assert (= bs!1088048 (and b!4692293 b!4692292)))

(assert (=> bs!1088048 (= lambda!207759 lambda!207758)))

(declare-fun bs!1088049 () Bool)

(assert (= bs!1088049 (and b!4692293 b!4692253)))

(assert (=> bs!1088049 (= lambda!207759 lambda!207747)))

(declare-fun bs!1088050 () Bool)

(assert (= bs!1088050 (and b!4692293 d!1491228)))

(assert (=> bs!1088050 (= (= lt!1851993 lt!1852426) (= lambda!207759 lambda!207751))))

(assert (=> b!4692293 true))

(declare-fun lt!1852469 () ListMap!4981)

(declare-fun lambda!207760 () Int)

(assert (=> bs!1088045 (= (= lt!1852469 lt!1852442) (= lambda!207760 lambda!207750))))

(assert (=> bs!1088046 (not (= lambda!207760 lambda!207757))))

(assert (=> b!4692293 (= (= lt!1852469 lt!1851993) (= lambda!207760 lambda!207759))))

(assert (=> bs!1088047 (not (= lambda!207760 lambda!207756))))

(assert (=> bs!1088045 (= (= lt!1852469 lt!1851993) (= lambda!207760 lambda!207749))))

(assert (=> bs!1088048 (= (= lt!1852469 lt!1851993) (= lambda!207760 lambda!207758))))

(assert (=> bs!1088049 (= (= lt!1852469 lt!1851993) (= lambda!207760 lambda!207747))))

(assert (=> bs!1088050 (= (= lt!1852469 lt!1852426) (= lambda!207760 lambda!207751))))

(assert (=> b!4692293 true))

(declare-fun bs!1088051 () Bool)

(declare-fun d!1491308 () Bool)

(assert (= bs!1088051 (and d!1491308 b!4692254)))

(declare-fun lambda!207761 () Int)

(declare-fun lt!1852453 () ListMap!4981)

(assert (=> bs!1088051 (= (= lt!1852453 lt!1852442) (= lambda!207761 lambda!207750))))

(declare-fun bs!1088052 () Bool)

(assert (= bs!1088052 (and d!1491308 d!1491306)))

(assert (=> bs!1088052 (not (= lambda!207761 lambda!207757))))

(declare-fun bs!1088053 () Bool)

(assert (= bs!1088053 (and d!1491308 b!4692293)))

(assert (=> bs!1088053 (= (= lt!1852453 lt!1852469) (= lambda!207761 lambda!207760))))

(assert (=> bs!1088053 (= (= lt!1852453 lt!1851993) (= lambda!207761 lambda!207759))))

(declare-fun bs!1088054 () Bool)

(assert (= bs!1088054 (and d!1491308 d!1491300)))

(assert (=> bs!1088054 (not (= lambda!207761 lambda!207756))))

(assert (=> bs!1088051 (= (= lt!1852453 lt!1851993) (= lambda!207761 lambda!207749))))

(declare-fun bs!1088055 () Bool)

(assert (= bs!1088055 (and d!1491308 b!4692292)))

(assert (=> bs!1088055 (= (= lt!1852453 lt!1851993) (= lambda!207761 lambda!207758))))

(declare-fun bs!1088056 () Bool)

(assert (= bs!1088056 (and d!1491308 b!4692253)))

(assert (=> bs!1088056 (= (= lt!1852453 lt!1851993) (= lambda!207761 lambda!207747))))

(declare-fun bs!1088057 () Bool)

(assert (= bs!1088057 (and d!1491308 d!1491228)))

(assert (=> bs!1088057 (= (= lt!1852453 lt!1852426) (= lambda!207761 lambda!207751))))

(assert (=> d!1491308 true))

(declare-fun bm!327940 () Bool)

(declare-fun call!327947 () Unit!124405)

(assert (=> bm!327940 (= call!327947 (lemmaContainsAllItsOwnKeys!704 lt!1851993))))

(declare-fun b!4692290 () Bool)

(declare-fun e!2927229 () Bool)

(assert (=> b!4692290 (= e!2927229 (forall!11339 (toList!5617 lt!1851993) lambda!207760))))

(declare-fun lt!1852461 () ListMap!4981)

(declare-fun bm!327941 () Bool)

(declare-fun call!327945 () Bool)

(declare-fun c!802226 () Bool)

(assert (=> bm!327941 (= call!327945 (forall!11339 (ite c!802226 (toList!5617 lt!1851993) (toList!5617 lt!1852461)) (ite c!802226 lambda!207758 lambda!207760)))))

(declare-fun b!4692291 () Bool)

(declare-fun res!1979559 () Bool)

(declare-fun e!2927230 () Bool)

(assert (=> b!4692291 (=> (not res!1979559) (not e!2927230))))

(assert (=> b!4692291 (= res!1979559 (forall!11339 (toList!5617 lt!1851993) lambda!207761))))

(declare-fun e!2927228 () ListMap!4981)

(assert (=> b!4692292 (= e!2927228 lt!1851993)))

(declare-fun lt!1852463 () Unit!124405)

(assert (=> b!4692292 (= lt!1852463 call!327947)))

(assert (=> b!4692292 call!327945))

(declare-fun lt!1852456 () Unit!124405)

(assert (=> b!4692292 (= lt!1852456 lt!1852463)))

(declare-fun call!327946 () Bool)

(assert (=> b!4692292 call!327946))

(declare-fun lt!1852455 () Unit!124405)

(declare-fun Unit!124466 () Unit!124405)

(assert (=> b!4692292 (= lt!1852455 Unit!124466)))

(assert (=> b!4692293 (= e!2927228 lt!1852469)))

(assert (=> b!4692293 (= lt!1852461 (+!2148 lt!1851993 (h!58686 lt!1851981)))))

(assert (=> b!4692293 (= lt!1852469 (addToMapMapFromBucket!1296 (t!359741 lt!1851981) (+!2148 lt!1851993 (h!58686 lt!1851981))))))

(declare-fun lt!1852466 () Unit!124405)

(assert (=> b!4692293 (= lt!1852466 call!327947)))

(assert (=> b!4692293 (forall!11339 (toList!5617 lt!1851993) lambda!207759)))

(declare-fun lt!1852460 () Unit!124405)

(assert (=> b!4692293 (= lt!1852460 lt!1852466)))

(assert (=> b!4692293 (forall!11339 (toList!5617 lt!1852461) lambda!207760)))

(declare-fun lt!1852458 () Unit!124405)

(declare-fun Unit!124467 () Unit!124405)

(assert (=> b!4692293 (= lt!1852458 Unit!124467)))

(assert (=> b!4692293 (forall!11339 (t!359741 lt!1851981) lambda!207760)))

(declare-fun lt!1852459 () Unit!124405)

(declare-fun Unit!124468 () Unit!124405)

(assert (=> b!4692293 (= lt!1852459 Unit!124468)))

(declare-fun lt!1852471 () Unit!124405)

(declare-fun Unit!124469 () Unit!124405)

(assert (=> b!4692293 (= lt!1852471 Unit!124469)))

(declare-fun lt!1852462 () Unit!124405)

(assert (=> b!4692293 (= lt!1852462 (forallContained!3446 (toList!5617 lt!1852461) lambda!207760 (h!58686 lt!1851981)))))

(assert (=> b!4692293 (contains!15652 lt!1852461 (_1!30219 (h!58686 lt!1851981)))))

(declare-fun lt!1852470 () Unit!124405)

(declare-fun Unit!124470 () Unit!124405)

(assert (=> b!4692293 (= lt!1852470 Unit!124470)))

(assert (=> b!4692293 (contains!15652 lt!1852469 (_1!30219 (h!58686 lt!1851981)))))

(declare-fun lt!1852464 () Unit!124405)

(declare-fun Unit!124471 () Unit!124405)

(assert (=> b!4692293 (= lt!1852464 Unit!124471)))

(assert (=> b!4692293 (forall!11339 lt!1851981 lambda!207760)))

(declare-fun lt!1852457 () Unit!124405)

(declare-fun Unit!124472 () Unit!124405)

(assert (=> b!4692293 (= lt!1852457 Unit!124472)))

(assert (=> b!4692293 call!327945))

(declare-fun lt!1852454 () Unit!124405)

(declare-fun Unit!124473 () Unit!124405)

(assert (=> b!4692293 (= lt!1852454 Unit!124473)))

(declare-fun lt!1852473 () Unit!124405)

(declare-fun Unit!124474 () Unit!124405)

(assert (=> b!4692293 (= lt!1852473 Unit!124474)))

(declare-fun lt!1852465 () Unit!124405)

(assert (=> b!4692293 (= lt!1852465 (addForallContainsKeyThenBeforeAdding!703 lt!1851993 lt!1852469 (_1!30219 (h!58686 lt!1851981)) (_2!30219 (h!58686 lt!1851981))))))

(assert (=> b!4692293 (forall!11339 (toList!5617 lt!1851993) lambda!207760)))

(declare-fun lt!1852467 () Unit!124405)

(assert (=> b!4692293 (= lt!1852467 lt!1852465)))

(assert (=> b!4692293 call!327946))

(declare-fun lt!1852472 () Unit!124405)

(declare-fun Unit!124475 () Unit!124405)

(assert (=> b!4692293 (= lt!1852472 Unit!124475)))

(declare-fun res!1979558 () Bool)

(assert (=> b!4692293 (= res!1979558 (forall!11339 lt!1851981 lambda!207760))))

(assert (=> b!4692293 (=> (not res!1979558) (not e!2927229))))

(assert (=> b!4692293 e!2927229))

(declare-fun lt!1852468 () Unit!124405)

(declare-fun Unit!124476 () Unit!124405)

(assert (=> b!4692293 (= lt!1852468 Unit!124476)))

(declare-fun bm!327942 () Bool)

(assert (=> bm!327942 (= call!327946 (forall!11339 (toList!5617 lt!1851993) (ite c!802226 lambda!207758 lambda!207760)))))

(declare-fun b!4692294 () Bool)

(assert (=> b!4692294 (= e!2927230 (invariantList!1416 (toList!5617 lt!1852453)))))

(assert (=> d!1491308 e!2927230))

(declare-fun res!1979557 () Bool)

(assert (=> d!1491308 (=> (not res!1979557) (not e!2927230))))

(assert (=> d!1491308 (= res!1979557 (forall!11339 lt!1851981 lambda!207761))))

(assert (=> d!1491308 (= lt!1852453 e!2927228)))

(assert (=> d!1491308 (= c!802226 ((_ is Nil!52435) lt!1851981))))

(assert (=> d!1491308 (noDuplicateKeys!1864 lt!1851981)))

(assert (=> d!1491308 (= (addToMapMapFromBucket!1296 lt!1851981 lt!1851993) lt!1852453)))

(assert (= (and d!1491308 c!802226) b!4692292))

(assert (= (and d!1491308 (not c!802226)) b!4692293))

(assert (= (and b!4692293 res!1979558) b!4692290))

(assert (= (or b!4692292 b!4692293) bm!327940))

(assert (= (or b!4692292 b!4692293) bm!327942))

(assert (= (or b!4692292 b!4692293) bm!327941))

(assert (= (and d!1491308 res!1979557) b!4692291))

(assert (= (and b!4692291 res!1979559) b!4692294))

(declare-fun m!5596399 () Bool)

(assert (=> bm!327941 m!5596399))

(declare-fun m!5596401 () Bool)

(assert (=> b!4692290 m!5596401))

(declare-fun m!5596403 () Bool)

(assert (=> b!4692294 m!5596403))

(declare-fun m!5596405 () Bool)

(assert (=> bm!327942 m!5596405))

(assert (=> bm!327940 m!5596321))

(declare-fun m!5596407 () Bool)

(assert (=> b!4692291 m!5596407))

(declare-fun m!5596409 () Bool)

(assert (=> d!1491308 m!5596409))

(declare-fun m!5596411 () Bool)

(assert (=> d!1491308 m!5596411))

(declare-fun m!5596413 () Bool)

(assert (=> b!4692293 m!5596413))

(declare-fun m!5596415 () Bool)

(assert (=> b!4692293 m!5596415))

(declare-fun m!5596417 () Bool)

(assert (=> b!4692293 m!5596417))

(declare-fun m!5596419 () Bool)

(assert (=> b!4692293 m!5596419))

(declare-fun m!5596421 () Bool)

(assert (=> b!4692293 m!5596421))

(assert (=> b!4692293 m!5596421))

(declare-fun m!5596423 () Bool)

(assert (=> b!4692293 m!5596423))

(assert (=> b!4692293 m!5596401))

(assert (=> b!4692293 m!5596419))

(declare-fun m!5596425 () Bool)

(assert (=> b!4692293 m!5596425))

(declare-fun m!5596427 () Bool)

(assert (=> b!4692293 m!5596427))

(declare-fun m!5596429 () Bool)

(assert (=> b!4692293 m!5596429))

(declare-fun m!5596431 () Bool)

(assert (=> b!4692293 m!5596431))

(assert (=> b!4691898 d!1491308))

(declare-fun bs!1088058 () Bool)

(declare-fun d!1491310 () Bool)

(assert (= bs!1088058 (and d!1491310 d!1491160)))

(declare-fun lambda!207762 () Int)

(assert (=> bs!1088058 (= lambda!207762 lambda!207670)))

(declare-fun bs!1088059 () Bool)

(assert (= bs!1088059 (and d!1491310 d!1491196)))

(assert (=> bs!1088059 (= lambda!207762 lambda!207685)))

(declare-fun bs!1088060 () Bool)

(assert (= bs!1088060 (and d!1491310 start!474788)))

(assert (=> bs!1088060 (= lambda!207762 lambda!207619)))

(declare-fun bs!1088061 () Bool)

(assert (= bs!1088061 (and d!1491310 d!1491192)))

(assert (=> bs!1088061 (= lambda!207762 lambda!207684)))

(declare-fun bs!1088062 () Bool)

(assert (= bs!1088062 (and d!1491310 d!1491218)))

(assert (=> bs!1088062 (not (= lambda!207762 lambda!207689))))

(declare-fun bs!1088063 () Bool)

(assert (= bs!1088063 (and d!1491310 d!1491120)))

(assert (=> bs!1088063 (= lambda!207762 lambda!207632)))

(declare-fun bs!1088064 () Bool)

(assert (= bs!1088064 (and d!1491310 d!1491176)))

(assert (=> bs!1088064 (= lambda!207762 lambda!207682)))

(declare-fun bs!1088065 () Bool)

(assert (= bs!1088065 (and d!1491310 d!1491286)))

(assert (=> bs!1088065 (= lambda!207762 lambda!207752)))

(declare-fun bs!1088066 () Bool)

(assert (= bs!1088066 (and d!1491310 d!1491158)))

(assert (=> bs!1088066 (= lambda!207762 lambda!207635)))

(declare-fun lt!1852474 () ListMap!4981)

(assert (=> d!1491310 (invariantList!1416 (toList!5617 lt!1852474))))

(declare-fun e!2927231 () ListMap!4981)

(assert (=> d!1491310 (= lt!1852474 e!2927231)))

(declare-fun c!802227 () Bool)

(assert (=> d!1491310 (= c!802227 ((_ is Cons!52436) lt!1851991))))

(assert (=> d!1491310 (forall!11337 lt!1851991 lambda!207762)))

(assert (=> d!1491310 (= (extractMap!1890 lt!1851991) lt!1852474)))

(declare-fun b!4692295 () Bool)

(assert (=> b!4692295 (= e!2927231 (addToMapMapFromBucket!1296 (_2!30220 (h!58687 lt!1851991)) (extractMap!1890 (t!359742 lt!1851991))))))

(declare-fun b!4692296 () Bool)

(assert (=> b!4692296 (= e!2927231 (ListMap!4982 Nil!52435))))

(assert (= (and d!1491310 c!802227) b!4692295))

(assert (= (and d!1491310 (not c!802227)) b!4692296))

(declare-fun m!5596433 () Bool)

(assert (=> d!1491310 m!5596433))

(declare-fun m!5596435 () Bool)

(assert (=> d!1491310 m!5596435))

(declare-fun m!5596437 () Bool)

(assert (=> b!4692295 m!5596437))

(assert (=> b!4692295 m!5596437))

(declare-fun m!5596439 () Bool)

(assert (=> b!4692295 m!5596439))

(assert (=> b!4691898 d!1491310))

(declare-fun d!1491312 () Bool)

(assert (=> d!1491312 (= (eq!1023 (addToMapMapFromBucket!1296 (Cons!52435 lt!1851974 lt!1851987) lt!1851993) (+!2148 (addToMapMapFromBucket!1296 lt!1851987 lt!1851993) lt!1851974)) (= (content!9177 (toList!5617 (addToMapMapFromBucket!1296 (Cons!52435 lt!1851974 lt!1851987) lt!1851993))) (content!9177 (toList!5617 (+!2148 (addToMapMapFromBucket!1296 lt!1851987 lt!1851993) lt!1851974)))))))

(declare-fun bs!1088067 () Bool)

(assert (= bs!1088067 d!1491312))

(declare-fun m!5596441 () Bool)

(assert (=> bs!1088067 m!5596441))

(declare-fun m!5596443 () Bool)

(assert (=> bs!1088067 m!5596443))

(assert (=> b!4691898 d!1491312))

(declare-fun d!1491314 () Bool)

(assert (=> d!1491314 (eq!1023 (addToMapMapFromBucket!1296 (Cons!52435 lt!1851988 lt!1851981) lt!1851993) (+!2148 (addToMapMapFromBucket!1296 lt!1851981 lt!1851993) lt!1851988))))

(declare-fun lt!1852477 () Unit!124405)

(declare-fun choose!32633 (tuple2!53850 List!52559 ListMap!4981) Unit!124405)

(assert (=> d!1491314 (= lt!1852477 (choose!32633 lt!1851988 lt!1851981 lt!1851993))))

(assert (=> d!1491314 (noDuplicateKeys!1864 lt!1851981)))

(assert (=> d!1491314 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!272 lt!1851988 lt!1851981 lt!1851993) lt!1852477)))

(declare-fun bs!1088068 () Bool)

(assert (= bs!1088068 d!1491314))

(assert (=> bs!1088068 m!5595633))

(assert (=> bs!1088068 m!5595649))

(assert (=> bs!1088068 m!5595653))

(declare-fun m!5596445 () Bool)

(assert (=> bs!1088068 m!5596445))

(assert (=> bs!1088068 m!5595645))

(assert (=> bs!1088068 m!5596411))

(assert (=> bs!1088068 m!5595633))

(assert (=> bs!1088068 m!5595645))

(assert (=> bs!1088068 m!5595649))

(assert (=> b!4691898 d!1491314))

(declare-fun d!1491316 () Bool)

(declare-fun e!2927232 () Bool)

(assert (=> d!1491316 e!2927232))

(declare-fun res!1979560 () Bool)

(assert (=> d!1491316 (=> (not res!1979560) (not e!2927232))))

(declare-fun lt!1852478 () ListMap!4981)

(assert (=> d!1491316 (= res!1979560 (contains!15652 lt!1852478 (_1!30219 (h!58686 oldBucket!34))))))

(declare-fun lt!1852480 () List!52559)

(assert (=> d!1491316 (= lt!1852478 (ListMap!4982 lt!1852480))))

(declare-fun lt!1852481 () Unit!124405)

(declare-fun lt!1852479 () Unit!124405)

(assert (=> d!1491316 (= lt!1852481 lt!1852479)))

(assert (=> d!1491316 (= (getValueByKey!1791 lt!1852480 (_1!30219 (h!58686 oldBucket!34))) (Some!12100 (_2!30219 (h!58686 oldBucket!34))))))

(assert (=> d!1491316 (= lt!1852479 (lemmaContainsTupThenGetReturnValue!1006 lt!1852480 (_1!30219 (h!58686 oldBucket!34)) (_2!30219 (h!58686 oldBucket!34))))))

(assert (=> d!1491316 (= lt!1852480 (insertNoDuplicatedKeys!514 (toList!5617 lt!1851976) (_1!30219 (h!58686 oldBucket!34)) (_2!30219 (h!58686 oldBucket!34))))))

(assert (=> d!1491316 (= (+!2148 lt!1851976 (h!58686 oldBucket!34)) lt!1852478)))

(declare-fun b!4692297 () Bool)

(declare-fun res!1979561 () Bool)

(assert (=> b!4692297 (=> (not res!1979561) (not e!2927232))))

(assert (=> b!4692297 (= res!1979561 (= (getValueByKey!1791 (toList!5617 lt!1852478) (_1!30219 (h!58686 oldBucket!34))) (Some!12100 (_2!30219 (h!58686 oldBucket!34)))))))

(declare-fun b!4692298 () Bool)

(assert (=> b!4692298 (= e!2927232 (contains!15655 (toList!5617 lt!1852478) (h!58686 oldBucket!34)))))

(assert (= (and d!1491316 res!1979560) b!4692297))

(assert (= (and b!4692297 res!1979561) b!4692298))

(declare-fun m!5596447 () Bool)

(assert (=> d!1491316 m!5596447))

(declare-fun m!5596449 () Bool)

(assert (=> d!1491316 m!5596449))

(declare-fun m!5596451 () Bool)

(assert (=> d!1491316 m!5596451))

(declare-fun m!5596453 () Bool)

(assert (=> d!1491316 m!5596453))

(declare-fun m!5596455 () Bool)

(assert (=> b!4692297 m!5596455))

(declare-fun m!5596457 () Bool)

(assert (=> b!4692298 m!5596457))

(assert (=> b!4691898 d!1491316))

(declare-fun bs!1088069 () Bool)

(declare-fun b!4692301 () Bool)

(assert (= bs!1088069 (and b!4692301 b!4692254)))

(declare-fun lambda!207763 () Int)

(assert (=> bs!1088069 (= (= lt!1851993 lt!1852442) (= lambda!207763 lambda!207750))))

(declare-fun bs!1088070 () Bool)

(assert (= bs!1088070 (and b!4692301 d!1491306)))

(assert (=> bs!1088070 (not (= lambda!207763 lambda!207757))))

(declare-fun bs!1088071 () Bool)

(assert (= bs!1088071 (and b!4692301 b!4692293)))

(assert (=> bs!1088071 (= (= lt!1851993 lt!1852469) (= lambda!207763 lambda!207760))))

(assert (=> bs!1088071 (= lambda!207763 lambda!207759)))

(declare-fun bs!1088072 () Bool)

(assert (= bs!1088072 (and b!4692301 d!1491300)))

(assert (=> bs!1088072 (not (= lambda!207763 lambda!207756))))

(assert (=> bs!1088069 (= lambda!207763 lambda!207749)))

(declare-fun bs!1088073 () Bool)

(assert (= bs!1088073 (and b!4692301 b!4692292)))

(assert (=> bs!1088073 (= lambda!207763 lambda!207758)))

(declare-fun bs!1088074 () Bool)

(assert (= bs!1088074 (and b!4692301 b!4692253)))

(assert (=> bs!1088074 (= lambda!207763 lambda!207747)))

(declare-fun bs!1088075 () Bool)

(assert (= bs!1088075 (and b!4692301 d!1491228)))

(assert (=> bs!1088075 (= (= lt!1851993 lt!1852426) (= lambda!207763 lambda!207751))))

(declare-fun bs!1088076 () Bool)

(assert (= bs!1088076 (and b!4692301 d!1491308)))

(assert (=> bs!1088076 (= (= lt!1851993 lt!1852453) (= lambda!207763 lambda!207761))))

(assert (=> b!4692301 true))

(declare-fun bs!1088077 () Bool)

(declare-fun b!4692302 () Bool)

(assert (= bs!1088077 (and b!4692302 b!4692254)))

(declare-fun lambda!207764 () Int)

(assert (=> bs!1088077 (= (= lt!1851993 lt!1852442) (= lambda!207764 lambda!207750))))

(declare-fun bs!1088078 () Bool)

(assert (= bs!1088078 (and b!4692302 d!1491306)))

(assert (=> bs!1088078 (not (= lambda!207764 lambda!207757))))

(declare-fun bs!1088079 () Bool)

(assert (= bs!1088079 (and b!4692302 b!4692293)))

(assert (=> bs!1088079 (= (= lt!1851993 lt!1852469) (= lambda!207764 lambda!207760))))

(assert (=> bs!1088079 (= lambda!207764 lambda!207759)))

(declare-fun bs!1088080 () Bool)

(assert (= bs!1088080 (and b!4692302 d!1491300)))

(assert (=> bs!1088080 (not (= lambda!207764 lambda!207756))))

(declare-fun bs!1088081 () Bool)

(assert (= bs!1088081 (and b!4692302 b!4692301)))

(assert (=> bs!1088081 (= lambda!207764 lambda!207763)))

(assert (=> bs!1088077 (= lambda!207764 lambda!207749)))

(declare-fun bs!1088082 () Bool)

(assert (= bs!1088082 (and b!4692302 b!4692292)))

(assert (=> bs!1088082 (= lambda!207764 lambda!207758)))

(declare-fun bs!1088083 () Bool)

(assert (= bs!1088083 (and b!4692302 b!4692253)))

(assert (=> bs!1088083 (= lambda!207764 lambda!207747)))

(declare-fun bs!1088084 () Bool)

(assert (= bs!1088084 (and b!4692302 d!1491228)))

(assert (=> bs!1088084 (= (= lt!1851993 lt!1852426) (= lambda!207764 lambda!207751))))

(declare-fun bs!1088085 () Bool)

(assert (= bs!1088085 (and b!4692302 d!1491308)))

(assert (=> bs!1088085 (= (= lt!1851993 lt!1852453) (= lambda!207764 lambda!207761))))

(assert (=> b!4692302 true))

(declare-fun lambda!207765 () Int)

(declare-fun lt!1852498 () ListMap!4981)

(assert (=> bs!1088077 (= (= lt!1852498 lt!1852442) (= lambda!207765 lambda!207750))))

(assert (=> bs!1088078 (not (= lambda!207765 lambda!207757))))

(assert (=> bs!1088079 (= (= lt!1852498 lt!1852469) (= lambda!207765 lambda!207760))))

(assert (=> bs!1088079 (= (= lt!1852498 lt!1851993) (= lambda!207765 lambda!207759))))

(assert (=> bs!1088080 (not (= lambda!207765 lambda!207756))))

(assert (=> bs!1088081 (= (= lt!1852498 lt!1851993) (= lambda!207765 lambda!207763))))

(assert (=> bs!1088077 (= (= lt!1852498 lt!1851993) (= lambda!207765 lambda!207749))))

(assert (=> bs!1088082 (= (= lt!1852498 lt!1851993) (= lambda!207765 lambda!207758))))

(assert (=> bs!1088083 (= (= lt!1852498 lt!1851993) (= lambda!207765 lambda!207747))))

(assert (=> bs!1088084 (= (= lt!1852498 lt!1852426) (= lambda!207765 lambda!207751))))

(assert (=> b!4692302 (= (= lt!1852498 lt!1851993) (= lambda!207765 lambda!207764))))

(assert (=> bs!1088085 (= (= lt!1852498 lt!1852453) (= lambda!207765 lambda!207761))))

(assert (=> b!4692302 true))

(declare-fun bs!1088086 () Bool)

(declare-fun d!1491318 () Bool)

(assert (= bs!1088086 (and d!1491318 b!4692254)))

(declare-fun lt!1852482 () ListMap!4981)

(declare-fun lambda!207766 () Int)

(assert (=> bs!1088086 (= (= lt!1852482 lt!1852442) (= lambda!207766 lambda!207750))))

(declare-fun bs!1088087 () Bool)

(assert (= bs!1088087 (and d!1491318 d!1491306)))

(assert (=> bs!1088087 (not (= lambda!207766 lambda!207757))))

(declare-fun bs!1088088 () Bool)

(assert (= bs!1088088 (and d!1491318 b!4692293)))

(assert (=> bs!1088088 (= (= lt!1852482 lt!1852469) (= lambda!207766 lambda!207760))))

(assert (=> bs!1088088 (= (= lt!1852482 lt!1851993) (= lambda!207766 lambda!207759))))

(declare-fun bs!1088089 () Bool)

(assert (= bs!1088089 (and d!1491318 d!1491300)))

(assert (=> bs!1088089 (not (= lambda!207766 lambda!207756))))

(declare-fun bs!1088090 () Bool)

(assert (= bs!1088090 (and d!1491318 b!4692301)))

(assert (=> bs!1088090 (= (= lt!1852482 lt!1851993) (= lambda!207766 lambda!207763))))

(assert (=> bs!1088086 (= (= lt!1852482 lt!1851993) (= lambda!207766 lambda!207749))))

(declare-fun bs!1088091 () Bool)

(assert (= bs!1088091 (and d!1491318 b!4692292)))

(assert (=> bs!1088091 (= (= lt!1852482 lt!1851993) (= lambda!207766 lambda!207758))))

(declare-fun bs!1088092 () Bool)

(assert (= bs!1088092 (and d!1491318 b!4692253)))

(assert (=> bs!1088092 (= (= lt!1852482 lt!1851993) (= lambda!207766 lambda!207747))))

(declare-fun bs!1088093 () Bool)

(assert (= bs!1088093 (and d!1491318 d!1491228)))

(assert (=> bs!1088093 (= (= lt!1852482 lt!1852426) (= lambda!207766 lambda!207751))))

(declare-fun bs!1088094 () Bool)

(assert (= bs!1088094 (and d!1491318 b!4692302)))

(assert (=> bs!1088094 (= (= lt!1852482 lt!1851993) (= lambda!207766 lambda!207764))))

(assert (=> bs!1088094 (= (= lt!1852482 lt!1852498) (= lambda!207766 lambda!207765))))

(declare-fun bs!1088095 () Bool)

(assert (= bs!1088095 (and d!1491318 d!1491308)))

(assert (=> bs!1088095 (= (= lt!1852482 lt!1852453) (= lambda!207766 lambda!207761))))

(assert (=> d!1491318 true))

(declare-fun bm!327943 () Bool)

(declare-fun call!327950 () Unit!124405)

(assert (=> bm!327943 (= call!327950 (lemmaContainsAllItsOwnKeys!704 lt!1851993))))

(declare-fun b!4692299 () Bool)

(declare-fun e!2927234 () Bool)

(assert (=> b!4692299 (= e!2927234 (forall!11339 (toList!5617 lt!1851993) lambda!207765))))

(declare-fun call!327948 () Bool)

(declare-fun c!802228 () Bool)

(declare-fun lt!1852490 () ListMap!4981)

(declare-fun bm!327944 () Bool)

(assert (=> bm!327944 (= call!327948 (forall!11339 (ite c!802228 (toList!5617 lt!1851993) (toList!5617 lt!1852490)) (ite c!802228 lambda!207763 lambda!207765)))))

(declare-fun b!4692300 () Bool)

(declare-fun res!1979564 () Bool)

(declare-fun e!2927235 () Bool)

(assert (=> b!4692300 (=> (not res!1979564) (not e!2927235))))

(assert (=> b!4692300 (= res!1979564 (forall!11339 (toList!5617 lt!1851993) lambda!207766))))

(declare-fun e!2927233 () ListMap!4981)

(assert (=> b!4692301 (= e!2927233 lt!1851993)))

(declare-fun lt!1852492 () Unit!124405)

(assert (=> b!4692301 (= lt!1852492 call!327950)))

(assert (=> b!4692301 call!327948))

(declare-fun lt!1852485 () Unit!124405)

(assert (=> b!4692301 (= lt!1852485 lt!1852492)))

(declare-fun call!327949 () Bool)

(assert (=> b!4692301 call!327949))

(declare-fun lt!1852484 () Unit!124405)

(declare-fun Unit!124477 () Unit!124405)

(assert (=> b!4692301 (= lt!1852484 Unit!124477)))

(assert (=> b!4692302 (= e!2927233 lt!1852498)))

(assert (=> b!4692302 (= lt!1852490 (+!2148 lt!1851993 (h!58686 (Cons!52435 lt!1851988 lt!1851981))))))

(assert (=> b!4692302 (= lt!1852498 (addToMapMapFromBucket!1296 (t!359741 (Cons!52435 lt!1851988 lt!1851981)) (+!2148 lt!1851993 (h!58686 (Cons!52435 lt!1851988 lt!1851981)))))))

(declare-fun lt!1852495 () Unit!124405)

(assert (=> b!4692302 (= lt!1852495 call!327950)))

(assert (=> b!4692302 (forall!11339 (toList!5617 lt!1851993) lambda!207764)))

(declare-fun lt!1852489 () Unit!124405)

(assert (=> b!4692302 (= lt!1852489 lt!1852495)))

(assert (=> b!4692302 (forall!11339 (toList!5617 lt!1852490) lambda!207765)))

(declare-fun lt!1852487 () Unit!124405)

(declare-fun Unit!124481 () Unit!124405)

(assert (=> b!4692302 (= lt!1852487 Unit!124481)))

(assert (=> b!4692302 (forall!11339 (t!359741 (Cons!52435 lt!1851988 lt!1851981)) lambda!207765)))

(declare-fun lt!1852488 () Unit!124405)

(declare-fun Unit!124482 () Unit!124405)

(assert (=> b!4692302 (= lt!1852488 Unit!124482)))

(declare-fun lt!1852500 () Unit!124405)

(declare-fun Unit!124483 () Unit!124405)

(assert (=> b!4692302 (= lt!1852500 Unit!124483)))

(declare-fun lt!1852491 () Unit!124405)

(assert (=> b!4692302 (= lt!1852491 (forallContained!3446 (toList!5617 lt!1852490) lambda!207765 (h!58686 (Cons!52435 lt!1851988 lt!1851981))))))

(assert (=> b!4692302 (contains!15652 lt!1852490 (_1!30219 (h!58686 (Cons!52435 lt!1851988 lt!1851981))))))

(declare-fun lt!1852499 () Unit!124405)

(declare-fun Unit!124486 () Unit!124405)

(assert (=> b!4692302 (= lt!1852499 Unit!124486)))

(assert (=> b!4692302 (contains!15652 lt!1852498 (_1!30219 (h!58686 (Cons!52435 lt!1851988 lt!1851981))))))

(declare-fun lt!1852493 () Unit!124405)

(declare-fun Unit!124488 () Unit!124405)

(assert (=> b!4692302 (= lt!1852493 Unit!124488)))

(assert (=> b!4692302 (forall!11339 (Cons!52435 lt!1851988 lt!1851981) lambda!207765)))

(declare-fun lt!1852486 () Unit!124405)

(declare-fun Unit!124490 () Unit!124405)

(assert (=> b!4692302 (= lt!1852486 Unit!124490)))

(assert (=> b!4692302 call!327948))

(declare-fun lt!1852483 () Unit!124405)

(declare-fun Unit!124492 () Unit!124405)

(assert (=> b!4692302 (= lt!1852483 Unit!124492)))

(declare-fun lt!1852502 () Unit!124405)

(declare-fun Unit!124493 () Unit!124405)

(assert (=> b!4692302 (= lt!1852502 Unit!124493)))

(declare-fun lt!1852494 () Unit!124405)

(assert (=> b!4692302 (= lt!1852494 (addForallContainsKeyThenBeforeAdding!703 lt!1851993 lt!1852498 (_1!30219 (h!58686 (Cons!52435 lt!1851988 lt!1851981))) (_2!30219 (h!58686 (Cons!52435 lt!1851988 lt!1851981)))))))

(assert (=> b!4692302 (forall!11339 (toList!5617 lt!1851993) lambda!207765)))

(declare-fun lt!1852496 () Unit!124405)

(assert (=> b!4692302 (= lt!1852496 lt!1852494)))

(assert (=> b!4692302 call!327949))

(declare-fun lt!1852501 () Unit!124405)

(declare-fun Unit!124495 () Unit!124405)

(assert (=> b!4692302 (= lt!1852501 Unit!124495)))

(declare-fun res!1979563 () Bool)

(assert (=> b!4692302 (= res!1979563 (forall!11339 (Cons!52435 lt!1851988 lt!1851981) lambda!207765))))

(assert (=> b!4692302 (=> (not res!1979563) (not e!2927234))))

(assert (=> b!4692302 e!2927234))

(declare-fun lt!1852497 () Unit!124405)

(declare-fun Unit!124497 () Unit!124405)

(assert (=> b!4692302 (= lt!1852497 Unit!124497)))

(declare-fun bm!327945 () Bool)

(assert (=> bm!327945 (= call!327949 (forall!11339 (toList!5617 lt!1851993) (ite c!802228 lambda!207763 lambda!207765)))))

(declare-fun b!4692303 () Bool)

(assert (=> b!4692303 (= e!2927235 (invariantList!1416 (toList!5617 lt!1852482)))))

(assert (=> d!1491318 e!2927235))

(declare-fun res!1979562 () Bool)

(assert (=> d!1491318 (=> (not res!1979562) (not e!2927235))))

(assert (=> d!1491318 (= res!1979562 (forall!11339 (Cons!52435 lt!1851988 lt!1851981) lambda!207766))))

(assert (=> d!1491318 (= lt!1852482 e!2927233)))

(assert (=> d!1491318 (= c!802228 ((_ is Nil!52435) (Cons!52435 lt!1851988 lt!1851981)))))

(assert (=> d!1491318 (noDuplicateKeys!1864 (Cons!52435 lt!1851988 lt!1851981))))

(assert (=> d!1491318 (= (addToMapMapFromBucket!1296 (Cons!52435 lt!1851988 lt!1851981) lt!1851993) lt!1852482)))

(assert (= (and d!1491318 c!802228) b!4692301))

(assert (= (and d!1491318 (not c!802228)) b!4692302))

(assert (= (and b!4692302 res!1979563) b!4692299))

(assert (= (or b!4692301 b!4692302) bm!327943))

(assert (= (or b!4692301 b!4692302) bm!327945))

(assert (= (or b!4692301 b!4692302) bm!327944))

(assert (= (and d!1491318 res!1979562) b!4692300))

(assert (= (and b!4692300 res!1979564) b!4692303))

(declare-fun m!5596459 () Bool)

(assert (=> bm!327944 m!5596459))

(declare-fun m!5596461 () Bool)

(assert (=> b!4692299 m!5596461))

(declare-fun m!5596463 () Bool)

(assert (=> b!4692303 m!5596463))

(declare-fun m!5596465 () Bool)

(assert (=> bm!327945 m!5596465))

(assert (=> bm!327943 m!5596321))

(declare-fun m!5596467 () Bool)

(assert (=> b!4692300 m!5596467))

(declare-fun m!5596469 () Bool)

(assert (=> d!1491318 m!5596469))

(declare-fun m!5596471 () Bool)

(assert (=> d!1491318 m!5596471))

(declare-fun m!5596473 () Bool)

(assert (=> b!4692302 m!5596473))

(declare-fun m!5596475 () Bool)

(assert (=> b!4692302 m!5596475))

(declare-fun m!5596477 () Bool)

(assert (=> b!4692302 m!5596477))

(declare-fun m!5596479 () Bool)

(assert (=> b!4692302 m!5596479))

(declare-fun m!5596481 () Bool)

(assert (=> b!4692302 m!5596481))

(assert (=> b!4692302 m!5596481))

(declare-fun m!5596483 () Bool)

(assert (=> b!4692302 m!5596483))

(assert (=> b!4692302 m!5596461))

(assert (=> b!4692302 m!5596479))

(declare-fun m!5596485 () Bool)

(assert (=> b!4692302 m!5596485))

(declare-fun m!5596487 () Bool)

(assert (=> b!4692302 m!5596487))

(declare-fun m!5596489 () Bool)

(assert (=> b!4692302 m!5596489))

(declare-fun m!5596491 () Bool)

(assert (=> b!4692302 m!5596491))

(assert (=> b!4691898 d!1491318))

(declare-fun d!1491320 () Bool)

(declare-fun e!2927236 () Bool)

(assert (=> d!1491320 e!2927236))

(declare-fun res!1979565 () Bool)

(assert (=> d!1491320 (=> (not res!1979565) (not e!2927236))))

(declare-fun lt!1852503 () ListMap!4981)

(assert (=> d!1491320 (= res!1979565 (contains!15652 lt!1852503 (_1!30219 lt!1851974)))))

(declare-fun lt!1852505 () List!52559)

(assert (=> d!1491320 (= lt!1852503 (ListMap!4982 lt!1852505))))

(declare-fun lt!1852506 () Unit!124405)

(declare-fun lt!1852504 () Unit!124405)

(assert (=> d!1491320 (= lt!1852506 lt!1852504)))

(assert (=> d!1491320 (= (getValueByKey!1791 lt!1852505 (_1!30219 lt!1851974)) (Some!12100 (_2!30219 lt!1851974)))))

(assert (=> d!1491320 (= lt!1852504 (lemmaContainsTupThenGetReturnValue!1006 lt!1852505 (_1!30219 lt!1851974) (_2!30219 lt!1851974)))))

(assert (=> d!1491320 (= lt!1852505 (insertNoDuplicatedKeys!514 (toList!5617 (addToMapMapFromBucket!1296 lt!1851987 lt!1851993)) (_1!30219 lt!1851974) (_2!30219 lt!1851974)))))

(assert (=> d!1491320 (= (+!2148 (addToMapMapFromBucket!1296 lt!1851987 lt!1851993) lt!1851974) lt!1852503)))

(declare-fun b!4692304 () Bool)

(declare-fun res!1979566 () Bool)

(assert (=> b!4692304 (=> (not res!1979566) (not e!2927236))))

(assert (=> b!4692304 (= res!1979566 (= (getValueByKey!1791 (toList!5617 lt!1852503) (_1!30219 lt!1851974)) (Some!12100 (_2!30219 lt!1851974))))))

(declare-fun b!4692305 () Bool)

(assert (=> b!4692305 (= e!2927236 (contains!15655 (toList!5617 lt!1852503) lt!1851974))))

(assert (= (and d!1491320 res!1979565) b!4692304))

(assert (= (and b!4692304 res!1979566) b!4692305))

(declare-fun m!5596493 () Bool)

(assert (=> d!1491320 m!5596493))

(declare-fun m!5596495 () Bool)

(assert (=> d!1491320 m!5596495))

(declare-fun m!5596497 () Bool)

(assert (=> d!1491320 m!5596497))

(declare-fun m!5596499 () Bool)

(assert (=> d!1491320 m!5596499))

(declare-fun m!5596501 () Bool)

(assert (=> b!4692304 m!5596501))

(declare-fun m!5596503 () Bool)

(assert (=> b!4692305 m!5596503))

(assert (=> b!4691898 d!1491320))

(declare-fun bs!1088096 () Bool)

(declare-fun d!1491322 () Bool)

(assert (= bs!1088096 (and d!1491322 d!1491160)))

(declare-fun lambda!207767 () Int)

(assert (=> bs!1088096 (= lambda!207767 lambda!207670)))

(declare-fun bs!1088097 () Bool)

(assert (= bs!1088097 (and d!1491322 d!1491196)))

(assert (=> bs!1088097 (= lambda!207767 lambda!207685)))

(declare-fun bs!1088098 () Bool)

(assert (= bs!1088098 (and d!1491322 start!474788)))

(assert (=> bs!1088098 (= lambda!207767 lambda!207619)))

(declare-fun bs!1088099 () Bool)

(assert (= bs!1088099 (and d!1491322 d!1491192)))

(assert (=> bs!1088099 (= lambda!207767 lambda!207684)))

(declare-fun bs!1088100 () Bool)

(assert (= bs!1088100 (and d!1491322 d!1491218)))

(assert (=> bs!1088100 (not (= lambda!207767 lambda!207689))))

(declare-fun bs!1088101 () Bool)

(assert (= bs!1088101 (and d!1491322 d!1491120)))

(assert (=> bs!1088101 (= lambda!207767 lambda!207632)))

(declare-fun bs!1088102 () Bool)

(assert (= bs!1088102 (and d!1491322 d!1491176)))

(assert (=> bs!1088102 (= lambda!207767 lambda!207682)))

(declare-fun bs!1088103 () Bool)

(assert (= bs!1088103 (and d!1491322 d!1491286)))

(assert (=> bs!1088103 (= lambda!207767 lambda!207752)))

(declare-fun bs!1088104 () Bool)

(assert (= bs!1088104 (and d!1491322 d!1491310)))

(assert (=> bs!1088104 (= lambda!207767 lambda!207762)))

(declare-fun bs!1088105 () Bool)

(assert (= bs!1088105 (and d!1491322 d!1491158)))

(assert (=> bs!1088105 (= lambda!207767 lambda!207635)))

(declare-fun lt!1852507 () ListMap!4981)

(assert (=> d!1491322 (invariantList!1416 (toList!5617 lt!1852507))))

(declare-fun e!2927237 () ListMap!4981)

(assert (=> d!1491322 (= lt!1852507 e!2927237)))

(declare-fun c!802229 () Bool)

(assert (=> d!1491322 (= c!802229 ((_ is Cons!52436) (Cons!52436 lt!1851985 (t!359742 (toList!5618 lm!2023)))))))

(assert (=> d!1491322 (forall!11337 (Cons!52436 lt!1851985 (t!359742 (toList!5618 lm!2023))) lambda!207767)))

(assert (=> d!1491322 (= (extractMap!1890 (Cons!52436 lt!1851985 (t!359742 (toList!5618 lm!2023)))) lt!1852507)))

(declare-fun b!4692306 () Bool)

(assert (=> b!4692306 (= e!2927237 (addToMapMapFromBucket!1296 (_2!30220 (h!58687 (Cons!52436 lt!1851985 (t!359742 (toList!5618 lm!2023))))) (extractMap!1890 (t!359742 (Cons!52436 lt!1851985 (t!359742 (toList!5618 lm!2023)))))))))

(declare-fun b!4692307 () Bool)

(assert (=> b!4692307 (= e!2927237 (ListMap!4982 Nil!52435))))

(assert (= (and d!1491322 c!802229) b!4692306))

(assert (= (and d!1491322 (not c!802229)) b!4692307))

(declare-fun m!5596505 () Bool)

(assert (=> d!1491322 m!5596505))

(declare-fun m!5596507 () Bool)

(assert (=> d!1491322 m!5596507))

(declare-fun m!5596509 () Bool)

(assert (=> b!4692306 m!5596509))

(assert (=> b!4692306 m!5596509))

(declare-fun m!5596511 () Bool)

(assert (=> b!4692306 m!5596511))

(assert (=> b!4691898 d!1491322))

(declare-fun bs!1088106 () Bool)

(declare-fun d!1491324 () Bool)

(assert (= bs!1088106 (and d!1491324 d!1491160)))

(declare-fun lambda!207770 () Int)

(assert (=> bs!1088106 (= lambda!207770 lambda!207670)))

(declare-fun bs!1088107 () Bool)

(assert (= bs!1088107 (and d!1491324 d!1491196)))

(assert (=> bs!1088107 (= lambda!207770 lambda!207685)))

(declare-fun bs!1088108 () Bool)

(assert (= bs!1088108 (and d!1491324 start!474788)))

(assert (=> bs!1088108 (= lambda!207770 lambda!207619)))

(declare-fun bs!1088109 () Bool)

(assert (= bs!1088109 (and d!1491324 d!1491192)))

(assert (=> bs!1088109 (= lambda!207770 lambda!207684)))

(declare-fun bs!1088110 () Bool)

(assert (= bs!1088110 (and d!1491324 d!1491322)))

(assert (=> bs!1088110 (= lambda!207770 lambda!207767)))

(declare-fun bs!1088111 () Bool)

(assert (= bs!1088111 (and d!1491324 d!1491218)))

(assert (=> bs!1088111 (not (= lambda!207770 lambda!207689))))

(declare-fun bs!1088112 () Bool)

(assert (= bs!1088112 (and d!1491324 d!1491120)))

(assert (=> bs!1088112 (= lambda!207770 lambda!207632)))

(declare-fun bs!1088113 () Bool)

(assert (= bs!1088113 (and d!1491324 d!1491176)))

(assert (=> bs!1088113 (= lambda!207770 lambda!207682)))

(declare-fun bs!1088114 () Bool)

(assert (= bs!1088114 (and d!1491324 d!1491286)))

(assert (=> bs!1088114 (= lambda!207770 lambda!207752)))

(declare-fun bs!1088115 () Bool)

(assert (= bs!1088115 (and d!1491324 d!1491310)))

(assert (=> bs!1088115 (= lambda!207770 lambda!207762)))

(declare-fun bs!1088116 () Bool)

(assert (= bs!1088116 (and d!1491324 d!1491158)))

(assert (=> bs!1088116 (= lambda!207770 lambda!207635)))

(assert (=> d!1491324 (contains!15652 (extractMap!1890 (toList!5618 lt!1851996)) key!4653)))

(declare-fun lt!1852510 () Unit!124405)

(declare-fun choose!32634 (ListLongMap!4147 K!13810 Hashable!6233) Unit!124405)

(assert (=> d!1491324 (= lt!1852510 (choose!32634 lt!1851996 key!4653 hashF!1323))))

(assert (=> d!1491324 (forall!11337 (toList!5618 lt!1851996) lambda!207770)))

(assert (=> d!1491324 (= (lemmaListContainsThenExtractedMapContains!456 lt!1851996 key!4653 hashF!1323) lt!1852510)))

(declare-fun bs!1088117 () Bool)

(assert (= bs!1088117 d!1491324))

(declare-fun m!5596513 () Bool)

(assert (=> bs!1088117 m!5596513))

(assert (=> bs!1088117 m!5596513))

(declare-fun m!5596515 () Bool)

(assert (=> bs!1088117 m!5596515))

(declare-fun m!5596517 () Bool)

(assert (=> bs!1088117 m!5596517))

(declare-fun m!5596519 () Bool)

(assert (=> bs!1088117 m!5596519))

(assert (=> b!4691898 d!1491324))

(declare-fun b!4692308 () Bool)

(declare-fun e!2927238 () Unit!124405)

(declare-fun lt!1852518 () Unit!124405)

(assert (=> b!4692308 (= e!2927238 lt!1852518)))

(declare-fun lt!1852516 () Unit!124405)

(assert (=> b!4692308 (= lt!1852516 (lemmaContainsKeyImpliesGetValueByKeyDefined!1683 (toList!5617 (extractMap!1890 lt!1851991)) key!4653))))

(assert (=> b!4692308 (isDefined!9356 (getValueByKey!1791 (toList!5617 (extractMap!1890 lt!1851991)) key!4653))))

(declare-fun lt!1852517 () Unit!124405)

(assert (=> b!4692308 (= lt!1852517 lt!1852516)))

(assert (=> b!4692308 (= lt!1852518 (lemmaInListThenGetKeysListContains!850 (toList!5617 (extractMap!1890 lt!1851991)) key!4653))))

(declare-fun call!327951 () Bool)

(assert (=> b!4692308 call!327951))

(declare-fun d!1491326 () Bool)

(declare-fun e!2927242 () Bool)

(assert (=> d!1491326 e!2927242))

(declare-fun res!1979567 () Bool)

(assert (=> d!1491326 (=> res!1979567 e!2927242)))

(declare-fun e!2927240 () Bool)

(assert (=> d!1491326 (= res!1979567 e!2927240)))

(declare-fun res!1979569 () Bool)

(assert (=> d!1491326 (=> (not res!1979569) (not e!2927240))))

(declare-fun lt!1852515 () Bool)

(assert (=> d!1491326 (= res!1979569 (not lt!1852515))))

(declare-fun lt!1852512 () Bool)

(assert (=> d!1491326 (= lt!1852515 lt!1852512)))

(declare-fun lt!1852511 () Unit!124405)

(assert (=> d!1491326 (= lt!1852511 e!2927238)))

(declare-fun c!802231 () Bool)

(assert (=> d!1491326 (= c!802231 lt!1852512)))

(assert (=> d!1491326 (= lt!1852512 (containsKey!3077 (toList!5617 (extractMap!1890 lt!1851991)) key!4653))))

(assert (=> d!1491326 (= (contains!15652 (extractMap!1890 lt!1851991) key!4653) lt!1852515)))

(declare-fun b!4692309 () Bool)

(declare-fun e!2927243 () Bool)

(assert (=> b!4692309 (= e!2927243 (contains!15654 (keys!18728 (extractMap!1890 lt!1851991)) key!4653))))

(declare-fun b!4692310 () Bool)

(declare-fun e!2927241 () List!52561)

(assert (=> b!4692310 (= e!2927241 (keys!18728 (extractMap!1890 lt!1851991)))))

(declare-fun b!4692311 () Bool)

(assert (=> b!4692311 false))

(declare-fun lt!1852514 () Unit!124405)

(declare-fun lt!1852513 () Unit!124405)

(assert (=> b!4692311 (= lt!1852514 lt!1852513)))

(assert (=> b!4692311 (containsKey!3077 (toList!5617 (extractMap!1890 lt!1851991)) key!4653)))

(assert (=> b!4692311 (= lt!1852513 (lemmaInGetKeysListThenContainsKey!854 (toList!5617 (extractMap!1890 lt!1851991)) key!4653))))

(declare-fun e!2927239 () Unit!124405)

(declare-fun Unit!124501 () Unit!124405)

(assert (=> b!4692311 (= e!2927239 Unit!124501)))

(declare-fun b!4692312 () Bool)

(assert (=> b!4692312 (= e!2927238 e!2927239)))

(declare-fun c!802230 () Bool)

(assert (=> b!4692312 (= c!802230 call!327951)))

(declare-fun b!4692313 () Bool)

(assert (=> b!4692313 (= e!2927240 (not (contains!15654 (keys!18728 (extractMap!1890 lt!1851991)) key!4653)))))

(declare-fun b!4692314 () Bool)

(assert (=> b!4692314 (= e!2927241 (getKeysList!855 (toList!5617 (extractMap!1890 lt!1851991))))))

(declare-fun b!4692315 () Bool)

(declare-fun Unit!124502 () Unit!124405)

(assert (=> b!4692315 (= e!2927239 Unit!124502)))

(declare-fun b!4692316 () Bool)

(assert (=> b!4692316 (= e!2927242 e!2927243)))

(declare-fun res!1979568 () Bool)

(assert (=> b!4692316 (=> (not res!1979568) (not e!2927243))))

(assert (=> b!4692316 (= res!1979568 (isDefined!9356 (getValueByKey!1791 (toList!5617 (extractMap!1890 lt!1851991)) key!4653)))))

(declare-fun bm!327946 () Bool)

(assert (=> bm!327946 (= call!327951 (contains!15654 e!2927241 key!4653))))

(declare-fun c!802232 () Bool)

(assert (=> bm!327946 (= c!802232 c!802231)))

(assert (= (and d!1491326 c!802231) b!4692308))

(assert (= (and d!1491326 (not c!802231)) b!4692312))

(assert (= (and b!4692312 c!802230) b!4692311))

(assert (= (and b!4692312 (not c!802230)) b!4692315))

(assert (= (or b!4692308 b!4692312) bm!327946))

(assert (= (and bm!327946 c!802232) b!4692314))

(assert (= (and bm!327946 (not c!802232)) b!4692310))

(assert (= (and d!1491326 res!1979569) b!4692313))

(assert (= (and d!1491326 (not res!1979567)) b!4692316))

(assert (= (and b!4692316 res!1979568) b!4692309))

(declare-fun m!5596521 () Bool)

(assert (=> b!4692311 m!5596521))

(declare-fun m!5596523 () Bool)

(assert (=> b!4692311 m!5596523))

(declare-fun m!5596525 () Bool)

(assert (=> b!4692308 m!5596525))

(declare-fun m!5596527 () Bool)

(assert (=> b!4692308 m!5596527))

(assert (=> b!4692308 m!5596527))

(declare-fun m!5596529 () Bool)

(assert (=> b!4692308 m!5596529))

(declare-fun m!5596531 () Bool)

(assert (=> b!4692308 m!5596531))

(assert (=> d!1491326 m!5596521))

(assert (=> b!4692309 m!5595651))

(declare-fun m!5596533 () Bool)

(assert (=> b!4692309 m!5596533))

(assert (=> b!4692309 m!5596533))

(declare-fun m!5596535 () Bool)

(assert (=> b!4692309 m!5596535))

(declare-fun m!5596537 () Bool)

(assert (=> bm!327946 m!5596537))

(assert (=> b!4692310 m!5595651))

(assert (=> b!4692310 m!5596533))

(assert (=> b!4692316 m!5596527))

(assert (=> b!4692316 m!5596527))

(assert (=> b!4692316 m!5596529))

(assert (=> b!4692313 m!5595651))

(assert (=> b!4692313 m!5596533))

(assert (=> b!4692313 m!5596533))

(assert (=> b!4692313 m!5596535))

(declare-fun m!5596539 () Bool)

(assert (=> b!4692314 m!5596539))

(assert (=> b!4691898 d!1491326))

(declare-fun d!1491328 () Bool)

(declare-fun e!2927244 () Bool)

(assert (=> d!1491328 e!2927244))

(declare-fun res!1979570 () Bool)

(assert (=> d!1491328 (=> (not res!1979570) (not e!2927244))))

(declare-fun lt!1852519 () ListMap!4981)

(assert (=> d!1491328 (= res!1979570 (contains!15652 lt!1852519 (_1!30219 lt!1851988)))))

(declare-fun lt!1852521 () List!52559)

(assert (=> d!1491328 (= lt!1852519 (ListMap!4982 lt!1852521))))

(declare-fun lt!1852522 () Unit!124405)

(declare-fun lt!1852520 () Unit!124405)

(assert (=> d!1491328 (= lt!1852522 lt!1852520)))

(assert (=> d!1491328 (= (getValueByKey!1791 lt!1852521 (_1!30219 lt!1851988)) (Some!12100 (_2!30219 lt!1851988)))))

(assert (=> d!1491328 (= lt!1852520 (lemmaContainsTupThenGetReturnValue!1006 lt!1852521 (_1!30219 lt!1851988) (_2!30219 lt!1851988)))))

(assert (=> d!1491328 (= lt!1852521 (insertNoDuplicatedKeys!514 (toList!5617 (addToMapMapFromBucket!1296 lt!1851981 lt!1851993)) (_1!30219 lt!1851988) (_2!30219 lt!1851988)))))

(assert (=> d!1491328 (= (+!2148 (addToMapMapFromBucket!1296 lt!1851981 lt!1851993) lt!1851988) lt!1852519)))

(declare-fun b!4692317 () Bool)

(declare-fun res!1979571 () Bool)

(assert (=> b!4692317 (=> (not res!1979571) (not e!2927244))))

(assert (=> b!4692317 (= res!1979571 (= (getValueByKey!1791 (toList!5617 lt!1852519) (_1!30219 lt!1851988)) (Some!12100 (_2!30219 lt!1851988))))))

(declare-fun b!4692318 () Bool)

(assert (=> b!4692318 (= e!2927244 (contains!15655 (toList!5617 lt!1852519) lt!1851988))))

(assert (= (and d!1491328 res!1979570) b!4692317))

(assert (= (and b!4692317 res!1979571) b!4692318))

(declare-fun m!5596541 () Bool)

(assert (=> d!1491328 m!5596541))

(declare-fun m!5596543 () Bool)

(assert (=> d!1491328 m!5596543))

(declare-fun m!5596545 () Bool)

(assert (=> d!1491328 m!5596545))

(declare-fun m!5596547 () Bool)

(assert (=> d!1491328 m!5596547))

(declare-fun m!5596549 () Bool)

(assert (=> b!4692317 m!5596549))

(declare-fun m!5596551 () Bool)

(assert (=> b!4692318 m!5596551))

(assert (=> b!4691898 d!1491328))

(declare-fun bs!1088118 () Bool)

(declare-fun d!1491330 () Bool)

(assert (= bs!1088118 (and d!1491330 d!1491160)))

(declare-fun lambda!207771 () Int)

(assert (=> bs!1088118 (= lambda!207771 lambda!207670)))

(declare-fun bs!1088119 () Bool)

(assert (= bs!1088119 (and d!1491330 d!1491196)))

(assert (=> bs!1088119 (= lambda!207771 lambda!207685)))

(declare-fun bs!1088120 () Bool)

(assert (= bs!1088120 (and d!1491330 d!1491324)))

(assert (=> bs!1088120 (= lambda!207771 lambda!207770)))

(declare-fun bs!1088121 () Bool)

(assert (= bs!1088121 (and d!1491330 start!474788)))

(assert (=> bs!1088121 (= lambda!207771 lambda!207619)))

(declare-fun bs!1088122 () Bool)

(assert (= bs!1088122 (and d!1491330 d!1491192)))

(assert (=> bs!1088122 (= lambda!207771 lambda!207684)))

(declare-fun bs!1088123 () Bool)

(assert (= bs!1088123 (and d!1491330 d!1491322)))

(assert (=> bs!1088123 (= lambda!207771 lambda!207767)))

(declare-fun bs!1088124 () Bool)

(assert (= bs!1088124 (and d!1491330 d!1491218)))

(assert (=> bs!1088124 (not (= lambda!207771 lambda!207689))))

(declare-fun bs!1088125 () Bool)

(assert (= bs!1088125 (and d!1491330 d!1491120)))

(assert (=> bs!1088125 (= lambda!207771 lambda!207632)))

(declare-fun bs!1088126 () Bool)

(assert (= bs!1088126 (and d!1491330 d!1491176)))

(assert (=> bs!1088126 (= lambda!207771 lambda!207682)))

(declare-fun bs!1088127 () Bool)

(assert (= bs!1088127 (and d!1491330 d!1491286)))

(assert (=> bs!1088127 (= lambda!207771 lambda!207752)))

(declare-fun bs!1088128 () Bool)

(assert (= bs!1088128 (and d!1491330 d!1491310)))

(assert (=> bs!1088128 (= lambda!207771 lambda!207762)))

(declare-fun bs!1088129 () Bool)

(assert (= bs!1088129 (and d!1491330 d!1491158)))

(assert (=> bs!1088129 (= lambda!207771 lambda!207635)))

(declare-fun lt!1852523 () ListMap!4981)

(assert (=> d!1491330 (invariantList!1416 (toList!5617 lt!1852523))))

(declare-fun e!2927245 () ListMap!4981)

(assert (=> d!1491330 (= lt!1852523 e!2927245)))

(declare-fun c!802233 () Bool)

(assert (=> d!1491330 (= c!802233 ((_ is Cons!52436) (Cons!52436 (tuple2!53853 hash!405 lt!1851987) (t!359742 (toList!5618 lm!2023)))))))

(assert (=> d!1491330 (forall!11337 (Cons!52436 (tuple2!53853 hash!405 lt!1851987) (t!359742 (toList!5618 lm!2023))) lambda!207771)))

(assert (=> d!1491330 (= (extractMap!1890 (Cons!52436 (tuple2!53853 hash!405 lt!1851987) (t!359742 (toList!5618 lm!2023)))) lt!1852523)))

(declare-fun b!4692319 () Bool)

(assert (=> b!4692319 (= e!2927245 (addToMapMapFromBucket!1296 (_2!30220 (h!58687 (Cons!52436 (tuple2!53853 hash!405 lt!1851987) (t!359742 (toList!5618 lm!2023))))) (extractMap!1890 (t!359742 (Cons!52436 (tuple2!53853 hash!405 lt!1851987) (t!359742 (toList!5618 lm!2023)))))))))

(declare-fun b!4692320 () Bool)

(assert (=> b!4692320 (= e!2927245 (ListMap!4982 Nil!52435))))

(assert (= (and d!1491330 c!802233) b!4692319))

(assert (= (and d!1491330 (not c!802233)) b!4692320))

(declare-fun m!5596553 () Bool)

(assert (=> d!1491330 m!5596553))

(declare-fun m!5596555 () Bool)

(assert (=> d!1491330 m!5596555))

(declare-fun m!5596557 () Bool)

(assert (=> b!4692319 m!5596557))

(assert (=> b!4692319 m!5596557))

(declare-fun m!5596559 () Bool)

(assert (=> b!4692319 m!5596559))

(assert (=> b!4691898 d!1491330))

(declare-fun bs!1088130 () Bool)

(declare-fun b!4692323 () Bool)

(assert (= bs!1088130 (and b!4692323 b!4692254)))

(declare-fun lambda!207772 () Int)

(assert (=> bs!1088130 (= (= lt!1851993 lt!1852442) (= lambda!207772 lambda!207750))))

(declare-fun bs!1088131 () Bool)

(assert (= bs!1088131 (and b!4692323 b!4692293)))

(assert (=> bs!1088131 (= (= lt!1851993 lt!1852469) (= lambda!207772 lambda!207760))))

(assert (=> bs!1088131 (= lambda!207772 lambda!207759)))

(declare-fun bs!1088132 () Bool)

(assert (= bs!1088132 (and b!4692323 d!1491300)))

(assert (=> bs!1088132 (not (= lambda!207772 lambda!207756))))

(declare-fun bs!1088133 () Bool)

(assert (= bs!1088133 (and b!4692323 b!4692301)))

(assert (=> bs!1088133 (= lambda!207772 lambda!207763)))

(assert (=> bs!1088130 (= lambda!207772 lambda!207749)))

(declare-fun bs!1088134 () Bool)

(assert (= bs!1088134 (and b!4692323 b!4692292)))

(assert (=> bs!1088134 (= lambda!207772 lambda!207758)))

(declare-fun bs!1088135 () Bool)

(assert (= bs!1088135 (and b!4692323 b!4692253)))

(assert (=> bs!1088135 (= lambda!207772 lambda!207747)))

(declare-fun bs!1088136 () Bool)

(assert (= bs!1088136 (and b!4692323 d!1491228)))

(assert (=> bs!1088136 (= (= lt!1851993 lt!1852426) (= lambda!207772 lambda!207751))))

(declare-fun bs!1088137 () Bool)

(assert (= bs!1088137 (and b!4692323 b!4692302)))

(assert (=> bs!1088137 (= lambda!207772 lambda!207764)))

(declare-fun bs!1088138 () Bool)

(assert (= bs!1088138 (and b!4692323 d!1491318)))

(assert (=> bs!1088138 (= (= lt!1851993 lt!1852482) (= lambda!207772 lambda!207766))))

(declare-fun bs!1088139 () Bool)

(assert (= bs!1088139 (and b!4692323 d!1491306)))

(assert (=> bs!1088139 (not (= lambda!207772 lambda!207757))))

(assert (=> bs!1088137 (= (= lt!1851993 lt!1852498) (= lambda!207772 lambda!207765))))

(declare-fun bs!1088140 () Bool)

(assert (= bs!1088140 (and b!4692323 d!1491308)))

(assert (=> bs!1088140 (= (= lt!1851993 lt!1852453) (= lambda!207772 lambda!207761))))

(assert (=> b!4692323 true))

(declare-fun bs!1088141 () Bool)

(declare-fun b!4692324 () Bool)

(assert (= bs!1088141 (and b!4692324 b!4692254)))

(declare-fun lambda!207773 () Int)

(assert (=> bs!1088141 (= (= lt!1851993 lt!1852442) (= lambda!207773 lambda!207750))))

(declare-fun bs!1088142 () Bool)

(assert (= bs!1088142 (and b!4692324 b!4692293)))

(assert (=> bs!1088142 (= (= lt!1851993 lt!1852469) (= lambda!207773 lambda!207760))))

(assert (=> bs!1088142 (= lambda!207773 lambda!207759)))

(declare-fun bs!1088143 () Bool)

(assert (= bs!1088143 (and b!4692324 d!1491300)))

(assert (=> bs!1088143 (not (= lambda!207773 lambda!207756))))

(declare-fun bs!1088144 () Bool)

(assert (= bs!1088144 (and b!4692324 b!4692301)))

(assert (=> bs!1088144 (= lambda!207773 lambda!207763)))

(assert (=> bs!1088141 (= lambda!207773 lambda!207749)))

(declare-fun bs!1088145 () Bool)

(assert (= bs!1088145 (and b!4692324 b!4692292)))

(assert (=> bs!1088145 (= lambda!207773 lambda!207758)))

(declare-fun bs!1088146 () Bool)

(assert (= bs!1088146 (and b!4692324 b!4692253)))

(assert (=> bs!1088146 (= lambda!207773 lambda!207747)))

(declare-fun bs!1088147 () Bool)

(assert (= bs!1088147 (and b!4692324 d!1491228)))

(assert (=> bs!1088147 (= (= lt!1851993 lt!1852426) (= lambda!207773 lambda!207751))))

(declare-fun bs!1088148 () Bool)

(assert (= bs!1088148 (and b!4692324 b!4692302)))

(assert (=> bs!1088148 (= lambda!207773 lambda!207764)))

(declare-fun bs!1088149 () Bool)

(assert (= bs!1088149 (and b!4692324 b!4692323)))

(assert (=> bs!1088149 (= lambda!207773 lambda!207772)))

(declare-fun bs!1088150 () Bool)

(assert (= bs!1088150 (and b!4692324 d!1491318)))

(assert (=> bs!1088150 (= (= lt!1851993 lt!1852482) (= lambda!207773 lambda!207766))))

(declare-fun bs!1088151 () Bool)

(assert (= bs!1088151 (and b!4692324 d!1491306)))

(assert (=> bs!1088151 (not (= lambda!207773 lambda!207757))))

(assert (=> bs!1088148 (= (= lt!1851993 lt!1852498) (= lambda!207773 lambda!207765))))

(declare-fun bs!1088152 () Bool)

(assert (= bs!1088152 (and b!4692324 d!1491308)))

(assert (=> bs!1088152 (= (= lt!1851993 lt!1852453) (= lambda!207773 lambda!207761))))

(assert (=> b!4692324 true))

(declare-fun lambda!207774 () Int)

(declare-fun lt!1852540 () ListMap!4981)

(assert (=> bs!1088141 (= (= lt!1852540 lt!1852442) (= lambda!207774 lambda!207750))))

(assert (=> bs!1088142 (= (= lt!1852540 lt!1852469) (= lambda!207774 lambda!207760))))

(assert (=> bs!1088142 (= (= lt!1852540 lt!1851993) (= lambda!207774 lambda!207759))))

(assert (=> bs!1088143 (not (= lambda!207774 lambda!207756))))

(assert (=> bs!1088144 (= (= lt!1852540 lt!1851993) (= lambda!207774 lambda!207763))))

(assert (=> bs!1088141 (= (= lt!1852540 lt!1851993) (= lambda!207774 lambda!207749))))

(assert (=> bs!1088145 (= (= lt!1852540 lt!1851993) (= lambda!207774 lambda!207758))))

(assert (=> bs!1088146 (= (= lt!1852540 lt!1851993) (= lambda!207774 lambda!207747))))

(assert (=> bs!1088147 (= (= lt!1852540 lt!1852426) (= lambda!207774 lambda!207751))))

(assert (=> bs!1088148 (= (= lt!1852540 lt!1851993) (= lambda!207774 lambda!207764))))

(assert (=> bs!1088149 (= (= lt!1852540 lt!1851993) (= lambda!207774 lambda!207772))))

(assert (=> b!4692324 (= (= lt!1852540 lt!1851993) (= lambda!207774 lambda!207773))))

(assert (=> bs!1088150 (= (= lt!1852540 lt!1852482) (= lambda!207774 lambda!207766))))

(assert (=> bs!1088151 (not (= lambda!207774 lambda!207757))))

(assert (=> bs!1088148 (= (= lt!1852540 lt!1852498) (= lambda!207774 lambda!207765))))

(assert (=> bs!1088152 (= (= lt!1852540 lt!1852453) (= lambda!207774 lambda!207761))))

(assert (=> b!4692324 true))

(declare-fun bs!1088153 () Bool)

(declare-fun d!1491332 () Bool)

(assert (= bs!1088153 (and d!1491332 b!4692254)))

(declare-fun lt!1852524 () ListMap!4981)

(declare-fun lambda!207775 () Int)

(assert (=> bs!1088153 (= (= lt!1852524 lt!1852442) (= lambda!207775 lambda!207750))))

(declare-fun bs!1088154 () Bool)

(assert (= bs!1088154 (and d!1491332 b!4692293)))

(assert (=> bs!1088154 (= (= lt!1852524 lt!1852469) (= lambda!207775 lambda!207760))))

(assert (=> bs!1088154 (= (= lt!1852524 lt!1851993) (= lambda!207775 lambda!207759))))

(declare-fun bs!1088155 () Bool)

(assert (= bs!1088155 (and d!1491332 d!1491300)))

(assert (=> bs!1088155 (not (= lambda!207775 lambda!207756))))

(declare-fun bs!1088156 () Bool)

(assert (= bs!1088156 (and d!1491332 b!4692301)))

(assert (=> bs!1088156 (= (= lt!1852524 lt!1851993) (= lambda!207775 lambda!207763))))

(assert (=> bs!1088153 (= (= lt!1852524 lt!1851993) (= lambda!207775 lambda!207749))))

(declare-fun bs!1088157 () Bool)

(assert (= bs!1088157 (and d!1491332 b!4692292)))

(assert (=> bs!1088157 (= (= lt!1852524 lt!1851993) (= lambda!207775 lambda!207758))))

(declare-fun bs!1088158 () Bool)

(assert (= bs!1088158 (and d!1491332 b!4692253)))

(assert (=> bs!1088158 (= (= lt!1852524 lt!1851993) (= lambda!207775 lambda!207747))))

(declare-fun bs!1088159 () Bool)

(assert (= bs!1088159 (and d!1491332 d!1491228)))

(assert (=> bs!1088159 (= (= lt!1852524 lt!1852426) (= lambda!207775 lambda!207751))))

(declare-fun bs!1088160 () Bool)

(assert (= bs!1088160 (and d!1491332 b!4692302)))

(assert (=> bs!1088160 (= (= lt!1852524 lt!1851993) (= lambda!207775 lambda!207764))))

(declare-fun bs!1088161 () Bool)

(assert (= bs!1088161 (and d!1491332 b!4692323)))

(assert (=> bs!1088161 (= (= lt!1852524 lt!1851993) (= lambda!207775 lambda!207772))))

(declare-fun bs!1088162 () Bool)

(assert (= bs!1088162 (and d!1491332 b!4692324)))

(assert (=> bs!1088162 (= (= lt!1852524 lt!1852540) (= lambda!207775 lambda!207774))))

(assert (=> bs!1088162 (= (= lt!1852524 lt!1851993) (= lambda!207775 lambda!207773))))

(declare-fun bs!1088163 () Bool)

(assert (= bs!1088163 (and d!1491332 d!1491318)))

(assert (=> bs!1088163 (= (= lt!1852524 lt!1852482) (= lambda!207775 lambda!207766))))

(declare-fun bs!1088164 () Bool)

(assert (= bs!1088164 (and d!1491332 d!1491306)))

(assert (=> bs!1088164 (not (= lambda!207775 lambda!207757))))

(assert (=> bs!1088160 (= (= lt!1852524 lt!1852498) (= lambda!207775 lambda!207765))))

(declare-fun bs!1088165 () Bool)

(assert (= bs!1088165 (and d!1491332 d!1491308)))

(assert (=> bs!1088165 (= (= lt!1852524 lt!1852453) (= lambda!207775 lambda!207761))))

(assert (=> d!1491332 true))

(declare-fun bm!327947 () Bool)

(declare-fun call!327954 () Unit!124405)

(assert (=> bm!327947 (= call!327954 (lemmaContainsAllItsOwnKeys!704 lt!1851993))))

(declare-fun b!4692321 () Bool)

(declare-fun e!2927247 () Bool)

(assert (=> b!4692321 (= e!2927247 (forall!11339 (toList!5617 lt!1851993) lambda!207774))))

(declare-fun c!802234 () Bool)

(declare-fun bm!327948 () Bool)

(declare-fun lt!1852532 () ListMap!4981)

(declare-fun call!327952 () Bool)

(assert (=> bm!327948 (= call!327952 (forall!11339 (ite c!802234 (toList!5617 lt!1851993) (toList!5617 lt!1852532)) (ite c!802234 lambda!207772 lambda!207774)))))

(declare-fun b!4692322 () Bool)

(declare-fun res!1979574 () Bool)

(declare-fun e!2927248 () Bool)

(assert (=> b!4692322 (=> (not res!1979574) (not e!2927248))))

(assert (=> b!4692322 (= res!1979574 (forall!11339 (toList!5617 lt!1851993) lambda!207775))))

(declare-fun e!2927246 () ListMap!4981)

(assert (=> b!4692323 (= e!2927246 lt!1851993)))

(declare-fun lt!1852534 () Unit!124405)

(assert (=> b!4692323 (= lt!1852534 call!327954)))

(assert (=> b!4692323 call!327952))

(declare-fun lt!1852527 () Unit!124405)

(assert (=> b!4692323 (= lt!1852527 lt!1852534)))

(declare-fun call!327953 () Bool)

(assert (=> b!4692323 call!327953))

(declare-fun lt!1852526 () Unit!124405)

(declare-fun Unit!124505 () Unit!124405)

(assert (=> b!4692323 (= lt!1852526 Unit!124505)))

(assert (=> b!4692324 (= e!2927246 lt!1852540)))

(assert (=> b!4692324 (= lt!1852532 (+!2148 lt!1851993 (h!58686 (Cons!52435 lt!1851974 lt!1851987))))))

(assert (=> b!4692324 (= lt!1852540 (addToMapMapFromBucket!1296 (t!359741 (Cons!52435 lt!1851974 lt!1851987)) (+!2148 lt!1851993 (h!58686 (Cons!52435 lt!1851974 lt!1851987)))))))

(declare-fun lt!1852537 () Unit!124405)

(assert (=> b!4692324 (= lt!1852537 call!327954)))

(assert (=> b!4692324 (forall!11339 (toList!5617 lt!1851993) lambda!207773)))

(declare-fun lt!1852531 () Unit!124405)

(assert (=> b!4692324 (= lt!1852531 lt!1852537)))

(assert (=> b!4692324 (forall!11339 (toList!5617 lt!1852532) lambda!207774)))

(declare-fun lt!1852529 () Unit!124405)

(declare-fun Unit!124506 () Unit!124405)

(assert (=> b!4692324 (= lt!1852529 Unit!124506)))

(assert (=> b!4692324 (forall!11339 (t!359741 (Cons!52435 lt!1851974 lt!1851987)) lambda!207774)))

(declare-fun lt!1852530 () Unit!124405)

(declare-fun Unit!124507 () Unit!124405)

(assert (=> b!4692324 (= lt!1852530 Unit!124507)))

(declare-fun lt!1852542 () Unit!124405)

(declare-fun Unit!124508 () Unit!124405)

(assert (=> b!4692324 (= lt!1852542 Unit!124508)))

(declare-fun lt!1852533 () Unit!124405)

(assert (=> b!4692324 (= lt!1852533 (forallContained!3446 (toList!5617 lt!1852532) lambda!207774 (h!58686 (Cons!52435 lt!1851974 lt!1851987))))))

(assert (=> b!4692324 (contains!15652 lt!1852532 (_1!30219 (h!58686 (Cons!52435 lt!1851974 lt!1851987))))))

(declare-fun lt!1852541 () Unit!124405)

(declare-fun Unit!124509 () Unit!124405)

(assert (=> b!4692324 (= lt!1852541 Unit!124509)))

(assert (=> b!4692324 (contains!15652 lt!1852540 (_1!30219 (h!58686 (Cons!52435 lt!1851974 lt!1851987))))))

(declare-fun lt!1852535 () Unit!124405)

(declare-fun Unit!124510 () Unit!124405)

(assert (=> b!4692324 (= lt!1852535 Unit!124510)))

(assert (=> b!4692324 (forall!11339 (Cons!52435 lt!1851974 lt!1851987) lambda!207774)))

(declare-fun lt!1852528 () Unit!124405)

(declare-fun Unit!124511 () Unit!124405)

(assert (=> b!4692324 (= lt!1852528 Unit!124511)))

(assert (=> b!4692324 call!327952))

(declare-fun lt!1852525 () Unit!124405)

(declare-fun Unit!124512 () Unit!124405)

(assert (=> b!4692324 (= lt!1852525 Unit!124512)))

(declare-fun lt!1852544 () Unit!124405)

(declare-fun Unit!124513 () Unit!124405)

(assert (=> b!4692324 (= lt!1852544 Unit!124513)))

(declare-fun lt!1852536 () Unit!124405)

(assert (=> b!4692324 (= lt!1852536 (addForallContainsKeyThenBeforeAdding!703 lt!1851993 lt!1852540 (_1!30219 (h!58686 (Cons!52435 lt!1851974 lt!1851987))) (_2!30219 (h!58686 (Cons!52435 lt!1851974 lt!1851987)))))))

(assert (=> b!4692324 (forall!11339 (toList!5617 lt!1851993) lambda!207774)))

(declare-fun lt!1852538 () Unit!124405)

(assert (=> b!4692324 (= lt!1852538 lt!1852536)))

(assert (=> b!4692324 call!327953))

(declare-fun lt!1852543 () Unit!124405)

(declare-fun Unit!124514 () Unit!124405)

(assert (=> b!4692324 (= lt!1852543 Unit!124514)))

(declare-fun res!1979573 () Bool)

(assert (=> b!4692324 (= res!1979573 (forall!11339 (Cons!52435 lt!1851974 lt!1851987) lambda!207774))))

(assert (=> b!4692324 (=> (not res!1979573) (not e!2927247))))

(assert (=> b!4692324 e!2927247))

(declare-fun lt!1852539 () Unit!124405)

(declare-fun Unit!124515 () Unit!124405)

(assert (=> b!4692324 (= lt!1852539 Unit!124515)))

(declare-fun bm!327949 () Bool)

(assert (=> bm!327949 (= call!327953 (forall!11339 (toList!5617 lt!1851993) (ite c!802234 lambda!207772 lambda!207774)))))

(declare-fun b!4692325 () Bool)

(assert (=> b!4692325 (= e!2927248 (invariantList!1416 (toList!5617 lt!1852524)))))

(assert (=> d!1491332 e!2927248))

(declare-fun res!1979572 () Bool)

(assert (=> d!1491332 (=> (not res!1979572) (not e!2927248))))

(assert (=> d!1491332 (= res!1979572 (forall!11339 (Cons!52435 lt!1851974 lt!1851987) lambda!207775))))

(assert (=> d!1491332 (= lt!1852524 e!2927246)))

(assert (=> d!1491332 (= c!802234 ((_ is Nil!52435) (Cons!52435 lt!1851974 lt!1851987)))))

(assert (=> d!1491332 (noDuplicateKeys!1864 (Cons!52435 lt!1851974 lt!1851987))))

(assert (=> d!1491332 (= (addToMapMapFromBucket!1296 (Cons!52435 lt!1851974 lt!1851987) lt!1851993) lt!1852524)))

(assert (= (and d!1491332 c!802234) b!4692323))

(assert (= (and d!1491332 (not c!802234)) b!4692324))

(assert (= (and b!4692324 res!1979573) b!4692321))

(assert (= (or b!4692323 b!4692324) bm!327947))

(assert (= (or b!4692323 b!4692324) bm!327949))

(assert (= (or b!4692323 b!4692324) bm!327948))

(assert (= (and d!1491332 res!1979572) b!4692322))

(assert (= (and b!4692322 res!1979574) b!4692325))

(declare-fun m!5596561 () Bool)

(assert (=> bm!327948 m!5596561))

(declare-fun m!5596563 () Bool)

(assert (=> b!4692321 m!5596563))

(declare-fun m!5596565 () Bool)

(assert (=> b!4692325 m!5596565))

(declare-fun m!5596567 () Bool)

(assert (=> bm!327949 m!5596567))

(assert (=> bm!327947 m!5596321))

(declare-fun m!5596569 () Bool)

(assert (=> b!4692322 m!5596569))

(declare-fun m!5596571 () Bool)

(assert (=> d!1491332 m!5596571))

(declare-fun m!5596573 () Bool)

(assert (=> d!1491332 m!5596573))

(declare-fun m!5596575 () Bool)

(assert (=> b!4692324 m!5596575))

(declare-fun m!5596577 () Bool)

(assert (=> b!4692324 m!5596577))

(declare-fun m!5596579 () Bool)

(assert (=> b!4692324 m!5596579))

(declare-fun m!5596581 () Bool)

(assert (=> b!4692324 m!5596581))

(declare-fun m!5596583 () Bool)

(assert (=> b!4692324 m!5596583))

(assert (=> b!4692324 m!5596583))

(declare-fun m!5596585 () Bool)

(assert (=> b!4692324 m!5596585))

(assert (=> b!4692324 m!5596563))

(assert (=> b!4692324 m!5596581))

(declare-fun m!5596587 () Bool)

(assert (=> b!4692324 m!5596587))

(declare-fun m!5596589 () Bool)

(assert (=> b!4692324 m!5596589))

(declare-fun m!5596591 () Bool)

(assert (=> b!4692324 m!5596591))

(declare-fun m!5596593 () Bool)

(assert (=> b!4692324 m!5596593))

(assert (=> b!4691898 d!1491332))

(declare-fun d!1491334 () Bool)

(assert (=> d!1491334 (= (head!9992 oldBucket!34) (h!58686 oldBucket!34))))

(assert (=> b!4691898 d!1491334))

(declare-fun d!1491336 () Bool)

(assert (=> d!1491336 (= (eq!1023 lt!1851984 (+!2148 lt!1851976 (h!58686 oldBucket!34))) (= (content!9177 (toList!5617 lt!1851984)) (content!9177 (toList!5617 (+!2148 lt!1851976 (h!58686 oldBucket!34))))))))

(declare-fun bs!1088166 () Bool)

(assert (= bs!1088166 d!1491336))

(assert (=> bs!1088166 m!5595777))

(declare-fun m!5596595 () Bool)

(assert (=> bs!1088166 m!5596595))

(assert (=> b!4691898 d!1491336))

(declare-fun d!1491338 () Bool)

(assert (=> d!1491338 (eq!1023 (addToMapMapFromBucket!1296 (Cons!52435 lt!1851974 lt!1851987) lt!1851993) (+!2148 (addToMapMapFromBucket!1296 lt!1851987 lt!1851993) lt!1851974))))

(declare-fun lt!1852545 () Unit!124405)

(assert (=> d!1491338 (= lt!1852545 (choose!32633 lt!1851974 lt!1851987 lt!1851993))))

(assert (=> d!1491338 (noDuplicateKeys!1864 lt!1851987)))

(assert (=> d!1491338 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!272 lt!1851974 lt!1851987 lt!1851993) lt!1852545)))

(declare-fun bs!1088167 () Bool)

(assert (= bs!1088167 d!1491338))

(assert (=> bs!1088167 m!5595647))

(assert (=> bs!1088167 m!5595661))

(assert (=> bs!1088167 m!5595663))

(declare-fun m!5596597 () Bool)

(assert (=> bs!1088167 m!5596597))

(assert (=> bs!1088167 m!5595627))

(assert (=> bs!1088167 m!5596003))

(assert (=> bs!1088167 m!5595647))

(assert (=> bs!1088167 m!5595627))

(assert (=> bs!1088167 m!5595661))

(assert (=> b!4691898 d!1491338))

(declare-fun d!1491340 () Bool)

(assert (=> d!1491340 (= (head!9992 newBucket!218) (h!58686 newBucket!218))))

(assert (=> b!4691898 d!1491340))

(declare-fun bs!1088168 () Bool)

(declare-fun b!4692328 () Bool)

(assert (= bs!1088168 (and b!4692328 b!4692254)))

(declare-fun lambda!207776 () Int)

(assert (=> bs!1088168 (= (= lt!1851993 lt!1852442) (= lambda!207776 lambda!207750))))

(declare-fun bs!1088169 () Bool)

(assert (= bs!1088169 (and b!4692328 b!4692293)))

(assert (=> bs!1088169 (= (= lt!1851993 lt!1852469) (= lambda!207776 lambda!207760))))

(assert (=> bs!1088169 (= lambda!207776 lambda!207759)))

(declare-fun bs!1088170 () Bool)

(assert (= bs!1088170 (and b!4692328 d!1491300)))

(assert (=> bs!1088170 (not (= lambda!207776 lambda!207756))))

(declare-fun bs!1088171 () Bool)

(assert (= bs!1088171 (and b!4692328 b!4692301)))

(assert (=> bs!1088171 (= lambda!207776 lambda!207763)))

(assert (=> bs!1088168 (= lambda!207776 lambda!207749)))

(declare-fun bs!1088172 () Bool)

(assert (= bs!1088172 (and b!4692328 b!4692292)))

(assert (=> bs!1088172 (= lambda!207776 lambda!207758)))

(declare-fun bs!1088173 () Bool)

(assert (= bs!1088173 (and b!4692328 b!4692253)))

(assert (=> bs!1088173 (= lambda!207776 lambda!207747)))

(declare-fun bs!1088174 () Bool)

(assert (= bs!1088174 (and b!4692328 d!1491228)))

(assert (=> bs!1088174 (= (= lt!1851993 lt!1852426) (= lambda!207776 lambda!207751))))

(declare-fun bs!1088175 () Bool)

(assert (= bs!1088175 (and b!4692328 b!4692302)))

(assert (=> bs!1088175 (= lambda!207776 lambda!207764)))

(declare-fun bs!1088176 () Bool)

(assert (= bs!1088176 (and b!4692328 b!4692324)))

(assert (=> bs!1088176 (= (= lt!1851993 lt!1852540) (= lambda!207776 lambda!207774))))

(assert (=> bs!1088176 (= lambda!207776 lambda!207773)))

(declare-fun bs!1088177 () Bool)

(assert (= bs!1088177 (and b!4692328 d!1491318)))

(assert (=> bs!1088177 (= (= lt!1851993 lt!1852482) (= lambda!207776 lambda!207766))))

(declare-fun bs!1088178 () Bool)

(assert (= bs!1088178 (and b!4692328 d!1491306)))

(assert (=> bs!1088178 (not (= lambda!207776 lambda!207757))))

(assert (=> bs!1088175 (= (= lt!1851993 lt!1852498) (= lambda!207776 lambda!207765))))

(declare-fun bs!1088179 () Bool)

(assert (= bs!1088179 (and b!4692328 d!1491308)))

(assert (=> bs!1088179 (= (= lt!1851993 lt!1852453) (= lambda!207776 lambda!207761))))

(declare-fun bs!1088180 () Bool)

(assert (= bs!1088180 (and b!4692328 d!1491332)))

(assert (=> bs!1088180 (= (= lt!1851993 lt!1852524) (= lambda!207776 lambda!207775))))

(declare-fun bs!1088181 () Bool)

(assert (= bs!1088181 (and b!4692328 b!4692323)))

(assert (=> bs!1088181 (= lambda!207776 lambda!207772)))

(assert (=> b!4692328 true))

(declare-fun bs!1088182 () Bool)

(declare-fun b!4692329 () Bool)

(assert (= bs!1088182 (and b!4692329 b!4692254)))

(declare-fun lambda!207777 () Int)

(assert (=> bs!1088182 (= (= lt!1851993 lt!1852442) (= lambda!207777 lambda!207750))))

(declare-fun bs!1088183 () Bool)

(assert (= bs!1088183 (and b!4692329 b!4692293)))

(assert (=> bs!1088183 (= (= lt!1851993 lt!1852469) (= lambda!207777 lambda!207760))))

(assert (=> bs!1088183 (= lambda!207777 lambda!207759)))

(declare-fun bs!1088184 () Bool)

(assert (= bs!1088184 (and b!4692329 d!1491300)))

(assert (=> bs!1088184 (not (= lambda!207777 lambda!207756))))

(declare-fun bs!1088185 () Bool)

(assert (= bs!1088185 (and b!4692329 b!4692301)))

(assert (=> bs!1088185 (= lambda!207777 lambda!207763)))

(assert (=> bs!1088182 (= lambda!207777 lambda!207749)))

(declare-fun bs!1088186 () Bool)

(assert (= bs!1088186 (and b!4692329 b!4692292)))

(assert (=> bs!1088186 (= lambda!207777 lambda!207758)))

(declare-fun bs!1088187 () Bool)

(assert (= bs!1088187 (and b!4692329 b!4692253)))

(assert (=> bs!1088187 (= lambda!207777 lambda!207747)))

(declare-fun bs!1088188 () Bool)

(assert (= bs!1088188 (and b!4692329 d!1491228)))

(assert (=> bs!1088188 (= (= lt!1851993 lt!1852426) (= lambda!207777 lambda!207751))))

(declare-fun bs!1088189 () Bool)

(assert (= bs!1088189 (and b!4692329 b!4692302)))

(assert (=> bs!1088189 (= lambda!207777 lambda!207764)))

(declare-fun bs!1088190 () Bool)

(assert (= bs!1088190 (and b!4692329 b!4692324)))

(assert (=> bs!1088190 (= (= lt!1851993 lt!1852540) (= lambda!207777 lambda!207774))))

(assert (=> bs!1088190 (= lambda!207777 lambda!207773)))

(declare-fun bs!1088191 () Bool)

(assert (= bs!1088191 (and b!4692329 b!4692328)))

(assert (=> bs!1088191 (= lambda!207777 lambda!207776)))

(declare-fun bs!1088192 () Bool)

(assert (= bs!1088192 (and b!4692329 d!1491318)))

(assert (=> bs!1088192 (= (= lt!1851993 lt!1852482) (= lambda!207777 lambda!207766))))

(declare-fun bs!1088193 () Bool)

(assert (= bs!1088193 (and b!4692329 d!1491306)))

(assert (=> bs!1088193 (not (= lambda!207777 lambda!207757))))

(assert (=> bs!1088189 (= (= lt!1851993 lt!1852498) (= lambda!207777 lambda!207765))))

(declare-fun bs!1088194 () Bool)

(assert (= bs!1088194 (and b!4692329 d!1491308)))

(assert (=> bs!1088194 (= (= lt!1851993 lt!1852453) (= lambda!207777 lambda!207761))))

(declare-fun bs!1088195 () Bool)

(assert (= bs!1088195 (and b!4692329 d!1491332)))

(assert (=> bs!1088195 (= (= lt!1851993 lt!1852524) (= lambda!207777 lambda!207775))))

(declare-fun bs!1088196 () Bool)

(assert (= bs!1088196 (and b!4692329 b!4692323)))

(assert (=> bs!1088196 (= lambda!207777 lambda!207772)))

(assert (=> b!4692329 true))

(declare-fun lambda!207778 () Int)

(declare-fun lt!1852562 () ListMap!4981)

(assert (=> bs!1088182 (= (= lt!1852562 lt!1852442) (= lambda!207778 lambda!207750))))

(assert (=> bs!1088183 (= (= lt!1852562 lt!1852469) (= lambda!207778 lambda!207760))))

(assert (=> bs!1088183 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207759))))

(assert (=> bs!1088184 (not (= lambda!207778 lambda!207756))))

(assert (=> bs!1088185 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207763))))

(assert (=> bs!1088186 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207758))))

(assert (=> bs!1088187 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207747))))

(assert (=> bs!1088188 (= (= lt!1852562 lt!1852426) (= lambda!207778 lambda!207751))))

(assert (=> bs!1088189 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207764))))

(assert (=> bs!1088190 (= (= lt!1852562 lt!1852540) (= lambda!207778 lambda!207774))))

(assert (=> bs!1088190 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207773))))

(assert (=> bs!1088191 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207776))))

(assert (=> bs!1088192 (= (= lt!1852562 lt!1852482) (= lambda!207778 lambda!207766))))

(assert (=> bs!1088193 (not (= lambda!207778 lambda!207757))))

(assert (=> bs!1088182 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207749))))

(assert (=> b!4692329 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207777))))

(assert (=> bs!1088189 (= (= lt!1852562 lt!1852498) (= lambda!207778 lambda!207765))))

(assert (=> bs!1088194 (= (= lt!1852562 lt!1852453) (= lambda!207778 lambda!207761))))

(assert (=> bs!1088195 (= (= lt!1852562 lt!1852524) (= lambda!207778 lambda!207775))))

(assert (=> bs!1088196 (= (= lt!1852562 lt!1851993) (= lambda!207778 lambda!207772))))

(assert (=> b!4692329 true))

(declare-fun bs!1088197 () Bool)

(declare-fun d!1491342 () Bool)

(assert (= bs!1088197 (and d!1491342 b!4692254)))

(declare-fun lt!1852546 () ListMap!4981)

(declare-fun lambda!207779 () Int)

(assert (=> bs!1088197 (= (= lt!1852546 lt!1852442) (= lambda!207779 lambda!207750))))

(declare-fun bs!1088198 () Bool)

(assert (= bs!1088198 (and d!1491342 b!4692293)))

(assert (=> bs!1088198 (= (= lt!1852546 lt!1852469) (= lambda!207779 lambda!207760))))

(assert (=> bs!1088198 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207759))))

(declare-fun bs!1088199 () Bool)

(assert (= bs!1088199 (and d!1491342 d!1491300)))

(assert (=> bs!1088199 (not (= lambda!207779 lambda!207756))))

(declare-fun bs!1088200 () Bool)

(assert (= bs!1088200 (and d!1491342 b!4692301)))

(assert (=> bs!1088200 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207763))))

(declare-fun bs!1088201 () Bool)

(assert (= bs!1088201 (and d!1491342 b!4692292)))

(assert (=> bs!1088201 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207758))))

(declare-fun bs!1088202 () Bool)

(assert (= bs!1088202 (and d!1491342 b!4692253)))

(assert (=> bs!1088202 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207747))))

(declare-fun bs!1088203 () Bool)

(assert (= bs!1088203 (and d!1491342 d!1491228)))

(assert (=> bs!1088203 (= (= lt!1852546 lt!1852426) (= lambda!207779 lambda!207751))))

(declare-fun bs!1088204 () Bool)

(assert (= bs!1088204 (and d!1491342 b!4692302)))

(assert (=> bs!1088204 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207764))))

(declare-fun bs!1088205 () Bool)

(assert (= bs!1088205 (and d!1491342 b!4692324)))

(assert (=> bs!1088205 (= (= lt!1852546 lt!1852540) (= lambda!207779 lambda!207774))))

(assert (=> bs!1088205 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207773))))

(declare-fun bs!1088206 () Bool)

(assert (= bs!1088206 (and d!1491342 b!4692329)))

(assert (=> bs!1088206 (= (= lt!1852546 lt!1852562) (= lambda!207779 lambda!207778))))

(declare-fun bs!1088207 () Bool)

(assert (= bs!1088207 (and d!1491342 b!4692328)))

(assert (=> bs!1088207 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207776))))

(declare-fun bs!1088208 () Bool)

(assert (= bs!1088208 (and d!1491342 d!1491318)))

(assert (=> bs!1088208 (= (= lt!1852546 lt!1852482) (= lambda!207779 lambda!207766))))

(declare-fun bs!1088209 () Bool)

(assert (= bs!1088209 (and d!1491342 d!1491306)))

(assert (=> bs!1088209 (not (= lambda!207779 lambda!207757))))

(assert (=> bs!1088197 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207749))))

(assert (=> bs!1088206 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207777))))

(assert (=> bs!1088204 (= (= lt!1852546 lt!1852498) (= lambda!207779 lambda!207765))))

(declare-fun bs!1088210 () Bool)

(assert (= bs!1088210 (and d!1491342 d!1491308)))

(assert (=> bs!1088210 (= (= lt!1852546 lt!1852453) (= lambda!207779 lambda!207761))))

(declare-fun bs!1088211 () Bool)

(assert (= bs!1088211 (and d!1491342 d!1491332)))

(assert (=> bs!1088211 (= (= lt!1852546 lt!1852524) (= lambda!207779 lambda!207775))))

(declare-fun bs!1088212 () Bool)

(assert (= bs!1088212 (and d!1491342 b!4692323)))

(assert (=> bs!1088212 (= (= lt!1852546 lt!1851993) (= lambda!207779 lambda!207772))))

(assert (=> d!1491342 true))

(declare-fun bm!327950 () Bool)

(declare-fun call!327957 () Unit!124405)

(assert (=> bm!327950 (= call!327957 (lemmaContainsAllItsOwnKeys!704 lt!1851993))))

(declare-fun b!4692326 () Bool)

(declare-fun e!2927250 () Bool)

(assert (=> b!4692326 (= e!2927250 (forall!11339 (toList!5617 lt!1851993) lambda!207778))))

(declare-fun call!327955 () Bool)

(declare-fun bm!327951 () Bool)

(declare-fun c!802235 () Bool)

(declare-fun lt!1852554 () ListMap!4981)

(assert (=> bm!327951 (= call!327955 (forall!11339 (ite c!802235 (toList!5617 lt!1851993) (toList!5617 lt!1852554)) (ite c!802235 lambda!207776 lambda!207778)))))

(declare-fun b!4692327 () Bool)

(declare-fun res!1979577 () Bool)

(declare-fun e!2927251 () Bool)

(assert (=> b!4692327 (=> (not res!1979577) (not e!2927251))))

(assert (=> b!4692327 (= res!1979577 (forall!11339 (toList!5617 lt!1851993) lambda!207779))))

(declare-fun e!2927249 () ListMap!4981)

(assert (=> b!4692328 (= e!2927249 lt!1851993)))

(declare-fun lt!1852556 () Unit!124405)

(assert (=> b!4692328 (= lt!1852556 call!327957)))

(assert (=> b!4692328 call!327955))

(declare-fun lt!1852549 () Unit!124405)

(assert (=> b!4692328 (= lt!1852549 lt!1852556)))

(declare-fun call!327956 () Bool)

(assert (=> b!4692328 call!327956))

(declare-fun lt!1852548 () Unit!124405)

(declare-fun Unit!124516 () Unit!124405)

(assert (=> b!4692328 (= lt!1852548 Unit!124516)))

(assert (=> b!4692329 (= e!2927249 lt!1852562)))

(assert (=> b!4692329 (= lt!1852554 (+!2148 lt!1851993 (h!58686 lt!1851987)))))

(assert (=> b!4692329 (= lt!1852562 (addToMapMapFromBucket!1296 (t!359741 lt!1851987) (+!2148 lt!1851993 (h!58686 lt!1851987))))))

(declare-fun lt!1852559 () Unit!124405)

(assert (=> b!4692329 (= lt!1852559 call!327957)))

(assert (=> b!4692329 (forall!11339 (toList!5617 lt!1851993) lambda!207777)))

(declare-fun lt!1852553 () Unit!124405)

(assert (=> b!4692329 (= lt!1852553 lt!1852559)))

(assert (=> b!4692329 (forall!11339 (toList!5617 lt!1852554) lambda!207778)))

(declare-fun lt!1852551 () Unit!124405)

(declare-fun Unit!124517 () Unit!124405)

(assert (=> b!4692329 (= lt!1852551 Unit!124517)))

(assert (=> b!4692329 (forall!11339 (t!359741 lt!1851987) lambda!207778)))

(declare-fun lt!1852552 () Unit!124405)

(declare-fun Unit!124518 () Unit!124405)

(assert (=> b!4692329 (= lt!1852552 Unit!124518)))

(declare-fun lt!1852564 () Unit!124405)

(declare-fun Unit!124519 () Unit!124405)

(assert (=> b!4692329 (= lt!1852564 Unit!124519)))

(declare-fun lt!1852555 () Unit!124405)

(assert (=> b!4692329 (= lt!1852555 (forallContained!3446 (toList!5617 lt!1852554) lambda!207778 (h!58686 lt!1851987)))))

(assert (=> b!4692329 (contains!15652 lt!1852554 (_1!30219 (h!58686 lt!1851987)))))

(declare-fun lt!1852563 () Unit!124405)

(declare-fun Unit!124520 () Unit!124405)

(assert (=> b!4692329 (= lt!1852563 Unit!124520)))

(assert (=> b!4692329 (contains!15652 lt!1852562 (_1!30219 (h!58686 lt!1851987)))))

(declare-fun lt!1852557 () Unit!124405)

(declare-fun Unit!124521 () Unit!124405)

(assert (=> b!4692329 (= lt!1852557 Unit!124521)))

(assert (=> b!4692329 (forall!11339 lt!1851987 lambda!207778)))

(declare-fun lt!1852550 () Unit!124405)

(declare-fun Unit!124522 () Unit!124405)

(assert (=> b!4692329 (= lt!1852550 Unit!124522)))

(assert (=> b!4692329 call!327955))

(declare-fun lt!1852547 () Unit!124405)

(declare-fun Unit!124523 () Unit!124405)

(assert (=> b!4692329 (= lt!1852547 Unit!124523)))

(declare-fun lt!1852566 () Unit!124405)

(declare-fun Unit!124524 () Unit!124405)

(assert (=> b!4692329 (= lt!1852566 Unit!124524)))

(declare-fun lt!1852558 () Unit!124405)

(assert (=> b!4692329 (= lt!1852558 (addForallContainsKeyThenBeforeAdding!703 lt!1851993 lt!1852562 (_1!30219 (h!58686 lt!1851987)) (_2!30219 (h!58686 lt!1851987))))))

(assert (=> b!4692329 (forall!11339 (toList!5617 lt!1851993) lambda!207778)))

(declare-fun lt!1852560 () Unit!124405)

(assert (=> b!4692329 (= lt!1852560 lt!1852558)))

(assert (=> b!4692329 call!327956))

(declare-fun lt!1852565 () Unit!124405)

(declare-fun Unit!124525 () Unit!124405)

(assert (=> b!4692329 (= lt!1852565 Unit!124525)))

(declare-fun res!1979576 () Bool)

(assert (=> b!4692329 (= res!1979576 (forall!11339 lt!1851987 lambda!207778))))

(assert (=> b!4692329 (=> (not res!1979576) (not e!2927250))))

(assert (=> b!4692329 e!2927250))

(declare-fun lt!1852561 () Unit!124405)

(declare-fun Unit!124526 () Unit!124405)

(assert (=> b!4692329 (= lt!1852561 Unit!124526)))

(declare-fun bm!327952 () Bool)

(assert (=> bm!327952 (= call!327956 (forall!11339 (toList!5617 lt!1851993) (ite c!802235 lambda!207776 lambda!207778)))))

(declare-fun b!4692330 () Bool)

(assert (=> b!4692330 (= e!2927251 (invariantList!1416 (toList!5617 lt!1852546)))))

(assert (=> d!1491342 e!2927251))

(declare-fun res!1979575 () Bool)

(assert (=> d!1491342 (=> (not res!1979575) (not e!2927251))))

(assert (=> d!1491342 (= res!1979575 (forall!11339 lt!1851987 lambda!207779))))

(assert (=> d!1491342 (= lt!1852546 e!2927249)))

(assert (=> d!1491342 (= c!802235 ((_ is Nil!52435) lt!1851987))))

(assert (=> d!1491342 (noDuplicateKeys!1864 lt!1851987)))

(assert (=> d!1491342 (= (addToMapMapFromBucket!1296 lt!1851987 lt!1851993) lt!1852546)))

(assert (= (and d!1491342 c!802235) b!4692328))

(assert (= (and d!1491342 (not c!802235)) b!4692329))

(assert (= (and b!4692329 res!1979576) b!4692326))

(assert (= (or b!4692328 b!4692329) bm!327950))

(assert (= (or b!4692328 b!4692329) bm!327952))

(assert (= (or b!4692328 b!4692329) bm!327951))

(assert (= (and d!1491342 res!1979575) b!4692327))

(assert (= (and b!4692327 res!1979577) b!4692330))

(declare-fun m!5596599 () Bool)

(assert (=> bm!327951 m!5596599))

(declare-fun m!5596601 () Bool)

(assert (=> b!4692326 m!5596601))

(declare-fun m!5596603 () Bool)

(assert (=> b!4692330 m!5596603))

(declare-fun m!5596605 () Bool)

(assert (=> bm!327952 m!5596605))

(assert (=> bm!327950 m!5596321))

(declare-fun m!5596607 () Bool)

(assert (=> b!4692327 m!5596607))

(declare-fun m!5596609 () Bool)

(assert (=> d!1491342 m!5596609))

(assert (=> d!1491342 m!5596003))

(declare-fun m!5596611 () Bool)

(assert (=> b!4692329 m!5596611))

(declare-fun m!5596613 () Bool)

(assert (=> b!4692329 m!5596613))

(declare-fun m!5596615 () Bool)

(assert (=> b!4692329 m!5596615))

(declare-fun m!5596617 () Bool)

(assert (=> b!4692329 m!5596617))

(declare-fun m!5596619 () Bool)

(assert (=> b!4692329 m!5596619))

(assert (=> b!4692329 m!5596619))

(declare-fun m!5596621 () Bool)

(assert (=> b!4692329 m!5596621))

(assert (=> b!4692329 m!5596601))

(assert (=> b!4692329 m!5596617))

(declare-fun m!5596623 () Bool)

(assert (=> b!4692329 m!5596623))

(declare-fun m!5596625 () Bool)

(assert (=> b!4692329 m!5596625))

(declare-fun m!5596627 () Bool)

(assert (=> b!4692329 m!5596627))

(declare-fun m!5596629 () Bool)

(assert (=> b!4692329 m!5596629))

(assert (=> b!4691898 d!1491342))

(declare-fun d!1491344 () Bool)

(assert (=> d!1491344 (= (eq!1023 (addToMapMapFromBucket!1296 (Cons!52435 lt!1851988 lt!1851981) lt!1851993) (+!2148 (addToMapMapFromBucket!1296 lt!1851981 lt!1851993) lt!1851988)) (= (content!9177 (toList!5617 (addToMapMapFromBucket!1296 (Cons!52435 lt!1851988 lt!1851981) lt!1851993))) (content!9177 (toList!5617 (+!2148 (addToMapMapFromBucket!1296 lt!1851981 lt!1851993) lt!1851988)))))))

(declare-fun bs!1088213 () Bool)

(assert (= bs!1088213 d!1491344))

(declare-fun m!5596631 () Bool)

(assert (=> bs!1088213 m!5596631))

(declare-fun m!5596633 () Bool)

(assert (=> bs!1088213 m!5596633))

(assert (=> b!4691898 d!1491344))

(declare-fun b!4692335 () Bool)

(declare-fun e!2927254 () Bool)

(declare-fun tp!1346082 () Bool)

(declare-fun tp!1346083 () Bool)

(assert (=> b!4692335 (= e!2927254 (and tp!1346082 tp!1346083))))

(assert (=> b!4691901 (= tp!1346067 e!2927254)))

(assert (= (and b!4691901 ((_ is Cons!52436) (toList!5618 lm!2023))) b!4692335))

(declare-fun b!4692340 () Bool)

(declare-fun tp!1346086 () Bool)

(declare-fun e!2927257 () Bool)

(assert (=> b!4692340 (= e!2927257 (and tp_is_empty!30749 tp_is_empty!30751 tp!1346086))))

(assert (=> b!4691896 (= tp!1346065 e!2927257)))

(assert (= (and b!4691896 ((_ is Cons!52435) (t!359741 oldBucket!34))) b!4692340))

(declare-fun e!2927258 () Bool)

(declare-fun tp!1346087 () Bool)

(declare-fun b!4692341 () Bool)

(assert (=> b!4692341 (= e!2927258 (and tp_is_empty!30749 tp_is_empty!30751 tp!1346087))))

(assert (=> b!4691892 (= tp!1346066 e!2927258)))

(assert (= (and b!4691892 ((_ is Cons!52435) (t!359741 newBucket!218))) b!4692341))

(declare-fun b_lambda!177057 () Bool)

(assert (= b_lambda!177047 (or start!474788 b_lambda!177057)))

(declare-fun bs!1088214 () Bool)

(declare-fun d!1491346 () Bool)

(assert (= bs!1088214 (and d!1491346 start!474788)))

(assert (=> bs!1088214 (= (dynLambda!21719 lambda!207619 lt!1851990) (noDuplicateKeys!1864 (_2!30220 lt!1851990)))))

(declare-fun m!5596635 () Bool)

(assert (=> bs!1088214 m!5596635))

(assert (=> d!1491164 d!1491346))

(declare-fun b_lambda!177059 () Bool)

(assert (= b_lambda!177051 (or start!474788 b_lambda!177059)))

(declare-fun bs!1088215 () Bool)

(declare-fun d!1491348 () Bool)

(assert (= bs!1088215 (and d!1491348 start!474788)))

(assert (=> bs!1088215 (= (dynLambda!21719 lambda!207619 (h!58687 (toList!5618 lm!2023))) (noDuplicateKeys!1864 (_2!30220 (h!58687 (toList!5618 lm!2023)))))))

(assert (=> bs!1088215 m!5596327))

(assert (=> b!4692273 d!1491348))

(check-sat (not d!1491188) (not b!4692157) (not b!4692313) (not bm!327944) (not b!4692047) (not b!4692299) (not b!4692028) (not bm!327949) (not b!4692329) (not b!4692303) (not b!4692050) (not d!1491226) (not d!1491314) (not d!1491160) (not d!1491202) (not d!1491194) (not b!4692127) (not b!4692260) tp_is_empty!30751 (not b!4692083) (not b!4692052) tp_is_empty!30749 (not bm!327942) (not b!4692080) (not d!1491342) (not b!4692126) (not b!4692322) (not d!1491330) (not d!1491328) (not d!1491126) (not b!4692316) (not bm!327952) (not b!4692274) (not d!1491156) (not d!1491120) (not b!4692021) (not d!1491300) (not b!4692251) (not d!1491150) (not b!4691933) (not d!1491322) (not d!1491110) (not b!4692101) (not b!4692082) (not b!4692081) (not b!4692059) (not d!1491158) (not d!1491320) (not b!4692048) (not bm!327937) (not b!4692143) (not bs!1088214) (not b!4692310) (not bm!327950) (not d!1491338) (not b!4692020) (not b!4692304) (not bm!327948) (not b!4692314) (not d!1491296) (not bm!327945) (not bm!327939) (not bm!327947) (not d!1491332) (not d!1491172) (not d!1491336) (not d!1491174) (not b!4691927) (not b_lambda!177057) (not b!4692290) (not d!1491218) (not d!1491308) (not d!1491312) (not d!1491306) (not d!1491324) (not b!4692308) (not d!1491228) (not d!1491316) (not b!4692295) (not d!1491152) (not d!1491192) (not b!4692326) (not b!4692254) (not b!4692327) (not bm!327905) (not b!4692294) (not bm!327943) (not d!1491310) (not b!4692340) (not b!4691929) (not b!4692302) (not bm!327951) (not d!1491154) (not b!4692300) (not b!4692306) (not b!4692133) (not d!1491318) (not bm!327940) (not d!1491344) (not b!4692096) (not b!4692099) (not b!4692291) (not d!1491286) (not d!1491196) (not bm!327938) (not d!1491288) (not b!4692335) (not b_lambda!177059) (not b!4692045) (not b!4691928) (not d!1491138) (not b!4692325) (not b!4692255) (not b!4692318) (not b!4692317) (not b!4692298) (not b!4692262) (not b!4692324) (not b!4692319) (not d!1491170) (not b!4691930) (not d!1491176) (not b!4691981) (not b!4692061) (not b!4691932) (not bm!327946) (not b!4692341) (not b!4692297) (not b!4691952) (not bs!1088215) (not b!4692305) (not d!1491164) (not b!4692170) (not b!4692158) (not d!1491298) (not b!4692263) (not b!4692330) (not b!4691935) (not d!1491134) (not b!4692321) (not b!4692311) (not b!4692252) (not b!4692293) (not d!1491326) (not b!4692309) (not bm!327941))
(check-sat)
