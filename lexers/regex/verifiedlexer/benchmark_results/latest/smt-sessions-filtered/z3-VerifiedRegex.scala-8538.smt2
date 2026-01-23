; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!449476 () Bool)

(assert start!449476)

(declare-fun bs!867988 () Bool)

(declare-fun b!4531919 () Bool)

(assert (= bs!867988 (and b!4531919 start!449476)))

(declare-fun lambda!174610 () Int)

(declare-fun lambda!174609 () Int)

(assert (=> bs!867988 (not (= lambda!174610 lambda!174609))))

(assert (=> b!4531919 true))

(assert (=> b!4531919 true))

(assert (=> b!4531919 true))

(declare-fun b!4531916 () Bool)

(declare-fun e!2823862 () Bool)

(declare-fun e!2823871 () Bool)

(assert (=> b!4531916 (= e!2823862 e!2823871)))

(declare-fun res!1887578 () Bool)

(assert (=> b!4531916 (=> (not res!1887578) (not e!2823871))))

(declare-fun lt!1707416 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4531916 (= res!1887578 (= lt!1707416 hash!344))))

(declare-datatypes ((Hashable!5577 0))(
  ( (HashableExt!5576 (__x!31280 Int)) )
))
(declare-fun hashF!1107 () Hashable!5577)

(declare-datatypes ((K!12095 0))(
  ( (K!12096 (val!17947 Int)) )
))
(declare-fun key!3287 () K!12095)

(declare-fun hash!2875 (Hashable!5577 K!12095) (_ BitVec 64))

(assert (=> b!4531916 (= lt!1707416 (hash!2875 hashF!1107 key!3287))))

(declare-fun b!4531917 () Bool)

(declare-fun res!1887568 () Bool)

(declare-fun e!2823865 () Bool)

(assert (=> b!4531917 (=> res!1887568 e!2823865)))

(declare-datatypes ((V!12341 0))(
  ( (V!12342 (val!17948 Int)) )
))
(declare-datatypes ((tuple2!51162 0))(
  ( (tuple2!51163 (_1!28875 K!12095) (_2!28875 V!12341)) )
))
(declare-datatypes ((List!50832 0))(
  ( (Nil!50708) (Cons!50708 (h!56579 tuple2!51162) (t!357794 List!50832)) )
))
(declare-datatypes ((tuple2!51164 0))(
  ( (tuple2!51165 (_1!28876 (_ BitVec 64)) (_2!28876 List!50832)) )
))
(declare-datatypes ((List!50833 0))(
  ( (Nil!50709) (Cons!50709 (h!56580 tuple2!51164) (t!357795 List!50833)) )
))
(declare-datatypes ((ListLongMap!3003 0))(
  ( (ListLongMap!3004 (toList!4371 List!50833)) )
))
(declare-fun lt!1707402 () ListLongMap!3003)

(declare-fun lt!1707408 () tuple2!51164)

(declare-fun head!9452 (ListLongMap!3003) tuple2!51164)

(assert (=> b!4531917 (= res!1887568 (not (= (head!9452 lt!1707402) lt!1707408)))))

(declare-fun b!4531918 () Bool)

(declare-fun e!2823868 () Bool)

(assert (=> b!4531918 (= e!2823868 true)))

(declare-datatypes ((ListMap!3633 0))(
  ( (ListMap!3634 (toList!4372 List!50832)) )
))
(declare-fun lt!1707415 () ListMap!3633)

(declare-fun lt!1707396 () ListMap!3633)

(declare-fun -!408 (ListMap!3633 K!12095) ListMap!3633)

(declare-fun addToMapMapFromBucket!709 (List!50832 ListMap!3633) ListMap!3633)

(assert (=> b!4531918 (= lt!1707415 (-!408 (addToMapMapFromBucket!709 (_2!28876 lt!1707408) lt!1707396) key!3287))))

(declare-datatypes ((Unit!97080 0))(
  ( (Unit!97081) )
))
(declare-fun lt!1707412 () Unit!97080)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!6 (ListMap!3633 K!12095 List!50832) Unit!97080)

(assert (=> b!4531918 (= lt!1707412 (lemmaAddToMapFromBucketMinusKeyIsCommutative!6 lt!1707396 key!3287 (_2!28876 lt!1707408)))))

(declare-fun e!2823855 () Unit!97080)

(declare-fun Unit!97082 () Unit!97080)

