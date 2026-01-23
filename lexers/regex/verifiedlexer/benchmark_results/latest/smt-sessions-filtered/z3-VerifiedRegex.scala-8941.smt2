; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479484 () Bool)

(assert start!479484)

(declare-fun b!4715197 () Bool)

(declare-fun e!2940823 () Bool)

(declare-fun tp!1347886 () Bool)

(assert (=> b!4715197 (= e!2940823 tp!1347886)))

(declare-fun b!4715198 () Bool)

(declare-fun res!1993657 () Bool)

(declare-fun e!2940818 () Bool)

(assert (=> b!4715198 (=> (not res!1993657) (not e!2940818))))

(declare-datatypes ((K!14110 0))(
  ( (K!14111 (val!19559 Int)) )
))
(declare-datatypes ((V!14356 0))(
  ( (V!14357 (val!19560 Int)) )
))
(declare-datatypes ((tuple2!54330 0))(
  ( (tuple2!54331 (_1!30459 K!14110) (_2!30459 V!14356)) )
))
(declare-datatypes ((List!52873 0))(
  ( (Nil!52749) (Cons!52749 (h!59074 tuple2!54330) (t!360121 List!52873)) )
))
(declare-datatypes ((tuple2!54332 0))(
  ( (tuple2!54333 (_1!30460 (_ BitVec 64)) (_2!30460 List!52873)) )
))
(declare-datatypes ((List!52874 0))(
  ( (Nil!52750) (Cons!52750 (h!59075 tuple2!54332) (t!360122 List!52874)) )
))
(declare-datatypes ((ListLongMap!4387 0))(
  ( (ListLongMap!4388 (toList!5857 List!52874)) )
))
(declare-fun lm!2023 () ListLongMap!4387)

(get-info :version)

(assert (=> b!4715198 (= res!1993657 ((_ is Cons!52750) (toList!5857 lm!2023)))))

(declare-fun tp!1347887 () Bool)

(declare-fun b!4715199 () Bool)

(declare-fun tp_is_empty!31229 () Bool)

(declare-fun e!2940824 () Bool)

(declare-fun tp_is_empty!31231 () Bool)

(assert (=> b!4715199 (= e!2940824 (and tp_is_empty!31229 tp_is_empty!31231 tp!1347887))))

(declare-fun b!4715200 () Bool)

(declare-fun e!2940815 () Bool)

(declare-fun e!2940817 () Bool)

(assert (=> b!4715200 (= e!2940815 e!2940817)))

(declare-fun res!1993671 () Bool)

(assert (=> b!4715200 (=> res!1993671 e!2940817)))

(declare-datatypes ((ListMap!5221 0))(
  ( (ListMap!5222 (toList!5858 List!52873)) )
))
(declare-fun lt!1880033 () ListMap!5221)

(declare-fun oldBucket!34 () List!52873)

(declare-fun lt!1880037 () ListMap!5221)

(declare-fun eq!1111 (ListMap!5221 ListMap!5221) Bool)

(declare-fun +!2244 (ListMap!5221 tuple2!54330) ListMap!5221)

(assert (=> b!4715200 (= res!1993671 (not (eq!1111 lt!1880033 (+!2244 lt!1880037 (h!59074 oldBucket!34)))))))

(declare-fun lt!1880018 () List!52873)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun extractMap!2010 (List!52874) ListMap!5221)

(assert (=> b!4715200 (= lt!1880037 (extractMap!2010 (Cons!52750 (tuple2!54333 hash!405 lt!1880018) (t!360122 (toList!5857 lm!2023)))))))

(declare-fun lt!1880038 () tuple2!54332)

(assert (=> b!4715200 (= lt!1880033 (extractMap!2010 (Cons!52750 lt!1880038 (t!360122 (toList!5857 lm!2023)))))))

(declare-fun lt!1880026 () tuple2!54330)

(declare-fun lt!1880021 () List!52873)

(declare-fun lt!1880031 () ListMap!5221)

(declare-fun addToMapMapFromBucket!1414 (List!52873 ListMap!5221) ListMap!5221)

(assert (=> b!4715200 (eq!1111 (addToMapMapFromBucket!1414 (Cons!52749 lt!1880026 lt!1880021) lt!1880031) (+!2244 (addToMapMapFromBucket!1414 lt!1880021 lt!1880031) lt!1880026))))

(declare-datatypes ((Unit!128609 0))(
  ( (Unit!128610) )
))
(declare-fun lt!1880032 () Unit!128609)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!360 (tuple2!54330 List!52873 ListMap!5221) Unit!128609)

(assert (=> b!4715200 (= lt!1880032 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!360 lt!1880026 lt!1880021 lt!1880031))))

(declare-fun newBucket!218 () List!52873)

(declare-fun head!10197 (List!52873) tuple2!54330)

(assert (=> b!4715200 (= lt!1880026 (head!10197 newBucket!218))))

(declare-fun lt!1880035 () tuple2!54330)

(assert (=> b!4715200 (eq!1111 (addToMapMapFromBucket!1414 (Cons!52749 lt!1880035 lt!1880018) lt!1880031) (+!2244 (addToMapMapFromBucket!1414 lt!1880018 lt!1880031) lt!1880035))))

(declare-fun lt!1880042 () Unit!128609)

(assert (=> b!4715200 (= lt!1880042 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!360 lt!1880035 lt!1880018 lt!1880031))))

(assert (=> b!4715200 (= lt!1880035 (head!10197 oldBucket!34))))

(declare-fun lt!1880019 () ListMap!5221)

(declare-fun key!4653 () K!14110)

(declare-fun contains!16083 (ListMap!5221 K!14110) Bool)

(assert (=> b!4715200 (contains!16083 lt!1880019 key!4653)))

(declare-fun lt!1880027 () List!52874)

(assert (=> b!4715200 (= lt!1880019 (extractMap!2010 lt!1880027))))

(declare-fun lt!1880043 () ListLongMap!4387)

(declare-datatypes ((Hashable!6353 0))(
  ( (HashableExt!6352 (__x!32056 Int)) )
))
(declare-fun hashF!1323 () Hashable!6353)

(declare-fun lt!1880016 () Unit!128609)

(declare-fun lemmaListContainsThenExtractedMapContains!530 (ListLongMap!4387 K!14110 Hashable!6353) Unit!128609)

(assert (=> b!4715200 (= lt!1880016 (lemmaListContainsThenExtractedMapContains!530 lt!1880043 key!4653 hashF!1323))))

(assert (=> b!4715200 (= lt!1880043 (ListLongMap!4388 lt!1880027))))

(declare-fun lt!1880015 () tuple2!54332)

(assert (=> b!4715200 (= lt!1880027 (Cons!52750 lt!1880015 (t!360122 (toList!5857 lm!2023))))))

(assert (=> b!4715200 (= lt!1880015 (tuple2!54333 hash!405 (t!360121 oldBucket!34)))))

(declare-fun e!2940812 () Bool)

(declare-fun b!4715201 () Bool)

(declare-fun tp!1347885 () Bool)

(assert (=> b!4715201 (= e!2940812 (and tp_is_empty!31229 tp_is_empty!31231 tp!1347885))))

(declare-fun b!4715202 () Bool)

(declare-fun e!2940819 () Bool)

(declare-fun e!2940816 () Bool)

(assert (=> b!4715202 (= e!2940819 e!2940816)))

(declare-fun res!1993659 () Bool)

(assert (=> b!4715202 (=> res!1993659 e!2940816)))

(declare-fun lt!1880014 () ListMap!5221)

(declare-fun lt!1880028 () ListMap!5221)

(assert (=> b!4715202 (= res!1993659 (not (= lt!1880014 lt!1880028)))))

(declare-fun lt!1880020 () ListMap!5221)

(assert (=> b!4715202 (= lt!1880028 (+!2244 lt!1880020 (h!59074 oldBucket!34)))))

(declare-fun -!740 (ListMap!5221 K!14110) ListMap!5221)

(assert (=> b!4715202 (= lt!1880014 (-!740 (+!2244 lt!1880019 (h!59074 oldBucket!34)) key!4653))))

(assert (=> b!4715202 (= (-!740 (+!2244 lt!1880019 (h!59074 oldBucket!34)) key!4653) (+!2244 lt!1880020 (h!59074 oldBucket!34)))))

(declare-fun lt!1880029 () Unit!128609)

(declare-fun addRemoveCommutativeForDiffKeys!131 (ListMap!5221 K!14110 V!14356 K!14110) Unit!128609)

(assert (=> b!4715202 (= lt!1880029 (addRemoveCommutativeForDiffKeys!131 lt!1880019 (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34)) key!4653))))

(declare-fun b!4715203 () Bool)

(assert (=> b!4715203 (= e!2940817 e!2940819)))

(declare-fun res!1993662 () Bool)

(assert (=> b!4715203 (=> res!1993662 e!2940819)))

(declare-fun lt!1880030 () ListMap!5221)

(assert (=> b!4715203 (= res!1993662 (not (eq!1111 lt!1880030 lt!1880020)))))

(assert (=> b!4715203 (= lt!1880020 (-!740 lt!1880019 key!4653))))

(declare-fun lt!1880036 () tuple2!54332)

(assert (=> b!4715203 (= lt!1880030 (extractMap!2010 (Cons!52750 lt!1880036 (t!360122 (toList!5857 lm!2023)))))))

(declare-fun lt!1880034 () List!52874)

(assert (=> b!4715203 (eq!1111 (extractMap!2010 (Cons!52750 lt!1880036 lt!1880034)) (-!740 (extractMap!2010 (Cons!52750 lt!1880015 lt!1880034)) key!4653))))

(declare-fun tail!8926 (List!52874) List!52874)

(assert (=> b!4715203 (= lt!1880034 (tail!8926 lt!1880027))))

(assert (=> b!4715203 (= lt!1880036 (tuple2!54333 hash!405 lt!1880021))))

(declare-fun lt!1880040 () Unit!128609)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!102 (ListLongMap!4387 (_ BitVec 64) List!52873 List!52873 K!14110 Hashable!6353) Unit!128609)

(assert (=> b!4715203 (= lt!1880040 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!102 lt!1880043 hash!405 (t!360121 oldBucket!34) lt!1880021 key!4653 hashF!1323))))

(declare-fun b!4715204 () Bool)

(declare-fun e!2940821 () Bool)

(declare-fun e!2940814 () Bool)

(assert (=> b!4715204 (= e!2940821 e!2940814)))

(declare-fun res!1993669 () Bool)

(assert (=> b!4715204 (=> (not res!1993669) (not e!2940814))))

(declare-fun lt!1880041 () (_ BitVec 64))

(assert (=> b!4715204 (= res!1993669 (= lt!1880041 hash!405))))

(declare-fun hash!4326 (Hashable!6353 K!14110) (_ BitVec 64))

(assert (=> b!4715204 (= lt!1880041 (hash!4326 hashF!1323 key!4653))))

(declare-fun b!4715205 () Bool)

(declare-fun e!2940822 () Bool)

(assert (=> b!4715205 (= e!2940822 e!2940821)))

(declare-fun res!1993653 () Bool)

(assert (=> b!4715205 (=> (not res!1993653) (not e!2940821))))

(declare-fun lt!1880013 () ListMap!5221)

(assert (=> b!4715205 (= res!1993653 (contains!16083 lt!1880013 key!4653))))

(assert (=> b!4715205 (= lt!1880013 (extractMap!2010 (toList!5857 lm!2023)))))

(declare-fun res!1993658 () Bool)

(assert (=> start!479484 (=> (not res!1993658) (not e!2940822))))

(declare-fun lambda!213795 () Int)

(declare-fun forall!11531 (List!52874 Int) Bool)

(assert (=> start!479484 (= res!1993658 (forall!11531 (toList!5857 lm!2023) lambda!213795))))

(assert (=> start!479484 e!2940822))

(declare-fun inv!67984 (ListLongMap!4387) Bool)

(assert (=> start!479484 (and (inv!67984 lm!2023) e!2940823)))

(assert (=> start!479484 tp_is_empty!31229))

(assert (=> start!479484 e!2940824))

(assert (=> start!479484 true))

(assert (=> start!479484 e!2940812))

(declare-fun b!4715206 () Bool)

(declare-fun res!1993664 () Bool)

(assert (=> b!4715206 (=> res!1993664 e!2940817)))

(assert (=> b!4715206 (= res!1993664 (not (= (h!59074 oldBucket!34) lt!1880026)))))

(declare-fun b!4715207 () Bool)

(declare-fun res!1993666 () Bool)

(assert (=> b!4715207 (=> (not res!1993666) (not e!2940814))))

(declare-fun allKeysSameHashInMap!1898 (ListLongMap!4387 Hashable!6353) Bool)

(assert (=> b!4715207 (= res!1993666 (allKeysSameHashInMap!1898 lm!2023 hashF!1323))))

(declare-fun b!4715208 () Bool)

(declare-fun res!1993661 () Bool)

(assert (=> b!4715208 (=> (not res!1993661) (not e!2940822))))

(declare-fun noDuplicateKeys!1984 (List!52873) Bool)

(assert (=> b!4715208 (= res!1993661 (noDuplicateKeys!1984 oldBucket!34))))

(declare-fun b!4715209 () Bool)

(declare-fun e!2940820 () Bool)

(declare-fun e!2940813 () Bool)

(assert (=> b!4715209 (= e!2940820 e!2940813)))

(declare-fun res!1993652 () Bool)

(assert (=> b!4715209 (=> res!1993652 e!2940813)))

(declare-fun containsKey!3313 (List!52873 K!14110) Bool)

(assert (=> b!4715209 (= res!1993652 (not (containsKey!3313 (t!360121 oldBucket!34) key!4653)))))

(assert (=> b!4715209 (containsKey!3313 oldBucket!34 key!4653)))

(declare-fun lt!1880024 () Unit!128609)

(declare-fun lemmaGetPairDefinedThenContainsKey!298 (List!52873 K!14110 Hashable!6353) Unit!128609)

