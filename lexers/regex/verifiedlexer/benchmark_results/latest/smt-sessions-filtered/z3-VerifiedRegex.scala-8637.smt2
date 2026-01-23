; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461148 () Bool)

(assert start!461148)

(declare-fun bs!1016125 () Bool)

(declare-fun b!4610641 () Bool)

(assert (= bs!1016125 (and b!4610641 start!461148)))

(declare-fun lambda!188471 () Int)

(declare-fun lambda!188470 () Int)

(assert (=> bs!1016125 (not (= lambda!188471 lambda!188470))))

(assert (=> b!4610641 true))

(assert (=> b!4610641 true))

(assert (=> b!4610641 true))

(declare-fun e!2876082 () Bool)

(declare-fun tp!1341099 () Bool)

(declare-fun tp_is_empty!28797 () Bool)

(declare-fun tp_is_empty!28799 () Bool)

(declare-fun b!4610622 () Bool)

(assert (=> b!4610622 (= e!2876082 (and tp_is_empty!28797 tp_is_empty!28799 tp!1341099))))

(declare-fun b!4610623 () Bool)

(declare-fun e!2876075 () Bool)

(declare-fun tp!1341098 () Bool)

(assert (=> b!4610623 (= e!2876075 tp!1341098)))

(declare-fun b!4610624 () Bool)

(declare-fun e!2876068 () Bool)

(declare-fun e!2876084 () Bool)

(assert (=> b!4610624 (= e!2876068 e!2876084)))

(declare-fun res!1930367 () Bool)

(assert (=> b!4610624 (=> res!1930367 e!2876084)))

(declare-datatypes ((K!12590 0))(
  ( (K!12591 (val!18343 Int)) )
))
(declare-datatypes ((V!12836 0))(
  ( (V!12837 (val!18344 Int)) )
))
(declare-datatypes ((tuple2!51954 0))(
  ( (tuple2!51955 (_1!29271 K!12590) (_2!29271 V!12836)) )
))
(declare-datatypes ((List!51347 0))(
  ( (Nil!51223) (Cons!51223 (h!57217 tuple2!51954) (t!358341 List!51347)) )
))
(declare-datatypes ((ListMap!4029 0))(
  ( (ListMap!4030 (toList!4767 List!51347)) )
))
(declare-fun lt!1767066 () ListMap!4029)

(declare-fun lt!1767087 () ListMap!4029)

(declare-fun eq!749 (ListMap!4029 ListMap!4029) Bool)

(assert (=> b!4610624 (= res!1930367 (not (eq!749 lt!1767066 lt!1767087)))))

(declare-fun lt!1767068 () ListMap!4029)

(assert (=> b!4610624 (eq!749 lt!1767068 lt!1767087)))

(declare-datatypes ((tuple2!51956 0))(
  ( (tuple2!51957 (_1!29272 (_ BitVec 64)) (_2!29272 List!51347)) )
))
(declare-fun lt!1767070 () tuple2!51956)

(declare-fun lt!1767097 () ListMap!4029)

(declare-fun addToMapMapFromBucket!846 (List!51347 ListMap!4029) ListMap!4029)

(assert (=> b!4610624 (= lt!1767087 (addToMapMapFromBucket!846 (_2!29272 lt!1767070) lt!1767097))))

(declare-fun lt!1767080 () ListMap!4029)

(declare-datatypes ((Unit!109417 0))(
  ( (Unit!109418) )
))
(declare-fun lt!1767085 () Unit!109417)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!108 (ListMap!4029 ListMap!4029 List!51347) Unit!109417)

(assert (=> b!4610624 (= lt!1767085 (lemmaAddToMapFromBucketPreservesEquivalence!108 lt!1767080 lt!1767097 (_2!29272 lt!1767070)))))

(declare-fun b!4610625 () Bool)

(declare-fun res!1930375 () Bool)

(declare-fun e!2876069 () Bool)

(assert (=> b!4610625 (=> res!1930375 e!2876069)))

(declare-fun lt!1767082 () ListMap!4029)

(assert (=> b!4610625 (= res!1930375 (not (eq!749 lt!1767066 lt!1767082)))))

(declare-fun b!4610626 () Bool)

(declare-fun res!1930369 () Bool)

