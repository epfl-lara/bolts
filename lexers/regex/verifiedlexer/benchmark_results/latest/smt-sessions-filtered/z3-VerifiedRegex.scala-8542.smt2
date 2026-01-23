; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!449924 () Bool)

(assert start!449924)

(declare-fun bs!871482 () Bool)

(declare-fun b!4534998 () Bool)

(assert (= bs!871482 (and b!4534998 start!449924)))

(declare-fun lambda!175188 () Int)

(declare-fun lambda!175187 () Int)

(assert (=> bs!871482 (not (= lambda!175188 lambda!175187))))

(assert (=> b!4534998 true))

(assert (=> b!4534998 true))

(assert (=> b!4534998 true))

(declare-fun b!4534973 () Bool)

(declare-fun e!2825853 () Bool)

(declare-fun e!2825854 () Bool)

(assert (=> b!4534973 (= e!2825853 e!2825854)))

(declare-fun res!1889288 () Bool)

(assert (=> b!4534973 (=> res!1889288 e!2825854)))

(declare-datatypes ((K!12115 0))(
  ( (K!12116 (val!17963 Int)) )
))
(declare-datatypes ((V!12361 0))(
  ( (V!12362 (val!17964 Int)) )
))
(declare-datatypes ((tuple2!51194 0))(
  ( (tuple2!51195 (_1!28891 K!12115) (_2!28891 V!12361)) )
))
(declare-datatypes ((List!50852 0))(
  ( (Nil!50728) (Cons!50728 (h!56603 tuple2!51194) (t!357814 List!50852)) )
))
(declare-datatypes ((ListMap!3649 0))(
  ( (ListMap!3650 (toList!4387 List!50852)) )
))
(declare-fun lt!1710237 () ListMap!3649)

(declare-fun lt!1710212 () ListMap!3649)

(declare-fun eq!647 (ListMap!3649 ListMap!3649) Bool)

(assert (=> b!4534973 (= res!1889288 (not (eq!647 lt!1710237 lt!1710212)))))

(declare-fun lt!1710234 () ListMap!3649)

(assert (=> b!4534973 (eq!647 lt!1710234 lt!1710212)))

(declare-datatypes ((tuple2!51196 0))(
  ( (tuple2!51197 (_1!28892 (_ BitVec 64)) (_2!28892 List!50852)) )
))
(declare-fun lt!1710231 () tuple2!51196)

(declare-fun lt!1710227 () ListMap!3649)

(declare-fun addToMapMapFromBucket!717 (List!50852 ListMap!3649) ListMap!3649)

(assert (=> b!4534973 (= lt!1710212 (addToMapMapFromBucket!717 (_2!28892 lt!1710231) lt!1710227))))

(declare-fun lt!1710221 () ListMap!3649)

(declare-datatypes ((Unit!97618 0))(
  ( (Unit!97619) )
))
(declare-fun lt!1710211 () Unit!97618)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!66 (ListMap!3649 ListMap!3649 List!50852) Unit!97618)

(assert (=> b!4534973 (= lt!1710211 (lemmaAddToMapFromBucketPreservesEquivalence!66 lt!1710221 lt!1710227 (_2!28892 lt!1710231)))))

(declare-fun b!4534974 () Bool)

(declare-fun res!1889285 () Bool)

(declare-fun e!2825846 () Bool)

(assert (=> b!4534974 (=> res!1889285 e!2825846)))

(declare-datatypes ((List!50853 0))(
  ( (Nil!50729) (Cons!50729 (h!56604 tuple2!51196) (t!357815 List!50853)) )
))
(declare-datatypes ((ListLongMap!3019 0))(
  ( (ListLongMap!3020 (toList!4388 List!50853)) )
))
(declare-fun lt!1710228 () ListLongMap!3019)

(declare-fun head!9464 (ListLongMap!3019) tuple2!51196)

(assert (=> b!4534974 (= res!1889285 (not (= (head!9464 lt!1710228) lt!1710231)))))