(assert (=> b!4715209 (= lt!1880024 (lemmaGetPairDefinedThenContainsKey!298 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1880025 () List!52873)

(declare-datatypes ((Option!12316 0))(
  ( (None!12315) (Some!12315 (v!46866 tuple2!54330)) )
))
(declare-fun isDefined!9570 (Option!12316) Bool)

(declare-fun getPair!550 (List!52873 K!14110) Option!12316)

(assert (=> b!4715209 (isDefined!9570 (getPair!550 lt!1880025 key!4653))))

(declare-fun lt!1880044 () Unit!128609)

(declare-fun lt!1880022 () tuple2!54332)

(declare-fun forallContained!3600 (List!52874 Int tuple2!54332) Unit!128609)

(assert (=> b!4715209 (= lt!1880044 (forallContained!3600 (toList!5857 lm!2023) lambda!213795 lt!1880022))))

(declare-fun contains!16084 (List!52874 tuple2!54332) Bool)

(assert (=> b!4715209 (contains!16084 (toList!5857 lm!2023) lt!1880022)))

(assert (=> b!4715209 (= lt!1880022 (tuple2!54333 lt!1880041 lt!1880025))))

(declare-fun lt!1880039 () Unit!128609)

(declare-fun lemmaGetValueImpliesTupleContained!355 (ListLongMap!4387 (_ BitVec 64) List!52873) Unit!128609)

(assert (=> b!4715209 (= lt!1880039 (lemmaGetValueImpliesTupleContained!355 lm!2023 lt!1880041 lt!1880025))))

(declare-fun apply!12433 (ListLongMap!4387 (_ BitVec 64)) List!52873)

(assert (=> b!4715209 (= lt!1880025 (apply!12433 lm!2023 lt!1880041))))

(declare-fun contains!16085 (ListLongMap!4387 (_ BitVec 64)) Bool)

(assert (=> b!4715209 (contains!16085 lm!2023 lt!1880041)))

(declare-fun lt!1880023 () Unit!128609)

(declare-fun lemmaInGenMapThenLongMapContainsHash!756 (ListLongMap!4387 K!14110 Hashable!6353) Unit!128609)

(assert (=> b!4715209 (= lt!1880023 (lemmaInGenMapThenLongMapContainsHash!756 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1880017 () Unit!128609)

(declare-fun lemmaInGenMapThenGetPairDefined!346 (ListLongMap!4387 K!14110 Hashable!6353) Unit!128609)

(assert (=> b!4715209 (= lt!1880017 (lemmaInGenMapThenGetPairDefined!346 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4715210 () Bool)

(assert (=> b!4715210 (= e!2940814 e!2940818)))

(declare-fun res!1993660 () Bool)

(assert (=> b!4715210 (=> (not res!1993660) (not e!2940818))))

(declare-fun head!10198 (List!52874) tuple2!54332)

(assert (=> b!4715210 (= res!1993660 (= (head!10198 (toList!5857 lm!2023)) lt!1880038))))

(assert (=> b!4715210 (= lt!1880038 (tuple2!54333 hash!405 oldBucket!34))))

(declare-fun b!4715211 () Bool)

(declare-fun res!1993654 () Bool)

(assert (=> b!4715211 (=> (not res!1993654) (not e!2940814))))

(declare-fun allKeysSameHash!1810 (List!52873 (_ BitVec 64) Hashable!6353) Bool)

(assert (=> b!4715211 (= res!1993654 (allKeysSameHash!1810 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4715212 () Bool)

(declare-fun res!1993663 () Bool)

(assert (=> b!4715212 (=> (not res!1993663) (not e!2940822))))

(assert (=> b!4715212 (= res!1993663 (noDuplicateKeys!1984 newBucket!218))))

(declare-fun b!4715213 () Bool)

(assert (=> b!4715213 (= e!2940816 (eq!1111 lt!1880014 lt!1880028))))

(declare-fun b!4715214 () Bool)

(declare-fun res!1993665 () Bool)

(assert (=> b!4715214 (=> (not res!1993665) (not e!2940822))))

(assert (=> b!4715214 (= res!1993665 (allKeysSameHash!1810 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4715215 () Bool)

(assert (=> b!4715215 (= e!2940813 e!2940815)))

(declare-fun res!1993656 () Bool)

(assert (=> b!4715215 (=> res!1993656 e!2940815)))

(declare-fun removePairForKey!1579 (List!52873 K!14110) List!52873)

(assert (=> b!4715215 (= res!1993656 (not (= (removePairForKey!1579 lt!1880018 key!4653) lt!1880021)))))

(declare-fun tail!8927 (List!52873) List!52873)

(assert (=> b!4715215 (= lt!1880021 (tail!8927 newBucket!218))))

(assert (=> b!4715215 (= lt!1880018 (tail!8927 oldBucket!34))))

(declare-fun b!4715216 () Bool)

(declare-fun res!1993667 () Bool)

(assert (=> b!4715216 (=> res!1993667 e!2940815)))

(assert (=> b!4715216 (= res!1993667 (not (= (removePairForKey!1579 (t!360121 oldBucket!34) key!4653) lt!1880021)))))

(declare-fun b!4715217 () Bool)

(assert (=> b!4715217 (= e!2940818 (not e!2940820))))

(declare-fun res!1993655 () Bool)

(assert (=> b!4715217 (=> res!1993655 e!2940820)))

(assert (=> b!4715217 (= res!1993655 (or (and ((_ is Cons!52749) oldBucket!34) (= (_1!30459 (h!59074 oldBucket!34)) key!4653)) (not ((_ is Cons!52749) oldBucket!34)) (= (_1!30459 (h!59074 oldBucket!34)) key!4653)))))

(assert (=> b!4715217 (= lt!1880013 (addToMapMapFromBucket!1414 (_2!30460 (h!59075 (toList!5857 lm!2023))) lt!1880031))))

(assert (=> b!4715217 (= lt!1880031 (extractMap!2010 (t!360122 (toList!5857 lm!2023))))))

(declare-fun tail!8928 (ListLongMap!4387) ListLongMap!4387)

(assert (=> b!4715217 (= (t!360122 (toList!5857 lm!2023)) (toList!5857 (tail!8928 lm!2023)))))

(declare-fun b!4715218 () Bool)

(declare-fun res!1993668 () Bool)

(assert (=> b!4715218 (=> (not res!1993668) (not e!2940822))))

(assert (=> b!4715218 (= res!1993668 (= (removePairForKey!1579 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4715219 () Bool)

(declare-fun res!1993670 () Bool)

(assert (=> b!4715219 (=> res!1993670 e!2940817)))

(assert (=> b!4715219 (= res!1993670 (not (eq!1111 lt!1880033 (+!2244 lt!1880037 lt!1880026))))))

(assert (= (and start!479484 res!1993658) b!4715208))

(assert (= (and b!4715208 res!1993661) b!4715212))

(assert (= (and b!4715212 res!1993663) b!4715218))

(assert (= (and b!4715218 res!1993668) b!4715214))

(assert (= (and b!4715214 res!1993665) b!4715205))

(assert (= (and b!4715205 res!1993653) b!4715204))

(assert (= (and b!4715204 res!1993669) b!4715211))

(assert (= (and b!4715211 res!1993654) b!4715207))

(assert (= (and b!4715207 res!1993666) b!4715210))

(assert (= (and b!4715210 res!1993660) b!4715198))

(assert (= (and b!4715198 res!1993657) b!4715217))

(assert (= (and b!4715217 (not res!1993655)) b!4715209))

(assert (= (and b!4715209 (not res!1993652)) b!4715215))

(assert (= (and b!4715215 (not res!1993656)) b!4715216))

(assert (= (and b!4715216 (not res!1993667)) b!4715200))

(assert (= (and b!4715200 (not res!1993671)) b!4715206))

(assert (= (and b!4715206 (not res!1993664)) b!4715219))

(assert (= (and b!4715219 (not res!1993670)) b!4715203))

(assert (= (and b!4715203 (not res!1993662)) b!4715202))

(assert (= (and b!4715202 (not res!1993659)) b!4715213))

(assert (= start!479484 b!4715197))

(assert (= (and start!479484 ((_ is Cons!52749) oldBucket!34)) b!4715199))

(assert (= (and start!479484 ((_ is Cons!52749) newBucket!218)) b!4715201))

(declare-fun m!5643499 () Bool)

(assert (=> start!479484 m!5643499))

(declare-fun m!5643501 () Bool)

(assert (=> start!479484 m!5643501))

(declare-fun m!5643503 () Bool)

(assert (=> b!4715216 m!5643503))

(declare-fun m!5643505 () Bool)

(assert (=> b!4715210 m!5643505))

(declare-fun m!5643507 () Bool)

(assert (=> b!4715205 m!5643507))

(declare-fun m!5643509 () Bool)

(assert (=> b!4715205 m!5643509))

(declare-fun m!5643511 () Bool)

(assert (=> b!4715212 m!5643511))

(declare-fun m!5643513 () Bool)

(assert (=> b!4715209 m!5643513))

(declare-fun m!5643515 () Bool)

(assert (=> b!4715209 m!5643515))

(declare-fun m!5643517 () Bool)

(assert (=> b!4715209 m!5643517))

(declare-fun m!5643519 () Bool)

(assert (=> b!4715209 m!5643519))

(declare-fun m!5643521 () Bool)

(assert (=> b!4715209 m!5643521))

(declare-fun m!5643523 () Bool)

(assert (=> b!4715209 m!5643523))

(declare-fun m!5643525 () Bool)

(assert (=> b!4715209 m!5643525))

(declare-fun m!5643527 () Bool)

(assert (=> b!4715209 m!5643527))

(declare-fun m!5643529 () Bool)

(assert (=> b!4715209 m!5643529))

(declare-fun m!5643531 () Bool)

(assert (=> b!4715209 m!5643531))

(declare-fun m!5643533 () Bool)

(assert (=> b!4715209 m!5643533))

(assert (=> b!4715209 m!5643519))

(declare-fun m!5643535 () Bool)

(assert (=> b!4715209 m!5643535))

(declare-fun m!5643537 () Bool)

(assert (=> b!4715217 m!5643537))

(declare-fun m!5643539 () Bool)

(assert (=> b!4715217 m!5643539))

(declare-fun m!5643541 () Bool)

(assert (=> b!4715217 m!5643541))

(declare-fun m!5643543 () Bool)

(assert (=> b!4715208 m!5643543))

(declare-fun m!5643545 () Bool)

(assert (=> b!4715203 m!5643545))

(declare-fun m!5643547 () Bool)

(assert (=> b!4715203 m!5643547))

(assert (=> b!4715203 m!5643545))

(declare-fun m!5643549 () Bool)

(assert (=> b!4715203 m!5643549))

(declare-fun m!5643551 () Bool)

(assert (=> b!4715203 m!5643551))

(declare-fun m!5643553 () Bool)

(assert (=> b!4715203 m!5643553))

(declare-fun m!5643555 () Bool)

(assert (=> b!4715203 m!5643555))

(assert (=> b!4715203 m!5643549))

(declare-fun m!5643557 () Bool)

(assert (=> b!4715203 m!5643557))

(declare-fun m!5643559 () Bool)

(assert (=> b!4715203 m!5643559))

(assert (=> b!4715203 m!5643555))

(declare-fun m!5643561 () Bool)

(assert (=> b!4715203 m!5643561))

(declare-fun m!5643563 () Bool)

(assert (=> b!4715214 m!5643563))

(declare-fun m!5643565 () Bool)

(assert (=> b!4715211 m!5643565))

(declare-fun m!5643567 () Bool)

(assert (=> b!4715213 m!5643567))

(declare-fun m!5643569 () Bool)

(assert (=> b!4715207 m!5643569))

(declare-fun m!5643571 () Bool)

(assert (=> b!4715218 m!5643571))

(declare-fun m!5643573 () Bool)

(assert (=> b!4715200 m!5643573))

(declare-fun m!5643575 () Bool)

(assert (=> b!4715200 m!5643575))

(declare-fun m!5643577 () Bool)

(assert (=> b!4715200 m!5643577))

(assert (=> b!4715200 m!5643577))

(declare-fun m!5643579 () Bool)

(assert (=> b!4715200 m!5643579))

(declare-fun m!5643581 () Bool)

(assert (=> b!4715200 m!5643581))

(declare-fun m!5643583 () Bool)

(assert (=> b!4715200 m!5643583))

(declare-fun m!5643585 () Bool)

(assert (=> b!4715200 m!5643585))

(declare-fun m!5643587 () Bool)

(assert (=> b!4715200 m!5643587))

(declare-fun m!5643589 () Bool)

(assert (=> b!4715200 m!5643589))

(declare-fun m!5643591 () Bool)

(assert (=> b!4715200 m!5643591))

(declare-fun m!5643593 () Bool)

(assert (=> b!4715200 m!5643593))

(declare-fun m!5643595 () Bool)

(assert (=> b!4715200 m!5643595))

(declare-fun m!5643597 () Bool)

(assert (=> b!4715200 m!5643597))

(declare-fun m!5643599 () Bool)

(assert (=> b!4715200 m!5643599))

(assert (=> b!4715200 m!5643583))

(declare-fun m!5643601 () Bool)

(assert (=> b!4715200 m!5643601))

(declare-fun m!5643603 () Bool)

(assert (=> b!4715200 m!5643603))

(assert (=> b!4715200 m!5643597))

(assert (=> b!4715200 m!5643601))

(declare-fun m!5643605 () Bool)

(assert (=> b!4715200 m!5643605))

(declare-fun m!5643607 () Bool)

(assert (=> b!4715200 m!5643607))

(assert (=> b!4715200 m!5643599))

(assert (=> b!4715200 m!5643579))

(assert (=> b!4715200 m!5643587))

(declare-fun m!5643609 () Bool)

(assert (=> b!4715200 m!5643609))

(declare-fun m!5643611 () Bool)

(assert (=> b!4715219 m!5643611))

(assert (=> b!4715219 m!5643611))

(declare-fun m!5643613 () Bool)

(assert (=> b!4715219 m!5643613))

(declare-fun m!5643615 () Bool)

(assert (=> b!4715204 m!5643615))

(declare-fun m!5643617 () Bool)

(assert (=> b!4715215 m!5643617))

(declare-fun m!5643619 () Bool)

(assert (=> b!4715215 m!5643619))

(declare-fun m!5643621 () Bool)

(assert (=> b!4715215 m!5643621))

(declare-fun m!5643623 () Bool)

(assert (=> b!4715202 m!5643623))

(declare-fun m!5643625 () Bool)

(assert (=> b!4715202 m!5643625))

(assert (=> b!4715202 m!5643625))

(declare-fun m!5643627 () Bool)

(assert (=> b!4715202 m!5643627))

(declare-fun m!5643629 () Bool)

(assert (=> b!4715202 m!5643629))

(check-sat (not b!4715202) (not b!4715199) (not b!4715201) (not b!4715215) (not b!4715203) (not b!4715204) (not b!4715212) (not b!4715200) (not b!4715208) (not b!4715216) (not b!4715209) (not b!4715214) (not b!4715197) (not b!4715218) (not b!4715210) (not b!4715213) (not b!4715219) tp_is_empty!31229 (not b!4715205) (not start!479484) (not b!4715217) tp_is_empty!31231 (not b!4715211) (not b!4715207))
(check-sat)
(get-model)

(declare-fun b!4715277 () Bool)

(declare-fun e!2940859 () List!52873)

(assert (=> b!4715277 (= e!2940859 (t!360121 lt!1880018))))

(declare-fun b!4715279 () Bool)

(declare-fun e!2940860 () List!52873)

(assert (=> b!4715279 (= e!2940860 (Cons!52749 (h!59074 lt!1880018) (removePairForKey!1579 (t!360121 lt!1880018) key!4653)))))

(declare-fun b!4715280 () Bool)

(assert (=> b!4715280 (= e!2940860 Nil!52749)))

(declare-fun d!1500374 () Bool)

(declare-fun lt!1880077 () List!52873)

(assert (=> d!1500374 (not (containsKey!3313 lt!1880077 key!4653))))

(assert (=> d!1500374 (= lt!1880077 e!2940859)))

(declare-fun c!805387 () Bool)

(assert (=> d!1500374 (= c!805387 (and ((_ is Cons!52749) lt!1880018) (= (_1!30459 (h!59074 lt!1880018)) key!4653)))))

(assert (=> d!1500374 (noDuplicateKeys!1984 lt!1880018)))

(assert (=> d!1500374 (= (removePairForKey!1579 lt!1880018 key!4653) lt!1880077)))

(declare-fun b!4715278 () Bool)

(assert (=> b!4715278 (= e!2940859 e!2940860)))

(declare-fun c!805386 () Bool)

(assert (=> b!4715278 (= c!805386 ((_ is Cons!52749) lt!1880018))))

(assert (= (and d!1500374 c!805387) b!4715277))

(assert (= (and d!1500374 (not c!805387)) b!4715278))

(assert (= (and b!4715278 c!805386) b!4715279))

(assert (= (and b!4715278 (not c!805386)) b!4715280))

(declare-fun m!5643729 () Bool)

(assert (=> b!4715279 m!5643729))

(declare-fun m!5643731 () Bool)

(assert (=> d!1500374 m!5643731))

(declare-fun m!5643733 () Bool)

(assert (=> d!1500374 m!5643733))

(assert (=> b!4715215 d!1500374))

(declare-fun d!1500394 () Bool)

(assert (=> d!1500394 (= (tail!8927 newBucket!218) (t!360121 newBucket!218))))

(assert (=> b!4715215 d!1500394))

(declare-fun d!1500396 () Bool)

(assert (=> d!1500396 (= (tail!8927 oldBucket!34) (t!360121 oldBucket!34))))

(assert (=> b!4715215 d!1500396))

(declare-fun d!1500398 () Bool)

(declare-fun hash!4330 (Hashable!6353 K!14110) (_ BitVec 64))

(assert (=> d!1500398 (= (hash!4326 hashF!1323 key!4653) (hash!4330 hashF!1323 key!4653))))

(declare-fun bs!1104008 () Bool)

(assert (= bs!1104008 d!1500398))

(declare-fun m!5643735 () Bool)

(assert (=> bs!1104008 m!5643735))

(assert (=> b!4715204 d!1500398))

(declare-fun d!1500400 () Bool)

(assert (=> d!1500400 true))

(assert (=> d!1500400 true))

(declare-fun lambda!213808 () Int)

(declare-fun forall!11533 (List!52873 Int) Bool)

(assert (=> d!1500400 (= (allKeysSameHash!1810 oldBucket!34 hash!405 hashF!1323) (forall!11533 oldBucket!34 lambda!213808))))

(declare-fun bs!1104014 () Bool)

(assert (= bs!1104014 d!1500400))

(declare-fun m!5643747 () Bool)

(assert (=> bs!1104014 m!5643747))

(assert (=> b!4715214 d!1500400))

(declare-fun bs!1104027 () Bool)

(declare-fun d!1500404 () Bool)

(assert (= bs!1104027 (and d!1500404 start!479484)))

(declare-fun lambda!213816 () Int)

(assert (=> bs!1104027 (= lambda!213816 lambda!213795)))

(declare-fun lt!1880090 () ListMap!5221)

(declare-fun invariantList!1490 (List!52873) Bool)

(assert (=> d!1500404 (invariantList!1490 (toList!5858 lt!1880090))))

(declare-fun e!2940870 () ListMap!5221)

(assert (=> d!1500404 (= lt!1880090 e!2940870)))

(declare-fun c!805395 () Bool)

(assert (=> d!1500404 (= c!805395 ((_ is Cons!52750) (Cons!52750 lt!1880036 (t!360122 (toList!5857 lm!2023)))))))

(assert (=> d!1500404 (forall!11531 (Cons!52750 lt!1880036 (t!360122 (toList!5857 lm!2023))) lambda!213816)))

(assert (=> d!1500404 (= (extractMap!2010 (Cons!52750 lt!1880036 (t!360122 (toList!5857 lm!2023)))) lt!1880090)))

(declare-fun b!4715301 () Bool)

(assert (=> b!4715301 (= e!2940870 (addToMapMapFromBucket!1414 (_2!30460 (h!59075 (Cons!52750 lt!1880036 (t!360122 (toList!5857 lm!2023))))) (extractMap!2010 (t!360122 (Cons!52750 lt!1880036 (t!360122 (toList!5857 lm!2023)))))))))

(declare-fun b!4715302 () Bool)

(assert (=> b!4715302 (= e!2940870 (ListMap!5222 Nil!52749))))

(assert (= (and d!1500404 c!805395) b!4715301))

(assert (= (and d!1500404 (not c!805395)) b!4715302))

(declare-fun m!5643807 () Bool)

(assert (=> d!1500404 m!5643807))

(declare-fun m!5643809 () Bool)

(assert (=> d!1500404 m!5643809))

(declare-fun m!5643811 () Bool)

(assert (=> b!4715301 m!5643811))

(assert (=> b!4715301 m!5643811))

(declare-fun m!5643813 () Bool)

(assert (=> b!4715301 m!5643813))

(assert (=> b!4715203 d!1500404))

(declare-fun bs!1104028 () Bool)

(declare-fun d!1500422 () Bool)

(assert (= bs!1104028 (and d!1500422 start!479484)))

(declare-fun lambda!213817 () Int)

(assert (=> bs!1104028 (= lambda!213817 lambda!213795)))

(declare-fun bs!1104029 () Bool)

(assert (= bs!1104029 (and d!1500422 d!1500404)))

(assert (=> bs!1104029 (= lambda!213817 lambda!213816)))

(declare-fun lt!1880107 () ListMap!5221)

(assert (=> d!1500422 (invariantList!1490 (toList!5858 lt!1880107))))

(declare-fun e!2940875 () ListMap!5221)

(assert (=> d!1500422 (= lt!1880107 e!2940875)))

(declare-fun c!805400 () Bool)

(assert (=> d!1500422 (= c!805400 ((_ is Cons!52750) (Cons!52750 lt!1880015 lt!1880034)))))

(assert (=> d!1500422 (forall!11531 (Cons!52750 lt!1880015 lt!1880034) lambda!213817)))

(assert (=> d!1500422 (= (extractMap!2010 (Cons!52750 lt!1880015 lt!1880034)) lt!1880107)))

(declare-fun b!4715311 () Bool)

(assert (=> b!4715311 (= e!2940875 (addToMapMapFromBucket!1414 (_2!30460 (h!59075 (Cons!52750 lt!1880015 lt!1880034))) (extractMap!2010 (t!360122 (Cons!52750 lt!1880015 lt!1880034)))))))

(declare-fun b!4715312 () Bool)

(assert (=> b!4715312 (= e!2940875 (ListMap!5222 Nil!52749))))

(assert (= (and d!1500422 c!805400) b!4715311))

(assert (= (and d!1500422 (not c!805400)) b!4715312))

(declare-fun m!5643815 () Bool)

(assert (=> d!1500422 m!5643815))

(declare-fun m!5643817 () Bool)

(assert (=> d!1500422 m!5643817))

(declare-fun m!5643819 () Bool)

(assert (=> b!4715311 m!5643819))

(assert (=> b!4715311 m!5643819))

(declare-fun m!5643821 () Bool)

(assert (=> b!4715311 m!5643821))

(assert (=> b!4715203 d!1500422))

(declare-fun d!1500424 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9360 (List!52873) (InoxSet tuple2!54330))

(assert (=> d!1500424 (= (eq!1111 lt!1880030 lt!1880020) (= (content!9360 (toList!5858 lt!1880030)) (content!9360 (toList!5858 lt!1880020))))))

(declare-fun bs!1104030 () Bool)

(assert (= bs!1104030 d!1500424))

(declare-fun m!5643823 () Bool)

(assert (=> bs!1104030 m!5643823))

(declare-fun m!5643833 () Bool)

(assert (=> bs!1104030 m!5643833))

(assert (=> b!4715203 d!1500424))

(declare-fun d!1500426 () Bool)

(declare-fun e!2940895 () Bool)

(assert (=> d!1500426 e!2940895))

(declare-fun res!1993712 () Bool)

(assert (=> d!1500426 (=> (not res!1993712) (not e!2940895))))

(declare-fun lt!1880124 () ListMap!5221)

(assert (=> d!1500426 (= res!1993712 (not (contains!16083 lt!1880124 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!393 (List!52873 K!14110) List!52873)

(assert (=> d!1500426 (= lt!1880124 (ListMap!5222 (removePresrvNoDuplicatedKeys!393 (toList!5858 lt!1880019) key!4653)))))

(assert (=> d!1500426 (= (-!740 lt!1880019 key!4653) lt!1880124)))

(declare-fun b!4715340 () Bool)

(declare-datatypes ((List!52876 0))(
  ( (Nil!52752) (Cons!52752 (h!59079 K!14110) (t!360126 List!52876)) )
))
(declare-fun content!9361 (List!52876) (InoxSet K!14110))

(declare-fun keys!18923 (ListMap!5221) List!52876)

(assert (=> b!4715340 (= e!2940895 (= ((_ map and) (content!9361 (keys!18923 lt!1880019)) ((_ map not) (store ((as const (Array K!14110 Bool)) false) key!4653 true))) (content!9361 (keys!18923 lt!1880124))))))

(assert (= (and d!1500426 res!1993712) b!4715340))

(declare-fun m!5643873 () Bool)

(assert (=> d!1500426 m!5643873))

(declare-fun m!5643875 () Bool)

(assert (=> d!1500426 m!5643875))

(declare-fun m!5643877 () Bool)

(assert (=> b!4715340 m!5643877))

(declare-fun m!5643879 () Bool)

(assert (=> b!4715340 m!5643879))

(assert (=> b!4715340 m!5643877))

(declare-fun m!5643881 () Bool)

(assert (=> b!4715340 m!5643881))

(declare-fun m!5643883 () Bool)

(assert (=> b!4715340 m!5643883))

(assert (=> b!4715340 m!5643881))

(declare-fun m!5643885 () Bool)

(assert (=> b!4715340 m!5643885))

(assert (=> b!4715203 d!1500426))

(declare-fun d!1500438 () Bool)

(assert (=> d!1500438 (= (tail!8926 lt!1880027) (t!360122 lt!1880027))))

(assert (=> b!4715203 d!1500438))

(declare-fun bs!1104053 () Bool)

(declare-fun d!1500440 () Bool)

(assert (= bs!1104053 (and d!1500440 start!479484)))

(declare-fun lambda!213821 () Int)

(assert (=> bs!1104053 (= lambda!213821 lambda!213795)))

(declare-fun bs!1104054 () Bool)

(assert (= bs!1104054 (and d!1500440 d!1500404)))

(assert (=> bs!1104054 (= lambda!213821 lambda!213816)))

(declare-fun bs!1104055 () Bool)

(assert (= bs!1104055 (and d!1500440 d!1500422)))

(assert (=> bs!1104055 (= lambda!213821 lambda!213817)))

(declare-fun lt!1880125 () ListMap!5221)

(assert (=> d!1500440 (invariantList!1490 (toList!5858 lt!1880125))))

(declare-fun e!2940896 () ListMap!5221)

(assert (=> d!1500440 (= lt!1880125 e!2940896)))

(declare-fun c!805409 () Bool)

(assert (=> d!1500440 (= c!805409 ((_ is Cons!52750) (Cons!52750 lt!1880036 lt!1880034)))))

(assert (=> d!1500440 (forall!11531 (Cons!52750 lt!1880036 lt!1880034) lambda!213821)))

(assert (=> d!1500440 (= (extractMap!2010 (Cons!52750 lt!1880036 lt!1880034)) lt!1880125)))

(declare-fun b!4715341 () Bool)

(assert (=> b!4715341 (= e!2940896 (addToMapMapFromBucket!1414 (_2!30460 (h!59075 (Cons!52750 lt!1880036 lt!1880034))) (extractMap!2010 (t!360122 (Cons!52750 lt!1880036 lt!1880034)))))))

(declare-fun b!4715342 () Bool)

(assert (=> b!4715342 (= e!2940896 (ListMap!5222 Nil!52749))))

(assert (= (and d!1500440 c!805409) b!4715341))

(assert (= (and d!1500440 (not c!805409)) b!4715342))

(declare-fun m!5643887 () Bool)

(assert (=> d!1500440 m!5643887))

(declare-fun m!5643889 () Bool)

(assert (=> d!1500440 m!5643889))

(declare-fun m!5643891 () Bool)

(assert (=> b!4715341 m!5643891))

(assert (=> b!4715341 m!5643891))

(declare-fun m!5643893 () Bool)

(assert (=> b!4715341 m!5643893))

(assert (=> b!4715203 d!1500440))

(declare-fun d!1500442 () Bool)

(declare-fun e!2940897 () Bool)

(assert (=> d!1500442 e!2940897))

(declare-fun res!1993713 () Bool)

(assert (=> d!1500442 (=> (not res!1993713) (not e!2940897))))

(declare-fun lt!1880126 () ListMap!5221)

(assert (=> d!1500442 (= res!1993713 (not (contains!16083 lt!1880126 key!4653)))))

(assert (=> d!1500442 (= lt!1880126 (ListMap!5222 (removePresrvNoDuplicatedKeys!393 (toList!5858 (extractMap!2010 (Cons!52750 lt!1880015 lt!1880034))) key!4653)))))

(assert (=> d!1500442 (= (-!740 (extractMap!2010 (Cons!52750 lt!1880015 lt!1880034)) key!4653) lt!1880126)))

(declare-fun b!4715343 () Bool)

(assert (=> b!4715343 (= e!2940897 (= ((_ map and) (content!9361 (keys!18923 (extractMap!2010 (Cons!52750 lt!1880015 lt!1880034)))) ((_ map not) (store ((as const (Array K!14110 Bool)) false) key!4653 true))) (content!9361 (keys!18923 lt!1880126))))))

(assert (= (and d!1500442 res!1993713) b!4715343))

(declare-fun m!5643895 () Bool)

(assert (=> d!1500442 m!5643895))

(declare-fun m!5643897 () Bool)

(assert (=> d!1500442 m!5643897))

(declare-fun m!5643899 () Bool)

(assert (=> b!4715343 m!5643899))

(declare-fun m!5643901 () Bool)

(assert (=> b!4715343 m!5643901))

(assert (=> b!4715343 m!5643899))

(assert (=> b!4715343 m!5643545))

(declare-fun m!5643903 () Bool)

(assert (=> b!4715343 m!5643903))

(assert (=> b!4715343 m!5643883))

(assert (=> b!4715343 m!5643903))

(declare-fun m!5643905 () Bool)

(assert (=> b!4715343 m!5643905))

(assert (=> b!4715203 d!1500442))

(declare-fun d!1500444 () Bool)

(assert (=> d!1500444 (= (eq!1111 (extractMap!2010 (Cons!52750 lt!1880036 lt!1880034)) (-!740 (extractMap!2010 (Cons!52750 lt!1880015 lt!1880034)) key!4653)) (= (content!9360 (toList!5858 (extractMap!2010 (Cons!52750 lt!1880036 lt!1880034)))) (content!9360 (toList!5858 (-!740 (extractMap!2010 (Cons!52750 lt!1880015 lt!1880034)) key!4653)))))))

(declare-fun bs!1104056 () Bool)

(assert (= bs!1104056 d!1500444))

(declare-fun m!5643907 () Bool)

(assert (=> bs!1104056 m!5643907))

(declare-fun m!5643909 () Bool)

(assert (=> bs!1104056 m!5643909))

(assert (=> b!4715203 d!1500444))

(declare-fun bs!1104057 () Bool)

(declare-fun d!1500446 () Bool)

(assert (= bs!1104057 (and d!1500446 start!479484)))

(declare-fun lambda!213824 () Int)

(assert (=> bs!1104057 (= lambda!213824 lambda!213795)))

(declare-fun bs!1104058 () Bool)

(assert (= bs!1104058 (and d!1500446 d!1500404)))

(assert (=> bs!1104058 (= lambda!213824 lambda!213816)))

(declare-fun bs!1104059 () Bool)

(assert (= bs!1104059 (and d!1500446 d!1500422)))

(assert (=> bs!1104059 (= lambda!213824 lambda!213817)))

(declare-fun bs!1104060 () Bool)

(assert (= bs!1104060 (and d!1500446 d!1500440)))

(assert (=> bs!1104060 (= lambda!213824 lambda!213821)))

(assert (=> d!1500446 (eq!1111 (extractMap!2010 (Cons!52750 (tuple2!54333 hash!405 lt!1880021) (tail!8926 (toList!5857 lt!1880043)))) (-!740 (extractMap!2010 (Cons!52750 (tuple2!54333 hash!405 (t!360121 oldBucket!34)) (tail!8926 (toList!5857 lt!1880043)))) key!4653))))

(declare-fun lt!1880129 () Unit!128609)

(declare-fun choose!33198 (ListLongMap!4387 (_ BitVec 64) List!52873 List!52873 K!14110 Hashable!6353) Unit!128609)

(assert (=> d!1500446 (= lt!1880129 (choose!33198 lt!1880043 hash!405 (t!360121 oldBucket!34) lt!1880021 key!4653 hashF!1323))))

(assert (=> d!1500446 (forall!11531 (toList!5857 lt!1880043) lambda!213824)))

(assert (=> d!1500446 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!102 lt!1880043 hash!405 (t!360121 oldBucket!34) lt!1880021 key!4653 hashF!1323) lt!1880129)))

(declare-fun bs!1104061 () Bool)

(assert (= bs!1104061 d!1500446))

(declare-fun m!5643911 () Bool)

(assert (=> bs!1104061 m!5643911))

(declare-fun m!5643913 () Bool)

(assert (=> bs!1104061 m!5643913))

(declare-fun m!5643915 () Bool)

(assert (=> bs!1104061 m!5643915))

(declare-fun m!5643917 () Bool)

(assert (=> bs!1104061 m!5643917))

(assert (=> bs!1104061 m!5643913))

(declare-fun m!5643919 () Bool)

(assert (=> bs!1104061 m!5643919))

(assert (=> bs!1104061 m!5643911))

(declare-fun m!5643921 () Bool)

(assert (=> bs!1104061 m!5643921))

(assert (=> bs!1104061 m!5643917))

(declare-fun m!5643923 () Bool)

(assert (=> bs!1104061 m!5643923))

(assert (=> b!4715203 d!1500446))

(declare-fun d!1500448 () Bool)

(assert (=> d!1500448 (= (eq!1111 lt!1880014 lt!1880028) (= (content!9360 (toList!5858 lt!1880014)) (content!9360 (toList!5858 lt!1880028))))))

(declare-fun bs!1104062 () Bool)

(assert (= bs!1104062 d!1500448))

(declare-fun m!5643925 () Bool)

(assert (=> bs!1104062 m!5643925))

(declare-fun m!5643927 () Bool)

(assert (=> bs!1104062 m!5643927))

(assert (=> b!4715213 d!1500448))

(declare-fun d!1500450 () Bool)

(declare-fun e!2940900 () Bool)

(assert (=> d!1500450 e!2940900))

(declare-fun res!1993718 () Bool)

(assert (=> d!1500450 (=> (not res!1993718) (not e!2940900))))

(declare-fun lt!1880138 () ListMap!5221)

(assert (=> d!1500450 (= res!1993718 (contains!16083 lt!1880138 (_1!30459 (h!59074 oldBucket!34))))))

(declare-fun lt!1880141 () List!52873)

(assert (=> d!1500450 (= lt!1880138 (ListMap!5222 lt!1880141))))

(declare-fun lt!1880140 () Unit!128609)

(declare-fun lt!1880139 () Unit!128609)

(assert (=> d!1500450 (= lt!1880140 lt!1880139)))

(declare-datatypes ((Option!12318 0))(
  ( (None!12317) (Some!12317 (v!46872 V!14356)) )
))
(declare-fun getValueByKey!1926 (List!52873 K!14110) Option!12318)

(assert (=> d!1500450 (= (getValueByKey!1926 lt!1880141 (_1!30459 (h!59074 oldBucket!34))) (Some!12317 (_2!30459 (h!59074 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1072 (List!52873 K!14110 V!14356) Unit!128609)

(assert (=> d!1500450 (= lt!1880139 (lemmaContainsTupThenGetReturnValue!1072 lt!1880141 (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!580 (List!52873 K!14110 V!14356) List!52873)

(assert (=> d!1500450 (= lt!1880141 (insertNoDuplicatedKeys!580 (toList!5858 lt!1880020) (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34))))))

(assert (=> d!1500450 (= (+!2244 lt!1880020 (h!59074 oldBucket!34)) lt!1880138)))

(declare-fun b!4715348 () Bool)

(declare-fun res!1993719 () Bool)

(assert (=> b!4715348 (=> (not res!1993719) (not e!2940900))))

(assert (=> b!4715348 (= res!1993719 (= (getValueByKey!1926 (toList!5858 lt!1880138) (_1!30459 (h!59074 oldBucket!34))) (Some!12317 (_2!30459 (h!59074 oldBucket!34)))))))

(declare-fun b!4715349 () Bool)

(declare-fun contains!16088 (List!52873 tuple2!54330) Bool)

(assert (=> b!4715349 (= e!2940900 (contains!16088 (toList!5858 lt!1880138) (h!59074 oldBucket!34)))))

(assert (= (and d!1500450 res!1993718) b!4715348))

(assert (= (and b!4715348 res!1993719) b!4715349))

(declare-fun m!5643929 () Bool)

(assert (=> d!1500450 m!5643929))

(declare-fun m!5643931 () Bool)

(assert (=> d!1500450 m!5643931))

(declare-fun m!5643933 () Bool)

(assert (=> d!1500450 m!5643933))

(declare-fun m!5643935 () Bool)

(assert (=> d!1500450 m!5643935))

(declare-fun m!5643937 () Bool)

(assert (=> b!4715348 m!5643937))

(declare-fun m!5643939 () Bool)

(assert (=> b!4715349 m!5643939))

(assert (=> b!4715202 d!1500450))

(declare-fun d!1500452 () Bool)

(declare-fun e!2940901 () Bool)

(assert (=> d!1500452 e!2940901))

(declare-fun res!1993720 () Bool)

(assert (=> d!1500452 (=> (not res!1993720) (not e!2940901))))

(declare-fun lt!1880142 () ListMap!5221)

(assert (=> d!1500452 (= res!1993720 (not (contains!16083 lt!1880142 key!4653)))))

(assert (=> d!1500452 (= lt!1880142 (ListMap!5222 (removePresrvNoDuplicatedKeys!393 (toList!5858 (+!2244 lt!1880019 (h!59074 oldBucket!34))) key!4653)))))

(assert (=> d!1500452 (= (-!740 (+!2244 lt!1880019 (h!59074 oldBucket!34)) key!4653) lt!1880142)))

(declare-fun b!4715350 () Bool)

(assert (=> b!4715350 (= e!2940901 (= ((_ map and) (content!9361 (keys!18923 (+!2244 lt!1880019 (h!59074 oldBucket!34)))) ((_ map not) (store ((as const (Array K!14110 Bool)) false) key!4653 true))) (content!9361 (keys!18923 lt!1880142))))))

(assert (= (and d!1500452 res!1993720) b!4715350))

(declare-fun m!5643941 () Bool)

(assert (=> d!1500452 m!5643941))

(declare-fun m!5643943 () Bool)

(assert (=> d!1500452 m!5643943))

(declare-fun m!5643945 () Bool)

(assert (=> b!4715350 m!5643945))

(declare-fun m!5643947 () Bool)

(assert (=> b!4715350 m!5643947))

(assert (=> b!4715350 m!5643945))

(assert (=> b!4715350 m!5643625))

(declare-fun m!5643949 () Bool)

(assert (=> b!4715350 m!5643949))

(assert (=> b!4715350 m!5643883))

(assert (=> b!4715350 m!5643949))

(declare-fun m!5643951 () Bool)

(assert (=> b!4715350 m!5643951))

(assert (=> b!4715202 d!1500452))

(declare-fun d!1500454 () Bool)

(declare-fun e!2940902 () Bool)

(assert (=> d!1500454 e!2940902))

(declare-fun res!1993721 () Bool)

(assert (=> d!1500454 (=> (not res!1993721) (not e!2940902))))

(declare-fun lt!1880143 () ListMap!5221)

(assert (=> d!1500454 (= res!1993721 (contains!16083 lt!1880143 (_1!30459 (h!59074 oldBucket!34))))))

(declare-fun lt!1880146 () List!52873)

(assert (=> d!1500454 (= lt!1880143 (ListMap!5222 lt!1880146))))

(declare-fun lt!1880145 () Unit!128609)

(declare-fun lt!1880144 () Unit!128609)

(assert (=> d!1500454 (= lt!1880145 lt!1880144)))

(assert (=> d!1500454 (= (getValueByKey!1926 lt!1880146 (_1!30459 (h!59074 oldBucket!34))) (Some!12317 (_2!30459 (h!59074 oldBucket!34))))))

(assert (=> d!1500454 (= lt!1880144 (lemmaContainsTupThenGetReturnValue!1072 lt!1880146 (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34))))))

(assert (=> d!1500454 (= lt!1880146 (insertNoDuplicatedKeys!580 (toList!5858 lt!1880019) (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34))))))

(assert (=> d!1500454 (= (+!2244 lt!1880019 (h!59074 oldBucket!34)) lt!1880143)))

(declare-fun b!4715351 () Bool)

(declare-fun res!1993722 () Bool)

(assert (=> b!4715351 (=> (not res!1993722) (not e!2940902))))

(assert (=> b!4715351 (= res!1993722 (= (getValueByKey!1926 (toList!5858 lt!1880143) (_1!30459 (h!59074 oldBucket!34))) (Some!12317 (_2!30459 (h!59074 oldBucket!34)))))))

(declare-fun b!4715352 () Bool)

(assert (=> b!4715352 (= e!2940902 (contains!16088 (toList!5858 lt!1880143) (h!59074 oldBucket!34)))))

(assert (= (and d!1500454 res!1993721) b!4715351))

(assert (= (and b!4715351 res!1993722) b!4715352))

(declare-fun m!5643953 () Bool)

(assert (=> d!1500454 m!5643953))

(declare-fun m!5643955 () Bool)

(assert (=> d!1500454 m!5643955))

(declare-fun m!5643957 () Bool)

(assert (=> d!1500454 m!5643957))

(declare-fun m!5643959 () Bool)

(assert (=> d!1500454 m!5643959))

(declare-fun m!5643961 () Bool)

(assert (=> b!4715351 m!5643961))

(declare-fun m!5643963 () Bool)

(assert (=> b!4715352 m!5643963))

(assert (=> b!4715202 d!1500454))

(declare-fun d!1500456 () Bool)

(assert (=> d!1500456 (= (-!740 (+!2244 lt!1880019 (tuple2!54331 (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34)))) key!4653) (+!2244 (-!740 lt!1880019 key!4653) (tuple2!54331 (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34)))))))

(declare-fun lt!1880149 () Unit!128609)

(declare-fun choose!33199 (ListMap!5221 K!14110 V!14356 K!14110) Unit!128609)

(assert (=> d!1500456 (= lt!1880149 (choose!33199 lt!1880019 (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34)) key!4653))))

(assert (=> d!1500456 (not (= (_1!30459 (h!59074 oldBucket!34)) key!4653))))

(assert (=> d!1500456 (= (addRemoveCommutativeForDiffKeys!131 lt!1880019 (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34)) key!4653) lt!1880149)))

(declare-fun bs!1104063 () Bool)

(assert (= bs!1104063 d!1500456))

(declare-fun m!5643965 () Bool)

(assert (=> bs!1104063 m!5643965))

(assert (=> bs!1104063 m!5643561))

(declare-fun m!5643967 () Bool)

(assert (=> bs!1104063 m!5643967))

(declare-fun m!5643969 () Bool)

(assert (=> bs!1104063 m!5643969))

(declare-fun m!5643971 () Bool)

(assert (=> bs!1104063 m!5643971))

(assert (=> bs!1104063 m!5643969))

(assert (=> bs!1104063 m!5643561))

(assert (=> b!4715202 d!1500456))

(declare-fun d!1500458 () Bool)

(declare-fun res!1993727 () Bool)

(declare-fun e!2940909 () Bool)

(assert (=> d!1500458 (=> res!1993727 e!2940909)))

(assert (=> d!1500458 (= res!1993727 (not ((_ is Cons!52749) newBucket!218)))))

(assert (=> d!1500458 (= (noDuplicateKeys!1984 newBucket!218) e!2940909)))

(declare-fun b!4715361 () Bool)

(declare-fun e!2940910 () Bool)

(assert (=> b!4715361 (= e!2940909 e!2940910)))

(declare-fun res!1993728 () Bool)

(assert (=> b!4715361 (=> (not res!1993728) (not e!2940910))))

(assert (=> b!4715361 (= res!1993728 (not (containsKey!3313 (t!360121 newBucket!218) (_1!30459 (h!59074 newBucket!218)))))))

(declare-fun b!4715362 () Bool)

(assert (=> b!4715362 (= e!2940910 (noDuplicateKeys!1984 (t!360121 newBucket!218)))))

(assert (= (and d!1500458 (not res!1993727)) b!4715361))

(assert (= (and b!4715361 res!1993728) b!4715362))

(declare-fun m!5643973 () Bool)

(assert (=> b!4715361 m!5643973))

(declare-fun m!5643975 () Bool)

(assert (=> b!4715362 m!5643975))

(assert (=> b!4715212 d!1500458))

(declare-fun bs!1104064 () Bool)

(declare-fun d!1500460 () Bool)

(assert (= bs!1104064 (and d!1500460 d!1500400)))

(declare-fun lambda!213827 () Int)

(assert (=> bs!1104064 (= lambda!213827 lambda!213808)))

(assert (=> d!1500460 true))

(assert (=> d!1500460 true))

(assert (=> d!1500460 (= (allKeysSameHash!1810 newBucket!218 hash!405 hashF!1323) (forall!11533 newBucket!218 lambda!213827))))

(declare-fun bs!1104065 () Bool)

(assert (= bs!1104065 d!1500460))

(declare-fun m!5643977 () Bool)

(assert (=> bs!1104065 m!5643977))

(assert (=> b!4715211 d!1500460))

(declare-fun bs!1104066 () Bool)

(declare-fun d!1500462 () Bool)

(assert (= bs!1104066 (and d!1500462 d!1500440)))

(declare-fun lambda!213852 () Int)

(assert (=> bs!1104066 (= lambda!213852 lambda!213821)))

(declare-fun bs!1104067 () Bool)

(assert (= bs!1104067 (and d!1500462 d!1500446)))

(assert (=> bs!1104067 (= lambda!213852 lambda!213824)))

(declare-fun bs!1104068 () Bool)

(assert (= bs!1104068 (and d!1500462 d!1500404)))

(assert (=> bs!1104068 (= lambda!213852 lambda!213816)))

(declare-fun bs!1104069 () Bool)

(assert (= bs!1104069 (and d!1500462 start!479484)))

(assert (=> bs!1104069 (= lambda!213852 lambda!213795)))

(declare-fun bs!1104070 () Bool)

(assert (= bs!1104070 (and d!1500462 d!1500422)))

(assert (=> bs!1104070 (= lambda!213852 lambda!213817)))

(assert (=> d!1500462 (contains!16083 (extractMap!2010 (toList!5857 lt!1880043)) key!4653)))

(declare-fun lt!1880194 () Unit!128609)

(declare-fun choose!33200 (ListLongMap!4387 K!14110 Hashable!6353) Unit!128609)

(assert (=> d!1500462 (= lt!1880194 (choose!33200 lt!1880043 key!4653 hashF!1323))))

(assert (=> d!1500462 (forall!11531 (toList!5857 lt!1880043) lambda!213852)))

(assert (=> d!1500462 (= (lemmaListContainsThenExtractedMapContains!530 lt!1880043 key!4653 hashF!1323) lt!1880194)))

(declare-fun bs!1104071 () Bool)

(assert (= bs!1104071 d!1500462))

(declare-fun m!5643979 () Bool)

(assert (=> bs!1104071 m!5643979))

(assert (=> bs!1104071 m!5643979))

(declare-fun m!5643981 () Bool)

(assert (=> bs!1104071 m!5643981))

(declare-fun m!5643983 () Bool)

(assert (=> bs!1104071 m!5643983))

(declare-fun m!5643985 () Bool)

(assert (=> bs!1104071 m!5643985))

(assert (=> b!4715200 d!1500462))

(declare-fun d!1500464 () Bool)

(declare-fun e!2940915 () Bool)

(assert (=> d!1500464 e!2940915))

(declare-fun res!1993735 () Bool)

(assert (=> d!1500464 (=> (not res!1993735) (not e!2940915))))

(declare-fun lt!1880195 () ListMap!5221)

(assert (=> d!1500464 (= res!1993735 (contains!16083 lt!1880195 (_1!30459 (h!59074 oldBucket!34))))))

(declare-fun lt!1880198 () List!52873)

(assert (=> d!1500464 (= lt!1880195 (ListMap!5222 lt!1880198))))

(declare-fun lt!1880197 () Unit!128609)

(declare-fun lt!1880196 () Unit!128609)

(assert (=> d!1500464 (= lt!1880197 lt!1880196)))

(assert (=> d!1500464 (= (getValueByKey!1926 lt!1880198 (_1!30459 (h!59074 oldBucket!34))) (Some!12317 (_2!30459 (h!59074 oldBucket!34))))))

(assert (=> d!1500464 (= lt!1880196 (lemmaContainsTupThenGetReturnValue!1072 lt!1880198 (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34))))))

(assert (=> d!1500464 (= lt!1880198 (insertNoDuplicatedKeys!580 (toList!5858 lt!1880037) (_1!30459 (h!59074 oldBucket!34)) (_2!30459 (h!59074 oldBucket!34))))))

(assert (=> d!1500464 (= (+!2244 lt!1880037 (h!59074 oldBucket!34)) lt!1880195)))

(declare-fun b!4715367 () Bool)

(declare-fun res!1993736 () Bool)

(assert (=> b!4715367 (=> (not res!1993736) (not e!2940915))))

(assert (=> b!4715367 (= res!1993736 (= (getValueByKey!1926 (toList!5858 lt!1880195) (_1!30459 (h!59074 oldBucket!34))) (Some!12317 (_2!30459 (h!59074 oldBucket!34)))))))

(declare-fun b!4715368 () Bool)

(assert (=> b!4715368 (= e!2940915 (contains!16088 (toList!5858 lt!1880195) (h!59074 oldBucket!34)))))

(assert (= (and d!1500464 res!1993735) b!4715367))

(assert (= (and b!4715367 res!1993736) b!4715368))

(declare-fun m!5643987 () Bool)

(assert (=> d!1500464 m!5643987))

(declare-fun m!5643989 () Bool)

(assert (=> d!1500464 m!5643989))

(declare-fun m!5643991 () Bool)

(assert (=> d!1500464 m!5643991))

(declare-fun m!5643993 () Bool)

(assert (=> d!1500464 m!5643993))

(declare-fun m!5643995 () Bool)

(assert (=> b!4715367 m!5643995))

(declare-fun m!5643997 () Bool)

(assert (=> b!4715368 m!5643997))

(assert (=> b!4715200 d!1500464))

(declare-fun bs!1104260 () Bool)

(declare-fun b!4715483 () Bool)

(assert (= bs!1104260 (and b!4715483 d!1500400)))

(declare-fun lambda!213913 () Int)

(assert (=> bs!1104260 (not (= lambda!213913 lambda!213808))))

(declare-fun bs!1104261 () Bool)

(assert (= bs!1104261 (and b!4715483 d!1500460)))

(assert (=> bs!1104261 (not (= lambda!213913 lambda!213827))))

(assert (=> b!4715483 true))

(declare-fun bs!1104262 () Bool)

(declare-fun b!4715482 () Bool)

(assert (= bs!1104262 (and b!4715482 d!1500400)))

(declare-fun lambda!213914 () Int)

(assert (=> bs!1104262 (not (= lambda!213914 lambda!213808))))

(declare-fun bs!1104263 () Bool)

(assert (= bs!1104263 (and b!4715482 d!1500460)))

(assert (=> bs!1104263 (not (= lambda!213914 lambda!213827))))

(declare-fun bs!1104264 () Bool)

(assert (= bs!1104264 (and b!4715482 b!4715483)))

(assert (=> bs!1104264 (= lambda!213914 lambda!213913)))

(assert (=> b!4715482 true))

(declare-fun lambda!213915 () Int)

(assert (=> bs!1104262 (not (= lambda!213915 lambda!213808))))

(assert (=> bs!1104263 (not (= lambda!213915 lambda!213827))))

(declare-fun lt!1880404 () ListMap!5221)

(assert (=> bs!1104264 (= (= lt!1880404 lt!1880031) (= lambda!213915 lambda!213913))))

(assert (=> b!4715482 (= (= lt!1880404 lt!1880031) (= lambda!213915 lambda!213914))))

(assert (=> b!4715482 true))

(declare-fun bs!1104265 () Bool)

(declare-fun d!1500466 () Bool)

(assert (= bs!1104265 (and d!1500466 d!1500400)))

(declare-fun lambda!213916 () Int)

(assert (=> bs!1104265 (not (= lambda!213916 lambda!213808))))

(declare-fun bs!1104266 () Bool)

(assert (= bs!1104266 (and d!1500466 d!1500460)))

(assert (=> bs!1104266 (not (= lambda!213916 lambda!213827))))

(declare-fun bs!1104267 () Bool)

(assert (= bs!1104267 (and d!1500466 b!4715482)))

(declare-fun lt!1880410 () ListMap!5221)

(assert (=> bs!1104267 (= (= lt!1880410 lt!1880404) (= lambda!213916 lambda!213915))))

(declare-fun bs!1104268 () Bool)

(assert (= bs!1104268 (and d!1500466 b!4715483)))

(assert (=> bs!1104268 (= (= lt!1880410 lt!1880031) (= lambda!213916 lambda!213913))))

(assert (=> bs!1104267 (= (= lt!1880410 lt!1880031) (= lambda!213916 lambda!213914))))

(assert (=> d!1500466 true))

(declare-fun e!2940990 () Bool)

(assert (=> d!1500466 e!2940990))

(declare-fun res!1993801 () Bool)

(assert (=> d!1500466 (=> (not res!1993801) (not e!2940990))))

(assert (=> d!1500466 (= res!1993801 (forall!11533 (Cons!52749 lt!1880026 lt!1880021) lambda!213916))))

(declare-fun e!2940989 () ListMap!5221)

(assert (=> d!1500466 (= lt!1880410 e!2940989)))

(declare-fun c!805435 () Bool)

(assert (=> d!1500466 (= c!805435 ((_ is Nil!52749) (Cons!52749 lt!1880026 lt!1880021)))))

(assert (=> d!1500466 (noDuplicateKeys!1984 (Cons!52749 lt!1880026 lt!1880021))))

(assert (=> d!1500466 (= (addToMapMapFromBucket!1414 (Cons!52749 lt!1880026 lt!1880021) lt!1880031) lt!1880410)))

(declare-fun bm!329678 () Bool)

(declare-fun call!329685 () Unit!128609)

(declare-fun lemmaContainsAllItsOwnKeys!778 (ListMap!5221) Unit!128609)

(assert (=> bm!329678 (= call!329685 (lemmaContainsAllItsOwnKeys!778 lt!1880031))))

(assert (=> b!4715482 (= e!2940989 lt!1880404)))

(declare-fun lt!1880414 () ListMap!5221)

(assert (=> b!4715482 (= lt!1880414 (+!2244 lt!1880031 (h!59074 (Cons!52749 lt!1880026 lt!1880021))))))

(assert (=> b!4715482 (= lt!1880404 (addToMapMapFromBucket!1414 (t!360121 (Cons!52749 lt!1880026 lt!1880021)) (+!2244 lt!1880031 (h!59074 (Cons!52749 lt!1880026 lt!1880021)))))))

(declare-fun lt!1880406 () Unit!128609)

(assert (=> b!4715482 (= lt!1880406 call!329685)))

(declare-fun call!329684 () Bool)

(assert (=> b!4715482 call!329684))

(declare-fun lt!1880418 () Unit!128609)

(assert (=> b!4715482 (= lt!1880418 lt!1880406)))

(assert (=> b!4715482 (forall!11533 (toList!5858 lt!1880414) lambda!213915)))

(declare-fun lt!1880411 () Unit!128609)

(declare-fun Unit!128637 () Unit!128609)

(assert (=> b!4715482 (= lt!1880411 Unit!128637)))

(assert (=> b!4715482 (forall!11533 (t!360121 (Cons!52749 lt!1880026 lt!1880021)) lambda!213915)))

(declare-fun lt!1880409 () Unit!128609)

(declare-fun Unit!128638 () Unit!128609)

(assert (=> b!4715482 (= lt!1880409 Unit!128638)))

(declare-fun lt!1880420 () Unit!128609)

(declare-fun Unit!128639 () Unit!128609)

(assert (=> b!4715482 (= lt!1880420 Unit!128639)))

(declare-fun lt!1880423 () Unit!128609)

(declare-fun forallContained!3602 (List!52873 Int tuple2!54330) Unit!128609)

(assert (=> b!4715482 (= lt!1880423 (forallContained!3602 (toList!5858 lt!1880414) lambda!213915 (h!59074 (Cons!52749 lt!1880026 lt!1880021))))))

(assert (=> b!4715482 (contains!16083 lt!1880414 (_1!30459 (h!59074 (Cons!52749 lt!1880026 lt!1880021))))))

(declare-fun lt!1880422 () Unit!128609)

(declare-fun Unit!128640 () Unit!128609)

(assert (=> b!4715482 (= lt!1880422 Unit!128640)))

(assert (=> b!4715482 (contains!16083 lt!1880404 (_1!30459 (h!59074 (Cons!52749 lt!1880026 lt!1880021))))))

(declare-fun lt!1880415 () Unit!128609)

(declare-fun Unit!128641 () Unit!128609)

(assert (=> b!4715482 (= lt!1880415 Unit!128641)))

(assert (=> b!4715482 (forall!11533 (Cons!52749 lt!1880026 lt!1880021) lambda!213915)))

(declare-fun lt!1880416 () Unit!128609)

(declare-fun Unit!128642 () Unit!128609)

(assert (=> b!4715482 (= lt!1880416 Unit!128642)))

(declare-fun call!329683 () Bool)

(assert (=> b!4715482 call!329683))

(declare-fun lt!1880421 () Unit!128609)

(declare-fun Unit!128643 () Unit!128609)

(assert (=> b!4715482 (= lt!1880421 Unit!128643)))

(declare-fun lt!1880408 () Unit!128609)

(declare-fun Unit!128644 () Unit!128609)

(assert (=> b!4715482 (= lt!1880408 Unit!128644)))

(declare-fun lt!1880403 () Unit!128609)

(declare-fun addForallContainsKeyThenBeforeAdding!777 (ListMap!5221 ListMap!5221 K!14110 V!14356) Unit!128609)

(assert (=> b!4715482 (= lt!1880403 (addForallContainsKeyThenBeforeAdding!777 lt!1880031 lt!1880404 (_1!30459 (h!59074 (Cons!52749 lt!1880026 lt!1880021))) (_2!30459 (h!59074 (Cons!52749 lt!1880026 lt!1880021)))))))

(assert (=> b!4715482 (forall!11533 (toList!5858 lt!1880031) lambda!213915)))

(declare-fun lt!1880412 () Unit!128609)

(assert (=> b!4715482 (= lt!1880412 lt!1880403)))

(assert (=> b!4715482 (forall!11533 (toList!5858 lt!1880031) lambda!213915)))

(declare-fun lt!1880419 () Unit!128609)

(declare-fun Unit!128645 () Unit!128609)

(assert (=> b!4715482 (= lt!1880419 Unit!128645)))

(declare-fun res!1993799 () Bool)

(assert (=> b!4715482 (= res!1993799 (forall!11533 (Cons!52749 lt!1880026 lt!1880021) lambda!213915))))

(declare-fun e!2940988 () Bool)

(assert (=> b!4715482 (=> (not res!1993799) (not e!2940988))))

(assert (=> b!4715482 e!2940988))

(declare-fun lt!1880417 () Unit!128609)

(declare-fun Unit!128646 () Unit!128609)

(assert (=> b!4715482 (= lt!1880417 Unit!128646)))

(assert (=> b!4715483 (= e!2940989 lt!1880031)))

(declare-fun lt!1880405 () Unit!128609)

(assert (=> b!4715483 (= lt!1880405 call!329685)))

(assert (=> b!4715483 call!329683))

(declare-fun lt!1880407 () Unit!128609)

(assert (=> b!4715483 (= lt!1880407 lt!1880405)))

(assert (=> b!4715483 call!329684))

(declare-fun lt!1880413 () Unit!128609)

(declare-fun Unit!128647 () Unit!128609)

(assert (=> b!4715483 (= lt!1880413 Unit!128647)))

(declare-fun bm!329679 () Bool)

(assert (=> bm!329679 (= call!329683 (forall!11533 (ite c!805435 (toList!5858 lt!1880031) (toList!5858 lt!1880414)) (ite c!805435 lambda!213913 lambda!213915)))))

(declare-fun b!4715484 () Bool)

(assert (=> b!4715484 (= e!2940990 (invariantList!1490 (toList!5858 lt!1880410)))))

(declare-fun b!4715485 () Bool)

(declare-fun res!1993800 () Bool)

(assert (=> b!4715485 (=> (not res!1993800) (not e!2940990))))

(assert (=> b!4715485 (= res!1993800 (forall!11533 (toList!5858 lt!1880031) lambda!213916))))

(declare-fun bm!329680 () Bool)

(assert (=> bm!329680 (= call!329684 (forall!11533 (toList!5858 lt!1880031) (ite c!805435 lambda!213913 lambda!213914)))))

(declare-fun b!4715486 () Bool)

(assert (=> b!4715486 (= e!2940988 (forall!11533 (toList!5858 lt!1880031) lambda!213915))))

(assert (= (and d!1500466 c!805435) b!4715483))

(assert (= (and d!1500466 (not c!805435)) b!4715482))

(assert (= (and b!4715482 res!1993799) b!4715486))

(assert (= (or b!4715483 b!4715482) bm!329678))

(assert (= (or b!4715483 b!4715482) bm!329680))

(assert (= (or b!4715483 b!4715482) bm!329679))

(assert (= (and d!1500466 res!1993801) b!4715485))

(assert (= (and b!4715485 res!1993800) b!4715484))

(declare-fun m!5644313 () Bool)

(assert (=> bm!329678 m!5644313))

(declare-fun m!5644315 () Bool)

(assert (=> d!1500466 m!5644315))

(declare-fun m!5644317 () Bool)

(assert (=> d!1500466 m!5644317))

(declare-fun m!5644319 () Bool)

(assert (=> b!4715485 m!5644319))

(declare-fun m!5644321 () Bool)

(assert (=> bm!329679 m!5644321))

(declare-fun m!5644323 () Bool)

(assert (=> b!4715482 m!5644323))

(declare-fun m!5644325 () Bool)

(assert (=> b!4715482 m!5644325))

(declare-fun m!5644327 () Bool)

(assert (=> b!4715482 m!5644327))

(declare-fun m!5644329 () Bool)

(assert (=> b!4715482 m!5644329))

(declare-fun m!5644331 () Bool)

(assert (=> b!4715482 m!5644331))

(declare-fun m!5644333 () Bool)

(assert (=> b!4715482 m!5644333))

(assert (=> b!4715482 m!5644325))

(declare-fun m!5644335 () Bool)

(assert (=> b!4715482 m!5644335))

(declare-fun m!5644337 () Bool)

(assert (=> b!4715482 m!5644337))

(declare-fun m!5644339 () Bool)

(assert (=> b!4715482 m!5644339))

(declare-fun m!5644341 () Bool)

(assert (=> b!4715482 m!5644341))

(assert (=> b!4715482 m!5644337))

(assert (=> b!4715482 m!5644333))

(assert (=> b!4715486 m!5644325))

(declare-fun m!5644343 () Bool)

(assert (=> b!4715484 m!5644343))

(declare-fun m!5644345 () Bool)

(assert (=> bm!329680 m!5644345))

(assert (=> b!4715200 d!1500466))

(declare-fun b!4715507 () Bool)

(declare-fun e!2941004 () List!52876)

(assert (=> b!4715507 (= e!2941004 (keys!18923 lt!1880019))))

(declare-fun b!4715508 () Bool)

(declare-fun e!2941008 () Unit!128609)

(declare-fun Unit!128648 () Unit!128609)

(assert (=> b!4715508 (= e!2941008 Unit!128648)))

(declare-fun b!4715509 () Bool)

(declare-fun e!2941003 () Bool)

(declare-fun e!2941005 () Bool)

(assert (=> b!4715509 (= e!2941003 e!2941005)))

(declare-fun res!1993808 () Bool)

(assert (=> b!4715509 (=> (not res!1993808) (not e!2941005))))

(declare-fun isDefined!9572 (Option!12318) Bool)

(assert (=> b!4715509 (= res!1993808 (isDefined!9572 (getValueByKey!1926 (toList!5858 lt!1880019) key!4653)))))

(declare-fun b!4715510 () Bool)

(declare-fun e!2941007 () Unit!128609)

(assert (=> b!4715510 (= e!2941007 e!2941008)))

(declare-fun c!805443 () Bool)

(declare-fun call!329688 () Bool)

(assert (=> b!4715510 (= c!805443 call!329688)))

(declare-fun b!4715511 () Bool)

(assert (=> b!4715511 false))

(declare-fun lt!1880444 () Unit!128609)

(declare-fun lt!1880447 () Unit!128609)

(assert (=> b!4715511 (= lt!1880444 lt!1880447)))

(declare-fun containsKey!3315 (List!52873 K!14110) Bool)

(assert (=> b!4715511 (containsKey!3315 (toList!5858 lt!1880019) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!929 (List!52873 K!14110) Unit!128609)

(assert (=> b!4715511 (= lt!1880447 (lemmaInGetKeysListThenContainsKey!929 (toList!5858 lt!1880019) key!4653))))

(declare-fun Unit!128649 () Unit!128609)

(assert (=> b!4715511 (= e!2941008 Unit!128649)))

(declare-fun b!4715512 () Bool)

(declare-fun lt!1880440 () Unit!128609)

(assert (=> b!4715512 (= e!2941007 lt!1880440)))

(declare-fun lt!1880446 () Unit!128609)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1817 (List!52873 K!14110) Unit!128609)

(assert (=> b!4715512 (= lt!1880446 (lemmaContainsKeyImpliesGetValueByKeyDefined!1817 (toList!5858 lt!1880019) key!4653))))

(assert (=> b!4715512 (isDefined!9572 (getValueByKey!1926 (toList!5858 lt!1880019) key!4653))))

(declare-fun lt!1880443 () Unit!128609)

(assert (=> b!4715512 (= lt!1880443 lt!1880446)))

(declare-fun lemmaInListThenGetKeysListContains!925 (List!52873 K!14110) Unit!128609)

(assert (=> b!4715512 (= lt!1880440 (lemmaInListThenGetKeysListContains!925 (toList!5858 lt!1880019) key!4653))))

(assert (=> b!4715512 call!329688))

(declare-fun b!4715513 () Bool)

(declare-fun contains!16089 (List!52876 K!14110) Bool)

(assert (=> b!4715513 (= e!2941005 (contains!16089 (keys!18923 lt!1880019) key!4653))))

(declare-fun bm!329683 () Bool)

(assert (=> bm!329683 (= call!329688 (contains!16089 e!2941004 key!4653))))

(declare-fun c!805444 () Bool)

(declare-fun c!805442 () Bool)

(assert (=> bm!329683 (= c!805444 c!805442)))

(declare-fun d!1500530 () Bool)

(assert (=> d!1500530 e!2941003))

(declare-fun res!1993810 () Bool)

(assert (=> d!1500530 (=> res!1993810 e!2941003)))

(declare-fun e!2941006 () Bool)

(assert (=> d!1500530 (= res!1993810 e!2941006)))

(declare-fun res!1993809 () Bool)

(assert (=> d!1500530 (=> (not res!1993809) (not e!2941006))))

(declare-fun lt!1880441 () Bool)

(assert (=> d!1500530 (= res!1993809 (not lt!1880441))))

(declare-fun lt!1880445 () Bool)

(assert (=> d!1500530 (= lt!1880441 lt!1880445)))

(declare-fun lt!1880442 () Unit!128609)

(assert (=> d!1500530 (= lt!1880442 e!2941007)))

(assert (=> d!1500530 (= c!805442 lt!1880445)))

(assert (=> d!1500530 (= lt!1880445 (containsKey!3315 (toList!5858 lt!1880019) key!4653))))

(assert (=> d!1500530 (= (contains!16083 lt!1880019 key!4653) lt!1880441)))

(declare-fun b!4715514 () Bool)

(assert (=> b!4715514 (= e!2941006 (not (contains!16089 (keys!18923 lt!1880019) key!4653)))))

(declare-fun b!4715515 () Bool)

(declare-fun getKeysList!930 (List!52873) List!52876)

(assert (=> b!4715515 (= e!2941004 (getKeysList!930 (toList!5858 lt!1880019)))))

(assert (= (and d!1500530 c!805442) b!4715512))

(assert (= (and d!1500530 (not c!805442)) b!4715510))

(assert (= (and b!4715510 c!805443) b!4715511))

(assert (= (and b!4715510 (not c!805443)) b!4715508))

(assert (= (or b!4715512 b!4715510) bm!329683))

(assert (= (and bm!329683 c!805444) b!4715515))

(assert (= (and bm!329683 (not c!805444)) b!4715507))

(assert (= (and d!1500530 res!1993809) b!4715514))

(assert (= (and d!1500530 (not res!1993810)) b!4715509))

(assert (= (and b!4715509 res!1993808) b!4715513))

(declare-fun m!5644347 () Bool)

(assert (=> b!4715515 m!5644347))

(assert (=> b!4715507 m!5643881))

(declare-fun m!5644349 () Bool)

(assert (=> d!1500530 m!5644349))

(assert (=> b!4715511 m!5644349))

(declare-fun m!5644351 () Bool)

(assert (=> b!4715511 m!5644351))

(assert (=> b!4715513 m!5643881))

(assert (=> b!4715513 m!5643881))

(declare-fun m!5644353 () Bool)

(assert (=> b!4715513 m!5644353))

(declare-fun m!5644355 () Bool)

(assert (=> bm!329683 m!5644355))

(assert (=> b!4715514 m!5643881))

(assert (=> b!4715514 m!5643881))

(assert (=> b!4715514 m!5644353))

(declare-fun m!5644357 () Bool)

(assert (=> b!4715512 m!5644357))

(declare-fun m!5644359 () Bool)

(assert (=> b!4715512 m!5644359))

(assert (=> b!4715512 m!5644359))

(declare-fun m!5644361 () Bool)

(assert (=> b!4715512 m!5644361))

(declare-fun m!5644363 () Bool)

(assert (=> b!4715512 m!5644363))

(assert (=> b!4715509 m!5644359))

(assert (=> b!4715509 m!5644359))

(assert (=> b!4715509 m!5644361))

(assert (=> b!4715200 d!1500530))

(declare-fun d!1500532 () Bool)

(declare-fun e!2941009 () Bool)

(assert (=> d!1500532 e!2941009))

(declare-fun res!1993811 () Bool)

(assert (=> d!1500532 (=> (not res!1993811) (not e!2941009))))

(declare-fun lt!1880448 () ListMap!5221)

(assert (=> d!1500532 (= res!1993811 (contains!16083 lt!1880448 (_1!30459 lt!1880035)))))

(declare-fun lt!1880451 () List!52873)

(assert (=> d!1500532 (= lt!1880448 (ListMap!5222 lt!1880451))))

(declare-fun lt!1880450 () Unit!128609)

(declare-fun lt!1880449 () Unit!128609)

(assert (=> d!1500532 (= lt!1880450 lt!1880449)))

(assert (=> d!1500532 (= (getValueByKey!1926 lt!1880451 (_1!30459 lt!1880035)) (Some!12317 (_2!30459 lt!1880035)))))

(assert (=> d!1500532 (= lt!1880449 (lemmaContainsTupThenGetReturnValue!1072 lt!1880451 (_1!30459 lt!1880035) (_2!30459 lt!1880035)))))

(assert (=> d!1500532 (= lt!1880451 (insertNoDuplicatedKeys!580 (toList!5858 (addToMapMapFromBucket!1414 lt!1880018 lt!1880031)) (_1!30459 lt!1880035) (_2!30459 lt!1880035)))))

(assert (=> d!1500532 (= (+!2244 (addToMapMapFromBucket!1414 lt!1880018 lt!1880031) lt!1880035) lt!1880448)))

(declare-fun b!4715516 () Bool)

(declare-fun res!1993812 () Bool)

(assert (=> b!4715516 (=> (not res!1993812) (not e!2941009))))

(assert (=> b!4715516 (= res!1993812 (= (getValueByKey!1926 (toList!5858 lt!1880448) (_1!30459 lt!1880035)) (Some!12317 (_2!30459 lt!1880035))))))

(declare-fun b!4715517 () Bool)

(assert (=> b!4715517 (= e!2941009 (contains!16088 (toList!5858 lt!1880448) lt!1880035))))

(assert (= (and d!1500532 res!1993811) b!4715516))

(assert (= (and b!4715516 res!1993812) b!4715517))

(declare-fun m!5644365 () Bool)

(assert (=> d!1500532 m!5644365))

(declare-fun m!5644367 () Bool)

(assert (=> d!1500532 m!5644367))

(declare-fun m!5644369 () Bool)

(assert (=> d!1500532 m!5644369))

(declare-fun m!5644371 () Bool)

(assert (=> d!1500532 m!5644371))

(declare-fun m!5644373 () Bool)

(assert (=> b!4715516 m!5644373))

(declare-fun m!5644375 () Bool)

(assert (=> b!4715517 m!5644375))

(assert (=> b!4715200 d!1500532))

(declare-fun d!1500534 () Bool)

(assert (=> d!1500534 (= (eq!1111 lt!1880033 (+!2244 lt!1880037 (h!59074 oldBucket!34))) (= (content!9360 (toList!5858 lt!1880033)) (content!9360 (toList!5858 (+!2244 lt!1880037 (h!59074 oldBucket!34))))))))

(declare-fun bs!1104269 () Bool)

(assert (= bs!1104269 d!1500534))

(declare-fun m!5644377 () Bool)

(assert (=> bs!1104269 m!5644377))

(declare-fun m!5644379 () Bool)

(assert (=> bs!1104269 m!5644379))

(assert (=> b!4715200 d!1500534))

(declare-fun d!1500536 () Bool)

(assert (=> d!1500536 (= (head!10197 oldBucket!34) (h!59074 oldBucket!34))))

(assert (=> b!4715200 d!1500536))

(declare-fun bs!1104270 () Bool)

(declare-fun b!4715519 () Bool)

(assert (= bs!1104270 (and b!4715519 d!1500400)))

(declare-fun lambda!213917 () Int)

(assert (=> bs!1104270 (not (= lambda!213917 lambda!213808))))

(declare-fun bs!1104271 () Bool)

(assert (= bs!1104271 (and b!4715519 d!1500460)))

(assert (=> bs!1104271 (not (= lambda!213917 lambda!213827))))

(declare-fun bs!1104272 () Bool)

(assert (= bs!1104272 (and b!4715519 b!4715482)))

(assert (=> bs!1104272 (= (= lt!1880031 lt!1880404) (= lambda!213917 lambda!213915))))

(declare-fun bs!1104273 () Bool)

(assert (= bs!1104273 (and b!4715519 b!4715483)))

(assert (=> bs!1104273 (= lambda!213917 lambda!213913)))

(assert (=> bs!1104272 (= lambda!213917 lambda!213914)))

(declare-fun bs!1104274 () Bool)

(assert (= bs!1104274 (and b!4715519 d!1500466)))

(assert (=> bs!1104274 (= (= lt!1880031 lt!1880410) (= lambda!213917 lambda!213916))))

(assert (=> b!4715519 true))

(declare-fun bs!1104275 () Bool)

(declare-fun b!4715518 () Bool)

(assert (= bs!1104275 (and b!4715518 d!1500400)))

(declare-fun lambda!213920 () Int)

(assert (=> bs!1104275 (not (= lambda!213920 lambda!213808))))

(declare-fun bs!1104276 () Bool)

(assert (= bs!1104276 (and b!4715518 d!1500460)))

(assert (=> bs!1104276 (not (= lambda!213920 lambda!213827))))

(declare-fun bs!1104277 () Bool)

(assert (= bs!1104277 (and b!4715518 b!4715482)))

(assert (=> bs!1104277 (= (= lt!1880031 lt!1880404) (= lambda!213920 lambda!213915))))

(declare-fun bs!1104278 () Bool)

(assert (= bs!1104278 (and b!4715518 b!4715483)))

(assert (=> bs!1104278 (= lambda!213920 lambda!213913)))

(declare-fun bs!1104279 () Bool)

(assert (= bs!1104279 (and b!4715518 b!4715519)))

(assert (=> bs!1104279 (= lambda!213920 lambda!213917)))

(assert (=> bs!1104277 (= lambda!213920 lambda!213914)))

(declare-fun bs!1104280 () Bool)

(assert (= bs!1104280 (and b!4715518 d!1500466)))

(assert (=> bs!1104280 (= (= lt!1880031 lt!1880410) (= lambda!213920 lambda!213916))))

(assert (=> b!4715518 true))

(declare-fun lt!1880453 () ListMap!5221)

(declare-fun lambda!213923 () Int)

(assert (=> b!4715518 (= (= lt!1880453 lt!1880031) (= lambda!213923 lambda!213920))))

(assert (=> bs!1104275 (not (= lambda!213923 lambda!213808))))

(assert (=> bs!1104276 (not (= lambda!213923 lambda!213827))))

(assert (=> bs!1104277 (= (= lt!1880453 lt!1880404) (= lambda!213923 lambda!213915))))

(assert (=> bs!1104278 (= (= lt!1880453 lt!1880031) (= lambda!213923 lambda!213913))))

(assert (=> bs!1104279 (= (= lt!1880453 lt!1880031) (= lambda!213923 lambda!213917))))

(assert (=> bs!1104277 (= (= lt!1880453 lt!1880031) (= lambda!213923 lambda!213914))))

(assert (=> bs!1104280 (= (= lt!1880453 lt!1880410) (= lambda!213923 lambda!213916))))

(assert (=> b!4715518 true))

(declare-fun bs!1104281 () Bool)

(declare-fun d!1500538 () Bool)

(assert (= bs!1104281 (and d!1500538 b!4715518)))

(declare-fun lambda!213926 () Int)

(declare-fun lt!1880459 () ListMap!5221)

(assert (=> bs!1104281 (= (= lt!1880459 lt!1880031) (= lambda!213926 lambda!213920))))

(declare-fun bs!1104282 () Bool)

(assert (= bs!1104282 (and d!1500538 d!1500400)))

(assert (=> bs!1104282 (not (= lambda!213926 lambda!213808))))

(assert (=> bs!1104281 (= (= lt!1880459 lt!1880453) (= lambda!213926 lambda!213923))))

(declare-fun bs!1104283 () Bool)

(assert (= bs!1104283 (and d!1500538 d!1500460)))

(assert (=> bs!1104283 (not (= lambda!213926 lambda!213827))))

(declare-fun bs!1104284 () Bool)

(assert (= bs!1104284 (and d!1500538 b!4715482)))

(assert (=> bs!1104284 (= (= lt!1880459 lt!1880404) (= lambda!213926 lambda!213915))))

(declare-fun bs!1104285 () Bool)

(assert (= bs!1104285 (and d!1500538 b!4715483)))

(assert (=> bs!1104285 (= (= lt!1880459 lt!1880031) (= lambda!213926 lambda!213913))))

(declare-fun bs!1104286 () Bool)

(assert (= bs!1104286 (and d!1500538 b!4715519)))

(assert (=> bs!1104286 (= (= lt!1880459 lt!1880031) (= lambda!213926 lambda!213917))))

(assert (=> bs!1104284 (= (= lt!1880459 lt!1880031) (= lambda!213926 lambda!213914))))

(declare-fun bs!1104287 () Bool)

(assert (= bs!1104287 (and d!1500538 d!1500466)))

(assert (=> bs!1104287 (= (= lt!1880459 lt!1880410) (= lambda!213926 lambda!213916))))

(assert (=> d!1500538 true))

(declare-fun e!2941012 () Bool)

(assert (=> d!1500538 e!2941012))

(declare-fun res!1993815 () Bool)

(assert (=> d!1500538 (=> (not res!1993815) (not e!2941012))))

(assert (=> d!1500538 (= res!1993815 (forall!11533 lt!1880021 lambda!213926))))

(declare-fun e!2941011 () ListMap!5221)

(assert (=> d!1500538 (= lt!1880459 e!2941011)))

(declare-fun c!805445 () Bool)

(assert (=> d!1500538 (= c!805445 ((_ is Nil!52749) lt!1880021))))

(assert (=> d!1500538 (noDuplicateKeys!1984 lt!1880021)))

(assert (=> d!1500538 (= (addToMapMapFromBucket!1414 lt!1880021 lt!1880031) lt!1880459)))

(declare-fun bm!329684 () Bool)

(declare-fun call!329691 () Unit!128609)

(assert (=> bm!329684 (= call!329691 (lemmaContainsAllItsOwnKeys!778 lt!1880031))))

(assert (=> b!4715518 (= e!2941011 lt!1880453)))

(declare-fun lt!1880463 () ListMap!5221)

(assert (=> b!4715518 (= lt!1880463 (+!2244 lt!1880031 (h!59074 lt!1880021)))))

(assert (=> b!4715518 (= lt!1880453 (addToMapMapFromBucket!1414 (t!360121 lt!1880021) (+!2244 lt!1880031 (h!59074 lt!1880021))))))

(declare-fun lt!1880455 () Unit!128609)

(assert (=> b!4715518 (= lt!1880455 call!329691)))

(declare-fun call!329690 () Bool)

(assert (=> b!4715518 call!329690))

(declare-fun lt!1880467 () Unit!128609)

(assert (=> b!4715518 (= lt!1880467 lt!1880455)))

(assert (=> b!4715518 (forall!11533 (toList!5858 lt!1880463) lambda!213923)))

(declare-fun lt!1880460 () Unit!128609)

(declare-fun Unit!128661 () Unit!128609)

(assert (=> b!4715518 (= lt!1880460 Unit!128661)))

(assert (=> b!4715518 (forall!11533 (t!360121 lt!1880021) lambda!213923)))

(declare-fun lt!1880458 () Unit!128609)

(declare-fun Unit!128662 () Unit!128609)

(assert (=> b!4715518 (= lt!1880458 Unit!128662)))

(declare-fun lt!1880469 () Unit!128609)

(declare-fun Unit!128663 () Unit!128609)

(assert (=> b!4715518 (= lt!1880469 Unit!128663)))

(declare-fun lt!1880472 () Unit!128609)

(assert (=> b!4715518 (= lt!1880472 (forallContained!3602 (toList!5858 lt!1880463) lambda!213923 (h!59074 lt!1880021)))))

(assert (=> b!4715518 (contains!16083 lt!1880463 (_1!30459 (h!59074 lt!1880021)))))

(declare-fun lt!1880471 () Unit!128609)

(declare-fun Unit!128664 () Unit!128609)

(assert (=> b!4715518 (= lt!1880471 Unit!128664)))

(assert (=> b!4715518 (contains!16083 lt!1880453 (_1!30459 (h!59074 lt!1880021)))))

(declare-fun lt!1880464 () Unit!128609)

(declare-fun Unit!128665 () Unit!128609)

(assert (=> b!4715518 (= lt!1880464 Unit!128665)))

(assert (=> b!4715518 (forall!11533 lt!1880021 lambda!213923)))

(declare-fun lt!1880465 () Unit!128609)

(declare-fun Unit!128666 () Unit!128609)

(assert (=> b!4715518 (= lt!1880465 Unit!128666)))

(declare-fun call!329689 () Bool)

(assert (=> b!4715518 call!329689))

(declare-fun lt!1880470 () Unit!128609)

(declare-fun Unit!128667 () Unit!128609)

(assert (=> b!4715518 (= lt!1880470 Unit!128667)))

(declare-fun lt!1880457 () Unit!128609)

(declare-fun Unit!128668 () Unit!128609)

(assert (=> b!4715518 (= lt!1880457 Unit!128668)))

(declare-fun lt!1880452 () Unit!128609)

(assert (=> b!4715518 (= lt!1880452 (addForallContainsKeyThenBeforeAdding!777 lt!1880031 lt!1880453 (_1!30459 (h!59074 lt!1880021)) (_2!30459 (h!59074 lt!1880021))))))

(assert (=> b!4715518 (forall!11533 (toList!5858 lt!1880031) lambda!213923)))

(declare-fun lt!1880461 () Unit!128609)

(assert (=> b!4715518 (= lt!1880461 lt!1880452)))

(assert (=> b!4715518 (forall!11533 (toList!5858 lt!1880031) lambda!213923)))

(declare-fun lt!1880468 () Unit!128609)

(declare-fun Unit!128669 () Unit!128609)

(assert (=> b!4715518 (= lt!1880468 Unit!128669)))

(declare-fun res!1993813 () Bool)

(assert (=> b!4715518 (= res!1993813 (forall!11533 lt!1880021 lambda!213923))))

(declare-fun e!2941010 () Bool)

(assert (=> b!4715518 (=> (not res!1993813) (not e!2941010))))

(assert (=> b!4715518 e!2941010))

(declare-fun lt!1880466 () Unit!128609)

(declare-fun Unit!128670 () Unit!128609)

(assert (=> b!4715518 (= lt!1880466 Unit!128670)))

(assert (=> b!4715519 (= e!2941011 lt!1880031)))

(declare-fun lt!1880454 () Unit!128609)

(assert (=> b!4715519 (= lt!1880454 call!329691)))

(assert (=> b!4715519 call!329689))

(declare-fun lt!1880456 () Unit!128609)

(assert (=> b!4715519 (= lt!1880456 lt!1880454)))

(assert (=> b!4715519 call!329690))

(declare-fun lt!1880462 () Unit!128609)

(declare-fun Unit!128671 () Unit!128609)

(assert (=> b!4715519 (= lt!1880462 Unit!128671)))

(declare-fun bm!329685 () Bool)

(assert (=> bm!329685 (= call!329689 (forall!11533 (ite c!805445 (toList!5858 lt!1880031) (toList!5858 lt!1880463)) (ite c!805445 lambda!213917 lambda!213923)))))

(declare-fun b!4715520 () Bool)

(assert (=> b!4715520 (= e!2941012 (invariantList!1490 (toList!5858 lt!1880459)))))

(declare-fun b!4715521 () Bool)

(declare-fun res!1993814 () Bool)

(assert (=> b!4715521 (=> (not res!1993814) (not e!2941012))))

(assert (=> b!4715521 (= res!1993814 (forall!11533 (toList!5858 lt!1880031) lambda!213926))))

(declare-fun bm!329686 () Bool)

(assert (=> bm!329686 (= call!329690 (forall!11533 (toList!5858 lt!1880031) (ite c!805445 lambda!213917 lambda!213920)))))

(declare-fun b!4715522 () Bool)

(assert (=> b!4715522 (= e!2941010 (forall!11533 (toList!5858 lt!1880031) lambda!213923))))

(assert (= (and d!1500538 c!805445) b!4715519))

(assert (= (and d!1500538 (not c!805445)) b!4715518))

(assert (= (and b!4715518 res!1993813) b!4715522))

(assert (= (or b!4715519 b!4715518) bm!329684))

(assert (= (or b!4715519 b!4715518) bm!329686))

(assert (= (or b!4715519 b!4715518) bm!329685))

(assert (= (and d!1500538 res!1993815) b!4715521))

(assert (= (and b!4715521 res!1993814) b!4715520))

(assert (=> bm!329684 m!5644313))

(declare-fun m!5644381 () Bool)

(assert (=> d!1500538 m!5644381))

(declare-fun m!5644383 () Bool)

(assert (=> d!1500538 m!5644383))

(declare-fun m!5644385 () Bool)

(assert (=> b!4715521 m!5644385))

(declare-fun m!5644387 () Bool)

(assert (=> bm!329685 m!5644387))

(declare-fun m!5644389 () Bool)

(assert (=> b!4715518 m!5644389))

(declare-fun m!5644391 () Bool)

(assert (=> b!4715518 m!5644391))

(declare-fun m!5644393 () Bool)

(assert (=> b!4715518 m!5644393))

(declare-fun m!5644395 () Bool)

(assert (=> b!4715518 m!5644395))

(declare-fun m!5644397 () Bool)

(assert (=> b!4715518 m!5644397))

(declare-fun m!5644399 () Bool)

(assert (=> b!4715518 m!5644399))

(assert (=> b!4715518 m!5644391))

(declare-fun m!5644401 () Bool)

(assert (=> b!4715518 m!5644401))

(declare-fun m!5644403 () Bool)

(assert (=> b!4715518 m!5644403))

(declare-fun m!5644405 () Bool)

(assert (=> b!4715518 m!5644405))

(declare-fun m!5644407 () Bool)

(assert (=> b!4715518 m!5644407))

(assert (=> b!4715518 m!5644403))

(assert (=> b!4715518 m!5644399))

(assert (=> b!4715522 m!5644391))

(declare-fun m!5644409 () Bool)

(assert (=> b!4715520 m!5644409))

(declare-fun m!5644411 () Bool)

(assert (=> bm!329686 m!5644411))

(assert (=> b!4715200 d!1500538))

(declare-fun bs!1104288 () Bool)

(declare-fun d!1500540 () Bool)

(assert (= bs!1104288 (and d!1500540 d!1500440)))

(declare-fun lambda!213927 () Int)

(assert (=> bs!1104288 (= lambda!213927 lambda!213821)))

(declare-fun bs!1104289 () Bool)

(assert (= bs!1104289 (and d!1500540 d!1500462)))

(assert (=> bs!1104289 (= lambda!213927 lambda!213852)))

(declare-fun bs!1104290 () Bool)

(assert (= bs!1104290 (and d!1500540 d!1500446)))

(assert (=> bs!1104290 (= lambda!213927 lambda!213824)))

(declare-fun bs!1104291 () Bool)

(assert (= bs!1104291 (and d!1500540 d!1500404)))

(assert (=> bs!1104291 (= lambda!213927 lambda!213816)))

(declare-fun bs!1104292 () Bool)

(assert (= bs!1104292 (and d!1500540 start!479484)))

(assert (=> bs!1104292 (= lambda!213927 lambda!213795)))

(declare-fun bs!1104293 () Bool)

(assert (= bs!1104293 (and d!1500540 d!1500422)))

(assert (=> bs!1104293 (= lambda!213927 lambda!213817)))

(declare-fun lt!1880489 () ListMap!5221)

(assert (=> d!1500540 (invariantList!1490 (toList!5858 lt!1880489))))

(declare-fun e!2941017 () ListMap!5221)

(assert (=> d!1500540 (= lt!1880489 e!2941017)))

(declare-fun c!805446 () Bool)

(assert (=> d!1500540 (= c!805446 ((_ is Cons!52750) lt!1880027))))

(assert (=> d!1500540 (forall!11531 lt!1880027 lambda!213927)))

(assert (=> d!1500540 (= (extractMap!2010 lt!1880027) lt!1880489)))

(declare-fun b!4715531 () Bool)

(assert (=> b!4715531 (= e!2941017 (addToMapMapFromBucket!1414 (_2!30460 (h!59075 lt!1880027)) (extractMap!2010 (t!360122 lt!1880027))))))

(declare-fun b!4715532 () Bool)

(assert (=> b!4715532 (= e!2941017 (ListMap!5222 Nil!52749))))

(assert (= (and d!1500540 c!805446) b!4715531))

(assert (= (and d!1500540 (not c!805446)) b!4715532))

(declare-fun m!5644413 () Bool)

(assert (=> d!1500540 m!5644413))

(declare-fun m!5644415 () Bool)

(assert (=> d!1500540 m!5644415))

(declare-fun m!5644417 () Bool)

(assert (=> b!4715531 m!5644417))

(assert (=> b!4715531 m!5644417))

(declare-fun m!5644419 () Bool)

(assert (=> b!4715531 m!5644419))

(assert (=> b!4715200 d!1500540))

(declare-fun d!1500542 () Bool)

(declare-fun e!2941020 () Bool)

(assert (=> d!1500542 e!2941020))

(declare-fun res!1993828 () Bool)

(assert (=> d!1500542 (=> (not res!1993828) (not e!2941020))))

(declare-fun lt!1880498 () ListMap!5221)

(assert (=> d!1500542 (= res!1993828 (contains!16083 lt!1880498 (_1!30459 lt!1880026)))))

(declare-fun lt!1880501 () List!52873)

(assert (=> d!1500542 (= lt!1880498 (ListMap!5222 lt!1880501))))

(declare-fun lt!1880500 () Unit!128609)

(declare-fun lt!1880499 () Unit!128609)

(assert (=> d!1500542 (= lt!1880500 lt!1880499)))

(assert (=> d!1500542 (= (getValueByKey!1926 lt!1880501 (_1!30459 lt!1880026)) (Some!12317 (_2!30459 lt!1880026)))))

(assert (=> d!1500542 (= lt!1880499 (lemmaContainsTupThenGetReturnValue!1072 lt!1880501 (_1!30459 lt!1880026) (_2!30459 lt!1880026)))))

(assert (=> d!1500542 (= lt!1880501 (insertNoDuplicatedKeys!580 (toList!5858 (addToMapMapFromBucket!1414 lt!1880021 lt!1880031)) (_1!30459 lt!1880026) (_2!30459 lt!1880026)))))

(assert (=> d!1500542 (= (+!2244 (addToMapMapFromBucket!1414 lt!1880021 lt!1880031) lt!1880026) lt!1880498)))

(declare-fun b!4715537 () Bool)

(declare-fun res!1993829 () Bool)

(assert (=> b!4715537 (=> (not res!1993829) (not e!2941020))))

(assert (=> b!4715537 (= res!1993829 (= (getValueByKey!1926 (toList!5858 lt!1880498) (_1!30459 lt!1880026)) (Some!12317 (_2!30459 lt!1880026))))))

(declare-fun b!4715538 () Bool)

(assert (=> b!4715538 (= e!2941020 (contains!16088 (toList!5858 lt!1880498) lt!1880026))))

(assert (= (and d!1500542 res!1993828) b!4715537))

(assert (= (and b!4715537 res!1993829) b!4715538))

(declare-fun m!5644421 () Bool)

(assert (=> d!1500542 m!5644421))

(declare-fun m!5644423 () Bool)

(assert (=> d!1500542 m!5644423))

(declare-fun m!5644425 () Bool)

(assert (=> d!1500542 m!5644425))

(declare-fun m!5644427 () Bool)

(assert (=> d!1500542 m!5644427))

(declare-fun m!5644429 () Bool)

(assert (=> b!4715537 m!5644429))

(declare-fun m!5644431 () Bool)

(assert (=> b!4715538 m!5644431))

(assert (=> b!4715200 d!1500542))

(declare-fun d!1500544 () Bool)

(assert (=> d!1500544 (= (eq!1111 (addToMapMapFromBucket!1414 (Cons!52749 lt!1880035 lt!1880018) lt!1880031) (+!2244 (addToMapMapFromBucket!1414 lt!1880018 lt!1880031) lt!1880035)) (= (content!9360 (toList!5858 (addToMapMapFromBucket!1414 (Cons!52749 lt!1880035 lt!1880018) lt!1880031))) (content!9360 (toList!5858 (+!2244 (addToMapMapFromBucket!1414 lt!1880018 lt!1880031) lt!1880035)))))))

(declare-fun bs!1104301 () Bool)

(assert (= bs!1104301 d!1500544))

(declare-fun m!5644433 () Bool)

(assert (=> bs!1104301 m!5644433))

(declare-fun m!5644435 () Bool)

(assert (=> bs!1104301 m!5644435))

(assert (=> b!4715200 d!1500544))

(declare-fun d!1500546 () Bool)

(assert (=> d!1500546 (= (eq!1111 (addToMapMapFromBucket!1414 (Cons!52749 lt!1880026 lt!1880021) lt!1880031) (+!2244 (addToMapMapFromBucket!1414 lt!1880021 lt!1880031) lt!1880026)) (= (content!9360 (toList!5858 (addToMapMapFromBucket!1414 (Cons!52749 lt!1880026 lt!1880021) lt!1880031))) (content!9360 (toList!5858 (+!2244 (addToMapMapFromBucket!1414 lt!1880021 lt!1880031) lt!1880026)))))))

(declare-fun bs!1104305 () Bool)

(assert (= bs!1104305 d!1500546))

(declare-fun m!5644437 () Bool)

(assert (=> bs!1104305 m!5644437))

(declare-fun m!5644439 () Bool)

(assert (=> bs!1104305 m!5644439))

(assert (=> b!4715200 d!1500546))

(declare-fun bs!1104309 () Bool)

(declare-fun d!1500548 () Bool)

(assert (= bs!1104309 (and d!1500548 d!1500540)))

(declare-fun lambda!213929 () Int)

(assert (=> bs!1104309 (= lambda!213929 lambda!213927)))

(declare-fun bs!1104310 () Bool)

(assert (= bs!1104310 (and d!1500548 d!1500440)))

(assert (=> bs!1104310 (= lambda!213929 lambda!213821)))

(declare-fun bs!1104311 () Bool)

(assert (= bs!1104311 (and d!1500548 d!1500462)))

(assert (=> bs!1104311 (= lambda!213929 lambda!213852)))

(declare-fun bs!1104312 () Bool)

(assert (= bs!1104312 (and d!1500548 d!1500446)))

(assert (=> bs!1104312 (= lambda!213929 lambda!213824)))

(declare-fun bs!1104313 () Bool)

(assert (= bs!1104313 (and d!1500548 d!1500404)))

(assert (=> bs!1104313 (= lambda!213929 lambda!213816)))

(declare-fun bs!1104314 () Bool)

(assert (= bs!1104314 (and d!1500548 start!479484)))

(assert (=> bs!1104314 (= lambda!213929 lambda!213795)))

(declare-fun bs!1104315 () Bool)

(assert (= bs!1104315 (and d!1500548 d!1500422)))

(assert (=> bs!1104315 (= lambda!213929 lambda!213817)))

(declare-fun lt!1880502 () ListMap!5221)

(assert (=> d!1500548 (invariantList!1490 (toList!5858 lt!1880502))))

(declare-fun e!2941021 () ListMap!5221)

(assert (=> d!1500548 (= lt!1880502 e!2941021)))

(declare-fun c!805447 () Bool)

(assert (=> d!1500548 (= c!805447 ((_ is Cons!52750) (Cons!52750 (tuple2!54333 hash!405 lt!1880018) (t!360122 (toList!5857 lm!2023)))))))

(assert (=> d!1500548 (forall!11531 (Cons!52750 (tuple2!54333 hash!405 lt!1880018) (t!360122 (toList!5857 lm!2023))) lambda!213929)))

(assert (=> d!1500548 (= (extractMap!2010 (Cons!52750 (tuple2!54333 hash!405 lt!1880018) (t!360122 (toList!5857 lm!2023)))) lt!1880502)))

(declare-fun b!4715539 () Bool)

(assert (=> b!4715539 (= e!2941021 (addToMapMapFromBucket!1414 (_2!30460 (h!59075 (Cons!52750 (tuple2!54333 hash!405 lt!1880018) (t!360122 (toList!5857 lm!2023))))) (extractMap!2010 (t!360122 (Cons!52750 (tuple2!54333 hash!405 lt!1880018) (t!360122 (toList!5857 lm!2023)))))))))

(declare-fun b!4715540 () Bool)

(assert (=> b!4715540 (= e!2941021 (ListMap!5222 Nil!52749))))

(assert (= (and d!1500548 c!805447) b!4715539))

(assert (= (and d!1500548 (not c!805447)) b!4715540))

(declare-fun m!5644441 () Bool)

(assert (=> d!1500548 m!5644441))

(declare-fun m!5644443 () Bool)

(assert (=> d!1500548 m!5644443))

(declare-fun m!5644445 () Bool)

(assert (=> b!4715539 m!5644445))

(assert (=> b!4715539 m!5644445))

(declare-fun m!5644447 () Bool)

(assert (=> b!4715539 m!5644447))

(assert (=> b!4715200 d!1500548))

(declare-fun bs!1104316 () Bool)

(declare-fun b!4715542 () Bool)

(assert (= bs!1104316 (and b!4715542 b!4715518)))

(declare-fun lambda!213930 () Int)

(assert (=> bs!1104316 (= lambda!213930 lambda!213920)))

(declare-fun bs!1104317 () Bool)

(assert (= bs!1104317 (and b!4715542 d!1500400)))

(assert (=> bs!1104317 (not (= lambda!213930 lambda!213808))))

(assert (=> bs!1104316 (= (= lt!1880031 lt!1880453) (= lambda!213930 lambda!213923))))

(declare-fun bs!1104318 () Bool)

(assert (= bs!1104318 (and b!4715542 d!1500460)))

(assert (=> bs!1104318 (not (= lambda!213930 lambda!213827))))

(declare-fun bs!1104319 () Bool)

(assert (= bs!1104319 (and b!4715542 d!1500538)))

(assert (=> bs!1104319 (= (= lt!1880031 lt!1880459) (= lambda!213930 lambda!213926))))

(declare-fun bs!1104320 () Bool)

(assert (= bs!1104320 (and b!4715542 b!4715482)))

(assert (=> bs!1104320 (= (= lt!1880031 lt!1880404) (= lambda!213930 lambda!213915))))

(declare-fun bs!1104321 () Bool)

(assert (= bs!1104321 (and b!4715542 b!4715483)))

(assert (=> bs!1104321 (= lambda!213930 lambda!213913)))

(declare-fun bs!1104322 () Bool)

(assert (= bs!1104322 (and b!4715542 b!4715519)))

(assert (=> bs!1104322 (= lambda!213930 lambda!213917)))

(assert (=> bs!1104320 (= lambda!213930 lambda!213914)))

(declare-fun bs!1104323 () Bool)

(assert (= bs!1104323 (and b!4715542 d!1500466)))

(assert (=> bs!1104323 (= (= lt!1880031 lt!1880410) (= lambda!213930 lambda!213916))))

(assert (=> b!4715542 true))

(declare-fun bs!1104324 () Bool)

(declare-fun b!4715541 () Bool)

(assert (= bs!1104324 (and b!4715541 b!4715518)))

(declare-fun lambda!213931 () Int)

(assert (=> bs!1104324 (= lambda!213931 lambda!213920)))

(declare-fun bs!1104325 () Bool)

(assert (= bs!1104325 (and b!4715541 b!4715542)))

(assert (=> bs!1104325 (= lambda!213931 lambda!213930)))

(declare-fun bs!1104326 () Bool)

(assert (= bs!1104326 (and b!4715541 d!1500400)))

(assert (=> bs!1104326 (not (= lambda!213931 lambda!213808))))

(assert (=> bs!1104324 (= (= lt!1880031 lt!1880453) (= lambda!213931 lambda!213923))))

(declare-fun bs!1104327 () Bool)

(assert (= bs!1104327 (and b!4715541 d!1500460)))

(assert (=> bs!1104327 (not (= lambda!213931 lambda!213827))))

(declare-fun bs!1104328 () Bool)

(assert (= bs!1104328 (and b!4715541 d!1500538)))

(assert (=> bs!1104328 (= (= lt!1880031 lt!1880459) (= lambda!213931 lambda!213926))))

(declare-fun bs!1104329 () Bool)

(assert (= bs!1104329 (and b!4715541 b!4715482)))

(assert (=> bs!1104329 (= (= lt!1880031 lt!1880404) (= lambda!213931 lambda!213915))))

(declare-fun bs!1104330 () Bool)

(assert (= bs!1104330 (and b!4715541 b!4715483)))

(assert (=> bs!1104330 (= lambda!213931 lambda!213913)))

(declare-fun bs!1104331 () Bool)

(assert (= bs!1104331 (and b!4715541 b!4715519)))

(assert (=> bs!1104331 (= lambda!213931 lambda!213917)))

(assert (=> bs!1104329 (= lambda!213931 lambda!213914)))

(declare-fun bs!1104332 () Bool)

(assert (= bs!1104332 (and b!4715541 d!1500466)))

(assert (=> bs!1104332 (= (= lt!1880031 lt!1880410) (= lambda!213931 lambda!213916))))

(assert (=> b!4715541 true))

(declare-fun lambda!213932 () Int)

(declare-fun lt!1880504 () ListMap!5221)

(assert (=> bs!1104324 (= (= lt!1880504 lt!1880031) (= lambda!213932 lambda!213920))))

(assert (=> bs!1104325 (= (= lt!1880504 lt!1880031) (= lambda!213932 lambda!213930))))

(assert (=> bs!1104326 (not (= lambda!213932 lambda!213808))))

(assert (=> bs!1104324 (= (= lt!1880504 lt!1880453) (= lambda!213932 lambda!213923))))

(assert (=> bs!1104327 (not (= lambda!213932 lambda!213827))))

(assert (=> bs!1104328 (= (= lt!1880504 lt!1880459) (= lambda!213932 lambda!213926))))

(assert (=> bs!1104329 (= (= lt!1880504 lt!1880404) (= lambda!213932 lambda!213915))))

(assert (=> bs!1104330 (= (= lt!1880504 lt!1880031) (= lambda!213932 lambda!213913))))

(assert (=> bs!1104331 (= (= lt!1880504 lt!1880031) (= lambda!213932 lambda!213917))))

(assert (=> bs!1104329 (= (= lt!1880504 lt!1880031) (= lambda!213932 lambda!213914))))

(assert (=> b!4715541 (= (= lt!1880504 lt!1880031) (= lambda!213932 lambda!213931))))

(assert (=> bs!1104332 (= (= lt!1880504 lt!1880410) (= lambda!213932 lambda!213916))))

(assert (=> b!4715541 true))

(declare-fun bs!1104335 () Bool)

(declare-fun d!1500550 () Bool)

(assert (= bs!1104335 (and d!1500550 b!4715518)))

(declare-fun lambda!213933 () Int)

(declare-fun lt!1880510 () ListMap!5221)

(assert (=> bs!1104335 (= (= lt!1880510 lt!1880031) (= lambda!213933 lambda!213920))))

(declare-fun bs!1104336 () Bool)

(assert (= bs!1104336 (and d!1500550 b!4715542)))

(assert (=> bs!1104336 (= (= lt!1880510 lt!1880031) (= lambda!213933 lambda!213930))))

(declare-fun bs!1104337 () Bool)

(assert (= bs!1104337 (and d!1500550 d!1500400)))

(assert (=> bs!1104337 (not (= lambda!213933 lambda!213808))))

(assert (=> bs!1104335 (= (= lt!1880510 lt!1880453) (= lambda!213933 lambda!213923))))

(declare-fun bs!1104338 () Bool)

(assert (= bs!1104338 (and d!1500550 d!1500460)))

(assert (=> bs!1104338 (not (= lambda!213933 lambda!213827))))

(declare-fun bs!1104339 () Bool)

(assert (= bs!1104339 (and d!1500550 d!1500538)))

(assert (=> bs!1104339 (= (= lt!1880510 lt!1880459) (= lambda!213933 lambda!213926))))

(declare-fun bs!1104340 () Bool)

(assert (= bs!1104340 (and d!1500550 b!4715482)))

(assert (=> bs!1104340 (= (= lt!1880510 lt!1880404) (= lambda!213933 lambda!213915))))

(declare-fun bs!1104341 () Bool)

(assert (= bs!1104341 (and d!1500550 b!4715483)))

(assert (=> bs!1104341 (= (= lt!1880510 lt!1880031) (= lambda!213933 lambda!213913))))

(declare-fun bs!1104342 () Bool)

(assert (= bs!1104342 (and d!1500550 b!4715541)))

(assert (=> bs!1104342 (= (= lt!1880510 lt!1880504) (= lambda!213933 lambda!213932))))

(declare-fun bs!1104343 () Bool)

(assert (= bs!1104343 (and d!1500550 b!4715519)))

(assert (=> bs!1104343 (= (= lt!1880510 lt!1880031) (= lambda!213933 lambda!213917))))

(assert (=> bs!1104340 (= (= lt!1880510 lt!1880031) (= lambda!213933 lambda!213914))))

(assert (=> bs!1104342 (= (= lt!1880510 lt!1880031) (= lambda!213933 lambda!213931))))

(declare-fun bs!1104344 () Bool)

(assert (= bs!1104344 (and d!1500550 d!1500466)))

(assert (=> bs!1104344 (= (= lt!1880510 lt!1880410) (= lambda!213933 lambda!213916))))

(assert (=> d!1500550 true))

(declare-fun e!2941024 () Bool)

(assert (=> d!1500550 e!2941024))

(declare-fun res!1993832 () Bool)

(assert (=> d!1500550 (=> (not res!1993832) (not e!2941024))))

(assert (=> d!1500550 (= res!1993832 (forall!11533 (Cons!52749 lt!1880035 lt!1880018) lambda!213933))))

(declare-fun e!2941023 () ListMap!5221)

(assert (=> d!1500550 (= lt!1880510 e!2941023)))

(declare-fun c!805448 () Bool)

(assert (=> d!1500550 (= c!805448 ((_ is Nil!52749) (Cons!52749 lt!1880035 lt!1880018)))))

(assert (=> d!1500550 (noDuplicateKeys!1984 (Cons!52749 lt!1880035 lt!1880018))))

(assert (=> d!1500550 (= (addToMapMapFromBucket!1414 (Cons!52749 lt!1880035 lt!1880018) lt!1880031) lt!1880510)))

(declare-fun bm!329687 () Bool)

(declare-fun call!329694 () Unit!128609)

(assert (=> bm!329687 (= call!329694 (lemmaContainsAllItsOwnKeys!778 lt!1880031))))

(assert (=> b!4715541 (= e!2941023 lt!1880504)))

(declare-fun lt!1880514 () ListMap!5221)

(assert (=> b!4715541 (= lt!1880514 (+!2244 lt!1880031 (h!59074 (Cons!52749 lt!1880035 lt!1880018))))))

(assert (=> b!4715541 (= lt!1880504 (addToMapMapFromBucket!1414 (t!360121 (Cons!52749 lt!1880035 lt!1880018)) (+!2244 lt!1880031 (h!59074 (Cons!52749 lt!1880035 lt!1880018)))))))

(declare-fun lt!1880506 () Unit!128609)

(assert (=> b!4715541 (= lt!1880506 call!329694)))

(declare-fun call!329693 () Bool)

(assert (=> b!4715541 call!329693))

(declare-fun lt!1880518 () Unit!128609)

(assert (=> b!4715541 (= lt!1880518 lt!1880506)))

(assert (=> b!4715541 (forall!11533 (toList!5858 lt!1880514) lambda!213932)))

(declare-fun lt!1880511 () Unit!128609)

(declare-fun Unit!128683 () Unit!128609)

(assert (=> b!4715541 (= lt!1880511 Unit!128683)))

(assert (=> b!4715541 (forall!11533 (t!360121 (Cons!52749 lt!1880035 lt!1880018)) lambda!213932)))

(declare-fun lt!1880509 () Unit!128609)

(declare-fun Unit!128684 () Unit!128609)

(assert (=> b!4715541 (= lt!1880509 Unit!128684)))

(declare-fun lt!1880520 () Unit!128609)

(declare-fun Unit!128685 () Unit!128609)

(assert (=> b!4715541 (= lt!1880520 Unit!128685)))

(declare-fun lt!1880523 () Unit!128609)

(assert (=> b!4715541 (= lt!1880523 (forallContained!3602 (toList!5858 lt!1880514) lambda!213932 (h!59074 (Cons!52749 lt!1880035 lt!1880018))))))

(assert (=> b!4715541 (contains!16083 lt!1880514 (_1!30459 (h!59074 (Cons!52749 lt!1880035 lt!1880018))))))

(declare-fun lt!1880522 () Unit!128609)

(declare-fun Unit!128686 () Unit!128609)

(assert (=> b!4715541 (= lt!1880522 Unit!128686)))

(assert (=> b!4715541 (contains!16083 lt!1880504 (_1!30459 (h!59074 (Cons!52749 lt!1880035 lt!1880018))))))

(declare-fun lt!1880515 () Unit!128609)

(declare-fun Unit!128687 () Unit!128609)

(assert (=> b!4715541 (= lt!1880515 Unit!128687)))

(assert (=> b!4715541 (forall!11533 (Cons!52749 lt!1880035 lt!1880018) lambda!213932)))

(declare-fun lt!1880516 () Unit!128609)

(declare-fun Unit!128688 () Unit!128609)

(assert (=> b!4715541 (= lt!1880516 Unit!128688)))

(declare-fun call!329692 () Bool)

(assert (=> b!4715541 call!329692))

(declare-fun lt!1880521 () Unit!128609)

(declare-fun Unit!128689 () Unit!128609)

(assert (=> b!4715541 (= lt!1880521 Unit!128689)))

(declare-fun lt!1880508 () Unit!128609)

(declare-fun Unit!128690 () Unit!128609)

(assert (=> b!4715541 (= lt!1880508 Unit!128690)))

(declare-fun lt!1880503 () Unit!128609)

(assert (=> b!4715541 (= lt!1880503 (addForallContainsKeyThenBeforeAdding!777 lt!1880031 lt!1880504 (_1!30459 (h!59074 (Cons!52749 lt!1880035 lt!1880018))) (_2!30459 (h!59074 (Cons!52749 lt!1880035 lt!1880018)))))))

(assert (=> b!4715541 (forall!11533 (toList!5858 lt!1880031) lambda!213932)))

(declare-fun lt!1880512 () Unit!128609)

(assert (=> b!4715541 (= lt!1880512 lt!1880503)))

(assert (=> b!4715541 (forall!11533 (toList!5858 lt!1880031) lambda!213932)))

(declare-fun lt!1880519 () Unit!128609)

(declare-fun Unit!128691 () Unit!128609)

(assert (=> b!4715541 (= lt!1880519 Unit!128691)))

(declare-fun res!1993830 () Bool)

(assert (=> b!4715541 (= res!1993830 (forall!11533 (Cons!52749 lt!1880035 lt!1880018) lambda!213932))))

(declare-fun e!2941022 () Bool)

(assert (=> b!4715541 (=> (not res!1993830) (not e!2941022))))

(assert (=> b!4715541 e!2941022))

(declare-fun lt!1880517 () Unit!128609)

(declare-fun Unit!128692 () Unit!128609)

(assert (=> b!4715541 (= lt!1880517 Unit!128692)))

(assert (=> b!4715542 (= e!2941023 lt!1880031)))

(declare-fun lt!1880505 () Unit!128609)

(assert (=> b!4715542 (= lt!1880505 call!329694)))

(assert (=> b!4715542 call!329692))

(declare-fun lt!1880507 () Unit!128609)

(assert (=> b!4715542 (= lt!1880507 lt!1880505)))

(assert (=> b!4715542 call!329693))

(declare-fun lt!1880513 () Unit!128609)

(declare-fun Unit!128693 () Unit!128609)

(assert (=> b!4715542 (= lt!1880513 Unit!128693)))

(declare-fun bm!329688 () Bool)

(assert (=> bm!329688 (= call!329692 (forall!11533 (ite c!805448 (toList!5858 lt!1880031) (toList!5858 lt!1880514)) (ite c!805448 lambda!213930 lambda!213932)))))

(declare-fun b!4715543 () Bool)

(assert (=> b!4715543 (= e!2941024 (invariantList!1490 (toList!5858 lt!1880510)))))

(declare-fun b!4715544 () Bool)

(declare-fun res!1993831 () Bool)

(assert (=> b!4715544 (=> (not res!1993831) (not e!2941024))))

(assert (=> b!4715544 (= res!1993831 (forall!11533 (toList!5858 lt!1880031) lambda!213933))))

(declare-fun bm!329689 () Bool)

(assert (=> bm!329689 (= call!329693 (forall!11533 (toList!5858 lt!1880031) (ite c!805448 lambda!213930 lambda!213931)))))

(declare-fun b!4715545 () Bool)

(assert (=> b!4715545 (= e!2941022 (forall!11533 (toList!5858 lt!1880031) lambda!213932))))

(assert (= (and d!1500550 c!805448) b!4715542))

(assert (= (and d!1500550 (not c!805448)) b!4715541))

(assert (= (and b!4715541 res!1993830) b!4715545))

(assert (= (or b!4715542 b!4715541) bm!329687))

(assert (= (or b!4715542 b!4715541) bm!329689))

(assert (= (or b!4715542 b!4715541) bm!329688))

(assert (= (and d!1500550 res!1993832) b!4715544))

(assert (= (and b!4715544 res!1993831) b!4715543))

(assert (=> bm!329687 m!5644313))

(declare-fun m!5644473 () Bool)

(assert (=> d!1500550 m!5644473))

(declare-fun m!5644475 () Bool)

(assert (=> d!1500550 m!5644475))

(declare-fun m!5644477 () Bool)

(assert (=> b!4715544 m!5644477))

(declare-fun m!5644479 () Bool)

(assert (=> bm!329688 m!5644479))

(declare-fun m!5644481 () Bool)

(assert (=> b!4715541 m!5644481))

(declare-fun m!5644483 () Bool)

(assert (=> b!4715541 m!5644483))

(declare-fun m!5644485 () Bool)

(assert (=> b!4715541 m!5644485))

(declare-fun m!5644487 () Bool)

(assert (=> b!4715541 m!5644487))

(declare-fun m!5644489 () Bool)

(assert (=> b!4715541 m!5644489))

(declare-fun m!5644491 () Bool)

(assert (=> b!4715541 m!5644491))

(assert (=> b!4715541 m!5644483))

(declare-fun m!5644493 () Bool)

(assert (=> b!4715541 m!5644493))

(declare-fun m!5644495 () Bool)

(assert (=> b!4715541 m!5644495))

(declare-fun m!5644497 () Bool)

(assert (=> b!4715541 m!5644497))

(declare-fun m!5644499 () Bool)

(assert (=> b!4715541 m!5644499))

(assert (=> b!4715541 m!5644495))

(assert (=> b!4715541 m!5644491))

(assert (=> b!4715545 m!5644483))

(declare-fun m!5644501 () Bool)

(assert (=> b!4715543 m!5644501))

(declare-fun m!5644503 () Bool)

(assert (=> bm!329689 m!5644503))

(assert (=> b!4715200 d!1500550))

(declare-fun d!1500556 () Bool)

(assert (=> d!1500556 (eq!1111 (addToMapMapFromBucket!1414 (Cons!52749 lt!1880035 lt!1880018) lt!1880031) (+!2244 (addToMapMapFromBucket!1414 lt!1880018 lt!1880031) lt!1880035))))

(declare-fun lt!1880526 () Unit!128609)

(declare-fun choose!33202 (tuple2!54330 List!52873 ListMap!5221) Unit!128609)

(assert (=> d!1500556 (= lt!1880526 (choose!33202 lt!1880035 lt!1880018 lt!1880031))))

(assert (=> d!1500556 (noDuplicateKeys!1984 lt!1880018)))

(assert (=> d!1500556 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!360 lt!1880035 lt!1880018 lt!1880031) lt!1880526)))

(declare-fun bs!1104345 () Bool)

(assert (= bs!1104345 d!1500556))

(assert (=> bs!1104345 m!5643599))

(assert (=> bs!1104345 m!5643579))

(declare-fun m!5644505 () Bool)

(assert (=> bs!1104345 m!5644505))

(assert (=> bs!1104345 m!5643599))

(assert (=> bs!1104345 m!5643577))

(assert (=> bs!1104345 m!5643579))

(assert (=> bs!1104345 m!5643581))

(assert (=> bs!1104345 m!5643733))

(assert (=> bs!1104345 m!5643577))

(assert (=> b!4715200 d!1500556))

(declare-fun d!1500558 () Bool)

(assert (=> d!1500558 (eq!1111 (addToMapMapFromBucket!1414 (Cons!52749 lt!1880026 lt!1880021) lt!1880031) (+!2244 (addToMapMapFromBucket!1414 lt!1880021 lt!1880031) lt!1880026))))

(declare-fun lt!1880527 () Unit!128609)

(assert (=> d!1500558 (= lt!1880527 (choose!33202 lt!1880026 lt!1880021 lt!1880031))))

(assert (=> d!1500558 (noDuplicateKeys!1984 lt!1880021)))

(assert (=> d!1500558 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!360 lt!1880026 lt!1880021 lt!1880031) lt!1880527)))

(declare-fun bs!1104346 () Bool)

(assert (= bs!1104346 d!1500558))

(assert (=> bs!1104346 m!5643597))

(assert (=> bs!1104346 m!5643601))

(declare-fun m!5644507 () Bool)

(assert (=> bs!1104346 m!5644507))

(assert (=> bs!1104346 m!5643597))

(assert (=> bs!1104346 m!5643583))

(assert (=> bs!1104346 m!5643601))

(assert (=> bs!1104346 m!5643603))

(assert (=> bs!1104346 m!5644383))

(assert (=> bs!1104346 m!5643583))

(assert (=> b!4715200 d!1500558))

(declare-fun bs!1104347 () Bool)

(declare-fun d!1500560 () Bool)

(assert (= bs!1104347 (and d!1500560 d!1500548)))

(declare-fun lambda!213934 () Int)

(assert (=> bs!1104347 (= lambda!213934 lambda!213929)))

(declare-fun bs!1104348 () Bool)

(assert (= bs!1104348 (and d!1500560 d!1500540)))

(assert (=> bs!1104348 (= lambda!213934 lambda!213927)))

(declare-fun bs!1104349 () Bool)

(assert (= bs!1104349 (and d!1500560 d!1500440)))

(assert (=> bs!1104349 (= lambda!213934 lambda!213821)))

(declare-fun bs!1104350 () Bool)

(assert (= bs!1104350 (and d!1500560 d!1500462)))

(assert (=> bs!1104350 (= lambda!213934 lambda!213852)))

(declare-fun bs!1104351 () Bool)

(assert (= bs!1104351 (and d!1500560 d!1500446)))

(assert (=> bs!1104351 (= lambda!213934 lambda!213824)))

(declare-fun bs!1104352 () Bool)

(assert (= bs!1104352 (and d!1500560 d!1500404)))

(assert (=> bs!1104352 (= lambda!213934 lambda!213816)))

(declare-fun bs!1104353 () Bool)

(assert (= bs!1104353 (and d!1500560 start!479484)))

(assert (=> bs!1104353 (= lambda!213934 lambda!213795)))

(declare-fun bs!1104354 () Bool)

(assert (= bs!1104354 (and d!1500560 d!1500422)))

(assert (=> bs!1104354 (= lambda!213934 lambda!213817)))

(declare-fun lt!1880528 () ListMap!5221)

(assert (=> d!1500560 (invariantList!1490 (toList!5858 lt!1880528))))

(declare-fun e!2941032 () ListMap!5221)

(assert (=> d!1500560 (= lt!1880528 e!2941032)))

(declare-fun c!805449 () Bool)

(assert (=> d!1500560 (= c!805449 ((_ is Cons!52750) (Cons!52750 lt!1880038 (t!360122 (toList!5857 lm!2023)))))))

(assert (=> d!1500560 (forall!11531 (Cons!52750 lt!1880038 (t!360122 (toList!5857 lm!2023))) lambda!213934)))

(assert (=> d!1500560 (= (extractMap!2010 (Cons!52750 lt!1880038 (t!360122 (toList!5857 lm!2023)))) lt!1880528)))

(declare-fun b!4715557 () Bool)

(assert (=> b!4715557 (= e!2941032 (addToMapMapFromBucket!1414 (_2!30460 (h!59075 (Cons!52750 lt!1880038 (t!360122 (toList!5857 lm!2023))))) (extractMap!2010 (t!360122 (Cons!52750 lt!1880038 (t!360122 (toList!5857 lm!2023)))))))))

(declare-fun b!4715558 () Bool)

(assert (=> b!4715558 (= e!2941032 (ListMap!5222 Nil!52749))))

(assert (= (and d!1500560 c!805449) b!4715557))

(assert (= (and d!1500560 (not c!805449)) b!4715558))

(declare-fun m!5644509 () Bool)

(assert (=> d!1500560 m!5644509))

(declare-fun m!5644511 () Bool)

(assert (=> d!1500560 m!5644511))

(declare-fun m!5644513 () Bool)

(assert (=> b!4715557 m!5644513))

(assert (=> b!4715557 m!5644513))

(declare-fun m!5644515 () Bool)

(assert (=> b!4715557 m!5644515))

(assert (=> b!4715200 d!1500560))

(declare-fun bs!1104355 () Bool)

(declare-fun b!4715560 () Bool)

(assert (= bs!1104355 (and b!4715560 b!4715518)))

(declare-fun lambda!213935 () Int)

(assert (=> bs!1104355 (= lambda!213935 lambda!213920)))

(declare-fun bs!1104356 () Bool)

(assert (= bs!1104356 (and b!4715560 b!4715542)))

(assert (=> bs!1104356 (= lambda!213935 lambda!213930)))

(declare-fun bs!1104357 () Bool)

(assert (= bs!1104357 (and b!4715560 d!1500400)))

(assert (=> bs!1104357 (not (= lambda!213935 lambda!213808))))

(assert (=> bs!1104355 (= (= lt!1880031 lt!1880453) (= lambda!213935 lambda!213923))))

(declare-fun bs!1104358 () Bool)

(assert (= bs!1104358 (and b!4715560 d!1500550)))

(assert (=> bs!1104358 (= (= lt!1880031 lt!1880510) (= lambda!213935 lambda!213933))))

(declare-fun bs!1104359 () Bool)

(assert (= bs!1104359 (and b!4715560 d!1500460)))

(assert (=> bs!1104359 (not (= lambda!213935 lambda!213827))))

(declare-fun bs!1104360 () Bool)

(assert (= bs!1104360 (and b!4715560 d!1500538)))

(assert (=> bs!1104360 (= (= lt!1880031 lt!1880459) (= lambda!213935 lambda!213926))))

(declare-fun bs!1104361 () Bool)

(assert (= bs!1104361 (and b!4715560 b!4715482)))

(assert (=> bs!1104361 (= (= lt!1880031 lt!1880404) (= lambda!213935 lambda!213915))))

(declare-fun bs!1104362 () Bool)

(assert (= bs!1104362 (and b!4715560 b!4715483)))

(assert (=> bs!1104362 (= lambda!213935 lambda!213913)))

(declare-fun bs!1104363 () Bool)

(assert (= bs!1104363 (and b!4715560 b!4715541)))

(assert (=> bs!1104363 (= (= lt!1880031 lt!1880504) (= lambda!213935 lambda!213932))))

(declare-fun bs!1104364 () Bool)

(assert (= bs!1104364 (and b!4715560 b!4715519)))

(assert (=> bs!1104364 (= lambda!213935 lambda!213917)))

(assert (=> bs!1104361 (= lambda!213935 lambda!213914)))

(assert (=> bs!1104363 (= lambda!213935 lambda!213931)))

(declare-fun bs!1104365 () Bool)

(assert (= bs!1104365 (and b!4715560 d!1500466)))

(assert (=> bs!1104365 (= (= lt!1880031 lt!1880410) (= lambda!213935 lambda!213916))))

(assert (=> b!4715560 true))

(declare-fun bs!1104366 () Bool)

(declare-fun b!4715559 () Bool)

(assert (= bs!1104366 (and b!4715559 b!4715518)))

(declare-fun lambda!213936 () Int)

(assert (=> bs!1104366 (= lambda!213936 lambda!213920)))

(declare-fun bs!1104367 () Bool)

(assert (= bs!1104367 (and b!4715559 b!4715542)))

(assert (=> bs!1104367 (= lambda!213936 lambda!213930)))

(declare-fun bs!1104368 () Bool)

(assert (= bs!1104368 (and b!4715559 d!1500400)))

(assert (=> bs!1104368 (not (= lambda!213936 lambda!213808))))

(assert (=> bs!1104366 (= (= lt!1880031 lt!1880453) (= lambda!213936 lambda!213923))))

(declare-fun bs!1104369 () Bool)

(assert (= bs!1104369 (and b!4715559 d!1500550)))

(assert (=> bs!1104369 (= (= lt!1880031 lt!1880510) (= lambda!213936 lambda!213933))))

(declare-fun bs!1104370 () Bool)

(assert (= bs!1104370 (and b!4715559 d!1500460)))

(assert (=> bs!1104370 (not (= lambda!213936 lambda!213827))))

(declare-fun bs!1104371 () Bool)

(assert (= bs!1104371 (and b!4715559 d!1500538)))

(assert (=> bs!1104371 (= (= lt!1880031 lt!1880459) (= lambda!213936 lambda!213926))))

(declare-fun bs!1104372 () Bool)

(assert (= bs!1104372 (and b!4715559 b!4715560)))

(assert (=> bs!1104372 (= lambda!213936 lambda!213935)))

(declare-fun bs!1104373 () Bool)

(assert (= bs!1104373 (and b!4715559 b!4715482)))

(assert (=> bs!1104373 (= (= lt!1880031 lt!1880404) (= lambda!213936 lambda!213915))))

(declare-fun bs!1104374 () Bool)

(assert (= bs!1104374 (and b!4715559 b!4715483)))

(assert (=> bs!1104374 (= lambda!213936 lambda!213913)))

(declare-fun bs!1104375 () Bool)

(assert (= bs!1104375 (and b!4715559 b!4715541)))

(assert (=> bs!1104375 (= (= lt!1880031 lt!1880504) (= lambda!213936 lambda!213932))))

(declare-fun bs!1104376 () Bool)

(assert (= bs!1104376 (and b!4715559 b!4715519)))

(assert (=> bs!1104376 (= lambda!213936 lambda!213917)))

(assert (=> bs!1104373 (= lambda!213936 lambda!213914)))

(assert (=> bs!1104375 (= lambda!213936 lambda!213931)))

(declare-fun bs!1104377 () Bool)

(assert (= bs!1104377 (and b!4715559 d!1500466)))

(assert (=> bs!1104377 (= (= lt!1880031 lt!1880410) (= lambda!213936 lambda!213916))))

(assert (=> b!4715559 true))

(declare-fun lambda!213937 () Int)

(declare-fun lt!1880530 () ListMap!5221)

(assert (=> bs!1104366 (= (= lt!1880530 lt!1880031) (= lambda!213937 lambda!213920))))

(assert (=> bs!1104367 (= (= lt!1880530 lt!1880031) (= lambda!213937 lambda!213930))))

(assert (=> bs!1104366 (= (= lt!1880530 lt!1880453) (= lambda!213937 lambda!213923))))

(assert (=> bs!1104369 (= (= lt!1880530 lt!1880510) (= lambda!213937 lambda!213933))))

(assert (=> bs!1104370 (not (= lambda!213937 lambda!213827))))

(assert (=> bs!1104371 (= (= lt!1880530 lt!1880459) (= lambda!213937 lambda!213926))))

(assert (=> bs!1104372 (= (= lt!1880530 lt!1880031) (= lambda!213937 lambda!213935))))

(assert (=> bs!1104373 (= (= lt!1880530 lt!1880404) (= lambda!213937 lambda!213915))))

(assert (=> bs!1104374 (= (= lt!1880530 lt!1880031) (= lambda!213937 lambda!213913))))

(assert (=> bs!1104375 (= (= lt!1880530 lt!1880504) (= lambda!213937 lambda!213932))))

(assert (=> bs!1104376 (= (= lt!1880530 lt!1880031) (= lambda!213937 lambda!213917))))

(assert (=> b!4715559 (= (= lt!1880530 lt!1880031) (= lambda!213937 lambda!213936))))

(assert (=> bs!1104368 (not (= lambda!213937 lambda!213808))))

(assert (=> bs!1104373 (= (= lt!1880530 lt!1880031) (= lambda!213937 lambda!213914))))

(assert (=> bs!1104375 (= (= lt!1880530 lt!1880031) (= lambda!213937 lambda!213931))))

(assert (=> bs!1104377 (= (= lt!1880530 lt!1880410) (= lambda!213937 lambda!213916))))

(assert (=> b!4715559 true))

(declare-fun bs!1104378 () Bool)

(declare-fun d!1500562 () Bool)

(assert (= bs!1104378 (and d!1500562 b!4715518)))

(declare-fun lt!1880536 () ListMap!5221)

(declare-fun lambda!213938 () Int)

(assert (=> bs!1104378 (= (= lt!1880536 lt!1880031) (= lambda!213938 lambda!213920))))

(declare-fun bs!1104379 () Bool)

(assert (= bs!1104379 (and d!1500562 b!4715542)))

(assert (=> bs!1104379 (= (= lt!1880536 lt!1880031) (= lambda!213938 lambda!213930))))

(assert (=> bs!1104378 (= (= lt!1880536 lt!1880453) (= lambda!213938 lambda!213923))))

(declare-fun bs!1104380 () Bool)

(assert (= bs!1104380 (and d!1500562 d!1500550)))

(assert (=> bs!1104380 (= (= lt!1880536 lt!1880510) (= lambda!213938 lambda!213933))))

(declare-fun bs!1104381 () Bool)

(assert (= bs!1104381 (and d!1500562 d!1500460)))

(assert (=> bs!1104381 (not (= lambda!213938 lambda!213827))))

(declare-fun bs!1104382 () Bool)

(assert (= bs!1104382 (and d!1500562 d!1500538)))

(assert (=> bs!1104382 (= (= lt!1880536 lt!1880459) (= lambda!213938 lambda!213926))))

(declare-fun bs!1104383 () Bool)

(assert (= bs!1104383 (and d!1500562 b!4715560)))

(assert (=> bs!1104383 (= (= lt!1880536 lt!1880031) (= lambda!213938 lambda!213935))))

(declare-fun bs!1104384 () Bool)

(assert (= bs!1104384 (and d!1500562 b!4715482)))

(assert (=> bs!1104384 (= (= lt!1880536 lt!1880404) (= lambda!213938 lambda!213915))))

(declare-fun bs!1104385 () Bool)

(assert (= bs!1104385 (and d!1500562 b!4715483)))

(assert (=> bs!1104385 (= (= lt!1880536 lt!1880031) (= lambda!213938 lambda!213913))))

(declare-fun bs!1104386 () Bool)

(assert (= bs!1104386 (and d!1500562 b!4715541)))

(assert (=> bs!1104386 (= (= lt!1880536 lt!1880504) (= lambda!213938 lambda!213932))))

(declare-fun bs!1104387 () Bool)

(assert (= bs!1104387 (and d!1500562 b!4715519)))

(assert (=> bs!1104387 (= (= lt!1880536 lt!1880031) (= lambda!213938 lambda!213917))))

(declare-fun bs!1104388 () Bool)

(assert (= bs!1104388 (and d!1500562 b!4715559)))

(assert (=> bs!1104388 (= (= lt!1880536 lt!1880530) (= lambda!213938 lambda!213937))))

(assert (=> bs!1104388 (= (= lt!1880536 lt!1880031) (= lambda!213938 lambda!213936))))

(declare-fun bs!1104389 () Bool)

(assert (= bs!1104389 (and d!1500562 d!1500400)))

(assert (=> bs!1104389 (not (= lambda!213938 lambda!213808))))

(assert (=> bs!1104384 (= (= lt!1880536 lt!1880031) (= lambda!213938 lambda!213914))))

(assert (=> bs!1104386 (= (= lt!1880536 lt!1880031) (= lambda!213938 lambda!213931))))

(declare-fun bs!1104390 () Bool)

(assert (= bs!1104390 (and d!1500562 d!1500466)))

(assert (=> bs!1104390 (= (= lt!1880536 lt!1880410) (= lambda!213938 lambda!213916))))

(assert (=> d!1500562 true))

(declare-fun e!2941035 () Bool)

(assert (=> d!1500562 e!2941035))

(declare-fun res!1993835 () Bool)

(assert (=> d!1500562 (=> (not res!1993835) (not e!2941035))))

(assert (=> d!1500562 (= res!1993835 (forall!11533 lt!1880018 lambda!213938))))

(declare-fun e!2941034 () ListMap!5221)

(assert (=> d!1500562 (= lt!1880536 e!2941034)))

(declare-fun c!805450 () Bool)

(assert (=> d!1500562 (= c!805450 ((_ is Nil!52749) lt!1880018))))

(assert (=> d!1500562 (noDuplicateKeys!1984 lt!1880018)))

(assert (=> d!1500562 (= (addToMapMapFromBucket!1414 lt!1880018 lt!1880031) lt!1880536)))

(declare-fun bm!329690 () Bool)

(declare-fun call!329697 () Unit!128609)

(assert (=> bm!329690 (= call!329697 (lemmaContainsAllItsOwnKeys!778 lt!1880031))))

(assert (=> b!4715559 (= e!2941034 lt!1880530)))

(declare-fun lt!1880540 () ListMap!5221)

(assert (=> b!4715559 (= lt!1880540 (+!2244 lt!1880031 (h!59074 lt!1880018)))))

(assert (=> b!4715559 (= lt!1880530 (addToMapMapFromBucket!1414 (t!360121 lt!1880018) (+!2244 lt!1880031 (h!59074 lt!1880018))))))

(declare-fun lt!1880532 () Unit!128609)

(assert (=> b!4715559 (= lt!1880532 call!329697)))

(declare-fun call!329696 () Bool)

(assert (=> b!4715559 call!329696))

(declare-fun lt!1880544 () Unit!128609)

(assert (=> b!4715559 (= lt!1880544 lt!1880532)))

(assert (=> b!4715559 (forall!11533 (toList!5858 lt!1880540) lambda!213937)))

(declare-fun lt!1880537 () Unit!128609)

(declare-fun Unit!128704 () Unit!128609)

(assert (=> b!4715559 (= lt!1880537 Unit!128704)))

(assert (=> b!4715559 (forall!11533 (t!360121 lt!1880018) lambda!213937)))

(declare-fun lt!1880535 () Unit!128609)

(declare-fun Unit!128705 () Unit!128609)

(assert (=> b!4715559 (= lt!1880535 Unit!128705)))

(declare-fun lt!1880546 () Unit!128609)

(declare-fun Unit!128706 () Unit!128609)

(assert (=> b!4715559 (= lt!1880546 Unit!128706)))

(declare-fun lt!1880549 () Unit!128609)

(assert (=> b!4715559 (= lt!1880549 (forallContained!3602 (toList!5858 lt!1880540) lambda!213937 (h!59074 lt!1880018)))))

(assert (=> b!4715559 (contains!16083 lt!1880540 (_1!30459 (h!59074 lt!1880018)))))

(declare-fun lt!1880548 () Unit!128609)

(declare-fun Unit!128708 () Unit!128609)

(assert (=> b!4715559 (= lt!1880548 Unit!128708)))

(assert (=> b!4715559 (contains!16083 lt!1880530 (_1!30459 (h!59074 lt!1880018)))))

(declare-fun lt!1880541 () Unit!128609)

(declare-fun Unit!128709 () Unit!128609)

(assert (=> b!4715559 (= lt!1880541 Unit!128709)))

(assert (=> b!4715559 (forall!11533 lt!1880018 lambda!213937)))

(declare-fun lt!1880542 () Unit!128609)

(declare-fun Unit!128710 () Unit!128609)

(assert (=> b!4715559 (= lt!1880542 Unit!128710)))

(declare-fun call!329695 () Bool)

(assert (=> b!4715559 call!329695))

(declare-fun lt!1880547 () Unit!128609)

(declare-fun Unit!128711 () Unit!128609)

(assert (=> b!4715559 (= lt!1880547 Unit!128711)))

(declare-fun lt!1880534 () Unit!128609)

(declare-fun Unit!128712 () Unit!128609)

(assert (=> b!4715559 (= lt!1880534 Unit!128712)))

(declare-fun lt!1880529 () Unit!128609)

(assert (=> b!4715559 (= lt!1880529 (addForallContainsKeyThenBeforeAdding!777 lt!1880031 lt!1880530 (_1!30459 (h!59074 lt!1880018)) (_2!30459 (h!59074 lt!1880018))))))

(assert (=> b!4715559 (forall!11533 (toList!5858 lt!1880031) lambda!213937)))

(declare-fun lt!1880538 () Unit!128609)

(assert (=> b!4715559 (= lt!1880538 lt!1880529)))

(assert (=> b!4715559 (forall!11533 (toList!5858 lt!1880031) lambda!213937)))

(declare-fun lt!1880545 () Unit!128609)

(declare-fun Unit!128713 () Unit!128609)

(assert (=> b!4715559 (= lt!1880545 Unit!128713)))

(declare-fun res!1993833 () Bool)

(assert (=> b!4715559 (= res!1993833 (forall!11533 lt!1880018 lambda!213937))))

(declare-fun e!2941033 () Bool)

(assert (=> b!4715559 (=> (not res!1993833) (not e!2941033))))

(assert (=> b!4715559 e!2941033))

(declare-fun lt!1880543 () Unit!128609)

(declare-fun Unit!128714 () Unit!128609)

(assert (=> b!4715559 (= lt!1880543 Unit!128714)))

(assert (=> b!4715560 (= e!2941034 lt!1880031)))

(declare-fun lt!1880531 () Unit!128609)

(assert (=> b!4715560 (= lt!1880531 call!329697)))

(assert (=> b!4715560 call!329695))

(declare-fun lt!1880533 () Unit!128609)

(assert (=> b!4715560 (= lt!1880533 lt!1880531)))

(assert (=> b!4715560 call!329696))

(declare-fun lt!1880539 () Unit!128609)

(declare-fun Unit!128715 () Unit!128609)

(assert (=> b!4715560 (= lt!1880539 Unit!128715)))

(declare-fun bm!329691 () Bool)

(assert (=> bm!329691 (= call!329695 (forall!11533 (ite c!805450 (toList!5858 lt!1880031) (toList!5858 lt!1880540)) (ite c!805450 lambda!213935 lambda!213937)))))

(declare-fun b!4715561 () Bool)

(assert (=> b!4715561 (= e!2941035 (invariantList!1490 (toList!5858 lt!1880536)))))

(declare-fun b!4715562 () Bool)

(declare-fun res!1993834 () Bool)

(assert (=> b!4715562 (=> (not res!1993834) (not e!2941035))))

(assert (=> b!4715562 (= res!1993834 (forall!11533 (toList!5858 lt!1880031) lambda!213938))))

(declare-fun bm!329692 () Bool)

(assert (=> bm!329692 (= call!329696 (forall!11533 (toList!5858 lt!1880031) (ite c!805450 lambda!213935 lambda!213936)))))

(declare-fun b!4715563 () Bool)

(assert (=> b!4715563 (= e!2941033 (forall!11533 (toList!5858 lt!1880031) lambda!213937))))

(assert (= (and d!1500562 c!805450) b!4715560))

(assert (= (and d!1500562 (not c!805450)) b!4715559))

(assert (= (and b!4715559 res!1993833) b!4715563))

(assert (= (or b!4715560 b!4715559) bm!329690))

(assert (= (or b!4715560 b!4715559) bm!329692))

(assert (= (or b!4715560 b!4715559) bm!329691))

(assert (= (and d!1500562 res!1993835) b!4715562))

(assert (= (and b!4715562 res!1993834) b!4715561))

(assert (=> bm!329690 m!5644313))

(declare-fun m!5644517 () Bool)

(assert (=> d!1500562 m!5644517))

(assert (=> d!1500562 m!5643733))

(declare-fun m!5644519 () Bool)

(assert (=> b!4715562 m!5644519))

(declare-fun m!5644521 () Bool)

(assert (=> bm!329691 m!5644521))

(declare-fun m!5644523 () Bool)

(assert (=> b!4715559 m!5644523))

(declare-fun m!5644525 () Bool)

(assert (=> b!4715559 m!5644525))

(declare-fun m!5644527 () Bool)

(assert (=> b!4715559 m!5644527))

(declare-fun m!5644529 () Bool)

(assert (=> b!4715559 m!5644529))

(declare-fun m!5644531 () Bool)

(assert (=> b!4715559 m!5644531))

(declare-fun m!5644533 () Bool)

(assert (=> b!4715559 m!5644533))

(assert (=> b!4715559 m!5644525))

(declare-fun m!5644535 () Bool)

(assert (=> b!4715559 m!5644535))

(declare-fun m!5644537 () Bool)

(assert (=> b!4715559 m!5644537))

(declare-fun m!5644539 () Bool)

(assert (=> b!4715559 m!5644539))

(declare-fun m!5644541 () Bool)

(assert (=> b!4715559 m!5644541))

(assert (=> b!4715559 m!5644537))

(assert (=> b!4715559 m!5644533))

(assert (=> b!4715563 m!5644525))

(declare-fun m!5644543 () Bool)

(assert (=> b!4715561 m!5644543))

(declare-fun m!5644545 () Bool)

(assert (=> bm!329692 m!5644545))

(assert (=> b!4715200 d!1500562))

(declare-fun d!1500564 () Bool)

(assert (=> d!1500564 (= (head!10197 newBucket!218) (h!59074 newBucket!218))))

(assert (=> b!4715200 d!1500564))

(declare-fun d!1500566 () Bool)

(assert (=> d!1500566 (= (head!10198 (toList!5857 lm!2023)) (h!59075 (toList!5857 lm!2023)))))

(assert (=> b!4715210 d!1500566))

(declare-fun d!1500568 () Bool)

(declare-fun e!2941040 () Bool)

(assert (=> d!1500568 e!2941040))

(declare-fun res!1993838 () Bool)

(assert (=> d!1500568 (=> res!1993838 e!2941040)))

(declare-fun lt!1880560 () Bool)

(assert (=> d!1500568 (= res!1993838 (not lt!1880560))))

(declare-fun lt!1880559 () Bool)

(assert (=> d!1500568 (= lt!1880560 lt!1880559)))

(declare-fun lt!1880561 () Unit!128609)

(declare-fun e!2941041 () Unit!128609)

(assert (=> d!1500568 (= lt!1880561 e!2941041)))

(declare-fun c!805453 () Bool)

(assert (=> d!1500568 (= c!805453 lt!1880559)))

(declare-fun containsKey!3316 (List!52874 (_ BitVec 64)) Bool)

(assert (=> d!1500568 (= lt!1880559 (containsKey!3316 (toList!5857 lm!2023) lt!1880041))))

(assert (=> d!1500568 (= (contains!16085 lm!2023 lt!1880041) lt!1880560)))

(declare-fun b!4715570 () Bool)

(declare-fun lt!1880558 () Unit!128609)

(assert (=> b!4715570 (= e!2941041 lt!1880558)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1818 (List!52874 (_ BitVec 64)) Unit!128609)

(assert (=> b!4715570 (= lt!1880558 (lemmaContainsKeyImpliesGetValueByKeyDefined!1818 (toList!5857 lm!2023) lt!1880041))))

(declare-datatypes ((Option!12319 0))(
  ( (None!12318) (Some!12318 (v!46873 List!52873)) )
))
(declare-fun isDefined!9573 (Option!12319) Bool)

(declare-fun getValueByKey!1927 (List!52874 (_ BitVec 64)) Option!12319)

(assert (=> b!4715570 (isDefined!9573 (getValueByKey!1927 (toList!5857 lm!2023) lt!1880041))))

(declare-fun b!4715571 () Bool)

(declare-fun Unit!128716 () Unit!128609)

(assert (=> b!4715571 (= e!2941041 Unit!128716)))

(declare-fun b!4715572 () Bool)

(assert (=> b!4715572 (= e!2941040 (isDefined!9573 (getValueByKey!1927 (toList!5857 lm!2023) lt!1880041)))))

(assert (= (and d!1500568 c!805453) b!4715570))

(assert (= (and d!1500568 (not c!805453)) b!4715571))

(assert (= (and d!1500568 (not res!1993838)) b!4715572))

(declare-fun m!5644547 () Bool)

(assert (=> d!1500568 m!5644547))

(declare-fun m!5644549 () Bool)

(assert (=> b!4715570 m!5644549))

(declare-fun m!5644551 () Bool)

(assert (=> b!4715570 m!5644551))

(assert (=> b!4715570 m!5644551))

(declare-fun m!5644553 () Bool)

(assert (=> b!4715570 m!5644553))

(assert (=> b!4715572 m!5644551))

(assert (=> b!4715572 m!5644551))

(assert (=> b!4715572 m!5644553))

(assert (=> b!4715209 d!1500568))

(declare-fun d!1500570 () Bool)

(declare-fun isEmpty!29160 (Option!12316) Bool)

(assert (=> d!1500570 (= (isDefined!9570 (getPair!550 lt!1880025 key!4653)) (not (isEmpty!29160 (getPair!550 lt!1880025 key!4653))))))

(declare-fun bs!1104391 () Bool)

(assert (= bs!1104391 d!1500570))

(assert (=> bs!1104391 m!5643519))

(declare-fun m!5644555 () Bool)

(assert (=> bs!1104391 m!5644555))

(assert (=> b!4715209 d!1500570))

(declare-fun b!4715589 () Bool)

(declare-fun e!2941053 () Bool)

(declare-fun lt!1880564 () Option!12316)

(declare-fun get!17690 (Option!12316) tuple2!54330)

(assert (=> b!4715589 (= e!2941053 (contains!16088 lt!1880025 (get!17690 lt!1880564)))))

(declare-fun d!1500572 () Bool)

(declare-fun e!2941054 () Bool)

(assert (=> d!1500572 e!2941054))

(declare-fun res!1993849 () Bool)

(assert (=> d!1500572 (=> res!1993849 e!2941054)))

(declare-fun e!2941056 () Bool)

(assert (=> d!1500572 (= res!1993849 e!2941056)))

(declare-fun res!1993848 () Bool)

(assert (=> d!1500572 (=> (not res!1993848) (not e!2941056))))

(assert (=> d!1500572 (= res!1993848 (isEmpty!29160 lt!1880564))))

(declare-fun e!2941055 () Option!12316)

(assert (=> d!1500572 (= lt!1880564 e!2941055)))

(declare-fun c!805459 () Bool)

(assert (=> d!1500572 (= c!805459 (and ((_ is Cons!52749) lt!1880025) (= (_1!30459 (h!59074 lt!1880025)) key!4653)))))

(assert (=> d!1500572 (noDuplicateKeys!1984 lt!1880025)))

(assert (=> d!1500572 (= (getPair!550 lt!1880025 key!4653) lt!1880564)))

(declare-fun b!4715590 () Bool)

(declare-fun e!2941052 () Option!12316)

(assert (=> b!4715590 (= e!2941052 None!12315)))

(declare-fun b!4715591 () Bool)

(declare-fun res!1993847 () Bool)

(assert (=> b!4715591 (=> (not res!1993847) (not e!2941053))))

(assert (=> b!4715591 (= res!1993847 (= (_1!30459 (get!17690 lt!1880564)) key!4653))))

(declare-fun b!4715592 () Bool)

(assert (=> b!4715592 (= e!2941056 (not (containsKey!3313 lt!1880025 key!4653)))))

(declare-fun b!4715593 () Bool)

(assert (=> b!4715593 (= e!2941055 e!2941052)))

(declare-fun c!805458 () Bool)

(assert (=> b!4715593 (= c!805458 ((_ is Cons!52749) lt!1880025))))

(declare-fun b!4715594 () Bool)

(assert (=> b!4715594 (= e!2941055 (Some!12315 (h!59074 lt!1880025)))))

(declare-fun b!4715595 () Bool)

(assert (=> b!4715595 (= e!2941052 (getPair!550 (t!360121 lt!1880025) key!4653))))

(declare-fun b!4715596 () Bool)

(assert (=> b!4715596 (= e!2941054 e!2941053)))

(declare-fun res!1993850 () Bool)

(assert (=> b!4715596 (=> (not res!1993850) (not e!2941053))))

(assert (=> b!4715596 (= res!1993850 (isDefined!9570 lt!1880564))))

(assert (= (and d!1500572 c!805459) b!4715594))

(assert (= (and d!1500572 (not c!805459)) b!4715593))

(assert (= (and b!4715593 c!805458) b!4715595))

(assert (= (and b!4715593 (not c!805458)) b!4715590))

(assert (= (and d!1500572 res!1993848) b!4715592))

(assert (= (and d!1500572 (not res!1993849)) b!4715596))

(assert (= (and b!4715596 res!1993850) b!4715591))

(assert (= (and b!4715591 res!1993847) b!4715589))

(declare-fun m!5644557 () Bool)

(assert (=> b!4715596 m!5644557))

(declare-fun m!5644559 () Bool)

(assert (=> b!4715591 m!5644559))

(declare-fun m!5644561 () Bool)

(assert (=> b!4715592 m!5644561))

(declare-fun m!5644563 () Bool)

(assert (=> d!1500572 m!5644563))

(declare-fun m!5644565 () Bool)

(assert (=> d!1500572 m!5644565))

(assert (=> b!4715589 m!5644559))

(assert (=> b!4715589 m!5644559))

(declare-fun m!5644567 () Bool)

(assert (=> b!4715589 m!5644567))

(declare-fun m!5644569 () Bool)

(assert (=> b!4715595 m!5644569))

(assert (=> b!4715209 d!1500572))

(declare-fun bs!1104392 () Bool)

(declare-fun d!1500574 () Bool)

(assert (= bs!1104392 (and d!1500574 d!1500548)))

(declare-fun lambda!213941 () Int)

(assert (=> bs!1104392 (= lambda!213941 lambda!213929)))

(declare-fun bs!1104393 () Bool)

(assert (= bs!1104393 (and d!1500574 d!1500540)))

(assert (=> bs!1104393 (= lambda!213941 lambda!213927)))

(declare-fun bs!1104394 () Bool)

(assert (= bs!1104394 (and d!1500574 d!1500440)))

(assert (=> bs!1104394 (= lambda!213941 lambda!213821)))

(declare-fun bs!1104395 () Bool)

(assert (= bs!1104395 (and d!1500574 d!1500462)))

(assert (=> bs!1104395 (= lambda!213941 lambda!213852)))

(declare-fun bs!1104396 () Bool)

(assert (= bs!1104396 (and d!1500574 d!1500446)))

(assert (=> bs!1104396 (= lambda!213941 lambda!213824)))

(declare-fun bs!1104397 () Bool)

(assert (= bs!1104397 (and d!1500574 d!1500560)))

(assert (=> bs!1104397 (= lambda!213941 lambda!213934)))

(declare-fun bs!1104398 () Bool)

(assert (= bs!1104398 (and d!1500574 d!1500404)))

(assert (=> bs!1104398 (= lambda!213941 lambda!213816)))

(declare-fun bs!1104399 () Bool)

(assert (= bs!1104399 (and d!1500574 start!479484)))

(assert (=> bs!1104399 (= lambda!213941 lambda!213795)))

(declare-fun bs!1104400 () Bool)

(assert (= bs!1104400 (and d!1500574 d!1500422)))

(assert (=> bs!1104400 (= lambda!213941 lambda!213817)))

(assert (=> d!1500574 (contains!16085 lm!2023 (hash!4326 hashF!1323 key!4653))))

(declare-fun lt!1880567 () Unit!128609)

(declare-fun choose!33206 (ListLongMap!4387 K!14110 Hashable!6353) Unit!128609)

(assert (=> d!1500574 (= lt!1880567 (choose!33206 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500574 (forall!11531 (toList!5857 lm!2023) lambda!213941)))

(assert (=> d!1500574 (= (lemmaInGenMapThenLongMapContainsHash!756 lm!2023 key!4653 hashF!1323) lt!1880567)))

(declare-fun bs!1104401 () Bool)

(assert (= bs!1104401 d!1500574))

(assert (=> bs!1104401 m!5643615))

(assert (=> bs!1104401 m!5643615))

(declare-fun m!5644571 () Bool)

(assert (=> bs!1104401 m!5644571))

(declare-fun m!5644573 () Bool)

(assert (=> bs!1104401 m!5644573))

(declare-fun m!5644575 () Bool)

(assert (=> bs!1104401 m!5644575))

(assert (=> b!4715209 d!1500574))

(declare-fun d!1500576 () Bool)

(assert (=> d!1500576 (contains!16084 (toList!5857 lm!2023) (tuple2!54333 lt!1880041 lt!1880025))))

(declare-fun lt!1880570 () Unit!128609)

(declare-fun choose!33207 (ListLongMap!4387 (_ BitVec 64) List!52873) Unit!128609)

(assert (=> d!1500576 (= lt!1880570 (choose!33207 lm!2023 lt!1880041 lt!1880025))))

(assert (=> d!1500576 (contains!16085 lm!2023 lt!1880041)))

(assert (=> d!1500576 (= (lemmaGetValueImpliesTupleContained!355 lm!2023 lt!1880041 lt!1880025) lt!1880570)))

(declare-fun bs!1104402 () Bool)

(assert (= bs!1104402 d!1500576))

(declare-fun m!5644577 () Bool)

(assert (=> bs!1104402 m!5644577))

(declare-fun m!5644579 () Bool)

(assert (=> bs!1104402 m!5644579))

(assert (=> bs!1104402 m!5643515))

(assert (=> b!4715209 d!1500576))

(declare-fun bs!1104403 () Bool)

(declare-fun d!1500578 () Bool)

(assert (= bs!1104403 (and d!1500578 d!1500548)))

(declare-fun lambda!213948 () Int)

(assert (=> bs!1104403 (= lambda!213948 lambda!213929)))

(declare-fun bs!1104404 () Bool)

(assert (= bs!1104404 (and d!1500578 d!1500574)))

(assert (=> bs!1104404 (= lambda!213948 lambda!213941)))

(declare-fun bs!1104405 () Bool)

(assert (= bs!1104405 (and d!1500578 d!1500540)))

(assert (=> bs!1104405 (= lambda!213948 lambda!213927)))

(declare-fun bs!1104406 () Bool)

(assert (= bs!1104406 (and d!1500578 d!1500440)))

(assert (=> bs!1104406 (= lambda!213948 lambda!213821)))

(declare-fun bs!1104407 () Bool)

(assert (= bs!1104407 (and d!1500578 d!1500462)))

(assert (=> bs!1104407 (= lambda!213948 lambda!213852)))

(declare-fun bs!1104408 () Bool)

(assert (= bs!1104408 (and d!1500578 d!1500446)))

(assert (=> bs!1104408 (= lambda!213948 lambda!213824)))

(declare-fun bs!1104409 () Bool)

(assert (= bs!1104409 (and d!1500578 d!1500560)))

(assert (=> bs!1104409 (= lambda!213948 lambda!213934)))

(declare-fun bs!1104410 () Bool)

(assert (= bs!1104410 (and d!1500578 d!1500404)))

(assert (=> bs!1104410 (= lambda!213948 lambda!213816)))

(declare-fun bs!1104411 () Bool)

(assert (= bs!1104411 (and d!1500578 start!479484)))

(assert (=> bs!1104411 (= lambda!213948 lambda!213795)))

(declare-fun bs!1104412 () Bool)

(assert (= bs!1104412 (and d!1500578 d!1500422)))

(assert (=> bs!1104412 (= lambda!213948 lambda!213817)))

(declare-fun b!4715606 () Bool)

(declare-fun res!1993859 () Bool)

(declare-fun e!2941062 () Bool)

(assert (=> b!4715606 (=> (not res!1993859) (not e!2941062))))

(assert (=> b!4715606 (= res!1993859 (allKeysSameHashInMap!1898 lm!2023 hashF!1323))))

(declare-fun b!4715609 () Bool)

(declare-fun e!2941061 () Bool)

(declare-fun lt!1880587 () List!52873)

(declare-fun lt!1880593 () (_ BitVec 64))

(assert (=> b!4715609 (= e!2941061 (= (getValueByKey!1927 (toList!5857 lm!2023) lt!1880593) (Some!12318 lt!1880587)))))

(assert (=> d!1500578 e!2941062))

(declare-fun res!1993861 () Bool)

(assert (=> d!1500578 (=> (not res!1993861) (not e!2941062))))

(assert (=> d!1500578 (= res!1993861 (forall!11531 (toList!5857 lm!2023) lambda!213948))))

(declare-fun lt!1880589 () Unit!128609)

(declare-fun choose!33208 (ListLongMap!4387 K!14110 Hashable!6353) Unit!128609)

(assert (=> d!1500578 (= lt!1880589 (choose!33208 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500578 (forall!11531 (toList!5857 lm!2023) lambda!213948)))

(assert (=> d!1500578 (= (lemmaInGenMapThenGetPairDefined!346 lm!2023 key!4653 hashF!1323) lt!1880589)))

(declare-fun b!4715608 () Bool)

(assert (=> b!4715608 (= e!2941062 (isDefined!9570 (getPair!550 (apply!12433 lm!2023 (hash!4326 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1880592 () Unit!128609)

(assert (=> b!4715608 (= lt!1880592 (forallContained!3600 (toList!5857 lm!2023) lambda!213948 (tuple2!54333 (hash!4326 hashF!1323 key!4653) (apply!12433 lm!2023 (hash!4326 hashF!1323 key!4653)))))))

(declare-fun lt!1880591 () Unit!128609)

(declare-fun lt!1880588 () Unit!128609)

(assert (=> b!4715608 (= lt!1880591 lt!1880588)))

(assert (=> b!4715608 (contains!16084 (toList!5857 lm!2023) (tuple2!54333 lt!1880593 lt!1880587))))

(assert (=> b!4715608 (= lt!1880588 (lemmaGetValueImpliesTupleContained!355 lm!2023 lt!1880593 lt!1880587))))

(assert (=> b!4715608 e!2941061))

(declare-fun res!1993860 () Bool)

(assert (=> b!4715608 (=> (not res!1993860) (not e!2941061))))

(assert (=> b!4715608 (= res!1993860 (contains!16085 lm!2023 lt!1880593))))

(assert (=> b!4715608 (= lt!1880587 (apply!12433 lm!2023 (hash!4326 hashF!1323 key!4653)))))

(assert (=> b!4715608 (= lt!1880593 (hash!4326 hashF!1323 key!4653))))

(declare-fun lt!1880590 () Unit!128609)

(declare-fun lt!1880594 () Unit!128609)

(assert (=> b!4715608 (= lt!1880590 lt!1880594)))

(assert (=> b!4715608 (contains!16085 lm!2023 (hash!4326 hashF!1323 key!4653))))

(assert (=> b!4715608 (= lt!1880594 (lemmaInGenMapThenLongMapContainsHash!756 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4715607 () Bool)

(declare-fun res!1993862 () Bool)

(assert (=> b!4715607 (=> (not res!1993862) (not e!2941062))))

(assert (=> b!4715607 (= res!1993862 (contains!16083 (extractMap!2010 (toList!5857 lm!2023)) key!4653))))

(assert (= (and d!1500578 res!1993861) b!4715606))

(assert (= (and b!4715606 res!1993859) b!4715607))

(assert (= (and b!4715607 res!1993862) b!4715608))

(assert (= (and b!4715608 res!1993860) b!4715609))

(declare-fun m!5644581 () Bool)

(assert (=> b!4715609 m!5644581))

(assert (=> b!4715606 m!5643569))

(declare-fun m!5644583 () Bool)

(assert (=> d!1500578 m!5644583))

(declare-fun m!5644585 () Bool)

(assert (=> d!1500578 m!5644585))

(assert (=> d!1500578 m!5644583))

(assert (=> b!4715607 m!5643509))

(assert (=> b!4715607 m!5643509))

(declare-fun m!5644587 () Bool)

(assert (=> b!4715607 m!5644587))

(declare-fun m!5644589 () Bool)

(assert (=> b!4715608 m!5644589))

(declare-fun m!5644591 () Bool)

(assert (=> b!4715608 m!5644591))

(declare-fun m!5644593 () Bool)

(assert (=> b!4715608 m!5644593))

(declare-fun m!5644595 () Bool)

(assert (=> b!4715608 m!5644595))

(assert (=> b!4715608 m!5643615))

(declare-fun m!5644597 () Bool)

(assert (=> b!4715608 m!5644597))

(assert (=> b!4715608 m!5643517))

(declare-fun m!5644599 () Bool)

(assert (=> b!4715608 m!5644599))

(assert (=> b!4715608 m!5643615))

(declare-fun m!5644601 () Bool)

(assert (=> b!4715608 m!5644601))

(assert (=> b!4715608 m!5644601))

(assert (=> b!4715608 m!5644591))

(assert (=> b!4715608 m!5643615))

(assert (=> b!4715608 m!5644571))

(assert (=> b!4715209 d!1500578))

(declare-fun d!1500580 () Bool)

(assert (=> d!1500580 (containsKey!3313 oldBucket!34 key!4653)))

(declare-fun lt!1880597 () Unit!128609)

(declare-fun choose!33209 (List!52873 K!14110 Hashable!6353) Unit!128609)

(assert (=> d!1500580 (= lt!1880597 (choose!33209 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1500580 (noDuplicateKeys!1984 oldBucket!34)))

(assert (=> d!1500580 (= (lemmaGetPairDefinedThenContainsKey!298 oldBucket!34 key!4653 hashF!1323) lt!1880597)))

(declare-fun bs!1104413 () Bool)

(assert (= bs!1104413 d!1500580))

(assert (=> bs!1104413 m!5643529))

(declare-fun m!5644603 () Bool)

(assert (=> bs!1104413 m!5644603))

(assert (=> bs!1104413 m!5643543))

(assert (=> b!4715209 d!1500580))

(declare-fun d!1500582 () Bool)

(declare-fun res!1993867 () Bool)

(declare-fun e!2941067 () Bool)

(assert (=> d!1500582 (=> res!1993867 e!2941067)))

(assert (=> d!1500582 (= res!1993867 (and ((_ is Cons!52749) (t!360121 oldBucket!34)) (= (_1!30459 (h!59074 (t!360121 oldBucket!34))) key!4653)))))

(assert (=> d!1500582 (= (containsKey!3313 (t!360121 oldBucket!34) key!4653) e!2941067)))

(declare-fun b!4715614 () Bool)

(declare-fun e!2941068 () Bool)

(assert (=> b!4715614 (= e!2941067 e!2941068)))

(declare-fun res!1993868 () Bool)

(assert (=> b!4715614 (=> (not res!1993868) (not e!2941068))))

(assert (=> b!4715614 (= res!1993868 ((_ is Cons!52749) (t!360121 oldBucket!34)))))

(declare-fun b!4715615 () Bool)

(assert (=> b!4715615 (= e!2941068 (containsKey!3313 (t!360121 (t!360121 oldBucket!34)) key!4653))))

(assert (= (and d!1500582 (not res!1993867)) b!4715614))

(assert (= (and b!4715614 res!1993868) b!4715615))

(declare-fun m!5644605 () Bool)

(assert (=> b!4715615 m!5644605))

(assert (=> b!4715209 d!1500582))

(declare-fun d!1500584 () Bool)

(declare-fun lt!1880600 () Bool)

(declare-fun content!9363 (List!52874) (InoxSet tuple2!54332))

(assert (=> d!1500584 (= lt!1880600 (select (content!9363 (toList!5857 lm!2023)) lt!1880022))))

(declare-fun e!2941074 () Bool)

(assert (=> d!1500584 (= lt!1880600 e!2941074)))

(declare-fun res!1993874 () Bool)

(assert (=> d!1500584 (=> (not res!1993874) (not e!2941074))))

(assert (=> d!1500584 (= res!1993874 ((_ is Cons!52750) (toList!5857 lm!2023)))))

(assert (=> d!1500584 (= (contains!16084 (toList!5857 lm!2023) lt!1880022) lt!1880600)))

(declare-fun b!4715620 () Bool)

(declare-fun e!2941073 () Bool)

(assert (=> b!4715620 (= e!2941074 e!2941073)))

(declare-fun res!1993873 () Bool)

(assert (=> b!4715620 (=> res!1993873 e!2941073)))

(assert (=> b!4715620 (= res!1993873 (= (h!59075 (toList!5857 lm!2023)) lt!1880022))))

(declare-fun b!4715621 () Bool)

(assert (=> b!4715621 (= e!2941073 (contains!16084 (t!360122 (toList!5857 lm!2023)) lt!1880022))))

(assert (= (and d!1500584 res!1993874) b!4715620))

(assert (= (and b!4715620 (not res!1993873)) b!4715621))

(declare-fun m!5644607 () Bool)

(assert (=> d!1500584 m!5644607))

(declare-fun m!5644609 () Bool)

(assert (=> d!1500584 m!5644609))

(declare-fun m!5644611 () Bool)

(assert (=> b!4715621 m!5644611))

(assert (=> b!4715209 d!1500584))

(declare-fun d!1500586 () Bool)

(declare-fun dynLambda!21793 (Int tuple2!54332) Bool)

(assert (=> d!1500586 (dynLambda!21793 lambda!213795 lt!1880022)))

(declare-fun lt!1880603 () Unit!128609)

(declare-fun choose!33211 (List!52874 Int tuple2!54332) Unit!128609)

(assert (=> d!1500586 (= lt!1880603 (choose!33211 (toList!5857 lm!2023) lambda!213795 lt!1880022))))

(declare-fun e!2941077 () Bool)

(assert (=> d!1500586 e!2941077))

(declare-fun res!1993877 () Bool)

(assert (=> d!1500586 (=> (not res!1993877) (not e!2941077))))

(assert (=> d!1500586 (= res!1993877 (forall!11531 (toList!5857 lm!2023) lambda!213795))))

(assert (=> d!1500586 (= (forallContained!3600 (toList!5857 lm!2023) lambda!213795 lt!1880022) lt!1880603)))

(declare-fun b!4715624 () Bool)

(assert (=> b!4715624 (= e!2941077 (contains!16084 (toList!5857 lm!2023) lt!1880022))))

(assert (= (and d!1500586 res!1993877) b!4715624))

(declare-fun b_lambda!177765 () Bool)

(assert (=> (not b_lambda!177765) (not d!1500586)))

(declare-fun m!5644613 () Bool)

(assert (=> d!1500586 m!5644613))

(declare-fun m!5644615 () Bool)

(assert (=> d!1500586 m!5644615))

(assert (=> d!1500586 m!5643499))

(assert (=> b!4715624 m!5643533))

(assert (=> b!4715209 d!1500586))

(declare-fun d!1500588 () Bool)

(declare-fun res!1993878 () Bool)

(declare-fun e!2941078 () Bool)

(assert (=> d!1500588 (=> res!1993878 e!2941078)))

(assert (=> d!1500588 (= res!1993878 (and ((_ is Cons!52749) oldBucket!34) (= (_1!30459 (h!59074 oldBucket!34)) key!4653)))))

(assert (=> d!1500588 (= (containsKey!3313 oldBucket!34 key!4653) e!2941078)))

(declare-fun b!4715625 () Bool)

(declare-fun e!2941079 () Bool)

(assert (=> b!4715625 (= e!2941078 e!2941079)))

(declare-fun res!1993879 () Bool)

(assert (=> b!4715625 (=> (not res!1993879) (not e!2941079))))

(assert (=> b!4715625 (= res!1993879 ((_ is Cons!52749) oldBucket!34))))

(declare-fun b!4715626 () Bool)

(assert (=> b!4715626 (= e!2941079 (containsKey!3313 (t!360121 oldBucket!34) key!4653))))

(assert (= (and d!1500588 (not res!1993878)) b!4715625))

(assert (= (and b!4715625 res!1993879) b!4715626))

(assert (=> b!4715626 m!5643525))

(assert (=> b!4715209 d!1500588))

(declare-fun d!1500590 () Bool)

(declare-fun get!17693 (Option!12319) List!52873)

(assert (=> d!1500590 (= (apply!12433 lm!2023 lt!1880041) (get!17693 (getValueByKey!1927 (toList!5857 lm!2023) lt!1880041)))))

(declare-fun bs!1104414 () Bool)

(assert (= bs!1104414 d!1500590))

(assert (=> bs!1104414 m!5644551))

(assert (=> bs!1104414 m!5644551))

(declare-fun m!5644617 () Bool)

(assert (=> bs!1104414 m!5644617))

(assert (=> b!4715209 d!1500590))

(declare-fun d!1500592 () Bool)

(assert (=> d!1500592 (= (eq!1111 lt!1880033 (+!2244 lt!1880037 lt!1880026)) (= (content!9360 (toList!5858 lt!1880033)) (content!9360 (toList!5858 (+!2244 lt!1880037 lt!1880026)))))))

(declare-fun bs!1104415 () Bool)

(assert (= bs!1104415 d!1500592))

(assert (=> bs!1104415 m!5644377))

(declare-fun m!5644619 () Bool)

(assert (=> bs!1104415 m!5644619))

(assert (=> b!4715219 d!1500592))

(declare-fun d!1500594 () Bool)

(declare-fun e!2941080 () Bool)

(assert (=> d!1500594 e!2941080))

(declare-fun res!1993880 () Bool)

(assert (=> d!1500594 (=> (not res!1993880) (not e!2941080))))

(declare-fun lt!1880604 () ListMap!5221)

(assert (=> d!1500594 (= res!1993880 (contains!16083 lt!1880604 (_1!30459 lt!1880026)))))

(declare-fun lt!1880607 () List!52873)

(assert (=> d!1500594 (= lt!1880604 (ListMap!5222 lt!1880607))))

(declare-fun lt!1880606 () Unit!128609)

(declare-fun lt!1880605 () Unit!128609)

(assert (=> d!1500594 (= lt!1880606 lt!1880605)))

(assert (=> d!1500594 (= (getValueByKey!1926 lt!1880607 (_1!30459 lt!1880026)) (Some!12317 (_2!30459 lt!1880026)))))

(assert (=> d!1500594 (= lt!1880605 (lemmaContainsTupThenGetReturnValue!1072 lt!1880607 (_1!30459 lt!1880026) (_2!30459 lt!1880026)))))

(assert (=> d!1500594 (= lt!1880607 (insertNoDuplicatedKeys!580 (toList!5858 lt!1880037) (_1!30459 lt!1880026) (_2!30459 lt!1880026)))))

(assert (=> d!1500594 (= (+!2244 lt!1880037 lt!1880026) lt!1880604)))

(declare-fun b!4715627 () Bool)

(declare-fun res!1993881 () Bool)

(assert (=> b!4715627 (=> (not res!1993881) (not e!2941080))))

(assert (=> b!4715627 (= res!1993881 (= (getValueByKey!1926 (toList!5858 lt!1880604) (_1!30459 lt!1880026)) (Some!12317 (_2!30459 lt!1880026))))))

(declare-fun b!4715628 () Bool)

(assert (=> b!4715628 (= e!2941080 (contains!16088 (toList!5858 lt!1880604) lt!1880026))))

(assert (= (and d!1500594 res!1993880) b!4715627))

(assert (= (and b!4715627 res!1993881) b!4715628))

(declare-fun m!5644621 () Bool)

(assert (=> d!1500594 m!5644621))

(declare-fun m!5644623 () Bool)

(assert (=> d!1500594 m!5644623))

(declare-fun m!5644625 () Bool)

(assert (=> d!1500594 m!5644625))

(declare-fun m!5644627 () Bool)

(assert (=> d!1500594 m!5644627))

(declare-fun m!5644629 () Bool)

(assert (=> b!4715627 m!5644629))

(declare-fun m!5644631 () Bool)

(assert (=> b!4715628 m!5644631))

(assert (=> b!4715219 d!1500594))

(declare-fun d!1500596 () Bool)

(declare-fun res!1993882 () Bool)

(declare-fun e!2941081 () Bool)

(assert (=> d!1500596 (=> res!1993882 e!2941081)))

(assert (=> d!1500596 (= res!1993882 (not ((_ is Cons!52749) oldBucket!34)))))

(assert (=> d!1500596 (= (noDuplicateKeys!1984 oldBucket!34) e!2941081)))

(declare-fun b!4715629 () Bool)

(declare-fun e!2941082 () Bool)

(assert (=> b!4715629 (= e!2941081 e!2941082)))

(declare-fun res!1993883 () Bool)

(assert (=> b!4715629 (=> (not res!1993883) (not e!2941082))))

(assert (=> b!4715629 (= res!1993883 (not (containsKey!3313 (t!360121 oldBucket!34) (_1!30459 (h!59074 oldBucket!34)))))))

(declare-fun b!4715630 () Bool)

(assert (=> b!4715630 (= e!2941082 (noDuplicateKeys!1984 (t!360121 oldBucket!34)))))

(assert (= (and d!1500596 (not res!1993882)) b!4715629))

(assert (= (and b!4715629 res!1993883) b!4715630))

(declare-fun m!5644633 () Bool)

(assert (=> b!4715629 m!5644633))

(declare-fun m!5644635 () Bool)

(assert (=> b!4715630 m!5644635))

(assert (=> b!4715208 d!1500596))

(declare-fun b!4715631 () Bool)

(declare-fun e!2941083 () List!52873)

(assert (=> b!4715631 (= e!2941083 (t!360121 oldBucket!34))))

(declare-fun b!4715633 () Bool)

(declare-fun e!2941084 () List!52873)

(assert (=> b!4715633 (= e!2941084 (Cons!52749 (h!59074 oldBucket!34) (removePairForKey!1579 (t!360121 oldBucket!34) key!4653)))))

(declare-fun b!4715634 () Bool)

(assert (=> b!4715634 (= e!2941084 Nil!52749)))

(declare-fun d!1500598 () Bool)

(declare-fun lt!1880608 () List!52873)

(assert (=> d!1500598 (not (containsKey!3313 lt!1880608 key!4653))))

(assert (=> d!1500598 (= lt!1880608 e!2941083)))

(declare-fun c!805461 () Bool)

(assert (=> d!1500598 (= c!805461 (and ((_ is Cons!52749) oldBucket!34) (= (_1!30459 (h!59074 oldBucket!34)) key!4653)))))

(assert (=> d!1500598 (noDuplicateKeys!1984 oldBucket!34)))

(assert (=> d!1500598 (= (removePairForKey!1579 oldBucket!34 key!4653) lt!1880608)))

(declare-fun b!4715632 () Bool)

(assert (=> b!4715632 (= e!2941083 e!2941084)))

(declare-fun c!805460 () Bool)

(assert (=> b!4715632 (= c!805460 ((_ is Cons!52749) oldBucket!34))))

(assert (= (and d!1500598 c!805461) b!4715631))

(assert (= (and d!1500598 (not c!805461)) b!4715632))

(assert (= (and b!4715632 c!805460) b!4715633))

(assert (= (and b!4715632 (not c!805460)) b!4715634))

(assert (=> b!4715633 m!5643503))

(declare-fun m!5644637 () Bool)

(assert (=> d!1500598 m!5644637))

(assert (=> d!1500598 m!5643543))

(assert (=> b!4715218 d!1500598))

(declare-fun d!1500600 () Bool)

(declare-fun res!1993888 () Bool)

(declare-fun e!2941089 () Bool)

(assert (=> d!1500600 (=> res!1993888 e!2941089)))

(assert (=> d!1500600 (= res!1993888 ((_ is Nil!52750) (toList!5857 lm!2023)))))

(assert (=> d!1500600 (= (forall!11531 (toList!5857 lm!2023) lambda!213795) e!2941089)))

(declare-fun b!4715639 () Bool)

(declare-fun e!2941090 () Bool)

(assert (=> b!4715639 (= e!2941089 e!2941090)))

(declare-fun res!1993889 () Bool)

(assert (=> b!4715639 (=> (not res!1993889) (not e!2941090))))

(assert (=> b!4715639 (= res!1993889 (dynLambda!21793 lambda!213795 (h!59075 (toList!5857 lm!2023))))))

(declare-fun b!4715640 () Bool)

(assert (=> b!4715640 (= e!2941090 (forall!11531 (t!360122 (toList!5857 lm!2023)) lambda!213795))))

(assert (= (and d!1500600 (not res!1993888)) b!4715639))

(assert (= (and b!4715639 res!1993889) b!4715640))

(declare-fun b_lambda!177767 () Bool)

(assert (=> (not b_lambda!177767) (not b!4715639)))

(declare-fun m!5644639 () Bool)

(assert (=> b!4715639 m!5644639))

(declare-fun m!5644641 () Bool)

(assert (=> b!4715640 m!5644641))

(assert (=> start!479484 d!1500600))

(declare-fun d!1500602 () Bool)

(declare-fun isStrictlySorted!729 (List!52874) Bool)

(assert (=> d!1500602 (= (inv!67984 lm!2023) (isStrictlySorted!729 (toList!5857 lm!2023)))))

(declare-fun bs!1104416 () Bool)

(assert (= bs!1104416 d!1500602))

(declare-fun m!5644643 () Bool)

(assert (=> bs!1104416 m!5644643))

(assert (=> start!479484 d!1500602))

(declare-fun bs!1104417 () Bool)

(declare-fun d!1500604 () Bool)

(assert (= bs!1104417 (and d!1500604 d!1500548)))

(declare-fun lambda!213951 () Int)

(assert (=> bs!1104417 (not (= lambda!213951 lambda!213929))))

(declare-fun bs!1104418 () Bool)

(assert (= bs!1104418 (and d!1500604 d!1500574)))

(assert (=> bs!1104418 (not (= lambda!213951 lambda!213941))))

(declare-fun bs!1104419 () Bool)

(assert (= bs!1104419 (and d!1500604 d!1500540)))

(assert (=> bs!1104419 (not (= lambda!213951 lambda!213927))))

(declare-fun bs!1104420 () Bool)

(assert (= bs!1104420 (and d!1500604 d!1500440)))

(assert (=> bs!1104420 (not (= lambda!213951 lambda!213821))))

(declare-fun bs!1104421 () Bool)

(assert (= bs!1104421 (and d!1500604 d!1500462)))

(assert (=> bs!1104421 (not (= lambda!213951 lambda!213852))))

(declare-fun bs!1104422 () Bool)

(assert (= bs!1104422 (and d!1500604 d!1500446)))

(assert (=> bs!1104422 (not (= lambda!213951 lambda!213824))))

(declare-fun bs!1104423 () Bool)

(assert (= bs!1104423 (and d!1500604 d!1500560)))

(assert (=> bs!1104423 (not (= lambda!213951 lambda!213934))))

(declare-fun bs!1104424 () Bool)

(assert (= bs!1104424 (and d!1500604 d!1500404)))

(assert (=> bs!1104424 (not (= lambda!213951 lambda!213816))))

(declare-fun bs!1104425 () Bool)

(assert (= bs!1104425 (and d!1500604 start!479484)))

(assert (=> bs!1104425 (not (= lambda!213951 lambda!213795))))

(declare-fun bs!1104426 () Bool)

(assert (= bs!1104426 (and d!1500604 d!1500422)))

(assert (=> bs!1104426 (not (= lambda!213951 lambda!213817))))

(declare-fun bs!1104427 () Bool)

(assert (= bs!1104427 (and d!1500604 d!1500578)))

(assert (=> bs!1104427 (not (= lambda!213951 lambda!213948))))

(assert (=> d!1500604 true))

(assert (=> d!1500604 (= (allKeysSameHashInMap!1898 lm!2023 hashF!1323) (forall!11531 (toList!5857 lm!2023) lambda!213951))))

(declare-fun bs!1104428 () Bool)

(assert (= bs!1104428 d!1500604))

(declare-fun m!5644645 () Bool)

(assert (=> bs!1104428 m!5644645))

(assert (=> b!4715207 d!1500604))

(declare-fun bs!1104429 () Bool)

(declare-fun b!4715644 () Bool)

(assert (= bs!1104429 (and b!4715644 b!4715518)))

(declare-fun lambda!213952 () Int)

(assert (=> bs!1104429 (= lambda!213952 lambda!213920)))

(declare-fun bs!1104430 () Bool)

(assert (= bs!1104430 (and b!4715644 b!4715542)))

(assert (=> bs!1104430 (= lambda!213952 lambda!213930)))

(assert (=> bs!1104429 (= (= lt!1880031 lt!1880453) (= lambda!213952 lambda!213923))))

(declare-fun bs!1104431 () Bool)

(assert (= bs!1104431 (and b!4715644 d!1500550)))

(assert (=> bs!1104431 (= (= lt!1880031 lt!1880510) (= lambda!213952 lambda!213933))))

(declare-fun bs!1104432 () Bool)

(assert (= bs!1104432 (and b!4715644 d!1500460)))

(assert (=> bs!1104432 (not (= lambda!213952 lambda!213827))))

(declare-fun bs!1104433 () Bool)

(assert (= bs!1104433 (and b!4715644 d!1500538)))

(assert (=> bs!1104433 (= (= lt!1880031 lt!1880459) (= lambda!213952 lambda!213926))))

(declare-fun bs!1104434 () Bool)

(assert (= bs!1104434 (and b!4715644 b!4715560)))

(assert (=> bs!1104434 (= lambda!213952 lambda!213935)))

(declare-fun bs!1104435 () Bool)

(assert (= bs!1104435 (and b!4715644 b!4715482)))

(assert (=> bs!1104435 (= (= lt!1880031 lt!1880404) (= lambda!213952 lambda!213915))))

(declare-fun bs!1104436 () Bool)

(assert (= bs!1104436 (and b!4715644 b!4715483)))

(assert (=> bs!1104436 (= lambda!213952 lambda!213913)))

(declare-fun bs!1104437 () Bool)

(assert (= bs!1104437 (and b!4715644 d!1500562)))

(assert (=> bs!1104437 (= (= lt!1880031 lt!1880536) (= lambda!213952 lambda!213938))))

(declare-fun bs!1104438 () Bool)

(assert (= bs!1104438 (and b!4715644 b!4715541)))

(assert (=> bs!1104438 (= (= lt!1880031 lt!1880504) (= lambda!213952 lambda!213932))))

(declare-fun bs!1104439 () Bool)

(assert (= bs!1104439 (and b!4715644 b!4715519)))

(assert (=> bs!1104439 (= lambda!213952 lambda!213917)))

(declare-fun bs!1104440 () Bool)

(assert (= bs!1104440 (and b!4715644 b!4715559)))

(assert (=> bs!1104440 (= (= lt!1880031 lt!1880530) (= lambda!213952 lambda!213937))))

(assert (=> bs!1104440 (= lambda!213952 lambda!213936)))

(declare-fun bs!1104441 () Bool)

(assert (= bs!1104441 (and b!4715644 d!1500400)))

(assert (=> bs!1104441 (not (= lambda!213952 lambda!213808))))

(assert (=> bs!1104435 (= lambda!213952 lambda!213914)))

(assert (=> bs!1104438 (= lambda!213952 lambda!213931)))

(declare-fun bs!1104442 () Bool)

(assert (= bs!1104442 (and b!4715644 d!1500466)))

(assert (=> bs!1104442 (= (= lt!1880031 lt!1880410) (= lambda!213952 lambda!213916))))

(assert (=> b!4715644 true))

(declare-fun bs!1104443 () Bool)

(declare-fun b!4715643 () Bool)

(assert (= bs!1104443 (and b!4715643 b!4715518)))

(declare-fun lambda!213953 () Int)

(assert (=> bs!1104443 (= lambda!213953 lambda!213920)))

(declare-fun bs!1104444 () Bool)

(assert (= bs!1104444 (and b!4715643 b!4715542)))

(assert (=> bs!1104444 (= lambda!213953 lambda!213930)))

(assert (=> bs!1104443 (= (= lt!1880031 lt!1880453) (= lambda!213953 lambda!213923))))

(declare-fun bs!1104445 () Bool)

(assert (= bs!1104445 (and b!4715643 d!1500550)))

(assert (=> bs!1104445 (= (= lt!1880031 lt!1880510) (= lambda!213953 lambda!213933))))

(declare-fun bs!1104446 () Bool)

(assert (= bs!1104446 (and b!4715643 b!4715644)))

(assert (=> bs!1104446 (= lambda!213953 lambda!213952)))

(declare-fun bs!1104447 () Bool)

(assert (= bs!1104447 (and b!4715643 d!1500460)))

(assert (=> bs!1104447 (not (= lambda!213953 lambda!213827))))

(declare-fun bs!1104448 () Bool)

(assert (= bs!1104448 (and b!4715643 d!1500538)))

(assert (=> bs!1104448 (= (= lt!1880031 lt!1880459) (= lambda!213953 lambda!213926))))

(declare-fun bs!1104449 () Bool)

(assert (= bs!1104449 (and b!4715643 b!4715560)))

(assert (=> bs!1104449 (= lambda!213953 lambda!213935)))

(declare-fun bs!1104450 () Bool)

(assert (= bs!1104450 (and b!4715643 b!4715482)))

(assert (=> bs!1104450 (= (= lt!1880031 lt!1880404) (= lambda!213953 lambda!213915))))

(declare-fun bs!1104451 () Bool)

(assert (= bs!1104451 (and b!4715643 b!4715483)))

(assert (=> bs!1104451 (= lambda!213953 lambda!213913)))

(declare-fun bs!1104452 () Bool)

(assert (= bs!1104452 (and b!4715643 d!1500562)))

(assert (=> bs!1104452 (= (= lt!1880031 lt!1880536) (= lambda!213953 lambda!213938))))

(declare-fun bs!1104453 () Bool)

(assert (= bs!1104453 (and b!4715643 b!4715541)))

(assert (=> bs!1104453 (= (= lt!1880031 lt!1880504) (= lambda!213953 lambda!213932))))

(declare-fun bs!1104454 () Bool)

(assert (= bs!1104454 (and b!4715643 b!4715519)))

(assert (=> bs!1104454 (= lambda!213953 lambda!213917)))

(declare-fun bs!1104455 () Bool)

(assert (= bs!1104455 (and b!4715643 b!4715559)))

(assert (=> bs!1104455 (= (= lt!1880031 lt!1880530) (= lambda!213953 lambda!213937))))

(assert (=> bs!1104455 (= lambda!213953 lambda!213936)))

(declare-fun bs!1104456 () Bool)

(assert (= bs!1104456 (and b!4715643 d!1500400)))

(assert (=> bs!1104456 (not (= lambda!213953 lambda!213808))))

(assert (=> bs!1104450 (= lambda!213953 lambda!213914)))

(assert (=> bs!1104453 (= lambda!213953 lambda!213931)))

(declare-fun bs!1104457 () Bool)

(assert (= bs!1104457 (and b!4715643 d!1500466)))

(assert (=> bs!1104457 (= (= lt!1880031 lt!1880410) (= lambda!213953 lambda!213916))))

(assert (=> b!4715643 true))

(declare-fun lt!1880610 () ListMap!5221)

(declare-fun lambda!213954 () Int)

(assert (=> bs!1104443 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213920))))

(assert (=> bs!1104444 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213930))))

(assert (=> bs!1104443 (= (= lt!1880610 lt!1880453) (= lambda!213954 lambda!213923))))

(assert (=> bs!1104445 (= (= lt!1880610 lt!1880510) (= lambda!213954 lambda!213933))))

(assert (=> bs!1104447 (not (= lambda!213954 lambda!213827))))

(assert (=> bs!1104448 (= (= lt!1880610 lt!1880459) (= lambda!213954 lambda!213926))))

(assert (=> bs!1104449 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213935))))

(assert (=> bs!1104450 (= (= lt!1880610 lt!1880404) (= lambda!213954 lambda!213915))))

(assert (=> bs!1104451 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213913))))

(assert (=> bs!1104452 (= (= lt!1880610 lt!1880536) (= lambda!213954 lambda!213938))))

(assert (=> bs!1104453 (= (= lt!1880610 lt!1880504) (= lambda!213954 lambda!213932))))

(assert (=> bs!1104454 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213917))))

(assert (=> bs!1104455 (= (= lt!1880610 lt!1880530) (= lambda!213954 lambda!213937))))

(assert (=> bs!1104455 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213936))))

(assert (=> bs!1104456 (not (= lambda!213954 lambda!213808))))

(assert (=> b!4715643 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213953))))

(assert (=> bs!1104446 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213952))))

(assert (=> bs!1104450 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213914))))

(assert (=> bs!1104453 (= (= lt!1880610 lt!1880031) (= lambda!213954 lambda!213931))))

(assert (=> bs!1104457 (= (= lt!1880610 lt!1880410) (= lambda!213954 lambda!213916))))

(assert (=> b!4715643 true))

(declare-fun bs!1104458 () Bool)

(declare-fun d!1500606 () Bool)

(assert (= bs!1104458 (and d!1500606 b!4715518)))

(declare-fun lambda!213955 () Int)

(declare-fun lt!1880616 () ListMap!5221)

(assert (=> bs!1104458 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213920))))

(declare-fun bs!1104459 () Bool)

(assert (= bs!1104459 (and d!1500606 b!4715643)))

(assert (=> bs!1104459 (= (= lt!1880616 lt!1880610) (= lambda!213955 lambda!213954))))

(declare-fun bs!1104460 () Bool)

(assert (= bs!1104460 (and d!1500606 b!4715542)))

(assert (=> bs!1104460 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213930))))

(assert (=> bs!1104458 (= (= lt!1880616 lt!1880453) (= lambda!213955 lambda!213923))))

(declare-fun bs!1104461 () Bool)

(assert (= bs!1104461 (and d!1500606 d!1500550)))

(assert (=> bs!1104461 (= (= lt!1880616 lt!1880510) (= lambda!213955 lambda!213933))))

(declare-fun bs!1104462 () Bool)

(assert (= bs!1104462 (and d!1500606 d!1500460)))

(assert (=> bs!1104462 (not (= lambda!213955 lambda!213827))))

(declare-fun bs!1104463 () Bool)

(assert (= bs!1104463 (and d!1500606 d!1500538)))

(assert (=> bs!1104463 (= (= lt!1880616 lt!1880459) (= lambda!213955 lambda!213926))))

(declare-fun bs!1104464 () Bool)

(assert (= bs!1104464 (and d!1500606 b!4715560)))

(assert (=> bs!1104464 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213935))))

(declare-fun bs!1104465 () Bool)

(assert (= bs!1104465 (and d!1500606 b!4715482)))

(assert (=> bs!1104465 (= (= lt!1880616 lt!1880404) (= lambda!213955 lambda!213915))))

(declare-fun bs!1104466 () Bool)

(assert (= bs!1104466 (and d!1500606 b!4715483)))

(assert (=> bs!1104466 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213913))))

(declare-fun bs!1104467 () Bool)

(assert (= bs!1104467 (and d!1500606 d!1500562)))

(assert (=> bs!1104467 (= (= lt!1880616 lt!1880536) (= lambda!213955 lambda!213938))))

(declare-fun bs!1104468 () Bool)

(assert (= bs!1104468 (and d!1500606 b!4715541)))

(assert (=> bs!1104468 (= (= lt!1880616 lt!1880504) (= lambda!213955 lambda!213932))))

(declare-fun bs!1104469 () Bool)

(assert (= bs!1104469 (and d!1500606 b!4715519)))

(assert (=> bs!1104469 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213917))))

(declare-fun bs!1104470 () Bool)

(assert (= bs!1104470 (and d!1500606 b!4715559)))

(assert (=> bs!1104470 (= (= lt!1880616 lt!1880530) (= lambda!213955 lambda!213937))))

(assert (=> bs!1104470 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213936))))

(declare-fun bs!1104471 () Bool)

(assert (= bs!1104471 (and d!1500606 d!1500400)))

(assert (=> bs!1104471 (not (= lambda!213955 lambda!213808))))

(assert (=> bs!1104459 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213953))))

(declare-fun bs!1104472 () Bool)

(assert (= bs!1104472 (and d!1500606 b!4715644)))

(assert (=> bs!1104472 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213952))))

(assert (=> bs!1104465 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213914))))

