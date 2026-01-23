; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!470972 () Bool)

(assert start!470972)

(declare-fun b!4669923 () Bool)

(declare-fun e!2914216 () Bool)

(declare-fun e!2914218 () Bool)

(assert (=> b!4669923 (= e!2914216 e!2914218)))

(declare-fun res!1965704 () Bool)

(assert (=> b!4669923 (=> (not res!1965704) (not e!2914218))))

(declare-datatypes ((K!13355 0))(
  ( (K!13356 (val!18955 Int)) )
))
(declare-datatypes ((V!13601 0))(
  ( (V!13602 (val!18956 Int)) )
))
(declare-datatypes ((tuple2!53174 0))(
  ( (tuple2!53175 (_1!29881 K!13355) (_2!29881 V!13601)) )
))
(declare-datatypes ((List!52138 0))(
  ( (Nil!52014) (Cons!52014 (h!58192 tuple2!53174) (t!359276 List!52138)) )
))
(declare-datatypes ((ListMap!4633 0))(
  ( (ListMap!4634 (toList!5293 List!52138)) )
))
(declare-fun lt!1832277 () ListMap!4633)

(declare-fun key!4968 () K!13355)

(declare-fun contains!15225 (ListMap!4633 K!13355) Bool)

(assert (=> b!4669923 (= res!1965704 (contains!15225 lt!1832277 key!4968))))

(declare-datatypes ((tuple2!53176 0))(
  ( (tuple2!53177 (_1!29882 (_ BitVec 64)) (_2!29882 List!52138)) )
))
(declare-datatypes ((List!52139 0))(
  ( (Nil!52015) (Cons!52015 (h!58193 tuple2!53176) (t!359277 List!52139)) )
))
(declare-fun lt!1832288 () List!52139)

(declare-fun extractMap!1738 (List!52139) ListMap!4633)

(assert (=> b!4669923 (= lt!1832277 (extractMap!1738 lt!1832288))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!52138)

(assert (=> b!4669923 (= lt!1832288 (Cons!52015 (tuple2!53177 hash!414 oldBucket!40) Nil!52015))))

(declare-fun b!4669924 () Bool)

(declare-fun res!1965698 () Bool)

(declare-fun e!2914207 () Bool)

(assert (=> b!4669924 (=> res!1965698 e!2914207)))

(declare-fun lt!1832304 () List!52138)

(declare-fun removePairForKey!1305 (List!52138 K!13355) List!52138)

(assert (=> b!4669924 (= res!1965698 (not (= (removePairForKey!1305 (t!359276 oldBucket!40) key!4968) lt!1832304)))))

(declare-fun b!4669925 () Bool)

(declare-fun e!2914209 () Bool)

(assert (=> b!4669925 (= e!2914207 e!2914209)))

(declare-fun res!1965690 () Bool)

(assert (=> b!4669925 (=> res!1965690 e!2914209)))

(declare-fun lt!1832296 () List!52138)

(declare-fun eq!937 (ListMap!4633 ListMap!4633) Bool)

(declare-fun +!2022 (ListMap!4633 tuple2!53174) ListMap!4633)

(assert (=> b!4669925 (= res!1965690 (not (eq!937 lt!1832277 (+!2022 (extractMap!1738 (Cons!52015 (tuple2!53177 hash!414 lt!1832296) Nil!52015)) (h!58192 oldBucket!40)))))))

(declare-fun lt!1832289 () tuple2!53174)

(declare-fun addToMapMapFromBucket!1139 (List!52138 ListMap!4633) ListMap!4633)

(assert (=> b!4669925 (eq!937 (addToMapMapFromBucket!1139 (Cons!52014 lt!1832289 lt!1832304) (ListMap!4634 Nil!52014)) (+!2022 (addToMapMapFromBucket!1139 lt!1832304 (ListMap!4634 Nil!52014)) lt!1832289))))

(declare-datatypes ((Unit!121032 0))(
  ( (Unit!121033) )
))
(declare-fun lt!1832297 () Unit!121032)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!188 (tuple2!53174 List!52138 ListMap!4633) Unit!121032)

(assert (=> b!4669925 (= lt!1832297 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!188 lt!1832289 lt!1832304 (ListMap!4634 Nil!52014)))))

(declare-fun newBucket!224 () List!52138)

(declare-fun head!9760 (List!52138) tuple2!53174)