(assert (=> b!4531919 (= e!2823855 Unit!97082)))

(assert (=> b!4531919 (not (= hash!344 (_1!28876 lt!1707408)))))

(declare-datatypes ((Option!11165 0))(
  ( (None!11164) (Some!11164 (v!44824 tuple2!51162)) )
))
(declare-fun lt!1707421 () Option!11165)

(declare-fun getPair!198 (List!50832 K!12095) Option!11165)

(assert (=> b!4531919 (= lt!1707421 (getPair!198 (_2!28876 lt!1707408) key!3287))))

(declare-fun lt!1707394 () Unit!97080)

(declare-fun lm!1477 () ListLongMap!3003)

(declare-fun forallContained!2568 (List!50833 Int tuple2!51164) Unit!97080)

(assert (=> b!4531919 (= lt!1707394 (forallContained!2568 (toList!4371 lm!1477) lambda!174610 (h!56580 (toList!4371 lm!1477))))))

(declare-fun lambda!174611 () Int)

(declare-fun lt!1707401 () Unit!97080)

(declare-fun forallContained!2569 (List!50832 Int tuple2!51162) Unit!97080)

(declare-fun get!16645 (Option!11165) tuple2!51162)

(assert (=> b!4531919 (= lt!1707401 (forallContained!2569 (_2!28876 (h!56580 (toList!4371 lm!1477))) lambda!174611 (tuple2!51163 key!3287 (_2!28875 (get!16645 lt!1707421)))))))

(assert (=> b!4531919 false))

(declare-fun res!1887571 () Bool)

(declare-fun e!2823863 () Bool)

(assert (=> start!449476 (=> (not res!1887571) (not e!2823863))))

(declare-fun forall!10313 (List!50833 Int) Bool)

(assert (=> start!449476 (= res!1887571 (forall!10313 (toList!4371 lm!1477) lambda!174609))))

(assert (=> start!449476 e!2823863))

(assert (=> start!449476 true))

(declare-fun e!2823861 () Bool)

(declare-fun inv!66279 (ListLongMap!3003) Bool)

(assert (=> start!449476 (and (inv!66279 lm!1477) e!2823861)))

(declare-fun tp_is_empty!28005 () Bool)

(assert (=> start!449476 tp_is_empty!28005))

(declare-fun e!2823859 () Bool)

(assert (=> start!449476 e!2823859))

(declare-fun b!4531920 () Bool)

(declare-fun e!2823858 () Bool)

(declare-fun e!2823867 () Bool)

(assert (=> b!4531920 (= e!2823858 e!2823867)))

(declare-fun res!1887562 () Bool)

(assert (=> b!4531920 (=> res!1887562 e!2823867)))

(declare-fun noDuplicateKeys!1182 (List!50832) Bool)

(assert (=> b!4531920 (= res!1887562 (not (noDuplicateKeys!1182 (_2!28876 lt!1707408))))))

(declare-fun lt!1707413 () Unit!97080)

(assert (=> b!4531920 (= lt!1707413 (forallContained!2568 (toList!4371 lm!1477) lambda!174609 (h!56580 (toList!4371 lm!1477))))))

(declare-fun b!4531921 () Bool)

(assert (=> b!4531921 (= e!2823867 e!2823868)))

(declare-fun res!1887579 () Bool)

(assert (=> b!4531921 (=> res!1887579 e!2823868)))

(declare-fun lt!1707419 () Bool)

(assert (=> b!4531921 (= res!1887579 lt!1707419)))

(declare-fun lt!1707422 () Unit!97080)

(assert (=> b!4531921 (= lt!1707422 e!2823855)))

(declare-fun c!773836 () Bool)

(assert (=> b!4531921 (= c!773836 lt!1707419)))

(declare-fun containsKey!1838 (List!50832 K!12095) Bool)

(assert (=> b!4531921 (= lt!1707419 (containsKey!1838 (_2!28876 lt!1707408) key!3287))))

(declare-fun b!4531922 () Bool)

(declare-fun e!2823870 () Bool)

(assert (=> b!4531922 (= e!2823871 (not e!2823870))))

(declare-fun res!1887566 () Bool)

(assert (=> b!4531922 (=> res!1887566 e!2823870)))

(declare-fun lt!1707407 () List!50832)

(declare-fun newBucket!178 () List!50832)

(declare-fun removePairForKey!809 (List!50832 K!12095) List!50832)

