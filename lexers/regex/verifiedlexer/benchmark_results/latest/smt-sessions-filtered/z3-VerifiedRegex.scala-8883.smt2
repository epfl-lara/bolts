; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!475052 () Bool)

(assert start!475052)

(declare-fun b!4693017 () Bool)

(declare-fun e!2927665 () Bool)

(declare-fun tp!1346141 () Bool)

(assert (=> b!4693017 (= e!2927665 tp!1346141)))

(declare-fun b!4693018 () Bool)

(declare-fun e!2927667 () Bool)

(declare-fun e!2927670 () Bool)

(assert (=> b!4693018 (= e!2927667 (not e!2927670))))

(declare-fun res!1980002 () Bool)

(assert (=> b!4693018 (=> res!1980002 e!2927670)))

(declare-datatypes ((K!13820 0))(
  ( (K!13821 (val!19327 Int)) )
))
(declare-datatypes ((V!14066 0))(
  ( (V!14067 (val!19328 Int)) )
))
(declare-datatypes ((tuple2!53866 0))(
  ( (tuple2!53867 (_1!30227 K!13820) (_2!30227 V!14066)) )
))
(declare-datatypes ((List!52571 0))(
  ( (Nil!52447) (Cons!52447 (h!58702 tuple2!53866) (t!359757 List!52571)) )
))
(declare-fun oldBucket!34 () List!52571)

(declare-fun key!4653 () K!13820)

(get-info :version)