(assert (=> b!4669925 (= lt!1832289 (head!9760 newBucket!224))))

(declare-fun lt!1832305 () tuple2!53174)

(assert (=> b!4669925 (eq!937 (addToMapMapFromBucket!1139 (Cons!52014 lt!1832305 lt!1832296) (ListMap!4634 Nil!52014)) (+!2022 (addToMapMapFromBucket!1139 lt!1832296 (ListMap!4634 Nil!52014)) lt!1832305))))

(declare-fun lt!1832287 () Unit!121032)

(assert (=> b!4669925 (= lt!1832287 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!188 lt!1832305 lt!1832296 (ListMap!4634 Nil!52014)))))

(assert (=> b!4669925 (= lt!1832305 (head!9760 oldBucket!40))))

(declare-fun lt!1832285 () ListMap!4633)

(assert (=> b!4669925 (contains!15225 lt!1832285 key!4968)))

(declare-fun lt!1832282 () List!52139)

(assert (=> b!4669925 (= lt!1832285 (extractMap!1738 lt!1832282))))

(declare-datatypes ((Hashable!6079 0))(
  ( (HashableExt!6078 (__x!31782 Int)) )
))
(declare-fun hashF!1389 () Hashable!6079)

(declare-fun lt!1832295 () Unit!121032)

