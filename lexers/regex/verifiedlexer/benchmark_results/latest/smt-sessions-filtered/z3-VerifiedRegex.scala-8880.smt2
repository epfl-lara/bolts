; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474784 () Bool)

(assert start!474784)

(declare-fun tp_is_empty!30743 () Bool)

(declare-fun tp_is_empty!30741 () Bool)

(declare-fun e!2926915 () Bool)

(declare-fun tp!1346047 () Bool)

(declare-fun b!4691749 () Bool)

(assert (=> b!4691749 (= e!2926915 (and tp_is_empty!30741 tp_is_empty!30743 tp!1346047))))

(declare-fun b!4691750 () Bool)

(declare-fun res!1979251 () Bool)

(declare-fun e!2926913 () Bool)

(assert (=> b!4691750 (=> (not res!1979251) (not e!2926913))))

(declare-datatypes ((K!13805 0))(
  ( (K!13806 (val!19315 Int)) )
))
(declare-datatypes ((V!14051 0))(
  ( (V!14052 (val!19316 Int)) )
))
(declare-datatypes ((tuple2!53842 0))(
  ( (tuple2!53843 (_1!30215 K!13805) (_2!30215 V!14051)) )
))
(declare-datatypes ((List!52555 0))(
  ( (Nil!52431) (Cons!52431 (h!58682 tuple2!53842) (t!359737 List!52555)) )
))
(declare-datatypes ((tuple2!53844 0))(
  ( (tuple2!53845 (_1!30216 (_ BitVec 64)) (_2!30216 List!52555)) )
))
(declare-datatypes ((List!52556 0))(
  ( (Nil!52432) (Cons!52432 (h!58683 tuple2!53844) (t!359738 List!52556)) )
))
(declare-datatypes ((ListLongMap!4143 0))(
  ( (ListLongMap!4144 (toList!5613 List!52556)) )
))
(declare-fun lm!2023 () ListLongMap!4143)

(declare-datatypes ((Hashable!6231 0))(
  ( (HashableExt!6230 (__x!31934 Int)) )
))
(declare-fun hashF!1323 () Hashable!6231)

(declare-fun allKeysSameHashInMap!1776 (ListLongMap!4143 Hashable!6231) Bool)

(assert (=> b!4691750 (= res!1979251 (allKeysSameHashInMap!1776 lm!2023 hashF!1323))))

(declare-fun b!4691751 () Bool)

(declare-fun e!2926909 () Bool)

(declare-fun e!2926908 () Bool)

(assert (=> b!4691751 (= e!2926909 e!2926908)))

(declare-fun res!1979249 () Bool)

(assert (=> b!4691751 (=> res!1979249 e!2926908)))

(declare-datatypes ((ListMap!4977 0))(
  ( (ListMap!4978 (toList!5614 List!52555)) )
))
(declare-fun lt!1851847 () ListMap!4977)

(declare-fun oldBucket!34 () List!52555)

(declare-fun lt!1851848 () ListMap!4977)

(declare-fun eq!1021 (ListMap!4977 ListMap!4977) Bool)

(declare-fun +!2146 (ListMap!4977 tuple2!53842) ListMap!4977)

(assert (=> b!4691751 (= res!1979249 (not (eq!1021 lt!1851848 (+!2146 lt!1851847 (h!58682 oldBucket!34)))))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1851842 () List!52555)

(declare-fun extractMap!1888 (List!52556) ListMap!4977)

(assert (=> b!4691751 (= lt!1851847 (extractMap!1888 (Cons!52432 (tuple2!53845 hash!405 lt!1851842) (t!359738 (toList!5613 lm!2023)))))))

(declare-fun lt!1851837 () tuple2!53844)

(assert (=> b!4691751 (= lt!1851848 (extractMap!1888 (Cons!52432 lt!1851837 (t!359738 (toList!5613 lm!2023)))))))

(declare-fun lt!1851838 () tuple2!53842)

(declare-fun lt!1851844 () List!52555)

(declare-fun lt!1851846 () ListMap!4977)

(declare-fun addToMapMapFromBucket!1294 (List!52555 ListMap!4977) ListMap!4977)

(assert (=> b!4691751 (eq!1021 (addToMapMapFromBucket!1294 (Cons!52431 lt!1851838 lt!1851844) lt!1851846) (+!2146 (addToMapMapFromBucket!1294 lt!1851844 lt!1851846) lt!1851838))))

(declare-datatypes ((Unit!124401 0))(
  ( (Unit!124402) )
))
(declare-fun lt!1851840 () Unit!124401)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!270 (tuple2!53842 List!52555 ListMap!4977) Unit!124401)