(assert (=> b!4693018 (= res!1980002 (or (and ((_ is Cons!52447) oldBucket!34) (= (_1!30227 (h!58702 oldBucket!34)) key!4653)) (not ((_ is Cons!52447) oldBucket!34)) (= (_1!30227 (h!58702 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!4989 0))(
  ( (ListMap!4990 (toList!5625 List!52571)) )
))
(declare-fun lt!1853428 () ListMap!4989)

(declare-datatypes ((tuple2!53868 0))(
  ( (tuple2!53869 (_1!30228 (_ BitVec 64)) (_2!30228 List!52571)) )
))
(declare-datatypes ((List!52572 0))(
  ( (Nil!52448) (Cons!52448 (h!58703 tuple2!53868) (t!359758 List!52572)) )
))
(declare-datatypes ((ListLongMap!4155 0))(
  ( (ListLongMap!4156 (toList!5626 List!52572)) )
))
(declare-fun lm!2023 () ListLongMap!4155)

(declare-fun lt!1853429 () ListMap!4989)

(declare-fun addToMapMapFromBucket!1300 (List!52571 ListMap!4989) ListMap!4989)

(assert (=> b!4693018 (= lt!1853428 (addToMapMapFromBucket!1300 (_2!30228 (h!58703 (toList!5626 lm!2023))) lt!1853429))))

(declare-fun extractMap!1894 (List!52572) ListMap!4989)

(assert (=> b!4693018 (= lt!1853429 (extractMap!1894 (t!359758 (toList!5626 lm!2023))))))

(declare-fun tail!8629 (ListLongMap!4155) ListLongMap!4155)

(assert (=> b!4693018 (= (t!359758 (toList!5626 lm!2023)) (toList!5626 (tail!8629 lm!2023)))))

(declare-fun b!4693019 () Bool)

(declare-fun res!1979994 () Bool)

(declare-fun e!2927664 () Bool)

(assert (=> b!4693019 (=> (not res!1979994) (not e!2927664))))

(declare-datatypes ((Hashable!6237 0))(
  ( (HashableExt!6236 (__x!31940 Int)) )
))
(declare-fun hashF!1323 () Hashable!6237)

(declare-fun allKeysSameHashInMap!1782 (ListLongMap!4155 Hashable!6237) Bool)

(assert (=> b!4693019 (= res!1979994 (allKeysSameHashInMap!1782 lm!2023 hashF!1323))))

(declare-fun b!4693020 () Bool)

(declare-fun e!2927666 () Bool)

(declare-fun lt!1853451 () List!52572)

(declare-fun lambda!207967 () Int)

(declare-fun forall!11345 (List!52572 Int) Bool)

(assert (=> b!4693020 (= e!2927666 (forall!11345 lt!1853451 lambda!207967))))

(declare-fun lt!1853432 () ListMap!4989)

(declare-fun lt!1853444 () tuple2!53868)

(assert (=> b!4693020 (= lt!1853432 (extractMap!1894 (Cons!52448 lt!1853444 (t!359758 (toList!5626 lm!2023)))))))

(declare-fun lt!1853452 () tuple2!53868)

(declare-fun lt!1853443 () List!52572)

(declare-fun eq!1027 (ListMap!4989 ListMap!4989) Bool)

(declare-fun -!672 (ListMap!4989 K!13820) ListMap!4989)

(assert (=> b!4693020 (eq!1027 (extractMap!1894 (Cons!52448 lt!1853444 lt!1853443)) (-!672 (extractMap!1894 (Cons!52448 lt!1853452 lt!1853443)) key!4653))))

(declare-fun tail!8630 (List!52572) List!52572)

(assert (=> b!4693020 (= lt!1853443 (tail!8630 lt!1853451))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1853449 () List!52571)

(assert (=> b!4693020 (= lt!1853444 (tuple2!53869 hash!405 lt!1853449))))

(declare-fun lt!1853442 () ListLongMap!4155)

(declare-datatypes ((Unit!124653 0))(
  ( (Unit!124654) )
))
(declare-fun lt!1853435 () Unit!124653)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!42 (ListLongMap!4155 (_ BitVec 64) List!52571 List!52571 K!13820 Hashable!6237) Unit!124653)

(assert (=> b!4693020 (= lt!1853435 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!42 lt!1853442 hash!405 (t!359757 oldBucket!34) lt!1853449 key!4653 hashF!1323))))

(declare-fun b!4693021 () Bool)

(declare-fun res!1979997 () Bool)

(declare-fun e!2927660 () Bool)

(assert (=> b!4693021 (=> (not res!1979997) (not e!2927660))))

(declare-fun newBucket!218 () List!52571)

(declare-fun noDuplicateKeys!1868 (List!52571) Bool)

(assert (=> b!4693021 (= res!1979997 (noDuplicateKeys!1868 newBucket!218))))

(declare-fun e!2927661 () Bool)

(declare-fun tp!1346143 () Bool)

(declare-fun b!4693022 () Bool)

(declare-fun tp_is_empty!30765 () Bool)

(declare-fun tp_is_empty!30767 () Bool)

(assert (=> b!4693022 (= e!2927661 (and tp_is_empty!30765 tp_is_empty!30767 tp!1346143))))

(declare-fun b!4693023 () Bool)

(declare-fun e!2927669 () Bool)

(declare-fun e!2927668 () Bool)

(assert (=> b!4693023 (= e!2927669 e!2927668)))

(declare-fun res!1979995 () Bool)

(assert (=> b!4693023 (=> res!1979995 e!2927668)))

(declare-fun lt!1853436 () List!52571)

(declare-fun removePairForKey!1463 (List!52571 K!13820) List!52571)

(assert (=> b!4693023 (= res!1979995 (not (= (removePairForKey!1463 lt!1853436 key!4653) lt!1853449)))))

(declare-fun tail!8631 (List!52571) List!52571)

(assert (=> b!4693023 (= lt!1853449 (tail!8631 newBucket!218))))

(assert (=> b!4693023 (= lt!1853436 (tail!8631 oldBucket!34))))

(declare-fun e!2927662 () Bool)

(declare-fun b!4693024 () Bool)

(declare-fun tp!1346142 () Bool)

(assert (=> b!4693024 (= e!2927662 (and tp_is_empty!30765 tp_is_empty!30767 tp!1346142))))

(declare-fun b!4693025 () Bool)

(assert (=> b!4693025 (= e!2927664 e!2927667)))

(declare-fun res!1979998 () Bool)

(assert (=> b!4693025 (=> (not res!1979998) (not e!2927667))))

(declare-fun lt!1853447 () tuple2!53868)

(declare-fun head!9999 (List!52572) tuple2!53868)

(assert (=> b!4693025 (= res!1979998 (= (head!9999 (toList!5626 lm!2023)) lt!1853447))))

(assert (=> b!4693025 (= lt!1853447 (tuple2!53869 hash!405 oldBucket!34))))

(declare-fun b!4693026 () Bool)

(declare-fun e!2927663 () Bool)

(assert (=> b!4693026 (= e!2927660 e!2927663)))

(declare-fun res!1980003 () Bool)

(assert (=> b!4693026 (=> (not res!1980003) (not e!2927663))))

(declare-fun contains!15670 (ListMap!4989 K!13820) Bool)

(assert (=> b!4693026 (= res!1980003 (contains!15670 lt!1853428 key!4653))))

(assert (=> b!4693026 (= lt!1853428 (extractMap!1894 (toList!5626 lm!2023)))))

(declare-fun b!4693027 () Bool)

(declare-fun res!1980007 () Bool)

(assert (=> b!4693027 (=> (not res!1980007) (not e!2927660))))

(assert (=> b!4693027 (= res!1980007 (= (removePairForKey!1463 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4693028 () Bool)

(declare-fun res!1979996 () Bool)

(assert (=> b!4693028 (=> (not res!1979996) (not e!2927667))))

(assert (=> b!4693028 (= res!1979996 ((_ is Cons!52448) (toList!5626 lm!2023)))))

(declare-fun b!4693029 () Bool)

(declare-fun res!1980005 () Bool)

(assert (=> b!4693029 (=> (not res!1980005) (not e!2927660))))

(assert (=> b!4693029 (= res!1980005 (noDuplicateKeys!1868 oldBucket!34))))

(declare-fun b!4693030 () Bool)

(assert (=> b!4693030 (= e!2927663 e!2927664)))

(declare-fun res!1979992 () Bool)

(assert (=> b!4693030 (=> (not res!1979992) (not e!2927664))))

(declare-fun lt!1853440 () (_ BitVec 64))

(assert (=> b!4693030 (= res!1979992 (= lt!1853440 hash!405))))

(declare-fun hash!4093 (Hashable!6237 K!13820) (_ BitVec 64))

(assert (=> b!4693030 (= lt!1853440 (hash!4093 hashF!1323 key!4653))))

(declare-fun b!4693031 () Bool)

(declare-fun res!1980004 () Bool)

(assert (=> b!4693031 (=> (not res!1980004) (not e!2927664))))

(declare-fun allKeysSameHash!1694 (List!52571 (_ BitVec 64) Hashable!6237) Bool)

(assert (=> b!4693031 (= res!1980004 (allKeysSameHash!1694 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4693032 () Bool)

(assert (=> b!4693032 (= e!2927670 e!2927669)))

(declare-fun res!1979993 () Bool)

(assert (=> b!4693032 (=> res!1979993 e!2927669)))

(declare-fun containsKey!3087 (List!52571 K!13820) Bool)

(assert (=> b!4693032 (= res!1979993 (not (containsKey!3087 (t!359757 oldBucket!34) key!4653)))))

(assert (=> b!4693032 (containsKey!3087 oldBucket!34 key!4653)))

(declare-fun lt!1853426 () Unit!124653)

(declare-fun lemmaGetPairDefinedThenContainsKey!220 (List!52571 K!13820 Hashable!6237) Unit!124653)

(assert (=> b!4693032 (= lt!1853426 (lemmaGetPairDefinedThenContainsKey!220 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1853427 () List!52571)

(declare-datatypes ((Option!12111 0))(
  ( (None!12110) (Some!12110 (v!46545 tuple2!53866)) )
))
(declare-fun isDefined!9366 (Option!12111) Bool)

(declare-fun getPair!472 (List!52571 K!13820) Option!12111)

(assert (=> b!4693032 (isDefined!9366 (getPair!472 lt!1853427 key!4653))))

(declare-fun lt!1853431 () Unit!124653)

(declare-fun lt!1853439 () tuple2!53868)

(declare-fun forallContained!3452 (List!52572 Int tuple2!53868) Unit!124653)

(assert (=> b!4693032 (= lt!1853431 (forallContained!3452 (toList!5626 lm!2023) lambda!207967 lt!1853439))))

(declare-fun contains!15671 (List!52572 tuple2!53868) Bool)

(assert (=> b!4693032 (contains!15671 (toList!5626 lm!2023) lt!1853439)))

(assert (=> b!4693032 (= lt!1853439 (tuple2!53869 lt!1853440 lt!1853427))))

(declare-fun lt!1853437 () Unit!124653)

(declare-fun lemmaGetValueImpliesTupleContained!277 (ListLongMap!4155 (_ BitVec 64) List!52571) Unit!124653)

(assert (=> b!4693032 (= lt!1853437 (lemmaGetValueImpliesTupleContained!277 lm!2023 lt!1853440 lt!1853427))))

(declare-fun apply!12351 (ListLongMap!4155 (_ BitVec 64)) List!52571)

(assert (=> b!4693032 (= lt!1853427 (apply!12351 lm!2023 lt!1853440))))

(declare-fun contains!15672 (ListLongMap!4155 (_ BitVec 64)) Bool)

(assert (=> b!4693032 (contains!15672 lm!2023 lt!1853440)))

(declare-fun lt!1853448 () Unit!124653)

(declare-fun lemmaInGenMapThenLongMapContainsHash!678 (ListLongMap!4155 K!13820 Hashable!6237) Unit!124653)

(assert (=> b!4693032 (= lt!1853448 (lemmaInGenMapThenLongMapContainsHash!678 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1853433 () Unit!124653)

(declare-fun lemmaInGenMapThenGetPairDefined!268 (ListLongMap!4155 K!13820 Hashable!6237) Unit!124653)

(assert (=> b!4693032 (= lt!1853433 (lemmaInGenMapThenGetPairDefined!268 lm!2023 key!4653 hashF!1323))))

(declare-fun res!1980001 () Bool)

(assert (=> start!475052 (=> (not res!1980001) (not e!2927660))))

(assert (=> start!475052 (= res!1980001 (forall!11345 (toList!5626 lm!2023) lambda!207967))))

(assert (=> start!475052 e!2927660))

(declare-fun inv!67694 (ListLongMap!4155) Bool)

(assert (=> start!475052 (and (inv!67694 lm!2023) e!2927665)))

(assert (=> start!475052 tp_is_empty!30765))

(assert (=> start!475052 e!2927661))

(assert (=> start!475052 true))

(assert (=> start!475052 e!2927662))

(declare-fun b!4693033 () Bool)

(declare-fun res!1980008 () Bool)

(assert (=> b!4693033 (=> (not res!1980008) (not e!2927660))))

(assert (=> b!4693033 (= res!1980008 (allKeysSameHash!1694 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4693034 () Bool)

(declare-fun res!1980006 () Bool)

(assert (=> b!4693034 (=> res!1980006 e!2927666)))

(declare-fun lt!1853430 () tuple2!53866)

(assert (=> b!4693034 (= res!1980006 (not (= (h!58702 oldBucket!34) lt!1853430)))))

(declare-fun b!4693035 () Bool)

(assert (=> b!4693035 (= e!2927668 e!2927666)))

(declare-fun res!1980000 () Bool)

(assert (=> b!4693035 (=> res!1980000 e!2927666)))

(declare-fun lt!1853434 () ListMap!4989)

(declare-fun lt!1853445 () ListMap!4989)

(declare-fun +!2152 (ListMap!4989 tuple2!53866) ListMap!4989)

(assert (=> b!4693035 (= res!1980000 (not (eq!1027 lt!1853434 (+!2152 lt!1853445 (h!58702 oldBucket!34)))))))

(assert (=> b!4693035 (= lt!1853445 (extractMap!1894 (Cons!52448 (tuple2!53869 hash!405 lt!1853436) (t!359758 (toList!5626 lm!2023)))))))

(assert (=> b!4693035 (= lt!1853434 (extractMap!1894 (Cons!52448 lt!1853447 (t!359758 (toList!5626 lm!2023)))))))

(assert (=> b!4693035 (eq!1027 (addToMapMapFromBucket!1300 (Cons!52447 lt!1853430 lt!1853449) lt!1853429) (+!2152 (addToMapMapFromBucket!1300 lt!1853449 lt!1853429) lt!1853430))))

(declare-fun lt!1853438 () Unit!124653)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!276 (tuple2!53866 List!52571 ListMap!4989) Unit!124653)

(assert (=> b!4693035 (= lt!1853438 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!276 lt!1853430 lt!1853449 lt!1853429))))

(declare-fun head!10000 (List!52571) tuple2!53866)

(assert (=> b!4693035 (= lt!1853430 (head!10000 newBucket!218))))

(declare-fun lt!1853450 () tuple2!53866)

(assert (=> b!4693035 (eq!1027 (addToMapMapFromBucket!1300 (Cons!52447 lt!1853450 lt!1853436) lt!1853429) (+!2152 (addToMapMapFromBucket!1300 lt!1853436 lt!1853429) lt!1853450))))

(declare-fun lt!1853446 () Unit!124653)

(assert (=> b!4693035 (= lt!1853446 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!276 lt!1853450 lt!1853436 lt!1853429))))

(assert (=> b!4693035 (= lt!1853450 (head!10000 oldBucket!34))))

(assert (=> b!4693035 (contains!15670 (extractMap!1894 lt!1853451) key!4653)))

(declare-fun lt!1853441 () Unit!124653)

(declare-fun lemmaListContainsThenExtractedMapContains!460 (ListLongMap!4155 K!13820 Hashable!6237) Unit!124653)

(assert (=> b!4693035 (= lt!1853441 (lemmaListContainsThenExtractedMapContains!460 lt!1853442 key!4653 hashF!1323))))

(assert (=> b!4693035 (= lt!1853442 (ListLongMap!4156 lt!1853451))))

(assert (=> b!4693035 (= lt!1853451 (Cons!52448 lt!1853452 (t!359758 (toList!5626 lm!2023))))))

(assert (=> b!4693035 (= lt!1853452 (tuple2!53869 hash!405 (t!359757 oldBucket!34)))))

(declare-fun b!4693036 () Bool)

(declare-fun res!1980009 () Bool)

(assert (=> b!4693036 (=> res!1980009 e!2927666)))

(assert (=> b!4693036 (= res!1980009 (not (eq!1027 lt!1853434 (+!2152 lt!1853445 lt!1853430))))))

(declare-fun b!4693037 () Bool)

(declare-fun res!1979999 () Bool)

(assert (=> b!4693037 (=> res!1979999 e!2927668)))

(assert (=> b!4693037 (= res!1979999 (not (= (removePairForKey!1463 (t!359757 oldBucket!34) key!4653) lt!1853449)))))

(assert (= (and start!475052 res!1980001) b!4693029))

(assert (= (and b!4693029 res!1980005) b!4693021))

(assert (= (and b!4693021 res!1979997) b!4693027))

(assert (= (and b!4693027 res!1980007) b!4693033))

(assert (= (and b!4693033 res!1980008) b!4693026))

(assert (= (and b!4693026 res!1980003) b!4693030))

(assert (= (and b!4693030 res!1979992) b!4693031))

(assert (= (and b!4693031 res!1980004) b!4693019))

(assert (= (and b!4693019 res!1979994) b!4693025))

(assert (= (and b!4693025 res!1979998) b!4693028))

(assert (= (and b!4693028 res!1979996) b!4693018))

(assert (= (and b!4693018 (not res!1980002)) b!4693032))

(assert (= (and b!4693032 (not res!1979993)) b!4693023))

(assert (= (and b!4693023 (not res!1979995)) b!4693037))

(assert (= (and b!4693037 (not res!1979999)) b!4693035))

(assert (= (and b!4693035 (not res!1980000)) b!4693034))

(assert (= (and b!4693034 (not res!1980006)) b!4693036))

(assert (= (and b!4693036 (not res!1980009)) b!4693020))

(assert (= start!475052 b!4693017))

(assert (= (and start!475052 ((_ is Cons!52447) oldBucket!34)) b!4693022))

(assert (= (and start!475052 ((_ is Cons!52447) newBucket!218)) b!4693024))

(declare-fun m!5597955 () Bool)

(assert (=> b!4693032 m!5597955))

(declare-fun m!5597957 () Bool)

(assert (=> b!4693032 m!5597957))

(declare-fun m!5597959 () Bool)

(assert (=> b!4693032 m!5597959))

(declare-fun m!5597961 () Bool)

(assert (=> b!4693032 m!5597961))

(declare-fun m!5597963 () Bool)

(assert (=> b!4693032 m!5597963))

(declare-fun m!5597965 () Bool)

(assert (=> b!4693032 m!5597965))

(declare-fun m!5597967 () Bool)

(assert (=> b!4693032 m!5597967))

(assert (=> b!4693032 m!5597957))

(declare-fun m!5597969 () Bool)

(assert (=> b!4693032 m!5597969))

(declare-fun m!5597971 () Bool)

(assert (=> b!4693032 m!5597971))

(declare-fun m!5597973 () Bool)

(assert (=> b!4693032 m!5597973))

(declare-fun m!5597975 () Bool)

(assert (=> b!4693032 m!5597975))

(declare-fun m!5597977 () Bool)

(assert (=> b!4693032 m!5597977))

(declare-fun m!5597979 () Bool)

(assert (=> b!4693020 m!5597979))

(declare-fun m!5597981 () Bool)

(assert (=> b!4693020 m!5597981))

(declare-fun m!5597983 () Bool)

(assert (=> b!4693020 m!5597983))

(declare-fun m!5597985 () Bool)

(assert (=> b!4693020 m!5597985))

(declare-fun m!5597987 () Bool)

(assert (=> b!4693020 m!5597987))

(declare-fun m!5597989 () Bool)

(assert (=> b!4693020 m!5597989))

(assert (=> b!4693020 m!5597979))

(assert (=> b!4693020 m!5597987))

(declare-fun m!5597991 () Bool)

(assert (=> b!4693020 m!5597991))

(declare-fun m!5597993 () Bool)

(assert (=> b!4693020 m!5597993))

(assert (=> b!4693020 m!5597985))

(declare-fun m!5597995 () Bool)

(assert (=> start!475052 m!5597995))

(declare-fun m!5597997 () Bool)

(assert (=> start!475052 m!5597997))

(declare-fun m!5597999 () Bool)

(assert (=> b!4693027 m!5597999))

(declare-fun m!5598001 () Bool)

(assert (=> b!4693021 m!5598001))

(declare-fun m!5598003 () Bool)

(assert (=> b!4693019 m!5598003))

(declare-fun m!5598005 () Bool)

(assert (=> b!4693029 m!5598005))

(declare-fun m!5598007 () Bool)

(assert (=> b!4693030 m!5598007))

(declare-fun m!5598009 () Bool)

(assert (=> b!4693031 m!5598009))

(declare-fun m!5598011 () Bool)

(assert (=> b!4693025 m!5598011))

(declare-fun m!5598013 () Bool)

(assert (=> b!4693026 m!5598013))

(declare-fun m!5598015 () Bool)

(assert (=> b!4693026 m!5598015))

(declare-fun m!5598017 () Bool)

(assert (=> b!4693033 m!5598017))

(declare-fun m!5598019 () Bool)

(assert (=> b!4693018 m!5598019))

(declare-fun m!5598021 () Bool)

(assert (=> b!4693018 m!5598021))

(declare-fun m!5598023 () Bool)

(assert (=> b!4693018 m!5598023))

(declare-fun m!5598025 () Bool)

(assert (=> b!4693035 m!5598025))

(declare-fun m!5598027 () Bool)

(assert (=> b!4693035 m!5598027))

(declare-fun m!5598029 () Bool)

(assert (=> b!4693035 m!5598029))

(declare-fun m!5598031 () Bool)

(assert (=> b!4693035 m!5598031))

(declare-fun m!5598033 () Bool)

(assert (=> b!4693035 m!5598033))

(declare-fun m!5598035 () Bool)

(assert (=> b!4693035 m!5598035))

(declare-fun m!5598037 () Bool)

(assert (=> b!4693035 m!5598037))

(declare-fun m!5598039 () Bool)

(assert (=> b!4693035 m!5598039))

(declare-fun m!5598041 () Bool)

(assert (=> b!4693035 m!5598041))

(assert (=> b!4693035 m!5598041))

(assert (=> b!4693035 m!5598033))

(declare-fun m!5598043 () Bool)

(assert (=> b!4693035 m!5598043))

(declare-fun m!5598045 () Bool)

(assert (=> b!4693035 m!5598045))

(declare-fun m!5598047 () Bool)

(assert (=> b!4693035 m!5598047))

(assert (=> b!4693035 m!5598031))

(declare-fun m!5598049 () Bool)

(assert (=> b!4693035 m!5598049))

(assert (=> b!4693035 m!5598045))

(assert (=> b!4693035 m!5598039))

(declare-fun m!5598051 () Bool)

(assert (=> b!4693035 m!5598051))

(declare-fun m!5598053 () Bool)

(assert (=> b!4693035 m!5598053))

(declare-fun m!5598055 () Bool)

(assert (=> b!4693035 m!5598055))

(assert (=> b!4693035 m!5598037))

(assert (=> b!4693035 m!5598027))

(declare-fun m!5598057 () Bool)

(assert (=> b!4693035 m!5598057))

(declare-fun m!5598059 () Bool)

(assert (=> b!4693035 m!5598059))

(assert (=> b!4693035 m!5598057))

(declare-fun m!5598061 () Bool)

(assert (=> b!4693035 m!5598061))

(declare-fun m!5598063 () Bool)

(assert (=> b!4693023 m!5598063))

(declare-fun m!5598065 () Bool)

(assert (=> b!4693023 m!5598065))

(declare-fun m!5598067 () Bool)

(assert (=> b!4693023 m!5598067))

(declare-fun m!5598069 () Bool)

(assert (=> b!4693037 m!5598069))

(declare-fun m!5598071 () Bool)

(assert (=> b!4693036 m!5598071))

(assert (=> b!4693036 m!5598071))

(declare-fun m!5598073 () Bool)

(assert (=> b!4693036 m!5598073))

(check-sat (not b!4693021) (not b!4693017) (not b!4693024) (not b!4693032) (not b!4693019) (not b!4693027) (not b!4693037) (not b!4693025) (not b!4693020) (not b!4693029) (not b!4693023) (not start!475052) (not b!4693036) (not b!4693030) (not b!4693018) (not b!4693031) (not b!4693035) (not b!4693033) (not b!4693026) (not b!4693022) tp_is_empty!30765 tp_is_empty!30767)
(check-sat)
(get-model)

(declare-fun d!1491600 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9187 (List!52571) (InoxSet tuple2!53866))

(assert (=> d!1491600 (= (eq!1027 lt!1853434 (+!2152 lt!1853445 lt!1853430)) (= (content!9187 (toList!5625 lt!1853434)) (content!9187 (toList!5625 (+!2152 lt!1853445 lt!1853430)))))))

(declare-fun bs!1088694 () Bool)

(assert (= bs!1088694 d!1491600))

(declare-fun m!5598075 () Bool)

(assert (=> bs!1088694 m!5598075))

(declare-fun m!5598077 () Bool)

(assert (=> bs!1088694 m!5598077))

(assert (=> b!4693036 d!1491600))

(declare-fun d!1491602 () Bool)

(declare-fun e!2927673 () Bool)

(assert (=> d!1491602 e!2927673))

(declare-fun res!1980015 () Bool)

(assert (=> d!1491602 (=> (not res!1980015) (not e!2927673))))

(declare-fun lt!1853462 () ListMap!4989)

(assert (=> d!1491602 (= res!1980015 (contains!15670 lt!1853462 (_1!30227 lt!1853430)))))

(declare-fun lt!1853461 () List!52571)

(assert (=> d!1491602 (= lt!1853462 (ListMap!4990 lt!1853461))))

(declare-fun lt!1853463 () Unit!124653)

(declare-fun lt!1853464 () Unit!124653)

(assert (=> d!1491602 (= lt!1853463 lt!1853464)))

(declare-datatypes ((Option!12112 0))(
  ( (None!12111) (Some!12111 (v!46550 V!14066)) )
))
(declare-fun getValueByKey!1798 (List!52571 K!13820) Option!12112)

(assert (=> d!1491602 (= (getValueByKey!1798 lt!1853461 (_1!30227 lt!1853430)) (Some!12111 (_2!30227 lt!1853430)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1009 (List!52571 K!13820 V!14066) Unit!124653)

(assert (=> d!1491602 (= lt!1853464 (lemmaContainsTupThenGetReturnValue!1009 lt!1853461 (_1!30227 lt!1853430) (_2!30227 lt!1853430)))))

(declare-fun insertNoDuplicatedKeys!517 (List!52571 K!13820 V!14066) List!52571)

(assert (=> d!1491602 (= lt!1853461 (insertNoDuplicatedKeys!517 (toList!5625 lt!1853445) (_1!30227 lt!1853430) (_2!30227 lt!1853430)))))

(assert (=> d!1491602 (= (+!2152 lt!1853445 lt!1853430) lt!1853462)))

(declare-fun b!4693042 () Bool)

(declare-fun res!1980014 () Bool)

(assert (=> b!4693042 (=> (not res!1980014) (not e!2927673))))

(assert (=> b!4693042 (= res!1980014 (= (getValueByKey!1798 (toList!5625 lt!1853462) (_1!30227 lt!1853430)) (Some!12111 (_2!30227 lt!1853430))))))

(declare-fun b!4693043 () Bool)

(declare-fun contains!15673 (List!52571 tuple2!53866) Bool)

(assert (=> b!4693043 (= e!2927673 (contains!15673 (toList!5625 lt!1853462) lt!1853430))))

(assert (= (and d!1491602 res!1980015) b!4693042))

(assert (= (and b!4693042 res!1980014) b!4693043))

(declare-fun m!5598079 () Bool)

(assert (=> d!1491602 m!5598079))

(declare-fun m!5598081 () Bool)

(assert (=> d!1491602 m!5598081))

(declare-fun m!5598083 () Bool)

(assert (=> d!1491602 m!5598083))

(declare-fun m!5598085 () Bool)

(assert (=> d!1491602 m!5598085))

(declare-fun m!5598087 () Bool)

(assert (=> b!4693042 m!5598087))

(declare-fun m!5598089 () Bool)

(assert (=> b!4693043 m!5598089))

(assert (=> b!4693036 d!1491602))

(declare-fun d!1491604 () Bool)

(assert (=> d!1491604 (= (head!9999 (toList!5626 lm!2023)) (h!58703 (toList!5626 lm!2023)))))

(assert (=> b!4693025 d!1491604))

(declare-fun b!4693117 () Bool)

(assert (=> b!4693117 true))

(declare-fun bs!1088704 () Bool)

(declare-fun b!4693121 () Bool)

(assert (= bs!1088704 (and b!4693121 b!4693117)))

(declare-fun lambda!208007 () Int)

(declare-fun lambda!208006 () Int)

(assert (=> bs!1088704 (= lambda!208007 lambda!208006)))

(assert (=> b!4693121 true))

(declare-fun lt!1853576 () ListMap!4989)

(declare-fun lambda!208008 () Int)

(assert (=> bs!1088704 (= (= lt!1853576 lt!1853429) (= lambda!208008 lambda!208006))))

(assert (=> b!4693121 (= (= lt!1853576 lt!1853429) (= lambda!208008 lambda!208007))))

(assert (=> b!4693121 true))

(declare-fun bs!1088705 () Bool)

(declare-fun d!1491606 () Bool)

(assert (= bs!1088705 (and d!1491606 b!4693117)))

(declare-fun lambda!208009 () Int)

(declare-fun lt!1853571 () ListMap!4989)

(assert (=> bs!1088705 (= (= lt!1853571 lt!1853429) (= lambda!208009 lambda!208006))))

(declare-fun bs!1088706 () Bool)

(assert (= bs!1088706 (and d!1491606 b!4693121)))

(assert (=> bs!1088706 (= (= lt!1853571 lt!1853429) (= lambda!208009 lambda!208007))))

(assert (=> bs!1088706 (= (= lt!1853571 lt!1853576) (= lambda!208009 lambda!208008))))

(assert (=> d!1491606 true))

(declare-fun call!328014 () Bool)

(declare-fun bm!328009 () Bool)

(declare-fun c!802341 () Bool)

(declare-fun forall!11346 (List!52571 Int) Bool)

(assert (=> bm!328009 (= call!328014 (forall!11346 (ite c!802341 (toList!5625 lt!1853429) lt!1853449) (ite c!802341 lambda!208006 lambda!208008)))))

(declare-fun e!2927725 () ListMap!4989)

(assert (=> b!4693117 (= e!2927725 lt!1853429)))

(declare-fun lt!1853567 () Unit!124653)

(declare-fun call!328015 () Unit!124653)

(assert (=> b!4693117 (= lt!1853567 call!328015)))

(declare-fun call!328016 () Bool)

(assert (=> b!4693117 call!328016))

(declare-fun lt!1853577 () Unit!124653)

(assert (=> b!4693117 (= lt!1853577 lt!1853567)))

(assert (=> b!4693117 call!328014))

(declare-fun lt!1853570 () Unit!124653)

(declare-fun Unit!124655 () Unit!124653)

(assert (=> b!4693117 (= lt!1853570 Unit!124655)))

(declare-fun b!4693118 () Bool)

(declare-fun e!2927724 () Bool)

(assert (=> b!4693118 (= e!2927724 (forall!11346 (toList!5625 lt!1853429) lambda!208008))))

(declare-fun b!4693119 () Bool)

(declare-fun e!2927726 () Bool)

(declare-fun invariantList!1419 (List!52571) Bool)

(assert (=> b!4693119 (= e!2927726 (invariantList!1419 (toList!5625 lt!1853571)))))

(declare-fun bm!328010 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!707 (ListMap!4989) Unit!124653)

(assert (=> bm!328010 (= call!328015 (lemmaContainsAllItsOwnKeys!707 lt!1853429))))

(assert (=> d!1491606 e!2927726))

(declare-fun res!1980068 () Bool)

(assert (=> d!1491606 (=> (not res!1980068) (not e!2927726))))

(assert (=> d!1491606 (= res!1980068 (forall!11346 lt!1853449 lambda!208009))))

(assert (=> d!1491606 (= lt!1853571 e!2927725)))

(assert (=> d!1491606 (= c!802341 ((_ is Nil!52447) lt!1853449))))

(assert (=> d!1491606 (noDuplicateKeys!1868 lt!1853449)))

(assert (=> d!1491606 (= (addToMapMapFromBucket!1300 lt!1853449 lt!1853429) lt!1853571)))

(declare-fun lt!1853563 () ListMap!4989)

(declare-fun bm!328011 () Bool)

(assert (=> bm!328011 (= call!328016 (forall!11346 (ite c!802341 (toList!5625 lt!1853429) (toList!5625 lt!1853563)) (ite c!802341 lambda!208006 lambda!208008)))))

(declare-fun b!4693120 () Bool)

(declare-fun res!1980066 () Bool)

(assert (=> b!4693120 (=> (not res!1980066) (not e!2927726))))

(assert (=> b!4693120 (= res!1980066 (forall!11346 (toList!5625 lt!1853429) lambda!208009))))

(assert (=> b!4693121 (= e!2927725 lt!1853576)))

(assert (=> b!4693121 (= lt!1853563 (+!2152 lt!1853429 (h!58702 lt!1853449)))))

(assert (=> b!4693121 (= lt!1853576 (addToMapMapFromBucket!1300 (t!359757 lt!1853449) (+!2152 lt!1853429 (h!58702 lt!1853449))))))

(declare-fun lt!1853565 () Unit!124653)

(assert (=> b!4693121 (= lt!1853565 call!328015)))

(assert (=> b!4693121 (forall!11346 (toList!5625 lt!1853429) lambda!208007)))

(declare-fun lt!1853578 () Unit!124653)

(assert (=> b!4693121 (= lt!1853578 lt!1853565)))

(assert (=> b!4693121 call!328016))

(declare-fun lt!1853579 () Unit!124653)

(declare-fun Unit!124656 () Unit!124653)

(assert (=> b!4693121 (= lt!1853579 Unit!124656)))

(assert (=> b!4693121 (forall!11346 (t!359757 lt!1853449) lambda!208008)))

(declare-fun lt!1853580 () Unit!124653)

(declare-fun Unit!124657 () Unit!124653)

(assert (=> b!4693121 (= lt!1853580 Unit!124657)))

(declare-fun lt!1853573 () Unit!124653)

(declare-fun Unit!124658 () Unit!124653)

(assert (=> b!4693121 (= lt!1853573 Unit!124658)))

(declare-fun lt!1853566 () Unit!124653)

(declare-fun forallContained!3453 (List!52571 Int tuple2!53866) Unit!124653)

(assert (=> b!4693121 (= lt!1853566 (forallContained!3453 (toList!5625 lt!1853563) lambda!208008 (h!58702 lt!1853449)))))

(assert (=> b!4693121 (contains!15670 lt!1853563 (_1!30227 (h!58702 lt!1853449)))))

(declare-fun lt!1853562 () Unit!124653)

(declare-fun Unit!124659 () Unit!124653)

(assert (=> b!4693121 (= lt!1853562 Unit!124659)))

(assert (=> b!4693121 (contains!15670 lt!1853576 (_1!30227 (h!58702 lt!1853449)))))

(declare-fun lt!1853581 () Unit!124653)

(declare-fun Unit!124660 () Unit!124653)

(assert (=> b!4693121 (= lt!1853581 Unit!124660)))

(assert (=> b!4693121 call!328014))

(declare-fun lt!1853564 () Unit!124653)

(declare-fun Unit!124661 () Unit!124653)

(assert (=> b!4693121 (= lt!1853564 Unit!124661)))

(assert (=> b!4693121 (forall!11346 (toList!5625 lt!1853563) lambda!208008)))

(declare-fun lt!1853575 () Unit!124653)

(declare-fun Unit!124662 () Unit!124653)

(assert (=> b!4693121 (= lt!1853575 Unit!124662)))

(declare-fun lt!1853568 () Unit!124653)

(declare-fun Unit!124663 () Unit!124653)

(assert (=> b!4693121 (= lt!1853568 Unit!124663)))

(declare-fun lt!1853574 () Unit!124653)

(declare-fun addForallContainsKeyThenBeforeAdding!706 (ListMap!4989 ListMap!4989 K!13820 V!14066) Unit!124653)

(assert (=> b!4693121 (= lt!1853574 (addForallContainsKeyThenBeforeAdding!706 lt!1853429 lt!1853576 (_1!30227 (h!58702 lt!1853449)) (_2!30227 (h!58702 lt!1853449))))))

(assert (=> b!4693121 (forall!11346 (toList!5625 lt!1853429) lambda!208008)))

(declare-fun lt!1853572 () Unit!124653)

(assert (=> b!4693121 (= lt!1853572 lt!1853574)))

(assert (=> b!4693121 (forall!11346 (toList!5625 lt!1853429) lambda!208008)))

(declare-fun lt!1853569 () Unit!124653)

(declare-fun Unit!124664 () Unit!124653)

(assert (=> b!4693121 (= lt!1853569 Unit!124664)))

(declare-fun res!1980067 () Bool)

(assert (=> b!4693121 (= res!1980067 (forall!11346 lt!1853449 lambda!208008))))

(assert (=> b!4693121 (=> (not res!1980067) (not e!2927724))))

(assert (=> b!4693121 e!2927724))

(declare-fun lt!1853561 () Unit!124653)

(declare-fun Unit!124665 () Unit!124653)

(assert (=> b!4693121 (= lt!1853561 Unit!124665)))

(assert (= (and d!1491606 c!802341) b!4693117))

(assert (= (and d!1491606 (not c!802341)) b!4693121))

(assert (= (and b!4693121 res!1980067) b!4693118))

(assert (= (or b!4693117 b!4693121) bm!328010))

(assert (= (or b!4693117 b!4693121) bm!328009))

(assert (= (or b!4693117 b!4693121) bm!328011))

(assert (= (and d!1491606 res!1980068) b!4693120))

(assert (= (and b!4693120 res!1980066) b!4693119))

(declare-fun m!5598167 () Bool)

(assert (=> b!4693120 m!5598167))

(declare-fun m!5598169 () Bool)

(assert (=> d!1491606 m!5598169))

(declare-fun m!5598171 () Bool)

(assert (=> d!1491606 m!5598171))

(declare-fun m!5598173 () Bool)

(assert (=> b!4693121 m!5598173))

(declare-fun m!5598175 () Bool)

(assert (=> b!4693121 m!5598175))

(declare-fun m!5598177 () Bool)

(assert (=> b!4693121 m!5598177))

(declare-fun m!5598179 () Bool)

(assert (=> b!4693121 m!5598179))

(declare-fun m!5598181 () Bool)

(assert (=> b!4693121 m!5598181))

(declare-fun m!5598183 () Bool)

(assert (=> b!4693121 m!5598183))

(declare-fun m!5598185 () Bool)

(assert (=> b!4693121 m!5598185))

(declare-fun m!5598187 () Bool)

(assert (=> b!4693121 m!5598187))

(assert (=> b!4693121 m!5598181))

(declare-fun m!5598189 () Bool)

(assert (=> b!4693121 m!5598189))

(assert (=> b!4693121 m!5598175))

(declare-fun m!5598191 () Bool)

(assert (=> b!4693121 m!5598191))

(declare-fun m!5598193 () Bool)

(assert (=> b!4693121 m!5598193))

(declare-fun m!5598195 () Bool)

(assert (=> bm!328011 m!5598195))

(declare-fun m!5598197 () Bool)

(assert (=> b!4693119 m!5598197))

(declare-fun m!5598199 () Bool)

(assert (=> bm!328009 m!5598199))

(assert (=> b!4693118 m!5598181))

(declare-fun m!5598201 () Bool)

(assert (=> bm!328010 m!5598201))

(assert (=> b!4693035 d!1491606))

(declare-fun bs!1088711 () Bool)

(declare-fun d!1491636 () Bool)

(assert (= bs!1088711 (and d!1491636 start!475052)))

(declare-fun lambda!208015 () Int)

(assert (=> bs!1088711 (= lambda!208015 lambda!207967)))

(declare-fun lt!1853596 () ListMap!4989)

(assert (=> d!1491636 (invariantList!1419 (toList!5625 lt!1853596))))

(declare-fun e!2927732 () ListMap!4989)

(assert (=> d!1491636 (= lt!1853596 e!2927732)))

(declare-fun c!802344 () Bool)

(assert (=> d!1491636 (= c!802344 ((_ is Cons!52448) (Cons!52448 lt!1853447 (t!359758 (toList!5626 lm!2023)))))))

(assert (=> d!1491636 (forall!11345 (Cons!52448 lt!1853447 (t!359758 (toList!5626 lm!2023))) lambda!208015)))

(assert (=> d!1491636 (= (extractMap!1894 (Cons!52448 lt!1853447 (t!359758 (toList!5626 lm!2023)))) lt!1853596)))

(declare-fun b!4693136 () Bool)

(assert (=> b!4693136 (= e!2927732 (addToMapMapFromBucket!1300 (_2!30228 (h!58703 (Cons!52448 lt!1853447 (t!359758 (toList!5626 lm!2023))))) (extractMap!1894 (t!359758 (Cons!52448 lt!1853447 (t!359758 (toList!5626 lm!2023)))))))))

(declare-fun b!4693137 () Bool)

(assert (=> b!4693137 (= e!2927732 (ListMap!4990 Nil!52447))))

(assert (= (and d!1491636 c!802344) b!4693136))

(assert (= (and d!1491636 (not c!802344)) b!4693137))

(declare-fun m!5598217 () Bool)

(assert (=> d!1491636 m!5598217))

(declare-fun m!5598219 () Bool)

(assert (=> d!1491636 m!5598219))

(declare-fun m!5598221 () Bool)

(assert (=> b!4693136 m!5598221))

(assert (=> b!4693136 m!5598221))

(declare-fun m!5598223 () Bool)

(assert (=> b!4693136 m!5598223))

(assert (=> b!4693035 d!1491636))

(declare-fun bs!1088712 () Bool)

(declare-fun b!4693138 () Bool)

(assert (= bs!1088712 (and b!4693138 b!4693117)))

(declare-fun lambda!208016 () Int)

(assert (=> bs!1088712 (= lambda!208016 lambda!208006)))

(declare-fun bs!1088713 () Bool)

(assert (= bs!1088713 (and b!4693138 b!4693121)))

(assert (=> bs!1088713 (= lambda!208016 lambda!208007)))

(assert (=> bs!1088713 (= (= lt!1853429 lt!1853576) (= lambda!208016 lambda!208008))))

(declare-fun bs!1088714 () Bool)

(assert (= bs!1088714 (and b!4693138 d!1491606)))

(assert (=> bs!1088714 (= (= lt!1853429 lt!1853571) (= lambda!208016 lambda!208009))))

(assert (=> b!4693138 true))

(declare-fun bs!1088715 () Bool)

(declare-fun b!4693142 () Bool)

(assert (= bs!1088715 (and b!4693142 b!4693121)))

(declare-fun lambda!208017 () Int)

(assert (=> bs!1088715 (= lambda!208017 lambda!208007)))

(declare-fun bs!1088716 () Bool)

(assert (= bs!1088716 (and b!4693142 b!4693117)))

(assert (=> bs!1088716 (= lambda!208017 lambda!208006)))

(declare-fun bs!1088717 () Bool)

(assert (= bs!1088717 (and b!4693142 d!1491606)))

(assert (=> bs!1088717 (= (= lt!1853429 lt!1853571) (= lambda!208017 lambda!208009))))

(assert (=> bs!1088715 (= (= lt!1853429 lt!1853576) (= lambda!208017 lambda!208008))))

(declare-fun bs!1088718 () Bool)

(assert (= bs!1088718 (and b!4693142 b!4693138)))

(assert (=> bs!1088718 (= lambda!208017 lambda!208016)))

(assert (=> b!4693142 true))

(declare-fun lambda!208018 () Int)

(declare-fun lt!1853612 () ListMap!4989)

(assert (=> bs!1088715 (= (= lt!1853612 lt!1853429) (= lambda!208018 lambda!208007))))

(assert (=> bs!1088716 (= (= lt!1853612 lt!1853429) (= lambda!208018 lambda!208006))))

(assert (=> bs!1088717 (= (= lt!1853612 lt!1853571) (= lambda!208018 lambda!208009))))

(assert (=> b!4693142 (= (= lt!1853612 lt!1853429) (= lambda!208018 lambda!208017))))

(assert (=> bs!1088715 (= (= lt!1853612 lt!1853576) (= lambda!208018 lambda!208008))))

(assert (=> bs!1088718 (= (= lt!1853612 lt!1853429) (= lambda!208018 lambda!208016))))

(assert (=> b!4693142 true))

(declare-fun bs!1088719 () Bool)

(declare-fun d!1491642 () Bool)

(assert (= bs!1088719 (and d!1491642 b!4693121)))

(declare-fun lt!1853607 () ListMap!4989)

(declare-fun lambda!208019 () Int)

(assert (=> bs!1088719 (= (= lt!1853607 lt!1853429) (= lambda!208019 lambda!208007))))

(declare-fun bs!1088720 () Bool)

(assert (= bs!1088720 (and d!1491642 b!4693117)))

(assert (=> bs!1088720 (= (= lt!1853607 lt!1853429) (= lambda!208019 lambda!208006))))

(declare-fun bs!1088721 () Bool)

(assert (= bs!1088721 (and d!1491642 b!4693142)))

(assert (=> bs!1088721 (= (= lt!1853607 lt!1853612) (= lambda!208019 lambda!208018))))

(declare-fun bs!1088722 () Bool)

(assert (= bs!1088722 (and d!1491642 d!1491606)))

(assert (=> bs!1088722 (= (= lt!1853607 lt!1853571) (= lambda!208019 lambda!208009))))

(assert (=> bs!1088721 (= (= lt!1853607 lt!1853429) (= lambda!208019 lambda!208017))))

(assert (=> bs!1088719 (= (= lt!1853607 lt!1853576) (= lambda!208019 lambda!208008))))

(declare-fun bs!1088723 () Bool)

(assert (= bs!1088723 (and d!1491642 b!4693138)))

(assert (=> bs!1088723 (= (= lt!1853607 lt!1853429) (= lambda!208019 lambda!208016))))

(assert (=> d!1491642 true))

(declare-fun call!328017 () Bool)

(declare-fun bm!328012 () Bool)

(declare-fun c!802345 () Bool)

(assert (=> bm!328012 (= call!328017 (forall!11346 (ite c!802345 (toList!5625 lt!1853429) (Cons!52447 lt!1853450 lt!1853436)) (ite c!802345 lambda!208016 lambda!208018)))))

(declare-fun e!2927734 () ListMap!4989)

(assert (=> b!4693138 (= e!2927734 lt!1853429)))

(declare-fun lt!1853603 () Unit!124653)

(declare-fun call!328018 () Unit!124653)

(assert (=> b!4693138 (= lt!1853603 call!328018)))

(declare-fun call!328019 () Bool)

(assert (=> b!4693138 call!328019))

(declare-fun lt!1853613 () Unit!124653)

(assert (=> b!4693138 (= lt!1853613 lt!1853603)))

(assert (=> b!4693138 call!328017))

(declare-fun lt!1853606 () Unit!124653)

(declare-fun Unit!124666 () Unit!124653)

(assert (=> b!4693138 (= lt!1853606 Unit!124666)))

(declare-fun b!4693139 () Bool)

(declare-fun e!2927733 () Bool)

(assert (=> b!4693139 (= e!2927733 (forall!11346 (toList!5625 lt!1853429) lambda!208018))))

(declare-fun b!4693140 () Bool)

(declare-fun e!2927735 () Bool)

(assert (=> b!4693140 (= e!2927735 (invariantList!1419 (toList!5625 lt!1853607)))))

(declare-fun bm!328013 () Bool)

(assert (=> bm!328013 (= call!328018 (lemmaContainsAllItsOwnKeys!707 lt!1853429))))

(assert (=> d!1491642 e!2927735))

(declare-fun res!1980077 () Bool)

(assert (=> d!1491642 (=> (not res!1980077) (not e!2927735))))

(assert (=> d!1491642 (= res!1980077 (forall!11346 (Cons!52447 lt!1853450 lt!1853436) lambda!208019))))

(assert (=> d!1491642 (= lt!1853607 e!2927734)))

(assert (=> d!1491642 (= c!802345 ((_ is Nil!52447) (Cons!52447 lt!1853450 lt!1853436)))))

(assert (=> d!1491642 (noDuplicateKeys!1868 (Cons!52447 lt!1853450 lt!1853436))))

(assert (=> d!1491642 (= (addToMapMapFromBucket!1300 (Cons!52447 lt!1853450 lt!1853436) lt!1853429) lt!1853607)))

(declare-fun lt!1853599 () ListMap!4989)

(declare-fun bm!328014 () Bool)

(assert (=> bm!328014 (= call!328019 (forall!11346 (ite c!802345 (toList!5625 lt!1853429) (toList!5625 lt!1853599)) (ite c!802345 lambda!208016 lambda!208018)))))

(declare-fun b!4693141 () Bool)

(declare-fun res!1980075 () Bool)

(assert (=> b!4693141 (=> (not res!1980075) (not e!2927735))))

(assert (=> b!4693141 (= res!1980075 (forall!11346 (toList!5625 lt!1853429) lambda!208019))))

(assert (=> b!4693142 (= e!2927734 lt!1853612)))

(assert (=> b!4693142 (= lt!1853599 (+!2152 lt!1853429 (h!58702 (Cons!52447 lt!1853450 lt!1853436))))))

(assert (=> b!4693142 (= lt!1853612 (addToMapMapFromBucket!1300 (t!359757 (Cons!52447 lt!1853450 lt!1853436)) (+!2152 lt!1853429 (h!58702 (Cons!52447 lt!1853450 lt!1853436)))))))

(declare-fun lt!1853601 () Unit!124653)

(assert (=> b!4693142 (= lt!1853601 call!328018)))

(assert (=> b!4693142 (forall!11346 (toList!5625 lt!1853429) lambda!208017)))

(declare-fun lt!1853614 () Unit!124653)

(assert (=> b!4693142 (= lt!1853614 lt!1853601)))

(assert (=> b!4693142 call!328019))

(declare-fun lt!1853615 () Unit!124653)

(declare-fun Unit!124667 () Unit!124653)

(assert (=> b!4693142 (= lt!1853615 Unit!124667)))

(assert (=> b!4693142 (forall!11346 (t!359757 (Cons!52447 lt!1853450 lt!1853436)) lambda!208018)))

(declare-fun lt!1853616 () Unit!124653)

(declare-fun Unit!124668 () Unit!124653)

(assert (=> b!4693142 (= lt!1853616 Unit!124668)))

(declare-fun lt!1853609 () Unit!124653)

(declare-fun Unit!124669 () Unit!124653)

(assert (=> b!4693142 (= lt!1853609 Unit!124669)))

(declare-fun lt!1853602 () Unit!124653)

(assert (=> b!4693142 (= lt!1853602 (forallContained!3453 (toList!5625 lt!1853599) lambda!208018 (h!58702 (Cons!52447 lt!1853450 lt!1853436))))))

(assert (=> b!4693142 (contains!15670 lt!1853599 (_1!30227 (h!58702 (Cons!52447 lt!1853450 lt!1853436))))))

(declare-fun lt!1853598 () Unit!124653)

(declare-fun Unit!124670 () Unit!124653)

(assert (=> b!4693142 (= lt!1853598 Unit!124670)))

(assert (=> b!4693142 (contains!15670 lt!1853612 (_1!30227 (h!58702 (Cons!52447 lt!1853450 lt!1853436))))))

(declare-fun lt!1853617 () Unit!124653)

(declare-fun Unit!124671 () Unit!124653)

(assert (=> b!4693142 (= lt!1853617 Unit!124671)))

(assert (=> b!4693142 call!328017))

(declare-fun lt!1853600 () Unit!124653)

(declare-fun Unit!124672 () Unit!124653)

(assert (=> b!4693142 (= lt!1853600 Unit!124672)))

(assert (=> b!4693142 (forall!11346 (toList!5625 lt!1853599) lambda!208018)))

(declare-fun lt!1853611 () Unit!124653)

(declare-fun Unit!124673 () Unit!124653)

(assert (=> b!4693142 (= lt!1853611 Unit!124673)))

(declare-fun lt!1853604 () Unit!124653)

(declare-fun Unit!124674 () Unit!124653)

(assert (=> b!4693142 (= lt!1853604 Unit!124674)))

(declare-fun lt!1853610 () Unit!124653)

(assert (=> b!4693142 (= lt!1853610 (addForallContainsKeyThenBeforeAdding!706 lt!1853429 lt!1853612 (_1!30227 (h!58702 (Cons!52447 lt!1853450 lt!1853436))) (_2!30227 (h!58702 (Cons!52447 lt!1853450 lt!1853436)))))))

(assert (=> b!4693142 (forall!11346 (toList!5625 lt!1853429) lambda!208018)))

(declare-fun lt!1853608 () Unit!124653)

(assert (=> b!4693142 (= lt!1853608 lt!1853610)))

(assert (=> b!4693142 (forall!11346 (toList!5625 lt!1853429) lambda!208018)))

(declare-fun lt!1853605 () Unit!124653)

(declare-fun Unit!124675 () Unit!124653)

(assert (=> b!4693142 (= lt!1853605 Unit!124675)))

(declare-fun res!1980076 () Bool)

(assert (=> b!4693142 (= res!1980076 (forall!11346 (Cons!52447 lt!1853450 lt!1853436) lambda!208018))))

(assert (=> b!4693142 (=> (not res!1980076) (not e!2927733))))

(assert (=> b!4693142 e!2927733))

(declare-fun lt!1853597 () Unit!124653)

(declare-fun Unit!124676 () Unit!124653)

(assert (=> b!4693142 (= lt!1853597 Unit!124676)))

(assert (= (and d!1491642 c!802345) b!4693138))

(assert (= (and d!1491642 (not c!802345)) b!4693142))

(assert (= (and b!4693142 res!1980076) b!4693139))

(assert (= (or b!4693138 b!4693142) bm!328013))

(assert (= (or b!4693138 b!4693142) bm!328012))

(assert (= (or b!4693138 b!4693142) bm!328014))

(assert (= (and d!1491642 res!1980077) b!4693141))

(assert (= (and b!4693141 res!1980075) b!4693140))

(declare-fun m!5598225 () Bool)

(assert (=> b!4693141 m!5598225))

(declare-fun m!5598227 () Bool)

(assert (=> d!1491642 m!5598227))

(declare-fun m!5598229 () Bool)

(assert (=> d!1491642 m!5598229))

(declare-fun m!5598231 () Bool)

(assert (=> b!4693142 m!5598231))

(declare-fun m!5598233 () Bool)

(assert (=> b!4693142 m!5598233))

(declare-fun m!5598235 () Bool)

(assert (=> b!4693142 m!5598235))

(declare-fun m!5598237 () Bool)

(assert (=> b!4693142 m!5598237))

(declare-fun m!5598239 () Bool)

(assert (=> b!4693142 m!5598239))

(declare-fun m!5598241 () Bool)

(assert (=> b!4693142 m!5598241))

(declare-fun m!5598243 () Bool)

(assert (=> b!4693142 m!5598243))

(declare-fun m!5598245 () Bool)

(assert (=> b!4693142 m!5598245))

(assert (=> b!4693142 m!5598239))

(declare-fun m!5598247 () Bool)

(assert (=> b!4693142 m!5598247))

(assert (=> b!4693142 m!5598233))

(declare-fun m!5598249 () Bool)

(assert (=> b!4693142 m!5598249))

(declare-fun m!5598251 () Bool)

(assert (=> b!4693142 m!5598251))

(declare-fun m!5598253 () Bool)

(assert (=> bm!328014 m!5598253))

(declare-fun m!5598255 () Bool)

(assert (=> b!4693140 m!5598255))

(declare-fun m!5598257 () Bool)

(assert (=> bm!328012 m!5598257))

(assert (=> b!4693139 m!5598239))

(assert (=> bm!328013 m!5598201))

(assert (=> b!4693035 d!1491642))

(declare-fun d!1491644 () Bool)

(assert (=> d!1491644 (= (head!10000 oldBucket!34) (h!58702 oldBucket!34))))

(assert (=> b!4693035 d!1491644))

(declare-fun d!1491646 () Bool)

(assert (=> d!1491646 (= (eq!1027 (addToMapMapFromBucket!1300 (Cons!52447 lt!1853430 lt!1853449) lt!1853429) (+!2152 (addToMapMapFromBucket!1300 lt!1853449 lt!1853429) lt!1853430)) (= (content!9187 (toList!5625 (addToMapMapFromBucket!1300 (Cons!52447 lt!1853430 lt!1853449) lt!1853429))) (content!9187 (toList!5625 (+!2152 (addToMapMapFromBucket!1300 lt!1853449 lt!1853429) lt!1853430)))))))

(declare-fun bs!1088724 () Bool)

(assert (= bs!1088724 d!1491646))

(declare-fun m!5598259 () Bool)

(assert (=> bs!1088724 m!5598259))

(declare-fun m!5598261 () Bool)

(assert (=> bs!1088724 m!5598261))

(assert (=> b!4693035 d!1491646))

(declare-fun bs!1088725 () Bool)

(declare-fun d!1491648 () Bool)

(assert (= bs!1088725 (and d!1491648 start!475052)))

(declare-fun lambda!208020 () Int)

(assert (=> bs!1088725 (= lambda!208020 lambda!207967)))

(declare-fun bs!1088726 () Bool)

(assert (= bs!1088726 (and d!1491648 d!1491636)))

(assert (=> bs!1088726 (= lambda!208020 lambda!208015)))

(declare-fun lt!1853634 () ListMap!4989)

(assert (=> d!1491648 (invariantList!1419 (toList!5625 lt!1853634))))

(declare-fun e!2927748 () ListMap!4989)

(assert (=> d!1491648 (= lt!1853634 e!2927748)))

(declare-fun c!802352 () Bool)

(assert (=> d!1491648 (= c!802352 ((_ is Cons!52448) lt!1853451))))

(assert (=> d!1491648 (forall!11345 lt!1853451 lambda!208020)))

(assert (=> d!1491648 (= (extractMap!1894 lt!1853451) lt!1853634)))

(declare-fun b!4693161 () Bool)

(assert (=> b!4693161 (= e!2927748 (addToMapMapFromBucket!1300 (_2!30228 (h!58703 lt!1853451)) (extractMap!1894 (t!359758 lt!1853451))))))

(declare-fun b!4693162 () Bool)

(assert (=> b!4693162 (= e!2927748 (ListMap!4990 Nil!52447))))

(assert (= (and d!1491648 c!802352) b!4693161))

(assert (= (and d!1491648 (not c!802352)) b!4693162))

(declare-fun m!5598263 () Bool)

(assert (=> d!1491648 m!5598263))

(declare-fun m!5598265 () Bool)

(assert (=> d!1491648 m!5598265))

(declare-fun m!5598267 () Bool)

(assert (=> b!4693161 m!5598267))

(assert (=> b!4693161 m!5598267))

(declare-fun m!5598269 () Bool)

(assert (=> b!4693161 m!5598269))

(assert (=> b!4693035 d!1491648))

(declare-fun b!4693200 () Bool)

(declare-fun e!2927771 () Unit!124653)

(declare-fun lt!1853669 () Unit!124653)

(assert (=> b!4693200 (= e!2927771 lt!1853669)))

(declare-fun lt!1853662 () Unit!124653)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1691 (List!52571 K!13820) Unit!124653)

(assert (=> b!4693200 (= lt!1853662 (lemmaContainsKeyImpliesGetValueByKeyDefined!1691 (toList!5625 (extractMap!1894 lt!1853451)) key!4653))))

(declare-fun isDefined!9368 (Option!12112) Bool)

(assert (=> b!4693200 (isDefined!9368 (getValueByKey!1798 (toList!5625 (extractMap!1894 lt!1853451)) key!4653))))

(declare-fun lt!1853667 () Unit!124653)

(assert (=> b!4693200 (= lt!1853667 lt!1853662)))

(declare-fun lemmaInListThenGetKeysListContains!854 (List!52571 K!13820) Unit!124653)

(assert (=> b!4693200 (= lt!1853669 (lemmaInListThenGetKeysListContains!854 (toList!5625 (extractMap!1894 lt!1853451)) key!4653))))

(declare-fun call!328025 () Bool)

(assert (=> b!4693200 call!328025))

(declare-fun b!4693201 () Bool)

(declare-fun e!2927774 () Unit!124653)

(assert (=> b!4693201 (= e!2927771 e!2927774)))

(declare-fun c!802365 () Bool)

(assert (=> b!4693201 (= c!802365 call!328025)))

(declare-fun b!4693202 () Bool)

(declare-fun e!2927773 () Bool)

(declare-datatypes ((List!52573 0))(
  ( (Nil!52449) (Cons!52449 (h!58706 K!13820) (t!359761 List!52573)) )
))
(declare-fun contains!15675 (List!52573 K!13820) Bool)

(declare-fun keys!18736 (ListMap!4989) List!52573)

(assert (=> b!4693202 (= e!2927773 (not (contains!15675 (keys!18736 (extractMap!1894 lt!1853451)) key!4653)))))

(declare-fun b!4693203 () Bool)

(declare-fun e!2927772 () Bool)

(declare-fun e!2927775 () Bool)

(assert (=> b!4693203 (= e!2927772 e!2927775)))

(declare-fun res!1980095 () Bool)

(assert (=> b!4693203 (=> (not res!1980095) (not e!2927775))))

(assert (=> b!4693203 (= res!1980095 (isDefined!9368 (getValueByKey!1798 (toList!5625 (extractMap!1894 lt!1853451)) key!4653)))))

(declare-fun b!4693204 () Bool)

(declare-fun e!2927770 () List!52573)

(assert (=> b!4693204 (= e!2927770 (keys!18736 (extractMap!1894 lt!1853451)))))

(declare-fun b!4693206 () Bool)

(declare-fun Unit!124678 () Unit!124653)

(assert (=> b!4693206 (= e!2927774 Unit!124678)))

(declare-fun b!4693207 () Bool)

(assert (=> b!4693207 (= e!2927775 (contains!15675 (keys!18736 (extractMap!1894 lt!1853451)) key!4653))))

(declare-fun b!4693208 () Bool)

(assert (=> b!4693208 false))

(declare-fun lt!1853666 () Unit!124653)

(declare-fun lt!1853665 () Unit!124653)

(assert (=> b!4693208 (= lt!1853666 lt!1853665)))

(declare-fun containsKey!3089 (List!52571 K!13820) Bool)

(assert (=> b!4693208 (containsKey!3089 (toList!5625 (extractMap!1894 lt!1853451)) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!858 (List!52571 K!13820) Unit!124653)

(assert (=> b!4693208 (= lt!1853665 (lemmaInGetKeysListThenContainsKey!858 (toList!5625 (extractMap!1894 lt!1853451)) key!4653))))

(declare-fun Unit!124679 () Unit!124653)

(assert (=> b!4693208 (= e!2927774 Unit!124679)))

(declare-fun bm!328020 () Bool)

(assert (=> bm!328020 (= call!328025 (contains!15675 e!2927770 key!4653))))

(declare-fun c!802366 () Bool)

(declare-fun c!802367 () Bool)

(assert (=> bm!328020 (= c!802366 c!802367)))

(declare-fun d!1491650 () Bool)

(assert (=> d!1491650 e!2927772))

(declare-fun res!1980093 () Bool)

(assert (=> d!1491650 (=> res!1980093 e!2927772)))

(assert (=> d!1491650 (= res!1980093 e!2927773)))

(declare-fun res!1980094 () Bool)

(assert (=> d!1491650 (=> (not res!1980094) (not e!2927773))))

(declare-fun lt!1853664 () Bool)

(assert (=> d!1491650 (= res!1980094 (not lt!1853664))))

(declare-fun lt!1853663 () Bool)

(assert (=> d!1491650 (= lt!1853664 lt!1853663)))

(declare-fun lt!1853668 () Unit!124653)

(assert (=> d!1491650 (= lt!1853668 e!2927771)))

(assert (=> d!1491650 (= c!802367 lt!1853663)))

(assert (=> d!1491650 (= lt!1853663 (containsKey!3089 (toList!5625 (extractMap!1894 lt!1853451)) key!4653))))

(assert (=> d!1491650 (= (contains!15670 (extractMap!1894 lt!1853451) key!4653) lt!1853664)))

(declare-fun b!4693205 () Bool)

(declare-fun getKeysList!859 (List!52571) List!52573)

(assert (=> b!4693205 (= e!2927770 (getKeysList!859 (toList!5625 (extractMap!1894 lt!1853451))))))

(assert (= (and d!1491650 c!802367) b!4693200))

(assert (= (and d!1491650 (not c!802367)) b!4693201))

(assert (= (and b!4693201 c!802365) b!4693208))

(assert (= (and b!4693201 (not c!802365)) b!4693206))

(assert (= (or b!4693200 b!4693201) bm!328020))

(assert (= (and bm!328020 c!802366) b!4693205))

(assert (= (and bm!328020 (not c!802366)) b!4693204))

(assert (= (and d!1491650 res!1980094) b!4693202))

(assert (= (and d!1491650 (not res!1980093)) b!4693203))

(assert (= (and b!4693203 res!1980095) b!4693207))

(declare-fun m!5598301 () Bool)

(assert (=> b!4693203 m!5598301))

(assert (=> b!4693203 m!5598301))

(declare-fun m!5598303 () Bool)

(assert (=> b!4693203 m!5598303))

(assert (=> b!4693207 m!5598027))

(declare-fun m!5598305 () Bool)

(assert (=> b!4693207 m!5598305))

(assert (=> b!4693207 m!5598305))

(declare-fun m!5598307 () Bool)

(assert (=> b!4693207 m!5598307))

(declare-fun m!5598309 () Bool)

(assert (=> b!4693208 m!5598309))

(declare-fun m!5598311 () Bool)

(assert (=> b!4693208 m!5598311))

(assert (=> d!1491650 m!5598309))

(declare-fun m!5598313 () Bool)

(assert (=> b!4693200 m!5598313))

(assert (=> b!4693200 m!5598301))

(assert (=> b!4693200 m!5598301))

(assert (=> b!4693200 m!5598303))

(declare-fun m!5598315 () Bool)

(assert (=> b!4693200 m!5598315))

(assert (=> b!4693204 m!5598027))

(assert (=> b!4693204 m!5598305))

(declare-fun m!5598317 () Bool)

(assert (=> bm!328020 m!5598317))

(declare-fun m!5598319 () Bool)

(assert (=> b!4693205 m!5598319))

(assert (=> b!4693202 m!5598027))

(assert (=> b!4693202 m!5598305))

(assert (=> b!4693202 m!5598305))

(assert (=> b!4693202 m!5598307))

(assert (=> b!4693035 d!1491650))

(declare-fun d!1491660 () Bool)

(declare-fun e!2927780 () Bool)

(assert (=> d!1491660 e!2927780))

(declare-fun res!1980101 () Bool)

(assert (=> d!1491660 (=> (not res!1980101) (not e!2927780))))

(declare-fun lt!1853671 () ListMap!4989)

(assert (=> d!1491660 (= res!1980101 (contains!15670 lt!1853671 (_1!30227 lt!1853450)))))

(declare-fun lt!1853670 () List!52571)

(assert (=> d!1491660 (= lt!1853671 (ListMap!4990 lt!1853670))))

(declare-fun lt!1853672 () Unit!124653)

(declare-fun lt!1853673 () Unit!124653)

(assert (=> d!1491660 (= lt!1853672 lt!1853673)))

(assert (=> d!1491660 (= (getValueByKey!1798 lt!1853670 (_1!30227 lt!1853450)) (Some!12111 (_2!30227 lt!1853450)))))

(assert (=> d!1491660 (= lt!1853673 (lemmaContainsTupThenGetReturnValue!1009 lt!1853670 (_1!30227 lt!1853450) (_2!30227 lt!1853450)))))

(assert (=> d!1491660 (= lt!1853670 (insertNoDuplicatedKeys!517 (toList!5625 (addToMapMapFromBucket!1300 lt!1853436 lt!1853429)) (_1!30227 lt!1853450) (_2!30227 lt!1853450)))))

(assert (=> d!1491660 (= (+!2152 (addToMapMapFromBucket!1300 lt!1853436 lt!1853429) lt!1853450) lt!1853671)))

(declare-fun b!4693213 () Bool)

(declare-fun res!1980100 () Bool)

(assert (=> b!4693213 (=> (not res!1980100) (not e!2927780))))

(assert (=> b!4693213 (= res!1980100 (= (getValueByKey!1798 (toList!5625 lt!1853671) (_1!30227 lt!1853450)) (Some!12111 (_2!30227 lt!1853450))))))

(declare-fun b!4693214 () Bool)

(assert (=> b!4693214 (= e!2927780 (contains!15673 (toList!5625 lt!1853671) lt!1853450))))

(assert (= (and d!1491660 res!1980101) b!4693213))

(assert (= (and b!4693213 res!1980100) b!4693214))

(declare-fun m!5598321 () Bool)

(assert (=> d!1491660 m!5598321))

(declare-fun m!5598323 () Bool)

(assert (=> d!1491660 m!5598323))

(declare-fun m!5598325 () Bool)

(assert (=> d!1491660 m!5598325))

(declare-fun m!5598327 () Bool)

(assert (=> d!1491660 m!5598327))

(declare-fun m!5598330 () Bool)

(assert (=> b!4693213 m!5598330))

(declare-fun m!5598333 () Bool)

(assert (=> b!4693214 m!5598333))

(assert (=> b!4693035 d!1491660))

(declare-fun d!1491662 () Bool)

(assert (=> d!1491662 (= (head!10000 newBucket!218) (h!58702 newBucket!218))))

(assert (=> b!4693035 d!1491662))

(declare-fun d!1491666 () Bool)

(assert (=> d!1491666 (= (eq!1027 (addToMapMapFromBucket!1300 (Cons!52447 lt!1853450 lt!1853436) lt!1853429) (+!2152 (addToMapMapFromBucket!1300 lt!1853436 lt!1853429) lt!1853450)) (= (content!9187 (toList!5625 (addToMapMapFromBucket!1300 (Cons!52447 lt!1853450 lt!1853436) lt!1853429))) (content!9187 (toList!5625 (+!2152 (addToMapMapFromBucket!1300 lt!1853436 lt!1853429) lt!1853450)))))))

(declare-fun bs!1088733 () Bool)

(assert (= bs!1088733 d!1491666))

(declare-fun m!5598337 () Bool)

(assert (=> bs!1088733 m!5598337))

(declare-fun m!5598339 () Bool)

(assert (=> bs!1088733 m!5598339))

(assert (=> b!4693035 d!1491666))

(declare-fun d!1491668 () Bool)

(assert (=> d!1491668 (eq!1027 (addToMapMapFromBucket!1300 (Cons!52447 lt!1853450 lt!1853436) lt!1853429) (+!2152 (addToMapMapFromBucket!1300 lt!1853436 lt!1853429) lt!1853450))))

(declare-fun lt!1853679 () Unit!124653)

(declare-fun choose!32657 (tuple2!53866 List!52571 ListMap!4989) Unit!124653)

(assert (=> d!1491668 (= lt!1853679 (choose!32657 lt!1853450 lt!1853436 lt!1853429))))

(assert (=> d!1491668 (noDuplicateKeys!1868 lt!1853436)))

(assert (=> d!1491668 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!276 lt!1853450 lt!1853436 lt!1853429) lt!1853679)))

(declare-fun bs!1088735 () Bool)

(assert (= bs!1088735 d!1491668))

(declare-fun m!5598349 () Bool)

(assert (=> bs!1088735 m!5598349))

(assert (=> bs!1088735 m!5598031))

(assert (=> bs!1088735 m!5598033))

(assert (=> bs!1088735 m!5598041))

(declare-fun m!5598351 () Bool)

(assert (=> bs!1088735 m!5598351))

(assert (=> bs!1088735 m!5598031))

(assert (=> bs!1088735 m!5598041))

(assert (=> bs!1088735 m!5598033))

(assert (=> bs!1088735 m!5598043))

(assert (=> b!4693035 d!1491668))

(declare-fun d!1491678 () Bool)

(declare-fun e!2927789 () Bool)

(assert (=> d!1491678 e!2927789))

(declare-fun res!1980105 () Bool)

(assert (=> d!1491678 (=> (not res!1980105) (not e!2927789))))

(declare-fun lt!1853681 () ListMap!4989)

(assert (=> d!1491678 (= res!1980105 (contains!15670 lt!1853681 (_1!30227 (h!58702 oldBucket!34))))))

(declare-fun lt!1853680 () List!52571)

(assert (=> d!1491678 (= lt!1853681 (ListMap!4990 lt!1853680))))

(declare-fun lt!1853682 () Unit!124653)

(declare-fun lt!1853683 () Unit!124653)

(assert (=> d!1491678 (= lt!1853682 lt!1853683)))

(assert (=> d!1491678 (= (getValueByKey!1798 lt!1853680 (_1!30227 (h!58702 oldBucket!34))) (Some!12111 (_2!30227 (h!58702 oldBucket!34))))))

(assert (=> d!1491678 (= lt!1853683 (lemmaContainsTupThenGetReturnValue!1009 lt!1853680 (_1!30227 (h!58702 oldBucket!34)) (_2!30227 (h!58702 oldBucket!34))))))

(assert (=> d!1491678 (= lt!1853680 (insertNoDuplicatedKeys!517 (toList!5625 lt!1853445) (_1!30227 (h!58702 oldBucket!34)) (_2!30227 (h!58702 oldBucket!34))))))

(assert (=> d!1491678 (= (+!2152 lt!1853445 (h!58702 oldBucket!34)) lt!1853681)))

(declare-fun b!4693229 () Bool)

(declare-fun res!1980104 () Bool)

(assert (=> b!4693229 (=> (not res!1980104) (not e!2927789))))

(assert (=> b!4693229 (= res!1980104 (= (getValueByKey!1798 (toList!5625 lt!1853681) (_1!30227 (h!58702 oldBucket!34))) (Some!12111 (_2!30227 (h!58702 oldBucket!34)))))))

(declare-fun b!4693230 () Bool)

(assert (=> b!4693230 (= e!2927789 (contains!15673 (toList!5625 lt!1853681) (h!58702 oldBucket!34)))))

(assert (= (and d!1491678 res!1980105) b!4693229))

(assert (= (and b!4693229 res!1980104) b!4693230))

(declare-fun m!5598353 () Bool)

(assert (=> d!1491678 m!5598353))

(declare-fun m!5598355 () Bool)

(assert (=> d!1491678 m!5598355))

(declare-fun m!5598357 () Bool)

(assert (=> d!1491678 m!5598357))

(declare-fun m!5598359 () Bool)

(assert (=> d!1491678 m!5598359))

(declare-fun m!5598361 () Bool)

(assert (=> b!4693229 m!5598361))

(declare-fun m!5598363 () Bool)

(assert (=> b!4693230 m!5598363))

(assert (=> b!4693035 d!1491678))

(declare-fun bs!1088736 () Bool)

(declare-fun d!1491680 () Bool)

(assert (= bs!1088736 (and d!1491680 start!475052)))

(declare-fun lambda!208029 () Int)

(assert (=> bs!1088736 (= lambda!208029 lambda!207967)))

(declare-fun bs!1088737 () Bool)

(assert (= bs!1088737 (and d!1491680 d!1491636)))

(assert (=> bs!1088737 (= lambda!208029 lambda!208015)))

(declare-fun bs!1088738 () Bool)

(assert (= bs!1088738 (and d!1491680 d!1491648)))

(assert (=> bs!1088738 (= lambda!208029 lambda!208020)))

(assert (=> d!1491680 (contains!15670 (extractMap!1894 (toList!5626 lt!1853442)) key!4653)))

(declare-fun lt!1853686 () Unit!124653)

(declare-fun choose!32658 (ListLongMap!4155 K!13820 Hashable!6237) Unit!124653)

(assert (=> d!1491680 (= lt!1853686 (choose!32658 lt!1853442 key!4653 hashF!1323))))

(assert (=> d!1491680 (forall!11345 (toList!5626 lt!1853442) lambda!208029)))

(assert (=> d!1491680 (= (lemmaListContainsThenExtractedMapContains!460 lt!1853442 key!4653 hashF!1323) lt!1853686)))

(declare-fun bs!1088739 () Bool)

(assert (= bs!1088739 d!1491680))

(declare-fun m!5598365 () Bool)

(assert (=> bs!1088739 m!5598365))

(assert (=> bs!1088739 m!5598365))

(declare-fun m!5598367 () Bool)

(assert (=> bs!1088739 m!5598367))

(declare-fun m!5598369 () Bool)

(assert (=> bs!1088739 m!5598369))

(declare-fun m!5598371 () Bool)

(assert (=> bs!1088739 m!5598371))

(assert (=> b!4693035 d!1491680))

(declare-fun bs!1088740 () Bool)

(declare-fun b!4693231 () Bool)

(assert (= bs!1088740 (and b!4693231 b!4693121)))

(declare-fun lambda!208030 () Int)

(assert (=> bs!1088740 (= lambda!208030 lambda!208007)))

(declare-fun bs!1088741 () Bool)

(assert (= bs!1088741 (and b!4693231 b!4693117)))

(assert (=> bs!1088741 (= lambda!208030 lambda!208006)))

(declare-fun bs!1088742 () Bool)

(assert (= bs!1088742 (and b!4693231 b!4693142)))

(assert (=> bs!1088742 (= (= lt!1853429 lt!1853612) (= lambda!208030 lambda!208018))))

(declare-fun bs!1088743 () Bool)

(assert (= bs!1088743 (and b!4693231 d!1491606)))

(assert (=> bs!1088743 (= (= lt!1853429 lt!1853571) (= lambda!208030 lambda!208009))))

(declare-fun bs!1088744 () Bool)

(assert (= bs!1088744 (and b!4693231 d!1491642)))

(assert (=> bs!1088744 (= (= lt!1853429 lt!1853607) (= lambda!208030 lambda!208019))))

(assert (=> bs!1088742 (= lambda!208030 lambda!208017)))

(assert (=> bs!1088740 (= (= lt!1853429 lt!1853576) (= lambda!208030 lambda!208008))))

(declare-fun bs!1088745 () Bool)

(assert (= bs!1088745 (and b!4693231 b!4693138)))

(assert (=> bs!1088745 (= lambda!208030 lambda!208016)))

(assert (=> b!4693231 true))

(declare-fun bs!1088746 () Bool)

(declare-fun b!4693235 () Bool)

(assert (= bs!1088746 (and b!4693235 b!4693121)))

(declare-fun lambda!208031 () Int)

(assert (=> bs!1088746 (= lambda!208031 lambda!208007)))

(declare-fun bs!1088747 () Bool)

(assert (= bs!1088747 (and b!4693235 b!4693231)))

(assert (=> bs!1088747 (= lambda!208031 lambda!208030)))

(declare-fun bs!1088748 () Bool)

(assert (= bs!1088748 (and b!4693235 b!4693117)))

(assert (=> bs!1088748 (= lambda!208031 lambda!208006)))

(declare-fun bs!1088749 () Bool)

(assert (= bs!1088749 (and b!4693235 b!4693142)))

(assert (=> bs!1088749 (= (= lt!1853429 lt!1853612) (= lambda!208031 lambda!208018))))

(declare-fun bs!1088750 () Bool)

(assert (= bs!1088750 (and b!4693235 d!1491606)))

(assert (=> bs!1088750 (= (= lt!1853429 lt!1853571) (= lambda!208031 lambda!208009))))

(declare-fun bs!1088751 () Bool)

(assert (= bs!1088751 (and b!4693235 d!1491642)))

(assert (=> bs!1088751 (= (= lt!1853429 lt!1853607) (= lambda!208031 lambda!208019))))

(assert (=> bs!1088749 (= lambda!208031 lambda!208017)))

(assert (=> bs!1088746 (= (= lt!1853429 lt!1853576) (= lambda!208031 lambda!208008))))

(declare-fun bs!1088752 () Bool)

(assert (= bs!1088752 (and b!4693235 b!4693138)))

(assert (=> bs!1088752 (= lambda!208031 lambda!208016)))

(assert (=> b!4693235 true))

(declare-fun lt!1853702 () ListMap!4989)

(declare-fun lambda!208032 () Int)

(assert (=> bs!1088746 (= (= lt!1853702 lt!1853429) (= lambda!208032 lambda!208007))))

(assert (=> bs!1088747 (= (= lt!1853702 lt!1853429) (= lambda!208032 lambda!208030))))

(assert (=> bs!1088748 (= (= lt!1853702 lt!1853429) (= lambda!208032 lambda!208006))))

(assert (=> bs!1088749 (= (= lt!1853702 lt!1853612) (= lambda!208032 lambda!208018))))

(assert (=> bs!1088750 (= (= lt!1853702 lt!1853571) (= lambda!208032 lambda!208009))))

(assert (=> bs!1088751 (= (= lt!1853702 lt!1853607) (= lambda!208032 lambda!208019))))

(assert (=> b!4693235 (= (= lt!1853702 lt!1853429) (= lambda!208032 lambda!208031))))

(assert (=> bs!1088749 (= (= lt!1853702 lt!1853429) (= lambda!208032 lambda!208017))))

(assert (=> bs!1088746 (= (= lt!1853702 lt!1853576) (= lambda!208032 lambda!208008))))

(assert (=> bs!1088752 (= (= lt!1853702 lt!1853429) (= lambda!208032 lambda!208016))))

(assert (=> b!4693235 true))

(declare-fun bs!1088753 () Bool)

(declare-fun d!1491682 () Bool)

(assert (= bs!1088753 (and d!1491682 b!4693121)))

(declare-fun lt!1853697 () ListMap!4989)

(declare-fun lambda!208033 () Int)

(assert (=> bs!1088753 (= (= lt!1853697 lt!1853429) (= lambda!208033 lambda!208007))))

(declare-fun bs!1088754 () Bool)

(assert (= bs!1088754 (and d!1491682 b!4693235)))

(assert (=> bs!1088754 (= (= lt!1853697 lt!1853702) (= lambda!208033 lambda!208032))))

(declare-fun bs!1088755 () Bool)

(assert (= bs!1088755 (and d!1491682 b!4693231)))

(assert (=> bs!1088755 (= (= lt!1853697 lt!1853429) (= lambda!208033 lambda!208030))))

(declare-fun bs!1088756 () Bool)

(assert (= bs!1088756 (and d!1491682 b!4693117)))

(assert (=> bs!1088756 (= (= lt!1853697 lt!1853429) (= lambda!208033 lambda!208006))))

(declare-fun bs!1088757 () Bool)

(assert (= bs!1088757 (and d!1491682 b!4693142)))

(assert (=> bs!1088757 (= (= lt!1853697 lt!1853612) (= lambda!208033 lambda!208018))))

(declare-fun bs!1088758 () Bool)

(assert (= bs!1088758 (and d!1491682 d!1491606)))

(assert (=> bs!1088758 (= (= lt!1853697 lt!1853571) (= lambda!208033 lambda!208009))))

(declare-fun bs!1088759 () Bool)

(assert (= bs!1088759 (and d!1491682 d!1491642)))

(assert (=> bs!1088759 (= (= lt!1853697 lt!1853607) (= lambda!208033 lambda!208019))))

(assert (=> bs!1088754 (= (= lt!1853697 lt!1853429) (= lambda!208033 lambda!208031))))

(assert (=> bs!1088757 (= (= lt!1853697 lt!1853429) (= lambda!208033 lambda!208017))))

(assert (=> bs!1088753 (= (= lt!1853697 lt!1853576) (= lambda!208033 lambda!208008))))

(declare-fun bs!1088760 () Bool)

(assert (= bs!1088760 (and d!1491682 b!4693138)))

(assert (=> bs!1088760 (= (= lt!1853697 lt!1853429) (= lambda!208033 lambda!208016))))

(assert (=> d!1491682 true))

(declare-fun call!328026 () Bool)

(declare-fun c!802374 () Bool)

(declare-fun bm!328021 () Bool)

(assert (=> bm!328021 (= call!328026 (forall!11346 (ite c!802374 (toList!5625 lt!1853429) (Cons!52447 lt!1853430 lt!1853449)) (ite c!802374 lambda!208030 lambda!208032)))))

(declare-fun e!2927791 () ListMap!4989)

(assert (=> b!4693231 (= e!2927791 lt!1853429)))

(declare-fun lt!1853693 () Unit!124653)

(declare-fun call!328027 () Unit!124653)

(assert (=> b!4693231 (= lt!1853693 call!328027)))

(declare-fun call!328028 () Bool)

(assert (=> b!4693231 call!328028))

(declare-fun lt!1853703 () Unit!124653)

(assert (=> b!4693231 (= lt!1853703 lt!1853693)))

(assert (=> b!4693231 call!328026))

(declare-fun lt!1853696 () Unit!124653)

(declare-fun Unit!124682 () Unit!124653)

(assert (=> b!4693231 (= lt!1853696 Unit!124682)))

(declare-fun b!4693232 () Bool)

(declare-fun e!2927790 () Bool)

(assert (=> b!4693232 (= e!2927790 (forall!11346 (toList!5625 lt!1853429) lambda!208032))))

(declare-fun b!4693233 () Bool)

(declare-fun e!2927792 () Bool)

(assert (=> b!4693233 (= e!2927792 (invariantList!1419 (toList!5625 lt!1853697)))))

(declare-fun bm!328022 () Bool)

(assert (=> bm!328022 (= call!328027 (lemmaContainsAllItsOwnKeys!707 lt!1853429))))

(assert (=> d!1491682 e!2927792))

(declare-fun res!1980108 () Bool)

(assert (=> d!1491682 (=> (not res!1980108) (not e!2927792))))

(assert (=> d!1491682 (= res!1980108 (forall!11346 (Cons!52447 lt!1853430 lt!1853449) lambda!208033))))

(assert (=> d!1491682 (= lt!1853697 e!2927791)))

(assert (=> d!1491682 (= c!802374 ((_ is Nil!52447) (Cons!52447 lt!1853430 lt!1853449)))))

(assert (=> d!1491682 (noDuplicateKeys!1868 (Cons!52447 lt!1853430 lt!1853449))))

(assert (=> d!1491682 (= (addToMapMapFromBucket!1300 (Cons!52447 lt!1853430 lt!1853449) lt!1853429) lt!1853697)))

(declare-fun bm!328023 () Bool)

(declare-fun lt!1853689 () ListMap!4989)

(assert (=> bm!328023 (= call!328028 (forall!11346 (ite c!802374 (toList!5625 lt!1853429) (toList!5625 lt!1853689)) (ite c!802374 lambda!208030 lambda!208032)))))

(declare-fun b!4693234 () Bool)

(declare-fun res!1980106 () Bool)

(assert (=> b!4693234 (=> (not res!1980106) (not e!2927792))))

(assert (=> b!4693234 (= res!1980106 (forall!11346 (toList!5625 lt!1853429) lambda!208033))))

(assert (=> b!4693235 (= e!2927791 lt!1853702)))

(assert (=> b!4693235 (= lt!1853689 (+!2152 lt!1853429 (h!58702 (Cons!52447 lt!1853430 lt!1853449))))))

(assert (=> b!4693235 (= lt!1853702 (addToMapMapFromBucket!1300 (t!359757 (Cons!52447 lt!1853430 lt!1853449)) (+!2152 lt!1853429 (h!58702 (Cons!52447 lt!1853430 lt!1853449)))))))

(declare-fun lt!1853691 () Unit!124653)

(assert (=> b!4693235 (= lt!1853691 call!328027)))

(assert (=> b!4693235 (forall!11346 (toList!5625 lt!1853429) lambda!208031)))

(declare-fun lt!1853704 () Unit!124653)

(assert (=> b!4693235 (= lt!1853704 lt!1853691)))

(assert (=> b!4693235 call!328028))

(declare-fun lt!1853705 () Unit!124653)

(declare-fun Unit!124683 () Unit!124653)

(assert (=> b!4693235 (= lt!1853705 Unit!124683)))

(assert (=> b!4693235 (forall!11346 (t!359757 (Cons!52447 lt!1853430 lt!1853449)) lambda!208032)))

(declare-fun lt!1853706 () Unit!124653)

(declare-fun Unit!124684 () Unit!124653)

(assert (=> b!4693235 (= lt!1853706 Unit!124684)))

(declare-fun lt!1853699 () Unit!124653)

(declare-fun Unit!124685 () Unit!124653)

(assert (=> b!4693235 (= lt!1853699 Unit!124685)))

(declare-fun lt!1853692 () Unit!124653)

(assert (=> b!4693235 (= lt!1853692 (forallContained!3453 (toList!5625 lt!1853689) lambda!208032 (h!58702 (Cons!52447 lt!1853430 lt!1853449))))))

(assert (=> b!4693235 (contains!15670 lt!1853689 (_1!30227 (h!58702 (Cons!52447 lt!1853430 lt!1853449))))))

(declare-fun lt!1853688 () Unit!124653)

(declare-fun Unit!124686 () Unit!124653)

(assert (=> b!4693235 (= lt!1853688 Unit!124686)))

(assert (=> b!4693235 (contains!15670 lt!1853702 (_1!30227 (h!58702 (Cons!52447 lt!1853430 lt!1853449))))))

(declare-fun lt!1853707 () Unit!124653)

(declare-fun Unit!124687 () Unit!124653)

(assert (=> b!4693235 (= lt!1853707 Unit!124687)))

(assert (=> b!4693235 call!328026))

(declare-fun lt!1853690 () Unit!124653)

(declare-fun Unit!124688 () Unit!124653)

(assert (=> b!4693235 (= lt!1853690 Unit!124688)))

(assert (=> b!4693235 (forall!11346 (toList!5625 lt!1853689) lambda!208032)))

(declare-fun lt!1853701 () Unit!124653)

(declare-fun Unit!124689 () Unit!124653)

(assert (=> b!4693235 (= lt!1853701 Unit!124689)))

(declare-fun lt!1853694 () Unit!124653)

(declare-fun Unit!124690 () Unit!124653)

(assert (=> b!4693235 (= lt!1853694 Unit!124690)))

(declare-fun lt!1853700 () Unit!124653)

(assert (=> b!4693235 (= lt!1853700 (addForallContainsKeyThenBeforeAdding!706 lt!1853429 lt!1853702 (_1!30227 (h!58702 (Cons!52447 lt!1853430 lt!1853449))) (_2!30227 (h!58702 (Cons!52447 lt!1853430 lt!1853449)))))))

(assert (=> b!4693235 (forall!11346 (toList!5625 lt!1853429) lambda!208032)))

(declare-fun lt!1853698 () Unit!124653)

(assert (=> b!4693235 (= lt!1853698 lt!1853700)))

(assert (=> b!4693235 (forall!11346 (toList!5625 lt!1853429) lambda!208032)))

(declare-fun lt!1853695 () Unit!124653)

(declare-fun Unit!124691 () Unit!124653)

(assert (=> b!4693235 (= lt!1853695 Unit!124691)))

(declare-fun res!1980107 () Bool)

(assert (=> b!4693235 (= res!1980107 (forall!11346 (Cons!52447 lt!1853430 lt!1853449) lambda!208032))))

(assert (=> b!4693235 (=> (not res!1980107) (not e!2927790))))

(assert (=> b!4693235 e!2927790))

(declare-fun lt!1853687 () Unit!124653)

(declare-fun Unit!124692 () Unit!124653)

(assert (=> b!4693235 (= lt!1853687 Unit!124692)))

(assert (= (and d!1491682 c!802374) b!4693231))

(assert (= (and d!1491682 (not c!802374)) b!4693235))

(assert (= (and b!4693235 res!1980107) b!4693232))

(assert (= (or b!4693231 b!4693235) bm!328022))

(assert (= (or b!4693231 b!4693235) bm!328021))

(assert (= (or b!4693231 b!4693235) bm!328023))

(assert (= (and d!1491682 res!1980108) b!4693234))

(assert (= (and b!4693234 res!1980106) b!4693233))

(declare-fun m!5598373 () Bool)

(assert (=> b!4693234 m!5598373))

(declare-fun m!5598375 () Bool)

(assert (=> d!1491682 m!5598375))

(declare-fun m!5598377 () Bool)

(assert (=> d!1491682 m!5598377))

(declare-fun m!5598379 () Bool)

(assert (=> b!4693235 m!5598379))

(declare-fun m!5598381 () Bool)

(assert (=> b!4693235 m!5598381))

(declare-fun m!5598383 () Bool)

(assert (=> b!4693235 m!5598383))

(declare-fun m!5598385 () Bool)

(assert (=> b!4693235 m!5598385))

(declare-fun m!5598387 () Bool)

(assert (=> b!4693235 m!5598387))

(declare-fun m!5598389 () Bool)

(assert (=> b!4693235 m!5598389))

(declare-fun m!5598391 () Bool)

(assert (=> b!4693235 m!5598391))

(declare-fun m!5598393 () Bool)

(assert (=> b!4693235 m!5598393))

(assert (=> b!4693235 m!5598387))

(declare-fun m!5598395 () Bool)

(assert (=> b!4693235 m!5598395))

(assert (=> b!4693235 m!5598381))

(declare-fun m!5598397 () Bool)

(assert (=> b!4693235 m!5598397))

(declare-fun m!5598399 () Bool)

(assert (=> b!4693235 m!5598399))

(declare-fun m!5598401 () Bool)

(assert (=> bm!328023 m!5598401))

(declare-fun m!5598403 () Bool)

(assert (=> b!4693233 m!5598403))

(declare-fun m!5598405 () Bool)

(assert (=> bm!328021 m!5598405))

(assert (=> b!4693232 m!5598387))

(assert (=> bm!328022 m!5598201))

(assert (=> b!4693035 d!1491682))

(declare-fun bs!1088761 () Bool)

(declare-fun b!4693236 () Bool)

(assert (= bs!1088761 (and b!4693236 b!4693121)))

(declare-fun lambda!208034 () Int)

(assert (=> bs!1088761 (= lambda!208034 lambda!208007)))

(declare-fun bs!1088762 () Bool)

(assert (= bs!1088762 (and b!4693236 d!1491682)))

(assert (=> bs!1088762 (= (= lt!1853429 lt!1853697) (= lambda!208034 lambda!208033))))

(declare-fun bs!1088763 () Bool)

(assert (= bs!1088763 (and b!4693236 b!4693235)))

(assert (=> bs!1088763 (= (= lt!1853429 lt!1853702) (= lambda!208034 lambda!208032))))

(declare-fun bs!1088764 () Bool)

(assert (= bs!1088764 (and b!4693236 b!4693231)))

(assert (=> bs!1088764 (= lambda!208034 lambda!208030)))

(declare-fun bs!1088765 () Bool)

(assert (= bs!1088765 (and b!4693236 b!4693117)))

(assert (=> bs!1088765 (= lambda!208034 lambda!208006)))

(declare-fun bs!1088766 () Bool)

(assert (= bs!1088766 (and b!4693236 b!4693142)))

(assert (=> bs!1088766 (= (= lt!1853429 lt!1853612) (= lambda!208034 lambda!208018))))

(declare-fun bs!1088767 () Bool)

(assert (= bs!1088767 (and b!4693236 d!1491606)))

(assert (=> bs!1088767 (= (= lt!1853429 lt!1853571) (= lambda!208034 lambda!208009))))

(declare-fun bs!1088768 () Bool)

(assert (= bs!1088768 (and b!4693236 d!1491642)))

(assert (=> bs!1088768 (= (= lt!1853429 lt!1853607) (= lambda!208034 lambda!208019))))

(assert (=> bs!1088763 (= lambda!208034 lambda!208031)))

(assert (=> bs!1088766 (= lambda!208034 lambda!208017)))

(assert (=> bs!1088761 (= (= lt!1853429 lt!1853576) (= lambda!208034 lambda!208008))))

(declare-fun bs!1088769 () Bool)

(assert (= bs!1088769 (and b!4693236 b!4693138)))

(assert (=> bs!1088769 (= lambda!208034 lambda!208016)))

(assert (=> b!4693236 true))

(declare-fun bs!1088770 () Bool)

(declare-fun b!4693240 () Bool)

(assert (= bs!1088770 (and b!4693240 b!4693121)))

(declare-fun lambda!208035 () Int)

(assert (=> bs!1088770 (= lambda!208035 lambda!208007)))

(declare-fun bs!1088771 () Bool)

(assert (= bs!1088771 (and b!4693240 d!1491682)))

(assert (=> bs!1088771 (= (= lt!1853429 lt!1853697) (= lambda!208035 lambda!208033))))

(declare-fun bs!1088772 () Bool)

(assert (= bs!1088772 (and b!4693240 b!4693235)))

(assert (=> bs!1088772 (= (= lt!1853429 lt!1853702) (= lambda!208035 lambda!208032))))

(declare-fun bs!1088773 () Bool)

(assert (= bs!1088773 (and b!4693240 b!4693231)))

(assert (=> bs!1088773 (= lambda!208035 lambda!208030)))

(declare-fun bs!1088774 () Bool)

(assert (= bs!1088774 (and b!4693240 b!4693117)))

(assert (=> bs!1088774 (= lambda!208035 lambda!208006)))

(declare-fun bs!1088775 () Bool)

(assert (= bs!1088775 (and b!4693240 d!1491606)))

(assert (=> bs!1088775 (= (= lt!1853429 lt!1853571) (= lambda!208035 lambda!208009))))

(declare-fun bs!1088776 () Bool)

(assert (= bs!1088776 (and b!4693240 d!1491642)))

(assert (=> bs!1088776 (= (= lt!1853429 lt!1853607) (= lambda!208035 lambda!208019))))

(assert (=> bs!1088772 (= lambda!208035 lambda!208031)))

(declare-fun bs!1088777 () Bool)

(assert (= bs!1088777 (and b!4693240 b!4693142)))

(assert (=> bs!1088777 (= lambda!208035 lambda!208017)))

(assert (=> bs!1088770 (= (= lt!1853429 lt!1853576) (= lambda!208035 lambda!208008))))

(declare-fun bs!1088778 () Bool)

(assert (= bs!1088778 (and b!4693240 b!4693138)))

(assert (=> bs!1088778 (= lambda!208035 lambda!208016)))

(assert (=> bs!1088777 (= (= lt!1853429 lt!1853612) (= lambda!208035 lambda!208018))))

(declare-fun bs!1088779 () Bool)

(assert (= bs!1088779 (and b!4693240 b!4693236)))

(assert (=> bs!1088779 (= lambda!208035 lambda!208034)))

(assert (=> b!4693240 true))

(declare-fun lambda!208036 () Int)

(declare-fun lt!1853723 () ListMap!4989)

(assert (=> bs!1088770 (= (= lt!1853723 lt!1853429) (= lambda!208036 lambda!208007))))

(assert (=> bs!1088771 (= (= lt!1853723 lt!1853697) (= lambda!208036 lambda!208033))))

(assert (=> bs!1088772 (= (= lt!1853723 lt!1853702) (= lambda!208036 lambda!208032))))

(assert (=> b!4693240 (= (= lt!1853723 lt!1853429) (= lambda!208036 lambda!208035))))

(assert (=> bs!1088773 (= (= lt!1853723 lt!1853429) (= lambda!208036 lambda!208030))))

(assert (=> bs!1088774 (= (= lt!1853723 lt!1853429) (= lambda!208036 lambda!208006))))

(assert (=> bs!1088775 (= (= lt!1853723 lt!1853571) (= lambda!208036 lambda!208009))))

(assert (=> bs!1088776 (= (= lt!1853723 lt!1853607) (= lambda!208036 lambda!208019))))

(assert (=> bs!1088772 (= (= lt!1853723 lt!1853429) (= lambda!208036 lambda!208031))))

(assert (=> bs!1088777 (= (= lt!1853723 lt!1853429) (= lambda!208036 lambda!208017))))

(assert (=> bs!1088770 (= (= lt!1853723 lt!1853576) (= lambda!208036 lambda!208008))))

(assert (=> bs!1088778 (= (= lt!1853723 lt!1853429) (= lambda!208036 lambda!208016))))

(assert (=> bs!1088777 (= (= lt!1853723 lt!1853612) (= lambda!208036 lambda!208018))))

(assert (=> bs!1088779 (= (= lt!1853723 lt!1853429) (= lambda!208036 lambda!208034))))

(assert (=> b!4693240 true))

(declare-fun bs!1088780 () Bool)

(declare-fun d!1491684 () Bool)

(assert (= bs!1088780 (and d!1491684 b!4693121)))

(declare-fun lt!1853718 () ListMap!4989)

(declare-fun lambda!208037 () Int)

(assert (=> bs!1088780 (= (= lt!1853718 lt!1853429) (= lambda!208037 lambda!208007))))

(declare-fun bs!1088781 () Bool)

(assert (= bs!1088781 (and d!1491684 d!1491682)))

(assert (=> bs!1088781 (= (= lt!1853718 lt!1853697) (= lambda!208037 lambda!208033))))

(declare-fun bs!1088782 () Bool)

(assert (= bs!1088782 (and d!1491684 b!4693235)))

(assert (=> bs!1088782 (= (= lt!1853718 lt!1853702) (= lambda!208037 lambda!208032))))

(declare-fun bs!1088783 () Bool)

(assert (= bs!1088783 (and d!1491684 b!4693240)))

(assert (=> bs!1088783 (= (= lt!1853718 lt!1853429) (= lambda!208037 lambda!208035))))

(declare-fun bs!1088784 () Bool)

(assert (= bs!1088784 (and d!1491684 b!4693231)))

(assert (=> bs!1088784 (= (= lt!1853718 lt!1853429) (= lambda!208037 lambda!208030))))

(declare-fun bs!1088785 () Bool)

(assert (= bs!1088785 (and d!1491684 b!4693117)))

(assert (=> bs!1088785 (= (= lt!1853718 lt!1853429) (= lambda!208037 lambda!208006))))

(declare-fun bs!1088786 () Bool)

(assert (= bs!1088786 (and d!1491684 d!1491606)))

(assert (=> bs!1088786 (= (= lt!1853718 lt!1853571) (= lambda!208037 lambda!208009))))

(declare-fun bs!1088787 () Bool)

(assert (= bs!1088787 (and d!1491684 d!1491642)))

(assert (=> bs!1088787 (= (= lt!1853718 lt!1853607) (= lambda!208037 lambda!208019))))

(assert (=> bs!1088782 (= (= lt!1853718 lt!1853429) (= lambda!208037 lambda!208031))))

(assert (=> bs!1088783 (= (= lt!1853718 lt!1853723) (= lambda!208037 lambda!208036))))

(declare-fun bs!1088788 () Bool)

(assert (= bs!1088788 (and d!1491684 b!4693142)))

(assert (=> bs!1088788 (= (= lt!1853718 lt!1853429) (= lambda!208037 lambda!208017))))

(assert (=> bs!1088780 (= (= lt!1853718 lt!1853576) (= lambda!208037 lambda!208008))))

(declare-fun bs!1088789 () Bool)

(assert (= bs!1088789 (and d!1491684 b!4693138)))

(assert (=> bs!1088789 (= (= lt!1853718 lt!1853429) (= lambda!208037 lambda!208016))))

(assert (=> bs!1088788 (= (= lt!1853718 lt!1853612) (= lambda!208037 lambda!208018))))

(declare-fun bs!1088790 () Bool)

(assert (= bs!1088790 (and d!1491684 b!4693236)))

(assert (=> bs!1088790 (= (= lt!1853718 lt!1853429) (= lambda!208037 lambda!208034))))

(assert (=> d!1491684 true))

(declare-fun call!328029 () Bool)

(declare-fun bm!328024 () Bool)

(declare-fun c!802375 () Bool)

(assert (=> bm!328024 (= call!328029 (forall!11346 (ite c!802375 (toList!5625 lt!1853429) lt!1853436) (ite c!802375 lambda!208034 lambda!208036)))))

(declare-fun e!2927794 () ListMap!4989)

(assert (=> b!4693236 (= e!2927794 lt!1853429)))

(declare-fun lt!1853714 () Unit!124653)

(declare-fun call!328030 () Unit!124653)

(assert (=> b!4693236 (= lt!1853714 call!328030)))

(declare-fun call!328031 () Bool)

(assert (=> b!4693236 call!328031))

(declare-fun lt!1853724 () Unit!124653)

(assert (=> b!4693236 (= lt!1853724 lt!1853714)))

(assert (=> b!4693236 call!328029))

(declare-fun lt!1853717 () Unit!124653)

(declare-fun Unit!124701 () Unit!124653)

(assert (=> b!4693236 (= lt!1853717 Unit!124701)))

(declare-fun b!4693237 () Bool)

(declare-fun e!2927793 () Bool)

(assert (=> b!4693237 (= e!2927793 (forall!11346 (toList!5625 lt!1853429) lambda!208036))))

(declare-fun b!4693238 () Bool)

(declare-fun e!2927795 () Bool)

(assert (=> b!4693238 (= e!2927795 (invariantList!1419 (toList!5625 lt!1853718)))))

(declare-fun bm!328025 () Bool)

(assert (=> bm!328025 (= call!328030 (lemmaContainsAllItsOwnKeys!707 lt!1853429))))

(assert (=> d!1491684 e!2927795))

(declare-fun res!1980111 () Bool)

(assert (=> d!1491684 (=> (not res!1980111) (not e!2927795))))

(assert (=> d!1491684 (= res!1980111 (forall!11346 lt!1853436 lambda!208037))))

(assert (=> d!1491684 (= lt!1853718 e!2927794)))

(assert (=> d!1491684 (= c!802375 ((_ is Nil!52447) lt!1853436))))

(assert (=> d!1491684 (noDuplicateKeys!1868 lt!1853436)))

(assert (=> d!1491684 (= (addToMapMapFromBucket!1300 lt!1853436 lt!1853429) lt!1853718)))

(declare-fun lt!1853710 () ListMap!4989)

(declare-fun bm!328026 () Bool)

(assert (=> bm!328026 (= call!328031 (forall!11346 (ite c!802375 (toList!5625 lt!1853429) (toList!5625 lt!1853710)) (ite c!802375 lambda!208034 lambda!208036)))))

(declare-fun b!4693239 () Bool)

(declare-fun res!1980109 () Bool)

(assert (=> b!4693239 (=> (not res!1980109) (not e!2927795))))

(assert (=> b!4693239 (= res!1980109 (forall!11346 (toList!5625 lt!1853429) lambda!208037))))

(assert (=> b!4693240 (= e!2927794 lt!1853723)))

(assert (=> b!4693240 (= lt!1853710 (+!2152 lt!1853429 (h!58702 lt!1853436)))))

(assert (=> b!4693240 (= lt!1853723 (addToMapMapFromBucket!1300 (t!359757 lt!1853436) (+!2152 lt!1853429 (h!58702 lt!1853436))))))

(declare-fun lt!1853712 () Unit!124653)

(assert (=> b!4693240 (= lt!1853712 call!328030)))

(assert (=> b!4693240 (forall!11346 (toList!5625 lt!1853429) lambda!208035)))

(declare-fun lt!1853725 () Unit!124653)

(assert (=> b!4693240 (= lt!1853725 lt!1853712)))

(assert (=> b!4693240 call!328031))

(declare-fun lt!1853726 () Unit!124653)

(declare-fun Unit!124705 () Unit!124653)

(assert (=> b!4693240 (= lt!1853726 Unit!124705)))

(assert (=> b!4693240 (forall!11346 (t!359757 lt!1853436) lambda!208036)))

(declare-fun lt!1853727 () Unit!124653)

(declare-fun Unit!124706 () Unit!124653)

(assert (=> b!4693240 (= lt!1853727 Unit!124706)))

(declare-fun lt!1853720 () Unit!124653)

(declare-fun Unit!124707 () Unit!124653)

(assert (=> b!4693240 (= lt!1853720 Unit!124707)))

(declare-fun lt!1853713 () Unit!124653)

(assert (=> b!4693240 (= lt!1853713 (forallContained!3453 (toList!5625 lt!1853710) lambda!208036 (h!58702 lt!1853436)))))

(assert (=> b!4693240 (contains!15670 lt!1853710 (_1!30227 (h!58702 lt!1853436)))))

(declare-fun lt!1853709 () Unit!124653)

(declare-fun Unit!124708 () Unit!124653)

(assert (=> b!4693240 (= lt!1853709 Unit!124708)))

(assert (=> b!4693240 (contains!15670 lt!1853723 (_1!30227 (h!58702 lt!1853436)))))

(declare-fun lt!1853728 () Unit!124653)

(declare-fun Unit!124709 () Unit!124653)

(assert (=> b!4693240 (= lt!1853728 Unit!124709)))

(assert (=> b!4693240 call!328029))

(declare-fun lt!1853711 () Unit!124653)

(declare-fun Unit!124710 () Unit!124653)

(assert (=> b!4693240 (= lt!1853711 Unit!124710)))

(assert (=> b!4693240 (forall!11346 (toList!5625 lt!1853710) lambda!208036)))

(declare-fun lt!1853722 () Unit!124653)

(declare-fun Unit!124711 () Unit!124653)

(assert (=> b!4693240 (= lt!1853722 Unit!124711)))

(declare-fun lt!1853715 () Unit!124653)

(declare-fun Unit!124712 () Unit!124653)

(assert (=> b!4693240 (= lt!1853715 Unit!124712)))

(declare-fun lt!1853721 () Unit!124653)

(assert (=> b!4693240 (= lt!1853721 (addForallContainsKeyThenBeforeAdding!706 lt!1853429 lt!1853723 (_1!30227 (h!58702 lt!1853436)) (_2!30227 (h!58702 lt!1853436))))))

(assert (=> b!4693240 (forall!11346 (toList!5625 lt!1853429) lambda!208036)))

(declare-fun lt!1853719 () Unit!124653)

(assert (=> b!4693240 (= lt!1853719 lt!1853721)))

(assert (=> b!4693240 (forall!11346 (toList!5625 lt!1853429) lambda!208036)))

(declare-fun lt!1853716 () Unit!124653)

(declare-fun Unit!124713 () Unit!124653)

(assert (=> b!4693240 (= lt!1853716 Unit!124713)))

(declare-fun res!1980110 () Bool)

(assert (=> b!4693240 (= res!1980110 (forall!11346 lt!1853436 lambda!208036))))

(assert (=> b!4693240 (=> (not res!1980110) (not e!2927793))))

(assert (=> b!4693240 e!2927793))

(declare-fun lt!1853708 () Unit!124653)

(declare-fun Unit!124714 () Unit!124653)

(assert (=> b!4693240 (= lt!1853708 Unit!124714)))

(assert (= (and d!1491684 c!802375) b!4693236))

(assert (= (and d!1491684 (not c!802375)) b!4693240))

(assert (= (and b!4693240 res!1980110) b!4693237))

(assert (= (or b!4693236 b!4693240) bm!328025))

(assert (= (or b!4693236 b!4693240) bm!328024))

(assert (= (or b!4693236 b!4693240) bm!328026))

(assert (= (and d!1491684 res!1980111) b!4693239))

(assert (= (and b!4693239 res!1980109) b!4693238))

(declare-fun m!5598407 () Bool)

(assert (=> b!4693239 m!5598407))

(declare-fun m!5598409 () Bool)

(assert (=> d!1491684 m!5598409))

(assert (=> d!1491684 m!5598349))

(declare-fun m!5598411 () Bool)

(assert (=> b!4693240 m!5598411))

(declare-fun m!5598413 () Bool)

(assert (=> b!4693240 m!5598413))

(declare-fun m!5598415 () Bool)

(assert (=> b!4693240 m!5598415))

(declare-fun m!5598417 () Bool)

(assert (=> b!4693240 m!5598417))

(declare-fun m!5598419 () Bool)

(assert (=> b!4693240 m!5598419))

(declare-fun m!5598421 () Bool)

(assert (=> b!4693240 m!5598421))

(declare-fun m!5598423 () Bool)

(assert (=> b!4693240 m!5598423))

(declare-fun m!5598425 () Bool)

(assert (=> b!4693240 m!5598425))

(assert (=> b!4693240 m!5598419))

(declare-fun m!5598427 () Bool)

(assert (=> b!4693240 m!5598427))

(assert (=> b!4693240 m!5598413))

(declare-fun m!5598429 () Bool)

(assert (=> b!4693240 m!5598429))

(declare-fun m!5598431 () Bool)

(assert (=> b!4693240 m!5598431))

(declare-fun m!5598433 () Bool)

(assert (=> bm!328026 m!5598433))

(declare-fun m!5598435 () Bool)

(assert (=> b!4693238 m!5598435))

(declare-fun m!5598437 () Bool)

(assert (=> bm!328024 m!5598437))

(assert (=> b!4693237 m!5598419))

(assert (=> bm!328025 m!5598201))

(assert (=> b!4693035 d!1491684))

(declare-fun d!1491686 () Bool)

(assert (=> d!1491686 (= (eq!1027 lt!1853434 (+!2152 lt!1853445 (h!58702 oldBucket!34))) (= (content!9187 (toList!5625 lt!1853434)) (content!9187 (toList!5625 (+!2152 lt!1853445 (h!58702 oldBucket!34))))))))

(declare-fun bs!1088791 () Bool)

(assert (= bs!1088791 d!1491686))

(assert (=> bs!1088791 m!5598075))

(declare-fun m!5598439 () Bool)

(assert (=> bs!1088791 m!5598439))

(assert (=> b!4693035 d!1491686))

(declare-fun d!1491688 () Bool)

(assert (=> d!1491688 (eq!1027 (addToMapMapFromBucket!1300 (Cons!52447 lt!1853430 lt!1853449) lt!1853429) (+!2152 (addToMapMapFromBucket!1300 lt!1853449 lt!1853429) lt!1853430))))

(declare-fun lt!1853729 () Unit!124653)

(assert (=> d!1491688 (= lt!1853729 (choose!32657 lt!1853430 lt!1853449 lt!1853429))))

(assert (=> d!1491688 (noDuplicateKeys!1868 lt!1853449)))

(assert (=> d!1491688 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!276 lt!1853430 lt!1853449 lt!1853429) lt!1853729)))

(declare-fun bs!1088792 () Bool)

(assert (= bs!1088792 d!1491688))

(assert (=> bs!1088792 m!5598171))

(assert (=> bs!1088792 m!5598037))

(assert (=> bs!1088792 m!5598039))

(assert (=> bs!1088792 m!5598045))

(declare-fun m!5598441 () Bool)

(assert (=> bs!1088792 m!5598441))

(assert (=> bs!1088792 m!5598037))

(assert (=> bs!1088792 m!5598045))

(assert (=> bs!1088792 m!5598039))

(assert (=> bs!1088792 m!5598051))

(assert (=> b!4693035 d!1491688))

(declare-fun d!1491690 () Bool)

(declare-fun e!2927796 () Bool)

(assert (=> d!1491690 e!2927796))

(declare-fun res!1980113 () Bool)

(assert (=> d!1491690 (=> (not res!1980113) (not e!2927796))))

(declare-fun lt!1853731 () ListMap!4989)

(assert (=> d!1491690 (= res!1980113 (contains!15670 lt!1853731 (_1!30227 lt!1853430)))))

(declare-fun lt!1853730 () List!52571)

(assert (=> d!1491690 (= lt!1853731 (ListMap!4990 lt!1853730))))

(declare-fun lt!1853732 () Unit!124653)

(declare-fun lt!1853733 () Unit!124653)

(assert (=> d!1491690 (= lt!1853732 lt!1853733)))

(assert (=> d!1491690 (= (getValueByKey!1798 lt!1853730 (_1!30227 lt!1853430)) (Some!12111 (_2!30227 lt!1853430)))))

(assert (=> d!1491690 (= lt!1853733 (lemmaContainsTupThenGetReturnValue!1009 lt!1853730 (_1!30227 lt!1853430) (_2!30227 lt!1853430)))))

(assert (=> d!1491690 (= lt!1853730 (insertNoDuplicatedKeys!517 (toList!5625 (addToMapMapFromBucket!1300 lt!1853449 lt!1853429)) (_1!30227 lt!1853430) (_2!30227 lt!1853430)))))

(assert (=> d!1491690 (= (+!2152 (addToMapMapFromBucket!1300 lt!1853449 lt!1853429) lt!1853430) lt!1853731)))

(declare-fun b!4693241 () Bool)

(declare-fun res!1980112 () Bool)

(assert (=> b!4693241 (=> (not res!1980112) (not e!2927796))))

(assert (=> b!4693241 (= res!1980112 (= (getValueByKey!1798 (toList!5625 lt!1853731) (_1!30227 lt!1853430)) (Some!12111 (_2!30227 lt!1853430))))))

(declare-fun b!4693242 () Bool)

(assert (=> b!4693242 (= e!2927796 (contains!15673 (toList!5625 lt!1853731) lt!1853430))))

(assert (= (and d!1491690 res!1980113) b!4693241))

(assert (= (and b!4693241 res!1980112) b!4693242))

(declare-fun m!5598443 () Bool)

(assert (=> d!1491690 m!5598443))

(declare-fun m!5598445 () Bool)

(assert (=> d!1491690 m!5598445))

(declare-fun m!5598447 () Bool)

(assert (=> d!1491690 m!5598447))

(declare-fun m!5598449 () Bool)

(assert (=> d!1491690 m!5598449))

(declare-fun m!5598451 () Bool)

(assert (=> b!4693241 m!5598451))

(declare-fun m!5598453 () Bool)

(assert (=> b!4693242 m!5598453))

(assert (=> b!4693035 d!1491690))

(declare-fun bs!1088793 () Bool)

(declare-fun d!1491692 () Bool)

(assert (= bs!1088793 (and d!1491692 start!475052)))

(declare-fun lambda!208038 () Int)

(assert (=> bs!1088793 (= lambda!208038 lambda!207967)))

(declare-fun bs!1088794 () Bool)

(assert (= bs!1088794 (and d!1491692 d!1491636)))

(assert (=> bs!1088794 (= lambda!208038 lambda!208015)))

(declare-fun bs!1088795 () Bool)

(assert (= bs!1088795 (and d!1491692 d!1491648)))

(assert (=> bs!1088795 (= lambda!208038 lambda!208020)))

(declare-fun bs!1088796 () Bool)

(assert (= bs!1088796 (and d!1491692 d!1491680)))

(assert (=> bs!1088796 (= lambda!208038 lambda!208029)))

(declare-fun lt!1853734 () ListMap!4989)

(assert (=> d!1491692 (invariantList!1419 (toList!5625 lt!1853734))))

(declare-fun e!2927797 () ListMap!4989)

(assert (=> d!1491692 (= lt!1853734 e!2927797)))

(declare-fun c!802376 () Bool)

(assert (=> d!1491692 (= c!802376 ((_ is Cons!52448) (Cons!52448 (tuple2!53869 hash!405 lt!1853436) (t!359758 (toList!5626 lm!2023)))))))

(assert (=> d!1491692 (forall!11345 (Cons!52448 (tuple2!53869 hash!405 lt!1853436) (t!359758 (toList!5626 lm!2023))) lambda!208038)))

(assert (=> d!1491692 (= (extractMap!1894 (Cons!52448 (tuple2!53869 hash!405 lt!1853436) (t!359758 (toList!5626 lm!2023)))) lt!1853734)))

(declare-fun b!4693243 () Bool)

(assert (=> b!4693243 (= e!2927797 (addToMapMapFromBucket!1300 (_2!30228 (h!58703 (Cons!52448 (tuple2!53869 hash!405 lt!1853436) (t!359758 (toList!5626 lm!2023))))) (extractMap!1894 (t!359758 (Cons!52448 (tuple2!53869 hash!405 lt!1853436) (t!359758 (toList!5626 lm!2023)))))))))

(declare-fun b!4693244 () Bool)

(assert (=> b!4693244 (= e!2927797 (ListMap!4990 Nil!52447))))

(assert (= (and d!1491692 c!802376) b!4693243))

(assert (= (and d!1491692 (not c!802376)) b!4693244))

(declare-fun m!5598455 () Bool)

(assert (=> d!1491692 m!5598455))

(declare-fun m!5598457 () Bool)

(assert (=> d!1491692 m!5598457))

(declare-fun m!5598459 () Bool)

(assert (=> b!4693243 m!5598459))

(assert (=> b!4693243 m!5598459))

(declare-fun m!5598461 () Bool)

(assert (=> b!4693243 m!5598461))

(assert (=> b!4693035 d!1491692))

(declare-fun b!4693256 () Bool)

(declare-fun e!2927803 () List!52571)

(assert (=> b!4693256 (= e!2927803 Nil!52447)))

(declare-fun b!4693253 () Bool)

(declare-fun e!2927802 () List!52571)

(assert (=> b!4693253 (= e!2927802 (t!359757 oldBucket!34))))

(declare-fun b!4693254 () Bool)

(assert (=> b!4693254 (= e!2927802 e!2927803)))

(declare-fun c!802382 () Bool)

(assert (=> b!4693254 (= c!802382 ((_ is Cons!52447) oldBucket!34))))

(declare-fun d!1491694 () Bool)

(declare-fun lt!1853737 () List!52571)

(assert (=> d!1491694 (not (containsKey!3087 lt!1853737 key!4653))))

(assert (=> d!1491694 (= lt!1853737 e!2927802)))

(declare-fun c!802381 () Bool)

(assert (=> d!1491694 (= c!802381 (and ((_ is Cons!52447) oldBucket!34) (= (_1!30227 (h!58702 oldBucket!34)) key!4653)))))

(assert (=> d!1491694 (noDuplicateKeys!1868 oldBucket!34)))

(assert (=> d!1491694 (= (removePairForKey!1463 oldBucket!34 key!4653) lt!1853737)))

(declare-fun b!4693255 () Bool)

(assert (=> b!4693255 (= e!2927803 (Cons!52447 (h!58702 oldBucket!34) (removePairForKey!1463 (t!359757 oldBucket!34) key!4653)))))

(assert (= (and d!1491694 c!802381) b!4693253))

(assert (= (and d!1491694 (not c!802381)) b!4693254))

(assert (= (and b!4693254 c!802382) b!4693255))

(assert (= (and b!4693254 (not c!802382)) b!4693256))

(declare-fun m!5598463 () Bool)

(assert (=> d!1491694 m!5598463))

(assert (=> d!1491694 m!5598005))

(assert (=> b!4693255 m!5598069))

(assert (=> b!4693027 d!1491694))

(declare-fun b!4693260 () Bool)

(declare-fun e!2927805 () List!52571)

(assert (=> b!4693260 (= e!2927805 Nil!52447)))

(declare-fun b!4693257 () Bool)

(declare-fun e!2927804 () List!52571)

(assert (=> b!4693257 (= e!2927804 (t!359757 (t!359757 oldBucket!34)))))

(declare-fun b!4693258 () Bool)

(assert (=> b!4693258 (= e!2927804 e!2927805)))

(declare-fun c!802384 () Bool)

(assert (=> b!4693258 (= c!802384 ((_ is Cons!52447) (t!359757 oldBucket!34)))))

(declare-fun d!1491696 () Bool)

(declare-fun lt!1853738 () List!52571)

(assert (=> d!1491696 (not (containsKey!3087 lt!1853738 key!4653))))

(assert (=> d!1491696 (= lt!1853738 e!2927804)))

(declare-fun c!802383 () Bool)

(assert (=> d!1491696 (= c!802383 (and ((_ is Cons!52447) (t!359757 oldBucket!34)) (= (_1!30227 (h!58702 (t!359757 oldBucket!34))) key!4653)))))

(assert (=> d!1491696 (noDuplicateKeys!1868 (t!359757 oldBucket!34))))

(assert (=> d!1491696 (= (removePairForKey!1463 (t!359757 oldBucket!34) key!4653) lt!1853738)))

(declare-fun b!4693259 () Bool)

(assert (=> b!4693259 (= e!2927805 (Cons!52447 (h!58702 (t!359757 oldBucket!34)) (removePairForKey!1463 (t!359757 (t!359757 oldBucket!34)) key!4653)))))

(assert (= (and d!1491696 c!802383) b!4693257))

(assert (= (and d!1491696 (not c!802383)) b!4693258))

(assert (= (and b!4693258 c!802384) b!4693259))

(assert (= (and b!4693258 (not c!802384)) b!4693260))

(declare-fun m!5598465 () Bool)

(assert (=> d!1491696 m!5598465))

(declare-fun m!5598467 () Bool)

(assert (=> d!1491696 m!5598467))

(declare-fun m!5598469 () Bool)

(assert (=> b!4693259 m!5598469))

(assert (=> b!4693037 d!1491696))

(declare-fun b!4693261 () Bool)

(declare-fun e!2927807 () Unit!124653)

(declare-fun lt!1853746 () Unit!124653)

(assert (=> b!4693261 (= e!2927807 lt!1853746)))

(declare-fun lt!1853739 () Unit!124653)

(assert (=> b!4693261 (= lt!1853739 (lemmaContainsKeyImpliesGetValueByKeyDefined!1691 (toList!5625 lt!1853428) key!4653))))

(assert (=> b!4693261 (isDefined!9368 (getValueByKey!1798 (toList!5625 lt!1853428) key!4653))))

(declare-fun lt!1853744 () Unit!124653)

(assert (=> b!4693261 (= lt!1853744 lt!1853739)))

(assert (=> b!4693261 (= lt!1853746 (lemmaInListThenGetKeysListContains!854 (toList!5625 lt!1853428) key!4653))))

(declare-fun call!328032 () Bool)

(assert (=> b!4693261 call!328032))

(declare-fun b!4693262 () Bool)

(declare-fun e!2927810 () Unit!124653)

(assert (=> b!4693262 (= e!2927807 e!2927810)))

(declare-fun c!802385 () Bool)

(assert (=> b!4693262 (= c!802385 call!328032)))

(declare-fun b!4693263 () Bool)

(declare-fun e!2927809 () Bool)

(assert (=> b!4693263 (= e!2927809 (not (contains!15675 (keys!18736 lt!1853428) key!4653)))))

(declare-fun b!4693264 () Bool)

(declare-fun e!2927808 () Bool)

(declare-fun e!2927811 () Bool)

(assert (=> b!4693264 (= e!2927808 e!2927811)))

(declare-fun res!1980116 () Bool)

(assert (=> b!4693264 (=> (not res!1980116) (not e!2927811))))

(assert (=> b!4693264 (= res!1980116 (isDefined!9368 (getValueByKey!1798 (toList!5625 lt!1853428) key!4653)))))

(declare-fun b!4693265 () Bool)

(declare-fun e!2927806 () List!52573)

(assert (=> b!4693265 (= e!2927806 (keys!18736 lt!1853428))))

(declare-fun b!4693267 () Bool)

(declare-fun Unit!124715 () Unit!124653)

(assert (=> b!4693267 (= e!2927810 Unit!124715)))

(declare-fun b!4693268 () Bool)

(assert (=> b!4693268 (= e!2927811 (contains!15675 (keys!18736 lt!1853428) key!4653))))

(declare-fun b!4693269 () Bool)

(assert (=> b!4693269 false))

(declare-fun lt!1853743 () Unit!124653)

(declare-fun lt!1853742 () Unit!124653)

(assert (=> b!4693269 (= lt!1853743 lt!1853742)))

(assert (=> b!4693269 (containsKey!3089 (toList!5625 lt!1853428) key!4653)))

(assert (=> b!4693269 (= lt!1853742 (lemmaInGetKeysListThenContainsKey!858 (toList!5625 lt!1853428) key!4653))))

(declare-fun Unit!124716 () Unit!124653)

(assert (=> b!4693269 (= e!2927810 Unit!124716)))

(declare-fun bm!328027 () Bool)

(assert (=> bm!328027 (= call!328032 (contains!15675 e!2927806 key!4653))))

(declare-fun c!802386 () Bool)

(declare-fun c!802387 () Bool)

(assert (=> bm!328027 (= c!802386 c!802387)))

(declare-fun d!1491698 () Bool)

(assert (=> d!1491698 e!2927808))

(declare-fun res!1980114 () Bool)

(assert (=> d!1491698 (=> res!1980114 e!2927808)))

(assert (=> d!1491698 (= res!1980114 e!2927809)))

(declare-fun res!1980115 () Bool)

(assert (=> d!1491698 (=> (not res!1980115) (not e!2927809))))

(declare-fun lt!1853741 () Bool)

(assert (=> d!1491698 (= res!1980115 (not lt!1853741))))

(declare-fun lt!1853740 () Bool)

(assert (=> d!1491698 (= lt!1853741 lt!1853740)))

(declare-fun lt!1853745 () Unit!124653)

(assert (=> d!1491698 (= lt!1853745 e!2927807)))

(assert (=> d!1491698 (= c!802387 lt!1853740)))

(assert (=> d!1491698 (= lt!1853740 (containsKey!3089 (toList!5625 lt!1853428) key!4653))))

(assert (=> d!1491698 (= (contains!15670 lt!1853428 key!4653) lt!1853741)))

(declare-fun b!4693266 () Bool)

(assert (=> b!4693266 (= e!2927806 (getKeysList!859 (toList!5625 lt!1853428)))))

(assert (= (and d!1491698 c!802387) b!4693261))

(assert (= (and d!1491698 (not c!802387)) b!4693262))

(assert (= (and b!4693262 c!802385) b!4693269))

(assert (= (and b!4693262 (not c!802385)) b!4693267))

(assert (= (or b!4693261 b!4693262) bm!328027))

(assert (= (and bm!328027 c!802386) b!4693266))

(assert (= (and bm!328027 (not c!802386)) b!4693265))

(assert (= (and d!1491698 res!1980115) b!4693263))

(assert (= (and d!1491698 (not res!1980114)) b!4693264))

(assert (= (and b!4693264 res!1980116) b!4693268))

(declare-fun m!5598471 () Bool)

(assert (=> b!4693264 m!5598471))

(assert (=> b!4693264 m!5598471))

(declare-fun m!5598473 () Bool)

(assert (=> b!4693264 m!5598473))

(declare-fun m!5598475 () Bool)

(assert (=> b!4693268 m!5598475))

(assert (=> b!4693268 m!5598475))

(declare-fun m!5598477 () Bool)

(assert (=> b!4693268 m!5598477))

(declare-fun m!5598479 () Bool)

(assert (=> b!4693269 m!5598479))

(declare-fun m!5598481 () Bool)

(assert (=> b!4693269 m!5598481))

(assert (=> d!1491698 m!5598479))

(declare-fun m!5598483 () Bool)

(assert (=> b!4693261 m!5598483))

(assert (=> b!4693261 m!5598471))

(assert (=> b!4693261 m!5598471))

(assert (=> b!4693261 m!5598473))

(declare-fun m!5598485 () Bool)

(assert (=> b!4693261 m!5598485))

(assert (=> b!4693265 m!5598475))

(declare-fun m!5598487 () Bool)

(assert (=> bm!328027 m!5598487))

(declare-fun m!5598489 () Bool)

(assert (=> b!4693266 m!5598489))

(assert (=> b!4693263 m!5598475))

(assert (=> b!4693263 m!5598475))

(assert (=> b!4693263 m!5598477))

(assert (=> b!4693026 d!1491698))

(declare-fun bs!1088797 () Bool)

(declare-fun d!1491700 () Bool)

(assert (= bs!1088797 (and d!1491700 d!1491636)))

(declare-fun lambda!208039 () Int)

(assert (=> bs!1088797 (= lambda!208039 lambda!208015)))

(declare-fun bs!1088798 () Bool)

(assert (= bs!1088798 (and d!1491700 start!475052)))

(assert (=> bs!1088798 (= lambda!208039 lambda!207967)))

(declare-fun bs!1088799 () Bool)

(assert (= bs!1088799 (and d!1491700 d!1491692)))

(assert (=> bs!1088799 (= lambda!208039 lambda!208038)))

(declare-fun bs!1088800 () Bool)

(assert (= bs!1088800 (and d!1491700 d!1491680)))

(assert (=> bs!1088800 (= lambda!208039 lambda!208029)))

(declare-fun bs!1088801 () Bool)

(assert (= bs!1088801 (and d!1491700 d!1491648)))

(assert (=> bs!1088801 (= lambda!208039 lambda!208020)))

(declare-fun lt!1853747 () ListMap!4989)

(assert (=> d!1491700 (invariantList!1419 (toList!5625 lt!1853747))))

(declare-fun e!2927812 () ListMap!4989)

(assert (=> d!1491700 (= lt!1853747 e!2927812)))

(declare-fun c!802388 () Bool)

(assert (=> d!1491700 (= c!802388 ((_ is Cons!52448) (toList!5626 lm!2023)))))

(assert (=> d!1491700 (forall!11345 (toList!5626 lm!2023) lambda!208039)))

(assert (=> d!1491700 (= (extractMap!1894 (toList!5626 lm!2023)) lt!1853747)))

(declare-fun b!4693270 () Bool)

(assert (=> b!4693270 (= e!2927812 (addToMapMapFromBucket!1300 (_2!30228 (h!58703 (toList!5626 lm!2023))) (extractMap!1894 (t!359758 (toList!5626 lm!2023)))))))

(declare-fun b!4693271 () Bool)

(assert (=> b!4693271 (= e!2927812 (ListMap!4990 Nil!52447))))

(assert (= (and d!1491700 c!802388) b!4693270))

(assert (= (and d!1491700 (not c!802388)) b!4693271))

(declare-fun m!5598491 () Bool)

(assert (=> d!1491700 m!5598491))

(declare-fun m!5598493 () Bool)

(assert (=> d!1491700 m!5598493))

(assert (=> b!4693270 m!5598021))

(assert (=> b!4693270 m!5598021))

(declare-fun m!5598495 () Bool)

(assert (=> b!4693270 m!5598495))

(assert (=> b!4693026 d!1491700))

(declare-fun bs!1088802 () Bool)

(declare-fun d!1491702 () Bool)

(assert (= bs!1088802 (and d!1491702 b!4693121)))

(declare-fun lambda!208042 () Int)

(assert (=> bs!1088802 (not (= lambda!208042 lambda!208007))))

(declare-fun bs!1088803 () Bool)

(assert (= bs!1088803 (and d!1491702 d!1491682)))

(assert (=> bs!1088803 (not (= lambda!208042 lambda!208033))))

(declare-fun bs!1088804 () Bool)

(assert (= bs!1088804 (and d!1491702 b!4693235)))

(assert (=> bs!1088804 (not (= lambda!208042 lambda!208032))))

(declare-fun bs!1088805 () Bool)

(assert (= bs!1088805 (and d!1491702 d!1491684)))

(assert (=> bs!1088805 (not (= lambda!208042 lambda!208037))))

(declare-fun bs!1088806 () Bool)

(assert (= bs!1088806 (and d!1491702 b!4693240)))

(assert (=> bs!1088806 (not (= lambda!208042 lambda!208035))))

(declare-fun bs!1088807 () Bool)

(assert (= bs!1088807 (and d!1491702 b!4693231)))

(assert (=> bs!1088807 (not (= lambda!208042 lambda!208030))))

(declare-fun bs!1088808 () Bool)

(assert (= bs!1088808 (and d!1491702 b!4693117)))

(assert (=> bs!1088808 (not (= lambda!208042 lambda!208006))))

(declare-fun bs!1088809 () Bool)

(assert (= bs!1088809 (and d!1491702 d!1491606)))

(assert (=> bs!1088809 (not (= lambda!208042 lambda!208009))))

(declare-fun bs!1088810 () Bool)

(assert (= bs!1088810 (and d!1491702 d!1491642)))

(assert (=> bs!1088810 (not (= lambda!208042 lambda!208019))))

(assert (=> bs!1088804 (not (= lambda!208042 lambda!208031))))

(assert (=> bs!1088806 (not (= lambda!208042 lambda!208036))))

(declare-fun bs!1088811 () Bool)

(assert (= bs!1088811 (and d!1491702 b!4693142)))

(assert (=> bs!1088811 (not (= lambda!208042 lambda!208017))))

(assert (=> bs!1088802 (not (= lambda!208042 lambda!208008))))

(declare-fun bs!1088812 () Bool)

(assert (= bs!1088812 (and d!1491702 b!4693138)))

(assert (=> bs!1088812 (not (= lambda!208042 lambda!208016))))

(assert (=> bs!1088811 (not (= lambda!208042 lambda!208018))))

(declare-fun bs!1088813 () Bool)

(assert (= bs!1088813 (and d!1491702 b!4693236)))

(assert (=> bs!1088813 (not (= lambda!208042 lambda!208034))))

(assert (=> d!1491702 true))

(assert (=> d!1491702 true))

(assert (=> d!1491702 (= (allKeysSameHash!1694 newBucket!218 hash!405 hashF!1323) (forall!11346 newBucket!218 lambda!208042))))

(declare-fun bs!1088814 () Bool)

(assert (= bs!1088814 d!1491702))

(declare-fun m!5598497 () Bool)

(assert (=> bs!1088814 m!5598497))

(assert (=> b!4693031 d!1491702))

(declare-fun bs!1088815 () Bool)

(declare-fun d!1491704 () Bool)

(assert (= bs!1088815 (and d!1491704 d!1491636)))

(declare-fun lambda!208043 () Int)

(assert (=> bs!1088815 (= lambda!208043 lambda!208015)))

(declare-fun bs!1088816 () Bool)

(assert (= bs!1088816 (and d!1491704 start!475052)))

(assert (=> bs!1088816 (= lambda!208043 lambda!207967)))

(declare-fun bs!1088817 () Bool)

(assert (= bs!1088817 (and d!1491704 d!1491692)))

(assert (=> bs!1088817 (= lambda!208043 lambda!208038)))

(declare-fun bs!1088818 () Bool)

(assert (= bs!1088818 (and d!1491704 d!1491700)))

(assert (=> bs!1088818 (= lambda!208043 lambda!208039)))

(declare-fun bs!1088819 () Bool)

(assert (= bs!1088819 (and d!1491704 d!1491680)))

(assert (=> bs!1088819 (= lambda!208043 lambda!208029)))

(declare-fun bs!1088820 () Bool)

(assert (= bs!1088820 (and d!1491704 d!1491648)))

(assert (=> bs!1088820 (= lambda!208043 lambda!208020)))

(declare-fun lt!1853748 () ListMap!4989)

(assert (=> d!1491704 (invariantList!1419 (toList!5625 lt!1853748))))

(declare-fun e!2927813 () ListMap!4989)

(assert (=> d!1491704 (= lt!1853748 e!2927813)))

(declare-fun c!802389 () Bool)

(assert (=> d!1491704 (= c!802389 ((_ is Cons!52448) (Cons!52448 lt!1853444 lt!1853443)))))

(assert (=> d!1491704 (forall!11345 (Cons!52448 lt!1853444 lt!1853443) lambda!208043)))

(assert (=> d!1491704 (= (extractMap!1894 (Cons!52448 lt!1853444 lt!1853443)) lt!1853748)))

(declare-fun b!4693276 () Bool)

(assert (=> b!4693276 (= e!2927813 (addToMapMapFromBucket!1300 (_2!30228 (h!58703 (Cons!52448 lt!1853444 lt!1853443))) (extractMap!1894 (t!359758 (Cons!52448 lt!1853444 lt!1853443)))))))

(declare-fun b!4693277 () Bool)

(assert (=> b!4693277 (= e!2927813 (ListMap!4990 Nil!52447))))

(assert (= (and d!1491704 c!802389) b!4693276))

(assert (= (and d!1491704 (not c!802389)) b!4693277))

(declare-fun m!5598499 () Bool)

(assert (=> d!1491704 m!5598499))

(declare-fun m!5598501 () Bool)

(assert (=> d!1491704 m!5598501))

(declare-fun m!5598503 () Bool)

(assert (=> b!4693276 m!5598503))

(assert (=> b!4693276 m!5598503))

(declare-fun m!5598505 () Bool)

(assert (=> b!4693276 m!5598505))

(assert (=> b!4693020 d!1491704))

(declare-fun bs!1088821 () Bool)

(declare-fun d!1491706 () Bool)

(assert (= bs!1088821 (and d!1491706 d!1491636)))

(declare-fun lambda!208044 () Int)

(assert (=> bs!1088821 (= lambda!208044 lambda!208015)))

(declare-fun bs!1088822 () Bool)

(assert (= bs!1088822 (and d!1491706 start!475052)))

(assert (=> bs!1088822 (= lambda!208044 lambda!207967)))

(declare-fun bs!1088823 () Bool)

(assert (= bs!1088823 (and d!1491706 d!1491704)))

(assert (=> bs!1088823 (= lambda!208044 lambda!208043)))

(declare-fun bs!1088824 () Bool)

(assert (= bs!1088824 (and d!1491706 d!1491692)))

(assert (=> bs!1088824 (= lambda!208044 lambda!208038)))

(declare-fun bs!1088825 () Bool)

(assert (= bs!1088825 (and d!1491706 d!1491700)))

(assert (=> bs!1088825 (= lambda!208044 lambda!208039)))

(declare-fun bs!1088826 () Bool)

(assert (= bs!1088826 (and d!1491706 d!1491680)))

(assert (=> bs!1088826 (= lambda!208044 lambda!208029)))

(declare-fun bs!1088827 () Bool)

(assert (= bs!1088827 (and d!1491706 d!1491648)))

(assert (=> bs!1088827 (= lambda!208044 lambda!208020)))

(declare-fun lt!1853749 () ListMap!4989)

(assert (=> d!1491706 (invariantList!1419 (toList!5625 lt!1853749))))

(declare-fun e!2927814 () ListMap!4989)

(assert (=> d!1491706 (= lt!1853749 e!2927814)))

(declare-fun c!802390 () Bool)

(assert (=> d!1491706 (= c!802390 ((_ is Cons!52448) (Cons!52448 lt!1853444 (t!359758 (toList!5626 lm!2023)))))))

(assert (=> d!1491706 (forall!11345 (Cons!52448 lt!1853444 (t!359758 (toList!5626 lm!2023))) lambda!208044)))

(assert (=> d!1491706 (= (extractMap!1894 (Cons!52448 lt!1853444 (t!359758 (toList!5626 lm!2023)))) lt!1853749)))

(declare-fun b!4693278 () Bool)

(assert (=> b!4693278 (= e!2927814 (addToMapMapFromBucket!1300 (_2!30228 (h!58703 (Cons!52448 lt!1853444 (t!359758 (toList!5626 lm!2023))))) (extractMap!1894 (t!359758 (Cons!52448 lt!1853444 (t!359758 (toList!5626 lm!2023)))))))))

(declare-fun b!4693279 () Bool)

(assert (=> b!4693279 (= e!2927814 (ListMap!4990 Nil!52447))))

(assert (= (and d!1491706 c!802390) b!4693278))

(assert (= (and d!1491706 (not c!802390)) b!4693279))

(declare-fun m!5598507 () Bool)

(assert (=> d!1491706 m!5598507))

(declare-fun m!5598509 () Bool)

(assert (=> d!1491706 m!5598509))

(declare-fun m!5598511 () Bool)

(assert (=> b!4693278 m!5598511))

(assert (=> b!4693278 m!5598511))

(declare-fun m!5598513 () Bool)

(assert (=> b!4693278 m!5598513))

(assert (=> b!4693020 d!1491706))

(declare-fun bs!1088828 () Bool)

(declare-fun d!1491708 () Bool)

(assert (= bs!1088828 (and d!1491708 d!1491636)))

(declare-fun lambda!208045 () Int)

(assert (=> bs!1088828 (= lambda!208045 lambda!208015)))

(declare-fun bs!1088829 () Bool)

(assert (= bs!1088829 (and d!1491708 start!475052)))

(assert (=> bs!1088829 (= lambda!208045 lambda!207967)))

(declare-fun bs!1088830 () Bool)

(assert (= bs!1088830 (and d!1491708 d!1491704)))

(assert (=> bs!1088830 (= lambda!208045 lambda!208043)))

(declare-fun bs!1088831 () Bool)

(assert (= bs!1088831 (and d!1491708 d!1491692)))

(assert (=> bs!1088831 (= lambda!208045 lambda!208038)))

(declare-fun bs!1088832 () Bool)

(assert (= bs!1088832 (and d!1491708 d!1491700)))

(assert (=> bs!1088832 (= lambda!208045 lambda!208039)))

(declare-fun bs!1088833 () Bool)

(assert (= bs!1088833 (and d!1491708 d!1491680)))

(assert (=> bs!1088833 (= lambda!208045 lambda!208029)))

(declare-fun bs!1088834 () Bool)

(assert (= bs!1088834 (and d!1491708 d!1491648)))

(assert (=> bs!1088834 (= lambda!208045 lambda!208020)))

(declare-fun bs!1088835 () Bool)

(assert (= bs!1088835 (and d!1491708 d!1491706)))

(assert (=> bs!1088835 (= lambda!208045 lambda!208044)))

(declare-fun lt!1853750 () ListMap!4989)

(assert (=> d!1491708 (invariantList!1419 (toList!5625 lt!1853750))))

(declare-fun e!2927815 () ListMap!4989)

(assert (=> d!1491708 (= lt!1853750 e!2927815)))

(declare-fun c!802391 () Bool)

(assert (=> d!1491708 (= c!802391 ((_ is Cons!52448) (Cons!52448 lt!1853452 lt!1853443)))))

(assert (=> d!1491708 (forall!11345 (Cons!52448 lt!1853452 lt!1853443) lambda!208045)))

(assert (=> d!1491708 (= (extractMap!1894 (Cons!52448 lt!1853452 lt!1853443)) lt!1853750)))

(declare-fun b!4693280 () Bool)

(assert (=> b!4693280 (= e!2927815 (addToMapMapFromBucket!1300 (_2!30228 (h!58703 (Cons!52448 lt!1853452 lt!1853443))) (extractMap!1894 (t!359758 (Cons!52448 lt!1853452 lt!1853443)))))))

(declare-fun b!4693281 () Bool)

(assert (=> b!4693281 (= e!2927815 (ListMap!4990 Nil!52447))))

(assert (= (and d!1491708 c!802391) b!4693280))

(assert (= (and d!1491708 (not c!802391)) b!4693281))

(declare-fun m!5598515 () Bool)

(assert (=> d!1491708 m!5598515))

(declare-fun m!5598517 () Bool)

(assert (=> d!1491708 m!5598517))

(declare-fun m!5598519 () Bool)

(assert (=> b!4693280 m!5598519))

(assert (=> b!4693280 m!5598519))

(declare-fun m!5598521 () Bool)

(assert (=> b!4693280 m!5598521))

(assert (=> b!4693020 d!1491708))

(declare-fun d!1491710 () Bool)

(assert (=> d!1491710 (= (eq!1027 (extractMap!1894 (Cons!52448 lt!1853444 lt!1853443)) (-!672 (extractMap!1894 (Cons!52448 lt!1853452 lt!1853443)) key!4653)) (= (content!9187 (toList!5625 (extractMap!1894 (Cons!52448 lt!1853444 lt!1853443)))) (content!9187 (toList!5625 (-!672 (extractMap!1894 (Cons!52448 lt!1853452 lt!1853443)) key!4653)))))))

(declare-fun bs!1088836 () Bool)

(assert (= bs!1088836 d!1491710))

(declare-fun m!5598523 () Bool)

(assert (=> bs!1088836 m!5598523))

(declare-fun m!5598525 () Bool)

(assert (=> bs!1088836 m!5598525))

(assert (=> b!4693020 d!1491710))

(declare-fun d!1491712 () Bool)

(assert (=> d!1491712 (= (tail!8630 lt!1853451) (t!359758 lt!1853451))))

(assert (=> b!4693020 d!1491712))

(declare-fun bs!1088837 () Bool)

(declare-fun d!1491714 () Bool)

(assert (= bs!1088837 (and d!1491714 d!1491636)))

(declare-fun lambda!208048 () Int)

(assert (=> bs!1088837 (= lambda!208048 lambda!208015)))

(declare-fun bs!1088838 () Bool)

(assert (= bs!1088838 (and d!1491714 start!475052)))

(assert (=> bs!1088838 (= lambda!208048 lambda!207967)))

(declare-fun bs!1088839 () Bool)

(assert (= bs!1088839 (and d!1491714 d!1491708)))

(assert (=> bs!1088839 (= lambda!208048 lambda!208045)))

(declare-fun bs!1088840 () Bool)

(assert (= bs!1088840 (and d!1491714 d!1491704)))

(assert (=> bs!1088840 (= lambda!208048 lambda!208043)))

(declare-fun bs!1088841 () Bool)

(assert (= bs!1088841 (and d!1491714 d!1491692)))

(assert (=> bs!1088841 (= lambda!208048 lambda!208038)))

(declare-fun bs!1088842 () Bool)

(assert (= bs!1088842 (and d!1491714 d!1491700)))

(assert (=> bs!1088842 (= lambda!208048 lambda!208039)))

(declare-fun bs!1088843 () Bool)

(assert (= bs!1088843 (and d!1491714 d!1491680)))

(assert (=> bs!1088843 (= lambda!208048 lambda!208029)))

(declare-fun bs!1088844 () Bool)

(assert (= bs!1088844 (and d!1491714 d!1491648)))

(assert (=> bs!1088844 (= lambda!208048 lambda!208020)))

(declare-fun bs!1088845 () Bool)

(assert (= bs!1088845 (and d!1491714 d!1491706)))

(assert (=> bs!1088845 (= lambda!208048 lambda!208044)))

(assert (=> d!1491714 (eq!1027 (extractMap!1894 (Cons!52448 (tuple2!53869 hash!405 lt!1853449) (tail!8630 (toList!5626 lt!1853442)))) (-!672 (extractMap!1894 (Cons!52448 (tuple2!53869 hash!405 (t!359757 oldBucket!34)) (tail!8630 (toList!5626 lt!1853442)))) key!4653))))

(declare-fun lt!1853753 () Unit!124653)

(declare-fun choose!32660 (ListLongMap!4155 (_ BitVec 64) List!52571 List!52571 K!13820 Hashable!6237) Unit!124653)

(assert (=> d!1491714 (= lt!1853753 (choose!32660 lt!1853442 hash!405 (t!359757 oldBucket!34) lt!1853449 key!4653 hashF!1323))))

(assert (=> d!1491714 (forall!11345 (toList!5626 lt!1853442) lambda!208048)))

(assert (=> d!1491714 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!42 lt!1853442 hash!405 (t!359757 oldBucket!34) lt!1853449 key!4653 hashF!1323) lt!1853753)))

(declare-fun bs!1088846 () Bool)

(assert (= bs!1088846 d!1491714))

(declare-fun m!5598527 () Bool)

(assert (=> bs!1088846 m!5598527))

(declare-fun m!5598529 () Bool)

(assert (=> bs!1088846 m!5598529))

(declare-fun m!5598531 () Bool)

(assert (=> bs!1088846 m!5598531))

(declare-fun m!5598533 () Bool)

(assert (=> bs!1088846 m!5598533))

(declare-fun m!5598535 () Bool)

(assert (=> bs!1088846 m!5598535))

(assert (=> bs!1088846 m!5598531))

(declare-fun m!5598537 () Bool)

(assert (=> bs!1088846 m!5598537))

(assert (=> bs!1088846 m!5598535))

(declare-fun m!5598539 () Bool)

(assert (=> bs!1088846 m!5598539))

(assert (=> bs!1088846 m!5598529))

(assert (=> b!4693020 d!1491714))

(declare-fun d!1491716 () Bool)

(declare-fun res!1980121 () Bool)

(declare-fun e!2927820 () Bool)

(assert (=> d!1491716 (=> res!1980121 e!2927820)))

(assert (=> d!1491716 (= res!1980121 ((_ is Nil!52448) lt!1853451))))

(assert (=> d!1491716 (= (forall!11345 lt!1853451 lambda!207967) e!2927820)))

(declare-fun b!4693286 () Bool)

(declare-fun e!2927821 () Bool)

(assert (=> b!4693286 (= e!2927820 e!2927821)))

(declare-fun res!1980122 () Bool)

(assert (=> b!4693286 (=> (not res!1980122) (not e!2927821))))

(declare-fun dynLambda!21723 (Int tuple2!53868) Bool)

(assert (=> b!4693286 (= res!1980122 (dynLambda!21723 lambda!207967 (h!58703 lt!1853451)))))

(declare-fun b!4693287 () Bool)

(assert (=> b!4693287 (= e!2927821 (forall!11345 (t!359758 lt!1853451) lambda!207967))))

(assert (= (and d!1491716 (not res!1980121)) b!4693286))

(assert (= (and b!4693286 res!1980122) b!4693287))

(declare-fun b_lambda!177089 () Bool)

(assert (=> (not b_lambda!177089) (not b!4693286)))

(declare-fun m!5598541 () Bool)

(assert (=> b!4693286 m!5598541))

(declare-fun m!5598543 () Bool)

(assert (=> b!4693287 m!5598543))

(assert (=> b!4693020 d!1491716))

(declare-fun d!1491718 () Bool)

(declare-fun e!2927824 () Bool)

(assert (=> d!1491718 e!2927824))

(declare-fun res!1980125 () Bool)

(assert (=> d!1491718 (=> (not res!1980125) (not e!2927824))))

(declare-fun lt!1853756 () ListMap!4989)

(assert (=> d!1491718 (= res!1980125 (not (contains!15670 lt!1853756 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!341 (List!52571 K!13820) List!52571)

(assert (=> d!1491718 (= lt!1853756 (ListMap!4990 (removePresrvNoDuplicatedKeys!341 (toList!5625 (extractMap!1894 (Cons!52448 lt!1853452 lt!1853443))) key!4653)))))

(assert (=> d!1491718 (= (-!672 (extractMap!1894 (Cons!52448 lt!1853452 lt!1853443)) key!4653) lt!1853756)))

(declare-fun b!4693290 () Bool)

(declare-fun content!9191 (List!52573) (InoxSet K!13820))

(assert (=> b!4693290 (= e!2927824 (= ((_ map and) (content!9191 (keys!18736 (extractMap!1894 (Cons!52448 lt!1853452 lt!1853443)))) ((_ map not) (store ((as const (Array K!13820 Bool)) false) key!4653 true))) (content!9191 (keys!18736 lt!1853756))))))

(assert (= (and d!1491718 res!1980125) b!4693290))

(declare-fun m!5598545 () Bool)

(assert (=> d!1491718 m!5598545))

(declare-fun m!5598547 () Bool)

(assert (=> d!1491718 m!5598547))

(declare-fun m!5598549 () Bool)

(assert (=> b!4693290 m!5598549))

(declare-fun m!5598551 () Bool)

(assert (=> b!4693290 m!5598551))

(declare-fun m!5598553 () Bool)

(assert (=> b!4693290 m!5598553))

(assert (=> b!4693290 m!5597979))

(assert (=> b!4693290 m!5598551))

(declare-fun m!5598555 () Bool)

(assert (=> b!4693290 m!5598555))

(assert (=> b!4693290 m!5598555))

(declare-fun m!5598557 () Bool)

(assert (=> b!4693290 m!5598557))

(assert (=> b!4693020 d!1491718))

(declare-fun d!1491720 () Bool)

(declare-fun hash!4097 (Hashable!6237 K!13820) (_ BitVec 64))

(assert (=> d!1491720 (= (hash!4093 hashF!1323 key!4653) (hash!4097 hashF!1323 key!4653))))

(declare-fun bs!1088847 () Bool)

(assert (= bs!1088847 d!1491720))

(declare-fun m!5598559 () Bool)

(assert (=> bs!1088847 m!5598559))

(assert (=> b!4693030 d!1491720))

(declare-fun bs!1088848 () Bool)

(declare-fun d!1491722 () Bool)

(assert (= bs!1088848 (and d!1491722 d!1491714)))

(declare-fun lambda!208051 () Int)

(assert (=> bs!1088848 (not (= lambda!208051 lambda!208048))))

(declare-fun bs!1088849 () Bool)

(assert (= bs!1088849 (and d!1491722 d!1491636)))

(assert (=> bs!1088849 (not (= lambda!208051 lambda!208015))))

(declare-fun bs!1088850 () Bool)

(assert (= bs!1088850 (and d!1491722 start!475052)))

(assert (=> bs!1088850 (not (= lambda!208051 lambda!207967))))

(declare-fun bs!1088851 () Bool)

(assert (= bs!1088851 (and d!1491722 d!1491708)))

(assert (=> bs!1088851 (not (= lambda!208051 lambda!208045))))

(declare-fun bs!1088852 () Bool)

(assert (= bs!1088852 (and d!1491722 d!1491704)))

(assert (=> bs!1088852 (not (= lambda!208051 lambda!208043))))

(declare-fun bs!1088853 () Bool)

(assert (= bs!1088853 (and d!1491722 d!1491692)))

(assert (=> bs!1088853 (not (= lambda!208051 lambda!208038))))

(declare-fun bs!1088854 () Bool)

(assert (= bs!1088854 (and d!1491722 d!1491700)))

(assert (=> bs!1088854 (not (= lambda!208051 lambda!208039))))

(declare-fun bs!1088855 () Bool)

(assert (= bs!1088855 (and d!1491722 d!1491680)))

(assert (=> bs!1088855 (not (= lambda!208051 lambda!208029))))

(declare-fun bs!1088856 () Bool)

(assert (= bs!1088856 (and d!1491722 d!1491648)))

(assert (=> bs!1088856 (not (= lambda!208051 lambda!208020))))

(declare-fun bs!1088857 () Bool)

(assert (= bs!1088857 (and d!1491722 d!1491706)))

(assert (=> bs!1088857 (not (= lambda!208051 lambda!208044))))

(assert (=> d!1491722 true))

(assert (=> d!1491722 (= (allKeysSameHashInMap!1782 lm!2023 hashF!1323) (forall!11345 (toList!5626 lm!2023) lambda!208051))))

(declare-fun bs!1088858 () Bool)

(assert (= bs!1088858 d!1491722))

(declare-fun m!5598561 () Bool)

(assert (=> bs!1088858 m!5598561))

(assert (=> b!4693019 d!1491722))

(declare-fun d!1491724 () Bool)

(declare-fun res!1980130 () Bool)

(declare-fun e!2927831 () Bool)

(assert (=> d!1491724 (=> res!1980130 e!2927831)))

(assert (=> d!1491724 (= res!1980130 (not ((_ is Cons!52447) oldBucket!34)))))

(assert (=> d!1491724 (= (noDuplicateKeys!1868 oldBucket!34) e!2927831)))

(declare-fun b!4693301 () Bool)

(declare-fun e!2927832 () Bool)

(assert (=> b!4693301 (= e!2927831 e!2927832)))

(declare-fun res!1980131 () Bool)

(assert (=> b!4693301 (=> (not res!1980131) (not e!2927832))))

(assert (=> b!4693301 (= res!1980131 (not (containsKey!3087 (t!359757 oldBucket!34) (_1!30227 (h!58702 oldBucket!34)))))))

(declare-fun b!4693302 () Bool)

(assert (=> b!4693302 (= e!2927832 (noDuplicateKeys!1868 (t!359757 oldBucket!34)))))

(assert (= (and d!1491724 (not res!1980130)) b!4693301))

(assert (= (and b!4693301 res!1980131) b!4693302))

(declare-fun m!5598563 () Bool)

(assert (=> b!4693301 m!5598563))

(assert (=> b!4693302 m!5598467))

(assert (=> b!4693029 d!1491724))

(declare-fun bs!1088859 () Bool)

(declare-fun b!4693303 () Bool)

(assert (= bs!1088859 (and b!4693303 b!4693121)))

(declare-fun lambda!208058 () Int)

(assert (=> bs!1088859 (= lambda!208058 lambda!208007)))

(declare-fun bs!1088860 () Bool)

(assert (= bs!1088860 (and b!4693303 d!1491682)))

(assert (=> bs!1088860 (= (= lt!1853429 lt!1853697) (= lambda!208058 lambda!208033))))

(declare-fun bs!1088861 () Bool)

(assert (= bs!1088861 (and b!4693303 b!4693235)))

(assert (=> bs!1088861 (= (= lt!1853429 lt!1853702) (= lambda!208058 lambda!208032))))

(declare-fun bs!1088862 () Bool)

(assert (= bs!1088862 (and b!4693303 d!1491684)))

(assert (=> bs!1088862 (= (= lt!1853429 lt!1853718) (= lambda!208058 lambda!208037))))

(declare-fun bs!1088863 () Bool)

(assert (= bs!1088863 (and b!4693303 b!4693240)))

(assert (=> bs!1088863 (= lambda!208058 lambda!208035)))

(declare-fun bs!1088864 () Bool)

(assert (= bs!1088864 (and b!4693303 b!4693231)))

(assert (=> bs!1088864 (= lambda!208058 lambda!208030)))

(declare-fun bs!1088865 () Bool)

(assert (= bs!1088865 (and b!4693303 b!4693117)))

(assert (=> bs!1088865 (= lambda!208058 lambda!208006)))

(declare-fun bs!1088866 () Bool)

(assert (= bs!1088866 (and b!4693303 d!1491606)))

(assert (=> bs!1088866 (= (= lt!1853429 lt!1853571) (= lambda!208058 lambda!208009))))

(declare-fun bs!1088867 () Bool)

(assert (= bs!1088867 (and b!4693303 d!1491642)))

(assert (=> bs!1088867 (= (= lt!1853429 lt!1853607) (= lambda!208058 lambda!208019))))

(assert (=> bs!1088861 (= lambda!208058 lambda!208031)))

(assert (=> bs!1088863 (= (= lt!1853429 lt!1853723) (= lambda!208058 lambda!208036))))

(declare-fun bs!1088868 () Bool)

(assert (= bs!1088868 (and b!4693303 b!4693142)))

(assert (=> bs!1088868 (= lambda!208058 lambda!208017)))

(assert (=> bs!1088859 (= (= lt!1853429 lt!1853576) (= lambda!208058 lambda!208008))))

(declare-fun bs!1088869 () Bool)

(assert (= bs!1088869 (and b!4693303 b!4693138)))

(assert (=> bs!1088869 (= lambda!208058 lambda!208016)))

(declare-fun bs!1088870 () Bool)

(assert (= bs!1088870 (and b!4693303 d!1491702)))

(assert (=> bs!1088870 (not (= lambda!208058 lambda!208042))))

(assert (=> bs!1088868 (= (= lt!1853429 lt!1853612) (= lambda!208058 lambda!208018))))

(declare-fun bs!1088871 () Bool)

(assert (= bs!1088871 (and b!4693303 b!4693236)))

(assert (=> bs!1088871 (= lambda!208058 lambda!208034)))

(assert (=> b!4693303 true))

(declare-fun bs!1088872 () Bool)

(declare-fun b!4693307 () Bool)

(assert (= bs!1088872 (and b!4693307 b!4693121)))

(declare-fun lambda!208063 () Int)

(assert (=> bs!1088872 (= lambda!208063 lambda!208007)))

(declare-fun bs!1088873 () Bool)

(assert (= bs!1088873 (and b!4693307 d!1491682)))

(assert (=> bs!1088873 (= (= lt!1853429 lt!1853697) (= lambda!208063 lambda!208033))))

(declare-fun bs!1088874 () Bool)

(assert (= bs!1088874 (and b!4693307 b!4693235)))

(assert (=> bs!1088874 (= (= lt!1853429 lt!1853702) (= lambda!208063 lambda!208032))))

(declare-fun bs!1088875 () Bool)

(assert (= bs!1088875 (and b!4693307 d!1491684)))

(assert (=> bs!1088875 (= (= lt!1853429 lt!1853718) (= lambda!208063 lambda!208037))))

(declare-fun bs!1088876 () Bool)

(assert (= bs!1088876 (and b!4693307 b!4693240)))

(assert (=> bs!1088876 (= lambda!208063 lambda!208035)))

(declare-fun bs!1088877 () Bool)

(assert (= bs!1088877 (and b!4693307 b!4693231)))

(assert (=> bs!1088877 (= lambda!208063 lambda!208030)))

(declare-fun bs!1088878 () Bool)

(assert (= bs!1088878 (and b!4693307 b!4693117)))

(assert (=> bs!1088878 (= lambda!208063 lambda!208006)))

(declare-fun bs!1088879 () Bool)

(assert (= bs!1088879 (and b!4693307 b!4693303)))

(assert (=> bs!1088879 (= lambda!208063 lambda!208058)))

(declare-fun bs!1088880 () Bool)

(assert (= bs!1088880 (and b!4693307 d!1491606)))

(assert (=> bs!1088880 (= (= lt!1853429 lt!1853571) (= lambda!208063 lambda!208009))))

(declare-fun bs!1088881 () Bool)

(assert (= bs!1088881 (and b!4693307 d!1491642)))

(assert (=> bs!1088881 (= (= lt!1853429 lt!1853607) (= lambda!208063 lambda!208019))))

(assert (=> bs!1088874 (= lambda!208063 lambda!208031)))

(assert (=> bs!1088876 (= (= lt!1853429 lt!1853723) (= lambda!208063 lambda!208036))))

(declare-fun bs!1088882 () Bool)

(assert (= bs!1088882 (and b!4693307 b!4693142)))

(assert (=> bs!1088882 (= lambda!208063 lambda!208017)))

(assert (=> bs!1088872 (= (= lt!1853429 lt!1853576) (= lambda!208063 lambda!208008))))

(declare-fun bs!1088883 () Bool)

(assert (= bs!1088883 (and b!4693307 b!4693138)))

(assert (=> bs!1088883 (= lambda!208063 lambda!208016)))

(declare-fun bs!1088884 () Bool)

(assert (= bs!1088884 (and b!4693307 d!1491702)))

(assert (=> bs!1088884 (not (= lambda!208063 lambda!208042))))

(assert (=> bs!1088882 (= (= lt!1853429 lt!1853612) (= lambda!208063 lambda!208018))))

(declare-fun bs!1088885 () Bool)

(assert (= bs!1088885 (and b!4693307 b!4693236)))

(assert (=> bs!1088885 (= lambda!208063 lambda!208034)))

(assert (=> b!4693307 true))

(declare-fun lt!1853788 () ListMap!4989)

(declare-fun lambda!208068 () Int)

(assert (=> bs!1088872 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208007))))

(assert (=> bs!1088873 (= (= lt!1853788 lt!1853697) (= lambda!208068 lambda!208033))))

(assert (=> bs!1088874 (= (= lt!1853788 lt!1853702) (= lambda!208068 lambda!208032))))

(assert (=> bs!1088875 (= (= lt!1853788 lt!1853718) (= lambda!208068 lambda!208037))))

(assert (=> bs!1088876 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208035))))

(assert (=> bs!1088877 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208030))))

(assert (=> bs!1088878 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208006))))

(assert (=> bs!1088879 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208058))))

(assert (=> bs!1088880 (= (= lt!1853788 lt!1853571) (= lambda!208068 lambda!208009))))

(assert (=> bs!1088881 (= (= lt!1853788 lt!1853607) (= lambda!208068 lambda!208019))))

(assert (=> bs!1088876 (= (= lt!1853788 lt!1853723) (= lambda!208068 lambda!208036))))

(assert (=> bs!1088882 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208017))))

(assert (=> bs!1088872 (= (= lt!1853788 lt!1853576) (= lambda!208068 lambda!208008))))

(assert (=> bs!1088883 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208016))))

(assert (=> bs!1088884 (not (= lambda!208068 lambda!208042))))

(assert (=> bs!1088882 (= (= lt!1853788 lt!1853612) (= lambda!208068 lambda!208018))))

(assert (=> bs!1088885 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208034))))

(assert (=> b!4693307 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208063))))