(declare-datatypes ((ListLongMap!3847 0))(
  ( (ListLongMap!3848 (toList!5294 List!52139)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!416 (ListLongMap!3847 K!13355 Hashable!6079) Unit!121032)

(assert (=> b!4669925 (= lt!1832295 (lemmaListContainsThenExtractedMapContains!416 (ListLongMap!3848 lt!1832282) key!4968 hashF!1389))))

(assert (=> b!4669925 (= lt!1832282 (Cons!52015 (tuple2!53177 hash!414 (t!359276 oldBucket!40)) Nil!52015))))

(declare-fun b!4669926 () Bool)

(declare-fun e!2914210 () Bool)

(assert (=> b!4669926 (= e!2914210 e!2914207)))

(declare-fun res!1965688 () Bool)

(assert (=> b!4669926 (=> res!1965688 e!2914207)))

(assert (=> b!4669926 (= res!1965688 (not (= (removePairForKey!1305 lt!1832296 key!4968) lt!1832304)))))

(declare-fun tail!8285 (List!52138) List!52138)

(assert (=> b!4669926 (= lt!1832304 (tail!8285 newBucket!224))))

(assert (=> b!4669926 (= lt!1832296 (tail!8285 oldBucket!40))))

(declare-fun b!4669927 () Bool)

(declare-fun e!2914206 () Bool)

(declare-fun e!2914213 () Bool)

(assert (=> b!4669927 (= e!2914206 e!2914213)))

(declare-fun res!1965697 () Bool)

(assert (=> b!4669927 (=> res!1965697 e!2914213)))

(declare-fun lt!1832279 () ListMap!4633)

(declare-fun lt!1832298 () ListMap!4633)

(assert (=> b!4669927 (= res!1965697 (not (eq!937 lt!1832279 lt!1832298)))))

(declare-fun lt!1832293 () ListMap!4633)

(assert (=> b!4669927 (eq!937 lt!1832293 lt!1832279)))

(declare-fun -!622 (ListMap!4633 K!13355) ListMap!4633)

(assert (=> b!4669927 (= lt!1832279 (-!622 lt!1832277 key!4968))))

(declare-fun lt!1832281 () Unit!121032)

(declare-fun lt!1832278 () ListMap!4633)

(declare-fun lemmaRemovePreservesEq!68 (ListMap!4633 ListMap!4633 K!13355) Unit!121032)

(assert (=> b!4669927 (= lt!1832281 (lemmaRemovePreservesEq!68 lt!1832278 lt!1832277 key!4968))))

(declare-fun e!2914205 () Bool)

(declare-fun tp_is_empty!30023 () Bool)

(declare-fun b!4669928 () Bool)

(declare-fun tp!1343730 () Bool)

(declare-fun tp_is_empty!30021 () Bool)

(assert (=> b!4669928 (= e!2914205 (and tp_is_empty!30021 tp_is_empty!30023 tp!1343730))))

(declare-fun b!4669929 () Bool)

(declare-fun res!1965700 () Bool)

(assert (=> b!4669929 (=> (not res!1965700) (not e!2914216))))

(declare-fun allKeysSameHash!1536 (List!52138 (_ BitVec 64) Hashable!6079) Bool)

(assert (=> b!4669929 (= res!1965700 (allKeysSameHash!1536 oldBucket!40 hash!414 hashF!1389))))

(declare-fun res!1965693 () Bool)

(assert (=> start!470972 (=> (not res!1965693) (not e!2914216))))

(declare-fun noDuplicateKeys!1682 (List!52138) Bool)

(assert (=> start!470972 (= res!1965693 (noDuplicateKeys!1682 oldBucket!40))))

(assert (=> start!470972 e!2914216))

(assert (=> start!470972 true))

(declare-fun e!2914211 () Bool)

(assert (=> start!470972 e!2914211))

(assert (=> start!470972 tp_is_empty!30021))

(assert (=> start!470972 e!2914205))

(declare-fun b!4669930 () Bool)

(declare-fun res!1965699 () Bool)

(assert (=> b!4669930 (=> res!1965699 e!2914213)))

(declare-fun lt!1832283 () ListMap!4633)

(declare-fun lt!1832290 () ListMap!4633)

(assert (=> b!4669930 (= res!1965699 (not (eq!937 lt!1832283 (+!2022 lt!1832290 (h!58192 oldBucket!40)))))))

(declare-fun b!4669931 () Bool)

(declare-fun e!2914208 () Bool)

(assert (=> b!4669931 (= e!2914213 e!2914208)))

(declare-fun res!1965703 () Bool)

(assert (=> b!4669931 (=> res!1965703 e!2914208)))

(assert (=> b!4669931 (= res!1965703 (not (eq!937 lt!1832283 lt!1832298)))))

(declare-fun lt!1832275 () ListMap!4633)

(assert (=> b!4669931 (eq!937 lt!1832275 (+!2022 lt!1832290 (h!58192 oldBucket!40)))))

(declare-fun lt!1832280 () ListMap!4633)

(declare-fun lt!1832300 () Unit!121032)

(declare-fun lemmaAddToEqMapsPreservesEq!70 (ListMap!4633 ListMap!4633 K!13355 V!13601) Unit!121032)

(assert (=> b!4669931 (= lt!1832300 (lemmaAddToEqMapsPreservesEq!70 lt!1832280 lt!1832290 (_1!29881 (h!58192 oldBucket!40)) (_2!29881 (h!58192 oldBucket!40))))))

(declare-fun b!4669932 () Bool)

(declare-fun res!1965691 () Bool)

(assert (=> b!4669932 (=> res!1965691 e!2914208)))

(assert (=> b!4669932 (= res!1965691 (not (eq!937 lt!1832277 lt!1832278)))))

(declare-fun b!4669933 () Bool)

(declare-fun e!2914215 () Bool)

(declare-fun e!2914217 () Bool)

(assert (=> b!4669933 (= e!2914215 (not e!2914217))))

(declare-fun res!1965696 () Bool)

(assert (=> b!4669933 (=> res!1965696 e!2914217)))

(get-info :version)

(assert (=> b!4669933 (= res!1965696 (or (and ((_ is Cons!52014) oldBucket!40) (= (_1!29881 (h!58192 oldBucket!40)) key!4968)) (not ((_ is Cons!52014) oldBucket!40)) (= (_1!29881 (h!58192 oldBucket!40)) key!4968)))))

(declare-fun e!2914212 () Bool)

(assert (=> b!4669933 e!2914212))

(declare-fun res!1965689 () Bool)

(assert (=> b!4669933 (=> (not res!1965689) (not e!2914212))))

(declare-fun lt!1832302 () ListMap!4633)

(assert (=> b!4669933 (= res!1965689 (= lt!1832277 (addToMapMapFromBucket!1139 oldBucket!40 lt!1832302)))))

(assert (=> b!4669933 (= lt!1832302 (extractMap!1738 Nil!52015))))

(assert (=> b!4669933 true))

(declare-fun b!4669934 () Bool)

(declare-fun res!1965701 () Bool)

(assert (=> b!4669934 (=> (not res!1965701) (not e!2914215))))

(assert (=> b!4669934 (= res!1965701 (allKeysSameHash!1536 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4669935 () Bool)

(declare-fun e!2914214 () Bool)

(assert (=> b!4669935 (= e!2914214 e!2914206)))

(declare-fun res!1965695 () Bool)

(assert (=> b!4669935 (=> res!1965695 e!2914206)))

(assert (=> b!4669935 (= res!1965695 (not (= lt!1832293 lt!1832298)))))

(assert (=> b!4669935 (= lt!1832298 (+!2022 lt!1832280 (h!58192 oldBucket!40)))))

(assert (=> b!4669935 (= lt!1832293 (-!622 lt!1832278 key!4968))))

(assert (=> b!4669935 (= lt!1832278 (+!2022 lt!1832285 (h!58192 oldBucket!40)))))

(declare-fun lt!1832286 () ListMap!4633)

(assert (=> b!4669935 (= lt!1832286 lt!1832275)))

(assert (=> b!4669935 (= lt!1832275 (+!2022 lt!1832280 (h!58192 oldBucket!40)))))

(assert (=> b!4669935 (= lt!1832286 (-!622 (+!2022 lt!1832285 (h!58192 oldBucket!40)) key!4968))))

(declare-fun lt!1832294 () Unit!121032)

(declare-fun addRemoveCommutativeForDiffKeys!65 (ListMap!4633 K!13355 V!13601 K!13355) Unit!121032)

(assert (=> b!4669935 (= lt!1832294 (addRemoveCommutativeForDiffKeys!65 lt!1832285 (_1!29881 (h!58192 oldBucket!40)) (_2!29881 (h!58192 oldBucket!40)) key!4968))))

(assert (=> b!4669935 (eq!937 lt!1832290 lt!1832280)))

(assert (=> b!4669935 (= lt!1832280 (-!622 lt!1832285 key!4968))))

(declare-fun lt!1832306 () Unit!121032)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!172 ((_ BitVec 64) List!52138 List!52138 K!13355 Hashable!6079) Unit!121032)

(assert (=> b!4669935 (= lt!1832306 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!172 hash!414 (t!359276 oldBucket!40) lt!1832304 key!4968 hashF!1389))))

(declare-fun b!4669936 () Bool)

(declare-fun res!1965687 () Bool)

(assert (=> b!4669936 (=> (not res!1965687) (not e!2914216))))

(assert (=> b!4669936 (= res!1965687 (noDuplicateKeys!1682 newBucket!224))))

(declare-fun b!4669937 () Bool)

(declare-fun res!1965692 () Bool)

(assert (=> b!4669937 (=> res!1965692 e!2914213)))

(assert (=> b!4669937 (= res!1965692 (not (= lt!1832289 (h!58192 oldBucket!40))))))

(declare-fun b!4669938 () Bool)

(assert (=> b!4669938 (= e!2914218 e!2914215)))

(declare-fun res!1965706 () Bool)

(assert (=> b!4669938 (=> (not res!1965706) (not e!2914215))))

(declare-fun lt!1832308 () (_ BitVec 64))

(assert (=> b!4669938 (= res!1965706 (= lt!1832308 hash!414))))

(declare-fun hash!3857 (Hashable!6079 K!13355) (_ BitVec 64))

(assert (=> b!4669938 (= lt!1832308 (hash!3857 hashF!1389 key!4968))))

(declare-fun b!4669939 () Bool)

(assert (=> b!4669939 (= e!2914212 (= lt!1832302 (ListMap!4634 Nil!52014)))))

(declare-fun b!4669940 () Bool)

(declare-fun res!1965694 () Bool)

(assert (=> b!4669940 (=> (not res!1965694) (not e!2914216))))

(assert (=> b!4669940 (= res!1965694 (= (removePairForKey!1305 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4669941 () Bool)

(assert (=> b!4669941 (= e!2914217 e!2914210)))

(declare-fun res!1965702 () Bool)

(assert (=> b!4669941 (=> res!1965702 e!2914210)))

(declare-fun containsKey!2828 (List!52138 K!13355) Bool)

(assert (=> b!4669941 (= res!1965702 (not (containsKey!2828 (t!359276 oldBucket!40) key!4968)))))

(assert (=> b!4669941 (containsKey!2828 oldBucket!40 key!4968)))

(declare-fun lt!1832303 () Unit!121032)

(declare-fun lemmaGetPairDefinedThenContainsKey!160 (List!52138 K!13355 Hashable!6079) Unit!121032)

(assert (=> b!4669941 (= lt!1832303 (lemmaGetPairDefinedThenContainsKey!160 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1832292 () List!52138)

(declare-datatypes ((Option!11926 0))(
  ( (None!11925) (Some!11925 (v!46283 tuple2!53174)) )
))
(declare-fun isDefined!9191 (Option!11926) Bool)

(declare-fun getPair!410 (List!52138 K!13355) Option!11926)

(assert (=> b!4669941 (isDefined!9191 (getPair!410 lt!1832292 key!4968))))

(declare-fun lambda!202330 () Int)

(declare-fun lt!1832284 () tuple2!53176)

(declare-fun lt!1832276 () Unit!121032)

(declare-fun forallContained!3310 (List!52139 Int tuple2!53176) Unit!121032)

(assert (=> b!4669941 (= lt!1832276 (forallContained!3310 lt!1832288 lambda!202330 lt!1832284))))

(declare-fun contains!15226 (List!52139 tuple2!53176) Bool)

(assert (=> b!4669941 (contains!15226 lt!1832288 lt!1832284)))

(assert (=> b!4669941 (= lt!1832284 (tuple2!53177 lt!1832308 lt!1832292))))

(declare-fun lt!1832299 () ListLongMap!3847)

(declare-fun lt!1832301 () Unit!121032)

(declare-fun lemmaGetValueImpliesTupleContained!215 (ListLongMap!3847 (_ BitVec 64) List!52138) Unit!121032)

(assert (=> b!4669941 (= lt!1832301 (lemmaGetValueImpliesTupleContained!215 lt!1832299 lt!1832308 lt!1832292))))

(declare-fun apply!12285 (ListLongMap!3847 (_ BitVec 64)) List!52138)

(assert (=> b!4669941 (= lt!1832292 (apply!12285 lt!1832299 lt!1832308))))

(declare-fun contains!15227 (ListLongMap!3847 (_ BitVec 64)) Bool)

(assert (=> b!4669941 (contains!15227 lt!1832299 lt!1832308)))

(declare-fun lt!1832307 () Unit!121032)

(declare-fun lemmaInGenMapThenLongMapContainsHash!616 (ListLongMap!3847 K!13355 Hashable!6079) Unit!121032)

(assert (=> b!4669941 (= lt!1832307 (lemmaInGenMapThenLongMapContainsHash!616 lt!1832299 key!4968 hashF!1389))))

(declare-fun lt!1832291 () Unit!121032)

(declare-fun lemmaInGenMapThenGetPairDefined!206 (ListLongMap!3847 K!13355 Hashable!6079) Unit!121032)

(assert (=> b!4669941 (= lt!1832291 (lemmaInGenMapThenGetPairDefined!206 lt!1832299 key!4968 hashF!1389))))

(assert (=> b!4669941 (= lt!1832299 (ListLongMap!3848 lt!1832288))))

(declare-fun tp!1343731 () Bool)

(declare-fun b!4669942 () Bool)

(assert (=> b!4669942 (= e!2914211 (and tp_is_empty!30021 tp_is_empty!30023 tp!1343731))))

(declare-fun b!4669943 () Bool)

(assert (=> b!4669943 (= e!2914208 true)))

(declare-fun lt!1832309 () Bool)

(assert (=> b!4669943 (= lt!1832309 (eq!937 lt!1832283 lt!1832279))))

(declare-fun b!4669944 () Bool)

(assert (=> b!4669944 (= e!2914209 e!2914214)))

(declare-fun res!1965705 () Bool)

(assert (=> b!4669944 (=> res!1965705 e!2914214)))

(assert (=> b!4669944 (= res!1965705 (not (eq!937 lt!1832283 (+!2022 lt!1832290 lt!1832289))))))

(assert (=> b!4669944 (= lt!1832290 (extractMap!1738 (Cons!52015 (tuple2!53177 hash!414 lt!1832304) Nil!52015)))))

(assert (=> b!4669944 (= lt!1832283 (extractMap!1738 (Cons!52015 (tuple2!53177 hash!414 newBucket!224) Nil!52015)))))

(assert (= (and start!470972 res!1965693) b!4669936))

(assert (= (and b!4669936 res!1965687) b!4669940))

(assert (= (and b!4669940 res!1965694) b!4669929))

(assert (= (and b!4669929 res!1965700) b!4669923))

(assert (= (and b!4669923 res!1965704) b!4669938))

(assert (= (and b!4669938 res!1965706) b!4669934))

(assert (= (and b!4669934 res!1965701) b!4669933))

(assert (= (and b!4669933 res!1965689) b!4669939))

(assert (= (and b!4669933 (not res!1965696)) b!4669941))

(assert (= (and b!4669941 (not res!1965702)) b!4669926))

(assert (= (and b!4669926 (not res!1965688)) b!4669924))

(assert (= (and b!4669924 (not res!1965698)) b!4669925))

(assert (= (and b!4669925 (not res!1965690)) b!4669944))

(assert (= (and b!4669944 (not res!1965705)) b!4669935))

(assert (= (and b!4669935 (not res!1965695)) b!4669927))

(assert (= (and b!4669927 (not res!1965697)) b!4669937))

(assert (= (and b!4669937 (not res!1965692)) b!4669930))

(assert (= (and b!4669930 (not res!1965699)) b!4669931))

(assert (= (and b!4669931 (not res!1965703)) b!4669932))

(assert (= (and b!4669932 (not res!1965691)) b!4669943))

(assert (= (and start!470972 ((_ is Cons!52014) oldBucket!40)) b!4669942))

(assert (= (and start!470972 ((_ is Cons!52014) newBucket!224)) b!4669928))

(declare-fun m!5562897 () Bool)

(assert (=> b!4669941 m!5562897))

(declare-fun m!5562899 () Bool)

(assert (=> b!4669941 m!5562899))

(declare-fun m!5562901 () Bool)

(assert (=> b!4669941 m!5562901))

(declare-fun m!5562903 () Bool)

(assert (=> b!4669941 m!5562903))

(declare-fun m!5562905 () Bool)

(assert (=> b!4669941 m!5562905))

(declare-fun m!5562907 () Bool)

(assert (=> b!4669941 m!5562907))

(declare-fun m!5562909 () Bool)

(assert (=> b!4669941 m!5562909))

(declare-fun m!5562911 () Bool)

(assert (=> b!4669941 m!5562911))

(assert (=> b!4669941 m!5562897))

(declare-fun m!5562913 () Bool)

(assert (=> b!4669941 m!5562913))

(declare-fun m!5562915 () Bool)

(assert (=> b!4669941 m!5562915))

(declare-fun m!5562917 () Bool)

(assert (=> b!4669941 m!5562917))

(declare-fun m!5562919 () Bool)

(assert (=> b!4669941 m!5562919))

(declare-fun m!5562921 () Bool)

(assert (=> b!4669935 m!5562921))

(declare-fun m!5562923 () Bool)

(assert (=> b!4669935 m!5562923))

(declare-fun m!5562925 () Bool)

(assert (=> b!4669935 m!5562925))

(declare-fun m!5562927 () Bool)

(assert (=> b!4669935 m!5562927))

(declare-fun m!5562929 () Bool)

(assert (=> b!4669935 m!5562929))

(assert (=> b!4669935 m!5562929))

(declare-fun m!5562931 () Bool)

(assert (=> b!4669935 m!5562931))

(declare-fun m!5562933 () Bool)

(assert (=> b!4669935 m!5562933))

(declare-fun m!5562935 () Bool)

(assert (=> b!4669935 m!5562935))

(declare-fun m!5562937 () Bool)

(assert (=> b!4669927 m!5562937))

(declare-fun m!5562939 () Bool)

(assert (=> b!4669927 m!5562939))

(declare-fun m!5562941 () Bool)

(assert (=> b!4669927 m!5562941))

(declare-fun m!5562943 () Bool)

(assert (=> b!4669927 m!5562943))

(declare-fun m!5562945 () Bool)

(assert (=> b!4669936 m!5562945))

(declare-fun m!5562947 () Bool)

(assert (=> b!4669943 m!5562947))

(declare-fun m!5562949 () Bool)

(assert (=> b!4669940 m!5562949))

(declare-fun m!5562951 () Bool)

(assert (=> b!4669929 m!5562951))

(declare-fun m!5562953 () Bool)

(assert (=> b!4669930 m!5562953))

(assert (=> b!4669930 m!5562953))

(declare-fun m!5562955 () Bool)

(assert (=> b!4669930 m!5562955))

(declare-fun m!5562957 () Bool)

(assert (=> start!470972 m!5562957))

(declare-fun m!5562959 () Bool)

(assert (=> b!4669923 m!5562959))

(declare-fun m!5562961 () Bool)

(assert (=> b!4669923 m!5562961))

(declare-fun m!5562963 () Bool)

(assert (=> b!4669938 m!5562963))

(declare-fun m!5562965 () Bool)

(assert (=> b!4669924 m!5562965))

(declare-fun m!5562967 () Bool)

(assert (=> b!4669932 m!5562967))

(declare-fun m!5562969 () Bool)

(assert (=> b!4669933 m!5562969))

(declare-fun m!5562971 () Bool)

(assert (=> b!4669933 m!5562971))

(declare-fun m!5562973 () Bool)

(assert (=> b!4669934 m!5562973))

(declare-fun m!5562975 () Bool)

(assert (=> b!4669931 m!5562975))

(assert (=> b!4669931 m!5562953))

(assert (=> b!4669931 m!5562953))

(declare-fun m!5562977 () Bool)

(assert (=> b!4669931 m!5562977))

(declare-fun m!5562979 () Bool)

(assert (=> b!4669931 m!5562979))

(declare-fun m!5562981 () Bool)

(assert (=> b!4669944 m!5562981))

(assert (=> b!4669944 m!5562981))

(declare-fun m!5562983 () Bool)

(assert (=> b!4669944 m!5562983))

(declare-fun m!5562985 () Bool)

(assert (=> b!4669944 m!5562985))

(declare-fun m!5562987 () Bool)

(assert (=> b!4669944 m!5562987))

(declare-fun m!5562989 () Bool)

(assert (=> b!4669925 m!5562989))

(declare-fun m!5562991 () Bool)

(assert (=> b!4669925 m!5562991))

(declare-fun m!5562993 () Bool)

(assert (=> b!4669925 m!5562993))

(declare-fun m!5562995 () Bool)

(assert (=> b!4669925 m!5562995))

(declare-fun m!5562997 () Bool)

(assert (=> b!4669925 m!5562997))

(declare-fun m!5562999 () Bool)

(assert (=> b!4669925 m!5562999))

(assert (=> b!4669925 m!5562993))

(assert (=> b!4669925 m!5562995))

(declare-fun m!5563001 () Bool)

(assert (=> b!4669925 m!5563001))

(declare-fun m!5563003 () Bool)

(assert (=> b!4669925 m!5563003))

(declare-fun m!5563005 () Bool)

(assert (=> b!4669925 m!5563005))

(declare-fun m!5563007 () Bool)

(assert (=> b!4669925 m!5563007))

(declare-fun m!5563009 () Bool)

(assert (=> b!4669925 m!5563009))

(declare-fun m!5563011 () Bool)

(assert (=> b!4669925 m!5563011))

(declare-fun m!5563013 () Bool)

(assert (=> b!4669925 m!5563013))

(declare-fun m!5563015 () Bool)

(assert (=> b!4669925 m!5563015))

(assert (=> b!4669925 m!5562997))

(assert (=> b!4669925 m!5563007))

(declare-fun m!5563017 () Bool)

(assert (=> b!4669925 m!5563017))

(declare-fun m!5563019 () Bool)

(assert (=> b!4669925 m!5563019))

(assert (=> b!4669925 m!5563005))

(declare-fun m!5563021 () Bool)

(assert (=> b!4669925 m!5563021))

(assert (=> b!4669925 m!5563019))

(assert (=> b!4669925 m!5563013))

(declare-fun m!5563023 () Bool)

(assert (=> b!4669925 m!5563023))

(assert (=> b!4669925 m!5563011))

(declare-fun m!5563025 () Bool)

(assert (=> b!4669926 m!5563025))

(declare-fun m!5563027 () Bool)

(assert (=> b!4669926 m!5563027))

(declare-fun m!5563029 () Bool)

(assert (=> b!4669926 m!5563029))

(check-sat (not b!4669932) (not b!4669940) (not b!4669927) (not b!4669926) (not b!4669931) (not b!4669941) (not b!4669936) (not b!4669935) (not b!4669938) tp_is_empty!30023 (not b!4669933) (not b!4669924) (not b!4669934) (not b!4669942) (not b!4669925) (not b!4669930) (not b!4669928) (not b!4669929) (not b!4669923) (not start!470972) (not b!4669943) tp_is_empty!30021 (not b!4669944))
(check-sat)