(declare-fun e!2876083 () Bool)

(assert (=> b!4610626 (=> res!1930369 e!2876083)))

(declare-datatypes ((List!51348 0))(
  ( (Nil!51224) (Cons!51224 (h!57218 tuple2!51956) (t!358342 List!51348)) )
))
(declare-datatypes ((ListLongMap!3399 0))(
  ( (ListLongMap!3400 (toList!4768 List!51348)) )
))
(declare-fun lm!1477 () ListLongMap!3399)

(declare-fun lt!1767075 () tuple2!51956)

(declare-fun contains!14238 (List!51348 tuple2!51956) Bool)

(assert (=> b!4610626 (= res!1930369 (not (contains!14238 (t!358342 (toList!4768 lm!1477)) lt!1767075)))))

(declare-fun b!4610627 () Bool)

(declare-fun e!2876079 () Bool)

(assert (=> b!4610627 (= e!2876079 e!2876069)))

(declare-fun res!1930368 () Bool)

(assert (=> b!4610627 (=> res!1930368 e!2876069)))

(assert (=> b!4610627 (= res!1930368 (not (eq!749 lt!1767087 lt!1767082)))))

(declare-fun lt!1767076 () ListMap!4029)

(declare-fun key!3287 () K!12590)

(declare-fun -!518 (ListMap!4029 K!12590) ListMap!4029)

(assert (=> b!4610627 (= lt!1767082 (-!518 lt!1767076 key!3287))))

(declare-fun res!1930380 () Bool)

(declare-fun e!2876080 () Bool)

(assert (=> start!461148 (=> (not res!1930380) (not e!2876080))))

(declare-fun forall!10700 (List!51348 Int) Bool)

(assert (=> start!461148 (= res!1930380 (forall!10700 (toList!4768 lm!1477) lambda!188470))))

(assert (=> start!461148 e!2876080))

(assert (=> start!461148 true))

(declare-fun inv!66774 (ListLongMap!3399) Bool)

(assert (=> start!461148 (and (inv!66774 lm!1477) e!2876075)))

(assert (=> start!461148 tp_is_empty!28797))

(assert (=> start!461148 e!2876082))

(declare-fun b!4610628 () Bool)

(declare-fun res!1930379 () Bool)

(assert (=> b!4610628 (=> res!1930379 e!2876083)))

(declare-fun lt!1767094 () List!51347)

(declare-fun lt!1767089 () ListLongMap!3399)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!12113 (ListLongMap!3399 (_ BitVec 64)) List!51347)

(assert (=> b!4610628 (= res!1930379 (not (= (apply!12113 lt!1767089 hash!344) lt!1767094)))))

(declare-fun b!4610629 () Bool)

(declare-fun res!1930381 () Bool)

(declare-fun e!2876066 () Bool)

(assert (=> b!4610629 (=> res!1930381 e!2876066)))

(declare-fun lt!1767090 () ListLongMap!3399)

(declare-fun head!9564 (ListLongMap!3399) tuple2!51956)

(assert (=> b!4610629 (= res!1930381 (not (= (head!9564 lt!1767090) lt!1767070)))))

(declare-fun b!4610630 () Bool)

(assert (=> b!4610630 (= e!2876066 e!2876068)))

(declare-fun res!1930357 () Bool)

(assert (=> b!4610630 (=> res!1930357 e!2876068)))

(assert (=> b!4610630 (= res!1930357 (not (eq!749 lt!1767066 lt!1767068)))))

(assert (=> b!4610630 (= lt!1767068 (addToMapMapFromBucket!846 (_2!29272 lt!1767070) lt!1767080))))

(declare-fun extractMap!1436 (List!51348) ListMap!4029)

(assert (=> b!4610630 (= lt!1767066 (extractMap!1436 (toList!4768 lt!1767090)))))

(declare-fun b!4610631 () Bool)

(assert (=> b!4610631 (= e!2876069 true)))

(declare-fun lt!1767093 () Bool)

(declare-fun lt!1767091 () ListLongMap!3399)

(assert (=> b!4610631 (= lt!1767093 (eq!749 (extractMap!1436 (toList!4768 lt!1767091)) lt!1767082))))

(declare-fun b!4610632 () Bool)

(declare-fun res!1930378 () Bool)