(assert (=> bs!1088874 (= (= lt!1853788 lt!1853429) (= lambda!208068 lambda!208031))))

(assert (=> b!4693307 true))

(declare-fun bs!1088886 () Bool)

(declare-fun d!1491726 () Bool)

(assert (= bs!1088886 (and d!1491726 b!4693121)))

(declare-fun lambda!208075 () Int)

(declare-fun lt!1853783 () ListMap!4989)

(assert (=> bs!1088886 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208007))))

(declare-fun bs!1088887 () Bool)

(assert (= bs!1088887 (and d!1491726 d!1491682)))

(assert (=> bs!1088887 (= (= lt!1853783 lt!1853697) (= lambda!208075 lambda!208033))))

(declare-fun bs!1088888 () Bool)

(assert (= bs!1088888 (and d!1491726 b!4693235)))

(assert (=> bs!1088888 (= (= lt!1853783 lt!1853702) (= lambda!208075 lambda!208032))))

(declare-fun bs!1088889 () Bool)

(assert (= bs!1088889 (and d!1491726 d!1491684)))

(assert (=> bs!1088889 (= (= lt!1853783 lt!1853718) (= lambda!208075 lambda!208037))))

(declare-fun bs!1088890 () Bool)

(assert (= bs!1088890 (and d!1491726 b!4693240)))