(declare-fun b!4534975 () Bool)

(declare-fun e!2825847 () Bool)

(declare-fun e!2825843 () Bool)

(assert (=> b!4534975 (= e!2825847 e!2825843)))

(declare-fun res!1889287 () Bool)

(assert (=> b!4534975 (=> res!1889287 e!2825843)))

(declare-fun lt!1710224 () ListLongMap!3019)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13505 (ListLongMap!3019 (_ BitVec 64)) Bool)

(assert (=> b!4534975 (= res!1889287 (not (contains!13505 lt!1710224 hash!344)))))

(declare-fun lm!1477 () ListLongMap!3019)

(declare-fun tail!7786 (ListLongMap!3019) ListLongMap!3019)

(assert (=> b!4534975 (= lt!1710224 (tail!7786 lm!1477))))

(declare-fun b!4534976 () Bool)

(declare-fun tp!1338507 () Bool)

(declare-fun tp_is_empty!28039 () Bool)

(declare-fun tp_is_empty!28037 () Bool)

(declare-fun e!2825841 () Bool)

(assert (=> b!4534976 (= e!2825841 (and tp_is_empty!28037 tp_is_empty!28039 tp!1338507))))

(declare-fun b!4534977 () Bool)

(declare-fun res!1889277 () Bool)

(assert (=> b!4534977 (=> res!1889277 e!2825843)))

(declare-fun lt!1710213 () tuple2!51196)

(declare-fun contains!13506 (List!50853 tuple2!51196) Bool)

(assert (=> b!4534977 (= res!1889277 (not (contains!13506 (t!357815 (toList!4388 lm!1477)) lt!1710213)))))

(declare-fun b!4534978 () Bool)

(declare-fun res!1889283 () Bool)

(declare-fun e!2825840 () Bool)

(assert (=> b!4534978 (=> res!1889283 e!2825840)))

(declare-fun lt!1710243 () ListMap!3649)

(declare-fun lt!1710216 () ListMap!3649)

(assert (=> b!4534978 (= res!1889283 (not (eq!647 lt!1710243 lt!1710216)))))

(declare-fun b!4534979 () Bool)

(declare-fun e!2825856 () Bool)

(declare-fun e!2825848 () Bool)

(assert (=> b!4534979 (= e!2825856 e!2825848)))

(declare-fun res!1889293 () Bool)

(assert (=> b!4534979 (=> res!1889293 e!2825848)))

(declare-fun lt!1710229 () ListMap!3649)

(assert (=> b!4534979 (= res!1889293 (not (eq!647 lt!1710212 lt!1710229)))))

(assert (=> b!4534979 (= lt!1710212 lt!1710229)))

(declare-fun lt!1710214 () ListMap!3649)

(declare-fun key!3287 () K!12115)

(declare-fun -!416 (ListMap!3649 K!12115) ListMap!3649)

(assert (=> b!4534979 (= lt!1710229 (-!416 (addToMapMapFromBucket!717 (_2!28892 lt!1710231) lt!1710214) key!3287))))

(declare-fun lt!1710223 () Unit!97618)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!14 (ListMap!3649 K!12115 List!50852) Unit!97618)

(assert (=> b!4534979 (= lt!1710223 (lemmaAddToMapFromBucketMinusKeyIsCommutative!14 lt!1710214 key!3287 (_2!28892 lt!1710231)))))

(declare-fun b!4534980 () Bool)

(declare-fun e!2825839 () Bool)

(assert (=> b!4534980 (= e!2825839 e!2825856)))

(declare-fun res!1889272 () Bool)

(assert (=> b!4534980 (=> res!1889272 e!2825856)))

(declare-fun lt!1710218 () Bool)

(assert (=> b!4534980 (= res!1889272 lt!1710218)))

(declare-fun lt!1710236 () Unit!97618)

(declare-fun e!2825844 () Unit!97618)

(assert (=> b!4534980 (= lt!1710236 e!2825844)))