(declare-fun e!2876072 () Bool)

(assert (=> b!4610632 (=> res!1930378 e!2876072)))

(declare-fun newBucket!178 () List!51347)

(declare-fun noDuplicateKeys!1376 (List!51347) Bool)

(assert (=> b!4610632 (= res!1930378 (not (noDuplicateKeys!1376 newBucket!178)))))

(declare-fun b!4610633 () Bool)

(declare-fun res!1930382 () Bool)

(assert (=> b!4610633 (=> res!1930382 e!2876069)))

(declare-fun lt!1767072 () ListMap!4029)

(assert (=> b!4610633 (= res!1930382 (not (eq!749 lt!1767066 (-!518 lt!1767072 key!3287))))))

(declare-fun b!4610634 () Bool)

(declare-fun res!1930366 () Bool)

(declare-fun e!2876070 () Bool)

(assert (=> b!4610634 (=> (not res!1930366) (not e!2876070))))

(declare-datatypes ((Hashable!5775 0))(
  ( (HashableExt!5774 (__x!31478 Int)) )
))
(declare-fun hashF!1107 () Hashable!5775)

(declare-fun allKeysSameHash!1232 (List!51347 (_ BitVec 64) Hashable!5775) Bool)

(assert (=> b!4610634 (= res!1930366 (allKeysSameHash!1232 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4610635 () Bool)

(declare-fun e!2876073 () Bool)

(declare-fun e!2876074 () Bool)

(assert (=> b!4610635 (= e!2876073 e!2876074)))

(declare-fun res!1930359 () Bool)

(assert (=> b!4610635 (=> res!1930359 e!2876074)))

(declare-fun contains!14239 (ListMap!4029 K!12590) Bool)

(assert (=> b!4610635 (= res!1930359 (not (contains!14239 (extractMap!1436 (t!358342 (toList!4768 lm!1477))) key!3287)))))

(declare-fun lt!1767077 () ListMap!4029)

(assert (=> b!4610635 (contains!14239 lt!1767077 key!3287)))

(assert (=> b!4610635 (= lt!1767077 (extractMap!1436 (toList!4768 lt!1767089)))))

(declare-fun lt!1767092 () Unit!109417)

(declare-fun lemmaListContainsThenExtractedMapContains!288 (ListLongMap!3399 K!12590 Hashable!5775) Unit!109417)

(assert (=> b!4610635 (= lt!1767092 (lemmaListContainsThenExtractedMapContains!288 lt!1767089 key!3287 hashF!1107))))

(declare-fun b!4610636 () Bool)

(declare-fun e!2876076 () Bool)

(assert (=> b!4610636 (= e!2876084 e!2876076)))

(declare-fun res!1930362 () Bool)

(assert (=> b!4610636 (=> res!1930362 e!2876076)))

(assert (=> b!4610636 (= res!1930362 (not (noDuplicateKeys!1376 (_2!29272 lt!1767070))))))

(declare-fun lt!1767069 () Unit!109417)

(declare-fun forallContained!2946 (List!51348 Int tuple2!51956) Unit!109417)

(assert (=> b!4610636 (= lt!1767069 (forallContained!2946 (toList!4768 lm!1477) lambda!188470 (h!57218 (toList!4768 lm!1477))))))

(declare-fun b!4610637 () Bool)

(declare-fun e!2876067 () Bool)

(assert (=> b!4610637 (= e!2876083 e!2876067)))

(declare-fun res!1930373 () Bool)

(assert (=> b!4610637 (=> res!1930373 e!2876067)))

(declare-fun lt!1767073 () Bool)

(assert (=> b!4610637 (= res!1930373 lt!1767073)))

(declare-fun lt!1767086 () Unit!109417)

(declare-fun e!2876071 () Unit!109417)

(assert (=> b!4610637 (= lt!1767086 e!2876071)))

(declare-fun c!789738 () Bool)

(assert (=> b!4610637 (= c!789738 lt!1767073)))

(declare-fun containsKey!2270 (List!51347 K!12590) Bool)

(assert (=> b!4610637 (= lt!1767073 (not (containsKey!2270 lt!1767094 key!3287)))))

(declare-fun b!4610638 () Bool)

(declare-fun e!2876077 () Bool)

(assert (=> b!4610638 (= e!2876077 e!2876079)))

(declare-fun res!1930356 () Bool)

(assert (=> b!4610638 (=> res!1930356 e!2876079)))

(declare-fun lt!1767088 () ListMap!4029)

(assert (=> b!4610638 (= res!1930356 (not (eq!749 lt!1767087 lt!1767088)))))

(assert (=> b!4610638 (= lt!1767087 lt!1767088)))

(assert (=> b!4610638 (= lt!1767088 (-!518 (addToMapMapFromBucket!846 (_2!29272 lt!1767070) lt!1767077) key!3287))))

(declare-fun lt!1767078 () Unit!109417)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!46 (ListMap!4029 K!12590 List!51347) Unit!109417)

(assert (=> b!4610638 (= lt!1767078 (lemmaAddToMapFromBucketMinusKeyIsCommutative!46 lt!1767077 key!3287 (_2!29272 lt!1767070)))))

(declare-fun b!4610639 () Bool)

(assert (=> b!4610639 (= e!2876076 e!2876077)))

(declare-fun res!1930377 () Bool)

(assert (=> b!4610639 (=> res!1930377 e!2876077)))

(declare-fun lt!1767095 () Bool)

(assert (=> b!4610639 (= res!1930377 lt!1767095)))

(declare-fun lt!1767098 () Unit!109417)

(declare-fun e!2876078 () Unit!109417)

(assert (=> b!4610639 (= lt!1767098 e!2876078)))

(declare-fun c!789737 () Bool)

(assert (=> b!4610639 (= c!789737 lt!1767095)))

(assert (=> b!4610639 (= lt!1767095 (containsKey!2270 (_2!29272 lt!1767070) key!3287))))

(declare-fun b!4610640 () Bool)

(assert (=> b!4610640 (= e!2876067 e!2876073)))

(declare-fun res!1930364 () Bool)

(assert (=> b!4610640 (=> res!1930364 e!2876073)))

(declare-fun containsKeyBiggerList!316 (List!51348 K!12590) Bool)

(assert (=> b!4610640 (= res!1930364 (not (containsKeyBiggerList!316 (t!358342 (toList!4768 lm!1477)) key!3287)))))

(assert (=> b!4610640 (containsKeyBiggerList!316 (toList!4768 lt!1767089) key!3287)))

(declare-fun lt!1767099 () Unit!109417)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!186 (ListLongMap!3399 K!12590 Hashable!5775) Unit!109417)

(assert (=> b!4610640 (= lt!1767099 (lemmaInLongMapThenContainsKeyBiggerList!186 lt!1767089 key!3287 hashF!1107))))

(declare-fun Unit!109419 () Unit!109417)

(assert (=> b!4610641 (= e!2876078 Unit!109419)))

(assert (=> b!4610641 (not (= hash!344 (_1!29272 lt!1767070)))))

(declare-datatypes ((Option!11452 0))(
  ( (None!11451) (Some!11451 (v!45517 tuple2!51954)) )
))
(declare-fun lt!1767071 () Option!11452)

(declare-fun getPair!244 (List!51347 K!12590) Option!11452)

(assert (=> b!4610641 (= lt!1767071 (getPair!244 (_2!29272 lt!1767070) key!3287))))

(declare-fun lt!1767067 () Unit!109417)

(assert (=> b!4610641 (= lt!1767067 (forallContained!2946 (toList!4768 lm!1477) lambda!188471 (h!57218 (toList!4768 lm!1477))))))

(declare-fun lambda!188472 () Int)

(declare-fun lt!1767081 () Unit!109417)

(declare-fun forallContained!2947 (List!51347 Int tuple2!51954) Unit!109417)

(declare-fun get!16950 (Option!11452) tuple2!51954)

(assert (=> b!4610641 (= lt!1767081 (forallContained!2947 (_2!29272 (h!57218 (toList!4768 lm!1477))) lambda!188472 (tuple2!51955 key!3287 (_2!29271 (get!16950 lt!1767071)))))))

(assert (=> b!4610641 false))

(declare-fun b!4610642 () Bool)

(assert (=> b!4610642 (= e!2876072 e!2876083)))

(declare-fun res!1930374 () Bool)

(assert (=> b!4610642 (=> res!1930374 e!2876083)))

(declare-fun contains!14240 (ListLongMap!3399 (_ BitVec 64)) Bool)

(assert (=> b!4610642 (= res!1930374 (not (contains!14240 lt!1767089 hash!344)))))

(declare-fun tail!8037 (ListLongMap!3399) ListLongMap!3399)

(assert (=> b!4610642 (= lt!1767089 (tail!8037 lm!1477))))

(declare-fun b!4610643 () Bool)

(declare-fun e!2876065 () Bool)

(assert (=> b!4610643 (= e!2876080 e!2876065)))

(declare-fun res!1930372 () Bool)

(assert (=> b!4610643 (=> (not res!1930372) (not e!2876065))))

(assert (=> b!4610643 (= res!1930372 (contains!14239 lt!1767076 key!3287))))

(assert (=> b!4610643 (= lt!1767076 (extractMap!1436 (toList!4768 lm!1477)))))

(declare-fun b!4610644 () Bool)

(declare-fun res!1930360 () Bool)

(declare-fun e!2876081 () Bool)

(assert (=> b!4610644 (=> res!1930360 e!2876081)))

(assert (=> b!4610644 (= res!1930360 (not (eq!749 lt!1767076 lt!1767072)))))

(declare-fun b!4610645 () Bool)

(assert (=> b!4610645 (= e!2876081 e!2876066)))

(declare-fun res!1930358 () Bool)

(assert (=> b!4610645 (=> res!1930358 e!2876066)))

(assert (=> b!4610645 (= res!1930358 (not (= lt!1767090 lt!1767091)))))

(declare-fun lt!1767101 () tuple2!51956)

(declare-fun +!1788 (ListLongMap!3399 tuple2!51956) ListLongMap!3399)

(assert (=> b!4610645 (= lt!1767091 (+!1788 lm!1477 lt!1767101))))

(declare-fun lt!1767084 () ListLongMap!3399)

(assert (=> b!4610645 (= lt!1767090 (+!1788 lt!1767084 lt!1767070))))

(declare-fun b!4610646 () Bool)

(declare-fun res!1930371 () Bool)

(assert (=> b!4610646 (=> res!1930371 e!2876081)))

(assert (=> b!4610646 (= res!1930371 (bvsge (_1!29272 lt!1767070) hash!344))))

(declare-fun b!4610647 () Bool)

(assert (=> b!4610647 (= e!2876070 (not e!2876072))))

(declare-fun res!1930370 () Bool)

(assert (=> b!4610647 (=> res!1930370 e!2876072)))

(declare-fun removePairForKey!1001 (List!51347 K!12590) List!51347)

(assert (=> b!4610647 (= res!1930370 (not (= newBucket!178 (removePairForKey!1001 lt!1767094 key!3287))))))

(declare-fun lt!1767083 () Unit!109417)

(assert (=> b!4610647 (= lt!1767083 (forallContained!2946 (toList!4768 lm!1477) lambda!188470 lt!1767075))))

(assert (=> b!4610647 (contains!14238 (toList!4768 lm!1477) lt!1767075)))

(assert (=> b!4610647 (= lt!1767075 (tuple2!51957 hash!344 lt!1767094))))

(declare-fun lt!1767065 () Unit!109417)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!886 (List!51348 (_ BitVec 64) List!51347) Unit!109417)