(assert (=> bs!1104468 (= (= lt!1880616 lt!1880031) (= lambda!213955 lambda!213931))))

(declare-fun bs!1104473 () Bool)

(assert (= bs!1104473 (and d!1500606 d!1500466)))

(assert (=> bs!1104473 (= (= lt!1880616 lt!1880410) (= lambda!213955 lambda!213916))))

(assert (=> d!1500606 true))

(declare-fun e!2941093 () Bool)

(assert (=> d!1500606 e!2941093))

(declare-fun res!1993892 () Bool)

(assert (=> d!1500606 (=> (not res!1993892) (not e!2941093))))

(assert (=> d!1500606 (= res!1993892 (forall!11533 (_2!30460 (h!59075 (toList!5857 lm!2023))) lambda!213955))))

(declare-fun e!2941092 () ListMap!5221)

(assert (=> d!1500606 (= lt!1880616 e!2941092)))

(declare-fun c!805462 () Bool)

(assert (=> d!1500606 (= c!805462 ((_ is Nil!52749) (_2!30460 (h!59075 (toList!5857 lm!2023)))))))

(assert (=> d!1500606 (noDuplicateKeys!1984 (_2!30460 (h!59075 (toList!5857 lm!2023))))))

(assert (=> d!1500606 (= (addToMapMapFromBucket!1414 (_2!30460 (h!59075 (toList!5857 lm!2023))) lt!1880031) lt!1880616)))