(assert (=> b!4691751 (= lt!1851840 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!270 lt!1851838 lt!1851844 lt!1851846))))

(declare-fun newBucket!218 () List!52555)

(declare-fun head!9987 (List!52555) tuple2!53842)

(assert (=> b!4691751 (= lt!1851838 (head!9987 newBucket!218))))

(declare-fun lt!1851831 () tuple2!53842)

(assert (=> b!4691751 (eq!1021 (addToMapMapFromBucket!1294 (Cons!52431 lt!1851831 lt!1851842) lt!1851846) (+!2146 (addToMapMapFromBucket!1294 lt!1851842 lt!1851846) lt!1851831))))

(declare-fun lt!1851839 () Unit!124401)

(assert (=> b!4691751 (= lt!1851839 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!270 lt!1851831 lt!1851842 lt!1851846))))

(assert (=> b!4691751 (= lt!1851831 (head!9987 oldBucket!34))))

(declare-fun lt!1851830 () List!52556)

(declare-fun key!4653 () K!13805)

(declare-fun contains!15644 (ListMap!4977 K!13805) Bool)

(assert (=> b!4691751 (contains!15644 (extractMap!1888 lt!1851830) key!4653)))

(declare-fun lt!1851836 () ListLongMap!4143)

(declare-fun lt!1851843 () Unit!124401)

(declare-fun lemmaListContainsThenExtractedMapContains!454 (ListLongMap!4143 K!13805 Hashable!6231) Unit!124401)

(assert (=> b!4691751 (= lt!1851843 (lemmaListContainsThenExtractedMapContains!454 lt!1851836 key!4653 hashF!1323))))

(assert (=> b!4691751 (= lt!1851836 (ListLongMap!4144 lt!1851830))))

(assert (=> b!4691751 (= lt!1851830 (Cons!52432 (tuple2!53845 hash!405 (t!359737 oldBucket!34)) (t!359738 (toList!5613 lm!2023))))))

(declare-fun b!4691752 () Bool)

(declare-fun res!1979237 () Bool)

(assert (=> b!4691752 (=> res!1979237 e!2926908)))

(declare-fun allKeysSameHash!1688 (List!52555 (_ BitVec 64) Hashable!6231) Bool)

(assert (=> b!4691752 (= res!1979237 (not (allKeysSameHash!1688 lt!1851844 hash!405 hashF!1323)))))

(declare-fun b!4691753 () Bool)

(declare-fun res!1979255 () Bool)

(declare-fun e!2926910 () Bool)

(assert (=> b!4691753 (=> (not res!1979255) (not e!2926910))))

