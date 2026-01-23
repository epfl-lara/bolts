; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!443724 () Bool)

(assert start!443724)

(declare-fun b!4496857 () Bool)

(declare-fun res!1869238 () Bool)

(declare-fun e!2801090 () Bool)

(assert (=> b!4496857 (=> res!1869238 e!2801090)))

(declare-datatypes ((K!11945 0))(
  ( (K!11946 (val!17827 Int)) )
))
(declare-datatypes ((V!12191 0))(
  ( (V!12192 (val!17828 Int)) )
))
(declare-datatypes ((tuple2!50922 0))(
  ( (tuple2!50923 (_1!28755 K!11945) (_2!28755 V!12191)) )
))
(declare-datatypes ((List!50658 0))(
  ( (Nil!50534) (Cons!50534 (h!56351 tuple2!50922) (t!357616 List!50658)) )
))
(declare-datatypes ((tuple2!50924 0))(
  ( (tuple2!50925 (_1!28756 (_ BitVec 64)) (_2!28756 List!50658)) )
))
(declare-fun lt!1678886 () tuple2!50924)

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4496857 (= res!1869238 (bvsge (_1!28756 lt!1678886) hash!344))))

(declare-fun b!4496858 () Bool)

(declare-fun res!1869240 () Bool)

(declare-fun e!2801092 () Bool)

(assert (=> b!4496858 (=> res!1869240 e!2801092)))

(declare-fun newBucket!178 () List!50658)

(declare-fun noDuplicateKeys!1122 (List!50658) Bool)

(assert (=> b!4496858 (= res!1869240 (not (noDuplicateKeys!1122 newBucket!178)))))

(declare-fun b!4496860 () Bool)

(declare-fun e!2801091 () Bool)

(declare-fun e!2801095 () Bool)

(assert (=> b!4496860 (= e!2801091 e!2801095)))

(declare-fun res!1869232 () Bool)

(assert (=> b!4496860 (=> (not res!1869232) (not e!2801095))))

(declare-fun lt!1678888 () (_ BitVec 64))

(assert (=> b!4496860 (= res!1869232 (= lt!1678888 hash!344))))

(declare-datatypes ((Hashable!5517 0))(
  ( (HashableExt!5516 (__x!31220 Int)) )
))
(declare-fun hashF!1107 () Hashable!5517)

(declare-fun key!3287 () K!11945)

(declare-fun hash!2675 (Hashable!5517 K!11945) (_ BitVec 64))

(assert (=> b!4496860 (= lt!1678888 (hash!2675 hashF!1107 key!3287))))

(declare-fun b!4496861 () Bool)

(declare-fun e!2801093 () Bool)

(declare-fun tp!1337431 () Bool)

(assert (=> b!4496861 (= e!2801093 tp!1337431)))

(declare-fun b!4496862 () Bool)

(declare-fun e!2801086 () Bool)

(assert (=> b!4496862 (= e!2801086 e!2801090)))

(declare-fun res!1869224 () Bool)

(assert (=> b!4496862 (=> res!1869224 e!2801090)))

(declare-datatypes ((ListMap!3513 0))(
  ( (ListMap!3514 (toList!4251 List!50658)) )
))
(declare-fun lt!1678898 () ListMap!3513)

(declare-fun lt!1678892 () ListMap!3513)

(declare-fun eq!579 (ListMap!3513 ListMap!3513) Bool)

(assert (=> b!4496862 (= res!1869224 (not (eq!579 lt!1678898 lt!1678892)))))

(declare-datatypes ((List!50659 0))(
  ( (Nil!50535) (Cons!50535 (h!56352 tuple2!50924) (t!357617 List!50659)) )
))
(declare-datatypes ((ListLongMap!2883 0))(
  ( (ListLongMap!2884 (toList!4252 List!50659)) )
))
(declare-fun lt!1678893 () ListLongMap!2883)

(declare-fun extractMap!1178 (List!50659) ListMap!3513)

(declare-fun +!1466 (ListLongMap!2883 tuple2!50924) ListLongMap!2883)

(assert (=> b!4496862 (= lt!1678898 (extractMap!1178 (toList!4252 (+!1466 lt!1678893 lt!1678886))))))

(declare-fun lm!1477 () ListLongMap!2883)

(declare-fun head!9338 (ListLongMap!2883) tuple2!50924)

(assert (=> b!4496862 (= lt!1678886 (head!9338 lm!1477))))

(declare-fun lt!1678896 () ListLongMap!2883)

(declare-fun lt!1678891 () ListMap!3513)

(declare-fun -!348 (ListMap!3513 K!11945) ListMap!3513)

(assert (=> b!4496862 (eq!579 (extractMap!1178 (toList!4252 lt!1678896)) (-!348 lt!1678891 key!3287))))

(declare-fun lt!1678890 () tuple2!50924)

(assert (=> b!4496862 (= lt!1678896 (+!1466 lt!1678893 lt!1678890))))

(assert (=> b!4496862 (= lt!1678890 (tuple2!50925 hash!344 newBucket!178))))

(declare-datatypes ((Unit!91544 0))(
  ( (Unit!91545) )
))
(declare-fun lt!1678899 () Unit!91544)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!107 (ListLongMap!2883 (_ BitVec 64) List!50658 K!11945 Hashable!5517) Unit!91544)

(assert (=> b!4496862 (= lt!1678899 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!107 lt!1678893 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4496863 () Bool)

(declare-fun e!2801094 () Bool)

(declare-fun e!2801096 () Bool)

(assert (=> b!4496863 (= e!2801094 e!2801096)))

(declare-fun res!1869234 () Bool)

(assert (=> b!4496863 (=> res!1869234 e!2801096)))

(declare-fun lt!1678900 () Bool)

(assert (=> b!4496863 (= res!1869234 lt!1678900)))

(declare-fun lt!1678887 () Unit!91544)

(declare-fun e!2801088 () Unit!91544)

(assert (=> b!4496863 (= lt!1678887 e!2801088)))

(declare-fun c!766285 () Bool)

(assert (=> b!4496863 (= c!766285 lt!1678900)))

(declare-fun lt!1678889 () List!50658)

(declare-fun containsKey!1670 (List!50658 K!11945) Bool)

(assert (=> b!4496863 (= lt!1678900 (not (containsKey!1670 lt!1678889 key!3287)))))

(declare-fun b!4496864 () Bool)

(declare-fun res!1869223 () Bool)

(assert (=> b!4496864 (=> res!1869223 e!2801092)))

(get-info :version)

(assert (=> b!4496864 (= res!1869223 (or ((_ is Nil!50535) (toList!4252 lm!1477)) (= (_1!28756 (h!56352 (toList!4252 lm!1477))) hash!344)))))

(declare-fun b!4496865 () Bool)

(declare-fun Unit!91546 () Unit!91544)

(assert (=> b!4496865 (= e!2801088 Unit!91546)))

(declare-fun b!4496866 () Bool)

(declare-fun res!1869226 () Bool)

(assert (=> b!4496866 (=> res!1869226 e!2801094)))

(declare-fun apply!11859 (ListLongMap!2883 (_ BitVec 64)) List!50658)

(assert (=> b!4496866 (= res!1869226 (not (= (apply!11859 lt!1678893 hash!344) lt!1678889)))))

(declare-fun b!4496867 () Bool)

(declare-fun e!2801087 () Bool)

(assert (=> b!4496867 (= e!2801096 e!2801087)))

(declare-fun res!1869227 () Bool)

(assert (=> b!4496867 (=> res!1869227 e!2801087)))

(declare-fun containsKeyBiggerList!102 (List!50659 K!11945) Bool)

(assert (=> b!4496867 (= res!1869227 (not (containsKeyBiggerList!102 (t!357617 (toList!4252 lm!1477)) key!3287)))))

(assert (=> b!4496867 (containsKeyBiggerList!102 (toList!4252 lt!1678893) key!3287)))

(declare-fun lt!1678884 () Unit!91544)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!38 (ListLongMap!2883 K!11945 Hashable!5517) Unit!91544)

(assert (=> b!4496867 (= lt!1678884 (lemmaInLongMapThenContainsKeyBiggerList!38 lt!1678893 key!3287 hashF!1107))))

(declare-fun tp_is_empty!27765 () Bool)

(declare-fun tp_is_empty!27767 () Bool)

(declare-fun e!2801089 () Bool)

(declare-fun tp!1337430 () Bool)

(declare-fun b!4496868 () Bool)

(assert (=> b!4496868 (= e!2801089 (and tp_is_empty!27765 tp_is_empty!27767 tp!1337430))))

(declare-fun b!4496869 () Bool)

(assert (=> b!4496869 (= e!2801092 e!2801094)))

(declare-fun res!1869228 () Bool)

(assert (=> b!4496869 (=> res!1869228 e!2801094)))

(declare-fun contains!13199 (ListLongMap!2883 (_ BitVec 64)) Bool)

(assert (=> b!4496869 (= res!1869228 (not (contains!13199 lt!1678893 hash!344)))))

(declare-fun tail!7660 (ListLongMap!2883) ListLongMap!2883)

(assert (=> b!4496869 (= lt!1678893 (tail!7660 lm!1477))))

(declare-fun b!4496870 () Bool)

(declare-fun res!1869231 () Bool)

(assert (=> b!4496870 (=> res!1869231 e!2801090)))

(assert (=> b!4496870 (= res!1869231 (not (= (+!1466 lt!1678896 lt!1678886) (+!1466 lm!1477 lt!1678890))))))

(declare-fun b!4496871 () Bool)

(assert (=> b!4496871 (= e!2801087 e!2801086)))

(declare-fun res!1869225 () Bool)

(assert (=> b!4496871 (=> res!1869225 e!2801086)))

(declare-fun contains!13200 (ListMap!3513 K!11945) Bool)

(assert (=> b!4496871 (= res!1869225 (not (contains!13200 (extractMap!1178 (t!357617 (toList!4252 lm!1477))) key!3287)))))

(assert (=> b!4496871 (contains!13200 lt!1678891 key!3287)))

(assert (=> b!4496871 (= lt!1678891 (extractMap!1178 (toList!4252 lt!1678893)))))

(declare-fun lt!1678895 () Unit!91544)

(declare-fun lemmaListContainsThenExtractedMapContains!92 (ListLongMap!2883 K!11945 Hashable!5517) Unit!91544)

(assert (=> b!4496871 (= lt!1678895 (lemmaListContainsThenExtractedMapContains!92 lt!1678893 key!3287 hashF!1107))))

(declare-fun b!4496872 () Bool)

(declare-fun e!2801097 () Bool)

(assert (=> b!4496872 (= e!2801097 e!2801091)))

(declare-fun res!1869229 () Bool)

(assert (=> b!4496872 (=> (not res!1869229) (not e!2801091))))

(assert (=> b!4496872 (= res!1869229 (contains!13200 lt!1678892 key!3287))))

(assert (=> b!4496872 (= lt!1678892 (extractMap!1178 (toList!4252 lm!1477)))))

(declare-fun b!4496873 () Bool)

(declare-fun isEmpty!28587 (ListLongMap!2883) Bool)

(assert (=> b!4496873 (= e!2801090 (not (isEmpty!28587 lm!1477)))))

(declare-fun b!4496874 () Bool)

(declare-fun res!1869230 () Bool)

(assert (=> b!4496874 (=> (not res!1869230) (not e!2801097))))

(declare-fun allKeysSameHashInMap!1229 (ListLongMap!2883 Hashable!5517) Bool)

(assert (=> b!4496874 (= res!1869230 (allKeysSameHashInMap!1229 lm!1477 hashF!1107))))

(declare-fun b!4496875 () Bool)

(declare-fun res!1869233 () Bool)

(assert (=> b!4496875 (=> res!1869233 e!2801090)))

(assert (=> b!4496875 (= res!1869233 (not (eq!579 lt!1678892 lt!1678898)))))

(declare-fun b!4496876 () Bool)

(assert (=> b!4496876 (= e!2801095 (not e!2801092))))

(declare-fun res!1869239 () Bool)

(assert (=> b!4496876 (=> res!1869239 e!2801092)))

(declare-fun removePairForKey!749 (List!50658 K!11945) List!50658)

(assert (=> b!4496876 (= res!1869239 (not (= newBucket!178 (removePairForKey!749 lt!1678889 key!3287))))))

(declare-fun lambda!168249 () Int)

(declare-fun lt!1678885 () tuple2!50924)

(declare-fun lt!1678897 () Unit!91544)

(declare-fun forallContained!2421 (List!50659 Int tuple2!50924) Unit!91544)

(assert (=> b!4496876 (= lt!1678897 (forallContained!2421 (toList!4252 lm!1477) lambda!168249 lt!1678885))))

(declare-fun contains!13201 (List!50659 tuple2!50924) Bool)

(assert (=> b!4496876 (contains!13201 (toList!4252 lm!1477) lt!1678885)))

(assert (=> b!4496876 (= lt!1678885 (tuple2!50925 hash!344 lt!1678889))))

(declare-fun lt!1678902 () Unit!91544)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!634 (List!50659 (_ BitVec 64) List!50658) Unit!91544)

(assert (=> b!4496876 (= lt!1678902 (lemmaGetValueByKeyImpliesContainsTuple!634 (toList!4252 lm!1477) hash!344 lt!1678889))))

(assert (=> b!4496876 (= lt!1678889 (apply!11859 lm!1477 hash!344))))

(assert (=> b!4496876 (contains!13199 lm!1477 lt!1678888)))

(declare-fun lt!1678894 () Unit!91544)

(declare-fun lemmaInGenMapThenLongMapContainsHash!196 (ListLongMap!2883 K!11945 Hashable!5517) Unit!91544)

(assert (=> b!4496876 (= lt!1678894 (lemmaInGenMapThenLongMapContainsHash!196 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4496859 () Bool)

(declare-fun res!1869236 () Bool)

(assert (=> b!4496859 (=> (not res!1869236) (not e!2801095))))

(declare-fun allKeysSameHash!976 (List!50658 (_ BitVec 64) Hashable!5517) Bool)

(assert (=> b!4496859 (= res!1869236 (allKeysSameHash!976 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1869237 () Bool)

(assert (=> start!443724 (=> (not res!1869237) (not e!2801097))))

(declare-fun forall!10167 (List!50659 Int) Bool)

(assert (=> start!443724 (= res!1869237 (forall!10167 (toList!4252 lm!1477) lambda!168249))))

(assert (=> start!443724 e!2801097))

(assert (=> start!443724 true))

(declare-fun inv!66129 (ListLongMap!2883) Bool)

(assert (=> start!443724 (and (inv!66129 lm!1477) e!2801093)))

(assert (=> start!443724 tp_is_empty!27765))

(assert (=> start!443724 e!2801089))

(declare-fun b!4496877 () Bool)

(declare-fun Unit!91547 () Unit!91544)

(assert (=> b!4496877 (= e!2801088 Unit!91547)))

(declare-fun lt!1678901 () Unit!91544)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!110 (ListLongMap!2883 K!11945 Hashable!5517) Unit!91544)

(assert (=> b!4496877 (= lt!1678901 (lemmaNotInItsHashBucketThenNotInMap!110 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4496877 false))

(declare-fun b!4496878 () Bool)

(declare-fun res!1869235 () Bool)

(assert (=> b!4496878 (=> res!1869235 e!2801094)))

(assert (=> b!4496878 (= res!1869235 (not (contains!13201 (t!357617 (toList!4252 lm!1477)) lt!1678885)))))

(assert (= (and start!443724 res!1869237) b!4496874))

(assert (= (and b!4496874 res!1869230) b!4496872))

(assert (= (and b!4496872 res!1869229) b!4496860))

(assert (= (and b!4496860 res!1869232) b!4496859))

(assert (= (and b!4496859 res!1869236) b!4496876))

(assert (= (and b!4496876 (not res!1869239)) b!4496858))

(assert (= (and b!4496858 (not res!1869240)) b!4496864))

(assert (= (and b!4496864 (not res!1869223)) b!4496869))

(assert (= (and b!4496869 (not res!1869228)) b!4496866))

(assert (= (and b!4496866 (not res!1869226)) b!4496878))

(assert (= (and b!4496878 (not res!1869235)) b!4496863))

(assert (= (and b!4496863 c!766285) b!4496877))

(assert (= (and b!4496863 (not c!766285)) b!4496865))

(assert (= (and b!4496863 (not res!1869234)) b!4496867))

(assert (= (and b!4496867 (not res!1869227)) b!4496871))

(assert (= (and b!4496871 (not res!1869225)) b!4496862))

(assert (= (and b!4496862 (not res!1869224)) b!4496875))

(assert (= (and b!4496875 (not res!1869233)) b!4496857))

(assert (= (and b!4496857 (not res!1869238)) b!4496870))

(assert (= (and b!4496870 (not res!1869231)) b!4496873))

(assert (= start!443724 b!4496861))

(assert (= (and start!443724 ((_ is Cons!50534) newBucket!178)) b!4496868))

(declare-fun m!5225101 () Bool)

(assert (=> start!443724 m!5225101))

(declare-fun m!5225103 () Bool)

(assert (=> start!443724 m!5225103))

(declare-fun m!5225105 () Bool)

(assert (=> b!4496858 m!5225105))

(declare-fun m!5225107 () Bool)

(assert (=> b!4496860 m!5225107))

(declare-fun m!5225109 () Bool)

(assert (=> b!4496871 m!5225109))

(declare-fun m!5225111 () Bool)

(assert (=> b!4496871 m!5225111))

(declare-fun m!5225113 () Bool)

(assert (=> b!4496871 m!5225113))

(assert (=> b!4496871 m!5225113))

(declare-fun m!5225115 () Bool)

(assert (=> b!4496871 m!5225115))

(declare-fun m!5225117 () Bool)

(assert (=> b!4496871 m!5225117))

(declare-fun m!5225119 () Bool)

(assert (=> b!4496876 m!5225119))

(declare-fun m!5225121 () Bool)

(assert (=> b!4496876 m!5225121))

(declare-fun m!5225123 () Bool)

(assert (=> b!4496876 m!5225123))

(declare-fun m!5225125 () Bool)

(assert (=> b!4496876 m!5225125))

(declare-fun m!5225127 () Bool)

(assert (=> b!4496876 m!5225127))

(declare-fun m!5225129 () Bool)

(assert (=> b!4496876 m!5225129))

(declare-fun m!5225131 () Bool)

(assert (=> b!4496876 m!5225131))

(declare-fun m!5225133 () Bool)

(assert (=> b!4496862 m!5225133))

(declare-fun m!5225135 () Bool)

(assert (=> b!4496862 m!5225135))

(declare-fun m!5225137 () Bool)

(assert (=> b!4496862 m!5225137))

(declare-fun m!5225139 () Bool)

(assert (=> b!4496862 m!5225139))

(declare-fun m!5225141 () Bool)

(assert (=> b!4496862 m!5225141))

(assert (=> b!4496862 m!5225139))

(assert (=> b!4496862 m!5225137))

(declare-fun m!5225143 () Bool)

(assert (=> b!4496862 m!5225143))

(declare-fun m!5225145 () Bool)

(assert (=> b!4496862 m!5225145))

(declare-fun m!5225147 () Bool)

(assert (=> b!4496862 m!5225147))

(declare-fun m!5225149 () Bool)

(assert (=> b!4496862 m!5225149))

(declare-fun m!5225151 () Bool)

(assert (=> b!4496872 m!5225151))

(declare-fun m!5225153 () Bool)

(assert (=> b!4496872 m!5225153))

(declare-fun m!5225155 () Bool)

(assert (=> b!4496877 m!5225155))

(declare-fun m!5225157 () Bool)

(assert (=> b!4496874 m!5225157))

(declare-fun m!5225159 () Bool)

(assert (=> b!4496867 m!5225159))

(declare-fun m!5225161 () Bool)

(assert (=> b!4496867 m!5225161))

(declare-fun m!5225163 () Bool)

(assert (=> b!4496867 m!5225163))

(declare-fun m!5225165 () Bool)

(assert (=> b!4496878 m!5225165))

(declare-fun m!5225167 () Bool)

(assert (=> b!4496863 m!5225167))

(declare-fun m!5225169 () Bool)

(assert (=> b!4496873 m!5225169))

(declare-fun m!5225171 () Bool)

(assert (=> b!4496875 m!5225171))

(declare-fun m!5225173 () Bool)

(assert (=> b!4496866 m!5225173))

(declare-fun m!5225175 () Bool)

(assert (=> b!4496869 m!5225175))

(declare-fun m!5225177 () Bool)

(assert (=> b!4496869 m!5225177))

(declare-fun m!5225179 () Bool)

(assert (=> b!4496859 m!5225179))

(declare-fun m!5225181 () Bool)

(assert (=> b!4496870 m!5225181))

(declare-fun m!5225183 () Bool)

(assert (=> b!4496870 m!5225183))

(check-sat (not b!4496861) (not b!4496868) (not b!4496860) (not b!4496875) tp_is_empty!27765 (not b!4496874) (not b!4496878) (not b!4496862) (not b!4496867) (not b!4496869) (not start!443724) (not b!4496876) (not b!4496871) (not b!4496863) (not b!4496866) (not b!4496873) (not b!4496877) (not b!4496858) tp_is_empty!27767 (not b!4496859) (not b!4496870) (not b!4496872))
(check-sat)
(get-model)

(declare-fun bs!834139 () Bool)

(declare-fun d!1379273 () Bool)

(assert (= bs!834139 (and d!1379273 start!443724)))

(declare-fun lambda!168252 () Int)

(assert (=> bs!834139 (= lambda!168252 lambda!168249)))

(assert (=> d!1379273 (contains!13199 lm!1477 (hash!2675 hashF!1107 key!3287))))

(declare-fun lt!1678905 () Unit!91544)

(declare-fun choose!29071 (ListLongMap!2883 K!11945 Hashable!5517) Unit!91544)

(assert (=> d!1379273 (= lt!1678905 (choose!29071 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1379273 (forall!10167 (toList!4252 lm!1477) lambda!168252)))

(assert (=> d!1379273 (= (lemmaInGenMapThenLongMapContainsHash!196 lm!1477 key!3287 hashF!1107) lt!1678905)))

(declare-fun bs!834140 () Bool)

(assert (= bs!834140 d!1379273))

(assert (=> bs!834140 m!5225107))

(assert (=> bs!834140 m!5225107))

(declare-fun m!5225185 () Bool)

(assert (=> bs!834140 m!5225185))

(declare-fun m!5225187 () Bool)

(assert (=> bs!834140 m!5225187))

(declare-fun m!5225189 () Bool)

(assert (=> bs!834140 m!5225189))

(assert (=> b!4496876 d!1379273))

(declare-fun d!1379275 () Bool)

(declare-fun e!2801102 () Bool)

(assert (=> d!1379275 e!2801102))

(declare-fun res!1869243 () Bool)

(assert (=> d!1379275 (=> res!1869243 e!2801102)))

(declare-fun lt!1678914 () Bool)

(assert (=> d!1379275 (= res!1869243 (not lt!1678914))))

(declare-fun lt!1678916 () Bool)

(assert (=> d!1379275 (= lt!1678914 lt!1678916)))

(declare-fun lt!1678917 () Unit!91544)

(declare-fun e!2801103 () Unit!91544)

(assert (=> d!1379275 (= lt!1678917 e!2801103)))

(declare-fun c!766288 () Bool)

(assert (=> d!1379275 (= c!766288 lt!1678916)))

(declare-fun containsKey!1672 (List!50659 (_ BitVec 64)) Bool)

(assert (=> d!1379275 (= lt!1678916 (containsKey!1672 (toList!4252 lm!1477) lt!1678888))))

(assert (=> d!1379275 (= (contains!13199 lm!1477 lt!1678888) lt!1678914)))

(declare-fun b!4496885 () Bool)

(declare-fun lt!1678915 () Unit!91544)

(assert (=> b!4496885 (= e!2801103 lt!1678915)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!923 (List!50659 (_ BitVec 64)) Unit!91544)

(assert (=> b!4496885 (= lt!1678915 (lemmaContainsKeyImpliesGetValueByKeyDefined!923 (toList!4252 lm!1477) lt!1678888))))

(declare-datatypes ((Option!11040 0))(
  ( (None!11039) (Some!11039 (v!44521 List!50658)) )
))
(declare-fun isDefined!8326 (Option!11040) Bool)

(declare-fun getValueByKey!1020 (List!50659 (_ BitVec 64)) Option!11040)

(assert (=> b!4496885 (isDefined!8326 (getValueByKey!1020 (toList!4252 lm!1477) lt!1678888))))

(declare-fun b!4496886 () Bool)

(declare-fun Unit!91550 () Unit!91544)

(assert (=> b!4496886 (= e!2801103 Unit!91550)))

(declare-fun b!4496887 () Bool)

(assert (=> b!4496887 (= e!2801102 (isDefined!8326 (getValueByKey!1020 (toList!4252 lm!1477) lt!1678888)))))

(assert (= (and d!1379275 c!766288) b!4496885))

(assert (= (and d!1379275 (not c!766288)) b!4496886))

(assert (= (and d!1379275 (not res!1869243)) b!4496887))

(declare-fun m!5225191 () Bool)

(assert (=> d!1379275 m!5225191))

(declare-fun m!5225193 () Bool)

(assert (=> b!4496885 m!5225193))

(declare-fun m!5225195 () Bool)

(assert (=> b!4496885 m!5225195))

(assert (=> b!4496885 m!5225195))

(declare-fun m!5225197 () Bool)

(assert (=> b!4496885 m!5225197))

(assert (=> b!4496887 m!5225195))

(assert (=> b!4496887 m!5225195))

(assert (=> b!4496887 m!5225197))

(assert (=> b!4496876 d!1379275))

(declare-fun d!1379277 () Bool)

(declare-fun lt!1678928 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8249 (List!50659) (InoxSet tuple2!50924))

(assert (=> d!1379277 (= lt!1678928 (select (content!8249 (toList!4252 lm!1477)) lt!1678885))))

(declare-fun e!2801110 () Bool)

(assert (=> d!1379277 (= lt!1678928 e!2801110)))

(declare-fun res!1869253 () Bool)

(assert (=> d!1379277 (=> (not res!1869253) (not e!2801110))))

(assert (=> d!1379277 (= res!1869253 ((_ is Cons!50535) (toList!4252 lm!1477)))))

(assert (=> d!1379277 (= (contains!13201 (toList!4252 lm!1477) lt!1678885) lt!1678928)))

(declare-fun b!4496896 () Bool)

(declare-fun e!2801111 () Bool)

(assert (=> b!4496896 (= e!2801110 e!2801111)))

(declare-fun res!1869252 () Bool)

(assert (=> b!4496896 (=> res!1869252 e!2801111)))

(assert (=> b!4496896 (= res!1869252 (= (h!56352 (toList!4252 lm!1477)) lt!1678885))))

(declare-fun b!4496897 () Bool)

(assert (=> b!4496897 (= e!2801111 (contains!13201 (t!357617 (toList!4252 lm!1477)) lt!1678885))))

(assert (= (and d!1379277 res!1869253) b!4496896))

(assert (= (and b!4496896 (not res!1869252)) b!4496897))

(declare-fun m!5225199 () Bool)

(assert (=> d!1379277 m!5225199))

(declare-fun m!5225201 () Bool)

(assert (=> d!1379277 m!5225201))

(assert (=> b!4496897 m!5225165))

(assert (=> b!4496876 d!1379277))

(declare-fun d!1379281 () Bool)

(declare-fun dynLambda!21101 (Int tuple2!50924) Bool)

(assert (=> d!1379281 (dynLambda!21101 lambda!168249 lt!1678885)))

(declare-fun lt!1678939 () Unit!91544)

(declare-fun choose!29073 (List!50659 Int tuple2!50924) Unit!91544)

(assert (=> d!1379281 (= lt!1678939 (choose!29073 (toList!4252 lm!1477) lambda!168249 lt!1678885))))

(declare-fun e!2801116 () Bool)

(assert (=> d!1379281 e!2801116))

(declare-fun res!1869260 () Bool)

(assert (=> d!1379281 (=> (not res!1869260) (not e!2801116))))

(assert (=> d!1379281 (= res!1869260 (forall!10167 (toList!4252 lm!1477) lambda!168249))))

(assert (=> d!1379281 (= (forallContained!2421 (toList!4252 lm!1477) lambda!168249 lt!1678885) lt!1678939)))

(declare-fun b!4496904 () Bool)

(assert (=> b!4496904 (= e!2801116 (contains!13201 (toList!4252 lm!1477) lt!1678885))))

(assert (= (and d!1379281 res!1869260) b!4496904))

(declare-fun b_lambda!152049 () Bool)

(assert (=> (not b_lambda!152049) (not d!1379281)))

(declare-fun m!5225227 () Bool)

(assert (=> d!1379281 m!5225227))

(declare-fun m!5225229 () Bool)

(assert (=> d!1379281 m!5225229))

(assert (=> d!1379281 m!5225101))

(assert (=> b!4496904 m!5225125))

(assert (=> b!4496876 d!1379281))

(declare-fun d!1379287 () Bool)

(assert (=> d!1379287 (contains!13201 (toList!4252 lm!1477) (tuple2!50925 hash!344 lt!1678889))))

(declare-fun lt!1678952 () Unit!91544)

(declare-fun choose!29075 (List!50659 (_ BitVec 64) List!50658) Unit!91544)

(assert (=> d!1379287 (= lt!1678952 (choose!29075 (toList!4252 lm!1477) hash!344 lt!1678889))))

(declare-fun e!2801121 () Bool)

(assert (=> d!1379287 e!2801121))

(declare-fun res!1869263 () Bool)

(assert (=> d!1379287 (=> (not res!1869263) (not e!2801121))))

(declare-fun isStrictlySorted!395 (List!50659) Bool)

(assert (=> d!1379287 (= res!1869263 (isStrictlySorted!395 (toList!4252 lm!1477)))))

(assert (=> d!1379287 (= (lemmaGetValueByKeyImpliesContainsTuple!634 (toList!4252 lm!1477) hash!344 lt!1678889) lt!1678952)))

(declare-fun b!4496911 () Bool)

(assert (=> b!4496911 (= e!2801121 (= (getValueByKey!1020 (toList!4252 lm!1477) hash!344) (Some!11039 lt!1678889)))))

(assert (= (and d!1379287 res!1869263) b!4496911))

(declare-fun m!5225231 () Bool)

(assert (=> d!1379287 m!5225231))

(declare-fun m!5225233 () Bool)

(assert (=> d!1379287 m!5225233))

(declare-fun m!5225235 () Bool)

(assert (=> d!1379287 m!5225235))

(declare-fun m!5225237 () Bool)

(assert (=> b!4496911 m!5225237))

(assert (=> b!4496876 d!1379287))

(declare-fun b!4496946 () Bool)

(declare-fun e!2801143 () List!50658)

(assert (=> b!4496946 (= e!2801143 Nil!50534)))

(declare-fun b!4496944 () Bool)

(declare-fun e!2801142 () List!50658)

(assert (=> b!4496944 (= e!2801142 e!2801143)))

(declare-fun c!766302 () Bool)

(assert (=> b!4496944 (= c!766302 ((_ is Cons!50534) lt!1678889))))

(declare-fun d!1379289 () Bool)

(declare-fun lt!1678969 () List!50658)

(assert (=> d!1379289 (not (containsKey!1670 lt!1678969 key!3287))))

(assert (=> d!1379289 (= lt!1678969 e!2801142)))

(declare-fun c!766303 () Bool)

(assert (=> d!1379289 (= c!766303 (and ((_ is Cons!50534) lt!1678889) (= (_1!28755 (h!56351 lt!1678889)) key!3287)))))

(assert (=> d!1379289 (noDuplicateKeys!1122 lt!1678889)))

(assert (=> d!1379289 (= (removePairForKey!749 lt!1678889 key!3287) lt!1678969)))

(declare-fun b!4496943 () Bool)

(assert (=> b!4496943 (= e!2801142 (t!357616 lt!1678889))))

(declare-fun b!4496945 () Bool)

(assert (=> b!4496945 (= e!2801143 (Cons!50534 (h!56351 lt!1678889) (removePairForKey!749 (t!357616 lt!1678889) key!3287)))))

(assert (= (and d!1379289 c!766303) b!4496943))

(assert (= (and d!1379289 (not c!766303)) b!4496944))

(assert (= (and b!4496944 c!766302) b!4496945))

(assert (= (and b!4496944 (not c!766302)) b!4496946))

(declare-fun m!5225259 () Bool)

(assert (=> d!1379289 m!5225259))

(declare-fun m!5225261 () Bool)

(assert (=> d!1379289 m!5225261))

(declare-fun m!5225263 () Bool)

(assert (=> b!4496945 m!5225263))

(assert (=> b!4496876 d!1379289))

(declare-fun d!1379293 () Bool)

(declare-fun get!16511 (Option!11040) List!50658)

(assert (=> d!1379293 (= (apply!11859 lm!1477 hash!344) (get!16511 (getValueByKey!1020 (toList!4252 lm!1477) hash!344)))))

(declare-fun bs!834141 () Bool)

(assert (= bs!834141 d!1379293))

(assert (=> bs!834141 m!5225237))

(assert (=> bs!834141 m!5225237))

(declare-fun m!5225265 () Bool)

(assert (=> bs!834141 m!5225265))

(assert (=> b!4496876 d!1379293))

(declare-fun d!1379295 () Bool)

(declare-fun res!1869277 () Bool)

(declare-fun e!2801151 () Bool)

(assert (=> d!1379295 (=> res!1869277 e!2801151)))

(assert (=> d!1379295 (= res!1869277 ((_ is Nil!50535) (toList!4252 lm!1477)))))

(assert (=> d!1379295 (= (forall!10167 (toList!4252 lm!1477) lambda!168249) e!2801151)))

(declare-fun b!4496957 () Bool)

(declare-fun e!2801152 () Bool)

(assert (=> b!4496957 (= e!2801151 e!2801152)))

(declare-fun res!1869278 () Bool)

(assert (=> b!4496957 (=> (not res!1869278) (not e!2801152))))

(assert (=> b!4496957 (= res!1869278 (dynLambda!21101 lambda!168249 (h!56352 (toList!4252 lm!1477))))))

(declare-fun b!4496958 () Bool)

(assert (=> b!4496958 (= e!2801152 (forall!10167 (t!357617 (toList!4252 lm!1477)) lambda!168249))))

(assert (= (and d!1379295 (not res!1869277)) b!4496957))

(assert (= (and b!4496957 res!1869278) b!4496958))

(declare-fun b_lambda!152051 () Bool)

(assert (=> (not b_lambda!152051) (not b!4496957)))

(declare-fun m!5225273 () Bool)

(assert (=> b!4496957 m!5225273))

(declare-fun m!5225275 () Bool)

(assert (=> b!4496958 m!5225275))

(assert (=> start!443724 d!1379295))

(declare-fun d!1379299 () Bool)

(assert (=> d!1379299 (= (inv!66129 lm!1477) (isStrictlySorted!395 (toList!4252 lm!1477)))))

(declare-fun bs!834144 () Bool)

(assert (= bs!834144 d!1379299))

(assert (=> bs!834144 m!5225235))

(assert (=> start!443724 d!1379299))

(declare-fun d!1379303 () Bool)

(declare-fun content!8250 (List!50658) (InoxSet tuple2!50922))

(assert (=> d!1379303 (= (eq!579 lt!1678892 lt!1678898) (= (content!8250 (toList!4251 lt!1678892)) (content!8250 (toList!4251 lt!1678898))))))

(declare-fun bs!834148 () Bool)

(assert (= bs!834148 d!1379303))

(declare-fun m!5225291 () Bool)

(assert (=> bs!834148 m!5225291))

(declare-fun m!5225295 () Bool)

(assert (=> bs!834148 m!5225295))

(assert (=> b!4496875 d!1379303))

(declare-fun bs!834154 () Bool)

(declare-fun d!1379309 () Bool)

(assert (= bs!834154 (and d!1379309 start!443724)))

(declare-fun lambda!168263 () Int)

(assert (=> bs!834154 (not (= lambda!168263 lambda!168249))))

(declare-fun bs!834155 () Bool)

(assert (= bs!834155 (and d!1379309 d!1379273)))

(assert (=> bs!834155 (not (= lambda!168263 lambda!168252))))

(assert (=> d!1379309 true))

(assert (=> d!1379309 (= (allKeysSameHashInMap!1229 lm!1477 hashF!1107) (forall!10167 (toList!4252 lm!1477) lambda!168263))))

(declare-fun bs!834156 () Bool)

(assert (= bs!834156 d!1379309))

(declare-fun m!5225333 () Bool)

(assert (=> bs!834156 m!5225333))

(assert (=> b!4496874 d!1379309))

(declare-fun d!1379321 () Bool)

(declare-fun lt!1678983 () Bool)

(assert (=> d!1379321 (= lt!1678983 (select (content!8249 (t!357617 (toList!4252 lm!1477))) lt!1678885))))

(declare-fun e!2801157 () Bool)

(assert (=> d!1379321 (= lt!1678983 e!2801157)))

(declare-fun res!1869284 () Bool)

(assert (=> d!1379321 (=> (not res!1869284) (not e!2801157))))

(assert (=> d!1379321 (= res!1869284 ((_ is Cons!50535) (t!357617 (toList!4252 lm!1477))))))

(assert (=> d!1379321 (= (contains!13201 (t!357617 (toList!4252 lm!1477)) lt!1678885) lt!1678983)))

(declare-fun b!4496973 () Bool)

(declare-fun e!2801158 () Bool)

(assert (=> b!4496973 (= e!2801157 e!2801158)))

(declare-fun res!1869283 () Bool)

(assert (=> b!4496973 (=> res!1869283 e!2801158)))

(assert (=> b!4496973 (= res!1869283 (= (h!56352 (t!357617 (toList!4252 lm!1477))) lt!1678885))))

(declare-fun b!4496974 () Bool)

(assert (=> b!4496974 (= e!2801158 (contains!13201 (t!357617 (t!357617 (toList!4252 lm!1477))) lt!1678885))))

(assert (= (and d!1379321 res!1869284) b!4496973))

(assert (= (and b!4496973 (not res!1869283)) b!4496974))

(declare-fun m!5225335 () Bool)

(assert (=> d!1379321 m!5225335))

(declare-fun m!5225337 () Bool)

(assert (=> d!1379321 m!5225337))

(declare-fun m!5225339 () Bool)

(assert (=> b!4496974 m!5225339))

(assert (=> b!4496878 d!1379321))

(declare-fun d!1379323 () Bool)

(declare-fun res!1869294 () Bool)

(declare-fun e!2801168 () Bool)

(assert (=> d!1379323 (=> res!1869294 e!2801168)))

(declare-fun e!2801169 () Bool)

(assert (=> d!1379323 (= res!1869294 e!2801169)))

(declare-fun res!1869295 () Bool)

(assert (=> d!1379323 (=> (not res!1869295) (not e!2801169))))

(assert (=> d!1379323 (= res!1869295 ((_ is Cons!50535) (t!357617 (toList!4252 lm!1477))))))

(assert (=> d!1379323 (= (containsKeyBiggerList!102 (t!357617 (toList!4252 lm!1477)) key!3287) e!2801168)))

(declare-fun b!4496984 () Bool)

(assert (=> b!4496984 (= e!2801169 (containsKey!1670 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(declare-fun b!4496985 () Bool)

(declare-fun e!2801170 () Bool)

(assert (=> b!4496985 (= e!2801168 e!2801170)))

(declare-fun res!1869296 () Bool)

(assert (=> b!4496985 (=> (not res!1869296) (not e!2801170))))

(assert (=> b!4496985 (= res!1869296 ((_ is Cons!50535) (t!357617 (toList!4252 lm!1477))))))

(declare-fun b!4496986 () Bool)

(assert (=> b!4496986 (= e!2801170 (containsKeyBiggerList!102 (t!357617 (t!357617 (toList!4252 lm!1477))) key!3287))))

(assert (= (and d!1379323 res!1869295) b!4496984))

(assert (= (and d!1379323 (not res!1869294)) b!4496985))

(assert (= (and b!4496985 res!1869296) b!4496986))

(declare-fun m!5225355 () Bool)

(assert (=> b!4496984 m!5225355))

(declare-fun m!5225357 () Bool)

(assert (=> b!4496986 m!5225357))

(assert (=> b!4496867 d!1379323))

(declare-fun d!1379327 () Bool)

(declare-fun res!1869297 () Bool)

(declare-fun e!2801171 () Bool)

(assert (=> d!1379327 (=> res!1869297 e!2801171)))

(declare-fun e!2801172 () Bool)

(assert (=> d!1379327 (= res!1869297 e!2801172)))

(declare-fun res!1869298 () Bool)

(assert (=> d!1379327 (=> (not res!1869298) (not e!2801172))))

(assert (=> d!1379327 (= res!1869298 ((_ is Cons!50535) (toList!4252 lt!1678893)))))

(assert (=> d!1379327 (= (containsKeyBiggerList!102 (toList!4252 lt!1678893) key!3287) e!2801171)))

(declare-fun b!4496987 () Bool)

(assert (=> b!4496987 (= e!2801172 (containsKey!1670 (_2!28756 (h!56352 (toList!4252 lt!1678893))) key!3287))))

(declare-fun b!4496988 () Bool)

(declare-fun e!2801173 () Bool)

(assert (=> b!4496988 (= e!2801171 e!2801173)))

(declare-fun res!1869299 () Bool)

(assert (=> b!4496988 (=> (not res!1869299) (not e!2801173))))

(assert (=> b!4496988 (= res!1869299 ((_ is Cons!50535) (toList!4252 lt!1678893)))))

(declare-fun b!4496989 () Bool)

(assert (=> b!4496989 (= e!2801173 (containsKeyBiggerList!102 (t!357617 (toList!4252 lt!1678893)) key!3287))))

(assert (= (and d!1379327 res!1869298) b!4496987))

(assert (= (and d!1379327 (not res!1869297)) b!4496988))

(assert (= (and b!4496988 res!1869299) b!4496989))

(declare-fun m!5225359 () Bool)

(assert (=> b!4496987 m!5225359))

(declare-fun m!5225361 () Bool)

(assert (=> b!4496989 m!5225361))

(assert (=> b!4496867 d!1379327))

(declare-fun bs!834157 () Bool)

(declare-fun d!1379329 () Bool)

(assert (= bs!834157 (and d!1379329 start!443724)))

(declare-fun lambda!168266 () Int)

(assert (=> bs!834157 (= lambda!168266 lambda!168249)))

(declare-fun bs!834158 () Bool)

(assert (= bs!834158 (and d!1379329 d!1379273)))

(assert (=> bs!834158 (= lambda!168266 lambda!168252)))

(declare-fun bs!834159 () Bool)

(assert (= bs!834159 (and d!1379329 d!1379309)))

(assert (=> bs!834159 (not (= lambda!168266 lambda!168263))))

(assert (=> d!1379329 (containsKeyBiggerList!102 (toList!4252 lt!1678893) key!3287)))

(declare-fun lt!1678989 () Unit!91544)

(declare-fun choose!29077 (ListLongMap!2883 K!11945 Hashable!5517) Unit!91544)

(assert (=> d!1379329 (= lt!1678989 (choose!29077 lt!1678893 key!3287 hashF!1107))))

(assert (=> d!1379329 (forall!10167 (toList!4252 lt!1678893) lambda!168266)))

(assert (=> d!1379329 (= (lemmaInLongMapThenContainsKeyBiggerList!38 lt!1678893 key!3287 hashF!1107) lt!1678989)))

(declare-fun bs!834160 () Bool)

(assert (= bs!834160 d!1379329))

(assert (=> bs!834160 m!5225161))

(declare-fun m!5225363 () Bool)

(assert (=> bs!834160 m!5225363))

(declare-fun m!5225365 () Bool)

(assert (=> bs!834160 m!5225365))

(assert (=> b!4496867 d!1379329))

(declare-fun d!1379331 () Bool)

(assert (=> d!1379331 (= (apply!11859 lt!1678893 hash!344) (get!16511 (getValueByKey!1020 (toList!4252 lt!1678893) hash!344)))))

(declare-fun bs!834161 () Bool)

(assert (= bs!834161 d!1379331))

(declare-fun m!5225367 () Bool)

(assert (=> bs!834161 m!5225367))

(assert (=> bs!834161 m!5225367))

(declare-fun m!5225369 () Bool)

(assert (=> bs!834161 m!5225369))

(assert (=> b!4496866 d!1379331))

(declare-fun bs!834174 () Bool)

(declare-fun d!1379333 () Bool)

(assert (= bs!834174 (and d!1379333 start!443724)))

(declare-fun lambda!168275 () Int)

(assert (=> bs!834174 (= lambda!168275 lambda!168249)))

(declare-fun bs!834175 () Bool)

(assert (= bs!834175 (and d!1379333 d!1379273)))

(assert (=> bs!834175 (= lambda!168275 lambda!168252)))

(declare-fun bs!834176 () Bool)

(assert (= bs!834176 (and d!1379333 d!1379309)))

(assert (=> bs!834176 (not (= lambda!168275 lambda!168263))))

(declare-fun bs!834177 () Bool)

(assert (= bs!834177 (and d!1379333 d!1379329)))

(assert (=> bs!834177 (= lambda!168275 lambda!168266)))

(assert (=> d!1379333 (not (contains!13200 (extractMap!1178 (toList!4252 lm!1477)) key!3287))))

(declare-fun lt!1679022 () Unit!91544)

(declare-fun choose!29078 (ListLongMap!2883 K!11945 Hashable!5517) Unit!91544)

(assert (=> d!1379333 (= lt!1679022 (choose!29078 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1379333 (forall!10167 (toList!4252 lm!1477) lambda!168275)))

(assert (=> d!1379333 (= (lemmaNotInItsHashBucketThenNotInMap!110 lm!1477 key!3287 hashF!1107) lt!1679022)))

(declare-fun bs!834179 () Bool)

(assert (= bs!834179 d!1379333))

(assert (=> bs!834179 m!5225153))

(assert (=> bs!834179 m!5225153))

(declare-fun m!5225421 () Bool)

(assert (=> bs!834179 m!5225421))

(declare-fun m!5225423 () Bool)

(assert (=> bs!834179 m!5225423))

(declare-fun m!5225425 () Bool)

(assert (=> bs!834179 m!5225425))

(assert (=> b!4496877 d!1379333))

(declare-fun d!1379353 () Bool)

(declare-fun hash!2678 (Hashable!5517 K!11945) (_ BitVec 64))

(assert (=> d!1379353 (= (hash!2675 hashF!1107 key!3287) (hash!2678 hashF!1107 key!3287))))

(declare-fun bs!834180 () Bool)

(assert (= bs!834180 d!1379353))

(declare-fun m!5225427 () Bool)

(assert (=> bs!834180 m!5225427))

(assert (=> b!4496860 d!1379353))

(declare-fun bs!834196 () Bool)

(declare-fun d!1379355 () Bool)

(assert (= bs!834196 (and d!1379355 d!1379333)))

(declare-fun lambda!168282 () Int)

(assert (=> bs!834196 (= lambda!168282 lambda!168275)))

(declare-fun bs!834197 () Bool)

(assert (= bs!834197 (and d!1379355 start!443724)))

(assert (=> bs!834197 (= lambda!168282 lambda!168249)))

(declare-fun bs!834198 () Bool)

(assert (= bs!834198 (and d!1379355 d!1379273)))

(assert (=> bs!834198 (= lambda!168282 lambda!168252)))

(declare-fun bs!834199 () Bool)

(assert (= bs!834199 (and d!1379355 d!1379329)))

(assert (=> bs!834199 (= lambda!168282 lambda!168266)))

(declare-fun bs!834200 () Bool)

(assert (= bs!834200 (and d!1379355 d!1379309)))

(assert (=> bs!834200 (not (= lambda!168282 lambda!168263))))

(declare-fun lt!1679045 () ListMap!3513)

(declare-fun invariantList!981 (List!50658) Bool)

(assert (=> d!1379355 (invariantList!981 (toList!4251 lt!1679045))))

(declare-fun e!2801219 () ListMap!3513)

(assert (=> d!1379355 (= lt!1679045 e!2801219)))

(declare-fun c!766327 () Bool)

(assert (=> d!1379355 (= c!766327 ((_ is Cons!50535) (toList!4252 lt!1678893)))))

(assert (=> d!1379355 (forall!10167 (toList!4252 lt!1678893) lambda!168282)))

(assert (=> d!1379355 (= (extractMap!1178 (toList!4252 lt!1678893)) lt!1679045)))

(declare-fun b!4497053 () Bool)

(declare-fun addToMapMapFromBucket!649 (List!50658 ListMap!3513) ListMap!3513)

(assert (=> b!4497053 (= e!2801219 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (toList!4252 lt!1678893))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))))))

(declare-fun b!4497054 () Bool)

(assert (=> b!4497054 (= e!2801219 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379355 c!766327) b!4497053))

(assert (= (and d!1379355 (not c!766327)) b!4497054))

(declare-fun m!5225487 () Bool)

(assert (=> d!1379355 m!5225487))

(declare-fun m!5225489 () Bool)

(assert (=> d!1379355 m!5225489))

(declare-fun m!5225491 () Bool)

(assert (=> b!4497053 m!5225491))

(assert (=> b!4497053 m!5225491))

(declare-fun m!5225493 () Bool)

(assert (=> b!4497053 m!5225493))

(assert (=> b!4496871 d!1379355))

(declare-fun b!4497116 () Bool)

(declare-fun e!2801272 () Bool)

(declare-datatypes ((List!50661 0))(
  ( (Nil!50537) (Cons!50537 (h!56356 K!11945) (t!357619 List!50661)) )
))
(declare-fun contains!13203 (List!50661 K!11945) Bool)

(declare-fun keys!17518 (ListMap!3513) List!50661)

(assert (=> b!4497116 (= e!2801272 (not (contains!13203 (keys!17518 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287)))))

(declare-fun b!4497117 () Bool)

(assert (=> b!4497117 false))

(declare-fun lt!1679079 () Unit!91544)

(declare-fun lt!1679076 () Unit!91544)

(assert (=> b!4497117 (= lt!1679079 lt!1679076)))

(declare-fun containsKey!1674 (List!50658 K!11945) Bool)

(assert (=> b!4497117 (containsKey!1674 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!428 (List!50658 K!11945) Unit!91544)

(assert (=> b!4497117 (= lt!1679076 (lemmaInGetKeysListThenContainsKey!428 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(declare-fun e!2801271 () Unit!91544)

(declare-fun Unit!91556 () Unit!91544)

(assert (=> b!4497117 (= e!2801271 Unit!91556)))

(declare-fun b!4497118 () Bool)

(declare-fun e!2801269 () Unit!91544)

(declare-fun lt!1679078 () Unit!91544)

(assert (=> b!4497118 (= e!2801269 lt!1679078)))

(declare-fun lt!1679075 () Unit!91544)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!925 (List!50658 K!11945) Unit!91544)

(assert (=> b!4497118 (= lt!1679075 (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11041 0))(
  ( (None!11040) (Some!11040 (v!44522 V!12191)) )
))
(declare-fun isDefined!8328 (Option!11041) Bool)

(declare-fun getValueByKey!1021 (List!50658 K!11945) Option!11041)

(assert (=> b!4497118 (isDefined!8328 (getValueByKey!1021 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(declare-fun lt!1679077 () Unit!91544)

(assert (=> b!4497118 (= lt!1679077 lt!1679075)))

(declare-fun lemmaInListThenGetKeysListContains!425 (List!50658 K!11945) Unit!91544)

(assert (=> b!4497118 (= lt!1679078 (lemmaInListThenGetKeysListContains!425 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(declare-fun call!312953 () Bool)

(assert (=> b!4497118 call!312953))

(declare-fun b!4497119 () Bool)

(declare-fun Unit!91557 () Unit!91544)

(assert (=> b!4497119 (= e!2801271 Unit!91557)))

(declare-fun b!4497120 () Bool)

(declare-fun e!2801268 () List!50661)

(declare-fun getKeysList!429 (List!50658) List!50661)

(assert (=> b!4497120 (= e!2801268 (getKeysList!429 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))

(declare-fun b!4497121 () Bool)

(assert (=> b!4497121 (= e!2801269 e!2801271)))

(declare-fun c!766338 () Bool)

(assert (=> b!4497121 (= c!766338 call!312953)))

(declare-fun b!4497122 () Bool)

(declare-fun e!2801270 () Bool)

(assert (=> b!4497122 (= e!2801270 (contains!13203 (keys!17518 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(declare-fun b!4497123 () Bool)

(assert (=> b!4497123 (= e!2801268 (keys!17518 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))

(declare-fun b!4497124 () Bool)

(declare-fun e!2801267 () Bool)

(assert (=> b!4497124 (= e!2801267 e!2801270)))

(declare-fun res!1869360 () Bool)

(assert (=> b!4497124 (=> (not res!1869360) (not e!2801270))))

(assert (=> b!4497124 (= res!1869360 (isDefined!8328 (getValueByKey!1021 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287)))))

(declare-fun d!1379369 () Bool)

(assert (=> d!1379369 e!2801267))

(declare-fun res!1869361 () Bool)

(assert (=> d!1379369 (=> res!1869361 e!2801267)))

(assert (=> d!1379369 (= res!1869361 e!2801272)))

(declare-fun res!1869362 () Bool)

(assert (=> d!1379369 (=> (not res!1869362) (not e!2801272))))

(declare-fun lt!1679081 () Bool)

(assert (=> d!1379369 (= res!1869362 (not lt!1679081))))

(declare-fun lt!1679080 () Bool)

(assert (=> d!1379369 (= lt!1679081 lt!1679080)))

(declare-fun lt!1679074 () Unit!91544)

(assert (=> d!1379369 (= lt!1679074 e!2801269)))

(declare-fun c!766337 () Bool)

(assert (=> d!1379369 (= c!766337 lt!1679080)))

(assert (=> d!1379369 (= lt!1679080 (containsKey!1674 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(assert (=> d!1379369 (= (contains!13200 (extractMap!1178 (t!357617 (toList!4252 lm!1477))) key!3287) lt!1679081)))

(declare-fun bm!312948 () Bool)

(assert (=> bm!312948 (= call!312953 (contains!13203 e!2801268 key!3287))))

(declare-fun c!766336 () Bool)

(assert (=> bm!312948 (= c!766336 c!766337)))

(assert (= (and d!1379369 c!766337) b!4497118))

(assert (= (and d!1379369 (not c!766337)) b!4497121))

(assert (= (and b!4497121 c!766338) b!4497117))

(assert (= (and b!4497121 (not c!766338)) b!4497119))

(assert (= (or b!4497118 b!4497121) bm!312948))

(assert (= (and bm!312948 c!766336) b!4497120))

(assert (= (and bm!312948 (not c!766336)) b!4497123))

(assert (= (and d!1379369 res!1869362) b!4497116))

(assert (= (and d!1379369 (not res!1869361)) b!4497124))

(assert (= (and b!4497124 res!1869360) b!4497122))

(assert (=> b!4497116 m!5225113))

(declare-fun m!5225553 () Bool)

(assert (=> b!4497116 m!5225553))

(assert (=> b!4497116 m!5225553))

(declare-fun m!5225555 () Bool)

(assert (=> b!4497116 m!5225555))

(declare-fun m!5225557 () Bool)

(assert (=> d!1379369 m!5225557))

(assert (=> b!4497122 m!5225113))

(assert (=> b!4497122 m!5225553))

(assert (=> b!4497122 m!5225553))

(assert (=> b!4497122 m!5225555))

(assert (=> b!4497123 m!5225113))

(assert (=> b!4497123 m!5225553))

(declare-fun m!5225559 () Bool)

(assert (=> b!4497118 m!5225559))

(declare-fun m!5225561 () Bool)

(assert (=> b!4497118 m!5225561))

(assert (=> b!4497118 m!5225561))

(declare-fun m!5225563 () Bool)

(assert (=> b!4497118 m!5225563))

(declare-fun m!5225565 () Bool)

(assert (=> b!4497118 m!5225565))

(assert (=> b!4497124 m!5225561))

(assert (=> b!4497124 m!5225561))

(assert (=> b!4497124 m!5225563))

(assert (=> b!4497117 m!5225557))

(declare-fun m!5225567 () Bool)

(assert (=> b!4497117 m!5225567))

(declare-fun m!5225569 () Bool)

(assert (=> b!4497120 m!5225569))

(declare-fun m!5225571 () Bool)

(assert (=> bm!312948 m!5225571))

(assert (=> b!4496871 d!1379369))

(declare-fun bs!834248 () Bool)

(declare-fun d!1379401 () Bool)

(assert (= bs!834248 (and d!1379401 d!1379333)))

(declare-fun lambda!168293 () Int)

(assert (=> bs!834248 (= lambda!168293 lambda!168275)))

(declare-fun bs!834249 () Bool)

(assert (= bs!834249 (and d!1379401 start!443724)))

(assert (=> bs!834249 (= lambda!168293 lambda!168249)))

(declare-fun bs!834250 () Bool)

(assert (= bs!834250 (and d!1379401 d!1379273)))

(assert (=> bs!834250 (= lambda!168293 lambda!168252)))

(declare-fun bs!834251 () Bool)

(assert (= bs!834251 (and d!1379401 d!1379355)))

(assert (=> bs!834251 (= lambda!168293 lambda!168282)))

(declare-fun bs!834252 () Bool)

(assert (= bs!834252 (and d!1379401 d!1379329)))

(assert (=> bs!834252 (= lambda!168293 lambda!168266)))

(declare-fun bs!834253 () Bool)

(assert (= bs!834253 (and d!1379401 d!1379309)))

(assert (=> bs!834253 (not (= lambda!168293 lambda!168263))))

(declare-fun lt!1679082 () ListMap!3513)

(assert (=> d!1379401 (invariantList!981 (toList!4251 lt!1679082))))

(declare-fun e!2801273 () ListMap!3513)

(assert (=> d!1379401 (= lt!1679082 e!2801273)))

(declare-fun c!766339 () Bool)

(assert (=> d!1379401 (= c!766339 ((_ is Cons!50535) (t!357617 (toList!4252 lm!1477))))))

(assert (=> d!1379401 (forall!10167 (t!357617 (toList!4252 lm!1477)) lambda!168293)))

(assert (=> d!1379401 (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679082)))

(declare-fun b!4497125 () Bool)

(assert (=> b!4497125 (= e!2801273 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))))))

(declare-fun b!4497126 () Bool)

(assert (=> b!4497126 (= e!2801273 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379401 c!766339) b!4497125))

(assert (= (and d!1379401 (not c!766339)) b!4497126))

(declare-fun m!5225573 () Bool)

(assert (=> d!1379401 m!5225573))

(declare-fun m!5225575 () Bool)

(assert (=> d!1379401 m!5225575))

(declare-fun m!5225577 () Bool)

(assert (=> b!4497125 m!5225577))

(assert (=> b!4497125 m!5225577))

(declare-fun m!5225579 () Bool)

(assert (=> b!4497125 m!5225579))

(assert (=> b!4496871 d!1379401))

(declare-fun bs!834254 () Bool)

(declare-fun d!1379403 () Bool)

(assert (= bs!834254 (and d!1379403 d!1379333)))

(declare-fun lambda!168296 () Int)

(assert (=> bs!834254 (= lambda!168296 lambda!168275)))

(declare-fun bs!834255 () Bool)

(assert (= bs!834255 (and d!1379403 start!443724)))

(assert (=> bs!834255 (= lambda!168296 lambda!168249)))

(declare-fun bs!834256 () Bool)

(assert (= bs!834256 (and d!1379403 d!1379273)))

(assert (=> bs!834256 (= lambda!168296 lambda!168252)))

(declare-fun bs!834257 () Bool)

(assert (= bs!834257 (and d!1379403 d!1379401)))

(assert (=> bs!834257 (= lambda!168296 lambda!168293)))

(declare-fun bs!834258 () Bool)

(assert (= bs!834258 (and d!1379403 d!1379355)))

(assert (=> bs!834258 (= lambda!168296 lambda!168282)))

(declare-fun bs!834259 () Bool)

(assert (= bs!834259 (and d!1379403 d!1379329)))

(assert (=> bs!834259 (= lambda!168296 lambda!168266)))

(declare-fun bs!834260 () Bool)

(assert (= bs!834260 (and d!1379403 d!1379309)))

(assert (=> bs!834260 (not (= lambda!168296 lambda!168263))))

(assert (=> d!1379403 (contains!13200 (extractMap!1178 (toList!4252 lt!1678893)) key!3287)))

(declare-fun lt!1679085 () Unit!91544)

(declare-fun choose!29080 (ListLongMap!2883 K!11945 Hashable!5517) Unit!91544)

(assert (=> d!1379403 (= lt!1679085 (choose!29080 lt!1678893 key!3287 hashF!1107))))

(assert (=> d!1379403 (forall!10167 (toList!4252 lt!1678893) lambda!168296)))

(assert (=> d!1379403 (= (lemmaListContainsThenExtractedMapContains!92 lt!1678893 key!3287 hashF!1107) lt!1679085)))

(declare-fun bs!834261 () Bool)

(assert (= bs!834261 d!1379403))

(assert (=> bs!834261 m!5225109))

(assert (=> bs!834261 m!5225109))

(declare-fun m!5225581 () Bool)

(assert (=> bs!834261 m!5225581))

(declare-fun m!5225583 () Bool)

(assert (=> bs!834261 m!5225583))

(declare-fun m!5225585 () Bool)

(assert (=> bs!834261 m!5225585))

(assert (=> b!4496871 d!1379403))

(declare-fun b!4497127 () Bool)

(declare-fun e!2801279 () Bool)

(assert (=> b!4497127 (= e!2801279 (not (contains!13203 (keys!17518 lt!1678891) key!3287)))))

(declare-fun b!4497128 () Bool)

(assert (=> b!4497128 false))

(declare-fun lt!1679091 () Unit!91544)

(declare-fun lt!1679088 () Unit!91544)

(assert (=> b!4497128 (= lt!1679091 lt!1679088)))

(assert (=> b!4497128 (containsKey!1674 (toList!4251 lt!1678891) key!3287)))

(assert (=> b!4497128 (= lt!1679088 (lemmaInGetKeysListThenContainsKey!428 (toList!4251 lt!1678891) key!3287))))

(declare-fun e!2801278 () Unit!91544)

(declare-fun Unit!91558 () Unit!91544)

(assert (=> b!4497128 (= e!2801278 Unit!91558)))

(declare-fun b!4497129 () Bool)

(declare-fun e!2801276 () Unit!91544)

(declare-fun lt!1679090 () Unit!91544)

(assert (=> b!4497129 (= e!2801276 lt!1679090)))

(declare-fun lt!1679087 () Unit!91544)

(assert (=> b!4497129 (= lt!1679087 (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 lt!1678891) key!3287))))

(assert (=> b!4497129 (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287))))

(declare-fun lt!1679089 () Unit!91544)

(assert (=> b!4497129 (= lt!1679089 lt!1679087)))

(assert (=> b!4497129 (= lt!1679090 (lemmaInListThenGetKeysListContains!425 (toList!4251 lt!1678891) key!3287))))

(declare-fun call!312954 () Bool)

(assert (=> b!4497129 call!312954))

(declare-fun b!4497130 () Bool)

(declare-fun Unit!91559 () Unit!91544)

(assert (=> b!4497130 (= e!2801278 Unit!91559)))

(declare-fun b!4497131 () Bool)

(declare-fun e!2801275 () List!50661)

(assert (=> b!4497131 (= e!2801275 (getKeysList!429 (toList!4251 lt!1678891)))))

(declare-fun b!4497132 () Bool)

(assert (=> b!4497132 (= e!2801276 e!2801278)))

(declare-fun c!766342 () Bool)

(assert (=> b!4497132 (= c!766342 call!312954)))

(declare-fun b!4497133 () Bool)

(declare-fun e!2801277 () Bool)

(assert (=> b!4497133 (= e!2801277 (contains!13203 (keys!17518 lt!1678891) key!3287))))

(declare-fun b!4497134 () Bool)

(assert (=> b!4497134 (= e!2801275 (keys!17518 lt!1678891))))

(declare-fun b!4497135 () Bool)

(declare-fun e!2801274 () Bool)

(assert (=> b!4497135 (= e!2801274 e!2801277)))

(declare-fun res!1869363 () Bool)

(assert (=> b!4497135 (=> (not res!1869363) (not e!2801277))))

(assert (=> b!4497135 (= res!1869363 (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287)))))

(declare-fun d!1379405 () Bool)

(assert (=> d!1379405 e!2801274))

(declare-fun res!1869364 () Bool)

(assert (=> d!1379405 (=> res!1869364 e!2801274)))

(assert (=> d!1379405 (= res!1869364 e!2801279)))

(declare-fun res!1869365 () Bool)

(assert (=> d!1379405 (=> (not res!1869365) (not e!2801279))))

(declare-fun lt!1679093 () Bool)

(assert (=> d!1379405 (= res!1869365 (not lt!1679093))))

(declare-fun lt!1679092 () Bool)

(assert (=> d!1379405 (= lt!1679093 lt!1679092)))

(declare-fun lt!1679086 () Unit!91544)

(assert (=> d!1379405 (= lt!1679086 e!2801276)))

(declare-fun c!766341 () Bool)

(assert (=> d!1379405 (= c!766341 lt!1679092)))

(assert (=> d!1379405 (= lt!1679092 (containsKey!1674 (toList!4251 lt!1678891) key!3287))))

(assert (=> d!1379405 (= (contains!13200 lt!1678891 key!3287) lt!1679093)))

(declare-fun bm!312949 () Bool)

(assert (=> bm!312949 (= call!312954 (contains!13203 e!2801275 key!3287))))

(declare-fun c!766340 () Bool)

(assert (=> bm!312949 (= c!766340 c!766341)))

(assert (= (and d!1379405 c!766341) b!4497129))

(assert (= (and d!1379405 (not c!766341)) b!4497132))

(assert (= (and b!4497132 c!766342) b!4497128))

(assert (= (and b!4497132 (not c!766342)) b!4497130))

(assert (= (or b!4497129 b!4497132) bm!312949))

(assert (= (and bm!312949 c!766340) b!4497131))

(assert (= (and bm!312949 (not c!766340)) b!4497134))

(assert (= (and d!1379405 res!1869365) b!4497127))

(assert (= (and d!1379405 (not res!1869364)) b!4497135))

(assert (= (and b!4497135 res!1869363) b!4497133))

(declare-fun m!5225587 () Bool)

(assert (=> b!4497127 m!5225587))

(assert (=> b!4497127 m!5225587))

(declare-fun m!5225589 () Bool)

(assert (=> b!4497127 m!5225589))

(declare-fun m!5225591 () Bool)

(assert (=> d!1379405 m!5225591))

(assert (=> b!4497133 m!5225587))

(assert (=> b!4497133 m!5225587))

(assert (=> b!4497133 m!5225589))

(assert (=> b!4497134 m!5225587))

(declare-fun m!5225593 () Bool)

(assert (=> b!4497129 m!5225593))

(declare-fun m!5225595 () Bool)

(assert (=> b!4497129 m!5225595))

(assert (=> b!4497129 m!5225595))

(declare-fun m!5225597 () Bool)

(assert (=> b!4497129 m!5225597))

(declare-fun m!5225599 () Bool)

(assert (=> b!4497129 m!5225599))

(assert (=> b!4497135 m!5225595))

(assert (=> b!4497135 m!5225595))

(assert (=> b!4497135 m!5225597))

(assert (=> b!4497128 m!5225591))

(declare-fun m!5225601 () Bool)

(assert (=> b!4497128 m!5225601))

(declare-fun m!5225603 () Bool)

(assert (=> b!4497131 m!5225603))

(declare-fun m!5225605 () Bool)

(assert (=> bm!312949 m!5225605))

(assert (=> b!4496871 d!1379405))

(declare-fun d!1379407 () Bool)

(declare-fun e!2801282 () Bool)

(assert (=> d!1379407 e!2801282))

(declare-fun res!1869371 () Bool)

(assert (=> d!1379407 (=> (not res!1869371) (not e!2801282))))

(declare-fun lt!1679104 () ListLongMap!2883)

(assert (=> d!1379407 (= res!1869371 (contains!13199 lt!1679104 (_1!28756 lt!1678886)))))

(declare-fun lt!1679103 () List!50659)

(assert (=> d!1379407 (= lt!1679104 (ListLongMap!2884 lt!1679103))))

(declare-fun lt!1679102 () Unit!91544)

(declare-fun lt!1679105 () Unit!91544)

(assert (=> d!1379407 (= lt!1679102 lt!1679105)))

(assert (=> d!1379407 (= (getValueByKey!1020 lt!1679103 (_1!28756 lt!1678886)) (Some!11039 (_2!28756 lt!1678886)))))

(declare-fun lemmaContainsTupThenGetReturnValue!630 (List!50659 (_ BitVec 64) List!50658) Unit!91544)

(assert (=> d!1379407 (= lt!1679105 (lemmaContainsTupThenGetReturnValue!630 lt!1679103 (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))

(declare-fun insertStrictlySorted!372 (List!50659 (_ BitVec 64) List!50658) List!50659)

(assert (=> d!1379407 (= lt!1679103 (insertStrictlySorted!372 (toList!4252 lt!1678896) (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))

(assert (=> d!1379407 (= (+!1466 lt!1678896 lt!1678886) lt!1679104)))

(declare-fun b!4497140 () Bool)

(declare-fun res!1869370 () Bool)

(assert (=> b!4497140 (=> (not res!1869370) (not e!2801282))))

(assert (=> b!4497140 (= res!1869370 (= (getValueByKey!1020 (toList!4252 lt!1679104) (_1!28756 lt!1678886)) (Some!11039 (_2!28756 lt!1678886))))))

(declare-fun b!4497141 () Bool)

(assert (=> b!4497141 (= e!2801282 (contains!13201 (toList!4252 lt!1679104) lt!1678886))))

(assert (= (and d!1379407 res!1869371) b!4497140))

(assert (= (and b!4497140 res!1869370) b!4497141))

(declare-fun m!5225607 () Bool)

(assert (=> d!1379407 m!5225607))

(declare-fun m!5225609 () Bool)

(assert (=> d!1379407 m!5225609))

(declare-fun m!5225611 () Bool)

(assert (=> d!1379407 m!5225611))

(declare-fun m!5225613 () Bool)

(assert (=> d!1379407 m!5225613))

(declare-fun m!5225615 () Bool)

(assert (=> b!4497140 m!5225615))

(declare-fun m!5225617 () Bool)

(assert (=> b!4497141 m!5225617))

(assert (=> b!4496870 d!1379407))

(declare-fun d!1379409 () Bool)

(declare-fun e!2801283 () Bool)

(assert (=> d!1379409 e!2801283))

(declare-fun res!1869373 () Bool)

(assert (=> d!1379409 (=> (not res!1869373) (not e!2801283))))

(declare-fun lt!1679108 () ListLongMap!2883)

(assert (=> d!1379409 (= res!1869373 (contains!13199 lt!1679108 (_1!28756 lt!1678890)))))

(declare-fun lt!1679107 () List!50659)

(assert (=> d!1379409 (= lt!1679108 (ListLongMap!2884 lt!1679107))))

(declare-fun lt!1679106 () Unit!91544)

(declare-fun lt!1679109 () Unit!91544)

(assert (=> d!1379409 (= lt!1679106 lt!1679109)))

(assert (=> d!1379409 (= (getValueByKey!1020 lt!1679107 (_1!28756 lt!1678890)) (Some!11039 (_2!28756 lt!1678890)))))

(assert (=> d!1379409 (= lt!1679109 (lemmaContainsTupThenGetReturnValue!630 lt!1679107 (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))

(assert (=> d!1379409 (= lt!1679107 (insertStrictlySorted!372 (toList!4252 lm!1477) (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))

(assert (=> d!1379409 (= (+!1466 lm!1477 lt!1678890) lt!1679108)))

(declare-fun b!4497142 () Bool)

(declare-fun res!1869372 () Bool)

(assert (=> b!4497142 (=> (not res!1869372) (not e!2801283))))

(assert (=> b!4497142 (= res!1869372 (= (getValueByKey!1020 (toList!4252 lt!1679108) (_1!28756 lt!1678890)) (Some!11039 (_2!28756 lt!1678890))))))

(declare-fun b!4497143 () Bool)

(assert (=> b!4497143 (= e!2801283 (contains!13201 (toList!4252 lt!1679108) lt!1678890))))

(assert (= (and d!1379409 res!1869373) b!4497142))

(assert (= (and b!4497142 res!1869372) b!4497143))

(declare-fun m!5225619 () Bool)

(assert (=> d!1379409 m!5225619))

(declare-fun m!5225621 () Bool)

(assert (=> d!1379409 m!5225621))

(declare-fun m!5225623 () Bool)

(assert (=> d!1379409 m!5225623))

(declare-fun m!5225625 () Bool)

(assert (=> d!1379409 m!5225625))

(declare-fun m!5225627 () Bool)

(assert (=> b!4497142 m!5225627))

(declare-fun m!5225629 () Bool)

(assert (=> b!4497143 m!5225629))

(assert (=> b!4496870 d!1379409))

(declare-fun d!1379411 () Bool)

(assert (=> d!1379411 true))

(assert (=> d!1379411 true))

(declare-fun lambda!168299 () Int)

(declare-fun forall!10169 (List!50658 Int) Bool)

(assert (=> d!1379411 (= (allKeysSameHash!976 newBucket!178 hash!344 hashF!1107) (forall!10169 newBucket!178 lambda!168299))))

(declare-fun bs!834262 () Bool)

(assert (= bs!834262 d!1379411))

(declare-fun m!5225631 () Bool)

(assert (=> bs!834262 m!5225631))

(assert (=> b!4496859 d!1379411))

(declare-fun d!1379413 () Bool)

(declare-fun res!1869378 () Bool)

(declare-fun e!2801288 () Bool)

(assert (=> d!1379413 (=> res!1869378 e!2801288)))

(assert (=> d!1379413 (= res!1869378 (not ((_ is Cons!50534) newBucket!178)))))

(assert (=> d!1379413 (= (noDuplicateKeys!1122 newBucket!178) e!2801288)))

(declare-fun b!4497152 () Bool)

(declare-fun e!2801289 () Bool)

(assert (=> b!4497152 (= e!2801288 e!2801289)))

(declare-fun res!1869379 () Bool)

(assert (=> b!4497152 (=> (not res!1869379) (not e!2801289))))

(assert (=> b!4497152 (= res!1869379 (not (containsKey!1670 (t!357616 newBucket!178) (_1!28755 (h!56351 newBucket!178)))))))

(declare-fun b!4497153 () Bool)

(assert (=> b!4497153 (= e!2801289 (noDuplicateKeys!1122 (t!357616 newBucket!178)))))

(assert (= (and d!1379413 (not res!1869378)) b!4497152))

(assert (= (and b!4497152 res!1869379) b!4497153))

(declare-fun m!5225633 () Bool)

(assert (=> b!4497152 m!5225633))

(declare-fun m!5225635 () Bool)

(assert (=> b!4497153 m!5225635))

(assert (=> b!4496858 d!1379413))

(declare-fun d!1379415 () Bool)

(declare-fun e!2801290 () Bool)

(assert (=> d!1379415 e!2801290))

(declare-fun res!1869380 () Bool)

(assert (=> d!1379415 (=> res!1869380 e!2801290)))

(declare-fun lt!1679110 () Bool)

(assert (=> d!1379415 (= res!1869380 (not lt!1679110))))

(declare-fun lt!1679112 () Bool)

(assert (=> d!1379415 (= lt!1679110 lt!1679112)))

(declare-fun lt!1679113 () Unit!91544)

(declare-fun e!2801291 () Unit!91544)

(assert (=> d!1379415 (= lt!1679113 e!2801291)))

(declare-fun c!766343 () Bool)

(assert (=> d!1379415 (= c!766343 lt!1679112)))

(assert (=> d!1379415 (= lt!1679112 (containsKey!1672 (toList!4252 lt!1678893) hash!344))))

(assert (=> d!1379415 (= (contains!13199 lt!1678893 hash!344) lt!1679110)))

(declare-fun b!4497154 () Bool)

(declare-fun lt!1679111 () Unit!91544)

(assert (=> b!4497154 (= e!2801291 lt!1679111)))

(assert (=> b!4497154 (= lt!1679111 (lemmaContainsKeyImpliesGetValueByKeyDefined!923 (toList!4252 lt!1678893) hash!344))))

(assert (=> b!4497154 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1678893) hash!344))))

(declare-fun b!4497155 () Bool)

(declare-fun Unit!91561 () Unit!91544)

(assert (=> b!4497155 (= e!2801291 Unit!91561)))

(declare-fun b!4497156 () Bool)

(assert (=> b!4497156 (= e!2801290 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1678893) hash!344)))))

(assert (= (and d!1379415 c!766343) b!4497154))

(assert (= (and d!1379415 (not c!766343)) b!4497155))

(assert (= (and d!1379415 (not res!1869380)) b!4497156))

(declare-fun m!5225637 () Bool)

(assert (=> d!1379415 m!5225637))

(declare-fun m!5225639 () Bool)

(assert (=> b!4497154 m!5225639))

(assert (=> b!4497154 m!5225367))

(assert (=> b!4497154 m!5225367))

(declare-fun m!5225641 () Bool)

(assert (=> b!4497154 m!5225641))

(assert (=> b!4497156 m!5225367))

(assert (=> b!4497156 m!5225367))

(assert (=> b!4497156 m!5225641))

(assert (=> b!4496869 d!1379415))

(declare-fun d!1379417 () Bool)

(declare-fun tail!7662 (List!50659) List!50659)

(assert (=> d!1379417 (= (tail!7660 lm!1477) (ListLongMap!2884 (tail!7662 (toList!4252 lm!1477))))))

(declare-fun bs!834263 () Bool)

(assert (= bs!834263 d!1379417))

(declare-fun m!5225643 () Bool)

(assert (=> bs!834263 m!5225643))

(assert (=> b!4496869 d!1379417))

(declare-fun d!1379419 () Bool)

(declare-fun res!1869385 () Bool)

(declare-fun e!2801296 () Bool)

(assert (=> d!1379419 (=> res!1869385 e!2801296)))

(assert (=> d!1379419 (= res!1869385 (and ((_ is Cons!50534) lt!1678889) (= (_1!28755 (h!56351 lt!1678889)) key!3287)))))

(assert (=> d!1379419 (= (containsKey!1670 lt!1678889 key!3287) e!2801296)))

(declare-fun b!4497161 () Bool)

(declare-fun e!2801297 () Bool)

(assert (=> b!4497161 (= e!2801296 e!2801297)))

(declare-fun res!1869386 () Bool)

(assert (=> b!4497161 (=> (not res!1869386) (not e!2801297))))

(assert (=> b!4497161 (= res!1869386 ((_ is Cons!50534) lt!1678889))))

(declare-fun b!4497162 () Bool)

(assert (=> b!4497162 (= e!2801297 (containsKey!1670 (t!357616 lt!1678889) key!3287))))

(assert (= (and d!1379419 (not res!1869385)) b!4497161))

(assert (= (and b!4497161 res!1869386) b!4497162))

(declare-fun m!5225645 () Bool)

(assert (=> b!4497162 m!5225645))

(assert (=> b!4496863 d!1379419))

(declare-fun bs!834264 () Bool)

(declare-fun d!1379421 () Bool)

(assert (= bs!834264 (and d!1379421 d!1379333)))

(declare-fun lambda!168300 () Int)

(assert (=> bs!834264 (= lambda!168300 lambda!168275)))

(declare-fun bs!834265 () Bool)

(assert (= bs!834265 (and d!1379421 start!443724)))

(assert (=> bs!834265 (= lambda!168300 lambda!168249)))

(declare-fun bs!834266 () Bool)

(assert (= bs!834266 (and d!1379421 d!1379273)))

(assert (=> bs!834266 (= lambda!168300 lambda!168252)))

(declare-fun bs!834267 () Bool)

(assert (= bs!834267 (and d!1379421 d!1379355)))

(assert (=> bs!834267 (= lambda!168300 lambda!168282)))

(declare-fun bs!834268 () Bool)

(assert (= bs!834268 (and d!1379421 d!1379329)))

(assert (=> bs!834268 (= lambda!168300 lambda!168266)))

(declare-fun bs!834269 () Bool)

(assert (= bs!834269 (and d!1379421 d!1379309)))

(assert (=> bs!834269 (not (= lambda!168300 lambda!168263))))

(declare-fun bs!834270 () Bool)

(assert (= bs!834270 (and d!1379421 d!1379403)))

(assert (=> bs!834270 (= lambda!168300 lambda!168296)))

(declare-fun bs!834271 () Bool)

(assert (= bs!834271 (and d!1379421 d!1379401)))

(assert (=> bs!834271 (= lambda!168300 lambda!168293)))

(declare-fun lt!1679114 () ListMap!3513)

(assert (=> d!1379421 (invariantList!981 (toList!4251 lt!1679114))))

(declare-fun e!2801298 () ListMap!3513)

(assert (=> d!1379421 (= lt!1679114 e!2801298)))

(declare-fun c!766344 () Bool)

(assert (=> d!1379421 (= c!766344 ((_ is Cons!50535) (toList!4252 lt!1678896)))))

(assert (=> d!1379421 (forall!10167 (toList!4252 lt!1678896) lambda!168300)))

(assert (=> d!1379421 (= (extractMap!1178 (toList!4252 lt!1678896)) lt!1679114)))

(declare-fun b!4497163 () Bool)

(assert (=> b!4497163 (= e!2801298 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))))))

(declare-fun b!4497164 () Bool)

(assert (=> b!4497164 (= e!2801298 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379421 c!766344) b!4497163))

(assert (= (and d!1379421 (not c!766344)) b!4497164))

(declare-fun m!5225647 () Bool)

(assert (=> d!1379421 m!5225647))

(declare-fun m!5225649 () Bool)

(assert (=> d!1379421 m!5225649))

(declare-fun m!5225651 () Bool)

(assert (=> b!4497163 m!5225651))

(assert (=> b!4497163 m!5225651))

(declare-fun m!5225653 () Bool)

(assert (=> b!4497163 m!5225653))

(assert (=> b!4496862 d!1379421))

(declare-fun d!1379423 () Bool)

(assert (=> d!1379423 (= (eq!579 (extractMap!1178 (toList!4252 lt!1678896)) (-!348 lt!1678891 key!3287)) (= (content!8250 (toList!4251 (extractMap!1178 (toList!4252 lt!1678896)))) (content!8250 (toList!4251 (-!348 lt!1678891 key!3287)))))))

(declare-fun bs!834272 () Bool)

(assert (= bs!834272 d!1379423))

(declare-fun m!5225655 () Bool)

(assert (=> bs!834272 m!5225655))

(declare-fun m!5225657 () Bool)

(assert (=> bs!834272 m!5225657))

(assert (=> b!4496862 d!1379423))

(declare-fun d!1379425 () Bool)

(assert (=> d!1379425 (= (eq!579 lt!1678898 lt!1678892) (= (content!8250 (toList!4251 lt!1678898)) (content!8250 (toList!4251 lt!1678892))))))

(declare-fun bs!834273 () Bool)

(assert (= bs!834273 d!1379425))

(assert (=> bs!834273 m!5225295))

(assert (=> bs!834273 m!5225291))

(assert (=> b!4496862 d!1379425))

(declare-fun d!1379427 () Bool)

(declare-fun head!9340 (List!50659) tuple2!50924)

(assert (=> d!1379427 (= (head!9338 lm!1477) (head!9340 (toList!4252 lm!1477)))))

(declare-fun bs!834274 () Bool)

(assert (= bs!834274 d!1379427))

(declare-fun m!5225659 () Bool)

(assert (=> bs!834274 m!5225659))

(assert (=> b!4496862 d!1379427))

(declare-fun d!1379429 () Bool)

(declare-fun e!2801301 () Bool)

(assert (=> d!1379429 e!2801301))

(declare-fun res!1869389 () Bool)

(assert (=> d!1379429 (=> (not res!1869389) (not e!2801301))))

(declare-fun lt!1679117 () ListMap!3513)

(assert (=> d!1379429 (= res!1869389 (not (contains!13200 lt!1679117 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!105 (List!50658 K!11945) List!50658)

(assert (=> d!1379429 (= lt!1679117 (ListMap!3514 (removePresrvNoDuplicatedKeys!105 (toList!4251 lt!1678891) key!3287)))))

(assert (=> d!1379429 (= (-!348 lt!1678891 key!3287) lt!1679117)))

(declare-fun b!4497167 () Bool)

(declare-fun content!8251 (List!50661) (InoxSet K!11945))

(assert (=> b!4497167 (= e!2801301 (= ((_ map and) (content!8251 (keys!17518 lt!1678891)) ((_ map not) (store ((as const (Array K!11945 Bool)) false) key!3287 true))) (content!8251 (keys!17518 lt!1679117))))))

(assert (= (and d!1379429 res!1869389) b!4497167))

(declare-fun m!5225661 () Bool)

(assert (=> d!1379429 m!5225661))

(declare-fun m!5225663 () Bool)

(assert (=> d!1379429 m!5225663))

(assert (=> b!4497167 m!5225587))

(declare-fun m!5225665 () Bool)

(assert (=> b!4497167 m!5225665))

(declare-fun m!5225667 () Bool)

(assert (=> b!4497167 m!5225667))

(declare-fun m!5225669 () Bool)

(assert (=> b!4497167 m!5225669))

(declare-fun m!5225671 () Bool)

(assert (=> b!4497167 m!5225671))

(assert (=> b!4497167 m!5225667))

(assert (=> b!4497167 m!5225587))

(assert (=> b!4496862 d!1379429))

(declare-fun d!1379431 () Bool)

(declare-fun e!2801302 () Bool)

(assert (=> d!1379431 e!2801302))

(declare-fun res!1869391 () Bool)

(assert (=> d!1379431 (=> (not res!1869391) (not e!2801302))))

(declare-fun lt!1679120 () ListLongMap!2883)

(assert (=> d!1379431 (= res!1869391 (contains!13199 lt!1679120 (_1!28756 lt!1678890)))))

(declare-fun lt!1679119 () List!50659)

(assert (=> d!1379431 (= lt!1679120 (ListLongMap!2884 lt!1679119))))

(declare-fun lt!1679118 () Unit!91544)

(declare-fun lt!1679121 () Unit!91544)

(assert (=> d!1379431 (= lt!1679118 lt!1679121)))

(assert (=> d!1379431 (= (getValueByKey!1020 lt!1679119 (_1!28756 lt!1678890)) (Some!11039 (_2!28756 lt!1678890)))))

(assert (=> d!1379431 (= lt!1679121 (lemmaContainsTupThenGetReturnValue!630 lt!1679119 (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))

(assert (=> d!1379431 (= lt!1679119 (insertStrictlySorted!372 (toList!4252 lt!1678893) (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))

(assert (=> d!1379431 (= (+!1466 lt!1678893 lt!1678890) lt!1679120)))

(declare-fun b!4497168 () Bool)

(declare-fun res!1869390 () Bool)

(assert (=> b!4497168 (=> (not res!1869390) (not e!2801302))))

(assert (=> b!4497168 (= res!1869390 (= (getValueByKey!1020 (toList!4252 lt!1679120) (_1!28756 lt!1678890)) (Some!11039 (_2!28756 lt!1678890))))))

(declare-fun b!4497169 () Bool)

(assert (=> b!4497169 (= e!2801302 (contains!13201 (toList!4252 lt!1679120) lt!1678890))))

(assert (= (and d!1379431 res!1869391) b!4497168))

(assert (= (and b!4497168 res!1869390) b!4497169))

(declare-fun m!5225673 () Bool)

(assert (=> d!1379431 m!5225673))

(declare-fun m!5225675 () Bool)

(assert (=> d!1379431 m!5225675))

(declare-fun m!5225677 () Bool)

(assert (=> d!1379431 m!5225677))

(declare-fun m!5225679 () Bool)

(assert (=> d!1379431 m!5225679))

(declare-fun m!5225681 () Bool)

(assert (=> b!4497168 m!5225681))

(declare-fun m!5225683 () Bool)

(assert (=> b!4497169 m!5225683))

(assert (=> b!4496862 d!1379431))

(declare-fun bs!834275 () Bool)

(declare-fun d!1379433 () Bool)

(assert (= bs!834275 (and d!1379433 d!1379333)))

(declare-fun lambda!168301 () Int)

(assert (=> bs!834275 (= lambda!168301 lambda!168275)))

(declare-fun bs!834276 () Bool)

(assert (= bs!834276 (and d!1379433 start!443724)))

(assert (=> bs!834276 (= lambda!168301 lambda!168249)))

(declare-fun bs!834277 () Bool)

(assert (= bs!834277 (and d!1379433 d!1379273)))

(assert (=> bs!834277 (= lambda!168301 lambda!168252)))

(declare-fun bs!834278 () Bool)

(assert (= bs!834278 (and d!1379433 d!1379421)))

(assert (=> bs!834278 (= lambda!168301 lambda!168300)))

(declare-fun bs!834279 () Bool)

(assert (= bs!834279 (and d!1379433 d!1379355)))

(assert (=> bs!834279 (= lambda!168301 lambda!168282)))

(declare-fun bs!834280 () Bool)

(assert (= bs!834280 (and d!1379433 d!1379329)))

(assert (=> bs!834280 (= lambda!168301 lambda!168266)))

(declare-fun bs!834281 () Bool)

(assert (= bs!834281 (and d!1379433 d!1379309)))

(assert (=> bs!834281 (not (= lambda!168301 lambda!168263))))

(declare-fun bs!834282 () Bool)

(assert (= bs!834282 (and d!1379433 d!1379403)))

(assert (=> bs!834282 (= lambda!168301 lambda!168296)))

(declare-fun bs!834283 () Bool)

(assert (= bs!834283 (and d!1379433 d!1379401)))

(assert (=> bs!834283 (= lambda!168301 lambda!168293)))

(declare-fun lt!1679122 () ListMap!3513)

(assert (=> d!1379433 (invariantList!981 (toList!4251 lt!1679122))))

(declare-fun e!2801303 () ListMap!3513)

(assert (=> d!1379433 (= lt!1679122 e!2801303)))

(declare-fun c!766345 () Bool)

(assert (=> d!1379433 (= c!766345 ((_ is Cons!50535) (toList!4252 (+!1466 lt!1678893 lt!1678886))))))

(assert (=> d!1379433 (forall!10167 (toList!4252 (+!1466 lt!1678893 lt!1678886)) lambda!168301)))

(assert (=> d!1379433 (= (extractMap!1178 (toList!4252 (+!1466 lt!1678893 lt!1678886))) lt!1679122)))

(declare-fun b!4497170 () Bool)

(assert (=> b!4497170 (= e!2801303 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))))))

(declare-fun b!4497171 () Bool)

(assert (=> b!4497171 (= e!2801303 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379433 c!766345) b!4497170))

(assert (= (and d!1379433 (not c!766345)) b!4497171))

(declare-fun m!5225685 () Bool)

(assert (=> d!1379433 m!5225685))

(declare-fun m!5225687 () Bool)

(assert (=> d!1379433 m!5225687))

(declare-fun m!5225689 () Bool)

(assert (=> b!4497170 m!5225689))

(assert (=> b!4497170 m!5225689))

(declare-fun m!5225691 () Bool)

(assert (=> b!4497170 m!5225691))

(assert (=> b!4496862 d!1379433))

(declare-fun d!1379435 () Bool)

(declare-fun e!2801304 () Bool)

(assert (=> d!1379435 e!2801304))

(declare-fun res!1869393 () Bool)

(assert (=> d!1379435 (=> (not res!1869393) (not e!2801304))))

(declare-fun lt!1679125 () ListLongMap!2883)

(assert (=> d!1379435 (= res!1869393 (contains!13199 lt!1679125 (_1!28756 lt!1678886)))))

(declare-fun lt!1679124 () List!50659)

(assert (=> d!1379435 (= lt!1679125 (ListLongMap!2884 lt!1679124))))

(declare-fun lt!1679123 () Unit!91544)

(declare-fun lt!1679126 () Unit!91544)

(assert (=> d!1379435 (= lt!1679123 lt!1679126)))

(assert (=> d!1379435 (= (getValueByKey!1020 lt!1679124 (_1!28756 lt!1678886)) (Some!11039 (_2!28756 lt!1678886)))))

(assert (=> d!1379435 (= lt!1679126 (lemmaContainsTupThenGetReturnValue!630 lt!1679124 (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))

(assert (=> d!1379435 (= lt!1679124 (insertStrictlySorted!372 (toList!4252 lt!1678893) (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))

(assert (=> d!1379435 (= (+!1466 lt!1678893 lt!1678886) lt!1679125)))

(declare-fun b!4497172 () Bool)

(declare-fun res!1869392 () Bool)

(assert (=> b!4497172 (=> (not res!1869392) (not e!2801304))))

(assert (=> b!4497172 (= res!1869392 (= (getValueByKey!1020 (toList!4252 lt!1679125) (_1!28756 lt!1678886)) (Some!11039 (_2!28756 lt!1678886))))))

(declare-fun b!4497173 () Bool)

(assert (=> b!4497173 (= e!2801304 (contains!13201 (toList!4252 lt!1679125) lt!1678886))))

(assert (= (and d!1379435 res!1869393) b!4497172))

(assert (= (and b!4497172 res!1869392) b!4497173))

(declare-fun m!5225693 () Bool)

(assert (=> d!1379435 m!5225693))

(declare-fun m!5225695 () Bool)

(assert (=> d!1379435 m!5225695))

(declare-fun m!5225697 () Bool)

(assert (=> d!1379435 m!5225697))

(declare-fun m!5225699 () Bool)

(assert (=> d!1379435 m!5225699))

(declare-fun m!5225701 () Bool)

(assert (=> b!4497172 m!5225701))

(declare-fun m!5225703 () Bool)

(assert (=> b!4497173 m!5225703))

(assert (=> b!4496862 d!1379435))

(declare-fun bs!834284 () Bool)

(declare-fun d!1379437 () Bool)

(assert (= bs!834284 (and d!1379437 d!1379333)))

(declare-fun lambda!168304 () Int)

(assert (=> bs!834284 (= lambda!168304 lambda!168275)))

(declare-fun bs!834285 () Bool)

(assert (= bs!834285 (and d!1379437 start!443724)))

(assert (=> bs!834285 (= lambda!168304 lambda!168249)))

(declare-fun bs!834286 () Bool)

(assert (= bs!834286 (and d!1379437 d!1379273)))

(assert (=> bs!834286 (= lambda!168304 lambda!168252)))

(declare-fun bs!834287 () Bool)

(assert (= bs!834287 (and d!1379437 d!1379433)))

(assert (=> bs!834287 (= lambda!168304 lambda!168301)))

(declare-fun bs!834288 () Bool)

(assert (= bs!834288 (and d!1379437 d!1379421)))

(assert (=> bs!834288 (= lambda!168304 lambda!168300)))

(declare-fun bs!834289 () Bool)

(assert (= bs!834289 (and d!1379437 d!1379355)))

(assert (=> bs!834289 (= lambda!168304 lambda!168282)))

(declare-fun bs!834290 () Bool)

(assert (= bs!834290 (and d!1379437 d!1379329)))

(assert (=> bs!834290 (= lambda!168304 lambda!168266)))

(declare-fun bs!834291 () Bool)

(assert (= bs!834291 (and d!1379437 d!1379309)))

(assert (=> bs!834291 (not (= lambda!168304 lambda!168263))))

(declare-fun bs!834292 () Bool)

(assert (= bs!834292 (and d!1379437 d!1379403)))

(assert (=> bs!834292 (= lambda!168304 lambda!168296)))

(declare-fun bs!834293 () Bool)

(assert (= bs!834293 (and d!1379437 d!1379401)))

(assert (=> bs!834293 (= lambda!168304 lambda!168293)))

(assert (=> d!1379437 (eq!579 (extractMap!1178 (toList!4252 (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178)))) (-!348 (extractMap!1178 (toList!4252 lt!1678893)) key!3287))))

(declare-fun lt!1679129 () Unit!91544)

(declare-fun choose!29082 (ListLongMap!2883 (_ BitVec 64) List!50658 K!11945 Hashable!5517) Unit!91544)

(assert (=> d!1379437 (= lt!1679129 (choose!29082 lt!1678893 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1379437 (forall!10167 (toList!4252 lt!1678893) lambda!168304)))

(assert (=> d!1379437 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!107 lt!1678893 hash!344 newBucket!178 key!3287 hashF!1107) lt!1679129)))

(declare-fun bs!834294 () Bool)

(assert (= bs!834294 d!1379437))

(declare-fun m!5225705 () Bool)

(assert (=> bs!834294 m!5225705))

(assert (=> bs!834294 m!5225109))

(declare-fun m!5225707 () Bool)

(assert (=> bs!834294 m!5225707))

(declare-fun m!5225709 () Bool)

(assert (=> bs!834294 m!5225709))

(declare-fun m!5225711 () Bool)

(assert (=> bs!834294 m!5225711))

(assert (=> bs!834294 m!5225109))

(declare-fun m!5225713 () Bool)

(assert (=> bs!834294 m!5225713))

(assert (=> bs!834294 m!5225707))

(declare-fun m!5225715 () Bool)

(assert (=> bs!834294 m!5225715))

(assert (=> bs!834294 m!5225713))

(assert (=> b!4496862 d!1379437))

(declare-fun d!1379439 () Bool)

(declare-fun isEmpty!28589 (List!50659) Bool)

(assert (=> d!1379439 (= (isEmpty!28587 lm!1477) (isEmpty!28589 (toList!4252 lm!1477)))))

(declare-fun bs!834295 () Bool)

(assert (= bs!834295 d!1379439))

(declare-fun m!5225717 () Bool)

(assert (=> bs!834295 m!5225717))

(assert (=> b!4496873 d!1379439))

(declare-fun b!4497174 () Bool)

(declare-fun e!2801310 () Bool)

(assert (=> b!4497174 (= e!2801310 (not (contains!13203 (keys!17518 lt!1678892) key!3287)))))

(declare-fun b!4497175 () Bool)

(assert (=> b!4497175 false))

(declare-fun lt!1679135 () Unit!91544)

(declare-fun lt!1679132 () Unit!91544)

(assert (=> b!4497175 (= lt!1679135 lt!1679132)))

(assert (=> b!4497175 (containsKey!1674 (toList!4251 lt!1678892) key!3287)))

(assert (=> b!4497175 (= lt!1679132 (lemmaInGetKeysListThenContainsKey!428 (toList!4251 lt!1678892) key!3287))))

(declare-fun e!2801309 () Unit!91544)

(declare-fun Unit!91562 () Unit!91544)

(assert (=> b!4497175 (= e!2801309 Unit!91562)))

(declare-fun b!4497176 () Bool)

(declare-fun e!2801307 () Unit!91544)

(declare-fun lt!1679134 () Unit!91544)

(assert (=> b!4497176 (= e!2801307 lt!1679134)))

(declare-fun lt!1679131 () Unit!91544)

(assert (=> b!4497176 (= lt!1679131 (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 lt!1678892) key!3287))))

(assert (=> b!4497176 (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1678892) key!3287))))

(declare-fun lt!1679133 () Unit!91544)

(assert (=> b!4497176 (= lt!1679133 lt!1679131)))

(assert (=> b!4497176 (= lt!1679134 (lemmaInListThenGetKeysListContains!425 (toList!4251 lt!1678892) key!3287))))

(declare-fun call!312955 () Bool)

(assert (=> b!4497176 call!312955))

(declare-fun b!4497177 () Bool)

(declare-fun Unit!91563 () Unit!91544)

(assert (=> b!4497177 (= e!2801309 Unit!91563)))

(declare-fun b!4497178 () Bool)

(declare-fun e!2801306 () List!50661)

(assert (=> b!4497178 (= e!2801306 (getKeysList!429 (toList!4251 lt!1678892)))))

(declare-fun b!4497179 () Bool)

(assert (=> b!4497179 (= e!2801307 e!2801309)))

(declare-fun c!766348 () Bool)

(assert (=> b!4497179 (= c!766348 call!312955)))

(declare-fun b!4497180 () Bool)

(declare-fun e!2801308 () Bool)

(assert (=> b!4497180 (= e!2801308 (contains!13203 (keys!17518 lt!1678892) key!3287))))

(declare-fun b!4497181 () Bool)

(assert (=> b!4497181 (= e!2801306 (keys!17518 lt!1678892))))

(declare-fun b!4497182 () Bool)

(declare-fun e!2801305 () Bool)

(assert (=> b!4497182 (= e!2801305 e!2801308)))

(declare-fun res!1869394 () Bool)

(assert (=> b!4497182 (=> (not res!1869394) (not e!2801308))))

(assert (=> b!4497182 (= res!1869394 (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1678892) key!3287)))))

(declare-fun d!1379441 () Bool)

(assert (=> d!1379441 e!2801305))

(declare-fun res!1869395 () Bool)

(assert (=> d!1379441 (=> res!1869395 e!2801305)))

(assert (=> d!1379441 (= res!1869395 e!2801310)))

(declare-fun res!1869396 () Bool)

(assert (=> d!1379441 (=> (not res!1869396) (not e!2801310))))

(declare-fun lt!1679137 () Bool)

(assert (=> d!1379441 (= res!1869396 (not lt!1679137))))

(declare-fun lt!1679136 () Bool)

(assert (=> d!1379441 (= lt!1679137 lt!1679136)))

(declare-fun lt!1679130 () Unit!91544)

(assert (=> d!1379441 (= lt!1679130 e!2801307)))

(declare-fun c!766347 () Bool)

(assert (=> d!1379441 (= c!766347 lt!1679136)))

(assert (=> d!1379441 (= lt!1679136 (containsKey!1674 (toList!4251 lt!1678892) key!3287))))

(assert (=> d!1379441 (= (contains!13200 lt!1678892 key!3287) lt!1679137)))

(declare-fun bm!312950 () Bool)

(assert (=> bm!312950 (= call!312955 (contains!13203 e!2801306 key!3287))))

(declare-fun c!766346 () Bool)

(assert (=> bm!312950 (= c!766346 c!766347)))

(assert (= (and d!1379441 c!766347) b!4497176))

(assert (= (and d!1379441 (not c!766347)) b!4497179))

(assert (= (and b!4497179 c!766348) b!4497175))

(assert (= (and b!4497179 (not c!766348)) b!4497177))

(assert (= (or b!4497176 b!4497179) bm!312950))

(assert (= (and bm!312950 c!766346) b!4497178))

(assert (= (and bm!312950 (not c!766346)) b!4497181))

(assert (= (and d!1379441 res!1869396) b!4497174))

(assert (= (and d!1379441 (not res!1869395)) b!4497182))

(assert (= (and b!4497182 res!1869394) b!4497180))

(declare-fun m!5225719 () Bool)

(assert (=> b!4497174 m!5225719))

(assert (=> b!4497174 m!5225719))

(declare-fun m!5225721 () Bool)

(assert (=> b!4497174 m!5225721))

(declare-fun m!5225723 () Bool)

(assert (=> d!1379441 m!5225723))

(assert (=> b!4497180 m!5225719))

(assert (=> b!4497180 m!5225719))

(assert (=> b!4497180 m!5225721))

(assert (=> b!4497181 m!5225719))

(declare-fun m!5225725 () Bool)

(assert (=> b!4497176 m!5225725))

(declare-fun m!5225727 () Bool)

(assert (=> b!4497176 m!5225727))

(assert (=> b!4497176 m!5225727))

(declare-fun m!5225729 () Bool)

(assert (=> b!4497176 m!5225729))

(declare-fun m!5225731 () Bool)

(assert (=> b!4497176 m!5225731))

(assert (=> b!4497182 m!5225727))

(assert (=> b!4497182 m!5225727))

(assert (=> b!4497182 m!5225729))

(assert (=> b!4497175 m!5225723))

(declare-fun m!5225733 () Bool)

(assert (=> b!4497175 m!5225733))

(declare-fun m!5225735 () Bool)

(assert (=> b!4497178 m!5225735))

(declare-fun m!5225737 () Bool)

(assert (=> bm!312950 m!5225737))

(assert (=> b!4496872 d!1379441))

(declare-fun bs!834296 () Bool)

(declare-fun d!1379443 () Bool)

(assert (= bs!834296 (and d!1379443 d!1379333)))

(declare-fun lambda!168305 () Int)

(assert (=> bs!834296 (= lambda!168305 lambda!168275)))

(declare-fun bs!834297 () Bool)

(assert (= bs!834297 (and d!1379443 start!443724)))

(assert (=> bs!834297 (= lambda!168305 lambda!168249)))

(declare-fun bs!834298 () Bool)

(assert (= bs!834298 (and d!1379443 d!1379273)))

(assert (=> bs!834298 (= lambda!168305 lambda!168252)))

(declare-fun bs!834299 () Bool)

(assert (= bs!834299 (and d!1379443 d!1379433)))

(assert (=> bs!834299 (= lambda!168305 lambda!168301)))

(declare-fun bs!834300 () Bool)

(assert (= bs!834300 (and d!1379443 d!1379421)))

(assert (=> bs!834300 (= lambda!168305 lambda!168300)))

(declare-fun bs!834301 () Bool)

(assert (= bs!834301 (and d!1379443 d!1379355)))

(assert (=> bs!834301 (= lambda!168305 lambda!168282)))

(declare-fun bs!834302 () Bool)

(assert (= bs!834302 (and d!1379443 d!1379437)))

(assert (=> bs!834302 (= lambda!168305 lambda!168304)))

(declare-fun bs!834303 () Bool)

(assert (= bs!834303 (and d!1379443 d!1379329)))

(assert (=> bs!834303 (= lambda!168305 lambda!168266)))

(declare-fun bs!834304 () Bool)

(assert (= bs!834304 (and d!1379443 d!1379309)))

(assert (=> bs!834304 (not (= lambda!168305 lambda!168263))))

(declare-fun bs!834305 () Bool)

(assert (= bs!834305 (and d!1379443 d!1379403)))

(assert (=> bs!834305 (= lambda!168305 lambda!168296)))

(declare-fun bs!834306 () Bool)

(assert (= bs!834306 (and d!1379443 d!1379401)))

(assert (=> bs!834306 (= lambda!168305 lambda!168293)))

(declare-fun lt!1679138 () ListMap!3513)

(assert (=> d!1379443 (invariantList!981 (toList!4251 lt!1679138))))

(declare-fun e!2801311 () ListMap!3513)

(assert (=> d!1379443 (= lt!1679138 e!2801311)))

(declare-fun c!766349 () Bool)

(assert (=> d!1379443 (= c!766349 ((_ is Cons!50535) (toList!4252 lm!1477)))))

(assert (=> d!1379443 (forall!10167 (toList!4252 lm!1477) lambda!168305)))

(assert (=> d!1379443 (= (extractMap!1178 (toList!4252 lm!1477)) lt!1679138)))

(declare-fun b!4497183 () Bool)

(assert (=> b!4497183 (= e!2801311 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))

(declare-fun b!4497184 () Bool)

(assert (=> b!4497184 (= e!2801311 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379443 c!766349) b!4497183))

(assert (= (and d!1379443 (not c!766349)) b!4497184))

(declare-fun m!5225739 () Bool)

(assert (=> d!1379443 m!5225739))

(declare-fun m!5225741 () Bool)

(assert (=> d!1379443 m!5225741))

(assert (=> b!4497183 m!5225113))

(assert (=> b!4497183 m!5225113))

(declare-fun m!5225743 () Bool)

(assert (=> b!4497183 m!5225743))

(assert (=> b!4496872 d!1379443))

(declare-fun tp!1337443 () Bool)

(declare-fun e!2801314 () Bool)

(declare-fun b!4497189 () Bool)

(assert (=> b!4497189 (= e!2801314 (and tp_is_empty!27765 tp_is_empty!27767 tp!1337443))))

(assert (=> b!4496868 (= tp!1337430 e!2801314)))

(assert (= (and b!4496868 ((_ is Cons!50534) (t!357616 newBucket!178))) b!4497189))

(declare-fun b!4497194 () Bool)

(declare-fun e!2801317 () Bool)

(declare-fun tp!1337448 () Bool)

(declare-fun tp!1337449 () Bool)

(assert (=> b!4497194 (= e!2801317 (and tp!1337448 tp!1337449))))

(assert (=> b!4496861 (= tp!1337431 e!2801317)))

(assert (= (and b!4496861 ((_ is Cons!50535) (toList!4252 lm!1477))) b!4497194))

(declare-fun b_lambda!152061 () Bool)

(assert (= b_lambda!152051 (or start!443724 b_lambda!152061)))

(declare-fun bs!834307 () Bool)

(declare-fun d!1379445 () Bool)

(assert (= bs!834307 (and d!1379445 start!443724)))

(assert (=> bs!834307 (= (dynLambda!21101 lambda!168249 (h!56352 (toList!4252 lm!1477))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lm!1477)))))))

(declare-fun m!5225745 () Bool)

(assert (=> bs!834307 m!5225745))

(assert (=> b!4496957 d!1379445))

(declare-fun b_lambda!152063 () Bool)

(assert (= b_lambda!152049 (or start!443724 b_lambda!152063)))

(declare-fun bs!834308 () Bool)

(declare-fun d!1379447 () Bool)

(assert (= bs!834308 (and d!1379447 start!443724)))

(assert (=> bs!834308 (= (dynLambda!21101 lambda!168249 lt!1678885) (noDuplicateKeys!1122 (_2!28756 lt!1678885)))))

(declare-fun m!5225747 () Bool)

(assert (=> bs!834308 m!5225747))

(assert (=> d!1379281 d!1379447))

(check-sat tp_is_empty!27765 (not b!4497189) (not b!4497142) (not b!4496958) (not b!4497168) (not d!1379331) (not b!4497176) (not b!4497181) (not b!4497117) (not b!4497156) (not b!4497173) (not b!4497129) (not d!1379289) (not b_lambda!152063) (not b!4497194) (not b!4496984) (not d!1379407) (not d!1379427) (not d!1379281) (not d!1379423) (not bm!312949) (not b!4497153) (not d!1379287) (not b!4497183) (not bm!312948) (not b!4497053) (not d!1379277) (not b!4496885) (not b!4496911) (not b!4496989) (not d!1379417) (not d!1379411) (not d!1379415) (not d!1379293) (not b!4497182) (not b!4497133) (not d!1379369) (not bs!834308) (not bs!834307) (not d!1379443) (not d!1379441) (not b!4496904) (not b!4497127) (not b!4496945) (not b!4497175) (not d!1379401) (not b!4497122) (not b!4497174) (not d!1379303) (not b!4497131) tp_is_empty!27767 (not d!1379425) (not b!4496987) (not b!4497152) (not d!1379355) (not b!4496887) (not b!4496897) (not d!1379439) (not b!4497163) (not b!4497120) (not b!4497134) (not b!4497154) (not d!1379273) (not b!4497123) (not b!4497143) (not d!1379309) (not b!4497118) (not b!4497128) (not b!4497178) (not b!4497135) (not b!4497125) (not d!1379403) (not b!4497116) (not d!1379431) (not d!1379405) (not d!1379321) (not b!4497167) (not bm!312950) (not d!1379353) (not b!4497124) (not b!4497180) (not d!1379435) (not b!4497169) (not d!1379433) (not b!4497140) (not b!4497162) (not d!1379437) (not d!1379329) (not b!4496986) (not b_lambda!152061) (not b!4496974) (not b!4497141) (not d!1379409) (not d!1379429) (not d!1379421) (not b!4497170) (not d!1379333) (not d!1379275) (not d!1379299) (not b!4497172))
(check-sat)
(get-model)

(declare-fun d!1379449 () Bool)

(declare-fun lt!1679141 () Bool)

(assert (=> d!1379449 (= lt!1679141 (select (content!8251 e!2801306) key!3287))))

(declare-fun e!2801322 () Bool)

(assert (=> d!1379449 (= lt!1679141 e!2801322)))

(declare-fun res!1869401 () Bool)

(assert (=> d!1379449 (=> (not res!1869401) (not e!2801322))))

(assert (=> d!1379449 (= res!1869401 ((_ is Cons!50537) e!2801306))))

(assert (=> d!1379449 (= (contains!13203 e!2801306 key!3287) lt!1679141)))

(declare-fun b!4497199 () Bool)

(declare-fun e!2801323 () Bool)

(assert (=> b!4497199 (= e!2801322 e!2801323)))

(declare-fun res!1869402 () Bool)

(assert (=> b!4497199 (=> res!1869402 e!2801323)))

(assert (=> b!4497199 (= res!1869402 (= (h!56356 e!2801306) key!3287))))

(declare-fun b!4497200 () Bool)

(assert (=> b!4497200 (= e!2801323 (contains!13203 (t!357619 e!2801306) key!3287))))

(assert (= (and d!1379449 res!1869401) b!4497199))

(assert (= (and b!4497199 (not res!1869402)) b!4497200))

(declare-fun m!5225751 () Bool)

(assert (=> d!1379449 m!5225751))

(declare-fun m!5225753 () Bool)

(assert (=> d!1379449 m!5225753))

(declare-fun m!5225755 () Bool)

(assert (=> b!4497200 m!5225755))

(assert (=> bm!312950 d!1379449))

(declare-fun d!1379455 () Bool)

(declare-fun noDuplicatedKeys!240 (List!50658) Bool)

(assert (=> d!1379455 (= (invariantList!981 (toList!4251 lt!1679045)) (noDuplicatedKeys!240 (toList!4251 lt!1679045)))))

(declare-fun bs!834310 () Bool)

(assert (= bs!834310 d!1379455))

(declare-fun m!5225757 () Bool)

(assert (=> bs!834310 m!5225757))

(assert (=> d!1379355 d!1379455))

(declare-fun d!1379457 () Bool)

(declare-fun res!1869403 () Bool)

(declare-fun e!2801324 () Bool)

(assert (=> d!1379457 (=> res!1869403 e!2801324)))

(assert (=> d!1379457 (= res!1869403 ((_ is Nil!50535) (toList!4252 lt!1678893)))))

(assert (=> d!1379457 (= (forall!10167 (toList!4252 lt!1678893) lambda!168282) e!2801324)))

(declare-fun b!4497201 () Bool)

(declare-fun e!2801325 () Bool)

(assert (=> b!4497201 (= e!2801324 e!2801325)))

(declare-fun res!1869404 () Bool)

(assert (=> b!4497201 (=> (not res!1869404) (not e!2801325))))

(assert (=> b!4497201 (= res!1869404 (dynLambda!21101 lambda!168282 (h!56352 (toList!4252 lt!1678893))))))

(declare-fun b!4497202 () Bool)

(assert (=> b!4497202 (= e!2801325 (forall!10167 (t!357617 (toList!4252 lt!1678893)) lambda!168282))))

(assert (= (and d!1379457 (not res!1869403)) b!4497201))

(assert (= (and b!4497201 res!1869404) b!4497202))

(declare-fun b_lambda!152065 () Bool)

(assert (=> (not b_lambda!152065) (not b!4497201)))

(declare-fun m!5225759 () Bool)

(assert (=> b!4497201 m!5225759))

(declare-fun m!5225761 () Bool)

(assert (=> b!4497202 m!5225761))

(assert (=> d!1379355 d!1379457))

(declare-fun d!1379459 () Bool)

(declare-fun res!1869405 () Bool)

(declare-fun e!2801326 () Bool)

(assert (=> d!1379459 (=> res!1869405 e!2801326)))

(assert (=> d!1379459 (= res!1869405 (and ((_ is Cons!50534) (_2!28756 (h!56352 (toList!4252 lt!1678893)))) (= (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678893))))) key!3287)))))

(assert (=> d!1379459 (= (containsKey!1670 (_2!28756 (h!56352 (toList!4252 lt!1678893))) key!3287) e!2801326)))

(declare-fun b!4497203 () Bool)

(declare-fun e!2801327 () Bool)

(assert (=> b!4497203 (= e!2801326 e!2801327)))

(declare-fun res!1869406 () Bool)

(assert (=> b!4497203 (=> (not res!1869406) (not e!2801327))))

(assert (=> b!4497203 (= res!1869406 ((_ is Cons!50534) (_2!28756 (h!56352 (toList!4252 lt!1678893)))))))

(declare-fun b!4497204 () Bool)

(assert (=> b!4497204 (= e!2801327 (containsKey!1670 (t!357616 (_2!28756 (h!56352 (toList!4252 lt!1678893)))) key!3287))))

(assert (= (and d!1379459 (not res!1869405)) b!4497203))

(assert (= (and b!4497203 res!1869406) b!4497204))

(declare-fun m!5225763 () Bool)

(assert (=> b!4497204 m!5225763))

(assert (=> b!4496987 d!1379459))

(declare-fun d!1379461 () Bool)

(declare-fun e!2801330 () Bool)

(assert (=> d!1379461 e!2801330))

(declare-fun res!1869407 () Bool)

(assert (=> d!1379461 (=> res!1869407 e!2801330)))

(declare-fun lt!1679142 () Bool)

(assert (=> d!1379461 (= res!1869407 (not lt!1679142))))

(declare-fun lt!1679144 () Bool)

(assert (=> d!1379461 (= lt!1679142 lt!1679144)))

(declare-fun lt!1679145 () Unit!91544)

(declare-fun e!2801331 () Unit!91544)

(assert (=> d!1379461 (= lt!1679145 e!2801331)))

(declare-fun c!766352 () Bool)

(assert (=> d!1379461 (= c!766352 lt!1679144)))

(assert (=> d!1379461 (= lt!1679144 (containsKey!1672 (toList!4252 lt!1679108) (_1!28756 lt!1678890)))))

(assert (=> d!1379461 (= (contains!13199 lt!1679108 (_1!28756 lt!1678890)) lt!1679142)))

(declare-fun b!4497209 () Bool)

(declare-fun lt!1679143 () Unit!91544)

(assert (=> b!4497209 (= e!2801331 lt!1679143)))

(assert (=> b!4497209 (= lt!1679143 (lemmaContainsKeyImpliesGetValueByKeyDefined!923 (toList!4252 lt!1679108) (_1!28756 lt!1678890)))))

(assert (=> b!4497209 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1679108) (_1!28756 lt!1678890)))))

(declare-fun b!4497210 () Bool)

(declare-fun Unit!91564 () Unit!91544)

(assert (=> b!4497210 (= e!2801331 Unit!91564)))

(declare-fun b!4497211 () Bool)

(assert (=> b!4497211 (= e!2801330 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1679108) (_1!28756 lt!1678890))))))

(assert (= (and d!1379461 c!766352) b!4497209))

(assert (= (and d!1379461 (not c!766352)) b!4497210))

(assert (= (and d!1379461 (not res!1869407)) b!4497211))

(declare-fun m!5225765 () Bool)

(assert (=> d!1379461 m!5225765))

(declare-fun m!5225767 () Bool)

(assert (=> b!4497209 m!5225767))

(assert (=> b!4497209 m!5225627))

(assert (=> b!4497209 m!5225627))

(declare-fun m!5225769 () Bool)

(assert (=> b!4497209 m!5225769))

(assert (=> b!4497211 m!5225627))

(assert (=> b!4497211 m!5225627))

(assert (=> b!4497211 m!5225769))

(assert (=> d!1379409 d!1379461))

(declare-fun b!4497235 () Bool)

(declare-fun e!2801344 () Option!11040)

(declare-fun e!2801345 () Option!11040)

(assert (=> b!4497235 (= e!2801344 e!2801345)))

(declare-fun c!766364 () Bool)

(assert (=> b!4497235 (= c!766364 (and ((_ is Cons!50535) lt!1679107) (not (= (_1!28756 (h!56352 lt!1679107)) (_1!28756 lt!1678890)))))))

(declare-fun b!4497234 () Bool)

(assert (=> b!4497234 (= e!2801344 (Some!11039 (_2!28756 (h!56352 lt!1679107))))))

(declare-fun d!1379463 () Bool)

(declare-fun c!766363 () Bool)

(assert (=> d!1379463 (= c!766363 (and ((_ is Cons!50535) lt!1679107) (= (_1!28756 (h!56352 lt!1679107)) (_1!28756 lt!1678890))))))

(assert (=> d!1379463 (= (getValueByKey!1020 lt!1679107 (_1!28756 lt!1678890)) e!2801344)))

(declare-fun b!4497236 () Bool)

(assert (=> b!4497236 (= e!2801345 (getValueByKey!1020 (t!357617 lt!1679107) (_1!28756 lt!1678890)))))

(declare-fun b!4497237 () Bool)

(assert (=> b!4497237 (= e!2801345 None!11039)))

(assert (= (and d!1379463 c!766363) b!4497234))

(assert (= (and d!1379463 (not c!766363)) b!4497235))

(assert (= (and b!4497235 c!766364) b!4497236))

(assert (= (and b!4497235 (not c!766364)) b!4497237))

(declare-fun m!5225781 () Bool)

(assert (=> b!4497236 m!5225781))

(assert (=> d!1379409 d!1379463))

(declare-fun d!1379471 () Bool)

(assert (=> d!1379471 (= (getValueByKey!1020 lt!1679107 (_1!28756 lt!1678890)) (Some!11039 (_2!28756 lt!1678890)))))

(declare-fun lt!1679153 () Unit!91544)

(declare-fun choose!29083 (List!50659 (_ BitVec 64) List!50658) Unit!91544)

(assert (=> d!1379471 (= lt!1679153 (choose!29083 lt!1679107 (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))

(declare-fun e!2801358 () Bool)

(assert (=> d!1379471 e!2801358))

(declare-fun res!1869424 () Bool)

(assert (=> d!1379471 (=> (not res!1869424) (not e!2801358))))

(assert (=> d!1379471 (= res!1869424 (isStrictlySorted!395 lt!1679107))))

(assert (=> d!1379471 (= (lemmaContainsTupThenGetReturnValue!630 lt!1679107 (_1!28756 lt!1678890) (_2!28756 lt!1678890)) lt!1679153)))

(declare-fun b!4497252 () Bool)

(declare-fun res!1869425 () Bool)

(assert (=> b!4497252 (=> (not res!1869425) (not e!2801358))))

(assert (=> b!4497252 (= res!1869425 (containsKey!1672 lt!1679107 (_1!28756 lt!1678890)))))

(declare-fun b!4497253 () Bool)

(assert (=> b!4497253 (= e!2801358 (contains!13201 lt!1679107 (tuple2!50925 (_1!28756 lt!1678890) (_2!28756 lt!1678890))))))

(assert (= (and d!1379471 res!1869424) b!4497252))

(assert (= (and b!4497252 res!1869425) b!4497253))

(assert (=> d!1379471 m!5225621))

(declare-fun m!5225799 () Bool)

(assert (=> d!1379471 m!5225799))

(declare-fun m!5225801 () Bool)

(assert (=> d!1379471 m!5225801))

(declare-fun m!5225803 () Bool)

(assert (=> b!4497252 m!5225803))

(declare-fun m!5225805 () Bool)

(assert (=> b!4497253 m!5225805))

(assert (=> d!1379409 d!1379471))

(declare-fun bm!312957 () Bool)

(declare-fun call!312963 () List!50659)

(declare-fun call!312962 () List!50659)

(assert (=> bm!312957 (= call!312963 call!312962)))

(declare-fun bm!312958 () Bool)

(declare-fun call!312964 () List!50659)

(assert (=> bm!312958 (= call!312962 call!312964)))

(declare-fun b!4497288 () Bool)

(declare-fun e!2801381 () List!50659)

(assert (=> b!4497288 (= e!2801381 call!312962)))

(declare-fun b!4497289 () Bool)

(declare-fun e!2801382 () List!50659)

(assert (=> b!4497289 (= e!2801382 call!312963)))

(declare-fun b!4497290 () Bool)

(declare-fun e!2801380 () List!50659)

(assert (=> b!4497290 (= e!2801380 call!312964)))

(declare-fun b!4497291 () Bool)

(declare-fun c!766377 () Bool)

(assert (=> b!4497291 (= c!766377 (and ((_ is Cons!50535) (toList!4252 lm!1477)) (bvsgt (_1!28756 (h!56352 (toList!4252 lm!1477))) (_1!28756 lt!1678890))))))

(assert (=> b!4497291 (= e!2801381 e!2801382)))

(declare-fun b!4497292 () Bool)

(assert (=> b!4497292 (= e!2801382 call!312963)))

(declare-fun b!4497293 () Bool)

(declare-fun e!2801379 () List!50659)

(assert (=> b!4497293 (= e!2801379 (insertStrictlySorted!372 (t!357617 (toList!4252 lm!1477)) (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))

(declare-fun b!4497294 () Bool)

(declare-fun res!1869436 () Bool)

(declare-fun e!2801383 () Bool)

(assert (=> b!4497294 (=> (not res!1869436) (not e!2801383))))

(declare-fun lt!1679159 () List!50659)

(assert (=> b!4497294 (= res!1869436 (containsKey!1672 lt!1679159 (_1!28756 lt!1678890)))))

(declare-fun d!1379479 () Bool)

(assert (=> d!1379479 e!2801383))

(declare-fun res!1869437 () Bool)

(assert (=> d!1379479 (=> (not res!1869437) (not e!2801383))))

(assert (=> d!1379479 (= res!1869437 (isStrictlySorted!395 lt!1679159))))

(assert (=> d!1379479 (= lt!1679159 e!2801380)))

(declare-fun c!766379 () Bool)

(assert (=> d!1379479 (= c!766379 (and ((_ is Cons!50535) (toList!4252 lm!1477)) (bvslt (_1!28756 (h!56352 (toList!4252 lm!1477))) (_1!28756 lt!1678890))))))

(assert (=> d!1379479 (isStrictlySorted!395 (toList!4252 lm!1477))))

(assert (=> d!1379479 (= (insertStrictlySorted!372 (toList!4252 lm!1477) (_1!28756 lt!1678890) (_2!28756 lt!1678890)) lt!1679159)))

(declare-fun b!4497295 () Bool)

(declare-fun c!766380 () Bool)

(assert (=> b!4497295 (= e!2801379 (ite c!766380 (t!357617 (toList!4252 lm!1477)) (ite c!766377 (Cons!50535 (h!56352 (toList!4252 lm!1477)) (t!357617 (toList!4252 lm!1477))) Nil!50535)))))

(declare-fun b!4497296 () Bool)

(assert (=> b!4497296 (= e!2801383 (contains!13201 lt!1679159 (tuple2!50925 (_1!28756 lt!1678890) (_2!28756 lt!1678890))))))

(declare-fun b!4497297 () Bool)

(assert (=> b!4497297 (= e!2801380 e!2801381)))

(assert (=> b!4497297 (= c!766380 (and ((_ is Cons!50535) (toList!4252 lm!1477)) (= (_1!28756 (h!56352 (toList!4252 lm!1477))) (_1!28756 lt!1678890))))))

(declare-fun bm!312959 () Bool)

(declare-fun $colon$colon!889 (List!50659 tuple2!50924) List!50659)

(assert (=> bm!312959 (= call!312964 ($colon$colon!889 e!2801379 (ite c!766379 (h!56352 (toList!4252 lm!1477)) (tuple2!50925 (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))))

(declare-fun c!766378 () Bool)

(assert (=> bm!312959 (= c!766378 c!766379)))

(assert (= (and d!1379479 c!766379) b!4497290))

(assert (= (and d!1379479 (not c!766379)) b!4497297))

(assert (= (and b!4497297 c!766380) b!4497288))

(assert (= (and b!4497297 (not c!766380)) b!4497291))

(assert (= (and b!4497291 c!766377) b!4497289))

(assert (= (and b!4497291 (not c!766377)) b!4497292))

(assert (= (or b!4497289 b!4497292) bm!312957))

(assert (= (or b!4497288 bm!312957) bm!312958))

(assert (= (or b!4497290 bm!312958) bm!312959))

(assert (= (and bm!312959 c!766378) b!4497293))

(assert (= (and bm!312959 (not c!766378)) b!4497295))

(assert (= (and d!1379479 res!1869437) b!4497294))

(assert (= (and b!4497294 res!1869436) b!4497296))

(declare-fun m!5225815 () Bool)

(assert (=> b!4497296 m!5225815))

(declare-fun m!5225817 () Bool)

(assert (=> bm!312959 m!5225817))

(declare-fun m!5225819 () Bool)

(assert (=> b!4497294 m!5225819))

(declare-fun m!5225821 () Bool)

(assert (=> d!1379479 m!5225821))

(assert (=> d!1379479 m!5225235))

(declare-fun m!5225823 () Bool)

(assert (=> b!4497293 m!5225823))

(assert (=> d!1379409 d!1379479))

(declare-fun d!1379487 () Bool)

(assert (=> d!1379487 (= (invariantList!981 (toList!4251 lt!1679122)) (noDuplicatedKeys!240 (toList!4251 lt!1679122)))))

(declare-fun bs!834313 () Bool)

(assert (= bs!834313 d!1379487))

(declare-fun m!5225825 () Bool)

(assert (=> bs!834313 m!5225825))

(assert (=> d!1379433 d!1379487))

(declare-fun d!1379489 () Bool)

(declare-fun res!1869438 () Bool)

(declare-fun e!2801386 () Bool)

(assert (=> d!1379489 (=> res!1869438 e!2801386)))

(assert (=> d!1379489 (= res!1869438 ((_ is Nil!50535) (toList!4252 (+!1466 lt!1678893 lt!1678886))))))

(assert (=> d!1379489 (= (forall!10167 (toList!4252 (+!1466 lt!1678893 lt!1678886)) lambda!168301) e!2801386)))

(declare-fun b!4497302 () Bool)

(declare-fun e!2801387 () Bool)

(assert (=> b!4497302 (= e!2801386 e!2801387)))

(declare-fun res!1869439 () Bool)

(assert (=> b!4497302 (=> (not res!1869439) (not e!2801387))))

(assert (=> b!4497302 (= res!1869439 (dynLambda!21101 lambda!168301 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))))

(declare-fun b!4497303 () Bool)

(assert (=> b!4497303 (= e!2801387 (forall!10167 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))) lambda!168301))))

(assert (= (and d!1379489 (not res!1869438)) b!4497302))

(assert (= (and b!4497302 res!1869439) b!4497303))

(declare-fun b_lambda!152067 () Bool)

(assert (=> (not b_lambda!152067) (not b!4497302)))

(declare-fun m!5225829 () Bool)

(assert (=> b!4497302 m!5225829))

(declare-fun m!5225831 () Bool)

(assert (=> b!4497303 m!5225831))

(assert (=> d!1379433 d!1379489))

(declare-fun d!1379493 () Bool)

(declare-fun e!2801394 () Bool)

(assert (=> d!1379493 e!2801394))

(declare-fun res!1869443 () Bool)

(assert (=> d!1379493 (=> res!1869443 e!2801394)))

(declare-fun lt!1679168 () Bool)

(assert (=> d!1379493 (= res!1869443 (not lt!1679168))))

(declare-fun lt!1679170 () Bool)

(assert (=> d!1379493 (= lt!1679168 lt!1679170)))

(declare-fun lt!1679171 () Unit!91544)

(declare-fun e!2801395 () Unit!91544)

(assert (=> d!1379493 (= lt!1679171 e!2801395)))

(declare-fun c!766386 () Bool)

(assert (=> d!1379493 (= c!766386 lt!1679170)))

(assert (=> d!1379493 (= lt!1679170 (containsKey!1672 (toList!4252 lt!1679120) (_1!28756 lt!1678890)))))

(assert (=> d!1379493 (= (contains!13199 lt!1679120 (_1!28756 lt!1678890)) lt!1679168)))

(declare-fun b!4497313 () Bool)

(declare-fun lt!1679169 () Unit!91544)

(assert (=> b!4497313 (= e!2801395 lt!1679169)))

(assert (=> b!4497313 (= lt!1679169 (lemmaContainsKeyImpliesGetValueByKeyDefined!923 (toList!4252 lt!1679120) (_1!28756 lt!1678890)))))

(assert (=> b!4497313 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1679120) (_1!28756 lt!1678890)))))

(declare-fun b!4497314 () Bool)

(declare-fun Unit!91565 () Unit!91544)

(assert (=> b!4497314 (= e!2801395 Unit!91565)))

(declare-fun b!4497315 () Bool)

(assert (=> b!4497315 (= e!2801394 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1679120) (_1!28756 lt!1678890))))))

(assert (= (and d!1379493 c!766386) b!4497313))

(assert (= (and d!1379493 (not c!766386)) b!4497314))

(assert (= (and d!1379493 (not res!1869443)) b!4497315))

(declare-fun m!5225833 () Bool)

(assert (=> d!1379493 m!5225833))

(declare-fun m!5225835 () Bool)

(assert (=> b!4497313 m!5225835))

(assert (=> b!4497313 m!5225681))

(assert (=> b!4497313 m!5225681))

(declare-fun m!5225837 () Bool)

(assert (=> b!4497313 m!5225837))

(assert (=> b!4497315 m!5225681))

(assert (=> b!4497315 m!5225681))

(assert (=> b!4497315 m!5225837))

(assert (=> d!1379431 d!1379493))

(declare-fun b!4497317 () Bool)

(declare-fun e!2801396 () Option!11040)

(declare-fun e!2801397 () Option!11040)

(assert (=> b!4497317 (= e!2801396 e!2801397)))

(declare-fun c!766388 () Bool)

(assert (=> b!4497317 (= c!766388 (and ((_ is Cons!50535) lt!1679119) (not (= (_1!28756 (h!56352 lt!1679119)) (_1!28756 lt!1678890)))))))

(declare-fun b!4497316 () Bool)

(assert (=> b!4497316 (= e!2801396 (Some!11039 (_2!28756 (h!56352 lt!1679119))))))

(declare-fun d!1379495 () Bool)

(declare-fun c!766387 () Bool)

(assert (=> d!1379495 (= c!766387 (and ((_ is Cons!50535) lt!1679119) (= (_1!28756 (h!56352 lt!1679119)) (_1!28756 lt!1678890))))))

(assert (=> d!1379495 (= (getValueByKey!1020 lt!1679119 (_1!28756 lt!1678890)) e!2801396)))

(declare-fun b!4497318 () Bool)

(assert (=> b!4497318 (= e!2801397 (getValueByKey!1020 (t!357617 lt!1679119) (_1!28756 lt!1678890)))))

(declare-fun b!4497319 () Bool)

(assert (=> b!4497319 (= e!2801397 None!11039)))

(assert (= (and d!1379495 c!766387) b!4497316))

(assert (= (and d!1379495 (not c!766387)) b!4497317))

(assert (= (and b!4497317 c!766388) b!4497318))

(assert (= (and b!4497317 (not c!766388)) b!4497319))

(declare-fun m!5225839 () Bool)

(assert (=> b!4497318 m!5225839))

(assert (=> d!1379431 d!1379495))

(declare-fun d!1379497 () Bool)

(assert (=> d!1379497 (= (getValueByKey!1020 lt!1679119 (_1!28756 lt!1678890)) (Some!11039 (_2!28756 lt!1678890)))))

(declare-fun lt!1679172 () Unit!91544)

(assert (=> d!1379497 (= lt!1679172 (choose!29083 lt!1679119 (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))

(declare-fun e!2801398 () Bool)

(assert (=> d!1379497 e!2801398))

(declare-fun res!1869444 () Bool)

(assert (=> d!1379497 (=> (not res!1869444) (not e!2801398))))

(assert (=> d!1379497 (= res!1869444 (isStrictlySorted!395 lt!1679119))))

(assert (=> d!1379497 (= (lemmaContainsTupThenGetReturnValue!630 lt!1679119 (_1!28756 lt!1678890) (_2!28756 lt!1678890)) lt!1679172)))

(declare-fun b!4497320 () Bool)

(declare-fun res!1869445 () Bool)

(assert (=> b!4497320 (=> (not res!1869445) (not e!2801398))))

(assert (=> b!4497320 (= res!1869445 (containsKey!1672 lt!1679119 (_1!28756 lt!1678890)))))

(declare-fun b!4497321 () Bool)

(assert (=> b!4497321 (= e!2801398 (contains!13201 lt!1679119 (tuple2!50925 (_1!28756 lt!1678890) (_2!28756 lt!1678890))))))

(assert (= (and d!1379497 res!1869444) b!4497320))

(assert (= (and b!4497320 res!1869445) b!4497321))

(assert (=> d!1379497 m!5225675))

(declare-fun m!5225841 () Bool)

(assert (=> d!1379497 m!5225841))

(declare-fun m!5225843 () Bool)

(assert (=> d!1379497 m!5225843))

(declare-fun m!5225845 () Bool)

(assert (=> b!4497320 m!5225845))

(declare-fun m!5225847 () Bool)

(assert (=> b!4497321 m!5225847))

(assert (=> d!1379431 d!1379497))

(declare-fun bm!312961 () Bool)

(declare-fun call!312967 () List!50659)

(declare-fun call!312966 () List!50659)

(assert (=> bm!312961 (= call!312967 call!312966)))

(declare-fun bm!312962 () Bool)

(declare-fun call!312968 () List!50659)

(assert (=> bm!312962 (= call!312966 call!312968)))

(declare-fun b!4497322 () Bool)

(declare-fun e!2801401 () List!50659)

(assert (=> b!4497322 (= e!2801401 call!312966)))

(declare-fun b!4497323 () Bool)

(declare-fun e!2801402 () List!50659)

(assert (=> b!4497323 (= e!2801402 call!312967)))

(declare-fun b!4497324 () Bool)

(declare-fun e!2801400 () List!50659)

(assert (=> b!4497324 (= e!2801400 call!312968)))

(declare-fun b!4497325 () Bool)

(declare-fun c!766389 () Bool)

(assert (=> b!4497325 (= c!766389 (and ((_ is Cons!50535) (toList!4252 lt!1678893)) (bvsgt (_1!28756 (h!56352 (toList!4252 lt!1678893))) (_1!28756 lt!1678890))))))

(assert (=> b!4497325 (= e!2801401 e!2801402)))

(declare-fun b!4497326 () Bool)

(assert (=> b!4497326 (= e!2801402 call!312967)))

(declare-fun b!4497327 () Bool)

(declare-fun e!2801399 () List!50659)

(assert (=> b!4497327 (= e!2801399 (insertStrictlySorted!372 (t!357617 (toList!4252 lt!1678893)) (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))

(declare-fun b!4497328 () Bool)

(declare-fun res!1869446 () Bool)

(declare-fun e!2801403 () Bool)

(assert (=> b!4497328 (=> (not res!1869446) (not e!2801403))))

(declare-fun lt!1679173 () List!50659)

(assert (=> b!4497328 (= res!1869446 (containsKey!1672 lt!1679173 (_1!28756 lt!1678890)))))

(declare-fun d!1379499 () Bool)

(assert (=> d!1379499 e!2801403))

(declare-fun res!1869447 () Bool)

(assert (=> d!1379499 (=> (not res!1869447) (not e!2801403))))

(assert (=> d!1379499 (= res!1869447 (isStrictlySorted!395 lt!1679173))))

(assert (=> d!1379499 (= lt!1679173 e!2801400)))

(declare-fun c!766391 () Bool)

(assert (=> d!1379499 (= c!766391 (and ((_ is Cons!50535) (toList!4252 lt!1678893)) (bvslt (_1!28756 (h!56352 (toList!4252 lt!1678893))) (_1!28756 lt!1678890))))))

(assert (=> d!1379499 (isStrictlySorted!395 (toList!4252 lt!1678893))))

(assert (=> d!1379499 (= (insertStrictlySorted!372 (toList!4252 lt!1678893) (_1!28756 lt!1678890) (_2!28756 lt!1678890)) lt!1679173)))

(declare-fun c!766392 () Bool)

(declare-fun b!4497329 () Bool)

(assert (=> b!4497329 (= e!2801399 (ite c!766392 (t!357617 (toList!4252 lt!1678893)) (ite c!766389 (Cons!50535 (h!56352 (toList!4252 lt!1678893)) (t!357617 (toList!4252 lt!1678893))) Nil!50535)))))

(declare-fun b!4497330 () Bool)

(assert (=> b!4497330 (= e!2801403 (contains!13201 lt!1679173 (tuple2!50925 (_1!28756 lt!1678890) (_2!28756 lt!1678890))))))

(declare-fun b!4497331 () Bool)

(assert (=> b!4497331 (= e!2801400 e!2801401)))

(assert (=> b!4497331 (= c!766392 (and ((_ is Cons!50535) (toList!4252 lt!1678893)) (= (_1!28756 (h!56352 (toList!4252 lt!1678893))) (_1!28756 lt!1678890))))))

(declare-fun bm!312963 () Bool)

(assert (=> bm!312963 (= call!312968 ($colon$colon!889 e!2801399 (ite c!766391 (h!56352 (toList!4252 lt!1678893)) (tuple2!50925 (_1!28756 lt!1678890) (_2!28756 lt!1678890)))))))

(declare-fun c!766390 () Bool)

(assert (=> bm!312963 (= c!766390 c!766391)))

(assert (= (and d!1379499 c!766391) b!4497324))

(assert (= (and d!1379499 (not c!766391)) b!4497331))

(assert (= (and b!4497331 c!766392) b!4497322))

(assert (= (and b!4497331 (not c!766392)) b!4497325))

(assert (= (and b!4497325 c!766389) b!4497323))

(assert (= (and b!4497325 (not c!766389)) b!4497326))

(assert (= (or b!4497323 b!4497326) bm!312961))

(assert (= (or b!4497322 bm!312961) bm!312962))

(assert (= (or b!4497324 bm!312962) bm!312963))

(assert (= (and bm!312963 c!766390) b!4497327))

(assert (= (and bm!312963 (not c!766390)) b!4497329))

(assert (= (and d!1379499 res!1869447) b!4497328))

(assert (= (and b!4497328 res!1869446) b!4497330))

(declare-fun m!5225867 () Bool)

(assert (=> b!4497330 m!5225867))

(declare-fun m!5225869 () Bool)

(assert (=> bm!312963 m!5225869))

(declare-fun m!5225871 () Bool)

(assert (=> b!4497328 m!5225871))

(declare-fun m!5225873 () Bool)

(assert (=> d!1379499 m!5225873))

(declare-fun m!5225875 () Bool)

(assert (=> d!1379499 m!5225875))

(declare-fun m!5225877 () Bool)

(assert (=> b!4497327 m!5225877))

(assert (=> d!1379431 d!1379499))

(declare-fun bs!834323 () Bool)

(declare-fun b!4497456 () Bool)

(assert (= bs!834323 (and b!4497456 d!1379411)))

(declare-fun lambda!168344 () Int)

(assert (=> bs!834323 (not (= lambda!168344 lambda!168299))))

(assert (=> b!4497456 true))

(declare-fun bs!834324 () Bool)

(declare-fun b!4497455 () Bool)

(assert (= bs!834324 (and b!4497455 d!1379411)))

(declare-fun lambda!168345 () Int)

(assert (=> bs!834324 (not (= lambda!168345 lambda!168299))))

(declare-fun bs!834325 () Bool)

(assert (= bs!834325 (and b!4497455 b!4497456)))

(assert (=> bs!834325 (= lambda!168345 lambda!168344)))

(assert (=> b!4497455 true))

(declare-fun lambda!168346 () Int)

(assert (=> bs!834324 (not (= lambda!168346 lambda!168299))))

(declare-fun lt!1679301 () ListMap!3513)

(assert (=> bs!834325 (= (= lt!1679301 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168346 lambda!168344))))

(assert (=> b!4497455 (= (= lt!1679301 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168346 lambda!168345))))

(assert (=> b!4497455 true))

(declare-fun bs!834326 () Bool)

(declare-fun d!1379503 () Bool)

(assert (= bs!834326 (and d!1379503 d!1379411)))

(declare-fun lambda!168347 () Int)

(assert (=> bs!834326 (not (= lambda!168347 lambda!168299))))

(declare-fun bs!834327 () Bool)

(assert (= bs!834327 (and d!1379503 b!4497456)))

(declare-fun lt!1679300 () ListMap!3513)

(assert (=> bs!834327 (= (= lt!1679300 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168347 lambda!168344))))

(declare-fun bs!834328 () Bool)

(assert (= bs!834328 (and d!1379503 b!4497455)))

(assert (=> bs!834328 (= (= lt!1679300 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168347 lambda!168345))))

(assert (=> bs!834328 (= (= lt!1679300 lt!1679301) (= lambda!168347 lambda!168346))))

(assert (=> d!1379503 true))

(declare-fun bm!312989 () Bool)

(declare-fun call!312995 () Unit!91544)

(declare-fun lemmaContainsAllItsOwnKeys!303 (ListMap!3513) Unit!91544)

(assert (=> bm!312989 (= call!312995 (lemmaContainsAllItsOwnKeys!303 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))))))

(declare-fun b!4497454 () Bool)

(declare-fun res!1869496 () Bool)

(declare-fun e!2801472 () Bool)

(assert (=> b!4497454 (=> (not res!1869496) (not e!2801472))))

(assert (=> b!4497454 (= res!1869496 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) lambda!168347))))

(declare-fun e!2801473 () ListMap!3513)

(assert (=> b!4497455 (= e!2801473 lt!1679301)))

(declare-fun lt!1679302 () ListMap!3513)

(declare-fun +!1467 (ListMap!3513 tuple2!50922) ListMap!3513)

(assert (=> b!4497455 (= lt!1679302 (+!1467 (extractMap!1178 (t!357617 (toList!4252 lt!1678893))) (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678893))))))))

(assert (=> b!4497455 (= lt!1679301 (addToMapMapFromBucket!649 (t!357616 (_2!28756 (h!56352 (toList!4252 lt!1678893)))) (+!1467 (extractMap!1178 (t!357617 (toList!4252 lt!1678893))) (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678893)))))))))

(declare-fun lt!1679291 () Unit!91544)

(assert (=> b!4497455 (= lt!1679291 call!312995)))

(assert (=> b!4497455 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) lambda!168345)))

(declare-fun lt!1679295 () Unit!91544)

(assert (=> b!4497455 (= lt!1679295 lt!1679291)))

(assert (=> b!4497455 (forall!10169 (toList!4251 lt!1679302) lambda!168346)))

(declare-fun lt!1679290 () Unit!91544)

(declare-fun Unit!91568 () Unit!91544)

(assert (=> b!4497455 (= lt!1679290 Unit!91568)))

(declare-fun call!312994 () Bool)

(assert (=> b!4497455 call!312994))

(declare-fun lt!1679297 () Unit!91544)

(declare-fun Unit!91569 () Unit!91544)

(assert (=> b!4497455 (= lt!1679297 Unit!91569)))

(declare-fun lt!1679306 () Unit!91544)

(declare-fun Unit!91570 () Unit!91544)

(assert (=> b!4497455 (= lt!1679306 Unit!91570)))

(declare-fun lt!1679292 () Unit!91544)

(declare-fun forallContained!2422 (List!50658 Int tuple2!50922) Unit!91544)

(assert (=> b!4497455 (= lt!1679292 (forallContained!2422 (toList!4251 lt!1679302) lambda!168346 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678893))))))))

(assert (=> b!4497455 (contains!13200 lt!1679302 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678893))))))))

(declare-fun lt!1679296 () Unit!91544)

(declare-fun Unit!91571 () Unit!91544)

(assert (=> b!4497455 (= lt!1679296 Unit!91571)))

(assert (=> b!4497455 (contains!13200 lt!1679301 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678893))))))))

(declare-fun lt!1679298 () Unit!91544)

(declare-fun Unit!91572 () Unit!91544)

(assert (=> b!4497455 (= lt!1679298 Unit!91572)))

(declare-fun call!312996 () Bool)

(assert (=> b!4497455 call!312996))

(declare-fun lt!1679304 () Unit!91544)

(declare-fun Unit!91573 () Unit!91544)

(assert (=> b!4497455 (= lt!1679304 Unit!91573)))

(assert (=> b!4497455 (forall!10169 (toList!4251 lt!1679302) lambda!168346)))

(declare-fun lt!1679289 () Unit!91544)

(declare-fun Unit!91574 () Unit!91544)

(assert (=> b!4497455 (= lt!1679289 Unit!91574)))

(declare-fun lt!1679293 () Unit!91544)

(declare-fun Unit!91575 () Unit!91544)

(assert (=> b!4497455 (= lt!1679293 Unit!91575)))

(declare-fun lt!1679299 () Unit!91544)

(declare-fun addForallContainsKeyThenBeforeAdding!303 (ListMap!3513 ListMap!3513 K!11945 V!12191) Unit!91544)

(assert (=> b!4497455 (= lt!1679299 (addForallContainsKeyThenBeforeAdding!303 (extractMap!1178 (t!357617 (toList!4252 lt!1678893))) lt!1679301 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678893))))) (_2!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678893)))))))))

(assert (=> b!4497455 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) lambda!168346)))

(declare-fun lt!1679308 () Unit!91544)

(assert (=> b!4497455 (= lt!1679308 lt!1679299)))

(assert (=> b!4497455 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) lambda!168346)))

(declare-fun lt!1679294 () Unit!91544)

(declare-fun Unit!91576 () Unit!91544)

(assert (=> b!4497455 (= lt!1679294 Unit!91576)))

(declare-fun res!1869495 () Bool)

(assert (=> b!4497455 (= res!1869495 (forall!10169 (_2!28756 (h!56352 (toList!4252 lt!1678893))) lambda!168346))))

(declare-fun e!2801471 () Bool)

(assert (=> b!4497455 (=> (not res!1869495) (not e!2801471))))

(assert (=> b!4497455 e!2801471))

(declare-fun lt!1679309 () Unit!91544)

(declare-fun Unit!91577 () Unit!91544)

(assert (=> b!4497455 (= lt!1679309 Unit!91577)))

(declare-fun c!766430 () Bool)

(declare-fun bm!312990 () Bool)

(assert (=> bm!312990 (= call!312994 (forall!10169 (ite c!766430 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (t!357616 (_2!28756 (h!56352 (toList!4252 lt!1678893))))) (ite c!766430 lambda!168344 lambda!168346)))))

(assert (=> b!4497456 (= e!2801473 (extractMap!1178 (t!357617 (toList!4252 lt!1678893))))))

(declare-fun lt!1679307 () Unit!91544)

(assert (=> b!4497456 (= lt!1679307 call!312995)))

(assert (=> b!4497456 call!312994))

(declare-fun lt!1679303 () Unit!91544)

(assert (=> b!4497456 (= lt!1679303 lt!1679307)))

(assert (=> b!4497456 call!312996))

(declare-fun lt!1679305 () Unit!91544)

(declare-fun Unit!91579 () Unit!91544)

(assert (=> b!4497456 (= lt!1679305 Unit!91579)))

(declare-fun bm!312991 () Bool)

(assert (=> bm!312991 (= call!312996 (forall!10169 (ite c!766430 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (_2!28756 (h!56352 (toList!4252 lt!1678893)))) (ite c!766430 lambda!168344 lambda!168346)))))

(assert (=> d!1379503 e!2801472))

(declare-fun res!1869494 () Bool)

(assert (=> d!1379503 (=> (not res!1869494) (not e!2801472))))

(assert (=> d!1379503 (= res!1869494 (forall!10169 (_2!28756 (h!56352 (toList!4252 lt!1678893))) lambda!168347))))

(assert (=> d!1379503 (= lt!1679300 e!2801473)))

(assert (=> d!1379503 (= c!766430 ((_ is Nil!50534) (_2!28756 (h!56352 (toList!4252 lt!1678893)))))))

(assert (=> d!1379503 (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lt!1678893))))))

(assert (=> d!1379503 (= (addToMapMapFromBucket!649 (_2!28756 (h!56352 (toList!4252 lt!1678893))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) lt!1679300)))

(declare-fun b!4497457 () Bool)

(assert (=> b!4497457 (= e!2801472 (invariantList!981 (toList!4251 lt!1679300)))))

(declare-fun b!4497458 () Bool)

(assert (=> b!4497458 (= e!2801471 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) lambda!168346))))

(assert (= (and d!1379503 c!766430) b!4497456))

(assert (= (and d!1379503 (not c!766430)) b!4497455))

(assert (= (and b!4497455 res!1869495) b!4497458))

(assert (= (or b!4497456 b!4497455) bm!312991))

(assert (= (or b!4497456 b!4497455) bm!312990))

(assert (= (or b!4497456 b!4497455) bm!312989))

(assert (= (and d!1379503 res!1869494) b!4497454))

(assert (= (and b!4497454 res!1869496) b!4497457))

(declare-fun m!5226033 () Bool)

(assert (=> b!4497454 m!5226033))

(declare-fun m!5226035 () Bool)

(assert (=> d!1379503 m!5226035))

(declare-fun m!5226037 () Bool)

(assert (=> d!1379503 m!5226037))

(assert (=> bm!312989 m!5225491))

(declare-fun m!5226039 () Bool)

(assert (=> bm!312989 m!5226039))

(declare-fun m!5226041 () Bool)

(assert (=> bm!312991 m!5226041))

(declare-fun m!5226043 () Bool)

(assert (=> b!4497458 m!5226043))

(declare-fun m!5226045 () Bool)

(assert (=> bm!312990 m!5226045))

(declare-fun m!5226047 () Bool)

(assert (=> b!4497457 m!5226047))

(declare-fun m!5226049 () Bool)

(assert (=> b!4497455 m!5226049))

(declare-fun m!5226051 () Bool)

(assert (=> b!4497455 m!5226051))

(declare-fun m!5226053 () Bool)

(assert (=> b!4497455 m!5226053))

(assert (=> b!4497455 m!5225491))

(assert (=> b!4497455 m!5226051))

(declare-fun m!5226055 () Bool)

(assert (=> b!4497455 m!5226055))

(declare-fun m!5226057 () Bool)

(assert (=> b!4497455 m!5226057))

(assert (=> b!4497455 m!5226049))

(assert (=> b!4497455 m!5225491))

(declare-fun m!5226059 () Bool)

(assert (=> b!4497455 m!5226059))

(declare-fun m!5226061 () Bool)

(assert (=> b!4497455 m!5226061))

(declare-fun m!5226063 () Bool)

(assert (=> b!4497455 m!5226063))

(declare-fun m!5226065 () Bool)

(assert (=> b!4497455 m!5226065))

(assert (=> b!4497455 m!5226043))

(assert (=> b!4497455 m!5226043))

(assert (=> b!4497053 d!1379503))

(declare-fun bs!834329 () Bool)

(declare-fun d!1379543 () Bool)

(assert (= bs!834329 (and d!1379543 d!1379333)))

(declare-fun lambda!168348 () Int)

(assert (=> bs!834329 (= lambda!168348 lambda!168275)))

(declare-fun bs!834330 () Bool)

(assert (= bs!834330 (and d!1379543 start!443724)))

(assert (=> bs!834330 (= lambda!168348 lambda!168249)))

(declare-fun bs!834331 () Bool)

(assert (= bs!834331 (and d!1379543 d!1379433)))

(assert (=> bs!834331 (= lambda!168348 lambda!168301)))

(declare-fun bs!834332 () Bool)

(assert (= bs!834332 (and d!1379543 d!1379421)))

(assert (=> bs!834332 (= lambda!168348 lambda!168300)))

(declare-fun bs!834333 () Bool)

(assert (= bs!834333 (and d!1379543 d!1379355)))

(assert (=> bs!834333 (= lambda!168348 lambda!168282)))

(declare-fun bs!834334 () Bool)

(assert (= bs!834334 (and d!1379543 d!1379437)))

(assert (=> bs!834334 (= lambda!168348 lambda!168304)))

(declare-fun bs!834335 () Bool)

(assert (= bs!834335 (and d!1379543 d!1379443)))

(assert (=> bs!834335 (= lambda!168348 lambda!168305)))

(declare-fun bs!834336 () Bool)

(assert (= bs!834336 (and d!1379543 d!1379273)))

(assert (=> bs!834336 (= lambda!168348 lambda!168252)))

(declare-fun bs!834337 () Bool)

(assert (= bs!834337 (and d!1379543 d!1379329)))

(assert (=> bs!834337 (= lambda!168348 lambda!168266)))

(declare-fun bs!834338 () Bool)

(assert (= bs!834338 (and d!1379543 d!1379309)))

(assert (=> bs!834338 (not (= lambda!168348 lambda!168263))))

(declare-fun bs!834339 () Bool)

(assert (= bs!834339 (and d!1379543 d!1379403)))

(assert (=> bs!834339 (= lambda!168348 lambda!168296)))

(declare-fun bs!834340 () Bool)

(assert (= bs!834340 (and d!1379543 d!1379401)))

(assert (=> bs!834340 (= lambda!168348 lambda!168293)))

(declare-fun lt!1679310 () ListMap!3513)

(assert (=> d!1379543 (invariantList!981 (toList!4251 lt!1679310))))

(declare-fun e!2801474 () ListMap!3513)

(assert (=> d!1379543 (= lt!1679310 e!2801474)))

(declare-fun c!766431 () Bool)

(assert (=> d!1379543 (= c!766431 ((_ is Cons!50535) (t!357617 (toList!4252 lt!1678893))))))

(assert (=> d!1379543 (forall!10167 (t!357617 (toList!4252 lt!1678893)) lambda!168348)))

(assert (=> d!1379543 (= (extractMap!1178 (t!357617 (toList!4252 lt!1678893))) lt!1679310)))

(declare-fun b!4497461 () Bool)

(assert (=> b!4497461 (= e!2801474 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (t!357617 (toList!4252 lt!1678893)))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lt!1678893))))))))

(declare-fun b!4497462 () Bool)

(assert (=> b!4497462 (= e!2801474 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379543 c!766431) b!4497461))

(assert (= (and d!1379543 (not c!766431)) b!4497462))

(declare-fun m!5226067 () Bool)

(assert (=> d!1379543 m!5226067))

(declare-fun m!5226069 () Bool)

(assert (=> d!1379543 m!5226069))

(declare-fun m!5226071 () Bool)

(assert (=> b!4497461 m!5226071))

(assert (=> b!4497461 m!5226071))

(declare-fun m!5226073 () Bool)

(assert (=> b!4497461 m!5226073))

(assert (=> b!4497053 d!1379543))

(declare-fun d!1379545 () Bool)

(declare-fun lt!1679311 () Bool)

(assert (=> d!1379545 (= lt!1679311 (select (content!8249 (toList!4252 lt!1679125)) lt!1678886))))

(declare-fun e!2801475 () Bool)

(assert (=> d!1379545 (= lt!1679311 e!2801475)))

(declare-fun res!1869498 () Bool)

(assert (=> d!1379545 (=> (not res!1869498) (not e!2801475))))

(assert (=> d!1379545 (= res!1869498 ((_ is Cons!50535) (toList!4252 lt!1679125)))))

(assert (=> d!1379545 (= (contains!13201 (toList!4252 lt!1679125) lt!1678886) lt!1679311)))

(declare-fun b!4497463 () Bool)

(declare-fun e!2801476 () Bool)

(assert (=> b!4497463 (= e!2801475 e!2801476)))

(declare-fun res!1869497 () Bool)

(assert (=> b!4497463 (=> res!1869497 e!2801476)))

(assert (=> b!4497463 (= res!1869497 (= (h!56352 (toList!4252 lt!1679125)) lt!1678886))))

(declare-fun b!4497464 () Bool)

(assert (=> b!4497464 (= e!2801476 (contains!13201 (t!357617 (toList!4252 lt!1679125)) lt!1678886))))

(assert (= (and d!1379545 res!1869498) b!4497463))

(assert (= (and b!4497463 (not res!1869497)) b!4497464))

(declare-fun m!5226075 () Bool)

(assert (=> d!1379545 m!5226075))

(declare-fun m!5226077 () Bool)

(assert (=> d!1379545 m!5226077))

(declare-fun m!5226079 () Bool)

(assert (=> b!4497464 m!5226079))

(assert (=> b!4497173 d!1379545))

(declare-fun b!4497484 () Bool)

(assert (=> b!4497484 true))

(declare-fun bs!834341 () Bool)

(declare-fun b!4497483 () Bool)

(assert (= bs!834341 (and b!4497483 b!4497484)))

(declare-fun lambda!168358 () Int)

(declare-fun lambda!168357 () Int)

(assert (=> bs!834341 (= (= (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168358 lambda!168357))))

(assert (=> b!4497483 true))

(declare-fun bs!834342 () Bool)

(declare-fun b!4497489 () Bool)

(assert (= bs!834342 (and b!4497489 b!4497484)))

(declare-fun lambda!168359 () Int)

(assert (=> bs!834342 (= (= (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168359 lambda!168357))))

(declare-fun bs!834343 () Bool)

(assert (= bs!834343 (and b!4497489 b!4497483)))

(assert (=> bs!834343 (= (= (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168359 lambda!168358))))

(assert (=> b!4497489 true))

(declare-fun e!2801487 () List!50661)

(assert (=> b!4497483 (= e!2801487 (Cons!50537 (_1!28755 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (getKeysList!429 (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))))

(declare-fun c!766440 () Bool)

(assert (=> b!4497483 (= c!766440 (containsKey!1674 (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (_1!28755 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))))

(declare-fun lt!1679326 () Unit!91544)

(declare-fun e!2801485 () Unit!91544)

(assert (=> b!4497483 (= lt!1679326 e!2801485)))

(declare-fun c!766438 () Bool)

(assert (=> b!4497483 (= c!766438 (contains!13203 (getKeysList!429 (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (_1!28755 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))))

(declare-fun lt!1679328 () Unit!91544)

(declare-fun e!2801486 () Unit!91544)

(assert (=> b!4497483 (= lt!1679328 e!2801486)))

(declare-fun lt!1679327 () List!50661)

(assert (=> b!4497483 (= lt!1679327 (getKeysList!429 (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))))

(declare-fun lt!1679331 () Unit!91544)

(declare-fun lemmaForallContainsAddHeadPreserves!146 (List!50658 List!50661 tuple2!50922) Unit!91544)

(assert (=> b!4497483 (= lt!1679331 (lemmaForallContainsAddHeadPreserves!146 (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) lt!1679327 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))))

(declare-fun forall!10170 (List!50661 Int) Bool)

(assert (=> b!4497483 (forall!10170 lt!1679327 lambda!168358)))

(declare-fun lt!1679332 () Unit!91544)

(assert (=> b!4497483 (= lt!1679332 lt!1679331)))

(assert (=> b!4497484 false))

(declare-fun lt!1679329 () Unit!91544)

(declare-fun forallContained!2423 (List!50661 Int K!11945) Unit!91544)

(assert (=> b!4497484 (= lt!1679329 (forallContained!2423 (getKeysList!429 (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) lambda!168357 (_1!28755 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))))

(declare-fun Unit!91587 () Unit!91544)

(assert (=> b!4497484 (= e!2801486 Unit!91587)))

(declare-fun b!4497485 () Bool)

(assert (=> b!4497485 (= e!2801487 Nil!50537)))

(declare-fun lambda!168360 () Int)

(declare-fun e!2801488 () Bool)

(declare-fun lt!1679330 () List!50661)

(declare-fun b!4497486 () Bool)

(declare-fun map!11097 (List!50658 Int) List!50661)

(assert (=> b!4497486 (= e!2801488 (= (content!8251 lt!1679330) (content!8251 (map!11097 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) lambda!168360))))))

(declare-fun b!4497488 () Bool)

(declare-fun res!1869507 () Bool)

(assert (=> b!4497488 (=> (not res!1869507) (not e!2801488))))

(declare-fun length!306 (List!50661) Int)

(declare-fun length!307 (List!50658) Int)

(assert (=> b!4497488 (= res!1869507 (= (length!306 lt!1679330) (length!307 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))))

(declare-fun res!1869506 () Bool)

(assert (=> b!4497489 (=> (not res!1869506) (not e!2801488))))

(assert (=> b!4497489 (= res!1869506 (forall!10170 lt!1679330 lambda!168359))))

(declare-fun b!4497490 () Bool)

(declare-fun Unit!91588 () Unit!91544)

(assert (=> b!4497490 (= e!2801486 Unit!91588)))

(declare-fun b!4497491 () Bool)

(declare-fun Unit!91589 () Unit!91544)

(assert (=> b!4497491 (= e!2801485 Unit!91589)))

(declare-fun d!1379547 () Bool)

(assert (=> d!1379547 e!2801488))

(declare-fun res!1869505 () Bool)

(assert (=> d!1379547 (=> (not res!1869505) (not e!2801488))))

(declare-fun noDuplicate!725 (List!50661) Bool)

(assert (=> d!1379547 (= res!1869505 (noDuplicate!725 lt!1679330))))

(assert (=> d!1379547 (= lt!1679330 e!2801487)))

(declare-fun c!766439 () Bool)

(assert (=> d!1379547 (= c!766439 ((_ is Cons!50534) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))

(assert (=> d!1379547 (invariantList!981 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))

(assert (=> d!1379547 (= (getKeysList!429 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) lt!1679330)))

(declare-fun b!4497487 () Bool)

(assert (=> b!4497487 false))

(declare-fun Unit!91590 () Unit!91544)

(assert (=> b!4497487 (= e!2801485 Unit!91590)))

(assert (= (and d!1379547 c!766439) b!4497483))

(assert (= (and d!1379547 (not c!766439)) b!4497485))

(assert (= (and b!4497483 c!766440) b!4497487))

(assert (= (and b!4497483 (not c!766440)) b!4497491))

(assert (= (and b!4497483 c!766438) b!4497484))

(assert (= (and b!4497483 (not c!766438)) b!4497490))

(assert (= (and d!1379547 res!1869505) b!4497488))

(assert (= (and b!4497488 res!1869507) b!4497489))

(assert (= (and b!4497489 res!1869506) b!4497486))

(declare-fun m!5226081 () Bool)

(assert (=> b!4497484 m!5226081))

(assert (=> b!4497484 m!5226081))

(declare-fun m!5226083 () Bool)

(assert (=> b!4497484 m!5226083))

(declare-fun m!5226085 () Bool)

(assert (=> b!4497489 m!5226085))

(declare-fun m!5226087 () Bool)

(assert (=> b!4497486 m!5226087))

(declare-fun m!5226089 () Bool)

(assert (=> b!4497486 m!5226089))

(assert (=> b!4497486 m!5226089))

(declare-fun m!5226091 () Bool)

(assert (=> b!4497486 m!5226091))

(declare-fun m!5226093 () Bool)

(assert (=> b!4497483 m!5226093))

(declare-fun m!5226095 () Bool)

(assert (=> b!4497483 m!5226095))

(assert (=> b!4497483 m!5226081))

(declare-fun m!5226097 () Bool)

(assert (=> b!4497483 m!5226097))

(assert (=> b!4497483 m!5226081))

(declare-fun m!5226099 () Bool)

(assert (=> b!4497483 m!5226099))

(declare-fun m!5226101 () Bool)

(assert (=> d!1379547 m!5226101))

(declare-fun m!5226103 () Bool)

(assert (=> d!1379547 m!5226103))

(declare-fun m!5226105 () Bool)

(assert (=> b!4497488 m!5226105))

(declare-fun m!5226107 () Bool)

(assert (=> b!4497488 m!5226107))

(assert (=> b!4497120 d!1379547))

(declare-fun bs!834344 () Bool)

(declare-fun b!4497501 () Bool)

(assert (= bs!834344 (and b!4497501 b!4497484)))

(declare-fun lambda!168365 () Int)

(assert (=> bs!834344 (= (= (toList!4251 lt!1678891) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168365 lambda!168357))))

(declare-fun bs!834345 () Bool)

(assert (= bs!834345 (and b!4497501 b!4497483)))

(assert (=> bs!834345 (= (= (toList!4251 lt!1678891) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168365 lambda!168358))))

(declare-fun bs!834346 () Bool)

(assert (= bs!834346 (and b!4497501 b!4497489)))

(assert (=> bs!834346 (= (= (toList!4251 lt!1678891) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168365 lambda!168359))))

(assert (=> b!4497501 true))

(declare-fun bs!834347 () Bool)

(declare-fun b!4497502 () Bool)

(assert (= bs!834347 (and b!4497502 b!4497486)))

(declare-fun lambda!168366 () Int)

(assert (=> bs!834347 (= lambda!168366 lambda!168360)))

(declare-fun d!1379549 () Bool)

(declare-fun e!2801491 () Bool)

(assert (=> d!1379549 e!2801491))

(declare-fun res!1869514 () Bool)

(assert (=> d!1379549 (=> (not res!1869514) (not e!2801491))))

(declare-fun lt!1679335 () List!50661)

(assert (=> d!1379549 (= res!1869514 (noDuplicate!725 lt!1679335))))

(assert (=> d!1379549 (= lt!1679335 (getKeysList!429 (toList!4251 lt!1678891)))))

(assert (=> d!1379549 (= (keys!17518 lt!1678891) lt!1679335)))

(declare-fun b!4497500 () Bool)

(declare-fun res!1869516 () Bool)

(assert (=> b!4497500 (=> (not res!1869516) (not e!2801491))))

(assert (=> b!4497500 (= res!1869516 (= (length!306 lt!1679335) (length!307 (toList!4251 lt!1678891))))))

(declare-fun res!1869515 () Bool)

(assert (=> b!4497501 (=> (not res!1869515) (not e!2801491))))

(assert (=> b!4497501 (= res!1869515 (forall!10170 lt!1679335 lambda!168365))))

(assert (=> b!4497502 (= e!2801491 (= (content!8251 lt!1679335) (content!8251 (map!11097 (toList!4251 lt!1678891) lambda!168366))))))

(assert (= (and d!1379549 res!1869514) b!4497500))

(assert (= (and b!4497500 res!1869516) b!4497501))

(assert (= (and b!4497501 res!1869515) b!4497502))

(declare-fun m!5226109 () Bool)

(assert (=> d!1379549 m!5226109))

(assert (=> d!1379549 m!5225603))

(declare-fun m!5226111 () Bool)

(assert (=> b!4497500 m!5226111))

(declare-fun m!5226113 () Bool)

(assert (=> b!4497500 m!5226113))

(declare-fun m!5226115 () Bool)

(assert (=> b!4497501 m!5226115))

(declare-fun m!5226117 () Bool)

(assert (=> b!4497502 m!5226117))

(declare-fun m!5226119 () Bool)

(assert (=> b!4497502 m!5226119))

(assert (=> b!4497502 m!5226119))

(declare-fun m!5226121 () Bool)

(assert (=> b!4497502 m!5226121))

(assert (=> b!4497134 d!1379549))

(declare-fun b!4497506 () Bool)

(declare-fun e!2801492 () Option!11040)

(declare-fun e!2801493 () Option!11040)

(assert (=> b!4497506 (= e!2801492 e!2801493)))

(declare-fun c!766442 () Bool)

(assert (=> b!4497506 (= c!766442 (and ((_ is Cons!50535) (toList!4252 lm!1477)) (not (= (_1!28756 (h!56352 (toList!4252 lm!1477))) hash!344))))))

(declare-fun b!4497505 () Bool)

(assert (=> b!4497505 (= e!2801492 (Some!11039 (_2!28756 (h!56352 (toList!4252 lm!1477)))))))

(declare-fun d!1379551 () Bool)

(declare-fun c!766441 () Bool)

(assert (=> d!1379551 (= c!766441 (and ((_ is Cons!50535) (toList!4252 lm!1477)) (= (_1!28756 (h!56352 (toList!4252 lm!1477))) hash!344)))))

(assert (=> d!1379551 (= (getValueByKey!1020 (toList!4252 lm!1477) hash!344) e!2801492)))

(declare-fun b!4497507 () Bool)

(assert (=> b!4497507 (= e!2801493 (getValueByKey!1020 (t!357617 (toList!4252 lm!1477)) hash!344))))

(declare-fun b!4497508 () Bool)

(assert (=> b!4497508 (= e!2801493 None!11039)))

(assert (= (and d!1379551 c!766441) b!4497505))

(assert (= (and d!1379551 (not c!766441)) b!4497506))

(assert (= (and b!4497506 c!766442) b!4497507))

(assert (= (and b!4497506 (not c!766442)) b!4497508))

(declare-fun m!5226123 () Bool)

(assert (=> b!4497507 m!5226123))

(assert (=> b!4496911 d!1379551))

(declare-fun d!1379553 () Bool)

(declare-fun isEmpty!28592 (Option!11041) Bool)

(assert (=> d!1379553 (= (isDefined!8328 (getValueByKey!1021 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287)) (not (isEmpty!28592 (getValueByKey!1021 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))))

(declare-fun bs!834348 () Bool)

(assert (= bs!834348 d!1379553))

(assert (=> bs!834348 m!5225561))

(declare-fun m!5226125 () Bool)

(assert (=> bs!834348 m!5226125))

(assert (=> b!4497124 d!1379553))

(declare-fun b!4497520 () Bool)

(declare-fun e!2801499 () Option!11041)

(assert (=> b!4497520 (= e!2801499 None!11040)))

(declare-fun d!1379555 () Bool)

(declare-fun c!766447 () Bool)

(assert (=> d!1379555 (= c!766447 (and ((_ is Cons!50534) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= (_1!28755 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) key!3287)))))

(declare-fun e!2801498 () Option!11041)

(assert (=> d!1379555 (= (getValueByKey!1021 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287) e!2801498)))

(declare-fun b!4497518 () Bool)

(assert (=> b!4497518 (= e!2801498 e!2801499)))

(declare-fun c!766448 () Bool)

(assert (=> b!4497518 (= c!766448 (and ((_ is Cons!50534) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (not (= (_1!28755 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) key!3287))))))

(declare-fun b!4497519 () Bool)

(assert (=> b!4497519 (= e!2801499 (getValueByKey!1021 (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) key!3287))))

(declare-fun b!4497517 () Bool)

(assert (=> b!4497517 (= e!2801498 (Some!11040 (_2!28755 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))))

(assert (= (and d!1379555 c!766447) b!4497517))

(assert (= (and d!1379555 (not c!766447)) b!4497518))

(assert (= (and b!4497518 c!766448) b!4497519))

(assert (= (and b!4497518 (not c!766448)) b!4497520))

(declare-fun m!5226127 () Bool)

(assert (=> b!4497519 m!5226127))

(assert (=> b!4497124 d!1379555))

(declare-fun d!1379557 () Bool)

(declare-fun res!1869517 () Bool)

(declare-fun e!2801500 () Bool)

(assert (=> d!1379557 (=> res!1869517 e!2801500)))

(assert (=> d!1379557 (= res!1869517 (and ((_ is Cons!50534) (t!357616 newBucket!178)) (= (_1!28755 (h!56351 (t!357616 newBucket!178))) (_1!28755 (h!56351 newBucket!178)))))))

(assert (=> d!1379557 (= (containsKey!1670 (t!357616 newBucket!178) (_1!28755 (h!56351 newBucket!178))) e!2801500)))

(declare-fun b!4497521 () Bool)

(declare-fun e!2801501 () Bool)

(assert (=> b!4497521 (= e!2801500 e!2801501)))

(declare-fun res!1869518 () Bool)

(assert (=> b!4497521 (=> (not res!1869518) (not e!2801501))))

(assert (=> b!4497521 (= res!1869518 ((_ is Cons!50534) (t!357616 newBucket!178)))))

(declare-fun b!4497522 () Bool)

(assert (=> b!4497522 (= e!2801501 (containsKey!1670 (t!357616 (t!357616 newBucket!178)) (_1!28755 (h!56351 newBucket!178))))))

(assert (= (and d!1379557 (not res!1869517)) b!4497521))

(assert (= (and b!4497521 res!1869518) b!4497522))

(declare-fun m!5226129 () Bool)

(assert (=> b!4497522 m!5226129))

(assert (=> b!4497152 d!1379557))

(declare-fun d!1379559 () Bool)

(declare-fun lt!1679336 () Bool)

(assert (=> d!1379559 (= lt!1679336 (select (content!8251 (keys!17518 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) key!3287))))

(declare-fun e!2801502 () Bool)

(assert (=> d!1379559 (= lt!1679336 e!2801502)))

(declare-fun res!1869519 () Bool)

(assert (=> d!1379559 (=> (not res!1869519) (not e!2801502))))

(assert (=> d!1379559 (= res!1869519 ((_ is Cons!50537) (keys!17518 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))

(assert (=> d!1379559 (= (contains!13203 (keys!17518 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287) lt!1679336)))

(declare-fun b!4497523 () Bool)

(declare-fun e!2801503 () Bool)

(assert (=> b!4497523 (= e!2801502 e!2801503)))

(declare-fun res!1869520 () Bool)

(assert (=> b!4497523 (=> res!1869520 e!2801503)))

(assert (=> b!4497523 (= res!1869520 (= (h!56356 (keys!17518 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) key!3287))))

(declare-fun b!4497524 () Bool)

(assert (=> b!4497524 (= e!2801503 (contains!13203 (t!357619 (keys!17518 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) key!3287))))

(assert (= (and d!1379559 res!1869519) b!4497523))

(assert (= (and b!4497523 (not res!1869520)) b!4497524))

(assert (=> d!1379559 m!5225553))

(declare-fun m!5226131 () Bool)

(assert (=> d!1379559 m!5226131))

(declare-fun m!5226133 () Bool)

(assert (=> d!1379559 m!5226133))

(declare-fun m!5226135 () Bool)

(assert (=> b!4497524 m!5226135))

(assert (=> b!4497122 d!1379559))

(declare-fun bs!834349 () Bool)

(declare-fun b!4497526 () Bool)

(assert (= bs!834349 (and b!4497526 b!4497484)))

(declare-fun lambda!168367 () Int)

(assert (=> bs!834349 (= (= (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168367 lambda!168357))))

(declare-fun bs!834350 () Bool)

(assert (= bs!834350 (and b!4497526 b!4497483)))

(assert (=> bs!834350 (= (= (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168367 lambda!168358))))

(declare-fun bs!834351 () Bool)

(assert (= bs!834351 (and b!4497526 b!4497489)))

(assert (=> bs!834351 (= lambda!168367 lambda!168359)))

(declare-fun bs!834352 () Bool)

(assert (= bs!834352 (and b!4497526 b!4497501)))

(assert (=> bs!834352 (= (= (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (toList!4251 lt!1678891)) (= lambda!168367 lambda!168365))))

(assert (=> b!4497526 true))

(declare-fun bs!834353 () Bool)

(declare-fun b!4497527 () Bool)

(assert (= bs!834353 (and b!4497527 b!4497486)))

(declare-fun lambda!168368 () Int)

(assert (=> bs!834353 (= lambda!168368 lambda!168360)))

(declare-fun bs!834354 () Bool)

(assert (= bs!834354 (and b!4497527 b!4497502)))

(assert (=> bs!834354 (= lambda!168368 lambda!168366)))

(declare-fun d!1379561 () Bool)

(declare-fun e!2801504 () Bool)

(assert (=> d!1379561 e!2801504))

(declare-fun res!1869521 () Bool)

(assert (=> d!1379561 (=> (not res!1869521) (not e!2801504))))

(declare-fun lt!1679337 () List!50661)

(assert (=> d!1379561 (= res!1869521 (noDuplicate!725 lt!1679337))))

(assert (=> d!1379561 (= lt!1679337 (getKeysList!429 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))

(assert (=> d!1379561 (= (keys!17518 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) lt!1679337)))

(declare-fun b!4497525 () Bool)

(declare-fun res!1869523 () Bool)

(assert (=> b!4497525 (=> (not res!1869523) (not e!2801504))))

(assert (=> b!4497525 (= res!1869523 (= (length!306 lt!1679337) (length!307 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))))

(declare-fun res!1869522 () Bool)

(assert (=> b!4497526 (=> (not res!1869522) (not e!2801504))))

(assert (=> b!4497526 (= res!1869522 (forall!10170 lt!1679337 lambda!168367))))

(assert (=> b!4497527 (= e!2801504 (= (content!8251 lt!1679337) (content!8251 (map!11097 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) lambda!168368))))))

(assert (= (and d!1379561 res!1869521) b!4497525))

(assert (= (and b!4497525 res!1869523) b!4497526))

(assert (= (and b!4497526 res!1869522) b!4497527))

(declare-fun m!5226137 () Bool)

(assert (=> d!1379561 m!5226137))

(assert (=> d!1379561 m!5225569))

(declare-fun m!5226139 () Bool)

(assert (=> b!4497525 m!5226139))

(assert (=> b!4497525 m!5226107))

(declare-fun m!5226141 () Bool)

(assert (=> b!4497526 m!5226141))

(declare-fun m!5226143 () Bool)

(assert (=> b!4497527 m!5226143))

(declare-fun m!5226145 () Bool)

(assert (=> b!4497527 m!5226145))

(assert (=> b!4497527 m!5226145))

(declare-fun m!5226147 () Bool)

(assert (=> b!4497527 m!5226147))

(assert (=> b!4497122 d!1379561))

(declare-fun d!1379563 () Bool)

(declare-fun c!766451 () Bool)

(assert (=> d!1379563 (= c!766451 ((_ is Nil!50534) (toList!4251 (extractMap!1178 (toList!4252 lt!1678896)))))))

(declare-fun e!2801507 () (InoxSet tuple2!50922))

(assert (=> d!1379563 (= (content!8250 (toList!4251 (extractMap!1178 (toList!4252 lt!1678896)))) e!2801507)))

(declare-fun b!4497532 () Bool)

(assert (=> b!4497532 (= e!2801507 ((as const (Array tuple2!50922 Bool)) false))))

(declare-fun b!4497533 () Bool)

(assert (=> b!4497533 (= e!2801507 ((_ map or) (store ((as const (Array tuple2!50922 Bool)) false) (h!56351 (toList!4251 (extractMap!1178 (toList!4252 lt!1678896)))) true) (content!8250 (t!357616 (toList!4251 (extractMap!1178 (toList!4252 lt!1678896)))))))))

(assert (= (and d!1379563 c!766451) b!4497532))

(assert (= (and d!1379563 (not c!766451)) b!4497533))

(declare-fun m!5226149 () Bool)

(assert (=> b!4497533 m!5226149))

(declare-fun m!5226151 () Bool)

(assert (=> b!4497533 m!5226151))

(assert (=> d!1379423 d!1379563))

(declare-fun d!1379565 () Bool)

(declare-fun c!766452 () Bool)

(assert (=> d!1379565 (= c!766452 ((_ is Nil!50534) (toList!4251 (-!348 lt!1678891 key!3287))))))

(declare-fun e!2801508 () (InoxSet tuple2!50922))

(assert (=> d!1379565 (= (content!8250 (toList!4251 (-!348 lt!1678891 key!3287))) e!2801508)))

(declare-fun b!4497534 () Bool)

(assert (=> b!4497534 (= e!2801508 ((as const (Array tuple2!50922 Bool)) false))))

(declare-fun b!4497535 () Bool)

(assert (=> b!4497535 (= e!2801508 ((_ map or) (store ((as const (Array tuple2!50922 Bool)) false) (h!56351 (toList!4251 (-!348 lt!1678891 key!3287))) true) (content!8250 (t!357616 (toList!4251 (-!348 lt!1678891 key!3287))))))))

(assert (= (and d!1379565 c!766452) b!4497534))

(assert (= (and d!1379565 (not c!766452)) b!4497535))

(declare-fun m!5226153 () Bool)

(assert (=> b!4497535 m!5226153))

(declare-fun m!5226155 () Bool)

(assert (=> b!4497535 m!5226155))

(assert (=> d!1379423 d!1379565))

(declare-fun d!1379567 () Bool)

(declare-fun lt!1679338 () Bool)

(assert (=> d!1379567 (= lt!1679338 (select (content!8251 (keys!17518 lt!1678892)) key!3287))))

(declare-fun e!2801509 () Bool)

(assert (=> d!1379567 (= lt!1679338 e!2801509)))

(declare-fun res!1869524 () Bool)

(assert (=> d!1379567 (=> (not res!1869524) (not e!2801509))))

(assert (=> d!1379567 (= res!1869524 ((_ is Cons!50537) (keys!17518 lt!1678892)))))

(assert (=> d!1379567 (= (contains!13203 (keys!17518 lt!1678892) key!3287) lt!1679338)))

(declare-fun b!4497536 () Bool)

(declare-fun e!2801510 () Bool)

(assert (=> b!4497536 (= e!2801509 e!2801510)))

(declare-fun res!1869525 () Bool)

(assert (=> b!4497536 (=> res!1869525 e!2801510)))

(assert (=> b!4497536 (= res!1869525 (= (h!56356 (keys!17518 lt!1678892)) key!3287))))

(declare-fun b!4497537 () Bool)

(assert (=> b!4497537 (= e!2801510 (contains!13203 (t!357619 (keys!17518 lt!1678892)) key!3287))))

(assert (= (and d!1379567 res!1869524) b!4497536))

(assert (= (and b!4497536 (not res!1869525)) b!4497537))

(assert (=> d!1379567 m!5225719))

(declare-fun m!5226157 () Bool)

(assert (=> d!1379567 m!5226157))

(declare-fun m!5226159 () Bool)

(assert (=> d!1379567 m!5226159))

(declare-fun m!5226161 () Bool)

(assert (=> b!4497537 m!5226161))

(assert (=> b!4497174 d!1379567))

(declare-fun bs!834355 () Bool)

(declare-fun b!4497539 () Bool)

(assert (= bs!834355 (and b!4497539 b!4497484)))

(declare-fun lambda!168369 () Int)

(assert (=> bs!834355 (= (= (toList!4251 lt!1678892) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168369 lambda!168357))))

(declare-fun bs!834356 () Bool)

(assert (= bs!834356 (and b!4497539 b!4497501)))

(assert (=> bs!834356 (= (= (toList!4251 lt!1678892) (toList!4251 lt!1678891)) (= lambda!168369 lambda!168365))))

(declare-fun bs!834357 () Bool)

(assert (= bs!834357 (and b!4497539 b!4497483)))

(assert (=> bs!834357 (= (= (toList!4251 lt!1678892) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168369 lambda!168358))))

(declare-fun bs!834358 () Bool)

(assert (= bs!834358 (and b!4497539 b!4497489)))

(assert (=> bs!834358 (= (= (toList!4251 lt!1678892) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168369 lambda!168359))))

(declare-fun bs!834359 () Bool)

(assert (= bs!834359 (and b!4497539 b!4497526)))

(assert (=> bs!834359 (= (= (toList!4251 lt!1678892) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168369 lambda!168367))))

(assert (=> b!4497539 true))

(declare-fun bs!834360 () Bool)

(declare-fun b!4497540 () Bool)

(assert (= bs!834360 (and b!4497540 b!4497486)))

(declare-fun lambda!168370 () Int)

(assert (=> bs!834360 (= lambda!168370 lambda!168360)))

(declare-fun bs!834361 () Bool)

(assert (= bs!834361 (and b!4497540 b!4497502)))

(assert (=> bs!834361 (= lambda!168370 lambda!168366)))

(declare-fun bs!834362 () Bool)

(assert (= bs!834362 (and b!4497540 b!4497527)))

(assert (=> bs!834362 (= lambda!168370 lambda!168368)))

(declare-fun d!1379569 () Bool)

(declare-fun e!2801511 () Bool)

(assert (=> d!1379569 e!2801511))

(declare-fun res!1869526 () Bool)

(assert (=> d!1379569 (=> (not res!1869526) (not e!2801511))))

(declare-fun lt!1679339 () List!50661)

(assert (=> d!1379569 (= res!1869526 (noDuplicate!725 lt!1679339))))

(assert (=> d!1379569 (= lt!1679339 (getKeysList!429 (toList!4251 lt!1678892)))))

(assert (=> d!1379569 (= (keys!17518 lt!1678892) lt!1679339)))

(declare-fun b!4497538 () Bool)

(declare-fun res!1869528 () Bool)

(assert (=> b!4497538 (=> (not res!1869528) (not e!2801511))))

(assert (=> b!4497538 (= res!1869528 (= (length!306 lt!1679339) (length!307 (toList!4251 lt!1678892))))))

(declare-fun res!1869527 () Bool)

(assert (=> b!4497539 (=> (not res!1869527) (not e!2801511))))

(assert (=> b!4497539 (= res!1869527 (forall!10170 lt!1679339 lambda!168369))))

(assert (=> b!4497540 (= e!2801511 (= (content!8251 lt!1679339) (content!8251 (map!11097 (toList!4251 lt!1678892) lambda!168370))))))

(assert (= (and d!1379569 res!1869526) b!4497538))

(assert (= (and b!4497538 res!1869528) b!4497539))

(assert (= (and b!4497539 res!1869527) b!4497540))

(declare-fun m!5226163 () Bool)

(assert (=> d!1379569 m!5226163))

(assert (=> d!1379569 m!5225735))

(declare-fun m!5226165 () Bool)

(assert (=> b!4497538 m!5226165))

(declare-fun m!5226167 () Bool)

(assert (=> b!4497538 m!5226167))

(declare-fun m!5226169 () Bool)

(assert (=> b!4497539 m!5226169))

(declare-fun m!5226171 () Bool)

(assert (=> b!4497540 m!5226171))

(declare-fun m!5226173 () Bool)

(assert (=> b!4497540 m!5226173))

(assert (=> b!4497540 m!5226173))

(declare-fun m!5226175 () Bool)

(assert (=> b!4497540 m!5226175))

(assert (=> b!4497174 d!1379569))

(declare-fun d!1379571 () Bool)

(declare-fun lt!1679340 () Bool)

(assert (=> d!1379571 (= lt!1679340 (select (content!8249 (toList!4252 lt!1679104)) lt!1678886))))

(declare-fun e!2801512 () Bool)

(assert (=> d!1379571 (= lt!1679340 e!2801512)))

(declare-fun res!1869530 () Bool)

(assert (=> d!1379571 (=> (not res!1869530) (not e!2801512))))

(assert (=> d!1379571 (= res!1869530 ((_ is Cons!50535) (toList!4252 lt!1679104)))))

(assert (=> d!1379571 (= (contains!13201 (toList!4252 lt!1679104) lt!1678886) lt!1679340)))

(declare-fun b!4497541 () Bool)

(declare-fun e!2801513 () Bool)

(assert (=> b!4497541 (= e!2801512 e!2801513)))

(declare-fun res!1869529 () Bool)

(assert (=> b!4497541 (=> res!1869529 e!2801513)))

(assert (=> b!4497541 (= res!1869529 (= (h!56352 (toList!4252 lt!1679104)) lt!1678886))))

(declare-fun b!4497542 () Bool)

(assert (=> b!4497542 (= e!2801513 (contains!13201 (t!357617 (toList!4252 lt!1679104)) lt!1678886))))

(assert (= (and d!1379571 res!1869530) b!4497541))

(assert (= (and b!4497541 (not res!1869529)) b!4497542))

(declare-fun m!5226177 () Bool)

(assert (=> d!1379571 m!5226177))

(declare-fun m!5226179 () Bool)

(assert (=> d!1379571 m!5226179))

(declare-fun m!5226181 () Bool)

(assert (=> b!4497542 m!5226181))

(assert (=> b!4497141 d!1379571))

(declare-fun d!1379573 () Bool)

(declare-fun lt!1679341 () Bool)

(assert (=> d!1379573 (= lt!1679341 (select (content!8249 (toList!4252 lt!1679120)) lt!1678890))))

(declare-fun e!2801514 () Bool)

(assert (=> d!1379573 (= lt!1679341 e!2801514)))

(declare-fun res!1869532 () Bool)

(assert (=> d!1379573 (=> (not res!1869532) (not e!2801514))))

(assert (=> d!1379573 (= res!1869532 ((_ is Cons!50535) (toList!4252 lt!1679120)))))

(assert (=> d!1379573 (= (contains!13201 (toList!4252 lt!1679120) lt!1678890) lt!1679341)))

(declare-fun b!4497543 () Bool)

(declare-fun e!2801515 () Bool)

(assert (=> b!4497543 (= e!2801514 e!2801515)))

(declare-fun res!1869531 () Bool)

(assert (=> b!4497543 (=> res!1869531 e!2801515)))

(assert (=> b!4497543 (= res!1869531 (= (h!56352 (toList!4252 lt!1679120)) lt!1678890))))

(declare-fun b!4497544 () Bool)

(assert (=> b!4497544 (= e!2801515 (contains!13201 (t!357617 (toList!4252 lt!1679120)) lt!1678890))))

(assert (= (and d!1379573 res!1869532) b!4497543))

(assert (= (and b!4497543 (not res!1869531)) b!4497544))

(declare-fun m!5226183 () Bool)

(assert (=> d!1379573 m!5226183))

(declare-fun m!5226185 () Bool)

(assert (=> d!1379573 m!5226185))

(declare-fun m!5226187 () Bool)

(assert (=> b!4497544 m!5226187))

(assert (=> b!4497169 d!1379573))

(declare-fun d!1379575 () Bool)

(declare-fun res!1869537 () Bool)

(declare-fun e!2801520 () Bool)

(assert (=> d!1379575 (=> res!1869537 e!2801520)))

(assert (=> d!1379575 (= res!1869537 (and ((_ is Cons!50534) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= (_1!28755 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) key!3287)))))

(assert (=> d!1379575 (= (containsKey!1674 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287) e!2801520)))

(declare-fun b!4497549 () Bool)

(declare-fun e!2801521 () Bool)

(assert (=> b!4497549 (= e!2801520 e!2801521)))

(declare-fun res!1869538 () Bool)

(assert (=> b!4497549 (=> (not res!1869538) (not e!2801521))))

(assert (=> b!4497549 (= res!1869538 ((_ is Cons!50534) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))))

(declare-fun b!4497550 () Bool)

(assert (=> b!4497550 (= e!2801521 (containsKey!1674 (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) key!3287))))

(assert (= (and d!1379575 (not res!1869537)) b!4497549))

(assert (= (and b!4497549 res!1869538) b!4497550))

(declare-fun m!5226189 () Bool)

(assert (=> b!4497550 m!5226189))

(assert (=> b!4497117 d!1379575))

(declare-fun d!1379577 () Bool)

(assert (=> d!1379577 (containsKey!1674 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287)))

(declare-fun lt!1679344 () Unit!91544)

(declare-fun choose!29085 (List!50658 K!11945) Unit!91544)

(assert (=> d!1379577 (= lt!1679344 (choose!29085 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(assert (=> d!1379577 (invariantList!981 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))

(assert (=> d!1379577 (= (lemmaInGetKeysListThenContainsKey!428 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287) lt!1679344)))

(declare-fun bs!834363 () Bool)

(assert (= bs!834363 d!1379577))

(assert (=> bs!834363 m!5225557))

(declare-fun m!5226191 () Bool)

(assert (=> bs!834363 m!5226191))

(assert (=> bs!834363 m!5226103))

(assert (=> b!4497117 d!1379577))

(declare-fun d!1379579 () Bool)

(assert (=> d!1379579 (= (isEmpty!28589 (toList!4252 lm!1477)) ((_ is Nil!50535) (toList!4252 lm!1477)))))

(assert (=> d!1379439 d!1379579))

(declare-fun d!1379581 () Bool)

(declare-fun c!766455 () Bool)

(assert (=> d!1379581 (= c!766455 ((_ is Nil!50537) (keys!17518 lt!1678891)))))

(declare-fun e!2801524 () (InoxSet K!11945))

(assert (=> d!1379581 (= (content!8251 (keys!17518 lt!1678891)) e!2801524)))

(declare-fun b!4497555 () Bool)

(assert (=> b!4497555 (= e!2801524 ((as const (Array K!11945 Bool)) false))))

(declare-fun b!4497556 () Bool)

(assert (=> b!4497556 (= e!2801524 ((_ map or) (store ((as const (Array K!11945 Bool)) false) (h!56356 (keys!17518 lt!1678891)) true) (content!8251 (t!357619 (keys!17518 lt!1678891)))))))

(assert (= (and d!1379581 c!766455) b!4497555))

(assert (= (and d!1379581 (not c!766455)) b!4497556))

(declare-fun m!5226193 () Bool)

(assert (=> b!4497556 m!5226193))

(declare-fun m!5226195 () Bool)

(assert (=> b!4497556 m!5226195))

(assert (=> b!4497167 d!1379581))

(assert (=> b!4497167 d!1379549))

(declare-fun d!1379583 () Bool)

(declare-fun c!766456 () Bool)

(assert (=> d!1379583 (= c!766456 ((_ is Nil!50537) (keys!17518 lt!1679117)))))

(declare-fun e!2801525 () (InoxSet K!11945))

(assert (=> d!1379583 (= (content!8251 (keys!17518 lt!1679117)) e!2801525)))

(declare-fun b!4497557 () Bool)

(assert (=> b!4497557 (= e!2801525 ((as const (Array K!11945 Bool)) false))))

(declare-fun b!4497558 () Bool)

(assert (=> b!4497558 (= e!2801525 ((_ map or) (store ((as const (Array K!11945 Bool)) false) (h!56356 (keys!17518 lt!1679117)) true) (content!8251 (t!357619 (keys!17518 lt!1679117)))))))

(assert (= (and d!1379583 c!766456) b!4497557))

(assert (= (and d!1379583 (not c!766456)) b!4497558))

(declare-fun m!5226197 () Bool)

(assert (=> b!4497558 m!5226197))

(declare-fun m!5226199 () Bool)

(assert (=> b!4497558 m!5226199))

(assert (=> b!4497167 d!1379583))

(declare-fun bs!834364 () Bool)

(declare-fun b!4497560 () Bool)

(assert (= bs!834364 (and b!4497560 b!4497539)))

(declare-fun lambda!168371 () Int)

(assert (=> bs!834364 (= (= (toList!4251 lt!1679117) (toList!4251 lt!1678892)) (= lambda!168371 lambda!168369))))

(declare-fun bs!834365 () Bool)

(assert (= bs!834365 (and b!4497560 b!4497484)))

(assert (=> bs!834365 (= (= (toList!4251 lt!1679117) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168371 lambda!168357))))

(declare-fun bs!834366 () Bool)

(assert (= bs!834366 (and b!4497560 b!4497501)))

(assert (=> bs!834366 (= (= (toList!4251 lt!1679117) (toList!4251 lt!1678891)) (= lambda!168371 lambda!168365))))

(declare-fun bs!834367 () Bool)

(assert (= bs!834367 (and b!4497560 b!4497483)))

(assert (=> bs!834367 (= (= (toList!4251 lt!1679117) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168371 lambda!168358))))

(declare-fun bs!834368 () Bool)

(assert (= bs!834368 (and b!4497560 b!4497489)))

(assert (=> bs!834368 (= (= (toList!4251 lt!1679117) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168371 lambda!168359))))

(declare-fun bs!834369 () Bool)

(assert (= bs!834369 (and b!4497560 b!4497526)))

(assert (=> bs!834369 (= (= (toList!4251 lt!1679117) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168371 lambda!168367))))

(assert (=> b!4497560 true))

(declare-fun bs!834370 () Bool)

(declare-fun b!4497561 () Bool)

(assert (= bs!834370 (and b!4497561 b!4497486)))

(declare-fun lambda!168372 () Int)

(assert (=> bs!834370 (= lambda!168372 lambda!168360)))

(declare-fun bs!834371 () Bool)

(assert (= bs!834371 (and b!4497561 b!4497502)))

(assert (=> bs!834371 (= lambda!168372 lambda!168366)))

(declare-fun bs!834372 () Bool)

(assert (= bs!834372 (and b!4497561 b!4497527)))

(assert (=> bs!834372 (= lambda!168372 lambda!168368)))

(declare-fun bs!834373 () Bool)

(assert (= bs!834373 (and b!4497561 b!4497540)))

(assert (=> bs!834373 (= lambda!168372 lambda!168370)))

(declare-fun d!1379585 () Bool)

(declare-fun e!2801526 () Bool)

(assert (=> d!1379585 e!2801526))

(declare-fun res!1869539 () Bool)

(assert (=> d!1379585 (=> (not res!1869539) (not e!2801526))))

(declare-fun lt!1679345 () List!50661)

(assert (=> d!1379585 (= res!1869539 (noDuplicate!725 lt!1679345))))

(assert (=> d!1379585 (= lt!1679345 (getKeysList!429 (toList!4251 lt!1679117)))))

(assert (=> d!1379585 (= (keys!17518 lt!1679117) lt!1679345)))

(declare-fun b!4497559 () Bool)

(declare-fun res!1869541 () Bool)

(assert (=> b!4497559 (=> (not res!1869541) (not e!2801526))))

(assert (=> b!4497559 (= res!1869541 (= (length!306 lt!1679345) (length!307 (toList!4251 lt!1679117))))))

(declare-fun res!1869540 () Bool)

(assert (=> b!4497560 (=> (not res!1869540) (not e!2801526))))

(assert (=> b!4497560 (= res!1869540 (forall!10170 lt!1679345 lambda!168371))))

(assert (=> b!4497561 (= e!2801526 (= (content!8251 lt!1679345) (content!8251 (map!11097 (toList!4251 lt!1679117) lambda!168372))))))

(assert (= (and d!1379585 res!1869539) b!4497559))

(assert (= (and b!4497559 res!1869541) b!4497560))

(assert (= (and b!4497560 res!1869540) b!4497561))

(declare-fun m!5226201 () Bool)

(assert (=> d!1379585 m!5226201))

(declare-fun m!5226203 () Bool)

(assert (=> d!1379585 m!5226203))

(declare-fun m!5226205 () Bool)

(assert (=> b!4497559 m!5226205))

(declare-fun m!5226207 () Bool)

(assert (=> b!4497559 m!5226207))

(declare-fun m!5226209 () Bool)

(assert (=> b!4497560 m!5226209))

(declare-fun m!5226211 () Bool)

(assert (=> b!4497561 m!5226211))

(declare-fun m!5226213 () Bool)

(assert (=> b!4497561 m!5226213))

(assert (=> b!4497561 m!5226213))

(declare-fun m!5226215 () Bool)

(assert (=> b!4497561 m!5226215))

(assert (=> b!4497167 d!1379585))

(declare-fun d!1379587 () Bool)

(declare-fun lt!1679346 () Bool)

(assert (=> d!1379587 (= lt!1679346 (select (content!8251 e!2801275) key!3287))))

(declare-fun e!2801527 () Bool)

(assert (=> d!1379587 (= lt!1679346 e!2801527)))

(declare-fun res!1869542 () Bool)

(assert (=> d!1379587 (=> (not res!1869542) (not e!2801527))))

(assert (=> d!1379587 (= res!1869542 ((_ is Cons!50537) e!2801275))))

(assert (=> d!1379587 (= (contains!13203 e!2801275 key!3287) lt!1679346)))

(declare-fun b!4497562 () Bool)

(declare-fun e!2801528 () Bool)

(assert (=> b!4497562 (= e!2801527 e!2801528)))

(declare-fun res!1869543 () Bool)

(assert (=> b!4497562 (=> res!1869543 e!2801528)))

(assert (=> b!4497562 (= res!1869543 (= (h!56356 e!2801275) key!3287))))

(declare-fun b!4497563 () Bool)

(assert (=> b!4497563 (= e!2801528 (contains!13203 (t!357619 e!2801275) key!3287))))

(assert (= (and d!1379587 res!1869542) b!4497562))

(assert (= (and b!4497562 (not res!1869543)) b!4497563))

(declare-fun m!5226217 () Bool)

(assert (=> d!1379587 m!5226217))

(declare-fun m!5226219 () Bool)

(assert (=> d!1379587 m!5226219))

(declare-fun m!5226221 () Bool)

(assert (=> b!4497563 m!5226221))

(assert (=> bm!312949 d!1379587))

(declare-fun d!1379589 () Bool)

(declare-fun res!1869544 () Bool)

(declare-fun e!2801529 () Bool)

(assert (=> d!1379589 (=> res!1869544 e!2801529)))

(assert (=> d!1379589 (= res!1869544 (not ((_ is Cons!50534) (_2!28756 lt!1678885))))))

(assert (=> d!1379589 (= (noDuplicateKeys!1122 (_2!28756 lt!1678885)) e!2801529)))

(declare-fun b!4497564 () Bool)

(declare-fun e!2801530 () Bool)

(assert (=> b!4497564 (= e!2801529 e!2801530)))

(declare-fun res!1869545 () Bool)

(assert (=> b!4497564 (=> (not res!1869545) (not e!2801530))))

(assert (=> b!4497564 (= res!1869545 (not (containsKey!1670 (t!357616 (_2!28756 lt!1678885)) (_1!28755 (h!56351 (_2!28756 lt!1678885))))))))

(declare-fun b!4497565 () Bool)

(assert (=> b!4497565 (= e!2801530 (noDuplicateKeys!1122 (t!357616 (_2!28756 lt!1678885))))))

(assert (= (and d!1379589 (not res!1869544)) b!4497564))

(assert (= (and b!4497564 res!1869545) b!4497565))

(declare-fun m!5226223 () Bool)

(assert (=> b!4497564 m!5226223))

(declare-fun m!5226225 () Bool)

(assert (=> b!4497565 m!5226225))

(assert (=> bs!834308 d!1379589))

(declare-fun d!1379591 () Bool)

(declare-fun res!1869546 () Bool)

(declare-fun e!2801531 () Bool)

(assert (=> d!1379591 (=> res!1869546 e!2801531)))

(assert (=> d!1379591 (= res!1869546 (and ((_ is Cons!50534) lt!1678969) (= (_1!28755 (h!56351 lt!1678969)) key!3287)))))

(assert (=> d!1379591 (= (containsKey!1670 lt!1678969 key!3287) e!2801531)))

(declare-fun b!4497566 () Bool)

(declare-fun e!2801532 () Bool)

(assert (=> b!4497566 (= e!2801531 e!2801532)))

(declare-fun res!1869547 () Bool)

(assert (=> b!4497566 (=> (not res!1869547) (not e!2801532))))

(assert (=> b!4497566 (= res!1869547 ((_ is Cons!50534) lt!1678969))))

(declare-fun b!4497567 () Bool)

(assert (=> b!4497567 (= e!2801532 (containsKey!1670 (t!357616 lt!1678969) key!3287))))

(assert (= (and d!1379591 (not res!1869546)) b!4497566))

(assert (= (and b!4497566 res!1869547) b!4497567))

(declare-fun m!5226227 () Bool)

(assert (=> b!4497567 m!5226227))

(assert (=> d!1379289 d!1379591))

(declare-fun d!1379593 () Bool)

(declare-fun res!1869548 () Bool)

(declare-fun e!2801533 () Bool)

(assert (=> d!1379593 (=> res!1869548 e!2801533)))

(assert (=> d!1379593 (= res!1869548 (not ((_ is Cons!50534) lt!1678889)))))

(assert (=> d!1379593 (= (noDuplicateKeys!1122 lt!1678889) e!2801533)))

(declare-fun b!4497568 () Bool)

(declare-fun e!2801534 () Bool)

(assert (=> b!4497568 (= e!2801533 e!2801534)))

(declare-fun res!1869549 () Bool)

(assert (=> b!4497568 (=> (not res!1869549) (not e!2801534))))

(assert (=> b!4497568 (= res!1869549 (not (containsKey!1670 (t!357616 lt!1678889) (_1!28755 (h!56351 lt!1678889)))))))

(declare-fun b!4497569 () Bool)

(assert (=> b!4497569 (= e!2801534 (noDuplicateKeys!1122 (t!357616 lt!1678889)))))

(assert (= (and d!1379593 (not res!1869548)) b!4497568))

(assert (= (and b!4497568 res!1869549) b!4497569))

(declare-fun m!5226229 () Bool)

(assert (=> b!4497568 m!5226229))

(declare-fun m!5226231 () Bool)

(assert (=> b!4497569 m!5226231))

(assert (=> d!1379289 d!1379593))

(declare-fun d!1379595 () Bool)

(declare-fun res!1869550 () Bool)

(declare-fun e!2801535 () Bool)

(assert (=> d!1379595 (=> res!1869550 e!2801535)))

(assert (=> d!1379595 (= res!1869550 (and ((_ is Cons!50534) (t!357616 lt!1678889)) (= (_1!28755 (h!56351 (t!357616 lt!1678889))) key!3287)))))

(assert (=> d!1379595 (= (containsKey!1670 (t!357616 lt!1678889) key!3287) e!2801535)))

(declare-fun b!4497570 () Bool)

(declare-fun e!2801536 () Bool)

(assert (=> b!4497570 (= e!2801535 e!2801536)))

(declare-fun res!1869551 () Bool)

(assert (=> b!4497570 (=> (not res!1869551) (not e!2801536))))

(assert (=> b!4497570 (= res!1869551 ((_ is Cons!50534) (t!357616 lt!1678889)))))

(declare-fun b!4497571 () Bool)

(assert (=> b!4497571 (= e!2801536 (containsKey!1670 (t!357616 (t!357616 lt!1678889)) key!3287))))

(assert (= (and d!1379595 (not res!1869550)) b!4497570))

(assert (= (and b!4497570 res!1869551) b!4497571))

(declare-fun m!5226233 () Bool)

(assert (=> b!4497571 m!5226233))

(assert (=> b!4497162 d!1379595))

(declare-fun d!1379597 () Bool)

(declare-fun res!1869552 () Bool)

(declare-fun e!2801537 () Bool)

(assert (=> d!1379597 (=> res!1869552 e!2801537)))

(assert (=> d!1379597 (= res!1869552 ((_ is Nil!50535) (t!357617 (toList!4252 lm!1477))))))

(assert (=> d!1379597 (= (forall!10167 (t!357617 (toList!4252 lm!1477)) lambda!168249) e!2801537)))

(declare-fun b!4497572 () Bool)

(declare-fun e!2801538 () Bool)

(assert (=> b!4497572 (= e!2801537 e!2801538)))

(declare-fun res!1869553 () Bool)

(assert (=> b!4497572 (=> (not res!1869553) (not e!2801538))))

(assert (=> b!4497572 (= res!1869553 (dynLambda!21101 lambda!168249 (h!56352 (t!357617 (toList!4252 lm!1477)))))))

(declare-fun b!4497573 () Bool)

(assert (=> b!4497573 (= e!2801538 (forall!10167 (t!357617 (t!357617 (toList!4252 lm!1477))) lambda!168249))))

(assert (= (and d!1379597 (not res!1869552)) b!4497572))

(assert (= (and b!4497572 res!1869553) b!4497573))

(declare-fun b_lambda!152073 () Bool)

(assert (=> (not b_lambda!152073) (not b!4497572)))

(declare-fun m!5226235 () Bool)

(assert (=> b!4497572 m!5226235))

(declare-fun m!5226237 () Bool)

(assert (=> b!4497573 m!5226237))

(assert (=> b!4496958 d!1379597))

(declare-fun d!1379599 () Bool)

(assert (=> d!1379599 (isDefined!8328 (getValueByKey!1021 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(declare-fun lt!1679349 () Unit!91544)

(declare-fun choose!29087 (List!50658 K!11945) Unit!91544)

(assert (=> d!1379599 (= lt!1679349 (choose!29087 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(assert (=> d!1379599 (invariantList!981 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))

(assert (=> d!1379599 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287) lt!1679349)))

(declare-fun bs!834374 () Bool)

(assert (= bs!834374 d!1379599))

(assert (=> bs!834374 m!5225561))

(assert (=> bs!834374 m!5225561))

(assert (=> bs!834374 m!5225563))

(declare-fun m!5226239 () Bool)

(assert (=> bs!834374 m!5226239))

(assert (=> bs!834374 m!5226103))

(assert (=> b!4497118 d!1379599))

(assert (=> b!4497118 d!1379553))

(assert (=> b!4497118 d!1379555))

(declare-fun d!1379601 () Bool)

(assert (=> d!1379601 (contains!13203 (getKeysList!429 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) key!3287)))

(declare-fun lt!1679352 () Unit!91544)

(declare-fun choose!29088 (List!50658 K!11945) Unit!91544)

(assert (=> d!1379601 (= lt!1679352 (choose!29088 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(assert (=> d!1379601 (invariantList!981 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))

(assert (=> d!1379601 (= (lemmaInListThenGetKeysListContains!425 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) key!3287) lt!1679352)))

(declare-fun bs!834375 () Bool)

(assert (= bs!834375 d!1379601))

(assert (=> bs!834375 m!5225569))

(assert (=> bs!834375 m!5225569))

(declare-fun m!5226241 () Bool)

(assert (=> bs!834375 m!5226241))

(declare-fun m!5226243 () Bool)

(assert (=> bs!834375 m!5226243))

(assert (=> bs!834375 m!5226103))

(assert (=> b!4497118 d!1379601))

(declare-fun d!1379603 () Bool)

(declare-fun res!1869558 () Bool)

(declare-fun e!2801543 () Bool)

(assert (=> d!1379603 (=> res!1869558 e!2801543)))

(assert (=> d!1379603 (= res!1869558 (and ((_ is Cons!50535) (toList!4252 lm!1477)) (= (_1!28756 (h!56352 (toList!4252 lm!1477))) lt!1678888)))))

(assert (=> d!1379603 (= (containsKey!1672 (toList!4252 lm!1477) lt!1678888) e!2801543)))

(declare-fun b!4497578 () Bool)

(declare-fun e!2801544 () Bool)

(assert (=> b!4497578 (= e!2801543 e!2801544)))

(declare-fun res!1869559 () Bool)

(assert (=> b!4497578 (=> (not res!1869559) (not e!2801544))))

(assert (=> b!4497578 (= res!1869559 (and (or (not ((_ is Cons!50535) (toList!4252 lm!1477))) (bvsle (_1!28756 (h!56352 (toList!4252 lm!1477))) lt!1678888)) ((_ is Cons!50535) (toList!4252 lm!1477)) (bvslt (_1!28756 (h!56352 (toList!4252 lm!1477))) lt!1678888)))))

(declare-fun b!4497579 () Bool)

(assert (=> b!4497579 (= e!2801544 (containsKey!1672 (t!357617 (toList!4252 lm!1477)) lt!1678888))))

(assert (= (and d!1379603 (not res!1869558)) b!4497578))

(assert (= (and b!4497578 res!1869559) b!4497579))

(declare-fun m!5226245 () Bool)

(assert (=> b!4497579 m!5226245))

(assert (=> d!1379275 d!1379603))

(declare-fun d!1379605 () Bool)

(declare-fun e!2801545 () Bool)

(assert (=> d!1379605 e!2801545))

(declare-fun res!1869560 () Bool)

(assert (=> d!1379605 (=> res!1869560 e!2801545)))

(declare-fun lt!1679353 () Bool)

(assert (=> d!1379605 (= res!1869560 (not lt!1679353))))

(declare-fun lt!1679355 () Bool)

(assert (=> d!1379605 (= lt!1679353 lt!1679355)))

(declare-fun lt!1679356 () Unit!91544)

(declare-fun e!2801546 () Unit!91544)

(assert (=> d!1379605 (= lt!1679356 e!2801546)))

(declare-fun c!766457 () Bool)

(assert (=> d!1379605 (= c!766457 lt!1679355)))

(assert (=> d!1379605 (= lt!1679355 (containsKey!1672 (toList!4252 lm!1477) (hash!2675 hashF!1107 key!3287)))))

(assert (=> d!1379605 (= (contains!13199 lm!1477 (hash!2675 hashF!1107 key!3287)) lt!1679353)))

(declare-fun b!4497580 () Bool)

(declare-fun lt!1679354 () Unit!91544)

(assert (=> b!4497580 (= e!2801546 lt!1679354)))

(assert (=> b!4497580 (= lt!1679354 (lemmaContainsKeyImpliesGetValueByKeyDefined!923 (toList!4252 lm!1477) (hash!2675 hashF!1107 key!3287)))))

(assert (=> b!4497580 (isDefined!8326 (getValueByKey!1020 (toList!4252 lm!1477) (hash!2675 hashF!1107 key!3287)))))

(declare-fun b!4497581 () Bool)

(declare-fun Unit!91604 () Unit!91544)

(assert (=> b!4497581 (= e!2801546 Unit!91604)))

(declare-fun b!4497582 () Bool)

(assert (=> b!4497582 (= e!2801545 (isDefined!8326 (getValueByKey!1020 (toList!4252 lm!1477) (hash!2675 hashF!1107 key!3287))))))

(assert (= (and d!1379605 c!766457) b!4497580))

(assert (= (and d!1379605 (not c!766457)) b!4497581))

(assert (= (and d!1379605 (not res!1869560)) b!4497582))

(assert (=> d!1379605 m!5225107))

(declare-fun m!5226247 () Bool)

(assert (=> d!1379605 m!5226247))

(assert (=> b!4497580 m!5225107))

(declare-fun m!5226249 () Bool)

(assert (=> b!4497580 m!5226249))

(assert (=> b!4497580 m!5225107))

(declare-fun m!5226251 () Bool)

(assert (=> b!4497580 m!5226251))

(assert (=> b!4497580 m!5226251))

(declare-fun m!5226253 () Bool)

(assert (=> b!4497580 m!5226253))

(assert (=> b!4497582 m!5225107))

(assert (=> b!4497582 m!5226251))

(assert (=> b!4497582 m!5226251))

(assert (=> b!4497582 m!5226253))

(assert (=> d!1379273 d!1379605))

(assert (=> d!1379273 d!1379353))

(declare-fun d!1379607 () Bool)

(assert (=> d!1379607 (contains!13199 lm!1477 (hash!2675 hashF!1107 key!3287))))

(assert (=> d!1379607 true))

(declare-fun _$27!1167 () Unit!91544)

(assert (=> d!1379607 (= (choose!29071 lm!1477 key!3287 hashF!1107) _$27!1167)))

(declare-fun bs!834376 () Bool)

(assert (= bs!834376 d!1379607))

(assert (=> bs!834376 m!5225107))

(assert (=> bs!834376 m!5225107))

(assert (=> bs!834376 m!5225185))

(assert (=> d!1379273 d!1379607))

(declare-fun d!1379609 () Bool)

(declare-fun res!1869561 () Bool)

(declare-fun e!2801547 () Bool)

(assert (=> d!1379609 (=> res!1869561 e!2801547)))

(assert (=> d!1379609 (= res!1869561 ((_ is Nil!50535) (toList!4252 lm!1477)))))

(assert (=> d!1379609 (= (forall!10167 (toList!4252 lm!1477) lambda!168252) e!2801547)))

(declare-fun b!4497583 () Bool)

(declare-fun e!2801548 () Bool)

(assert (=> b!4497583 (= e!2801547 e!2801548)))

(declare-fun res!1869562 () Bool)

(assert (=> b!4497583 (=> (not res!1869562) (not e!2801548))))

(assert (=> b!4497583 (= res!1869562 (dynLambda!21101 lambda!168252 (h!56352 (toList!4252 lm!1477))))))

(declare-fun b!4497584 () Bool)

(assert (=> b!4497584 (= e!2801548 (forall!10167 (t!357617 (toList!4252 lm!1477)) lambda!168252))))

(assert (= (and d!1379609 (not res!1869561)) b!4497583))

(assert (= (and b!4497583 res!1869562) b!4497584))

(declare-fun b_lambda!152075 () Bool)

(assert (=> (not b_lambda!152075) (not b!4497583)))

(declare-fun m!5226255 () Bool)

(assert (=> b!4497583 m!5226255))

(declare-fun m!5226257 () Bool)

(assert (=> b!4497584 m!5226257))

(assert (=> d!1379273 d!1379609))

(assert (=> d!1379369 d!1379575))

(declare-fun d!1379611 () Bool)

(declare-fun lt!1679357 () Bool)

(assert (=> d!1379611 (= lt!1679357 (select (content!8249 (toList!4252 lt!1679108)) lt!1678890))))

(declare-fun e!2801549 () Bool)

(assert (=> d!1379611 (= lt!1679357 e!2801549)))

(declare-fun res!1869564 () Bool)

(assert (=> d!1379611 (=> (not res!1869564) (not e!2801549))))

(assert (=> d!1379611 (= res!1869564 ((_ is Cons!50535) (toList!4252 lt!1679108)))))

(assert (=> d!1379611 (= (contains!13201 (toList!4252 lt!1679108) lt!1678890) lt!1679357)))

(declare-fun b!4497585 () Bool)

(declare-fun e!2801550 () Bool)

(assert (=> b!4497585 (= e!2801549 e!2801550)))

(declare-fun res!1869563 () Bool)

(assert (=> b!4497585 (=> res!1869563 e!2801550)))

(assert (=> b!4497585 (= res!1869563 (= (h!56352 (toList!4252 lt!1679108)) lt!1678890))))

(declare-fun b!4497586 () Bool)

(assert (=> b!4497586 (= e!2801550 (contains!13201 (t!357617 (toList!4252 lt!1679108)) lt!1678890))))

(assert (= (and d!1379611 res!1869564) b!4497585))

(assert (= (and b!4497585 (not res!1869563)) b!4497586))

(declare-fun m!5226259 () Bool)

(assert (=> d!1379611 m!5226259))

(declare-fun m!5226261 () Bool)

(assert (=> d!1379611 m!5226261))

(declare-fun m!5226263 () Bool)

(assert (=> b!4497586 m!5226263))

(assert (=> b!4497143 d!1379611))

(assert (=> b!4497180 d!1379567))

(assert (=> b!4497180 d!1379569))

(declare-fun b!4497590 () Bool)

(declare-fun e!2801552 () List!50658)

(assert (=> b!4497590 (= e!2801552 Nil!50534)))

(declare-fun b!4497588 () Bool)

(declare-fun e!2801551 () List!50658)

(assert (=> b!4497588 (= e!2801551 e!2801552)))

(declare-fun c!766458 () Bool)

(assert (=> b!4497588 (= c!766458 ((_ is Cons!50534) (t!357616 lt!1678889)))))

(declare-fun d!1379613 () Bool)

(declare-fun lt!1679358 () List!50658)

(assert (=> d!1379613 (not (containsKey!1670 lt!1679358 key!3287))))

(assert (=> d!1379613 (= lt!1679358 e!2801551)))

(declare-fun c!766459 () Bool)

(assert (=> d!1379613 (= c!766459 (and ((_ is Cons!50534) (t!357616 lt!1678889)) (= (_1!28755 (h!56351 (t!357616 lt!1678889))) key!3287)))))

(assert (=> d!1379613 (noDuplicateKeys!1122 (t!357616 lt!1678889))))

(assert (=> d!1379613 (= (removePairForKey!749 (t!357616 lt!1678889) key!3287) lt!1679358)))

(declare-fun b!4497587 () Bool)

(assert (=> b!4497587 (= e!2801551 (t!357616 (t!357616 lt!1678889)))))

(declare-fun b!4497589 () Bool)

(assert (=> b!4497589 (= e!2801552 (Cons!50534 (h!56351 (t!357616 lt!1678889)) (removePairForKey!749 (t!357616 (t!357616 lt!1678889)) key!3287)))))

(assert (= (and d!1379613 c!766459) b!4497587))

(assert (= (and d!1379613 (not c!766459)) b!4497588))

(assert (= (and b!4497588 c!766458) b!4497589))

(assert (= (and b!4497588 (not c!766458)) b!4497590))

(declare-fun m!5226265 () Bool)

(assert (=> d!1379613 m!5226265))

(assert (=> d!1379613 m!5226231))

(declare-fun m!5226267 () Bool)

(assert (=> b!4497589 m!5226267))

(assert (=> b!4496945 d!1379613))

(declare-fun d!1379615 () Bool)

(assert (=> d!1379615 (= (invariantList!981 (toList!4251 lt!1679082)) (noDuplicatedKeys!240 (toList!4251 lt!1679082)))))

(declare-fun bs!834377 () Bool)

(assert (= bs!834377 d!1379615))

(declare-fun m!5226269 () Bool)

(assert (=> bs!834377 m!5226269))

(assert (=> d!1379401 d!1379615))

(declare-fun d!1379617 () Bool)

(declare-fun res!1869565 () Bool)

(declare-fun e!2801553 () Bool)

(assert (=> d!1379617 (=> res!1869565 e!2801553)))

(assert (=> d!1379617 (= res!1869565 ((_ is Nil!50535) (t!357617 (toList!4252 lm!1477))))))

(assert (=> d!1379617 (= (forall!10167 (t!357617 (toList!4252 lm!1477)) lambda!168293) e!2801553)))

(declare-fun b!4497591 () Bool)

(declare-fun e!2801554 () Bool)

(assert (=> b!4497591 (= e!2801553 e!2801554)))

(declare-fun res!1869566 () Bool)

(assert (=> b!4497591 (=> (not res!1869566) (not e!2801554))))

(assert (=> b!4497591 (= res!1869566 (dynLambda!21101 lambda!168293 (h!56352 (t!357617 (toList!4252 lm!1477)))))))

(declare-fun b!4497592 () Bool)

(assert (=> b!4497592 (= e!2801554 (forall!10167 (t!357617 (t!357617 (toList!4252 lm!1477))) lambda!168293))))

(assert (= (and d!1379617 (not res!1869565)) b!4497591))

(assert (= (and b!4497591 res!1869566) b!4497592))

(declare-fun b_lambda!152077 () Bool)

(assert (=> (not b_lambda!152077) (not b!4497591)))

(declare-fun m!5226271 () Bool)

(assert (=> b!4497591 m!5226271))

(declare-fun m!5226273 () Bool)

(assert (=> b!4497592 m!5226273))

(assert (=> d!1379401 d!1379617))

(declare-fun b!4497593 () Bool)

(declare-fun e!2801560 () Bool)

(assert (=> b!4497593 (= e!2801560 (not (contains!13203 (keys!17518 (extractMap!1178 (toList!4252 lm!1477))) key!3287)))))

(declare-fun b!4497594 () Bool)

(assert (=> b!4497594 false))

(declare-fun lt!1679364 () Unit!91544)

(declare-fun lt!1679361 () Unit!91544)

(assert (=> b!4497594 (= lt!1679364 lt!1679361)))

(assert (=> b!4497594 (containsKey!1674 (toList!4251 (extractMap!1178 (toList!4252 lm!1477))) key!3287)))

(assert (=> b!4497594 (= lt!1679361 (lemmaInGetKeysListThenContainsKey!428 (toList!4251 (extractMap!1178 (toList!4252 lm!1477))) key!3287))))

(declare-fun e!2801559 () Unit!91544)

(declare-fun Unit!91605 () Unit!91544)

(assert (=> b!4497594 (= e!2801559 Unit!91605)))

(declare-fun b!4497595 () Bool)

(declare-fun e!2801557 () Unit!91544)

(declare-fun lt!1679363 () Unit!91544)

(assert (=> b!4497595 (= e!2801557 lt!1679363)))

(declare-fun lt!1679360 () Unit!91544)

(assert (=> b!4497595 (= lt!1679360 (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 (extractMap!1178 (toList!4252 lm!1477))) key!3287))))

(assert (=> b!4497595 (isDefined!8328 (getValueByKey!1021 (toList!4251 (extractMap!1178 (toList!4252 lm!1477))) key!3287))))

(declare-fun lt!1679362 () Unit!91544)

(assert (=> b!4497595 (= lt!1679362 lt!1679360)))

(assert (=> b!4497595 (= lt!1679363 (lemmaInListThenGetKeysListContains!425 (toList!4251 (extractMap!1178 (toList!4252 lm!1477))) key!3287))))

(declare-fun call!312997 () Bool)

(assert (=> b!4497595 call!312997))

(declare-fun b!4497596 () Bool)

(declare-fun Unit!91606 () Unit!91544)

(assert (=> b!4497596 (= e!2801559 Unit!91606)))

(declare-fun b!4497597 () Bool)

(declare-fun e!2801556 () List!50661)

(assert (=> b!4497597 (= e!2801556 (getKeysList!429 (toList!4251 (extractMap!1178 (toList!4252 lm!1477)))))))

(declare-fun b!4497598 () Bool)

(assert (=> b!4497598 (= e!2801557 e!2801559)))

(declare-fun c!766462 () Bool)

(assert (=> b!4497598 (= c!766462 call!312997)))

(declare-fun b!4497599 () Bool)

(declare-fun e!2801558 () Bool)

(assert (=> b!4497599 (= e!2801558 (contains!13203 (keys!17518 (extractMap!1178 (toList!4252 lm!1477))) key!3287))))

(declare-fun b!4497600 () Bool)

(assert (=> b!4497600 (= e!2801556 (keys!17518 (extractMap!1178 (toList!4252 lm!1477))))))

(declare-fun b!4497601 () Bool)

(declare-fun e!2801555 () Bool)

(assert (=> b!4497601 (= e!2801555 e!2801558)))

(declare-fun res!1869567 () Bool)

(assert (=> b!4497601 (=> (not res!1869567) (not e!2801558))))

(assert (=> b!4497601 (= res!1869567 (isDefined!8328 (getValueByKey!1021 (toList!4251 (extractMap!1178 (toList!4252 lm!1477))) key!3287)))))

(declare-fun d!1379619 () Bool)

(assert (=> d!1379619 e!2801555))

(declare-fun res!1869568 () Bool)

(assert (=> d!1379619 (=> res!1869568 e!2801555)))

(assert (=> d!1379619 (= res!1869568 e!2801560)))

(declare-fun res!1869569 () Bool)

(assert (=> d!1379619 (=> (not res!1869569) (not e!2801560))))

(declare-fun lt!1679366 () Bool)

(assert (=> d!1379619 (= res!1869569 (not lt!1679366))))

(declare-fun lt!1679365 () Bool)

(assert (=> d!1379619 (= lt!1679366 lt!1679365)))

(declare-fun lt!1679359 () Unit!91544)

(assert (=> d!1379619 (= lt!1679359 e!2801557)))

(declare-fun c!766461 () Bool)

(assert (=> d!1379619 (= c!766461 lt!1679365)))

(assert (=> d!1379619 (= lt!1679365 (containsKey!1674 (toList!4251 (extractMap!1178 (toList!4252 lm!1477))) key!3287))))

(assert (=> d!1379619 (= (contains!13200 (extractMap!1178 (toList!4252 lm!1477)) key!3287) lt!1679366)))

(declare-fun bm!312992 () Bool)

(assert (=> bm!312992 (= call!312997 (contains!13203 e!2801556 key!3287))))

(declare-fun c!766460 () Bool)

(assert (=> bm!312992 (= c!766460 c!766461)))

(assert (= (and d!1379619 c!766461) b!4497595))

(assert (= (and d!1379619 (not c!766461)) b!4497598))

(assert (= (and b!4497598 c!766462) b!4497594))

(assert (= (and b!4497598 (not c!766462)) b!4497596))

(assert (= (or b!4497595 b!4497598) bm!312992))

(assert (= (and bm!312992 c!766460) b!4497597))

(assert (= (and bm!312992 (not c!766460)) b!4497600))

(assert (= (and d!1379619 res!1869569) b!4497593))

(assert (= (and d!1379619 (not res!1869568)) b!4497601))

(assert (= (and b!4497601 res!1869567) b!4497599))

(assert (=> b!4497593 m!5225153))

(declare-fun m!5226275 () Bool)

(assert (=> b!4497593 m!5226275))

(assert (=> b!4497593 m!5226275))

(declare-fun m!5226277 () Bool)

(assert (=> b!4497593 m!5226277))

(declare-fun m!5226279 () Bool)

(assert (=> d!1379619 m!5226279))

(assert (=> b!4497599 m!5225153))

(assert (=> b!4497599 m!5226275))

(assert (=> b!4497599 m!5226275))

(assert (=> b!4497599 m!5226277))

(assert (=> b!4497600 m!5225153))

(assert (=> b!4497600 m!5226275))

(declare-fun m!5226281 () Bool)

(assert (=> b!4497595 m!5226281))

(declare-fun m!5226283 () Bool)

(assert (=> b!4497595 m!5226283))

(assert (=> b!4497595 m!5226283))

(declare-fun m!5226285 () Bool)

(assert (=> b!4497595 m!5226285))

(declare-fun m!5226287 () Bool)

(assert (=> b!4497595 m!5226287))

(assert (=> b!4497601 m!5226283))

(assert (=> b!4497601 m!5226283))

(assert (=> b!4497601 m!5226285))

(assert (=> b!4497594 m!5226279))

(declare-fun m!5226289 () Bool)

(assert (=> b!4497594 m!5226289))

(declare-fun m!5226291 () Bool)

(assert (=> b!4497597 m!5226291))

(declare-fun m!5226293 () Bool)

(assert (=> bm!312992 m!5226293))

(assert (=> d!1379333 d!1379619))

(assert (=> d!1379333 d!1379443))

(declare-fun d!1379621 () Bool)

(assert (=> d!1379621 (not (contains!13200 (extractMap!1178 (toList!4252 lm!1477)) key!3287))))

(assert (=> d!1379621 true))

(declare-fun _$26!308 () Unit!91544)

(assert (=> d!1379621 (= (choose!29078 lm!1477 key!3287 hashF!1107) _$26!308)))

(declare-fun bs!834378 () Bool)

(assert (= bs!834378 d!1379621))

(assert (=> bs!834378 m!5225153))

(assert (=> bs!834378 m!5225153))

(assert (=> bs!834378 m!5225421))

(assert (=> d!1379333 d!1379621))

(declare-fun d!1379623 () Bool)

(declare-fun res!1869570 () Bool)

(declare-fun e!2801563 () Bool)

(assert (=> d!1379623 (=> res!1869570 e!2801563)))

(assert (=> d!1379623 (= res!1869570 ((_ is Nil!50535) (toList!4252 lm!1477)))))

(assert (=> d!1379623 (= (forall!10167 (toList!4252 lm!1477) lambda!168275) e!2801563)))

(declare-fun b!4497606 () Bool)

(declare-fun e!2801564 () Bool)

(assert (=> b!4497606 (= e!2801563 e!2801564)))

(declare-fun res!1869571 () Bool)

(assert (=> b!4497606 (=> (not res!1869571) (not e!2801564))))

(assert (=> b!4497606 (= res!1869571 (dynLambda!21101 lambda!168275 (h!56352 (toList!4252 lm!1477))))))

(declare-fun b!4497607 () Bool)

(assert (=> b!4497607 (= e!2801564 (forall!10167 (t!357617 (toList!4252 lm!1477)) lambda!168275))))

(assert (= (and d!1379623 (not res!1869570)) b!4497606))

(assert (= (and b!4497606 res!1869571) b!4497607))

(declare-fun b_lambda!152079 () Bool)

(assert (=> (not b_lambda!152079) (not b!4497606)))

(declare-fun m!5226295 () Bool)

(assert (=> b!4497606 m!5226295))

(declare-fun m!5226297 () Bool)

(assert (=> b!4497607 m!5226297))

(assert (=> d!1379333 d!1379623))

(declare-fun d!1379625 () Bool)

(declare-fun res!1869578 () Bool)

(declare-fun e!2801571 () Bool)

(assert (=> d!1379625 (=> res!1869578 e!2801571)))

(assert (=> d!1379625 (= res!1869578 (or ((_ is Nil!50535) (toList!4252 lm!1477)) ((_ is Nil!50535) (t!357617 (toList!4252 lm!1477)))))))

(assert (=> d!1379625 (= (isStrictlySorted!395 (toList!4252 lm!1477)) e!2801571)))

(declare-fun b!4497614 () Bool)

(declare-fun e!2801572 () Bool)

(assert (=> b!4497614 (= e!2801571 e!2801572)))

(declare-fun res!1869579 () Bool)

(assert (=> b!4497614 (=> (not res!1869579) (not e!2801572))))

(assert (=> b!4497614 (= res!1869579 (bvslt (_1!28756 (h!56352 (toList!4252 lm!1477))) (_1!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))))))

(declare-fun b!4497615 () Bool)

(assert (=> b!4497615 (= e!2801572 (isStrictlySorted!395 (t!357617 (toList!4252 lm!1477))))))

(assert (= (and d!1379625 (not res!1869578)) b!4497614))

(assert (= (and b!4497614 res!1869579) b!4497615))

(declare-fun m!5226299 () Bool)

(assert (=> b!4497615 m!5226299))

(assert (=> d!1379299 d!1379625))

(declare-fun bs!834379 () Bool)

(declare-fun b!4497618 () Bool)

(assert (= bs!834379 (and b!4497618 d!1379503)))

(declare-fun lambda!168397 () Int)

(assert (=> bs!834379 (= (= (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) lt!1679300) (= lambda!168397 lambda!168347))))

(declare-fun bs!834380 () Bool)

(assert (= bs!834380 (and b!4497618 d!1379411)))

(assert (=> bs!834380 (not (= lambda!168397 lambda!168299))))

(declare-fun bs!834381 () Bool)

(assert (= bs!834381 (and b!4497618 b!4497455)))

(assert (=> bs!834381 (= (= (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168397 lambda!168345))))

(declare-fun bs!834382 () Bool)

(assert (= bs!834382 (and b!4497618 b!4497456)))

(assert (=> bs!834382 (= (= (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168397 lambda!168344))))

(assert (=> bs!834381 (= (= (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) lt!1679301) (= lambda!168397 lambda!168346))))

(assert (=> b!4497618 true))

(declare-fun bs!834383 () Bool)

(declare-fun b!4497617 () Bool)

(assert (= bs!834383 (and b!4497617 d!1379503)))

(declare-fun lambda!168398 () Int)

(assert (=> bs!834383 (= (= (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) lt!1679300) (= lambda!168398 lambda!168347))))

(declare-fun bs!834384 () Bool)

(assert (= bs!834384 (and b!4497617 d!1379411)))

(assert (=> bs!834384 (not (= lambda!168398 lambda!168299))))

(declare-fun bs!834385 () Bool)

(assert (= bs!834385 (and b!4497617 b!4497455)))

(assert (=> bs!834385 (= (= (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168398 lambda!168345))))

(declare-fun bs!834386 () Bool)

(assert (= bs!834386 (and b!4497617 b!4497456)))

(assert (=> bs!834386 (= (= (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168398 lambda!168344))))

(assert (=> bs!834385 (= (= (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) lt!1679301) (= lambda!168398 lambda!168346))))

(declare-fun bs!834387 () Bool)

(assert (= bs!834387 (and b!4497617 b!4497618)))

(assert (=> bs!834387 (= lambda!168398 lambda!168397)))

(assert (=> b!4497617 true))

(declare-fun lt!1679421 () ListMap!3513)

(declare-fun lambda!168399 () Int)

(assert (=> bs!834383 (= (= lt!1679421 lt!1679300) (= lambda!168399 lambda!168347))))

(assert (=> bs!834384 (not (= lambda!168399 lambda!168299))))

(assert (=> bs!834385 (= (= lt!1679421 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168399 lambda!168345))))

(assert (=> bs!834386 (= (= lt!1679421 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168399 lambda!168344))))

(assert (=> bs!834385 (= (= lt!1679421 lt!1679301) (= lambda!168399 lambda!168346))))

(assert (=> bs!834387 (= (= lt!1679421 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168399 lambda!168397))))

(assert (=> b!4497617 (= (= lt!1679421 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168399 lambda!168398))))

(assert (=> b!4497617 true))

(declare-fun bs!834388 () Bool)

(declare-fun d!1379627 () Bool)

(assert (= bs!834388 (and d!1379627 d!1379503)))

(declare-fun lt!1679420 () ListMap!3513)

(declare-fun lambda!168402 () Int)

(assert (=> bs!834388 (= (= lt!1679420 lt!1679300) (= lambda!168402 lambda!168347))))

(declare-fun bs!834389 () Bool)

(assert (= bs!834389 (and d!1379627 d!1379411)))

(assert (=> bs!834389 (not (= lambda!168402 lambda!168299))))

(declare-fun bs!834390 () Bool)

(assert (= bs!834390 (and d!1379627 b!4497455)))

(assert (=> bs!834390 (= (= lt!1679420 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168402 lambda!168345))))

(declare-fun bs!834391 () Bool)

(assert (= bs!834391 (and d!1379627 b!4497456)))

(assert (=> bs!834391 (= (= lt!1679420 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168402 lambda!168344))))

(declare-fun bs!834392 () Bool)

(assert (= bs!834392 (and d!1379627 b!4497617)))

(assert (=> bs!834392 (= (= lt!1679420 lt!1679421) (= lambda!168402 lambda!168399))))

(assert (=> bs!834390 (= (= lt!1679420 lt!1679301) (= lambda!168402 lambda!168346))))

(declare-fun bs!834393 () Bool)

(assert (= bs!834393 (and d!1379627 b!4497618)))

(assert (=> bs!834393 (= (= lt!1679420 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168402 lambda!168397))))

(assert (=> bs!834392 (= (= lt!1679420 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168402 lambda!168398))))

(assert (=> d!1379627 true))

(declare-fun bm!312993 () Bool)

(declare-fun call!312999 () Unit!91544)

(assert (=> bm!312993 (= call!312999 (lemmaContainsAllItsOwnKeys!303 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))))))

(declare-fun b!4497616 () Bool)

(declare-fun res!1869582 () Bool)

(declare-fun e!2801574 () Bool)

(assert (=> b!4497616 (=> (not res!1869582) (not e!2801574))))

(assert (=> b!4497616 (= res!1869582 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) lambda!168402))))

(declare-fun e!2801575 () ListMap!3513)

(assert (=> b!4497617 (= e!2801575 lt!1679421)))

(declare-fun lt!1679422 () ListMap!3513)

(assert (=> b!4497617 (= lt!1679422 (+!1467 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) (h!56351 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))))))))

(assert (=> b!4497617 (= lt!1679421 (addToMapMapFromBucket!649 (t!357616 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))) (+!1467 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) (h!56351 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))))))))

(declare-fun lt!1679411 () Unit!91544)

(assert (=> b!4497617 (= lt!1679411 call!312999)))

(assert (=> b!4497617 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) lambda!168398)))

(declare-fun lt!1679415 () Unit!91544)

(assert (=> b!4497617 (= lt!1679415 lt!1679411)))

(assert (=> b!4497617 (forall!10169 (toList!4251 lt!1679422) lambda!168399)))

(declare-fun lt!1679410 () Unit!91544)

(declare-fun Unit!91618 () Unit!91544)

(assert (=> b!4497617 (= lt!1679410 Unit!91618)))

(declare-fun call!312998 () Bool)

(assert (=> b!4497617 call!312998))

(declare-fun lt!1679417 () Unit!91544)

(declare-fun Unit!91619 () Unit!91544)

(assert (=> b!4497617 (= lt!1679417 Unit!91619)))

(declare-fun lt!1679426 () Unit!91544)

(declare-fun Unit!91620 () Unit!91544)

(assert (=> b!4497617 (= lt!1679426 Unit!91620)))

(declare-fun lt!1679412 () Unit!91544)

(assert (=> b!4497617 (= lt!1679412 (forallContained!2422 (toList!4251 lt!1679422) lambda!168399 (h!56351 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))))))))

(assert (=> b!4497617 (contains!13200 lt!1679422 (_1!28755 (h!56351 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))))))))

(declare-fun lt!1679416 () Unit!91544)

(declare-fun Unit!91621 () Unit!91544)

(assert (=> b!4497617 (= lt!1679416 Unit!91621)))

(assert (=> b!4497617 (contains!13200 lt!1679421 (_1!28755 (h!56351 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))))))))

(declare-fun lt!1679418 () Unit!91544)

(declare-fun Unit!91622 () Unit!91544)

(assert (=> b!4497617 (= lt!1679418 Unit!91622)))

(declare-fun call!313000 () Bool)

(assert (=> b!4497617 call!313000))

(declare-fun lt!1679424 () Unit!91544)

(declare-fun Unit!91623 () Unit!91544)

(assert (=> b!4497617 (= lt!1679424 Unit!91623)))

(assert (=> b!4497617 (forall!10169 (toList!4251 lt!1679422) lambda!168399)))

(declare-fun lt!1679409 () Unit!91544)

(declare-fun Unit!91624 () Unit!91544)

(assert (=> b!4497617 (= lt!1679409 Unit!91624)))

(declare-fun lt!1679413 () Unit!91544)

(declare-fun Unit!91625 () Unit!91544)

(assert (=> b!4497617 (= lt!1679413 Unit!91625)))

(declare-fun lt!1679419 () Unit!91544)

(assert (=> b!4497617 (= lt!1679419 (addForallContainsKeyThenBeforeAdding!303 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) lt!1679421 (_1!28755 (h!56351 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))))) (_2!28755 (h!56351 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))))))))

(assert (=> b!4497617 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) lambda!168399)))

(declare-fun lt!1679428 () Unit!91544)

(assert (=> b!4497617 (= lt!1679428 lt!1679419)))

(assert (=> b!4497617 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) lambda!168399)))

(declare-fun lt!1679414 () Unit!91544)

(declare-fun Unit!91626 () Unit!91544)

(assert (=> b!4497617 (= lt!1679414 Unit!91626)))

(declare-fun res!1869581 () Bool)

(assert (=> b!4497617 (= res!1869581 (forall!10169 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))) lambda!168399))))

(declare-fun e!2801573 () Bool)

(assert (=> b!4497617 (=> (not res!1869581) (not e!2801573))))

(assert (=> b!4497617 e!2801573))

(declare-fun lt!1679429 () Unit!91544)

(declare-fun Unit!91627 () Unit!91544)

(assert (=> b!4497617 (= lt!1679429 Unit!91627)))

(declare-fun c!766465 () Bool)

(declare-fun bm!312994 () Bool)

(assert (=> bm!312994 (= call!312998 (forall!10169 (ite c!766465 (toList!4251 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (t!357616 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))))) (ite c!766465 lambda!168397 lambda!168399)))))

(assert (=> b!4497618 (= e!2801575 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))))))

(declare-fun lt!1679427 () Unit!91544)

(assert (=> b!4497618 (= lt!1679427 call!312999)))

(assert (=> b!4497618 call!312998))

(declare-fun lt!1679423 () Unit!91544)

(assert (=> b!4497618 (= lt!1679423 lt!1679427)))

(assert (=> b!4497618 call!313000))

(declare-fun lt!1679425 () Unit!91544)

(declare-fun Unit!91628 () Unit!91544)

(assert (=> b!4497618 (= lt!1679425 Unit!91628)))

(declare-fun bm!312995 () Bool)

(assert (=> bm!312995 (= call!313000 (forall!10169 (ite c!766465 (toList!4251 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))) (ite c!766465 lambda!168397 lambda!168399)))))

(assert (=> d!1379627 e!2801574))

(declare-fun res!1869580 () Bool)

(assert (=> d!1379627 (=> (not res!1869580) (not e!2801574))))

(assert (=> d!1379627 (= res!1869580 (forall!10169 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))) lambda!168402))))

(assert (=> d!1379627 (= lt!1679420 e!2801575)))

(assert (=> d!1379627 (= c!766465 ((_ is Nil!50534) (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))))))

(assert (=> d!1379627 (noDuplicateKeys!1122 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))))))

(assert (=> d!1379627 (= (addToMapMapFromBucket!649 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) lt!1679420)))

(declare-fun b!4497619 () Bool)

(assert (=> b!4497619 (= e!2801574 (invariantList!981 (toList!4251 lt!1679420)))))

(declare-fun b!4497620 () Bool)

(assert (=> b!4497620 (= e!2801573 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) lambda!168399))))

(assert (= (and d!1379627 c!766465) b!4497618))

(assert (= (and d!1379627 (not c!766465)) b!4497617))

(assert (= (and b!4497617 res!1869581) b!4497620))

(assert (= (or b!4497618 b!4497617) bm!312995))

(assert (= (or b!4497618 b!4497617) bm!312994))

(assert (= (or b!4497618 b!4497617) bm!312993))

(assert (= (and d!1379627 res!1869580) b!4497616))

(assert (= (and b!4497616 res!1869582) b!4497619))

(declare-fun m!5226301 () Bool)

(assert (=> b!4497616 m!5226301))

(declare-fun m!5226303 () Bool)

(assert (=> d!1379627 m!5226303))

(declare-fun m!5226305 () Bool)

(assert (=> d!1379627 m!5226305))

(assert (=> bm!312993 m!5225577))

(declare-fun m!5226307 () Bool)

(assert (=> bm!312993 m!5226307))

(declare-fun m!5226309 () Bool)

(assert (=> bm!312995 m!5226309))

(declare-fun m!5226311 () Bool)

(assert (=> b!4497620 m!5226311))

(declare-fun m!5226313 () Bool)

(assert (=> bm!312994 m!5226313))

(declare-fun m!5226315 () Bool)

(assert (=> b!4497619 m!5226315))

(declare-fun m!5226317 () Bool)

(assert (=> b!4497617 m!5226317))

(declare-fun m!5226319 () Bool)

(assert (=> b!4497617 m!5226319))

(declare-fun m!5226321 () Bool)

(assert (=> b!4497617 m!5226321))

(assert (=> b!4497617 m!5225577))

(assert (=> b!4497617 m!5226319))

(declare-fun m!5226323 () Bool)

(assert (=> b!4497617 m!5226323))

(declare-fun m!5226325 () Bool)

(assert (=> b!4497617 m!5226325))

(assert (=> b!4497617 m!5226317))

(assert (=> b!4497617 m!5225577))

(declare-fun m!5226327 () Bool)

(assert (=> b!4497617 m!5226327))

(declare-fun m!5226329 () Bool)

(assert (=> b!4497617 m!5226329))

(declare-fun m!5226331 () Bool)

(assert (=> b!4497617 m!5226331))

(declare-fun m!5226333 () Bool)

(assert (=> b!4497617 m!5226333))

(assert (=> b!4497617 m!5226311))

(assert (=> b!4497617 m!5226311))

(assert (=> b!4497125 d!1379627))

(declare-fun bs!834394 () Bool)

(declare-fun d!1379629 () Bool)

(assert (= bs!834394 (and d!1379629 d!1379543)))

(declare-fun lambda!168405 () Int)

(assert (=> bs!834394 (= lambda!168405 lambda!168348)))

(declare-fun bs!834395 () Bool)

(assert (= bs!834395 (and d!1379629 d!1379333)))

(assert (=> bs!834395 (= lambda!168405 lambda!168275)))

(declare-fun bs!834396 () Bool)

(assert (= bs!834396 (and d!1379629 start!443724)))

(assert (=> bs!834396 (= lambda!168405 lambda!168249)))

(declare-fun bs!834397 () Bool)

(assert (= bs!834397 (and d!1379629 d!1379433)))

(assert (=> bs!834397 (= lambda!168405 lambda!168301)))

(declare-fun bs!834398 () Bool)

(assert (= bs!834398 (and d!1379629 d!1379421)))

(assert (=> bs!834398 (= lambda!168405 lambda!168300)))

(declare-fun bs!834399 () Bool)

(assert (= bs!834399 (and d!1379629 d!1379355)))

(assert (=> bs!834399 (= lambda!168405 lambda!168282)))

(declare-fun bs!834400 () Bool)

(assert (= bs!834400 (and d!1379629 d!1379437)))

(assert (=> bs!834400 (= lambda!168405 lambda!168304)))

(declare-fun bs!834401 () Bool)

(assert (= bs!834401 (and d!1379629 d!1379443)))

(assert (=> bs!834401 (= lambda!168405 lambda!168305)))

(declare-fun bs!834402 () Bool)

(assert (= bs!834402 (and d!1379629 d!1379273)))

(assert (=> bs!834402 (= lambda!168405 lambda!168252)))

(declare-fun bs!834403 () Bool)

(assert (= bs!834403 (and d!1379629 d!1379329)))

(assert (=> bs!834403 (= lambda!168405 lambda!168266)))

(declare-fun bs!834404 () Bool)

(assert (= bs!834404 (and d!1379629 d!1379309)))

(assert (=> bs!834404 (not (= lambda!168405 lambda!168263))))

(declare-fun bs!834405 () Bool)

(assert (= bs!834405 (and d!1379629 d!1379403)))

(assert (=> bs!834405 (= lambda!168405 lambda!168296)))

(declare-fun bs!834406 () Bool)

(assert (= bs!834406 (and d!1379629 d!1379401)))

(assert (=> bs!834406 (= lambda!168405 lambda!168293)))

(declare-fun lt!1679430 () ListMap!3513)

(assert (=> d!1379629 (invariantList!981 (toList!4251 lt!1679430))))

(declare-fun e!2801578 () ListMap!3513)

(assert (=> d!1379629 (= lt!1679430 e!2801578)))

(declare-fun c!766466 () Bool)

(assert (=> d!1379629 (= c!766466 ((_ is Cons!50535) (t!357617 (t!357617 (toList!4252 lm!1477)))))))

(assert (=> d!1379629 (forall!10167 (t!357617 (t!357617 (toList!4252 lm!1477))) lambda!168405)))

(assert (=> d!1379629 (= (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477)))) lt!1679430)))

(declare-fun b!4497625 () Bool)

(assert (=> b!4497625 (= e!2801578 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (t!357617 (t!357617 (toList!4252 lm!1477))))) (extractMap!1178 (t!357617 (t!357617 (t!357617 (toList!4252 lm!1477)))))))))

(declare-fun b!4497626 () Bool)

(assert (=> b!4497626 (= e!2801578 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379629 c!766466) b!4497625))

(assert (= (and d!1379629 (not c!766466)) b!4497626))

(declare-fun m!5226335 () Bool)

(assert (=> d!1379629 m!5226335))

(declare-fun m!5226337 () Bool)

(assert (=> d!1379629 m!5226337))

(declare-fun m!5226339 () Bool)

(assert (=> b!4497625 m!5226339))

(assert (=> b!4497625 m!5226339))

(declare-fun m!5226341 () Bool)

(assert (=> b!4497625 m!5226341))

(assert (=> b!4497125 d!1379629))

(declare-fun d!1379631 () Bool)

(assert (=> d!1379631 (= (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1678892) key!3287)) (not (isEmpty!28592 (getValueByKey!1021 (toList!4251 lt!1678892) key!3287))))))

(declare-fun bs!834407 () Bool)

(assert (= bs!834407 d!1379631))

(assert (=> bs!834407 m!5225727))

(declare-fun m!5226343 () Bool)

(assert (=> bs!834407 m!5226343))

(assert (=> b!4497182 d!1379631))

(declare-fun b!4497630 () Bool)

(declare-fun e!2801580 () Option!11041)

(assert (=> b!4497630 (= e!2801580 None!11040)))

(declare-fun d!1379633 () Bool)

(declare-fun c!766467 () Bool)

(assert (=> d!1379633 (= c!766467 (and ((_ is Cons!50534) (toList!4251 lt!1678892)) (= (_1!28755 (h!56351 (toList!4251 lt!1678892))) key!3287)))))

(declare-fun e!2801579 () Option!11041)

(assert (=> d!1379633 (= (getValueByKey!1021 (toList!4251 lt!1678892) key!3287) e!2801579)))

(declare-fun b!4497628 () Bool)

(assert (=> b!4497628 (= e!2801579 e!2801580)))

(declare-fun c!766468 () Bool)

(assert (=> b!4497628 (= c!766468 (and ((_ is Cons!50534) (toList!4251 lt!1678892)) (not (= (_1!28755 (h!56351 (toList!4251 lt!1678892))) key!3287))))))

(declare-fun b!4497629 () Bool)

(assert (=> b!4497629 (= e!2801580 (getValueByKey!1021 (t!357616 (toList!4251 lt!1678892)) key!3287))))

(declare-fun b!4497627 () Bool)

(assert (=> b!4497627 (= e!2801579 (Some!11040 (_2!28755 (h!56351 (toList!4251 lt!1678892)))))))

(assert (= (and d!1379633 c!766467) b!4497627))

(assert (= (and d!1379633 (not c!766467)) b!4497628))

(assert (= (and b!4497628 c!766468) b!4497629))

(assert (= (and b!4497628 (not c!766468)) b!4497630))

(declare-fun m!5226345 () Bool)

(assert (=> b!4497629 m!5226345))

(assert (=> b!4497182 d!1379633))

(declare-fun d!1379635 () Bool)

(declare-fun lt!1679431 () Bool)

(assert (=> d!1379635 (= lt!1679431 (select (content!8251 (keys!17518 lt!1678891)) key!3287))))

(declare-fun e!2801581 () Bool)

(assert (=> d!1379635 (= lt!1679431 e!2801581)))

(declare-fun res!1869587 () Bool)

(assert (=> d!1379635 (=> (not res!1869587) (not e!2801581))))

(assert (=> d!1379635 (= res!1869587 ((_ is Cons!50537) (keys!17518 lt!1678891)))))

(assert (=> d!1379635 (= (contains!13203 (keys!17518 lt!1678891) key!3287) lt!1679431)))

(declare-fun b!4497631 () Bool)

(declare-fun e!2801582 () Bool)

(assert (=> b!4497631 (= e!2801581 e!2801582)))

(declare-fun res!1869588 () Bool)

(assert (=> b!4497631 (=> res!1869588 e!2801582)))

(assert (=> b!4497631 (= res!1869588 (= (h!56356 (keys!17518 lt!1678891)) key!3287))))

(declare-fun b!4497632 () Bool)

(assert (=> b!4497632 (= e!2801582 (contains!13203 (t!357619 (keys!17518 lt!1678891)) key!3287))))

(assert (= (and d!1379635 res!1869587) b!4497631))

(assert (= (and b!4497631 (not res!1869588)) b!4497632))

(assert (=> d!1379635 m!5225587))

(assert (=> d!1379635 m!5225665))

(declare-fun m!5226347 () Bool)

(assert (=> d!1379635 m!5226347))

(declare-fun m!5226349 () Bool)

(assert (=> b!4497632 m!5226349))

(assert (=> b!4497127 d!1379635))

(assert (=> b!4497127 d!1379549))

(declare-fun d!1379637 () Bool)

(declare-fun c!766469 () Bool)

(assert (=> d!1379637 (= c!766469 ((_ is Nil!50534) (toList!4251 lt!1678892)))))

(declare-fun e!2801583 () (InoxSet tuple2!50922))

(assert (=> d!1379637 (= (content!8250 (toList!4251 lt!1678892)) e!2801583)))

(declare-fun b!4497633 () Bool)

(assert (=> b!4497633 (= e!2801583 ((as const (Array tuple2!50922 Bool)) false))))

(declare-fun b!4497634 () Bool)

(assert (=> b!4497634 (= e!2801583 ((_ map or) (store ((as const (Array tuple2!50922 Bool)) false) (h!56351 (toList!4251 lt!1678892)) true) (content!8250 (t!357616 (toList!4251 lt!1678892)))))))

(assert (= (and d!1379637 c!766469) b!4497633))

(assert (= (and d!1379637 (not c!766469)) b!4497634))

(declare-fun m!5226351 () Bool)

(assert (=> b!4497634 m!5226351))

(declare-fun m!5226353 () Bool)

(assert (=> b!4497634 m!5226353))

(assert (=> d!1379303 d!1379637))

(declare-fun d!1379639 () Bool)

(declare-fun c!766471 () Bool)

(assert (=> d!1379639 (= c!766471 ((_ is Nil!50534) (toList!4251 lt!1678898)))))

(declare-fun e!2801587 () (InoxSet tuple2!50922))

(assert (=> d!1379639 (= (content!8250 (toList!4251 lt!1678898)) e!2801587)))

(declare-fun b!4497640 () Bool)

(assert (=> b!4497640 (= e!2801587 ((as const (Array tuple2!50922 Bool)) false))))

(declare-fun b!4497641 () Bool)

(assert (=> b!4497641 (= e!2801587 ((_ map or) (store ((as const (Array tuple2!50922 Bool)) false) (h!56351 (toList!4251 lt!1678898)) true) (content!8250 (t!357616 (toList!4251 lt!1678898)))))))

(assert (= (and d!1379639 c!766471) b!4497640))

(assert (= (and d!1379639 (not c!766471)) b!4497641))

(declare-fun m!5226355 () Bool)

(assert (=> b!4497641 m!5226355))

(declare-fun m!5226357 () Bool)

(assert (=> b!4497641 m!5226357))

(assert (=> d!1379303 d!1379639))

(declare-fun d!1379641 () Bool)

(declare-fun c!766474 () Bool)

(assert (=> d!1379641 (= c!766474 ((_ is Nil!50535) (toList!4252 lm!1477)))))

(declare-fun e!2801590 () (InoxSet tuple2!50924))

(assert (=> d!1379641 (= (content!8249 (toList!4252 lm!1477)) e!2801590)))

(declare-fun b!4497648 () Bool)

(assert (=> b!4497648 (= e!2801590 ((as const (Array tuple2!50924 Bool)) false))))

(declare-fun b!4497649 () Bool)

(assert (=> b!4497649 (= e!2801590 ((_ map or) (store ((as const (Array tuple2!50924 Bool)) false) (h!56352 (toList!4252 lm!1477)) true) (content!8249 (t!357617 (toList!4252 lm!1477)))))))

(assert (= (and d!1379641 c!766474) b!4497648))

(assert (= (and d!1379641 (not c!766474)) b!4497649))

(declare-fun m!5226359 () Bool)

(assert (=> b!4497649 m!5226359))

(assert (=> b!4497649 m!5225335))

(assert (=> d!1379277 d!1379641))

(declare-fun d!1379643 () Bool)

(assert (=> d!1379643 (= (tail!7662 (toList!4252 lm!1477)) (t!357617 (toList!4252 lm!1477)))))

(assert (=> d!1379417 d!1379643))

(declare-fun d!1379645 () Bool)

(declare-fun res!1869592 () Bool)

(declare-fun e!2801591 () Bool)

(assert (=> d!1379645 (=> res!1869592 e!2801591)))

(assert (=> d!1379645 (= res!1869592 (and ((_ is Cons!50534) (toList!4251 lt!1678892)) (= (_1!28755 (h!56351 (toList!4251 lt!1678892))) key!3287)))))

(assert (=> d!1379645 (= (containsKey!1674 (toList!4251 lt!1678892) key!3287) e!2801591)))

(declare-fun b!4497650 () Bool)

(declare-fun e!2801592 () Bool)

(assert (=> b!4497650 (= e!2801591 e!2801592)))

(declare-fun res!1869593 () Bool)

(assert (=> b!4497650 (=> (not res!1869593) (not e!2801592))))

(assert (=> b!4497650 (= res!1869593 ((_ is Cons!50534) (toList!4251 lt!1678892)))))

(declare-fun b!4497651 () Bool)

(assert (=> b!4497651 (= e!2801592 (containsKey!1674 (t!357616 (toList!4251 lt!1678892)) key!3287))))

(assert (= (and d!1379645 (not res!1869592)) b!4497650))

(assert (= (and b!4497650 res!1869593) b!4497651))

(declare-fun m!5226361 () Bool)

(assert (=> b!4497651 m!5226361))

(assert (=> b!4497175 d!1379645))

(declare-fun d!1379647 () Bool)

(assert (=> d!1379647 (containsKey!1674 (toList!4251 lt!1678892) key!3287)))

(declare-fun lt!1679453 () Unit!91544)

(assert (=> d!1379647 (= lt!1679453 (choose!29085 (toList!4251 lt!1678892) key!3287))))

(assert (=> d!1379647 (invariantList!981 (toList!4251 lt!1678892))))

(assert (=> d!1379647 (= (lemmaInGetKeysListThenContainsKey!428 (toList!4251 lt!1678892) key!3287) lt!1679453)))

(declare-fun bs!834414 () Bool)

(assert (= bs!834414 d!1379647))

(assert (=> bs!834414 m!5225723))

(declare-fun m!5226363 () Bool)

(assert (=> bs!834414 m!5226363))

(declare-fun m!5226365 () Bool)

(assert (=> bs!834414 m!5226365))

(assert (=> b!4497175 d!1379647))

(declare-fun lt!1679454 () Bool)

(declare-fun d!1379649 () Bool)

(assert (=> d!1379649 (= lt!1679454 (select (content!8249 (toList!4252 lm!1477)) (tuple2!50925 hash!344 lt!1678889)))))

(declare-fun e!2801593 () Bool)

(assert (=> d!1379649 (= lt!1679454 e!2801593)))

(declare-fun res!1869595 () Bool)

(assert (=> d!1379649 (=> (not res!1869595) (not e!2801593))))

(assert (=> d!1379649 (= res!1869595 ((_ is Cons!50535) (toList!4252 lm!1477)))))

(assert (=> d!1379649 (= (contains!13201 (toList!4252 lm!1477) (tuple2!50925 hash!344 lt!1678889)) lt!1679454)))

(declare-fun b!4497652 () Bool)

(declare-fun e!2801594 () Bool)

(assert (=> b!4497652 (= e!2801593 e!2801594)))

(declare-fun res!1869594 () Bool)

(assert (=> b!4497652 (=> res!1869594 e!2801594)))

(assert (=> b!4497652 (= res!1869594 (= (h!56352 (toList!4252 lm!1477)) (tuple2!50925 hash!344 lt!1678889)))))

(declare-fun b!4497653 () Bool)

(assert (=> b!4497653 (= e!2801594 (contains!13201 (t!357617 (toList!4252 lm!1477)) (tuple2!50925 hash!344 lt!1678889)))))

(assert (= (and d!1379649 res!1869595) b!4497652))

(assert (= (and b!4497652 (not res!1869594)) b!4497653))

(assert (=> d!1379649 m!5225199))

(declare-fun m!5226367 () Bool)

(assert (=> d!1379649 m!5226367))

(declare-fun m!5226369 () Bool)

(assert (=> b!4497653 m!5226369))

(assert (=> d!1379287 d!1379649))

(declare-fun d!1379651 () Bool)

(assert (=> d!1379651 (contains!13201 (toList!4252 lm!1477) (tuple2!50925 hash!344 lt!1678889))))

(assert (=> d!1379651 true))

(declare-fun _$14!1085 () Unit!91544)

(assert (=> d!1379651 (= (choose!29075 (toList!4252 lm!1477) hash!344 lt!1678889) _$14!1085)))

(declare-fun bs!834415 () Bool)

(assert (= bs!834415 d!1379651))

(assert (=> bs!834415 m!5225231))

(assert (=> d!1379287 d!1379651))

(assert (=> d!1379287 d!1379625))

(declare-fun d!1379653 () Bool)

(assert (=> d!1379653 (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1678892) key!3287))))

(declare-fun lt!1679455 () Unit!91544)

(assert (=> d!1379653 (= lt!1679455 (choose!29087 (toList!4251 lt!1678892) key!3287))))

(assert (=> d!1379653 (invariantList!981 (toList!4251 lt!1678892))))

(assert (=> d!1379653 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 lt!1678892) key!3287) lt!1679455)))

(declare-fun bs!834416 () Bool)

(assert (= bs!834416 d!1379653))

(assert (=> bs!834416 m!5225727))

(assert (=> bs!834416 m!5225727))

(assert (=> bs!834416 m!5225729))

(declare-fun m!5226391 () Bool)

(assert (=> bs!834416 m!5226391))

(assert (=> bs!834416 m!5226365))

(assert (=> b!4497176 d!1379653))

(assert (=> b!4497176 d!1379631))

(assert (=> b!4497176 d!1379633))

(declare-fun d!1379655 () Bool)

(assert (=> d!1379655 (contains!13203 (getKeysList!429 (toList!4251 lt!1678892)) key!3287)))

(declare-fun lt!1679456 () Unit!91544)

(assert (=> d!1379655 (= lt!1679456 (choose!29088 (toList!4251 lt!1678892) key!3287))))

(assert (=> d!1379655 (invariantList!981 (toList!4251 lt!1678892))))

(assert (=> d!1379655 (= (lemmaInListThenGetKeysListContains!425 (toList!4251 lt!1678892) key!3287) lt!1679456)))

(declare-fun bs!834417 () Bool)

(assert (= bs!834417 d!1379655))

(assert (=> bs!834417 m!5225735))

(assert (=> bs!834417 m!5225735))

(declare-fun m!5226401 () Bool)

(assert (=> bs!834417 m!5226401))

(declare-fun m!5226403 () Bool)

(assert (=> bs!834417 m!5226403))

(assert (=> bs!834417 m!5226365))

(assert (=> b!4497176 d!1379655))

(declare-fun d!1379657 () Bool)

(declare-fun res!1869596 () Bool)

(declare-fun e!2801595 () Bool)

(assert (=> d!1379657 (=> res!1869596 e!2801595)))

(assert (=> d!1379657 (= res!1869596 (and ((_ is Cons!50535) (toList!4252 lt!1678893)) (= (_1!28756 (h!56352 (toList!4252 lt!1678893))) hash!344)))))

(assert (=> d!1379657 (= (containsKey!1672 (toList!4252 lt!1678893) hash!344) e!2801595)))

(declare-fun b!4497654 () Bool)

(declare-fun e!2801596 () Bool)

(assert (=> b!4497654 (= e!2801595 e!2801596)))

(declare-fun res!1869597 () Bool)

(assert (=> b!4497654 (=> (not res!1869597) (not e!2801596))))

(assert (=> b!4497654 (= res!1869597 (and (or (not ((_ is Cons!50535) (toList!4252 lt!1678893))) (bvsle (_1!28756 (h!56352 (toList!4252 lt!1678893))) hash!344)) ((_ is Cons!50535) (toList!4252 lt!1678893)) (bvslt (_1!28756 (h!56352 (toList!4252 lt!1678893))) hash!344)))))

(declare-fun b!4497655 () Bool)

(assert (=> b!4497655 (= e!2801596 (containsKey!1672 (t!357617 (toList!4252 lt!1678893)) hash!344))))

(assert (= (and d!1379657 (not res!1869596)) b!4497654))

(assert (= (and b!4497654 res!1869597) b!4497655))

(declare-fun m!5226409 () Bool)

(assert (=> b!4497655 m!5226409))

(assert (=> d!1379415 d!1379657))

(assert (=> d!1379425 d!1379639))

(assert (=> d!1379425 d!1379637))

(declare-fun bs!834418 () Bool)

(declare-fun b!4497659 () Bool)

(assert (= bs!834418 (and b!4497659 b!4497539)))

(declare-fun lambda!168410 () Int)

(assert (=> bs!834418 (= (= (t!357616 (toList!4251 lt!1678892)) (toList!4251 lt!1678892)) (= lambda!168410 lambda!168369))))

(declare-fun bs!834419 () Bool)

(assert (= bs!834419 (and b!4497659 b!4497484)))

(assert (=> bs!834419 (= (= (t!357616 (toList!4251 lt!1678892)) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168410 lambda!168357))))

(declare-fun bs!834421 () Bool)

(assert (= bs!834421 (and b!4497659 b!4497483)))

(assert (=> bs!834421 (= (= (t!357616 (toList!4251 lt!1678892)) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168410 lambda!168358))))

(declare-fun bs!834423 () Bool)

(assert (= bs!834423 (and b!4497659 b!4497489)))

(assert (=> bs!834423 (= (= (t!357616 (toList!4251 lt!1678892)) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168410 lambda!168359))))

(declare-fun bs!834424 () Bool)

(assert (= bs!834424 (and b!4497659 b!4497526)))

(assert (=> bs!834424 (= (= (t!357616 (toList!4251 lt!1678892)) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168410 lambda!168367))))

(declare-fun bs!834426 () Bool)

(assert (= bs!834426 (and b!4497659 b!4497501)))

(assert (=> bs!834426 (= (= (t!357616 (toList!4251 lt!1678892)) (toList!4251 lt!1678891)) (= lambda!168410 lambda!168365))))

(declare-fun bs!834427 () Bool)

(assert (= bs!834427 (and b!4497659 b!4497560)))

(assert (=> bs!834427 (= (= (t!357616 (toList!4251 lt!1678892)) (toList!4251 lt!1679117)) (= lambda!168410 lambda!168371))))

(assert (=> b!4497659 true))

(declare-fun bs!834431 () Bool)

(declare-fun b!4497658 () Bool)

(assert (= bs!834431 (and b!4497658 b!4497539)))

(declare-fun lambda!168413 () Int)

(assert (=> bs!834431 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892))) (toList!4251 lt!1678892)) (= lambda!168413 lambda!168369))))

(declare-fun bs!834432 () Bool)

(assert (= bs!834432 (and b!4497658 b!4497484)))

(assert (=> bs!834432 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168413 lambda!168357))))

(declare-fun bs!834433 () Bool)

(assert (= bs!834433 (and b!4497658 b!4497659)))

(assert (=> bs!834433 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892))) (t!357616 (toList!4251 lt!1678892))) (= lambda!168413 lambda!168410))))

(declare-fun bs!834434 () Bool)

(assert (= bs!834434 (and b!4497658 b!4497483)))

(assert (=> bs!834434 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892))) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168413 lambda!168358))))

(declare-fun bs!834435 () Bool)

(assert (= bs!834435 (and b!4497658 b!4497489)))

(assert (=> bs!834435 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892))) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168413 lambda!168359))))

(declare-fun bs!834436 () Bool)

(assert (= bs!834436 (and b!4497658 b!4497526)))

(assert (=> bs!834436 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892))) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168413 lambda!168367))))

(declare-fun bs!834437 () Bool)

(assert (= bs!834437 (and b!4497658 b!4497501)))

(assert (=> bs!834437 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892))) (toList!4251 lt!1678891)) (= lambda!168413 lambda!168365))))

(declare-fun bs!834438 () Bool)

(assert (= bs!834438 (and b!4497658 b!4497560)))

(assert (=> bs!834438 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892))) (toList!4251 lt!1679117)) (= lambda!168413 lambda!168371))))

(assert (=> b!4497658 true))

(declare-fun bs!834439 () Bool)

(declare-fun b!4497664 () Bool)

(assert (= bs!834439 (and b!4497664 b!4497539)))

(declare-fun lambda!168414 () Int)

(assert (=> bs!834439 (= lambda!168414 lambda!168369)))

(declare-fun bs!834440 () Bool)

(assert (= bs!834440 (and b!4497664 b!4497484)))

(assert (=> bs!834440 (= (= (toList!4251 lt!1678892) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168414 lambda!168357))))

(declare-fun bs!834441 () Bool)

(assert (= bs!834441 (and b!4497664 b!4497659)))

(assert (=> bs!834441 (= (= (toList!4251 lt!1678892) (t!357616 (toList!4251 lt!1678892))) (= lambda!168414 lambda!168410))))

(declare-fun bs!834442 () Bool)

(assert (= bs!834442 (and b!4497664 b!4497658)))

(assert (=> bs!834442 (= (= (toList!4251 lt!1678892) (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892)))) (= lambda!168414 lambda!168413))))

(declare-fun bs!834443 () Bool)

(assert (= bs!834443 (and b!4497664 b!4497483)))

(assert (=> bs!834443 (= (= (toList!4251 lt!1678892) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168414 lambda!168358))))

(declare-fun bs!834444 () Bool)

(assert (= bs!834444 (and b!4497664 b!4497489)))

(assert (=> bs!834444 (= (= (toList!4251 lt!1678892) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168414 lambda!168359))))

(declare-fun bs!834445 () Bool)

(assert (= bs!834445 (and b!4497664 b!4497526)))

(assert (=> bs!834445 (= (= (toList!4251 lt!1678892) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168414 lambda!168367))))

(declare-fun bs!834446 () Bool)

(assert (= bs!834446 (and b!4497664 b!4497501)))

(assert (=> bs!834446 (= (= (toList!4251 lt!1678892) (toList!4251 lt!1678891)) (= lambda!168414 lambda!168365))))

(declare-fun bs!834447 () Bool)

(assert (= bs!834447 (and b!4497664 b!4497560)))

(assert (=> bs!834447 (= (= (toList!4251 lt!1678892) (toList!4251 lt!1679117)) (= lambda!168414 lambda!168371))))

(assert (=> b!4497664 true))

(declare-fun bs!834449 () Bool)

(declare-fun b!4497661 () Bool)

(assert (= bs!834449 (and b!4497661 b!4497561)))

(declare-fun lambda!168416 () Int)

(assert (=> bs!834449 (= lambda!168416 lambda!168372)))

(declare-fun bs!834451 () Bool)

(assert (= bs!834451 (and b!4497661 b!4497486)))

(assert (=> bs!834451 (= lambda!168416 lambda!168360)))

(declare-fun bs!834452 () Bool)

(assert (= bs!834452 (and b!4497661 b!4497540)))

(assert (=> bs!834452 (= lambda!168416 lambda!168370)))

(declare-fun bs!834453 () Bool)

(assert (= bs!834453 (and b!4497661 b!4497502)))

(assert (=> bs!834453 (= lambda!168416 lambda!168366)))

(declare-fun bs!834455 () Bool)

(assert (= bs!834455 (and b!4497661 b!4497527)))

(assert (=> bs!834455 (= lambda!168416 lambda!168368)))

(declare-fun e!2801601 () List!50661)

(assert (=> b!4497658 (= e!2801601 (Cons!50537 (_1!28755 (h!56351 (toList!4251 lt!1678892))) (getKeysList!429 (t!357616 (toList!4251 lt!1678892)))))))

(declare-fun c!766477 () Bool)

(assert (=> b!4497658 (= c!766477 (containsKey!1674 (t!357616 (toList!4251 lt!1678892)) (_1!28755 (h!56351 (toList!4251 lt!1678892)))))))

(declare-fun lt!1679458 () Unit!91544)

(declare-fun e!2801599 () Unit!91544)

(assert (=> b!4497658 (= lt!1679458 e!2801599)))

(declare-fun c!766475 () Bool)

(assert (=> b!4497658 (= c!766475 (contains!13203 (getKeysList!429 (t!357616 (toList!4251 lt!1678892))) (_1!28755 (h!56351 (toList!4251 lt!1678892)))))))

(declare-fun lt!1679460 () Unit!91544)

(declare-fun e!2801600 () Unit!91544)

(assert (=> b!4497658 (= lt!1679460 e!2801600)))

(declare-fun lt!1679459 () List!50661)

(assert (=> b!4497658 (= lt!1679459 (getKeysList!429 (t!357616 (toList!4251 lt!1678892))))))

(declare-fun lt!1679463 () Unit!91544)

(assert (=> b!4497658 (= lt!1679463 (lemmaForallContainsAddHeadPreserves!146 (t!357616 (toList!4251 lt!1678892)) lt!1679459 (h!56351 (toList!4251 lt!1678892))))))

(assert (=> b!4497658 (forall!10170 lt!1679459 lambda!168413)))

(declare-fun lt!1679464 () Unit!91544)

(assert (=> b!4497658 (= lt!1679464 lt!1679463)))

(assert (=> b!4497659 false))

(declare-fun lt!1679461 () Unit!91544)

(assert (=> b!4497659 (= lt!1679461 (forallContained!2423 (getKeysList!429 (t!357616 (toList!4251 lt!1678892))) lambda!168410 (_1!28755 (h!56351 (toList!4251 lt!1678892)))))))

(declare-fun Unit!91631 () Unit!91544)

(assert (=> b!4497659 (= e!2801600 Unit!91631)))

(declare-fun b!4497660 () Bool)

(assert (=> b!4497660 (= e!2801601 Nil!50537)))

(declare-fun e!2801602 () Bool)

(declare-fun lt!1679462 () List!50661)

(assert (=> b!4497661 (= e!2801602 (= (content!8251 lt!1679462) (content!8251 (map!11097 (toList!4251 lt!1678892) lambda!168416))))))

(declare-fun b!4497663 () Bool)

(declare-fun res!1869602 () Bool)

(assert (=> b!4497663 (=> (not res!1869602) (not e!2801602))))

(assert (=> b!4497663 (= res!1869602 (= (length!306 lt!1679462) (length!307 (toList!4251 lt!1678892))))))

(declare-fun res!1869601 () Bool)

(assert (=> b!4497664 (=> (not res!1869601) (not e!2801602))))

(assert (=> b!4497664 (= res!1869601 (forall!10170 lt!1679462 lambda!168414))))

(declare-fun b!4497665 () Bool)

(declare-fun Unit!91633 () Unit!91544)

(assert (=> b!4497665 (= e!2801600 Unit!91633)))

(declare-fun b!4497666 () Bool)

(declare-fun Unit!91634 () Unit!91544)

(assert (=> b!4497666 (= e!2801599 Unit!91634)))

(declare-fun d!1379661 () Bool)

(assert (=> d!1379661 e!2801602))

(declare-fun res!1869600 () Bool)

(assert (=> d!1379661 (=> (not res!1869600) (not e!2801602))))

(assert (=> d!1379661 (= res!1869600 (noDuplicate!725 lt!1679462))))

(assert (=> d!1379661 (= lt!1679462 e!2801601)))

(declare-fun c!766476 () Bool)

(assert (=> d!1379661 (= c!766476 ((_ is Cons!50534) (toList!4251 lt!1678892)))))

(assert (=> d!1379661 (invariantList!981 (toList!4251 lt!1678892))))

(assert (=> d!1379661 (= (getKeysList!429 (toList!4251 lt!1678892)) lt!1679462)))

(declare-fun b!4497662 () Bool)

(assert (=> b!4497662 false))

(declare-fun Unit!91636 () Unit!91544)

(assert (=> b!4497662 (= e!2801599 Unit!91636)))

(assert (= (and d!1379661 c!766476) b!4497658))

(assert (= (and d!1379661 (not c!766476)) b!4497660))

(assert (= (and b!4497658 c!766477) b!4497662))

(assert (= (and b!4497658 (not c!766477)) b!4497666))

(assert (= (and b!4497658 c!766475) b!4497659))

(assert (= (and b!4497658 (not c!766475)) b!4497665))

(assert (= (and d!1379661 res!1869600) b!4497663))

(assert (= (and b!4497663 res!1869602) b!4497664))

(assert (= (and b!4497664 res!1869601) b!4497661))

(declare-fun m!5226441 () Bool)

(assert (=> b!4497659 m!5226441))

(assert (=> b!4497659 m!5226441))

(declare-fun m!5226443 () Bool)

(assert (=> b!4497659 m!5226443))

(declare-fun m!5226445 () Bool)

(assert (=> b!4497664 m!5226445))

(declare-fun m!5226447 () Bool)

(assert (=> b!4497661 m!5226447))

(declare-fun m!5226449 () Bool)

(assert (=> b!4497661 m!5226449))

(assert (=> b!4497661 m!5226449))

(declare-fun m!5226451 () Bool)

(assert (=> b!4497661 m!5226451))

(declare-fun m!5226453 () Bool)

(assert (=> b!4497658 m!5226453))

(declare-fun m!5226455 () Bool)

(assert (=> b!4497658 m!5226455))

(assert (=> b!4497658 m!5226441))

(declare-fun m!5226457 () Bool)

(assert (=> b!4497658 m!5226457))

(assert (=> b!4497658 m!5226441))

(declare-fun m!5226459 () Bool)

(assert (=> b!4497658 m!5226459))

(declare-fun m!5226461 () Bool)

(assert (=> d!1379661 m!5226461))

(assert (=> d!1379661 m!5226365))

(declare-fun m!5226463 () Bool)

(assert (=> b!4497663 m!5226463))

(assert (=> b!4497663 m!5226167))

(assert (=> b!4497178 d!1379661))

(declare-fun b!4497680 () Bool)

(declare-fun e!2801611 () Option!11040)

(declare-fun e!2801612 () Option!11040)

(assert (=> b!4497680 (= e!2801611 e!2801612)))

(declare-fun c!766480 () Bool)

(assert (=> b!4497680 (= c!766480 (and ((_ is Cons!50535) (toList!4252 lt!1679125)) (not (= (_1!28756 (h!56352 (toList!4252 lt!1679125))) (_1!28756 lt!1678886)))))))

(declare-fun b!4497679 () Bool)

(assert (=> b!4497679 (= e!2801611 (Some!11039 (_2!28756 (h!56352 (toList!4252 lt!1679125)))))))

(declare-fun d!1379671 () Bool)

(declare-fun c!766479 () Bool)

(assert (=> d!1379671 (= c!766479 (and ((_ is Cons!50535) (toList!4252 lt!1679125)) (= (_1!28756 (h!56352 (toList!4252 lt!1679125))) (_1!28756 lt!1678886))))))

(assert (=> d!1379671 (= (getValueByKey!1020 (toList!4252 lt!1679125) (_1!28756 lt!1678886)) e!2801611)))

(declare-fun b!4497681 () Bool)

(assert (=> b!4497681 (= e!2801612 (getValueByKey!1020 (t!357617 (toList!4252 lt!1679125)) (_1!28756 lt!1678886)))))

(declare-fun b!4497682 () Bool)

(assert (=> b!4497682 (= e!2801612 None!11039)))

(assert (= (and d!1379671 c!766479) b!4497679))

(assert (= (and d!1379671 (not c!766479)) b!4497680))

(assert (= (and b!4497680 c!766480) b!4497681))

(assert (= (and b!4497680 (not c!766480)) b!4497682))

(declare-fun m!5226465 () Bool)

(assert (=> b!4497681 m!5226465))

(assert (=> b!4497172 d!1379671))

(declare-fun d!1379673 () Bool)

(assert (=> d!1379673 (= (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287)) (not (isEmpty!28592 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287))))))

(declare-fun bs!834462 () Bool)

(assert (= bs!834462 d!1379673))

(assert (=> bs!834462 m!5225595))

(declare-fun m!5226467 () Bool)

(assert (=> bs!834462 m!5226467))

(assert (=> b!4497135 d!1379673))

(declare-fun b!4497686 () Bool)

(declare-fun e!2801614 () Option!11041)

(assert (=> b!4497686 (= e!2801614 None!11040)))

(declare-fun d!1379675 () Bool)

(declare-fun c!766481 () Bool)

(assert (=> d!1379675 (= c!766481 (and ((_ is Cons!50534) (toList!4251 lt!1678891)) (= (_1!28755 (h!56351 (toList!4251 lt!1678891))) key!3287)))))

(declare-fun e!2801613 () Option!11041)

(assert (=> d!1379675 (= (getValueByKey!1021 (toList!4251 lt!1678891) key!3287) e!2801613)))

(declare-fun b!4497684 () Bool)

(assert (=> b!4497684 (= e!2801613 e!2801614)))

(declare-fun c!766482 () Bool)

(assert (=> b!4497684 (= c!766482 (and ((_ is Cons!50534) (toList!4251 lt!1678891)) (not (= (_1!28755 (h!56351 (toList!4251 lt!1678891))) key!3287))))))

(declare-fun b!4497685 () Bool)

(assert (=> b!4497685 (= e!2801614 (getValueByKey!1021 (t!357616 (toList!4251 lt!1678891)) key!3287))))

(declare-fun b!4497683 () Bool)

(assert (=> b!4497683 (= e!2801613 (Some!11040 (_2!28755 (h!56351 (toList!4251 lt!1678891)))))))

(assert (= (and d!1379675 c!766481) b!4497683))

(assert (= (and d!1379675 (not c!766481)) b!4497684))

(assert (= (and b!4497684 c!766482) b!4497685))

(assert (= (and b!4497684 (not c!766482)) b!4497686))

(declare-fun m!5226469 () Bool)

(assert (=> b!4497685 m!5226469))

(assert (=> b!4497135 d!1379675))

(declare-fun b!4497687 () Bool)

(declare-fun e!2801620 () Bool)

(assert (=> b!4497687 (= e!2801620 (not (contains!13203 (keys!17518 lt!1679117) key!3287)))))

(declare-fun b!4497688 () Bool)

(assert (=> b!4497688 false))

(declare-fun lt!1679494 () Unit!91544)

(declare-fun lt!1679491 () Unit!91544)

(assert (=> b!4497688 (= lt!1679494 lt!1679491)))

(assert (=> b!4497688 (containsKey!1674 (toList!4251 lt!1679117) key!3287)))

(assert (=> b!4497688 (= lt!1679491 (lemmaInGetKeysListThenContainsKey!428 (toList!4251 lt!1679117) key!3287))))

(declare-fun e!2801619 () Unit!91544)

(declare-fun Unit!91638 () Unit!91544)

(assert (=> b!4497688 (= e!2801619 Unit!91638)))

(declare-fun b!4497689 () Bool)

(declare-fun e!2801617 () Unit!91544)

(declare-fun lt!1679493 () Unit!91544)

(assert (=> b!4497689 (= e!2801617 lt!1679493)))

(declare-fun lt!1679490 () Unit!91544)

(assert (=> b!4497689 (= lt!1679490 (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 lt!1679117) key!3287))))

(assert (=> b!4497689 (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1679117) key!3287))))

(declare-fun lt!1679492 () Unit!91544)

(assert (=> b!4497689 (= lt!1679492 lt!1679490)))

(assert (=> b!4497689 (= lt!1679493 (lemmaInListThenGetKeysListContains!425 (toList!4251 lt!1679117) key!3287))))

(declare-fun call!313013 () Bool)

(assert (=> b!4497689 call!313013))

(declare-fun b!4497690 () Bool)

(declare-fun Unit!91639 () Unit!91544)

(assert (=> b!4497690 (= e!2801619 Unit!91639)))

(declare-fun b!4497691 () Bool)

(declare-fun e!2801616 () List!50661)

(assert (=> b!4497691 (= e!2801616 (getKeysList!429 (toList!4251 lt!1679117)))))

(declare-fun b!4497692 () Bool)

(assert (=> b!4497692 (= e!2801617 e!2801619)))

(declare-fun c!766485 () Bool)

(assert (=> b!4497692 (= c!766485 call!313013)))

(declare-fun b!4497693 () Bool)

(declare-fun e!2801618 () Bool)

(assert (=> b!4497693 (= e!2801618 (contains!13203 (keys!17518 lt!1679117) key!3287))))

(declare-fun b!4497694 () Bool)

(assert (=> b!4497694 (= e!2801616 (keys!17518 lt!1679117))))

(declare-fun b!4497695 () Bool)

(declare-fun e!2801615 () Bool)

(assert (=> b!4497695 (= e!2801615 e!2801618)))

(declare-fun res!1869613 () Bool)

(assert (=> b!4497695 (=> (not res!1869613) (not e!2801618))))

(assert (=> b!4497695 (= res!1869613 (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1679117) key!3287)))))

(declare-fun d!1379677 () Bool)

(assert (=> d!1379677 e!2801615))

(declare-fun res!1869614 () Bool)

(assert (=> d!1379677 (=> res!1869614 e!2801615)))

(assert (=> d!1379677 (= res!1869614 e!2801620)))

(declare-fun res!1869615 () Bool)

(assert (=> d!1379677 (=> (not res!1869615) (not e!2801620))))

(declare-fun lt!1679496 () Bool)

(assert (=> d!1379677 (= res!1869615 (not lt!1679496))))

(declare-fun lt!1679495 () Bool)

(assert (=> d!1379677 (= lt!1679496 lt!1679495)))

(declare-fun lt!1679489 () Unit!91544)

(assert (=> d!1379677 (= lt!1679489 e!2801617)))

(declare-fun c!766484 () Bool)

(assert (=> d!1379677 (= c!766484 lt!1679495)))

(assert (=> d!1379677 (= lt!1679495 (containsKey!1674 (toList!4251 lt!1679117) key!3287))))

(assert (=> d!1379677 (= (contains!13200 lt!1679117 key!3287) lt!1679496)))

(declare-fun bm!313008 () Bool)

(assert (=> bm!313008 (= call!313013 (contains!13203 e!2801616 key!3287))))

(declare-fun c!766483 () Bool)

(assert (=> bm!313008 (= c!766483 c!766484)))

(assert (= (and d!1379677 c!766484) b!4497689))

(assert (= (and d!1379677 (not c!766484)) b!4497692))

(assert (= (and b!4497692 c!766485) b!4497688))

(assert (= (and b!4497692 (not c!766485)) b!4497690))

(assert (= (or b!4497689 b!4497692) bm!313008))

(assert (= (and bm!313008 c!766483) b!4497691))

(assert (= (and bm!313008 (not c!766483)) b!4497694))

(assert (= (and d!1379677 res!1869615) b!4497687))

(assert (= (and d!1379677 (not res!1869614)) b!4497695))

(assert (= (and b!4497695 res!1869613) b!4497693))

(assert (=> b!4497687 m!5225667))

(assert (=> b!4497687 m!5225667))

(declare-fun m!5226471 () Bool)

(assert (=> b!4497687 m!5226471))

(declare-fun m!5226473 () Bool)

(assert (=> d!1379677 m!5226473))

(assert (=> b!4497693 m!5225667))

(assert (=> b!4497693 m!5225667))

(assert (=> b!4497693 m!5226471))

(assert (=> b!4497694 m!5225667))

(declare-fun m!5226475 () Bool)

(assert (=> b!4497689 m!5226475))

(declare-fun m!5226477 () Bool)

(assert (=> b!4497689 m!5226477))

(assert (=> b!4497689 m!5226477))

(declare-fun m!5226479 () Bool)

(assert (=> b!4497689 m!5226479))

(declare-fun m!5226481 () Bool)

(assert (=> b!4497689 m!5226481))

(assert (=> b!4497695 m!5226477))

(assert (=> b!4497695 m!5226477))

(assert (=> b!4497695 m!5226479))

(assert (=> b!4497688 m!5226473))

(declare-fun m!5226483 () Bool)

(assert (=> b!4497688 m!5226483))

(assert (=> b!4497691 m!5226203))

(declare-fun m!5226485 () Bool)

(assert (=> bm!313008 m!5226485))

(assert (=> d!1379429 d!1379677))

(declare-fun b!4497821 () Bool)

(declare-fun res!1869649 () Bool)

(declare-fun e!2801691 () Bool)

(assert (=> b!4497821 (=> (not res!1869649) (not e!2801691))))

(declare-fun lt!1679570 () List!50658)

(assert (=> b!4497821 (= res!1869649 (= (content!8251 (getKeysList!429 lt!1679570)) ((_ map and) (content!8251 (getKeysList!429 (toList!4251 lt!1678891))) ((_ map not) (store ((as const (Array K!11945 Bool)) false) key!3287 true)))))))

(declare-fun b!4497822 () Bool)

(declare-fun call!313040 () (InoxSet tuple2!50922))

(declare-fun call!313038 () (InoxSet tuple2!50922))

(assert (=> b!4497822 (= call!313040 call!313038)))

(declare-fun e!2801688 () Unit!91544)

(declare-fun Unit!91640 () Unit!91544)

(assert (=> b!4497822 (= e!2801688 Unit!91640)))

(declare-fun bm!313030 () Bool)

(assert (=> bm!313030 (= call!313038 (content!8250 (toList!4251 lt!1678891)))))

(declare-fun bm!313031 () Bool)

(declare-fun call!313036 () (InoxSet tuple2!50922))

(assert (=> bm!313031 (= call!313036 (content!8250 (toList!4251 lt!1678891)))))

(declare-fun b!4497823 () Bool)

(declare-fun res!1869650 () Bool)

(assert (=> b!4497823 (=> (not res!1869650) (not e!2801691))))

(assert (=> b!4497823 (= res!1869650 (not (containsKey!1674 lt!1679570 key!3287)))))

(declare-fun b!4497824 () Bool)

(declare-fun e!2801696 () Unit!91544)

(declare-fun Unit!91641 () Unit!91544)

(assert (=> b!4497824 (= e!2801696 Unit!91641)))

(declare-fun lt!1679578 () V!12191)

(declare-fun get!16513 (Option!11041) V!12191)

(assert (=> b!4497824 (= lt!1679578 (get!16513 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287)))))

(declare-fun lt!1679569 () K!11945)

(assert (=> b!4497824 (= lt!1679569 key!3287)))

(declare-fun lt!1679571 () K!11945)

(assert (=> b!4497824 (= lt!1679571 key!3287)))

(declare-fun lt!1679579 () Unit!91544)

(declare-fun lemmaContainsTupleThenContainsKey!41 (List!50658 K!11945 V!12191) Unit!91544)

(assert (=> b!4497824 (= lt!1679579 (lemmaContainsTupleThenContainsKey!41 (t!357616 (toList!4251 lt!1678891)) lt!1679569 (get!16513 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287))))))

(declare-fun call!313037 () Bool)

(assert (=> b!4497824 call!313037))

(declare-fun lt!1679580 () Unit!91544)

(assert (=> b!4497824 (= lt!1679580 lt!1679579)))

(assert (=> b!4497824 false))

(declare-fun b!4497825 () Bool)

(declare-fun e!2801692 () List!50658)

(assert (=> b!4497825 (= e!2801692 (t!357616 (toList!4251 lt!1678891)))))

(declare-fun b!4497826 () Bool)

(declare-fun lt!1679576 () Unit!91544)

(declare-fun e!2801689 () Unit!91544)

(assert (=> b!4497826 (= lt!1679576 e!2801689)))

(declare-fun c!766537 () Bool)

(assert (=> b!4497826 (= c!766537 call!313037)))

(declare-fun lt!1679564 () Unit!91544)

(declare-fun e!2801690 () Unit!91544)

(assert (=> b!4497826 (= lt!1679564 e!2801690)))

(declare-fun c!766536 () Bool)

(assert (=> b!4497826 (= c!766536 (contains!13203 (getKeysList!429 (t!357616 (toList!4251 lt!1678891))) (_1!28755 (h!56351 (toList!4251 lt!1678891)))))))

(declare-fun lt!1679572 () List!50658)

(declare-fun $colon$colon!892 (List!50658 tuple2!50922) List!50658)

(assert (=> b!4497826 (= lt!1679572 ($colon$colon!892 (removePresrvNoDuplicatedKeys!105 (t!357616 (toList!4251 lt!1678891)) key!3287) (h!56351 (toList!4251 lt!1678891))))))

(declare-fun e!2801694 () List!50658)

(assert (=> b!4497826 (= e!2801694 lt!1679572)))

(declare-fun b!4497827 () Bool)

(assert (=> b!4497827 (= call!313040 ((_ map and) call!313038 ((_ map not) (store ((as const (Array tuple2!50922 Bool)) false) (tuple2!50923 key!3287 (get!16513 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287))) true))))))

(declare-fun lt!1679574 () Unit!91544)

(assert (=> b!4497827 (= lt!1679574 e!2801696)))

(declare-fun c!766535 () Bool)

(declare-fun contains!13205 (List!50658 tuple2!50922) Bool)

(assert (=> b!4497827 (= c!766535 (contains!13205 (t!357616 (toList!4251 lt!1678891)) (tuple2!50923 key!3287 (get!16513 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287)))))))

(declare-fun Unit!91642 () Unit!91544)

(assert (=> b!4497827 (= e!2801688 Unit!91642)))

(declare-fun b!4497829 () Bool)

(declare-fun e!2801693 () List!50658)

(assert (=> b!4497829 (= e!2801693 e!2801694)))

(declare-fun c!766538 () Bool)

(assert (=> b!4497829 (= c!766538 (and ((_ is Cons!50534) (toList!4251 lt!1678891)) (not (= (_1!28755 (h!56351 (toList!4251 lt!1678891))) key!3287))))))

(declare-fun b!4497830 () Bool)

(assert (=> b!4497830 (= e!2801693 (t!357616 (toList!4251 lt!1678891)))))

(declare-fun c!766534 () Bool)

(declare-fun call!313035 () Bool)

(assert (=> b!4497830 (= c!766534 call!313035)))

(declare-fun lt!1679565 () Unit!91544)

(assert (=> b!4497830 (= lt!1679565 e!2801688)))

(declare-fun b!4497831 () Bool)

(declare-fun Unit!91644 () Unit!91544)

(assert (=> b!4497831 (= e!2801689 Unit!91644)))

(declare-fun lt!1679575 () List!50658)

(assert (=> b!4497831 (= lt!1679575 (removePresrvNoDuplicatedKeys!105 (t!357616 (toList!4251 lt!1678891)) key!3287))))

(declare-fun lt!1679567 () Unit!91544)

(assert (=> b!4497831 (= lt!1679567 (lemmaInListThenGetKeysListContains!425 lt!1679575 (_1!28755 (h!56351 (toList!4251 lt!1678891)))))))

(assert (=> b!4497831 (contains!13203 (getKeysList!429 lt!1679575) (_1!28755 (h!56351 (toList!4251 lt!1678891))))))

(declare-fun lt!1679566 () Unit!91544)

(assert (=> b!4497831 (= lt!1679566 lt!1679567)))

(assert (=> b!4497831 false))

(declare-fun b!4497832 () Bool)

(declare-fun Unit!91645 () Unit!91544)

(assert (=> b!4497832 (= e!2801690 Unit!91645)))

(declare-fun lt!1679577 () Unit!91544)

(assert (=> b!4497832 (= lt!1679577 (lemmaInGetKeysListThenContainsKey!428 (t!357616 (toList!4251 lt!1678891)) (_1!28755 (h!56351 (toList!4251 lt!1678891)))))))

(assert (=> b!4497832 call!313035))

(declare-fun lt!1679573 () Unit!91544)

(assert (=> b!4497832 (= lt!1679573 lt!1679577)))

(assert (=> b!4497832 false))

(declare-fun b!4497828 () Bool)

(assert (=> b!4497828 (= e!2801694 Nil!50534)))

(declare-fun d!1379679 () Bool)

(assert (=> d!1379679 e!2801691))

(declare-fun res!1869651 () Bool)

(assert (=> d!1379679 (=> (not res!1869651) (not e!2801691))))

(assert (=> d!1379679 (= res!1869651 (invariantList!981 lt!1679570))))

(assert (=> d!1379679 (= lt!1679570 e!2801693)))

(declare-fun c!766539 () Bool)

(assert (=> d!1379679 (= c!766539 (and ((_ is Cons!50534) (toList!4251 lt!1678891)) (= (_1!28755 (h!56351 (toList!4251 lt!1678891))) key!3287)))))

(assert (=> d!1379679 (invariantList!981 (toList!4251 lt!1678891))))

(assert (=> d!1379679 (= (removePresrvNoDuplicatedKeys!105 (toList!4251 lt!1678891) key!3287) lt!1679570)))

(declare-fun b!4497833 () Bool)

(declare-fun e!2801695 () Bool)

(declare-fun call!313039 () (InoxSet tuple2!50922))

(assert (=> b!4497833 (= e!2801695 (= call!313039 call!313036))))

(declare-fun bm!313032 () Bool)

(assert (=> bm!313032 (= call!313039 (content!8250 lt!1679570))))

(declare-fun bm!313033 () Bool)

(assert (=> bm!313033 (= call!313035 (containsKey!1674 (ite c!766539 (toList!4251 lt!1678891) (t!357616 (toList!4251 lt!1678891))) (ite c!766539 key!3287 (_1!28755 (h!56351 (toList!4251 lt!1678891))))))))

(declare-fun b!4497834 () Bool)

(declare-fun Unit!91646 () Unit!91544)

(assert (=> b!4497834 (= e!2801689 Unit!91646)))

(declare-fun b!4497835 () Bool)

(assert (=> b!4497835 (= e!2801691 e!2801695)))

(declare-fun c!766532 () Bool)

(assert (=> b!4497835 (= c!766532 (containsKey!1674 (toList!4251 lt!1678891) key!3287))))

(declare-fun b!4497836 () Bool)

(declare-fun Unit!91647 () Unit!91544)

(assert (=> b!4497836 (= e!2801696 Unit!91647)))

(declare-fun b!4497837 () Bool)

(declare-fun Unit!91648 () Unit!91544)

(assert (=> b!4497837 (= e!2801690 Unit!91648)))

(declare-fun b!4497838 () Bool)

(assert (=> b!4497838 (= e!2801692 (removePresrvNoDuplicatedKeys!105 (t!357616 (toList!4251 lt!1678891)) key!3287))))

(declare-fun bm!313034 () Bool)

(assert (=> bm!313034 (= call!313040 (content!8250 (t!357616 (toList!4251 lt!1678891))))))

(declare-fun bm!313035 () Bool)

(assert (=> bm!313035 (= call!313037 (containsKey!1674 e!2801692 (ite c!766539 lt!1679569 (_1!28755 (h!56351 (toList!4251 lt!1678891))))))))

(declare-fun c!766533 () Bool)

(assert (=> bm!313035 (= c!766533 c!766539)))

(declare-fun b!4497839 () Bool)

(assert (=> b!4497839 (= e!2801695 (= call!313039 ((_ map and) call!313036 ((_ map not) (store ((as const (Array tuple2!50922 Bool)) false) (tuple2!50923 key!3287 (get!16513 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287))) true)))))))

(assert (=> b!4497839 (containsKey!1674 (toList!4251 lt!1678891) key!3287)))

(declare-fun lt!1679568 () Unit!91544)

(assert (=> b!4497839 (= lt!1679568 (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 lt!1678891) key!3287))))

(assert (=> b!4497839 (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287))))

(declare-fun lt!1679581 () Unit!91544)

(assert (=> b!4497839 (= lt!1679581 lt!1679568)))

(assert (= (and d!1379679 c!766539) b!4497830))

(assert (= (and d!1379679 (not c!766539)) b!4497829))

(assert (= (and b!4497830 c!766534) b!4497827))

(assert (= (and b!4497830 (not c!766534)) b!4497822))

(assert (= (and b!4497827 c!766535) b!4497824))

(assert (= (and b!4497827 (not c!766535)) b!4497836))

(assert (= (or b!4497827 b!4497822) bm!313034))

(assert (= (or b!4497827 b!4497822) bm!313030))

(assert (= (and b!4497829 c!766538) b!4497826))

(assert (= (and b!4497829 (not c!766538)) b!4497828))

(assert (= (and b!4497826 c!766536) b!4497832))

(assert (= (and b!4497826 (not c!766536)) b!4497837))

(assert (= (and b!4497826 c!766537) b!4497831))

(assert (= (and b!4497826 (not c!766537)) b!4497834))

(assert (= (or b!4497830 b!4497832) bm!313033))

(assert (= (or b!4497824 b!4497826) bm!313035))

(assert (= (and bm!313035 c!766533) b!4497825))

(assert (= (and bm!313035 (not c!766533)) b!4497838))

(assert (= (and d!1379679 res!1869651) b!4497823))

(assert (= (and b!4497823 res!1869650) b!4497821))

(assert (= (and b!4497821 res!1869649) b!4497835))

(assert (= (and b!4497835 c!766532) b!4497839))

(assert (= (and b!4497835 (not c!766532)) b!4497833))

(assert (= (or b!4497839 b!4497833) bm!313032))

(assert (= (or b!4497839 b!4497833) bm!313031))

(declare-fun m!5226589 () Bool)

(assert (=> b!4497823 m!5226589))

(declare-fun m!5226591 () Bool)

(assert (=> bm!313033 m!5226591))

(declare-fun m!5226593 () Bool)

(assert (=> b!4497826 m!5226593))

(assert (=> b!4497826 m!5226593))

(declare-fun m!5226595 () Bool)

(assert (=> b!4497826 m!5226595))

(declare-fun m!5226597 () Bool)

(assert (=> b!4497826 m!5226597))

(assert (=> b!4497826 m!5226597))

(declare-fun m!5226599 () Bool)

(assert (=> b!4497826 m!5226599))

(declare-fun m!5226601 () Bool)

(assert (=> b!4497832 m!5226601))

(declare-fun m!5226603 () Bool)

(assert (=> bm!313031 m!5226603))

(assert (=> b!4497824 m!5225595))

(assert (=> b!4497824 m!5225595))

(declare-fun m!5226605 () Bool)

(assert (=> b!4497824 m!5226605))

(assert (=> b!4497824 m!5226605))

(declare-fun m!5226607 () Bool)

(assert (=> b!4497824 m!5226607))

(assert (=> b!4497839 m!5225591))

(declare-fun m!5226609 () Bool)

(assert (=> b!4497839 m!5226609))

(assert (=> b!4497839 m!5225595))

(assert (=> b!4497839 m!5225597))

(assert (=> b!4497839 m!5225593))

(assert (=> b!4497839 m!5225595))

(assert (=> b!4497839 m!5225595))

(assert (=> b!4497839 m!5226605))

(declare-fun m!5226611 () Bool)

(assert (=> d!1379679 m!5226611))

(declare-fun m!5226613 () Bool)

(assert (=> d!1379679 m!5226613))

(assert (=> bm!313030 m!5226603))

(declare-fun m!5226615 () Bool)

(assert (=> bm!313032 m!5226615))

(declare-fun m!5226617 () Bool)

(assert (=> bm!313035 m!5226617))

(assert (=> b!4497821 m!5225603))

(declare-fun m!5226619 () Bool)

(assert (=> b!4497821 m!5226619))

(assert (=> b!4497821 m!5225671))

(assert (=> b!4497821 m!5225603))

(declare-fun m!5226621 () Bool)

(assert (=> b!4497821 m!5226621))

(assert (=> b!4497821 m!5226621))

(declare-fun m!5226623 () Bool)

(assert (=> b!4497821 m!5226623))

(assert (=> b!4497831 m!5226597))

(declare-fun m!5226625 () Bool)

(assert (=> b!4497831 m!5226625))

(declare-fun m!5226627 () Bool)

(assert (=> b!4497831 m!5226627))

(assert (=> b!4497831 m!5226627))

(declare-fun m!5226629 () Bool)

(assert (=> b!4497831 m!5226629))

(assert (=> b!4497838 m!5226597))

(assert (=> b!4497827 m!5225595))

(assert (=> b!4497827 m!5225595))

(assert (=> b!4497827 m!5226605))

(assert (=> b!4497827 m!5226609))

(declare-fun m!5226631 () Bool)

(assert (=> b!4497827 m!5226631))

(assert (=> b!4497835 m!5225591))

(declare-fun m!5226633 () Bool)

(assert (=> bm!313034 m!5226633))

(assert (=> d!1379429 d!1379679))

(assert (=> b!4497133 d!1379635))

(assert (=> b!4497133 d!1379549))

(declare-fun d!1379725 () Bool)

(assert (=> d!1379725 (= (invariantList!981 (toList!4251 lt!1679114)) (noDuplicatedKeys!240 (toList!4251 lt!1679114)))))

(declare-fun bs!834491 () Bool)

(assert (= bs!834491 d!1379725))

(declare-fun m!5226635 () Bool)

(assert (=> bs!834491 m!5226635))

(assert (=> d!1379421 d!1379725))

(declare-fun d!1379727 () Bool)

(declare-fun res!1869655 () Bool)

(declare-fun e!2801701 () Bool)

(assert (=> d!1379727 (=> res!1869655 e!2801701)))

(assert (=> d!1379727 (= res!1869655 ((_ is Nil!50535) (toList!4252 lt!1678896)))))

(assert (=> d!1379727 (= (forall!10167 (toList!4252 lt!1678896) lambda!168300) e!2801701)))

(declare-fun b!4497851 () Bool)

(declare-fun e!2801702 () Bool)

(assert (=> b!4497851 (= e!2801701 e!2801702)))

(declare-fun res!1869656 () Bool)

(assert (=> b!4497851 (=> (not res!1869656) (not e!2801702))))

(assert (=> b!4497851 (= res!1869656 (dynLambda!21101 lambda!168300 (h!56352 (toList!4252 lt!1678896))))))

(declare-fun b!4497852 () Bool)

(assert (=> b!4497852 (= e!2801702 (forall!10167 (t!357617 (toList!4252 lt!1678896)) lambda!168300))))

(assert (= (and d!1379727 (not res!1869655)) b!4497851))

(assert (= (and b!4497851 res!1869656) b!4497852))

(declare-fun b_lambda!152085 () Bool)

(assert (=> (not b_lambda!152085) (not b!4497851)))

(declare-fun m!5226637 () Bool)

(assert (=> b!4497851 m!5226637))

(declare-fun m!5226639 () Bool)

(assert (=> b!4497852 m!5226639))

(assert (=> d!1379421 d!1379727))

(assert (=> b!4497123 d!1379561))

(assert (=> d!1379441 d!1379645))

(declare-fun bs!834502 () Bool)

(declare-fun b!4497855 () Bool)

(assert (= bs!834502 (and b!4497855 d!1379503)))

(declare-fun lambda!168432 () Int)

(assert (=> bs!834502 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679300) (= lambda!168432 lambda!168347))))

(declare-fun bs!834504 () Bool)

(assert (= bs!834504 (and b!4497855 d!1379411)))

(assert (=> bs!834504 (not (= lambda!168432 lambda!168299))))

(declare-fun bs!834505 () Bool)

(assert (= bs!834505 (and b!4497855 b!4497455)))

(assert (=> bs!834505 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168432 lambda!168345))))

(declare-fun bs!834507 () Bool)

(assert (= bs!834507 (and b!4497855 b!4497456)))

(assert (=> bs!834507 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168432 lambda!168344))))

(declare-fun bs!834509 () Bool)

(assert (= bs!834509 (and b!4497855 b!4497617)))

(assert (=> bs!834509 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679421) (= lambda!168432 lambda!168399))))

(assert (=> bs!834505 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679301) (= lambda!168432 lambda!168346))))

(declare-fun bs!834512 () Bool)

(assert (= bs!834512 (and b!4497855 b!4497618)))

(assert (=> bs!834512 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168432 lambda!168397))))

(assert (=> bs!834509 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168432 lambda!168398))))

(declare-fun bs!834513 () Bool)

(assert (= bs!834513 (and b!4497855 d!1379627)))

(assert (=> bs!834513 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679420) (= lambda!168432 lambda!168402))))

(assert (=> b!4497855 true))

(declare-fun bs!834514 () Bool)

(declare-fun b!4497854 () Bool)

(assert (= bs!834514 (and b!4497854 d!1379503)))

(declare-fun lambda!168434 () Int)

(assert (=> bs!834514 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679300) (= lambda!168434 lambda!168347))))

(declare-fun bs!834515 () Bool)

(assert (= bs!834515 (and b!4497854 b!4497455)))

(assert (=> bs!834515 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168434 lambda!168345))))

(declare-fun bs!834516 () Bool)

(assert (= bs!834516 (and b!4497854 b!4497456)))

(assert (=> bs!834516 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168434 lambda!168344))))

(declare-fun bs!834517 () Bool)

(assert (= bs!834517 (and b!4497854 b!4497617)))

(assert (=> bs!834517 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679421) (= lambda!168434 lambda!168399))))

(assert (=> bs!834515 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679301) (= lambda!168434 lambda!168346))))

(declare-fun bs!834518 () Bool)

(assert (= bs!834518 (and b!4497854 b!4497618)))

(assert (=> bs!834518 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168434 lambda!168397))))

(assert (=> bs!834517 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168434 lambda!168398))))

(declare-fun bs!834519 () Bool)

(assert (= bs!834519 (and b!4497854 d!1379627)))

(assert (=> bs!834519 (= (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679420) (= lambda!168434 lambda!168402))))

(declare-fun bs!834520 () Bool)

(assert (= bs!834520 (and b!4497854 d!1379411)))

(assert (=> bs!834520 (not (= lambda!168434 lambda!168299))))

(declare-fun bs!834521 () Bool)

(assert (= bs!834521 (and b!4497854 b!4497855)))

(assert (=> bs!834521 (= lambda!168434 lambda!168432)))

(assert (=> b!4497854 true))

(declare-fun lambda!168435 () Int)

(declare-fun lt!1679601 () ListMap!3513)

(assert (=> bs!834514 (= (= lt!1679601 lt!1679300) (= lambda!168435 lambda!168347))))

(assert (=> bs!834515 (= (= lt!1679601 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168435 lambda!168345))))

(assert (=> bs!834516 (= (= lt!1679601 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168435 lambda!168344))))

(assert (=> b!4497854 (= (= lt!1679601 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168435 lambda!168434))))

(assert (=> bs!834517 (= (= lt!1679601 lt!1679421) (= lambda!168435 lambda!168399))))

(assert (=> bs!834515 (= (= lt!1679601 lt!1679301) (= lambda!168435 lambda!168346))))

(assert (=> bs!834518 (= (= lt!1679601 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168435 lambda!168397))))

(assert (=> bs!834517 (= (= lt!1679601 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168435 lambda!168398))))

(assert (=> bs!834519 (= (= lt!1679601 lt!1679420) (= lambda!168435 lambda!168402))))

(assert (=> bs!834520 (not (= lambda!168435 lambda!168299))))

(assert (=> bs!834521 (= (= lt!1679601 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168435 lambda!168432))))

(assert (=> b!4497854 true))

(declare-fun bs!834522 () Bool)

(declare-fun d!1379729 () Bool)

(assert (= bs!834522 (and d!1379729 d!1379503)))

(declare-fun lt!1679600 () ListMap!3513)

(declare-fun lambda!168436 () Int)

(assert (=> bs!834522 (= (= lt!1679600 lt!1679300) (= lambda!168436 lambda!168347))))

(declare-fun bs!834523 () Bool)

(assert (= bs!834523 (and d!1379729 b!4497456)))

(assert (=> bs!834523 (= (= lt!1679600 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168436 lambda!168344))))

(declare-fun bs!834524 () Bool)

(assert (= bs!834524 (and d!1379729 b!4497854)))

(assert (=> bs!834524 (= (= lt!1679600 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168436 lambda!168434))))

(declare-fun bs!834525 () Bool)

(assert (= bs!834525 (and d!1379729 b!4497617)))

(assert (=> bs!834525 (= (= lt!1679600 lt!1679421) (= lambda!168436 lambda!168399))))

(declare-fun bs!834526 () Bool)

(assert (= bs!834526 (and d!1379729 b!4497455)))

(assert (=> bs!834526 (= (= lt!1679600 lt!1679301) (= lambda!168436 lambda!168346))))

(declare-fun bs!834527 () Bool)

(assert (= bs!834527 (and d!1379729 b!4497618)))

(assert (=> bs!834527 (= (= lt!1679600 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168436 lambda!168397))))

(assert (=> bs!834525 (= (= lt!1679600 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168436 lambda!168398))))

(declare-fun bs!834528 () Bool)

(assert (= bs!834528 (and d!1379729 d!1379627)))

(assert (=> bs!834528 (= (= lt!1679600 lt!1679420) (= lambda!168436 lambda!168402))))

(declare-fun bs!834529 () Bool)

(assert (= bs!834529 (and d!1379729 d!1379411)))

(assert (=> bs!834529 (not (= lambda!168436 lambda!168299))))

(declare-fun bs!834530 () Bool)

(assert (= bs!834530 (and d!1379729 b!4497855)))

(assert (=> bs!834530 (= (= lt!1679600 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168436 lambda!168432))))

(assert (=> bs!834526 (= (= lt!1679600 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168436 lambda!168345))))

(assert (=> bs!834524 (= (= lt!1679600 lt!1679601) (= lambda!168436 lambda!168435))))

(assert (=> d!1379729 true))

(declare-fun bm!313036 () Bool)

(declare-fun call!313042 () Unit!91544)

(assert (=> bm!313036 (= call!313042 (lemmaContainsAllItsOwnKeys!303 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))))))

(declare-fun b!4497853 () Bool)

(declare-fun res!1869659 () Bool)

(declare-fun e!2801704 () Bool)

(assert (=> b!4497853 (=> (not res!1869659) (not e!2801704))))

(assert (=> b!4497853 (= res!1869659 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) lambda!168436))))

(declare-fun e!2801705 () ListMap!3513)

(assert (=> b!4497854 (= e!2801705 lt!1679601)))

(declare-fun lt!1679602 () ListMap!3513)

(assert (=> b!4497854 (= lt!1679602 (+!1467 (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678896))))))))

(assert (=> b!4497854 (= lt!1679601 (addToMapMapFromBucket!649 (t!357616 (_2!28756 (h!56352 (toList!4252 lt!1678896)))) (+!1467 (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678896)))))))))

(declare-fun lt!1679591 () Unit!91544)

(assert (=> b!4497854 (= lt!1679591 call!313042)))

(assert (=> b!4497854 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) lambda!168434)))

(declare-fun lt!1679595 () Unit!91544)

(assert (=> b!4497854 (= lt!1679595 lt!1679591)))

(assert (=> b!4497854 (forall!10169 (toList!4251 lt!1679602) lambda!168435)))

(declare-fun lt!1679590 () Unit!91544)

(declare-fun Unit!91649 () Unit!91544)

(assert (=> b!4497854 (= lt!1679590 Unit!91649)))

(declare-fun call!313041 () Bool)

(assert (=> b!4497854 call!313041))

(declare-fun lt!1679597 () Unit!91544)

(declare-fun Unit!91650 () Unit!91544)

(assert (=> b!4497854 (= lt!1679597 Unit!91650)))

(declare-fun lt!1679606 () Unit!91544)

(declare-fun Unit!91651 () Unit!91544)

(assert (=> b!4497854 (= lt!1679606 Unit!91651)))

(declare-fun lt!1679592 () Unit!91544)

(assert (=> b!4497854 (= lt!1679592 (forallContained!2422 (toList!4251 lt!1679602) lambda!168435 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678896))))))))

(assert (=> b!4497854 (contains!13200 lt!1679602 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678896))))))))

(declare-fun lt!1679596 () Unit!91544)

(declare-fun Unit!91652 () Unit!91544)

(assert (=> b!4497854 (= lt!1679596 Unit!91652)))

(assert (=> b!4497854 (contains!13200 lt!1679601 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678896))))))))

(declare-fun lt!1679598 () Unit!91544)

(declare-fun Unit!91653 () Unit!91544)

(assert (=> b!4497854 (= lt!1679598 Unit!91653)))

(declare-fun call!313043 () Bool)

(assert (=> b!4497854 call!313043))

(declare-fun lt!1679604 () Unit!91544)

(declare-fun Unit!91654 () Unit!91544)

(assert (=> b!4497854 (= lt!1679604 Unit!91654)))

(assert (=> b!4497854 (forall!10169 (toList!4251 lt!1679602) lambda!168435)))

(declare-fun lt!1679589 () Unit!91544)

(declare-fun Unit!91655 () Unit!91544)

(assert (=> b!4497854 (= lt!1679589 Unit!91655)))

(declare-fun lt!1679593 () Unit!91544)

(declare-fun Unit!91656 () Unit!91544)

(assert (=> b!4497854 (= lt!1679593 Unit!91656)))

(declare-fun lt!1679599 () Unit!91544)

(assert (=> b!4497854 (= lt!1679599 (addForallContainsKeyThenBeforeAdding!303 (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679601 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678896))))) (_2!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lt!1678896)))))))))

(assert (=> b!4497854 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) lambda!168435)))

(declare-fun lt!1679608 () Unit!91544)

(assert (=> b!4497854 (= lt!1679608 lt!1679599)))

(assert (=> b!4497854 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) lambda!168435)))

(declare-fun lt!1679594 () Unit!91544)

(declare-fun Unit!91657 () Unit!91544)

(assert (=> b!4497854 (= lt!1679594 Unit!91657)))

(declare-fun res!1869658 () Bool)

(assert (=> b!4497854 (= res!1869658 (forall!10169 (_2!28756 (h!56352 (toList!4252 lt!1678896))) lambda!168435))))

(declare-fun e!2801703 () Bool)

(assert (=> b!4497854 (=> (not res!1869658) (not e!2801703))))

(assert (=> b!4497854 e!2801703))

(declare-fun lt!1679609 () Unit!91544)

(declare-fun Unit!91658 () Unit!91544)

(assert (=> b!4497854 (= lt!1679609 Unit!91658)))

(declare-fun c!766543 () Bool)

(declare-fun bm!313037 () Bool)

(assert (=> bm!313037 (= call!313041 (forall!10169 (ite c!766543 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (t!357616 (_2!28756 (h!56352 (toList!4252 lt!1678896))))) (ite c!766543 lambda!168432 lambda!168435)))))

(assert (=> b!4497855 (= e!2801705 (extractMap!1178 (t!357617 (toList!4252 lt!1678896))))))

(declare-fun lt!1679607 () Unit!91544)

(assert (=> b!4497855 (= lt!1679607 call!313042)))

(assert (=> b!4497855 call!313041))

(declare-fun lt!1679603 () Unit!91544)

(assert (=> b!4497855 (= lt!1679603 lt!1679607)))

(assert (=> b!4497855 call!313043))

(declare-fun lt!1679605 () Unit!91544)

(declare-fun Unit!91659 () Unit!91544)

(assert (=> b!4497855 (= lt!1679605 Unit!91659)))

(declare-fun bm!313038 () Bool)

(assert (=> bm!313038 (= call!313043 (forall!10169 (ite c!766543 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (_2!28756 (h!56352 (toList!4252 lt!1678896)))) (ite c!766543 lambda!168432 lambda!168435)))))

(assert (=> d!1379729 e!2801704))

(declare-fun res!1869657 () Bool)

(assert (=> d!1379729 (=> (not res!1869657) (not e!2801704))))

(assert (=> d!1379729 (= res!1869657 (forall!10169 (_2!28756 (h!56352 (toList!4252 lt!1678896))) lambda!168436))))

(assert (=> d!1379729 (= lt!1679600 e!2801705)))

(assert (=> d!1379729 (= c!766543 ((_ is Nil!50534) (_2!28756 (h!56352 (toList!4252 lt!1678896)))))))

(assert (=> d!1379729 (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lt!1678896))))))

(assert (=> d!1379729 (= (addToMapMapFromBucket!649 (_2!28756 (h!56352 (toList!4252 lt!1678896))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) lt!1679600)))

(declare-fun b!4497856 () Bool)

(assert (=> b!4497856 (= e!2801704 (invariantList!981 (toList!4251 lt!1679600)))))

(declare-fun b!4497857 () Bool)

(assert (=> b!4497857 (= e!2801703 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) lambda!168435))))

(assert (= (and d!1379729 c!766543) b!4497855))

(assert (= (and d!1379729 (not c!766543)) b!4497854))

(assert (= (and b!4497854 res!1869658) b!4497857))

(assert (= (or b!4497855 b!4497854) bm!313038))

(assert (= (or b!4497855 b!4497854) bm!313037))

(assert (= (or b!4497855 b!4497854) bm!313036))

(assert (= (and d!1379729 res!1869657) b!4497853))

(assert (= (and b!4497853 res!1869659) b!4497856))

(declare-fun m!5226671 () Bool)

(assert (=> b!4497853 m!5226671))

(declare-fun m!5226673 () Bool)

(assert (=> d!1379729 m!5226673))

(declare-fun m!5226675 () Bool)

(assert (=> d!1379729 m!5226675))

(assert (=> bm!313036 m!5225651))

(declare-fun m!5226677 () Bool)

(assert (=> bm!313036 m!5226677))

(declare-fun m!5226679 () Bool)

(assert (=> bm!313038 m!5226679))

(declare-fun m!5226681 () Bool)

(assert (=> b!4497857 m!5226681))

(declare-fun m!5226683 () Bool)

(assert (=> bm!313037 m!5226683))

(declare-fun m!5226685 () Bool)

(assert (=> b!4497856 m!5226685))

(declare-fun m!5226687 () Bool)

(assert (=> b!4497854 m!5226687))

(declare-fun m!5226689 () Bool)

(assert (=> b!4497854 m!5226689))

(declare-fun m!5226691 () Bool)

(assert (=> b!4497854 m!5226691))

(assert (=> b!4497854 m!5225651))

(assert (=> b!4497854 m!5226689))

(declare-fun m!5226695 () Bool)

(assert (=> b!4497854 m!5226695))

(declare-fun m!5226697 () Bool)

(assert (=> b!4497854 m!5226697))

(assert (=> b!4497854 m!5226687))

(assert (=> b!4497854 m!5225651))

(declare-fun m!5226699 () Bool)

(assert (=> b!4497854 m!5226699))

(declare-fun m!5226701 () Bool)

(assert (=> b!4497854 m!5226701))

(declare-fun m!5226703 () Bool)

(assert (=> b!4497854 m!5226703))

(declare-fun m!5226705 () Bool)

(assert (=> b!4497854 m!5226705))

(assert (=> b!4497854 m!5226681))

(assert (=> b!4497854 m!5226681))

(assert (=> b!4497163 d!1379729))

(declare-fun bs!834531 () Bool)

(declare-fun d!1379739 () Bool)

(assert (= bs!834531 (and d!1379739 d!1379543)))

(declare-fun lambda!168437 () Int)

(assert (=> bs!834531 (= lambda!168437 lambda!168348)))

(declare-fun bs!834532 () Bool)

(assert (= bs!834532 (and d!1379739 d!1379333)))

(assert (=> bs!834532 (= lambda!168437 lambda!168275)))

(declare-fun bs!834533 () Bool)

(assert (= bs!834533 (and d!1379739 start!443724)))

(assert (=> bs!834533 (= lambda!168437 lambda!168249)))

(declare-fun bs!834534 () Bool)

(assert (= bs!834534 (and d!1379739 d!1379629)))

(assert (=> bs!834534 (= lambda!168437 lambda!168405)))

(declare-fun bs!834535 () Bool)

(assert (= bs!834535 (and d!1379739 d!1379433)))

(assert (=> bs!834535 (= lambda!168437 lambda!168301)))

(declare-fun bs!834536 () Bool)

(assert (= bs!834536 (and d!1379739 d!1379421)))

(assert (=> bs!834536 (= lambda!168437 lambda!168300)))

(declare-fun bs!834537 () Bool)

(assert (= bs!834537 (and d!1379739 d!1379355)))

(assert (=> bs!834537 (= lambda!168437 lambda!168282)))

(declare-fun bs!834538 () Bool)

(assert (= bs!834538 (and d!1379739 d!1379437)))

(assert (=> bs!834538 (= lambda!168437 lambda!168304)))

(declare-fun bs!834539 () Bool)

(assert (= bs!834539 (and d!1379739 d!1379443)))

(assert (=> bs!834539 (= lambda!168437 lambda!168305)))

(declare-fun bs!834540 () Bool)

(assert (= bs!834540 (and d!1379739 d!1379273)))

(assert (=> bs!834540 (= lambda!168437 lambda!168252)))

(declare-fun bs!834541 () Bool)

(assert (= bs!834541 (and d!1379739 d!1379329)))

(assert (=> bs!834541 (= lambda!168437 lambda!168266)))

(declare-fun bs!834542 () Bool)

(assert (= bs!834542 (and d!1379739 d!1379309)))

(assert (=> bs!834542 (not (= lambda!168437 lambda!168263))))

(declare-fun bs!834544 () Bool)

(assert (= bs!834544 (and d!1379739 d!1379403)))

(assert (=> bs!834544 (= lambda!168437 lambda!168296)))

(declare-fun bs!834545 () Bool)

(assert (= bs!834545 (and d!1379739 d!1379401)))

(assert (=> bs!834545 (= lambda!168437 lambda!168293)))

(declare-fun lt!1679611 () ListMap!3513)

(assert (=> d!1379739 (invariantList!981 (toList!4251 lt!1679611))))

(declare-fun e!2801719 () ListMap!3513)

(assert (=> d!1379739 (= lt!1679611 e!2801719)))

(declare-fun c!766551 () Bool)

(assert (=> d!1379739 (= c!766551 ((_ is Cons!50535) (t!357617 (toList!4252 lt!1678896))))))

(assert (=> d!1379739 (forall!10167 (t!357617 (toList!4252 lt!1678896)) lambda!168437)))

(assert (=> d!1379739 (= (extractMap!1178 (t!357617 (toList!4252 lt!1678896))) lt!1679611)))

(declare-fun b!4497878 () Bool)

(assert (=> b!4497878 (= e!2801719 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (t!357617 (toList!4252 lt!1678896)))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lt!1678896))))))))

(declare-fun b!4497879 () Bool)

(assert (=> b!4497879 (= e!2801719 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379739 c!766551) b!4497878))

(assert (= (and d!1379739 (not c!766551)) b!4497879))

(declare-fun m!5226731 () Bool)

(assert (=> d!1379739 m!5226731))

(declare-fun m!5226733 () Bool)

(assert (=> d!1379739 m!5226733))

(declare-fun m!5226735 () Bool)

(assert (=> b!4497878 m!5226735))

(assert (=> b!4497878 m!5226735))

(declare-fun m!5226737 () Bool)

(assert (=> b!4497878 m!5226737))

(assert (=> b!4497163 d!1379739))

(declare-fun d!1379753 () Bool)

(declare-fun c!766555 () Bool)

(assert (=> d!1379753 (= c!766555 ((_ is Nil!50535) (t!357617 (toList!4252 lm!1477))))))

(declare-fun e!2801728 () (InoxSet tuple2!50924))

(assert (=> d!1379753 (= (content!8249 (t!357617 (toList!4252 lm!1477))) e!2801728)))

(declare-fun b!4497891 () Bool)

(assert (=> b!4497891 (= e!2801728 ((as const (Array tuple2!50924 Bool)) false))))

(declare-fun b!4497892 () Bool)

(assert (=> b!4497892 (= e!2801728 ((_ map or) (store ((as const (Array tuple2!50924 Bool)) false) (h!56352 (t!357617 (toList!4252 lm!1477))) true) (content!8249 (t!357617 (t!357617 (toList!4252 lm!1477))))))))

(assert (= (and d!1379753 c!766555) b!4497891))

(assert (= (and d!1379753 (not c!766555)) b!4497892))

(declare-fun m!5226743 () Bool)

(assert (=> b!4497892 m!5226743))

(declare-fun m!5226745 () Bool)

(assert (=> b!4497892 m!5226745))

(assert (=> d!1379321 d!1379753))

(declare-fun d!1379755 () Bool)

(declare-fun res!1869671 () Bool)

(declare-fun e!2801729 () Bool)

(assert (=> d!1379755 (=> res!1869671 e!2801729)))

(assert (=> d!1379755 (= res!1869671 (not ((_ is Cons!50534) (t!357616 newBucket!178))))))

(assert (=> d!1379755 (= (noDuplicateKeys!1122 (t!357616 newBucket!178)) e!2801729)))

(declare-fun b!4497893 () Bool)

(declare-fun e!2801730 () Bool)

(assert (=> b!4497893 (= e!2801729 e!2801730)))

(declare-fun res!1869672 () Bool)

(assert (=> b!4497893 (=> (not res!1869672) (not e!2801730))))

(assert (=> b!4497893 (= res!1869672 (not (containsKey!1670 (t!357616 (t!357616 newBucket!178)) (_1!28755 (h!56351 (t!357616 newBucket!178))))))))

(declare-fun b!4497894 () Bool)

(assert (=> b!4497894 (= e!2801730 (noDuplicateKeys!1122 (t!357616 (t!357616 newBucket!178))))))

(assert (= (and d!1379755 (not res!1869671)) b!4497893))

(assert (= (and b!4497893 res!1869672) b!4497894))

(declare-fun m!5226749 () Bool)

(assert (=> b!4497893 m!5226749))

(declare-fun m!5226751 () Bool)

(assert (=> b!4497894 m!5226751))

(assert (=> b!4497153 d!1379755))

(declare-fun d!1379759 () Bool)

(declare-fun e!2801733 () Bool)

(assert (=> d!1379759 e!2801733))

(declare-fun res!1869673 () Bool)

(assert (=> d!1379759 (=> res!1869673 e!2801733)))

(declare-fun lt!1679617 () Bool)

(assert (=> d!1379759 (= res!1869673 (not lt!1679617))))

(declare-fun lt!1679619 () Bool)

(assert (=> d!1379759 (= lt!1679617 lt!1679619)))

(declare-fun lt!1679620 () Unit!91544)

(declare-fun e!2801734 () Unit!91544)

(assert (=> d!1379759 (= lt!1679620 e!2801734)))

(declare-fun c!766558 () Bool)

(assert (=> d!1379759 (= c!766558 lt!1679619)))

(assert (=> d!1379759 (= lt!1679619 (containsKey!1672 (toList!4252 lt!1679104) (_1!28756 lt!1678886)))))

(assert (=> d!1379759 (= (contains!13199 lt!1679104 (_1!28756 lt!1678886)) lt!1679617)))

(declare-fun b!4497899 () Bool)

(declare-fun lt!1679618 () Unit!91544)

(assert (=> b!4497899 (= e!2801734 lt!1679618)))

(assert (=> b!4497899 (= lt!1679618 (lemmaContainsKeyImpliesGetValueByKeyDefined!923 (toList!4252 lt!1679104) (_1!28756 lt!1678886)))))

(assert (=> b!4497899 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1679104) (_1!28756 lt!1678886)))))

(declare-fun b!4497900 () Bool)

(declare-fun Unit!91670 () Unit!91544)

(assert (=> b!4497900 (= e!2801734 Unit!91670)))

(declare-fun b!4497901 () Bool)

(assert (=> b!4497901 (= e!2801733 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1679104) (_1!28756 lt!1678886))))))

(assert (= (and d!1379759 c!766558) b!4497899))

(assert (= (and d!1379759 (not c!766558)) b!4497900))

(assert (= (and d!1379759 (not res!1869673)) b!4497901))

(declare-fun m!5226755 () Bool)

(assert (=> d!1379759 m!5226755))

(declare-fun m!5226757 () Bool)

(assert (=> b!4497899 m!5226757))

(assert (=> b!4497899 m!5225615))

(assert (=> b!4497899 m!5225615))

(declare-fun m!5226765 () Bool)

(assert (=> b!4497899 m!5226765))

(assert (=> b!4497901 m!5225615))

(assert (=> b!4497901 m!5225615))

(assert (=> b!4497901 m!5226765))

(assert (=> d!1379407 d!1379759))

(declare-fun b!4497912 () Bool)

(declare-fun e!2801741 () Option!11040)

(declare-fun e!2801742 () Option!11040)

(assert (=> b!4497912 (= e!2801741 e!2801742)))

(declare-fun c!766564 () Bool)

(assert (=> b!4497912 (= c!766564 (and ((_ is Cons!50535) lt!1679103) (not (= (_1!28756 (h!56352 lt!1679103)) (_1!28756 lt!1678886)))))))

(declare-fun b!4497910 () Bool)

(assert (=> b!4497910 (= e!2801741 (Some!11039 (_2!28756 (h!56352 lt!1679103))))))

(declare-fun d!1379765 () Bool)

(declare-fun c!766563 () Bool)

(assert (=> d!1379765 (= c!766563 (and ((_ is Cons!50535) lt!1679103) (= (_1!28756 (h!56352 lt!1679103)) (_1!28756 lt!1678886))))))

(assert (=> d!1379765 (= (getValueByKey!1020 lt!1679103 (_1!28756 lt!1678886)) e!2801741)))

(declare-fun b!4497914 () Bool)

(assert (=> b!4497914 (= e!2801742 (getValueByKey!1020 (t!357617 lt!1679103) (_1!28756 lt!1678886)))))

(declare-fun b!4497915 () Bool)

(assert (=> b!4497915 (= e!2801742 None!11039)))

(assert (= (and d!1379765 c!766563) b!4497910))

(assert (= (and d!1379765 (not c!766563)) b!4497912))

(assert (= (and b!4497912 c!766564) b!4497914))

(assert (= (and b!4497912 (not c!766564)) b!4497915))

(declare-fun m!5226769 () Bool)

(assert (=> b!4497914 m!5226769))

(assert (=> d!1379407 d!1379765))

(declare-fun d!1379767 () Bool)

(assert (=> d!1379767 (= (getValueByKey!1020 lt!1679103 (_1!28756 lt!1678886)) (Some!11039 (_2!28756 lt!1678886)))))

(declare-fun lt!1679623 () Unit!91544)

(assert (=> d!1379767 (= lt!1679623 (choose!29083 lt!1679103 (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))

(declare-fun e!2801743 () Bool)

(assert (=> d!1379767 e!2801743))

(declare-fun res!1869678 () Bool)

(assert (=> d!1379767 (=> (not res!1869678) (not e!2801743))))

(assert (=> d!1379767 (= res!1869678 (isStrictlySorted!395 lt!1679103))))

(assert (=> d!1379767 (= (lemmaContainsTupThenGetReturnValue!630 lt!1679103 (_1!28756 lt!1678886) (_2!28756 lt!1678886)) lt!1679623)))

(declare-fun b!4497918 () Bool)

(declare-fun res!1869679 () Bool)

(assert (=> b!4497918 (=> (not res!1869679) (not e!2801743))))

(assert (=> b!4497918 (= res!1869679 (containsKey!1672 lt!1679103 (_1!28756 lt!1678886)))))

(declare-fun b!4497919 () Bool)

(assert (=> b!4497919 (= e!2801743 (contains!13201 lt!1679103 (tuple2!50925 (_1!28756 lt!1678886) (_2!28756 lt!1678886))))))

(assert (= (and d!1379767 res!1869678) b!4497918))

(assert (= (and b!4497918 res!1869679) b!4497919))

(assert (=> d!1379767 m!5225609))

(declare-fun m!5226771 () Bool)

(assert (=> d!1379767 m!5226771))

(declare-fun m!5226773 () Bool)

(assert (=> d!1379767 m!5226773))

(declare-fun m!5226775 () Bool)

(assert (=> b!4497918 m!5226775))

(declare-fun m!5226777 () Bool)

(assert (=> b!4497919 m!5226777))

(assert (=> d!1379407 d!1379767))

(declare-fun bm!313042 () Bool)

(declare-fun call!313048 () List!50659)

(declare-fun call!313047 () List!50659)

(assert (=> bm!313042 (= call!313048 call!313047)))

(declare-fun bm!313043 () Bool)

(declare-fun call!313049 () List!50659)

(assert (=> bm!313043 (= call!313047 call!313049)))

(declare-fun b!4497920 () Bool)

(declare-fun e!2801746 () List!50659)

(assert (=> b!4497920 (= e!2801746 call!313047)))

(declare-fun b!4497921 () Bool)

(declare-fun e!2801747 () List!50659)

(assert (=> b!4497921 (= e!2801747 call!313048)))

(declare-fun b!4497922 () Bool)

(declare-fun e!2801745 () List!50659)

(assert (=> b!4497922 (= e!2801745 call!313049)))

(declare-fun b!4497923 () Bool)

(declare-fun c!766565 () Bool)

(assert (=> b!4497923 (= c!766565 (and ((_ is Cons!50535) (toList!4252 lt!1678896)) (bvsgt (_1!28756 (h!56352 (toList!4252 lt!1678896))) (_1!28756 lt!1678886))))))

(assert (=> b!4497923 (= e!2801746 e!2801747)))

(declare-fun b!4497924 () Bool)

(assert (=> b!4497924 (= e!2801747 call!313048)))

(declare-fun b!4497925 () Bool)

(declare-fun e!2801744 () List!50659)

(assert (=> b!4497925 (= e!2801744 (insertStrictlySorted!372 (t!357617 (toList!4252 lt!1678896)) (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))

(declare-fun b!4497926 () Bool)

(declare-fun res!1869680 () Bool)

(declare-fun e!2801748 () Bool)

(assert (=> b!4497926 (=> (not res!1869680) (not e!2801748))))

(declare-fun lt!1679624 () List!50659)

(assert (=> b!4497926 (= res!1869680 (containsKey!1672 lt!1679624 (_1!28756 lt!1678886)))))

(declare-fun d!1379769 () Bool)

(assert (=> d!1379769 e!2801748))

(declare-fun res!1869681 () Bool)

(assert (=> d!1379769 (=> (not res!1869681) (not e!2801748))))

(assert (=> d!1379769 (= res!1869681 (isStrictlySorted!395 lt!1679624))))

(assert (=> d!1379769 (= lt!1679624 e!2801745)))

(declare-fun c!766567 () Bool)

(assert (=> d!1379769 (= c!766567 (and ((_ is Cons!50535) (toList!4252 lt!1678896)) (bvslt (_1!28756 (h!56352 (toList!4252 lt!1678896))) (_1!28756 lt!1678886))))))

(assert (=> d!1379769 (isStrictlySorted!395 (toList!4252 lt!1678896))))

(assert (=> d!1379769 (= (insertStrictlySorted!372 (toList!4252 lt!1678896) (_1!28756 lt!1678886) (_2!28756 lt!1678886)) lt!1679624)))

(declare-fun b!4497927 () Bool)

(declare-fun c!766568 () Bool)

(assert (=> b!4497927 (= e!2801744 (ite c!766568 (t!357617 (toList!4252 lt!1678896)) (ite c!766565 (Cons!50535 (h!56352 (toList!4252 lt!1678896)) (t!357617 (toList!4252 lt!1678896))) Nil!50535)))))

(declare-fun b!4497928 () Bool)

(assert (=> b!4497928 (= e!2801748 (contains!13201 lt!1679624 (tuple2!50925 (_1!28756 lt!1678886) (_2!28756 lt!1678886))))))

(declare-fun b!4497929 () Bool)

(assert (=> b!4497929 (= e!2801745 e!2801746)))

(assert (=> b!4497929 (= c!766568 (and ((_ is Cons!50535) (toList!4252 lt!1678896)) (= (_1!28756 (h!56352 (toList!4252 lt!1678896))) (_1!28756 lt!1678886))))))

(declare-fun bm!313044 () Bool)

(assert (=> bm!313044 (= call!313049 ($colon$colon!889 e!2801744 (ite c!766567 (h!56352 (toList!4252 lt!1678896)) (tuple2!50925 (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))))

(declare-fun c!766566 () Bool)

(assert (=> bm!313044 (= c!766566 c!766567)))

(assert (= (and d!1379769 c!766567) b!4497922))

(assert (= (and d!1379769 (not c!766567)) b!4497929))

(assert (= (and b!4497929 c!766568) b!4497920))

(assert (= (and b!4497929 (not c!766568)) b!4497923))

(assert (= (and b!4497923 c!766565) b!4497921))

(assert (= (and b!4497923 (not c!766565)) b!4497924))

(assert (= (or b!4497921 b!4497924) bm!313042))

(assert (= (or b!4497920 bm!313042) bm!313043))

(assert (= (or b!4497922 bm!313043) bm!313044))

(assert (= (and bm!313044 c!766566) b!4497925))

(assert (= (and bm!313044 (not c!766566)) b!4497927))

(assert (= (and d!1379769 res!1869681) b!4497926))

(assert (= (and b!4497926 res!1869680) b!4497928))

(declare-fun m!5226791 () Bool)

(assert (=> b!4497928 m!5226791))

(declare-fun m!5226793 () Bool)

(assert (=> bm!313044 m!5226793))

(declare-fun m!5226795 () Bool)

(assert (=> b!4497926 m!5226795))

(declare-fun m!5226797 () Bool)

(assert (=> d!1379769 m!5226797))

(declare-fun m!5226799 () Bool)

(assert (=> d!1379769 m!5226799))

(declare-fun m!5226801 () Bool)

(assert (=> b!4497925 m!5226801))

(assert (=> d!1379407 d!1379769))

(declare-fun d!1379773 () Bool)

(declare-fun choose!29092 (Hashable!5517 K!11945) (_ BitVec 64))

(assert (=> d!1379773 (= (hash!2678 hashF!1107 key!3287) (choose!29092 hashF!1107 key!3287))))

(declare-fun bs!834559 () Bool)

(assert (= bs!834559 d!1379773))

(declare-fun m!5226809 () Bool)

(assert (=> bs!834559 m!5226809))

(assert (=> d!1379353 d!1379773))

(assert (=> b!4497116 d!1379559))

(assert (=> b!4497116 d!1379561))

(declare-fun d!1379775 () Bool)

(assert (=> d!1379775 (isDefined!8328 (getValueByKey!1021 (toList!4251 lt!1678891) key!3287))))

(declare-fun lt!1679626 () Unit!91544)

(assert (=> d!1379775 (= lt!1679626 (choose!29087 (toList!4251 lt!1678891) key!3287))))

(assert (=> d!1379775 (invariantList!981 (toList!4251 lt!1678891))))

(assert (=> d!1379775 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 lt!1678891) key!3287) lt!1679626)))

(declare-fun bs!834560 () Bool)

(assert (= bs!834560 d!1379775))

(assert (=> bs!834560 m!5225595))

(assert (=> bs!834560 m!5225595))

(assert (=> bs!834560 m!5225597))

(declare-fun m!5226813 () Bool)

(assert (=> bs!834560 m!5226813))

(assert (=> bs!834560 m!5226613))

(assert (=> b!4497129 d!1379775))

(assert (=> b!4497129 d!1379673))

(assert (=> b!4497129 d!1379675))

(declare-fun d!1379779 () Bool)

(assert (=> d!1379779 (contains!13203 (getKeysList!429 (toList!4251 lt!1678891)) key!3287)))

(declare-fun lt!1679631 () Unit!91544)

(assert (=> d!1379779 (= lt!1679631 (choose!29088 (toList!4251 lt!1678891) key!3287))))

(assert (=> d!1379779 (invariantList!981 (toList!4251 lt!1678891))))

(assert (=> d!1379779 (= (lemmaInListThenGetKeysListContains!425 (toList!4251 lt!1678891) key!3287) lt!1679631)))

(declare-fun bs!834561 () Bool)

(assert (= bs!834561 d!1379779))

(assert (=> bs!834561 m!5225603))

(assert (=> bs!834561 m!5225603))

(declare-fun m!5226815 () Bool)

(assert (=> bs!834561 m!5226815))

(declare-fun m!5226817 () Bool)

(assert (=> bs!834561 m!5226817))

(assert (=> bs!834561 m!5226613))

(assert (=> b!4497129 d!1379779))

(declare-fun d!1379781 () Bool)

(declare-fun res!1869684 () Bool)

(declare-fun e!2801751 () Bool)

(assert (=> d!1379781 (=> res!1869684 e!2801751)))

(assert (=> d!1379781 (= res!1869684 ((_ is Nil!50535) (toList!4252 lm!1477)))))

(assert (=> d!1379781 (= (forall!10167 (toList!4252 lm!1477) lambda!168263) e!2801751)))

(declare-fun b!4497934 () Bool)

(declare-fun e!2801752 () Bool)

(assert (=> b!4497934 (= e!2801751 e!2801752)))

(declare-fun res!1869685 () Bool)

(assert (=> b!4497934 (=> (not res!1869685) (not e!2801752))))

(assert (=> b!4497934 (= res!1869685 (dynLambda!21101 lambda!168263 (h!56352 (toList!4252 lm!1477))))))

(declare-fun b!4497935 () Bool)

(assert (=> b!4497935 (= e!2801752 (forall!10167 (t!357617 (toList!4252 lm!1477)) lambda!168263))))

(assert (= (and d!1379781 (not res!1869684)) b!4497934))

(assert (= (and b!4497934 res!1869685) b!4497935))

(declare-fun b_lambda!152091 () Bool)

(assert (=> (not b_lambda!152091) (not b!4497934)))

(declare-fun m!5226831 () Bool)

(assert (=> b!4497934 m!5226831))

(declare-fun m!5226833 () Bool)

(assert (=> b!4497935 m!5226833))

(assert (=> d!1379309 d!1379781))

(assert (=> d!1379329 d!1379327))

(declare-fun d!1379785 () Bool)

(assert (=> d!1379785 (containsKeyBiggerList!102 (toList!4252 lt!1678893) key!3287)))

(assert (=> d!1379785 true))

(declare-fun _$33!601 () Unit!91544)

(assert (=> d!1379785 (= (choose!29077 lt!1678893 key!3287 hashF!1107) _$33!601)))

(declare-fun bs!834563 () Bool)

(assert (= bs!834563 d!1379785))

(assert (=> bs!834563 m!5225161))

(assert (=> d!1379329 d!1379785))

(declare-fun d!1379791 () Bool)

(declare-fun res!1869689 () Bool)

(declare-fun e!2801756 () Bool)

(assert (=> d!1379791 (=> res!1869689 e!2801756)))

(assert (=> d!1379791 (= res!1869689 ((_ is Nil!50535) (toList!4252 lt!1678893)))))

(assert (=> d!1379791 (= (forall!10167 (toList!4252 lt!1678893) lambda!168266) e!2801756)))

(declare-fun b!4497939 () Bool)

(declare-fun e!2801757 () Bool)

(assert (=> b!4497939 (= e!2801756 e!2801757)))

(declare-fun res!1869690 () Bool)

(assert (=> b!4497939 (=> (not res!1869690) (not e!2801757))))

(assert (=> b!4497939 (= res!1869690 (dynLambda!21101 lambda!168266 (h!56352 (toList!4252 lt!1678893))))))

(declare-fun b!4497940 () Bool)

(assert (=> b!4497940 (= e!2801757 (forall!10167 (t!357617 (toList!4252 lt!1678893)) lambda!168266))))

(assert (= (and d!1379791 (not res!1869689)) b!4497939))

(assert (= (and b!4497939 res!1869690) b!4497940))

(declare-fun b_lambda!152095 () Bool)

(assert (=> (not b_lambda!152095) (not b!4497939)))

(declare-fun m!5226853 () Bool)

(assert (=> b!4497939 m!5226853))

(declare-fun m!5226855 () Bool)

(assert (=> b!4497940 m!5226855))

(assert (=> d!1379329 d!1379791))

(declare-fun b!4497942 () Bool)

(declare-fun e!2801758 () Option!11040)

(declare-fun e!2801759 () Option!11040)

(assert (=> b!4497942 (= e!2801758 e!2801759)))

(declare-fun c!766571 () Bool)

(assert (=> b!4497942 (= c!766571 (and ((_ is Cons!50535) (toList!4252 lt!1679108)) (not (= (_1!28756 (h!56352 (toList!4252 lt!1679108))) (_1!28756 lt!1678890)))))))

(declare-fun b!4497941 () Bool)

(assert (=> b!4497941 (= e!2801758 (Some!11039 (_2!28756 (h!56352 (toList!4252 lt!1679108)))))))

(declare-fun d!1379795 () Bool)

(declare-fun c!766570 () Bool)

(assert (=> d!1379795 (= c!766570 (and ((_ is Cons!50535) (toList!4252 lt!1679108)) (= (_1!28756 (h!56352 (toList!4252 lt!1679108))) (_1!28756 lt!1678890))))))

(assert (=> d!1379795 (= (getValueByKey!1020 (toList!4252 lt!1679108) (_1!28756 lt!1678890)) e!2801758)))

(declare-fun b!4497943 () Bool)

(assert (=> b!4497943 (= e!2801759 (getValueByKey!1020 (t!357617 (toList!4252 lt!1679108)) (_1!28756 lt!1678890)))))

(declare-fun b!4497944 () Bool)

(assert (=> b!4497944 (= e!2801759 None!11039)))

(assert (= (and d!1379795 c!766570) b!4497941))

(assert (= (and d!1379795 (not c!766570)) b!4497942))

(assert (= (and b!4497942 c!766571) b!4497943))

(assert (= (and b!4497942 (not c!766571)) b!4497944))

(declare-fun m!5226857 () Bool)

(assert (=> b!4497943 m!5226857))

(assert (=> b!4497142 d!1379795))

(declare-fun b!4497946 () Bool)

(declare-fun e!2801760 () Option!11040)

(declare-fun e!2801761 () Option!11040)

(assert (=> b!4497946 (= e!2801760 e!2801761)))

(declare-fun c!766573 () Bool)

(assert (=> b!4497946 (= c!766573 (and ((_ is Cons!50535) (toList!4252 lt!1679104)) (not (= (_1!28756 (h!56352 (toList!4252 lt!1679104))) (_1!28756 lt!1678886)))))))

(declare-fun b!4497945 () Bool)

(assert (=> b!4497945 (= e!2801760 (Some!11039 (_2!28756 (h!56352 (toList!4252 lt!1679104)))))))

(declare-fun d!1379797 () Bool)

(declare-fun c!766572 () Bool)

(assert (=> d!1379797 (= c!766572 (and ((_ is Cons!50535) (toList!4252 lt!1679104)) (= (_1!28756 (h!56352 (toList!4252 lt!1679104))) (_1!28756 lt!1678886))))))

(assert (=> d!1379797 (= (getValueByKey!1020 (toList!4252 lt!1679104) (_1!28756 lt!1678886)) e!2801760)))

(declare-fun b!4497947 () Bool)

(assert (=> b!4497947 (= e!2801761 (getValueByKey!1020 (t!357617 (toList!4252 lt!1679104)) (_1!28756 lt!1678886)))))

(declare-fun b!4497948 () Bool)

(assert (=> b!4497948 (= e!2801761 None!11039)))

(assert (= (and d!1379797 c!766572) b!4497945))

(assert (= (and d!1379797 (not c!766572)) b!4497946))

(assert (= (and b!4497946 c!766573) b!4497947))

(assert (= (and b!4497946 (not c!766573)) b!4497948))

(declare-fun m!5226859 () Bool)

(assert (=> b!4497947 m!5226859))

(assert (=> b!4497140 d!1379797))

(declare-fun bs!834564 () Bool)

(declare-fun b!4497951 () Bool)

(assert (= bs!834564 (and b!4497951 d!1379503)))

(declare-fun lambda!168439 () Int)

(assert (=> bs!834564 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679300) (= lambda!168439 lambda!168347))))

(declare-fun bs!834565 () Bool)

(assert (= bs!834565 (and b!4497951 b!4497456)))

(assert (=> bs!834565 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168439 lambda!168344))))

(declare-fun bs!834566 () Bool)

(assert (= bs!834566 (and b!4497951 d!1379729)))

(assert (=> bs!834566 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679600) (= lambda!168439 lambda!168436))))

(declare-fun bs!834567 () Bool)

(assert (= bs!834567 (and b!4497951 b!4497854)))

(assert (=> bs!834567 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168439 lambda!168434))))

(declare-fun bs!834568 () Bool)

(assert (= bs!834568 (and b!4497951 b!4497617)))

(assert (=> bs!834568 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679421) (= lambda!168439 lambda!168399))))

(declare-fun bs!834569 () Bool)

(assert (= bs!834569 (and b!4497951 b!4497455)))

(assert (=> bs!834569 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679301) (= lambda!168439 lambda!168346))))

(declare-fun bs!834570 () Bool)

(assert (= bs!834570 (and b!4497951 b!4497618)))

(assert (=> bs!834570 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168439 lambda!168397))))

(assert (=> bs!834568 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168439 lambda!168398))))

(declare-fun bs!834571 () Bool)

(assert (= bs!834571 (and b!4497951 d!1379627)))

(assert (=> bs!834571 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679420) (= lambda!168439 lambda!168402))))

(declare-fun bs!834572 () Bool)

(assert (= bs!834572 (and b!4497951 d!1379411)))

(assert (=> bs!834572 (not (= lambda!168439 lambda!168299))))

(declare-fun bs!834573 () Bool)

(assert (= bs!834573 (and b!4497951 b!4497855)))

(assert (=> bs!834573 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168439 lambda!168432))))

(assert (=> bs!834569 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168439 lambda!168345))))

(assert (=> bs!834567 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679601) (= lambda!168439 lambda!168435))))

(assert (=> b!4497951 true))

(declare-fun bs!834574 () Bool)

(declare-fun b!4497950 () Bool)

(assert (= bs!834574 (and b!4497950 d!1379503)))

(declare-fun lambda!168440 () Int)

(assert (=> bs!834574 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679300) (= lambda!168440 lambda!168347))))

(declare-fun bs!834575 () Bool)

(assert (= bs!834575 (and b!4497950 b!4497456)))

(assert (=> bs!834575 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168440 lambda!168344))))

(declare-fun bs!834576 () Bool)

(assert (= bs!834576 (and b!4497950 d!1379729)))

(assert (=> bs!834576 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679600) (= lambda!168440 lambda!168436))))

(declare-fun bs!834577 () Bool)

(assert (= bs!834577 (and b!4497950 b!4497854)))

(assert (=> bs!834577 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168440 lambda!168434))))

(declare-fun bs!834578 () Bool)

(assert (= bs!834578 (and b!4497950 b!4497617)))

(assert (=> bs!834578 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679421) (= lambda!168440 lambda!168399))))

(declare-fun bs!834579 () Bool)

(assert (= bs!834579 (and b!4497950 b!4497455)))

(assert (=> bs!834579 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679301) (= lambda!168440 lambda!168346))))

(declare-fun bs!834580 () Bool)

(assert (= bs!834580 (and b!4497950 b!4497618)))

(assert (=> bs!834580 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168440 lambda!168397))))

(assert (=> bs!834578 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168440 lambda!168398))))

(declare-fun bs!834581 () Bool)

(assert (= bs!834581 (and b!4497950 d!1379411)))

(assert (=> bs!834581 (not (= lambda!168440 lambda!168299))))

(declare-fun bs!834582 () Bool)

(assert (= bs!834582 (and b!4497950 b!4497855)))

(assert (=> bs!834582 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168440 lambda!168432))))

(assert (=> bs!834579 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168440 lambda!168345))))

(assert (=> bs!834577 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679601) (= lambda!168440 lambda!168435))))

(declare-fun bs!834583 () Bool)

(assert (= bs!834583 (and b!4497950 b!4497951)))

(assert (=> bs!834583 (= lambda!168440 lambda!168439)))

(declare-fun bs!834584 () Bool)

(assert (= bs!834584 (and b!4497950 d!1379627)))

(assert (=> bs!834584 (= (= (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679420) (= lambda!168440 lambda!168402))))

(assert (=> b!4497950 true))

(declare-fun lambda!168441 () Int)

(declare-fun lt!1679645 () ListMap!3513)

(assert (=> bs!834574 (= (= lt!1679645 lt!1679300) (= lambda!168441 lambda!168347))))

(assert (=> bs!834575 (= (= lt!1679645 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168441 lambda!168344))))

(assert (=> bs!834576 (= (= lt!1679645 lt!1679600) (= lambda!168441 lambda!168436))))

(assert (=> bs!834577 (= (= lt!1679645 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168441 lambda!168434))))

(assert (=> bs!834578 (= (= lt!1679645 lt!1679421) (= lambda!168441 lambda!168399))))

(assert (=> bs!834579 (= (= lt!1679645 lt!1679301) (= lambda!168441 lambda!168346))))

(assert (=> bs!834580 (= (= lt!1679645 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168441 lambda!168397))))

(assert (=> bs!834578 (= (= lt!1679645 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168441 lambda!168398))))

(assert (=> b!4497950 (= (= lt!1679645 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168441 lambda!168440))))

(assert (=> bs!834581 (not (= lambda!168441 lambda!168299))))

(assert (=> bs!834582 (= (= lt!1679645 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168441 lambda!168432))))

(assert (=> bs!834579 (= (= lt!1679645 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168441 lambda!168345))))

(assert (=> bs!834577 (= (= lt!1679645 lt!1679601) (= lambda!168441 lambda!168435))))

(assert (=> bs!834583 (= (= lt!1679645 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168441 lambda!168439))))

(assert (=> bs!834584 (= (= lt!1679645 lt!1679420) (= lambda!168441 lambda!168402))))

(assert (=> b!4497950 true))

(declare-fun bs!834585 () Bool)

(declare-fun d!1379799 () Bool)

(assert (= bs!834585 (and d!1379799 d!1379503)))

(declare-fun lambda!168442 () Int)

(declare-fun lt!1679644 () ListMap!3513)

(assert (=> bs!834585 (= (= lt!1679644 lt!1679300) (= lambda!168442 lambda!168347))))

(declare-fun bs!834586 () Bool)

(assert (= bs!834586 (and d!1379799 b!4497456)))

(assert (=> bs!834586 (= (= lt!1679644 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168442 lambda!168344))))

(declare-fun bs!834587 () Bool)

(assert (= bs!834587 (and d!1379799 d!1379729)))

(assert (=> bs!834587 (= (= lt!1679644 lt!1679600) (= lambda!168442 lambda!168436))))

(declare-fun bs!834588 () Bool)

(assert (= bs!834588 (and d!1379799 b!4497854)))

(assert (=> bs!834588 (= (= lt!1679644 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168442 lambda!168434))))

(declare-fun bs!834589 () Bool)

(assert (= bs!834589 (and d!1379799 b!4497617)))

(assert (=> bs!834589 (= (= lt!1679644 lt!1679421) (= lambda!168442 lambda!168399))))

(declare-fun bs!834590 () Bool)

(assert (= bs!834590 (and d!1379799 b!4497455)))

(assert (=> bs!834590 (= (= lt!1679644 lt!1679301) (= lambda!168442 lambda!168346))))

(declare-fun bs!834591 () Bool)

(assert (= bs!834591 (and d!1379799 b!4497618)))

(assert (=> bs!834591 (= (= lt!1679644 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168442 lambda!168397))))

(assert (=> bs!834589 (= (= lt!1679644 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168442 lambda!168398))))

(declare-fun bs!834592 () Bool)

(assert (= bs!834592 (and d!1379799 b!4497950)))

(assert (=> bs!834592 (= (= lt!1679644 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168442 lambda!168440))))

(declare-fun bs!834593 () Bool)

(assert (= bs!834593 (and d!1379799 d!1379411)))

(assert (=> bs!834593 (not (= lambda!168442 lambda!168299))))

(assert (=> bs!834592 (= (= lt!1679644 lt!1679645) (= lambda!168442 lambda!168441))))

(declare-fun bs!834594 () Bool)

(assert (= bs!834594 (and d!1379799 b!4497855)))

(assert (=> bs!834594 (= (= lt!1679644 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168442 lambda!168432))))

(assert (=> bs!834590 (= (= lt!1679644 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168442 lambda!168345))))

(assert (=> bs!834588 (= (= lt!1679644 lt!1679601) (= lambda!168442 lambda!168435))))

(declare-fun bs!834595 () Bool)

(assert (= bs!834595 (and d!1379799 b!4497951)))

(assert (=> bs!834595 (= (= lt!1679644 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168442 lambda!168439))))

(declare-fun bs!834596 () Bool)

(assert (= bs!834596 (and d!1379799 d!1379627)))

(assert (=> bs!834596 (= (= lt!1679644 lt!1679420) (= lambda!168442 lambda!168402))))

(assert (=> d!1379799 true))

(declare-fun bm!313045 () Bool)

(declare-fun call!313051 () Unit!91544)

(assert (=> bm!313045 (= call!313051 (lemmaContainsAllItsOwnKeys!303 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))))

(declare-fun b!4497949 () Bool)

(declare-fun res!1869693 () Bool)

(declare-fun e!2801763 () Bool)

(assert (=> b!4497949 (=> (not res!1869693) (not e!2801763))))

(assert (=> b!4497949 (= res!1869693 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) lambda!168442))))

(declare-fun e!2801764 () ListMap!3513)

(assert (=> b!4497950 (= e!2801764 lt!1679645)))

(declare-fun lt!1679646 () ListMap!3513)

(assert (=> b!4497950 (= lt!1679646 (+!1467 (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (h!56351 (_2!28756 (h!56352 (toList!4252 lm!1477))))))))

(assert (=> b!4497950 (= lt!1679645 (addToMapMapFromBucket!649 (t!357616 (_2!28756 (h!56352 (toList!4252 lm!1477)))) (+!1467 (extractMap!1178 (t!357617 (toList!4252 lm!1477))) (h!56351 (_2!28756 (h!56352 (toList!4252 lm!1477)))))))))

(declare-fun lt!1679635 () Unit!91544)

(assert (=> b!4497950 (= lt!1679635 call!313051)))

(assert (=> b!4497950 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) lambda!168440)))

(declare-fun lt!1679639 () Unit!91544)

(assert (=> b!4497950 (= lt!1679639 lt!1679635)))

(assert (=> b!4497950 (forall!10169 (toList!4251 lt!1679646) lambda!168441)))

(declare-fun lt!1679634 () Unit!91544)

(declare-fun Unit!91675 () Unit!91544)

(assert (=> b!4497950 (= lt!1679634 Unit!91675)))

(declare-fun call!313050 () Bool)

(assert (=> b!4497950 call!313050))

(declare-fun lt!1679641 () Unit!91544)

(declare-fun Unit!91676 () Unit!91544)

(assert (=> b!4497950 (= lt!1679641 Unit!91676)))

(declare-fun lt!1679650 () Unit!91544)

(declare-fun Unit!91677 () Unit!91544)

(assert (=> b!4497950 (= lt!1679650 Unit!91677)))

(declare-fun lt!1679636 () Unit!91544)

(assert (=> b!4497950 (= lt!1679636 (forallContained!2422 (toList!4251 lt!1679646) lambda!168441 (h!56351 (_2!28756 (h!56352 (toList!4252 lm!1477))))))))

(assert (=> b!4497950 (contains!13200 lt!1679646 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lm!1477))))))))

(declare-fun lt!1679640 () Unit!91544)

(declare-fun Unit!91678 () Unit!91544)

(assert (=> b!4497950 (= lt!1679640 Unit!91678)))

(assert (=> b!4497950 (contains!13200 lt!1679645 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lm!1477))))))))

(declare-fun lt!1679642 () Unit!91544)

(declare-fun Unit!91679 () Unit!91544)

(assert (=> b!4497950 (= lt!1679642 Unit!91679)))

(declare-fun call!313052 () Bool)

(assert (=> b!4497950 call!313052))

(declare-fun lt!1679648 () Unit!91544)

(declare-fun Unit!91680 () Unit!91544)

(assert (=> b!4497950 (= lt!1679648 Unit!91680)))

(assert (=> b!4497950 (forall!10169 (toList!4251 lt!1679646) lambda!168441)))

(declare-fun lt!1679633 () Unit!91544)

(declare-fun Unit!91681 () Unit!91544)

(assert (=> b!4497950 (= lt!1679633 Unit!91681)))

(declare-fun lt!1679637 () Unit!91544)

(declare-fun Unit!91682 () Unit!91544)

(assert (=> b!4497950 (= lt!1679637 Unit!91682)))

(declare-fun lt!1679643 () Unit!91544)

(assert (=> b!4497950 (= lt!1679643 (addForallContainsKeyThenBeforeAdding!303 (extractMap!1178 (t!357617 (toList!4252 lm!1477))) lt!1679645 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lm!1477))))) (_2!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lm!1477)))))))))

(assert (=> b!4497950 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) lambda!168441)))

(declare-fun lt!1679652 () Unit!91544)

(assert (=> b!4497950 (= lt!1679652 lt!1679643)))

(assert (=> b!4497950 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) lambda!168441)))

(declare-fun lt!1679638 () Unit!91544)

(declare-fun Unit!91683 () Unit!91544)

(assert (=> b!4497950 (= lt!1679638 Unit!91683)))

(declare-fun res!1869692 () Bool)

(assert (=> b!4497950 (= res!1869692 (forall!10169 (_2!28756 (h!56352 (toList!4252 lm!1477))) lambda!168441))))

(declare-fun e!2801762 () Bool)

(assert (=> b!4497950 (=> (not res!1869692) (not e!2801762))))

(assert (=> b!4497950 e!2801762))

(declare-fun lt!1679653 () Unit!91544)

(declare-fun Unit!91684 () Unit!91544)

(assert (=> b!4497950 (= lt!1679653 Unit!91684)))

(declare-fun bm!313046 () Bool)

(declare-fun c!766574 () Bool)

(assert (=> bm!313046 (= call!313050 (forall!10169 (ite c!766574 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (t!357616 (_2!28756 (h!56352 (toList!4252 lm!1477))))) (ite c!766574 lambda!168439 lambda!168441)))))

(assert (=> b!4497951 (= e!2801764 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))

(declare-fun lt!1679651 () Unit!91544)

(assert (=> b!4497951 (= lt!1679651 call!313051)))

(assert (=> b!4497951 call!313050))

(declare-fun lt!1679647 () Unit!91544)

(assert (=> b!4497951 (= lt!1679647 lt!1679651)))

(assert (=> b!4497951 call!313052))

(declare-fun lt!1679649 () Unit!91544)

(declare-fun Unit!91685 () Unit!91544)

(assert (=> b!4497951 (= lt!1679649 Unit!91685)))

(declare-fun bm!313047 () Bool)

(assert (=> bm!313047 (= call!313052 (forall!10169 (ite c!766574 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (_2!28756 (h!56352 (toList!4252 lm!1477)))) (ite c!766574 lambda!168439 lambda!168441)))))

(assert (=> d!1379799 e!2801763))

(declare-fun res!1869691 () Bool)

(assert (=> d!1379799 (=> (not res!1869691) (not e!2801763))))

(assert (=> d!1379799 (= res!1869691 (forall!10169 (_2!28756 (h!56352 (toList!4252 lm!1477))) lambda!168442))))

(assert (=> d!1379799 (= lt!1679644 e!2801764)))

(assert (=> d!1379799 (= c!766574 ((_ is Nil!50534) (_2!28756 (h!56352 (toList!4252 lm!1477)))))))

(assert (=> d!1379799 (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lm!1477))))))

(assert (=> d!1379799 (= (addToMapMapFromBucket!649 (_2!28756 (h!56352 (toList!4252 lm!1477))) (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) lt!1679644)))

(declare-fun b!4497952 () Bool)

(assert (=> b!4497952 (= e!2801763 (invariantList!981 (toList!4251 lt!1679644)))))

(declare-fun b!4497953 () Bool)

(assert (=> b!4497953 (= e!2801762 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) lambda!168441))))

(assert (= (and d!1379799 c!766574) b!4497951))

(assert (= (and d!1379799 (not c!766574)) b!4497950))

(assert (= (and b!4497950 res!1869692) b!4497953))

(assert (= (or b!4497951 b!4497950) bm!313047))

(assert (= (or b!4497951 b!4497950) bm!313046))

(assert (= (or b!4497951 b!4497950) bm!313045))

(assert (= (and d!1379799 res!1869691) b!4497949))

(assert (= (and b!4497949 res!1869693) b!4497952))

(declare-fun m!5226861 () Bool)

(assert (=> b!4497949 m!5226861))

(declare-fun m!5226863 () Bool)

(assert (=> d!1379799 m!5226863))

(assert (=> d!1379799 m!5225745))

(assert (=> bm!313045 m!5225113))

(declare-fun m!5226865 () Bool)

(assert (=> bm!313045 m!5226865))

(declare-fun m!5226867 () Bool)

(assert (=> bm!313047 m!5226867))

(declare-fun m!5226869 () Bool)

(assert (=> b!4497953 m!5226869))

(declare-fun m!5226871 () Bool)

(assert (=> bm!313046 m!5226871))

(declare-fun m!5226873 () Bool)

(assert (=> b!4497952 m!5226873))

(declare-fun m!5226875 () Bool)

(assert (=> b!4497950 m!5226875))

(declare-fun m!5226877 () Bool)

(assert (=> b!4497950 m!5226877))

(declare-fun m!5226879 () Bool)

(assert (=> b!4497950 m!5226879))

(assert (=> b!4497950 m!5225113))

(assert (=> b!4497950 m!5226877))

(declare-fun m!5226881 () Bool)

(assert (=> b!4497950 m!5226881))

(declare-fun m!5226883 () Bool)

(assert (=> b!4497950 m!5226883))

(assert (=> b!4497950 m!5226875))

(assert (=> b!4497950 m!5225113))

(declare-fun m!5226885 () Bool)

(assert (=> b!4497950 m!5226885))

(declare-fun m!5226887 () Bool)

(assert (=> b!4497950 m!5226887))

(declare-fun m!5226889 () Bool)

(assert (=> b!4497950 m!5226889))

(declare-fun m!5226891 () Bool)

(assert (=> b!4497950 m!5226891))

(assert (=> b!4497950 m!5226869))

(assert (=> b!4497950 m!5226869))

(assert (=> b!4497183 d!1379799))

(assert (=> b!4497183 d!1379401))

(declare-fun d!1379801 () Bool)

(assert (=> d!1379801 (isDefined!8326 (getValueByKey!1020 (toList!4252 lm!1477) lt!1678888))))

(declare-fun lt!1679656 () Unit!91544)

(declare-fun choose!29093 (List!50659 (_ BitVec 64)) Unit!91544)

(assert (=> d!1379801 (= lt!1679656 (choose!29093 (toList!4252 lm!1477) lt!1678888))))

(declare-fun e!2801767 () Bool)

(assert (=> d!1379801 e!2801767))

(declare-fun res!1869696 () Bool)

(assert (=> d!1379801 (=> (not res!1869696) (not e!2801767))))

(assert (=> d!1379801 (= res!1869696 (isStrictlySorted!395 (toList!4252 lm!1477)))))

(assert (=> d!1379801 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!923 (toList!4252 lm!1477) lt!1678888) lt!1679656)))

(declare-fun b!4497956 () Bool)

(assert (=> b!4497956 (= e!2801767 (containsKey!1672 (toList!4252 lm!1477) lt!1678888))))

(assert (= (and d!1379801 res!1869696) b!4497956))

(assert (=> d!1379801 m!5225195))

(assert (=> d!1379801 m!5225195))

(assert (=> d!1379801 m!5225197))

(declare-fun m!5226893 () Bool)

(assert (=> d!1379801 m!5226893))

(assert (=> d!1379801 m!5225235))

(assert (=> b!4497956 m!5225191))

(assert (=> b!4496885 d!1379801))

(declare-fun d!1379803 () Bool)

(declare-fun isEmpty!28593 (Option!11040) Bool)

(assert (=> d!1379803 (= (isDefined!8326 (getValueByKey!1020 (toList!4252 lm!1477) lt!1678888)) (not (isEmpty!28593 (getValueByKey!1020 (toList!4252 lm!1477) lt!1678888))))))

(declare-fun bs!834598 () Bool)

(assert (= bs!834598 d!1379803))

(assert (=> bs!834598 m!5225195))

(declare-fun m!5226895 () Bool)

(assert (=> bs!834598 m!5226895))

(assert (=> b!4496885 d!1379803))

(declare-fun b!4497958 () Bool)

(declare-fun e!2801768 () Option!11040)

(declare-fun e!2801769 () Option!11040)

(assert (=> b!4497958 (= e!2801768 e!2801769)))

(declare-fun c!766576 () Bool)

(assert (=> b!4497958 (= c!766576 (and ((_ is Cons!50535) (toList!4252 lm!1477)) (not (= (_1!28756 (h!56352 (toList!4252 lm!1477))) lt!1678888))))))

(declare-fun b!4497957 () Bool)

(assert (=> b!4497957 (= e!2801768 (Some!11039 (_2!28756 (h!56352 (toList!4252 lm!1477)))))))

(declare-fun d!1379805 () Bool)

(declare-fun c!766575 () Bool)

(assert (=> d!1379805 (= c!766575 (and ((_ is Cons!50535) (toList!4252 lm!1477)) (= (_1!28756 (h!56352 (toList!4252 lm!1477))) lt!1678888)))))

(assert (=> d!1379805 (= (getValueByKey!1020 (toList!4252 lm!1477) lt!1678888) e!2801768)))

(declare-fun b!4497959 () Bool)

(assert (=> b!4497959 (= e!2801769 (getValueByKey!1020 (t!357617 (toList!4252 lm!1477)) lt!1678888))))

(declare-fun b!4497960 () Bool)

(assert (=> b!4497960 (= e!2801769 None!11039)))

(assert (= (and d!1379805 c!766575) b!4497957))

(assert (= (and d!1379805 (not c!766575)) b!4497958))

(assert (= (and b!4497958 c!766576) b!4497959))

(assert (= (and b!4497958 (not c!766576)) b!4497960))

(declare-fun m!5226897 () Bool)

(assert (=> b!4497959 m!5226897))

(assert (=> b!4496885 d!1379805))

(declare-fun b!4497967 () Bool)

(declare-fun e!2801773 () Option!11040)

(declare-fun e!2801774 () Option!11040)

(assert (=> b!4497967 (= e!2801773 e!2801774)))

(declare-fun c!766579 () Bool)

(assert (=> b!4497967 (= c!766579 (and ((_ is Cons!50535) (toList!4252 lt!1679120)) (not (= (_1!28756 (h!56352 (toList!4252 lt!1679120))) (_1!28756 lt!1678890)))))))

(declare-fun b!4497966 () Bool)

(assert (=> b!4497966 (= e!2801773 (Some!11039 (_2!28756 (h!56352 (toList!4252 lt!1679120)))))))

(declare-fun d!1379809 () Bool)

(declare-fun c!766578 () Bool)

(assert (=> d!1379809 (= c!766578 (and ((_ is Cons!50535) (toList!4252 lt!1679120)) (= (_1!28756 (h!56352 (toList!4252 lt!1679120))) (_1!28756 lt!1678890))))))

(assert (=> d!1379809 (= (getValueByKey!1020 (toList!4252 lt!1679120) (_1!28756 lt!1678890)) e!2801773)))

(declare-fun b!4497968 () Bool)

(assert (=> b!4497968 (= e!2801774 (getValueByKey!1020 (t!357617 (toList!4252 lt!1679120)) (_1!28756 lt!1678890)))))

(declare-fun b!4497969 () Bool)

(assert (=> b!4497969 (= e!2801774 None!11039)))

(assert (= (and d!1379809 c!766578) b!4497966))

(assert (= (and d!1379809 (not c!766578)) b!4497967))

(assert (= (and b!4497967 c!766579) b!4497968))

(assert (= (and b!4497967 (not c!766579)) b!4497969))

(declare-fun m!5226899 () Bool)

(assert (=> b!4497968 m!5226899))

(assert (=> b!4497168 d!1379809))

(declare-fun d!1379811 () Bool)

(declare-fun res!1869700 () Bool)

(declare-fun e!2801775 () Bool)

(assert (=> d!1379811 (=> res!1869700 e!2801775)))

(assert (=> d!1379811 (= res!1869700 (and ((_ is Cons!50534) (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))) (= (_1!28755 (h!56351 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))))) key!3287)))))

(assert (=> d!1379811 (= (containsKey!1670 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477)))) key!3287) e!2801775)))

(declare-fun b!4497970 () Bool)

(declare-fun e!2801776 () Bool)

(assert (=> b!4497970 (= e!2801775 e!2801776)))

(declare-fun res!1869701 () Bool)

(assert (=> b!4497970 (=> (not res!1869701) (not e!2801776))))

(assert (=> b!4497970 (= res!1869701 ((_ is Cons!50534) (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))))))

(declare-fun b!4497971 () Bool)

(assert (=> b!4497971 (= e!2801776 (containsKey!1670 (t!357616 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))) key!3287))))

(assert (= (and d!1379811 (not res!1869700)) b!4497970))

(assert (= (and b!4497970 res!1869701) b!4497971))

(declare-fun m!5226901 () Bool)

(assert (=> b!4497971 m!5226901))

(assert (=> b!4496984 d!1379811))

(declare-fun d!1379813 () Bool)

(assert (=> d!1379813 (= (get!16511 (getValueByKey!1020 (toList!4252 lm!1477) hash!344)) (v!44521 (getValueByKey!1020 (toList!4252 lm!1477) hash!344)))))

(assert (=> d!1379293 d!1379813))

(assert (=> d!1379293 d!1379551))

(declare-fun d!1379815 () Bool)

(assert (=> d!1379815 (dynLambda!21101 lambda!168249 lt!1678885)))

(assert (=> d!1379815 true))

(declare-fun _$7!1771 () Unit!91544)

(assert (=> d!1379815 (= (choose!29073 (toList!4252 lm!1477) lambda!168249 lt!1678885) _$7!1771)))

(declare-fun b_lambda!152097 () Bool)

(assert (=> (not b_lambda!152097) (not d!1379815)))

(declare-fun bs!834614 () Bool)

(assert (= bs!834614 d!1379815))

(assert (=> bs!834614 m!5225227))

(assert (=> d!1379281 d!1379815))

(assert (=> d!1379281 d!1379295))

(declare-fun d!1379817 () Bool)

(assert (=> d!1379817 (= (get!16511 (getValueByKey!1020 (toList!4252 lt!1678893) hash!344)) (v!44521 (getValueByKey!1020 (toList!4252 lt!1678893) hash!344)))))

(assert (=> d!1379331 d!1379817))

(declare-fun b!4497973 () Bool)

(declare-fun e!2801777 () Option!11040)

(declare-fun e!2801778 () Option!11040)

(assert (=> b!4497973 (= e!2801777 e!2801778)))

(declare-fun c!766581 () Bool)

(assert (=> b!4497973 (= c!766581 (and ((_ is Cons!50535) (toList!4252 lt!1678893)) (not (= (_1!28756 (h!56352 (toList!4252 lt!1678893))) hash!344))))))

(declare-fun b!4497972 () Bool)

(assert (=> b!4497972 (= e!2801777 (Some!11039 (_2!28756 (h!56352 (toList!4252 lt!1678893)))))))

(declare-fun d!1379819 () Bool)

(declare-fun c!766580 () Bool)

(assert (=> d!1379819 (= c!766580 (and ((_ is Cons!50535) (toList!4252 lt!1678893)) (= (_1!28756 (h!56352 (toList!4252 lt!1678893))) hash!344)))))

(assert (=> d!1379819 (= (getValueByKey!1020 (toList!4252 lt!1678893) hash!344) e!2801777)))

(declare-fun b!4497974 () Bool)

(assert (=> b!4497974 (= e!2801778 (getValueByKey!1020 (t!357617 (toList!4252 lt!1678893)) hash!344))))

(declare-fun b!4497975 () Bool)

(assert (=> b!4497975 (= e!2801778 None!11039)))

(assert (= (and d!1379819 c!766580) b!4497972))

(assert (= (and d!1379819 (not c!766580)) b!4497973))

(assert (= (and b!4497973 c!766581) b!4497974))

(assert (= (and b!4497973 (not c!766581)) b!4497975))

(declare-fun m!5226903 () Bool)

(assert (=> b!4497974 m!5226903))

(assert (=> d!1379331 d!1379819))

(declare-fun d!1379821 () Bool)

(assert (=> d!1379821 (= (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1678893) hash!344)) (not (isEmpty!28593 (getValueByKey!1020 (toList!4252 lt!1678893) hash!344))))))

(declare-fun bs!834615 () Bool)

(assert (= bs!834615 d!1379821))

(assert (=> bs!834615 m!5225367))

(declare-fun m!5226905 () Bool)

(assert (=> bs!834615 m!5226905))

(assert (=> b!4497156 d!1379821))

(assert (=> b!4497156 d!1379819))

(assert (=> b!4496887 d!1379803))

(assert (=> b!4496887 d!1379805))

(assert (=> b!4496904 d!1379277))

(declare-fun d!1379823 () Bool)

(assert (=> d!1379823 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1678893) hash!344))))

(declare-fun lt!1679678 () Unit!91544)

(assert (=> d!1379823 (= lt!1679678 (choose!29093 (toList!4252 lt!1678893) hash!344))))

(declare-fun e!2801779 () Bool)

(assert (=> d!1379823 e!2801779))

(declare-fun res!1869702 () Bool)

(assert (=> d!1379823 (=> (not res!1869702) (not e!2801779))))

(assert (=> d!1379823 (= res!1869702 (isStrictlySorted!395 (toList!4252 lt!1678893)))))

(assert (=> d!1379823 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!923 (toList!4252 lt!1678893) hash!344) lt!1679678)))

(declare-fun b!4497976 () Bool)

(assert (=> b!4497976 (= e!2801779 (containsKey!1672 (toList!4252 lt!1678893) hash!344))))

(assert (= (and d!1379823 res!1869702) b!4497976))

(assert (=> d!1379823 m!5225367))

(assert (=> d!1379823 m!5225367))

(assert (=> d!1379823 m!5225641))

(declare-fun m!5226907 () Bool)

(assert (=> d!1379823 m!5226907))

(assert (=> d!1379823 m!5225875))

(assert (=> b!4497976 m!5225637))

(assert (=> b!4497154 d!1379823))

(assert (=> b!4497154 d!1379821))

(assert (=> b!4497154 d!1379819))

(declare-fun d!1379825 () Bool)

(declare-fun res!1869703 () Bool)

(declare-fun e!2801780 () Bool)

(assert (=> d!1379825 (=> res!1869703 e!2801780)))

(declare-fun e!2801781 () Bool)

(assert (=> d!1379825 (= res!1869703 e!2801781)))

(declare-fun res!1869704 () Bool)

(assert (=> d!1379825 (=> (not res!1869704) (not e!2801781))))

(assert (=> d!1379825 (= res!1869704 ((_ is Cons!50535) (t!357617 (t!357617 (toList!4252 lm!1477)))))))

(assert (=> d!1379825 (= (containsKeyBiggerList!102 (t!357617 (t!357617 (toList!4252 lm!1477))) key!3287) e!2801780)))

(declare-fun b!4497977 () Bool)

(assert (=> b!4497977 (= e!2801781 (containsKey!1670 (_2!28756 (h!56352 (t!357617 (t!357617 (toList!4252 lm!1477))))) key!3287))))

(declare-fun b!4497978 () Bool)

(declare-fun e!2801782 () Bool)

(assert (=> b!4497978 (= e!2801780 e!2801782)))

(declare-fun res!1869705 () Bool)

(assert (=> b!4497978 (=> (not res!1869705) (not e!2801782))))

(assert (=> b!4497978 (= res!1869705 ((_ is Cons!50535) (t!357617 (t!357617 (toList!4252 lm!1477)))))))

(declare-fun b!4497979 () Bool)

(assert (=> b!4497979 (= e!2801782 (containsKeyBiggerList!102 (t!357617 (t!357617 (t!357617 (toList!4252 lm!1477)))) key!3287))))

(assert (= (and d!1379825 res!1869704) b!4497977))

(assert (= (and d!1379825 (not res!1869703)) b!4497978))

(assert (= (and b!4497978 res!1869705) b!4497979))

(declare-fun m!5226909 () Bool)

(assert (=> b!4497977 m!5226909))

(declare-fun m!5226911 () Bool)

(assert (=> b!4497979 m!5226911))

(assert (=> b!4496986 d!1379825))

(declare-fun d!1379827 () Bool)

(declare-fun lt!1679679 () Bool)

(assert (=> d!1379827 (= lt!1679679 (select (content!8251 e!2801268) key!3287))))

(declare-fun e!2801783 () Bool)

(assert (=> d!1379827 (= lt!1679679 e!2801783)))

(declare-fun res!1869706 () Bool)

(assert (=> d!1379827 (=> (not res!1869706) (not e!2801783))))

(assert (=> d!1379827 (= res!1869706 ((_ is Cons!50537) e!2801268))))

(assert (=> d!1379827 (= (contains!13203 e!2801268 key!3287) lt!1679679)))

(declare-fun b!4497980 () Bool)

(declare-fun e!2801784 () Bool)

(assert (=> b!4497980 (= e!2801783 e!2801784)))

(declare-fun res!1869707 () Bool)

(assert (=> b!4497980 (=> res!1869707 e!2801784)))

(assert (=> b!4497980 (= res!1869707 (= (h!56356 e!2801268) key!3287))))

(declare-fun b!4497981 () Bool)

(assert (=> b!4497981 (= e!2801784 (contains!13203 (t!357619 e!2801268) key!3287))))

(assert (= (and d!1379827 res!1869706) b!4497980))

(assert (= (and b!4497980 (not res!1869707)) b!4497981))

(declare-fun m!5226913 () Bool)

(assert (=> d!1379827 m!5226913))

(declare-fun m!5226915 () Bool)

(assert (=> d!1379827 m!5226915))

(declare-fun m!5226917 () Bool)

(assert (=> b!4497981 m!5226917))

(assert (=> bm!312948 d!1379827))

(declare-fun bs!834618 () Bool)

(declare-fun b!4497983 () Bool)

(assert (= bs!834618 (and b!4497983 b!4497539)))

(declare-fun lambda!168447 () Int)

(assert (=> bs!834618 (= (= (t!357616 (toList!4251 lt!1678891)) (toList!4251 lt!1678892)) (= lambda!168447 lambda!168369))))

(declare-fun bs!834620 () Bool)

(assert (= bs!834620 (and b!4497983 b!4497484)))

(assert (=> bs!834620 (= (= (t!357616 (toList!4251 lt!1678891)) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168447 lambda!168357))))

(declare-fun bs!834622 () Bool)

(assert (= bs!834622 (and b!4497983 b!4497659)))

(assert (=> bs!834622 (= (= (t!357616 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678892))) (= lambda!168447 lambda!168410))))

(declare-fun bs!834624 () Bool)

(assert (= bs!834624 (and b!4497983 b!4497664)))

(assert (=> bs!834624 (= (= (t!357616 (toList!4251 lt!1678891)) (toList!4251 lt!1678892)) (= lambda!168447 lambda!168414))))

(declare-fun bs!834626 () Bool)

(assert (= bs!834626 (and b!4497983 b!4497658)))

(assert (=> bs!834626 (= (= (t!357616 (toList!4251 lt!1678891)) (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892)))) (= lambda!168447 lambda!168413))))

(declare-fun bs!834627 () Bool)

(assert (= bs!834627 (and b!4497983 b!4497483)))

(assert (=> bs!834627 (= (= (t!357616 (toList!4251 lt!1678891)) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168447 lambda!168358))))

(declare-fun bs!834629 () Bool)

(assert (= bs!834629 (and b!4497983 b!4497489)))

(assert (=> bs!834629 (= (= (t!357616 (toList!4251 lt!1678891)) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168447 lambda!168359))))

(declare-fun bs!834631 () Bool)

(assert (= bs!834631 (and b!4497983 b!4497526)))

(assert (=> bs!834631 (= (= (t!357616 (toList!4251 lt!1678891)) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168447 lambda!168367))))

(declare-fun bs!834633 () Bool)

(assert (= bs!834633 (and b!4497983 b!4497501)))

(assert (=> bs!834633 (= (= (t!357616 (toList!4251 lt!1678891)) (toList!4251 lt!1678891)) (= lambda!168447 lambda!168365))))

(declare-fun bs!834634 () Bool)

(assert (= bs!834634 (and b!4497983 b!4497560)))

(assert (=> bs!834634 (= (= (t!357616 (toList!4251 lt!1678891)) (toList!4251 lt!1679117)) (= lambda!168447 lambda!168371))))

(assert (=> b!4497983 true))

(declare-fun bs!834635 () Bool)

(declare-fun b!4497982 () Bool)

(assert (= bs!834635 (and b!4497982 b!4497539)))

(declare-fun lambda!168448 () Int)

(assert (=> bs!834635 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (toList!4251 lt!1678892)) (= lambda!168448 lambda!168369))))

(declare-fun bs!834636 () Bool)

(assert (= bs!834636 (and b!4497982 b!4497484)))

(assert (=> bs!834636 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168448 lambda!168357))))

(declare-fun bs!834637 () Bool)

(assert (= bs!834637 (and b!4497982 b!4497659)))

(assert (=> bs!834637 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (t!357616 (toList!4251 lt!1678892))) (= lambda!168448 lambda!168410))))

(declare-fun bs!834638 () Bool)

(assert (= bs!834638 (and b!4497982 b!4497658)))

(assert (=> bs!834638 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892)))) (= lambda!168448 lambda!168413))))

(declare-fun bs!834639 () Bool)

(assert (= bs!834639 (and b!4497982 b!4497483)))

(assert (=> bs!834639 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168448 lambda!168358))))

(declare-fun bs!834640 () Bool)

(assert (= bs!834640 (and b!4497982 b!4497489)))

(assert (=> bs!834640 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168448 lambda!168359))))

(declare-fun bs!834641 () Bool)

(assert (= bs!834641 (and b!4497982 b!4497526)))

(assert (=> bs!834641 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168448 lambda!168367))))

(declare-fun bs!834642 () Bool)

(assert (= bs!834642 (and b!4497982 b!4497664)))

(assert (=> bs!834642 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (toList!4251 lt!1678892)) (= lambda!168448 lambda!168414))))

(declare-fun bs!834643 () Bool)

(assert (= bs!834643 (and b!4497982 b!4497983)))

(assert (=> bs!834643 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (t!357616 (toList!4251 lt!1678891))) (= lambda!168448 lambda!168447))))

(declare-fun bs!834644 () Bool)

(assert (= bs!834644 (and b!4497982 b!4497501)))

(assert (=> bs!834644 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (toList!4251 lt!1678891)) (= lambda!168448 lambda!168365))))

(declare-fun bs!834645 () Bool)

(assert (= bs!834645 (and b!4497982 b!4497560)))

(assert (=> bs!834645 (= (= (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891))) (toList!4251 lt!1679117)) (= lambda!168448 lambda!168371))))

(assert (=> b!4497982 true))

(declare-fun bs!834646 () Bool)

(declare-fun b!4497988 () Bool)

(assert (= bs!834646 (and b!4497988 b!4497539)))

(declare-fun lambda!168449 () Int)

(assert (=> bs!834646 (= (= (toList!4251 lt!1678891) (toList!4251 lt!1678892)) (= lambda!168449 lambda!168369))))

(declare-fun bs!834647 () Bool)

(assert (= bs!834647 (and b!4497988 b!4497484)))

(assert (=> bs!834647 (= (= (toList!4251 lt!1678891) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))))) (= lambda!168449 lambda!168357))))

(declare-fun bs!834648 () Bool)

(assert (= bs!834648 (and b!4497988 b!4497659)))

(assert (=> bs!834648 (= (= (toList!4251 lt!1678891) (t!357616 (toList!4251 lt!1678892))) (= lambda!168449 lambda!168410))))

(declare-fun bs!834649 () Bool)

(assert (= bs!834649 (and b!4497988 b!4497982)))

(assert (=> bs!834649 (= (= (toList!4251 lt!1678891) (Cons!50534 (h!56351 (toList!4251 lt!1678891)) (t!357616 (toList!4251 lt!1678891)))) (= lambda!168449 lambda!168448))))

(declare-fun bs!834650 () Bool)

(assert (= bs!834650 (and b!4497988 b!4497658)))

(assert (=> bs!834650 (= (= (toList!4251 lt!1678891) (Cons!50534 (h!56351 (toList!4251 lt!1678892)) (t!357616 (toList!4251 lt!1678892)))) (= lambda!168449 lambda!168413))))

(declare-fun bs!834651 () Bool)

(assert (= bs!834651 (and b!4497988 b!4497483)))

(assert (=> bs!834651 (= (= (toList!4251 lt!1678891) (Cons!50534 (h!56351 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (t!357616 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))))) (= lambda!168449 lambda!168358))))

(declare-fun bs!834652 () Bool)

(assert (= bs!834652 (and b!4497988 b!4497489)))

(assert (=> bs!834652 (= (= (toList!4251 lt!1678891) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168449 lambda!168359))))

(declare-fun bs!834653 () Bool)

(assert (= bs!834653 (and b!4497988 b!4497526)))

(assert (=> bs!834653 (= (= (toList!4251 lt!1678891) (toList!4251 (extractMap!1178 (t!357617 (toList!4252 lm!1477))))) (= lambda!168449 lambda!168367))))

(declare-fun bs!834654 () Bool)

(assert (= bs!834654 (and b!4497988 b!4497664)))

(assert (=> bs!834654 (= (= (toList!4251 lt!1678891) (toList!4251 lt!1678892)) (= lambda!168449 lambda!168414))))

(declare-fun bs!834655 () Bool)

(assert (= bs!834655 (and b!4497988 b!4497983)))

(assert (=> bs!834655 (= (= (toList!4251 lt!1678891) (t!357616 (toList!4251 lt!1678891))) (= lambda!168449 lambda!168447))))

(declare-fun bs!834656 () Bool)

(assert (= bs!834656 (and b!4497988 b!4497501)))

(assert (=> bs!834656 (= lambda!168449 lambda!168365)))

(declare-fun bs!834657 () Bool)

(assert (= bs!834657 (and b!4497988 b!4497560)))

(assert (=> bs!834657 (= (= (toList!4251 lt!1678891) (toList!4251 lt!1679117)) (= lambda!168449 lambda!168371))))

(assert (=> b!4497988 true))

(declare-fun bs!834658 () Bool)

(declare-fun b!4497985 () Bool)

(assert (= bs!834658 (and b!4497985 b!4497561)))

(declare-fun lambda!168450 () Int)

(assert (=> bs!834658 (= lambda!168450 lambda!168372)))

(declare-fun bs!834660 () Bool)

(assert (= bs!834660 (and b!4497985 b!4497486)))

(assert (=> bs!834660 (= lambda!168450 lambda!168360)))

(declare-fun bs!834661 () Bool)

(assert (= bs!834661 (and b!4497985 b!4497540)))

(assert (=> bs!834661 (= lambda!168450 lambda!168370)))

(declare-fun bs!834663 () Bool)

(assert (= bs!834663 (and b!4497985 b!4497661)))

(assert (=> bs!834663 (= lambda!168450 lambda!168416)))

(declare-fun bs!834665 () Bool)

(assert (= bs!834665 (and b!4497985 b!4497502)))

(assert (=> bs!834665 (= lambda!168450 lambda!168366)))

(declare-fun bs!834667 () Bool)

(assert (= bs!834667 (and b!4497985 b!4497527)))

(assert (=> bs!834667 (= lambda!168450 lambda!168368)))

(declare-fun e!2801787 () List!50661)

(assert (=> b!4497982 (= e!2801787 (Cons!50537 (_1!28755 (h!56351 (toList!4251 lt!1678891))) (getKeysList!429 (t!357616 (toList!4251 lt!1678891)))))))

(declare-fun c!766584 () Bool)

(assert (=> b!4497982 (= c!766584 (containsKey!1674 (t!357616 (toList!4251 lt!1678891)) (_1!28755 (h!56351 (toList!4251 lt!1678891)))))))

(declare-fun lt!1679680 () Unit!91544)

(declare-fun e!2801785 () Unit!91544)

(assert (=> b!4497982 (= lt!1679680 e!2801785)))

(declare-fun c!766582 () Bool)

(assert (=> b!4497982 (= c!766582 (contains!13203 (getKeysList!429 (t!357616 (toList!4251 lt!1678891))) (_1!28755 (h!56351 (toList!4251 lt!1678891)))))))

(declare-fun lt!1679682 () Unit!91544)

(declare-fun e!2801786 () Unit!91544)

(assert (=> b!4497982 (= lt!1679682 e!2801786)))

(declare-fun lt!1679681 () List!50661)

(assert (=> b!4497982 (= lt!1679681 (getKeysList!429 (t!357616 (toList!4251 lt!1678891))))))

(declare-fun lt!1679685 () Unit!91544)

(assert (=> b!4497982 (= lt!1679685 (lemmaForallContainsAddHeadPreserves!146 (t!357616 (toList!4251 lt!1678891)) lt!1679681 (h!56351 (toList!4251 lt!1678891))))))

(assert (=> b!4497982 (forall!10170 lt!1679681 lambda!168448)))

(declare-fun lt!1679686 () Unit!91544)

(assert (=> b!4497982 (= lt!1679686 lt!1679685)))

(assert (=> b!4497983 false))

(declare-fun lt!1679683 () Unit!91544)

(assert (=> b!4497983 (= lt!1679683 (forallContained!2423 (getKeysList!429 (t!357616 (toList!4251 lt!1678891))) lambda!168447 (_1!28755 (h!56351 (toList!4251 lt!1678891)))))))

(declare-fun Unit!91696 () Unit!91544)

(assert (=> b!4497983 (= e!2801786 Unit!91696)))

(declare-fun b!4497984 () Bool)

(assert (=> b!4497984 (= e!2801787 Nil!50537)))

(declare-fun lt!1679684 () List!50661)

(declare-fun e!2801788 () Bool)

(assert (=> b!4497985 (= e!2801788 (= (content!8251 lt!1679684) (content!8251 (map!11097 (toList!4251 lt!1678891) lambda!168450))))))

(declare-fun b!4497987 () Bool)

(declare-fun res!1869710 () Bool)

(assert (=> b!4497987 (=> (not res!1869710) (not e!2801788))))

(assert (=> b!4497987 (= res!1869710 (= (length!306 lt!1679684) (length!307 (toList!4251 lt!1678891))))))

(declare-fun res!1869709 () Bool)

(assert (=> b!4497988 (=> (not res!1869709) (not e!2801788))))

(assert (=> b!4497988 (= res!1869709 (forall!10170 lt!1679684 lambda!168449))))

(declare-fun b!4497989 () Bool)

(declare-fun Unit!91698 () Unit!91544)

(assert (=> b!4497989 (= e!2801786 Unit!91698)))

(declare-fun b!4497990 () Bool)

(declare-fun Unit!91699 () Unit!91544)

(assert (=> b!4497990 (= e!2801785 Unit!91699)))

(declare-fun d!1379829 () Bool)

(assert (=> d!1379829 e!2801788))

(declare-fun res!1869708 () Bool)

(assert (=> d!1379829 (=> (not res!1869708) (not e!2801788))))

(assert (=> d!1379829 (= res!1869708 (noDuplicate!725 lt!1679684))))

(assert (=> d!1379829 (= lt!1679684 e!2801787)))

(declare-fun c!766583 () Bool)

(assert (=> d!1379829 (= c!766583 ((_ is Cons!50534) (toList!4251 lt!1678891)))))

(assert (=> d!1379829 (invariantList!981 (toList!4251 lt!1678891))))

(assert (=> d!1379829 (= (getKeysList!429 (toList!4251 lt!1678891)) lt!1679684)))

(declare-fun b!4497986 () Bool)

(assert (=> b!4497986 false))

(declare-fun Unit!91701 () Unit!91544)

(assert (=> b!4497986 (= e!2801785 Unit!91701)))

(assert (= (and d!1379829 c!766583) b!4497982))

(assert (= (and d!1379829 (not c!766583)) b!4497984))

(assert (= (and b!4497982 c!766584) b!4497986))

(assert (= (and b!4497982 (not c!766584)) b!4497990))

(assert (= (and b!4497982 c!766582) b!4497983))

(assert (= (and b!4497982 (not c!766582)) b!4497989))

(assert (= (and d!1379829 res!1869708) b!4497987))

(assert (= (and b!4497987 res!1869710) b!4497988))

(assert (= (and b!4497988 res!1869709) b!4497985))

(assert (=> b!4497983 m!5226593))

(assert (=> b!4497983 m!5226593))

(declare-fun m!5226953 () Bool)

(assert (=> b!4497983 m!5226953))

(declare-fun m!5226955 () Bool)

(assert (=> b!4497988 m!5226955))

(declare-fun m!5226957 () Bool)

(assert (=> b!4497985 m!5226957))

(declare-fun m!5226959 () Bool)

(assert (=> b!4497985 m!5226959))

(assert (=> b!4497985 m!5226959))

(declare-fun m!5226961 () Bool)

(assert (=> b!4497985 m!5226961))

(declare-fun m!5226963 () Bool)

(assert (=> b!4497982 m!5226963))

(declare-fun m!5226967 () Bool)

(assert (=> b!4497982 m!5226967))

(assert (=> b!4497982 m!5226593))

(declare-fun m!5226973 () Bool)

(assert (=> b!4497982 m!5226973))

(assert (=> b!4497982 m!5226593))

(assert (=> b!4497982 m!5226595))

(declare-fun m!5226977 () Bool)

(assert (=> d!1379829 m!5226977))

(assert (=> d!1379829 m!5226613))

(declare-fun m!5226979 () Bool)

(assert (=> b!4497987 m!5226979))

(assert (=> b!4497987 m!5226113))

(assert (=> b!4497131 d!1379829))

(declare-fun d!1379835 () Bool)

(declare-fun res!1869711 () Bool)

(declare-fun e!2801792 () Bool)

(assert (=> d!1379835 (=> res!1869711 e!2801792)))

(declare-fun e!2801793 () Bool)

(assert (=> d!1379835 (= res!1869711 e!2801793)))

(declare-fun res!1869712 () Bool)

(assert (=> d!1379835 (=> (not res!1869712) (not e!2801793))))

(assert (=> d!1379835 (= res!1869712 ((_ is Cons!50535) (t!357617 (toList!4252 lt!1678893))))))

(assert (=> d!1379835 (= (containsKeyBiggerList!102 (t!357617 (toList!4252 lt!1678893)) key!3287) e!2801792)))

(declare-fun b!4497997 () Bool)

(assert (=> b!4497997 (= e!2801793 (containsKey!1670 (_2!28756 (h!56352 (t!357617 (toList!4252 lt!1678893)))) key!3287))))

(declare-fun b!4497998 () Bool)

(declare-fun e!2801794 () Bool)

(assert (=> b!4497998 (= e!2801792 e!2801794)))

(declare-fun res!1869713 () Bool)

(assert (=> b!4497998 (=> (not res!1869713) (not e!2801794))))

(assert (=> b!4497998 (= res!1869713 ((_ is Cons!50535) (t!357617 (toList!4252 lt!1678893))))))

(declare-fun b!4497999 () Bool)

(assert (=> b!4497999 (= e!2801794 (containsKeyBiggerList!102 (t!357617 (t!357617 (toList!4252 lt!1678893))) key!3287))))

(assert (= (and d!1379835 res!1869712) b!4497997))

(assert (= (and d!1379835 (not res!1869711)) b!4497998))

(assert (= (and b!4497998 res!1869713) b!4497999))

(declare-fun m!5226983 () Bool)

(assert (=> b!4497997 m!5226983))

(declare-fun m!5226985 () Bool)

(assert (=> b!4497999 m!5226985))

(assert (=> b!4496989 d!1379835))

(declare-fun b!4498002 () Bool)

(declare-fun e!2801802 () Bool)

(assert (=> b!4498002 (= e!2801802 (not (contains!13203 (keys!17518 (extractMap!1178 (toList!4252 lt!1678893))) key!3287)))))

(declare-fun b!4498003 () Bool)

(assert (=> b!4498003 false))

(declare-fun lt!1679693 () Unit!91544)

(declare-fun lt!1679690 () Unit!91544)

(assert (=> b!4498003 (= lt!1679693 lt!1679690)))

(assert (=> b!4498003 (containsKey!1674 (toList!4251 (extractMap!1178 (toList!4252 lt!1678893))) key!3287)))

(assert (=> b!4498003 (= lt!1679690 (lemmaInGetKeysListThenContainsKey!428 (toList!4251 (extractMap!1178 (toList!4252 lt!1678893))) key!3287))))

(declare-fun e!2801801 () Unit!91544)

(declare-fun Unit!91702 () Unit!91544)

(assert (=> b!4498003 (= e!2801801 Unit!91702)))

(declare-fun b!4498004 () Bool)

(declare-fun e!2801799 () Unit!91544)

(declare-fun lt!1679692 () Unit!91544)

(assert (=> b!4498004 (= e!2801799 lt!1679692)))

(declare-fun lt!1679689 () Unit!91544)

(assert (=> b!4498004 (= lt!1679689 (lemmaContainsKeyImpliesGetValueByKeyDefined!925 (toList!4251 (extractMap!1178 (toList!4252 lt!1678893))) key!3287))))

(assert (=> b!4498004 (isDefined!8328 (getValueByKey!1021 (toList!4251 (extractMap!1178 (toList!4252 lt!1678893))) key!3287))))

(declare-fun lt!1679691 () Unit!91544)

(assert (=> b!4498004 (= lt!1679691 lt!1679689)))

(assert (=> b!4498004 (= lt!1679692 (lemmaInListThenGetKeysListContains!425 (toList!4251 (extractMap!1178 (toList!4252 lt!1678893))) key!3287))))

(declare-fun call!313056 () Bool)

(assert (=> b!4498004 call!313056))

(declare-fun b!4498005 () Bool)

(declare-fun Unit!91703 () Unit!91544)

(assert (=> b!4498005 (= e!2801801 Unit!91703)))

(declare-fun b!4498006 () Bool)

(declare-fun e!2801798 () List!50661)

(assert (=> b!4498006 (= e!2801798 (getKeysList!429 (toList!4251 (extractMap!1178 (toList!4252 lt!1678893)))))))

(declare-fun b!4498007 () Bool)

(assert (=> b!4498007 (= e!2801799 e!2801801)))

(declare-fun c!766590 () Bool)

(assert (=> b!4498007 (= c!766590 call!313056)))

(declare-fun b!4498008 () Bool)

(declare-fun e!2801800 () Bool)

(assert (=> b!4498008 (= e!2801800 (contains!13203 (keys!17518 (extractMap!1178 (toList!4252 lt!1678893))) key!3287))))

(declare-fun b!4498009 () Bool)

(assert (=> b!4498009 (= e!2801798 (keys!17518 (extractMap!1178 (toList!4252 lt!1678893))))))

(declare-fun b!4498010 () Bool)

(declare-fun e!2801797 () Bool)

(assert (=> b!4498010 (= e!2801797 e!2801800)))

(declare-fun res!1869716 () Bool)

(assert (=> b!4498010 (=> (not res!1869716) (not e!2801800))))

(assert (=> b!4498010 (= res!1869716 (isDefined!8328 (getValueByKey!1021 (toList!4251 (extractMap!1178 (toList!4252 lt!1678893))) key!3287)))))

(declare-fun d!1379839 () Bool)

(assert (=> d!1379839 e!2801797))

(declare-fun res!1869717 () Bool)

(assert (=> d!1379839 (=> res!1869717 e!2801797)))

(assert (=> d!1379839 (= res!1869717 e!2801802)))

(declare-fun res!1869718 () Bool)

(assert (=> d!1379839 (=> (not res!1869718) (not e!2801802))))

(declare-fun lt!1679695 () Bool)

(assert (=> d!1379839 (= res!1869718 (not lt!1679695))))

(declare-fun lt!1679694 () Bool)

(assert (=> d!1379839 (= lt!1679695 lt!1679694)))

(declare-fun lt!1679688 () Unit!91544)

(assert (=> d!1379839 (= lt!1679688 e!2801799)))

(declare-fun c!766589 () Bool)

(assert (=> d!1379839 (= c!766589 lt!1679694)))

(assert (=> d!1379839 (= lt!1679694 (containsKey!1674 (toList!4251 (extractMap!1178 (toList!4252 lt!1678893))) key!3287))))

(assert (=> d!1379839 (= (contains!13200 (extractMap!1178 (toList!4252 lt!1678893)) key!3287) lt!1679695)))

(declare-fun bm!313051 () Bool)

(assert (=> bm!313051 (= call!313056 (contains!13203 e!2801798 key!3287))))

(declare-fun c!766588 () Bool)

(assert (=> bm!313051 (= c!766588 c!766589)))

(assert (= (and d!1379839 c!766589) b!4498004))

(assert (= (and d!1379839 (not c!766589)) b!4498007))

(assert (= (and b!4498007 c!766590) b!4498003))

(assert (= (and b!4498007 (not c!766590)) b!4498005))

(assert (= (or b!4498004 b!4498007) bm!313051))

(assert (= (and bm!313051 c!766588) b!4498006))

(assert (= (and bm!313051 (not c!766588)) b!4498009))

(assert (= (and d!1379839 res!1869718) b!4498002))

(assert (= (and d!1379839 (not res!1869717)) b!4498010))

(assert (= (and b!4498010 res!1869716) b!4498008))

(assert (=> b!4498002 m!5225109))

(declare-fun m!5226993 () Bool)

(assert (=> b!4498002 m!5226993))

(assert (=> b!4498002 m!5226993))

(declare-fun m!5226995 () Bool)

(assert (=> b!4498002 m!5226995))

(declare-fun m!5226997 () Bool)

(assert (=> d!1379839 m!5226997))

(assert (=> b!4498008 m!5225109))

(assert (=> b!4498008 m!5226993))

(assert (=> b!4498008 m!5226993))

(assert (=> b!4498008 m!5226995))

(assert (=> b!4498009 m!5225109))

(assert (=> b!4498009 m!5226993))

(declare-fun m!5226999 () Bool)

(assert (=> b!4498004 m!5226999))

(declare-fun m!5227001 () Bool)

(assert (=> b!4498004 m!5227001))

(assert (=> b!4498004 m!5227001))

(declare-fun m!5227003 () Bool)

(assert (=> b!4498004 m!5227003))

(declare-fun m!5227005 () Bool)

(assert (=> b!4498004 m!5227005))

(assert (=> b!4498010 m!5227001))

(assert (=> b!4498010 m!5227001))

(assert (=> b!4498010 m!5227003))

(assert (=> b!4498003 m!5226997))

(declare-fun m!5227007 () Bool)

(assert (=> b!4498003 m!5227007))

(declare-fun m!5227009 () Bool)

(assert (=> b!4498006 m!5227009))

(declare-fun m!5227011 () Bool)

(assert (=> bm!313051 m!5227011))

(assert (=> d!1379403 d!1379839))

(assert (=> d!1379403 d!1379355))

(declare-fun d!1379845 () Bool)

(assert (=> d!1379845 (contains!13200 (extractMap!1178 (toList!4252 lt!1678893)) key!3287)))

(assert (=> d!1379845 true))

(declare-fun _$34!616 () Unit!91544)

(assert (=> d!1379845 (= (choose!29080 lt!1678893 key!3287 hashF!1107) _$34!616)))

(declare-fun bs!834678 () Bool)

(assert (= bs!834678 d!1379845))

(assert (=> bs!834678 m!5225109))

(assert (=> bs!834678 m!5225109))

(assert (=> bs!834678 m!5225581))

(assert (=> d!1379403 d!1379845))

(declare-fun d!1379849 () Bool)

(declare-fun res!1869724 () Bool)

(declare-fun e!2801811 () Bool)

(assert (=> d!1379849 (=> res!1869724 e!2801811)))

(assert (=> d!1379849 (= res!1869724 ((_ is Nil!50535) (toList!4252 lt!1678893)))))

(assert (=> d!1379849 (= (forall!10167 (toList!4252 lt!1678893) lambda!168296) e!2801811)))

(declare-fun b!4498022 () Bool)

(declare-fun e!2801812 () Bool)

(assert (=> b!4498022 (= e!2801811 e!2801812)))

(declare-fun res!1869725 () Bool)

(assert (=> b!4498022 (=> (not res!1869725) (not e!2801812))))

(assert (=> b!4498022 (= res!1869725 (dynLambda!21101 lambda!168296 (h!56352 (toList!4252 lt!1678893))))))

(declare-fun b!4498023 () Bool)

(assert (=> b!4498023 (= e!2801812 (forall!10167 (t!357617 (toList!4252 lt!1678893)) lambda!168296))))

(assert (= (and d!1379849 (not res!1869724)) b!4498022))

(assert (= (and b!4498022 res!1869725) b!4498023))

(declare-fun b_lambda!152099 () Bool)

(assert (=> (not b_lambda!152099) (not b!4498022)))

(declare-fun m!5227033 () Bool)

(assert (=> b!4498022 m!5227033))

(declare-fun m!5227035 () Bool)

(assert (=> b!4498023 m!5227035))

(assert (=> d!1379403 d!1379849))

(declare-fun d!1379853 () Bool)

(declare-fun res!1869728 () Bool)

(declare-fun e!2801815 () Bool)

(assert (=> d!1379853 (=> res!1869728 e!2801815)))

(assert (=> d!1379853 (= res!1869728 (not ((_ is Cons!50534) (_2!28756 (h!56352 (toList!4252 lm!1477))))))))

(assert (=> d!1379853 (= (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lm!1477)))) e!2801815)))

(declare-fun b!4498026 () Bool)

(declare-fun e!2801816 () Bool)

(assert (=> b!4498026 (= e!2801815 e!2801816)))

(declare-fun res!1869729 () Bool)

(assert (=> b!4498026 (=> (not res!1869729) (not e!2801816))))

(assert (=> b!4498026 (= res!1869729 (not (containsKey!1670 (t!357616 (_2!28756 (h!56352 (toList!4252 lm!1477)))) (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 lm!1477))))))))))

(declare-fun b!4498027 () Bool)

(assert (=> b!4498027 (= e!2801816 (noDuplicateKeys!1122 (t!357616 (_2!28756 (h!56352 (toList!4252 lm!1477))))))))

(assert (= (and d!1379853 (not res!1869728)) b!4498026))

(assert (= (and b!4498026 res!1869729) b!4498027))

(declare-fun m!5227041 () Bool)

(assert (=> b!4498026 m!5227041))

(declare-fun m!5227043 () Bool)

(assert (=> b!4498027 m!5227043))

(assert (=> bs!834307 d!1379853))

(declare-fun d!1379857 () Bool)

(declare-fun lt!1679705 () Bool)

(assert (=> d!1379857 (= lt!1679705 (select (content!8249 (t!357617 (t!357617 (toList!4252 lm!1477)))) lt!1678885))))

(declare-fun e!2801817 () Bool)

(assert (=> d!1379857 (= lt!1679705 e!2801817)))

(declare-fun res!1869731 () Bool)

(assert (=> d!1379857 (=> (not res!1869731) (not e!2801817))))

(assert (=> d!1379857 (= res!1869731 ((_ is Cons!50535) (t!357617 (t!357617 (toList!4252 lm!1477)))))))

(assert (=> d!1379857 (= (contains!13201 (t!357617 (t!357617 (toList!4252 lm!1477))) lt!1678885) lt!1679705)))

(declare-fun b!4498028 () Bool)

(declare-fun e!2801818 () Bool)

(assert (=> b!4498028 (= e!2801817 e!2801818)))

(declare-fun res!1869730 () Bool)

(assert (=> b!4498028 (=> res!1869730 e!2801818)))

(assert (=> b!4498028 (= res!1869730 (= (h!56352 (t!357617 (t!357617 (toList!4252 lm!1477)))) lt!1678885))))

(declare-fun b!4498029 () Bool)

(assert (=> b!4498029 (= e!2801818 (contains!13201 (t!357617 (t!357617 (t!357617 (toList!4252 lm!1477)))) lt!1678885))))

(assert (= (and d!1379857 res!1869731) b!4498028))

(assert (= (and b!4498028 (not res!1869730)) b!4498029))

(assert (=> d!1379857 m!5226745))

(declare-fun m!5227047 () Bool)

(assert (=> d!1379857 m!5227047))

(declare-fun m!5227049 () Bool)

(assert (=> b!4498029 m!5227049))

(assert (=> b!4496974 d!1379857))

(assert (=> b!4497181 d!1379569))

(declare-fun d!1379861 () Bool)

(declare-fun res!1869741 () Bool)

(declare-fun e!2801831 () Bool)

(assert (=> d!1379861 (=> res!1869741 e!2801831)))

(assert (=> d!1379861 (= res!1869741 ((_ is Nil!50534) newBucket!178))))

(assert (=> d!1379861 (= (forall!10169 newBucket!178 lambda!168299) e!2801831)))

(declare-fun b!4498047 () Bool)

(declare-fun e!2801832 () Bool)

(assert (=> b!4498047 (= e!2801831 e!2801832)))

(declare-fun res!1869742 () Bool)

(assert (=> b!4498047 (=> (not res!1869742) (not e!2801832))))

(declare-fun dynLambda!21103 (Int tuple2!50922) Bool)

(assert (=> b!4498047 (= res!1869742 (dynLambda!21103 lambda!168299 (h!56351 newBucket!178)))))

(declare-fun b!4498048 () Bool)

(assert (=> b!4498048 (= e!2801832 (forall!10169 (t!357616 newBucket!178) lambda!168299))))

(assert (= (and d!1379861 (not res!1869741)) b!4498047))

(assert (= (and b!4498047 res!1869742) b!4498048))

(declare-fun b_lambda!152103 () Bool)

(assert (=> (not b_lambda!152103) (not b!4498047)))

(declare-fun m!5227075 () Bool)

(assert (=> b!4498047 m!5227075))

(declare-fun m!5227077 () Bool)

(assert (=> b!4498048 m!5227077))

(assert (=> d!1379411 d!1379861))

(declare-fun bs!834682 () Bool)

(declare-fun b!4498061 () Bool)

(assert (= bs!834682 (and b!4498061 d!1379503)))

(declare-fun lambda!168452 () Int)

(assert (=> bs!834682 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679300) (= lambda!168452 lambda!168347))))

(declare-fun bs!834683 () Bool)

(assert (= bs!834683 (and b!4498061 d!1379799)))

(assert (=> bs!834683 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679644) (= lambda!168452 lambda!168442))))

(declare-fun bs!834684 () Bool)

(assert (= bs!834684 (and b!4498061 b!4497456)))

(assert (=> bs!834684 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168452 lambda!168344))))

(declare-fun bs!834685 () Bool)

(assert (= bs!834685 (and b!4498061 d!1379729)))

(assert (=> bs!834685 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679600) (= lambda!168452 lambda!168436))))

(declare-fun bs!834686 () Bool)

(assert (= bs!834686 (and b!4498061 b!4497854)))

(assert (=> bs!834686 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168452 lambda!168434))))

(declare-fun bs!834687 () Bool)

(assert (= bs!834687 (and b!4498061 b!4497617)))

(assert (=> bs!834687 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679421) (= lambda!168452 lambda!168399))))

(declare-fun bs!834688 () Bool)

(assert (= bs!834688 (and b!4498061 b!4497455)))

(assert (=> bs!834688 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679301) (= lambda!168452 lambda!168346))))

(declare-fun bs!834689 () Bool)

(assert (= bs!834689 (and b!4498061 b!4497618)))

(assert (=> bs!834689 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168452 lambda!168397))))

(assert (=> bs!834687 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168452 lambda!168398))))

(declare-fun bs!834690 () Bool)

(assert (= bs!834690 (and b!4498061 b!4497950)))

(assert (=> bs!834690 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168452 lambda!168440))))

(declare-fun bs!834691 () Bool)

(assert (= bs!834691 (and b!4498061 d!1379411)))

(assert (=> bs!834691 (not (= lambda!168452 lambda!168299))))

(assert (=> bs!834690 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679645) (= lambda!168452 lambda!168441))))

(declare-fun bs!834692 () Bool)

(assert (= bs!834692 (and b!4498061 b!4497855)))

(assert (=> bs!834692 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168452 lambda!168432))))

(assert (=> bs!834688 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168452 lambda!168345))))

(assert (=> bs!834686 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679601) (= lambda!168452 lambda!168435))))

(declare-fun bs!834693 () Bool)

(assert (= bs!834693 (and b!4498061 b!4497951)))

(assert (=> bs!834693 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168452 lambda!168439))))

(declare-fun bs!834694 () Bool)

(assert (= bs!834694 (and b!4498061 d!1379627)))

(assert (=> bs!834694 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679420) (= lambda!168452 lambda!168402))))

(assert (=> b!4498061 true))

(declare-fun bs!834695 () Bool)

(declare-fun b!4498060 () Bool)

(assert (= bs!834695 (and b!4498060 d!1379503)))

(declare-fun lambda!168453 () Int)

(assert (=> bs!834695 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679300) (= lambda!168453 lambda!168347))))

(declare-fun bs!834696 () Bool)

(assert (= bs!834696 (and b!4498060 d!1379799)))

(assert (=> bs!834696 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679644) (= lambda!168453 lambda!168442))))

(declare-fun bs!834697 () Bool)

(assert (= bs!834697 (and b!4498060 b!4498061)))

(assert (=> bs!834697 (= lambda!168453 lambda!168452)))

(declare-fun bs!834698 () Bool)

(assert (= bs!834698 (and b!4498060 b!4497456)))

(assert (=> bs!834698 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168453 lambda!168344))))

(declare-fun bs!834699 () Bool)

(assert (= bs!834699 (and b!4498060 d!1379729)))

(assert (=> bs!834699 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679600) (= lambda!168453 lambda!168436))))

(declare-fun bs!834700 () Bool)

(assert (= bs!834700 (and b!4498060 b!4497854)))

(assert (=> bs!834700 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168453 lambda!168434))))

(declare-fun bs!834701 () Bool)

(assert (= bs!834701 (and b!4498060 b!4497617)))

(assert (=> bs!834701 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679421) (= lambda!168453 lambda!168399))))

(declare-fun bs!834702 () Bool)

(assert (= bs!834702 (and b!4498060 b!4497455)))

(assert (=> bs!834702 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679301) (= lambda!168453 lambda!168346))))

(declare-fun bs!834703 () Bool)

(assert (= bs!834703 (and b!4498060 b!4497618)))

(assert (=> bs!834703 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168453 lambda!168397))))

(assert (=> bs!834701 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168453 lambda!168398))))

(declare-fun bs!834704 () Bool)

(assert (= bs!834704 (and b!4498060 b!4497950)))

(assert (=> bs!834704 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168453 lambda!168440))))

(declare-fun bs!834705 () Bool)

(assert (= bs!834705 (and b!4498060 d!1379411)))

(assert (=> bs!834705 (not (= lambda!168453 lambda!168299))))

(assert (=> bs!834704 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679645) (= lambda!168453 lambda!168441))))

(declare-fun bs!834706 () Bool)

(assert (= bs!834706 (and b!4498060 b!4497855)))

(assert (=> bs!834706 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168453 lambda!168432))))

(assert (=> bs!834702 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168453 lambda!168345))))

(assert (=> bs!834700 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679601) (= lambda!168453 lambda!168435))))

(declare-fun bs!834708 () Bool)

(assert (= bs!834708 (and b!4498060 b!4497951)))

(assert (=> bs!834708 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168453 lambda!168439))))

(declare-fun bs!834709 () Bool)

(assert (= bs!834709 (and b!4498060 d!1379627)))

(assert (=> bs!834709 (= (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679420) (= lambda!168453 lambda!168402))))

(assert (=> b!4498060 true))

(declare-fun lt!1679725 () ListMap!3513)

(declare-fun lambda!168454 () Int)

(assert (=> bs!834695 (= (= lt!1679725 lt!1679300) (= lambda!168454 lambda!168347))))

(assert (=> bs!834696 (= (= lt!1679725 lt!1679644) (= lambda!168454 lambda!168442))))

(assert (=> bs!834697 (= (= lt!1679725 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) (= lambda!168454 lambda!168452))))

(assert (=> bs!834698 (= (= lt!1679725 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168454 lambda!168344))))

(assert (=> bs!834699 (= (= lt!1679725 lt!1679600) (= lambda!168454 lambda!168436))))

(assert (=> bs!834700 (= (= lt!1679725 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168454 lambda!168434))))

(assert (=> bs!834701 (= (= lt!1679725 lt!1679421) (= lambda!168454 lambda!168399))))

(assert (=> bs!834702 (= (= lt!1679725 lt!1679301) (= lambda!168454 lambda!168346))))

(assert (=> bs!834703 (= (= lt!1679725 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168454 lambda!168397))))

(assert (=> bs!834704 (= (= lt!1679725 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168454 lambda!168440))))

(assert (=> bs!834705 (not (= lambda!168454 lambda!168299))))

(assert (=> bs!834704 (= (= lt!1679725 lt!1679645) (= lambda!168454 lambda!168441))))

(assert (=> bs!834706 (= (= lt!1679725 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168454 lambda!168432))))

(assert (=> bs!834702 (= (= lt!1679725 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168454 lambda!168345))))

(assert (=> bs!834700 (= (= lt!1679725 lt!1679601) (= lambda!168454 lambda!168435))))

(assert (=> b!4498060 (= (= lt!1679725 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) (= lambda!168454 lambda!168453))))

(assert (=> bs!834701 (= (= lt!1679725 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168454 lambda!168398))))

(assert (=> bs!834708 (= (= lt!1679725 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168454 lambda!168439))))

(assert (=> bs!834709 (= (= lt!1679725 lt!1679420) (= lambda!168454 lambda!168402))))

(assert (=> b!4498060 true))

(declare-fun bs!834711 () Bool)

(declare-fun d!1379875 () Bool)

(assert (= bs!834711 (and d!1379875 d!1379503)))

(declare-fun lambda!168455 () Int)

(declare-fun lt!1679724 () ListMap!3513)

(assert (=> bs!834711 (= (= lt!1679724 lt!1679300) (= lambda!168455 lambda!168347))))

(declare-fun bs!834712 () Bool)

(assert (= bs!834712 (and d!1379875 b!4498060)))

(assert (=> bs!834712 (= (= lt!1679724 lt!1679725) (= lambda!168455 lambda!168454))))

(declare-fun bs!834713 () Bool)

(assert (= bs!834713 (and d!1379875 d!1379799)))

(assert (=> bs!834713 (= (= lt!1679724 lt!1679644) (= lambda!168455 lambda!168442))))

(declare-fun bs!834715 () Bool)

(assert (= bs!834715 (and d!1379875 b!4498061)))

(assert (=> bs!834715 (= (= lt!1679724 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) (= lambda!168455 lambda!168452))))

(declare-fun bs!834717 () Bool)

(assert (= bs!834717 (and d!1379875 b!4497456)))

(assert (=> bs!834717 (= (= lt!1679724 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168455 lambda!168344))))

(declare-fun bs!834718 () Bool)

(assert (= bs!834718 (and d!1379875 d!1379729)))

(assert (=> bs!834718 (= (= lt!1679724 lt!1679600) (= lambda!168455 lambda!168436))))

(declare-fun bs!834720 () Bool)

(assert (= bs!834720 (and d!1379875 b!4497854)))

(assert (=> bs!834720 (= (= lt!1679724 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168455 lambda!168434))))

(declare-fun bs!834722 () Bool)

(assert (= bs!834722 (and d!1379875 b!4497617)))

(assert (=> bs!834722 (= (= lt!1679724 lt!1679421) (= lambda!168455 lambda!168399))))

(declare-fun bs!834724 () Bool)

(assert (= bs!834724 (and d!1379875 b!4497455)))

(assert (=> bs!834724 (= (= lt!1679724 lt!1679301) (= lambda!168455 lambda!168346))))

(declare-fun bs!834726 () Bool)

(assert (= bs!834726 (and d!1379875 b!4497618)))

(assert (=> bs!834726 (= (= lt!1679724 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168455 lambda!168397))))

(declare-fun bs!834727 () Bool)

(assert (= bs!834727 (and d!1379875 b!4497950)))

(assert (=> bs!834727 (= (= lt!1679724 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168455 lambda!168440))))

(declare-fun bs!834729 () Bool)

(assert (= bs!834729 (and d!1379875 d!1379411)))

(assert (=> bs!834729 (not (= lambda!168455 lambda!168299))))

(assert (=> bs!834727 (= (= lt!1679724 lt!1679645) (= lambda!168455 lambda!168441))))

(declare-fun bs!834732 () Bool)

(assert (= bs!834732 (and d!1379875 b!4497855)))

(assert (=> bs!834732 (= (= lt!1679724 (extractMap!1178 (t!357617 (toList!4252 lt!1678896)))) (= lambda!168455 lambda!168432))))

(assert (=> bs!834724 (= (= lt!1679724 (extractMap!1178 (t!357617 (toList!4252 lt!1678893)))) (= lambda!168455 lambda!168345))))

(assert (=> bs!834720 (= (= lt!1679724 lt!1679601) (= lambda!168455 lambda!168435))))

(assert (=> bs!834712 (= (= lt!1679724 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) (= lambda!168455 lambda!168453))))

(assert (=> bs!834722 (= (= lt!1679724 (extractMap!1178 (t!357617 (t!357617 (toList!4252 lm!1477))))) (= lambda!168455 lambda!168398))))

(declare-fun bs!834734 () Bool)

(assert (= bs!834734 (and d!1379875 b!4497951)))

(assert (=> bs!834734 (= (= lt!1679724 (extractMap!1178 (t!357617 (toList!4252 lm!1477)))) (= lambda!168455 lambda!168439))))

(declare-fun bs!834735 () Bool)

(assert (= bs!834735 (and d!1379875 d!1379627)))

(assert (=> bs!834735 (= (= lt!1679724 lt!1679420) (= lambda!168455 lambda!168402))))

(assert (=> d!1379875 true))

(declare-fun bm!313056 () Bool)

(declare-fun call!313062 () Unit!91544)

(assert (=> bm!313056 (= call!313062 (lemmaContainsAllItsOwnKeys!303 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))))))

(declare-fun b!4498059 () Bool)

(declare-fun res!1869747 () Bool)

(declare-fun e!2801839 () Bool)

(assert (=> b!4498059 (=> (not res!1869747) (not e!2801839))))

(assert (=> b!4498059 (= res!1869747 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) lambda!168455))))

(declare-fun e!2801840 () ListMap!3513)

(assert (=> b!4498060 (= e!2801840 lt!1679725)))

(declare-fun lt!1679726 () ListMap!3513)

(assert (=> b!4498060 (= lt!1679726 (+!1467 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (h!56351 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))))))

(assert (=> b!4498060 (= lt!1679725 (addToMapMapFromBucket!649 (t!357616 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) (+!1467 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (h!56351 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886))))))))))

(declare-fun lt!1679715 () Unit!91544)

(assert (=> b!4498060 (= lt!1679715 call!313062)))

(assert (=> b!4498060 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) lambda!168453)))

(declare-fun lt!1679719 () Unit!91544)

(assert (=> b!4498060 (= lt!1679719 lt!1679715)))

(assert (=> b!4498060 (forall!10169 (toList!4251 lt!1679726) lambda!168454)))

(declare-fun lt!1679714 () Unit!91544)

(declare-fun Unit!91709 () Unit!91544)

(assert (=> b!4498060 (= lt!1679714 Unit!91709)))

(declare-fun call!313061 () Bool)

(assert (=> b!4498060 call!313061))

(declare-fun lt!1679721 () Unit!91544)

(declare-fun Unit!91710 () Unit!91544)

(assert (=> b!4498060 (= lt!1679721 Unit!91710)))

(declare-fun lt!1679730 () Unit!91544)

(declare-fun Unit!91711 () Unit!91544)

(assert (=> b!4498060 (= lt!1679730 Unit!91711)))

(declare-fun lt!1679716 () Unit!91544)

(assert (=> b!4498060 (= lt!1679716 (forallContained!2422 (toList!4251 lt!1679726) lambda!168454 (h!56351 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))))))

(assert (=> b!4498060 (contains!13200 lt!1679726 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))))))

(declare-fun lt!1679720 () Unit!91544)

(declare-fun Unit!91712 () Unit!91544)

(assert (=> b!4498060 (= lt!1679720 Unit!91712)))

(assert (=> b!4498060 (contains!13200 lt!1679725 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))))))

(declare-fun lt!1679722 () Unit!91544)

(declare-fun Unit!91713 () Unit!91544)

(assert (=> b!4498060 (= lt!1679722 Unit!91713)))

(declare-fun call!313063 () Bool)

(assert (=> b!4498060 call!313063))

(declare-fun lt!1679728 () Unit!91544)

(declare-fun Unit!91714 () Unit!91544)

(assert (=> b!4498060 (= lt!1679728 Unit!91714)))

(assert (=> b!4498060 (forall!10169 (toList!4251 lt!1679726) lambda!168454)))

(declare-fun lt!1679713 () Unit!91544)

(declare-fun Unit!91715 () Unit!91544)

(assert (=> b!4498060 (= lt!1679713 Unit!91715)))

(declare-fun lt!1679717 () Unit!91544)

(declare-fun Unit!91716 () Unit!91544)

(assert (=> b!4498060 (= lt!1679717 Unit!91716)))

(declare-fun lt!1679723 () Unit!91544)

(assert (=> b!4498060 (= lt!1679723 (addForallContainsKeyThenBeforeAdding!303 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679725 (_1!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))) (_2!28755 (h!56351 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886))))))))))

(assert (=> b!4498060 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) lambda!168454)))

(declare-fun lt!1679732 () Unit!91544)

(assert (=> b!4498060 (= lt!1679732 lt!1679723)))

(assert (=> b!4498060 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) lambda!168454)))

(declare-fun lt!1679718 () Unit!91544)

(declare-fun Unit!91717 () Unit!91544)

(assert (=> b!4498060 (= lt!1679718 Unit!91717)))

(declare-fun res!1869746 () Bool)

(assert (=> b!4498060 (= res!1869746 (forall!10169 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lambda!168454))))

(declare-fun e!2801838 () Bool)

(assert (=> b!4498060 (=> (not res!1869746) (not e!2801838))))

(assert (=> b!4498060 e!2801838))

(declare-fun lt!1679733 () Unit!91544)

(declare-fun Unit!91718 () Unit!91544)

(assert (=> b!4498060 (= lt!1679733 Unit!91718)))

(declare-fun bm!313057 () Bool)

(declare-fun c!766602 () Bool)

(assert (=> bm!313057 (= call!313061 (forall!10169 (ite c!766602 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) (t!357616 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))) (ite c!766602 lambda!168452 lambda!168454)))))

(assert (=> b!4498061 (= e!2801840 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))))

(declare-fun lt!1679731 () Unit!91544)

(assert (=> b!4498061 (= lt!1679731 call!313062)))

(assert (=> b!4498061 call!313061))

(declare-fun lt!1679727 () Unit!91544)

(assert (=> b!4498061 (= lt!1679727 lt!1679731)))

(assert (=> b!4498061 call!313063))

(declare-fun lt!1679729 () Unit!91544)

(declare-fun Unit!91719 () Unit!91544)

(assert (=> b!4498061 (= lt!1679729 Unit!91719)))

(declare-fun bm!313058 () Bool)

(assert (=> bm!313058 (= call!313063 (forall!10169 (ite c!766602 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) (ite c!766602 lambda!168452 lambda!168454)))))

(assert (=> d!1379875 e!2801839))

(declare-fun res!1869745 () Bool)

(assert (=> d!1379875 (=> (not res!1869745) (not e!2801839))))

(assert (=> d!1379875 (= res!1869745 (forall!10169 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lambda!168455))))

(assert (=> d!1379875 (= lt!1679724 e!2801840)))

(assert (=> d!1379875 (= c!766602 ((_ is Nil!50534) (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886))))))))

(assert (=> d!1379875 (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))))

(assert (=> d!1379875 (= (addToMapMapFromBucket!649 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) lt!1679724)))

(declare-fun b!4498062 () Bool)

(assert (=> b!4498062 (= e!2801839 (invariantList!981 (toList!4251 lt!1679724)))))

(declare-fun b!4498063 () Bool)

(assert (=> b!4498063 (= e!2801838 (forall!10169 (toList!4251 (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) lambda!168454))))

(assert (= (and d!1379875 c!766602) b!4498061))

(assert (= (and d!1379875 (not c!766602)) b!4498060))

(assert (= (and b!4498060 res!1869746) b!4498063))

(assert (= (or b!4498061 b!4498060) bm!313058))

(assert (= (or b!4498061 b!4498060) bm!313057))

(assert (= (or b!4498061 b!4498060) bm!313056))

(assert (= (and d!1379875 res!1869745) b!4498059))

(assert (= (and b!4498059 res!1869747) b!4498062))

(declare-fun m!5227109 () Bool)

(assert (=> b!4498059 m!5227109))

(declare-fun m!5227111 () Bool)

(assert (=> d!1379875 m!5227111))

(declare-fun m!5227113 () Bool)

(assert (=> d!1379875 m!5227113))

(assert (=> bm!313056 m!5225689))

(declare-fun m!5227115 () Bool)

(assert (=> bm!313056 m!5227115))

(declare-fun m!5227117 () Bool)

(assert (=> bm!313058 m!5227117))

(declare-fun m!5227119 () Bool)

(assert (=> b!4498063 m!5227119))

(declare-fun m!5227121 () Bool)

(assert (=> bm!313057 m!5227121))

(declare-fun m!5227123 () Bool)

(assert (=> b!4498062 m!5227123))

(declare-fun m!5227125 () Bool)

(assert (=> b!4498060 m!5227125))

(declare-fun m!5227127 () Bool)

(assert (=> b!4498060 m!5227127))

(declare-fun m!5227129 () Bool)

(assert (=> b!4498060 m!5227129))

(assert (=> b!4498060 m!5225689))

(assert (=> b!4498060 m!5227127))

(declare-fun m!5227131 () Bool)

(assert (=> b!4498060 m!5227131))

(declare-fun m!5227133 () Bool)

(assert (=> b!4498060 m!5227133))

(assert (=> b!4498060 m!5227125))

(assert (=> b!4498060 m!5225689))

(declare-fun m!5227135 () Bool)

(assert (=> b!4498060 m!5227135))

(declare-fun m!5227137 () Bool)

(assert (=> b!4498060 m!5227137))

(declare-fun m!5227139 () Bool)

(assert (=> b!4498060 m!5227139))

(declare-fun m!5227141 () Bool)

(assert (=> b!4498060 m!5227141))

(assert (=> b!4498060 m!5227119))

(assert (=> b!4498060 m!5227119))

(assert (=> b!4497170 d!1379875))

(declare-fun bs!834747 () Bool)

(declare-fun d!1379891 () Bool)

(assert (= bs!834747 (and d!1379891 d!1379543)))

(declare-fun lambda!168459 () Int)

(assert (=> bs!834747 (= lambda!168459 lambda!168348)))

(declare-fun bs!834748 () Bool)

(assert (= bs!834748 (and d!1379891 start!443724)))

(assert (=> bs!834748 (= lambda!168459 lambda!168249)))

(declare-fun bs!834749 () Bool)

(assert (= bs!834749 (and d!1379891 d!1379629)))

(assert (=> bs!834749 (= lambda!168459 lambda!168405)))

(declare-fun bs!834750 () Bool)

(assert (= bs!834750 (and d!1379891 d!1379433)))

(assert (=> bs!834750 (= lambda!168459 lambda!168301)))

(declare-fun bs!834751 () Bool)

(assert (= bs!834751 (and d!1379891 d!1379421)))

(assert (=> bs!834751 (= lambda!168459 lambda!168300)))

(declare-fun bs!834752 () Bool)

(assert (= bs!834752 (and d!1379891 d!1379355)))

(assert (=> bs!834752 (= lambda!168459 lambda!168282)))

(declare-fun bs!834753 () Bool)

(assert (= bs!834753 (and d!1379891 d!1379437)))

(assert (=> bs!834753 (= lambda!168459 lambda!168304)))

(declare-fun bs!834755 () Bool)

(assert (= bs!834755 (and d!1379891 d!1379333)))

(assert (=> bs!834755 (= lambda!168459 lambda!168275)))

(declare-fun bs!834757 () Bool)

(assert (= bs!834757 (and d!1379891 d!1379739)))

(assert (=> bs!834757 (= lambda!168459 lambda!168437)))

(declare-fun bs!834759 () Bool)

(assert (= bs!834759 (and d!1379891 d!1379443)))

(assert (=> bs!834759 (= lambda!168459 lambda!168305)))

(declare-fun bs!834761 () Bool)

(assert (= bs!834761 (and d!1379891 d!1379273)))

(assert (=> bs!834761 (= lambda!168459 lambda!168252)))

(declare-fun bs!834763 () Bool)

(assert (= bs!834763 (and d!1379891 d!1379329)))

(assert (=> bs!834763 (= lambda!168459 lambda!168266)))

(declare-fun bs!834764 () Bool)

(assert (= bs!834764 (and d!1379891 d!1379309)))

(assert (=> bs!834764 (not (= lambda!168459 lambda!168263))))

(declare-fun bs!834766 () Bool)

(assert (= bs!834766 (and d!1379891 d!1379403)))

(assert (=> bs!834766 (= lambda!168459 lambda!168296)))

(declare-fun bs!834768 () Bool)

(assert (= bs!834768 (and d!1379891 d!1379401)))

(assert (=> bs!834768 (= lambda!168459 lambda!168293)))

(declare-fun lt!1679759 () ListMap!3513)

(assert (=> d!1379891 (invariantList!981 (toList!4251 lt!1679759))))

(declare-fun e!2801853 () ListMap!3513)

(assert (=> d!1379891 (= lt!1679759 e!2801853)))

(declare-fun c!766605 () Bool)

(assert (=> d!1379891 (= c!766605 ((_ is Cons!50535) (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))))

(assert (=> d!1379891 (forall!10167 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))) lambda!168459)))

(assert (=> d!1379891 (= (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) lt!1679759)))

(declare-fun b!4498079 () Bool)

(assert (=> b!4498079 (= e!2801853 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886))))) (extractMap!1178 (t!357617 (t!357617 (toList!4252 (+!1466 lt!1678893 lt!1678886)))))))))

(declare-fun b!4498080 () Bool)

(assert (=> b!4498080 (= e!2801853 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379891 c!766605) b!4498079))

(assert (= (and d!1379891 (not c!766605)) b!4498080))

(declare-fun m!5227143 () Bool)

(assert (=> d!1379891 m!5227143))

(declare-fun m!5227145 () Bool)

(assert (=> d!1379891 m!5227145))

(declare-fun m!5227147 () Bool)

(assert (=> b!4498079 m!5227147))

(assert (=> b!4498079 m!5227147))

(declare-fun m!5227149 () Bool)

(assert (=> b!4498079 m!5227149))

(assert (=> b!4497170 d!1379891))

(declare-fun d!1379893 () Bool)

(declare-fun e!2801854 () Bool)

(assert (=> d!1379893 e!2801854))

(declare-fun res!1869759 () Bool)

(assert (=> d!1379893 (=> res!1869759 e!2801854)))

(declare-fun lt!1679760 () Bool)

(assert (=> d!1379893 (= res!1869759 (not lt!1679760))))

(declare-fun lt!1679762 () Bool)

(assert (=> d!1379893 (= lt!1679760 lt!1679762)))

(declare-fun lt!1679763 () Unit!91544)

(declare-fun e!2801855 () Unit!91544)

(assert (=> d!1379893 (= lt!1679763 e!2801855)))

(declare-fun c!766606 () Bool)

(assert (=> d!1379893 (= c!766606 lt!1679762)))

(assert (=> d!1379893 (= lt!1679762 (containsKey!1672 (toList!4252 lt!1679125) (_1!28756 lt!1678886)))))

(assert (=> d!1379893 (= (contains!13199 lt!1679125 (_1!28756 lt!1678886)) lt!1679760)))

(declare-fun b!4498081 () Bool)

(declare-fun lt!1679761 () Unit!91544)

(assert (=> b!4498081 (= e!2801855 lt!1679761)))

(assert (=> b!4498081 (= lt!1679761 (lemmaContainsKeyImpliesGetValueByKeyDefined!923 (toList!4252 lt!1679125) (_1!28756 lt!1678886)))))

(assert (=> b!4498081 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1679125) (_1!28756 lt!1678886)))))

(declare-fun b!4498082 () Bool)

(declare-fun Unit!91720 () Unit!91544)

(assert (=> b!4498082 (= e!2801855 Unit!91720)))

(declare-fun b!4498083 () Bool)

(assert (=> b!4498083 (= e!2801854 (isDefined!8326 (getValueByKey!1020 (toList!4252 lt!1679125) (_1!28756 lt!1678886))))))

(assert (= (and d!1379893 c!766606) b!4498081))

(assert (= (and d!1379893 (not c!766606)) b!4498082))

(assert (= (and d!1379893 (not res!1869759)) b!4498083))

(declare-fun m!5227151 () Bool)

(assert (=> d!1379893 m!5227151))

(declare-fun m!5227153 () Bool)

(assert (=> b!4498081 m!5227153))

(assert (=> b!4498081 m!5225701))

(assert (=> b!4498081 m!5225701))

(declare-fun m!5227155 () Bool)

(assert (=> b!4498081 m!5227155))

(assert (=> b!4498083 m!5225701))

(assert (=> b!4498083 m!5225701))

(assert (=> b!4498083 m!5227155))

(assert (=> d!1379435 d!1379893))

(declare-fun b!4498085 () Bool)

(declare-fun e!2801856 () Option!11040)

(declare-fun e!2801857 () Option!11040)

(assert (=> b!4498085 (= e!2801856 e!2801857)))

(declare-fun c!766608 () Bool)

(assert (=> b!4498085 (= c!766608 (and ((_ is Cons!50535) lt!1679124) (not (= (_1!28756 (h!56352 lt!1679124)) (_1!28756 lt!1678886)))))))

(declare-fun b!4498084 () Bool)

(assert (=> b!4498084 (= e!2801856 (Some!11039 (_2!28756 (h!56352 lt!1679124))))))

(declare-fun d!1379895 () Bool)

(declare-fun c!766607 () Bool)

(assert (=> d!1379895 (= c!766607 (and ((_ is Cons!50535) lt!1679124) (= (_1!28756 (h!56352 lt!1679124)) (_1!28756 lt!1678886))))))

(assert (=> d!1379895 (= (getValueByKey!1020 lt!1679124 (_1!28756 lt!1678886)) e!2801856)))

(declare-fun b!4498086 () Bool)

(assert (=> b!4498086 (= e!2801857 (getValueByKey!1020 (t!357617 lt!1679124) (_1!28756 lt!1678886)))))

(declare-fun b!4498087 () Bool)

(assert (=> b!4498087 (= e!2801857 None!11039)))

(assert (= (and d!1379895 c!766607) b!4498084))

(assert (= (and d!1379895 (not c!766607)) b!4498085))

(assert (= (and b!4498085 c!766608) b!4498086))

(assert (= (and b!4498085 (not c!766608)) b!4498087))

(declare-fun m!5227157 () Bool)

(assert (=> b!4498086 m!5227157))

(assert (=> d!1379435 d!1379895))

(declare-fun d!1379897 () Bool)

(assert (=> d!1379897 (= (getValueByKey!1020 lt!1679124 (_1!28756 lt!1678886)) (Some!11039 (_2!28756 lt!1678886)))))

(declare-fun lt!1679764 () Unit!91544)

(assert (=> d!1379897 (= lt!1679764 (choose!29083 lt!1679124 (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))

(declare-fun e!2801858 () Bool)

(assert (=> d!1379897 e!2801858))

(declare-fun res!1869760 () Bool)

(assert (=> d!1379897 (=> (not res!1869760) (not e!2801858))))

(assert (=> d!1379897 (= res!1869760 (isStrictlySorted!395 lt!1679124))))

(assert (=> d!1379897 (= (lemmaContainsTupThenGetReturnValue!630 lt!1679124 (_1!28756 lt!1678886) (_2!28756 lt!1678886)) lt!1679764)))

(declare-fun b!4498088 () Bool)

(declare-fun res!1869761 () Bool)

(assert (=> b!4498088 (=> (not res!1869761) (not e!2801858))))

(assert (=> b!4498088 (= res!1869761 (containsKey!1672 lt!1679124 (_1!28756 lt!1678886)))))

(declare-fun b!4498089 () Bool)

(assert (=> b!4498089 (= e!2801858 (contains!13201 lt!1679124 (tuple2!50925 (_1!28756 lt!1678886) (_2!28756 lt!1678886))))))

(assert (= (and d!1379897 res!1869760) b!4498088))

(assert (= (and b!4498088 res!1869761) b!4498089))

(assert (=> d!1379897 m!5225695))

(declare-fun m!5227167 () Bool)

(assert (=> d!1379897 m!5227167))

(declare-fun m!5227171 () Bool)

(assert (=> d!1379897 m!5227171))

(declare-fun m!5227175 () Bool)

(assert (=> b!4498088 m!5227175))

(declare-fun m!5227179 () Bool)

(assert (=> b!4498089 m!5227179))

(assert (=> d!1379435 d!1379897))

(declare-fun bm!313062 () Bool)

(declare-fun call!313068 () List!50659)

(declare-fun call!313067 () List!50659)

(assert (=> bm!313062 (= call!313068 call!313067)))

(declare-fun bm!313063 () Bool)

(declare-fun call!313069 () List!50659)

(assert (=> bm!313063 (= call!313067 call!313069)))

(declare-fun b!4498090 () Bool)

(declare-fun e!2801861 () List!50659)

(assert (=> b!4498090 (= e!2801861 call!313067)))

(declare-fun b!4498091 () Bool)

(declare-fun e!2801862 () List!50659)

(assert (=> b!4498091 (= e!2801862 call!313068)))

(declare-fun b!4498092 () Bool)

(declare-fun e!2801860 () List!50659)

(assert (=> b!4498092 (= e!2801860 call!313069)))

(declare-fun b!4498093 () Bool)

(declare-fun c!766609 () Bool)

(assert (=> b!4498093 (= c!766609 (and ((_ is Cons!50535) (toList!4252 lt!1678893)) (bvsgt (_1!28756 (h!56352 (toList!4252 lt!1678893))) (_1!28756 lt!1678886))))))

(assert (=> b!4498093 (= e!2801861 e!2801862)))

(declare-fun b!4498094 () Bool)

(assert (=> b!4498094 (= e!2801862 call!313068)))

(declare-fun b!4498095 () Bool)

(declare-fun e!2801859 () List!50659)

(assert (=> b!4498095 (= e!2801859 (insertStrictlySorted!372 (t!357617 (toList!4252 lt!1678893)) (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))

(declare-fun b!4498096 () Bool)

(declare-fun res!1869762 () Bool)

(declare-fun e!2801863 () Bool)

(assert (=> b!4498096 (=> (not res!1869762) (not e!2801863))))

(declare-fun lt!1679765 () List!50659)

(assert (=> b!4498096 (= res!1869762 (containsKey!1672 lt!1679765 (_1!28756 lt!1678886)))))

(declare-fun d!1379899 () Bool)

(assert (=> d!1379899 e!2801863))

(declare-fun res!1869763 () Bool)

(assert (=> d!1379899 (=> (not res!1869763) (not e!2801863))))

(assert (=> d!1379899 (= res!1869763 (isStrictlySorted!395 lt!1679765))))

(assert (=> d!1379899 (= lt!1679765 e!2801860)))

(declare-fun c!766611 () Bool)

(assert (=> d!1379899 (= c!766611 (and ((_ is Cons!50535) (toList!4252 lt!1678893)) (bvslt (_1!28756 (h!56352 (toList!4252 lt!1678893))) (_1!28756 lt!1678886))))))

(assert (=> d!1379899 (isStrictlySorted!395 (toList!4252 lt!1678893))))

(assert (=> d!1379899 (= (insertStrictlySorted!372 (toList!4252 lt!1678893) (_1!28756 lt!1678886) (_2!28756 lt!1678886)) lt!1679765)))

(declare-fun c!766612 () Bool)

(declare-fun b!4498097 () Bool)

(assert (=> b!4498097 (= e!2801859 (ite c!766612 (t!357617 (toList!4252 lt!1678893)) (ite c!766609 (Cons!50535 (h!56352 (toList!4252 lt!1678893)) (t!357617 (toList!4252 lt!1678893))) Nil!50535)))))

(declare-fun b!4498098 () Bool)

(assert (=> b!4498098 (= e!2801863 (contains!13201 lt!1679765 (tuple2!50925 (_1!28756 lt!1678886) (_2!28756 lt!1678886))))))

(declare-fun b!4498099 () Bool)

(assert (=> b!4498099 (= e!2801860 e!2801861)))

(assert (=> b!4498099 (= c!766612 (and ((_ is Cons!50535) (toList!4252 lt!1678893)) (= (_1!28756 (h!56352 (toList!4252 lt!1678893))) (_1!28756 lt!1678886))))))

(declare-fun bm!313064 () Bool)

(assert (=> bm!313064 (= call!313069 ($colon$colon!889 e!2801859 (ite c!766611 (h!56352 (toList!4252 lt!1678893)) (tuple2!50925 (_1!28756 lt!1678886) (_2!28756 lt!1678886)))))))

(declare-fun c!766610 () Bool)

(assert (=> bm!313064 (= c!766610 c!766611)))

(assert (= (and d!1379899 c!766611) b!4498092))

(assert (= (and d!1379899 (not c!766611)) b!4498099))

(assert (= (and b!4498099 c!766612) b!4498090))

(assert (= (and b!4498099 (not c!766612)) b!4498093))

(assert (= (and b!4498093 c!766609) b!4498091))

(assert (= (and b!4498093 (not c!766609)) b!4498094))

(assert (= (or b!4498091 b!4498094) bm!313062))

(assert (= (or b!4498090 bm!313062) bm!313063))

(assert (= (or b!4498092 bm!313063) bm!313064))

(assert (= (and bm!313064 c!766610) b!4498095))

(assert (= (and bm!313064 (not c!766610)) b!4498097))

(assert (= (and d!1379899 res!1869763) b!4498096))

(assert (= (and b!4498096 res!1869762) b!4498098))

(declare-fun m!5227201 () Bool)

(assert (=> b!4498098 m!5227201))

(declare-fun m!5227203 () Bool)

(assert (=> bm!313064 m!5227203))

(declare-fun m!5227205 () Bool)

(assert (=> b!4498096 m!5227205))

(declare-fun m!5227207 () Bool)

(assert (=> d!1379899 m!5227207))

(assert (=> d!1379899 m!5225875))

(declare-fun m!5227209 () Bool)

(assert (=> b!4498095 m!5227209))

(assert (=> d!1379435 d!1379899))

(declare-fun d!1379903 () Bool)

(assert (=> d!1379903 (= (invariantList!981 (toList!4251 lt!1679138)) (noDuplicatedKeys!240 (toList!4251 lt!1679138)))))

(declare-fun bs!834781 () Bool)

(assert (= bs!834781 d!1379903))

(declare-fun m!5227211 () Bool)

(assert (=> bs!834781 m!5227211))

(assert (=> d!1379443 d!1379903))

(declare-fun d!1379905 () Bool)

(declare-fun res!1869764 () Bool)

(declare-fun e!2801865 () Bool)

(assert (=> d!1379905 (=> res!1869764 e!2801865)))

(assert (=> d!1379905 (= res!1869764 ((_ is Nil!50535) (toList!4252 lm!1477)))))

(assert (=> d!1379905 (= (forall!10167 (toList!4252 lm!1477) lambda!168305) e!2801865)))

(declare-fun b!4498102 () Bool)

(declare-fun e!2801866 () Bool)

(assert (=> b!4498102 (= e!2801865 e!2801866)))

(declare-fun res!1869765 () Bool)

(assert (=> b!4498102 (=> (not res!1869765) (not e!2801866))))

(assert (=> b!4498102 (= res!1869765 (dynLambda!21101 lambda!168305 (h!56352 (toList!4252 lm!1477))))))

(declare-fun b!4498103 () Bool)

(assert (=> b!4498103 (= e!2801866 (forall!10167 (t!357617 (toList!4252 lm!1477)) lambda!168305))))

(assert (= (and d!1379905 (not res!1869764)) b!4498102))

(assert (= (and b!4498102 res!1869765) b!4498103))

(declare-fun b_lambda!152109 () Bool)

(assert (=> (not b_lambda!152109) (not b!4498102)))

(declare-fun m!5227213 () Bool)

(assert (=> b!4498102 m!5227213))

(declare-fun m!5227215 () Bool)

(assert (=> b!4498103 m!5227215))

(assert (=> d!1379443 d!1379905))

(declare-fun d!1379907 () Bool)

(declare-fun res!1869766 () Bool)

(declare-fun e!2801867 () Bool)

(assert (=> d!1379907 (=> res!1869766 e!2801867)))

(assert (=> d!1379907 (= res!1869766 (and ((_ is Cons!50534) (toList!4251 lt!1678891)) (= (_1!28755 (h!56351 (toList!4251 lt!1678891))) key!3287)))))

(assert (=> d!1379907 (= (containsKey!1674 (toList!4251 lt!1678891) key!3287) e!2801867)))

(declare-fun b!4498104 () Bool)

(declare-fun e!2801868 () Bool)

(assert (=> b!4498104 (= e!2801867 e!2801868)))

(declare-fun res!1869767 () Bool)

(assert (=> b!4498104 (=> (not res!1869767) (not e!2801868))))

(assert (=> b!4498104 (= res!1869767 ((_ is Cons!50534) (toList!4251 lt!1678891)))))

(declare-fun b!4498105 () Bool)

(assert (=> b!4498105 (= e!2801868 (containsKey!1674 (t!357616 (toList!4251 lt!1678891)) key!3287))))

(assert (= (and d!1379907 (not res!1869766)) b!4498104))

(assert (= (and b!4498104 res!1869767) b!4498105))

(declare-fun m!5227217 () Bool)

(assert (=> b!4498105 m!5227217))

(assert (=> b!4497128 d!1379907))

(declare-fun d!1379909 () Bool)

(assert (=> d!1379909 (containsKey!1674 (toList!4251 lt!1678891) key!3287)))

(declare-fun lt!1679767 () Unit!91544)

(assert (=> d!1379909 (= lt!1679767 (choose!29085 (toList!4251 lt!1678891) key!3287))))

(assert (=> d!1379909 (invariantList!981 (toList!4251 lt!1678891))))

(assert (=> d!1379909 (= (lemmaInGetKeysListThenContainsKey!428 (toList!4251 lt!1678891) key!3287) lt!1679767)))

(declare-fun bs!834790 () Bool)

(assert (= bs!834790 d!1379909))

(assert (=> bs!834790 m!5225591))

(declare-fun m!5227227 () Bool)

(assert (=> bs!834790 m!5227227))

(assert (=> bs!834790 m!5226613))

(assert (=> b!4497128 d!1379909))

(declare-fun d!1379913 () Bool)

(assert (=> d!1379913 (= (head!9340 (toList!4252 lm!1477)) (h!56352 (toList!4252 lm!1477)))))

(assert (=> d!1379427 d!1379913))

(declare-fun d!1379917 () Bool)

(declare-fun e!2801872 () Bool)

(assert (=> d!1379917 e!2801872))

(declare-fun res!1869769 () Bool)

(assert (=> d!1379917 (=> (not res!1869769) (not e!2801872))))

(declare-fun lt!1679768 () ListMap!3513)

(assert (=> d!1379917 (= res!1869769 (not (contains!13200 lt!1679768 key!3287)))))

(assert (=> d!1379917 (= lt!1679768 (ListMap!3514 (removePresrvNoDuplicatedKeys!105 (toList!4251 (extractMap!1178 (toList!4252 lt!1678893))) key!3287)))))

(assert (=> d!1379917 (= (-!348 (extractMap!1178 (toList!4252 lt!1678893)) key!3287) lt!1679768)))

(declare-fun b!4498110 () Bool)

(assert (=> b!4498110 (= e!2801872 (= ((_ map and) (content!8251 (keys!17518 (extractMap!1178 (toList!4252 lt!1678893)))) ((_ map not) (store ((as const (Array K!11945 Bool)) false) key!3287 true))) (content!8251 (keys!17518 lt!1679768))))))

(assert (= (and d!1379917 res!1869769) b!4498110))

(declare-fun m!5227233 () Bool)

(assert (=> d!1379917 m!5227233))

(declare-fun m!5227237 () Bool)

(assert (=> d!1379917 m!5227237))

(assert (=> b!4498110 m!5226993))

(declare-fun m!5227239 () Bool)

(assert (=> b!4498110 m!5227239))

(declare-fun m!5227241 () Bool)

(assert (=> b!4498110 m!5227241))

(declare-fun m!5227243 () Bool)

(assert (=> b!4498110 m!5227243))

(assert (=> b!4498110 m!5225671))

(assert (=> b!4498110 m!5227241))

(assert (=> b!4498110 m!5225109))

(assert (=> b!4498110 m!5226993))

(assert (=> d!1379437 d!1379917))

(assert (=> d!1379437 d!1379355))

(declare-fun d!1379923 () Bool)

(assert (=> d!1379923 (eq!579 (extractMap!1178 (toList!4252 (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178)))) (-!348 (extractMap!1178 (toList!4252 lt!1678893)) key!3287))))

(assert (=> d!1379923 true))

(declare-fun _$8!590 () Unit!91544)

(assert (=> d!1379923 (= (choose!29082 lt!1678893 hash!344 newBucket!178 key!3287 hashF!1107) _$8!590)))

(declare-fun bs!834850 () Bool)

(assert (= bs!834850 d!1379923))

(assert (=> bs!834850 m!5225109))

(assert (=> bs!834850 m!5225713))

(assert (=> bs!834850 m!5225711))

(assert (=> bs!834850 m!5225713))

(assert (=> bs!834850 m!5225707))

(assert (=> bs!834850 m!5225715))

(assert (=> bs!834850 m!5225109))

(assert (=> bs!834850 m!5225707))

(assert (=> d!1379437 d!1379923))

(declare-fun bs!834851 () Bool)

(declare-fun d!1379943 () Bool)

(assert (= bs!834851 (and d!1379943 start!443724)))

(declare-fun lambda!168469 () Int)

(assert (=> bs!834851 (= lambda!168469 lambda!168249)))

(declare-fun bs!834852 () Bool)

(assert (= bs!834852 (and d!1379943 d!1379629)))

(assert (=> bs!834852 (= lambda!168469 lambda!168405)))

(declare-fun bs!834853 () Bool)

(assert (= bs!834853 (and d!1379943 d!1379433)))

(assert (=> bs!834853 (= lambda!168469 lambda!168301)))

(declare-fun bs!834854 () Bool)

(assert (= bs!834854 (and d!1379943 d!1379421)))

(assert (=> bs!834854 (= lambda!168469 lambda!168300)))

(declare-fun bs!834855 () Bool)

(assert (= bs!834855 (and d!1379943 d!1379355)))

(assert (=> bs!834855 (= lambda!168469 lambda!168282)))

(declare-fun bs!834856 () Bool)

(assert (= bs!834856 (and d!1379943 d!1379437)))

(assert (=> bs!834856 (= lambda!168469 lambda!168304)))

(declare-fun bs!834857 () Bool)

(assert (= bs!834857 (and d!1379943 d!1379891)))

(assert (=> bs!834857 (= lambda!168469 lambda!168459)))

(declare-fun bs!834858 () Bool)

(assert (= bs!834858 (and d!1379943 d!1379543)))

(assert (=> bs!834858 (= lambda!168469 lambda!168348)))

(declare-fun bs!834859 () Bool)

(assert (= bs!834859 (and d!1379943 d!1379333)))

(assert (=> bs!834859 (= lambda!168469 lambda!168275)))

(declare-fun bs!834860 () Bool)

(assert (= bs!834860 (and d!1379943 d!1379739)))

(assert (=> bs!834860 (= lambda!168469 lambda!168437)))

(declare-fun bs!834861 () Bool)

(assert (= bs!834861 (and d!1379943 d!1379443)))

(assert (=> bs!834861 (= lambda!168469 lambda!168305)))

(declare-fun bs!834862 () Bool)

(assert (= bs!834862 (and d!1379943 d!1379273)))

(assert (=> bs!834862 (= lambda!168469 lambda!168252)))

(declare-fun bs!834863 () Bool)

(assert (= bs!834863 (and d!1379943 d!1379329)))

(assert (=> bs!834863 (= lambda!168469 lambda!168266)))

(declare-fun bs!834865 () Bool)

(assert (= bs!834865 (and d!1379943 d!1379309)))

(assert (=> bs!834865 (not (= lambda!168469 lambda!168263))))

(declare-fun bs!834867 () Bool)

(assert (= bs!834867 (and d!1379943 d!1379403)))

(assert (=> bs!834867 (= lambda!168469 lambda!168296)))

(declare-fun bs!834869 () Bool)

(assert (= bs!834869 (and d!1379943 d!1379401)))

(assert (=> bs!834869 (= lambda!168469 lambda!168293)))

(declare-fun lt!1679805 () ListMap!3513)

(assert (=> d!1379943 (invariantList!981 (toList!4251 lt!1679805))))

(declare-fun e!2801894 () ListMap!3513)

(assert (=> d!1379943 (= lt!1679805 e!2801894)))

(declare-fun c!766627 () Bool)

(assert (=> d!1379943 (= c!766627 ((_ is Cons!50535) (toList!4252 (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178)))))))

(assert (=> d!1379943 (forall!10167 (toList!4252 (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178))) lambda!168469)))

(assert (=> d!1379943 (= (extractMap!1178 (toList!4252 (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178)))) lt!1679805)))

(declare-fun b!4498149 () Bool)

(assert (=> b!4498149 (= e!2801894 (addToMapMapFromBucket!649 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178))))) (extractMap!1178 (t!357617 (toList!4252 (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178)))))))))

(declare-fun b!4498150 () Bool)

(assert (=> b!4498150 (= e!2801894 (ListMap!3514 Nil!50534))))

(assert (= (and d!1379943 c!766627) b!4498149))

(assert (= (and d!1379943 (not c!766627)) b!4498150))

(declare-fun m!5227309 () Bool)

(assert (=> d!1379943 m!5227309))

(declare-fun m!5227311 () Bool)

(assert (=> d!1379943 m!5227311))

(declare-fun m!5227313 () Bool)

(assert (=> b!4498149 m!5227313))

(assert (=> b!4498149 m!5227313))

(declare-fun m!5227315 () Bool)

(assert (=> b!4498149 m!5227315))

(assert (=> d!1379437 d!1379943))

(declare-fun d!1379945 () Bool)

(declare-fun res!1869785 () Bool)

(declare-fun e!2801895 () Bool)

(assert (=> d!1379945 (=> res!1869785 e!2801895)))

(assert (=> d!1379945 (= res!1869785 ((_ is Nil!50535) (toList!4252 lt!1678893)))))

(assert (=> d!1379945 (= (forall!10167 (toList!4252 lt!1678893) lambda!168304) e!2801895)))

(declare-fun b!4498151 () Bool)

(declare-fun e!2801896 () Bool)

(assert (=> b!4498151 (= e!2801895 e!2801896)))

(declare-fun res!1869786 () Bool)

(assert (=> b!4498151 (=> (not res!1869786) (not e!2801896))))

(assert (=> b!4498151 (= res!1869786 (dynLambda!21101 lambda!168304 (h!56352 (toList!4252 lt!1678893))))))

(declare-fun b!4498152 () Bool)

(assert (=> b!4498152 (= e!2801896 (forall!10167 (t!357617 (toList!4252 lt!1678893)) lambda!168304))))

(assert (= (and d!1379945 (not res!1869785)) b!4498151))

(assert (= (and b!4498151 res!1869786) b!4498152))

(declare-fun b_lambda!152113 () Bool)

(assert (=> (not b_lambda!152113) (not b!4498151)))

(declare-fun m!5227317 () Bool)

(assert (=> b!4498151 m!5227317))

(declare-fun m!5227319 () Bool)

(assert (=> b!4498152 m!5227319))

(assert (=> d!1379437 d!1379945))

(declare-fun d!1379947 () Bool)

(declare-fun e!2801897 () Bool)

(assert (=> d!1379947 e!2801897))

(declare-fun res!1869788 () Bool)

(assert (=> d!1379947 (=> (not res!1869788) (not e!2801897))))

(declare-fun lt!1679808 () ListLongMap!2883)

(assert (=> d!1379947 (= res!1869788 (contains!13199 lt!1679808 (_1!28756 (tuple2!50925 hash!344 newBucket!178))))))

(declare-fun lt!1679807 () List!50659)

(assert (=> d!1379947 (= lt!1679808 (ListLongMap!2884 lt!1679807))))

(declare-fun lt!1679806 () Unit!91544)

(declare-fun lt!1679809 () Unit!91544)

(assert (=> d!1379947 (= lt!1679806 lt!1679809)))

(assert (=> d!1379947 (= (getValueByKey!1020 lt!1679807 (_1!28756 (tuple2!50925 hash!344 newBucket!178))) (Some!11039 (_2!28756 (tuple2!50925 hash!344 newBucket!178))))))

(assert (=> d!1379947 (= lt!1679809 (lemmaContainsTupThenGetReturnValue!630 lt!1679807 (_1!28756 (tuple2!50925 hash!344 newBucket!178)) (_2!28756 (tuple2!50925 hash!344 newBucket!178))))))

(assert (=> d!1379947 (= lt!1679807 (insertStrictlySorted!372 (toList!4252 lt!1678893) (_1!28756 (tuple2!50925 hash!344 newBucket!178)) (_2!28756 (tuple2!50925 hash!344 newBucket!178))))))

(assert (=> d!1379947 (= (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178)) lt!1679808)))

(declare-fun b!4498153 () Bool)

(declare-fun res!1869787 () Bool)

(assert (=> b!4498153 (=> (not res!1869787) (not e!2801897))))

(assert (=> b!4498153 (= res!1869787 (= (getValueByKey!1020 (toList!4252 lt!1679808) (_1!28756 (tuple2!50925 hash!344 newBucket!178))) (Some!11039 (_2!28756 (tuple2!50925 hash!344 newBucket!178)))))))

(declare-fun b!4498154 () Bool)

(assert (=> b!4498154 (= e!2801897 (contains!13201 (toList!4252 lt!1679808) (tuple2!50925 hash!344 newBucket!178)))))

(assert (= (and d!1379947 res!1869788) b!4498153))

(assert (= (and b!4498153 res!1869787) b!4498154))

(declare-fun m!5227321 () Bool)

(assert (=> d!1379947 m!5227321))

(declare-fun m!5227323 () Bool)

(assert (=> d!1379947 m!5227323))

(declare-fun m!5227325 () Bool)

(assert (=> d!1379947 m!5227325))

(declare-fun m!5227327 () Bool)

(assert (=> d!1379947 m!5227327))

(declare-fun m!5227329 () Bool)

(assert (=> b!4498153 m!5227329))

(declare-fun m!5227331 () Bool)

(assert (=> b!4498154 m!5227331))

(assert (=> d!1379437 d!1379947))

(declare-fun d!1379949 () Bool)

(assert (=> d!1379949 (= (eq!579 (extractMap!1178 (toList!4252 (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178)))) (-!348 (extractMap!1178 (toList!4252 lt!1678893)) key!3287)) (= (content!8250 (toList!4251 (extractMap!1178 (toList!4252 (+!1466 lt!1678893 (tuple2!50925 hash!344 newBucket!178)))))) (content!8250 (toList!4251 (-!348 (extractMap!1178 (toList!4252 lt!1678893)) key!3287)))))))

(declare-fun bs!834882 () Bool)

(assert (= bs!834882 d!1379949))

(declare-fun m!5227333 () Bool)

(assert (=> bs!834882 m!5227333))

(declare-fun m!5227335 () Bool)

(assert (=> bs!834882 m!5227335))

(assert (=> d!1379437 d!1379949))

(assert (=> d!1379405 d!1379907))

(assert (=> b!4496897 d!1379321))

(declare-fun e!2801898 () Bool)

(declare-fun tp!1337450 () Bool)

(declare-fun b!4498155 () Bool)

(assert (=> b!4498155 (= e!2801898 (and tp_is_empty!27765 tp_is_empty!27767 tp!1337450))))

(assert (=> b!4497194 (= tp!1337448 e!2801898)))

(assert (= (and b!4497194 ((_ is Cons!50534) (_2!28756 (h!56352 (toList!4252 lm!1477))))) b!4498155))

(declare-fun b!4498156 () Bool)

(declare-fun e!2801899 () Bool)

(declare-fun tp!1337451 () Bool)

(declare-fun tp!1337452 () Bool)

(assert (=> b!4498156 (= e!2801899 (and tp!1337451 tp!1337452))))

(assert (=> b!4497194 (= tp!1337449 e!2801899)))

(assert (= (and b!4497194 ((_ is Cons!50535) (t!357617 (toList!4252 lm!1477)))) b!4498156))

(declare-fun b!4498157 () Bool)

(declare-fun e!2801900 () Bool)

(declare-fun tp!1337453 () Bool)

(assert (=> b!4498157 (= e!2801900 (and tp_is_empty!27765 tp_is_empty!27767 tp!1337453))))

(assert (=> b!4497189 (= tp!1337443 e!2801900)))

(assert (= (and b!4497189 ((_ is Cons!50534) (t!357616 (t!357616 newBucket!178)))) b!4498157))

(declare-fun b_lambda!152115 () Bool)

(assert (= b_lambda!152109 (or d!1379443 b_lambda!152115)))

(declare-fun bs!834883 () Bool)

(declare-fun d!1379951 () Bool)

(assert (= bs!834883 (and d!1379951 d!1379443)))

(assert (=> bs!834883 (= (dynLambda!21101 lambda!168305 (h!56352 (toList!4252 lm!1477))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lm!1477)))))))

(assert (=> bs!834883 m!5225745))

(assert (=> b!4498102 d!1379951))

(declare-fun b_lambda!152117 () Bool)

(assert (= b_lambda!152095 (or d!1379329 b_lambda!152117)))

(declare-fun bs!834884 () Bool)

(declare-fun d!1379955 () Bool)

(assert (= bs!834884 (and d!1379955 d!1379329)))

(assert (=> bs!834884 (= (dynLambda!21101 lambda!168266 (h!56352 (toList!4252 lt!1678893))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lt!1678893)))))))

(assert (=> bs!834884 m!5226037))

(assert (=> b!4497939 d!1379955))

(declare-fun b_lambda!152119 () Bool)

(assert (= b_lambda!152073 (or start!443724 b_lambda!152119)))

(declare-fun bs!834885 () Bool)

(declare-fun d!1379957 () Bool)

(assert (= bs!834885 (and d!1379957 start!443724)))

(assert (=> bs!834885 (= (dynLambda!21101 lambda!168249 (h!56352 (t!357617 (toList!4252 lm!1477)))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))))))

(assert (=> bs!834885 m!5226305))

(assert (=> b!4497572 d!1379957))

(declare-fun b_lambda!152121 () Bool)

(assert (= b_lambda!152103 (or d!1379411 b_lambda!152121)))

(declare-fun bs!834886 () Bool)

(declare-fun d!1379959 () Bool)

(assert (= bs!834886 (and d!1379959 d!1379411)))

(assert (=> bs!834886 (= (dynLambda!21103 lambda!168299 (h!56351 newBucket!178)) (= (hash!2675 hashF!1107 (_1!28755 (h!56351 newBucket!178))) hash!344))))

(declare-fun m!5227371 () Bool)

(assert (=> bs!834886 m!5227371))

(assert (=> b!4498047 d!1379959))

(declare-fun b_lambda!152123 () Bool)

(assert (= b_lambda!152085 (or d!1379421 b_lambda!152123)))

(declare-fun bs!834889 () Bool)

(declare-fun d!1379961 () Bool)

(assert (= bs!834889 (and d!1379961 d!1379421)))

(assert (=> bs!834889 (= (dynLambda!21101 lambda!168300 (h!56352 (toList!4252 lt!1678896))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lt!1678896)))))))

(assert (=> bs!834889 m!5226675))

(assert (=> b!4497851 d!1379961))

(declare-fun b_lambda!152125 () Bool)

(assert (= b_lambda!152079 (or d!1379333 b_lambda!152125)))

(declare-fun bs!834891 () Bool)

(declare-fun d!1379963 () Bool)

(assert (= bs!834891 (and d!1379963 d!1379333)))

(assert (=> bs!834891 (= (dynLambda!21101 lambda!168275 (h!56352 (toList!4252 lm!1477))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lm!1477)))))))

(assert (=> bs!834891 m!5225745))

(assert (=> b!4497606 d!1379963))

(declare-fun b_lambda!152127 () Bool)

(assert (= b_lambda!152097 (or start!443724 b_lambda!152127)))

(assert (=> d!1379815 d!1379447))

(declare-fun b_lambda!152129 () Bool)

(assert (= b_lambda!152091 (or d!1379309 b_lambda!152129)))

(declare-fun bs!834893 () Bool)

(declare-fun d!1379965 () Bool)

(assert (= bs!834893 (and d!1379965 d!1379309)))

(assert (=> bs!834893 (= (dynLambda!21101 lambda!168263 (h!56352 (toList!4252 lm!1477))) (allKeysSameHash!976 (_2!28756 (h!56352 (toList!4252 lm!1477))) (_1!28756 (h!56352 (toList!4252 lm!1477))) hashF!1107))))

(declare-fun m!5227373 () Bool)

(assert (=> bs!834893 m!5227373))

(assert (=> b!4497934 d!1379965))

(declare-fun b_lambda!152131 () Bool)

(assert (= b_lambda!152099 (or d!1379403 b_lambda!152131)))

(declare-fun bs!834896 () Bool)

(declare-fun d!1379967 () Bool)

(assert (= bs!834896 (and d!1379967 d!1379403)))

(assert (=> bs!834896 (= (dynLambda!21101 lambda!168296 (h!56352 (toList!4252 lt!1678893))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lt!1678893)))))))

(assert (=> bs!834896 m!5226037))

(assert (=> b!4498022 d!1379967))

(declare-fun b_lambda!152133 () Bool)

(assert (= b_lambda!152067 (or d!1379433 b_lambda!152133)))

(declare-fun bs!834899 () Bool)

(declare-fun d!1379969 () Bool)

(assert (= bs!834899 (and d!1379969 d!1379433)))

(assert (=> bs!834899 (= (dynLambda!21101 lambda!168301 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886)))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 (+!1466 lt!1678893 lt!1678886))))))))

(assert (=> bs!834899 m!5227113))

(assert (=> b!4497302 d!1379969))

(declare-fun b_lambda!152135 () Bool)

(assert (= b_lambda!152075 (or d!1379273 b_lambda!152135)))

(declare-fun bs!834901 () Bool)

(declare-fun d!1379971 () Bool)

(assert (= bs!834901 (and d!1379971 d!1379273)))

(assert (=> bs!834901 (= (dynLambda!21101 lambda!168252 (h!56352 (toList!4252 lm!1477))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lm!1477)))))))

(assert (=> bs!834901 m!5225745))

(assert (=> b!4497583 d!1379971))

(declare-fun b_lambda!152137 () Bool)

(assert (= b_lambda!152077 (or d!1379401 b_lambda!152137)))

(declare-fun bs!834903 () Bool)

(declare-fun d!1379973 () Bool)

(assert (= bs!834903 (and d!1379973 d!1379401)))

(assert (=> bs!834903 (= (dynLambda!21101 lambda!168293 (h!56352 (t!357617 (toList!4252 lm!1477)))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (t!357617 (toList!4252 lm!1477))))))))

(assert (=> bs!834903 m!5226305))

(assert (=> b!4497591 d!1379973))

(declare-fun b_lambda!152139 () Bool)

(assert (= b_lambda!152113 (or d!1379437 b_lambda!152139)))

(declare-fun bs!834905 () Bool)

(declare-fun d!1379975 () Bool)

(assert (= bs!834905 (and d!1379975 d!1379437)))

(assert (=> bs!834905 (= (dynLambda!21101 lambda!168304 (h!56352 (toList!4252 lt!1678893))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lt!1678893)))))))

(assert (=> bs!834905 m!5226037))

(assert (=> b!4498151 d!1379975))

(declare-fun b_lambda!152141 () Bool)

(assert (= b_lambda!152065 (or d!1379355 b_lambda!152141)))

(declare-fun bs!834908 () Bool)

(declare-fun d!1379977 () Bool)

(assert (= bs!834908 (and d!1379977 d!1379355)))

(assert (=> bs!834908 (= (dynLambda!21101 lambda!168282 (h!56352 (toList!4252 lt!1678893))) (noDuplicateKeys!1122 (_2!28756 (h!56352 (toList!4252 lt!1678893)))))))

(assert (=> bs!834908 m!5226037))

(assert (=> b!4497201 d!1379977))

(check-sat (not d!1379571) (not b!4497901) (not d!1379567) (not b!4497501) (not b!4497211) (not b!4497659) (not b!4497607) (not b!4497997) (not b!4497537) (not b_lambda!152133) (not b!4497831) (not bs!834905) (not b!4497313) (not b!4497330) (not d!1379627) (not b_lambda!152063) (not b!4497527) (not b!4497573) (not b!4497928) (not b!4497204) (not b_lambda!152141) (not d!1379899) (not b!4497625) (not b!4498079) (not b!4497681) (not b!4497661) (not b!4497982) (not b!4498063) (not b!4498110) (not b!4497835) (not b!4497544) (not bm!313045) (not b!4497658) (not bm!312963) (not b!4498003) (not b!4497968) (not b!4498155) (not b!4497461) (not b!4497687) (not bm!313037) (not b!4497488) (not b!4497599) (not d!1379949) (not d!1379649) (not b!4497663) (not d!1379647) (not b!4497695) (not b!4497464) (not b!4497293) (not b!4497853) (not d!1379725) (not b!4497484) (not b!4498103) (not bm!313035) (not b!4497253) (not b!4497987) (not bm!312992) (not d!1379739) (not b!4498086) (not b!4497693) (not d!1379543) (not b!4497619) (not d!1379923) (not b!4497489) (not b!4497502) (not d!1379655) (not b!4497983) (not b!4497582) (not b!4497507) (not b!4498009) (not d!1379829) (not d!1379845) (not b!4497561) (not b!4497563) (not d!1379903) (not b!4497500) (not bs!834885) (not d!1379585) (not b!4498088) (not b!4497952) (not d!1379893) (not b!4497617) (not b!4497579) (not b!4497999) (not b!4497651) (not b!4497564) (not bm!313034) tp_is_empty!27765 (not b!4498027) (not b!4497539) (not b!4497649) (not b!4497327) (not d!1379661) (not b!4497525) (not b!4497455) (not b!4498089) (not b!4497236) (not b!4498152) (not b!4497985) (not b!4497838) (not b!4497328) (not bs!834889) (not bm!313033) (not d!1379499) (not b!4497569) (not b_lambda!152125) (not b!4497821) (not b!4497592) (not b!4497318) (not b!4497586) (not b!4497296) (not b!4498004) (not bs!834884) (not bm!313044) (not b!4497914) (not b!4497315) (not b!4497689) (not b_lambda!152135) (not b!4497540) (not d!1379487) (not d!1379549) (not b_lambda!152123) (not bm!312994) (not b!4498154) (not b!4498006) (not bm!313046) (not b!4497200) (not b!4497950) (not b!4497925) (not b!4497918) (not d!1379471) (not b_lambda!152127) (not b!4497691) (not b!4497857) (not bm!313038) (not d!1379759) (not b!4498153) (not d!1379857) (not b!4497593) tp_is_empty!27767 (not d!1379587) (not d!1379577) (not d!1379619) (not d!1379803) (not b!4497926) (not b_lambda!152117) (not d!1379785) (not b!4497664) (not bm!313064) (not b!4497568) (not b_lambda!152139) (not b!4497252) (not b!4498059) (not b!4497852) (not b!4497629) (not b!4497486) (not b!4497824) (not b!4497979) (not bm!312993) (not d!1379779) (not b!4497565) (not bm!313031) (not d!1379601) (not d!1379613) (not d!1379621) (not b!4497303) (not b!4498149) (not d!1379653) (not b!4497556) (not d!1379673) (not b!4498062) (not b!4497597) (not d!1379917) (not b!4497522) (not b!4498081) (not b!4497202) (not b!4497953) (not bs!834886) (not b!4497538) (not b!4497694) (not d!1379891) (not b!4497601) (not b!4497454) (not d!1379635) (not b!4497526) (not d!1379631) (not bm!312995) (not d!1379503) (not d!1379553) (not d!1379461) (not d!1379821) (not b!4497935) (not d!1379677) (not d!1379449) (not bm!313056) (not d!1379773) (not b!4497571) (not d!1379943) (not d!1379547) (not b!4498048) (not b!4498029) (not b_lambda!152115) (not b!4498026) (not b!4497655) (not b!4498010) (not d!1379615) (not b!4497940) (not d!1379729) (not b!4498096) (not b!4497616) (not d!1379607) (not b!4497949) (not bs!834903) (not b!4498105) (not b!4498157) (not bm!312989) (not d!1379875) (not b_lambda!152137) (not d!1379573) (not b!4497823) (not b!4498060) (not bs!834896) (not b!4497943) (not b!4497320) (not b!4497294) (not bs!834901) (not bm!313036) (not d!1379801) (not b!4497856) (not b!4497956) (not bm!313008) (not b!4497620) (not b!4498008) (not d!1379611) (not d!1379497) (not d!1379455) (not b!4497209) (not d!1379629) (not b!4497632) (not b!4497519) (not b!4497977) (not d!1379561) (not b!4497976) (not b!4497959) (not bm!312959) (not b!4497580) (not d!1379493) (not b!4497974) (not d!1379769) (not b!4498095) (not d!1379545) (not d!1379569) (not b!4497595) (not b_lambda!152131) (not b!4497919) (not d!1379775) (not d!1379605) (not d!1379559) (not b!4497615) (not b_lambda!152119) (not b!4497321) (not b!4497559) (not d!1379897) (not b!4497589) (not b!4497854) (not b!4497594) (not b!4497584) (not b!4497560) (not b!4497839) (not b_lambda!152129) (not bm!313058) (not d!1379651) (not bs!834899) (not d!1379767) (not bs!834891) (not d!1379839) (not b!4497535) (not b!4498083) (not bs!834893) (not b!4497827) (not b!4497641) (not bm!312991) (not b!4497894) (not d!1379909) (not d!1379479) (not bm!313032) (not b!4497988) (not b!4498002) (not b!4497600) (not b!4497634) (not bm!313051) (not b!4497826) (not b!4497981) (not b!4497458) (not d!1379599) (not b!4498023) (not b!4497542) (not bs!834883) (not b!4497832) (not b_lambda!152061) (not b!4497533) (not b!4497524) (not b!4497457) (not d!1379827) (not bm!313057) (not b!4497483) (not b!4497550) (not b!4497878) (not b!4497947) (not bm!313047) (not d!1379679) (not b!4497688) (not d!1379823) (not b_lambda!152121) (not bs!834908) (not b!4497971) (not b!4497899) (not b!4497558) (not bm!312990) (not b!4497893) (not b!4497653) (not b!4498156) (not b!4498098) (not b!4497685) (not bm!313030) (not d!1379799) (not b!4497892) (not d!1379947) (not b!4497567))
(check-sat)