(declare-fun bm!329693 () Bool)

(declare-fun call!329700 () Unit!128609)

(assert (=> bm!329693 (= call!329700 (lemmaContainsAllItsOwnKeys!778 lt!1880031))))

(assert (=> b!4715643 (= e!2941092 lt!1880610)))

(declare-fun lt!1880620 () ListMap!5221)

(assert (=> b!4715643 (= lt!1880620 (+!2244 lt!1880031 (h!59074 (_2!30460 (h!59075 (toList!5857 lm!2023))))))))

(assert (=> b!4715643 (= lt!1880610 (addToMapMapFromBucket!1414 (t!360121 (_2!30460 (h!59075 (toList!5857 lm!2023)))) (+!2244 lt!1880031 (h!59074 (_2!30460 (h!59075 (toList!5857 lm!2023)))))))))

(declare-fun lt!1880612 () Unit!128609)

(assert (=> b!4715643 (= lt!1880612 call!329700)))

(declare-fun call!329699 () Bool)

(assert (=> b!4715643 call!329699))

(declare-fun lt!1880624 () Unit!128609)

(assert (=> b!4715643 (= lt!1880624 lt!1880612)))

(assert (=> b!4715643 (forall!11533 (toList!5858 lt!1880620) lambda!213954)))

(declare-fun lt!1880617 () Unit!128609)