(declare-fun c!774424 () Bool)

(assert (=> b!4534980 (= c!774424 lt!1710218)))

(declare-fun containsKey!1854 (List!50852 K!12115) Bool)

(assert (=> b!4534980 (= lt!1710218 (containsKey!1854 (_2!28892 lt!1710231) key!3287))))

(declare-fun b!4534981 () Bool)

(declare-fun res!1889274 () Bool)

(declare-fun e!2825851 () Bool)

(assert (=> b!4534981 (=> (not res!1889274) (not e!2825851))))

(declare-datatypes ((Hashable!5585 0))(
  ( (HashableExt!5584 (__x!31288 Int)) )
))
(declare-fun hashF!1107 () Hashable!5585)

(declare-fun allKeysSameHashInMap!1297 (ListLongMap!3019 Hashable!5585) Bool)

(assert (=> b!4534981 (= res!1889274 (allKeysSameHashInMap!1297 lm!1477 hashF!1107))))

(declare-fun b!4534982 () Bool)

(declare-fun e!2825850 () Bool)

(declare-fun tp!1338506 () Bool)

(assert (=> b!4534982 (= e!2825850 tp!1338506)))

(declare-fun b!4534983 () Bool)

(declare-fun e!2825852 () Bool)

(declare-fun e!2825855 () Bool)

(assert (=> b!4534983 (= e!2825852 e!2825855)))

(declare-fun res!1889281 () Bool)

(assert (=> b!4534983 (=> res!1889281 e!2825855)))

(declare-fun containsKeyBiggerList!170 (List!50853 K!12115) Bool)

(assert (=> b!4534983 (= res!1889281 (not (containsKeyBiggerList!170 (t!357815 (toList!4388 lm!1477)) key!3287)))))

(assert (=> b!4534983 (containsKeyBiggerList!170 (toList!4388 lt!1710224) key!3287)))

(declare-fun lt!1710238 () Unit!97618)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!106 (ListLongMap!3019 K!12115 Hashable!5585) Unit!97618)

(assert (=> b!4534983 (= lt!1710238 (lemmaInLongMapThenContainsKeyBiggerList!106 lt!1710224 key!3287 hashF!1107))))

(declare-fun b!4534984 () Bool)

(declare-fun e!2825857 () Bool)

(assert (=> b!4534984 (= e!2825855 e!2825857)))

(declare-fun res!1889279 () Bool)

(assert (=> b!4534984 (=> res!1889279 e!2825857)))

(declare-fun contains!13507 (ListMap!3649 K!12115) Bool)

(declare-fun extractMap!1246 (List!50853) ListMap!3649)

(assert (=> b!4534984 (= res!1889279 (not (contains!13507 (extractMap!1246 (t!357815 (toList!4388 lm!1477))) key!3287)))))

(assert (=> b!4534984 (contains!13507 lt!1710214 key!3287)))

(assert (=> b!4534984 (= lt!1710214 (extractMap!1246 (toList!4388 lt!1710224)))))

(declare-fun lt!1710226 () Unit!97618)

(declare-fun lemmaListContainsThenExtractedMapContains!160 (ListLongMap!3019 K!12115 Hashable!5585) Unit!97618)

(assert (=> b!4534984 (= lt!1710226 (lemmaListContainsThenExtractedMapContains!160 lt!1710224 key!3287 hashF!1107))))

(declare-fun b!4534985 () Bool)

(declare-fun e!2825845 () Bool)

(assert (=> b!4534985 (= e!2825845 (not e!2825847))))

(declare-fun res!1889292 () Bool)

(assert (=> b!4534985 (=> res!1889292 e!2825847)))

(declare-fun lt!1710239 () List!50852)

(declare-fun newBucket!178 () List!50852)

(declare-fun removePairForKey!817 (List!50852 K!12115) List!50852)

(assert (=> b!4534985 (= res!1889292 (not (= newBucket!178 (removePairForKey!817 lt!1710239 key!3287))))))