(assert (=> bs!1088890 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208035))))

(declare-fun bs!1088891 () Bool)

(assert (= bs!1088891 (and d!1491726 b!4693231)))

(assert (=> bs!1088891 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208030))))

(declare-fun bs!1088892 () Bool)

(assert (= bs!1088892 (and d!1491726 b!4693117)))

(assert (=> bs!1088892 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208006))))

(declare-fun bs!1088893 () Bool)

(assert (= bs!1088893 (and d!1491726 b!4693303)))

(assert (=> bs!1088893 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208058))))

(declare-fun bs!1088894 () Bool)

(assert (= bs!1088894 (and d!1491726 d!1491606)))

(assert (=> bs!1088894 (= (= lt!1853783 lt!1853571) (= lambda!208075 lambda!208009))))

(declare-fun bs!1088895 () Bool)

(assert (= bs!1088895 (and d!1491726 d!1491642)))

(assert (=> bs!1088895 (= (= lt!1853783 lt!1853607) (= lambda!208075 lambda!208019))))

(assert (=> bs!1088890 (= (= lt!1853783 lt!1853723) (= lambda!208075 lambda!208036))))

(assert (=> bs!1088886 (= (= lt!1853783 lt!1853576) (= lambda!208075 lambda!208008))))

(declare-fun bs!1088896 () Bool)