(declare-fun Unit!128718 () Unit!128609)

(assert (=> b!4715643 (= lt!1880617 Unit!128718)))

(assert (=> b!4715643 (forall!11533 (t!360121 (_2!30460 (h!59075 (toList!5857 lm!2023)))) lambda!213954)))

(declare-fun lt!1880615 () Unit!128609)

(declare-fun Unit!128719 () Unit!128609)

(assert (=> b!4715643 (= lt!1880615 Unit!128719)))

(declare-fun lt!1880626 () Unit!128609)

(declare-fun Unit!128720 () Unit!128609)

(assert (=> b!4715643 (= lt!1880626 Unit!128720)))

(declare-fun lt!1880629 () Unit!128609)

(assert (=> b!4715643 (= lt!1880629 (forallContained!3602 (toList!5858 lt!1880620) lambda!213954 (h!59074 (_2!30460 (h!59075 (toList!5857 lm!2023))))))))

(assert (=> b!4715643 (contains!16083 lt!1880620 (_1!30459 (h!59074 (_2!30460 (h!59075 (toList!5857 lm!2023))))))))

(declare-fun lt!1880628 () Unit!128609)

(declare-fun Unit!128721 () Unit!128609)

(assert (=> b!4715643 (= lt!1880628 Unit!128721)))

