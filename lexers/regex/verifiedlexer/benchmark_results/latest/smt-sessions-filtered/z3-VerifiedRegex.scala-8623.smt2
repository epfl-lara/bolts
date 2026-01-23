; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!460040 () Bool)

(assert start!460040)

(declare-fun b!4604929 () Bool)

(declare-datatypes ((Unit!108921 0))(
  ( (Unit!108922) )
))
(declare-fun e!2872364 () Unit!108921)

(declare-fun Unit!108923 () Unit!108921)

(assert (=> b!4604929 (= e!2872364 Unit!108923)))

(declare-fun b!4604930 () Bool)

(declare-fun res!1926903 () Bool)

(declare-fun e!2872369 () Bool)

(assert (=> b!4604930 (=> res!1926903 e!2872369)))

(declare-datatypes ((K!12520 0))(
  ( (K!12521 (val!18287 Int)) )
))
(declare-datatypes ((V!12766 0))(
  ( (V!12767 (val!18288 Int)) )
))
(declare-datatypes ((tuple2!51842 0))(
  ( (tuple2!51843 (_1!29215 K!12520) (_2!29215 V!12766)) )
))
(declare-datatypes ((List!51276 0))(
  ( (Nil!51152) (Cons!51152 (h!57130 tuple2!51842) (t!358270 List!51276)) )
))
(declare-datatypes ((tuple2!51844 0))(
  ( (tuple2!51845 (_1!29216 (_ BitVec 64)) (_2!29216 List!51276)) )
))
(declare-datatypes ((List!51277 0))(
  ( (Nil!51153) (Cons!51153 (h!57131 tuple2!51844) (t!358271 List!51277)) )
))
(declare-datatypes ((ListLongMap!3343 0))(
  ( (ListLongMap!3344 (toList!4711 List!51277)) )
))
(declare-fun lt!1762870 () ListLongMap!3343)

(declare-fun lambda!187348 () Int)

(declare-fun forall!10652 (List!51277 Int) Bool)

(assert (=> b!4604930 (= res!1926903 (not (forall!10652 (toList!4711 lt!1762870) lambda!187348)))))

(declare-fun b!4604931 () Bool)

(declare-fun e!2872367 () Bool)

(declare-fun e!2872366 () Bool)

(assert (=> b!4604931 (= e!2872367 e!2872366)))

(declare-fun res!1926916 () Bool)

(assert (=> b!4604931 (=> (not res!1926916) (not e!2872366))))

(declare-fun lt!1762874 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4604931 (= res!1926916 (= lt!1762874 hash!344))))

(declare-datatypes ((Hashable!5747 0))(
  ( (HashableExt!5746 (__x!31450 Int)) )
))
(declare-fun hashF!1107 () Hashable!5747)

(declare-fun key!3287 () K!12520)

(declare-fun hash!3273 (Hashable!5747 K!12520) (_ BitVec 64))

(assert (=> b!4604931 (= lt!1762874 (hash!3273 hashF!1107 key!3287))))

(declare-fun b!4604932 () Bool)

(declare-fun Unit!108924 () Unit!108921)

(assert (=> b!4604932 (= e!2872364 Unit!108924)))

(declare-fun lt!1762875 () Unit!108921)

(declare-fun lm!1477 () ListLongMap!3343)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!312 (ListLongMap!3343 K!12520 Hashable!5747) Unit!108921)