(declare-fun lt!1710217 () Unit!97618)

(declare-fun forallContained!2586 (List!50853 Int tuple2!51196) Unit!97618)

(assert (=> b!4534985 (= lt!1710217 (forallContained!2586 (toList!4388 lm!1477) lambda!175187 lt!1710213))))

(assert (=> b!4534985 (contains!13506 (toList!4388 lm!1477) lt!1710213)))

(assert (=> b!4534985 (= lt!1710213 (tuple2!51197 hash!344 lt!1710239))))

(declare-fun lt!1710233 () Unit!97618)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!702 (List!50853 (_ BitVec 64) List!50852) Unit!97618)

(assert (=> b!4534985 (= lt!1710233 (lemmaGetValueByKeyImpliesContainsTuple!702 (toList!4388 lm!1477) hash!344 lt!1710239))))

(declare-fun apply!11927 (ListLongMap!3019 (_ BitVec 64)) List!50852)

(assert (=> b!4534985 (= lt!1710239 (apply!11927 lm!1477 hash!344))))

(declare-fun lt!1710244 () (_ BitVec 64))

(assert (=> b!4534985 (contains!13505 lm!1477 lt!1710244)))

(declare-fun lt!1710235 () Unit!97618)

(declare-fun lemmaInGenMapThenLongMapContainsHash!264 (ListLongMap!3019 K!12115 Hashable!5585) Unit!97618)