(assert (= bs!1088896 (and d!1491726 b!4693138)))

(assert (=> bs!1088896 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208016))))

(declare-fun bs!1088897 () Bool)

(assert (= bs!1088897 (and d!1491726 d!1491702)))

(assert (=> bs!1088897 (not (= lambda!208075 lambda!208042))))

(declare-fun bs!1088898 () Bool)

(assert (= bs!1088898 (and d!1491726 b!4693142)))

(assert (=> bs!1088898 (= (= lt!1853783 lt!1853612) (= lambda!208075 lambda!208018))))

(declare-fun bs!1088899 () Bool)

(assert (= bs!1088899 (and d!1491726 b!4693236)))

(assert (=> bs!1088899 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208034))))

(declare-fun bs!1088900 () Bool)

(assert (= bs!1088900 (and d!1491726 b!4693307)))

(assert (=> bs!1088900 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208063))))

(assert (=> bs!1088888 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208031))))

(assert (=> bs!1088898 (= (= lt!1853783 lt!1853429) (= lambda!208075 lambda!208017))))

(assert (=> bs!1088900 (= (= lt!1853783 lt!1853788) (= lambda!208075 lambda!208068))))

(assert (=> d!1491726 true))

(declare-fun bm!328028 () Bool)

(declare-fun call!328033 () Bool)