(assert (=> b!4715643 (contains!16083 lt!1880610 (_1!30459 (h!59074 (_2!30460 (h!59075 (toList!5857 lm!2023))))))))

(declare-fun lt!1880621 () Unit!128609)

(declare-fun Unit!128722 () Unit!128609)

(assert (=> b!4715643 (= lt!1880621 Unit!128722)))

(assert (=> b!4715643 (forall!11533 (_2!30460 (h!59075 (toList!5857 lm!2023))) lambda!213954)))

(declare-fun lt!1880622 () Unit!128609)

(declare-fun Unit!128723 () Unit!128609)

(assert (=> b!4715643 (= lt!1880622 Unit!128723)))

(declare-fun call!329698 () Bool)

(assert (=> b!4715643 call!329698))

(declare-fun lt!1880627 () Unit!128609)

(declare-fun Unit!128724 () Unit!128609)

(assert (=> b!4715643 (= lt!1880627 Unit!128724)))

(declare-fun lt!1880614 () Unit!128609)

(declare-fun Unit!128725 () Unit!128609)

(assert (=> b!4715643 (= lt!1880614 Unit!128725)))

(declare-fun lt!1880609 () Unit!128609)

(assert (=> b!4715643 (= lt!1880609 (addForallContainsKeyThenBeforeAdding!777 lt!1880031 lt!1880610 (_1!30459 (h!59074 (_2!30460 (h!59075 (toList!5857 lm!2023))))) (_2!30459 (h!59074 (_2!30460 (h!59075 (toList!5857 lm!2023)))))))))