(assert (=> b!4691753 (= res!1979255 (allKeysSameHash!1688 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4691754 () Bool)

(declare-fun res!1979254 () Bool)

(assert (=> b!4691754 (=> res!1979254 e!2926908)))

(declare-fun noDuplicateKeys!1862 (List!52555) Bool)

(assert (=> b!4691754 (= res!1979254 (not (noDuplicateKeys!1862 (t!359737 oldBucket!34))))))

(declare-fun b!4691755 () Bool)

(declare-fun e!2926916 () Bool)

(assert (=> b!4691755 (= e!2926916 e!2926909)))

(declare-fun res!1979244 () Bool)

(assert (=> b!4691755 (=> res!1979244 e!2926909)))

(declare-fun removePairForKey!1457 (List!52555 K!13805) List!52555)

(assert (=> b!4691755 (= res!1979244 (not (= (removePairForKey!1457 lt!1851842 key!4653) lt!1851844)))))

(declare-fun tail!8612 (List!52555) List!52555)

(assert (=> b!4691755 (= lt!1851844 (tail!8612 newBucket!218))))

(assert (=> b!4691755 (= lt!1851842 (tail!8612 oldBucket!34))))

(declare-fun b!4691756 () Bool)

(declare-fun res!1979257 () Bool)

(assert (=> b!4691756 (=> (not res!1979257) (not e!2926910))))

(assert (=> b!4691756 (= res!1979257 (noDuplicateKeys!1862 newBucket!218))))

(declare-fun b!4691757 () Bool)

(declare-fun res!1979241 () Bool)

(declare-fun e!2926914 () Bool)

(assert (=> b!4691757 (=> (not res!1979241) (not e!2926914))))

(get-info :version)

(assert (=> b!4691757 (= res!1979241 ((_ is Cons!52432) (toList!5613 lm!2023)))))

(declare-fun b!4691758 () Bool)

(declare-fun res!1979242 () Bool)

(assert (=> b!4691758 (=> res!1979242 e!2926908)))

(assert (=> b!4691758 (= res!1979242 (not (noDuplicateKeys!1862 lt!1851844)))))

(declare-fun b!4691760 () Bool)

(assert (=> b!4691760 (= e!2926908 true)))

(declare-fun b!4691761 () Bool)

(declare-fun res!1979243 () Bool)

(assert (=> b!4691761 (=> res!1979243 e!2926908)))

(assert (=> b!4691761 (= res!1979243 (not (allKeysSameHash!1688 (t!359737 oldBucket!34) hash!405 hashF!1323)))))

(declare-fun b!4691762 () Bool)

(declare-fun res!1979246 () Bool)

(assert (=> b!4691762 (=> res!1979246 e!2926909)))

(assert (=> b!4691762 (= res!1979246 (not (= (removePairForKey!1457 (t!359737 oldBucket!34) key!4653) lt!1851844)))))

(declare-fun b!4691763 () Bool)

(declare-fun e!2926911 () Bool)

(assert (=> b!4691763 (= e!2926911 e!2926913)))

(declare-fun res!1979239 () Bool)

(assert (=> b!4691763 (=> (not res!1979239) (not e!2926913))))

(declare-fun lt!1851835 () (_ BitVec 64))

(assert (=> b!4691763 (= res!1979239 (= lt!1851835 hash!405))))

(declare-fun hash!4079 (Hashable!6231 K!13805) (_ BitVec 64))

(assert (=> b!4691763 (= lt!1851835 (hash!4079 hashF!1323 key!4653))))

(declare-fun b!4691764 () Bool)

(assert (=> b!4691764 (= e!2926910 e!2926911)))

(declare-fun res!1979256 () Bool)

(assert (=> b!4691764 (=> (not res!1979256) (not e!2926911))))

(declare-fun lt!1851832 () ListMap!4977)

(assert (=> b!4691764 (= res!1979256 (contains!15644 lt!1851832 key!4653))))

(assert (=> b!4691764 (= lt!1851832 (extractMap!1888 (toList!5613 lm!2023)))))

(declare-fun b!4691765 () Bool)

(declare-fun res!1979238 () Bool)

(assert (=> b!4691765 (=> (not res!1979238) (not e!2926910))))

(assert (=> b!4691765 (= res!1979238 (noDuplicateKeys!1862 oldBucket!34))))

(declare-fun b!4691766 () Bool)

(declare-fun res!1979234 () Bool)

(assert (=> b!4691766 (=> res!1979234 e!2926908)))

(assert (=> b!4691766 (= res!1979234 (not (= (h!58682 oldBucket!34) lt!1851838)))))

(declare-fun b!4691767 () Bool)

(declare-fun e!2926907 () Bool)

(assert (=> b!4691767 (= e!2926914 (not e!2926907))))

(declare-fun res!1979248 () Bool)

(assert (=> b!4691767 (=> res!1979248 e!2926907)))

(assert (=> b!4691767 (= res!1979248 (or (and ((_ is Cons!52431) oldBucket!34) (= (_1!30215 (h!58682 oldBucket!34)) key!4653)) (not ((_ is Cons!52431) oldBucket!34)) (= (_1!30215 (h!58682 oldBucket!34)) key!4653)))))

(assert (=> b!4691767 (= lt!1851832 (addToMapMapFromBucket!1294 (_2!30216 (h!58683 (toList!5613 lm!2023))) lt!1851846))))

(assert (=> b!4691767 (= lt!1851846 (extractMap!1888 (t!359738 (toList!5613 lm!2023))))))

(declare-fun tail!8613 (ListLongMap!4143) ListLongMap!4143)

(assert (=> b!4691767 (= (t!359738 (toList!5613 lm!2023)) (toList!5613 (tail!8613 lm!2023)))))

(declare-fun b!4691768 () Bool)

(declare-fun res!1979250 () Bool)

(assert (=> b!4691768 (=> (not res!1979250) (not e!2926913))))

(assert (=> b!4691768 (= res!1979250 (allKeysSameHash!1688 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4691769 () Bool)

(declare-fun tp!1346049 () Bool)

(declare-fun e!2926906 () Bool)

(assert (=> b!4691769 (= e!2926906 (and tp_is_empty!30741 tp_is_empty!30743 tp!1346049))))

(declare-fun b!4691770 () Bool)

(declare-fun res!1979236 () Bool)

(assert (=> b!4691770 (=> res!1979236 e!2926908)))

(declare-fun lambda!207609 () Int)

(declare-fun forall!11335 (List!52556 Int) Bool)

(assert (=> b!4691770 (= res!1979236 (not (forall!11335 lt!1851830 lambda!207609)))))

(declare-fun b!4691771 () Bool)

(declare-fun res!1979240 () Bool)

(assert (=> b!4691771 (=> (not res!1979240) (not e!2926910))))

(assert (=> b!4691771 (= res!1979240 (= (removePairForKey!1457 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4691772 () Bool)

(declare-fun res!1979235 () Bool)

(assert (=> b!4691772 (=> res!1979235 e!2926908)))

(assert (=> b!4691772 (= res!1979235 (not (allKeysSameHashInMap!1776 lt!1851836 hashF!1323)))))

(declare-fun b!4691773 () Bool)

(assert (=> b!4691773 (= e!2926907 e!2926916)))

(declare-fun res!1979245 () Bool)

(assert (=> b!4691773 (=> res!1979245 e!2926916)))

(declare-fun containsKey!3073 (List!52555 K!13805) Bool)

(assert (=> b!4691773 (= res!1979245 (not (containsKey!3073 (t!359737 oldBucket!34) key!4653)))))

(assert (=> b!4691773 (containsKey!3073 oldBucket!34 key!4653)))

(declare-fun lt!1851834 () Unit!124401)

(declare-fun lemmaGetPairDefinedThenContainsKey!214 (List!52555 K!13805 Hashable!6231) Unit!124401)

(assert (=> b!4691773 (= lt!1851834 (lemmaGetPairDefinedThenContainsKey!214 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1851829 () List!52555)

(declare-datatypes ((Option!12097 0))(
  ( (None!12096) (Some!12096 (v!46523 tuple2!53842)) )
))
(declare-fun isDefined!9352 (Option!12097) Bool)

(declare-fun getPair!466 (List!52555 K!13805) Option!12097)

(assert (=> b!4691773 (isDefined!9352 (getPair!466 lt!1851829 key!4653))))

(declare-fun lt!1851833 () tuple2!53844)

(declare-fun lt!1851827 () Unit!124401)

(declare-fun forallContained!3442 (List!52556 Int tuple2!53844) Unit!124401)

(assert (=> b!4691773 (= lt!1851827 (forallContained!3442 (toList!5613 lm!2023) lambda!207609 lt!1851833))))

(declare-fun contains!15645 (List!52556 tuple2!53844) Bool)

(assert (=> b!4691773 (contains!15645 (toList!5613 lm!2023) lt!1851833)))

(assert (=> b!4691773 (= lt!1851833 (tuple2!53845 lt!1851835 lt!1851829))))

(declare-fun lt!1851841 () Unit!124401)

(declare-fun lemmaGetValueImpliesTupleContained!271 (ListLongMap!4143 (_ BitVec 64) List!52555) Unit!124401)

(assert (=> b!4691773 (= lt!1851841 (lemmaGetValueImpliesTupleContained!271 lm!2023 lt!1851835 lt!1851829))))

(declare-fun apply!12345 (ListLongMap!4143 (_ BitVec 64)) List!52555)

(assert (=> b!4691773 (= lt!1851829 (apply!12345 lm!2023 lt!1851835))))

(declare-fun contains!15646 (ListLongMap!4143 (_ BitVec 64)) Bool)

(assert (=> b!4691773 (contains!15646 lm!2023 lt!1851835)))

(declare-fun lt!1851828 () Unit!124401)

(declare-fun lemmaInGenMapThenLongMapContainsHash!672 (ListLongMap!4143 K!13805 Hashable!6231) Unit!124401)

(assert (=> b!4691773 (= lt!1851828 (lemmaInGenMapThenLongMapContainsHash!672 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1851845 () Unit!124401)

(declare-fun lemmaInGenMapThenGetPairDefined!262 (ListLongMap!4143 K!13805 Hashable!6231) Unit!124401)

(assert (=> b!4691773 (= lt!1851845 (lemmaInGenMapThenGetPairDefined!262 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4691774 () Bool)

(declare-fun res!1979247 () Bool)

(assert (=> b!4691774 (=> res!1979247 e!2926908)))

(assert (=> b!4691774 (= res!1979247 (not (eq!1021 lt!1851848 (+!2146 lt!1851847 lt!1851838))))))

(declare-fun b!4691775 () Bool)

(assert (=> b!4691775 (= e!2926913 e!2926914)))

(declare-fun res!1979253 () Bool)

(assert (=> b!4691775 (=> (not res!1979253) (not e!2926914))))

(declare-fun head!9988 (List!52556) tuple2!53844)

(assert (=> b!4691775 (= res!1979253 (= (head!9988 (toList!5613 lm!2023)) lt!1851837))))

(assert (=> b!4691775 (= lt!1851837 (tuple2!53845 hash!405 oldBucket!34))))

(declare-fun b!4691759 () Bool)

(declare-fun e!2926912 () Bool)

(declare-fun tp!1346048 () Bool)

(assert (=> b!4691759 (= e!2926912 tp!1346048)))

(declare-fun res!1979252 () Bool)

(assert (=> start!474784 (=> (not res!1979252) (not e!2926910))))

(assert (=> start!474784 (= res!1979252 (forall!11335 (toList!5613 lm!2023) lambda!207609))))

(assert (=> start!474784 e!2926910))

(declare-fun inv!67679 (ListLongMap!4143) Bool)

(assert (=> start!474784 (and (inv!67679 lm!2023) e!2926912)))

(assert (=> start!474784 tp_is_empty!30741))

(assert (=> start!474784 e!2926906))

(assert (=> start!474784 true))

(assert (=> start!474784 e!2926915))

(assert (= (and start!474784 res!1979252) b!4691765))

(assert (= (and b!4691765 res!1979238) b!4691756))

(assert (= (and b!4691756 res!1979257) b!4691771))

(assert (= (and b!4691771 res!1979240) b!4691753))

(assert (= (and b!4691753 res!1979255) b!4691764))

(assert (= (and b!4691764 res!1979256) b!4691763))

(assert (= (and b!4691763 res!1979239) b!4691768))

(assert (= (and b!4691768 res!1979250) b!4691750))

(assert (= (and b!4691750 res!1979251) b!4691775))

(assert (= (and b!4691775 res!1979253) b!4691757))

(assert (= (and b!4691757 res!1979241) b!4691767))

(assert (= (and b!4691767 (not res!1979248)) b!4691773))

(assert (= (and b!4691773 (not res!1979245)) b!4691755))

(assert (= (and b!4691755 (not res!1979244)) b!4691762))

(assert (= (and b!4691762 (not res!1979246)) b!4691751))

(assert (= (and b!4691751 (not res!1979249)) b!4691766))

(assert (= (and b!4691766 (not res!1979234)) b!4691774))

(assert (= (and b!4691774 (not res!1979247)) b!4691770))

(assert (= (and b!4691770 (not res!1979236)) b!4691754))

(assert (= (and b!4691754 (not res!1979254)) b!4691758))

(assert (= (and b!4691758 (not res!1979242)) b!4691761))

(assert (= (and b!4691761 (not res!1979243)) b!4691752))

(assert (= (and b!4691752 (not res!1979237)) b!4691772))

(assert (= (and b!4691772 (not res!1979235)) b!4691760))

(assert (= start!474784 b!4691759))

(assert (= (and start!474784 ((_ is Cons!52431) oldBucket!34)) b!4691769))

(assert (= (and start!474784 ((_ is Cons!52431) newBucket!218)) b!4691749))

(declare-fun m!5595339 () Bool)

(assert (=> b!4691751 m!5595339))

(declare-fun m!5595341 () Bool)

(assert (=> b!4691751 m!5595341))

(declare-fun m!5595343 () Bool)

(assert (=> b!4691751 m!5595343))

(declare-fun m!5595345 () Bool)

(assert (=> b!4691751 m!5595345))

(declare-fun m!5595347 () Bool)

(assert (=> b!4691751 m!5595347))

(declare-fun m!5595349 () Bool)

(assert (=> b!4691751 m!5595349))

(declare-fun m!5595351 () Bool)

(assert (=> b!4691751 m!5595351))

(assert (=> b!4691751 m!5595349))

(declare-fun m!5595353 () Bool)

(assert (=> b!4691751 m!5595353))

(declare-fun m!5595355 () Bool)

(assert (=> b!4691751 m!5595355))

(declare-fun m!5595357 () Bool)

(assert (=> b!4691751 m!5595357))

(declare-fun m!5595359 () Bool)

(assert (=> b!4691751 m!5595359))

(declare-fun m!5595361 () Bool)

(assert (=> b!4691751 m!5595361))

(declare-fun m!5595363 () Bool)

(assert (=> b!4691751 m!5595363))

(declare-fun m!5595365 () Bool)

(assert (=> b!4691751 m!5595365))

(assert (=> b!4691751 m!5595341))

(declare-fun m!5595367 () Bool)

(assert (=> b!4691751 m!5595367))

(assert (=> b!4691751 m!5595365))

(declare-fun m!5595369 () Bool)

(assert (=> b!4691751 m!5595369))

(assert (=> b!4691751 m!5595353))

(assert (=> b!4691751 m!5595357))

(declare-fun m!5595371 () Bool)

(assert (=> b!4691751 m!5595371))

(declare-fun m!5595373 () Bool)

(assert (=> b!4691751 m!5595373))

(declare-fun m!5595375 () Bool)

(assert (=> b!4691751 m!5595375))

(assert (=> b!4691751 m!5595339))

(assert (=> b!4691751 m!5595361))

(assert (=> b!4691751 m!5595371))

(declare-fun m!5595377 () Bool)

(assert (=> b!4691762 m!5595377))

(declare-fun m!5595379 () Bool)

(assert (=> b!4691763 m!5595379))

(declare-fun m!5595381 () Bool)

(assert (=> b!4691750 m!5595381))

(declare-fun m!5595383 () Bool)

(assert (=> start!474784 m!5595383))

(declare-fun m!5595385 () Bool)

(assert (=> start!474784 m!5595385))

(declare-fun m!5595387 () Bool)

(assert (=> b!4691767 m!5595387))

(declare-fun m!5595389 () Bool)

(assert (=> b!4691767 m!5595389))

(declare-fun m!5595391 () Bool)

(assert (=> b!4691767 m!5595391))

(declare-fun m!5595393 () Bool)

(assert (=> b!4691773 m!5595393))

(declare-fun m!5595395 () Bool)

(assert (=> b!4691773 m!5595395))

(declare-fun m!5595397 () Bool)

(assert (=> b!4691773 m!5595397))

(declare-fun m!5595399 () Bool)

(assert (=> b!4691773 m!5595399))

(declare-fun m!5595401 () Bool)

(assert (=> b!4691773 m!5595401))

(declare-fun m!5595403 () Bool)

(assert (=> b!4691773 m!5595403))

(declare-fun m!5595405 () Bool)

(assert (=> b!4691773 m!5595405))

(declare-fun m!5595407 () Bool)

(assert (=> b!4691773 m!5595407))

(declare-fun m!5595409 () Bool)

(assert (=> b!4691773 m!5595409))

(declare-fun m!5595411 () Bool)

(assert (=> b!4691773 m!5595411))

(assert (=> b!4691773 m!5595397))

(declare-fun m!5595413 () Bool)

(assert (=> b!4691773 m!5595413))

(declare-fun m!5595415 () Bool)

(assert (=> b!4691773 m!5595415))

(declare-fun m!5595417 () Bool)

(assert (=> b!4691755 m!5595417))

(declare-fun m!5595419 () Bool)

(assert (=> b!4691755 m!5595419))

(declare-fun m!5595421 () Bool)

(assert (=> b!4691755 m!5595421))

(declare-fun m!5595423 () Bool)

(assert (=> b!4691775 m!5595423))

(declare-fun m!5595425 () Bool)

(assert (=> b!4691765 m!5595425))

(declare-fun m!5595427 () Bool)

(assert (=> b!4691768 m!5595427))

(declare-fun m!5595429 () Bool)

(assert (=> b!4691758 m!5595429))

(declare-fun m!5595431 () Bool)

(assert (=> b!4691764 m!5595431))

(declare-fun m!5595433 () Bool)

(assert (=> b!4691764 m!5595433))

(declare-fun m!5595435 () Bool)

(assert (=> b!4691774 m!5595435))

(assert (=> b!4691774 m!5595435))

(declare-fun m!5595437 () Bool)

(assert (=> b!4691774 m!5595437))

(declare-fun m!5595439 () Bool)

(assert (=> b!4691771 m!5595439))

(declare-fun m!5595441 () Bool)

(assert (=> b!4691752 m!5595441))

(declare-fun m!5595443 () Bool)

(assert (=> b!4691753 m!5595443))

(declare-fun m!5595445 () Bool)

(assert (=> b!4691754 m!5595445))

(declare-fun m!5595447 () Bool)

(assert (=> b!4691772 m!5595447))

(declare-fun m!5595449 () Bool)

(assert (=> b!4691761 m!5595449))

(declare-fun m!5595451 () Bool)

(assert (=> b!4691756 m!5595451))

(declare-fun m!5595453 () Bool)

(assert (=> b!4691770 m!5595453))

(check-sat (not b!4691763) tp_is_empty!30743 (not b!4691773) (not b!4691749) (not b!4691768) (not b!4691771) (not start!474784) (not b!4691775) tp_is_empty!30741 (not b!4691772) (not b!4691755) (not b!4691754) (not b!4691752) (not b!4691769) (not b!4691756) (not b!4691761) (not b!4691750) (not b!4691753) (not b!4691759) (not b!4691767) (not b!4691770) (not b!4691774) (not b!4691762) (not b!4691758) (not b!4691751) (not b!4691765) (not b!4691764))
(check-sat)