(declare-fun c!802394 () Bool)

(assert (=> bm!328028 (= call!328033 (forall!11346 (ite c!802394 (toList!5625 lt!1853429) (_2!30228 (h!58703 (toList!5626 lm!2023)))) (ite c!802394 lambda!208058 lambda!208068)))))

(declare-fun e!2927834 () ListMap!4989)

(assert (=> b!4693303 (= e!2927834 lt!1853429)))

(declare-fun lt!1853779 () Unit!124653)

(declare-fun call!328034 () Unit!124653)

(assert (=> b!4693303 (= lt!1853779 call!328034)))

(declare-fun call!328035 () Bool)

(assert (=> b!4693303 call!328035))

(declare-fun lt!1853789 () Unit!124653)

(assert (=> b!4693303 (= lt!1853789 lt!1853779)))

(assert (=> b!4693303 call!328033))

(declare-fun lt!1853782 () Unit!124653)

(declare-fun Unit!124730 () Unit!124653)

(assert (=> b!4693303 (= lt!1853782 Unit!124730)))

(declare-fun b!4693304 () Bool)

(declare-fun e!2927833 () Bool)

(assert (=> b!4693304 (= e!2927833 (forall!11346 (toList!5625 lt!1853429) lambda!208068))))

(declare-fun b!4693305 () Bool)