(assert (=> b!4715643 (forall!11533 (toList!5858 lt!1880031) lambda!213954)))

(declare-fun lt!1880618 () Unit!128609)

(assert (=> b!4715643 (= lt!1880618 lt!1880609)))

(assert (=> b!4715643 (forall!11533 (toList!5858 lt!1880031) lambda!213954)))

(declare-fun lt!1880625 () Unit!128609)

(declare-fun Unit!128726 () Unit!128609)

(assert (=> b!4715643 (= lt!1880625 Unit!128726)))

(declare-fun res!1993890 () Bool)

(assert (=> b!4715643 (= res!1993890 (forall!11533 (_2!30460 (h!59075 (toList!5857 lm!2023))) lambda!213954))))

(declare-fun e!2941091 () Bool)

(assert (=> b!4715643 (=> (not res!1993890) (not e!2941091))))

(assert (=> b!4715643 e!2941091))

(declare-fun lt!1880623 () Unit!128609)

(declare-fun Unit!128727 () Unit!128609)

(assert (=> b!4715643 (= lt!1880623 Unit!128727)))

(assert (=> b!4715644 (= e!2941092 lt!1880031)))

(declare-fun lt!1880611 () Unit!128609)

(assert (=> b!4715644 (= lt!1880611 call!329700)))