(assert (=> b!4531922 (= res!1887566 (not (= newBucket!178 (removePairForKey!809 lt!1707407 key!3287))))))

(declare-fun lt!1707398 () tuple2!51164)

(declare-fun lt!1707411 () Unit!97080)

(assert (=> b!4531922 (= lt!1707411 (forallContained!2568 (toList!4371 lm!1477) lambda!174609 lt!1707398))))

(declare-fun contains!13473 (List!50833 tuple2!51164) Bool)

(assert (=> b!4531922 (contains!13473 (toList!4371 lm!1477) lt!1707398)))

(assert (=> b!4531922 (= lt!1707398 (tuple2!51165 hash!344 lt!1707407))))

(declare-fun lt!1707393 () Unit!97080)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!694 (List!50833 (_ BitVec 64) List!50832) Unit!97080)

(assert (=> b!4531922 (= lt!1707393 (lemmaGetValueByKeyImpliesContainsTuple!694 (toList!4371 lm!1477) hash!344 lt!1707407))))

(declare-fun apply!11919 (ListLongMap!3003 (_ BitVec 64)) List!50832)

(assert (=> b!4531922 (= lt!1707407 (apply!11919 lm!1477 hash!344))))

(declare-fun contains!13474 (ListLongMap!3003 (_ BitVec 64)) Bool)

(assert (=> b!4531922 (contains!13474 lm!1477 lt!1707416)))

(declare-fun lt!1707400 () Unit!97080)

(declare-fun lemmaInGenMapThenLongMapContainsHash!256 (ListLongMap!3003 K!12095 Hashable!5577) Unit!97080)

