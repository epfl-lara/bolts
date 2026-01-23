; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!448304 () Bool)

(assert start!448304)

(declare-fun bs!859996 () Bool)

(declare-fun b!4524756 () Bool)

(assert (= bs!859996 (and b!4524756 start!448304)))

(declare-fun lambda!173266 () Int)

(declare-fun lambda!173265 () Int)

(assert (=> bs!859996 (not (= lambda!173266 lambda!173265))))

(assert (=> b!4524756 true))

(assert (=> b!4524756 true))

(assert (=> b!4524756 true))

(declare-fun b!4524743 () Bool)

(declare-fun res!1883738 () Bool)

(declare-fun e!2819160 () Bool)

(assert (=> b!4524743 (=> res!1883738 e!2819160)))

(declare-datatypes ((K!12065 0))(
  ( (K!12066 (val!17923 Int)) )
))
(declare-datatypes ((V!12311 0))(
  ( (V!12312 (val!17924 Int)) )
))
(declare-datatypes ((tuple2!51114 0))(
  ( (tuple2!51115 (_1!28851 K!12065) (_2!28851 V!12311)) )
))
(declare-datatypes ((List!50798 0))(
  ( (Nil!50674) (Cons!50674 (h!56535 tuple2!51114) (t!357760 List!50798)) )
))
(declare-fun newBucket!178 () List!50798)

(declare-fun noDuplicateKeys!1170 (List!50798) Bool)

(assert (=> b!4524743 (= res!1883738 (not (noDuplicateKeys!1170 newBucket!178)))))

(declare-fun b!4524744 () Bool)

(declare-fun e!2819159 () Bool)

(declare-fun e!2819165 () Bool)

(assert (=> b!4524744 (= e!2819159 e!2819165)))

(declare-fun res!1883741 () Bool)

(assert (=> b!4524744 (=> res!1883741 e!2819165)))

(declare-datatypes ((ListMap!3609 0))(
  ( (ListMap!3610 (toList!4347 List!50798)) )
))
(declare-fun lt!1701241 () ListMap!3609)

(declare-fun lt!1701257 () ListMap!3609)

(declare-fun eq!627 (ListMap!3609 ListMap!3609) Bool)

(assert (=> b!4524744 (= res!1883741 (not (eq!627 lt!1701241 lt!1701257)))))

(declare-datatypes ((tuple2!51116 0))(
  ( (tuple2!51117 (_1!28852 (_ BitVec 64)) (_2!28852 List!50798)) )
))
(declare-datatypes ((List!50799 0))(
  ( (Nil!50675) (Cons!50675 (h!56536 tuple2!51116) (t!357761 List!50799)) )
))
(declare-datatypes ((ListLongMap!2979 0))(
  ( (ListLongMap!2980 (toList!4348 List!50799)) )
))
(declare-fun lt!1701251 () ListLongMap!2979)

(declare-fun lt!1701242 () tuple2!51116)

(declare-fun extractMap!1226 (List!50799) ListMap!3609)

(declare-fun +!1556 (ListLongMap!2979 tuple2!51116) ListLongMap!2979)

(assert (=> b!4524744 (= lt!1701241 (extractMap!1226 (toList!4348 (+!1556 lt!1701251 lt!1701242))))))

(declare-fun lm!1477 () ListLongMap!2979)

(declare-fun head!9430 (ListLongMap!2979) tuple2!51116)

(assert (=> b!4524744 (= lt!1701242 (head!9430 lm!1477))))

(declare-fun lt!1701256 () ListMap!3609)

(declare-fun lt!1701249 () ListMap!3609)

(assert (=> b!4524744 (eq!627 lt!1701256 lt!1701249)))

(declare-fun lt!1701248 () ListMap!3609)

(declare-fun key!3287 () K!12065)

(declare-fun -!396 (ListMap!3609 K!12065) ListMap!3609)

(assert (=> b!4524744 (= lt!1701249 (-!396 lt!1701248 key!3287))))

(declare-fun lt!1701246 () ListLongMap!2979)

(assert (=> b!4524744 (= lt!1701256 (extractMap!1226 (toList!4348 lt!1701246)))))

(declare-fun lt!1701243 () tuple2!51116)

(assert (=> b!4524744 (= lt!1701246 (+!1556 lt!1701251 lt!1701243))))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4524744 (= lt!1701243 (tuple2!51117 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5565 0))(
  ( (HashableExt!5564 (__x!31268 Int)) )
))
(declare-fun hashF!1107 () Hashable!5565)

(declare-datatypes ((Unit!95830 0))(
  ( (Unit!95831) )
))
(declare-fun lt!1701250 () Unit!95830)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!155 (ListLongMap!2979 (_ BitVec 64) List!50798 K!12065 Hashable!5565) Unit!95830)

(assert (=> b!4524744 (= lt!1701250 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!155 lt!1701251 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4524745 () Bool)

(declare-fun e!2819164 () Bool)

(assert (=> b!4524745 (= e!2819160 e!2819164)))

(declare-fun res!1883750 () Bool)

(assert (=> b!4524745 (=> res!1883750 e!2819164)))

(declare-fun contains!13417 (ListLongMap!2979 (_ BitVec 64)) Bool)

(assert (=> b!4524745 (= res!1883750 (not (contains!13417 lt!1701251 hash!344)))))

(declare-fun tail!7752 (ListLongMap!2979) ListLongMap!2979)

(assert (=> b!4524745 (= lt!1701251 (tail!7752 lm!1477))))

(declare-fun b!4524746 () Bool)

(declare-fun e!2819166 () Bool)

(declare-fun e!2819175 () Bool)

(assert (=> b!4524746 (= e!2819166 e!2819175)))

(declare-fun res!1883734 () Bool)

(assert (=> b!4524746 (=> (not res!1883734) (not e!2819175))))

(declare-fun lt!1701244 () (_ BitVec 64))

(assert (=> b!4524746 (= res!1883734 (= lt!1701244 hash!344))))

(declare-fun hash!2837 (Hashable!5565 K!12065) (_ BitVec 64))

(assert (=> b!4524746 (= lt!1701244 (hash!2837 hashF!1107 key!3287))))

(declare-fun b!4524747 () Bool)

(declare-fun e!2819171 () Unit!95830)

(declare-fun Unit!95832 () Unit!95830)

(assert (=> b!4524747 (= e!2819171 Unit!95832)))

(declare-fun res!1883746 () Bool)

(declare-fun e!2819167 () Bool)

(assert (=> start!448304 (=> (not res!1883746) (not e!2819167))))

(declare-fun forall!10285 (List!50799 Int) Bool)

(assert (=> start!448304 (= res!1883746 (forall!10285 (toList!4348 lm!1477) lambda!173265))))

(assert (=> start!448304 e!2819167))

(assert (=> start!448304 true))

(declare-fun e!2819163 () Bool)

(declare-fun inv!66249 (ListLongMap!2979) Bool)

(assert (=> start!448304 (and (inv!66249 lm!1477) e!2819163)))

(declare-fun tp_is_empty!27957 () Bool)

(assert (=> start!448304 tp_is_empty!27957))

(declare-fun e!2819168 () Bool)

(assert (=> start!448304 e!2819168))

(declare-fun b!4524748 () Bool)

(declare-fun res!1883739 () Bool)

(assert (=> b!4524748 (=> (not res!1883739) (not e!2819175))))

(declare-fun allKeysSameHash!1024 (List!50798 (_ BitVec 64) Hashable!5565) Bool)

(assert (=> b!4524748 (= res!1883739 (allKeysSameHash!1024 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4524749 () Bool)

(declare-fun res!1883745 () Bool)

(declare-fun e!2819169 () Bool)

(assert (=> b!4524749 (=> res!1883745 e!2819169)))

(declare-fun lt!1701255 () ListLongMap!2979)

(assert (=> b!4524749 (= res!1883745 (not (= (head!9430 lt!1701255) lt!1701242)))))

(declare-fun b!4524750 () Bool)

(declare-fun e!2819172 () Bool)

(assert (=> b!4524750 (= e!2819164 e!2819172)))

(declare-fun res!1883752 () Bool)

(assert (=> b!4524750 (=> res!1883752 e!2819172)))

(declare-fun lt!1701259 () Bool)

(assert (=> b!4524750 (= res!1883752 lt!1701259)))

(declare-fun lt!1701253 () Unit!95830)

(declare-fun e!2819161 () Unit!95830)

(assert (=> b!4524750 (= lt!1701253 e!2819161)))

(declare-fun c!772328 () Bool)

(assert (=> b!4524750 (= c!772328 lt!1701259)))

(declare-fun lt!1701236 () List!50798)

(declare-fun containsKey!1806 (List!50798 K!12065) Bool)

(assert (=> b!4524750 (= lt!1701259 (not (containsKey!1806 lt!1701236 key!3287)))))

(declare-fun b!4524751 () Bool)

(declare-fun tp_is_empty!27959 () Bool)

(declare-fun tp!1338229 () Bool)

(assert (=> b!4524751 (= e!2819168 (and tp_is_empty!27957 tp_is_empty!27959 tp!1338229))))

(declare-fun b!4524752 () Bool)

(declare-fun e!2819174 () Bool)

(declare-fun e!2819170 () Bool)

(assert (=> b!4524752 (= e!2819174 e!2819170)))

(declare-fun res!1883737 () Bool)

(assert (=> b!4524752 (=> res!1883737 e!2819170)))

(assert (=> b!4524752 (= res!1883737 (not (noDuplicateKeys!1170 (_2!28852 lt!1701242))))))

(declare-fun lt!1701239 () Unit!95830)

(declare-fun forallContained!2538 (List!50799 Int tuple2!51116) Unit!95830)

(assert (=> b!4524752 (= lt!1701239 (forallContained!2538 (toList!4348 lm!1477) lambda!173265 (h!56536 (toList!4348 lm!1477))))))

(declare-fun b!4524753 () Bool)

(declare-fun e!2819162 () Bool)

(assert (=> b!4524753 (= e!2819162 e!2819159)))

(declare-fun res!1883751 () Bool)

(assert (=> b!4524753 (=> res!1883751 e!2819159)))

(declare-fun contains!13418 (ListMap!3609 K!12065) Bool)

(assert (=> b!4524753 (= res!1883751 (not (contains!13418 (extractMap!1226 (t!357761 (toList!4348 lm!1477))) key!3287)))))

(assert (=> b!4524753 (contains!13418 lt!1701248 key!3287)))

(assert (=> b!4524753 (= lt!1701248 (extractMap!1226 (toList!4348 lt!1701251)))))

(declare-fun lt!1701261 () Unit!95830)

(declare-fun lemmaListContainsThenExtractedMapContains!140 (ListLongMap!2979 K!12065 Hashable!5565) Unit!95830)

(assert (=> b!4524753 (= lt!1701261 (lemmaListContainsThenExtractedMapContains!140 lt!1701251 key!3287 hashF!1107))))

(declare-fun b!4524754 () Bool)

(declare-fun isEmpty!28685 (ListLongMap!2979) Bool)

(assert (=> b!4524754 (= e!2819170 (not (isEmpty!28685 lm!1477)))))

(declare-fun lt!1701254 () Unit!95830)

(assert (=> b!4524754 (= lt!1701254 e!2819171)))

(declare-fun c!772329 () Bool)

(assert (=> b!4524754 (= c!772329 (containsKey!1806 (_2!28852 lt!1701242) key!3287))))

(declare-fun b!4524755 () Bool)

(declare-fun e!2819173 () Bool)

(assert (=> b!4524755 (= e!2819173 e!2819174)))

(declare-fun res!1883748 () Bool)

(assert (=> b!4524755 (=> res!1883748 e!2819174)))

(declare-fun lt!1701265 () ListMap!3609)

(declare-fun lt!1701252 () ListMap!3609)

(assert (=> b!4524755 (= res!1883748 (not (eq!627 lt!1701265 lt!1701252)))))

(declare-fun lt!1701266 () ListMap!3609)

(assert (=> b!4524755 (eq!627 lt!1701266 lt!1701252)))

(declare-fun addToMapMapFromBucket!697 (List!50798 ListMap!3609) ListMap!3609)

(assert (=> b!4524755 (= lt!1701252 (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701249))))

(declare-fun lt!1701263 () Unit!95830)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!46 (ListMap!3609 ListMap!3609 List!50798) Unit!95830)

(assert (=> b!4524755 (= lt!1701263 (lemmaAddToMapFromBucketPreservesEquivalence!46 lt!1701256 lt!1701249 (_2!28852 lt!1701242)))))

(declare-fun Unit!95833 () Unit!95830)

(assert (=> b!4524756 (= e!2819171 Unit!95833)))

(assert (=> b!4524756 (not (= hash!344 (_1!28852 lt!1701242)))))

(declare-datatypes ((Option!11133 0))(
  ( (None!11132) (Some!11132 (v!44754 tuple2!51114)) )
))
(declare-fun lt!1701264 () Option!11133)

(declare-fun getPair!186 (List!50798 K!12065) Option!11133)

(assert (=> b!4524756 (= lt!1701264 (getPair!186 (_2!28852 lt!1701242) key!3287))))

(declare-fun lt!1701245 () Unit!95830)

(assert (=> b!4524756 (= lt!1701245 (forallContained!2538 (toList!4348 lm!1477) lambda!173266 (h!56536 (toList!4348 lm!1477))))))

(declare-fun lambda!173267 () Int)

(declare-fun lt!1701262 () Unit!95830)

(declare-fun forallContained!2539 (List!50798 Int tuple2!51114) Unit!95830)

(declare-fun get!16611 (Option!11133) tuple2!51114)

(assert (=> b!4524756 (= lt!1701262 (forallContained!2539 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173267 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))))))

(assert (=> b!4524756 false))

(declare-fun b!4524757 () Bool)

(declare-fun res!1883735 () Bool)

(assert (=> b!4524757 (=> (not res!1883735) (not e!2819167))))

(declare-fun allKeysSameHashInMap!1277 (ListLongMap!2979 Hashable!5565) Bool)

(assert (=> b!4524757 (= res!1883735 (allKeysSameHashInMap!1277 lm!1477 hashF!1107))))

(declare-fun b!4524758 () Bool)

(declare-fun res!1883740 () Bool)

(assert (=> b!4524758 (=> res!1883740 e!2819164)))

(declare-fun apply!11907 (ListLongMap!2979 (_ BitVec 64)) List!50798)

(assert (=> b!4524758 (= res!1883740 (not (= (apply!11907 lt!1701251 hash!344) lt!1701236)))))

(declare-fun b!4524759 () Bool)

(declare-fun Unit!95834 () Unit!95830)

(assert (=> b!4524759 (= e!2819161 Unit!95834)))

(declare-fun lt!1701247 () Unit!95830)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!158 (ListLongMap!2979 K!12065 Hashable!5565) Unit!95830)

(assert (=> b!4524759 (= lt!1701247 (lemmaNotInItsHashBucketThenNotInMap!158 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4524759 false))

(declare-fun b!4524760 () Bool)

(declare-fun res!1883747 () Bool)

(assert (=> b!4524760 (=> res!1883747 e!2819165)))

(assert (=> b!4524760 (= res!1883747 (not (eq!627 lt!1701257 lt!1701241)))))

(declare-fun b!4524761 () Bool)

(declare-fun Unit!95835 () Unit!95830)

(assert (=> b!4524761 (= e!2819161 Unit!95835)))

(declare-fun b!4524762 () Bool)

(declare-fun res!1883753 () Bool)

(assert (=> b!4524762 (=> res!1883753 e!2819164)))

(declare-fun lt!1701258 () tuple2!51116)

(declare-fun contains!13419 (List!50799 tuple2!51116) Bool)

(assert (=> b!4524762 (= res!1883753 (not (contains!13419 (t!357761 (toList!4348 lm!1477)) lt!1701258)))))

(declare-fun b!4524763 () Bool)

(assert (=> b!4524763 (= e!2819172 e!2819162)))

(declare-fun res!1883744 () Bool)

(assert (=> b!4524763 (=> res!1883744 e!2819162)))

(declare-fun containsKeyBiggerList!150 (List!50799 K!12065) Bool)

(assert (=> b!4524763 (= res!1883744 (not (containsKeyBiggerList!150 (t!357761 (toList!4348 lm!1477)) key!3287)))))

(assert (=> b!4524763 (containsKeyBiggerList!150 (toList!4348 lt!1701251) key!3287)))

(declare-fun lt!1701260 () Unit!95830)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!86 (ListLongMap!2979 K!12065 Hashable!5565) Unit!95830)

(assert (=> b!4524763 (= lt!1701260 (lemmaInLongMapThenContainsKeyBiggerList!86 lt!1701251 key!3287 hashF!1107))))

(declare-fun b!4524764 () Bool)

(assert (=> b!4524764 (= e!2819167 e!2819166)))

(declare-fun res!1883742 () Bool)

(assert (=> b!4524764 (=> (not res!1883742) (not e!2819166))))

(assert (=> b!4524764 (= res!1883742 (contains!13418 lt!1701257 key!3287))))

(assert (=> b!4524764 (= lt!1701257 (extractMap!1226 (toList!4348 lm!1477)))))

(declare-fun b!4524765 () Bool)

(declare-fun res!1883736 () Bool)

(assert (=> b!4524765 (=> res!1883736 e!2819160)))

(get-info :version)

(assert (=> b!4524765 (= res!1883736 (or ((_ is Nil!50675) (toList!4348 lm!1477)) (= (_1!28852 (h!56536 (toList!4348 lm!1477))) hash!344)))))

(declare-fun b!4524766 () Bool)

(assert (=> b!4524766 (= e!2819165 e!2819169)))

(declare-fun res!1883749 () Bool)

(assert (=> b!4524766 (=> res!1883749 e!2819169)))

(assert (=> b!4524766 (= res!1883749 (not (= lt!1701255 (+!1556 lm!1477 lt!1701243))))))

(assert (=> b!4524766 (= lt!1701255 (+!1556 lt!1701246 lt!1701242))))

(declare-fun b!4524767 () Bool)

(assert (=> b!4524767 (= e!2819169 e!2819173)))

(declare-fun res!1883733 () Bool)

(assert (=> b!4524767 (=> res!1883733 e!2819173)))

(assert (=> b!4524767 (= res!1883733 (not (eq!627 lt!1701265 lt!1701266)))))

(assert (=> b!4524767 (= lt!1701266 (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701256))))

(assert (=> b!4524767 (= lt!1701265 (extractMap!1226 (toList!4348 lt!1701255)))))

(declare-fun b!4524768 () Bool)

(declare-fun tp!1338228 () Bool)

(assert (=> b!4524768 (= e!2819163 tp!1338228)))

(declare-fun b!4524769 () Bool)

(assert (=> b!4524769 (= e!2819175 (not e!2819160))))

(declare-fun res!1883743 () Bool)

(assert (=> b!4524769 (=> res!1883743 e!2819160)))

(declare-fun removePairForKey!797 (List!50798 K!12065) List!50798)

(assert (=> b!4524769 (= res!1883743 (not (= newBucket!178 (removePairForKey!797 lt!1701236 key!3287))))))

(declare-fun lt!1701238 () Unit!95830)

(assert (=> b!4524769 (= lt!1701238 (forallContained!2538 (toList!4348 lm!1477) lambda!173265 lt!1701258))))

(assert (=> b!4524769 (contains!13419 (toList!4348 lm!1477) lt!1701258)))

(assert (=> b!4524769 (= lt!1701258 (tuple2!51117 hash!344 lt!1701236))))

(declare-fun lt!1701240 () Unit!95830)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!682 (List!50799 (_ BitVec 64) List!50798) Unit!95830)

(assert (=> b!4524769 (= lt!1701240 (lemmaGetValueByKeyImpliesContainsTuple!682 (toList!4348 lm!1477) hash!344 lt!1701236))))

(assert (=> b!4524769 (= lt!1701236 (apply!11907 lm!1477 hash!344))))

(assert (=> b!4524769 (contains!13417 lm!1477 lt!1701244)))

(declare-fun lt!1701237 () Unit!95830)

(declare-fun lemmaInGenMapThenLongMapContainsHash!244 (ListLongMap!2979 K!12065 Hashable!5565) Unit!95830)

(assert (=> b!4524769 (= lt!1701237 (lemmaInGenMapThenLongMapContainsHash!244 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4524770 () Bool)

(declare-fun res!1883754 () Bool)

(assert (=> b!4524770 (=> res!1883754 e!2819165)))

(assert (=> b!4524770 (= res!1883754 (bvsge (_1!28852 lt!1701242) hash!344))))

(assert (= (and start!448304 res!1883746) b!4524757))

(assert (= (and b!4524757 res!1883735) b!4524764))

(assert (= (and b!4524764 res!1883742) b!4524746))

(assert (= (and b!4524746 res!1883734) b!4524748))

(assert (= (and b!4524748 res!1883739) b!4524769))

(assert (= (and b!4524769 (not res!1883743)) b!4524743))

(assert (= (and b!4524743 (not res!1883738)) b!4524765))

(assert (= (and b!4524765 (not res!1883736)) b!4524745))

(assert (= (and b!4524745 (not res!1883750)) b!4524758))

(assert (= (and b!4524758 (not res!1883740)) b!4524762))

(assert (= (and b!4524762 (not res!1883753)) b!4524750))

(assert (= (and b!4524750 c!772328) b!4524759))

(assert (= (and b!4524750 (not c!772328)) b!4524761))

(assert (= (and b!4524750 (not res!1883752)) b!4524763))

(assert (= (and b!4524763 (not res!1883744)) b!4524753))

(assert (= (and b!4524753 (not res!1883751)) b!4524744))

(assert (= (and b!4524744 (not res!1883741)) b!4524760))

(assert (= (and b!4524760 (not res!1883747)) b!4524770))

(assert (= (and b!4524770 (not res!1883754)) b!4524766))

(assert (= (and b!4524766 (not res!1883749)) b!4524749))

(assert (= (and b!4524749 (not res!1883745)) b!4524767))

(assert (= (and b!4524767 (not res!1883733)) b!4524755))

(assert (= (and b!4524755 (not res!1883748)) b!4524752))

(assert (= (and b!4524752 (not res!1883737)) b!4524754))

(assert (= (and b!4524754 c!772329) b!4524756))

(assert (= (and b!4524754 (not c!772329)) b!4524747))

(assert (= start!448304 b!4524768))

(assert (= (and start!448304 ((_ is Cons!50674) newBucket!178)) b!4524751))

(declare-fun m!5276669 () Bool)

(assert (=> b!4524752 m!5276669))

(declare-fun m!5276671 () Bool)

(assert (=> b!4524752 m!5276671))

(declare-fun m!5276673 () Bool)

(assert (=> b!4524746 m!5276673))

(declare-fun m!5276675 () Bool)

(assert (=> b!4524748 m!5276675))

(declare-fun m!5276677 () Bool)

(assert (=> b!4524750 m!5276677))

(declare-fun m!5276679 () Bool)

(assert (=> b!4524744 m!5276679))

(declare-fun m!5276681 () Bool)

(assert (=> b!4524744 m!5276681))

(declare-fun m!5276683 () Bool)

(assert (=> b!4524744 m!5276683))

(declare-fun m!5276685 () Bool)

(assert (=> b!4524744 m!5276685))

(declare-fun m!5276687 () Bool)

(assert (=> b!4524744 m!5276687))

(declare-fun m!5276689 () Bool)

(assert (=> b!4524744 m!5276689))

(declare-fun m!5276691 () Bool)

(assert (=> b!4524744 m!5276691))

(declare-fun m!5276693 () Bool)

(assert (=> b!4524744 m!5276693))

(declare-fun m!5276695 () Bool)

(assert (=> b!4524744 m!5276695))

(declare-fun m!5276697 () Bool)

(assert (=> b!4524769 m!5276697))

(declare-fun m!5276699 () Bool)

(assert (=> b!4524769 m!5276699))

(declare-fun m!5276701 () Bool)

(assert (=> b!4524769 m!5276701))

(declare-fun m!5276703 () Bool)

(assert (=> b!4524769 m!5276703))

(declare-fun m!5276705 () Bool)

(assert (=> b!4524769 m!5276705))

(declare-fun m!5276707 () Bool)

(assert (=> b!4524769 m!5276707))

(declare-fun m!5276709 () Bool)

(assert (=> b!4524769 m!5276709))

(declare-fun m!5276711 () Bool)

(assert (=> b!4524763 m!5276711))

(declare-fun m!5276713 () Bool)

(assert (=> b!4524763 m!5276713))

(declare-fun m!5276715 () Bool)

(assert (=> b!4524763 m!5276715))

(declare-fun m!5276717 () Bool)

(assert (=> start!448304 m!5276717))

(declare-fun m!5276719 () Bool)

(assert (=> start!448304 m!5276719))

(declare-fun m!5276721 () Bool)

(assert (=> b!4524767 m!5276721))

(declare-fun m!5276723 () Bool)

(assert (=> b!4524767 m!5276723))

(declare-fun m!5276725 () Bool)

(assert (=> b!4524767 m!5276725))

(declare-fun m!5276727 () Bool)

(assert (=> b!4524754 m!5276727))

(declare-fun m!5276729 () Bool)

(assert (=> b!4524754 m!5276729))

(declare-fun m!5276731 () Bool)

(assert (=> b!4524759 m!5276731))

(declare-fun m!5276733 () Bool)

(assert (=> b!4524757 m!5276733))

(declare-fun m!5276735 () Bool)

(assert (=> b!4524755 m!5276735))

(declare-fun m!5276737 () Bool)

(assert (=> b!4524755 m!5276737))

(declare-fun m!5276739 () Bool)

(assert (=> b!4524755 m!5276739))

(declare-fun m!5276741 () Bool)

(assert (=> b!4524755 m!5276741))

(declare-fun m!5276743 () Bool)

(assert (=> b!4524756 m!5276743))

(declare-fun m!5276745 () Bool)

(assert (=> b!4524756 m!5276745))

(declare-fun m!5276747 () Bool)

(assert (=> b!4524756 m!5276747))

(declare-fun m!5276749 () Bool)

(assert (=> b!4524756 m!5276749))

(declare-fun m!5276751 () Bool)

(assert (=> b!4524749 m!5276751))

(declare-fun m!5276753 () Bool)

(assert (=> b!4524764 m!5276753))

(declare-fun m!5276755 () Bool)

(assert (=> b!4524764 m!5276755))

(declare-fun m!5276757 () Bool)

(assert (=> b!4524743 m!5276757))

(declare-fun m!5276759 () Bool)

(assert (=> b!4524745 m!5276759))

(declare-fun m!5276761 () Bool)

(assert (=> b!4524745 m!5276761))

(declare-fun m!5276763 () Bool)

(assert (=> b!4524762 m!5276763))

(declare-fun m!5276765 () Bool)

(assert (=> b!4524766 m!5276765))

(declare-fun m!5276767 () Bool)

(assert (=> b!4524766 m!5276767))

(declare-fun m!5276769 () Bool)

(assert (=> b!4524760 m!5276769))

(declare-fun m!5276771 () Bool)

(assert (=> b!4524753 m!5276771))

(declare-fun m!5276773 () Bool)

(assert (=> b!4524753 m!5276773))

(declare-fun m!5276775 () Bool)

(assert (=> b!4524753 m!5276775))

(declare-fun m!5276777 () Bool)

(assert (=> b!4524753 m!5276777))

(assert (=> b!4524753 m!5276775))

(declare-fun m!5276779 () Bool)

(assert (=> b!4524753 m!5276779))

(declare-fun m!5276781 () Bool)

(assert (=> b!4524758 m!5276781))

(check-sat (not b!4524754) (not b!4524763) (not b!4524766) tp_is_empty!27959 tp_is_empty!27957 (not start!448304) (not b!4524753) (not b!4524756) (not b!4524752) (not b!4524749) (not b!4524759) (not b!4524748) (not b!4524745) (not b!4524757) (not b!4524751) (not b!4524760) (not b!4524764) (not b!4524769) (not b!4524750) (not b!4524768) (not b!4524758) (not b!4524767) (not b!4524762) (not b!4524746) (not b!4524743) (not b!4524755) (not b!4524744))
(check-sat)
(get-model)

(declare-fun d!1395031 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8381 (List!50798) (InoxSet tuple2!51114))

(assert (=> d!1395031 (= (eq!627 lt!1701257 lt!1701241) (= (content!8381 (toList!4347 lt!1701257)) (content!8381 (toList!4347 lt!1701241))))))

(declare-fun bs!859999 () Bool)

(assert (= bs!859999 d!1395031))

(declare-fun m!5276789 () Bool)

(assert (=> bs!859999 m!5276789))

(declare-fun m!5276791 () Bool)

(assert (=> bs!859999 m!5276791))

(assert (=> b!4524760 d!1395031))

(declare-fun d!1395033 () Bool)

(declare-fun head!9432 (List!50799) tuple2!51116)

(assert (=> d!1395033 (= (head!9430 lt!1701255) (head!9432 (toList!4348 lt!1701255)))))

(declare-fun bs!860000 () Bool)

(assert (= bs!860000 d!1395033))

(declare-fun m!5276793 () Bool)

(assert (=> bs!860000 m!5276793))

(assert (=> b!4524749 d!1395033))

(declare-fun d!1395035 () Bool)

(declare-fun res!1883759 () Bool)

(declare-fun e!2819180 () Bool)

(assert (=> d!1395035 (=> res!1883759 e!2819180)))

(assert (=> d!1395035 (= res!1883759 ((_ is Nil!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395035 (= (forall!10285 (toList!4348 lm!1477) lambda!173265) e!2819180)))

(declare-fun b!4524781 () Bool)

(declare-fun e!2819181 () Bool)

(assert (=> b!4524781 (= e!2819180 e!2819181)))

(declare-fun res!1883760 () Bool)

(assert (=> b!4524781 (=> (not res!1883760) (not e!2819181))))

(declare-fun dynLambda!21175 (Int tuple2!51116) Bool)

(assert (=> b!4524781 (= res!1883760 (dynLambda!21175 lambda!173265 (h!56536 (toList!4348 lm!1477))))))

(declare-fun b!4524782 () Bool)

(assert (=> b!4524782 (= e!2819181 (forall!10285 (t!357761 (toList!4348 lm!1477)) lambda!173265))))

(assert (= (and d!1395035 (not res!1883759)) b!4524781))

(assert (= (and b!4524781 res!1883760) b!4524782))

(declare-fun b_lambda!155597 () Bool)

(assert (=> (not b_lambda!155597) (not b!4524781)))

(declare-fun m!5276795 () Bool)

(assert (=> b!4524781 m!5276795))

(declare-fun m!5276797 () Bool)

(assert (=> b!4524782 m!5276797))

(assert (=> start!448304 d!1395035))

(declare-fun d!1395037 () Bool)

(declare-fun isStrictlySorted!439 (List!50799) Bool)

(assert (=> d!1395037 (= (inv!66249 lm!1477) (isStrictlySorted!439 (toList!4348 lm!1477)))))

(declare-fun bs!860001 () Bool)

(assert (= bs!860001 d!1395037))

(declare-fun m!5276799 () Bool)

(assert (=> bs!860001 m!5276799))

(assert (=> start!448304 d!1395037))

(declare-fun bs!860002 () Bool)

(declare-fun d!1395039 () Bool)

(assert (= bs!860002 (and d!1395039 start!448304)))

(declare-fun lambda!173270 () Int)

(assert (=> bs!860002 (= lambda!173270 lambda!173265)))

(declare-fun bs!860003 () Bool)

(assert (= bs!860003 (and d!1395039 b!4524756)))

(assert (=> bs!860003 (not (= lambda!173270 lambda!173266))))

(assert (=> d!1395039 (not (contains!13418 (extractMap!1226 (toList!4348 lm!1477)) key!3287))))

(declare-fun lt!1701269 () Unit!95830)

(declare-fun choose!29615 (ListLongMap!2979 K!12065 Hashable!5565) Unit!95830)

(assert (=> d!1395039 (= lt!1701269 (choose!29615 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1395039 (forall!10285 (toList!4348 lm!1477) lambda!173270)))

(assert (=> d!1395039 (= (lemmaNotInItsHashBucketThenNotInMap!158 lm!1477 key!3287 hashF!1107) lt!1701269)))

(declare-fun bs!860004 () Bool)

(assert (= bs!860004 d!1395039))

(assert (=> bs!860004 m!5276755))

(assert (=> bs!860004 m!5276755))

(declare-fun m!5276801 () Bool)

(assert (=> bs!860004 m!5276801))

(declare-fun m!5276803 () Bool)

(assert (=> bs!860004 m!5276803))

(declare-fun m!5276805 () Bool)

(assert (=> bs!860004 m!5276805))

(assert (=> b!4524759 d!1395039))

(declare-fun d!1395041 () Bool)

(declare-fun res!1883765 () Bool)

(declare-fun e!2819188 () Bool)

(assert (=> d!1395041 (=> res!1883765 e!2819188)))

(assert (=> d!1395041 (= res!1883765 (and ((_ is Cons!50674) lt!1701236) (= (_1!28851 (h!56535 lt!1701236)) key!3287)))))

(assert (=> d!1395041 (= (containsKey!1806 lt!1701236 key!3287) e!2819188)))

(declare-fun b!4524791 () Bool)

(declare-fun e!2819189 () Bool)

(assert (=> b!4524791 (= e!2819188 e!2819189)))

(declare-fun res!1883766 () Bool)

(assert (=> b!4524791 (=> (not res!1883766) (not e!2819189))))

(assert (=> b!4524791 (= res!1883766 ((_ is Cons!50674) lt!1701236))))

(declare-fun b!4524792 () Bool)

(assert (=> b!4524792 (= e!2819189 (containsKey!1806 (t!357760 lt!1701236) key!3287))))

(assert (= (and d!1395041 (not res!1883765)) b!4524791))

(assert (= (and b!4524791 res!1883766) b!4524792))

(declare-fun m!5276807 () Bool)

(assert (=> b!4524792 m!5276807))

(assert (=> b!4524750 d!1395041))

(declare-fun d!1395043 () Bool)

(declare-fun res!1883771 () Bool)

(declare-fun e!2819194 () Bool)

(assert (=> d!1395043 (=> res!1883771 e!2819194)))

(assert (=> d!1395043 (= res!1883771 (not ((_ is Cons!50674) (_2!28852 lt!1701242))))))

(assert (=> d!1395043 (= (noDuplicateKeys!1170 (_2!28852 lt!1701242)) e!2819194)))

(declare-fun b!4524797 () Bool)

(declare-fun e!2819195 () Bool)

(assert (=> b!4524797 (= e!2819194 e!2819195)))

(declare-fun res!1883772 () Bool)

(assert (=> b!4524797 (=> (not res!1883772) (not e!2819195))))

(assert (=> b!4524797 (= res!1883772 (not (containsKey!1806 (t!357760 (_2!28852 lt!1701242)) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4524798 () Bool)

(assert (=> b!4524798 (= e!2819195 (noDuplicateKeys!1170 (t!357760 (_2!28852 lt!1701242))))))

(assert (= (and d!1395043 (not res!1883771)) b!4524797))

(assert (= (and b!4524797 res!1883772) b!4524798))

(declare-fun m!5276809 () Bool)

(assert (=> b!4524797 m!5276809))

(declare-fun m!5276811 () Bool)

(assert (=> b!4524798 m!5276811))

(assert (=> b!4524752 d!1395043))

(declare-fun d!1395045 () Bool)

(assert (=> d!1395045 (dynLambda!21175 lambda!173265 (h!56536 (toList!4348 lm!1477)))))

(declare-fun lt!1701314 () Unit!95830)

(declare-fun choose!29616 (List!50799 Int tuple2!51116) Unit!95830)

(assert (=> d!1395045 (= lt!1701314 (choose!29616 (toList!4348 lm!1477) lambda!173265 (h!56536 (toList!4348 lm!1477))))))

(declare-fun e!2819202 () Bool)

(assert (=> d!1395045 e!2819202))

(declare-fun res!1883779 () Bool)

(assert (=> d!1395045 (=> (not res!1883779) (not e!2819202))))

(assert (=> d!1395045 (= res!1883779 (forall!10285 (toList!4348 lm!1477) lambda!173265))))

(assert (=> d!1395045 (= (forallContained!2538 (toList!4348 lm!1477) lambda!173265 (h!56536 (toList!4348 lm!1477))) lt!1701314)))

(declare-fun b!4524803 () Bool)

(assert (=> b!4524803 (= e!2819202 (contains!13419 (toList!4348 lm!1477) (h!56536 (toList!4348 lm!1477))))))

(assert (= (and d!1395045 res!1883779) b!4524803))

(declare-fun b_lambda!155599 () Bool)

(assert (=> (not b_lambda!155599) (not d!1395045)))

(assert (=> d!1395045 m!5276795))

(declare-fun m!5276813 () Bool)

(assert (=> d!1395045 m!5276813))

(assert (=> d!1395045 m!5276717))

(declare-fun m!5276815 () Bool)

(assert (=> b!4524803 m!5276815))

(assert (=> b!4524752 d!1395045))

(declare-fun d!1395047 () Bool)

(declare-fun lt!1701338 () Bool)

(declare-fun content!8382 (List!50799) (InoxSet tuple2!51116))

(assert (=> d!1395047 (= lt!1701338 (select (content!8382 (t!357761 (toList!4348 lm!1477))) lt!1701258))))

(declare-fun e!2819211 () Bool)

(assert (=> d!1395047 (= lt!1701338 e!2819211)))

(declare-fun res!1883790 () Bool)

(assert (=> d!1395047 (=> (not res!1883790) (not e!2819211))))

(assert (=> d!1395047 (= res!1883790 ((_ is Cons!50675) (t!357761 (toList!4348 lm!1477))))))

(assert (=> d!1395047 (= (contains!13419 (t!357761 (toList!4348 lm!1477)) lt!1701258) lt!1701338)))

(declare-fun b!4524819 () Bool)

(declare-fun e!2819210 () Bool)

(assert (=> b!4524819 (= e!2819211 e!2819210)))

(declare-fun res!1883789 () Bool)

(assert (=> b!4524819 (=> res!1883789 e!2819210)))

(assert (=> b!4524819 (= res!1883789 (= (h!56536 (t!357761 (toList!4348 lm!1477))) lt!1701258))))

(declare-fun b!4524820 () Bool)

(assert (=> b!4524820 (= e!2819210 (contains!13419 (t!357761 (t!357761 (toList!4348 lm!1477))) lt!1701258))))

(assert (= (and d!1395047 res!1883790) b!4524819))

(assert (= (and b!4524819 (not res!1883789)) b!4524820))

(declare-fun m!5276817 () Bool)

(assert (=> d!1395047 m!5276817))

(declare-fun m!5276819 () Bool)

(assert (=> d!1395047 m!5276819))

(declare-fun m!5276821 () Bool)

(assert (=> b!4524820 m!5276821))

(assert (=> b!4524762 d!1395047))

(declare-fun b!4524875 () Bool)

(declare-datatypes ((List!50801 0))(
  ( (Nil!50677) (Cons!50677 (h!56540 K!12065) (t!357763 List!50801)) )
))
(declare-fun e!2819254 () List!50801)

(declare-fun getKeysList!472 (List!50798) List!50801)

(assert (=> b!4524875 (= e!2819254 (getKeysList!472 (toList!4347 lt!1701257)))))

(declare-fun b!4524876 () Bool)

(assert (=> b!4524876 false))

(declare-fun lt!1701386 () Unit!95830)

(declare-fun lt!1701384 () Unit!95830)

(assert (=> b!4524876 (= lt!1701386 lt!1701384)))

(declare-fun containsKey!1808 (List!50798 K!12065) Bool)

(assert (=> b!4524876 (containsKey!1808 (toList!4347 lt!1701257) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!471 (List!50798 K!12065) Unit!95830)

(assert (=> b!4524876 (= lt!1701384 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 lt!1701257) key!3287))))

(declare-fun e!2819256 () Unit!95830)

(declare-fun Unit!95859 () Unit!95830)

(assert (=> b!4524876 (= e!2819256 Unit!95859)))

(declare-fun b!4524877 () Bool)

(declare-fun e!2819252 () Bool)

(declare-fun contains!13420 (List!50801 K!12065) Bool)

(declare-fun keys!17612 (ListMap!3609) List!50801)

(assert (=> b!4524877 (= e!2819252 (contains!13420 (keys!17612 lt!1701257) key!3287))))

(declare-fun b!4524878 () Bool)

(declare-fun e!2819253 () Bool)

(assert (=> b!4524878 (= e!2819253 e!2819252)))

(declare-fun res!1883817 () Bool)

(assert (=> b!4524878 (=> (not res!1883817) (not e!2819252))))

(declare-datatypes ((Option!11135 0))(
  ( (None!11134) (Some!11134 (v!44760 V!12311)) )
))
(declare-fun isDefined!8420 (Option!11135) Bool)

(declare-fun getValueByKey!1107 (List!50798 K!12065) Option!11135)

(assert (=> b!4524878 (= res!1883817 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701257) key!3287)))))

(declare-fun b!4524879 () Bool)

(declare-fun Unit!95860 () Unit!95830)

(assert (=> b!4524879 (= e!2819256 Unit!95860)))

(declare-fun b!4524880 () Bool)

(declare-fun e!2819251 () Unit!95830)

(assert (=> b!4524880 (= e!2819251 e!2819256)))

(declare-fun c!772350 () Bool)

(declare-fun call!315315 () Bool)

(assert (=> b!4524880 (= c!772350 call!315315)))

(declare-fun d!1395049 () Bool)

(assert (=> d!1395049 e!2819253))

(declare-fun res!1883816 () Bool)

(assert (=> d!1395049 (=> res!1883816 e!2819253)))

(declare-fun e!2819255 () Bool)

(assert (=> d!1395049 (= res!1883816 e!2819255)))

(declare-fun res!1883815 () Bool)

(assert (=> d!1395049 (=> (not res!1883815) (not e!2819255))))

(declare-fun lt!1701383 () Bool)

(assert (=> d!1395049 (= res!1883815 (not lt!1701383))))

(declare-fun lt!1701385 () Bool)

(assert (=> d!1395049 (= lt!1701383 lt!1701385)))

(declare-fun lt!1701382 () Unit!95830)

(assert (=> d!1395049 (= lt!1701382 e!2819251)))

(declare-fun c!772348 () Bool)

(assert (=> d!1395049 (= c!772348 lt!1701385)))

(assert (=> d!1395049 (= lt!1701385 (containsKey!1808 (toList!4347 lt!1701257) key!3287))))

(assert (=> d!1395049 (= (contains!13418 lt!1701257 key!3287) lt!1701383)))

(declare-fun b!4524881 () Bool)

(declare-fun lt!1701388 () Unit!95830)

(assert (=> b!4524881 (= e!2819251 lt!1701388)))

(declare-fun lt!1701389 () Unit!95830)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (List!50798 K!12065) Unit!95830)

(assert (=> b!4524881 (= lt!1701389 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701257) key!3287))))

(assert (=> b!4524881 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701257) key!3287))))

(declare-fun lt!1701387 () Unit!95830)

(assert (=> b!4524881 (= lt!1701387 lt!1701389)))

(declare-fun lemmaInListThenGetKeysListContains!468 (List!50798 K!12065) Unit!95830)

(assert (=> b!4524881 (= lt!1701388 (lemmaInListThenGetKeysListContains!468 (toList!4347 lt!1701257) key!3287))))

(assert (=> b!4524881 call!315315))

(declare-fun b!4524882 () Bool)

(assert (=> b!4524882 (= e!2819255 (not (contains!13420 (keys!17612 lt!1701257) key!3287)))))

(declare-fun b!4524883 () Bool)

(assert (=> b!4524883 (= e!2819254 (keys!17612 lt!1701257))))

(declare-fun bm!315310 () Bool)

(assert (=> bm!315310 (= call!315315 (contains!13420 e!2819254 key!3287))))

(declare-fun c!772349 () Bool)

(assert (=> bm!315310 (= c!772349 c!772348)))

(assert (= (and d!1395049 c!772348) b!4524881))

(assert (= (and d!1395049 (not c!772348)) b!4524880))

(assert (= (and b!4524880 c!772350) b!4524876))

(assert (= (and b!4524880 (not c!772350)) b!4524879))

(assert (= (or b!4524881 b!4524880) bm!315310))

(assert (= (and bm!315310 c!772349) b!4524875))

(assert (= (and bm!315310 (not c!772349)) b!4524883))

(assert (= (and d!1395049 res!1883815) b!4524882))

(assert (= (and d!1395049 (not res!1883816)) b!4524878))

(assert (= (and b!4524878 res!1883817) b!4524877))

(declare-fun m!5276897 () Bool)

(assert (=> bm!315310 m!5276897))

(declare-fun m!5276899 () Bool)

(assert (=> b!4524878 m!5276899))

(assert (=> b!4524878 m!5276899))

(declare-fun m!5276901 () Bool)

(assert (=> b!4524878 m!5276901))

(declare-fun m!5276903 () Bool)

(assert (=> b!4524875 m!5276903))

(declare-fun m!5276905 () Bool)

(assert (=> b!4524883 m!5276905))

(declare-fun m!5276907 () Bool)

(assert (=> b!4524876 m!5276907))

(declare-fun m!5276909 () Bool)

(assert (=> b!4524876 m!5276909))

(declare-fun m!5276911 () Bool)

(assert (=> b!4524881 m!5276911))

(assert (=> b!4524881 m!5276899))

(assert (=> b!4524881 m!5276899))

(assert (=> b!4524881 m!5276901))

(declare-fun m!5276913 () Bool)

(assert (=> b!4524881 m!5276913))

(assert (=> b!4524877 m!5276905))

(assert (=> b!4524877 m!5276905))

(declare-fun m!5276915 () Bool)

(assert (=> b!4524877 m!5276915))

(assert (=> d!1395049 m!5276907))

(assert (=> b!4524882 m!5276905))

(assert (=> b!4524882 m!5276905))

(assert (=> b!4524882 m!5276915))

(assert (=> b!4524764 d!1395049))

(declare-fun bs!860018 () Bool)

(declare-fun d!1395071 () Bool)

(assert (= bs!860018 (and d!1395071 start!448304)))

(declare-fun lambda!173310 () Int)

(assert (=> bs!860018 (= lambda!173310 lambda!173265)))

(declare-fun bs!860019 () Bool)

(assert (= bs!860019 (and d!1395071 b!4524756)))

(assert (=> bs!860019 (not (= lambda!173310 lambda!173266))))

(declare-fun bs!860021 () Bool)

(assert (= bs!860021 (and d!1395071 d!1395039)))

(assert (=> bs!860021 (= lambda!173310 lambda!173270)))

(declare-fun lt!1701413 () ListMap!3609)

(declare-fun invariantList!1025 (List!50798) Bool)

(assert (=> d!1395071 (invariantList!1025 (toList!4347 lt!1701413))))

(declare-fun e!2819268 () ListMap!3609)

(assert (=> d!1395071 (= lt!1701413 e!2819268)))

(declare-fun c!772355 () Bool)

(assert (=> d!1395071 (= c!772355 ((_ is Cons!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395071 (forall!10285 (toList!4348 lm!1477) lambda!173310)))

(assert (=> d!1395071 (= (extractMap!1226 (toList!4348 lm!1477)) lt!1701413)))

(declare-fun b!4524903 () Bool)

(assert (=> b!4524903 (= e!2819268 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 lm!1477))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))

(declare-fun b!4524904 () Bool)

(assert (=> b!4524904 (= e!2819268 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395071 c!772355) b!4524903))

(assert (= (and d!1395071 (not c!772355)) b!4524904))

(declare-fun m!5276955 () Bool)

(assert (=> d!1395071 m!5276955))

(declare-fun m!5276959 () Bool)

(assert (=> d!1395071 m!5276959))

(assert (=> b!4524903 m!5276775))

(assert (=> b!4524903 m!5276775))

(declare-fun m!5276961 () Bool)

(assert (=> b!4524903 m!5276961))

(assert (=> b!4524764 d!1395071))

(declare-fun b!4524907 () Bool)

(declare-fun e!2819273 () List!50801)

(assert (=> b!4524907 (= e!2819273 (getKeysList!472 (toList!4347 lt!1701248)))))

(declare-fun b!4524908 () Bool)

(assert (=> b!4524908 false))

(declare-fun lt!1701419 () Unit!95830)

(declare-fun lt!1701417 () Unit!95830)

(assert (=> b!4524908 (= lt!1701419 lt!1701417)))

(assert (=> b!4524908 (containsKey!1808 (toList!4347 lt!1701248) key!3287)))

(assert (=> b!4524908 (= lt!1701417 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 lt!1701248) key!3287))))

(declare-fun e!2819275 () Unit!95830)

(declare-fun Unit!95862 () Unit!95830)

(assert (=> b!4524908 (= e!2819275 Unit!95862)))

(declare-fun b!4524909 () Bool)

(declare-fun e!2819271 () Bool)

(assert (=> b!4524909 (= e!2819271 (contains!13420 (keys!17612 lt!1701248) key!3287))))

(declare-fun b!4524910 () Bool)

(declare-fun e!2819272 () Bool)

(assert (=> b!4524910 (= e!2819272 e!2819271)))

(declare-fun res!1883831 () Bool)

(assert (=> b!4524910 (=> (not res!1883831) (not e!2819271))))

(assert (=> b!4524910 (= res!1883831 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287)))))

(declare-fun b!4524911 () Bool)

(declare-fun Unit!95863 () Unit!95830)

(assert (=> b!4524911 (= e!2819275 Unit!95863)))

(declare-fun b!4524912 () Bool)

(declare-fun e!2819270 () Unit!95830)

(assert (=> b!4524912 (= e!2819270 e!2819275)))

(declare-fun c!772359 () Bool)

(declare-fun call!315316 () Bool)

(assert (=> b!4524912 (= c!772359 call!315316)))

(declare-fun d!1395083 () Bool)

(assert (=> d!1395083 e!2819272))

(declare-fun res!1883830 () Bool)

(assert (=> d!1395083 (=> res!1883830 e!2819272)))

(declare-fun e!2819274 () Bool)

(assert (=> d!1395083 (= res!1883830 e!2819274)))

(declare-fun res!1883829 () Bool)

(assert (=> d!1395083 (=> (not res!1883829) (not e!2819274))))

(declare-fun lt!1701416 () Bool)

(assert (=> d!1395083 (= res!1883829 (not lt!1701416))))

(declare-fun lt!1701418 () Bool)

(assert (=> d!1395083 (= lt!1701416 lt!1701418)))

(declare-fun lt!1701415 () Unit!95830)

(assert (=> d!1395083 (= lt!1701415 e!2819270)))

(declare-fun c!772357 () Bool)

(assert (=> d!1395083 (= c!772357 lt!1701418)))

(assert (=> d!1395083 (= lt!1701418 (containsKey!1808 (toList!4347 lt!1701248) key!3287))))

(assert (=> d!1395083 (= (contains!13418 lt!1701248 key!3287) lt!1701416)))

(declare-fun b!4524913 () Bool)

(declare-fun lt!1701421 () Unit!95830)

(assert (=> b!4524913 (= e!2819270 lt!1701421)))

(declare-fun lt!1701422 () Unit!95830)

(assert (=> b!4524913 (= lt!1701422 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701248) key!3287))))

(assert (=> b!4524913 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287))))

(declare-fun lt!1701420 () Unit!95830)

(assert (=> b!4524913 (= lt!1701420 lt!1701422)))

(assert (=> b!4524913 (= lt!1701421 (lemmaInListThenGetKeysListContains!468 (toList!4347 lt!1701248) key!3287))))

(assert (=> b!4524913 call!315316))

(declare-fun b!4524914 () Bool)

(assert (=> b!4524914 (= e!2819274 (not (contains!13420 (keys!17612 lt!1701248) key!3287)))))

(declare-fun b!4524915 () Bool)

(assert (=> b!4524915 (= e!2819273 (keys!17612 lt!1701248))))

(declare-fun bm!315311 () Bool)

(assert (=> bm!315311 (= call!315316 (contains!13420 e!2819273 key!3287))))

(declare-fun c!772358 () Bool)

(assert (=> bm!315311 (= c!772358 c!772357)))

(assert (= (and d!1395083 c!772357) b!4524913))

(assert (= (and d!1395083 (not c!772357)) b!4524912))

(assert (= (and b!4524912 c!772359) b!4524908))

(assert (= (and b!4524912 (not c!772359)) b!4524911))

(assert (= (or b!4524913 b!4524912) bm!315311))

(assert (= (and bm!315311 c!772358) b!4524907))

(assert (= (and bm!315311 (not c!772358)) b!4524915))

(assert (= (and d!1395083 res!1883829) b!4524914))

(assert (= (and d!1395083 (not res!1883830)) b!4524910))

(assert (= (and b!4524910 res!1883831) b!4524909))

(declare-fun m!5276963 () Bool)

(assert (=> bm!315311 m!5276963))

(declare-fun m!5276965 () Bool)

(assert (=> b!4524910 m!5276965))

(assert (=> b!4524910 m!5276965))

(declare-fun m!5276967 () Bool)

(assert (=> b!4524910 m!5276967))

(declare-fun m!5276969 () Bool)

(assert (=> b!4524907 m!5276969))

(declare-fun m!5276971 () Bool)

(assert (=> b!4524915 m!5276971))

(declare-fun m!5276973 () Bool)

(assert (=> b!4524908 m!5276973))

(declare-fun m!5276975 () Bool)

(assert (=> b!4524908 m!5276975))

(declare-fun m!5276977 () Bool)

(assert (=> b!4524913 m!5276977))

(assert (=> b!4524913 m!5276965))

(assert (=> b!4524913 m!5276965))

(assert (=> b!4524913 m!5276967))

(declare-fun m!5276979 () Bool)

(assert (=> b!4524913 m!5276979))

(assert (=> b!4524909 m!5276971))

(assert (=> b!4524909 m!5276971))

(declare-fun m!5276981 () Bool)

(assert (=> b!4524909 m!5276981))

(assert (=> d!1395083 m!5276973))

(assert (=> b!4524914 m!5276971))

(assert (=> b!4524914 m!5276971))

(assert (=> b!4524914 m!5276981))

(assert (=> b!4524753 d!1395083))

(declare-fun b!4524916 () Bool)

(declare-fun e!2819279 () List!50801)

(assert (=> b!4524916 (= e!2819279 (getKeysList!472 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))

(declare-fun b!4524917 () Bool)

(assert (=> b!4524917 false))

(declare-fun lt!1701427 () Unit!95830)

(declare-fun lt!1701425 () Unit!95830)

(assert (=> b!4524917 (= lt!1701427 lt!1701425)))

(assert (=> b!4524917 (containsKey!1808 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287)))

(assert (=> b!4524917 (= lt!1701425 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(declare-fun e!2819281 () Unit!95830)

(declare-fun Unit!95865 () Unit!95830)

(assert (=> b!4524917 (= e!2819281 Unit!95865)))

(declare-fun b!4524918 () Bool)

(declare-fun e!2819277 () Bool)

(assert (=> b!4524918 (= e!2819277 (contains!13420 (keys!17612 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(declare-fun b!4524919 () Bool)

(declare-fun e!2819278 () Bool)

(assert (=> b!4524919 (= e!2819278 e!2819277)))

(declare-fun res!1883834 () Bool)

(assert (=> b!4524919 (=> (not res!1883834) (not e!2819277))))

(assert (=> b!4524919 (= res!1883834 (isDefined!8420 (getValueByKey!1107 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287)))))

(declare-fun b!4524920 () Bool)

(declare-fun Unit!95866 () Unit!95830)

(assert (=> b!4524920 (= e!2819281 Unit!95866)))

(declare-fun b!4524921 () Bool)

(declare-fun e!2819276 () Unit!95830)

(assert (=> b!4524921 (= e!2819276 e!2819281)))

(declare-fun c!772362 () Bool)

(declare-fun call!315317 () Bool)

(assert (=> b!4524921 (= c!772362 call!315317)))

(declare-fun d!1395085 () Bool)

(assert (=> d!1395085 e!2819278))

(declare-fun res!1883833 () Bool)

(assert (=> d!1395085 (=> res!1883833 e!2819278)))

(declare-fun e!2819280 () Bool)

(assert (=> d!1395085 (= res!1883833 e!2819280)))

(declare-fun res!1883832 () Bool)

(assert (=> d!1395085 (=> (not res!1883832) (not e!2819280))))

(declare-fun lt!1701424 () Bool)

(assert (=> d!1395085 (= res!1883832 (not lt!1701424))))

(declare-fun lt!1701426 () Bool)

(assert (=> d!1395085 (= lt!1701424 lt!1701426)))

(declare-fun lt!1701423 () Unit!95830)

(assert (=> d!1395085 (= lt!1701423 e!2819276)))

(declare-fun c!772360 () Bool)

(assert (=> d!1395085 (= c!772360 lt!1701426)))

(assert (=> d!1395085 (= lt!1701426 (containsKey!1808 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(assert (=> d!1395085 (= (contains!13418 (extractMap!1226 (t!357761 (toList!4348 lm!1477))) key!3287) lt!1701424)))

(declare-fun b!4524922 () Bool)

(declare-fun lt!1701429 () Unit!95830)

(assert (=> b!4524922 (= e!2819276 lt!1701429)))

(declare-fun lt!1701430 () Unit!95830)

(assert (=> b!4524922 (= lt!1701430 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(assert (=> b!4524922 (isDefined!8420 (getValueByKey!1107 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(declare-fun lt!1701428 () Unit!95830)

(assert (=> b!4524922 (= lt!1701428 lt!1701430)))

(assert (=> b!4524922 (= lt!1701429 (lemmaInListThenGetKeysListContains!468 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(assert (=> b!4524922 call!315317))

(declare-fun b!4524923 () Bool)

(assert (=> b!4524923 (= e!2819280 (not (contains!13420 (keys!17612 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287)))))

(declare-fun b!4524924 () Bool)

(assert (=> b!4524924 (= e!2819279 (keys!17612 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))

(declare-fun bm!315312 () Bool)

(assert (=> bm!315312 (= call!315317 (contains!13420 e!2819279 key!3287))))

(declare-fun c!772361 () Bool)

(assert (=> bm!315312 (= c!772361 c!772360)))

(assert (= (and d!1395085 c!772360) b!4524922))

(assert (= (and d!1395085 (not c!772360)) b!4524921))

(assert (= (and b!4524921 c!772362) b!4524917))

(assert (= (and b!4524921 (not c!772362)) b!4524920))

(assert (= (or b!4524922 b!4524921) bm!315312))

(assert (= (and bm!315312 c!772361) b!4524916))

(assert (= (and bm!315312 (not c!772361)) b!4524924))

(assert (= (and d!1395085 res!1883832) b!4524923))

(assert (= (and d!1395085 (not res!1883833)) b!4524919))

(assert (= (and b!4524919 res!1883834) b!4524918))

(declare-fun m!5276983 () Bool)

(assert (=> bm!315312 m!5276983))

(declare-fun m!5276985 () Bool)

(assert (=> b!4524919 m!5276985))

(assert (=> b!4524919 m!5276985))

(declare-fun m!5276987 () Bool)

(assert (=> b!4524919 m!5276987))

(declare-fun m!5276989 () Bool)

(assert (=> b!4524916 m!5276989))

(assert (=> b!4524924 m!5276775))

(declare-fun m!5276991 () Bool)

(assert (=> b!4524924 m!5276991))

(declare-fun m!5276993 () Bool)

(assert (=> b!4524917 m!5276993))

(declare-fun m!5276995 () Bool)

(assert (=> b!4524917 m!5276995))

(declare-fun m!5276997 () Bool)

(assert (=> b!4524922 m!5276997))

(assert (=> b!4524922 m!5276985))

(assert (=> b!4524922 m!5276985))

(assert (=> b!4524922 m!5276987))

(declare-fun m!5276999 () Bool)

(assert (=> b!4524922 m!5276999))

(assert (=> b!4524918 m!5276775))

(assert (=> b!4524918 m!5276991))

(assert (=> b!4524918 m!5276991))

(declare-fun m!5277001 () Bool)

(assert (=> b!4524918 m!5277001))

(assert (=> d!1395085 m!5276993))

(assert (=> b!4524923 m!5276775))

(assert (=> b!4524923 m!5276991))

(assert (=> b!4524923 m!5276991))

(assert (=> b!4524923 m!5277001))

(assert (=> b!4524753 d!1395085))

(declare-fun bs!860024 () Bool)

(declare-fun d!1395087 () Bool)

(assert (= bs!860024 (and d!1395087 start!448304)))

(declare-fun lambda!173312 () Int)

(assert (=> bs!860024 (= lambda!173312 lambda!173265)))

(declare-fun bs!860025 () Bool)

(assert (= bs!860025 (and d!1395087 b!4524756)))

(assert (=> bs!860025 (not (= lambda!173312 lambda!173266))))

(declare-fun bs!860026 () Bool)

(assert (= bs!860026 (and d!1395087 d!1395039)))

(assert (=> bs!860026 (= lambda!173312 lambda!173270)))

(declare-fun bs!860027 () Bool)

(assert (= bs!860027 (and d!1395087 d!1395071)))

(assert (=> bs!860027 (= lambda!173312 lambda!173310)))

(declare-fun lt!1701431 () ListMap!3609)

(assert (=> d!1395087 (invariantList!1025 (toList!4347 lt!1701431))))

(declare-fun e!2819282 () ListMap!3609)

(assert (=> d!1395087 (= lt!1701431 e!2819282)))

(declare-fun c!772363 () Bool)

(assert (=> d!1395087 (= c!772363 ((_ is Cons!50675) (t!357761 (toList!4348 lm!1477))))))

(assert (=> d!1395087 (forall!10285 (t!357761 (toList!4348 lm!1477)) lambda!173312)))

(assert (=> d!1395087 (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701431)))

(declare-fun b!4524925 () Bool)

(assert (=> b!4524925 (= e!2819282 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))))))

(declare-fun b!4524926 () Bool)

(assert (=> b!4524926 (= e!2819282 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395087 c!772363) b!4524925))

(assert (= (and d!1395087 (not c!772363)) b!4524926))

(declare-fun m!5277003 () Bool)

(assert (=> d!1395087 m!5277003))

(declare-fun m!5277005 () Bool)

(assert (=> d!1395087 m!5277005))

(declare-fun m!5277007 () Bool)

(assert (=> b!4524925 m!5277007))

(assert (=> b!4524925 m!5277007))

(declare-fun m!5277009 () Bool)

(assert (=> b!4524925 m!5277009))

(assert (=> b!4524753 d!1395087))

(declare-fun bs!860032 () Bool)

(declare-fun d!1395089 () Bool)

(assert (= bs!860032 (and d!1395089 b!4524756)))

(declare-fun lambda!173318 () Int)

(assert (=> bs!860032 (not (= lambda!173318 lambda!173266))))

(declare-fun bs!860035 () Bool)

(assert (= bs!860035 (and d!1395089 start!448304)))

(assert (=> bs!860035 (= lambda!173318 lambda!173265)))

(declare-fun bs!860036 () Bool)

(assert (= bs!860036 (and d!1395089 d!1395087)))

(assert (=> bs!860036 (= lambda!173318 lambda!173312)))

(declare-fun bs!860037 () Bool)

(assert (= bs!860037 (and d!1395089 d!1395071)))

(assert (=> bs!860037 (= lambda!173318 lambda!173310)))

(declare-fun bs!860038 () Bool)

(assert (= bs!860038 (and d!1395089 d!1395039)))

(assert (=> bs!860038 (= lambda!173318 lambda!173270)))

(assert (=> d!1395089 (contains!13418 (extractMap!1226 (toList!4348 lt!1701251)) key!3287)))

(declare-fun lt!1701444 () Unit!95830)

(declare-fun choose!29617 (ListLongMap!2979 K!12065 Hashable!5565) Unit!95830)

(assert (=> d!1395089 (= lt!1701444 (choose!29617 lt!1701251 key!3287 hashF!1107))))

(assert (=> d!1395089 (forall!10285 (toList!4348 lt!1701251) lambda!173318)))

(assert (=> d!1395089 (= (lemmaListContainsThenExtractedMapContains!140 lt!1701251 key!3287 hashF!1107) lt!1701444)))

(declare-fun bs!860039 () Bool)

(assert (= bs!860039 d!1395089))

(assert (=> bs!860039 m!5276771))

(assert (=> bs!860039 m!5276771))

(declare-fun m!5277045 () Bool)

(assert (=> bs!860039 m!5277045))

(declare-fun m!5277049 () Bool)

(assert (=> bs!860039 m!5277049))

(declare-fun m!5277053 () Bool)

(assert (=> bs!860039 m!5277053))

(assert (=> b!4524753 d!1395089))

(declare-fun bs!860041 () Bool)

(declare-fun d!1395099 () Bool)

(assert (= bs!860041 (and d!1395099 b!4524756)))

(declare-fun lambda!173319 () Int)

(assert (=> bs!860041 (not (= lambda!173319 lambda!173266))))

(declare-fun bs!860042 () Bool)

(assert (= bs!860042 (and d!1395099 start!448304)))

(assert (=> bs!860042 (= lambda!173319 lambda!173265)))

(declare-fun bs!860044 () Bool)

(assert (= bs!860044 (and d!1395099 d!1395087)))

(assert (=> bs!860044 (= lambda!173319 lambda!173312)))

(declare-fun bs!860045 () Bool)

(assert (= bs!860045 (and d!1395099 d!1395089)))

(assert (=> bs!860045 (= lambda!173319 lambda!173318)))

(declare-fun bs!860046 () Bool)

(assert (= bs!860046 (and d!1395099 d!1395071)))

(assert (=> bs!860046 (= lambda!173319 lambda!173310)))

(declare-fun bs!860047 () Bool)

(assert (= bs!860047 (and d!1395099 d!1395039)))

(assert (=> bs!860047 (= lambda!173319 lambda!173270)))

(declare-fun lt!1701445 () ListMap!3609)

(assert (=> d!1395099 (invariantList!1025 (toList!4347 lt!1701445))))

(declare-fun e!2819287 () ListMap!3609)

(assert (=> d!1395099 (= lt!1701445 e!2819287)))

(declare-fun c!772364 () Bool)

(assert (=> d!1395099 (= c!772364 ((_ is Cons!50675) (toList!4348 lt!1701251)))))

(assert (=> d!1395099 (forall!10285 (toList!4348 lt!1701251) lambda!173319)))

(assert (=> d!1395099 (= (extractMap!1226 (toList!4348 lt!1701251)) lt!1701445)))

(declare-fun b!4524932 () Bool)

(assert (=> b!4524932 (= e!2819287 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))))))

(declare-fun b!4524933 () Bool)

(assert (=> b!4524933 (= e!2819287 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395099 c!772364) b!4524932))

(assert (= (and d!1395099 (not c!772364)) b!4524933))

(declare-fun m!5277065 () Bool)

(assert (=> d!1395099 m!5277065))

(declare-fun m!5277067 () Bool)

(assert (=> d!1395099 m!5277067))

(declare-fun m!5277069 () Bool)

(assert (=> b!4524932 m!5277069))

(assert (=> b!4524932 m!5277069))

(declare-fun m!5277071 () Bool)

(assert (=> b!4524932 m!5277071))

(assert (=> b!4524753 d!1395099))

(declare-fun d!1395105 () Bool)

(declare-fun res!1883853 () Bool)

(declare-fun e!2819299 () Bool)

(assert (=> d!1395105 (=> res!1883853 e!2819299)))

(declare-fun e!2819300 () Bool)

(assert (=> d!1395105 (= res!1883853 e!2819300)))

(declare-fun res!1883852 () Bool)

(assert (=> d!1395105 (=> (not res!1883852) (not e!2819300))))

(assert (=> d!1395105 (= res!1883852 ((_ is Cons!50675) (t!357761 (toList!4348 lm!1477))))))

(assert (=> d!1395105 (= (containsKeyBiggerList!150 (t!357761 (toList!4348 lm!1477)) key!3287) e!2819299)))

(declare-fun b!4524949 () Bool)

(assert (=> b!4524949 (= e!2819300 (containsKey!1806 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(declare-fun b!4524950 () Bool)

(declare-fun e!2819301 () Bool)

(assert (=> b!4524950 (= e!2819299 e!2819301)))

(declare-fun res!1883851 () Bool)

(assert (=> b!4524950 (=> (not res!1883851) (not e!2819301))))

(assert (=> b!4524950 (= res!1883851 ((_ is Cons!50675) (t!357761 (toList!4348 lm!1477))))))

(declare-fun b!4524951 () Bool)

(assert (=> b!4524951 (= e!2819301 (containsKeyBiggerList!150 (t!357761 (t!357761 (toList!4348 lm!1477))) key!3287))))

(assert (= (and d!1395105 res!1883852) b!4524949))

(assert (= (and d!1395105 (not res!1883853)) b!4524950))

(assert (= (and b!4524950 res!1883851) b!4524951))

(declare-fun m!5277093 () Bool)

(assert (=> b!4524949 m!5277093))

(declare-fun m!5277095 () Bool)

(assert (=> b!4524951 m!5277095))

(assert (=> b!4524763 d!1395105))

(declare-fun d!1395113 () Bool)

(declare-fun res!1883856 () Bool)

(declare-fun e!2819302 () Bool)

(assert (=> d!1395113 (=> res!1883856 e!2819302)))

(declare-fun e!2819303 () Bool)

(assert (=> d!1395113 (= res!1883856 e!2819303)))

(declare-fun res!1883855 () Bool)

(assert (=> d!1395113 (=> (not res!1883855) (not e!2819303))))

(assert (=> d!1395113 (= res!1883855 ((_ is Cons!50675) (toList!4348 lt!1701251)))))

(assert (=> d!1395113 (= (containsKeyBiggerList!150 (toList!4348 lt!1701251) key!3287) e!2819302)))

(declare-fun b!4524952 () Bool)

(assert (=> b!4524952 (= e!2819303 (containsKey!1806 (_2!28852 (h!56536 (toList!4348 lt!1701251))) key!3287))))

(declare-fun b!4524953 () Bool)

(declare-fun e!2819304 () Bool)

(assert (=> b!4524953 (= e!2819302 e!2819304)))

(declare-fun res!1883854 () Bool)

(assert (=> b!4524953 (=> (not res!1883854) (not e!2819304))))

(assert (=> b!4524953 (= res!1883854 ((_ is Cons!50675) (toList!4348 lt!1701251)))))

(declare-fun b!4524954 () Bool)

(assert (=> b!4524954 (= e!2819304 (containsKeyBiggerList!150 (t!357761 (toList!4348 lt!1701251)) key!3287))))

(assert (= (and d!1395113 res!1883855) b!4524952))

(assert (= (and d!1395113 (not res!1883856)) b!4524953))

(assert (= (and b!4524953 res!1883854) b!4524954))

(declare-fun m!5277097 () Bool)

(assert (=> b!4524952 m!5277097))

(declare-fun m!5277099 () Bool)

(assert (=> b!4524954 m!5277099))

(assert (=> b!4524763 d!1395113))

(declare-fun bs!860069 () Bool)

(declare-fun d!1395115 () Bool)

(assert (= bs!860069 (and d!1395115 b!4524756)))

(declare-fun lambda!173327 () Int)

(assert (=> bs!860069 (not (= lambda!173327 lambda!173266))))

(declare-fun bs!860070 () Bool)

(assert (= bs!860070 (and d!1395115 start!448304)))

(assert (=> bs!860070 (= lambda!173327 lambda!173265)))

(declare-fun bs!860071 () Bool)

(assert (= bs!860071 (and d!1395115 d!1395087)))

(assert (=> bs!860071 (= lambda!173327 lambda!173312)))

(declare-fun bs!860072 () Bool)

(assert (= bs!860072 (and d!1395115 d!1395089)))

(assert (=> bs!860072 (= lambda!173327 lambda!173318)))

(declare-fun bs!860073 () Bool)

(assert (= bs!860073 (and d!1395115 d!1395071)))

(assert (=> bs!860073 (= lambda!173327 lambda!173310)))

(declare-fun bs!860074 () Bool)

(assert (= bs!860074 (and d!1395115 d!1395099)))

(assert (=> bs!860074 (= lambda!173327 lambda!173319)))

(declare-fun bs!860075 () Bool)

(assert (= bs!860075 (and d!1395115 d!1395039)))

(assert (=> bs!860075 (= lambda!173327 lambda!173270)))

(assert (=> d!1395115 (containsKeyBiggerList!150 (toList!4348 lt!1701251) key!3287)))

(declare-fun lt!1701474 () Unit!95830)

(declare-fun choose!29618 (ListLongMap!2979 K!12065 Hashable!5565) Unit!95830)

(assert (=> d!1395115 (= lt!1701474 (choose!29618 lt!1701251 key!3287 hashF!1107))))

(assert (=> d!1395115 (forall!10285 (toList!4348 lt!1701251) lambda!173327)))

(assert (=> d!1395115 (= (lemmaInLongMapThenContainsKeyBiggerList!86 lt!1701251 key!3287 hashF!1107) lt!1701474)))

(declare-fun bs!860076 () Bool)

(assert (= bs!860076 d!1395115))

(assert (=> bs!860076 m!5276713))

(declare-fun m!5277109 () Bool)

(assert (=> bs!860076 m!5277109))

(declare-fun m!5277113 () Bool)

(assert (=> bs!860076 m!5277113))

(assert (=> b!4524763 d!1395115))

(declare-fun d!1395117 () Bool)

(declare-fun e!2819315 () Bool)

(assert (=> d!1395117 e!2819315))

(declare-fun res!1883866 () Bool)

(assert (=> d!1395117 (=> (not res!1883866) (not e!2819315))))

(declare-fun lt!1701479 () ListMap!3609)

(assert (=> d!1395117 (= res!1883866 (not (contains!13418 lt!1701479 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!149 (List!50798 K!12065) List!50798)

(assert (=> d!1395117 (= lt!1701479 (ListMap!3610 (removePresrvNoDuplicatedKeys!149 (toList!4347 lt!1701248) key!3287)))))

(assert (=> d!1395117 (= (-!396 lt!1701248 key!3287) lt!1701479)))

(declare-fun b!4524968 () Bool)

(declare-fun content!8383 (List!50801) (InoxSet K!12065))

(assert (=> b!4524968 (= e!2819315 (= ((_ map and) (content!8383 (keys!17612 lt!1701248)) ((_ map not) (store ((as const (Array K!12065 Bool)) false) key!3287 true))) (content!8383 (keys!17612 lt!1701479))))))

(assert (= (and d!1395117 res!1883866) b!4524968))

(declare-fun m!5277157 () Bool)

(assert (=> d!1395117 m!5277157))

(declare-fun m!5277159 () Bool)

(assert (=> d!1395117 m!5277159))

(assert (=> b!4524968 m!5276971))

(declare-fun m!5277161 () Bool)

(assert (=> b!4524968 m!5277161))

(assert (=> b!4524968 m!5276971))

(declare-fun m!5277163 () Bool)

(assert (=> b!4524968 m!5277163))

(declare-fun m!5277165 () Bool)

(assert (=> b!4524968 m!5277165))

(assert (=> b!4524968 m!5277161))

(declare-fun m!5277169 () Bool)

(assert (=> b!4524968 m!5277169))

(assert (=> b!4524744 d!1395117))

(declare-fun bs!860091 () Bool)

(declare-fun d!1395129 () Bool)

(assert (= bs!860091 (and d!1395129 b!4524756)))

(declare-fun lambda!173332 () Int)

(assert (=> bs!860091 (not (= lambda!173332 lambda!173266))))

(declare-fun bs!860092 () Bool)

(assert (= bs!860092 (and d!1395129 start!448304)))

(assert (=> bs!860092 (= lambda!173332 lambda!173265)))

(declare-fun bs!860093 () Bool)

(assert (= bs!860093 (and d!1395129 d!1395087)))

(assert (=> bs!860093 (= lambda!173332 lambda!173312)))

(declare-fun bs!860094 () Bool)

(assert (= bs!860094 (and d!1395129 d!1395115)))

(assert (=> bs!860094 (= lambda!173332 lambda!173327)))

(declare-fun bs!860095 () Bool)

(assert (= bs!860095 (and d!1395129 d!1395089)))

(assert (=> bs!860095 (= lambda!173332 lambda!173318)))

(declare-fun bs!860096 () Bool)

(assert (= bs!860096 (and d!1395129 d!1395071)))

(assert (=> bs!860096 (= lambda!173332 lambda!173310)))

(declare-fun bs!860097 () Bool)

(assert (= bs!860097 (and d!1395129 d!1395099)))

(assert (=> bs!860097 (= lambda!173332 lambda!173319)))

(declare-fun bs!860098 () Bool)

(assert (= bs!860098 (and d!1395129 d!1395039)))

(assert (=> bs!860098 (= lambda!173332 lambda!173270)))

(declare-fun lt!1701484 () ListMap!3609)

(assert (=> d!1395129 (invariantList!1025 (toList!4347 lt!1701484))))

(declare-fun e!2819318 () ListMap!3609)

(assert (=> d!1395129 (= lt!1701484 e!2819318)))

(declare-fun c!772369 () Bool)

(assert (=> d!1395129 (= c!772369 ((_ is Cons!50675) (toList!4348 (+!1556 lt!1701251 lt!1701242))))))

(assert (=> d!1395129 (forall!10285 (toList!4348 (+!1556 lt!1701251 lt!1701242)) lambda!173332)))

(assert (=> d!1395129 (= (extractMap!1226 (toList!4348 (+!1556 lt!1701251 lt!1701242))) lt!1701484)))

(declare-fun b!4524972 () Bool)

(assert (=> b!4524972 (= e!2819318 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))))))

(declare-fun b!4524973 () Bool)

(assert (=> b!4524973 (= e!2819318 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395129 c!772369) b!4524972))

(assert (= (and d!1395129 (not c!772369)) b!4524973))

(declare-fun m!5277179 () Bool)

(assert (=> d!1395129 m!5277179))

(declare-fun m!5277181 () Bool)

(assert (=> d!1395129 m!5277181))

(declare-fun m!5277183 () Bool)

(assert (=> b!4524972 m!5277183))

(assert (=> b!4524972 m!5277183))

(declare-fun m!5277185 () Bool)

(assert (=> b!4524972 m!5277185))

(assert (=> b!4524744 d!1395129))

(declare-fun bs!860100 () Bool)

(declare-fun d!1395133 () Bool)

(assert (= bs!860100 (and d!1395133 d!1395129)))

(declare-fun lambda!173333 () Int)

(assert (=> bs!860100 (= lambda!173333 lambda!173332)))

(declare-fun bs!860101 () Bool)

(assert (= bs!860101 (and d!1395133 b!4524756)))

(assert (=> bs!860101 (not (= lambda!173333 lambda!173266))))

(declare-fun bs!860103 () Bool)

(assert (= bs!860103 (and d!1395133 start!448304)))

(assert (=> bs!860103 (= lambda!173333 lambda!173265)))

(declare-fun bs!860105 () Bool)

(assert (= bs!860105 (and d!1395133 d!1395087)))

(assert (=> bs!860105 (= lambda!173333 lambda!173312)))

(declare-fun bs!860107 () Bool)

(assert (= bs!860107 (and d!1395133 d!1395115)))

(assert (=> bs!860107 (= lambda!173333 lambda!173327)))

(declare-fun bs!860109 () Bool)

(assert (= bs!860109 (and d!1395133 d!1395089)))

(assert (=> bs!860109 (= lambda!173333 lambda!173318)))

(declare-fun bs!860111 () Bool)

(assert (= bs!860111 (and d!1395133 d!1395071)))

(assert (=> bs!860111 (= lambda!173333 lambda!173310)))

(declare-fun bs!860113 () Bool)

(assert (= bs!860113 (and d!1395133 d!1395099)))

(assert (=> bs!860113 (= lambda!173333 lambda!173319)))

(declare-fun bs!860115 () Bool)

(assert (= bs!860115 (and d!1395133 d!1395039)))

(assert (=> bs!860115 (= lambda!173333 lambda!173270)))

(declare-fun lt!1701485 () ListMap!3609)

(assert (=> d!1395133 (invariantList!1025 (toList!4347 lt!1701485))))

(declare-fun e!2819319 () ListMap!3609)

(assert (=> d!1395133 (= lt!1701485 e!2819319)))

(declare-fun c!772370 () Bool)

(assert (=> d!1395133 (= c!772370 ((_ is Cons!50675) (toList!4348 lt!1701246)))))

(assert (=> d!1395133 (forall!10285 (toList!4348 lt!1701246) lambda!173333)))

(assert (=> d!1395133 (= (extractMap!1226 (toList!4348 lt!1701246)) lt!1701485)))

(declare-fun b!4524974 () Bool)

(assert (=> b!4524974 (= e!2819319 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))))))

(declare-fun b!4524975 () Bool)

(assert (=> b!4524975 (= e!2819319 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395133 c!772370) b!4524974))

(assert (= (and d!1395133 (not c!772370)) b!4524975))

(declare-fun m!5277191 () Bool)

(assert (=> d!1395133 m!5277191))

(declare-fun m!5277195 () Bool)

(assert (=> d!1395133 m!5277195))

(declare-fun m!5277199 () Bool)

(assert (=> b!4524974 m!5277199))

(assert (=> b!4524974 m!5277199))

(declare-fun m!5277203 () Bool)

(assert (=> b!4524974 m!5277203))

(assert (=> b!4524744 d!1395133))

(declare-fun d!1395139 () Bool)

(assert (=> d!1395139 (= (eq!627 lt!1701256 lt!1701249) (= (content!8381 (toList!4347 lt!1701256)) (content!8381 (toList!4347 lt!1701249))))))

(declare-fun bs!860116 () Bool)

(assert (= bs!860116 d!1395139))

(declare-fun m!5277205 () Bool)

(assert (=> bs!860116 m!5277205))

(declare-fun m!5277207 () Bool)

(assert (=> bs!860116 m!5277207))

(assert (=> b!4524744 d!1395139))

(declare-fun bs!860117 () Bool)

(declare-fun d!1395141 () Bool)

(assert (= bs!860117 (and d!1395141 d!1395129)))

(declare-fun lambda!173337 () Int)

(assert (=> bs!860117 (= lambda!173337 lambda!173332)))

(declare-fun bs!860118 () Bool)

(assert (= bs!860118 (and d!1395141 b!4524756)))

(assert (=> bs!860118 (not (= lambda!173337 lambda!173266))))

(declare-fun bs!860119 () Bool)

(assert (= bs!860119 (and d!1395141 d!1395087)))

(assert (=> bs!860119 (= lambda!173337 lambda!173312)))

(declare-fun bs!860120 () Bool)

(assert (= bs!860120 (and d!1395141 d!1395115)))

(assert (=> bs!860120 (= lambda!173337 lambda!173327)))

(declare-fun bs!860121 () Bool)

(assert (= bs!860121 (and d!1395141 d!1395089)))

(assert (=> bs!860121 (= lambda!173337 lambda!173318)))

(declare-fun bs!860122 () Bool)

(assert (= bs!860122 (and d!1395141 d!1395071)))

(assert (=> bs!860122 (= lambda!173337 lambda!173310)))

(declare-fun bs!860123 () Bool)

(assert (= bs!860123 (and d!1395141 d!1395099)))

(assert (=> bs!860123 (= lambda!173337 lambda!173319)))

(declare-fun bs!860124 () Bool)

(assert (= bs!860124 (and d!1395141 d!1395039)))

(assert (=> bs!860124 (= lambda!173337 lambda!173270)))

(declare-fun bs!860125 () Bool)

(assert (= bs!860125 (and d!1395141 start!448304)))

(assert (=> bs!860125 (= lambda!173337 lambda!173265)))

(declare-fun bs!860126 () Bool)

(assert (= bs!860126 (and d!1395141 d!1395133)))

(assert (=> bs!860126 (= lambda!173337 lambda!173333)))

(assert (=> d!1395141 (eq!627 (extractMap!1226 (toList!4348 (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178)))) (-!396 (extractMap!1226 (toList!4348 lt!1701251)) key!3287))))

(declare-fun lt!1701505 () Unit!95830)

(declare-fun choose!29621 (ListLongMap!2979 (_ BitVec 64) List!50798 K!12065 Hashable!5565) Unit!95830)

(assert (=> d!1395141 (= lt!1701505 (choose!29621 lt!1701251 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1395141 (forall!10285 (toList!4348 lt!1701251) lambda!173337)))

(assert (=> d!1395141 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!155 lt!1701251 hash!344 newBucket!178 key!3287 hashF!1107) lt!1701505)))

(declare-fun bs!860127 () Bool)

(assert (= bs!860127 d!1395141))

(declare-fun m!5277209 () Bool)

(assert (=> bs!860127 m!5277209))

(declare-fun m!5277211 () Bool)

(assert (=> bs!860127 m!5277211))

(declare-fun m!5277213 () Bool)

(assert (=> bs!860127 m!5277213))

(declare-fun m!5277215 () Bool)

(assert (=> bs!860127 m!5277215))

(declare-fun m!5277217 () Bool)

(assert (=> bs!860127 m!5277217))

(assert (=> bs!860127 m!5276771))

(assert (=> bs!860127 m!5276771))

(assert (=> bs!860127 m!5277215))

(declare-fun m!5277219 () Bool)

(assert (=> bs!860127 m!5277219))

(assert (=> bs!860127 m!5277213))

(assert (=> b!4524744 d!1395141))

(declare-fun d!1395143 () Bool)

(declare-fun e!2819348 () Bool)

(assert (=> d!1395143 e!2819348))

(declare-fun res!1883884 () Bool)

(assert (=> d!1395143 (=> (not res!1883884) (not e!2819348))))

(declare-fun lt!1701533 () ListLongMap!2979)

(assert (=> d!1395143 (= res!1883884 (contains!13417 lt!1701533 (_1!28852 lt!1701243)))))

(declare-fun lt!1701532 () List!50799)

(assert (=> d!1395143 (= lt!1701533 (ListLongMap!2980 lt!1701532))))

(declare-fun lt!1701531 () Unit!95830)

(declare-fun lt!1701534 () Unit!95830)

(assert (=> d!1395143 (= lt!1701531 lt!1701534)))

(declare-datatypes ((Option!11137 0))(
  ( (None!11136) (Some!11136 (v!44762 List!50798)) )
))
(declare-fun getValueByKey!1109 (List!50799 (_ BitVec 64)) Option!11137)

(assert (=> d!1395143 (= (getValueByKey!1109 lt!1701532 (_1!28852 lt!1701243)) (Some!11136 (_2!28852 lt!1701243)))))

(declare-fun lemmaContainsTupThenGetReturnValue!690 (List!50799 (_ BitVec 64) List!50798) Unit!95830)

(assert (=> d!1395143 (= lt!1701534 (lemmaContainsTupThenGetReturnValue!690 lt!1701532 (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))

(declare-fun insertStrictlySorted!416 (List!50799 (_ BitVec 64) List!50798) List!50799)

(assert (=> d!1395143 (= lt!1701532 (insertStrictlySorted!416 (toList!4348 lt!1701251) (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))

(assert (=> d!1395143 (= (+!1556 lt!1701251 lt!1701243) lt!1701533)))

(declare-fun b!4525020 () Bool)

(declare-fun res!1883885 () Bool)

(assert (=> b!4525020 (=> (not res!1883885) (not e!2819348))))

(assert (=> b!4525020 (= res!1883885 (= (getValueByKey!1109 (toList!4348 lt!1701533) (_1!28852 lt!1701243)) (Some!11136 (_2!28852 lt!1701243))))))

(declare-fun b!4525021 () Bool)

(assert (=> b!4525021 (= e!2819348 (contains!13419 (toList!4348 lt!1701533) lt!1701243))))

(assert (= (and d!1395143 res!1883884) b!4525020))

(assert (= (and b!4525020 res!1883885) b!4525021))

(declare-fun m!5277267 () Bool)

(assert (=> d!1395143 m!5277267))

(declare-fun m!5277269 () Bool)

(assert (=> d!1395143 m!5277269))

(declare-fun m!5277271 () Bool)

(assert (=> d!1395143 m!5277271))

(declare-fun m!5277273 () Bool)

(assert (=> d!1395143 m!5277273))

(declare-fun m!5277275 () Bool)

(assert (=> b!4525020 m!5277275))

(declare-fun m!5277277 () Bool)

(assert (=> b!4525021 m!5277277))

(assert (=> b!4524744 d!1395143))

(declare-fun d!1395151 () Bool)

(assert (=> d!1395151 (= (eq!627 lt!1701241 lt!1701257) (= (content!8381 (toList!4347 lt!1701241)) (content!8381 (toList!4347 lt!1701257))))))

(declare-fun bs!860136 () Bool)

(assert (= bs!860136 d!1395151))

(assert (=> bs!860136 m!5276791))

(assert (=> bs!860136 m!5276789))

(assert (=> b!4524744 d!1395151))

(declare-fun d!1395153 () Bool)

(declare-fun e!2819349 () Bool)

(assert (=> d!1395153 e!2819349))

(declare-fun res!1883886 () Bool)

(assert (=> d!1395153 (=> (not res!1883886) (not e!2819349))))

(declare-fun lt!1701537 () ListLongMap!2979)

(assert (=> d!1395153 (= res!1883886 (contains!13417 lt!1701537 (_1!28852 lt!1701242)))))

(declare-fun lt!1701536 () List!50799)

(assert (=> d!1395153 (= lt!1701537 (ListLongMap!2980 lt!1701536))))

(declare-fun lt!1701535 () Unit!95830)

(declare-fun lt!1701538 () Unit!95830)

(assert (=> d!1395153 (= lt!1701535 lt!1701538)))

(assert (=> d!1395153 (= (getValueByKey!1109 lt!1701536 (_1!28852 lt!1701242)) (Some!11136 (_2!28852 lt!1701242)))))

(assert (=> d!1395153 (= lt!1701538 (lemmaContainsTupThenGetReturnValue!690 lt!1701536 (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))

(assert (=> d!1395153 (= lt!1701536 (insertStrictlySorted!416 (toList!4348 lt!1701251) (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))

(assert (=> d!1395153 (= (+!1556 lt!1701251 lt!1701242) lt!1701537)))

(declare-fun b!4525022 () Bool)

(declare-fun res!1883887 () Bool)

(assert (=> b!4525022 (=> (not res!1883887) (not e!2819349))))

(assert (=> b!4525022 (= res!1883887 (= (getValueByKey!1109 (toList!4348 lt!1701537) (_1!28852 lt!1701242)) (Some!11136 (_2!28852 lt!1701242))))))

(declare-fun b!4525023 () Bool)

(assert (=> b!4525023 (= e!2819349 (contains!13419 (toList!4348 lt!1701537) lt!1701242))))

(assert (= (and d!1395153 res!1883886) b!4525022))

(assert (= (and b!4525022 res!1883887) b!4525023))

(declare-fun m!5277279 () Bool)

(assert (=> d!1395153 m!5277279))

(declare-fun m!5277281 () Bool)

(assert (=> d!1395153 m!5277281))

(declare-fun m!5277283 () Bool)

(assert (=> d!1395153 m!5277283))

(declare-fun m!5277285 () Bool)

(assert (=> d!1395153 m!5277285))

(declare-fun m!5277287 () Bool)

(assert (=> b!4525022 m!5277287))

(declare-fun m!5277289 () Bool)

(assert (=> b!4525023 m!5277289))

(assert (=> b!4524744 d!1395153))

(declare-fun d!1395155 () Bool)

(assert (=> d!1395155 (= (head!9430 lm!1477) (head!9432 (toList!4348 lm!1477)))))

(declare-fun bs!860137 () Bool)

(assert (= bs!860137 d!1395155))

(declare-fun m!5277291 () Bool)

(assert (=> bs!860137 m!5277291))

(assert (=> b!4524744 d!1395155))

(declare-fun d!1395157 () Bool)

(declare-fun isEmpty!28688 (List!50799) Bool)

(assert (=> d!1395157 (= (isEmpty!28685 lm!1477) (isEmpty!28688 (toList!4348 lm!1477)))))

(declare-fun bs!860138 () Bool)

(assert (= bs!860138 d!1395157))

(declare-fun m!5277293 () Bool)

(assert (=> bs!860138 m!5277293))

(assert (=> b!4524754 d!1395157))

(declare-fun d!1395159 () Bool)

(declare-fun res!1883888 () Bool)

(declare-fun e!2819350 () Bool)

(assert (=> d!1395159 (=> res!1883888 e!2819350)))

(assert (=> d!1395159 (= res!1883888 (and ((_ is Cons!50674) (_2!28852 lt!1701242)) (= (_1!28851 (h!56535 (_2!28852 lt!1701242))) key!3287)))))

(assert (=> d!1395159 (= (containsKey!1806 (_2!28852 lt!1701242) key!3287) e!2819350)))

(declare-fun b!4525024 () Bool)

(declare-fun e!2819351 () Bool)

(assert (=> b!4525024 (= e!2819350 e!2819351)))

(declare-fun res!1883889 () Bool)

(assert (=> b!4525024 (=> (not res!1883889) (not e!2819351))))

(assert (=> b!4525024 (= res!1883889 ((_ is Cons!50674) (_2!28852 lt!1701242)))))

(declare-fun b!4525025 () Bool)

(assert (=> b!4525025 (= e!2819351 (containsKey!1806 (t!357760 (_2!28852 lt!1701242)) key!3287))))

(assert (= (and d!1395159 (not res!1883888)) b!4525024))

(assert (= (and b!4525024 res!1883889) b!4525025))

(declare-fun m!5277295 () Bool)

(assert (=> b!4525025 m!5277295))

(assert (=> b!4524754 d!1395159))

(declare-fun d!1395161 () Bool)

(declare-fun res!1883890 () Bool)

(declare-fun e!2819352 () Bool)

(assert (=> d!1395161 (=> res!1883890 e!2819352)))

(assert (=> d!1395161 (= res!1883890 (not ((_ is Cons!50674) newBucket!178)))))

(assert (=> d!1395161 (= (noDuplicateKeys!1170 newBucket!178) e!2819352)))

(declare-fun b!4525026 () Bool)

(declare-fun e!2819353 () Bool)

(assert (=> b!4525026 (= e!2819352 e!2819353)))

(declare-fun res!1883891 () Bool)

(assert (=> b!4525026 (=> (not res!1883891) (not e!2819353))))

(assert (=> b!4525026 (= res!1883891 (not (containsKey!1806 (t!357760 newBucket!178) (_1!28851 (h!56535 newBucket!178)))))))

(declare-fun b!4525027 () Bool)

(assert (=> b!4525027 (= e!2819353 (noDuplicateKeys!1170 (t!357760 newBucket!178)))))

(assert (= (and d!1395161 (not res!1883890)) b!4525026))

(assert (= (and b!4525026 res!1883891) b!4525027))

(declare-fun m!5277297 () Bool)

(assert (=> b!4525026 m!5277297))

(declare-fun m!5277299 () Bool)

(assert (=> b!4525027 m!5277299))

(assert (=> b!4524743 d!1395161))

(declare-fun b!4525044 () Bool)

(declare-fun e!2819364 () Option!11133)

(assert (=> b!4525044 (= e!2819364 None!11132)))

(declare-fun b!4525045 () Bool)

(declare-fun res!1883902 () Bool)

(declare-fun e!2819366 () Bool)

(assert (=> b!4525045 (=> (not res!1883902) (not e!2819366))))

(declare-fun lt!1701544 () Option!11133)

(assert (=> b!4525045 (= res!1883902 (= (_1!28851 (get!16611 lt!1701544)) key!3287))))

(declare-fun b!4525046 () Bool)

(declare-fun contains!13423 (List!50798 tuple2!51114) Bool)

(assert (=> b!4525046 (= e!2819366 (contains!13423 (_2!28852 lt!1701242) (get!16611 lt!1701544)))))

(declare-fun b!4525048 () Bool)

(declare-fun e!2819368 () Bool)

(assert (=> b!4525048 (= e!2819368 e!2819366)))

(declare-fun res!1883900 () Bool)

(assert (=> b!4525048 (=> (not res!1883900) (not e!2819366))))

(declare-fun isDefined!8423 (Option!11133) Bool)

(assert (=> b!4525048 (= res!1883900 (isDefined!8423 lt!1701544))))

(declare-fun b!4525049 () Bool)

(assert (=> b!4525049 (= e!2819364 (getPair!186 (t!357760 (_2!28852 lt!1701242)) key!3287))))

(declare-fun b!4525050 () Bool)

(declare-fun e!2819367 () Bool)

(assert (=> b!4525050 (= e!2819367 (not (containsKey!1806 (_2!28852 lt!1701242) key!3287)))))

(declare-fun b!4525051 () Bool)

(declare-fun e!2819365 () Option!11133)

(assert (=> b!4525051 (= e!2819365 (Some!11132 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun d!1395163 () Bool)

(assert (=> d!1395163 e!2819368))

(declare-fun res!1883903 () Bool)

(assert (=> d!1395163 (=> res!1883903 e!2819368)))

(assert (=> d!1395163 (= res!1883903 e!2819367)))

(declare-fun res!1883901 () Bool)

(assert (=> d!1395163 (=> (not res!1883901) (not e!2819367))))

(declare-fun isEmpty!28689 (Option!11133) Bool)

(assert (=> d!1395163 (= res!1883901 (isEmpty!28689 lt!1701544))))

(assert (=> d!1395163 (= lt!1701544 e!2819365)))

(declare-fun c!772389 () Bool)

(assert (=> d!1395163 (= c!772389 (and ((_ is Cons!50674) (_2!28852 lt!1701242)) (= (_1!28851 (h!56535 (_2!28852 lt!1701242))) key!3287)))))

(assert (=> d!1395163 (noDuplicateKeys!1170 (_2!28852 lt!1701242))))

(assert (=> d!1395163 (= (getPair!186 (_2!28852 lt!1701242) key!3287) lt!1701544)))

(declare-fun b!4525047 () Bool)

(assert (=> b!4525047 (= e!2819365 e!2819364)))

(declare-fun c!772390 () Bool)

(assert (=> b!4525047 (= c!772390 ((_ is Cons!50674) (_2!28852 lt!1701242)))))

(assert (= (and d!1395163 c!772389) b!4525051))

(assert (= (and d!1395163 (not c!772389)) b!4525047))

(assert (= (and b!4525047 c!772390) b!4525049))

(assert (= (and b!4525047 (not c!772390)) b!4525044))

(assert (= (and d!1395163 res!1883901) b!4525050))

(assert (= (and d!1395163 (not res!1883903)) b!4525048))

(assert (= (and b!4525048 res!1883900) b!4525045))

(assert (= (and b!4525045 res!1883902) b!4525046))

(declare-fun m!5277307 () Bool)

(assert (=> d!1395163 m!5277307))

(assert (=> d!1395163 m!5276669))

(declare-fun m!5277309 () Bool)

(assert (=> b!4525048 m!5277309))

(assert (=> b!4525050 m!5276729))

(declare-fun m!5277311 () Bool)

(assert (=> b!4525046 m!5277311))

(assert (=> b!4525046 m!5277311))

(declare-fun m!5277313 () Bool)

(assert (=> b!4525046 m!5277313))

(assert (=> b!4525045 m!5277311))

(declare-fun m!5277315 () Bool)

(assert (=> b!4525049 m!5277315))

(assert (=> b!4524756 d!1395163))

(declare-fun d!1395167 () Bool)

(assert (=> d!1395167 (dynLambda!21175 lambda!173266 (h!56536 (toList!4348 lm!1477)))))

(declare-fun lt!1701545 () Unit!95830)

(assert (=> d!1395167 (= lt!1701545 (choose!29616 (toList!4348 lm!1477) lambda!173266 (h!56536 (toList!4348 lm!1477))))))

(declare-fun e!2819369 () Bool)

(assert (=> d!1395167 e!2819369))

(declare-fun res!1883904 () Bool)

(assert (=> d!1395167 (=> (not res!1883904) (not e!2819369))))

(assert (=> d!1395167 (= res!1883904 (forall!10285 (toList!4348 lm!1477) lambda!173266))))

(assert (=> d!1395167 (= (forallContained!2538 (toList!4348 lm!1477) lambda!173266 (h!56536 (toList!4348 lm!1477))) lt!1701545)))

(declare-fun b!4525052 () Bool)

(assert (=> b!4525052 (= e!2819369 (contains!13419 (toList!4348 lm!1477) (h!56536 (toList!4348 lm!1477))))))

(assert (= (and d!1395167 res!1883904) b!4525052))

(declare-fun b_lambda!155605 () Bool)

(assert (=> (not b_lambda!155605) (not d!1395167)))

(declare-fun m!5277317 () Bool)

(assert (=> d!1395167 m!5277317))

(declare-fun m!5277319 () Bool)

(assert (=> d!1395167 m!5277319))

(declare-fun m!5277321 () Bool)

(assert (=> d!1395167 m!5277321))

(assert (=> b!4525052 m!5276815))

(assert (=> b!4524756 d!1395167))

(declare-fun d!1395169 () Bool)

(declare-fun dynLambda!21177 (Int tuple2!51114) Bool)

(assert (=> d!1395169 (dynLambda!21177 lambda!173267 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264))))))

(declare-fun lt!1701550 () Unit!95830)

(declare-fun choose!29623 (List!50798 Int tuple2!51114) Unit!95830)

(assert (=> d!1395169 (= lt!1701550 (choose!29623 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173267 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))))))

(declare-fun e!2819382 () Bool)

(assert (=> d!1395169 e!2819382))

(declare-fun res!1883915 () Bool)

(assert (=> d!1395169 (=> (not res!1883915) (not e!2819382))))

(declare-fun forall!10287 (List!50798 Int) Bool)

(assert (=> d!1395169 (= res!1883915 (forall!10287 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173267))))

(assert (=> d!1395169 (= (forallContained!2539 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173267 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))) lt!1701550)))

(declare-fun b!4525071 () Bool)

(assert (=> b!4525071 (= e!2819382 (contains!13423 (_2!28852 (h!56536 (toList!4348 lm!1477))) (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))))))

(assert (= (and d!1395169 res!1883915) b!4525071))

(declare-fun b_lambda!155607 () Bool)

(assert (=> (not b_lambda!155607) (not d!1395169)))

(declare-fun m!5277323 () Bool)

(assert (=> d!1395169 m!5277323))

(declare-fun m!5277325 () Bool)

(assert (=> d!1395169 m!5277325))

(declare-fun m!5277327 () Bool)

(assert (=> d!1395169 m!5277327))

(declare-fun m!5277329 () Bool)

(assert (=> b!4525071 m!5277329))

(assert (=> b!4524756 d!1395169))

(declare-fun d!1395171 () Bool)

(assert (=> d!1395171 (= (get!16611 lt!1701264) (v!44754 lt!1701264))))

(assert (=> b!4524756 d!1395171))

(declare-fun d!1395173 () Bool)

(declare-fun e!2819396 () Bool)

(assert (=> d!1395173 e!2819396))

(declare-fun res!1883926 () Bool)

(assert (=> d!1395173 (=> res!1883926 e!2819396)))

(declare-fun lt!1701567 () Bool)

(assert (=> d!1395173 (= res!1883926 (not lt!1701567))))

(declare-fun lt!1701565 () Bool)

(assert (=> d!1395173 (= lt!1701567 lt!1701565)))

(declare-fun lt!1701566 () Unit!95830)

(declare-fun e!2819397 () Unit!95830)

(assert (=> d!1395173 (= lt!1701566 e!2819397)))

(declare-fun c!772399 () Bool)

(assert (=> d!1395173 (= c!772399 lt!1701565)))

(declare-fun containsKey!1810 (List!50799 (_ BitVec 64)) Bool)

(assert (=> d!1395173 (= lt!1701565 (containsKey!1810 (toList!4348 lt!1701251) hash!344))))

(assert (=> d!1395173 (= (contains!13417 lt!1701251 hash!344) lt!1701567)))

(declare-fun b!4525090 () Bool)

(declare-fun lt!1701564 () Unit!95830)

(assert (=> b!4525090 (= e!2819397 lt!1701564)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (List!50799 (_ BitVec 64)) Unit!95830)

(assert (=> b!4525090 (= lt!1701564 (lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (toList!4348 lt!1701251) hash!344))))

(declare-fun isDefined!8424 (Option!11137) Bool)

(assert (=> b!4525090 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701251) hash!344))))

(declare-fun b!4525091 () Bool)

(declare-fun Unit!95871 () Unit!95830)

(assert (=> b!4525091 (= e!2819397 Unit!95871)))

(declare-fun b!4525092 () Bool)

(assert (=> b!4525092 (= e!2819396 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701251) hash!344)))))

(assert (= (and d!1395173 c!772399) b!4525090))

(assert (= (and d!1395173 (not c!772399)) b!4525091))

(assert (= (and d!1395173 (not res!1883926)) b!4525092))

(declare-fun m!5277355 () Bool)

(assert (=> d!1395173 m!5277355))

(declare-fun m!5277357 () Bool)

(assert (=> b!4525090 m!5277357))

(declare-fun m!5277359 () Bool)

(assert (=> b!4525090 m!5277359))

(assert (=> b!4525090 m!5277359))

(declare-fun m!5277361 () Bool)

(assert (=> b!4525090 m!5277361))

(assert (=> b!4525092 m!5277359))

(assert (=> b!4525092 m!5277359))

(assert (=> b!4525092 m!5277361))

(assert (=> b!4524745 d!1395173))

(declare-fun d!1395183 () Bool)

(declare-fun tail!7754 (List!50799) List!50799)

(assert (=> d!1395183 (= (tail!7752 lm!1477) (ListLongMap!2980 (tail!7754 (toList!4348 lm!1477))))))

(declare-fun bs!860149 () Bool)

(assert (= bs!860149 d!1395183))

(declare-fun m!5277363 () Bool)

(assert (=> bs!860149 m!5277363))

(assert (=> b!4524745 d!1395183))

(declare-fun d!1395185 () Bool)

(declare-fun e!2819398 () Bool)

(assert (=> d!1395185 e!2819398))

(declare-fun res!1883927 () Bool)

(assert (=> d!1395185 (=> (not res!1883927) (not e!2819398))))

(declare-fun lt!1701570 () ListLongMap!2979)

(assert (=> d!1395185 (= res!1883927 (contains!13417 lt!1701570 (_1!28852 lt!1701243)))))

(declare-fun lt!1701569 () List!50799)

(assert (=> d!1395185 (= lt!1701570 (ListLongMap!2980 lt!1701569))))

(declare-fun lt!1701568 () Unit!95830)

(declare-fun lt!1701571 () Unit!95830)

(assert (=> d!1395185 (= lt!1701568 lt!1701571)))

(assert (=> d!1395185 (= (getValueByKey!1109 lt!1701569 (_1!28852 lt!1701243)) (Some!11136 (_2!28852 lt!1701243)))))

(assert (=> d!1395185 (= lt!1701571 (lemmaContainsTupThenGetReturnValue!690 lt!1701569 (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))

(assert (=> d!1395185 (= lt!1701569 (insertStrictlySorted!416 (toList!4348 lm!1477) (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))

(assert (=> d!1395185 (= (+!1556 lm!1477 lt!1701243) lt!1701570)))

(declare-fun b!4525093 () Bool)

(declare-fun res!1883928 () Bool)

(assert (=> b!4525093 (=> (not res!1883928) (not e!2819398))))

(assert (=> b!4525093 (= res!1883928 (= (getValueByKey!1109 (toList!4348 lt!1701570) (_1!28852 lt!1701243)) (Some!11136 (_2!28852 lt!1701243))))))

(declare-fun b!4525094 () Bool)

(assert (=> b!4525094 (= e!2819398 (contains!13419 (toList!4348 lt!1701570) lt!1701243))))

(assert (= (and d!1395185 res!1883927) b!4525093))

(assert (= (and b!4525093 res!1883928) b!4525094))

(declare-fun m!5277365 () Bool)

(assert (=> d!1395185 m!5277365))

(declare-fun m!5277367 () Bool)

(assert (=> d!1395185 m!5277367))

(declare-fun m!5277369 () Bool)

(assert (=> d!1395185 m!5277369))

(declare-fun m!5277371 () Bool)

(assert (=> d!1395185 m!5277371))

(declare-fun m!5277373 () Bool)

(assert (=> b!4525093 m!5277373))

(declare-fun m!5277375 () Bool)

(assert (=> b!4525094 m!5277375))

(assert (=> b!4524766 d!1395185))

(declare-fun d!1395187 () Bool)

(declare-fun e!2819399 () Bool)

(assert (=> d!1395187 e!2819399))

(declare-fun res!1883929 () Bool)

(assert (=> d!1395187 (=> (not res!1883929) (not e!2819399))))

(declare-fun lt!1701574 () ListLongMap!2979)

(assert (=> d!1395187 (= res!1883929 (contains!13417 lt!1701574 (_1!28852 lt!1701242)))))

(declare-fun lt!1701573 () List!50799)

(assert (=> d!1395187 (= lt!1701574 (ListLongMap!2980 lt!1701573))))

(declare-fun lt!1701572 () Unit!95830)

(declare-fun lt!1701575 () Unit!95830)

(assert (=> d!1395187 (= lt!1701572 lt!1701575)))

(assert (=> d!1395187 (= (getValueByKey!1109 lt!1701573 (_1!28852 lt!1701242)) (Some!11136 (_2!28852 lt!1701242)))))

(assert (=> d!1395187 (= lt!1701575 (lemmaContainsTupThenGetReturnValue!690 lt!1701573 (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))

(assert (=> d!1395187 (= lt!1701573 (insertStrictlySorted!416 (toList!4348 lt!1701246) (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))

(assert (=> d!1395187 (= (+!1556 lt!1701246 lt!1701242) lt!1701574)))

(declare-fun b!4525095 () Bool)

(declare-fun res!1883930 () Bool)

(assert (=> b!4525095 (=> (not res!1883930) (not e!2819399))))

(assert (=> b!4525095 (= res!1883930 (= (getValueByKey!1109 (toList!4348 lt!1701574) (_1!28852 lt!1701242)) (Some!11136 (_2!28852 lt!1701242))))))

(declare-fun b!4525096 () Bool)

(assert (=> b!4525096 (= e!2819399 (contains!13419 (toList!4348 lt!1701574) lt!1701242))))

(assert (= (and d!1395187 res!1883929) b!4525095))

(assert (= (and b!4525095 res!1883930) b!4525096))

(declare-fun m!5277381 () Bool)

(assert (=> d!1395187 m!5277381))

(declare-fun m!5277383 () Bool)

(assert (=> d!1395187 m!5277383))

(declare-fun m!5277385 () Bool)

(assert (=> d!1395187 m!5277385))

(declare-fun m!5277387 () Bool)

(assert (=> d!1395187 m!5277387))

(declare-fun m!5277389 () Bool)

(assert (=> b!4525095 m!5277389))

(declare-fun m!5277391 () Bool)

(assert (=> b!4525096 m!5277391))

(assert (=> b!4524766 d!1395187))

(declare-fun d!1395195 () Bool)

(assert (=> d!1395195 (= (eq!627 lt!1701265 lt!1701252) (= (content!8381 (toList!4347 lt!1701265)) (content!8381 (toList!4347 lt!1701252))))))

(declare-fun bs!860163 () Bool)

(assert (= bs!860163 d!1395195))

(declare-fun m!5277393 () Bool)

(assert (=> bs!860163 m!5277393))

(declare-fun m!5277395 () Bool)

(assert (=> bs!860163 m!5277395))

(assert (=> b!4524755 d!1395195))

(declare-fun d!1395197 () Bool)

(assert (=> d!1395197 (= (eq!627 lt!1701266 lt!1701252) (= (content!8381 (toList!4347 lt!1701266)) (content!8381 (toList!4347 lt!1701252))))))

(declare-fun bs!860164 () Bool)

(assert (= bs!860164 d!1395197))

(declare-fun m!5277399 () Bool)

(assert (=> bs!860164 m!5277399))

(assert (=> bs!860164 m!5277395))

(assert (=> b!4524755 d!1395197))

(declare-fun bs!860209 () Bool)

(declare-fun b!4525156 () Bool)

(assert (= bs!860209 (and b!4525156 b!4524756)))

(declare-fun lambda!173380 () Int)

(assert (=> bs!860209 (not (= lambda!173380 lambda!173267))))

(assert (=> b!4525156 true))

(declare-fun bs!860210 () Bool)

(declare-fun b!4525155 () Bool)

(assert (= bs!860210 (and b!4525155 b!4524756)))

(declare-fun lambda!173381 () Int)

(assert (=> bs!860210 (not (= lambda!173381 lambda!173267))))

(declare-fun bs!860211 () Bool)

(assert (= bs!860211 (and b!4525155 b!4525156)))

(assert (=> bs!860211 (= lambda!173381 lambda!173380)))

(assert (=> b!4525155 true))

(declare-fun lambda!173382 () Int)

(assert (=> bs!860210 (not (= lambda!173382 lambda!173267))))

(declare-fun lt!1701646 () ListMap!3609)

(assert (=> bs!860211 (= (= lt!1701646 lt!1701249) (= lambda!173382 lambda!173380))))

(assert (=> b!4525155 (= (= lt!1701646 lt!1701249) (= lambda!173382 lambda!173381))))

(assert (=> b!4525155 true))

(declare-fun bs!860212 () Bool)

(declare-fun d!1395201 () Bool)

(assert (= bs!860212 (and d!1395201 b!4524756)))

(declare-fun lambda!173383 () Int)

(assert (=> bs!860212 (not (= lambda!173383 lambda!173267))))

(declare-fun bs!860213 () Bool)

(assert (= bs!860213 (and d!1395201 b!4525156)))

(declare-fun lt!1701649 () ListMap!3609)

(assert (=> bs!860213 (= (= lt!1701649 lt!1701249) (= lambda!173383 lambda!173380))))

(declare-fun bs!860214 () Bool)

(assert (= bs!860214 (and d!1395201 b!4525155)))

(assert (=> bs!860214 (= (= lt!1701649 lt!1701249) (= lambda!173383 lambda!173381))))

(assert (=> bs!860214 (= (= lt!1701649 lt!1701646) (= lambda!173383 lambda!173382))))

(assert (=> d!1395201 true))

(declare-fun call!315334 () Bool)

(declare-fun c!772406 () Bool)

(declare-fun bm!315327 () Bool)

(assert (=> bm!315327 (= call!315334 (forall!10287 (toList!4347 lt!1701249) (ite c!772406 lambda!173380 lambda!173381)))))

(declare-fun b!4525152 () Bool)

(declare-fun e!2819445 () Bool)

(assert (=> b!4525152 (= e!2819445 (forall!10287 (toList!4347 lt!1701249) lambda!173382))))

(declare-fun bm!315328 () Bool)

(declare-fun call!315332 () Unit!95830)

(declare-fun lemmaContainsAllItsOwnKeys!346 (ListMap!3609) Unit!95830)

(assert (=> bm!315328 (= call!315332 (lemmaContainsAllItsOwnKeys!346 lt!1701249))))

(declare-fun lt!1701645 () ListMap!3609)

(declare-fun bm!315329 () Bool)

(declare-fun call!315333 () Bool)

(assert (=> bm!315329 (= call!315333 (forall!10287 (ite c!772406 (toList!4347 lt!1701249) (toList!4347 lt!1701645)) (ite c!772406 lambda!173380 lambda!173382)))))

(declare-fun b!4525153 () Bool)

(declare-fun res!1883964 () Bool)

(declare-fun e!2819444 () Bool)

(assert (=> b!4525153 (=> (not res!1883964) (not e!2819444))))

(assert (=> b!4525153 (= res!1883964 (forall!10287 (toList!4347 lt!1701249) lambda!173383))))

(declare-fun b!4525154 () Bool)

(assert (=> b!4525154 (= e!2819444 (invariantList!1025 (toList!4347 lt!1701649)))))

(declare-fun e!2819443 () ListMap!3609)

(assert (=> b!4525155 (= e!2819443 lt!1701646)))

(declare-fun +!1558 (ListMap!3609 tuple2!51114) ListMap!3609)

(assert (=> b!4525155 (= lt!1701645 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))))))

(assert (=> b!4525155 (= lt!1701646 (addToMapMapFromBucket!697 (t!357760 (_2!28852 lt!1701242)) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lt!1701643 () Unit!95830)

(assert (=> b!4525155 (= lt!1701643 call!315332)))

(assert (=> b!4525155 call!315334))

(declare-fun lt!1701654 () Unit!95830)

(assert (=> b!4525155 (= lt!1701654 lt!1701643)))

(assert (=> b!4525155 call!315333))

(declare-fun lt!1701653 () Unit!95830)

(declare-fun Unit!95873 () Unit!95830)

(assert (=> b!4525155 (= lt!1701653 Unit!95873)))

(assert (=> b!4525155 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173382)))

(declare-fun lt!1701641 () Unit!95830)

(declare-fun Unit!95874 () Unit!95830)

(assert (=> b!4525155 (= lt!1701641 Unit!95874)))

(declare-fun lt!1701652 () Unit!95830)

(declare-fun Unit!95875 () Unit!95830)

(assert (=> b!4525155 (= lt!1701652 Unit!95875)))

(declare-fun lt!1701640 () Unit!95830)

(assert (=> b!4525155 (= lt!1701640 (forallContained!2539 (toList!4347 lt!1701645) lambda!173382 (h!56535 (_2!28852 lt!1701242))))))

(assert (=> b!4525155 (contains!13418 lt!1701645 (_1!28851 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun lt!1701635 () Unit!95830)

(declare-fun Unit!95876 () Unit!95830)

(assert (=> b!4525155 (= lt!1701635 Unit!95876)))

(assert (=> b!4525155 (contains!13418 lt!1701646 (_1!28851 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun lt!1701637 () Unit!95830)

(declare-fun Unit!95877 () Unit!95830)

(assert (=> b!4525155 (= lt!1701637 Unit!95877)))

(assert (=> b!4525155 (forall!10287 (_2!28852 lt!1701242) lambda!173382)))

(declare-fun lt!1701638 () Unit!95830)

(declare-fun Unit!95878 () Unit!95830)

(assert (=> b!4525155 (= lt!1701638 Unit!95878)))

(assert (=> b!4525155 (forall!10287 (toList!4347 lt!1701645) lambda!173382)))

(declare-fun lt!1701642 () Unit!95830)

(declare-fun Unit!95879 () Unit!95830)

(assert (=> b!4525155 (= lt!1701642 Unit!95879)))

(declare-fun lt!1701639 () Unit!95830)

(declare-fun Unit!95880 () Unit!95830)

(assert (=> b!4525155 (= lt!1701639 Unit!95880)))

(declare-fun lt!1701648 () Unit!95830)

(declare-fun addForallContainsKeyThenBeforeAdding!346 (ListMap!3609 ListMap!3609 K!12065 V!12311) Unit!95830)

(assert (=> b!4525155 (= lt!1701648 (addForallContainsKeyThenBeforeAdding!346 lt!1701249 lt!1701646 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4525155 (forall!10287 (toList!4347 lt!1701249) lambda!173382)))

(declare-fun lt!1701651 () Unit!95830)

(assert (=> b!4525155 (= lt!1701651 lt!1701648)))

(assert (=> b!4525155 (forall!10287 (toList!4347 lt!1701249) lambda!173382)))

(declare-fun lt!1701647 () Unit!95830)

(declare-fun Unit!95881 () Unit!95830)

(assert (=> b!4525155 (= lt!1701647 Unit!95881)))

(declare-fun res!1883965 () Bool)

(assert (=> b!4525155 (= res!1883965 (forall!10287 (_2!28852 lt!1701242) lambda!173382))))

(assert (=> b!4525155 (=> (not res!1883965) (not e!2819445))))

(assert (=> b!4525155 e!2819445))

(declare-fun lt!1701644 () Unit!95830)

(declare-fun Unit!95882 () Unit!95830)

(assert (=> b!4525155 (= lt!1701644 Unit!95882)))

(assert (=> b!4525156 (= e!2819443 lt!1701249)))

(declare-fun lt!1701636 () Unit!95830)

(assert (=> b!4525156 (= lt!1701636 call!315332)))

(assert (=> b!4525156 call!315333))

(declare-fun lt!1701650 () Unit!95830)

(assert (=> b!4525156 (= lt!1701650 lt!1701636)))

(assert (=> b!4525156 call!315334))

(declare-fun lt!1701634 () Unit!95830)

(declare-fun Unit!95883 () Unit!95830)

(assert (=> b!4525156 (= lt!1701634 Unit!95883)))

(assert (=> d!1395201 e!2819444))

(declare-fun res!1883966 () Bool)

(assert (=> d!1395201 (=> (not res!1883966) (not e!2819444))))

(assert (=> d!1395201 (= res!1883966 (forall!10287 (_2!28852 lt!1701242) lambda!173383))))

(assert (=> d!1395201 (= lt!1701649 e!2819443)))

(assert (=> d!1395201 (= c!772406 ((_ is Nil!50674) (_2!28852 lt!1701242)))))

(assert (=> d!1395201 (noDuplicateKeys!1170 (_2!28852 lt!1701242))))

(assert (=> d!1395201 (= (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701249) lt!1701649)))

(assert (= (and d!1395201 c!772406) b!4525156))

(assert (= (and d!1395201 (not c!772406)) b!4525155))

(assert (= (and b!4525155 res!1883965) b!4525152))

(assert (= (or b!4525156 b!4525155) bm!315327))

(assert (= (or b!4525156 b!4525155) bm!315329))

(assert (= (or b!4525156 b!4525155) bm!315328))

(assert (= (and d!1395201 res!1883966) b!4525153))

(assert (= (and b!4525153 res!1883964) b!4525154))

(declare-fun m!5277467 () Bool)

(assert (=> b!4525154 m!5277467))

(declare-fun m!5277469 () Bool)

(assert (=> b!4525155 m!5277469))

(declare-fun m!5277471 () Bool)

(assert (=> b!4525155 m!5277471))

(declare-fun m!5277473 () Bool)

(assert (=> b!4525155 m!5277473))

(declare-fun m!5277475 () Bool)

(assert (=> b!4525155 m!5277475))

(declare-fun m!5277477 () Bool)

(assert (=> b!4525155 m!5277477))

(assert (=> b!4525155 m!5277477))

(declare-fun m!5277479 () Bool)

(assert (=> b!4525155 m!5277479))

(declare-fun m!5277481 () Bool)

(assert (=> b!4525155 m!5277481))

(declare-fun m!5277483 () Bool)

(assert (=> b!4525155 m!5277483))

(declare-fun m!5277485 () Bool)

(assert (=> b!4525155 m!5277485))

(assert (=> b!4525155 m!5277469))

(assert (=> b!4525155 m!5277475))

(declare-fun m!5277487 () Bool)

(assert (=> b!4525155 m!5277487))

(declare-fun m!5277489 () Bool)

(assert (=> bm!315327 m!5277489))

(assert (=> b!4525152 m!5277477))

(declare-fun m!5277491 () Bool)

(assert (=> bm!315328 m!5277491))

(declare-fun m!5277493 () Bool)

(assert (=> bm!315329 m!5277493))

(declare-fun m!5277495 () Bool)

(assert (=> d!1395201 m!5277495))

(assert (=> d!1395201 m!5276669))

(declare-fun m!5277497 () Bool)

(assert (=> b!4525153 m!5277497))

(assert (=> b!4524755 d!1395201))

(declare-fun d!1395231 () Bool)

(assert (=> d!1395231 (eq!627 (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701256) (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701249))))

(declare-fun lt!1701657 () Unit!95830)

(declare-fun choose!29625 (ListMap!3609 ListMap!3609 List!50798) Unit!95830)

(assert (=> d!1395231 (= lt!1701657 (choose!29625 lt!1701256 lt!1701249 (_2!28852 lt!1701242)))))

(assert (=> d!1395231 (noDuplicateKeys!1170 (_2!28852 lt!1701242))))

(assert (=> d!1395231 (= (lemmaAddToMapFromBucketPreservesEquivalence!46 lt!1701256 lt!1701249 (_2!28852 lt!1701242)) lt!1701657)))

(declare-fun bs!860215 () Bool)

(assert (= bs!860215 d!1395231))

(assert (=> bs!860215 m!5276723))

(assert (=> bs!860215 m!5276723))

(assert (=> bs!860215 m!5276739))

(declare-fun m!5277499 () Bool)

(assert (=> bs!860215 m!5277499))

(assert (=> bs!860215 m!5276739))

(assert (=> bs!860215 m!5276669))

(declare-fun m!5277501 () Bool)

(assert (=> bs!860215 m!5277501))

(assert (=> b!4524755 d!1395231))

(declare-fun bs!860216 () Bool)

(declare-fun d!1395233 () Bool)

(assert (= bs!860216 (and d!1395233 d!1395129)))

(declare-fun lambda!173386 () Int)

(assert (=> bs!860216 (not (= lambda!173386 lambda!173332))))

(declare-fun bs!860217 () Bool)

(assert (= bs!860217 (and d!1395233 b!4524756)))

(assert (=> bs!860217 (= lambda!173386 lambda!173266)))

(declare-fun bs!860218 () Bool)

(assert (= bs!860218 (and d!1395233 d!1395087)))

(assert (=> bs!860218 (not (= lambda!173386 lambda!173312))))

(declare-fun bs!860219 () Bool)

(assert (= bs!860219 (and d!1395233 d!1395115)))

(assert (=> bs!860219 (not (= lambda!173386 lambda!173327))))

(declare-fun bs!860220 () Bool)

(assert (= bs!860220 (and d!1395233 d!1395089)))

(assert (=> bs!860220 (not (= lambda!173386 lambda!173318))))

(declare-fun bs!860221 () Bool)

(assert (= bs!860221 (and d!1395233 d!1395071)))

(assert (=> bs!860221 (not (= lambda!173386 lambda!173310))))

(declare-fun bs!860222 () Bool)

(assert (= bs!860222 (and d!1395233 d!1395099)))

(assert (=> bs!860222 (not (= lambda!173386 lambda!173319))))

(declare-fun bs!860223 () Bool)

(assert (= bs!860223 (and d!1395233 d!1395039)))

(assert (=> bs!860223 (not (= lambda!173386 lambda!173270))))

(declare-fun bs!860224 () Bool)

(assert (= bs!860224 (and d!1395233 start!448304)))

(assert (=> bs!860224 (not (= lambda!173386 lambda!173265))))

(declare-fun bs!860225 () Bool)

(assert (= bs!860225 (and d!1395233 d!1395141)))

(assert (=> bs!860225 (not (= lambda!173386 lambda!173337))))

(declare-fun bs!860226 () Bool)

(assert (= bs!860226 (and d!1395233 d!1395133)))

(assert (=> bs!860226 (not (= lambda!173386 lambda!173333))))

(assert (=> d!1395233 true))

(assert (=> d!1395233 (= (allKeysSameHashInMap!1277 lm!1477 hashF!1107) (forall!10285 (toList!4348 lm!1477) lambda!173386))))

(declare-fun bs!860227 () Bool)

(assert (= bs!860227 d!1395233))

(declare-fun m!5277503 () Bool)

(assert (=> bs!860227 m!5277503))

(assert (=> b!4524757 d!1395233))

(declare-fun d!1395235 () Bool)

(declare-fun hash!2841 (Hashable!5565 K!12065) (_ BitVec 64))

(assert (=> d!1395235 (= (hash!2837 hashF!1107 key!3287) (hash!2841 hashF!1107 key!3287))))

(declare-fun bs!860228 () Bool)

(assert (= bs!860228 d!1395235))

(declare-fun m!5277505 () Bool)

(assert (=> bs!860228 m!5277505))

(assert (=> b!4524746 d!1395235))

(declare-fun d!1395237 () Bool)

(assert (=> d!1395237 (= (eq!627 lt!1701265 lt!1701266) (= (content!8381 (toList!4347 lt!1701265)) (content!8381 (toList!4347 lt!1701266))))))

(declare-fun bs!860229 () Bool)

(assert (= bs!860229 d!1395237))

(assert (=> bs!860229 m!5277393))

(assert (=> bs!860229 m!5277399))

(assert (=> b!4524767 d!1395237))

(declare-fun bs!860230 () Bool)

(declare-fun b!4525163 () Bool)

(assert (= bs!860230 (and b!4525163 b!4525155)))

(declare-fun lambda!173387 () Int)

(assert (=> bs!860230 (= (= lt!1701256 lt!1701249) (= lambda!173387 lambda!173381))))

(declare-fun bs!860231 () Bool)

(assert (= bs!860231 (and b!4525163 b!4524756)))

(assert (=> bs!860231 (not (= lambda!173387 lambda!173267))))

(declare-fun bs!860232 () Bool)

(assert (= bs!860232 (and b!4525163 d!1395201)))

(assert (=> bs!860232 (= (= lt!1701256 lt!1701649) (= lambda!173387 lambda!173383))))

(declare-fun bs!860233 () Bool)

(assert (= bs!860233 (and b!4525163 b!4525156)))

(assert (=> bs!860233 (= (= lt!1701256 lt!1701249) (= lambda!173387 lambda!173380))))

(assert (=> bs!860230 (= (= lt!1701256 lt!1701646) (= lambda!173387 lambda!173382))))

(assert (=> b!4525163 true))

(declare-fun bs!860234 () Bool)

(declare-fun b!4525162 () Bool)

(assert (= bs!860234 (and b!4525162 b!4525163)))

(declare-fun lambda!173388 () Int)

(assert (=> bs!860234 (= lambda!173388 lambda!173387)))

(declare-fun bs!860235 () Bool)

(assert (= bs!860235 (and b!4525162 b!4525155)))

(assert (=> bs!860235 (= (= lt!1701256 lt!1701249) (= lambda!173388 lambda!173381))))

(declare-fun bs!860236 () Bool)

(assert (= bs!860236 (and b!4525162 b!4524756)))

(assert (=> bs!860236 (not (= lambda!173388 lambda!173267))))

(declare-fun bs!860237 () Bool)

(assert (= bs!860237 (and b!4525162 d!1395201)))

(assert (=> bs!860237 (= (= lt!1701256 lt!1701649) (= lambda!173388 lambda!173383))))

(declare-fun bs!860238 () Bool)

(assert (= bs!860238 (and b!4525162 b!4525156)))

(assert (=> bs!860238 (= (= lt!1701256 lt!1701249) (= lambda!173388 lambda!173380))))

(assert (=> bs!860235 (= (= lt!1701256 lt!1701646) (= lambda!173388 lambda!173382))))

(assert (=> b!4525162 true))

(declare-fun lambda!173389 () Int)

(declare-fun lt!1701670 () ListMap!3609)

(assert (=> bs!860234 (= (= lt!1701670 lt!1701256) (= lambda!173389 lambda!173387))))

(assert (=> bs!860235 (= (= lt!1701670 lt!1701249) (= lambda!173389 lambda!173381))))

(assert (=> bs!860236 (not (= lambda!173389 lambda!173267))))

(assert (=> b!4525162 (= (= lt!1701670 lt!1701256) (= lambda!173389 lambda!173388))))

(assert (=> bs!860237 (= (= lt!1701670 lt!1701649) (= lambda!173389 lambda!173383))))

(assert (=> bs!860238 (= (= lt!1701670 lt!1701249) (= lambda!173389 lambda!173380))))

(assert (=> bs!860235 (= (= lt!1701670 lt!1701646) (= lambda!173389 lambda!173382))))

(assert (=> b!4525162 true))

(declare-fun bs!860239 () Bool)

(declare-fun d!1395239 () Bool)

(assert (= bs!860239 (and d!1395239 b!4525163)))

(declare-fun lambda!173390 () Int)

(declare-fun lt!1701673 () ListMap!3609)

(assert (=> bs!860239 (= (= lt!1701673 lt!1701256) (= lambda!173390 lambda!173387))))

(declare-fun bs!860240 () Bool)

(assert (= bs!860240 (and d!1395239 b!4525155)))

(assert (=> bs!860240 (= (= lt!1701673 lt!1701249) (= lambda!173390 lambda!173381))))

(declare-fun bs!860241 () Bool)

(assert (= bs!860241 (and d!1395239 b!4524756)))

(assert (=> bs!860241 (not (= lambda!173390 lambda!173267))))

(declare-fun bs!860242 () Bool)

(assert (= bs!860242 (and d!1395239 b!4525162)))

(assert (=> bs!860242 (= (= lt!1701673 lt!1701256) (= lambda!173390 lambda!173388))))

(declare-fun bs!860243 () Bool)

(assert (= bs!860243 (and d!1395239 d!1395201)))

(assert (=> bs!860243 (= (= lt!1701673 lt!1701649) (= lambda!173390 lambda!173383))))

(declare-fun bs!860244 () Bool)

(assert (= bs!860244 (and d!1395239 b!4525156)))

(assert (=> bs!860244 (= (= lt!1701673 lt!1701249) (= lambda!173390 lambda!173380))))

(assert (=> bs!860240 (= (= lt!1701673 lt!1701646) (= lambda!173390 lambda!173382))))

(assert (=> bs!860242 (= (= lt!1701673 lt!1701670) (= lambda!173390 lambda!173389))))

(assert (=> d!1395239 true))

(declare-fun bm!315330 () Bool)

(declare-fun c!772407 () Bool)

(declare-fun call!315337 () Bool)

(assert (=> bm!315330 (= call!315337 (forall!10287 (toList!4347 lt!1701256) (ite c!772407 lambda!173387 lambda!173388)))))

(declare-fun b!4525159 () Bool)

(declare-fun e!2819448 () Bool)

(assert (=> b!4525159 (= e!2819448 (forall!10287 (toList!4347 lt!1701256) lambda!173389))))

(declare-fun bm!315331 () Bool)

(declare-fun call!315335 () Unit!95830)

(assert (=> bm!315331 (= call!315335 (lemmaContainsAllItsOwnKeys!346 lt!1701256))))

(declare-fun call!315336 () Bool)

(declare-fun bm!315332 () Bool)

(declare-fun lt!1701669 () ListMap!3609)

(assert (=> bm!315332 (= call!315336 (forall!10287 (ite c!772407 (toList!4347 lt!1701256) (toList!4347 lt!1701669)) (ite c!772407 lambda!173387 lambda!173389)))))

(declare-fun b!4525160 () Bool)

(declare-fun res!1883967 () Bool)

(declare-fun e!2819447 () Bool)

(assert (=> b!4525160 (=> (not res!1883967) (not e!2819447))))

(assert (=> b!4525160 (= res!1883967 (forall!10287 (toList!4347 lt!1701256) lambda!173390))))

(declare-fun b!4525161 () Bool)

(assert (=> b!4525161 (= e!2819447 (invariantList!1025 (toList!4347 lt!1701673)))))

(declare-fun e!2819446 () ListMap!3609)

(assert (=> b!4525162 (= e!2819446 lt!1701670)))

(assert (=> b!4525162 (= lt!1701669 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))))))

(assert (=> b!4525162 (= lt!1701670 (addToMapMapFromBucket!697 (t!357760 (_2!28852 lt!1701242)) (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lt!1701667 () Unit!95830)

(assert (=> b!4525162 (= lt!1701667 call!315335)))

(assert (=> b!4525162 call!315337))

(declare-fun lt!1701678 () Unit!95830)

(assert (=> b!4525162 (= lt!1701678 lt!1701667)))

(assert (=> b!4525162 call!315336))

(declare-fun lt!1701677 () Unit!95830)

(declare-fun Unit!95884 () Unit!95830)

(assert (=> b!4525162 (= lt!1701677 Unit!95884)))

(assert (=> b!4525162 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173389)))

(declare-fun lt!1701665 () Unit!95830)

(declare-fun Unit!95885 () Unit!95830)

(assert (=> b!4525162 (= lt!1701665 Unit!95885)))

(declare-fun lt!1701676 () Unit!95830)

(declare-fun Unit!95886 () Unit!95830)

(assert (=> b!4525162 (= lt!1701676 Unit!95886)))

(declare-fun lt!1701664 () Unit!95830)

(assert (=> b!4525162 (= lt!1701664 (forallContained!2539 (toList!4347 lt!1701669) lambda!173389 (h!56535 (_2!28852 lt!1701242))))))

(assert (=> b!4525162 (contains!13418 lt!1701669 (_1!28851 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun lt!1701659 () Unit!95830)

(declare-fun Unit!95887 () Unit!95830)

(assert (=> b!4525162 (= lt!1701659 Unit!95887)))

(assert (=> b!4525162 (contains!13418 lt!1701670 (_1!28851 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun lt!1701661 () Unit!95830)

(declare-fun Unit!95888 () Unit!95830)

(assert (=> b!4525162 (= lt!1701661 Unit!95888)))

(assert (=> b!4525162 (forall!10287 (_2!28852 lt!1701242) lambda!173389)))

(declare-fun lt!1701662 () Unit!95830)

(declare-fun Unit!95889 () Unit!95830)

(assert (=> b!4525162 (= lt!1701662 Unit!95889)))

(assert (=> b!4525162 (forall!10287 (toList!4347 lt!1701669) lambda!173389)))

(declare-fun lt!1701666 () Unit!95830)

(declare-fun Unit!95890 () Unit!95830)

(assert (=> b!4525162 (= lt!1701666 Unit!95890)))

(declare-fun lt!1701663 () Unit!95830)

(declare-fun Unit!95891 () Unit!95830)

(assert (=> b!4525162 (= lt!1701663 Unit!95891)))

(declare-fun lt!1701672 () Unit!95830)

(assert (=> b!4525162 (= lt!1701672 (addForallContainsKeyThenBeforeAdding!346 lt!1701256 lt!1701670 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4525162 (forall!10287 (toList!4347 lt!1701256) lambda!173389)))

(declare-fun lt!1701675 () Unit!95830)

(assert (=> b!4525162 (= lt!1701675 lt!1701672)))

(assert (=> b!4525162 (forall!10287 (toList!4347 lt!1701256) lambda!173389)))

(declare-fun lt!1701671 () Unit!95830)

(declare-fun Unit!95892 () Unit!95830)

(assert (=> b!4525162 (= lt!1701671 Unit!95892)))

(declare-fun res!1883968 () Bool)

(assert (=> b!4525162 (= res!1883968 (forall!10287 (_2!28852 lt!1701242) lambda!173389))))

(assert (=> b!4525162 (=> (not res!1883968) (not e!2819448))))

(assert (=> b!4525162 e!2819448))

(declare-fun lt!1701668 () Unit!95830)

(declare-fun Unit!95893 () Unit!95830)

(assert (=> b!4525162 (= lt!1701668 Unit!95893)))

(assert (=> b!4525163 (= e!2819446 lt!1701256)))

(declare-fun lt!1701660 () Unit!95830)

(assert (=> b!4525163 (= lt!1701660 call!315335)))

(assert (=> b!4525163 call!315336))

(declare-fun lt!1701674 () Unit!95830)

(assert (=> b!4525163 (= lt!1701674 lt!1701660)))

(assert (=> b!4525163 call!315337))

(declare-fun lt!1701658 () Unit!95830)

(declare-fun Unit!95894 () Unit!95830)

(assert (=> b!4525163 (= lt!1701658 Unit!95894)))

(assert (=> d!1395239 e!2819447))

(declare-fun res!1883969 () Bool)

(assert (=> d!1395239 (=> (not res!1883969) (not e!2819447))))

(assert (=> d!1395239 (= res!1883969 (forall!10287 (_2!28852 lt!1701242) lambda!173390))))

(assert (=> d!1395239 (= lt!1701673 e!2819446)))

(assert (=> d!1395239 (= c!772407 ((_ is Nil!50674) (_2!28852 lt!1701242)))))

(assert (=> d!1395239 (noDuplicateKeys!1170 (_2!28852 lt!1701242))))

(assert (=> d!1395239 (= (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701256) lt!1701673)))

(assert (= (and d!1395239 c!772407) b!4525163))

(assert (= (and d!1395239 (not c!772407)) b!4525162))

(assert (= (and b!4525162 res!1883968) b!4525159))

(assert (= (or b!4525163 b!4525162) bm!315330))

(assert (= (or b!4525163 b!4525162) bm!315332))

(assert (= (or b!4525163 b!4525162) bm!315331))

(assert (= (and d!1395239 res!1883969) b!4525160))

(assert (= (and b!4525160 res!1883967) b!4525161))

(declare-fun m!5277507 () Bool)

(assert (=> b!4525161 m!5277507))

(declare-fun m!5277509 () Bool)

(assert (=> b!4525162 m!5277509))

(declare-fun m!5277511 () Bool)

(assert (=> b!4525162 m!5277511))

(declare-fun m!5277513 () Bool)

(assert (=> b!4525162 m!5277513))

(declare-fun m!5277515 () Bool)

(assert (=> b!4525162 m!5277515))

(declare-fun m!5277517 () Bool)

(assert (=> b!4525162 m!5277517))

(assert (=> b!4525162 m!5277517))

(declare-fun m!5277519 () Bool)

(assert (=> b!4525162 m!5277519))

(declare-fun m!5277521 () Bool)

(assert (=> b!4525162 m!5277521))

(declare-fun m!5277523 () Bool)

(assert (=> b!4525162 m!5277523))

(declare-fun m!5277525 () Bool)

(assert (=> b!4525162 m!5277525))

(assert (=> b!4525162 m!5277509))

(assert (=> b!4525162 m!5277515))

(declare-fun m!5277527 () Bool)

(assert (=> b!4525162 m!5277527))

(declare-fun m!5277529 () Bool)

(assert (=> bm!315330 m!5277529))

(assert (=> b!4525159 m!5277517))

(declare-fun m!5277531 () Bool)

(assert (=> bm!315331 m!5277531))

(declare-fun m!5277533 () Bool)

(assert (=> bm!315332 m!5277533))

(declare-fun m!5277535 () Bool)

(assert (=> d!1395239 m!5277535))

(assert (=> d!1395239 m!5276669))

(declare-fun m!5277537 () Bool)

(assert (=> b!4525160 m!5277537))

(assert (=> b!4524767 d!1395239))

(declare-fun bs!860245 () Bool)

(declare-fun d!1395241 () Bool)

(assert (= bs!860245 (and d!1395241 d!1395129)))

(declare-fun lambda!173391 () Int)

(assert (=> bs!860245 (= lambda!173391 lambda!173332)))

(declare-fun bs!860246 () Bool)

(assert (= bs!860246 (and d!1395241 b!4524756)))

(assert (=> bs!860246 (not (= lambda!173391 lambda!173266))))

(declare-fun bs!860247 () Bool)

(assert (= bs!860247 (and d!1395241 d!1395233)))

(assert (=> bs!860247 (not (= lambda!173391 lambda!173386))))

(declare-fun bs!860248 () Bool)

(assert (= bs!860248 (and d!1395241 d!1395087)))

(assert (=> bs!860248 (= lambda!173391 lambda!173312)))

(declare-fun bs!860249 () Bool)

(assert (= bs!860249 (and d!1395241 d!1395115)))

(assert (=> bs!860249 (= lambda!173391 lambda!173327)))

(declare-fun bs!860250 () Bool)

(assert (= bs!860250 (and d!1395241 d!1395089)))

(assert (=> bs!860250 (= lambda!173391 lambda!173318)))

(declare-fun bs!860251 () Bool)

(assert (= bs!860251 (and d!1395241 d!1395071)))

(assert (=> bs!860251 (= lambda!173391 lambda!173310)))

(declare-fun bs!860252 () Bool)

(assert (= bs!860252 (and d!1395241 d!1395099)))

(assert (=> bs!860252 (= lambda!173391 lambda!173319)))

(declare-fun bs!860253 () Bool)

(assert (= bs!860253 (and d!1395241 d!1395039)))

(assert (=> bs!860253 (= lambda!173391 lambda!173270)))

(declare-fun bs!860254 () Bool)

(assert (= bs!860254 (and d!1395241 start!448304)))

(assert (=> bs!860254 (= lambda!173391 lambda!173265)))

(declare-fun bs!860255 () Bool)

(assert (= bs!860255 (and d!1395241 d!1395141)))

(assert (=> bs!860255 (= lambda!173391 lambda!173337)))

(declare-fun bs!860256 () Bool)

(assert (= bs!860256 (and d!1395241 d!1395133)))

(assert (=> bs!860256 (= lambda!173391 lambda!173333)))

(declare-fun lt!1701679 () ListMap!3609)

(assert (=> d!1395241 (invariantList!1025 (toList!4347 lt!1701679))))

(declare-fun e!2819449 () ListMap!3609)

(assert (=> d!1395241 (= lt!1701679 e!2819449)))

(declare-fun c!772408 () Bool)

(assert (=> d!1395241 (= c!772408 ((_ is Cons!50675) (toList!4348 lt!1701255)))))

(assert (=> d!1395241 (forall!10285 (toList!4348 lt!1701255) lambda!173391)))

(assert (=> d!1395241 (= (extractMap!1226 (toList!4348 lt!1701255)) lt!1701679)))

(declare-fun b!4525164 () Bool)

(assert (=> b!4525164 (= e!2819449 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))))))

(declare-fun b!4525165 () Bool)

(assert (=> b!4525165 (= e!2819449 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395241 c!772408) b!4525164))

(assert (= (and d!1395241 (not c!772408)) b!4525165))

(declare-fun m!5277539 () Bool)

(assert (=> d!1395241 m!5277539))

(declare-fun m!5277541 () Bool)

(assert (=> d!1395241 m!5277541))

(declare-fun m!5277543 () Bool)

(assert (=> b!4525164 m!5277543))

(assert (=> b!4525164 m!5277543))

(declare-fun m!5277545 () Bool)

(assert (=> b!4525164 m!5277545))

(assert (=> b!4524767 d!1395241))

(declare-fun bs!860257 () Bool)

(declare-fun d!1395243 () Bool)

(assert (= bs!860257 (and d!1395243 b!4525163)))

(declare-fun lambda!173394 () Int)

(assert (=> bs!860257 (not (= lambda!173394 lambda!173387))))

(declare-fun bs!860258 () Bool)

(assert (= bs!860258 (and d!1395243 b!4525155)))

(assert (=> bs!860258 (not (= lambda!173394 lambda!173381))))

(declare-fun bs!860259 () Bool)

(assert (= bs!860259 (and d!1395243 b!4525162)))

(assert (=> bs!860259 (not (= lambda!173394 lambda!173388))))

(declare-fun bs!860260 () Bool)

(assert (= bs!860260 (and d!1395243 d!1395201)))

(assert (=> bs!860260 (not (= lambda!173394 lambda!173383))))

(declare-fun bs!860261 () Bool)

(assert (= bs!860261 (and d!1395243 b!4525156)))

(assert (=> bs!860261 (not (= lambda!173394 lambda!173380))))

(assert (=> bs!860258 (not (= lambda!173394 lambda!173382))))

(assert (=> bs!860259 (not (= lambda!173394 lambda!173389))))

(declare-fun bs!860262 () Bool)

(assert (= bs!860262 (and d!1395243 d!1395239)))

(assert (=> bs!860262 (not (= lambda!173394 lambda!173390))))

(declare-fun bs!860263 () Bool)

(assert (= bs!860263 (and d!1395243 b!4524756)))

(assert (=> bs!860263 (= (= hash!344 (_1!28852 (h!56536 (toList!4348 lm!1477)))) (= lambda!173394 lambda!173267))))

(assert (=> d!1395243 true))

(assert (=> d!1395243 true))

(assert (=> d!1395243 (= (allKeysSameHash!1024 newBucket!178 hash!344 hashF!1107) (forall!10287 newBucket!178 lambda!173394))))

(declare-fun bs!860264 () Bool)

(assert (= bs!860264 d!1395243))

(declare-fun m!5277547 () Bool)

(assert (=> bs!860264 m!5277547))

(assert (=> b!4524748 d!1395243))

(declare-fun bs!860265 () Bool)

(declare-fun d!1395245 () Bool)

(assert (= bs!860265 (and d!1395245 d!1395129)))

(declare-fun lambda!173397 () Int)

(assert (=> bs!860265 (= lambda!173397 lambda!173332)))

(declare-fun bs!860266 () Bool)

(assert (= bs!860266 (and d!1395245 b!4524756)))

(assert (=> bs!860266 (not (= lambda!173397 lambda!173266))))

(declare-fun bs!860267 () Bool)

(assert (= bs!860267 (and d!1395245 d!1395241)))

(assert (=> bs!860267 (= lambda!173397 lambda!173391)))

(declare-fun bs!860268 () Bool)

(assert (= bs!860268 (and d!1395245 d!1395233)))

(assert (=> bs!860268 (not (= lambda!173397 lambda!173386))))

(declare-fun bs!860269 () Bool)

(assert (= bs!860269 (and d!1395245 d!1395087)))

(assert (=> bs!860269 (= lambda!173397 lambda!173312)))

(declare-fun bs!860270 () Bool)

(assert (= bs!860270 (and d!1395245 d!1395115)))

(assert (=> bs!860270 (= lambda!173397 lambda!173327)))

(declare-fun bs!860271 () Bool)

(assert (= bs!860271 (and d!1395245 d!1395089)))

(assert (=> bs!860271 (= lambda!173397 lambda!173318)))

(declare-fun bs!860272 () Bool)

(assert (= bs!860272 (and d!1395245 d!1395071)))

(assert (=> bs!860272 (= lambda!173397 lambda!173310)))

(declare-fun bs!860273 () Bool)

(assert (= bs!860273 (and d!1395245 d!1395099)))

(assert (=> bs!860273 (= lambda!173397 lambda!173319)))

(declare-fun bs!860274 () Bool)

(assert (= bs!860274 (and d!1395245 d!1395039)))

(assert (=> bs!860274 (= lambda!173397 lambda!173270)))

(declare-fun bs!860275 () Bool)

(assert (= bs!860275 (and d!1395245 start!448304)))

(assert (=> bs!860275 (= lambda!173397 lambda!173265)))

(declare-fun bs!860276 () Bool)

(assert (= bs!860276 (and d!1395245 d!1395141)))

(assert (=> bs!860276 (= lambda!173397 lambda!173337)))

(declare-fun bs!860277 () Bool)

(assert (= bs!860277 (and d!1395245 d!1395133)))

(assert (=> bs!860277 (= lambda!173397 lambda!173333)))

(assert (=> d!1395245 (contains!13417 lm!1477 (hash!2837 hashF!1107 key!3287))))

(declare-fun lt!1701682 () Unit!95830)

(declare-fun choose!29626 (ListLongMap!2979 K!12065 Hashable!5565) Unit!95830)

(assert (=> d!1395245 (= lt!1701682 (choose!29626 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1395245 (forall!10285 (toList!4348 lm!1477) lambda!173397)))

(assert (=> d!1395245 (= (lemmaInGenMapThenLongMapContainsHash!244 lm!1477 key!3287 hashF!1107) lt!1701682)))

(declare-fun bs!860278 () Bool)

(assert (= bs!860278 d!1395245))

(assert (=> bs!860278 m!5276673))

(assert (=> bs!860278 m!5276673))

(declare-fun m!5277549 () Bool)

(assert (=> bs!860278 m!5277549))

(declare-fun m!5277551 () Bool)

(assert (=> bs!860278 m!5277551))

(declare-fun m!5277553 () Bool)

(assert (=> bs!860278 m!5277553))

(assert (=> b!4524769 d!1395245))

(declare-fun d!1395247 () Bool)

(declare-fun get!16613 (Option!11137) List!50798)

(assert (=> d!1395247 (= (apply!11907 lm!1477 hash!344) (get!16613 (getValueByKey!1109 (toList!4348 lm!1477) hash!344)))))

(declare-fun bs!860279 () Bool)

(assert (= bs!860279 d!1395247))

(declare-fun m!5277555 () Bool)

(assert (=> bs!860279 m!5277555))

(assert (=> bs!860279 m!5277555))

(declare-fun m!5277557 () Bool)

(assert (=> bs!860279 m!5277557))

(assert (=> b!4524769 d!1395247))

(declare-fun d!1395249 () Bool)

(declare-fun e!2819450 () Bool)

(assert (=> d!1395249 e!2819450))

(declare-fun res!1883970 () Bool)

(assert (=> d!1395249 (=> res!1883970 e!2819450)))

(declare-fun lt!1701686 () Bool)

(assert (=> d!1395249 (= res!1883970 (not lt!1701686))))

(declare-fun lt!1701684 () Bool)

(assert (=> d!1395249 (= lt!1701686 lt!1701684)))

(declare-fun lt!1701685 () Unit!95830)

(declare-fun e!2819451 () Unit!95830)

(assert (=> d!1395249 (= lt!1701685 e!2819451)))

(declare-fun c!772409 () Bool)

(assert (=> d!1395249 (= c!772409 lt!1701684)))

(assert (=> d!1395249 (= lt!1701684 (containsKey!1810 (toList!4348 lm!1477) lt!1701244))))

(assert (=> d!1395249 (= (contains!13417 lm!1477 lt!1701244) lt!1701686)))

(declare-fun b!4525168 () Bool)

(declare-fun lt!1701683 () Unit!95830)

(assert (=> b!4525168 (= e!2819451 lt!1701683)))

(assert (=> b!4525168 (= lt!1701683 (lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (toList!4348 lm!1477) lt!1701244))))

(assert (=> b!4525168 (isDefined!8424 (getValueByKey!1109 (toList!4348 lm!1477) lt!1701244))))

(declare-fun b!4525169 () Bool)

(declare-fun Unit!95895 () Unit!95830)

(assert (=> b!4525169 (= e!2819451 Unit!95895)))

(declare-fun b!4525170 () Bool)

(assert (=> b!4525170 (= e!2819450 (isDefined!8424 (getValueByKey!1109 (toList!4348 lm!1477) lt!1701244)))))

(assert (= (and d!1395249 c!772409) b!4525168))

(assert (= (and d!1395249 (not c!772409)) b!4525169))

(assert (= (and d!1395249 (not res!1883970)) b!4525170))

(declare-fun m!5277559 () Bool)

(assert (=> d!1395249 m!5277559))

(declare-fun m!5277561 () Bool)

(assert (=> b!4525168 m!5277561))

(declare-fun m!5277563 () Bool)

(assert (=> b!4525168 m!5277563))

(assert (=> b!4525168 m!5277563))

(declare-fun m!5277565 () Bool)

(assert (=> b!4525168 m!5277565))

(assert (=> b!4525170 m!5277563))

(assert (=> b!4525170 m!5277563))

(assert (=> b!4525170 m!5277565))

(assert (=> b!4524769 d!1395249))

(declare-fun d!1395251 () Bool)

(declare-fun lt!1701687 () Bool)

(assert (=> d!1395251 (= lt!1701687 (select (content!8382 (toList!4348 lm!1477)) lt!1701258))))

(declare-fun e!2819453 () Bool)

(assert (=> d!1395251 (= lt!1701687 e!2819453)))

(declare-fun res!1883972 () Bool)

(assert (=> d!1395251 (=> (not res!1883972) (not e!2819453))))

(assert (=> d!1395251 (= res!1883972 ((_ is Cons!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395251 (= (contains!13419 (toList!4348 lm!1477) lt!1701258) lt!1701687)))

(declare-fun b!4525171 () Bool)

(declare-fun e!2819452 () Bool)

(assert (=> b!4525171 (= e!2819453 e!2819452)))

(declare-fun res!1883971 () Bool)

(assert (=> b!4525171 (=> res!1883971 e!2819452)))

(assert (=> b!4525171 (= res!1883971 (= (h!56536 (toList!4348 lm!1477)) lt!1701258))))

(declare-fun b!4525172 () Bool)

(assert (=> b!4525172 (= e!2819452 (contains!13419 (t!357761 (toList!4348 lm!1477)) lt!1701258))))

(assert (= (and d!1395251 res!1883972) b!4525171))

(assert (= (and b!4525171 (not res!1883971)) b!4525172))

(declare-fun m!5277567 () Bool)

(assert (=> d!1395251 m!5277567))

(declare-fun m!5277569 () Bool)

(assert (=> d!1395251 m!5277569))

(assert (=> b!4525172 m!5276763))

(assert (=> b!4524769 d!1395251))

(declare-fun b!4525184 () Bool)

(declare-fun e!2819458 () List!50798)

(assert (=> b!4525184 (= e!2819458 Nil!50674)))

(declare-fun b!4525181 () Bool)

(declare-fun e!2819459 () List!50798)

(assert (=> b!4525181 (= e!2819459 (t!357760 lt!1701236))))

(declare-fun d!1395253 () Bool)

(declare-fun lt!1701690 () List!50798)

(assert (=> d!1395253 (not (containsKey!1806 lt!1701690 key!3287))))

(assert (=> d!1395253 (= lt!1701690 e!2819459)))

(declare-fun c!772414 () Bool)

(assert (=> d!1395253 (= c!772414 (and ((_ is Cons!50674) lt!1701236) (= (_1!28851 (h!56535 lt!1701236)) key!3287)))))

(assert (=> d!1395253 (noDuplicateKeys!1170 lt!1701236)))

(assert (=> d!1395253 (= (removePairForKey!797 lt!1701236 key!3287) lt!1701690)))

(declare-fun b!4525182 () Bool)

(assert (=> b!4525182 (= e!2819459 e!2819458)))

(declare-fun c!772415 () Bool)

(assert (=> b!4525182 (= c!772415 ((_ is Cons!50674) lt!1701236))))

(declare-fun b!4525183 () Bool)

(assert (=> b!4525183 (= e!2819458 (Cons!50674 (h!56535 lt!1701236) (removePairForKey!797 (t!357760 lt!1701236) key!3287)))))

(assert (= (and d!1395253 c!772414) b!4525181))

(assert (= (and d!1395253 (not c!772414)) b!4525182))

(assert (= (and b!4525182 c!772415) b!4525183))

(assert (= (and b!4525182 (not c!772415)) b!4525184))

(declare-fun m!5277571 () Bool)

(assert (=> d!1395253 m!5277571))

(declare-fun m!5277573 () Bool)

(assert (=> d!1395253 m!5277573))

(declare-fun m!5277575 () Bool)

(assert (=> b!4525183 m!5277575))

(assert (=> b!4524769 d!1395253))

(declare-fun d!1395255 () Bool)

(assert (=> d!1395255 (contains!13419 (toList!4348 lm!1477) (tuple2!51117 hash!344 lt!1701236))))

(declare-fun lt!1701693 () Unit!95830)

(declare-fun choose!29627 (List!50799 (_ BitVec 64) List!50798) Unit!95830)

(assert (=> d!1395255 (= lt!1701693 (choose!29627 (toList!4348 lm!1477) hash!344 lt!1701236))))

(declare-fun e!2819462 () Bool)

(assert (=> d!1395255 e!2819462))

(declare-fun res!1883975 () Bool)

(assert (=> d!1395255 (=> (not res!1883975) (not e!2819462))))

(assert (=> d!1395255 (= res!1883975 (isStrictlySorted!439 (toList!4348 lm!1477)))))

(assert (=> d!1395255 (= (lemmaGetValueByKeyImpliesContainsTuple!682 (toList!4348 lm!1477) hash!344 lt!1701236) lt!1701693)))

(declare-fun b!4525187 () Bool)

(assert (=> b!4525187 (= e!2819462 (= (getValueByKey!1109 (toList!4348 lm!1477) hash!344) (Some!11136 lt!1701236)))))

(assert (= (and d!1395255 res!1883975) b!4525187))

(declare-fun m!5277577 () Bool)

(assert (=> d!1395255 m!5277577))

(declare-fun m!5277579 () Bool)

(assert (=> d!1395255 m!5277579))

(assert (=> d!1395255 m!5276799))

(assert (=> b!4525187 m!5277555))

(assert (=> b!4524769 d!1395255))

(declare-fun d!1395257 () Bool)

(assert (=> d!1395257 (dynLambda!21175 lambda!173265 lt!1701258)))

(declare-fun lt!1701694 () Unit!95830)

(assert (=> d!1395257 (= lt!1701694 (choose!29616 (toList!4348 lm!1477) lambda!173265 lt!1701258))))

(declare-fun e!2819463 () Bool)

(assert (=> d!1395257 e!2819463))

(declare-fun res!1883976 () Bool)

(assert (=> d!1395257 (=> (not res!1883976) (not e!2819463))))

(assert (=> d!1395257 (= res!1883976 (forall!10285 (toList!4348 lm!1477) lambda!173265))))

(assert (=> d!1395257 (= (forallContained!2538 (toList!4348 lm!1477) lambda!173265 lt!1701258) lt!1701694)))

(declare-fun b!4525188 () Bool)

(assert (=> b!4525188 (= e!2819463 (contains!13419 (toList!4348 lm!1477) lt!1701258))))

(assert (= (and d!1395257 res!1883976) b!4525188))

(declare-fun b_lambda!155625 () Bool)

(assert (=> (not b_lambda!155625) (not d!1395257)))

(declare-fun m!5277581 () Bool)

(assert (=> d!1395257 m!5277581))

(declare-fun m!5277583 () Bool)

(assert (=> d!1395257 m!5277583))

(assert (=> d!1395257 m!5276717))

(assert (=> b!4525188 m!5276705))

(assert (=> b!4524769 d!1395257))

(declare-fun d!1395259 () Bool)

(assert (=> d!1395259 (= (apply!11907 lt!1701251 hash!344) (get!16613 (getValueByKey!1109 (toList!4348 lt!1701251) hash!344)))))

(declare-fun bs!860280 () Bool)

(assert (= bs!860280 d!1395259))

(assert (=> bs!860280 m!5277359))

(assert (=> bs!860280 m!5277359))

(declare-fun m!5277585 () Bool)

(assert (=> bs!860280 m!5277585))

(assert (=> b!4524758 d!1395259))

(declare-fun b!4525193 () Bool)

(declare-fun e!2819466 () Bool)

(declare-fun tp!1338243 () Bool)

(declare-fun tp!1338244 () Bool)

(assert (=> b!4525193 (= e!2819466 (and tp!1338243 tp!1338244))))

(assert (=> b!4524768 (= tp!1338228 e!2819466)))

(assert (= (and b!4524768 ((_ is Cons!50675) (toList!4348 lm!1477))) b!4525193))

(declare-fun tp!1338247 () Bool)

(declare-fun b!4525198 () Bool)

(declare-fun e!2819469 () Bool)

(assert (=> b!4525198 (= e!2819469 (and tp_is_empty!27957 tp_is_empty!27959 tp!1338247))))

(assert (=> b!4524751 (= tp!1338229 e!2819469)))

(assert (= (and b!4524751 ((_ is Cons!50674) (t!357760 newBucket!178))) b!4525198))

(declare-fun b_lambda!155627 () Bool)

(assert (= b_lambda!155597 (or start!448304 b_lambda!155627)))

(declare-fun bs!860281 () Bool)

(declare-fun d!1395261 () Bool)

(assert (= bs!860281 (and d!1395261 start!448304)))

(assert (=> bs!860281 (= (dynLambda!21175 lambda!173265 (h!56536 (toList!4348 lm!1477))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lm!1477)))))))

(declare-fun m!5277587 () Bool)

(assert (=> bs!860281 m!5277587))

(assert (=> b!4524781 d!1395261))

(declare-fun b_lambda!155629 () Bool)

(assert (= b_lambda!155625 (or start!448304 b_lambda!155629)))

(declare-fun bs!860282 () Bool)

(declare-fun d!1395263 () Bool)

(assert (= bs!860282 (and d!1395263 start!448304)))

(assert (=> bs!860282 (= (dynLambda!21175 lambda!173265 lt!1701258) (noDuplicateKeys!1170 (_2!28852 lt!1701258)))))

(declare-fun m!5277589 () Bool)

(assert (=> bs!860282 m!5277589))

(assert (=> d!1395257 d!1395263))

(declare-fun b_lambda!155631 () Bool)

(assert (= b_lambda!155605 (or b!4524756 b_lambda!155631)))

(declare-fun bs!860283 () Bool)

(declare-fun d!1395265 () Bool)

(assert (= bs!860283 (and d!1395265 b!4524756)))

(assert (=> bs!860283 (= (dynLambda!21175 lambda!173266 (h!56536 (toList!4348 lm!1477))) (allKeysSameHash!1024 (_2!28852 (h!56536 (toList!4348 lm!1477))) (_1!28852 (h!56536 (toList!4348 lm!1477))) hashF!1107))))

(declare-fun m!5277591 () Bool)

(assert (=> bs!860283 m!5277591))

(assert (=> d!1395167 d!1395265))

(declare-fun b_lambda!155633 () Bool)

(assert (= b_lambda!155599 (or start!448304 b_lambda!155633)))

(assert (=> d!1395045 d!1395261))

(declare-fun b_lambda!155635 () Bool)

(assert (= b_lambda!155607 (or b!4524756 b_lambda!155635)))

(declare-fun bs!860284 () Bool)

(declare-fun d!1395267 () Bool)

(assert (= bs!860284 (and d!1395267 b!4524756)))

(assert (=> bs!860284 (= (dynLambda!21177 lambda!173267 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))) (= (hash!2837 hashF!1107 (_1!28851 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264))))) (_1!28852 (h!56536 (toList!4348 lm!1477)))))))

(declare-fun m!5277593 () Bool)

(assert (=> bs!860284 m!5277593))

(assert (=> d!1395169 d!1395267))

(check-sat (not b!4524792) (not b!4525025) (not b!4525155) (not d!1395129) (not d!1395253) (not b!4524882) (not d!1395187) (not d!1395153) (not d!1395183) (not bm!315327) (not b!4525095) (not b!4525193) (not b!4525050) (not d!1395155) (not bm!315311) (not bs!860283) (not b!4524913) (not d!1395143) (not d!1395231) (not b!4525170) (not b!4524908) (not b!4525153) (not bs!860284) (not d!1395255) (not bm!315330) (not b!4524916) (not d!1395037) (not d!1395133) (not d!1395141) (not b!4525022) (not b!4525090) (not d!1395031) (not b!4525027) (not b!4525049) (not d!1395167) (not b!4525172) (not b!4525187) (not b!4524903) (not b!4525198) (not b!4524919) (not d!1395241) (not d!1395239) (not d!1395201) (not b!4524932) (not d!1395157) (not b!4525094) (not d!1395169) (not b!4524907) (not d!1395197) (not d!1395163) (not b!4524883) (not b!4524923) tp_is_empty!27959 (not b!4525164) (not b!4524782) (not d!1395045) (not bm!315310) (not b!4524877) (not b!4525168) tp_is_empty!27957 (not b!4525183) (not b!4525021) (not d!1395249) (not d!1395257) (not bs!860282) (not bm!315328) (not b!4524803) (not bm!315332) (not b!4525026) (not d!1395039) (not d!1395085) (not b!4524909) (not b!4525048) (not d!1395233) (not b!4525092) (not d!1395245) (not b!4524917) (not b!4524910) (not d!1395173) (not d!1395117) (not b!4525020) (not d!1395237) (not d!1395243) (not b!4525071) (not bm!315331) (not d!1395071) (not b!4524798) (not d!1395099) (not b!4524951) (not b!4524952) (not d!1395185) (not b!4525096) (not b!4524881) (not b_lambda!155633) (not b!4524797) (not bm!315329) (not bm!315312) (not d!1395033) (not b!4524875) (not b!4525046) (not b_lambda!155629) (not b!4524914) (not b!4524878) (not b!4525045) (not b!4524972) (not d!1395235) (not b!4524924) (not b_lambda!155635) (not d!1395089) (not d!1395083) (not d!1395115) (not b!4524949) (not bs!860281) (not d!1395259) (not b_lambda!155631) (not b!4525188) (not b!4525023) (not d!1395151) (not b!4525162) (not b!4524968) (not b!4525093) (not d!1395087) (not b!4525154) (not b!4524915) (not b!4525052) (not b!4524954) (not b!4525160) (not d!1395049) (not b!4524918) (not d!1395195) (not d!1395251) (not b!4524974) (not b!4525159) (not d!1395139) (not b!4524922) (not b!4524925) (not b!4524820) (not b!4525152) (not d!1395247) (not b!4525161) (not b!4524876) (not b_lambda!155627) (not d!1395047))
(check-sat)
(get-model)

(declare-fun d!1395305 () Bool)

(declare-fun res!1884013 () Bool)

(declare-fun e!2819523 () Bool)

(assert (=> d!1395305 (=> res!1884013 e!2819523)))

(assert (=> d!1395305 (= res!1884013 ((_ is Nil!50674) (toList!4347 lt!1701256)))))

(assert (=> d!1395305 (= (forall!10287 (toList!4347 lt!1701256) lambda!173390) e!2819523)))

(declare-fun b!4525279 () Bool)

(declare-fun e!2819524 () Bool)

(assert (=> b!4525279 (= e!2819523 e!2819524)))

(declare-fun res!1884014 () Bool)

(assert (=> b!4525279 (=> (not res!1884014) (not e!2819524))))

(assert (=> b!4525279 (= res!1884014 (dynLambda!21177 lambda!173390 (h!56535 (toList!4347 lt!1701256))))))

(declare-fun b!4525280 () Bool)

(assert (=> b!4525280 (= e!2819524 (forall!10287 (t!357760 (toList!4347 lt!1701256)) lambda!173390))))

(assert (= (and d!1395305 (not res!1884013)) b!4525279))

(assert (= (and b!4525279 res!1884014) b!4525280))

(declare-fun b_lambda!155643 () Bool)

(assert (=> (not b_lambda!155643) (not b!4525279)))

(declare-fun m!5277657 () Bool)

(assert (=> b!4525279 m!5277657))

(declare-fun m!5277659 () Bool)

(assert (=> b!4525280 m!5277659))

(assert (=> b!4525160 d!1395305))

(declare-fun d!1395307 () Bool)

(assert (=> d!1395307 (= (head!9432 (toList!4348 lt!1701255)) (h!56536 (toList!4348 lt!1701255)))))

(assert (=> d!1395033 d!1395307))

(declare-fun d!1395309 () Bool)

(assert (=> d!1395309 (isDefined!8420 (getValueByKey!1107 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(declare-fun lt!1701717 () Unit!95830)

(declare-fun choose!29628 (List!50798 K!12065) Unit!95830)

(assert (=> d!1395309 (= lt!1701717 (choose!29628 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(assert (=> d!1395309 (invariantList!1025 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))

(assert (=> d!1395309 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287) lt!1701717)))

(declare-fun bs!860288 () Bool)

(assert (= bs!860288 d!1395309))

(assert (=> bs!860288 m!5276985))

(assert (=> bs!860288 m!5276985))

(assert (=> bs!860288 m!5276987))

(declare-fun m!5277661 () Bool)

(assert (=> bs!860288 m!5277661))

(declare-fun m!5277663 () Bool)

(assert (=> bs!860288 m!5277663))

(assert (=> b!4524922 d!1395309))

(declare-fun d!1395311 () Bool)

(declare-fun isEmpty!28690 (Option!11135) Bool)

(assert (=> d!1395311 (= (isDefined!8420 (getValueByKey!1107 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287)) (not (isEmpty!28690 (getValueByKey!1107 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))))

(declare-fun bs!860289 () Bool)

(assert (= bs!860289 d!1395311))

(assert (=> bs!860289 m!5276985))

(declare-fun m!5277665 () Bool)

(assert (=> bs!860289 m!5277665))

(assert (=> b!4524922 d!1395311))

(declare-fun b!4525302 () Bool)

(declare-fun e!2819535 () Option!11135)

(assert (=> b!4525302 (= e!2819535 None!11134)))

(declare-fun d!1395313 () Bool)

(declare-fun c!772446 () Bool)

(assert (=> d!1395313 (= c!772446 (and ((_ is Cons!50674) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= (_1!28851 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) key!3287)))))

(declare-fun e!2819534 () Option!11135)

(assert (=> d!1395313 (= (getValueByKey!1107 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287) e!2819534)))

(declare-fun b!4525299 () Bool)

(assert (=> b!4525299 (= e!2819534 (Some!11134 (_2!28851 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))))

(declare-fun b!4525301 () Bool)

(assert (=> b!4525301 (= e!2819535 (getValueByKey!1107 (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) key!3287))))

(declare-fun b!4525300 () Bool)

(assert (=> b!4525300 (= e!2819534 e!2819535)))

(declare-fun c!772447 () Bool)

(assert (=> b!4525300 (= c!772447 (and ((_ is Cons!50674) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (not (= (_1!28851 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) key!3287))))))

(assert (= (and d!1395313 c!772446) b!4525299))

(assert (= (and d!1395313 (not c!772446)) b!4525300))

(assert (= (and b!4525300 c!772447) b!4525301))

(assert (= (and b!4525300 (not c!772447)) b!4525302))

(declare-fun m!5277679 () Bool)

(assert (=> b!4525301 m!5277679))

(assert (=> b!4524922 d!1395313))

(declare-fun d!1395317 () Bool)

(assert (=> d!1395317 (contains!13420 (getKeysList!472 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) key!3287)))

(declare-fun lt!1701721 () Unit!95830)

(declare-fun choose!29630 (List!50798 K!12065) Unit!95830)

(assert (=> d!1395317 (= lt!1701721 (choose!29630 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(assert (=> d!1395317 (invariantList!1025 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))

(assert (=> d!1395317 (= (lemmaInListThenGetKeysListContains!468 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287) lt!1701721)))

(declare-fun bs!860290 () Bool)

(assert (= bs!860290 d!1395317))

(assert (=> bs!860290 m!5276989))

(assert (=> bs!860290 m!5276989))

(declare-fun m!5277681 () Bool)

(assert (=> bs!860290 m!5277681))

(declare-fun m!5277683 () Bool)

(assert (=> bs!860290 m!5277683))

(assert (=> bs!860290 m!5277663))

(assert (=> b!4524922 d!1395317))

(declare-fun d!1395319 () Bool)

(declare-fun c!772450 () Bool)

(assert (=> d!1395319 (= c!772450 ((_ is Nil!50675) (t!357761 (toList!4348 lm!1477))))))

(declare-fun e!2819544 () (InoxSet tuple2!51116))

(assert (=> d!1395319 (= (content!8382 (t!357761 (toList!4348 lm!1477))) e!2819544)))

(declare-fun b!4525313 () Bool)

(assert (=> b!4525313 (= e!2819544 ((as const (Array tuple2!51116 Bool)) false))))

(declare-fun b!4525314 () Bool)

(assert (=> b!4525314 (= e!2819544 ((_ map or) (store ((as const (Array tuple2!51116 Bool)) false) (h!56536 (t!357761 (toList!4348 lm!1477))) true) (content!8382 (t!357761 (t!357761 (toList!4348 lm!1477))))))))

(assert (= (and d!1395319 c!772450) b!4525313))

(assert (= (and d!1395319 (not c!772450)) b!4525314))

(declare-fun m!5277691 () Bool)

(assert (=> b!4525314 m!5277691))

(declare-fun m!5277693 () Bool)

(assert (=> b!4525314 m!5277693))

(assert (=> d!1395047 d!1395319))

(declare-fun d!1395325 () Bool)

(declare-fun lt!1701724 () Bool)

(assert (=> d!1395325 (= lt!1701724 (select (content!8383 e!2819254) key!3287))))

(declare-fun e!2819553 () Bool)

(assert (=> d!1395325 (= lt!1701724 e!2819553)))

(declare-fun res!1884028 () Bool)

(assert (=> d!1395325 (=> (not res!1884028) (not e!2819553))))

(assert (=> d!1395325 (= res!1884028 ((_ is Cons!50677) e!2819254))))

(assert (=> d!1395325 (= (contains!13420 e!2819254 key!3287) lt!1701724)))

(declare-fun b!4525327 () Bool)

(declare-fun e!2819554 () Bool)

(assert (=> b!4525327 (= e!2819553 e!2819554)))

(declare-fun res!1884027 () Bool)

(assert (=> b!4525327 (=> res!1884027 e!2819554)))

(assert (=> b!4525327 (= res!1884027 (= (h!56540 e!2819254) key!3287))))

(declare-fun b!4525328 () Bool)

(assert (=> b!4525328 (= e!2819554 (contains!13420 (t!357763 e!2819254) key!3287))))

(assert (= (and d!1395325 res!1884028) b!4525327))

(assert (= (and b!4525327 (not res!1884027)) b!4525328))

(declare-fun m!5277695 () Bool)

(assert (=> d!1395325 m!5277695))

(declare-fun m!5277697 () Bool)

(assert (=> d!1395325 m!5277697))

(declare-fun m!5277699 () Bool)

(assert (=> b!4525328 m!5277699))

(assert (=> bm!315310 d!1395325))

(declare-fun d!1395327 () Bool)

(assert (=> d!1395327 (= (head!9432 (toList!4348 lm!1477)) (h!56536 (toList!4348 lm!1477)))))

(assert (=> d!1395155 d!1395327))

(assert (=> b!4525172 d!1395047))

(declare-fun d!1395329 () Bool)

(declare-fun res!1884029 () Bool)

(declare-fun e!2819555 () Bool)

(assert (=> d!1395329 (=> res!1884029 e!2819555)))

(assert (=> d!1395329 (= res!1884029 ((_ is Nil!50674) (toList!4347 lt!1701256)))))

(assert (=> d!1395329 (= (forall!10287 (toList!4347 lt!1701256) (ite c!772407 lambda!173387 lambda!173388)) e!2819555)))

(declare-fun b!4525329 () Bool)

(declare-fun e!2819556 () Bool)

(assert (=> b!4525329 (= e!2819555 e!2819556)))

(declare-fun res!1884030 () Bool)

(assert (=> b!4525329 (=> (not res!1884030) (not e!2819556))))

(assert (=> b!4525329 (= res!1884030 (dynLambda!21177 (ite c!772407 lambda!173387 lambda!173388) (h!56535 (toList!4347 lt!1701256))))))

(declare-fun b!4525330 () Bool)

(assert (=> b!4525330 (= e!2819556 (forall!10287 (t!357760 (toList!4347 lt!1701256)) (ite c!772407 lambda!173387 lambda!173388)))))

(assert (= (and d!1395329 (not res!1884029)) b!4525329))

(assert (= (and b!4525329 res!1884030) b!4525330))

(declare-fun b_lambda!155647 () Bool)

(assert (=> (not b_lambda!155647) (not b!4525329)))

(declare-fun m!5277701 () Bool)

(assert (=> b!4525329 m!5277701))

(declare-fun m!5277703 () Bool)

(assert (=> b!4525330 m!5277703))

(assert (=> bm!315330 d!1395329))

(declare-fun b!4525331 () Bool)

(declare-fun e!2819560 () List!50801)

(assert (=> b!4525331 (= e!2819560 (getKeysList!472 (toList!4347 (extractMap!1226 (toList!4348 lm!1477)))))))

(declare-fun b!4525332 () Bool)

(assert (=> b!4525332 false))

(declare-fun lt!1701729 () Unit!95830)

(declare-fun lt!1701727 () Unit!95830)

(assert (=> b!4525332 (= lt!1701729 lt!1701727)))

(assert (=> b!4525332 (containsKey!1808 (toList!4347 (extractMap!1226 (toList!4348 lm!1477))) key!3287)))

(assert (=> b!4525332 (= lt!1701727 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 (extractMap!1226 (toList!4348 lm!1477))) key!3287))))

(declare-fun e!2819562 () Unit!95830)

(declare-fun Unit!95898 () Unit!95830)

(assert (=> b!4525332 (= e!2819562 Unit!95898)))

(declare-fun b!4525333 () Bool)

(declare-fun e!2819558 () Bool)

(assert (=> b!4525333 (= e!2819558 (contains!13420 (keys!17612 (extractMap!1226 (toList!4348 lm!1477))) key!3287))))

(declare-fun b!4525334 () Bool)

(declare-fun e!2819559 () Bool)

(assert (=> b!4525334 (= e!2819559 e!2819558)))

(declare-fun res!1884033 () Bool)

(assert (=> b!4525334 (=> (not res!1884033) (not e!2819558))))

(assert (=> b!4525334 (= res!1884033 (isDefined!8420 (getValueByKey!1107 (toList!4347 (extractMap!1226 (toList!4348 lm!1477))) key!3287)))))

(declare-fun b!4525335 () Bool)

(declare-fun Unit!95899 () Unit!95830)

(assert (=> b!4525335 (= e!2819562 Unit!95899)))

(declare-fun b!4525336 () Bool)

(declare-fun e!2819557 () Unit!95830)

(assert (=> b!4525336 (= e!2819557 e!2819562)))

(declare-fun c!772457 () Bool)

(declare-fun call!315347 () Bool)

(assert (=> b!4525336 (= c!772457 call!315347)))

(declare-fun d!1395331 () Bool)

(assert (=> d!1395331 e!2819559))

(declare-fun res!1884032 () Bool)

(assert (=> d!1395331 (=> res!1884032 e!2819559)))

(declare-fun e!2819561 () Bool)

(assert (=> d!1395331 (= res!1884032 e!2819561)))

(declare-fun res!1884031 () Bool)

(assert (=> d!1395331 (=> (not res!1884031) (not e!2819561))))

(declare-fun lt!1701726 () Bool)

(assert (=> d!1395331 (= res!1884031 (not lt!1701726))))

(declare-fun lt!1701728 () Bool)

(assert (=> d!1395331 (= lt!1701726 lt!1701728)))

(declare-fun lt!1701725 () Unit!95830)

(assert (=> d!1395331 (= lt!1701725 e!2819557)))

(declare-fun c!772455 () Bool)

(assert (=> d!1395331 (= c!772455 lt!1701728)))

(assert (=> d!1395331 (= lt!1701728 (containsKey!1808 (toList!4347 (extractMap!1226 (toList!4348 lm!1477))) key!3287))))

(assert (=> d!1395331 (= (contains!13418 (extractMap!1226 (toList!4348 lm!1477)) key!3287) lt!1701726)))

(declare-fun b!4525337 () Bool)

(declare-fun lt!1701731 () Unit!95830)

(assert (=> b!4525337 (= e!2819557 lt!1701731)))

(declare-fun lt!1701732 () Unit!95830)

(assert (=> b!4525337 (= lt!1701732 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 (extractMap!1226 (toList!4348 lm!1477))) key!3287))))

(assert (=> b!4525337 (isDefined!8420 (getValueByKey!1107 (toList!4347 (extractMap!1226 (toList!4348 lm!1477))) key!3287))))

(declare-fun lt!1701730 () Unit!95830)

(assert (=> b!4525337 (= lt!1701730 lt!1701732)))

(assert (=> b!4525337 (= lt!1701731 (lemmaInListThenGetKeysListContains!468 (toList!4347 (extractMap!1226 (toList!4348 lm!1477))) key!3287))))

(assert (=> b!4525337 call!315347))

(declare-fun b!4525338 () Bool)

(assert (=> b!4525338 (= e!2819561 (not (contains!13420 (keys!17612 (extractMap!1226 (toList!4348 lm!1477))) key!3287)))))

(declare-fun b!4525339 () Bool)

(assert (=> b!4525339 (= e!2819560 (keys!17612 (extractMap!1226 (toList!4348 lm!1477))))))

(declare-fun bm!315342 () Bool)

(assert (=> bm!315342 (= call!315347 (contains!13420 e!2819560 key!3287))))

(declare-fun c!772456 () Bool)

(assert (=> bm!315342 (= c!772456 c!772455)))

(assert (= (and d!1395331 c!772455) b!4525337))

(assert (= (and d!1395331 (not c!772455)) b!4525336))

(assert (= (and b!4525336 c!772457) b!4525332))

(assert (= (and b!4525336 (not c!772457)) b!4525335))

(assert (= (or b!4525337 b!4525336) bm!315342))

(assert (= (and bm!315342 c!772456) b!4525331))

(assert (= (and bm!315342 (not c!772456)) b!4525339))

(assert (= (and d!1395331 res!1884031) b!4525338))

(assert (= (and d!1395331 (not res!1884032)) b!4525334))

(assert (= (and b!4525334 res!1884033) b!4525333))

(declare-fun m!5277707 () Bool)

(assert (=> bm!315342 m!5277707))

(declare-fun m!5277709 () Bool)

(assert (=> b!4525334 m!5277709))

(assert (=> b!4525334 m!5277709))

(declare-fun m!5277713 () Bool)

(assert (=> b!4525334 m!5277713))

(declare-fun m!5277715 () Bool)

(assert (=> b!4525331 m!5277715))

(assert (=> b!4525339 m!5276755))

(declare-fun m!5277717 () Bool)

(assert (=> b!4525339 m!5277717))

(declare-fun m!5277719 () Bool)

(assert (=> b!4525332 m!5277719))

(declare-fun m!5277721 () Bool)

(assert (=> b!4525332 m!5277721))

(declare-fun m!5277723 () Bool)

(assert (=> b!4525337 m!5277723))

(assert (=> b!4525337 m!5277709))

(assert (=> b!4525337 m!5277709))

(assert (=> b!4525337 m!5277713))

(declare-fun m!5277725 () Bool)

(assert (=> b!4525337 m!5277725))

(assert (=> b!4525333 m!5276755))

(assert (=> b!4525333 m!5277717))

(assert (=> b!4525333 m!5277717))

(declare-fun m!5277727 () Bool)

(assert (=> b!4525333 m!5277727))

(assert (=> d!1395331 m!5277719))

(assert (=> b!4525338 m!5276755))

(assert (=> b!4525338 m!5277717))

(assert (=> b!4525338 m!5277717))

(assert (=> b!4525338 m!5277727))

(assert (=> d!1395039 d!1395331))

(assert (=> d!1395039 d!1395071))

(declare-fun d!1395339 () Bool)

(assert (=> d!1395339 (not (contains!13418 (extractMap!1226 (toList!4348 lm!1477)) key!3287))))

(assert (=> d!1395339 true))

(declare-fun _$26!386 () Unit!95830)

(assert (=> d!1395339 (= (choose!29615 lm!1477 key!3287 hashF!1107) _$26!386)))

(declare-fun bs!860292 () Bool)

(assert (= bs!860292 d!1395339))

(assert (=> bs!860292 m!5276755))

(assert (=> bs!860292 m!5276755))

(assert (=> bs!860292 m!5276801))

(assert (=> d!1395039 d!1395339))

(declare-fun d!1395345 () Bool)

(declare-fun res!1884049 () Bool)

(declare-fun e!2819576 () Bool)

(assert (=> d!1395345 (=> res!1884049 e!2819576)))

(assert (=> d!1395345 (= res!1884049 ((_ is Nil!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395345 (= (forall!10285 (toList!4348 lm!1477) lambda!173270) e!2819576)))

(declare-fun b!4525365 () Bool)

(declare-fun e!2819577 () Bool)

(assert (=> b!4525365 (= e!2819576 e!2819577)))

(declare-fun res!1884050 () Bool)

(assert (=> b!4525365 (=> (not res!1884050) (not e!2819577))))

(assert (=> b!4525365 (= res!1884050 (dynLambda!21175 lambda!173270 (h!56536 (toList!4348 lm!1477))))))

(declare-fun b!4525366 () Bool)

(assert (=> b!4525366 (= e!2819577 (forall!10285 (t!357761 (toList!4348 lm!1477)) lambda!173270))))

(assert (= (and d!1395345 (not res!1884049)) b!4525365))

(assert (= (and b!4525365 res!1884050) b!4525366))

(declare-fun b_lambda!155649 () Bool)

(assert (=> (not b_lambda!155649) (not b!4525365)))

(declare-fun m!5277753 () Bool)

(assert (=> b!4525365 m!5277753))

(declare-fun m!5277755 () Bool)

(assert (=> b!4525366 m!5277755))

(assert (=> d!1395039 d!1395345))

(declare-fun d!1395347 () Bool)

(declare-fun noDuplicatedKeys!266 (List!50798) Bool)

(assert (=> d!1395347 (= (invariantList!1025 (toList!4347 lt!1701431)) (noDuplicatedKeys!266 (toList!4347 lt!1701431)))))

(declare-fun bs!860294 () Bool)

(assert (= bs!860294 d!1395347))

(declare-fun m!5277763 () Bool)

(assert (=> bs!860294 m!5277763))

(assert (=> d!1395087 d!1395347))

(declare-fun d!1395353 () Bool)

(declare-fun res!1884054 () Bool)

(declare-fun e!2819585 () Bool)

(assert (=> d!1395353 (=> res!1884054 e!2819585)))

(assert (=> d!1395353 (= res!1884054 ((_ is Nil!50675) (t!357761 (toList!4348 lm!1477))))))

(assert (=> d!1395353 (= (forall!10285 (t!357761 (toList!4348 lm!1477)) lambda!173312) e!2819585)))

(declare-fun b!4525378 () Bool)

(declare-fun e!2819586 () Bool)

(assert (=> b!4525378 (= e!2819585 e!2819586)))

(declare-fun res!1884055 () Bool)

(assert (=> b!4525378 (=> (not res!1884055) (not e!2819586))))

(assert (=> b!4525378 (= res!1884055 (dynLambda!21175 lambda!173312 (h!56536 (t!357761 (toList!4348 lm!1477)))))))

(declare-fun b!4525379 () Bool)

(assert (=> b!4525379 (= e!2819586 (forall!10285 (t!357761 (t!357761 (toList!4348 lm!1477))) lambda!173312))))

(assert (= (and d!1395353 (not res!1884054)) b!4525378))

(assert (= (and b!4525378 res!1884055) b!4525379))

(declare-fun b_lambda!155651 () Bool)

(assert (=> (not b_lambda!155651) (not b!4525378)))

(declare-fun m!5277765 () Bool)

(assert (=> b!4525378 m!5277765))

(declare-fun m!5277767 () Bool)

(assert (=> b!4525379 m!5277767))

(assert (=> d!1395087 d!1395353))

(declare-fun d!1395355 () Bool)

(declare-fun e!2819587 () Bool)

(assert (=> d!1395355 e!2819587))

(declare-fun res!1884056 () Bool)

(assert (=> d!1395355 (=> res!1884056 e!2819587)))

(declare-fun lt!1701749 () Bool)

(assert (=> d!1395355 (= res!1884056 (not lt!1701749))))

(declare-fun lt!1701747 () Bool)

(assert (=> d!1395355 (= lt!1701749 lt!1701747)))

(declare-fun lt!1701748 () Unit!95830)

(declare-fun e!2819588 () Unit!95830)

(assert (=> d!1395355 (= lt!1701748 e!2819588)))

(declare-fun c!772466 () Bool)

(assert (=> d!1395355 (= c!772466 lt!1701747)))

(assert (=> d!1395355 (= lt!1701747 (containsKey!1810 (toList!4348 lt!1701533) (_1!28852 lt!1701243)))))

(assert (=> d!1395355 (= (contains!13417 lt!1701533 (_1!28852 lt!1701243)) lt!1701749)))

(declare-fun b!4525380 () Bool)

(declare-fun lt!1701746 () Unit!95830)

(assert (=> b!4525380 (= e!2819588 lt!1701746)))

(assert (=> b!4525380 (= lt!1701746 (lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (toList!4348 lt!1701533) (_1!28852 lt!1701243)))))

(assert (=> b!4525380 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701533) (_1!28852 lt!1701243)))))

(declare-fun b!4525381 () Bool)

(declare-fun Unit!95900 () Unit!95830)

(assert (=> b!4525381 (= e!2819588 Unit!95900)))

(declare-fun b!4525382 () Bool)

(assert (=> b!4525382 (= e!2819587 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701533) (_1!28852 lt!1701243))))))

(assert (= (and d!1395355 c!772466) b!4525380))

(assert (= (and d!1395355 (not c!772466)) b!4525381))

(assert (= (and d!1395355 (not res!1884056)) b!4525382))

(declare-fun m!5277775 () Bool)

(assert (=> d!1395355 m!5277775))

(declare-fun m!5277779 () Bool)

(assert (=> b!4525380 m!5277779))

(assert (=> b!4525380 m!5277275))

(assert (=> b!4525380 m!5277275))

(declare-fun m!5277785 () Bool)

(assert (=> b!4525380 m!5277785))

(assert (=> b!4525382 m!5277275))

(assert (=> b!4525382 m!5277275))

(assert (=> b!4525382 m!5277785))

(assert (=> d!1395143 d!1395355))

(declare-fun b!4525405 () Bool)

(declare-fun e!2819602 () Option!11137)

(assert (=> b!4525405 (= e!2819602 (Some!11136 (_2!28852 (h!56536 lt!1701532))))))

(declare-fun d!1395357 () Bool)

(declare-fun c!772475 () Bool)

(assert (=> d!1395357 (= c!772475 (and ((_ is Cons!50675) lt!1701532) (= (_1!28852 (h!56536 lt!1701532)) (_1!28852 lt!1701243))))))

(assert (=> d!1395357 (= (getValueByKey!1109 lt!1701532 (_1!28852 lt!1701243)) e!2819602)))

(declare-fun b!4525406 () Bool)

(declare-fun e!2819603 () Option!11137)

(assert (=> b!4525406 (= e!2819602 e!2819603)))

(declare-fun c!772476 () Bool)

(assert (=> b!4525406 (= c!772476 (and ((_ is Cons!50675) lt!1701532) (not (= (_1!28852 (h!56536 lt!1701532)) (_1!28852 lt!1701243)))))))

(declare-fun b!4525407 () Bool)

(assert (=> b!4525407 (= e!2819603 (getValueByKey!1109 (t!357761 lt!1701532) (_1!28852 lt!1701243)))))

(declare-fun b!4525408 () Bool)

(assert (=> b!4525408 (= e!2819603 None!11136)))

(assert (= (and d!1395357 c!772475) b!4525405))

(assert (= (and d!1395357 (not c!772475)) b!4525406))

(assert (= (and b!4525406 c!772476) b!4525407))

(assert (= (and b!4525406 (not c!772476)) b!4525408))

(declare-fun m!5277815 () Bool)

(assert (=> b!4525407 m!5277815))

(assert (=> d!1395143 d!1395357))

(declare-fun d!1395363 () Bool)

(assert (=> d!1395363 (= (getValueByKey!1109 lt!1701532 (_1!28852 lt!1701243)) (Some!11136 (_2!28852 lt!1701243)))))

(declare-fun lt!1701781 () Unit!95830)

(declare-fun choose!29632 (List!50799 (_ BitVec 64) List!50798) Unit!95830)

(assert (=> d!1395363 (= lt!1701781 (choose!29632 lt!1701532 (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))

(declare-fun e!2819606 () Bool)

(assert (=> d!1395363 e!2819606))

(declare-fun res!1884067 () Bool)

(assert (=> d!1395363 (=> (not res!1884067) (not e!2819606))))

(assert (=> d!1395363 (= res!1884067 (isStrictlySorted!439 lt!1701532))))

(assert (=> d!1395363 (= (lemmaContainsTupThenGetReturnValue!690 lt!1701532 (_1!28852 lt!1701243) (_2!28852 lt!1701243)) lt!1701781)))

(declare-fun b!4525413 () Bool)

(declare-fun res!1884068 () Bool)

(assert (=> b!4525413 (=> (not res!1884068) (not e!2819606))))

(assert (=> b!4525413 (= res!1884068 (containsKey!1810 lt!1701532 (_1!28852 lt!1701243)))))

(declare-fun b!4525414 () Bool)

(assert (=> b!4525414 (= e!2819606 (contains!13419 lt!1701532 (tuple2!51117 (_1!28852 lt!1701243) (_2!28852 lt!1701243))))))

(assert (= (and d!1395363 res!1884067) b!4525413))

(assert (= (and b!4525413 res!1884068) b!4525414))

(assert (=> d!1395363 m!5277269))

(declare-fun m!5277817 () Bool)

(assert (=> d!1395363 m!5277817))

(declare-fun m!5277819 () Bool)

(assert (=> d!1395363 m!5277819))

(declare-fun m!5277821 () Bool)

(assert (=> b!4525413 m!5277821))

(declare-fun m!5277823 () Bool)

(assert (=> b!4525414 m!5277823))

(assert (=> d!1395143 d!1395363))

(declare-fun b!4525439 () Bool)

(declare-fun e!2819622 () List!50799)

(declare-fun call!315361 () List!50799)

(assert (=> b!4525439 (= e!2819622 call!315361)))

(declare-fun b!4525440 () Bool)

(declare-fun res!1884077 () Bool)

(declare-fun e!2819621 () Bool)

(assert (=> b!4525440 (=> (not res!1884077) (not e!2819621))))

(declare-fun lt!1701792 () List!50799)

(assert (=> b!4525440 (= res!1884077 (containsKey!1810 lt!1701792 (_1!28852 lt!1701243)))))

(declare-fun b!4525441 () Bool)

(declare-fun e!2819623 () List!50799)

(assert (=> b!4525441 (= e!2819623 (insertStrictlySorted!416 (t!357761 (toList!4348 lt!1701251)) (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))

(declare-fun b!4525442 () Bool)

(assert (=> b!4525442 (= e!2819622 call!315361)))

(declare-fun b!4525443 () Bool)

(assert (=> b!4525443 (= e!2819621 (contains!13419 lt!1701792 (tuple2!51117 (_1!28852 lt!1701243) (_2!28852 lt!1701243))))))

(declare-fun bm!315355 () Bool)

(declare-fun call!315359 () List!50799)

(declare-fun call!315360 () List!50799)

(assert (=> bm!315355 (= call!315359 call!315360)))

(declare-fun b!4525444 () Bool)

(declare-fun e!2819619 () List!50799)

(assert (=> b!4525444 (= e!2819619 call!315359)))

(declare-fun b!4525445 () Bool)

(declare-fun e!2819620 () List!50799)

(assert (=> b!4525445 (= e!2819620 e!2819619)))

(declare-fun c!772487 () Bool)

(assert (=> b!4525445 (= c!772487 (and ((_ is Cons!50675) (toList!4348 lt!1701251)) (= (_1!28852 (h!56536 (toList!4348 lt!1701251))) (_1!28852 lt!1701243))))))

(declare-fun b!4525446 () Bool)

(declare-fun c!772486 () Bool)

(assert (=> b!4525446 (= e!2819623 (ite c!772487 (t!357761 (toList!4348 lt!1701251)) (ite c!772486 (Cons!50675 (h!56536 (toList!4348 lt!1701251)) (t!357761 (toList!4348 lt!1701251))) Nil!50675)))))

(declare-fun bm!315354 () Bool)

(declare-fun c!772488 () Bool)

(declare-fun $colon$colon!944 (List!50799 tuple2!51116) List!50799)

(assert (=> bm!315354 (= call!315360 ($colon$colon!944 e!2819623 (ite c!772488 (h!56536 (toList!4348 lt!1701251)) (tuple2!51117 (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))))

(declare-fun c!772485 () Bool)

(assert (=> bm!315354 (= c!772485 c!772488)))

(declare-fun d!1395365 () Bool)

(assert (=> d!1395365 e!2819621))

(declare-fun res!1884078 () Bool)

(assert (=> d!1395365 (=> (not res!1884078) (not e!2819621))))

(assert (=> d!1395365 (= res!1884078 (isStrictlySorted!439 lt!1701792))))

(assert (=> d!1395365 (= lt!1701792 e!2819620)))

(assert (=> d!1395365 (= c!772488 (and ((_ is Cons!50675) (toList!4348 lt!1701251)) (bvslt (_1!28852 (h!56536 (toList!4348 lt!1701251))) (_1!28852 lt!1701243))))))

(assert (=> d!1395365 (isStrictlySorted!439 (toList!4348 lt!1701251))))

(assert (=> d!1395365 (= (insertStrictlySorted!416 (toList!4348 lt!1701251) (_1!28852 lt!1701243) (_2!28852 lt!1701243)) lt!1701792)))

(declare-fun b!4525447 () Bool)

(assert (=> b!4525447 (= c!772486 (and ((_ is Cons!50675) (toList!4348 lt!1701251)) (bvsgt (_1!28852 (h!56536 (toList!4348 lt!1701251))) (_1!28852 lt!1701243))))))

(assert (=> b!4525447 (= e!2819619 e!2819622)))

(declare-fun b!4525448 () Bool)

(assert (=> b!4525448 (= e!2819620 call!315360)))

(declare-fun bm!315356 () Bool)

(assert (=> bm!315356 (= call!315361 call!315359)))

(assert (= (and d!1395365 c!772488) b!4525448))

(assert (= (and d!1395365 (not c!772488)) b!4525445))

(assert (= (and b!4525445 c!772487) b!4525444))

(assert (= (and b!4525445 (not c!772487)) b!4525447))

(assert (= (and b!4525447 c!772486) b!4525439))

(assert (= (and b!4525447 (not c!772486)) b!4525442))

(assert (= (or b!4525439 b!4525442) bm!315356))

(assert (= (or b!4525444 bm!315356) bm!315355))

(assert (= (or b!4525448 bm!315355) bm!315354))

(assert (= (and bm!315354 c!772485) b!4525441))

(assert (= (and bm!315354 (not c!772485)) b!4525446))

(assert (= (and d!1395365 res!1884078) b!4525440))

(assert (= (and b!4525440 res!1884077) b!4525443))

(declare-fun m!5277865 () Bool)

(assert (=> b!4525441 m!5277865))

(declare-fun m!5277871 () Bool)

(assert (=> b!4525443 m!5277871))

(declare-fun m!5277875 () Bool)

(assert (=> b!4525440 m!5277875))

(declare-fun m!5277877 () Bool)

(assert (=> bm!315354 m!5277877))

(declare-fun m!5277879 () Bool)

(assert (=> d!1395365 m!5277879))

(declare-fun m!5277881 () Bool)

(assert (=> d!1395365 m!5277881))

(assert (=> d!1395143 d!1395365))

(declare-fun b!4525502 () Bool)

(assert (=> b!4525502 true))

(declare-fun bs!860338 () Bool)

(declare-fun b!4525501 () Bool)

(assert (= bs!860338 (and b!4525501 b!4525502)))

(declare-fun lambda!173422 () Int)

(declare-fun lambda!173421 () Int)

(assert (=> bs!860338 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248))) (t!357760 (toList!4347 lt!1701248))) (= lambda!173422 lambda!173421))))

(assert (=> b!4525501 true))

(declare-fun bs!860339 () Bool)

(declare-fun b!4525495 () Bool)

(assert (= bs!860339 (and b!4525495 b!4525502)))

(declare-fun lambda!173423 () Int)

(assert (=> bs!860339 (= (= (toList!4347 lt!1701248) (t!357760 (toList!4347 lt!1701248))) (= lambda!173423 lambda!173421))))

(declare-fun bs!860340 () Bool)

(assert (= bs!860340 (and b!4525495 b!4525501)))

(assert (=> bs!860340 (= (= (toList!4347 lt!1701248) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173423 lambda!173422))))

(assert (=> b!4525495 true))

(declare-fun b!4525494 () Bool)

(declare-fun e!2819654 () Unit!95830)

(declare-fun Unit!95901 () Unit!95830)

(assert (=> b!4525494 (= e!2819654 Unit!95901)))

(declare-fun res!1884104 () Bool)

(declare-fun e!2819656 () Bool)

(assert (=> b!4525495 (=> (not res!1884104) (not e!2819656))))

(declare-fun lt!1701824 () List!50801)

(declare-fun forall!10289 (List!50801 Int) Bool)

(assert (=> b!4525495 (= res!1884104 (forall!10289 lt!1701824 lambda!173423))))

(declare-fun b!4525496 () Bool)

(declare-fun res!1884103 () Bool)

(assert (=> b!4525496 (=> (not res!1884103) (not e!2819656))))

(declare-fun length!360 (List!50801) Int)

(declare-fun length!361 (List!50798) Int)

(assert (=> b!4525496 (= res!1884103 (= (length!360 lt!1701824) (length!361 (toList!4347 lt!1701248))))))

(declare-fun b!4525498 () Bool)

(declare-fun e!2819653 () List!50801)

(assert (=> b!4525498 (= e!2819653 Nil!50677)))

(declare-fun lambda!173424 () Int)

(declare-fun b!4525499 () Bool)

(declare-fun map!11148 (List!50798 Int) List!50801)

(assert (=> b!4525499 (= e!2819656 (= (content!8383 lt!1701824) (content!8383 (map!11148 (toList!4347 lt!1701248) lambda!173424))))))

(declare-fun b!4525500 () Bool)

(declare-fun e!2819655 () Unit!95830)

(declare-fun Unit!95902 () Unit!95830)

(assert (=> b!4525500 (= e!2819655 Unit!95902)))

(declare-fun b!4525497 () Bool)

(assert (=> b!4525497 false))

(declare-fun Unit!95904 () Unit!95830)

(assert (=> b!4525497 (= e!2819655 Unit!95904)))

(declare-fun d!1395371 () Bool)

(assert (=> d!1395371 e!2819656))

(declare-fun res!1884105 () Bool)

(assert (=> d!1395371 (=> (not res!1884105) (not e!2819656))))

(declare-fun noDuplicate!752 (List!50801) Bool)

(assert (=> d!1395371 (= res!1884105 (noDuplicate!752 lt!1701824))))

(assert (=> d!1395371 (= lt!1701824 e!2819653)))

(declare-fun c!772499 () Bool)

(assert (=> d!1395371 (= c!772499 ((_ is Cons!50674) (toList!4347 lt!1701248)))))

(assert (=> d!1395371 (invariantList!1025 (toList!4347 lt!1701248))))

(assert (=> d!1395371 (= (getKeysList!472 (toList!4347 lt!1701248)) lt!1701824)))

(assert (=> b!4525501 (= e!2819653 (Cons!50677 (_1!28851 (h!56535 (toList!4347 lt!1701248))) (getKeysList!472 (t!357760 (toList!4347 lt!1701248)))))))

(declare-fun c!772500 () Bool)

(assert (=> b!4525501 (= c!772500 (containsKey!1808 (t!357760 (toList!4347 lt!1701248)) (_1!28851 (h!56535 (toList!4347 lt!1701248)))))))

(declare-fun lt!1701823 () Unit!95830)

(assert (=> b!4525501 (= lt!1701823 e!2819655)))

(declare-fun c!772501 () Bool)

(assert (=> b!4525501 (= c!772501 (contains!13420 (getKeysList!472 (t!357760 (toList!4347 lt!1701248))) (_1!28851 (h!56535 (toList!4347 lt!1701248)))))))

(declare-fun lt!1701827 () Unit!95830)

(assert (=> b!4525501 (= lt!1701827 e!2819654)))

(declare-fun lt!1701821 () List!50801)

(assert (=> b!4525501 (= lt!1701821 (getKeysList!472 (t!357760 (toList!4347 lt!1701248))))))

(declare-fun lt!1701825 () Unit!95830)

(declare-fun lemmaForallContainsAddHeadPreserves!172 (List!50798 List!50801 tuple2!51114) Unit!95830)

(assert (=> b!4525501 (= lt!1701825 (lemmaForallContainsAddHeadPreserves!172 (t!357760 (toList!4347 lt!1701248)) lt!1701821 (h!56535 (toList!4347 lt!1701248))))))

(assert (=> b!4525501 (forall!10289 lt!1701821 lambda!173422)))

(declare-fun lt!1701822 () Unit!95830)

(assert (=> b!4525501 (= lt!1701822 lt!1701825)))

(assert (=> b!4525502 false))

(declare-fun lt!1701826 () Unit!95830)

(declare-fun forallContained!2540 (List!50801 Int K!12065) Unit!95830)

(assert (=> b!4525502 (= lt!1701826 (forallContained!2540 (getKeysList!472 (t!357760 (toList!4347 lt!1701248))) lambda!173421 (_1!28851 (h!56535 (toList!4347 lt!1701248)))))))

(declare-fun Unit!95906 () Unit!95830)

(assert (=> b!4525502 (= e!2819654 Unit!95906)))

(assert (= (and d!1395371 c!772499) b!4525501))

(assert (= (and d!1395371 (not c!772499)) b!4525498))

(assert (= (and b!4525501 c!772500) b!4525497))

(assert (= (and b!4525501 (not c!772500)) b!4525500))

(assert (= (and b!4525501 c!772501) b!4525502))

(assert (= (and b!4525501 (not c!772501)) b!4525494))

(assert (= (and d!1395371 res!1884105) b!4525496))

(assert (= (and b!4525496 res!1884103) b!4525495))

(assert (= (and b!4525495 res!1884104) b!4525499))

(declare-fun m!5277933 () Bool)

(assert (=> b!4525496 m!5277933))

(declare-fun m!5277935 () Bool)

(assert (=> b!4525496 m!5277935))

(declare-fun m!5277937 () Bool)

(assert (=> b!4525499 m!5277937))

(declare-fun m!5277939 () Bool)

(assert (=> b!4525499 m!5277939))

(assert (=> b!4525499 m!5277939))

(declare-fun m!5277941 () Bool)

(assert (=> b!4525499 m!5277941))

(declare-fun m!5277943 () Bool)

(assert (=> b!4525501 m!5277943))

(declare-fun m!5277945 () Bool)

(assert (=> b!4525501 m!5277945))

(assert (=> b!4525501 m!5277945))

(declare-fun m!5277947 () Bool)

(assert (=> b!4525501 m!5277947))

(declare-fun m!5277949 () Bool)

(assert (=> b!4525501 m!5277949))

(declare-fun m!5277951 () Bool)

(assert (=> b!4525501 m!5277951))

(assert (=> b!4525502 m!5277945))

(assert (=> b!4525502 m!5277945))

(declare-fun m!5277957 () Bool)

(assert (=> b!4525502 m!5277957))

(declare-fun m!5277959 () Bool)

(assert (=> b!4525495 m!5277959))

(declare-fun m!5277961 () Bool)

(assert (=> d!1395371 m!5277961))

(declare-fun m!5277963 () Bool)

(assert (=> d!1395371 m!5277963))

(assert (=> b!4524907 d!1395371))

(declare-fun d!1395405 () Bool)

(declare-fun e!2819657 () Bool)

(assert (=> d!1395405 e!2819657))

(declare-fun res!1884106 () Bool)

(assert (=> d!1395405 (=> res!1884106 e!2819657)))

(declare-fun lt!1701834 () Bool)

(assert (=> d!1395405 (= res!1884106 (not lt!1701834))))

(declare-fun lt!1701832 () Bool)

(assert (=> d!1395405 (= lt!1701834 lt!1701832)))

(declare-fun lt!1701833 () Unit!95830)

(declare-fun e!2819658 () Unit!95830)

(assert (=> d!1395405 (= lt!1701833 e!2819658)))

(declare-fun c!772502 () Bool)

(assert (=> d!1395405 (= c!772502 lt!1701832)))

(assert (=> d!1395405 (= lt!1701832 (containsKey!1810 (toList!4348 lt!1701574) (_1!28852 lt!1701242)))))

(assert (=> d!1395405 (= (contains!13417 lt!1701574 (_1!28852 lt!1701242)) lt!1701834)))

(declare-fun b!4525505 () Bool)

(declare-fun lt!1701831 () Unit!95830)

(assert (=> b!4525505 (= e!2819658 lt!1701831)))

(assert (=> b!4525505 (= lt!1701831 (lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (toList!4348 lt!1701574) (_1!28852 lt!1701242)))))

(assert (=> b!4525505 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701574) (_1!28852 lt!1701242)))))

(declare-fun b!4525506 () Bool)

(declare-fun Unit!95907 () Unit!95830)

(assert (=> b!4525506 (= e!2819658 Unit!95907)))

(declare-fun b!4525507 () Bool)

(assert (=> b!4525507 (= e!2819657 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701574) (_1!28852 lt!1701242))))))

(assert (= (and d!1395405 c!772502) b!4525505))

(assert (= (and d!1395405 (not c!772502)) b!4525506))

(assert (= (and d!1395405 (not res!1884106)) b!4525507))

(declare-fun m!5277965 () Bool)

(assert (=> d!1395405 m!5277965))

(declare-fun m!5277967 () Bool)

(assert (=> b!4525505 m!5277967))

(assert (=> b!4525505 m!5277389))

(assert (=> b!4525505 m!5277389))

(declare-fun m!5277969 () Bool)

(assert (=> b!4525505 m!5277969))

(assert (=> b!4525507 m!5277389))

(assert (=> b!4525507 m!5277389))

(assert (=> b!4525507 m!5277969))

(assert (=> d!1395187 d!1395405))

(declare-fun b!4525508 () Bool)

(declare-fun e!2819659 () Option!11137)

(assert (=> b!4525508 (= e!2819659 (Some!11136 (_2!28852 (h!56536 lt!1701573))))))

(declare-fun d!1395407 () Bool)

(declare-fun c!772503 () Bool)

(assert (=> d!1395407 (= c!772503 (and ((_ is Cons!50675) lt!1701573) (= (_1!28852 (h!56536 lt!1701573)) (_1!28852 lt!1701242))))))

(assert (=> d!1395407 (= (getValueByKey!1109 lt!1701573 (_1!28852 lt!1701242)) e!2819659)))

(declare-fun b!4525509 () Bool)

(declare-fun e!2819660 () Option!11137)

(assert (=> b!4525509 (= e!2819659 e!2819660)))

(declare-fun c!772504 () Bool)

(assert (=> b!4525509 (= c!772504 (and ((_ is Cons!50675) lt!1701573) (not (= (_1!28852 (h!56536 lt!1701573)) (_1!28852 lt!1701242)))))))

(declare-fun b!4525510 () Bool)

(assert (=> b!4525510 (= e!2819660 (getValueByKey!1109 (t!357761 lt!1701573) (_1!28852 lt!1701242)))))

(declare-fun b!4525511 () Bool)

(assert (=> b!4525511 (= e!2819660 None!11136)))

(assert (= (and d!1395407 c!772503) b!4525508))

(assert (= (and d!1395407 (not c!772503)) b!4525509))

(assert (= (and b!4525509 c!772504) b!4525510))

(assert (= (and b!4525509 (not c!772504)) b!4525511))

(declare-fun m!5277971 () Bool)

(assert (=> b!4525510 m!5277971))

(assert (=> d!1395187 d!1395407))

(declare-fun d!1395409 () Bool)

(assert (=> d!1395409 (= (getValueByKey!1109 lt!1701573 (_1!28852 lt!1701242)) (Some!11136 (_2!28852 lt!1701242)))))

(declare-fun lt!1701835 () Unit!95830)

(assert (=> d!1395409 (= lt!1701835 (choose!29632 lt!1701573 (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))

(declare-fun e!2819661 () Bool)

(assert (=> d!1395409 e!2819661))

(declare-fun res!1884107 () Bool)

(assert (=> d!1395409 (=> (not res!1884107) (not e!2819661))))

(assert (=> d!1395409 (= res!1884107 (isStrictlySorted!439 lt!1701573))))

(assert (=> d!1395409 (= (lemmaContainsTupThenGetReturnValue!690 lt!1701573 (_1!28852 lt!1701242) (_2!28852 lt!1701242)) lt!1701835)))

(declare-fun b!4525512 () Bool)

(declare-fun res!1884108 () Bool)

(assert (=> b!4525512 (=> (not res!1884108) (not e!2819661))))

(assert (=> b!4525512 (= res!1884108 (containsKey!1810 lt!1701573 (_1!28852 lt!1701242)))))

(declare-fun b!4525513 () Bool)

(assert (=> b!4525513 (= e!2819661 (contains!13419 lt!1701573 (tuple2!51117 (_1!28852 lt!1701242) (_2!28852 lt!1701242))))))

(assert (= (and d!1395409 res!1884107) b!4525512))

(assert (= (and b!4525512 res!1884108) b!4525513))

(assert (=> d!1395409 m!5277383))

(declare-fun m!5277973 () Bool)

(assert (=> d!1395409 m!5277973))

(declare-fun m!5277975 () Bool)

(assert (=> d!1395409 m!5277975))

(declare-fun m!5277977 () Bool)

(assert (=> b!4525512 m!5277977))

(declare-fun m!5277979 () Bool)

(assert (=> b!4525513 m!5277979))

(assert (=> d!1395187 d!1395409))

(declare-fun b!4525518 () Bool)

(declare-fun e!2819669 () List!50799)

(declare-fun call!315364 () List!50799)

(assert (=> b!4525518 (= e!2819669 call!315364)))

(declare-fun b!4525519 () Bool)

(declare-fun res!1884113 () Bool)

(declare-fun e!2819668 () Bool)

(assert (=> b!4525519 (=> (not res!1884113) (not e!2819668))))

(declare-fun lt!1701836 () List!50799)

(assert (=> b!4525519 (= res!1884113 (containsKey!1810 lt!1701836 (_1!28852 lt!1701242)))))

(declare-fun b!4525520 () Bool)

(declare-fun e!2819670 () List!50799)

(assert (=> b!4525520 (= e!2819670 (insertStrictlySorted!416 (t!357761 (toList!4348 lt!1701246)) (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))

(declare-fun b!4525521 () Bool)

(assert (=> b!4525521 (= e!2819669 call!315364)))

(declare-fun b!4525522 () Bool)

(assert (=> b!4525522 (= e!2819668 (contains!13419 lt!1701836 (tuple2!51117 (_1!28852 lt!1701242) (_2!28852 lt!1701242))))))

(declare-fun bm!315358 () Bool)

(declare-fun call!315362 () List!50799)

(declare-fun call!315363 () List!50799)

(assert (=> bm!315358 (= call!315362 call!315363)))

(declare-fun b!4525523 () Bool)

(declare-fun e!2819666 () List!50799)

(assert (=> b!4525523 (= e!2819666 call!315362)))

(declare-fun b!4525524 () Bool)

(declare-fun e!2819667 () List!50799)

(assert (=> b!4525524 (= e!2819667 e!2819666)))

(declare-fun c!772507 () Bool)

(assert (=> b!4525524 (= c!772507 (and ((_ is Cons!50675) (toList!4348 lt!1701246)) (= (_1!28852 (h!56536 (toList!4348 lt!1701246))) (_1!28852 lt!1701242))))))

(declare-fun c!772506 () Bool)

(declare-fun b!4525525 () Bool)

(assert (=> b!4525525 (= e!2819670 (ite c!772507 (t!357761 (toList!4348 lt!1701246)) (ite c!772506 (Cons!50675 (h!56536 (toList!4348 lt!1701246)) (t!357761 (toList!4348 lt!1701246))) Nil!50675)))))

(declare-fun bm!315357 () Bool)

(declare-fun c!772508 () Bool)

(assert (=> bm!315357 (= call!315363 ($colon$colon!944 e!2819670 (ite c!772508 (h!56536 (toList!4348 lt!1701246)) (tuple2!51117 (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))))

(declare-fun c!772505 () Bool)

(assert (=> bm!315357 (= c!772505 c!772508)))

(declare-fun d!1395411 () Bool)

(assert (=> d!1395411 e!2819668))

(declare-fun res!1884114 () Bool)

(assert (=> d!1395411 (=> (not res!1884114) (not e!2819668))))

(assert (=> d!1395411 (= res!1884114 (isStrictlySorted!439 lt!1701836))))

(assert (=> d!1395411 (= lt!1701836 e!2819667)))

(assert (=> d!1395411 (= c!772508 (and ((_ is Cons!50675) (toList!4348 lt!1701246)) (bvslt (_1!28852 (h!56536 (toList!4348 lt!1701246))) (_1!28852 lt!1701242))))))

(assert (=> d!1395411 (isStrictlySorted!439 (toList!4348 lt!1701246))))

(assert (=> d!1395411 (= (insertStrictlySorted!416 (toList!4348 lt!1701246) (_1!28852 lt!1701242) (_2!28852 lt!1701242)) lt!1701836)))

(declare-fun b!4525526 () Bool)

(assert (=> b!4525526 (= c!772506 (and ((_ is Cons!50675) (toList!4348 lt!1701246)) (bvsgt (_1!28852 (h!56536 (toList!4348 lt!1701246))) (_1!28852 lt!1701242))))))

(assert (=> b!4525526 (= e!2819666 e!2819669)))

(declare-fun b!4525527 () Bool)

(assert (=> b!4525527 (= e!2819667 call!315363)))

(declare-fun bm!315359 () Bool)

(assert (=> bm!315359 (= call!315364 call!315362)))

(assert (= (and d!1395411 c!772508) b!4525527))

(assert (= (and d!1395411 (not c!772508)) b!4525524))

(assert (= (and b!4525524 c!772507) b!4525523))

(assert (= (and b!4525524 (not c!772507)) b!4525526))

(assert (= (and b!4525526 c!772506) b!4525518))

(assert (= (and b!4525526 (not c!772506)) b!4525521))

(assert (= (or b!4525518 b!4525521) bm!315359))

(assert (= (or b!4525523 bm!315359) bm!315358))

(assert (= (or b!4525527 bm!315358) bm!315357))

(assert (= (and bm!315357 c!772505) b!4525520))

(assert (= (and bm!315357 (not c!772505)) b!4525525))

(assert (= (and d!1395411 res!1884114) b!4525519))

(assert (= (and b!4525519 res!1884113) b!4525522))

(declare-fun m!5277981 () Bool)

(assert (=> b!4525520 m!5277981))

(declare-fun m!5277983 () Bool)

(assert (=> b!4525522 m!5277983))

(declare-fun m!5277985 () Bool)

(assert (=> b!4525519 m!5277985))

(declare-fun m!5277987 () Bool)

(assert (=> bm!315357 m!5277987))

(declare-fun m!5277989 () Bool)

(assert (=> d!1395411 m!5277989))

(declare-fun m!5277991 () Bool)

(assert (=> d!1395411 m!5277991))

(assert (=> d!1395187 d!1395411))

(declare-fun d!1395413 () Bool)

(declare-fun res!1884119 () Bool)

(declare-fun e!2819673 () Bool)

(assert (=> d!1395413 (=> res!1884119 e!2819673)))

(declare-fun e!2819674 () Bool)

(assert (=> d!1395413 (= res!1884119 e!2819674)))

(declare-fun res!1884118 () Bool)

(assert (=> d!1395413 (=> (not res!1884118) (not e!2819674))))

(assert (=> d!1395413 (= res!1884118 ((_ is Cons!50675) (t!357761 (t!357761 (toList!4348 lm!1477)))))))

(assert (=> d!1395413 (= (containsKeyBiggerList!150 (t!357761 (t!357761 (toList!4348 lm!1477))) key!3287) e!2819673)))

(declare-fun b!4525530 () Bool)

(assert (=> b!4525530 (= e!2819674 (containsKey!1806 (_2!28852 (h!56536 (t!357761 (t!357761 (toList!4348 lm!1477))))) key!3287))))

(declare-fun b!4525531 () Bool)

(declare-fun e!2819675 () Bool)

(assert (=> b!4525531 (= e!2819673 e!2819675)))

(declare-fun res!1884117 () Bool)

(assert (=> b!4525531 (=> (not res!1884117) (not e!2819675))))

(assert (=> b!4525531 (= res!1884117 ((_ is Cons!50675) (t!357761 (t!357761 (toList!4348 lm!1477)))))))

(declare-fun b!4525532 () Bool)

(assert (=> b!4525532 (= e!2819675 (containsKeyBiggerList!150 (t!357761 (t!357761 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(assert (= (and d!1395413 res!1884118) b!4525530))

(assert (= (and d!1395413 (not res!1884119)) b!4525531))

(assert (= (and b!4525531 res!1884117) b!4525532))

(declare-fun m!5277995 () Bool)

(assert (=> b!4525530 m!5277995))

(declare-fun m!5277999 () Bool)

(assert (=> b!4525532 m!5277999))

(assert (=> b!4524951 d!1395413))

(declare-fun d!1395417 () Bool)

(assert (=> d!1395417 (= (get!16613 (getValueByKey!1109 (toList!4348 lt!1701251) hash!344)) (v!44762 (getValueByKey!1109 (toList!4348 lt!1701251) hash!344)))))

(assert (=> d!1395259 d!1395417))

(declare-fun b!4525543 () Bool)

(declare-fun e!2819682 () Option!11137)

(assert (=> b!4525543 (= e!2819682 (Some!11136 (_2!28852 (h!56536 (toList!4348 lt!1701251)))))))

(declare-fun d!1395421 () Bool)

(declare-fun c!772512 () Bool)

(assert (=> d!1395421 (= c!772512 (and ((_ is Cons!50675) (toList!4348 lt!1701251)) (= (_1!28852 (h!56536 (toList!4348 lt!1701251))) hash!344)))))

(assert (=> d!1395421 (= (getValueByKey!1109 (toList!4348 lt!1701251) hash!344) e!2819682)))

(declare-fun b!4525544 () Bool)

(declare-fun e!2819683 () Option!11137)

(assert (=> b!4525544 (= e!2819682 e!2819683)))

(declare-fun c!772513 () Bool)

(assert (=> b!4525544 (= c!772513 (and ((_ is Cons!50675) (toList!4348 lt!1701251)) (not (= (_1!28852 (h!56536 (toList!4348 lt!1701251))) hash!344))))))

(declare-fun b!4525545 () Bool)

(assert (=> b!4525545 (= e!2819683 (getValueByKey!1109 (t!357761 (toList!4348 lt!1701251)) hash!344))))

(declare-fun b!4525546 () Bool)

(assert (=> b!4525546 (= e!2819683 None!11136)))

(assert (= (and d!1395421 c!772512) b!4525543))

(assert (= (and d!1395421 (not c!772512)) b!4525544))

(assert (= (and b!4525544 c!772513) b!4525545))

(assert (= (and b!4525544 (not c!772513)) b!4525546))

(declare-fun m!5278011 () Bool)

(assert (=> b!4525545 m!5278011))

(assert (=> d!1395259 d!1395421))

(declare-fun bs!860342 () Bool)

(declare-fun b!4525560 () Bool)

(assert (= bs!860342 (and b!4525560 b!4525163)))

(declare-fun lambda!173425 () Int)

(assert (=> bs!860342 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701256) (= lambda!173425 lambda!173387))))

(declare-fun bs!860343 () Bool)

(assert (= bs!860343 (and b!4525560 b!4525155)))

(assert (=> bs!860343 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701249) (= lambda!173425 lambda!173381))))

(declare-fun bs!860344 () Bool)

(assert (= bs!860344 (and b!4525560 b!4525162)))

(assert (=> bs!860344 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701256) (= lambda!173425 lambda!173388))))

(declare-fun bs!860345 () Bool)

(assert (= bs!860345 (and b!4525560 d!1395201)))

(assert (=> bs!860345 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701649) (= lambda!173425 lambda!173383))))

(declare-fun bs!860346 () Bool)

(assert (= bs!860346 (and b!4525560 b!4525156)))

(assert (=> bs!860346 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701249) (= lambda!173425 lambda!173380))))

(assert (=> bs!860343 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701646) (= lambda!173425 lambda!173382))))

(declare-fun bs!860347 () Bool)

(assert (= bs!860347 (and b!4525560 d!1395239)))

(assert (=> bs!860347 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701673) (= lambda!173425 lambda!173390))))

(declare-fun bs!860348 () Bool)

(assert (= bs!860348 (and b!4525560 b!4524756)))

(assert (=> bs!860348 (not (= lambda!173425 lambda!173267))))

(declare-fun bs!860349 () Bool)

(assert (= bs!860349 (and b!4525560 d!1395243)))

(assert (=> bs!860349 (not (= lambda!173425 lambda!173394))))

(assert (=> bs!860344 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701670) (= lambda!173425 lambda!173389))))

(assert (=> b!4525560 true))

(declare-fun bs!860350 () Bool)

(declare-fun b!4525559 () Bool)

(assert (= bs!860350 (and b!4525559 b!4525163)))

(declare-fun lambda!173426 () Int)

(assert (=> bs!860350 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701256) (= lambda!173426 lambda!173387))))

(declare-fun bs!860351 () Bool)

(assert (= bs!860351 (and b!4525559 b!4525155)))

(assert (=> bs!860351 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701249) (= lambda!173426 lambda!173381))))

(declare-fun bs!860352 () Bool)

(assert (= bs!860352 (and b!4525559 b!4525162)))

(assert (=> bs!860352 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701256) (= lambda!173426 lambda!173388))))

(declare-fun bs!860353 () Bool)

(assert (= bs!860353 (and b!4525559 d!1395201)))

(assert (=> bs!860353 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701649) (= lambda!173426 lambda!173383))))

(declare-fun bs!860354 () Bool)

(assert (= bs!860354 (and b!4525559 b!4525156)))

(assert (=> bs!860354 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701249) (= lambda!173426 lambda!173380))))

(assert (=> bs!860351 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701646) (= lambda!173426 lambda!173382))))

(declare-fun bs!860355 () Bool)

(assert (= bs!860355 (and b!4525559 b!4525560)))

(assert (=> bs!860355 (= lambda!173426 lambda!173425)))

(declare-fun bs!860356 () Bool)

(assert (= bs!860356 (and b!4525559 d!1395239)))

(assert (=> bs!860356 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701673) (= lambda!173426 lambda!173390))))

(declare-fun bs!860357 () Bool)

(assert (= bs!860357 (and b!4525559 b!4524756)))

(assert (=> bs!860357 (not (= lambda!173426 lambda!173267))))

(declare-fun bs!860358 () Bool)

(assert (= bs!860358 (and b!4525559 d!1395243)))

(assert (=> bs!860358 (not (= lambda!173426 lambda!173394))))

(assert (=> bs!860352 (= (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701670) (= lambda!173426 lambda!173389))))

(assert (=> b!4525559 true))

(declare-fun lambda!173427 () Int)

(declare-fun lt!1701854 () ListMap!3609)

(assert (=> bs!860350 (= (= lt!1701854 lt!1701256) (= lambda!173427 lambda!173387))))

(assert (=> bs!860351 (= (= lt!1701854 lt!1701249) (= lambda!173427 lambda!173381))))

(assert (=> bs!860353 (= (= lt!1701854 lt!1701649) (= lambda!173427 lambda!173383))))

(assert (=> bs!860354 (= (= lt!1701854 lt!1701249) (= lambda!173427 lambda!173380))))

(assert (=> bs!860351 (= (= lt!1701854 lt!1701646) (= lambda!173427 lambda!173382))))

(assert (=> bs!860355 (= (= lt!1701854 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173427 lambda!173425))))

(assert (=> bs!860356 (= (= lt!1701854 lt!1701673) (= lambda!173427 lambda!173390))))

(assert (=> bs!860357 (not (= lambda!173427 lambda!173267))))

(assert (=> b!4525559 (= (= lt!1701854 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173427 lambda!173426))))

(assert (=> bs!860352 (= (= lt!1701854 lt!1701256) (= lambda!173427 lambda!173388))))

(assert (=> bs!860358 (not (= lambda!173427 lambda!173394))))

(assert (=> bs!860352 (= (= lt!1701854 lt!1701670) (= lambda!173427 lambda!173389))))

(assert (=> b!4525559 true))

(declare-fun bs!860359 () Bool)

(declare-fun d!1395423 () Bool)

(assert (= bs!860359 (and d!1395423 b!4525163)))

(declare-fun lt!1701860 () ListMap!3609)

(declare-fun lambda!173428 () Int)

(assert (=> bs!860359 (= (= lt!1701860 lt!1701256) (= lambda!173428 lambda!173387))))

(declare-fun bs!860360 () Bool)

(assert (= bs!860360 (and d!1395423 b!4525155)))

(assert (=> bs!860360 (= (= lt!1701860 lt!1701249) (= lambda!173428 lambda!173381))))

(declare-fun bs!860361 () Bool)

(assert (= bs!860361 (and d!1395423 b!4525559)))

(assert (=> bs!860361 (= (= lt!1701860 lt!1701854) (= lambda!173428 lambda!173427))))

(declare-fun bs!860362 () Bool)

(assert (= bs!860362 (and d!1395423 d!1395201)))

(assert (=> bs!860362 (= (= lt!1701860 lt!1701649) (= lambda!173428 lambda!173383))))

(declare-fun bs!860363 () Bool)

(assert (= bs!860363 (and d!1395423 b!4525156)))

(assert (=> bs!860363 (= (= lt!1701860 lt!1701249) (= lambda!173428 lambda!173380))))

(assert (=> bs!860360 (= (= lt!1701860 lt!1701646) (= lambda!173428 lambda!173382))))

(declare-fun bs!860364 () Bool)

(assert (= bs!860364 (and d!1395423 b!4525560)))

(assert (=> bs!860364 (= (= lt!1701860 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173428 lambda!173425))))

(declare-fun bs!860365 () Bool)

(assert (= bs!860365 (and d!1395423 d!1395239)))

(assert (=> bs!860365 (= (= lt!1701860 lt!1701673) (= lambda!173428 lambda!173390))))

(declare-fun bs!860366 () Bool)

(assert (= bs!860366 (and d!1395423 b!4524756)))

(assert (=> bs!860366 (not (= lambda!173428 lambda!173267))))

(assert (=> bs!860361 (= (= lt!1701860 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173428 lambda!173426))))

(declare-fun bs!860367 () Bool)

(assert (= bs!860367 (and d!1395423 b!4525162)))

(assert (=> bs!860367 (= (= lt!1701860 lt!1701256) (= lambda!173428 lambda!173388))))

(declare-fun bs!860368 () Bool)

(assert (= bs!860368 (and d!1395423 d!1395243)))

(assert (=> bs!860368 (not (= lambda!173428 lambda!173394))))

(assert (=> bs!860367 (= (= lt!1701860 lt!1701670) (= lambda!173428 lambda!173389))))

(assert (=> d!1395423 true))

(declare-fun call!315368 () Bool)

(declare-fun bm!315361 () Bool)

(declare-fun c!772516 () Bool)

(assert (=> bm!315361 (= call!315368 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (ite c!772516 lambda!173425 lambda!173426)))))

(declare-fun b!4525556 () Bool)

(declare-fun e!2819692 () Bool)

(assert (=> b!4525556 (= e!2819692 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) lambda!173427))))

(declare-fun bm!315362 () Bool)

(declare-fun call!315365 () Unit!95830)

(assert (=> bm!315362 (= call!315365 (lemmaContainsAllItsOwnKeys!346 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))))))

(declare-fun lt!1701852 () ListMap!3609)

(declare-fun bm!315363 () Bool)

(declare-fun call!315366 () Bool)

(assert (=> bm!315363 (= call!315366 (forall!10287 (ite c!772516 (toList!4347 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (toList!4347 lt!1701852)) (ite c!772516 lambda!173425 lambda!173427)))))

(declare-fun b!4525557 () Bool)

(declare-fun res!1884125 () Bool)

(declare-fun e!2819691 () Bool)

(assert (=> b!4525557 (=> (not res!1884125) (not e!2819691))))

(assert (=> b!4525557 (= res!1884125 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) lambda!173428))))

(declare-fun b!4525558 () Bool)

(assert (=> b!4525558 (= e!2819691 (invariantList!1025 (toList!4347 lt!1701860)))))

(declare-fun e!2819690 () ListMap!3609)

(assert (=> b!4525559 (= e!2819690 lt!1701854)))

(assert (=> b!4525559 (= lt!1701852 (+!1558 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) (h!56535 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))))))))

(assert (=> b!4525559 (= lt!1701854 (addToMapMapFromBucket!697 (t!357760 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))) (+!1558 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) (h!56535 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))))))))

(declare-fun lt!1701849 () Unit!95830)

(assert (=> b!4525559 (= lt!1701849 call!315365)))

(assert (=> b!4525559 call!315368))

(declare-fun lt!1701866 () Unit!95830)

(assert (=> b!4525559 (= lt!1701866 lt!1701849)))

(assert (=> b!4525559 call!315366))

(declare-fun lt!1701865 () Unit!95830)

(declare-fun Unit!95921 () Unit!95830)

(assert (=> b!4525559 (= lt!1701865 Unit!95921)))

(assert (=> b!4525559 (forall!10287 (t!357760 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))) lambda!173427)))

(declare-fun lt!1701846 () Unit!95830)

(declare-fun Unit!95922 () Unit!95830)

(assert (=> b!4525559 (= lt!1701846 Unit!95922)))

(declare-fun lt!1701864 () Unit!95830)

(declare-fun Unit!95923 () Unit!95830)

(assert (=> b!4525559 (= lt!1701864 Unit!95923)))

(declare-fun lt!1701845 () Unit!95830)

(assert (=> b!4525559 (= lt!1701845 (forallContained!2539 (toList!4347 lt!1701852) lambda!173427 (h!56535 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))))))))

(assert (=> b!4525559 (contains!13418 lt!1701852 (_1!28851 (h!56535 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))))))))

(declare-fun lt!1701839 () Unit!95830)

(declare-fun Unit!95924 () Unit!95830)

(assert (=> b!4525559 (= lt!1701839 Unit!95924)))

(assert (=> b!4525559 (contains!13418 lt!1701854 (_1!28851 (h!56535 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))))))))

(declare-fun lt!1701841 () Unit!95830)

(declare-fun Unit!95925 () Unit!95830)

(assert (=> b!4525559 (= lt!1701841 Unit!95925)))

(assert (=> b!4525559 (forall!10287 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))) lambda!173427)))

(declare-fun lt!1701842 () Unit!95830)

(declare-fun Unit!95926 () Unit!95830)

(assert (=> b!4525559 (= lt!1701842 Unit!95926)))

(assert (=> b!4525559 (forall!10287 (toList!4347 lt!1701852) lambda!173427)))

(declare-fun lt!1701848 () Unit!95830)

(declare-fun Unit!95927 () Unit!95830)

(assert (=> b!4525559 (= lt!1701848 Unit!95927)))

(declare-fun lt!1701843 () Unit!95830)

(declare-fun Unit!95928 () Unit!95830)

(assert (=> b!4525559 (= lt!1701843 Unit!95928)))

(declare-fun lt!1701858 () Unit!95830)

(assert (=> b!4525559 (= lt!1701858 (addForallContainsKeyThenBeforeAdding!346 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701854 (_1!28851 (h!56535 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))))) (_2!28851 (h!56535 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))))))))

(assert (=> b!4525559 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) lambda!173427)))

(declare-fun lt!1701862 () Unit!95830)

(assert (=> b!4525559 (= lt!1701862 lt!1701858)))

(assert (=> b!4525559 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) lambda!173427)))

(declare-fun lt!1701857 () Unit!95830)

(declare-fun Unit!95929 () Unit!95830)

(assert (=> b!4525559 (= lt!1701857 Unit!95929)))

(declare-fun res!1884126 () Bool)

(assert (=> b!4525559 (= res!1884126 (forall!10287 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))) lambda!173427))))

(assert (=> b!4525559 (=> (not res!1884126) (not e!2819692))))

(assert (=> b!4525559 e!2819692))

(declare-fun lt!1701850 () Unit!95830)

(declare-fun Unit!95930 () Unit!95830)

(assert (=> b!4525559 (= lt!1701850 Unit!95930)))

(assert (=> b!4525560 (= e!2819690 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))))))

(declare-fun lt!1701840 () Unit!95830)

(assert (=> b!4525560 (= lt!1701840 call!315365)))

(assert (=> b!4525560 call!315366))

(declare-fun lt!1701861 () Unit!95830)

(assert (=> b!4525560 (= lt!1701861 lt!1701840)))

(assert (=> b!4525560 call!315368))

(declare-fun lt!1701838 () Unit!95830)

(declare-fun Unit!95931 () Unit!95830)

(assert (=> b!4525560 (= lt!1701838 Unit!95931)))

(assert (=> d!1395423 e!2819691))

(declare-fun res!1884129 () Bool)

(assert (=> d!1395423 (=> (not res!1884129) (not e!2819691))))

(assert (=> d!1395423 (= res!1884129 (forall!10287 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))) lambda!173428))))

(assert (=> d!1395423 (= lt!1701860 e!2819690)))

(assert (=> d!1395423 (= c!772516 ((_ is Nil!50674) (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))))))

(assert (=> d!1395423 (noDuplicateKeys!1170 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))))))

(assert (=> d!1395423 (= (addToMapMapFromBucket!697 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) lt!1701860)))

(assert (= (and d!1395423 c!772516) b!4525560))

(assert (= (and d!1395423 (not c!772516)) b!4525559))

(assert (= (and b!4525559 res!1884126) b!4525556))

(assert (= (or b!4525560 b!4525559) bm!315361))

(assert (= (or b!4525560 b!4525559) bm!315363))

(assert (= (or b!4525560 b!4525559) bm!315362))

(assert (= (and d!1395423 res!1884129) b!4525557))

(assert (= (and b!4525557 res!1884125) b!4525558))

(declare-fun m!5278035 () Bool)

(assert (=> b!4525558 m!5278035))

(declare-fun m!5278037 () Bool)

(assert (=> b!4525559 m!5278037))

(declare-fun m!5278039 () Bool)

(assert (=> b!4525559 m!5278039))

(declare-fun m!5278041 () Bool)

(assert (=> b!4525559 m!5278041))

(assert (=> b!4525559 m!5277007))

(declare-fun m!5278043 () Bool)

(assert (=> b!4525559 m!5278043))

(declare-fun m!5278045 () Bool)

(assert (=> b!4525559 m!5278045))

(assert (=> b!4525559 m!5278045))

(declare-fun m!5278047 () Bool)

(assert (=> b!4525559 m!5278047))

(declare-fun m!5278049 () Bool)

(assert (=> b!4525559 m!5278049))

(declare-fun m!5278051 () Bool)

(assert (=> b!4525559 m!5278051))

(assert (=> b!4525559 m!5277007))

(declare-fun m!5278053 () Bool)

(assert (=> b!4525559 m!5278053))

(assert (=> b!4525559 m!5278037))

(assert (=> b!4525559 m!5278043))

(declare-fun m!5278055 () Bool)

(assert (=> b!4525559 m!5278055))

(declare-fun m!5278057 () Bool)

(assert (=> bm!315361 m!5278057))

(assert (=> b!4525556 m!5278045))

(assert (=> bm!315362 m!5277007))

(declare-fun m!5278059 () Bool)

(assert (=> bm!315362 m!5278059))

(declare-fun m!5278061 () Bool)

(assert (=> bm!315363 m!5278061))

(declare-fun m!5278063 () Bool)

(assert (=> d!1395423 m!5278063))

(declare-fun m!5278065 () Bool)

(assert (=> d!1395423 m!5278065))

(declare-fun m!5278067 () Bool)

(assert (=> b!4525557 m!5278067))

(assert (=> b!4524925 d!1395423))

(declare-fun bs!860369 () Bool)

(declare-fun d!1395429 () Bool)

(assert (= bs!860369 (and d!1395429 d!1395129)))

(declare-fun lambda!173429 () Int)

(assert (=> bs!860369 (= lambda!173429 lambda!173332)))

(declare-fun bs!860370 () Bool)

(assert (= bs!860370 (and d!1395429 b!4524756)))

(assert (=> bs!860370 (not (= lambda!173429 lambda!173266))))

(declare-fun bs!860371 () Bool)

(assert (= bs!860371 (and d!1395429 d!1395241)))

(assert (=> bs!860371 (= lambda!173429 lambda!173391)))

(declare-fun bs!860372 () Bool)

(assert (= bs!860372 (and d!1395429 d!1395233)))

(assert (=> bs!860372 (not (= lambda!173429 lambda!173386))))

(declare-fun bs!860373 () Bool)

(assert (= bs!860373 (and d!1395429 d!1395087)))

(assert (=> bs!860373 (= lambda!173429 lambda!173312)))

(declare-fun bs!860374 () Bool)

(assert (= bs!860374 (and d!1395429 d!1395115)))

(assert (=> bs!860374 (= lambda!173429 lambda!173327)))

(declare-fun bs!860375 () Bool)

(assert (= bs!860375 (and d!1395429 d!1395089)))

(assert (=> bs!860375 (= lambda!173429 lambda!173318)))

(declare-fun bs!860376 () Bool)

(assert (= bs!860376 (and d!1395429 d!1395071)))

(assert (=> bs!860376 (= lambda!173429 lambda!173310)))

(declare-fun bs!860377 () Bool)

(assert (= bs!860377 (and d!1395429 d!1395099)))

(assert (=> bs!860377 (= lambda!173429 lambda!173319)))

(declare-fun bs!860378 () Bool)

(assert (= bs!860378 (and d!1395429 d!1395039)))

(assert (=> bs!860378 (= lambda!173429 lambda!173270)))

(declare-fun bs!860379 () Bool)

(assert (= bs!860379 (and d!1395429 d!1395245)))

(assert (=> bs!860379 (= lambda!173429 lambda!173397)))

(declare-fun bs!860380 () Bool)

(assert (= bs!860380 (and d!1395429 start!448304)))

(assert (=> bs!860380 (= lambda!173429 lambda!173265)))

(declare-fun bs!860381 () Bool)

(assert (= bs!860381 (and d!1395429 d!1395141)))

(assert (=> bs!860381 (= lambda!173429 lambda!173337)))

(declare-fun bs!860382 () Bool)

(assert (= bs!860382 (and d!1395429 d!1395133)))

(assert (=> bs!860382 (= lambda!173429 lambda!173333)))

(declare-fun lt!1701867 () ListMap!3609)

(assert (=> d!1395429 (invariantList!1025 (toList!4347 lt!1701867))))

(declare-fun e!2819693 () ListMap!3609)

(assert (=> d!1395429 (= lt!1701867 e!2819693)))

(declare-fun c!772518 () Bool)

(assert (=> d!1395429 (= c!772518 ((_ is Cons!50675) (t!357761 (t!357761 (toList!4348 lm!1477)))))))

(assert (=> d!1395429 (forall!10285 (t!357761 (t!357761 (toList!4348 lm!1477))) lambda!173429)))

(assert (=> d!1395429 (= (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701867)))

(declare-fun b!4525561 () Bool)

(assert (=> b!4525561 (= e!2819693 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (t!357761 (t!357761 (toList!4348 lm!1477))))) (extractMap!1226 (t!357761 (t!357761 (t!357761 (toList!4348 lm!1477)))))))))

(declare-fun b!4525562 () Bool)

(assert (=> b!4525562 (= e!2819693 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395429 c!772518) b!4525561))

(assert (= (and d!1395429 (not c!772518)) b!4525562))

(declare-fun m!5278069 () Bool)

(assert (=> d!1395429 m!5278069))

(declare-fun m!5278071 () Bool)

(assert (=> d!1395429 m!5278071))

(declare-fun m!5278073 () Bool)

(assert (=> b!4525561 m!5278073))

(assert (=> b!4525561 m!5278073))

(declare-fun m!5278075 () Bool)

(assert (=> b!4525561 m!5278075))

(assert (=> b!4524925 d!1395429))

(declare-fun d!1395433 () Bool)

(declare-fun res!1884132 () Bool)

(declare-fun e!2819696 () Bool)

(assert (=> d!1395433 (=> res!1884132 e!2819696)))

(assert (=> d!1395433 (= res!1884132 (not ((_ is Cons!50674) (t!357760 newBucket!178))))))

(assert (=> d!1395433 (= (noDuplicateKeys!1170 (t!357760 newBucket!178)) e!2819696)))

(declare-fun b!4525565 () Bool)

(declare-fun e!2819697 () Bool)

(assert (=> b!4525565 (= e!2819696 e!2819697)))

(declare-fun res!1884133 () Bool)

(assert (=> b!4525565 (=> (not res!1884133) (not e!2819697))))

(assert (=> b!4525565 (= res!1884133 (not (containsKey!1806 (t!357760 (t!357760 newBucket!178)) (_1!28851 (h!56535 (t!357760 newBucket!178))))))))

(declare-fun b!4525566 () Bool)

(assert (=> b!4525566 (= e!2819697 (noDuplicateKeys!1170 (t!357760 (t!357760 newBucket!178))))))

(assert (= (and d!1395433 (not res!1884132)) b!4525565))

(assert (= (and b!4525565 res!1884133) b!4525566))

(declare-fun m!5278081 () Bool)

(assert (=> b!4525565 m!5278081))

(declare-fun m!5278083 () Bool)

(assert (=> b!4525566 m!5278083))

(assert (=> b!4525027 d!1395433))

(declare-fun d!1395437 () Bool)

(declare-fun lt!1701870 () Bool)

(assert (=> d!1395437 (= lt!1701870 (select (content!8383 e!2819273) key!3287))))

(declare-fun e!2819700 () Bool)

(assert (=> d!1395437 (= lt!1701870 e!2819700)))

(declare-fun res!1884136 () Bool)

(assert (=> d!1395437 (=> (not res!1884136) (not e!2819700))))

(assert (=> d!1395437 (= res!1884136 ((_ is Cons!50677) e!2819273))))

(assert (=> d!1395437 (= (contains!13420 e!2819273 key!3287) lt!1701870)))

(declare-fun b!4525568 () Bool)

(declare-fun e!2819701 () Bool)

(assert (=> b!4525568 (= e!2819700 e!2819701)))

(declare-fun res!1884135 () Bool)

(assert (=> b!4525568 (=> res!1884135 e!2819701)))

(assert (=> b!4525568 (= res!1884135 (= (h!56540 e!2819273) key!3287))))

(declare-fun b!4525570 () Bool)

(assert (=> b!4525570 (= e!2819701 (contains!13420 (t!357763 e!2819273) key!3287))))

(assert (= (and d!1395437 res!1884136) b!4525568))

(assert (= (and b!4525568 (not res!1884135)) b!4525570))

(declare-fun m!5278085 () Bool)

(assert (=> d!1395437 m!5278085))

(declare-fun m!5278087 () Bool)

(assert (=> d!1395437 m!5278087))

(declare-fun m!5278089 () Bool)

(assert (=> b!4525570 m!5278089))

(assert (=> bm!315311 d!1395437))

(declare-fun d!1395439 () Bool)

(declare-fun res!1884145 () Bool)

(declare-fun e!2819714 () Bool)

(assert (=> d!1395439 (=> res!1884145 e!2819714)))

(assert (=> d!1395439 (= res!1884145 (and ((_ is Cons!50674) (toList!4347 lt!1701257)) (= (_1!28851 (h!56535 (toList!4347 lt!1701257))) key!3287)))))

(assert (=> d!1395439 (= (containsKey!1808 (toList!4347 lt!1701257) key!3287) e!2819714)))

(declare-fun b!4525592 () Bool)

(declare-fun e!2819715 () Bool)

(assert (=> b!4525592 (= e!2819714 e!2819715)))

(declare-fun res!1884146 () Bool)

(assert (=> b!4525592 (=> (not res!1884146) (not e!2819715))))

(assert (=> b!4525592 (= res!1884146 ((_ is Cons!50674) (toList!4347 lt!1701257)))))

(declare-fun b!4525593 () Bool)

(assert (=> b!4525593 (= e!2819715 (containsKey!1808 (t!357760 (toList!4347 lt!1701257)) key!3287))))

(assert (= (and d!1395439 (not res!1884145)) b!4525592))

(assert (= (and b!4525592 res!1884146) b!4525593))

(declare-fun m!5278107 () Bool)

(assert (=> b!4525593 m!5278107))

(assert (=> b!4524876 d!1395439))

(declare-fun d!1395447 () Bool)

(assert (=> d!1395447 (containsKey!1808 (toList!4347 lt!1701257) key!3287)))

(declare-fun lt!1701898 () Unit!95830)

(declare-fun choose!29634 (List!50798 K!12065) Unit!95830)

(assert (=> d!1395447 (= lt!1701898 (choose!29634 (toList!4347 lt!1701257) key!3287))))

(assert (=> d!1395447 (invariantList!1025 (toList!4347 lt!1701257))))

(assert (=> d!1395447 (= (lemmaInGetKeysListThenContainsKey!471 (toList!4347 lt!1701257) key!3287) lt!1701898)))

(declare-fun bs!860392 () Bool)

(assert (= bs!860392 d!1395447))

(assert (=> bs!860392 m!5276907))

(declare-fun m!5278121 () Bool)

(assert (=> bs!860392 m!5278121))

(declare-fun m!5278123 () Bool)

(assert (=> bs!860392 m!5278123))

(assert (=> b!4524876 d!1395447))

(declare-fun d!1395451 () Bool)

(declare-fun res!1884150 () Bool)

(declare-fun e!2819719 () Bool)

(assert (=> d!1395451 (=> res!1884150 e!2819719)))

(assert (=> d!1395451 (= res!1884150 ((_ is Nil!50674) (toList!4347 lt!1701249)))))

(assert (=> d!1395451 (= (forall!10287 (toList!4347 lt!1701249) (ite c!772406 lambda!173380 lambda!173381)) e!2819719)))

(declare-fun b!4525599 () Bool)

(declare-fun e!2819720 () Bool)

(assert (=> b!4525599 (= e!2819719 e!2819720)))

(declare-fun res!1884151 () Bool)

(assert (=> b!4525599 (=> (not res!1884151) (not e!2819720))))

(assert (=> b!4525599 (= res!1884151 (dynLambda!21177 (ite c!772406 lambda!173380 lambda!173381) (h!56535 (toList!4347 lt!1701249))))))

(declare-fun b!4525600 () Bool)

(assert (=> b!4525600 (= e!2819720 (forall!10287 (t!357760 (toList!4347 lt!1701249)) (ite c!772406 lambda!173380 lambda!173381)))))

(assert (= (and d!1395451 (not res!1884150)) b!4525599))

(assert (= (and b!4525599 res!1884151) b!4525600))

(declare-fun b_lambda!155669 () Bool)

(assert (=> (not b_lambda!155669) (not b!4525599)))

(declare-fun m!5278125 () Bool)

(assert (=> b!4525599 m!5278125))

(declare-fun m!5278127 () Bool)

(assert (=> b!4525600 m!5278127))

(assert (=> bm!315327 d!1395451))

(declare-fun bs!860403 () Bool)

(declare-fun b!4525605 () Bool)

(assert (= bs!860403 (and b!4525605 b!4525163)))

(declare-fun lambda!173432 () Int)

(assert (=> bs!860403 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701256) (= lambda!173432 lambda!173387))))

(declare-fun bs!860406 () Bool)

(assert (= bs!860406 (and b!4525605 b!4525155)))

(assert (=> bs!860406 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701249) (= lambda!173432 lambda!173381))))

(declare-fun bs!860408 () Bool)

(assert (= bs!860408 (and b!4525605 d!1395423)))

(assert (=> bs!860408 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701860) (= lambda!173432 lambda!173428))))

(declare-fun bs!860409 () Bool)

(assert (= bs!860409 (and b!4525605 b!4525559)))

(assert (=> bs!860409 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701854) (= lambda!173432 lambda!173427))))

(declare-fun bs!860411 () Bool)

(assert (= bs!860411 (and b!4525605 d!1395201)))

(assert (=> bs!860411 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701649) (= lambda!173432 lambda!173383))))

(declare-fun bs!860413 () Bool)

(assert (= bs!860413 (and b!4525605 b!4525156)))

(assert (=> bs!860413 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701249) (= lambda!173432 lambda!173380))))

(assert (=> bs!860406 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701646) (= lambda!173432 lambda!173382))))

(declare-fun bs!860416 () Bool)

(assert (= bs!860416 (and b!4525605 b!4525560)))

(assert (=> bs!860416 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173432 lambda!173425))))

(declare-fun bs!860417 () Bool)

(assert (= bs!860417 (and b!4525605 d!1395239)))

(assert (=> bs!860417 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701673) (= lambda!173432 lambda!173390))))

(declare-fun bs!860418 () Bool)

(assert (= bs!860418 (and b!4525605 b!4524756)))

(assert (=> bs!860418 (not (= lambda!173432 lambda!173267))))

(assert (=> bs!860409 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173432 lambda!173426))))

(declare-fun bs!860419 () Bool)

(assert (= bs!860419 (and b!4525605 b!4525162)))

(assert (=> bs!860419 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701256) (= lambda!173432 lambda!173388))))

(declare-fun bs!860420 () Bool)

(assert (= bs!860420 (and b!4525605 d!1395243)))

(assert (=> bs!860420 (not (= lambda!173432 lambda!173394))))

(assert (=> bs!860419 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701670) (= lambda!173432 lambda!173389))))

(assert (=> b!4525605 true))

(declare-fun bs!860421 () Bool)

(declare-fun b!4525604 () Bool)

(assert (= bs!860421 (and b!4525604 b!4525163)))

(declare-fun lambda!173434 () Int)

(assert (=> bs!860421 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701256) (= lambda!173434 lambda!173387))))

(declare-fun bs!860422 () Bool)

(assert (= bs!860422 (and b!4525604 b!4525155)))

(assert (=> bs!860422 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701249) (= lambda!173434 lambda!173381))))

(declare-fun bs!860423 () Bool)

(assert (= bs!860423 (and b!4525604 d!1395423)))

(assert (=> bs!860423 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701860) (= lambda!173434 lambda!173428))))

(declare-fun bs!860424 () Bool)

(assert (= bs!860424 (and b!4525604 b!4525559)))

(assert (=> bs!860424 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701854) (= lambda!173434 lambda!173427))))

(declare-fun bs!860425 () Bool)

(assert (= bs!860425 (and b!4525604 d!1395201)))

(assert (=> bs!860425 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701649) (= lambda!173434 lambda!173383))))

(declare-fun bs!860426 () Bool)

(assert (= bs!860426 (and b!4525604 b!4525156)))

(assert (=> bs!860426 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701249) (= lambda!173434 lambda!173380))))

(declare-fun bs!860427 () Bool)

(assert (= bs!860427 (and b!4525604 b!4525560)))

(assert (=> bs!860427 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173434 lambda!173425))))

(declare-fun bs!860428 () Bool)

(assert (= bs!860428 (and b!4525604 d!1395239)))

(assert (=> bs!860428 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701673) (= lambda!173434 lambda!173390))))

(declare-fun bs!860429 () Bool)

(assert (= bs!860429 (and b!4525604 b!4524756)))

(assert (=> bs!860429 (not (= lambda!173434 lambda!173267))))

(assert (=> bs!860424 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173434 lambda!173426))))

(declare-fun bs!860430 () Bool)

(assert (= bs!860430 (and b!4525604 b!4525162)))

(assert (=> bs!860430 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701256) (= lambda!173434 lambda!173388))))

(declare-fun bs!860431 () Bool)

(assert (= bs!860431 (and b!4525604 b!4525605)))

(assert (=> bs!860431 (= lambda!173434 lambda!173432)))

(assert (=> bs!860422 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701646) (= lambda!173434 lambda!173382))))

(declare-fun bs!860432 () Bool)

(assert (= bs!860432 (and b!4525604 d!1395243)))

(assert (=> bs!860432 (not (= lambda!173434 lambda!173394))))

(assert (=> bs!860430 (= (= (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701670) (= lambda!173434 lambda!173389))))

(assert (=> b!4525604 true))

(declare-fun lambda!173435 () Int)

(declare-fun lt!1701911 () ListMap!3609)

(assert (=> bs!860421 (= (= lt!1701911 lt!1701256) (= lambda!173435 lambda!173387))))

(assert (=> bs!860422 (= (= lt!1701911 lt!1701249) (= lambda!173435 lambda!173381))))

(assert (=> bs!860423 (= (= lt!1701911 lt!1701860) (= lambda!173435 lambda!173428))))

(assert (=> bs!860424 (= (= lt!1701911 lt!1701854) (= lambda!173435 lambda!173427))))

(assert (=> bs!860425 (= (= lt!1701911 lt!1701649) (= lambda!173435 lambda!173383))))

(assert (=> bs!860426 (= (= lt!1701911 lt!1701249) (= lambda!173435 lambda!173380))))

(assert (=> b!4525604 (= (= lt!1701911 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173435 lambda!173434))))

(assert (=> bs!860427 (= (= lt!1701911 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173435 lambda!173425))))

(assert (=> bs!860428 (= (= lt!1701911 lt!1701673) (= lambda!173435 lambda!173390))))

(assert (=> bs!860429 (not (= lambda!173435 lambda!173267))))

(assert (=> bs!860424 (= (= lt!1701911 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173435 lambda!173426))))

(assert (=> bs!860430 (= (= lt!1701911 lt!1701256) (= lambda!173435 lambda!173388))))

(assert (=> bs!860431 (= (= lt!1701911 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173435 lambda!173432))))

(assert (=> bs!860422 (= (= lt!1701911 lt!1701646) (= lambda!173435 lambda!173382))))

(assert (=> bs!860432 (not (= lambda!173435 lambda!173394))))

(assert (=> bs!860430 (= (= lt!1701911 lt!1701670) (= lambda!173435 lambda!173389))))

(assert (=> b!4525604 true))

(declare-fun bs!860447 () Bool)

(declare-fun d!1395453 () Bool)

(assert (= bs!860447 (and d!1395453 b!4525163)))

(declare-fun lambda!173437 () Int)

(declare-fun lt!1701914 () ListMap!3609)

(assert (=> bs!860447 (= (= lt!1701914 lt!1701256) (= lambda!173437 lambda!173387))))

(declare-fun bs!860448 () Bool)

(assert (= bs!860448 (and d!1395453 b!4525155)))

(assert (=> bs!860448 (= (= lt!1701914 lt!1701249) (= lambda!173437 lambda!173381))))

(declare-fun bs!860449 () Bool)

(assert (= bs!860449 (and d!1395453 b!4525604)))

(assert (=> bs!860449 (= (= lt!1701914 lt!1701911) (= lambda!173437 lambda!173435))))

(declare-fun bs!860450 () Bool)

(assert (= bs!860450 (and d!1395453 d!1395423)))

(assert (=> bs!860450 (= (= lt!1701914 lt!1701860) (= lambda!173437 lambda!173428))))

(declare-fun bs!860451 () Bool)

(assert (= bs!860451 (and d!1395453 b!4525559)))

(assert (=> bs!860451 (= (= lt!1701914 lt!1701854) (= lambda!173437 lambda!173427))))

(declare-fun bs!860452 () Bool)

(assert (= bs!860452 (and d!1395453 d!1395201)))

(assert (=> bs!860452 (= (= lt!1701914 lt!1701649) (= lambda!173437 lambda!173383))))

(declare-fun bs!860453 () Bool)

(assert (= bs!860453 (and d!1395453 b!4525156)))

(assert (=> bs!860453 (= (= lt!1701914 lt!1701249) (= lambda!173437 lambda!173380))))

(assert (=> bs!860449 (= (= lt!1701914 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173437 lambda!173434))))

(declare-fun bs!860454 () Bool)

(assert (= bs!860454 (and d!1395453 b!4525560)))

(assert (=> bs!860454 (= (= lt!1701914 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173437 lambda!173425))))

(declare-fun bs!860455 () Bool)

(assert (= bs!860455 (and d!1395453 d!1395239)))

(assert (=> bs!860455 (= (= lt!1701914 lt!1701673) (= lambda!173437 lambda!173390))))

(declare-fun bs!860456 () Bool)

(assert (= bs!860456 (and d!1395453 b!4524756)))

(assert (=> bs!860456 (not (= lambda!173437 lambda!173267))))

(assert (=> bs!860451 (= (= lt!1701914 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173437 lambda!173426))))

(declare-fun bs!860457 () Bool)

(assert (= bs!860457 (and d!1395453 b!4525162)))

(assert (=> bs!860457 (= (= lt!1701914 lt!1701256) (= lambda!173437 lambda!173388))))

(declare-fun bs!860458 () Bool)

(assert (= bs!860458 (and d!1395453 b!4525605)))

(assert (=> bs!860458 (= (= lt!1701914 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173437 lambda!173432))))

(assert (=> bs!860448 (= (= lt!1701914 lt!1701646) (= lambda!173437 lambda!173382))))

(declare-fun bs!860459 () Bool)

(assert (= bs!860459 (and d!1395453 d!1395243)))

(assert (=> bs!860459 (not (= lambda!173437 lambda!173394))))

(assert (=> bs!860457 (= (= lt!1701914 lt!1701670) (= lambda!173437 lambda!173389))))

(assert (=> d!1395453 true))

(declare-fun call!315377 () Bool)

(declare-fun bm!315370 () Bool)

(declare-fun c!772527 () Bool)

(assert (=> bm!315370 (= call!315377 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (ite c!772527 lambda!173432 lambda!173434)))))

(declare-fun b!4525601 () Bool)

(declare-fun e!2819723 () Bool)

(assert (=> b!4525601 (= e!2819723 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) lambda!173435))))

(declare-fun bm!315371 () Bool)

(declare-fun call!315375 () Unit!95830)

(assert (=> bm!315371 (= call!315375 (lemmaContainsAllItsOwnKeys!346 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))

(declare-fun call!315376 () Bool)

(declare-fun bm!315372 () Bool)

(declare-fun lt!1701910 () ListMap!3609)

(assert (=> bm!315372 (= call!315376 (forall!10287 (ite c!772527 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (toList!4347 lt!1701910)) (ite c!772527 lambda!173432 lambda!173435)))))

(declare-fun b!4525602 () Bool)

(declare-fun res!1884152 () Bool)

(declare-fun e!2819722 () Bool)

(assert (=> b!4525602 (=> (not res!1884152) (not e!2819722))))

(assert (=> b!4525602 (= res!1884152 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) lambda!173437))))

(declare-fun b!4525603 () Bool)

(assert (=> b!4525603 (= e!2819722 (invariantList!1025 (toList!4347 lt!1701914)))))

(declare-fun e!2819721 () ListMap!3609)

(assert (=> b!4525604 (= e!2819721 lt!1701911)))

(assert (=> b!4525604 (= lt!1701910 (+!1558 (extractMap!1226 (t!357761 (toList!4348 lm!1477))) (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477))))))))

(assert (=> b!4525604 (= lt!1701911 (addToMapMapFromBucket!697 (t!357760 (_2!28852 (h!56536 (toList!4348 lm!1477)))) (+!1558 (extractMap!1226 (t!357761 (toList!4348 lm!1477))) (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477)))))))))

(declare-fun lt!1701908 () Unit!95830)

(assert (=> b!4525604 (= lt!1701908 call!315375)))

(assert (=> b!4525604 call!315377))

(declare-fun lt!1701919 () Unit!95830)

(assert (=> b!4525604 (= lt!1701919 lt!1701908)))

(assert (=> b!4525604 call!315376))

(declare-fun lt!1701918 () Unit!95830)

(declare-fun Unit!95932 () Unit!95830)

(assert (=> b!4525604 (= lt!1701918 Unit!95932)))

(assert (=> b!4525604 (forall!10287 (t!357760 (_2!28852 (h!56536 (toList!4348 lm!1477)))) lambda!173435)))

(declare-fun lt!1701906 () Unit!95830)

(declare-fun Unit!95933 () Unit!95830)

(assert (=> b!4525604 (= lt!1701906 Unit!95933)))

(declare-fun lt!1701917 () Unit!95830)

(declare-fun Unit!95934 () Unit!95830)

(assert (=> b!4525604 (= lt!1701917 Unit!95934)))

(declare-fun lt!1701905 () Unit!95830)

(assert (=> b!4525604 (= lt!1701905 (forallContained!2539 (toList!4347 lt!1701910) lambda!173435 (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477))))))))

(assert (=> b!4525604 (contains!13418 lt!1701910 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477))))))))

(declare-fun lt!1701900 () Unit!95830)

(declare-fun Unit!95935 () Unit!95830)

(assert (=> b!4525604 (= lt!1701900 Unit!95935)))

(assert (=> b!4525604 (contains!13418 lt!1701911 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477))))))))

(declare-fun lt!1701902 () Unit!95830)

(declare-fun Unit!95936 () Unit!95830)

(assert (=> b!4525604 (= lt!1701902 Unit!95936)))

(assert (=> b!4525604 (forall!10287 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173435)))

(declare-fun lt!1701903 () Unit!95830)

(declare-fun Unit!95937 () Unit!95830)

(assert (=> b!4525604 (= lt!1701903 Unit!95937)))

(assert (=> b!4525604 (forall!10287 (toList!4347 lt!1701910) lambda!173435)))

(declare-fun lt!1701907 () Unit!95830)

(declare-fun Unit!95938 () Unit!95830)

(assert (=> b!4525604 (= lt!1701907 Unit!95938)))

(declare-fun lt!1701904 () Unit!95830)

(declare-fun Unit!95939 () Unit!95830)

(assert (=> b!4525604 (= lt!1701904 Unit!95939)))

(declare-fun lt!1701913 () Unit!95830)

(assert (=> b!4525604 (= lt!1701913 (addForallContainsKeyThenBeforeAdding!346 (extractMap!1226 (t!357761 (toList!4348 lm!1477))) lt!1701911 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477))))) (_2!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477)))))))))

(assert (=> b!4525604 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) lambda!173435)))

(declare-fun lt!1701916 () Unit!95830)

(assert (=> b!4525604 (= lt!1701916 lt!1701913)))

(assert (=> b!4525604 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) lambda!173435)))

(declare-fun lt!1701912 () Unit!95830)

(declare-fun Unit!95940 () Unit!95830)

(assert (=> b!4525604 (= lt!1701912 Unit!95940)))

(declare-fun res!1884153 () Bool)

(assert (=> b!4525604 (= res!1884153 (forall!10287 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173435))))

(assert (=> b!4525604 (=> (not res!1884153) (not e!2819723))))

(assert (=> b!4525604 e!2819723))

(declare-fun lt!1701909 () Unit!95830)

(declare-fun Unit!95941 () Unit!95830)

(assert (=> b!4525604 (= lt!1701909 Unit!95941)))

(assert (=> b!4525605 (= e!2819721 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))

(declare-fun lt!1701901 () Unit!95830)

(assert (=> b!4525605 (= lt!1701901 call!315375)))

(assert (=> b!4525605 call!315376))

(declare-fun lt!1701915 () Unit!95830)

(assert (=> b!4525605 (= lt!1701915 lt!1701901)))

(assert (=> b!4525605 call!315377))

(declare-fun lt!1701899 () Unit!95830)

(declare-fun Unit!95942 () Unit!95830)

(assert (=> b!4525605 (= lt!1701899 Unit!95942)))

(assert (=> d!1395453 e!2819722))

(declare-fun res!1884154 () Bool)

(assert (=> d!1395453 (=> (not res!1884154) (not e!2819722))))

(assert (=> d!1395453 (= res!1884154 (forall!10287 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173437))))

(assert (=> d!1395453 (= lt!1701914 e!2819721)))

(assert (=> d!1395453 (= c!772527 ((_ is Nil!50674) (_2!28852 (h!56536 (toList!4348 lm!1477)))))))

(assert (=> d!1395453 (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lm!1477))))))

(assert (=> d!1395453 (= (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 lm!1477))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) lt!1701914)))

(assert (= (and d!1395453 c!772527) b!4525605))

(assert (= (and d!1395453 (not c!772527)) b!4525604))

(assert (= (and b!4525604 res!1884153) b!4525601))

(assert (= (or b!4525605 b!4525604) bm!315370))

(assert (= (or b!4525605 b!4525604) bm!315372))

(assert (= (or b!4525605 b!4525604) bm!315371))

(assert (= (and d!1395453 res!1884154) b!4525602))

(assert (= (and b!4525602 res!1884152) b!4525603))

(declare-fun m!5278173 () Bool)

(assert (=> b!4525603 m!5278173))

(declare-fun m!5278175 () Bool)

(assert (=> b!4525604 m!5278175))

(declare-fun m!5278177 () Bool)

(assert (=> b!4525604 m!5278177))

(declare-fun m!5278179 () Bool)

(assert (=> b!4525604 m!5278179))

(assert (=> b!4525604 m!5276775))

(declare-fun m!5278181 () Bool)

(assert (=> b!4525604 m!5278181))

(declare-fun m!5278183 () Bool)

(assert (=> b!4525604 m!5278183))

(assert (=> b!4525604 m!5278183))

(declare-fun m!5278185 () Bool)

(assert (=> b!4525604 m!5278185))

(declare-fun m!5278187 () Bool)

(assert (=> b!4525604 m!5278187))

(declare-fun m!5278189 () Bool)

(assert (=> b!4525604 m!5278189))

(assert (=> b!4525604 m!5276775))

(declare-fun m!5278191 () Bool)

(assert (=> b!4525604 m!5278191))

(assert (=> b!4525604 m!5278175))

(assert (=> b!4525604 m!5278181))

(declare-fun m!5278193 () Bool)

(assert (=> b!4525604 m!5278193))

(declare-fun m!5278195 () Bool)

(assert (=> bm!315370 m!5278195))

(assert (=> b!4525601 m!5278183))

(assert (=> bm!315371 m!5276775))

(declare-fun m!5278197 () Bool)

(assert (=> bm!315371 m!5278197))

(declare-fun m!5278199 () Bool)

(assert (=> bm!315372 m!5278199))

(declare-fun m!5278201 () Bool)

(assert (=> d!1395453 m!5278201))

(assert (=> d!1395453 m!5277587))

(declare-fun m!5278203 () Bool)

(assert (=> b!4525602 m!5278203))

(assert (=> b!4524903 d!1395453))

(assert (=> b!4524903 d!1395087))

(declare-fun d!1395461 () Bool)

(declare-fun lt!1701921 () Bool)

(assert (=> d!1395461 (= lt!1701921 (select (content!8383 (keys!17612 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) key!3287))))

(declare-fun e!2819726 () Bool)

(assert (=> d!1395461 (= lt!1701921 e!2819726)))

(declare-fun res!1884158 () Bool)

(assert (=> d!1395461 (=> (not res!1884158) (not e!2819726))))

(assert (=> d!1395461 (= res!1884158 ((_ is Cons!50677) (keys!17612 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))

(assert (=> d!1395461 (= (contains!13420 (keys!17612 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287) lt!1701921)))

(declare-fun b!4525608 () Bool)

(declare-fun e!2819727 () Bool)

(assert (=> b!4525608 (= e!2819726 e!2819727)))

(declare-fun res!1884157 () Bool)

(assert (=> b!4525608 (=> res!1884157 e!2819727)))

(assert (=> b!4525608 (= res!1884157 (= (h!56540 (keys!17612 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) key!3287))))

(declare-fun b!4525609 () Bool)

(assert (=> b!4525609 (= e!2819727 (contains!13420 (t!357763 (keys!17612 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) key!3287))))

(assert (= (and d!1395461 res!1884158) b!4525608))

(assert (= (and b!4525608 (not res!1884157)) b!4525609))

(assert (=> d!1395461 m!5276991))

(declare-fun m!5278205 () Bool)

(assert (=> d!1395461 m!5278205))

(declare-fun m!5278207 () Bool)

(assert (=> d!1395461 m!5278207))

(declare-fun m!5278209 () Bool)

(assert (=> b!4525609 m!5278209))

(assert (=> b!4524918 d!1395461))

(declare-fun bs!860462 () Bool)

(declare-fun b!4525617 () Bool)

(assert (= bs!860462 (and b!4525617 b!4525502)))

(declare-fun lambda!173442 () Int)

(assert (=> bs!860462 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (t!357760 (toList!4347 lt!1701248))) (= lambda!173442 lambda!173421))))

(declare-fun bs!860463 () Bool)

(assert (= bs!860463 (and b!4525617 b!4525501)))

(assert (=> bs!860463 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173442 lambda!173422))))

(declare-fun bs!860464 () Bool)

(assert (= bs!860464 (and b!4525617 b!4525495)))

(assert (=> bs!860464 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (toList!4347 lt!1701248)) (= lambda!173442 lambda!173423))))

(assert (=> b!4525617 true))

(declare-fun bs!860465 () Bool)

(declare-fun b!4525618 () Bool)

(assert (= bs!860465 (and b!4525618 b!4525499)))

(declare-fun lambda!173443 () Int)

(assert (=> bs!860465 (= lambda!173443 lambda!173424)))

(declare-fun d!1395463 () Bool)

(declare-fun e!2819730 () Bool)

(assert (=> d!1395463 e!2819730))

(declare-fun res!1884167 () Bool)

(assert (=> d!1395463 (=> (not res!1884167) (not e!2819730))))

(declare-fun lt!1701924 () List!50801)

(assert (=> d!1395463 (= res!1884167 (noDuplicate!752 lt!1701924))))

(assert (=> d!1395463 (= lt!1701924 (getKeysList!472 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))

(assert (=> d!1395463 (= (keys!17612 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) lt!1701924)))

(declare-fun b!4525616 () Bool)

(declare-fun res!1884165 () Bool)

(assert (=> b!4525616 (=> (not res!1884165) (not e!2819730))))

(assert (=> b!4525616 (= res!1884165 (= (length!360 lt!1701924) (length!361 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))))

(declare-fun res!1884166 () Bool)

(assert (=> b!4525617 (=> (not res!1884166) (not e!2819730))))

(assert (=> b!4525617 (= res!1884166 (forall!10289 lt!1701924 lambda!173442))))

(assert (=> b!4525618 (= e!2819730 (= (content!8383 lt!1701924) (content!8383 (map!11148 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) lambda!173443))))))

(assert (= (and d!1395463 res!1884167) b!4525616))

(assert (= (and b!4525616 res!1884165) b!4525617))

(assert (= (and b!4525617 res!1884166) b!4525618))

(declare-fun m!5278219 () Bool)

(assert (=> d!1395463 m!5278219))

(assert (=> d!1395463 m!5276989))

(declare-fun m!5278225 () Bool)

(assert (=> b!4525616 m!5278225))

(declare-fun m!5278227 () Bool)

(assert (=> b!4525616 m!5278227))

(declare-fun m!5278229 () Bool)

(assert (=> b!4525617 m!5278229))

(declare-fun m!5278233 () Bool)

(assert (=> b!4525618 m!5278233))

(declare-fun m!5278237 () Bool)

(assert (=> b!4525618 m!5278237))

(assert (=> b!4525618 m!5278237))

(declare-fun m!5278239 () Bool)

(assert (=> b!4525618 m!5278239))

(assert (=> b!4524918 d!1395463))

(declare-fun d!1395469 () Bool)

(declare-fun res!1884175 () Bool)

(declare-fun e!2819741 () Bool)

(assert (=> d!1395469 (=> res!1884175 e!2819741)))

(assert (=> d!1395469 (= res!1884175 (or ((_ is Nil!50675) (toList!4348 lm!1477)) ((_ is Nil!50675) (t!357761 (toList!4348 lm!1477)))))))

(assert (=> d!1395469 (= (isStrictlySorted!439 (toList!4348 lm!1477)) e!2819741)))

(declare-fun b!4525634 () Bool)

(declare-fun e!2819742 () Bool)

(assert (=> b!4525634 (= e!2819741 e!2819742)))

(declare-fun res!1884176 () Bool)

(assert (=> b!4525634 (=> (not res!1884176) (not e!2819742))))

(assert (=> b!4525634 (= res!1884176 (bvslt (_1!28852 (h!56536 (toList!4348 lm!1477))) (_1!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))))))

(declare-fun b!4525635 () Bool)

(assert (=> b!4525635 (= e!2819742 (isStrictlySorted!439 (t!357761 (toList!4348 lm!1477))))))

(assert (= (and d!1395469 (not res!1884175)) b!4525634))

(assert (= (and b!4525634 res!1884176) b!4525635))

(declare-fun m!5278245 () Bool)

(assert (=> b!4525635 m!5278245))

(assert (=> d!1395037 d!1395469))

(declare-fun d!1395473 () Bool)

(declare-fun res!1884177 () Bool)

(declare-fun e!2819743 () Bool)

(assert (=> d!1395473 (=> res!1884177 e!2819743)))

(assert (=> d!1395473 (= res!1884177 (not ((_ is Cons!50674) (_2!28852 lt!1701258))))))

(assert (=> d!1395473 (= (noDuplicateKeys!1170 (_2!28852 lt!1701258)) e!2819743)))

(declare-fun b!4525636 () Bool)

(declare-fun e!2819744 () Bool)

(assert (=> b!4525636 (= e!2819743 e!2819744)))

(declare-fun res!1884178 () Bool)

(assert (=> b!4525636 (=> (not res!1884178) (not e!2819744))))

(assert (=> b!4525636 (= res!1884178 (not (containsKey!1806 (t!357760 (_2!28852 lt!1701258)) (_1!28851 (h!56535 (_2!28852 lt!1701258))))))))

(declare-fun b!4525637 () Bool)

(assert (=> b!4525637 (= e!2819744 (noDuplicateKeys!1170 (t!357760 (_2!28852 lt!1701258))))))

(assert (= (and d!1395473 (not res!1884177)) b!4525636))

(assert (= (and b!4525636 res!1884178) b!4525637))

(declare-fun m!5278247 () Bool)

(assert (=> b!4525636 m!5278247))

(declare-fun m!5278249 () Bool)

(assert (=> b!4525637 m!5278249))

(assert (=> bs!860282 d!1395473))

(declare-fun d!1395475 () Bool)

(assert (=> d!1395475 (= (invariantList!1025 (toList!4347 lt!1701445)) (noDuplicatedKeys!266 (toList!4347 lt!1701445)))))

(declare-fun bs!860466 () Bool)

(assert (= bs!860466 d!1395475))

(declare-fun m!5278251 () Bool)

(assert (=> bs!860466 m!5278251))

(assert (=> d!1395099 d!1395475))

(declare-fun d!1395477 () Bool)

(declare-fun res!1884179 () Bool)

(declare-fun e!2819745 () Bool)

(assert (=> d!1395477 (=> res!1884179 e!2819745)))

(assert (=> d!1395477 (= res!1884179 ((_ is Nil!50675) (toList!4348 lt!1701251)))))

(assert (=> d!1395477 (= (forall!10285 (toList!4348 lt!1701251) lambda!173319) e!2819745)))

(declare-fun b!4525638 () Bool)

(declare-fun e!2819746 () Bool)

(assert (=> b!4525638 (= e!2819745 e!2819746)))

(declare-fun res!1884180 () Bool)

(assert (=> b!4525638 (=> (not res!1884180) (not e!2819746))))

(assert (=> b!4525638 (= res!1884180 (dynLambda!21175 lambda!173319 (h!56536 (toList!4348 lt!1701251))))))

(declare-fun b!4525639 () Bool)

(assert (=> b!4525639 (= e!2819746 (forall!10285 (t!357761 (toList!4348 lt!1701251)) lambda!173319))))

(assert (= (and d!1395477 (not res!1884179)) b!4525638))

(assert (= (and b!4525638 res!1884180) b!4525639))

(declare-fun b_lambda!155671 () Bool)

(assert (=> (not b_lambda!155671) (not b!4525638)))

(declare-fun m!5278253 () Bool)

(assert (=> b!4525638 m!5278253))

(declare-fun m!5278255 () Bool)

(assert (=> b!4525639 m!5278255))

(assert (=> d!1395099 d!1395477))

(declare-fun d!1395479 () Bool)

(declare-fun res!1884181 () Bool)

(declare-fun e!2819747 () Bool)

(assert (=> d!1395479 (=> res!1884181 e!2819747)))

(assert (=> d!1395479 (= res!1884181 ((_ is Nil!50674) (toList!4347 lt!1701249)))))

(assert (=> d!1395479 (= (forall!10287 (toList!4347 lt!1701249) lambda!173383) e!2819747)))

(declare-fun b!4525640 () Bool)

(declare-fun e!2819748 () Bool)

(assert (=> b!4525640 (= e!2819747 e!2819748)))

(declare-fun res!1884182 () Bool)

(assert (=> b!4525640 (=> (not res!1884182) (not e!2819748))))

(assert (=> b!4525640 (= res!1884182 (dynLambda!21177 lambda!173383 (h!56535 (toList!4347 lt!1701249))))))

(declare-fun b!4525641 () Bool)

(assert (=> b!4525641 (= e!2819748 (forall!10287 (t!357760 (toList!4347 lt!1701249)) lambda!173383))))

(assert (= (and d!1395479 (not res!1884181)) b!4525640))

(assert (= (and b!4525640 res!1884182) b!4525641))

(declare-fun b_lambda!155673 () Bool)

(assert (=> (not b_lambda!155673) (not b!4525640)))

(declare-fun m!5278257 () Bool)

(assert (=> b!4525640 m!5278257))

(declare-fun m!5278259 () Bool)

(assert (=> b!4525641 m!5278259))

(assert (=> b!4525153 d!1395479))

(declare-fun d!1395481 () Bool)

(declare-fun isEmpty!28693 (Option!11137) Bool)

(assert (=> d!1395481 (= (isDefined!8424 (getValueByKey!1109 (toList!4348 lm!1477) lt!1701244)) (not (isEmpty!28693 (getValueByKey!1109 (toList!4348 lm!1477) lt!1701244))))))

(declare-fun bs!860467 () Bool)

(assert (= bs!860467 d!1395481))

(assert (=> bs!860467 m!5277563))

(declare-fun m!5278261 () Bool)

(assert (=> bs!860467 m!5278261))

(assert (=> b!4525170 d!1395481))

(declare-fun b!4525642 () Bool)

(declare-fun e!2819749 () Option!11137)

(assert (=> b!4525642 (= e!2819749 (Some!11136 (_2!28852 (h!56536 (toList!4348 lm!1477)))))))

(declare-fun d!1395483 () Bool)

(declare-fun c!772531 () Bool)

(assert (=> d!1395483 (= c!772531 (and ((_ is Cons!50675) (toList!4348 lm!1477)) (= (_1!28852 (h!56536 (toList!4348 lm!1477))) lt!1701244)))))

(assert (=> d!1395483 (= (getValueByKey!1109 (toList!4348 lm!1477) lt!1701244) e!2819749)))

(declare-fun b!4525643 () Bool)

(declare-fun e!2819750 () Option!11137)

(assert (=> b!4525643 (= e!2819749 e!2819750)))

(declare-fun c!772532 () Bool)

(assert (=> b!4525643 (= c!772532 (and ((_ is Cons!50675) (toList!4348 lm!1477)) (not (= (_1!28852 (h!56536 (toList!4348 lm!1477))) lt!1701244))))))

(declare-fun b!4525644 () Bool)

(assert (=> b!4525644 (= e!2819750 (getValueByKey!1109 (t!357761 (toList!4348 lm!1477)) lt!1701244))))

(declare-fun b!4525645 () Bool)

(assert (=> b!4525645 (= e!2819750 None!11136)))

(assert (= (and d!1395483 c!772531) b!4525642))

(assert (= (and d!1395483 (not c!772531)) b!4525643))

(assert (= (and b!4525643 c!772532) b!4525644))

(assert (= (and b!4525643 (not c!772532)) b!4525645))

(declare-fun m!5278263 () Bool)

(assert (=> b!4525644 m!5278263))

(assert (=> b!4525170 d!1395483))

(declare-fun d!1395485 () Bool)

(assert (=> d!1395485 (= (invariantList!1025 (toList!4347 lt!1701485)) (noDuplicatedKeys!266 (toList!4347 lt!1701485)))))

(declare-fun bs!860468 () Bool)

(assert (= bs!860468 d!1395485))

(declare-fun m!5278265 () Bool)

(assert (=> bs!860468 m!5278265))

(assert (=> d!1395133 d!1395485))

(declare-fun d!1395487 () Bool)

(declare-fun res!1884183 () Bool)

(declare-fun e!2819751 () Bool)

(assert (=> d!1395487 (=> res!1884183 e!2819751)))

(assert (=> d!1395487 (= res!1884183 ((_ is Nil!50675) (toList!4348 lt!1701246)))))

(assert (=> d!1395487 (= (forall!10285 (toList!4348 lt!1701246) lambda!173333) e!2819751)))

(declare-fun b!4525646 () Bool)

(declare-fun e!2819752 () Bool)

(assert (=> b!4525646 (= e!2819751 e!2819752)))

(declare-fun res!1884184 () Bool)

(assert (=> b!4525646 (=> (not res!1884184) (not e!2819752))))

(assert (=> b!4525646 (= res!1884184 (dynLambda!21175 lambda!173333 (h!56536 (toList!4348 lt!1701246))))))

(declare-fun b!4525647 () Bool)

(assert (=> b!4525647 (= e!2819752 (forall!10285 (t!357761 (toList!4348 lt!1701246)) lambda!173333))))

(assert (= (and d!1395487 (not res!1884183)) b!4525646))

(assert (= (and b!4525646 res!1884184) b!4525647))

(declare-fun b_lambda!155675 () Bool)

(assert (=> (not b_lambda!155675) (not b!4525646)))

(declare-fun m!5278267 () Bool)

(assert (=> b!4525646 m!5278267))

(declare-fun m!5278269 () Bool)

(assert (=> b!4525647 m!5278269))

(assert (=> d!1395133 d!1395487))

(declare-fun d!1395489 () Bool)

(declare-fun res!1884185 () Bool)

(declare-fun e!2819753 () Bool)

(assert (=> d!1395489 (=> res!1884185 e!2819753)))

(assert (=> d!1395489 (= res!1884185 ((_ is Nil!50674) newBucket!178))))

(assert (=> d!1395489 (= (forall!10287 newBucket!178 lambda!173394) e!2819753)))

(declare-fun b!4525648 () Bool)

(declare-fun e!2819754 () Bool)

(assert (=> b!4525648 (= e!2819753 e!2819754)))

(declare-fun res!1884186 () Bool)

(assert (=> b!4525648 (=> (not res!1884186) (not e!2819754))))

(assert (=> b!4525648 (= res!1884186 (dynLambda!21177 lambda!173394 (h!56535 newBucket!178)))))

(declare-fun b!4525649 () Bool)

(assert (=> b!4525649 (= e!2819754 (forall!10287 (t!357760 newBucket!178) lambda!173394))))

(assert (= (and d!1395489 (not res!1884185)) b!4525648))

(assert (= (and b!4525648 res!1884186) b!4525649))

(declare-fun b_lambda!155677 () Bool)

(assert (=> (not b_lambda!155677) (not b!4525648)))

(declare-fun m!5278271 () Bool)

(assert (=> b!4525648 m!5278271))

(declare-fun m!5278273 () Bool)

(assert (=> b!4525649 m!5278273))

(assert (=> d!1395243 d!1395489))

(declare-fun d!1395491 () Bool)

(assert (=> d!1395491 (= (isDefined!8423 lt!1701544) (not (isEmpty!28689 lt!1701544)))))

(declare-fun bs!860469 () Bool)

(assert (= bs!860469 d!1395491))

(assert (=> bs!860469 m!5277307))

(assert (=> b!4525048 d!1395491))

(declare-fun d!1395493 () Bool)

(declare-fun lt!1701933 () Bool)

(assert (=> d!1395493 (= lt!1701933 (select (content!8382 (toList!4348 lm!1477)) (h!56536 (toList!4348 lm!1477))))))

(declare-fun e!2819756 () Bool)

(assert (=> d!1395493 (= lt!1701933 e!2819756)))

(declare-fun res!1884188 () Bool)

(assert (=> d!1395493 (=> (not res!1884188) (not e!2819756))))

(assert (=> d!1395493 (= res!1884188 ((_ is Cons!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395493 (= (contains!13419 (toList!4348 lm!1477) (h!56536 (toList!4348 lm!1477))) lt!1701933)))

(declare-fun b!4525650 () Bool)

(declare-fun e!2819755 () Bool)

(assert (=> b!4525650 (= e!2819756 e!2819755)))

(declare-fun res!1884187 () Bool)

(assert (=> b!4525650 (=> res!1884187 e!2819755)))

(assert (=> b!4525650 (= res!1884187 (= (h!56536 (toList!4348 lm!1477)) (h!56536 (toList!4348 lm!1477))))))

(declare-fun b!4525651 () Bool)

(assert (=> b!4525651 (= e!2819755 (contains!13419 (t!357761 (toList!4348 lm!1477)) (h!56536 (toList!4348 lm!1477))))))

(assert (= (and d!1395493 res!1884188) b!4525650))

(assert (= (and b!4525650 (not res!1884187)) b!4525651))

(assert (=> d!1395493 m!5277567))

(declare-fun m!5278275 () Bool)

(assert (=> d!1395493 m!5278275))

(declare-fun m!5278277 () Bool)

(assert (=> b!4525651 m!5278277))

(assert (=> b!4524803 d!1395493))

(assert (=> b!4524923 d!1395461))

(assert (=> b!4524923 d!1395463))

(declare-fun d!1395495 () Bool)

(declare-fun res!1884189 () Bool)

(declare-fun e!2819757 () Bool)

(assert (=> d!1395495 (=> res!1884189 e!2819757)))

(assert (=> d!1395495 (= res!1884189 ((_ is Nil!50674) (toList!4347 lt!1701256)))))

(assert (=> d!1395495 (= (forall!10287 (toList!4347 lt!1701256) lambda!173389) e!2819757)))

(declare-fun b!4525652 () Bool)

(declare-fun e!2819758 () Bool)

(assert (=> b!4525652 (= e!2819757 e!2819758)))

(declare-fun res!1884190 () Bool)

(assert (=> b!4525652 (=> (not res!1884190) (not e!2819758))))

(assert (=> b!4525652 (= res!1884190 (dynLambda!21177 lambda!173389 (h!56535 (toList!4347 lt!1701256))))))

(declare-fun b!4525653 () Bool)

(assert (=> b!4525653 (= e!2819758 (forall!10287 (t!357760 (toList!4347 lt!1701256)) lambda!173389))))

(assert (= (and d!1395495 (not res!1884189)) b!4525652))

(assert (= (and b!4525652 res!1884190) b!4525653))

(declare-fun b_lambda!155679 () Bool)

(assert (=> (not b_lambda!155679) (not b!4525652)))

(declare-fun m!5278279 () Bool)

(assert (=> b!4525652 m!5278279))

(declare-fun m!5278281 () Bool)

(assert (=> b!4525653 m!5278281))

(assert (=> b!4525159 d!1395495))

(declare-fun b!4525654 () Bool)

(declare-fun e!2819759 () Option!11137)

(assert (=> b!4525654 (= e!2819759 (Some!11136 (_2!28852 (h!56536 (toList!4348 lt!1701533)))))))

(declare-fun d!1395497 () Bool)

(declare-fun c!772533 () Bool)

(assert (=> d!1395497 (= c!772533 (and ((_ is Cons!50675) (toList!4348 lt!1701533)) (= (_1!28852 (h!56536 (toList!4348 lt!1701533))) (_1!28852 lt!1701243))))))

(assert (=> d!1395497 (= (getValueByKey!1109 (toList!4348 lt!1701533) (_1!28852 lt!1701243)) e!2819759)))

(declare-fun b!4525655 () Bool)

(declare-fun e!2819760 () Option!11137)

(assert (=> b!4525655 (= e!2819759 e!2819760)))

(declare-fun c!772534 () Bool)

(assert (=> b!4525655 (= c!772534 (and ((_ is Cons!50675) (toList!4348 lt!1701533)) (not (= (_1!28852 (h!56536 (toList!4348 lt!1701533))) (_1!28852 lt!1701243)))))))

(declare-fun b!4525656 () Bool)

(assert (=> b!4525656 (= e!2819760 (getValueByKey!1109 (t!357761 (toList!4348 lt!1701533)) (_1!28852 lt!1701243)))))

(declare-fun b!4525657 () Bool)

(assert (=> b!4525657 (= e!2819760 None!11136)))

(assert (= (and d!1395497 c!772533) b!4525654))

(assert (= (and d!1395497 (not c!772533)) b!4525655))

(assert (= (and b!4525655 c!772534) b!4525656))

(assert (= (and b!4525655 (not c!772534)) b!4525657))

(declare-fun m!5278283 () Bool)

(assert (=> b!4525656 m!5278283))

(assert (=> b!4525020 d!1395497))

(declare-fun d!1395499 () Bool)

(declare-fun res!1884191 () Bool)

(declare-fun e!2819761 () Bool)

(assert (=> d!1395499 (=> res!1884191 e!2819761)))

(assert (=> d!1395499 (= res!1884191 ((_ is Nil!50674) (_2!28852 lt!1701242)))))

(assert (=> d!1395499 (= (forall!10287 (_2!28852 lt!1701242) lambda!173383) e!2819761)))

(declare-fun b!4525658 () Bool)

(declare-fun e!2819762 () Bool)

(assert (=> b!4525658 (= e!2819761 e!2819762)))

(declare-fun res!1884192 () Bool)

(assert (=> b!4525658 (=> (not res!1884192) (not e!2819762))))

(assert (=> b!4525658 (= res!1884192 (dynLambda!21177 lambda!173383 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun b!4525659 () Bool)

(assert (=> b!4525659 (= e!2819762 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173383))))

(assert (= (and d!1395499 (not res!1884191)) b!4525658))

(assert (= (and b!4525658 res!1884192) b!4525659))

(declare-fun b_lambda!155681 () Bool)

(assert (=> (not b_lambda!155681) (not b!4525658)))

(declare-fun m!5278285 () Bool)

(assert (=> b!4525658 m!5278285))

(declare-fun m!5278287 () Bool)

(assert (=> b!4525659 m!5278287))

(assert (=> d!1395201 d!1395499))

(assert (=> d!1395201 d!1395043))

(declare-fun bs!860470 () Bool)

(declare-fun b!4525664 () Bool)

(assert (= bs!860470 (and b!4525664 b!4525163)))

(declare-fun lambda!173444 () Int)

(assert (=> bs!860470 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701256) (= lambda!173444 lambda!173387))))

(declare-fun bs!860471 () Bool)

(assert (= bs!860471 (and b!4525664 b!4525155)))

(assert (=> bs!860471 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701249) (= lambda!173444 lambda!173381))))

(declare-fun bs!860472 () Bool)

(assert (= bs!860472 (and b!4525664 b!4525604)))

(assert (=> bs!860472 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701911) (= lambda!173444 lambda!173435))))

(declare-fun bs!860474 () Bool)

(assert (= bs!860474 (and b!4525664 d!1395423)))

(assert (=> bs!860474 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701860) (= lambda!173444 lambda!173428))))

(declare-fun bs!860475 () Bool)

(assert (= bs!860475 (and b!4525664 d!1395201)))

(assert (=> bs!860475 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701649) (= lambda!173444 lambda!173383))))

(declare-fun bs!860476 () Bool)

(assert (= bs!860476 (and b!4525664 b!4525156)))

(assert (=> bs!860476 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701249) (= lambda!173444 lambda!173380))))

(assert (=> bs!860472 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173444 lambda!173434))))

(declare-fun bs!860477 () Bool)

(assert (= bs!860477 (and b!4525664 b!4525560)))

(assert (=> bs!860477 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173444 lambda!173425))))

(declare-fun bs!860478 () Bool)

(assert (= bs!860478 (and b!4525664 d!1395239)))

(assert (=> bs!860478 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701673) (= lambda!173444 lambda!173390))))

(declare-fun bs!860479 () Bool)

(assert (= bs!860479 (and b!4525664 b!4524756)))

(assert (=> bs!860479 (not (= lambda!173444 lambda!173267))))

(declare-fun bs!860480 () Bool)

(assert (= bs!860480 (and b!4525664 b!4525559)))

(assert (=> bs!860480 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701854) (= lambda!173444 lambda!173427))))

(declare-fun bs!860481 () Bool)

(assert (= bs!860481 (and b!4525664 d!1395453)))

(assert (=> bs!860481 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701914) (= lambda!173444 lambda!173437))))

(assert (=> bs!860480 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173444 lambda!173426))))

(declare-fun bs!860482 () Bool)

(assert (= bs!860482 (and b!4525664 b!4525162)))

(assert (=> bs!860482 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701256) (= lambda!173444 lambda!173388))))

(declare-fun bs!860483 () Bool)

(assert (= bs!860483 (and b!4525664 b!4525605)))

(assert (=> bs!860483 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173444 lambda!173432))))

(assert (=> bs!860471 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701646) (= lambda!173444 lambda!173382))))

(declare-fun bs!860484 () Bool)

(assert (= bs!860484 (and b!4525664 d!1395243)))

(assert (=> bs!860484 (not (= lambda!173444 lambda!173394))))

(assert (=> bs!860482 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701670) (= lambda!173444 lambda!173389))))

(assert (=> b!4525664 true))

(declare-fun bs!860485 () Bool)

(declare-fun b!4525663 () Bool)

(assert (= bs!860485 (and b!4525663 b!4525163)))

(declare-fun lambda!173445 () Int)

(assert (=> bs!860485 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701256) (= lambda!173445 lambda!173387))))

(declare-fun bs!860486 () Bool)

(assert (= bs!860486 (and b!4525663 b!4525155)))

(assert (=> bs!860486 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701249) (= lambda!173445 lambda!173381))))

(declare-fun bs!860488 () Bool)

(assert (= bs!860488 (and b!4525663 b!4525604)))

(assert (=> bs!860488 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701911) (= lambda!173445 lambda!173435))))

(declare-fun bs!860489 () Bool)

(assert (= bs!860489 (and b!4525663 d!1395423)))

(assert (=> bs!860489 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701860) (= lambda!173445 lambda!173428))))

(declare-fun bs!860491 () Bool)

(assert (= bs!860491 (and b!4525663 d!1395201)))

(assert (=> bs!860491 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701649) (= lambda!173445 lambda!173383))))

(declare-fun bs!860493 () Bool)

(assert (= bs!860493 (and b!4525663 b!4525156)))

(assert (=> bs!860493 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701249) (= lambda!173445 lambda!173380))))

(assert (=> bs!860488 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173445 lambda!173434))))

(declare-fun bs!860495 () Bool)

(assert (= bs!860495 (and b!4525663 b!4525664)))

(assert (=> bs!860495 (= lambda!173445 lambda!173444)))

(declare-fun bs!860497 () Bool)

(assert (= bs!860497 (and b!4525663 b!4525560)))

(assert (=> bs!860497 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173445 lambda!173425))))

(declare-fun bs!860499 () Bool)

(assert (= bs!860499 (and b!4525663 d!1395239)))

(assert (=> bs!860499 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701673) (= lambda!173445 lambda!173390))))

(declare-fun bs!860501 () Bool)

(assert (= bs!860501 (and b!4525663 b!4524756)))

(assert (=> bs!860501 (not (= lambda!173445 lambda!173267))))

(declare-fun bs!860503 () Bool)

(assert (= bs!860503 (and b!4525663 b!4525559)))

(assert (=> bs!860503 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701854) (= lambda!173445 lambda!173427))))

(declare-fun bs!860504 () Bool)

(assert (= bs!860504 (and b!4525663 d!1395453)))

(assert (=> bs!860504 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701914) (= lambda!173445 lambda!173437))))

(assert (=> bs!860503 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173445 lambda!173426))))

(declare-fun bs!860507 () Bool)

(assert (= bs!860507 (and b!4525663 b!4525162)))

(assert (=> bs!860507 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701256) (= lambda!173445 lambda!173388))))

(declare-fun bs!860509 () Bool)

(assert (= bs!860509 (and b!4525663 b!4525605)))

(assert (=> bs!860509 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173445 lambda!173432))))

(assert (=> bs!860486 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701646) (= lambda!173445 lambda!173382))))

(declare-fun bs!860512 () Bool)

(assert (= bs!860512 (and b!4525663 d!1395243)))

(assert (=> bs!860512 (not (= lambda!173445 lambda!173394))))

(assert (=> bs!860507 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701670) (= lambda!173445 lambda!173389))))

(assert (=> b!4525663 true))

(declare-fun lt!1701946 () ListMap!3609)

(declare-fun lambda!173447 () Int)

(assert (=> bs!860485 (= (= lt!1701946 lt!1701256) (= lambda!173447 lambda!173387))))

(assert (=> bs!860486 (= (= lt!1701946 lt!1701249) (= lambda!173447 lambda!173381))))

(assert (=> b!4525663 (= (= lt!1701946 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173447 lambda!173445))))

(assert (=> bs!860488 (= (= lt!1701946 lt!1701911) (= lambda!173447 lambda!173435))))

(assert (=> bs!860489 (= (= lt!1701946 lt!1701860) (= lambda!173447 lambda!173428))))

(assert (=> bs!860491 (= (= lt!1701946 lt!1701649) (= lambda!173447 lambda!173383))))

(assert (=> bs!860493 (= (= lt!1701946 lt!1701249) (= lambda!173447 lambda!173380))))

(assert (=> bs!860488 (= (= lt!1701946 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173447 lambda!173434))))

(assert (=> bs!860495 (= (= lt!1701946 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173447 lambda!173444))))

(assert (=> bs!860497 (= (= lt!1701946 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173447 lambda!173425))))

(assert (=> bs!860499 (= (= lt!1701946 lt!1701673) (= lambda!173447 lambda!173390))))

(assert (=> bs!860501 (not (= lambda!173447 lambda!173267))))

(assert (=> bs!860503 (= (= lt!1701946 lt!1701854) (= lambda!173447 lambda!173427))))

(assert (=> bs!860504 (= (= lt!1701946 lt!1701914) (= lambda!173447 lambda!173437))))

(assert (=> bs!860503 (= (= lt!1701946 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173447 lambda!173426))))

(assert (=> bs!860507 (= (= lt!1701946 lt!1701256) (= lambda!173447 lambda!173388))))

(assert (=> bs!860509 (= (= lt!1701946 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173447 lambda!173432))))

(assert (=> bs!860486 (= (= lt!1701946 lt!1701646) (= lambda!173447 lambda!173382))))

(assert (=> bs!860512 (not (= lambda!173447 lambda!173394))))

(assert (=> bs!860507 (= (= lt!1701946 lt!1701670) (= lambda!173447 lambda!173389))))

(assert (=> b!4525663 true))

(declare-fun bs!860531 () Bool)

(declare-fun d!1395501 () Bool)

(assert (= bs!860531 (and d!1395501 b!4525163)))

(declare-fun lt!1701949 () ListMap!3609)

(declare-fun lambda!173450 () Int)

(assert (=> bs!860531 (= (= lt!1701949 lt!1701256) (= lambda!173450 lambda!173387))))

(declare-fun bs!860532 () Bool)

(assert (= bs!860532 (and d!1395501 b!4525155)))

(assert (=> bs!860532 (= (= lt!1701949 lt!1701249) (= lambda!173450 lambda!173381))))

(declare-fun bs!860533 () Bool)

(assert (= bs!860533 (and d!1395501 b!4525663)))

(assert (=> bs!860533 (= (= lt!1701949 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173450 lambda!173445))))

(declare-fun bs!860534 () Bool)

(assert (= bs!860534 (and d!1395501 b!4525604)))

(assert (=> bs!860534 (= (= lt!1701949 lt!1701911) (= lambda!173450 lambda!173435))))

(assert (=> bs!860533 (= (= lt!1701949 lt!1701946) (= lambda!173450 lambda!173447))))

(declare-fun bs!860535 () Bool)

(assert (= bs!860535 (and d!1395501 d!1395423)))

(assert (=> bs!860535 (= (= lt!1701949 lt!1701860) (= lambda!173450 lambda!173428))))

(declare-fun bs!860536 () Bool)

(assert (= bs!860536 (and d!1395501 d!1395201)))

(assert (=> bs!860536 (= (= lt!1701949 lt!1701649) (= lambda!173450 lambda!173383))))

(declare-fun bs!860537 () Bool)

(assert (= bs!860537 (and d!1395501 b!4525156)))

(assert (=> bs!860537 (= (= lt!1701949 lt!1701249) (= lambda!173450 lambda!173380))))

(assert (=> bs!860534 (= (= lt!1701949 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173450 lambda!173434))))

(declare-fun bs!860538 () Bool)

(assert (= bs!860538 (and d!1395501 b!4525664)))

(assert (=> bs!860538 (= (= lt!1701949 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173450 lambda!173444))))

(declare-fun bs!860539 () Bool)

(assert (= bs!860539 (and d!1395501 b!4525560)))

(assert (=> bs!860539 (= (= lt!1701949 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173450 lambda!173425))))

(declare-fun bs!860540 () Bool)

(assert (= bs!860540 (and d!1395501 d!1395239)))

(assert (=> bs!860540 (= (= lt!1701949 lt!1701673) (= lambda!173450 lambda!173390))))

(declare-fun bs!860541 () Bool)

(assert (= bs!860541 (and d!1395501 b!4524756)))

(assert (=> bs!860541 (not (= lambda!173450 lambda!173267))))

(declare-fun bs!860542 () Bool)

(assert (= bs!860542 (and d!1395501 b!4525559)))

(assert (=> bs!860542 (= (= lt!1701949 lt!1701854) (= lambda!173450 lambda!173427))))

(declare-fun bs!860543 () Bool)

(assert (= bs!860543 (and d!1395501 d!1395453)))

(assert (=> bs!860543 (= (= lt!1701949 lt!1701914) (= lambda!173450 lambda!173437))))

(assert (=> bs!860542 (= (= lt!1701949 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173450 lambda!173426))))

(declare-fun bs!860544 () Bool)

(assert (= bs!860544 (and d!1395501 b!4525162)))

(assert (=> bs!860544 (= (= lt!1701949 lt!1701256) (= lambda!173450 lambda!173388))))

(declare-fun bs!860545 () Bool)

(assert (= bs!860545 (and d!1395501 b!4525605)))

(assert (=> bs!860545 (= (= lt!1701949 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173450 lambda!173432))))

(assert (=> bs!860532 (= (= lt!1701949 lt!1701646) (= lambda!173450 lambda!173382))))

(declare-fun bs!860546 () Bool)

(assert (= bs!860546 (and d!1395501 d!1395243)))

(assert (=> bs!860546 (not (= lambda!173450 lambda!173394))))

(assert (=> bs!860544 (= (= lt!1701949 lt!1701670) (= lambda!173450 lambda!173389))))

(assert (=> d!1395501 true))

(declare-fun bm!315374 () Bool)

(declare-fun call!315381 () Bool)

(declare-fun c!772535 () Bool)

(assert (=> bm!315374 (= call!315381 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (ite c!772535 lambda!173444 lambda!173445)))))

(declare-fun b!4525660 () Bool)

(declare-fun e!2819765 () Bool)

(assert (=> b!4525660 (= e!2819765 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) lambda!173447))))

(declare-fun bm!315375 () Bool)

(declare-fun call!315379 () Unit!95830)

(assert (=> bm!315375 (= call!315379 (lemmaContainsAllItsOwnKeys!346 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))))))

(declare-fun lt!1701945 () ListMap!3609)

(declare-fun call!315380 () Bool)

(declare-fun bm!315376 () Bool)

(assert (=> bm!315376 (= call!315380 (forall!10287 (ite c!772535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (toList!4347 lt!1701945)) (ite c!772535 lambda!173444 lambda!173447)))))

(declare-fun b!4525661 () Bool)

(declare-fun res!1884193 () Bool)

(declare-fun e!2819764 () Bool)

(assert (=> b!4525661 (=> (not res!1884193) (not e!2819764))))

(assert (=> b!4525661 (= res!1884193 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) lambda!173450))))

(declare-fun b!4525662 () Bool)

(assert (=> b!4525662 (= e!2819764 (invariantList!1025 (toList!4347 lt!1701949)))))

(declare-fun e!2819763 () ListMap!3609)

(assert (=> b!4525663 (= e!2819763 lt!1701946)))

(assert (=> b!4525663 (= lt!1701945 (+!1558 (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701255))))))))

(assert (=> b!4525663 (= lt!1701946 (addToMapMapFromBucket!697 (t!357760 (_2!28852 (h!56536 (toList!4348 lt!1701255)))) (+!1558 (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701255)))))))))

(declare-fun lt!1701943 () Unit!95830)

(assert (=> b!4525663 (= lt!1701943 call!315379)))

(assert (=> b!4525663 call!315381))

(declare-fun lt!1701954 () Unit!95830)

(assert (=> b!4525663 (= lt!1701954 lt!1701943)))

(assert (=> b!4525663 call!315380))

(declare-fun lt!1701953 () Unit!95830)

(declare-fun Unit!95957 () Unit!95830)

(assert (=> b!4525663 (= lt!1701953 Unit!95957)))

(assert (=> b!4525663 (forall!10287 (t!357760 (_2!28852 (h!56536 (toList!4348 lt!1701255)))) lambda!173447)))

(declare-fun lt!1701941 () Unit!95830)

(declare-fun Unit!95958 () Unit!95830)

(assert (=> b!4525663 (= lt!1701941 Unit!95958)))

(declare-fun lt!1701952 () Unit!95830)

(declare-fun Unit!95959 () Unit!95830)

(assert (=> b!4525663 (= lt!1701952 Unit!95959)))

(declare-fun lt!1701940 () Unit!95830)

(assert (=> b!4525663 (= lt!1701940 (forallContained!2539 (toList!4347 lt!1701945) lambda!173447 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701255))))))))

(assert (=> b!4525663 (contains!13418 lt!1701945 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701255))))))))

(declare-fun lt!1701935 () Unit!95830)

(declare-fun Unit!95960 () Unit!95830)

(assert (=> b!4525663 (= lt!1701935 Unit!95960)))

(assert (=> b!4525663 (contains!13418 lt!1701946 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701255))))))))

(declare-fun lt!1701937 () Unit!95830)

(declare-fun Unit!95961 () Unit!95830)

(assert (=> b!4525663 (= lt!1701937 Unit!95961)))

(assert (=> b!4525663 (forall!10287 (_2!28852 (h!56536 (toList!4348 lt!1701255))) lambda!173447)))

(declare-fun lt!1701938 () Unit!95830)

(declare-fun Unit!95962 () Unit!95830)

(assert (=> b!4525663 (= lt!1701938 Unit!95962)))

(assert (=> b!4525663 (forall!10287 (toList!4347 lt!1701945) lambda!173447)))

(declare-fun lt!1701942 () Unit!95830)

(declare-fun Unit!95963 () Unit!95830)

(assert (=> b!4525663 (= lt!1701942 Unit!95963)))

(declare-fun lt!1701939 () Unit!95830)

(declare-fun Unit!95964 () Unit!95830)

(assert (=> b!4525663 (= lt!1701939 Unit!95964)))

(declare-fun lt!1701948 () Unit!95830)

(assert (=> b!4525663 (= lt!1701948 (addForallContainsKeyThenBeforeAdding!346 (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701946 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701255))))) (_2!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701255)))))))))

(assert (=> b!4525663 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) lambda!173447)))

(declare-fun lt!1701951 () Unit!95830)

(assert (=> b!4525663 (= lt!1701951 lt!1701948)))

(assert (=> b!4525663 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) lambda!173447)))

(declare-fun lt!1701947 () Unit!95830)

(declare-fun Unit!95965 () Unit!95830)

(assert (=> b!4525663 (= lt!1701947 Unit!95965)))

(declare-fun res!1884194 () Bool)

(assert (=> b!4525663 (= res!1884194 (forall!10287 (_2!28852 (h!56536 (toList!4348 lt!1701255))) lambda!173447))))

(assert (=> b!4525663 (=> (not res!1884194) (not e!2819765))))

(assert (=> b!4525663 e!2819765))

(declare-fun lt!1701944 () Unit!95830)

(declare-fun Unit!95966 () Unit!95830)

(assert (=> b!4525663 (= lt!1701944 Unit!95966)))

(assert (=> b!4525664 (= e!2819763 (extractMap!1226 (t!357761 (toList!4348 lt!1701255))))))

(declare-fun lt!1701936 () Unit!95830)

(assert (=> b!4525664 (= lt!1701936 call!315379)))

(assert (=> b!4525664 call!315380))

(declare-fun lt!1701950 () Unit!95830)

(assert (=> b!4525664 (= lt!1701950 lt!1701936)))

(assert (=> b!4525664 call!315381))

(declare-fun lt!1701934 () Unit!95830)

(declare-fun Unit!95967 () Unit!95830)

(assert (=> b!4525664 (= lt!1701934 Unit!95967)))

(assert (=> d!1395501 e!2819764))

(declare-fun res!1884195 () Bool)

(assert (=> d!1395501 (=> (not res!1884195) (not e!2819764))))

(assert (=> d!1395501 (= res!1884195 (forall!10287 (_2!28852 (h!56536 (toList!4348 lt!1701255))) lambda!173450))))

(assert (=> d!1395501 (= lt!1701949 e!2819763)))

(assert (=> d!1395501 (= c!772535 ((_ is Nil!50674) (_2!28852 (h!56536 (toList!4348 lt!1701255)))))))

(assert (=> d!1395501 (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lt!1701255))))))

(assert (=> d!1395501 (= (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 lt!1701255))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) lt!1701949)))

(assert (= (and d!1395501 c!772535) b!4525664))

(assert (= (and d!1395501 (not c!772535)) b!4525663))

(assert (= (and b!4525663 res!1884194) b!4525660))

(assert (= (or b!4525664 b!4525663) bm!315374))

(assert (= (or b!4525664 b!4525663) bm!315376))

(assert (= (or b!4525664 b!4525663) bm!315375))

(assert (= (and d!1395501 res!1884195) b!4525661))

(assert (= (and b!4525661 res!1884193) b!4525662))

(declare-fun m!5278293 () Bool)

(assert (=> b!4525662 m!5278293))

(declare-fun m!5278295 () Bool)

(assert (=> b!4525663 m!5278295))

(declare-fun m!5278297 () Bool)

(assert (=> b!4525663 m!5278297))

(declare-fun m!5278299 () Bool)

(assert (=> b!4525663 m!5278299))

(assert (=> b!4525663 m!5277543))

(declare-fun m!5278301 () Bool)

(assert (=> b!4525663 m!5278301))

(declare-fun m!5278303 () Bool)

(assert (=> b!4525663 m!5278303))

(assert (=> b!4525663 m!5278303))

(declare-fun m!5278305 () Bool)

(assert (=> b!4525663 m!5278305))

(declare-fun m!5278307 () Bool)

(assert (=> b!4525663 m!5278307))

(declare-fun m!5278309 () Bool)

(assert (=> b!4525663 m!5278309))

(assert (=> b!4525663 m!5277543))

(declare-fun m!5278311 () Bool)

(assert (=> b!4525663 m!5278311))

(assert (=> b!4525663 m!5278295))

(assert (=> b!4525663 m!5278301))

(declare-fun m!5278313 () Bool)

(assert (=> b!4525663 m!5278313))

(declare-fun m!5278315 () Bool)

(assert (=> bm!315374 m!5278315))

(assert (=> b!4525660 m!5278303))

(assert (=> bm!315375 m!5277543))

(declare-fun m!5278317 () Bool)

(assert (=> bm!315375 m!5278317))

(declare-fun m!5278319 () Bool)

(assert (=> bm!315376 m!5278319))

(declare-fun m!5278321 () Bool)

(assert (=> d!1395501 m!5278321))

(declare-fun m!5278323 () Bool)

(assert (=> d!1395501 m!5278323))

(declare-fun m!5278325 () Bool)

(assert (=> b!4525661 m!5278325))

(assert (=> b!4525164 d!1395501))

(declare-fun bs!860564 () Bool)

(declare-fun d!1395509 () Bool)

(assert (= bs!860564 (and d!1395509 d!1395129)))

(declare-fun lambda!173452 () Int)

(assert (=> bs!860564 (= lambda!173452 lambda!173332)))

(declare-fun bs!860565 () Bool)

(assert (= bs!860565 (and d!1395509 b!4524756)))

(assert (=> bs!860565 (not (= lambda!173452 lambda!173266))))

(declare-fun bs!860566 () Bool)

(assert (= bs!860566 (and d!1395509 d!1395241)))

(assert (=> bs!860566 (= lambda!173452 lambda!173391)))

(declare-fun bs!860567 () Bool)

(assert (= bs!860567 (and d!1395509 d!1395233)))

(assert (=> bs!860567 (not (= lambda!173452 lambda!173386))))

(declare-fun bs!860568 () Bool)

(assert (= bs!860568 (and d!1395509 d!1395115)))

(assert (=> bs!860568 (= lambda!173452 lambda!173327)))

(declare-fun bs!860569 () Bool)

(assert (= bs!860569 (and d!1395509 d!1395089)))

(assert (=> bs!860569 (= lambda!173452 lambda!173318)))

(declare-fun bs!860570 () Bool)

(assert (= bs!860570 (and d!1395509 d!1395071)))

(assert (=> bs!860570 (= lambda!173452 lambda!173310)))

(declare-fun bs!860571 () Bool)

(assert (= bs!860571 (and d!1395509 d!1395099)))

(assert (=> bs!860571 (= lambda!173452 lambda!173319)))

(declare-fun bs!860572 () Bool)

(assert (= bs!860572 (and d!1395509 d!1395039)))

(assert (=> bs!860572 (= lambda!173452 lambda!173270)))

(declare-fun bs!860573 () Bool)

(assert (= bs!860573 (and d!1395509 d!1395245)))

(assert (=> bs!860573 (= lambda!173452 lambda!173397)))

(declare-fun bs!860574 () Bool)

(assert (= bs!860574 (and d!1395509 start!448304)))

(assert (=> bs!860574 (= lambda!173452 lambda!173265)))

(declare-fun bs!860575 () Bool)

(assert (= bs!860575 (and d!1395509 d!1395141)))

(assert (=> bs!860575 (= lambda!173452 lambda!173337)))

(declare-fun bs!860576 () Bool)

(assert (= bs!860576 (and d!1395509 d!1395133)))

(assert (=> bs!860576 (= lambda!173452 lambda!173333)))

(declare-fun bs!860577 () Bool)

(assert (= bs!860577 (and d!1395509 d!1395429)))

(assert (=> bs!860577 (= lambda!173452 lambda!173429)))

(declare-fun bs!860578 () Bool)

(assert (= bs!860578 (and d!1395509 d!1395087)))

(assert (=> bs!860578 (= lambda!173452 lambda!173312)))

(declare-fun lt!1701976 () ListMap!3609)

(assert (=> d!1395509 (invariantList!1025 (toList!4347 lt!1701976))))

(declare-fun e!2819771 () ListMap!3609)

(assert (=> d!1395509 (= lt!1701976 e!2819771)))

(declare-fun c!772537 () Bool)

(assert (=> d!1395509 (= c!772537 ((_ is Cons!50675) (t!357761 (toList!4348 lt!1701255))))))

(assert (=> d!1395509 (forall!10285 (t!357761 (toList!4348 lt!1701255)) lambda!173452)))

(assert (=> d!1395509 (= (extractMap!1226 (t!357761 (toList!4348 lt!1701255))) lt!1701976)))

(declare-fun b!4525672 () Bool)

(assert (=> b!4525672 (= e!2819771 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (t!357761 (toList!4348 lt!1701255)))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lt!1701255))))))))

(declare-fun b!4525673 () Bool)

(assert (=> b!4525673 (= e!2819771 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395509 c!772537) b!4525672))

(assert (= (and d!1395509 (not c!772537)) b!4525673))

(declare-fun m!5278349 () Bool)

(assert (=> d!1395509 m!5278349))

(declare-fun m!5278353 () Bool)

(assert (=> d!1395509 m!5278353))

(declare-fun m!5278357 () Bool)

(assert (=> b!4525672 m!5278357))

(assert (=> b!4525672 m!5278357))

(declare-fun m!5278361 () Bool)

(assert (=> b!4525672 m!5278361))

(assert (=> b!4525164 d!1395509))

(declare-fun d!1395511 () Bool)

(declare-fun res!1884203 () Bool)

(declare-fun e!2819772 () Bool)

(assert (=> d!1395511 (=> res!1884203 e!2819772)))

(declare-fun e!2819773 () Bool)

(assert (=> d!1395511 (= res!1884203 e!2819773)))

(declare-fun res!1884202 () Bool)

(assert (=> d!1395511 (=> (not res!1884202) (not e!2819773))))

(assert (=> d!1395511 (= res!1884202 ((_ is Cons!50675) (t!357761 (toList!4348 lt!1701251))))))

(assert (=> d!1395511 (= (containsKeyBiggerList!150 (t!357761 (toList!4348 lt!1701251)) key!3287) e!2819772)))

(declare-fun b!4525674 () Bool)

(assert (=> b!4525674 (= e!2819773 (containsKey!1806 (_2!28852 (h!56536 (t!357761 (toList!4348 lt!1701251)))) key!3287))))

(declare-fun b!4525675 () Bool)

(declare-fun e!2819774 () Bool)

(assert (=> b!4525675 (= e!2819772 e!2819774)))

(declare-fun res!1884201 () Bool)

(assert (=> b!4525675 (=> (not res!1884201) (not e!2819774))))

(assert (=> b!4525675 (= res!1884201 ((_ is Cons!50675) (t!357761 (toList!4348 lt!1701251))))))

(declare-fun b!4525676 () Bool)

(assert (=> b!4525676 (= e!2819774 (containsKeyBiggerList!150 (t!357761 (t!357761 (toList!4348 lt!1701251))) key!3287))))

(assert (= (and d!1395511 res!1884202) b!4525674))

(assert (= (and d!1395511 (not res!1884203)) b!4525675))

(assert (= (and b!4525675 res!1884201) b!4525676))

(declare-fun m!5278371 () Bool)

(assert (=> b!4525674 m!5278371))

(declare-fun m!5278373 () Bool)

(assert (=> b!4525676 m!5278373))

(assert (=> b!4524954 d!1395511))

(declare-fun d!1395515 () Bool)

(declare-fun res!1884204 () Bool)

(declare-fun e!2819776 () Bool)

(assert (=> d!1395515 (=> res!1884204 e!2819776)))

(assert (=> d!1395515 (= res!1884204 (and ((_ is Cons!50674) (toList!4347 lt!1701248)) (= (_1!28851 (h!56535 (toList!4347 lt!1701248))) key!3287)))))

(assert (=> d!1395515 (= (containsKey!1808 (toList!4347 lt!1701248) key!3287) e!2819776)))

(declare-fun b!4525679 () Bool)

(declare-fun e!2819777 () Bool)

(assert (=> b!4525679 (= e!2819776 e!2819777)))

(declare-fun res!1884205 () Bool)

(assert (=> b!4525679 (=> (not res!1884205) (not e!2819777))))

(assert (=> b!4525679 (= res!1884205 ((_ is Cons!50674) (toList!4347 lt!1701248)))))

(declare-fun b!4525680 () Bool)

(assert (=> b!4525680 (= e!2819777 (containsKey!1808 (t!357760 (toList!4347 lt!1701248)) key!3287))))

(assert (= (and d!1395515 (not res!1884204)) b!4525679))

(assert (= (and b!4525679 res!1884205) b!4525680))

(declare-fun m!5278375 () Bool)

(assert (=> b!4525680 m!5278375))

(assert (=> b!4524908 d!1395515))

(declare-fun d!1395517 () Bool)

(assert (=> d!1395517 (containsKey!1808 (toList!4347 lt!1701248) key!3287)))

(declare-fun lt!1701978 () Unit!95830)

(assert (=> d!1395517 (= lt!1701978 (choose!29634 (toList!4347 lt!1701248) key!3287))))

(assert (=> d!1395517 (invariantList!1025 (toList!4347 lt!1701248))))

(assert (=> d!1395517 (= (lemmaInGetKeysListThenContainsKey!471 (toList!4347 lt!1701248) key!3287) lt!1701978)))

(declare-fun bs!860582 () Bool)

(assert (= bs!860582 d!1395517))

(assert (=> bs!860582 m!5276973))

(declare-fun m!5278377 () Bool)

(assert (=> bs!860582 m!5278377))

(assert (=> bs!860582 m!5277963))

(assert (=> b!4524908 d!1395517))

(declare-fun d!1395519 () Bool)

(assert (=> d!1395519 (= (isEmpty!28688 (toList!4348 lm!1477)) ((_ is Nil!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395157 d!1395519))

(declare-fun d!1395521 () Bool)

(declare-fun c!772541 () Bool)

(assert (=> d!1395521 (= c!772541 ((_ is Nil!50674) (toList!4347 lt!1701265)))))

(declare-fun e!2819780 () (InoxSet tuple2!51114))

(assert (=> d!1395521 (= (content!8381 (toList!4347 lt!1701265)) e!2819780)))

(declare-fun b!4525685 () Bool)

(assert (=> b!4525685 (= e!2819780 ((as const (Array tuple2!51114 Bool)) false))))

(declare-fun b!4525686 () Bool)

(assert (=> b!4525686 (= e!2819780 ((_ map or) (store ((as const (Array tuple2!51114 Bool)) false) (h!56535 (toList!4347 lt!1701265)) true) (content!8381 (t!357760 (toList!4347 lt!1701265)))))))

(assert (= (and d!1395521 c!772541) b!4525685))

(assert (= (and d!1395521 (not c!772541)) b!4525686))

(declare-fun m!5278387 () Bool)

(assert (=> b!4525686 m!5278387))

(declare-fun m!5278389 () Bool)

(assert (=> b!4525686 m!5278389))

(assert (=> d!1395195 d!1395521))

(declare-fun d!1395525 () Bool)

(declare-fun c!772542 () Bool)

(assert (=> d!1395525 (= c!772542 ((_ is Nil!50674) (toList!4347 lt!1701252)))))

(declare-fun e!2819781 () (InoxSet tuple2!51114))

(assert (=> d!1395525 (= (content!8381 (toList!4347 lt!1701252)) e!2819781)))

(declare-fun b!4525687 () Bool)

(assert (=> b!4525687 (= e!2819781 ((as const (Array tuple2!51114 Bool)) false))))

(declare-fun b!4525688 () Bool)

(assert (=> b!4525688 (= e!2819781 ((_ map or) (store ((as const (Array tuple2!51114 Bool)) false) (h!56535 (toList!4347 lt!1701252)) true) (content!8381 (t!357760 (toList!4347 lt!1701252)))))))

(assert (= (and d!1395525 c!772542) b!4525687))

(assert (= (and d!1395525 (not c!772542)) b!4525688))

(declare-fun m!5278391 () Bool)

(assert (=> b!4525688 m!5278391))

(declare-fun m!5278393 () Bool)

(assert (=> b!4525688 m!5278393))

(assert (=> d!1395195 d!1395525))

(declare-fun d!1395527 () Bool)

(assert (=> d!1395527 (= (invariantList!1025 (toList!4347 lt!1701679)) (noDuplicatedKeys!266 (toList!4347 lt!1701679)))))

(declare-fun bs!860594 () Bool)

(assert (= bs!860594 d!1395527))

(declare-fun m!5278395 () Bool)

(assert (=> bs!860594 m!5278395))

(assert (=> d!1395241 d!1395527))

(declare-fun d!1395529 () Bool)

(declare-fun res!1884210 () Bool)

(declare-fun e!2819786 () Bool)

(assert (=> d!1395529 (=> res!1884210 e!2819786)))

(assert (=> d!1395529 (= res!1884210 ((_ is Nil!50675) (toList!4348 lt!1701255)))))

(assert (=> d!1395529 (= (forall!10285 (toList!4348 lt!1701255) lambda!173391) e!2819786)))

(declare-fun b!4525693 () Bool)

(declare-fun e!2819787 () Bool)

(assert (=> b!4525693 (= e!2819786 e!2819787)))

(declare-fun res!1884211 () Bool)

(assert (=> b!4525693 (=> (not res!1884211) (not e!2819787))))

(assert (=> b!4525693 (= res!1884211 (dynLambda!21175 lambda!173391 (h!56536 (toList!4348 lt!1701255))))))

(declare-fun b!4525694 () Bool)

(assert (=> b!4525694 (= e!2819787 (forall!10285 (t!357761 (toList!4348 lt!1701255)) lambda!173391))))

(assert (= (and d!1395529 (not res!1884210)) b!4525693))

(assert (= (and b!4525693 res!1884211) b!4525694))

(declare-fun b_lambda!155685 () Bool)

(assert (=> (not b_lambda!155685) (not b!4525693)))

(declare-fun m!5278397 () Bool)

(assert (=> b!4525693 m!5278397))

(declare-fun m!5278399 () Bool)

(assert (=> b!4525694 m!5278399))

(assert (=> d!1395241 d!1395529))

(declare-fun d!1395531 () Bool)

(assert (=> d!1395531 (= (hash!2837 hashF!1107 (_1!28851 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264))))) (hash!2841 hashF!1107 (_1!28851 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264))))))))

(declare-fun bs!860595 () Bool)

(assert (= bs!860595 d!1395531))

(declare-fun m!5278401 () Bool)

(assert (=> bs!860595 m!5278401))

(assert (=> bs!860284 d!1395531))

(declare-fun d!1395533 () Bool)

(assert (=> d!1395533 (dynLambda!21177 lambda!173267 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264))))))

(assert (=> d!1395533 true))

(declare-fun _$7!1861 () Unit!95830)

(assert (=> d!1395533 (= (choose!29623 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173267 (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))) _$7!1861)))

(declare-fun b_lambda!155687 () Bool)

(assert (=> (not b_lambda!155687) (not d!1395533)))

(declare-fun bs!860596 () Bool)

(assert (= bs!860596 d!1395533))

(assert (=> bs!860596 m!5277323))

(assert (=> d!1395169 d!1395533))

(declare-fun d!1395537 () Bool)

(declare-fun res!1884216 () Bool)

(declare-fun e!2819792 () Bool)

(assert (=> d!1395537 (=> res!1884216 e!2819792)))

(assert (=> d!1395537 (= res!1884216 ((_ is Nil!50674) (_2!28852 (h!56536 (toList!4348 lm!1477)))))))

(assert (=> d!1395537 (= (forall!10287 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173267) e!2819792)))

(declare-fun b!4525699 () Bool)

(declare-fun e!2819793 () Bool)

(assert (=> b!4525699 (= e!2819792 e!2819793)))

(declare-fun res!1884217 () Bool)

(assert (=> b!4525699 (=> (not res!1884217) (not e!2819793))))

(assert (=> b!4525699 (= res!1884217 (dynLambda!21177 lambda!173267 (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477))))))))

(declare-fun b!4525700 () Bool)

(assert (=> b!4525700 (= e!2819793 (forall!10287 (t!357760 (_2!28852 (h!56536 (toList!4348 lm!1477)))) lambda!173267))))

(assert (= (and d!1395537 (not res!1884216)) b!4525699))

(assert (= (and b!4525699 res!1884217) b!4525700))

(declare-fun b_lambda!155689 () Bool)

(assert (=> (not b_lambda!155689) (not b!4525699)))

(declare-fun m!5278413 () Bool)

(assert (=> b!4525699 m!5278413))

(declare-fun m!5278415 () Bool)

(assert (=> b!4525700 m!5278415))

(assert (=> d!1395169 d!1395537))

(declare-fun d!1395543 () Bool)

(assert (=> d!1395543 (= (tail!7754 (toList!4348 lm!1477)) (t!357761 (toList!4348 lm!1477)))))

(assert (=> d!1395183 d!1395543))

(declare-fun bs!860599 () Bool)

(declare-fun b!4525712 () Bool)

(assert (= bs!860599 (and b!4525712 b!4525163)))

(declare-fun lambda!173456 () Int)

(assert (=> bs!860599 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701256) (= lambda!173456 lambda!173387))))

(declare-fun bs!860600 () Bool)

(assert (= bs!860600 (and b!4525712 b!4525155)))

(assert (=> bs!860600 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701249) (= lambda!173456 lambda!173381))))

(declare-fun bs!860601 () Bool)

(assert (= bs!860601 (and b!4525712 b!4525663)))

(assert (=> bs!860601 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173456 lambda!173445))))

(declare-fun bs!860602 () Bool)

(assert (= bs!860602 (and b!4525712 b!4525604)))

(assert (=> bs!860602 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701911) (= lambda!173456 lambda!173435))))

(assert (=> bs!860601 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701946) (= lambda!173456 lambda!173447))))

(declare-fun bs!860603 () Bool)

(assert (= bs!860603 (and b!4525712 d!1395423)))

(assert (=> bs!860603 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701860) (= lambda!173456 lambda!173428))))

(declare-fun bs!860604 () Bool)

(assert (= bs!860604 (and b!4525712 d!1395201)))

(assert (=> bs!860604 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701649) (= lambda!173456 lambda!173383))))

(declare-fun bs!860605 () Bool)

(assert (= bs!860605 (and b!4525712 b!4525156)))

(assert (=> bs!860605 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701249) (= lambda!173456 lambda!173380))))

(assert (=> bs!860602 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173456 lambda!173434))))

(declare-fun bs!860606 () Bool)

(assert (= bs!860606 (and b!4525712 b!4525664)))

(assert (=> bs!860606 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173456 lambda!173444))))

(declare-fun bs!860607 () Bool)

(assert (= bs!860607 (and b!4525712 b!4525560)))

(assert (=> bs!860607 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173456 lambda!173425))))

(declare-fun bs!860608 () Bool)

(assert (= bs!860608 (and b!4525712 d!1395239)))

(assert (=> bs!860608 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701673) (= lambda!173456 lambda!173390))))

(declare-fun bs!860609 () Bool)

(assert (= bs!860609 (and b!4525712 b!4524756)))

(assert (=> bs!860609 (not (= lambda!173456 lambda!173267))))

(declare-fun bs!860610 () Bool)

(assert (= bs!860610 (and b!4525712 b!4525559)))

(assert (=> bs!860610 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701854) (= lambda!173456 lambda!173427))))

(declare-fun bs!860612 () Bool)

(assert (= bs!860612 (and b!4525712 d!1395453)))

(assert (=> bs!860612 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701914) (= lambda!173456 lambda!173437))))

(assert (=> bs!860610 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173456 lambda!173426))))

(declare-fun bs!860613 () Bool)

(assert (= bs!860613 (and b!4525712 b!4525162)))

(assert (=> bs!860613 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701256) (= lambda!173456 lambda!173388))))

(declare-fun bs!860614 () Bool)

(assert (= bs!860614 (and b!4525712 d!1395501)))

(assert (=> bs!860614 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701949) (= lambda!173456 lambda!173450))))

(declare-fun bs!860615 () Bool)

(assert (= bs!860615 (and b!4525712 b!4525605)))

(assert (=> bs!860615 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173456 lambda!173432))))

(assert (=> bs!860600 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701646) (= lambda!173456 lambda!173382))))

(declare-fun bs!860616 () Bool)

(assert (= bs!860616 (and b!4525712 d!1395243)))

(assert (=> bs!860616 (not (= lambda!173456 lambda!173394))))

(assert (=> bs!860613 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701670) (= lambda!173456 lambda!173389))))

(assert (=> b!4525712 true))

(declare-fun bs!860618 () Bool)

(declare-fun b!4525711 () Bool)

(assert (= bs!860618 (and b!4525711 b!4525163)))

(declare-fun lambda!173457 () Int)

(assert (=> bs!860618 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701256) (= lambda!173457 lambda!173387))))

(declare-fun bs!860619 () Bool)

(assert (= bs!860619 (and b!4525711 b!4525155)))

(assert (=> bs!860619 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701249) (= lambda!173457 lambda!173381))))

(declare-fun bs!860620 () Bool)

(assert (= bs!860620 (and b!4525711 b!4525663)))

(assert (=> bs!860620 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173457 lambda!173445))))

(declare-fun bs!860621 () Bool)

(assert (= bs!860621 (and b!4525711 b!4525604)))

(assert (=> bs!860621 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701911) (= lambda!173457 lambda!173435))))

(assert (=> bs!860620 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701946) (= lambda!173457 lambda!173447))))

(declare-fun bs!860622 () Bool)

(assert (= bs!860622 (and b!4525711 d!1395423)))

(assert (=> bs!860622 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701860) (= lambda!173457 lambda!173428))))

(declare-fun bs!860623 () Bool)

(assert (= bs!860623 (and b!4525711 d!1395201)))

(assert (=> bs!860623 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701649) (= lambda!173457 lambda!173383))))

(declare-fun bs!860625 () Bool)

(assert (= bs!860625 (and b!4525711 b!4525156)))

(assert (=> bs!860625 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701249) (= lambda!173457 lambda!173380))))

(declare-fun bs!860626 () Bool)

(assert (= bs!860626 (and b!4525711 b!4525712)))

(assert (=> bs!860626 (= lambda!173457 lambda!173456)))

(assert (=> bs!860621 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173457 lambda!173434))))

(declare-fun bs!860628 () Bool)

(assert (= bs!860628 (and b!4525711 b!4525664)))

(assert (=> bs!860628 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173457 lambda!173444))))

(declare-fun bs!860629 () Bool)

(assert (= bs!860629 (and b!4525711 b!4525560)))

(assert (=> bs!860629 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173457 lambda!173425))))

(declare-fun bs!860630 () Bool)

(assert (= bs!860630 (and b!4525711 d!1395239)))

(assert (=> bs!860630 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701673) (= lambda!173457 lambda!173390))))

(declare-fun bs!860631 () Bool)

(assert (= bs!860631 (and b!4525711 b!4524756)))

(assert (=> bs!860631 (not (= lambda!173457 lambda!173267))))

(declare-fun bs!860633 () Bool)

(assert (= bs!860633 (and b!4525711 b!4525559)))

(assert (=> bs!860633 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701854) (= lambda!173457 lambda!173427))))

(declare-fun bs!860634 () Bool)

(assert (= bs!860634 (and b!4525711 d!1395453)))

(assert (=> bs!860634 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701914) (= lambda!173457 lambda!173437))))

(assert (=> bs!860633 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173457 lambda!173426))))

(declare-fun bs!860635 () Bool)

(assert (= bs!860635 (and b!4525711 b!4525162)))

(assert (=> bs!860635 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701256) (= lambda!173457 lambda!173388))))

(declare-fun bs!860636 () Bool)

(assert (= bs!860636 (and b!4525711 d!1395501)))

(assert (=> bs!860636 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701949) (= lambda!173457 lambda!173450))))

(declare-fun bs!860637 () Bool)

(assert (= bs!860637 (and b!4525711 b!4525605)))

(assert (=> bs!860637 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173457 lambda!173432))))

(assert (=> bs!860619 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701646) (= lambda!173457 lambda!173382))))

(declare-fun bs!860639 () Bool)

(assert (= bs!860639 (and b!4525711 d!1395243)))

(assert (=> bs!860639 (not (= lambda!173457 lambda!173394))))

(assert (=> bs!860635 (= (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701670) (= lambda!173457 lambda!173389))))

(assert (=> b!4525711 true))

(declare-fun lt!1701994 () ListMap!3609)

(declare-fun lambda!173459 () Int)

(assert (=> bs!860618 (= (= lt!1701994 lt!1701256) (= lambda!173459 lambda!173387))))

(assert (=> bs!860619 (= (= lt!1701994 lt!1701249) (= lambda!173459 lambda!173381))))

(assert (=> bs!860620 (= (= lt!1701994 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173459 lambda!173445))))

(assert (=> bs!860621 (= (= lt!1701994 lt!1701911) (= lambda!173459 lambda!173435))))

(assert (=> bs!860620 (= (= lt!1701994 lt!1701946) (= lambda!173459 lambda!173447))))

(assert (=> bs!860622 (= (= lt!1701994 lt!1701860) (= lambda!173459 lambda!173428))))

(assert (=> bs!860623 (= (= lt!1701994 lt!1701649) (= lambda!173459 lambda!173383))))

(assert (=> bs!860625 (= (= lt!1701994 lt!1701249) (= lambda!173459 lambda!173380))))

(assert (=> bs!860626 (= (= lt!1701994 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173459 lambda!173456))))

(assert (=> b!4525711 (= (= lt!1701994 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173459 lambda!173457))))

(assert (=> bs!860621 (= (= lt!1701994 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173459 lambda!173434))))

(assert (=> bs!860628 (= (= lt!1701994 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173459 lambda!173444))))

(assert (=> bs!860629 (= (= lt!1701994 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173459 lambda!173425))))

(assert (=> bs!860630 (= (= lt!1701994 lt!1701673) (= lambda!173459 lambda!173390))))

(assert (=> bs!860631 (not (= lambda!173459 lambda!173267))))

(assert (=> bs!860633 (= (= lt!1701994 lt!1701854) (= lambda!173459 lambda!173427))))

(assert (=> bs!860634 (= (= lt!1701994 lt!1701914) (= lambda!173459 lambda!173437))))

(assert (=> bs!860633 (= (= lt!1701994 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173459 lambda!173426))))

(assert (=> bs!860635 (= (= lt!1701994 lt!1701256) (= lambda!173459 lambda!173388))))

(assert (=> bs!860636 (= (= lt!1701994 lt!1701949) (= lambda!173459 lambda!173450))))

(assert (=> bs!860637 (= (= lt!1701994 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173459 lambda!173432))))

(assert (=> bs!860619 (= (= lt!1701994 lt!1701646) (= lambda!173459 lambda!173382))))

(assert (=> bs!860639 (not (= lambda!173459 lambda!173394))))

(assert (=> bs!860635 (= (= lt!1701994 lt!1701670) (= lambda!173459 lambda!173389))))

(assert (=> b!4525711 true))

(declare-fun bs!860656 () Bool)

(declare-fun d!1395547 () Bool)

(assert (= bs!860656 (and d!1395547 b!4525163)))

(declare-fun lambda!173462 () Int)

(declare-fun lt!1701997 () ListMap!3609)

(assert (=> bs!860656 (= (= lt!1701997 lt!1701256) (= lambda!173462 lambda!173387))))

(declare-fun bs!860658 () Bool)

(assert (= bs!860658 (and d!1395547 b!4525155)))

(assert (=> bs!860658 (= (= lt!1701997 lt!1701249) (= lambda!173462 lambda!173381))))

(declare-fun bs!860660 () Bool)

(assert (= bs!860660 (and d!1395547 b!4525663)))

(assert (=> bs!860660 (= (= lt!1701997 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173462 lambda!173445))))

(declare-fun bs!860661 () Bool)

(assert (= bs!860661 (and d!1395547 b!4525604)))

(assert (=> bs!860661 (= (= lt!1701997 lt!1701911) (= lambda!173462 lambda!173435))))

(assert (=> bs!860660 (= (= lt!1701997 lt!1701946) (= lambda!173462 lambda!173447))))

(declare-fun bs!860663 () Bool)

(assert (= bs!860663 (and d!1395547 d!1395423)))

(assert (=> bs!860663 (= (= lt!1701997 lt!1701860) (= lambda!173462 lambda!173428))))

(declare-fun bs!860665 () Bool)

(assert (= bs!860665 (and d!1395547 d!1395201)))

(assert (=> bs!860665 (= (= lt!1701997 lt!1701649) (= lambda!173462 lambda!173383))))

(declare-fun bs!860667 () Bool)

(assert (= bs!860667 (and d!1395547 b!4525156)))

(assert (=> bs!860667 (= (= lt!1701997 lt!1701249) (= lambda!173462 lambda!173380))))

(declare-fun bs!860668 () Bool)

(assert (= bs!860668 (and d!1395547 b!4525712)))

(assert (=> bs!860668 (= (= lt!1701997 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173462 lambda!173456))))

(declare-fun bs!860670 () Bool)

(assert (= bs!860670 (and d!1395547 b!4525711)))

(assert (=> bs!860670 (= (= lt!1701997 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173462 lambda!173457))))

(assert (=> bs!860661 (= (= lt!1701997 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173462 lambda!173434))))

(declare-fun bs!860671 () Bool)

(assert (= bs!860671 (and d!1395547 b!4525560)))

(assert (=> bs!860671 (= (= lt!1701997 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173462 lambda!173425))))

(declare-fun bs!860672 () Bool)

(assert (= bs!860672 (and d!1395547 d!1395239)))

(assert (=> bs!860672 (= (= lt!1701997 lt!1701673) (= lambda!173462 lambda!173390))))

(declare-fun bs!860673 () Bool)

(assert (= bs!860673 (and d!1395547 b!4524756)))

(assert (=> bs!860673 (not (= lambda!173462 lambda!173267))))

(declare-fun bs!860674 () Bool)

(assert (= bs!860674 (and d!1395547 b!4525559)))

(assert (=> bs!860674 (= (= lt!1701997 lt!1701854) (= lambda!173462 lambda!173427))))

(declare-fun bs!860675 () Bool)

(assert (= bs!860675 (and d!1395547 d!1395453)))

(assert (=> bs!860675 (= (= lt!1701997 lt!1701914) (= lambda!173462 lambda!173437))))

(assert (=> bs!860674 (= (= lt!1701997 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173462 lambda!173426))))

(declare-fun bs!860676 () Bool)

(assert (= bs!860676 (and d!1395547 b!4525162)))

(assert (=> bs!860676 (= (= lt!1701997 lt!1701256) (= lambda!173462 lambda!173388))))

(declare-fun bs!860678 () Bool)

(assert (= bs!860678 (and d!1395547 b!4525664)))

(assert (=> bs!860678 (= (= lt!1701997 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173462 lambda!173444))))

(assert (=> bs!860670 (= (= lt!1701997 lt!1701994) (= lambda!173462 lambda!173459))))

(declare-fun bs!860681 () Bool)

(assert (= bs!860681 (and d!1395547 d!1395501)))

(assert (=> bs!860681 (= (= lt!1701997 lt!1701949) (= lambda!173462 lambda!173450))))

(declare-fun bs!860683 () Bool)

(assert (= bs!860683 (and d!1395547 b!4525605)))

(assert (=> bs!860683 (= (= lt!1701997 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173462 lambda!173432))))

(assert (=> bs!860658 (= (= lt!1701997 lt!1701646) (= lambda!173462 lambda!173382))))

(declare-fun bs!860685 () Bool)

(assert (= bs!860685 (and d!1395547 d!1395243)))

(assert (=> bs!860685 (not (= lambda!173462 lambda!173394))))

(assert (=> bs!860676 (= (= lt!1701997 lt!1701670) (= lambda!173462 lambda!173389))))

(assert (=> d!1395547 true))

(declare-fun bm!315380 () Bool)

(declare-fun call!315387 () Bool)

(declare-fun c!772543 () Bool)

(assert (=> bm!315380 (= call!315387 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (ite c!772543 lambda!173456 lambda!173457)))))

(declare-fun b!4525708 () Bool)

(declare-fun e!2819801 () Bool)

(assert (=> b!4525708 (= e!2819801 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) lambda!173459))))

(declare-fun bm!315381 () Bool)

(declare-fun call!315385 () Unit!95830)

(assert (=> bm!315381 (= call!315385 (lemmaContainsAllItsOwnKeys!346 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))))))

(declare-fun call!315386 () Bool)

(declare-fun bm!315382 () Bool)

(declare-fun lt!1701993 () ListMap!3609)

(assert (=> bm!315382 (= call!315386 (forall!10287 (ite c!772543 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (toList!4347 lt!1701993)) (ite c!772543 lambda!173456 lambda!173459)))))

(declare-fun b!4525709 () Bool)

(declare-fun res!1884225 () Bool)

(declare-fun e!2819800 () Bool)

(assert (=> b!4525709 (=> (not res!1884225) (not e!2819800))))

(assert (=> b!4525709 (= res!1884225 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) lambda!173462))))

(declare-fun b!4525710 () Bool)

(assert (=> b!4525710 (= e!2819800 (invariantList!1025 (toList!4347 lt!1701997)))))

(declare-fun e!2819799 () ListMap!3609)

(assert (=> b!4525711 (= e!2819799 lt!1701994)))

(assert (=> b!4525711 (= lt!1701993 (+!1558 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (h!56535 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))))))

(assert (=> b!4525711 (= lt!1701994 (addToMapMapFromBucket!697 (t!357760 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (+!1558 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (h!56535 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242))))))))))

(declare-fun lt!1701991 () Unit!95830)

(assert (=> b!4525711 (= lt!1701991 call!315385)))

(assert (=> b!4525711 call!315387))

(declare-fun lt!1702002 () Unit!95830)

(assert (=> b!4525711 (= lt!1702002 lt!1701991)))

(assert (=> b!4525711 call!315386))

(declare-fun lt!1702001 () Unit!95830)

(declare-fun Unit!95981 () Unit!95830)

(assert (=> b!4525711 (= lt!1702001 Unit!95981)))

(assert (=> b!4525711 (forall!10287 (t!357760 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) lambda!173459)))

(declare-fun lt!1701989 () Unit!95830)

(declare-fun Unit!95982 () Unit!95830)

(assert (=> b!4525711 (= lt!1701989 Unit!95982)))

(declare-fun lt!1702000 () Unit!95830)

(declare-fun Unit!95983 () Unit!95830)

(assert (=> b!4525711 (= lt!1702000 Unit!95983)))

(declare-fun lt!1701988 () Unit!95830)

(assert (=> b!4525711 (= lt!1701988 (forallContained!2539 (toList!4347 lt!1701993) lambda!173459 (h!56535 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))))))

(assert (=> b!4525711 (contains!13418 lt!1701993 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))))))

(declare-fun lt!1701983 () Unit!95830)

(declare-fun Unit!95984 () Unit!95830)

(assert (=> b!4525711 (= lt!1701983 Unit!95984)))

(assert (=> b!4525711 (contains!13418 lt!1701994 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))))))

(declare-fun lt!1701985 () Unit!95830)

(declare-fun Unit!95985 () Unit!95830)

(assert (=> b!4525711 (= lt!1701985 Unit!95985)))

(assert (=> b!4525711 (forall!10287 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lambda!173459)))

(declare-fun lt!1701986 () Unit!95830)

(declare-fun Unit!95986 () Unit!95830)

(assert (=> b!4525711 (= lt!1701986 Unit!95986)))

(assert (=> b!4525711 (forall!10287 (toList!4347 lt!1701993) lambda!173459)))

(declare-fun lt!1701990 () Unit!95830)

(declare-fun Unit!95987 () Unit!95830)

(assert (=> b!4525711 (= lt!1701990 Unit!95987)))

(declare-fun lt!1701987 () Unit!95830)

(declare-fun Unit!95988 () Unit!95830)

(assert (=> b!4525711 (= lt!1701987 Unit!95988)))

(declare-fun lt!1701996 () Unit!95830)

(assert (=> b!4525711 (= lt!1701996 (addForallContainsKeyThenBeforeAdding!346 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1701994 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))) (_2!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242))))))))))

(assert (=> b!4525711 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) lambda!173459)))

(declare-fun lt!1701999 () Unit!95830)

(assert (=> b!4525711 (= lt!1701999 lt!1701996)))

(assert (=> b!4525711 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) lambda!173459)))

(declare-fun lt!1701995 () Unit!95830)

(declare-fun Unit!95989 () Unit!95830)

(assert (=> b!4525711 (= lt!1701995 Unit!95989)))

(declare-fun res!1884226 () Bool)

(assert (=> b!4525711 (= res!1884226 (forall!10287 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lambda!173459))))

(assert (=> b!4525711 (=> (not res!1884226) (not e!2819801))))

(assert (=> b!4525711 e!2819801))

(declare-fun lt!1701992 () Unit!95830)

(declare-fun Unit!95990 () Unit!95830)

(assert (=> b!4525711 (= lt!1701992 Unit!95990)))

(assert (=> b!4525712 (= e!2819799 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))))

(declare-fun lt!1701984 () Unit!95830)

(assert (=> b!4525712 (= lt!1701984 call!315385)))

(assert (=> b!4525712 call!315386))

(declare-fun lt!1701998 () Unit!95830)

(assert (=> b!4525712 (= lt!1701998 lt!1701984)))

(assert (=> b!4525712 call!315387))

(declare-fun lt!1701982 () Unit!95830)

(declare-fun Unit!95991 () Unit!95830)

(assert (=> b!4525712 (= lt!1701982 Unit!95991)))

(assert (=> d!1395547 e!2819800))

(declare-fun res!1884227 () Bool)

(assert (=> d!1395547 (=> (not res!1884227) (not e!2819800))))

(assert (=> d!1395547 (= res!1884227 (forall!10287 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lambda!173462))))

(assert (=> d!1395547 (= lt!1701997 e!2819799)))

(assert (=> d!1395547 (= c!772543 ((_ is Nil!50674) (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242))))))))

(assert (=> d!1395547 (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))))

(assert (=> d!1395547 (= (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) lt!1701997)))

(assert (= (and d!1395547 c!772543) b!4525712))

(assert (= (and d!1395547 (not c!772543)) b!4525711))

(assert (= (and b!4525711 res!1884226) b!4525708))

(assert (= (or b!4525712 b!4525711) bm!315380))

(assert (= (or b!4525712 b!4525711) bm!315382))

(assert (= (or b!4525712 b!4525711) bm!315381))

(assert (= (and d!1395547 res!1884227) b!4525709))

(assert (= (and b!4525709 res!1884225) b!4525710))

(declare-fun m!5278477 () Bool)

(assert (=> b!4525710 m!5278477))

(declare-fun m!5278479 () Bool)

(assert (=> b!4525711 m!5278479))

(declare-fun m!5278481 () Bool)

(assert (=> b!4525711 m!5278481))

(declare-fun m!5278483 () Bool)

(assert (=> b!4525711 m!5278483))

(assert (=> b!4525711 m!5277183))

(declare-fun m!5278485 () Bool)

(assert (=> b!4525711 m!5278485))

(declare-fun m!5278487 () Bool)

(assert (=> b!4525711 m!5278487))

(assert (=> b!4525711 m!5278487))

(declare-fun m!5278489 () Bool)

(assert (=> b!4525711 m!5278489))

(declare-fun m!5278491 () Bool)

(assert (=> b!4525711 m!5278491))

(declare-fun m!5278493 () Bool)

(assert (=> b!4525711 m!5278493))

(assert (=> b!4525711 m!5277183))

(declare-fun m!5278495 () Bool)

(assert (=> b!4525711 m!5278495))

(assert (=> b!4525711 m!5278479))

(assert (=> b!4525711 m!5278485))

(declare-fun m!5278497 () Bool)

(assert (=> b!4525711 m!5278497))

(declare-fun m!5278499 () Bool)

(assert (=> bm!315380 m!5278499))

(assert (=> b!4525708 m!5278487))

(assert (=> bm!315381 m!5277183))

(declare-fun m!5278501 () Bool)

(assert (=> bm!315381 m!5278501))

(declare-fun m!5278503 () Bool)

(assert (=> bm!315382 m!5278503))

(declare-fun m!5278505 () Bool)

(assert (=> d!1395547 m!5278505))

(declare-fun m!5278507 () Bool)

(assert (=> d!1395547 m!5278507))

(declare-fun m!5278509 () Bool)

(assert (=> b!4525709 m!5278509))

(assert (=> b!4524972 d!1395547))

(declare-fun bs!860700 () Bool)

(declare-fun d!1395575 () Bool)

(assert (= bs!860700 (and d!1395575 d!1395129)))

(declare-fun lambda!173465 () Int)

(assert (=> bs!860700 (= lambda!173465 lambda!173332)))

(declare-fun bs!860701 () Bool)

(assert (= bs!860701 (and d!1395575 b!4524756)))

(assert (=> bs!860701 (not (= lambda!173465 lambda!173266))))

(declare-fun bs!860702 () Bool)

(assert (= bs!860702 (and d!1395575 d!1395233)))

(assert (=> bs!860702 (not (= lambda!173465 lambda!173386))))

(declare-fun bs!860703 () Bool)

(assert (= bs!860703 (and d!1395575 d!1395115)))

(assert (=> bs!860703 (= lambda!173465 lambda!173327)))

(declare-fun bs!860704 () Bool)

(assert (= bs!860704 (and d!1395575 d!1395089)))

(assert (=> bs!860704 (= lambda!173465 lambda!173318)))

(declare-fun bs!860705 () Bool)

(assert (= bs!860705 (and d!1395575 d!1395071)))

(assert (=> bs!860705 (= lambda!173465 lambda!173310)))

(declare-fun bs!860706 () Bool)

(assert (= bs!860706 (and d!1395575 d!1395099)))

(assert (=> bs!860706 (= lambda!173465 lambda!173319)))

(declare-fun bs!860707 () Bool)

(assert (= bs!860707 (and d!1395575 d!1395039)))

(assert (=> bs!860707 (= lambda!173465 lambda!173270)))

(declare-fun bs!860708 () Bool)

(assert (= bs!860708 (and d!1395575 d!1395245)))

(assert (=> bs!860708 (= lambda!173465 lambda!173397)))

(declare-fun bs!860709 () Bool)

(assert (= bs!860709 (and d!1395575 start!448304)))

(assert (=> bs!860709 (= lambda!173465 lambda!173265)))

(declare-fun bs!860710 () Bool)

(assert (= bs!860710 (and d!1395575 d!1395141)))

(assert (=> bs!860710 (= lambda!173465 lambda!173337)))

(declare-fun bs!860711 () Bool)

(assert (= bs!860711 (and d!1395575 d!1395133)))

(assert (=> bs!860711 (= lambda!173465 lambda!173333)))

(declare-fun bs!860712 () Bool)

(assert (= bs!860712 (and d!1395575 d!1395509)))

(assert (=> bs!860712 (= lambda!173465 lambda!173452)))

(declare-fun bs!860713 () Bool)

(assert (= bs!860713 (and d!1395575 d!1395241)))

(assert (=> bs!860713 (= lambda!173465 lambda!173391)))

(declare-fun bs!860714 () Bool)

(assert (= bs!860714 (and d!1395575 d!1395429)))

(assert (=> bs!860714 (= lambda!173465 lambda!173429)))

(declare-fun bs!860715 () Bool)

(assert (= bs!860715 (and d!1395575 d!1395087)))

(assert (=> bs!860715 (= lambda!173465 lambda!173312)))

(declare-fun lt!1702027 () ListMap!3609)

(assert (=> d!1395575 (invariantList!1025 (toList!4347 lt!1702027))))

(declare-fun e!2819814 () ListMap!3609)

(assert (=> d!1395575 (= lt!1702027 e!2819814)))

(declare-fun c!772549 () Bool)

(assert (=> d!1395575 (= c!772549 ((_ is Cons!50675) (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))))

(assert (=> d!1395575 (forall!10285 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))) lambda!173465)))

(assert (=> d!1395575 (= (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) lt!1702027)))

(declare-fun b!4525733 () Bool)

(assert (=> b!4525733 (= e!2819814 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))))))

(declare-fun b!4525734 () Bool)

(assert (=> b!4525734 (= e!2819814 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395575 c!772549) b!4525733))

(assert (= (and d!1395575 (not c!772549)) b!4525734))

(declare-fun m!5278511 () Bool)

(assert (=> d!1395575 m!5278511))

(declare-fun m!5278513 () Bool)

(assert (=> d!1395575 m!5278513))

(declare-fun m!5278515 () Bool)

(assert (=> b!4525733 m!5278515))

(assert (=> b!4525733 m!5278515))

(declare-fun m!5278517 () Bool)

(assert (=> b!4525733 m!5278517))

(assert (=> b!4524972 d!1395575))

(declare-fun d!1395577 () Bool)

(assert (=> d!1395577 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701251) hash!344))))

(declare-fun lt!1702030 () Unit!95830)

(declare-fun choose!29638 (List!50799 (_ BitVec 64)) Unit!95830)

(assert (=> d!1395577 (= lt!1702030 (choose!29638 (toList!4348 lt!1701251) hash!344))))

(declare-fun e!2819817 () Bool)

(assert (=> d!1395577 e!2819817))

(declare-fun res!1884240 () Bool)

(assert (=> d!1395577 (=> (not res!1884240) (not e!2819817))))

(assert (=> d!1395577 (= res!1884240 (isStrictlySorted!439 (toList!4348 lt!1701251)))))

(assert (=> d!1395577 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (toList!4348 lt!1701251) hash!344) lt!1702030)))

(declare-fun b!4525737 () Bool)

(assert (=> b!4525737 (= e!2819817 (containsKey!1810 (toList!4348 lt!1701251) hash!344))))

(assert (= (and d!1395577 res!1884240) b!4525737))

(assert (=> d!1395577 m!5277359))

(assert (=> d!1395577 m!5277359))

(assert (=> d!1395577 m!5277361))

(declare-fun m!5278529 () Bool)

(assert (=> d!1395577 m!5278529))

(assert (=> d!1395577 m!5277881))

(assert (=> b!4525737 m!5277355))

(assert (=> b!4525090 d!1395577))

(declare-fun d!1395579 () Bool)

(assert (=> d!1395579 (= (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701251) hash!344)) (not (isEmpty!28693 (getValueByKey!1109 (toList!4348 lt!1701251) hash!344))))))

(declare-fun bs!860736 () Bool)

(assert (= bs!860736 d!1395579))

(assert (=> bs!860736 m!5277359))

(declare-fun m!5278547 () Bool)

(assert (=> bs!860736 m!5278547))

(assert (=> b!4525090 d!1395579))

(assert (=> b!4525090 d!1395421))

(declare-fun d!1395581 () Bool)

(declare-fun res!1884245 () Bool)

(declare-fun e!2819823 () Bool)

(assert (=> d!1395581 (=> res!1884245 e!2819823)))

(assert (=> d!1395581 (= res!1884245 (and ((_ is Cons!50675) (toList!4348 lm!1477)) (= (_1!28852 (h!56536 (toList!4348 lm!1477))) lt!1701244)))))

(assert (=> d!1395581 (= (containsKey!1810 (toList!4348 lm!1477) lt!1701244) e!2819823)))

(declare-fun b!4525744 () Bool)

(declare-fun e!2819824 () Bool)

(assert (=> b!4525744 (= e!2819823 e!2819824)))

(declare-fun res!1884246 () Bool)

(assert (=> b!4525744 (=> (not res!1884246) (not e!2819824))))

(assert (=> b!4525744 (= res!1884246 (and (or (not ((_ is Cons!50675) (toList!4348 lm!1477))) (bvsle (_1!28852 (h!56536 (toList!4348 lm!1477))) lt!1701244)) ((_ is Cons!50675) (toList!4348 lm!1477)) (bvslt (_1!28852 (h!56536 (toList!4348 lm!1477))) lt!1701244)))))

(declare-fun b!4525745 () Bool)

(assert (=> b!4525745 (= e!2819824 (containsKey!1810 (t!357761 (toList!4348 lm!1477)) lt!1701244))))

(assert (= (and d!1395581 (not res!1884245)) b!4525744))

(assert (= (and b!4525744 res!1884246) b!4525745))

(declare-fun m!5278567 () Bool)

(assert (=> b!4525745 m!5278567))

(assert (=> d!1395249 d!1395581))

(declare-fun d!1395587 () Bool)

(declare-fun res!1884247 () Bool)

(declare-fun e!2819825 () Bool)

(assert (=> d!1395587 (=> res!1884247 e!2819825)))

(assert (=> d!1395587 (= res!1884247 ((_ is Nil!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395587 (= (forall!10285 (toList!4348 lm!1477) lambda!173386) e!2819825)))

(declare-fun b!4525746 () Bool)

(declare-fun e!2819826 () Bool)

(assert (=> b!4525746 (= e!2819825 e!2819826)))

(declare-fun res!1884248 () Bool)

(assert (=> b!4525746 (=> (not res!1884248) (not e!2819826))))

(assert (=> b!4525746 (= res!1884248 (dynLambda!21175 lambda!173386 (h!56536 (toList!4348 lm!1477))))))

(declare-fun b!4525747 () Bool)

(assert (=> b!4525747 (= e!2819826 (forall!10285 (t!357761 (toList!4348 lm!1477)) lambda!173386))))

(assert (= (and d!1395587 (not res!1884247)) b!4525746))

(assert (= (and b!4525746 res!1884248) b!4525747))

(declare-fun b_lambda!155695 () Bool)

(assert (=> (not b_lambda!155695) (not b!4525746)))

(declare-fun m!5278569 () Bool)

(assert (=> b!4525746 m!5278569))

(declare-fun m!5278571 () Bool)

(assert (=> b!4525747 m!5278571))

(assert (=> d!1395233 d!1395587))

(declare-fun d!1395589 () Bool)

(declare-fun c!772551 () Bool)

(assert (=> d!1395589 (= c!772551 ((_ is Nil!50675) (toList!4348 lm!1477)))))

(declare-fun e!2819827 () (InoxSet tuple2!51116))

(assert (=> d!1395589 (= (content!8382 (toList!4348 lm!1477)) e!2819827)))

(declare-fun b!4525748 () Bool)

(assert (=> b!4525748 (= e!2819827 ((as const (Array tuple2!51116 Bool)) false))))

(declare-fun b!4525749 () Bool)

(assert (=> b!4525749 (= e!2819827 ((_ map or) (store ((as const (Array tuple2!51116 Bool)) false) (h!56536 (toList!4348 lm!1477)) true) (content!8382 (t!357761 (toList!4348 lm!1477)))))))

(assert (= (and d!1395589 c!772551) b!4525748))

(assert (= (and d!1395589 (not c!772551)) b!4525749))

(declare-fun m!5278573 () Bool)

(assert (=> b!4525749 m!5278573))

(assert (=> b!4525749 m!5276817))

(assert (=> d!1395251 d!1395589))

(declare-fun d!1395591 () Bool)

(declare-fun res!1884249 () Bool)

(declare-fun e!2819828 () Bool)

(assert (=> d!1395591 (=> res!1884249 e!2819828)))

(assert (=> d!1395591 (= res!1884249 ((_ is Nil!50675) (t!357761 (toList!4348 lm!1477))))))

(assert (=> d!1395591 (= (forall!10285 (t!357761 (toList!4348 lm!1477)) lambda!173265) e!2819828)))

(declare-fun b!4525750 () Bool)

(declare-fun e!2819829 () Bool)

(assert (=> b!4525750 (= e!2819828 e!2819829)))

(declare-fun res!1884250 () Bool)

(assert (=> b!4525750 (=> (not res!1884250) (not e!2819829))))

(assert (=> b!4525750 (= res!1884250 (dynLambda!21175 lambda!173265 (h!56536 (t!357761 (toList!4348 lm!1477)))))))

(declare-fun b!4525751 () Bool)

(assert (=> b!4525751 (= e!2819829 (forall!10285 (t!357761 (t!357761 (toList!4348 lm!1477))) lambda!173265))))

(assert (= (and d!1395591 (not res!1884249)) b!4525750))

(assert (= (and b!4525750 res!1884250) b!4525751))

(declare-fun b_lambda!155697 () Bool)

(assert (=> (not b_lambda!155697) (not b!4525750)))

(declare-fun m!5278575 () Bool)

(assert (=> b!4525750 m!5278575))

(declare-fun m!5278577 () Bool)

(assert (=> b!4525751 m!5278577))

(assert (=> b!4524782 d!1395591))

(declare-fun d!1395593 () Bool)

(declare-fun c!772552 () Bool)

(assert (=> d!1395593 (= c!772552 ((_ is Nil!50674) (toList!4347 lt!1701257)))))

(declare-fun e!2819830 () (InoxSet tuple2!51114))

(assert (=> d!1395593 (= (content!8381 (toList!4347 lt!1701257)) e!2819830)))

(declare-fun b!4525752 () Bool)

(assert (=> b!4525752 (= e!2819830 ((as const (Array tuple2!51114 Bool)) false))))

(declare-fun b!4525753 () Bool)

(assert (=> b!4525753 (= e!2819830 ((_ map or) (store ((as const (Array tuple2!51114 Bool)) false) (h!56535 (toList!4347 lt!1701257)) true) (content!8381 (t!357760 (toList!4347 lt!1701257)))))))

(assert (= (and d!1395593 c!772552) b!4525752))

(assert (= (and d!1395593 (not c!772552)) b!4525753))

(declare-fun m!5278579 () Bool)

(assert (=> b!4525753 m!5278579))

(declare-fun m!5278581 () Bool)

(assert (=> b!4525753 m!5278581))

(assert (=> d!1395031 d!1395593))

(declare-fun d!1395595 () Bool)

(declare-fun c!772553 () Bool)

(assert (=> d!1395595 (= c!772553 ((_ is Nil!50674) (toList!4347 lt!1701241)))))

(declare-fun e!2819831 () (InoxSet tuple2!51114))

(assert (=> d!1395595 (= (content!8381 (toList!4347 lt!1701241)) e!2819831)))

(declare-fun b!4525754 () Bool)

(assert (=> b!4525754 (= e!2819831 ((as const (Array tuple2!51114 Bool)) false))))

(declare-fun b!4525755 () Bool)

(assert (=> b!4525755 (= e!2819831 ((_ map or) (store ((as const (Array tuple2!51114 Bool)) false) (h!56535 (toList!4347 lt!1701241)) true) (content!8381 (t!357760 (toList!4347 lt!1701241)))))))

(assert (= (and d!1395595 c!772553) b!4525754))

(assert (= (and d!1395595 (not c!772553)) b!4525755))

(declare-fun m!5278583 () Bool)

(assert (=> b!4525755 m!5278583))

(declare-fun m!5278585 () Bool)

(assert (=> b!4525755 m!5278585))

(assert (=> d!1395031 d!1395595))

(declare-fun d!1395597 () Bool)

(assert (=> d!1395597 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287))))

(declare-fun lt!1702032 () Unit!95830)

(assert (=> d!1395597 (= lt!1702032 (choose!29628 (toList!4347 lt!1701248) key!3287))))

(assert (=> d!1395597 (invariantList!1025 (toList!4347 lt!1701248))))

(assert (=> d!1395597 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701248) key!3287) lt!1702032)))

(declare-fun bs!860752 () Bool)

(assert (= bs!860752 d!1395597))

(assert (=> bs!860752 m!5276965))

(assert (=> bs!860752 m!5276965))

(assert (=> bs!860752 m!5276967))

(declare-fun m!5278587 () Bool)

(assert (=> bs!860752 m!5278587))

(assert (=> bs!860752 m!5277963))

(assert (=> b!4524913 d!1395597))

(declare-fun d!1395599 () Bool)

(assert (=> d!1395599 (= (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287)) (not (isEmpty!28690 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287))))))

(declare-fun bs!860753 () Bool)

(assert (= bs!860753 d!1395599))

(assert (=> bs!860753 m!5276965))

(declare-fun m!5278589 () Bool)

(assert (=> bs!860753 m!5278589))

(assert (=> b!4524913 d!1395599))

(declare-fun b!4525759 () Bool)

(declare-fun e!2819833 () Option!11135)

(assert (=> b!4525759 (= e!2819833 None!11134)))

(declare-fun d!1395601 () Bool)

(declare-fun c!772554 () Bool)

(assert (=> d!1395601 (= c!772554 (and ((_ is Cons!50674) (toList!4347 lt!1701248)) (= (_1!28851 (h!56535 (toList!4347 lt!1701248))) key!3287)))))

(declare-fun e!2819832 () Option!11135)

(assert (=> d!1395601 (= (getValueByKey!1107 (toList!4347 lt!1701248) key!3287) e!2819832)))

(declare-fun b!4525756 () Bool)

(assert (=> b!4525756 (= e!2819832 (Some!11134 (_2!28851 (h!56535 (toList!4347 lt!1701248)))))))

(declare-fun b!4525758 () Bool)

(assert (=> b!4525758 (= e!2819833 (getValueByKey!1107 (t!357760 (toList!4347 lt!1701248)) key!3287))))

(declare-fun b!4525757 () Bool)

(assert (=> b!4525757 (= e!2819832 e!2819833)))

(declare-fun c!772555 () Bool)

(assert (=> b!4525757 (= c!772555 (and ((_ is Cons!50674) (toList!4347 lt!1701248)) (not (= (_1!28851 (h!56535 (toList!4347 lt!1701248))) key!3287))))))

(assert (= (and d!1395601 c!772554) b!4525756))

(assert (= (and d!1395601 (not c!772554)) b!4525757))

(assert (= (and b!4525757 c!772555) b!4525758))

(assert (= (and b!4525757 (not c!772555)) b!4525759))

(declare-fun m!5278591 () Bool)

(assert (=> b!4525758 m!5278591))

(assert (=> b!4524913 d!1395601))

(declare-fun d!1395603 () Bool)

(assert (=> d!1395603 (contains!13420 (getKeysList!472 (toList!4347 lt!1701248)) key!3287)))

(declare-fun lt!1702033 () Unit!95830)

(assert (=> d!1395603 (= lt!1702033 (choose!29630 (toList!4347 lt!1701248) key!3287))))

(assert (=> d!1395603 (invariantList!1025 (toList!4347 lt!1701248))))

(assert (=> d!1395603 (= (lemmaInListThenGetKeysListContains!468 (toList!4347 lt!1701248) key!3287) lt!1702033)))

(declare-fun bs!860754 () Bool)

(assert (= bs!860754 d!1395603))

(assert (=> bs!860754 m!5276969))

(assert (=> bs!860754 m!5276969))

(declare-fun m!5278593 () Bool)

(assert (=> bs!860754 m!5278593))

(declare-fun m!5278595 () Bool)

(assert (=> bs!860754 m!5278595))

(assert (=> bs!860754 m!5277963))

(assert (=> b!4524913 d!1395603))

(declare-fun d!1395605 () Bool)

(declare-fun res!1884251 () Bool)

(declare-fun e!2819834 () Bool)

(assert (=> d!1395605 (=> res!1884251 e!2819834)))

(assert (=> d!1395605 (= res!1884251 (and ((_ is Cons!50674) (t!357760 (_2!28852 lt!1701242))) (= (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(assert (=> d!1395605 (= (containsKey!1806 (t!357760 (_2!28852 lt!1701242)) (_1!28851 (h!56535 (_2!28852 lt!1701242)))) e!2819834)))

(declare-fun b!4525760 () Bool)

(declare-fun e!2819835 () Bool)

(assert (=> b!4525760 (= e!2819834 e!2819835)))

(declare-fun res!1884252 () Bool)

(assert (=> b!4525760 (=> (not res!1884252) (not e!2819835))))

(assert (=> b!4525760 (= res!1884252 ((_ is Cons!50674) (t!357760 (_2!28852 lt!1701242))))))

(declare-fun b!4525761 () Bool)

(assert (=> b!4525761 (= e!2819835 (containsKey!1806 (t!357760 (t!357760 (_2!28852 lt!1701242))) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (= (and d!1395605 (not res!1884251)) b!4525760))

(assert (= (and b!4525760 res!1884252) b!4525761))

(declare-fun m!5278597 () Bool)

(assert (=> b!4525761 m!5278597))

(assert (=> b!4524797 d!1395605))

(assert (=> d!1395115 d!1395113))

(declare-fun d!1395607 () Bool)

(assert (=> d!1395607 (containsKeyBiggerList!150 (toList!4348 lt!1701251) key!3287)))

(assert (=> d!1395607 true))

(declare-fun _$33!679 () Unit!95830)

(assert (=> d!1395607 (= (choose!29618 lt!1701251 key!3287 hashF!1107) _$33!679)))

(declare-fun bs!860755 () Bool)

(assert (= bs!860755 d!1395607))

(assert (=> bs!860755 m!5276713))

(assert (=> d!1395115 d!1395607))

(declare-fun d!1395609 () Bool)

(declare-fun res!1884253 () Bool)

(declare-fun e!2819836 () Bool)

(assert (=> d!1395609 (=> res!1884253 e!2819836)))

(assert (=> d!1395609 (= res!1884253 ((_ is Nil!50675) (toList!4348 lt!1701251)))))

(assert (=> d!1395609 (= (forall!10285 (toList!4348 lt!1701251) lambda!173327) e!2819836)))

(declare-fun b!4525762 () Bool)

(declare-fun e!2819837 () Bool)

(assert (=> b!4525762 (= e!2819836 e!2819837)))

(declare-fun res!1884254 () Bool)

(assert (=> b!4525762 (=> (not res!1884254) (not e!2819837))))

(assert (=> b!4525762 (= res!1884254 (dynLambda!21175 lambda!173327 (h!56536 (toList!4348 lt!1701251))))))

(declare-fun b!4525763 () Bool)

(assert (=> b!4525763 (= e!2819837 (forall!10285 (t!357761 (toList!4348 lt!1701251)) lambda!173327))))

(assert (= (and d!1395609 (not res!1884253)) b!4525762))

(assert (= (and b!4525762 res!1884254) b!4525763))

(declare-fun b_lambda!155699 () Bool)

(assert (=> (not b_lambda!155699) (not b!4525762)))

(declare-fun m!5278599 () Bool)

(assert (=> b!4525762 m!5278599))

(declare-fun m!5278601 () Bool)

(assert (=> b!4525763 m!5278601))

(assert (=> d!1395115 d!1395609))

(declare-fun bs!860756 () Bool)

(declare-fun d!1395611 () Bool)

(assert (= bs!860756 (and d!1395611 b!4525163)))

(declare-fun lambda!173468 () Int)

(assert (=> bs!860756 (not (= lambda!173468 lambda!173387))))

(declare-fun bs!860757 () Bool)

(assert (= bs!860757 (and d!1395611 b!4525155)))

(assert (=> bs!860757 (not (= lambda!173468 lambda!173381))))

(declare-fun bs!860758 () Bool)

(assert (= bs!860758 (and d!1395611 b!4525663)))

(assert (=> bs!860758 (not (= lambda!173468 lambda!173445))))

(declare-fun bs!860759 () Bool)

(assert (= bs!860759 (and d!1395611 b!4525604)))

(assert (=> bs!860759 (not (= lambda!173468 lambda!173435))))

(assert (=> bs!860758 (not (= lambda!173468 lambda!173447))))

(declare-fun bs!860760 () Bool)

(assert (= bs!860760 (and d!1395611 d!1395423)))

(assert (=> bs!860760 (not (= lambda!173468 lambda!173428))))

(declare-fun bs!860761 () Bool)

(assert (= bs!860761 (and d!1395611 d!1395201)))

(assert (=> bs!860761 (not (= lambda!173468 lambda!173383))))

(declare-fun bs!860762 () Bool)

(assert (= bs!860762 (and d!1395611 b!4525156)))

(assert (=> bs!860762 (not (= lambda!173468 lambda!173380))))

(declare-fun bs!860763 () Bool)

(assert (= bs!860763 (and d!1395611 b!4525712)))

(assert (=> bs!860763 (not (= lambda!173468 lambda!173456))))

(declare-fun bs!860764 () Bool)

(assert (= bs!860764 (and d!1395611 b!4525711)))

(assert (=> bs!860764 (not (= lambda!173468 lambda!173457))))

(assert (=> bs!860759 (not (= lambda!173468 lambda!173434))))

(declare-fun bs!860765 () Bool)

(assert (= bs!860765 (and d!1395611 d!1395239)))

(assert (=> bs!860765 (not (= lambda!173468 lambda!173390))))

(declare-fun bs!860766 () Bool)

(assert (= bs!860766 (and d!1395611 b!4524756)))

(assert (=> bs!860766 (= lambda!173468 lambda!173267)))

(declare-fun bs!860767 () Bool)

(assert (= bs!860767 (and d!1395611 b!4525559)))

(assert (=> bs!860767 (not (= lambda!173468 lambda!173427))))

(declare-fun bs!860768 () Bool)

(assert (= bs!860768 (and d!1395611 d!1395453)))

(assert (=> bs!860768 (not (= lambda!173468 lambda!173437))))

(assert (=> bs!860767 (not (= lambda!173468 lambda!173426))))

(declare-fun bs!860769 () Bool)

(assert (= bs!860769 (and d!1395611 b!4525162)))

(assert (=> bs!860769 (not (= lambda!173468 lambda!173388))))

(declare-fun bs!860770 () Bool)

(assert (= bs!860770 (and d!1395611 b!4525664)))

(assert (=> bs!860770 (not (= lambda!173468 lambda!173444))))

(assert (=> bs!860764 (not (= lambda!173468 lambda!173459))))

(declare-fun bs!860771 () Bool)

(assert (= bs!860771 (and d!1395611 d!1395501)))

(assert (=> bs!860771 (not (= lambda!173468 lambda!173450))))

(declare-fun bs!860772 () Bool)

(assert (= bs!860772 (and d!1395611 b!4525605)))

(assert (=> bs!860772 (not (= lambda!173468 lambda!173432))))

(assert (=> bs!860757 (not (= lambda!173468 lambda!173382))))

(declare-fun bs!860773 () Bool)

(assert (= bs!860773 (and d!1395611 d!1395243)))

(assert (=> bs!860773 (= (= (_1!28852 (h!56536 (toList!4348 lm!1477))) hash!344) (= lambda!173468 lambda!173394))))

(assert (=> bs!860769 (not (= lambda!173468 lambda!173389))))

(declare-fun bs!860774 () Bool)

(assert (= bs!860774 (and d!1395611 d!1395547)))

(assert (=> bs!860774 (not (= lambda!173468 lambda!173462))))

(declare-fun bs!860775 () Bool)

(assert (= bs!860775 (and d!1395611 b!4525560)))

(assert (=> bs!860775 (not (= lambda!173468 lambda!173425))))

(assert (=> d!1395611 true))

(assert (=> d!1395611 true))

(assert (=> d!1395611 (= (allKeysSameHash!1024 (_2!28852 (h!56536 (toList!4348 lm!1477))) (_1!28852 (h!56536 (toList!4348 lm!1477))) hashF!1107) (forall!10287 (_2!28852 (h!56536 (toList!4348 lm!1477))) lambda!173468))))

(declare-fun bs!860776 () Bool)

(assert (= bs!860776 d!1395611))

(declare-fun m!5278603 () Bool)

(assert (=> bs!860776 m!5278603))

(assert (=> bs!860283 d!1395611))

(declare-fun d!1395613 () Bool)

(declare-fun lt!1702034 () Bool)

(assert (=> d!1395613 (= lt!1702034 (select (content!8382 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701258))))

(declare-fun e!2819839 () Bool)

(assert (=> d!1395613 (= lt!1702034 e!2819839)))

(declare-fun res!1884256 () Bool)

(assert (=> d!1395613 (=> (not res!1884256) (not e!2819839))))

(assert (=> d!1395613 (= res!1884256 ((_ is Cons!50675) (t!357761 (t!357761 (toList!4348 lm!1477)))))))

(assert (=> d!1395613 (= (contains!13419 (t!357761 (t!357761 (toList!4348 lm!1477))) lt!1701258) lt!1702034)))

(declare-fun b!4525764 () Bool)

(declare-fun e!2819838 () Bool)

(assert (=> b!4525764 (= e!2819839 e!2819838)))

(declare-fun res!1884255 () Bool)

(assert (=> b!4525764 (=> res!1884255 e!2819838)))

(assert (=> b!4525764 (= res!1884255 (= (h!56536 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701258))))

(declare-fun b!4525765 () Bool)

(assert (=> b!4525765 (= e!2819838 (contains!13419 (t!357761 (t!357761 (t!357761 (toList!4348 lm!1477)))) lt!1701258))))

(assert (= (and d!1395613 res!1884256) b!4525764))

(assert (= (and b!4525764 (not res!1884255)) b!4525765))

(assert (=> d!1395613 m!5277693))

(declare-fun m!5278605 () Bool)

(assert (=> d!1395613 m!5278605))

(declare-fun m!5278607 () Bool)

(assert (=> b!4525765 m!5278607))

(assert (=> b!4524820 d!1395613))

(declare-fun d!1395615 () Bool)

(declare-fun lt!1702035 () Bool)

(assert (=> d!1395615 (= lt!1702035 (select (content!8383 (keys!17612 lt!1701257)) key!3287))))

(declare-fun e!2819840 () Bool)

(assert (=> d!1395615 (= lt!1702035 e!2819840)))

(declare-fun res!1884258 () Bool)

(assert (=> d!1395615 (=> (not res!1884258) (not e!2819840))))

(assert (=> d!1395615 (= res!1884258 ((_ is Cons!50677) (keys!17612 lt!1701257)))))

(assert (=> d!1395615 (= (contains!13420 (keys!17612 lt!1701257) key!3287) lt!1702035)))

(declare-fun b!4525766 () Bool)

(declare-fun e!2819841 () Bool)

(assert (=> b!4525766 (= e!2819840 e!2819841)))

(declare-fun res!1884257 () Bool)

(assert (=> b!4525766 (=> res!1884257 e!2819841)))

(assert (=> b!4525766 (= res!1884257 (= (h!56540 (keys!17612 lt!1701257)) key!3287))))

(declare-fun b!4525767 () Bool)

(assert (=> b!4525767 (= e!2819841 (contains!13420 (t!357763 (keys!17612 lt!1701257)) key!3287))))

(assert (= (and d!1395615 res!1884258) b!4525766))

(assert (= (and b!4525766 (not res!1884257)) b!4525767))

(assert (=> d!1395615 m!5276905))

(declare-fun m!5278609 () Bool)

(assert (=> d!1395615 m!5278609))

(declare-fun m!5278611 () Bool)

(assert (=> d!1395615 m!5278611))

(declare-fun m!5278613 () Bool)

(assert (=> b!4525767 m!5278613))

(assert (=> b!4524877 d!1395615))

(declare-fun bs!860777 () Bool)

(declare-fun b!4525769 () Bool)

(assert (= bs!860777 (and b!4525769 b!4525502)))

(declare-fun lambda!173469 () Int)

(assert (=> bs!860777 (= (= (toList!4347 lt!1701257) (t!357760 (toList!4347 lt!1701248))) (= lambda!173469 lambda!173421))))

(declare-fun bs!860778 () Bool)

(assert (= bs!860778 (and b!4525769 b!4525501)))

(assert (=> bs!860778 (= (= (toList!4347 lt!1701257) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173469 lambda!173422))))

(declare-fun bs!860779 () Bool)

(assert (= bs!860779 (and b!4525769 b!4525495)))

(assert (=> bs!860779 (= (= (toList!4347 lt!1701257) (toList!4347 lt!1701248)) (= lambda!173469 lambda!173423))))

(declare-fun bs!860780 () Bool)

(assert (= bs!860780 (and b!4525769 b!4525617)))

(assert (=> bs!860780 (= (= (toList!4347 lt!1701257) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173469 lambda!173442))))

(assert (=> b!4525769 true))

(declare-fun bs!860781 () Bool)

(declare-fun b!4525770 () Bool)

(assert (= bs!860781 (and b!4525770 b!4525499)))

(declare-fun lambda!173470 () Int)

(assert (=> bs!860781 (= lambda!173470 lambda!173424)))

(declare-fun bs!860782 () Bool)

(assert (= bs!860782 (and b!4525770 b!4525618)))

(assert (=> bs!860782 (= lambda!173470 lambda!173443)))

(declare-fun d!1395617 () Bool)

(declare-fun e!2819842 () Bool)

(assert (=> d!1395617 e!2819842))

(declare-fun res!1884261 () Bool)

(assert (=> d!1395617 (=> (not res!1884261) (not e!2819842))))

(declare-fun lt!1702036 () List!50801)

(assert (=> d!1395617 (= res!1884261 (noDuplicate!752 lt!1702036))))

(assert (=> d!1395617 (= lt!1702036 (getKeysList!472 (toList!4347 lt!1701257)))))

(assert (=> d!1395617 (= (keys!17612 lt!1701257) lt!1702036)))

(declare-fun b!4525768 () Bool)

(declare-fun res!1884259 () Bool)

(assert (=> b!4525768 (=> (not res!1884259) (not e!2819842))))

(assert (=> b!4525768 (= res!1884259 (= (length!360 lt!1702036) (length!361 (toList!4347 lt!1701257))))))

(declare-fun res!1884260 () Bool)

(assert (=> b!4525769 (=> (not res!1884260) (not e!2819842))))

(assert (=> b!4525769 (= res!1884260 (forall!10289 lt!1702036 lambda!173469))))

(assert (=> b!4525770 (= e!2819842 (= (content!8383 lt!1702036) (content!8383 (map!11148 (toList!4347 lt!1701257) lambda!173470))))))

(assert (= (and d!1395617 res!1884261) b!4525768))

(assert (= (and b!4525768 res!1884259) b!4525769))

(assert (= (and b!4525769 res!1884260) b!4525770))

(declare-fun m!5278615 () Bool)

(assert (=> d!1395617 m!5278615))

(assert (=> d!1395617 m!5276903))

(declare-fun m!5278617 () Bool)

(assert (=> b!4525768 m!5278617))

(declare-fun m!5278619 () Bool)

(assert (=> b!4525768 m!5278619))

(declare-fun m!5278621 () Bool)

(assert (=> b!4525769 m!5278621))

(declare-fun m!5278623 () Bool)

(assert (=> b!4525770 m!5278623))

(declare-fun m!5278625 () Bool)

(assert (=> b!4525770 m!5278625))

(assert (=> b!4525770 m!5278625))

(declare-fun m!5278627 () Bool)

(assert (=> b!4525770 m!5278627))

(assert (=> b!4524877 d!1395617))

(declare-fun d!1395619 () Bool)

(declare-fun res!1884262 () Bool)

(declare-fun e!2819843 () Bool)

(assert (=> d!1395619 (=> res!1884262 e!2819843)))

(assert (=> d!1395619 (= res!1884262 (and ((_ is Cons!50674) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= (_1!28851 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) key!3287)))))

(assert (=> d!1395619 (= (containsKey!1808 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287) e!2819843)))

(declare-fun b!4525771 () Bool)

(declare-fun e!2819844 () Bool)

(assert (=> b!4525771 (= e!2819843 e!2819844)))

(declare-fun res!1884263 () Bool)

(assert (=> b!4525771 (=> (not res!1884263) (not e!2819844))))

(assert (=> b!4525771 (= res!1884263 ((_ is Cons!50674) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))

(declare-fun b!4525772 () Bool)

(assert (=> b!4525772 (= e!2819844 (containsKey!1808 (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) key!3287))))

(assert (= (and d!1395619 (not res!1884262)) b!4525771))

(assert (= (and b!4525771 res!1884263) b!4525772))

(declare-fun m!5278629 () Bool)

(assert (=> b!4525772 m!5278629))

(assert (=> d!1395085 d!1395619))

(declare-fun d!1395621 () Bool)

(assert (=> d!1395621 (= (isEmpty!28689 lt!1701544) (not ((_ is Some!11132) lt!1701544)))))

(assert (=> d!1395163 d!1395621))

(assert (=> d!1395163 d!1395043))

(declare-fun d!1395623 () Bool)

(assert (=> d!1395623 (= (invariantList!1025 (toList!4347 lt!1701413)) (noDuplicatedKeys!266 (toList!4347 lt!1701413)))))

(declare-fun bs!860783 () Bool)

(assert (= bs!860783 d!1395623))

(declare-fun m!5278631 () Bool)

(assert (=> bs!860783 m!5278631))

(assert (=> d!1395071 d!1395623))

(declare-fun d!1395625 () Bool)

(declare-fun res!1884264 () Bool)

(declare-fun e!2819845 () Bool)

(assert (=> d!1395625 (=> res!1884264 e!2819845)))

(assert (=> d!1395625 (= res!1884264 ((_ is Nil!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395625 (= (forall!10285 (toList!4348 lm!1477) lambda!173310) e!2819845)))

(declare-fun b!4525773 () Bool)

(declare-fun e!2819846 () Bool)

(assert (=> b!4525773 (= e!2819845 e!2819846)))

(declare-fun res!1884265 () Bool)

(assert (=> b!4525773 (=> (not res!1884265) (not e!2819846))))

(assert (=> b!4525773 (= res!1884265 (dynLambda!21175 lambda!173310 (h!56536 (toList!4348 lm!1477))))))

(declare-fun b!4525774 () Bool)

(assert (=> b!4525774 (= e!2819846 (forall!10285 (t!357761 (toList!4348 lm!1477)) lambda!173310))))

(assert (= (and d!1395625 (not res!1884264)) b!4525773))

(assert (= (and b!4525773 res!1884265) b!4525774))

(declare-fun b_lambda!155701 () Bool)

(assert (=> (not b_lambda!155701) (not b!4525773)))

(declare-fun m!5278633 () Bool)

(assert (=> b!4525773 m!5278633))

(declare-fun m!5278635 () Bool)

(assert (=> b!4525774 m!5278635))

(assert (=> d!1395071 d!1395625))

(declare-fun d!1395627 () Bool)

(declare-fun res!1884266 () Bool)

(declare-fun e!2819847 () Bool)

(assert (=> d!1395627 (=> res!1884266 e!2819847)))

(assert (=> d!1395627 (= res!1884266 ((_ is Nil!50674) (toList!4347 lt!1701249)))))

(assert (=> d!1395627 (= (forall!10287 (toList!4347 lt!1701249) lambda!173382) e!2819847)))

(declare-fun b!4525775 () Bool)

(declare-fun e!2819848 () Bool)

(assert (=> b!4525775 (= e!2819847 e!2819848)))

(declare-fun res!1884267 () Bool)

(assert (=> b!4525775 (=> (not res!1884267) (not e!2819848))))

(assert (=> b!4525775 (= res!1884267 (dynLambda!21177 lambda!173382 (h!56535 (toList!4347 lt!1701249))))))

(declare-fun b!4525776 () Bool)

(assert (=> b!4525776 (= e!2819848 (forall!10287 (t!357760 (toList!4347 lt!1701249)) lambda!173382))))

(assert (= (and d!1395627 (not res!1884266)) b!4525775))

(assert (= (and b!4525775 res!1884267) b!4525776))

(declare-fun b_lambda!155703 () Bool)

(assert (=> (not b_lambda!155703) (not b!4525775)))

(declare-fun m!5278637 () Bool)

(assert (=> b!4525775 m!5278637))

(declare-fun m!5278639 () Bool)

(assert (=> b!4525776 m!5278639))

(assert (=> b!4525152 d!1395627))

(assert (=> b!4525188 d!1395251))

(declare-fun d!1395629 () Bool)

(declare-fun e!2819849 () Bool)

(assert (=> d!1395629 e!2819849))

(declare-fun res!1884268 () Bool)

(assert (=> d!1395629 (=> (not res!1884268) (not e!2819849))))

(declare-fun lt!1702039 () ListLongMap!2979)

(assert (=> d!1395629 (= res!1884268 (contains!13417 lt!1702039 (_1!28852 (tuple2!51117 hash!344 newBucket!178))))))

(declare-fun lt!1702038 () List!50799)

(assert (=> d!1395629 (= lt!1702039 (ListLongMap!2980 lt!1702038))))

(declare-fun lt!1702037 () Unit!95830)

(declare-fun lt!1702040 () Unit!95830)

(assert (=> d!1395629 (= lt!1702037 lt!1702040)))

(assert (=> d!1395629 (= (getValueByKey!1109 lt!1702038 (_1!28852 (tuple2!51117 hash!344 newBucket!178))) (Some!11136 (_2!28852 (tuple2!51117 hash!344 newBucket!178))))))

(assert (=> d!1395629 (= lt!1702040 (lemmaContainsTupThenGetReturnValue!690 lt!1702038 (_1!28852 (tuple2!51117 hash!344 newBucket!178)) (_2!28852 (tuple2!51117 hash!344 newBucket!178))))))

(assert (=> d!1395629 (= lt!1702038 (insertStrictlySorted!416 (toList!4348 lt!1701251) (_1!28852 (tuple2!51117 hash!344 newBucket!178)) (_2!28852 (tuple2!51117 hash!344 newBucket!178))))))

(assert (=> d!1395629 (= (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178)) lt!1702039)))

(declare-fun b!4525777 () Bool)

(declare-fun res!1884269 () Bool)

(assert (=> b!4525777 (=> (not res!1884269) (not e!2819849))))

(assert (=> b!4525777 (= res!1884269 (= (getValueByKey!1109 (toList!4348 lt!1702039) (_1!28852 (tuple2!51117 hash!344 newBucket!178))) (Some!11136 (_2!28852 (tuple2!51117 hash!344 newBucket!178)))))))

(declare-fun b!4525778 () Bool)

(assert (=> b!4525778 (= e!2819849 (contains!13419 (toList!4348 lt!1702039) (tuple2!51117 hash!344 newBucket!178)))))

(assert (= (and d!1395629 res!1884268) b!4525777))

(assert (= (and b!4525777 res!1884269) b!4525778))

(declare-fun m!5278641 () Bool)

(assert (=> d!1395629 m!5278641))

(declare-fun m!5278643 () Bool)

(assert (=> d!1395629 m!5278643))

(declare-fun m!5278645 () Bool)

(assert (=> d!1395629 m!5278645))

(declare-fun m!5278647 () Bool)

(assert (=> d!1395629 m!5278647))

(declare-fun m!5278649 () Bool)

(assert (=> b!4525777 m!5278649))

(declare-fun m!5278651 () Bool)

(assert (=> b!4525778 m!5278651))

(assert (=> d!1395141 d!1395629))

(declare-fun d!1395631 () Bool)

(assert (=> d!1395631 (= (eq!627 (extractMap!1226 (toList!4348 (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178)))) (-!396 (extractMap!1226 (toList!4348 lt!1701251)) key!3287)) (= (content!8381 (toList!4347 (extractMap!1226 (toList!4348 (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178)))))) (content!8381 (toList!4347 (-!396 (extractMap!1226 (toList!4348 lt!1701251)) key!3287)))))))

(declare-fun bs!860784 () Bool)

(assert (= bs!860784 d!1395631))

(declare-fun m!5278653 () Bool)

(assert (=> bs!860784 m!5278653))

(declare-fun m!5278655 () Bool)

(assert (=> bs!860784 m!5278655))

(assert (=> d!1395141 d!1395631))

(declare-fun d!1395633 () Bool)

(declare-fun res!1884270 () Bool)

(declare-fun e!2819850 () Bool)

(assert (=> d!1395633 (=> res!1884270 e!2819850)))

(assert (=> d!1395633 (= res!1884270 ((_ is Nil!50675) (toList!4348 lt!1701251)))))

(assert (=> d!1395633 (= (forall!10285 (toList!4348 lt!1701251) lambda!173337) e!2819850)))

(declare-fun b!4525779 () Bool)

(declare-fun e!2819851 () Bool)

(assert (=> b!4525779 (= e!2819850 e!2819851)))

(declare-fun res!1884271 () Bool)

(assert (=> b!4525779 (=> (not res!1884271) (not e!2819851))))

(assert (=> b!4525779 (= res!1884271 (dynLambda!21175 lambda!173337 (h!56536 (toList!4348 lt!1701251))))))

(declare-fun b!4525780 () Bool)

(assert (=> b!4525780 (= e!2819851 (forall!10285 (t!357761 (toList!4348 lt!1701251)) lambda!173337))))

(assert (= (and d!1395633 (not res!1884270)) b!4525779))

(assert (= (and b!4525779 res!1884271) b!4525780))

(declare-fun b_lambda!155705 () Bool)

(assert (=> (not b_lambda!155705) (not b!4525779)))

(declare-fun m!5278657 () Bool)

(assert (=> b!4525779 m!5278657))

(declare-fun m!5278659 () Bool)

(assert (=> b!4525780 m!5278659))

(assert (=> d!1395141 d!1395633))

(declare-fun d!1395635 () Bool)

(declare-fun e!2819856 () Bool)

(assert (=> d!1395635 e!2819856))

(declare-fun res!1884272 () Bool)

(assert (=> d!1395635 (=> (not res!1884272) (not e!2819856))))

(declare-fun lt!1702045 () ListMap!3609)

(assert (=> d!1395635 (= res!1884272 (not (contains!13418 lt!1702045 key!3287)))))

(assert (=> d!1395635 (= lt!1702045 (ListMap!3610 (removePresrvNoDuplicatedKeys!149 (toList!4347 (extractMap!1226 (toList!4348 lt!1701251))) key!3287)))))

(assert (=> d!1395635 (= (-!396 (extractMap!1226 (toList!4348 lt!1701251)) key!3287) lt!1702045)))

(declare-fun b!4525789 () Bool)

(assert (=> b!4525789 (= e!2819856 (= ((_ map and) (content!8383 (keys!17612 (extractMap!1226 (toList!4348 lt!1701251)))) ((_ map not) (store ((as const (Array K!12065 Bool)) false) key!3287 true))) (content!8383 (keys!17612 lt!1702045))))))

(assert (= (and d!1395635 res!1884272) b!4525789))

(declare-fun m!5278661 () Bool)

(assert (=> d!1395635 m!5278661))

(declare-fun m!5278663 () Bool)

(assert (=> d!1395635 m!5278663))

(assert (=> b!4525789 m!5276771))

(declare-fun m!5278665 () Bool)

(assert (=> b!4525789 m!5278665))

(declare-fun m!5278667 () Bool)

(assert (=> b!4525789 m!5278667))

(assert (=> b!4525789 m!5278665))

(declare-fun m!5278669 () Bool)

(assert (=> b!4525789 m!5278669))

(assert (=> b!4525789 m!5277165))

(assert (=> b!4525789 m!5278667))

(declare-fun m!5278671 () Bool)

(assert (=> b!4525789 m!5278671))

(assert (=> d!1395141 d!1395635))

(declare-fun bs!860785 () Bool)

(declare-fun d!1395637 () Bool)

(assert (= bs!860785 (and d!1395637 d!1395129)))

(declare-fun lambda!173472 () Int)

(assert (=> bs!860785 (= lambda!173472 lambda!173332)))

(declare-fun bs!860786 () Bool)

(assert (= bs!860786 (and d!1395637 b!4524756)))

(assert (=> bs!860786 (not (= lambda!173472 lambda!173266))))

(declare-fun bs!860787 () Bool)

(assert (= bs!860787 (and d!1395637 d!1395233)))

(assert (=> bs!860787 (not (= lambda!173472 lambda!173386))))

(declare-fun bs!860788 () Bool)

(assert (= bs!860788 (and d!1395637 d!1395089)))

(assert (=> bs!860788 (= lambda!173472 lambda!173318)))

(declare-fun bs!860789 () Bool)

(assert (= bs!860789 (and d!1395637 d!1395071)))

(assert (=> bs!860789 (= lambda!173472 lambda!173310)))

(declare-fun bs!860790 () Bool)

(assert (= bs!860790 (and d!1395637 d!1395099)))

(assert (=> bs!860790 (= lambda!173472 lambda!173319)))

(declare-fun bs!860791 () Bool)

(assert (= bs!860791 (and d!1395637 d!1395039)))

(assert (=> bs!860791 (= lambda!173472 lambda!173270)))

(declare-fun bs!860792 () Bool)

(assert (= bs!860792 (and d!1395637 d!1395245)))

(assert (=> bs!860792 (= lambda!173472 lambda!173397)))

(declare-fun bs!860793 () Bool)

(assert (= bs!860793 (and d!1395637 start!448304)))

(assert (=> bs!860793 (= lambda!173472 lambda!173265)))

(declare-fun bs!860794 () Bool)

(assert (= bs!860794 (and d!1395637 d!1395141)))

(assert (=> bs!860794 (= lambda!173472 lambda!173337)))

(declare-fun bs!860795 () Bool)

(assert (= bs!860795 (and d!1395637 d!1395133)))

(assert (=> bs!860795 (= lambda!173472 lambda!173333)))

(declare-fun bs!860796 () Bool)

(assert (= bs!860796 (and d!1395637 d!1395509)))

(assert (=> bs!860796 (= lambda!173472 lambda!173452)))

(declare-fun bs!860797 () Bool)

(assert (= bs!860797 (and d!1395637 d!1395241)))

(assert (=> bs!860797 (= lambda!173472 lambda!173391)))

(declare-fun bs!860798 () Bool)

(assert (= bs!860798 (and d!1395637 d!1395429)))

(assert (=> bs!860798 (= lambda!173472 lambda!173429)))

(declare-fun bs!860799 () Bool)

(assert (= bs!860799 (and d!1395637 d!1395087)))

(assert (=> bs!860799 (= lambda!173472 lambda!173312)))

(declare-fun bs!860800 () Bool)

(assert (= bs!860800 (and d!1395637 d!1395115)))

(assert (=> bs!860800 (= lambda!173472 lambda!173327)))

(declare-fun bs!860801 () Bool)

(assert (= bs!860801 (and d!1395637 d!1395575)))

(assert (=> bs!860801 (= lambda!173472 lambda!173465)))

(declare-fun lt!1702050 () ListMap!3609)

(assert (=> d!1395637 (invariantList!1025 (toList!4347 lt!1702050))))

(declare-fun e!2819859 () ListMap!3609)

(assert (=> d!1395637 (= lt!1702050 e!2819859)))

(declare-fun c!772562 () Bool)

(assert (=> d!1395637 (= c!772562 ((_ is Cons!50675) (toList!4348 (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178)))))))

(assert (=> d!1395637 (forall!10285 (toList!4348 (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178))) lambda!173472)))

(assert (=> d!1395637 (= (extractMap!1226 (toList!4348 (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178)))) lt!1702050)))

(declare-fun b!4525794 () Bool)

(assert (=> b!4525794 (= e!2819859 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178))))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178)))))))))

(declare-fun b!4525795 () Bool)

(assert (=> b!4525795 (= e!2819859 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395637 c!772562) b!4525794))

(assert (= (and d!1395637 (not c!772562)) b!4525795))

(declare-fun m!5278673 () Bool)

(assert (=> d!1395637 m!5278673))

(declare-fun m!5278675 () Bool)

(assert (=> d!1395637 m!5278675))

(declare-fun m!5278677 () Bool)

(assert (=> b!4525794 m!5278677))

(assert (=> b!4525794 m!5278677))

(declare-fun m!5278679 () Bool)

(assert (=> b!4525794 m!5278679))

(assert (=> d!1395141 d!1395637))

(declare-fun d!1395639 () Bool)

(assert (=> d!1395639 (eq!627 (extractMap!1226 (toList!4348 (+!1556 lt!1701251 (tuple2!51117 hash!344 newBucket!178)))) (-!396 (extractMap!1226 (toList!4348 lt!1701251)) key!3287))))

(assert (=> d!1395639 true))

(declare-fun _$8!665 () Unit!95830)

(assert (=> d!1395639 (= (choose!29621 lt!1701251 hash!344 newBucket!178 key!3287 hashF!1107) _$8!665)))

(declare-fun bs!860839 () Bool)

(assert (= bs!860839 d!1395639))

(assert (=> bs!860839 m!5277219))

(assert (=> bs!860839 m!5276771))

(assert (=> bs!860839 m!5277213))

(assert (=> bs!860839 m!5277215))

(assert (=> bs!860839 m!5277217))

(assert (=> bs!860839 m!5276771))

(assert (=> bs!860839 m!5277215))

(assert (=> bs!860839 m!5277213))

(assert (=> d!1395141 d!1395639))

(assert (=> d!1395141 d!1395099))

(declare-fun d!1395655 () Bool)

(declare-fun c!772569 () Bool)

(assert (=> d!1395655 (= c!772569 ((_ is Nil!50674) (toList!4347 lt!1701266)))))

(declare-fun e!2819877 () (InoxSet tuple2!51114))

(assert (=> d!1395655 (= (content!8381 (toList!4347 lt!1701266)) e!2819877)))

(declare-fun b!4525828 () Bool)

(assert (=> b!4525828 (= e!2819877 ((as const (Array tuple2!51114 Bool)) false))))

(declare-fun b!4525829 () Bool)

(assert (=> b!4525829 (= e!2819877 ((_ map or) (store ((as const (Array tuple2!51114 Bool)) false) (h!56535 (toList!4347 lt!1701266)) true) (content!8381 (t!357760 (toList!4347 lt!1701266)))))))

(assert (= (and d!1395655 c!772569) b!4525828))

(assert (= (and d!1395655 (not c!772569)) b!4525829))

(declare-fun m!5278719 () Bool)

(assert (=> b!4525829 m!5278719))

(declare-fun m!5278721 () Bool)

(assert (=> b!4525829 m!5278721))

(assert (=> d!1395197 d!1395655))

(assert (=> d!1395197 d!1395525))

(declare-fun d!1395657 () Bool)

(declare-fun lt!1702085 () Bool)

(assert (=> d!1395657 (= lt!1702085 (select (content!8382 (toList!4348 lt!1701574)) lt!1701242))))

(declare-fun e!2819879 () Bool)

(assert (=> d!1395657 (= lt!1702085 e!2819879)))

(declare-fun res!1884292 () Bool)

(assert (=> d!1395657 (=> (not res!1884292) (not e!2819879))))

(assert (=> d!1395657 (= res!1884292 ((_ is Cons!50675) (toList!4348 lt!1701574)))))

(assert (=> d!1395657 (= (contains!13419 (toList!4348 lt!1701574) lt!1701242) lt!1702085)))

(declare-fun b!4525830 () Bool)

(declare-fun e!2819878 () Bool)

(assert (=> b!4525830 (= e!2819879 e!2819878)))

(declare-fun res!1884291 () Bool)

(assert (=> b!4525830 (=> res!1884291 e!2819878)))

(assert (=> b!4525830 (= res!1884291 (= (h!56536 (toList!4348 lt!1701574)) lt!1701242))))

(declare-fun b!4525831 () Bool)

(assert (=> b!4525831 (= e!2819878 (contains!13419 (t!357761 (toList!4348 lt!1701574)) lt!1701242))))

(assert (= (and d!1395657 res!1884292) b!4525830))

(assert (= (and b!4525830 (not res!1884291)) b!4525831))

(declare-fun m!5278723 () Bool)

(assert (=> d!1395657 m!5278723))

(declare-fun m!5278725 () Bool)

(assert (=> d!1395657 m!5278725))

(declare-fun m!5278727 () Bool)

(assert (=> b!4525831 m!5278727))

(assert (=> b!4525096 d!1395657))

(declare-fun d!1395659 () Bool)

(assert (=> d!1395659 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701257) key!3287))))

(declare-fun lt!1702086 () Unit!95830)

(assert (=> d!1395659 (= lt!1702086 (choose!29628 (toList!4347 lt!1701257) key!3287))))

(assert (=> d!1395659 (invariantList!1025 (toList!4347 lt!1701257))))

(assert (=> d!1395659 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701257) key!3287) lt!1702086)))

(declare-fun bs!860851 () Bool)

(assert (= bs!860851 d!1395659))

(assert (=> bs!860851 m!5276899))

(assert (=> bs!860851 m!5276899))

(assert (=> bs!860851 m!5276901))

(declare-fun m!5278729 () Bool)

(assert (=> bs!860851 m!5278729))

(assert (=> bs!860851 m!5278123))

(assert (=> b!4524881 d!1395659))

(declare-fun d!1395661 () Bool)

(assert (=> d!1395661 (= (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701257) key!3287)) (not (isEmpty!28690 (getValueByKey!1107 (toList!4347 lt!1701257) key!3287))))))

(declare-fun bs!860854 () Bool)

(assert (= bs!860854 d!1395661))

(assert (=> bs!860854 m!5276899))

(declare-fun m!5278731 () Bool)

(assert (=> bs!860854 m!5278731))

(assert (=> b!4524881 d!1395661))

(declare-fun b!4525835 () Bool)

(declare-fun e!2819881 () Option!11135)

(assert (=> b!4525835 (= e!2819881 None!11134)))

(declare-fun d!1395663 () Bool)

(declare-fun c!772570 () Bool)

(assert (=> d!1395663 (= c!772570 (and ((_ is Cons!50674) (toList!4347 lt!1701257)) (= (_1!28851 (h!56535 (toList!4347 lt!1701257))) key!3287)))))

(declare-fun e!2819880 () Option!11135)

(assert (=> d!1395663 (= (getValueByKey!1107 (toList!4347 lt!1701257) key!3287) e!2819880)))

(declare-fun b!4525832 () Bool)

(assert (=> b!4525832 (= e!2819880 (Some!11134 (_2!28851 (h!56535 (toList!4347 lt!1701257)))))))

(declare-fun b!4525834 () Bool)

(assert (=> b!4525834 (= e!2819881 (getValueByKey!1107 (t!357760 (toList!4347 lt!1701257)) key!3287))))

(declare-fun b!4525833 () Bool)

(assert (=> b!4525833 (= e!2819880 e!2819881)))

(declare-fun c!772571 () Bool)

(assert (=> b!4525833 (= c!772571 (and ((_ is Cons!50674) (toList!4347 lt!1701257)) (not (= (_1!28851 (h!56535 (toList!4347 lt!1701257))) key!3287))))))

(assert (= (and d!1395663 c!772570) b!4525832))

(assert (= (and d!1395663 (not c!772570)) b!4525833))

(assert (= (and b!4525833 c!772571) b!4525834))

(assert (= (and b!4525833 (not c!772571)) b!4525835))

(declare-fun m!5278733 () Bool)

(assert (=> b!4525834 m!5278733))

(assert (=> b!4524881 d!1395663))

(declare-fun d!1395665 () Bool)

(assert (=> d!1395665 (contains!13420 (getKeysList!472 (toList!4347 lt!1701257)) key!3287)))

(declare-fun lt!1702087 () Unit!95830)

(assert (=> d!1395665 (= lt!1702087 (choose!29630 (toList!4347 lt!1701257) key!3287))))

(assert (=> d!1395665 (invariantList!1025 (toList!4347 lt!1701257))))

(assert (=> d!1395665 (= (lemmaInListThenGetKeysListContains!468 (toList!4347 lt!1701257) key!3287) lt!1702087)))

(declare-fun bs!860859 () Bool)

(assert (= bs!860859 d!1395665))

(assert (=> bs!860859 m!5276903))

(assert (=> bs!860859 m!5276903))

(declare-fun m!5278735 () Bool)

(assert (=> bs!860859 m!5278735))

(declare-fun m!5278737 () Bool)

(assert (=> bs!860859 m!5278737))

(assert (=> bs!860859 m!5278123))

(assert (=> b!4524881 d!1395665))

(assert (=> b!4524919 d!1395311))

(assert (=> b!4524919 d!1395313))

(declare-fun d!1395667 () Bool)

(assert (=> d!1395667 (= (invariantList!1025 (toList!4347 lt!1701649)) (noDuplicatedKeys!266 (toList!4347 lt!1701649)))))

(declare-fun bs!860862 () Bool)

(assert (= bs!860862 d!1395667))

(declare-fun m!5278739 () Bool)

(assert (=> bs!860862 m!5278739))

(assert (=> b!4525154 d!1395667))

(declare-fun d!1395669 () Bool)

(assert (=> d!1395669 (dynLambda!21175 lambda!173265 lt!1701258)))

(assert (=> d!1395669 true))

(declare-fun _$7!1865 () Unit!95830)

(assert (=> d!1395669 (= (choose!29616 (toList!4348 lm!1477) lambda!173265 lt!1701258) _$7!1865)))

(declare-fun b_lambda!155711 () Bool)

(assert (=> (not b_lambda!155711) (not d!1395669)))

(declare-fun bs!860866 () Bool)

(assert (= bs!860866 d!1395669))

(assert (=> bs!860866 m!5277581))

(assert (=> d!1395257 d!1395669))

(assert (=> d!1395257 d!1395035))

(declare-fun d!1395671 () Bool)

(assert (=> d!1395671 (= (invariantList!1025 (toList!4347 lt!1701673)) (noDuplicatedKeys!266 (toList!4347 lt!1701673)))))

(declare-fun bs!860867 () Bool)

(assert (= bs!860867 d!1395671))

(declare-fun m!5278741 () Bool)

(assert (=> bs!860867 m!5278741))

(assert (=> b!4525161 d!1395671))

(declare-fun d!1395673 () Bool)

(declare-fun e!2819882 () Bool)

(assert (=> d!1395673 e!2819882))

(declare-fun res!1884293 () Bool)

(assert (=> d!1395673 (=> res!1884293 e!2819882)))

(declare-fun lt!1702091 () Bool)

(assert (=> d!1395673 (= res!1884293 (not lt!1702091))))

(declare-fun lt!1702089 () Bool)

(assert (=> d!1395673 (= lt!1702091 lt!1702089)))

(declare-fun lt!1702090 () Unit!95830)

(declare-fun e!2819883 () Unit!95830)

(assert (=> d!1395673 (= lt!1702090 e!2819883)))

(declare-fun c!772572 () Bool)

(assert (=> d!1395673 (= c!772572 lt!1702089)))

(assert (=> d!1395673 (= lt!1702089 (containsKey!1810 (toList!4348 lt!1701537) (_1!28852 lt!1701242)))))

(assert (=> d!1395673 (= (contains!13417 lt!1701537 (_1!28852 lt!1701242)) lt!1702091)))

(declare-fun b!4525836 () Bool)

(declare-fun lt!1702088 () Unit!95830)

(assert (=> b!4525836 (= e!2819883 lt!1702088)))

(assert (=> b!4525836 (= lt!1702088 (lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (toList!4348 lt!1701537) (_1!28852 lt!1701242)))))

(assert (=> b!4525836 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701537) (_1!28852 lt!1701242)))))

(declare-fun b!4525837 () Bool)

(declare-fun Unit!96004 () Unit!95830)

(assert (=> b!4525837 (= e!2819883 Unit!96004)))

(declare-fun b!4525838 () Bool)

(assert (=> b!4525838 (= e!2819882 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701537) (_1!28852 lt!1701242))))))

(assert (= (and d!1395673 c!772572) b!4525836))

(assert (= (and d!1395673 (not c!772572)) b!4525837))

(assert (= (and d!1395673 (not res!1884293)) b!4525838))

(declare-fun m!5278743 () Bool)

(assert (=> d!1395673 m!5278743))

(declare-fun m!5278745 () Bool)

(assert (=> b!4525836 m!5278745))

(assert (=> b!4525836 m!5277287))

(assert (=> b!4525836 m!5277287))

(declare-fun m!5278747 () Bool)

(assert (=> b!4525836 m!5278747))

(assert (=> b!4525838 m!5277287))

(assert (=> b!4525838 m!5277287))

(assert (=> b!4525838 m!5278747))

(assert (=> d!1395153 d!1395673))

(declare-fun b!4525839 () Bool)

(declare-fun e!2819884 () Option!11137)

(assert (=> b!4525839 (= e!2819884 (Some!11136 (_2!28852 (h!56536 lt!1701536))))))

(declare-fun d!1395675 () Bool)

(declare-fun c!772573 () Bool)

(assert (=> d!1395675 (= c!772573 (and ((_ is Cons!50675) lt!1701536) (= (_1!28852 (h!56536 lt!1701536)) (_1!28852 lt!1701242))))))

(assert (=> d!1395675 (= (getValueByKey!1109 lt!1701536 (_1!28852 lt!1701242)) e!2819884)))

(declare-fun b!4525840 () Bool)

(declare-fun e!2819885 () Option!11137)

(assert (=> b!4525840 (= e!2819884 e!2819885)))

(declare-fun c!772574 () Bool)

(assert (=> b!4525840 (= c!772574 (and ((_ is Cons!50675) lt!1701536) (not (= (_1!28852 (h!56536 lt!1701536)) (_1!28852 lt!1701242)))))))

(declare-fun b!4525841 () Bool)

(assert (=> b!4525841 (= e!2819885 (getValueByKey!1109 (t!357761 lt!1701536) (_1!28852 lt!1701242)))))

(declare-fun b!4525842 () Bool)

(assert (=> b!4525842 (= e!2819885 None!11136)))

(assert (= (and d!1395675 c!772573) b!4525839))

(assert (= (and d!1395675 (not c!772573)) b!4525840))

(assert (= (and b!4525840 c!772574) b!4525841))

(assert (= (and b!4525840 (not c!772574)) b!4525842))

(declare-fun m!5278749 () Bool)

(assert (=> b!4525841 m!5278749))

(assert (=> d!1395153 d!1395675))

(declare-fun d!1395677 () Bool)

(assert (=> d!1395677 (= (getValueByKey!1109 lt!1701536 (_1!28852 lt!1701242)) (Some!11136 (_2!28852 lt!1701242)))))

(declare-fun lt!1702092 () Unit!95830)

(assert (=> d!1395677 (= lt!1702092 (choose!29632 lt!1701536 (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))

(declare-fun e!2819886 () Bool)

(assert (=> d!1395677 e!2819886))

(declare-fun res!1884294 () Bool)

(assert (=> d!1395677 (=> (not res!1884294) (not e!2819886))))

(assert (=> d!1395677 (= res!1884294 (isStrictlySorted!439 lt!1701536))))

(assert (=> d!1395677 (= (lemmaContainsTupThenGetReturnValue!690 lt!1701536 (_1!28852 lt!1701242) (_2!28852 lt!1701242)) lt!1702092)))

(declare-fun b!4525843 () Bool)

(declare-fun res!1884295 () Bool)

(assert (=> b!4525843 (=> (not res!1884295) (not e!2819886))))

(assert (=> b!4525843 (= res!1884295 (containsKey!1810 lt!1701536 (_1!28852 lt!1701242)))))

(declare-fun b!4525844 () Bool)

(assert (=> b!4525844 (= e!2819886 (contains!13419 lt!1701536 (tuple2!51117 (_1!28852 lt!1701242) (_2!28852 lt!1701242))))))

(assert (= (and d!1395677 res!1884294) b!4525843))

(assert (= (and b!4525843 res!1884295) b!4525844))

(assert (=> d!1395677 m!5277281))

(declare-fun m!5278751 () Bool)

(assert (=> d!1395677 m!5278751))

(declare-fun m!5278753 () Bool)

(assert (=> d!1395677 m!5278753))

(declare-fun m!5278755 () Bool)

(assert (=> b!4525843 m!5278755))

(declare-fun m!5278757 () Bool)

(assert (=> b!4525844 m!5278757))

(assert (=> d!1395153 d!1395677))

(declare-fun b!4525845 () Bool)

(declare-fun e!2819890 () List!50799)

(declare-fun call!315396 () List!50799)

(assert (=> b!4525845 (= e!2819890 call!315396)))

(declare-fun b!4525846 () Bool)

(declare-fun res!1884296 () Bool)

(declare-fun e!2819889 () Bool)

(assert (=> b!4525846 (=> (not res!1884296) (not e!2819889))))

(declare-fun lt!1702093 () List!50799)

(assert (=> b!4525846 (= res!1884296 (containsKey!1810 lt!1702093 (_1!28852 lt!1701242)))))

(declare-fun b!4525847 () Bool)

(declare-fun e!2819891 () List!50799)

(assert (=> b!4525847 (= e!2819891 (insertStrictlySorted!416 (t!357761 (toList!4348 lt!1701251)) (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))

(declare-fun b!4525848 () Bool)

(assert (=> b!4525848 (= e!2819890 call!315396)))

(declare-fun b!4525849 () Bool)

(assert (=> b!4525849 (= e!2819889 (contains!13419 lt!1702093 (tuple2!51117 (_1!28852 lt!1701242) (_2!28852 lt!1701242))))))

(declare-fun bm!315390 () Bool)

(declare-fun call!315394 () List!50799)

(declare-fun call!315395 () List!50799)

(assert (=> bm!315390 (= call!315394 call!315395)))

(declare-fun b!4525850 () Bool)

(declare-fun e!2819887 () List!50799)

(assert (=> b!4525850 (= e!2819887 call!315394)))

(declare-fun b!4525851 () Bool)

(declare-fun e!2819888 () List!50799)

(assert (=> b!4525851 (= e!2819888 e!2819887)))

(declare-fun c!772577 () Bool)

(assert (=> b!4525851 (= c!772577 (and ((_ is Cons!50675) (toList!4348 lt!1701251)) (= (_1!28852 (h!56536 (toList!4348 lt!1701251))) (_1!28852 lt!1701242))))))

(declare-fun b!4525852 () Bool)

(declare-fun c!772576 () Bool)

(assert (=> b!4525852 (= e!2819891 (ite c!772577 (t!357761 (toList!4348 lt!1701251)) (ite c!772576 (Cons!50675 (h!56536 (toList!4348 lt!1701251)) (t!357761 (toList!4348 lt!1701251))) Nil!50675)))))

(declare-fun bm!315389 () Bool)

(declare-fun c!772578 () Bool)

(assert (=> bm!315389 (= call!315395 ($colon$colon!944 e!2819891 (ite c!772578 (h!56536 (toList!4348 lt!1701251)) (tuple2!51117 (_1!28852 lt!1701242) (_2!28852 lt!1701242)))))))

(declare-fun c!772575 () Bool)

(assert (=> bm!315389 (= c!772575 c!772578)))

(declare-fun d!1395679 () Bool)

(assert (=> d!1395679 e!2819889))

(declare-fun res!1884297 () Bool)

(assert (=> d!1395679 (=> (not res!1884297) (not e!2819889))))

(assert (=> d!1395679 (= res!1884297 (isStrictlySorted!439 lt!1702093))))

(assert (=> d!1395679 (= lt!1702093 e!2819888)))

(assert (=> d!1395679 (= c!772578 (and ((_ is Cons!50675) (toList!4348 lt!1701251)) (bvslt (_1!28852 (h!56536 (toList!4348 lt!1701251))) (_1!28852 lt!1701242))))))

(assert (=> d!1395679 (isStrictlySorted!439 (toList!4348 lt!1701251))))

(assert (=> d!1395679 (= (insertStrictlySorted!416 (toList!4348 lt!1701251) (_1!28852 lt!1701242) (_2!28852 lt!1701242)) lt!1702093)))

(declare-fun b!4525853 () Bool)

(assert (=> b!4525853 (= c!772576 (and ((_ is Cons!50675) (toList!4348 lt!1701251)) (bvsgt (_1!28852 (h!56536 (toList!4348 lt!1701251))) (_1!28852 lt!1701242))))))

(assert (=> b!4525853 (= e!2819887 e!2819890)))

(declare-fun b!4525854 () Bool)

(assert (=> b!4525854 (= e!2819888 call!315395)))

(declare-fun bm!315391 () Bool)

(assert (=> bm!315391 (= call!315396 call!315394)))

(assert (= (and d!1395679 c!772578) b!4525854))

(assert (= (and d!1395679 (not c!772578)) b!4525851))

(assert (= (and b!4525851 c!772577) b!4525850))

(assert (= (and b!4525851 (not c!772577)) b!4525853))

(assert (= (and b!4525853 c!772576) b!4525845))

(assert (= (and b!4525853 (not c!772576)) b!4525848))

(assert (= (or b!4525845 b!4525848) bm!315391))

(assert (= (or b!4525850 bm!315391) bm!315390))

(assert (= (or b!4525854 bm!315390) bm!315389))

(assert (= (and bm!315389 c!772575) b!4525847))

(assert (= (and bm!315389 (not c!772575)) b!4525852))

(assert (= (and d!1395679 res!1884297) b!4525846))

(assert (= (and b!4525846 res!1884296) b!4525849))

(declare-fun m!5278759 () Bool)

(assert (=> b!4525847 m!5278759))

(declare-fun m!5278761 () Bool)

(assert (=> b!4525849 m!5278761))

(declare-fun m!5278763 () Bool)

(assert (=> b!4525846 m!5278763))

(declare-fun m!5278765 () Bool)

(assert (=> bm!315389 m!5278765))

(declare-fun m!5278767 () Bool)

(assert (=> d!1395679 m!5278767))

(assert (=> d!1395679 m!5277881))

(assert (=> d!1395153 d!1395679))

(assert (=> b!4525155 d!1395627))

(declare-fun d!1395681 () Bool)

(declare-fun res!1884298 () Bool)

(declare-fun e!2819892 () Bool)

(assert (=> d!1395681 (=> res!1884298 e!2819892)))

(assert (=> d!1395681 (= res!1884298 ((_ is Nil!50674) (toList!4347 lt!1701645)))))

(assert (=> d!1395681 (= (forall!10287 (toList!4347 lt!1701645) lambda!173382) e!2819892)))

(declare-fun b!4525855 () Bool)

(declare-fun e!2819893 () Bool)

(assert (=> b!4525855 (= e!2819892 e!2819893)))

(declare-fun res!1884299 () Bool)

(assert (=> b!4525855 (=> (not res!1884299) (not e!2819893))))

(assert (=> b!4525855 (= res!1884299 (dynLambda!21177 lambda!173382 (h!56535 (toList!4347 lt!1701645))))))

(declare-fun b!4525856 () Bool)

(assert (=> b!4525856 (= e!2819893 (forall!10287 (t!357760 (toList!4347 lt!1701645)) lambda!173382))))

(assert (= (and d!1395681 (not res!1884298)) b!4525855))

(assert (= (and b!4525855 res!1884299) b!4525856))

(declare-fun b_lambda!155713 () Bool)

(assert (=> (not b_lambda!155713) (not b!4525855)))

(declare-fun m!5278769 () Bool)

(assert (=> b!4525855 m!5278769))

(declare-fun m!5278771 () Bool)

(assert (=> b!4525856 m!5278771))

(assert (=> b!4525155 d!1395681))

(declare-fun bs!860907 () Bool)

(declare-fun d!1395683 () Bool)

(assert (= bs!860907 (and d!1395683 b!4525163)))

(declare-fun lambda!173493 () Int)

(assert (=> bs!860907 (= (= lt!1701646 lt!1701256) (= lambda!173493 lambda!173387))))

(declare-fun bs!860908 () Bool)

(assert (= bs!860908 (and d!1395683 b!4525155)))

(assert (=> bs!860908 (= (= lt!1701646 lt!1701249) (= lambda!173493 lambda!173381))))

(declare-fun bs!860909 () Bool)

(assert (= bs!860909 (and d!1395683 b!4525663)))

(assert (=> bs!860909 (= (= lt!1701646 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173493 lambda!173445))))

(declare-fun bs!860910 () Bool)

(assert (= bs!860910 (and d!1395683 b!4525604)))

(assert (=> bs!860910 (= (= lt!1701646 lt!1701911) (= lambda!173493 lambda!173435))))

(assert (=> bs!860909 (= (= lt!1701646 lt!1701946) (= lambda!173493 lambda!173447))))

(declare-fun bs!860911 () Bool)

(assert (= bs!860911 (and d!1395683 d!1395423)))

(assert (=> bs!860911 (= (= lt!1701646 lt!1701860) (= lambda!173493 lambda!173428))))

(declare-fun bs!860912 () Bool)

(assert (= bs!860912 (and d!1395683 d!1395201)))

(assert (=> bs!860912 (= (= lt!1701646 lt!1701649) (= lambda!173493 lambda!173383))))

(declare-fun bs!860913 () Bool)

(assert (= bs!860913 (and d!1395683 b!4525156)))

(assert (=> bs!860913 (= (= lt!1701646 lt!1701249) (= lambda!173493 lambda!173380))))

(declare-fun bs!860914 () Bool)

(assert (= bs!860914 (and d!1395683 b!4525712)))

(assert (=> bs!860914 (= (= lt!1701646 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173493 lambda!173456))))

(declare-fun bs!860915 () Bool)

(assert (= bs!860915 (and d!1395683 b!4525711)))

(assert (=> bs!860915 (= (= lt!1701646 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173493 lambda!173457))))

(assert (=> bs!860910 (= (= lt!1701646 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173493 lambda!173434))))

(declare-fun bs!860916 () Bool)

(assert (= bs!860916 (and d!1395683 d!1395239)))

(assert (=> bs!860916 (= (= lt!1701646 lt!1701673) (= lambda!173493 lambda!173390))))

(declare-fun bs!860917 () Bool)

(assert (= bs!860917 (and d!1395683 b!4524756)))

(assert (=> bs!860917 (not (= lambda!173493 lambda!173267))))

(declare-fun bs!860918 () Bool)

(assert (= bs!860918 (and d!1395683 b!4525559)))

(assert (=> bs!860918 (= (= lt!1701646 lt!1701854) (= lambda!173493 lambda!173427))))

(declare-fun bs!860919 () Bool)

(assert (= bs!860919 (and d!1395683 d!1395453)))

(assert (=> bs!860919 (= (= lt!1701646 lt!1701914) (= lambda!173493 lambda!173437))))

(assert (=> bs!860918 (= (= lt!1701646 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173493 lambda!173426))))

(declare-fun bs!860920 () Bool)

(assert (= bs!860920 (and d!1395683 b!4525162)))

(assert (=> bs!860920 (= (= lt!1701646 lt!1701256) (= lambda!173493 lambda!173388))))

(declare-fun bs!860921 () Bool)

(assert (= bs!860921 (and d!1395683 d!1395611)))

(assert (=> bs!860921 (not (= lambda!173493 lambda!173468))))

(declare-fun bs!860922 () Bool)

(assert (= bs!860922 (and d!1395683 b!4525664)))

(assert (=> bs!860922 (= (= lt!1701646 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173493 lambda!173444))))

(assert (=> bs!860915 (= (= lt!1701646 lt!1701994) (= lambda!173493 lambda!173459))))

(declare-fun bs!860923 () Bool)

(assert (= bs!860923 (and d!1395683 d!1395501)))

(assert (=> bs!860923 (= (= lt!1701646 lt!1701949) (= lambda!173493 lambda!173450))))

(declare-fun bs!860924 () Bool)

(assert (= bs!860924 (and d!1395683 b!4525605)))

(assert (=> bs!860924 (= (= lt!1701646 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173493 lambda!173432))))

(assert (=> bs!860908 (= lambda!173493 lambda!173382)))

(declare-fun bs!860925 () Bool)

(assert (= bs!860925 (and d!1395683 d!1395243)))

(assert (=> bs!860925 (not (= lambda!173493 lambda!173394))))

(assert (=> bs!860920 (= (= lt!1701646 lt!1701670) (= lambda!173493 lambda!173389))))

(declare-fun bs!860926 () Bool)

(assert (= bs!860926 (and d!1395683 d!1395547)))

(assert (=> bs!860926 (= (= lt!1701646 lt!1701997) (= lambda!173493 lambda!173462))))

(declare-fun bs!860927 () Bool)

(assert (= bs!860927 (and d!1395683 b!4525560)))

(assert (=> bs!860927 (= (= lt!1701646 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173493 lambda!173425))))

(assert (=> d!1395683 true))

(assert (=> d!1395683 (forall!10287 (toList!4347 lt!1701249) lambda!173493)))

(declare-fun lt!1702097 () Unit!95830)

(declare-fun choose!29640 (ListMap!3609 ListMap!3609 K!12065 V!12311) Unit!95830)

(assert (=> d!1395683 (= lt!1702097 (choose!29640 lt!1701249 lt!1701646 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395683 (forall!10287 (toList!4347 (+!1558 lt!1701249 (tuple2!51115 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))) lambda!173493)))

(assert (=> d!1395683 (= (addForallContainsKeyThenBeforeAdding!346 lt!1701249 lt!1701646 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))) lt!1702097)))

(declare-fun bs!860933 () Bool)

(assert (= bs!860933 d!1395683))

(declare-fun m!5278817 () Bool)

(assert (=> bs!860933 m!5278817))

(declare-fun m!5278819 () Bool)

(assert (=> bs!860933 m!5278819))

(declare-fun m!5278821 () Bool)

(assert (=> bs!860933 m!5278821))

(declare-fun m!5278823 () Bool)

(assert (=> bs!860933 m!5278823))

(assert (=> b!4525155 d!1395683))

(declare-fun d!1395689 () Bool)

(declare-fun res!1884300 () Bool)

(declare-fun e!2819895 () Bool)

(assert (=> d!1395689 (=> res!1884300 e!2819895)))

(assert (=> d!1395689 (= res!1884300 ((_ is Nil!50674) (_2!28852 lt!1701242)))))

(assert (=> d!1395689 (= (forall!10287 (_2!28852 lt!1701242) lambda!173382) e!2819895)))

(declare-fun b!4525860 () Bool)

(declare-fun e!2819896 () Bool)

(assert (=> b!4525860 (= e!2819895 e!2819896)))

(declare-fun res!1884301 () Bool)

(assert (=> b!4525860 (=> (not res!1884301) (not e!2819896))))

(assert (=> b!4525860 (= res!1884301 (dynLambda!21177 lambda!173382 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun b!4525861 () Bool)

(assert (=> b!4525861 (= e!2819896 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173382))))

(assert (= (and d!1395689 (not res!1884300)) b!4525860))

(assert (= (and b!4525860 res!1884301) b!4525861))

(declare-fun b_lambda!155715 () Bool)

(assert (=> (not b_lambda!155715) (not b!4525860)))

(declare-fun m!5278825 () Bool)

(assert (=> b!4525860 m!5278825))

(assert (=> b!4525861 m!5277483))

(assert (=> b!4525155 d!1395689))

(declare-fun b!4525862 () Bool)

(declare-fun e!2819900 () List!50801)

(assert (=> b!4525862 (= e!2819900 (getKeysList!472 (toList!4347 lt!1701646)))))

(declare-fun b!4525863 () Bool)

(assert (=> b!4525863 false))

(declare-fun lt!1702105 () Unit!95830)

(declare-fun lt!1702103 () Unit!95830)

(assert (=> b!4525863 (= lt!1702105 lt!1702103)))

(assert (=> b!4525863 (containsKey!1808 (toList!4347 lt!1701646) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))

(assert (=> b!4525863 (= lt!1702103 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 lt!1701646) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun e!2819902 () Unit!95830)

(declare-fun Unit!96008 () Unit!95830)

(assert (=> b!4525863 (= e!2819902 Unit!96008)))

(declare-fun b!4525864 () Bool)

(declare-fun e!2819898 () Bool)

(assert (=> b!4525864 (= e!2819898 (contains!13420 (keys!17612 lt!1701646) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun b!4525865 () Bool)

(declare-fun e!2819899 () Bool)

(assert (=> b!4525865 (= e!2819899 e!2819898)))

(declare-fun res!1884304 () Bool)

(assert (=> b!4525865 (=> (not res!1884304) (not e!2819898))))

(assert (=> b!4525865 (= res!1884304 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701646) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4525866 () Bool)

(declare-fun Unit!96009 () Unit!95830)

(assert (=> b!4525866 (= e!2819902 Unit!96009)))

(declare-fun b!4525867 () Bool)

(declare-fun e!2819897 () Unit!95830)

(assert (=> b!4525867 (= e!2819897 e!2819902)))

(declare-fun c!772582 () Bool)

(declare-fun call!315397 () Bool)

(assert (=> b!4525867 (= c!772582 call!315397)))

(declare-fun d!1395691 () Bool)

(assert (=> d!1395691 e!2819899))

(declare-fun res!1884303 () Bool)

(assert (=> d!1395691 (=> res!1884303 e!2819899)))

(declare-fun e!2819901 () Bool)

(assert (=> d!1395691 (= res!1884303 e!2819901)))

(declare-fun res!1884302 () Bool)

(assert (=> d!1395691 (=> (not res!1884302) (not e!2819901))))

(declare-fun lt!1702102 () Bool)

(assert (=> d!1395691 (= res!1884302 (not lt!1702102))))

(declare-fun lt!1702104 () Bool)

(assert (=> d!1395691 (= lt!1702102 lt!1702104)))

(declare-fun lt!1702101 () Unit!95830)

(assert (=> d!1395691 (= lt!1702101 e!2819897)))

(declare-fun c!772580 () Bool)

(assert (=> d!1395691 (= c!772580 lt!1702104)))

(assert (=> d!1395691 (= lt!1702104 (containsKey!1808 (toList!4347 lt!1701646) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395691 (= (contains!13418 lt!1701646 (_1!28851 (h!56535 (_2!28852 lt!1701242)))) lt!1702102)))

(declare-fun b!4525868 () Bool)

(declare-fun lt!1702107 () Unit!95830)

(assert (=> b!4525868 (= e!2819897 lt!1702107)))

(declare-fun lt!1702108 () Unit!95830)

(assert (=> b!4525868 (= lt!1702108 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701646) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4525868 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701646) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702106 () Unit!95830)

(assert (=> b!4525868 (= lt!1702106 lt!1702108)))

(assert (=> b!4525868 (= lt!1702107 (lemmaInListThenGetKeysListContains!468 (toList!4347 lt!1701646) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4525868 call!315397))

(declare-fun b!4525869 () Bool)

(assert (=> b!4525869 (= e!2819901 (not (contains!13420 (keys!17612 lt!1701646) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4525870 () Bool)

(assert (=> b!4525870 (= e!2819900 (keys!17612 lt!1701646))))

(declare-fun bm!315392 () Bool)

(assert (=> bm!315392 (= call!315397 (contains!13420 e!2819900 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun c!772581 () Bool)

(assert (=> bm!315392 (= c!772581 c!772580)))

(assert (= (and d!1395691 c!772580) b!4525868))

(assert (= (and d!1395691 (not c!772580)) b!4525867))

(assert (= (and b!4525867 c!772582) b!4525863))

(assert (= (and b!4525867 (not c!772582)) b!4525866))

(assert (= (or b!4525868 b!4525867) bm!315392))

(assert (= (and bm!315392 c!772581) b!4525862))

(assert (= (and bm!315392 (not c!772581)) b!4525870))

(assert (= (and d!1395691 res!1884302) b!4525869))

(assert (= (and d!1395691 (not res!1884303)) b!4525865))

(assert (= (and b!4525865 res!1884304) b!4525864))

(declare-fun m!5278827 () Bool)

(assert (=> bm!315392 m!5278827))

(declare-fun m!5278829 () Bool)

(assert (=> b!4525865 m!5278829))

(assert (=> b!4525865 m!5278829))

(declare-fun m!5278831 () Bool)

(assert (=> b!4525865 m!5278831))

(declare-fun m!5278833 () Bool)

(assert (=> b!4525862 m!5278833))

(declare-fun m!5278835 () Bool)

(assert (=> b!4525870 m!5278835))

(declare-fun m!5278837 () Bool)

(assert (=> b!4525863 m!5278837))

(declare-fun m!5278839 () Bool)

(assert (=> b!4525863 m!5278839))

(declare-fun m!5278841 () Bool)

(assert (=> b!4525868 m!5278841))

(assert (=> b!4525868 m!5278829))

(assert (=> b!4525868 m!5278829))

(assert (=> b!4525868 m!5278831))

(declare-fun m!5278843 () Bool)

(assert (=> b!4525868 m!5278843))

(assert (=> b!4525864 m!5278835))

(assert (=> b!4525864 m!5278835))

(declare-fun m!5278847 () Bool)

(assert (=> b!4525864 m!5278847))

(assert (=> d!1395691 m!5278837))

(assert (=> b!4525869 m!5278835))

(assert (=> b!4525869 m!5278835))

(assert (=> b!4525869 m!5278847))

(assert (=> b!4525155 d!1395691))

(declare-fun d!1395695 () Bool)

(assert (=> d!1395695 (dynLambda!21177 lambda!173382 (h!56535 (_2!28852 lt!1701242)))))

(declare-fun lt!1702109 () Unit!95830)

(assert (=> d!1395695 (= lt!1702109 (choose!29623 (toList!4347 lt!1701645) lambda!173382 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun e!2819903 () Bool)

(assert (=> d!1395695 e!2819903))

(declare-fun res!1884305 () Bool)

(assert (=> d!1395695 (=> (not res!1884305) (not e!2819903))))

(assert (=> d!1395695 (= res!1884305 (forall!10287 (toList!4347 lt!1701645) lambda!173382))))

(assert (=> d!1395695 (= (forallContained!2539 (toList!4347 lt!1701645) lambda!173382 (h!56535 (_2!28852 lt!1701242))) lt!1702109)))

(declare-fun b!4525871 () Bool)

(assert (=> b!4525871 (= e!2819903 (contains!13423 (toList!4347 lt!1701645) (h!56535 (_2!28852 lt!1701242))))))

(assert (= (and d!1395695 res!1884305) b!4525871))

(declare-fun b_lambda!155717 () Bool)

(assert (=> (not b_lambda!155717) (not d!1395695)))

(assert (=> d!1395695 m!5278825))

(declare-fun m!5278857 () Bool)

(assert (=> d!1395695 m!5278857))

(assert (=> d!1395695 m!5277481))

(declare-fun m!5278859 () Bool)

(assert (=> b!4525871 m!5278859))

(assert (=> b!4525155 d!1395695))

(declare-fun b!4525876 () Bool)

(declare-fun e!2819909 () List!50801)

(assert (=> b!4525876 (= e!2819909 (getKeysList!472 (toList!4347 lt!1701645)))))

(declare-fun b!4525877 () Bool)

(assert (=> b!4525877 false))

(declare-fun lt!1702114 () Unit!95830)

(declare-fun lt!1702112 () Unit!95830)

(assert (=> b!4525877 (= lt!1702114 lt!1702112)))

(assert (=> b!4525877 (containsKey!1808 (toList!4347 lt!1701645) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))

(assert (=> b!4525877 (= lt!1702112 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 lt!1701645) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun e!2819911 () Unit!95830)

(declare-fun Unit!96010 () Unit!95830)

(assert (=> b!4525877 (= e!2819911 Unit!96010)))

(declare-fun b!4525878 () Bool)

(declare-fun e!2819907 () Bool)

(assert (=> b!4525878 (= e!2819907 (contains!13420 (keys!17612 lt!1701645) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun b!4525879 () Bool)

(declare-fun e!2819908 () Bool)

(assert (=> b!4525879 (= e!2819908 e!2819907)))

(declare-fun res!1884308 () Bool)

(assert (=> b!4525879 (=> (not res!1884308) (not e!2819907))))

(assert (=> b!4525879 (= res!1884308 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701645) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4525880 () Bool)

(declare-fun Unit!96011 () Unit!95830)

(assert (=> b!4525880 (= e!2819911 Unit!96011)))

(declare-fun b!4525881 () Bool)

(declare-fun e!2819906 () Unit!95830)

(assert (=> b!4525881 (= e!2819906 e!2819911)))

(declare-fun c!772587 () Bool)

(declare-fun call!315398 () Bool)

(assert (=> b!4525881 (= c!772587 call!315398)))

(declare-fun d!1395701 () Bool)

(assert (=> d!1395701 e!2819908))

(declare-fun res!1884307 () Bool)

(assert (=> d!1395701 (=> res!1884307 e!2819908)))

(declare-fun e!2819910 () Bool)

(assert (=> d!1395701 (= res!1884307 e!2819910)))

(declare-fun res!1884306 () Bool)

(assert (=> d!1395701 (=> (not res!1884306) (not e!2819910))))

(declare-fun lt!1702111 () Bool)

(assert (=> d!1395701 (= res!1884306 (not lt!1702111))))

(declare-fun lt!1702113 () Bool)

(assert (=> d!1395701 (= lt!1702111 lt!1702113)))

(declare-fun lt!1702110 () Unit!95830)

(assert (=> d!1395701 (= lt!1702110 e!2819906)))

(declare-fun c!772585 () Bool)

(assert (=> d!1395701 (= c!772585 lt!1702113)))

(assert (=> d!1395701 (= lt!1702113 (containsKey!1808 (toList!4347 lt!1701645) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395701 (= (contains!13418 lt!1701645 (_1!28851 (h!56535 (_2!28852 lt!1701242)))) lt!1702111)))

(declare-fun b!4525882 () Bool)

(declare-fun lt!1702116 () Unit!95830)

(assert (=> b!4525882 (= e!2819906 lt!1702116)))

(declare-fun lt!1702117 () Unit!95830)

(assert (=> b!4525882 (= lt!1702117 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701645) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4525882 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701645) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702115 () Unit!95830)

(assert (=> b!4525882 (= lt!1702115 lt!1702117)))

(assert (=> b!4525882 (= lt!1702116 (lemmaInListThenGetKeysListContains!468 (toList!4347 lt!1701645) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4525882 call!315398))

(declare-fun b!4525883 () Bool)

(assert (=> b!4525883 (= e!2819910 (not (contains!13420 (keys!17612 lt!1701645) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4525884 () Bool)

(assert (=> b!4525884 (= e!2819909 (keys!17612 lt!1701645))))

(declare-fun bm!315393 () Bool)

(assert (=> bm!315393 (= call!315398 (contains!13420 e!2819909 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun c!772586 () Bool)

(assert (=> bm!315393 (= c!772586 c!772585)))

(assert (= (and d!1395701 c!772585) b!4525882))

(assert (= (and d!1395701 (not c!772585)) b!4525881))

(assert (= (and b!4525881 c!772587) b!4525877))

(assert (= (and b!4525881 (not c!772587)) b!4525880))

(assert (= (or b!4525882 b!4525881) bm!315393))

(assert (= (and bm!315393 c!772586) b!4525876))

(assert (= (and bm!315393 (not c!772586)) b!4525884))

(assert (= (and d!1395701 res!1884306) b!4525883))

(assert (= (and d!1395701 (not res!1884307)) b!4525879))

(assert (= (and b!4525879 res!1884308) b!4525878))

(declare-fun m!5278871 () Bool)

(assert (=> bm!315393 m!5278871))

(declare-fun m!5278873 () Bool)

(assert (=> b!4525879 m!5278873))

(assert (=> b!4525879 m!5278873))

(declare-fun m!5278875 () Bool)

(assert (=> b!4525879 m!5278875))

(declare-fun m!5278877 () Bool)

(assert (=> b!4525876 m!5278877))

(declare-fun m!5278879 () Bool)

(assert (=> b!4525884 m!5278879))

(declare-fun m!5278881 () Bool)

(assert (=> b!4525877 m!5278881))

(declare-fun m!5278883 () Bool)

(assert (=> b!4525877 m!5278883))

(declare-fun m!5278885 () Bool)

(assert (=> b!4525882 m!5278885))

(assert (=> b!4525882 m!5278873))

(assert (=> b!4525882 m!5278873))

(assert (=> b!4525882 m!5278875))

(declare-fun m!5278889 () Bool)

(assert (=> b!4525882 m!5278889))

(assert (=> b!4525878 m!5278879))

(assert (=> b!4525878 m!5278879))

(declare-fun m!5278891 () Bool)

(assert (=> b!4525878 m!5278891))

(assert (=> d!1395701 m!5278881))

(assert (=> b!4525883 m!5278879))

(assert (=> b!4525883 m!5278879))

(assert (=> b!4525883 m!5278891))

(assert (=> b!4525155 d!1395701))

(declare-fun bs!860955 () Bool)

(declare-fun b!4525898 () Bool)

(assert (= bs!860955 (and b!4525898 b!4525163)))

(declare-fun lambda!173497 () Int)

(assert (=> bs!860955 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173497 lambda!173387))))

(declare-fun bs!860956 () Bool)

(assert (= bs!860956 (and b!4525898 b!4525155)))

(assert (=> bs!860956 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173497 lambda!173381))))

(declare-fun bs!860957 () Bool)

(assert (= bs!860957 (and b!4525898 b!4525663)))

(assert (=> bs!860957 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173497 lambda!173445))))

(declare-fun bs!860958 () Bool)

(assert (= bs!860958 (and b!4525898 b!4525604)))

(assert (=> bs!860958 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701911) (= lambda!173497 lambda!173435))))

(assert (=> bs!860957 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701946) (= lambda!173497 lambda!173447))))

(declare-fun bs!860959 () Bool)

(assert (= bs!860959 (and b!4525898 d!1395423)))

(assert (=> bs!860959 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701860) (= lambda!173497 lambda!173428))))

(declare-fun bs!860960 () Bool)

(assert (= bs!860960 (and b!4525898 d!1395201)))

(assert (=> bs!860960 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701649) (= lambda!173497 lambda!173383))))

(declare-fun bs!860961 () Bool)

(assert (= bs!860961 (and b!4525898 b!4525156)))

(assert (=> bs!860961 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173497 lambda!173380))))

(declare-fun bs!860962 () Bool)

(assert (= bs!860962 (and b!4525898 b!4525712)))

(assert (=> bs!860962 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173497 lambda!173456))))

(declare-fun bs!860963 () Bool)

(assert (= bs!860963 (and b!4525898 b!4525711)))

(assert (=> bs!860963 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173497 lambda!173457))))

(assert (=> bs!860958 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173497 lambda!173434))))

(declare-fun bs!860964 () Bool)

(assert (= bs!860964 (and b!4525898 d!1395239)))

(assert (=> bs!860964 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701673) (= lambda!173497 lambda!173390))))

(declare-fun bs!860965 () Bool)

(assert (= bs!860965 (and b!4525898 b!4524756)))

(assert (=> bs!860965 (not (= lambda!173497 lambda!173267))))

(declare-fun bs!860966 () Bool)

(assert (= bs!860966 (and b!4525898 b!4525559)))

(assert (=> bs!860966 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701854) (= lambda!173497 lambda!173427))))

(declare-fun bs!860967 () Bool)

(assert (= bs!860967 (and b!4525898 d!1395453)))

(assert (=> bs!860967 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701914) (= lambda!173497 lambda!173437))))

(assert (=> bs!860966 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173497 lambda!173426))))

(declare-fun bs!860968 () Bool)

(assert (= bs!860968 (and b!4525898 b!4525162)))

(assert (=> bs!860968 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173497 lambda!173388))))

(declare-fun bs!860969 () Bool)

(assert (= bs!860969 (and b!4525898 d!1395611)))

(assert (=> bs!860969 (not (= lambda!173497 lambda!173468))))

(declare-fun bs!860970 () Bool)

(assert (= bs!860970 (and b!4525898 b!4525664)))

(assert (=> bs!860970 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173497 lambda!173444))))

(assert (=> bs!860963 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701994) (= lambda!173497 lambda!173459))))

(declare-fun bs!860971 () Bool)

(assert (= bs!860971 (and b!4525898 d!1395501)))

(assert (=> bs!860971 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701949) (= lambda!173497 lambda!173450))))

(declare-fun bs!860972 () Bool)

(assert (= bs!860972 (and b!4525898 b!4525605)))

(assert (=> bs!860972 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173497 lambda!173432))))

(assert (=> bs!860956 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701646) (= lambda!173497 lambda!173382))))

(declare-fun bs!860973 () Bool)

(assert (= bs!860973 (and b!4525898 d!1395243)))

(assert (=> bs!860973 (not (= lambda!173497 lambda!173394))))

(assert (=> bs!860968 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701670) (= lambda!173497 lambda!173389))))

(declare-fun bs!860974 () Bool)

(assert (= bs!860974 (and b!4525898 d!1395547)))

(assert (=> bs!860974 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701997) (= lambda!173497 lambda!173462))))

(declare-fun bs!860975 () Bool)

(assert (= bs!860975 (and b!4525898 b!4525560)))

(assert (=> bs!860975 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173497 lambda!173425))))

(declare-fun bs!860976 () Bool)

(assert (= bs!860976 (and b!4525898 d!1395683)))

(assert (=> bs!860976 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701646) (= lambda!173497 lambda!173493))))

(assert (=> b!4525898 true))

(declare-fun bs!860977 () Bool)

(declare-fun b!4525897 () Bool)

(assert (= bs!860977 (and b!4525897 b!4525163)))

(declare-fun lambda!173498 () Int)

(assert (=> bs!860977 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173498 lambda!173387))))

(declare-fun bs!860978 () Bool)

(assert (= bs!860978 (and b!4525897 b!4525155)))

(assert (=> bs!860978 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173498 lambda!173381))))

(declare-fun bs!860979 () Bool)

(assert (= bs!860979 (and b!4525897 b!4525663)))

(assert (=> bs!860979 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173498 lambda!173445))))

(declare-fun bs!860980 () Bool)

(assert (= bs!860980 (and b!4525897 b!4525604)))

(assert (=> bs!860980 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701911) (= lambda!173498 lambda!173435))))

(assert (=> bs!860979 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701946) (= lambda!173498 lambda!173447))))

(declare-fun bs!860981 () Bool)

(assert (= bs!860981 (and b!4525897 d!1395423)))

(assert (=> bs!860981 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701860) (= lambda!173498 lambda!173428))))

(declare-fun bs!860982 () Bool)

(assert (= bs!860982 (and b!4525897 d!1395201)))

(assert (=> bs!860982 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701649) (= lambda!173498 lambda!173383))))

(declare-fun bs!860983 () Bool)

(assert (= bs!860983 (and b!4525897 b!4525156)))

(assert (=> bs!860983 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173498 lambda!173380))))

(declare-fun bs!860984 () Bool)

(assert (= bs!860984 (and b!4525897 b!4525712)))

(assert (=> bs!860984 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173498 lambda!173456))))

(declare-fun bs!860985 () Bool)

(assert (= bs!860985 (and b!4525897 b!4525711)))

(assert (=> bs!860985 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173498 lambda!173457))))

(assert (=> bs!860980 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173498 lambda!173434))))

(declare-fun bs!860986 () Bool)

(assert (= bs!860986 (and b!4525897 b!4525898)))

(assert (=> bs!860986 (= lambda!173498 lambda!173497)))

(declare-fun bs!860987 () Bool)

(assert (= bs!860987 (and b!4525897 d!1395239)))

(assert (=> bs!860987 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701673) (= lambda!173498 lambda!173390))))

(declare-fun bs!860988 () Bool)

(assert (= bs!860988 (and b!4525897 b!4524756)))

(assert (=> bs!860988 (not (= lambda!173498 lambda!173267))))

(declare-fun bs!860989 () Bool)

(assert (= bs!860989 (and b!4525897 b!4525559)))

(assert (=> bs!860989 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701854) (= lambda!173498 lambda!173427))))

(declare-fun bs!860990 () Bool)

(assert (= bs!860990 (and b!4525897 d!1395453)))

(assert (=> bs!860990 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701914) (= lambda!173498 lambda!173437))))

(assert (=> bs!860989 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173498 lambda!173426))))

(declare-fun bs!860991 () Bool)

(assert (= bs!860991 (and b!4525897 b!4525162)))

(assert (=> bs!860991 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173498 lambda!173388))))

(declare-fun bs!860992 () Bool)

(assert (= bs!860992 (and b!4525897 d!1395611)))

(assert (=> bs!860992 (not (= lambda!173498 lambda!173468))))

(declare-fun bs!860993 () Bool)

(assert (= bs!860993 (and b!4525897 b!4525664)))

(assert (=> bs!860993 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173498 lambda!173444))))

(assert (=> bs!860985 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701994) (= lambda!173498 lambda!173459))))

(declare-fun bs!860994 () Bool)

(assert (= bs!860994 (and b!4525897 d!1395501)))

(assert (=> bs!860994 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701949) (= lambda!173498 lambda!173450))))

(declare-fun bs!860995 () Bool)

(assert (= bs!860995 (and b!4525897 b!4525605)))

(assert (=> bs!860995 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173498 lambda!173432))))

(assert (=> bs!860978 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701646) (= lambda!173498 lambda!173382))))

(declare-fun bs!860996 () Bool)

(assert (= bs!860996 (and b!4525897 d!1395243)))

(assert (=> bs!860996 (not (= lambda!173498 lambda!173394))))

(assert (=> bs!860991 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701670) (= lambda!173498 lambda!173389))))

(declare-fun bs!860997 () Bool)

(assert (= bs!860997 (and b!4525897 d!1395547)))

(assert (=> bs!860997 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701997) (= lambda!173498 lambda!173462))))

(declare-fun bs!860998 () Bool)

(assert (= bs!860998 (and b!4525897 b!4525560)))

(assert (=> bs!860998 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173498 lambda!173425))))

(declare-fun bs!860999 () Bool)

(assert (= bs!860999 (and b!4525897 d!1395683)))

(assert (=> bs!860999 (= (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1701646) (= lambda!173498 lambda!173493))))

(assert (=> b!4525897 true))

(declare-fun lambda!173499 () Int)

(declare-fun lt!1702135 () ListMap!3609)

(assert (=> bs!860977 (= (= lt!1702135 lt!1701256) (= lambda!173499 lambda!173387))))

(assert (=> bs!860978 (= (= lt!1702135 lt!1701249) (= lambda!173499 lambda!173381))))

(assert (=> bs!860979 (= (= lt!1702135 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173499 lambda!173445))))

(assert (=> bs!860980 (= (= lt!1702135 lt!1701911) (= lambda!173499 lambda!173435))))

(assert (=> bs!860979 (= (= lt!1702135 lt!1701946) (= lambda!173499 lambda!173447))))

(assert (=> bs!860981 (= (= lt!1702135 lt!1701860) (= lambda!173499 lambda!173428))))

(assert (=> bs!860982 (= (= lt!1702135 lt!1701649) (= lambda!173499 lambda!173383))))

(assert (=> bs!860983 (= (= lt!1702135 lt!1701249) (= lambda!173499 lambda!173380))))

(assert (=> bs!860984 (= (= lt!1702135 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173499 lambda!173456))))

(assert (=> bs!860985 (= (= lt!1702135 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173499 lambda!173457))))

(assert (=> b!4525897 (= (= lt!1702135 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173499 lambda!173498))))

(assert (=> bs!860980 (= (= lt!1702135 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173499 lambda!173434))))

(assert (=> bs!860986 (= (= lt!1702135 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173499 lambda!173497))))

(assert (=> bs!860987 (= (= lt!1702135 lt!1701673) (= lambda!173499 lambda!173390))))

(assert (=> bs!860988 (not (= lambda!173499 lambda!173267))))

(assert (=> bs!860989 (= (= lt!1702135 lt!1701854) (= lambda!173499 lambda!173427))))

(assert (=> bs!860990 (= (= lt!1702135 lt!1701914) (= lambda!173499 lambda!173437))))

(assert (=> bs!860989 (= (= lt!1702135 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173499 lambda!173426))))

(assert (=> bs!860991 (= (= lt!1702135 lt!1701256) (= lambda!173499 lambda!173388))))

(assert (=> bs!860992 (not (= lambda!173499 lambda!173468))))

(assert (=> bs!860993 (= (= lt!1702135 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173499 lambda!173444))))

(assert (=> bs!860985 (= (= lt!1702135 lt!1701994) (= lambda!173499 lambda!173459))))

(assert (=> bs!860994 (= (= lt!1702135 lt!1701949) (= lambda!173499 lambda!173450))))

(assert (=> bs!860995 (= (= lt!1702135 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173499 lambda!173432))))

(assert (=> bs!860978 (= (= lt!1702135 lt!1701646) (= lambda!173499 lambda!173382))))

(assert (=> bs!860996 (not (= lambda!173499 lambda!173394))))

(assert (=> bs!860991 (= (= lt!1702135 lt!1701670) (= lambda!173499 lambda!173389))))

(assert (=> bs!860997 (= (= lt!1702135 lt!1701997) (= lambda!173499 lambda!173462))))

(assert (=> bs!860998 (= (= lt!1702135 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173499 lambda!173425))))

(assert (=> bs!860999 (= (= lt!1702135 lt!1701646) (= lambda!173499 lambda!173493))))

(assert (=> b!4525897 true))

(declare-fun bs!861025 () Bool)

(declare-fun d!1395709 () Bool)

(assert (= bs!861025 (and d!1395709 b!4525163)))

(declare-fun lt!1702138 () ListMap!3609)

(declare-fun lambda!173504 () Int)

(assert (=> bs!861025 (= (= lt!1702138 lt!1701256) (= lambda!173504 lambda!173387))))

(declare-fun bs!861026 () Bool)

(assert (= bs!861026 (and d!1395709 b!4525155)))

(assert (=> bs!861026 (= (= lt!1702138 lt!1701249) (= lambda!173504 lambda!173381))))

(declare-fun bs!861027 () Bool)

(assert (= bs!861027 (and d!1395709 b!4525663)))

(assert (=> bs!861027 (= (= lt!1702138 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173504 lambda!173445))))

(declare-fun bs!861028 () Bool)

(assert (= bs!861028 (and d!1395709 b!4525604)))

(assert (=> bs!861028 (= (= lt!1702138 lt!1701911) (= lambda!173504 lambda!173435))))

(assert (=> bs!861027 (= (= lt!1702138 lt!1701946) (= lambda!173504 lambda!173447))))

(declare-fun bs!861029 () Bool)

(assert (= bs!861029 (and d!1395709 d!1395423)))

(assert (=> bs!861029 (= (= lt!1702138 lt!1701860) (= lambda!173504 lambda!173428))))

(declare-fun bs!861030 () Bool)

(assert (= bs!861030 (and d!1395709 d!1395201)))

(assert (=> bs!861030 (= (= lt!1702138 lt!1701649) (= lambda!173504 lambda!173383))))

(declare-fun bs!861031 () Bool)

(assert (= bs!861031 (and d!1395709 b!4525156)))

(assert (=> bs!861031 (= (= lt!1702138 lt!1701249) (= lambda!173504 lambda!173380))))

(declare-fun bs!861032 () Bool)

(assert (= bs!861032 (and d!1395709 b!4525712)))

(assert (=> bs!861032 (= (= lt!1702138 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173504 lambda!173456))))

(declare-fun bs!861033 () Bool)

(assert (= bs!861033 (and d!1395709 b!4525711)))

(assert (=> bs!861033 (= (= lt!1702138 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173504 lambda!173457))))

(declare-fun bs!861034 () Bool)

(assert (= bs!861034 (and d!1395709 b!4525897)))

(assert (=> bs!861034 (= (= lt!1702138 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173504 lambda!173498))))

(assert (=> bs!861028 (= (= lt!1702138 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173504 lambda!173434))))

(declare-fun bs!861035 () Bool)

(assert (= bs!861035 (and d!1395709 b!4525898)))

(assert (=> bs!861035 (= (= lt!1702138 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173504 lambda!173497))))

(declare-fun bs!861036 () Bool)

(assert (= bs!861036 (and d!1395709 d!1395239)))

(assert (=> bs!861036 (= (= lt!1702138 lt!1701673) (= lambda!173504 lambda!173390))))

(declare-fun bs!861037 () Bool)

(assert (= bs!861037 (and d!1395709 b!4524756)))

(assert (=> bs!861037 (not (= lambda!173504 lambda!173267))))

(declare-fun bs!861038 () Bool)

(assert (= bs!861038 (and d!1395709 b!4525559)))

(assert (=> bs!861038 (= (= lt!1702138 lt!1701854) (= lambda!173504 lambda!173427))))

(declare-fun bs!861039 () Bool)

(assert (= bs!861039 (and d!1395709 d!1395453)))

(assert (=> bs!861039 (= (= lt!1702138 lt!1701914) (= lambda!173504 lambda!173437))))

(assert (=> bs!861034 (= (= lt!1702138 lt!1702135) (= lambda!173504 lambda!173499))))

(assert (=> bs!861038 (= (= lt!1702138 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173504 lambda!173426))))

(declare-fun bs!861040 () Bool)

(assert (= bs!861040 (and d!1395709 b!4525162)))

(assert (=> bs!861040 (= (= lt!1702138 lt!1701256) (= lambda!173504 lambda!173388))))

(declare-fun bs!861041 () Bool)

(assert (= bs!861041 (and d!1395709 d!1395611)))

(assert (=> bs!861041 (not (= lambda!173504 lambda!173468))))

(declare-fun bs!861042 () Bool)

(assert (= bs!861042 (and d!1395709 b!4525664)))

(assert (=> bs!861042 (= (= lt!1702138 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173504 lambda!173444))))

(assert (=> bs!861033 (= (= lt!1702138 lt!1701994) (= lambda!173504 lambda!173459))))

(declare-fun bs!861043 () Bool)

(assert (= bs!861043 (and d!1395709 d!1395501)))

(assert (=> bs!861043 (= (= lt!1702138 lt!1701949) (= lambda!173504 lambda!173450))))

(declare-fun bs!861044 () Bool)

(assert (= bs!861044 (and d!1395709 b!4525605)))

(assert (=> bs!861044 (= (= lt!1702138 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173504 lambda!173432))))

(assert (=> bs!861026 (= (= lt!1702138 lt!1701646) (= lambda!173504 lambda!173382))))

(declare-fun bs!861045 () Bool)

(assert (= bs!861045 (and d!1395709 d!1395243)))

(assert (=> bs!861045 (not (= lambda!173504 lambda!173394))))

(assert (=> bs!861040 (= (= lt!1702138 lt!1701670) (= lambda!173504 lambda!173389))))

(declare-fun bs!861046 () Bool)

(assert (= bs!861046 (and d!1395709 d!1395547)))

(assert (=> bs!861046 (= (= lt!1702138 lt!1701997) (= lambda!173504 lambda!173462))))

(declare-fun bs!861047 () Bool)

(assert (= bs!861047 (and d!1395709 b!4525560)))

(assert (=> bs!861047 (= (= lt!1702138 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173504 lambda!173425))))

(declare-fun bs!861048 () Bool)

(assert (= bs!861048 (and d!1395709 d!1395683)))

(assert (=> bs!861048 (= (= lt!1702138 lt!1701646) (= lambda!173504 lambda!173493))))

(assert (=> d!1395709 true))

(declare-fun bm!315394 () Bool)

(declare-fun c!772591 () Bool)

(declare-fun call!315401 () Bool)

(assert (=> bm!315394 (= call!315401 (forall!10287 (toList!4347 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (ite c!772591 lambda!173497 lambda!173498)))))

(declare-fun b!4525894 () Bool)

(declare-fun e!2819919 () Bool)

(assert (=> b!4525894 (= e!2819919 (forall!10287 (toList!4347 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) lambda!173499))))

(declare-fun bm!315395 () Bool)

(declare-fun call!315399 () Unit!95830)

(assert (=> bm!315395 (= call!315399 (lemmaContainsAllItsOwnKeys!346 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702134 () ListMap!3609)

(declare-fun call!315400 () Bool)

(declare-fun bm!315396 () Bool)

(assert (=> bm!315396 (= call!315400 (forall!10287 (ite c!772591 (toList!4347 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (toList!4347 lt!1702134)) (ite c!772591 lambda!173497 lambda!173499)))))

(declare-fun b!4525895 () Bool)

(declare-fun res!1884312 () Bool)

(declare-fun e!2819918 () Bool)

(assert (=> b!4525895 (=> (not res!1884312) (not e!2819918))))

(assert (=> b!4525895 (= res!1884312 (forall!10287 (toList!4347 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) lambda!173504))))

(declare-fun b!4525896 () Bool)

(assert (=> b!4525896 (= e!2819918 (invariantList!1025 (toList!4347 lt!1702138)))))

(declare-fun e!2819917 () ListMap!3609)

(assert (=> b!4525897 (= e!2819917 lt!1702135)))

(assert (=> b!4525897 (= lt!1702134 (+!1558 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(assert (=> b!4525897 (= lt!1702135 (addToMapMapFromBucket!697 (t!357760 (t!357760 (_2!28852 lt!1701242))) (+!1558 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) (h!56535 (t!357760 (_2!28852 lt!1701242))))))))

(declare-fun lt!1702132 () Unit!95830)

(assert (=> b!4525897 (= lt!1702132 call!315399)))

(assert (=> b!4525897 call!315401))

(declare-fun lt!1702143 () Unit!95830)

(assert (=> b!4525897 (= lt!1702143 lt!1702132)))

(assert (=> b!4525897 call!315400))

(declare-fun lt!1702142 () Unit!95830)

(declare-fun Unit!96023 () Unit!95830)

(assert (=> b!4525897 (= lt!1702142 Unit!96023)))

(assert (=> b!4525897 (forall!10287 (t!357760 (t!357760 (_2!28852 lt!1701242))) lambda!173499)))

(declare-fun lt!1702130 () Unit!95830)

(declare-fun Unit!96024 () Unit!95830)

(assert (=> b!4525897 (= lt!1702130 Unit!96024)))

(declare-fun lt!1702141 () Unit!95830)

(declare-fun Unit!96025 () Unit!95830)

(assert (=> b!4525897 (= lt!1702141 Unit!96025)))

(declare-fun lt!1702129 () Unit!95830)

(assert (=> b!4525897 (= lt!1702129 (forallContained!2539 (toList!4347 lt!1702134) lambda!173499 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(assert (=> b!4525897 (contains!13418 lt!1702134 (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702124 () Unit!95830)

(declare-fun Unit!96026 () Unit!95830)

(assert (=> b!4525897 (= lt!1702124 Unit!96026)))

(assert (=> b!4525897 (contains!13418 lt!1702135 (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702126 () Unit!95830)

(declare-fun Unit!96027 () Unit!95830)

(assert (=> b!4525897 (= lt!1702126 Unit!96027)))

(assert (=> b!4525897 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173499)))

(declare-fun lt!1702127 () Unit!95830)

(declare-fun Unit!96028 () Unit!95830)

(assert (=> b!4525897 (= lt!1702127 Unit!96028)))

(assert (=> b!4525897 (forall!10287 (toList!4347 lt!1702134) lambda!173499)))

(declare-fun lt!1702131 () Unit!95830)

(declare-fun Unit!96029 () Unit!95830)

(assert (=> b!4525897 (= lt!1702131 Unit!96029)))

(declare-fun lt!1702128 () Unit!95830)

(declare-fun Unit!96030 () Unit!95830)

(assert (=> b!4525897 (= lt!1702128 Unit!96030)))

(declare-fun lt!1702137 () Unit!95830)

(assert (=> b!4525897 (= lt!1702137 (addForallContainsKeyThenBeforeAdding!346 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1702135 (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))) (_2!28851 (h!56535 (t!357760 (_2!28852 lt!1701242))))))))

(assert (=> b!4525897 (forall!10287 (toList!4347 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) lambda!173499)))

(declare-fun lt!1702140 () Unit!95830)

(assert (=> b!4525897 (= lt!1702140 lt!1702137)))

(assert (=> b!4525897 (forall!10287 (toList!4347 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) lambda!173499)))

(declare-fun lt!1702136 () Unit!95830)

(declare-fun Unit!96031 () Unit!95830)

(assert (=> b!4525897 (= lt!1702136 Unit!96031)))

(declare-fun res!1884313 () Bool)

(assert (=> b!4525897 (= res!1884313 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173499))))

(assert (=> b!4525897 (=> (not res!1884313) (not e!2819919))))

(assert (=> b!4525897 e!2819919))

(declare-fun lt!1702133 () Unit!95830)

(declare-fun Unit!96032 () Unit!95830)

(assert (=> b!4525897 (= lt!1702133 Unit!96032)))

(assert (=> b!4525898 (= e!2819917 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun lt!1702125 () Unit!95830)

(assert (=> b!4525898 (= lt!1702125 call!315399)))

(assert (=> b!4525898 call!315400))

(declare-fun lt!1702139 () Unit!95830)

(assert (=> b!4525898 (= lt!1702139 lt!1702125)))

(assert (=> b!4525898 call!315401))

(declare-fun lt!1702123 () Unit!95830)

(declare-fun Unit!96033 () Unit!95830)

(assert (=> b!4525898 (= lt!1702123 Unit!96033)))

(assert (=> d!1395709 e!2819918))

(declare-fun res!1884314 () Bool)

(assert (=> d!1395709 (=> (not res!1884314) (not e!2819918))))

(assert (=> d!1395709 (= res!1884314 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173504))))

(assert (=> d!1395709 (= lt!1702138 e!2819917)))

(assert (=> d!1395709 (= c!772591 ((_ is Nil!50674) (t!357760 (_2!28852 lt!1701242))))))

(assert (=> d!1395709 (noDuplicateKeys!1170 (t!357760 (_2!28852 lt!1701242)))))

(assert (=> d!1395709 (= (addToMapMapFromBucket!697 (t!357760 (_2!28852 lt!1701242)) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) lt!1702138)))

(assert (= (and d!1395709 c!772591) b!4525898))

(assert (= (and d!1395709 (not c!772591)) b!4525897))

(assert (= (and b!4525897 res!1884313) b!4525894))

(assert (= (or b!4525898 b!4525897) bm!315394))

(assert (= (or b!4525898 b!4525897) bm!315396))

(assert (= (or b!4525898 b!4525897) bm!315395))

(assert (= (and d!1395709 res!1884314) b!4525895))

(assert (= (and b!4525895 res!1884312) b!4525896))

(declare-fun m!5278971 () Bool)

(assert (=> b!4525896 m!5278971))

(declare-fun m!5278975 () Bool)

(assert (=> b!4525897 m!5278975))

(declare-fun m!5278977 () Bool)

(assert (=> b!4525897 m!5278977))

(declare-fun m!5278979 () Bool)

(assert (=> b!4525897 m!5278979))

(assert (=> b!4525897 m!5277475))

(declare-fun m!5278981 () Bool)

(assert (=> b!4525897 m!5278981))

(declare-fun m!5278983 () Bool)

(assert (=> b!4525897 m!5278983))

(assert (=> b!4525897 m!5278983))

(declare-fun m!5278985 () Bool)

(assert (=> b!4525897 m!5278985))

(declare-fun m!5278987 () Bool)

(assert (=> b!4525897 m!5278987))

(declare-fun m!5278991 () Bool)

(assert (=> b!4525897 m!5278991))

(assert (=> b!4525897 m!5277475))

(declare-fun m!5278993 () Bool)

(assert (=> b!4525897 m!5278993))

(assert (=> b!4525897 m!5278975))

(assert (=> b!4525897 m!5278981))

(declare-fun m!5278995 () Bool)

(assert (=> b!4525897 m!5278995))

(declare-fun m!5278997 () Bool)

(assert (=> bm!315394 m!5278997))

(assert (=> b!4525894 m!5278983))

(assert (=> bm!315395 m!5277475))

(declare-fun m!5279001 () Bool)

(assert (=> bm!315395 m!5279001))

(declare-fun m!5279003 () Bool)

(assert (=> bm!315396 m!5279003))

(declare-fun m!5279005 () Bool)

(assert (=> d!1395709 m!5279005))

(assert (=> d!1395709 m!5276811))

(declare-fun m!5279007 () Bool)

(assert (=> b!4525895 m!5279007))

(assert (=> b!4525155 d!1395709))

(declare-fun d!1395747 () Bool)

(declare-fun e!2819971 () Bool)

(assert (=> d!1395747 e!2819971))

(declare-fun res!1884360 () Bool)

(assert (=> d!1395747 (=> (not res!1884360) (not e!2819971))))

(declare-fun lt!1702174 () ListMap!3609)

(assert (=> d!1395747 (= res!1884360 (contains!13418 lt!1702174 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702173 () List!50798)

(assert (=> d!1395747 (= lt!1702174 (ListMap!3610 lt!1702173))))

(declare-fun lt!1702171 () Unit!95830)

(declare-fun lt!1702172 () Unit!95830)

(assert (=> d!1395747 (= lt!1702171 lt!1702172)))

(assert (=> d!1395747 (= (getValueByKey!1107 lt!1702173 (_1!28851 (h!56535 (_2!28852 lt!1701242)))) (Some!11134 (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!692 (List!50798 K!12065 V!12311) Unit!95830)

(assert (=> d!1395747 (= lt!1702172 (lemmaContainsTupThenGetReturnValue!692 lt!1702173 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun insertNoDuplicatedKeys!284 (List!50798 K!12065 V!12311) List!50798)

(assert (=> d!1395747 (= lt!1702173 (insertNoDuplicatedKeys!284 (toList!4347 lt!1701249) (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395747 (= (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242))) lt!1702174)))

(declare-fun b!4525968 () Bool)

(declare-fun res!1884361 () Bool)

(assert (=> b!4525968 (=> (not res!1884361) (not e!2819971))))

(assert (=> b!4525968 (= res!1884361 (= (getValueByKey!1107 (toList!4347 lt!1702174) (_1!28851 (h!56535 (_2!28852 lt!1701242)))) (Some!11134 (_2!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4525969 () Bool)

(assert (=> b!4525969 (= e!2819971 (contains!13423 (toList!4347 lt!1702174) (h!56535 (_2!28852 lt!1701242))))))

(assert (= (and d!1395747 res!1884360) b!4525968))

(assert (= (and b!4525968 res!1884361) b!4525969))

(declare-fun m!5279065 () Bool)

(assert (=> d!1395747 m!5279065))

(declare-fun m!5279067 () Bool)

(assert (=> d!1395747 m!5279067))

(declare-fun m!5279069 () Bool)

(assert (=> d!1395747 m!5279069))

(declare-fun m!5279071 () Bool)

(assert (=> d!1395747 m!5279071))

(declare-fun m!5279073 () Bool)

(assert (=> b!4525968 m!5279073))

(declare-fun m!5279075 () Bool)

(assert (=> b!4525969 m!5279075))

(assert (=> b!4525155 d!1395747))

(declare-fun d!1395769 () Bool)

(declare-fun res!1884362 () Bool)

(declare-fun e!2819972 () Bool)

(assert (=> d!1395769 (=> res!1884362 e!2819972)))

(assert (=> d!1395769 (= res!1884362 ((_ is Nil!50674) (t!357760 (_2!28852 lt!1701242))))))

(assert (=> d!1395769 (= (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173382) e!2819972)))

(declare-fun b!4525970 () Bool)

(declare-fun e!2819973 () Bool)

(assert (=> b!4525970 (= e!2819972 e!2819973)))

(declare-fun res!1884363 () Bool)

(assert (=> b!4525970 (=> (not res!1884363) (not e!2819973))))

(assert (=> b!4525970 (= res!1884363 (dynLambda!21177 lambda!173382 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(declare-fun b!4525971 () Bool)

(assert (=> b!4525971 (= e!2819973 (forall!10287 (t!357760 (t!357760 (_2!28852 lt!1701242))) lambda!173382))))

(assert (= (and d!1395769 (not res!1884362)) b!4525970))

(assert (= (and b!4525970 res!1884363) b!4525971))

(declare-fun b_lambda!155731 () Bool)

(assert (=> (not b_lambda!155731) (not b!4525970)))

(declare-fun m!5279077 () Bool)

(assert (=> b!4525970 m!5279077))

(declare-fun m!5279079 () Bool)

(assert (=> b!4525971 m!5279079))

(assert (=> b!4525155 d!1395769))

(assert (=> d!1395049 d!1395439))

(declare-fun d!1395771 () Bool)

(assert (=> d!1395771 (isDefined!8424 (getValueByKey!1109 (toList!4348 lm!1477) lt!1701244))))

(declare-fun lt!1702175 () Unit!95830)

(assert (=> d!1395771 (= lt!1702175 (choose!29638 (toList!4348 lm!1477) lt!1701244))))

(declare-fun e!2819974 () Bool)

(assert (=> d!1395771 e!2819974))

(declare-fun res!1884364 () Bool)

(assert (=> d!1395771 (=> (not res!1884364) (not e!2819974))))

(assert (=> d!1395771 (= res!1884364 (isStrictlySorted!439 (toList!4348 lm!1477)))))

(assert (=> d!1395771 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (toList!4348 lm!1477) lt!1701244) lt!1702175)))

(declare-fun b!4525972 () Bool)

(assert (=> b!4525972 (= e!2819974 (containsKey!1810 (toList!4348 lm!1477) lt!1701244))))

(assert (= (and d!1395771 res!1884364) b!4525972))

(assert (=> d!1395771 m!5277563))

(assert (=> d!1395771 m!5277563))

(assert (=> d!1395771 m!5277565))

(declare-fun m!5279081 () Bool)

(assert (=> d!1395771 m!5279081))

(assert (=> d!1395771 m!5276799))

(assert (=> b!4525972 m!5277559))

(assert (=> b!4525168 d!1395771))

(assert (=> b!4525168 d!1395481))

(assert (=> b!4525168 d!1395483))

(declare-fun b!4525973 () Bool)

(declare-fun e!2819975 () Option!11133)

(assert (=> b!4525973 (= e!2819975 None!11132)))

(declare-fun b!4525974 () Bool)

(declare-fun res!1884367 () Bool)

(declare-fun e!2819977 () Bool)

(assert (=> b!4525974 (=> (not res!1884367) (not e!2819977))))

(declare-fun lt!1702176 () Option!11133)

(assert (=> b!4525974 (= res!1884367 (= (_1!28851 (get!16611 lt!1702176)) key!3287))))

(declare-fun b!4525975 () Bool)

(assert (=> b!4525975 (= e!2819977 (contains!13423 (t!357760 (_2!28852 lt!1701242)) (get!16611 lt!1702176)))))

(declare-fun b!4525977 () Bool)

(declare-fun e!2819979 () Bool)

(assert (=> b!4525977 (= e!2819979 e!2819977)))

(declare-fun res!1884365 () Bool)

(assert (=> b!4525977 (=> (not res!1884365) (not e!2819977))))

(assert (=> b!4525977 (= res!1884365 (isDefined!8423 lt!1702176))))

(declare-fun b!4525978 () Bool)

(assert (=> b!4525978 (= e!2819975 (getPair!186 (t!357760 (t!357760 (_2!28852 lt!1701242))) key!3287))))

(declare-fun b!4525979 () Bool)

(declare-fun e!2819978 () Bool)

(assert (=> b!4525979 (= e!2819978 (not (containsKey!1806 (t!357760 (_2!28852 lt!1701242)) key!3287)))))

(declare-fun b!4525980 () Bool)

(declare-fun e!2819976 () Option!11133)

(assert (=> b!4525980 (= e!2819976 (Some!11132 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(declare-fun d!1395773 () Bool)

(assert (=> d!1395773 e!2819979))

(declare-fun res!1884368 () Bool)

(assert (=> d!1395773 (=> res!1884368 e!2819979)))

(assert (=> d!1395773 (= res!1884368 e!2819978)))

(declare-fun res!1884366 () Bool)

(assert (=> d!1395773 (=> (not res!1884366) (not e!2819978))))

(assert (=> d!1395773 (= res!1884366 (isEmpty!28689 lt!1702176))))

(assert (=> d!1395773 (= lt!1702176 e!2819976)))

(declare-fun c!772604 () Bool)

(assert (=> d!1395773 (= c!772604 (and ((_ is Cons!50674) (t!357760 (_2!28852 lt!1701242))) (= (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))) key!3287)))))

(assert (=> d!1395773 (noDuplicateKeys!1170 (t!357760 (_2!28852 lt!1701242)))))

(assert (=> d!1395773 (= (getPair!186 (t!357760 (_2!28852 lt!1701242)) key!3287) lt!1702176)))

(declare-fun b!4525976 () Bool)

(assert (=> b!4525976 (= e!2819976 e!2819975)))

(declare-fun c!772605 () Bool)

(assert (=> b!4525976 (= c!772605 ((_ is Cons!50674) (t!357760 (_2!28852 lt!1701242))))))

(assert (= (and d!1395773 c!772604) b!4525980))

(assert (= (and d!1395773 (not c!772604)) b!4525976))

(assert (= (and b!4525976 c!772605) b!4525978))

(assert (= (and b!4525976 (not c!772605)) b!4525973))

(assert (= (and d!1395773 res!1884366) b!4525979))

(assert (= (and d!1395773 (not res!1884368)) b!4525977))

(assert (= (and b!4525977 res!1884365) b!4525974))

(assert (= (and b!4525974 res!1884367) b!4525975))

(declare-fun m!5279083 () Bool)

(assert (=> d!1395773 m!5279083))

(assert (=> d!1395773 m!5276811))

(declare-fun m!5279085 () Bool)

(assert (=> b!4525977 m!5279085))

(assert (=> b!4525979 m!5277295))

(declare-fun m!5279087 () Bool)

(assert (=> b!4525975 m!5279087))

(assert (=> b!4525975 m!5279087))

(declare-fun m!5279089 () Bool)

(assert (=> b!4525975 m!5279089))

(assert (=> b!4525974 m!5279087))

(declare-fun m!5279091 () Bool)

(assert (=> b!4525978 m!5279091))

(assert (=> b!4525049 d!1395773))

(declare-fun bs!861054 () Bool)

(declare-fun d!1395775 () Bool)

(assert (= bs!861054 (and d!1395775 b!4525163)))

(declare-fun lambda!173507 () Int)

(assert (=> bs!861054 (= lambda!173507 lambda!173387)))

(declare-fun bs!861055 () Bool)

(assert (= bs!861055 (and d!1395775 b!4525155)))

(assert (=> bs!861055 (= (= lt!1701256 lt!1701249) (= lambda!173507 lambda!173381))))

(declare-fun bs!861057 () Bool)

(assert (= bs!861057 (and d!1395775 b!4525663)))

(assert (=> bs!861057 (= (= lt!1701256 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173507 lambda!173445))))

(declare-fun bs!861058 () Bool)

(assert (= bs!861058 (and d!1395775 b!4525604)))

(assert (=> bs!861058 (= (= lt!1701256 lt!1701911) (= lambda!173507 lambda!173435))))

(assert (=> bs!861057 (= (= lt!1701256 lt!1701946) (= lambda!173507 lambda!173447))))

(declare-fun bs!861059 () Bool)

(assert (= bs!861059 (and d!1395775 d!1395423)))

(assert (=> bs!861059 (= (= lt!1701256 lt!1701860) (= lambda!173507 lambda!173428))))

(declare-fun bs!861060 () Bool)

(assert (= bs!861060 (and d!1395775 d!1395201)))

(assert (=> bs!861060 (= (= lt!1701256 lt!1701649) (= lambda!173507 lambda!173383))))

(declare-fun bs!861061 () Bool)

(assert (= bs!861061 (and d!1395775 b!4525156)))

(assert (=> bs!861061 (= (= lt!1701256 lt!1701249) (= lambda!173507 lambda!173380))))

(declare-fun bs!861062 () Bool)

(assert (= bs!861062 (and d!1395775 b!4525712)))

(assert (=> bs!861062 (= (= lt!1701256 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173507 lambda!173456))))

(declare-fun bs!861063 () Bool)

(assert (= bs!861063 (and d!1395775 b!4525711)))

(assert (=> bs!861063 (= (= lt!1701256 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173507 lambda!173457))))

(declare-fun bs!861064 () Bool)

(assert (= bs!861064 (and d!1395775 b!4525897)))

(assert (=> bs!861064 (= (= lt!1701256 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173507 lambda!173498))))

(assert (=> bs!861058 (= (= lt!1701256 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173507 lambda!173434))))

(declare-fun bs!861066 () Bool)

(assert (= bs!861066 (and d!1395775 b!4525898)))

(assert (=> bs!861066 (= (= lt!1701256 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173507 lambda!173497))))

(declare-fun bs!861067 () Bool)

(assert (= bs!861067 (and d!1395775 d!1395239)))

(assert (=> bs!861067 (= (= lt!1701256 lt!1701673) (= lambda!173507 lambda!173390))))

(declare-fun bs!861069 () Bool)

(assert (= bs!861069 (and d!1395775 b!4524756)))

(assert (=> bs!861069 (not (= lambda!173507 lambda!173267))))

(declare-fun bs!861071 () Bool)

(assert (= bs!861071 (and d!1395775 b!4525559)))

(assert (=> bs!861071 (= (= lt!1701256 lt!1701854) (= lambda!173507 lambda!173427))))

(declare-fun bs!861073 () Bool)

(assert (= bs!861073 (and d!1395775 d!1395453)))

(assert (=> bs!861073 (= (= lt!1701256 lt!1701914) (= lambda!173507 lambda!173437))))

(assert (=> bs!861064 (= (= lt!1701256 lt!1702135) (= lambda!173507 lambda!173499))))

(assert (=> bs!861071 (= (= lt!1701256 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173507 lambda!173426))))

(declare-fun bs!861077 () Bool)

(assert (= bs!861077 (and d!1395775 b!4525162)))

(assert (=> bs!861077 (= lambda!173507 lambda!173388)))

(declare-fun bs!861079 () Bool)

(assert (= bs!861079 (and d!1395775 d!1395611)))

(assert (=> bs!861079 (not (= lambda!173507 lambda!173468))))

(declare-fun bs!861081 () Bool)

(assert (= bs!861081 (and d!1395775 b!4525664)))

(assert (=> bs!861081 (= (= lt!1701256 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173507 lambda!173444))))

(assert (=> bs!861063 (= (= lt!1701256 lt!1701994) (= lambda!173507 lambda!173459))))

(declare-fun bs!861083 () Bool)

(assert (= bs!861083 (and d!1395775 d!1395501)))

(assert (=> bs!861083 (= (= lt!1701256 lt!1701949) (= lambda!173507 lambda!173450))))

(declare-fun bs!861085 () Bool)

(assert (= bs!861085 (and d!1395775 b!4525605)))

(assert (=> bs!861085 (= (= lt!1701256 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173507 lambda!173432))))

(assert (=> bs!861055 (= (= lt!1701256 lt!1701646) (= lambda!173507 lambda!173382))))

(declare-fun bs!861088 () Bool)

(assert (= bs!861088 (and d!1395775 d!1395243)))

(assert (=> bs!861088 (not (= lambda!173507 lambda!173394))))

(declare-fun bs!861090 () Bool)

(assert (= bs!861090 (and d!1395775 d!1395709)))

(assert (=> bs!861090 (= (= lt!1701256 lt!1702138) (= lambda!173507 lambda!173504))))

(assert (=> bs!861077 (= (= lt!1701256 lt!1701670) (= lambda!173507 lambda!173389))))

(declare-fun bs!861093 () Bool)

(assert (= bs!861093 (and d!1395775 d!1395547)))

(assert (=> bs!861093 (= (= lt!1701256 lt!1701997) (= lambda!173507 lambda!173462))))

(declare-fun bs!861095 () Bool)

(assert (= bs!861095 (and d!1395775 b!4525560)))

(assert (=> bs!861095 (= (= lt!1701256 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173507 lambda!173425))))

(declare-fun bs!861096 () Bool)

(assert (= bs!861096 (and d!1395775 d!1395683)))

(assert (=> bs!861096 (= (= lt!1701256 lt!1701646) (= lambda!173507 lambda!173493))))

(assert (=> d!1395775 true))

(assert (=> d!1395775 (forall!10287 (toList!4347 lt!1701256) lambda!173507)))

(declare-fun lt!1702179 () Unit!95830)

(declare-fun choose!29642 (ListMap!3609) Unit!95830)

(assert (=> d!1395775 (= lt!1702179 (choose!29642 lt!1701256))))

(assert (=> d!1395775 (= (lemmaContainsAllItsOwnKeys!346 lt!1701256) lt!1702179)))

(declare-fun bs!861097 () Bool)

(assert (= bs!861097 d!1395775))

(declare-fun m!5279097 () Bool)

(assert (=> bs!861097 m!5279097))

(declare-fun m!5279101 () Bool)

(assert (=> bs!861097 m!5279101))

(assert (=> bm!315331 d!1395775))

(assert (=> b!4524924 d!1395463))

(declare-fun bs!861098 () Bool)

(declare-fun b!4525987 () Bool)

(assert (= bs!861098 (and b!4525987 b!4525163)))

(declare-fun lambda!173509 () Int)

(assert (=> bs!861098 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701256) (= lambda!173509 lambda!173387))))

(declare-fun bs!861099 () Bool)

(assert (= bs!861099 (and b!4525987 b!4525155)))

(assert (=> bs!861099 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701249) (= lambda!173509 lambda!173381))))

(declare-fun bs!861100 () Bool)

(assert (= bs!861100 (and b!4525987 b!4525663)))

(assert (=> bs!861100 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173509 lambda!173445))))

(declare-fun bs!861101 () Bool)

(assert (= bs!861101 (and b!4525987 b!4525604)))

(assert (=> bs!861101 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701911) (= lambda!173509 lambda!173435))))

(assert (=> bs!861100 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701946) (= lambda!173509 lambda!173447))))

(declare-fun bs!861102 () Bool)

(assert (= bs!861102 (and b!4525987 d!1395423)))

(assert (=> bs!861102 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701860) (= lambda!173509 lambda!173428))))

(declare-fun bs!861103 () Bool)

(assert (= bs!861103 (and b!4525987 d!1395201)))

(assert (=> bs!861103 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701649) (= lambda!173509 lambda!173383))))

(declare-fun bs!861104 () Bool)

(assert (= bs!861104 (and b!4525987 b!4525156)))

(assert (=> bs!861104 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701249) (= lambda!173509 lambda!173380))))

(declare-fun bs!861105 () Bool)

(assert (= bs!861105 (and b!4525987 b!4525712)))

(assert (=> bs!861105 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173509 lambda!173456))))

(declare-fun bs!861106 () Bool)

(assert (= bs!861106 (and b!4525987 b!4525711)))

(assert (=> bs!861106 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173509 lambda!173457))))

(declare-fun bs!861107 () Bool)

(assert (= bs!861107 (and b!4525987 b!4525897)))

(assert (=> bs!861107 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173509 lambda!173498))))

(declare-fun bs!861108 () Bool)

(assert (= bs!861108 (and b!4525987 d!1395775)))

(assert (=> bs!861108 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701256) (= lambda!173509 lambda!173507))))

(assert (=> bs!861101 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173509 lambda!173434))))

(declare-fun bs!861109 () Bool)

(assert (= bs!861109 (and b!4525987 b!4525898)))

(assert (=> bs!861109 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173509 lambda!173497))))

(declare-fun bs!861110 () Bool)

(assert (= bs!861110 (and b!4525987 d!1395239)))

(assert (=> bs!861110 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701673) (= lambda!173509 lambda!173390))))

(declare-fun bs!861111 () Bool)

(assert (= bs!861111 (and b!4525987 b!4524756)))

(assert (=> bs!861111 (not (= lambda!173509 lambda!173267))))

(declare-fun bs!861112 () Bool)

(assert (= bs!861112 (and b!4525987 b!4525559)))

(assert (=> bs!861112 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701854) (= lambda!173509 lambda!173427))))

(declare-fun bs!861113 () Bool)

(assert (= bs!861113 (and b!4525987 d!1395453)))

(assert (=> bs!861113 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701914) (= lambda!173509 lambda!173437))))

(assert (=> bs!861107 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1702135) (= lambda!173509 lambda!173499))))

(assert (=> bs!861112 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173509 lambda!173426))))

(declare-fun bs!861114 () Bool)

(assert (= bs!861114 (and b!4525987 b!4525162)))

(assert (=> bs!861114 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701256) (= lambda!173509 lambda!173388))))

(declare-fun bs!861115 () Bool)

(assert (= bs!861115 (and b!4525987 d!1395611)))

(assert (=> bs!861115 (not (= lambda!173509 lambda!173468))))

(declare-fun bs!861116 () Bool)

(assert (= bs!861116 (and b!4525987 b!4525664)))

(assert (=> bs!861116 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173509 lambda!173444))))

(assert (=> bs!861106 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701994) (= lambda!173509 lambda!173459))))

(declare-fun bs!861117 () Bool)

(assert (= bs!861117 (and b!4525987 d!1395501)))

(assert (=> bs!861117 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701949) (= lambda!173509 lambda!173450))))

(declare-fun bs!861118 () Bool)

(assert (= bs!861118 (and b!4525987 b!4525605)))

(assert (=> bs!861118 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173509 lambda!173432))))

(assert (=> bs!861099 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701646) (= lambda!173509 lambda!173382))))

(declare-fun bs!861119 () Bool)

(assert (= bs!861119 (and b!4525987 d!1395243)))

(assert (=> bs!861119 (not (= lambda!173509 lambda!173394))))

(declare-fun bs!861120 () Bool)

(assert (= bs!861120 (and b!4525987 d!1395709)))

(assert (=> bs!861120 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1702138) (= lambda!173509 lambda!173504))))

(assert (=> bs!861114 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701670) (= lambda!173509 lambda!173389))))

(declare-fun bs!861121 () Bool)

(assert (= bs!861121 (and b!4525987 d!1395547)))

(assert (=> bs!861121 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701997) (= lambda!173509 lambda!173462))))

(declare-fun bs!861122 () Bool)

(assert (= bs!861122 (and b!4525987 b!4525560)))

(assert (=> bs!861122 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173509 lambda!173425))))

(declare-fun bs!861123 () Bool)

(assert (= bs!861123 (and b!4525987 d!1395683)))

(assert (=> bs!861123 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701646) (= lambda!173509 lambda!173493))))

(assert (=> b!4525987 true))

(declare-fun bs!861124 () Bool)

(declare-fun b!4525986 () Bool)

(assert (= bs!861124 (and b!4525986 b!4525163)))

(declare-fun lambda!173510 () Int)

(assert (=> bs!861124 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701256) (= lambda!173510 lambda!173387))))

(declare-fun bs!861125 () Bool)

(assert (= bs!861125 (and b!4525986 b!4525155)))

(assert (=> bs!861125 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701249) (= lambda!173510 lambda!173381))))

(declare-fun bs!861126 () Bool)

(assert (= bs!861126 (and b!4525986 b!4525663)))

(assert (=> bs!861126 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173510 lambda!173445))))

(declare-fun bs!861127 () Bool)

(assert (= bs!861127 (and b!4525986 b!4525604)))

(assert (=> bs!861127 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701911) (= lambda!173510 lambda!173435))))

(assert (=> bs!861126 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701946) (= lambda!173510 lambda!173447))))

(declare-fun bs!861128 () Bool)

(assert (= bs!861128 (and b!4525986 d!1395423)))

(assert (=> bs!861128 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701860) (= lambda!173510 lambda!173428))))

(declare-fun bs!861129 () Bool)

(assert (= bs!861129 (and b!4525986 d!1395201)))

(assert (=> bs!861129 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701649) (= lambda!173510 lambda!173383))))

(declare-fun bs!861130 () Bool)

(assert (= bs!861130 (and b!4525986 b!4525156)))

(assert (=> bs!861130 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701249) (= lambda!173510 lambda!173380))))

(declare-fun bs!861131 () Bool)

(assert (= bs!861131 (and b!4525986 b!4525712)))

(assert (=> bs!861131 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173510 lambda!173456))))

(declare-fun bs!861132 () Bool)

(assert (= bs!861132 (and b!4525986 b!4525711)))

(assert (=> bs!861132 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173510 lambda!173457))))

(declare-fun bs!861133 () Bool)

(assert (= bs!861133 (and b!4525986 d!1395775)))

(assert (=> bs!861133 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701256) (= lambda!173510 lambda!173507))))

(assert (=> bs!861127 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173510 lambda!173434))))

(declare-fun bs!861134 () Bool)

(assert (= bs!861134 (and b!4525986 b!4525898)))

(assert (=> bs!861134 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173510 lambda!173497))))

(declare-fun bs!861135 () Bool)

(assert (= bs!861135 (and b!4525986 d!1395239)))

(assert (=> bs!861135 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701673) (= lambda!173510 lambda!173390))))

(declare-fun bs!861136 () Bool)

(assert (= bs!861136 (and b!4525986 b!4524756)))

(assert (=> bs!861136 (not (= lambda!173510 lambda!173267))))

(declare-fun bs!861137 () Bool)

(assert (= bs!861137 (and b!4525986 b!4525559)))

(assert (=> bs!861137 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701854) (= lambda!173510 lambda!173427))))

(declare-fun bs!861138 () Bool)

(assert (= bs!861138 (and b!4525986 d!1395453)))

(assert (=> bs!861138 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701914) (= lambda!173510 lambda!173437))))

(declare-fun bs!861139 () Bool)

(assert (= bs!861139 (and b!4525986 b!4525897)))

(assert (=> bs!861139 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1702135) (= lambda!173510 lambda!173499))))

(assert (=> bs!861137 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173510 lambda!173426))))

(declare-fun bs!861140 () Bool)

(assert (= bs!861140 (and b!4525986 b!4525162)))

(assert (=> bs!861140 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701256) (= lambda!173510 lambda!173388))))

(declare-fun bs!861141 () Bool)

(assert (= bs!861141 (and b!4525986 d!1395611)))

(assert (=> bs!861141 (not (= lambda!173510 lambda!173468))))

(assert (=> bs!861139 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173510 lambda!173498))))

(declare-fun bs!861142 () Bool)

(assert (= bs!861142 (and b!4525986 b!4525987)))

(assert (=> bs!861142 (= lambda!173510 lambda!173509)))

(declare-fun bs!861144 () Bool)

(assert (= bs!861144 (and b!4525986 b!4525664)))

(assert (=> bs!861144 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173510 lambda!173444))))

(assert (=> bs!861132 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701994) (= lambda!173510 lambda!173459))))

(declare-fun bs!861146 () Bool)

(assert (= bs!861146 (and b!4525986 d!1395501)))

(assert (=> bs!861146 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701949) (= lambda!173510 lambda!173450))))

(declare-fun bs!861148 () Bool)

(assert (= bs!861148 (and b!4525986 b!4525605)))

(assert (=> bs!861148 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173510 lambda!173432))))

(assert (=> bs!861125 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701646) (= lambda!173510 lambda!173382))))

(declare-fun bs!861150 () Bool)

(assert (= bs!861150 (and b!4525986 d!1395243)))

(assert (=> bs!861150 (not (= lambda!173510 lambda!173394))))

(declare-fun bs!861152 () Bool)

(assert (= bs!861152 (and b!4525986 d!1395709)))

(assert (=> bs!861152 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1702138) (= lambda!173510 lambda!173504))))

(assert (=> bs!861140 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701670) (= lambda!173510 lambda!173389))))

(declare-fun bs!861154 () Bool)

(assert (= bs!861154 (and b!4525986 d!1395547)))

(assert (=> bs!861154 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701997) (= lambda!173510 lambda!173462))))

(declare-fun bs!861156 () Bool)

(assert (= bs!861156 (and b!4525986 b!4525560)))

(assert (=> bs!861156 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173510 lambda!173425))))

(declare-fun bs!861158 () Bool)

(assert (= bs!861158 (and b!4525986 d!1395683)))

(assert (=> bs!861158 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1701646) (= lambda!173510 lambda!173493))))

(assert (=> b!4525986 true))

(declare-fun lt!1702193 () ListMap!3609)

(declare-fun lambda!173512 () Int)

(assert (=> bs!861124 (= (= lt!1702193 lt!1701256) (= lambda!173512 lambda!173387))))

(assert (=> bs!861125 (= (= lt!1702193 lt!1701249) (= lambda!173512 lambda!173381))))

(assert (=> bs!861126 (= (= lt!1702193 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173512 lambda!173445))))

(assert (=> bs!861127 (= (= lt!1702193 lt!1701911) (= lambda!173512 lambda!173435))))

(assert (=> bs!861126 (= (= lt!1702193 lt!1701946) (= lambda!173512 lambda!173447))))

(assert (=> bs!861128 (= (= lt!1702193 lt!1701860) (= lambda!173512 lambda!173428))))

(assert (=> bs!861129 (= (= lt!1702193 lt!1701649) (= lambda!173512 lambda!173383))))

(assert (=> bs!861130 (= (= lt!1702193 lt!1701249) (= lambda!173512 lambda!173380))))

(assert (=> bs!861131 (= (= lt!1702193 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173512 lambda!173456))))

(assert (=> bs!861132 (= (= lt!1702193 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173512 lambda!173457))))

(assert (=> bs!861133 (= (= lt!1702193 lt!1701256) (= lambda!173512 lambda!173507))))

(assert (=> bs!861127 (= (= lt!1702193 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173512 lambda!173434))))

(assert (=> bs!861134 (= (= lt!1702193 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173512 lambda!173497))))

(assert (=> bs!861135 (= (= lt!1702193 lt!1701673) (= lambda!173512 lambda!173390))))

(assert (=> bs!861136 (not (= lambda!173512 lambda!173267))))

(assert (=> bs!861137 (= (= lt!1702193 lt!1701854) (= lambda!173512 lambda!173427))))

(assert (=> bs!861138 (= (= lt!1702193 lt!1701914) (= lambda!173512 lambda!173437))))

(assert (=> bs!861139 (= (= lt!1702193 lt!1702135) (= lambda!173512 lambda!173499))))

(assert (=> bs!861137 (= (= lt!1702193 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173512 lambda!173426))))

(assert (=> bs!861140 (= (= lt!1702193 lt!1701256) (= lambda!173512 lambda!173388))))

(assert (=> bs!861141 (not (= lambda!173512 lambda!173468))))

(assert (=> bs!861139 (= (= lt!1702193 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173512 lambda!173498))))

(assert (=> bs!861142 (= (= lt!1702193 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173512 lambda!173509))))

(assert (=> b!4525986 (= (= lt!1702193 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173512 lambda!173510))))

(assert (=> bs!861144 (= (= lt!1702193 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173512 lambda!173444))))

(assert (=> bs!861132 (= (= lt!1702193 lt!1701994) (= lambda!173512 lambda!173459))))

(assert (=> bs!861146 (= (= lt!1702193 lt!1701949) (= lambda!173512 lambda!173450))))

(assert (=> bs!861148 (= (= lt!1702193 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173512 lambda!173432))))

(assert (=> bs!861125 (= (= lt!1702193 lt!1701646) (= lambda!173512 lambda!173382))))

(assert (=> bs!861150 (not (= lambda!173512 lambda!173394))))

(assert (=> bs!861152 (= (= lt!1702193 lt!1702138) (= lambda!173512 lambda!173504))))

(assert (=> bs!861140 (= (= lt!1702193 lt!1701670) (= lambda!173512 lambda!173389))))

(assert (=> bs!861154 (= (= lt!1702193 lt!1701997) (= lambda!173512 lambda!173462))))

(assert (=> bs!861156 (= (= lt!1702193 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173512 lambda!173425))))

(assert (=> bs!861158 (= (= lt!1702193 lt!1701646) (= lambda!173512 lambda!173493))))

(assert (=> b!4525986 true))

(declare-fun bs!861195 () Bool)

(declare-fun d!1395779 () Bool)

(assert (= bs!861195 (and d!1395779 b!4525163)))

(declare-fun lambda!173514 () Int)

(declare-fun lt!1702196 () ListMap!3609)

(assert (=> bs!861195 (= (= lt!1702196 lt!1701256) (= lambda!173514 lambda!173387))))

(declare-fun bs!861197 () Bool)

(assert (= bs!861197 (and d!1395779 b!4525155)))

(assert (=> bs!861197 (= (= lt!1702196 lt!1701249) (= lambda!173514 lambda!173381))))

(declare-fun bs!861198 () Bool)

(assert (= bs!861198 (and d!1395779 b!4525663)))

(assert (=> bs!861198 (= (= lt!1702196 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173514 lambda!173445))))

(declare-fun bs!861200 () Bool)

(assert (= bs!861200 (and d!1395779 b!4525604)))

(assert (=> bs!861200 (= (= lt!1702196 lt!1701911) (= lambda!173514 lambda!173435))))

(assert (=> bs!861198 (= (= lt!1702196 lt!1701946) (= lambda!173514 lambda!173447))))

(declare-fun bs!861202 () Bool)

(assert (= bs!861202 (and d!1395779 d!1395423)))

(assert (=> bs!861202 (= (= lt!1702196 lt!1701860) (= lambda!173514 lambda!173428))))

(declare-fun bs!861204 () Bool)

(assert (= bs!861204 (and d!1395779 d!1395201)))

(assert (=> bs!861204 (= (= lt!1702196 lt!1701649) (= lambda!173514 lambda!173383))))

(declare-fun bs!861206 () Bool)

(assert (= bs!861206 (and d!1395779 b!4525156)))

(assert (=> bs!861206 (= (= lt!1702196 lt!1701249) (= lambda!173514 lambda!173380))))

(declare-fun bs!861207 () Bool)

(assert (= bs!861207 (and d!1395779 b!4525712)))

(assert (=> bs!861207 (= (= lt!1702196 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173514 lambda!173456))))

(declare-fun bs!861209 () Bool)

(assert (= bs!861209 (and d!1395779 b!4525711)))

(assert (=> bs!861209 (= (= lt!1702196 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173514 lambda!173457))))

(declare-fun bs!861211 () Bool)

(assert (= bs!861211 (and d!1395779 d!1395775)))

(assert (=> bs!861211 (= (= lt!1702196 lt!1701256) (= lambda!173514 lambda!173507))))

(assert (=> bs!861200 (= (= lt!1702196 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173514 lambda!173434))))

(declare-fun bs!861212 () Bool)

(assert (= bs!861212 (and d!1395779 b!4525898)))

(assert (=> bs!861212 (= (= lt!1702196 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173514 lambda!173497))))

(declare-fun bs!861213 () Bool)

(assert (= bs!861213 (and d!1395779 b!4525986)))

(assert (=> bs!861213 (= (= lt!1702196 lt!1702193) (= lambda!173514 lambda!173512))))

(declare-fun bs!861214 () Bool)

(assert (= bs!861214 (and d!1395779 d!1395239)))

(assert (=> bs!861214 (= (= lt!1702196 lt!1701673) (= lambda!173514 lambda!173390))))

(declare-fun bs!861215 () Bool)

(assert (= bs!861215 (and d!1395779 b!4524756)))

(assert (=> bs!861215 (not (= lambda!173514 lambda!173267))))

(declare-fun bs!861216 () Bool)

(assert (= bs!861216 (and d!1395779 b!4525559)))

(assert (=> bs!861216 (= (= lt!1702196 lt!1701854) (= lambda!173514 lambda!173427))))

(declare-fun bs!861217 () Bool)

(assert (= bs!861217 (and d!1395779 d!1395453)))

(assert (=> bs!861217 (= (= lt!1702196 lt!1701914) (= lambda!173514 lambda!173437))))

(declare-fun bs!861218 () Bool)

(assert (= bs!861218 (and d!1395779 b!4525897)))

(assert (=> bs!861218 (= (= lt!1702196 lt!1702135) (= lambda!173514 lambda!173499))))

(assert (=> bs!861216 (= (= lt!1702196 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173514 lambda!173426))))

(declare-fun bs!861219 () Bool)

(assert (= bs!861219 (and d!1395779 b!4525162)))

(assert (=> bs!861219 (= (= lt!1702196 lt!1701256) (= lambda!173514 lambda!173388))))

(declare-fun bs!861220 () Bool)

(assert (= bs!861220 (and d!1395779 d!1395611)))

(assert (=> bs!861220 (not (= lambda!173514 lambda!173468))))

(assert (=> bs!861218 (= (= lt!1702196 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173514 lambda!173498))))

(declare-fun bs!861221 () Bool)

(assert (= bs!861221 (and d!1395779 b!4525987)))

(assert (=> bs!861221 (= (= lt!1702196 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173514 lambda!173509))))

(assert (=> bs!861213 (= (= lt!1702196 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173514 lambda!173510))))

(declare-fun bs!861222 () Bool)

(assert (= bs!861222 (and d!1395779 b!4525664)))

(assert (=> bs!861222 (= (= lt!1702196 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173514 lambda!173444))))

(assert (=> bs!861209 (= (= lt!1702196 lt!1701994) (= lambda!173514 lambda!173459))))

(declare-fun bs!861223 () Bool)

(assert (= bs!861223 (and d!1395779 d!1395501)))

(assert (=> bs!861223 (= (= lt!1702196 lt!1701949) (= lambda!173514 lambda!173450))))

(declare-fun bs!861224 () Bool)

(assert (= bs!861224 (and d!1395779 b!4525605)))

(assert (=> bs!861224 (= (= lt!1702196 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173514 lambda!173432))))

(assert (=> bs!861197 (= (= lt!1702196 lt!1701646) (= lambda!173514 lambda!173382))))

(declare-fun bs!861225 () Bool)

(assert (= bs!861225 (and d!1395779 d!1395243)))

(assert (=> bs!861225 (not (= lambda!173514 lambda!173394))))

(declare-fun bs!861226 () Bool)

(assert (= bs!861226 (and d!1395779 d!1395709)))

(assert (=> bs!861226 (= (= lt!1702196 lt!1702138) (= lambda!173514 lambda!173504))))

(assert (=> bs!861219 (= (= lt!1702196 lt!1701670) (= lambda!173514 lambda!173389))))

(declare-fun bs!861227 () Bool)

(assert (= bs!861227 (and d!1395779 d!1395547)))

(assert (=> bs!861227 (= (= lt!1702196 lt!1701997) (= lambda!173514 lambda!173462))))

(declare-fun bs!861228 () Bool)

(assert (= bs!861228 (and d!1395779 b!4525560)))

(assert (=> bs!861228 (= (= lt!1702196 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173514 lambda!173425))))

(declare-fun bs!861229 () Bool)

(assert (= bs!861229 (and d!1395779 d!1395683)))

(assert (=> bs!861229 (= (= lt!1702196 lt!1701646) (= lambda!173514 lambda!173493))))

(assert (=> d!1395779 true))

(declare-fun bm!315400 () Bool)

(declare-fun call!315407 () Bool)

(declare-fun c!772607 () Bool)

(assert (=> bm!315400 (= call!315407 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (ite c!772607 lambda!173509 lambda!173510)))))

(declare-fun b!4525983 () Bool)

(declare-fun e!2819983 () Bool)

(assert (=> b!4525983 (= e!2819983 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) lambda!173512))))

(declare-fun bm!315401 () Bool)

(declare-fun call!315405 () Unit!95830)

(assert (=> bm!315401 (= call!315405 (lemmaContainsAllItsOwnKeys!346 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))))))

(declare-fun lt!1702192 () ListMap!3609)

(declare-fun bm!315402 () Bool)

(declare-fun call!315406 () Bool)

(assert (=> bm!315402 (= call!315406 (forall!10287 (ite c!772607 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (toList!4347 lt!1702192)) (ite c!772607 lambda!173509 lambda!173512)))))

(declare-fun b!4525984 () Bool)

(declare-fun res!1884369 () Bool)

(declare-fun e!2819982 () Bool)

(assert (=> b!4525984 (=> (not res!1884369) (not e!2819982))))

(assert (=> b!4525984 (= res!1884369 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) lambda!173514))))

(declare-fun b!4525985 () Bool)

(assert (=> b!4525985 (= e!2819982 (invariantList!1025 (toList!4347 lt!1702196)))))

(declare-fun e!2819981 () ListMap!3609)

(assert (=> b!4525986 (= e!2819981 lt!1702193)))

(assert (=> b!4525986 (= lt!1702192 (+!1558 (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701251))))))))

(assert (=> b!4525986 (= lt!1702193 (addToMapMapFromBucket!697 (t!357760 (_2!28852 (h!56536 (toList!4348 lt!1701251)))) (+!1558 (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701251)))))))))

(declare-fun lt!1702190 () Unit!95830)

(assert (=> b!4525986 (= lt!1702190 call!315405)))

(assert (=> b!4525986 call!315407))

(declare-fun lt!1702201 () Unit!95830)

(assert (=> b!4525986 (= lt!1702201 lt!1702190)))

(assert (=> b!4525986 call!315406))

(declare-fun lt!1702200 () Unit!95830)

(declare-fun Unit!96039 () Unit!95830)

(assert (=> b!4525986 (= lt!1702200 Unit!96039)))

(assert (=> b!4525986 (forall!10287 (t!357760 (_2!28852 (h!56536 (toList!4348 lt!1701251)))) lambda!173512)))

(declare-fun lt!1702188 () Unit!95830)

(declare-fun Unit!96040 () Unit!95830)

(assert (=> b!4525986 (= lt!1702188 Unit!96040)))

(declare-fun lt!1702199 () Unit!95830)

(declare-fun Unit!96041 () Unit!95830)

(assert (=> b!4525986 (= lt!1702199 Unit!96041)))

(declare-fun lt!1702187 () Unit!95830)

(assert (=> b!4525986 (= lt!1702187 (forallContained!2539 (toList!4347 lt!1702192) lambda!173512 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701251))))))))

(assert (=> b!4525986 (contains!13418 lt!1702192 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701251))))))))

(declare-fun lt!1702182 () Unit!95830)

(declare-fun Unit!96042 () Unit!95830)

(assert (=> b!4525986 (= lt!1702182 Unit!96042)))

(assert (=> b!4525986 (contains!13418 lt!1702193 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701251))))))))

(declare-fun lt!1702184 () Unit!95830)

(declare-fun Unit!96043 () Unit!95830)

(assert (=> b!4525986 (= lt!1702184 Unit!96043)))

(assert (=> b!4525986 (forall!10287 (_2!28852 (h!56536 (toList!4348 lt!1701251))) lambda!173512)))

(declare-fun lt!1702185 () Unit!95830)

(declare-fun Unit!96044 () Unit!95830)

(assert (=> b!4525986 (= lt!1702185 Unit!96044)))

(assert (=> b!4525986 (forall!10287 (toList!4347 lt!1702192) lambda!173512)))

(declare-fun lt!1702189 () Unit!95830)

(declare-fun Unit!96045 () Unit!95830)

(assert (=> b!4525986 (= lt!1702189 Unit!96045)))

(declare-fun lt!1702186 () Unit!95830)

(declare-fun Unit!96046 () Unit!95830)

(assert (=> b!4525986 (= lt!1702186 Unit!96046)))

(declare-fun lt!1702195 () Unit!95830)

(assert (=> b!4525986 (= lt!1702195 (addForallContainsKeyThenBeforeAdding!346 (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1702193 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701251))))) (_2!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701251)))))))))

(assert (=> b!4525986 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) lambda!173512)))

(declare-fun lt!1702198 () Unit!95830)

(assert (=> b!4525986 (= lt!1702198 lt!1702195)))

(assert (=> b!4525986 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) lambda!173512)))

(declare-fun lt!1702194 () Unit!95830)

(declare-fun Unit!96047 () Unit!95830)

(assert (=> b!4525986 (= lt!1702194 Unit!96047)))

(declare-fun res!1884370 () Bool)

(assert (=> b!4525986 (= res!1884370 (forall!10287 (_2!28852 (h!56536 (toList!4348 lt!1701251))) lambda!173512))))

(assert (=> b!4525986 (=> (not res!1884370) (not e!2819983))))

(assert (=> b!4525986 e!2819983))

(declare-fun lt!1702191 () Unit!95830)

(declare-fun Unit!96048 () Unit!95830)

(assert (=> b!4525986 (= lt!1702191 Unit!96048)))

(assert (=> b!4525987 (= e!2819981 (extractMap!1226 (t!357761 (toList!4348 lt!1701251))))))

(declare-fun lt!1702183 () Unit!95830)

(assert (=> b!4525987 (= lt!1702183 call!315405)))

(assert (=> b!4525987 call!315406))

(declare-fun lt!1702197 () Unit!95830)

(assert (=> b!4525987 (= lt!1702197 lt!1702183)))

(assert (=> b!4525987 call!315407))

(declare-fun lt!1702181 () Unit!95830)

(declare-fun Unit!96049 () Unit!95830)

(assert (=> b!4525987 (= lt!1702181 Unit!96049)))

(assert (=> d!1395779 e!2819982))

(declare-fun res!1884371 () Bool)

(assert (=> d!1395779 (=> (not res!1884371) (not e!2819982))))

(assert (=> d!1395779 (= res!1884371 (forall!10287 (_2!28852 (h!56536 (toList!4348 lt!1701251))) lambda!173514))))

(assert (=> d!1395779 (= lt!1702196 e!2819981)))

(assert (=> d!1395779 (= c!772607 ((_ is Nil!50674) (_2!28852 (h!56536 (toList!4348 lt!1701251)))))))

(assert (=> d!1395779 (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lt!1701251))))))

(assert (=> d!1395779 (= (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 lt!1701251))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) lt!1702196)))

(assert (= (and d!1395779 c!772607) b!4525987))

(assert (= (and d!1395779 (not c!772607)) b!4525986))

(assert (= (and b!4525986 res!1884370) b!4525983))

(assert (= (or b!4525987 b!4525986) bm!315400))

(assert (= (or b!4525987 b!4525986) bm!315402))

(assert (= (or b!4525987 b!4525986) bm!315401))

(assert (= (and d!1395779 res!1884371) b!4525984))

(assert (= (and b!4525984 res!1884369) b!4525985))

(declare-fun m!5279131 () Bool)

(assert (=> b!4525985 m!5279131))

(declare-fun m!5279133 () Bool)

(assert (=> b!4525986 m!5279133))

(declare-fun m!5279135 () Bool)

(assert (=> b!4525986 m!5279135))

(declare-fun m!5279137 () Bool)

(assert (=> b!4525986 m!5279137))

(assert (=> b!4525986 m!5277069))

(declare-fun m!5279139 () Bool)

(assert (=> b!4525986 m!5279139))

(declare-fun m!5279141 () Bool)

(assert (=> b!4525986 m!5279141))

(assert (=> b!4525986 m!5279141))

(declare-fun m!5279143 () Bool)

(assert (=> b!4525986 m!5279143))

(declare-fun m!5279145 () Bool)

(assert (=> b!4525986 m!5279145))

(declare-fun m!5279147 () Bool)

(assert (=> b!4525986 m!5279147))

(assert (=> b!4525986 m!5277069))

(declare-fun m!5279149 () Bool)

(assert (=> b!4525986 m!5279149))

(assert (=> b!4525986 m!5279133))

(assert (=> b!4525986 m!5279139))

(declare-fun m!5279151 () Bool)

(assert (=> b!4525986 m!5279151))

(declare-fun m!5279153 () Bool)

(assert (=> bm!315400 m!5279153))

(assert (=> b!4525983 m!5279141))

(assert (=> bm!315401 m!5277069))

(declare-fun m!5279155 () Bool)

(assert (=> bm!315401 m!5279155))

(declare-fun m!5279157 () Bool)

(assert (=> bm!315402 m!5279157))

(declare-fun m!5279159 () Bool)

(assert (=> d!1395779 m!5279159))

(declare-fun m!5279161 () Bool)

(assert (=> d!1395779 m!5279161))

(declare-fun m!5279163 () Bool)

(assert (=> b!4525984 m!5279163))

(assert (=> b!4524932 d!1395779))

(declare-fun bs!861237 () Bool)

(declare-fun d!1395797 () Bool)

(assert (= bs!861237 (and d!1395797 d!1395129)))

(declare-fun lambda!173517 () Int)

(assert (=> bs!861237 (= lambda!173517 lambda!173332)))

(declare-fun bs!861240 () Bool)

(assert (= bs!861240 (and d!1395797 d!1395637)))

(assert (=> bs!861240 (= lambda!173517 lambda!173472)))

(declare-fun bs!861242 () Bool)

(assert (= bs!861242 (and d!1395797 b!4524756)))

(assert (=> bs!861242 (not (= lambda!173517 lambda!173266))))

(declare-fun bs!861244 () Bool)

(assert (= bs!861244 (and d!1395797 d!1395233)))

(assert (=> bs!861244 (not (= lambda!173517 lambda!173386))))

(declare-fun bs!861246 () Bool)

(assert (= bs!861246 (and d!1395797 d!1395089)))

(assert (=> bs!861246 (= lambda!173517 lambda!173318)))

(declare-fun bs!861248 () Bool)

(assert (= bs!861248 (and d!1395797 d!1395071)))

(assert (=> bs!861248 (= lambda!173517 lambda!173310)))

(declare-fun bs!861250 () Bool)

(assert (= bs!861250 (and d!1395797 d!1395099)))

(assert (=> bs!861250 (= lambda!173517 lambda!173319)))

(declare-fun bs!861252 () Bool)

(assert (= bs!861252 (and d!1395797 d!1395039)))

(assert (=> bs!861252 (= lambda!173517 lambda!173270)))

(declare-fun bs!861254 () Bool)

(assert (= bs!861254 (and d!1395797 d!1395245)))

(assert (=> bs!861254 (= lambda!173517 lambda!173397)))

(declare-fun bs!861256 () Bool)

(assert (= bs!861256 (and d!1395797 start!448304)))

(assert (=> bs!861256 (= lambda!173517 lambda!173265)))

(declare-fun bs!861258 () Bool)

(assert (= bs!861258 (and d!1395797 d!1395141)))

(assert (=> bs!861258 (= lambda!173517 lambda!173337)))

(declare-fun bs!861260 () Bool)

(assert (= bs!861260 (and d!1395797 d!1395133)))

(assert (=> bs!861260 (= lambda!173517 lambda!173333)))

(declare-fun bs!861261 () Bool)

(assert (= bs!861261 (and d!1395797 d!1395509)))

(assert (=> bs!861261 (= lambda!173517 lambda!173452)))

(declare-fun bs!861262 () Bool)

(assert (= bs!861262 (and d!1395797 d!1395241)))

(assert (=> bs!861262 (= lambda!173517 lambda!173391)))

(declare-fun bs!861264 () Bool)

(assert (= bs!861264 (and d!1395797 d!1395429)))

(assert (=> bs!861264 (= lambda!173517 lambda!173429)))

(declare-fun bs!861265 () Bool)

(assert (= bs!861265 (and d!1395797 d!1395087)))

(assert (=> bs!861265 (= lambda!173517 lambda!173312)))

(declare-fun bs!861267 () Bool)

(assert (= bs!861267 (and d!1395797 d!1395115)))

(assert (=> bs!861267 (= lambda!173517 lambda!173327)))

(declare-fun bs!861268 () Bool)

(assert (= bs!861268 (and d!1395797 d!1395575)))

(assert (=> bs!861268 (= lambda!173517 lambda!173465)))

(declare-fun lt!1702225 () ListMap!3609)

(assert (=> d!1395797 (invariantList!1025 (toList!4347 lt!1702225))))

(declare-fun e!2820000 () ListMap!3609)

(assert (=> d!1395797 (= lt!1702225 e!2820000)))

(declare-fun c!772609 () Bool)

(assert (=> d!1395797 (= c!772609 ((_ is Cons!50675) (t!357761 (toList!4348 lt!1701251))))))

(assert (=> d!1395797 (forall!10285 (t!357761 (toList!4348 lt!1701251)) lambda!173517)))

(assert (=> d!1395797 (= (extractMap!1226 (t!357761 (toList!4348 lt!1701251))) lt!1702225)))

(declare-fun b!4526006 () Bool)

(assert (=> b!4526006 (= e!2820000 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (t!357761 (toList!4348 lt!1701251)))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lt!1701251))))))))

(declare-fun b!4526007 () Bool)

(assert (=> b!4526007 (= e!2820000 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395797 c!772609) b!4526006))

(assert (= (and d!1395797 (not c!772609)) b!4526007))

(declare-fun m!5279165 () Bool)

(assert (=> d!1395797 m!5279165))

(declare-fun m!5279167 () Bool)

(assert (=> d!1395797 m!5279167))

(declare-fun m!5279169 () Bool)

(assert (=> b!4526006 m!5279169))

(assert (=> b!4526006 m!5279169))

(declare-fun m!5279171 () Bool)

(assert (=> b!4526006 m!5279171))

(assert (=> b!4524932 d!1395797))

(declare-fun d!1395799 () Bool)

(declare-fun lt!1702226 () Bool)

(assert (=> d!1395799 (= lt!1702226 (select (content!8382 (toList!4348 lt!1701533)) lt!1701243))))

(declare-fun e!2820002 () Bool)

(assert (=> d!1395799 (= lt!1702226 e!2820002)))

(declare-fun res!1884389 () Bool)

(assert (=> d!1395799 (=> (not res!1884389) (not e!2820002))))

(assert (=> d!1395799 (= res!1884389 ((_ is Cons!50675) (toList!4348 lt!1701533)))))

(assert (=> d!1395799 (= (contains!13419 (toList!4348 lt!1701533) lt!1701243) lt!1702226)))

(declare-fun b!4526008 () Bool)

(declare-fun e!2820001 () Bool)

(assert (=> b!4526008 (= e!2820002 e!2820001)))

(declare-fun res!1884388 () Bool)

(assert (=> b!4526008 (=> res!1884388 e!2820001)))

(assert (=> b!4526008 (= res!1884388 (= (h!56536 (toList!4348 lt!1701533)) lt!1701243))))

(declare-fun b!4526009 () Bool)

(assert (=> b!4526009 (= e!2820001 (contains!13419 (t!357761 (toList!4348 lt!1701533)) lt!1701243))))

(assert (= (and d!1395799 res!1884389) b!4526008))

(assert (= (and b!4526008 (not res!1884388)) b!4526009))

(declare-fun m!5279173 () Bool)

(assert (=> d!1395799 m!5279173))

(declare-fun m!5279175 () Bool)

(assert (=> d!1395799 m!5279175))

(declare-fun m!5279177 () Bool)

(assert (=> b!4526009 m!5279177))

(assert (=> b!4525021 d!1395799))

(declare-fun bs!861275 () Bool)

(declare-fun b!4526014 () Bool)

(assert (= bs!861275 (and b!4526014 b!4525163)))

(declare-fun lambda!173518 () Int)

(assert (=> bs!861275 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701256) (= lambda!173518 lambda!173387))))

(declare-fun bs!861276 () Bool)

(assert (= bs!861276 (and b!4526014 b!4525663)))

(assert (=> bs!861276 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173518 lambda!173445))))

(declare-fun bs!861277 () Bool)

(assert (= bs!861277 (and b!4526014 b!4525604)))

(assert (=> bs!861277 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701911) (= lambda!173518 lambda!173435))))

(assert (=> bs!861276 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701946) (= lambda!173518 lambda!173447))))

(declare-fun bs!861278 () Bool)

(assert (= bs!861278 (and b!4526014 d!1395423)))

(assert (=> bs!861278 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701860) (= lambda!173518 lambda!173428))))

(declare-fun bs!861279 () Bool)

(assert (= bs!861279 (and b!4526014 d!1395201)))

(assert (=> bs!861279 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701649) (= lambda!173518 lambda!173383))))

(declare-fun bs!861280 () Bool)

(assert (= bs!861280 (and b!4526014 b!4525156)))

(assert (=> bs!861280 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701249) (= lambda!173518 lambda!173380))))

(declare-fun bs!861281 () Bool)

(assert (= bs!861281 (and b!4526014 b!4525712)))

(assert (=> bs!861281 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173518 lambda!173456))))

(declare-fun bs!861282 () Bool)

(assert (= bs!861282 (and b!4526014 b!4525711)))

(assert (=> bs!861282 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173518 lambda!173457))))

(declare-fun bs!861283 () Bool)

(assert (= bs!861283 (and b!4526014 d!1395775)))

(assert (=> bs!861283 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701256) (= lambda!173518 lambda!173507))))

(assert (=> bs!861277 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173518 lambda!173434))))

(declare-fun bs!861284 () Bool)

(assert (= bs!861284 (and b!4526014 b!4525898)))

(assert (=> bs!861284 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173518 lambda!173497))))

(declare-fun bs!861285 () Bool)

(assert (= bs!861285 (and b!4526014 b!4525986)))

(assert (=> bs!861285 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702193) (= lambda!173518 lambda!173512))))

(declare-fun bs!861286 () Bool)

(assert (= bs!861286 (and b!4526014 b!4525155)))

(assert (=> bs!861286 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701249) (= lambda!173518 lambda!173381))))

(declare-fun bs!861287 () Bool)

(assert (= bs!861287 (and b!4526014 d!1395779)))

(assert (=> bs!861287 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702196) (= lambda!173518 lambda!173514))))

(declare-fun bs!861288 () Bool)

(assert (= bs!861288 (and b!4526014 d!1395239)))

(assert (=> bs!861288 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701673) (= lambda!173518 lambda!173390))))

(declare-fun bs!861289 () Bool)

(assert (= bs!861289 (and b!4526014 b!4524756)))

(assert (=> bs!861289 (not (= lambda!173518 lambda!173267))))

(declare-fun bs!861290 () Bool)

(assert (= bs!861290 (and b!4526014 b!4525559)))

(assert (=> bs!861290 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701854) (= lambda!173518 lambda!173427))))

(declare-fun bs!861291 () Bool)

(assert (= bs!861291 (and b!4526014 d!1395453)))

(assert (=> bs!861291 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701914) (= lambda!173518 lambda!173437))))

(declare-fun bs!861292 () Bool)

(assert (= bs!861292 (and b!4526014 b!4525897)))

(assert (=> bs!861292 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702135) (= lambda!173518 lambda!173499))))

(assert (=> bs!861290 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173518 lambda!173426))))

(declare-fun bs!861293 () Bool)

(assert (= bs!861293 (and b!4526014 b!4525162)))

(assert (=> bs!861293 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701256) (= lambda!173518 lambda!173388))))

(declare-fun bs!861294 () Bool)

(assert (= bs!861294 (and b!4526014 d!1395611)))

(assert (=> bs!861294 (not (= lambda!173518 lambda!173468))))

(assert (=> bs!861292 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173518 lambda!173498))))

(declare-fun bs!861295 () Bool)

(assert (= bs!861295 (and b!4526014 b!4525987)))

(assert (=> bs!861295 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173518 lambda!173509))))

(assert (=> bs!861285 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173518 lambda!173510))))

(declare-fun bs!861296 () Bool)

(assert (= bs!861296 (and b!4526014 b!4525664)))

(assert (=> bs!861296 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173518 lambda!173444))))

(assert (=> bs!861282 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701994) (= lambda!173518 lambda!173459))))

(declare-fun bs!861297 () Bool)

(assert (= bs!861297 (and b!4526014 d!1395501)))

(assert (=> bs!861297 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701949) (= lambda!173518 lambda!173450))))

(declare-fun bs!861298 () Bool)

(assert (= bs!861298 (and b!4526014 b!4525605)))

(assert (=> bs!861298 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173518 lambda!173432))))

(assert (=> bs!861286 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701646) (= lambda!173518 lambda!173382))))

(declare-fun bs!861299 () Bool)

(assert (= bs!861299 (and b!4526014 d!1395243)))

(assert (=> bs!861299 (not (= lambda!173518 lambda!173394))))

(declare-fun bs!861300 () Bool)

(assert (= bs!861300 (and b!4526014 d!1395709)))

(assert (=> bs!861300 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702138) (= lambda!173518 lambda!173504))))

(assert (=> bs!861293 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701670) (= lambda!173518 lambda!173389))))

(declare-fun bs!861301 () Bool)

(assert (= bs!861301 (and b!4526014 d!1395547)))

(assert (=> bs!861301 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701997) (= lambda!173518 lambda!173462))))

(declare-fun bs!861302 () Bool)

(assert (= bs!861302 (and b!4526014 b!4525560)))

(assert (=> bs!861302 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173518 lambda!173425))))

(declare-fun bs!861303 () Bool)

(assert (= bs!861303 (and b!4526014 d!1395683)))

(assert (=> bs!861303 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701646) (= lambda!173518 lambda!173493))))

(assert (=> b!4526014 true))

(declare-fun bs!861304 () Bool)

(declare-fun b!4526013 () Bool)

(assert (= bs!861304 (and b!4526013 b!4525163)))

(declare-fun lambda!173519 () Int)

(assert (=> bs!861304 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701256) (= lambda!173519 lambda!173387))))

(declare-fun bs!861305 () Bool)

(assert (= bs!861305 (and b!4526013 b!4525663)))

(assert (=> bs!861305 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173519 lambda!173445))))

(declare-fun bs!861306 () Bool)

(assert (= bs!861306 (and b!4526013 b!4525604)))

(assert (=> bs!861306 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701911) (= lambda!173519 lambda!173435))))

(assert (=> bs!861305 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701946) (= lambda!173519 lambda!173447))))

(declare-fun bs!861307 () Bool)

(assert (= bs!861307 (and b!4526013 d!1395423)))

(assert (=> bs!861307 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701860) (= lambda!173519 lambda!173428))))

(declare-fun bs!861308 () Bool)

(assert (= bs!861308 (and b!4526013 d!1395201)))

(assert (=> bs!861308 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701649) (= lambda!173519 lambda!173383))))

(declare-fun bs!861309 () Bool)

(assert (= bs!861309 (and b!4526013 b!4526014)))

(assert (=> bs!861309 (= lambda!173519 lambda!173518)))

(declare-fun bs!861310 () Bool)

(assert (= bs!861310 (and b!4526013 b!4525156)))

(assert (=> bs!861310 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701249) (= lambda!173519 lambda!173380))))

(declare-fun bs!861311 () Bool)

(assert (= bs!861311 (and b!4526013 b!4525712)))

(assert (=> bs!861311 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173519 lambda!173456))))

(declare-fun bs!861312 () Bool)

(assert (= bs!861312 (and b!4526013 b!4525711)))

(assert (=> bs!861312 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173519 lambda!173457))))

(declare-fun bs!861313 () Bool)

(assert (= bs!861313 (and b!4526013 d!1395775)))

(assert (=> bs!861313 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701256) (= lambda!173519 lambda!173507))))

(assert (=> bs!861306 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173519 lambda!173434))))

(declare-fun bs!861314 () Bool)

(assert (= bs!861314 (and b!4526013 b!4525898)))

(assert (=> bs!861314 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173519 lambda!173497))))

(declare-fun bs!861315 () Bool)

(assert (= bs!861315 (and b!4526013 b!4525986)))

(assert (=> bs!861315 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702193) (= lambda!173519 lambda!173512))))

(declare-fun bs!861316 () Bool)

(assert (= bs!861316 (and b!4526013 b!4525155)))

(assert (=> bs!861316 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701249) (= lambda!173519 lambda!173381))))

(declare-fun bs!861317 () Bool)

(assert (= bs!861317 (and b!4526013 d!1395779)))

(assert (=> bs!861317 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702196) (= lambda!173519 lambda!173514))))

(declare-fun bs!861318 () Bool)

(assert (= bs!861318 (and b!4526013 d!1395239)))

(assert (=> bs!861318 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701673) (= lambda!173519 lambda!173390))))

(declare-fun bs!861319 () Bool)

(assert (= bs!861319 (and b!4526013 b!4524756)))

(assert (=> bs!861319 (not (= lambda!173519 lambda!173267))))

(declare-fun bs!861320 () Bool)

(assert (= bs!861320 (and b!4526013 b!4525559)))

(assert (=> bs!861320 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701854) (= lambda!173519 lambda!173427))))

(declare-fun bs!861321 () Bool)

(assert (= bs!861321 (and b!4526013 d!1395453)))

(assert (=> bs!861321 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701914) (= lambda!173519 lambda!173437))))

(declare-fun bs!861322 () Bool)

(assert (= bs!861322 (and b!4526013 b!4525897)))

(assert (=> bs!861322 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702135) (= lambda!173519 lambda!173499))))

(assert (=> bs!861320 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173519 lambda!173426))))

(declare-fun bs!861323 () Bool)

(assert (= bs!861323 (and b!4526013 b!4525162)))

(assert (=> bs!861323 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701256) (= lambda!173519 lambda!173388))))

(declare-fun bs!861324 () Bool)

(assert (= bs!861324 (and b!4526013 d!1395611)))

(assert (=> bs!861324 (not (= lambda!173519 lambda!173468))))

(assert (=> bs!861322 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173519 lambda!173498))))

(declare-fun bs!861325 () Bool)

(assert (= bs!861325 (and b!4526013 b!4525987)))

(assert (=> bs!861325 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173519 lambda!173509))))

(assert (=> bs!861315 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173519 lambda!173510))))

(declare-fun bs!861326 () Bool)

(assert (= bs!861326 (and b!4526013 b!4525664)))

(assert (=> bs!861326 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173519 lambda!173444))))

(assert (=> bs!861312 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701994) (= lambda!173519 lambda!173459))))

(declare-fun bs!861327 () Bool)

(assert (= bs!861327 (and b!4526013 d!1395501)))

(assert (=> bs!861327 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701949) (= lambda!173519 lambda!173450))))

(declare-fun bs!861328 () Bool)

(assert (= bs!861328 (and b!4526013 b!4525605)))

(assert (=> bs!861328 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173519 lambda!173432))))

(assert (=> bs!861316 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701646) (= lambda!173519 lambda!173382))))

(declare-fun bs!861329 () Bool)

(assert (= bs!861329 (and b!4526013 d!1395243)))

(assert (=> bs!861329 (not (= lambda!173519 lambda!173394))))

(declare-fun bs!861330 () Bool)

(assert (= bs!861330 (and b!4526013 d!1395709)))

(assert (=> bs!861330 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702138) (= lambda!173519 lambda!173504))))

(assert (=> bs!861323 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701670) (= lambda!173519 lambda!173389))))

(declare-fun bs!861331 () Bool)

(assert (= bs!861331 (and b!4526013 d!1395547)))

(assert (=> bs!861331 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701997) (= lambda!173519 lambda!173462))))

(declare-fun bs!861332 () Bool)

(assert (= bs!861332 (and b!4526013 b!4525560)))

(assert (=> bs!861332 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173519 lambda!173425))))

(declare-fun bs!861333 () Bool)

(assert (= bs!861333 (and b!4526013 d!1395683)))

(assert (=> bs!861333 (= (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1701646) (= lambda!173519 lambda!173493))))

(assert (=> b!4526013 true))

(declare-fun lt!1702239 () ListMap!3609)

(declare-fun lambda!173520 () Int)

(assert (=> bs!861304 (= (= lt!1702239 lt!1701256) (= lambda!173520 lambda!173387))))

(assert (=> bs!861305 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173520 lambda!173445))))

(assert (=> bs!861306 (= (= lt!1702239 lt!1701911) (= lambda!173520 lambda!173435))))

(assert (=> bs!861305 (= (= lt!1702239 lt!1701946) (= lambda!173520 lambda!173447))))

(assert (=> bs!861307 (= (= lt!1702239 lt!1701860) (= lambda!173520 lambda!173428))))

(assert (=> bs!861308 (= (= lt!1702239 lt!1701649) (= lambda!173520 lambda!173383))))

(assert (=> bs!861309 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173520 lambda!173518))))

(assert (=> bs!861310 (= (= lt!1702239 lt!1701249) (= lambda!173520 lambda!173380))))

(assert (=> bs!861311 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173520 lambda!173456))))

(assert (=> bs!861312 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173520 lambda!173457))))

(assert (=> bs!861313 (= (= lt!1702239 lt!1701256) (= lambda!173520 lambda!173507))))

(assert (=> bs!861306 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173520 lambda!173434))))

(assert (=> b!4526013 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173520 lambda!173519))))

(assert (=> bs!861314 (= (= lt!1702239 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173520 lambda!173497))))

(assert (=> bs!861315 (= (= lt!1702239 lt!1702193) (= lambda!173520 lambda!173512))))

(assert (=> bs!861316 (= (= lt!1702239 lt!1701249) (= lambda!173520 lambda!173381))))

(assert (=> bs!861317 (= (= lt!1702239 lt!1702196) (= lambda!173520 lambda!173514))))

(assert (=> bs!861318 (= (= lt!1702239 lt!1701673) (= lambda!173520 lambda!173390))))

(assert (=> bs!861319 (not (= lambda!173520 lambda!173267))))

(assert (=> bs!861320 (= (= lt!1702239 lt!1701854) (= lambda!173520 lambda!173427))))

(assert (=> bs!861321 (= (= lt!1702239 lt!1701914) (= lambda!173520 lambda!173437))))

(assert (=> bs!861322 (= (= lt!1702239 lt!1702135) (= lambda!173520 lambda!173499))))

(assert (=> bs!861320 (= (= lt!1702239 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173520 lambda!173426))))

(assert (=> bs!861323 (= (= lt!1702239 lt!1701256) (= lambda!173520 lambda!173388))))

(assert (=> bs!861324 (not (= lambda!173520 lambda!173468))))

(assert (=> bs!861322 (= (= lt!1702239 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173520 lambda!173498))))

(assert (=> bs!861325 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173520 lambda!173509))))

(assert (=> bs!861315 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173520 lambda!173510))))

(assert (=> bs!861326 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173520 lambda!173444))))

(assert (=> bs!861312 (= (= lt!1702239 lt!1701994) (= lambda!173520 lambda!173459))))

(assert (=> bs!861327 (= (= lt!1702239 lt!1701949) (= lambda!173520 lambda!173450))))

(assert (=> bs!861328 (= (= lt!1702239 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173520 lambda!173432))))

(assert (=> bs!861316 (= (= lt!1702239 lt!1701646) (= lambda!173520 lambda!173382))))

(assert (=> bs!861329 (not (= lambda!173520 lambda!173394))))

(assert (=> bs!861330 (= (= lt!1702239 lt!1702138) (= lambda!173520 lambda!173504))))

(assert (=> bs!861323 (= (= lt!1702239 lt!1701670) (= lambda!173520 lambda!173389))))

(assert (=> bs!861331 (= (= lt!1702239 lt!1701997) (= lambda!173520 lambda!173462))))

(assert (=> bs!861332 (= (= lt!1702239 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173520 lambda!173425))))

(assert (=> bs!861333 (= (= lt!1702239 lt!1701646) (= lambda!173520 lambda!173493))))

(assert (=> b!4526013 true))

(declare-fun bs!861363 () Bool)

(declare-fun d!1395801 () Bool)

(assert (= bs!861363 (and d!1395801 b!4525163)))

(declare-fun lambda!173522 () Int)

(declare-fun lt!1702242 () ListMap!3609)

(assert (=> bs!861363 (= (= lt!1702242 lt!1701256) (= lambda!173522 lambda!173387))))

(declare-fun bs!861364 () Bool)

(assert (= bs!861364 (and d!1395801 b!4525663)))

(assert (=> bs!861364 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173522 lambda!173445))))

(declare-fun bs!861365 () Bool)

(assert (= bs!861365 (and d!1395801 b!4525604)))

(assert (=> bs!861365 (= (= lt!1702242 lt!1701911) (= lambda!173522 lambda!173435))))

(assert (=> bs!861364 (= (= lt!1702242 lt!1701946) (= lambda!173522 lambda!173447))))

(declare-fun bs!861366 () Bool)

(assert (= bs!861366 (and d!1395801 d!1395423)))

(assert (=> bs!861366 (= (= lt!1702242 lt!1701860) (= lambda!173522 lambda!173428))))

(declare-fun bs!861367 () Bool)

(assert (= bs!861367 (and d!1395801 d!1395201)))

(assert (=> bs!861367 (= (= lt!1702242 lt!1701649) (= lambda!173522 lambda!173383))))

(declare-fun bs!861368 () Bool)

(assert (= bs!861368 (and d!1395801 b!4526014)))

(assert (=> bs!861368 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173522 lambda!173518))))

(declare-fun bs!861369 () Bool)

(assert (= bs!861369 (and d!1395801 b!4525156)))

(assert (=> bs!861369 (= (= lt!1702242 lt!1701249) (= lambda!173522 lambda!173380))))

(declare-fun bs!861370 () Bool)

(assert (= bs!861370 (and d!1395801 b!4525712)))

(assert (=> bs!861370 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173522 lambda!173456))))

(declare-fun bs!861371 () Bool)

(assert (= bs!861371 (and d!1395801 b!4525711)))

(assert (=> bs!861371 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173522 lambda!173457))))

(declare-fun bs!861372 () Bool)

(assert (= bs!861372 (and d!1395801 d!1395775)))

(assert (=> bs!861372 (= (= lt!1702242 lt!1701256) (= lambda!173522 lambda!173507))))

(assert (=> bs!861365 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173522 lambda!173434))))

(declare-fun bs!861373 () Bool)

(assert (= bs!861373 (and d!1395801 b!4526013)))

(assert (=> bs!861373 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173522 lambda!173519))))

(declare-fun bs!861374 () Bool)

(assert (= bs!861374 (and d!1395801 b!4525898)))

(assert (=> bs!861374 (= (= lt!1702242 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173522 lambda!173497))))

(declare-fun bs!861375 () Bool)

(assert (= bs!861375 (and d!1395801 b!4525986)))

(assert (=> bs!861375 (= (= lt!1702242 lt!1702193) (= lambda!173522 lambda!173512))))

(declare-fun bs!861376 () Bool)

(assert (= bs!861376 (and d!1395801 b!4525155)))

(assert (=> bs!861376 (= (= lt!1702242 lt!1701249) (= lambda!173522 lambda!173381))))

(declare-fun bs!861377 () Bool)

(assert (= bs!861377 (and d!1395801 d!1395779)))

(assert (=> bs!861377 (= (= lt!1702242 lt!1702196) (= lambda!173522 lambda!173514))))

(declare-fun bs!861378 () Bool)

(assert (= bs!861378 (and d!1395801 d!1395239)))

(assert (=> bs!861378 (= (= lt!1702242 lt!1701673) (= lambda!173522 lambda!173390))))

(declare-fun bs!861379 () Bool)

(assert (= bs!861379 (and d!1395801 b!4524756)))

(assert (=> bs!861379 (not (= lambda!173522 lambda!173267))))

(declare-fun bs!861380 () Bool)

(assert (= bs!861380 (and d!1395801 b!4525559)))

(assert (=> bs!861380 (= (= lt!1702242 lt!1701854) (= lambda!173522 lambda!173427))))

(declare-fun bs!861381 () Bool)

(assert (= bs!861381 (and d!1395801 d!1395453)))

(assert (=> bs!861381 (= (= lt!1702242 lt!1701914) (= lambda!173522 lambda!173437))))

(declare-fun bs!861382 () Bool)

(assert (= bs!861382 (and d!1395801 b!4525897)))

(assert (=> bs!861382 (= (= lt!1702242 lt!1702135) (= lambda!173522 lambda!173499))))

(assert (=> bs!861373 (= (= lt!1702242 lt!1702239) (= lambda!173522 lambda!173520))))

(assert (=> bs!861380 (= (= lt!1702242 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173522 lambda!173426))))

(declare-fun bs!861383 () Bool)

(assert (= bs!861383 (and d!1395801 b!4525162)))

(assert (=> bs!861383 (= (= lt!1702242 lt!1701256) (= lambda!173522 lambda!173388))))

(declare-fun bs!861384 () Bool)

(assert (= bs!861384 (and d!1395801 d!1395611)))

(assert (=> bs!861384 (not (= lambda!173522 lambda!173468))))

(assert (=> bs!861382 (= (= lt!1702242 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173522 lambda!173498))))

(declare-fun bs!861386 () Bool)

(assert (= bs!861386 (and d!1395801 b!4525987)))

(assert (=> bs!861386 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173522 lambda!173509))))

(assert (=> bs!861375 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173522 lambda!173510))))

(declare-fun bs!861388 () Bool)

(assert (= bs!861388 (and d!1395801 b!4525664)))

(assert (=> bs!861388 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173522 lambda!173444))))

(assert (=> bs!861371 (= (= lt!1702242 lt!1701994) (= lambda!173522 lambda!173459))))

(declare-fun bs!861389 () Bool)

(assert (= bs!861389 (and d!1395801 d!1395501)))

(assert (=> bs!861389 (= (= lt!1702242 lt!1701949) (= lambda!173522 lambda!173450))))

(declare-fun bs!861390 () Bool)

(assert (= bs!861390 (and d!1395801 b!4525605)))

(assert (=> bs!861390 (= (= lt!1702242 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173522 lambda!173432))))

(assert (=> bs!861376 (= (= lt!1702242 lt!1701646) (= lambda!173522 lambda!173382))))

(declare-fun bs!861391 () Bool)

(assert (= bs!861391 (and d!1395801 d!1395243)))

(assert (=> bs!861391 (not (= lambda!173522 lambda!173394))))

(declare-fun bs!861392 () Bool)

(assert (= bs!861392 (and d!1395801 d!1395709)))

(assert (=> bs!861392 (= (= lt!1702242 lt!1702138) (= lambda!173522 lambda!173504))))

(assert (=> bs!861383 (= (= lt!1702242 lt!1701670) (= lambda!173522 lambda!173389))))

(declare-fun bs!861393 () Bool)

(assert (= bs!861393 (and d!1395801 d!1395547)))

(assert (=> bs!861393 (= (= lt!1702242 lt!1701997) (= lambda!173522 lambda!173462))))

(declare-fun bs!861394 () Bool)

(assert (= bs!861394 (and d!1395801 b!4525560)))

(assert (=> bs!861394 (= (= lt!1702242 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173522 lambda!173425))))

(declare-fun bs!861395 () Bool)

(assert (= bs!861395 (and d!1395801 d!1395683)))

(assert (=> bs!861395 (= (= lt!1702242 lt!1701646) (= lambda!173522 lambda!173493))))

(assert (=> d!1395801 true))

(declare-fun bm!315406 () Bool)

(declare-fun c!772610 () Bool)

(declare-fun call!315413 () Bool)

(assert (=> bm!315406 (= call!315413 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (ite c!772610 lambda!173518 lambda!173519)))))

(declare-fun b!4526010 () Bool)

(declare-fun e!2820005 () Bool)

(assert (=> b!4526010 (= e!2820005 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) lambda!173520))))

(declare-fun bm!315407 () Bool)

(declare-fun call!315411 () Unit!95830)

(assert (=> bm!315407 (= call!315411 (lemmaContainsAllItsOwnKeys!346 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))))))

(declare-fun lt!1702238 () ListMap!3609)

(declare-fun bm!315408 () Bool)

(declare-fun call!315412 () Bool)

(assert (=> bm!315408 (= call!315412 (forall!10287 (ite c!772610 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (toList!4347 lt!1702238)) (ite c!772610 lambda!173518 lambda!173520)))))

(declare-fun b!4526011 () Bool)

(declare-fun res!1884390 () Bool)

(declare-fun e!2820004 () Bool)

(assert (=> b!4526011 (=> (not res!1884390) (not e!2820004))))

(assert (=> b!4526011 (= res!1884390 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) lambda!173522))))

(declare-fun b!4526012 () Bool)

(assert (=> b!4526012 (= e!2820004 (invariantList!1025 (toList!4347 lt!1702242)))))

(declare-fun e!2820003 () ListMap!3609)

(assert (=> b!4526013 (= e!2820003 lt!1702239)))

(assert (=> b!4526013 (= lt!1702238 (+!1558 (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701246))))))))

(assert (=> b!4526013 (= lt!1702239 (addToMapMapFromBucket!697 (t!357760 (_2!28852 (h!56536 (toList!4348 lt!1701246)))) (+!1558 (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701246)))))))))

(declare-fun lt!1702236 () Unit!95830)

(assert (=> b!4526013 (= lt!1702236 call!315411)))

(assert (=> b!4526013 call!315413))

(declare-fun lt!1702247 () Unit!95830)

(assert (=> b!4526013 (= lt!1702247 lt!1702236)))

(assert (=> b!4526013 call!315412))

(declare-fun lt!1702246 () Unit!95830)

(declare-fun Unit!96050 () Unit!95830)

(assert (=> b!4526013 (= lt!1702246 Unit!96050)))

(assert (=> b!4526013 (forall!10287 (t!357760 (_2!28852 (h!56536 (toList!4348 lt!1701246)))) lambda!173520)))

(declare-fun lt!1702234 () Unit!95830)

(declare-fun Unit!96051 () Unit!95830)

(assert (=> b!4526013 (= lt!1702234 Unit!96051)))

(declare-fun lt!1702245 () Unit!95830)

(declare-fun Unit!96052 () Unit!95830)

(assert (=> b!4526013 (= lt!1702245 Unit!96052)))

(declare-fun lt!1702233 () Unit!95830)

(assert (=> b!4526013 (= lt!1702233 (forallContained!2539 (toList!4347 lt!1702238) lambda!173520 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701246))))))))

(assert (=> b!4526013 (contains!13418 lt!1702238 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701246))))))))

(declare-fun lt!1702228 () Unit!95830)

(declare-fun Unit!96053 () Unit!95830)

(assert (=> b!4526013 (= lt!1702228 Unit!96053)))

(assert (=> b!4526013 (contains!13418 lt!1702239 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701246))))))))

(declare-fun lt!1702230 () Unit!95830)

(declare-fun Unit!96054 () Unit!95830)

(assert (=> b!4526013 (= lt!1702230 Unit!96054)))

(assert (=> b!4526013 (forall!10287 (_2!28852 (h!56536 (toList!4348 lt!1701246))) lambda!173520)))

(declare-fun lt!1702231 () Unit!95830)

(declare-fun Unit!96055 () Unit!95830)

(assert (=> b!4526013 (= lt!1702231 Unit!96055)))

(assert (=> b!4526013 (forall!10287 (toList!4347 lt!1702238) lambda!173520)))

(declare-fun lt!1702235 () Unit!95830)

(declare-fun Unit!96056 () Unit!95830)

(assert (=> b!4526013 (= lt!1702235 Unit!96056)))

(declare-fun lt!1702232 () Unit!95830)

(declare-fun Unit!96057 () Unit!95830)

(assert (=> b!4526013 (= lt!1702232 Unit!96057)))

(declare-fun lt!1702241 () Unit!95830)

(assert (=> b!4526013 (= lt!1702241 (addForallContainsKeyThenBeforeAdding!346 (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702239 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701246))))) (_2!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701246)))))))))

(assert (=> b!4526013 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) lambda!173520)))

(declare-fun lt!1702244 () Unit!95830)

(assert (=> b!4526013 (= lt!1702244 lt!1702241)))

(assert (=> b!4526013 (forall!10287 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) lambda!173520)))

(declare-fun lt!1702240 () Unit!95830)

(declare-fun Unit!96058 () Unit!95830)

(assert (=> b!4526013 (= lt!1702240 Unit!96058)))

(declare-fun res!1884391 () Bool)

(assert (=> b!4526013 (= res!1884391 (forall!10287 (_2!28852 (h!56536 (toList!4348 lt!1701246))) lambda!173520))))

(assert (=> b!4526013 (=> (not res!1884391) (not e!2820005))))

(assert (=> b!4526013 e!2820005))

(declare-fun lt!1702237 () Unit!95830)

(declare-fun Unit!96059 () Unit!95830)

(assert (=> b!4526013 (= lt!1702237 Unit!96059)))

(assert (=> b!4526014 (= e!2820003 (extractMap!1226 (t!357761 (toList!4348 lt!1701246))))))

(declare-fun lt!1702229 () Unit!95830)

(assert (=> b!4526014 (= lt!1702229 call!315411)))

(assert (=> b!4526014 call!315412))

(declare-fun lt!1702243 () Unit!95830)

(assert (=> b!4526014 (= lt!1702243 lt!1702229)))

(assert (=> b!4526014 call!315413))

(declare-fun lt!1702227 () Unit!95830)

(declare-fun Unit!96060 () Unit!95830)

(assert (=> b!4526014 (= lt!1702227 Unit!96060)))

(assert (=> d!1395801 e!2820004))

(declare-fun res!1884392 () Bool)

(assert (=> d!1395801 (=> (not res!1884392) (not e!2820004))))

(assert (=> d!1395801 (= res!1884392 (forall!10287 (_2!28852 (h!56536 (toList!4348 lt!1701246))) lambda!173522))))

(assert (=> d!1395801 (= lt!1702242 e!2820003)))

(assert (=> d!1395801 (= c!772610 ((_ is Nil!50674) (_2!28852 (h!56536 (toList!4348 lt!1701246)))))))

(assert (=> d!1395801 (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lt!1701246))))))

(assert (=> d!1395801 (= (addToMapMapFromBucket!697 (_2!28852 (h!56536 (toList!4348 lt!1701246))) (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) lt!1702242)))

(assert (= (and d!1395801 c!772610) b!4526014))

(assert (= (and d!1395801 (not c!772610)) b!4526013))

(assert (= (and b!4526013 res!1884391) b!4526010))

(assert (= (or b!4526014 b!4526013) bm!315406))

(assert (= (or b!4526014 b!4526013) bm!315408))

(assert (= (or b!4526014 b!4526013) bm!315407))

(assert (= (and d!1395801 res!1884392) b!4526011))

(assert (= (and b!4526011 res!1884390) b!4526012))

(declare-fun m!5279299 () Bool)

(assert (=> b!4526012 m!5279299))

(declare-fun m!5279303 () Bool)

(assert (=> b!4526013 m!5279303))

(declare-fun m!5279307 () Bool)

(assert (=> b!4526013 m!5279307))

(declare-fun m!5279309 () Bool)

(assert (=> b!4526013 m!5279309))

(assert (=> b!4526013 m!5277199))

(declare-fun m!5279311 () Bool)

(assert (=> b!4526013 m!5279311))

(declare-fun m!5279313 () Bool)

(assert (=> b!4526013 m!5279313))

(assert (=> b!4526013 m!5279313))

(declare-fun m!5279315 () Bool)

(assert (=> b!4526013 m!5279315))

(declare-fun m!5279317 () Bool)

(assert (=> b!4526013 m!5279317))

(declare-fun m!5279319 () Bool)

(assert (=> b!4526013 m!5279319))

(assert (=> b!4526013 m!5277199))

(declare-fun m!5279325 () Bool)

(assert (=> b!4526013 m!5279325))

(assert (=> b!4526013 m!5279303))

(assert (=> b!4526013 m!5279311))

(declare-fun m!5279327 () Bool)

(assert (=> b!4526013 m!5279327))

(declare-fun m!5279329 () Bool)

(assert (=> bm!315406 m!5279329))

(assert (=> b!4526010 m!5279313))

(assert (=> bm!315407 m!5277199))

(declare-fun m!5279331 () Bool)

(assert (=> bm!315407 m!5279331))

(declare-fun m!5279333 () Bool)

(assert (=> bm!315408 m!5279333))

(declare-fun m!5279335 () Bool)

(assert (=> d!1395801 m!5279335))

(declare-fun m!5279337 () Bool)

(assert (=> d!1395801 m!5279337))

(declare-fun m!5279339 () Bool)

(assert (=> b!4526011 m!5279339))

(assert (=> b!4524974 d!1395801))

(declare-fun bs!861402 () Bool)

(declare-fun d!1395835 () Bool)

(assert (= bs!861402 (and d!1395835 d!1395129)))

(declare-fun lambda!173524 () Int)

(assert (=> bs!861402 (= lambda!173524 lambda!173332)))

(declare-fun bs!861404 () Bool)

(assert (= bs!861404 (and d!1395835 d!1395637)))

(assert (=> bs!861404 (= lambda!173524 lambda!173472)))

(declare-fun bs!861406 () Bool)

(assert (= bs!861406 (and d!1395835 b!4524756)))

(assert (=> bs!861406 (not (= lambda!173524 lambda!173266))))

(declare-fun bs!861408 () Bool)

(assert (= bs!861408 (and d!1395835 d!1395233)))

(assert (=> bs!861408 (not (= lambda!173524 lambda!173386))))

(declare-fun bs!861409 () Bool)

(assert (= bs!861409 (and d!1395835 d!1395089)))

(assert (=> bs!861409 (= lambda!173524 lambda!173318)))

(declare-fun bs!861411 () Bool)

(assert (= bs!861411 (and d!1395835 d!1395071)))

(assert (=> bs!861411 (= lambda!173524 lambda!173310)))

(declare-fun bs!861412 () Bool)

(assert (= bs!861412 (and d!1395835 d!1395099)))

(assert (=> bs!861412 (= lambda!173524 lambda!173319)))

(declare-fun bs!861415 () Bool)

(assert (= bs!861415 (and d!1395835 d!1395039)))

(assert (=> bs!861415 (= lambda!173524 lambda!173270)))

(declare-fun bs!861417 () Bool)

(assert (= bs!861417 (and d!1395835 d!1395797)))

(assert (=> bs!861417 (= lambda!173524 lambda!173517)))

(declare-fun bs!861419 () Bool)

(assert (= bs!861419 (and d!1395835 d!1395245)))

(assert (=> bs!861419 (= lambda!173524 lambda!173397)))

(declare-fun bs!861420 () Bool)

(assert (= bs!861420 (and d!1395835 start!448304)))

(assert (=> bs!861420 (= lambda!173524 lambda!173265)))

(declare-fun bs!861421 () Bool)

(assert (= bs!861421 (and d!1395835 d!1395141)))

(assert (=> bs!861421 (= lambda!173524 lambda!173337)))

(declare-fun bs!861422 () Bool)

(assert (= bs!861422 (and d!1395835 d!1395133)))

(assert (=> bs!861422 (= lambda!173524 lambda!173333)))

(declare-fun bs!861423 () Bool)

(assert (= bs!861423 (and d!1395835 d!1395509)))

(assert (=> bs!861423 (= lambda!173524 lambda!173452)))

(declare-fun bs!861424 () Bool)

(assert (= bs!861424 (and d!1395835 d!1395241)))

(assert (=> bs!861424 (= lambda!173524 lambda!173391)))

(declare-fun bs!861425 () Bool)

(assert (= bs!861425 (and d!1395835 d!1395429)))

(assert (=> bs!861425 (= lambda!173524 lambda!173429)))

(declare-fun bs!861426 () Bool)

(assert (= bs!861426 (and d!1395835 d!1395087)))

(assert (=> bs!861426 (= lambda!173524 lambda!173312)))

(declare-fun bs!861427 () Bool)

(assert (= bs!861427 (and d!1395835 d!1395115)))

(assert (=> bs!861427 (= lambda!173524 lambda!173327)))

(declare-fun bs!861428 () Bool)

(assert (= bs!861428 (and d!1395835 d!1395575)))

(assert (=> bs!861428 (= lambda!173524 lambda!173465)))

(declare-fun lt!1702271 () ListMap!3609)

(assert (=> d!1395835 (invariantList!1025 (toList!4347 lt!1702271))))

(declare-fun e!2820036 () ListMap!3609)

(assert (=> d!1395835 (= lt!1702271 e!2820036)))

(declare-fun c!772621 () Bool)

(assert (=> d!1395835 (= c!772621 ((_ is Cons!50675) (t!357761 (toList!4348 lt!1701246))))))

(assert (=> d!1395835 (forall!10285 (t!357761 (toList!4348 lt!1701246)) lambda!173524)))

(assert (=> d!1395835 (= (extractMap!1226 (t!357761 (toList!4348 lt!1701246))) lt!1702271)))

(declare-fun b!4526058 () Bool)

(assert (=> b!4526058 (= e!2820036 (addToMapMapFromBucket!697 (_2!28852 (h!56536 (t!357761 (toList!4348 lt!1701246)))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lt!1701246))))))))

(declare-fun b!4526059 () Bool)

(assert (=> b!4526059 (= e!2820036 (ListMap!3610 Nil!50674))))

(assert (= (and d!1395835 c!772621) b!4526058))

(assert (= (and d!1395835 (not c!772621)) b!4526059))

(declare-fun m!5279362 () Bool)

(assert (=> d!1395835 m!5279362))

(declare-fun m!5279365 () Bool)

(assert (=> d!1395835 m!5279365))

(declare-fun m!5279367 () Bool)

(assert (=> b!4526058 m!5279367))

(assert (=> b!4526058 m!5279367))

(declare-fun m!5279369 () Bool)

(assert (=> b!4526058 m!5279369))

(assert (=> b!4524974 d!1395835))

(declare-fun b!4526064 () Bool)

(declare-fun e!2820041 () Option!11137)

(assert (=> b!4526064 (= e!2820041 (Some!11136 (_2!28852 (h!56536 (toList!4348 lt!1701570)))))))

(declare-fun d!1395841 () Bool)

(declare-fun c!772622 () Bool)

(assert (=> d!1395841 (= c!772622 (and ((_ is Cons!50675) (toList!4348 lt!1701570)) (= (_1!28852 (h!56536 (toList!4348 lt!1701570))) (_1!28852 lt!1701243))))))

(assert (=> d!1395841 (= (getValueByKey!1109 (toList!4348 lt!1701570) (_1!28852 lt!1701243)) e!2820041)))

(declare-fun b!4526065 () Bool)

(declare-fun e!2820042 () Option!11137)

(assert (=> b!4526065 (= e!2820041 e!2820042)))

(declare-fun c!772623 () Bool)

(assert (=> b!4526065 (= c!772623 (and ((_ is Cons!50675) (toList!4348 lt!1701570)) (not (= (_1!28852 (h!56536 (toList!4348 lt!1701570))) (_1!28852 lt!1701243)))))))

(declare-fun b!4526066 () Bool)

(assert (=> b!4526066 (= e!2820042 (getValueByKey!1109 (t!357761 (toList!4348 lt!1701570)) (_1!28852 lt!1701243)))))

(declare-fun b!4526067 () Bool)

(assert (=> b!4526067 (= e!2820042 None!11136)))

(assert (= (and d!1395841 c!772622) b!4526064))

(assert (= (and d!1395841 (not c!772622)) b!4526065))

(assert (= (and b!4526065 c!772623) b!4526066))

(assert (= (and b!4526065 (not c!772623)) b!4526067))

(declare-fun m!5279375 () Bool)

(assert (=> b!4526066 m!5279375))

(assert (=> b!4525093 d!1395841))

(declare-fun d!1395845 () Bool)

(declare-fun res!1884420 () Bool)

(declare-fun e!2820043 () Bool)

(assert (=> d!1395845 (=> res!1884420 e!2820043)))

(assert (=> d!1395845 (= res!1884420 (and ((_ is Cons!50674) (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))) (= (_1!28851 (h!56535 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))))) key!3287)))))

(assert (=> d!1395845 (= (containsKey!1806 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477)))) key!3287) e!2820043)))

(declare-fun b!4526068 () Bool)

(declare-fun e!2820044 () Bool)

(assert (=> b!4526068 (= e!2820043 e!2820044)))

(declare-fun res!1884421 () Bool)

(assert (=> b!4526068 (=> (not res!1884421) (not e!2820044))))

(assert (=> b!4526068 (= res!1884421 ((_ is Cons!50674) (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))))))

(declare-fun b!4526069 () Bool)

(assert (=> b!4526069 (= e!2820044 (containsKey!1806 (t!357760 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))) key!3287))))

(assert (= (and d!1395845 (not res!1884420)) b!4526068))

(assert (= (and b!4526068 res!1884421) b!4526069))

(declare-fun m!5279377 () Bool)

(assert (=> b!4526069 m!5279377))

(assert (=> b!4524949 d!1395845))

(declare-fun b!4526070 () Bool)

(declare-fun e!2820045 () Option!11137)

(assert (=> b!4526070 (= e!2820045 (Some!11136 (_2!28852 (h!56536 (toList!4348 lt!1701537)))))))

(declare-fun d!1395847 () Bool)

(declare-fun c!772624 () Bool)

(assert (=> d!1395847 (= c!772624 (and ((_ is Cons!50675) (toList!4348 lt!1701537)) (= (_1!28852 (h!56536 (toList!4348 lt!1701537))) (_1!28852 lt!1701242))))))

(assert (=> d!1395847 (= (getValueByKey!1109 (toList!4348 lt!1701537) (_1!28852 lt!1701242)) e!2820045)))

(declare-fun b!4526071 () Bool)

(declare-fun e!2820046 () Option!11137)

(assert (=> b!4526071 (= e!2820045 e!2820046)))

(declare-fun c!772625 () Bool)

(assert (=> b!4526071 (= c!772625 (and ((_ is Cons!50675) (toList!4348 lt!1701537)) (not (= (_1!28852 (h!56536 (toList!4348 lt!1701537))) (_1!28852 lt!1701242)))))))

(declare-fun b!4526072 () Bool)

(assert (=> b!4526072 (= e!2820046 (getValueByKey!1109 (t!357761 (toList!4348 lt!1701537)) (_1!28852 lt!1701242)))))

(declare-fun b!4526073 () Bool)

(assert (=> b!4526073 (= e!2820046 None!11136)))

(assert (= (and d!1395847 c!772624) b!4526070))

(assert (= (and d!1395847 (not c!772624)) b!4526071))

(assert (= (and b!4526071 c!772625) b!4526072))

(assert (= (and b!4526071 (not c!772625)) b!4526073))

(declare-fun m!5279379 () Bool)

(assert (=> b!4526072 m!5279379))

(assert (=> b!4525022 d!1395847))

(declare-fun d!1395849 () Bool)

(declare-fun lt!1702273 () Bool)

(assert (=> d!1395849 (= lt!1702273 (select (content!8383 (keys!17612 lt!1701248)) key!3287))))

(declare-fun e!2820047 () Bool)

(assert (=> d!1395849 (= lt!1702273 e!2820047)))

(declare-fun res!1884423 () Bool)

(assert (=> d!1395849 (=> (not res!1884423) (not e!2820047))))

(assert (=> d!1395849 (= res!1884423 ((_ is Cons!50677) (keys!17612 lt!1701248)))))

(assert (=> d!1395849 (= (contains!13420 (keys!17612 lt!1701248) key!3287) lt!1702273)))

(declare-fun b!4526074 () Bool)

(declare-fun e!2820048 () Bool)

(assert (=> b!4526074 (= e!2820047 e!2820048)))

(declare-fun res!1884422 () Bool)

(assert (=> b!4526074 (=> res!1884422 e!2820048)))

(assert (=> b!4526074 (= res!1884422 (= (h!56540 (keys!17612 lt!1701248)) key!3287))))

(declare-fun b!4526075 () Bool)

(assert (=> b!4526075 (= e!2820048 (contains!13420 (t!357763 (keys!17612 lt!1701248)) key!3287))))

(assert (= (and d!1395849 res!1884423) b!4526074))

(assert (= (and b!4526074 (not res!1884422)) b!4526075))

(assert (=> d!1395849 m!5276971))

(assert (=> d!1395849 m!5277163))

(declare-fun m!5279381 () Bool)

(assert (=> d!1395849 m!5279381))

(declare-fun m!5279383 () Bool)

(assert (=> b!4526075 m!5279383))

(assert (=> b!4524909 d!1395849))

(declare-fun bs!861442 () Bool)

(declare-fun b!4526077 () Bool)

(assert (= bs!861442 (and b!4526077 b!4525495)))

(declare-fun lambda!173527 () Int)

(assert (=> bs!861442 (= lambda!173527 lambda!173423)))

(declare-fun bs!861444 () Bool)

(assert (= bs!861444 (and b!4526077 b!4525502)))

(assert (=> bs!861444 (= (= (toList!4347 lt!1701248) (t!357760 (toList!4347 lt!1701248))) (= lambda!173527 lambda!173421))))

(declare-fun bs!861446 () Bool)

(assert (= bs!861446 (and b!4526077 b!4525501)))

(assert (=> bs!861446 (= (= (toList!4347 lt!1701248) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173527 lambda!173422))))

(declare-fun bs!861448 () Bool)

(assert (= bs!861448 (and b!4526077 b!4525617)))

(assert (=> bs!861448 (= (= (toList!4347 lt!1701248) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173527 lambda!173442))))

(declare-fun bs!861450 () Bool)

(assert (= bs!861450 (and b!4526077 b!4525769)))

(assert (=> bs!861450 (= (= (toList!4347 lt!1701248) (toList!4347 lt!1701257)) (= lambda!173527 lambda!173469))))

(assert (=> b!4526077 true))

(declare-fun bs!861454 () Bool)

(declare-fun b!4526078 () Bool)

(assert (= bs!861454 (and b!4526078 b!4525499)))

(declare-fun lambda!173528 () Int)

(assert (=> bs!861454 (= lambda!173528 lambda!173424)))

(declare-fun bs!861456 () Bool)

(assert (= bs!861456 (and b!4526078 b!4525618)))

(assert (=> bs!861456 (= lambda!173528 lambda!173443)))

(declare-fun bs!861457 () Bool)

(assert (= bs!861457 (and b!4526078 b!4525770)))

(assert (=> bs!861457 (= lambda!173528 lambda!173470)))

(declare-fun d!1395851 () Bool)

(declare-fun e!2820049 () Bool)

(assert (=> d!1395851 e!2820049))

(declare-fun res!1884426 () Bool)

(assert (=> d!1395851 (=> (not res!1884426) (not e!2820049))))

(declare-fun lt!1702274 () List!50801)

(assert (=> d!1395851 (= res!1884426 (noDuplicate!752 lt!1702274))))

(assert (=> d!1395851 (= lt!1702274 (getKeysList!472 (toList!4347 lt!1701248)))))

(assert (=> d!1395851 (= (keys!17612 lt!1701248) lt!1702274)))

(declare-fun b!4526076 () Bool)

(declare-fun res!1884424 () Bool)

(assert (=> b!4526076 (=> (not res!1884424) (not e!2820049))))

(assert (=> b!4526076 (= res!1884424 (= (length!360 lt!1702274) (length!361 (toList!4347 lt!1701248))))))

(declare-fun res!1884425 () Bool)

(assert (=> b!4526077 (=> (not res!1884425) (not e!2820049))))

(assert (=> b!4526077 (= res!1884425 (forall!10289 lt!1702274 lambda!173527))))

(assert (=> b!4526078 (= e!2820049 (= (content!8383 lt!1702274) (content!8383 (map!11148 (toList!4347 lt!1701248) lambda!173528))))))

(assert (= (and d!1395851 res!1884426) b!4526076))

(assert (= (and b!4526076 res!1884424) b!4526077))

(assert (= (and b!4526077 res!1884425) b!4526078))

(declare-fun m!5279385 () Bool)

(assert (=> d!1395851 m!5279385))

(assert (=> d!1395851 m!5276969))

(declare-fun m!5279387 () Bool)

(assert (=> b!4526076 m!5279387))

(assert (=> b!4526076 m!5277935))

(declare-fun m!5279389 () Bool)

(assert (=> b!4526077 m!5279389))

(declare-fun m!5279391 () Bool)

(assert (=> b!4526078 m!5279391))

(declare-fun m!5279393 () Bool)

(assert (=> b!4526078 m!5279393))

(assert (=> b!4526078 m!5279393))

(declare-fun m!5279395 () Bool)

(assert (=> b!4526078 m!5279395))

(assert (=> b!4524909 d!1395851))

(declare-fun b!4526082 () Bool)

(declare-fun e!2820050 () List!50798)

(assert (=> b!4526082 (= e!2820050 Nil!50674)))

(declare-fun b!4526079 () Bool)

(declare-fun e!2820051 () List!50798)

(assert (=> b!4526079 (= e!2820051 (t!357760 (t!357760 lt!1701236)))))

(declare-fun d!1395853 () Bool)

(declare-fun lt!1702275 () List!50798)

(assert (=> d!1395853 (not (containsKey!1806 lt!1702275 key!3287))))

(assert (=> d!1395853 (= lt!1702275 e!2820051)))

(declare-fun c!772626 () Bool)

(assert (=> d!1395853 (= c!772626 (and ((_ is Cons!50674) (t!357760 lt!1701236)) (= (_1!28851 (h!56535 (t!357760 lt!1701236))) key!3287)))))

(assert (=> d!1395853 (noDuplicateKeys!1170 (t!357760 lt!1701236))))

(assert (=> d!1395853 (= (removePairForKey!797 (t!357760 lt!1701236) key!3287) lt!1702275)))

(declare-fun b!4526080 () Bool)

(assert (=> b!4526080 (= e!2820051 e!2820050)))

(declare-fun c!772627 () Bool)

(assert (=> b!4526080 (= c!772627 ((_ is Cons!50674) (t!357760 lt!1701236)))))

(declare-fun b!4526081 () Bool)

(assert (=> b!4526081 (= e!2820050 (Cons!50674 (h!56535 (t!357760 lt!1701236)) (removePairForKey!797 (t!357760 (t!357760 lt!1701236)) key!3287)))))

(assert (= (and d!1395853 c!772626) b!4526079))

(assert (= (and d!1395853 (not c!772626)) b!4526080))

(assert (= (and b!4526080 c!772627) b!4526081))

(assert (= (and b!4526080 (not c!772627)) b!4526082))

(declare-fun m!5279397 () Bool)

(assert (=> d!1395853 m!5279397))

(declare-fun m!5279399 () Bool)

(assert (=> d!1395853 m!5279399))

(declare-fun m!5279401 () Bool)

(assert (=> b!4526081 m!5279401))

(assert (=> b!4525183 d!1395853))

(assert (=> b!4525092 d!1395579))

(assert (=> b!4525092 d!1395421))

(assert (=> b!4524914 d!1395849))

(assert (=> b!4524914 d!1395851))

(declare-fun d!1395855 () Bool)

(declare-fun e!2820052 () Bool)

(assert (=> d!1395855 e!2820052))

(declare-fun res!1884427 () Bool)

(assert (=> d!1395855 (=> res!1884427 e!2820052)))

(declare-fun lt!1702279 () Bool)

(assert (=> d!1395855 (= res!1884427 (not lt!1702279))))

(declare-fun lt!1702277 () Bool)

(assert (=> d!1395855 (= lt!1702279 lt!1702277)))

(declare-fun lt!1702278 () Unit!95830)

(declare-fun e!2820053 () Unit!95830)

(assert (=> d!1395855 (= lt!1702278 e!2820053)))

(declare-fun c!772628 () Bool)

(assert (=> d!1395855 (= c!772628 lt!1702277)))

(assert (=> d!1395855 (= lt!1702277 (containsKey!1810 (toList!4348 lm!1477) (hash!2837 hashF!1107 key!3287)))))

(assert (=> d!1395855 (= (contains!13417 lm!1477 (hash!2837 hashF!1107 key!3287)) lt!1702279)))

(declare-fun b!4526083 () Bool)

(declare-fun lt!1702276 () Unit!95830)

(assert (=> b!4526083 (= e!2820053 lt!1702276)))

(assert (=> b!4526083 (= lt!1702276 (lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (toList!4348 lm!1477) (hash!2837 hashF!1107 key!3287)))))

(assert (=> b!4526083 (isDefined!8424 (getValueByKey!1109 (toList!4348 lm!1477) (hash!2837 hashF!1107 key!3287)))))

(declare-fun b!4526084 () Bool)

(declare-fun Unit!96061 () Unit!95830)

(assert (=> b!4526084 (= e!2820053 Unit!96061)))

(declare-fun b!4526085 () Bool)

(assert (=> b!4526085 (= e!2820052 (isDefined!8424 (getValueByKey!1109 (toList!4348 lm!1477) (hash!2837 hashF!1107 key!3287))))))

(assert (= (and d!1395855 c!772628) b!4526083))

(assert (= (and d!1395855 (not c!772628)) b!4526084))

(assert (= (and d!1395855 (not res!1884427)) b!4526085))

(assert (=> d!1395855 m!5276673))

(declare-fun m!5279407 () Bool)

(assert (=> d!1395855 m!5279407))

(assert (=> b!4526083 m!5276673))

(declare-fun m!5279409 () Bool)

(assert (=> b!4526083 m!5279409))

(assert (=> b!4526083 m!5276673))

(declare-fun m!5279411 () Bool)

(assert (=> b!4526083 m!5279411))

(assert (=> b!4526083 m!5279411))

(declare-fun m!5279413 () Bool)

(assert (=> b!4526083 m!5279413))

(assert (=> b!4526085 m!5276673))

(assert (=> b!4526085 m!5279411))

(assert (=> b!4526085 m!5279411))

(assert (=> b!4526085 m!5279413))

(assert (=> d!1395245 d!1395855))

(assert (=> d!1395245 d!1395235))

(declare-fun d!1395861 () Bool)

(assert (=> d!1395861 (contains!13417 lm!1477 (hash!2837 hashF!1107 key!3287))))

(assert (=> d!1395861 true))

(declare-fun _$27!1248 () Unit!95830)

(assert (=> d!1395861 (= (choose!29626 lm!1477 key!3287 hashF!1107) _$27!1248)))

(declare-fun bs!861467 () Bool)

(assert (= bs!861467 d!1395861))

(assert (=> bs!861467 m!5276673))

(assert (=> bs!861467 m!5276673))

(assert (=> bs!861467 m!5277549))

(assert (=> d!1395245 d!1395861))

(declare-fun d!1395867 () Bool)

(declare-fun res!1884433 () Bool)

(declare-fun e!2820064 () Bool)

(assert (=> d!1395867 (=> res!1884433 e!2820064)))

(assert (=> d!1395867 (= res!1884433 ((_ is Nil!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395867 (= (forall!10285 (toList!4348 lm!1477) lambda!173397) e!2820064)))

(declare-fun b!4526101 () Bool)

(declare-fun e!2820065 () Bool)

(assert (=> b!4526101 (= e!2820064 e!2820065)))

(declare-fun res!1884434 () Bool)

(assert (=> b!4526101 (=> (not res!1884434) (not e!2820065))))

(assert (=> b!4526101 (= res!1884434 (dynLambda!21175 lambda!173397 (h!56536 (toList!4348 lm!1477))))))

(declare-fun b!4526102 () Bool)

(assert (=> b!4526102 (= e!2820065 (forall!10285 (t!357761 (toList!4348 lm!1477)) lambda!173397))))

(assert (= (and d!1395867 (not res!1884433)) b!4526101))

(assert (= (and b!4526101 res!1884434) b!4526102))

(declare-fun b_lambda!155753 () Bool)

(assert (=> (not b_lambda!155753) (not b!4526101)))

(declare-fun m!5279433 () Bool)

(assert (=> b!4526101 m!5279433))

(declare-fun m!5279435 () Bool)

(assert (=> b!4526102 m!5279435))

(assert (=> d!1395245 d!1395867))

(declare-fun d!1395869 () Bool)

(declare-fun res!1884435 () Bool)

(declare-fun e!2820066 () Bool)

(assert (=> d!1395869 (=> res!1884435 e!2820066)))

(assert (=> d!1395869 (= res!1884435 (not ((_ is Cons!50674) (t!357760 (_2!28852 lt!1701242)))))))

(assert (=> d!1395869 (= (noDuplicateKeys!1170 (t!357760 (_2!28852 lt!1701242))) e!2820066)))

(declare-fun b!4526103 () Bool)

(declare-fun e!2820067 () Bool)

(assert (=> b!4526103 (= e!2820066 e!2820067)))

(declare-fun res!1884436 () Bool)

(assert (=> b!4526103 (=> (not res!1884436) (not e!2820067))))

(assert (=> b!4526103 (= res!1884436 (not (containsKey!1806 (t!357760 (t!357760 (_2!28852 lt!1701242))) (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))))

(declare-fun b!4526104 () Bool)

(assert (=> b!4526104 (= e!2820067 (noDuplicateKeys!1170 (t!357760 (t!357760 (_2!28852 lt!1701242)))))))

(assert (= (and d!1395869 (not res!1884435)) b!4526103))

(assert (= (and b!4526103 res!1884436) b!4526104))

(declare-fun m!5279437 () Bool)

(assert (=> b!4526103 m!5279437))

(declare-fun m!5279439 () Bool)

(assert (=> b!4526104 m!5279439))

(assert (=> b!4524798 d!1395869))

(declare-fun d!1395871 () Bool)

(declare-fun res!1884437 () Bool)

(declare-fun e!2820068 () Bool)

(assert (=> d!1395871 (=> res!1884437 e!2820068)))

(assert (=> d!1395871 (= res!1884437 ((_ is Nil!50674) (_2!28852 lt!1701242)))))

(assert (=> d!1395871 (= (forall!10287 (_2!28852 lt!1701242) lambda!173390) e!2820068)))

(declare-fun b!4526105 () Bool)

(declare-fun e!2820069 () Bool)

(assert (=> b!4526105 (= e!2820068 e!2820069)))

(declare-fun res!1884438 () Bool)

(assert (=> b!4526105 (=> (not res!1884438) (not e!2820069))))

(assert (=> b!4526105 (= res!1884438 (dynLambda!21177 lambda!173390 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun b!4526106 () Bool)

(assert (=> b!4526106 (= e!2820069 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173390))))

(assert (= (and d!1395871 (not res!1884437)) b!4526105))

(assert (= (and b!4526105 res!1884438) b!4526106))

(declare-fun b_lambda!155755 () Bool)

(assert (=> (not b_lambda!155755) (not b!4526105)))

(declare-fun m!5279441 () Bool)

(assert (=> b!4526105 m!5279441))

(declare-fun m!5279443 () Bool)

(assert (=> b!4526106 m!5279443))

(assert (=> d!1395239 d!1395871))

(assert (=> d!1395239 d!1395043))

(declare-fun d!1395873 () Bool)

(assert (=> d!1395873 (= (invariantList!1025 (toList!4347 lt!1701484)) (noDuplicatedKeys!266 (toList!4347 lt!1701484)))))

(declare-fun bs!861468 () Bool)

(assert (= bs!861468 d!1395873))

(declare-fun m!5279445 () Bool)

(assert (=> bs!861468 m!5279445))

(assert (=> d!1395129 d!1395873))

(declare-fun d!1395875 () Bool)

(declare-fun res!1884439 () Bool)

(declare-fun e!2820070 () Bool)

(assert (=> d!1395875 (=> res!1884439 e!2820070)))

(assert (=> d!1395875 (= res!1884439 ((_ is Nil!50675) (toList!4348 (+!1556 lt!1701251 lt!1701242))))))

(assert (=> d!1395875 (= (forall!10285 (toList!4348 (+!1556 lt!1701251 lt!1701242)) lambda!173332) e!2820070)))

(declare-fun b!4526107 () Bool)

(declare-fun e!2820071 () Bool)

(assert (=> b!4526107 (= e!2820070 e!2820071)))

(declare-fun res!1884440 () Bool)

(assert (=> b!4526107 (=> (not res!1884440) (not e!2820071))))

(assert (=> b!4526107 (= res!1884440 (dynLambda!21175 lambda!173332 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))))))

(declare-fun b!4526108 () Bool)

(assert (=> b!4526108 (= e!2820071 (forall!10285 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))) lambda!173332))))

(assert (= (and d!1395875 (not res!1884439)) b!4526107))

(assert (= (and b!4526107 res!1884440) b!4526108))

(declare-fun b_lambda!155757 () Bool)

(assert (=> (not b_lambda!155757) (not b!4526107)))

(declare-fun m!5279447 () Bool)

(assert (=> b!4526107 m!5279447))

(declare-fun m!5279449 () Bool)

(assert (=> b!4526108 m!5279449))

(assert (=> d!1395129 d!1395875))

(declare-fun b!4526109 () Bool)

(declare-fun e!2820075 () List!50801)

(assert (=> b!4526109 (= e!2820075 (getKeysList!472 (toList!4347 (extractMap!1226 (toList!4348 lt!1701251)))))))

(declare-fun b!4526110 () Bool)

(assert (=> b!4526110 false))

(declare-fun lt!1702292 () Unit!95830)

(declare-fun lt!1702290 () Unit!95830)

(assert (=> b!4526110 (= lt!1702292 lt!1702290)))

(assert (=> b!4526110 (containsKey!1808 (toList!4347 (extractMap!1226 (toList!4348 lt!1701251))) key!3287)))

(assert (=> b!4526110 (= lt!1702290 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 (extractMap!1226 (toList!4348 lt!1701251))) key!3287))))

(declare-fun e!2820077 () Unit!95830)

(declare-fun Unit!96070 () Unit!95830)

(assert (=> b!4526110 (= e!2820077 Unit!96070)))

(declare-fun b!4526111 () Bool)

(declare-fun e!2820073 () Bool)

(assert (=> b!4526111 (= e!2820073 (contains!13420 (keys!17612 (extractMap!1226 (toList!4348 lt!1701251))) key!3287))))

(declare-fun b!4526112 () Bool)

(declare-fun e!2820074 () Bool)

(assert (=> b!4526112 (= e!2820074 e!2820073)))

(declare-fun res!1884443 () Bool)

(assert (=> b!4526112 (=> (not res!1884443) (not e!2820073))))

(assert (=> b!4526112 (= res!1884443 (isDefined!8420 (getValueByKey!1107 (toList!4347 (extractMap!1226 (toList!4348 lt!1701251))) key!3287)))))

(declare-fun b!4526113 () Bool)

(declare-fun Unit!96071 () Unit!95830)

(assert (=> b!4526113 (= e!2820077 Unit!96071)))

(declare-fun b!4526114 () Bool)

(declare-fun e!2820072 () Unit!95830)

(assert (=> b!4526114 (= e!2820072 e!2820077)))

(declare-fun c!772636 () Bool)

(declare-fun call!315417 () Bool)

(assert (=> b!4526114 (= c!772636 call!315417)))

(declare-fun d!1395877 () Bool)

(assert (=> d!1395877 e!2820074))

(declare-fun res!1884442 () Bool)

(assert (=> d!1395877 (=> res!1884442 e!2820074)))

(declare-fun e!2820076 () Bool)

(assert (=> d!1395877 (= res!1884442 e!2820076)))

(declare-fun res!1884441 () Bool)

(assert (=> d!1395877 (=> (not res!1884441) (not e!2820076))))

(declare-fun lt!1702289 () Bool)

(assert (=> d!1395877 (= res!1884441 (not lt!1702289))))

(declare-fun lt!1702291 () Bool)

(assert (=> d!1395877 (= lt!1702289 lt!1702291)))

(declare-fun lt!1702288 () Unit!95830)

(assert (=> d!1395877 (= lt!1702288 e!2820072)))

(declare-fun c!772634 () Bool)

(assert (=> d!1395877 (= c!772634 lt!1702291)))

(assert (=> d!1395877 (= lt!1702291 (containsKey!1808 (toList!4347 (extractMap!1226 (toList!4348 lt!1701251))) key!3287))))

(assert (=> d!1395877 (= (contains!13418 (extractMap!1226 (toList!4348 lt!1701251)) key!3287) lt!1702289)))

(declare-fun b!4526115 () Bool)

(declare-fun lt!1702294 () Unit!95830)

(assert (=> b!4526115 (= e!2820072 lt!1702294)))

(declare-fun lt!1702295 () Unit!95830)

(assert (=> b!4526115 (= lt!1702295 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 (extractMap!1226 (toList!4348 lt!1701251))) key!3287))))

(assert (=> b!4526115 (isDefined!8420 (getValueByKey!1107 (toList!4347 (extractMap!1226 (toList!4348 lt!1701251))) key!3287))))

(declare-fun lt!1702293 () Unit!95830)

(assert (=> b!4526115 (= lt!1702293 lt!1702295)))

(assert (=> b!4526115 (= lt!1702294 (lemmaInListThenGetKeysListContains!468 (toList!4347 (extractMap!1226 (toList!4348 lt!1701251))) key!3287))))

(assert (=> b!4526115 call!315417))

(declare-fun b!4526116 () Bool)

(assert (=> b!4526116 (= e!2820076 (not (contains!13420 (keys!17612 (extractMap!1226 (toList!4348 lt!1701251))) key!3287)))))

(declare-fun b!4526117 () Bool)

(assert (=> b!4526117 (= e!2820075 (keys!17612 (extractMap!1226 (toList!4348 lt!1701251))))))

(declare-fun bm!315412 () Bool)

(assert (=> bm!315412 (= call!315417 (contains!13420 e!2820075 key!3287))))

(declare-fun c!772635 () Bool)

(assert (=> bm!315412 (= c!772635 c!772634)))

(assert (= (and d!1395877 c!772634) b!4526115))

(assert (= (and d!1395877 (not c!772634)) b!4526114))

(assert (= (and b!4526114 c!772636) b!4526110))

(assert (= (and b!4526114 (not c!772636)) b!4526113))

(assert (= (or b!4526115 b!4526114) bm!315412))

(assert (= (and bm!315412 c!772635) b!4526109))

(assert (= (and bm!315412 (not c!772635)) b!4526117))

(assert (= (and d!1395877 res!1884441) b!4526116))

(assert (= (and d!1395877 (not res!1884442)) b!4526112))

(assert (= (and b!4526112 res!1884443) b!4526111))

(declare-fun m!5279451 () Bool)

(assert (=> bm!315412 m!5279451))

(declare-fun m!5279453 () Bool)

(assert (=> b!4526112 m!5279453))

(assert (=> b!4526112 m!5279453))

(declare-fun m!5279455 () Bool)

(assert (=> b!4526112 m!5279455))

(declare-fun m!5279457 () Bool)

(assert (=> b!4526109 m!5279457))

(assert (=> b!4526117 m!5276771))

(assert (=> b!4526117 m!5278665))

(declare-fun m!5279459 () Bool)

(assert (=> b!4526110 m!5279459))

(declare-fun m!5279461 () Bool)

(assert (=> b!4526110 m!5279461))

(declare-fun m!5279463 () Bool)

(assert (=> b!4526115 m!5279463))

(assert (=> b!4526115 m!5279453))

(assert (=> b!4526115 m!5279453))

(assert (=> b!4526115 m!5279455))

(declare-fun m!5279465 () Bool)

(assert (=> b!4526115 m!5279465))

(assert (=> b!4526111 m!5276771))

(assert (=> b!4526111 m!5278665))

(assert (=> b!4526111 m!5278665))

(declare-fun m!5279467 () Bool)

(assert (=> b!4526111 m!5279467))

(assert (=> d!1395877 m!5279459))

(assert (=> b!4526116 m!5276771))

(assert (=> b!4526116 m!5278665))

(assert (=> b!4526116 m!5278665))

(assert (=> b!4526116 m!5279467))

(assert (=> d!1395089 d!1395877))

(assert (=> d!1395089 d!1395099))

(declare-fun d!1395879 () Bool)

(assert (=> d!1395879 (contains!13418 (extractMap!1226 (toList!4348 lt!1701251)) key!3287)))

(assert (=> d!1395879 true))

(declare-fun _$34!694 () Unit!95830)

(assert (=> d!1395879 (= (choose!29617 lt!1701251 key!3287 hashF!1107) _$34!694)))

(declare-fun bs!861469 () Bool)

(assert (= bs!861469 d!1395879))

(assert (=> bs!861469 m!5276771))

(assert (=> bs!861469 m!5276771))

(assert (=> bs!861469 m!5277045))

(assert (=> d!1395089 d!1395879))

(declare-fun d!1395881 () Bool)

(declare-fun res!1884444 () Bool)

(declare-fun e!2820078 () Bool)

(assert (=> d!1395881 (=> res!1884444 e!2820078)))

(assert (=> d!1395881 (= res!1884444 ((_ is Nil!50675) (toList!4348 lt!1701251)))))

(assert (=> d!1395881 (= (forall!10285 (toList!4348 lt!1701251) lambda!173318) e!2820078)))

(declare-fun b!4526118 () Bool)

(declare-fun e!2820079 () Bool)

(assert (=> b!4526118 (= e!2820078 e!2820079)))

(declare-fun res!1884445 () Bool)

(assert (=> b!4526118 (=> (not res!1884445) (not e!2820079))))

(assert (=> b!4526118 (= res!1884445 (dynLambda!21175 lambda!173318 (h!56536 (toList!4348 lt!1701251))))))

(declare-fun b!4526119 () Bool)

(assert (=> b!4526119 (= e!2820079 (forall!10285 (t!357761 (toList!4348 lt!1701251)) lambda!173318))))

(assert (= (and d!1395881 (not res!1884444)) b!4526118))

(assert (= (and b!4526118 res!1884445) b!4526119))

(declare-fun b_lambda!155759 () Bool)

(assert (=> (not b_lambda!155759) (not b!4526118)))

(declare-fun m!5279469 () Bool)

(assert (=> b!4526118 m!5279469))

(declare-fun m!5279471 () Bool)

(assert (=> b!4526119 m!5279471))

(assert (=> d!1395089 d!1395881))

(declare-fun d!1395883 () Bool)

(declare-fun choose!29643 (Hashable!5565 K!12065) (_ BitVec 64))

(assert (=> d!1395883 (= (hash!2841 hashF!1107 key!3287) (choose!29643 hashF!1107 key!3287))))

(declare-fun bs!861470 () Bool)

(assert (= bs!861470 d!1395883))

(declare-fun m!5279473 () Bool)

(assert (=> bs!861470 m!5279473))

(assert (=> d!1395235 d!1395883))

(assert (=> b!4524878 d!1395661))

(assert (=> b!4524878 d!1395663))

(declare-fun bs!861471 () Bool)

(declare-fun b!4526128 () Bool)

(assert (= bs!861471 (and b!4526128 b!4525495)))

(declare-fun lambda!173529 () Int)

(assert (=> bs!861471 (= (= (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (toList!4347 lt!1701248)) (= lambda!173529 lambda!173423))))

(declare-fun bs!861472 () Bool)

(assert (= bs!861472 (and b!4526128 b!4525502)))

(assert (=> bs!861472 (= (= (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 lt!1701248))) (= lambda!173529 lambda!173421))))

(declare-fun bs!861473 () Bool)

(assert (= bs!861473 (and b!4526128 b!4526077)))

(assert (=> bs!861473 (= (= (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (toList!4347 lt!1701248)) (= lambda!173529 lambda!173527))))

(declare-fun bs!861474 () Bool)

(assert (= bs!861474 (and b!4526128 b!4525501)))

(assert (=> bs!861474 (= (= (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173529 lambda!173422))))

(declare-fun bs!861475 () Bool)

(assert (= bs!861475 (and b!4526128 b!4525617)))

(assert (=> bs!861475 (= (= (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173529 lambda!173442))))

(declare-fun bs!861476 () Bool)

(assert (= bs!861476 (and b!4526128 b!4525769)))

(assert (=> bs!861476 (= (= (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (toList!4347 lt!1701257)) (= lambda!173529 lambda!173469))))

(assert (=> b!4526128 true))

(declare-fun bs!861477 () Bool)

(declare-fun b!4526127 () Bool)

(assert (= bs!861477 (and b!4526127 b!4525495)))

(declare-fun lambda!173530 () Int)

(assert (=> bs!861477 (= (= (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (toList!4347 lt!1701248)) (= lambda!173530 lambda!173423))))

(declare-fun bs!861478 () Bool)

(assert (= bs!861478 (and b!4526127 b!4525502)))

(assert (=> bs!861478 (= (= (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (t!357760 (toList!4347 lt!1701248))) (= lambda!173530 lambda!173421))))

(declare-fun bs!861479 () Bool)

(assert (= bs!861479 (and b!4526127 b!4526128)))

(assert (=> bs!861479 (= (= (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (= lambda!173530 lambda!173529))))

(declare-fun bs!861480 () Bool)

(assert (= bs!861480 (and b!4526127 b!4526077)))

(assert (=> bs!861480 (= (= (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (toList!4347 lt!1701248)) (= lambda!173530 lambda!173527))))

(declare-fun bs!861481 () Bool)

(assert (= bs!861481 (and b!4526127 b!4525501)))

(assert (=> bs!861481 (= (= (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173530 lambda!173422))))

(declare-fun bs!861482 () Bool)

(assert (= bs!861482 (and b!4526127 b!4525617)))

(assert (=> bs!861482 (= (= (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173530 lambda!173442))))

(declare-fun bs!861483 () Bool)

(assert (= bs!861483 (and b!4526127 b!4525769)))

(assert (=> bs!861483 (= (= (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (toList!4347 lt!1701257)) (= lambda!173530 lambda!173469))))

(assert (=> b!4526127 true))

(declare-fun bs!861484 () Bool)

(declare-fun b!4526121 () Bool)

(assert (= bs!861484 (and b!4526121 b!4525495)))

(declare-fun lambda!173531 () Int)

(assert (=> bs!861484 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (toList!4347 lt!1701248)) (= lambda!173531 lambda!173423))))

(declare-fun bs!861485 () Bool)

(assert (= bs!861485 (and b!4526121 b!4525502)))

(assert (=> bs!861485 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (t!357760 (toList!4347 lt!1701248))) (= lambda!173531 lambda!173421))))

(declare-fun bs!861486 () Bool)

(assert (= bs!861486 (and b!4526121 b!4526128)))

(assert (=> bs!861486 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (= lambda!173531 lambda!173529))))

(declare-fun bs!861487 () Bool)

(assert (= bs!861487 (and b!4526121 b!4526077)))

(assert (=> bs!861487 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (toList!4347 lt!1701248)) (= lambda!173531 lambda!173527))))

(declare-fun bs!861488 () Bool)

(assert (= bs!861488 (and b!4526121 b!4525617)))

(assert (=> bs!861488 (= lambda!173531 lambda!173442)))

(declare-fun bs!861489 () Bool)

(assert (= bs!861489 (and b!4526121 b!4525769)))

(assert (=> bs!861489 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (toList!4347 lt!1701257)) (= lambda!173531 lambda!173469))))

(declare-fun bs!861490 () Bool)

(assert (= bs!861490 (and b!4526121 b!4526127)))

(assert (=> bs!861490 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))) (= lambda!173531 lambda!173530))))

(declare-fun bs!861491 () Bool)

(assert (= bs!861491 (and b!4526121 b!4525501)))

(assert (=> bs!861491 (= (= (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173531 lambda!173422))))

(assert (=> b!4526121 true))

(declare-fun bs!861492 () Bool)

(declare-fun b!4526125 () Bool)

(assert (= bs!861492 (and b!4526125 b!4525499)))

(declare-fun lambda!173532 () Int)

(assert (=> bs!861492 (= lambda!173532 lambda!173424)))

(declare-fun bs!861493 () Bool)

(assert (= bs!861493 (and b!4526125 b!4525618)))

(assert (=> bs!861493 (= lambda!173532 lambda!173443)))

(declare-fun bs!861494 () Bool)

(assert (= bs!861494 (and b!4526125 b!4525770)))

(assert (=> bs!861494 (= lambda!173532 lambda!173470)))

(declare-fun bs!861495 () Bool)

(assert (= bs!861495 (and b!4526125 b!4526078)))

(assert (=> bs!861495 (= lambda!173532 lambda!173528)))

(declare-fun b!4526120 () Bool)

(declare-fun e!2820081 () Unit!95830)

(declare-fun Unit!96077 () Unit!95830)

(assert (=> b!4526120 (= e!2820081 Unit!96077)))

(declare-fun res!1884447 () Bool)

(declare-fun e!2820083 () Bool)

(assert (=> b!4526121 (=> (not res!1884447) (not e!2820083))))

(declare-fun lt!1702299 () List!50801)

(assert (=> b!4526121 (= res!1884447 (forall!10289 lt!1702299 lambda!173531))))

(declare-fun b!4526122 () Bool)

(declare-fun res!1884446 () Bool)

(assert (=> b!4526122 (=> (not res!1884446) (not e!2820083))))

(assert (=> b!4526122 (= res!1884446 (= (length!360 lt!1702299) (length!361 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))))

(declare-fun b!4526124 () Bool)

(declare-fun e!2820080 () List!50801)

(assert (=> b!4526124 (= e!2820080 Nil!50677)))

(assert (=> b!4526125 (= e!2820083 (= (content!8383 lt!1702299) (content!8383 (map!11148 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) lambda!173532))))))

(declare-fun b!4526126 () Bool)

(declare-fun e!2820082 () Unit!95830)

(declare-fun Unit!96078 () Unit!95830)

(assert (=> b!4526126 (= e!2820082 Unit!96078)))

(declare-fun b!4526123 () Bool)

(assert (=> b!4526123 false))

(declare-fun Unit!96079 () Unit!95830)

(assert (=> b!4526123 (= e!2820082 Unit!96079)))

(declare-fun d!1395885 () Bool)

(assert (=> d!1395885 e!2820083))

(declare-fun res!1884448 () Bool)

(assert (=> d!1395885 (=> (not res!1884448) (not e!2820083))))

(assert (=> d!1395885 (= res!1884448 (noDuplicate!752 lt!1702299))))

(assert (=> d!1395885 (= lt!1702299 e!2820080)))

(declare-fun c!772637 () Bool)

(assert (=> d!1395885 (= c!772637 ((_ is Cons!50674) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))

(assert (=> d!1395885 (invariantList!1025 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))

(assert (=> d!1395885 (= (getKeysList!472 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) lt!1702299)))

(assert (=> b!4526127 (= e!2820080 (Cons!50677 (_1!28851 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (getKeysList!472 (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))))

(declare-fun c!772638 () Bool)

(assert (=> b!4526127 (= c!772638 (containsKey!1808 (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (_1!28851 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))))

(declare-fun lt!1702298 () Unit!95830)

(assert (=> b!4526127 (= lt!1702298 e!2820082)))

(declare-fun c!772639 () Bool)

(assert (=> b!4526127 (= c!772639 (contains!13420 (getKeysList!472 (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (_1!28851 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))))

(declare-fun lt!1702302 () Unit!95830)

(assert (=> b!4526127 (= lt!1702302 e!2820081)))

(declare-fun lt!1702296 () List!50801)

(assert (=> b!4526127 (= lt!1702296 (getKeysList!472 (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))))

(declare-fun lt!1702300 () Unit!95830)

(assert (=> b!4526127 (= lt!1702300 (lemmaForallContainsAddHeadPreserves!172 (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) lt!1702296 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))))

(assert (=> b!4526127 (forall!10289 lt!1702296 lambda!173530)))

(declare-fun lt!1702297 () Unit!95830)

(assert (=> b!4526127 (= lt!1702297 lt!1702300)))

(assert (=> b!4526128 false))

(declare-fun lt!1702301 () Unit!95830)

(assert (=> b!4526128 (= lt!1702301 (forallContained!2540 (getKeysList!472 (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) lambda!173529 (_1!28851 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))))))

(declare-fun Unit!96080 () Unit!95830)

(assert (=> b!4526128 (= e!2820081 Unit!96080)))

(assert (= (and d!1395885 c!772637) b!4526127))

(assert (= (and d!1395885 (not c!772637)) b!4526124))

(assert (= (and b!4526127 c!772638) b!4526123))

(assert (= (and b!4526127 (not c!772638)) b!4526126))

(assert (= (and b!4526127 c!772639) b!4526128))

(assert (= (and b!4526127 (not c!772639)) b!4526120))

(assert (= (and d!1395885 res!1884448) b!4526122))

(assert (= (and b!4526122 res!1884446) b!4526121))

(assert (= (and b!4526121 res!1884447) b!4526125))

(declare-fun m!5279475 () Bool)

(assert (=> b!4526122 m!5279475))

(assert (=> b!4526122 m!5278227))

(declare-fun m!5279477 () Bool)

(assert (=> b!4526125 m!5279477))

(declare-fun m!5279479 () Bool)

(assert (=> b!4526125 m!5279479))

(assert (=> b!4526125 m!5279479))

(declare-fun m!5279481 () Bool)

(assert (=> b!4526125 m!5279481))

(declare-fun m!5279483 () Bool)

(assert (=> b!4526127 m!5279483))

(declare-fun m!5279485 () Bool)

(assert (=> b!4526127 m!5279485))

(assert (=> b!4526127 m!5279485))

(declare-fun m!5279487 () Bool)

(assert (=> b!4526127 m!5279487))

(declare-fun m!5279489 () Bool)

(assert (=> b!4526127 m!5279489))

(declare-fun m!5279491 () Bool)

(assert (=> b!4526127 m!5279491))

(assert (=> b!4526128 m!5279485))

(assert (=> b!4526128 m!5279485))

(declare-fun m!5279493 () Bool)

(assert (=> b!4526128 m!5279493))

(declare-fun m!5279495 () Bool)

(assert (=> b!4526121 m!5279495))

(declare-fun m!5279497 () Bool)

(assert (=> d!1395885 m!5279497))

(assert (=> d!1395885 m!5277663))

(assert (=> b!4524916 d!1395885))

(declare-fun d!1395887 () Bool)

(declare-fun c!772642 () Bool)

(assert (=> d!1395887 (= c!772642 ((_ is Nil!50677) (keys!17612 lt!1701248)))))

(declare-fun e!2820086 () (InoxSet K!12065))

(assert (=> d!1395887 (= (content!8383 (keys!17612 lt!1701248)) e!2820086)))

(declare-fun b!4526133 () Bool)

(assert (=> b!4526133 (= e!2820086 ((as const (Array K!12065 Bool)) false))))

(declare-fun b!4526134 () Bool)

(assert (=> b!4526134 (= e!2820086 ((_ map or) (store ((as const (Array K!12065 Bool)) false) (h!56540 (keys!17612 lt!1701248)) true) (content!8383 (t!357763 (keys!17612 lt!1701248)))))))

(assert (= (and d!1395887 c!772642) b!4526133))

(assert (= (and d!1395887 (not c!772642)) b!4526134))

(declare-fun m!5279499 () Bool)

(assert (=> b!4526134 m!5279499))

(declare-fun m!5279501 () Bool)

(assert (=> b!4526134 m!5279501))

(assert (=> b!4524968 d!1395887))

(assert (=> b!4524968 d!1395851))

(declare-fun d!1395889 () Bool)

(declare-fun c!772643 () Bool)

(assert (=> d!1395889 (= c!772643 ((_ is Nil!50677) (keys!17612 lt!1701479)))))

(declare-fun e!2820087 () (InoxSet K!12065))

(assert (=> d!1395889 (= (content!8383 (keys!17612 lt!1701479)) e!2820087)))

(declare-fun b!4526135 () Bool)

(assert (=> b!4526135 (= e!2820087 ((as const (Array K!12065 Bool)) false))))

(declare-fun b!4526136 () Bool)

(assert (=> b!4526136 (= e!2820087 ((_ map or) (store ((as const (Array K!12065 Bool)) false) (h!56540 (keys!17612 lt!1701479)) true) (content!8383 (t!357763 (keys!17612 lt!1701479)))))))

(assert (= (and d!1395889 c!772643) b!4526135))

(assert (= (and d!1395889 (not c!772643)) b!4526136))

(declare-fun m!5279503 () Bool)

(assert (=> b!4526136 m!5279503))

(declare-fun m!5279505 () Bool)

(assert (=> b!4526136 m!5279505))

(assert (=> b!4524968 d!1395889))

(declare-fun bs!861496 () Bool)

(declare-fun b!4526138 () Bool)

(assert (= bs!861496 (and b!4526138 b!4525495)))

(declare-fun lambda!173533 () Int)

(assert (=> bs!861496 (= (= (toList!4347 lt!1701479) (toList!4347 lt!1701248)) (= lambda!173533 lambda!173423))))

(declare-fun bs!861497 () Bool)

(assert (= bs!861497 (and b!4526138 b!4525502)))

(assert (=> bs!861497 (= (= (toList!4347 lt!1701479) (t!357760 (toList!4347 lt!1701248))) (= lambda!173533 lambda!173421))))

(declare-fun bs!861498 () Bool)

(assert (= bs!861498 (and b!4526138 b!4526128)))

(assert (=> bs!861498 (= (= (toList!4347 lt!1701479) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (= lambda!173533 lambda!173529))))

(declare-fun bs!861499 () Bool)

(assert (= bs!861499 (and b!4526138 b!4526121)))

(assert (=> bs!861499 (= (= (toList!4347 lt!1701479) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173533 lambda!173531))))

(declare-fun bs!861500 () Bool)

(assert (= bs!861500 (and b!4526138 b!4526077)))

(assert (=> bs!861500 (= (= (toList!4347 lt!1701479) (toList!4347 lt!1701248)) (= lambda!173533 lambda!173527))))

(declare-fun bs!861501 () Bool)

(assert (= bs!861501 (and b!4526138 b!4525617)))

(assert (=> bs!861501 (= (= (toList!4347 lt!1701479) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173533 lambda!173442))))

(declare-fun bs!861502 () Bool)

(assert (= bs!861502 (and b!4526138 b!4525769)))

(assert (=> bs!861502 (= (= (toList!4347 lt!1701479) (toList!4347 lt!1701257)) (= lambda!173533 lambda!173469))))

(declare-fun bs!861503 () Bool)

(assert (= bs!861503 (and b!4526138 b!4526127)))

(assert (=> bs!861503 (= (= (toList!4347 lt!1701479) (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))) (= lambda!173533 lambda!173530))))

(declare-fun bs!861504 () Bool)

(assert (= bs!861504 (and b!4526138 b!4525501)))

(assert (=> bs!861504 (= (= (toList!4347 lt!1701479) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173533 lambda!173422))))

(assert (=> b!4526138 true))

(declare-fun bs!861505 () Bool)

(declare-fun b!4526139 () Bool)

(assert (= bs!861505 (and b!4526139 b!4525770)))

(declare-fun lambda!173534 () Int)

(assert (=> bs!861505 (= lambda!173534 lambda!173470)))

(declare-fun bs!861506 () Bool)

(assert (= bs!861506 (and b!4526139 b!4525499)))

(assert (=> bs!861506 (= lambda!173534 lambda!173424)))

(declare-fun bs!861507 () Bool)

(assert (= bs!861507 (and b!4526139 b!4526125)))

(assert (=> bs!861507 (= lambda!173534 lambda!173532)))

(declare-fun bs!861508 () Bool)

(assert (= bs!861508 (and b!4526139 b!4526078)))

(assert (=> bs!861508 (= lambda!173534 lambda!173528)))

(declare-fun bs!861509 () Bool)

(assert (= bs!861509 (and b!4526139 b!4525618)))

(assert (=> bs!861509 (= lambda!173534 lambda!173443)))

(declare-fun d!1395891 () Bool)

(declare-fun e!2820088 () Bool)

(assert (=> d!1395891 e!2820088))

(declare-fun res!1884451 () Bool)

(assert (=> d!1395891 (=> (not res!1884451) (not e!2820088))))

(declare-fun lt!1702303 () List!50801)

(assert (=> d!1395891 (= res!1884451 (noDuplicate!752 lt!1702303))))

(assert (=> d!1395891 (= lt!1702303 (getKeysList!472 (toList!4347 lt!1701479)))))

(assert (=> d!1395891 (= (keys!17612 lt!1701479) lt!1702303)))

(declare-fun b!4526137 () Bool)

(declare-fun res!1884449 () Bool)

(assert (=> b!4526137 (=> (not res!1884449) (not e!2820088))))

(assert (=> b!4526137 (= res!1884449 (= (length!360 lt!1702303) (length!361 (toList!4347 lt!1701479))))))

(declare-fun res!1884450 () Bool)

(assert (=> b!4526138 (=> (not res!1884450) (not e!2820088))))

(assert (=> b!4526138 (= res!1884450 (forall!10289 lt!1702303 lambda!173533))))

(assert (=> b!4526139 (= e!2820088 (= (content!8383 lt!1702303) (content!8383 (map!11148 (toList!4347 lt!1701479) lambda!173534))))))

(assert (= (and d!1395891 res!1884451) b!4526137))

(assert (= (and b!4526137 res!1884449) b!4526138))

(assert (= (and b!4526138 res!1884450) b!4526139))

(declare-fun m!5279507 () Bool)

(assert (=> d!1395891 m!5279507))

(declare-fun m!5279509 () Bool)

(assert (=> d!1395891 m!5279509))

(declare-fun m!5279511 () Bool)

(assert (=> b!4526137 m!5279511))

(declare-fun m!5279513 () Bool)

(assert (=> b!4526137 m!5279513))

(declare-fun m!5279515 () Bool)

(assert (=> b!4526138 m!5279515))

(declare-fun m!5279517 () Bool)

(assert (=> b!4526139 m!5279517))

(declare-fun m!5279519 () Bool)

(assert (=> b!4526139 m!5279519))

(assert (=> b!4526139 m!5279519))

(declare-fun m!5279521 () Bool)

(assert (=> b!4526139 m!5279521))

(assert (=> b!4524968 d!1395891))

(declare-fun bs!861510 () Bool)

(declare-fun d!1395893 () Bool)

(assert (= bs!861510 (and d!1395893 b!4525163)))

(declare-fun lambda!173535 () Int)

(assert (=> bs!861510 (= (= lt!1701249 lt!1701256) (= lambda!173535 lambda!173387))))

(declare-fun bs!861511 () Bool)

(assert (= bs!861511 (and d!1395893 b!4525663)))

(assert (=> bs!861511 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173535 lambda!173445))))

(declare-fun bs!861512 () Bool)

(assert (= bs!861512 (and d!1395893 b!4525604)))

(assert (=> bs!861512 (= (= lt!1701249 lt!1701911) (= lambda!173535 lambda!173435))))

(assert (=> bs!861511 (= (= lt!1701249 lt!1701946) (= lambda!173535 lambda!173447))))

(declare-fun bs!861513 () Bool)

(assert (= bs!861513 (and d!1395893 d!1395201)))

(assert (=> bs!861513 (= (= lt!1701249 lt!1701649) (= lambda!173535 lambda!173383))))

(declare-fun bs!861514 () Bool)

(assert (= bs!861514 (and d!1395893 b!4526014)))

(assert (=> bs!861514 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173535 lambda!173518))))

(declare-fun bs!861515 () Bool)

(assert (= bs!861515 (and d!1395893 b!4525156)))

(assert (=> bs!861515 (= lambda!173535 lambda!173380)))

(declare-fun bs!861516 () Bool)

(assert (= bs!861516 (and d!1395893 b!4525712)))

(assert (=> bs!861516 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173535 lambda!173456))))

(declare-fun bs!861517 () Bool)

(assert (= bs!861517 (and d!1395893 b!4525711)))

(assert (=> bs!861517 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173535 lambda!173457))))

(declare-fun bs!861518 () Bool)

(assert (= bs!861518 (and d!1395893 d!1395775)))

(assert (=> bs!861518 (= (= lt!1701249 lt!1701256) (= lambda!173535 lambda!173507))))

(assert (=> bs!861512 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173535 lambda!173434))))

(declare-fun bs!861519 () Bool)

(assert (= bs!861519 (and d!1395893 b!4526013)))

(assert (=> bs!861519 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173535 lambda!173519))))

(declare-fun bs!861520 () Bool)

(assert (= bs!861520 (and d!1395893 b!4525898)))

(assert (=> bs!861520 (= (= lt!1701249 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173535 lambda!173497))))

(declare-fun bs!861521 () Bool)

(assert (= bs!861521 (and d!1395893 b!4525986)))

(assert (=> bs!861521 (= (= lt!1701249 lt!1702193) (= lambda!173535 lambda!173512))))

(declare-fun bs!861522 () Bool)

(assert (= bs!861522 (and d!1395893 b!4525155)))

(assert (=> bs!861522 (= lambda!173535 lambda!173381)))

(declare-fun bs!861523 () Bool)

(assert (= bs!861523 (and d!1395893 d!1395779)))

(assert (=> bs!861523 (= (= lt!1701249 lt!1702196) (= lambda!173535 lambda!173514))))

(declare-fun bs!861524 () Bool)

(assert (= bs!861524 (and d!1395893 d!1395239)))

(assert (=> bs!861524 (= (= lt!1701249 lt!1701673) (= lambda!173535 lambda!173390))))

(declare-fun bs!861525 () Bool)

(assert (= bs!861525 (and d!1395893 b!4524756)))

(assert (=> bs!861525 (not (= lambda!173535 lambda!173267))))

(declare-fun bs!861526 () Bool)

(assert (= bs!861526 (and d!1395893 d!1395801)))

(assert (=> bs!861526 (= (= lt!1701249 lt!1702242) (= lambda!173535 lambda!173522))))

(declare-fun bs!861527 () Bool)

(assert (= bs!861527 (and d!1395893 d!1395423)))

(assert (=> bs!861527 (= (= lt!1701249 lt!1701860) (= lambda!173535 lambda!173428))))

(declare-fun bs!861528 () Bool)

(assert (= bs!861528 (and d!1395893 b!4525559)))

(assert (=> bs!861528 (= (= lt!1701249 lt!1701854) (= lambda!173535 lambda!173427))))

(declare-fun bs!861529 () Bool)

(assert (= bs!861529 (and d!1395893 d!1395453)))

(assert (=> bs!861529 (= (= lt!1701249 lt!1701914) (= lambda!173535 lambda!173437))))

(declare-fun bs!861530 () Bool)

(assert (= bs!861530 (and d!1395893 b!4525897)))

(assert (=> bs!861530 (= (= lt!1701249 lt!1702135) (= lambda!173535 lambda!173499))))

(assert (=> bs!861519 (= (= lt!1701249 lt!1702239) (= lambda!173535 lambda!173520))))

(assert (=> bs!861528 (= (= lt!1701249 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173535 lambda!173426))))

(declare-fun bs!861531 () Bool)

(assert (= bs!861531 (and d!1395893 b!4525162)))

(assert (=> bs!861531 (= (= lt!1701249 lt!1701256) (= lambda!173535 lambda!173388))))

(declare-fun bs!861532 () Bool)

(assert (= bs!861532 (and d!1395893 d!1395611)))

(assert (=> bs!861532 (not (= lambda!173535 lambda!173468))))

(assert (=> bs!861530 (= (= lt!1701249 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173535 lambda!173498))))

(declare-fun bs!861533 () Bool)

(assert (= bs!861533 (and d!1395893 b!4525987)))

(assert (=> bs!861533 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173535 lambda!173509))))

(assert (=> bs!861521 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173535 lambda!173510))))

(declare-fun bs!861534 () Bool)

(assert (= bs!861534 (and d!1395893 b!4525664)))

(assert (=> bs!861534 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173535 lambda!173444))))

(assert (=> bs!861517 (= (= lt!1701249 lt!1701994) (= lambda!173535 lambda!173459))))

(declare-fun bs!861535 () Bool)

(assert (= bs!861535 (and d!1395893 d!1395501)))

(assert (=> bs!861535 (= (= lt!1701249 lt!1701949) (= lambda!173535 lambda!173450))))

(declare-fun bs!861536 () Bool)

(assert (= bs!861536 (and d!1395893 b!4525605)))

(assert (=> bs!861536 (= (= lt!1701249 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173535 lambda!173432))))

(assert (=> bs!861522 (= (= lt!1701249 lt!1701646) (= lambda!173535 lambda!173382))))

(declare-fun bs!861537 () Bool)

(assert (= bs!861537 (and d!1395893 d!1395243)))

(assert (=> bs!861537 (not (= lambda!173535 lambda!173394))))

(declare-fun bs!861538 () Bool)

(assert (= bs!861538 (and d!1395893 d!1395709)))

(assert (=> bs!861538 (= (= lt!1701249 lt!1702138) (= lambda!173535 lambda!173504))))

(assert (=> bs!861531 (= (= lt!1701249 lt!1701670) (= lambda!173535 lambda!173389))))

(declare-fun bs!861539 () Bool)

(assert (= bs!861539 (and d!1395893 d!1395547)))

(assert (=> bs!861539 (= (= lt!1701249 lt!1701997) (= lambda!173535 lambda!173462))))

(declare-fun bs!861540 () Bool)

(assert (= bs!861540 (and d!1395893 b!4525560)))

(assert (=> bs!861540 (= (= lt!1701249 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173535 lambda!173425))))

(declare-fun bs!861541 () Bool)

(assert (= bs!861541 (and d!1395893 d!1395683)))

(assert (=> bs!861541 (= (= lt!1701249 lt!1701646) (= lambda!173535 lambda!173493))))

(assert (=> d!1395893 true))

(assert (=> d!1395893 (forall!10287 (toList!4347 lt!1701249) lambda!173535)))

(declare-fun lt!1702304 () Unit!95830)

(assert (=> d!1395893 (= lt!1702304 (choose!29642 lt!1701249))))

(assert (=> d!1395893 (= (lemmaContainsAllItsOwnKeys!346 lt!1701249) lt!1702304)))

(declare-fun bs!861542 () Bool)

(assert (= bs!861542 d!1395893))

(declare-fun m!5279523 () Bool)

(assert (=> bs!861542 m!5279523))

(declare-fun m!5279525 () Bool)

(assert (=> bs!861542 m!5279525))

(assert (=> bm!315328 d!1395893))

(declare-fun b!4526140 () Bool)

(declare-fun e!2820094 () List!50801)

(assert (=> b!4526140 (= e!2820094 (getKeysList!472 (toList!4347 lt!1701479)))))

(declare-fun b!4526141 () Bool)

(assert (=> b!4526141 false))

(declare-fun lt!1702309 () Unit!95830)

(declare-fun lt!1702307 () Unit!95830)

(assert (=> b!4526141 (= lt!1702309 lt!1702307)))

(assert (=> b!4526141 (containsKey!1808 (toList!4347 lt!1701479) key!3287)))

(assert (=> b!4526141 (= lt!1702307 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 lt!1701479) key!3287))))

(declare-fun e!2820096 () Unit!95830)

(declare-fun Unit!96083 () Unit!95830)

(assert (=> b!4526141 (= e!2820096 Unit!96083)))

(declare-fun b!4526142 () Bool)

(declare-fun e!2820092 () Bool)

(assert (=> b!4526142 (= e!2820092 (contains!13420 (keys!17612 lt!1701479) key!3287))))

(declare-fun b!4526143 () Bool)

(declare-fun e!2820093 () Bool)

(assert (=> b!4526143 (= e!2820093 e!2820092)))

(declare-fun res!1884454 () Bool)

(assert (=> b!4526143 (=> (not res!1884454) (not e!2820092))))

(assert (=> b!4526143 (= res!1884454 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701479) key!3287)))))

(declare-fun b!4526144 () Bool)

(declare-fun Unit!96084 () Unit!95830)

(assert (=> b!4526144 (= e!2820096 Unit!96084)))

(declare-fun b!4526145 () Bool)

(declare-fun e!2820091 () Unit!95830)

(assert (=> b!4526145 (= e!2820091 e!2820096)))

(declare-fun c!772646 () Bool)

(declare-fun call!315418 () Bool)

(assert (=> b!4526145 (= c!772646 call!315418)))

(declare-fun d!1395895 () Bool)

(assert (=> d!1395895 e!2820093))

(declare-fun res!1884453 () Bool)

(assert (=> d!1395895 (=> res!1884453 e!2820093)))

(declare-fun e!2820095 () Bool)

(assert (=> d!1395895 (= res!1884453 e!2820095)))

(declare-fun res!1884452 () Bool)

(assert (=> d!1395895 (=> (not res!1884452) (not e!2820095))))

(declare-fun lt!1702306 () Bool)

(assert (=> d!1395895 (= res!1884452 (not lt!1702306))))

(declare-fun lt!1702308 () Bool)

(assert (=> d!1395895 (= lt!1702306 lt!1702308)))

(declare-fun lt!1702305 () Unit!95830)

(assert (=> d!1395895 (= lt!1702305 e!2820091)))

(declare-fun c!772644 () Bool)

(assert (=> d!1395895 (= c!772644 lt!1702308)))

(assert (=> d!1395895 (= lt!1702308 (containsKey!1808 (toList!4347 lt!1701479) key!3287))))

(assert (=> d!1395895 (= (contains!13418 lt!1701479 key!3287) lt!1702306)))

(declare-fun b!4526146 () Bool)

(declare-fun lt!1702311 () Unit!95830)

(assert (=> b!4526146 (= e!2820091 lt!1702311)))

(declare-fun lt!1702312 () Unit!95830)

(assert (=> b!4526146 (= lt!1702312 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701479) key!3287))))

(assert (=> b!4526146 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701479) key!3287))))

(declare-fun lt!1702310 () Unit!95830)

(assert (=> b!4526146 (= lt!1702310 lt!1702312)))

(assert (=> b!4526146 (= lt!1702311 (lemmaInListThenGetKeysListContains!468 (toList!4347 lt!1701479) key!3287))))

(assert (=> b!4526146 call!315418))

(declare-fun b!4526147 () Bool)

(assert (=> b!4526147 (= e!2820095 (not (contains!13420 (keys!17612 lt!1701479) key!3287)))))

(declare-fun b!4526148 () Bool)

(assert (=> b!4526148 (= e!2820094 (keys!17612 lt!1701479))))

(declare-fun bm!315413 () Bool)

(assert (=> bm!315413 (= call!315418 (contains!13420 e!2820094 key!3287))))

(declare-fun c!772645 () Bool)

(assert (=> bm!315413 (= c!772645 c!772644)))

(assert (= (and d!1395895 c!772644) b!4526146))

(assert (= (and d!1395895 (not c!772644)) b!4526145))

(assert (= (and b!4526145 c!772646) b!4526141))

(assert (= (and b!4526145 (not c!772646)) b!4526144))

(assert (= (or b!4526146 b!4526145) bm!315413))

(assert (= (and bm!315413 c!772645) b!4526140))

(assert (= (and bm!315413 (not c!772645)) b!4526148))

(assert (= (and d!1395895 res!1884452) b!4526147))

(assert (= (and d!1395895 (not res!1884453)) b!4526143))

(assert (= (and b!4526143 res!1884454) b!4526142))

(declare-fun m!5279527 () Bool)

(assert (=> bm!315413 m!5279527))

(declare-fun m!5279529 () Bool)

(assert (=> b!4526143 m!5279529))

(assert (=> b!4526143 m!5279529))

(declare-fun m!5279531 () Bool)

(assert (=> b!4526143 m!5279531))

(assert (=> b!4526140 m!5279509))

(assert (=> b!4526148 m!5277161))

(declare-fun m!5279533 () Bool)

(assert (=> b!4526141 m!5279533))

(declare-fun m!5279535 () Bool)

(assert (=> b!4526141 m!5279535))

(declare-fun m!5279537 () Bool)

(assert (=> b!4526146 m!5279537))

(assert (=> b!4526146 m!5279529))

(assert (=> b!4526146 m!5279529))

(assert (=> b!4526146 m!5279531))

(declare-fun m!5279539 () Bool)

(assert (=> b!4526146 m!5279539))

(assert (=> b!4526142 m!5277161))

(assert (=> b!4526142 m!5277161))

(declare-fun m!5279541 () Bool)

(assert (=> b!4526142 m!5279541))

(assert (=> d!1395895 m!5279533))

(assert (=> b!4526147 m!5277161))

(assert (=> b!4526147 m!5277161))

(assert (=> b!4526147 m!5279541))

(assert (=> d!1395117 d!1395895))

(declare-fun call!315456 () (InoxSet tuple2!51114))

(declare-fun c!772693 () Bool)

(declare-fun bm!315450 () Bool)

(declare-fun lt!1702454 () List!50798)

(assert (=> bm!315450 (= call!315456 (content!8381 (ite c!772693 (toList!4347 lt!1701248) lt!1702454)))))

(declare-fun b!4526263 () Bool)

(declare-fun e!2820158 () Unit!95830)

(declare-fun Unit!96085 () Unit!95830)

(assert (=> b!4526263 (= e!2820158 Unit!96085)))

(declare-fun b!4526265 () Bool)

(declare-fun res!1884483 () Bool)

(declare-fun e!2820165 () Bool)

(assert (=> b!4526265 (=> (not res!1884483) (not e!2820165))))

(assert (=> b!4526265 (= res!1884483 (not (containsKey!1808 lt!1702454 key!3287)))))

(declare-fun b!4526266 () Bool)

(declare-fun res!1884485 () Bool)

(assert (=> b!4526266 (=> (not res!1884485) (not e!2820165))))

(assert (=> b!4526266 (= res!1884485 (= (content!8383 (getKeysList!472 lt!1702454)) ((_ map and) (content!8383 (getKeysList!472 (toList!4347 lt!1701248))) ((_ map not) (store ((as const (Array K!12065 Bool)) false) key!3287 true)))))))

(declare-fun b!4526267 () Bool)

(declare-fun e!2820160 () List!50798)

(assert (=> b!4526267 (= e!2820160 (t!357760 (toList!4347 lt!1701248)))))

(declare-fun c!772696 () Bool)

(declare-fun call!315457 () Bool)

(assert (=> b!4526267 (= c!772696 call!315457)))

(declare-fun lt!1702459 () Unit!95830)

(declare-fun e!2820159 () Unit!95830)

(assert (=> b!4526267 (= lt!1702459 e!2820159)))

(declare-fun b!4526268 () Bool)

(declare-fun lt!1702460 () Unit!95830)

(declare-fun e!2820163 () Unit!95830)

(assert (=> b!4526268 (= lt!1702460 e!2820163)))

(declare-fun c!772690 () Bool)

(declare-fun call!315455 () Bool)

(assert (=> b!4526268 (= c!772690 call!315455)))

(declare-fun lt!1702458 () Unit!95830)

(assert (=> b!4526268 (= lt!1702458 e!2820158)))

(declare-fun c!772692 () Bool)

(assert (=> b!4526268 (= c!772692 (contains!13420 (getKeysList!472 (t!357760 (toList!4347 lt!1701248))) (_1!28851 (h!56535 (toList!4347 lt!1701248)))))))

(declare-fun lt!1702453 () List!50798)

(declare-fun $colon$colon!945 (List!50798 tuple2!51114) List!50798)

(assert (=> b!4526268 (= lt!1702453 ($colon$colon!945 (removePresrvNoDuplicatedKeys!149 (t!357760 (toList!4347 lt!1701248)) key!3287) (h!56535 (toList!4347 lt!1701248))))))

(declare-fun e!2820164 () List!50798)

(assert (=> b!4526268 (= e!2820164 lt!1702453)))

(declare-fun b!4526269 () Bool)

(assert (=> b!4526269 (= e!2820164 Nil!50674)))

(declare-fun b!4526270 () Bool)

(declare-fun e!2820161 () Unit!95830)

(declare-fun Unit!96086 () Unit!95830)

(assert (=> b!4526270 (= e!2820161 Unit!96086)))

(declare-fun bm!315451 () Bool)

(declare-fun c!772691 () Bool)

(assert (=> bm!315451 (= call!315457 (containsKey!1808 (ite c!772691 (toList!4347 lt!1701248) (t!357760 (toList!4347 lt!1701248))) (ite c!772691 key!3287 (_1!28851 (h!56535 (toList!4347 lt!1701248))))))))

(declare-fun b!4526271 () Bool)

(declare-fun call!315460 () (InoxSet tuple2!51114))

(declare-fun call!315459 () (InoxSet tuple2!51114))

(declare-fun get!16614 (Option!11135) V!12311)

(assert (=> b!4526271 (= call!315460 ((_ map and) call!315459 ((_ map not) (store ((as const (Array tuple2!51114 Bool)) false) (tuple2!51115 key!3287 (get!16614 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287))) true))))))

(declare-fun lt!1702457 () Unit!95830)

(assert (=> b!4526271 (= lt!1702457 e!2820161)))

(declare-fun c!772695 () Bool)

(assert (=> b!4526271 (= c!772695 (contains!13423 (t!357760 (toList!4347 lt!1701248)) (tuple2!51115 key!3287 (get!16614 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287)))))))

(declare-fun Unit!96087 () Unit!95830)

(assert (=> b!4526271 (= e!2820159 Unit!96087)))

(declare-fun bm!315452 () Bool)

(assert (=> bm!315452 (= call!315459 (content!8381 (toList!4347 lt!1701248)))))

(declare-fun e!2820162 () List!50798)

(declare-fun bm!315453 () Bool)

(declare-fun lt!1702463 () K!12065)

(assert (=> bm!315453 (= call!315455 (containsKey!1808 e!2820162 (ite c!772691 lt!1702463 (_1!28851 (h!56535 (toList!4347 lt!1701248))))))))

(declare-fun c!772694 () Bool)

(assert (=> bm!315453 (= c!772694 c!772691)))

(declare-fun e!2820166 () Bool)

(declare-fun b!4526264 () Bool)

(declare-fun call!315458 () (InoxSet tuple2!51114))

(assert (=> b!4526264 (= e!2820166 (= call!315458 ((_ map and) call!315456 ((_ map not) (store ((as const (Array tuple2!51114 Bool)) false) (tuple2!51115 key!3287 (get!16614 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287))) true)))))))

(assert (=> b!4526264 (containsKey!1808 (toList!4347 lt!1701248) key!3287)))

(declare-fun lt!1702462 () Unit!95830)

(assert (=> b!4526264 (= lt!1702462 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701248) key!3287))))

(assert (=> b!4526264 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287))))

(declare-fun lt!1702465 () Unit!95830)

(assert (=> b!4526264 (= lt!1702465 lt!1702462)))

(declare-fun d!1395897 () Bool)

(assert (=> d!1395897 e!2820165))

(declare-fun res!1884484 () Bool)

(assert (=> d!1395897 (=> (not res!1884484) (not e!2820165))))

(assert (=> d!1395897 (= res!1884484 (invariantList!1025 lt!1702454))))

(assert (=> d!1395897 (= lt!1702454 e!2820160)))

(assert (=> d!1395897 (= c!772691 (and ((_ is Cons!50674) (toList!4347 lt!1701248)) (= (_1!28851 (h!56535 (toList!4347 lt!1701248))) key!3287)))))

(assert (=> d!1395897 (invariantList!1025 (toList!4347 lt!1701248))))

(assert (=> d!1395897 (= (removePresrvNoDuplicatedKeys!149 (toList!4347 lt!1701248) key!3287) lt!1702454)))

(declare-fun b!4526272 () Bool)

(declare-fun Unit!96088 () Unit!95830)

(assert (=> b!4526272 (= e!2820158 Unit!96088)))

(declare-fun lt!1702461 () Unit!95830)

(assert (=> b!4526272 (= lt!1702461 (lemmaInGetKeysListThenContainsKey!471 (t!357760 (toList!4347 lt!1701248)) (_1!28851 (h!56535 (toList!4347 lt!1701248)))))))

(assert (=> b!4526272 call!315457))

(declare-fun lt!1702456 () Unit!95830)

(assert (=> b!4526272 (= lt!1702456 lt!1702461)))

(assert (=> b!4526272 false))

(declare-fun b!4526273 () Bool)

(declare-fun Unit!96089 () Unit!95830)

(assert (=> b!4526273 (= e!2820161 Unit!96089)))

(declare-fun lt!1702455 () V!12311)

(assert (=> b!4526273 (= lt!1702455 (get!16614 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287)))))

(assert (=> b!4526273 (= lt!1702463 key!3287)))

(declare-fun lt!1702448 () K!12065)

(assert (=> b!4526273 (= lt!1702448 key!3287)))

(declare-fun lt!1702464 () Unit!95830)

(declare-fun lemmaContainsTupleThenContainsKey!66 (List!50798 K!12065 V!12311) Unit!95830)

(assert (=> b!4526273 (= lt!1702464 (lemmaContainsTupleThenContainsKey!66 (t!357760 (toList!4347 lt!1701248)) lt!1702463 (get!16614 (getValueByKey!1107 (toList!4347 lt!1701248) key!3287))))))

(assert (=> b!4526273 call!315455))

(declare-fun lt!1702452 () Unit!95830)

(assert (=> b!4526273 (= lt!1702452 lt!1702464)))

(assert (=> b!4526273 false))

(declare-fun b!4526274 () Bool)

(assert (=> b!4526274 (= e!2820162 (removePresrvNoDuplicatedKeys!149 (t!357760 (toList!4347 lt!1701248)) key!3287))))

(declare-fun bm!315454 () Bool)

(assert (=> bm!315454 (= call!315458 (content!8381 (ite c!772693 lt!1702454 (toList!4347 lt!1701248))))))

(declare-fun b!4526275 () Bool)

(assert (=> b!4526275 (= call!315460 call!315459)))

(declare-fun Unit!96090 () Unit!95830)

(assert (=> b!4526275 (= e!2820159 Unit!96090)))

(declare-fun b!4526276 () Bool)

(assert (=> b!4526276 (= e!2820160 e!2820164)))

(declare-fun c!772697 () Bool)

(assert (=> b!4526276 (= c!772697 (and ((_ is Cons!50674) (toList!4347 lt!1701248)) (not (= (_1!28851 (h!56535 (toList!4347 lt!1701248))) key!3287))))))

(declare-fun bm!315455 () Bool)

(assert (=> bm!315455 (= call!315460 (content!8381 (t!357760 (toList!4347 lt!1701248))))))

(declare-fun b!4526277 () Bool)

(assert (=> b!4526277 (= e!2820162 (t!357760 (toList!4347 lt!1701248)))))

(declare-fun b!4526278 () Bool)

(declare-fun Unit!96091 () Unit!95830)

(assert (=> b!4526278 (= e!2820163 Unit!96091)))

(declare-fun lt!1702451 () List!50798)

(assert (=> b!4526278 (= lt!1702451 (removePresrvNoDuplicatedKeys!149 (t!357760 (toList!4347 lt!1701248)) key!3287))))

(declare-fun lt!1702450 () Unit!95830)

(assert (=> b!4526278 (= lt!1702450 (lemmaInListThenGetKeysListContains!468 lt!1702451 (_1!28851 (h!56535 (toList!4347 lt!1701248)))))))

(assert (=> b!4526278 (contains!13420 (getKeysList!472 lt!1702451) (_1!28851 (h!56535 (toList!4347 lt!1701248))))))

(declare-fun lt!1702449 () Unit!95830)

(assert (=> b!4526278 (= lt!1702449 lt!1702450)))

(assert (=> b!4526278 false))

(declare-fun b!4526279 () Bool)

(assert (=> b!4526279 (= e!2820165 e!2820166)))

(assert (=> b!4526279 (= c!772693 (containsKey!1808 (toList!4347 lt!1701248) key!3287))))

(declare-fun b!4526280 () Bool)

(declare-fun Unit!96092 () Unit!95830)

(assert (=> b!4526280 (= e!2820163 Unit!96092)))

(declare-fun b!4526281 () Bool)

(assert (=> b!4526281 (= e!2820166 (= call!315456 call!315458))))

(assert (= (and d!1395897 c!772691) b!4526267))

(assert (= (and d!1395897 (not c!772691)) b!4526276))

(assert (= (and b!4526267 c!772696) b!4526271))

(assert (= (and b!4526267 (not c!772696)) b!4526275))

(assert (= (and b!4526271 c!772695) b!4526273))

(assert (= (and b!4526271 (not c!772695)) b!4526270))

(assert (= (or b!4526271 b!4526275) bm!315455))

(assert (= (or b!4526271 b!4526275) bm!315452))

(assert (= (and b!4526276 c!772697) b!4526268))

(assert (= (and b!4526276 (not c!772697)) b!4526269))

(assert (= (and b!4526268 c!772692) b!4526272))

(assert (= (and b!4526268 (not c!772692)) b!4526263))

(assert (= (and b!4526268 c!772690) b!4526278))

(assert (= (and b!4526268 (not c!772690)) b!4526280))

(assert (= (or b!4526267 b!4526272) bm!315451))

(assert (= (or b!4526273 b!4526268) bm!315453))

(assert (= (and bm!315453 c!772694) b!4526277))

(assert (= (and bm!315453 (not c!772694)) b!4526274))

(assert (= (and d!1395897 res!1884484) b!4526265))

(assert (= (and b!4526265 res!1884483) b!4526266))

(assert (= (and b!4526266 res!1884485) b!4526279))

(assert (= (and b!4526279 c!772693) b!4526264))

(assert (= (and b!4526279 (not c!772693)) b!4526281))

(assert (= (or b!4526264 b!4526281) bm!315450))

(assert (= (or b!4526264 b!4526281) bm!315454))

(declare-fun m!5279641 () Bool)

(assert (=> b!4526266 m!5279641))

(assert (=> b!4526266 m!5276969))

(declare-fun m!5279643 () Bool)

(assert (=> b!4526266 m!5279643))

(assert (=> b!4526266 m!5279641))

(declare-fun m!5279645 () Bool)

(assert (=> b!4526266 m!5279645))

(assert (=> b!4526266 m!5276969))

(assert (=> b!4526266 m!5277165))

(declare-fun m!5279647 () Bool)

(assert (=> bm!315452 m!5279647))

(declare-fun m!5279649 () Bool)

(assert (=> b!4526265 m!5279649))

(declare-fun m!5279651 () Bool)

(assert (=> d!1395897 m!5279651))

(assert (=> d!1395897 m!5277963))

(declare-fun m!5279653 () Bool)

(assert (=> b!4526264 m!5279653))

(assert (=> b!4526264 m!5276965))

(assert (=> b!4526264 m!5276967))

(assert (=> b!4526264 m!5276973))

(assert (=> b!4526264 m!5276977))

(assert (=> b!4526264 m!5276965))

(assert (=> b!4526264 m!5276965))

(declare-fun m!5279655 () Bool)

(assert (=> b!4526264 m!5279655))

(declare-fun m!5279657 () Bool)

(assert (=> b!4526274 m!5279657))

(assert (=> b!4526279 m!5276973))

(assert (=> b!4526268 m!5277945))

(assert (=> b!4526268 m!5277945))

(assert (=> b!4526268 m!5277947))

(assert (=> b!4526268 m!5279657))

(assert (=> b!4526268 m!5279657))

(declare-fun m!5279659 () Bool)

(assert (=> b!4526268 m!5279659))

(declare-fun m!5279661 () Bool)

(assert (=> bm!315453 m!5279661))

(assert (=> b!4526271 m!5276965))

(assert (=> b!4526271 m!5276965))

(assert (=> b!4526271 m!5279655))

(assert (=> b!4526271 m!5279653))

(declare-fun m!5279663 () Bool)

(assert (=> b!4526271 m!5279663))

(declare-fun m!5279665 () Bool)

(assert (=> b!4526272 m!5279665))

(assert (=> b!4526273 m!5276965))

(assert (=> b!4526273 m!5276965))

(assert (=> b!4526273 m!5279655))

(assert (=> b!4526273 m!5279655))

(declare-fun m!5279667 () Bool)

(assert (=> b!4526273 m!5279667))

(declare-fun m!5279669 () Bool)

(assert (=> bm!315454 m!5279669))

(declare-fun m!5279671 () Bool)

(assert (=> bm!315455 m!5279671))

(declare-fun m!5279673 () Bool)

(assert (=> bm!315451 m!5279673))

(declare-fun m!5279675 () Bool)

(assert (=> bm!315450 m!5279675))

(assert (=> b!4526278 m!5279657))

(declare-fun m!5279677 () Bool)

(assert (=> b!4526278 m!5279677))

(declare-fun m!5279679 () Bool)

(assert (=> b!4526278 m!5279679))

(assert (=> b!4526278 m!5279679))

(declare-fun m!5279681 () Bool)

(assert (=> b!4526278 m!5279681))

(assert (=> d!1395117 d!1395897))

(declare-fun d!1395915 () Bool)

(declare-fun res!1884486 () Bool)

(declare-fun e!2820167 () Bool)

(assert (=> d!1395915 (=> res!1884486 e!2820167)))

(assert (=> d!1395915 (= res!1884486 (and ((_ is Cons!50674) lt!1701690) (= (_1!28851 (h!56535 lt!1701690)) key!3287)))))

(assert (=> d!1395915 (= (containsKey!1806 lt!1701690 key!3287) e!2820167)))

(declare-fun b!4526282 () Bool)

(declare-fun e!2820168 () Bool)

(assert (=> b!4526282 (= e!2820167 e!2820168)))

(declare-fun res!1884487 () Bool)

(assert (=> b!4526282 (=> (not res!1884487) (not e!2820168))))

(assert (=> b!4526282 (= res!1884487 ((_ is Cons!50674) lt!1701690))))

(declare-fun b!4526283 () Bool)

(assert (=> b!4526283 (= e!2820168 (containsKey!1806 (t!357760 lt!1701690) key!3287))))

(assert (= (and d!1395915 (not res!1884486)) b!4526282))

(assert (= (and b!4526282 res!1884487) b!4526283))

(declare-fun m!5279683 () Bool)

(assert (=> b!4526283 m!5279683))

(assert (=> d!1395253 d!1395915))

(declare-fun d!1395917 () Bool)

(declare-fun res!1884488 () Bool)

(declare-fun e!2820169 () Bool)

(assert (=> d!1395917 (=> res!1884488 e!2820169)))

(assert (=> d!1395917 (= res!1884488 (not ((_ is Cons!50674) lt!1701236)))))

(assert (=> d!1395917 (= (noDuplicateKeys!1170 lt!1701236) e!2820169)))

(declare-fun b!4526284 () Bool)

(declare-fun e!2820170 () Bool)

(assert (=> b!4526284 (= e!2820169 e!2820170)))

(declare-fun res!1884489 () Bool)

(assert (=> b!4526284 (=> (not res!1884489) (not e!2820170))))

(assert (=> b!4526284 (= res!1884489 (not (containsKey!1806 (t!357760 lt!1701236) (_1!28851 (h!56535 lt!1701236)))))))

(declare-fun b!4526285 () Bool)

(assert (=> b!4526285 (= e!2820170 (noDuplicateKeys!1170 (t!357760 lt!1701236)))))

(assert (= (and d!1395917 (not res!1884488)) b!4526284))

(assert (= (and b!4526284 res!1884489) b!4526285))

(declare-fun m!5279685 () Bool)

(assert (=> b!4526284 m!5279685))

(assert (=> b!4526285 m!5279399))

(assert (=> d!1395253 d!1395917))

(declare-fun d!1395919 () Bool)

(declare-fun e!2820171 () Bool)

(assert (=> d!1395919 e!2820171))

(declare-fun res!1884490 () Bool)

(assert (=> d!1395919 (=> res!1884490 e!2820171)))

(declare-fun lt!1702469 () Bool)

(assert (=> d!1395919 (= res!1884490 (not lt!1702469))))

(declare-fun lt!1702467 () Bool)

(assert (=> d!1395919 (= lt!1702469 lt!1702467)))

(declare-fun lt!1702468 () Unit!95830)

(declare-fun e!2820172 () Unit!95830)

(assert (=> d!1395919 (= lt!1702468 e!2820172)))

(declare-fun c!772698 () Bool)

(assert (=> d!1395919 (= c!772698 lt!1702467)))

(assert (=> d!1395919 (= lt!1702467 (containsKey!1810 (toList!4348 lt!1701570) (_1!28852 lt!1701243)))))

(assert (=> d!1395919 (= (contains!13417 lt!1701570 (_1!28852 lt!1701243)) lt!1702469)))

(declare-fun b!4526286 () Bool)

(declare-fun lt!1702466 () Unit!95830)

(assert (=> b!4526286 (= e!2820172 lt!1702466)))

(assert (=> b!4526286 (= lt!1702466 (lemmaContainsKeyImpliesGetValueByKeyDefined!1013 (toList!4348 lt!1701570) (_1!28852 lt!1701243)))))

(assert (=> b!4526286 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701570) (_1!28852 lt!1701243)))))

(declare-fun b!4526287 () Bool)

(declare-fun Unit!96093 () Unit!95830)

(assert (=> b!4526287 (= e!2820172 Unit!96093)))

(declare-fun b!4526288 () Bool)

(assert (=> b!4526288 (= e!2820171 (isDefined!8424 (getValueByKey!1109 (toList!4348 lt!1701570) (_1!28852 lt!1701243))))))

(assert (= (and d!1395919 c!772698) b!4526286))

(assert (= (and d!1395919 (not c!772698)) b!4526287))

(assert (= (and d!1395919 (not res!1884490)) b!4526288))

(declare-fun m!5279687 () Bool)

(assert (=> d!1395919 m!5279687))

(declare-fun m!5279689 () Bool)

(assert (=> b!4526286 m!5279689))

(assert (=> b!4526286 m!5277373))

(assert (=> b!4526286 m!5277373))

(declare-fun m!5279691 () Bool)

(assert (=> b!4526286 m!5279691))

(assert (=> b!4526288 m!5277373))

(assert (=> b!4526288 m!5277373))

(assert (=> b!4526288 m!5279691))

(assert (=> d!1395185 d!1395919))

(declare-fun b!4526289 () Bool)

(declare-fun e!2820173 () Option!11137)

(assert (=> b!4526289 (= e!2820173 (Some!11136 (_2!28852 (h!56536 lt!1701569))))))

(declare-fun d!1395921 () Bool)

(declare-fun c!772699 () Bool)

(assert (=> d!1395921 (= c!772699 (and ((_ is Cons!50675) lt!1701569) (= (_1!28852 (h!56536 lt!1701569)) (_1!28852 lt!1701243))))))

(assert (=> d!1395921 (= (getValueByKey!1109 lt!1701569 (_1!28852 lt!1701243)) e!2820173)))

(declare-fun b!4526290 () Bool)

(declare-fun e!2820174 () Option!11137)

(assert (=> b!4526290 (= e!2820173 e!2820174)))

(declare-fun c!772700 () Bool)

(assert (=> b!4526290 (= c!772700 (and ((_ is Cons!50675) lt!1701569) (not (= (_1!28852 (h!56536 lt!1701569)) (_1!28852 lt!1701243)))))))

(declare-fun b!4526291 () Bool)

(assert (=> b!4526291 (= e!2820174 (getValueByKey!1109 (t!357761 lt!1701569) (_1!28852 lt!1701243)))))

(declare-fun b!4526292 () Bool)

(assert (=> b!4526292 (= e!2820174 None!11136)))

(assert (= (and d!1395921 c!772699) b!4526289))

(assert (= (and d!1395921 (not c!772699)) b!4526290))

(assert (= (and b!4526290 c!772700) b!4526291))

(assert (= (and b!4526290 (not c!772700)) b!4526292))

(declare-fun m!5279693 () Bool)

(assert (=> b!4526291 m!5279693))

(assert (=> d!1395185 d!1395921))

(declare-fun d!1395923 () Bool)

(assert (=> d!1395923 (= (getValueByKey!1109 lt!1701569 (_1!28852 lt!1701243)) (Some!11136 (_2!28852 lt!1701243)))))

(declare-fun lt!1702470 () Unit!95830)

(assert (=> d!1395923 (= lt!1702470 (choose!29632 lt!1701569 (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))

(declare-fun e!2820175 () Bool)

(assert (=> d!1395923 e!2820175))

(declare-fun res!1884491 () Bool)

(assert (=> d!1395923 (=> (not res!1884491) (not e!2820175))))

(assert (=> d!1395923 (= res!1884491 (isStrictlySorted!439 lt!1701569))))

(assert (=> d!1395923 (= (lemmaContainsTupThenGetReturnValue!690 lt!1701569 (_1!28852 lt!1701243) (_2!28852 lt!1701243)) lt!1702470)))

(declare-fun b!4526293 () Bool)

(declare-fun res!1884492 () Bool)

(assert (=> b!4526293 (=> (not res!1884492) (not e!2820175))))

(assert (=> b!4526293 (= res!1884492 (containsKey!1810 lt!1701569 (_1!28852 lt!1701243)))))

(declare-fun b!4526294 () Bool)

(assert (=> b!4526294 (= e!2820175 (contains!13419 lt!1701569 (tuple2!51117 (_1!28852 lt!1701243) (_2!28852 lt!1701243))))))

(assert (= (and d!1395923 res!1884491) b!4526293))

(assert (= (and b!4526293 res!1884492) b!4526294))

(assert (=> d!1395923 m!5277367))

(declare-fun m!5279695 () Bool)

(assert (=> d!1395923 m!5279695))

(declare-fun m!5279697 () Bool)

(assert (=> d!1395923 m!5279697))

(declare-fun m!5279699 () Bool)

(assert (=> b!4526293 m!5279699))

(declare-fun m!5279701 () Bool)

(assert (=> b!4526294 m!5279701))

(assert (=> d!1395185 d!1395923))

(declare-fun b!4526295 () Bool)

(declare-fun e!2820179 () List!50799)

(declare-fun call!315463 () List!50799)

(assert (=> b!4526295 (= e!2820179 call!315463)))

(declare-fun b!4526296 () Bool)

(declare-fun res!1884493 () Bool)

(declare-fun e!2820178 () Bool)

(assert (=> b!4526296 (=> (not res!1884493) (not e!2820178))))

(declare-fun lt!1702471 () List!50799)

(assert (=> b!4526296 (= res!1884493 (containsKey!1810 lt!1702471 (_1!28852 lt!1701243)))))

(declare-fun b!4526297 () Bool)

(declare-fun e!2820180 () List!50799)

(assert (=> b!4526297 (= e!2820180 (insertStrictlySorted!416 (t!357761 (toList!4348 lm!1477)) (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))

(declare-fun b!4526298 () Bool)

(assert (=> b!4526298 (= e!2820179 call!315463)))

(declare-fun b!4526299 () Bool)

(assert (=> b!4526299 (= e!2820178 (contains!13419 lt!1702471 (tuple2!51117 (_1!28852 lt!1701243) (_2!28852 lt!1701243))))))

(declare-fun bm!315457 () Bool)

(declare-fun call!315461 () List!50799)

(declare-fun call!315462 () List!50799)

(assert (=> bm!315457 (= call!315461 call!315462)))

(declare-fun b!4526300 () Bool)

(declare-fun e!2820176 () List!50799)

(assert (=> b!4526300 (= e!2820176 call!315461)))

(declare-fun b!4526301 () Bool)

(declare-fun e!2820177 () List!50799)

(assert (=> b!4526301 (= e!2820177 e!2820176)))

(declare-fun c!772703 () Bool)

(assert (=> b!4526301 (= c!772703 (and ((_ is Cons!50675) (toList!4348 lm!1477)) (= (_1!28852 (h!56536 (toList!4348 lm!1477))) (_1!28852 lt!1701243))))))

(declare-fun b!4526302 () Bool)

(declare-fun c!772702 () Bool)

(assert (=> b!4526302 (= e!2820180 (ite c!772703 (t!357761 (toList!4348 lm!1477)) (ite c!772702 (Cons!50675 (h!56536 (toList!4348 lm!1477)) (t!357761 (toList!4348 lm!1477))) Nil!50675)))))

(declare-fun bm!315456 () Bool)

(declare-fun c!772704 () Bool)

(assert (=> bm!315456 (= call!315462 ($colon$colon!944 e!2820180 (ite c!772704 (h!56536 (toList!4348 lm!1477)) (tuple2!51117 (_1!28852 lt!1701243) (_2!28852 lt!1701243)))))))

(declare-fun c!772701 () Bool)

(assert (=> bm!315456 (= c!772701 c!772704)))

(declare-fun d!1395925 () Bool)

(assert (=> d!1395925 e!2820178))

(declare-fun res!1884494 () Bool)

(assert (=> d!1395925 (=> (not res!1884494) (not e!2820178))))

(assert (=> d!1395925 (= res!1884494 (isStrictlySorted!439 lt!1702471))))

(assert (=> d!1395925 (= lt!1702471 e!2820177)))

(assert (=> d!1395925 (= c!772704 (and ((_ is Cons!50675) (toList!4348 lm!1477)) (bvslt (_1!28852 (h!56536 (toList!4348 lm!1477))) (_1!28852 lt!1701243))))))

(assert (=> d!1395925 (isStrictlySorted!439 (toList!4348 lm!1477))))

(assert (=> d!1395925 (= (insertStrictlySorted!416 (toList!4348 lm!1477) (_1!28852 lt!1701243) (_2!28852 lt!1701243)) lt!1702471)))

(declare-fun b!4526303 () Bool)

(assert (=> b!4526303 (= c!772702 (and ((_ is Cons!50675) (toList!4348 lm!1477)) (bvsgt (_1!28852 (h!56536 (toList!4348 lm!1477))) (_1!28852 lt!1701243))))))

(assert (=> b!4526303 (= e!2820176 e!2820179)))

(declare-fun b!4526304 () Bool)

(assert (=> b!4526304 (= e!2820177 call!315462)))

(declare-fun bm!315458 () Bool)

(assert (=> bm!315458 (= call!315463 call!315461)))

(assert (= (and d!1395925 c!772704) b!4526304))

(assert (= (and d!1395925 (not c!772704)) b!4526301))

(assert (= (and b!4526301 c!772703) b!4526300))

(assert (= (and b!4526301 (not c!772703)) b!4526303))

(assert (= (and b!4526303 c!772702) b!4526295))

(assert (= (and b!4526303 (not c!772702)) b!4526298))

(assert (= (or b!4526295 b!4526298) bm!315458))

(assert (= (or b!4526300 bm!315458) bm!315457))

(assert (= (or b!4526304 bm!315457) bm!315456))

(assert (= (and bm!315456 c!772701) b!4526297))

(assert (= (and bm!315456 (not c!772701)) b!4526302))

(assert (= (and d!1395925 res!1884494) b!4526296))

(assert (= (and b!4526296 res!1884493) b!4526299))

(declare-fun m!5279703 () Bool)

(assert (=> b!4526297 m!5279703))

(declare-fun m!5279705 () Bool)

(assert (=> b!4526299 m!5279705))

(declare-fun m!5279707 () Bool)

(assert (=> b!4526296 m!5279707))

(declare-fun m!5279709 () Bool)

(assert (=> bm!315456 m!5279709))

(declare-fun m!5279711 () Bool)

(assert (=> d!1395925 m!5279711))

(assert (=> d!1395925 m!5276799))

(assert (=> d!1395185 d!1395925))

(declare-fun d!1395927 () Bool)

(assert (=> d!1395927 (= (get!16611 lt!1701544) (v!44754 lt!1701544))))

(assert (=> b!4525045 d!1395927))

(declare-fun bs!861721 () Bool)

(declare-fun b!4526309 () Bool)

(assert (= bs!861721 (and b!4526309 b!4525163)))

(declare-fun lambda!173544 () Int)

(assert (=> bs!861721 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173544 lambda!173387))))

(declare-fun bs!861722 () Bool)

(assert (= bs!861722 (and b!4526309 b!4525663)))

(assert (=> bs!861722 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173544 lambda!173445))))

(declare-fun bs!861723 () Bool)

(assert (= bs!861723 (and b!4526309 b!4525604)))

(assert (=> bs!861723 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701911) (= lambda!173544 lambda!173435))))

(assert (=> bs!861722 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701946) (= lambda!173544 lambda!173447))))

(declare-fun bs!861724 () Bool)

(assert (= bs!861724 (and b!4526309 d!1395201)))

(assert (=> bs!861724 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701649) (= lambda!173544 lambda!173383))))

(declare-fun bs!861725 () Bool)

(assert (= bs!861725 (and b!4526309 b!4526014)))

(assert (=> bs!861725 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173544 lambda!173518))))

(declare-fun bs!861726 () Bool)

(assert (= bs!861726 (and b!4526309 b!4525156)))

(assert (=> bs!861726 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173544 lambda!173380))))

(declare-fun bs!861727 () Bool)

(assert (= bs!861727 (and b!4526309 b!4525712)))

(assert (=> bs!861727 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173544 lambda!173456))))

(declare-fun bs!861729 () Bool)

(assert (= bs!861729 (and b!4526309 b!4525711)))

(assert (=> bs!861729 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173544 lambda!173457))))

(declare-fun bs!861731 () Bool)

(assert (= bs!861731 (and b!4526309 d!1395775)))

(assert (=> bs!861731 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173544 lambda!173507))))

(assert (=> bs!861723 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173544 lambda!173434))))

(declare-fun bs!861733 () Bool)

(assert (= bs!861733 (and b!4526309 b!4526013)))

(assert (=> bs!861733 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173544 lambda!173519))))

(declare-fun bs!861735 () Bool)

(assert (= bs!861735 (and b!4526309 b!4525898)))

(assert (=> bs!861735 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173544 lambda!173497))))

(declare-fun bs!861737 () Bool)

(assert (= bs!861737 (and b!4526309 b!4525986)))

(assert (=> bs!861737 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702193) (= lambda!173544 lambda!173512))))

(declare-fun bs!861739 () Bool)

(assert (= bs!861739 (and b!4526309 b!4525155)))

(assert (=> bs!861739 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173544 lambda!173381))))

(declare-fun bs!861741 () Bool)

(assert (= bs!861741 (and b!4526309 d!1395779)))

(assert (=> bs!861741 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702196) (= lambda!173544 lambda!173514))))

(declare-fun bs!861743 () Bool)

(assert (= bs!861743 (and b!4526309 d!1395239)))

(assert (=> bs!861743 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701673) (= lambda!173544 lambda!173390))))

(declare-fun bs!861745 () Bool)

(assert (= bs!861745 (and b!4526309 b!4524756)))

(assert (=> bs!861745 (not (= lambda!173544 lambda!173267))))

(declare-fun bs!861747 () Bool)

(assert (= bs!861747 (and b!4526309 d!1395801)))

(assert (=> bs!861747 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702242) (= lambda!173544 lambda!173522))))

(declare-fun bs!861749 () Bool)

(assert (= bs!861749 (and b!4526309 d!1395423)))

(assert (=> bs!861749 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701860) (= lambda!173544 lambda!173428))))

(declare-fun bs!861751 () Bool)

(assert (= bs!861751 (and b!4526309 b!4525559)))

(assert (=> bs!861751 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701854) (= lambda!173544 lambda!173427))))

(declare-fun bs!861753 () Bool)

(assert (= bs!861753 (and b!4526309 b!4525897)))

(assert (=> bs!861753 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702135) (= lambda!173544 lambda!173499))))

(declare-fun bs!861755 () Bool)

(assert (= bs!861755 (and b!4526309 d!1395453)))

(assert (=> bs!861755 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701914) (= lambda!173544 lambda!173437))))

(declare-fun bs!861756 () Bool)

(assert (= bs!861756 (and b!4526309 d!1395893)))

(assert (=> bs!861756 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173544 lambda!173535))))

(assert (=> bs!861733 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702239) (= lambda!173544 lambda!173520))))

(assert (=> bs!861751 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173544 lambda!173426))))

(declare-fun bs!861760 () Bool)

(assert (= bs!861760 (and b!4526309 b!4525162)))

(assert (=> bs!861760 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173544 lambda!173388))))

(declare-fun bs!861761 () Bool)

(assert (= bs!861761 (and b!4526309 d!1395611)))

(assert (=> bs!861761 (not (= lambda!173544 lambda!173468))))

(assert (=> bs!861753 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173544 lambda!173498))))

(declare-fun bs!861764 () Bool)

(assert (= bs!861764 (and b!4526309 b!4525987)))

(assert (=> bs!861764 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173544 lambda!173509))))

(assert (=> bs!861737 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173544 lambda!173510))))

(declare-fun bs!861767 () Bool)

(assert (= bs!861767 (and b!4526309 b!4525664)))

(assert (=> bs!861767 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173544 lambda!173444))))

(assert (=> bs!861729 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701994) (= lambda!173544 lambda!173459))))

(declare-fun bs!861770 () Bool)

(assert (= bs!861770 (and b!4526309 d!1395501)))

(assert (=> bs!861770 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701949) (= lambda!173544 lambda!173450))))

(declare-fun bs!861772 () Bool)

(assert (= bs!861772 (and b!4526309 b!4525605)))

(assert (=> bs!861772 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173544 lambda!173432))))

(assert (=> bs!861739 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701646) (= lambda!173544 lambda!173382))))

(declare-fun bs!861775 () Bool)

(assert (= bs!861775 (and b!4526309 d!1395243)))

(assert (=> bs!861775 (not (= lambda!173544 lambda!173394))))

(declare-fun bs!861776 () Bool)

(assert (= bs!861776 (and b!4526309 d!1395709)))

(assert (=> bs!861776 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702138) (= lambda!173544 lambda!173504))))

(assert (=> bs!861760 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701670) (= lambda!173544 lambda!173389))))

(declare-fun bs!861778 () Bool)

(assert (= bs!861778 (and b!4526309 d!1395547)))

(assert (=> bs!861778 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701997) (= lambda!173544 lambda!173462))))

(declare-fun bs!861779 () Bool)

(assert (= bs!861779 (and b!4526309 b!4525560)))

(assert (=> bs!861779 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173544 lambda!173425))))

(declare-fun bs!861781 () Bool)

(assert (= bs!861781 (and b!4526309 d!1395683)))

(assert (=> bs!861781 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701646) (= lambda!173544 lambda!173493))))

(assert (=> b!4526309 true))

(declare-fun bs!861788 () Bool)

(declare-fun b!4526308 () Bool)

(assert (= bs!861788 (and b!4526308 b!4525163)))

(declare-fun lambda!173546 () Int)

(assert (=> bs!861788 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173546 lambda!173387))))

(declare-fun bs!861790 () Bool)

(assert (= bs!861790 (and b!4526308 b!4525663)))

(assert (=> bs!861790 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173546 lambda!173445))))

(declare-fun bs!861791 () Bool)

(assert (= bs!861791 (and b!4526308 b!4525604)))

(assert (=> bs!861791 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701911) (= lambda!173546 lambda!173435))))

(assert (=> bs!861790 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701946) (= lambda!173546 lambda!173447))))

(declare-fun bs!861792 () Bool)

(assert (= bs!861792 (and b!4526308 b!4526309)))

(assert (=> bs!861792 (= lambda!173546 lambda!173544)))

(declare-fun bs!861793 () Bool)

(assert (= bs!861793 (and b!4526308 d!1395201)))

(assert (=> bs!861793 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701649) (= lambda!173546 lambda!173383))))

(declare-fun bs!861794 () Bool)

(assert (= bs!861794 (and b!4526308 b!4526014)))

(assert (=> bs!861794 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173546 lambda!173518))))

(declare-fun bs!861795 () Bool)

(assert (= bs!861795 (and b!4526308 b!4525156)))

(assert (=> bs!861795 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173546 lambda!173380))))

(declare-fun bs!861796 () Bool)

(assert (= bs!861796 (and b!4526308 b!4525712)))

(assert (=> bs!861796 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173546 lambda!173456))))

(declare-fun bs!861797 () Bool)

(assert (= bs!861797 (and b!4526308 b!4525711)))

(assert (=> bs!861797 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173546 lambda!173457))))

(declare-fun bs!861798 () Bool)

(assert (= bs!861798 (and b!4526308 d!1395775)))

(assert (=> bs!861798 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173546 lambda!173507))))

(assert (=> bs!861791 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173546 lambda!173434))))

(declare-fun bs!861799 () Bool)

(assert (= bs!861799 (and b!4526308 b!4526013)))

(assert (=> bs!861799 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173546 lambda!173519))))

(declare-fun bs!861800 () Bool)

(assert (= bs!861800 (and b!4526308 b!4525898)))

(assert (=> bs!861800 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173546 lambda!173497))))

(declare-fun bs!861801 () Bool)

(assert (= bs!861801 (and b!4526308 b!4525986)))

(assert (=> bs!861801 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702193) (= lambda!173546 lambda!173512))))

(declare-fun bs!861802 () Bool)

(assert (= bs!861802 (and b!4526308 b!4525155)))

(assert (=> bs!861802 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173546 lambda!173381))))

(declare-fun bs!861803 () Bool)

(assert (= bs!861803 (and b!4526308 d!1395779)))

(assert (=> bs!861803 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702196) (= lambda!173546 lambda!173514))))

(declare-fun bs!861804 () Bool)

(assert (= bs!861804 (and b!4526308 d!1395239)))

(assert (=> bs!861804 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701673) (= lambda!173546 lambda!173390))))

(declare-fun bs!861805 () Bool)

(assert (= bs!861805 (and b!4526308 b!4524756)))

(assert (=> bs!861805 (not (= lambda!173546 lambda!173267))))

(declare-fun bs!861806 () Bool)

(assert (= bs!861806 (and b!4526308 d!1395801)))

(assert (=> bs!861806 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702242) (= lambda!173546 lambda!173522))))

(declare-fun bs!861807 () Bool)

(assert (= bs!861807 (and b!4526308 d!1395423)))

(assert (=> bs!861807 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701860) (= lambda!173546 lambda!173428))))

(declare-fun bs!861808 () Bool)

(assert (= bs!861808 (and b!4526308 b!4525559)))

(assert (=> bs!861808 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701854) (= lambda!173546 lambda!173427))))

(declare-fun bs!861809 () Bool)

(assert (= bs!861809 (and b!4526308 b!4525897)))

(assert (=> bs!861809 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702135) (= lambda!173546 lambda!173499))))

(declare-fun bs!861810 () Bool)

(assert (= bs!861810 (and b!4526308 d!1395453)))

(assert (=> bs!861810 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701914) (= lambda!173546 lambda!173437))))

(declare-fun bs!861811 () Bool)

(assert (= bs!861811 (and b!4526308 d!1395893)))

(assert (=> bs!861811 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701249) (= lambda!173546 lambda!173535))))

(assert (=> bs!861799 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702239) (= lambda!173546 lambda!173520))))

(assert (=> bs!861808 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173546 lambda!173426))))

(declare-fun bs!861812 () Bool)

(assert (= bs!861812 (and b!4526308 b!4525162)))

(assert (=> bs!861812 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701256) (= lambda!173546 lambda!173388))))

(declare-fun bs!861813 () Bool)

(assert (= bs!861813 (and b!4526308 d!1395611)))

(assert (=> bs!861813 (not (= lambda!173546 lambda!173468))))

(assert (=> bs!861809 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173546 lambda!173498))))

(declare-fun bs!861814 () Bool)

(assert (= bs!861814 (and b!4526308 b!4525987)))

(assert (=> bs!861814 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173546 lambda!173509))))

(assert (=> bs!861801 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173546 lambda!173510))))

(declare-fun bs!861815 () Bool)

(assert (= bs!861815 (and b!4526308 b!4525664)))

(assert (=> bs!861815 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173546 lambda!173444))))

(assert (=> bs!861797 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701994) (= lambda!173546 lambda!173459))))

(declare-fun bs!861816 () Bool)

(assert (= bs!861816 (and b!4526308 d!1395501)))

(assert (=> bs!861816 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701949) (= lambda!173546 lambda!173450))))

(declare-fun bs!861817 () Bool)

(assert (= bs!861817 (and b!4526308 b!4525605)))

(assert (=> bs!861817 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173546 lambda!173432))))

(assert (=> bs!861802 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701646) (= lambda!173546 lambda!173382))))

(declare-fun bs!861818 () Bool)

(assert (= bs!861818 (and b!4526308 d!1395243)))

(assert (=> bs!861818 (not (= lambda!173546 lambda!173394))))

(declare-fun bs!861819 () Bool)

(assert (= bs!861819 (and b!4526308 d!1395709)))

(assert (=> bs!861819 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702138) (= lambda!173546 lambda!173504))))

(assert (=> bs!861812 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701670) (= lambda!173546 lambda!173389))))

(declare-fun bs!861820 () Bool)

(assert (= bs!861820 (and b!4526308 d!1395547)))

(assert (=> bs!861820 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701997) (= lambda!173546 lambda!173462))))

(declare-fun bs!861821 () Bool)

(assert (= bs!861821 (and b!4526308 b!4525560)))

(assert (=> bs!861821 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173546 lambda!173425))))

(declare-fun bs!861822 () Bool)

(assert (= bs!861822 (and b!4526308 d!1395683)))

(assert (=> bs!861822 (= (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1701646) (= lambda!173546 lambda!173493))))

(assert (=> b!4526308 true))

(declare-fun lt!1702484 () ListMap!3609)

(declare-fun lambda!173548 () Int)

(assert (=> bs!861788 (= (= lt!1702484 lt!1701256) (= lambda!173548 lambda!173387))))

(assert (=> bs!861790 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173548 lambda!173445))))

(assert (=> bs!861791 (= (= lt!1702484 lt!1701911) (= lambda!173548 lambda!173435))))

(assert (=> bs!861792 (= (= lt!1702484 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173548 lambda!173544))))

(assert (=> bs!861793 (= (= lt!1702484 lt!1701649) (= lambda!173548 lambda!173383))))

(assert (=> bs!861794 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173548 lambda!173518))))

(assert (=> bs!861795 (= (= lt!1702484 lt!1701249) (= lambda!173548 lambda!173380))))

(assert (=> bs!861796 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173548 lambda!173456))))

(assert (=> bs!861797 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173548 lambda!173457))))

(assert (=> bs!861798 (= (= lt!1702484 lt!1701256) (= lambda!173548 lambda!173507))))

(assert (=> bs!861791 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173548 lambda!173434))))

(assert (=> bs!861799 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173548 lambda!173519))))

(assert (=> bs!861800 (= (= lt!1702484 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173548 lambda!173497))))

(assert (=> bs!861801 (= (= lt!1702484 lt!1702193) (= lambda!173548 lambda!173512))))

(assert (=> bs!861802 (= (= lt!1702484 lt!1701249) (= lambda!173548 lambda!173381))))

(assert (=> bs!861803 (= (= lt!1702484 lt!1702196) (= lambda!173548 lambda!173514))))

(assert (=> bs!861804 (= (= lt!1702484 lt!1701673) (= lambda!173548 lambda!173390))))

(assert (=> bs!861805 (not (= lambda!173548 lambda!173267))))

(assert (=> bs!861790 (= (= lt!1702484 lt!1701946) (= lambda!173548 lambda!173447))))

(assert (=> b!4526308 (= (= lt!1702484 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173548 lambda!173546))))

(assert (=> bs!861806 (= (= lt!1702484 lt!1702242) (= lambda!173548 lambda!173522))))

(assert (=> bs!861807 (= (= lt!1702484 lt!1701860) (= lambda!173548 lambda!173428))))

(assert (=> bs!861808 (= (= lt!1702484 lt!1701854) (= lambda!173548 lambda!173427))))

(assert (=> bs!861809 (= (= lt!1702484 lt!1702135) (= lambda!173548 lambda!173499))))

(assert (=> bs!861810 (= (= lt!1702484 lt!1701914) (= lambda!173548 lambda!173437))))

(assert (=> bs!861811 (= (= lt!1702484 lt!1701249) (= lambda!173548 lambda!173535))))

(assert (=> bs!861799 (= (= lt!1702484 lt!1702239) (= lambda!173548 lambda!173520))))

(assert (=> bs!861808 (= (= lt!1702484 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173548 lambda!173426))))

(assert (=> bs!861812 (= (= lt!1702484 lt!1701256) (= lambda!173548 lambda!173388))))

(assert (=> bs!861813 (not (= lambda!173548 lambda!173468))))

(assert (=> bs!861809 (= (= lt!1702484 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173548 lambda!173498))))

(assert (=> bs!861814 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173548 lambda!173509))))

(assert (=> bs!861801 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173548 lambda!173510))))

(assert (=> bs!861815 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173548 lambda!173444))))

(assert (=> bs!861797 (= (= lt!1702484 lt!1701994) (= lambda!173548 lambda!173459))))

(assert (=> bs!861816 (= (= lt!1702484 lt!1701949) (= lambda!173548 lambda!173450))))

(assert (=> bs!861817 (= (= lt!1702484 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173548 lambda!173432))))

(assert (=> bs!861802 (= (= lt!1702484 lt!1701646) (= lambda!173548 lambda!173382))))

(assert (=> bs!861818 (not (= lambda!173548 lambda!173394))))

(assert (=> bs!861819 (= (= lt!1702484 lt!1702138) (= lambda!173548 lambda!173504))))

(assert (=> bs!861812 (= (= lt!1702484 lt!1701670) (= lambda!173548 lambda!173389))))

(assert (=> bs!861820 (= (= lt!1702484 lt!1701997) (= lambda!173548 lambda!173462))))

(assert (=> bs!861821 (= (= lt!1702484 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173548 lambda!173425))))

(assert (=> bs!861822 (= (= lt!1702484 lt!1701646) (= lambda!173548 lambda!173493))))

(assert (=> b!4526308 true))

(declare-fun bs!861844 () Bool)

(declare-fun d!1395929 () Bool)

(assert (= bs!861844 (and d!1395929 b!4525163)))

(declare-fun lt!1702487 () ListMap!3609)

(declare-fun lambda!173549 () Int)

(assert (=> bs!861844 (= (= lt!1702487 lt!1701256) (= lambda!173549 lambda!173387))))

(declare-fun bs!861846 () Bool)

(assert (= bs!861846 (and d!1395929 b!4525663)))

(assert (=> bs!861846 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173549 lambda!173445))))

(declare-fun bs!861847 () Bool)

(assert (= bs!861847 (and d!1395929 b!4526309)))

(assert (=> bs!861847 (= (= lt!1702487 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173549 lambda!173544))))

(declare-fun bs!861848 () Bool)

(assert (= bs!861848 (and d!1395929 d!1395201)))

(assert (=> bs!861848 (= (= lt!1702487 lt!1701649) (= lambda!173549 lambda!173383))))

(declare-fun bs!861849 () Bool)

(assert (= bs!861849 (and d!1395929 b!4526014)))

(assert (=> bs!861849 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173549 lambda!173518))))

(declare-fun bs!861850 () Bool)

(assert (= bs!861850 (and d!1395929 b!4525156)))

(assert (=> bs!861850 (= (= lt!1702487 lt!1701249) (= lambda!173549 lambda!173380))))

(declare-fun bs!861851 () Bool)

(assert (= bs!861851 (and d!1395929 b!4525712)))

(assert (=> bs!861851 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173549 lambda!173456))))

(declare-fun bs!861852 () Bool)

(assert (= bs!861852 (and d!1395929 b!4525711)))

(assert (=> bs!861852 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173549 lambda!173457))))

(declare-fun bs!861853 () Bool)

(assert (= bs!861853 (and d!1395929 d!1395775)))

(assert (=> bs!861853 (= (= lt!1702487 lt!1701256) (= lambda!173549 lambda!173507))))

(declare-fun bs!861854 () Bool)

(assert (= bs!861854 (and d!1395929 b!4525604)))

(assert (=> bs!861854 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173549 lambda!173434))))

(declare-fun bs!861855 () Bool)

(assert (= bs!861855 (and d!1395929 b!4526013)))

(assert (=> bs!861855 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173549 lambda!173519))))

(declare-fun bs!861856 () Bool)

(assert (= bs!861856 (and d!1395929 b!4525898)))

(assert (=> bs!861856 (= (= lt!1702487 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173549 lambda!173497))))

(declare-fun bs!861857 () Bool)

(assert (= bs!861857 (and d!1395929 b!4525986)))

(assert (=> bs!861857 (= (= lt!1702487 lt!1702193) (= lambda!173549 lambda!173512))))

(declare-fun bs!861859 () Bool)

(assert (= bs!861859 (and d!1395929 b!4525155)))

(assert (=> bs!861859 (= (= lt!1702487 lt!1701249) (= lambda!173549 lambda!173381))))

(declare-fun bs!861860 () Bool)

(assert (= bs!861860 (and d!1395929 d!1395779)))

(assert (=> bs!861860 (= (= lt!1702487 lt!1702196) (= lambda!173549 lambda!173514))))

(assert (=> bs!861854 (= (= lt!1702487 lt!1701911) (= lambda!173549 lambda!173435))))

(declare-fun bs!861861 () Bool)

(assert (= bs!861861 (and d!1395929 b!4526308)))

(assert (=> bs!861861 (= (= lt!1702487 lt!1702484) (= lambda!173549 lambda!173548))))

(declare-fun bs!861862 () Bool)

(assert (= bs!861862 (and d!1395929 d!1395239)))

(assert (=> bs!861862 (= (= lt!1702487 lt!1701673) (= lambda!173549 lambda!173390))))

(declare-fun bs!861863 () Bool)

(assert (= bs!861863 (and d!1395929 b!4524756)))

(assert (=> bs!861863 (not (= lambda!173549 lambda!173267))))

(assert (=> bs!861846 (= (= lt!1702487 lt!1701946) (= lambda!173549 lambda!173447))))

(assert (=> bs!861861 (= (= lt!1702487 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173549 lambda!173546))))

(declare-fun bs!861864 () Bool)

(assert (= bs!861864 (and d!1395929 d!1395801)))

(assert (=> bs!861864 (= (= lt!1702487 lt!1702242) (= lambda!173549 lambda!173522))))

(declare-fun bs!861865 () Bool)

(assert (= bs!861865 (and d!1395929 d!1395423)))

(assert (=> bs!861865 (= (= lt!1702487 lt!1701860) (= lambda!173549 lambda!173428))))

(declare-fun bs!861866 () Bool)

(assert (= bs!861866 (and d!1395929 b!4525559)))

(assert (=> bs!861866 (= (= lt!1702487 lt!1701854) (= lambda!173549 lambda!173427))))

(declare-fun bs!861867 () Bool)

(assert (= bs!861867 (and d!1395929 b!4525897)))

(assert (=> bs!861867 (= (= lt!1702487 lt!1702135) (= lambda!173549 lambda!173499))))

(declare-fun bs!861868 () Bool)

(assert (= bs!861868 (and d!1395929 d!1395453)))

(assert (=> bs!861868 (= (= lt!1702487 lt!1701914) (= lambda!173549 lambda!173437))))

(declare-fun bs!861869 () Bool)

(assert (= bs!861869 (and d!1395929 d!1395893)))

(assert (=> bs!861869 (= (= lt!1702487 lt!1701249) (= lambda!173549 lambda!173535))))

(assert (=> bs!861855 (= (= lt!1702487 lt!1702239) (= lambda!173549 lambda!173520))))

(assert (=> bs!861866 (= (= lt!1702487 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173549 lambda!173426))))

(declare-fun bs!861870 () Bool)

(assert (= bs!861870 (and d!1395929 b!4525162)))

(assert (=> bs!861870 (= (= lt!1702487 lt!1701256) (= lambda!173549 lambda!173388))))

(declare-fun bs!861871 () Bool)

(assert (= bs!861871 (and d!1395929 d!1395611)))

(assert (=> bs!861871 (not (= lambda!173549 lambda!173468))))

(assert (=> bs!861867 (= (= lt!1702487 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173549 lambda!173498))))

(declare-fun bs!861872 () Bool)

(assert (= bs!861872 (and d!1395929 b!4525987)))

(assert (=> bs!861872 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173549 lambda!173509))))

(assert (=> bs!861857 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173549 lambda!173510))))

(declare-fun bs!861873 () Bool)

(assert (= bs!861873 (and d!1395929 b!4525664)))

(assert (=> bs!861873 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173549 lambda!173444))))

(assert (=> bs!861852 (= (= lt!1702487 lt!1701994) (= lambda!173549 lambda!173459))))

(declare-fun bs!861874 () Bool)

(assert (= bs!861874 (and d!1395929 d!1395501)))

(assert (=> bs!861874 (= (= lt!1702487 lt!1701949) (= lambda!173549 lambda!173450))))

(declare-fun bs!861875 () Bool)

(assert (= bs!861875 (and d!1395929 b!4525605)))

(assert (=> bs!861875 (= (= lt!1702487 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173549 lambda!173432))))

(assert (=> bs!861859 (= (= lt!1702487 lt!1701646) (= lambda!173549 lambda!173382))))

(declare-fun bs!861877 () Bool)

(assert (= bs!861877 (and d!1395929 d!1395243)))

(assert (=> bs!861877 (not (= lambda!173549 lambda!173394))))

(declare-fun bs!861878 () Bool)

(assert (= bs!861878 (and d!1395929 d!1395709)))

(assert (=> bs!861878 (= (= lt!1702487 lt!1702138) (= lambda!173549 lambda!173504))))

(assert (=> bs!861870 (= (= lt!1702487 lt!1701670) (= lambda!173549 lambda!173389))))

(declare-fun bs!861880 () Bool)

(assert (= bs!861880 (and d!1395929 d!1395547)))

(assert (=> bs!861880 (= (= lt!1702487 lt!1701997) (= lambda!173549 lambda!173462))))

(declare-fun bs!861881 () Bool)

(assert (= bs!861881 (and d!1395929 b!4525560)))

(assert (=> bs!861881 (= (= lt!1702487 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173549 lambda!173425))))

(declare-fun bs!861882 () Bool)

(assert (= bs!861882 (and d!1395929 d!1395683)))

(assert (=> bs!861882 (= (= lt!1702487 lt!1701646) (= lambda!173549 lambda!173493))))

(assert (=> d!1395929 true))

(declare-fun bm!315459 () Bool)

(declare-fun c!772705 () Bool)

(declare-fun call!315466 () Bool)

(assert (=> bm!315459 (= call!315466 (forall!10287 (toList!4347 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) (ite c!772705 lambda!173544 lambda!173546)))))

(declare-fun e!2820183 () Bool)

(declare-fun b!4526305 () Bool)

(assert (=> b!4526305 (= e!2820183 (forall!10287 (toList!4347 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) lambda!173548))))

(declare-fun bm!315460 () Bool)

(declare-fun call!315464 () Unit!95830)

(assert (=> bm!315460 (= call!315464 (lemmaContainsAllItsOwnKeys!346 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun call!315465 () Bool)

(declare-fun bm!315461 () Bool)

(declare-fun lt!1702483 () ListMap!3609)

(assert (=> bm!315461 (= call!315465 (forall!10287 (ite c!772705 (toList!4347 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) (toList!4347 lt!1702483)) (ite c!772705 lambda!173544 lambda!173548)))))

(declare-fun b!4526306 () Bool)

(declare-fun res!1884495 () Bool)

(declare-fun e!2820182 () Bool)

(assert (=> b!4526306 (=> (not res!1884495) (not e!2820182))))

(assert (=> b!4526306 (= res!1884495 (forall!10287 (toList!4347 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) lambda!173549))))

(declare-fun b!4526307 () Bool)

(assert (=> b!4526307 (= e!2820182 (invariantList!1025 (toList!4347 lt!1702487)))))

(declare-fun e!2820181 () ListMap!3609)

(assert (=> b!4526308 (= e!2820181 lt!1702484)))

(assert (=> b!4526308 (= lt!1702483 (+!1558 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(assert (=> b!4526308 (= lt!1702484 (addToMapMapFromBucket!697 (t!357760 (t!357760 (_2!28852 lt!1701242))) (+!1558 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) (h!56535 (t!357760 (_2!28852 lt!1701242))))))))

(declare-fun lt!1702481 () Unit!95830)

(assert (=> b!4526308 (= lt!1702481 call!315464)))

(assert (=> b!4526308 call!315466))

(declare-fun lt!1702492 () Unit!95830)

(assert (=> b!4526308 (= lt!1702492 lt!1702481)))

(assert (=> b!4526308 call!315465))

(declare-fun lt!1702491 () Unit!95830)

(declare-fun Unit!96104 () Unit!95830)

(assert (=> b!4526308 (= lt!1702491 Unit!96104)))

(assert (=> b!4526308 (forall!10287 (t!357760 (t!357760 (_2!28852 lt!1701242))) lambda!173548)))

(declare-fun lt!1702479 () Unit!95830)

(declare-fun Unit!96105 () Unit!95830)

(assert (=> b!4526308 (= lt!1702479 Unit!96105)))

(declare-fun lt!1702490 () Unit!95830)

(declare-fun Unit!96106 () Unit!95830)

(assert (=> b!4526308 (= lt!1702490 Unit!96106)))

(declare-fun lt!1702478 () Unit!95830)

(assert (=> b!4526308 (= lt!1702478 (forallContained!2539 (toList!4347 lt!1702483) lambda!173548 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(assert (=> b!4526308 (contains!13418 lt!1702483 (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702473 () Unit!95830)

(declare-fun Unit!96107 () Unit!95830)

(assert (=> b!4526308 (= lt!1702473 Unit!96107)))

(assert (=> b!4526308 (contains!13418 lt!1702484 (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702475 () Unit!95830)

(declare-fun Unit!96108 () Unit!95830)

(assert (=> b!4526308 (= lt!1702475 Unit!96108)))

(assert (=> b!4526308 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173548)))

(declare-fun lt!1702476 () Unit!95830)

(declare-fun Unit!96109 () Unit!95830)

(assert (=> b!4526308 (= lt!1702476 Unit!96109)))

(assert (=> b!4526308 (forall!10287 (toList!4347 lt!1702483) lambda!173548)))

(declare-fun lt!1702480 () Unit!95830)

(declare-fun Unit!96110 () Unit!95830)

(assert (=> b!4526308 (= lt!1702480 Unit!96110)))

(declare-fun lt!1702477 () Unit!95830)

(declare-fun Unit!96111 () Unit!95830)

(assert (=> b!4526308 (= lt!1702477 Unit!96111)))

(declare-fun lt!1702486 () Unit!95830)

(assert (=> b!4526308 (= lt!1702486 (addForallContainsKeyThenBeforeAdding!346 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702484 (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))) (_2!28851 (h!56535 (t!357760 (_2!28852 lt!1701242))))))))

(assert (=> b!4526308 (forall!10287 (toList!4347 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) lambda!173548)))

(declare-fun lt!1702489 () Unit!95830)

(assert (=> b!4526308 (= lt!1702489 lt!1702486)))

(assert (=> b!4526308 (forall!10287 (toList!4347 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) lambda!173548)))

(declare-fun lt!1702485 () Unit!95830)

(declare-fun Unit!96112 () Unit!95830)

(assert (=> b!4526308 (= lt!1702485 Unit!96112)))

(declare-fun res!1884496 () Bool)

(assert (=> b!4526308 (= res!1884496 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173548))))

(assert (=> b!4526308 (=> (not res!1884496) (not e!2820183))))

(assert (=> b!4526308 e!2820183))

(declare-fun lt!1702482 () Unit!95830)

(declare-fun Unit!96113 () Unit!95830)

(assert (=> b!4526308 (= lt!1702482 Unit!96113)))

(assert (=> b!4526309 (= e!2820181 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun lt!1702474 () Unit!95830)

(assert (=> b!4526309 (= lt!1702474 call!315464)))

(assert (=> b!4526309 call!315465))

(declare-fun lt!1702488 () Unit!95830)

(assert (=> b!4526309 (= lt!1702488 lt!1702474)))

(assert (=> b!4526309 call!315466))

(declare-fun lt!1702472 () Unit!95830)

(declare-fun Unit!96114 () Unit!95830)

(assert (=> b!4526309 (= lt!1702472 Unit!96114)))

(assert (=> d!1395929 e!2820182))

(declare-fun res!1884497 () Bool)

(assert (=> d!1395929 (=> (not res!1884497) (not e!2820182))))

(assert (=> d!1395929 (= res!1884497 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173549))))

(assert (=> d!1395929 (= lt!1702487 e!2820181)))

(assert (=> d!1395929 (= c!772705 ((_ is Nil!50674) (t!357760 (_2!28852 lt!1701242))))))

(assert (=> d!1395929 (noDuplicateKeys!1170 (t!357760 (_2!28852 lt!1701242)))))

(assert (=> d!1395929 (= (addToMapMapFromBucket!697 (t!357760 (_2!28852 lt!1701242)) (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) lt!1702487)))

(assert (= (and d!1395929 c!772705) b!4526309))

(assert (= (and d!1395929 (not c!772705)) b!4526308))

(assert (= (and b!4526308 res!1884496) b!4526305))

(assert (= (or b!4526309 b!4526308) bm!315459))

(assert (= (or b!4526309 b!4526308) bm!315461))

(assert (= (or b!4526309 b!4526308) bm!315460))

(assert (= (and d!1395929 res!1884497) b!4526306))

(assert (= (and b!4526306 res!1884495) b!4526307))

(declare-fun m!5279783 () Bool)

(assert (=> b!4526307 m!5279783))

(declare-fun m!5279785 () Bool)

(assert (=> b!4526308 m!5279785))

(declare-fun m!5279787 () Bool)

(assert (=> b!4526308 m!5279787))

(declare-fun m!5279789 () Bool)

(assert (=> b!4526308 m!5279789))

(assert (=> b!4526308 m!5277515))

(declare-fun m!5279791 () Bool)

(assert (=> b!4526308 m!5279791))

(declare-fun m!5279793 () Bool)

(assert (=> b!4526308 m!5279793))

(assert (=> b!4526308 m!5279793))

(declare-fun m!5279795 () Bool)

(assert (=> b!4526308 m!5279795))

(declare-fun m!5279797 () Bool)

(assert (=> b!4526308 m!5279797))

(declare-fun m!5279799 () Bool)

(assert (=> b!4526308 m!5279799))

(assert (=> b!4526308 m!5277515))

(declare-fun m!5279801 () Bool)

(assert (=> b!4526308 m!5279801))

(assert (=> b!4526308 m!5279785))

(assert (=> b!4526308 m!5279791))

(declare-fun m!5279803 () Bool)

(assert (=> b!4526308 m!5279803))

(declare-fun m!5279805 () Bool)

(assert (=> bm!315459 m!5279805))

(assert (=> b!4526305 m!5279793))

(assert (=> bm!315460 m!5277515))

(declare-fun m!5279807 () Bool)

(assert (=> bm!315460 m!5279807))

(declare-fun m!5279809 () Bool)

(assert (=> bm!315461 m!5279809))

(declare-fun m!5279811 () Bool)

(assert (=> d!1395929 m!5279811))

(assert (=> d!1395929 m!5276811))

(declare-fun m!5279813 () Bool)

(assert (=> b!4526306 m!5279813))

(assert (=> b!4525162 d!1395929))

(declare-fun d!1395955 () Bool)

(declare-fun res!1884509 () Bool)

(declare-fun e!2820197 () Bool)

(assert (=> d!1395955 (=> res!1884509 e!2820197)))

(assert (=> d!1395955 (= res!1884509 ((_ is Nil!50674) (_2!28852 lt!1701242)))))

(assert (=> d!1395955 (= (forall!10287 (_2!28852 lt!1701242) lambda!173389) e!2820197)))

(declare-fun b!4526329 () Bool)

(declare-fun e!2820198 () Bool)

(assert (=> b!4526329 (= e!2820197 e!2820198)))

(declare-fun res!1884510 () Bool)

(assert (=> b!4526329 (=> (not res!1884510) (not e!2820198))))

(assert (=> b!4526329 (= res!1884510 (dynLambda!21177 lambda!173389 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun b!4526330 () Bool)

(assert (=> b!4526330 (= e!2820198 (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173389))))

(assert (= (and d!1395955 (not res!1884509)) b!4526329))

(assert (= (and b!4526329 res!1884510) b!4526330))

(declare-fun b_lambda!155771 () Bool)

(assert (=> (not b_lambda!155771) (not b!4526329)))

(declare-fun m!5279815 () Bool)

(assert (=> b!4526329 m!5279815))

(assert (=> b!4526330 m!5277523))

(assert (=> b!4525162 d!1395955))

(assert (=> b!4525162 d!1395495))

(declare-fun d!1395957 () Bool)

(declare-fun res!1884511 () Bool)

(declare-fun e!2820199 () Bool)

(assert (=> d!1395957 (=> res!1884511 e!2820199)))

(assert (=> d!1395957 (= res!1884511 ((_ is Nil!50674) (toList!4347 lt!1701669)))))

(assert (=> d!1395957 (= (forall!10287 (toList!4347 lt!1701669) lambda!173389) e!2820199)))

(declare-fun b!4526331 () Bool)

(declare-fun e!2820200 () Bool)

(assert (=> b!4526331 (= e!2820199 e!2820200)))

(declare-fun res!1884512 () Bool)

(assert (=> b!4526331 (=> (not res!1884512) (not e!2820200))))

(assert (=> b!4526331 (= res!1884512 (dynLambda!21177 lambda!173389 (h!56535 (toList!4347 lt!1701669))))))

(declare-fun b!4526332 () Bool)

(assert (=> b!4526332 (= e!2820200 (forall!10287 (t!357760 (toList!4347 lt!1701669)) lambda!173389))))

(assert (= (and d!1395957 (not res!1884511)) b!4526331))

(assert (= (and b!4526331 res!1884512) b!4526332))

(declare-fun b_lambda!155773 () Bool)

(assert (=> (not b_lambda!155773) (not b!4526331)))

(declare-fun m!5279817 () Bool)

(assert (=> b!4526331 m!5279817))

(declare-fun m!5279819 () Bool)

(assert (=> b!4526332 m!5279819))

(assert (=> b!4525162 d!1395957))

(declare-fun bs!861922 () Bool)

(declare-fun d!1395959 () Bool)

(assert (= bs!861922 (and d!1395959 b!4525163)))

(declare-fun lambda!173554 () Int)

(assert (=> bs!861922 (= (= lt!1701670 lt!1701256) (= lambda!173554 lambda!173387))))

(declare-fun bs!861923 () Bool)

(assert (= bs!861923 (and d!1395959 b!4525663)))

(assert (=> bs!861923 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173554 lambda!173445))))

(declare-fun bs!861924 () Bool)

(assert (= bs!861924 (and d!1395959 b!4526309)))

(assert (=> bs!861924 (= (= lt!1701670 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173554 lambda!173544))))

(declare-fun bs!861925 () Bool)

(assert (= bs!861925 (and d!1395959 d!1395201)))

(assert (=> bs!861925 (= (= lt!1701670 lt!1701649) (= lambda!173554 lambda!173383))))

(declare-fun bs!861926 () Bool)

(assert (= bs!861926 (and d!1395959 b!4526014)))

(assert (=> bs!861926 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173554 lambda!173518))))

(declare-fun bs!861927 () Bool)

(assert (= bs!861927 (and d!1395959 b!4525156)))

(assert (=> bs!861927 (= (= lt!1701670 lt!1701249) (= lambda!173554 lambda!173380))))

(declare-fun bs!861928 () Bool)

(assert (= bs!861928 (and d!1395959 b!4525712)))

(assert (=> bs!861928 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173554 lambda!173456))))

(declare-fun bs!861929 () Bool)

(assert (= bs!861929 (and d!1395959 b!4525711)))

(assert (=> bs!861929 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 (+!1556 lt!1701251 lt!1701242))))) (= lambda!173554 lambda!173457))))

(declare-fun bs!861930 () Bool)

(assert (= bs!861930 (and d!1395959 d!1395775)))

(assert (=> bs!861930 (= (= lt!1701670 lt!1701256) (= lambda!173554 lambda!173507))))

(declare-fun bs!861931 () Bool)

(assert (= bs!861931 (and d!1395959 b!4525604)))

(assert (=> bs!861931 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173554 lambda!173434))))

(declare-fun bs!861932 () Bool)

(assert (= bs!861932 (and d!1395959 b!4526013)))

(assert (=> bs!861932 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 lt!1701246)))) (= lambda!173554 lambda!173519))))

(declare-fun bs!861933 () Bool)

(assert (= bs!861933 (and d!1395959 b!4525898)))

(assert (=> bs!861933 (= (= lt!1701670 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173554 lambda!173497))))

(declare-fun bs!861934 () Bool)

(assert (= bs!861934 (and d!1395959 b!4525986)))

(assert (=> bs!861934 (= (= lt!1701670 lt!1702193) (= lambda!173554 lambda!173512))))

(declare-fun bs!861935 () Bool)

(assert (= bs!861935 (and d!1395959 b!4525155)))

(assert (=> bs!861935 (= (= lt!1701670 lt!1701249) (= lambda!173554 lambda!173381))))

(declare-fun bs!861936 () Bool)

(assert (= bs!861936 (and d!1395959 d!1395779)))

(assert (=> bs!861936 (= (= lt!1701670 lt!1702196) (= lambda!173554 lambda!173514))))

(assert (=> bs!861931 (= (= lt!1701670 lt!1701911) (= lambda!173554 lambda!173435))))

(declare-fun bs!861937 () Bool)

(assert (= bs!861937 (and d!1395959 b!4526308)))

(assert (=> bs!861937 (= (= lt!1701670 lt!1702484) (= lambda!173554 lambda!173548))))

(declare-fun bs!861938 () Bool)

(assert (= bs!861938 (and d!1395959 d!1395239)))

(assert (=> bs!861938 (= (= lt!1701670 lt!1701673) (= lambda!173554 lambda!173390))))

(declare-fun bs!861939 () Bool)

(assert (= bs!861939 (and d!1395959 b!4524756)))

(assert (=> bs!861939 (not (= lambda!173554 lambda!173267))))

(assert (=> bs!861923 (= (= lt!1701670 lt!1701946) (= lambda!173554 lambda!173447))))

(assert (=> bs!861937 (= (= lt!1701670 (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173554 lambda!173546))))

(declare-fun bs!861940 () Bool)

(assert (= bs!861940 (and d!1395959 d!1395801)))

(assert (=> bs!861940 (= (= lt!1701670 lt!1702242) (= lambda!173554 lambda!173522))))

(declare-fun bs!861941 () Bool)

(assert (= bs!861941 (and d!1395959 d!1395423)))

(assert (=> bs!861941 (= (= lt!1701670 lt!1701860) (= lambda!173554 lambda!173428))))

(declare-fun bs!861942 () Bool)

(assert (= bs!861942 (and d!1395959 b!4525559)))

(assert (=> bs!861942 (= (= lt!1701670 lt!1701854) (= lambda!173554 lambda!173427))))

(declare-fun bs!861943 () Bool)

(assert (= bs!861943 (and d!1395959 b!4525897)))

(assert (=> bs!861943 (= (= lt!1701670 lt!1702135) (= lambda!173554 lambda!173499))))

(declare-fun bs!861944 () Bool)

(assert (= bs!861944 (and d!1395959 d!1395453)))

(assert (=> bs!861944 (= (= lt!1701670 lt!1701914) (= lambda!173554 lambda!173437))))

(declare-fun bs!861945 () Bool)

(assert (= bs!861945 (and d!1395959 d!1395893)))

(assert (=> bs!861945 (= (= lt!1701670 lt!1701249) (= lambda!173554 lambda!173535))))

(assert (=> bs!861932 (= (= lt!1701670 lt!1702239) (= lambda!173554 lambda!173520))))

(assert (=> bs!861942 (= (= lt!1701670 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173554 lambda!173426))))

(declare-fun bs!861946 () Bool)

(assert (= bs!861946 (and d!1395959 b!4525162)))

(assert (=> bs!861946 (= (= lt!1701670 lt!1701256) (= lambda!173554 lambda!173388))))

(declare-fun bs!861947 () Bool)

(assert (= bs!861947 (and d!1395959 d!1395611)))

(assert (=> bs!861947 (not (= lambda!173554 lambda!173468))))

(assert (=> bs!861943 (= (= lt!1701670 (+!1558 lt!1701249 (h!56535 (_2!28852 lt!1701242)))) (= lambda!173554 lambda!173498))))

(declare-fun bs!861948 () Bool)

(assert (= bs!861948 (and d!1395959 b!4525987)))

(assert (=> bs!861948 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173554 lambda!173509))))

(assert (=> bs!861934 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 lt!1701251)))) (= lambda!173554 lambda!173510))))

(declare-fun bs!861950 () Bool)

(assert (= bs!861950 (and d!1395959 b!4525664)))

(assert (=> bs!861950 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 lt!1701255)))) (= lambda!173554 lambda!173444))))

(assert (=> bs!861929 (= (= lt!1701670 lt!1701994) (= lambda!173554 lambda!173459))))

(declare-fun bs!861951 () Bool)

(assert (= bs!861951 (and d!1395959 d!1395501)))

(assert (=> bs!861951 (= (= lt!1701670 lt!1701949) (= lambda!173554 lambda!173450))))

(declare-fun bs!861952 () Bool)

(assert (= bs!861952 (and d!1395959 b!4525605)))

(assert (=> bs!861952 (= (= lt!1701670 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) (= lambda!173554 lambda!173432))))

(assert (=> bs!861935 (= (= lt!1701670 lt!1701646) (= lambda!173554 lambda!173382))))

(declare-fun bs!861953 () Bool)

(assert (= bs!861953 (and d!1395959 d!1395243)))

(assert (=> bs!861953 (not (= lambda!173554 lambda!173394))))

(declare-fun bs!861954 () Bool)

(assert (= bs!861954 (and d!1395959 d!1395709)))

(assert (=> bs!861954 (= (= lt!1701670 lt!1702138) (= lambda!173554 lambda!173504))))

(assert (=> bs!861946 (= lambda!173554 lambda!173389)))

(declare-fun bs!861955 () Bool)

(assert (= bs!861955 (and d!1395959 d!1395929)))

(assert (=> bs!861955 (= (= lt!1701670 lt!1702487) (= lambda!173554 lambda!173549))))

(declare-fun bs!861956 () Bool)

(assert (= bs!861956 (and d!1395959 d!1395547)))

(assert (=> bs!861956 (= (= lt!1701670 lt!1701997) (= lambda!173554 lambda!173462))))

(declare-fun bs!861957 () Bool)

(assert (= bs!861957 (and d!1395959 b!4525560)))

(assert (=> bs!861957 (= (= lt!1701670 (extractMap!1226 (t!357761 (t!357761 (toList!4348 lm!1477))))) (= lambda!173554 lambda!173425))))

(declare-fun bs!861958 () Bool)

(assert (= bs!861958 (and d!1395959 d!1395683)))

(assert (=> bs!861958 (= (= lt!1701670 lt!1701646) (= lambda!173554 lambda!173493))))

(assert (=> d!1395959 true))

(assert (=> d!1395959 (forall!10287 (toList!4347 lt!1701256) lambda!173554)))

(declare-fun lt!1702504 () Unit!95830)

(assert (=> d!1395959 (= lt!1702504 (choose!29640 lt!1701256 lt!1701670 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395959 (forall!10287 (toList!4347 (+!1558 lt!1701256 (tuple2!51115 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))) lambda!173554)))

(assert (=> d!1395959 (= (addForallContainsKeyThenBeforeAdding!346 lt!1701256 lt!1701670 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))) lt!1702504)))

(declare-fun bs!861959 () Bool)

(assert (= bs!861959 d!1395959))

(declare-fun m!5279855 () Bool)

(assert (=> bs!861959 m!5279855))

(declare-fun m!5279857 () Bool)

(assert (=> bs!861959 m!5279857))

(declare-fun m!5279859 () Bool)

(assert (=> bs!861959 m!5279859))

(declare-fun m!5279861 () Bool)

(assert (=> bs!861959 m!5279861))

(assert (=> b!4525162 d!1395959))

(declare-fun d!1395969 () Bool)

(declare-fun e!2820207 () Bool)

(assert (=> d!1395969 e!2820207))

(declare-fun res!1884516 () Bool)

(assert (=> d!1395969 (=> (not res!1884516) (not e!2820207))))

(declare-fun lt!1702512 () ListMap!3609)

(assert (=> d!1395969 (= res!1884516 (contains!13418 lt!1702512 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702511 () List!50798)

(assert (=> d!1395969 (= lt!1702512 (ListMap!3610 lt!1702511))))

(declare-fun lt!1702509 () Unit!95830)

(declare-fun lt!1702510 () Unit!95830)

(assert (=> d!1395969 (= lt!1702509 lt!1702510)))

(assert (=> d!1395969 (= (getValueByKey!1107 lt!1702511 (_1!28851 (h!56535 (_2!28852 lt!1701242)))) (Some!11134 (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395969 (= lt!1702510 (lemmaContainsTupThenGetReturnValue!692 lt!1702511 (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395969 (= lt!1702511 (insertNoDuplicatedKeys!284 (toList!4347 lt!1701256) (_1!28851 (h!56535 (_2!28852 lt!1701242))) (_2!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395969 (= (+!1558 lt!1701256 (h!56535 (_2!28852 lt!1701242))) lt!1702512)))

(declare-fun b!4526342 () Bool)

(declare-fun res!1884517 () Bool)

(assert (=> b!4526342 (=> (not res!1884517) (not e!2820207))))

(assert (=> b!4526342 (= res!1884517 (= (getValueByKey!1107 (toList!4347 lt!1702512) (_1!28851 (h!56535 (_2!28852 lt!1701242)))) (Some!11134 (_2!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4526343 () Bool)

(assert (=> b!4526343 (= e!2820207 (contains!13423 (toList!4347 lt!1702512) (h!56535 (_2!28852 lt!1701242))))))

(assert (= (and d!1395969 res!1884516) b!4526342))

(assert (= (and b!4526342 res!1884517) b!4526343))

(declare-fun m!5279867 () Bool)

(assert (=> d!1395969 m!5279867))

(declare-fun m!5279871 () Bool)

(assert (=> d!1395969 m!5279871))

(declare-fun m!5279875 () Bool)

(assert (=> d!1395969 m!5279875))

(declare-fun m!5279879 () Bool)

(assert (=> d!1395969 m!5279879))

(declare-fun m!5279881 () Bool)

(assert (=> b!4526342 m!5279881))

(declare-fun m!5279883 () Bool)

(assert (=> b!4526343 m!5279883))

(assert (=> b!4525162 d!1395969))

(declare-fun d!1395975 () Bool)

(assert (=> d!1395975 (dynLambda!21177 lambda!173389 (h!56535 (_2!28852 lt!1701242)))))

(declare-fun lt!1702515 () Unit!95830)

(assert (=> d!1395975 (= lt!1702515 (choose!29623 (toList!4347 lt!1701669) lambda!173389 (h!56535 (_2!28852 lt!1701242))))))

(declare-fun e!2820214 () Bool)

(assert (=> d!1395975 e!2820214))

(declare-fun res!1884522 () Bool)

(assert (=> d!1395975 (=> (not res!1884522) (not e!2820214))))

(assert (=> d!1395975 (= res!1884522 (forall!10287 (toList!4347 lt!1701669) lambda!173389))))

(assert (=> d!1395975 (= (forallContained!2539 (toList!4347 lt!1701669) lambda!173389 (h!56535 (_2!28852 lt!1701242))) lt!1702515)))

(declare-fun b!4526356 () Bool)

(assert (=> b!4526356 (= e!2820214 (contains!13423 (toList!4347 lt!1701669) (h!56535 (_2!28852 lt!1701242))))))

(assert (= (and d!1395975 res!1884522) b!4526356))

(declare-fun b_lambda!155777 () Bool)

(assert (=> (not b_lambda!155777) (not d!1395975)))

(assert (=> d!1395975 m!5279815))

(declare-fun m!5279885 () Bool)

(assert (=> d!1395975 m!5279885))

(assert (=> d!1395975 m!5277521))

(declare-fun m!5279887 () Bool)

(assert (=> b!4526356 m!5279887))

(assert (=> b!4525162 d!1395975))

(declare-fun b!4526357 () Bool)

(declare-fun e!2820218 () List!50801)

(assert (=> b!4526357 (= e!2820218 (getKeysList!472 (toList!4347 lt!1701670)))))

(declare-fun b!4526358 () Bool)

(assert (=> b!4526358 false))

(declare-fun lt!1702520 () Unit!95830)

(declare-fun lt!1702518 () Unit!95830)

(assert (=> b!4526358 (= lt!1702520 lt!1702518)))

(assert (=> b!4526358 (containsKey!1808 (toList!4347 lt!1701670) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))

(assert (=> b!4526358 (= lt!1702518 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 lt!1701670) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun e!2820220 () Unit!95830)

(declare-fun Unit!96115 () Unit!95830)

(assert (=> b!4526358 (= e!2820220 Unit!96115)))

(declare-fun b!4526359 () Bool)

(declare-fun e!2820216 () Bool)

(assert (=> b!4526359 (= e!2820216 (contains!13420 (keys!17612 lt!1701670) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun b!4526360 () Bool)

(declare-fun e!2820217 () Bool)

(assert (=> b!4526360 (= e!2820217 e!2820216)))

(declare-fun res!1884525 () Bool)

(assert (=> b!4526360 (=> (not res!1884525) (not e!2820216))))

(assert (=> b!4526360 (= res!1884525 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701670) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4526361 () Bool)

(declare-fun Unit!96116 () Unit!95830)

(assert (=> b!4526361 (= e!2820220 Unit!96116)))

(declare-fun b!4526362 () Bool)

(declare-fun e!2820215 () Unit!95830)

(assert (=> b!4526362 (= e!2820215 e!2820220)))

(declare-fun c!772719 () Bool)

(declare-fun call!315470 () Bool)

(assert (=> b!4526362 (= c!772719 call!315470)))

(declare-fun d!1395977 () Bool)

(assert (=> d!1395977 e!2820217))

(declare-fun res!1884524 () Bool)

(assert (=> d!1395977 (=> res!1884524 e!2820217)))

(declare-fun e!2820219 () Bool)

(assert (=> d!1395977 (= res!1884524 e!2820219)))

(declare-fun res!1884523 () Bool)

(assert (=> d!1395977 (=> (not res!1884523) (not e!2820219))))

(declare-fun lt!1702517 () Bool)

(assert (=> d!1395977 (= res!1884523 (not lt!1702517))))

(declare-fun lt!1702519 () Bool)

(assert (=> d!1395977 (= lt!1702517 lt!1702519)))

(declare-fun lt!1702516 () Unit!95830)

(assert (=> d!1395977 (= lt!1702516 e!2820215)))

(declare-fun c!772717 () Bool)

(assert (=> d!1395977 (= c!772717 lt!1702519)))

(assert (=> d!1395977 (= lt!1702519 (containsKey!1808 (toList!4347 lt!1701670) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395977 (= (contains!13418 lt!1701670 (_1!28851 (h!56535 (_2!28852 lt!1701242)))) lt!1702517)))

(declare-fun b!4526363 () Bool)

(declare-fun lt!1702522 () Unit!95830)

(assert (=> b!4526363 (= e!2820215 lt!1702522)))

(declare-fun lt!1702523 () Unit!95830)

(assert (=> b!4526363 (= lt!1702523 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701670) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4526363 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701670) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702521 () Unit!95830)

(assert (=> b!4526363 (= lt!1702521 lt!1702523)))

(assert (=> b!4526363 (= lt!1702522 (lemmaInListThenGetKeysListContains!468 (toList!4347 lt!1701670) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4526363 call!315470))

(declare-fun b!4526364 () Bool)

(assert (=> b!4526364 (= e!2820219 (not (contains!13420 (keys!17612 lt!1701670) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4526365 () Bool)

(assert (=> b!4526365 (= e!2820218 (keys!17612 lt!1701670))))

(declare-fun bm!315465 () Bool)

(assert (=> bm!315465 (= call!315470 (contains!13420 e!2820218 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun c!772718 () Bool)

(assert (=> bm!315465 (= c!772718 c!772717)))

(assert (= (and d!1395977 c!772717) b!4526363))

(assert (= (and d!1395977 (not c!772717)) b!4526362))

(assert (= (and b!4526362 c!772719) b!4526358))

(assert (= (and b!4526362 (not c!772719)) b!4526361))

(assert (= (or b!4526363 b!4526362) bm!315465))

(assert (= (and bm!315465 c!772718) b!4526357))

(assert (= (and bm!315465 (not c!772718)) b!4526365))

(assert (= (and d!1395977 res!1884523) b!4526364))

(assert (= (and d!1395977 (not res!1884524)) b!4526360))

(assert (= (and b!4526360 res!1884525) b!4526359))

(declare-fun m!5279899 () Bool)

(assert (=> bm!315465 m!5279899))

(declare-fun m!5279901 () Bool)

(assert (=> b!4526360 m!5279901))

(assert (=> b!4526360 m!5279901))

(declare-fun m!5279903 () Bool)

(assert (=> b!4526360 m!5279903))

(declare-fun m!5279907 () Bool)

(assert (=> b!4526357 m!5279907))

(declare-fun m!5279909 () Bool)

(assert (=> b!4526365 m!5279909))

(declare-fun m!5279913 () Bool)

(assert (=> b!4526358 m!5279913))

(declare-fun m!5279915 () Bool)

(assert (=> b!4526358 m!5279915))

(declare-fun m!5279917 () Bool)

(assert (=> b!4526363 m!5279917))

(assert (=> b!4526363 m!5279901))

(assert (=> b!4526363 m!5279901))

(assert (=> b!4526363 m!5279903))

(declare-fun m!5279919 () Bool)

(assert (=> b!4526363 m!5279919))

(assert (=> b!4526359 m!5279909))

(assert (=> b!4526359 m!5279909))

(declare-fun m!5279921 () Bool)

(assert (=> b!4526359 m!5279921))

(assert (=> d!1395977 m!5279913))

(assert (=> b!4526364 m!5279909))

(assert (=> b!4526364 m!5279909))

(assert (=> b!4526364 m!5279921))

(assert (=> b!4525162 d!1395977))

(declare-fun b!4526373 () Bool)

(declare-fun e!2820229 () List!50801)

(assert (=> b!4526373 (= e!2820229 (getKeysList!472 (toList!4347 lt!1701669)))))

(declare-fun b!4526374 () Bool)

(assert (=> b!4526374 false))

(declare-fun lt!1702529 () Unit!95830)

(declare-fun lt!1702527 () Unit!95830)

(assert (=> b!4526374 (= lt!1702529 lt!1702527)))

(assert (=> b!4526374 (containsKey!1808 (toList!4347 lt!1701669) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))

(assert (=> b!4526374 (= lt!1702527 (lemmaInGetKeysListThenContainsKey!471 (toList!4347 lt!1701669) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun e!2820231 () Unit!95830)

(declare-fun Unit!96125 () Unit!95830)

(assert (=> b!4526374 (= e!2820231 Unit!96125)))

(declare-fun b!4526375 () Bool)

(declare-fun e!2820227 () Bool)

(assert (=> b!4526375 (= e!2820227 (contains!13420 (keys!17612 lt!1701669) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun b!4526376 () Bool)

(declare-fun e!2820228 () Bool)

(assert (=> b!4526376 (= e!2820228 e!2820227)))

(declare-fun res!1884531 () Bool)

(assert (=> b!4526376 (=> (not res!1884531) (not e!2820227))))

(assert (=> b!4526376 (= res!1884531 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701669) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4526377 () Bool)

(declare-fun Unit!96128 () Unit!95830)

(assert (=> b!4526377 (= e!2820231 Unit!96128)))

(declare-fun b!4526378 () Bool)

(declare-fun e!2820226 () Unit!95830)

(assert (=> b!4526378 (= e!2820226 e!2820231)))

(declare-fun c!772724 () Bool)

(declare-fun call!315471 () Bool)

(assert (=> b!4526378 (= c!772724 call!315471)))

(declare-fun d!1395983 () Bool)

(assert (=> d!1395983 e!2820228))

(declare-fun res!1884530 () Bool)

(assert (=> d!1395983 (=> res!1884530 e!2820228)))

(declare-fun e!2820230 () Bool)

(assert (=> d!1395983 (= res!1884530 e!2820230)))

(declare-fun res!1884529 () Bool)

(assert (=> d!1395983 (=> (not res!1884529) (not e!2820230))))

(declare-fun lt!1702526 () Bool)

(assert (=> d!1395983 (= res!1884529 (not lt!1702526))))

(declare-fun lt!1702528 () Bool)

(assert (=> d!1395983 (= lt!1702526 lt!1702528)))

(declare-fun lt!1702525 () Unit!95830)

(assert (=> d!1395983 (= lt!1702525 e!2820226)))

(declare-fun c!772722 () Bool)

(assert (=> d!1395983 (= c!772722 lt!1702528)))

(assert (=> d!1395983 (= lt!1702528 (containsKey!1808 (toList!4347 lt!1701669) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> d!1395983 (= (contains!13418 lt!1701669 (_1!28851 (h!56535 (_2!28852 lt!1701242)))) lt!1702526)))

(declare-fun b!4526379 () Bool)

(declare-fun lt!1702531 () Unit!95830)

(assert (=> b!4526379 (= e!2820226 lt!1702531)))

(declare-fun lt!1702532 () Unit!95830)

(assert (=> b!4526379 (= lt!1702532 (lemmaContainsKeyImpliesGetValueByKeyDefined!1011 (toList!4347 lt!1701669) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4526379 (isDefined!8420 (getValueByKey!1107 (toList!4347 lt!1701669) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun lt!1702530 () Unit!95830)

(assert (=> b!4526379 (= lt!1702530 lt!1702532)))

(assert (=> b!4526379 (= lt!1702531 (lemmaInListThenGetKeysListContains!468 (toList!4347 lt!1701669) (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> b!4526379 call!315471))

(declare-fun b!4526380 () Bool)

(assert (=> b!4526380 (= e!2820230 (not (contains!13420 (keys!17612 lt!1701669) (_1!28851 (h!56535 (_2!28852 lt!1701242))))))))

(declare-fun b!4526381 () Bool)

(assert (=> b!4526381 (= e!2820229 (keys!17612 lt!1701669))))

(declare-fun bm!315466 () Bool)

(assert (=> bm!315466 (= call!315471 (contains!13420 e!2820229 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun c!772723 () Bool)

(assert (=> bm!315466 (= c!772723 c!772722)))

(assert (= (and d!1395983 c!772722) b!4526379))

(assert (= (and d!1395983 (not c!772722)) b!4526378))

(assert (= (and b!4526378 c!772724) b!4526374))

(assert (= (and b!4526378 (not c!772724)) b!4526377))

(assert (= (or b!4526379 b!4526378) bm!315466))

(assert (= (and bm!315466 c!772723) b!4526373))

(assert (= (and bm!315466 (not c!772723)) b!4526381))

(assert (= (and d!1395983 res!1884529) b!4526380))

(assert (= (and d!1395983 (not res!1884530)) b!4526376))

(assert (= (and b!4526376 res!1884531) b!4526375))

(declare-fun m!5279927 () Bool)

(assert (=> bm!315466 m!5279927))

(declare-fun m!5279929 () Bool)

(assert (=> b!4526376 m!5279929))

(assert (=> b!4526376 m!5279929))

(declare-fun m!5279931 () Bool)

(assert (=> b!4526376 m!5279931))

(declare-fun m!5279933 () Bool)

(assert (=> b!4526373 m!5279933))

(declare-fun m!5279935 () Bool)

(assert (=> b!4526381 m!5279935))

(declare-fun m!5279937 () Bool)

(assert (=> b!4526374 m!5279937))

(declare-fun m!5279939 () Bool)

(assert (=> b!4526374 m!5279939))

(declare-fun m!5279941 () Bool)

(assert (=> b!4526379 m!5279941))

(assert (=> b!4526379 m!5279929))

(assert (=> b!4526379 m!5279929))

(assert (=> b!4526379 m!5279931))

(declare-fun m!5279943 () Bool)

(assert (=> b!4526379 m!5279943))

(assert (=> b!4526375 m!5279935))

(assert (=> b!4526375 m!5279935))

(declare-fun m!5279945 () Bool)

(assert (=> b!4526375 m!5279945))

(assert (=> d!1395983 m!5279937))

(assert (=> b!4526380 m!5279935))

(assert (=> b!4526380 m!5279935))

(assert (=> b!4526380 m!5279945))

(assert (=> b!4525162 d!1395983))

(declare-fun d!1395987 () Bool)

(declare-fun res!1884532 () Bool)

(declare-fun e!2820232 () Bool)

(assert (=> d!1395987 (=> res!1884532 e!2820232)))

(assert (=> d!1395987 (= res!1884532 ((_ is Nil!50674) (t!357760 (_2!28852 lt!1701242))))))

(assert (=> d!1395987 (= (forall!10287 (t!357760 (_2!28852 lt!1701242)) lambda!173389) e!2820232)))

(declare-fun b!4526382 () Bool)

(declare-fun e!2820233 () Bool)

(assert (=> b!4526382 (= e!2820232 e!2820233)))

(declare-fun res!1884533 () Bool)

(assert (=> b!4526382 (=> (not res!1884533) (not e!2820233))))

(assert (=> b!4526382 (= res!1884533 (dynLambda!21177 lambda!173389 (h!56535 (t!357760 (_2!28852 lt!1701242)))))))

(declare-fun b!4526383 () Bool)

(assert (=> b!4526383 (= e!2820233 (forall!10287 (t!357760 (t!357760 (_2!28852 lt!1701242))) lambda!173389))))

(assert (= (and d!1395987 (not res!1884532)) b!4526382))

(assert (= (and b!4526382 res!1884533) b!4526383))

(declare-fun b_lambda!155779 () Bool)

(assert (=> (not b_lambda!155779) (not b!4526382)))

(declare-fun m!5279947 () Bool)

(assert (=> b!4526382 m!5279947))

(declare-fun m!5279949 () Bool)

(assert (=> b!4526383 m!5279949))

(assert (=> b!4525162 d!1395987))

(assert (=> b!4524882 d!1395615))

(assert (=> b!4524882 d!1395617))

(declare-fun d!1395989 () Bool)

(declare-fun res!1884534 () Bool)

(declare-fun e!2820234 () Bool)

(assert (=> d!1395989 (=> res!1884534 e!2820234)))

(assert (=> d!1395989 (= res!1884534 (and ((_ is Cons!50674) (t!357760 (_2!28852 lt!1701242))) (= (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242)))) key!3287)))))

(assert (=> d!1395989 (= (containsKey!1806 (t!357760 (_2!28852 lt!1701242)) key!3287) e!2820234)))

(declare-fun b!4526384 () Bool)

(declare-fun e!2820235 () Bool)

(assert (=> b!4526384 (= e!2820234 e!2820235)))

(declare-fun res!1884535 () Bool)

(assert (=> b!4526384 (=> (not res!1884535) (not e!2820235))))

(assert (=> b!4526384 (= res!1884535 ((_ is Cons!50674) (t!357760 (_2!28852 lt!1701242))))))

(declare-fun b!4526385 () Bool)

(assert (=> b!4526385 (= e!2820235 (containsKey!1806 (t!357760 (t!357760 (_2!28852 lt!1701242))) key!3287))))

(assert (= (and d!1395989 (not res!1884534)) b!4526384))

(assert (= (and b!4526384 res!1884535) b!4526385))

(declare-fun m!5279951 () Bool)

(assert (=> b!4526385 m!5279951))

(assert (=> b!4525025 d!1395989))

(declare-fun d!1395991 () Bool)

(declare-fun lt!1702534 () Bool)

(assert (=> d!1395991 (= lt!1702534 (select (content!8382 (toList!4348 lm!1477)) (tuple2!51117 hash!344 lt!1701236)))))

(declare-fun e!2820237 () Bool)

(assert (=> d!1395991 (= lt!1702534 e!2820237)))

(declare-fun res!1884537 () Bool)

(assert (=> d!1395991 (=> (not res!1884537) (not e!2820237))))

(assert (=> d!1395991 (= res!1884537 ((_ is Cons!50675) (toList!4348 lm!1477)))))

(assert (=> d!1395991 (= (contains!13419 (toList!4348 lm!1477) (tuple2!51117 hash!344 lt!1701236)) lt!1702534)))

(declare-fun b!4526386 () Bool)

(declare-fun e!2820236 () Bool)

(assert (=> b!4526386 (= e!2820237 e!2820236)))

(declare-fun res!1884536 () Bool)

(assert (=> b!4526386 (=> res!1884536 e!2820236)))

(assert (=> b!4526386 (= res!1884536 (= (h!56536 (toList!4348 lm!1477)) (tuple2!51117 hash!344 lt!1701236)))))

(declare-fun b!4526387 () Bool)

(assert (=> b!4526387 (= e!2820236 (contains!13419 (t!357761 (toList!4348 lm!1477)) (tuple2!51117 hash!344 lt!1701236)))))

(assert (= (and d!1395991 res!1884537) b!4526386))

(assert (= (and b!4526386 (not res!1884536)) b!4526387))

(assert (=> d!1395991 m!5277567))

(declare-fun m!5279953 () Bool)

(assert (=> d!1395991 m!5279953))

(declare-fun m!5279955 () Bool)

(assert (=> b!4526387 m!5279955))

(assert (=> d!1395255 d!1395991))

(declare-fun d!1395993 () Bool)

(assert (=> d!1395993 (contains!13419 (toList!4348 lm!1477) (tuple2!51117 hash!344 lt!1701236))))

(assert (=> d!1395993 true))

(declare-fun _$14!1173 () Unit!95830)

(assert (=> d!1395993 (= (choose!29627 (toList!4348 lm!1477) hash!344 lt!1701236) _$14!1173)))

(declare-fun bs!861996 () Bool)

(assert (= bs!861996 d!1395993))

(assert (=> bs!861996 m!5277577))

(assert (=> d!1395255 d!1395993))

(assert (=> d!1395255 d!1395469))

(assert (=> b!4524883 d!1395617))

(declare-fun d!1395995 () Bool)

(declare-fun res!1884538 () Bool)

(declare-fun e!2820238 () Bool)

(assert (=> d!1395995 (=> res!1884538 e!2820238)))

(assert (=> d!1395995 (= res!1884538 ((_ is Nil!50674) (ite c!772407 (toList!4347 lt!1701256) (toList!4347 lt!1701669))))))

(assert (=> d!1395995 (= (forall!10287 (ite c!772407 (toList!4347 lt!1701256) (toList!4347 lt!1701669)) (ite c!772407 lambda!173387 lambda!173389)) e!2820238)))

(declare-fun b!4526388 () Bool)

(declare-fun e!2820239 () Bool)

(assert (=> b!4526388 (= e!2820238 e!2820239)))

(declare-fun res!1884539 () Bool)

(assert (=> b!4526388 (=> (not res!1884539) (not e!2820239))))

(assert (=> b!4526388 (= res!1884539 (dynLambda!21177 (ite c!772407 lambda!173387 lambda!173389) (h!56535 (ite c!772407 (toList!4347 lt!1701256) (toList!4347 lt!1701669)))))))

(declare-fun b!4526389 () Bool)

(assert (=> b!4526389 (= e!2820239 (forall!10287 (t!357760 (ite c!772407 (toList!4347 lt!1701256) (toList!4347 lt!1701669))) (ite c!772407 lambda!173387 lambda!173389)))))

(assert (= (and d!1395995 (not res!1884538)) b!4526388))

(assert (= (and b!4526388 res!1884539) b!4526389))

(declare-fun b_lambda!155781 () Bool)

(assert (=> (not b_lambda!155781) (not b!4526388)))

(declare-fun m!5279967 () Bool)

(assert (=> b!4526388 m!5279967))

(declare-fun m!5279969 () Bool)

(assert (=> b!4526389 m!5279969))

(assert (=> bm!315332 d!1395995))

(declare-fun d!1396003 () Bool)

(declare-fun res!1884542 () Bool)

(declare-fun e!2820244 () Bool)

(assert (=> d!1396003 (=> res!1884542 e!2820244)))

(assert (=> d!1396003 (= res!1884542 (and ((_ is Cons!50675) (toList!4348 lt!1701251)) (= (_1!28852 (h!56536 (toList!4348 lt!1701251))) hash!344)))))

(assert (=> d!1396003 (= (containsKey!1810 (toList!4348 lt!1701251) hash!344) e!2820244)))

(declare-fun b!4526396 () Bool)

(declare-fun e!2820245 () Bool)

(assert (=> b!4526396 (= e!2820244 e!2820245)))

(declare-fun res!1884543 () Bool)

(assert (=> b!4526396 (=> (not res!1884543) (not e!2820245))))

(assert (=> b!4526396 (= res!1884543 (and (or (not ((_ is Cons!50675) (toList!4348 lt!1701251))) (bvsle (_1!28852 (h!56536 (toList!4348 lt!1701251))) hash!344)) ((_ is Cons!50675) (toList!4348 lt!1701251)) (bvslt (_1!28852 (h!56536 (toList!4348 lt!1701251))) hash!344)))))

(declare-fun b!4526397 () Bool)

(assert (=> b!4526397 (= e!2820245 (containsKey!1810 (t!357761 (toList!4348 lt!1701251)) hash!344))))

(assert (= (and d!1396003 (not res!1884542)) b!4526396))

(assert (= (and b!4526396 res!1884543) b!4526397))

(declare-fun m!5279971 () Bool)

(assert (=> b!4526397 m!5279971))

(assert (=> d!1395173 d!1396003))

(declare-fun d!1396005 () Bool)

(declare-fun res!1884544 () Bool)

(declare-fun e!2820246 () Bool)

(assert (=> d!1396005 (=> res!1884544 e!2820246)))

(assert (=> d!1396005 (= res!1884544 (not ((_ is Cons!50674) (_2!28852 (h!56536 (toList!4348 lm!1477))))))))

(assert (=> d!1396005 (= (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lm!1477)))) e!2820246)))

(declare-fun b!4526398 () Bool)

(declare-fun e!2820247 () Bool)

(assert (=> b!4526398 (= e!2820246 e!2820247)))

(declare-fun res!1884545 () Bool)

(assert (=> b!4526398 (=> (not res!1884545) (not e!2820247))))

(assert (=> b!4526398 (= res!1884545 (not (containsKey!1806 (t!357760 (_2!28852 (h!56536 (toList!4348 lm!1477)))) (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477))))))))))

(declare-fun b!4526399 () Bool)

(assert (=> b!4526399 (= e!2820247 (noDuplicateKeys!1170 (t!357760 (_2!28852 (h!56536 (toList!4348 lm!1477))))))))

(assert (= (and d!1396005 (not res!1884544)) b!4526398))

(assert (= (and b!4526398 res!1884545) b!4526399))

(declare-fun m!5279973 () Bool)

(assert (=> b!4526398 m!5279973))

(declare-fun m!5279975 () Bool)

(assert (=> b!4526399 m!5279975))

(assert (=> bs!860281 d!1396005))

(declare-fun d!1396007 () Bool)

(declare-fun res!1884546 () Bool)

(declare-fun e!2820248 () Bool)

(assert (=> d!1396007 (=> res!1884546 e!2820248)))

(assert (=> d!1396007 (= res!1884546 (and ((_ is Cons!50674) (_2!28852 (h!56536 (toList!4348 lt!1701251)))) (= (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lt!1701251))))) key!3287)))))

(assert (=> d!1396007 (= (containsKey!1806 (_2!28852 (h!56536 (toList!4348 lt!1701251))) key!3287) e!2820248)))

(declare-fun b!4526400 () Bool)

(declare-fun e!2820249 () Bool)

(assert (=> b!4526400 (= e!2820248 e!2820249)))

(declare-fun res!1884547 () Bool)

(assert (=> b!4526400 (=> (not res!1884547) (not e!2820249))))

(assert (=> b!4526400 (= res!1884547 ((_ is Cons!50674) (_2!28852 (h!56536 (toList!4348 lt!1701251)))))))

(declare-fun b!4526401 () Bool)

(assert (=> b!4526401 (= e!2820249 (containsKey!1806 (t!357760 (_2!28852 (h!56536 (toList!4348 lt!1701251)))) key!3287))))

(assert (= (and d!1396007 (not res!1884546)) b!4526400))

(assert (= (and b!4526400 res!1884547) b!4526401))

(declare-fun m!5279977 () Bool)

(assert (=> b!4526401 m!5279977))

(assert (=> b!4524952 d!1396007))

(assert (=> b!4525050 d!1395159))

(declare-fun d!1396011 () Bool)

(declare-fun lt!1702536 () Bool)

(assert (=> d!1396011 (= lt!1702536 (select (content!8383 e!2819279) key!3287))))

(declare-fun e!2820250 () Bool)

(assert (=> d!1396011 (= lt!1702536 e!2820250)))

(declare-fun res!1884549 () Bool)

(assert (=> d!1396011 (=> (not res!1884549) (not e!2820250))))

(assert (=> d!1396011 (= res!1884549 ((_ is Cons!50677) e!2819279))))

(assert (=> d!1396011 (= (contains!13420 e!2819279 key!3287) lt!1702536)))

(declare-fun b!4526402 () Bool)

(declare-fun e!2820251 () Bool)

(assert (=> b!4526402 (= e!2820250 e!2820251)))

(declare-fun res!1884548 () Bool)

(assert (=> b!4526402 (=> res!1884548 e!2820251)))

(assert (=> b!4526402 (= res!1884548 (= (h!56540 e!2819279) key!3287))))

(declare-fun b!4526403 () Bool)

(assert (=> b!4526403 (= e!2820251 (contains!13420 (t!357763 e!2819279) key!3287))))

(assert (= (and d!1396011 res!1884549) b!4526402))

(assert (= (and b!4526402 (not res!1884548)) b!4526403))

(declare-fun m!5279979 () Bool)

(assert (=> d!1396011 m!5279979))

(declare-fun m!5279981 () Bool)

(assert (=> d!1396011 m!5279981))

(declare-fun m!5279983 () Bool)

(assert (=> b!4526403 m!5279983))

(assert (=> bm!315312 d!1396011))

(declare-fun b!4526406 () Bool)

(declare-fun e!2820254 () Option!11137)

(assert (=> b!4526406 (= e!2820254 (Some!11136 (_2!28852 (h!56536 (toList!4348 lm!1477)))))))

(declare-fun d!1396015 () Bool)

(declare-fun c!772727 () Bool)

(assert (=> d!1396015 (= c!772727 (and ((_ is Cons!50675) (toList!4348 lm!1477)) (= (_1!28852 (h!56536 (toList!4348 lm!1477))) hash!344)))))

(assert (=> d!1396015 (= (getValueByKey!1109 (toList!4348 lm!1477) hash!344) e!2820254)))

(declare-fun b!4526407 () Bool)

(declare-fun e!2820255 () Option!11137)

(assert (=> b!4526407 (= e!2820254 e!2820255)))

(declare-fun c!772728 () Bool)

(assert (=> b!4526407 (= c!772728 (and ((_ is Cons!50675) (toList!4348 lm!1477)) (not (= (_1!28852 (h!56536 (toList!4348 lm!1477))) hash!344))))))

(declare-fun b!4526408 () Bool)

(assert (=> b!4526408 (= e!2820255 (getValueByKey!1109 (t!357761 (toList!4348 lm!1477)) hash!344))))

(declare-fun b!4526409 () Bool)

(assert (=> b!4526409 (= e!2820255 None!11136)))

(assert (= (and d!1396015 c!772727) b!4526406))

(assert (= (and d!1396015 (not c!772727)) b!4526407))

(assert (= (and b!4526407 c!772728) b!4526408))

(assert (= (and b!4526407 (not c!772728)) b!4526409))

(declare-fun m!5279989 () Bool)

(assert (=> b!4526408 m!5279989))

(assert (=> b!4525187 d!1396015))

(declare-fun d!1396017 () Bool)

(declare-fun res!1884552 () Bool)

(declare-fun e!2820256 () Bool)

(assert (=> d!1396017 (=> res!1884552 e!2820256)))

(assert (=> d!1396017 (= res!1884552 (and ((_ is Cons!50674) (t!357760 lt!1701236)) (= (_1!28851 (h!56535 (t!357760 lt!1701236))) key!3287)))))

(assert (=> d!1396017 (= (containsKey!1806 (t!357760 lt!1701236) key!3287) e!2820256)))

(declare-fun b!4526410 () Bool)

(declare-fun e!2820257 () Bool)

(assert (=> b!4526410 (= e!2820256 e!2820257)))

(declare-fun res!1884553 () Bool)

(assert (=> b!4526410 (=> (not res!1884553) (not e!2820257))))

(assert (=> b!4526410 (= res!1884553 ((_ is Cons!50674) (t!357760 lt!1701236)))))

(declare-fun b!4526411 () Bool)

(assert (=> b!4526411 (= e!2820257 (containsKey!1806 (t!357760 (t!357760 lt!1701236)) key!3287))))

(assert (= (and d!1396017 (not res!1884552)) b!4526410))

(assert (= (and b!4526410 res!1884553) b!4526411))

(declare-fun m!5279991 () Bool)

(assert (=> b!4526411 m!5279991))

(assert (=> b!4524792 d!1396017))

(declare-fun d!1396019 () Bool)

(declare-fun lt!1702539 () Bool)

(assert (=> d!1396019 (= lt!1702539 (select (content!8381 (_2!28852 (h!56536 (toList!4348 lm!1477)))) (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))))))

(declare-fun e!2820265 () Bool)

(assert (=> d!1396019 (= lt!1702539 e!2820265)))

(declare-fun res!1884558 () Bool)

(assert (=> d!1396019 (=> (not res!1884558) (not e!2820265))))

(assert (=> d!1396019 (= res!1884558 ((_ is Cons!50674) (_2!28852 (h!56536 (toList!4348 lm!1477)))))))

(assert (=> d!1396019 (= (contains!13423 (_2!28852 (h!56536 (toList!4348 lm!1477))) (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))) lt!1702539)))

(declare-fun b!4526419 () Bool)

(declare-fun e!2820266 () Bool)

(assert (=> b!4526419 (= e!2820265 e!2820266)))

(declare-fun res!1884559 () Bool)

(assert (=> b!4526419 (=> res!1884559 e!2820266)))

(assert (=> b!4526419 (= res!1884559 (= (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477)))) (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))))))

(declare-fun b!4526420 () Bool)

(assert (=> b!4526420 (= e!2820266 (contains!13423 (t!357760 (_2!28852 (h!56536 (toList!4348 lm!1477)))) (tuple2!51115 key!3287 (_2!28851 (get!16611 lt!1701264)))))))

(assert (= (and d!1396019 res!1884558) b!4526419))

(assert (= (and b!4526419 (not res!1884559)) b!4526420))

(declare-fun m!5279999 () Bool)

(assert (=> d!1396019 m!5279999))

(declare-fun m!5280001 () Bool)

(assert (=> d!1396019 m!5280001))

(declare-fun m!5280003 () Bool)

(assert (=> b!4526420 m!5280003))

(assert (=> b!4525071 d!1396019))

(assert (=> d!1395083 d!1395515))

(declare-fun d!1396041 () Bool)

(declare-fun lt!1702540 () Bool)

(assert (=> d!1396041 (= lt!1702540 (select (content!8382 (toList!4348 lt!1701570)) lt!1701243))))

(declare-fun e!2820268 () Bool)

(assert (=> d!1396041 (= lt!1702540 e!2820268)))

(declare-fun res!1884561 () Bool)

(assert (=> d!1396041 (=> (not res!1884561) (not e!2820268))))

(assert (=> d!1396041 (= res!1884561 ((_ is Cons!50675) (toList!4348 lt!1701570)))))

(assert (=> d!1396041 (= (contains!13419 (toList!4348 lt!1701570) lt!1701243) lt!1702540)))

(declare-fun b!4526421 () Bool)

(declare-fun e!2820267 () Bool)

(assert (=> b!4526421 (= e!2820268 e!2820267)))

(declare-fun res!1884560 () Bool)

(assert (=> b!4526421 (=> res!1884560 e!2820267)))

(assert (=> b!4526421 (= res!1884560 (= (h!56536 (toList!4348 lt!1701570)) lt!1701243))))

(declare-fun b!4526422 () Bool)

(assert (=> b!4526422 (= e!2820267 (contains!13419 (t!357761 (toList!4348 lt!1701570)) lt!1701243))))

(assert (= (and d!1396041 res!1884561) b!4526421))

(assert (= (and b!4526421 (not res!1884560)) b!4526422))

(declare-fun m!5280009 () Bool)

(assert (=> d!1396041 m!5280009))

(declare-fun m!5280011 () Bool)

(assert (=> d!1396041 m!5280011))

(declare-fun m!5280013 () Bool)

(assert (=> b!4526422 m!5280013))

(assert (=> b!4525094 d!1396041))

(declare-fun d!1396049 () Bool)

(assert (=> d!1396049 (dynLambda!21175 lambda!173265 (h!56536 (toList!4348 lm!1477)))))

(assert (=> d!1396049 true))

(declare-fun _$7!1870 () Unit!95830)

(assert (=> d!1396049 (= (choose!29616 (toList!4348 lm!1477) lambda!173265 (h!56536 (toList!4348 lm!1477))) _$7!1870)))

(declare-fun b_lambda!155857 () Bool)

(assert (=> (not b_lambda!155857) (not d!1396049)))

(declare-fun bs!862016 () Bool)

(assert (= bs!862016 d!1396049))

(assert (=> bs!862016 m!5276795))

(assert (=> d!1395045 d!1396049))

(assert (=> d!1395045 d!1395035))

(declare-fun d!1396061 () Bool)

(assert (=> d!1396061 (eq!627 (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701256) (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701249))))

(assert (=> d!1396061 true))

(declare-fun _$16!233 () Unit!95830)

(assert (=> d!1396061 (= (choose!29625 lt!1701256 lt!1701249 (_2!28852 lt!1701242)) _$16!233)))

(declare-fun bs!862029 () Bool)

(assert (= bs!862029 d!1396061))

(assert (=> bs!862029 m!5276723))

(assert (=> bs!862029 m!5276739))

(assert (=> bs!862029 m!5276723))

(assert (=> bs!862029 m!5276739))

(assert (=> bs!862029 m!5277499))

(assert (=> d!1395231 d!1396061))

(assert (=> d!1395231 d!1395239))

(declare-fun d!1396085 () Bool)

(assert (=> d!1396085 (= (eq!627 (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701256) (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701249)) (= (content!8381 (toList!4347 (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701256))) (content!8381 (toList!4347 (addToMapMapFromBucket!697 (_2!28852 lt!1701242) lt!1701249)))))))

(declare-fun bs!862030 () Bool)

(assert (= bs!862030 d!1396085))

(declare-fun m!5280033 () Bool)

(assert (=> bs!862030 m!5280033))

(declare-fun m!5280035 () Bool)

(assert (=> bs!862030 m!5280035))

(assert (=> d!1395231 d!1396085))

(assert (=> d!1395231 d!1395043))

(assert (=> d!1395231 d!1395201))

(assert (=> b!4524910 d!1395599))

(assert (=> b!4524910 d!1395601))

(declare-fun d!1396087 () Bool)

(declare-fun res!1884562 () Bool)

(declare-fun e!2820269 () Bool)

(assert (=> d!1396087 (=> res!1884562 e!2820269)))

(assert (=> d!1396087 (= res!1884562 (and ((_ is Cons!50674) (t!357760 newBucket!178)) (= (_1!28851 (h!56535 (t!357760 newBucket!178))) (_1!28851 (h!56535 newBucket!178)))))))

(assert (=> d!1396087 (= (containsKey!1806 (t!357760 newBucket!178) (_1!28851 (h!56535 newBucket!178))) e!2820269)))

(declare-fun b!4526423 () Bool)

(declare-fun e!2820270 () Bool)

(assert (=> b!4526423 (= e!2820269 e!2820270)))

(declare-fun res!1884563 () Bool)

(assert (=> b!4526423 (=> (not res!1884563) (not e!2820270))))

(assert (=> b!4526423 (= res!1884563 ((_ is Cons!50674) (t!357760 newBucket!178)))))

(declare-fun b!4526424 () Bool)

(assert (=> b!4526424 (= e!2820270 (containsKey!1806 (t!357760 (t!357760 newBucket!178)) (_1!28851 (h!56535 newBucket!178))))))

(assert (= (and d!1396087 (not res!1884562)) b!4526423))

(assert (= (and b!4526423 res!1884563) b!4526424))

(declare-fun m!5280037 () Bool)

(assert (=> b!4526424 m!5280037))

(assert (=> b!4525026 d!1396087))

(declare-fun d!1396089 () Bool)

(declare-fun lt!1702541 () Bool)

(assert (=> d!1396089 (= lt!1702541 (select (content!8382 (toList!4348 lt!1701537)) lt!1701242))))

(declare-fun e!2820272 () Bool)

(assert (=> d!1396089 (= lt!1702541 e!2820272)))

(declare-fun res!1884565 () Bool)

(assert (=> d!1396089 (=> (not res!1884565) (not e!2820272))))

(assert (=> d!1396089 (= res!1884565 ((_ is Cons!50675) (toList!4348 lt!1701537)))))

(assert (=> d!1396089 (= (contains!13419 (toList!4348 lt!1701537) lt!1701242) lt!1702541)))

(declare-fun b!4526425 () Bool)

(declare-fun e!2820271 () Bool)

(assert (=> b!4526425 (= e!2820272 e!2820271)))

(declare-fun res!1884564 () Bool)

(assert (=> b!4526425 (=> res!1884564 e!2820271)))

(assert (=> b!4526425 (= res!1884564 (= (h!56536 (toList!4348 lt!1701537)) lt!1701242))))

(declare-fun b!4526426 () Bool)

(assert (=> b!4526426 (= e!2820271 (contains!13419 (t!357761 (toList!4348 lt!1701537)) lt!1701242))))

(assert (= (and d!1396089 res!1884565) b!4526425))

(assert (= (and b!4526425 (not res!1884564)) b!4526426))

(declare-fun m!5280039 () Bool)

(assert (=> d!1396089 m!5280039))

(declare-fun m!5280041 () Bool)

(assert (=> d!1396089 m!5280041))

(declare-fun m!5280043 () Bool)

(assert (=> b!4526426 m!5280043))

(assert (=> b!4525023 d!1396089))

(declare-fun d!1396091 () Bool)

(declare-fun c!772729 () Bool)

(assert (=> d!1396091 (= c!772729 ((_ is Nil!50674) (toList!4347 lt!1701256)))))

(declare-fun e!2820273 () (InoxSet tuple2!51114))

(assert (=> d!1396091 (= (content!8381 (toList!4347 lt!1701256)) e!2820273)))

(declare-fun b!4526427 () Bool)

(assert (=> b!4526427 (= e!2820273 ((as const (Array tuple2!51114 Bool)) false))))

(declare-fun b!4526428 () Bool)

(assert (=> b!4526428 (= e!2820273 ((_ map or) (store ((as const (Array tuple2!51114 Bool)) false) (h!56535 (toList!4347 lt!1701256)) true) (content!8381 (t!357760 (toList!4347 lt!1701256)))))))

(assert (= (and d!1396091 c!772729) b!4526427))

(assert (= (and d!1396091 (not c!772729)) b!4526428))

(declare-fun m!5280045 () Bool)

(assert (=> b!4526428 m!5280045))

(declare-fun m!5280047 () Bool)

(assert (=> b!4526428 m!5280047))

(assert (=> d!1395139 d!1396091))

(declare-fun d!1396093 () Bool)

(declare-fun c!772730 () Bool)

(assert (=> d!1396093 (= c!772730 ((_ is Nil!50674) (toList!4347 lt!1701249)))))

(declare-fun e!2820274 () (InoxSet tuple2!51114))

(assert (=> d!1396093 (= (content!8381 (toList!4347 lt!1701249)) e!2820274)))

(declare-fun b!4526429 () Bool)

(assert (=> b!4526429 (= e!2820274 ((as const (Array tuple2!51114 Bool)) false))))

(declare-fun b!4526430 () Bool)

(assert (=> b!4526430 (= e!2820274 ((_ map or) (store ((as const (Array tuple2!51114 Bool)) false) (h!56535 (toList!4347 lt!1701249)) true) (content!8381 (t!357760 (toList!4347 lt!1701249)))))))

(assert (= (and d!1396093 c!772730) b!4526429))

(assert (= (and d!1396093 (not c!772730)) b!4526430))

(declare-fun m!5280049 () Bool)

(assert (=> b!4526430 m!5280049))

(declare-fun m!5280051 () Bool)

(assert (=> b!4526430 m!5280051))

(assert (=> d!1395139 d!1396093))

(declare-fun bs!862031 () Bool)

(declare-fun b!4526439 () Bool)

(assert (= bs!862031 (and b!4526439 b!4525495)))

(declare-fun lambda!173556 () Int)

(assert (=> bs!862031 (= (= (t!357760 (toList!4347 lt!1701257)) (toList!4347 lt!1701248)) (= lambda!173556 lambda!173423))))

(declare-fun bs!862032 () Bool)

(assert (= bs!862032 (and b!4526439 b!4526138)))

(assert (=> bs!862032 (= (= (t!357760 (toList!4347 lt!1701257)) (toList!4347 lt!1701479)) (= lambda!173556 lambda!173533))))

(declare-fun bs!862033 () Bool)

(assert (= bs!862033 (and b!4526439 b!4525502)))

(assert (=> bs!862033 (= (= (t!357760 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701248))) (= lambda!173556 lambda!173421))))

(declare-fun bs!862034 () Bool)

(assert (= bs!862034 (and b!4526439 b!4526128)))

(assert (=> bs!862034 (= (= (t!357760 (toList!4347 lt!1701257)) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (= lambda!173556 lambda!173529))))

(declare-fun bs!862035 () Bool)

(assert (= bs!862035 (and b!4526439 b!4526121)))

(assert (=> bs!862035 (= (= (t!357760 (toList!4347 lt!1701257)) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173556 lambda!173531))))

(declare-fun bs!862036 () Bool)

(assert (= bs!862036 (and b!4526439 b!4526077)))

(assert (=> bs!862036 (= (= (t!357760 (toList!4347 lt!1701257)) (toList!4347 lt!1701248)) (= lambda!173556 lambda!173527))))

(declare-fun bs!862037 () Bool)

(assert (= bs!862037 (and b!4526439 b!4525617)))

(assert (=> bs!862037 (= (= (t!357760 (toList!4347 lt!1701257)) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173556 lambda!173442))))

(declare-fun bs!862038 () Bool)

(assert (= bs!862038 (and b!4526439 b!4525769)))

(assert (=> bs!862038 (= (= (t!357760 (toList!4347 lt!1701257)) (toList!4347 lt!1701257)) (= lambda!173556 lambda!173469))))

(declare-fun bs!862039 () Bool)

(assert (= bs!862039 (and b!4526439 b!4526127)))

(assert (=> bs!862039 (= (= (t!357760 (toList!4347 lt!1701257)) (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))) (= lambda!173556 lambda!173530))))

(declare-fun bs!862040 () Bool)

(assert (= bs!862040 (and b!4526439 b!4525501)))

(assert (=> bs!862040 (= (= (t!357760 (toList!4347 lt!1701257)) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173556 lambda!173422))))

(assert (=> b!4526439 true))

(declare-fun bs!862041 () Bool)

(declare-fun b!4526438 () Bool)

(assert (= bs!862041 (and b!4526438 b!4525495)))

(declare-fun lambda!173557 () Int)

(assert (=> bs!862041 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (toList!4347 lt!1701248)) (= lambda!173557 lambda!173423))))

(declare-fun bs!862042 () Bool)

(assert (= bs!862042 (and b!4526438 b!4526138)))

(assert (=> bs!862042 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (toList!4347 lt!1701479)) (= lambda!173557 lambda!173533))))

(declare-fun bs!862043 () Bool)

(assert (= bs!862043 (and b!4526438 b!4525502)))

(assert (=> bs!862043 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (t!357760 (toList!4347 lt!1701248))) (= lambda!173557 lambda!173421))))

(declare-fun bs!862044 () Bool)

(assert (= bs!862044 (and b!4526438 b!4526128)))

(assert (=> bs!862044 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (= lambda!173557 lambda!173529))))

(declare-fun bs!862045 () Bool)

(assert (= bs!862045 (and b!4526438 b!4526121)))

(assert (=> bs!862045 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173557 lambda!173531))))

(declare-fun bs!862046 () Bool)

(assert (= bs!862046 (and b!4526438 b!4526077)))

(assert (=> bs!862046 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (toList!4347 lt!1701248)) (= lambda!173557 lambda!173527))))

(declare-fun bs!862047 () Bool)

(assert (= bs!862047 (and b!4526438 b!4526439)))

(assert (=> bs!862047 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (t!357760 (toList!4347 lt!1701257))) (= lambda!173557 lambda!173556))))

(declare-fun bs!862048 () Bool)

(assert (= bs!862048 (and b!4526438 b!4525617)))

(assert (=> bs!862048 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173557 lambda!173442))))

(declare-fun bs!862049 () Bool)

(assert (= bs!862049 (and b!4526438 b!4525769)))

(assert (=> bs!862049 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (toList!4347 lt!1701257)) (= lambda!173557 lambda!173469))))

(declare-fun bs!862050 () Bool)

(assert (= bs!862050 (and b!4526438 b!4526127)))

(assert (=> bs!862050 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))) (= lambda!173557 lambda!173530))))

(declare-fun bs!862051 () Bool)

(assert (= bs!862051 (and b!4526438 b!4525501)))

(assert (=> bs!862051 (= (= (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257))) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173557 lambda!173422))))

(assert (=> b!4526438 true))

(declare-fun bs!862052 () Bool)

(declare-fun b!4526432 () Bool)

(assert (= bs!862052 (and b!4526432 b!4525495)))

(declare-fun lambda!173558 () Int)

(assert (=> bs!862052 (= (= (toList!4347 lt!1701257) (toList!4347 lt!1701248)) (= lambda!173558 lambda!173423))))

(declare-fun bs!862053 () Bool)

(assert (= bs!862053 (and b!4526432 b!4526138)))

(assert (=> bs!862053 (= (= (toList!4347 lt!1701257) (toList!4347 lt!1701479)) (= lambda!173558 lambda!173533))))

(declare-fun bs!862054 () Bool)

(assert (= bs!862054 (and b!4526432 b!4526438)))

(assert (=> bs!862054 (= (= (toList!4347 lt!1701257) (Cons!50674 (h!56535 (toList!4347 lt!1701257)) (t!357760 (toList!4347 lt!1701257)))) (= lambda!173558 lambda!173557))))

(declare-fun bs!862055 () Bool)

(assert (= bs!862055 (and b!4526432 b!4525502)))

(assert (=> bs!862055 (= (= (toList!4347 lt!1701257) (t!357760 (toList!4347 lt!1701248))) (= lambda!173558 lambda!173421))))

(declare-fun bs!862056 () Bool)

(assert (= bs!862056 (and b!4526432 b!4526128)))

(assert (=> bs!862056 (= (= (toList!4347 lt!1701257) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))) (= lambda!173558 lambda!173529))))

(declare-fun bs!862057 () Bool)

(assert (= bs!862057 (and b!4526432 b!4526121)))

(assert (=> bs!862057 (= (= (toList!4347 lt!1701257) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173558 lambda!173531))))

(declare-fun bs!862058 () Bool)

(assert (= bs!862058 (and b!4526432 b!4526077)))

(assert (=> bs!862058 (= (= (toList!4347 lt!1701257) (toList!4347 lt!1701248)) (= lambda!173558 lambda!173527))))

(declare-fun bs!862059 () Bool)

(assert (= bs!862059 (and b!4526432 b!4526439)))

(assert (=> bs!862059 (= (= (toList!4347 lt!1701257) (t!357760 (toList!4347 lt!1701257))) (= lambda!173558 lambda!173556))))

(declare-fun bs!862060 () Bool)

(assert (= bs!862060 (and b!4526432 b!4525617)))

(assert (=> bs!862060 (= (= (toList!4347 lt!1701257) (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (= lambda!173558 lambda!173442))))

(declare-fun bs!862061 () Bool)

(assert (= bs!862061 (and b!4526432 b!4525769)))

(assert (=> bs!862061 (= lambda!173558 lambda!173469)))

(declare-fun bs!862062 () Bool)

(assert (= bs!862062 (and b!4526432 b!4526127)))

(assert (=> bs!862062 (= (= (toList!4347 lt!1701257) (Cons!50674 (h!56535 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))) (t!357760 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477))))))) (= lambda!173558 lambda!173530))))

(declare-fun bs!862063 () Bool)

(assert (= bs!862063 (and b!4526432 b!4525501)))

(assert (=> bs!862063 (= (= (toList!4347 lt!1701257) (Cons!50674 (h!56535 (toList!4347 lt!1701248)) (t!357760 (toList!4347 lt!1701248)))) (= lambda!173558 lambda!173422))))

(assert (=> b!4526432 true))

(declare-fun bs!862064 () Bool)

(declare-fun b!4526436 () Bool)

(assert (= bs!862064 (and b!4526436 b!4525770)))

(declare-fun lambda!173559 () Int)

(assert (=> bs!862064 (= lambda!173559 lambda!173470)))

(declare-fun bs!862065 () Bool)

(assert (= bs!862065 (and b!4526436 b!4525499)))

(assert (=> bs!862065 (= lambda!173559 lambda!173424)))

(declare-fun bs!862066 () Bool)

(assert (= bs!862066 (and b!4526436 b!4526139)))

(assert (=> bs!862066 (= lambda!173559 lambda!173534)))

(declare-fun bs!862067 () Bool)

(assert (= bs!862067 (and b!4526436 b!4526125)))

(assert (=> bs!862067 (= lambda!173559 lambda!173532)))

(declare-fun bs!862068 () Bool)

(assert (= bs!862068 (and b!4526436 b!4526078)))

(assert (=> bs!862068 (= lambda!173559 lambda!173528)))

(declare-fun bs!862069 () Bool)

(assert (= bs!862069 (and b!4526436 b!4525618)))

(assert (=> bs!862069 (= lambda!173559 lambda!173443)))

(declare-fun b!4526431 () Bool)

(declare-fun e!2820276 () Unit!95830)

(declare-fun Unit!96130 () Unit!95830)

(assert (=> b!4526431 (= e!2820276 Unit!96130)))

(declare-fun res!1884567 () Bool)

(declare-fun e!2820278 () Bool)

(assert (=> b!4526432 (=> (not res!1884567) (not e!2820278))))

(declare-fun lt!1702545 () List!50801)

(assert (=> b!4526432 (= res!1884567 (forall!10289 lt!1702545 lambda!173558))))

(declare-fun b!4526433 () Bool)

(declare-fun res!1884566 () Bool)

(assert (=> b!4526433 (=> (not res!1884566) (not e!2820278))))

(assert (=> b!4526433 (= res!1884566 (= (length!360 lt!1702545) (length!361 (toList!4347 lt!1701257))))))

(declare-fun b!4526435 () Bool)

(declare-fun e!2820275 () List!50801)

(assert (=> b!4526435 (= e!2820275 Nil!50677)))

(assert (=> b!4526436 (= e!2820278 (= (content!8383 lt!1702545) (content!8383 (map!11148 (toList!4347 lt!1701257) lambda!173559))))))

(declare-fun b!4526437 () Bool)

(declare-fun e!2820277 () Unit!95830)

(declare-fun Unit!96131 () Unit!95830)

(assert (=> b!4526437 (= e!2820277 Unit!96131)))

(declare-fun b!4526434 () Bool)

(assert (=> b!4526434 false))

(declare-fun Unit!96132 () Unit!95830)

(assert (=> b!4526434 (= e!2820277 Unit!96132)))

(declare-fun d!1396095 () Bool)

(assert (=> d!1396095 e!2820278))

(declare-fun res!1884568 () Bool)

(assert (=> d!1396095 (=> (not res!1884568) (not e!2820278))))

(assert (=> d!1396095 (= res!1884568 (noDuplicate!752 lt!1702545))))

(assert (=> d!1396095 (= lt!1702545 e!2820275)))

(declare-fun c!772731 () Bool)

(assert (=> d!1396095 (= c!772731 ((_ is Cons!50674) (toList!4347 lt!1701257)))))

(assert (=> d!1396095 (invariantList!1025 (toList!4347 lt!1701257))))

(assert (=> d!1396095 (= (getKeysList!472 (toList!4347 lt!1701257)) lt!1702545)))

(assert (=> b!4526438 (= e!2820275 (Cons!50677 (_1!28851 (h!56535 (toList!4347 lt!1701257))) (getKeysList!472 (t!357760 (toList!4347 lt!1701257)))))))

(declare-fun c!772732 () Bool)

(assert (=> b!4526438 (= c!772732 (containsKey!1808 (t!357760 (toList!4347 lt!1701257)) (_1!28851 (h!56535 (toList!4347 lt!1701257)))))))

(declare-fun lt!1702544 () Unit!95830)

(assert (=> b!4526438 (= lt!1702544 e!2820277)))

(declare-fun c!772733 () Bool)

(assert (=> b!4526438 (= c!772733 (contains!13420 (getKeysList!472 (t!357760 (toList!4347 lt!1701257))) (_1!28851 (h!56535 (toList!4347 lt!1701257)))))))

(declare-fun lt!1702548 () Unit!95830)

(assert (=> b!4526438 (= lt!1702548 e!2820276)))

(declare-fun lt!1702542 () List!50801)

(assert (=> b!4526438 (= lt!1702542 (getKeysList!472 (t!357760 (toList!4347 lt!1701257))))))

(declare-fun lt!1702546 () Unit!95830)

(assert (=> b!4526438 (= lt!1702546 (lemmaForallContainsAddHeadPreserves!172 (t!357760 (toList!4347 lt!1701257)) lt!1702542 (h!56535 (toList!4347 lt!1701257))))))

(assert (=> b!4526438 (forall!10289 lt!1702542 lambda!173557)))

(declare-fun lt!1702543 () Unit!95830)

(assert (=> b!4526438 (= lt!1702543 lt!1702546)))

(assert (=> b!4526439 false))

(declare-fun lt!1702547 () Unit!95830)

(assert (=> b!4526439 (= lt!1702547 (forallContained!2540 (getKeysList!472 (t!357760 (toList!4347 lt!1701257))) lambda!173556 (_1!28851 (h!56535 (toList!4347 lt!1701257)))))))

(declare-fun Unit!96133 () Unit!95830)

(assert (=> b!4526439 (= e!2820276 Unit!96133)))

(assert (= (and d!1396095 c!772731) b!4526438))

(assert (= (and d!1396095 (not c!772731)) b!4526435))

(assert (= (and b!4526438 c!772732) b!4526434))

(assert (= (and b!4526438 (not c!772732)) b!4526437))

(assert (= (and b!4526438 c!772733) b!4526439))

(assert (= (and b!4526438 (not c!772733)) b!4526431))

(assert (= (and d!1396095 res!1884568) b!4526433))

(assert (= (and b!4526433 res!1884566) b!4526432))

(assert (= (and b!4526432 res!1884567) b!4526436))

(declare-fun m!5280053 () Bool)

(assert (=> b!4526433 m!5280053))

(assert (=> b!4526433 m!5278619))

(declare-fun m!5280055 () Bool)

(assert (=> b!4526436 m!5280055))

(declare-fun m!5280057 () Bool)

(assert (=> b!4526436 m!5280057))

(assert (=> b!4526436 m!5280057))

(declare-fun m!5280059 () Bool)

(assert (=> b!4526436 m!5280059))

(declare-fun m!5280061 () Bool)

(assert (=> b!4526438 m!5280061))

(declare-fun m!5280063 () Bool)

(assert (=> b!4526438 m!5280063))

(assert (=> b!4526438 m!5280063))

(declare-fun m!5280065 () Bool)

(assert (=> b!4526438 m!5280065))

(declare-fun m!5280067 () Bool)

(assert (=> b!4526438 m!5280067))

(declare-fun m!5280069 () Bool)

(assert (=> b!4526438 m!5280069))

(assert (=> b!4526439 m!5280063))

(assert (=> b!4526439 m!5280063))

(declare-fun m!5280071 () Bool)

(assert (=> b!4526439 m!5280071))

(declare-fun m!5280073 () Bool)

(assert (=> b!4526432 m!5280073))

(declare-fun m!5280075 () Bool)

(assert (=> d!1396095 m!5280075))

(assert (=> d!1396095 m!5278123))

(assert (=> b!4524875 d!1396095))

(assert (=> b!4524915 d!1395851))

(declare-fun b!4526440 () Bool)

(declare-fun e!2820279 () Option!11137)

(assert (=> b!4526440 (= e!2820279 (Some!11136 (_2!28852 (h!56536 (toList!4348 lt!1701574)))))))

(declare-fun d!1396097 () Bool)

(declare-fun c!772734 () Bool)

(assert (=> d!1396097 (= c!772734 (and ((_ is Cons!50675) (toList!4348 lt!1701574)) (= (_1!28852 (h!56536 (toList!4348 lt!1701574))) (_1!28852 lt!1701242))))))

(assert (=> d!1396097 (= (getValueByKey!1109 (toList!4348 lt!1701574) (_1!28852 lt!1701242)) e!2820279)))

(declare-fun b!4526441 () Bool)

(declare-fun e!2820280 () Option!11137)

(assert (=> b!4526441 (= e!2820279 e!2820280)))

(declare-fun c!772735 () Bool)

(assert (=> b!4526441 (= c!772735 (and ((_ is Cons!50675) (toList!4348 lt!1701574)) (not (= (_1!28852 (h!56536 (toList!4348 lt!1701574))) (_1!28852 lt!1701242)))))))

(declare-fun b!4526442 () Bool)

(assert (=> b!4526442 (= e!2820280 (getValueByKey!1109 (t!357761 (toList!4348 lt!1701574)) (_1!28852 lt!1701242)))))

(declare-fun b!4526443 () Bool)

(assert (=> b!4526443 (= e!2820280 None!11136)))

(assert (= (and d!1396097 c!772734) b!4526440))

(assert (= (and d!1396097 (not c!772734)) b!4526441))

(assert (= (and b!4526441 c!772735) b!4526442))

(assert (= (and b!4526441 (not c!772735)) b!4526443))

(declare-fun m!5280077 () Bool)

(assert (=> b!4526442 m!5280077))

(assert (=> b!4525095 d!1396097))

(declare-fun d!1396099 () Bool)

(assert (=> d!1396099 (dynLambda!21175 lambda!173266 (h!56536 (toList!4348 lm!1477)))))

(assert (=> d!1396099 true))

(declare-fun _$7!1871 () Unit!95830)

(assert (=> d!1396099 (= (choose!29616 (toList!4348 lm!1477) lambda!173266 (h!56536 (toList!4348 lm!1477))) _$7!1871)))

(declare-fun b_lambda!155859 () Bool)

(assert (=> (not b_lambda!155859) (not d!1396099)))

(declare-fun bs!862070 () Bool)

(assert (= bs!862070 d!1396099))

(assert (=> bs!862070 m!5277317))

(assert (=> d!1395167 d!1396099))

(declare-fun d!1396101 () Bool)

(declare-fun res!1884569 () Bool)

(declare-fun e!2820281 () Bool)

(assert (=> d!1396101 (=> res!1884569 e!2820281)))

(assert (=> d!1396101 (= res!1884569 ((_ is Nil!50675) (toList!4348 lm!1477)))))

(assert (=> d!1396101 (= (forall!10285 (toList!4348 lm!1477) lambda!173266) e!2820281)))

(declare-fun b!4526444 () Bool)

(declare-fun e!2820282 () Bool)

(assert (=> b!4526444 (= e!2820281 e!2820282)))

(declare-fun res!1884570 () Bool)

(assert (=> b!4526444 (=> (not res!1884570) (not e!2820282))))

(assert (=> b!4526444 (= res!1884570 (dynLambda!21175 lambda!173266 (h!56536 (toList!4348 lm!1477))))))

(declare-fun b!4526445 () Bool)

(assert (=> b!4526445 (= e!2820282 (forall!10285 (t!357761 (toList!4348 lm!1477)) lambda!173266))))

(assert (= (and d!1396101 (not res!1884569)) b!4526444))

(assert (= (and b!4526444 res!1884570) b!4526445))

(declare-fun b_lambda!155861 () Bool)

(assert (=> (not b_lambda!155861) (not b!4526444)))

(assert (=> b!4526444 m!5277317))

(declare-fun m!5280079 () Bool)

(assert (=> b!4526445 m!5280079))

(assert (=> d!1395167 d!1396101))

(assert (=> b!4524917 d!1395619))

(declare-fun d!1396103 () Bool)

(assert (=> d!1396103 (containsKey!1808 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287)))

(declare-fun lt!1702549 () Unit!95830)

(assert (=> d!1396103 (= lt!1702549 (choose!29634 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287))))

(assert (=> d!1396103 (invariantList!1025 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))))))

(assert (=> d!1396103 (= (lemmaInGetKeysListThenContainsKey!471 (toList!4347 (extractMap!1226 (t!357761 (toList!4348 lm!1477)))) key!3287) lt!1702549)))

(declare-fun bs!862071 () Bool)

(assert (= bs!862071 d!1396103))

(assert (=> bs!862071 m!5276993))

(declare-fun m!5280081 () Bool)

(assert (=> bs!862071 m!5280081))

(assert (=> bs!862071 m!5277663))

(assert (=> b!4524917 d!1396103))

(assert (=> d!1395237 d!1395521))

(assert (=> d!1395237 d!1395655))

(declare-fun d!1396105 () Bool)

(declare-fun res!1884571 () Bool)

(declare-fun e!2820283 () Bool)

(assert (=> d!1396105 (=> res!1884571 e!2820283)))

(assert (=> d!1396105 (= res!1884571 ((_ is Nil!50674) (ite c!772406 (toList!4347 lt!1701249) (toList!4347 lt!1701645))))))

(assert (=> d!1396105 (= (forall!10287 (ite c!772406 (toList!4347 lt!1701249) (toList!4347 lt!1701645)) (ite c!772406 lambda!173380 lambda!173382)) e!2820283)))

(declare-fun b!4526446 () Bool)

(declare-fun e!2820284 () Bool)

(assert (=> b!4526446 (= e!2820283 e!2820284)))

(declare-fun res!1884572 () Bool)

(assert (=> b!4526446 (=> (not res!1884572) (not e!2820284))))

(assert (=> b!4526446 (= res!1884572 (dynLambda!21177 (ite c!772406 lambda!173380 lambda!173382) (h!56535 (ite c!772406 (toList!4347 lt!1701249) (toList!4347 lt!1701645)))))))

(declare-fun b!4526447 () Bool)

(assert (=> b!4526447 (= e!2820284 (forall!10287 (t!357760 (ite c!772406 (toList!4347 lt!1701249) (toList!4347 lt!1701645))) (ite c!772406 lambda!173380 lambda!173382)))))

(assert (= (and d!1396105 (not res!1884571)) b!4526446))

(assert (= (and b!4526446 res!1884572) b!4526447))

(declare-fun b_lambda!155863 () Bool)

(assert (=> (not b_lambda!155863) (not b!4526446)))

(declare-fun m!5280083 () Bool)

(assert (=> b!4526446 m!5280083))

(declare-fun m!5280085 () Bool)

(assert (=> b!4526447 m!5280085))

(assert (=> bm!315329 d!1396105))

(assert (=> d!1395151 d!1395595))

(assert (=> d!1395151 d!1395593))

(assert (=> b!4525052 d!1395493))

(declare-fun d!1396107 () Bool)

(declare-fun lt!1702550 () Bool)

(assert (=> d!1396107 (= lt!1702550 (select (content!8381 (_2!28852 lt!1701242)) (get!16611 lt!1701544)))))

(declare-fun e!2820285 () Bool)

(assert (=> d!1396107 (= lt!1702550 e!2820285)))

(declare-fun res!1884573 () Bool)

(assert (=> d!1396107 (=> (not res!1884573) (not e!2820285))))

(assert (=> d!1396107 (= res!1884573 ((_ is Cons!50674) (_2!28852 lt!1701242)))))

(assert (=> d!1396107 (= (contains!13423 (_2!28852 lt!1701242) (get!16611 lt!1701544)) lt!1702550)))

(declare-fun b!4526448 () Bool)

(declare-fun e!2820286 () Bool)

(assert (=> b!4526448 (= e!2820285 e!2820286)))

(declare-fun res!1884574 () Bool)

(assert (=> b!4526448 (=> res!1884574 e!2820286)))

(assert (=> b!4526448 (= res!1884574 (= (h!56535 (_2!28852 lt!1701242)) (get!16611 lt!1701544)))))

(declare-fun b!4526449 () Bool)

(assert (=> b!4526449 (= e!2820286 (contains!13423 (t!357760 (_2!28852 lt!1701242)) (get!16611 lt!1701544)))))

(assert (= (and d!1396107 res!1884573) b!4526448))

(assert (= (and b!4526448 (not res!1884574)) b!4526449))

(declare-fun m!5280087 () Bool)

(assert (=> d!1396107 m!5280087))

(assert (=> d!1396107 m!5277311))

(declare-fun m!5280089 () Bool)

(assert (=> d!1396107 m!5280089))

(assert (=> b!4526449 m!5277311))

(declare-fun m!5280091 () Bool)

(assert (=> b!4526449 m!5280091))

(assert (=> b!4525046 d!1396107))

(assert (=> b!4525046 d!1395927))

(declare-fun d!1396109 () Bool)

(assert (=> d!1396109 (= (get!16613 (getValueByKey!1109 (toList!4348 lm!1477) hash!344)) (v!44762 (getValueByKey!1109 (toList!4348 lm!1477) hash!344)))))

(assert (=> d!1395247 d!1396109))

(assert (=> d!1395247 d!1396015))

(declare-fun b!4526450 () Bool)

(declare-fun tp!1338252 () Bool)

(declare-fun e!2820287 () Bool)

(assert (=> b!4526450 (= e!2820287 (and tp_is_empty!27957 tp_is_empty!27959 tp!1338252))))

(assert (=> b!4525193 (= tp!1338243 e!2820287)))

(assert (= (and b!4525193 ((_ is Cons!50674) (_2!28852 (h!56536 (toList!4348 lm!1477))))) b!4526450))

(declare-fun b!4526451 () Bool)

(declare-fun e!2820288 () Bool)

(declare-fun tp!1338253 () Bool)

(declare-fun tp!1338254 () Bool)

(assert (=> b!4526451 (= e!2820288 (and tp!1338253 tp!1338254))))

(assert (=> b!4525193 (= tp!1338244 e!2820288)))

(assert (= (and b!4525193 ((_ is Cons!50675) (t!357761 (toList!4348 lm!1477)))) b!4526451))

(declare-fun b!4526452 () Bool)

(declare-fun tp!1338255 () Bool)

(declare-fun e!2820289 () Bool)

(assert (=> b!4526452 (= e!2820289 (and tp_is_empty!27957 tp_is_empty!27959 tp!1338255))))

(assert (=> b!4525198 (= tp!1338247 e!2820289)))

(assert (= (and b!4525198 ((_ is Cons!50674) (t!357760 (t!357760 newBucket!178)))) b!4526452))

(declare-fun b_lambda!155865 () Bool)

(assert (= b_lambda!155705 (or d!1395141 b_lambda!155865)))

(declare-fun bs!862072 () Bool)

(declare-fun d!1396111 () Bool)

(assert (= bs!862072 (and d!1396111 d!1395141)))

(assert (=> bs!862072 (= (dynLambda!21175 lambda!173337 (h!56536 (toList!4348 lt!1701251))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lt!1701251)))))))

(assert (=> bs!862072 m!5279161))

(assert (=> b!4525779 d!1396111))

(declare-fun b_lambda!155867 () Bool)

(assert (= b_lambda!155773 (or b!4525162 b_lambda!155867)))

(declare-fun bs!862073 () Bool)

(declare-fun d!1396113 () Bool)

(assert (= bs!862073 (and d!1396113 b!4525162)))

(assert (=> bs!862073 (= (dynLambda!21177 lambda!173389 (h!56535 (toList!4347 lt!1701669))) (contains!13418 lt!1701670 (_1!28851 (h!56535 (toList!4347 lt!1701669)))))))

(declare-fun m!5280093 () Bool)

(assert (=> bs!862073 m!5280093))

(assert (=> b!4526331 d!1396113))

(declare-fun b_lambda!155869 () Bool)

(assert (= b_lambda!155715 (or b!4525155 b_lambda!155869)))

(declare-fun bs!862074 () Bool)

(declare-fun d!1396115 () Bool)

(assert (= bs!862074 (and d!1396115 b!4525155)))

(assert (=> bs!862074 (= (dynLambda!21177 lambda!173382 (h!56535 (_2!28852 lt!1701242))) (contains!13418 lt!1701646 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> bs!862074 m!5277471))

(assert (=> b!4525860 d!1396115))

(declare-fun b_lambda!155871 () Bool)

(assert (= b_lambda!155701 (or d!1395071 b_lambda!155871)))

(declare-fun bs!862075 () Bool)

(declare-fun d!1396117 () Bool)

(assert (= bs!862075 (and d!1396117 d!1395071)))

(assert (=> bs!862075 (= (dynLambda!21175 lambda!173310 (h!56536 (toList!4348 lm!1477))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lm!1477)))))))

(assert (=> bs!862075 m!5277587))

(assert (=> b!4525773 d!1396117))

(declare-fun b_lambda!155873 () Bool)

(assert (= b_lambda!155689 (or b!4524756 b_lambda!155873)))

(declare-fun bs!862076 () Bool)

(declare-fun d!1396119 () Bool)

(assert (= bs!862076 (and d!1396119 b!4524756)))

(assert (=> bs!862076 (= (dynLambda!21177 lambda!173267 (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477))))) (= (hash!2837 hashF!1107 (_1!28851 (h!56535 (_2!28852 (h!56536 (toList!4348 lm!1477)))))) (_1!28852 (h!56536 (toList!4348 lm!1477)))))))

(declare-fun m!5280095 () Bool)

(assert (=> bs!862076 m!5280095))

(assert (=> b!4525699 d!1396119))

(declare-fun b_lambda!155875 () Bool)

(assert (= b_lambda!155717 (or b!4525155 b_lambda!155875)))

(assert (=> d!1395695 d!1396115))

(declare-fun b_lambda!155877 () Bool)

(assert (= b_lambda!155675 (or d!1395133 b_lambda!155877)))

(declare-fun bs!862077 () Bool)

(declare-fun d!1396121 () Bool)

(assert (= bs!862077 (and d!1396121 d!1395133)))

(assert (=> bs!862077 (= (dynLambda!21175 lambda!173333 (h!56536 (toList!4348 lt!1701246))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lt!1701246)))))))

(assert (=> bs!862077 m!5279337))

(assert (=> b!4525646 d!1396121))

(declare-fun b_lambda!155879 () Bool)

(assert (= b_lambda!155699 (or d!1395115 b_lambda!155879)))

(declare-fun bs!862078 () Bool)

(declare-fun d!1396123 () Bool)

(assert (= bs!862078 (and d!1396123 d!1395115)))

(assert (=> bs!862078 (= (dynLambda!21175 lambda!173327 (h!56536 (toList!4348 lt!1701251))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lt!1701251)))))))

(assert (=> bs!862078 m!5279161))

(assert (=> b!4525762 d!1396123))

(declare-fun b_lambda!155881 () Bool)

(assert (= b_lambda!155857 (or start!448304 b_lambda!155881)))

(assert (=> d!1396049 d!1395261))

(declare-fun b_lambda!155883 () Bool)

(assert (= b_lambda!155681 (or d!1395201 b_lambda!155883)))

(declare-fun bs!862079 () Bool)

(declare-fun d!1396125 () Bool)

(assert (= bs!862079 (and d!1396125 d!1395201)))

(assert (=> bs!862079 (= (dynLambda!21177 lambda!173383 (h!56535 (_2!28852 lt!1701242))) (contains!13418 lt!1701649 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun m!5280097 () Bool)

(assert (=> bs!862079 m!5280097))

(assert (=> b!4525658 d!1396125))

(declare-fun b_lambda!155885 () Bool)

(assert (= b_lambda!155703 (or b!4525155 b_lambda!155885)))

(declare-fun bs!862080 () Bool)

(declare-fun d!1396127 () Bool)

(assert (= bs!862080 (and d!1396127 b!4525155)))

(assert (=> bs!862080 (= (dynLambda!21177 lambda!173382 (h!56535 (toList!4347 lt!1701249))) (contains!13418 lt!1701646 (_1!28851 (h!56535 (toList!4347 lt!1701249)))))))

(declare-fun m!5280099 () Bool)

(assert (=> bs!862080 m!5280099))

(assert (=> b!4525775 d!1396127))

(declare-fun b_lambda!155887 () Bool)

(assert (= b_lambda!155651 (or d!1395087 b_lambda!155887)))

(declare-fun bs!862081 () Bool)

(declare-fun d!1396129 () Bool)

(assert (= bs!862081 (and d!1396129 d!1395087)))

(assert (=> bs!862081 (= (dynLambda!21175 lambda!173312 (h!56536 (t!357761 (toList!4348 lm!1477)))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))))))

(assert (=> bs!862081 m!5278065))

(assert (=> b!4525378 d!1396129))

(declare-fun b_lambda!155889 () Bool)

(assert (= b_lambda!155685 (or d!1395241 b_lambda!155889)))

(declare-fun bs!862082 () Bool)

(declare-fun d!1396131 () Bool)

(assert (= bs!862082 (and d!1396131 d!1395241)))

(assert (=> bs!862082 (= (dynLambda!21175 lambda!173391 (h!56536 (toList!4348 lt!1701255))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lt!1701255)))))))

(assert (=> bs!862082 m!5278323))

(assert (=> b!4525693 d!1396131))

(declare-fun b_lambda!155891 () Bool)

(assert (= b_lambda!155671 (or d!1395099 b_lambda!155891)))

(declare-fun bs!862083 () Bool)

(declare-fun d!1396133 () Bool)

(assert (= bs!862083 (and d!1396133 d!1395099)))

(assert (=> bs!862083 (= (dynLambda!21175 lambda!173319 (h!56536 (toList!4348 lt!1701251))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lt!1701251)))))))

(assert (=> bs!862083 m!5279161))

(assert (=> b!4525638 d!1396133))

(declare-fun b_lambda!155893 () Bool)

(assert (= b_lambda!155755 (or d!1395239 b_lambda!155893)))

(declare-fun bs!862084 () Bool)

(declare-fun d!1396135 () Bool)

(assert (= bs!862084 (and d!1396135 d!1395239)))

(assert (=> bs!862084 (= (dynLambda!21177 lambda!173390 (h!56535 (_2!28852 lt!1701242))) (contains!13418 lt!1701673 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(declare-fun m!5280101 () Bool)

(assert (=> bs!862084 m!5280101))

(assert (=> b!4526105 d!1396135))

(declare-fun b_lambda!155895 () Bool)

(assert (= b_lambda!155753 (or d!1395245 b_lambda!155895)))

(declare-fun bs!862085 () Bool)

(declare-fun d!1396137 () Bool)

(assert (= bs!862085 (and d!1396137 d!1395245)))

(assert (=> bs!862085 (= (dynLambda!21175 lambda!173397 (h!56536 (toList!4348 lm!1477))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lm!1477)))))))

(assert (=> bs!862085 m!5277587))

(assert (=> b!4526101 d!1396137))

(declare-fun b_lambda!155897 () Bool)

(assert (= b_lambda!155677 (or d!1395243 b_lambda!155897)))

(declare-fun bs!862086 () Bool)

(declare-fun d!1396139 () Bool)

(assert (= bs!862086 (and d!1396139 d!1395243)))

(assert (=> bs!862086 (= (dynLambda!21177 lambda!173394 (h!56535 newBucket!178)) (= (hash!2837 hashF!1107 (_1!28851 (h!56535 newBucket!178))) hash!344))))

(declare-fun m!5280103 () Bool)

(assert (=> bs!862086 m!5280103))

(assert (=> b!4525648 d!1396139))

(declare-fun b_lambda!155899 () Bool)

(assert (= b_lambda!155711 (or start!448304 b_lambda!155899)))

(assert (=> d!1395669 d!1395263))

(declare-fun b_lambda!155901 () Bool)

(assert (= b_lambda!155673 (or d!1395201 b_lambda!155901)))

(declare-fun bs!862087 () Bool)

(declare-fun d!1396141 () Bool)

(assert (= bs!862087 (and d!1396141 d!1395201)))

(assert (=> bs!862087 (= (dynLambda!21177 lambda!173383 (h!56535 (toList!4347 lt!1701249))) (contains!13418 lt!1701649 (_1!28851 (h!56535 (toList!4347 lt!1701249)))))))

(declare-fun m!5280105 () Bool)

(assert (=> bs!862087 m!5280105))

(assert (=> b!4525640 d!1396141))

(declare-fun b_lambda!155903 () Bool)

(assert (= b_lambda!155859 (or b!4524756 b_lambda!155903)))

(assert (=> d!1396099 d!1395265))

(declare-fun b_lambda!155905 () Bool)

(assert (= b_lambda!155687 (or b!4524756 b_lambda!155905)))

(assert (=> d!1395533 d!1395267))

(declare-fun b_lambda!155907 () Bool)

(assert (= b_lambda!155679 (or b!4525162 b_lambda!155907)))

(declare-fun bs!862088 () Bool)

(declare-fun d!1396143 () Bool)

(assert (= bs!862088 (and d!1396143 b!4525162)))

(assert (=> bs!862088 (= (dynLambda!21177 lambda!173389 (h!56535 (toList!4347 lt!1701256))) (contains!13418 lt!1701670 (_1!28851 (h!56535 (toList!4347 lt!1701256)))))))

(declare-fun m!5280107 () Bool)

(assert (=> bs!862088 m!5280107))

(assert (=> b!4525652 d!1396143))

(declare-fun b_lambda!155909 () Bool)

(assert (= b_lambda!155695 (or d!1395233 b_lambda!155909)))

(declare-fun bs!862089 () Bool)

(declare-fun d!1396145 () Bool)

(assert (= bs!862089 (and d!1396145 d!1395233)))

(assert (=> bs!862089 (= (dynLambda!21175 lambda!173386 (h!56536 (toList!4348 lm!1477))) (allKeysSameHash!1024 (_2!28852 (h!56536 (toList!4348 lm!1477))) (_1!28852 (h!56536 (toList!4348 lm!1477))) hashF!1107))))

(assert (=> bs!862089 m!5277591))

(assert (=> b!4525746 d!1396145))

(declare-fun b_lambda!155911 () Bool)

(assert (= b_lambda!155777 (or b!4525162 b_lambda!155911)))

(declare-fun bs!862090 () Bool)

(declare-fun d!1396147 () Bool)

(assert (= bs!862090 (and d!1396147 b!4525162)))

(assert (=> bs!862090 (= (dynLambda!21177 lambda!173389 (h!56535 (_2!28852 lt!1701242))) (contains!13418 lt!1701670 (_1!28851 (h!56535 (_2!28852 lt!1701242)))))))

(assert (=> bs!862090 m!5277511))

(assert (=> d!1395975 d!1396147))

(declare-fun b_lambda!155913 () Bool)

(assert (= b_lambda!155771 (or b!4525162 b_lambda!155913)))

(assert (=> b!4526329 d!1396147))

(declare-fun b_lambda!155915 () Bool)

(assert (= b_lambda!155731 (or b!4525155 b_lambda!155915)))

(declare-fun bs!862091 () Bool)

(declare-fun d!1396149 () Bool)

(assert (= bs!862091 (and d!1396149 b!4525155)))

(assert (=> bs!862091 (= (dynLambda!21177 lambda!173382 (h!56535 (t!357760 (_2!28852 lt!1701242)))) (contains!13418 lt!1701646 (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242))))))))

(declare-fun m!5280109 () Bool)

(assert (=> bs!862091 m!5280109))

(assert (=> b!4525970 d!1396149))

(declare-fun b_lambda!155917 () Bool)

(assert (= b_lambda!155757 (or d!1395129 b_lambda!155917)))

(declare-fun bs!862092 () Bool)

(declare-fun d!1396151 () Bool)

(assert (= bs!862092 (and d!1396151 d!1395129)))

(assert (=> bs!862092 (= (dynLambda!21175 lambda!173332 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242)))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 (+!1556 lt!1701251 lt!1701242))))))))

(assert (=> bs!862092 m!5278507))

(assert (=> b!4526107 d!1396151))

(declare-fun b_lambda!155919 () Bool)

(assert (= b_lambda!155643 (or d!1395239 b_lambda!155919)))

(declare-fun bs!862093 () Bool)

(declare-fun d!1396153 () Bool)

(assert (= bs!862093 (and d!1396153 d!1395239)))

(assert (=> bs!862093 (= (dynLambda!21177 lambda!173390 (h!56535 (toList!4347 lt!1701256))) (contains!13418 lt!1701673 (_1!28851 (h!56535 (toList!4347 lt!1701256)))))))

(declare-fun m!5280111 () Bool)

(assert (=> bs!862093 m!5280111))

(assert (=> b!4525279 d!1396153))

(declare-fun b_lambda!155921 () Bool)

(assert (= b_lambda!155697 (or start!448304 b_lambda!155921)))

(declare-fun bs!862094 () Bool)

(declare-fun d!1396155 () Bool)

(assert (= bs!862094 (and d!1396155 start!448304)))

(assert (=> bs!862094 (= (dynLambda!21175 lambda!173265 (h!56536 (t!357761 (toList!4348 lm!1477)))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (t!357761 (toList!4348 lm!1477))))))))

(assert (=> bs!862094 m!5278065))

(assert (=> b!4525750 d!1396155))

(declare-fun b_lambda!155923 () Bool)

(assert (= b_lambda!155649 (or d!1395039 b_lambda!155923)))

(declare-fun bs!862095 () Bool)

(declare-fun d!1396157 () Bool)

(assert (= bs!862095 (and d!1396157 d!1395039)))

(assert (=> bs!862095 (= (dynLambda!21175 lambda!173270 (h!56536 (toList!4348 lm!1477))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lm!1477)))))))

(assert (=> bs!862095 m!5277587))

(assert (=> b!4525365 d!1396157))

(declare-fun b_lambda!155925 () Bool)

(assert (= b_lambda!155861 (or b!4524756 b_lambda!155925)))

(assert (=> b!4526444 d!1395265))

(declare-fun b_lambda!155927 () Bool)

(assert (= b_lambda!155713 (or b!4525155 b_lambda!155927)))

(declare-fun bs!862096 () Bool)

(declare-fun d!1396159 () Bool)

(assert (= bs!862096 (and d!1396159 b!4525155)))

(assert (=> bs!862096 (= (dynLambda!21177 lambda!173382 (h!56535 (toList!4347 lt!1701645))) (contains!13418 lt!1701646 (_1!28851 (h!56535 (toList!4347 lt!1701645)))))))

(declare-fun m!5280113 () Bool)

(assert (=> bs!862096 m!5280113))

(assert (=> b!4525855 d!1396159))

(declare-fun b_lambda!155929 () Bool)

(assert (= b_lambda!155759 (or d!1395089 b_lambda!155929)))

(declare-fun bs!862097 () Bool)

(declare-fun d!1396161 () Bool)

(assert (= bs!862097 (and d!1396161 d!1395089)))

(assert (=> bs!862097 (= (dynLambda!21175 lambda!173318 (h!56536 (toList!4348 lt!1701251))) (noDuplicateKeys!1170 (_2!28852 (h!56536 (toList!4348 lt!1701251)))))))

(assert (=> bs!862097 m!5279161))

(assert (=> b!4526118 d!1396161))

(declare-fun b_lambda!155931 () Bool)

(assert (= b_lambda!155779 (or b!4525162 b_lambda!155931)))

(declare-fun bs!862098 () Bool)

(declare-fun d!1396163 () Bool)

(assert (= bs!862098 (and d!1396163 b!4525162)))

(assert (=> bs!862098 (= (dynLambda!21177 lambda!173389 (h!56535 (t!357760 (_2!28852 lt!1701242)))) (contains!13418 lt!1701670 (_1!28851 (h!56535 (t!357760 (_2!28852 lt!1701242))))))))

(declare-fun m!5280115 () Bool)

(assert (=> bs!862098 m!5280115))

(assert (=> b!4526382 d!1396163))

(check-sat (not b_lambda!155669) (not d!1395773) (not d!1395637) (not b!4526085) (not d!1395893) (not b!4525328) (not b!4525846) (not bs!862097) (not b!4526279) (not b!4525755) (not b!4525280) (not d!1395885) (not d!1395975) (not b!4525862) (not b!4526012) (not b_lambda!155929) (not b!4525636) (not b!4526138) (not d!1395615) (not d!1395879) (not b!4525986) (not b_lambda!155893) (not b_lambda!155899) (not b!4526286) (not b!4525865) (not b_lambda!155901) (not bs!862096) (not b!4525700) (not bm!315459) (not b!4526297) (not b!4525831) (not b!4526397) (not b!4526452) (not b_lambda!155917) (not b!4525895) (not bs!862080) (not d!1395873) (not b!4525985) (not b!4525763) (not d!1395485) (not b!4525532) (not d!1395673) (not b!4525753) (not b!4526011) (not d!1396061) (not b!4526356) (not b_lambda!155879) (not b!4525770) (not b!4526273) (not b!4525334) (not b!4525879) (not bs!862077) (not d!1395919) (not b!4526375) (not b!4525794) (not b!4526430) (not d!1395639) (not d!1395311) (not b!4526058) (not bs!862090) (not d!1395463) (not b_lambda!155891) (not d!1395799) (not b!4526148) (not d!1395629) (not b!4525834) (not b!4525856) (not b!4525709) (not d!1395623) (not b!4525710) (not bm!315455) (not d!1395659) (not b!4525593) (not b!4526381) (not b!4525789) (not b!4525844) (not b!4525686) (not b!4526308) (not b!4526288) (not d!1396089) (not b!4525769) (not d!1395501) (not d!1395657) (not b!4525314) (not bm!315456) (not b!4526343) (not bs!862076) (not b!4525869) (not b!4525974) (not d!1395331) (not b!4526141) (not bs!862083) (not bm!315413) (not b_lambda!155911) (not bm!315357) (not d!1395475) (not b!4525507) (not b!4525604) (not b!4526411) (not b!4526136) (not b!4526424) (not b!4526422) (not d!1395691) (not b_lambda!155887) (not bs!862084) (not b_lambda!155897) (not bm!315412) (not b!4525836) (not b!4525984) (not d!1395423) (not b!4526433) (not b!4525884) (not d!1395363) (not b!4525565) (not b!4526266) (not b!4525301) (not b_lambda!155873) (not b!4525513) (not b!4525694) (not b_lambda!155925) (not d!1395747) (not d!1395665) (not b!4525609) (not b!4525495) (not b_lambda!155865) (not b!4526268) (not d!1395929) (not b!4526072) (not b!4526140) (not bm!315375) (not bs!862091) (not d!1395325) (not b!4525761) (not bm!315396) (not d!1395861) (not b!4525838) (not b!4525672) (not b!4526146) (not b!4526403) (not bm!315395) (not b!4525618) (not b_lambda!155915) (not d!1396107) (not d!1395599) (not b!4525896) (not d!1395631) (not b!4526307) (not b!4526115) (not d!1395679) (not b!4525661) (not b!4526358) (not d!1395671) (not b!4526359) (not b!4525777) (not b!4525674) (not d!1395775) (not b!4526077) (not d!1395481) (not d!1395339) (not bs!862089) (not d!1395923) (not bm!315376) (not d!1395993) (not b!4525499) (not b!4525382) (not bs!862093) (not b!4525780) (not bm!315382) (not d!1395877) (not b_lambda!155883) (not b!4526119) (not bs!862072) (not b!4525557) (not b!4526264) (not b!4525767) (not bm!315362) (not b!4526398) (not b!4526389) (not b!4525751) (not d!1395883) (not bm!315374) (not b!4526436) (not b!4525522) (not b!4525778) (not d!1395611) (not d!1395701) (not b!4526294) (not b!4526009) (not bs!862075) tp_is_empty!27959 (not b_lambda!155875) (not bs!862095) (not b!4525556) (not d!1395453) (not b!4526076) tp_is_empty!27957 (not d!1395895) (not b_lambda!155927) (not d!1395969) (not b!4526428) (not b!4525868) (not b!4525530) (not b!4526445) (not b!4526125) (not b!4525975) (not b!4525894) (not b_lambda!155923) (not bs!862082) (not b!4526274) (not d!1395429) (not b!4526006) (not b!4525558) (not bs!862079) (not b!4525496) (not b!4525861) (not bs!862078) (not bm!315451) (not b!4525971) (not b!4525662) (not b!4526142) (not d!1395409) (not bm!315380) (not b!4525443) (not b!4525512) (not b!4525968) (not b!4526420) (not d!1396019) (not d!1395447) (not b!4526081) (not d!1395405) (not d!1395411) (not b_lambda!155919) (not b!4526272) (not b!4525647) (not d!1395853) (not bs!862088) (not b!4525520) (not d!1395959) (not b!4525407) (not b!4525616) (not d!1395491) (not b!4525510) (not bm!315408) (not d!1395897) (not b!4526330) (not d!1395801) (not d!1395891) (not b!4526306) (not d!1395771) (not b!4526379) (not b!4526363) (not b_lambda!155913) (not bm!315402) (not d!1395851) (not b!4525559) (not d!1395617) (not b!4525772) (not b!4526357) (not d!1395597) (not bm!315381) (not b!4526083) (not d!1395509) (not b!4526364) (not d!1396011) (not b_lambda!155905) (not b!4525863) (not b!4525339) (not b!4526127) (not b_lambda!155931) (not b!4526450) (not b!4525897) (not b!4526102) (not b!4526139) (not b!4526103) (not b!4525379) (not b!4526426) (not d!1395835) (not b!4525864) (not b!4526432) (not d!1395983) (not b_lambda!155877) (not bm!315389) (not bm!315466) (not bm!315454) (not d!1396095) (not bs!862086) (not b!4525637) (not bm!315371) (not bm!315361) (not b!4525380) (not b!4526285) (not b!4525635) (not b!4525849) (not d!1395779) (not b!4526374) (not b_lambda!155903) (not d!1395365) (not bm!315450) (not b!4525876) (not d!1395849) (not bm!315372) (not b!4525676) (not d!1395855) (not b!4526116) (not d!1395677) (not b!4525414) (not d!1395667) (not b!4526122) (not bs!862092) (not b!4526066) (not b!4525882) (not b!4525656) (not b!4525972) (not d!1395317) (not b!4525871) (not b!4526104) (not b!4526438) (not b!4526075) (not b!4525413) (not b!4525602) (not b!4526342) (not b!4525969) (not d!1395577) (not b!4525651) (not b!4526013) (not b!4525983) (not b_lambda!155633) (not d!1395635) (not b!4525330) (not d!1395977) (not b_lambda!155629) (not bm!315393) (not b_lambda!155885) (not b!4526265) (not b!4526365) (not b!4525333) (not b!4525566) (not b!4525366) (not b!4526069) (not b!4526108) (not b!4525639) (not bm!315407) (not b_lambda!155907) (not bm!315453) (not b!4526439) (not b!4526110) (not bs!862087) (not b!4526299) (not d!1395579) (not b!4525758) (not b!4525331) (not b!4525688) (not b!4526442) (not b!4526078) (not b!4526293) (not b!4526284) (not b_lambda!155647) (not b!4526408) (not b!4526380) (not d!1395683) (not b!4525978) (not b!4525979) (not b_lambda!155635) (not bm!315363) (not b!4526399) (not b!4525776) (not b!4526291) (not b_lambda!155881) (not b!4526360) (not b!4525737) (not bm!315460) (not b!4526447) (not b!4526109) (not b!4525977) (not d!1395347) (not b!4526296) (not b!4525644) (not b!4526128) (not b!4525829) (not b!4526143) (not bm!315392) (not d!1395603) (not b_lambda!155631) (not b_lambda!155909) (not b!4525519) (not b!4525338) (not b!4526283) (not d!1395527) (not bm!315401) (not b!4526147) (not d!1395531) (not bm!315465) (not b!4525441) (not bs!862074) (not b!4525570) (not d!1395661) (not d!1396103) (not bm!315406) (not b!4525337) (not b!4526383) (not d!1395493) (not b!4526449) (not d!1395613) (not bm!315452) (not bs!862085) (not b!4525501) (not b!4525663) (not d!1395695) (not b!4525660) (not d!1395547) (not b!4526271) (not b!4526385) (not b!4525883) (not b!4526137) (not bs!862081) (not d!1396041) (not b!4525841) (not b!4525847) (not d!1395437) (not b!4526332) (not b!4526134) (not d!1395517) (not d!1396085) (not b!4525733) (not d!1395309) (not b!4526106) (not b!4526401) (not b!4526387) (not b!4525745) (not b!4525765) (not b_lambda!155867) (not b!4525708) (not d!1395709) (not b!4525601) (not b!4525502) (not b_lambda!155921) (not b_lambda!155781) (not b_lambda!155895) (not d!1395925) (not b!4525600) (not b!4526376) (not b!4525877) (not b!4526010) (not b!4525680) (not bm!315342) (not bm!315354) (not b!4526305) (not bs!862094) (not d!1395575) (not d!1395461) (not b!4525659) (not b!4526373) (not bm!315394) (not d!1395355) (not bm!315400) (not b_lambda!155871) (not b!4525440) (not b_lambda!155889) (not d!1395991) (not b!4526112) (not b!4525878) (not d!1395607) (not b!4526121) (not d!1395371) (not b!4526111) (not b!4525711) (not bs!862073) (not b!4525768) (not b!4526451) (not b!4525653) (not b_lambda!155863) (not b_lambda!155869) (not b!4526117) (not b!4525603) (not b!4525843) (not d!1395797) (not b!4525749) (not b!4525505) (not b!4525747) (not bm!315461) (not b!4525545) (not b!4525617) (not b!4525649) (not bs!862098) (not b!4525332) (not bm!315370) (not b!4526278) (not b!4525561) (not b_lambda!155627) (not b!4525870) (not b!4525774) (not b!4525641))
(check-sat)