(assert (=> b!4610647 (= lt!1767065 (lemmaGetValueByKeyImpliesContainsTuple!886 (toList!4768 lm!1477) hash!344 lt!1767094))))

(assert (=> b!4610647 (= lt!1767094 (apply!12113 lm!1477 hash!344))))

(declare-fun lt!1767074 () (_ BitVec 64))

(assert (=> b!4610647 (contains!14240 lm!1477 lt!1767074)))

(declare-fun lt!1767096 () Unit!109417)

(declare-fun lemmaInGenMapThenLongMapContainsHash!450 (ListLongMap!3399 K!12590 Hashable!5775) Unit!109417)

(assert (=> b!4610647 (= lt!1767096 (lemmaInGenMapThenLongMapContainsHash!450 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4610648 () Bool)

(declare-fun res!1930365 () Bool)

(assert (=> b!4610648 (=> res!1930365 e!2876072)))

(get-info :version)

(assert (=> b!4610648 (= res!1930365 (or ((_ is Nil!51224) (toList!4768 lm!1477)) (= (_1!29272 (h!57218 (toList!4768 lm!1477))) hash!344)))))

(declare-fun b!4610649 () Bool)

(assert (=> b!4610649 (= e!2876074 e!2876081)))

(declare-fun res!1930361 () Bool)

(assert (=> b!4610649 (=> res!1930361 e!2876081)))

(assert (=> b!4610649 (= res!1930361 (not (eq!749 lt!1767072 lt!1767076)))))

(assert (=> b!4610649 (= lt!1767072 (extractMap!1436 (toList!4768 (+!1788 lt!1767089 lt!1767070))))))

(assert (=> b!4610649 (= lt!1767070 (head!9564 lm!1477))))

(assert (=> b!4610649 (eq!749 lt!1767080 lt!1767097)))

(assert (=> b!4610649 (= lt!1767097 (-!518 lt!1767077 key!3287))))

(assert (=> b!4610649 (= lt!1767080 (extractMap!1436 (toList!4768 lt!1767084)))))

(assert (=> b!4610649 (= lt!1767084 (+!1788 lt!1767089 lt!1767101))))

(assert (=> b!4610649 (= lt!1767101 (tuple2!51957 hash!344 newBucket!178))))

(declare-fun lt!1767079 () Unit!109417)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!233 (ListLongMap!3399 (_ BitVec 64) List!51347 K!12590 Hashable!5775) Unit!109417)

(assert (=> b!4610649 (= lt!1767079 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!233 lt!1767089 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4610650 () Bool)

(declare-fun res!1930376 () Bool)

(assert (=> b!4610650 (=> (not res!1930376) (not e!2876080))))

(declare-fun allKeysSameHashInMap!1487 (ListLongMap!3399 Hashable!5775) Bool)

(assert (=> b!4610650 (= res!1930376 (allKeysSameHashInMap!1487 lm!1477 hashF!1107))))

(declare-fun b!4610651 () Bool)

(assert (=> b!4610651 (= e!2876065 e!2876070)))

(declare-fun res!1930363 () Bool)

(assert (=> b!4610651 (=> (not res!1930363) (not e!2876070))))

(assert (=> b!4610651 (= res!1930363 (= lt!1767074 hash!344))))

(declare-fun hash!3319 (Hashable!5775 K!12590) (_ BitVec 64))

(assert (=> b!4610651 (= lt!1767074 (hash!3319 hashF!1107 key!3287))))

(declare-fun b!4610652 () Bool)

(declare-fun Unit!109420 () Unit!109417)

(assert (=> b!4610652 (= e!2876078 Unit!109420)))

(declare-fun b!4610653 () Bool)

(declare-fun Unit!109421 () Unit!109417)

(assert (=> b!4610653 (= e!2876071 Unit!109421)))

(declare-fun lt!1767100 () Unit!109417)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!340 (ListLongMap!3399 K!12590 Hashable!5775) Unit!109417)

(assert (=> b!4610653 (= lt!1767100 (lemmaNotInItsHashBucketThenNotInMap!340 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4610653 false))

(declare-fun b!4610654 () Bool)

(declare-fun Unit!109422 () Unit!109417)

(assert (=> b!4610654 (= e!2876071 Unit!109422)))

(assert (= (and start!461148 res!1930380) b!4610650))

(assert (= (and b!4610650 res!1930376) b!4610643))

(assert (= (and b!4610643 res!1930372) b!4610651))

(assert (= (and b!4610651 res!1930363) b!4610634))

(assert (= (and b!4610634 res!1930366) b!4610647))

(assert (= (and b!4610647 (not res!1930370)) b!4610632))

(assert (= (and b!4610632 (not res!1930378)) b!4610648))

(assert (= (and b!4610648 (not res!1930365)) b!4610642))

(assert (= (and b!4610642 (not res!1930374)) b!4610628))

(assert (= (and b!4610628 (not res!1930379)) b!4610626))

(assert (= (and b!4610626 (not res!1930369)) b!4610637))

(assert (= (and b!4610637 c!789738) b!4610653))

(assert (= (and b!4610637 (not c!789738)) b!4610654))

(assert (= (and b!4610637 (not res!1930373)) b!4610640))

(assert (= (and b!4610640 (not res!1930364)) b!4610635))

(assert (= (and b!4610635 (not res!1930359)) b!4610649))

(assert (= (and b!4610649 (not res!1930361)) b!4610644))

(assert (= (and b!4610644 (not res!1930360)) b!4610646))

(assert (= (and b!4610646 (not res!1930371)) b!4610645))

(assert (= (and b!4610645 (not res!1930358)) b!4610629))

(assert (= (and b!4610629 (not res!1930381)) b!4610630))

(assert (= (and b!4610630 (not res!1930357)) b!4610624))

(assert (= (and b!4610624 (not res!1930367)) b!4610636))

(assert (= (and b!4610636 (not res!1930362)) b!4610639))

(assert (= (and b!4610639 c!789737) b!4610641))

(assert (= (and b!4610639 (not c!789737)) b!4610652))

(assert (= (and b!4610639 (not res!1930377)) b!4610638))

(assert (= (and b!4610638 (not res!1930356)) b!4610627))

(assert (= (and b!4610627 (not res!1930368)) b!4610625))

(assert (= (and b!4610625 (not res!1930375)) b!4610633))

(assert (= (and b!4610633 (not res!1930382)) b!4610631))

(assert (= start!461148 b!4610623))

(assert (= (and start!461148 ((_ is Cons!51223) newBucket!178)) b!4610622))

(declare-fun m!5442193 () Bool)

(assert (=> b!4610641 m!5442193))

(declare-fun m!5442195 () Bool)

(assert (=> b!4610641 m!5442195))

(declare-fun m!5442197 () Bool)

(assert (=> b!4610641 m!5442197))

(declare-fun m!5442199 () Bool)

(assert (=> b!4610641 m!5442199))

(declare-fun m!5442201 () Bool)

(assert (=> b!4610625 m!5442201))

(declare-fun m!5442203 () Bool)

(assert (=> b!4610640 m!5442203))

(declare-fun m!5442205 () Bool)

(assert (=> b!4610640 m!5442205))

(declare-fun m!5442207 () Bool)

(assert (=> b!4610640 m!5442207))

(declare-fun m!5442209 () Bool)

(assert (=> b!4610645 m!5442209))

(declare-fun m!5442211 () Bool)

(assert (=> b!4610645 m!5442211))

(declare-fun m!5442213 () Bool)

(assert (=> b!4610624 m!5442213))

(declare-fun m!5442215 () Bool)

(assert (=> b!4610624 m!5442215))

(declare-fun m!5442217 () Bool)

(assert (=> b!4610624 m!5442217))

(declare-fun m!5442219 () Bool)

(assert (=> b!4610624 m!5442219))

(declare-fun m!5442221 () Bool)

(assert (=> b!4610634 m!5442221))

(declare-fun m!5442223 () Bool)

(assert (=> b!4610642 m!5442223))

(declare-fun m!5442225 () Bool)

(assert (=> b!4610642 m!5442225))

(declare-fun m!5442227 () Bool)

(assert (=> b!4610627 m!5442227))

(declare-fun m!5442229 () Bool)

(assert (=> b!4610627 m!5442229))

(declare-fun m!5442231 () Bool)

(assert (=> b!4610644 m!5442231))

(declare-fun m!5442233 () Bool)

(assert (=> b!4610638 m!5442233))

(declare-fun m!5442235 () Bool)

(assert (=> b!4610638 m!5442235))

(assert (=> b!4610638 m!5442235))

(declare-fun m!5442237 () Bool)

(assert (=> b!4610638 m!5442237))

(declare-fun m!5442239 () Bool)

(assert (=> b!4610638 m!5442239))

(declare-fun m!5442241 () Bool)

(assert (=> b!4610637 m!5442241))

(declare-fun m!5442243 () Bool)

(assert (=> b!4610626 m!5442243))

(declare-fun m!5442245 () Bool)

(assert (=> b!4610631 m!5442245))

(assert (=> b!4610631 m!5442245))

(declare-fun m!5442247 () Bool)

(assert (=> b!4610631 m!5442247))

(declare-fun m!5442249 () Bool)

(assert (=> b!4610629 m!5442249))

(declare-fun m!5442251 () Bool)

(assert (=> b!4610639 m!5442251))

(declare-fun m!5442253 () Bool)

(assert (=> b!4610647 m!5442253))

(declare-fun m!5442255 () Bool)

(assert (=> b!4610647 m!5442255))

(declare-fun m!5442257 () Bool)

(assert (=> b!4610647 m!5442257))

(declare-fun m!5442259 () Bool)

(assert (=> b!4610647 m!5442259))

(declare-fun m!5442261 () Bool)

(assert (=> b!4610647 m!5442261))

(declare-fun m!5442263 () Bool)

(assert (=> b!4610647 m!5442263))

(declare-fun m!5442265 () Bool)

(assert (=> b!4610647 m!5442265))

(declare-fun m!5442267 () Bool)

(assert (=> b!4610632 m!5442267))

(declare-fun m!5442269 () Bool)

(assert (=> b!4610636 m!5442269))

(declare-fun m!5442271 () Bool)

(assert (=> b!4610636 m!5442271))

(declare-fun m!5442273 () Bool)

(assert (=> b!4610630 m!5442273))

(declare-fun m!5442275 () Bool)

(assert (=> b!4610630 m!5442275))

(declare-fun m!5442277 () Bool)

(assert (=> b!4610630 m!5442277))

(declare-fun m!5442279 () Bool)

(assert (=> b!4610653 m!5442279))

(declare-fun m!5442281 () Bool)

(assert (=> b!4610649 m!5442281))

(declare-fun m!5442283 () Bool)

(assert (=> b!4610649 m!5442283))

(declare-fun m!5442285 () Bool)

(assert (=> b!4610649 m!5442285))

(declare-fun m!5442287 () Bool)

(assert (=> b!4610649 m!5442287))

(declare-fun m!5442289 () Bool)

(assert (=> b!4610649 m!5442289))

(declare-fun m!5442291 () Bool)

(assert (=> b!4610649 m!5442291))

(declare-fun m!5442293 () Bool)

(assert (=> b!4610649 m!5442293))

(declare-fun m!5442295 () Bool)

(assert (=> b!4610649 m!5442295))

(declare-fun m!5442297 () Bool)

(assert (=> b!4610649 m!5442297))

(declare-fun m!5442299 () Bool)

(assert (=> b!4610643 m!5442299))

(declare-fun m!5442301 () Bool)

(assert (=> b!4610643 m!5442301))

(declare-fun m!5442303 () Bool)

(assert (=> b!4610635 m!5442303))

(declare-fun m!5442305 () Bool)

(assert (=> b!4610635 m!5442305))

(declare-fun m!5442307 () Bool)

(assert (=> b!4610635 m!5442307))

(declare-fun m!5442309 () Bool)

(assert (=> b!4610635 m!5442309))

(assert (=> b!4610635 m!5442307))

(declare-fun m!5442311 () Bool)

(assert (=> b!4610635 m!5442311))

(declare-fun m!5442313 () Bool)

(assert (=> b!4610628 m!5442313))

(declare-fun m!5442315 () Bool)

(assert (=> b!4610651 m!5442315))

(declare-fun m!5442317 () Bool)

(assert (=> b!4610633 m!5442317))

(assert (=> b!4610633 m!5442317))

(declare-fun m!5442319 () Bool)

(assert (=> b!4610633 m!5442319))

(declare-fun m!5442321 () Bool)

(assert (=> b!4610650 m!5442321))

(declare-fun m!5442323 () Bool)

(assert (=> start!461148 m!5442323))

(declare-fun m!5442325 () Bool)

(assert (=> start!461148 m!5442325))

(check-sat (not b!4610631) (not b!4610647) (not b!4610626) (not start!461148) (not b!4610625) (not b!4610653) (not b!4610651) (not b!4610634) tp_is_empty!28799 (not b!4610639) (not b!4610644) (not b!4610649) (not b!4610635) (not b!4610637) (not b!4610629) (not b!4610623) (not b!4610628) (not b!4610640) (not b!4610642) (not b!4610641) (not b!4610650) (not b!4610624) (not b!4610627) tp_is_empty!28797 (not b!4610632) (not b!4610630) (not b!4610638) (not b!4610633) (not b!4610636) (not b!4610622) (not b!4610645) (not b!4610643))
(check-sat)