(assert (=> b!4534985 (= lt!1710235 (lemmaInGenMapThenLongMapContainsHash!264 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4534986 () Bool)

(declare-fun Unit!97620 () Unit!97618)

(assert (=> b!4534986 (= e!2825844 Unit!97620)))

(declare-fun b!4534987 () Bool)

(declare-fun res!1889280 () Bool)

(assert (=> b!4534987 (=> (not res!1889280) (not e!2825845))))

(declare-fun allKeysSameHash!1044 (List!50852 (_ BitVec 64) Hashable!5585) Bool)

(assert (=> b!4534987 (= res!1889280 (allKeysSameHash!1044 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4534988 () Bool)

(assert (=> b!4534988 (= e!2825843 e!2825852)))

(declare-fun res!1889278 () Bool)

(assert (=> b!4534988 (=> res!1889278 e!2825852)))

(declare-fun lt!1710232 () Bool)

(assert (=> b!4534988 (= res!1889278 lt!1710232)))

(declare-fun lt!1710242 () Unit!97618)

(declare-fun e!2825842 () Unit!97618)

(assert (=> b!4534988 (= lt!1710242 e!2825842)))

(declare-fun c!774425 () Bool)

(assert (=> b!4534988 (= c!774425 lt!1710232)))

(assert (=> b!4534988 (= lt!1710232 (not (containsKey!1854 lt!1710239 key!3287)))))

(declare-fun b!4534989 () Bool)

(assert (=> b!4534989 (= e!2825854 e!2825839)))

(declare-fun res!1889286 () Bool)

(assert (=> b!4534989 (=> res!1889286 e!2825839)))

(declare-fun noDuplicateKeys!1190 (List!50852) Bool)

(assert (=> b!4534989 (= res!1889286 (not (noDuplicateKeys!1190 (_2!28892 lt!1710231))))))

(declare-fun lt!1710241 () Unit!97618)

(assert (=> b!4534989 (= lt!1710241 (forallContained!2586 (toList!4388 lm!1477) lambda!175187 (h!56604 (toList!4388 lm!1477))))))

(declare-fun b!4534990 () Bool)

(declare-fun e!2825849 () Bool)

(assert (=> b!4534990 (= e!2825851 e!2825849)))

(declare-fun res!1889294 () Bool)

(assert (=> b!4534990 (=> (not res!1889294) (not e!2825849))))

(assert (=> b!4534990 (= res!1889294 (contains!13507 lt!1710243 key!3287))))

(assert (=> b!4534990 (= lt!1710243 (extractMap!1246 (toList!4388 lm!1477)))))

(declare-fun b!4534991 () Bool)

(assert (=> b!4534991 (= e!2825857 e!2825840)))

(declare-fun res!1889284 () Bool)

(assert (=> b!4534991 (=> res!1889284 e!2825840)))

(assert (=> b!4534991 (= res!1889284 (not (eq!647 lt!1710216 lt!1710243)))))

(declare-fun +!1590 (ListLongMap!3019 tuple2!51196) ListLongMap!3019)

(assert (=> b!4534991 (= lt!1710216 (extractMap!1246 (toList!4388 (+!1590 lt!1710224 lt!1710231))))))

(assert (=> b!4534991 (= lt!1710231 (head!9464 lm!1477))))

(assert (=> b!4534991 (eq!647 lt!1710221 lt!1710227)))

(assert (=> b!4534991 (= lt!1710227 (-!416 lt!1710214 key!3287))))

(declare-fun lt!1710222 () ListLongMap!3019)

(assert (=> b!4534991 (= lt!1710221 (extractMap!1246 (toList!4388 lt!1710222)))))

(declare-fun lt!1710225 () tuple2!51196)

(assert (=> b!4534991 (= lt!1710222 (+!1590 lt!1710224 lt!1710225))))

(assert (=> b!4534991 (= lt!1710225 (tuple2!51197 hash!344 newBucket!178))))

(declare-fun lt!1710215 () Unit!97618)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!175 (ListLongMap!3019 (_ BitVec 64) List!50852 K!12115 Hashable!5585) Unit!97618)

(assert (=> b!4534991 (= lt!1710215 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!175 lt!1710224 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4534992 () Bool)

(declare-fun Unit!97621 () Unit!97618)

(assert (=> b!4534992 (= e!2825842 Unit!97621)))

(declare-fun b!4534993 () Bool)

(declare-fun res!1889290 () Bool)

(assert (=> b!4534993 (=> res!1889290 e!2825843)))

(assert (=> b!4534993 (= res!1889290 (not (= (apply!11927 lt!1710224 hash!344) lt!1710239)))))

(declare-fun b!4534994 () Bool)

(assert (=> b!4534994 (= e!2825846 e!2825853)))

(declare-fun res!1889271 () Bool)

(assert (=> b!4534994 (=> res!1889271 e!2825853)))

(assert (=> b!4534994 (= res!1889271 (not (eq!647 lt!1710237 lt!1710234)))))

(assert (=> b!4534994 (= lt!1710234 (addToMapMapFromBucket!717 (_2!28892 lt!1710231) lt!1710221))))

(assert (=> b!4534994 (= lt!1710237 (extractMap!1246 (toList!4388 lt!1710228)))))

(declare-fun b!4534995 () Bool)

(declare-fun forall!10327 (List!50853 Int) Bool)

(assert (=> b!4534995 (= e!2825848 (forall!10327 (toList!4388 lm!1477) lambda!175187))))

(declare-fun b!4534996 () Bool)

(declare-fun res!1889275 () Bool)

(assert (=> b!4534996 (=> res!1889275 e!2825847)))

(assert (=> b!4534996 (= res!1889275 (not (noDuplicateKeys!1190 newBucket!178)))))

(declare-fun b!4534997 () Bool)

(assert (=> b!4534997 (= e!2825849 e!2825845)))

(declare-fun res!1889291 () Bool)

(assert (=> b!4534997 (=> (not res!1889291) (not e!2825845))))

(assert (=> b!4534997 (= res!1889291 (= lt!1710244 hash!344))))

(declare-fun hash!2893 (Hashable!5585 K!12115) (_ BitVec 64))

(assert (=> b!4534997 (= lt!1710244 (hash!2893 hashF!1107 key!3287))))

(declare-fun Unit!97622 () Unit!97618)

(assert (=> b!4534998 (= e!2825844 Unit!97622)))

(assert (=> b!4534998 (not (= hash!344 (_1!28892 lt!1710231)))))

(declare-datatypes ((Option!11181 0))(
  ( (None!11180) (Some!11180 (v!44854 tuple2!51194)) )
))
(declare-fun lt!1710220 () Option!11181)

(declare-fun getPair!206 (List!50852 K!12115) Option!11181)

(assert (=> b!4534998 (= lt!1710220 (getPair!206 (_2!28892 lt!1710231) key!3287))))

(declare-fun lt!1710230 () Unit!97618)

(assert (=> b!4534998 (= lt!1710230 (forallContained!2586 (toList!4388 lm!1477) lambda!175188 (h!56604 (toList!4388 lm!1477))))))

(declare-fun lambda!175189 () Int)

(declare-fun lt!1710240 () Unit!97618)

(declare-fun forallContained!2587 (List!50852 Int tuple2!51194) Unit!97618)

(declare-fun get!16663 (Option!11181) tuple2!51194)

(assert (=> b!4534998 (= lt!1710240 (forallContained!2587 (_2!28892 (h!56604 (toList!4388 lm!1477))) lambda!175189 (tuple2!51195 key!3287 (_2!28891 (get!16663 lt!1710220)))))))

(assert (=> b!4534998 false))

(declare-fun b!4534999 () Bool)

(declare-fun Unit!97623 () Unit!97618)

(assert (=> b!4534999 (= e!2825842 Unit!97623)))

(declare-fun lt!1710219 () Unit!97618)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!178 (ListLongMap!3019 K!12115 Hashable!5585) Unit!97618)

(assert (=> b!4534999 (= lt!1710219 (lemmaNotInItsHashBucketThenNotInMap!178 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4534999 false))

(declare-fun res!1889273 () Bool)

(assert (=> start!449924 (=> (not res!1889273) (not e!2825851))))

(assert (=> start!449924 (= res!1889273 (forall!10327 (toList!4388 lm!1477) lambda!175187))))

(assert (=> start!449924 e!2825851))

(assert (=> start!449924 true))

(declare-fun inv!66299 (ListLongMap!3019) Bool)

(assert (=> start!449924 (and (inv!66299 lm!1477) e!2825850)))

(assert (=> start!449924 tp_is_empty!28037))

(assert (=> start!449924 e!2825841))

(declare-fun b!4535000 () Bool)

(assert (=> b!4535000 (= e!2825840 e!2825846)))

(declare-fun res!1889289 () Bool)

(assert (=> b!4535000 (=> res!1889289 e!2825846)))

(assert (=> b!4535000 (= res!1889289 (not (= lt!1710228 (+!1590 lm!1477 lt!1710225))))))

(assert (=> b!4535000 (= lt!1710228 (+!1590 lt!1710222 lt!1710231))))

(declare-fun b!4535001 () Bool)

(declare-fun res!1889276 () Bool)

(assert (=> b!4535001 (=> res!1889276 e!2825840)))

(assert (=> b!4535001 (= res!1889276 (bvsge (_1!28892 lt!1710231) hash!344))))

(declare-fun b!4535002 () Bool)

(declare-fun res!1889282 () Bool)

(assert (=> b!4535002 (=> res!1889282 e!2825847)))

(get-info :version)

(assert (=> b!4535002 (= res!1889282 (or ((_ is Nil!50729) (toList!4388 lm!1477)) (= (_1!28892 (h!56604 (toList!4388 lm!1477))) hash!344)))))

(assert (= (and start!449924 res!1889273) b!4534981))

(assert (= (and b!4534981 res!1889274) b!4534990))

(assert (= (and b!4534990 res!1889294) b!4534997))

(assert (= (and b!4534997 res!1889291) b!4534987))

(assert (= (and b!4534987 res!1889280) b!4534985))

(assert (= (and b!4534985 (not res!1889292)) b!4534996))

(assert (= (and b!4534996 (not res!1889275)) b!4535002))

(assert (= (and b!4535002 (not res!1889282)) b!4534975))

(assert (= (and b!4534975 (not res!1889287)) b!4534993))

(assert (= (and b!4534993 (not res!1889290)) b!4534977))

(assert (= (and b!4534977 (not res!1889277)) b!4534988))

(assert (= (and b!4534988 c!774425) b!4534999))

(assert (= (and b!4534988 (not c!774425)) b!4534992))

(assert (= (and b!4534988 (not res!1889278)) b!4534983))

(assert (= (and b!4534983 (not res!1889281)) b!4534984))

(assert (= (and b!4534984 (not res!1889279)) b!4534991))

(assert (= (and b!4534991 (not res!1889284)) b!4534978))

(assert (= (and b!4534978 (not res!1889283)) b!4535001))

(assert (= (and b!4535001 (not res!1889276)) b!4535000))

(assert (= (and b!4535000 (not res!1889289)) b!4534974))

(assert (= (and b!4534974 (not res!1889285)) b!4534994))

(assert (= (and b!4534994 (not res!1889271)) b!4534973))

(assert (= (and b!4534973 (not res!1889288)) b!4534989))

(assert (= (and b!4534989 (not res!1889286)) b!4534980))

(assert (= (and b!4534980 c!774424) b!4534998))

(assert (= (and b!4534980 (not c!774424)) b!4534986))

(assert (= (and b!4534980 (not res!1889272)) b!4534979))

(assert (= (and b!4534979 (not res!1889293)) b!4534995))

(assert (= start!449924 b!4534982))

(assert (= (and start!449924 ((_ is Cons!50728) newBucket!178)) b!4534976))

(declare-fun m!5296283 () Bool)

(assert (=> b!4534995 m!5296283))

(declare-fun m!5296285 () Bool)

(assert (=> b!4534979 m!5296285))

(declare-fun m!5296287 () Bool)

(assert (=> b!4534979 m!5296287))

(assert (=> b!4534979 m!5296287))

(declare-fun m!5296289 () Bool)

(assert (=> b!4534979 m!5296289))

(declare-fun m!5296291 () Bool)

(assert (=> b!4534979 m!5296291))

(declare-fun m!5296293 () Bool)

(assert (=> b!4534985 m!5296293))

(declare-fun m!5296295 () Bool)

(assert (=> b!4534985 m!5296295))

(declare-fun m!5296297 () Bool)

(assert (=> b!4534985 m!5296297))

(declare-fun m!5296299 () Bool)

(assert (=> b!4534985 m!5296299))

(declare-fun m!5296301 () Bool)

(assert (=> b!4534985 m!5296301))

(declare-fun m!5296303 () Bool)

(assert (=> b!4534985 m!5296303))

(declare-fun m!5296305 () Bool)

(assert (=> b!4534985 m!5296305))

(declare-fun m!5296307 () Bool)

(assert (=> b!4534975 m!5296307))

(declare-fun m!5296309 () Bool)

(assert (=> b!4534975 m!5296309))

(declare-fun m!5296311 () Bool)

(assert (=> b!4534978 m!5296311))

(declare-fun m!5296313 () Bool)

(assert (=> b!4534974 m!5296313))

(declare-fun m!5296315 () Bool)

(assert (=> b!4534981 m!5296315))

(declare-fun m!5296317 () Bool)

(assert (=> b!4534994 m!5296317))

(declare-fun m!5296319 () Bool)

(assert (=> b!4534994 m!5296319))

(declare-fun m!5296321 () Bool)

(assert (=> b!4534994 m!5296321))

(declare-fun m!5296323 () Bool)

(assert (=> b!4534980 m!5296323))

(declare-fun m!5296325 () Bool)

(assert (=> b!4535000 m!5296325))

(declare-fun m!5296327 () Bool)

(assert (=> b!4535000 m!5296327))

(declare-fun m!5296329 () Bool)

(assert (=> b!4534973 m!5296329))

(declare-fun m!5296331 () Bool)

(assert (=> b!4534973 m!5296331))

(declare-fun m!5296333 () Bool)

(assert (=> b!4534973 m!5296333))

(declare-fun m!5296335 () Bool)

(assert (=> b!4534973 m!5296335))

(declare-fun m!5296337 () Bool)

(assert (=> b!4534991 m!5296337))

(declare-fun m!5296339 () Bool)

(assert (=> b!4534991 m!5296339))

(declare-fun m!5296341 () Bool)

(assert (=> b!4534991 m!5296341))

(declare-fun m!5296343 () Bool)

(assert (=> b!4534991 m!5296343))

(declare-fun m!5296345 () Bool)

(assert (=> b!4534991 m!5296345))

(declare-fun m!5296347 () Bool)

(assert (=> b!4534991 m!5296347))

(declare-fun m!5296349 () Bool)

(assert (=> b!4534991 m!5296349))

(declare-fun m!5296351 () Bool)

(assert (=> b!4534991 m!5296351))

(declare-fun m!5296353 () Bool)

(assert (=> b!4534991 m!5296353))

(declare-fun m!5296355 () Bool)

(assert (=> b!4534989 m!5296355))

(declare-fun m!5296357 () Bool)

(assert (=> b!4534989 m!5296357))

(declare-fun m!5296359 () Bool)

(assert (=> b!4534984 m!5296359))

(declare-fun m!5296361 () Bool)

(assert (=> b!4534984 m!5296361))

(declare-fun m!5296363 () Bool)

(assert (=> b!4534984 m!5296363))

(declare-fun m!5296365 () Bool)

(assert (=> b!4534984 m!5296365))

(assert (=> b!4534984 m!5296363))

(declare-fun m!5296367 () Bool)

(assert (=> b!4534984 m!5296367))

(declare-fun m!5296369 () Bool)

(assert (=> b!4534987 m!5296369))

(declare-fun m!5296371 () Bool)

(assert (=> b!4534996 m!5296371))

(declare-fun m!5296373 () Bool)

(assert (=> b!4534990 m!5296373))

(declare-fun m!5296375 () Bool)

(assert (=> b!4534990 m!5296375))

(declare-fun m!5296377 () Bool)

(assert (=> b!4534977 m!5296377))

(declare-fun m!5296379 () Bool)

(assert (=> b!4534997 m!5296379))

(declare-fun m!5296381 () Bool)

(assert (=> b!4534983 m!5296381))

(declare-fun m!5296383 () Bool)

(assert (=> b!4534983 m!5296383))

(declare-fun m!5296385 () Bool)

(assert (=> b!4534983 m!5296385))

(declare-fun m!5296387 () Bool)

(assert (=> b!4534993 m!5296387))

(declare-fun m!5296389 () Bool)

(assert (=> b!4534999 m!5296389))

(assert (=> start!449924 m!5296283))

(declare-fun m!5296391 () Bool)

(assert (=> start!449924 m!5296391))

(declare-fun m!5296393 () Bool)

(assert (=> b!4534998 m!5296393))

(declare-fun m!5296395 () Bool)

(assert (=> b!4534998 m!5296395))

(declare-fun m!5296397 () Bool)

(assert (=> b!4534998 m!5296397))

(declare-fun m!5296399 () Bool)

(assert (=> b!4534998 m!5296399))

(declare-fun m!5296401 () Bool)

(assert (=> b!4534988 m!5296401))

(check-sat (not b!4534978) (not b!4534984) (not start!449924) (not b!4534997) (not b!4534994) (not b!4534990) (not b!4534991) tp_is_empty!28039 (not b!4534983) (not b!4534982) (not b!4534999) (not b!4534975) (not b!4535000) (not b!4534988) (not b!4534989) (not b!4534979) (not b!4534980) (not b!4534976) (not b!4534993) (not b!4534973) (not b!4534985) (not b!4534987) tp_is_empty!28037 (not b!4534998) (not b!4534995) (not b!4534974) (not b!4534977) (not b!4534996) (not b!4534981))
(check-sat)