(assert (=> b!4604932 (= lt!1762875 (lemmaNotInItsHashBucketThenNotInMap!312 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4604932 false))

(declare-fun b!4604933 () Bool)

(declare-fun res!1926912 () Bool)

(assert (=> b!4604933 (=> (not res!1926912) (not e!2872367))))

(declare-fun allKeysSameHashInMap!1459 (ListLongMap!3343 Hashable!5747) Bool)

(assert (=> b!4604933 (= res!1926912 (allKeysSameHashInMap!1459 lm!1477 hashF!1107))))

(declare-fun b!4604934 () Bool)

(declare-fun e!2872363 () Bool)

(assert (=> b!4604934 (= e!2872366 (not e!2872363))))

(declare-fun res!1926906 () Bool)

(assert (=> b!4604934 (=> res!1926906 e!2872363)))

(declare-fun lt!1762878 () List!51276)

(declare-fun newBucket!178 () List!51276)

(declare-fun removePairForKey!973 (List!51276 K!12520) List!51276)

(assert (=> b!4604934 (= res!1926906 (not (= newBucket!178 (removePairForKey!973 lt!1762878 key!3287))))))

(declare-fun lt!1762877 () tuple2!51844)

(declare-fun lt!1762871 () Unit!108921)

(declare-fun forallContained!2901 (List!51277 Int tuple2!51844) Unit!108921)

(assert (=> b!4604934 (= lt!1762871 (forallContained!2901 (toList!4711 lm!1477) lambda!187348 lt!1762877))))

(declare-fun contains!14135 (List!51277 tuple2!51844) Bool)

(assert (=> b!4604934 (contains!14135 (toList!4711 lm!1477) lt!1762877)))

(assert (=> b!4604934 (= lt!1762877 (tuple2!51845 hash!344 lt!1762878))))

(declare-fun lt!1762876 () Unit!108921)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!858 (List!51277 (_ BitVec 64) List!51276) Unit!108921)

(assert (=> b!4604934 (= lt!1762876 (lemmaGetValueByKeyImpliesContainsTuple!858 (toList!4711 lm!1477) hash!344 lt!1762878))))

(declare-fun apply!12085 (ListLongMap!3343 (_ BitVec 64)) List!51276)

(assert (=> b!4604934 (= lt!1762878 (apply!12085 lm!1477 hash!344))))

(declare-fun contains!14136 (ListLongMap!3343 (_ BitVec 64)) Bool)

(assert (=> b!4604934 (contains!14136 lm!1477 lt!1762874)))

(declare-fun lt!1762872 () Unit!108921)

(declare-fun lemmaInGenMapThenLongMapContainsHash!422 (ListLongMap!3343 K!12520 Hashable!5747) Unit!108921)

(assert (=> b!4604934 (= lt!1762872 (lemmaInGenMapThenLongMapContainsHash!422 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4604935 () Bool)

(declare-fun res!1926905 () Bool)

(assert (=> b!4604935 (=> (not res!1926905) (not e!2872367))))

(declare-datatypes ((ListMap!3973 0))(
  ( (ListMap!3974 (toList!4712 List!51276)) )
))
(declare-fun contains!14137 (ListMap!3973 K!12520) Bool)

(declare-fun extractMap!1408 (List!51277) ListMap!3973)

(assert (=> b!4604935 (= res!1926905 (contains!14137 (extractMap!1408 (toList!4711 lm!1477)) key!3287))))

(declare-fun b!4604936 () Bool)

(declare-fun e!2872365 () Bool)

(assert (=> b!4604936 (= e!2872363 e!2872365)))

(declare-fun res!1926909 () Bool)

(assert (=> b!4604936 (=> res!1926909 e!2872365)))

(assert (=> b!4604936 (= res!1926909 (not (contains!14136 lt!1762870 hash!344)))))

(declare-fun tail!7995 (ListLongMap!3343) ListLongMap!3343)

(assert (=> b!4604936 (= lt!1762870 (tail!7995 lm!1477))))

(declare-fun b!4604937 () Bool)

(declare-fun res!1926910 () Bool)

(assert (=> b!4604937 (=> res!1926910 e!2872363)))

(declare-fun noDuplicateKeys!1348 (List!51276) Bool)

(assert (=> b!4604937 (= res!1926910 (not (noDuplicateKeys!1348 newBucket!178)))))

(declare-fun b!4604938 () Bool)

(declare-fun res!1926911 () Bool)

(assert (=> b!4604938 (=> res!1926911 e!2872363)))

(get-info :version)

(assert (=> b!4604938 (= res!1926911 (or ((_ is Nil!51153) (toList!4711 lm!1477)) (= (_1!29216 (h!57131 (toList!4711 lm!1477))) hash!344)))))

(declare-fun b!4604939 () Bool)

(declare-fun res!1926904 () Bool)

(assert (=> b!4604939 (=> (not res!1926904) (not e!2872366))))

(declare-fun allKeysSameHash!1204 (List!51276 (_ BitVec 64) Hashable!5747) Bool)

(assert (=> b!4604939 (= res!1926904 (allKeysSameHash!1204 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1926907 () Bool)

(assert (=> start!460040 (=> (not res!1926907) (not e!2872367))))

(assert (=> start!460040 (= res!1926907 (forall!10652 (toList!4711 lm!1477) lambda!187348))))

(assert (=> start!460040 e!2872367))

(assert (=> start!460040 true))

(declare-fun e!2872370 () Bool)

(declare-fun inv!66704 (ListLongMap!3343) Bool)

(assert (=> start!460040 (and (inv!66704 lm!1477) e!2872370)))

(declare-fun tp_is_empty!28685 () Bool)

(assert (=> start!460040 tp_is_empty!28685))

(declare-fun e!2872368 () Bool)

(assert (=> start!460040 e!2872368))

(declare-fun b!4604940 () Bool)

(declare-fun tp!1340763 () Bool)

(assert (=> b!4604940 (= e!2872370 tp!1340763)))

(declare-fun b!4604941 () Bool)

(declare-fun res!1926915 () Bool)

(assert (=> b!4604941 (=> res!1926915 e!2872365)))

(assert (=> b!4604941 (= res!1926915 (not (contains!14135 (t!358271 (toList!4711 lm!1477)) lt!1762877)))))

(declare-fun b!4604942 () Bool)

(declare-fun res!1926913 () Bool)

(assert (=> b!4604942 (=> res!1926913 e!2872365)))

(assert (=> b!4604942 (= res!1926913 (not (= (apply!12085 lt!1762870 hash!344) lt!1762878)))))

(declare-fun b!4604943 () Bool)

(assert (=> b!4604943 (= e!2872369 (contains!14136 lt!1762870 lt!1762874))))

(declare-fun b!4604944 () Bool)

(assert (=> b!4604944 (= e!2872365 e!2872369)))

(declare-fun res!1926914 () Bool)

(assert (=> b!4604944 (=> res!1926914 e!2872369)))

(declare-fun lt!1762879 () Bool)

(assert (=> b!4604944 (= res!1926914 lt!1762879)))

(declare-fun lt!1762873 () Unit!108921)

(assert (=> b!4604944 (= lt!1762873 e!2872364)))

(declare-fun c!788866 () Bool)

(assert (=> b!4604944 (= c!788866 lt!1762879)))

(declare-fun containsKey!2212 (List!51276 K!12520) Bool)

(assert (=> b!4604944 (= lt!1762879 (not (containsKey!2212 lt!1762878 key!3287)))))

(declare-fun tp_is_empty!28687 () Bool)

(declare-fun b!4604945 () Bool)

(declare-fun tp!1340762 () Bool)

(assert (=> b!4604945 (= e!2872368 (and tp_is_empty!28685 tp_is_empty!28687 tp!1340762))))

(declare-fun b!4604946 () Bool)

(declare-fun res!1926908 () Bool)

(assert (=> b!4604946 (=> res!1926908 e!2872369)))

(assert (=> b!4604946 (= res!1926908 (not (allKeysSameHashInMap!1459 lt!1762870 hashF!1107)))))

(assert (= (and start!460040 res!1926907) b!4604933))

(assert (= (and b!4604933 res!1926912) b!4604935))

(assert (= (and b!4604935 res!1926905) b!4604931))

(assert (= (and b!4604931 res!1926916) b!4604939))

(assert (= (and b!4604939 res!1926904) b!4604934))

(assert (= (and b!4604934 (not res!1926906)) b!4604937))

(assert (= (and b!4604937 (not res!1926910)) b!4604938))

(assert (= (and b!4604938 (not res!1926911)) b!4604936))

(assert (= (and b!4604936 (not res!1926909)) b!4604942))

(assert (= (and b!4604942 (not res!1926913)) b!4604941))

(assert (= (and b!4604941 (not res!1926915)) b!4604944))

(assert (= (and b!4604944 c!788866) b!4604932))

(assert (= (and b!4604944 (not c!788866)) b!4604929))

(assert (= (and b!4604944 (not res!1926914)) b!4604930))

(assert (= (and b!4604930 (not res!1926903)) b!4604946))

(assert (= (and b!4604946 (not res!1926908)) b!4604943))

(assert (= start!460040 b!4604940))

(assert (= (and start!460040 ((_ is Cons!51152) newBucket!178)) b!4604945))

(declare-fun m!5434213 () Bool)

(assert (=> b!4604935 m!5434213))

(assert (=> b!4604935 m!5434213))

(declare-fun m!5434215 () Bool)

(assert (=> b!4604935 m!5434215))

(declare-fun m!5434217 () Bool)

(assert (=> b!4604936 m!5434217))

(declare-fun m!5434219 () Bool)

(assert (=> b!4604936 m!5434219))

(declare-fun m!5434221 () Bool)

(assert (=> b!4604942 m!5434221))

(declare-fun m!5434223 () Bool)

(assert (=> b!4604931 m!5434223))

(declare-fun m!5434225 () Bool)

(assert (=> b!4604934 m!5434225))

(declare-fun m!5434227 () Bool)

(assert (=> b!4604934 m!5434227))

(declare-fun m!5434229 () Bool)

(assert (=> b!4604934 m!5434229))

(declare-fun m!5434231 () Bool)

(assert (=> b!4604934 m!5434231))

(declare-fun m!5434233 () Bool)

(assert (=> b!4604934 m!5434233))

(declare-fun m!5434235 () Bool)

(assert (=> b!4604934 m!5434235))

(declare-fun m!5434237 () Bool)

(assert (=> b!4604934 m!5434237))

(declare-fun m!5434239 () Bool)

(assert (=> b!4604943 m!5434239))

(declare-fun m!5434241 () Bool)

(assert (=> b!4604932 m!5434241))

(declare-fun m!5434243 () Bool)

(assert (=> b!4604939 m!5434243))

(declare-fun m!5434245 () Bool)

(assert (=> start!460040 m!5434245))

(declare-fun m!5434247 () Bool)

(assert (=> start!460040 m!5434247))

(declare-fun m!5434249 () Bool)

(assert (=> b!4604946 m!5434249))

(declare-fun m!5434251 () Bool)

(assert (=> b!4604941 m!5434251))

(declare-fun m!5434253 () Bool)

(assert (=> b!4604944 m!5434253))

(declare-fun m!5434255 () Bool)

(assert (=> b!4604930 m!5434255))

(declare-fun m!5434257 () Bool)

(assert (=> b!4604937 m!5434257))

(declare-fun m!5434259 () Bool)

(assert (=> b!4604933 m!5434259))

(check-sat tp_is_empty!28687 (not b!4604930) (not b!4604931) (not b!4604942) (not b!4604941) (not b!4604935) (not b!4604936) (not start!460040) (not b!4604944) (not b!4604934) (not b!4604939) (not b!4604943) tp_is_empty!28685 (not b!4604937) (not b!4604932) (not b!4604946) (not b!4604945) (not b!4604933) (not b!4604940))
(check-sat)
