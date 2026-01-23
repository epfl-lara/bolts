; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!480916 () Bool)

(assert start!480916)

(declare-fun b!4724142 () Bool)

(declare-fun e!2946357 () Bool)

(declare-fun e!2946359 () Bool)

(assert (=> b!4724142 (= e!2946357 e!2946359)))

(declare-fun res!1998925 () Bool)

(assert (=> b!4724142 (=> res!1998925 e!2946359)))

(declare-datatypes ((K!14190 0))(
  ( (K!14191 (val!19623 Int)) )
))
(declare-datatypes ((V!14436 0))(
  ( (V!14437 (val!19624 Int)) )
))
(declare-datatypes ((tuple2!54458 0))(
  ( (tuple2!54459 (_1!30523 K!14190) (_2!30523 V!14436)) )
))
(declare-datatypes ((List!52960 0))(
  ( (Nil!52836) (Cons!52836 (h!59185 tuple2!54458) (t!360230 List!52960)) )
))
(declare-datatypes ((ListMap!5285 0))(
  ( (ListMap!5286 (toList!5921 List!52960)) )
))
(declare-fun lt!1889044 () ListMap!5285)

(declare-fun newBucket!218 () List!52960)

(declare-fun lt!1889047 () ListMap!5285)

(declare-fun addToMapMapFromBucket!1446 (List!52960 ListMap!5285) ListMap!5285)

(assert (=> b!4724142 (= res!1998925 (not (= lt!1889047 (addToMapMapFromBucket!1446 newBucket!218 lt!1889044))))))

(declare-fun lt!1889050 () List!52960)

(assert (=> b!4724142 (= lt!1889047 (addToMapMapFromBucket!1446 lt!1889050 lt!1889044))))

(declare-fun b!4724143 () Bool)

(declare-fun e!2946363 () Bool)

(declare-fun tp_is_empty!31357 () Bool)

(declare-fun tp!1348454 () Bool)

(declare-fun tp_is_empty!31359 () Bool)

(assert (=> b!4724143 (= e!2946363 (and tp_is_empty!31357 tp_is_empty!31359 tp!1348454))))

(declare-fun b!4724144 () Bool)

(declare-fun res!1998924 () Bool)

(declare-fun e!2946364 () Bool)

(assert (=> b!4724144 (=> (not res!1998924) (not e!2946364))))

(declare-fun oldBucket!34 () List!52960)

(declare-fun noDuplicateKeys!2016 (List!52960) Bool)

(assert (=> b!4724144 (= res!1998924 (noDuplicateKeys!2016 oldBucket!34))))

(declare-fun b!4724145 () Bool)

(declare-fun res!1998928 () Bool)

(declare-fun e!2946365 () Bool)

(assert (=> b!4724145 (=> (not res!1998928) (not e!2946365))))

(declare-datatypes ((tuple2!54460 0))(
  ( (tuple2!54461 (_1!30524 (_ BitVec 64)) (_2!30524 List!52960)) )
))
(declare-datatypes ((List!52961 0))(
  ( (Nil!52837) (Cons!52837 (h!59186 tuple2!54460) (t!360231 List!52961)) )
))
(declare-datatypes ((ListLongMap!4451 0))(
  ( (ListLongMap!4452 (toList!5922 List!52961)) )
))
(declare-fun lm!2023 () ListLongMap!4451)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10253 (List!52961) tuple2!54460)

(assert (=> b!4724145 (= res!1998928 (= (head!10253 (toList!5922 lm!2023)) (tuple2!54461 hash!405 oldBucket!34)))))

(declare-fun b!4724146 () Bool)

(declare-fun res!1998922 () Bool)

(assert (=> b!4724146 (=> (not res!1998922) (not e!2946365))))

(declare-datatypes ((Hashable!6385 0))(
  ( (HashableExt!6384 (__x!32088 Int)) )
))
(declare-fun hashF!1323 () Hashable!6385)

(declare-fun allKeysSameHash!1842 (List!52960 (_ BitVec 64) Hashable!6385) Bool)

(assert (=> b!4724146 (= res!1998922 (allKeysSameHash!1842 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4724147 () Bool)

(declare-fun e!2946367 () Bool)

(assert (=> b!4724147 (= e!2946365 (not e!2946367))))

(declare-fun res!1998916 () Bool)

(assert (=> b!4724147 (=> res!1998916 e!2946367)))

(declare-fun key!4653 () K!14190)

(get-info :version)

(assert (=> b!4724147 (= res!1998916 (or (not ((_ is Cons!52836) oldBucket!34)) (not (= (_1!30523 (h!59185 oldBucket!34)) key!4653))))))

(declare-fun lt!1889046 () ListMap!5285)

(assert (=> b!4724147 (= lt!1889046 (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (toList!5922 lm!2023))) lt!1889044))))

(declare-fun extractMap!2042 (List!52961) ListMap!5285)

(assert (=> b!4724147 (= lt!1889044 (extractMap!2042 (t!360231 (toList!5922 lm!2023))))))

(declare-fun tail!9008 (ListLongMap!4451) ListLongMap!4451)

(assert (=> b!4724147 (= (t!360231 (toList!5922 lm!2023)) (toList!5922 (tail!9008 lm!2023)))))

(declare-fun b!4724148 () Bool)

(declare-fun e!2946361 () Bool)

(assert (=> b!4724148 (= e!2946361 e!2946365)))

(declare-fun res!1998917 () Bool)

(assert (=> b!4724148 (=> (not res!1998917) (not e!2946365))))

(declare-fun lt!1889045 () (_ BitVec 64))

(assert (=> b!4724148 (= res!1998917 (= lt!1889045 hash!405))))

(declare-fun hash!4388 (Hashable!6385 K!14190) (_ BitVec 64))

(assert (=> b!4724148 (= lt!1889045 (hash!4388 hashF!1323 key!4653))))

(declare-fun b!4724149 () Bool)

(declare-fun e!2946358 () Bool)

(assert (=> b!4724149 (= e!2946359 e!2946358)))

(declare-fun res!1998913 () Bool)

(assert (=> b!4724149 (=> res!1998913 e!2946358)))

(declare-fun eq!1133 (ListMap!5285 ListMap!5285) Bool)

(declare-fun +!2271 (ListMap!5285 tuple2!54458) ListMap!5285)

(assert (=> b!4724149 (= res!1998913 (not (eq!1133 (+!2271 lt!1889047 (h!59185 oldBucket!34)) (addToMapMapFromBucket!1446 oldBucket!34 lt!1889044))))))

(declare-fun lt!1889051 () tuple2!54458)

(assert (=> b!4724149 (eq!1133 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044) (+!2271 lt!1889047 lt!1889051))))

(declare-datatypes ((Unit!130501 0))(
  ( (Unit!130502) )
))
(declare-fun lt!1889049 () Unit!130501)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!382 (tuple2!54458 List!52960 ListMap!5285) Unit!130501)

(assert (=> b!4724149 (= lt!1889049 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!382 lt!1889051 lt!1889050 lt!1889044))))

(declare-fun head!10254 (List!52960) tuple2!54458)

(assert (=> b!4724149 (= lt!1889051 (head!10254 oldBucket!34))))

(declare-fun b!4724150 () Bool)

(declare-fun e!2946366 () Bool)

(assert (=> b!4724150 (= e!2946367 e!2946366)))

(declare-fun res!1998912 () Bool)

(assert (=> b!4724150 (=> res!1998912 e!2946366)))

(assert (=> b!4724150 (= res!1998912 (not (= lt!1889050 newBucket!218)))))

(declare-fun tail!9009 (List!52960) List!52960)

(assert (=> b!4724150 (= lt!1889050 (tail!9009 oldBucket!34))))

(declare-fun b!4724151 () Bool)

(declare-fun res!1998919 () Bool)

(assert (=> b!4724151 (=> res!1998919 e!2946358)))

(declare-fun lt!1889052 () ListMap!5285)

(assert (=> b!4724151 (= res!1998919 (not (= lt!1889047 lt!1889052)))))

(declare-fun tp!1348455 () Bool)

(declare-fun e!2946368 () Bool)

(declare-fun b!4724152 () Bool)

(assert (=> b!4724152 (= e!2946368 (and tp_is_empty!31357 tp_is_empty!31359 tp!1348455))))

(declare-fun b!4724153 () Bool)

(declare-fun res!1998911 () Bool)

(assert (=> b!4724153 (=> res!1998911 e!2946358)))

(declare-fun containsKey!3375 (List!52960 K!14190) Bool)

(assert (=> b!4724153 (= res!1998911 (containsKey!3375 lt!1889050 key!4653))))

(declare-fun b!4724154 () Bool)

(declare-fun res!1998921 () Bool)

(assert (=> b!4724154 (=> (not res!1998921) (not e!2946365))))

(declare-fun allKeysSameHashInMap!1930 (ListLongMap!4451 Hashable!6385) Bool)

(assert (=> b!4724154 (= res!1998921 (allKeysSameHashInMap!1930 lm!2023 hashF!1323))))

(declare-fun res!1998929 () Bool)

(assert (=> start!480916 (=> (not res!1998929) (not e!2946364))))

(declare-fun lambda!215822 () Int)

(declare-fun forall!11594 (List!52961 Int) Bool)

(assert (=> start!480916 (= res!1998929 (forall!11594 (toList!5922 lm!2023) lambda!215822))))

(assert (=> start!480916 e!2946364))

(declare-fun e!2946360 () Bool)

(declare-fun inv!68064 (ListLongMap!4451) Bool)

(assert (=> start!480916 (and (inv!68064 lm!2023) e!2946360)))

(assert (=> start!480916 tp_is_empty!31357))

(assert (=> start!480916 e!2946363))

(assert (=> start!480916 true))

(assert (=> start!480916 e!2946368))

(declare-fun lt!1889053 () ListLongMap!4451)

(declare-fun e!2946362 () Bool)

(declare-fun b!4724155 () Bool)

(declare-fun apply!12447 (ListLongMap!4451 (_ BitVec 64)) List!52960)

(assert (=> b!4724155 (= e!2946362 (not (containsKey!3375 (apply!12447 lt!1889053 lt!1889045) key!4653)))))

(declare-fun b!4724156 () Bool)

(declare-fun res!1998931 () Bool)

(assert (=> b!4724156 (=> (not res!1998931) (not e!2946364))))

(assert (=> b!4724156 (= res!1998931 (allKeysSameHash!1842 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4724157 () Bool)

(assert (=> b!4724157 (= e!2946358 e!2946362)))

(declare-fun res!1998915 () Bool)

(assert (=> b!4724157 (=> res!1998915 e!2946362)))

(declare-fun lt!1889048 () List!52961)

(assert (=> b!4724157 (= res!1998915 (not (forall!11594 lt!1889048 lambda!215822)))))

(assert (=> b!4724157 (= lt!1889053 (ListLongMap!4452 lt!1889048))))

(declare-fun b!4724158 () Bool)

(declare-fun res!1998927 () Bool)

(assert (=> b!4724158 (=> res!1998927 e!2946362)))

(assert (=> b!4724158 (= res!1998927 (not (allKeysSameHashInMap!1930 lt!1889053 hashF!1323)))))

(declare-fun b!4724159 () Bool)

(assert (=> b!4724159 (= e!2946366 e!2946357)))

(declare-fun res!1998920 () Bool)

(assert (=> b!4724159 (=> res!1998920 e!2946357)))

(assert (=> b!4724159 (= res!1998920 (not (= lt!1889052 (extractMap!2042 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))))))

(assert (=> b!4724159 (= lt!1889052 (extractMap!2042 lt!1889048))))

(assert (=> b!4724159 (= lt!1889048 (Cons!52837 (tuple2!54461 hash!405 lt!1889050) (t!360231 (toList!5922 lm!2023))))))

(declare-fun b!4724160 () Bool)

(declare-fun res!1998914 () Bool)

(assert (=> b!4724160 (=> (not res!1998914) (not e!2946365))))

(assert (=> b!4724160 (= res!1998914 ((_ is Cons!52837) (toList!5922 lm!2023)))))

(declare-fun b!4724161 () Bool)

(assert (=> b!4724161 (= e!2946364 e!2946361)))

(declare-fun res!1998926 () Bool)

(assert (=> b!4724161 (=> (not res!1998926) (not e!2946361))))

(declare-fun contains!16183 (ListMap!5285 K!14190) Bool)

(assert (=> b!4724161 (= res!1998926 (contains!16183 lt!1889046 key!4653))))

(assert (=> b!4724161 (= lt!1889046 (extractMap!2042 (toList!5922 lm!2023)))))

(declare-fun b!4724162 () Bool)

(declare-fun tp!1348453 () Bool)

(assert (=> b!4724162 (= e!2946360 tp!1348453)))

(declare-fun b!4724163 () Bool)

(declare-fun res!1998923 () Bool)

(assert (=> b!4724163 (=> (not res!1998923) (not e!2946364))))

(assert (=> b!4724163 (= res!1998923 (noDuplicateKeys!2016 newBucket!218))))

(declare-fun b!4724164 () Bool)

(declare-fun res!1998918 () Bool)

(assert (=> b!4724164 (=> res!1998918 e!2946362)))

(declare-fun contains!16184 (ListLongMap!4451 (_ BitVec 64)) Bool)

(assert (=> b!4724164 (= res!1998918 (not (contains!16184 lt!1889053 lt!1889045)))))

(declare-fun b!4724165 () Bool)

(declare-fun res!1998930 () Bool)

(assert (=> b!4724165 (=> (not res!1998930) (not e!2946364))))

(declare-fun removePairForKey!1611 (List!52960 K!14190) List!52960)

(assert (=> b!4724165 (= res!1998930 (= (removePairForKey!1611 oldBucket!34 key!4653) newBucket!218))))

(assert (= (and start!480916 res!1998929) b!4724144))

(assert (= (and b!4724144 res!1998924) b!4724163))

(assert (= (and b!4724163 res!1998923) b!4724165))

(assert (= (and b!4724165 res!1998930) b!4724156))

(assert (= (and b!4724156 res!1998931) b!4724161))

(assert (= (and b!4724161 res!1998926) b!4724148))

(assert (= (and b!4724148 res!1998917) b!4724146))

(assert (= (and b!4724146 res!1998922) b!4724154))

(assert (= (and b!4724154 res!1998921) b!4724145))

(assert (= (and b!4724145 res!1998928) b!4724160))

(assert (= (and b!4724160 res!1998914) b!4724147))

(assert (= (and b!4724147 (not res!1998916)) b!4724150))

(assert (= (and b!4724150 (not res!1998912)) b!4724159))

(assert (= (and b!4724159 (not res!1998920)) b!4724142))

(assert (= (and b!4724142 (not res!1998925)) b!4724149))

(assert (= (and b!4724149 (not res!1998913)) b!4724153))

(assert (= (and b!4724153 (not res!1998911)) b!4724151))

(assert (= (and b!4724151 (not res!1998919)) b!4724157))

(assert (= (and b!4724157 (not res!1998915)) b!4724158))

(assert (= (and b!4724158 (not res!1998927)) b!4724164))

(assert (= (and b!4724164 (not res!1998918)) b!4724155))

(assert (= start!480916 b!4724162))

(assert (= (and start!480916 ((_ is Cons!52836) oldBucket!34)) b!4724143))

(assert (= (and start!480916 ((_ is Cons!52836) newBucket!218)) b!4724152))

(declare-fun m!5661645 () Bool)

(assert (=> b!4724148 m!5661645))

(declare-fun m!5661647 () Bool)

(assert (=> b!4724144 m!5661647))

(declare-fun m!5661649 () Bool)

(assert (=> b!4724142 m!5661649))

(declare-fun m!5661651 () Bool)

(assert (=> b!4724142 m!5661651))

(declare-fun m!5661653 () Bool)

(assert (=> b!4724157 m!5661653))

(declare-fun m!5661655 () Bool)

(assert (=> b!4724155 m!5661655))

(assert (=> b!4724155 m!5661655))

(declare-fun m!5661657 () Bool)

(assert (=> b!4724155 m!5661657))

(declare-fun m!5661659 () Bool)

(assert (=> b!4724158 m!5661659))

(declare-fun m!5661661 () Bool)

(assert (=> b!4724145 m!5661661))

(declare-fun m!5661663 () Bool)

(assert (=> b!4724156 m!5661663))

(declare-fun m!5661665 () Bool)

(assert (=> b!4724165 m!5661665))

(declare-fun m!5661667 () Bool)

(assert (=> b!4724159 m!5661667))

(declare-fun m!5661669 () Bool)

(assert (=> b!4724159 m!5661669))

(declare-fun m!5661671 () Bool)

(assert (=> b!4724146 m!5661671))

(declare-fun m!5661673 () Bool)

(assert (=> b!4724154 m!5661673))

(declare-fun m!5661675 () Bool)

(assert (=> b!4724164 m!5661675))

(declare-fun m!5661677 () Bool)

(assert (=> b!4724153 m!5661677))

(declare-fun m!5661679 () Bool)

(assert (=> b!4724161 m!5661679))

(declare-fun m!5661681 () Bool)

(assert (=> b!4724161 m!5661681))

(declare-fun m!5661683 () Bool)

(assert (=> b!4724149 m!5661683))

(declare-fun m!5661685 () Bool)

(assert (=> b!4724149 m!5661685))

(declare-fun m!5661687 () Bool)

(assert (=> b!4724149 m!5661687))

(declare-fun m!5661689 () Bool)

(assert (=> b!4724149 m!5661689))

(assert (=> b!4724149 m!5661685))

(assert (=> b!4724149 m!5661683))

(declare-fun m!5661691 () Bool)

(assert (=> b!4724149 m!5661691))

(declare-fun m!5661693 () Bool)

(assert (=> b!4724149 m!5661693))

(assert (=> b!4724149 m!5661687))

(assert (=> b!4724149 m!5661691))

(declare-fun m!5661695 () Bool)

(assert (=> b!4724149 m!5661695))

(declare-fun m!5661697 () Bool)

(assert (=> b!4724149 m!5661697))

(declare-fun m!5661699 () Bool)

(assert (=> b!4724150 m!5661699))

(declare-fun m!5661701 () Bool)

(assert (=> b!4724147 m!5661701))

(declare-fun m!5661703 () Bool)

(assert (=> b!4724147 m!5661703))

(declare-fun m!5661705 () Bool)

(assert (=> b!4724147 m!5661705))

(declare-fun m!5661707 () Bool)

(assert (=> b!4724163 m!5661707))

(declare-fun m!5661709 () Bool)

(assert (=> start!480916 m!5661709))

(declare-fun m!5661711 () Bool)

(assert (=> start!480916 m!5661711))

(check-sat (not b!4724161) (not b!4724163) (not b!4724153) (not b!4724142) (not b!4724147) (not b!4724152) (not b!4724144) (not b!4724159) (not b!4724155) (not b!4724156) (not b!4724145) (not b!4724157) (not b!4724164) (not b!4724150) (not b!4724146) (not b!4724158) (not b!4724154) (not b!4724148) (not b!4724162) (not start!480916) tp_is_empty!31357 (not b!4724143) (not b!4724165) tp_is_empty!31359 (not b!4724149))
(check-sat)
(get-model)

(declare-fun bs!1114856 () Bool)

(declare-fun d!1504696 () Bool)

(assert (= bs!1114856 (and d!1504696 start!480916)))

(declare-fun lambda!215825 () Int)

(assert (=> bs!1114856 (not (= lambda!215825 lambda!215822))))

(assert (=> d!1504696 true))

(assert (=> d!1504696 (= (allKeysSameHashInMap!1930 lm!2023 hashF!1323) (forall!11594 (toList!5922 lm!2023) lambda!215825))))

(declare-fun bs!1114857 () Bool)

(assert (= bs!1114857 d!1504696))

(declare-fun m!5661713 () Bool)

(assert (=> bs!1114857 m!5661713))

(assert (=> b!4724154 d!1504696))

(declare-fun d!1504700 () Bool)

(declare-fun e!2946391 () Bool)

(assert (=> d!1504700 e!2946391))

(declare-fun res!1998946 () Bool)

(assert (=> d!1504700 (=> res!1998946 e!2946391)))

(declare-fun lt!1889067 () Bool)

(assert (=> d!1504700 (= res!1998946 (not lt!1889067))))

(declare-fun lt!1889065 () Bool)

(assert (=> d!1504700 (= lt!1889067 lt!1889065)))

(declare-fun lt!1889068 () Unit!130501)

(declare-fun e!2946392 () Unit!130501)

(assert (=> d!1504700 (= lt!1889068 e!2946392)))

(declare-fun c!806816 () Bool)

(assert (=> d!1504700 (= c!806816 lt!1889065)))

(declare-fun containsKey!3377 (List!52961 (_ BitVec 64)) Bool)

(assert (=> d!1504700 (= lt!1889065 (containsKey!3377 (toList!5922 lt!1889053) lt!1889045))))

(assert (=> d!1504700 (= (contains!16184 lt!1889053 lt!1889045) lt!1889067)))

(declare-fun b!4724204 () Bool)

(declare-fun lt!1889066 () Unit!130501)

(assert (=> b!4724204 (= e!2946392 lt!1889066)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1850 (List!52961 (_ BitVec 64)) Unit!130501)

(assert (=> b!4724204 (= lt!1889066 (lemmaContainsKeyImpliesGetValueByKeyDefined!1850 (toList!5922 lt!1889053) lt!1889045))))

(declare-datatypes ((Option!12363 0))(
  ( (None!12362) (Some!12362 (v!46943 List!52960)) )
))
(declare-fun isDefined!9617 (Option!12363) Bool)

(declare-fun getValueByKey!1959 (List!52961 (_ BitVec 64)) Option!12363)

(assert (=> b!4724204 (isDefined!9617 (getValueByKey!1959 (toList!5922 lt!1889053) lt!1889045))))

(declare-fun b!4724205 () Bool)

(declare-fun Unit!130537 () Unit!130501)

(assert (=> b!4724205 (= e!2946392 Unit!130537)))

(declare-fun b!4724206 () Bool)

(assert (=> b!4724206 (= e!2946391 (isDefined!9617 (getValueByKey!1959 (toList!5922 lt!1889053) lt!1889045)))))

(assert (= (and d!1504700 c!806816) b!4724204))

(assert (= (and d!1504700 (not c!806816)) b!4724205))

(assert (= (and d!1504700 (not res!1998946)) b!4724206))

(declare-fun m!5661735 () Bool)

(assert (=> d!1504700 m!5661735))

(declare-fun m!5661737 () Bool)

(assert (=> b!4724204 m!5661737))

(declare-fun m!5661739 () Bool)

(assert (=> b!4724204 m!5661739))

(assert (=> b!4724204 m!5661739))

(declare-fun m!5661741 () Bool)

(assert (=> b!4724204 m!5661741))

(assert (=> b!4724206 m!5661739))

(assert (=> b!4724206 m!5661739))

(assert (=> b!4724206 m!5661741))

(assert (=> b!4724164 d!1504700))

(declare-fun d!1504718 () Bool)

(declare-fun res!1998951 () Bool)

(declare-fun e!2946397 () Bool)

(assert (=> d!1504718 (=> res!1998951 e!2946397)))

(assert (=> d!1504718 (= res!1998951 (and ((_ is Cons!52836) lt!1889050) (= (_1!30523 (h!59185 lt!1889050)) key!4653)))))

(assert (=> d!1504718 (= (containsKey!3375 lt!1889050 key!4653) e!2946397)))

(declare-fun b!4724211 () Bool)

(declare-fun e!2946398 () Bool)

(assert (=> b!4724211 (= e!2946397 e!2946398)))

(declare-fun res!1998952 () Bool)

(assert (=> b!4724211 (=> (not res!1998952) (not e!2946398))))

(assert (=> b!4724211 (= res!1998952 ((_ is Cons!52836) lt!1889050))))

(declare-fun b!4724212 () Bool)

(assert (=> b!4724212 (= e!2946398 (containsKey!3375 (t!360230 lt!1889050) key!4653))))

(assert (= (and d!1504718 (not res!1998951)) b!4724211))

(assert (= (and b!4724211 res!1998952) b!4724212))

(declare-fun m!5661743 () Bool)

(assert (=> b!4724212 m!5661743))

(assert (=> b!4724153 d!1504718))

(declare-fun d!1504720 () Bool)

(declare-fun res!1998953 () Bool)

(declare-fun e!2946399 () Bool)

(assert (=> d!1504720 (=> res!1998953 e!2946399)))

(assert (=> d!1504720 (= res!1998953 (and ((_ is Cons!52836) (apply!12447 lt!1889053 lt!1889045)) (= (_1!30523 (h!59185 (apply!12447 lt!1889053 lt!1889045))) key!4653)))))

(assert (=> d!1504720 (= (containsKey!3375 (apply!12447 lt!1889053 lt!1889045) key!4653) e!2946399)))

(declare-fun b!4724213 () Bool)

(declare-fun e!2946400 () Bool)

(assert (=> b!4724213 (= e!2946399 e!2946400)))

(declare-fun res!1998954 () Bool)

(assert (=> b!4724213 (=> (not res!1998954) (not e!2946400))))

(assert (=> b!4724213 (= res!1998954 ((_ is Cons!52836) (apply!12447 lt!1889053 lt!1889045)))))

(declare-fun b!4724214 () Bool)

(assert (=> b!4724214 (= e!2946400 (containsKey!3375 (t!360230 (apply!12447 lt!1889053 lt!1889045)) key!4653))))

(assert (= (and d!1504720 (not res!1998953)) b!4724213))

(assert (= (and b!4724213 res!1998954) b!4724214))

(declare-fun m!5661745 () Bool)

(assert (=> b!4724214 m!5661745))

(assert (=> b!4724155 d!1504720))

(declare-fun d!1504722 () Bool)

(declare-fun get!17723 (Option!12363) List!52960)

(assert (=> d!1504722 (= (apply!12447 lt!1889053 lt!1889045) (get!17723 (getValueByKey!1959 (toList!5922 lt!1889053) lt!1889045)))))

(declare-fun bs!1114863 () Bool)

(assert (= bs!1114863 d!1504722))

(assert (=> bs!1114863 m!5661739))

(assert (=> bs!1114863 m!5661739))

(declare-fun m!5661747 () Bool)

(assert (=> bs!1114863 m!5661747))

(assert (=> b!4724155 d!1504722))

(declare-fun d!1504724 () Bool)

(declare-fun res!1998959 () Bool)

(declare-fun e!2946405 () Bool)

(assert (=> d!1504724 (=> res!1998959 e!2946405)))

(assert (=> d!1504724 (= res!1998959 (not ((_ is Cons!52836) oldBucket!34)))))

(assert (=> d!1504724 (= (noDuplicateKeys!2016 oldBucket!34) e!2946405)))

(declare-fun b!4724219 () Bool)

(declare-fun e!2946406 () Bool)

(assert (=> b!4724219 (= e!2946405 e!2946406)))

(declare-fun res!1998960 () Bool)

(assert (=> b!4724219 (=> (not res!1998960) (not e!2946406))))

(assert (=> b!4724219 (= res!1998960 (not (containsKey!3375 (t!360230 oldBucket!34) (_1!30523 (h!59185 oldBucket!34)))))))

(declare-fun b!4724220 () Bool)

(assert (=> b!4724220 (= e!2946406 (noDuplicateKeys!2016 (t!360230 oldBucket!34)))))

(assert (= (and d!1504724 (not res!1998959)) b!4724219))

(assert (= (and b!4724219 res!1998960) b!4724220))

(declare-fun m!5661749 () Bool)

(assert (=> b!4724219 m!5661749))

(declare-fun m!5661751 () Bool)

(assert (=> b!4724220 m!5661751))

(assert (=> b!4724144 d!1504724))

(declare-fun b!4724230 () Bool)

(declare-fun e!2946412 () List!52960)

(declare-fun e!2946411 () List!52960)

(assert (=> b!4724230 (= e!2946412 e!2946411)))

(declare-fun c!806821 () Bool)

(assert (=> b!4724230 (= c!806821 ((_ is Cons!52836) oldBucket!34))))

(declare-fun b!4724231 () Bool)

(assert (=> b!4724231 (= e!2946411 (Cons!52836 (h!59185 oldBucket!34) (removePairForKey!1611 (t!360230 oldBucket!34) key!4653)))))

(declare-fun b!4724229 () Bool)

(assert (=> b!4724229 (= e!2946412 (t!360230 oldBucket!34))))

(declare-fun d!1504726 () Bool)

(declare-fun lt!1889071 () List!52960)

(assert (=> d!1504726 (not (containsKey!3375 lt!1889071 key!4653))))

(assert (=> d!1504726 (= lt!1889071 e!2946412)))

(declare-fun c!806822 () Bool)

(assert (=> d!1504726 (= c!806822 (and ((_ is Cons!52836) oldBucket!34) (= (_1!30523 (h!59185 oldBucket!34)) key!4653)))))

(assert (=> d!1504726 (noDuplicateKeys!2016 oldBucket!34)))

(assert (=> d!1504726 (= (removePairForKey!1611 oldBucket!34 key!4653) lt!1889071)))

(declare-fun b!4724232 () Bool)

(assert (=> b!4724232 (= e!2946411 Nil!52836)))

(assert (= (and d!1504726 c!806822) b!4724229))

(assert (= (and d!1504726 (not c!806822)) b!4724230))

(assert (= (and b!4724230 c!806821) b!4724231))

(assert (= (and b!4724230 (not c!806821)) b!4724232))

(declare-fun m!5661753 () Bool)

(assert (=> b!4724231 m!5661753))

(declare-fun m!5661755 () Bool)

(assert (=> d!1504726 m!5661755))

(assert (=> d!1504726 m!5661647))

(assert (=> b!4724165 d!1504726))

(declare-fun d!1504728 () Bool)

(assert (=> d!1504728 true))

(assert (=> d!1504728 true))

(declare-fun lambda!215834 () Int)

(declare-fun forall!11596 (List!52960 Int) Bool)

(assert (=> d!1504728 (= (allKeysSameHash!1842 newBucket!218 hash!405 hashF!1323) (forall!11596 newBucket!218 lambda!215834))))

(declare-fun bs!1114864 () Bool)

(assert (= bs!1114864 d!1504728))

(declare-fun m!5661757 () Bool)

(assert (=> bs!1114864 m!5661757))

(assert (=> b!4724146 d!1504728))

(declare-fun bs!1114865 () Bool)

(declare-fun d!1504730 () Bool)

(assert (= bs!1114865 (and d!1504730 d!1504728)))

(declare-fun lambda!215835 () Int)

(assert (=> bs!1114865 (= lambda!215835 lambda!215834)))

(assert (=> d!1504730 true))

(assert (=> d!1504730 true))

(assert (=> d!1504730 (= (allKeysSameHash!1842 oldBucket!34 hash!405 hashF!1323) (forall!11596 oldBucket!34 lambda!215835))))

(declare-fun bs!1114866 () Bool)

(assert (= bs!1114866 d!1504730))

(declare-fun m!5661759 () Bool)

(assert (=> bs!1114866 m!5661759))

(assert (=> b!4724156 d!1504730))

(declare-fun d!1504732 () Bool)

(assert (=> d!1504732 (= (head!10253 (toList!5922 lm!2023)) (h!59186 (toList!5922 lm!2023)))))

(assert (=> b!4724145 d!1504732))

(declare-fun bs!1114867 () Bool)

(declare-fun d!1504734 () Bool)

(assert (= bs!1114867 (and d!1504734 start!480916)))

(declare-fun lambda!215836 () Int)

(assert (=> bs!1114867 (not (= lambda!215836 lambda!215822))))

(declare-fun bs!1114868 () Bool)

(assert (= bs!1114868 (and d!1504734 d!1504696)))

(assert (=> bs!1114868 (= lambda!215836 lambda!215825)))

(assert (=> d!1504734 true))

(assert (=> d!1504734 (= (allKeysSameHashInMap!1930 lt!1889053 hashF!1323) (forall!11594 (toList!5922 lt!1889053) lambda!215836))))

(declare-fun bs!1114869 () Bool)

(assert (= bs!1114869 d!1504734))

(declare-fun m!5661761 () Bool)

(assert (=> bs!1114869 m!5661761))

(assert (=> b!4724158 d!1504734))

(declare-fun bs!1115004 () Bool)

(declare-fun b!4724320 () Bool)

(assert (= bs!1115004 (and b!4724320 d!1504728)))

(declare-fun lambda!215918 () Int)

(assert (=> bs!1115004 (not (= lambda!215918 lambda!215834))))

(declare-fun bs!1115006 () Bool)

(assert (= bs!1115006 (and b!4724320 d!1504730)))

(assert (=> bs!1115006 (not (= lambda!215918 lambda!215835))))

(assert (=> b!4724320 true))

(declare-fun bs!1115010 () Bool)

(declare-fun b!4724318 () Bool)

(assert (= bs!1115010 (and b!4724318 d!1504728)))

(declare-fun lambda!215920 () Int)

(assert (=> bs!1115010 (not (= lambda!215920 lambda!215834))))

(declare-fun bs!1115012 () Bool)

(assert (= bs!1115012 (and b!4724318 d!1504730)))

(assert (=> bs!1115012 (not (= lambda!215920 lambda!215835))))

(declare-fun bs!1115013 () Bool)

(assert (= bs!1115013 (and b!4724318 b!4724320)))

(assert (=> bs!1115013 (= lambda!215920 lambda!215918)))

(assert (=> b!4724318 true))

(declare-fun lambda!215922 () Int)

(assert (=> bs!1115010 (not (= lambda!215922 lambda!215834))))

(assert (=> bs!1115012 (not (= lambda!215922 lambda!215835))))

(declare-fun lt!1889307 () ListMap!5285)

(assert (=> bs!1115013 (= (= lt!1889307 lt!1889044) (= lambda!215922 lambda!215918))))

(assert (=> b!4724318 (= (= lt!1889307 lt!1889044) (= lambda!215922 lambda!215920))))

(assert (=> b!4724318 true))

(declare-fun bs!1115027 () Bool)

(declare-fun d!1504736 () Bool)

(assert (= bs!1115027 (and d!1504736 b!4724318)))

(declare-fun lambda!215923 () Int)

(declare-fun lt!1889297 () ListMap!5285)

(assert (=> bs!1115027 (= (= lt!1889297 lt!1889044) (= lambda!215923 lambda!215920))))

(declare-fun bs!1115029 () Bool)

(assert (= bs!1115029 (and d!1504736 b!4724320)))

(assert (=> bs!1115029 (= (= lt!1889297 lt!1889044) (= lambda!215923 lambda!215918))))

(assert (=> bs!1115027 (= (= lt!1889297 lt!1889307) (= lambda!215923 lambda!215922))))

(declare-fun bs!1115031 () Bool)

(assert (= bs!1115031 (and d!1504736 d!1504728)))

(assert (=> bs!1115031 (not (= lambda!215923 lambda!215834))))

(declare-fun bs!1115033 () Bool)

(assert (= bs!1115033 (and d!1504736 d!1504730)))

(assert (=> bs!1115033 (not (= lambda!215923 lambda!215835))))

(assert (=> d!1504736 true))

(declare-fun bm!330486 () Bool)

(declare-fun call!330491 () Unit!130501)

(declare-fun lemmaContainsAllItsOwnKeys!799 (ListMap!5285) Unit!130501)

(assert (=> bm!330486 (= call!330491 (lemmaContainsAllItsOwnKeys!799 lt!1889044))))

(declare-fun b!4724317 () Bool)

(declare-fun e!2946461 () Bool)

(assert (=> b!4724317 (= e!2946461 (forall!11596 (toList!5921 lt!1889044) lambda!215922))))

(declare-fun b!4724319 () Bool)

(declare-fun e!2946462 () Bool)

(declare-fun invariantList!1513 (List!52960) Bool)

(assert (=> b!4724319 (= e!2946462 (invariantList!1513 (toList!5921 lt!1889297)))))

(declare-fun e!2946463 () ListMap!5285)

(assert (=> b!4724320 (= e!2946463 lt!1889044)))

(declare-fun lt!1889300 () Unit!130501)

(assert (=> b!4724320 (= lt!1889300 call!330491)))

(declare-fun call!330493 () Bool)

(assert (=> b!4724320 call!330493))

(declare-fun lt!1889314 () Unit!130501)

(assert (=> b!4724320 (= lt!1889314 lt!1889300)))

(declare-fun call!330492 () Bool)

(assert (=> b!4724320 call!330492))

(declare-fun lt!1889313 () Unit!130501)

(declare-fun Unit!130538 () Unit!130501)

(assert (=> b!4724320 (= lt!1889313 Unit!130538)))

(declare-fun b!4724321 () Bool)

(declare-fun res!1999005 () Bool)

(assert (=> b!4724321 (=> (not res!1999005) (not e!2946462))))

(assert (=> b!4724321 (= res!1999005 (forall!11596 (toList!5921 lt!1889044) lambda!215923))))

(declare-fun c!806840 () Bool)

(declare-fun lt!1889312 () ListMap!5285)

(declare-fun bm!330487 () Bool)

(assert (=> bm!330487 (= call!330493 (forall!11596 (ite c!806840 (toList!5921 lt!1889044) (toList!5921 lt!1889312)) (ite c!806840 lambda!215918 lambda!215922)))))

(declare-fun bm!330488 () Bool)

(assert (=> bm!330488 (= call!330492 (forall!11596 (toList!5921 lt!1889044) (ite c!806840 lambda!215918 lambda!215920)))))

(assert (=> d!1504736 e!2946462))

(declare-fun res!1999007 () Bool)

(assert (=> d!1504736 (=> (not res!1999007) (not e!2946462))))

(assert (=> d!1504736 (= res!1999007 (forall!11596 (_2!30524 (h!59186 (toList!5922 lm!2023))) lambda!215923))))

(assert (=> d!1504736 (= lt!1889297 e!2946463)))

(assert (=> d!1504736 (= c!806840 ((_ is Nil!52836) (_2!30524 (h!59186 (toList!5922 lm!2023)))))))

(assert (=> d!1504736 (noDuplicateKeys!2016 (_2!30524 (h!59186 (toList!5922 lm!2023))))))

(assert (=> d!1504736 (= (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (toList!5922 lm!2023))) lt!1889044) lt!1889297)))

(assert (=> b!4724318 (= e!2946463 lt!1889307)))

(assert (=> b!4724318 (= lt!1889312 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (=> b!4724318 (= lt!1889307 (addToMapMapFromBucket!1446 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun lt!1889316 () Unit!130501)

(assert (=> b!4724318 (= lt!1889316 call!330491)))

(assert (=> b!4724318 call!330492))

(declare-fun lt!1889315 () Unit!130501)

(assert (=> b!4724318 (= lt!1889315 lt!1889316)))

(assert (=> b!4724318 call!330493))

(declare-fun lt!1889302 () Unit!130501)

(declare-fun Unit!130539 () Unit!130501)

(assert (=> b!4724318 (= lt!1889302 Unit!130539)))

(assert (=> b!4724318 (forall!11596 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) lambda!215922)))

(declare-fun lt!1889308 () Unit!130501)

(declare-fun Unit!130540 () Unit!130501)

(assert (=> b!4724318 (= lt!1889308 Unit!130540)))

(declare-fun lt!1889303 () Unit!130501)

(declare-fun Unit!130541 () Unit!130501)

(assert (=> b!4724318 (= lt!1889303 Unit!130541)))

(declare-fun lt!1889306 () Unit!130501)

(declare-fun forallContained!3643 (List!52960 Int tuple2!54458) Unit!130501)

(assert (=> b!4724318 (= lt!1889306 (forallContained!3643 (toList!5921 lt!1889312) lambda!215922 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (=> b!4724318 (contains!16183 lt!1889312 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(declare-fun lt!1889305 () Unit!130501)

(declare-fun Unit!130542 () Unit!130501)

(assert (=> b!4724318 (= lt!1889305 Unit!130542)))

(assert (=> b!4724318 (contains!16183 lt!1889307 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(declare-fun lt!1889298 () Unit!130501)

(declare-fun Unit!130544 () Unit!130501)

(assert (=> b!4724318 (= lt!1889298 Unit!130544)))

(assert (=> b!4724318 (forall!11596 (_2!30524 (h!59186 (toList!5922 lm!2023))) lambda!215922)))

(declare-fun lt!1889299 () Unit!130501)

(declare-fun Unit!130545 () Unit!130501)

(assert (=> b!4724318 (= lt!1889299 Unit!130545)))

(assert (=> b!4724318 (forall!11596 (toList!5921 lt!1889312) lambda!215922)))

(declare-fun lt!1889310 () Unit!130501)

(declare-fun Unit!130546 () Unit!130501)

(assert (=> b!4724318 (= lt!1889310 Unit!130546)))

(declare-fun lt!1889304 () Unit!130501)

(declare-fun Unit!130547 () Unit!130501)

(assert (=> b!4724318 (= lt!1889304 Unit!130547)))

(declare-fun lt!1889311 () Unit!130501)

(declare-fun addForallContainsKeyThenBeforeAdding!798 (ListMap!5285 ListMap!5285 K!14190 V!14436) Unit!130501)

(assert (=> b!4724318 (= lt!1889311 (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889307 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (_2!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> b!4724318 (forall!11596 (toList!5921 lt!1889044) lambda!215922)))

(declare-fun lt!1889301 () Unit!130501)

(assert (=> b!4724318 (= lt!1889301 lt!1889311)))

(assert (=> b!4724318 (forall!11596 (toList!5921 lt!1889044) lambda!215922)))

(declare-fun lt!1889317 () Unit!130501)

(declare-fun Unit!130551 () Unit!130501)

(assert (=> b!4724318 (= lt!1889317 Unit!130551)))

(declare-fun res!1999006 () Bool)

(assert (=> b!4724318 (= res!1999006 (forall!11596 (_2!30524 (h!59186 (toList!5922 lm!2023))) lambda!215922))))

(assert (=> b!4724318 (=> (not res!1999006) (not e!2946461))))

(assert (=> b!4724318 e!2946461))

(declare-fun lt!1889309 () Unit!130501)

(declare-fun Unit!130553 () Unit!130501)

(assert (=> b!4724318 (= lt!1889309 Unit!130553)))

(assert (= (and d!1504736 c!806840) b!4724320))

(assert (= (and d!1504736 (not c!806840)) b!4724318))

(assert (= (and b!4724318 res!1999006) b!4724317))

(assert (= (or b!4724320 b!4724318) bm!330486))

(assert (= (or b!4724320 b!4724318) bm!330488))

(assert (= (or b!4724320 b!4724318) bm!330487))

(assert (= (and d!1504736 res!1999007) b!4724321))

(assert (= (and b!4724321 res!1999005) b!4724319))

(declare-fun m!5661999 () Bool)

(assert (=> b!4724319 m!5661999))

(declare-fun m!5662001 () Bool)

(assert (=> bm!330486 m!5662001))

(declare-fun m!5662003 () Bool)

(assert (=> b!4724321 m!5662003))

(declare-fun m!5662005 () Bool)

(assert (=> d!1504736 m!5662005))

(declare-fun m!5662007 () Bool)

(assert (=> d!1504736 m!5662007))

(declare-fun m!5662009 () Bool)

(assert (=> b!4724318 m!5662009))

(declare-fun m!5662011 () Bool)

(assert (=> b!4724318 m!5662011))

(declare-fun m!5662013 () Bool)

(assert (=> b!4724318 m!5662013))

(declare-fun m!5662015 () Bool)

(assert (=> b!4724318 m!5662015))

(declare-fun m!5662017 () Bool)

(assert (=> b!4724318 m!5662017))

(assert (=> b!4724318 m!5662009))

(assert (=> b!4724318 m!5662011))

(declare-fun m!5662019 () Bool)

(assert (=> b!4724318 m!5662019))

(declare-fun m!5662021 () Bool)

(assert (=> b!4724318 m!5662021))

(declare-fun m!5662023 () Bool)

(assert (=> b!4724318 m!5662023))

(declare-fun m!5662025 () Bool)

(assert (=> b!4724318 m!5662025))

(declare-fun m!5662027 () Bool)

(assert (=> b!4724318 m!5662027))

(assert (=> b!4724318 m!5662019))

(declare-fun m!5662029 () Bool)

(assert (=> bm!330487 m!5662029))

(assert (=> b!4724317 m!5662019))

(declare-fun m!5662031 () Bool)

(assert (=> bm!330488 m!5662031))

(assert (=> b!4724147 d!1504736))

(declare-fun bs!1115035 () Bool)

(declare-fun d!1504778 () Bool)

(assert (= bs!1115035 (and d!1504778 start!480916)))

(declare-fun lambda!215926 () Int)

(assert (=> bs!1115035 (= lambda!215926 lambda!215822)))

(declare-fun bs!1115036 () Bool)

(assert (= bs!1115036 (and d!1504778 d!1504696)))

(assert (=> bs!1115036 (not (= lambda!215926 lambda!215825))))

(declare-fun bs!1115037 () Bool)

(assert (= bs!1115037 (and d!1504778 d!1504734)))

(assert (=> bs!1115037 (not (= lambda!215926 lambda!215836))))

(declare-fun lt!1889332 () ListMap!5285)

(assert (=> d!1504778 (invariantList!1513 (toList!5921 lt!1889332))))

(declare-fun e!2946470 () ListMap!5285)

(assert (=> d!1504778 (= lt!1889332 e!2946470)))

(declare-fun c!806847 () Bool)

(assert (=> d!1504778 (= c!806847 ((_ is Cons!52837) (t!360231 (toList!5922 lm!2023))))))

(assert (=> d!1504778 (forall!11594 (t!360231 (toList!5922 lm!2023)) lambda!215926)))

(assert (=> d!1504778 (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889332)))

(declare-fun b!4724336 () Bool)

(assert (=> b!4724336 (= e!2946470 (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))))))

(declare-fun b!4724337 () Bool)

(assert (=> b!4724337 (= e!2946470 (ListMap!5286 Nil!52836))))

(assert (= (and d!1504778 c!806847) b!4724336))

(assert (= (and d!1504778 (not c!806847)) b!4724337))

(declare-fun m!5662033 () Bool)

(assert (=> d!1504778 m!5662033))

(declare-fun m!5662035 () Bool)

(assert (=> d!1504778 m!5662035))

(declare-fun m!5662037 () Bool)

(assert (=> b!4724336 m!5662037))

(assert (=> b!4724336 m!5662037))

(declare-fun m!5662039 () Bool)

(assert (=> b!4724336 m!5662039))

(assert (=> b!4724147 d!1504778))

(declare-fun d!1504780 () Bool)

(declare-fun tail!9011 (List!52961) List!52961)

(assert (=> d!1504780 (= (tail!9008 lm!2023) (ListLongMap!4452 (tail!9011 (toList!5922 lm!2023))))))

(declare-fun bs!1115038 () Bool)

(assert (= bs!1115038 d!1504780))

(declare-fun m!5662041 () Bool)

(assert (=> bs!1115038 m!5662041))

(assert (=> b!4724147 d!1504780))

(declare-fun d!1504782 () Bool)

(declare-fun res!1999018 () Bool)

(declare-fun e!2946483 () Bool)

(assert (=> d!1504782 (=> res!1999018 e!2946483)))

(assert (=> d!1504782 (= res!1999018 ((_ is Nil!52837) lt!1889048))))

(assert (=> d!1504782 (= (forall!11594 lt!1889048 lambda!215822) e!2946483)))

(declare-fun b!4724352 () Bool)

(declare-fun e!2946484 () Bool)

(assert (=> b!4724352 (= e!2946483 e!2946484)))

(declare-fun res!1999019 () Bool)

(assert (=> b!4724352 (=> (not res!1999019) (not e!2946484))))

(declare-fun dynLambda!21823 (Int tuple2!54460) Bool)

(assert (=> b!4724352 (= res!1999019 (dynLambda!21823 lambda!215822 (h!59186 lt!1889048)))))

(declare-fun b!4724353 () Bool)

(assert (=> b!4724353 (= e!2946484 (forall!11594 (t!360231 lt!1889048) lambda!215822))))

(assert (= (and d!1504782 (not res!1999018)) b!4724352))

(assert (= (and b!4724352 res!1999019) b!4724353))

(declare-fun b_lambda!179195 () Bool)

(assert (=> (not b_lambda!179195) (not b!4724352)))

(declare-fun m!5662043 () Bool)

(assert (=> b!4724352 m!5662043))

(declare-fun m!5662045 () Bool)

(assert (=> b!4724353 m!5662045))

(assert (=> b!4724157 d!1504782))

(declare-fun bs!1115039 () Bool)

(declare-fun d!1504784 () Bool)

(assert (= bs!1115039 (and d!1504784 start!480916)))

(declare-fun lambda!215927 () Int)

(assert (=> bs!1115039 (= lambda!215927 lambda!215822)))

(declare-fun bs!1115040 () Bool)

(assert (= bs!1115040 (and d!1504784 d!1504696)))

(assert (=> bs!1115040 (not (= lambda!215927 lambda!215825))))

(declare-fun bs!1115041 () Bool)

(assert (= bs!1115041 (and d!1504784 d!1504734)))

(assert (=> bs!1115041 (not (= lambda!215927 lambda!215836))))

(declare-fun bs!1115042 () Bool)

(assert (= bs!1115042 (and d!1504784 d!1504778)))

(assert (=> bs!1115042 (= lambda!215927 lambda!215926)))

(declare-fun lt!1889337 () ListMap!5285)

(assert (=> d!1504784 (invariantList!1513 (toList!5921 lt!1889337))))

(declare-fun e!2946485 () ListMap!5285)

(assert (=> d!1504784 (= lt!1889337 e!2946485)))

(declare-fun c!806850 () Bool)

(assert (=> d!1504784 (= c!806850 ((_ is Cons!52837) (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))))

(assert (=> d!1504784 (forall!11594 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))) lambda!215927)))

(assert (=> d!1504784 (= (extractMap!2042 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))) lt!1889337)))

(declare-fun b!4724354 () Bool)

(assert (=> b!4724354 (= e!2946485 (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))))))

(declare-fun b!4724355 () Bool)

(assert (=> b!4724355 (= e!2946485 (ListMap!5286 Nil!52836))))

(assert (= (and d!1504784 c!806850) b!4724354))

(assert (= (and d!1504784 (not c!806850)) b!4724355))

(declare-fun m!5662047 () Bool)

(assert (=> d!1504784 m!5662047))

(declare-fun m!5662049 () Bool)

(assert (=> d!1504784 m!5662049))

(declare-fun m!5662051 () Bool)

(assert (=> b!4724354 m!5662051))

(assert (=> b!4724354 m!5662051))

(declare-fun m!5662053 () Bool)

(assert (=> b!4724354 m!5662053))

(assert (=> b!4724159 d!1504784))

(declare-fun bs!1115043 () Bool)

(declare-fun d!1504786 () Bool)

(assert (= bs!1115043 (and d!1504786 d!1504734)))

(declare-fun lambda!215928 () Int)

(assert (=> bs!1115043 (not (= lambda!215928 lambda!215836))))

(declare-fun bs!1115044 () Bool)

(assert (= bs!1115044 (and d!1504786 d!1504696)))

(assert (=> bs!1115044 (not (= lambda!215928 lambda!215825))))

(declare-fun bs!1115045 () Bool)

(assert (= bs!1115045 (and d!1504786 start!480916)))

(assert (=> bs!1115045 (= lambda!215928 lambda!215822)))

(declare-fun bs!1115046 () Bool)

(assert (= bs!1115046 (and d!1504786 d!1504778)))

(assert (=> bs!1115046 (= lambda!215928 lambda!215926)))

(declare-fun bs!1115047 () Bool)

(assert (= bs!1115047 (and d!1504786 d!1504784)))

(assert (=> bs!1115047 (= lambda!215928 lambda!215927)))

(declare-fun lt!1889338 () ListMap!5285)

(assert (=> d!1504786 (invariantList!1513 (toList!5921 lt!1889338))))

(declare-fun e!2946486 () ListMap!5285)

(assert (=> d!1504786 (= lt!1889338 e!2946486)))

(declare-fun c!806851 () Bool)

(assert (=> d!1504786 (= c!806851 ((_ is Cons!52837) lt!1889048))))

(assert (=> d!1504786 (forall!11594 lt!1889048 lambda!215928)))

(assert (=> d!1504786 (= (extractMap!2042 lt!1889048) lt!1889338)))

(declare-fun b!4724356 () Bool)

(assert (=> b!4724356 (= e!2946486 (addToMapMapFromBucket!1446 (_2!30524 (h!59186 lt!1889048)) (extractMap!2042 (t!360231 lt!1889048))))))

(declare-fun b!4724357 () Bool)

(assert (=> b!4724357 (= e!2946486 (ListMap!5286 Nil!52836))))

(assert (= (and d!1504786 c!806851) b!4724356))

(assert (= (and d!1504786 (not c!806851)) b!4724357))

(declare-fun m!5662055 () Bool)

(assert (=> d!1504786 m!5662055))

(declare-fun m!5662057 () Bool)

(assert (=> d!1504786 m!5662057))

(declare-fun m!5662061 () Bool)

(assert (=> b!4724356 m!5662061))

(assert (=> b!4724356 m!5662061))

(declare-fun m!5662065 () Bool)

(assert (=> b!4724356 m!5662065))

(assert (=> b!4724159 d!1504786))

(declare-fun d!1504788 () Bool)

(declare-fun hash!4390 (Hashable!6385 K!14190) (_ BitVec 64))

(assert (=> d!1504788 (= (hash!4388 hashF!1323 key!4653) (hash!4390 hashF!1323 key!4653))))

(declare-fun bs!1115049 () Bool)

(assert (= bs!1115049 d!1504788))

(declare-fun m!5662083 () Bool)

(assert (=> bs!1115049 m!5662083))

(assert (=> b!4724148 d!1504788))

(declare-fun d!1504792 () Bool)

(assert (=> d!1504792 (= (tail!9009 oldBucket!34) (t!360230 oldBucket!34))))

(assert (=> b!4724150 d!1504792))

(declare-fun d!1504794 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9398 (List!52960) (InoxSet tuple2!54458))

(assert (=> d!1504794 (= (eq!1133 (+!2271 lt!1889047 (h!59185 oldBucket!34)) (addToMapMapFromBucket!1446 oldBucket!34 lt!1889044)) (= (content!9398 (toList!5921 (+!2271 lt!1889047 (h!59185 oldBucket!34)))) (content!9398 (toList!5921 (addToMapMapFromBucket!1446 oldBucket!34 lt!1889044)))))))

(declare-fun bs!1115055 () Bool)

(assert (= bs!1115055 d!1504794))

(declare-fun m!5662097 () Bool)

(assert (=> bs!1115055 m!5662097))

(declare-fun m!5662099 () Bool)

(assert (=> bs!1115055 m!5662099))

(assert (=> b!4724149 d!1504794))

(declare-fun d!1504802 () Bool)

(assert (=> d!1504802 (eq!1133 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044) (+!2271 (addToMapMapFromBucket!1446 lt!1889050 lt!1889044) lt!1889051))))

(declare-fun lt!1889350 () Unit!130501)

(declare-fun choose!33341 (tuple2!54458 List!52960 ListMap!5285) Unit!130501)

(assert (=> d!1504802 (= lt!1889350 (choose!33341 lt!1889051 lt!1889050 lt!1889044))))

(assert (=> d!1504802 (noDuplicateKeys!2016 lt!1889050)))

(assert (=> d!1504802 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!382 lt!1889051 lt!1889050 lt!1889044) lt!1889350)))

(declare-fun bs!1115059 () Bool)

(assert (= bs!1115059 d!1504802))

(assert (=> bs!1115059 m!5661651))

(declare-fun m!5662109 () Bool)

(assert (=> bs!1115059 m!5662109))

(assert (=> bs!1115059 m!5661683))

(declare-fun m!5662111 () Bool)

(assert (=> bs!1115059 m!5662111))

(declare-fun m!5662113 () Bool)

(assert (=> bs!1115059 m!5662113))

(declare-fun m!5662115 () Bool)

(assert (=> bs!1115059 m!5662115))

(assert (=> bs!1115059 m!5661683))

(assert (=> bs!1115059 m!5661651))

(assert (=> bs!1115059 m!5662111))

(assert (=> b!4724149 d!1504802))

(declare-fun d!1504810 () Bool)

(assert (=> d!1504810 (= (head!10254 oldBucket!34) (h!59185 oldBucket!34))))

(assert (=> b!4724149 d!1504810))

(declare-fun bs!1115060 () Bool)

(declare-fun b!4724389 () Bool)

(assert (= bs!1115060 (and b!4724389 b!4724318)))

(declare-fun lambda!215930 () Int)

(assert (=> bs!1115060 (= lambda!215930 lambda!215920)))

(declare-fun bs!1115061 () Bool)

(assert (= bs!1115061 (and b!4724389 b!4724320)))

(assert (=> bs!1115061 (= lambda!215930 lambda!215918)))

(declare-fun bs!1115062 () Bool)

(assert (= bs!1115062 (and b!4724389 d!1504728)))

(assert (=> bs!1115062 (not (= lambda!215930 lambda!215834))))

(declare-fun bs!1115063 () Bool)

(assert (= bs!1115063 (and b!4724389 d!1504730)))

(assert (=> bs!1115063 (not (= lambda!215930 lambda!215835))))

(declare-fun bs!1115064 () Bool)

(assert (= bs!1115064 (and b!4724389 d!1504736)))

(assert (=> bs!1115064 (= (= lt!1889044 lt!1889297) (= lambda!215930 lambda!215923))))

(assert (=> bs!1115060 (= (= lt!1889044 lt!1889307) (= lambda!215930 lambda!215922))))

(assert (=> b!4724389 true))

(declare-fun bs!1115065 () Bool)

(declare-fun b!4724387 () Bool)

(assert (= bs!1115065 (and b!4724387 b!4724389)))

(declare-fun lambda!215931 () Int)

(assert (=> bs!1115065 (= lambda!215931 lambda!215930)))

(declare-fun bs!1115066 () Bool)

(assert (= bs!1115066 (and b!4724387 b!4724318)))

(assert (=> bs!1115066 (= lambda!215931 lambda!215920)))

(declare-fun bs!1115067 () Bool)

(assert (= bs!1115067 (and b!4724387 b!4724320)))

(assert (=> bs!1115067 (= lambda!215931 lambda!215918)))

(declare-fun bs!1115068 () Bool)

(assert (= bs!1115068 (and b!4724387 d!1504728)))

(assert (=> bs!1115068 (not (= lambda!215931 lambda!215834))))

(declare-fun bs!1115069 () Bool)

(assert (= bs!1115069 (and b!4724387 d!1504730)))

(assert (=> bs!1115069 (not (= lambda!215931 lambda!215835))))

(declare-fun bs!1115070 () Bool)

(assert (= bs!1115070 (and b!4724387 d!1504736)))

(assert (=> bs!1115070 (= (= lt!1889044 lt!1889297) (= lambda!215931 lambda!215923))))

(assert (=> bs!1115066 (= (= lt!1889044 lt!1889307) (= lambda!215931 lambda!215922))))

(assert (=> b!4724387 true))

(declare-fun lt!1889361 () ListMap!5285)

(declare-fun lambda!215932 () Int)

(assert (=> bs!1115065 (= (= lt!1889361 lt!1889044) (= lambda!215932 lambda!215930))))

(assert (=> bs!1115066 (= (= lt!1889361 lt!1889044) (= lambda!215932 lambda!215920))))

(assert (=> bs!1115067 (= (= lt!1889361 lt!1889044) (= lambda!215932 lambda!215918))))

(assert (=> bs!1115068 (not (= lambda!215932 lambda!215834))))

(assert (=> b!4724387 (= (= lt!1889361 lt!1889044) (= lambda!215932 lambda!215931))))

(assert (=> bs!1115069 (not (= lambda!215932 lambda!215835))))

(assert (=> bs!1115070 (= (= lt!1889361 lt!1889297) (= lambda!215932 lambda!215923))))

(assert (=> bs!1115066 (= (= lt!1889361 lt!1889307) (= lambda!215932 lambda!215922))))

(assert (=> b!4724387 true))

(declare-fun bs!1115071 () Bool)

(declare-fun d!1504812 () Bool)

(assert (= bs!1115071 (and d!1504812 b!4724389)))

(declare-fun lt!1889351 () ListMap!5285)

(declare-fun lambda!215933 () Int)

(assert (=> bs!1115071 (= (= lt!1889351 lt!1889044) (= lambda!215933 lambda!215930))))

(declare-fun bs!1115072 () Bool)

(assert (= bs!1115072 (and d!1504812 b!4724318)))

(assert (=> bs!1115072 (= (= lt!1889351 lt!1889044) (= lambda!215933 lambda!215920))))

(declare-fun bs!1115073 () Bool)

(assert (= bs!1115073 (and d!1504812 b!4724387)))

(assert (=> bs!1115073 (= (= lt!1889351 lt!1889361) (= lambda!215933 lambda!215932))))

(declare-fun bs!1115074 () Bool)

(assert (= bs!1115074 (and d!1504812 b!4724320)))

(assert (=> bs!1115074 (= (= lt!1889351 lt!1889044) (= lambda!215933 lambda!215918))))

(declare-fun bs!1115075 () Bool)

(assert (= bs!1115075 (and d!1504812 d!1504728)))

(assert (=> bs!1115075 (not (= lambda!215933 lambda!215834))))

(assert (=> bs!1115073 (= (= lt!1889351 lt!1889044) (= lambda!215933 lambda!215931))))

(declare-fun bs!1115076 () Bool)

(assert (= bs!1115076 (and d!1504812 d!1504730)))

(assert (=> bs!1115076 (not (= lambda!215933 lambda!215835))))

(declare-fun bs!1115077 () Bool)

(assert (= bs!1115077 (and d!1504812 d!1504736)))

(assert (=> bs!1115077 (= (= lt!1889351 lt!1889297) (= lambda!215933 lambda!215923))))

(assert (=> bs!1115072 (= (= lt!1889351 lt!1889307) (= lambda!215933 lambda!215922))))

(assert (=> d!1504812 true))

(declare-fun bm!330492 () Bool)

(declare-fun call!330497 () Unit!130501)

(assert (=> bm!330492 (= call!330497 (lemmaContainsAllItsOwnKeys!799 lt!1889044))))

(declare-fun b!4724386 () Bool)

(declare-fun e!2946507 () Bool)

(assert (=> b!4724386 (= e!2946507 (forall!11596 (toList!5921 lt!1889044) lambda!215932))))

(declare-fun b!4724388 () Bool)

(declare-fun e!2946508 () Bool)

(assert (=> b!4724388 (= e!2946508 (invariantList!1513 (toList!5921 lt!1889351)))))

(declare-fun e!2946509 () ListMap!5285)

(assert (=> b!4724389 (= e!2946509 lt!1889044)))

(declare-fun lt!1889354 () Unit!130501)

(assert (=> b!4724389 (= lt!1889354 call!330497)))

(declare-fun call!330499 () Bool)

(assert (=> b!4724389 call!330499))

(declare-fun lt!1889368 () Unit!130501)

(assert (=> b!4724389 (= lt!1889368 lt!1889354)))

(declare-fun call!330498 () Bool)

(assert (=> b!4724389 call!330498))

(declare-fun lt!1889367 () Unit!130501)

(declare-fun Unit!130563 () Unit!130501)

(assert (=> b!4724389 (= lt!1889367 Unit!130563)))

(declare-fun b!4724390 () Bool)

(declare-fun res!1999029 () Bool)

(assert (=> b!4724390 (=> (not res!1999029) (not e!2946508))))

(assert (=> b!4724390 (= res!1999029 (forall!11596 (toList!5921 lt!1889044) lambda!215933))))

(declare-fun c!806856 () Bool)

(declare-fun lt!1889366 () ListMap!5285)

(declare-fun bm!330493 () Bool)

(assert (=> bm!330493 (= call!330499 (forall!11596 (ite c!806856 (toList!5921 lt!1889044) (toList!5921 lt!1889366)) (ite c!806856 lambda!215930 lambda!215932)))))

(declare-fun bm!330494 () Bool)

(assert (=> bm!330494 (= call!330498 (forall!11596 (toList!5921 lt!1889044) (ite c!806856 lambda!215930 lambda!215931)))))

(assert (=> d!1504812 e!2946508))

(declare-fun res!1999031 () Bool)

(assert (=> d!1504812 (=> (not res!1999031) (not e!2946508))))

(assert (=> d!1504812 (= res!1999031 (forall!11596 (Cons!52836 lt!1889051 lt!1889050) lambda!215933))))

(assert (=> d!1504812 (= lt!1889351 e!2946509)))

(assert (=> d!1504812 (= c!806856 ((_ is Nil!52836) (Cons!52836 lt!1889051 lt!1889050)))))

(assert (=> d!1504812 (noDuplicateKeys!2016 (Cons!52836 lt!1889051 lt!1889050))))

(assert (=> d!1504812 (= (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044) lt!1889351)))

(assert (=> b!4724387 (= e!2946509 lt!1889361)))

(assert (=> b!4724387 (= lt!1889366 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(assert (=> b!4724387 (= lt!1889361 (addToMapMapFromBucket!1446 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun lt!1889370 () Unit!130501)

(assert (=> b!4724387 (= lt!1889370 call!330497)))

(assert (=> b!4724387 call!330498))

(declare-fun lt!1889369 () Unit!130501)

(assert (=> b!4724387 (= lt!1889369 lt!1889370)))

(assert (=> b!4724387 call!330499))

(declare-fun lt!1889356 () Unit!130501)

(declare-fun Unit!130571 () Unit!130501)

(assert (=> b!4724387 (= lt!1889356 Unit!130571)))

(assert (=> b!4724387 (forall!11596 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) lambda!215932)))

(declare-fun lt!1889362 () Unit!130501)

(declare-fun Unit!130572 () Unit!130501)

(assert (=> b!4724387 (= lt!1889362 Unit!130572)))

(declare-fun lt!1889357 () Unit!130501)

(declare-fun Unit!130574 () Unit!130501)

(assert (=> b!4724387 (= lt!1889357 Unit!130574)))

(declare-fun lt!1889360 () Unit!130501)

(assert (=> b!4724387 (= lt!1889360 (forallContained!3643 (toList!5921 lt!1889366) lambda!215932 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(assert (=> b!4724387 (contains!16183 lt!1889366 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(declare-fun lt!1889359 () Unit!130501)

(declare-fun Unit!130575 () Unit!130501)

(assert (=> b!4724387 (= lt!1889359 Unit!130575)))

(assert (=> b!4724387 (contains!16183 lt!1889361 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(declare-fun lt!1889352 () Unit!130501)

(declare-fun Unit!130576 () Unit!130501)

(assert (=> b!4724387 (= lt!1889352 Unit!130576)))

(assert (=> b!4724387 (forall!11596 (Cons!52836 lt!1889051 lt!1889050) lambda!215932)))

(declare-fun lt!1889353 () Unit!130501)

(declare-fun Unit!130577 () Unit!130501)

(assert (=> b!4724387 (= lt!1889353 Unit!130577)))

(assert (=> b!4724387 (forall!11596 (toList!5921 lt!1889366) lambda!215932)))

(declare-fun lt!1889364 () Unit!130501)

(declare-fun Unit!130578 () Unit!130501)

(assert (=> b!4724387 (= lt!1889364 Unit!130578)))

(declare-fun lt!1889358 () Unit!130501)

(declare-fun Unit!130579 () Unit!130501)

(assert (=> b!4724387 (= lt!1889358 Unit!130579)))

(declare-fun lt!1889365 () Unit!130501)

(assert (=> b!4724387 (= lt!1889365 (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889361 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (_2!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> b!4724387 (forall!11596 (toList!5921 lt!1889044) lambda!215932)))

(declare-fun lt!1889355 () Unit!130501)

(assert (=> b!4724387 (= lt!1889355 lt!1889365)))

(assert (=> b!4724387 (forall!11596 (toList!5921 lt!1889044) lambda!215932)))

(declare-fun lt!1889371 () Unit!130501)

(declare-fun Unit!130580 () Unit!130501)

(assert (=> b!4724387 (= lt!1889371 Unit!130580)))

(declare-fun res!1999030 () Bool)

(assert (=> b!4724387 (= res!1999030 (forall!11596 (Cons!52836 lt!1889051 lt!1889050) lambda!215932))))

(assert (=> b!4724387 (=> (not res!1999030) (not e!2946507))))

(assert (=> b!4724387 e!2946507))

(declare-fun lt!1889363 () Unit!130501)

(declare-fun Unit!130581 () Unit!130501)

(assert (=> b!4724387 (= lt!1889363 Unit!130581)))

(assert (= (and d!1504812 c!806856) b!4724389))

(assert (= (and d!1504812 (not c!806856)) b!4724387))

(assert (= (and b!4724387 res!1999030) b!4724386))

(assert (= (or b!4724389 b!4724387) bm!330492))

(assert (= (or b!4724389 b!4724387) bm!330494))

(assert (= (or b!4724389 b!4724387) bm!330493))

(assert (= (and d!1504812 res!1999031) b!4724390))

(assert (= (and b!4724390 res!1999029) b!4724388))

(declare-fun m!5662117 () Bool)

(assert (=> b!4724388 m!5662117))

(assert (=> bm!330492 m!5662001))

(declare-fun m!5662119 () Bool)

(assert (=> b!4724390 m!5662119))

(declare-fun m!5662121 () Bool)

(assert (=> d!1504812 m!5662121))

(declare-fun m!5662123 () Bool)

(assert (=> d!1504812 m!5662123))

(declare-fun m!5662125 () Bool)

(assert (=> b!4724387 m!5662125))

(declare-fun m!5662127 () Bool)

(assert (=> b!4724387 m!5662127))

(declare-fun m!5662129 () Bool)

(assert (=> b!4724387 m!5662129))

(declare-fun m!5662131 () Bool)

(assert (=> b!4724387 m!5662131))

(declare-fun m!5662133 () Bool)

(assert (=> b!4724387 m!5662133))

(assert (=> b!4724387 m!5662125))

(assert (=> b!4724387 m!5662127))

(declare-fun m!5662135 () Bool)

(assert (=> b!4724387 m!5662135))

(declare-fun m!5662137 () Bool)

(assert (=> b!4724387 m!5662137))

(declare-fun m!5662139 () Bool)

(assert (=> b!4724387 m!5662139))

(declare-fun m!5662141 () Bool)

(assert (=> b!4724387 m!5662141))

(declare-fun m!5662143 () Bool)

(assert (=> b!4724387 m!5662143))

(assert (=> b!4724387 m!5662135))

(declare-fun m!5662145 () Bool)

(assert (=> bm!330493 m!5662145))

(assert (=> b!4724386 m!5662135))

(declare-fun m!5662147 () Bool)

(assert (=> bm!330494 m!5662147))

(assert (=> b!4724149 d!1504812))

(declare-fun d!1504814 () Bool)

(declare-fun e!2946512 () Bool)

(assert (=> d!1504814 e!2946512))

(declare-fun res!1999037 () Bool)

(assert (=> d!1504814 (=> (not res!1999037) (not e!2946512))))

(declare-fun lt!1889381 () ListMap!5285)

(assert (=> d!1504814 (= res!1999037 (contains!16183 lt!1889381 (_1!30523 lt!1889051)))))

(declare-fun lt!1889383 () List!52960)

(assert (=> d!1504814 (= lt!1889381 (ListMap!5286 lt!1889383))))

(declare-fun lt!1889382 () Unit!130501)

(declare-fun lt!1889380 () Unit!130501)

(assert (=> d!1504814 (= lt!1889382 lt!1889380)))

(declare-datatypes ((Option!12365 0))(
  ( (None!12364) (Some!12364 (v!46945 V!14436)) )
))
(declare-fun getValueByKey!1961 (List!52960 K!14190) Option!12365)

(assert (=> d!1504814 (= (getValueByKey!1961 lt!1889383 (_1!30523 lt!1889051)) (Some!12364 (_2!30523 lt!1889051)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1088 (List!52960 K!14190 V!14436) Unit!130501)

(assert (=> d!1504814 (= lt!1889380 (lemmaContainsTupThenGetReturnValue!1088 lt!1889383 (_1!30523 lt!1889051) (_2!30523 lt!1889051)))))

(declare-fun insertNoDuplicatedKeys!596 (List!52960 K!14190 V!14436) List!52960)

(assert (=> d!1504814 (= lt!1889383 (insertNoDuplicatedKeys!596 (toList!5921 lt!1889047) (_1!30523 lt!1889051) (_2!30523 lt!1889051)))))

(assert (=> d!1504814 (= (+!2271 lt!1889047 lt!1889051) lt!1889381)))

(declare-fun b!4724395 () Bool)

(declare-fun res!1999036 () Bool)

(assert (=> b!4724395 (=> (not res!1999036) (not e!2946512))))

(assert (=> b!4724395 (= res!1999036 (= (getValueByKey!1961 (toList!5921 lt!1889381) (_1!30523 lt!1889051)) (Some!12364 (_2!30523 lt!1889051))))))

(declare-fun b!4724396 () Bool)

(declare-fun contains!16186 (List!52960 tuple2!54458) Bool)

(assert (=> b!4724396 (= e!2946512 (contains!16186 (toList!5921 lt!1889381) lt!1889051))))

(assert (= (and d!1504814 res!1999037) b!4724395))

(assert (= (and b!4724395 res!1999036) b!4724396))

(declare-fun m!5662149 () Bool)

(assert (=> d!1504814 m!5662149))

(declare-fun m!5662151 () Bool)

(assert (=> d!1504814 m!5662151))

(declare-fun m!5662153 () Bool)

(assert (=> d!1504814 m!5662153))

(declare-fun m!5662155 () Bool)

(assert (=> d!1504814 m!5662155))

(declare-fun m!5662157 () Bool)

(assert (=> b!4724395 m!5662157))

(declare-fun m!5662159 () Bool)

(assert (=> b!4724396 m!5662159))

(assert (=> b!4724149 d!1504814))

(declare-fun d!1504816 () Bool)

(declare-fun e!2946513 () Bool)

(assert (=> d!1504816 e!2946513))

(declare-fun res!1999039 () Bool)

(assert (=> d!1504816 (=> (not res!1999039) (not e!2946513))))

(declare-fun lt!1889385 () ListMap!5285)

(assert (=> d!1504816 (= res!1999039 (contains!16183 lt!1889385 (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun lt!1889387 () List!52960)

(assert (=> d!1504816 (= lt!1889385 (ListMap!5286 lt!1889387))))

(declare-fun lt!1889386 () Unit!130501)

(declare-fun lt!1889384 () Unit!130501)

(assert (=> d!1504816 (= lt!1889386 lt!1889384)))

(assert (=> d!1504816 (= (getValueByKey!1961 lt!1889387 (_1!30523 (h!59185 oldBucket!34))) (Some!12364 (_2!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1504816 (= lt!1889384 (lemmaContainsTupThenGetReturnValue!1088 lt!1889387 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1504816 (= lt!1889387 (insertNoDuplicatedKeys!596 (toList!5921 lt!1889047) (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1504816 (= (+!2271 lt!1889047 (h!59185 oldBucket!34)) lt!1889385)))

(declare-fun b!4724397 () Bool)

(declare-fun res!1999038 () Bool)

(assert (=> b!4724397 (=> (not res!1999038) (not e!2946513))))

(assert (=> b!4724397 (= res!1999038 (= (getValueByKey!1961 (toList!5921 lt!1889385) (_1!30523 (h!59185 oldBucket!34))) (Some!12364 (_2!30523 (h!59185 oldBucket!34)))))))

(declare-fun b!4724398 () Bool)

(assert (=> b!4724398 (= e!2946513 (contains!16186 (toList!5921 lt!1889385) (h!59185 oldBucket!34)))))

(assert (= (and d!1504816 res!1999039) b!4724397))

(assert (= (and b!4724397 res!1999038) b!4724398))

(declare-fun m!5662161 () Bool)

(assert (=> d!1504816 m!5662161))

(declare-fun m!5662163 () Bool)

(assert (=> d!1504816 m!5662163))

(declare-fun m!5662165 () Bool)

(assert (=> d!1504816 m!5662165))

(declare-fun m!5662167 () Bool)

(assert (=> d!1504816 m!5662167))

(declare-fun m!5662169 () Bool)

(assert (=> b!4724397 m!5662169))

(declare-fun m!5662171 () Bool)

(assert (=> b!4724398 m!5662171))

(assert (=> b!4724149 d!1504816))

(declare-fun d!1504818 () Bool)

(assert (=> d!1504818 (= (eq!1133 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044) (+!2271 lt!1889047 lt!1889051)) (= (content!9398 (toList!5921 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044))) (content!9398 (toList!5921 (+!2271 lt!1889047 lt!1889051)))))))

(declare-fun bs!1115078 () Bool)

(assert (= bs!1115078 d!1504818))

(declare-fun m!5662173 () Bool)

(assert (=> bs!1115078 m!5662173))

(declare-fun m!5662175 () Bool)

(assert (=> bs!1115078 m!5662175))

(assert (=> b!4724149 d!1504818))

(declare-fun bs!1115079 () Bool)

(declare-fun b!4724402 () Bool)

(assert (= bs!1115079 (and b!4724402 b!4724389)))

(declare-fun lambda!215934 () Int)

(assert (=> bs!1115079 (= lambda!215934 lambda!215930)))

(declare-fun bs!1115080 () Bool)

(assert (= bs!1115080 (and b!4724402 b!4724318)))

(assert (=> bs!1115080 (= lambda!215934 lambda!215920)))

(declare-fun bs!1115081 () Bool)

(assert (= bs!1115081 (and b!4724402 d!1504812)))

(assert (=> bs!1115081 (= (= lt!1889044 lt!1889351) (= lambda!215934 lambda!215933))))

(declare-fun bs!1115082 () Bool)

(assert (= bs!1115082 (and b!4724402 b!4724387)))

(assert (=> bs!1115082 (= (= lt!1889044 lt!1889361) (= lambda!215934 lambda!215932))))

(declare-fun bs!1115083 () Bool)

(assert (= bs!1115083 (and b!4724402 b!4724320)))

(assert (=> bs!1115083 (= lambda!215934 lambda!215918)))

(declare-fun bs!1115084 () Bool)

(assert (= bs!1115084 (and b!4724402 d!1504728)))

(assert (=> bs!1115084 (not (= lambda!215934 lambda!215834))))

(assert (=> bs!1115082 (= lambda!215934 lambda!215931)))

(declare-fun bs!1115085 () Bool)

(assert (= bs!1115085 (and b!4724402 d!1504730)))

(assert (=> bs!1115085 (not (= lambda!215934 lambda!215835))))

(declare-fun bs!1115086 () Bool)

(assert (= bs!1115086 (and b!4724402 d!1504736)))

(assert (=> bs!1115086 (= (= lt!1889044 lt!1889297) (= lambda!215934 lambda!215923))))

(assert (=> bs!1115080 (= (= lt!1889044 lt!1889307) (= lambda!215934 lambda!215922))))

(assert (=> b!4724402 true))

(declare-fun bs!1115087 () Bool)

(declare-fun b!4724400 () Bool)

(assert (= bs!1115087 (and b!4724400 b!4724389)))

(declare-fun lambda!215935 () Int)

(assert (=> bs!1115087 (= lambda!215935 lambda!215930)))

(declare-fun bs!1115088 () Bool)

(assert (= bs!1115088 (and b!4724400 b!4724318)))

(assert (=> bs!1115088 (= lambda!215935 lambda!215920)))

(declare-fun bs!1115089 () Bool)

(assert (= bs!1115089 (and b!4724400 d!1504812)))

(assert (=> bs!1115089 (= (= lt!1889044 lt!1889351) (= lambda!215935 lambda!215933))))

(declare-fun bs!1115090 () Bool)

(assert (= bs!1115090 (and b!4724400 b!4724402)))

(assert (=> bs!1115090 (= lambda!215935 lambda!215934)))

(declare-fun bs!1115091 () Bool)

(assert (= bs!1115091 (and b!4724400 b!4724387)))

(assert (=> bs!1115091 (= (= lt!1889044 lt!1889361) (= lambda!215935 lambda!215932))))

(declare-fun bs!1115092 () Bool)

(assert (= bs!1115092 (and b!4724400 b!4724320)))

(assert (=> bs!1115092 (= lambda!215935 lambda!215918)))

(declare-fun bs!1115093 () Bool)

(assert (= bs!1115093 (and b!4724400 d!1504728)))

(assert (=> bs!1115093 (not (= lambda!215935 lambda!215834))))

(assert (=> bs!1115091 (= lambda!215935 lambda!215931)))

(declare-fun bs!1115094 () Bool)

(assert (= bs!1115094 (and b!4724400 d!1504730)))

(assert (=> bs!1115094 (not (= lambda!215935 lambda!215835))))

(declare-fun bs!1115095 () Bool)

(assert (= bs!1115095 (and b!4724400 d!1504736)))

(assert (=> bs!1115095 (= (= lt!1889044 lt!1889297) (= lambda!215935 lambda!215923))))

(assert (=> bs!1115088 (= (= lt!1889044 lt!1889307) (= lambda!215935 lambda!215922))))

(assert (=> b!4724400 true))

(declare-fun lambda!215936 () Int)

(declare-fun lt!1889398 () ListMap!5285)

(assert (=> bs!1115087 (= (= lt!1889398 lt!1889044) (= lambda!215936 lambda!215930))))

(assert (=> bs!1115088 (= (= lt!1889398 lt!1889044) (= lambda!215936 lambda!215920))))

(assert (=> bs!1115089 (= (= lt!1889398 lt!1889351) (= lambda!215936 lambda!215933))))

(assert (=> bs!1115090 (= (= lt!1889398 lt!1889044) (= lambda!215936 lambda!215934))))

(assert (=> bs!1115091 (= (= lt!1889398 lt!1889361) (= lambda!215936 lambda!215932))))

(assert (=> bs!1115092 (= (= lt!1889398 lt!1889044) (= lambda!215936 lambda!215918))))

(assert (=> bs!1115093 (not (= lambda!215936 lambda!215834))))

(assert (=> bs!1115091 (= (= lt!1889398 lt!1889044) (= lambda!215936 lambda!215931))))

(assert (=> bs!1115095 (= (= lt!1889398 lt!1889297) (= lambda!215936 lambda!215923))))

(assert (=> bs!1115088 (= (= lt!1889398 lt!1889307) (= lambda!215936 lambda!215922))))

(assert (=> b!4724400 (= (= lt!1889398 lt!1889044) (= lambda!215936 lambda!215935))))

(assert (=> bs!1115094 (not (= lambda!215936 lambda!215835))))

(assert (=> b!4724400 true))

(declare-fun bs!1115096 () Bool)

(declare-fun d!1504820 () Bool)

(assert (= bs!1115096 (and d!1504820 b!4724389)))

(declare-fun lambda!215937 () Int)

(declare-fun lt!1889388 () ListMap!5285)

(assert (=> bs!1115096 (= (= lt!1889388 lt!1889044) (= lambda!215937 lambda!215930))))

(declare-fun bs!1115097 () Bool)

(assert (= bs!1115097 (and d!1504820 b!4724318)))

(assert (=> bs!1115097 (= (= lt!1889388 lt!1889044) (= lambda!215937 lambda!215920))))

(declare-fun bs!1115098 () Bool)

(assert (= bs!1115098 (and d!1504820 d!1504812)))

(assert (=> bs!1115098 (= (= lt!1889388 lt!1889351) (= lambda!215937 lambda!215933))))

(declare-fun bs!1115099 () Bool)

(assert (= bs!1115099 (and d!1504820 b!4724402)))

(assert (=> bs!1115099 (= (= lt!1889388 lt!1889044) (= lambda!215937 lambda!215934))))

(declare-fun bs!1115100 () Bool)

(assert (= bs!1115100 (and d!1504820 b!4724387)))

(assert (=> bs!1115100 (= (= lt!1889388 lt!1889361) (= lambda!215937 lambda!215932))))

(declare-fun bs!1115101 () Bool)

(assert (= bs!1115101 (and d!1504820 d!1504728)))

(assert (=> bs!1115101 (not (= lambda!215937 lambda!215834))))

(assert (=> bs!1115100 (= (= lt!1889388 lt!1889044) (= lambda!215937 lambda!215931))))

(declare-fun bs!1115102 () Bool)

(assert (= bs!1115102 (and d!1504820 b!4724320)))

(assert (=> bs!1115102 (= (= lt!1889388 lt!1889044) (= lambda!215937 lambda!215918))))

(declare-fun bs!1115103 () Bool)

(assert (= bs!1115103 (and d!1504820 b!4724400)))

(assert (=> bs!1115103 (= (= lt!1889388 lt!1889398) (= lambda!215937 lambda!215936))))

(declare-fun bs!1115104 () Bool)

(assert (= bs!1115104 (and d!1504820 d!1504736)))

(assert (=> bs!1115104 (= (= lt!1889388 lt!1889297) (= lambda!215937 lambda!215923))))

(assert (=> bs!1115097 (= (= lt!1889388 lt!1889307) (= lambda!215937 lambda!215922))))

(assert (=> bs!1115103 (= (= lt!1889388 lt!1889044) (= lambda!215937 lambda!215935))))

(declare-fun bs!1115105 () Bool)

(assert (= bs!1115105 (and d!1504820 d!1504730)))

(assert (=> bs!1115105 (not (= lambda!215937 lambda!215835))))

(assert (=> d!1504820 true))

(declare-fun bm!330495 () Bool)

(declare-fun call!330500 () Unit!130501)

(assert (=> bm!330495 (= call!330500 (lemmaContainsAllItsOwnKeys!799 lt!1889044))))

(declare-fun b!4724399 () Bool)

(declare-fun e!2946514 () Bool)

(assert (=> b!4724399 (= e!2946514 (forall!11596 (toList!5921 lt!1889044) lambda!215936))))

(declare-fun b!4724401 () Bool)

(declare-fun e!2946515 () Bool)

(assert (=> b!4724401 (= e!2946515 (invariantList!1513 (toList!5921 lt!1889388)))))

(declare-fun e!2946516 () ListMap!5285)

(assert (=> b!4724402 (= e!2946516 lt!1889044)))

(declare-fun lt!1889391 () Unit!130501)

(assert (=> b!4724402 (= lt!1889391 call!330500)))

(declare-fun call!330502 () Bool)

(assert (=> b!4724402 call!330502))

(declare-fun lt!1889405 () Unit!130501)

(assert (=> b!4724402 (= lt!1889405 lt!1889391)))

(declare-fun call!330501 () Bool)

(assert (=> b!4724402 call!330501))

(declare-fun lt!1889404 () Unit!130501)

(declare-fun Unit!130582 () Unit!130501)

(assert (=> b!4724402 (= lt!1889404 Unit!130582)))

(declare-fun b!4724403 () Bool)

(declare-fun res!1999040 () Bool)

(assert (=> b!4724403 (=> (not res!1999040) (not e!2946515))))

(assert (=> b!4724403 (= res!1999040 (forall!11596 (toList!5921 lt!1889044) lambda!215937))))

(declare-fun bm!330496 () Bool)

(declare-fun lt!1889403 () ListMap!5285)

(declare-fun c!806857 () Bool)

(assert (=> bm!330496 (= call!330502 (forall!11596 (ite c!806857 (toList!5921 lt!1889044) (toList!5921 lt!1889403)) (ite c!806857 lambda!215934 lambda!215936)))))

(declare-fun bm!330497 () Bool)

(assert (=> bm!330497 (= call!330501 (forall!11596 (toList!5921 lt!1889044) (ite c!806857 lambda!215934 lambda!215935)))))

(assert (=> d!1504820 e!2946515))

(declare-fun res!1999042 () Bool)

(assert (=> d!1504820 (=> (not res!1999042) (not e!2946515))))

(assert (=> d!1504820 (= res!1999042 (forall!11596 oldBucket!34 lambda!215937))))

(assert (=> d!1504820 (= lt!1889388 e!2946516)))

(assert (=> d!1504820 (= c!806857 ((_ is Nil!52836) oldBucket!34))))

(assert (=> d!1504820 (noDuplicateKeys!2016 oldBucket!34)))

(assert (=> d!1504820 (= (addToMapMapFromBucket!1446 oldBucket!34 lt!1889044) lt!1889388)))

(assert (=> b!4724400 (= e!2946516 lt!1889398)))

(assert (=> b!4724400 (= lt!1889403 (+!2271 lt!1889044 (h!59185 oldBucket!34)))))

(assert (=> b!4724400 (= lt!1889398 (addToMapMapFromBucket!1446 (t!360230 oldBucket!34) (+!2271 lt!1889044 (h!59185 oldBucket!34))))))

(declare-fun lt!1889407 () Unit!130501)

(assert (=> b!4724400 (= lt!1889407 call!330500)))

(assert (=> b!4724400 call!330501))

(declare-fun lt!1889406 () Unit!130501)

(assert (=> b!4724400 (= lt!1889406 lt!1889407)))

(assert (=> b!4724400 call!330502))

(declare-fun lt!1889393 () Unit!130501)

(declare-fun Unit!130584 () Unit!130501)

(assert (=> b!4724400 (= lt!1889393 Unit!130584)))

(assert (=> b!4724400 (forall!11596 (t!360230 oldBucket!34) lambda!215936)))

(declare-fun lt!1889399 () Unit!130501)

(declare-fun Unit!130585 () Unit!130501)

(assert (=> b!4724400 (= lt!1889399 Unit!130585)))

(declare-fun lt!1889394 () Unit!130501)

(declare-fun Unit!130586 () Unit!130501)

(assert (=> b!4724400 (= lt!1889394 Unit!130586)))

(declare-fun lt!1889397 () Unit!130501)

(assert (=> b!4724400 (= lt!1889397 (forallContained!3643 (toList!5921 lt!1889403) lambda!215936 (h!59185 oldBucket!34)))))

(assert (=> b!4724400 (contains!16183 lt!1889403 (_1!30523 (h!59185 oldBucket!34)))))

(declare-fun lt!1889396 () Unit!130501)

(declare-fun Unit!130587 () Unit!130501)

(assert (=> b!4724400 (= lt!1889396 Unit!130587)))

(assert (=> b!4724400 (contains!16183 lt!1889398 (_1!30523 (h!59185 oldBucket!34)))))

(declare-fun lt!1889389 () Unit!130501)

(declare-fun Unit!130589 () Unit!130501)

(assert (=> b!4724400 (= lt!1889389 Unit!130589)))

(assert (=> b!4724400 (forall!11596 oldBucket!34 lambda!215936)))

(declare-fun lt!1889390 () Unit!130501)

(declare-fun Unit!130590 () Unit!130501)

(assert (=> b!4724400 (= lt!1889390 Unit!130590)))

(assert (=> b!4724400 (forall!11596 (toList!5921 lt!1889403) lambda!215936)))

(declare-fun lt!1889401 () Unit!130501)

(declare-fun Unit!130591 () Unit!130501)

(assert (=> b!4724400 (= lt!1889401 Unit!130591)))

(declare-fun lt!1889395 () Unit!130501)

(declare-fun Unit!130592 () Unit!130501)

(assert (=> b!4724400 (= lt!1889395 Unit!130592)))

(declare-fun lt!1889402 () Unit!130501)

(assert (=> b!4724400 (= lt!1889402 (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889398 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))))

(assert (=> b!4724400 (forall!11596 (toList!5921 lt!1889044) lambda!215936)))

(declare-fun lt!1889392 () Unit!130501)

(assert (=> b!4724400 (= lt!1889392 lt!1889402)))

(assert (=> b!4724400 (forall!11596 (toList!5921 lt!1889044) lambda!215936)))

(declare-fun lt!1889408 () Unit!130501)

(declare-fun Unit!130593 () Unit!130501)

(assert (=> b!4724400 (= lt!1889408 Unit!130593)))

(declare-fun res!1999041 () Bool)

(assert (=> b!4724400 (= res!1999041 (forall!11596 oldBucket!34 lambda!215936))))

(assert (=> b!4724400 (=> (not res!1999041) (not e!2946514))))

(assert (=> b!4724400 e!2946514))

(declare-fun lt!1889400 () Unit!130501)

(declare-fun Unit!130594 () Unit!130501)

(assert (=> b!4724400 (= lt!1889400 Unit!130594)))

(assert (= (and d!1504820 c!806857) b!4724402))

(assert (= (and d!1504820 (not c!806857)) b!4724400))

(assert (= (and b!4724400 res!1999041) b!4724399))

(assert (= (or b!4724402 b!4724400) bm!330495))

(assert (= (or b!4724402 b!4724400) bm!330497))

(assert (= (or b!4724402 b!4724400) bm!330496))

(assert (= (and d!1504820 res!1999042) b!4724403))

(assert (= (and b!4724403 res!1999040) b!4724401))

(declare-fun m!5662177 () Bool)

(assert (=> b!4724401 m!5662177))

(assert (=> bm!330495 m!5662001))

(declare-fun m!5662179 () Bool)

(assert (=> b!4724403 m!5662179))

(declare-fun m!5662181 () Bool)

(assert (=> d!1504820 m!5662181))

(assert (=> d!1504820 m!5661647))

(declare-fun m!5662183 () Bool)

(assert (=> b!4724400 m!5662183))

(declare-fun m!5662185 () Bool)

(assert (=> b!4724400 m!5662185))

(declare-fun m!5662187 () Bool)

(assert (=> b!4724400 m!5662187))

(declare-fun m!5662189 () Bool)

(assert (=> b!4724400 m!5662189))

(declare-fun m!5662191 () Bool)

(assert (=> b!4724400 m!5662191))

(assert (=> b!4724400 m!5662183))

(assert (=> b!4724400 m!5662185))

(declare-fun m!5662193 () Bool)

(assert (=> b!4724400 m!5662193))

(declare-fun m!5662195 () Bool)

(assert (=> b!4724400 m!5662195))

(declare-fun m!5662197 () Bool)

(assert (=> b!4724400 m!5662197))

(declare-fun m!5662199 () Bool)

(assert (=> b!4724400 m!5662199))

(declare-fun m!5662201 () Bool)

(assert (=> b!4724400 m!5662201))

(assert (=> b!4724400 m!5662193))

(declare-fun m!5662203 () Bool)

(assert (=> bm!330496 m!5662203))

(assert (=> b!4724399 m!5662193))

(declare-fun m!5662205 () Bool)

(assert (=> bm!330497 m!5662205))

(assert (=> b!4724149 d!1504820))

(declare-fun b!4724422 () Bool)

(declare-fun e!2946531 () Bool)

(declare-fun e!2946532 () Bool)

(assert (=> b!4724422 (= e!2946531 e!2946532)))

(declare-fun res!1999050 () Bool)

(assert (=> b!4724422 (=> (not res!1999050) (not e!2946532))))

(declare-fun isDefined!9619 (Option!12365) Bool)

(assert (=> b!4724422 (= res!1999050 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889046) key!4653)))))

(declare-fun bm!330500 () Bool)

(declare-fun call!330505 () Bool)

(declare-datatypes ((List!52963 0))(
  ( (Nil!52839) (Cons!52839 (h!59190 K!14190) (t!360235 List!52963)) )
))
(declare-fun e!2946534 () List!52963)

(declare-fun contains!16188 (List!52963 K!14190) Bool)

(assert (=> bm!330500 (= call!330505 (contains!16188 e!2946534 key!4653))))

(declare-fun c!806865 () Bool)

(declare-fun c!806864 () Bool)

(assert (=> bm!330500 (= c!806865 c!806864)))

(declare-fun d!1504822 () Bool)

(assert (=> d!1504822 e!2946531))

(declare-fun res!1999051 () Bool)

(assert (=> d!1504822 (=> res!1999051 e!2946531)))

(declare-fun e!2946529 () Bool)

(assert (=> d!1504822 (= res!1999051 e!2946529)))

(declare-fun res!1999049 () Bool)

(assert (=> d!1504822 (=> (not res!1999049) (not e!2946529))))

(declare-fun lt!1889428 () Bool)

(assert (=> d!1504822 (= res!1999049 (not lt!1889428))))

(declare-fun lt!1889430 () Bool)

(assert (=> d!1504822 (= lt!1889428 lt!1889430)))

(declare-fun lt!1889427 () Unit!130501)

(declare-fun e!2946530 () Unit!130501)

(assert (=> d!1504822 (= lt!1889427 e!2946530)))

(assert (=> d!1504822 (= c!806864 lt!1889430)))

(declare-fun containsKey!3379 (List!52960 K!14190) Bool)

(assert (=> d!1504822 (= lt!1889430 (containsKey!3379 (toList!5921 lt!1889046) key!4653))))

(assert (=> d!1504822 (= (contains!16183 lt!1889046 key!4653) lt!1889428)))

(declare-fun b!4724423 () Bool)

(declare-fun keys!18978 (ListMap!5285) List!52963)

(assert (=> b!4724423 (= e!2946534 (keys!18978 lt!1889046))))

(declare-fun b!4724424 () Bool)

(declare-fun getKeysList!953 (List!52960) List!52963)

(assert (=> b!4724424 (= e!2946534 (getKeysList!953 (toList!5921 lt!1889046)))))

(declare-fun b!4724425 () Bool)

(declare-fun lt!1889432 () Unit!130501)

(assert (=> b!4724425 (= e!2946530 lt!1889432)))

(declare-fun lt!1889431 () Unit!130501)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (List!52960 K!14190) Unit!130501)

(assert (=> b!4724425 (= lt!1889431 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889046) key!4653))))

(assert (=> b!4724425 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889046) key!4653))))

(declare-fun lt!1889429 () Unit!130501)

(assert (=> b!4724425 (= lt!1889429 lt!1889431)))

(declare-fun lemmaInListThenGetKeysListContains!948 (List!52960 K!14190) Unit!130501)

(assert (=> b!4724425 (= lt!1889432 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889046) key!4653))))

(assert (=> b!4724425 call!330505))

(declare-fun b!4724426 () Bool)

(assert (=> b!4724426 (= e!2946529 (not (contains!16188 (keys!18978 lt!1889046) key!4653)))))

(declare-fun b!4724427 () Bool)

(assert (=> b!4724427 false))

(declare-fun lt!1889426 () Unit!130501)

(declare-fun lt!1889425 () Unit!130501)

(assert (=> b!4724427 (= lt!1889426 lt!1889425)))

(assert (=> b!4724427 (containsKey!3379 (toList!5921 lt!1889046) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!952 (List!52960 K!14190) Unit!130501)

(assert (=> b!4724427 (= lt!1889425 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889046) key!4653))))

(declare-fun e!2946533 () Unit!130501)

(declare-fun Unit!130595 () Unit!130501)

(assert (=> b!4724427 (= e!2946533 Unit!130595)))

(declare-fun b!4724428 () Bool)

(assert (=> b!4724428 (= e!2946530 e!2946533)))

(declare-fun c!806866 () Bool)

(assert (=> b!4724428 (= c!806866 call!330505)))

(declare-fun b!4724429 () Bool)

(assert (=> b!4724429 (= e!2946532 (contains!16188 (keys!18978 lt!1889046) key!4653))))

(declare-fun b!4724430 () Bool)

(declare-fun Unit!130596 () Unit!130501)

(assert (=> b!4724430 (= e!2946533 Unit!130596)))

(assert (= (and d!1504822 c!806864) b!4724425))

(assert (= (and d!1504822 (not c!806864)) b!4724428))

(assert (= (and b!4724428 c!806866) b!4724427))

(assert (= (and b!4724428 (not c!806866)) b!4724430))

(assert (= (or b!4724425 b!4724428) bm!330500))

(assert (= (and bm!330500 c!806865) b!4724424))

(assert (= (and bm!330500 (not c!806865)) b!4724423))

(assert (= (and d!1504822 res!1999049) b!4724426))

(assert (= (and d!1504822 (not res!1999051)) b!4724422))

(assert (= (and b!4724422 res!1999050) b!4724429))

(declare-fun m!5662207 () Bool)

(assert (=> b!4724423 m!5662207))

(assert (=> b!4724429 m!5662207))

(assert (=> b!4724429 m!5662207))

(declare-fun m!5662209 () Bool)

(assert (=> b!4724429 m!5662209))

(declare-fun m!5662211 () Bool)

(assert (=> b!4724422 m!5662211))

(assert (=> b!4724422 m!5662211))

(declare-fun m!5662213 () Bool)

(assert (=> b!4724422 m!5662213))

(declare-fun m!5662215 () Bool)

(assert (=> b!4724424 m!5662215))

(declare-fun m!5662217 () Bool)

(assert (=> d!1504822 m!5662217))

(declare-fun m!5662219 () Bool)

(assert (=> b!4724425 m!5662219))

(assert (=> b!4724425 m!5662211))

(assert (=> b!4724425 m!5662211))

(assert (=> b!4724425 m!5662213))

(declare-fun m!5662221 () Bool)

(assert (=> b!4724425 m!5662221))

(assert (=> b!4724426 m!5662207))

(assert (=> b!4724426 m!5662207))

(assert (=> b!4724426 m!5662209))

(declare-fun m!5662223 () Bool)

(assert (=> bm!330500 m!5662223))

(assert (=> b!4724427 m!5662217))

(declare-fun m!5662225 () Bool)

(assert (=> b!4724427 m!5662225))

(assert (=> b!4724161 d!1504822))

(declare-fun bs!1115106 () Bool)

(declare-fun d!1504824 () Bool)

(assert (= bs!1115106 (and d!1504824 d!1504734)))

(declare-fun lambda!215938 () Int)

(assert (=> bs!1115106 (not (= lambda!215938 lambda!215836))))

(declare-fun bs!1115107 () Bool)

(assert (= bs!1115107 (and d!1504824 d!1504696)))

(assert (=> bs!1115107 (not (= lambda!215938 lambda!215825))))

(declare-fun bs!1115108 () Bool)

(assert (= bs!1115108 (and d!1504824 start!480916)))

(assert (=> bs!1115108 (= lambda!215938 lambda!215822)))

(declare-fun bs!1115109 () Bool)

(assert (= bs!1115109 (and d!1504824 d!1504778)))

(assert (=> bs!1115109 (= lambda!215938 lambda!215926)))

(declare-fun bs!1115110 () Bool)

(assert (= bs!1115110 (and d!1504824 d!1504786)))

(assert (=> bs!1115110 (= lambda!215938 lambda!215928)))

(declare-fun bs!1115111 () Bool)

(assert (= bs!1115111 (and d!1504824 d!1504784)))

(assert (=> bs!1115111 (= lambda!215938 lambda!215927)))

(declare-fun lt!1889433 () ListMap!5285)

(assert (=> d!1504824 (invariantList!1513 (toList!5921 lt!1889433))))

(declare-fun e!2946535 () ListMap!5285)

(assert (=> d!1504824 (= lt!1889433 e!2946535)))

(declare-fun c!806867 () Bool)

(assert (=> d!1504824 (= c!806867 ((_ is Cons!52837) (toList!5922 lm!2023)))))

(assert (=> d!1504824 (forall!11594 (toList!5922 lm!2023) lambda!215938)))

(assert (=> d!1504824 (= (extractMap!2042 (toList!5922 lm!2023)) lt!1889433)))

(declare-fun b!4724431 () Bool)

(assert (=> b!4724431 (= e!2946535 (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))))))

(declare-fun b!4724432 () Bool)

(assert (=> b!4724432 (= e!2946535 (ListMap!5286 Nil!52836))))

(assert (= (and d!1504824 c!806867) b!4724431))

(assert (= (and d!1504824 (not c!806867)) b!4724432))

(declare-fun m!5662227 () Bool)

(assert (=> d!1504824 m!5662227))

(declare-fun m!5662229 () Bool)

(assert (=> d!1504824 m!5662229))

(assert (=> b!4724431 m!5661703))

(assert (=> b!4724431 m!5661703))

(declare-fun m!5662231 () Bool)

(assert (=> b!4724431 m!5662231))

(assert (=> b!4724161 d!1504824))

(declare-fun bs!1115112 () Bool)

(declare-fun b!4724436 () Bool)

(assert (= bs!1115112 (and b!4724436 b!4724389)))

(declare-fun lambda!215939 () Int)

(assert (=> bs!1115112 (= lambda!215939 lambda!215930)))

(declare-fun bs!1115113 () Bool)

(assert (= bs!1115113 (and b!4724436 b!4724318)))

(assert (=> bs!1115113 (= lambda!215939 lambda!215920)))

(declare-fun bs!1115114 () Bool)

(assert (= bs!1115114 (and b!4724436 d!1504812)))

(assert (=> bs!1115114 (= (= lt!1889044 lt!1889351) (= lambda!215939 lambda!215933))))

(declare-fun bs!1115115 () Bool)

(assert (= bs!1115115 (and b!4724436 b!4724402)))

(assert (=> bs!1115115 (= lambda!215939 lambda!215934)))

(declare-fun bs!1115116 () Bool)

(assert (= bs!1115116 (and b!4724436 b!4724387)))

(assert (=> bs!1115116 (= (= lt!1889044 lt!1889361) (= lambda!215939 lambda!215932))))

(declare-fun bs!1115117 () Bool)

(assert (= bs!1115117 (and b!4724436 d!1504820)))

(assert (=> bs!1115117 (= (= lt!1889044 lt!1889388) (= lambda!215939 lambda!215937))))

(declare-fun bs!1115118 () Bool)

(assert (= bs!1115118 (and b!4724436 d!1504728)))

(assert (=> bs!1115118 (not (= lambda!215939 lambda!215834))))

(assert (=> bs!1115116 (= lambda!215939 lambda!215931)))

(declare-fun bs!1115119 () Bool)

(assert (= bs!1115119 (and b!4724436 b!4724320)))

(assert (=> bs!1115119 (= lambda!215939 lambda!215918)))

(declare-fun bs!1115120 () Bool)

(assert (= bs!1115120 (and b!4724436 b!4724400)))

(assert (=> bs!1115120 (= (= lt!1889044 lt!1889398) (= lambda!215939 lambda!215936))))

(declare-fun bs!1115121 () Bool)

(assert (= bs!1115121 (and b!4724436 d!1504736)))

(assert (=> bs!1115121 (= (= lt!1889044 lt!1889297) (= lambda!215939 lambda!215923))))

(assert (=> bs!1115113 (= (= lt!1889044 lt!1889307) (= lambda!215939 lambda!215922))))

(assert (=> bs!1115120 (= lambda!215939 lambda!215935)))

(declare-fun bs!1115122 () Bool)

(assert (= bs!1115122 (and b!4724436 d!1504730)))

(assert (=> bs!1115122 (not (= lambda!215939 lambda!215835))))

(assert (=> b!4724436 true))

(declare-fun bs!1115123 () Bool)

(declare-fun b!4724434 () Bool)

(assert (= bs!1115123 (and b!4724434 b!4724389)))

(declare-fun lambda!215940 () Int)

(assert (=> bs!1115123 (= lambda!215940 lambda!215930)))

(declare-fun bs!1115124 () Bool)

(assert (= bs!1115124 (and b!4724434 b!4724318)))

(assert (=> bs!1115124 (= lambda!215940 lambda!215920)))

(declare-fun bs!1115125 () Bool)

(assert (= bs!1115125 (and b!4724434 d!1504812)))

(assert (=> bs!1115125 (= (= lt!1889044 lt!1889351) (= lambda!215940 lambda!215933))))

(declare-fun bs!1115126 () Bool)

(assert (= bs!1115126 (and b!4724434 b!4724402)))

(assert (=> bs!1115126 (= lambda!215940 lambda!215934)))

(declare-fun bs!1115127 () Bool)

(assert (= bs!1115127 (and b!4724434 b!4724387)))

(assert (=> bs!1115127 (= (= lt!1889044 lt!1889361) (= lambda!215940 lambda!215932))))

(declare-fun bs!1115128 () Bool)

(assert (= bs!1115128 (and b!4724434 d!1504728)))

(assert (=> bs!1115128 (not (= lambda!215940 lambda!215834))))

(assert (=> bs!1115127 (= lambda!215940 lambda!215931)))

(declare-fun bs!1115129 () Bool)

(assert (= bs!1115129 (and b!4724434 b!4724436)))

(assert (=> bs!1115129 (= lambda!215940 lambda!215939)))

(declare-fun bs!1115130 () Bool)

(assert (= bs!1115130 (and b!4724434 d!1504820)))

(assert (=> bs!1115130 (= (= lt!1889044 lt!1889388) (= lambda!215940 lambda!215937))))

(declare-fun bs!1115131 () Bool)

(assert (= bs!1115131 (and b!4724434 b!4724320)))

(assert (=> bs!1115131 (= lambda!215940 lambda!215918)))

(declare-fun bs!1115132 () Bool)

(assert (= bs!1115132 (and b!4724434 b!4724400)))

(assert (=> bs!1115132 (= (= lt!1889044 lt!1889398) (= lambda!215940 lambda!215936))))

(declare-fun bs!1115133 () Bool)

(assert (= bs!1115133 (and b!4724434 d!1504736)))

(assert (=> bs!1115133 (= (= lt!1889044 lt!1889297) (= lambda!215940 lambda!215923))))

(assert (=> bs!1115124 (= (= lt!1889044 lt!1889307) (= lambda!215940 lambda!215922))))

(assert (=> bs!1115132 (= lambda!215940 lambda!215935)))

(declare-fun bs!1115134 () Bool)

(assert (= bs!1115134 (and b!4724434 d!1504730)))

(assert (=> bs!1115134 (not (= lambda!215940 lambda!215835))))

(assert (=> b!4724434 true))

(declare-fun lambda!215941 () Int)

(declare-fun lt!1889444 () ListMap!5285)

(assert (=> bs!1115123 (= (= lt!1889444 lt!1889044) (= lambda!215941 lambda!215930))))

(assert (=> bs!1115124 (= (= lt!1889444 lt!1889044) (= lambda!215941 lambda!215920))))

(assert (=> b!4724434 (= (= lt!1889444 lt!1889044) (= lambda!215941 lambda!215940))))

(assert (=> bs!1115125 (= (= lt!1889444 lt!1889351) (= lambda!215941 lambda!215933))))

(assert (=> bs!1115126 (= (= lt!1889444 lt!1889044) (= lambda!215941 lambda!215934))))

(assert (=> bs!1115127 (= (= lt!1889444 lt!1889361) (= lambda!215941 lambda!215932))))

(assert (=> bs!1115128 (not (= lambda!215941 lambda!215834))))

(assert (=> bs!1115127 (= (= lt!1889444 lt!1889044) (= lambda!215941 lambda!215931))))

(assert (=> bs!1115129 (= (= lt!1889444 lt!1889044) (= lambda!215941 lambda!215939))))

(assert (=> bs!1115130 (= (= lt!1889444 lt!1889388) (= lambda!215941 lambda!215937))))

(assert (=> bs!1115131 (= (= lt!1889444 lt!1889044) (= lambda!215941 lambda!215918))))

(assert (=> bs!1115132 (= (= lt!1889444 lt!1889398) (= lambda!215941 lambda!215936))))

(assert (=> bs!1115133 (= (= lt!1889444 lt!1889297) (= lambda!215941 lambda!215923))))

(assert (=> bs!1115124 (= (= lt!1889444 lt!1889307) (= lambda!215941 lambda!215922))))

(assert (=> bs!1115132 (= (= lt!1889444 lt!1889044) (= lambda!215941 lambda!215935))))

(assert (=> bs!1115134 (not (= lambda!215941 lambda!215835))))

(assert (=> b!4724434 true))

(declare-fun bs!1115135 () Bool)

(declare-fun d!1504826 () Bool)

(assert (= bs!1115135 (and d!1504826 b!4724389)))

(declare-fun lambda!215942 () Int)

(declare-fun lt!1889434 () ListMap!5285)

(assert (=> bs!1115135 (= (= lt!1889434 lt!1889044) (= lambda!215942 lambda!215930))))

(declare-fun bs!1115136 () Bool)

(assert (= bs!1115136 (and d!1504826 b!4724318)))

(assert (=> bs!1115136 (= (= lt!1889434 lt!1889044) (= lambda!215942 lambda!215920))))

(declare-fun bs!1115137 () Bool)

(assert (= bs!1115137 (and d!1504826 b!4724434)))

(assert (=> bs!1115137 (= (= lt!1889434 lt!1889044) (= lambda!215942 lambda!215940))))

(declare-fun bs!1115138 () Bool)

(assert (= bs!1115138 (and d!1504826 d!1504812)))

(assert (=> bs!1115138 (= (= lt!1889434 lt!1889351) (= lambda!215942 lambda!215933))))

(declare-fun bs!1115139 () Bool)

(assert (= bs!1115139 (and d!1504826 b!4724402)))

(assert (=> bs!1115139 (= (= lt!1889434 lt!1889044) (= lambda!215942 lambda!215934))))

(declare-fun bs!1115140 () Bool)

(assert (= bs!1115140 (and d!1504826 b!4724387)))

(assert (=> bs!1115140 (= (= lt!1889434 lt!1889361) (= lambda!215942 lambda!215932))))

(assert (=> bs!1115137 (= (= lt!1889434 lt!1889444) (= lambda!215942 lambda!215941))))

(declare-fun bs!1115141 () Bool)

(assert (= bs!1115141 (and d!1504826 d!1504728)))

(assert (=> bs!1115141 (not (= lambda!215942 lambda!215834))))

(assert (=> bs!1115140 (= (= lt!1889434 lt!1889044) (= lambda!215942 lambda!215931))))

(declare-fun bs!1115142 () Bool)

(assert (= bs!1115142 (and d!1504826 b!4724436)))

(assert (=> bs!1115142 (= (= lt!1889434 lt!1889044) (= lambda!215942 lambda!215939))))

(declare-fun bs!1115143 () Bool)

(assert (= bs!1115143 (and d!1504826 d!1504820)))

(assert (=> bs!1115143 (= (= lt!1889434 lt!1889388) (= lambda!215942 lambda!215937))))

(declare-fun bs!1115144 () Bool)

(assert (= bs!1115144 (and d!1504826 b!4724320)))

(assert (=> bs!1115144 (= (= lt!1889434 lt!1889044) (= lambda!215942 lambda!215918))))

(declare-fun bs!1115145 () Bool)

(assert (= bs!1115145 (and d!1504826 b!4724400)))

(assert (=> bs!1115145 (= (= lt!1889434 lt!1889398) (= lambda!215942 lambda!215936))))

(declare-fun bs!1115146 () Bool)

(assert (= bs!1115146 (and d!1504826 d!1504736)))

(assert (=> bs!1115146 (= (= lt!1889434 lt!1889297) (= lambda!215942 lambda!215923))))

(assert (=> bs!1115136 (= (= lt!1889434 lt!1889307) (= lambda!215942 lambda!215922))))

(assert (=> bs!1115145 (= (= lt!1889434 lt!1889044) (= lambda!215942 lambda!215935))))

(declare-fun bs!1115147 () Bool)

(assert (= bs!1115147 (and d!1504826 d!1504730)))

(assert (=> bs!1115147 (not (= lambda!215942 lambda!215835))))

(assert (=> d!1504826 true))

(declare-fun bm!330501 () Bool)

(declare-fun call!330506 () Unit!130501)

(assert (=> bm!330501 (= call!330506 (lemmaContainsAllItsOwnKeys!799 lt!1889044))))

(declare-fun b!4724433 () Bool)

(declare-fun e!2946536 () Bool)

(assert (=> b!4724433 (= e!2946536 (forall!11596 (toList!5921 lt!1889044) lambda!215941))))

(declare-fun b!4724435 () Bool)

(declare-fun e!2946537 () Bool)

(assert (=> b!4724435 (= e!2946537 (invariantList!1513 (toList!5921 lt!1889434)))))

(declare-fun e!2946538 () ListMap!5285)

(assert (=> b!4724436 (= e!2946538 lt!1889044)))

(declare-fun lt!1889437 () Unit!130501)

(assert (=> b!4724436 (= lt!1889437 call!330506)))

(declare-fun call!330508 () Bool)

(assert (=> b!4724436 call!330508))

(declare-fun lt!1889451 () Unit!130501)

(assert (=> b!4724436 (= lt!1889451 lt!1889437)))

(declare-fun call!330507 () Bool)

(assert (=> b!4724436 call!330507))

(declare-fun lt!1889450 () Unit!130501)

(declare-fun Unit!130597 () Unit!130501)

(assert (=> b!4724436 (= lt!1889450 Unit!130597)))

(declare-fun b!4724437 () Bool)

(declare-fun res!1999052 () Bool)

(assert (=> b!4724437 (=> (not res!1999052) (not e!2946537))))

(assert (=> b!4724437 (= res!1999052 (forall!11596 (toList!5921 lt!1889044) lambda!215942))))

(declare-fun bm!330502 () Bool)

(declare-fun lt!1889449 () ListMap!5285)

(declare-fun c!806868 () Bool)

(assert (=> bm!330502 (= call!330508 (forall!11596 (ite c!806868 (toList!5921 lt!1889044) (toList!5921 lt!1889449)) (ite c!806868 lambda!215939 lambda!215941)))))

(declare-fun bm!330503 () Bool)

(assert (=> bm!330503 (= call!330507 (forall!11596 (toList!5921 lt!1889044) (ite c!806868 lambda!215939 lambda!215940)))))

(assert (=> d!1504826 e!2946537))

(declare-fun res!1999054 () Bool)

(assert (=> d!1504826 (=> (not res!1999054) (not e!2946537))))

(assert (=> d!1504826 (= res!1999054 (forall!11596 newBucket!218 lambda!215942))))

(assert (=> d!1504826 (= lt!1889434 e!2946538)))

(assert (=> d!1504826 (= c!806868 ((_ is Nil!52836) newBucket!218))))

(assert (=> d!1504826 (noDuplicateKeys!2016 newBucket!218)))

(assert (=> d!1504826 (= (addToMapMapFromBucket!1446 newBucket!218 lt!1889044) lt!1889434)))

(assert (=> b!4724434 (= e!2946538 lt!1889444)))

(assert (=> b!4724434 (= lt!1889449 (+!2271 lt!1889044 (h!59185 newBucket!218)))))

(assert (=> b!4724434 (= lt!1889444 (addToMapMapFromBucket!1446 (t!360230 newBucket!218) (+!2271 lt!1889044 (h!59185 newBucket!218))))))

(declare-fun lt!1889453 () Unit!130501)

(assert (=> b!4724434 (= lt!1889453 call!330506)))

(assert (=> b!4724434 call!330507))

(declare-fun lt!1889452 () Unit!130501)

(assert (=> b!4724434 (= lt!1889452 lt!1889453)))

(assert (=> b!4724434 call!330508))

(declare-fun lt!1889439 () Unit!130501)

(declare-fun Unit!130598 () Unit!130501)

(assert (=> b!4724434 (= lt!1889439 Unit!130598)))

(assert (=> b!4724434 (forall!11596 (t!360230 newBucket!218) lambda!215941)))

(declare-fun lt!1889445 () Unit!130501)

(declare-fun Unit!130599 () Unit!130501)

(assert (=> b!4724434 (= lt!1889445 Unit!130599)))

(declare-fun lt!1889440 () Unit!130501)

(declare-fun Unit!130600 () Unit!130501)

(assert (=> b!4724434 (= lt!1889440 Unit!130600)))

(declare-fun lt!1889443 () Unit!130501)

(assert (=> b!4724434 (= lt!1889443 (forallContained!3643 (toList!5921 lt!1889449) lambda!215941 (h!59185 newBucket!218)))))

(assert (=> b!4724434 (contains!16183 lt!1889449 (_1!30523 (h!59185 newBucket!218)))))

(declare-fun lt!1889442 () Unit!130501)

(declare-fun Unit!130601 () Unit!130501)

(assert (=> b!4724434 (= lt!1889442 Unit!130601)))

(assert (=> b!4724434 (contains!16183 lt!1889444 (_1!30523 (h!59185 newBucket!218)))))

(declare-fun lt!1889435 () Unit!130501)

(declare-fun Unit!130602 () Unit!130501)

(assert (=> b!4724434 (= lt!1889435 Unit!130602)))

(assert (=> b!4724434 (forall!11596 newBucket!218 lambda!215941)))

(declare-fun lt!1889436 () Unit!130501)

(declare-fun Unit!130603 () Unit!130501)

(assert (=> b!4724434 (= lt!1889436 Unit!130603)))

(assert (=> b!4724434 (forall!11596 (toList!5921 lt!1889449) lambda!215941)))

(declare-fun lt!1889447 () Unit!130501)

(declare-fun Unit!130604 () Unit!130501)

(assert (=> b!4724434 (= lt!1889447 Unit!130604)))

(declare-fun lt!1889441 () Unit!130501)

(declare-fun Unit!130605 () Unit!130501)

(assert (=> b!4724434 (= lt!1889441 Unit!130605)))

(declare-fun lt!1889448 () Unit!130501)

(assert (=> b!4724434 (= lt!1889448 (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889444 (_1!30523 (h!59185 newBucket!218)) (_2!30523 (h!59185 newBucket!218))))))

(assert (=> b!4724434 (forall!11596 (toList!5921 lt!1889044) lambda!215941)))

(declare-fun lt!1889438 () Unit!130501)

(assert (=> b!4724434 (= lt!1889438 lt!1889448)))

(assert (=> b!4724434 (forall!11596 (toList!5921 lt!1889044) lambda!215941)))

(declare-fun lt!1889454 () Unit!130501)

(declare-fun Unit!130606 () Unit!130501)

(assert (=> b!4724434 (= lt!1889454 Unit!130606)))

(declare-fun res!1999053 () Bool)

(assert (=> b!4724434 (= res!1999053 (forall!11596 newBucket!218 lambda!215941))))

(assert (=> b!4724434 (=> (not res!1999053) (not e!2946536))))

(assert (=> b!4724434 e!2946536))

(declare-fun lt!1889446 () Unit!130501)

(declare-fun Unit!130607 () Unit!130501)

(assert (=> b!4724434 (= lt!1889446 Unit!130607)))

(assert (= (and d!1504826 c!806868) b!4724436))

(assert (= (and d!1504826 (not c!806868)) b!4724434))

(assert (= (and b!4724434 res!1999053) b!4724433))

(assert (= (or b!4724436 b!4724434) bm!330501))

(assert (= (or b!4724436 b!4724434) bm!330503))

(assert (= (or b!4724436 b!4724434) bm!330502))

(assert (= (and d!1504826 res!1999054) b!4724437))

(assert (= (and b!4724437 res!1999052) b!4724435))

(declare-fun m!5662233 () Bool)

(assert (=> b!4724435 m!5662233))

(assert (=> bm!330501 m!5662001))

(declare-fun m!5662235 () Bool)

(assert (=> b!4724437 m!5662235))

(declare-fun m!5662237 () Bool)

(assert (=> d!1504826 m!5662237))

(assert (=> d!1504826 m!5661707))

(declare-fun m!5662239 () Bool)

(assert (=> b!4724434 m!5662239))

(declare-fun m!5662241 () Bool)

(assert (=> b!4724434 m!5662241))

(declare-fun m!5662243 () Bool)

(assert (=> b!4724434 m!5662243))

(declare-fun m!5662245 () Bool)

(assert (=> b!4724434 m!5662245))

(declare-fun m!5662247 () Bool)

(assert (=> b!4724434 m!5662247))

(assert (=> b!4724434 m!5662239))

(assert (=> b!4724434 m!5662241))

(declare-fun m!5662249 () Bool)

(assert (=> b!4724434 m!5662249))

(declare-fun m!5662251 () Bool)

(assert (=> b!4724434 m!5662251))

(declare-fun m!5662253 () Bool)

(assert (=> b!4724434 m!5662253))

(declare-fun m!5662255 () Bool)

(assert (=> b!4724434 m!5662255))

(declare-fun m!5662257 () Bool)

(assert (=> b!4724434 m!5662257))

(assert (=> b!4724434 m!5662249))

(declare-fun m!5662259 () Bool)

(assert (=> bm!330502 m!5662259))

(assert (=> b!4724433 m!5662249))

(declare-fun m!5662261 () Bool)

(assert (=> bm!330503 m!5662261))

(assert (=> b!4724142 d!1504826))

(declare-fun bs!1115148 () Bool)

(declare-fun b!4724441 () Bool)

(assert (= bs!1115148 (and b!4724441 b!4724389)))

(declare-fun lambda!215943 () Int)

(assert (=> bs!1115148 (= lambda!215943 lambda!215930)))

(declare-fun bs!1115149 () Bool)

(assert (= bs!1115149 (and b!4724441 d!1504826)))

(assert (=> bs!1115149 (= (= lt!1889044 lt!1889434) (= lambda!215943 lambda!215942))))

(declare-fun bs!1115150 () Bool)

(assert (= bs!1115150 (and b!4724441 b!4724318)))

(assert (=> bs!1115150 (= lambda!215943 lambda!215920)))

(declare-fun bs!1115151 () Bool)

(assert (= bs!1115151 (and b!4724441 b!4724434)))

(assert (=> bs!1115151 (= lambda!215943 lambda!215940)))

(declare-fun bs!1115152 () Bool)

(assert (= bs!1115152 (and b!4724441 d!1504812)))

(assert (=> bs!1115152 (= (= lt!1889044 lt!1889351) (= lambda!215943 lambda!215933))))

(declare-fun bs!1115153 () Bool)

(assert (= bs!1115153 (and b!4724441 b!4724402)))

(assert (=> bs!1115153 (= lambda!215943 lambda!215934)))

(declare-fun bs!1115154 () Bool)

(assert (= bs!1115154 (and b!4724441 b!4724387)))

(assert (=> bs!1115154 (= (= lt!1889044 lt!1889361) (= lambda!215943 lambda!215932))))

(assert (=> bs!1115151 (= (= lt!1889044 lt!1889444) (= lambda!215943 lambda!215941))))

(declare-fun bs!1115155 () Bool)

(assert (= bs!1115155 (and b!4724441 d!1504728)))

(assert (=> bs!1115155 (not (= lambda!215943 lambda!215834))))

(assert (=> bs!1115154 (= lambda!215943 lambda!215931)))

(declare-fun bs!1115156 () Bool)

(assert (= bs!1115156 (and b!4724441 b!4724436)))

(assert (=> bs!1115156 (= lambda!215943 lambda!215939)))

(declare-fun bs!1115157 () Bool)

(assert (= bs!1115157 (and b!4724441 d!1504820)))

(assert (=> bs!1115157 (= (= lt!1889044 lt!1889388) (= lambda!215943 lambda!215937))))

(declare-fun bs!1115158 () Bool)

(assert (= bs!1115158 (and b!4724441 b!4724320)))

(assert (=> bs!1115158 (= lambda!215943 lambda!215918)))

(declare-fun bs!1115159 () Bool)

(assert (= bs!1115159 (and b!4724441 b!4724400)))

(assert (=> bs!1115159 (= (= lt!1889044 lt!1889398) (= lambda!215943 lambda!215936))))

(declare-fun bs!1115160 () Bool)

(assert (= bs!1115160 (and b!4724441 d!1504736)))

(assert (=> bs!1115160 (= (= lt!1889044 lt!1889297) (= lambda!215943 lambda!215923))))

(assert (=> bs!1115150 (= (= lt!1889044 lt!1889307) (= lambda!215943 lambda!215922))))

(assert (=> bs!1115159 (= lambda!215943 lambda!215935)))

(declare-fun bs!1115161 () Bool)

(assert (= bs!1115161 (and b!4724441 d!1504730)))

(assert (=> bs!1115161 (not (= lambda!215943 lambda!215835))))

(assert (=> b!4724441 true))

(declare-fun bs!1115162 () Bool)

(declare-fun b!4724439 () Bool)

(assert (= bs!1115162 (and b!4724439 b!4724389)))

(declare-fun lambda!215944 () Int)

(assert (=> bs!1115162 (= lambda!215944 lambda!215930)))

(declare-fun bs!1115163 () Bool)

(assert (= bs!1115163 (and b!4724439 d!1504826)))

(assert (=> bs!1115163 (= (= lt!1889044 lt!1889434) (= lambda!215944 lambda!215942))))

(declare-fun bs!1115164 () Bool)

(assert (= bs!1115164 (and b!4724439 b!4724318)))

(assert (=> bs!1115164 (= lambda!215944 lambda!215920)))

(declare-fun bs!1115165 () Bool)

(assert (= bs!1115165 (and b!4724439 b!4724434)))

(assert (=> bs!1115165 (= lambda!215944 lambda!215940)))

(declare-fun bs!1115166 () Bool)

(assert (= bs!1115166 (and b!4724439 d!1504812)))

(assert (=> bs!1115166 (= (= lt!1889044 lt!1889351) (= lambda!215944 lambda!215933))))

(declare-fun bs!1115167 () Bool)

(assert (= bs!1115167 (and b!4724439 b!4724402)))

(assert (=> bs!1115167 (= lambda!215944 lambda!215934)))

(declare-fun bs!1115168 () Bool)

(assert (= bs!1115168 (and b!4724439 b!4724387)))

(assert (=> bs!1115168 (= (= lt!1889044 lt!1889361) (= lambda!215944 lambda!215932))))

(declare-fun bs!1115169 () Bool)

(assert (= bs!1115169 (and b!4724439 b!4724441)))

(assert (=> bs!1115169 (= lambda!215944 lambda!215943)))

(assert (=> bs!1115165 (= (= lt!1889044 lt!1889444) (= lambda!215944 lambda!215941))))

(declare-fun bs!1115170 () Bool)

(assert (= bs!1115170 (and b!4724439 d!1504728)))

(assert (=> bs!1115170 (not (= lambda!215944 lambda!215834))))

(assert (=> bs!1115168 (= lambda!215944 lambda!215931)))

(declare-fun bs!1115171 () Bool)

(assert (= bs!1115171 (and b!4724439 b!4724436)))

(assert (=> bs!1115171 (= lambda!215944 lambda!215939)))

(declare-fun bs!1115172 () Bool)

(assert (= bs!1115172 (and b!4724439 d!1504820)))

(assert (=> bs!1115172 (= (= lt!1889044 lt!1889388) (= lambda!215944 lambda!215937))))

(declare-fun bs!1115173 () Bool)

(assert (= bs!1115173 (and b!4724439 b!4724320)))

(assert (=> bs!1115173 (= lambda!215944 lambda!215918)))

(declare-fun bs!1115174 () Bool)

(assert (= bs!1115174 (and b!4724439 b!4724400)))

(assert (=> bs!1115174 (= (= lt!1889044 lt!1889398) (= lambda!215944 lambda!215936))))

(declare-fun bs!1115175 () Bool)

(assert (= bs!1115175 (and b!4724439 d!1504736)))

(assert (=> bs!1115175 (= (= lt!1889044 lt!1889297) (= lambda!215944 lambda!215923))))

(assert (=> bs!1115164 (= (= lt!1889044 lt!1889307) (= lambda!215944 lambda!215922))))

(assert (=> bs!1115174 (= lambda!215944 lambda!215935)))

(declare-fun bs!1115176 () Bool)

(assert (= bs!1115176 (and b!4724439 d!1504730)))

(assert (=> bs!1115176 (not (= lambda!215944 lambda!215835))))

(assert (=> b!4724439 true))

(declare-fun lambda!215945 () Int)

(declare-fun lt!1889465 () ListMap!5285)

(assert (=> bs!1115162 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215930))))

(assert (=> bs!1115163 (= (= lt!1889465 lt!1889434) (= lambda!215945 lambda!215942))))

(assert (=> bs!1115164 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215920))))

(assert (=> bs!1115165 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215940))))

(assert (=> bs!1115166 (= (= lt!1889465 lt!1889351) (= lambda!215945 lambda!215933))))

(assert (=> bs!1115167 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215934))))

(assert (=> bs!1115168 (= (= lt!1889465 lt!1889361) (= lambda!215945 lambda!215932))))

(assert (=> bs!1115169 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215943))))

(assert (=> bs!1115170 (not (= lambda!215945 lambda!215834))))

(assert (=> bs!1115168 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215931))))

(assert (=> bs!1115171 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215939))))

(assert (=> bs!1115172 (= (= lt!1889465 lt!1889388) (= lambda!215945 lambda!215937))))

(assert (=> bs!1115173 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215918))))

(assert (=> bs!1115174 (= (= lt!1889465 lt!1889398) (= lambda!215945 lambda!215936))))

(assert (=> bs!1115175 (= (= lt!1889465 lt!1889297) (= lambda!215945 lambda!215923))))

(assert (=> bs!1115164 (= (= lt!1889465 lt!1889307) (= lambda!215945 lambda!215922))))

(assert (=> b!4724439 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215944))))

(assert (=> bs!1115165 (= (= lt!1889465 lt!1889444) (= lambda!215945 lambda!215941))))

(assert (=> bs!1115174 (= (= lt!1889465 lt!1889044) (= lambda!215945 lambda!215935))))

(assert (=> bs!1115176 (not (= lambda!215945 lambda!215835))))

(assert (=> b!4724439 true))

(declare-fun bs!1115177 () Bool)

(declare-fun d!1504828 () Bool)

(assert (= bs!1115177 (and d!1504828 b!4724389)))

(declare-fun lt!1889455 () ListMap!5285)

(declare-fun lambda!215946 () Int)

(assert (=> bs!1115177 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215930))))

(declare-fun bs!1115178 () Bool)

(assert (= bs!1115178 (and d!1504828 d!1504826)))

(assert (=> bs!1115178 (= (= lt!1889455 lt!1889434) (= lambda!215946 lambda!215942))))

(declare-fun bs!1115179 () Bool)

(assert (= bs!1115179 (and d!1504828 b!4724318)))

(assert (=> bs!1115179 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215920))))

(declare-fun bs!1115180 () Bool)

(assert (= bs!1115180 (and d!1504828 b!4724434)))

(assert (=> bs!1115180 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215940))))

(declare-fun bs!1115181 () Bool)

(assert (= bs!1115181 (and d!1504828 d!1504812)))

(assert (=> bs!1115181 (= (= lt!1889455 lt!1889351) (= lambda!215946 lambda!215933))))

(declare-fun bs!1115182 () Bool)

(assert (= bs!1115182 (and d!1504828 b!4724402)))

(assert (=> bs!1115182 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215934))))

(declare-fun bs!1115183 () Bool)

(assert (= bs!1115183 (and d!1504828 b!4724387)))

(assert (=> bs!1115183 (= (= lt!1889455 lt!1889361) (= lambda!215946 lambda!215932))))

(declare-fun bs!1115184 () Bool)

(assert (= bs!1115184 (and d!1504828 b!4724441)))

(assert (=> bs!1115184 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215943))))

(declare-fun bs!1115185 () Bool)

(assert (= bs!1115185 (and d!1504828 b!4724439)))

(assert (=> bs!1115185 (= (= lt!1889455 lt!1889465) (= lambda!215946 lambda!215945))))

(declare-fun bs!1115186 () Bool)

(assert (= bs!1115186 (and d!1504828 d!1504728)))

(assert (=> bs!1115186 (not (= lambda!215946 lambda!215834))))

(assert (=> bs!1115183 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215931))))

(declare-fun bs!1115187 () Bool)

(assert (= bs!1115187 (and d!1504828 b!4724436)))

(assert (=> bs!1115187 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215939))))

(declare-fun bs!1115188 () Bool)

(assert (= bs!1115188 (and d!1504828 d!1504820)))

(assert (=> bs!1115188 (= (= lt!1889455 lt!1889388) (= lambda!215946 lambda!215937))))

(declare-fun bs!1115189 () Bool)

(assert (= bs!1115189 (and d!1504828 b!4724320)))

(assert (=> bs!1115189 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215918))))

(declare-fun bs!1115190 () Bool)

(assert (= bs!1115190 (and d!1504828 b!4724400)))

(assert (=> bs!1115190 (= (= lt!1889455 lt!1889398) (= lambda!215946 lambda!215936))))

(declare-fun bs!1115191 () Bool)

(assert (= bs!1115191 (and d!1504828 d!1504736)))

(assert (=> bs!1115191 (= (= lt!1889455 lt!1889297) (= lambda!215946 lambda!215923))))

(assert (=> bs!1115179 (= (= lt!1889455 lt!1889307) (= lambda!215946 lambda!215922))))

(assert (=> bs!1115185 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215944))))

(assert (=> bs!1115180 (= (= lt!1889455 lt!1889444) (= lambda!215946 lambda!215941))))

(assert (=> bs!1115190 (= (= lt!1889455 lt!1889044) (= lambda!215946 lambda!215935))))

(declare-fun bs!1115192 () Bool)

(assert (= bs!1115192 (and d!1504828 d!1504730)))

(assert (=> bs!1115192 (not (= lambda!215946 lambda!215835))))

(assert (=> d!1504828 true))

(declare-fun bm!330504 () Bool)

(declare-fun call!330509 () Unit!130501)

(assert (=> bm!330504 (= call!330509 (lemmaContainsAllItsOwnKeys!799 lt!1889044))))

(declare-fun b!4724438 () Bool)

(declare-fun e!2946539 () Bool)

(assert (=> b!4724438 (= e!2946539 (forall!11596 (toList!5921 lt!1889044) lambda!215945))))

(declare-fun b!4724440 () Bool)

(declare-fun e!2946540 () Bool)

(assert (=> b!4724440 (= e!2946540 (invariantList!1513 (toList!5921 lt!1889455)))))

(declare-fun e!2946541 () ListMap!5285)

(assert (=> b!4724441 (= e!2946541 lt!1889044)))

(declare-fun lt!1889458 () Unit!130501)

(assert (=> b!4724441 (= lt!1889458 call!330509)))

(declare-fun call!330511 () Bool)

(assert (=> b!4724441 call!330511))

(declare-fun lt!1889472 () Unit!130501)

(assert (=> b!4724441 (= lt!1889472 lt!1889458)))

(declare-fun call!330510 () Bool)

(assert (=> b!4724441 call!330510))

(declare-fun lt!1889471 () Unit!130501)

(declare-fun Unit!130608 () Unit!130501)

(assert (=> b!4724441 (= lt!1889471 Unit!130608)))

(declare-fun b!4724442 () Bool)

(declare-fun res!1999055 () Bool)

(assert (=> b!4724442 (=> (not res!1999055) (not e!2946540))))

(assert (=> b!4724442 (= res!1999055 (forall!11596 (toList!5921 lt!1889044) lambda!215946))))

(declare-fun lt!1889470 () ListMap!5285)

(declare-fun c!806869 () Bool)

(declare-fun bm!330505 () Bool)

(assert (=> bm!330505 (= call!330511 (forall!11596 (ite c!806869 (toList!5921 lt!1889044) (toList!5921 lt!1889470)) (ite c!806869 lambda!215943 lambda!215945)))))

(declare-fun bm!330506 () Bool)

(assert (=> bm!330506 (= call!330510 (forall!11596 (toList!5921 lt!1889044) (ite c!806869 lambda!215943 lambda!215944)))))

(assert (=> d!1504828 e!2946540))

(declare-fun res!1999057 () Bool)

(assert (=> d!1504828 (=> (not res!1999057) (not e!2946540))))

(assert (=> d!1504828 (= res!1999057 (forall!11596 lt!1889050 lambda!215946))))

(assert (=> d!1504828 (= lt!1889455 e!2946541)))

(assert (=> d!1504828 (= c!806869 ((_ is Nil!52836) lt!1889050))))

(assert (=> d!1504828 (noDuplicateKeys!2016 lt!1889050)))

(assert (=> d!1504828 (= (addToMapMapFromBucket!1446 lt!1889050 lt!1889044) lt!1889455)))

(assert (=> b!4724439 (= e!2946541 lt!1889465)))

(assert (=> b!4724439 (= lt!1889470 (+!2271 lt!1889044 (h!59185 lt!1889050)))))

(assert (=> b!4724439 (= lt!1889465 (addToMapMapFromBucket!1446 (t!360230 lt!1889050) (+!2271 lt!1889044 (h!59185 lt!1889050))))))

(declare-fun lt!1889474 () Unit!130501)

(assert (=> b!4724439 (= lt!1889474 call!330509)))

(assert (=> b!4724439 call!330510))

(declare-fun lt!1889473 () Unit!130501)

(assert (=> b!4724439 (= lt!1889473 lt!1889474)))

(assert (=> b!4724439 call!330511))

(declare-fun lt!1889460 () Unit!130501)

(declare-fun Unit!130609 () Unit!130501)

(assert (=> b!4724439 (= lt!1889460 Unit!130609)))

(assert (=> b!4724439 (forall!11596 (t!360230 lt!1889050) lambda!215945)))

(declare-fun lt!1889466 () Unit!130501)

(declare-fun Unit!130610 () Unit!130501)

(assert (=> b!4724439 (= lt!1889466 Unit!130610)))

(declare-fun lt!1889461 () Unit!130501)

(declare-fun Unit!130611 () Unit!130501)

(assert (=> b!4724439 (= lt!1889461 Unit!130611)))

(declare-fun lt!1889464 () Unit!130501)

(assert (=> b!4724439 (= lt!1889464 (forallContained!3643 (toList!5921 lt!1889470) lambda!215945 (h!59185 lt!1889050)))))

(assert (=> b!4724439 (contains!16183 lt!1889470 (_1!30523 (h!59185 lt!1889050)))))

(declare-fun lt!1889463 () Unit!130501)

(declare-fun Unit!130612 () Unit!130501)

(assert (=> b!4724439 (= lt!1889463 Unit!130612)))

(assert (=> b!4724439 (contains!16183 lt!1889465 (_1!30523 (h!59185 lt!1889050)))))

(declare-fun lt!1889456 () Unit!130501)

(declare-fun Unit!130613 () Unit!130501)

(assert (=> b!4724439 (= lt!1889456 Unit!130613)))

(assert (=> b!4724439 (forall!11596 lt!1889050 lambda!215945)))

(declare-fun lt!1889457 () Unit!130501)

(declare-fun Unit!130614 () Unit!130501)

(assert (=> b!4724439 (= lt!1889457 Unit!130614)))

(assert (=> b!4724439 (forall!11596 (toList!5921 lt!1889470) lambda!215945)))

(declare-fun lt!1889468 () Unit!130501)

(declare-fun Unit!130615 () Unit!130501)

(assert (=> b!4724439 (= lt!1889468 Unit!130615)))

(declare-fun lt!1889462 () Unit!130501)

(declare-fun Unit!130616 () Unit!130501)

(assert (=> b!4724439 (= lt!1889462 Unit!130616)))

(declare-fun lt!1889469 () Unit!130501)

(assert (=> b!4724439 (= lt!1889469 (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889465 (_1!30523 (h!59185 lt!1889050)) (_2!30523 (h!59185 lt!1889050))))))

(assert (=> b!4724439 (forall!11596 (toList!5921 lt!1889044) lambda!215945)))

(declare-fun lt!1889459 () Unit!130501)

(assert (=> b!4724439 (= lt!1889459 lt!1889469)))

(assert (=> b!4724439 (forall!11596 (toList!5921 lt!1889044) lambda!215945)))

(declare-fun lt!1889475 () Unit!130501)

(declare-fun Unit!130617 () Unit!130501)

(assert (=> b!4724439 (= lt!1889475 Unit!130617)))

(declare-fun res!1999056 () Bool)

(assert (=> b!4724439 (= res!1999056 (forall!11596 lt!1889050 lambda!215945))))

(assert (=> b!4724439 (=> (not res!1999056) (not e!2946539))))

(assert (=> b!4724439 e!2946539))

(declare-fun lt!1889467 () Unit!130501)

(declare-fun Unit!130618 () Unit!130501)

(assert (=> b!4724439 (= lt!1889467 Unit!130618)))

(assert (= (and d!1504828 c!806869) b!4724441))

(assert (= (and d!1504828 (not c!806869)) b!4724439))

(assert (= (and b!4724439 res!1999056) b!4724438))

(assert (= (or b!4724441 b!4724439) bm!330504))

(assert (= (or b!4724441 b!4724439) bm!330506))

(assert (= (or b!4724441 b!4724439) bm!330505))

(assert (= (and d!1504828 res!1999057) b!4724442))

(assert (= (and b!4724442 res!1999055) b!4724440))

(declare-fun m!5662263 () Bool)

(assert (=> b!4724440 m!5662263))

(assert (=> bm!330504 m!5662001))

(declare-fun m!5662265 () Bool)

(assert (=> b!4724442 m!5662265))

(declare-fun m!5662267 () Bool)

(assert (=> d!1504828 m!5662267))

(assert (=> d!1504828 m!5662109))

(declare-fun m!5662269 () Bool)

(assert (=> b!4724439 m!5662269))

(declare-fun m!5662271 () Bool)

(assert (=> b!4724439 m!5662271))

(declare-fun m!5662273 () Bool)

(assert (=> b!4724439 m!5662273))

(declare-fun m!5662275 () Bool)

(assert (=> b!4724439 m!5662275))

(declare-fun m!5662277 () Bool)

(assert (=> b!4724439 m!5662277))

(assert (=> b!4724439 m!5662269))

(assert (=> b!4724439 m!5662271))

(declare-fun m!5662279 () Bool)

(assert (=> b!4724439 m!5662279))

(declare-fun m!5662281 () Bool)

(assert (=> b!4724439 m!5662281))

(declare-fun m!5662283 () Bool)

(assert (=> b!4724439 m!5662283))

(declare-fun m!5662285 () Bool)

(assert (=> b!4724439 m!5662285))

(declare-fun m!5662287 () Bool)

(assert (=> b!4724439 m!5662287))

(assert (=> b!4724439 m!5662279))

(declare-fun m!5662289 () Bool)

(assert (=> bm!330505 m!5662289))

(assert (=> b!4724438 m!5662279))

(declare-fun m!5662291 () Bool)

(assert (=> bm!330506 m!5662291))

(assert (=> b!4724142 d!1504828))

(declare-fun d!1504830 () Bool)

(declare-fun res!1999058 () Bool)

(declare-fun e!2946542 () Bool)

(assert (=> d!1504830 (=> res!1999058 e!2946542)))

(assert (=> d!1504830 (= res!1999058 (not ((_ is Cons!52836) newBucket!218)))))

(assert (=> d!1504830 (= (noDuplicateKeys!2016 newBucket!218) e!2946542)))

(declare-fun b!4724443 () Bool)

(declare-fun e!2946543 () Bool)

(assert (=> b!4724443 (= e!2946542 e!2946543)))

(declare-fun res!1999059 () Bool)

(assert (=> b!4724443 (=> (not res!1999059) (not e!2946543))))

(assert (=> b!4724443 (= res!1999059 (not (containsKey!3375 (t!360230 newBucket!218) (_1!30523 (h!59185 newBucket!218)))))))

(declare-fun b!4724444 () Bool)

(assert (=> b!4724444 (= e!2946543 (noDuplicateKeys!2016 (t!360230 newBucket!218)))))

(assert (= (and d!1504830 (not res!1999058)) b!4724443))

(assert (= (and b!4724443 res!1999059) b!4724444))

(declare-fun m!5662293 () Bool)

(assert (=> b!4724443 m!5662293))

(declare-fun m!5662295 () Bool)

(assert (=> b!4724444 m!5662295))

(assert (=> b!4724163 d!1504830))

(declare-fun d!1504832 () Bool)

(declare-fun res!1999060 () Bool)

(declare-fun e!2946544 () Bool)

(assert (=> d!1504832 (=> res!1999060 e!2946544)))

(assert (=> d!1504832 (= res!1999060 ((_ is Nil!52837) (toList!5922 lm!2023)))))

(assert (=> d!1504832 (= (forall!11594 (toList!5922 lm!2023) lambda!215822) e!2946544)))

(declare-fun b!4724445 () Bool)

(declare-fun e!2946545 () Bool)

(assert (=> b!4724445 (= e!2946544 e!2946545)))

(declare-fun res!1999061 () Bool)

(assert (=> b!4724445 (=> (not res!1999061) (not e!2946545))))

(assert (=> b!4724445 (= res!1999061 (dynLambda!21823 lambda!215822 (h!59186 (toList!5922 lm!2023))))))

(declare-fun b!4724446 () Bool)

(assert (=> b!4724446 (= e!2946545 (forall!11594 (t!360231 (toList!5922 lm!2023)) lambda!215822))))

(assert (= (and d!1504832 (not res!1999060)) b!4724445))

(assert (= (and b!4724445 res!1999061) b!4724446))

(declare-fun b_lambda!179203 () Bool)

(assert (=> (not b_lambda!179203) (not b!4724445)))

(declare-fun m!5662297 () Bool)

(assert (=> b!4724445 m!5662297))

(declare-fun m!5662299 () Bool)

(assert (=> b!4724446 m!5662299))

(assert (=> start!480916 d!1504832))

(declare-fun d!1504834 () Bool)

(declare-fun isStrictlySorted!752 (List!52961) Bool)

(assert (=> d!1504834 (= (inv!68064 lm!2023) (isStrictlySorted!752 (toList!5922 lm!2023)))))

(declare-fun bs!1115193 () Bool)

(assert (= bs!1115193 d!1504834))

(declare-fun m!5662301 () Bool)

(assert (=> bs!1115193 m!5662301))

(assert (=> start!480916 d!1504834))

(declare-fun b!4724451 () Bool)

(declare-fun tp!1348468 () Bool)

(declare-fun e!2946548 () Bool)

(assert (=> b!4724451 (= e!2946548 (and tp_is_empty!31357 tp_is_empty!31359 tp!1348468))))

(assert (=> b!4724143 (= tp!1348454 e!2946548)))

(assert (= (and b!4724143 ((_ is Cons!52836) (t!360230 oldBucket!34))) b!4724451))

(declare-fun b!4724456 () Bool)

(declare-fun e!2946551 () Bool)

(declare-fun tp!1348473 () Bool)

(declare-fun tp!1348474 () Bool)

(assert (=> b!4724456 (= e!2946551 (and tp!1348473 tp!1348474))))

(assert (=> b!4724162 (= tp!1348453 e!2946551)))

(assert (= (and b!4724162 ((_ is Cons!52837) (toList!5922 lm!2023))) b!4724456))

(declare-fun b!4724457 () Bool)

(declare-fun e!2946552 () Bool)

(declare-fun tp!1348475 () Bool)

(assert (=> b!4724457 (= e!2946552 (and tp_is_empty!31357 tp_is_empty!31359 tp!1348475))))

(assert (=> b!4724152 (= tp!1348455 e!2946552)))

(assert (= (and b!4724152 ((_ is Cons!52836) (t!360230 newBucket!218))) b!4724457))

(declare-fun b_lambda!179205 () Bool)

(assert (= b_lambda!179203 (or start!480916 b_lambda!179205)))

(declare-fun bs!1115194 () Bool)

(declare-fun d!1504836 () Bool)

(assert (= bs!1115194 (and d!1504836 start!480916)))

(assert (=> bs!1115194 (= (dynLambda!21823 lambda!215822 (h!59186 (toList!5922 lm!2023))) (noDuplicateKeys!2016 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))

(assert (=> bs!1115194 m!5662007))

(assert (=> b!4724445 d!1504836))

(declare-fun b_lambda!179207 () Bool)

(assert (= b_lambda!179195 (or start!480916 b_lambda!179207)))

(declare-fun bs!1115195 () Bool)

(declare-fun d!1504838 () Bool)

(assert (= bs!1115195 (and d!1504838 start!480916)))

(assert (=> bs!1115195 (= (dynLambda!21823 lambda!215822 (h!59186 lt!1889048)) (noDuplicateKeys!2016 (_2!30524 (h!59186 lt!1889048))))))

(declare-fun m!5662303 () Bool)

(assert (=> bs!1115195 m!5662303))

(assert (=> b!4724352 d!1504838))

(check-sat (not b!4724424) (not bm!330501) (not bm!330496) (not b!4724319) (not b!4724422) (not b!4724423) (not b!4724437) (not d!1504778) (not d!1504828) (not d!1504794) (not b!4724433) (not b!4724438) (not bs!1115195) (not bm!330488) (not bs!1115194) (not d!1504726) (not b!4724206) (not b!4724434) (not b!4724401) (not d!1504826) (not b_lambda!179207) (not d!1504784) (not b!4724356) (not d!1504834) (not d!1504700) (not b!4724400) (not b!4724317) (not b!4724231) (not b!4724397) (not b!4724399) (not b!4724214) (not bm!330497) (not bm!330502) (not d!1504696) (not bm!330503) (not d!1504722) (not b!4724444) (not d!1504812) (not b!4724388) (not b!4724446) (not bm!330506) (not d!1504814) (not b!4724442) (not d!1504818) (not b!4724457) (not b!4724426) (not b!4724212) (not d!1504788) (not b!4724429) (not b!4724431) (not b!4724336) (not d!1504820) (not d!1504822) (not b_lambda!179205) (not d!1504780) tp_is_empty!31357 (not b!4724219) (not b!4724425) (not bm!330495) (not b!4724390) (not bm!330486) (not bm!330493) (not b!4724204) (not b!4724353) (not b!4724318) (not d!1504734) (not d!1504816) (not b!4724354) (not d!1504802) (not d!1504736) (not bm!330500) (not b!4724398) (not b!4724427) (not bm!330492) (not b!4724395) (not d!1504728) (not b!4724386) (not d!1504730) (not b!4724451) (not bm!330505) (not b!4724439) (not b!4724387) (not b!4724456) (not b!4724435) (not b!4724443) (not b!4724440) (not b!4724403) (not bm!330494) tp_is_empty!31359 (not bm!330487) (not d!1504824) (not bm!330504) (not d!1504786) (not b!4724220) (not b!4724321) (not b!4724396))
(check-sat)
(get-model)

(declare-fun d!1504840 () Bool)

(declare-fun isEmpty!29178 (Option!12365) Bool)

(assert (=> d!1504840 (= (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889046) key!4653)) (not (isEmpty!29178 (getValueByKey!1961 (toList!5921 lt!1889046) key!4653))))))

(declare-fun bs!1115196 () Bool)

(assert (= bs!1115196 d!1504840))

(assert (=> bs!1115196 m!5662211))

(declare-fun m!5662305 () Bool)

(assert (=> bs!1115196 m!5662305))

(assert (=> b!4724422 d!1504840))

(declare-fun b!4724469 () Bool)

(declare-fun e!2946558 () Option!12365)

(assert (=> b!4724469 (= e!2946558 None!12364)))

(declare-fun b!4724466 () Bool)

(declare-fun e!2946557 () Option!12365)

(assert (=> b!4724466 (= e!2946557 (Some!12364 (_2!30523 (h!59185 (toList!5921 lt!1889046)))))))

(declare-fun b!4724467 () Bool)

(assert (=> b!4724467 (= e!2946557 e!2946558)))

(declare-fun c!806875 () Bool)

(assert (=> b!4724467 (= c!806875 (and ((_ is Cons!52836) (toList!5921 lt!1889046)) (not (= (_1!30523 (h!59185 (toList!5921 lt!1889046))) key!4653))))))

(declare-fun b!4724468 () Bool)

(assert (=> b!4724468 (= e!2946558 (getValueByKey!1961 (t!360230 (toList!5921 lt!1889046)) key!4653))))

(declare-fun d!1504842 () Bool)

(declare-fun c!806874 () Bool)

(assert (=> d!1504842 (= c!806874 (and ((_ is Cons!52836) (toList!5921 lt!1889046)) (= (_1!30523 (h!59185 (toList!5921 lt!1889046))) key!4653)))))

(assert (=> d!1504842 (= (getValueByKey!1961 (toList!5921 lt!1889046) key!4653) e!2946557)))

(assert (= (and d!1504842 c!806874) b!4724466))

(assert (= (and d!1504842 (not c!806874)) b!4724467))

(assert (= (and b!4724467 c!806875) b!4724468))

(assert (= (and b!4724467 (not c!806875)) b!4724469))

(declare-fun m!5662307 () Bool)

(assert (=> b!4724468 m!5662307))

(assert (=> b!4724422 d!1504842))

(declare-fun d!1504844 () Bool)

(declare-fun noDuplicatedKeys!376 (List!52960) Bool)

(assert (=> d!1504844 (= (invariantList!1513 (toList!5921 lt!1889434)) (noDuplicatedKeys!376 (toList!5921 lt!1889434)))))

(declare-fun bs!1115197 () Bool)

(assert (= bs!1115197 d!1504844))

(declare-fun m!5662309 () Bool)

(assert (=> bs!1115197 m!5662309))

(assert (=> b!4724435 d!1504844))

(declare-fun bs!1115198 () Bool)

(declare-fun d!1504846 () Bool)

(assert (= bs!1115198 (and d!1504846 b!4724389)))

(declare-fun lambda!215949 () Int)

(assert (=> bs!1115198 (= lambda!215949 lambda!215930)))

(declare-fun bs!1115199 () Bool)

(assert (= bs!1115199 (and d!1504846 d!1504826)))

(assert (=> bs!1115199 (= (= lt!1889044 lt!1889434) (= lambda!215949 lambda!215942))))

(declare-fun bs!1115200 () Bool)

(assert (= bs!1115200 (and d!1504846 b!4724318)))

(assert (=> bs!1115200 (= lambda!215949 lambda!215920)))

(declare-fun bs!1115201 () Bool)

(assert (= bs!1115201 (and d!1504846 d!1504828)))

(assert (=> bs!1115201 (= (= lt!1889044 lt!1889455) (= lambda!215949 lambda!215946))))

(declare-fun bs!1115202 () Bool)

(assert (= bs!1115202 (and d!1504846 b!4724434)))

(assert (=> bs!1115202 (= lambda!215949 lambda!215940)))

(declare-fun bs!1115203 () Bool)

(assert (= bs!1115203 (and d!1504846 d!1504812)))

(assert (=> bs!1115203 (= (= lt!1889044 lt!1889351) (= lambda!215949 lambda!215933))))

(declare-fun bs!1115204 () Bool)

(assert (= bs!1115204 (and d!1504846 b!4724402)))

(assert (=> bs!1115204 (= lambda!215949 lambda!215934)))

(declare-fun bs!1115205 () Bool)

(assert (= bs!1115205 (and d!1504846 b!4724387)))

(assert (=> bs!1115205 (= (= lt!1889044 lt!1889361) (= lambda!215949 lambda!215932))))

(declare-fun bs!1115206 () Bool)

(assert (= bs!1115206 (and d!1504846 b!4724441)))

(assert (=> bs!1115206 (= lambda!215949 lambda!215943)))

(declare-fun bs!1115208 () Bool)

(assert (= bs!1115208 (and d!1504846 b!4724439)))

(assert (=> bs!1115208 (= (= lt!1889044 lt!1889465) (= lambda!215949 lambda!215945))))

(declare-fun bs!1115209 () Bool)

(assert (= bs!1115209 (and d!1504846 d!1504728)))

(assert (=> bs!1115209 (not (= lambda!215949 lambda!215834))))

(assert (=> bs!1115205 (= lambda!215949 lambda!215931)))

(declare-fun bs!1115210 () Bool)

(assert (= bs!1115210 (and d!1504846 b!4724436)))

(assert (=> bs!1115210 (= lambda!215949 lambda!215939)))

(declare-fun bs!1115211 () Bool)

(assert (= bs!1115211 (and d!1504846 d!1504820)))

(assert (=> bs!1115211 (= (= lt!1889044 lt!1889388) (= lambda!215949 lambda!215937))))

(declare-fun bs!1115212 () Bool)

(assert (= bs!1115212 (and d!1504846 b!4724320)))

(assert (=> bs!1115212 (= lambda!215949 lambda!215918)))

(declare-fun bs!1115213 () Bool)

(assert (= bs!1115213 (and d!1504846 b!4724400)))

(assert (=> bs!1115213 (= (= lt!1889044 lt!1889398) (= lambda!215949 lambda!215936))))

(declare-fun bs!1115214 () Bool)

(assert (= bs!1115214 (and d!1504846 d!1504736)))

(assert (=> bs!1115214 (= (= lt!1889044 lt!1889297) (= lambda!215949 lambda!215923))))

(assert (=> bs!1115200 (= (= lt!1889044 lt!1889307) (= lambda!215949 lambda!215922))))

(assert (=> bs!1115208 (= lambda!215949 lambda!215944)))

(assert (=> bs!1115202 (= (= lt!1889044 lt!1889444) (= lambda!215949 lambda!215941))))

(assert (=> bs!1115213 (= lambda!215949 lambda!215935)))

(declare-fun bs!1115215 () Bool)

(assert (= bs!1115215 (and d!1504846 d!1504730)))

(assert (=> bs!1115215 (not (= lambda!215949 lambda!215835))))

(assert (=> d!1504846 true))

(assert (=> d!1504846 (forall!11596 (toList!5921 lt!1889044) lambda!215949)))

(declare-fun lt!1889478 () Unit!130501)

(declare-fun choose!33343 (ListMap!5285) Unit!130501)

(assert (=> d!1504846 (= lt!1889478 (choose!33343 lt!1889044))))

(assert (=> d!1504846 (= (lemmaContainsAllItsOwnKeys!799 lt!1889044) lt!1889478)))

(declare-fun bs!1115216 () Bool)

(assert (= bs!1115216 d!1504846))

(declare-fun m!5662317 () Bool)

(assert (=> bs!1115216 m!5662317))

(declare-fun m!5662319 () Bool)

(assert (=> bs!1115216 m!5662319))

(assert (=> bm!330495 d!1504846))

(declare-fun b!4724489 () Bool)

(assert (=> b!4724489 true))

(declare-fun d!1504854 () Bool)

(declare-fun e!2946573 () Bool)

(assert (=> d!1504854 e!2946573))

(declare-fun res!1999081 () Bool)

(assert (=> d!1504854 (=> (not res!1999081) (not e!2946573))))

(declare-fun lt!1889484 () List!52963)

(declare-fun noDuplicate!862 (List!52963) Bool)

(assert (=> d!1504854 (= res!1999081 (noDuplicate!862 lt!1889484))))

(assert (=> d!1504854 (= lt!1889484 (getKeysList!953 (toList!5921 lt!1889046)))))

(assert (=> d!1504854 (= (keys!18978 lt!1889046) lt!1889484)))

(declare-fun b!4724488 () Bool)

(declare-fun res!1999082 () Bool)

(assert (=> b!4724488 (=> (not res!1999082) (not e!2946573))))

(declare-fun length!580 (List!52963) Int)

(declare-fun length!581 (List!52960) Int)

(assert (=> b!4724488 (= res!1999082 (= (length!580 lt!1889484) (length!581 (toList!5921 lt!1889046))))))

(declare-fun res!1999080 () Bool)

(assert (=> b!4724489 (=> (not res!1999080) (not e!2946573))))

(declare-fun lambda!215954 () Int)

(declare-fun forall!11597 (List!52963 Int) Bool)

(assert (=> b!4724489 (= res!1999080 (forall!11597 lt!1889484 lambda!215954))))

(declare-fun lambda!215955 () Int)

(declare-fun b!4724490 () Bool)

(declare-fun content!9400 (List!52963) (InoxSet K!14190))

(declare-fun map!11683 (List!52960 Int) List!52963)

(assert (=> b!4724490 (= e!2946573 (= (content!9400 lt!1889484) (content!9400 (map!11683 (toList!5921 lt!1889046) lambda!215955))))))

(assert (= (and d!1504854 res!1999081) b!4724488))

(assert (= (and b!4724488 res!1999082) b!4724489))

(assert (= (and b!4724489 res!1999080) b!4724490))

(declare-fun m!5662327 () Bool)

(assert (=> d!1504854 m!5662327))

(assert (=> d!1504854 m!5662215))

(declare-fun m!5662329 () Bool)

(assert (=> b!4724488 m!5662329))

(declare-fun m!5662331 () Bool)

(assert (=> b!4724488 m!5662331))

(declare-fun m!5662333 () Bool)

(assert (=> b!4724489 m!5662333))

(declare-fun m!5662335 () Bool)

(assert (=> b!4724490 m!5662335))

(declare-fun m!5662337 () Bool)

(assert (=> b!4724490 m!5662337))

(assert (=> b!4724490 m!5662337))

(declare-fun m!5662339 () Bool)

(assert (=> b!4724490 m!5662339))

(assert (=> b!4724423 d!1504854))

(declare-fun d!1504858 () Bool)

(declare-fun res!1999089 () Bool)

(declare-fun e!2946580 () Bool)

(assert (=> d!1504858 (=> res!1999089 e!2946580)))

(assert (=> d!1504858 (= res!1999089 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504858 (= (forall!11596 (toList!5921 lt!1889044) lambda!215942) e!2946580)))

(declare-fun b!4724499 () Bool)

(declare-fun e!2946581 () Bool)

(assert (=> b!4724499 (= e!2946580 e!2946581)))

(declare-fun res!1999090 () Bool)

(assert (=> b!4724499 (=> (not res!1999090) (not e!2946581))))

(declare-fun dynLambda!21825 (Int tuple2!54458) Bool)

(assert (=> b!4724499 (= res!1999090 (dynLambda!21825 lambda!215942 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724500 () Bool)

(assert (=> b!4724500 (= e!2946581 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215942))))

(assert (= (and d!1504858 (not res!1999089)) b!4724499))

(assert (= (and b!4724499 res!1999090) b!4724500))

(declare-fun b_lambda!179213 () Bool)

(assert (=> (not b_lambda!179213) (not b!4724499)))

(declare-fun m!5662345 () Bool)

(assert (=> b!4724499 m!5662345))

(declare-fun m!5662347 () Bool)

(assert (=> b!4724500 m!5662347))

(assert (=> b!4724437 d!1504858))

(declare-fun b!4724501 () Bool)

(declare-fun e!2946584 () Bool)

(declare-fun e!2946585 () Bool)

(assert (=> b!4724501 (= e!2946584 e!2946585)))

(declare-fun res!1999092 () Bool)

(assert (=> b!4724501 (=> (not res!1999092) (not e!2946585))))

(assert (=> b!4724501 (= res!1999092 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889403) (_1!30523 (h!59185 oldBucket!34)))))))

(declare-fun bm!330507 () Bool)

(declare-fun call!330512 () Bool)

(declare-fun e!2946587 () List!52963)

(assert (=> bm!330507 (= call!330512 (contains!16188 e!2946587 (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun c!806877 () Bool)

(declare-fun c!806876 () Bool)

(assert (=> bm!330507 (= c!806877 c!806876)))

(declare-fun d!1504862 () Bool)

(assert (=> d!1504862 e!2946584))

(declare-fun res!1999093 () Bool)

(assert (=> d!1504862 (=> res!1999093 e!2946584)))

(declare-fun e!2946582 () Bool)

(assert (=> d!1504862 (= res!1999093 e!2946582)))

(declare-fun res!1999091 () Bool)

(assert (=> d!1504862 (=> (not res!1999091) (not e!2946582))))

(declare-fun lt!1889488 () Bool)

(assert (=> d!1504862 (= res!1999091 (not lt!1889488))))

(declare-fun lt!1889490 () Bool)

(assert (=> d!1504862 (= lt!1889488 lt!1889490)))

(declare-fun lt!1889487 () Unit!130501)

(declare-fun e!2946583 () Unit!130501)

(assert (=> d!1504862 (= lt!1889487 e!2946583)))

(assert (=> d!1504862 (= c!806876 lt!1889490)))

(assert (=> d!1504862 (= lt!1889490 (containsKey!3379 (toList!5921 lt!1889403) (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1504862 (= (contains!16183 lt!1889403 (_1!30523 (h!59185 oldBucket!34))) lt!1889488)))

(declare-fun b!4724502 () Bool)

(assert (=> b!4724502 (= e!2946587 (keys!18978 lt!1889403))))

(declare-fun b!4724503 () Bool)

(assert (=> b!4724503 (= e!2946587 (getKeysList!953 (toList!5921 lt!1889403)))))

(declare-fun b!4724504 () Bool)

(declare-fun lt!1889492 () Unit!130501)

(assert (=> b!4724504 (= e!2946583 lt!1889492)))

(declare-fun lt!1889491 () Unit!130501)

(assert (=> b!4724504 (= lt!1889491 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889403) (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> b!4724504 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889403) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun lt!1889489 () Unit!130501)

(assert (=> b!4724504 (= lt!1889489 lt!1889491)))

(assert (=> b!4724504 (= lt!1889492 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889403) (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> b!4724504 call!330512))

(declare-fun b!4724505 () Bool)

(assert (=> b!4724505 (= e!2946582 (not (contains!16188 (keys!18978 lt!1889403) (_1!30523 (h!59185 oldBucket!34)))))))

(declare-fun b!4724506 () Bool)

(assert (=> b!4724506 false))

(declare-fun lt!1889486 () Unit!130501)

(declare-fun lt!1889485 () Unit!130501)

(assert (=> b!4724506 (= lt!1889486 lt!1889485)))

(assert (=> b!4724506 (containsKey!3379 (toList!5921 lt!1889403) (_1!30523 (h!59185 oldBucket!34)))))

(assert (=> b!4724506 (= lt!1889485 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889403) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun e!2946586 () Unit!130501)

(declare-fun Unit!130619 () Unit!130501)

(assert (=> b!4724506 (= e!2946586 Unit!130619)))

(declare-fun b!4724507 () Bool)

(assert (=> b!4724507 (= e!2946583 e!2946586)))

(declare-fun c!806878 () Bool)

(assert (=> b!4724507 (= c!806878 call!330512)))

(declare-fun b!4724508 () Bool)

(assert (=> b!4724508 (= e!2946585 (contains!16188 (keys!18978 lt!1889403) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun b!4724509 () Bool)

(declare-fun Unit!130620 () Unit!130501)

(assert (=> b!4724509 (= e!2946586 Unit!130620)))

(assert (= (and d!1504862 c!806876) b!4724504))

(assert (= (and d!1504862 (not c!806876)) b!4724507))

(assert (= (and b!4724507 c!806878) b!4724506))

(assert (= (and b!4724507 (not c!806878)) b!4724509))

(assert (= (or b!4724504 b!4724507) bm!330507))

(assert (= (and bm!330507 c!806877) b!4724503))

(assert (= (and bm!330507 (not c!806877)) b!4724502))

(assert (= (and d!1504862 res!1999091) b!4724505))

(assert (= (and d!1504862 (not res!1999093)) b!4724501))

(assert (= (and b!4724501 res!1999092) b!4724508))

(declare-fun m!5662349 () Bool)

(assert (=> b!4724502 m!5662349))

(assert (=> b!4724508 m!5662349))

(assert (=> b!4724508 m!5662349))

(declare-fun m!5662351 () Bool)

(assert (=> b!4724508 m!5662351))

(declare-fun m!5662353 () Bool)

(assert (=> b!4724501 m!5662353))

(assert (=> b!4724501 m!5662353))

(declare-fun m!5662355 () Bool)

(assert (=> b!4724501 m!5662355))

(declare-fun m!5662357 () Bool)

(assert (=> b!4724503 m!5662357))

(declare-fun m!5662359 () Bool)

(assert (=> d!1504862 m!5662359))

(declare-fun m!5662361 () Bool)

(assert (=> b!4724504 m!5662361))

(assert (=> b!4724504 m!5662353))

(assert (=> b!4724504 m!5662353))

(assert (=> b!4724504 m!5662355))

(declare-fun m!5662363 () Bool)

(assert (=> b!4724504 m!5662363))

(assert (=> b!4724505 m!5662349))

(assert (=> b!4724505 m!5662349))

(assert (=> b!4724505 m!5662351))

(declare-fun m!5662365 () Bool)

(assert (=> bm!330507 m!5662365))

(assert (=> b!4724506 m!5662359))

(declare-fun m!5662367 () Bool)

(assert (=> b!4724506 m!5662367))

(assert (=> b!4724400 d!1504862))

(declare-fun bs!1115217 () Bool)

(declare-fun b!4724513 () Bool)

(assert (= bs!1115217 (and b!4724513 b!4724389)))

(declare-fun lambda!215956 () Int)

(assert (=> bs!1115217 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215930))))

(declare-fun bs!1115218 () Bool)

(assert (= bs!1115218 (and b!4724513 d!1504826)))

(assert (=> bs!1115218 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889434) (= lambda!215956 lambda!215942))))

(declare-fun bs!1115219 () Bool)

(assert (= bs!1115219 (and b!4724513 b!4724318)))

(assert (=> bs!1115219 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215920))))

(declare-fun bs!1115220 () Bool)

(assert (= bs!1115220 (and b!4724513 d!1504828)))

(assert (=> bs!1115220 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889455) (= lambda!215956 lambda!215946))))

(declare-fun bs!1115221 () Bool)

(assert (= bs!1115221 (and b!4724513 b!4724434)))

(assert (=> bs!1115221 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215940))))

(declare-fun bs!1115222 () Bool)

(assert (= bs!1115222 (and b!4724513 d!1504812)))

(assert (=> bs!1115222 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889351) (= lambda!215956 lambda!215933))))

(declare-fun bs!1115223 () Bool)

(assert (= bs!1115223 (and b!4724513 b!4724402)))

(assert (=> bs!1115223 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215934))))

(declare-fun bs!1115224 () Bool)

(assert (= bs!1115224 (and b!4724513 b!4724387)))

(assert (=> bs!1115224 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889361) (= lambda!215956 lambda!215932))))

(declare-fun bs!1115225 () Bool)

(assert (= bs!1115225 (and b!4724513 b!4724441)))

(assert (=> bs!1115225 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215943))))

(declare-fun bs!1115226 () Bool)

(assert (= bs!1115226 (and b!4724513 d!1504728)))

(assert (=> bs!1115226 (not (= lambda!215956 lambda!215834))))

(assert (=> bs!1115224 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215931))))

(declare-fun bs!1115227 () Bool)

(assert (= bs!1115227 (and b!4724513 b!4724436)))

(assert (=> bs!1115227 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215939))))

(declare-fun bs!1115228 () Bool)

(assert (= bs!1115228 (and b!4724513 d!1504820)))

(assert (=> bs!1115228 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889388) (= lambda!215956 lambda!215937))))

(declare-fun bs!1115229 () Bool)

(assert (= bs!1115229 (and b!4724513 b!4724320)))

(assert (=> bs!1115229 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215918))))

(declare-fun bs!1115230 () Bool)

(assert (= bs!1115230 (and b!4724513 b!4724400)))

(assert (=> bs!1115230 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889398) (= lambda!215956 lambda!215936))))

(declare-fun bs!1115231 () Bool)

(assert (= bs!1115231 (and b!4724513 d!1504736)))

(assert (=> bs!1115231 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889297) (= lambda!215956 lambda!215923))))

(assert (=> bs!1115219 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889307) (= lambda!215956 lambda!215922))))

(declare-fun bs!1115232 () Bool)

(assert (= bs!1115232 (and b!4724513 d!1504846)))

(assert (=> bs!1115232 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215949))))

(declare-fun bs!1115233 () Bool)

(assert (= bs!1115233 (and b!4724513 b!4724439)))

(assert (=> bs!1115233 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889465) (= lambda!215956 lambda!215945))))

(assert (=> bs!1115233 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215944))))

(assert (=> bs!1115221 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889444) (= lambda!215956 lambda!215941))))

(assert (=> bs!1115230 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215956 lambda!215935))))

(declare-fun bs!1115234 () Bool)

(assert (= bs!1115234 (and b!4724513 d!1504730)))

(assert (=> bs!1115234 (not (= lambda!215956 lambda!215835))))

(assert (=> b!4724513 true))

(declare-fun bs!1115235 () Bool)

(declare-fun b!4724511 () Bool)

(assert (= bs!1115235 (and b!4724511 b!4724389)))

(declare-fun lambda!215957 () Int)

(assert (=> bs!1115235 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215930))))

(declare-fun bs!1115236 () Bool)

(assert (= bs!1115236 (and b!4724511 d!1504826)))

(assert (=> bs!1115236 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889434) (= lambda!215957 lambda!215942))))

(declare-fun bs!1115237 () Bool)

(assert (= bs!1115237 (and b!4724511 b!4724318)))

(assert (=> bs!1115237 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215920))))

(declare-fun bs!1115238 () Bool)

(assert (= bs!1115238 (and b!4724511 d!1504828)))

(assert (=> bs!1115238 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889455) (= lambda!215957 lambda!215946))))

(declare-fun bs!1115239 () Bool)

(assert (= bs!1115239 (and b!4724511 b!4724434)))

(assert (=> bs!1115239 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215940))))

(declare-fun bs!1115240 () Bool)

(assert (= bs!1115240 (and b!4724511 d!1504812)))

(assert (=> bs!1115240 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889351) (= lambda!215957 lambda!215933))))

(declare-fun bs!1115241 () Bool)

(assert (= bs!1115241 (and b!4724511 b!4724513)))

(assert (=> bs!1115241 (= lambda!215957 lambda!215956)))

(declare-fun bs!1115242 () Bool)

(assert (= bs!1115242 (and b!4724511 b!4724402)))

(assert (=> bs!1115242 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215934))))

(declare-fun bs!1115243 () Bool)

(assert (= bs!1115243 (and b!4724511 b!4724387)))

(assert (=> bs!1115243 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889361) (= lambda!215957 lambda!215932))))

(declare-fun bs!1115244 () Bool)

(assert (= bs!1115244 (and b!4724511 b!4724441)))

(assert (=> bs!1115244 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215943))))

(declare-fun bs!1115245 () Bool)

(assert (= bs!1115245 (and b!4724511 d!1504728)))

(assert (=> bs!1115245 (not (= lambda!215957 lambda!215834))))

(assert (=> bs!1115243 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215931))))

(declare-fun bs!1115246 () Bool)

(assert (= bs!1115246 (and b!4724511 b!4724436)))

(assert (=> bs!1115246 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215939))))

(declare-fun bs!1115247 () Bool)

(assert (= bs!1115247 (and b!4724511 d!1504820)))

(assert (=> bs!1115247 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889388) (= lambda!215957 lambda!215937))))

(declare-fun bs!1115248 () Bool)

(assert (= bs!1115248 (and b!4724511 b!4724320)))

(assert (=> bs!1115248 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215918))))

(declare-fun bs!1115249 () Bool)

(assert (= bs!1115249 (and b!4724511 b!4724400)))

(assert (=> bs!1115249 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889398) (= lambda!215957 lambda!215936))))

(declare-fun bs!1115250 () Bool)

(assert (= bs!1115250 (and b!4724511 d!1504736)))

(assert (=> bs!1115250 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889297) (= lambda!215957 lambda!215923))))

(assert (=> bs!1115237 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889307) (= lambda!215957 lambda!215922))))

(declare-fun bs!1115251 () Bool)

(assert (= bs!1115251 (and b!4724511 d!1504846)))

(assert (=> bs!1115251 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215949))))

(declare-fun bs!1115252 () Bool)

(assert (= bs!1115252 (and b!4724511 b!4724439)))

(assert (=> bs!1115252 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889465) (= lambda!215957 lambda!215945))))

(assert (=> bs!1115252 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215944))))

(assert (=> bs!1115239 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889444) (= lambda!215957 lambda!215941))))

(assert (=> bs!1115249 (= (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889044) (= lambda!215957 lambda!215935))))

(declare-fun bs!1115253 () Bool)

(assert (= bs!1115253 (and b!4724511 d!1504730)))

(assert (=> bs!1115253 (not (= lambda!215957 lambda!215835))))

(assert (=> b!4724511 true))

(declare-fun lambda!215958 () Int)

(declare-fun lt!1889503 () ListMap!5285)

(assert (=> b!4724511 (= (= lt!1889503 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215958 lambda!215957))))

(assert (=> bs!1115235 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215930))))

(assert (=> bs!1115236 (= (= lt!1889503 lt!1889434) (= lambda!215958 lambda!215942))))

(assert (=> bs!1115237 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215920))))

(assert (=> bs!1115238 (= (= lt!1889503 lt!1889455) (= lambda!215958 lambda!215946))))

(assert (=> bs!1115239 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215940))))

(assert (=> bs!1115240 (= (= lt!1889503 lt!1889351) (= lambda!215958 lambda!215933))))

(assert (=> bs!1115241 (= (= lt!1889503 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215958 lambda!215956))))

(assert (=> bs!1115242 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215934))))

(assert (=> bs!1115243 (= (= lt!1889503 lt!1889361) (= lambda!215958 lambda!215932))))

(assert (=> bs!1115244 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215943))))

(assert (=> bs!1115245 (not (= lambda!215958 lambda!215834))))

(assert (=> bs!1115243 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215931))))

(assert (=> bs!1115246 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215939))))

(assert (=> bs!1115247 (= (= lt!1889503 lt!1889388) (= lambda!215958 lambda!215937))))

(assert (=> bs!1115248 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215918))))

(assert (=> bs!1115249 (= (= lt!1889503 lt!1889398) (= lambda!215958 lambda!215936))))

(assert (=> bs!1115250 (= (= lt!1889503 lt!1889297) (= lambda!215958 lambda!215923))))

(assert (=> bs!1115237 (= (= lt!1889503 lt!1889307) (= lambda!215958 lambda!215922))))

(assert (=> bs!1115251 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215949))))

(assert (=> bs!1115252 (= (= lt!1889503 lt!1889465) (= lambda!215958 lambda!215945))))

(assert (=> bs!1115252 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215944))))

(assert (=> bs!1115239 (= (= lt!1889503 lt!1889444) (= lambda!215958 lambda!215941))))

(assert (=> bs!1115249 (= (= lt!1889503 lt!1889044) (= lambda!215958 lambda!215935))))

(assert (=> bs!1115253 (not (= lambda!215958 lambda!215835))))

(assert (=> b!4724511 true))

(declare-fun bs!1115254 () Bool)

(declare-fun d!1504864 () Bool)

(assert (= bs!1115254 (and d!1504864 b!4724511)))

(declare-fun lt!1889493 () ListMap!5285)

(declare-fun lambda!215959 () Int)

(assert (=> bs!1115254 (= (= lt!1889493 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215959 lambda!215957))))

(declare-fun bs!1115255 () Bool)

(assert (= bs!1115255 (and d!1504864 b!4724389)))

(assert (=> bs!1115255 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215930))))

(declare-fun bs!1115256 () Bool)

(assert (= bs!1115256 (and d!1504864 d!1504826)))

(assert (=> bs!1115256 (= (= lt!1889493 lt!1889434) (= lambda!215959 lambda!215942))))

(declare-fun bs!1115257 () Bool)

(assert (= bs!1115257 (and d!1504864 b!4724318)))

(assert (=> bs!1115257 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215920))))

(declare-fun bs!1115258 () Bool)

(assert (= bs!1115258 (and d!1504864 d!1504828)))

(assert (=> bs!1115258 (= (= lt!1889493 lt!1889455) (= lambda!215959 lambda!215946))))

(declare-fun bs!1115259 () Bool)

(assert (= bs!1115259 (and d!1504864 b!4724434)))

(assert (=> bs!1115259 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215940))))

(declare-fun bs!1115260 () Bool)

(assert (= bs!1115260 (and d!1504864 d!1504812)))

(assert (=> bs!1115260 (= (= lt!1889493 lt!1889351) (= lambda!215959 lambda!215933))))

(assert (=> bs!1115254 (= (= lt!1889493 lt!1889503) (= lambda!215959 lambda!215958))))

(declare-fun bs!1115261 () Bool)

(assert (= bs!1115261 (and d!1504864 b!4724513)))

(assert (=> bs!1115261 (= (= lt!1889493 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215959 lambda!215956))))

(declare-fun bs!1115262 () Bool)

(assert (= bs!1115262 (and d!1504864 b!4724402)))

(assert (=> bs!1115262 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215934))))

(declare-fun bs!1115263 () Bool)

(assert (= bs!1115263 (and d!1504864 b!4724387)))

(assert (=> bs!1115263 (= (= lt!1889493 lt!1889361) (= lambda!215959 lambda!215932))))

(declare-fun bs!1115264 () Bool)

(assert (= bs!1115264 (and d!1504864 b!4724441)))

(assert (=> bs!1115264 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215943))))

(declare-fun bs!1115265 () Bool)

(assert (= bs!1115265 (and d!1504864 d!1504728)))

(assert (=> bs!1115265 (not (= lambda!215959 lambda!215834))))

(assert (=> bs!1115263 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215931))))

(declare-fun bs!1115266 () Bool)

(assert (= bs!1115266 (and d!1504864 b!4724436)))

(assert (=> bs!1115266 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215939))))

(declare-fun bs!1115267 () Bool)

(assert (= bs!1115267 (and d!1504864 d!1504820)))

(assert (=> bs!1115267 (= (= lt!1889493 lt!1889388) (= lambda!215959 lambda!215937))))

(declare-fun bs!1115268 () Bool)

(assert (= bs!1115268 (and d!1504864 b!4724320)))

(assert (=> bs!1115268 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215918))))

(declare-fun bs!1115269 () Bool)

(assert (= bs!1115269 (and d!1504864 b!4724400)))

(assert (=> bs!1115269 (= (= lt!1889493 lt!1889398) (= lambda!215959 lambda!215936))))

(declare-fun bs!1115270 () Bool)

(assert (= bs!1115270 (and d!1504864 d!1504736)))

(assert (=> bs!1115270 (= (= lt!1889493 lt!1889297) (= lambda!215959 lambda!215923))))

(assert (=> bs!1115257 (= (= lt!1889493 lt!1889307) (= lambda!215959 lambda!215922))))

(declare-fun bs!1115271 () Bool)

(assert (= bs!1115271 (and d!1504864 d!1504846)))

(assert (=> bs!1115271 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215949))))

(declare-fun bs!1115272 () Bool)

(assert (= bs!1115272 (and d!1504864 b!4724439)))

(assert (=> bs!1115272 (= (= lt!1889493 lt!1889465) (= lambda!215959 lambda!215945))))

(assert (=> bs!1115272 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215944))))

(assert (=> bs!1115259 (= (= lt!1889493 lt!1889444) (= lambda!215959 lambda!215941))))

(assert (=> bs!1115269 (= (= lt!1889493 lt!1889044) (= lambda!215959 lambda!215935))))

(declare-fun bs!1115273 () Bool)

(assert (= bs!1115273 (and d!1504864 d!1504730)))

(assert (=> bs!1115273 (not (= lambda!215959 lambda!215835))))

(assert (=> d!1504864 true))

(declare-fun bm!330508 () Bool)

(declare-fun call!330513 () Unit!130501)

(assert (=> bm!330508 (= call!330513 (lemmaContainsAllItsOwnKeys!799 (+!2271 lt!1889044 (h!59185 oldBucket!34))))))

(declare-fun b!4724510 () Bool)

(declare-fun e!2946588 () Bool)

(assert (=> b!4724510 (= e!2946588 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 oldBucket!34))) lambda!215958))))

(declare-fun b!4724512 () Bool)

(declare-fun e!2946589 () Bool)

(assert (=> b!4724512 (= e!2946589 (invariantList!1513 (toList!5921 lt!1889493)))))

(declare-fun e!2946590 () ListMap!5285)

(assert (=> b!4724513 (= e!2946590 (+!2271 lt!1889044 (h!59185 oldBucket!34)))))

(declare-fun lt!1889496 () Unit!130501)

(assert (=> b!4724513 (= lt!1889496 call!330513)))

(declare-fun call!330515 () Bool)

(assert (=> b!4724513 call!330515))

(declare-fun lt!1889510 () Unit!130501)

(assert (=> b!4724513 (= lt!1889510 lt!1889496)))

(declare-fun call!330514 () Bool)

(assert (=> b!4724513 call!330514))

(declare-fun lt!1889509 () Unit!130501)

(declare-fun Unit!130621 () Unit!130501)

(assert (=> b!4724513 (= lt!1889509 Unit!130621)))

(declare-fun b!4724514 () Bool)

(declare-fun res!1999094 () Bool)

(assert (=> b!4724514 (=> (not res!1999094) (not e!2946589))))

(assert (=> b!4724514 (= res!1999094 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 oldBucket!34))) lambda!215959))))

(declare-fun bm!330509 () Bool)

(declare-fun lt!1889508 () ListMap!5285)

(declare-fun c!806879 () Bool)

(assert (=> bm!330509 (= call!330515 (forall!11596 (ite c!806879 (toList!5921 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (toList!5921 lt!1889508)) (ite c!806879 lambda!215956 lambda!215958)))))

(declare-fun bm!330510 () Bool)

(assert (=> bm!330510 (= call!330514 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (ite c!806879 lambda!215956 lambda!215957)))))

(assert (=> d!1504864 e!2946589))

(declare-fun res!1999096 () Bool)

(assert (=> d!1504864 (=> (not res!1999096) (not e!2946589))))

(assert (=> d!1504864 (= res!1999096 (forall!11596 (t!360230 oldBucket!34) lambda!215959))))

(assert (=> d!1504864 (= lt!1889493 e!2946590)))

(assert (=> d!1504864 (= c!806879 ((_ is Nil!52836) (t!360230 oldBucket!34)))))

(assert (=> d!1504864 (noDuplicateKeys!2016 (t!360230 oldBucket!34))))

(assert (=> d!1504864 (= (addToMapMapFromBucket!1446 (t!360230 oldBucket!34) (+!2271 lt!1889044 (h!59185 oldBucket!34))) lt!1889493)))

(assert (=> b!4724511 (= e!2946590 lt!1889503)))

(assert (=> b!4724511 (= lt!1889508 (+!2271 (+!2271 lt!1889044 (h!59185 oldBucket!34)) (h!59185 (t!360230 oldBucket!34))))))

(assert (=> b!4724511 (= lt!1889503 (addToMapMapFromBucket!1446 (t!360230 (t!360230 oldBucket!34)) (+!2271 (+!2271 lt!1889044 (h!59185 oldBucket!34)) (h!59185 (t!360230 oldBucket!34)))))))

(declare-fun lt!1889512 () Unit!130501)

(assert (=> b!4724511 (= lt!1889512 call!330513)))

(assert (=> b!4724511 call!330514))

(declare-fun lt!1889511 () Unit!130501)

(assert (=> b!4724511 (= lt!1889511 lt!1889512)))

(assert (=> b!4724511 call!330515))

(declare-fun lt!1889498 () Unit!130501)

(declare-fun Unit!130622 () Unit!130501)

(assert (=> b!4724511 (= lt!1889498 Unit!130622)))

(assert (=> b!4724511 (forall!11596 (t!360230 (t!360230 oldBucket!34)) lambda!215958)))

(declare-fun lt!1889504 () Unit!130501)

(declare-fun Unit!130623 () Unit!130501)

(assert (=> b!4724511 (= lt!1889504 Unit!130623)))

(declare-fun lt!1889499 () Unit!130501)

(declare-fun Unit!130624 () Unit!130501)

(assert (=> b!4724511 (= lt!1889499 Unit!130624)))

(declare-fun lt!1889502 () Unit!130501)

(assert (=> b!4724511 (= lt!1889502 (forallContained!3643 (toList!5921 lt!1889508) lambda!215958 (h!59185 (t!360230 oldBucket!34))))))

(assert (=> b!4724511 (contains!16183 lt!1889508 (_1!30523 (h!59185 (t!360230 oldBucket!34))))))

(declare-fun lt!1889501 () Unit!130501)

(declare-fun Unit!130625 () Unit!130501)

(assert (=> b!4724511 (= lt!1889501 Unit!130625)))

(assert (=> b!4724511 (contains!16183 lt!1889503 (_1!30523 (h!59185 (t!360230 oldBucket!34))))))

(declare-fun lt!1889494 () Unit!130501)

(declare-fun Unit!130626 () Unit!130501)

(assert (=> b!4724511 (= lt!1889494 Unit!130626)))

(assert (=> b!4724511 (forall!11596 (t!360230 oldBucket!34) lambda!215958)))

(declare-fun lt!1889495 () Unit!130501)

(declare-fun Unit!130627 () Unit!130501)

(assert (=> b!4724511 (= lt!1889495 Unit!130627)))

(assert (=> b!4724511 (forall!11596 (toList!5921 lt!1889508) lambda!215958)))

(declare-fun lt!1889506 () Unit!130501)

(declare-fun Unit!130628 () Unit!130501)

(assert (=> b!4724511 (= lt!1889506 Unit!130628)))

(declare-fun lt!1889500 () Unit!130501)

(declare-fun Unit!130629 () Unit!130501)

(assert (=> b!4724511 (= lt!1889500 Unit!130629)))

(declare-fun lt!1889507 () Unit!130501)

(assert (=> b!4724511 (= lt!1889507 (addForallContainsKeyThenBeforeAdding!798 (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889503 (_1!30523 (h!59185 (t!360230 oldBucket!34))) (_2!30523 (h!59185 (t!360230 oldBucket!34)))))))

(assert (=> b!4724511 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 oldBucket!34))) lambda!215958)))

(declare-fun lt!1889497 () Unit!130501)

(assert (=> b!4724511 (= lt!1889497 lt!1889507)))

(assert (=> b!4724511 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 oldBucket!34))) lambda!215958)))

(declare-fun lt!1889513 () Unit!130501)

(declare-fun Unit!130630 () Unit!130501)

(assert (=> b!4724511 (= lt!1889513 Unit!130630)))

(declare-fun res!1999095 () Bool)

(assert (=> b!4724511 (= res!1999095 (forall!11596 (t!360230 oldBucket!34) lambda!215958))))

(assert (=> b!4724511 (=> (not res!1999095) (not e!2946588))))

(assert (=> b!4724511 e!2946588))

(declare-fun lt!1889505 () Unit!130501)

(declare-fun Unit!130631 () Unit!130501)

(assert (=> b!4724511 (= lt!1889505 Unit!130631)))

(assert (= (and d!1504864 c!806879) b!4724513))

(assert (= (and d!1504864 (not c!806879)) b!4724511))

(assert (= (and b!4724511 res!1999095) b!4724510))

(assert (= (or b!4724513 b!4724511) bm!330508))

(assert (= (or b!4724513 b!4724511) bm!330510))

(assert (= (or b!4724513 b!4724511) bm!330509))

(assert (= (and d!1504864 res!1999096) b!4724514))

(assert (= (and b!4724514 res!1999094) b!4724512))

(declare-fun m!5662387 () Bool)

(assert (=> b!4724512 m!5662387))

(assert (=> bm!330508 m!5662185))

(declare-fun m!5662389 () Bool)

(assert (=> bm!330508 m!5662389))

(declare-fun m!5662391 () Bool)

(assert (=> b!4724514 m!5662391))

(declare-fun m!5662393 () Bool)

(assert (=> d!1504864 m!5662393))

(assert (=> d!1504864 m!5661751))

(declare-fun m!5662395 () Bool)

(assert (=> b!4724511 m!5662395))

(declare-fun m!5662397 () Bool)

(assert (=> b!4724511 m!5662397))

(declare-fun m!5662399 () Bool)

(assert (=> b!4724511 m!5662399))

(declare-fun m!5662401 () Bool)

(assert (=> b!4724511 m!5662401))

(declare-fun m!5662403 () Bool)

(assert (=> b!4724511 m!5662403))

(assert (=> b!4724511 m!5662395))

(assert (=> b!4724511 m!5662185))

(assert (=> b!4724511 m!5662397))

(declare-fun m!5662405 () Bool)

(assert (=> b!4724511 m!5662405))

(declare-fun m!5662407 () Bool)

(assert (=> b!4724511 m!5662407))

(assert (=> b!4724511 m!5662185))

(declare-fun m!5662409 () Bool)

(assert (=> b!4724511 m!5662409))

(declare-fun m!5662411 () Bool)

(assert (=> b!4724511 m!5662411))

(declare-fun m!5662413 () Bool)

(assert (=> b!4724511 m!5662413))

(assert (=> b!4724511 m!5662405))

(declare-fun m!5662415 () Bool)

(assert (=> bm!330509 m!5662415))

(assert (=> b!4724510 m!5662405))

(declare-fun m!5662417 () Bool)

(assert (=> bm!330510 m!5662417))

(assert (=> b!4724400 d!1504864))

(declare-fun d!1504870 () Bool)

(declare-fun res!1999102 () Bool)

(declare-fun e!2946595 () Bool)

(assert (=> d!1504870 (=> res!1999102 e!2946595)))

(assert (=> d!1504870 (= res!1999102 ((_ is Nil!52836) oldBucket!34))))

(assert (=> d!1504870 (= (forall!11596 oldBucket!34 lambda!215936) e!2946595)))

(declare-fun b!4724521 () Bool)

(declare-fun e!2946596 () Bool)

(assert (=> b!4724521 (= e!2946595 e!2946596)))

(declare-fun res!1999103 () Bool)

(assert (=> b!4724521 (=> (not res!1999103) (not e!2946596))))

(assert (=> b!4724521 (= res!1999103 (dynLambda!21825 lambda!215936 (h!59185 oldBucket!34)))))

(declare-fun b!4724522 () Bool)

(assert (=> b!4724522 (= e!2946596 (forall!11596 (t!360230 oldBucket!34) lambda!215936))))

(assert (= (and d!1504870 (not res!1999102)) b!4724521))

(assert (= (and b!4724521 res!1999103) b!4724522))

(declare-fun b_lambda!179217 () Bool)

(assert (=> (not b_lambda!179217) (not b!4724521)))

(declare-fun m!5662419 () Bool)

(assert (=> b!4724521 m!5662419))

(assert (=> b!4724522 m!5662199))

(assert (=> b!4724400 d!1504870))

(declare-fun d!1504872 () Bool)

(assert (=> d!1504872 (dynLambda!21825 lambda!215936 (h!59185 oldBucket!34))))

(declare-fun lt!1889525 () Unit!130501)

(declare-fun choose!33346 (List!52960 Int tuple2!54458) Unit!130501)

(assert (=> d!1504872 (= lt!1889525 (choose!33346 (toList!5921 lt!1889403) lambda!215936 (h!59185 oldBucket!34)))))

(declare-fun e!2946599 () Bool)

(assert (=> d!1504872 e!2946599))

(declare-fun res!1999106 () Bool)

(assert (=> d!1504872 (=> (not res!1999106) (not e!2946599))))

(assert (=> d!1504872 (= res!1999106 (forall!11596 (toList!5921 lt!1889403) lambda!215936))))

(assert (=> d!1504872 (= (forallContained!3643 (toList!5921 lt!1889403) lambda!215936 (h!59185 oldBucket!34)) lt!1889525)))

(declare-fun b!4724525 () Bool)

(assert (=> b!4724525 (= e!2946599 (contains!16186 (toList!5921 lt!1889403) (h!59185 oldBucket!34)))))

(assert (= (and d!1504872 res!1999106) b!4724525))

(declare-fun b_lambda!179219 () Bool)

(assert (=> (not b_lambda!179219) (not d!1504872)))

(assert (=> d!1504872 m!5662419))

(declare-fun m!5662421 () Bool)

(assert (=> d!1504872 m!5662421))

(assert (=> d!1504872 m!5662189))

(declare-fun m!5662423 () Bool)

(assert (=> b!4724525 m!5662423))

(assert (=> b!4724400 d!1504872))

(declare-fun d!1504874 () Bool)

(declare-fun e!2946600 () Bool)

(assert (=> d!1504874 e!2946600))

(declare-fun res!1999108 () Bool)

(assert (=> d!1504874 (=> (not res!1999108) (not e!2946600))))

(declare-fun lt!1889527 () ListMap!5285)

(assert (=> d!1504874 (= res!1999108 (contains!16183 lt!1889527 (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun lt!1889529 () List!52960)

(assert (=> d!1504874 (= lt!1889527 (ListMap!5286 lt!1889529))))

(declare-fun lt!1889528 () Unit!130501)

(declare-fun lt!1889526 () Unit!130501)

(assert (=> d!1504874 (= lt!1889528 lt!1889526)))

(assert (=> d!1504874 (= (getValueByKey!1961 lt!1889529 (_1!30523 (h!59185 oldBucket!34))) (Some!12364 (_2!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1504874 (= lt!1889526 (lemmaContainsTupThenGetReturnValue!1088 lt!1889529 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1504874 (= lt!1889529 (insertNoDuplicatedKeys!596 (toList!5921 lt!1889044) (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1504874 (= (+!2271 lt!1889044 (h!59185 oldBucket!34)) lt!1889527)))

(declare-fun b!4724526 () Bool)

(declare-fun res!1999107 () Bool)

(assert (=> b!4724526 (=> (not res!1999107) (not e!2946600))))

(assert (=> b!4724526 (= res!1999107 (= (getValueByKey!1961 (toList!5921 lt!1889527) (_1!30523 (h!59185 oldBucket!34))) (Some!12364 (_2!30523 (h!59185 oldBucket!34)))))))

(declare-fun b!4724527 () Bool)

(assert (=> b!4724527 (= e!2946600 (contains!16186 (toList!5921 lt!1889527) (h!59185 oldBucket!34)))))

(assert (= (and d!1504874 res!1999108) b!4724526))

(assert (= (and b!4724526 res!1999107) b!4724527))

(declare-fun m!5662425 () Bool)

(assert (=> d!1504874 m!5662425))

(declare-fun m!5662427 () Bool)

(assert (=> d!1504874 m!5662427))

(declare-fun m!5662429 () Bool)

(assert (=> d!1504874 m!5662429))

(declare-fun m!5662431 () Bool)

(assert (=> d!1504874 m!5662431))

(declare-fun m!5662433 () Bool)

(assert (=> b!4724526 m!5662433))

(declare-fun m!5662435 () Bool)

(assert (=> b!4724527 m!5662435))

(assert (=> b!4724400 d!1504874))

(declare-fun d!1504876 () Bool)

(declare-fun res!1999109 () Bool)

(declare-fun e!2946601 () Bool)

(assert (=> d!1504876 (=> res!1999109 e!2946601)))

(assert (=> d!1504876 (= res!1999109 ((_ is Nil!52836) (toList!5921 lt!1889403)))))

(assert (=> d!1504876 (= (forall!11596 (toList!5921 lt!1889403) lambda!215936) e!2946601)))

(declare-fun b!4724528 () Bool)

(declare-fun e!2946602 () Bool)

(assert (=> b!4724528 (= e!2946601 e!2946602)))

(declare-fun res!1999110 () Bool)

(assert (=> b!4724528 (=> (not res!1999110) (not e!2946602))))

(assert (=> b!4724528 (= res!1999110 (dynLambda!21825 lambda!215936 (h!59185 (toList!5921 lt!1889403))))))

(declare-fun b!4724529 () Bool)

(assert (=> b!4724529 (= e!2946602 (forall!11596 (t!360230 (toList!5921 lt!1889403)) lambda!215936))))

(assert (= (and d!1504876 (not res!1999109)) b!4724528))

(assert (= (and b!4724528 res!1999110) b!4724529))

(declare-fun b_lambda!179221 () Bool)

(assert (=> (not b_lambda!179221) (not b!4724528)))

(declare-fun m!5662437 () Bool)

(assert (=> b!4724528 m!5662437))

(declare-fun m!5662439 () Bool)

(assert (=> b!4724529 m!5662439))

(assert (=> b!4724400 d!1504876))

(declare-fun bs!1115298 () Bool)

(declare-fun d!1504878 () Bool)

(assert (= bs!1115298 (and d!1504878 b!4724511)))

(declare-fun lambda!215970 () Int)

(assert (=> bs!1115298 (= (= lt!1889398 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215970 lambda!215957))))

(declare-fun bs!1115299 () Bool)

(assert (= bs!1115299 (and d!1504878 b!4724389)))

(assert (=> bs!1115299 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215930))))

(declare-fun bs!1115301 () Bool)

(assert (= bs!1115301 (and d!1504878 d!1504826)))

(assert (=> bs!1115301 (= (= lt!1889398 lt!1889434) (= lambda!215970 lambda!215942))))

(declare-fun bs!1115303 () Bool)

(assert (= bs!1115303 (and d!1504878 b!4724318)))

(assert (=> bs!1115303 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215920))))

(declare-fun bs!1115304 () Bool)

(assert (= bs!1115304 (and d!1504878 d!1504828)))

(assert (=> bs!1115304 (= (= lt!1889398 lt!1889455) (= lambda!215970 lambda!215946))))

(declare-fun bs!1115306 () Bool)

(assert (= bs!1115306 (and d!1504878 b!4724434)))

(assert (=> bs!1115306 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215940))))

(declare-fun bs!1115307 () Bool)

(assert (= bs!1115307 (and d!1504878 d!1504812)))

(assert (=> bs!1115307 (= (= lt!1889398 lt!1889351) (= lambda!215970 lambda!215933))))

(assert (=> bs!1115298 (= (= lt!1889398 lt!1889503) (= lambda!215970 lambda!215958))))

(declare-fun bs!1115309 () Bool)

(assert (= bs!1115309 (and d!1504878 b!4724513)))

(assert (=> bs!1115309 (= (= lt!1889398 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215970 lambda!215956))))

(declare-fun bs!1115310 () Bool)

(assert (= bs!1115310 (and d!1504878 b!4724402)))

(assert (=> bs!1115310 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215934))))

(declare-fun bs!1115312 () Bool)

(assert (= bs!1115312 (and d!1504878 b!4724441)))

(assert (=> bs!1115312 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215943))))

(declare-fun bs!1115313 () Bool)

(assert (= bs!1115313 (and d!1504878 d!1504728)))

(assert (=> bs!1115313 (not (= lambda!215970 lambda!215834))))

(declare-fun bs!1115315 () Bool)

(assert (= bs!1115315 (and d!1504878 b!4724387)))

(assert (=> bs!1115315 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215931))))

(declare-fun bs!1115316 () Bool)

(assert (= bs!1115316 (and d!1504878 d!1504864)))

(assert (=> bs!1115316 (= (= lt!1889398 lt!1889493) (= lambda!215970 lambda!215959))))

(assert (=> bs!1115315 (= (= lt!1889398 lt!1889361) (= lambda!215970 lambda!215932))))

(declare-fun bs!1115319 () Bool)

(assert (= bs!1115319 (and d!1504878 b!4724436)))

(assert (=> bs!1115319 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215939))))

(declare-fun bs!1115320 () Bool)

(assert (= bs!1115320 (and d!1504878 d!1504820)))

(assert (=> bs!1115320 (= (= lt!1889398 lt!1889388) (= lambda!215970 lambda!215937))))

(declare-fun bs!1115322 () Bool)

(assert (= bs!1115322 (and d!1504878 b!4724320)))

(assert (=> bs!1115322 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215918))))

(declare-fun bs!1115323 () Bool)

(assert (= bs!1115323 (and d!1504878 b!4724400)))

(assert (=> bs!1115323 (= lambda!215970 lambda!215936)))

(declare-fun bs!1115324 () Bool)

(assert (= bs!1115324 (and d!1504878 d!1504736)))

(assert (=> bs!1115324 (= (= lt!1889398 lt!1889297) (= lambda!215970 lambda!215923))))

(assert (=> bs!1115303 (= (= lt!1889398 lt!1889307) (= lambda!215970 lambda!215922))))

(declare-fun bs!1115325 () Bool)

(assert (= bs!1115325 (and d!1504878 d!1504846)))

(assert (=> bs!1115325 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215949))))

(declare-fun bs!1115326 () Bool)

(assert (= bs!1115326 (and d!1504878 b!4724439)))

(assert (=> bs!1115326 (= (= lt!1889398 lt!1889465) (= lambda!215970 lambda!215945))))

(assert (=> bs!1115326 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215944))))

(assert (=> bs!1115306 (= (= lt!1889398 lt!1889444) (= lambda!215970 lambda!215941))))

(assert (=> bs!1115323 (= (= lt!1889398 lt!1889044) (= lambda!215970 lambda!215935))))

(declare-fun bs!1115329 () Bool)

(assert (= bs!1115329 (and d!1504878 d!1504730)))

(assert (=> bs!1115329 (not (= lambda!215970 lambda!215835))))

(assert (=> d!1504878 true))

(assert (=> d!1504878 (forall!11596 (toList!5921 lt!1889044) lambda!215970)))

(declare-fun lt!1889554 () Unit!130501)

(declare-fun choose!33347 (ListMap!5285 ListMap!5285 K!14190 V!14436) Unit!130501)

(assert (=> d!1504878 (= lt!1889554 (choose!33347 lt!1889044 lt!1889398 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1504878 (forall!11596 (toList!5921 (+!2271 lt!1889044 (tuple2!54459 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))) lambda!215970)))

(assert (=> d!1504878 (= (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889398 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))) lt!1889554)))

(declare-fun bs!1115331 () Bool)

(assert (= bs!1115331 d!1504878))

(declare-fun m!5662449 () Bool)

(assert (=> bs!1115331 m!5662449))

(declare-fun m!5662451 () Bool)

(assert (=> bs!1115331 m!5662451))

(declare-fun m!5662453 () Bool)

(assert (=> bs!1115331 m!5662453))

(declare-fun m!5662455 () Bool)

(assert (=> bs!1115331 m!5662455))

(assert (=> b!4724400 d!1504878))

(declare-fun b!4724536 () Bool)

(declare-fun e!2946608 () Bool)

(declare-fun e!2946609 () Bool)

(assert (=> b!4724536 (= e!2946608 e!2946609)))

(declare-fun res!1999115 () Bool)

(assert (=> b!4724536 (=> (not res!1999115) (not e!2946609))))

(assert (=> b!4724536 (= res!1999115 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889398) (_1!30523 (h!59185 oldBucket!34)))))))

(declare-fun bm!330514 () Bool)

(declare-fun call!330519 () Bool)

(declare-fun e!2946611 () List!52963)

(assert (=> bm!330514 (= call!330519 (contains!16188 e!2946611 (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun c!806882 () Bool)

(declare-fun c!806881 () Bool)

(assert (=> bm!330514 (= c!806882 c!806881)))

(declare-fun d!1504882 () Bool)

(assert (=> d!1504882 e!2946608))

(declare-fun res!1999116 () Bool)

(assert (=> d!1504882 (=> res!1999116 e!2946608)))

(declare-fun e!2946606 () Bool)

(assert (=> d!1504882 (= res!1999116 e!2946606)))

(declare-fun res!1999114 () Bool)

(assert (=> d!1504882 (=> (not res!1999114) (not e!2946606))))

(declare-fun lt!1889558 () Bool)

(assert (=> d!1504882 (= res!1999114 (not lt!1889558))))

(declare-fun lt!1889560 () Bool)

(assert (=> d!1504882 (= lt!1889558 lt!1889560)))

(declare-fun lt!1889557 () Unit!130501)

(declare-fun e!2946607 () Unit!130501)

(assert (=> d!1504882 (= lt!1889557 e!2946607)))

(assert (=> d!1504882 (= c!806881 lt!1889560)))

(assert (=> d!1504882 (= lt!1889560 (containsKey!3379 (toList!5921 lt!1889398) (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1504882 (= (contains!16183 lt!1889398 (_1!30523 (h!59185 oldBucket!34))) lt!1889558)))

(declare-fun b!4724537 () Bool)

(assert (=> b!4724537 (= e!2946611 (keys!18978 lt!1889398))))

(declare-fun b!4724538 () Bool)

(assert (=> b!4724538 (= e!2946611 (getKeysList!953 (toList!5921 lt!1889398)))))

(declare-fun b!4724539 () Bool)

(declare-fun lt!1889562 () Unit!130501)

(assert (=> b!4724539 (= e!2946607 lt!1889562)))

(declare-fun lt!1889561 () Unit!130501)

(assert (=> b!4724539 (= lt!1889561 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889398) (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> b!4724539 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889398) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun lt!1889559 () Unit!130501)

(assert (=> b!4724539 (= lt!1889559 lt!1889561)))

(assert (=> b!4724539 (= lt!1889562 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889398) (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> b!4724539 call!330519))

(declare-fun b!4724540 () Bool)

(assert (=> b!4724540 (= e!2946606 (not (contains!16188 (keys!18978 lt!1889398) (_1!30523 (h!59185 oldBucket!34)))))))

(declare-fun b!4724541 () Bool)

(assert (=> b!4724541 false))

(declare-fun lt!1889556 () Unit!130501)

(declare-fun lt!1889555 () Unit!130501)

(assert (=> b!4724541 (= lt!1889556 lt!1889555)))

(assert (=> b!4724541 (containsKey!3379 (toList!5921 lt!1889398) (_1!30523 (h!59185 oldBucket!34)))))

(assert (=> b!4724541 (= lt!1889555 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889398) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun e!2946610 () Unit!130501)

(declare-fun Unit!130643 () Unit!130501)

(assert (=> b!4724541 (= e!2946610 Unit!130643)))

(declare-fun b!4724542 () Bool)

(assert (=> b!4724542 (= e!2946607 e!2946610)))

(declare-fun c!806883 () Bool)

(assert (=> b!4724542 (= c!806883 call!330519)))

(declare-fun b!4724543 () Bool)

(assert (=> b!4724543 (= e!2946609 (contains!16188 (keys!18978 lt!1889398) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun b!4724544 () Bool)

(declare-fun Unit!130644 () Unit!130501)

(assert (=> b!4724544 (= e!2946610 Unit!130644)))

(assert (= (and d!1504882 c!806881) b!4724539))

(assert (= (and d!1504882 (not c!806881)) b!4724542))

(assert (= (and b!4724542 c!806883) b!4724541))

(assert (= (and b!4724542 (not c!806883)) b!4724544))

(assert (= (or b!4724539 b!4724542) bm!330514))

(assert (= (and bm!330514 c!806882) b!4724538))

(assert (= (and bm!330514 (not c!806882)) b!4724537))

(assert (= (and d!1504882 res!1999114) b!4724540))

(assert (= (and d!1504882 (not res!1999116)) b!4724536))

(assert (= (and b!4724536 res!1999115) b!4724543))

(declare-fun m!5662457 () Bool)

(assert (=> b!4724537 m!5662457))

(assert (=> b!4724543 m!5662457))

(assert (=> b!4724543 m!5662457))

(declare-fun m!5662459 () Bool)

(assert (=> b!4724543 m!5662459))

(declare-fun m!5662461 () Bool)

(assert (=> b!4724536 m!5662461))

(assert (=> b!4724536 m!5662461))

(declare-fun m!5662463 () Bool)

(assert (=> b!4724536 m!5662463))

(declare-fun m!5662465 () Bool)

(assert (=> b!4724538 m!5662465))

(declare-fun m!5662467 () Bool)

(assert (=> d!1504882 m!5662467))

(declare-fun m!5662469 () Bool)

(assert (=> b!4724539 m!5662469))

(assert (=> b!4724539 m!5662461))

(assert (=> b!4724539 m!5662461))

(assert (=> b!4724539 m!5662463))

(declare-fun m!5662471 () Bool)

(assert (=> b!4724539 m!5662471))

(assert (=> b!4724540 m!5662457))

(assert (=> b!4724540 m!5662457))

(assert (=> b!4724540 m!5662459))

(declare-fun m!5662473 () Bool)

(assert (=> bm!330514 m!5662473))

(assert (=> b!4724541 m!5662467))

(declare-fun m!5662475 () Bool)

(assert (=> b!4724541 m!5662475))

(assert (=> b!4724400 d!1504882))

(declare-fun d!1504884 () Bool)

(declare-fun res!1999117 () Bool)

(declare-fun e!2946612 () Bool)

(assert (=> d!1504884 (=> res!1999117 e!2946612)))

(assert (=> d!1504884 (= res!1999117 ((_ is Nil!52836) (t!360230 oldBucket!34)))))

(assert (=> d!1504884 (= (forall!11596 (t!360230 oldBucket!34) lambda!215936) e!2946612)))

(declare-fun b!4724545 () Bool)

(declare-fun e!2946613 () Bool)

(assert (=> b!4724545 (= e!2946612 e!2946613)))

(declare-fun res!1999118 () Bool)

(assert (=> b!4724545 (=> (not res!1999118) (not e!2946613))))

(assert (=> b!4724545 (= res!1999118 (dynLambda!21825 lambda!215936 (h!59185 (t!360230 oldBucket!34))))))

(declare-fun b!4724546 () Bool)

(assert (=> b!4724546 (= e!2946613 (forall!11596 (t!360230 (t!360230 oldBucket!34)) lambda!215936))))

(assert (= (and d!1504884 (not res!1999117)) b!4724545))

(assert (= (and b!4724545 res!1999118) b!4724546))

(declare-fun b_lambda!179223 () Bool)

(assert (=> (not b_lambda!179223) (not b!4724545)))

(declare-fun m!5662477 () Bool)

(assert (=> b!4724545 m!5662477))

(declare-fun m!5662479 () Bool)

(assert (=> b!4724546 m!5662479))

(assert (=> b!4724400 d!1504884))

(declare-fun d!1504886 () Bool)

(declare-fun res!1999119 () Bool)

(declare-fun e!2946614 () Bool)

(assert (=> d!1504886 (=> res!1999119 e!2946614)))

(assert (=> d!1504886 (= res!1999119 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504886 (= (forall!11596 (toList!5921 lt!1889044) lambda!215936) e!2946614)))

(declare-fun b!4724547 () Bool)

(declare-fun e!2946615 () Bool)

(assert (=> b!4724547 (= e!2946614 e!2946615)))

(declare-fun res!1999120 () Bool)

(assert (=> b!4724547 (=> (not res!1999120) (not e!2946615))))

(assert (=> b!4724547 (= res!1999120 (dynLambda!21825 lambda!215936 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724548 () Bool)

(assert (=> b!4724548 (= e!2946615 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215936))))

(assert (= (and d!1504886 (not res!1999119)) b!4724547))

(assert (= (and b!4724547 res!1999120) b!4724548))

(declare-fun b_lambda!179225 () Bool)

(assert (=> (not b_lambda!179225) (not b!4724547)))

(declare-fun m!5662481 () Bool)

(assert (=> b!4724547 m!5662481))

(declare-fun m!5662483 () Bool)

(assert (=> b!4724548 m!5662483))

(assert (=> b!4724400 d!1504886))

(declare-fun d!1504888 () Bool)

(declare-fun res!1999121 () Bool)

(declare-fun e!2946616 () Bool)

(assert (=> d!1504888 (=> res!1999121 e!2946616)))

(assert (=> d!1504888 (= res!1999121 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504888 (= (forall!11596 (toList!5921 lt!1889044) lambda!215932) e!2946616)))

(declare-fun b!4724549 () Bool)

(declare-fun e!2946617 () Bool)

(assert (=> b!4724549 (= e!2946616 e!2946617)))

(declare-fun res!1999122 () Bool)

(assert (=> b!4724549 (=> (not res!1999122) (not e!2946617))))

(assert (=> b!4724549 (= res!1999122 (dynLambda!21825 lambda!215932 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724550 () Bool)

(assert (=> b!4724550 (= e!2946617 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215932))))

(assert (= (and d!1504888 (not res!1999121)) b!4724549))

(assert (= (and b!4724549 res!1999122) b!4724550))

(declare-fun b_lambda!179227 () Bool)

(assert (=> (not b_lambda!179227) (not b!4724549)))

(declare-fun m!5662485 () Bool)

(assert (=> b!4724549 m!5662485))

(declare-fun m!5662487 () Bool)

(assert (=> b!4724550 m!5662487))

(assert (=> b!4724386 d!1504888))

(declare-fun d!1504890 () Bool)

(assert (=> d!1504890 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889046) key!4653))))

(declare-fun lt!1889565 () Unit!130501)

(declare-fun choose!33348 (List!52960 K!14190) Unit!130501)

(assert (=> d!1504890 (= lt!1889565 (choose!33348 (toList!5921 lt!1889046) key!4653))))

(assert (=> d!1504890 (invariantList!1513 (toList!5921 lt!1889046))))

(assert (=> d!1504890 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889046) key!4653) lt!1889565)))

(declare-fun bs!1115347 () Bool)

(assert (= bs!1115347 d!1504890))

(assert (=> bs!1115347 m!5662211))

(assert (=> bs!1115347 m!5662211))

(assert (=> bs!1115347 m!5662213))

(declare-fun m!5662489 () Bool)

(assert (=> bs!1115347 m!5662489))

(declare-fun m!5662491 () Bool)

(assert (=> bs!1115347 m!5662491))

(assert (=> b!4724425 d!1504890))

(assert (=> b!4724425 d!1504840))

(assert (=> b!4724425 d!1504842))

(declare-fun d!1504892 () Bool)

(assert (=> d!1504892 (contains!16188 (getKeysList!953 (toList!5921 lt!1889046)) key!4653)))

(declare-fun lt!1889568 () Unit!130501)

(declare-fun choose!33349 (List!52960 K!14190) Unit!130501)

(assert (=> d!1504892 (= lt!1889568 (choose!33349 (toList!5921 lt!1889046) key!4653))))

(assert (=> d!1504892 (invariantList!1513 (toList!5921 lt!1889046))))

(assert (=> d!1504892 (= (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889046) key!4653) lt!1889568)))

(declare-fun bs!1115352 () Bool)

(assert (= bs!1115352 d!1504892))

(assert (=> bs!1115352 m!5662215))

(assert (=> bs!1115352 m!5662215))

(declare-fun m!5662493 () Bool)

(assert (=> bs!1115352 m!5662493))

(declare-fun m!5662495 () Bool)

(assert (=> bs!1115352 m!5662495))

(assert (=> bs!1115352 m!5662491))

(assert (=> b!4724425 d!1504892))

(declare-fun d!1504894 () Bool)

(declare-fun res!1999123 () Bool)

(declare-fun e!2946618 () Bool)

(assert (=> d!1504894 (=> res!1999123 e!2946618)))

(assert (=> d!1504894 (= res!1999123 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504894 (= (forall!11596 (toList!5921 lt!1889044) (ite c!806868 lambda!215939 lambda!215940)) e!2946618)))

(declare-fun b!4724551 () Bool)

(declare-fun e!2946619 () Bool)

(assert (=> b!4724551 (= e!2946618 e!2946619)))

(declare-fun res!1999124 () Bool)

(assert (=> b!4724551 (=> (not res!1999124) (not e!2946619))))

(assert (=> b!4724551 (= res!1999124 (dynLambda!21825 (ite c!806868 lambda!215939 lambda!215940) (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724552 () Bool)

(assert (=> b!4724552 (= e!2946619 (forall!11596 (t!360230 (toList!5921 lt!1889044)) (ite c!806868 lambda!215939 lambda!215940)))))

(assert (= (and d!1504894 (not res!1999123)) b!4724551))

(assert (= (and b!4724551 res!1999124) b!4724552))

(declare-fun b_lambda!179229 () Bool)

(assert (=> (not b_lambda!179229) (not b!4724551)))

(declare-fun m!5662497 () Bool)

(assert (=> b!4724551 m!5662497))

(declare-fun m!5662499 () Bool)

(assert (=> b!4724552 m!5662499))

(assert (=> bm!330503 d!1504894))

(declare-fun d!1504896 () Bool)

(declare-fun res!1999125 () Bool)

(declare-fun e!2946620 () Bool)

(assert (=> d!1504896 (=> res!1999125 e!2946620)))

(assert (=> d!1504896 (= res!1999125 (and ((_ is Cons!52836) (t!360230 oldBucket!34)) (= (_1!30523 (h!59185 (t!360230 oldBucket!34))) (_1!30523 (h!59185 oldBucket!34)))))))

(assert (=> d!1504896 (= (containsKey!3375 (t!360230 oldBucket!34) (_1!30523 (h!59185 oldBucket!34))) e!2946620)))

(declare-fun b!4724553 () Bool)

(declare-fun e!2946621 () Bool)

(assert (=> b!4724553 (= e!2946620 e!2946621)))

(declare-fun res!1999126 () Bool)

(assert (=> b!4724553 (=> (not res!1999126) (not e!2946621))))

(assert (=> b!4724553 (= res!1999126 ((_ is Cons!52836) (t!360230 oldBucket!34)))))

(declare-fun b!4724554 () Bool)

(assert (=> b!4724554 (= e!2946621 (containsKey!3375 (t!360230 (t!360230 oldBucket!34)) (_1!30523 (h!59185 oldBucket!34))))))

(assert (= (and d!1504896 (not res!1999125)) b!4724553))

(assert (= (and b!4724553 res!1999126) b!4724554))

(declare-fun m!5662501 () Bool)

(assert (=> b!4724554 m!5662501))

(assert (=> b!4724219 d!1504896))

(declare-fun bs!1115353 () Bool)

(declare-fun b!4724558 () Bool)

(assert (= bs!1115353 (and b!4724558 b!4724511)))

(declare-fun lambda!215973 () Int)

(assert (=> bs!1115353 (= (= (extractMap!2042 (t!360231 lt!1889048)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215973 lambda!215957))))

(declare-fun bs!1115355 () Bool)

(assert (= bs!1115355 (and b!4724558 b!4724389)))

(assert (=> bs!1115355 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215930))))

(declare-fun bs!1115357 () Bool)

(assert (= bs!1115357 (and b!4724558 d!1504826)))

(assert (=> bs!1115357 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889434) (= lambda!215973 lambda!215942))))

(declare-fun bs!1115359 () Bool)

(assert (= bs!1115359 (and b!4724558 b!4724318)))

(assert (=> bs!1115359 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215920))))

(declare-fun bs!1115361 () Bool)

(assert (= bs!1115361 (and b!4724558 d!1504828)))

(assert (=> bs!1115361 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889455) (= lambda!215973 lambda!215946))))

(declare-fun bs!1115363 () Bool)

(assert (= bs!1115363 (and b!4724558 b!4724434)))

(assert (=> bs!1115363 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215940))))

(declare-fun bs!1115365 () Bool)

(assert (= bs!1115365 (and b!4724558 d!1504812)))

(assert (=> bs!1115365 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889351) (= lambda!215973 lambda!215933))))

(assert (=> bs!1115353 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889503) (= lambda!215973 lambda!215958))))

(declare-fun bs!1115368 () Bool)

(assert (= bs!1115368 (and b!4724558 b!4724513)))

(assert (=> bs!1115368 (= (= (extractMap!2042 (t!360231 lt!1889048)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215973 lambda!215956))))

(declare-fun bs!1115370 () Bool)

(assert (= bs!1115370 (and b!4724558 d!1504878)))

(assert (=> bs!1115370 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889398) (= lambda!215973 lambda!215970))))

(declare-fun bs!1115371 () Bool)

(assert (= bs!1115371 (and b!4724558 b!4724402)))

(assert (=> bs!1115371 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215934))))

(declare-fun bs!1115373 () Bool)

(assert (= bs!1115373 (and b!4724558 b!4724441)))

(assert (=> bs!1115373 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215943))))

(declare-fun bs!1115375 () Bool)

(assert (= bs!1115375 (and b!4724558 d!1504728)))

(assert (=> bs!1115375 (not (= lambda!215973 lambda!215834))))

(declare-fun bs!1115377 () Bool)

(assert (= bs!1115377 (and b!4724558 b!4724387)))

(assert (=> bs!1115377 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215931))))

(declare-fun bs!1115379 () Bool)

(assert (= bs!1115379 (and b!4724558 d!1504864)))

(assert (=> bs!1115379 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889493) (= lambda!215973 lambda!215959))))

(assert (=> bs!1115377 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889361) (= lambda!215973 lambda!215932))))

(declare-fun bs!1115381 () Bool)

(assert (= bs!1115381 (and b!4724558 b!4724436)))

(assert (=> bs!1115381 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215939))))

(declare-fun bs!1115383 () Bool)

(assert (= bs!1115383 (and b!4724558 d!1504820)))

(assert (=> bs!1115383 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889388) (= lambda!215973 lambda!215937))))

(declare-fun bs!1115385 () Bool)

(assert (= bs!1115385 (and b!4724558 b!4724320)))

(assert (=> bs!1115385 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215918))))

(declare-fun bs!1115386 () Bool)

(assert (= bs!1115386 (and b!4724558 b!4724400)))

(assert (=> bs!1115386 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889398) (= lambda!215973 lambda!215936))))

(declare-fun bs!1115387 () Bool)

(assert (= bs!1115387 (and b!4724558 d!1504736)))

(assert (=> bs!1115387 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889297) (= lambda!215973 lambda!215923))))

(assert (=> bs!1115359 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889307) (= lambda!215973 lambda!215922))))

(declare-fun bs!1115389 () Bool)

(assert (= bs!1115389 (and b!4724558 d!1504846)))

(assert (=> bs!1115389 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215949))))

(declare-fun bs!1115391 () Bool)

(assert (= bs!1115391 (and b!4724558 b!4724439)))

(assert (=> bs!1115391 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889465) (= lambda!215973 lambda!215945))))

(assert (=> bs!1115391 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215944))))

(assert (=> bs!1115363 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889444) (= lambda!215973 lambda!215941))))

(assert (=> bs!1115386 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215973 lambda!215935))))

(declare-fun bs!1115394 () Bool)

(assert (= bs!1115394 (and b!4724558 d!1504730)))

(assert (=> bs!1115394 (not (= lambda!215973 lambda!215835))))

(assert (=> b!4724558 true))

(declare-fun bs!1115395 () Bool)

(declare-fun b!4724556 () Bool)

(assert (= bs!1115395 (and b!4724556 b!4724511)))

(declare-fun lambda!215975 () Int)

(assert (=> bs!1115395 (= (= (extractMap!2042 (t!360231 lt!1889048)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215975 lambda!215957))))

(declare-fun bs!1115396 () Bool)

(assert (= bs!1115396 (and b!4724556 b!4724389)))

(assert (=> bs!1115396 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215930))))

(declare-fun bs!1115397 () Bool)

(assert (= bs!1115397 (and b!4724556 d!1504826)))

(assert (=> bs!1115397 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889434) (= lambda!215975 lambda!215942))))

(declare-fun bs!1115398 () Bool)

(assert (= bs!1115398 (and b!4724556 b!4724318)))

(assert (=> bs!1115398 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215920))))

(declare-fun bs!1115399 () Bool)

(assert (= bs!1115399 (and b!4724556 d!1504828)))

(assert (=> bs!1115399 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889455) (= lambda!215975 lambda!215946))))

(declare-fun bs!1115400 () Bool)

(assert (= bs!1115400 (and b!4724556 b!4724434)))

(assert (=> bs!1115400 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215940))))

(declare-fun bs!1115401 () Bool)

(assert (= bs!1115401 (and b!4724556 d!1504812)))

(assert (=> bs!1115401 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889351) (= lambda!215975 lambda!215933))))

(assert (=> bs!1115395 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889503) (= lambda!215975 lambda!215958))))

(declare-fun bs!1115402 () Bool)

(assert (= bs!1115402 (and b!4724556 b!4724513)))

(assert (=> bs!1115402 (= (= (extractMap!2042 (t!360231 lt!1889048)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215975 lambda!215956))))

(declare-fun bs!1115403 () Bool)

(assert (= bs!1115403 (and b!4724556 d!1504878)))

(assert (=> bs!1115403 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889398) (= lambda!215975 lambda!215970))))

(declare-fun bs!1115404 () Bool)

(assert (= bs!1115404 (and b!4724556 b!4724402)))

(assert (=> bs!1115404 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215934))))

(declare-fun bs!1115405 () Bool)

(assert (= bs!1115405 (and b!4724556 b!4724558)))

(assert (=> bs!1115405 (= lambda!215975 lambda!215973)))

(declare-fun bs!1115406 () Bool)

(assert (= bs!1115406 (and b!4724556 b!4724441)))

(assert (=> bs!1115406 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215943))))

(declare-fun bs!1115407 () Bool)

(assert (= bs!1115407 (and b!4724556 d!1504728)))

(assert (=> bs!1115407 (not (= lambda!215975 lambda!215834))))

(declare-fun bs!1115408 () Bool)

(assert (= bs!1115408 (and b!4724556 b!4724387)))

(assert (=> bs!1115408 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215931))))

(declare-fun bs!1115409 () Bool)

(assert (= bs!1115409 (and b!4724556 d!1504864)))

(assert (=> bs!1115409 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889493) (= lambda!215975 lambda!215959))))

(assert (=> bs!1115408 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889361) (= lambda!215975 lambda!215932))))

(declare-fun bs!1115410 () Bool)

(assert (= bs!1115410 (and b!4724556 b!4724436)))

(assert (=> bs!1115410 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215939))))

(declare-fun bs!1115411 () Bool)

(assert (= bs!1115411 (and b!4724556 d!1504820)))

(assert (=> bs!1115411 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889388) (= lambda!215975 lambda!215937))))

(declare-fun bs!1115412 () Bool)

(assert (= bs!1115412 (and b!4724556 b!4724320)))

(assert (=> bs!1115412 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215918))))

(declare-fun bs!1115413 () Bool)

(assert (= bs!1115413 (and b!4724556 b!4724400)))

(assert (=> bs!1115413 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889398) (= lambda!215975 lambda!215936))))

(declare-fun bs!1115414 () Bool)

(assert (= bs!1115414 (and b!4724556 d!1504736)))

(assert (=> bs!1115414 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889297) (= lambda!215975 lambda!215923))))

(assert (=> bs!1115398 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889307) (= lambda!215975 lambda!215922))))

(declare-fun bs!1115415 () Bool)

(assert (= bs!1115415 (and b!4724556 d!1504846)))

(assert (=> bs!1115415 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215949))))

(declare-fun bs!1115416 () Bool)

(assert (= bs!1115416 (and b!4724556 b!4724439)))

(assert (=> bs!1115416 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889465) (= lambda!215975 lambda!215945))))

(assert (=> bs!1115416 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215944))))

(assert (=> bs!1115400 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889444) (= lambda!215975 lambda!215941))))

(assert (=> bs!1115413 (= (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889044) (= lambda!215975 lambda!215935))))

(declare-fun bs!1115417 () Bool)

(assert (= bs!1115417 (and b!4724556 d!1504730)))

(assert (=> bs!1115417 (not (= lambda!215975 lambda!215835))))

(assert (=> b!4724556 true))

(declare-fun lambda!215976 () Int)

(declare-fun lt!1889579 () ListMap!5285)

(assert (=> bs!1115395 (= (= lt!1889579 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215976 lambda!215957))))

(assert (=> bs!1115396 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215930))))

(assert (=> bs!1115397 (= (= lt!1889579 lt!1889434) (= lambda!215976 lambda!215942))))

(assert (=> bs!1115398 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215920))))

(assert (=> bs!1115399 (= (= lt!1889579 lt!1889455) (= lambda!215976 lambda!215946))))

(assert (=> bs!1115400 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215940))))

(assert (=> bs!1115401 (= (= lt!1889579 lt!1889351) (= lambda!215976 lambda!215933))))

(assert (=> bs!1115395 (= (= lt!1889579 lt!1889503) (= lambda!215976 lambda!215958))))

(assert (=> bs!1115402 (= (= lt!1889579 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215976 lambda!215956))))

(assert (=> bs!1115403 (= (= lt!1889579 lt!1889398) (= lambda!215976 lambda!215970))))

(assert (=> bs!1115404 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215934))))

(assert (=> bs!1115405 (= (= lt!1889579 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215976 lambda!215973))))

(assert (=> b!4724556 (= (= lt!1889579 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215976 lambda!215975))))

(assert (=> bs!1115406 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215943))))

(assert (=> bs!1115407 (not (= lambda!215976 lambda!215834))))

(assert (=> bs!1115408 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215931))))

(assert (=> bs!1115409 (= (= lt!1889579 lt!1889493) (= lambda!215976 lambda!215959))))

(assert (=> bs!1115408 (= (= lt!1889579 lt!1889361) (= lambda!215976 lambda!215932))))

(assert (=> bs!1115410 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215939))))

(assert (=> bs!1115411 (= (= lt!1889579 lt!1889388) (= lambda!215976 lambda!215937))))

(assert (=> bs!1115412 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215918))))

(assert (=> bs!1115413 (= (= lt!1889579 lt!1889398) (= lambda!215976 lambda!215936))))

(assert (=> bs!1115414 (= (= lt!1889579 lt!1889297) (= lambda!215976 lambda!215923))))

(assert (=> bs!1115398 (= (= lt!1889579 lt!1889307) (= lambda!215976 lambda!215922))))

(assert (=> bs!1115415 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215949))))

(assert (=> bs!1115416 (= (= lt!1889579 lt!1889465) (= lambda!215976 lambda!215945))))

(assert (=> bs!1115416 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215944))))

(assert (=> bs!1115400 (= (= lt!1889579 lt!1889444) (= lambda!215976 lambda!215941))))

(assert (=> bs!1115413 (= (= lt!1889579 lt!1889044) (= lambda!215976 lambda!215935))))

(assert (=> bs!1115417 (not (= lambda!215976 lambda!215835))))

(assert (=> b!4724556 true))

(declare-fun bs!1115418 () Bool)

(declare-fun d!1504898 () Bool)

(assert (= bs!1115418 (and d!1504898 b!4724511)))

(declare-fun lambda!215977 () Int)

(declare-fun lt!1889569 () ListMap!5285)

(assert (=> bs!1115418 (= (= lt!1889569 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215977 lambda!215957))))

(declare-fun bs!1115419 () Bool)

(assert (= bs!1115419 (and d!1504898 b!4724389)))

(assert (=> bs!1115419 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215930))))

(declare-fun bs!1115420 () Bool)

(assert (= bs!1115420 (and d!1504898 d!1504826)))

(assert (=> bs!1115420 (= (= lt!1889569 lt!1889434) (= lambda!215977 lambda!215942))))

(declare-fun bs!1115421 () Bool)

(assert (= bs!1115421 (and d!1504898 b!4724318)))

(assert (=> bs!1115421 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215920))))

(declare-fun bs!1115422 () Bool)

(assert (= bs!1115422 (and d!1504898 d!1504828)))

(assert (=> bs!1115422 (= (= lt!1889569 lt!1889455) (= lambda!215977 lambda!215946))))

(declare-fun bs!1115423 () Bool)

(assert (= bs!1115423 (and d!1504898 b!4724434)))

(assert (=> bs!1115423 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215940))))

(declare-fun bs!1115424 () Bool)

(assert (= bs!1115424 (and d!1504898 d!1504812)))

(assert (=> bs!1115424 (= (= lt!1889569 lt!1889351) (= lambda!215977 lambda!215933))))

(assert (=> bs!1115418 (= (= lt!1889569 lt!1889503) (= lambda!215977 lambda!215958))))

(declare-fun bs!1115425 () Bool)

(assert (= bs!1115425 (and d!1504898 b!4724513)))

(assert (=> bs!1115425 (= (= lt!1889569 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215977 lambda!215956))))

(declare-fun bs!1115426 () Bool)

(assert (= bs!1115426 (and d!1504898 b!4724402)))

(assert (=> bs!1115426 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215934))))

(declare-fun bs!1115427 () Bool)

(assert (= bs!1115427 (and d!1504898 b!4724558)))

(assert (=> bs!1115427 (= (= lt!1889569 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215977 lambda!215973))))

(declare-fun bs!1115428 () Bool)

(assert (= bs!1115428 (and d!1504898 b!4724556)))

(assert (=> bs!1115428 (= (= lt!1889569 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215977 lambda!215975))))

(declare-fun bs!1115429 () Bool)

(assert (= bs!1115429 (and d!1504898 b!4724441)))

(assert (=> bs!1115429 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215943))))

(declare-fun bs!1115430 () Bool)

(assert (= bs!1115430 (and d!1504898 d!1504728)))

(assert (=> bs!1115430 (not (= lambda!215977 lambda!215834))))

(declare-fun bs!1115431 () Bool)

(assert (= bs!1115431 (and d!1504898 b!4724387)))

(assert (=> bs!1115431 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215931))))

(assert (=> bs!1115428 (= (= lt!1889569 lt!1889579) (= lambda!215977 lambda!215976))))

(declare-fun bs!1115432 () Bool)

(assert (= bs!1115432 (and d!1504898 d!1504878)))

(assert (=> bs!1115432 (= (= lt!1889569 lt!1889398) (= lambda!215977 lambda!215970))))

(declare-fun bs!1115433 () Bool)

(assert (= bs!1115433 (and d!1504898 d!1504864)))

(assert (=> bs!1115433 (= (= lt!1889569 lt!1889493) (= lambda!215977 lambda!215959))))

(assert (=> bs!1115431 (= (= lt!1889569 lt!1889361) (= lambda!215977 lambda!215932))))

(declare-fun bs!1115434 () Bool)

(assert (= bs!1115434 (and d!1504898 b!4724436)))

(assert (=> bs!1115434 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215939))))

(declare-fun bs!1115435 () Bool)

(assert (= bs!1115435 (and d!1504898 d!1504820)))

(assert (=> bs!1115435 (= (= lt!1889569 lt!1889388) (= lambda!215977 lambda!215937))))

(declare-fun bs!1115436 () Bool)

(assert (= bs!1115436 (and d!1504898 b!4724320)))

(assert (=> bs!1115436 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215918))))

(declare-fun bs!1115437 () Bool)

(assert (= bs!1115437 (and d!1504898 b!4724400)))

(assert (=> bs!1115437 (= (= lt!1889569 lt!1889398) (= lambda!215977 lambda!215936))))

(declare-fun bs!1115438 () Bool)

(assert (= bs!1115438 (and d!1504898 d!1504736)))

(assert (=> bs!1115438 (= (= lt!1889569 lt!1889297) (= lambda!215977 lambda!215923))))

(assert (=> bs!1115421 (= (= lt!1889569 lt!1889307) (= lambda!215977 lambda!215922))))

(declare-fun bs!1115439 () Bool)

(assert (= bs!1115439 (and d!1504898 d!1504846)))

(assert (=> bs!1115439 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215949))))

(declare-fun bs!1115440 () Bool)

(assert (= bs!1115440 (and d!1504898 b!4724439)))

(assert (=> bs!1115440 (= (= lt!1889569 lt!1889465) (= lambda!215977 lambda!215945))))

(assert (=> bs!1115440 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215944))))

(assert (=> bs!1115423 (= (= lt!1889569 lt!1889444) (= lambda!215977 lambda!215941))))

(assert (=> bs!1115437 (= (= lt!1889569 lt!1889044) (= lambda!215977 lambda!215935))))

(declare-fun bs!1115441 () Bool)

(assert (= bs!1115441 (and d!1504898 d!1504730)))

(assert (=> bs!1115441 (not (= lambda!215977 lambda!215835))))

(assert (=> d!1504898 true))

(declare-fun bm!330515 () Bool)

(declare-fun call!330520 () Unit!130501)

(assert (=> bm!330515 (= call!330520 (lemmaContainsAllItsOwnKeys!799 (extractMap!2042 (t!360231 lt!1889048))))))

(declare-fun b!4724555 () Bool)

(declare-fun e!2946622 () Bool)

(assert (=> b!4724555 (= e!2946622 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 lt!1889048))) lambda!215976))))

(declare-fun b!4724557 () Bool)

(declare-fun e!2946623 () Bool)

(assert (=> b!4724557 (= e!2946623 (invariantList!1513 (toList!5921 lt!1889569)))))

(declare-fun e!2946624 () ListMap!5285)

(assert (=> b!4724558 (= e!2946624 (extractMap!2042 (t!360231 lt!1889048)))))

(declare-fun lt!1889572 () Unit!130501)

(assert (=> b!4724558 (= lt!1889572 call!330520)))

(declare-fun call!330522 () Bool)

(assert (=> b!4724558 call!330522))

(declare-fun lt!1889586 () Unit!130501)

(assert (=> b!4724558 (= lt!1889586 lt!1889572)))

(declare-fun call!330521 () Bool)

(assert (=> b!4724558 call!330521))

(declare-fun lt!1889585 () Unit!130501)

(declare-fun Unit!130653 () Unit!130501)

(assert (=> b!4724558 (= lt!1889585 Unit!130653)))

(declare-fun b!4724559 () Bool)

(declare-fun res!1999127 () Bool)

(assert (=> b!4724559 (=> (not res!1999127) (not e!2946623))))

(assert (=> b!4724559 (= res!1999127 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 lt!1889048))) lambda!215977))))

(declare-fun c!806884 () Bool)

(declare-fun bm!330516 () Bool)

(declare-fun lt!1889584 () ListMap!5285)

(assert (=> bm!330516 (= call!330522 (forall!11596 (ite c!806884 (toList!5921 (extractMap!2042 (t!360231 lt!1889048))) (toList!5921 lt!1889584)) (ite c!806884 lambda!215973 lambda!215976)))))

(declare-fun bm!330517 () Bool)

(assert (=> bm!330517 (= call!330521 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 lt!1889048))) (ite c!806884 lambda!215973 lambda!215975)))))

(assert (=> d!1504898 e!2946623))

(declare-fun res!1999129 () Bool)

(assert (=> d!1504898 (=> (not res!1999129) (not e!2946623))))

(assert (=> d!1504898 (= res!1999129 (forall!11596 (_2!30524 (h!59186 lt!1889048)) lambda!215977))))

(assert (=> d!1504898 (= lt!1889569 e!2946624)))

(assert (=> d!1504898 (= c!806884 ((_ is Nil!52836) (_2!30524 (h!59186 lt!1889048))))))

(assert (=> d!1504898 (noDuplicateKeys!2016 (_2!30524 (h!59186 lt!1889048)))))

(assert (=> d!1504898 (= (addToMapMapFromBucket!1446 (_2!30524 (h!59186 lt!1889048)) (extractMap!2042 (t!360231 lt!1889048))) lt!1889569)))

(assert (=> b!4724556 (= e!2946624 lt!1889579)))

(assert (=> b!4724556 (= lt!1889584 (+!2271 (extractMap!2042 (t!360231 lt!1889048)) (h!59185 (_2!30524 (h!59186 lt!1889048)))))))

(assert (=> b!4724556 (= lt!1889579 (addToMapMapFromBucket!1446 (t!360230 (_2!30524 (h!59186 lt!1889048))) (+!2271 (extractMap!2042 (t!360231 lt!1889048)) (h!59185 (_2!30524 (h!59186 lt!1889048))))))))

(declare-fun lt!1889588 () Unit!130501)

(assert (=> b!4724556 (= lt!1889588 call!330520)))

(assert (=> b!4724556 call!330521))

(declare-fun lt!1889587 () Unit!130501)

(assert (=> b!4724556 (= lt!1889587 lt!1889588)))

(assert (=> b!4724556 call!330522))

(declare-fun lt!1889574 () Unit!130501)

(declare-fun Unit!130654 () Unit!130501)

(assert (=> b!4724556 (= lt!1889574 Unit!130654)))

(assert (=> b!4724556 (forall!11596 (t!360230 (_2!30524 (h!59186 lt!1889048))) lambda!215976)))

(declare-fun lt!1889580 () Unit!130501)

(declare-fun Unit!130655 () Unit!130501)

(assert (=> b!4724556 (= lt!1889580 Unit!130655)))

(declare-fun lt!1889575 () Unit!130501)

(declare-fun Unit!130656 () Unit!130501)

(assert (=> b!4724556 (= lt!1889575 Unit!130656)))

(declare-fun lt!1889578 () Unit!130501)

(assert (=> b!4724556 (= lt!1889578 (forallContained!3643 (toList!5921 lt!1889584) lambda!215976 (h!59185 (_2!30524 (h!59186 lt!1889048)))))))

(assert (=> b!4724556 (contains!16183 lt!1889584 (_1!30523 (h!59185 (_2!30524 (h!59186 lt!1889048)))))))

(declare-fun lt!1889577 () Unit!130501)

(declare-fun Unit!130657 () Unit!130501)

(assert (=> b!4724556 (= lt!1889577 Unit!130657)))

(assert (=> b!4724556 (contains!16183 lt!1889579 (_1!30523 (h!59185 (_2!30524 (h!59186 lt!1889048)))))))

(declare-fun lt!1889570 () Unit!130501)

(declare-fun Unit!130658 () Unit!130501)

(assert (=> b!4724556 (= lt!1889570 Unit!130658)))

(assert (=> b!4724556 (forall!11596 (_2!30524 (h!59186 lt!1889048)) lambda!215976)))

(declare-fun lt!1889571 () Unit!130501)

(declare-fun Unit!130659 () Unit!130501)

(assert (=> b!4724556 (= lt!1889571 Unit!130659)))

(assert (=> b!4724556 (forall!11596 (toList!5921 lt!1889584) lambda!215976)))

(declare-fun lt!1889582 () Unit!130501)

(declare-fun Unit!130660 () Unit!130501)

(assert (=> b!4724556 (= lt!1889582 Unit!130660)))

(declare-fun lt!1889576 () Unit!130501)

(declare-fun Unit!130661 () Unit!130501)

(assert (=> b!4724556 (= lt!1889576 Unit!130661)))

(declare-fun lt!1889583 () Unit!130501)

(assert (=> b!4724556 (= lt!1889583 (addForallContainsKeyThenBeforeAdding!798 (extractMap!2042 (t!360231 lt!1889048)) lt!1889579 (_1!30523 (h!59185 (_2!30524 (h!59186 lt!1889048)))) (_2!30523 (h!59185 (_2!30524 (h!59186 lt!1889048))))))))

(assert (=> b!4724556 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 lt!1889048))) lambda!215976)))

(declare-fun lt!1889573 () Unit!130501)

(assert (=> b!4724556 (= lt!1889573 lt!1889583)))

(assert (=> b!4724556 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 lt!1889048))) lambda!215976)))

(declare-fun lt!1889589 () Unit!130501)

(declare-fun Unit!130662 () Unit!130501)

(assert (=> b!4724556 (= lt!1889589 Unit!130662)))

(declare-fun res!1999128 () Bool)

(assert (=> b!4724556 (= res!1999128 (forall!11596 (_2!30524 (h!59186 lt!1889048)) lambda!215976))))

(assert (=> b!4724556 (=> (not res!1999128) (not e!2946622))))

(assert (=> b!4724556 e!2946622))

(declare-fun lt!1889581 () Unit!130501)

(declare-fun Unit!130663 () Unit!130501)

(assert (=> b!4724556 (= lt!1889581 Unit!130663)))

(assert (= (and d!1504898 c!806884) b!4724558))

(assert (= (and d!1504898 (not c!806884)) b!4724556))

(assert (= (and b!4724556 res!1999128) b!4724555))

(assert (= (or b!4724558 b!4724556) bm!330515))

(assert (= (or b!4724558 b!4724556) bm!330517))

(assert (= (or b!4724558 b!4724556) bm!330516))

(assert (= (and d!1504898 res!1999129) b!4724559))

(assert (= (and b!4724559 res!1999127) b!4724557))

(declare-fun m!5662585 () Bool)

(assert (=> b!4724557 m!5662585))

(assert (=> bm!330515 m!5662061))

(declare-fun m!5662587 () Bool)

(assert (=> bm!330515 m!5662587))

(declare-fun m!5662589 () Bool)

(assert (=> b!4724559 m!5662589))

(declare-fun m!5662591 () Bool)

(assert (=> d!1504898 m!5662591))

(assert (=> d!1504898 m!5662303))

(declare-fun m!5662593 () Bool)

(assert (=> b!4724556 m!5662593))

(declare-fun m!5662595 () Bool)

(assert (=> b!4724556 m!5662595))

(declare-fun m!5662597 () Bool)

(assert (=> b!4724556 m!5662597))

(declare-fun m!5662599 () Bool)

(assert (=> b!4724556 m!5662599))

(declare-fun m!5662601 () Bool)

(assert (=> b!4724556 m!5662601))

(assert (=> b!4724556 m!5662593))

(assert (=> b!4724556 m!5662061))

(assert (=> b!4724556 m!5662595))

(declare-fun m!5662603 () Bool)

(assert (=> b!4724556 m!5662603))

(declare-fun m!5662605 () Bool)

(assert (=> b!4724556 m!5662605))

(assert (=> b!4724556 m!5662061))

(declare-fun m!5662607 () Bool)

(assert (=> b!4724556 m!5662607))

(declare-fun m!5662609 () Bool)

(assert (=> b!4724556 m!5662609))

(declare-fun m!5662611 () Bool)

(assert (=> b!4724556 m!5662611))

(assert (=> b!4724556 m!5662603))

(declare-fun m!5662613 () Bool)

(assert (=> bm!330516 m!5662613))

(assert (=> b!4724555 m!5662603))

(declare-fun m!5662615 () Bool)

(assert (=> bm!330517 m!5662615))

(assert (=> b!4724356 d!1504898))

(declare-fun bs!1115442 () Bool)

(declare-fun d!1504912 () Bool)

(assert (= bs!1115442 (and d!1504912 d!1504824)))

(declare-fun lambda!215978 () Int)

(assert (=> bs!1115442 (= lambda!215978 lambda!215938)))

(declare-fun bs!1115443 () Bool)

(assert (= bs!1115443 (and d!1504912 d!1504734)))

(assert (=> bs!1115443 (not (= lambda!215978 lambda!215836))))

(declare-fun bs!1115444 () Bool)

(assert (= bs!1115444 (and d!1504912 d!1504696)))

(assert (=> bs!1115444 (not (= lambda!215978 lambda!215825))))

(declare-fun bs!1115445 () Bool)

(assert (= bs!1115445 (and d!1504912 start!480916)))

(assert (=> bs!1115445 (= lambda!215978 lambda!215822)))

(declare-fun bs!1115446 () Bool)

(assert (= bs!1115446 (and d!1504912 d!1504778)))

(assert (=> bs!1115446 (= lambda!215978 lambda!215926)))

(declare-fun bs!1115447 () Bool)

(assert (= bs!1115447 (and d!1504912 d!1504786)))

(assert (=> bs!1115447 (= lambda!215978 lambda!215928)))

(declare-fun bs!1115448 () Bool)

(assert (= bs!1115448 (and d!1504912 d!1504784)))

(assert (=> bs!1115448 (= lambda!215978 lambda!215927)))

(declare-fun lt!1889606 () ListMap!5285)

(assert (=> d!1504912 (invariantList!1513 (toList!5921 lt!1889606))))

(declare-fun e!2946643 () ListMap!5285)

(assert (=> d!1504912 (= lt!1889606 e!2946643)))

(declare-fun c!806891 () Bool)

(assert (=> d!1504912 (= c!806891 ((_ is Cons!52837) (t!360231 lt!1889048)))))

(assert (=> d!1504912 (forall!11594 (t!360231 lt!1889048) lambda!215978)))

(assert (=> d!1504912 (= (extractMap!2042 (t!360231 lt!1889048)) lt!1889606)))

(declare-fun b!4724584 () Bool)

(assert (=> b!4724584 (= e!2946643 (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (t!360231 lt!1889048))) (extractMap!2042 (t!360231 (t!360231 lt!1889048)))))))

(declare-fun b!4724585 () Bool)

(assert (=> b!4724585 (= e!2946643 (ListMap!5286 Nil!52836))))

(assert (= (and d!1504912 c!806891) b!4724584))

(assert (= (and d!1504912 (not c!806891)) b!4724585))

(declare-fun m!5662617 () Bool)

(assert (=> d!1504912 m!5662617))

(declare-fun m!5662619 () Bool)

(assert (=> d!1504912 m!5662619))

(declare-fun m!5662621 () Bool)

(assert (=> b!4724584 m!5662621))

(assert (=> b!4724584 m!5662621))

(declare-fun m!5662623 () Bool)

(assert (=> b!4724584 m!5662623))

(assert (=> b!4724356 d!1504912))

(declare-fun d!1504914 () Bool)

(declare-fun res!1999142 () Bool)

(declare-fun e!2946644 () Bool)

(assert (=> d!1504914 (=> res!1999142 e!2946644)))

(assert (=> d!1504914 (= res!1999142 ((_ is Nil!52836) lt!1889050))))

(assert (=> d!1504914 (= (forall!11596 lt!1889050 lambda!215946) e!2946644)))

(declare-fun b!4724586 () Bool)

(declare-fun e!2946645 () Bool)

(assert (=> b!4724586 (= e!2946644 e!2946645)))

(declare-fun res!1999143 () Bool)

(assert (=> b!4724586 (=> (not res!1999143) (not e!2946645))))

(assert (=> b!4724586 (= res!1999143 (dynLambda!21825 lambda!215946 (h!59185 lt!1889050)))))

(declare-fun b!4724587 () Bool)

(assert (=> b!4724587 (= e!2946645 (forall!11596 (t!360230 lt!1889050) lambda!215946))))

(assert (= (and d!1504914 (not res!1999142)) b!4724586))

(assert (= (and b!4724586 res!1999143) b!4724587))

(declare-fun b_lambda!179237 () Bool)

(assert (=> (not b_lambda!179237) (not b!4724586)))

(declare-fun m!5662625 () Bool)

(assert (=> b!4724586 m!5662625))

(declare-fun m!5662627 () Bool)

(assert (=> b!4724587 m!5662627))

(assert (=> d!1504828 d!1504914))

(declare-fun d!1504916 () Bool)

(declare-fun res!1999144 () Bool)

(declare-fun e!2946646 () Bool)

(assert (=> d!1504916 (=> res!1999144 e!2946646)))

(assert (=> d!1504916 (= res!1999144 (not ((_ is Cons!52836) lt!1889050)))))

(assert (=> d!1504916 (= (noDuplicateKeys!2016 lt!1889050) e!2946646)))

(declare-fun b!4724588 () Bool)

(declare-fun e!2946647 () Bool)

(assert (=> b!4724588 (= e!2946646 e!2946647)))

(declare-fun res!1999145 () Bool)

(assert (=> b!4724588 (=> (not res!1999145) (not e!2946647))))

(assert (=> b!4724588 (= res!1999145 (not (containsKey!3375 (t!360230 lt!1889050) (_1!30523 (h!59185 lt!1889050)))))))

(declare-fun b!4724589 () Bool)

(assert (=> b!4724589 (= e!2946647 (noDuplicateKeys!2016 (t!360230 lt!1889050)))))

(assert (= (and d!1504916 (not res!1999144)) b!4724588))

(assert (= (and b!4724588 res!1999145) b!4724589))

(declare-fun m!5662629 () Bool)

(assert (=> b!4724588 m!5662629))

(declare-fun m!5662631 () Bool)

(assert (=> b!4724589 m!5662631))

(assert (=> d!1504828 d!1504916))

(declare-fun bs!1115449 () Bool)

(declare-fun b!4724593 () Bool)

(assert (= bs!1115449 (and b!4724593 b!4724511)))

(declare-fun lambda!215979 () Int)

(assert (=> bs!1115449 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215979 lambda!215957))))

(declare-fun bs!1115450 () Bool)

(assert (= bs!1115450 (and b!4724593 d!1504898)))

(assert (=> bs!1115450 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889569) (= lambda!215979 lambda!215977))))

(declare-fun bs!1115451 () Bool)

(assert (= bs!1115451 (and b!4724593 b!4724389)))

(assert (=> bs!1115451 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215930))))

(declare-fun bs!1115452 () Bool)

(assert (= bs!1115452 (and b!4724593 d!1504826)))

(assert (=> bs!1115452 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889434) (= lambda!215979 lambda!215942))))

(declare-fun bs!1115453 () Bool)

(assert (= bs!1115453 (and b!4724593 b!4724318)))

(assert (=> bs!1115453 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215920))))

(declare-fun bs!1115454 () Bool)

(assert (= bs!1115454 (and b!4724593 d!1504828)))

(assert (=> bs!1115454 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889455) (= lambda!215979 lambda!215946))))

(declare-fun bs!1115455 () Bool)

(assert (= bs!1115455 (and b!4724593 b!4724434)))

(assert (=> bs!1115455 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215940))))

(declare-fun bs!1115456 () Bool)

(assert (= bs!1115456 (and b!4724593 d!1504812)))

(assert (=> bs!1115456 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889351) (= lambda!215979 lambda!215933))))

(assert (=> bs!1115449 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889503) (= lambda!215979 lambda!215958))))

(declare-fun bs!1115457 () Bool)

(assert (= bs!1115457 (and b!4724593 b!4724513)))

(assert (=> bs!1115457 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215979 lambda!215956))))

(declare-fun bs!1115458 () Bool)

(assert (= bs!1115458 (and b!4724593 b!4724402)))

(assert (=> bs!1115458 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215934))))

(declare-fun bs!1115459 () Bool)

(assert (= bs!1115459 (and b!4724593 b!4724558)))

(assert (=> bs!1115459 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215979 lambda!215973))))

(declare-fun bs!1115460 () Bool)

(assert (= bs!1115460 (and b!4724593 b!4724556)))

(assert (=> bs!1115460 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215979 lambda!215975))))

(declare-fun bs!1115461 () Bool)

(assert (= bs!1115461 (and b!4724593 b!4724441)))

(assert (=> bs!1115461 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215943))))

(declare-fun bs!1115462 () Bool)

(assert (= bs!1115462 (and b!4724593 d!1504728)))

(assert (=> bs!1115462 (not (= lambda!215979 lambda!215834))))

(declare-fun bs!1115463 () Bool)

(assert (= bs!1115463 (and b!4724593 b!4724387)))

(assert (=> bs!1115463 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215931))))

(assert (=> bs!1115460 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889579) (= lambda!215979 lambda!215976))))

(declare-fun bs!1115464 () Bool)

(assert (= bs!1115464 (and b!4724593 d!1504878)))

(assert (=> bs!1115464 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889398) (= lambda!215979 lambda!215970))))

(declare-fun bs!1115465 () Bool)

(assert (= bs!1115465 (and b!4724593 d!1504864)))

(assert (=> bs!1115465 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889493) (= lambda!215979 lambda!215959))))

(assert (=> bs!1115463 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889361) (= lambda!215979 lambda!215932))))

(declare-fun bs!1115466 () Bool)

(assert (= bs!1115466 (and b!4724593 b!4724436)))

(assert (=> bs!1115466 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215939))))

(declare-fun bs!1115467 () Bool)

(assert (= bs!1115467 (and b!4724593 d!1504820)))

(assert (=> bs!1115467 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889388) (= lambda!215979 lambda!215937))))

(declare-fun bs!1115468 () Bool)

(assert (= bs!1115468 (and b!4724593 b!4724320)))

(assert (=> bs!1115468 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215918))))

(declare-fun bs!1115469 () Bool)

(assert (= bs!1115469 (and b!4724593 b!4724400)))

(assert (=> bs!1115469 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889398) (= lambda!215979 lambda!215936))))

(declare-fun bs!1115470 () Bool)

(assert (= bs!1115470 (and b!4724593 d!1504736)))

(assert (=> bs!1115470 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889297) (= lambda!215979 lambda!215923))))

(assert (=> bs!1115453 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889307) (= lambda!215979 lambda!215922))))

(declare-fun bs!1115471 () Bool)

(assert (= bs!1115471 (and b!4724593 d!1504846)))

(assert (=> bs!1115471 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215949))))

(declare-fun bs!1115472 () Bool)

(assert (= bs!1115472 (and b!4724593 b!4724439)))

(assert (=> bs!1115472 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889465) (= lambda!215979 lambda!215945))))

(assert (=> bs!1115472 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215944))))

(assert (=> bs!1115455 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889444) (= lambda!215979 lambda!215941))))

(assert (=> bs!1115469 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215979 lambda!215935))))

(declare-fun bs!1115473 () Bool)

(assert (= bs!1115473 (and b!4724593 d!1504730)))

(assert (=> bs!1115473 (not (= lambda!215979 lambda!215835))))

(assert (=> b!4724593 true))

(declare-fun bs!1115474 () Bool)

(declare-fun b!4724591 () Bool)

(assert (= bs!1115474 (and b!4724591 b!4724511)))

(declare-fun lambda!215982 () Int)

(assert (=> bs!1115474 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215982 lambda!215957))))

(declare-fun bs!1115475 () Bool)

(assert (= bs!1115475 (and b!4724591 d!1504898)))

(assert (=> bs!1115475 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889569) (= lambda!215982 lambda!215977))))

(declare-fun bs!1115476 () Bool)

(assert (= bs!1115476 (and b!4724591 b!4724389)))

(assert (=> bs!1115476 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215930))))

(declare-fun bs!1115477 () Bool)

(assert (= bs!1115477 (and b!4724591 d!1504826)))

(assert (=> bs!1115477 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889434) (= lambda!215982 lambda!215942))))

(declare-fun bs!1115478 () Bool)

(assert (= bs!1115478 (and b!4724591 b!4724318)))

(assert (=> bs!1115478 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215920))))

(declare-fun bs!1115479 () Bool)

(assert (= bs!1115479 (and b!4724591 d!1504828)))

(assert (=> bs!1115479 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889455) (= lambda!215982 lambda!215946))))

(declare-fun bs!1115480 () Bool)

(assert (= bs!1115480 (and b!4724591 b!4724434)))

(assert (=> bs!1115480 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215940))))

(declare-fun bs!1115481 () Bool)

(assert (= bs!1115481 (and b!4724591 d!1504812)))

(assert (=> bs!1115481 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889351) (= lambda!215982 lambda!215933))))

(assert (=> bs!1115474 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889503) (= lambda!215982 lambda!215958))))

(declare-fun bs!1115482 () Bool)

(assert (= bs!1115482 (and b!4724591 b!4724513)))

(assert (=> bs!1115482 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215982 lambda!215956))))

(declare-fun bs!1115483 () Bool)

(assert (= bs!1115483 (and b!4724591 b!4724402)))

(assert (=> bs!1115483 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215934))))

(declare-fun bs!1115484 () Bool)

(assert (= bs!1115484 (and b!4724591 b!4724558)))

(assert (=> bs!1115484 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215982 lambda!215973))))

(declare-fun bs!1115485 () Bool)

(assert (= bs!1115485 (and b!4724591 b!4724556)))

(assert (=> bs!1115485 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215982 lambda!215975))))

(declare-fun bs!1115486 () Bool)

(assert (= bs!1115486 (and b!4724591 b!4724441)))

(assert (=> bs!1115486 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215943))))

(declare-fun bs!1115487 () Bool)

(assert (= bs!1115487 (and b!4724591 d!1504728)))

(assert (=> bs!1115487 (not (= lambda!215982 lambda!215834))))

(declare-fun bs!1115488 () Bool)

(assert (= bs!1115488 (and b!4724591 b!4724387)))

(assert (=> bs!1115488 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215931))))

(assert (=> bs!1115485 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889579) (= lambda!215982 lambda!215976))))

(declare-fun bs!1115489 () Bool)

(assert (= bs!1115489 (and b!4724591 d!1504878)))

(assert (=> bs!1115489 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889398) (= lambda!215982 lambda!215970))))

(declare-fun bs!1115490 () Bool)

(assert (= bs!1115490 (and b!4724591 d!1504864)))

(assert (=> bs!1115490 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889493) (= lambda!215982 lambda!215959))))

(assert (=> bs!1115488 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889361) (= lambda!215982 lambda!215932))))

(declare-fun bs!1115491 () Bool)

(assert (= bs!1115491 (and b!4724591 b!4724436)))

(assert (=> bs!1115491 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215939))))

(declare-fun bs!1115492 () Bool)

(assert (= bs!1115492 (and b!4724591 d!1504820)))

(assert (=> bs!1115492 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889388) (= lambda!215982 lambda!215937))))

(declare-fun bs!1115493 () Bool)

(assert (= bs!1115493 (and b!4724591 b!4724320)))

(assert (=> bs!1115493 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215918))))

(declare-fun bs!1115494 () Bool)

(assert (= bs!1115494 (and b!4724591 b!4724400)))

(assert (=> bs!1115494 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889398) (= lambda!215982 lambda!215936))))

(declare-fun bs!1115495 () Bool)

(assert (= bs!1115495 (and b!4724591 d!1504736)))

(assert (=> bs!1115495 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889297) (= lambda!215982 lambda!215923))))

(assert (=> bs!1115478 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889307) (= lambda!215982 lambda!215922))))

(declare-fun bs!1115496 () Bool)

(assert (= bs!1115496 (and b!4724591 b!4724593)))

(assert (=> bs!1115496 (= lambda!215982 lambda!215979)))

(declare-fun bs!1115497 () Bool)

(assert (= bs!1115497 (and b!4724591 d!1504846)))

(assert (=> bs!1115497 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215949))))

(declare-fun bs!1115498 () Bool)

(assert (= bs!1115498 (and b!4724591 b!4724439)))

(assert (=> bs!1115498 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889465) (= lambda!215982 lambda!215945))))

(assert (=> bs!1115498 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215944))))

(assert (=> bs!1115480 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889444) (= lambda!215982 lambda!215941))))

(assert (=> bs!1115494 (= (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889044) (= lambda!215982 lambda!215935))))

(declare-fun bs!1115499 () Bool)

(assert (= bs!1115499 (and b!4724591 d!1504730)))

(assert (=> bs!1115499 (not (= lambda!215982 lambda!215835))))

(assert (=> b!4724591 true))

(declare-fun lt!1889617 () ListMap!5285)

(declare-fun lambda!215989 () Int)

(assert (=> bs!1115474 (= (= lt!1889617 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215989 lambda!215957))))

(assert (=> bs!1115475 (= (= lt!1889617 lt!1889569) (= lambda!215989 lambda!215977))))

(assert (=> bs!1115476 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215930))))

(assert (=> bs!1115477 (= (= lt!1889617 lt!1889434) (= lambda!215989 lambda!215942))))

(assert (=> bs!1115478 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215920))))

(assert (=> bs!1115479 (= (= lt!1889617 lt!1889455) (= lambda!215989 lambda!215946))))

(assert (=> bs!1115480 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215940))))

(assert (=> bs!1115481 (= (= lt!1889617 lt!1889351) (= lambda!215989 lambda!215933))))

(assert (=> bs!1115474 (= (= lt!1889617 lt!1889503) (= lambda!215989 lambda!215958))))

(assert (=> bs!1115482 (= (= lt!1889617 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215989 lambda!215956))))

(assert (=> bs!1115483 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215934))))

(assert (=> bs!1115484 (= (= lt!1889617 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215989 lambda!215973))))

(assert (=> bs!1115485 (= (= lt!1889617 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215989 lambda!215975))))

(assert (=> bs!1115486 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215943))))

(assert (=> bs!1115487 (not (= lambda!215989 lambda!215834))))

(assert (=> bs!1115488 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215931))))

(assert (=> bs!1115485 (= (= lt!1889617 lt!1889579) (= lambda!215989 lambda!215976))))

(assert (=> b!4724591 (= (= lt!1889617 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!215989 lambda!215982))))

(assert (=> bs!1115489 (= (= lt!1889617 lt!1889398) (= lambda!215989 lambda!215970))))

(assert (=> bs!1115490 (= (= lt!1889617 lt!1889493) (= lambda!215989 lambda!215959))))

(assert (=> bs!1115488 (= (= lt!1889617 lt!1889361) (= lambda!215989 lambda!215932))))

(assert (=> bs!1115491 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215939))))

(assert (=> bs!1115492 (= (= lt!1889617 lt!1889388) (= lambda!215989 lambda!215937))))

(assert (=> bs!1115493 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215918))))

(assert (=> bs!1115494 (= (= lt!1889617 lt!1889398) (= lambda!215989 lambda!215936))))

(assert (=> bs!1115495 (= (= lt!1889617 lt!1889297) (= lambda!215989 lambda!215923))))

(assert (=> bs!1115478 (= (= lt!1889617 lt!1889307) (= lambda!215989 lambda!215922))))

(assert (=> bs!1115496 (= (= lt!1889617 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!215989 lambda!215979))))

(assert (=> bs!1115497 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215949))))

(assert (=> bs!1115498 (= (= lt!1889617 lt!1889465) (= lambda!215989 lambda!215945))))

(assert (=> bs!1115498 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215944))))

(assert (=> bs!1115480 (= (= lt!1889617 lt!1889444) (= lambda!215989 lambda!215941))))

(assert (=> bs!1115494 (= (= lt!1889617 lt!1889044) (= lambda!215989 lambda!215935))))

(assert (=> bs!1115499 (not (= lambda!215989 lambda!215835))))

(assert (=> b!4724591 true))

(declare-fun bs!1115503 () Bool)

(declare-fun d!1504918 () Bool)

(assert (= bs!1115503 (and d!1504918 b!4724511)))

(declare-fun lambda!215994 () Int)

(declare-fun lt!1889607 () ListMap!5285)

(assert (=> bs!1115503 (= (= lt!1889607 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215994 lambda!215957))))

(declare-fun bs!1115504 () Bool)

(assert (= bs!1115504 (and d!1504918 d!1504898)))

(assert (=> bs!1115504 (= (= lt!1889607 lt!1889569) (= lambda!215994 lambda!215977))))

(declare-fun bs!1115505 () Bool)

(assert (= bs!1115505 (and d!1504918 b!4724389)))

(assert (=> bs!1115505 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215930))))

(declare-fun bs!1115506 () Bool)

(assert (= bs!1115506 (and d!1504918 d!1504826)))

(assert (=> bs!1115506 (= (= lt!1889607 lt!1889434) (= lambda!215994 lambda!215942))))

(declare-fun bs!1115507 () Bool)

(assert (= bs!1115507 (and d!1504918 b!4724318)))

(assert (=> bs!1115507 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215920))))

(declare-fun bs!1115508 () Bool)

(assert (= bs!1115508 (and d!1504918 d!1504828)))

(assert (=> bs!1115508 (= (= lt!1889607 lt!1889455) (= lambda!215994 lambda!215946))))

(declare-fun bs!1115509 () Bool)

(assert (= bs!1115509 (and d!1504918 b!4724434)))

(assert (=> bs!1115509 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215940))))

(declare-fun bs!1115510 () Bool)

(assert (= bs!1115510 (and d!1504918 d!1504812)))

(assert (=> bs!1115510 (= (= lt!1889607 lt!1889351) (= lambda!215994 lambda!215933))))

(assert (=> bs!1115503 (= (= lt!1889607 lt!1889503) (= lambda!215994 lambda!215958))))

(declare-fun bs!1115513 () Bool)

(assert (= bs!1115513 (and d!1504918 b!4724513)))

(assert (=> bs!1115513 (= (= lt!1889607 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!215994 lambda!215956))))

(declare-fun bs!1115517 () Bool)

(assert (= bs!1115517 (and d!1504918 b!4724402)))

(assert (=> bs!1115517 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215934))))

(declare-fun bs!1115520 () Bool)

(assert (= bs!1115520 (and d!1504918 b!4724558)))

(assert (=> bs!1115520 (= (= lt!1889607 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215994 lambda!215973))))

(declare-fun bs!1115523 () Bool)

(assert (= bs!1115523 (and d!1504918 b!4724556)))

(assert (=> bs!1115523 (= (= lt!1889607 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!215994 lambda!215975))))

(declare-fun bs!1115526 () Bool)

(assert (= bs!1115526 (and d!1504918 d!1504728)))

(assert (=> bs!1115526 (not (= lambda!215994 lambda!215834))))

(declare-fun bs!1115529 () Bool)

(assert (= bs!1115529 (and d!1504918 b!4724387)))

(assert (=> bs!1115529 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215931))))

(assert (=> bs!1115523 (= (= lt!1889607 lt!1889579) (= lambda!215994 lambda!215976))))

(declare-fun bs!1115532 () Bool)

(assert (= bs!1115532 (and d!1504918 b!4724591)))

(assert (=> bs!1115532 (= (= lt!1889607 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!215994 lambda!215982))))

(declare-fun bs!1115535 () Bool)

(assert (= bs!1115535 (and d!1504918 d!1504878)))

(assert (=> bs!1115535 (= (= lt!1889607 lt!1889398) (= lambda!215994 lambda!215970))))

(declare-fun bs!1115537 () Bool)

(assert (= bs!1115537 (and d!1504918 d!1504864)))

(assert (=> bs!1115537 (= (= lt!1889607 lt!1889493) (= lambda!215994 lambda!215959))))

(assert (=> bs!1115529 (= (= lt!1889607 lt!1889361) (= lambda!215994 lambda!215932))))

(declare-fun bs!1115541 () Bool)

(assert (= bs!1115541 (and d!1504918 b!4724441)))

(assert (=> bs!1115541 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215943))))

(assert (=> bs!1115532 (= (= lt!1889607 lt!1889617) (= lambda!215994 lambda!215989))))

(declare-fun bs!1115542 () Bool)

(assert (= bs!1115542 (and d!1504918 b!4724436)))

(assert (=> bs!1115542 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215939))))

(declare-fun bs!1115544 () Bool)

(assert (= bs!1115544 (and d!1504918 d!1504820)))

(assert (=> bs!1115544 (= (= lt!1889607 lt!1889388) (= lambda!215994 lambda!215937))))

(declare-fun bs!1115546 () Bool)

(assert (= bs!1115546 (and d!1504918 b!4724320)))

(assert (=> bs!1115546 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215918))))

(declare-fun bs!1115548 () Bool)

(assert (= bs!1115548 (and d!1504918 b!4724400)))

(assert (=> bs!1115548 (= (= lt!1889607 lt!1889398) (= lambda!215994 lambda!215936))))

(declare-fun bs!1115550 () Bool)

(assert (= bs!1115550 (and d!1504918 d!1504736)))

(assert (=> bs!1115550 (= (= lt!1889607 lt!1889297) (= lambda!215994 lambda!215923))))

(assert (=> bs!1115507 (= (= lt!1889607 lt!1889307) (= lambda!215994 lambda!215922))))

(declare-fun bs!1115555 () Bool)

(assert (= bs!1115555 (and d!1504918 b!4724593)))

(assert (=> bs!1115555 (= (= lt!1889607 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!215994 lambda!215979))))

(declare-fun bs!1115557 () Bool)

(assert (= bs!1115557 (and d!1504918 d!1504846)))

(assert (=> bs!1115557 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215949))))

(declare-fun bs!1115560 () Bool)

(assert (= bs!1115560 (and d!1504918 b!4724439)))

(assert (=> bs!1115560 (= (= lt!1889607 lt!1889465) (= lambda!215994 lambda!215945))))

(assert (=> bs!1115560 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215944))))

(assert (=> bs!1115509 (= (= lt!1889607 lt!1889444) (= lambda!215994 lambda!215941))))

(assert (=> bs!1115548 (= (= lt!1889607 lt!1889044) (= lambda!215994 lambda!215935))))

(declare-fun bs!1115567 () Bool)

(assert (= bs!1115567 (and d!1504918 d!1504730)))

(assert (=> bs!1115567 (not (= lambda!215994 lambda!215835))))

(assert (=> d!1504918 true))

(declare-fun bm!330520 () Bool)

(declare-fun call!330525 () Unit!130501)

(assert (=> bm!330520 (= call!330525 (lemmaContainsAllItsOwnKeys!799 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))))))

(declare-fun b!4724590 () Bool)

(declare-fun e!2946648 () Bool)

(assert (=> b!4724590 (= e!2946648 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) lambda!215989))))

(declare-fun b!4724592 () Bool)

(declare-fun e!2946649 () Bool)

(assert (=> b!4724592 (= e!2946649 (invariantList!1513 (toList!5921 lt!1889607)))))

(declare-fun e!2946650 () ListMap!5285)

(assert (=> b!4724593 (= e!2946650 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))))))

(declare-fun lt!1889610 () Unit!130501)

(assert (=> b!4724593 (= lt!1889610 call!330525)))

(declare-fun call!330527 () Bool)

(assert (=> b!4724593 call!330527))

(declare-fun lt!1889624 () Unit!130501)

(assert (=> b!4724593 (= lt!1889624 lt!1889610)))

(declare-fun call!330526 () Bool)

(assert (=> b!4724593 call!330526))

(declare-fun lt!1889623 () Unit!130501)

(declare-fun Unit!130679 () Unit!130501)

(assert (=> b!4724593 (= lt!1889623 Unit!130679)))

(declare-fun b!4724594 () Bool)

(declare-fun res!1999146 () Bool)

(assert (=> b!4724594 (=> (not res!1999146) (not e!2946649))))

(assert (=> b!4724594 (= res!1999146 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) lambda!215994))))

(declare-fun c!806892 () Bool)

(declare-fun bm!330521 () Bool)

(declare-fun lt!1889622 () ListMap!5285)

(assert (=> bm!330521 (= call!330527 (forall!11596 (ite c!806892 (toList!5921 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (toList!5921 lt!1889622)) (ite c!806892 lambda!215979 lambda!215989)))))

(declare-fun bm!330522 () Bool)

(assert (=> bm!330522 (= call!330526 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (ite c!806892 lambda!215979 lambda!215982)))))

(assert (=> d!1504918 e!2946649))

(declare-fun res!1999148 () Bool)

(assert (=> d!1504918 (=> (not res!1999148) (not e!2946649))))

(assert (=> d!1504918 (= res!1999148 (forall!11596 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))) lambda!215994))))

(assert (=> d!1504918 (= lt!1889607 e!2946650)))

(assert (=> d!1504918 (= c!806892 ((_ is Nil!52836) (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023))))))))

(assert (=> d!1504918 (noDuplicateKeys!2016 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))))))

(assert (=> d!1504918 (= (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) lt!1889607)))

(assert (=> b!4724591 (= e!2946650 lt!1889617)))

(assert (=> b!4724591 (= lt!1889622 (+!2271 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (h!59185 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))))))))

(assert (=> b!4724591 (= lt!1889617 (addToMapMapFromBucket!1446 (t!360230 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023))))) (+!2271 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) (h!59185 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023))))))))))

(declare-fun lt!1889626 () Unit!130501)

(assert (=> b!4724591 (= lt!1889626 call!330525)))

(assert (=> b!4724591 call!330526))

(declare-fun lt!1889625 () Unit!130501)

(assert (=> b!4724591 (= lt!1889625 lt!1889626)))

(assert (=> b!4724591 call!330527))

(declare-fun lt!1889612 () Unit!130501)

(declare-fun Unit!130680 () Unit!130501)

(assert (=> b!4724591 (= lt!1889612 Unit!130680)))

(assert (=> b!4724591 (forall!11596 (t!360230 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023))))) lambda!215989)))

(declare-fun lt!1889618 () Unit!130501)

(declare-fun Unit!130681 () Unit!130501)

(assert (=> b!4724591 (= lt!1889618 Unit!130681)))

(declare-fun lt!1889613 () Unit!130501)

(declare-fun Unit!130682 () Unit!130501)

(assert (=> b!4724591 (= lt!1889613 Unit!130682)))

(declare-fun lt!1889616 () Unit!130501)

(assert (=> b!4724591 (= lt!1889616 (forallContained!3643 (toList!5921 lt!1889622) lambda!215989 (h!59185 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))))))))

(assert (=> b!4724591 (contains!16183 lt!1889622 (_1!30523 (h!59185 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))))))))

(declare-fun lt!1889615 () Unit!130501)

(declare-fun Unit!130683 () Unit!130501)

(assert (=> b!4724591 (= lt!1889615 Unit!130683)))

(assert (=> b!4724591 (contains!16183 lt!1889617 (_1!30523 (h!59185 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))))))))

(declare-fun lt!1889608 () Unit!130501)

(declare-fun Unit!130684 () Unit!130501)

(assert (=> b!4724591 (= lt!1889608 Unit!130684)))

(assert (=> b!4724591 (forall!11596 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))) lambda!215989)))

(declare-fun lt!1889609 () Unit!130501)

(declare-fun Unit!130685 () Unit!130501)

(assert (=> b!4724591 (= lt!1889609 Unit!130685)))

(assert (=> b!4724591 (forall!11596 (toList!5921 lt!1889622) lambda!215989)))

(declare-fun lt!1889620 () Unit!130501)

(declare-fun Unit!130686 () Unit!130501)

(assert (=> b!4724591 (= lt!1889620 Unit!130686)))

(declare-fun lt!1889614 () Unit!130501)

(declare-fun Unit!130687 () Unit!130501)

(assert (=> b!4724591 (= lt!1889614 Unit!130687)))

(declare-fun lt!1889621 () Unit!130501)

(assert (=> b!4724591 (= lt!1889621 (addForallContainsKeyThenBeforeAdding!798 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889617 (_1!30523 (h!59185 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))))) (_2!30523 (h!59185 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023))))))))))

(assert (=> b!4724591 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) lambda!215989)))

(declare-fun lt!1889611 () Unit!130501)

(assert (=> b!4724591 (= lt!1889611 lt!1889621)))

(assert (=> b!4724591 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) lambda!215989)))

(declare-fun lt!1889627 () Unit!130501)

(declare-fun Unit!130688 () Unit!130501)

(assert (=> b!4724591 (= lt!1889627 Unit!130688)))

(declare-fun res!1999147 () Bool)

(assert (=> b!4724591 (= res!1999147 (forall!11596 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023)))) lambda!215989))))

(assert (=> b!4724591 (=> (not res!1999147) (not e!2946648))))

(assert (=> b!4724591 e!2946648))

(declare-fun lt!1889619 () Unit!130501)

(declare-fun Unit!130689 () Unit!130501)

(assert (=> b!4724591 (= lt!1889619 Unit!130689)))

(assert (= (and d!1504918 c!806892) b!4724593))

(assert (= (and d!1504918 (not c!806892)) b!4724591))

(assert (= (and b!4724591 res!1999147) b!4724590))

(assert (= (or b!4724593 b!4724591) bm!330520))

(assert (= (or b!4724593 b!4724591) bm!330522))

(assert (= (or b!4724593 b!4724591) bm!330521))

(assert (= (and d!1504918 res!1999148) b!4724594))

(assert (= (and b!4724594 res!1999146) b!4724592))

(declare-fun m!5662661 () Bool)

(assert (=> b!4724592 m!5662661))

(assert (=> bm!330520 m!5662037))

(declare-fun m!5662663 () Bool)

(assert (=> bm!330520 m!5662663))

(declare-fun m!5662665 () Bool)

(assert (=> b!4724594 m!5662665))

(declare-fun m!5662667 () Bool)

(assert (=> d!1504918 m!5662667))

(declare-fun m!5662669 () Bool)

(assert (=> d!1504918 m!5662669))

(declare-fun m!5662671 () Bool)

(assert (=> b!4724591 m!5662671))

(declare-fun m!5662673 () Bool)

(assert (=> b!4724591 m!5662673))

(declare-fun m!5662675 () Bool)

(assert (=> b!4724591 m!5662675))

(declare-fun m!5662677 () Bool)

(assert (=> b!4724591 m!5662677))

(declare-fun m!5662679 () Bool)

(assert (=> b!4724591 m!5662679))

(assert (=> b!4724591 m!5662671))

(assert (=> b!4724591 m!5662037))

(assert (=> b!4724591 m!5662673))

(declare-fun m!5662681 () Bool)

(assert (=> b!4724591 m!5662681))

(declare-fun m!5662683 () Bool)

(assert (=> b!4724591 m!5662683))

(assert (=> b!4724591 m!5662037))

(declare-fun m!5662685 () Bool)

(assert (=> b!4724591 m!5662685))

(declare-fun m!5662687 () Bool)

(assert (=> b!4724591 m!5662687))

(declare-fun m!5662689 () Bool)

(assert (=> b!4724591 m!5662689))

(assert (=> b!4724591 m!5662681))

(declare-fun m!5662691 () Bool)

(assert (=> bm!330521 m!5662691))

(assert (=> b!4724590 m!5662681))

(declare-fun m!5662693 () Bool)

(assert (=> bm!330522 m!5662693))

(assert (=> b!4724336 d!1504918))

(declare-fun bs!1115573 () Bool)

(declare-fun d!1504922 () Bool)

(assert (= bs!1115573 (and d!1504922 d!1504824)))

(declare-fun lambda!215998 () Int)

(assert (=> bs!1115573 (= lambda!215998 lambda!215938)))

(declare-fun bs!1115574 () Bool)

(assert (= bs!1115574 (and d!1504922 d!1504734)))

(assert (=> bs!1115574 (not (= lambda!215998 lambda!215836))))

(declare-fun bs!1115575 () Bool)

(assert (= bs!1115575 (and d!1504922 d!1504696)))

(assert (=> bs!1115575 (not (= lambda!215998 lambda!215825))))

(declare-fun bs!1115576 () Bool)

(assert (= bs!1115576 (and d!1504922 start!480916)))

(assert (=> bs!1115576 (= lambda!215998 lambda!215822)))

(declare-fun bs!1115577 () Bool)

(assert (= bs!1115577 (and d!1504922 d!1504912)))

(assert (=> bs!1115577 (= lambda!215998 lambda!215978)))

(declare-fun bs!1115578 () Bool)

(assert (= bs!1115578 (and d!1504922 d!1504778)))

(assert (=> bs!1115578 (= lambda!215998 lambda!215926)))

(declare-fun bs!1115579 () Bool)

(assert (= bs!1115579 (and d!1504922 d!1504786)))

(assert (=> bs!1115579 (= lambda!215998 lambda!215928)))

(declare-fun bs!1115580 () Bool)

(assert (= bs!1115580 (and d!1504922 d!1504784)))

(assert (=> bs!1115580 (= lambda!215998 lambda!215927)))

(declare-fun lt!1889670 () ListMap!5285)

(assert (=> d!1504922 (invariantList!1513 (toList!5921 lt!1889670))))

(declare-fun e!2946666 () ListMap!5285)

(assert (=> d!1504922 (= lt!1889670 e!2946666)))

(declare-fun c!806903 () Bool)

(assert (=> d!1504922 (= c!806903 ((_ is Cons!52837) (t!360231 (t!360231 (toList!5922 lm!2023)))))))

(assert (=> d!1504922 (forall!11594 (t!360231 (t!360231 (toList!5922 lm!2023))) lambda!215998)))

(assert (=> d!1504922 (= (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023)))) lt!1889670)))

(declare-fun b!4724629 () Bool)

(assert (=> b!4724629 (= e!2946666 (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (t!360231 (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (t!360231 (t!360231 (toList!5922 lm!2023)))))))))

(declare-fun b!4724630 () Bool)

(assert (=> b!4724630 (= e!2946666 (ListMap!5286 Nil!52836))))

(assert (= (and d!1504922 c!806903) b!4724629))

(assert (= (and d!1504922 (not c!806903)) b!4724630))

(declare-fun m!5662695 () Bool)

(assert (=> d!1504922 m!5662695))

(declare-fun m!5662697 () Bool)

(assert (=> d!1504922 m!5662697))

(declare-fun m!5662699 () Bool)

(assert (=> b!4724629 m!5662699))

(assert (=> b!4724629 m!5662699))

(declare-fun m!5662701 () Bool)

(assert (=> b!4724629 m!5662701))

(assert (=> b!4724336 d!1504922))

(declare-fun d!1504924 () Bool)

(declare-fun res!1999161 () Bool)

(declare-fun e!2946667 () Bool)

(assert (=> d!1504924 (=> res!1999161 e!2946667)))

(assert (=> d!1504924 (= res!1999161 ((_ is Nil!52836) newBucket!218))))

(assert (=> d!1504924 (= (forall!11596 newBucket!218 lambda!215834) e!2946667)))

(declare-fun b!4724631 () Bool)

(declare-fun e!2946668 () Bool)

(assert (=> b!4724631 (= e!2946667 e!2946668)))

(declare-fun res!1999162 () Bool)

(assert (=> b!4724631 (=> (not res!1999162) (not e!2946668))))

(assert (=> b!4724631 (= res!1999162 (dynLambda!21825 lambda!215834 (h!59185 newBucket!218)))))

(declare-fun b!4724632 () Bool)

(assert (=> b!4724632 (= e!2946668 (forall!11596 (t!360230 newBucket!218) lambda!215834))))

(assert (= (and d!1504924 (not res!1999161)) b!4724631))

(assert (= (and b!4724631 res!1999162) b!4724632))

(declare-fun b_lambda!179239 () Bool)

(assert (=> (not b_lambda!179239) (not b!4724631)))

(declare-fun m!5662703 () Bool)

(assert (=> b!4724631 m!5662703))

(declare-fun m!5662705 () Bool)

(assert (=> b!4724632 m!5662705))

(assert (=> d!1504728 d!1504924))

(declare-fun d!1504926 () Bool)

(declare-fun res!1999163 () Bool)

(declare-fun e!2946669 () Bool)

(assert (=> d!1504926 (=> res!1999163 e!2946669)))

(assert (=> d!1504926 (= res!1999163 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504926 (= (forall!11596 (toList!5921 lt!1889044) lambda!215941) e!2946669)))

(declare-fun b!4724633 () Bool)

(declare-fun e!2946670 () Bool)

(assert (=> b!4724633 (= e!2946669 e!2946670)))

(declare-fun res!1999164 () Bool)

(assert (=> b!4724633 (=> (not res!1999164) (not e!2946670))))

(assert (=> b!4724633 (= res!1999164 (dynLambda!21825 lambda!215941 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724634 () Bool)

(assert (=> b!4724634 (= e!2946670 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215941))))

(assert (= (and d!1504926 (not res!1999163)) b!4724633))

(assert (= (and b!4724633 res!1999164) b!4724634))

(declare-fun b_lambda!179241 () Bool)

(assert (=> (not b_lambda!179241) (not b!4724633)))

(declare-fun m!5662707 () Bool)

(assert (=> b!4724633 m!5662707))

(declare-fun m!5662709 () Bool)

(assert (=> b!4724634 m!5662709))

(assert (=> b!4724433 d!1504926))

(declare-fun d!1504928 () Bool)

(declare-fun res!1999165 () Bool)

(declare-fun e!2946671 () Bool)

(assert (=> d!1504928 (=> res!1999165 e!2946671)))

(assert (=> d!1504928 (= res!1999165 (and ((_ is Cons!52836) (t!360230 newBucket!218)) (= (_1!30523 (h!59185 (t!360230 newBucket!218))) (_1!30523 (h!59185 newBucket!218)))))))

(assert (=> d!1504928 (= (containsKey!3375 (t!360230 newBucket!218) (_1!30523 (h!59185 newBucket!218))) e!2946671)))

(declare-fun b!4724635 () Bool)

(declare-fun e!2946672 () Bool)

(assert (=> b!4724635 (= e!2946671 e!2946672)))

(declare-fun res!1999166 () Bool)

(assert (=> b!4724635 (=> (not res!1999166) (not e!2946672))))

(assert (=> b!4724635 (= res!1999166 ((_ is Cons!52836) (t!360230 newBucket!218)))))

(declare-fun b!4724636 () Bool)

(assert (=> b!4724636 (= e!2946672 (containsKey!3375 (t!360230 (t!360230 newBucket!218)) (_1!30523 (h!59185 newBucket!218))))))

(assert (= (and d!1504928 (not res!1999165)) b!4724635))

(assert (= (and b!4724635 res!1999166) b!4724636))

(declare-fun m!5662711 () Bool)

(assert (=> b!4724636 m!5662711))

(assert (=> b!4724443 d!1504928))

(declare-fun d!1504930 () Bool)

(declare-fun res!1999167 () Bool)

(declare-fun e!2946673 () Bool)

(assert (=> d!1504930 (=> res!1999167 e!2946673)))

(assert (=> d!1504930 (= res!1999167 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504930 (= (forall!11596 (toList!5921 lt!1889044) lambda!215946) e!2946673)))

(declare-fun b!4724637 () Bool)

(declare-fun e!2946674 () Bool)

(assert (=> b!4724637 (= e!2946673 e!2946674)))

(declare-fun res!1999168 () Bool)

(assert (=> b!4724637 (=> (not res!1999168) (not e!2946674))))

(assert (=> b!4724637 (= res!1999168 (dynLambda!21825 lambda!215946 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724638 () Bool)

(assert (=> b!4724638 (= e!2946674 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215946))))

(assert (= (and d!1504930 (not res!1999167)) b!4724637))

(assert (= (and b!4724637 res!1999168) b!4724638))

(declare-fun b_lambda!179243 () Bool)

(assert (=> (not b_lambda!179243) (not b!4724637)))

(declare-fun m!5662713 () Bool)

(assert (=> b!4724637 m!5662713))

(declare-fun m!5662715 () Bool)

(assert (=> b!4724638 m!5662715))

(assert (=> b!4724442 d!1504930))

(declare-fun d!1504932 () Bool)

(declare-fun lt!1889673 () Bool)

(assert (=> d!1504932 (= lt!1889673 (select (content!9398 (toList!5921 lt!1889385)) (h!59185 oldBucket!34)))))

(declare-fun e!2946680 () Bool)

(assert (=> d!1504932 (= lt!1889673 e!2946680)))

(declare-fun res!1999174 () Bool)

(assert (=> d!1504932 (=> (not res!1999174) (not e!2946680))))

(assert (=> d!1504932 (= res!1999174 ((_ is Cons!52836) (toList!5921 lt!1889385)))))

(assert (=> d!1504932 (= (contains!16186 (toList!5921 lt!1889385) (h!59185 oldBucket!34)) lt!1889673)))

(declare-fun b!4724643 () Bool)

(declare-fun e!2946679 () Bool)

(assert (=> b!4724643 (= e!2946680 e!2946679)))

(declare-fun res!1999173 () Bool)

(assert (=> b!4724643 (=> res!1999173 e!2946679)))

(assert (=> b!4724643 (= res!1999173 (= (h!59185 (toList!5921 lt!1889385)) (h!59185 oldBucket!34)))))

(declare-fun b!4724644 () Bool)

(assert (=> b!4724644 (= e!2946679 (contains!16186 (t!360230 (toList!5921 lt!1889385)) (h!59185 oldBucket!34)))))

(assert (= (and d!1504932 res!1999174) b!4724643))

(assert (= (and b!4724643 (not res!1999173)) b!4724644))

(declare-fun m!5662717 () Bool)

(assert (=> d!1504932 m!5662717))

(declare-fun m!5662719 () Bool)

(assert (=> d!1504932 m!5662719))

(declare-fun m!5662721 () Bool)

(assert (=> b!4724644 m!5662721))

(assert (=> b!4724398 d!1504932))

(declare-fun d!1504934 () Bool)

(declare-fun res!1999175 () Bool)

(declare-fun e!2946681 () Bool)

(assert (=> d!1504934 (=> res!1999175 e!2946681)))

(assert (=> d!1504934 (= res!1999175 ((_ is Nil!52836) oldBucket!34))))

(assert (=> d!1504934 (= (forall!11596 oldBucket!34 lambda!215937) e!2946681)))

(declare-fun b!4724645 () Bool)

(declare-fun e!2946682 () Bool)

(assert (=> b!4724645 (= e!2946681 e!2946682)))

(declare-fun res!1999176 () Bool)

(assert (=> b!4724645 (=> (not res!1999176) (not e!2946682))))

(assert (=> b!4724645 (= res!1999176 (dynLambda!21825 lambda!215937 (h!59185 oldBucket!34)))))

(declare-fun b!4724646 () Bool)

(assert (=> b!4724646 (= e!2946682 (forall!11596 (t!360230 oldBucket!34) lambda!215937))))

(assert (= (and d!1504934 (not res!1999175)) b!4724645))

(assert (= (and b!4724645 res!1999176) b!4724646))

(declare-fun b_lambda!179245 () Bool)

(assert (=> (not b_lambda!179245) (not b!4724645)))

(declare-fun m!5662723 () Bool)

(assert (=> b!4724645 m!5662723))

(declare-fun m!5662725 () Bool)

(assert (=> b!4724646 m!5662725))

(assert (=> d!1504820 d!1504934))

(assert (=> d!1504820 d!1504724))

(declare-fun d!1504936 () Bool)

(declare-fun res!1999177 () Bool)

(declare-fun e!2946683 () Bool)

(assert (=> d!1504936 (=> res!1999177 e!2946683)))

(assert (=> d!1504936 (= res!1999177 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504936 (= (forall!11596 (toList!5921 lt!1889044) (ite c!806840 lambda!215918 lambda!215920)) e!2946683)))

(declare-fun b!4724647 () Bool)

(declare-fun e!2946684 () Bool)

(assert (=> b!4724647 (= e!2946683 e!2946684)))

(declare-fun res!1999178 () Bool)

(assert (=> b!4724647 (=> (not res!1999178) (not e!2946684))))

(assert (=> b!4724647 (= res!1999178 (dynLambda!21825 (ite c!806840 lambda!215918 lambda!215920) (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724648 () Bool)

(assert (=> b!4724648 (= e!2946684 (forall!11596 (t!360230 (toList!5921 lt!1889044)) (ite c!806840 lambda!215918 lambda!215920)))))

(assert (= (and d!1504936 (not res!1999177)) b!4724647))

(assert (= (and b!4724647 res!1999178) b!4724648))

(declare-fun b_lambda!179247 () Bool)

(assert (=> (not b_lambda!179247) (not b!4724647)))

(declare-fun m!5662727 () Bool)

(assert (=> b!4724647 m!5662727))

(declare-fun m!5662729 () Bool)

(assert (=> b!4724648 m!5662729))

(assert (=> bm!330488 d!1504936))

(declare-fun d!1504938 () Bool)

(assert (=> d!1504938 (= (tail!9011 (toList!5922 lm!2023)) (t!360231 (toList!5922 lm!2023)))))

(assert (=> d!1504780 d!1504938))

(declare-fun d!1504940 () Bool)

(declare-fun res!1999179 () Bool)

(declare-fun e!2946685 () Bool)

(assert (=> d!1504940 (=> res!1999179 e!2946685)))

(assert (=> d!1504940 (= res!1999179 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504940 (= (forall!11596 (toList!5921 lt!1889044) (ite c!806869 lambda!215943 lambda!215944)) e!2946685)))

(declare-fun b!4724649 () Bool)

(declare-fun e!2946686 () Bool)

(assert (=> b!4724649 (= e!2946685 e!2946686)))

(declare-fun res!1999180 () Bool)

(assert (=> b!4724649 (=> (not res!1999180) (not e!2946686))))

(assert (=> b!4724649 (= res!1999180 (dynLambda!21825 (ite c!806869 lambda!215943 lambda!215944) (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724650 () Bool)

(assert (=> b!4724650 (= e!2946686 (forall!11596 (t!360230 (toList!5921 lt!1889044)) (ite c!806869 lambda!215943 lambda!215944)))))

(assert (= (and d!1504940 (not res!1999179)) b!4724649))

(assert (= (and b!4724649 res!1999180) b!4724650))

(declare-fun b_lambda!179249 () Bool)

(assert (=> (not b_lambda!179249) (not b!4724649)))

(declare-fun m!5662775 () Bool)

(assert (=> b!4724649 m!5662775))

(declare-fun m!5662777 () Bool)

(assert (=> b!4724650 m!5662777))

(assert (=> bm!330506 d!1504940))

(declare-fun bs!1115604 () Bool)

(declare-fun b!4724658 () Bool)

(assert (= bs!1115604 (and b!4724658 b!4724511)))

(declare-fun lambda!216000 () Int)

(assert (=> bs!1115604 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216000 lambda!215957))))

(declare-fun bs!1115605 () Bool)

(assert (= bs!1115605 (and b!4724658 d!1504898)))

(assert (=> bs!1115605 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889569) (= lambda!216000 lambda!215977))))

(declare-fun bs!1115606 () Bool)

(assert (= bs!1115606 (and b!4724658 b!4724389)))

(assert (=> bs!1115606 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215930))))

(declare-fun bs!1115607 () Bool)

(assert (= bs!1115607 (and b!4724658 d!1504826)))

(assert (=> bs!1115607 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889434) (= lambda!216000 lambda!215942))))

(declare-fun bs!1115608 () Bool)

(assert (= bs!1115608 (and b!4724658 b!4724318)))

(assert (=> bs!1115608 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215920))))

(declare-fun bs!1115609 () Bool)

(assert (= bs!1115609 (and b!4724658 d!1504828)))

(assert (=> bs!1115609 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889455) (= lambda!216000 lambda!215946))))

(declare-fun bs!1115610 () Bool)

(assert (= bs!1115610 (and b!4724658 b!4724434)))

(assert (=> bs!1115610 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215940))))

(declare-fun bs!1115611 () Bool)

(assert (= bs!1115611 (and b!4724658 d!1504812)))

(assert (=> bs!1115611 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889351) (= lambda!216000 lambda!215933))))

(assert (=> bs!1115604 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889503) (= lambda!216000 lambda!215958))))

(declare-fun bs!1115612 () Bool)

(assert (= bs!1115612 (and b!4724658 b!4724513)))

(assert (=> bs!1115612 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216000 lambda!215956))))

(declare-fun bs!1115613 () Bool)

(assert (= bs!1115613 (and b!4724658 b!4724402)))

(assert (=> bs!1115613 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215934))))

(declare-fun bs!1115614 () Bool)

(assert (= bs!1115614 (and b!4724658 b!4724558)))

(assert (=> bs!1115614 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216000 lambda!215973))))

(declare-fun bs!1115615 () Bool)

(assert (= bs!1115615 (and b!4724658 b!4724556)))

(assert (=> bs!1115615 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216000 lambda!215975))))

(declare-fun bs!1115616 () Bool)

(assert (= bs!1115616 (and b!4724658 d!1504918)))

(assert (=> bs!1115616 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889607) (= lambda!216000 lambda!215994))))

(declare-fun bs!1115617 () Bool)

(assert (= bs!1115617 (and b!4724658 d!1504728)))

(assert (=> bs!1115617 (not (= lambda!216000 lambda!215834))))

(declare-fun bs!1115618 () Bool)

(assert (= bs!1115618 (and b!4724658 b!4724387)))

(assert (=> bs!1115618 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215931))))

(assert (=> bs!1115615 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889579) (= lambda!216000 lambda!215976))))

(declare-fun bs!1115619 () Bool)

(assert (= bs!1115619 (and b!4724658 b!4724591)))

(assert (=> bs!1115619 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216000 lambda!215982))))

(declare-fun bs!1115620 () Bool)

(assert (= bs!1115620 (and b!4724658 d!1504878)))

(assert (=> bs!1115620 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889398) (= lambda!216000 lambda!215970))))

(declare-fun bs!1115621 () Bool)

(assert (= bs!1115621 (and b!4724658 d!1504864)))

(assert (=> bs!1115621 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889493) (= lambda!216000 lambda!215959))))

(assert (=> bs!1115618 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889361) (= lambda!216000 lambda!215932))))

(declare-fun bs!1115622 () Bool)

(assert (= bs!1115622 (and b!4724658 b!4724441)))

(assert (=> bs!1115622 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215943))))

(assert (=> bs!1115619 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889617) (= lambda!216000 lambda!215989))))

(declare-fun bs!1115623 () Bool)

(assert (= bs!1115623 (and b!4724658 b!4724436)))

(assert (=> bs!1115623 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215939))))

(declare-fun bs!1115624 () Bool)

(assert (= bs!1115624 (and b!4724658 d!1504820)))

(assert (=> bs!1115624 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889388) (= lambda!216000 lambda!215937))))

(declare-fun bs!1115625 () Bool)

(assert (= bs!1115625 (and b!4724658 b!4724320)))

(assert (=> bs!1115625 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215918))))

(declare-fun bs!1115626 () Bool)

(assert (= bs!1115626 (and b!4724658 b!4724400)))

(assert (=> bs!1115626 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889398) (= lambda!216000 lambda!215936))))

(declare-fun bs!1115627 () Bool)

(assert (= bs!1115627 (and b!4724658 d!1504736)))

(assert (=> bs!1115627 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889297) (= lambda!216000 lambda!215923))))

(assert (=> bs!1115608 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889307) (= lambda!216000 lambda!215922))))

(declare-fun bs!1115628 () Bool)

(assert (= bs!1115628 (and b!4724658 b!4724593)))

(assert (=> bs!1115628 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216000 lambda!215979))))

(declare-fun bs!1115629 () Bool)

(assert (= bs!1115629 (and b!4724658 d!1504846)))

(assert (=> bs!1115629 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215949))))

(declare-fun bs!1115630 () Bool)

(assert (= bs!1115630 (and b!4724658 b!4724439)))

(assert (=> bs!1115630 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889465) (= lambda!216000 lambda!215945))))

(assert (=> bs!1115630 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215944))))

(assert (=> bs!1115610 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889444) (= lambda!216000 lambda!215941))))

(assert (=> bs!1115626 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216000 lambda!215935))))

(declare-fun bs!1115631 () Bool)

(assert (= bs!1115631 (and b!4724658 d!1504730)))

(assert (=> bs!1115631 (not (= lambda!216000 lambda!215835))))

(assert (=> b!4724658 true))

(declare-fun bs!1115637 () Bool)

(declare-fun b!4724656 () Bool)

(assert (= bs!1115637 (and b!4724656 b!4724511)))

(declare-fun lambda!216002 () Int)

(assert (=> bs!1115637 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216002 lambda!215957))))

(declare-fun bs!1115639 () Bool)

(assert (= bs!1115639 (and b!4724656 d!1504898)))

(assert (=> bs!1115639 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889569) (= lambda!216002 lambda!215977))))

(declare-fun bs!1115641 () Bool)

(assert (= bs!1115641 (and b!4724656 b!4724389)))

(assert (=> bs!1115641 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215930))))

(declare-fun bs!1115643 () Bool)

(assert (= bs!1115643 (and b!4724656 d!1504826)))

(assert (=> bs!1115643 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889434) (= lambda!216002 lambda!215942))))

(declare-fun bs!1115644 () Bool)

(assert (= bs!1115644 (and b!4724656 b!4724318)))

(assert (=> bs!1115644 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215920))))

(declare-fun bs!1115646 () Bool)

(assert (= bs!1115646 (and b!4724656 d!1504828)))

(assert (=> bs!1115646 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889455) (= lambda!216002 lambda!215946))))

(declare-fun bs!1115648 () Bool)

(assert (= bs!1115648 (and b!4724656 b!4724434)))

(assert (=> bs!1115648 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215940))))

(declare-fun bs!1115650 () Bool)

(assert (= bs!1115650 (and b!4724656 d!1504812)))

(assert (=> bs!1115650 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889351) (= lambda!216002 lambda!215933))))

(assert (=> bs!1115637 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889503) (= lambda!216002 lambda!215958))))

(declare-fun bs!1115652 () Bool)

(assert (= bs!1115652 (and b!4724656 b!4724513)))

(assert (=> bs!1115652 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216002 lambda!215956))))

(declare-fun bs!1115654 () Bool)

(assert (= bs!1115654 (and b!4724656 b!4724402)))

(assert (=> bs!1115654 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215934))))

(declare-fun bs!1115656 () Bool)

(assert (= bs!1115656 (and b!4724656 b!4724558)))

(assert (=> bs!1115656 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216002 lambda!215973))))

(declare-fun bs!1115658 () Bool)

(assert (= bs!1115658 (and b!4724656 b!4724556)))

(assert (=> bs!1115658 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216002 lambda!215975))))

(declare-fun bs!1115659 () Bool)

(assert (= bs!1115659 (and b!4724656 d!1504918)))

(assert (=> bs!1115659 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889607) (= lambda!216002 lambda!215994))))

(declare-fun bs!1115660 () Bool)

(assert (= bs!1115660 (and b!4724656 d!1504728)))

(assert (=> bs!1115660 (not (= lambda!216002 lambda!215834))))

(declare-fun bs!1115661 () Bool)

(assert (= bs!1115661 (and b!4724656 b!4724387)))

(assert (=> bs!1115661 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215931))))

(assert (=> bs!1115658 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889579) (= lambda!216002 lambda!215976))))

(declare-fun bs!1115664 () Bool)

(assert (= bs!1115664 (and b!4724656 b!4724591)))

(assert (=> bs!1115664 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216002 lambda!215982))))

(declare-fun bs!1115666 () Bool)

(assert (= bs!1115666 (and b!4724656 d!1504878)))

(assert (=> bs!1115666 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889398) (= lambda!216002 lambda!215970))))

(declare-fun bs!1115667 () Bool)

(assert (= bs!1115667 (and b!4724656 d!1504864)))

(assert (=> bs!1115667 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889493) (= lambda!216002 lambda!215959))))

(declare-fun bs!1115669 () Bool)

(assert (= bs!1115669 (and b!4724656 b!4724658)))

(assert (=> bs!1115669 (= lambda!216002 lambda!216000)))

(assert (=> bs!1115661 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889361) (= lambda!216002 lambda!215932))))

(declare-fun bs!1115671 () Bool)

(assert (= bs!1115671 (and b!4724656 b!4724441)))

(assert (=> bs!1115671 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215943))))

(assert (=> bs!1115664 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889617) (= lambda!216002 lambda!215989))))

(declare-fun bs!1115674 () Bool)

(assert (= bs!1115674 (and b!4724656 b!4724436)))

(assert (=> bs!1115674 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215939))))

(declare-fun bs!1115675 () Bool)

(assert (= bs!1115675 (and b!4724656 d!1504820)))

(assert (=> bs!1115675 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889388) (= lambda!216002 lambda!215937))))

(declare-fun bs!1115677 () Bool)

(assert (= bs!1115677 (and b!4724656 b!4724320)))

(assert (=> bs!1115677 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215918))))

(declare-fun bs!1115679 () Bool)

(assert (= bs!1115679 (and b!4724656 b!4724400)))

(assert (=> bs!1115679 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889398) (= lambda!216002 lambda!215936))))

(declare-fun bs!1115680 () Bool)

(assert (= bs!1115680 (and b!4724656 d!1504736)))

(assert (=> bs!1115680 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889297) (= lambda!216002 lambda!215923))))

(assert (=> bs!1115644 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889307) (= lambda!216002 lambda!215922))))

(declare-fun bs!1115681 () Bool)

(assert (= bs!1115681 (and b!4724656 b!4724593)))

(assert (=> bs!1115681 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216002 lambda!215979))))

(declare-fun bs!1115682 () Bool)

(assert (= bs!1115682 (and b!4724656 d!1504846)))

(assert (=> bs!1115682 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215949))))

(declare-fun bs!1115684 () Bool)

(assert (= bs!1115684 (and b!4724656 b!4724439)))

(assert (=> bs!1115684 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889465) (= lambda!216002 lambda!215945))))

(assert (=> bs!1115684 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215944))))

(assert (=> bs!1115648 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889444) (= lambda!216002 lambda!215941))))

(assert (=> bs!1115679 (= (= (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889044) (= lambda!216002 lambda!215935))))

(declare-fun bs!1115685 () Bool)

(assert (= bs!1115685 (and b!4724656 d!1504730)))

(assert (=> bs!1115685 (not (= lambda!216002 lambda!215835))))

(assert (=> b!4724656 true))

(declare-fun lt!1889688 () ListMap!5285)

(declare-fun lambda!216003 () Int)

(assert (=> bs!1115637 (= (= lt!1889688 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216003 lambda!215957))))

(assert (=> bs!1115641 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215930))))

(assert (=> bs!1115643 (= (= lt!1889688 lt!1889434) (= lambda!216003 lambda!215942))))

(assert (=> bs!1115644 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215920))))

(assert (=> bs!1115646 (= (= lt!1889688 lt!1889455) (= lambda!216003 lambda!215946))))

(assert (=> bs!1115648 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215940))))

(assert (=> bs!1115650 (= (= lt!1889688 lt!1889351) (= lambda!216003 lambda!215933))))

(assert (=> bs!1115637 (= (= lt!1889688 lt!1889503) (= lambda!216003 lambda!215958))))

(assert (=> bs!1115652 (= (= lt!1889688 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216003 lambda!215956))))

(assert (=> bs!1115654 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215934))))

(assert (=> bs!1115656 (= (= lt!1889688 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216003 lambda!215973))))

(assert (=> bs!1115658 (= (= lt!1889688 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216003 lambda!215975))))

(assert (=> bs!1115659 (= (= lt!1889688 lt!1889607) (= lambda!216003 lambda!215994))))

(assert (=> bs!1115660 (not (= lambda!216003 lambda!215834))))

(assert (=> bs!1115661 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215931))))

(assert (=> bs!1115639 (= (= lt!1889688 lt!1889569) (= lambda!216003 lambda!215977))))

(assert (=> b!4724656 (= (= lt!1889688 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216003 lambda!216002))))

(assert (=> bs!1115658 (= (= lt!1889688 lt!1889579) (= lambda!216003 lambda!215976))))

(assert (=> bs!1115664 (= (= lt!1889688 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216003 lambda!215982))))

(assert (=> bs!1115666 (= (= lt!1889688 lt!1889398) (= lambda!216003 lambda!215970))))

(assert (=> bs!1115667 (= (= lt!1889688 lt!1889493) (= lambda!216003 lambda!215959))))

(assert (=> bs!1115669 (= (= lt!1889688 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216003 lambda!216000))))

(assert (=> bs!1115661 (= (= lt!1889688 lt!1889361) (= lambda!216003 lambda!215932))))

(assert (=> bs!1115671 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215943))))

(assert (=> bs!1115664 (= (= lt!1889688 lt!1889617) (= lambda!216003 lambda!215989))))

(assert (=> bs!1115674 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215939))))

(assert (=> bs!1115675 (= (= lt!1889688 lt!1889388) (= lambda!216003 lambda!215937))))

(assert (=> bs!1115677 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215918))))

(assert (=> bs!1115679 (= (= lt!1889688 lt!1889398) (= lambda!216003 lambda!215936))))

(assert (=> bs!1115680 (= (= lt!1889688 lt!1889297) (= lambda!216003 lambda!215923))))

(assert (=> bs!1115644 (= (= lt!1889688 lt!1889307) (= lambda!216003 lambda!215922))))

(assert (=> bs!1115681 (= (= lt!1889688 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216003 lambda!215979))))

(assert (=> bs!1115682 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215949))))

(assert (=> bs!1115684 (= (= lt!1889688 lt!1889465) (= lambda!216003 lambda!215945))))

(assert (=> bs!1115684 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215944))))

(assert (=> bs!1115648 (= (= lt!1889688 lt!1889444) (= lambda!216003 lambda!215941))))

(assert (=> bs!1115679 (= (= lt!1889688 lt!1889044) (= lambda!216003 lambda!215935))))

(assert (=> bs!1115685 (not (= lambda!216003 lambda!215835))))

(assert (=> b!4724656 true))

(declare-fun bs!1115702 () Bool)

(declare-fun d!1504946 () Bool)

(assert (= bs!1115702 (and d!1504946 b!4724511)))

(declare-fun lambda!216005 () Int)

(declare-fun lt!1889678 () ListMap!5285)

(assert (=> bs!1115702 (= (= lt!1889678 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216005 lambda!215957))))

(declare-fun bs!1115704 () Bool)

(assert (= bs!1115704 (and d!1504946 b!4724389)))

(assert (=> bs!1115704 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215930))))

(declare-fun bs!1115706 () Bool)

(assert (= bs!1115706 (and d!1504946 d!1504826)))

(assert (=> bs!1115706 (= (= lt!1889678 lt!1889434) (= lambda!216005 lambda!215942))))

(declare-fun bs!1115708 () Bool)

(assert (= bs!1115708 (and d!1504946 b!4724318)))

(assert (=> bs!1115708 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215920))))

(declare-fun bs!1115710 () Bool)

(assert (= bs!1115710 (and d!1504946 d!1504828)))

(assert (=> bs!1115710 (= (= lt!1889678 lt!1889455) (= lambda!216005 lambda!215946))))

(declare-fun bs!1115712 () Bool)

(assert (= bs!1115712 (and d!1504946 b!4724434)))

(assert (=> bs!1115712 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215940))))

(declare-fun bs!1115713 () Bool)

(assert (= bs!1115713 (and d!1504946 d!1504812)))

(assert (=> bs!1115713 (= (= lt!1889678 lt!1889351) (= lambda!216005 lambda!215933))))

(declare-fun bs!1115715 () Bool)

(assert (= bs!1115715 (and d!1504946 b!4724513)))

(assert (=> bs!1115715 (= (= lt!1889678 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216005 lambda!215956))))

(declare-fun bs!1115717 () Bool)

(assert (= bs!1115717 (and d!1504946 b!4724402)))

(assert (=> bs!1115717 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215934))))

(declare-fun bs!1115718 () Bool)

(assert (= bs!1115718 (and d!1504946 b!4724558)))

(assert (=> bs!1115718 (= (= lt!1889678 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216005 lambda!215973))))

(declare-fun bs!1115720 () Bool)

(assert (= bs!1115720 (and d!1504946 b!4724556)))

(assert (=> bs!1115720 (= (= lt!1889678 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216005 lambda!215975))))

(declare-fun bs!1115722 () Bool)

(assert (= bs!1115722 (and d!1504946 d!1504918)))

(assert (=> bs!1115722 (= (= lt!1889678 lt!1889607) (= lambda!216005 lambda!215994))))

(declare-fun bs!1115723 () Bool)

(assert (= bs!1115723 (and d!1504946 d!1504728)))

(assert (=> bs!1115723 (not (= lambda!216005 lambda!215834))))

(declare-fun bs!1115724 () Bool)

(assert (= bs!1115724 (and d!1504946 b!4724387)))

(assert (=> bs!1115724 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215931))))

(declare-fun bs!1115725 () Bool)

(assert (= bs!1115725 (and d!1504946 d!1504898)))

(assert (=> bs!1115725 (= (= lt!1889678 lt!1889569) (= lambda!216005 lambda!215977))))

(declare-fun bs!1115726 () Bool)

(assert (= bs!1115726 (and d!1504946 b!4724656)))

(assert (=> bs!1115726 (= (= lt!1889678 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216005 lambda!216002))))

(assert (=> bs!1115726 (= (= lt!1889678 lt!1889688) (= lambda!216005 lambda!216003))))

(assert (=> bs!1115702 (= (= lt!1889678 lt!1889503) (= lambda!216005 lambda!215958))))

(assert (=> bs!1115720 (= (= lt!1889678 lt!1889579) (= lambda!216005 lambda!215976))))

(declare-fun bs!1115729 () Bool)

(assert (= bs!1115729 (and d!1504946 b!4724591)))

(assert (=> bs!1115729 (= (= lt!1889678 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216005 lambda!215982))))

(declare-fun bs!1115731 () Bool)

(assert (= bs!1115731 (and d!1504946 d!1504878)))

(assert (=> bs!1115731 (= (= lt!1889678 lt!1889398) (= lambda!216005 lambda!215970))))

(declare-fun bs!1115733 () Bool)

(assert (= bs!1115733 (and d!1504946 d!1504864)))

(assert (=> bs!1115733 (= (= lt!1889678 lt!1889493) (= lambda!216005 lambda!215959))))

(declare-fun bs!1115735 () Bool)

(assert (= bs!1115735 (and d!1504946 b!4724658)))

(assert (=> bs!1115735 (= (= lt!1889678 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216005 lambda!216000))))

(assert (=> bs!1115724 (= (= lt!1889678 lt!1889361) (= lambda!216005 lambda!215932))))

(declare-fun bs!1115737 () Bool)

(assert (= bs!1115737 (and d!1504946 b!4724441)))

(assert (=> bs!1115737 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215943))))

(assert (=> bs!1115729 (= (= lt!1889678 lt!1889617) (= lambda!216005 lambda!215989))))

(declare-fun bs!1115741 () Bool)

(assert (= bs!1115741 (and d!1504946 b!4724436)))

(assert (=> bs!1115741 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215939))))

(declare-fun bs!1115742 () Bool)

(assert (= bs!1115742 (and d!1504946 d!1504820)))

(assert (=> bs!1115742 (= (= lt!1889678 lt!1889388) (= lambda!216005 lambda!215937))))

(declare-fun bs!1115744 () Bool)

(assert (= bs!1115744 (and d!1504946 b!4724320)))

(assert (=> bs!1115744 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215918))))

(declare-fun bs!1115746 () Bool)

(assert (= bs!1115746 (and d!1504946 b!4724400)))

(assert (=> bs!1115746 (= (= lt!1889678 lt!1889398) (= lambda!216005 lambda!215936))))

(declare-fun bs!1115748 () Bool)

(assert (= bs!1115748 (and d!1504946 d!1504736)))

(assert (=> bs!1115748 (= (= lt!1889678 lt!1889297) (= lambda!216005 lambda!215923))))

(assert (=> bs!1115708 (= (= lt!1889678 lt!1889307) (= lambda!216005 lambda!215922))))

(declare-fun bs!1115750 () Bool)

(assert (= bs!1115750 (and d!1504946 b!4724593)))

(assert (=> bs!1115750 (= (= lt!1889678 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216005 lambda!215979))))

(declare-fun bs!1115752 () Bool)

(assert (= bs!1115752 (and d!1504946 d!1504846)))

(assert (=> bs!1115752 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215949))))

(declare-fun bs!1115754 () Bool)

(assert (= bs!1115754 (and d!1504946 b!4724439)))

(assert (=> bs!1115754 (= (= lt!1889678 lt!1889465) (= lambda!216005 lambda!215945))))

(assert (=> bs!1115754 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215944))))

(assert (=> bs!1115712 (= (= lt!1889678 lt!1889444) (= lambda!216005 lambda!215941))))

(assert (=> bs!1115746 (= (= lt!1889678 lt!1889044) (= lambda!216005 lambda!215935))))

(declare-fun bs!1115756 () Bool)

(assert (= bs!1115756 (and d!1504946 d!1504730)))

(assert (=> bs!1115756 (not (= lambda!216005 lambda!215835))))

(assert (=> d!1504946 true))

(declare-fun bm!330526 () Bool)

(declare-fun call!330531 () Unit!130501)

(assert (=> bm!330526 (= call!330531 (lemmaContainsAllItsOwnKeys!799 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))))))

(declare-fun b!4724655 () Bool)

(declare-fun e!2946690 () Bool)

(assert (=> b!4724655 (= e!2946690 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) lambda!216003))))

(declare-fun b!4724657 () Bool)

(declare-fun e!2946691 () Bool)

(assert (=> b!4724657 (= e!2946691 (invariantList!1513 (toList!5921 lt!1889678)))))

(declare-fun e!2946692 () ListMap!5285)

(assert (=> b!4724658 (= e!2946692 (extractMap!2042 (t!360231 (toList!5922 lm!2023))))))

(declare-fun lt!1889681 () Unit!130501)

(assert (=> b!4724658 (= lt!1889681 call!330531)))

(declare-fun call!330533 () Bool)

(assert (=> b!4724658 call!330533))

(declare-fun lt!1889695 () Unit!130501)

(assert (=> b!4724658 (= lt!1889695 lt!1889681)))

(declare-fun call!330532 () Bool)

(assert (=> b!4724658 call!330532))

(declare-fun lt!1889694 () Unit!130501)

(declare-fun Unit!130701 () Unit!130501)

(assert (=> b!4724658 (= lt!1889694 Unit!130701)))

(declare-fun b!4724659 () Bool)

(declare-fun res!1999185 () Bool)

(assert (=> b!4724659 (=> (not res!1999185) (not e!2946691))))

(assert (=> b!4724659 (= res!1999185 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) lambda!216005))))

(declare-fun bm!330527 () Bool)

(declare-fun c!806904 () Bool)

(declare-fun lt!1889693 () ListMap!5285)

(assert (=> bm!330527 (= call!330533 (forall!11596 (ite c!806904 (toList!5921 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (toList!5921 lt!1889693)) (ite c!806904 lambda!216000 lambda!216003)))))

(declare-fun bm!330528 () Bool)

(assert (=> bm!330528 (= call!330532 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (ite c!806904 lambda!216000 lambda!216002)))))

(assert (=> d!1504946 e!2946691))

(declare-fun res!1999187 () Bool)

(assert (=> d!1504946 (=> (not res!1999187) (not e!2946691))))

(assert (=> d!1504946 (= res!1999187 (forall!11596 (_2!30524 (h!59186 (toList!5922 lm!2023))) lambda!216005))))

(assert (=> d!1504946 (= lt!1889678 e!2946692)))

(assert (=> d!1504946 (= c!806904 ((_ is Nil!52836) (_2!30524 (h!59186 (toList!5922 lm!2023)))))))

(assert (=> d!1504946 (noDuplicateKeys!2016 (_2!30524 (h!59186 (toList!5922 lm!2023))))))

(assert (=> d!1504946 (= (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (toList!5922 lm!2023))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) lt!1889678)))

(assert (=> b!4724656 (= e!2946692 lt!1889688)))

(assert (=> b!4724656 (= lt!1889693 (+!2271 (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (=> b!4724656 (= lt!1889688 (addToMapMapFromBucket!1446 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) (+!2271 (extractMap!2042 (t!360231 (toList!5922 lm!2023))) (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun lt!1889697 () Unit!130501)

(assert (=> b!4724656 (= lt!1889697 call!330531)))

(assert (=> b!4724656 call!330532))

(declare-fun lt!1889696 () Unit!130501)

(assert (=> b!4724656 (= lt!1889696 lt!1889697)))

(assert (=> b!4724656 call!330533))

(declare-fun lt!1889683 () Unit!130501)

(declare-fun Unit!130702 () Unit!130501)

(assert (=> b!4724656 (= lt!1889683 Unit!130702)))

(assert (=> b!4724656 (forall!11596 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) lambda!216003)))

(declare-fun lt!1889689 () Unit!130501)

(declare-fun Unit!130703 () Unit!130501)

(assert (=> b!4724656 (= lt!1889689 Unit!130703)))

(declare-fun lt!1889684 () Unit!130501)

(declare-fun Unit!130704 () Unit!130501)

(assert (=> b!4724656 (= lt!1889684 Unit!130704)))

(declare-fun lt!1889687 () Unit!130501)

(assert (=> b!4724656 (= lt!1889687 (forallContained!3643 (toList!5921 lt!1889693) lambda!216003 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (=> b!4724656 (contains!16183 lt!1889693 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(declare-fun lt!1889686 () Unit!130501)

(declare-fun Unit!130705 () Unit!130501)

(assert (=> b!4724656 (= lt!1889686 Unit!130705)))

(assert (=> b!4724656 (contains!16183 lt!1889688 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(declare-fun lt!1889679 () Unit!130501)

(declare-fun Unit!130706 () Unit!130501)

(assert (=> b!4724656 (= lt!1889679 Unit!130706)))

(assert (=> b!4724656 (forall!11596 (_2!30524 (h!59186 (toList!5922 lm!2023))) lambda!216003)))

(declare-fun lt!1889680 () Unit!130501)

(declare-fun Unit!130707 () Unit!130501)

(assert (=> b!4724656 (= lt!1889680 Unit!130707)))

(assert (=> b!4724656 (forall!11596 (toList!5921 lt!1889693) lambda!216003)))

(declare-fun lt!1889691 () Unit!130501)

(declare-fun Unit!130708 () Unit!130501)

(assert (=> b!4724656 (= lt!1889691 Unit!130708)))

(declare-fun lt!1889685 () Unit!130501)

(declare-fun Unit!130709 () Unit!130501)

(assert (=> b!4724656 (= lt!1889685 Unit!130709)))

(declare-fun lt!1889692 () Unit!130501)

(assert (=> b!4724656 (= lt!1889692 (addForallContainsKeyThenBeforeAdding!798 (extractMap!2042 (t!360231 (toList!5922 lm!2023))) lt!1889688 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (_2!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> b!4724656 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) lambda!216003)))

(declare-fun lt!1889682 () Unit!130501)

(assert (=> b!4724656 (= lt!1889682 lt!1889692)))

(assert (=> b!4724656 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) lambda!216003)))

(declare-fun lt!1889698 () Unit!130501)

(declare-fun Unit!130710 () Unit!130501)

(assert (=> b!4724656 (= lt!1889698 Unit!130710)))

(declare-fun res!1999186 () Bool)

(assert (=> b!4724656 (= res!1999186 (forall!11596 (_2!30524 (h!59186 (toList!5922 lm!2023))) lambda!216003))))

(assert (=> b!4724656 (=> (not res!1999186) (not e!2946690))))

(assert (=> b!4724656 e!2946690))

(declare-fun lt!1889690 () Unit!130501)

(declare-fun Unit!130711 () Unit!130501)

(assert (=> b!4724656 (= lt!1889690 Unit!130711)))

(assert (= (and d!1504946 c!806904) b!4724658))

(assert (= (and d!1504946 (not c!806904)) b!4724656))

(assert (= (and b!4724656 res!1999186) b!4724655))

(assert (= (or b!4724658 b!4724656) bm!330526))

(assert (= (or b!4724658 b!4724656) bm!330528))

(assert (= (or b!4724658 b!4724656) bm!330527))

(assert (= (and d!1504946 res!1999187) b!4724659))

(assert (= (and b!4724659 res!1999185) b!4724657))

(declare-fun m!5662851 () Bool)

(assert (=> b!4724657 m!5662851))

(assert (=> bm!330526 m!5661703))

(declare-fun m!5662853 () Bool)

(assert (=> bm!330526 m!5662853))

(declare-fun m!5662855 () Bool)

(assert (=> b!4724659 m!5662855))

(declare-fun m!5662857 () Bool)

(assert (=> d!1504946 m!5662857))

(assert (=> d!1504946 m!5662007))

(declare-fun m!5662859 () Bool)

(assert (=> b!4724656 m!5662859))

(declare-fun m!5662861 () Bool)

(assert (=> b!4724656 m!5662861))

(declare-fun m!5662863 () Bool)

(assert (=> b!4724656 m!5662863))

(declare-fun m!5662865 () Bool)

(assert (=> b!4724656 m!5662865))

(declare-fun m!5662867 () Bool)

(assert (=> b!4724656 m!5662867))

(assert (=> b!4724656 m!5662859))

(assert (=> b!4724656 m!5661703))

(assert (=> b!4724656 m!5662861))

(declare-fun m!5662869 () Bool)

(assert (=> b!4724656 m!5662869))

(declare-fun m!5662871 () Bool)

(assert (=> b!4724656 m!5662871))

(assert (=> b!4724656 m!5661703))

(declare-fun m!5662873 () Bool)

(assert (=> b!4724656 m!5662873))

(declare-fun m!5662875 () Bool)

(assert (=> b!4724656 m!5662875))

(declare-fun m!5662877 () Bool)

(assert (=> b!4724656 m!5662877))

(assert (=> b!4724656 m!5662869))

(declare-fun m!5662879 () Bool)

(assert (=> bm!330527 m!5662879))

(assert (=> b!4724655 m!5662869))

(declare-fun m!5662881 () Bool)

(assert (=> bm!330528 m!5662881))

(assert (=> b!4724431 d!1504946))

(assert (=> b!4724431 d!1504778))

(declare-fun d!1504966 () Bool)

(assert (=> d!1504966 (= (invariantList!1513 (toList!5921 lt!1889337)) (noDuplicatedKeys!376 (toList!5921 lt!1889337)))))

(declare-fun bs!1115767 () Bool)

(assert (= bs!1115767 d!1504966))

(declare-fun m!5662883 () Bool)

(assert (=> bs!1115767 m!5662883))

(assert (=> d!1504784 d!1504966))

(declare-fun d!1504968 () Bool)

(declare-fun res!1999206 () Bool)

(declare-fun e!2946717 () Bool)

(assert (=> d!1504968 (=> res!1999206 e!2946717)))

(assert (=> d!1504968 (= res!1999206 ((_ is Nil!52837) (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))))

(assert (=> d!1504968 (= (forall!11594 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))) lambda!215927) e!2946717)))

(declare-fun b!4724692 () Bool)

(declare-fun e!2946718 () Bool)

(assert (=> b!4724692 (= e!2946717 e!2946718)))

(declare-fun res!1999207 () Bool)

(assert (=> b!4724692 (=> (not res!1999207) (not e!2946718))))

(assert (=> b!4724692 (= res!1999207 (dynLambda!21823 lambda!215927 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))))

(declare-fun b!4724693 () Bool)

(assert (=> b!4724693 (= e!2946718 (forall!11594 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))) lambda!215927))))

(assert (= (and d!1504968 (not res!1999206)) b!4724692))

(assert (= (and b!4724692 res!1999207) b!4724693))

(declare-fun b_lambda!179263 () Bool)

(assert (=> (not b_lambda!179263) (not b!4724692)))

(declare-fun m!5662885 () Bool)

(assert (=> b!4724692 m!5662885))

(declare-fun m!5662887 () Bool)

(assert (=> b!4724693 m!5662887))

(assert (=> d!1504784 d!1504968))

(declare-fun d!1504970 () Bool)

(declare-fun res!1999208 () Bool)

(declare-fun e!2946719 () Bool)

(assert (=> d!1504970 (=> res!1999208 e!2946719)))

(assert (=> d!1504970 (= res!1999208 (and ((_ is Cons!52836) (t!360230 lt!1889050)) (= (_1!30523 (h!59185 (t!360230 lt!1889050))) key!4653)))))

(assert (=> d!1504970 (= (containsKey!3375 (t!360230 lt!1889050) key!4653) e!2946719)))

(declare-fun b!4724694 () Bool)

(declare-fun e!2946720 () Bool)

(assert (=> b!4724694 (= e!2946719 e!2946720)))

(declare-fun res!1999209 () Bool)

(assert (=> b!4724694 (=> (not res!1999209) (not e!2946720))))

(assert (=> b!4724694 (= res!1999209 ((_ is Cons!52836) (t!360230 lt!1889050)))))

(declare-fun b!4724695 () Bool)

(assert (=> b!4724695 (= e!2946720 (containsKey!3375 (t!360230 (t!360230 lt!1889050)) key!4653))))

(assert (= (and d!1504970 (not res!1999208)) b!4724694))

(assert (= (and b!4724694 res!1999209) b!4724695))

(declare-fun m!5662889 () Bool)

(assert (=> b!4724695 m!5662889))

(assert (=> b!4724212 d!1504970))

(declare-fun d!1504972 () Bool)

(assert (=> d!1504972 (= (invariantList!1513 (toList!5921 lt!1889351)) (noDuplicatedKeys!376 (toList!5921 lt!1889351)))))

(declare-fun bs!1115768 () Bool)

(assert (= bs!1115768 d!1504972))

(declare-fun m!5662891 () Bool)

(assert (=> bs!1115768 m!5662891))

(assert (=> b!4724388 d!1504972))

(declare-fun d!1504974 () Bool)

(declare-fun res!1999210 () Bool)

(declare-fun e!2946721 () Bool)

(assert (=> d!1504974 (=> res!1999210 e!2946721)))

(assert (=> d!1504974 (= res!1999210 ((_ is Nil!52837) (t!360231 lt!1889048)))))

(assert (=> d!1504974 (= (forall!11594 (t!360231 lt!1889048) lambda!215822) e!2946721)))

(declare-fun b!4724696 () Bool)

(declare-fun e!2946722 () Bool)

(assert (=> b!4724696 (= e!2946721 e!2946722)))

(declare-fun res!1999211 () Bool)

(assert (=> b!4724696 (=> (not res!1999211) (not e!2946722))))

(assert (=> b!4724696 (= res!1999211 (dynLambda!21823 lambda!215822 (h!59186 (t!360231 lt!1889048))))))

(declare-fun b!4724697 () Bool)

(assert (=> b!4724697 (= e!2946722 (forall!11594 (t!360231 (t!360231 lt!1889048)) lambda!215822))))

(assert (= (and d!1504974 (not res!1999210)) b!4724696))

(assert (= (and b!4724696 res!1999211) b!4724697))

(declare-fun b_lambda!179265 () Bool)

(assert (=> (not b_lambda!179265) (not b!4724696)))

(declare-fun m!5662893 () Bool)

(assert (=> b!4724696 m!5662893))

(declare-fun m!5662895 () Bool)

(assert (=> b!4724697 m!5662895))

(assert (=> b!4724353 d!1504974))

(declare-fun d!1504976 () Bool)

(declare-fun res!1999216 () Bool)

(declare-fun e!2946727 () Bool)

(assert (=> d!1504976 (=> res!1999216 e!2946727)))

(assert (=> d!1504976 (= res!1999216 (and ((_ is Cons!52836) (toList!5921 lt!1889046)) (= (_1!30523 (h!59185 (toList!5921 lt!1889046))) key!4653)))))

(assert (=> d!1504976 (= (containsKey!3379 (toList!5921 lt!1889046) key!4653) e!2946727)))

(declare-fun b!4724702 () Bool)

(declare-fun e!2946728 () Bool)

(assert (=> b!4724702 (= e!2946727 e!2946728)))

(declare-fun res!1999217 () Bool)

(assert (=> b!4724702 (=> (not res!1999217) (not e!2946728))))

(assert (=> b!4724702 (= res!1999217 ((_ is Cons!52836) (toList!5921 lt!1889046)))))

(declare-fun b!4724703 () Bool)

(assert (=> b!4724703 (= e!2946728 (containsKey!3379 (t!360230 (toList!5921 lt!1889046)) key!4653))))

(assert (= (and d!1504976 (not res!1999216)) b!4724702))

(assert (= (and b!4724702 res!1999217) b!4724703))

(declare-fun m!5662897 () Bool)

(assert (=> b!4724703 m!5662897))

(assert (=> b!4724427 d!1504976))

(declare-fun d!1504978 () Bool)

(assert (=> d!1504978 (containsKey!3379 (toList!5921 lt!1889046) key!4653)))

(declare-fun lt!1889740 () Unit!130501)

(declare-fun choose!33351 (List!52960 K!14190) Unit!130501)

(assert (=> d!1504978 (= lt!1889740 (choose!33351 (toList!5921 lt!1889046) key!4653))))

(assert (=> d!1504978 (invariantList!1513 (toList!5921 lt!1889046))))

(assert (=> d!1504978 (= (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889046) key!4653) lt!1889740)))

(declare-fun bs!1115796 () Bool)

(assert (= bs!1115796 d!1504978))

(assert (=> bs!1115796 m!5662217))

(declare-fun m!5662899 () Bool)

(assert (=> bs!1115796 m!5662899))

(assert (=> bs!1115796 m!5662491))

(assert (=> b!4724427 d!1504978))

(declare-fun d!1504980 () Bool)

(declare-fun res!1999218 () Bool)

(declare-fun e!2946729 () Bool)

(assert (=> d!1504980 (=> res!1999218 e!2946729)))

(assert (=> d!1504980 (= res!1999218 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504980 (= (forall!11596 (toList!5921 lt!1889044) lambda!215922) e!2946729)))

(declare-fun b!4724704 () Bool)

(declare-fun e!2946730 () Bool)

(assert (=> b!4724704 (= e!2946729 e!2946730)))

(declare-fun res!1999219 () Bool)

(assert (=> b!4724704 (=> (not res!1999219) (not e!2946730))))

(assert (=> b!4724704 (= res!1999219 (dynLambda!21825 lambda!215922 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724705 () Bool)

(assert (=> b!4724705 (= e!2946730 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215922))))

(assert (= (and d!1504980 (not res!1999218)) b!4724704))

(assert (= (and b!4724704 res!1999219) b!4724705))

(declare-fun b_lambda!179267 () Bool)

(assert (=> (not b_lambda!179267) (not b!4724704)))

(declare-fun m!5662901 () Bool)

(assert (=> b!4724704 m!5662901))

(declare-fun m!5662903 () Bool)

(assert (=> b!4724705 m!5662903))

(assert (=> b!4724317 d!1504980))

(declare-fun d!1504982 () Bool)

(declare-fun choose!33352 (Hashable!6385 K!14190) (_ BitVec 64))

(assert (=> d!1504982 (= (hash!4390 hashF!1323 key!4653) (choose!33352 hashF!1323 key!4653))))

(declare-fun bs!1115797 () Bool)

(assert (= bs!1115797 d!1504982))

(declare-fun m!5662919 () Bool)

(assert (=> bs!1115797 m!5662919))

(assert (=> d!1504788 d!1504982))

(declare-fun d!1504984 () Bool)

(declare-fun res!1999224 () Bool)

(declare-fun e!2946736 () Bool)

(assert (=> d!1504984 (=> res!1999224 e!2946736)))

(assert (=> d!1504984 (= res!1999224 (and ((_ is Cons!52837) (toList!5922 lt!1889053)) (= (_1!30524 (h!59186 (toList!5922 lt!1889053))) lt!1889045)))))

(assert (=> d!1504984 (= (containsKey!3377 (toList!5922 lt!1889053) lt!1889045) e!2946736)))

(declare-fun b!4724712 () Bool)

(declare-fun e!2946737 () Bool)

(assert (=> b!4724712 (= e!2946736 e!2946737)))

(declare-fun res!1999225 () Bool)

(assert (=> b!4724712 (=> (not res!1999225) (not e!2946737))))

(assert (=> b!4724712 (= res!1999225 (and (or (not ((_ is Cons!52837) (toList!5922 lt!1889053))) (bvsle (_1!30524 (h!59186 (toList!5922 lt!1889053))) lt!1889045)) ((_ is Cons!52837) (toList!5922 lt!1889053)) (bvslt (_1!30524 (h!59186 (toList!5922 lt!1889053))) lt!1889045)))))

(declare-fun b!4724713 () Bool)

(assert (=> b!4724713 (= e!2946737 (containsKey!3377 (t!360231 (toList!5922 lt!1889053)) lt!1889045))))

(assert (= (and d!1504984 (not res!1999224)) b!4724712))

(assert (= (and b!4724712 res!1999225) b!4724713))

(declare-fun m!5662947 () Bool)

(assert (=> b!4724713 m!5662947))

(assert (=> d!1504700 d!1504984))

(declare-fun d!1504990 () Bool)

(declare-fun res!1999226 () Bool)

(declare-fun e!2946738 () Bool)

(assert (=> d!1504990 (=> res!1999226 e!2946738)))

(assert (=> d!1504990 (= res!1999226 ((_ is Nil!52836) oldBucket!34))))

(assert (=> d!1504990 (= (forall!11596 oldBucket!34 lambda!215835) e!2946738)))

(declare-fun b!4724714 () Bool)

(declare-fun e!2946739 () Bool)

(assert (=> b!4724714 (= e!2946738 e!2946739)))

(declare-fun res!1999227 () Bool)

(assert (=> b!4724714 (=> (not res!1999227) (not e!2946739))))

(assert (=> b!4724714 (= res!1999227 (dynLambda!21825 lambda!215835 (h!59185 oldBucket!34)))))

(declare-fun b!4724715 () Bool)

(assert (=> b!4724715 (= e!2946739 (forall!11596 (t!360230 oldBucket!34) lambda!215835))))

(assert (= (and d!1504990 (not res!1999226)) b!4724714))

(assert (= (and b!4724714 res!1999227) b!4724715))

(declare-fun b_lambda!179269 () Bool)

(assert (=> (not b_lambda!179269) (not b!4724714)))

(declare-fun m!5662949 () Bool)

(assert (=> b!4724714 m!5662949))

(declare-fun m!5662951 () Bool)

(assert (=> b!4724715 m!5662951))

(assert (=> d!1504730 d!1504990))

(declare-fun d!1504992 () Bool)

(declare-fun res!1999228 () Bool)

(declare-fun e!2946740 () Bool)

(assert (=> d!1504992 (=> res!1999228 e!2946740)))

(assert (=> d!1504992 (= res!1999228 ((_ is Nil!52836) (ite c!806857 (toList!5921 lt!1889044) (toList!5921 lt!1889403))))))

(assert (=> d!1504992 (= (forall!11596 (ite c!806857 (toList!5921 lt!1889044) (toList!5921 lt!1889403)) (ite c!806857 lambda!215934 lambda!215936)) e!2946740)))

(declare-fun b!4724716 () Bool)

(declare-fun e!2946741 () Bool)

(assert (=> b!4724716 (= e!2946740 e!2946741)))

(declare-fun res!1999229 () Bool)

(assert (=> b!4724716 (=> (not res!1999229) (not e!2946741))))

(assert (=> b!4724716 (= res!1999229 (dynLambda!21825 (ite c!806857 lambda!215934 lambda!215936) (h!59185 (ite c!806857 (toList!5921 lt!1889044) (toList!5921 lt!1889403)))))))

(declare-fun b!4724717 () Bool)

(assert (=> b!4724717 (= e!2946741 (forall!11596 (t!360230 (ite c!806857 (toList!5921 lt!1889044) (toList!5921 lt!1889403))) (ite c!806857 lambda!215934 lambda!215936)))))

(assert (= (and d!1504992 (not res!1999228)) b!4724716))

(assert (= (and b!4724716 res!1999229) b!4724717))

(declare-fun b_lambda!179271 () Bool)

(assert (=> (not b_lambda!179271) (not b!4724716)))

(declare-fun m!5662953 () Bool)

(assert (=> b!4724716 m!5662953))

(declare-fun m!5662955 () Bool)

(assert (=> b!4724717 m!5662955))

(assert (=> bm!330496 d!1504992))

(declare-fun d!1504994 () Bool)

(declare-fun res!1999230 () Bool)

(declare-fun e!2946742 () Bool)

(assert (=> d!1504994 (=> res!1999230 e!2946742)))

(assert (=> d!1504994 (= res!1999230 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504994 (= (forall!11596 (toList!5921 lt!1889044) lambda!215945) e!2946742)))

(declare-fun b!4724718 () Bool)

(declare-fun e!2946743 () Bool)

(assert (=> b!4724718 (= e!2946742 e!2946743)))

(declare-fun res!1999231 () Bool)

(assert (=> b!4724718 (=> (not res!1999231) (not e!2946743))))

(assert (=> b!4724718 (= res!1999231 (dynLambda!21825 lambda!215945 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724719 () Bool)

(assert (=> b!4724719 (= e!2946743 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215945))))

(assert (= (and d!1504994 (not res!1999230)) b!4724718))

(assert (= (and b!4724718 res!1999231) b!4724719))

(declare-fun b_lambda!179273 () Bool)

(assert (=> (not b_lambda!179273) (not b!4724718)))

(declare-fun m!5662957 () Bool)

(assert (=> b!4724718 m!5662957))

(declare-fun m!5662959 () Bool)

(assert (=> b!4724719 m!5662959))

(assert (=> b!4724438 d!1504994))

(declare-fun d!1504996 () Bool)

(declare-fun res!1999232 () Bool)

(declare-fun e!2946744 () Bool)

(assert (=> d!1504996 (=> res!1999232 e!2946744)))

(assert (=> d!1504996 (= res!1999232 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1504996 (= (forall!11596 (toList!5921 lt!1889044) lambda!215933) e!2946744)))

(declare-fun b!4724720 () Bool)

(declare-fun e!2946745 () Bool)

(assert (=> b!4724720 (= e!2946744 e!2946745)))

(declare-fun res!1999233 () Bool)

(assert (=> b!4724720 (=> (not res!1999233) (not e!2946745))))

(assert (=> b!4724720 (= res!1999233 (dynLambda!21825 lambda!215933 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724721 () Bool)

(assert (=> b!4724721 (= e!2946745 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215933))))

(assert (= (and d!1504996 (not res!1999232)) b!4724720))

(assert (= (and b!4724720 res!1999233) b!4724721))

(declare-fun b_lambda!179275 () Bool)

(assert (=> (not b_lambda!179275) (not b!4724720)))

(declare-fun m!5662961 () Bool)

(assert (=> b!4724720 m!5662961))

(declare-fun m!5662963 () Bool)

(assert (=> b!4724721 m!5662963))

(assert (=> b!4724390 d!1504996))

(assert (=> d!1504822 d!1504976))

(declare-fun d!1504998 () Bool)

(declare-fun lt!1889747 () Bool)

(assert (=> d!1504998 (= lt!1889747 (select (content!9400 (keys!18978 lt!1889046)) key!4653))))

(declare-fun e!2946750 () Bool)

(assert (=> d!1504998 (= lt!1889747 e!2946750)))

(declare-fun res!1999239 () Bool)

(assert (=> d!1504998 (=> (not res!1999239) (not e!2946750))))

(assert (=> d!1504998 (= res!1999239 ((_ is Cons!52839) (keys!18978 lt!1889046)))))

(assert (=> d!1504998 (= (contains!16188 (keys!18978 lt!1889046) key!4653) lt!1889747)))

(declare-fun b!4724726 () Bool)

(declare-fun e!2946751 () Bool)

(assert (=> b!4724726 (= e!2946750 e!2946751)))

(declare-fun res!1999238 () Bool)

(assert (=> b!4724726 (=> res!1999238 e!2946751)))

(assert (=> b!4724726 (= res!1999238 (= (h!59190 (keys!18978 lt!1889046)) key!4653))))

(declare-fun b!4724727 () Bool)

(assert (=> b!4724727 (= e!2946751 (contains!16188 (t!360235 (keys!18978 lt!1889046)) key!4653))))

(assert (= (and d!1504998 res!1999239) b!4724726))

(assert (= (and b!4724726 (not res!1999238)) b!4724727))

(assert (=> d!1504998 m!5662207))

(declare-fun m!5662965 () Bool)

(assert (=> d!1504998 m!5662965))

(declare-fun m!5662967 () Bool)

(assert (=> d!1504998 m!5662967))

(declare-fun m!5662969 () Bool)

(assert (=> b!4724727 m!5662969))

(assert (=> b!4724429 d!1504998))

(assert (=> b!4724429 d!1504854))

(declare-fun d!1505000 () Bool)

(assert (=> d!1505000 (= (invariantList!1513 (toList!5921 lt!1889297)) (noDuplicatedKeys!376 (toList!5921 lt!1889297)))))

(declare-fun bs!1115812 () Bool)

(assert (= bs!1115812 d!1505000))

(declare-fun m!5662971 () Bool)

(assert (=> bs!1115812 m!5662971))

(assert (=> b!4724319 d!1505000))

(declare-fun b!4724731 () Bool)

(declare-fun e!2946753 () Option!12365)

(assert (=> b!4724731 (= e!2946753 None!12364)))

(declare-fun b!4724728 () Bool)

(declare-fun e!2946752 () Option!12365)

(assert (=> b!4724728 (= e!2946752 (Some!12364 (_2!30523 (h!59185 (toList!5921 lt!1889381)))))))

(declare-fun b!4724729 () Bool)

(assert (=> b!4724729 (= e!2946752 e!2946753)))

(declare-fun c!806914 () Bool)

(assert (=> b!4724729 (= c!806914 (and ((_ is Cons!52836) (toList!5921 lt!1889381)) (not (= (_1!30523 (h!59185 (toList!5921 lt!1889381))) (_1!30523 lt!1889051)))))))

(declare-fun b!4724730 () Bool)

(assert (=> b!4724730 (= e!2946753 (getValueByKey!1961 (t!360230 (toList!5921 lt!1889381)) (_1!30523 lt!1889051)))))

(declare-fun d!1505002 () Bool)

(declare-fun c!806913 () Bool)

(assert (=> d!1505002 (= c!806913 (and ((_ is Cons!52836) (toList!5921 lt!1889381)) (= (_1!30523 (h!59185 (toList!5921 lt!1889381))) (_1!30523 lt!1889051))))))

(assert (=> d!1505002 (= (getValueByKey!1961 (toList!5921 lt!1889381) (_1!30523 lt!1889051)) e!2946752)))

(assert (= (and d!1505002 c!806913) b!4724728))

(assert (= (and d!1505002 (not c!806913)) b!4724729))

(assert (= (and b!4724729 c!806914) b!4724730))

(assert (= (and b!4724729 (not c!806914)) b!4724731))

(declare-fun m!5662973 () Bool)

(assert (=> b!4724730 m!5662973))

(assert (=> b!4724395 d!1505002))

(declare-fun d!1505004 () Bool)

(assert (=> d!1505004 (= (invariantList!1513 (toList!5921 lt!1889455)) (noDuplicatedKeys!376 (toList!5921 lt!1889455)))))

(declare-fun bs!1115819 () Bool)

(assert (= bs!1115819 d!1505004))

(declare-fun m!5662975 () Bool)

(assert (=> bs!1115819 m!5662975))

(assert (=> b!4724440 d!1505004))

(declare-fun d!1505006 () Bool)

(declare-fun res!1999240 () Bool)

(declare-fun e!2946754 () Bool)

(assert (=> d!1505006 (=> res!1999240 e!2946754)))

(assert (=> d!1505006 (= res!1999240 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1505006 (= (forall!11596 (toList!5921 lt!1889044) (ite c!806856 lambda!215930 lambda!215931)) e!2946754)))

(declare-fun b!4724732 () Bool)

(declare-fun e!2946755 () Bool)

(assert (=> b!4724732 (= e!2946754 e!2946755)))

(declare-fun res!1999241 () Bool)

(assert (=> b!4724732 (=> (not res!1999241) (not e!2946755))))

(assert (=> b!4724732 (= res!1999241 (dynLambda!21825 (ite c!806856 lambda!215930 lambda!215931) (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724733 () Bool)

(assert (=> b!4724733 (= e!2946755 (forall!11596 (t!360230 (toList!5921 lt!1889044)) (ite c!806856 lambda!215930 lambda!215931)))))

(assert (= (and d!1505006 (not res!1999240)) b!4724732))

(assert (= (and b!4724732 res!1999241) b!4724733))

(declare-fun b_lambda!179277 () Bool)

(assert (=> (not b_lambda!179277) (not b!4724732)))

(declare-fun m!5662977 () Bool)

(assert (=> b!4724732 m!5662977))

(declare-fun m!5662979 () Bool)

(assert (=> b!4724733 m!5662979))

(assert (=> bm!330494 d!1505006))

(declare-fun b!4724735 () Bool)

(declare-fun e!2946757 () List!52960)

(declare-fun e!2946756 () List!52960)

(assert (=> b!4724735 (= e!2946757 e!2946756)))

(declare-fun c!806915 () Bool)

(assert (=> b!4724735 (= c!806915 ((_ is Cons!52836) (t!360230 oldBucket!34)))))

(declare-fun b!4724736 () Bool)

(assert (=> b!4724736 (= e!2946756 (Cons!52836 (h!59185 (t!360230 oldBucket!34)) (removePairForKey!1611 (t!360230 (t!360230 oldBucket!34)) key!4653)))))

(declare-fun b!4724734 () Bool)

(assert (=> b!4724734 (= e!2946757 (t!360230 (t!360230 oldBucket!34)))))

(declare-fun d!1505008 () Bool)

(declare-fun lt!1889748 () List!52960)

(assert (=> d!1505008 (not (containsKey!3375 lt!1889748 key!4653))))

(assert (=> d!1505008 (= lt!1889748 e!2946757)))

(declare-fun c!806916 () Bool)

(assert (=> d!1505008 (= c!806916 (and ((_ is Cons!52836) (t!360230 oldBucket!34)) (= (_1!30523 (h!59185 (t!360230 oldBucket!34))) key!4653)))))

(assert (=> d!1505008 (noDuplicateKeys!2016 (t!360230 oldBucket!34))))

(assert (=> d!1505008 (= (removePairForKey!1611 (t!360230 oldBucket!34) key!4653) lt!1889748)))

(declare-fun b!4724737 () Bool)

(assert (=> b!4724737 (= e!2946756 Nil!52836)))

(assert (= (and d!1505008 c!806916) b!4724734))

(assert (= (and d!1505008 (not c!806916)) b!4724735))

(assert (= (and b!4724735 c!806915) b!4724736))

(assert (= (and b!4724735 (not c!806915)) b!4724737))

(declare-fun m!5662981 () Bool)

(assert (=> b!4724736 m!5662981))

(declare-fun m!5662983 () Bool)

(assert (=> d!1505008 m!5662983))

(assert (=> d!1505008 m!5661751))

(assert (=> b!4724231 d!1505008))

(declare-fun d!1505010 () Bool)

(assert (=> d!1505010 (= (invariantList!1513 (toList!5921 lt!1889433)) (noDuplicatedKeys!376 (toList!5921 lt!1889433)))))

(declare-fun bs!1115835 () Bool)

(assert (= bs!1115835 d!1505010))

(declare-fun m!5662985 () Bool)

(assert (=> bs!1115835 m!5662985))

(assert (=> d!1504824 d!1505010))

(declare-fun d!1505012 () Bool)

(declare-fun res!1999242 () Bool)

(declare-fun e!2946758 () Bool)

(assert (=> d!1505012 (=> res!1999242 e!2946758)))

(assert (=> d!1505012 (= res!1999242 ((_ is Nil!52837) (toList!5922 lm!2023)))))

(assert (=> d!1505012 (= (forall!11594 (toList!5922 lm!2023) lambda!215938) e!2946758)))

(declare-fun b!4724738 () Bool)

(declare-fun e!2946759 () Bool)

(assert (=> b!4724738 (= e!2946758 e!2946759)))

(declare-fun res!1999243 () Bool)

(assert (=> b!4724738 (=> (not res!1999243) (not e!2946759))))

(assert (=> b!4724738 (= res!1999243 (dynLambda!21823 lambda!215938 (h!59186 (toList!5922 lm!2023))))))

(declare-fun b!4724739 () Bool)

(assert (=> b!4724739 (= e!2946759 (forall!11594 (t!360231 (toList!5922 lm!2023)) lambda!215938))))

(assert (= (and d!1505012 (not res!1999242)) b!4724738))

(assert (= (and b!4724738 res!1999243) b!4724739))

(declare-fun b_lambda!179279 () Bool)

(assert (=> (not b_lambda!179279) (not b!4724738)))

(declare-fun m!5662991 () Bool)

(assert (=> b!4724738 m!5662991))

(declare-fun m!5662993 () Bool)

(assert (=> b!4724739 m!5662993))

(assert (=> d!1504824 d!1505012))

(declare-fun d!1505016 () Bool)

(declare-fun res!1999244 () Bool)

(declare-fun e!2946760 () Bool)

(assert (=> d!1505016 (=> res!1999244 e!2946760)))

(assert (=> d!1505016 (= res!1999244 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1505016 (= (forall!11596 (toList!5921 lt!1889044) lambda!215923) e!2946760)))

(declare-fun b!4724740 () Bool)

(declare-fun e!2946761 () Bool)

(assert (=> b!4724740 (= e!2946760 e!2946761)))

(declare-fun res!1999245 () Bool)

(assert (=> b!4724740 (=> (not res!1999245) (not e!2946761))))

(assert (=> b!4724740 (= res!1999245 (dynLambda!21825 lambda!215923 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4724741 () Bool)

(assert (=> b!4724741 (= e!2946761 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215923))))

(assert (= (and d!1505016 (not res!1999244)) b!4724740))

(assert (= (and b!4724740 res!1999245) b!4724741))

(declare-fun b_lambda!179281 () Bool)

(assert (=> (not b_lambda!179281) (not b!4724740)))

(declare-fun m!5662995 () Bool)

(assert (=> b!4724740 m!5662995))

(declare-fun m!5662997 () Bool)

(assert (=> b!4724741 m!5662997))

(assert (=> b!4724321 d!1505016))

(declare-fun d!1505018 () Bool)

(declare-fun res!1999256 () Bool)

(declare-fun e!2946772 () Bool)

(assert (=> d!1505018 (=> res!1999256 e!2946772)))

(assert (=> d!1505018 (= res!1999256 (or ((_ is Nil!52837) (toList!5922 lm!2023)) ((_ is Nil!52837) (t!360231 (toList!5922 lm!2023)))))))

(assert (=> d!1505018 (= (isStrictlySorted!752 (toList!5922 lm!2023)) e!2946772)))

(declare-fun b!4724752 () Bool)

(declare-fun e!2946773 () Bool)

(assert (=> b!4724752 (= e!2946772 e!2946773)))

(declare-fun res!1999257 () Bool)

(assert (=> b!4724752 (=> (not res!1999257) (not e!2946773))))

(assert (=> b!4724752 (= res!1999257 (bvslt (_1!30524 (h!59186 (toList!5922 lm!2023))) (_1!30524 (h!59186 (t!360231 (toList!5922 lm!2023))))))))

(declare-fun b!4724753 () Bool)

(assert (=> b!4724753 (= e!2946773 (isStrictlySorted!752 (t!360231 (toList!5922 lm!2023))))))

(assert (= (and d!1505018 (not res!1999256)) b!4724752))

(assert (= (and b!4724752 res!1999257) b!4724753))

(declare-fun m!5663005 () Bool)

(assert (=> b!4724753 m!5663005))

(assert (=> d!1504834 d!1505018))

(declare-fun d!1505022 () Bool)

(declare-fun res!1999258 () Bool)

(declare-fun e!2946774 () Bool)

(assert (=> d!1505022 (=> res!1999258 e!2946774)))

(assert (=> d!1505022 (= res!1999258 (not ((_ is Cons!52836) (t!360230 newBucket!218))))))

(assert (=> d!1505022 (= (noDuplicateKeys!2016 (t!360230 newBucket!218)) e!2946774)))

(declare-fun b!4724754 () Bool)

(declare-fun e!2946775 () Bool)

(assert (=> b!4724754 (= e!2946774 e!2946775)))

(declare-fun res!1999259 () Bool)

(assert (=> b!4724754 (=> (not res!1999259) (not e!2946775))))

(assert (=> b!4724754 (= res!1999259 (not (containsKey!3375 (t!360230 (t!360230 newBucket!218)) (_1!30523 (h!59185 (t!360230 newBucket!218))))))))

(declare-fun b!4724755 () Bool)

(assert (=> b!4724755 (= e!2946775 (noDuplicateKeys!2016 (t!360230 (t!360230 newBucket!218))))))

(assert (= (and d!1505022 (not res!1999258)) b!4724754))

(assert (= (and b!4724754 res!1999259) b!4724755))

(declare-fun m!5663007 () Bool)

(assert (=> b!4724754 m!5663007))

(declare-fun m!5663009 () Bool)

(assert (=> b!4724755 m!5663009))

(assert (=> b!4724444 d!1505022))

(declare-fun d!1505024 () Bool)

(declare-fun lt!1889752 () Bool)

(assert (=> d!1505024 (= lt!1889752 (select (content!9400 e!2946534) key!4653))))

(declare-fun e!2946776 () Bool)

(assert (=> d!1505024 (= lt!1889752 e!2946776)))

(declare-fun res!1999261 () Bool)

(assert (=> d!1505024 (=> (not res!1999261) (not e!2946776))))

(assert (=> d!1505024 (= res!1999261 ((_ is Cons!52839) e!2946534))))

(assert (=> d!1505024 (= (contains!16188 e!2946534 key!4653) lt!1889752)))

(declare-fun b!4724756 () Bool)

(declare-fun e!2946777 () Bool)

(assert (=> b!4724756 (= e!2946776 e!2946777)))

(declare-fun res!1999260 () Bool)

(assert (=> b!4724756 (=> res!1999260 e!2946777)))

(assert (=> b!4724756 (= res!1999260 (= (h!59190 e!2946534) key!4653))))

(declare-fun b!4724757 () Bool)

(assert (=> b!4724757 (= e!2946777 (contains!16188 (t!360235 e!2946534) key!4653))))

(assert (= (and d!1505024 res!1999261) b!4724756))

(assert (= (and b!4724756 (not res!1999260)) b!4724757))

(declare-fun m!5663011 () Bool)

(assert (=> d!1505024 m!5663011))

(declare-fun m!5663013 () Bool)

(assert (=> d!1505024 m!5663013))

(declare-fun m!5663015 () Bool)

(assert (=> b!4724757 m!5663015))

(assert (=> bm!330500 d!1505024))

(assert (=> b!4724399 d!1504886))

(declare-fun d!1505026 () Bool)

(assert (=> d!1505026 (= (invariantList!1513 (toList!5921 lt!1889332)) (noDuplicatedKeys!376 (toList!5921 lt!1889332)))))

(declare-fun bs!1115837 () Bool)

(assert (= bs!1115837 d!1505026))

(declare-fun m!5663017 () Bool)

(assert (=> bs!1115837 m!5663017))

(assert (=> d!1504778 d!1505026))

(declare-fun d!1505028 () Bool)

(declare-fun res!1999262 () Bool)

(declare-fun e!2946778 () Bool)

(assert (=> d!1505028 (=> res!1999262 e!2946778)))

(assert (=> d!1505028 (= res!1999262 ((_ is Nil!52837) (t!360231 (toList!5922 lm!2023))))))

(assert (=> d!1505028 (= (forall!11594 (t!360231 (toList!5922 lm!2023)) lambda!215926) e!2946778)))

(declare-fun b!4724758 () Bool)

(declare-fun e!2946779 () Bool)

(assert (=> b!4724758 (= e!2946778 e!2946779)))

(declare-fun res!1999263 () Bool)

(assert (=> b!4724758 (=> (not res!1999263) (not e!2946779))))

(assert (=> b!4724758 (= res!1999263 (dynLambda!21823 lambda!215926 (h!59186 (t!360231 (toList!5922 lm!2023)))))))

(declare-fun b!4724759 () Bool)

(assert (=> b!4724759 (= e!2946779 (forall!11594 (t!360231 (t!360231 (toList!5922 lm!2023))) lambda!215926))))

(assert (= (and d!1505028 (not res!1999262)) b!4724758))

(assert (= (and b!4724758 res!1999263) b!4724759))

(declare-fun b_lambda!179283 () Bool)

(assert (=> (not b_lambda!179283) (not b!4724758)))

(declare-fun m!5663019 () Bool)

(assert (=> b!4724758 m!5663019))

(declare-fun m!5663021 () Bool)

(assert (=> b!4724759 m!5663021))

(assert (=> d!1504778 d!1505028))

(declare-fun d!1505030 () Bool)

(declare-fun res!1999264 () Bool)

(declare-fun e!2946780 () Bool)

(assert (=> d!1505030 (=> res!1999264 e!2946780)))

(assert (=> d!1505030 (= res!1999264 (and ((_ is Cons!52836) lt!1889071) (= (_1!30523 (h!59185 lt!1889071)) key!4653)))))

(assert (=> d!1505030 (= (containsKey!3375 lt!1889071 key!4653) e!2946780)))

(declare-fun b!4724760 () Bool)

(declare-fun e!2946781 () Bool)

(assert (=> b!4724760 (= e!2946780 e!2946781)))

(declare-fun res!1999265 () Bool)

(assert (=> b!4724760 (=> (not res!1999265) (not e!2946781))))

(assert (=> b!4724760 (= res!1999265 ((_ is Cons!52836) lt!1889071))))

(declare-fun b!4724761 () Bool)

(assert (=> b!4724761 (= e!2946781 (containsKey!3375 (t!360230 lt!1889071) key!4653))))

(assert (= (and d!1505030 (not res!1999264)) b!4724760))

(assert (= (and b!4724760 res!1999265) b!4724761))

(declare-fun m!5663023 () Bool)

(assert (=> b!4724761 m!5663023))

(assert (=> d!1504726 d!1505030))

(assert (=> d!1504726 d!1504724))

(assert (=> bm!330492 d!1504846))

(declare-fun b!4724762 () Bool)

(declare-fun e!2946784 () Bool)

(declare-fun e!2946785 () Bool)

(assert (=> b!4724762 (= e!2946784 e!2946785)))

(declare-fun res!1999267 () Bool)

(assert (=> b!4724762 (=> (not res!1999267) (not e!2946785))))

(assert (=> b!4724762 (= res!1999267 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889385) (_1!30523 (h!59185 oldBucket!34)))))))

(declare-fun bm!330534 () Bool)

(declare-fun call!330539 () Bool)

(declare-fun e!2946787 () List!52963)

(assert (=> bm!330534 (= call!330539 (contains!16188 e!2946787 (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun c!806918 () Bool)

(declare-fun c!806917 () Bool)

(assert (=> bm!330534 (= c!806918 c!806917)))

(declare-fun d!1505032 () Bool)

(assert (=> d!1505032 e!2946784))

(declare-fun res!1999268 () Bool)

(assert (=> d!1505032 (=> res!1999268 e!2946784)))

(declare-fun e!2946782 () Bool)

(assert (=> d!1505032 (= res!1999268 e!2946782)))

(declare-fun res!1999266 () Bool)

(assert (=> d!1505032 (=> (not res!1999266) (not e!2946782))))

(declare-fun lt!1889756 () Bool)

(assert (=> d!1505032 (= res!1999266 (not lt!1889756))))

(declare-fun lt!1889758 () Bool)

(assert (=> d!1505032 (= lt!1889756 lt!1889758)))

(declare-fun lt!1889755 () Unit!130501)

(declare-fun e!2946783 () Unit!130501)

(assert (=> d!1505032 (= lt!1889755 e!2946783)))

(assert (=> d!1505032 (= c!806917 lt!1889758)))

(assert (=> d!1505032 (= lt!1889758 (containsKey!3379 (toList!5921 lt!1889385) (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> d!1505032 (= (contains!16183 lt!1889385 (_1!30523 (h!59185 oldBucket!34))) lt!1889756)))

(declare-fun b!4724763 () Bool)

(assert (=> b!4724763 (= e!2946787 (keys!18978 lt!1889385))))

(declare-fun b!4724764 () Bool)

(assert (=> b!4724764 (= e!2946787 (getKeysList!953 (toList!5921 lt!1889385)))))

(declare-fun b!4724765 () Bool)

(declare-fun lt!1889760 () Unit!130501)

(assert (=> b!4724765 (= e!2946783 lt!1889760)))

(declare-fun lt!1889759 () Unit!130501)

(assert (=> b!4724765 (= lt!1889759 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889385) (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> b!4724765 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889385) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun lt!1889757 () Unit!130501)

(assert (=> b!4724765 (= lt!1889757 lt!1889759)))

(assert (=> b!4724765 (= lt!1889760 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889385) (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> b!4724765 call!330539))

(declare-fun b!4724766 () Bool)

(assert (=> b!4724766 (= e!2946782 (not (contains!16188 (keys!18978 lt!1889385) (_1!30523 (h!59185 oldBucket!34)))))))

(declare-fun b!4724767 () Bool)

(assert (=> b!4724767 false))

(declare-fun lt!1889754 () Unit!130501)

(declare-fun lt!1889753 () Unit!130501)

(assert (=> b!4724767 (= lt!1889754 lt!1889753)))

(assert (=> b!4724767 (containsKey!3379 (toList!5921 lt!1889385) (_1!30523 (h!59185 oldBucket!34)))))

(assert (=> b!4724767 (= lt!1889753 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889385) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun e!2946786 () Unit!130501)

(declare-fun Unit!130723 () Unit!130501)

(assert (=> b!4724767 (= e!2946786 Unit!130723)))

(declare-fun b!4724768 () Bool)

(assert (=> b!4724768 (= e!2946783 e!2946786)))

(declare-fun c!806919 () Bool)

(assert (=> b!4724768 (= c!806919 call!330539)))

(declare-fun b!4724769 () Bool)

(assert (=> b!4724769 (= e!2946785 (contains!16188 (keys!18978 lt!1889385) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun b!4724770 () Bool)

(declare-fun Unit!130724 () Unit!130501)

(assert (=> b!4724770 (= e!2946786 Unit!130724)))

(assert (= (and d!1505032 c!806917) b!4724765))

(assert (= (and d!1505032 (not c!806917)) b!4724768))

(assert (= (and b!4724768 c!806919) b!4724767))

(assert (= (and b!4724768 (not c!806919)) b!4724770))

(assert (= (or b!4724765 b!4724768) bm!330534))

(assert (= (and bm!330534 c!806918) b!4724764))

(assert (= (and bm!330534 (not c!806918)) b!4724763))

(assert (= (and d!1505032 res!1999266) b!4724766))

(assert (= (and d!1505032 (not res!1999268)) b!4724762))

(assert (= (and b!4724762 res!1999267) b!4724769))

(declare-fun m!5663025 () Bool)

(assert (=> b!4724763 m!5663025))

(assert (=> b!4724769 m!5663025))

(assert (=> b!4724769 m!5663025))

(declare-fun m!5663027 () Bool)

(assert (=> b!4724769 m!5663027))

(assert (=> b!4724762 m!5662169))

(assert (=> b!4724762 m!5662169))

(declare-fun m!5663029 () Bool)

(assert (=> b!4724762 m!5663029))

(declare-fun m!5663031 () Bool)

(assert (=> b!4724764 m!5663031))

(declare-fun m!5663033 () Bool)

(assert (=> d!1505032 m!5663033))

(declare-fun m!5663035 () Bool)

(assert (=> b!4724765 m!5663035))

(assert (=> b!4724765 m!5662169))

(assert (=> b!4724765 m!5662169))

(assert (=> b!4724765 m!5663029))

(declare-fun m!5663037 () Bool)

(assert (=> b!4724765 m!5663037))

(assert (=> b!4724766 m!5663025))

(assert (=> b!4724766 m!5663025))

(assert (=> b!4724766 m!5663027))

(declare-fun m!5663039 () Bool)

(assert (=> bm!330534 m!5663039))

(assert (=> b!4724767 m!5663033))

(declare-fun m!5663041 () Bool)

(assert (=> b!4724767 m!5663041))

(assert (=> d!1504816 d!1505032))

(declare-fun b!4724774 () Bool)

(declare-fun e!2946789 () Option!12365)

(assert (=> b!4724774 (= e!2946789 None!12364)))

(declare-fun b!4724771 () Bool)

(declare-fun e!2946788 () Option!12365)

(assert (=> b!4724771 (= e!2946788 (Some!12364 (_2!30523 (h!59185 lt!1889387))))))

(declare-fun b!4724772 () Bool)

(assert (=> b!4724772 (= e!2946788 e!2946789)))

(declare-fun c!806921 () Bool)

(assert (=> b!4724772 (= c!806921 (and ((_ is Cons!52836) lt!1889387) (not (= (_1!30523 (h!59185 lt!1889387)) (_1!30523 (h!59185 oldBucket!34))))))))

(declare-fun b!4724773 () Bool)

(assert (=> b!4724773 (= e!2946789 (getValueByKey!1961 (t!360230 lt!1889387) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun d!1505034 () Bool)

(declare-fun c!806920 () Bool)

(assert (=> d!1505034 (= c!806920 (and ((_ is Cons!52836) lt!1889387) (= (_1!30523 (h!59185 lt!1889387)) (_1!30523 (h!59185 oldBucket!34)))))))

(assert (=> d!1505034 (= (getValueByKey!1961 lt!1889387 (_1!30523 (h!59185 oldBucket!34))) e!2946788)))

(assert (= (and d!1505034 c!806920) b!4724771))

(assert (= (and d!1505034 (not c!806920)) b!4724772))

(assert (= (and b!4724772 c!806921) b!4724773))

(assert (= (and b!4724772 (not c!806921)) b!4724774))

(declare-fun m!5663043 () Bool)

(assert (=> b!4724773 m!5663043))

(assert (=> d!1504816 d!1505034))

(declare-fun d!1505036 () Bool)

(assert (=> d!1505036 (= (getValueByKey!1961 lt!1889387 (_1!30523 (h!59185 oldBucket!34))) (Some!12364 (_2!30523 (h!59185 oldBucket!34))))))

(declare-fun lt!1889766 () Unit!130501)

(declare-fun choose!33353 (List!52960 K!14190 V!14436) Unit!130501)

(assert (=> d!1505036 (= lt!1889766 (choose!33353 lt!1889387 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))))

(declare-fun e!2946795 () Bool)

(assert (=> d!1505036 e!2946795))

(declare-fun res!1999282 () Bool)

(assert (=> d!1505036 (=> (not res!1999282) (not e!2946795))))

(assert (=> d!1505036 (= res!1999282 (invariantList!1513 lt!1889387))))

(assert (=> d!1505036 (= (lemmaContainsTupThenGetReturnValue!1088 lt!1889387 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))) lt!1889766)))

(declare-fun b!4724790 () Bool)

(declare-fun res!1999283 () Bool)

(assert (=> b!4724790 (=> (not res!1999283) (not e!2946795))))

(assert (=> b!4724790 (= res!1999283 (containsKey!3379 lt!1889387 (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun b!4724791 () Bool)

(assert (=> b!4724791 (= e!2946795 (contains!16186 lt!1889387 (tuple2!54459 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34)))))))

(assert (= (and d!1505036 res!1999282) b!4724790))

(assert (= (and b!4724790 res!1999283) b!4724791))

(assert (=> d!1505036 m!5662163))

(declare-fun m!5663045 () Bool)

(assert (=> d!1505036 m!5663045))

(declare-fun m!5663047 () Bool)

(assert (=> d!1505036 m!5663047))

(declare-fun m!5663049 () Bool)

(assert (=> b!4724790 m!5663049))

(declare-fun m!5663053 () Bool)

(assert (=> b!4724791 m!5663053))

(assert (=> d!1504816 d!1505036))

(declare-fun b!4724829 () Bool)

(declare-fun e!2946816 () List!52960)

(declare-fun call!330552 () List!52960)

(assert (=> b!4724829 (= e!2946816 call!330552)))

(declare-fun lt!1889813 () List!52963)

(declare-fun call!330554 () List!52963)

(assert (=> b!4724829 (= lt!1889813 call!330554)))

(declare-fun lt!1889819 () Unit!130501)

(declare-fun lemmaSubseqRefl!144 (List!52963) Unit!130501)

(assert (=> b!4724829 (= lt!1889819 (lemmaSubseqRefl!144 lt!1889813))))

(declare-fun subseq!660 (List!52963 List!52963) Bool)

(assert (=> b!4724829 (subseq!660 lt!1889813 lt!1889813)))

(declare-fun lt!1889814 () Unit!130501)

(assert (=> b!4724829 (= lt!1889814 lt!1889819)))

(declare-fun b!4724830 () Bool)

(declare-fun e!2946822 () List!52960)

(declare-fun call!330553 () List!52960)

(assert (=> b!4724830 (= e!2946822 call!330553)))

(declare-fun b!4724831 () Bool)

(declare-fun e!2946820 () List!52960)

(declare-fun call!330551 () List!52960)

(assert (=> b!4724831 (= e!2946820 call!330551)))

(declare-fun bm!330546 () Bool)

(assert (=> bm!330546 (= call!330551 call!330552)))

(declare-fun d!1505038 () Bool)

(declare-fun e!2946817 () Bool)

(assert (=> d!1505038 e!2946817))

(declare-fun res!1999297 () Bool)

(assert (=> d!1505038 (=> (not res!1999297) (not e!2946817))))

(declare-fun lt!1889811 () List!52960)

(assert (=> d!1505038 (= res!1999297 (invariantList!1513 lt!1889811))))

(assert (=> d!1505038 (= lt!1889811 e!2946816)))

(declare-fun c!806936 () Bool)

(assert (=> d!1505038 (= c!806936 (and ((_ is Cons!52836) (toList!5921 lt!1889047)) (= (_1!30523 (h!59185 (toList!5921 lt!1889047))) (_1!30523 (h!59185 oldBucket!34)))))))

(assert (=> d!1505038 (invariantList!1513 (toList!5921 lt!1889047))))

(assert (=> d!1505038 (= (insertNoDuplicatedKeys!596 (toList!5921 lt!1889047) (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))) lt!1889811)))

(declare-fun b!4724832 () Bool)

(declare-fun e!2946818 () Unit!130501)

(declare-fun Unit!130725 () Unit!130501)

(assert (=> b!4724832 (= e!2946818 Unit!130725)))

(declare-fun b!4724833 () Bool)

(declare-fun e!2946821 () List!52960)

(assert (=> b!4724833 (= e!2946821 (insertNoDuplicatedKeys!596 (t!360230 (toList!5921 lt!1889047)) (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))))

(declare-fun b!4724834 () Bool)

(assert (=> b!4724834 (= e!2946817 (= (content!9400 (getKeysList!953 lt!1889811)) ((_ map or) (content!9400 (getKeysList!953 (toList!5921 lt!1889047))) (store ((as const (Array K!14190 Bool)) false) (_1!30523 (h!59185 oldBucket!34)) true))))))

(declare-fun b!4724835 () Bool)

(declare-fun e!2946819 () Bool)

(assert (=> b!4724835 (= e!2946819 (not (containsKey!3379 (toList!5921 lt!1889047) (_1!30523 (h!59185 oldBucket!34)))))))

(declare-fun bm!330547 () Bool)

(declare-fun lt!1889818 () List!52960)

(assert (=> bm!330547 (= call!330554 (getKeysList!953 (ite c!806936 (toList!5921 lt!1889047) lt!1889818)))))

(declare-fun b!4724836 () Bool)

(declare-fun res!1999298 () Bool)

(assert (=> b!4724836 (=> (not res!1999298) (not e!2946817))))

(assert (=> b!4724836 (= res!1999298 (containsKey!3379 lt!1889811 (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun b!4724837 () Bool)

(assert (=> b!4724837 (= e!2946821 Nil!52836)))

(declare-fun c!806935 () Bool)

(declare-fun bm!330548 () Bool)

(declare-fun c!806937 () Bool)

(declare-fun $colon$colon!1079 (List!52960 tuple2!54458) List!52960)

(assert (=> bm!330548 (= call!330552 ($colon$colon!1079 (ite c!806936 (t!360230 (toList!5921 lt!1889047)) (ite c!806935 (toList!5921 lt!1889047) e!2946821)) (ite (or c!806936 c!806935) (tuple2!54459 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))) (ite c!806937 (h!59185 (toList!5921 lt!1889047)) (tuple2!54459 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34)))))))))

(declare-fun b!4724838 () Bool)

(assert (=> b!4724838 (= e!2946816 e!2946820)))

(declare-fun res!1999300 () Bool)

(assert (=> b!4724838 (= res!1999300 ((_ is Cons!52836) (toList!5921 lt!1889047)))))

(assert (=> b!4724838 (=> (not res!1999300) (not e!2946819))))

(assert (=> b!4724838 (= c!806935 e!2946819)))

(declare-fun b!4724839 () Bool)

(assert (=> b!4724839 (= c!806937 ((_ is Cons!52836) (toList!5921 lt!1889047)))))

(assert (=> b!4724839 (= e!2946820 e!2946822)))

(declare-fun b!4724840 () Bool)

(declare-fun lt!1889815 () List!52960)

(assert (=> b!4724840 (= e!2946822 lt!1889815)))

(assert (=> b!4724840 (= lt!1889815 call!330553)))

(declare-fun c!806938 () Bool)

(assert (=> b!4724840 (= c!806938 (containsKey!3379 (insertNoDuplicatedKeys!596 (t!360230 (toList!5921 lt!1889047)) (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))) (_1!30523 (h!59185 (toList!5921 lt!1889047)))))))

(declare-fun lt!1889816 () Unit!130501)

(assert (=> b!4724840 (= lt!1889816 e!2946818)))

(declare-fun b!4724841 () Bool)

(assert (=> b!4724841 false))

(declare-fun lt!1889812 () Unit!130501)

(declare-fun lt!1889821 () Unit!130501)

(assert (=> b!4724841 (= lt!1889812 lt!1889821)))

(assert (=> b!4724841 (containsKey!3379 (t!360230 (toList!5921 lt!1889047)) (_1!30523 (h!59185 (toList!5921 lt!1889047))))))

(assert (=> b!4724841 (= lt!1889821 (lemmaInGetKeysListThenContainsKey!952 (t!360230 (toList!5921 lt!1889047)) (_1!30523 (h!59185 (toList!5921 lt!1889047)))))))

(declare-fun lt!1889820 () Unit!130501)

(declare-fun lt!1889817 () Unit!130501)

(assert (=> b!4724841 (= lt!1889820 lt!1889817)))

(assert (=> b!4724841 (contains!16188 call!330554 (_1!30523 (h!59185 (toList!5921 lt!1889047))))))

(assert (=> b!4724841 (= lt!1889817 (lemmaInListThenGetKeysListContains!948 lt!1889818 (_1!30523 (h!59185 (toList!5921 lt!1889047)))))))

(assert (=> b!4724841 (= lt!1889818 (insertNoDuplicatedKeys!596 (t!360230 (toList!5921 lt!1889047)) (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34))))))

(declare-fun Unit!130726 () Unit!130501)

(assert (=> b!4724841 (= e!2946818 Unit!130726)))

(declare-fun bm!330549 () Bool)

(assert (=> bm!330549 (= call!330553 call!330551)))

(declare-fun c!806934 () Bool)

(assert (=> bm!330549 (= c!806934 c!806937)))

(declare-fun b!4724842 () Bool)

(declare-fun res!1999299 () Bool)

(assert (=> b!4724842 (=> (not res!1999299) (not e!2946817))))

(assert (=> b!4724842 (= res!1999299 (contains!16186 lt!1889811 (tuple2!54459 (_1!30523 (h!59185 oldBucket!34)) (_2!30523 (h!59185 oldBucket!34)))))))

(assert (= (and d!1505038 c!806936) b!4724829))

(assert (= (and d!1505038 (not c!806936)) b!4724838))

(assert (= (and b!4724838 res!1999300) b!4724835))

(assert (= (and b!4724838 c!806935) b!4724831))

(assert (= (and b!4724838 (not c!806935)) b!4724839))

(assert (= (and b!4724839 c!806937) b!4724840))

(assert (= (and b!4724839 (not c!806937)) b!4724830))

(assert (= (and b!4724840 c!806938) b!4724841))

(assert (= (and b!4724840 (not c!806938)) b!4724832))

(assert (= (or b!4724840 b!4724830) bm!330549))

(assert (= (and bm!330549 c!806934) b!4724833))

(assert (= (and bm!330549 (not c!806934)) b!4724837))

(assert (= (or b!4724831 bm!330549) bm!330546))

(assert (= (or b!4724829 b!4724841) bm!330547))

(assert (= (or b!4724829 bm!330546) bm!330548))

(assert (= (and d!1505038 res!1999297) b!4724836))

(assert (= (and b!4724836 res!1999298) b!4724842))

(assert (= (and b!4724842 res!1999299) b!4724834))

(declare-fun m!5663125 () Bool)

(assert (=> b!4724834 m!5663125))

(declare-fun m!5663127 () Bool)

(assert (=> b!4724834 m!5663127))

(assert (=> b!4724834 m!5663125))

(declare-fun m!5663129 () Bool)

(assert (=> b!4724834 m!5663129))

(declare-fun m!5663131 () Bool)

(assert (=> b!4724834 m!5663131))

(assert (=> b!4724834 m!5663131))

(declare-fun m!5663133 () Bool)

(assert (=> b!4724834 m!5663133))

(declare-fun m!5663135 () Bool)

(assert (=> b!4724841 m!5663135))

(declare-fun m!5663137 () Bool)

(assert (=> b!4724841 m!5663137))

(declare-fun m!5663139 () Bool)

(assert (=> b!4724841 m!5663139))

(declare-fun m!5663141 () Bool)

(assert (=> b!4724841 m!5663141))

(declare-fun m!5663143 () Bool)

(assert (=> b!4724841 m!5663143))

(declare-fun m!5663145 () Bool)

(assert (=> d!1505038 m!5663145))

(declare-fun m!5663147 () Bool)

(assert (=> d!1505038 m!5663147))

(declare-fun m!5663149 () Bool)

(assert (=> bm!330548 m!5663149))

(declare-fun m!5663151 () Bool)

(assert (=> b!4724835 m!5663151))

(declare-fun m!5663153 () Bool)

(assert (=> b!4724842 m!5663153))

(assert (=> b!4724833 m!5663143))

(declare-fun m!5663155 () Bool)

(assert (=> bm!330547 m!5663155))

(declare-fun m!5663157 () Bool)

(assert (=> b!4724836 m!5663157))

(assert (=> b!4724840 m!5663143))

(assert (=> b!4724840 m!5663143))

(declare-fun m!5663159 () Bool)

(assert (=> b!4724840 m!5663159))

(declare-fun m!5663161 () Bool)

(assert (=> b!4724829 m!5663161))

(declare-fun m!5663163 () Bool)

(assert (=> b!4724829 m!5663163))

(assert (=> d!1504816 d!1505038))

(declare-fun bs!1116017 () Bool)

(declare-fun b!4724908 () Bool)

(assert (= bs!1116017 (and b!4724908 b!4724489)))

(declare-fun lambda!216036 () Int)

(assert (=> bs!1116017 (= (= (t!360230 (toList!5921 lt!1889046)) (toList!5921 lt!1889046)) (= lambda!216036 lambda!215954))))

(assert (=> b!4724908 true))

(declare-fun bs!1116023 () Bool)

(declare-fun b!4724907 () Bool)

(assert (= bs!1116023 (and b!4724907 b!4724489)))

(declare-fun lambda!216037 () Int)

(assert (=> bs!1116023 (= (= (Cons!52836 (h!59185 (toList!5921 lt!1889046)) (t!360230 (toList!5921 lt!1889046))) (toList!5921 lt!1889046)) (= lambda!216037 lambda!215954))))

(declare-fun bs!1116024 () Bool)

(assert (= bs!1116024 (and b!4724907 b!4724908)))

(assert (=> bs!1116024 (= (= (Cons!52836 (h!59185 (toList!5921 lt!1889046)) (t!360230 (toList!5921 lt!1889046))) (t!360230 (toList!5921 lt!1889046))) (= lambda!216037 lambda!216036))))

(assert (=> b!4724907 true))

(declare-fun bs!1116028 () Bool)

(declare-fun b!4724910 () Bool)

(assert (= bs!1116028 (and b!4724910 b!4724489)))

(declare-fun lambda!216038 () Int)

(assert (=> bs!1116028 (= lambda!216038 lambda!215954)))

(declare-fun bs!1116030 () Bool)

(assert (= bs!1116030 (and b!4724910 b!4724908)))

(assert (=> bs!1116030 (= (= (toList!5921 lt!1889046) (t!360230 (toList!5921 lt!1889046))) (= lambda!216038 lambda!216036))))

(declare-fun bs!1116031 () Bool)

(assert (= bs!1116031 (and b!4724910 b!4724907)))

(assert (=> bs!1116031 (= (= (toList!5921 lt!1889046) (Cons!52836 (h!59185 (toList!5921 lt!1889046)) (t!360230 (toList!5921 lt!1889046)))) (= lambda!216038 lambda!216037))))

(assert (=> b!4724910 true))

(declare-fun bs!1116035 () Bool)

(declare-fun b!4724906 () Bool)

(assert (= bs!1116035 (and b!4724906 b!4724490)))

(declare-fun lambda!216039 () Int)

(assert (=> bs!1116035 (= lambda!216039 lambda!215955)))

(declare-fun lt!1889868 () List!52963)

(declare-fun e!2946871 () Bool)

(assert (=> b!4724906 (= e!2946871 (= (content!9400 lt!1889868) (content!9400 (map!11683 (toList!5921 lt!1889046) lambda!216039))))))

(declare-fun d!1505054 () Bool)

(assert (=> d!1505054 e!2946871))

(declare-fun res!1999346 () Bool)

(assert (=> d!1505054 (=> (not res!1999346) (not e!2946871))))

(assert (=> d!1505054 (= res!1999346 (noDuplicate!862 lt!1889868))))

(declare-fun e!2946873 () List!52963)

(assert (=> d!1505054 (= lt!1889868 e!2946873)))

(declare-fun c!806950 () Bool)

(assert (=> d!1505054 (= c!806950 ((_ is Cons!52836) (toList!5921 lt!1889046)))))

(assert (=> d!1505054 (invariantList!1513 (toList!5921 lt!1889046))))

(assert (=> d!1505054 (= (getKeysList!953 (toList!5921 lt!1889046)) lt!1889868)))

(assert (=> b!4724907 (= e!2946873 (Cons!52839 (_1!30523 (h!59185 (toList!5921 lt!1889046))) (getKeysList!953 (t!360230 (toList!5921 lt!1889046)))))))

(declare-fun c!806949 () Bool)

(assert (=> b!4724907 (= c!806949 (containsKey!3379 (t!360230 (toList!5921 lt!1889046)) (_1!30523 (h!59185 (toList!5921 lt!1889046)))))))

(declare-fun lt!1889867 () Unit!130501)

(declare-fun e!2946872 () Unit!130501)

(assert (=> b!4724907 (= lt!1889867 e!2946872)))

(declare-fun c!806948 () Bool)

(assert (=> b!4724907 (= c!806948 (contains!16188 (getKeysList!953 (t!360230 (toList!5921 lt!1889046))) (_1!30523 (h!59185 (toList!5921 lt!1889046)))))))

(declare-fun lt!1889862 () Unit!130501)

(declare-fun e!2946874 () Unit!130501)

(assert (=> b!4724907 (= lt!1889862 e!2946874)))

(declare-fun lt!1889863 () List!52963)

(assert (=> b!4724907 (= lt!1889863 (getKeysList!953 (t!360230 (toList!5921 lt!1889046))))))

(declare-fun lt!1889865 () Unit!130501)

(declare-fun lemmaForallContainsAddHeadPreserves!282 (List!52960 List!52963 tuple2!54458) Unit!130501)

(assert (=> b!4724907 (= lt!1889865 (lemmaForallContainsAddHeadPreserves!282 (t!360230 (toList!5921 lt!1889046)) lt!1889863 (h!59185 (toList!5921 lt!1889046))))))

(assert (=> b!4724907 (forall!11597 lt!1889863 lambda!216037)))

(declare-fun lt!1889866 () Unit!130501)

(assert (=> b!4724907 (= lt!1889866 lt!1889865)))

(assert (=> b!4724908 false))

(declare-fun lt!1889864 () Unit!130501)

(declare-fun forallContained!3645 (List!52963 Int K!14190) Unit!130501)

(assert (=> b!4724908 (= lt!1889864 (forallContained!3645 (getKeysList!953 (t!360230 (toList!5921 lt!1889046))) lambda!216036 (_1!30523 (h!59185 (toList!5921 lt!1889046)))))))

(declare-fun Unit!130727 () Unit!130501)

(assert (=> b!4724908 (= e!2946874 Unit!130727)))

(declare-fun b!4724909 () Bool)

(declare-fun res!1999347 () Bool)

(assert (=> b!4724909 (=> (not res!1999347) (not e!2946871))))

(assert (=> b!4724909 (= res!1999347 (= (length!580 lt!1889868) (length!581 (toList!5921 lt!1889046))))))

(declare-fun res!1999348 () Bool)

(assert (=> b!4724910 (=> (not res!1999348) (not e!2946871))))

(assert (=> b!4724910 (= res!1999348 (forall!11597 lt!1889868 lambda!216038))))

(declare-fun b!4724911 () Bool)

(declare-fun Unit!130728 () Unit!130501)

(assert (=> b!4724911 (= e!2946872 Unit!130728)))

(declare-fun b!4724912 () Bool)

(assert (=> b!4724912 false))

(declare-fun Unit!130729 () Unit!130501)

(assert (=> b!4724912 (= e!2946872 Unit!130729)))

(declare-fun b!4724913 () Bool)

(assert (=> b!4724913 (= e!2946873 Nil!52839)))

(declare-fun b!4724914 () Bool)

(declare-fun Unit!130730 () Unit!130501)

(assert (=> b!4724914 (= e!2946874 Unit!130730)))

(assert (= (and d!1505054 c!806950) b!4724907))

(assert (= (and d!1505054 (not c!806950)) b!4724913))

(assert (= (and b!4724907 c!806949) b!4724912))

(assert (= (and b!4724907 (not c!806949)) b!4724911))

(assert (= (and b!4724907 c!806948) b!4724908))

(assert (= (and b!4724907 (not c!806948)) b!4724914))

(assert (= (and d!1505054 res!1999346) b!4724909))

(assert (= (and b!4724909 res!1999347) b!4724910))

(assert (= (and b!4724910 res!1999348) b!4724906))

(declare-fun m!5663225 () Bool)

(assert (=> b!4724907 m!5663225))

(declare-fun m!5663227 () Bool)

(assert (=> b!4724907 m!5663227))

(declare-fun m!5663229 () Bool)

(assert (=> b!4724907 m!5663229))

(assert (=> b!4724907 m!5663225))

(declare-fun m!5663231 () Bool)

(assert (=> b!4724907 m!5663231))

(declare-fun m!5663233 () Bool)

(assert (=> b!4724907 m!5663233))

(declare-fun m!5663235 () Bool)

(assert (=> b!4724909 m!5663235))

(assert (=> b!4724909 m!5662331))

(declare-fun m!5663237 () Bool)

(assert (=> b!4724910 m!5663237))

(declare-fun m!5663239 () Bool)

(assert (=> b!4724906 m!5663239))

(declare-fun m!5663241 () Bool)

(assert (=> b!4724906 m!5663241))

(assert (=> b!4724906 m!5663241))

(declare-fun m!5663243 () Bool)

(assert (=> b!4724906 m!5663243))

(declare-fun m!5663245 () Bool)

(assert (=> d!1505054 m!5663245))

(assert (=> d!1505054 m!5662491))

(assert (=> b!4724908 m!5663225))

(assert (=> b!4724908 m!5663225))

(declare-fun m!5663247 () Bool)

(assert (=> b!4724908 m!5663247))

(assert (=> b!4724424 d!1505054))

(declare-fun d!1505090 () Bool)

(assert (=> d!1505090 (= (invariantList!1513 (toList!5921 lt!1889388)) (noDuplicatedKeys!376 (toList!5921 lt!1889388)))))

(declare-fun bs!1116049 () Bool)

(assert (= bs!1116049 d!1505090))

(declare-fun m!5663249 () Bool)

(assert (=> bs!1116049 m!5663249))

(assert (=> b!4724401 d!1505090))

(declare-fun d!1505092 () Bool)

(assert (=> d!1505092 (isDefined!9617 (getValueByKey!1959 (toList!5922 lt!1889053) lt!1889045))))

(declare-fun lt!1889872 () Unit!130501)

(declare-fun choose!33354 (List!52961 (_ BitVec 64)) Unit!130501)

(assert (=> d!1505092 (= lt!1889872 (choose!33354 (toList!5922 lt!1889053) lt!1889045))))

(declare-fun e!2946878 () Bool)

(assert (=> d!1505092 e!2946878))

(declare-fun res!1999351 () Bool)

(assert (=> d!1505092 (=> (not res!1999351) (not e!2946878))))

(assert (=> d!1505092 (= res!1999351 (isStrictlySorted!752 (toList!5922 lt!1889053)))))

(assert (=> d!1505092 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1850 (toList!5922 lt!1889053) lt!1889045) lt!1889872)))

(declare-fun b!4724921 () Bool)

(assert (=> b!4724921 (= e!2946878 (containsKey!3377 (toList!5922 lt!1889053) lt!1889045))))

(assert (= (and d!1505092 res!1999351) b!4724921))

(assert (=> d!1505092 m!5661739))

(assert (=> d!1505092 m!5661739))

(assert (=> d!1505092 m!5661741))

(declare-fun m!5663285 () Bool)

(assert (=> d!1505092 m!5663285))

(declare-fun m!5663287 () Bool)

(assert (=> d!1505092 m!5663287))

(assert (=> b!4724921 m!5661735))

(assert (=> b!4724204 d!1505092))

(declare-fun d!1505096 () Bool)

(declare-fun isEmpty!29179 (Option!12363) Bool)

(assert (=> d!1505096 (= (isDefined!9617 (getValueByKey!1959 (toList!5922 lt!1889053) lt!1889045)) (not (isEmpty!29179 (getValueByKey!1959 (toList!5922 lt!1889053) lt!1889045))))))

(declare-fun bs!1116059 () Bool)

(assert (= bs!1116059 d!1505096))

(assert (=> bs!1116059 m!5661739))

(declare-fun m!5663297 () Bool)

(assert (=> bs!1116059 m!5663297))

(assert (=> b!4724204 d!1505096))

(declare-fun b!4724948 () Bool)

(declare-fun e!2946893 () Option!12363)

(declare-fun e!2946894 () Option!12363)

(assert (=> b!4724948 (= e!2946893 e!2946894)))

(declare-fun c!806964 () Bool)

(assert (=> b!4724948 (= c!806964 (and ((_ is Cons!52837) (toList!5922 lt!1889053)) (not (= (_1!30524 (h!59186 (toList!5922 lt!1889053))) lt!1889045))))))

(declare-fun b!4724947 () Bool)

(assert (=> b!4724947 (= e!2946893 (Some!12362 (_2!30524 (h!59186 (toList!5922 lt!1889053)))))))

(declare-fun d!1505100 () Bool)

(declare-fun c!806963 () Bool)

(assert (=> d!1505100 (= c!806963 (and ((_ is Cons!52837) (toList!5922 lt!1889053)) (= (_1!30524 (h!59186 (toList!5922 lt!1889053))) lt!1889045)))))

(assert (=> d!1505100 (= (getValueByKey!1959 (toList!5922 lt!1889053) lt!1889045) e!2946893)))

(declare-fun b!4724950 () Bool)

(assert (=> b!4724950 (= e!2946894 None!12362)))

(declare-fun b!4724949 () Bool)

(assert (=> b!4724949 (= e!2946894 (getValueByKey!1959 (t!360231 (toList!5922 lt!1889053)) lt!1889045))))

(assert (= (and d!1505100 c!806963) b!4724947))

(assert (= (and d!1505100 (not c!806963)) b!4724948))

(assert (= (and b!4724948 c!806964) b!4724949))

(assert (= (and b!4724948 (not c!806964)) b!4724950))

(declare-fun m!5663317 () Bool)

(assert (=> b!4724949 m!5663317))

(assert (=> b!4724204 d!1505100))

(declare-fun d!1505104 () Bool)

(declare-fun res!1999355 () Bool)

(declare-fun e!2946895 () Bool)

(assert (=> d!1505104 (=> res!1999355 e!2946895)))

(assert (=> d!1505104 (= res!1999355 ((_ is Nil!52836) (ite c!806868 (toList!5921 lt!1889044) (toList!5921 lt!1889449))))))

(assert (=> d!1505104 (= (forall!11596 (ite c!806868 (toList!5921 lt!1889044) (toList!5921 lt!1889449)) (ite c!806868 lambda!215939 lambda!215941)) e!2946895)))

(declare-fun b!4724951 () Bool)

(declare-fun e!2946896 () Bool)

(assert (=> b!4724951 (= e!2946895 e!2946896)))

(declare-fun res!1999356 () Bool)

(assert (=> b!4724951 (=> (not res!1999356) (not e!2946896))))

(assert (=> b!4724951 (= res!1999356 (dynLambda!21825 (ite c!806868 lambda!215939 lambda!215941) (h!59185 (ite c!806868 (toList!5921 lt!1889044) (toList!5921 lt!1889449)))))))

(declare-fun b!4724952 () Bool)

(assert (=> b!4724952 (= e!2946896 (forall!11596 (t!360230 (ite c!806868 (toList!5921 lt!1889044) (toList!5921 lt!1889449))) (ite c!806868 lambda!215939 lambda!215941)))))

(assert (= (and d!1505104 (not res!1999355)) b!4724951))

(assert (= (and b!4724951 res!1999356) b!4724952))

(declare-fun b_lambda!179303 () Bool)

(assert (=> (not b_lambda!179303) (not b!4724951)))

(declare-fun m!5663319 () Bool)

(assert (=> b!4724951 m!5663319))

(declare-fun m!5663323 () Bool)

(assert (=> b!4724952 m!5663323))

(assert (=> bm!330502 d!1505104))

(declare-fun c!806969 () Bool)

(declare-fun d!1505108 () Bool)

(assert (=> d!1505108 (= c!806969 ((_ is Nil!52836) (toList!5921 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044))))))

(declare-fun e!2946901 () (InoxSet tuple2!54458))

(assert (=> d!1505108 (= (content!9398 (toList!5921 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044))) e!2946901)))

(declare-fun b!4724961 () Bool)

(assert (=> b!4724961 (= e!2946901 ((as const (Array tuple2!54458 Bool)) false))))

(declare-fun b!4724962 () Bool)

(assert (=> b!4724962 (= e!2946901 ((_ map or) (store ((as const (Array tuple2!54458 Bool)) false) (h!59185 (toList!5921 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044))) true) (content!9398 (t!360230 (toList!5921 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044))))))))

(assert (= (and d!1505108 c!806969) b!4724961))

(assert (= (and d!1505108 (not c!806969)) b!4724962))

(declare-fun m!5663325 () Bool)

(assert (=> b!4724962 m!5663325))

(declare-fun m!5663327 () Bool)

(assert (=> b!4724962 m!5663327))

(assert (=> d!1504818 d!1505108))

(declare-fun d!1505110 () Bool)

(declare-fun c!806970 () Bool)

(assert (=> d!1505110 (= c!806970 ((_ is Nil!52836) (toList!5921 (+!2271 lt!1889047 lt!1889051))))))

(declare-fun e!2946902 () (InoxSet tuple2!54458))

(assert (=> d!1505110 (= (content!9398 (toList!5921 (+!2271 lt!1889047 lt!1889051))) e!2946902)))

(declare-fun b!4724963 () Bool)

(assert (=> b!4724963 (= e!2946902 ((as const (Array tuple2!54458 Bool)) false))))

(declare-fun b!4724964 () Bool)

(assert (=> b!4724964 (= e!2946902 ((_ map or) (store ((as const (Array tuple2!54458 Bool)) false) (h!59185 (toList!5921 (+!2271 lt!1889047 lt!1889051))) true) (content!9398 (t!360230 (toList!5921 (+!2271 lt!1889047 lt!1889051))))))))

(assert (= (and d!1505110 c!806970) b!4724963))

(assert (= (and d!1505110 (not c!806970)) b!4724964))

(declare-fun m!5663329 () Bool)

(assert (=> b!4724964 m!5663329))

(declare-fun m!5663331 () Bool)

(assert (=> b!4724964 m!5663331))

(assert (=> d!1504818 d!1505110))

(assert (=> b!4724206 d!1505096))

(assert (=> b!4724206 d!1505100))

(assert (=> bm!330486 d!1504846))

(declare-fun d!1505112 () Bool)

(declare-fun res!1999361 () Bool)

(declare-fun e!2946905 () Bool)

(assert (=> d!1505112 (=> res!1999361 e!2946905)))

(assert (=> d!1505112 (= res!1999361 (and ((_ is Cons!52836) (t!360230 (apply!12447 lt!1889053 lt!1889045))) (= (_1!30523 (h!59185 (t!360230 (apply!12447 lt!1889053 lt!1889045)))) key!4653)))))

(assert (=> d!1505112 (= (containsKey!3375 (t!360230 (apply!12447 lt!1889053 lt!1889045)) key!4653) e!2946905)))

(declare-fun b!4724969 () Bool)

(declare-fun e!2946906 () Bool)

(assert (=> b!4724969 (= e!2946905 e!2946906)))

(declare-fun res!1999362 () Bool)

(assert (=> b!4724969 (=> (not res!1999362) (not e!2946906))))

(assert (=> b!4724969 (= res!1999362 ((_ is Cons!52836) (t!360230 (apply!12447 lt!1889053 lt!1889045))))))

(declare-fun b!4724970 () Bool)

(assert (=> b!4724970 (= e!2946906 (containsKey!3375 (t!360230 (t!360230 (apply!12447 lt!1889053 lt!1889045))) key!4653))))

(assert (= (and d!1505112 (not res!1999361)) b!4724969))

(assert (= (and b!4724969 res!1999362) b!4724970))

(declare-fun m!5663333 () Bool)

(assert (=> b!4724970 m!5663333))

(assert (=> b!4724214 d!1505112))

(declare-fun b!4724971 () Bool)

(declare-fun e!2946909 () Bool)

(declare-fun e!2946910 () Bool)

(assert (=> b!4724971 (= e!2946909 e!2946910)))

(declare-fun res!1999364 () Bool)

(assert (=> b!4724971 (=> (not res!1999364) (not e!2946910))))

(assert (=> b!4724971 (= res!1999364 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889361) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))))

(declare-fun call!330559 () Bool)

(declare-fun bm!330554 () Bool)

(declare-fun e!2946912 () List!52963)

(assert (=> bm!330554 (= call!330559 (contains!16188 e!2946912 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun c!806972 () Bool)

(declare-fun c!806971 () Bool)

(assert (=> bm!330554 (= c!806972 c!806971)))

(declare-fun d!1505114 () Bool)

(assert (=> d!1505114 e!2946909))

(declare-fun res!1999365 () Bool)

(assert (=> d!1505114 (=> res!1999365 e!2946909)))

(declare-fun e!2946907 () Bool)

(assert (=> d!1505114 (= res!1999365 e!2946907)))

(declare-fun res!1999363 () Bool)

(assert (=> d!1505114 (=> (not res!1999363) (not e!2946907))))

(declare-fun lt!1889886 () Bool)

(assert (=> d!1505114 (= res!1999363 (not lt!1889886))))

(declare-fun lt!1889888 () Bool)

(assert (=> d!1505114 (= lt!1889886 lt!1889888)))

(declare-fun lt!1889885 () Unit!130501)

(declare-fun e!2946908 () Unit!130501)

(assert (=> d!1505114 (= lt!1889885 e!2946908)))

(assert (=> d!1505114 (= c!806971 lt!1889888)))

(assert (=> d!1505114 (= lt!1889888 (containsKey!3379 (toList!5921 lt!1889361) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> d!1505114 (= (contains!16183 lt!1889361 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) lt!1889886)))

(declare-fun b!4724972 () Bool)

(assert (=> b!4724972 (= e!2946912 (keys!18978 lt!1889361))))

(declare-fun b!4724973 () Bool)

(assert (=> b!4724973 (= e!2946912 (getKeysList!953 (toList!5921 lt!1889361)))))

(declare-fun b!4724974 () Bool)

(declare-fun lt!1889890 () Unit!130501)

(assert (=> b!4724974 (= e!2946908 lt!1889890)))

(declare-fun lt!1889889 () Unit!130501)

(assert (=> b!4724974 (= lt!1889889 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889361) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> b!4724974 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889361) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun lt!1889887 () Unit!130501)

(assert (=> b!4724974 (= lt!1889887 lt!1889889)))

(assert (=> b!4724974 (= lt!1889890 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889361) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> b!4724974 call!330559))

(declare-fun b!4724975 () Bool)

(assert (=> b!4724975 (= e!2946907 (not (contains!16188 (keys!18978 lt!1889361) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))))

(declare-fun b!4724976 () Bool)

(assert (=> b!4724976 false))

(declare-fun lt!1889884 () Unit!130501)

(declare-fun lt!1889883 () Unit!130501)

(assert (=> b!4724976 (= lt!1889884 lt!1889883)))

(assert (=> b!4724976 (containsKey!3379 (toList!5921 lt!1889361) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(assert (=> b!4724976 (= lt!1889883 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889361) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun e!2946911 () Unit!130501)

(declare-fun Unit!130731 () Unit!130501)

(assert (=> b!4724976 (= e!2946911 Unit!130731)))

(declare-fun b!4724977 () Bool)

(assert (=> b!4724977 (= e!2946908 e!2946911)))

(declare-fun c!806973 () Bool)

(assert (=> b!4724977 (= c!806973 call!330559)))

(declare-fun b!4724978 () Bool)

(assert (=> b!4724978 (= e!2946910 (contains!16188 (keys!18978 lt!1889361) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun b!4724979 () Bool)

(declare-fun Unit!130732 () Unit!130501)

(assert (=> b!4724979 (= e!2946911 Unit!130732)))

(assert (= (and d!1505114 c!806971) b!4724974))

(assert (= (and d!1505114 (not c!806971)) b!4724977))

(assert (= (and b!4724977 c!806973) b!4724976))

(assert (= (and b!4724977 (not c!806973)) b!4724979))

(assert (= (or b!4724974 b!4724977) bm!330554))

(assert (= (and bm!330554 c!806972) b!4724973))

(assert (= (and bm!330554 (not c!806972)) b!4724972))

(assert (= (and d!1505114 res!1999363) b!4724975))

(assert (= (and d!1505114 (not res!1999365)) b!4724971))

(assert (= (and b!4724971 res!1999364) b!4724978))

(declare-fun m!5663335 () Bool)

(assert (=> b!4724972 m!5663335))

(assert (=> b!4724978 m!5663335))

(assert (=> b!4724978 m!5663335))

(declare-fun m!5663337 () Bool)

(assert (=> b!4724978 m!5663337))

(declare-fun m!5663339 () Bool)

(assert (=> b!4724971 m!5663339))

(assert (=> b!4724971 m!5663339))

(declare-fun m!5663341 () Bool)

(assert (=> b!4724971 m!5663341))

(declare-fun m!5663343 () Bool)

(assert (=> b!4724973 m!5663343))

(declare-fun m!5663345 () Bool)

(assert (=> d!1505114 m!5663345))

(declare-fun m!5663347 () Bool)

(assert (=> b!4724974 m!5663347))

(assert (=> b!4724974 m!5663339))

(assert (=> b!4724974 m!5663339))

(assert (=> b!4724974 m!5663341))

(declare-fun m!5663349 () Bool)

(assert (=> b!4724974 m!5663349))

(assert (=> b!4724975 m!5663335))

(assert (=> b!4724975 m!5663335))

(assert (=> b!4724975 m!5663337))

(declare-fun m!5663355 () Bool)

(assert (=> bm!330554 m!5663355))

(assert (=> b!4724976 m!5663345))

(declare-fun m!5663361 () Bool)

(assert (=> b!4724976 m!5663361))

(assert (=> b!4724387 d!1505114))

(declare-fun d!1505118 () Bool)

(declare-fun e!2946914 () Bool)

(assert (=> d!1505118 e!2946914))

(declare-fun res!1999369 () Bool)

(assert (=> d!1505118 (=> (not res!1999369) (not e!2946914))))

(declare-fun lt!1889893 () ListMap!5285)

(assert (=> d!1505118 (= res!1999369 (contains!16183 lt!1889893 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun lt!1889895 () List!52960)

(assert (=> d!1505118 (= lt!1889893 (ListMap!5286 lt!1889895))))

(declare-fun lt!1889894 () Unit!130501)

(declare-fun lt!1889892 () Unit!130501)

(assert (=> d!1505118 (= lt!1889894 lt!1889892)))

(assert (=> d!1505118 (= (getValueByKey!1961 lt!1889895 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (Some!12364 (_2!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> d!1505118 (= lt!1889892 (lemmaContainsTupThenGetReturnValue!1088 lt!1889895 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (_2!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> d!1505118 (= lt!1889895 (insertNoDuplicatedKeys!596 (toList!5921 lt!1889044) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (_2!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> d!1505118 (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889893)))

(declare-fun b!4724982 () Bool)

(declare-fun res!1999368 () Bool)

(assert (=> b!4724982 (=> (not res!1999368) (not e!2946914))))

(assert (=> b!4724982 (= res!1999368 (= (getValueByKey!1961 (toList!5921 lt!1889893) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (Some!12364 (_2!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))))

(declare-fun b!4724983 () Bool)

(assert (=> b!4724983 (= e!2946914 (contains!16186 (toList!5921 lt!1889893) (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(assert (= (and d!1505118 res!1999369) b!4724982))

(assert (= (and b!4724982 res!1999368) b!4724983))

(declare-fun m!5663363 () Bool)

(assert (=> d!1505118 m!5663363))

(declare-fun m!5663365 () Bool)

(assert (=> d!1505118 m!5663365))

(declare-fun m!5663367 () Bool)

(assert (=> d!1505118 m!5663367))

(declare-fun m!5663369 () Bool)

(assert (=> d!1505118 m!5663369))

(declare-fun m!5663371 () Bool)

(assert (=> b!4724982 m!5663371))

(declare-fun m!5663373 () Bool)

(assert (=> b!4724983 m!5663373))

(assert (=> b!4724387 d!1505118))

(declare-fun bs!1116060 () Bool)

(declare-fun b!4724987 () Bool)

(assert (= bs!1116060 (and b!4724987 b!4724511)))

(declare-fun lambda!216041 () Int)

(assert (=> bs!1116060 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216041 lambda!215957))))

(declare-fun bs!1116061 () Bool)

(assert (= bs!1116061 (and b!4724987 b!4724389)))

(assert (=> bs!1116061 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215930))))

(declare-fun bs!1116062 () Bool)

(assert (= bs!1116062 (and b!4724987 d!1504826)))

(assert (=> bs!1116062 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889434) (= lambda!216041 lambda!215942))))

(declare-fun bs!1116063 () Bool)

(assert (= bs!1116063 (and b!4724987 b!4724318)))

(assert (=> bs!1116063 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215920))))

(declare-fun bs!1116064 () Bool)

(assert (= bs!1116064 (and b!4724987 d!1504828)))

(assert (=> bs!1116064 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889455) (= lambda!216041 lambda!215946))))

(declare-fun bs!1116065 () Bool)

(assert (= bs!1116065 (and b!4724987 b!4724434)))

(assert (=> bs!1116065 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215940))))

(declare-fun bs!1116066 () Bool)

(assert (= bs!1116066 (and b!4724987 d!1504812)))

(assert (=> bs!1116066 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889351) (= lambda!216041 lambda!215933))))

(declare-fun bs!1116067 () Bool)

(assert (= bs!1116067 (and b!4724987 b!4724513)))

(assert (=> bs!1116067 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216041 lambda!215956))))

(declare-fun bs!1116068 () Bool)

(assert (= bs!1116068 (and b!4724987 b!4724402)))

(assert (=> bs!1116068 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215934))))

(declare-fun bs!1116069 () Bool)

(assert (= bs!1116069 (and b!4724987 b!4724558)))

(assert (=> bs!1116069 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216041 lambda!215973))))

(declare-fun bs!1116070 () Bool)

(assert (= bs!1116070 (and b!4724987 b!4724556)))

(assert (=> bs!1116070 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216041 lambda!215975))))

(declare-fun bs!1116071 () Bool)

(assert (= bs!1116071 (and b!4724987 d!1504918)))

(assert (=> bs!1116071 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889607) (= lambda!216041 lambda!215994))))

(declare-fun bs!1116072 () Bool)

(assert (= bs!1116072 (and b!4724987 d!1504728)))

(assert (=> bs!1116072 (not (= lambda!216041 lambda!215834))))

(declare-fun bs!1116073 () Bool)

(assert (= bs!1116073 (and b!4724987 b!4724387)))

(assert (=> bs!1116073 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215931))))

(declare-fun bs!1116074 () Bool)

(assert (= bs!1116074 (and b!4724987 d!1504898)))

(assert (=> bs!1116074 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889569) (= lambda!216041 lambda!215977))))

(declare-fun bs!1116075 () Bool)

(assert (= bs!1116075 (and b!4724987 b!4724656)))

(assert (=> bs!1116075 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216041 lambda!216002))))

(assert (=> bs!1116075 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889688) (= lambda!216041 lambda!216003))))

(assert (=> bs!1116060 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889503) (= lambda!216041 lambda!215958))))

(declare-fun bs!1116076 () Bool)

(assert (= bs!1116076 (and b!4724987 d!1504946)))

(assert (=> bs!1116076 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889678) (= lambda!216041 lambda!216005))))

(assert (=> bs!1116070 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889579) (= lambda!216041 lambda!215976))))

(declare-fun bs!1116077 () Bool)

(assert (= bs!1116077 (and b!4724987 b!4724591)))

(assert (=> bs!1116077 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216041 lambda!215982))))

(declare-fun bs!1116078 () Bool)

(assert (= bs!1116078 (and b!4724987 d!1504878)))

(assert (=> bs!1116078 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889398) (= lambda!216041 lambda!215970))))

(declare-fun bs!1116079 () Bool)

(assert (= bs!1116079 (and b!4724987 d!1504864)))

(assert (=> bs!1116079 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889493) (= lambda!216041 lambda!215959))))

(declare-fun bs!1116080 () Bool)

(assert (= bs!1116080 (and b!4724987 b!4724658)))

(assert (=> bs!1116080 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216041 lambda!216000))))

(assert (=> bs!1116073 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889361) (= lambda!216041 lambda!215932))))

(declare-fun bs!1116081 () Bool)

(assert (= bs!1116081 (and b!4724987 b!4724441)))

(assert (=> bs!1116081 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215943))))

(assert (=> bs!1116077 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889617) (= lambda!216041 lambda!215989))))

(declare-fun bs!1116082 () Bool)

(assert (= bs!1116082 (and b!4724987 b!4724436)))

(assert (=> bs!1116082 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215939))))

(declare-fun bs!1116083 () Bool)

(assert (= bs!1116083 (and b!4724987 d!1504820)))

(assert (=> bs!1116083 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889388) (= lambda!216041 lambda!215937))))

(declare-fun bs!1116084 () Bool)

(assert (= bs!1116084 (and b!4724987 b!4724320)))

(assert (=> bs!1116084 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215918))))

(declare-fun bs!1116085 () Bool)

(assert (= bs!1116085 (and b!4724987 b!4724400)))

(assert (=> bs!1116085 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889398) (= lambda!216041 lambda!215936))))

(declare-fun bs!1116086 () Bool)

(assert (= bs!1116086 (and b!4724987 d!1504736)))

(assert (=> bs!1116086 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889297) (= lambda!216041 lambda!215923))))

(assert (=> bs!1116063 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889307) (= lambda!216041 lambda!215922))))

(declare-fun bs!1116087 () Bool)

(assert (= bs!1116087 (and b!4724987 b!4724593)))

(assert (=> bs!1116087 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216041 lambda!215979))))

(declare-fun bs!1116088 () Bool)

(assert (= bs!1116088 (and b!4724987 d!1504846)))

(assert (=> bs!1116088 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215949))))

(declare-fun bs!1116089 () Bool)

(assert (= bs!1116089 (and b!4724987 b!4724439)))

(assert (=> bs!1116089 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889465) (= lambda!216041 lambda!215945))))

(assert (=> bs!1116089 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215944))))

(assert (=> bs!1116065 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889444) (= lambda!216041 lambda!215941))))

(assert (=> bs!1116085 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216041 lambda!215935))))

(declare-fun bs!1116090 () Bool)

(assert (= bs!1116090 (and b!4724987 d!1504730)))

(assert (=> bs!1116090 (not (= lambda!216041 lambda!215835))))

(assert (=> b!4724987 true))

(declare-fun bs!1116091 () Bool)

(declare-fun b!4724985 () Bool)

(assert (= bs!1116091 (and b!4724985 b!4724511)))

(declare-fun lambda!216042 () Int)

(assert (=> bs!1116091 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216042 lambda!215957))))

(declare-fun bs!1116092 () Bool)

(assert (= bs!1116092 (and b!4724985 b!4724389)))

(assert (=> bs!1116092 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215930))))

(declare-fun bs!1116093 () Bool)

(assert (= bs!1116093 (and b!4724985 d!1504826)))

(assert (=> bs!1116093 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889434) (= lambda!216042 lambda!215942))))

(declare-fun bs!1116094 () Bool)

(assert (= bs!1116094 (and b!4724985 b!4724318)))

(assert (=> bs!1116094 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215920))))

(declare-fun bs!1116095 () Bool)

(assert (= bs!1116095 (and b!4724985 d!1504828)))

(assert (=> bs!1116095 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889455) (= lambda!216042 lambda!215946))))

(declare-fun bs!1116096 () Bool)

(assert (= bs!1116096 (and b!4724985 b!4724434)))

(assert (=> bs!1116096 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215940))))

(declare-fun bs!1116097 () Bool)

(assert (= bs!1116097 (and b!4724985 d!1504812)))

(assert (=> bs!1116097 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889351) (= lambda!216042 lambda!215933))))

(declare-fun bs!1116098 () Bool)

(assert (= bs!1116098 (and b!4724985 b!4724513)))

(assert (=> bs!1116098 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216042 lambda!215956))))

(declare-fun bs!1116099 () Bool)

(assert (= bs!1116099 (and b!4724985 b!4724402)))

(assert (=> bs!1116099 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215934))))

(declare-fun bs!1116100 () Bool)

(assert (= bs!1116100 (and b!4724985 b!4724558)))

(assert (=> bs!1116100 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216042 lambda!215973))))

(declare-fun bs!1116101 () Bool)

(assert (= bs!1116101 (and b!4724985 b!4724556)))

(assert (=> bs!1116101 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216042 lambda!215975))))

(declare-fun bs!1116102 () Bool)

(assert (= bs!1116102 (and b!4724985 d!1504918)))

(assert (=> bs!1116102 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889607) (= lambda!216042 lambda!215994))))

(declare-fun bs!1116103 () Bool)

(assert (= bs!1116103 (and b!4724985 d!1504728)))

(assert (=> bs!1116103 (not (= lambda!216042 lambda!215834))))

(declare-fun bs!1116104 () Bool)

(assert (= bs!1116104 (and b!4724985 b!4724387)))

(assert (=> bs!1116104 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215931))))

(declare-fun bs!1116105 () Bool)

(assert (= bs!1116105 (and b!4724985 d!1504898)))

(assert (=> bs!1116105 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889569) (= lambda!216042 lambda!215977))))

(declare-fun bs!1116106 () Bool)

(assert (= bs!1116106 (and b!4724985 b!4724656)))

(assert (=> bs!1116106 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216042 lambda!216002))))

(assert (=> bs!1116106 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889688) (= lambda!216042 lambda!216003))))

(assert (=> bs!1116091 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889503) (= lambda!216042 lambda!215958))))

(declare-fun bs!1116107 () Bool)

(assert (= bs!1116107 (and b!4724985 d!1504946)))

(assert (=> bs!1116107 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889678) (= lambda!216042 lambda!216005))))

(assert (=> bs!1116101 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889579) (= lambda!216042 lambda!215976))))

(declare-fun bs!1116108 () Bool)

(assert (= bs!1116108 (and b!4724985 b!4724591)))

(assert (=> bs!1116108 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216042 lambda!215982))))

(declare-fun bs!1116109 () Bool)

(assert (= bs!1116109 (and b!4724985 d!1504878)))

(assert (=> bs!1116109 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889398) (= lambda!216042 lambda!215970))))

(declare-fun bs!1116110 () Bool)

(assert (= bs!1116110 (and b!4724985 d!1504864)))

(assert (=> bs!1116110 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889493) (= lambda!216042 lambda!215959))))

(declare-fun bs!1116111 () Bool)

(assert (= bs!1116111 (and b!4724985 b!4724658)))

(assert (=> bs!1116111 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216042 lambda!216000))))

(assert (=> bs!1116104 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889361) (= lambda!216042 lambda!215932))))

(declare-fun bs!1116112 () Bool)

(assert (= bs!1116112 (and b!4724985 b!4724441)))

(assert (=> bs!1116112 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215943))))

(assert (=> bs!1116108 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889617) (= lambda!216042 lambda!215989))))

(declare-fun bs!1116113 () Bool)

(assert (= bs!1116113 (and b!4724985 b!4724436)))

(assert (=> bs!1116113 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215939))))

(declare-fun bs!1116114 () Bool)

(assert (= bs!1116114 (and b!4724985 d!1504820)))

(assert (=> bs!1116114 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889388) (= lambda!216042 lambda!215937))))

(declare-fun bs!1116115 () Bool)

(assert (= bs!1116115 (and b!4724985 b!4724320)))

(assert (=> bs!1116115 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215918))))

(declare-fun bs!1116116 () Bool)

(assert (= bs!1116116 (and b!4724985 b!4724400)))

(assert (=> bs!1116116 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889398) (= lambda!216042 lambda!215936))))

(declare-fun bs!1116117 () Bool)

(assert (= bs!1116117 (and b!4724985 b!4724987)))

(assert (=> bs!1116117 (= lambda!216042 lambda!216041)))

(declare-fun bs!1116118 () Bool)

(assert (= bs!1116118 (and b!4724985 d!1504736)))

(assert (=> bs!1116118 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889297) (= lambda!216042 lambda!215923))))

(assert (=> bs!1116094 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889307) (= lambda!216042 lambda!215922))))

(declare-fun bs!1116119 () Bool)

(assert (= bs!1116119 (and b!4724985 b!4724593)))

(assert (=> bs!1116119 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216042 lambda!215979))))

(declare-fun bs!1116120 () Bool)

(assert (= bs!1116120 (and b!4724985 d!1504846)))

(assert (=> bs!1116120 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215949))))

(declare-fun bs!1116121 () Bool)

(assert (= bs!1116121 (and b!4724985 b!4724439)))

(assert (=> bs!1116121 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889465) (= lambda!216042 lambda!215945))))

(assert (=> bs!1116121 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215944))))

(assert (=> bs!1116096 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889444) (= lambda!216042 lambda!215941))))

(assert (=> bs!1116116 (= (= (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889044) (= lambda!216042 lambda!215935))))

(declare-fun bs!1116122 () Bool)

(assert (= bs!1116122 (and b!4724985 d!1504730)))

(assert (=> bs!1116122 (not (= lambda!216042 lambda!215835))))

(assert (=> b!4724985 true))

(declare-fun lt!1889906 () ListMap!5285)

(declare-fun lambda!216043 () Int)

(assert (=> bs!1116091 (= (= lt!1889906 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216043 lambda!215957))))

(assert (=> bs!1116092 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215930))))

(assert (=> bs!1116093 (= (= lt!1889906 lt!1889434) (= lambda!216043 lambda!215942))))

(assert (=> bs!1116094 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215920))))

(assert (=> bs!1116095 (= (= lt!1889906 lt!1889455) (= lambda!216043 lambda!215946))))

(assert (=> bs!1116096 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215940))))

(assert (=> bs!1116097 (= (= lt!1889906 lt!1889351) (= lambda!216043 lambda!215933))))

(assert (=> bs!1116098 (= (= lt!1889906 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216043 lambda!215956))))

(assert (=> bs!1116100 (= (= lt!1889906 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216043 lambda!215973))))

(assert (=> bs!1116101 (= (= lt!1889906 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216043 lambda!215975))))

(assert (=> bs!1116102 (= (= lt!1889906 lt!1889607) (= lambda!216043 lambda!215994))))

(assert (=> bs!1116103 (not (= lambda!216043 lambda!215834))))

(assert (=> bs!1116104 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215931))))

(assert (=> bs!1116105 (= (= lt!1889906 lt!1889569) (= lambda!216043 lambda!215977))))

(assert (=> bs!1116106 (= (= lt!1889906 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216043 lambda!216002))))

(assert (=> bs!1116106 (= (= lt!1889906 lt!1889688) (= lambda!216043 lambda!216003))))

(assert (=> bs!1116091 (= (= lt!1889906 lt!1889503) (= lambda!216043 lambda!215958))))

(assert (=> bs!1116107 (= (= lt!1889906 lt!1889678) (= lambda!216043 lambda!216005))))

(assert (=> bs!1116101 (= (= lt!1889906 lt!1889579) (= lambda!216043 lambda!215976))))

(assert (=> bs!1116108 (= (= lt!1889906 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216043 lambda!215982))))

(assert (=> bs!1116109 (= (= lt!1889906 lt!1889398) (= lambda!216043 lambda!215970))))

(assert (=> b!4724985 (= (= lt!1889906 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216043 lambda!216042))))

(assert (=> bs!1116099 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215934))))

(assert (=> bs!1116110 (= (= lt!1889906 lt!1889493) (= lambda!216043 lambda!215959))))

(assert (=> bs!1116111 (= (= lt!1889906 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216043 lambda!216000))))

(assert (=> bs!1116104 (= (= lt!1889906 lt!1889361) (= lambda!216043 lambda!215932))))

(assert (=> bs!1116112 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215943))))

(assert (=> bs!1116108 (= (= lt!1889906 lt!1889617) (= lambda!216043 lambda!215989))))

(assert (=> bs!1116113 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215939))))

(assert (=> bs!1116114 (= (= lt!1889906 lt!1889388) (= lambda!216043 lambda!215937))))

(assert (=> bs!1116115 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215918))))

(assert (=> bs!1116116 (= (= lt!1889906 lt!1889398) (= lambda!216043 lambda!215936))))

(assert (=> bs!1116117 (= (= lt!1889906 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216043 lambda!216041))))

(assert (=> bs!1116118 (= (= lt!1889906 lt!1889297) (= lambda!216043 lambda!215923))))

(assert (=> bs!1116094 (= (= lt!1889906 lt!1889307) (= lambda!216043 lambda!215922))))

(assert (=> bs!1116119 (= (= lt!1889906 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216043 lambda!215979))))

(assert (=> bs!1116120 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215949))))

(assert (=> bs!1116121 (= (= lt!1889906 lt!1889465) (= lambda!216043 lambda!215945))))

(assert (=> bs!1116121 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215944))))

(assert (=> bs!1116096 (= (= lt!1889906 lt!1889444) (= lambda!216043 lambda!215941))))

(assert (=> bs!1116116 (= (= lt!1889906 lt!1889044) (= lambda!216043 lambda!215935))))

(assert (=> bs!1116122 (not (= lambda!216043 lambda!215835))))

(assert (=> b!4724985 true))

(declare-fun bs!1116123 () Bool)

(declare-fun d!1505120 () Bool)

(assert (= bs!1116123 (and d!1505120 b!4724511)))

(declare-fun lt!1889896 () ListMap!5285)

(declare-fun lambda!216044 () Int)

(assert (=> bs!1116123 (= (= lt!1889896 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216044 lambda!215957))))

(declare-fun bs!1116124 () Bool)

(assert (= bs!1116124 (and d!1505120 b!4724389)))

(assert (=> bs!1116124 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215930))))

(declare-fun bs!1116125 () Bool)

(assert (= bs!1116125 (and d!1505120 d!1504826)))

(assert (=> bs!1116125 (= (= lt!1889896 lt!1889434) (= lambda!216044 lambda!215942))))

(declare-fun bs!1116126 () Bool)

(assert (= bs!1116126 (and d!1505120 b!4724318)))

(assert (=> bs!1116126 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215920))))

(declare-fun bs!1116127 () Bool)

(assert (= bs!1116127 (and d!1505120 d!1504828)))

(assert (=> bs!1116127 (= (= lt!1889896 lt!1889455) (= lambda!216044 lambda!215946))))

(declare-fun bs!1116128 () Bool)

(assert (= bs!1116128 (and d!1505120 b!4724434)))

(assert (=> bs!1116128 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215940))))

(declare-fun bs!1116129 () Bool)

(assert (= bs!1116129 (and d!1505120 d!1504812)))

(assert (=> bs!1116129 (= (= lt!1889896 lt!1889351) (= lambda!216044 lambda!215933))))

(declare-fun bs!1116130 () Bool)

(assert (= bs!1116130 (and d!1505120 b!4724513)))

(assert (=> bs!1116130 (= (= lt!1889896 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216044 lambda!215956))))

(declare-fun bs!1116131 () Bool)

(assert (= bs!1116131 (and d!1505120 b!4724558)))

(assert (=> bs!1116131 (= (= lt!1889896 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216044 lambda!215973))))

(declare-fun bs!1116132 () Bool)

(assert (= bs!1116132 (and d!1505120 b!4724556)))

(assert (=> bs!1116132 (= (= lt!1889896 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216044 lambda!215975))))

(declare-fun bs!1116133 () Bool)

(assert (= bs!1116133 (and d!1505120 d!1504918)))

(assert (=> bs!1116133 (= (= lt!1889896 lt!1889607) (= lambda!216044 lambda!215994))))

(declare-fun bs!1116134 () Bool)

(assert (= bs!1116134 (and d!1505120 d!1504728)))

(assert (=> bs!1116134 (not (= lambda!216044 lambda!215834))))

(declare-fun bs!1116135 () Bool)

(assert (= bs!1116135 (and d!1505120 b!4724387)))

(assert (=> bs!1116135 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215931))))

(declare-fun bs!1116136 () Bool)

(assert (= bs!1116136 (and d!1505120 d!1504898)))

(assert (=> bs!1116136 (= (= lt!1889896 lt!1889569) (= lambda!216044 lambda!215977))))

(declare-fun bs!1116137 () Bool)

(assert (= bs!1116137 (and d!1505120 b!4724656)))

(assert (=> bs!1116137 (= (= lt!1889896 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216044 lambda!216002))))

(assert (=> bs!1116137 (= (= lt!1889896 lt!1889688) (= lambda!216044 lambda!216003))))

(assert (=> bs!1116123 (= (= lt!1889896 lt!1889503) (= lambda!216044 lambda!215958))))

(declare-fun bs!1116138 () Bool)

(assert (= bs!1116138 (and d!1505120 d!1504946)))

(assert (=> bs!1116138 (= (= lt!1889896 lt!1889678) (= lambda!216044 lambda!216005))))

(assert (=> bs!1116132 (= (= lt!1889896 lt!1889579) (= lambda!216044 lambda!215976))))

(declare-fun bs!1116139 () Bool)

(assert (= bs!1116139 (and d!1505120 b!4724591)))

(assert (=> bs!1116139 (= (= lt!1889896 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216044 lambda!215982))))

(declare-fun bs!1116140 () Bool)

(assert (= bs!1116140 (and d!1505120 d!1504878)))

(assert (=> bs!1116140 (= (= lt!1889896 lt!1889398) (= lambda!216044 lambda!215970))))

(declare-fun bs!1116141 () Bool)

(assert (= bs!1116141 (and d!1505120 b!4724985)))

(assert (=> bs!1116141 (= (= lt!1889896 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216044 lambda!216042))))

(declare-fun bs!1116142 () Bool)

(assert (= bs!1116142 (and d!1505120 b!4724402)))

(assert (=> bs!1116142 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215934))))

(declare-fun bs!1116143 () Bool)

(assert (= bs!1116143 (and d!1505120 d!1504864)))

(assert (=> bs!1116143 (= (= lt!1889896 lt!1889493) (= lambda!216044 lambda!215959))))

(declare-fun bs!1116144 () Bool)

(assert (= bs!1116144 (and d!1505120 b!4724658)))

(assert (=> bs!1116144 (= (= lt!1889896 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216044 lambda!216000))))

(assert (=> bs!1116135 (= (= lt!1889896 lt!1889361) (= lambda!216044 lambda!215932))))

(declare-fun bs!1116145 () Bool)

(assert (= bs!1116145 (and d!1505120 b!4724441)))

(assert (=> bs!1116145 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215943))))

(assert (=> bs!1116139 (= (= lt!1889896 lt!1889617) (= lambda!216044 lambda!215989))))

(declare-fun bs!1116146 () Bool)

(assert (= bs!1116146 (and d!1505120 b!4724436)))

(assert (=> bs!1116146 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215939))))

(declare-fun bs!1116147 () Bool)

(assert (= bs!1116147 (and d!1505120 d!1504820)))

(assert (=> bs!1116147 (= (= lt!1889896 lt!1889388) (= lambda!216044 lambda!215937))))

(declare-fun bs!1116148 () Bool)

(assert (= bs!1116148 (and d!1505120 b!4724320)))

(assert (=> bs!1116148 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215918))))

(declare-fun bs!1116149 () Bool)

(assert (= bs!1116149 (and d!1505120 b!4724400)))

(assert (=> bs!1116149 (= (= lt!1889896 lt!1889398) (= lambda!216044 lambda!215936))))

(declare-fun bs!1116150 () Bool)

(assert (= bs!1116150 (and d!1505120 b!4724987)))

(assert (=> bs!1116150 (= (= lt!1889896 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216044 lambda!216041))))

(declare-fun bs!1116151 () Bool)

(assert (= bs!1116151 (and d!1505120 d!1504736)))

(assert (=> bs!1116151 (= (= lt!1889896 lt!1889297) (= lambda!216044 lambda!215923))))

(assert (=> bs!1116126 (= (= lt!1889896 lt!1889307) (= lambda!216044 lambda!215922))))

(declare-fun bs!1116152 () Bool)

(assert (= bs!1116152 (and d!1505120 b!4724593)))

(assert (=> bs!1116152 (= (= lt!1889896 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216044 lambda!215979))))

(declare-fun bs!1116153 () Bool)

(assert (= bs!1116153 (and d!1505120 d!1504846)))

(assert (=> bs!1116153 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215949))))

(declare-fun bs!1116154 () Bool)

(assert (= bs!1116154 (and d!1505120 b!4724439)))

(assert (=> bs!1116154 (= (= lt!1889896 lt!1889465) (= lambda!216044 lambda!215945))))

(assert (=> bs!1116141 (= (= lt!1889896 lt!1889906) (= lambda!216044 lambda!216043))))

(assert (=> bs!1116154 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215944))))

(assert (=> bs!1116128 (= (= lt!1889896 lt!1889444) (= lambda!216044 lambda!215941))))

(assert (=> bs!1116149 (= (= lt!1889896 lt!1889044) (= lambda!216044 lambda!215935))))

(declare-fun bs!1116155 () Bool)

(assert (= bs!1116155 (and d!1505120 d!1504730)))

(assert (=> bs!1116155 (not (= lambda!216044 lambda!215835))))

(assert (=> d!1505120 true))

(declare-fun bm!330555 () Bool)

(declare-fun call!330560 () Unit!130501)

(assert (=> bm!330555 (= call!330560 (lemmaContainsAllItsOwnKeys!799 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun e!2946915 () Bool)

(declare-fun b!4724984 () Bool)

(assert (=> b!4724984 (= e!2946915 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) lambda!216043))))

(declare-fun b!4724986 () Bool)

(declare-fun e!2946916 () Bool)

(assert (=> b!4724986 (= e!2946916 (invariantList!1513 (toList!5921 lt!1889896)))))

(declare-fun e!2946917 () ListMap!5285)

(assert (=> b!4724987 (= e!2946917 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(declare-fun lt!1889899 () Unit!130501)

(assert (=> b!4724987 (= lt!1889899 call!330560)))

(declare-fun call!330562 () Bool)

(assert (=> b!4724987 call!330562))

(declare-fun lt!1889913 () Unit!130501)

(assert (=> b!4724987 (= lt!1889913 lt!1889899)))

(declare-fun call!330561 () Bool)

(assert (=> b!4724987 call!330561))

(declare-fun lt!1889912 () Unit!130501)

(declare-fun Unit!130744 () Unit!130501)

(assert (=> b!4724987 (= lt!1889912 Unit!130744)))

(declare-fun b!4724988 () Bool)

(declare-fun res!1999370 () Bool)

(assert (=> b!4724988 (=> (not res!1999370) (not e!2946916))))

(assert (=> b!4724988 (= res!1999370 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) lambda!216044))))

(declare-fun c!806974 () Bool)

(declare-fun bm!330556 () Bool)

(declare-fun lt!1889911 () ListMap!5285)

(assert (=> bm!330556 (= call!330562 (forall!11596 (ite c!806974 (toList!5921 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (toList!5921 lt!1889911)) (ite c!806974 lambda!216041 lambda!216043)))))

(declare-fun bm!330557 () Bool)

(assert (=> bm!330557 (= call!330561 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (ite c!806974 lambda!216041 lambda!216042)))))

(assert (=> d!1505120 e!2946916))

(declare-fun res!1999372 () Bool)

(assert (=> d!1505120 (=> (not res!1999372) (not e!2946916))))

(assert (=> d!1505120 (= res!1999372 (forall!11596 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) lambda!216044))))

(assert (=> d!1505120 (= lt!1889896 e!2946917)))

(assert (=> d!1505120 (= c!806974 ((_ is Nil!52836) (t!360230 (Cons!52836 lt!1889051 lt!1889050))))))

(assert (=> d!1505120 (noDuplicateKeys!2016 (t!360230 (Cons!52836 lt!1889051 lt!1889050)))))

(assert (=> d!1505120 (= (addToMapMapFromBucket!1446 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) lt!1889896)))

(assert (=> b!4724985 (= e!2946917 lt!1889906)))

(assert (=> b!4724985 (= lt!1889911 (+!2271 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> b!4724985 (= lt!1889906 (addToMapMapFromBucket!1446 (t!360230 (t!360230 (Cons!52836 lt!1889051 lt!1889050))) (+!2271 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050))))))))

(declare-fun lt!1889915 () Unit!130501)

(assert (=> b!4724985 (= lt!1889915 call!330560)))

(assert (=> b!4724985 call!330561))

(declare-fun lt!1889914 () Unit!130501)

(assert (=> b!4724985 (= lt!1889914 lt!1889915)))

(assert (=> b!4724985 call!330562))

(declare-fun lt!1889901 () Unit!130501)

(declare-fun Unit!130746 () Unit!130501)

(assert (=> b!4724985 (= lt!1889901 Unit!130746)))

(assert (=> b!4724985 (forall!11596 (t!360230 (t!360230 (Cons!52836 lt!1889051 lt!1889050))) lambda!216043)))

(declare-fun lt!1889907 () Unit!130501)

(declare-fun Unit!130747 () Unit!130501)

(assert (=> b!4724985 (= lt!1889907 Unit!130747)))

(declare-fun lt!1889902 () Unit!130501)

(declare-fun Unit!130748 () Unit!130501)

(assert (=> b!4724985 (= lt!1889902 Unit!130748)))

(declare-fun lt!1889905 () Unit!130501)

(assert (=> b!4724985 (= lt!1889905 (forallContained!3643 (toList!5921 lt!1889911) lambda!216043 (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> b!4724985 (contains!16183 lt!1889911 (_1!30523 (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun lt!1889904 () Unit!130501)

(declare-fun Unit!130750 () Unit!130501)

(assert (=> b!4724985 (= lt!1889904 Unit!130750)))

(assert (=> b!4724985 (contains!16183 lt!1889906 (_1!30523 (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun lt!1889897 () Unit!130501)

(declare-fun Unit!130751 () Unit!130501)

(assert (=> b!4724985 (= lt!1889897 Unit!130751)))

(assert (=> b!4724985 (forall!11596 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) lambda!216043)))

(declare-fun lt!1889898 () Unit!130501)

(declare-fun Unit!130752 () Unit!130501)

(assert (=> b!4724985 (= lt!1889898 Unit!130752)))

(assert (=> b!4724985 (forall!11596 (toList!5921 lt!1889911) lambda!216043)))

(declare-fun lt!1889909 () Unit!130501)

(declare-fun Unit!130753 () Unit!130501)

(assert (=> b!4724985 (= lt!1889909 Unit!130753)))

(declare-fun lt!1889903 () Unit!130501)

(declare-fun Unit!130754 () Unit!130501)

(assert (=> b!4724985 (= lt!1889903 Unit!130754)))

(declare-fun lt!1889910 () Unit!130501)

(assert (=> b!4724985 (= lt!1889910 (addForallContainsKeyThenBeforeAdding!798 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889906 (_1!30523 (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050)))) (_2!30523 (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050))))))))

(assert (=> b!4724985 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) lambda!216043)))

(declare-fun lt!1889900 () Unit!130501)

(assert (=> b!4724985 (= lt!1889900 lt!1889910)))

(assert (=> b!4724985 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) lambda!216043)))

(declare-fun lt!1889916 () Unit!130501)

(declare-fun Unit!130755 () Unit!130501)

(assert (=> b!4724985 (= lt!1889916 Unit!130755)))

(declare-fun res!1999371 () Bool)

(assert (=> b!4724985 (= res!1999371 (forall!11596 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) lambda!216043))))

(assert (=> b!4724985 (=> (not res!1999371) (not e!2946915))))

(assert (=> b!4724985 e!2946915))

(declare-fun lt!1889908 () Unit!130501)

(declare-fun Unit!130756 () Unit!130501)

(assert (=> b!4724985 (= lt!1889908 Unit!130756)))

(assert (= (and d!1505120 c!806974) b!4724987))

(assert (= (and d!1505120 (not c!806974)) b!4724985))

(assert (= (and b!4724985 res!1999371) b!4724984))

(assert (= (or b!4724987 b!4724985) bm!330555))

(assert (= (or b!4724987 b!4724985) bm!330557))

(assert (= (or b!4724987 b!4724985) bm!330556))

(assert (= (and d!1505120 res!1999372) b!4724988))

(assert (= (and b!4724988 res!1999370) b!4724986))

(declare-fun m!5663375 () Bool)

(assert (=> b!4724986 m!5663375))

(assert (=> bm!330555 m!5662127))

(declare-fun m!5663377 () Bool)

(assert (=> bm!330555 m!5663377))

(declare-fun m!5663379 () Bool)

(assert (=> b!4724988 m!5663379))

(declare-fun m!5663381 () Bool)

(assert (=> d!1505120 m!5663381))

(declare-fun m!5663383 () Bool)

(assert (=> d!1505120 m!5663383))

(declare-fun m!5663385 () Bool)

(assert (=> b!4724985 m!5663385))

(declare-fun m!5663387 () Bool)

(assert (=> b!4724985 m!5663387))

(declare-fun m!5663389 () Bool)

(assert (=> b!4724985 m!5663389))

(declare-fun m!5663391 () Bool)

(assert (=> b!4724985 m!5663391))

(declare-fun m!5663393 () Bool)

(assert (=> b!4724985 m!5663393))

(assert (=> b!4724985 m!5663385))

(assert (=> b!4724985 m!5662127))

(assert (=> b!4724985 m!5663387))

(declare-fun m!5663395 () Bool)

(assert (=> b!4724985 m!5663395))

(declare-fun m!5663397 () Bool)

(assert (=> b!4724985 m!5663397))

(assert (=> b!4724985 m!5662127))

(declare-fun m!5663399 () Bool)

(assert (=> b!4724985 m!5663399))

(declare-fun m!5663401 () Bool)

(assert (=> b!4724985 m!5663401))

(declare-fun m!5663403 () Bool)

(assert (=> b!4724985 m!5663403))

(assert (=> b!4724985 m!5663395))

(declare-fun m!5663405 () Bool)

(assert (=> bm!330556 m!5663405))

(assert (=> b!4724984 m!5663395))

(declare-fun m!5663407 () Bool)

(assert (=> bm!330557 m!5663407))

(assert (=> b!4724387 d!1505120))

(declare-fun bs!1116156 () Bool)

(declare-fun d!1505122 () Bool)

(assert (= bs!1116156 (and d!1505122 b!4724511)))

(declare-fun lambda!216045 () Int)

(assert (=> bs!1116156 (= (= lt!1889361 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216045 lambda!215957))))

(declare-fun bs!1116157 () Bool)

(assert (= bs!1116157 (and d!1505122 b!4724389)))

(assert (=> bs!1116157 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215930))))

(declare-fun bs!1116158 () Bool)

(assert (= bs!1116158 (and d!1505122 d!1504826)))

(assert (=> bs!1116158 (= (= lt!1889361 lt!1889434) (= lambda!216045 lambda!215942))))

(declare-fun bs!1116159 () Bool)

(assert (= bs!1116159 (and d!1505122 b!4724318)))

(assert (=> bs!1116159 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215920))))

(declare-fun bs!1116160 () Bool)

(assert (= bs!1116160 (and d!1505122 d!1504828)))

(assert (=> bs!1116160 (= (= lt!1889361 lt!1889455) (= lambda!216045 lambda!215946))))

(declare-fun bs!1116161 () Bool)

(assert (= bs!1116161 (and d!1505122 b!4724434)))

(assert (=> bs!1116161 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215940))))

(declare-fun bs!1116162 () Bool)

(assert (= bs!1116162 (and d!1505122 d!1504812)))

(assert (=> bs!1116162 (= (= lt!1889361 lt!1889351) (= lambda!216045 lambda!215933))))

(declare-fun bs!1116163 () Bool)

(assert (= bs!1116163 (and d!1505122 b!4724513)))

(assert (=> bs!1116163 (= (= lt!1889361 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216045 lambda!215956))))

(declare-fun bs!1116164 () Bool)

(assert (= bs!1116164 (and d!1505122 b!4724558)))

(assert (=> bs!1116164 (= (= lt!1889361 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216045 lambda!215973))))

(declare-fun bs!1116165 () Bool)

(assert (= bs!1116165 (and d!1505122 b!4724556)))

(assert (=> bs!1116165 (= (= lt!1889361 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216045 lambda!215975))))

(declare-fun bs!1116166 () Bool)

(assert (= bs!1116166 (and d!1505122 d!1504918)))

(assert (=> bs!1116166 (= (= lt!1889361 lt!1889607) (= lambda!216045 lambda!215994))))

(declare-fun bs!1116167 () Bool)

(assert (= bs!1116167 (and d!1505122 d!1504728)))

(assert (=> bs!1116167 (not (= lambda!216045 lambda!215834))))

(declare-fun bs!1116168 () Bool)

(assert (= bs!1116168 (and d!1505122 b!4724387)))

(assert (=> bs!1116168 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215931))))

(declare-fun bs!1116169 () Bool)

(assert (= bs!1116169 (and d!1505122 d!1504898)))

(assert (=> bs!1116169 (= (= lt!1889361 lt!1889569) (= lambda!216045 lambda!215977))))

(declare-fun bs!1116170 () Bool)

(assert (= bs!1116170 (and d!1505122 b!4724656)))

(assert (=> bs!1116170 (= (= lt!1889361 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216045 lambda!216002))))

(assert (=> bs!1116170 (= (= lt!1889361 lt!1889688) (= lambda!216045 lambda!216003))))

(assert (=> bs!1116156 (= (= lt!1889361 lt!1889503) (= lambda!216045 lambda!215958))))

(declare-fun bs!1116171 () Bool)

(assert (= bs!1116171 (and d!1505122 d!1504946)))

(assert (=> bs!1116171 (= (= lt!1889361 lt!1889678) (= lambda!216045 lambda!216005))))

(assert (=> bs!1116165 (= (= lt!1889361 lt!1889579) (= lambda!216045 lambda!215976))))

(declare-fun bs!1116172 () Bool)

(assert (= bs!1116172 (and d!1505122 b!4724591)))

(assert (=> bs!1116172 (= (= lt!1889361 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216045 lambda!215982))))

(declare-fun bs!1116173 () Bool)

(assert (= bs!1116173 (and d!1505122 d!1504878)))

(assert (=> bs!1116173 (= (= lt!1889361 lt!1889398) (= lambda!216045 lambda!215970))))

(declare-fun bs!1116174 () Bool)

(assert (= bs!1116174 (and d!1505122 b!4724985)))

(assert (=> bs!1116174 (= (= lt!1889361 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216045 lambda!216042))))

(declare-fun bs!1116175 () Bool)

(assert (= bs!1116175 (and d!1505122 d!1505120)))

(assert (=> bs!1116175 (= (= lt!1889361 lt!1889896) (= lambda!216045 lambda!216044))))

(declare-fun bs!1116176 () Bool)

(assert (= bs!1116176 (and d!1505122 b!4724402)))

(assert (=> bs!1116176 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215934))))

(declare-fun bs!1116177 () Bool)

(assert (= bs!1116177 (and d!1505122 d!1504864)))

(assert (=> bs!1116177 (= (= lt!1889361 lt!1889493) (= lambda!216045 lambda!215959))))

(declare-fun bs!1116178 () Bool)

(assert (= bs!1116178 (and d!1505122 b!4724658)))

(assert (=> bs!1116178 (= (= lt!1889361 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216045 lambda!216000))))

(assert (=> bs!1116168 (= lambda!216045 lambda!215932)))

(declare-fun bs!1116179 () Bool)

(assert (= bs!1116179 (and d!1505122 b!4724441)))

(assert (=> bs!1116179 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215943))))

(assert (=> bs!1116172 (= (= lt!1889361 lt!1889617) (= lambda!216045 lambda!215989))))

(declare-fun bs!1116180 () Bool)

(assert (= bs!1116180 (and d!1505122 b!4724436)))

(assert (=> bs!1116180 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215939))))

(declare-fun bs!1116181 () Bool)

(assert (= bs!1116181 (and d!1505122 d!1504820)))

(assert (=> bs!1116181 (= (= lt!1889361 lt!1889388) (= lambda!216045 lambda!215937))))

(declare-fun bs!1116182 () Bool)

(assert (= bs!1116182 (and d!1505122 b!4724320)))

(assert (=> bs!1116182 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215918))))

(declare-fun bs!1116183 () Bool)

(assert (= bs!1116183 (and d!1505122 b!4724400)))

(assert (=> bs!1116183 (= (= lt!1889361 lt!1889398) (= lambda!216045 lambda!215936))))

(declare-fun bs!1116184 () Bool)

(assert (= bs!1116184 (and d!1505122 b!4724987)))

(assert (=> bs!1116184 (= (= lt!1889361 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216045 lambda!216041))))

(declare-fun bs!1116185 () Bool)

(assert (= bs!1116185 (and d!1505122 d!1504736)))

(assert (=> bs!1116185 (= (= lt!1889361 lt!1889297) (= lambda!216045 lambda!215923))))

(assert (=> bs!1116159 (= (= lt!1889361 lt!1889307) (= lambda!216045 lambda!215922))))

(declare-fun bs!1116186 () Bool)

(assert (= bs!1116186 (and d!1505122 b!4724593)))

(assert (=> bs!1116186 (= (= lt!1889361 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216045 lambda!215979))))

(declare-fun bs!1116187 () Bool)

(assert (= bs!1116187 (and d!1505122 d!1504846)))

(assert (=> bs!1116187 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215949))))

(declare-fun bs!1116188 () Bool)

(assert (= bs!1116188 (and d!1505122 b!4724439)))

(assert (=> bs!1116188 (= (= lt!1889361 lt!1889465) (= lambda!216045 lambda!215945))))

(assert (=> bs!1116174 (= (= lt!1889361 lt!1889906) (= lambda!216045 lambda!216043))))

(assert (=> bs!1116188 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215944))))

(assert (=> bs!1116161 (= (= lt!1889361 lt!1889444) (= lambda!216045 lambda!215941))))

(assert (=> bs!1116183 (= (= lt!1889361 lt!1889044) (= lambda!216045 lambda!215935))))

(declare-fun bs!1116189 () Bool)

(assert (= bs!1116189 (and d!1505122 d!1504730)))

(assert (=> bs!1116189 (not (= lambda!216045 lambda!215835))))

(assert (=> d!1505122 true))

(assert (=> d!1505122 (forall!11596 (toList!5921 lt!1889044) lambda!216045)))

(declare-fun lt!1889939 () Unit!130501)

(assert (=> d!1505122 (= lt!1889939 (choose!33347 lt!1889044 lt!1889361 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (_2!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> d!1505122 (forall!11596 (toList!5921 (+!2271 lt!1889044 (tuple2!54459 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (_2!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))) lambda!216045)))

(assert (=> d!1505122 (= (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889361 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (_2!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) lt!1889939)))

(declare-fun bs!1116190 () Bool)

(assert (= bs!1116190 d!1505122))

(declare-fun m!5663409 () Bool)

(assert (=> bs!1116190 m!5663409))

(declare-fun m!5663411 () Bool)

(assert (=> bs!1116190 m!5663411))

(declare-fun m!5663413 () Bool)

(assert (=> bs!1116190 m!5663413))

(declare-fun m!5663415 () Bool)

(assert (=> bs!1116190 m!5663415))

(assert (=> b!4724387 d!1505122))

(declare-fun b!4725017 () Bool)

(declare-fun e!2946934 () Bool)

(declare-fun e!2946935 () Bool)

(assert (=> b!4725017 (= e!2946934 e!2946935)))

(declare-fun res!1999382 () Bool)

(assert (=> b!4725017 (=> (not res!1999382) (not e!2946935))))

(assert (=> b!4725017 (= res!1999382 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889366) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))))

(declare-fun call!330571 () Bool)

(declare-fun e!2946937 () List!52963)

(declare-fun bm!330566 () Bool)

(assert (=> bm!330566 (= call!330571 (contains!16188 e!2946937 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun c!806986 () Bool)

(declare-fun c!806985 () Bool)

(assert (=> bm!330566 (= c!806986 c!806985)))

(declare-fun d!1505124 () Bool)

(assert (=> d!1505124 e!2946934))

(declare-fun res!1999383 () Bool)

(assert (=> d!1505124 (=> res!1999383 e!2946934)))

(declare-fun e!2946932 () Bool)

(assert (=> d!1505124 (= res!1999383 e!2946932)))

(declare-fun res!1999381 () Bool)

(assert (=> d!1505124 (=> (not res!1999381) (not e!2946932))))

(declare-fun lt!1889943 () Bool)

(assert (=> d!1505124 (= res!1999381 (not lt!1889943))))

(declare-fun lt!1889945 () Bool)

(assert (=> d!1505124 (= lt!1889943 lt!1889945)))

(declare-fun lt!1889942 () Unit!130501)

(declare-fun e!2946933 () Unit!130501)

(assert (=> d!1505124 (= lt!1889942 e!2946933)))

(assert (=> d!1505124 (= c!806985 lt!1889945)))

(assert (=> d!1505124 (= lt!1889945 (containsKey!3379 (toList!5921 lt!1889366) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> d!1505124 (= (contains!16183 lt!1889366 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) lt!1889943)))

(declare-fun b!4725018 () Bool)

(assert (=> b!4725018 (= e!2946937 (keys!18978 lt!1889366))))

(declare-fun b!4725019 () Bool)

(assert (=> b!4725019 (= e!2946937 (getKeysList!953 (toList!5921 lt!1889366)))))

(declare-fun b!4725020 () Bool)

(declare-fun lt!1889947 () Unit!130501)

(assert (=> b!4725020 (= e!2946933 lt!1889947)))

(declare-fun lt!1889946 () Unit!130501)

(assert (=> b!4725020 (= lt!1889946 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889366) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> b!4725020 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889366) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun lt!1889944 () Unit!130501)

(assert (=> b!4725020 (= lt!1889944 lt!1889946)))

(assert (=> b!4725020 (= lt!1889947 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889366) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> b!4725020 call!330571))

(declare-fun b!4725021 () Bool)

(assert (=> b!4725021 (= e!2946932 (not (contains!16188 (keys!18978 lt!1889366) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))))

(declare-fun b!4725022 () Bool)

(assert (=> b!4725022 false))

(declare-fun lt!1889941 () Unit!130501)

(declare-fun lt!1889940 () Unit!130501)

(assert (=> b!4725022 (= lt!1889941 lt!1889940)))

(assert (=> b!4725022 (containsKey!3379 (toList!5921 lt!1889366) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(assert (=> b!4725022 (= lt!1889940 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889366) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun e!2946936 () Unit!130501)

(declare-fun Unit!130759 () Unit!130501)

(assert (=> b!4725022 (= e!2946936 Unit!130759)))

(declare-fun b!4725023 () Bool)

(assert (=> b!4725023 (= e!2946933 e!2946936)))

(declare-fun c!806987 () Bool)

(assert (=> b!4725023 (= c!806987 call!330571)))

(declare-fun b!4725024 () Bool)

(assert (=> b!4725024 (= e!2946935 (contains!16188 (keys!18978 lt!1889366) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun b!4725025 () Bool)

(declare-fun Unit!130760 () Unit!130501)

(assert (=> b!4725025 (= e!2946936 Unit!130760)))

(assert (= (and d!1505124 c!806985) b!4725020))

(assert (= (and d!1505124 (not c!806985)) b!4725023))

(assert (= (and b!4725023 c!806987) b!4725022))

(assert (= (and b!4725023 (not c!806987)) b!4725025))

(assert (= (or b!4725020 b!4725023) bm!330566))

(assert (= (and bm!330566 c!806986) b!4725019))

(assert (= (and bm!330566 (not c!806986)) b!4725018))

(assert (= (and d!1505124 res!1999381) b!4725021))

(assert (= (and d!1505124 (not res!1999383)) b!4725017))

(assert (= (and b!4725017 res!1999382) b!4725024))

(declare-fun m!5663417 () Bool)

(assert (=> b!4725018 m!5663417))

(assert (=> b!4725024 m!5663417))

(assert (=> b!4725024 m!5663417))

(declare-fun m!5663419 () Bool)

(assert (=> b!4725024 m!5663419))

(declare-fun m!5663421 () Bool)

(assert (=> b!4725017 m!5663421))

(assert (=> b!4725017 m!5663421))

(declare-fun m!5663423 () Bool)

(assert (=> b!4725017 m!5663423))

(declare-fun m!5663425 () Bool)

(assert (=> b!4725019 m!5663425))

(declare-fun m!5663427 () Bool)

(assert (=> d!1505124 m!5663427))

(declare-fun m!5663429 () Bool)

(assert (=> b!4725020 m!5663429))

(assert (=> b!4725020 m!5663421))

(assert (=> b!4725020 m!5663421))

(assert (=> b!4725020 m!5663423))

(declare-fun m!5663431 () Bool)

(assert (=> b!4725020 m!5663431))

(assert (=> b!4725021 m!5663417))

(assert (=> b!4725021 m!5663417))

(assert (=> b!4725021 m!5663419))

(declare-fun m!5663433 () Bool)

(assert (=> bm!330566 m!5663433))

(assert (=> b!4725022 m!5663427))

(declare-fun m!5663435 () Bool)

(assert (=> b!4725022 m!5663435))

(assert (=> b!4724387 d!1505124))

(assert (=> b!4724387 d!1504888))

(declare-fun d!1505126 () Bool)

(assert (=> d!1505126 (dynLambda!21825 lambda!215932 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))

(declare-fun lt!1889948 () Unit!130501)

(assert (=> d!1505126 (= lt!1889948 (choose!33346 (toList!5921 lt!1889366) lambda!215932 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(declare-fun e!2946938 () Bool)

(assert (=> d!1505126 e!2946938))

(declare-fun res!1999384 () Bool)

(assert (=> d!1505126 (=> (not res!1999384) (not e!2946938))))

(assert (=> d!1505126 (= res!1999384 (forall!11596 (toList!5921 lt!1889366) lambda!215932))))

(assert (=> d!1505126 (= (forallContained!3643 (toList!5921 lt!1889366) lambda!215932 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) lt!1889948)))

(declare-fun b!4725026 () Bool)

(assert (=> b!4725026 (= e!2946938 (contains!16186 (toList!5921 lt!1889366) (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(assert (= (and d!1505126 res!1999384) b!4725026))

(declare-fun b_lambda!179305 () Bool)

(assert (=> (not b_lambda!179305) (not d!1505126)))

(declare-fun m!5663437 () Bool)

(assert (=> d!1505126 m!5663437))

(declare-fun m!5663439 () Bool)

(assert (=> d!1505126 m!5663439))

(assert (=> d!1505126 m!5662131))

(declare-fun m!5663441 () Bool)

(assert (=> b!4725026 m!5663441))

(assert (=> b!4724387 d!1505126))

(declare-fun d!1505128 () Bool)

(declare-fun res!1999385 () Bool)

(declare-fun e!2946939 () Bool)

(assert (=> d!1505128 (=> res!1999385 e!2946939)))

(assert (=> d!1505128 (= res!1999385 ((_ is Nil!52836) (toList!5921 lt!1889366)))))

(assert (=> d!1505128 (= (forall!11596 (toList!5921 lt!1889366) lambda!215932) e!2946939)))

(declare-fun b!4725027 () Bool)

(declare-fun e!2946940 () Bool)

(assert (=> b!4725027 (= e!2946939 e!2946940)))

(declare-fun res!1999386 () Bool)

(assert (=> b!4725027 (=> (not res!1999386) (not e!2946940))))

(assert (=> b!4725027 (= res!1999386 (dynLambda!21825 lambda!215932 (h!59185 (toList!5921 lt!1889366))))))

(declare-fun b!4725028 () Bool)

(assert (=> b!4725028 (= e!2946940 (forall!11596 (t!360230 (toList!5921 lt!1889366)) lambda!215932))))

(assert (= (and d!1505128 (not res!1999385)) b!4725027))

(assert (= (and b!4725027 res!1999386) b!4725028))

(declare-fun b_lambda!179307 () Bool)

(assert (=> (not b_lambda!179307) (not b!4725027)))

(declare-fun m!5663443 () Bool)

(assert (=> b!4725027 m!5663443))

(declare-fun m!5663445 () Bool)

(assert (=> b!4725028 m!5663445))

(assert (=> b!4724387 d!1505128))

(declare-fun d!1505130 () Bool)

(declare-fun res!1999387 () Bool)

(declare-fun e!2946941 () Bool)

(assert (=> d!1505130 (=> res!1999387 e!2946941)))

(assert (=> d!1505130 (= res!1999387 ((_ is Nil!52836) (t!360230 (Cons!52836 lt!1889051 lt!1889050))))))

(assert (=> d!1505130 (= (forall!11596 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) lambda!215932) e!2946941)))

(declare-fun b!4725029 () Bool)

(declare-fun e!2946942 () Bool)

(assert (=> b!4725029 (= e!2946941 e!2946942)))

(declare-fun res!1999388 () Bool)

(assert (=> b!4725029 (=> (not res!1999388) (not e!2946942))))

(assert (=> b!4725029 (= res!1999388 (dynLambda!21825 lambda!215932 (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun b!4725030 () Bool)

(assert (=> b!4725030 (= e!2946942 (forall!11596 (t!360230 (t!360230 (Cons!52836 lt!1889051 lt!1889050))) lambda!215932))))

(assert (= (and d!1505130 (not res!1999387)) b!4725029))

(assert (= (and b!4725029 res!1999388) b!4725030))

(declare-fun b_lambda!179309 () Bool)

(assert (=> (not b_lambda!179309) (not b!4725029)))

(declare-fun m!5663447 () Bool)

(assert (=> b!4725029 m!5663447))

(declare-fun m!5663449 () Bool)

(assert (=> b!4725030 m!5663449))

(assert (=> b!4724387 d!1505130))

(declare-fun d!1505132 () Bool)

(declare-fun res!1999389 () Bool)

(declare-fun e!2946943 () Bool)

(assert (=> d!1505132 (=> res!1999389 e!2946943)))

(assert (=> d!1505132 (= res!1999389 ((_ is Nil!52836) (Cons!52836 lt!1889051 lt!1889050)))))

(assert (=> d!1505132 (= (forall!11596 (Cons!52836 lt!1889051 lt!1889050) lambda!215932) e!2946943)))

(declare-fun b!4725031 () Bool)

(declare-fun e!2946944 () Bool)

(assert (=> b!4725031 (= e!2946943 e!2946944)))

(declare-fun res!1999390 () Bool)

(assert (=> b!4725031 (=> (not res!1999390) (not e!2946944))))

(assert (=> b!4725031 (= res!1999390 (dynLambda!21825 lambda!215932 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(declare-fun b!4725032 () Bool)

(assert (=> b!4725032 (= e!2946944 (forall!11596 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) lambda!215932))))

(assert (= (and d!1505132 (not res!1999389)) b!4725031))

(assert (= (and b!4725031 res!1999390) b!4725032))

(declare-fun b_lambda!179311 () Bool)

(assert (=> (not b_lambda!179311) (not b!4725031)))

(assert (=> b!4725031 m!5663437))

(assert (=> b!4725032 m!5662141))

(assert (=> b!4724387 d!1505132))

(assert (=> b!4724426 d!1504998))

(assert (=> b!4724426 d!1504854))

(declare-fun d!1505134 () Bool)

(declare-fun res!1999391 () Bool)

(declare-fun e!2946945 () Bool)

(assert (=> d!1505134 (=> res!1999391 e!2946945)))

(assert (=> d!1505134 (= res!1999391 (not ((_ is Cons!52836) (t!360230 oldBucket!34))))))

(assert (=> d!1505134 (= (noDuplicateKeys!2016 (t!360230 oldBucket!34)) e!2946945)))

(declare-fun b!4725033 () Bool)

(declare-fun e!2946946 () Bool)

(assert (=> b!4725033 (= e!2946945 e!2946946)))

(declare-fun res!1999392 () Bool)

(assert (=> b!4725033 (=> (not res!1999392) (not e!2946946))))

(assert (=> b!4725033 (= res!1999392 (not (containsKey!3375 (t!360230 (t!360230 oldBucket!34)) (_1!30523 (h!59185 (t!360230 oldBucket!34))))))))

(declare-fun b!4725034 () Bool)

(assert (=> b!4725034 (= e!2946946 (noDuplicateKeys!2016 (t!360230 (t!360230 oldBucket!34))))))

(assert (= (and d!1505134 (not res!1999391)) b!4725033))

(assert (= (and b!4725033 res!1999392) b!4725034))

(declare-fun m!5663451 () Bool)

(assert (=> b!4725033 m!5663451))

(declare-fun m!5663453 () Bool)

(assert (=> b!4725034 m!5663453))

(assert (=> b!4724220 d!1505134))

(declare-fun d!1505136 () Bool)

(declare-fun res!1999393 () Bool)

(declare-fun e!2946947 () Bool)

(assert (=> d!1505136 (=> res!1999393 e!2946947)))

(assert (=> d!1505136 (= res!1999393 ((_ is Nil!52837) (toList!5922 lm!2023)))))

(assert (=> d!1505136 (= (forall!11594 (toList!5922 lm!2023) lambda!215825) e!2946947)))

(declare-fun b!4725035 () Bool)

(declare-fun e!2946948 () Bool)

(assert (=> b!4725035 (= e!2946947 e!2946948)))

(declare-fun res!1999394 () Bool)

(assert (=> b!4725035 (=> (not res!1999394) (not e!2946948))))

(assert (=> b!4725035 (= res!1999394 (dynLambda!21823 lambda!215825 (h!59186 (toList!5922 lm!2023))))))

(declare-fun b!4725036 () Bool)

(assert (=> b!4725036 (= e!2946948 (forall!11594 (t!360231 (toList!5922 lm!2023)) lambda!215825))))

(assert (= (and d!1505136 (not res!1999393)) b!4725035))

(assert (= (and b!4725035 res!1999394) b!4725036))

(declare-fun b_lambda!179313 () Bool)

(assert (=> (not b_lambda!179313) (not b!4725035)))

(declare-fun m!5663455 () Bool)

(assert (=> b!4725035 m!5663455))

(declare-fun m!5663457 () Bool)

(assert (=> b!4725036 m!5663457))

(assert (=> d!1504696 d!1505136))

(declare-fun bs!1116191 () Bool)

(declare-fun b!4725040 () Bool)

(assert (= bs!1116191 (and b!4725040 b!4724511)))

(declare-fun lambda!216046 () Int)

(assert (=> bs!1116191 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216046 lambda!215957))))

(declare-fun bs!1116192 () Bool)

(assert (= bs!1116192 (and b!4725040 b!4724389)))

(assert (=> bs!1116192 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215930))))

(declare-fun bs!1116193 () Bool)

(assert (= bs!1116193 (and b!4725040 d!1504826)))

(assert (=> bs!1116193 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889434) (= lambda!216046 lambda!215942))))

(declare-fun bs!1116194 () Bool)

(assert (= bs!1116194 (and b!4725040 b!4724318)))

(assert (=> bs!1116194 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215920))))

(declare-fun bs!1116195 () Bool)

(assert (= bs!1116195 (and b!4725040 d!1504828)))

(assert (=> bs!1116195 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889455) (= lambda!216046 lambda!215946))))

(declare-fun bs!1116196 () Bool)

(assert (= bs!1116196 (and b!4725040 b!4724434)))

(assert (=> bs!1116196 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215940))))

(declare-fun bs!1116197 () Bool)

(assert (= bs!1116197 (and b!4725040 d!1504812)))

(assert (=> bs!1116197 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889351) (= lambda!216046 lambda!215933))))

(declare-fun bs!1116198 () Bool)

(assert (= bs!1116198 (and b!4725040 b!4724513)))

(assert (=> bs!1116198 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216046 lambda!215956))))

(declare-fun bs!1116199 () Bool)

(assert (= bs!1116199 (and b!4725040 b!4724558)))

(assert (=> bs!1116199 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216046 lambda!215973))))

(declare-fun bs!1116200 () Bool)

(assert (= bs!1116200 (and b!4725040 b!4724556)))

(assert (=> bs!1116200 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216046 lambda!215975))))

(declare-fun bs!1116201 () Bool)

(assert (= bs!1116201 (and b!4725040 d!1504918)))

(assert (=> bs!1116201 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889607) (= lambda!216046 lambda!215994))))

(declare-fun bs!1116202 () Bool)

(assert (= bs!1116202 (and b!4725040 d!1504728)))

(assert (=> bs!1116202 (not (= lambda!216046 lambda!215834))))

(declare-fun bs!1116203 () Bool)

(assert (= bs!1116203 (and b!4725040 b!4724387)))

(assert (=> bs!1116203 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215931))))

(declare-fun bs!1116204 () Bool)

(assert (= bs!1116204 (and b!4725040 d!1504898)))

(assert (=> bs!1116204 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889569) (= lambda!216046 lambda!215977))))

(declare-fun bs!1116205 () Bool)

(assert (= bs!1116205 (and b!4725040 b!4724656)))

(assert (=> bs!1116205 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216046 lambda!216002))))

(assert (=> bs!1116205 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889688) (= lambda!216046 lambda!216003))))

(assert (=> bs!1116191 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889503) (= lambda!216046 lambda!215958))))

(declare-fun bs!1116206 () Bool)

(assert (= bs!1116206 (and b!4725040 d!1504946)))

(assert (=> bs!1116206 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889678) (= lambda!216046 lambda!216005))))

(assert (=> bs!1116200 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889579) (= lambda!216046 lambda!215976))))

(declare-fun bs!1116207 () Bool)

(assert (= bs!1116207 (and b!4725040 b!4724591)))

(assert (=> bs!1116207 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216046 lambda!215982))))

(declare-fun bs!1116208 () Bool)

(assert (= bs!1116208 (and b!4725040 d!1504878)))

(assert (=> bs!1116208 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889398) (= lambda!216046 lambda!215970))))

(declare-fun bs!1116209 () Bool)

(assert (= bs!1116209 (and b!4725040 b!4724985)))

(assert (=> bs!1116209 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216046 lambda!216042))))

(declare-fun bs!1116210 () Bool)

(assert (= bs!1116210 (and b!4725040 d!1505120)))

(assert (=> bs!1116210 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889896) (= lambda!216046 lambda!216044))))

(declare-fun bs!1116211 () Bool)

(assert (= bs!1116211 (and b!4725040 b!4724402)))

(assert (=> bs!1116211 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215934))))

(declare-fun bs!1116212 () Bool)

(assert (= bs!1116212 (and b!4725040 d!1504864)))

(assert (=> bs!1116212 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889493) (= lambda!216046 lambda!215959))))

(declare-fun bs!1116213 () Bool)

(assert (= bs!1116213 (and b!4725040 b!4724658)))

(assert (=> bs!1116213 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216046 lambda!216000))))

(assert (=> bs!1116203 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889361) (= lambda!216046 lambda!215932))))

(declare-fun bs!1116214 () Bool)

(assert (= bs!1116214 (and b!4725040 b!4724441)))

(assert (=> bs!1116214 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215943))))

(assert (=> bs!1116207 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889617) (= lambda!216046 lambda!215989))))

(declare-fun bs!1116215 () Bool)

(assert (= bs!1116215 (and b!4725040 b!4724436)))

(assert (=> bs!1116215 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215939))))

(declare-fun bs!1116216 () Bool)

(assert (= bs!1116216 (and b!4725040 d!1504820)))

(assert (=> bs!1116216 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889388) (= lambda!216046 lambda!215937))))

(declare-fun bs!1116217 () Bool)

(assert (= bs!1116217 (and b!4725040 b!4724320)))

(assert (=> bs!1116217 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215918))))

(declare-fun bs!1116218 () Bool)

(assert (= bs!1116218 (and b!4725040 b!4724400)))

(assert (=> bs!1116218 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889398) (= lambda!216046 lambda!215936))))

(declare-fun bs!1116219 () Bool)

(assert (= bs!1116219 (and b!4725040 b!4724987)))

(assert (=> bs!1116219 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216046 lambda!216041))))

(declare-fun bs!1116220 () Bool)

(assert (= bs!1116220 (and b!4725040 d!1504736)))

(assert (=> bs!1116220 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889297) (= lambda!216046 lambda!215923))))

(assert (=> bs!1116194 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889307) (= lambda!216046 lambda!215922))))

(declare-fun bs!1116221 () Bool)

(assert (= bs!1116221 (and b!4725040 b!4724593)))

(assert (=> bs!1116221 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216046 lambda!215979))))

(declare-fun bs!1116222 () Bool)

(assert (= bs!1116222 (and b!4725040 d!1504846)))

(assert (=> bs!1116222 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215949))))

(declare-fun bs!1116223 () Bool)

(assert (= bs!1116223 (and b!4725040 b!4724439)))

(assert (=> bs!1116223 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889465) (= lambda!216046 lambda!215945))))

(declare-fun bs!1116224 () Bool)

(assert (= bs!1116224 (and b!4725040 d!1505122)))

(assert (=> bs!1116224 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889361) (= lambda!216046 lambda!216045))))

(assert (=> bs!1116209 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889906) (= lambda!216046 lambda!216043))))

(assert (=> bs!1116223 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215944))))

(assert (=> bs!1116196 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889444) (= lambda!216046 lambda!215941))))

(assert (=> bs!1116218 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216046 lambda!215935))))

(declare-fun bs!1116225 () Bool)

(assert (= bs!1116225 (and b!4725040 d!1504730)))

(assert (=> bs!1116225 (not (= lambda!216046 lambda!215835))))

(assert (=> b!4725040 true))

(declare-fun bs!1116226 () Bool)

(declare-fun b!4725038 () Bool)

(assert (= bs!1116226 (and b!4725038 b!4724511)))

(declare-fun lambda!216047 () Int)

(assert (=> bs!1116226 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216047 lambda!215957))))

(declare-fun bs!1116227 () Bool)

(assert (= bs!1116227 (and b!4725038 b!4724389)))

(assert (=> bs!1116227 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215930))))

(declare-fun bs!1116228 () Bool)

(assert (= bs!1116228 (and b!4725038 d!1504826)))

(assert (=> bs!1116228 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889434) (= lambda!216047 lambda!215942))))

(declare-fun bs!1116229 () Bool)

(assert (= bs!1116229 (and b!4725038 b!4724318)))

(assert (=> bs!1116229 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215920))))

(declare-fun bs!1116230 () Bool)

(assert (= bs!1116230 (and b!4725038 d!1504828)))

(assert (=> bs!1116230 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889455) (= lambda!216047 lambda!215946))))

(declare-fun bs!1116231 () Bool)

(assert (= bs!1116231 (and b!4725038 b!4724434)))

(assert (=> bs!1116231 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215940))))

(declare-fun bs!1116232 () Bool)

(assert (= bs!1116232 (and b!4725038 d!1504812)))

(assert (=> bs!1116232 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889351) (= lambda!216047 lambda!215933))))

(declare-fun bs!1116233 () Bool)

(assert (= bs!1116233 (and b!4725038 b!4724513)))

(assert (=> bs!1116233 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216047 lambda!215956))))

(declare-fun bs!1116234 () Bool)

(assert (= bs!1116234 (and b!4725038 b!4724558)))

(assert (=> bs!1116234 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216047 lambda!215973))))

(declare-fun bs!1116235 () Bool)

(assert (= bs!1116235 (and b!4725038 b!4724556)))

(assert (=> bs!1116235 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216047 lambda!215975))))

(declare-fun bs!1116236 () Bool)

(assert (= bs!1116236 (and b!4725038 d!1504918)))

(assert (=> bs!1116236 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889607) (= lambda!216047 lambda!215994))))

(declare-fun bs!1116237 () Bool)

(assert (= bs!1116237 (and b!4725038 d!1504728)))

(assert (=> bs!1116237 (not (= lambda!216047 lambda!215834))))

(declare-fun bs!1116238 () Bool)

(assert (= bs!1116238 (and b!4725038 b!4724387)))

(assert (=> bs!1116238 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215931))))

(declare-fun bs!1116240 () Bool)

(assert (= bs!1116240 (and b!4725038 d!1504898)))

(assert (=> bs!1116240 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889569) (= lambda!216047 lambda!215977))))

(declare-fun bs!1116242 () Bool)

(assert (= bs!1116242 (and b!4725038 b!4724656)))

(assert (=> bs!1116242 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216047 lambda!216002))))

(assert (=> bs!1116242 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889688) (= lambda!216047 lambda!216003))))

(assert (=> bs!1116226 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889503) (= lambda!216047 lambda!215958))))

(declare-fun bs!1116243 () Bool)

(assert (= bs!1116243 (and b!4725038 d!1504946)))

(assert (=> bs!1116243 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889678) (= lambda!216047 lambda!216005))))

(assert (=> bs!1116235 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889579) (= lambda!216047 lambda!215976))))

(declare-fun bs!1116244 () Bool)

(assert (= bs!1116244 (and b!4725038 b!4724591)))

(assert (=> bs!1116244 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216047 lambda!215982))))

(declare-fun bs!1116245 () Bool)

(assert (= bs!1116245 (and b!4725038 d!1504878)))

(assert (=> bs!1116245 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889398) (= lambda!216047 lambda!215970))))

(declare-fun bs!1116246 () Bool)

(assert (= bs!1116246 (and b!4725038 b!4724985)))

(assert (=> bs!1116246 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216047 lambda!216042))))

(declare-fun bs!1116247 () Bool)

(assert (= bs!1116247 (and b!4725038 d!1505120)))

(assert (=> bs!1116247 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889896) (= lambda!216047 lambda!216044))))

(declare-fun bs!1116248 () Bool)

(assert (= bs!1116248 (and b!4725038 b!4724402)))

(assert (=> bs!1116248 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215934))))

(declare-fun bs!1116249 () Bool)

(assert (= bs!1116249 (and b!4725038 d!1504864)))

(assert (=> bs!1116249 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889493) (= lambda!216047 lambda!215959))))

(declare-fun bs!1116250 () Bool)

(assert (= bs!1116250 (and b!4725038 b!4724658)))

(assert (=> bs!1116250 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216047 lambda!216000))))

(assert (=> bs!1116238 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889361) (= lambda!216047 lambda!215932))))

(declare-fun bs!1116251 () Bool)

(assert (= bs!1116251 (and b!4725038 b!4724441)))

(assert (=> bs!1116251 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215943))))

(assert (=> bs!1116244 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889617) (= lambda!216047 lambda!215989))))

(declare-fun bs!1116252 () Bool)

(assert (= bs!1116252 (and b!4725038 b!4725040)))

(assert (=> bs!1116252 (= lambda!216047 lambda!216046)))

(declare-fun bs!1116253 () Bool)

(assert (= bs!1116253 (and b!4725038 b!4724436)))

(assert (=> bs!1116253 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215939))))

(declare-fun bs!1116254 () Bool)

(assert (= bs!1116254 (and b!4725038 d!1504820)))

(assert (=> bs!1116254 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889388) (= lambda!216047 lambda!215937))))

(declare-fun bs!1116255 () Bool)

(assert (= bs!1116255 (and b!4725038 b!4724320)))

(assert (=> bs!1116255 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215918))))

(declare-fun bs!1116256 () Bool)

(assert (= bs!1116256 (and b!4725038 b!4724400)))

(assert (=> bs!1116256 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889398) (= lambda!216047 lambda!215936))))

(declare-fun bs!1116257 () Bool)

(assert (= bs!1116257 (and b!4725038 b!4724987)))

(assert (=> bs!1116257 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216047 lambda!216041))))

(declare-fun bs!1116258 () Bool)

(assert (= bs!1116258 (and b!4725038 d!1504736)))

(assert (=> bs!1116258 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889297) (= lambda!216047 lambda!215923))))

(assert (=> bs!1116229 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889307) (= lambda!216047 lambda!215922))))

(declare-fun bs!1116259 () Bool)

(assert (= bs!1116259 (and b!4725038 b!4724593)))

(assert (=> bs!1116259 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216047 lambda!215979))))

(declare-fun bs!1116260 () Bool)

(assert (= bs!1116260 (and b!4725038 d!1504846)))

(assert (=> bs!1116260 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215949))))

(declare-fun bs!1116261 () Bool)

(assert (= bs!1116261 (and b!4725038 b!4724439)))

(assert (=> bs!1116261 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889465) (= lambda!216047 lambda!215945))))

(declare-fun bs!1116262 () Bool)

(assert (= bs!1116262 (and b!4725038 d!1505122)))

(assert (=> bs!1116262 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889361) (= lambda!216047 lambda!216045))))

(assert (=> bs!1116246 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889906) (= lambda!216047 lambda!216043))))

(assert (=> bs!1116261 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215944))))

(assert (=> bs!1116231 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889444) (= lambda!216047 lambda!215941))))

(assert (=> bs!1116256 (= (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216047 lambda!215935))))

(declare-fun bs!1116263 () Bool)

(assert (= bs!1116263 (and b!4725038 d!1504730)))

(assert (=> bs!1116263 (not (= lambda!216047 lambda!215835))))

(assert (=> b!4725038 true))

(declare-fun lt!1889959 () ListMap!5285)

(declare-fun lambda!216048 () Int)

(assert (=> bs!1116226 (= (= lt!1889959 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216048 lambda!215957))))

(assert (=> bs!1116227 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215930))))

(assert (=> bs!1116228 (= (= lt!1889959 lt!1889434) (= lambda!216048 lambda!215942))))

(assert (=> bs!1116229 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215920))))

(assert (=> bs!1116230 (= (= lt!1889959 lt!1889455) (= lambda!216048 lambda!215946))))

(assert (=> bs!1116231 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215940))))

(assert (=> bs!1116232 (= (= lt!1889959 lt!1889351) (= lambda!216048 lambda!215933))))

(assert (=> bs!1116233 (= (= lt!1889959 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216048 lambda!215956))))

(assert (=> bs!1116234 (= (= lt!1889959 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216048 lambda!215973))))

(assert (=> bs!1116235 (= (= lt!1889959 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216048 lambda!215975))))

(assert (=> bs!1116236 (= (= lt!1889959 lt!1889607) (= lambda!216048 lambda!215994))))

(assert (=> bs!1116237 (not (= lambda!216048 lambda!215834))))

(assert (=> bs!1116238 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215931))))

(assert (=> bs!1116240 (= (= lt!1889959 lt!1889569) (= lambda!216048 lambda!215977))))

(assert (=> bs!1116242 (= (= lt!1889959 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216048 lambda!216002))))

(assert (=> bs!1116242 (= (= lt!1889959 lt!1889688) (= lambda!216048 lambda!216003))))

(assert (=> bs!1116226 (= (= lt!1889959 lt!1889503) (= lambda!216048 lambda!215958))))

(assert (=> bs!1116243 (= (= lt!1889959 lt!1889678) (= lambda!216048 lambda!216005))))

(assert (=> bs!1116235 (= (= lt!1889959 lt!1889579) (= lambda!216048 lambda!215976))))

(assert (=> bs!1116244 (= (= lt!1889959 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216048 lambda!215982))))

(assert (=> bs!1116245 (= (= lt!1889959 lt!1889398) (= lambda!216048 lambda!215970))))

(assert (=> bs!1116246 (= (= lt!1889959 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216048 lambda!216042))))

(assert (=> bs!1116247 (= (= lt!1889959 lt!1889896) (= lambda!216048 lambda!216044))))

(assert (=> bs!1116248 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215934))))

(assert (=> bs!1116249 (= (= lt!1889959 lt!1889493) (= lambda!216048 lambda!215959))))

(assert (=> bs!1116250 (= (= lt!1889959 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216048 lambda!216000))))

(assert (=> bs!1116238 (= (= lt!1889959 lt!1889361) (= lambda!216048 lambda!215932))))

(assert (=> bs!1116251 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215943))))

(assert (=> bs!1116244 (= (= lt!1889959 lt!1889617) (= lambda!216048 lambda!215989))))

(assert (=> bs!1116252 (= (= lt!1889959 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216048 lambda!216046))))

(assert (=> bs!1116253 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215939))))

(assert (=> bs!1116254 (= (= lt!1889959 lt!1889388) (= lambda!216048 lambda!215937))))

(assert (=> bs!1116255 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215918))))

(assert (=> bs!1116256 (= (= lt!1889959 lt!1889398) (= lambda!216048 lambda!215936))))

(assert (=> bs!1116257 (= (= lt!1889959 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216048 lambda!216041))))

(assert (=> b!4725038 (= (= lt!1889959 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216048 lambda!216047))))

(assert (=> bs!1116258 (= (= lt!1889959 lt!1889297) (= lambda!216048 lambda!215923))))

(assert (=> bs!1116229 (= (= lt!1889959 lt!1889307) (= lambda!216048 lambda!215922))))

(assert (=> bs!1116259 (= (= lt!1889959 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216048 lambda!215979))))

(assert (=> bs!1116260 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215949))))

(assert (=> bs!1116261 (= (= lt!1889959 lt!1889465) (= lambda!216048 lambda!215945))))

(assert (=> bs!1116262 (= (= lt!1889959 lt!1889361) (= lambda!216048 lambda!216045))))

(assert (=> bs!1116246 (= (= lt!1889959 lt!1889906) (= lambda!216048 lambda!216043))))

(assert (=> bs!1116261 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215944))))

(assert (=> bs!1116231 (= (= lt!1889959 lt!1889444) (= lambda!216048 lambda!215941))))

(assert (=> bs!1116256 (= (= lt!1889959 lt!1889044) (= lambda!216048 lambda!215935))))

(assert (=> bs!1116263 (not (= lambda!216048 lambda!215835))))

(assert (=> b!4725038 true))

(declare-fun bs!1116265 () Bool)

(declare-fun d!1505138 () Bool)

(assert (= bs!1116265 (and d!1505138 b!4724511)))

(declare-fun lambda!216049 () Int)

(declare-fun lt!1889949 () ListMap!5285)

(assert (=> bs!1116265 (= (= lt!1889949 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216049 lambda!215957))))

(declare-fun bs!1116266 () Bool)

(assert (= bs!1116266 (and d!1505138 b!4724389)))

(assert (=> bs!1116266 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215930))))

(declare-fun bs!1116267 () Bool)

(assert (= bs!1116267 (and d!1505138 d!1504826)))

(assert (=> bs!1116267 (= (= lt!1889949 lt!1889434) (= lambda!216049 lambda!215942))))

(declare-fun bs!1116268 () Bool)

(assert (= bs!1116268 (and d!1505138 b!4724318)))

(assert (=> bs!1116268 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215920))))

(declare-fun bs!1116269 () Bool)

(assert (= bs!1116269 (and d!1505138 d!1504828)))

(assert (=> bs!1116269 (= (= lt!1889949 lt!1889455) (= lambda!216049 lambda!215946))))

(declare-fun bs!1116270 () Bool)

(assert (= bs!1116270 (and d!1505138 b!4724434)))

(assert (=> bs!1116270 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215940))))

(declare-fun bs!1116271 () Bool)

(assert (= bs!1116271 (and d!1505138 d!1504812)))

(assert (=> bs!1116271 (= (= lt!1889949 lt!1889351) (= lambda!216049 lambda!215933))))

(declare-fun bs!1116272 () Bool)

(assert (= bs!1116272 (and d!1505138 b!4724513)))

(assert (=> bs!1116272 (= (= lt!1889949 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216049 lambda!215956))))

(declare-fun bs!1116273 () Bool)

(assert (= bs!1116273 (and d!1505138 b!4724558)))

(assert (=> bs!1116273 (= (= lt!1889949 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216049 lambda!215973))))

(declare-fun bs!1116274 () Bool)

(assert (= bs!1116274 (and d!1505138 d!1504918)))

(assert (=> bs!1116274 (= (= lt!1889949 lt!1889607) (= lambda!216049 lambda!215994))))

(declare-fun bs!1116275 () Bool)

(assert (= bs!1116275 (and d!1505138 d!1504728)))

(assert (=> bs!1116275 (not (= lambda!216049 lambda!215834))))

(declare-fun bs!1116276 () Bool)

(assert (= bs!1116276 (and d!1505138 b!4724387)))

(assert (=> bs!1116276 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215931))))

(declare-fun bs!1116277 () Bool)

(assert (= bs!1116277 (and d!1505138 d!1504898)))

(assert (=> bs!1116277 (= (= lt!1889949 lt!1889569) (= lambda!216049 lambda!215977))))

(declare-fun bs!1116278 () Bool)

(assert (= bs!1116278 (and d!1505138 b!4724656)))

(assert (=> bs!1116278 (= (= lt!1889949 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216049 lambda!216002))))

(assert (=> bs!1116278 (= (= lt!1889949 lt!1889688) (= lambda!216049 lambda!216003))))

(assert (=> bs!1116265 (= (= lt!1889949 lt!1889503) (= lambda!216049 lambda!215958))))

(declare-fun bs!1116279 () Bool)

(assert (= bs!1116279 (and d!1505138 d!1504946)))

(assert (=> bs!1116279 (= (= lt!1889949 lt!1889678) (= lambda!216049 lambda!216005))))

(declare-fun bs!1116280 () Bool)

(assert (= bs!1116280 (and d!1505138 b!4724556)))

(assert (=> bs!1116280 (= (= lt!1889949 lt!1889579) (= lambda!216049 lambda!215976))))

(declare-fun bs!1116281 () Bool)

(assert (= bs!1116281 (and d!1505138 b!4724591)))

(assert (=> bs!1116281 (= (= lt!1889949 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216049 lambda!215982))))

(declare-fun bs!1116282 () Bool)

(assert (= bs!1116282 (and d!1505138 d!1504878)))

(assert (=> bs!1116282 (= (= lt!1889949 lt!1889398) (= lambda!216049 lambda!215970))))

(declare-fun bs!1116283 () Bool)

(assert (= bs!1116283 (and d!1505138 b!4724985)))

(assert (=> bs!1116283 (= (= lt!1889949 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216049 lambda!216042))))

(declare-fun bs!1116284 () Bool)

(assert (= bs!1116284 (and d!1505138 d!1505120)))

(assert (=> bs!1116284 (= (= lt!1889949 lt!1889896) (= lambda!216049 lambda!216044))))

(declare-fun bs!1116285 () Bool)

(assert (= bs!1116285 (and d!1505138 b!4724402)))

(assert (=> bs!1116285 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215934))))

(assert (=> bs!1116280 (= (= lt!1889949 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216049 lambda!215975))))

(declare-fun bs!1116286 () Bool)

(assert (= bs!1116286 (and d!1505138 b!4725038)))

(assert (=> bs!1116286 (= (= lt!1889949 lt!1889959) (= lambda!216049 lambda!216048))))

(declare-fun bs!1116287 () Bool)

(assert (= bs!1116287 (and d!1505138 d!1504864)))

(assert (=> bs!1116287 (= (= lt!1889949 lt!1889493) (= lambda!216049 lambda!215959))))

(declare-fun bs!1116288 () Bool)

(assert (= bs!1116288 (and d!1505138 b!4724658)))

(assert (=> bs!1116288 (= (= lt!1889949 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216049 lambda!216000))))

(assert (=> bs!1116276 (= (= lt!1889949 lt!1889361) (= lambda!216049 lambda!215932))))

(declare-fun bs!1116289 () Bool)

(assert (= bs!1116289 (and d!1505138 b!4724441)))

(assert (=> bs!1116289 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215943))))

(assert (=> bs!1116281 (= (= lt!1889949 lt!1889617) (= lambda!216049 lambda!215989))))

(declare-fun bs!1116291 () Bool)

(assert (= bs!1116291 (and d!1505138 b!4725040)))

(assert (=> bs!1116291 (= (= lt!1889949 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216049 lambda!216046))))

(declare-fun bs!1116292 () Bool)

(assert (= bs!1116292 (and d!1505138 b!4724436)))

(assert (=> bs!1116292 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215939))))

(declare-fun bs!1116293 () Bool)

(assert (= bs!1116293 (and d!1505138 d!1504820)))

(assert (=> bs!1116293 (= (= lt!1889949 lt!1889388) (= lambda!216049 lambda!215937))))

(declare-fun bs!1116294 () Bool)

(assert (= bs!1116294 (and d!1505138 b!4724320)))

(assert (=> bs!1116294 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215918))))

(declare-fun bs!1116295 () Bool)

(assert (= bs!1116295 (and d!1505138 b!4724400)))

(assert (=> bs!1116295 (= (= lt!1889949 lt!1889398) (= lambda!216049 lambda!215936))))

(declare-fun bs!1116296 () Bool)

(assert (= bs!1116296 (and d!1505138 b!4724987)))

(assert (=> bs!1116296 (= (= lt!1889949 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216049 lambda!216041))))

(assert (=> bs!1116286 (= (= lt!1889949 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216049 lambda!216047))))

(declare-fun bs!1116297 () Bool)

(assert (= bs!1116297 (and d!1505138 d!1504736)))

(assert (=> bs!1116297 (= (= lt!1889949 lt!1889297) (= lambda!216049 lambda!215923))))

(assert (=> bs!1116268 (= (= lt!1889949 lt!1889307) (= lambda!216049 lambda!215922))))

(declare-fun bs!1116298 () Bool)

(assert (= bs!1116298 (and d!1505138 b!4724593)))

(assert (=> bs!1116298 (= (= lt!1889949 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216049 lambda!215979))))

(declare-fun bs!1116299 () Bool)

(assert (= bs!1116299 (and d!1505138 d!1504846)))

(assert (=> bs!1116299 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215949))))

(declare-fun bs!1116300 () Bool)

(assert (= bs!1116300 (and d!1505138 b!4724439)))

(assert (=> bs!1116300 (= (= lt!1889949 lt!1889465) (= lambda!216049 lambda!215945))))

(declare-fun bs!1116301 () Bool)

(assert (= bs!1116301 (and d!1505138 d!1505122)))

(assert (=> bs!1116301 (= (= lt!1889949 lt!1889361) (= lambda!216049 lambda!216045))))

(assert (=> bs!1116283 (= (= lt!1889949 lt!1889906) (= lambda!216049 lambda!216043))))

(assert (=> bs!1116300 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215944))))

(assert (=> bs!1116270 (= (= lt!1889949 lt!1889444) (= lambda!216049 lambda!215941))))

(assert (=> bs!1116295 (= (= lt!1889949 lt!1889044) (= lambda!216049 lambda!215935))))

(declare-fun bs!1116302 () Bool)

(assert (= bs!1116302 (and d!1505138 d!1504730)))

(assert (=> bs!1116302 (not (= lambda!216049 lambda!215835))))

(assert (=> d!1505138 true))

(declare-fun bm!330567 () Bool)

(declare-fun call!330572 () Unit!130501)

(assert (=> bm!330567 (= call!330572 (lemmaContainsAllItsOwnKeys!799 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))))))

(declare-fun e!2946949 () Bool)

(declare-fun b!4725037 () Bool)

(assert (=> b!4725037 (= e!2946949 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) lambda!216048))))

(declare-fun b!4725039 () Bool)

(declare-fun e!2946950 () Bool)

(assert (=> b!4725039 (= e!2946950 (invariantList!1513 (toList!5921 lt!1889949)))))

(declare-fun e!2946951 () ListMap!5285)

(assert (=> b!4725040 (= e!2946951 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))))

(declare-fun lt!1889952 () Unit!130501)

(assert (=> b!4725040 (= lt!1889952 call!330572)))

(declare-fun call!330574 () Bool)

(assert (=> b!4725040 call!330574))

(declare-fun lt!1889966 () Unit!130501)

(assert (=> b!4725040 (= lt!1889966 lt!1889952)))

(declare-fun call!330573 () Bool)

(assert (=> b!4725040 call!330573))

(declare-fun lt!1889965 () Unit!130501)

(declare-fun Unit!130765 () Unit!130501)

(assert (=> b!4725040 (= lt!1889965 Unit!130765)))

(declare-fun b!4725041 () Bool)

(declare-fun res!1999395 () Bool)

(assert (=> b!4725041 (=> (not res!1999395) (not e!2946950))))

(assert (=> b!4725041 (= res!1999395 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) lambda!216049))))

(declare-fun lt!1889964 () ListMap!5285)

(declare-fun c!806988 () Bool)

(declare-fun bm!330568 () Bool)

(assert (=> bm!330568 (= call!330574 (forall!11596 (ite c!806988 (toList!5921 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (toList!5921 lt!1889964)) (ite c!806988 lambda!216046 lambda!216048)))))

(declare-fun bm!330569 () Bool)

(assert (=> bm!330569 (= call!330573 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (ite c!806988 lambda!216046 lambda!216047)))))

(assert (=> d!1505138 e!2946950))

(declare-fun res!1999397 () Bool)

(assert (=> d!1505138 (=> (not res!1999397) (not e!2946950))))

(assert (=> d!1505138 (= res!1999397 (forall!11596 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lambda!216049))))

(assert (=> d!1505138 (= lt!1889949 e!2946951)))

(assert (=> d!1505138 (= c!806988 ((_ is Nil!52836) (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))))))

(assert (=> d!1505138 (noDuplicateKeys!2016 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))))

(assert (=> d!1505138 (= (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) lt!1889949)))

(assert (=> b!4725038 (= e!2946951 lt!1889959)))

(assert (=> b!4725038 (= lt!1889964 (+!2271 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (h!59185 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))))))

(assert (=> b!4725038 (= lt!1889959 (addToMapMapFromBucket!1446 (t!360230 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (+!2271 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (h!59185 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))))))))

(declare-fun lt!1889968 () Unit!130501)

(assert (=> b!4725038 (= lt!1889968 call!330572)))

(assert (=> b!4725038 call!330573))

(declare-fun lt!1889967 () Unit!130501)

(assert (=> b!4725038 (= lt!1889967 lt!1889968)))

(assert (=> b!4725038 call!330574))

(declare-fun lt!1889954 () Unit!130501)

(declare-fun Unit!130766 () Unit!130501)

(assert (=> b!4725038 (= lt!1889954 Unit!130766)))

(assert (=> b!4725038 (forall!11596 (t!360230 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) lambda!216048)))

(declare-fun lt!1889960 () Unit!130501)

(declare-fun Unit!130767 () Unit!130501)

(assert (=> b!4725038 (= lt!1889960 Unit!130767)))

(declare-fun lt!1889955 () Unit!130501)

(declare-fun Unit!130768 () Unit!130501)

(assert (=> b!4725038 (= lt!1889955 Unit!130768)))

(declare-fun lt!1889958 () Unit!130501)

(assert (=> b!4725038 (= lt!1889958 (forallContained!3643 (toList!5921 lt!1889964) lambda!216048 (h!59185 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))))))

(assert (=> b!4725038 (contains!16183 lt!1889964 (_1!30523 (h!59185 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))))))

(declare-fun lt!1889957 () Unit!130501)

(declare-fun Unit!130769 () Unit!130501)

(assert (=> b!4725038 (= lt!1889957 Unit!130769)))

(assert (=> b!4725038 (contains!16183 lt!1889959 (_1!30523 (h!59185 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))))))

(declare-fun lt!1889950 () Unit!130501)

(declare-fun Unit!130770 () Unit!130501)

(assert (=> b!4725038 (= lt!1889950 Unit!130770)))

(assert (=> b!4725038 (forall!11596 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lambda!216048)))

(declare-fun lt!1889951 () Unit!130501)

(declare-fun Unit!130771 () Unit!130501)

(assert (=> b!4725038 (= lt!1889951 Unit!130771)))

(assert (=> b!4725038 (forall!11596 (toList!5921 lt!1889964) lambda!216048)))

(declare-fun lt!1889962 () Unit!130501)

(declare-fun Unit!130772 () Unit!130501)

(assert (=> b!4725038 (= lt!1889962 Unit!130772)))

(declare-fun lt!1889956 () Unit!130501)

(declare-fun Unit!130773 () Unit!130501)

(assert (=> b!4725038 (= lt!1889956 Unit!130773)))

(declare-fun lt!1889963 () Unit!130501)

(assert (=> b!4725038 (= lt!1889963 (addForallContainsKeyThenBeforeAdding!798 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889959 (_1!30523 (h!59185 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))) (_2!30523 (h!59185 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))))))))

(assert (=> b!4725038 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) lambda!216048)))

(declare-fun lt!1889953 () Unit!130501)

(assert (=> b!4725038 (= lt!1889953 lt!1889963)))

(assert (=> b!4725038 (forall!11596 (toList!5921 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) lambda!216048)))

(declare-fun lt!1889969 () Unit!130501)

(declare-fun Unit!130774 () Unit!130501)

(assert (=> b!4725038 (= lt!1889969 Unit!130774)))

(declare-fun res!1999396 () Bool)

(assert (=> b!4725038 (= res!1999396 (forall!11596 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lambda!216048))))

(assert (=> b!4725038 (=> (not res!1999396) (not e!2946949))))

(assert (=> b!4725038 e!2946949))

(declare-fun lt!1889961 () Unit!130501)

(declare-fun Unit!130775 () Unit!130501)

(assert (=> b!4725038 (= lt!1889961 Unit!130775)))

(assert (= (and d!1505138 c!806988) b!4725040))

(assert (= (and d!1505138 (not c!806988)) b!4725038))

(assert (= (and b!4725038 res!1999396) b!4725037))

(assert (= (or b!4725040 b!4725038) bm!330567))

(assert (= (or b!4725040 b!4725038) bm!330569))

(assert (= (or b!4725040 b!4725038) bm!330568))

(assert (= (and d!1505138 res!1999397) b!4725041))

(assert (= (and b!4725041 res!1999395) b!4725039))

(declare-fun m!5663549 () Bool)

(assert (=> b!4725039 m!5663549))

(assert (=> bm!330567 m!5662051))

(declare-fun m!5663553 () Bool)

(assert (=> bm!330567 m!5663553))

(declare-fun m!5663555 () Bool)

(assert (=> b!4725041 m!5663555))

(declare-fun m!5663557 () Bool)

(assert (=> d!1505138 m!5663557))

(declare-fun m!5663559 () Bool)

(assert (=> d!1505138 m!5663559))

(declare-fun m!5663561 () Bool)

(assert (=> b!4725038 m!5663561))

(declare-fun m!5663563 () Bool)

(assert (=> b!4725038 m!5663563))

(declare-fun m!5663565 () Bool)

(assert (=> b!4725038 m!5663565))

(declare-fun m!5663569 () Bool)

(assert (=> b!4725038 m!5663569))

(declare-fun m!5663571 () Bool)

(assert (=> b!4725038 m!5663571))

(assert (=> b!4725038 m!5663561))

(assert (=> b!4725038 m!5662051))

(assert (=> b!4725038 m!5663563))

(declare-fun m!5663573 () Bool)

(assert (=> b!4725038 m!5663573))

(declare-fun m!5663575 () Bool)

(assert (=> b!4725038 m!5663575))

(assert (=> b!4725038 m!5662051))

(declare-fun m!5663579 () Bool)

(assert (=> b!4725038 m!5663579))

(declare-fun m!5663583 () Bool)

(assert (=> b!4725038 m!5663583))

(declare-fun m!5663585 () Bool)

(assert (=> b!4725038 m!5663585))

(assert (=> b!4725038 m!5663573))

(declare-fun m!5663589 () Bool)

(assert (=> bm!330568 m!5663589))

(assert (=> b!4725037 m!5663573))

(declare-fun m!5663591 () Bool)

(assert (=> bm!330569 m!5663591))

(assert (=> b!4724354 d!1505138))

(declare-fun bs!1116306 () Bool)

(declare-fun d!1505182 () Bool)

(assert (= bs!1116306 (and d!1505182 d!1504824)))

(declare-fun lambda!216050 () Int)

(assert (=> bs!1116306 (= lambda!216050 lambda!215938)))

(declare-fun bs!1116307 () Bool)

(assert (= bs!1116307 (and d!1505182 d!1504734)))

(assert (=> bs!1116307 (not (= lambda!216050 lambda!215836))))

(declare-fun bs!1116308 () Bool)

(assert (= bs!1116308 (and d!1505182 d!1504696)))

(assert (=> bs!1116308 (not (= lambda!216050 lambda!215825))))

(declare-fun bs!1116309 () Bool)

(assert (= bs!1116309 (and d!1505182 start!480916)))

(assert (=> bs!1116309 (= lambda!216050 lambda!215822)))

(declare-fun bs!1116310 () Bool)

(assert (= bs!1116310 (and d!1505182 d!1504912)))

(assert (=> bs!1116310 (= lambda!216050 lambda!215978)))

(declare-fun bs!1116312 () Bool)

(assert (= bs!1116312 (and d!1505182 d!1504922)))

(assert (=> bs!1116312 (= lambda!216050 lambda!215998)))

(declare-fun bs!1116313 () Bool)

(assert (= bs!1116313 (and d!1505182 d!1504778)))

(assert (=> bs!1116313 (= lambda!216050 lambda!215926)))

(declare-fun bs!1116315 () Bool)

(assert (= bs!1116315 (and d!1505182 d!1504786)))

(assert (=> bs!1116315 (= lambda!216050 lambda!215928)))

(declare-fun bs!1116316 () Bool)

(assert (= bs!1116316 (and d!1505182 d!1504784)))

(assert (=> bs!1116316 (= lambda!216050 lambda!215927)))

(declare-fun lt!1889985 () ListMap!5285)

(assert (=> d!1505182 (invariantList!1513 (toList!5921 lt!1889985))))

(declare-fun e!2946994 () ListMap!5285)

(assert (=> d!1505182 (= lt!1889985 e!2946994)))

(declare-fun c!807010 () Bool)

(assert (=> d!1505182 (= c!807010 ((_ is Cons!52837) (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))))

(assert (=> d!1505182 (forall!11594 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))) lambda!216050)))

(assert (=> d!1505182 (= (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) lt!1889985)))

(declare-fun b!4725107 () Bool)

(assert (=> b!4725107 (= e!2946994 (addToMapMapFromBucket!1446 (_2!30524 (h!59186 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (extractMap!2042 (t!360231 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))))))))

(declare-fun b!4725108 () Bool)

(assert (=> b!4725108 (= e!2946994 (ListMap!5286 Nil!52836))))

(assert (= (and d!1505182 c!807010) b!4725107))

(assert (= (and d!1505182 (not c!807010)) b!4725108))

(declare-fun m!5663607 () Bool)

(assert (=> d!1505182 m!5663607))

(declare-fun m!5663611 () Bool)

(assert (=> d!1505182 m!5663611))

(declare-fun m!5663615 () Bool)

(assert (=> b!4725107 m!5663615))

(assert (=> b!4725107 m!5663615))

(declare-fun m!5663617 () Bool)

(assert (=> b!4725107 m!5663617))

(assert (=> b!4724354 d!1505182))

(declare-fun d!1505196 () Bool)

(declare-fun res!1999421 () Bool)

(declare-fun e!2946997 () Bool)

(assert (=> d!1505196 (=> res!1999421 e!2946997)))

(assert (=> d!1505196 (= res!1999421 ((_ is Nil!52837) (toList!5922 lt!1889053)))))

(assert (=> d!1505196 (= (forall!11594 (toList!5922 lt!1889053) lambda!215836) e!2946997)))

(declare-fun b!4725113 () Bool)

(declare-fun e!2946998 () Bool)

(assert (=> b!4725113 (= e!2946997 e!2946998)))

(declare-fun res!1999422 () Bool)

(assert (=> b!4725113 (=> (not res!1999422) (not e!2946998))))

(assert (=> b!4725113 (= res!1999422 (dynLambda!21823 lambda!215836 (h!59186 (toList!5922 lt!1889053))))))

(declare-fun b!4725114 () Bool)

(assert (=> b!4725114 (= e!2946998 (forall!11594 (t!360231 (toList!5922 lt!1889053)) lambda!215836))))

(assert (= (and d!1505196 (not res!1999421)) b!4725113))

(assert (= (and b!4725113 res!1999422) b!4725114))

(declare-fun b_lambda!179325 () Bool)

(assert (=> (not b_lambda!179325) (not b!4725113)))

(declare-fun m!5663619 () Bool)

(assert (=> b!4725113 m!5663619))

(declare-fun m!5663621 () Bool)

(assert (=> b!4725114 m!5663621))

(assert (=> d!1504734 d!1505196))

(assert (=> bm!330501 d!1504846))

(declare-fun d!1505198 () Bool)

(declare-fun res!1999423 () Bool)

(declare-fun e!2946999 () Bool)

(assert (=> d!1505198 (=> res!1999423 e!2946999)))

(assert (=> d!1505198 (= res!1999423 ((_ is Nil!52836) newBucket!218))))

(assert (=> d!1505198 (= (forall!11596 newBucket!218 lambda!215941) e!2946999)))

(declare-fun b!4725115 () Bool)

(declare-fun e!2947000 () Bool)

(assert (=> b!4725115 (= e!2946999 e!2947000)))

(declare-fun res!1999424 () Bool)

(assert (=> b!4725115 (=> (not res!1999424) (not e!2947000))))

(assert (=> b!4725115 (= res!1999424 (dynLambda!21825 lambda!215941 (h!59185 newBucket!218)))))

(declare-fun b!4725116 () Bool)

(assert (=> b!4725116 (= e!2947000 (forall!11596 (t!360230 newBucket!218) lambda!215941))))

(assert (= (and d!1505198 (not res!1999423)) b!4725115))

(assert (= (and b!4725115 res!1999424) b!4725116))

(declare-fun b_lambda!179327 () Bool)

(assert (=> (not b_lambda!179327) (not b!4725115)))

(declare-fun m!5663623 () Bool)

(assert (=> b!4725115 m!5663623))

(assert (=> b!4725116 m!5662255))

(assert (=> b!4724434 d!1505198))

(declare-fun d!1505200 () Bool)

(declare-fun res!1999425 () Bool)

(declare-fun e!2947001 () Bool)

(assert (=> d!1505200 (=> res!1999425 e!2947001)))

(assert (=> d!1505200 (= res!1999425 ((_ is Nil!52836) (t!360230 newBucket!218)))))

(assert (=> d!1505200 (= (forall!11596 (t!360230 newBucket!218) lambda!215941) e!2947001)))

(declare-fun b!4725117 () Bool)

(declare-fun e!2947002 () Bool)

(assert (=> b!4725117 (= e!2947001 e!2947002)))

(declare-fun res!1999426 () Bool)

(assert (=> b!4725117 (=> (not res!1999426) (not e!2947002))))

(assert (=> b!4725117 (= res!1999426 (dynLambda!21825 lambda!215941 (h!59185 (t!360230 newBucket!218))))))

(declare-fun b!4725118 () Bool)

(assert (=> b!4725118 (= e!2947002 (forall!11596 (t!360230 (t!360230 newBucket!218)) lambda!215941))))

(assert (= (and d!1505200 (not res!1999425)) b!4725117))

(assert (= (and b!4725117 res!1999426) b!4725118))

(declare-fun b_lambda!179329 () Bool)

(assert (=> (not b_lambda!179329) (not b!4725117)))

(declare-fun m!5663625 () Bool)

(assert (=> b!4725117 m!5663625))

(declare-fun m!5663627 () Bool)

(assert (=> b!4725118 m!5663627))

(assert (=> b!4724434 d!1505200))

(declare-fun b!4725119 () Bool)

(declare-fun e!2947005 () Bool)

(declare-fun e!2947006 () Bool)

(assert (=> b!4725119 (= e!2947005 e!2947006)))

(declare-fun res!1999428 () Bool)

(assert (=> b!4725119 (=> (not res!1999428) (not e!2947006))))

(assert (=> b!4725119 (= res!1999428 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889444) (_1!30523 (h!59185 newBucket!218)))))))

(declare-fun bm!330574 () Bool)

(declare-fun call!330579 () Bool)

(declare-fun e!2947008 () List!52963)

(assert (=> bm!330574 (= call!330579 (contains!16188 e!2947008 (_1!30523 (h!59185 newBucket!218))))))

(declare-fun c!807014 () Bool)

(declare-fun c!807013 () Bool)

(assert (=> bm!330574 (= c!807014 c!807013)))

(declare-fun d!1505202 () Bool)

(assert (=> d!1505202 e!2947005))

(declare-fun res!1999429 () Bool)

(assert (=> d!1505202 (=> res!1999429 e!2947005)))

(declare-fun e!2947003 () Bool)

(assert (=> d!1505202 (= res!1999429 e!2947003)))

(declare-fun res!1999427 () Bool)

(assert (=> d!1505202 (=> (not res!1999427) (not e!2947003))))

(declare-fun lt!1889991 () Bool)

(assert (=> d!1505202 (= res!1999427 (not lt!1889991))))

(declare-fun lt!1889993 () Bool)

(assert (=> d!1505202 (= lt!1889991 lt!1889993)))

(declare-fun lt!1889990 () Unit!130501)

(declare-fun e!2947004 () Unit!130501)

(assert (=> d!1505202 (= lt!1889990 e!2947004)))

(assert (=> d!1505202 (= c!807013 lt!1889993)))

(assert (=> d!1505202 (= lt!1889993 (containsKey!3379 (toList!5921 lt!1889444) (_1!30523 (h!59185 newBucket!218))))))

(assert (=> d!1505202 (= (contains!16183 lt!1889444 (_1!30523 (h!59185 newBucket!218))) lt!1889991)))

(declare-fun b!4725120 () Bool)

(assert (=> b!4725120 (= e!2947008 (keys!18978 lt!1889444))))

(declare-fun b!4725121 () Bool)

(assert (=> b!4725121 (= e!2947008 (getKeysList!953 (toList!5921 lt!1889444)))))

(declare-fun b!4725122 () Bool)

(declare-fun lt!1889995 () Unit!130501)

(assert (=> b!4725122 (= e!2947004 lt!1889995)))

(declare-fun lt!1889994 () Unit!130501)

(assert (=> b!4725122 (= lt!1889994 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889444) (_1!30523 (h!59185 newBucket!218))))))

(assert (=> b!4725122 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889444) (_1!30523 (h!59185 newBucket!218))))))

(declare-fun lt!1889992 () Unit!130501)

(assert (=> b!4725122 (= lt!1889992 lt!1889994)))

(assert (=> b!4725122 (= lt!1889995 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889444) (_1!30523 (h!59185 newBucket!218))))))

(assert (=> b!4725122 call!330579))

(declare-fun b!4725123 () Bool)

(assert (=> b!4725123 (= e!2947003 (not (contains!16188 (keys!18978 lt!1889444) (_1!30523 (h!59185 newBucket!218)))))))

(declare-fun b!4725124 () Bool)

(assert (=> b!4725124 false))

(declare-fun lt!1889989 () Unit!130501)

(declare-fun lt!1889988 () Unit!130501)

(assert (=> b!4725124 (= lt!1889989 lt!1889988)))

(assert (=> b!4725124 (containsKey!3379 (toList!5921 lt!1889444) (_1!30523 (h!59185 newBucket!218)))))

(assert (=> b!4725124 (= lt!1889988 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889444) (_1!30523 (h!59185 newBucket!218))))))

(declare-fun e!2947007 () Unit!130501)

(declare-fun Unit!130777 () Unit!130501)

(assert (=> b!4725124 (= e!2947007 Unit!130777)))

(declare-fun b!4725125 () Bool)

(assert (=> b!4725125 (= e!2947004 e!2947007)))

(declare-fun c!807015 () Bool)

(assert (=> b!4725125 (= c!807015 call!330579)))

(declare-fun b!4725126 () Bool)

(assert (=> b!4725126 (= e!2947006 (contains!16188 (keys!18978 lt!1889444) (_1!30523 (h!59185 newBucket!218))))))

(declare-fun b!4725127 () Bool)

(declare-fun Unit!130779 () Unit!130501)

(assert (=> b!4725127 (= e!2947007 Unit!130779)))

(assert (= (and d!1505202 c!807013) b!4725122))

(assert (= (and d!1505202 (not c!807013)) b!4725125))

(assert (= (and b!4725125 c!807015) b!4725124))

(assert (= (and b!4725125 (not c!807015)) b!4725127))

(assert (= (or b!4725122 b!4725125) bm!330574))

(assert (= (and bm!330574 c!807014) b!4725121))

(assert (= (and bm!330574 (not c!807014)) b!4725120))

(assert (= (and d!1505202 res!1999427) b!4725123))

(assert (= (and d!1505202 (not res!1999429)) b!4725119))

(assert (= (and b!4725119 res!1999428) b!4725126))

(declare-fun m!5663631 () Bool)

(assert (=> b!4725120 m!5663631))

(assert (=> b!4725126 m!5663631))

(assert (=> b!4725126 m!5663631))

(declare-fun m!5663633 () Bool)

(assert (=> b!4725126 m!5663633))

(declare-fun m!5663635 () Bool)

(assert (=> b!4725119 m!5663635))

(assert (=> b!4725119 m!5663635))

(declare-fun m!5663637 () Bool)

(assert (=> b!4725119 m!5663637))

(declare-fun m!5663639 () Bool)

(assert (=> b!4725121 m!5663639))

(declare-fun m!5663641 () Bool)

(assert (=> d!1505202 m!5663641))

(declare-fun m!5663643 () Bool)

(assert (=> b!4725122 m!5663643))

(assert (=> b!4725122 m!5663635))

(assert (=> b!4725122 m!5663635))

(assert (=> b!4725122 m!5663637))

(declare-fun m!5663645 () Bool)

(assert (=> b!4725122 m!5663645))

(assert (=> b!4725123 m!5663631))

(assert (=> b!4725123 m!5663631))

(assert (=> b!4725123 m!5663633))

(declare-fun m!5663647 () Bool)

(assert (=> bm!330574 m!5663647))

(assert (=> b!4725124 m!5663641))

(declare-fun m!5663649 () Bool)

(assert (=> b!4725124 m!5663649))

(assert (=> b!4724434 d!1505202))

(declare-fun d!1505206 () Bool)

(declare-fun e!2947009 () Bool)

(assert (=> d!1505206 e!2947009))

(declare-fun res!1999431 () Bool)

(assert (=> d!1505206 (=> (not res!1999431) (not e!2947009))))

(declare-fun lt!1889998 () ListMap!5285)

(assert (=> d!1505206 (= res!1999431 (contains!16183 lt!1889998 (_1!30523 (h!59185 newBucket!218))))))

(declare-fun lt!1890000 () List!52960)

(assert (=> d!1505206 (= lt!1889998 (ListMap!5286 lt!1890000))))

(declare-fun lt!1889999 () Unit!130501)

(declare-fun lt!1889997 () Unit!130501)

(assert (=> d!1505206 (= lt!1889999 lt!1889997)))

(assert (=> d!1505206 (= (getValueByKey!1961 lt!1890000 (_1!30523 (h!59185 newBucket!218))) (Some!12364 (_2!30523 (h!59185 newBucket!218))))))

(assert (=> d!1505206 (= lt!1889997 (lemmaContainsTupThenGetReturnValue!1088 lt!1890000 (_1!30523 (h!59185 newBucket!218)) (_2!30523 (h!59185 newBucket!218))))))

(assert (=> d!1505206 (= lt!1890000 (insertNoDuplicatedKeys!596 (toList!5921 lt!1889044) (_1!30523 (h!59185 newBucket!218)) (_2!30523 (h!59185 newBucket!218))))))

(assert (=> d!1505206 (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889998)))

(declare-fun b!4725128 () Bool)

(declare-fun res!1999430 () Bool)

(assert (=> b!4725128 (=> (not res!1999430) (not e!2947009))))

(assert (=> b!4725128 (= res!1999430 (= (getValueByKey!1961 (toList!5921 lt!1889998) (_1!30523 (h!59185 newBucket!218))) (Some!12364 (_2!30523 (h!59185 newBucket!218)))))))

(declare-fun b!4725129 () Bool)

(assert (=> b!4725129 (= e!2947009 (contains!16186 (toList!5921 lt!1889998) (h!59185 newBucket!218)))))

(assert (= (and d!1505206 res!1999431) b!4725128))

(assert (= (and b!4725128 res!1999430) b!4725129))

(declare-fun m!5663651 () Bool)

(assert (=> d!1505206 m!5663651))

(declare-fun m!5663653 () Bool)

(assert (=> d!1505206 m!5663653))

(declare-fun m!5663655 () Bool)

(assert (=> d!1505206 m!5663655))

(declare-fun m!5663657 () Bool)

(assert (=> d!1505206 m!5663657))

(declare-fun m!5663659 () Bool)

(assert (=> b!4725128 m!5663659))

(declare-fun m!5663661 () Bool)

(assert (=> b!4725129 m!5663661))

(assert (=> b!4724434 d!1505206))

(declare-fun d!1505208 () Bool)

(declare-fun res!1999432 () Bool)

(declare-fun e!2947010 () Bool)

(assert (=> d!1505208 (=> res!1999432 e!2947010)))

(assert (=> d!1505208 (= res!1999432 ((_ is Nil!52836) (toList!5921 lt!1889449)))))

(assert (=> d!1505208 (= (forall!11596 (toList!5921 lt!1889449) lambda!215941) e!2947010)))

(declare-fun b!4725130 () Bool)

(declare-fun e!2947011 () Bool)

(assert (=> b!4725130 (= e!2947010 e!2947011)))

(declare-fun res!1999433 () Bool)

(assert (=> b!4725130 (=> (not res!1999433) (not e!2947011))))

(assert (=> b!4725130 (= res!1999433 (dynLambda!21825 lambda!215941 (h!59185 (toList!5921 lt!1889449))))))

(declare-fun b!4725131 () Bool)

(assert (=> b!4725131 (= e!2947011 (forall!11596 (t!360230 (toList!5921 lt!1889449)) lambda!215941))))

(assert (= (and d!1505208 (not res!1999432)) b!4725130))

(assert (= (and b!4725130 res!1999433) b!4725131))

(declare-fun b_lambda!179331 () Bool)

(assert (=> (not b_lambda!179331) (not b!4725130)))

(declare-fun m!5663663 () Bool)

(assert (=> b!4725130 m!5663663))

(declare-fun m!5663665 () Bool)

(assert (=> b!4725131 m!5663665))

(assert (=> b!4724434 d!1505208))

(declare-fun bs!1116318 () Bool)

(declare-fun b!4725135 () Bool)

(assert (= bs!1116318 (and b!4725135 b!4724511)))

(declare-fun lambda!216051 () Int)

(assert (=> bs!1116318 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216051 lambda!215957))))

(declare-fun bs!1116319 () Bool)

(assert (= bs!1116319 (and b!4725135 b!4724389)))

(assert (=> bs!1116319 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215930))))

(declare-fun bs!1116320 () Bool)

(assert (= bs!1116320 (and b!4725135 d!1504826)))

(assert (=> bs!1116320 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889434) (= lambda!216051 lambda!215942))))

(declare-fun bs!1116321 () Bool)

(assert (= bs!1116321 (and b!4725135 b!4724318)))

(assert (=> bs!1116321 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215920))))

(declare-fun bs!1116322 () Bool)

(assert (= bs!1116322 (and b!4725135 d!1504828)))

(assert (=> bs!1116322 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889455) (= lambda!216051 lambda!215946))))

(declare-fun bs!1116323 () Bool)

(assert (= bs!1116323 (and b!4725135 b!4724434)))

(assert (=> bs!1116323 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215940))))

(declare-fun bs!1116324 () Bool)

(assert (= bs!1116324 (and b!4725135 d!1504812)))

(assert (=> bs!1116324 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889351) (= lambda!216051 lambda!215933))))

(declare-fun bs!1116325 () Bool)

(assert (= bs!1116325 (and b!4725135 b!4724513)))

(assert (=> bs!1116325 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216051 lambda!215956))))

(declare-fun bs!1116326 () Bool)

(assert (= bs!1116326 (and b!4725135 b!4724558)))

(assert (=> bs!1116326 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216051 lambda!215973))))

(declare-fun bs!1116327 () Bool)

(assert (= bs!1116327 (and b!4725135 d!1504918)))

(assert (=> bs!1116327 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889607) (= lambda!216051 lambda!215994))))

(declare-fun bs!1116328 () Bool)

(assert (= bs!1116328 (and b!4725135 d!1504728)))

(assert (=> bs!1116328 (not (= lambda!216051 lambda!215834))))

(declare-fun bs!1116329 () Bool)

(assert (= bs!1116329 (and b!4725135 b!4724387)))

(assert (=> bs!1116329 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215931))))

(declare-fun bs!1116331 () Bool)

(assert (= bs!1116331 (and b!4725135 d!1505138)))

(assert (=> bs!1116331 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889949) (= lambda!216051 lambda!216049))))

(declare-fun bs!1116332 () Bool)

(assert (= bs!1116332 (and b!4725135 d!1504898)))

(assert (=> bs!1116332 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889569) (= lambda!216051 lambda!215977))))

(declare-fun bs!1116333 () Bool)

(assert (= bs!1116333 (and b!4725135 b!4724656)))

(assert (=> bs!1116333 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216051 lambda!216002))))

(assert (=> bs!1116333 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889688) (= lambda!216051 lambda!216003))))

(assert (=> bs!1116318 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889503) (= lambda!216051 lambda!215958))))

(declare-fun bs!1116334 () Bool)

(assert (= bs!1116334 (and b!4725135 d!1504946)))

(assert (=> bs!1116334 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889678) (= lambda!216051 lambda!216005))))

(declare-fun bs!1116335 () Bool)

(assert (= bs!1116335 (and b!4725135 b!4724556)))

(assert (=> bs!1116335 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889579) (= lambda!216051 lambda!215976))))

(declare-fun bs!1116336 () Bool)

(assert (= bs!1116336 (and b!4725135 b!4724591)))

(assert (=> bs!1116336 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216051 lambda!215982))))

(declare-fun bs!1116337 () Bool)

(assert (= bs!1116337 (and b!4725135 d!1504878)))

(assert (=> bs!1116337 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889398) (= lambda!216051 lambda!215970))))

(declare-fun bs!1116338 () Bool)

(assert (= bs!1116338 (and b!4725135 b!4724985)))

(assert (=> bs!1116338 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216051 lambda!216042))))

(declare-fun bs!1116339 () Bool)

(assert (= bs!1116339 (and b!4725135 d!1505120)))

(assert (=> bs!1116339 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889896) (= lambda!216051 lambda!216044))))

(declare-fun bs!1116340 () Bool)

(assert (= bs!1116340 (and b!4725135 b!4724402)))

(assert (=> bs!1116340 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215934))))

(assert (=> bs!1116335 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216051 lambda!215975))))

(declare-fun bs!1116341 () Bool)

(assert (= bs!1116341 (and b!4725135 b!4725038)))

(assert (=> bs!1116341 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889959) (= lambda!216051 lambda!216048))))

(declare-fun bs!1116342 () Bool)

(assert (= bs!1116342 (and b!4725135 d!1504864)))

(assert (=> bs!1116342 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889493) (= lambda!216051 lambda!215959))))

(declare-fun bs!1116343 () Bool)

(assert (= bs!1116343 (and b!4725135 b!4724658)))

(assert (=> bs!1116343 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216051 lambda!216000))))

(assert (=> bs!1116329 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889361) (= lambda!216051 lambda!215932))))

(declare-fun bs!1116344 () Bool)

(assert (= bs!1116344 (and b!4725135 b!4724441)))

(assert (=> bs!1116344 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215943))))

(assert (=> bs!1116336 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889617) (= lambda!216051 lambda!215989))))

(declare-fun bs!1116345 () Bool)

(assert (= bs!1116345 (and b!4725135 b!4725040)))

(assert (=> bs!1116345 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216051 lambda!216046))))

(declare-fun bs!1116346 () Bool)

(assert (= bs!1116346 (and b!4725135 b!4724436)))

(assert (=> bs!1116346 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215939))))

(declare-fun bs!1116347 () Bool)

(assert (= bs!1116347 (and b!4725135 d!1504820)))

(assert (=> bs!1116347 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889388) (= lambda!216051 lambda!215937))))

(declare-fun bs!1116348 () Bool)

(assert (= bs!1116348 (and b!4725135 b!4724320)))

(assert (=> bs!1116348 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215918))))

(declare-fun bs!1116349 () Bool)

(assert (= bs!1116349 (and b!4725135 b!4724400)))

(assert (=> bs!1116349 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889398) (= lambda!216051 lambda!215936))))

(declare-fun bs!1116350 () Bool)

(assert (= bs!1116350 (and b!4725135 b!4724987)))

(assert (=> bs!1116350 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216051 lambda!216041))))

(assert (=> bs!1116341 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216051 lambda!216047))))

(declare-fun bs!1116351 () Bool)

(assert (= bs!1116351 (and b!4725135 d!1504736)))

(assert (=> bs!1116351 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889297) (= lambda!216051 lambda!215923))))

(assert (=> bs!1116321 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889307) (= lambda!216051 lambda!215922))))

(declare-fun bs!1116352 () Bool)

(assert (= bs!1116352 (and b!4725135 b!4724593)))

(assert (=> bs!1116352 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216051 lambda!215979))))

(declare-fun bs!1116353 () Bool)

(assert (= bs!1116353 (and b!4725135 d!1504846)))

(assert (=> bs!1116353 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215949))))

(declare-fun bs!1116354 () Bool)

(assert (= bs!1116354 (and b!4725135 b!4724439)))

(assert (=> bs!1116354 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889465) (= lambda!216051 lambda!215945))))

(declare-fun bs!1116355 () Bool)

(assert (= bs!1116355 (and b!4725135 d!1505122)))

(assert (=> bs!1116355 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889361) (= lambda!216051 lambda!216045))))

(assert (=> bs!1116338 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889906) (= lambda!216051 lambda!216043))))

(assert (=> bs!1116354 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215944))))

(assert (=> bs!1116323 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889444) (= lambda!216051 lambda!215941))))

(assert (=> bs!1116349 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216051 lambda!215935))))

(declare-fun bs!1116356 () Bool)

(assert (= bs!1116356 (and b!4725135 d!1504730)))

(assert (=> bs!1116356 (not (= lambda!216051 lambda!215835))))

(assert (=> b!4725135 true))

(declare-fun bs!1116357 () Bool)

(declare-fun b!4725133 () Bool)

(assert (= bs!1116357 (and b!4725133 b!4724511)))

(declare-fun lambda!216052 () Int)

(assert (=> bs!1116357 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216052 lambda!215957))))

(declare-fun bs!1116358 () Bool)

(assert (= bs!1116358 (and b!4725133 b!4724389)))

(assert (=> bs!1116358 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215930))))

(declare-fun bs!1116359 () Bool)

(assert (= bs!1116359 (and b!4725133 d!1504826)))

(assert (=> bs!1116359 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889434) (= lambda!216052 lambda!215942))))

(declare-fun bs!1116360 () Bool)

(assert (= bs!1116360 (and b!4725133 b!4724318)))

(assert (=> bs!1116360 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215920))))

(declare-fun bs!1116361 () Bool)

(assert (= bs!1116361 (and b!4725133 d!1504828)))

(assert (=> bs!1116361 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889455) (= lambda!216052 lambda!215946))))

(declare-fun bs!1116362 () Bool)

(assert (= bs!1116362 (and b!4725133 b!4724434)))

(assert (=> bs!1116362 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215940))))

(declare-fun bs!1116363 () Bool)

(assert (= bs!1116363 (and b!4725133 d!1504812)))

(assert (=> bs!1116363 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889351) (= lambda!216052 lambda!215933))))

(declare-fun bs!1116364 () Bool)

(assert (= bs!1116364 (and b!4725133 b!4724513)))

(assert (=> bs!1116364 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216052 lambda!215956))))

(declare-fun bs!1116365 () Bool)

(assert (= bs!1116365 (and b!4725133 b!4724558)))

(assert (=> bs!1116365 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216052 lambda!215973))))

(declare-fun bs!1116366 () Bool)

(assert (= bs!1116366 (and b!4725133 d!1504918)))

(assert (=> bs!1116366 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889607) (= lambda!216052 lambda!215994))))

(declare-fun bs!1116367 () Bool)

(assert (= bs!1116367 (and b!4725133 d!1504728)))

(assert (=> bs!1116367 (not (= lambda!216052 lambda!215834))))

(declare-fun bs!1116368 () Bool)

(assert (= bs!1116368 (and b!4725133 b!4724387)))

(assert (=> bs!1116368 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215931))))

(declare-fun bs!1116369 () Bool)

(assert (= bs!1116369 (and b!4725133 d!1505138)))

(assert (=> bs!1116369 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889949) (= lambda!216052 lambda!216049))))

(declare-fun bs!1116370 () Bool)

(assert (= bs!1116370 (and b!4725133 d!1504898)))

(assert (=> bs!1116370 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889569) (= lambda!216052 lambda!215977))))

(declare-fun bs!1116371 () Bool)

(assert (= bs!1116371 (and b!4725133 b!4724656)))

(assert (=> bs!1116371 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216052 lambda!216002))))

(assert (=> bs!1116371 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889688) (= lambda!216052 lambda!216003))))

(assert (=> bs!1116357 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889503) (= lambda!216052 lambda!215958))))

(declare-fun bs!1116372 () Bool)

(assert (= bs!1116372 (and b!4725133 d!1504946)))

(assert (=> bs!1116372 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889678) (= lambda!216052 lambda!216005))))

(declare-fun bs!1116373 () Bool)

(assert (= bs!1116373 (and b!4725133 b!4724556)))

(assert (=> bs!1116373 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889579) (= lambda!216052 lambda!215976))))

(declare-fun bs!1116374 () Bool)

(assert (= bs!1116374 (and b!4725133 b!4724591)))

(assert (=> bs!1116374 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216052 lambda!215982))))

(declare-fun bs!1116375 () Bool)

(assert (= bs!1116375 (and b!4725133 d!1504878)))

(assert (=> bs!1116375 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889398) (= lambda!216052 lambda!215970))))

(declare-fun bs!1116376 () Bool)

(assert (= bs!1116376 (and b!4725133 b!4724985)))

(assert (=> bs!1116376 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216052 lambda!216042))))

(declare-fun bs!1116377 () Bool)

(assert (= bs!1116377 (and b!4725133 d!1505120)))

(assert (=> bs!1116377 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889896) (= lambda!216052 lambda!216044))))

(declare-fun bs!1116378 () Bool)

(assert (= bs!1116378 (and b!4725133 b!4724402)))

(assert (=> bs!1116378 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215934))))

(assert (=> bs!1116373 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216052 lambda!215975))))

(declare-fun bs!1116379 () Bool)

(assert (= bs!1116379 (and b!4725133 b!4725038)))

(assert (=> bs!1116379 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889959) (= lambda!216052 lambda!216048))))

(declare-fun bs!1116380 () Bool)

(assert (= bs!1116380 (and b!4725133 d!1504864)))

(assert (=> bs!1116380 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889493) (= lambda!216052 lambda!215959))))

(declare-fun bs!1116381 () Bool)

(assert (= bs!1116381 (and b!4725133 b!4724658)))

(assert (=> bs!1116381 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216052 lambda!216000))))

(assert (=> bs!1116368 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889361) (= lambda!216052 lambda!215932))))

(declare-fun bs!1116382 () Bool)

(assert (= bs!1116382 (and b!4725133 b!4724441)))

(assert (=> bs!1116382 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215943))))

(assert (=> bs!1116374 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889617) (= lambda!216052 lambda!215989))))

(declare-fun bs!1116383 () Bool)

(assert (= bs!1116383 (and b!4725133 b!4725040)))

(assert (=> bs!1116383 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216052 lambda!216046))))

(declare-fun bs!1116384 () Bool)

(assert (= bs!1116384 (and b!4725133 b!4724436)))

(assert (=> bs!1116384 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215939))))

(declare-fun bs!1116385 () Bool)

(assert (= bs!1116385 (and b!4725133 d!1504820)))

(assert (=> bs!1116385 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889388) (= lambda!216052 lambda!215937))))

(declare-fun bs!1116386 () Bool)

(assert (= bs!1116386 (and b!4725133 b!4724320)))

(assert (=> bs!1116386 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215918))))

(declare-fun bs!1116387 () Bool)

(assert (= bs!1116387 (and b!4725133 b!4724400)))

(assert (=> bs!1116387 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889398) (= lambda!216052 lambda!215936))))

(declare-fun bs!1116388 () Bool)

(assert (= bs!1116388 (and b!4725133 b!4724987)))

(assert (=> bs!1116388 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216052 lambda!216041))))

(assert (=> bs!1116379 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216052 lambda!216047))))

(declare-fun bs!1116389 () Bool)

(assert (= bs!1116389 (and b!4725133 d!1504736)))

(assert (=> bs!1116389 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889297) (= lambda!216052 lambda!215923))))

(assert (=> bs!1116360 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889307) (= lambda!216052 lambda!215922))))

(declare-fun bs!1116390 () Bool)

(assert (= bs!1116390 (and b!4725133 b!4724593)))

(assert (=> bs!1116390 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216052 lambda!215979))))

(declare-fun bs!1116391 () Bool)

(assert (= bs!1116391 (and b!4725133 d!1504846)))

(assert (=> bs!1116391 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215949))))

(declare-fun bs!1116392 () Bool)

(assert (= bs!1116392 (and b!4725133 b!4725135)))

(assert (=> bs!1116392 (= lambda!216052 lambda!216051)))

(declare-fun bs!1116393 () Bool)

(assert (= bs!1116393 (and b!4725133 b!4724439)))

(assert (=> bs!1116393 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889465) (= lambda!216052 lambda!215945))))

(declare-fun bs!1116394 () Bool)

(assert (= bs!1116394 (and b!4725133 d!1505122)))

(assert (=> bs!1116394 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889361) (= lambda!216052 lambda!216045))))

(assert (=> bs!1116376 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889906) (= lambda!216052 lambda!216043))))

(assert (=> bs!1116393 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215944))))

(assert (=> bs!1116362 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889444) (= lambda!216052 lambda!215941))))

(assert (=> bs!1116387 (= (= (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1889044) (= lambda!216052 lambda!215935))))

(declare-fun bs!1116395 () Bool)

(assert (= bs!1116395 (and b!4725133 d!1504730)))

(assert (=> bs!1116395 (not (= lambda!216052 lambda!215835))))

(assert (=> b!4725133 true))

(declare-fun lambda!216053 () Int)

(declare-fun lt!1890011 () ListMap!5285)

(assert (=> bs!1116357 (= (= lt!1890011 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216053 lambda!215957))))

(assert (=> bs!1116358 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215930))))

(assert (=> bs!1116359 (= (= lt!1890011 lt!1889434) (= lambda!216053 lambda!215942))))

(assert (=> bs!1116360 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215920))))

(assert (=> bs!1116361 (= (= lt!1890011 lt!1889455) (= lambda!216053 lambda!215946))))

(assert (=> bs!1116362 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215940))))

(assert (=> bs!1116363 (= (= lt!1890011 lt!1889351) (= lambda!216053 lambda!215933))))

(assert (=> bs!1116364 (= (= lt!1890011 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216053 lambda!215956))))

(assert (=> bs!1116365 (= (= lt!1890011 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216053 lambda!215973))))

(assert (=> bs!1116366 (= (= lt!1890011 lt!1889607) (= lambda!216053 lambda!215994))))

(assert (=> bs!1116367 (not (= lambda!216053 lambda!215834))))

(assert (=> bs!1116368 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215931))))

(assert (=> bs!1116369 (= (= lt!1890011 lt!1889949) (= lambda!216053 lambda!216049))))

(assert (=> bs!1116370 (= (= lt!1890011 lt!1889569) (= lambda!216053 lambda!215977))))

(assert (=> bs!1116371 (= (= lt!1890011 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216053 lambda!216002))))

(assert (=> bs!1116371 (= (= lt!1890011 lt!1889688) (= lambda!216053 lambda!216003))))

(assert (=> bs!1116357 (= (= lt!1890011 lt!1889503) (= lambda!216053 lambda!215958))))

(assert (=> bs!1116372 (= (= lt!1890011 lt!1889678) (= lambda!216053 lambda!216005))))

(assert (=> bs!1116373 (= (= lt!1890011 lt!1889579) (= lambda!216053 lambda!215976))))

(assert (=> bs!1116374 (= (= lt!1890011 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216053 lambda!215982))))

(assert (=> bs!1116375 (= (= lt!1890011 lt!1889398) (= lambda!216053 lambda!215970))))

(assert (=> bs!1116376 (= (= lt!1890011 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216053 lambda!216042))))

(assert (=> bs!1116377 (= (= lt!1890011 lt!1889896) (= lambda!216053 lambda!216044))))

(assert (=> bs!1116378 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215934))))

(assert (=> bs!1116373 (= (= lt!1890011 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216053 lambda!215975))))

(assert (=> bs!1116379 (= (= lt!1890011 lt!1889959) (= lambda!216053 lambda!216048))))

(assert (=> bs!1116380 (= (= lt!1890011 lt!1889493) (= lambda!216053 lambda!215959))))

(assert (=> bs!1116381 (= (= lt!1890011 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216053 lambda!216000))))

(assert (=> bs!1116368 (= (= lt!1890011 lt!1889361) (= lambda!216053 lambda!215932))))

(assert (=> bs!1116382 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215943))))

(assert (=> bs!1116374 (= (= lt!1890011 lt!1889617) (= lambda!216053 lambda!215989))))

(assert (=> bs!1116383 (= (= lt!1890011 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216053 lambda!216046))))

(assert (=> bs!1116384 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215939))))

(assert (=> bs!1116385 (= (= lt!1890011 lt!1889388) (= lambda!216053 lambda!215937))))

(assert (=> bs!1116386 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215918))))

(assert (=> bs!1116387 (= (= lt!1890011 lt!1889398) (= lambda!216053 lambda!215936))))

(assert (=> bs!1116388 (= (= lt!1890011 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216053 lambda!216041))))

(assert (=> bs!1116379 (= (= lt!1890011 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216053 lambda!216047))))

(assert (=> bs!1116389 (= (= lt!1890011 lt!1889297) (= lambda!216053 lambda!215923))))

(assert (=> bs!1116360 (= (= lt!1890011 lt!1889307) (= lambda!216053 lambda!215922))))

(assert (=> b!4725133 (= (= lt!1890011 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216053 lambda!216052))))

(assert (=> bs!1116390 (= (= lt!1890011 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216053 lambda!215979))))

(assert (=> bs!1116391 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215949))))

(assert (=> bs!1116392 (= (= lt!1890011 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216053 lambda!216051))))

(assert (=> bs!1116393 (= (= lt!1890011 lt!1889465) (= lambda!216053 lambda!215945))))

(assert (=> bs!1116394 (= (= lt!1890011 lt!1889361) (= lambda!216053 lambda!216045))))

(assert (=> bs!1116376 (= (= lt!1890011 lt!1889906) (= lambda!216053 lambda!216043))))

(assert (=> bs!1116393 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215944))))

(assert (=> bs!1116362 (= (= lt!1890011 lt!1889444) (= lambda!216053 lambda!215941))))

(assert (=> bs!1116387 (= (= lt!1890011 lt!1889044) (= lambda!216053 lambda!215935))))

(assert (=> bs!1116395 (not (= lambda!216053 lambda!215835))))

(assert (=> b!4725133 true))

(declare-fun bs!1116396 () Bool)

(declare-fun d!1505210 () Bool)

(assert (= bs!1116396 (and d!1505210 b!4724511)))

(declare-fun lt!1890001 () ListMap!5285)

(declare-fun lambda!216054 () Int)

(assert (=> bs!1116396 (= (= lt!1890001 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216054 lambda!215957))))

(declare-fun bs!1116397 () Bool)

(assert (= bs!1116397 (and d!1505210 b!4724389)))

(assert (=> bs!1116397 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215930))))

(declare-fun bs!1116398 () Bool)

(assert (= bs!1116398 (and d!1505210 d!1504826)))

(assert (=> bs!1116398 (= (= lt!1890001 lt!1889434) (= lambda!216054 lambda!215942))))

(declare-fun bs!1116399 () Bool)

(assert (= bs!1116399 (and d!1505210 b!4724318)))

(assert (=> bs!1116399 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215920))))

(declare-fun bs!1116400 () Bool)

(assert (= bs!1116400 (and d!1505210 d!1504828)))

(assert (=> bs!1116400 (= (= lt!1890001 lt!1889455) (= lambda!216054 lambda!215946))))

(declare-fun bs!1116401 () Bool)

(assert (= bs!1116401 (and d!1505210 b!4724434)))

(assert (=> bs!1116401 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215940))))

(declare-fun bs!1116402 () Bool)

(assert (= bs!1116402 (and d!1505210 d!1504812)))

(assert (=> bs!1116402 (= (= lt!1890001 lt!1889351) (= lambda!216054 lambda!215933))))

(declare-fun bs!1116403 () Bool)

(assert (= bs!1116403 (and d!1505210 b!4724513)))

(assert (=> bs!1116403 (= (= lt!1890001 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216054 lambda!215956))))

(declare-fun bs!1116404 () Bool)

(assert (= bs!1116404 (and d!1505210 b!4724558)))

(assert (=> bs!1116404 (= (= lt!1890001 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216054 lambda!215973))))

(declare-fun bs!1116405 () Bool)

(assert (= bs!1116405 (and d!1505210 d!1504918)))

(assert (=> bs!1116405 (= (= lt!1890001 lt!1889607) (= lambda!216054 lambda!215994))))

(declare-fun bs!1116406 () Bool)

(assert (= bs!1116406 (and d!1505210 d!1504728)))

(assert (=> bs!1116406 (not (= lambda!216054 lambda!215834))))

(declare-fun bs!1116407 () Bool)

(assert (= bs!1116407 (and d!1505210 b!4724387)))

(assert (=> bs!1116407 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215931))))

(declare-fun bs!1116408 () Bool)

(assert (= bs!1116408 (and d!1505210 d!1505138)))

(assert (=> bs!1116408 (= (= lt!1890001 lt!1889949) (= lambda!216054 lambda!216049))))

(declare-fun bs!1116409 () Bool)

(assert (= bs!1116409 (and d!1505210 d!1504898)))

(assert (=> bs!1116409 (= (= lt!1890001 lt!1889569) (= lambda!216054 lambda!215977))))

(declare-fun bs!1116410 () Bool)

(assert (= bs!1116410 (and d!1505210 b!4724656)))

(assert (=> bs!1116410 (= (= lt!1890001 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216054 lambda!216002))))

(assert (=> bs!1116410 (= (= lt!1890001 lt!1889688) (= lambda!216054 lambda!216003))))

(assert (=> bs!1116396 (= (= lt!1890001 lt!1889503) (= lambda!216054 lambda!215958))))

(declare-fun bs!1116411 () Bool)

(assert (= bs!1116411 (and d!1505210 d!1504946)))

(assert (=> bs!1116411 (= (= lt!1890001 lt!1889678) (= lambda!216054 lambda!216005))))

(declare-fun bs!1116412 () Bool)

(assert (= bs!1116412 (and d!1505210 b!4724556)))

(assert (=> bs!1116412 (= (= lt!1890001 lt!1889579) (= lambda!216054 lambda!215976))))

(declare-fun bs!1116414 () Bool)

(assert (= bs!1116414 (and d!1505210 b!4724591)))

(assert (=> bs!1116414 (= (= lt!1890001 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216054 lambda!215982))))

(declare-fun bs!1116415 () Bool)

(assert (= bs!1116415 (and d!1505210 d!1504878)))

(assert (=> bs!1116415 (= (= lt!1890001 lt!1889398) (= lambda!216054 lambda!215970))))

(declare-fun bs!1116417 () Bool)

(assert (= bs!1116417 (and d!1505210 b!4724985)))

(assert (=> bs!1116417 (= (= lt!1890001 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216054 lambda!216042))))

(declare-fun bs!1116419 () Bool)

(assert (= bs!1116419 (and d!1505210 d!1505120)))

(assert (=> bs!1116419 (= (= lt!1890001 lt!1889896) (= lambda!216054 lambda!216044))))

(declare-fun bs!1116421 () Bool)

(assert (= bs!1116421 (and d!1505210 b!4724402)))

(assert (=> bs!1116421 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215934))))

(assert (=> bs!1116412 (= (= lt!1890001 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216054 lambda!215975))))

(declare-fun bs!1116424 () Bool)

(assert (= bs!1116424 (and d!1505210 b!4725038)))

(assert (=> bs!1116424 (= (= lt!1890001 lt!1889959) (= lambda!216054 lambda!216048))))

(declare-fun bs!1116426 () Bool)

(assert (= bs!1116426 (and d!1505210 d!1504864)))

(assert (=> bs!1116426 (= (= lt!1890001 lt!1889493) (= lambda!216054 lambda!215959))))

(declare-fun bs!1116428 () Bool)

(assert (= bs!1116428 (and d!1505210 b!4724658)))

(assert (=> bs!1116428 (= (= lt!1890001 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216054 lambda!216000))))

(assert (=> bs!1116407 (= (= lt!1890001 lt!1889361) (= lambda!216054 lambda!215932))))

(declare-fun bs!1116431 () Bool)

(assert (= bs!1116431 (and d!1505210 b!4724441)))

(assert (=> bs!1116431 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215943))))

(assert (=> bs!1116414 (= (= lt!1890001 lt!1889617) (= lambda!216054 lambda!215989))))

(declare-fun bs!1116433 () Bool)

(assert (= bs!1116433 (and d!1505210 b!4725040)))

(assert (=> bs!1116433 (= (= lt!1890001 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216054 lambda!216046))))

(declare-fun bs!1116435 () Bool)

(assert (= bs!1116435 (and d!1505210 b!4724436)))

(assert (=> bs!1116435 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215939))))

(declare-fun bs!1116437 () Bool)

(assert (= bs!1116437 (and d!1505210 d!1504820)))

(assert (=> bs!1116437 (= (= lt!1890001 lt!1889388) (= lambda!216054 lambda!215937))))

(declare-fun bs!1116439 () Bool)

(assert (= bs!1116439 (and d!1505210 b!4724320)))

(assert (=> bs!1116439 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215918))))

(declare-fun bs!1116440 () Bool)

(assert (= bs!1116440 (and d!1505210 b!4724400)))

(assert (=> bs!1116440 (= (= lt!1890001 lt!1889398) (= lambda!216054 lambda!215936))))

(declare-fun bs!1116442 () Bool)

(assert (= bs!1116442 (and d!1505210 b!4724987)))

(assert (=> bs!1116442 (= (= lt!1890001 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216054 lambda!216041))))

(assert (=> bs!1116424 (= (= lt!1890001 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216054 lambda!216047))))

(declare-fun bs!1116445 () Bool)

(assert (= bs!1116445 (and d!1505210 d!1504736)))

(assert (=> bs!1116445 (= (= lt!1890001 lt!1889297) (= lambda!216054 lambda!215923))))

(assert (=> bs!1116399 (= (= lt!1890001 lt!1889307) (= lambda!216054 lambda!215922))))

(declare-fun bs!1116448 () Bool)

(assert (= bs!1116448 (and d!1505210 b!4725133)))

(assert (=> bs!1116448 (= (= lt!1890001 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216054 lambda!216052))))

(declare-fun bs!1116449 () Bool)

(assert (= bs!1116449 (and d!1505210 b!4724593)))

(assert (=> bs!1116449 (= (= lt!1890001 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216054 lambda!215979))))

(declare-fun bs!1116451 () Bool)

(assert (= bs!1116451 (and d!1505210 d!1504846)))

(assert (=> bs!1116451 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215949))))

(declare-fun bs!1116453 () Bool)

(assert (= bs!1116453 (and d!1505210 b!4725135)))

(assert (=> bs!1116453 (= (= lt!1890001 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216054 lambda!216051))))

(declare-fun bs!1116455 () Bool)

(assert (= bs!1116455 (and d!1505210 b!4724439)))

(assert (=> bs!1116455 (= (= lt!1890001 lt!1889465) (= lambda!216054 lambda!215945))))

(declare-fun bs!1116456 () Bool)

(assert (= bs!1116456 (and d!1505210 d!1505122)))

(assert (=> bs!1116456 (= (= lt!1890001 lt!1889361) (= lambda!216054 lambda!216045))))

(assert (=> bs!1116417 (= (= lt!1890001 lt!1889906) (= lambda!216054 lambda!216043))))

(assert (=> bs!1116448 (= (= lt!1890001 lt!1890011) (= lambda!216054 lambda!216053))))

(assert (=> bs!1116455 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215944))))

(assert (=> bs!1116401 (= (= lt!1890001 lt!1889444) (= lambda!216054 lambda!215941))))

(assert (=> bs!1116440 (= (= lt!1890001 lt!1889044) (= lambda!216054 lambda!215935))))

(declare-fun bs!1116461 () Bool)

(assert (= bs!1116461 (and d!1505210 d!1504730)))

(assert (=> bs!1116461 (not (= lambda!216054 lambda!215835))))

(assert (=> d!1505210 true))

(declare-fun bm!330575 () Bool)

(declare-fun call!330580 () Unit!130501)

(assert (=> bm!330575 (= call!330580 (lemmaContainsAllItsOwnKeys!799 (+!2271 lt!1889044 (h!59185 newBucket!218))))))

(declare-fun e!2947012 () Bool)

(declare-fun b!4725132 () Bool)

(assert (=> b!4725132 (= e!2947012 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 newBucket!218))) lambda!216053))))

(declare-fun b!4725134 () Bool)

(declare-fun e!2947013 () Bool)

(assert (=> b!4725134 (= e!2947013 (invariantList!1513 (toList!5921 lt!1890001)))))

(declare-fun e!2947014 () ListMap!5285)

(assert (=> b!4725135 (= e!2947014 (+!2271 lt!1889044 (h!59185 newBucket!218)))))

(declare-fun lt!1890004 () Unit!130501)

(assert (=> b!4725135 (= lt!1890004 call!330580)))

(declare-fun call!330582 () Bool)

(assert (=> b!4725135 call!330582))

(declare-fun lt!1890018 () Unit!130501)

(assert (=> b!4725135 (= lt!1890018 lt!1890004)))

(declare-fun call!330581 () Bool)

(assert (=> b!4725135 call!330581))

(declare-fun lt!1890017 () Unit!130501)

(declare-fun Unit!130780 () Unit!130501)

(assert (=> b!4725135 (= lt!1890017 Unit!130780)))

(declare-fun b!4725136 () Bool)

(declare-fun res!1999434 () Bool)

(assert (=> b!4725136 (=> (not res!1999434) (not e!2947013))))

(assert (=> b!4725136 (= res!1999434 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 newBucket!218))) lambda!216054))))

(declare-fun c!807016 () Bool)

(declare-fun bm!330576 () Bool)

(declare-fun lt!1890016 () ListMap!5285)

(assert (=> bm!330576 (= call!330582 (forall!11596 (ite c!807016 (toList!5921 (+!2271 lt!1889044 (h!59185 newBucket!218))) (toList!5921 lt!1890016)) (ite c!807016 lambda!216051 lambda!216053)))))

(declare-fun bm!330577 () Bool)

(assert (=> bm!330577 (= call!330581 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 newBucket!218))) (ite c!807016 lambda!216051 lambda!216052)))))

(assert (=> d!1505210 e!2947013))

(declare-fun res!1999436 () Bool)

(assert (=> d!1505210 (=> (not res!1999436) (not e!2947013))))

(assert (=> d!1505210 (= res!1999436 (forall!11596 (t!360230 newBucket!218) lambda!216054))))

(assert (=> d!1505210 (= lt!1890001 e!2947014)))

(assert (=> d!1505210 (= c!807016 ((_ is Nil!52836) (t!360230 newBucket!218)))))

(assert (=> d!1505210 (noDuplicateKeys!2016 (t!360230 newBucket!218))))

(assert (=> d!1505210 (= (addToMapMapFromBucket!1446 (t!360230 newBucket!218) (+!2271 lt!1889044 (h!59185 newBucket!218))) lt!1890001)))

(assert (=> b!4725133 (= e!2947014 lt!1890011)))

(assert (=> b!4725133 (= lt!1890016 (+!2271 (+!2271 lt!1889044 (h!59185 newBucket!218)) (h!59185 (t!360230 newBucket!218))))))

(assert (=> b!4725133 (= lt!1890011 (addToMapMapFromBucket!1446 (t!360230 (t!360230 newBucket!218)) (+!2271 (+!2271 lt!1889044 (h!59185 newBucket!218)) (h!59185 (t!360230 newBucket!218)))))))

(declare-fun lt!1890020 () Unit!130501)

(assert (=> b!4725133 (= lt!1890020 call!330580)))

(assert (=> b!4725133 call!330581))

(declare-fun lt!1890019 () Unit!130501)

(assert (=> b!4725133 (= lt!1890019 lt!1890020)))

(assert (=> b!4725133 call!330582))

(declare-fun lt!1890006 () Unit!130501)

(declare-fun Unit!130781 () Unit!130501)

(assert (=> b!4725133 (= lt!1890006 Unit!130781)))

(assert (=> b!4725133 (forall!11596 (t!360230 (t!360230 newBucket!218)) lambda!216053)))

(declare-fun lt!1890012 () Unit!130501)

(declare-fun Unit!130782 () Unit!130501)

(assert (=> b!4725133 (= lt!1890012 Unit!130782)))

(declare-fun lt!1890007 () Unit!130501)

(declare-fun Unit!130783 () Unit!130501)

(assert (=> b!4725133 (= lt!1890007 Unit!130783)))

(declare-fun lt!1890010 () Unit!130501)

(assert (=> b!4725133 (= lt!1890010 (forallContained!3643 (toList!5921 lt!1890016) lambda!216053 (h!59185 (t!360230 newBucket!218))))))

(assert (=> b!4725133 (contains!16183 lt!1890016 (_1!30523 (h!59185 (t!360230 newBucket!218))))))

(declare-fun lt!1890009 () Unit!130501)

(declare-fun Unit!130784 () Unit!130501)

(assert (=> b!4725133 (= lt!1890009 Unit!130784)))

(assert (=> b!4725133 (contains!16183 lt!1890011 (_1!30523 (h!59185 (t!360230 newBucket!218))))))

(declare-fun lt!1890002 () Unit!130501)

(declare-fun Unit!130785 () Unit!130501)

(assert (=> b!4725133 (= lt!1890002 Unit!130785)))

(assert (=> b!4725133 (forall!11596 (t!360230 newBucket!218) lambda!216053)))

(declare-fun lt!1890003 () Unit!130501)

(declare-fun Unit!130786 () Unit!130501)

(assert (=> b!4725133 (= lt!1890003 Unit!130786)))

(assert (=> b!4725133 (forall!11596 (toList!5921 lt!1890016) lambda!216053)))

(declare-fun lt!1890014 () Unit!130501)

(declare-fun Unit!130787 () Unit!130501)

(assert (=> b!4725133 (= lt!1890014 Unit!130787)))

(declare-fun lt!1890008 () Unit!130501)

(declare-fun Unit!130788 () Unit!130501)

(assert (=> b!4725133 (= lt!1890008 Unit!130788)))

(declare-fun lt!1890015 () Unit!130501)

(assert (=> b!4725133 (= lt!1890015 (addForallContainsKeyThenBeforeAdding!798 (+!2271 lt!1889044 (h!59185 newBucket!218)) lt!1890011 (_1!30523 (h!59185 (t!360230 newBucket!218))) (_2!30523 (h!59185 (t!360230 newBucket!218)))))))

(assert (=> b!4725133 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 newBucket!218))) lambda!216053)))

(declare-fun lt!1890005 () Unit!130501)

(assert (=> b!4725133 (= lt!1890005 lt!1890015)))

(assert (=> b!4725133 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 newBucket!218))) lambda!216053)))

(declare-fun lt!1890021 () Unit!130501)

(declare-fun Unit!130789 () Unit!130501)

(assert (=> b!4725133 (= lt!1890021 Unit!130789)))

(declare-fun res!1999435 () Bool)

(assert (=> b!4725133 (= res!1999435 (forall!11596 (t!360230 newBucket!218) lambda!216053))))

(assert (=> b!4725133 (=> (not res!1999435) (not e!2947012))))

(assert (=> b!4725133 e!2947012))

(declare-fun lt!1890013 () Unit!130501)

(declare-fun Unit!130790 () Unit!130501)

(assert (=> b!4725133 (= lt!1890013 Unit!130790)))

(assert (= (and d!1505210 c!807016) b!4725135))

(assert (= (and d!1505210 (not c!807016)) b!4725133))

(assert (= (and b!4725133 res!1999435) b!4725132))

(assert (= (or b!4725135 b!4725133) bm!330575))

(assert (= (or b!4725135 b!4725133) bm!330577))

(assert (= (or b!4725135 b!4725133) bm!330576))

(assert (= (and d!1505210 res!1999436) b!4725136))

(assert (= (and b!4725136 res!1999434) b!4725134))

(declare-fun m!5663797 () Bool)

(assert (=> b!4725134 m!5663797))

(assert (=> bm!330575 m!5662241))

(declare-fun m!5663799 () Bool)

(assert (=> bm!330575 m!5663799))

(declare-fun m!5663801 () Bool)

(assert (=> b!4725136 m!5663801))

(declare-fun m!5663803 () Bool)

(assert (=> d!1505210 m!5663803))

(assert (=> d!1505210 m!5662295))

(declare-fun m!5663807 () Bool)

(assert (=> b!4725133 m!5663807))

(declare-fun m!5663811 () Bool)

(assert (=> b!4725133 m!5663811))

(declare-fun m!5663815 () Bool)

(assert (=> b!4725133 m!5663815))

(declare-fun m!5663817 () Bool)

(assert (=> b!4725133 m!5663817))

(declare-fun m!5663821 () Bool)

(assert (=> b!4725133 m!5663821))

(assert (=> b!4725133 m!5663807))

(assert (=> b!4725133 m!5662241))

(assert (=> b!4725133 m!5663811))

(declare-fun m!5663823 () Bool)

(assert (=> b!4725133 m!5663823))

(declare-fun m!5663825 () Bool)

(assert (=> b!4725133 m!5663825))

(assert (=> b!4725133 m!5662241))

(declare-fun m!5663827 () Bool)

(assert (=> b!4725133 m!5663827))

(declare-fun m!5663829 () Bool)

(assert (=> b!4725133 m!5663829))

(declare-fun m!5663831 () Bool)

(assert (=> b!4725133 m!5663831))

(assert (=> b!4725133 m!5663823))

(declare-fun m!5663833 () Bool)

(assert (=> bm!330576 m!5663833))

(assert (=> b!4725132 m!5663823))

(declare-fun m!5663835 () Bool)

(assert (=> bm!330577 m!5663835))

(assert (=> b!4724434 d!1505210))

(assert (=> b!4724434 d!1504926))

(declare-fun bs!1116472 () Bool)

(declare-fun d!1505252 () Bool)

(assert (= bs!1116472 (and d!1505252 b!4724511)))

(declare-fun lambda!216056 () Int)

(assert (=> bs!1116472 (= (= lt!1889444 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216056 lambda!215957))))

(declare-fun bs!1116473 () Bool)

(assert (= bs!1116473 (and d!1505252 b!4724389)))

(assert (=> bs!1116473 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215930))))

(declare-fun bs!1116474 () Bool)

(assert (= bs!1116474 (and d!1505252 d!1504826)))

(assert (=> bs!1116474 (= (= lt!1889444 lt!1889434) (= lambda!216056 lambda!215942))))

(declare-fun bs!1116475 () Bool)

(assert (= bs!1116475 (and d!1505252 b!4724318)))

(assert (=> bs!1116475 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215920))))

(declare-fun bs!1116476 () Bool)

(assert (= bs!1116476 (and d!1505252 d!1504828)))

(assert (=> bs!1116476 (= (= lt!1889444 lt!1889455) (= lambda!216056 lambda!215946))))

(declare-fun bs!1116477 () Bool)

(assert (= bs!1116477 (and d!1505252 b!4724434)))

(assert (=> bs!1116477 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215940))))

(declare-fun bs!1116478 () Bool)

(assert (= bs!1116478 (and d!1505252 b!4724513)))

(assert (=> bs!1116478 (= (= lt!1889444 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216056 lambda!215956))))

(declare-fun bs!1116480 () Bool)

(assert (= bs!1116480 (and d!1505252 b!4724558)))

(assert (=> bs!1116480 (= (= lt!1889444 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216056 lambda!215973))))

(declare-fun bs!1116481 () Bool)

(assert (= bs!1116481 (and d!1505252 d!1504918)))

(assert (=> bs!1116481 (= (= lt!1889444 lt!1889607) (= lambda!216056 lambda!215994))))

(declare-fun bs!1116483 () Bool)

(assert (= bs!1116483 (and d!1505252 d!1504728)))

(assert (=> bs!1116483 (not (= lambda!216056 lambda!215834))))

(declare-fun bs!1116485 () Bool)

(assert (= bs!1116485 (and d!1505252 b!4724387)))

(assert (=> bs!1116485 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215931))))

(declare-fun bs!1116487 () Bool)

(assert (= bs!1116487 (and d!1505252 d!1505138)))

(assert (=> bs!1116487 (= (= lt!1889444 lt!1889949) (= lambda!216056 lambda!216049))))

(declare-fun bs!1116489 () Bool)

(assert (= bs!1116489 (and d!1505252 d!1504898)))

(assert (=> bs!1116489 (= (= lt!1889444 lt!1889569) (= lambda!216056 lambda!215977))))

(declare-fun bs!1116491 () Bool)

(assert (= bs!1116491 (and d!1505252 b!4724656)))

(assert (=> bs!1116491 (= (= lt!1889444 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216056 lambda!216002))))

(declare-fun bs!1116493 () Bool)

(assert (= bs!1116493 (and d!1505252 d!1505210)))

(assert (=> bs!1116493 (= (= lt!1889444 lt!1890001) (= lambda!216056 lambda!216054))))

(declare-fun bs!1116495 () Bool)

(assert (= bs!1116495 (and d!1505252 d!1504812)))

(assert (=> bs!1116495 (= (= lt!1889444 lt!1889351) (= lambda!216056 lambda!215933))))

(assert (=> bs!1116491 (= (= lt!1889444 lt!1889688) (= lambda!216056 lambda!216003))))

(assert (=> bs!1116472 (= (= lt!1889444 lt!1889503) (= lambda!216056 lambda!215958))))

(declare-fun bs!1116499 () Bool)

(assert (= bs!1116499 (and d!1505252 d!1504946)))

(assert (=> bs!1116499 (= (= lt!1889444 lt!1889678) (= lambda!216056 lambda!216005))))

(declare-fun bs!1116501 () Bool)

(assert (= bs!1116501 (and d!1505252 b!4724556)))

(assert (=> bs!1116501 (= (= lt!1889444 lt!1889579) (= lambda!216056 lambda!215976))))

(declare-fun bs!1116503 () Bool)

(assert (= bs!1116503 (and d!1505252 b!4724591)))

(assert (=> bs!1116503 (= (= lt!1889444 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216056 lambda!215982))))

(declare-fun bs!1116505 () Bool)

(assert (= bs!1116505 (and d!1505252 d!1504878)))

(assert (=> bs!1116505 (= (= lt!1889444 lt!1889398) (= lambda!216056 lambda!215970))))

(declare-fun bs!1116507 () Bool)

(assert (= bs!1116507 (and d!1505252 b!4724985)))

(assert (=> bs!1116507 (= (= lt!1889444 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216056 lambda!216042))))

(declare-fun bs!1116509 () Bool)

(assert (= bs!1116509 (and d!1505252 d!1505120)))

(assert (=> bs!1116509 (= (= lt!1889444 lt!1889896) (= lambda!216056 lambda!216044))))

(declare-fun bs!1116511 () Bool)

(assert (= bs!1116511 (and d!1505252 b!4724402)))

(assert (=> bs!1116511 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215934))))

(assert (=> bs!1116501 (= (= lt!1889444 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216056 lambda!215975))))

(declare-fun bs!1116513 () Bool)

(assert (= bs!1116513 (and d!1505252 b!4725038)))

(assert (=> bs!1116513 (= (= lt!1889444 lt!1889959) (= lambda!216056 lambda!216048))))

(declare-fun bs!1116515 () Bool)

(assert (= bs!1116515 (and d!1505252 d!1504864)))

(assert (=> bs!1116515 (= (= lt!1889444 lt!1889493) (= lambda!216056 lambda!215959))))

(declare-fun bs!1116517 () Bool)

(assert (= bs!1116517 (and d!1505252 b!4724658)))

(assert (=> bs!1116517 (= (= lt!1889444 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216056 lambda!216000))))

(assert (=> bs!1116485 (= (= lt!1889444 lt!1889361) (= lambda!216056 lambda!215932))))

(declare-fun bs!1116519 () Bool)

(assert (= bs!1116519 (and d!1505252 b!4724441)))

(assert (=> bs!1116519 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215943))))

(assert (=> bs!1116503 (= (= lt!1889444 lt!1889617) (= lambda!216056 lambda!215989))))

(declare-fun bs!1116522 () Bool)

(assert (= bs!1116522 (and d!1505252 b!4725040)))

(assert (=> bs!1116522 (= (= lt!1889444 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216056 lambda!216046))))

(declare-fun bs!1116523 () Bool)

(assert (= bs!1116523 (and d!1505252 b!4724436)))

(assert (=> bs!1116523 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215939))))

(declare-fun bs!1116525 () Bool)

(assert (= bs!1116525 (and d!1505252 d!1504820)))

(assert (=> bs!1116525 (= (= lt!1889444 lt!1889388) (= lambda!216056 lambda!215937))))

(declare-fun bs!1116526 () Bool)

(assert (= bs!1116526 (and d!1505252 b!4724320)))

(assert (=> bs!1116526 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215918))))

(declare-fun bs!1116527 () Bool)

(assert (= bs!1116527 (and d!1505252 b!4724400)))

(assert (=> bs!1116527 (= (= lt!1889444 lt!1889398) (= lambda!216056 lambda!215936))))

(declare-fun bs!1116529 () Bool)

(assert (= bs!1116529 (and d!1505252 b!4724987)))

(assert (=> bs!1116529 (= (= lt!1889444 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216056 lambda!216041))))

(assert (=> bs!1116513 (= (= lt!1889444 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216056 lambda!216047))))

(declare-fun bs!1116532 () Bool)

(assert (= bs!1116532 (and d!1505252 d!1504736)))

(assert (=> bs!1116532 (= (= lt!1889444 lt!1889297) (= lambda!216056 lambda!215923))))

(assert (=> bs!1116475 (= (= lt!1889444 lt!1889307) (= lambda!216056 lambda!215922))))

(declare-fun bs!1116535 () Bool)

(assert (= bs!1116535 (and d!1505252 b!4725133)))

(assert (=> bs!1116535 (= (= lt!1889444 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216056 lambda!216052))))

(declare-fun bs!1116537 () Bool)

(assert (= bs!1116537 (and d!1505252 b!4724593)))

(assert (=> bs!1116537 (= (= lt!1889444 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216056 lambda!215979))))

(declare-fun bs!1116538 () Bool)

(assert (= bs!1116538 (and d!1505252 d!1504846)))

(assert (=> bs!1116538 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215949))))

(declare-fun bs!1116540 () Bool)

(assert (= bs!1116540 (and d!1505252 b!4725135)))

(assert (=> bs!1116540 (= (= lt!1889444 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216056 lambda!216051))))

(declare-fun bs!1116541 () Bool)

(assert (= bs!1116541 (and d!1505252 b!4724439)))

(assert (=> bs!1116541 (= (= lt!1889444 lt!1889465) (= lambda!216056 lambda!215945))))

(declare-fun bs!1116542 () Bool)

(assert (= bs!1116542 (and d!1505252 d!1505122)))

(assert (=> bs!1116542 (= (= lt!1889444 lt!1889361) (= lambda!216056 lambda!216045))))

(assert (=> bs!1116507 (= (= lt!1889444 lt!1889906) (= lambda!216056 lambda!216043))))

(assert (=> bs!1116535 (= (= lt!1889444 lt!1890011) (= lambda!216056 lambda!216053))))

(assert (=> bs!1116541 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215944))))

(assert (=> bs!1116477 (= lambda!216056 lambda!215941)))

(assert (=> bs!1116527 (= (= lt!1889444 lt!1889044) (= lambda!216056 lambda!215935))))

(declare-fun bs!1116546 () Bool)

(assert (= bs!1116546 (and d!1505252 d!1504730)))

(assert (=> bs!1116546 (not (= lambda!216056 lambda!215835))))

(assert (=> d!1505252 true))

(assert (=> d!1505252 (forall!11596 (toList!5921 lt!1889044) lambda!216056)))

(declare-fun lt!1890059 () Unit!130501)

(assert (=> d!1505252 (= lt!1890059 (choose!33347 lt!1889044 lt!1889444 (_1!30523 (h!59185 newBucket!218)) (_2!30523 (h!59185 newBucket!218))))))

(assert (=> d!1505252 (forall!11596 (toList!5921 (+!2271 lt!1889044 (tuple2!54459 (_1!30523 (h!59185 newBucket!218)) (_2!30523 (h!59185 newBucket!218))))) lambda!216056)))

(assert (=> d!1505252 (= (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889444 (_1!30523 (h!59185 newBucket!218)) (_2!30523 (h!59185 newBucket!218))) lt!1890059)))

(declare-fun bs!1116549 () Bool)

(assert (= bs!1116549 d!1505252))

(declare-fun m!5663845 () Bool)

(assert (=> bs!1116549 m!5663845))

(declare-fun m!5663847 () Bool)

(assert (=> bs!1116549 m!5663847))

(declare-fun m!5663849 () Bool)

(assert (=> bs!1116549 m!5663849))

(declare-fun m!5663851 () Bool)

(assert (=> bs!1116549 m!5663851))

(assert (=> b!4724434 d!1505252))

(declare-fun b!4725205 () Bool)

(declare-fun e!2947066 () Bool)

(declare-fun e!2947067 () Bool)

(assert (=> b!4725205 (= e!2947066 e!2947067)))

(declare-fun res!1999478 () Bool)

(assert (=> b!4725205 (=> (not res!1999478) (not e!2947067))))

(assert (=> b!4725205 (= res!1999478 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889449) (_1!30523 (h!59185 newBucket!218)))))))

(declare-fun bm!330587 () Bool)

(declare-fun call!330592 () Bool)

(declare-fun e!2947069 () List!52963)

(assert (=> bm!330587 (= call!330592 (contains!16188 e!2947069 (_1!30523 (h!59185 newBucket!218))))))

(declare-fun c!807032 () Bool)

(declare-fun c!807031 () Bool)

(assert (=> bm!330587 (= c!807032 c!807031)))

(declare-fun d!1505256 () Bool)

(assert (=> d!1505256 e!2947066))

(declare-fun res!1999479 () Bool)

(assert (=> d!1505256 (=> res!1999479 e!2947066)))

(declare-fun e!2947064 () Bool)

(assert (=> d!1505256 (= res!1999479 e!2947064)))

(declare-fun res!1999477 () Bool)

(assert (=> d!1505256 (=> (not res!1999477) (not e!2947064))))

(declare-fun lt!1890084 () Bool)

(assert (=> d!1505256 (= res!1999477 (not lt!1890084))))

(declare-fun lt!1890086 () Bool)

(assert (=> d!1505256 (= lt!1890084 lt!1890086)))

(declare-fun lt!1890083 () Unit!130501)

(declare-fun e!2947065 () Unit!130501)

(assert (=> d!1505256 (= lt!1890083 e!2947065)))

(assert (=> d!1505256 (= c!807031 lt!1890086)))

(assert (=> d!1505256 (= lt!1890086 (containsKey!3379 (toList!5921 lt!1889449) (_1!30523 (h!59185 newBucket!218))))))

(assert (=> d!1505256 (= (contains!16183 lt!1889449 (_1!30523 (h!59185 newBucket!218))) lt!1890084)))

(declare-fun b!4725206 () Bool)

(assert (=> b!4725206 (= e!2947069 (keys!18978 lt!1889449))))

(declare-fun b!4725207 () Bool)

(assert (=> b!4725207 (= e!2947069 (getKeysList!953 (toList!5921 lt!1889449)))))

(declare-fun b!4725208 () Bool)

(declare-fun lt!1890088 () Unit!130501)

(assert (=> b!4725208 (= e!2947065 lt!1890088)))

(declare-fun lt!1890087 () Unit!130501)

(assert (=> b!4725208 (= lt!1890087 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889449) (_1!30523 (h!59185 newBucket!218))))))

(assert (=> b!4725208 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889449) (_1!30523 (h!59185 newBucket!218))))))

(declare-fun lt!1890085 () Unit!130501)

(assert (=> b!4725208 (= lt!1890085 lt!1890087)))

(assert (=> b!4725208 (= lt!1890088 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889449) (_1!30523 (h!59185 newBucket!218))))))

(assert (=> b!4725208 call!330592))

(declare-fun b!4725209 () Bool)

(assert (=> b!4725209 (= e!2947064 (not (contains!16188 (keys!18978 lt!1889449) (_1!30523 (h!59185 newBucket!218)))))))

(declare-fun b!4725210 () Bool)

(assert (=> b!4725210 false))

(declare-fun lt!1890082 () Unit!130501)

(declare-fun lt!1890081 () Unit!130501)

(assert (=> b!4725210 (= lt!1890082 lt!1890081)))

(assert (=> b!4725210 (containsKey!3379 (toList!5921 lt!1889449) (_1!30523 (h!59185 newBucket!218)))))

(assert (=> b!4725210 (= lt!1890081 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889449) (_1!30523 (h!59185 newBucket!218))))))

(declare-fun e!2947068 () Unit!130501)

(declare-fun Unit!130802 () Unit!130501)

(assert (=> b!4725210 (= e!2947068 Unit!130802)))

(declare-fun b!4725211 () Bool)

(assert (=> b!4725211 (= e!2947065 e!2947068)))

(declare-fun c!807033 () Bool)

(assert (=> b!4725211 (= c!807033 call!330592)))

(declare-fun b!4725212 () Bool)

(assert (=> b!4725212 (= e!2947067 (contains!16188 (keys!18978 lt!1889449) (_1!30523 (h!59185 newBucket!218))))))

(declare-fun b!4725213 () Bool)

(declare-fun Unit!130803 () Unit!130501)

(assert (=> b!4725213 (= e!2947068 Unit!130803)))

(assert (= (and d!1505256 c!807031) b!4725208))

(assert (= (and d!1505256 (not c!807031)) b!4725211))

(assert (= (and b!4725211 c!807033) b!4725210))

(assert (= (and b!4725211 (not c!807033)) b!4725213))

(assert (= (or b!4725208 b!4725211) bm!330587))

(assert (= (and bm!330587 c!807032) b!4725207))

(assert (= (and bm!330587 (not c!807032)) b!4725206))

(assert (= (and d!1505256 res!1999477) b!4725209))

(assert (= (and d!1505256 (not res!1999479)) b!4725205))

(assert (= (and b!4725205 res!1999478) b!4725212))

(declare-fun m!5663853 () Bool)

(assert (=> b!4725206 m!5663853))

(assert (=> b!4725212 m!5663853))

(assert (=> b!4725212 m!5663853))

(declare-fun m!5663855 () Bool)

(assert (=> b!4725212 m!5663855))

(declare-fun m!5663857 () Bool)

(assert (=> b!4725205 m!5663857))

(assert (=> b!4725205 m!5663857))

(declare-fun m!5663859 () Bool)

(assert (=> b!4725205 m!5663859))

(declare-fun m!5663861 () Bool)

(assert (=> b!4725207 m!5663861))

(declare-fun m!5663863 () Bool)

(assert (=> d!1505256 m!5663863))

(declare-fun m!5663865 () Bool)

(assert (=> b!4725208 m!5663865))

(assert (=> b!4725208 m!5663857))

(assert (=> b!4725208 m!5663857))

(assert (=> b!4725208 m!5663859))

(declare-fun m!5663867 () Bool)

(assert (=> b!4725208 m!5663867))

(assert (=> b!4725209 m!5663853))

(assert (=> b!4725209 m!5663853))

(assert (=> b!4725209 m!5663855))

(declare-fun m!5663869 () Bool)

(assert (=> bm!330587 m!5663869))

(assert (=> b!4725210 m!5663863))

(declare-fun m!5663871 () Bool)

(assert (=> b!4725210 m!5663871))

(assert (=> b!4724434 d!1505256))

(declare-fun d!1505258 () Bool)

(assert (=> d!1505258 (dynLambda!21825 lambda!215941 (h!59185 newBucket!218))))

(declare-fun lt!1890089 () Unit!130501)

(assert (=> d!1505258 (= lt!1890089 (choose!33346 (toList!5921 lt!1889449) lambda!215941 (h!59185 newBucket!218)))))

(declare-fun e!2947070 () Bool)

(assert (=> d!1505258 e!2947070))

(declare-fun res!1999480 () Bool)

(assert (=> d!1505258 (=> (not res!1999480) (not e!2947070))))

(assert (=> d!1505258 (= res!1999480 (forall!11596 (toList!5921 lt!1889449) lambda!215941))))

(assert (=> d!1505258 (= (forallContained!3643 (toList!5921 lt!1889449) lambda!215941 (h!59185 newBucket!218)) lt!1890089)))

(declare-fun b!4725214 () Bool)

(assert (=> b!4725214 (= e!2947070 (contains!16186 (toList!5921 lt!1889449) (h!59185 newBucket!218)))))

(assert (= (and d!1505258 res!1999480) b!4725214))

(declare-fun b_lambda!179353 () Bool)

(assert (=> (not b_lambda!179353) (not d!1505258)))

(assert (=> d!1505258 m!5663623))

(declare-fun m!5663873 () Bool)

(assert (=> d!1505258 m!5663873))

(assert (=> d!1505258 m!5662245))

(declare-fun m!5663875 () Bool)

(assert (=> b!4725214 m!5663875))

(assert (=> b!4724434 d!1505258))

(declare-fun d!1505260 () Bool)

(declare-fun res!1999481 () Bool)

(declare-fun e!2947071 () Bool)

(assert (=> d!1505260 (=> res!1999481 e!2947071)))

(assert (=> d!1505260 (= res!1999481 ((_ is Nil!52836) (ite c!806840 (toList!5921 lt!1889044) (toList!5921 lt!1889312))))))

(assert (=> d!1505260 (= (forall!11596 (ite c!806840 (toList!5921 lt!1889044) (toList!5921 lt!1889312)) (ite c!806840 lambda!215918 lambda!215922)) e!2947071)))

(declare-fun b!4725215 () Bool)

(declare-fun e!2947072 () Bool)

(assert (=> b!4725215 (= e!2947071 e!2947072)))

(declare-fun res!1999482 () Bool)

(assert (=> b!4725215 (=> (not res!1999482) (not e!2947072))))

(assert (=> b!4725215 (= res!1999482 (dynLambda!21825 (ite c!806840 lambda!215918 lambda!215922) (h!59185 (ite c!806840 (toList!5921 lt!1889044) (toList!5921 lt!1889312)))))))

(declare-fun b!4725216 () Bool)

(assert (=> b!4725216 (= e!2947072 (forall!11596 (t!360230 (ite c!806840 (toList!5921 lt!1889044) (toList!5921 lt!1889312))) (ite c!806840 lambda!215918 lambda!215922)))))

(assert (= (and d!1505260 (not res!1999481)) b!4725215))

(assert (= (and b!4725215 res!1999482) b!4725216))

(declare-fun b_lambda!179355 () Bool)

(assert (=> (not b_lambda!179355) (not b!4725215)))

(declare-fun m!5663877 () Bool)

(assert (=> b!4725215 m!5663877))

(declare-fun m!5663879 () Bool)

(assert (=> b!4725216 m!5663879))

(assert (=> bm!330487 d!1505260))

(declare-fun b!4725220 () Bool)

(declare-fun e!2947074 () Option!12365)

(assert (=> b!4725220 (= e!2947074 None!12364)))

(declare-fun b!4725217 () Bool)

(declare-fun e!2947073 () Option!12365)

(assert (=> b!4725217 (= e!2947073 (Some!12364 (_2!30523 (h!59185 (toList!5921 lt!1889385)))))))

(declare-fun b!4725218 () Bool)

(assert (=> b!4725218 (= e!2947073 e!2947074)))

(declare-fun c!807035 () Bool)

(assert (=> b!4725218 (= c!807035 (and ((_ is Cons!52836) (toList!5921 lt!1889385)) (not (= (_1!30523 (h!59185 (toList!5921 lt!1889385))) (_1!30523 (h!59185 oldBucket!34))))))))

(declare-fun b!4725219 () Bool)

(assert (=> b!4725219 (= e!2947074 (getValueByKey!1961 (t!360230 (toList!5921 lt!1889385)) (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun d!1505262 () Bool)

(declare-fun c!807034 () Bool)

(assert (=> d!1505262 (= c!807034 (and ((_ is Cons!52836) (toList!5921 lt!1889385)) (= (_1!30523 (h!59185 (toList!5921 lt!1889385))) (_1!30523 (h!59185 oldBucket!34)))))))

(assert (=> d!1505262 (= (getValueByKey!1961 (toList!5921 lt!1889385) (_1!30523 (h!59185 oldBucket!34))) e!2947073)))

(assert (= (and d!1505262 c!807034) b!4725217))

(assert (= (and d!1505262 (not c!807034)) b!4725218))

(assert (= (and b!4725218 c!807035) b!4725219))

(assert (= (and b!4725218 (not c!807035)) b!4725220))

(declare-fun m!5663881 () Bool)

(assert (=> b!4725219 m!5663881))

(assert (=> b!4724397 d!1505262))

(declare-fun d!1505264 () Bool)

(declare-fun res!1999483 () Bool)

(declare-fun e!2947075 () Bool)

(assert (=> d!1505264 (=> res!1999483 e!2947075)))

(assert (=> d!1505264 (= res!1999483 (not ((_ is Cons!52836) (_2!30524 (h!59186 lt!1889048)))))))

(assert (=> d!1505264 (= (noDuplicateKeys!2016 (_2!30524 (h!59186 lt!1889048))) e!2947075)))

(declare-fun b!4725221 () Bool)

(declare-fun e!2947076 () Bool)

(assert (=> b!4725221 (= e!2947075 e!2947076)))

(declare-fun res!1999484 () Bool)

(assert (=> b!4725221 (=> (not res!1999484) (not e!2947076))))

(assert (=> b!4725221 (= res!1999484 (not (containsKey!3375 (t!360230 (_2!30524 (h!59186 lt!1889048))) (_1!30523 (h!59185 (_2!30524 (h!59186 lt!1889048)))))))))

(declare-fun b!4725222 () Bool)

(assert (=> b!4725222 (= e!2947076 (noDuplicateKeys!2016 (t!360230 (_2!30524 (h!59186 lt!1889048)))))))

(assert (= (and d!1505264 (not res!1999483)) b!4725221))

(assert (= (and b!4725221 res!1999484) b!4725222))

(declare-fun m!5663883 () Bool)

(assert (=> b!4725221 m!5663883))

(declare-fun m!5663885 () Bool)

(assert (=> b!4725222 m!5663885))

(assert (=> bs!1115195 d!1505264))

(declare-fun d!1505266 () Bool)

(declare-fun res!1999485 () Bool)

(declare-fun e!2947077 () Bool)

(assert (=> d!1505266 (=> res!1999485 e!2947077)))

(assert (=> d!1505266 (= res!1999485 ((_ is Nil!52836) (ite c!806869 (toList!5921 lt!1889044) (toList!5921 lt!1889470))))))

(assert (=> d!1505266 (= (forall!11596 (ite c!806869 (toList!5921 lt!1889044) (toList!5921 lt!1889470)) (ite c!806869 lambda!215943 lambda!215945)) e!2947077)))

(declare-fun b!4725223 () Bool)

(declare-fun e!2947078 () Bool)

(assert (=> b!4725223 (= e!2947077 e!2947078)))

(declare-fun res!1999486 () Bool)

(assert (=> b!4725223 (=> (not res!1999486) (not e!2947078))))

(assert (=> b!4725223 (= res!1999486 (dynLambda!21825 (ite c!806869 lambda!215943 lambda!215945) (h!59185 (ite c!806869 (toList!5921 lt!1889044) (toList!5921 lt!1889470)))))))

(declare-fun b!4725224 () Bool)

(assert (=> b!4725224 (= e!2947078 (forall!11596 (t!360230 (ite c!806869 (toList!5921 lt!1889044) (toList!5921 lt!1889470))) (ite c!806869 lambda!215943 lambda!215945)))))

(assert (= (and d!1505266 (not res!1999485)) b!4725223))

(assert (= (and b!4725223 res!1999486) b!4725224))

(declare-fun b_lambda!179357 () Bool)

(assert (=> (not b_lambda!179357) (not b!4725223)))

(declare-fun m!5663887 () Bool)

(assert (=> b!4725223 m!5663887))

(declare-fun m!5663889 () Bool)

(assert (=> b!4725224 m!5663889))

(assert (=> bm!330505 d!1505266))

(declare-fun d!1505268 () Bool)

(declare-fun res!1999487 () Bool)

(declare-fun e!2947079 () Bool)

(assert (=> d!1505268 (=> res!1999487 e!2947079)))

(assert (=> d!1505268 (= res!1999487 ((_ is Nil!52837) (t!360231 (toList!5922 lm!2023))))))

(assert (=> d!1505268 (= (forall!11594 (t!360231 (toList!5922 lm!2023)) lambda!215822) e!2947079)))

(declare-fun b!4725225 () Bool)

(declare-fun e!2947080 () Bool)

(assert (=> b!4725225 (= e!2947079 e!2947080)))

(declare-fun res!1999488 () Bool)

(assert (=> b!4725225 (=> (not res!1999488) (not e!2947080))))

(assert (=> b!4725225 (= res!1999488 (dynLambda!21823 lambda!215822 (h!59186 (t!360231 (toList!5922 lm!2023)))))))

(declare-fun b!4725226 () Bool)

(assert (=> b!4725226 (= e!2947080 (forall!11594 (t!360231 (t!360231 (toList!5922 lm!2023))) lambda!215822))))

(assert (= (and d!1505268 (not res!1999487)) b!4725225))

(assert (= (and b!4725225 res!1999488) b!4725226))

(declare-fun b_lambda!179359 () Bool)

(assert (=> (not b_lambda!179359) (not b!4725225)))

(declare-fun m!5663891 () Bool)

(assert (=> b!4725225 m!5663891))

(declare-fun m!5663893 () Bool)

(assert (=> b!4725226 m!5663893))

(assert (=> b!4724446 d!1505268))

(declare-fun d!1505270 () Bool)

(assert (=> d!1505270 (= (invariantList!1513 (toList!5921 lt!1889338)) (noDuplicatedKeys!376 (toList!5921 lt!1889338)))))

(declare-fun bs!1116587 () Bool)

(assert (= bs!1116587 d!1505270))

(declare-fun m!5663895 () Bool)

(assert (=> bs!1116587 m!5663895))

(assert (=> d!1504786 d!1505270))

(declare-fun d!1505272 () Bool)

(declare-fun res!1999489 () Bool)

(declare-fun e!2947081 () Bool)

(assert (=> d!1505272 (=> res!1999489 e!2947081)))

(assert (=> d!1505272 (= res!1999489 ((_ is Nil!52837) lt!1889048))))

(assert (=> d!1505272 (= (forall!11594 lt!1889048 lambda!215928) e!2947081)))

(declare-fun b!4725227 () Bool)

(declare-fun e!2947082 () Bool)

(assert (=> b!4725227 (= e!2947081 e!2947082)))

(declare-fun res!1999490 () Bool)

(assert (=> b!4725227 (=> (not res!1999490) (not e!2947082))))

(assert (=> b!4725227 (= res!1999490 (dynLambda!21823 lambda!215928 (h!59186 lt!1889048)))))

(declare-fun b!4725228 () Bool)

(assert (=> b!4725228 (= e!2947082 (forall!11594 (t!360231 lt!1889048) lambda!215928))))

(assert (= (and d!1505272 (not res!1999489)) b!4725227))

(assert (= (and b!4725227 res!1999490) b!4725228))

(declare-fun b_lambda!179361 () Bool)

(assert (=> (not b_lambda!179361) (not b!4725227)))

(declare-fun m!5663897 () Bool)

(assert (=> b!4725227 m!5663897))

(declare-fun m!5663899 () Bool)

(assert (=> b!4725228 m!5663899))

(assert (=> d!1504786 d!1505272))

(declare-fun d!1505274 () Bool)

(declare-fun res!1999491 () Bool)

(declare-fun e!2947083 () Bool)

(assert (=> d!1505274 (=> res!1999491 e!2947083)))

(assert (=> d!1505274 (= res!1999491 ((_ is Nil!52836) (Cons!52836 lt!1889051 lt!1889050)))))

(assert (=> d!1505274 (= (forall!11596 (Cons!52836 lt!1889051 lt!1889050) lambda!215933) e!2947083)))

(declare-fun b!4725229 () Bool)

(declare-fun e!2947084 () Bool)

(assert (=> b!4725229 (= e!2947083 e!2947084)))

(declare-fun res!1999492 () Bool)

(assert (=> b!4725229 (=> (not res!1999492) (not e!2947084))))

(assert (=> b!4725229 (= res!1999492 (dynLambda!21825 lambda!215933 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))

(declare-fun b!4725230 () Bool)

(assert (=> b!4725230 (= e!2947084 (forall!11596 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) lambda!215933))))

(assert (= (and d!1505274 (not res!1999491)) b!4725229))

(assert (= (and b!4725229 res!1999492) b!4725230))

(declare-fun b_lambda!179363 () Bool)

(assert (=> (not b_lambda!179363) (not b!4725229)))

(declare-fun m!5663901 () Bool)

(assert (=> b!4725229 m!5663901))

(declare-fun m!5663903 () Bool)

(assert (=> b!4725230 m!5663903))

(assert (=> d!1504812 d!1505274))

(declare-fun d!1505276 () Bool)

(declare-fun res!1999493 () Bool)

(declare-fun e!2947085 () Bool)

(assert (=> d!1505276 (=> res!1999493 e!2947085)))

(assert (=> d!1505276 (= res!1999493 (not ((_ is Cons!52836) (Cons!52836 lt!1889051 lt!1889050))))))

(assert (=> d!1505276 (= (noDuplicateKeys!2016 (Cons!52836 lt!1889051 lt!1889050)) e!2947085)))

(declare-fun b!4725231 () Bool)

(declare-fun e!2947086 () Bool)

(assert (=> b!4725231 (= e!2947085 e!2947086)))

(declare-fun res!1999494 () Bool)

(assert (=> b!4725231 (=> (not res!1999494) (not e!2947086))))

(assert (=> b!4725231 (= res!1999494 (not (containsKey!3375 (t!360230 (Cons!52836 lt!1889051 lt!1889050)) (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050))))))))

(declare-fun b!4725232 () Bool)

(assert (=> b!4725232 (= e!2947086 (noDuplicateKeys!2016 (t!360230 (Cons!52836 lt!1889051 lt!1889050))))))

(assert (= (and d!1505276 (not res!1999493)) b!4725231))

(assert (= (and b!4725231 res!1999494) b!4725232))

(declare-fun m!5663905 () Bool)

(assert (=> b!4725231 m!5663905))

(assert (=> b!4725232 m!5663383))

(assert (=> d!1504812 d!1505276))

(declare-fun d!1505278 () Bool)

(declare-fun res!1999495 () Bool)

(declare-fun e!2947087 () Bool)

(assert (=> d!1505278 (=> res!1999495 e!2947087)))

(assert (=> d!1505278 (= res!1999495 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1505278 (= (forall!11596 (toList!5921 lt!1889044) lambda!215937) e!2947087)))

(declare-fun b!4725233 () Bool)

(declare-fun e!2947088 () Bool)

(assert (=> b!4725233 (= e!2947087 e!2947088)))

(declare-fun res!1999496 () Bool)

(assert (=> b!4725233 (=> (not res!1999496) (not e!2947088))))

(assert (=> b!4725233 (= res!1999496 (dynLambda!21825 lambda!215937 (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4725234 () Bool)

(assert (=> b!4725234 (= e!2947088 (forall!11596 (t!360230 (toList!5921 lt!1889044)) lambda!215937))))

(assert (= (and d!1505278 (not res!1999495)) b!4725233))

(assert (= (and b!4725233 res!1999496) b!4725234))

(declare-fun b_lambda!179365 () Bool)

(assert (=> (not b_lambda!179365) (not b!4725233)))

(declare-fun m!5663907 () Bool)

(assert (=> b!4725233 m!5663907))

(declare-fun m!5663909 () Bool)

(assert (=> b!4725234 m!5663909))

(assert (=> b!4724403 d!1505278))

(declare-fun d!1505280 () Bool)

(declare-fun res!1999497 () Bool)

(declare-fun e!2947089 () Bool)

(assert (=> d!1505280 (=> res!1999497 e!2947089)))

(assert (=> d!1505280 (= res!1999497 ((_ is Nil!52836) (_2!30524 (h!59186 (toList!5922 lm!2023)))))))

(assert (=> d!1505280 (= (forall!11596 (_2!30524 (h!59186 (toList!5922 lm!2023))) lambda!215923) e!2947089)))

(declare-fun b!4725235 () Bool)

(declare-fun e!2947090 () Bool)

(assert (=> b!4725235 (= e!2947089 e!2947090)))

(declare-fun res!1999498 () Bool)

(assert (=> b!4725235 (=> (not res!1999498) (not e!2947090))))

(assert (=> b!4725235 (= res!1999498 (dynLambda!21825 lambda!215923 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(declare-fun b!4725236 () Bool)

(assert (=> b!4725236 (= e!2947090 (forall!11596 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) lambda!215923))))

(assert (= (and d!1505280 (not res!1999497)) b!4725235))

(assert (= (and b!4725235 res!1999498) b!4725236))

(declare-fun b_lambda!179367 () Bool)

(assert (=> (not b_lambda!179367) (not b!4725235)))

(declare-fun m!5663911 () Bool)

(assert (=> b!4725235 m!5663911))

(declare-fun m!5663913 () Bool)

(assert (=> b!4725236 m!5663913))

(assert (=> d!1504736 d!1505280))

(declare-fun d!1505282 () Bool)

(declare-fun res!1999499 () Bool)

(declare-fun e!2947091 () Bool)

(assert (=> d!1505282 (=> res!1999499 e!2947091)))

(assert (=> d!1505282 (= res!1999499 (not ((_ is Cons!52836) (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (=> d!1505282 (= (noDuplicateKeys!2016 (_2!30524 (h!59186 (toList!5922 lm!2023)))) e!2947091)))

(declare-fun b!4725237 () Bool)

(declare-fun e!2947092 () Bool)

(assert (=> b!4725237 (= e!2947091 e!2947092)))

(declare-fun res!1999500 () Bool)

(assert (=> b!4725237 (=> (not res!1999500) (not e!2947092))))

(assert (=> b!4725237 (= res!1999500 (not (containsKey!3375 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))))

(declare-fun b!4725238 () Bool)

(assert (=> b!4725238 (= e!2947092 (noDuplicateKeys!2016 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (= (and d!1505282 (not res!1999499)) b!4725237))

(assert (= (and b!4725237 res!1999500) b!4725238))

(declare-fun m!5663915 () Bool)

(assert (=> b!4725237 m!5663915))

(declare-fun m!5663917 () Bool)

(assert (=> b!4725238 m!5663917))

(assert (=> d!1504736 d!1505282))

(declare-fun d!1505284 () Bool)

(declare-fun c!807036 () Bool)

(assert (=> d!1505284 (= c!807036 ((_ is Nil!52836) (toList!5921 (+!2271 lt!1889047 (h!59185 oldBucket!34)))))))

(declare-fun e!2947093 () (InoxSet tuple2!54458))

(assert (=> d!1505284 (= (content!9398 (toList!5921 (+!2271 lt!1889047 (h!59185 oldBucket!34)))) e!2947093)))

(declare-fun b!4725239 () Bool)

(assert (=> b!4725239 (= e!2947093 ((as const (Array tuple2!54458 Bool)) false))))

(declare-fun b!4725240 () Bool)

(assert (=> b!4725240 (= e!2947093 ((_ map or) (store ((as const (Array tuple2!54458 Bool)) false) (h!59185 (toList!5921 (+!2271 lt!1889047 (h!59185 oldBucket!34)))) true) (content!9398 (t!360230 (toList!5921 (+!2271 lt!1889047 (h!59185 oldBucket!34)))))))))

(assert (= (and d!1505284 c!807036) b!4725239))

(assert (= (and d!1505284 (not c!807036)) b!4725240))

(declare-fun m!5663919 () Bool)

(assert (=> b!4725240 m!5663919))

(declare-fun m!5663921 () Bool)

(assert (=> b!4725240 m!5663921))

(assert (=> d!1504794 d!1505284))

(declare-fun d!1505286 () Bool)

(declare-fun c!807037 () Bool)

(assert (=> d!1505286 (= c!807037 ((_ is Nil!52836) (toList!5921 (addToMapMapFromBucket!1446 oldBucket!34 lt!1889044))))))

(declare-fun e!2947094 () (InoxSet tuple2!54458))

(assert (=> d!1505286 (= (content!9398 (toList!5921 (addToMapMapFromBucket!1446 oldBucket!34 lt!1889044))) e!2947094)))

(declare-fun b!4725241 () Bool)

(assert (=> b!4725241 (= e!2947094 ((as const (Array tuple2!54458 Bool)) false))))

(declare-fun b!4725242 () Bool)

(assert (=> b!4725242 (= e!2947094 ((_ map or) (store ((as const (Array tuple2!54458 Bool)) false) (h!59185 (toList!5921 (addToMapMapFromBucket!1446 oldBucket!34 lt!1889044))) true) (content!9398 (t!360230 (toList!5921 (addToMapMapFromBucket!1446 oldBucket!34 lt!1889044))))))))

(assert (= (and d!1505286 c!807037) b!4725241))

(assert (= (and d!1505286 (not c!807037)) b!4725242))

(declare-fun m!5663923 () Bool)

(assert (=> b!4725242 m!5663923))

(declare-fun m!5663925 () Bool)

(assert (=> b!4725242 m!5663925))

(assert (=> d!1504794 d!1505286))

(assert (=> bm!330504 d!1504846))

(declare-fun d!1505288 () Bool)

(declare-fun res!1999501 () Bool)

(declare-fun e!2947095 () Bool)

(assert (=> d!1505288 (=> res!1999501 e!2947095)))

(assert (=> d!1505288 (= res!1999501 ((_ is Nil!52836) (_2!30524 (h!59186 (toList!5922 lm!2023)))))))

(assert (=> d!1505288 (= (forall!11596 (_2!30524 (h!59186 (toList!5922 lm!2023))) lambda!215922) e!2947095)))

(declare-fun b!4725243 () Bool)

(declare-fun e!2947096 () Bool)

(assert (=> b!4725243 (= e!2947095 e!2947096)))

(declare-fun res!1999502 () Bool)

(assert (=> b!4725243 (=> (not res!1999502) (not e!2947096))))

(assert (=> b!4725243 (= res!1999502 (dynLambda!21825 lambda!215922 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(declare-fun b!4725244 () Bool)

(assert (=> b!4725244 (= e!2947096 (forall!11596 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) lambda!215922))))

(assert (= (and d!1505288 (not res!1999501)) b!4725243))

(assert (= (and b!4725243 res!1999502) b!4725244))

(declare-fun b_lambda!179369 () Bool)

(assert (=> (not b_lambda!179369) (not b!4725243)))

(declare-fun m!5663927 () Bool)

(assert (=> b!4725243 m!5663927))

(assert (=> b!4725244 m!5662025))

(assert (=> b!4724318 d!1505288))

(declare-fun d!1505290 () Bool)

(declare-fun e!2947097 () Bool)

(assert (=> d!1505290 e!2947097))

(declare-fun res!1999504 () Bool)

(assert (=> d!1505290 (=> (not res!1999504) (not e!2947097))))

(declare-fun lt!1890091 () ListMap!5285)

(assert (=> d!1505290 (= res!1999504 (contains!16183 lt!1890091 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun lt!1890093 () List!52960)

(assert (=> d!1505290 (= lt!1890091 (ListMap!5286 lt!1890093))))

(declare-fun lt!1890092 () Unit!130501)

(declare-fun lt!1890090 () Unit!130501)

(assert (=> d!1505290 (= lt!1890092 lt!1890090)))

(assert (=> d!1505290 (= (getValueByKey!1961 lt!1890093 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (Some!12364 (_2!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> d!1505290 (= lt!1890090 (lemmaContainsTupThenGetReturnValue!1088 lt!1890093 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (_2!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> d!1505290 (= lt!1890093 (insertNoDuplicatedKeys!596 (toList!5921 lt!1889044) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (_2!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> d!1505290 (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1890091)))

(declare-fun b!4725245 () Bool)

(declare-fun res!1999503 () Bool)

(assert (=> b!4725245 (=> (not res!1999503) (not e!2947097))))

(assert (=> b!4725245 (= res!1999503 (= (getValueByKey!1961 (toList!5921 lt!1890091) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (Some!12364 (_2!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))))

(declare-fun b!4725246 () Bool)

(assert (=> b!4725246 (= e!2947097 (contains!16186 (toList!5921 lt!1890091) (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (= (and d!1505290 res!1999504) b!4725245))

(assert (= (and b!4725245 res!1999503) b!4725246))

(declare-fun m!5663929 () Bool)

(assert (=> d!1505290 m!5663929))

(declare-fun m!5663931 () Bool)

(assert (=> d!1505290 m!5663931))

(declare-fun m!5663933 () Bool)

(assert (=> d!1505290 m!5663933))

(declare-fun m!5663935 () Bool)

(assert (=> d!1505290 m!5663935))

(declare-fun m!5663937 () Bool)

(assert (=> b!4725245 m!5663937))

(declare-fun m!5663939 () Bool)

(assert (=> b!4725246 m!5663939))

(assert (=> b!4724318 d!1505290))

(declare-fun bs!1116607 () Bool)

(declare-fun b!4725250 () Bool)

(assert (= bs!1116607 (and b!4725250 b!4724511)))

(declare-fun lambda!216061 () Int)

(assert (=> bs!1116607 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216061 lambda!215957))))

(declare-fun bs!1116610 () Bool)

(assert (= bs!1116610 (and b!4725250 b!4724389)))

(assert (=> bs!1116610 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215930))))

(declare-fun bs!1116611 () Bool)

(assert (= bs!1116611 (and b!4725250 d!1504826)))

(assert (=> bs!1116611 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889434) (= lambda!216061 lambda!215942))))

(declare-fun bs!1116613 () Bool)

(assert (= bs!1116613 (and b!4725250 b!4724318)))

(assert (=> bs!1116613 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215920))))

(declare-fun bs!1116615 () Bool)

(assert (= bs!1116615 (and b!4725250 d!1504828)))

(assert (=> bs!1116615 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889455) (= lambda!216061 lambda!215946))))

(declare-fun bs!1116617 () Bool)

(assert (= bs!1116617 (and b!4725250 b!4724434)))

(assert (=> bs!1116617 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215940))))

(declare-fun bs!1116619 () Bool)

(assert (= bs!1116619 (and b!4725250 b!4724558)))

(assert (=> bs!1116619 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216061 lambda!215973))))

(declare-fun bs!1116620 () Bool)

(assert (= bs!1116620 (and b!4725250 d!1504918)))

(assert (=> bs!1116620 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889607) (= lambda!216061 lambda!215994))))

(declare-fun bs!1116621 () Bool)

(assert (= bs!1116621 (and b!4725250 d!1504728)))

(assert (=> bs!1116621 (not (= lambda!216061 lambda!215834))))

(declare-fun bs!1116623 () Bool)

(assert (= bs!1116623 (and b!4725250 b!4724387)))

(assert (=> bs!1116623 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215931))))

(declare-fun bs!1116625 () Bool)

(assert (= bs!1116625 (and b!4725250 d!1505138)))

(assert (=> bs!1116625 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889949) (= lambda!216061 lambda!216049))))

(declare-fun bs!1116627 () Bool)

(assert (= bs!1116627 (and b!4725250 d!1504898)))

(assert (=> bs!1116627 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889569) (= lambda!216061 lambda!215977))))

(declare-fun bs!1116629 () Bool)

(assert (= bs!1116629 (and b!4725250 b!4724656)))

(assert (=> bs!1116629 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216061 lambda!216002))))

(declare-fun bs!1116631 () Bool)

(assert (= bs!1116631 (and b!4725250 d!1505210)))

(assert (=> bs!1116631 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1890001) (= lambda!216061 lambda!216054))))

(declare-fun bs!1116633 () Bool)

(assert (= bs!1116633 (and b!4725250 d!1504812)))

(assert (=> bs!1116633 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889351) (= lambda!216061 lambda!215933))))

(assert (=> bs!1116629 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889688) (= lambda!216061 lambda!216003))))

(assert (=> bs!1116607 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889503) (= lambda!216061 lambda!215958))))

(declare-fun bs!1116636 () Bool)

(assert (= bs!1116636 (and b!4725250 d!1504946)))

(assert (=> bs!1116636 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889678) (= lambda!216061 lambda!216005))))

(declare-fun bs!1116637 () Bool)

(assert (= bs!1116637 (and b!4725250 d!1505252)))

(assert (=> bs!1116637 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889444) (= lambda!216061 lambda!216056))))

(declare-fun bs!1116638 () Bool)

(assert (= bs!1116638 (and b!4725250 b!4724513)))

(assert (=> bs!1116638 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216061 lambda!215956))))

(declare-fun bs!1116639 () Bool)

(assert (= bs!1116639 (and b!4725250 b!4724556)))

(assert (=> bs!1116639 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889579) (= lambda!216061 lambda!215976))))

(declare-fun bs!1116641 () Bool)

(assert (= bs!1116641 (and b!4725250 b!4724591)))

(assert (=> bs!1116641 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216061 lambda!215982))))

(declare-fun bs!1116642 () Bool)

(assert (= bs!1116642 (and b!4725250 d!1504878)))

(assert (=> bs!1116642 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889398) (= lambda!216061 lambda!215970))))

(declare-fun bs!1116644 () Bool)

(assert (= bs!1116644 (and b!4725250 b!4724985)))

(assert (=> bs!1116644 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216061 lambda!216042))))

(declare-fun bs!1116645 () Bool)

(assert (= bs!1116645 (and b!4725250 d!1505120)))

(assert (=> bs!1116645 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889896) (= lambda!216061 lambda!216044))))

(declare-fun bs!1116647 () Bool)

(assert (= bs!1116647 (and b!4725250 b!4724402)))

(assert (=> bs!1116647 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215934))))

(assert (=> bs!1116639 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216061 lambda!215975))))

(declare-fun bs!1116650 () Bool)

(assert (= bs!1116650 (and b!4725250 b!4725038)))

(assert (=> bs!1116650 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889959) (= lambda!216061 lambda!216048))))

(declare-fun bs!1116651 () Bool)

(assert (= bs!1116651 (and b!4725250 d!1504864)))

(assert (=> bs!1116651 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889493) (= lambda!216061 lambda!215959))))

(declare-fun bs!1116652 () Bool)

(assert (= bs!1116652 (and b!4725250 b!4724658)))

(assert (=> bs!1116652 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216061 lambda!216000))))

(assert (=> bs!1116623 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889361) (= lambda!216061 lambda!215932))))

(declare-fun bs!1116653 () Bool)

(assert (= bs!1116653 (and b!4725250 b!4724441)))

(assert (=> bs!1116653 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215943))))

(assert (=> bs!1116641 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889617) (= lambda!216061 lambda!215989))))

(declare-fun bs!1116654 () Bool)

(assert (= bs!1116654 (and b!4725250 b!4725040)))

(assert (=> bs!1116654 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216061 lambda!216046))))

(declare-fun bs!1116655 () Bool)

(assert (= bs!1116655 (and b!4725250 b!4724436)))

(assert (=> bs!1116655 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215939))))

(declare-fun bs!1116656 () Bool)

(assert (= bs!1116656 (and b!4725250 d!1504820)))

(assert (=> bs!1116656 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889388) (= lambda!216061 lambda!215937))))

(declare-fun bs!1116657 () Bool)

(assert (= bs!1116657 (and b!4725250 b!4724320)))

(assert (=> bs!1116657 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215918))))

(declare-fun bs!1116658 () Bool)

(assert (= bs!1116658 (and b!4725250 b!4724400)))

(assert (=> bs!1116658 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889398) (= lambda!216061 lambda!215936))))

(declare-fun bs!1116659 () Bool)

(assert (= bs!1116659 (and b!4725250 b!4724987)))

(assert (=> bs!1116659 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216061 lambda!216041))))

(assert (=> bs!1116650 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216061 lambda!216047))))

(declare-fun bs!1116660 () Bool)

(assert (= bs!1116660 (and b!4725250 d!1504736)))

(assert (=> bs!1116660 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889297) (= lambda!216061 lambda!215923))))

(assert (=> bs!1116613 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889307) (= lambda!216061 lambda!215922))))

(declare-fun bs!1116661 () Bool)

(assert (= bs!1116661 (and b!4725250 b!4725133)))

(assert (=> bs!1116661 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216061 lambda!216052))))

(declare-fun bs!1116662 () Bool)

(assert (= bs!1116662 (and b!4725250 b!4724593)))

(assert (=> bs!1116662 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216061 lambda!215979))))

(declare-fun bs!1116663 () Bool)

(assert (= bs!1116663 (and b!4725250 d!1504846)))

(assert (=> bs!1116663 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215949))))

(declare-fun bs!1116664 () Bool)

(assert (= bs!1116664 (and b!4725250 b!4725135)))

(assert (=> bs!1116664 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216061 lambda!216051))))

(declare-fun bs!1116665 () Bool)

(assert (= bs!1116665 (and b!4725250 b!4724439)))

(assert (=> bs!1116665 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889465) (= lambda!216061 lambda!215945))))

(declare-fun bs!1116666 () Bool)

(assert (= bs!1116666 (and b!4725250 d!1505122)))

(assert (=> bs!1116666 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889361) (= lambda!216061 lambda!216045))))

(assert (=> bs!1116644 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889906) (= lambda!216061 lambda!216043))))

(assert (=> bs!1116661 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1890011) (= lambda!216061 lambda!216053))))

(assert (=> bs!1116665 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215944))))

(assert (=> bs!1116617 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889444) (= lambda!216061 lambda!215941))))

(assert (=> bs!1116658 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216061 lambda!215935))))

(declare-fun bs!1116667 () Bool)

(assert (= bs!1116667 (and b!4725250 d!1504730)))

(assert (=> bs!1116667 (not (= lambda!216061 lambda!215835))))

(assert (=> b!4725250 true))

(declare-fun bs!1116668 () Bool)

(declare-fun b!4725248 () Bool)

(assert (= bs!1116668 (and b!4725248 b!4724511)))

(declare-fun lambda!216062 () Int)

(assert (=> bs!1116668 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216062 lambda!215957))))

(declare-fun bs!1116669 () Bool)

(assert (= bs!1116669 (and b!4725248 b!4724389)))

(assert (=> bs!1116669 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215930))))

(declare-fun bs!1116670 () Bool)

(assert (= bs!1116670 (and b!4725248 d!1504826)))

(assert (=> bs!1116670 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889434) (= lambda!216062 lambda!215942))))

(declare-fun bs!1116671 () Bool)

(assert (= bs!1116671 (and b!4725248 b!4724318)))

(assert (=> bs!1116671 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215920))))

(declare-fun bs!1116672 () Bool)

(assert (= bs!1116672 (and b!4725248 d!1504828)))

(assert (=> bs!1116672 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889455) (= lambda!216062 lambda!215946))))

(declare-fun bs!1116673 () Bool)

(assert (= bs!1116673 (and b!4725248 b!4724434)))

(assert (=> bs!1116673 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215940))))

(declare-fun bs!1116674 () Bool)

(assert (= bs!1116674 (and b!4725248 b!4724558)))

(assert (=> bs!1116674 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216062 lambda!215973))))

(declare-fun bs!1116675 () Bool)

(assert (= bs!1116675 (and b!4725248 d!1504918)))

(assert (=> bs!1116675 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889607) (= lambda!216062 lambda!215994))))

(declare-fun bs!1116676 () Bool)

(assert (= bs!1116676 (and b!4725248 d!1504728)))

(assert (=> bs!1116676 (not (= lambda!216062 lambda!215834))))

(declare-fun bs!1116677 () Bool)

(assert (= bs!1116677 (and b!4725248 b!4724387)))

(assert (=> bs!1116677 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215931))))

(declare-fun bs!1116678 () Bool)

(assert (= bs!1116678 (and b!4725248 d!1505138)))

(assert (=> bs!1116678 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889949) (= lambda!216062 lambda!216049))))

(declare-fun bs!1116679 () Bool)

(assert (= bs!1116679 (and b!4725248 d!1504898)))

(assert (=> bs!1116679 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889569) (= lambda!216062 lambda!215977))))

(declare-fun bs!1116680 () Bool)

(assert (= bs!1116680 (and b!4725248 b!4724656)))

(assert (=> bs!1116680 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216062 lambda!216002))))

(declare-fun bs!1116681 () Bool)

(assert (= bs!1116681 (and b!4725248 d!1505210)))

(assert (=> bs!1116681 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1890001) (= lambda!216062 lambda!216054))))

(declare-fun bs!1116682 () Bool)

(assert (= bs!1116682 (and b!4725248 d!1504812)))

(assert (=> bs!1116682 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889351) (= lambda!216062 lambda!215933))))

(assert (=> bs!1116680 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889688) (= lambda!216062 lambda!216003))))

(assert (=> bs!1116668 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889503) (= lambda!216062 lambda!215958))))

(declare-fun bs!1116683 () Bool)

(assert (= bs!1116683 (and b!4725248 d!1504946)))

(assert (=> bs!1116683 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889678) (= lambda!216062 lambda!216005))))

(declare-fun bs!1116684 () Bool)

(assert (= bs!1116684 (and b!4725248 d!1505252)))

(assert (=> bs!1116684 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889444) (= lambda!216062 lambda!216056))))

(declare-fun bs!1116685 () Bool)

(assert (= bs!1116685 (and b!4725248 b!4724513)))

(assert (=> bs!1116685 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216062 lambda!215956))))

(declare-fun bs!1116686 () Bool)

(assert (= bs!1116686 (and b!4725248 b!4725250)))

(assert (=> bs!1116686 (= lambda!216062 lambda!216061)))

(declare-fun bs!1116687 () Bool)

(assert (= bs!1116687 (and b!4725248 b!4724556)))

(assert (=> bs!1116687 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889579) (= lambda!216062 lambda!215976))))

(declare-fun bs!1116688 () Bool)

(assert (= bs!1116688 (and b!4725248 b!4724591)))

(assert (=> bs!1116688 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216062 lambda!215982))))

(declare-fun bs!1116689 () Bool)

(assert (= bs!1116689 (and b!4725248 d!1504878)))

(assert (=> bs!1116689 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889398) (= lambda!216062 lambda!215970))))

(declare-fun bs!1116690 () Bool)

(assert (= bs!1116690 (and b!4725248 b!4724985)))

(assert (=> bs!1116690 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216062 lambda!216042))))

(declare-fun bs!1116691 () Bool)

(assert (= bs!1116691 (and b!4725248 d!1505120)))

(assert (=> bs!1116691 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889896) (= lambda!216062 lambda!216044))))

(declare-fun bs!1116692 () Bool)

(assert (= bs!1116692 (and b!4725248 b!4724402)))

(assert (=> bs!1116692 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215934))))

(assert (=> bs!1116687 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216062 lambda!215975))))

(declare-fun bs!1116693 () Bool)

(assert (= bs!1116693 (and b!4725248 b!4725038)))

(assert (=> bs!1116693 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889959) (= lambda!216062 lambda!216048))))

(declare-fun bs!1116694 () Bool)

(assert (= bs!1116694 (and b!4725248 d!1504864)))

(assert (=> bs!1116694 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889493) (= lambda!216062 lambda!215959))))

(declare-fun bs!1116695 () Bool)

(assert (= bs!1116695 (and b!4725248 b!4724658)))

(assert (=> bs!1116695 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216062 lambda!216000))))

(assert (=> bs!1116677 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889361) (= lambda!216062 lambda!215932))))

(declare-fun bs!1116696 () Bool)

(assert (= bs!1116696 (and b!4725248 b!4724441)))

(assert (=> bs!1116696 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215943))))

(assert (=> bs!1116688 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889617) (= lambda!216062 lambda!215989))))

(declare-fun bs!1116697 () Bool)

(assert (= bs!1116697 (and b!4725248 b!4725040)))

(assert (=> bs!1116697 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216062 lambda!216046))))

(declare-fun bs!1116698 () Bool)

(assert (= bs!1116698 (and b!4725248 b!4724436)))

(assert (=> bs!1116698 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215939))))

(declare-fun bs!1116699 () Bool)

(assert (= bs!1116699 (and b!4725248 d!1504820)))

(assert (=> bs!1116699 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889388) (= lambda!216062 lambda!215937))))

(declare-fun bs!1116700 () Bool)

(assert (= bs!1116700 (and b!4725248 b!4724320)))

(assert (=> bs!1116700 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215918))))

(declare-fun bs!1116702 () Bool)

(assert (= bs!1116702 (and b!4725248 b!4724400)))

(assert (=> bs!1116702 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889398) (= lambda!216062 lambda!215936))))

(declare-fun bs!1116703 () Bool)

(assert (= bs!1116703 (and b!4725248 b!4724987)))

(assert (=> bs!1116703 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216062 lambda!216041))))

(assert (=> bs!1116693 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216062 lambda!216047))))

(declare-fun bs!1116706 () Bool)

(assert (= bs!1116706 (and b!4725248 d!1504736)))

(assert (=> bs!1116706 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889297) (= lambda!216062 lambda!215923))))

(assert (=> bs!1116671 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889307) (= lambda!216062 lambda!215922))))

(declare-fun bs!1116709 () Bool)

(assert (= bs!1116709 (and b!4725248 b!4725133)))

(assert (=> bs!1116709 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216062 lambda!216052))))

(declare-fun bs!1116711 () Bool)

(assert (= bs!1116711 (and b!4725248 b!4724593)))

(assert (=> bs!1116711 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216062 lambda!215979))))

(declare-fun bs!1116713 () Bool)

(assert (= bs!1116713 (and b!4725248 d!1504846)))

(assert (=> bs!1116713 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215949))))

(declare-fun bs!1116715 () Bool)

(assert (= bs!1116715 (and b!4725248 b!4725135)))

(assert (=> bs!1116715 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216062 lambda!216051))))

(declare-fun bs!1116717 () Bool)

(assert (= bs!1116717 (and b!4725248 b!4724439)))

(assert (=> bs!1116717 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889465) (= lambda!216062 lambda!215945))))

(declare-fun bs!1116719 () Bool)

(assert (= bs!1116719 (and b!4725248 d!1505122)))

(assert (=> bs!1116719 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889361) (= lambda!216062 lambda!216045))))

(assert (=> bs!1116690 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889906) (= lambda!216062 lambda!216043))))

(assert (=> bs!1116709 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1890011) (= lambda!216062 lambda!216053))))

(assert (=> bs!1116717 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215944))))

(assert (=> bs!1116673 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889444) (= lambda!216062 lambda!215941))))

(assert (=> bs!1116702 (= (= (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1889044) (= lambda!216062 lambda!215935))))

(declare-fun bs!1116725 () Bool)

(assert (= bs!1116725 (and b!4725248 d!1504730)))

(assert (=> bs!1116725 (not (= lambda!216062 lambda!215835))))

(assert (=> b!4725248 true))

(declare-fun lt!1890104 () ListMap!5285)

(declare-fun lambda!216064 () Int)

(assert (=> bs!1116668 (= (= lt!1890104 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216064 lambda!215957))))

(assert (=> bs!1116670 (= (= lt!1890104 lt!1889434) (= lambda!216064 lambda!215942))))

(assert (=> bs!1116671 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215920))))

(assert (=> bs!1116672 (= (= lt!1890104 lt!1889455) (= lambda!216064 lambda!215946))))

(assert (=> bs!1116673 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215940))))

(assert (=> bs!1116674 (= (= lt!1890104 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216064 lambda!215973))))

(assert (=> bs!1116675 (= (= lt!1890104 lt!1889607) (= lambda!216064 lambda!215994))))

(assert (=> bs!1116676 (not (= lambda!216064 lambda!215834))))

(assert (=> bs!1116677 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215931))))

(assert (=> bs!1116678 (= (= lt!1890104 lt!1889949) (= lambda!216064 lambda!216049))))

(assert (=> bs!1116679 (= (= lt!1890104 lt!1889569) (= lambda!216064 lambda!215977))))

(assert (=> bs!1116680 (= (= lt!1890104 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216064 lambda!216002))))

(assert (=> bs!1116669 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215930))))

(assert (=> b!4725248 (= (= lt!1890104 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216064 lambda!216062))))

(assert (=> bs!1116681 (= (= lt!1890104 lt!1890001) (= lambda!216064 lambda!216054))))

(assert (=> bs!1116682 (= (= lt!1890104 lt!1889351) (= lambda!216064 lambda!215933))))

(assert (=> bs!1116680 (= (= lt!1890104 lt!1889688) (= lambda!216064 lambda!216003))))

(assert (=> bs!1116668 (= (= lt!1890104 lt!1889503) (= lambda!216064 lambda!215958))))

(assert (=> bs!1116683 (= (= lt!1890104 lt!1889678) (= lambda!216064 lambda!216005))))

(assert (=> bs!1116684 (= (= lt!1890104 lt!1889444) (= lambda!216064 lambda!216056))))

(assert (=> bs!1116685 (= (= lt!1890104 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216064 lambda!215956))))

(assert (=> bs!1116686 (= (= lt!1890104 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216064 lambda!216061))))

(assert (=> bs!1116687 (= (= lt!1890104 lt!1889579) (= lambda!216064 lambda!215976))))

(assert (=> bs!1116688 (= (= lt!1890104 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216064 lambda!215982))))

(assert (=> bs!1116689 (= (= lt!1890104 lt!1889398) (= lambda!216064 lambda!215970))))

(assert (=> bs!1116690 (= (= lt!1890104 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216064 lambda!216042))))

(assert (=> bs!1116691 (= (= lt!1890104 lt!1889896) (= lambda!216064 lambda!216044))))

(assert (=> bs!1116692 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215934))))

(assert (=> bs!1116687 (= (= lt!1890104 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216064 lambda!215975))))

(assert (=> bs!1116693 (= (= lt!1890104 lt!1889959) (= lambda!216064 lambda!216048))))

(assert (=> bs!1116694 (= (= lt!1890104 lt!1889493) (= lambda!216064 lambda!215959))))

(assert (=> bs!1116695 (= (= lt!1890104 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216064 lambda!216000))))

(assert (=> bs!1116677 (= (= lt!1890104 lt!1889361) (= lambda!216064 lambda!215932))))

(assert (=> bs!1116696 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215943))))

(assert (=> bs!1116688 (= (= lt!1890104 lt!1889617) (= lambda!216064 lambda!215989))))

(assert (=> bs!1116697 (= (= lt!1890104 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216064 lambda!216046))))

(assert (=> bs!1116698 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215939))))

(assert (=> bs!1116699 (= (= lt!1890104 lt!1889388) (= lambda!216064 lambda!215937))))

(assert (=> bs!1116700 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215918))))

(assert (=> bs!1116702 (= (= lt!1890104 lt!1889398) (= lambda!216064 lambda!215936))))

(assert (=> bs!1116703 (= (= lt!1890104 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216064 lambda!216041))))

(assert (=> bs!1116693 (= (= lt!1890104 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216064 lambda!216047))))

(assert (=> bs!1116706 (= (= lt!1890104 lt!1889297) (= lambda!216064 lambda!215923))))

(assert (=> bs!1116671 (= (= lt!1890104 lt!1889307) (= lambda!216064 lambda!215922))))

(assert (=> bs!1116709 (= (= lt!1890104 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216064 lambda!216052))))

(assert (=> bs!1116711 (= (= lt!1890104 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216064 lambda!215979))))

(assert (=> bs!1116713 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215949))))

(assert (=> bs!1116715 (= (= lt!1890104 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216064 lambda!216051))))

(assert (=> bs!1116717 (= (= lt!1890104 lt!1889465) (= lambda!216064 lambda!215945))))

(assert (=> bs!1116719 (= (= lt!1890104 lt!1889361) (= lambda!216064 lambda!216045))))

(assert (=> bs!1116690 (= (= lt!1890104 lt!1889906) (= lambda!216064 lambda!216043))))

(assert (=> bs!1116709 (= (= lt!1890104 lt!1890011) (= lambda!216064 lambda!216053))))

(assert (=> bs!1116717 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215944))))

(assert (=> bs!1116673 (= (= lt!1890104 lt!1889444) (= lambda!216064 lambda!215941))))

(assert (=> bs!1116702 (= (= lt!1890104 lt!1889044) (= lambda!216064 lambda!215935))))

(assert (=> bs!1116725 (not (= lambda!216064 lambda!215835))))

(assert (=> b!4725248 true))

(declare-fun bs!1116778 () Bool)

(declare-fun d!1505292 () Bool)

(assert (= bs!1116778 (and d!1505292 b!4724511)))

(declare-fun lambda!216066 () Int)

(declare-fun lt!1890094 () ListMap!5285)

(assert (=> bs!1116778 (= (= lt!1890094 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216066 lambda!215957))))

(declare-fun bs!1116780 () Bool)

(assert (= bs!1116780 (and d!1505292 d!1504826)))

(assert (=> bs!1116780 (= (= lt!1890094 lt!1889434) (= lambda!216066 lambda!215942))))

(declare-fun bs!1116782 () Bool)

(assert (= bs!1116782 (and d!1505292 b!4724318)))

(assert (=> bs!1116782 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215920))))

(declare-fun bs!1116784 () Bool)

(assert (= bs!1116784 (and d!1505292 d!1504828)))

(assert (=> bs!1116784 (= (= lt!1890094 lt!1889455) (= lambda!216066 lambda!215946))))

(declare-fun bs!1116786 () Bool)

(assert (= bs!1116786 (and d!1505292 b!4724434)))

(assert (=> bs!1116786 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215940))))

(declare-fun bs!1116788 () Bool)

(assert (= bs!1116788 (and d!1505292 b!4724558)))

(assert (=> bs!1116788 (= (= lt!1890094 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216066 lambda!215973))))

(declare-fun bs!1116789 () Bool)

(assert (= bs!1116789 (and d!1505292 d!1504918)))

(assert (=> bs!1116789 (= (= lt!1890094 lt!1889607) (= lambda!216066 lambda!215994))))

(declare-fun bs!1116791 () Bool)

(assert (= bs!1116791 (and d!1505292 d!1504728)))

(assert (=> bs!1116791 (not (= lambda!216066 lambda!215834))))

(declare-fun bs!1116792 () Bool)

(assert (= bs!1116792 (and d!1505292 b!4724387)))

(assert (=> bs!1116792 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215931))))

(declare-fun bs!1116793 () Bool)

(assert (= bs!1116793 (and d!1505292 d!1505138)))

(assert (=> bs!1116793 (= (= lt!1890094 lt!1889949) (= lambda!216066 lambda!216049))))

(declare-fun bs!1116794 () Bool)

(assert (= bs!1116794 (and d!1505292 d!1504898)))

(assert (=> bs!1116794 (= (= lt!1890094 lt!1889569) (= lambda!216066 lambda!215977))))

(declare-fun bs!1116796 () Bool)

(assert (= bs!1116796 (and d!1505292 b!4724656)))

(assert (=> bs!1116796 (= (= lt!1890094 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216066 lambda!216002))))

(declare-fun bs!1116798 () Bool)

(assert (= bs!1116798 (and d!1505292 b!4724389)))

(assert (=> bs!1116798 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215930))))

(declare-fun bs!1116799 () Bool)

(assert (= bs!1116799 (and d!1505292 b!4725248)))

(assert (=> bs!1116799 (= (= lt!1890094 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216066 lambda!216062))))

(declare-fun bs!1116801 () Bool)

(assert (= bs!1116801 (and d!1505292 d!1505210)))

(assert (=> bs!1116801 (= (= lt!1890094 lt!1890001) (= lambda!216066 lambda!216054))))

(declare-fun bs!1116803 () Bool)

(assert (= bs!1116803 (and d!1505292 d!1504812)))

(assert (=> bs!1116803 (= (= lt!1890094 lt!1889351) (= lambda!216066 lambda!215933))))

(assert (=> bs!1116796 (= (= lt!1890094 lt!1889688) (= lambda!216066 lambda!216003))))

(assert (=> bs!1116778 (= (= lt!1890094 lt!1889503) (= lambda!216066 lambda!215958))))

(declare-fun bs!1116806 () Bool)

(assert (= bs!1116806 (and d!1505292 d!1504946)))

(assert (=> bs!1116806 (= (= lt!1890094 lt!1889678) (= lambda!216066 lambda!216005))))

(declare-fun bs!1116807 () Bool)

(assert (= bs!1116807 (and d!1505292 d!1505252)))

(assert (=> bs!1116807 (= (= lt!1890094 lt!1889444) (= lambda!216066 lambda!216056))))

(declare-fun bs!1116808 () Bool)

(assert (= bs!1116808 (and d!1505292 b!4724513)))

(assert (=> bs!1116808 (= (= lt!1890094 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216066 lambda!215956))))

(declare-fun bs!1116809 () Bool)

(assert (= bs!1116809 (and d!1505292 b!4725250)))

(assert (=> bs!1116809 (= (= lt!1890094 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216066 lambda!216061))))

(declare-fun bs!1116810 () Bool)

(assert (= bs!1116810 (and d!1505292 b!4724556)))

(assert (=> bs!1116810 (= (= lt!1890094 lt!1889579) (= lambda!216066 lambda!215976))))

(declare-fun bs!1116811 () Bool)

(assert (= bs!1116811 (and d!1505292 b!4724591)))

(assert (=> bs!1116811 (= (= lt!1890094 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216066 lambda!215982))))

(declare-fun bs!1116812 () Bool)

(assert (= bs!1116812 (and d!1505292 d!1504878)))

(assert (=> bs!1116812 (= (= lt!1890094 lt!1889398) (= lambda!216066 lambda!215970))))

(declare-fun bs!1116813 () Bool)

(assert (= bs!1116813 (and d!1505292 b!4724985)))

(assert (=> bs!1116813 (= (= lt!1890094 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216066 lambda!216042))))

(declare-fun bs!1116814 () Bool)

(assert (= bs!1116814 (and d!1505292 d!1505120)))

(assert (=> bs!1116814 (= (= lt!1890094 lt!1889896) (= lambda!216066 lambda!216044))))

(declare-fun bs!1116815 () Bool)

(assert (= bs!1116815 (and d!1505292 b!4724402)))

(assert (=> bs!1116815 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215934))))

(assert (=> bs!1116810 (= (= lt!1890094 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216066 lambda!215975))))

(declare-fun bs!1116816 () Bool)

(assert (= bs!1116816 (and d!1505292 b!4725038)))

(assert (=> bs!1116816 (= (= lt!1890094 lt!1889959) (= lambda!216066 lambda!216048))))

(declare-fun bs!1116817 () Bool)

(assert (= bs!1116817 (and d!1505292 d!1504864)))

(assert (=> bs!1116817 (= (= lt!1890094 lt!1889493) (= lambda!216066 lambda!215959))))

(declare-fun bs!1116818 () Bool)

(assert (= bs!1116818 (and d!1505292 b!4724658)))

(assert (=> bs!1116818 (= (= lt!1890094 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216066 lambda!216000))))

(assert (=> bs!1116792 (= (= lt!1890094 lt!1889361) (= lambda!216066 lambda!215932))))

(declare-fun bs!1116819 () Bool)

(assert (= bs!1116819 (and d!1505292 b!4724441)))

(assert (=> bs!1116819 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215943))))

(assert (=> bs!1116811 (= (= lt!1890094 lt!1889617) (= lambda!216066 lambda!215989))))

(declare-fun bs!1116820 () Bool)

(assert (= bs!1116820 (and d!1505292 b!4725040)))

(assert (=> bs!1116820 (= (= lt!1890094 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216066 lambda!216046))))

(declare-fun bs!1116821 () Bool)

(assert (= bs!1116821 (and d!1505292 b!4724436)))

(assert (=> bs!1116821 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215939))))

(declare-fun bs!1116822 () Bool)

(assert (= bs!1116822 (and d!1505292 d!1504820)))

(assert (=> bs!1116822 (= (= lt!1890094 lt!1889388) (= lambda!216066 lambda!215937))))

(declare-fun bs!1116823 () Bool)

(assert (= bs!1116823 (and d!1505292 b!4724320)))

(assert (=> bs!1116823 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215918))))

(declare-fun bs!1116824 () Bool)

(assert (= bs!1116824 (and d!1505292 b!4724400)))

(assert (=> bs!1116824 (= (= lt!1890094 lt!1889398) (= lambda!216066 lambda!215936))))

(declare-fun bs!1116825 () Bool)

(assert (= bs!1116825 (and d!1505292 b!4724987)))

(assert (=> bs!1116825 (= (= lt!1890094 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216066 lambda!216041))))

(assert (=> bs!1116816 (= (= lt!1890094 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216066 lambda!216047))))

(declare-fun bs!1116826 () Bool)

(assert (= bs!1116826 (and d!1505292 d!1504736)))

(assert (=> bs!1116826 (= (= lt!1890094 lt!1889297) (= lambda!216066 lambda!215923))))

(assert (=> bs!1116782 (= (= lt!1890094 lt!1889307) (= lambda!216066 lambda!215922))))

(declare-fun bs!1116827 () Bool)

(assert (= bs!1116827 (and d!1505292 b!4725133)))

(assert (=> bs!1116827 (= (= lt!1890094 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216066 lambda!216052))))

(declare-fun bs!1116828 () Bool)

(assert (= bs!1116828 (and d!1505292 b!4724593)))

(assert (=> bs!1116828 (= (= lt!1890094 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216066 lambda!215979))))

(declare-fun bs!1116829 () Bool)

(assert (= bs!1116829 (and d!1505292 d!1504846)))

(assert (=> bs!1116829 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215949))))

(declare-fun bs!1116830 () Bool)

(assert (= bs!1116830 (and d!1505292 b!4725135)))

(assert (=> bs!1116830 (= (= lt!1890094 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216066 lambda!216051))))

(declare-fun bs!1116831 () Bool)

(assert (= bs!1116831 (and d!1505292 b!4724439)))

(assert (=> bs!1116831 (= (= lt!1890094 lt!1889465) (= lambda!216066 lambda!215945))))

(declare-fun bs!1116832 () Bool)

(assert (= bs!1116832 (and d!1505292 d!1505122)))

(assert (=> bs!1116832 (= (= lt!1890094 lt!1889361) (= lambda!216066 lambda!216045))))

(assert (=> bs!1116813 (= (= lt!1890094 lt!1889906) (= lambda!216066 lambda!216043))))

(assert (=> bs!1116827 (= (= lt!1890094 lt!1890011) (= lambda!216066 lambda!216053))))

(assert (=> bs!1116831 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215944))))

(assert (=> bs!1116786 (= (= lt!1890094 lt!1889444) (= lambda!216066 lambda!215941))))

(assert (=> bs!1116824 (= (= lt!1890094 lt!1889044) (= lambda!216066 lambda!215935))))

(assert (=> bs!1116799 (= (= lt!1890094 lt!1890104) (= lambda!216066 lambda!216064))))

(declare-fun bs!1116833 () Bool)

(assert (= bs!1116833 (and d!1505292 d!1504730)))

(assert (=> bs!1116833 (not (= lambda!216066 lambda!215835))))

(assert (=> d!1505292 true))

(declare-fun bm!330588 () Bool)

(declare-fun call!330593 () Unit!130501)

(assert (=> bm!330588 (= call!330593 (lemmaContainsAllItsOwnKeys!799 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun b!4725247 () Bool)

(declare-fun e!2947098 () Bool)

(assert (=> b!4725247 (= e!2947098 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) lambda!216064))))

(declare-fun b!4725249 () Bool)

(declare-fun e!2947099 () Bool)

(assert (=> b!4725249 (= e!2947099 (invariantList!1513 (toList!5921 lt!1890094)))))

(declare-fun e!2947100 () ListMap!5285)

(assert (=> b!4725250 (= e!2947100 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(declare-fun lt!1890097 () Unit!130501)

(assert (=> b!4725250 (= lt!1890097 call!330593)))

(declare-fun call!330595 () Bool)

(assert (=> b!4725250 call!330595))

(declare-fun lt!1890111 () Unit!130501)

(assert (=> b!4725250 (= lt!1890111 lt!1890097)))

(declare-fun call!330594 () Bool)

(assert (=> b!4725250 call!330594))

(declare-fun lt!1890110 () Unit!130501)

(declare-fun Unit!130817 () Unit!130501)

(assert (=> b!4725250 (= lt!1890110 Unit!130817)))

(declare-fun b!4725251 () Bool)

(declare-fun res!1999505 () Bool)

(assert (=> b!4725251 (=> (not res!1999505) (not e!2947099))))

(assert (=> b!4725251 (= res!1999505 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) lambda!216066))))

(declare-fun lt!1890109 () ListMap!5285)

(declare-fun c!807038 () Bool)

(declare-fun bm!330589 () Bool)

(assert (=> bm!330589 (= call!330595 (forall!11596 (ite c!807038 (toList!5921 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (toList!5921 lt!1890109)) (ite c!807038 lambda!216061 lambda!216064)))))

(declare-fun bm!330590 () Bool)

(assert (=> bm!330590 (= call!330594 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (ite c!807038 lambda!216061 lambda!216062)))))

(assert (=> d!1505292 e!2947099))

(declare-fun res!1999507 () Bool)

(assert (=> d!1505292 (=> (not res!1999507) (not e!2947099))))

(assert (=> d!1505292 (= res!1999507 (forall!11596 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) lambda!216066))))

(assert (=> d!1505292 (= lt!1890094 e!2947100)))

(assert (=> d!1505292 (= c!807038 ((_ is Nil!52836) (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (=> d!1505292 (noDuplicateKeys!2016 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))

(assert (=> d!1505292 (= (addToMapMapFromBucket!1446 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) lt!1890094)))

(assert (=> b!4725248 (= e!2947100 lt!1890104)))

(assert (=> b!4725248 (= lt!1890109 (+!2271 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> b!4725248 (= lt!1890104 (addToMapMapFromBucket!1446 (t!360230 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (+!2271 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))))

(declare-fun lt!1890113 () Unit!130501)

(assert (=> b!4725248 (= lt!1890113 call!330593)))

(assert (=> b!4725248 call!330594))

(declare-fun lt!1890112 () Unit!130501)

(assert (=> b!4725248 (= lt!1890112 lt!1890113)))

(assert (=> b!4725248 call!330595))

(declare-fun lt!1890099 () Unit!130501)

(declare-fun Unit!130820 () Unit!130501)

(assert (=> b!4725248 (= lt!1890099 Unit!130820)))

(assert (=> b!4725248 (forall!11596 (t!360230 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lambda!216064)))

(declare-fun lt!1890105 () Unit!130501)

(declare-fun Unit!130821 () Unit!130501)

(assert (=> b!4725248 (= lt!1890105 Unit!130821)))

(declare-fun lt!1890100 () Unit!130501)

(declare-fun Unit!130822 () Unit!130501)

(assert (=> b!4725248 (= lt!1890100 Unit!130822)))

(declare-fun lt!1890103 () Unit!130501)

(assert (=> b!4725248 (= lt!1890103 (forallContained!3643 (toList!5921 lt!1890109) lambda!216064 (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> b!4725248 (contains!16183 lt!1890109 (_1!30523 (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun lt!1890102 () Unit!130501)

(declare-fun Unit!130823 () Unit!130501)

(assert (=> b!4725248 (= lt!1890102 Unit!130823)))

(assert (=> b!4725248 (contains!16183 lt!1890104 (_1!30523 (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun lt!1890095 () Unit!130501)

(declare-fun Unit!130824 () Unit!130501)

(assert (=> b!4725248 (= lt!1890095 Unit!130824)))

(assert (=> b!4725248 (forall!11596 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) lambda!216064)))

(declare-fun lt!1890096 () Unit!130501)

(declare-fun Unit!130825 () Unit!130501)

(assert (=> b!4725248 (= lt!1890096 Unit!130825)))

(assert (=> b!4725248 (forall!11596 (toList!5921 lt!1890109) lambda!216064)))

(declare-fun lt!1890107 () Unit!130501)

(declare-fun Unit!130826 () Unit!130501)

(assert (=> b!4725248 (= lt!1890107 Unit!130826)))

(declare-fun lt!1890101 () Unit!130501)

(declare-fun Unit!130827 () Unit!130501)

(assert (=> b!4725248 (= lt!1890101 Unit!130827)))

(declare-fun lt!1890108 () Unit!130501)

(assert (=> b!4725248 (= lt!1890108 (addForallContainsKeyThenBeforeAdding!798 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1890104 (_1!30523 (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (_2!30523 (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))))

(assert (=> b!4725248 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) lambda!216064)))

(declare-fun lt!1890098 () Unit!130501)

(assert (=> b!4725248 (= lt!1890098 lt!1890108)))

(assert (=> b!4725248 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) lambda!216064)))

(declare-fun lt!1890114 () Unit!130501)

(declare-fun Unit!130828 () Unit!130501)

(assert (=> b!4725248 (= lt!1890114 Unit!130828)))

(declare-fun res!1999506 () Bool)

(assert (=> b!4725248 (= res!1999506 (forall!11596 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) lambda!216064))))

(assert (=> b!4725248 (=> (not res!1999506) (not e!2947098))))

(assert (=> b!4725248 e!2947098))

(declare-fun lt!1890106 () Unit!130501)

(declare-fun Unit!130829 () Unit!130501)

(assert (=> b!4725248 (= lt!1890106 Unit!130829)))

(assert (= (and d!1505292 c!807038) b!4725250))

(assert (= (and d!1505292 (not c!807038)) b!4725248))

(assert (= (and b!4725248 res!1999506) b!4725247))

(assert (= (or b!4725250 b!4725248) bm!330588))

(assert (= (or b!4725250 b!4725248) bm!330590))

(assert (= (or b!4725250 b!4725248) bm!330589))

(assert (= (and d!1505292 res!1999507) b!4725251))

(assert (= (and b!4725251 res!1999505) b!4725249))

(declare-fun m!5664001 () Bool)

(assert (=> b!4725249 m!5664001))

(assert (=> bm!330588 m!5662011))

(declare-fun m!5664003 () Bool)

(assert (=> bm!330588 m!5664003))

(declare-fun m!5664005 () Bool)

(assert (=> b!4725251 m!5664005))

(declare-fun m!5664007 () Bool)

(assert (=> d!1505292 m!5664007))

(assert (=> d!1505292 m!5663917))

(declare-fun m!5664009 () Bool)

(assert (=> b!4725248 m!5664009))

(declare-fun m!5664011 () Bool)

(assert (=> b!4725248 m!5664011))

(declare-fun m!5664013 () Bool)

(assert (=> b!4725248 m!5664013))

(declare-fun m!5664015 () Bool)

(assert (=> b!4725248 m!5664015))

(declare-fun m!5664017 () Bool)

(assert (=> b!4725248 m!5664017))

(assert (=> b!4725248 m!5664009))

(assert (=> b!4725248 m!5662011))

(assert (=> b!4725248 m!5664011))

(declare-fun m!5664019 () Bool)

(assert (=> b!4725248 m!5664019))

(declare-fun m!5664021 () Bool)

(assert (=> b!4725248 m!5664021))

(assert (=> b!4725248 m!5662011))

(declare-fun m!5664023 () Bool)

(assert (=> b!4725248 m!5664023))

(declare-fun m!5664025 () Bool)

(assert (=> b!4725248 m!5664025))

(declare-fun m!5664027 () Bool)

(assert (=> b!4725248 m!5664027))

(assert (=> b!4725248 m!5664019))

(declare-fun m!5664029 () Bool)

(assert (=> bm!330589 m!5664029))

(assert (=> b!4725247 m!5664019))

(declare-fun m!5664031 () Bool)

(assert (=> bm!330590 m!5664031))

(assert (=> b!4724318 d!1505292))

(declare-fun d!1505302 () Bool)

(declare-fun res!1999518 () Bool)

(declare-fun e!2947114 () Bool)

(assert (=> d!1505302 (=> res!1999518 e!2947114)))

(assert (=> d!1505302 (= res!1999518 ((_ is Nil!52836) (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (=> d!1505302 (= (forall!11596 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))) lambda!215922) e!2947114)))

(declare-fun b!4725270 () Bool)

(declare-fun e!2947115 () Bool)

(assert (=> b!4725270 (= e!2947114 e!2947115)))

(declare-fun res!1999519 () Bool)

(assert (=> b!4725270 (=> (not res!1999519) (not e!2947115))))

(assert (=> b!4725270 (= res!1999519 (dynLambda!21825 lambda!215922 (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun b!4725271 () Bool)

(assert (=> b!4725271 (= e!2947115 (forall!11596 (t!360230 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lambda!215922))))

(assert (= (and d!1505302 (not res!1999518)) b!4725270))

(assert (= (and b!4725270 res!1999519) b!4725271))

(declare-fun b_lambda!179375 () Bool)

(assert (=> (not b_lambda!179375) (not b!4725270)))

(declare-fun m!5664033 () Bool)

(assert (=> b!4725270 m!5664033))

(declare-fun m!5664035 () Bool)

(assert (=> b!4725271 m!5664035))

(assert (=> b!4724318 d!1505302))

(declare-fun b!4725272 () Bool)

(declare-fun e!2947118 () Bool)

(declare-fun e!2947119 () Bool)

(assert (=> b!4725272 (= e!2947118 e!2947119)))

(declare-fun res!1999521 () Bool)

(assert (=> b!4725272 (=> (not res!1999521) (not e!2947119))))

(assert (=> b!4725272 (= res!1999521 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889312) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))))

(declare-fun bm!330595 () Bool)

(declare-fun call!330600 () Bool)

(declare-fun e!2947121 () List!52963)

(assert (=> bm!330595 (= call!330600 (contains!16188 e!2947121 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun c!807044 () Bool)

(declare-fun c!807043 () Bool)

(assert (=> bm!330595 (= c!807044 c!807043)))

(declare-fun d!1505304 () Bool)

(assert (=> d!1505304 e!2947118))

(declare-fun res!1999522 () Bool)

(assert (=> d!1505304 (=> res!1999522 e!2947118)))

(declare-fun e!2947116 () Bool)

(assert (=> d!1505304 (= res!1999522 e!2947116)))

(declare-fun res!1999520 () Bool)

(assert (=> d!1505304 (=> (not res!1999520) (not e!2947116))))

(declare-fun lt!1890147 () Bool)

(assert (=> d!1505304 (= res!1999520 (not lt!1890147))))

(declare-fun lt!1890149 () Bool)

(assert (=> d!1505304 (= lt!1890147 lt!1890149)))

(declare-fun lt!1890146 () Unit!130501)

(declare-fun e!2947117 () Unit!130501)

(assert (=> d!1505304 (= lt!1890146 e!2947117)))

(assert (=> d!1505304 (= c!807043 lt!1890149)))

(assert (=> d!1505304 (= lt!1890149 (containsKey!3379 (toList!5921 lt!1889312) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> d!1505304 (= (contains!16183 lt!1889312 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) lt!1890147)))

(declare-fun b!4725273 () Bool)

(assert (=> b!4725273 (= e!2947121 (keys!18978 lt!1889312))))

(declare-fun b!4725274 () Bool)

(assert (=> b!4725274 (= e!2947121 (getKeysList!953 (toList!5921 lt!1889312)))))

(declare-fun b!4725275 () Bool)

(declare-fun lt!1890151 () Unit!130501)

(assert (=> b!4725275 (= e!2947117 lt!1890151)))

(declare-fun lt!1890150 () Unit!130501)

(assert (=> b!4725275 (= lt!1890150 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889312) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> b!4725275 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889312) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun lt!1890148 () Unit!130501)

(assert (=> b!4725275 (= lt!1890148 lt!1890150)))

(assert (=> b!4725275 (= lt!1890151 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889312) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> b!4725275 call!330600))

(declare-fun b!4725276 () Bool)

(assert (=> b!4725276 (= e!2947116 (not (contains!16188 (keys!18978 lt!1889312) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))))

(declare-fun b!4725277 () Bool)

(assert (=> b!4725277 false))

(declare-fun lt!1890145 () Unit!130501)

(declare-fun lt!1890144 () Unit!130501)

(assert (=> b!4725277 (= lt!1890145 lt!1890144)))

(assert (=> b!4725277 (containsKey!3379 (toList!5921 lt!1889312) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (=> b!4725277 (= lt!1890144 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889312) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun e!2947120 () Unit!130501)

(declare-fun Unit!130831 () Unit!130501)

(assert (=> b!4725277 (= e!2947120 Unit!130831)))

(declare-fun b!4725278 () Bool)

(assert (=> b!4725278 (= e!2947117 e!2947120)))

(declare-fun c!807045 () Bool)

(assert (=> b!4725278 (= c!807045 call!330600)))

(declare-fun b!4725279 () Bool)

(assert (=> b!4725279 (= e!2947119 (contains!16188 (keys!18978 lt!1889312) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun b!4725280 () Bool)

(declare-fun Unit!130832 () Unit!130501)

(assert (=> b!4725280 (= e!2947120 Unit!130832)))

(assert (= (and d!1505304 c!807043) b!4725275))

(assert (= (and d!1505304 (not c!807043)) b!4725278))

(assert (= (and b!4725278 c!807045) b!4725277))

(assert (= (and b!4725278 (not c!807045)) b!4725280))

(assert (= (or b!4725275 b!4725278) bm!330595))

(assert (= (and bm!330595 c!807044) b!4725274))

(assert (= (and bm!330595 (not c!807044)) b!4725273))

(assert (= (and d!1505304 res!1999520) b!4725276))

(assert (= (and d!1505304 (not res!1999522)) b!4725272))

(assert (= (and b!4725272 res!1999521) b!4725279))

(declare-fun m!5664037 () Bool)

(assert (=> b!4725273 m!5664037))

(assert (=> b!4725279 m!5664037))

(assert (=> b!4725279 m!5664037))

(declare-fun m!5664039 () Bool)

(assert (=> b!4725279 m!5664039))

(declare-fun m!5664041 () Bool)

(assert (=> b!4725272 m!5664041))

(assert (=> b!4725272 m!5664041))

(declare-fun m!5664043 () Bool)

(assert (=> b!4725272 m!5664043))

(declare-fun m!5664045 () Bool)

(assert (=> b!4725274 m!5664045))

(declare-fun m!5664047 () Bool)

(assert (=> d!1505304 m!5664047))

(declare-fun m!5664049 () Bool)

(assert (=> b!4725275 m!5664049))

(assert (=> b!4725275 m!5664041))

(assert (=> b!4725275 m!5664041))

(assert (=> b!4725275 m!5664043))

(declare-fun m!5664051 () Bool)

(assert (=> b!4725275 m!5664051))

(assert (=> b!4725276 m!5664037))

(assert (=> b!4725276 m!5664037))

(assert (=> b!4725276 m!5664039))

(declare-fun m!5664053 () Bool)

(assert (=> bm!330595 m!5664053))

(assert (=> b!4725277 m!5664047))

(declare-fun m!5664055 () Bool)

(assert (=> b!4725277 m!5664055))

(assert (=> b!4724318 d!1505304))

(declare-fun bs!1116863 () Bool)

(declare-fun d!1505306 () Bool)

(assert (= bs!1116863 (and d!1505306 b!4724511)))

(declare-fun lambda!216069 () Int)

(assert (=> bs!1116863 (= (= lt!1889307 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216069 lambda!215957))))

(declare-fun bs!1116865 () Bool)

(assert (= bs!1116865 (and d!1505306 d!1504826)))

(assert (=> bs!1116865 (= (= lt!1889307 lt!1889434) (= lambda!216069 lambda!215942))))

(declare-fun bs!1116867 () Bool)

(assert (= bs!1116867 (and d!1505306 b!4724318)))

(assert (=> bs!1116867 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215920))))

(declare-fun bs!1116869 () Bool)

(assert (= bs!1116869 (and d!1505306 d!1504828)))

(assert (=> bs!1116869 (= (= lt!1889307 lt!1889455) (= lambda!216069 lambda!215946))))

(declare-fun bs!1116871 () Bool)

(assert (= bs!1116871 (and d!1505306 b!4724434)))

(assert (=> bs!1116871 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215940))))

(declare-fun bs!1116873 () Bool)

(assert (= bs!1116873 (and d!1505306 b!4724558)))

(assert (=> bs!1116873 (= (= lt!1889307 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216069 lambda!215973))))

(declare-fun bs!1116874 () Bool)

(assert (= bs!1116874 (and d!1505306 d!1504918)))

(assert (=> bs!1116874 (= (= lt!1889307 lt!1889607) (= lambda!216069 lambda!215994))))

(declare-fun bs!1116876 () Bool)

(assert (= bs!1116876 (and d!1505306 d!1504728)))

(assert (=> bs!1116876 (not (= lambda!216069 lambda!215834))))

(declare-fun bs!1116877 () Bool)

(assert (= bs!1116877 (and d!1505306 b!4724387)))

(assert (=> bs!1116877 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215931))))

(declare-fun bs!1116878 () Bool)

(assert (= bs!1116878 (and d!1505306 d!1505138)))

(assert (=> bs!1116878 (= (= lt!1889307 lt!1889949) (= lambda!216069 lambda!216049))))

(declare-fun bs!1116880 () Bool)

(assert (= bs!1116880 (and d!1505306 d!1504898)))

(assert (=> bs!1116880 (= (= lt!1889307 lt!1889569) (= lambda!216069 lambda!215977))))

(declare-fun bs!1116881 () Bool)

(assert (= bs!1116881 (and d!1505306 b!4724656)))

(assert (=> bs!1116881 (= (= lt!1889307 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216069 lambda!216002))))

(declare-fun bs!1116883 () Bool)

(assert (= bs!1116883 (and d!1505306 b!4724389)))

(assert (=> bs!1116883 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215930))))

(declare-fun bs!1116884 () Bool)

(assert (= bs!1116884 (and d!1505306 b!4725248)))

(assert (=> bs!1116884 (= (= lt!1889307 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216069 lambda!216062))))

(declare-fun bs!1116886 () Bool)

(assert (= bs!1116886 (and d!1505306 d!1505210)))

(assert (=> bs!1116886 (= (= lt!1889307 lt!1890001) (= lambda!216069 lambda!216054))))

(declare-fun bs!1116888 () Bool)

(assert (= bs!1116888 (and d!1505306 d!1504812)))

(assert (=> bs!1116888 (= (= lt!1889307 lt!1889351) (= lambda!216069 lambda!215933))))

(assert (=> bs!1116881 (= (= lt!1889307 lt!1889688) (= lambda!216069 lambda!216003))))

(assert (=> bs!1116863 (= (= lt!1889307 lt!1889503) (= lambda!216069 lambda!215958))))

(declare-fun bs!1116891 () Bool)

(assert (= bs!1116891 (and d!1505306 d!1504946)))

(assert (=> bs!1116891 (= (= lt!1889307 lt!1889678) (= lambda!216069 lambda!216005))))

(declare-fun bs!1116892 () Bool)

(assert (= bs!1116892 (and d!1505306 d!1505252)))

(assert (=> bs!1116892 (= (= lt!1889307 lt!1889444) (= lambda!216069 lambda!216056))))

(declare-fun bs!1116893 () Bool)

(assert (= bs!1116893 (and d!1505306 b!4724513)))

(assert (=> bs!1116893 (= (= lt!1889307 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216069 lambda!215956))))

(declare-fun bs!1116894 () Bool)

(assert (= bs!1116894 (and d!1505306 b!4725250)))

(assert (=> bs!1116894 (= (= lt!1889307 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216069 lambda!216061))))

(declare-fun bs!1116895 () Bool)

(assert (= bs!1116895 (and d!1505306 b!4724556)))

(assert (=> bs!1116895 (= (= lt!1889307 lt!1889579) (= lambda!216069 lambda!215976))))

(declare-fun bs!1116896 () Bool)

(assert (= bs!1116896 (and d!1505306 b!4724591)))

(assert (=> bs!1116896 (= (= lt!1889307 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216069 lambda!215982))))

(declare-fun bs!1116897 () Bool)

(assert (= bs!1116897 (and d!1505306 d!1504878)))

(assert (=> bs!1116897 (= (= lt!1889307 lt!1889398) (= lambda!216069 lambda!215970))))

(declare-fun bs!1116898 () Bool)

(assert (= bs!1116898 (and d!1505306 b!4724985)))

(assert (=> bs!1116898 (= (= lt!1889307 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216069 lambda!216042))))

(declare-fun bs!1116899 () Bool)

(assert (= bs!1116899 (and d!1505306 d!1505120)))

(assert (=> bs!1116899 (= (= lt!1889307 lt!1889896) (= lambda!216069 lambda!216044))))

(declare-fun bs!1116900 () Bool)

(assert (= bs!1116900 (and d!1505306 b!4724402)))

(assert (=> bs!1116900 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215934))))

(assert (=> bs!1116895 (= (= lt!1889307 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216069 lambda!215975))))

(declare-fun bs!1116901 () Bool)

(assert (= bs!1116901 (and d!1505306 b!4725038)))

(assert (=> bs!1116901 (= (= lt!1889307 lt!1889959) (= lambda!216069 lambda!216048))))

(declare-fun bs!1116902 () Bool)

(assert (= bs!1116902 (and d!1505306 d!1504864)))

(assert (=> bs!1116902 (= (= lt!1889307 lt!1889493) (= lambda!216069 lambda!215959))))

(declare-fun bs!1116903 () Bool)

(assert (= bs!1116903 (and d!1505306 b!4724658)))

(assert (=> bs!1116903 (= (= lt!1889307 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216069 lambda!216000))))

(assert (=> bs!1116877 (= (= lt!1889307 lt!1889361) (= lambda!216069 lambda!215932))))

(declare-fun bs!1116904 () Bool)

(assert (= bs!1116904 (and d!1505306 b!4724441)))

(assert (=> bs!1116904 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215943))))

(assert (=> bs!1116896 (= (= lt!1889307 lt!1889617) (= lambda!216069 lambda!215989))))

(declare-fun bs!1116905 () Bool)

(assert (= bs!1116905 (and d!1505306 b!4725040)))

(assert (=> bs!1116905 (= (= lt!1889307 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216069 lambda!216046))))

(declare-fun bs!1116906 () Bool)

(assert (= bs!1116906 (and d!1505306 b!4724436)))

(assert (=> bs!1116906 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215939))))

(declare-fun bs!1116907 () Bool)

(assert (= bs!1116907 (and d!1505306 d!1504820)))

(assert (=> bs!1116907 (= (= lt!1889307 lt!1889388) (= lambda!216069 lambda!215937))))

(declare-fun bs!1116908 () Bool)

(assert (= bs!1116908 (and d!1505306 b!4724320)))

(assert (=> bs!1116908 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215918))))

(declare-fun bs!1116909 () Bool)

(assert (= bs!1116909 (and d!1505306 b!4724400)))

(assert (=> bs!1116909 (= (= lt!1889307 lt!1889398) (= lambda!216069 lambda!215936))))

(declare-fun bs!1116910 () Bool)

(assert (= bs!1116910 (and d!1505306 b!4724987)))

(assert (=> bs!1116910 (= (= lt!1889307 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216069 lambda!216041))))

(declare-fun bs!1116911 () Bool)

(assert (= bs!1116911 (and d!1505306 d!1505292)))

(assert (=> bs!1116911 (= (= lt!1889307 lt!1890094) (= lambda!216069 lambda!216066))))

(assert (=> bs!1116901 (= (= lt!1889307 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216069 lambda!216047))))

(declare-fun bs!1116912 () Bool)

(assert (= bs!1116912 (and d!1505306 d!1504736)))

(assert (=> bs!1116912 (= (= lt!1889307 lt!1889297) (= lambda!216069 lambda!215923))))

(assert (=> bs!1116867 (= lambda!216069 lambda!215922)))

(declare-fun bs!1116913 () Bool)

(assert (= bs!1116913 (and d!1505306 b!4725133)))

(assert (=> bs!1116913 (= (= lt!1889307 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216069 lambda!216052))))

(declare-fun bs!1116914 () Bool)

(assert (= bs!1116914 (and d!1505306 b!4724593)))

(assert (=> bs!1116914 (= (= lt!1889307 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216069 lambda!215979))))

(declare-fun bs!1116915 () Bool)

(assert (= bs!1116915 (and d!1505306 d!1504846)))

(assert (=> bs!1116915 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215949))))

(declare-fun bs!1116916 () Bool)

(assert (= bs!1116916 (and d!1505306 b!4725135)))

(assert (=> bs!1116916 (= (= lt!1889307 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216069 lambda!216051))))

(declare-fun bs!1116917 () Bool)

(assert (= bs!1116917 (and d!1505306 b!4724439)))

(assert (=> bs!1116917 (= (= lt!1889307 lt!1889465) (= lambda!216069 lambda!215945))))

(declare-fun bs!1116918 () Bool)

(assert (= bs!1116918 (and d!1505306 d!1505122)))

(assert (=> bs!1116918 (= (= lt!1889307 lt!1889361) (= lambda!216069 lambda!216045))))

(assert (=> bs!1116898 (= (= lt!1889307 lt!1889906) (= lambda!216069 lambda!216043))))

(assert (=> bs!1116913 (= (= lt!1889307 lt!1890011) (= lambda!216069 lambda!216053))))

(assert (=> bs!1116917 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215944))))

(assert (=> bs!1116871 (= (= lt!1889307 lt!1889444) (= lambda!216069 lambda!215941))))

(assert (=> bs!1116909 (= (= lt!1889307 lt!1889044) (= lambda!216069 lambda!215935))))

(assert (=> bs!1116884 (= (= lt!1889307 lt!1890104) (= lambda!216069 lambda!216064))))

(declare-fun bs!1116919 () Bool)

(assert (= bs!1116919 (and d!1505306 d!1504730)))

(assert (=> bs!1116919 (not (= lambda!216069 lambda!215835))))

(assert (=> d!1505306 true))

(assert (=> d!1505306 (forall!11596 (toList!5921 lt!1889044) lambda!216069)))

(declare-fun lt!1890152 () Unit!130501)

(assert (=> d!1505306 (= lt!1890152 (choose!33347 lt!1889044 lt!1889307 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (_2!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> d!1505306 (forall!11596 (toList!5921 (+!2271 lt!1889044 (tuple2!54459 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (_2!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))) lambda!216069)))

(assert (=> d!1505306 (= (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889307 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (_2!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) lt!1890152)))

(declare-fun bs!1116920 () Bool)

(assert (= bs!1116920 d!1505306))

(declare-fun m!5664089 () Bool)

(assert (=> bs!1116920 m!5664089))

(declare-fun m!5664091 () Bool)

(assert (=> bs!1116920 m!5664091))

(declare-fun m!5664093 () Bool)

(assert (=> bs!1116920 m!5664093))

(declare-fun m!5664095 () Bool)

(assert (=> bs!1116920 m!5664095))

(assert (=> b!4724318 d!1505306))

(declare-fun d!1505310 () Bool)

(assert (=> d!1505310 (dynLambda!21825 lambda!215922 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))

(declare-fun lt!1890161 () Unit!130501)

(assert (=> d!1505310 (= lt!1890161 (choose!33346 (toList!5921 lt!1889312) lambda!215922 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(declare-fun e!2947128 () Bool)

(assert (=> d!1505310 e!2947128))

(declare-fun res!1999526 () Bool)

(assert (=> d!1505310 (=> (not res!1999526) (not e!2947128))))

(assert (=> d!1505310 (= res!1999526 (forall!11596 (toList!5921 lt!1889312) lambda!215922))))

(assert (=> d!1505310 (= (forallContained!3643 (toList!5921 lt!1889312) lambda!215922 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) lt!1890161)))

(declare-fun b!4725290 () Bool)

(assert (=> b!4725290 (= e!2947128 (contains!16186 (toList!5921 lt!1889312) (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (= (and d!1505310 res!1999526) b!4725290))

(declare-fun b_lambda!179377 () Bool)

(assert (=> (not b_lambda!179377) (not d!1505310)))

(assert (=> d!1505310 m!5663927))

(declare-fun m!5664103 () Bool)

(assert (=> d!1505310 m!5664103))

(assert (=> d!1505310 m!5662015))

(declare-fun m!5664109 () Bool)

(assert (=> b!4725290 m!5664109))

(assert (=> b!4724318 d!1505310))

(assert (=> b!4724318 d!1504980))

(declare-fun d!1505312 () Bool)

(declare-fun res!1999527 () Bool)

(declare-fun e!2947129 () Bool)

(assert (=> d!1505312 (=> res!1999527 e!2947129)))

(assert (=> d!1505312 (= res!1999527 ((_ is Nil!52836) (toList!5921 lt!1889312)))))

(assert (=> d!1505312 (= (forall!11596 (toList!5921 lt!1889312) lambda!215922) e!2947129)))

(declare-fun b!4725291 () Bool)

(declare-fun e!2947130 () Bool)

(assert (=> b!4725291 (= e!2947129 e!2947130)))

(declare-fun res!1999528 () Bool)

(assert (=> b!4725291 (=> (not res!1999528) (not e!2947130))))

(assert (=> b!4725291 (= res!1999528 (dynLambda!21825 lambda!215922 (h!59185 (toList!5921 lt!1889312))))))

(declare-fun b!4725292 () Bool)

(assert (=> b!4725292 (= e!2947130 (forall!11596 (t!360230 (toList!5921 lt!1889312)) lambda!215922))))

(assert (= (and d!1505312 (not res!1999527)) b!4725291))

(assert (= (and b!4725291 res!1999528) b!4725292))

(declare-fun b_lambda!179379 () Bool)

(assert (=> (not b_lambda!179379) (not b!4725291)))

(declare-fun m!5664121 () Bool)

(assert (=> b!4725291 m!5664121))

(declare-fun m!5664123 () Bool)

(assert (=> b!4725292 m!5664123))

(assert (=> b!4724318 d!1505312))

(declare-fun b!4725294 () Bool)

(declare-fun e!2947134 () Bool)

(declare-fun e!2947135 () Bool)

(assert (=> b!4725294 (= e!2947134 e!2947135)))

(declare-fun res!1999531 () Bool)

(assert (=> b!4725294 (=> (not res!1999531) (not e!2947135))))

(assert (=> b!4725294 (= res!1999531 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889307) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))))

(declare-fun bm!330597 () Bool)

(declare-fun call!330602 () Bool)

(declare-fun e!2947137 () List!52963)

(assert (=> bm!330597 (= call!330602 (contains!16188 e!2947137 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun c!807050 () Bool)

(declare-fun c!807049 () Bool)

(assert (=> bm!330597 (= c!807050 c!807049)))

(declare-fun d!1505316 () Bool)

(assert (=> d!1505316 e!2947134))

(declare-fun res!1999532 () Bool)

(assert (=> d!1505316 (=> res!1999532 e!2947134)))

(declare-fun e!2947132 () Bool)

(assert (=> d!1505316 (= res!1999532 e!2947132)))

(declare-fun res!1999530 () Bool)

(assert (=> d!1505316 (=> (not res!1999530) (not e!2947132))))

(declare-fun lt!1890166 () Bool)

(assert (=> d!1505316 (= res!1999530 (not lt!1890166))))

(declare-fun lt!1890168 () Bool)

(assert (=> d!1505316 (= lt!1890166 lt!1890168)))

(declare-fun lt!1890165 () Unit!130501)

(declare-fun e!2947133 () Unit!130501)

(assert (=> d!1505316 (= lt!1890165 e!2947133)))

(assert (=> d!1505316 (= c!807049 lt!1890168)))

(assert (=> d!1505316 (= lt!1890168 (containsKey!3379 (toList!5921 lt!1889307) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> d!1505316 (= (contains!16183 lt!1889307 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) lt!1890166)))

(declare-fun b!4725295 () Bool)

(assert (=> b!4725295 (= e!2947137 (keys!18978 lt!1889307))))

(declare-fun b!4725296 () Bool)

(assert (=> b!4725296 (= e!2947137 (getKeysList!953 (toList!5921 lt!1889307)))))

(declare-fun b!4725297 () Bool)

(declare-fun lt!1890170 () Unit!130501)

(assert (=> b!4725297 (= e!2947133 lt!1890170)))

(declare-fun lt!1890169 () Unit!130501)

(assert (=> b!4725297 (= lt!1890169 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889307) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> b!4725297 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889307) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun lt!1890167 () Unit!130501)

(assert (=> b!4725297 (= lt!1890167 lt!1890169)))

(assert (=> b!4725297 (= lt!1890170 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889307) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> b!4725297 call!330602))

(declare-fun b!4725298 () Bool)

(assert (=> b!4725298 (= e!2947132 (not (contains!16188 (keys!18978 lt!1889307) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))))

(declare-fun b!4725299 () Bool)

(assert (=> b!4725299 false))

(declare-fun lt!1890164 () Unit!130501)

(declare-fun lt!1890163 () Unit!130501)

(assert (=> b!4725299 (= lt!1890164 lt!1890163)))

(assert (=> b!4725299 (containsKey!3379 (toList!5921 lt!1889307) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))

(assert (=> b!4725299 (= lt!1890163 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889307) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun e!2947136 () Unit!130501)

(declare-fun Unit!130834 () Unit!130501)

(assert (=> b!4725299 (= e!2947136 Unit!130834)))

(declare-fun b!4725300 () Bool)

(assert (=> b!4725300 (= e!2947133 e!2947136)))

(declare-fun c!807051 () Bool)

(assert (=> b!4725300 (= c!807051 call!330602)))

(declare-fun b!4725301 () Bool)

(assert (=> b!4725301 (= e!2947135 (contains!16188 (keys!18978 lt!1889307) (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun b!4725302 () Bool)

(declare-fun Unit!130835 () Unit!130501)

(assert (=> b!4725302 (= e!2947136 Unit!130835)))

(assert (= (and d!1505316 c!807049) b!4725297))

(assert (= (and d!1505316 (not c!807049)) b!4725300))

(assert (= (and b!4725300 c!807051) b!4725299))

(assert (= (and b!4725300 (not c!807051)) b!4725302))

(assert (= (or b!4725297 b!4725300) bm!330597))

(assert (= (and bm!330597 c!807050) b!4725296))

(assert (= (and bm!330597 (not c!807050)) b!4725295))

(assert (= (and d!1505316 res!1999530) b!4725298))

(assert (= (and d!1505316 (not res!1999532)) b!4725294))

(assert (= (and b!4725294 res!1999531) b!4725301))

(declare-fun m!5664131 () Bool)

(assert (=> b!4725295 m!5664131))

(assert (=> b!4725301 m!5664131))

(assert (=> b!4725301 m!5664131))

(declare-fun m!5664135 () Bool)

(assert (=> b!4725301 m!5664135))

(declare-fun m!5664139 () Bool)

(assert (=> b!4725294 m!5664139))

(assert (=> b!4725294 m!5664139))

(declare-fun m!5664143 () Bool)

(assert (=> b!4725294 m!5664143))

(declare-fun m!5664145 () Bool)

(assert (=> b!4725296 m!5664145))

(declare-fun m!5664149 () Bool)

(assert (=> d!1505316 m!5664149))

(declare-fun m!5664153 () Bool)

(assert (=> b!4725297 m!5664153))

(assert (=> b!4725297 m!5664139))

(assert (=> b!4725297 m!5664139))

(assert (=> b!4725297 m!5664143))

(declare-fun m!5664157 () Bool)

(assert (=> b!4725297 m!5664157))

(assert (=> b!4725298 m!5664131))

(assert (=> b!4725298 m!5664131))

(assert (=> b!4725298 m!5664135))

(declare-fun m!5664159 () Bool)

(assert (=> bm!330597 m!5664159))

(assert (=> b!4725299 m!5664149))

(declare-fun m!5664161 () Bool)

(assert (=> b!4725299 m!5664161))

(assert (=> b!4724318 d!1505316))

(assert (=> d!1504802 d!1504828))

(assert (=> d!1504802 d!1504916))

(declare-fun d!1505322 () Bool)

(assert (=> d!1505322 (= (eq!1133 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044) (+!2271 (addToMapMapFromBucket!1446 lt!1889050 lt!1889044) lt!1889051)) (= (content!9398 (toList!5921 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044))) (content!9398 (toList!5921 (+!2271 (addToMapMapFromBucket!1446 lt!1889050 lt!1889044) lt!1889051)))))))

(declare-fun bs!1116921 () Bool)

(assert (= bs!1116921 d!1505322))

(assert (=> bs!1116921 m!5662173))

(declare-fun m!5664163 () Bool)

(assert (=> bs!1116921 m!5664163))

(assert (=> d!1504802 d!1505322))

(assert (=> d!1504802 d!1504812))

(declare-fun d!1505324 () Bool)

(declare-fun e!2947145 () Bool)

(assert (=> d!1505324 e!2947145))

(declare-fun res!1999539 () Bool)

(assert (=> d!1505324 (=> (not res!1999539) (not e!2947145))))

(declare-fun lt!1890184 () ListMap!5285)

(assert (=> d!1505324 (= res!1999539 (contains!16183 lt!1890184 (_1!30523 lt!1889051)))))

(declare-fun lt!1890186 () List!52960)

(assert (=> d!1505324 (= lt!1890184 (ListMap!5286 lt!1890186))))

(declare-fun lt!1890185 () Unit!130501)

(declare-fun lt!1890183 () Unit!130501)

(assert (=> d!1505324 (= lt!1890185 lt!1890183)))

(assert (=> d!1505324 (= (getValueByKey!1961 lt!1890186 (_1!30523 lt!1889051)) (Some!12364 (_2!30523 lt!1889051)))))

(assert (=> d!1505324 (= lt!1890183 (lemmaContainsTupThenGetReturnValue!1088 lt!1890186 (_1!30523 lt!1889051) (_2!30523 lt!1889051)))))

(assert (=> d!1505324 (= lt!1890186 (insertNoDuplicatedKeys!596 (toList!5921 (addToMapMapFromBucket!1446 lt!1889050 lt!1889044)) (_1!30523 lt!1889051) (_2!30523 lt!1889051)))))

(assert (=> d!1505324 (= (+!2271 (addToMapMapFromBucket!1446 lt!1889050 lt!1889044) lt!1889051) lt!1890184)))

(declare-fun b!4725314 () Bool)

(declare-fun res!1999538 () Bool)

(assert (=> b!4725314 (=> (not res!1999538) (not e!2947145))))

(assert (=> b!4725314 (= res!1999538 (= (getValueByKey!1961 (toList!5921 lt!1890184) (_1!30523 lt!1889051)) (Some!12364 (_2!30523 lt!1889051))))))

(declare-fun b!4725315 () Bool)

(assert (=> b!4725315 (= e!2947145 (contains!16186 (toList!5921 lt!1890184) lt!1889051))))

(assert (= (and d!1505324 res!1999539) b!4725314))

(assert (= (and b!4725314 res!1999538) b!4725315))

(declare-fun m!5664169 () Bool)

(assert (=> d!1505324 m!5664169))

(declare-fun m!5664173 () Bool)

(assert (=> d!1505324 m!5664173))

(declare-fun m!5664177 () Bool)

(assert (=> d!1505324 m!5664177))

(declare-fun m!5664181 () Bool)

(assert (=> d!1505324 m!5664181))

(declare-fun m!5664187 () Bool)

(assert (=> b!4725314 m!5664187))

(declare-fun m!5664189 () Bool)

(assert (=> b!4725315 m!5664189))

(assert (=> d!1504802 d!1505324))

(declare-fun d!1505326 () Bool)

(assert (=> d!1505326 (eq!1133 (addToMapMapFromBucket!1446 (Cons!52836 lt!1889051 lt!1889050) lt!1889044) (+!2271 (addToMapMapFromBucket!1446 lt!1889050 lt!1889044) lt!1889051))))

(assert (=> d!1505326 true))

(declare-fun _$30!189 () Unit!130501)

(assert (=> d!1505326 (= (choose!33341 lt!1889051 lt!1889050 lt!1889044) _$30!189)))

(declare-fun bs!1116966 () Bool)

(assert (= bs!1116966 d!1505326))

(assert (=> bs!1116966 m!5661683))

(assert (=> bs!1116966 m!5661651))

(assert (=> bs!1116966 m!5661651))

(assert (=> bs!1116966 m!5662111))

(assert (=> bs!1116966 m!5661683))

(assert (=> bs!1116966 m!5662111))

(assert (=> bs!1116966 m!5662113))

(assert (=> d!1504802 d!1505326))

(declare-fun b!4725330 () Bool)

(declare-fun e!2947162 () Bool)

(declare-fun e!2947163 () Bool)

(assert (=> b!4725330 (= e!2947162 e!2947163)))

(declare-fun res!1999555 () Bool)

(assert (=> b!4725330 (=> (not res!1999555) (not e!2947163))))

(assert (=> b!4725330 (= res!1999555 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889381) (_1!30523 lt!1889051))))))

(declare-fun bm!330599 () Bool)

(declare-fun call!330604 () Bool)

(declare-fun e!2947165 () List!52963)

(assert (=> bm!330599 (= call!330604 (contains!16188 e!2947165 (_1!30523 lt!1889051)))))

(declare-fun c!807056 () Bool)

(declare-fun c!807055 () Bool)

(assert (=> bm!330599 (= c!807056 c!807055)))

(declare-fun d!1505346 () Bool)

(assert (=> d!1505346 e!2947162))

(declare-fun res!1999556 () Bool)

(assert (=> d!1505346 (=> res!1999556 e!2947162)))

(declare-fun e!2947160 () Bool)

(assert (=> d!1505346 (= res!1999556 e!2947160)))

(declare-fun res!1999554 () Bool)

(assert (=> d!1505346 (=> (not res!1999554) (not e!2947160))))

(declare-fun lt!1890191 () Bool)

(assert (=> d!1505346 (= res!1999554 (not lt!1890191))))

(declare-fun lt!1890193 () Bool)

(assert (=> d!1505346 (= lt!1890191 lt!1890193)))

(declare-fun lt!1890190 () Unit!130501)

(declare-fun e!2947161 () Unit!130501)

(assert (=> d!1505346 (= lt!1890190 e!2947161)))

(assert (=> d!1505346 (= c!807055 lt!1890193)))

(assert (=> d!1505346 (= lt!1890193 (containsKey!3379 (toList!5921 lt!1889381) (_1!30523 lt!1889051)))))

(assert (=> d!1505346 (= (contains!16183 lt!1889381 (_1!30523 lt!1889051)) lt!1890191)))

(declare-fun b!4725331 () Bool)

(assert (=> b!4725331 (= e!2947165 (keys!18978 lt!1889381))))

(declare-fun b!4725332 () Bool)

(assert (=> b!4725332 (= e!2947165 (getKeysList!953 (toList!5921 lt!1889381)))))

(declare-fun b!4725333 () Bool)

(declare-fun lt!1890195 () Unit!130501)

(assert (=> b!4725333 (= e!2947161 lt!1890195)))

(declare-fun lt!1890194 () Unit!130501)

(assert (=> b!4725333 (= lt!1890194 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889381) (_1!30523 lt!1889051)))))

(assert (=> b!4725333 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889381) (_1!30523 lt!1889051)))))

(declare-fun lt!1890192 () Unit!130501)

(assert (=> b!4725333 (= lt!1890192 lt!1890194)))

(assert (=> b!4725333 (= lt!1890195 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889381) (_1!30523 lt!1889051)))))

(assert (=> b!4725333 call!330604))

(declare-fun b!4725334 () Bool)

(assert (=> b!4725334 (= e!2947160 (not (contains!16188 (keys!18978 lt!1889381) (_1!30523 lt!1889051))))))

(declare-fun b!4725335 () Bool)

(assert (=> b!4725335 false))

(declare-fun lt!1890189 () Unit!130501)

(declare-fun lt!1890188 () Unit!130501)

(assert (=> b!4725335 (= lt!1890189 lt!1890188)))

(assert (=> b!4725335 (containsKey!3379 (toList!5921 lt!1889381) (_1!30523 lt!1889051))))

(assert (=> b!4725335 (= lt!1890188 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889381) (_1!30523 lt!1889051)))))

(declare-fun e!2947164 () Unit!130501)

(declare-fun Unit!130836 () Unit!130501)

(assert (=> b!4725335 (= e!2947164 Unit!130836)))

(declare-fun b!4725336 () Bool)

(assert (=> b!4725336 (= e!2947161 e!2947164)))

(declare-fun c!807057 () Bool)

(assert (=> b!4725336 (= c!807057 call!330604)))

(declare-fun b!4725337 () Bool)

(assert (=> b!4725337 (= e!2947163 (contains!16188 (keys!18978 lt!1889381) (_1!30523 lt!1889051)))))

(declare-fun b!4725338 () Bool)

(declare-fun Unit!130837 () Unit!130501)

(assert (=> b!4725338 (= e!2947164 Unit!130837)))

(assert (= (and d!1505346 c!807055) b!4725333))

(assert (= (and d!1505346 (not c!807055)) b!4725336))

(assert (= (and b!4725336 c!807057) b!4725335))

(assert (= (and b!4725336 (not c!807057)) b!4725338))

(assert (= (or b!4725333 b!4725336) bm!330599))

(assert (= (and bm!330599 c!807056) b!4725332))

(assert (= (and bm!330599 (not c!807056)) b!4725331))

(assert (= (and d!1505346 res!1999554) b!4725334))

(assert (= (and d!1505346 (not res!1999556)) b!4725330))

(assert (= (and b!4725330 res!1999555) b!4725337))

(declare-fun m!5664233 () Bool)

(assert (=> b!4725331 m!5664233))

(assert (=> b!4725337 m!5664233))

(assert (=> b!4725337 m!5664233))

(declare-fun m!5664235 () Bool)

(assert (=> b!4725337 m!5664235))

(assert (=> b!4725330 m!5662157))

(assert (=> b!4725330 m!5662157))

(declare-fun m!5664237 () Bool)

(assert (=> b!4725330 m!5664237))

(declare-fun m!5664239 () Bool)

(assert (=> b!4725332 m!5664239))

(declare-fun m!5664241 () Bool)

(assert (=> d!1505346 m!5664241))

(declare-fun m!5664243 () Bool)

(assert (=> b!4725333 m!5664243))

(assert (=> b!4725333 m!5662157))

(assert (=> b!4725333 m!5662157))

(assert (=> b!4725333 m!5664237))

(declare-fun m!5664247 () Bool)

(assert (=> b!4725333 m!5664247))

(assert (=> b!4725334 m!5664233))

(assert (=> b!4725334 m!5664233))

(assert (=> b!4725334 m!5664235))

(declare-fun m!5664251 () Bool)

(assert (=> bm!330599 m!5664251))

(assert (=> b!4725335 m!5664241))

(declare-fun m!5664253 () Bool)

(assert (=> b!4725335 m!5664253))

(assert (=> d!1504814 d!1505346))

(declare-fun b!4725344 () Bool)

(declare-fun e!2947169 () Option!12365)

(assert (=> b!4725344 (= e!2947169 None!12364)))

(declare-fun b!4725341 () Bool)

(declare-fun e!2947168 () Option!12365)

(assert (=> b!4725341 (= e!2947168 (Some!12364 (_2!30523 (h!59185 lt!1889383))))))

(declare-fun b!4725342 () Bool)

(assert (=> b!4725342 (= e!2947168 e!2947169)))

(declare-fun c!807059 () Bool)

(assert (=> b!4725342 (= c!807059 (and ((_ is Cons!52836) lt!1889383) (not (= (_1!30523 (h!59185 lt!1889383)) (_1!30523 lt!1889051)))))))

(declare-fun b!4725343 () Bool)

(assert (=> b!4725343 (= e!2947169 (getValueByKey!1961 (t!360230 lt!1889383) (_1!30523 lt!1889051)))))

(declare-fun d!1505352 () Bool)

(declare-fun c!807058 () Bool)

(assert (=> d!1505352 (= c!807058 (and ((_ is Cons!52836) lt!1889383) (= (_1!30523 (h!59185 lt!1889383)) (_1!30523 lt!1889051))))))

(assert (=> d!1505352 (= (getValueByKey!1961 lt!1889383 (_1!30523 lt!1889051)) e!2947168)))

(assert (= (and d!1505352 c!807058) b!4725341))

(assert (= (and d!1505352 (not c!807058)) b!4725342))

(assert (= (and b!4725342 c!807059) b!4725343))

(assert (= (and b!4725342 (not c!807059)) b!4725344))

(declare-fun m!5664255 () Bool)

(assert (=> b!4725343 m!5664255))

(assert (=> d!1504814 d!1505352))

(declare-fun d!1505354 () Bool)

(assert (=> d!1505354 (= (getValueByKey!1961 lt!1889383 (_1!30523 lt!1889051)) (Some!12364 (_2!30523 lt!1889051)))))

(declare-fun lt!1890196 () Unit!130501)

(assert (=> d!1505354 (= lt!1890196 (choose!33353 lt!1889383 (_1!30523 lt!1889051) (_2!30523 lt!1889051)))))

(declare-fun e!2947170 () Bool)

(assert (=> d!1505354 e!2947170))

(declare-fun res!1999559 () Bool)

(assert (=> d!1505354 (=> (not res!1999559) (not e!2947170))))

(assert (=> d!1505354 (= res!1999559 (invariantList!1513 lt!1889383))))

(assert (=> d!1505354 (= (lemmaContainsTupThenGetReturnValue!1088 lt!1889383 (_1!30523 lt!1889051) (_2!30523 lt!1889051)) lt!1890196)))

(declare-fun b!4725345 () Bool)

(declare-fun res!1999560 () Bool)

(assert (=> b!4725345 (=> (not res!1999560) (not e!2947170))))

(assert (=> b!4725345 (= res!1999560 (containsKey!3379 lt!1889383 (_1!30523 lt!1889051)))))

(declare-fun b!4725346 () Bool)

(assert (=> b!4725346 (= e!2947170 (contains!16186 lt!1889383 (tuple2!54459 (_1!30523 lt!1889051) (_2!30523 lt!1889051))))))

(assert (= (and d!1505354 res!1999559) b!4725345))

(assert (= (and b!4725345 res!1999560) b!4725346))

(assert (=> d!1505354 m!5662151))

(declare-fun m!5664257 () Bool)

(assert (=> d!1505354 m!5664257))

(declare-fun m!5664259 () Bool)

(assert (=> d!1505354 m!5664259))

(declare-fun m!5664261 () Bool)

(assert (=> b!4725345 m!5664261))

(declare-fun m!5664263 () Bool)

(assert (=> b!4725346 m!5664263))

(assert (=> d!1504814 d!1505354))

(declare-fun b!4725347 () Bool)

(declare-fun e!2947171 () List!52960)

(declare-fun call!330606 () List!52960)

(assert (=> b!4725347 (= e!2947171 call!330606)))

(declare-fun lt!1890199 () List!52963)

(declare-fun call!330608 () List!52963)

(assert (=> b!4725347 (= lt!1890199 call!330608)))

(declare-fun lt!1890205 () Unit!130501)

(assert (=> b!4725347 (= lt!1890205 (lemmaSubseqRefl!144 lt!1890199))))

(assert (=> b!4725347 (subseq!660 lt!1890199 lt!1890199)))

(declare-fun lt!1890200 () Unit!130501)

(assert (=> b!4725347 (= lt!1890200 lt!1890205)))

(declare-fun b!4725348 () Bool)

(declare-fun e!2947177 () List!52960)

(declare-fun call!330607 () List!52960)

(assert (=> b!4725348 (= e!2947177 call!330607)))

(declare-fun b!4725349 () Bool)

(declare-fun e!2947175 () List!52960)

(declare-fun call!330605 () List!52960)

(assert (=> b!4725349 (= e!2947175 call!330605)))

(declare-fun bm!330600 () Bool)

(assert (=> bm!330600 (= call!330605 call!330606)))

(declare-fun d!1505356 () Bool)

(declare-fun e!2947172 () Bool)

(assert (=> d!1505356 e!2947172))

(declare-fun res!1999561 () Bool)

(assert (=> d!1505356 (=> (not res!1999561) (not e!2947172))))

(declare-fun lt!1890197 () List!52960)

(assert (=> d!1505356 (= res!1999561 (invariantList!1513 lt!1890197))))

(assert (=> d!1505356 (= lt!1890197 e!2947171)))

(declare-fun c!807062 () Bool)

(assert (=> d!1505356 (= c!807062 (and ((_ is Cons!52836) (toList!5921 lt!1889047)) (= (_1!30523 (h!59185 (toList!5921 lt!1889047))) (_1!30523 lt!1889051))))))

(assert (=> d!1505356 (invariantList!1513 (toList!5921 lt!1889047))))

(assert (=> d!1505356 (= (insertNoDuplicatedKeys!596 (toList!5921 lt!1889047) (_1!30523 lt!1889051) (_2!30523 lt!1889051)) lt!1890197)))

(declare-fun b!4725350 () Bool)

(declare-fun e!2947173 () Unit!130501)

(declare-fun Unit!130840 () Unit!130501)

(assert (=> b!4725350 (= e!2947173 Unit!130840)))

(declare-fun b!4725351 () Bool)

(declare-fun e!2947176 () List!52960)

(assert (=> b!4725351 (= e!2947176 (insertNoDuplicatedKeys!596 (t!360230 (toList!5921 lt!1889047)) (_1!30523 lt!1889051) (_2!30523 lt!1889051)))))

(declare-fun b!4725352 () Bool)

(assert (=> b!4725352 (= e!2947172 (= (content!9400 (getKeysList!953 lt!1890197)) ((_ map or) (content!9400 (getKeysList!953 (toList!5921 lt!1889047))) (store ((as const (Array K!14190 Bool)) false) (_1!30523 lt!1889051) true))))))

(declare-fun b!4725353 () Bool)

(declare-fun e!2947174 () Bool)

(assert (=> b!4725353 (= e!2947174 (not (containsKey!3379 (toList!5921 lt!1889047) (_1!30523 lt!1889051))))))

(declare-fun lt!1890204 () List!52960)

(declare-fun bm!330601 () Bool)

(assert (=> bm!330601 (= call!330608 (getKeysList!953 (ite c!807062 (toList!5921 lt!1889047) lt!1890204)))))

(declare-fun b!4725354 () Bool)

(declare-fun res!1999562 () Bool)

(assert (=> b!4725354 (=> (not res!1999562) (not e!2947172))))

(assert (=> b!4725354 (= res!1999562 (containsKey!3379 lt!1890197 (_1!30523 lt!1889051)))))

(declare-fun b!4725355 () Bool)

(assert (=> b!4725355 (= e!2947176 Nil!52836)))

(declare-fun bm!330602 () Bool)

(declare-fun c!807061 () Bool)

(declare-fun c!807063 () Bool)

(assert (=> bm!330602 (= call!330606 ($colon$colon!1079 (ite c!807062 (t!360230 (toList!5921 lt!1889047)) (ite c!807061 (toList!5921 lt!1889047) e!2947176)) (ite (or c!807062 c!807061) (tuple2!54459 (_1!30523 lt!1889051) (_2!30523 lt!1889051)) (ite c!807063 (h!59185 (toList!5921 lt!1889047)) (tuple2!54459 (_1!30523 lt!1889051) (_2!30523 lt!1889051))))))))

(declare-fun b!4725356 () Bool)

(assert (=> b!4725356 (= e!2947171 e!2947175)))

(declare-fun res!1999564 () Bool)

(assert (=> b!4725356 (= res!1999564 ((_ is Cons!52836) (toList!5921 lt!1889047)))))

(assert (=> b!4725356 (=> (not res!1999564) (not e!2947174))))

(assert (=> b!4725356 (= c!807061 e!2947174)))

(declare-fun b!4725357 () Bool)

(assert (=> b!4725357 (= c!807063 ((_ is Cons!52836) (toList!5921 lt!1889047)))))

(assert (=> b!4725357 (= e!2947175 e!2947177)))

(declare-fun b!4725358 () Bool)

(declare-fun lt!1890201 () List!52960)

(assert (=> b!4725358 (= e!2947177 lt!1890201)))

(assert (=> b!4725358 (= lt!1890201 call!330607)))

(declare-fun c!807064 () Bool)

(assert (=> b!4725358 (= c!807064 (containsKey!3379 (insertNoDuplicatedKeys!596 (t!360230 (toList!5921 lt!1889047)) (_1!30523 lt!1889051) (_2!30523 lt!1889051)) (_1!30523 (h!59185 (toList!5921 lt!1889047)))))))

(declare-fun lt!1890202 () Unit!130501)

(assert (=> b!4725358 (= lt!1890202 e!2947173)))

(declare-fun b!4725359 () Bool)

(assert (=> b!4725359 false))

(declare-fun lt!1890198 () Unit!130501)

(declare-fun lt!1890207 () Unit!130501)

(assert (=> b!4725359 (= lt!1890198 lt!1890207)))

(assert (=> b!4725359 (containsKey!3379 (t!360230 (toList!5921 lt!1889047)) (_1!30523 (h!59185 (toList!5921 lt!1889047))))))

(assert (=> b!4725359 (= lt!1890207 (lemmaInGetKeysListThenContainsKey!952 (t!360230 (toList!5921 lt!1889047)) (_1!30523 (h!59185 (toList!5921 lt!1889047)))))))

(declare-fun lt!1890206 () Unit!130501)

(declare-fun lt!1890203 () Unit!130501)

(assert (=> b!4725359 (= lt!1890206 lt!1890203)))

(assert (=> b!4725359 (contains!16188 call!330608 (_1!30523 (h!59185 (toList!5921 lt!1889047))))))

(assert (=> b!4725359 (= lt!1890203 (lemmaInListThenGetKeysListContains!948 lt!1890204 (_1!30523 (h!59185 (toList!5921 lt!1889047)))))))

(assert (=> b!4725359 (= lt!1890204 (insertNoDuplicatedKeys!596 (t!360230 (toList!5921 lt!1889047)) (_1!30523 lt!1889051) (_2!30523 lt!1889051)))))

(declare-fun Unit!130841 () Unit!130501)

(assert (=> b!4725359 (= e!2947173 Unit!130841)))

(declare-fun bm!330603 () Bool)

(assert (=> bm!330603 (= call!330607 call!330605)))

(declare-fun c!807060 () Bool)

(assert (=> bm!330603 (= c!807060 c!807063)))

(declare-fun b!4725360 () Bool)

(declare-fun res!1999563 () Bool)

(assert (=> b!4725360 (=> (not res!1999563) (not e!2947172))))

(assert (=> b!4725360 (= res!1999563 (contains!16186 lt!1890197 (tuple2!54459 (_1!30523 lt!1889051) (_2!30523 lt!1889051))))))

(assert (= (and d!1505356 c!807062) b!4725347))

(assert (= (and d!1505356 (not c!807062)) b!4725356))

(assert (= (and b!4725356 res!1999564) b!4725353))

(assert (= (and b!4725356 c!807061) b!4725349))

(assert (= (and b!4725356 (not c!807061)) b!4725357))

(assert (= (and b!4725357 c!807063) b!4725358))

(assert (= (and b!4725357 (not c!807063)) b!4725348))

(assert (= (and b!4725358 c!807064) b!4725359))

(assert (= (and b!4725358 (not c!807064)) b!4725350))

(assert (= (or b!4725358 b!4725348) bm!330603))

(assert (= (and bm!330603 c!807060) b!4725351))

(assert (= (and bm!330603 (not c!807060)) b!4725355))

(assert (= (or b!4725349 bm!330603) bm!330600))

(assert (= (or b!4725347 b!4725359) bm!330601))

(assert (= (or b!4725347 bm!330600) bm!330602))

(assert (= (and d!1505356 res!1999561) b!4725354))

(assert (= (and b!4725354 res!1999562) b!4725360))

(assert (= (and b!4725360 res!1999563) b!4725352))

(assert (=> b!4725352 m!5663125))

(assert (=> b!4725352 m!5663127))

(assert (=> b!4725352 m!5663125))

(declare-fun m!5664265 () Bool)

(assert (=> b!4725352 m!5664265))

(declare-fun m!5664267 () Bool)

(assert (=> b!4725352 m!5664267))

(assert (=> b!4725352 m!5664267))

(declare-fun m!5664269 () Bool)

(assert (=> b!4725352 m!5664269))

(declare-fun m!5664271 () Bool)

(assert (=> b!4725359 m!5664271))

(assert (=> b!4725359 m!5663137))

(assert (=> b!4725359 m!5663139))

(declare-fun m!5664273 () Bool)

(assert (=> b!4725359 m!5664273))

(declare-fun m!5664275 () Bool)

(assert (=> b!4725359 m!5664275))

(declare-fun m!5664277 () Bool)

(assert (=> d!1505356 m!5664277))

(assert (=> d!1505356 m!5663147))

(declare-fun m!5664279 () Bool)

(assert (=> bm!330602 m!5664279))

(declare-fun m!5664281 () Bool)

(assert (=> b!4725353 m!5664281))

(declare-fun m!5664283 () Bool)

(assert (=> b!4725360 m!5664283))

(assert (=> b!4725351 m!5664275))

(declare-fun m!5664285 () Bool)

(assert (=> bm!330601 m!5664285))

(declare-fun m!5664287 () Bool)

(assert (=> b!4725354 m!5664287))

(assert (=> b!4725358 m!5664275))

(assert (=> b!4725358 m!5664275))

(declare-fun m!5664289 () Bool)

(assert (=> b!4725358 m!5664289))

(declare-fun m!5664291 () Bool)

(assert (=> b!4725347 m!5664291))

(declare-fun m!5664293 () Bool)

(assert (=> b!4725347 m!5664293))

(assert (=> d!1504814 d!1505356))

(declare-fun d!1505358 () Bool)

(declare-fun res!1999574 () Bool)

(declare-fun e!2947190 () Bool)

(assert (=> d!1505358 (=> res!1999574 e!2947190)))

(assert (=> d!1505358 (= res!1999574 ((_ is Nil!52836) (toList!5921 lt!1889044)))))

(assert (=> d!1505358 (= (forall!11596 (toList!5921 lt!1889044) (ite c!806857 lambda!215934 lambda!215935)) e!2947190)))

(declare-fun b!4725369 () Bool)

(declare-fun e!2947191 () Bool)

(assert (=> b!4725369 (= e!2947190 e!2947191)))

(declare-fun res!1999575 () Bool)

(assert (=> b!4725369 (=> (not res!1999575) (not e!2947191))))

(assert (=> b!4725369 (= res!1999575 (dynLambda!21825 (ite c!806857 lambda!215934 lambda!215935) (h!59185 (toList!5921 lt!1889044))))))

(declare-fun b!4725371 () Bool)

(assert (=> b!4725371 (= e!2947191 (forall!11596 (t!360230 (toList!5921 lt!1889044)) (ite c!806857 lambda!215934 lambda!215935)))))

(assert (= (and d!1505358 (not res!1999574)) b!4725369))

(assert (= (and b!4725369 res!1999575) b!4725371))

(declare-fun b_lambda!179399 () Bool)

(assert (=> (not b_lambda!179399) (not b!4725369)))

(declare-fun m!5664317 () Bool)

(assert (=> b!4725369 m!5664317))

(declare-fun m!5664319 () Bool)

(assert (=> b!4725371 m!5664319))

(assert (=> bm!330497 d!1505358))

(assert (=> bs!1115194 d!1505282))

(declare-fun d!1505364 () Bool)

(declare-fun res!1999578 () Bool)

(declare-fun e!2947194 () Bool)

(assert (=> d!1505364 (=> res!1999578 e!2947194)))

(assert (=> d!1505364 (= res!1999578 ((_ is Nil!52836) (toList!5921 lt!1889470)))))

(assert (=> d!1505364 (= (forall!11596 (toList!5921 lt!1889470) lambda!215945) e!2947194)))

(declare-fun b!4725380 () Bool)

(declare-fun e!2947195 () Bool)

(assert (=> b!4725380 (= e!2947194 e!2947195)))

(declare-fun res!1999579 () Bool)

(assert (=> b!4725380 (=> (not res!1999579) (not e!2947195))))

(assert (=> b!4725380 (= res!1999579 (dynLambda!21825 lambda!215945 (h!59185 (toList!5921 lt!1889470))))))

(declare-fun b!4725381 () Bool)

(assert (=> b!4725381 (= e!2947195 (forall!11596 (t!360230 (toList!5921 lt!1889470)) lambda!215945))))

(assert (= (and d!1505364 (not res!1999578)) b!4725380))

(assert (= (and b!4725380 res!1999579) b!4725381))

(declare-fun b_lambda!179403 () Bool)

(assert (=> (not b_lambda!179403) (not b!4725380)))

(declare-fun m!5664325 () Bool)

(assert (=> b!4725380 m!5664325))

(declare-fun m!5664327 () Bool)

(assert (=> b!4725381 m!5664327))

(assert (=> b!4724439 d!1505364))

(declare-fun d!1505368 () Bool)

(declare-fun e!2947198 () Bool)

(assert (=> d!1505368 e!2947198))

(declare-fun res!1999583 () Bool)

(assert (=> d!1505368 (=> (not res!1999583) (not e!2947198))))

(declare-fun lt!1890217 () ListMap!5285)

(assert (=> d!1505368 (= res!1999583 (contains!16183 lt!1890217 (_1!30523 (h!59185 lt!1889050))))))

(declare-fun lt!1890219 () List!52960)

(assert (=> d!1505368 (= lt!1890217 (ListMap!5286 lt!1890219))))

(declare-fun lt!1890218 () Unit!130501)

(declare-fun lt!1890216 () Unit!130501)

(assert (=> d!1505368 (= lt!1890218 lt!1890216)))

(assert (=> d!1505368 (= (getValueByKey!1961 lt!1890219 (_1!30523 (h!59185 lt!1889050))) (Some!12364 (_2!30523 (h!59185 lt!1889050))))))

(assert (=> d!1505368 (= lt!1890216 (lemmaContainsTupThenGetReturnValue!1088 lt!1890219 (_1!30523 (h!59185 lt!1889050)) (_2!30523 (h!59185 lt!1889050))))))

(assert (=> d!1505368 (= lt!1890219 (insertNoDuplicatedKeys!596 (toList!5921 lt!1889044) (_1!30523 (h!59185 lt!1889050)) (_2!30523 (h!59185 lt!1889050))))))

(assert (=> d!1505368 (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890217)))

(declare-fun b!4725384 () Bool)

(declare-fun res!1999582 () Bool)

(assert (=> b!4725384 (=> (not res!1999582) (not e!2947198))))

(assert (=> b!4725384 (= res!1999582 (= (getValueByKey!1961 (toList!5921 lt!1890217) (_1!30523 (h!59185 lt!1889050))) (Some!12364 (_2!30523 (h!59185 lt!1889050)))))))

(declare-fun b!4725385 () Bool)

(assert (=> b!4725385 (= e!2947198 (contains!16186 (toList!5921 lt!1890217) (h!59185 lt!1889050)))))

(assert (= (and d!1505368 res!1999583) b!4725384))

(assert (= (and b!4725384 res!1999582) b!4725385))

(declare-fun m!5664333 () Bool)

(assert (=> d!1505368 m!5664333))

(declare-fun m!5664335 () Bool)

(assert (=> d!1505368 m!5664335))

(declare-fun m!5664337 () Bool)

(assert (=> d!1505368 m!5664337))

(declare-fun m!5664339 () Bool)

(assert (=> d!1505368 m!5664339))

(declare-fun m!5664341 () Bool)

(assert (=> b!4725384 m!5664341))

(declare-fun m!5664343 () Bool)

(assert (=> b!4725385 m!5664343))

(assert (=> b!4724439 d!1505368))

(declare-fun bs!1116967 () Bool)

(declare-fun d!1505372 () Bool)

(assert (= bs!1116967 (and d!1505372 b!4724511)))

(declare-fun lambda!216071 () Int)

(assert (=> bs!1116967 (= (= lt!1889465 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216071 lambda!215957))))

(declare-fun bs!1116968 () Bool)

(assert (= bs!1116968 (and d!1505372 d!1504826)))

(assert (=> bs!1116968 (= (= lt!1889465 lt!1889434) (= lambda!216071 lambda!215942))))

(declare-fun bs!1116969 () Bool)

(assert (= bs!1116969 (and d!1505372 b!4724318)))

(assert (=> bs!1116969 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215920))))

(declare-fun bs!1116970 () Bool)

(assert (= bs!1116970 (and d!1505372 d!1504828)))

(assert (=> bs!1116970 (= (= lt!1889465 lt!1889455) (= lambda!216071 lambda!215946))))

(declare-fun bs!1116971 () Bool)

(assert (= bs!1116971 (and d!1505372 b!4724434)))

(assert (=> bs!1116971 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215940))))

(declare-fun bs!1116972 () Bool)

(assert (= bs!1116972 (and d!1505372 b!4724558)))

(assert (=> bs!1116972 (= (= lt!1889465 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216071 lambda!215973))))

(declare-fun bs!1116973 () Bool)

(assert (= bs!1116973 (and d!1505372 d!1504918)))

(assert (=> bs!1116973 (= (= lt!1889465 lt!1889607) (= lambda!216071 lambda!215994))))

(declare-fun bs!1116974 () Bool)

(assert (= bs!1116974 (and d!1505372 d!1504728)))

(assert (=> bs!1116974 (not (= lambda!216071 lambda!215834))))

(declare-fun bs!1116975 () Bool)

(assert (= bs!1116975 (and d!1505372 b!4724387)))

(assert (=> bs!1116975 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215931))))

(declare-fun bs!1116976 () Bool)

(assert (= bs!1116976 (and d!1505372 d!1505138)))

(assert (=> bs!1116976 (= (= lt!1889465 lt!1889949) (= lambda!216071 lambda!216049))))

(declare-fun bs!1116977 () Bool)

(assert (= bs!1116977 (and d!1505372 d!1504898)))

(assert (=> bs!1116977 (= (= lt!1889465 lt!1889569) (= lambda!216071 lambda!215977))))

(declare-fun bs!1116979 () Bool)

(assert (= bs!1116979 (and d!1505372 b!4724656)))

(assert (=> bs!1116979 (= (= lt!1889465 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216071 lambda!216002))))

(declare-fun bs!1116980 () Bool)

(assert (= bs!1116980 (and d!1505372 b!4724389)))

(assert (=> bs!1116980 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215930))))

(declare-fun bs!1116982 () Bool)

(assert (= bs!1116982 (and d!1505372 b!4725248)))

(assert (=> bs!1116982 (= (= lt!1889465 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216071 lambda!216062))))

(declare-fun bs!1116984 () Bool)

(assert (= bs!1116984 (and d!1505372 d!1505210)))

(assert (=> bs!1116984 (= (= lt!1889465 lt!1890001) (= lambda!216071 lambda!216054))))

(declare-fun bs!1116986 () Bool)

(assert (= bs!1116986 (and d!1505372 d!1504812)))

(assert (=> bs!1116986 (= (= lt!1889465 lt!1889351) (= lambda!216071 lambda!215933))))

(assert (=> bs!1116979 (= (= lt!1889465 lt!1889688) (= lambda!216071 lambda!216003))))

(assert (=> bs!1116967 (= (= lt!1889465 lt!1889503) (= lambda!216071 lambda!215958))))

(declare-fun bs!1116989 () Bool)

(assert (= bs!1116989 (and d!1505372 d!1504946)))

(assert (=> bs!1116989 (= (= lt!1889465 lt!1889678) (= lambda!216071 lambda!216005))))

(declare-fun bs!1116991 () Bool)

(assert (= bs!1116991 (and d!1505372 d!1505252)))

(assert (=> bs!1116991 (= (= lt!1889465 lt!1889444) (= lambda!216071 lambda!216056))))

(declare-fun bs!1116993 () Bool)

(assert (= bs!1116993 (and d!1505372 b!4724513)))

(assert (=> bs!1116993 (= (= lt!1889465 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216071 lambda!215956))))

(declare-fun bs!1116995 () Bool)

(assert (= bs!1116995 (and d!1505372 b!4725250)))

(assert (=> bs!1116995 (= (= lt!1889465 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216071 lambda!216061))))

(declare-fun bs!1116997 () Bool)

(assert (= bs!1116997 (and d!1505372 b!4724556)))

(assert (=> bs!1116997 (= (= lt!1889465 lt!1889579) (= lambda!216071 lambda!215976))))

(declare-fun bs!1116999 () Bool)

(assert (= bs!1116999 (and d!1505372 b!4724591)))

(assert (=> bs!1116999 (= (= lt!1889465 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216071 lambda!215982))))

(declare-fun bs!1117001 () Bool)

(assert (= bs!1117001 (and d!1505372 d!1504878)))

(assert (=> bs!1117001 (= (= lt!1889465 lt!1889398) (= lambda!216071 lambda!215970))))

(declare-fun bs!1117003 () Bool)

(assert (= bs!1117003 (and d!1505372 b!4724985)))

(assert (=> bs!1117003 (= (= lt!1889465 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216071 lambda!216042))))

(declare-fun bs!1117005 () Bool)

(assert (= bs!1117005 (and d!1505372 d!1505120)))

(assert (=> bs!1117005 (= (= lt!1889465 lt!1889896) (= lambda!216071 lambda!216044))))

(declare-fun bs!1117007 () Bool)

(assert (= bs!1117007 (and d!1505372 b!4724402)))

(assert (=> bs!1117007 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215934))))

(assert (=> bs!1116997 (= (= lt!1889465 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216071 lambda!215975))))

(declare-fun bs!1117010 () Bool)

(assert (= bs!1117010 (and d!1505372 b!4725038)))

(assert (=> bs!1117010 (= (= lt!1889465 lt!1889959) (= lambda!216071 lambda!216048))))

(declare-fun bs!1117012 () Bool)

(assert (= bs!1117012 (and d!1505372 d!1504864)))

(assert (=> bs!1117012 (= (= lt!1889465 lt!1889493) (= lambda!216071 lambda!215959))))

(declare-fun bs!1117014 () Bool)

(assert (= bs!1117014 (and d!1505372 b!4724658)))

(assert (=> bs!1117014 (= (= lt!1889465 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216071 lambda!216000))))

(assert (=> bs!1116975 (= (= lt!1889465 lt!1889361) (= lambda!216071 lambda!215932))))

(declare-fun bs!1117017 () Bool)

(assert (= bs!1117017 (and d!1505372 b!4724441)))

(assert (=> bs!1117017 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215943))))

(assert (=> bs!1116999 (= (= lt!1889465 lt!1889617) (= lambda!216071 lambda!215989))))

(declare-fun bs!1117019 () Bool)

(assert (= bs!1117019 (and d!1505372 b!4725040)))

(assert (=> bs!1117019 (= (= lt!1889465 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216071 lambda!216046))))

(declare-fun bs!1117021 () Bool)

(assert (= bs!1117021 (and d!1505372 b!4724436)))

(assert (=> bs!1117021 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215939))))

(declare-fun bs!1117023 () Bool)

(assert (= bs!1117023 (and d!1505372 d!1504820)))

(assert (=> bs!1117023 (= (= lt!1889465 lt!1889388) (= lambda!216071 lambda!215937))))

(declare-fun bs!1117024 () Bool)

(assert (= bs!1117024 (and d!1505372 b!4724320)))

(assert (=> bs!1117024 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215918))))

(declare-fun bs!1117026 () Bool)

(assert (= bs!1117026 (and d!1505372 b!4724400)))

(assert (=> bs!1117026 (= (= lt!1889465 lt!1889398) (= lambda!216071 lambda!215936))))

(declare-fun bs!1117028 () Bool)

(assert (= bs!1117028 (and d!1505372 b!4724987)))

(assert (=> bs!1117028 (= (= lt!1889465 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216071 lambda!216041))))

(declare-fun bs!1117030 () Bool)

(assert (= bs!1117030 (and d!1505372 d!1505292)))

(assert (=> bs!1117030 (= (= lt!1889465 lt!1890094) (= lambda!216071 lambda!216066))))

(assert (=> bs!1117010 (= (= lt!1889465 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216071 lambda!216047))))

(declare-fun bs!1117032 () Bool)

(assert (= bs!1117032 (and d!1505372 d!1504736)))

(assert (=> bs!1117032 (= (= lt!1889465 lt!1889297) (= lambda!216071 lambda!215923))))

(assert (=> bs!1116969 (= (= lt!1889465 lt!1889307) (= lambda!216071 lambda!215922))))

(declare-fun bs!1117035 () Bool)

(assert (= bs!1117035 (and d!1505372 b!4725133)))

(assert (=> bs!1117035 (= (= lt!1889465 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216071 lambda!216052))))

(declare-fun bs!1117038 () Bool)

(assert (= bs!1117038 (and d!1505372 b!4724593)))

(assert (=> bs!1117038 (= (= lt!1889465 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216071 lambda!215979))))

(declare-fun bs!1117040 () Bool)

(assert (= bs!1117040 (and d!1505372 d!1504846)))

(assert (=> bs!1117040 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215949))))

(declare-fun bs!1117042 () Bool)

(assert (= bs!1117042 (and d!1505372 b!4725135)))

(assert (=> bs!1117042 (= (= lt!1889465 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216071 lambda!216051))))

(declare-fun bs!1117044 () Bool)

(assert (= bs!1117044 (and d!1505372 d!1505306)))

(assert (=> bs!1117044 (= (= lt!1889465 lt!1889307) (= lambda!216071 lambda!216069))))

(declare-fun bs!1117045 () Bool)

(assert (= bs!1117045 (and d!1505372 b!4724439)))

(assert (=> bs!1117045 (= lambda!216071 lambda!215945)))

(declare-fun bs!1117047 () Bool)

(assert (= bs!1117047 (and d!1505372 d!1505122)))

(assert (=> bs!1117047 (= (= lt!1889465 lt!1889361) (= lambda!216071 lambda!216045))))

(assert (=> bs!1117003 (= (= lt!1889465 lt!1889906) (= lambda!216071 lambda!216043))))

(assert (=> bs!1117035 (= (= lt!1889465 lt!1890011) (= lambda!216071 lambda!216053))))

(assert (=> bs!1117045 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215944))))

(assert (=> bs!1116971 (= (= lt!1889465 lt!1889444) (= lambda!216071 lambda!215941))))

(assert (=> bs!1117026 (= (= lt!1889465 lt!1889044) (= lambda!216071 lambda!215935))))

(assert (=> bs!1116982 (= (= lt!1889465 lt!1890104) (= lambda!216071 lambda!216064))))

(declare-fun bs!1117051 () Bool)

(assert (= bs!1117051 (and d!1505372 d!1504730)))

(assert (=> bs!1117051 (not (= lambda!216071 lambda!215835))))

(assert (=> d!1505372 true))

(assert (=> d!1505372 (forall!11596 (toList!5921 lt!1889044) lambda!216071)))

(declare-fun lt!1890228 () Unit!130501)

(assert (=> d!1505372 (= lt!1890228 (choose!33347 lt!1889044 lt!1889465 (_1!30523 (h!59185 lt!1889050)) (_2!30523 (h!59185 lt!1889050))))))

(assert (=> d!1505372 (forall!11596 (toList!5921 (+!2271 lt!1889044 (tuple2!54459 (_1!30523 (h!59185 lt!1889050)) (_2!30523 (h!59185 lt!1889050))))) lambda!216071)))

(assert (=> d!1505372 (= (addForallContainsKeyThenBeforeAdding!798 lt!1889044 lt!1889465 (_1!30523 (h!59185 lt!1889050)) (_2!30523 (h!59185 lt!1889050))) lt!1890228)))

(declare-fun bs!1117056 () Bool)

(assert (= bs!1117056 d!1505372))

(declare-fun m!5664365 () Bool)

(assert (=> bs!1117056 m!5664365))

(declare-fun m!5664367 () Bool)

(assert (=> bs!1117056 m!5664367))

(declare-fun m!5664369 () Bool)

(assert (=> bs!1117056 m!5664369))

(declare-fun m!5664371 () Bool)

(assert (=> bs!1117056 m!5664371))

(assert (=> b!4724439 d!1505372))

(declare-fun b!4725400 () Bool)

(declare-fun e!2947210 () Bool)

(declare-fun e!2947211 () Bool)

(assert (=> b!4725400 (= e!2947210 e!2947211)))

(declare-fun res!1999591 () Bool)

(assert (=> b!4725400 (=> (not res!1999591) (not e!2947211))))

(assert (=> b!4725400 (= res!1999591 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889470) (_1!30523 (h!59185 lt!1889050)))))))

(declare-fun bm!330609 () Bool)

(declare-fun call!330614 () Bool)

(declare-fun e!2947213 () List!52963)

(assert (=> bm!330609 (= call!330614 (contains!16188 e!2947213 (_1!30523 (h!59185 lt!1889050))))))

(declare-fun c!807073 () Bool)

(declare-fun c!807072 () Bool)

(assert (=> bm!330609 (= c!807073 c!807072)))

(declare-fun d!1505376 () Bool)

(assert (=> d!1505376 e!2947210))

(declare-fun res!1999592 () Bool)

(assert (=> d!1505376 (=> res!1999592 e!2947210)))

(declare-fun e!2947208 () Bool)

(assert (=> d!1505376 (= res!1999592 e!2947208)))

(declare-fun res!1999590 () Bool)

(assert (=> d!1505376 (=> (not res!1999590) (not e!2947208))))

(declare-fun lt!1890253 () Bool)

(assert (=> d!1505376 (= res!1999590 (not lt!1890253))))

(declare-fun lt!1890255 () Bool)

(assert (=> d!1505376 (= lt!1890253 lt!1890255)))

(declare-fun lt!1890252 () Unit!130501)

(declare-fun e!2947209 () Unit!130501)

(assert (=> d!1505376 (= lt!1890252 e!2947209)))

(assert (=> d!1505376 (= c!807072 lt!1890255)))

(assert (=> d!1505376 (= lt!1890255 (containsKey!3379 (toList!5921 lt!1889470) (_1!30523 (h!59185 lt!1889050))))))

(assert (=> d!1505376 (= (contains!16183 lt!1889470 (_1!30523 (h!59185 lt!1889050))) lt!1890253)))

(declare-fun b!4725401 () Bool)

(assert (=> b!4725401 (= e!2947213 (keys!18978 lt!1889470))))

(declare-fun b!4725402 () Bool)

(assert (=> b!4725402 (= e!2947213 (getKeysList!953 (toList!5921 lt!1889470)))))

(declare-fun b!4725403 () Bool)

(declare-fun lt!1890257 () Unit!130501)

(assert (=> b!4725403 (= e!2947209 lt!1890257)))

(declare-fun lt!1890256 () Unit!130501)

(assert (=> b!4725403 (= lt!1890256 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889470) (_1!30523 (h!59185 lt!1889050))))))

(assert (=> b!4725403 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889470) (_1!30523 (h!59185 lt!1889050))))))

(declare-fun lt!1890254 () Unit!130501)

(assert (=> b!4725403 (= lt!1890254 lt!1890256)))

(assert (=> b!4725403 (= lt!1890257 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889470) (_1!30523 (h!59185 lt!1889050))))))

(assert (=> b!4725403 call!330614))

(declare-fun b!4725404 () Bool)

(assert (=> b!4725404 (= e!2947208 (not (contains!16188 (keys!18978 lt!1889470) (_1!30523 (h!59185 lt!1889050)))))))

(declare-fun b!4725405 () Bool)

(assert (=> b!4725405 false))

(declare-fun lt!1890251 () Unit!130501)

(declare-fun lt!1890250 () Unit!130501)

(assert (=> b!4725405 (= lt!1890251 lt!1890250)))

(assert (=> b!4725405 (containsKey!3379 (toList!5921 lt!1889470) (_1!30523 (h!59185 lt!1889050)))))

(assert (=> b!4725405 (= lt!1890250 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889470) (_1!30523 (h!59185 lt!1889050))))))

(declare-fun e!2947212 () Unit!130501)

(declare-fun Unit!130844 () Unit!130501)

(assert (=> b!4725405 (= e!2947212 Unit!130844)))

(declare-fun b!4725406 () Bool)

(assert (=> b!4725406 (= e!2947209 e!2947212)))

(declare-fun c!807074 () Bool)

(assert (=> b!4725406 (= c!807074 call!330614)))

(declare-fun b!4725407 () Bool)

(assert (=> b!4725407 (= e!2947211 (contains!16188 (keys!18978 lt!1889470) (_1!30523 (h!59185 lt!1889050))))))

(declare-fun b!4725408 () Bool)

(declare-fun Unit!130845 () Unit!130501)

(assert (=> b!4725408 (= e!2947212 Unit!130845)))

(assert (= (and d!1505376 c!807072) b!4725403))

(assert (= (and d!1505376 (not c!807072)) b!4725406))

(assert (= (and b!4725406 c!807074) b!4725405))

(assert (= (and b!4725406 (not c!807074)) b!4725408))

(assert (= (or b!4725403 b!4725406) bm!330609))

(assert (= (and bm!330609 c!807073) b!4725402))

(assert (= (and bm!330609 (not c!807073)) b!4725401))

(assert (= (and d!1505376 res!1999590) b!4725404))

(assert (= (and d!1505376 (not res!1999592)) b!4725400))

(assert (= (and b!4725400 res!1999591) b!4725407))

(declare-fun m!5664373 () Bool)

(assert (=> b!4725401 m!5664373))

(assert (=> b!4725407 m!5664373))

(assert (=> b!4725407 m!5664373))

(declare-fun m!5664375 () Bool)

(assert (=> b!4725407 m!5664375))

(declare-fun m!5664377 () Bool)

(assert (=> b!4725400 m!5664377))

(assert (=> b!4725400 m!5664377))

(declare-fun m!5664379 () Bool)

(assert (=> b!4725400 m!5664379))

(declare-fun m!5664381 () Bool)

(assert (=> b!4725402 m!5664381))

(declare-fun m!5664383 () Bool)

(assert (=> d!1505376 m!5664383))

(declare-fun m!5664385 () Bool)

(assert (=> b!4725403 m!5664385))

(assert (=> b!4725403 m!5664377))

(assert (=> b!4725403 m!5664377))

(assert (=> b!4725403 m!5664379))

(declare-fun m!5664387 () Bool)

(assert (=> b!4725403 m!5664387))

(assert (=> b!4725404 m!5664373))

(assert (=> b!4725404 m!5664373))

(assert (=> b!4725404 m!5664375))

(declare-fun m!5664389 () Bool)

(assert (=> bm!330609 m!5664389))

(assert (=> b!4725405 m!5664383))

(declare-fun m!5664391 () Bool)

(assert (=> b!4725405 m!5664391))

(assert (=> b!4724439 d!1505376))

(declare-fun d!1505378 () Bool)

(declare-fun res!1999593 () Bool)

(declare-fun e!2947214 () Bool)

(assert (=> d!1505378 (=> res!1999593 e!2947214)))

(assert (=> d!1505378 (= res!1999593 ((_ is Nil!52836) lt!1889050))))

(assert (=> d!1505378 (= (forall!11596 lt!1889050 lambda!215945) e!2947214)))

(declare-fun b!4725409 () Bool)

(declare-fun e!2947215 () Bool)

(assert (=> b!4725409 (= e!2947214 e!2947215)))

(declare-fun res!1999594 () Bool)

(assert (=> b!4725409 (=> (not res!1999594) (not e!2947215))))

(assert (=> b!4725409 (= res!1999594 (dynLambda!21825 lambda!215945 (h!59185 lt!1889050)))))

(declare-fun b!4725410 () Bool)

(assert (=> b!4725410 (= e!2947215 (forall!11596 (t!360230 lt!1889050) lambda!215945))))

(assert (= (and d!1505378 (not res!1999593)) b!4725409))

(assert (= (and b!4725409 res!1999594) b!4725410))

(declare-fun b_lambda!179407 () Bool)

(assert (=> (not b_lambda!179407) (not b!4725409)))

(declare-fun m!5664393 () Bool)

(assert (=> b!4725409 m!5664393))

(assert (=> b!4725410 m!5662285))

(assert (=> b!4724439 d!1505378))

(declare-fun b!4725411 () Bool)

(declare-fun e!2947218 () Bool)

(declare-fun e!2947219 () Bool)

(assert (=> b!4725411 (= e!2947218 e!2947219)))

(declare-fun res!1999596 () Bool)

(assert (=> b!4725411 (=> (not res!1999596) (not e!2947219))))

(assert (=> b!4725411 (= res!1999596 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889465) (_1!30523 (h!59185 lt!1889050)))))))

(declare-fun bm!330610 () Bool)

(declare-fun call!330615 () Bool)

(declare-fun e!2947221 () List!52963)

(assert (=> bm!330610 (= call!330615 (contains!16188 e!2947221 (_1!30523 (h!59185 lt!1889050))))))

(declare-fun c!807076 () Bool)

(declare-fun c!807075 () Bool)

(assert (=> bm!330610 (= c!807076 c!807075)))

(declare-fun d!1505380 () Bool)

(assert (=> d!1505380 e!2947218))

(declare-fun res!1999597 () Bool)

(assert (=> d!1505380 (=> res!1999597 e!2947218)))

(declare-fun e!2947216 () Bool)

(assert (=> d!1505380 (= res!1999597 e!2947216)))

(declare-fun res!1999595 () Bool)

(assert (=> d!1505380 (=> (not res!1999595) (not e!2947216))))

(declare-fun lt!1890261 () Bool)

(assert (=> d!1505380 (= res!1999595 (not lt!1890261))))

(declare-fun lt!1890263 () Bool)

(assert (=> d!1505380 (= lt!1890261 lt!1890263)))

(declare-fun lt!1890260 () Unit!130501)

(declare-fun e!2947217 () Unit!130501)

(assert (=> d!1505380 (= lt!1890260 e!2947217)))

(assert (=> d!1505380 (= c!807075 lt!1890263)))

(assert (=> d!1505380 (= lt!1890263 (containsKey!3379 (toList!5921 lt!1889465) (_1!30523 (h!59185 lt!1889050))))))

(assert (=> d!1505380 (= (contains!16183 lt!1889465 (_1!30523 (h!59185 lt!1889050))) lt!1890261)))

(declare-fun b!4725412 () Bool)

(assert (=> b!4725412 (= e!2947221 (keys!18978 lt!1889465))))

(declare-fun b!4725413 () Bool)

(assert (=> b!4725413 (= e!2947221 (getKeysList!953 (toList!5921 lt!1889465)))))

(declare-fun b!4725414 () Bool)

(declare-fun lt!1890265 () Unit!130501)

(assert (=> b!4725414 (= e!2947217 lt!1890265)))

(declare-fun lt!1890264 () Unit!130501)

(assert (=> b!4725414 (= lt!1890264 (lemmaContainsKeyImpliesGetValueByKeyDefined!1852 (toList!5921 lt!1889465) (_1!30523 (h!59185 lt!1889050))))))

(assert (=> b!4725414 (isDefined!9619 (getValueByKey!1961 (toList!5921 lt!1889465) (_1!30523 (h!59185 lt!1889050))))))

(declare-fun lt!1890262 () Unit!130501)

(assert (=> b!4725414 (= lt!1890262 lt!1890264)))

(assert (=> b!4725414 (= lt!1890265 (lemmaInListThenGetKeysListContains!948 (toList!5921 lt!1889465) (_1!30523 (h!59185 lt!1889050))))))

(assert (=> b!4725414 call!330615))

(declare-fun b!4725415 () Bool)

(assert (=> b!4725415 (= e!2947216 (not (contains!16188 (keys!18978 lt!1889465) (_1!30523 (h!59185 lt!1889050)))))))

(declare-fun b!4725416 () Bool)

(assert (=> b!4725416 false))

(declare-fun lt!1890259 () Unit!130501)

(declare-fun lt!1890258 () Unit!130501)

(assert (=> b!4725416 (= lt!1890259 lt!1890258)))

(assert (=> b!4725416 (containsKey!3379 (toList!5921 lt!1889465) (_1!30523 (h!59185 lt!1889050)))))

(assert (=> b!4725416 (= lt!1890258 (lemmaInGetKeysListThenContainsKey!952 (toList!5921 lt!1889465) (_1!30523 (h!59185 lt!1889050))))))

(declare-fun e!2947220 () Unit!130501)

(declare-fun Unit!130846 () Unit!130501)

(assert (=> b!4725416 (= e!2947220 Unit!130846)))

(declare-fun b!4725417 () Bool)

(assert (=> b!4725417 (= e!2947217 e!2947220)))

(declare-fun c!807077 () Bool)

(assert (=> b!4725417 (= c!807077 call!330615)))

(declare-fun b!4725418 () Bool)

(assert (=> b!4725418 (= e!2947219 (contains!16188 (keys!18978 lt!1889465) (_1!30523 (h!59185 lt!1889050))))))

(declare-fun b!4725419 () Bool)

(declare-fun Unit!130847 () Unit!130501)

(assert (=> b!4725419 (= e!2947220 Unit!130847)))

(assert (= (and d!1505380 c!807075) b!4725414))

(assert (= (and d!1505380 (not c!807075)) b!4725417))

(assert (= (and b!4725417 c!807077) b!4725416))

(assert (= (and b!4725417 (not c!807077)) b!4725419))

(assert (= (or b!4725414 b!4725417) bm!330610))

(assert (= (and bm!330610 c!807076) b!4725413))

(assert (= (and bm!330610 (not c!807076)) b!4725412))

(assert (= (and d!1505380 res!1999595) b!4725415))

(assert (= (and d!1505380 (not res!1999597)) b!4725411))

(assert (= (and b!4725411 res!1999596) b!4725418))

(declare-fun m!5664395 () Bool)

(assert (=> b!4725412 m!5664395))

(assert (=> b!4725418 m!5664395))

(assert (=> b!4725418 m!5664395))

(declare-fun m!5664397 () Bool)

(assert (=> b!4725418 m!5664397))

(declare-fun m!5664399 () Bool)

(assert (=> b!4725411 m!5664399))

(assert (=> b!4725411 m!5664399))

(declare-fun m!5664401 () Bool)

(assert (=> b!4725411 m!5664401))

(declare-fun m!5664403 () Bool)

(assert (=> b!4725413 m!5664403))

(declare-fun m!5664405 () Bool)

(assert (=> d!1505380 m!5664405))

(declare-fun m!5664407 () Bool)

(assert (=> b!4725414 m!5664407))

(assert (=> b!4725414 m!5664399))

(assert (=> b!4725414 m!5664399))

(assert (=> b!4725414 m!5664401))

(declare-fun m!5664409 () Bool)

(assert (=> b!4725414 m!5664409))

(assert (=> b!4725415 m!5664395))

(assert (=> b!4725415 m!5664395))

(assert (=> b!4725415 m!5664397))

(declare-fun m!5664411 () Bool)

(assert (=> bm!330610 m!5664411))

(assert (=> b!4725416 m!5664405))

(declare-fun m!5664413 () Bool)

(assert (=> b!4725416 m!5664413))

(assert (=> b!4724439 d!1505380))

(assert (=> b!4724439 d!1504994))

(declare-fun bs!1117093 () Bool)

(declare-fun b!4725423 () Bool)

(assert (= bs!1117093 (and b!4725423 b!4724511)))

(declare-fun lambda!216074 () Int)

(assert (=> bs!1117093 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216074 lambda!215957))))

(declare-fun bs!1117094 () Bool)

(assert (= bs!1117094 (and b!4725423 d!1504826)))

(assert (=> bs!1117094 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889434) (= lambda!216074 lambda!215942))))

(declare-fun bs!1117095 () Bool)

(assert (= bs!1117095 (and b!4725423 b!4724318)))

(assert (=> bs!1117095 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215920))))

(declare-fun bs!1117097 () Bool)

(assert (= bs!1117097 (and b!4725423 d!1504828)))

(assert (=> bs!1117097 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889455) (= lambda!216074 lambda!215946))))

(declare-fun bs!1117099 () Bool)

(assert (= bs!1117099 (and b!4725423 b!4724434)))

(assert (=> bs!1117099 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215940))))

(declare-fun bs!1117100 () Bool)

(assert (= bs!1117100 (and b!4725423 b!4724558)))

(assert (=> bs!1117100 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216074 lambda!215973))))

(declare-fun bs!1117102 () Bool)

(assert (= bs!1117102 (and b!4725423 d!1504918)))

(assert (=> bs!1117102 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889607) (= lambda!216074 lambda!215994))))

(declare-fun bs!1117104 () Bool)

(assert (= bs!1117104 (and b!4725423 d!1504728)))

(assert (=> bs!1117104 (not (= lambda!216074 lambda!215834))))

(declare-fun bs!1117106 () Bool)

(assert (= bs!1117106 (and b!4725423 d!1505138)))

(assert (=> bs!1117106 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889949) (= lambda!216074 lambda!216049))))

(declare-fun bs!1117107 () Bool)

(assert (= bs!1117107 (and b!4725423 d!1504898)))

(assert (=> bs!1117107 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889569) (= lambda!216074 lambda!215977))))

(declare-fun bs!1117109 () Bool)

(assert (= bs!1117109 (and b!4725423 b!4724656)))

(assert (=> bs!1117109 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216074 lambda!216002))))

(declare-fun bs!1117111 () Bool)

(assert (= bs!1117111 (and b!4725423 b!4724389)))

(assert (=> bs!1117111 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215930))))

(declare-fun bs!1117113 () Bool)

(assert (= bs!1117113 (and b!4725423 b!4725248)))

(assert (=> bs!1117113 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216074 lambda!216062))))

(declare-fun bs!1117114 () Bool)

(assert (= bs!1117114 (and b!4725423 d!1505210)))

(assert (=> bs!1117114 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890001) (= lambda!216074 lambda!216054))))

(declare-fun bs!1117115 () Bool)

(assert (= bs!1117115 (and b!4725423 d!1504812)))

(assert (=> bs!1117115 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889351) (= lambda!216074 lambda!215933))))

(assert (=> bs!1117109 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889688) (= lambda!216074 lambda!216003))))

(assert (=> bs!1117093 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889503) (= lambda!216074 lambda!215958))))

(declare-fun bs!1117116 () Bool)

(assert (= bs!1117116 (and b!4725423 d!1504946)))

(assert (=> bs!1117116 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889678) (= lambda!216074 lambda!216005))))

(declare-fun bs!1117117 () Bool)

(assert (= bs!1117117 (and b!4725423 d!1505252)))

(assert (=> bs!1117117 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889444) (= lambda!216074 lambda!216056))))

(declare-fun bs!1117118 () Bool)

(assert (= bs!1117118 (and b!4725423 b!4724513)))

(assert (=> bs!1117118 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216074 lambda!215956))))

(declare-fun bs!1117119 () Bool)

(assert (= bs!1117119 (and b!4725423 b!4725250)))

(assert (=> bs!1117119 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216074 lambda!216061))))

(declare-fun bs!1117120 () Bool)

(assert (= bs!1117120 (and b!4725423 b!4724556)))

(assert (=> bs!1117120 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889579) (= lambda!216074 lambda!215976))))

(declare-fun bs!1117121 () Bool)

(assert (= bs!1117121 (and b!4725423 b!4724591)))

(assert (=> bs!1117121 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216074 lambda!215982))))

(declare-fun bs!1117122 () Bool)

(assert (= bs!1117122 (and b!4725423 d!1504878)))

(assert (=> bs!1117122 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889398) (= lambda!216074 lambda!215970))))

(declare-fun bs!1117123 () Bool)

(assert (= bs!1117123 (and b!4725423 b!4724985)))

(assert (=> bs!1117123 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216074 lambda!216042))))

(declare-fun bs!1117124 () Bool)

(assert (= bs!1117124 (and b!4725423 d!1505120)))

(assert (=> bs!1117124 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889896) (= lambda!216074 lambda!216044))))

(declare-fun bs!1117125 () Bool)

(assert (= bs!1117125 (and b!4725423 b!4724402)))

(assert (=> bs!1117125 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215934))))

(assert (=> bs!1117120 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216074 lambda!215975))))

(declare-fun bs!1117126 () Bool)

(assert (= bs!1117126 (and b!4725423 b!4725038)))

(assert (=> bs!1117126 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889959) (= lambda!216074 lambda!216048))))

(declare-fun bs!1117127 () Bool)

(assert (= bs!1117127 (and b!4725423 d!1504864)))

(assert (=> bs!1117127 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889493) (= lambda!216074 lambda!215959))))

(declare-fun bs!1117128 () Bool)

(assert (= bs!1117128 (and b!4725423 b!4724658)))

(assert (=> bs!1117128 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216074 lambda!216000))))

(declare-fun bs!1117129 () Bool)

(assert (= bs!1117129 (and b!4725423 b!4724387)))

(assert (=> bs!1117129 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889361) (= lambda!216074 lambda!215932))))

(declare-fun bs!1117130 () Bool)

(assert (= bs!1117130 (and b!4725423 b!4724441)))

(assert (=> bs!1117130 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215943))))

(assert (=> bs!1117121 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889617) (= lambda!216074 lambda!215989))))

(declare-fun bs!1117131 () Bool)

(assert (= bs!1117131 (and b!4725423 b!4725040)))

(assert (=> bs!1117131 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216074 lambda!216046))))

(declare-fun bs!1117132 () Bool)

(assert (= bs!1117132 (and b!4725423 b!4724436)))

(assert (=> bs!1117132 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215939))))

(declare-fun bs!1117133 () Bool)

(assert (= bs!1117133 (and b!4725423 d!1504820)))

(assert (=> bs!1117133 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889388) (= lambda!216074 lambda!215937))))

(declare-fun bs!1117134 () Bool)

(assert (= bs!1117134 (and b!4725423 b!4724320)))

(assert (=> bs!1117134 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215918))))

(declare-fun bs!1117135 () Bool)

(assert (= bs!1117135 (and b!4725423 b!4724400)))

(assert (=> bs!1117135 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889398) (= lambda!216074 lambda!215936))))

(declare-fun bs!1117136 () Bool)

(assert (= bs!1117136 (and b!4725423 b!4724987)))

(assert (=> bs!1117136 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216074 lambda!216041))))

(declare-fun bs!1117137 () Bool)

(assert (= bs!1117137 (and b!4725423 d!1505292)))

(assert (=> bs!1117137 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890094) (= lambda!216074 lambda!216066))))

(assert (=> bs!1117126 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216074 lambda!216047))))

(declare-fun bs!1117138 () Bool)

(assert (= bs!1117138 (and b!4725423 d!1504736)))

(assert (=> bs!1117138 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889297) (= lambda!216074 lambda!215923))))

(assert (=> bs!1117095 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889307) (= lambda!216074 lambda!215922))))

(declare-fun bs!1117139 () Bool)

(assert (= bs!1117139 (and b!4725423 b!4725133)))

(assert (=> bs!1117139 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216074 lambda!216052))))

(declare-fun bs!1117140 () Bool)

(assert (= bs!1117140 (and b!4725423 b!4724593)))

(assert (=> bs!1117140 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216074 lambda!215979))))

(declare-fun bs!1117141 () Bool)

(assert (= bs!1117141 (and b!4725423 d!1504846)))

(assert (=> bs!1117141 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215949))))

(declare-fun bs!1117142 () Bool)

(assert (= bs!1117142 (and b!4725423 b!4725135)))

(assert (=> bs!1117142 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216074 lambda!216051))))

(declare-fun bs!1117143 () Bool)

(assert (= bs!1117143 (and b!4725423 d!1505306)))

(assert (=> bs!1117143 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889307) (= lambda!216074 lambda!216069))))

(declare-fun bs!1117144 () Bool)

(assert (= bs!1117144 (and b!4725423 b!4724439)))

(assert (=> bs!1117144 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889465) (= lambda!216074 lambda!215945))))

(declare-fun bs!1117145 () Bool)

(assert (= bs!1117145 (and b!4725423 d!1505122)))

(assert (=> bs!1117145 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889361) (= lambda!216074 lambda!216045))))

(assert (=> bs!1117123 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889906) (= lambda!216074 lambda!216043))))

(assert (=> bs!1117139 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890011) (= lambda!216074 lambda!216053))))

(assert (=> bs!1117144 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215944))))

(assert (=> bs!1117099 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889444) (= lambda!216074 lambda!215941))))

(declare-fun bs!1117146 () Bool)

(assert (= bs!1117146 (and b!4725423 d!1505372)))

(assert (=> bs!1117146 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889465) (= lambda!216074 lambda!216071))))

(assert (=> bs!1117129 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215931))))

(assert (=> bs!1117135 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216074 lambda!215935))))

(assert (=> bs!1117113 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890104) (= lambda!216074 lambda!216064))))

(declare-fun bs!1117147 () Bool)

(assert (= bs!1117147 (and b!4725423 d!1504730)))

(assert (=> bs!1117147 (not (= lambda!216074 lambda!215835))))

(assert (=> b!4725423 true))

(declare-fun bs!1117148 () Bool)

(declare-fun b!4725421 () Bool)

(assert (= bs!1117148 (and b!4725421 b!4724511)))

(declare-fun lambda!216076 () Int)

(assert (=> bs!1117148 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216076 lambda!215957))))

(declare-fun bs!1117149 () Bool)

(assert (= bs!1117149 (and b!4725421 d!1504826)))

(assert (=> bs!1117149 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889434) (= lambda!216076 lambda!215942))))

(declare-fun bs!1117150 () Bool)

(assert (= bs!1117150 (and b!4725421 b!4724318)))

(assert (=> bs!1117150 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215920))))

(declare-fun bs!1117151 () Bool)

(assert (= bs!1117151 (and b!4725421 d!1504828)))

(assert (=> bs!1117151 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889455) (= lambda!216076 lambda!215946))))

(declare-fun bs!1117152 () Bool)

(assert (= bs!1117152 (and b!4725421 b!4724434)))

(assert (=> bs!1117152 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215940))))

(declare-fun bs!1117153 () Bool)

(assert (= bs!1117153 (and b!4725421 b!4725423)))

(assert (=> bs!1117153 (= lambda!216076 lambda!216074)))

(declare-fun bs!1117154 () Bool)

(assert (= bs!1117154 (and b!4725421 b!4724558)))

(assert (=> bs!1117154 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216076 lambda!215973))))

(declare-fun bs!1117155 () Bool)

(assert (= bs!1117155 (and b!4725421 d!1504918)))

(assert (=> bs!1117155 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889607) (= lambda!216076 lambda!215994))))

(declare-fun bs!1117156 () Bool)

(assert (= bs!1117156 (and b!4725421 d!1504728)))

(assert (=> bs!1117156 (not (= lambda!216076 lambda!215834))))

(declare-fun bs!1117157 () Bool)

(assert (= bs!1117157 (and b!4725421 d!1505138)))

(assert (=> bs!1117157 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889949) (= lambda!216076 lambda!216049))))

(declare-fun bs!1117158 () Bool)

(assert (= bs!1117158 (and b!4725421 d!1504898)))

(assert (=> bs!1117158 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889569) (= lambda!216076 lambda!215977))))

(declare-fun bs!1117159 () Bool)

(assert (= bs!1117159 (and b!4725421 b!4724656)))

(assert (=> bs!1117159 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216076 lambda!216002))))

(declare-fun bs!1117160 () Bool)

(assert (= bs!1117160 (and b!4725421 b!4724389)))

(assert (=> bs!1117160 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215930))))

(declare-fun bs!1117161 () Bool)

(assert (= bs!1117161 (and b!4725421 b!4725248)))

(assert (=> bs!1117161 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216076 lambda!216062))))

(declare-fun bs!1117162 () Bool)

(assert (= bs!1117162 (and b!4725421 d!1505210)))

(assert (=> bs!1117162 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890001) (= lambda!216076 lambda!216054))))

(declare-fun bs!1117163 () Bool)

(assert (= bs!1117163 (and b!4725421 d!1504812)))

(assert (=> bs!1117163 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889351) (= lambda!216076 lambda!215933))))

(assert (=> bs!1117159 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889688) (= lambda!216076 lambda!216003))))

(assert (=> bs!1117148 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889503) (= lambda!216076 lambda!215958))))

(declare-fun bs!1117164 () Bool)

(assert (= bs!1117164 (and b!4725421 d!1504946)))

(assert (=> bs!1117164 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889678) (= lambda!216076 lambda!216005))))

(declare-fun bs!1117165 () Bool)

(assert (= bs!1117165 (and b!4725421 d!1505252)))

(assert (=> bs!1117165 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889444) (= lambda!216076 lambda!216056))))

(declare-fun bs!1117166 () Bool)

(assert (= bs!1117166 (and b!4725421 b!4724513)))

(assert (=> bs!1117166 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216076 lambda!215956))))

(declare-fun bs!1117167 () Bool)

(assert (= bs!1117167 (and b!4725421 b!4725250)))

(assert (=> bs!1117167 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216076 lambda!216061))))

(declare-fun bs!1117168 () Bool)

(assert (= bs!1117168 (and b!4725421 b!4724556)))

(assert (=> bs!1117168 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889579) (= lambda!216076 lambda!215976))))

(declare-fun bs!1117169 () Bool)

(assert (= bs!1117169 (and b!4725421 b!4724591)))

(assert (=> bs!1117169 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216076 lambda!215982))))

(declare-fun bs!1117171 () Bool)

(assert (= bs!1117171 (and b!4725421 d!1504878)))

(assert (=> bs!1117171 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889398) (= lambda!216076 lambda!215970))))

(declare-fun bs!1117173 () Bool)

(assert (= bs!1117173 (and b!4725421 b!4724985)))

(assert (=> bs!1117173 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216076 lambda!216042))))

(declare-fun bs!1117175 () Bool)

(assert (= bs!1117175 (and b!4725421 d!1505120)))

(assert (=> bs!1117175 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889896) (= lambda!216076 lambda!216044))))

(declare-fun bs!1117177 () Bool)

(assert (= bs!1117177 (and b!4725421 b!4724402)))

(assert (=> bs!1117177 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215934))))

(assert (=> bs!1117168 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216076 lambda!215975))))

(declare-fun bs!1117180 () Bool)

(assert (= bs!1117180 (and b!4725421 b!4725038)))

(assert (=> bs!1117180 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889959) (= lambda!216076 lambda!216048))))

(declare-fun bs!1117182 () Bool)

(assert (= bs!1117182 (and b!4725421 d!1504864)))

(assert (=> bs!1117182 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889493) (= lambda!216076 lambda!215959))))

(declare-fun bs!1117184 () Bool)

(assert (= bs!1117184 (and b!4725421 b!4724658)))

(assert (=> bs!1117184 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216076 lambda!216000))))

(declare-fun bs!1117186 () Bool)

(assert (= bs!1117186 (and b!4725421 b!4724387)))

(assert (=> bs!1117186 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889361) (= lambda!216076 lambda!215932))))

(declare-fun bs!1117188 () Bool)

(assert (= bs!1117188 (and b!4725421 b!4724441)))

(assert (=> bs!1117188 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215943))))

(assert (=> bs!1117169 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889617) (= lambda!216076 lambda!215989))))

(declare-fun bs!1117191 () Bool)

(assert (= bs!1117191 (and b!4725421 b!4725040)))

(assert (=> bs!1117191 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216076 lambda!216046))))

(declare-fun bs!1117193 () Bool)

(assert (= bs!1117193 (and b!4725421 b!4724436)))

(assert (=> bs!1117193 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215939))))

(declare-fun bs!1117195 () Bool)

(assert (= bs!1117195 (and b!4725421 d!1504820)))

(assert (=> bs!1117195 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889388) (= lambda!216076 lambda!215937))))

(declare-fun bs!1117197 () Bool)

(assert (= bs!1117197 (and b!4725421 b!4724320)))

(assert (=> bs!1117197 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215918))))

(declare-fun bs!1117199 () Bool)

(assert (= bs!1117199 (and b!4725421 b!4724400)))

(assert (=> bs!1117199 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889398) (= lambda!216076 lambda!215936))))

(declare-fun bs!1117201 () Bool)

(assert (= bs!1117201 (and b!4725421 b!4724987)))

(assert (=> bs!1117201 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216076 lambda!216041))))

(declare-fun bs!1117203 () Bool)

(assert (= bs!1117203 (and b!4725421 d!1505292)))

(assert (=> bs!1117203 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890094) (= lambda!216076 lambda!216066))))

(assert (=> bs!1117180 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216076 lambda!216047))))

(declare-fun bs!1117206 () Bool)

(assert (= bs!1117206 (and b!4725421 d!1504736)))

(assert (=> bs!1117206 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889297) (= lambda!216076 lambda!215923))))

(assert (=> bs!1117150 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889307) (= lambda!216076 lambda!215922))))

(declare-fun bs!1117208 () Bool)

(assert (= bs!1117208 (and b!4725421 b!4725133)))

(assert (=> bs!1117208 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216076 lambda!216052))))

(declare-fun bs!1117210 () Bool)

(assert (= bs!1117210 (and b!4725421 b!4724593)))

(assert (=> bs!1117210 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216076 lambda!215979))))

(declare-fun bs!1117212 () Bool)

(assert (= bs!1117212 (and b!4725421 d!1504846)))

(assert (=> bs!1117212 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215949))))

(declare-fun bs!1117214 () Bool)

(assert (= bs!1117214 (and b!4725421 b!4725135)))

(assert (=> bs!1117214 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216076 lambda!216051))))

(declare-fun bs!1117216 () Bool)

(assert (= bs!1117216 (and b!4725421 d!1505306)))

(assert (=> bs!1117216 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889307) (= lambda!216076 lambda!216069))))

(declare-fun bs!1117218 () Bool)

(assert (= bs!1117218 (and b!4725421 b!4724439)))

(assert (=> bs!1117218 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889465) (= lambda!216076 lambda!215945))))

(declare-fun bs!1117219 () Bool)

(assert (= bs!1117219 (and b!4725421 d!1505122)))

(assert (=> bs!1117219 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889361) (= lambda!216076 lambda!216045))))

(assert (=> bs!1117173 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889906) (= lambda!216076 lambda!216043))))

(assert (=> bs!1117208 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890011) (= lambda!216076 lambda!216053))))

(assert (=> bs!1117218 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215944))))

(assert (=> bs!1117152 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889444) (= lambda!216076 lambda!215941))))

(declare-fun bs!1117224 () Bool)

(assert (= bs!1117224 (and b!4725421 d!1505372)))

(assert (=> bs!1117224 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889465) (= lambda!216076 lambda!216071))))

(assert (=> bs!1117186 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215931))))

(assert (=> bs!1117199 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1889044) (= lambda!216076 lambda!215935))))

(assert (=> bs!1117161 (= (= (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890104) (= lambda!216076 lambda!216064))))

(declare-fun bs!1117229 () Bool)

(assert (= bs!1117229 (and b!4725421 d!1504730)))

(assert (=> bs!1117229 (not (= lambda!216076 lambda!215835))))

(assert (=> b!4725421 true))

(declare-fun lambda!216078 () Int)

(declare-fun lt!1890276 () ListMap!5285)

(assert (=> bs!1117148 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216078 lambda!215957))))

(assert (=> bs!1117149 (= (= lt!1890276 lt!1889434) (= lambda!216078 lambda!215942))))

(assert (=> bs!1117150 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215920))))

(assert (=> bs!1117151 (= (= lt!1890276 lt!1889455) (= lambda!216078 lambda!215946))))

(assert (=> bs!1117152 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215940))))

(assert (=> bs!1117153 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 lt!1889050))) (= lambda!216078 lambda!216074))))

(assert (=> bs!1117154 (= (= lt!1890276 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216078 lambda!215973))))

(assert (=> bs!1117155 (= (= lt!1890276 lt!1889607) (= lambda!216078 lambda!215994))))

(assert (=> bs!1117156 (not (= lambda!216078 lambda!215834))))

(assert (=> bs!1117157 (= (= lt!1890276 lt!1889949) (= lambda!216078 lambda!216049))))

(assert (=> bs!1117158 (= (= lt!1890276 lt!1889569) (= lambda!216078 lambda!215977))))

(assert (=> bs!1117159 (= (= lt!1890276 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216078 lambda!216002))))

(assert (=> bs!1117160 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215930))))

(assert (=> bs!1117161 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216078 lambda!216062))))

(assert (=> bs!1117162 (= (= lt!1890276 lt!1890001) (= lambda!216078 lambda!216054))))

(assert (=> bs!1117163 (= (= lt!1890276 lt!1889351) (= lambda!216078 lambda!215933))))

(assert (=> bs!1117159 (= (= lt!1890276 lt!1889688) (= lambda!216078 lambda!216003))))

(assert (=> bs!1117148 (= (= lt!1890276 lt!1889503) (= lambda!216078 lambda!215958))))

(assert (=> bs!1117164 (= (= lt!1890276 lt!1889678) (= lambda!216078 lambda!216005))))

(assert (=> bs!1117165 (= (= lt!1890276 lt!1889444) (= lambda!216078 lambda!216056))))

(assert (=> b!4725421 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 lt!1889050))) (= lambda!216078 lambda!216076))))

(assert (=> bs!1117166 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216078 lambda!215956))))

(assert (=> bs!1117167 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216078 lambda!216061))))

(assert (=> bs!1117168 (= (= lt!1890276 lt!1889579) (= lambda!216078 lambda!215976))))

(assert (=> bs!1117169 (= (= lt!1890276 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216078 lambda!215982))))

(assert (=> bs!1117171 (= (= lt!1890276 lt!1889398) (= lambda!216078 lambda!215970))))

(assert (=> bs!1117173 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216078 lambda!216042))))

(assert (=> bs!1117175 (= (= lt!1890276 lt!1889896) (= lambda!216078 lambda!216044))))

(assert (=> bs!1117177 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215934))))

(assert (=> bs!1117168 (= (= lt!1890276 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216078 lambda!215975))))

(assert (=> bs!1117180 (= (= lt!1890276 lt!1889959) (= lambda!216078 lambda!216048))))

(assert (=> bs!1117182 (= (= lt!1890276 lt!1889493) (= lambda!216078 lambda!215959))))

(assert (=> bs!1117184 (= (= lt!1890276 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216078 lambda!216000))))

(assert (=> bs!1117186 (= (= lt!1890276 lt!1889361) (= lambda!216078 lambda!215932))))

(assert (=> bs!1117188 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215943))))

(assert (=> bs!1117169 (= (= lt!1890276 lt!1889617) (= lambda!216078 lambda!215989))))

(assert (=> bs!1117191 (= (= lt!1890276 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216078 lambda!216046))))

(assert (=> bs!1117193 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215939))))

(assert (=> bs!1117195 (= (= lt!1890276 lt!1889388) (= lambda!216078 lambda!215937))))

(assert (=> bs!1117197 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215918))))

(assert (=> bs!1117199 (= (= lt!1890276 lt!1889398) (= lambda!216078 lambda!215936))))

(assert (=> bs!1117201 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216078 lambda!216041))))

(assert (=> bs!1117203 (= (= lt!1890276 lt!1890094) (= lambda!216078 lambda!216066))))

(assert (=> bs!1117180 (= (= lt!1890276 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216078 lambda!216047))))

(assert (=> bs!1117206 (= (= lt!1890276 lt!1889297) (= lambda!216078 lambda!215923))))

(assert (=> bs!1117150 (= (= lt!1890276 lt!1889307) (= lambda!216078 lambda!215922))))

(assert (=> bs!1117208 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216078 lambda!216052))))

(assert (=> bs!1117210 (= (= lt!1890276 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216078 lambda!215979))))

(assert (=> bs!1117212 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215949))))

(assert (=> bs!1117214 (= (= lt!1890276 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216078 lambda!216051))))

(assert (=> bs!1117216 (= (= lt!1890276 lt!1889307) (= lambda!216078 lambda!216069))))

(assert (=> bs!1117218 (= (= lt!1890276 lt!1889465) (= lambda!216078 lambda!215945))))

(assert (=> bs!1117219 (= (= lt!1890276 lt!1889361) (= lambda!216078 lambda!216045))))

(assert (=> bs!1117173 (= (= lt!1890276 lt!1889906) (= lambda!216078 lambda!216043))))

(assert (=> bs!1117208 (= (= lt!1890276 lt!1890011) (= lambda!216078 lambda!216053))))

(assert (=> bs!1117218 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215944))))

(assert (=> bs!1117152 (= (= lt!1890276 lt!1889444) (= lambda!216078 lambda!215941))))

(assert (=> bs!1117224 (= (= lt!1890276 lt!1889465) (= lambda!216078 lambda!216071))))

(assert (=> bs!1117186 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215931))))

(assert (=> bs!1117199 (= (= lt!1890276 lt!1889044) (= lambda!216078 lambda!215935))))

(assert (=> bs!1117161 (= (= lt!1890276 lt!1890104) (= lambda!216078 lambda!216064))))

(assert (=> bs!1117229 (not (= lambda!216078 lambda!215835))))

(assert (=> b!4725421 true))

(declare-fun bs!1117261 () Bool)

(declare-fun d!1505382 () Bool)

(assert (= bs!1117261 (and d!1505382 b!4724511)))

(declare-fun lambda!216080 () Int)

(declare-fun lt!1890266 () ListMap!5285)

(assert (=> bs!1117261 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216080 lambda!215957))))

(declare-fun bs!1117263 () Bool)

(assert (= bs!1117263 (and d!1505382 b!4724318)))

(assert (=> bs!1117263 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215920))))

(declare-fun bs!1117266 () Bool)

(assert (= bs!1117266 (and d!1505382 d!1504828)))

(assert (=> bs!1117266 (= (= lt!1890266 lt!1889455) (= lambda!216080 lambda!215946))))

(declare-fun bs!1117269 () Bool)

(assert (= bs!1117269 (and d!1505382 b!4724434)))

(assert (=> bs!1117269 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215940))))

(declare-fun bs!1117272 () Bool)

(assert (= bs!1117272 (and d!1505382 b!4725423)))

(assert (=> bs!1117272 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 lt!1889050))) (= lambda!216080 lambda!216074))))

(declare-fun bs!1117275 () Bool)

(assert (= bs!1117275 (and d!1505382 b!4724558)))

(assert (=> bs!1117275 (= (= lt!1890266 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216080 lambda!215973))))

(declare-fun bs!1117276 () Bool)

(assert (= bs!1117276 (and d!1505382 d!1504918)))

(assert (=> bs!1117276 (= (= lt!1890266 lt!1889607) (= lambda!216080 lambda!215994))))

(declare-fun bs!1117279 () Bool)

(assert (= bs!1117279 (and d!1505382 d!1504728)))

(assert (=> bs!1117279 (not (= lambda!216080 lambda!215834))))

(declare-fun bs!1117281 () Bool)

(assert (= bs!1117281 (and d!1505382 d!1505138)))

(assert (=> bs!1117281 (= (= lt!1890266 lt!1889949) (= lambda!216080 lambda!216049))))

(declare-fun bs!1117284 () Bool)

(assert (= bs!1117284 (and d!1505382 d!1504898)))

(assert (=> bs!1117284 (= (= lt!1890266 lt!1889569) (= lambda!216080 lambda!215977))))

(declare-fun bs!1117286 () Bool)

(assert (= bs!1117286 (and d!1505382 b!4724656)))

(assert (=> bs!1117286 (= (= lt!1890266 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216080 lambda!216002))))

(declare-fun bs!1117288 () Bool)

(assert (= bs!1117288 (and d!1505382 b!4724389)))

(assert (=> bs!1117288 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215930))))

(declare-fun bs!1117289 () Bool)

(assert (= bs!1117289 (and d!1505382 b!4725248)))

(assert (=> bs!1117289 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216080 lambda!216062))))

(declare-fun bs!1117290 () Bool)

(assert (= bs!1117290 (and d!1505382 d!1504826)))

(assert (=> bs!1117290 (= (= lt!1890266 lt!1889434) (= lambda!216080 lambda!215942))))

(declare-fun bs!1117292 () Bool)

(assert (= bs!1117292 (and d!1505382 b!4725421)))

(assert (=> bs!1117292 (= (= lt!1890266 lt!1890276) (= lambda!216080 lambda!216078))))

(declare-fun bs!1117294 () Bool)

(assert (= bs!1117294 (and d!1505382 d!1505210)))

(assert (=> bs!1117294 (= (= lt!1890266 lt!1890001) (= lambda!216080 lambda!216054))))

(declare-fun bs!1117295 () Bool)

(assert (= bs!1117295 (and d!1505382 d!1504812)))

(assert (=> bs!1117295 (= (= lt!1890266 lt!1889351) (= lambda!216080 lambda!215933))))

(assert (=> bs!1117286 (= (= lt!1890266 lt!1889688) (= lambda!216080 lambda!216003))))

(assert (=> bs!1117261 (= (= lt!1890266 lt!1889503) (= lambda!216080 lambda!215958))))

(declare-fun bs!1117297 () Bool)

(assert (= bs!1117297 (and d!1505382 d!1504946)))

(assert (=> bs!1117297 (= (= lt!1890266 lt!1889678) (= lambda!216080 lambda!216005))))

(declare-fun bs!1117298 () Bool)

(assert (= bs!1117298 (and d!1505382 d!1505252)))

(assert (=> bs!1117298 (= (= lt!1890266 lt!1889444) (= lambda!216080 lambda!216056))))

(assert (=> bs!1117292 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 lt!1889050))) (= lambda!216080 lambda!216076))))

(declare-fun bs!1117300 () Bool)

(assert (= bs!1117300 (and d!1505382 b!4724513)))

(assert (=> bs!1117300 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 oldBucket!34))) (= lambda!216080 lambda!215956))))

(declare-fun bs!1117302 () Bool)

(assert (= bs!1117302 (and d!1505382 b!4725250)))

(assert (=> bs!1117302 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (= lambda!216080 lambda!216061))))

(declare-fun bs!1117304 () Bool)

(assert (= bs!1117304 (and d!1505382 b!4724556)))

(assert (=> bs!1117304 (= (= lt!1890266 lt!1889579) (= lambda!216080 lambda!215976))))

(declare-fun bs!1117306 () Bool)

(assert (= bs!1117306 (and d!1505382 b!4724591)))

(assert (=> bs!1117306 (= (= lt!1890266 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216080 lambda!215982))))

(declare-fun bs!1117307 () Bool)

(assert (= bs!1117307 (and d!1505382 d!1504878)))

(assert (=> bs!1117307 (= (= lt!1890266 lt!1889398) (= lambda!216080 lambda!215970))))

(declare-fun bs!1117308 () Bool)

(assert (= bs!1117308 (and d!1505382 b!4724985)))

(assert (=> bs!1117308 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216080 lambda!216042))))

(declare-fun bs!1117309 () Bool)

(assert (= bs!1117309 (and d!1505382 d!1505120)))

(assert (=> bs!1117309 (= (= lt!1890266 lt!1889896) (= lambda!216080 lambda!216044))))

(declare-fun bs!1117311 () Bool)

(assert (= bs!1117311 (and d!1505382 b!4724402)))

(assert (=> bs!1117311 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215934))))

(assert (=> bs!1117304 (= (= lt!1890266 (extractMap!2042 (t!360231 lt!1889048))) (= lambda!216080 lambda!215975))))

(declare-fun bs!1117313 () Bool)

(assert (= bs!1117313 (and d!1505382 b!4725038)))

(assert (=> bs!1117313 (= (= lt!1890266 lt!1889959) (= lambda!216080 lambda!216048))))

(declare-fun bs!1117315 () Bool)

(assert (= bs!1117315 (and d!1505382 d!1504864)))

(assert (=> bs!1117315 (= (= lt!1890266 lt!1889493) (= lambda!216080 lambda!215959))))

(declare-fun bs!1117316 () Bool)

(assert (= bs!1117316 (and d!1505382 b!4724658)))

(assert (=> bs!1117316 (= (= lt!1890266 (extractMap!2042 (t!360231 (toList!5922 lm!2023)))) (= lambda!216080 lambda!216000))))

(declare-fun bs!1117317 () Bool)

(assert (= bs!1117317 (and d!1505382 b!4724387)))

(assert (=> bs!1117317 (= (= lt!1890266 lt!1889361) (= lambda!216080 lambda!215932))))

(declare-fun bs!1117318 () Bool)

(assert (= bs!1117318 (and d!1505382 b!4724441)))

(assert (=> bs!1117318 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215943))))

(assert (=> bs!1117306 (= (= lt!1890266 lt!1889617) (= lambda!216080 lambda!215989))))

(declare-fun bs!1117319 () Bool)

(assert (= bs!1117319 (and d!1505382 b!4725040)))

(assert (=> bs!1117319 (= (= lt!1890266 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216080 lambda!216046))))

(declare-fun bs!1117320 () Bool)

(assert (= bs!1117320 (and d!1505382 b!4724436)))

(assert (=> bs!1117320 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215939))))

(declare-fun bs!1117321 () Bool)

(assert (= bs!1117321 (and d!1505382 d!1504820)))

(assert (=> bs!1117321 (= (= lt!1890266 lt!1889388) (= lambda!216080 lambda!215937))))

(declare-fun bs!1117323 () Bool)

(assert (= bs!1117323 (and d!1505382 b!4724320)))

(assert (=> bs!1117323 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215918))))

(declare-fun bs!1117324 () Bool)

(assert (= bs!1117324 (and d!1505382 b!4724400)))

(assert (=> bs!1117324 (= (= lt!1890266 lt!1889398) (= lambda!216080 lambda!215936))))

(declare-fun bs!1117325 () Bool)

(assert (= bs!1117325 (and d!1505382 b!4724987)))

(assert (=> bs!1117325 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))) (= lambda!216080 lambda!216041))))

(declare-fun bs!1117326 () Bool)

(assert (= bs!1117326 (and d!1505382 d!1505292)))

(assert (=> bs!1117326 (= (= lt!1890266 lt!1890094) (= lambda!216080 lambda!216066))))

(assert (=> bs!1117313 (= (= lt!1890266 (extractMap!2042 (t!360231 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))) (= lambda!216080 lambda!216047))))

(declare-fun bs!1117327 () Bool)

(assert (= bs!1117327 (and d!1505382 d!1504736)))

(assert (=> bs!1117327 (= (= lt!1890266 lt!1889297) (= lambda!216080 lambda!215923))))

(assert (=> bs!1117263 (= (= lt!1890266 lt!1889307) (= lambda!216080 lambda!215922))))

(declare-fun bs!1117328 () Bool)

(assert (= bs!1117328 (and d!1505382 b!4725133)))

(assert (=> bs!1117328 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216080 lambda!216052))))

(declare-fun bs!1117329 () Bool)

(assert (= bs!1117329 (and d!1505382 b!4724593)))

(assert (=> bs!1117329 (= (= lt!1890266 (extractMap!2042 (t!360231 (t!360231 (toList!5922 lm!2023))))) (= lambda!216080 lambda!215979))))

(declare-fun bs!1117330 () Bool)

(assert (= bs!1117330 (and d!1505382 d!1504846)))

(assert (=> bs!1117330 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215949))))

(declare-fun bs!1117331 () Bool)

(assert (= bs!1117331 (and d!1505382 b!4725135)))

(assert (=> bs!1117331 (= (= lt!1890266 (+!2271 lt!1889044 (h!59185 newBucket!218))) (= lambda!216080 lambda!216051))))

(declare-fun bs!1117332 () Bool)

(assert (= bs!1117332 (and d!1505382 d!1505306)))

(assert (=> bs!1117332 (= (= lt!1890266 lt!1889307) (= lambda!216080 lambda!216069))))

(declare-fun bs!1117333 () Bool)

(assert (= bs!1117333 (and d!1505382 b!4724439)))

(assert (=> bs!1117333 (= (= lt!1890266 lt!1889465) (= lambda!216080 lambda!215945))))

(declare-fun bs!1117334 () Bool)

(assert (= bs!1117334 (and d!1505382 d!1505122)))

(assert (=> bs!1117334 (= (= lt!1890266 lt!1889361) (= lambda!216080 lambda!216045))))

(assert (=> bs!1117308 (= (= lt!1890266 lt!1889906) (= lambda!216080 lambda!216043))))

(assert (=> bs!1117328 (= (= lt!1890266 lt!1890011) (= lambda!216080 lambda!216053))))

(assert (=> bs!1117333 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215944))))

(assert (=> bs!1117269 (= (= lt!1890266 lt!1889444) (= lambda!216080 lambda!215941))))

(declare-fun bs!1117335 () Bool)

(assert (= bs!1117335 (and d!1505382 d!1505372)))

(assert (=> bs!1117335 (= (= lt!1890266 lt!1889465) (= lambda!216080 lambda!216071))))

(assert (=> bs!1117317 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215931))))

(assert (=> bs!1117324 (= (= lt!1890266 lt!1889044) (= lambda!216080 lambda!215935))))

(assert (=> bs!1117289 (= (= lt!1890266 lt!1890104) (= lambda!216080 lambda!216064))))

(declare-fun bs!1117336 () Bool)

(assert (= bs!1117336 (and d!1505382 d!1504730)))

(assert (=> bs!1117336 (not (= lambda!216080 lambda!215835))))

(assert (=> d!1505382 true))

(declare-fun bm!330611 () Bool)

(declare-fun call!330616 () Unit!130501)

(assert (=> bm!330611 (= call!330616 (lemmaContainsAllItsOwnKeys!799 (+!2271 lt!1889044 (h!59185 lt!1889050))))))

(declare-fun e!2947222 () Bool)

(declare-fun b!4725420 () Bool)

(assert (=> b!4725420 (= e!2947222 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 lt!1889050))) lambda!216078))))

(declare-fun b!4725422 () Bool)

(declare-fun e!2947223 () Bool)

(assert (=> b!4725422 (= e!2947223 (invariantList!1513 (toList!5921 lt!1890266)))))

(declare-fun e!2947224 () ListMap!5285)

(assert (=> b!4725423 (= e!2947224 (+!2271 lt!1889044 (h!59185 lt!1889050)))))

(declare-fun lt!1890269 () Unit!130501)

(assert (=> b!4725423 (= lt!1890269 call!330616)))

(declare-fun call!330618 () Bool)

(assert (=> b!4725423 call!330618))

(declare-fun lt!1890283 () Unit!130501)

(assert (=> b!4725423 (= lt!1890283 lt!1890269)))

(declare-fun call!330617 () Bool)

(assert (=> b!4725423 call!330617))

(declare-fun lt!1890282 () Unit!130501)

(declare-fun Unit!130859 () Unit!130501)

(assert (=> b!4725423 (= lt!1890282 Unit!130859)))

(declare-fun b!4725424 () Bool)

(declare-fun res!1999598 () Bool)

(assert (=> b!4725424 (=> (not res!1999598) (not e!2947223))))

(assert (=> b!4725424 (= res!1999598 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 lt!1889050))) lambda!216080))))

(declare-fun bm!330612 () Bool)

(declare-fun c!807078 () Bool)

(declare-fun lt!1890281 () ListMap!5285)

(assert (=> bm!330612 (= call!330618 (forall!11596 (ite c!807078 (toList!5921 (+!2271 lt!1889044 (h!59185 lt!1889050))) (toList!5921 lt!1890281)) (ite c!807078 lambda!216074 lambda!216078)))))

(declare-fun bm!330613 () Bool)

(assert (=> bm!330613 (= call!330617 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 lt!1889050))) (ite c!807078 lambda!216074 lambda!216076)))))

(assert (=> d!1505382 e!2947223))

(declare-fun res!1999600 () Bool)

(assert (=> d!1505382 (=> (not res!1999600) (not e!2947223))))

(assert (=> d!1505382 (= res!1999600 (forall!11596 (t!360230 lt!1889050) lambda!216080))))

(assert (=> d!1505382 (= lt!1890266 e!2947224)))

(assert (=> d!1505382 (= c!807078 ((_ is Nil!52836) (t!360230 lt!1889050)))))

(assert (=> d!1505382 (noDuplicateKeys!2016 (t!360230 lt!1889050))))

(assert (=> d!1505382 (= (addToMapMapFromBucket!1446 (t!360230 lt!1889050) (+!2271 lt!1889044 (h!59185 lt!1889050))) lt!1890266)))

(assert (=> b!4725421 (= e!2947224 lt!1890276)))

(assert (=> b!4725421 (= lt!1890281 (+!2271 (+!2271 lt!1889044 (h!59185 lt!1889050)) (h!59185 (t!360230 lt!1889050))))))

(assert (=> b!4725421 (= lt!1890276 (addToMapMapFromBucket!1446 (t!360230 (t!360230 lt!1889050)) (+!2271 (+!2271 lt!1889044 (h!59185 lt!1889050)) (h!59185 (t!360230 lt!1889050)))))))

(declare-fun lt!1890285 () Unit!130501)

(assert (=> b!4725421 (= lt!1890285 call!330616)))

(assert (=> b!4725421 call!330617))

(declare-fun lt!1890284 () Unit!130501)

(assert (=> b!4725421 (= lt!1890284 lt!1890285)))

(assert (=> b!4725421 call!330618))

(declare-fun lt!1890271 () Unit!130501)

(declare-fun Unit!130860 () Unit!130501)

(assert (=> b!4725421 (= lt!1890271 Unit!130860)))

(assert (=> b!4725421 (forall!11596 (t!360230 (t!360230 lt!1889050)) lambda!216078)))

(declare-fun lt!1890277 () Unit!130501)

(declare-fun Unit!130861 () Unit!130501)

(assert (=> b!4725421 (= lt!1890277 Unit!130861)))

(declare-fun lt!1890272 () Unit!130501)

(declare-fun Unit!130862 () Unit!130501)

(assert (=> b!4725421 (= lt!1890272 Unit!130862)))

(declare-fun lt!1890275 () Unit!130501)

(assert (=> b!4725421 (= lt!1890275 (forallContained!3643 (toList!5921 lt!1890281) lambda!216078 (h!59185 (t!360230 lt!1889050))))))

(assert (=> b!4725421 (contains!16183 lt!1890281 (_1!30523 (h!59185 (t!360230 lt!1889050))))))

(declare-fun lt!1890274 () Unit!130501)

(declare-fun Unit!130863 () Unit!130501)

(assert (=> b!4725421 (= lt!1890274 Unit!130863)))

(assert (=> b!4725421 (contains!16183 lt!1890276 (_1!30523 (h!59185 (t!360230 lt!1889050))))))

(declare-fun lt!1890267 () Unit!130501)

(declare-fun Unit!130864 () Unit!130501)

(assert (=> b!4725421 (= lt!1890267 Unit!130864)))

(assert (=> b!4725421 (forall!11596 (t!360230 lt!1889050) lambda!216078)))

(declare-fun lt!1890268 () Unit!130501)

(declare-fun Unit!130865 () Unit!130501)

(assert (=> b!4725421 (= lt!1890268 Unit!130865)))

(assert (=> b!4725421 (forall!11596 (toList!5921 lt!1890281) lambda!216078)))

(declare-fun lt!1890279 () Unit!130501)

(declare-fun Unit!130866 () Unit!130501)

(assert (=> b!4725421 (= lt!1890279 Unit!130866)))

(declare-fun lt!1890273 () Unit!130501)

(declare-fun Unit!130867 () Unit!130501)

(assert (=> b!4725421 (= lt!1890273 Unit!130867)))

(declare-fun lt!1890280 () Unit!130501)

(assert (=> b!4725421 (= lt!1890280 (addForallContainsKeyThenBeforeAdding!798 (+!2271 lt!1889044 (h!59185 lt!1889050)) lt!1890276 (_1!30523 (h!59185 (t!360230 lt!1889050))) (_2!30523 (h!59185 (t!360230 lt!1889050)))))))

(assert (=> b!4725421 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 lt!1889050))) lambda!216078)))

(declare-fun lt!1890270 () Unit!130501)

(assert (=> b!4725421 (= lt!1890270 lt!1890280)))

(assert (=> b!4725421 (forall!11596 (toList!5921 (+!2271 lt!1889044 (h!59185 lt!1889050))) lambda!216078)))

(declare-fun lt!1890286 () Unit!130501)

(declare-fun Unit!130868 () Unit!130501)

(assert (=> b!4725421 (= lt!1890286 Unit!130868)))

(declare-fun res!1999599 () Bool)

(assert (=> b!4725421 (= res!1999599 (forall!11596 (t!360230 lt!1889050) lambda!216078))))

(assert (=> b!4725421 (=> (not res!1999599) (not e!2947222))))

(assert (=> b!4725421 e!2947222))

(declare-fun lt!1890278 () Unit!130501)

(declare-fun Unit!130869 () Unit!130501)

(assert (=> b!4725421 (= lt!1890278 Unit!130869)))

(assert (= (and d!1505382 c!807078) b!4725423))

(assert (= (and d!1505382 (not c!807078)) b!4725421))

(assert (= (and b!4725421 res!1999599) b!4725420))

(assert (= (or b!4725423 b!4725421) bm!330611))

(assert (= (or b!4725423 b!4725421) bm!330613))

(assert (= (or b!4725423 b!4725421) bm!330612))

(assert (= (and d!1505382 res!1999600) b!4725424))

(assert (= (and b!4725424 res!1999598) b!4725422))

(declare-fun m!5664485 () Bool)

(assert (=> b!4725422 m!5664485))

(assert (=> bm!330611 m!5662271))

(declare-fun m!5664487 () Bool)

(assert (=> bm!330611 m!5664487))

(declare-fun m!5664489 () Bool)

(assert (=> b!4725424 m!5664489))

(declare-fun m!5664491 () Bool)

(assert (=> d!1505382 m!5664491))

(assert (=> d!1505382 m!5662631))

(declare-fun m!5664493 () Bool)

(assert (=> b!4725421 m!5664493))

(declare-fun m!5664495 () Bool)

(assert (=> b!4725421 m!5664495))

(declare-fun m!5664497 () Bool)

(assert (=> b!4725421 m!5664497))

(declare-fun m!5664499 () Bool)

(assert (=> b!4725421 m!5664499))

(declare-fun m!5664501 () Bool)

(assert (=> b!4725421 m!5664501))

(assert (=> b!4725421 m!5664493))

(assert (=> b!4725421 m!5662271))

(assert (=> b!4725421 m!5664495))

(declare-fun m!5664503 () Bool)

(assert (=> b!4725421 m!5664503))

(declare-fun m!5664505 () Bool)

(assert (=> b!4725421 m!5664505))

(assert (=> b!4725421 m!5662271))

(declare-fun m!5664509 () Bool)

(assert (=> b!4725421 m!5664509))

(declare-fun m!5664513 () Bool)

(assert (=> b!4725421 m!5664513))

(declare-fun m!5664515 () Bool)

(assert (=> b!4725421 m!5664515))

(assert (=> b!4725421 m!5664503))

(declare-fun m!5664517 () Bool)

(assert (=> bm!330612 m!5664517))

(assert (=> b!4725420 m!5664503))

(declare-fun m!5664519 () Bool)

(assert (=> bm!330613 m!5664519))

(assert (=> b!4724439 d!1505382))

(declare-fun d!1505402 () Bool)

(assert (=> d!1505402 (dynLambda!21825 lambda!215945 (h!59185 lt!1889050))))

(declare-fun lt!1890294 () Unit!130501)

(assert (=> d!1505402 (= lt!1890294 (choose!33346 (toList!5921 lt!1889470) lambda!215945 (h!59185 lt!1889050)))))

(declare-fun e!2947235 () Bool)

(assert (=> d!1505402 e!2947235))

(declare-fun res!1999612 () Bool)

(assert (=> d!1505402 (=> (not res!1999612) (not e!2947235))))

(assert (=> d!1505402 (= res!1999612 (forall!11596 (toList!5921 lt!1889470) lambda!215945))))

(assert (=> d!1505402 (= (forallContained!3643 (toList!5921 lt!1889470) lambda!215945 (h!59185 lt!1889050)) lt!1890294)))

(declare-fun b!4725436 () Bool)

(assert (=> b!4725436 (= e!2947235 (contains!16186 (toList!5921 lt!1889470) (h!59185 lt!1889050)))))

(assert (= (and d!1505402 res!1999612) b!4725436))

(declare-fun b_lambda!179417 () Bool)

(assert (=> (not b_lambda!179417) (not d!1505402)))

(assert (=> d!1505402 m!5664393))

(declare-fun m!5664521 () Bool)

(assert (=> d!1505402 m!5664521))

(assert (=> d!1505402 m!5662275))

(declare-fun m!5664523 () Bool)

(assert (=> b!4725436 m!5664523))

(assert (=> b!4724439 d!1505402))

(declare-fun d!1505404 () Bool)

(declare-fun res!1999615 () Bool)

(declare-fun e!2947238 () Bool)

(assert (=> d!1505404 (=> res!1999615 e!2947238)))

(assert (=> d!1505404 (= res!1999615 ((_ is Nil!52836) (t!360230 lt!1889050)))))

(assert (=> d!1505404 (= (forall!11596 (t!360230 lt!1889050) lambda!215945) e!2947238)))

(declare-fun b!4725437 () Bool)

(declare-fun e!2947239 () Bool)

(assert (=> b!4725437 (= e!2947238 e!2947239)))

(declare-fun res!1999616 () Bool)

(assert (=> b!4725437 (=> (not res!1999616) (not e!2947239))))

(assert (=> b!4725437 (= res!1999616 (dynLambda!21825 lambda!215945 (h!59185 (t!360230 lt!1889050))))))

(declare-fun b!4725438 () Bool)

(assert (=> b!4725438 (= e!2947239 (forall!11596 (t!360230 (t!360230 lt!1889050)) lambda!215945))))

(assert (= (and d!1505404 (not res!1999615)) b!4725437))

(assert (= (and b!4725437 res!1999616) b!4725438))

(declare-fun b_lambda!179419 () Bool)

(assert (=> (not b_lambda!179419) (not b!4725437)))

(declare-fun m!5664525 () Bool)

(assert (=> b!4725437 m!5664525))

(declare-fun m!5664527 () Bool)

(assert (=> b!4725438 m!5664527))

(assert (=> b!4724439 d!1505404))

(declare-fun d!1505406 () Bool)

(declare-fun res!1999619 () Bool)

(declare-fun e!2947242 () Bool)

(assert (=> d!1505406 (=> res!1999619 e!2947242)))

(assert (=> d!1505406 (= res!1999619 ((_ is Nil!52836) newBucket!218))))

(assert (=> d!1505406 (= (forall!11596 newBucket!218 lambda!215942) e!2947242)))

(declare-fun b!4725443 () Bool)

(declare-fun e!2947243 () Bool)

(assert (=> b!4725443 (= e!2947242 e!2947243)))

(declare-fun res!1999620 () Bool)

(assert (=> b!4725443 (=> (not res!1999620) (not e!2947243))))

(assert (=> b!4725443 (= res!1999620 (dynLambda!21825 lambda!215942 (h!59185 newBucket!218)))))

(declare-fun b!4725444 () Bool)

(assert (=> b!4725444 (= e!2947243 (forall!11596 (t!360230 newBucket!218) lambda!215942))))

(assert (= (and d!1505406 (not res!1999619)) b!4725443))

(assert (= (and b!4725443 res!1999620) b!4725444))

(declare-fun b_lambda!179421 () Bool)

(assert (=> (not b_lambda!179421) (not b!4725443)))

(declare-fun m!5664529 () Bool)

(assert (=> b!4725443 m!5664529))

(declare-fun m!5664531 () Bool)

(assert (=> b!4725444 m!5664531))

(assert (=> d!1504826 d!1505406))

(assert (=> d!1504826 d!1504830))

(declare-fun d!1505408 () Bool)

(declare-fun lt!1890295 () Bool)

(assert (=> d!1505408 (= lt!1890295 (select (content!9398 (toList!5921 lt!1889381)) lt!1889051))))

(declare-fun e!2947245 () Bool)

(assert (=> d!1505408 (= lt!1890295 e!2947245)))

(declare-fun res!1999622 () Bool)

(assert (=> d!1505408 (=> (not res!1999622) (not e!2947245))))

(assert (=> d!1505408 (= res!1999622 ((_ is Cons!52836) (toList!5921 lt!1889381)))))

(assert (=> d!1505408 (= (contains!16186 (toList!5921 lt!1889381) lt!1889051) lt!1890295)))

(declare-fun b!4725445 () Bool)

(declare-fun e!2947244 () Bool)

(assert (=> b!4725445 (= e!2947245 e!2947244)))

(declare-fun res!1999621 () Bool)

(assert (=> b!4725445 (=> res!1999621 e!2947244)))

(assert (=> b!4725445 (= res!1999621 (= (h!59185 (toList!5921 lt!1889381)) lt!1889051))))

(declare-fun b!4725446 () Bool)

(assert (=> b!4725446 (= e!2947244 (contains!16186 (t!360230 (toList!5921 lt!1889381)) lt!1889051))))

(assert (= (and d!1505408 res!1999622) b!4725445))

(assert (= (and b!4725445 (not res!1999621)) b!4725446))

(declare-fun m!5664533 () Bool)

(assert (=> d!1505408 m!5664533))

(declare-fun m!5664535 () Bool)

(assert (=> d!1505408 m!5664535))

(declare-fun m!5664537 () Bool)

(assert (=> b!4725446 m!5664537))

(assert (=> b!4724396 d!1505408))

(declare-fun d!1505410 () Bool)

(assert (=> d!1505410 (= (get!17723 (getValueByKey!1959 (toList!5922 lt!1889053) lt!1889045)) (v!46943 (getValueByKey!1959 (toList!5922 lt!1889053) lt!1889045)))))

(assert (=> d!1504722 d!1505410))

(assert (=> d!1504722 d!1505100))

(declare-fun d!1505414 () Bool)

(declare-fun res!1999625 () Bool)

(declare-fun e!2947248 () Bool)

(assert (=> d!1505414 (=> res!1999625 e!2947248)))

(assert (=> d!1505414 (= res!1999625 ((_ is Nil!52836) (ite c!806856 (toList!5921 lt!1889044) (toList!5921 lt!1889366))))))

(assert (=> d!1505414 (= (forall!11596 (ite c!806856 (toList!5921 lt!1889044) (toList!5921 lt!1889366)) (ite c!806856 lambda!215930 lambda!215932)) e!2947248)))

(declare-fun b!4725449 () Bool)

(declare-fun e!2947249 () Bool)

(assert (=> b!4725449 (= e!2947248 e!2947249)))

(declare-fun res!1999626 () Bool)

(assert (=> b!4725449 (=> (not res!1999626) (not e!2947249))))

(assert (=> b!4725449 (= res!1999626 (dynLambda!21825 (ite c!806856 lambda!215930 lambda!215932) (h!59185 (ite c!806856 (toList!5921 lt!1889044) (toList!5921 lt!1889366)))))))

(declare-fun b!4725450 () Bool)

(assert (=> b!4725450 (= e!2947249 (forall!11596 (t!360230 (ite c!806856 (toList!5921 lt!1889044) (toList!5921 lt!1889366))) (ite c!806856 lambda!215930 lambda!215932)))))

(assert (= (and d!1505414 (not res!1999625)) b!4725449))

(assert (= (and b!4725449 res!1999626) b!4725450))

(declare-fun b_lambda!179423 () Bool)

(assert (=> (not b_lambda!179423) (not b!4725449)))

(declare-fun m!5664543 () Bool)

(assert (=> b!4725449 m!5664543))

(declare-fun m!5664545 () Bool)

(assert (=> b!4725450 m!5664545))

(assert (=> bm!330493 d!1505414))

(declare-fun b!4725453 () Bool)

(declare-fun tp!1348476 () Bool)

(declare-fun e!2947252 () Bool)

(assert (=> b!4725453 (= e!2947252 (and tp_is_empty!31357 tp_is_empty!31359 tp!1348476))))

(assert (=> b!4724457 (= tp!1348475 e!2947252)))

(assert (= (and b!4724457 ((_ is Cons!52836) (t!360230 (t!360230 newBucket!218)))) b!4725453))

(declare-fun b!4725454 () Bool)

(declare-fun tp!1348477 () Bool)

(declare-fun e!2947253 () Bool)

(assert (=> b!4725454 (= e!2947253 (and tp_is_empty!31357 tp_is_empty!31359 tp!1348477))))

(assert (=> b!4724456 (= tp!1348473 e!2947253)))

(assert (= (and b!4724456 ((_ is Cons!52836) (_2!30524 (h!59186 (toList!5922 lm!2023))))) b!4725454))

(declare-fun b!4725455 () Bool)

(declare-fun e!2947254 () Bool)

(declare-fun tp!1348478 () Bool)

(declare-fun tp!1348479 () Bool)

(assert (=> b!4725455 (= e!2947254 (and tp!1348478 tp!1348479))))

(assert (=> b!4724456 (= tp!1348474 e!2947254)))

(assert (= (and b!4724456 ((_ is Cons!52837) (t!360231 (toList!5922 lm!2023)))) b!4725455))

(declare-fun e!2947255 () Bool)

(declare-fun b!4725456 () Bool)

(declare-fun tp!1348480 () Bool)

(assert (=> b!4725456 (= e!2947255 (and tp_is_empty!31357 tp_is_empty!31359 tp!1348480))))

(assert (=> b!4724451 (= tp!1348468 e!2947255)))

(assert (= (and b!4724451 ((_ is Cons!52836) (t!360230 (t!360230 oldBucket!34)))) b!4725456))

(declare-fun b_lambda!179427 () Bool)

(assert (= b_lambda!179403 (or b!4724439 b_lambda!179427)))

(declare-fun bs!1117348 () Bool)

(declare-fun d!1505420 () Bool)

(assert (= bs!1117348 (and d!1505420 b!4724439)))

(assert (=> bs!1117348 (= (dynLambda!21825 lambda!215945 (h!59185 (toList!5921 lt!1889470))) (contains!16183 lt!1889465 (_1!30523 (h!59185 (toList!5921 lt!1889470)))))))

(declare-fun m!5664551 () Bool)

(assert (=> bs!1117348 m!5664551))

(assert (=> b!4725380 d!1505420))

(declare-fun b_lambda!179429 () Bool)

(assert (= b_lambda!179225 (or b!4724400 b_lambda!179429)))

(declare-fun bs!1117350 () Bool)

(declare-fun d!1505422 () Bool)

(assert (= bs!1117350 (and d!1505422 b!4724400)))

(assert (=> bs!1117350 (= (dynLambda!21825 lambda!215936 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889398 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664553 () Bool)

(assert (=> bs!1117350 m!5664553))

(assert (=> b!4724547 d!1505422))

(declare-fun b_lambda!179431 () Bool)

(assert (= b_lambda!179377 (or b!4724318 b_lambda!179431)))

(declare-fun bs!1117353 () Bool)

(declare-fun d!1505424 () Bool)

(assert (= bs!1117353 (and d!1505424 b!4724318)))

(assert (=> bs!1117353 (= (dynLambda!21825 lambda!215922 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (contains!16183 lt!1889307 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(assert (=> bs!1117353 m!5662027))

(assert (=> d!1505310 d!1505424))

(declare-fun b_lambda!179433 () Bool)

(assert (= b_lambda!179283 (or d!1504778 b_lambda!179433)))

(declare-fun bs!1117354 () Bool)

(declare-fun d!1505426 () Bool)

(assert (= bs!1117354 (and d!1505426 d!1504778)))

(assert (=> bs!1117354 (= (dynLambda!21823 lambda!215926 (h!59186 (t!360231 (toList!5922 lm!2023)))) (noDuplicateKeys!2016 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023))))))))

(assert (=> bs!1117354 m!5662669))

(assert (=> b!4724758 d!1505426))

(declare-fun b_lambda!179435 () Bool)

(assert (= b_lambda!179263 (or d!1504784 b_lambda!179435)))

(declare-fun bs!1117357 () Bool)

(declare-fun d!1505428 () Bool)

(assert (= bs!1117357 (and d!1505428 d!1504784)))

(assert (=> bs!1117357 (= (dynLambda!21823 lambda!215927 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023))))) (noDuplicateKeys!2016 (_2!30524 (h!59186 (Cons!52837 (tuple2!54461 hash!405 newBucket!218) (t!360231 (toList!5922 lm!2023)))))))))

(assert (=> bs!1117357 m!5663559))

(assert (=> b!4724692 d!1505428))

(declare-fun b_lambda!179437 () Bool)

(assert (= b_lambda!179325 (or d!1504734 b_lambda!179437)))

(declare-fun bs!1117358 () Bool)

(declare-fun d!1505430 () Bool)

(assert (= bs!1117358 (and d!1505430 d!1504734)))

(assert (=> bs!1117358 (= (dynLambda!21823 lambda!215836 (h!59186 (toList!5922 lt!1889053))) (allKeysSameHash!1842 (_2!30524 (h!59186 (toList!5922 lt!1889053))) (_1!30524 (h!59186 (toList!5922 lt!1889053))) hashF!1323))))

(declare-fun m!5664555 () Bool)

(assert (=> bs!1117358 m!5664555))

(assert (=> b!4725113 d!1505430))

(declare-fun b_lambda!179439 () Bool)

(assert (= b_lambda!179331 (or b!4724434 b_lambda!179439)))

(declare-fun bs!1117360 () Bool)

(declare-fun d!1505432 () Bool)

(assert (= bs!1117360 (and d!1505432 b!4724434)))

(assert (=> bs!1117360 (= (dynLambda!21825 lambda!215941 (h!59185 (toList!5921 lt!1889449))) (contains!16183 lt!1889444 (_1!30523 (h!59185 (toList!5921 lt!1889449)))))))

(declare-fun m!5664557 () Bool)

(assert (=> bs!1117360 m!5664557))

(assert (=> b!4725130 d!1505432))

(declare-fun b_lambda!179441 () Bool)

(assert (= b_lambda!179267 (or b!4724318 b_lambda!179441)))

(declare-fun bs!1117362 () Bool)

(declare-fun d!1505434 () Bool)

(assert (= bs!1117362 (and d!1505434 b!4724318)))

(assert (=> bs!1117362 (= (dynLambda!21825 lambda!215922 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889307 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664559 () Bool)

(assert (=> bs!1117362 m!5664559))

(assert (=> b!4724704 d!1505434))

(declare-fun b_lambda!179443 () Bool)

(assert (= b_lambda!179281 (or d!1504736 b_lambda!179443)))

(declare-fun bs!1117364 () Bool)

(declare-fun d!1505436 () Bool)

(assert (= bs!1117364 (and d!1505436 d!1504736)))

(assert (=> bs!1117364 (= (dynLambda!21825 lambda!215923 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889297 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664561 () Bool)

(assert (=> bs!1117364 m!5664561))

(assert (=> b!4724740 d!1505436))

(declare-fun b_lambda!179445 () Bool)

(assert (= b_lambda!179273 (or b!4724439 b_lambda!179445)))

(declare-fun bs!1117366 () Bool)

(declare-fun d!1505438 () Bool)

(assert (= bs!1117366 (and d!1505438 b!4724439)))

(assert (=> bs!1117366 (= (dynLambda!21825 lambda!215945 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889465 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664563 () Bool)

(assert (=> bs!1117366 m!5664563))

(assert (=> b!4724718 d!1505438))

(declare-fun b_lambda!179447 () Bool)

(assert (= b_lambda!179375 (or b!4724318 b_lambda!179447)))

(declare-fun bs!1117367 () Bool)

(declare-fun d!1505440 () Bool)

(assert (= bs!1117367 (and d!1505440 b!4724318)))

(assert (=> bs!1117367 (= (dynLambda!21825 lambda!215922 (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023)))))) (contains!16183 lt!1889307 (_1!30523 (h!59185 (t!360230 (_2!30524 (h!59186 (toList!5922 lm!2023))))))))))

(declare-fun m!5664565 () Bool)

(assert (=> bs!1117367 m!5664565))

(assert (=> b!4725270 d!1505440))

(declare-fun b_lambda!179449 () Bool)

(assert (= b_lambda!179369 (or b!4724318 b_lambda!179449)))

(assert (=> b!4725243 d!1505424))

(declare-fun b_lambda!179451 () Bool)

(assert (= b_lambda!179419 (or b!4724439 b_lambda!179451)))

(declare-fun bs!1117369 () Bool)

(declare-fun d!1505442 () Bool)

(assert (= bs!1117369 (and d!1505442 b!4724439)))

(assert (=> bs!1117369 (= (dynLambda!21825 lambda!215945 (h!59185 (t!360230 lt!1889050))) (contains!16183 lt!1889465 (_1!30523 (h!59185 (t!360230 lt!1889050)))))))

(declare-fun m!5664567 () Bool)

(assert (=> bs!1117369 m!5664567))

(assert (=> b!4725437 d!1505442))

(declare-fun b_lambda!179453 () Bool)

(assert (= b_lambda!179309 (or b!4724387 b_lambda!179453)))

(declare-fun bs!1117371 () Bool)

(declare-fun d!1505444 () Bool)

(assert (= bs!1117371 (and d!1505444 b!4724387)))

(assert (=> bs!1117371 (= (dynLambda!21825 lambda!215932 (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050)))) (contains!16183 lt!1889361 (_1!30523 (h!59185 (t!360230 (Cons!52836 lt!1889051 lt!1889050))))))))

(declare-fun m!5664569 () Bool)

(assert (=> bs!1117371 m!5664569))

(assert (=> b!4725029 d!1505444))

(declare-fun b_lambda!179455 () Bool)

(assert (= b_lambda!179223 (or b!4724400 b_lambda!179455)))

(declare-fun bs!1117372 () Bool)

(declare-fun d!1505446 () Bool)

(assert (= bs!1117372 (and d!1505446 b!4724400)))

(assert (=> bs!1117372 (= (dynLambda!21825 lambda!215936 (h!59185 (t!360230 oldBucket!34))) (contains!16183 lt!1889398 (_1!30523 (h!59185 (t!360230 oldBucket!34)))))))

(declare-fun m!5664571 () Bool)

(assert (=> bs!1117372 m!5664571))

(assert (=> b!4724545 d!1505446))

(declare-fun b_lambda!179457 () Bool)

(assert (= b_lambda!179363 (or d!1504812 b_lambda!179457)))

(declare-fun bs!1117373 () Bool)

(declare-fun d!1505448 () Bool)

(assert (= bs!1117373 (and d!1505448 d!1504812)))

(assert (=> bs!1117373 (= (dynLambda!21825 lambda!215933 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (contains!16183 lt!1889351 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(declare-fun m!5664573 () Bool)

(assert (=> bs!1117373 m!5664573))

(assert (=> b!4725229 d!1505448))

(declare-fun b_lambda!179459 () Bool)

(assert (= b_lambda!179239 (or d!1504728 b_lambda!179459)))

(declare-fun bs!1117374 () Bool)

(declare-fun d!1505450 () Bool)

(assert (= bs!1117374 (and d!1505450 d!1504728)))

(assert (=> bs!1117374 (= (dynLambda!21825 lambda!215834 (h!59185 newBucket!218)) (= (hash!4388 hashF!1323 (_1!30523 (h!59185 newBucket!218))) hash!405))))

(declare-fun m!5664575 () Bool)

(assert (=> bs!1117374 m!5664575))

(assert (=> b!4724631 d!1505450))

(declare-fun b_lambda!179461 () Bool)

(assert (= b_lambda!179329 (or b!4724434 b_lambda!179461)))

(declare-fun bs!1117375 () Bool)

(declare-fun d!1505452 () Bool)

(assert (= bs!1117375 (and d!1505452 b!4724434)))

(assert (=> bs!1117375 (= (dynLambda!21825 lambda!215941 (h!59185 (t!360230 newBucket!218))) (contains!16183 lt!1889444 (_1!30523 (h!59185 (t!360230 newBucket!218)))))))

(declare-fun m!5664577 () Bool)

(assert (=> bs!1117375 m!5664577))

(assert (=> b!4725117 d!1505452))

(declare-fun b_lambda!179463 () Bool)

(assert (= b_lambda!179221 (or b!4724400 b_lambda!179463)))

(declare-fun bs!1117377 () Bool)

(declare-fun d!1505454 () Bool)

(assert (= bs!1117377 (and d!1505454 b!4724400)))

(assert (=> bs!1117377 (= (dynLambda!21825 lambda!215936 (h!59185 (toList!5921 lt!1889403))) (contains!16183 lt!1889398 (_1!30523 (h!59185 (toList!5921 lt!1889403)))))))

(declare-fun m!5664579 () Bool)

(assert (=> bs!1117377 m!5664579))

(assert (=> b!4724528 d!1505454))

(declare-fun b_lambda!179465 () Bool)

(assert (= b_lambda!179407 (or b!4724439 b_lambda!179465)))

(declare-fun bs!1117378 () Bool)

(declare-fun d!1505456 () Bool)

(assert (= bs!1117378 (and d!1505456 b!4724439)))

(assert (=> bs!1117378 (= (dynLambda!21825 lambda!215945 (h!59185 lt!1889050)) (contains!16183 lt!1889465 (_1!30523 (h!59185 lt!1889050))))))

(assert (=> bs!1117378 m!5662287))

(assert (=> b!4725409 d!1505456))

(declare-fun b_lambda!179467 () Bool)

(assert (= b_lambda!179275 (or d!1504812 b_lambda!179467)))

(declare-fun bs!1117380 () Bool)

(declare-fun d!1505458 () Bool)

(assert (= bs!1117380 (and d!1505458 d!1504812)))

(assert (=> bs!1117380 (= (dynLambda!21825 lambda!215933 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889351 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664581 () Bool)

(assert (=> bs!1117380 m!5664581))

(assert (=> b!4724720 d!1505458))

(declare-fun b_lambda!179469 () Bool)

(assert (= b_lambda!179367 (or d!1504736 b_lambda!179469)))

(declare-fun bs!1117381 () Bool)

(declare-fun d!1505460 () Bool)

(assert (= bs!1117381 (and d!1505460 d!1504736)))

(assert (=> bs!1117381 (= (dynLambda!21825 lambda!215923 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023))))) (contains!16183 lt!1889297 (_1!30523 (h!59185 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))))

(declare-fun m!5664583 () Bool)

(assert (=> bs!1117381 m!5664583))

(assert (=> b!4725235 d!1505460))

(declare-fun b_lambda!179471 () Bool)

(assert (= b_lambda!179417 (or b!4724439 b_lambda!179471)))

(assert (=> d!1505402 d!1505456))

(declare-fun b_lambda!179473 () Bool)

(assert (= b_lambda!179361 (or d!1504786 b_lambda!179473)))

(declare-fun bs!1117385 () Bool)

(declare-fun d!1505462 () Bool)

(assert (= bs!1117385 (and d!1505462 d!1504786)))

(assert (=> bs!1117385 (= (dynLambda!21823 lambda!215928 (h!59186 lt!1889048)) (noDuplicateKeys!2016 (_2!30524 (h!59186 lt!1889048))))))

(assert (=> bs!1117385 m!5662303))

(assert (=> b!4725227 d!1505462))

(declare-fun b_lambda!179475 () Bool)

(assert (= b_lambda!179227 (or b!4724387 b_lambda!179475)))

(declare-fun bs!1117387 () Bool)

(declare-fun d!1505464 () Bool)

(assert (= bs!1117387 (and d!1505464 b!4724387)))

(assert (=> bs!1117387 (= (dynLambda!21825 lambda!215932 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889361 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664585 () Bool)

(assert (=> bs!1117387 m!5664585))

(assert (=> b!4724549 d!1505464))

(declare-fun b_lambda!179477 () Bool)

(assert (= b_lambda!179305 (or b!4724387 b_lambda!179477)))

(declare-fun bs!1117389 () Bool)

(declare-fun d!1505466 () Bool)

(assert (= bs!1117389 (and d!1505466 b!4724387)))

(assert (=> bs!1117389 (= (dynLambda!21825 lambda!215932 (h!59185 (Cons!52836 lt!1889051 lt!1889050))) (contains!16183 lt!1889361 (_1!30523 (h!59185 (Cons!52836 lt!1889051 lt!1889050)))))))

(assert (=> bs!1117389 m!5662143))

(assert (=> d!1505126 d!1505466))

(declare-fun b_lambda!179479 () Bool)

(assert (= b_lambda!179379 (or b!4724318 b_lambda!179479)))

(declare-fun bs!1117390 () Bool)

(declare-fun d!1505468 () Bool)

(assert (= bs!1117390 (and d!1505468 b!4724318)))

(assert (=> bs!1117390 (= (dynLambda!21825 lambda!215922 (h!59185 (toList!5921 lt!1889312))) (contains!16183 lt!1889307 (_1!30523 (h!59185 (toList!5921 lt!1889312)))))))

(declare-fun m!5664587 () Bool)

(assert (=> bs!1117390 m!5664587))

(assert (=> b!4725291 d!1505468))

(declare-fun b_lambda!179481 () Bool)

(assert (= b_lambda!179245 (or d!1504820 b_lambda!179481)))

(declare-fun bs!1117392 () Bool)

(declare-fun d!1505470 () Bool)

(assert (= bs!1117392 (and d!1505470 d!1504820)))

(assert (=> bs!1117392 (= (dynLambda!21825 lambda!215937 (h!59185 oldBucket!34)) (contains!16183 lt!1889388 (_1!30523 (h!59185 oldBucket!34))))))

(declare-fun m!5664589 () Bool)

(assert (=> bs!1117392 m!5664589))

(assert (=> b!4724645 d!1505470))

(declare-fun b_lambda!179483 () Bool)

(assert (= b_lambda!179217 (or b!4724400 b_lambda!179483)))

(declare-fun bs!1117394 () Bool)

(declare-fun d!1505472 () Bool)

(assert (= bs!1117394 (and d!1505472 b!4724400)))

(assert (=> bs!1117394 (= (dynLambda!21825 lambda!215936 (h!59185 oldBucket!34)) (contains!16183 lt!1889398 (_1!30523 (h!59185 oldBucket!34))))))

(assert (=> bs!1117394 m!5662201))

(assert (=> b!4724521 d!1505472))

(declare-fun b_lambda!179485 () Bool)

(assert (= b_lambda!179327 (or b!4724434 b_lambda!179485)))

(declare-fun bs!1117396 () Bool)

(declare-fun d!1505474 () Bool)

(assert (= bs!1117396 (and d!1505474 b!4724434)))

(assert (=> bs!1117396 (= (dynLambda!21825 lambda!215941 (h!59185 newBucket!218)) (contains!16183 lt!1889444 (_1!30523 (h!59185 newBucket!218))))))

(assert (=> bs!1117396 m!5662257))

(assert (=> b!4725115 d!1505474))

(declare-fun b_lambda!179487 () Bool)

(assert (= b_lambda!179359 (or start!480916 b_lambda!179487)))

(declare-fun bs!1117397 () Bool)

(declare-fun d!1505476 () Bool)

(assert (= bs!1117397 (and d!1505476 start!480916)))

(assert (=> bs!1117397 (= (dynLambda!21823 lambda!215822 (h!59186 (t!360231 (toList!5922 lm!2023)))) (noDuplicateKeys!2016 (_2!30524 (h!59186 (t!360231 (toList!5922 lm!2023))))))))

(assert (=> bs!1117397 m!5662669))

(assert (=> b!4725225 d!1505476))

(declare-fun b_lambda!179489 () Bool)

(assert (= b_lambda!179219 (or b!4724400 b_lambda!179489)))

(assert (=> d!1504872 d!1505472))

(declare-fun b_lambda!179491 () Bool)

(assert (= b_lambda!179313 (or d!1504696 b_lambda!179491)))

(declare-fun bs!1117399 () Bool)

(declare-fun d!1505478 () Bool)

(assert (= bs!1117399 (and d!1505478 d!1504696)))

(assert (=> bs!1117399 (= (dynLambda!21823 lambda!215825 (h!59186 (toList!5922 lm!2023))) (allKeysSameHash!1842 (_2!30524 (h!59186 (toList!5922 lm!2023))) (_1!30524 (h!59186 (toList!5922 lm!2023))) hashF!1323))))

(declare-fun m!5664591 () Bool)

(assert (=> bs!1117399 m!5664591))

(assert (=> b!4725035 d!1505478))

(declare-fun b_lambda!179493 () Bool)

(assert (= b_lambda!179279 (or d!1504824 b_lambda!179493)))

(declare-fun bs!1117401 () Bool)

(declare-fun d!1505480 () Bool)

(assert (= bs!1117401 (and d!1505480 d!1504824)))

(assert (=> bs!1117401 (= (dynLambda!21823 lambda!215938 (h!59186 (toList!5922 lm!2023))) (noDuplicateKeys!2016 (_2!30524 (h!59186 (toList!5922 lm!2023)))))))

(assert (=> bs!1117401 m!5662007))

(assert (=> b!4724738 d!1505480))

(declare-fun b_lambda!179495 () Bool)

(assert (= b_lambda!179307 (or b!4724387 b_lambda!179495)))

(declare-fun bs!1117403 () Bool)

(declare-fun d!1505482 () Bool)

(assert (= bs!1117403 (and d!1505482 b!4724387)))

(assert (=> bs!1117403 (= (dynLambda!21825 lambda!215932 (h!59185 (toList!5921 lt!1889366))) (contains!16183 lt!1889361 (_1!30523 (h!59185 (toList!5921 lt!1889366)))))))

(declare-fun m!5664593 () Bool)

(assert (=> bs!1117403 m!5664593))

(assert (=> b!4725027 d!1505482))

(declare-fun b_lambda!179497 () Bool)

(assert (= b_lambda!179237 (or d!1504828 b_lambda!179497)))

(declare-fun bs!1117405 () Bool)

(declare-fun d!1505484 () Bool)

(assert (= bs!1117405 (and d!1505484 d!1504828)))

(assert (=> bs!1117405 (= (dynLambda!21825 lambda!215946 (h!59185 lt!1889050)) (contains!16183 lt!1889455 (_1!30523 (h!59185 lt!1889050))))))

(declare-fun m!5664595 () Bool)

(assert (=> bs!1117405 m!5664595))

(assert (=> b!4724586 d!1505484))

(declare-fun b_lambda!179499 () Bool)

(assert (= b_lambda!179241 (or b!4724434 b_lambda!179499)))

(declare-fun bs!1117406 () Bool)

(declare-fun d!1505486 () Bool)

(assert (= bs!1117406 (and d!1505486 b!4724434)))

(assert (=> bs!1117406 (= (dynLambda!21825 lambda!215941 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889444 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664597 () Bool)

(assert (=> bs!1117406 m!5664597))

(assert (=> b!4724633 d!1505486))

(declare-fun b_lambda!179501 () Bool)

(assert (= b_lambda!179311 (or b!4724387 b_lambda!179501)))

(assert (=> b!4725031 d!1505466))

(declare-fun b_lambda!179503 () Bool)

(assert (= b_lambda!179269 (or d!1504730 b_lambda!179503)))

(declare-fun bs!1117407 () Bool)

(declare-fun d!1505488 () Bool)

(assert (= bs!1117407 (and d!1505488 d!1504730)))

(assert (=> bs!1117407 (= (dynLambda!21825 lambda!215835 (h!59185 oldBucket!34)) (= (hash!4388 hashF!1323 (_1!30523 (h!59185 oldBucket!34))) hash!405))))

(declare-fun m!5664599 () Bool)

(assert (=> bs!1117407 m!5664599))

(assert (=> b!4724714 d!1505488))

(declare-fun b_lambda!179505 () Bool)

(assert (= b_lambda!179365 (or d!1504820 b_lambda!179505)))

(declare-fun bs!1117408 () Bool)

(declare-fun d!1505490 () Bool)

(assert (= bs!1117408 (and d!1505490 d!1504820)))

(assert (=> bs!1117408 (= (dynLambda!21825 lambda!215937 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889388 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664601 () Bool)

(assert (=> bs!1117408 m!5664601))

(assert (=> b!4725233 d!1505490))

(declare-fun b_lambda!179507 () Bool)

(assert (= b_lambda!179353 (or b!4724434 b_lambda!179507)))

(assert (=> d!1505258 d!1505474))

(declare-fun b_lambda!179509 () Bool)

(assert (= b_lambda!179243 (or d!1504828 b_lambda!179509)))

(declare-fun bs!1117410 () Bool)

(declare-fun d!1505492 () Bool)

(assert (= bs!1117410 (and d!1505492 d!1504828)))

(assert (=> bs!1117410 (= (dynLambda!21825 lambda!215946 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889455 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664603 () Bool)

(assert (=> bs!1117410 m!5664603))

(assert (=> b!4724637 d!1505492))

(declare-fun b_lambda!179511 () Bool)

(assert (= b_lambda!179421 (or d!1504826 b_lambda!179511)))

(declare-fun bs!1117412 () Bool)

(declare-fun d!1505494 () Bool)

(assert (= bs!1117412 (and d!1505494 d!1504826)))

(assert (=> bs!1117412 (= (dynLambda!21825 lambda!215942 (h!59185 newBucket!218)) (contains!16183 lt!1889434 (_1!30523 (h!59185 newBucket!218))))))

(declare-fun m!5664605 () Bool)

(assert (=> bs!1117412 m!5664605))

(assert (=> b!4725443 d!1505494))

(declare-fun b_lambda!179513 () Bool)

(assert (= b_lambda!179213 (or d!1504826 b_lambda!179513)))

(declare-fun bs!1117413 () Bool)

(declare-fun d!1505496 () Bool)

(assert (= bs!1117413 (and d!1505496 d!1504826)))

(assert (=> bs!1117413 (= (dynLambda!21825 lambda!215942 (h!59185 (toList!5921 lt!1889044))) (contains!16183 lt!1889434 (_1!30523 (h!59185 (toList!5921 lt!1889044)))))))

(declare-fun m!5664607 () Bool)

(assert (=> bs!1117413 m!5664607))

(assert (=> b!4724499 d!1505496))

(declare-fun b_lambda!179515 () Bool)

(assert (= b_lambda!179265 (or start!480916 b_lambda!179515)))

(declare-fun bs!1117414 () Bool)

(declare-fun d!1505498 () Bool)

(assert (= bs!1117414 (and d!1505498 start!480916)))

(assert (=> bs!1117414 (= (dynLambda!21823 lambda!215822 (h!59186 (t!360231 lt!1889048))) (noDuplicateKeys!2016 (_2!30524 (h!59186 (t!360231 lt!1889048)))))))

(declare-fun m!5664609 () Bool)

(assert (=> bs!1117414 m!5664609))

(assert (=> b!4724696 d!1505498))

(check-sat (not b_lambda!179463) (not bs!1117375) (not b_lambda!179495) (not d!1505316) (not bm!330597) (not bm!330557) (not d!1504966) (not b!4725405) (not b!4724638) (not bs!1117374) (not bm!330602) (not b!4725352) (not b!4725121) (not b!4725346) (not b!4725351) (not b_lambda!179399) (not b!4725343) (not d!1504846) (not b!4725231) (not b!4725295) (not b!4724646) (not b!4725214) (not b!4724525) (not b_lambda!179247) (not b!4724588) (not b!4724693) (not b_lambda!179467) (not b!4725123) (not b!4725456) (not b!4724834) (not b!4725122) (not bm!330613) (not bm!330515) (not b!4725334) (not d!1505372) (not b!4725337) (not b!4724594) (not b_lambda!179487) (not b!4724634) (not b!4725221) (not bs!1117403) (not bs!1117353) (not d!1505292) (not d!1505202) (not d!1505210) (not bs!1117362) (not bs!1117354) (not b!4725404) (not bm!330587) (not b!4724505) (not b!4725133) (not bs!1117364) (not bs!1117369) (not b!4724759) (not bm!330554) (not b!4724761) (not b!4724833) (not b!4725222) (not b_lambda!179469) (not b!4724508) (not b!4724908) (not b_lambda!179435) (not b!4724733) (not b!4724921) (not b!4725131) (not d!1505326) (not b_lambda!179465) (not b!4725034) (not b!4725401) (not b!4725454) (not d!1504844) (not b!4724717) (not b!4725132) (not b!4725333) (not d!1504898) (not b!4724697) (not b!4724541) (not bs!1117389) (not d!1504978) (not b!4724764) (not d!1505038) (not b_lambda!179477) (not bm!330555) (not d!1505310) (not b!4724741) (not b!4725418) (not d!1504972) (not bm!330589) (not b!4724836) (not b!4725114) (not b!4724644) (not d!1505376) (not b!4725232) (not b_lambda!179249) (not b!4725209) (not b_lambda!179207) (not bs!1117350) (not b!4724489) (not b!4724719) (not b!4725290) (not bm!330547) (not b!4724510) (not b!4724971) (not b!4724543) (not d!1504878) (not b!4725226) (not b!4725412) (not b!4724975) (not b!4725228) (not b!4725446) (not b_lambda!179441) (not b!4725245) (not d!1505010) (not b!4725292) (not b_lambda!179355) (not b_lambda!179453) (not b!4725335) (not b!4725315) (not bm!330574) (not bm!330548) (not bs!1117414) (not bm!330575) (not b!4725236) (not b!4725019) (not b!4725124) (not b!4725126) (not b!4725411) (not bs!1117413) (not b!4725415) (not d!1505408) (not b!4725021) (not bm!330577) (not b!4724537) (not b!4725384) (not b!4725275) (not bm!330510) (not d!1505054) (not b!4725444) (not b!4725359) (not b!4725249) (not b!4725347) (not b!4725039) (not b!4724511) (not b_lambda!179445) (not b!4724522) (not b_lambda!179423) (not d!1505124) (not b!4725360) (not b_lambda!179479) (not d!1505118) (not b_lambda!179507) (not b!4725358) (not b!4725212) (not b!4725242) (not b!4724506) (not b_lambda!179277) (not bs!1117378) (not d!1504840) (not bm!330507) (not b_lambda!179437) (not d!1505004) (not b!4725205) (not b_lambda!179449) (not b!4725024) (not b!4724587) (not bs!1117401) (not b!4724592) (not b!4725238) (not b!4724842) (not b!4724976) (not b!4725301) (not bs!1117392) (not b!4724952) (not b!4724559) (not bs!1117406) (not b!4724584) (not b!4724765) (not b!4724655) (not bs!1117367) (not d!1504864) (not bm!330590) (not b_lambda!179493) (not b!4724526) (not d!1505036) (not b!4725422) (not b!4724536) (not b!4725206) (not bm!330609) (not b_lambda!179439) (not b!4724909) (not bm!330556) (not d!1505270) (not bm!330527) (not d!1505096) (not bs!1117373) (not b!4724552) (not d!1505258) (not d!1505354) (not b!4725331) (not bs!1117387) (not d!1504932) (not bs!1117410) (not d!1505024) (not b!4724589) (not b_lambda!179505) (not b!4724715) (not b!4725119) (not b!4725450) (not b!4724632) (not bm!330576) (not b!4724548) (not b_lambda!179489) (not b!4724590) (not bs!1117358) (not b!4725298) (not b!4724753) (not b!4724648) (not d!1505138) (not d!1505402) (not bm!330520) (not b!4725453) (not b!4725020) (not b_lambda!179499) (not b!4725248) (not b_lambda!179483) (not bs!1117396) (not b!4724546) (not b!4725230) (not d!1505114) (not b!4725246) (not b!4724829) (not bs!1117385) (not b!4724659) (not b!4724949) (not b_lambda!179501) (not b!4725207) (not b!4725240) (not b!4724550) (not b_lambda!179491) (not bm!330588) (not b_lambda!179451) (not b_lambda!179205) (not b!4725296) (not bm!330516) (not b!4724555) (not bm!330612) (not b!4724762) (not b_lambda!179271) (not b_lambda!179443) (not b!4724767) (not b!4725314) (not b!4725385) (not b!4725421) (not bs!1117377) (not b!4724629) tp_is_empty!31357 (not b!4724490) (not b!4724755) (not bs!1117366) (not b!4725033) (not b_lambda!179459) (not bm!330611) (not bm!330528) (not b!4724500) (not b!4725026) (not b!4725219) (not b!4725018) (not bs!1117397) (not b_lambda!179429) (not b!4725107) (not b!4725436) (not bs!1117412) (not b!4724835) (not b!4724512) (not d!1505290) (not b!4724468) (not d!1505304) (not b!4724984) (not b!4725244) (not bs!1117380) (not b_lambda!179511) (not b!4725028) (not b!4724766) (not b!4725017) (not d!1505122) (not b_lambda!179303) (not b!4725416) (not bm!330610) (not b!4724557) (not b!4724983) (not b!4725294) (not d!1505356) (not b!4725297) (not b!4725279) (not d!1504912) (not bs!1117381) (not b!4725345) (not bs!1117360) (not b!4724790) (not b!4725353) (not d!1505008) (not d!1505252) (not d!1505256) (not b!4725414) (not b!4724650) (not b!4725277) (not d!1504872) (not d!1504882) (not bm!330514) (not bs!1117357) (not b_lambda!179473) (not d!1505324) (not d!1505092) (not b!4725332) (not b!4724970) (not b!4724964) (not b_lambda!179515) (not b!4724488) (not b_lambda!179431) (not b_lambda!179427) (not b!4725402) (not bs!1117405) (not b!4725299) (not bm!330569) (not b!4724730) (not d!1505090) (not d!1505346) (not b_lambda!179475) (not b!4725247) (not b!4725424) (not b!4725032) (not b!4724502) (not d!1504982) (not bm!330595) (not d!1505206) (not b!4724736) (not b!4725276) (not b!4724962) (not b!4725036) (not b_lambda!179455) (not b!4724556) (not b!4725022) (not bs!1117371) (not b_lambda!179229) (not b!4724538) (not bm!330521) (not b!4725381) (not d!1504922) (not d!1504998) (not b!4725371) (not b_lambda!179497) (not b!4724501) (not b!4725407) (not b!4725116) (not b!4725272) (not b!4724910) (not d!1504854) (not b!4725330) (not b!4724591) (not b!4725038) (not b!4725237) (not b!4725216) (not b_lambda!179503) (not bs!1117399) (not bm!330568) (not b!4725210) (not bm!330534) (not bm!330522) (not b!4724773) (not d!1504890) (not d!1505126) (not bm!330601) (not bs!1117348) (not b!4724757) (not b_lambda!179509) (not b!4724703) (not b!4725120) (not b!4725208) (not b_lambda!179433) (not b!4725030) (not b!4725224) (not b!4724986) (not b!4724656) (not b!4725271) (not b!4725251) (not b!4724503) (not b!4725400) (not b!4724988) (not b!4724529) (not bs!1117372) (not b!4724841) (not bm!330509) (not d!1504918) (not b!4724527) (not b!4724985) (not b!4724514) (not b_lambda!179357) (not bs!1117407) (not bs!1117408) (not b!4725037) (not b!4724657) (not b!4724791) (not bm!330526) (not b!4725118) (not d!1505032) (not b!4724974) (not d!1504946) (not b!4724769) (not b!4724713) (not bm!330517) (not b!4725136) (not b!4724695) (not b_lambda!179513) (not d!1505368) (not b!4724636) (not b!4725128) (not bm!330508) (not b!4724906) (not d!1505120) (not b!4725041) (not d!1505000) (not b!4724539) (not bs!1117394) (not d!1505380) (not bs!1117390) (not b!4724840) (not bm!330566) (not d!1504862) (not d!1505026) (not b!4725420) (not b!4724763) (not b!4725438) (not d!1505182) (not b!4725134) (not b!4724978) (not b!4725410) (not b_lambda!179457) (not b!4724721) (not b_lambda!179481) (not bm!330599) (not b!4724727) tp_is_empty!31359 (not b!4724739) (not b!4725273) (not b!4725455) (not b!4724754) (not b!4725354) (not b!4724972) (not b!4725129) (not b!4725403) (not b!4725234) (not b_lambda!179447) (not d!1504874) (not b!4725274) (not b!4724504) (not d!1505382) (not b!4724705) (not d!1504892) (not d!1505306) (not b_lambda!179485) (not b!4725413) (not b!4724973) (not b!4724982) (not d!1505322) (not b!4724907) (not b!4724554) (not b!4724540) (not b_lambda!179471) (not b_lambda!179461) (not bm!330567))
(check-sat)