(declare-fun e!2927835 () Bool)

(assert (=> b!4693305 (= e!2927835 (invariantList!1419 (toList!5625 lt!1853783)))))

(declare-fun bm!328029 () Bool)

(assert (=> bm!328029 (= call!328034 (lemmaContainsAllItsOwnKeys!707 lt!1853429))))

(assert (=> d!1491726 e!2927835))

(declare-fun res!1980134 () Bool)

(assert (=> d!1491726 (=> (not res!1980134) (not e!2927835))))

(assert (=> d!1491726 (= res!1980134 (forall!11346 (_2!30228 (h!58703 (toList!5626 lm!2023))) lambda!208075))))

(assert (=> d!1491726 (= lt!1853783 e!2927834)))

(assert (=> d!1491726 (= c!802394 ((_ is Nil!52447) (_2!30228 (h!58703 (toList!5626 lm!2023)))))))

(assert (=> d!1491726 (noDuplicateKeys!1868 (_2!30228 (h!58703 (toList!5626 lm!2023))))))

(assert (=> d!1491726 (= (addToMapMapFromBucket!1300 (_2!30228 (h!58703 (toList!5626 lm!2023))) lt!1853429) lt!1853783)))

(declare-fun bm!328030 () Bool)

(declare-fun lt!1853775 () ListMap!4989)

(assert (=> bm!328030 (= call!328035 (forall!11346 (ite c!802394 (toList!5625 lt!1853429) (toList!5625 lt!1853775)) (ite c!802394 lambda!208058 lambda!208068)))))

(declare-fun b!4693306 () Bool)

(declare-fun res!1980132 () Bool)

(assert (=> b!4693306 (=> (not res!1980132) (not e!2927835))))

(assert (=> b!4693306 (= res!1980132 (forall!11346 (toList!5625 lt!1853429) lambda!208075))))

(assert (=> b!4693307 (= e!2927834 lt!1853788)))

(assert (=> b!4693307 (= lt!1853775 (+!2152 lt!1853429 (h!58702 (_2!30228 (h!58703 (toList!5626 lm!2023))))))))

(assert (=> b!4693307 (= lt!1853788 (addToMapMapFromBucket!1300 (t!359757 (_2!30228 (h!58703 (toList!5626 lm!2023)))) (+!2152 lt!1853429 (h!58702 (_2!30228 (h!58703 (toList!5626 lm!2023)))))))))

(declare-fun lt!1853777 () Unit!124653)

(assert (=> b!4693307 (= lt!1853777 call!328034)))

(assert (=> b!4693307 (forall!11346 (toList!5625 lt!1853429) lambda!208063)))

(declare-fun lt!1853790 () Unit!124653)

(assert (=> b!4693307 (= lt!1853790 lt!1853777)))

(assert (=> b!4693307 call!328035))

(declare-fun lt!1853791 () Unit!124653)

(declare-fun Unit!124731 () Unit!124653)

(assert (=> b!4693307 (= lt!1853791 Unit!124731)))

(assert (=> b!4693307 (forall!11346 (t!359757 (_2!30228 (h!58703 (toList!5626 lm!2023)))) lambda!208068)))

(declare-fun lt!1853792 () Unit!124653)

(declare-fun Unit!124732 () Unit!124653)

(assert (=> b!4693307 (= lt!1853792 Unit!124732)))

(declare-fun lt!1853785 () Unit!124653)

(declare-fun Unit!124733 () Unit!124653)

(assert (=> b!4693307 (= lt!1853785 Unit!124733)))

(declare-fun lt!1853778 () Unit!124653)

(assert (=> b!4693307 (= lt!1853778 (forallContained!3453 (toList!5625 lt!1853775) lambda!208068 (h!58702 (_2!30228 (h!58703 (toList!5626 lm!2023))))))))

(assert (=> b!4693307 (contains!15670 lt!1853775 (_1!30227 (h!58702 (_2!30228 (h!58703 (toList!5626 lm!2023))))))))

(declare-fun lt!1853774 () Unit!124653)

(declare-fun Unit!124734 () Unit!124653)

(assert (=> b!4693307 (= lt!1853774 Unit!124734)))

(assert (=> b!4693307 (contains!15670 lt!1853788 (_1!30227 (h!58702 (_2!30228 (h!58703 (toList!5626 lm!2023))))))))

(declare-fun lt!1853793 () Unit!124653)

(declare-fun Unit!124735 () Unit!124653)

(assert (=> b!4693307 (= lt!1853793 Unit!124735)))

(assert (=> b!4693307 call!328033))

(declare-fun lt!1853776 () Unit!124653)

(declare-fun Unit!124736 () Unit!124653)

(assert (=> b!4693307 (= lt!1853776 Unit!124736)))

(assert (=> b!4693307 (forall!11346 (toList!5625 lt!1853775) lambda!208068)))

(declare-fun lt!1853787 () Unit!124653)

(declare-fun Unit!124737 () Unit!124653)

(assert (=> b!4693307 (= lt!1853787 Unit!124737)))

(declare-fun lt!1853780 () Unit!124653)

(declare-fun Unit!124738 () Unit!124653)

(assert (=> b!4693307 (= lt!1853780 Unit!124738)))

(declare-fun lt!1853786 () Unit!124653)

(assert (=> b!4693307 (= lt!1853786 (addForallContainsKeyThenBeforeAdding!706 lt!1853429 lt!1853788 (_1!30227 (h!58702 (_2!30228 (h!58703 (toList!5626 lm!2023))))) (_2!30227 (h!58702 (_2!30228 (h!58703 (toList!5626 lm!2023)))))))))

(assert (=> b!4693307 (forall!11346 (toList!5625 lt!1853429) lambda!208068)))

(declare-fun lt!1853784 () Unit!124653)

(assert (=> b!4693307 (= lt!1853784 lt!1853786)))

(assert (=> b!4693307 (forall!11346 (toList!5625 lt!1853429) lambda!208068)))

(declare-fun lt!1853781 () Unit!124653)

(declare-fun Unit!124739 () Unit!124653)

(assert (=> b!4693307 (= lt!1853781 Unit!124739)))

(declare-fun res!1980133 () Bool)

(assert (=> b!4693307 (= res!1980133 (forall!11346 (_2!30228 (h!58703 (toList!5626 lm!2023))) lambda!208068))))

(assert (=> b!4693307 (=> (not res!1980133) (not e!2927833))))

(assert (=> b!4693307 e!2927833))

(declare-fun lt!1853773 () Unit!124653)

(declare-fun Unit!124740 () Unit!124653)

(assert (=> b!4693307 (= lt!1853773 Unit!124740)))

(assert (= (and d!1491726 c!802394) b!4693303))

(assert (= (and d!1491726 (not c!802394)) b!4693307))

(assert (= (and b!4693307 res!1980133) b!4693304))

(assert (= (or b!4693303 b!4693307) bm!328029))

(assert (= (or b!4693303 b!4693307) bm!328028))

(assert (= (or b!4693303 b!4693307) bm!328030))

(assert (= (and d!1491726 res!1980134) b!4693306))

(assert (= (and b!4693306 res!1980132) b!4693305))

(declare-fun m!5598565 () Bool)

(assert (=> b!4693306 m!5598565))

(declare-fun m!5598567 () Bool)

(assert (=> d!1491726 m!5598567))

(declare-fun m!5598569 () Bool)

(assert (=> d!1491726 m!5598569))

(declare-fun m!5598571 () Bool)

(assert (=> b!4693307 m!5598571))

(declare-fun m!5598573 () Bool)

(assert (=> b!4693307 m!5598573))

(declare-fun m!5598575 () Bool)

(assert (=> b!4693307 m!5598575))

(declare-fun m!5598577 () Bool)

(assert (=> b!4693307 m!5598577))

(declare-fun m!5598579 () Bool)

(assert (=> b!4693307 m!5598579))

(declare-fun m!5598581 () Bool)

(assert (=> b!4693307 m!5598581))

(declare-fun m!5598583 () Bool)

(assert (=> b!4693307 m!5598583))

(declare-fun m!5598585 () Bool)

(assert (=> b!4693307 m!5598585))

(assert (=> b!4693307 m!5598579))

(declare-fun m!5598587 () Bool)

(assert (=> b!4693307 m!5598587))

(assert (=> b!4693307 m!5598573))

(declare-fun m!5598589 () Bool)

(assert (=> b!4693307 m!5598589))

(declare-fun m!5598591 () Bool)

(assert (=> b!4693307 m!5598591))

(declare-fun m!5598593 () Bool)

(assert (=> bm!328030 m!5598593))

(declare-fun m!5598595 () Bool)

(assert (=> b!4693305 m!5598595))

(declare-fun m!5598597 () Bool)

(assert (=> bm!328028 m!5598597))

(assert (=> b!4693304 m!5598579))

(assert (=> bm!328029 m!5598201))

(assert (=> b!4693018 d!1491726))

(declare-fun bs!1088901 () Bool)

(declare-fun d!1491728 () Bool)

(assert (= bs!1088901 (and d!1491728 d!1491714)))

(declare-fun lambda!208080 () Int)

(assert (=> bs!1088901 (= lambda!208080 lambda!208048)))

(declare-fun bs!1088902 () Bool)

(assert (= bs!1088902 (and d!1491728 d!1491636)))

(assert (=> bs!1088902 (= lambda!208080 lambda!208015)))

(declare-fun bs!1088903 () Bool)

(assert (= bs!1088903 (and d!1491728 d!1491722)))

(assert (=> bs!1088903 (not (= lambda!208080 lambda!208051))))

(declare-fun bs!1088904 () Bool)

(assert (= bs!1088904 (and d!1491728 start!475052)))

(assert (=> bs!1088904 (= lambda!208080 lambda!207967)))

(declare-fun bs!1088905 () Bool)

(assert (= bs!1088905 (and d!1491728 d!1491708)))

(assert (=> bs!1088905 (= lambda!208080 lambda!208045)))

(declare-fun bs!1088906 () Bool)

(assert (= bs!1088906 (and d!1491728 d!1491704)))

(assert (=> bs!1088906 (= lambda!208080 lambda!208043)))

(declare-fun bs!1088907 () Bool)

(assert (= bs!1088907 (and d!1491728 d!1491692)))

(assert (=> bs!1088907 (= lambda!208080 lambda!208038)))

(declare-fun bs!1088908 () Bool)

(assert (= bs!1088908 (and d!1491728 d!1491700)))

(assert (=> bs!1088908 (= lambda!208080 lambda!208039)))

(declare-fun bs!1088909 () Bool)

(assert (= bs!1088909 (and d!1491728 d!1491680)))

(assert (=> bs!1088909 (= lambda!208080 lambda!208029)))

(declare-fun bs!1088910 () Bool)

(assert (= bs!1088910 (and d!1491728 d!1491648)))

(assert (=> bs!1088910 (= lambda!208080 lambda!208020)))

(declare-fun bs!1088911 () Bool)

(assert (= bs!1088911 (and d!1491728 d!1491706)))

(assert (=> bs!1088911 (= lambda!208080 lambda!208044)))

(declare-fun lt!1853820 () ListMap!4989)

(assert (=> d!1491728 (invariantList!1419 (toList!5625 lt!1853820))))

(declare-fun e!2927838 () ListMap!4989)

(assert (=> d!1491728 (= lt!1853820 e!2927838)))

(declare-fun c!802395 () Bool)

(assert (=> d!1491728 (= c!802395 ((_ is Cons!52448) (t!359758 (toList!5626 lm!2023))))))

(assert (=> d!1491728 (forall!11345 (t!359758 (toList!5626 lm!2023)) lambda!208080)))

(assert (=> d!1491728 (= (extractMap!1894 (t!359758 (toList!5626 lm!2023))) lt!1853820)))

(declare-fun b!4693310 () Bool)

(assert (=> b!4693310 (= e!2927838 (addToMapMapFromBucket!1300 (_2!30228 (h!58703 (t!359758 (toList!5626 lm!2023)))) (extractMap!1894 (t!359758 (t!359758 (toList!5626 lm!2023))))))))

(declare-fun b!4693311 () Bool)

(assert (=> b!4693311 (= e!2927838 (ListMap!4990 Nil!52447))))

(assert (= (and d!1491728 c!802395) b!4693310))

(assert (= (and d!1491728 (not c!802395)) b!4693311))

(declare-fun m!5598599 () Bool)

(assert (=> d!1491728 m!5598599))

(declare-fun m!5598601 () Bool)

(assert (=> d!1491728 m!5598601))

(declare-fun m!5598603 () Bool)

(assert (=> b!4693310 m!5598603))

(assert (=> b!4693310 m!5598603))

(declare-fun m!5598605 () Bool)

(assert (=> b!4693310 m!5598605))

(assert (=> b!4693018 d!1491728))

(declare-fun d!1491730 () Bool)

(assert (=> d!1491730 (= (tail!8629 lm!2023) (ListLongMap!4156 (tail!8630 (toList!5626 lm!2023))))))

(declare-fun bs!1088912 () Bool)

(assert (= bs!1088912 d!1491730))

(declare-fun m!5598607 () Bool)

(assert (=> bs!1088912 m!5598607))

(assert (=> b!4693018 d!1491730))

(declare-fun b!4693319 () Bool)

(declare-fun e!2927842 () List!52571)

(assert (=> b!4693319 (= e!2927842 Nil!52447)))

(declare-fun b!4693316 () Bool)

(declare-fun e!2927841 () List!52571)

(assert (=> b!4693316 (= e!2927841 (t!359757 lt!1853436))))

(declare-fun b!4693317 () Bool)

(assert (=> b!4693317 (= e!2927841 e!2927842)))

(declare-fun c!802397 () Bool)

(assert (=> b!4693317 (= c!802397 ((_ is Cons!52447) lt!1853436))))

(declare-fun d!1491732 () Bool)

(declare-fun lt!1853821 () List!52571)

(assert (=> d!1491732 (not (containsKey!3087 lt!1853821 key!4653))))

(assert (=> d!1491732 (= lt!1853821 e!2927841)))

(declare-fun c!802396 () Bool)

(assert (=> d!1491732 (= c!802396 (and ((_ is Cons!52447) lt!1853436) (= (_1!30227 (h!58702 lt!1853436)) key!4653)))))

(assert (=> d!1491732 (noDuplicateKeys!1868 lt!1853436)))

(assert (=> d!1491732 (= (removePairForKey!1463 lt!1853436 key!4653) lt!1853821)))

(declare-fun b!4693318 () Bool)

(assert (=> b!4693318 (= e!2927842 (Cons!52447 (h!58702 lt!1853436) (removePairForKey!1463 (t!359757 lt!1853436) key!4653)))))

(assert (= (and d!1491732 c!802396) b!4693316))

(assert (= (and d!1491732 (not c!802396)) b!4693317))

(assert (= (and b!4693317 c!802397) b!4693318))

(assert (= (and b!4693317 (not c!802397)) b!4693319))

(declare-fun m!5598609 () Bool)

(assert (=> d!1491732 m!5598609))

(assert (=> d!1491732 m!5598349))

(declare-fun m!5598611 () Bool)

(assert (=> b!4693318 m!5598611))

(assert (=> b!4693023 d!1491732))

(declare-fun d!1491734 () Bool)

(assert (=> d!1491734 (= (tail!8631 newBucket!218) (t!359757 newBucket!218))))

(assert (=> b!4693023 d!1491734))

(declare-fun d!1491736 () Bool)

(assert (=> d!1491736 (= (tail!8631 oldBucket!34) (t!359757 oldBucket!34))))

(assert (=> b!4693023 d!1491736))

(declare-fun bs!1088913 () Bool)

(declare-fun d!1491738 () Bool)

(assert (= bs!1088913 (and d!1491738 b!4693121)))

(declare-fun lambda!208085 () Int)

(assert (=> bs!1088913 (not (= lambda!208085 lambda!208007))))

(declare-fun bs!1088914 () Bool)

(assert (= bs!1088914 (and d!1491738 d!1491682)))

(assert (=> bs!1088914 (not (= lambda!208085 lambda!208033))))

(declare-fun bs!1088915 () Bool)

(assert (= bs!1088915 (and d!1491738 b!4693235)))

(assert (=> bs!1088915 (not (= lambda!208085 lambda!208032))))

(declare-fun bs!1088916 () Bool)

(assert (= bs!1088916 (and d!1491738 d!1491684)))

(assert (=> bs!1088916 (not (= lambda!208085 lambda!208037))))

(declare-fun bs!1088917 () Bool)

(assert (= bs!1088917 (and d!1491738 b!4693240)))

(assert (=> bs!1088917 (not (= lambda!208085 lambda!208035))))

(declare-fun bs!1088918 () Bool)

(assert (= bs!1088918 (and d!1491738 b!4693231)))

(assert (=> bs!1088918 (not (= lambda!208085 lambda!208030))))

(declare-fun bs!1088919 () Bool)

(assert (= bs!1088919 (and d!1491738 b!4693117)))

(assert (=> bs!1088919 (not (= lambda!208085 lambda!208006))))

(declare-fun bs!1088920 () Bool)

(assert (= bs!1088920 (and d!1491738 b!4693303)))

(assert (=> bs!1088920 (not (= lambda!208085 lambda!208058))))

(declare-fun bs!1088921 () Bool)

(assert (= bs!1088921 (and d!1491738 d!1491606)))

(assert (=> bs!1088921 (not (= lambda!208085 lambda!208009))))

(declare-fun bs!1088922 () Bool)

(assert (= bs!1088922 (and d!1491738 d!1491642)))

(assert (=> bs!1088922 (not (= lambda!208085 lambda!208019))))

(assert (=> bs!1088917 (not (= lambda!208085 lambda!208036))))

(declare-fun bs!1088923 () Bool)

(assert (= bs!1088923 (and d!1491738 d!1491726)))

(assert (=> bs!1088923 (not (= lambda!208085 lambda!208075))))

(assert (=> bs!1088913 (not (= lambda!208085 lambda!208008))))

(declare-fun bs!1088924 () Bool)

(assert (= bs!1088924 (and d!1491738 b!4693138)))

(assert (=> bs!1088924 (not (= lambda!208085 lambda!208016))))

(declare-fun bs!1088925 () Bool)

(assert (= bs!1088925 (and d!1491738 d!1491702)))

(assert (=> bs!1088925 (= lambda!208085 lambda!208042)))

(declare-fun bs!1088926 () Bool)

(assert (= bs!1088926 (and d!1491738 b!4693142)))

(assert (=> bs!1088926 (not (= lambda!208085 lambda!208018))))

(declare-fun bs!1088927 () Bool)

(assert (= bs!1088927 (and d!1491738 b!4693236)))

(assert (=> bs!1088927 (not (= lambda!208085 lambda!208034))))

(declare-fun bs!1088928 () Bool)

(assert (= bs!1088928 (and d!1491738 b!4693307)))

(assert (=> bs!1088928 (not (= lambda!208085 lambda!208063))))

(assert (=> bs!1088915 (not (= lambda!208085 lambda!208031))))

(assert (=> bs!1088926 (not (= lambda!208085 lambda!208017))))

(assert (=> bs!1088928 (not (= lambda!208085 lambda!208068))))

(assert (=> d!1491738 true))

(assert (=> d!1491738 true))

(assert (=> d!1491738 (= (allKeysSameHash!1694 oldBucket!34 hash!405 hashF!1323) (forall!11346 oldBucket!34 lambda!208085))))

(declare-fun bs!1088929 () Bool)

(assert (= bs!1088929 d!1491738))

(declare-fun m!5598613 () Bool)

(assert (=> bs!1088929 m!5598613))

(assert (=> b!4693033 d!1491738))

(declare-fun d!1491740 () Bool)

(declare-fun res!1980141 () Bool)

(declare-fun e!2927843 () Bool)

(assert (=> d!1491740 (=> res!1980141 e!2927843)))

(assert (=> d!1491740 (= res!1980141 ((_ is Nil!52448) (toList!5626 lm!2023)))))

(assert (=> d!1491740 (= (forall!11345 (toList!5626 lm!2023) lambda!207967) e!2927843)))

(declare-fun b!4693320 () Bool)

(declare-fun e!2927844 () Bool)

(assert (=> b!4693320 (= e!2927843 e!2927844)))

(declare-fun res!1980142 () Bool)

(assert (=> b!4693320 (=> (not res!1980142) (not e!2927844))))

(assert (=> b!4693320 (= res!1980142 (dynLambda!21723 lambda!207967 (h!58703 (toList!5626 lm!2023))))))

(declare-fun b!4693321 () Bool)

(assert (=> b!4693321 (= e!2927844 (forall!11345 (t!359758 (toList!5626 lm!2023)) lambda!207967))))

(assert (= (and d!1491740 (not res!1980141)) b!4693320))

(assert (= (and b!4693320 res!1980142) b!4693321))

(declare-fun b_lambda!177091 () Bool)

(assert (=> (not b_lambda!177091) (not b!4693320)))

(declare-fun m!5598615 () Bool)

(assert (=> b!4693320 m!5598615))

(declare-fun m!5598617 () Bool)

(assert (=> b!4693321 m!5598617))

(assert (=> start!475052 d!1491740))

(declare-fun d!1491742 () Bool)

(declare-fun isStrictlySorted!660 (List!52572) Bool)

(assert (=> d!1491742 (= (inv!67694 lm!2023) (isStrictlySorted!660 (toList!5626 lm!2023)))))

(declare-fun bs!1088930 () Bool)

(assert (= bs!1088930 d!1491742))

(declare-fun m!5598619 () Bool)

(assert (=> bs!1088930 m!5598619))

(assert (=> start!475052 d!1491742))

(declare-fun d!1491744 () Bool)

(declare-fun lt!1853845 () Bool)

(declare-fun content!9192 (List!52572) (InoxSet tuple2!53868))

(assert (=> d!1491744 (= lt!1853845 (select (content!9192 (toList!5626 lm!2023)) lt!1853439))))

(declare-fun e!2927852 () Bool)

(assert (=> d!1491744 (= lt!1853845 e!2927852)))

(declare-fun res!1980150 () Bool)

(assert (=> d!1491744 (=> (not res!1980150) (not e!2927852))))

(assert (=> d!1491744 (= res!1980150 ((_ is Cons!52448) (toList!5626 lm!2023)))))

(assert (=> d!1491744 (= (contains!15671 (toList!5626 lm!2023) lt!1853439) lt!1853845)))

(declare-fun b!4693333 () Bool)

(declare-fun e!2927853 () Bool)

(assert (=> b!4693333 (= e!2927852 e!2927853)))

(declare-fun res!1980151 () Bool)

(assert (=> b!4693333 (=> res!1980151 e!2927853)))

(assert (=> b!4693333 (= res!1980151 (= (h!58703 (toList!5626 lm!2023)) lt!1853439))))

(declare-fun b!4693334 () Bool)

(assert (=> b!4693334 (= e!2927853 (contains!15671 (t!359758 (toList!5626 lm!2023)) lt!1853439))))

(assert (= (and d!1491744 res!1980150) b!4693333))

(assert (= (and b!4693333 (not res!1980151)) b!4693334))

(declare-fun m!5598621 () Bool)

(assert (=> d!1491744 m!5598621))

(declare-fun m!5598623 () Bool)

(assert (=> d!1491744 m!5598623))

(declare-fun m!5598625 () Bool)

(assert (=> b!4693334 m!5598625))

(assert (=> b!4693032 d!1491744))

(declare-fun d!1491746 () Bool)

(assert (=> d!1491746 (contains!15671 (toList!5626 lm!2023) (tuple2!53869 lt!1853440 lt!1853427))))

(declare-fun lt!1853849 () Unit!124653)

(declare-fun choose!32663 (ListLongMap!4155 (_ BitVec 64) List!52571) Unit!124653)

(assert (=> d!1491746 (= lt!1853849 (choose!32663 lm!2023 lt!1853440 lt!1853427))))

(assert (=> d!1491746 (contains!15672 lm!2023 lt!1853440)))

(assert (=> d!1491746 (= (lemmaGetValueImpliesTupleContained!277 lm!2023 lt!1853440 lt!1853427) lt!1853849)))

(declare-fun bs!1088942 () Bool)

(assert (= bs!1088942 d!1491746))

(declare-fun m!5598663 () Bool)

(assert (=> bs!1088942 m!5598663))

(declare-fun m!5598665 () Bool)

(assert (=> bs!1088942 m!5598665))

(assert (=> bs!1088942 m!5597961))

(assert (=> b!4693032 d!1491746))

(declare-fun d!1491750 () Bool)

(assert (=> d!1491750 (dynLambda!21723 lambda!207967 lt!1853439)))

(declare-fun lt!1853852 () Unit!124653)

(declare-fun choose!32664 (List!52572 Int tuple2!53868) Unit!124653)

(assert (=> d!1491750 (= lt!1853852 (choose!32664 (toList!5626 lm!2023) lambda!207967 lt!1853439))))

(declare-fun e!2927861 () Bool)

(assert (=> d!1491750 e!2927861))

(declare-fun res!1980158 () Bool)

(assert (=> d!1491750 (=> (not res!1980158) (not e!2927861))))

(assert (=> d!1491750 (= res!1980158 (forall!11345 (toList!5626 lm!2023) lambda!207967))))

(assert (=> d!1491750 (= (forallContained!3452 (toList!5626 lm!2023) lambda!207967 lt!1853439) lt!1853852)))

(declare-fun b!4693344 () Bool)

(assert (=> b!4693344 (= e!2927861 (contains!15671 (toList!5626 lm!2023) lt!1853439))))

(assert (= (and d!1491750 res!1980158) b!4693344))

(declare-fun b_lambda!177093 () Bool)

(assert (=> (not b_lambda!177093) (not d!1491750)))

(declare-fun m!5598677 () Bool)

(assert (=> d!1491750 m!5598677))

(declare-fun m!5598679 () Bool)

(assert (=> d!1491750 m!5598679))

(assert (=> d!1491750 m!5597995))

(assert (=> b!4693344 m!5597971))

(assert (=> b!4693032 d!1491750))

(declare-fun bs!1089000 () Bool)

(declare-fun d!1491756 () Bool)

(assert (= bs!1089000 (and d!1491756 d!1491714)))

(declare-fun lambda!208108 () Int)

(assert (=> bs!1089000 (= lambda!208108 lambda!208048)))

(declare-fun bs!1089001 () Bool)

(assert (= bs!1089001 (and d!1491756 d!1491636)))

(assert (=> bs!1089001 (= lambda!208108 lambda!208015)))

(declare-fun bs!1089003 () Bool)

(assert (= bs!1089003 (and d!1491756 d!1491722)))

(assert (=> bs!1089003 (not (= lambda!208108 lambda!208051))))

(declare-fun bs!1089005 () Bool)

(assert (= bs!1089005 (and d!1491756 start!475052)))

(assert (=> bs!1089005 (= lambda!208108 lambda!207967)))

(declare-fun bs!1089007 () Bool)

(assert (= bs!1089007 (and d!1491756 d!1491704)))

(assert (=> bs!1089007 (= lambda!208108 lambda!208043)))

(declare-fun bs!1089009 () Bool)

(assert (= bs!1089009 (and d!1491756 d!1491692)))

(assert (=> bs!1089009 (= lambda!208108 lambda!208038)))

(declare-fun bs!1089011 () Bool)

(assert (= bs!1089011 (and d!1491756 d!1491700)))

(assert (=> bs!1089011 (= lambda!208108 lambda!208039)))

(declare-fun bs!1089012 () Bool)

(assert (= bs!1089012 (and d!1491756 d!1491680)))

(assert (=> bs!1089012 (= lambda!208108 lambda!208029)))

(declare-fun bs!1089014 () Bool)

(assert (= bs!1089014 (and d!1491756 d!1491708)))

(assert (=> bs!1089014 (= lambda!208108 lambda!208045)))

(declare-fun bs!1089016 () Bool)

(assert (= bs!1089016 (and d!1491756 d!1491728)))

(assert (=> bs!1089016 (= lambda!208108 lambda!208080)))

(declare-fun bs!1089018 () Bool)