(assert (=> b!4531922 (= lt!1707400 (lemmaInGenMapThenLongMapContainsHash!256 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4531923 () Bool)

(declare-fun res!1887558 () Bool)

(assert (=> b!4531923 (=> res!1887558 e!2823870)))

(get-info :version)

(assert (=> b!4531923 (= res!1887558 (or ((_ is Nil!50709) (toList!4371 lm!1477)) (= (_1!28876 (h!56580 (toList!4371 lm!1477))) hash!344)))))

(declare-fun b!4531924 () Bool)

(declare-fun res!1887559 () Bool)

(assert (=> b!4531924 (=> res!1887559 e!2823870)))

(assert (=> b!4531924 (= res!1887559 (not (noDuplicateKeys!1182 newBucket!178)))))

(declare-fun b!4531925 () Bool)

(declare-fun e!2823860 () Bool)

(assert (=> b!4531925 (= e!2823860 e!2823858)))

(declare-fun res!1887580 () Bool)

(assert (=> b!4531925 (=> res!1887580 e!2823858)))

(declare-fun lt!1707410 () ListMap!3633)

(declare-fun eq!639 (ListMap!3633 ListMap!3633) Bool)

(assert (=> b!4531925 (= res!1887580 (not (eq!639 lt!1707410 lt!1707415)))))

(declare-fun lt!1707399 () ListMap!3633)

(assert (=> b!4531925 (eq!639 lt!1707399 lt!1707415)))

(declare-fun lt!1707406 () ListMap!3633)

(assert (=> b!4531925 (= lt!1707415 (addToMapMapFromBucket!709 (_2!28876 lt!1707408) lt!1707406))))

(declare-fun lt!1707409 () ListMap!3633)

(declare-fun lt!1707420 () Unit!97080)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!58 (ListMap!3633 ListMap!3633 List!50832) Unit!97080)

(assert (=> b!4531925 (= lt!1707420 (lemmaAddToMapFromBucketPreservesEquivalence!58 lt!1707409 lt!1707406 (_2!28876 lt!1707408)))))

(declare-fun b!4531926 () Bool)

(declare-fun e!2823857 () Bool)

(declare-fun e!2823854 () Bool)

(assert (=> b!4531926 (= e!2823857 e!2823854)))

(declare-fun res!1887572 () Bool)

(assert (=> b!4531926 (=> res!1887572 e!2823854)))

(declare-fun contains!13475 (ListMap!3633 K!12095) Bool)

(declare-fun extractMap!1238 (List!50833) ListMap!3633)

(assert (=> b!4531926 (= res!1887572 (not (contains!13475 (extractMap!1238 (t!357795 (toList!4371 lm!1477))) key!3287)))))

(assert (=> b!4531926 (contains!13475 lt!1707396 key!3287)))

(declare-fun lt!1707418 () ListLongMap!3003)

(assert (=> b!4531926 (= lt!1707396 (extractMap!1238 (toList!4371 lt!1707418)))))

(declare-fun lt!1707397 () Unit!97080)

(declare-fun lemmaListContainsThenExtractedMapContains!152 (ListLongMap!3003 K!12095 Hashable!5577) Unit!97080)

(assert (=> b!4531926 (= lt!1707397 (lemmaListContainsThenExtractedMapContains!152 lt!1707418 key!3287 hashF!1107))))

(declare-fun b!4531927 () Bool)

(declare-fun res!1887569 () Bool)

(declare-fun e!2823866 () Bool)

(assert (=> b!4531927 (=> res!1887569 e!2823866)))

(assert (=> b!4531927 (= res!1887569 (not (contains!13473 (t!357795 (toList!4371 lm!1477)) lt!1707398)))))

(declare-fun b!4531928 () Bool)

(declare-fun e!2823864 () Bool)

(assert (=> b!4531928 (= e!2823864 e!2823865)))

(declare-fun res!1887567 () Bool)

(assert (=> b!4531928 (=> res!1887567 e!2823865)))

(declare-fun lt!1707424 () tuple2!51164)

(declare-fun +!1578 (ListLongMap!3003 tuple2!51164) ListLongMap!3003)

(assert (=> b!4531928 (= res!1887567 (not (= lt!1707402 (+!1578 lm!1477 lt!1707424))))))

(declare-fun lt!1707414 () ListLongMap!3003)

(assert (=> b!4531928 (= lt!1707402 (+!1578 lt!1707414 lt!1707408))))

(declare-fun b!4531929 () Bool)

(declare-fun Unit!97083 () Unit!97080)

(assert (=> b!4531929 (= e!2823855 Unit!97083)))

(declare-fun b!4531930 () Bool)

(assert (=> b!4531930 (= e!2823870 e!2823866)))

(declare-fun res!1887576 () Bool)

(assert (=> b!4531930 (=> res!1887576 e!2823866)))

(assert (=> b!4531930 (= res!1887576 (not (contains!13474 lt!1707418 hash!344)))))

(declare-fun tail!7774 (ListLongMap!3003) ListLongMap!3003)

(assert (=> b!4531930 (= lt!1707418 (tail!7774 lm!1477))))

(declare-fun b!4531931 () Bool)

(assert (=> b!4531931 (= e!2823854 e!2823864)))

(declare-fun res!1887577 () Bool)

(assert (=> b!4531931 (=> res!1887577 e!2823864)))

(declare-fun lt!1707403 () ListMap!3633)

(declare-fun lt!1707404 () ListMap!3633)

(assert (=> b!4531931 (= res!1887577 (not (eq!639 lt!1707403 lt!1707404)))))

(assert (=> b!4531931 (= lt!1707403 (extractMap!1238 (toList!4371 (+!1578 lt!1707418 lt!1707408))))))

(assert (=> b!4531931 (= lt!1707408 (head!9452 lm!1477))))

(assert (=> b!4531931 (eq!639 lt!1707409 lt!1707406)))

(assert (=> b!4531931 (= lt!1707406 (-!408 lt!1707396 key!3287))))

(assert (=> b!4531931 (= lt!1707409 (extractMap!1238 (toList!4371 lt!1707414)))))

(assert (=> b!4531931 (= lt!1707414 (+!1578 lt!1707418 lt!1707424))))

(assert (=> b!4531931 (= lt!1707424 (tuple2!51165 hash!344 newBucket!178))))

(declare-fun lt!1707417 () Unit!97080)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!167 (ListLongMap!3003 (_ BitVec 64) List!50832 K!12095 Hashable!5577) Unit!97080)

(assert (=> b!4531931 (= lt!1707417 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!167 lt!1707418 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4531932 () Bool)

(declare-fun res!1887574 () Bool)

(assert (=> b!4531932 (=> (not res!1887574) (not e!2823871))))

(declare-fun allKeysSameHash!1036 (List!50832 (_ BitVec 64) Hashable!5577) Bool)

(assert (=> b!4531932 (= res!1887574 (allKeysSameHash!1036 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4531933 () Bool)

(declare-fun e!2823856 () Unit!97080)

(declare-fun Unit!97084 () Unit!97080)

(assert (=> b!4531933 (= e!2823856 Unit!97084)))

(declare-fun lt!1707423 () Unit!97080)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!170 (ListLongMap!3003 K!12095 Hashable!5577) Unit!97080)

(assert (=> b!4531933 (= lt!1707423 (lemmaNotInItsHashBucketThenNotInMap!170 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4531933 false))

(declare-fun b!4531934 () Bool)

(declare-fun Unit!97085 () Unit!97080)

(assert (=> b!4531934 (= e!2823856 Unit!97085)))

(declare-fun b!4531935 () Bool)

(declare-fun tp!1338415 () Bool)

(assert (=> b!4531935 (= e!2823861 tp!1338415)))

(declare-fun b!4531936 () Bool)

(declare-fun e!2823869 () Bool)

(assert (=> b!4531936 (= e!2823866 e!2823869)))

(declare-fun res!1887563 () Bool)

(assert (=> b!4531936 (=> res!1887563 e!2823869)))

(declare-fun lt!1707405 () Bool)

(assert (=> b!4531936 (= res!1887563 lt!1707405)))

(declare-fun lt!1707392 () Unit!97080)

(assert (=> b!4531936 (= lt!1707392 e!2823856)))

(declare-fun c!773837 () Bool)

(assert (=> b!4531936 (= c!773837 lt!1707405)))

(assert (=> b!4531936 (= lt!1707405 (not (containsKey!1838 lt!1707407 key!3287)))))

(declare-fun b!4531937 () Bool)

(assert (=> b!4531937 (= e!2823869 e!2823857)))

(declare-fun res!1887561 () Bool)

(assert (=> b!4531937 (=> res!1887561 e!2823857)))

(declare-fun containsKeyBiggerList!162 (List!50833 K!12095) Bool)

(assert (=> b!4531937 (= res!1887561 (not (containsKeyBiggerList!162 (t!357795 (toList!4371 lm!1477)) key!3287)))))

(assert (=> b!4531937 (containsKeyBiggerList!162 (toList!4371 lt!1707418) key!3287)))

(declare-fun lt!1707395 () Unit!97080)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!98 (ListLongMap!3003 K!12095 Hashable!5577) Unit!97080)

(assert (=> b!4531937 (= lt!1707395 (lemmaInLongMapThenContainsKeyBiggerList!98 lt!1707418 key!3287 hashF!1107))))

(declare-fun b!4531938 () Bool)

(declare-fun tp!1338414 () Bool)

(declare-fun tp_is_empty!28007 () Bool)

(assert (=> b!4531938 (= e!2823859 (and tp_is_empty!28005 tp_is_empty!28007 tp!1338414))))

(declare-fun b!4531939 () Bool)

(assert (=> b!4531939 (= e!2823863 e!2823862)))

(declare-fun res!1887560 () Bool)

(assert (=> b!4531939 (=> (not res!1887560) (not e!2823862))))

(assert (=> b!4531939 (= res!1887560 (contains!13475 lt!1707404 key!3287))))

(assert (=> b!4531939 (= lt!1707404 (extractMap!1238 (toList!4371 lm!1477)))))

(declare-fun b!4531940 () Bool)

(assert (=> b!4531940 (= e!2823865 e!2823860)))

(declare-fun res!1887570 () Bool)

(assert (=> b!4531940 (=> res!1887570 e!2823860)))

(assert (=> b!4531940 (= res!1887570 (not (eq!639 lt!1707410 lt!1707399)))))

(assert (=> b!4531940 (= lt!1707399 (addToMapMapFromBucket!709 (_2!28876 lt!1707408) lt!1707409))))

(assert (=> b!4531940 (= lt!1707410 (extractMap!1238 (toList!4371 lt!1707402)))))

(declare-fun b!4531941 () Bool)

(declare-fun res!1887564 () Bool)

(assert (=> b!4531941 (=> (not res!1887564) (not e!2823863))))

(declare-fun allKeysSameHashInMap!1289 (ListLongMap!3003 Hashable!5577) Bool)

(assert (=> b!4531941 (= res!1887564 (allKeysSameHashInMap!1289 lm!1477 hashF!1107))))

(declare-fun b!4531942 () Bool)

(declare-fun res!1887565 () Bool)

(assert (=> b!4531942 (=> res!1887565 e!2823864)))

(assert (=> b!4531942 (= res!1887565 (bvsge (_1!28876 lt!1707408) hash!344))))

(declare-fun b!4531943 () Bool)

(declare-fun res!1887573 () Bool)

(assert (=> b!4531943 (=> res!1887573 e!2823866)))

(assert (=> b!4531943 (= res!1887573 (not (= (apply!11919 lt!1707418 hash!344) lt!1707407)))))

(declare-fun b!4531944 () Bool)

(declare-fun res!1887575 () Bool)

(assert (=> b!4531944 (=> res!1887575 e!2823864)))

(assert (=> b!4531944 (= res!1887575 (not (eq!639 lt!1707404 lt!1707403)))))

(assert (= (and start!449476 res!1887571) b!4531941))

(assert (= (and b!4531941 res!1887564) b!4531939))

(assert (= (and b!4531939 res!1887560) b!4531916))

(assert (= (and b!4531916 res!1887578) b!4531932))

(assert (= (and b!4531932 res!1887574) b!4531922))

(assert (= (and b!4531922 (not res!1887566)) b!4531924))

(assert (= (and b!4531924 (not res!1887559)) b!4531923))

(assert (= (and b!4531923 (not res!1887558)) b!4531930))

(assert (= (and b!4531930 (not res!1887576)) b!4531943))

(assert (= (and b!4531943 (not res!1887573)) b!4531927))

(assert (= (and b!4531927 (not res!1887569)) b!4531936))

(assert (= (and b!4531936 c!773837) b!4531933))

(assert (= (and b!4531936 (not c!773837)) b!4531934))

(assert (= (and b!4531936 (not res!1887563)) b!4531937))

(assert (= (and b!4531937 (not res!1887561)) b!4531926))

(assert (= (and b!4531926 (not res!1887572)) b!4531931))

(assert (= (and b!4531931 (not res!1887577)) b!4531944))

(assert (= (and b!4531944 (not res!1887575)) b!4531942))

(assert (= (and b!4531942 (not res!1887565)) b!4531928))

(assert (= (and b!4531928 (not res!1887567)) b!4531917))

(assert (= (and b!4531917 (not res!1887568)) b!4531940))

(assert (= (and b!4531940 (not res!1887570)) b!4531925))

(assert (= (and b!4531925 (not res!1887580)) b!4531920))

(assert (= (and b!4531920 (not res!1887562)) b!4531921))

(assert (= (and b!4531921 c!773836) b!4531919))

(assert (= (and b!4531921 (not c!773836)) b!4531929))

(assert (= (and b!4531921 (not res!1887579)) b!4531918))

(assert (= start!449476 b!4531935))

(assert (= (and start!449476 ((_ is Cons!50708) newBucket!178)) b!4531938))

(declare-fun m!5290409 () Bool)

(assert (=> b!4531930 m!5290409))

(declare-fun m!5290411 () Bool)

(assert (=> b!4531930 m!5290411))

(declare-fun m!5290413 () Bool)

(assert (=> b!4531939 m!5290413))

(declare-fun m!5290415 () Bool)

(assert (=> b!4531939 m!5290415))

(declare-fun m!5290417 () Bool)

(assert (=> b!4531943 m!5290417))

(declare-fun m!5290419 () Bool)

(assert (=> b!4531937 m!5290419))

(declare-fun m!5290421 () Bool)

(assert (=> b!4531937 m!5290421))

(declare-fun m!5290423 () Bool)

(assert (=> b!4531937 m!5290423))

(declare-fun m!5290425 () Bool)

(assert (=> b!4531918 m!5290425))

(assert (=> b!4531918 m!5290425))

(declare-fun m!5290427 () Bool)

(assert (=> b!4531918 m!5290427))

(declare-fun m!5290429 () Bool)

(assert (=> b!4531918 m!5290429))

(declare-fun m!5290431 () Bool)

(assert (=> b!4531936 m!5290431))

(declare-fun m!5290433 () Bool)

(assert (=> b!4531921 m!5290433))

(declare-fun m!5290435 () Bool)

(assert (=> b!4531928 m!5290435))

(declare-fun m!5290437 () Bool)

(assert (=> b!4531928 m!5290437))

(declare-fun m!5290439 () Bool)

(assert (=> b!4531944 m!5290439))

(declare-fun m!5290441 () Bool)

(assert (=> b!4531917 m!5290441))

(declare-fun m!5290443 () Bool)

(assert (=> b!4531932 m!5290443))

(declare-fun m!5290445 () Bool)

(assert (=> b!4531916 m!5290445))

(declare-fun m!5290447 () Bool)

(assert (=> b!4531941 m!5290447))

(declare-fun m!5290449 () Bool)

(assert (=> b!4531940 m!5290449))

(declare-fun m!5290451 () Bool)

(assert (=> b!4531940 m!5290451))

(declare-fun m!5290453 () Bool)

(assert (=> b!4531940 m!5290453))

(declare-fun m!5290455 () Bool)

(assert (=> b!4531933 m!5290455))

(declare-fun m!5290457 () Bool)

(assert (=> b!4531920 m!5290457))

(declare-fun m!5290459 () Bool)

(assert (=> b!4531920 m!5290459))

(declare-fun m!5290461 () Bool)

(assert (=> b!4531924 m!5290461))

(declare-fun m!5290463 () Bool)

(assert (=> b!4531922 m!5290463))

(declare-fun m!5290465 () Bool)

(assert (=> b!4531922 m!5290465))

(declare-fun m!5290467 () Bool)

(assert (=> b!4531922 m!5290467))

(declare-fun m!5290469 () Bool)

(assert (=> b!4531922 m!5290469))

(declare-fun m!5290471 () Bool)

(assert (=> b!4531922 m!5290471))

(declare-fun m!5290473 () Bool)

(assert (=> b!4531922 m!5290473))

(declare-fun m!5290475 () Bool)

(assert (=> b!4531922 m!5290475))

(declare-fun m!5290477 () Bool)

(assert (=> start!449476 m!5290477))

(declare-fun m!5290479 () Bool)

(assert (=> start!449476 m!5290479))

(declare-fun m!5290481 () Bool)

(assert (=> b!4531925 m!5290481))

(declare-fun m!5290483 () Bool)

(assert (=> b!4531925 m!5290483))

(declare-fun m!5290485 () Bool)

(assert (=> b!4531925 m!5290485))

(declare-fun m!5290487 () Bool)

(assert (=> b!4531925 m!5290487))

(declare-fun m!5290489 () Bool)

(assert (=> b!4531926 m!5290489))

(declare-fun m!5290491 () Bool)

(assert (=> b!4531926 m!5290491))

(assert (=> b!4531926 m!5290489))

(declare-fun m!5290493 () Bool)

(assert (=> b!4531926 m!5290493))

(declare-fun m!5290495 () Bool)

(assert (=> b!4531926 m!5290495))

(declare-fun m!5290497 () Bool)

(assert (=> b!4531926 m!5290497))

(declare-fun m!5290499 () Bool)

(assert (=> b!4531931 m!5290499))

(declare-fun m!5290501 () Bool)

(assert (=> b!4531931 m!5290501))

(declare-fun m!5290503 () Bool)

(assert (=> b!4531931 m!5290503))

(declare-fun m!5290505 () Bool)

(assert (=> b!4531931 m!5290505))

(declare-fun m!5290507 () Bool)

(assert (=> b!4531931 m!5290507))

(declare-fun m!5290509 () Bool)

(assert (=> b!4531931 m!5290509))

(declare-fun m!5290511 () Bool)

(assert (=> b!4531931 m!5290511))

(declare-fun m!5290513 () Bool)

(assert (=> b!4531931 m!5290513))

(declare-fun m!5290515 () Bool)

(assert (=> b!4531931 m!5290515))

(declare-fun m!5290517 () Bool)

(assert (=> b!4531919 m!5290517))

(declare-fun m!5290519 () Bool)

(assert (=> b!4531919 m!5290519))

(declare-fun m!5290521 () Bool)

(assert (=> b!4531919 m!5290521))

(declare-fun m!5290523 () Bool)

(assert (=> b!4531919 m!5290523))

(declare-fun m!5290525 () Bool)

(assert (=> b!4531927 m!5290525))

(check-sat (not b!4531939) (not b!4531928) (not b!4531935) (not b!4531933) (not b!4531920) (not b!4531943) (not b!4531940) (not b!4531944) (not b!4531927) (not b!4531922) tp_is_empty!28007 (not b!4531917) (not b!4531941) (not b!4531925) (not b!4531921) (not b!4531938) (not b!4531919) (not b!4531936) (not b!4531932) tp_is_empty!28005 (not b!4531916) (not b!4531924) (not b!4531918) (not start!449476) (not b!4531926) (not b!4531930) (not b!4531931) (not b!4531937))
(check-sat)