(assert (=> b!4715644 call!329698))

(declare-fun lt!1880613 () Unit!128609)

(assert (=> b!4715644 (= lt!1880613 lt!1880611)))

(assert (=> b!4715644 call!329699))

(declare-fun lt!1880619 () Unit!128609)

(declare-fun Unit!128728 () Unit!128609)

(assert (=> b!4715644 (= lt!1880619 Unit!128728)))

(declare-fun bm!329694 () Bool)

(assert (=> bm!329694 (= call!329698 (forall!11533 (ite c!805462 (toList!5858 lt!1880031) (toList!5858 lt!1880620)) (ite c!805462 lambda!213952 lambda!213954)))))

(declare-fun b!4715645 () Bool)

(assert (=> b!4715645 (= e!2941093 (invariantList!1490 (toList!5858 lt!1880616)))))

(declare-fun b!4715646 () Bool)

(declare-fun res!1993891 () Bool)

(assert (=> b!4715646 (=> (not res!1993891) (not e!2941093))))

(assert (=> b!4715646 (= res!1993891 (forall!11533 (toList!5858 lt!1880031) lambda!213955))))

(declare-fun bm!329695 () Bool)

(assert (=> bm!329695 (= call!329699 (forall!11533 (toList!5858 lt!1880031) (ite c!805462 lambda!213952 lambda!213953)))))

(declare-fun b!4715647 () Bool)

(assert (=> b!4715647 (= e!2941091 (forall!11533 (toList!5858 lt!1880031) lambda!213954))))

(assert (= (and d!1500606 c!805462) b!4715644))

(assert (= (and d!1500606 (not c!805462)) b!4715643))

(assert (= (and b!4715643 res!1993890) b!4715647))

(assert (= (or b!4715644 b!4715643) bm!329693))

(assert (= (or b!4715644 b!4715643) bm!329695))

(assert (= (or b!4715644 b!4715643) bm!329694))

(assert (= (and d!1500606 res!1993892) b!4715646))

(assert (= (and b!4715646 res!1993891) b!4715645))

(assert (=> bm!329693 m!5644313))

(declare-fun m!5644647 () Bool)

(assert (=> d!1500606 m!5644647))

(declare-fun m!5644649 () Bool)

(assert (=> d!1500606 m!5644649))

(declare-fun m!5644651 () Bool)

(assert (=> b!4715646 m!5644651))

(declare-fun m!5644653 () Bool)

(assert (=> bm!329694 m!5644653))

(declare-fun m!5644655 () Bool)

(assert (=> b!4715643 m!5644655))

(declare-fun m!5644657 () Bool)

(assert (=> b!4715643 m!5644657))

(declare-fun m!5644659 () Bool)

(assert (=> b!4715643 m!5644659))

(declare-fun m!5644661 () Bool)

(assert (=> b!4715643 m!5644661))

(declare-fun m!5644663 () Bool)

(assert (=> b!4715643 m!5644663))

(declare-fun m!5644665 () Bool)

(assert (=> b!4715643 m!5644665))

(assert (=> b!4715643 m!5644657))

(declare-fun m!5644667 () Bool)

(assert (=> b!4715643 m!5644667))

(declare-fun m!5644669 () Bool)

(assert (=> b!4715643 m!5644669))

(declare-fun m!5644671 () Bool)

(assert (=> b!4715643 m!5644671))

(declare-fun m!5644673 () Bool)

(assert (=> b!4715643 m!5644673))

(assert (=> b!4715643 m!5644669))

(assert (=> b!4715643 m!5644665))

(assert (=> b!4715647 m!5644657))

(declare-fun m!5644675 () Bool)

(assert (=> b!4715645 m!5644675))

(declare-fun m!5644677 () Bool)

(assert (=> bm!329695 m!5644677))

(assert (=> b!4715217 d!1500606))

(declare-fun bs!1104474 () Bool)

(declare-fun d!1500608 () Bool)

(assert (= bs!1104474 (and d!1500608 d!1500548)))

(declare-fun lambda!213956 () Int)

(assert (=> bs!1104474 (= lambda!213956 lambda!213929)))

(declare-fun bs!1104475 () Bool)

(assert (= bs!1104475 (and d!1500608 d!1500574)))

(assert (=> bs!1104475 (= lambda!213956 lambda!213941)))

(declare-fun bs!1104476 () Bool)

(assert (= bs!1104476 (and d!1500608 d!1500540)))

(assert (=> bs!1104476 (= lambda!213956 lambda!213927)))

(declare-fun bs!1104477 () Bool)

(assert (= bs!1104477 (and d!1500608 d!1500440)))

(assert (=> bs!1104477 (= lambda!213956 lambda!213821)))

(declare-fun bs!1104478 () Bool)

(assert (= bs!1104478 (and d!1500608 d!1500462)))

(assert (=> bs!1104478 (= lambda!213956 lambda!213852)))

(declare-fun bs!1104479 () Bool)

(assert (= bs!1104479 (and d!1500608 d!1500560)))

(assert (=> bs!1104479 (= lambda!213956 lambda!213934)))

(declare-fun bs!1104480 () Bool)

(assert (= bs!1104480 (and d!1500608 d!1500404)))

(assert (=> bs!1104480 (= lambda!213956 lambda!213816)))

(declare-fun bs!1104481 () Bool)

(assert (= bs!1104481 (and d!1500608 start!479484)))

(assert (=> bs!1104481 (= lambda!213956 lambda!213795)))

(declare-fun bs!1104482 () Bool)

(assert (= bs!1104482 (and d!1500608 d!1500422)))

(assert (=> bs!1104482 (= lambda!213956 lambda!213817)))

(declare-fun bs!1104483 () Bool)

(assert (= bs!1104483 (and d!1500608 d!1500578)))

(assert (=> bs!1104483 (= lambda!213956 lambda!213948)))

(declare-fun bs!1104484 () Bool)

(assert (= bs!1104484 (and d!1500608 d!1500446)))

(assert (=> bs!1104484 (= lambda!213956 lambda!213824)))

(declare-fun bs!1104485 () Bool)

(assert (= bs!1104485 (and d!1500608 d!1500604)))

(assert (=> bs!1104485 (not (= lambda!213956 lambda!213951))))

(declare-fun lt!1880630 () ListMap!5221)

(assert (=> d!1500608 (invariantList!1490 (toList!5858 lt!1880630))))

(declare-fun e!2941094 () ListMap!5221)

(assert (=> d!1500608 (= lt!1880630 e!2941094)))

(declare-fun c!805463 () Bool)

(assert (=> d!1500608 (= c!805463 ((_ is Cons!52750) (t!360122 (toList!5857 lm!2023))))))

(assert (=> d!1500608 (forall!11531 (t!360122 (toList!5857 lm!2023)) lambda!213956)))

(assert (=> d!1500608 (= (extractMap!2010 (t!360122 (toList!5857 lm!2023))) lt!1880630)))

(declare-fun b!4715648 () Bool)

(assert (=> b!4715648 (= e!2941094 (addToMapMapFromBucket!1414 (_2!30460 (h!59075 (t!360122 (toList!5857 lm!2023)))) (extractMap!2010 (t!360122 (t!360122 (toList!5857 lm!2023))))))))

(declare-fun b!4715649 () Bool)

(assert (=> b!4715649 (= e!2941094 (ListMap!5222 Nil!52749))))

(assert (= (and d!1500608 c!805463) b!4715648))

(assert (= (and d!1500608 (not c!805463)) b!4715649))

(declare-fun m!5644679 () Bool)

(assert (=> d!1500608 m!5644679))

(declare-fun m!5644681 () Bool)

(assert (=> d!1500608 m!5644681))

(declare-fun m!5644683 () Bool)

(assert (=> b!4715648 m!5644683))

(assert (=> b!4715648 m!5644683))

(declare-fun m!5644685 () Bool)

(assert (=> b!4715648 m!5644685))

(assert (=> b!4715217 d!1500608))

(declare-fun d!1500610 () Bool)

(assert (=> d!1500610 (= (tail!8928 lm!2023) (ListLongMap!4388 (tail!8926 (toList!5857 lm!2023))))))

(declare-fun bs!1104486 () Bool)

(assert (= bs!1104486 d!1500610))

(declare-fun m!5644687 () Bool)

(assert (=> bs!1104486 m!5644687))

(assert (=> b!4715217 d!1500610))

(declare-fun b!4715650 () Bool)

(declare-fun e!2941095 () List!52873)

(assert (=> b!4715650 (= e!2941095 (t!360121 (t!360121 oldBucket!34)))))

(declare-fun b!4715652 () Bool)

(declare-fun e!2941096 () List!52873)

(assert (=> b!4715652 (= e!2941096 (Cons!52749 (h!59074 (t!360121 oldBucket!34)) (removePairForKey!1579 (t!360121 (t!360121 oldBucket!34)) key!4653)))))

(declare-fun b!4715653 () Bool)

(assert (=> b!4715653 (= e!2941096 Nil!52749)))

(declare-fun d!1500612 () Bool)

(declare-fun lt!1880631 () List!52873)

(assert (=> d!1500612 (not (containsKey!3313 lt!1880631 key!4653))))

(assert (=> d!1500612 (= lt!1880631 e!2941095)))

(declare-fun c!805465 () Bool)

(assert (=> d!1500612 (= c!805465 (and ((_ is Cons!52749) (t!360121 oldBucket!34)) (= (_1!30459 (h!59074 (t!360121 oldBucket!34))) key!4653)))))

(assert (=> d!1500612 (noDuplicateKeys!1984 (t!360121 oldBucket!34))))

(assert (=> d!1500612 (= (removePairForKey!1579 (t!360121 oldBucket!34) key!4653) lt!1880631)))

(declare-fun b!4715651 () Bool)

(assert (=> b!4715651 (= e!2941095 e!2941096)))

(declare-fun c!805464 () Bool)

(assert (=> b!4715651 (= c!805464 ((_ is Cons!52749) (t!360121 oldBucket!34)))))

(assert (= (and d!1500612 c!805465) b!4715650))

(assert (= (and d!1500612 (not c!805465)) b!4715651))

(assert (= (and b!4715651 c!805464) b!4715652))

(assert (= (and b!4715651 (not c!805464)) b!4715653))

(declare-fun m!5644689 () Bool)

(assert (=> b!4715652 m!5644689))

(declare-fun m!5644691 () Bool)

(assert (=> d!1500612 m!5644691))

(assert (=> d!1500612 m!5644635))

(assert (=> b!4715216 d!1500612))

(declare-fun b!4715654 () Bool)

(declare-fun e!2941098 () List!52876)

(assert (=> b!4715654 (= e!2941098 (keys!18923 lt!1880013))))

(declare-fun b!4715655 () Bool)

(declare-fun e!2941102 () Unit!128609)

(declare-fun Unit!128729 () Unit!128609)

(assert (=> b!4715655 (= e!2941102 Unit!128729)))

(declare-fun b!4715656 () Bool)

(declare-fun e!2941097 () Bool)

(declare-fun e!2941099 () Bool)

(assert (=> b!4715656 (= e!2941097 e!2941099)))

(declare-fun res!1993893 () Bool)

(assert (=> b!4715656 (=> (not res!1993893) (not e!2941099))))

(assert (=> b!4715656 (= res!1993893 (isDefined!9572 (getValueByKey!1926 (toList!5858 lt!1880013) key!4653)))))

(declare-fun b!4715657 () Bool)

(declare-fun e!2941101 () Unit!128609)

(assert (=> b!4715657 (= e!2941101 e!2941102)))

(declare-fun c!805467 () Bool)

(declare-fun call!329701 () Bool)

(assert (=> b!4715657 (= c!805467 call!329701)))

(declare-fun b!4715658 () Bool)

(assert (=> b!4715658 false))

(declare-fun lt!1880636 () Unit!128609)

(declare-fun lt!1880639 () Unit!128609)

(assert (=> b!4715658 (= lt!1880636 lt!1880639)))

(assert (=> b!4715658 (containsKey!3315 (toList!5858 lt!1880013) key!4653)))

(assert (=> b!4715658 (= lt!1880639 (lemmaInGetKeysListThenContainsKey!929 (toList!5858 lt!1880013) key!4653))))

(declare-fun Unit!128730 () Unit!128609)

(assert (=> b!4715658 (= e!2941102 Unit!128730)))

(declare-fun b!4715659 () Bool)

(declare-fun lt!1880632 () Unit!128609)

(assert (=> b!4715659 (= e!2941101 lt!1880632)))

(declare-fun lt!1880638 () Unit!128609)

(assert (=> b!4715659 (= lt!1880638 (lemmaContainsKeyImpliesGetValueByKeyDefined!1817 (toList!5858 lt!1880013) key!4653))))

(assert (=> b!4715659 (isDefined!9572 (getValueByKey!1926 (toList!5858 lt!1880013) key!4653))))

(declare-fun lt!1880635 () Unit!128609)

(assert (=> b!4715659 (= lt!1880635 lt!1880638)))

(assert (=> b!4715659 (= lt!1880632 (lemmaInListThenGetKeysListContains!925 (toList!5858 lt!1880013) key!4653))))

(assert (=> b!4715659 call!329701))

(declare-fun b!4715660 () Bool)

(assert (=> b!4715660 (= e!2941099 (contains!16089 (keys!18923 lt!1880013) key!4653))))

(declare-fun bm!329696 () Bool)

(assert (=> bm!329696 (= call!329701 (contains!16089 e!2941098 key!4653))))

(declare-fun c!805468 () Bool)

(declare-fun c!805466 () Bool)

(assert (=> bm!329696 (= c!805468 c!805466)))

(declare-fun d!1500614 () Bool)

(assert (=> d!1500614 e!2941097))

(declare-fun res!1993895 () Bool)

(assert (=> d!1500614 (=> res!1993895 e!2941097)))

(declare-fun e!2941100 () Bool)

(assert (=> d!1500614 (= res!1993895 e!2941100)))

(declare-fun res!1993894 () Bool)

(assert (=> d!1500614 (=> (not res!1993894) (not e!2941100))))

(declare-fun lt!1880633 () Bool)

(assert (=> d!1500614 (= res!1993894 (not lt!1880633))))

(declare-fun lt!1880637 () Bool)

(assert (=> d!1500614 (= lt!1880633 lt!1880637)))

(declare-fun lt!1880634 () Unit!128609)

(assert (=> d!1500614 (= lt!1880634 e!2941101)))

(assert (=> d!1500614 (= c!805466 lt!1880637)))

(assert (=> d!1500614 (= lt!1880637 (containsKey!3315 (toList!5858 lt!1880013) key!4653))))

(assert (=> d!1500614 (= (contains!16083 lt!1880013 key!4653) lt!1880633)))

(declare-fun b!4715661 () Bool)

(assert (=> b!4715661 (= e!2941100 (not (contains!16089 (keys!18923 lt!1880013) key!4653)))))

(declare-fun b!4715662 () Bool)

(assert (=> b!4715662 (= e!2941098 (getKeysList!930 (toList!5858 lt!1880013)))))

(assert (= (and d!1500614 c!805466) b!4715659))

(assert (= (and d!1500614 (not c!805466)) b!4715657))

(assert (= (and b!4715657 c!805467) b!4715658))

(assert (= (and b!4715657 (not c!805467)) b!4715655))

(assert (= (or b!4715659 b!4715657) bm!329696))

(assert (= (and bm!329696 c!805468) b!4715662))

(assert (= (and bm!329696 (not c!805468)) b!4715654))

(assert (= (and d!1500614 res!1993894) b!4715661))

(assert (= (and d!1500614 (not res!1993895)) b!4715656))

(assert (= (and b!4715656 res!1993893) b!4715660))

(declare-fun m!5644693 () Bool)

(assert (=> b!4715662 m!5644693))

(declare-fun m!5644695 () Bool)

(assert (=> b!4715654 m!5644695))

(declare-fun m!5644697 () Bool)

(assert (=> d!1500614 m!5644697))

(assert (=> b!4715658 m!5644697))

(declare-fun m!5644699 () Bool)

(assert (=> b!4715658 m!5644699))

(assert (=> b!4715660 m!5644695))

(assert (=> b!4715660 m!5644695))

(declare-fun m!5644701 () Bool)

(assert (=> b!4715660 m!5644701))

(declare-fun m!5644703 () Bool)

(assert (=> bm!329696 m!5644703))

(assert (=> b!4715661 m!5644695))

(assert (=> b!4715661 m!5644695))

(assert (=> b!4715661 m!5644701))

(declare-fun m!5644705 () Bool)

(assert (=> b!4715659 m!5644705))

(declare-fun m!5644707 () Bool)

(assert (=> b!4715659 m!5644707))

(assert (=> b!4715659 m!5644707))

(declare-fun m!5644709 () Bool)

(assert (=> b!4715659 m!5644709))

(declare-fun m!5644711 () Bool)

(assert (=> b!4715659 m!5644711))

(assert (=> b!4715656 m!5644707))

(assert (=> b!4715656 m!5644707))

(assert (=> b!4715656 m!5644709))

(assert (=> b!4715205 d!1500614))

(declare-fun bs!1104487 () Bool)

(declare-fun d!1500616 () Bool)

(assert (= bs!1104487 (and d!1500616 d!1500548)))

(declare-fun lambda!213957 () Int)

(assert (=> bs!1104487 (= lambda!213957 lambda!213929)))

(declare-fun bs!1104488 () Bool)

(assert (= bs!1104488 (and d!1500616 d!1500574)))

(assert (=> bs!1104488 (= lambda!213957 lambda!213941)))

(declare-fun bs!1104489 () Bool)

(assert (= bs!1104489 (and d!1500616 d!1500540)))

(assert (=> bs!1104489 (= lambda!213957 lambda!213927)))

(declare-fun bs!1104490 () Bool)

(assert (= bs!1104490 (and d!1500616 d!1500440)))

(assert (=> bs!1104490 (= lambda!213957 lambda!213821)))

(declare-fun bs!1104491 () Bool)

(assert (= bs!1104491 (and d!1500616 d!1500462)))

(assert (=> bs!1104491 (= lambda!213957 lambda!213852)))

(declare-fun bs!1104492 () Bool)

(assert (= bs!1104492 (and d!1500616 d!1500560)))

(assert (=> bs!1104492 (= lambda!213957 lambda!213934)))

(declare-fun bs!1104493 () Bool)

(assert (= bs!1104493 (and d!1500616 d!1500404)))

(assert (=> bs!1104493 (= lambda!213957 lambda!213816)))

(declare-fun bs!1104494 () Bool)

(assert (= bs!1104494 (and d!1500616 start!479484)))

(assert (=> bs!1104494 (= lambda!213957 lambda!213795)))

(declare-fun bs!1104495 () Bool)

(assert (= bs!1104495 (and d!1500616 d!1500422)))

(assert (=> bs!1104495 (= lambda!213957 lambda!213817)))

(declare-fun bs!1104496 () Bool)

(assert (= bs!1104496 (and d!1500616 d!1500608)))

(assert (=> bs!1104496 (= lambda!213957 lambda!213956)))

(declare-fun bs!1104497 () Bool)

(assert (= bs!1104497 (and d!1500616 d!1500578)))

(assert (=> bs!1104497 (= lambda!213957 lambda!213948)))

(declare-fun bs!1104498 () Bool)

(assert (= bs!1104498 (and d!1500616 d!1500446)))

(assert (=> bs!1104498 (= lambda!213957 lambda!213824)))

(declare-fun bs!1104499 () Bool)

(assert (= bs!1104499 (and d!1500616 d!1500604)))

(assert (=> bs!1104499 (not (= lambda!213957 lambda!213951))))

(declare-fun lt!1880640 () ListMap!5221)

(assert (=> d!1500616 (invariantList!1490 (toList!5858 lt!1880640))))

(declare-fun e!2941103 () ListMap!5221)

(assert (=> d!1500616 (= lt!1880640 e!2941103)))

(declare-fun c!805469 () Bool)

(assert (=> d!1500616 (= c!805469 ((_ is Cons!52750) (toList!5857 lm!2023)))))

(assert (=> d!1500616 (forall!11531 (toList!5857 lm!2023) lambda!213957)))

(assert (=> d!1500616 (= (extractMap!2010 (toList!5857 lm!2023)) lt!1880640)))

(declare-fun b!4715663 () Bool)

(assert (=> b!4715663 (= e!2941103 (addToMapMapFromBucket!1414 (_2!30460 (h!59075 (toList!5857 lm!2023))) (extractMap!2010 (t!360122 (toList!5857 lm!2023)))))))

(declare-fun b!4715664 () Bool)

(assert (=> b!4715664 (= e!2941103 (ListMap!5222 Nil!52749))))

(assert (= (and d!1500616 c!805469) b!4715663))

(assert (= (and d!1500616 (not c!805469)) b!4715664))

(declare-fun m!5644713 () Bool)

(assert (=> d!1500616 m!5644713))

(declare-fun m!5644715 () Bool)

(assert (=> d!1500616 m!5644715))

(assert (=> b!4715663 m!5643539))

(assert (=> b!4715663 m!5643539))

(declare-fun m!5644717 () Bool)

(assert (=> b!4715663 m!5644717))

(assert (=> b!4715205 d!1500616))

(declare-fun tp!1347900 () Bool)

(declare-fun e!2941106 () Bool)

(declare-fun b!4715669 () Bool)

(assert (=> b!4715669 (= e!2941106 (and tp_is_empty!31229 tp_is_empty!31231 tp!1347900))))

(assert (=> b!4715199 (= tp!1347887 e!2941106)))

(assert (= (and b!4715199 ((_ is Cons!52749) (t!360121 oldBucket!34))) b!4715669))

(declare-fun b!4715674 () Bool)

(declare-fun e!2941109 () Bool)

(declare-fun tp!1347905 () Bool)

(declare-fun tp!1347906 () Bool)

(assert (=> b!4715674 (= e!2941109 (and tp!1347905 tp!1347906))))

(assert (=> b!4715197 (= tp!1347886 e!2941109)))

(assert (= (and b!4715197 ((_ is Cons!52750) (toList!5857 lm!2023))) b!4715674))

(declare-fun e!2941110 () Bool)

(declare-fun tp!1347907 () Bool)

(declare-fun b!4715675 () Bool)

(assert (=> b!4715675 (= e!2941110 (and tp_is_empty!31229 tp_is_empty!31231 tp!1347907))))

(assert (=> b!4715201 (= tp!1347885 e!2941110)))

(assert (= (and b!4715201 ((_ is Cons!52749) (t!360121 newBucket!218))) b!4715675))

(declare-fun b_lambda!177769 () Bool)

(assert (= b_lambda!177767 (or start!479484 b_lambda!177769)))

(declare-fun bs!1104500 () Bool)

(declare-fun d!1500618 () Bool)

(assert (= bs!1104500 (and d!1500618 start!479484)))

(assert (=> bs!1104500 (= (dynLambda!21793 lambda!213795 (h!59075 (toList!5857 lm!2023))) (noDuplicateKeys!1984 (_2!30460 (h!59075 (toList!5857 lm!2023)))))))

(assert (=> bs!1104500 m!5644649))

(assert (=> b!4715639 d!1500618))

(declare-fun b_lambda!177771 () Bool)

(assert (= b_lambda!177765 (or start!479484 b_lambda!177771)))

(declare-fun bs!1104501 () Bool)

(declare-fun d!1500620 () Bool)

(assert (= bs!1104501 (and d!1500620 start!479484)))

(assert (=> bs!1104501 (= (dynLambda!21793 lambda!213795 lt!1880022) (noDuplicateKeys!1984 (_2!30460 lt!1880022)))))

(declare-fun m!5644719 () Bool)

(assert (=> bs!1104501 m!5644719))

(assert (=> d!1500586 d!1500620))

(check-sat (not d!1500540) (not bm!329694) (not bm!329687) (not d!1500614) (not b!4715514) (not b!4715361) (not d!1500398) (not bs!1104501) (not b!4715515) (not bm!329691) (not b!4715592) (not b!4715531) (not d!1500464) (not b!4715606) (not d!1500604) (not b!4715615) (not d!1500616) (not b!4715518) (not bm!329679) (not b!4715516) (not bm!329690) (not d!1500572) (not b!4715645) (not d!1500562) (not b!4715349) (not bm!329684) (not b!4715522) (not bm!329695) (not b!4715663) (not b!4715557) (not d!1500538) (not d!1500422) (not b!4715537) (not b!4715609) (not d!1500556) (not b!4715640) (not b!4715511) (not d!1500462) (not d!1500426) (not d!1500606) (not bm!329686) (not bs!1104500) (not d!1500530) (not b!4715627) (not b!4715545) (not b!4715563) (not b!4715607) (not b!4715629) (not b!4715626) (not b!4715485) (not b!4715311) (not d!1500456) (not b!4715675) (not bm!329693) (not b!4715633) (not b!4715513) (not d!1500446) (not b!4715301) (not b!4715507) (not b!4715367) (not b!4715517) (not b!4715654) (not d!1500598) (not d!1500570) (not d!1500612) (not b!4715343) (not b!4715572) (not d!1500586) (not b!4715669) (not b!4715674) (not b!4715661) (not d!1500466) (not b_lambda!177771) (not d!1500580) (not b!4715538) (not bm!329688) (not d!1500576) (not bm!329689) (not d!1500574) (not b!4715562) (not b!4715520) (not d!1500548) (not d!1500448) (not b!4715595) (not b!4715652) (not b!4715659) (not b!4715621) (not b!4715351) (not d!1500532) (not b!4715541) tp_is_empty!31229 (not d!1500568) (not d!1500590) (not bm!329680) (not d!1500450) (not b!4715350) (not b!4715484) (not d!1500602) (not d!1500546) (not d!1500592) (not b!4715656) (not b!4715482) (not d!1500440) (not bm!329696) (not d!1500400) (not b!4715643) (not d!1500558) (not b!4715624) (not b!4715279) (not b!4715561) (not b!4715662) (not bm!329692) (not b!4715512) (not b!4715596) (not d!1500452) (not b!4715647) (not b!4715589) (not b!4715486) (not b!4715660) (not b!4715352) (not d!1500578) (not b!4715591) (not d!1500374) tp_is_empty!31231 (not b_lambda!177769) (not b!4715646) (not d!1500560) (not b!4715341) (not b!4715628) (not d!1500542) (not d!1500444) (not bm!329685) (not b!4715509) (not b!4715539) (not d!1500534) (not bm!329678) (not d!1500454) (not b!4715630) (not b!4715362) (not d!1500594) (not b!4715648) (not bm!329683) (not b!4715543) (not d!1500404) (not d!1500424) (not b!4715348) (not d!1500610) (not b!4715544) (not b!4715608) (not b!4715658) (not d!1500544) (not d!1500460) (not b!4715368) (not b!4715559) (not d!1500442) (not b!4715521) (not d!1500608) (not b!4715570) (not d!1500584) (not b!4715340) (not d!1500550))
(check-sat)