(assert (= bs!1089018 (and d!1491756 d!1491648)))

(assert (=> bs!1089018 (= lambda!208108 lambda!208020)))

(declare-fun bs!1089020 () Bool)

(assert (= bs!1089020 (and d!1491756 d!1491706)))

(assert (=> bs!1089020 (= lambda!208108 lambda!208044)))

(declare-fun b!4693375 () Bool)

(declare-fun res!1980180 () Bool)

(declare-fun e!2927881 () Bool)

(assert (=> b!4693375 (=> (not res!1980180) (not e!2927881))))

(assert (=> b!4693375 (= res!1980180 (allKeysSameHashInMap!1782 lm!2023 hashF!1323))))

(declare-fun b!4693376 () Bool)

(declare-fun res!1980178 () Bool)

(assert (=> b!4693376 (=> (not res!1980178) (not e!2927881))))

(assert (=> b!4693376 (= res!1980178 (contains!15670 (extractMap!1894 (toList!5626 lm!2023)) key!4653))))

(assert (=> d!1491756 e!2927881))

(declare-fun res!1980179 () Bool)

(assert (=> d!1491756 (=> (not res!1980179) (not e!2927881))))

(assert (=> d!1491756 (= res!1980179 (forall!11345 (toList!5626 lm!2023) lambda!208108))))

(declare-fun lt!1853902 () Unit!124653)

(declare-fun choose!32665 (ListLongMap!4155 K!13820 Hashable!6237) Unit!124653)

(assert (=> d!1491756 (= lt!1853902 (choose!32665 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1491756 (forall!11345 (toList!5626 lm!2023) lambda!208108)))

(assert (=> d!1491756 (= (lemmaInGenMapThenGetPairDefined!268 lm!2023 key!4653 hashF!1323) lt!1853902)))

(declare-fun lt!1853901 () (_ BitVec 64))

(declare-fun e!2927882 () Bool)

(declare-fun lt!1853904 () List!52571)

(declare-fun b!4693378 () Bool)

(declare-datatypes ((Option!12115 0))(
  ( (None!12114) (Some!12114 (v!46553 List!52571)) )
))
(declare-fun getValueByKey!1801 (List!52572 (_ BitVec 64)) Option!12115)

(assert (=> b!4693378 (= e!2927882 (= (getValueByKey!1801 (toList!5626 lm!2023) lt!1853901) (Some!12114 lt!1853904)))))

(declare-fun b!4693377 () Bool)

(assert (=> b!4693377 (= e!2927881 (isDefined!9366 (getPair!472 (apply!12351 lm!2023 (hash!4093 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1853903 () Unit!124653)

(assert (=> b!4693377 (= lt!1853903 (forallContained!3452 (toList!5626 lm!2023) lambda!208108 (tuple2!53869 (hash!4093 hashF!1323 key!4653) (apply!12351 lm!2023 (hash!4093 hashF!1323 key!4653)))))))

(declare-fun lt!1853906 () Unit!124653)

(declare-fun lt!1853907 () Unit!124653)

(assert (=> b!4693377 (= lt!1853906 lt!1853907)))

(assert (=> b!4693377 (contains!15671 (toList!5626 lm!2023) (tuple2!53869 lt!1853901 lt!1853904))))

(assert (=> b!4693377 (= lt!1853907 (lemmaGetValueImpliesTupleContained!277 lm!2023 lt!1853901 lt!1853904))))

(assert (=> b!4693377 e!2927882))

(declare-fun res!1980177 () Bool)

(assert (=> b!4693377 (=> (not res!1980177) (not e!2927882))))

(assert (=> b!4693377 (= res!1980177 (contains!15672 lm!2023 lt!1853901))))

(assert (=> b!4693377 (= lt!1853904 (apply!12351 lm!2023 (hash!4093 hashF!1323 key!4653)))))

(assert (=> b!4693377 (= lt!1853901 (hash!4093 hashF!1323 key!4653))))

(declare-fun lt!1853905 () Unit!124653)

(declare-fun lt!1853900 () Unit!124653)

(assert (=> b!4693377 (= lt!1853905 lt!1853900)))

(assert (=> b!4693377 (contains!15672 lm!2023 (hash!4093 hashF!1323 key!4653))))

(assert (=> b!4693377 (= lt!1853900 (lemmaInGenMapThenLongMapContainsHash!678 lm!2023 key!4653 hashF!1323))))

(assert (= (and d!1491756 res!1980179) b!4693375))

(assert (= (and b!4693375 res!1980180) b!4693376))

(assert (= (and b!4693376 res!1980178) b!4693377))

(assert (= (and b!4693377 res!1980177) b!4693378))

(assert (=> b!4693377 m!5597973))

(declare-fun m!5598795 () Bool)

(assert (=> b!4693377 m!5598795))

(declare-fun m!5598797 () Bool)

(assert (=> b!4693377 m!5598797))

(declare-fun m!5598799 () Bool)

(assert (=> b!4693377 m!5598799))

(assert (=> b!4693377 m!5598795))

(declare-fun m!5598801 () Bool)

(assert (=> b!4693377 m!5598801))

(assert (=> b!4693377 m!5598007))

(assert (=> b!4693377 m!5598799))

(assert (=> b!4693377 m!5598007))

(declare-fun m!5598803 () Bool)

(assert (=> b!4693377 m!5598803))

(declare-fun m!5598805 () Bool)

(assert (=> b!4693377 m!5598805))

(assert (=> b!4693377 m!5598007))

(declare-fun m!5598807 () Bool)

(assert (=> b!4693377 m!5598807))

(declare-fun m!5598809 () Bool)

(assert (=> b!4693377 m!5598809))

(assert (=> b!4693375 m!5598003))

(declare-fun m!5598811 () Bool)

(assert (=> d!1491756 m!5598811))

(declare-fun m!5598813 () Bool)

(assert (=> d!1491756 m!5598813))

(assert (=> d!1491756 m!5598811))

(declare-fun m!5598815 () Bool)

(assert (=> b!4693378 m!5598815))

(assert (=> b!4693376 m!5598015))

(assert (=> b!4693376 m!5598015))

(declare-fun m!5598817 () Bool)

(assert (=> b!4693376 m!5598817))

(assert (=> b!4693032 d!1491756))

(declare-fun d!1491786 () Bool)

(assert (=> d!1491786 (containsKey!3087 oldBucket!34 key!4653)))

(declare-fun lt!1853911 () Unit!124653)

(declare-fun choose!32666 (List!52571 K!13820 Hashable!6237) Unit!124653)

(assert (=> d!1491786 (= lt!1853911 (choose!32666 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1491786 (noDuplicateKeys!1868 oldBucket!34)))

(assert (=> d!1491786 (= (lemmaGetPairDefinedThenContainsKey!220 oldBucket!34 key!4653 hashF!1323) lt!1853911)))

(declare-fun bs!1089022 () Bool)

(assert (= bs!1089022 d!1491786))

(assert (=> bs!1089022 m!5597969))

(declare-fun m!5598819 () Bool)

(assert (=> bs!1089022 m!5598819))

(assert (=> bs!1089022 m!5598005))

(assert (=> b!4693032 d!1491786))

(declare-fun d!1491788 () Bool)

(declare-fun res!1980185 () Bool)

(declare-fun e!2927888 () Bool)

(assert (=> d!1491788 (=> res!1980185 e!2927888)))

(assert (=> d!1491788 (= res!1980185 (and ((_ is Cons!52447) (t!359757 oldBucket!34)) (= (_1!30227 (h!58702 (t!359757 oldBucket!34))) key!4653)))))

(assert (=> d!1491788 (= (containsKey!3087 (t!359757 oldBucket!34) key!4653) e!2927888)))

(declare-fun b!4693385 () Bool)

(declare-fun e!2927889 () Bool)

(assert (=> b!4693385 (= e!2927888 e!2927889)))

(declare-fun res!1980186 () Bool)

(assert (=> b!4693385 (=> (not res!1980186) (not e!2927889))))

(assert (=> b!4693385 (= res!1980186 ((_ is Cons!52447) (t!359757 oldBucket!34)))))

(declare-fun b!4693386 () Bool)

(assert (=> b!4693386 (= e!2927889 (containsKey!3087 (t!359757 (t!359757 oldBucket!34)) key!4653))))

(assert (= (and d!1491788 (not res!1980185)) b!4693385))

(assert (= (and b!4693385 res!1980186) b!4693386))

(declare-fun m!5598821 () Bool)

(assert (=> b!4693386 m!5598821))

(assert (=> b!4693032 d!1491788))

(declare-fun d!1491790 () Bool)

(declare-fun res!1980187 () Bool)

(declare-fun e!2927890 () Bool)

(assert (=> d!1491790 (=> res!1980187 e!2927890)))

(assert (=> d!1491790 (= res!1980187 (and ((_ is Cons!52447) oldBucket!34) (= (_1!30227 (h!58702 oldBucket!34)) key!4653)))))

(assert (=> d!1491790 (= (containsKey!3087 oldBucket!34 key!4653) e!2927890)))

(declare-fun b!4693387 () Bool)

(declare-fun e!2927891 () Bool)

(assert (=> b!4693387 (= e!2927890 e!2927891)))

(declare-fun res!1980188 () Bool)

(assert (=> b!4693387 (=> (not res!1980188) (not e!2927891))))

(assert (=> b!4693387 (= res!1980188 ((_ is Cons!52447) oldBucket!34))))

(declare-fun b!4693388 () Bool)

(assert (=> b!4693388 (= e!2927891 (containsKey!3087 (t!359757 oldBucket!34) key!4653))))

(assert (= (and d!1491790 (not res!1980187)) b!4693387))

(assert (= (and b!4693387 res!1980188) b!4693388))

(assert (=> b!4693388 m!5597965))

(assert (=> b!4693032 d!1491790))

(declare-fun d!1491792 () Bool)

(declare-fun get!17520 (Option!12115) List!52571)

(assert (=> d!1491792 (= (apply!12351 lm!2023 lt!1853440) (get!17520 (getValueByKey!1801 (toList!5626 lm!2023) lt!1853440)))))

(declare-fun bs!1089023 () Bool)

(assert (= bs!1089023 d!1491792))

(declare-fun m!5598823 () Bool)

(assert (=> bs!1089023 m!5598823))

(assert (=> bs!1089023 m!5598823))

(declare-fun m!5598825 () Bool)

(assert (=> bs!1089023 m!5598825))

(assert (=> b!4693032 d!1491792))

(declare-fun d!1491794 () Bool)

(declare-fun e!2927897 () Bool)

(assert (=> d!1491794 e!2927897))

(declare-fun res!1980191 () Bool)

(assert (=> d!1491794 (=> res!1980191 e!2927897)))

(declare-fun lt!1853923 () Bool)

(assert (=> d!1491794 (= res!1980191 (not lt!1853923))))

(declare-fun lt!1853925 () Bool)

(assert (=> d!1491794 (= lt!1853923 lt!1853925)))

(declare-fun lt!1853924 () Unit!124653)

(declare-fun e!2927896 () Unit!124653)

(assert (=> d!1491794 (= lt!1853924 e!2927896)))

(declare-fun c!802409 () Bool)

(assert (=> d!1491794 (= c!802409 lt!1853925)))

(declare-fun containsKey!3091 (List!52572 (_ BitVec 64)) Bool)

(assert (=> d!1491794 (= lt!1853925 (containsKey!3091 (toList!5626 lm!2023) lt!1853440))))

(assert (=> d!1491794 (= (contains!15672 lm!2023 lt!1853440) lt!1853923)))

(declare-fun b!4693395 () Bool)

(declare-fun lt!1853926 () Unit!124653)

(assert (=> b!4693395 (= e!2927896 lt!1853926)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1693 (List!52572 (_ BitVec 64)) Unit!124653)

(assert (=> b!4693395 (= lt!1853926 (lemmaContainsKeyImpliesGetValueByKeyDefined!1693 (toList!5626 lm!2023) lt!1853440))))

(declare-fun isDefined!9370 (Option!12115) Bool)

(assert (=> b!4693395 (isDefined!9370 (getValueByKey!1801 (toList!5626 lm!2023) lt!1853440))))

(declare-fun b!4693396 () Bool)

(declare-fun Unit!124752 () Unit!124653)

(assert (=> b!4693396 (= e!2927896 Unit!124752)))

(declare-fun b!4693397 () Bool)

(assert (=> b!4693397 (= e!2927897 (isDefined!9370 (getValueByKey!1801 (toList!5626 lm!2023) lt!1853440)))))

(assert (= (and d!1491794 c!802409) b!4693395))

(assert (= (and d!1491794 (not c!802409)) b!4693396))

(assert (= (and d!1491794 (not res!1980191)) b!4693397))

(declare-fun m!5598829 () Bool)

(assert (=> d!1491794 m!5598829))

(declare-fun m!5598831 () Bool)

(assert (=> b!4693395 m!5598831))

(assert (=> b!4693395 m!5598823))

(assert (=> b!4693395 m!5598823))

(declare-fun m!5598833 () Bool)

(assert (=> b!4693395 m!5598833))

(assert (=> b!4693397 m!5598823))

(assert (=> b!4693397 m!5598823))

(assert (=> b!4693397 m!5598833))

(assert (=> b!4693032 d!1491794))

(declare-fun d!1491798 () Bool)

(declare-fun isEmpty!29104 (Option!12111) Bool)

(assert (=> d!1491798 (= (isDefined!9366 (getPair!472 lt!1853427 key!4653)) (not (isEmpty!29104 (getPair!472 lt!1853427 key!4653))))))

(declare-fun bs!1089025 () Bool)

(assert (= bs!1089025 d!1491798))

(assert (=> bs!1089025 m!5597957))

(declare-fun m!5598835 () Bool)

(assert (=> bs!1089025 m!5598835))

(assert (=> b!4693032 d!1491798))

(declare-fun bs!1089026 () Bool)

(declare-fun d!1491800 () Bool)

(assert (= bs!1089026 (and d!1491800 d!1491714)))

(declare-fun lambda!208112 () Int)

(assert (=> bs!1089026 (= lambda!208112 lambda!208048)))

(declare-fun bs!1089027 () Bool)

(assert (= bs!1089027 (and d!1491800 d!1491636)))

(assert (=> bs!1089027 (= lambda!208112 lambda!208015)))

(declare-fun bs!1089028 () Bool)

(assert (= bs!1089028 (and d!1491800 d!1491722)))

(assert (=> bs!1089028 (not (= lambda!208112 lambda!208051))))

(declare-fun bs!1089029 () Bool)

(assert (= bs!1089029 (and d!1491800 start!475052)))

(assert (=> bs!1089029 (= lambda!208112 lambda!207967)))

(declare-fun bs!1089030 () Bool)

(assert (= bs!1089030 (and d!1491800 d!1491704)))

(assert (=> bs!1089030 (= lambda!208112 lambda!208043)))

(declare-fun bs!1089031 () Bool)

(assert (= bs!1089031 (and d!1491800 d!1491692)))

(assert (=> bs!1089031 (= lambda!208112 lambda!208038)))

(declare-fun bs!1089032 () Bool)

(assert (= bs!1089032 (and d!1491800 d!1491700)))

(assert (=> bs!1089032 (= lambda!208112 lambda!208039)))

(declare-fun bs!1089033 () Bool)

(assert (= bs!1089033 (and d!1491800 d!1491680)))

(assert (=> bs!1089033 (= lambda!208112 lambda!208029)))

(declare-fun bs!1089034 () Bool)

(assert (= bs!1089034 (and d!1491800 d!1491756)))

(assert (=> bs!1089034 (= lambda!208112 lambda!208108)))

(declare-fun bs!1089035 () Bool)

(assert (= bs!1089035 (and d!1491800 d!1491708)))

(assert (=> bs!1089035 (= lambda!208112 lambda!208045)))

(declare-fun bs!1089036 () Bool)

(assert (= bs!1089036 (and d!1491800 d!1491728)))

(assert (=> bs!1089036 (= lambda!208112 lambda!208080)))

(declare-fun bs!1089037 () Bool)

(assert (= bs!1089037 (and d!1491800 d!1491648)))

(assert (=> bs!1089037 (= lambda!208112 lambda!208020)))

(declare-fun bs!1089038 () Bool)

(assert (= bs!1089038 (and d!1491800 d!1491706)))

(assert (=> bs!1089038 (= lambda!208112 lambda!208044)))

(assert (=> d!1491800 (contains!15672 lm!2023 (hash!4093 hashF!1323 key!4653))))

(declare-fun lt!1853929 () Unit!124653)

(declare-fun choose!32667 (ListLongMap!4155 K!13820 Hashable!6237) Unit!124653)

(assert (=> d!1491800 (= lt!1853929 (choose!32667 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1491800 (forall!11345 (toList!5626 lm!2023) lambda!208112)))

(assert (=> d!1491800 (= (lemmaInGenMapThenLongMapContainsHash!678 lm!2023 key!4653 hashF!1323) lt!1853929)))

(declare-fun bs!1089039 () Bool)

(assert (= bs!1089039 d!1491800))

(assert (=> bs!1089039 m!5598007))

(assert (=> bs!1089039 m!5598007))

(assert (=> bs!1089039 m!5598807))

(declare-fun m!5598837 () Bool)

(assert (=> bs!1089039 m!5598837))

(declare-fun m!5598839 () Bool)

(assert (=> bs!1089039 m!5598839))

(assert (=> b!4693032 d!1491800))

(declare-fun b!4693427 () Bool)

(declare-fun e!2927918 () Bool)

(assert (=> b!4693427 (= e!2927918 (not (containsKey!3087 lt!1853427 key!4653)))))

(declare-fun b!4693428 () Bool)

(declare-fun e!2927919 () Bool)

(declare-fun lt!1853952 () Option!12111)

(declare-fun get!17521 (Option!12111) tuple2!53866)

(assert (=> b!4693428 (= e!2927919 (contains!15673 lt!1853427 (get!17521 lt!1853952)))))

(declare-fun b!4693429 () Bool)

(declare-fun res!1980208 () Bool)

(assert (=> b!4693429 (=> (not res!1980208) (not e!2927919))))

(assert (=> b!4693429 (= res!1980208 (= (_1!30227 (get!17521 lt!1853952)) key!4653))))

(declare-fun b!4693430 () Bool)

(declare-fun e!2927917 () Option!12111)

(assert (=> b!4693430 (= e!2927917 (Some!12110 (h!58702 lt!1853427)))))

(declare-fun b!4693431 () Bool)

(declare-fun e!2927920 () Option!12111)

(assert (=> b!4693431 (= e!2927920 (getPair!472 (t!359757 lt!1853427) key!4653))))

(declare-fun b!4693432 () Bool)

(declare-fun e!2927916 () Bool)

(assert (=> b!4693432 (= e!2927916 e!2927919)))

(declare-fun res!1980209 () Bool)

(assert (=> b!4693432 (=> (not res!1980209) (not e!2927919))))

(assert (=> b!4693432 (= res!1980209 (isDefined!9366 lt!1853952))))

(declare-fun d!1491802 () Bool)

(assert (=> d!1491802 e!2927916))

(declare-fun res!1980210 () Bool)

(assert (=> d!1491802 (=> res!1980210 e!2927916)))

(assert (=> d!1491802 (= res!1980210 e!2927918)))

(declare-fun res!1980207 () Bool)

(assert (=> d!1491802 (=> (not res!1980207) (not e!2927918))))

(assert (=> d!1491802 (= res!1980207 (isEmpty!29104 lt!1853952))))

(assert (=> d!1491802 (= lt!1853952 e!2927917)))

(declare-fun c!802418 () Bool)

(assert (=> d!1491802 (= c!802418 (and ((_ is Cons!52447) lt!1853427) (= (_1!30227 (h!58702 lt!1853427)) key!4653)))))

(assert (=> d!1491802 (noDuplicateKeys!1868 lt!1853427)))

(assert (=> d!1491802 (= (getPair!472 lt!1853427 key!4653) lt!1853952)))

(declare-fun b!4693433 () Bool)

(assert (=> b!4693433 (= e!2927917 e!2927920)))

(declare-fun c!802417 () Bool)

(assert (=> b!4693433 (= c!802417 ((_ is Cons!52447) lt!1853427))))

(declare-fun b!4693434 () Bool)

(assert (=> b!4693434 (= e!2927920 None!12110)))

(assert (= (and d!1491802 c!802418) b!4693430))

(assert (= (and d!1491802 (not c!802418)) b!4693433))

(assert (= (and b!4693433 c!802417) b!4693431))

(assert (= (and b!4693433 (not c!802417)) b!4693434))

(assert (= (and d!1491802 res!1980207) b!4693427))

(assert (= (and d!1491802 (not res!1980210)) b!4693432))

(assert (= (and b!4693432 res!1980209) b!4693429))

(assert (= (and b!4693429 res!1980208) b!4693428))

(declare-fun m!5598897 () Bool)

(assert (=> b!4693432 m!5598897))

(declare-fun m!5598899 () Bool)

(assert (=> b!4693428 m!5598899))

(assert (=> b!4693428 m!5598899))

(declare-fun m!5598901 () Bool)

(assert (=> b!4693428 m!5598901))

(assert (=> b!4693429 m!5598899))

(declare-fun m!5598903 () Bool)

(assert (=> b!4693431 m!5598903))

(declare-fun m!5598905 () Bool)

(assert (=> d!1491802 m!5598905))

(declare-fun m!5598907 () Bool)

(assert (=> d!1491802 m!5598907))

(declare-fun m!5598909 () Bool)

(assert (=> b!4693427 m!5598909))

(assert (=> b!4693032 d!1491802))

(declare-fun d!1491814 () Bool)

(declare-fun res!1980211 () Bool)

(declare-fun e!2927922 () Bool)

(assert (=> d!1491814 (=> res!1980211 e!2927922)))

(assert (=> d!1491814 (= res!1980211 (not ((_ is Cons!52447) newBucket!218)))))

(assert (=> d!1491814 (= (noDuplicateKeys!1868 newBucket!218) e!2927922)))

(declare-fun b!4693437 () Bool)

(declare-fun e!2927923 () Bool)

(assert (=> b!4693437 (= e!2927922 e!2927923)))

(declare-fun res!1980212 () Bool)

(assert (=> b!4693437 (=> (not res!1980212) (not e!2927923))))

(assert (=> b!4693437 (= res!1980212 (not (containsKey!3087 (t!359757 newBucket!218) (_1!30227 (h!58702 newBucket!218)))))))

(declare-fun b!4693438 () Bool)

(assert (=> b!4693438 (= e!2927923 (noDuplicateKeys!1868 (t!359757 newBucket!218)))))

(assert (= (and d!1491814 (not res!1980211)) b!4693437))

(assert (= (and b!4693437 res!1980212) b!4693438))

(declare-fun m!5598911 () Bool)

(assert (=> b!4693437 m!5598911))

(declare-fun m!5598913 () Bool)

(assert (=> b!4693438 m!5598913))

(assert (=> b!4693021 d!1491814))

(declare-fun tp!1346146 () Bool)

(declare-fun b!4693443 () Bool)

(declare-fun e!2927926 () Bool)

(assert (=> b!4693443 (= e!2927926 (and tp_is_empty!30765 tp_is_empty!30767 tp!1346146))))

(assert (=> b!4693024 (= tp!1346142 e!2927926)))

(assert (= (and b!4693024 ((_ is Cons!52447) (t!359757 newBucket!218))) b!4693443))

(declare-fun b!4693453 () Bool)

(declare-fun e!2927932 () Bool)

(declare-fun tp!1346151 () Bool)

(declare-fun tp!1346152 () Bool)

(assert (=> b!4693453 (= e!2927932 (and tp!1346151 tp!1346152))))

(assert (=> b!4693017 (= tp!1346141 e!2927932)))

(assert (= (and b!4693017 ((_ is Cons!52448) (toList!5626 lm!2023))) b!4693453))

(declare-fun tp!1346153 () Bool)

(declare-fun e!2927933 () Bool)

(declare-fun b!4693454 () Bool)

(assert (=> b!4693454 (= e!2927933 (and tp_is_empty!30765 tp_is_empty!30767 tp!1346153))))

(assert (=> b!4693022 (= tp!1346143 e!2927933)))

(assert (= (and b!4693022 ((_ is Cons!52447) (t!359757 oldBucket!34))) b!4693454))

(declare-fun b_lambda!177097 () Bool)

(assert (= b_lambda!177089 (or start!475052 b_lambda!177097)))

(declare-fun bs!1089066 () Bool)

(declare-fun d!1491820 () Bool)

(assert (= bs!1089066 (and d!1491820 start!475052)))

(assert (=> bs!1089066 (= (dynLambda!21723 lambda!207967 (h!58703 lt!1853451)) (noDuplicateKeys!1868 (_2!30228 (h!58703 lt!1853451))))))

(declare-fun m!5598923 () Bool)

(assert (=> bs!1089066 m!5598923))

(assert (=> b!4693286 d!1491820))

(declare-fun b_lambda!177099 () Bool)

(assert (= b_lambda!177093 (or start!475052 b_lambda!177099)))

(declare-fun bs!1089069 () Bool)

(declare-fun d!1491822 () Bool)

(assert (= bs!1089069 (and d!1491822 start!475052)))

(assert (=> bs!1089069 (= (dynLambda!21723 lambda!207967 lt!1853439) (noDuplicateKeys!1868 (_2!30228 lt!1853439)))))

(declare-fun m!5598925 () Bool)

(assert (=> bs!1089069 m!5598925))

(assert (=> d!1491750 d!1491822))

(declare-fun b_lambda!177101 () Bool)

(assert (= b_lambda!177091 (or start!475052 b_lambda!177101)))

(declare-fun bs!1089071 () Bool)

(declare-fun d!1491824 () Bool)

(assert (= bs!1089071 (and d!1491824 start!475052)))

(assert (=> bs!1089071 (= (dynLambda!21723 lambda!207967 (h!58703 (toList!5626 lm!2023))) (noDuplicateKeys!1868 (_2!30228 (h!58703 (toList!5626 lm!2023)))))))

(assert (=> bs!1089071 m!5598569))

(assert (=> b!4693320 d!1491824))

(check-sat (not d!1491738) (not bm!328014) (not b!4693280) (not b!4693239) (not d!1491700) (not bm!328030) (not bm!328024) (not b!4693432) (not d!1491600) (not b!4693334) (not d!1491602) (not d!1491692) (not b!4693344) (not b!4693290) (not b!4693376) (not d!1491792) (not b!4693259) (not bm!328010) (not b!4693207) (not d!1491702) (not b!4693437) (not d!1491732) (not bm!328011) (not bm!328020) (not d!1491646) (not bs!1089066) (not d!1491680) (not bs!1089069) (not bm!328022) (not b!4693136) (not b!4693318) (not b!4693266) (not b!4693428) (not d!1491708) (not b!4693237) (not b!4693264) (not b!4693042) (not b!4693243) (not d!1491746) (not d!1491642) (not b!4693161) (not b!4693261) (not b!4693375) (not d!1491720) (not d!1491744) (not b_lambda!177099) (not b!4693268) (not d!1491684) (not bm!328028) (not bm!328026) (not d!1491722) (not d!1491688) (not b!4693278) (not b!4693232) (not b!4693395) (not b!4693454) (not b!4693377) (not d!1491660) (not b!4693230) (not b!4693306) (not bm!328023) (not d!1491668) (not b!4693229) (not bm!328021) (not d!1491718) (not b!4693139) (not b!4693141) (not d!1491606) (not d!1491730) (not d!1491648) (not b!4693043) (not b!4693287) (not d!1491786) (not b!4693307) (not d!1491694) (not b!4693119) (not d!1491704) (not b!4693200) (not bs!1089071) (not b!4693386) (not b!4693234) (not d!1491750) (not b!4693438) (not b!4693233) (not bm!328027) (not bm!328025) (not b!4693427) (not b!4693204) tp_is_empty!30765 (not b!4693202) (not b!4693118) tp_is_empty!30767 (not b!4693242) (not d!1491714) (not b!4693270) (not d!1491696) (not b!4693302) (not b!4693443) (not d!1491686) (not b!4693304) (not b!4693397) (not bm!328012) (not d!1491742) (not d!1491794) (not b_lambda!177101) (not d!1491650) (not b!4693240) (not d!1491726) (not d!1491800) (not bm!328013) (not b!4693203) (not b!4693121) (not b!4693238) (not d!1491728) (not b!4693321) (not b!4693265) (not b!4693310) (not d!1491798) (not b!4693255) (not b!4693429) (not b!4693263) (not b!4693142) (not b_lambda!177097) (not b!4693276) (not b!4693205) (not b!4693208) (not d!1491698) (not d!1491682) (not d!1491666) (not b!4693269) (not b!4693213) (not d!1491678) (not b!4693301) (not b!4693241) (not bm!328029) (not b!4693453) (not d!1491690) (not b!4693120) (not d!1491802) (not b!4693235) (not b!4693305) (not b!4693214) (not d!1491636) (not d!1491756) (not b!4693378) (not d!1491710) (not d!1491706) (not b!4693388) (not b!4693431) (not bm!328009) (not b!4693140))
(check-sat)
