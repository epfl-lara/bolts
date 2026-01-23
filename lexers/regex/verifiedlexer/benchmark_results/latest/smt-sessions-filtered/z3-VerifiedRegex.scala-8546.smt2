; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!450372 () Bool)

(assert start!450372)

(declare-fun bs!875034 () Bool)

(declare-fun b!4538171 () Bool)

(assert (= bs!875034 (and b!4538171 start!450372)))

(declare-fun lambda!175770 () Int)

(declare-fun lambda!175769 () Int)

(assert (=> bs!875034 (not (= lambda!175770 lambda!175769))))

(assert (=> b!4538171 true))

(assert (=> b!4538171 true))

(assert (=> b!4538171 true))

(declare-fun b!4538155 () Bool)

(declare-fun res!1891054 () Bool)

(declare-fun e!2827900 () Bool)

(assert (=> b!4538155 (=> (not res!1891054) (not e!2827900))))

(declare-datatypes ((Hashable!5593 0))(
  ( (HashableExt!5592 (__x!31296 Int)) )
))
(declare-fun hashF!1107 () Hashable!5593)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!12135 0))(
  ( (K!12136 (val!17979 Int)) )
))
(declare-datatypes ((V!12381 0))(
  ( (V!12382 (val!17980 Int)) )
))
(declare-datatypes ((tuple2!51226 0))(
  ( (tuple2!51227 (_1!28907 K!12135) (_2!28907 V!12381)) )
))
(declare-datatypes ((List!50872 0))(
  ( (Nil!50748) (Cons!50748 (h!56627 tuple2!51226) (t!357834 List!50872)) )
))
(declare-fun newBucket!178 () List!50872)

(declare-fun allKeysSameHash!1052 (List!50872 (_ BitVec 64) Hashable!5593) Bool)

(assert (=> b!4538155 (= res!1891054 (allKeysSameHash!1052 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4538156 () Bool)

(declare-fun e!2827890 () Bool)

(declare-fun e!2827891 () Bool)

(assert (=> b!4538156 (= e!2827890 e!2827891)))

(declare-fun res!1891073 () Bool)

(assert (=> b!4538156 (=> res!1891073 e!2827891)))

(declare-datatypes ((ListMap!3665 0))(
  ( (ListMap!3666 (toList!4403 List!50872)) )
))
(declare-fun lt!1713090 () ListMap!3665)

(declare-fun lt!1713091 () ListMap!3665)

(declare-fun eq!655 (ListMap!3665 ListMap!3665) Bool)

(assert (=> b!4538156 (= res!1891073 (not (eq!655 lt!1713090 lt!1713091)))))

(declare-fun lt!1713092 () ListMap!3665)

(declare-fun key!3287 () K!12135)

(declare-fun -!424 (ListMap!3665 K!12135) ListMap!3665)

(assert (=> b!4538156 (= lt!1713091 (-!424 lt!1713092 key!3287))))

(declare-fun b!4538157 () Bool)

(declare-fun e!2827908 () Bool)

(declare-fun tp!1338598 () Bool)

(assert (=> b!4538157 (= e!2827908 tp!1338598)))

(declare-fun b!4538158 () Bool)

(declare-fun res!1891075 () Bool)

(declare-fun e!2827907 () Bool)

(assert (=> b!4538158 (=> res!1891075 e!2827907)))

(declare-datatypes ((tuple2!51228 0))(
  ( (tuple2!51229 (_1!28908 (_ BitVec 64)) (_2!28908 List!50872)) )
))
(declare-datatypes ((List!50873 0))(
  ( (Nil!50749) (Cons!50749 (h!56628 tuple2!51228) (t!357835 List!50873)) )
))
(declare-datatypes ((ListLongMap!3035 0))(
  ( (ListLongMap!3036 (toList!4404 List!50873)) )
))
(declare-fun lm!1477 () ListLongMap!3035)

(declare-fun lt!1713115 () tuple2!51228)

(declare-fun contains!13537 (List!50873 tuple2!51228) Bool)

(assert (=> b!4538158 (= res!1891075 (not (contains!13537 (t!357835 (toList!4404 lm!1477)) lt!1713115)))))

(declare-fun b!4538159 () Bool)

(declare-fun e!2827895 () Bool)

(declare-fun e!2827901 () Bool)

(assert (=> b!4538159 (= e!2827895 e!2827901)))

(declare-fun res!1891066 () Bool)

(assert (=> b!4538159 (=> (not res!1891066) (not e!2827901))))

(declare-fun contains!13538 (ListMap!3665 K!12135) Bool)

(assert (=> b!4538159 (= res!1891066 (contains!13538 lt!1713092 key!3287))))

(declare-fun extractMap!1254 (List!50873) ListMap!3665)

(assert (=> b!4538159 (= lt!1713092 (extractMap!1254 (toList!4404 lm!1477)))))

(declare-fun b!4538160 () Bool)

(declare-fun res!1891058 () Bool)

(declare-fun e!2827894 () Bool)

(assert (=> b!4538160 (=> res!1891058 e!2827894)))

(declare-fun lt!1713098 () ListMap!3665)

(assert (=> b!4538160 (= res!1891058 (not (eq!655 lt!1713092 lt!1713098)))))

(declare-fun b!4538161 () Bool)

(declare-fun res!1891065 () Bool)

(declare-fun e!2827893 () Bool)

(assert (=> b!4538161 (=> res!1891065 e!2827893)))

(declare-fun noDuplicateKeys!1198 (List!50872) Bool)

(assert (=> b!4538161 (= res!1891065 (not (noDuplicateKeys!1198 newBucket!178)))))

(declare-fun res!1891077 () Bool)

(assert (=> start!450372 (=> (not res!1891077) (not e!2827895))))

(declare-fun forall!10341 (List!50873 Int) Bool)

(assert (=> start!450372 (= res!1891077 (forall!10341 (toList!4404 lm!1477) lambda!175769))))

(assert (=> start!450372 e!2827895))

(assert (=> start!450372 true))

(declare-fun inv!66319 (ListLongMap!3035) Bool)

(assert (=> start!450372 (and (inv!66319 lm!1477) e!2827908)))

(declare-fun tp_is_empty!28069 () Bool)

(assert (=> start!450372 tp_is_empty!28069))

(declare-fun e!2827903 () Bool)

(assert (=> start!450372 e!2827903))

(declare-fun b!4538162 () Bool)

(declare-fun e!2827909 () Bool)

(declare-fun e!2827898 () Bool)

(assert (=> b!4538162 (= e!2827909 e!2827898)))

(declare-fun res!1891061 () Bool)

(assert (=> b!4538162 (=> res!1891061 e!2827898)))

(declare-fun lt!1713093 () tuple2!51228)

(assert (=> b!4538162 (= res!1891061 (not (noDuplicateKeys!1198 (_2!28908 lt!1713093))))))

(declare-datatypes ((Unit!98176 0))(
  ( (Unit!98177) )
))
(declare-fun lt!1713118 () Unit!98176)

(declare-fun forallContained!2604 (List!50873 Int tuple2!51228) Unit!98176)

(assert (=> b!4538162 (= lt!1713118 (forallContained!2604 (toList!4404 lm!1477) lambda!175769 (h!56628 (toList!4404 lm!1477))))))

(declare-fun b!4538163 () Bool)

(declare-fun e!2827905 () Bool)

(assert (=> b!4538163 (= e!2827898 e!2827905)))

(declare-fun res!1891062 () Bool)

(assert (=> b!4538163 (=> res!1891062 e!2827905)))

(declare-fun lt!1713111 () Bool)

(assert (=> b!4538163 (= res!1891062 lt!1713111)))

(declare-fun lt!1713096 () Unit!98176)

(declare-fun e!2827899 () Unit!98176)

(assert (=> b!4538163 (= lt!1713096 e!2827899)))

(declare-fun c!775041 () Bool)

(assert (=> b!4538163 (= c!775041 lt!1713111)))

(declare-fun containsKey!1870 (List!50872 K!12135) Bool)

(assert (=> b!4538163 (= lt!1713111 (containsKey!1870 (_2!28908 lt!1713093) key!3287))))

(declare-fun b!4538164 () Bool)

(assert (=> b!4538164 (= e!2827893 e!2827907)))

(declare-fun res!1891056 () Bool)

(assert (=> b!4538164 (=> res!1891056 e!2827907)))

(declare-fun lt!1713100 () ListLongMap!3035)

(declare-fun contains!13539 (ListLongMap!3035 (_ BitVec 64)) Bool)

(assert (=> b!4538164 (= res!1891056 (not (contains!13539 lt!1713100 hash!344)))))

(declare-fun tail!7798 (ListLongMap!3035) ListLongMap!3035)

(assert (=> b!4538164 (= lt!1713100 (tail!7798 lm!1477))))

(declare-fun b!4538165 () Bool)

(declare-fun e!2827902 () Bool)

(declare-fun e!2827896 () Bool)

(assert (=> b!4538165 (= e!2827902 e!2827896)))

(declare-fun res!1891059 () Bool)

(assert (=> b!4538165 (=> res!1891059 e!2827896)))

(assert (=> b!4538165 (= res!1891059 (not (contains!13538 (extractMap!1254 (t!357835 (toList!4404 lm!1477))) key!3287)))))

(declare-fun lt!1713103 () ListMap!3665)

(assert (=> b!4538165 (contains!13538 lt!1713103 key!3287)))

(assert (=> b!4538165 (= lt!1713103 (extractMap!1254 (toList!4404 lt!1713100)))))

(declare-fun lt!1713094 () Unit!98176)

(declare-fun lemmaListContainsThenExtractedMapContains!168 (ListLongMap!3035 K!12135 Hashable!5593) Unit!98176)

(assert (=> b!4538165 (= lt!1713094 (lemmaListContainsThenExtractedMapContains!168 lt!1713100 key!3287 hashF!1107))))

(declare-fun b!4538166 () Bool)

(declare-fun res!1891067 () Bool)

(declare-fun e!2827897 () Bool)

(assert (=> b!4538166 (=> res!1891067 e!2827897)))

(declare-fun lt!1713101 () ListLongMap!3035)

(declare-fun head!9476 (ListLongMap!3035) tuple2!51228)

(assert (=> b!4538166 (= res!1891067 (not (= (head!9476 lt!1713101) lt!1713093)))))

(declare-fun b!4538167 () Bool)

(declare-fun res!1891071 () Bool)

(assert (=> b!4538167 (=> res!1891071 e!2827893)))

(get-info :version)

(assert (=> b!4538167 (= res!1891071 (or ((_ is Nil!50749) (toList!4404 lm!1477)) (= (_1!28908 (h!56628 (toList!4404 lm!1477))) hash!344)))))

(declare-fun b!4538168 () Bool)

(declare-fun Unit!98178 () Unit!98176)

(assert (=> b!4538168 (= e!2827899 Unit!98178)))

(declare-fun b!4538169 () Bool)

(assert (=> b!4538169 (= e!2827905 e!2827890)))

(declare-fun res!1891074 () Bool)

(assert (=> b!4538169 (=> res!1891074 e!2827890)))

(declare-fun lt!1713099 () ListMap!3665)

(assert (=> b!4538169 (= res!1891074 (not (eq!655 lt!1713090 lt!1713099)))))

(assert (=> b!4538169 (= lt!1713090 lt!1713099)))

(declare-fun addToMapMapFromBucket!725 (List!50872 ListMap!3665) ListMap!3665)

(assert (=> b!4538169 (= lt!1713099 (-!424 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103) key!3287))))

(declare-fun lt!1713105 () Unit!98176)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!22 (ListMap!3665 K!12135 List!50872) Unit!98176)

(assert (=> b!4538169 (= lt!1713105 (lemmaAddToMapFromBucketMinusKeyIsCommutative!22 lt!1713103 key!3287 (_2!28908 lt!1713093)))))

(declare-fun b!4538170 () Bool)

(declare-fun e!2827904 () Bool)

(assert (=> b!4538170 (= e!2827904 e!2827909)))

(declare-fun res!1891068 () Bool)

(assert (=> b!4538170 (=> res!1891068 e!2827909)))

(declare-fun lt!1713097 () ListMap!3665)

(assert (=> b!4538170 (= res!1891068 (not (eq!655 lt!1713097 lt!1713090)))))

(declare-fun lt!1713117 () ListMap!3665)

(assert (=> b!4538170 (eq!655 lt!1713117 lt!1713090)))

(declare-fun lt!1713095 () ListMap!3665)

(assert (=> b!4538170 (= lt!1713090 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713095))))

(declare-fun lt!1713104 () Unit!98176)

(declare-fun lt!1713121 () ListMap!3665)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!74 (ListMap!3665 ListMap!3665 List!50872) Unit!98176)

(assert (=> b!4538170 (= lt!1713104 (lemmaAddToMapFromBucketPreservesEquivalence!74 lt!1713121 lt!1713095 (_2!28908 lt!1713093)))))

(declare-fun Unit!98179 () Unit!98176)

(assert (=> b!4538171 (= e!2827899 Unit!98179)))

(assert (=> b!4538171 (not (= hash!344 (_1!28908 lt!1713093)))))

(declare-datatypes ((Option!11197 0))(
  ( (None!11196) (Some!11196 (v!44884 tuple2!51226)) )
))
(declare-fun lt!1713113 () Option!11197)

(declare-fun getPair!214 (List!50872 K!12135) Option!11197)

(assert (=> b!4538171 (= lt!1713113 (getPair!214 (_2!28908 lt!1713093) key!3287))))

(declare-fun lt!1713116 () Unit!98176)

(assert (=> b!4538171 (= lt!1713116 (forallContained!2604 (toList!4404 lm!1477) lambda!175770 (h!56628 (toList!4404 lm!1477))))))

(declare-fun lt!1713122 () Unit!98176)

(declare-fun lambda!175771 () Int)

(declare-fun forallContained!2605 (List!50872 Int tuple2!51226) Unit!98176)

(declare-fun get!16681 (Option!11197) tuple2!51226)

(assert (=> b!4538171 (= lt!1713122 (forallContained!2605 (_2!28908 (h!56628 (toList!4404 lm!1477))) lambda!175771 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))))))

(assert (=> b!4538171 false))

(declare-fun b!4538172 () Bool)

(declare-fun res!1891070 () Bool)

(assert (=> b!4538172 (=> (not res!1891070) (not e!2827895))))

(declare-fun allKeysSameHashInMap!1305 (ListLongMap!3035 Hashable!5593) Bool)

(assert (=> b!4538172 (= res!1891070 (allKeysSameHashInMap!1305 lm!1477 hashF!1107))))

(declare-fun b!4538173 () Bool)

(assert (=> b!4538173 (= e!2827894 e!2827897)))

(declare-fun res!1891076 () Bool)

(assert (=> b!4538173 (=> res!1891076 e!2827897)))

(declare-fun lt!1713120 () tuple2!51228)

(declare-fun +!1602 (ListLongMap!3035 tuple2!51228) ListLongMap!3035)

(assert (=> b!4538173 (= res!1891076 (not (= lt!1713101 (+!1602 lm!1477 lt!1713120))))))

(declare-fun lt!1713102 () ListLongMap!3035)

(assert (=> b!4538173 (= lt!1713101 (+!1602 lt!1713102 lt!1713093))))

(declare-fun b!4538174 () Bool)

(assert (=> b!4538174 (= e!2827900 (not e!2827893))))

(declare-fun res!1891063 () Bool)

(assert (=> b!4538174 (=> res!1891063 e!2827893)))

(declare-fun lt!1713088 () List!50872)

(declare-fun removePairForKey!825 (List!50872 K!12135) List!50872)

(assert (=> b!4538174 (= res!1891063 (not (= newBucket!178 (removePairForKey!825 lt!1713088 key!3287))))))

(declare-fun lt!1713109 () Unit!98176)

(assert (=> b!4538174 (= lt!1713109 (forallContained!2604 (toList!4404 lm!1477) lambda!175769 lt!1713115))))

(assert (=> b!4538174 (contains!13537 (toList!4404 lm!1477) lt!1713115)))

(assert (=> b!4538174 (= lt!1713115 (tuple2!51229 hash!344 lt!1713088))))

(declare-fun lt!1713106 () Unit!98176)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!710 (List!50873 (_ BitVec 64) List!50872) Unit!98176)

(assert (=> b!4538174 (= lt!1713106 (lemmaGetValueByKeyImpliesContainsTuple!710 (toList!4404 lm!1477) hash!344 lt!1713088))))

(declare-fun apply!11935 (ListLongMap!3035 (_ BitVec 64)) List!50872)

(assert (=> b!4538174 (= lt!1713088 (apply!11935 lm!1477 hash!344))))

(declare-fun lt!1713089 () (_ BitVec 64))

(assert (=> b!4538174 (contains!13539 lm!1477 lt!1713089)))

(declare-fun lt!1713114 () Unit!98176)

(declare-fun lemmaInGenMapThenLongMapContainsHash!272 (ListLongMap!3035 K!12135 Hashable!5593) Unit!98176)

(assert (=> b!4538174 (= lt!1713114 (lemmaInGenMapThenLongMapContainsHash!272 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4538175 () Bool)

(declare-fun res!1891069 () Bool)

(assert (=> b!4538175 (=> res!1891069 e!2827891)))

(assert (=> b!4538175 (= res!1891069 (not (eq!655 lt!1713097 lt!1713091)))))

(declare-fun b!4538176 () Bool)

(assert (=> b!4538176 (= e!2827896 e!2827894)))

(declare-fun res!1891078 () Bool)

(assert (=> b!4538176 (=> res!1891078 e!2827894)))

(assert (=> b!4538176 (= res!1891078 (not (eq!655 lt!1713098 lt!1713092)))))

(assert (=> b!4538176 (= lt!1713098 (extractMap!1254 (toList!4404 (+!1602 lt!1713100 lt!1713093))))))

(assert (=> b!4538176 (= lt!1713093 (head!9476 lm!1477))))

(assert (=> b!4538176 (eq!655 lt!1713121 lt!1713095)))

(assert (=> b!4538176 (= lt!1713095 (-!424 lt!1713103 key!3287))))

(assert (=> b!4538176 (= lt!1713121 (extractMap!1254 (toList!4404 lt!1713102)))))

(assert (=> b!4538176 (= lt!1713102 (+!1602 lt!1713100 lt!1713120))))

(assert (=> b!4538176 (= lt!1713120 (tuple2!51229 hash!344 newBucket!178))))

(declare-fun lt!1713110 () Unit!98176)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!183 (ListLongMap!3035 (_ BitVec 64) List!50872 K!12135 Hashable!5593) Unit!98176)

(assert (=> b!4538176 (= lt!1713110 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!183 lt!1713100 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4538177 () Bool)

(declare-fun isEmpty!28743 (ListLongMap!3035) Bool)

(assert (=> b!4538177 (= e!2827891 (not (isEmpty!28743 lm!1477)))))

(declare-fun b!4538178 () Bool)

(declare-fun e!2827892 () Bool)

(assert (=> b!4538178 (= e!2827907 e!2827892)))

(declare-fun res!1891053 () Bool)

(assert (=> b!4538178 (=> res!1891053 e!2827892)))

(declare-fun lt!1713119 () Bool)

(assert (=> b!4538178 (= res!1891053 lt!1713119)))

(declare-fun lt!1713108 () Unit!98176)

(declare-fun e!2827906 () Unit!98176)

(assert (=> b!4538178 (= lt!1713108 e!2827906)))

(declare-fun c!775040 () Bool)

(assert (=> b!4538178 (= c!775040 lt!1713119)))

(assert (=> b!4538178 (= lt!1713119 (not (containsKey!1870 lt!1713088 key!3287)))))

(declare-fun b!4538179 () Bool)

(declare-fun Unit!98180 () Unit!98176)

(assert (=> b!4538179 (= e!2827906 Unit!98180)))

(declare-fun b!4538180 () Bool)

(assert (=> b!4538180 (= e!2827901 e!2827900)))

(declare-fun res!1891064 () Bool)

(assert (=> b!4538180 (=> (not res!1891064) (not e!2827900))))

(assert (=> b!4538180 (= res!1891064 (= lt!1713089 hash!344))))

(declare-fun hash!2911 (Hashable!5593 K!12135) (_ BitVec 64))

(assert (=> b!4538180 (= lt!1713089 (hash!2911 hashF!1107 key!3287))))

(declare-fun b!4538181 () Bool)

(declare-fun res!1891060 () Bool)

(assert (=> b!4538181 (=> res!1891060 e!2827894)))

(assert (=> b!4538181 (= res!1891060 (bvsge (_1!28908 lt!1713093) hash!344))))

(declare-fun b!4538182 () Bool)

(assert (=> b!4538182 (= e!2827897 e!2827904)))

(declare-fun res!1891055 () Bool)

(assert (=> b!4538182 (=> res!1891055 e!2827904)))

(assert (=> b!4538182 (= res!1891055 (not (eq!655 lt!1713097 lt!1713117)))))

(assert (=> b!4538182 (= lt!1713117 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713121))))

(assert (=> b!4538182 (= lt!1713097 (extractMap!1254 (toList!4404 lt!1713101)))))

(declare-fun b!4538183 () Bool)

(declare-fun Unit!98181 () Unit!98176)

(assert (=> b!4538183 (= e!2827906 Unit!98181)))

(declare-fun lt!1713107 () Unit!98176)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!186 (ListLongMap!3035 K!12135 Hashable!5593) Unit!98176)

(assert (=> b!4538183 (= lt!1713107 (lemmaNotInItsHashBucketThenNotInMap!186 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4538183 false))

(declare-fun b!4538184 () Bool)

(declare-fun res!1891072 () Bool)

(assert (=> b!4538184 (=> res!1891072 e!2827907)))

(assert (=> b!4538184 (= res!1891072 (not (= (apply!11935 lt!1713100 hash!344) lt!1713088)))))

(declare-fun b!4538185 () Bool)

(assert (=> b!4538185 (= e!2827892 e!2827902)))

(declare-fun res!1891057 () Bool)

(assert (=> b!4538185 (=> res!1891057 e!2827902)))

(declare-fun containsKeyBiggerList!178 (List!50873 K!12135) Bool)

(assert (=> b!4538185 (= res!1891057 (not (containsKeyBiggerList!178 (t!357835 (toList!4404 lm!1477)) key!3287)))))

(assert (=> b!4538185 (containsKeyBiggerList!178 (toList!4404 lt!1713100) key!3287)))

(declare-fun lt!1713112 () Unit!98176)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!114 (ListLongMap!3035 K!12135 Hashable!5593) Unit!98176)

(assert (=> b!4538185 (= lt!1713112 (lemmaInLongMapThenContainsKeyBiggerList!114 lt!1713100 key!3287 hashF!1107))))

(declare-fun tp!1338599 () Bool)

(declare-fun b!4538186 () Bool)

(declare-fun tp_is_empty!28071 () Bool)

(assert (=> b!4538186 (= e!2827903 (and tp_is_empty!28069 tp_is_empty!28071 tp!1338599))))

(assert (= (and start!450372 res!1891077) b!4538172))

(assert (= (and b!4538172 res!1891070) b!4538159))

(assert (= (and b!4538159 res!1891066) b!4538180))

(assert (= (and b!4538180 res!1891064) b!4538155))

(assert (= (and b!4538155 res!1891054) b!4538174))

(assert (= (and b!4538174 (not res!1891063)) b!4538161))

(assert (= (and b!4538161 (not res!1891065)) b!4538167))

(assert (= (and b!4538167 (not res!1891071)) b!4538164))

(assert (= (and b!4538164 (not res!1891056)) b!4538184))

(assert (= (and b!4538184 (not res!1891072)) b!4538158))

(assert (= (and b!4538158 (not res!1891075)) b!4538178))

(assert (= (and b!4538178 c!775040) b!4538183))

(assert (= (and b!4538178 (not c!775040)) b!4538179))

(assert (= (and b!4538178 (not res!1891053)) b!4538185))

(assert (= (and b!4538185 (not res!1891057)) b!4538165))

(assert (= (and b!4538165 (not res!1891059)) b!4538176))

(assert (= (and b!4538176 (not res!1891078)) b!4538160))

(assert (= (and b!4538160 (not res!1891058)) b!4538181))

(assert (= (and b!4538181 (not res!1891060)) b!4538173))

(assert (= (and b!4538173 (not res!1891076)) b!4538166))

(assert (= (and b!4538166 (not res!1891067)) b!4538182))

(assert (= (and b!4538182 (not res!1891055)) b!4538170))

(assert (= (and b!4538170 (not res!1891068)) b!4538162))

(assert (= (and b!4538162 (not res!1891061)) b!4538163))

(assert (= (and b!4538163 c!775041) b!4538171))

(assert (= (and b!4538163 (not c!775041)) b!4538168))

(assert (= (and b!4538163 (not res!1891062)) b!4538169))

(assert (= (and b!4538169 (not res!1891074)) b!4538156))

(assert (= (and b!4538156 (not res!1891073)) b!4538175))

(assert (= (and b!4538175 (not res!1891069)) b!4538177))

(assert (= start!450372 b!4538157))

(assert (= (and start!450372 ((_ is Cons!50748) newBucket!178)) b!4538186))

(declare-fun m!5302467 () Bool)

(assert (=> b!4538155 m!5302467))

(declare-fun m!5302469 () Bool)

(assert (=> b!4538184 m!5302469))

(declare-fun m!5302471 () Bool)

(assert (=> b!4538183 m!5302471))

(declare-fun m!5302473 () Bool)

(assert (=> b!4538158 m!5302473))

(declare-fun m!5302475 () Bool)

(assert (=> b!4538161 m!5302475))

(declare-fun m!5302477 () Bool)

(assert (=> b!4538182 m!5302477))

(declare-fun m!5302479 () Bool)

(assert (=> b!4538182 m!5302479))

(declare-fun m!5302481 () Bool)

(assert (=> b!4538182 m!5302481))

(declare-fun m!5302483 () Bool)

(assert (=> b!4538162 m!5302483))

(declare-fun m!5302485 () Bool)

(assert (=> b!4538162 m!5302485))

(declare-fun m!5302487 () Bool)

(assert (=> b!4538160 m!5302487))

(declare-fun m!5302489 () Bool)

(assert (=> b!4538177 m!5302489))

(declare-fun m!5302491 () Bool)

(assert (=> b!4538169 m!5302491))

(declare-fun m!5302493 () Bool)

(assert (=> b!4538169 m!5302493))

(assert (=> b!4538169 m!5302493))

(declare-fun m!5302495 () Bool)

(assert (=> b!4538169 m!5302495))

(declare-fun m!5302497 () Bool)

(assert (=> b!4538169 m!5302497))

(declare-fun m!5302499 () Bool)

(assert (=> b!4538156 m!5302499))

(declare-fun m!5302501 () Bool)

(assert (=> b!4538156 m!5302501))

(declare-fun m!5302503 () Bool)

(assert (=> b!4538176 m!5302503))

(declare-fun m!5302505 () Bool)

(assert (=> b!4538176 m!5302505))

(declare-fun m!5302507 () Bool)

(assert (=> b!4538176 m!5302507))

(declare-fun m!5302509 () Bool)

(assert (=> b!4538176 m!5302509))

(declare-fun m!5302511 () Bool)

(assert (=> b!4538176 m!5302511))

(declare-fun m!5302513 () Bool)

(assert (=> b!4538176 m!5302513))

(declare-fun m!5302515 () Bool)

(assert (=> b!4538176 m!5302515))

(declare-fun m!5302517 () Bool)

(assert (=> b!4538176 m!5302517))

(declare-fun m!5302519 () Bool)

(assert (=> b!4538176 m!5302519))

(declare-fun m!5302521 () Bool)

(assert (=> b!4538172 m!5302521))

(declare-fun m!5302523 () Bool)

(assert (=> b!4538163 m!5302523))

(declare-fun m!5302525 () Bool)

(assert (=> b!4538174 m!5302525))

(declare-fun m!5302527 () Bool)

(assert (=> b!4538174 m!5302527))

(declare-fun m!5302529 () Bool)

(assert (=> b!4538174 m!5302529))

(declare-fun m!5302531 () Bool)

(assert (=> b!4538174 m!5302531))

(declare-fun m!5302533 () Bool)

(assert (=> b!4538174 m!5302533))

(declare-fun m!5302535 () Bool)

(assert (=> b!4538174 m!5302535))

(declare-fun m!5302537 () Bool)

(assert (=> b!4538174 m!5302537))

(declare-fun m!5302539 () Bool)

(assert (=> b!4538165 m!5302539))

(declare-fun m!5302541 () Bool)

(assert (=> b!4538165 m!5302541))

(declare-fun m!5302543 () Bool)

(assert (=> b!4538165 m!5302543))

(declare-fun m!5302545 () Bool)

(assert (=> b!4538165 m!5302545))

(assert (=> b!4538165 m!5302543))

(declare-fun m!5302547 () Bool)

(assert (=> b!4538165 m!5302547))

(declare-fun m!5302549 () Bool)

(assert (=> b!4538178 m!5302549))

(declare-fun m!5302551 () Bool)

(assert (=> b!4538180 m!5302551))

(declare-fun m!5302553 () Bool)

(assert (=> b!4538166 m!5302553))

(declare-fun m!5302555 () Bool)

(assert (=> b!4538164 m!5302555))

(declare-fun m!5302557 () Bool)

(assert (=> b!4538164 m!5302557))

(declare-fun m!5302559 () Bool)

(assert (=> b!4538170 m!5302559))

(declare-fun m!5302561 () Bool)

(assert (=> b!4538170 m!5302561))

(declare-fun m!5302563 () Bool)

(assert (=> b!4538170 m!5302563))

(declare-fun m!5302565 () Bool)

(assert (=> b!4538170 m!5302565))

(declare-fun m!5302567 () Bool)

(assert (=> b!4538175 m!5302567))

(declare-fun m!5302569 () Bool)

(assert (=> start!450372 m!5302569))

(declare-fun m!5302571 () Bool)

(assert (=> start!450372 m!5302571))

(declare-fun m!5302573 () Bool)

(assert (=> b!4538185 m!5302573))

(declare-fun m!5302575 () Bool)

(assert (=> b!4538185 m!5302575))

(declare-fun m!5302577 () Bool)

(assert (=> b!4538185 m!5302577))

(declare-fun m!5302579 () Bool)

(assert (=> b!4538159 m!5302579))

(declare-fun m!5302581 () Bool)

(assert (=> b!4538159 m!5302581))

(declare-fun m!5302583 () Bool)

(assert (=> b!4538171 m!5302583))

(declare-fun m!5302585 () Bool)

(assert (=> b!4538171 m!5302585))

(declare-fun m!5302587 () Bool)

(assert (=> b!4538171 m!5302587))

(declare-fun m!5302589 () Bool)

(assert (=> b!4538171 m!5302589))

(declare-fun m!5302591 () Bool)

(assert (=> b!4538173 m!5302591))

(declare-fun m!5302593 () Bool)

(assert (=> b!4538173 m!5302593))

(check-sat (not b!4538161) (not b!4538156) (not b!4538175) (not b!4538182) (not b!4538177) (not start!450372) (not b!4538159) (not b!4538184) (not b!4538165) (not b!4538155) (not b!4538178) (not b!4538186) (not b!4538173) (not b!4538172) (not b!4538160) (not b!4538176) (not b!4538183) (not b!4538171) (not b!4538166) (not b!4538185) (not b!4538170) (not b!4538157) (not b!4538162) (not b!4538180) (not b!4538169) (not b!4538158) tp_is_empty!28071 tp_is_empty!28069 (not b!4538163) (not b!4538164) (not b!4538174))
(check-sat)
(get-model)

(declare-fun d!1402225 () Bool)

(declare-fun res!1891083 () Bool)

(declare-fun e!2827914 () Bool)

(assert (=> d!1402225 (=> res!1891083 e!2827914)))

(assert (=> d!1402225 (= res!1891083 (not ((_ is Cons!50748) newBucket!178)))))

(assert (=> d!1402225 (= (noDuplicateKeys!1198 newBucket!178) e!2827914)))

(declare-fun b!4538197 () Bool)

(declare-fun e!2827915 () Bool)

(assert (=> b!4538197 (= e!2827914 e!2827915)))

(declare-fun res!1891084 () Bool)

(assert (=> b!4538197 (=> (not res!1891084) (not e!2827915))))

(assert (=> b!4538197 (= res!1891084 (not (containsKey!1870 (t!357834 newBucket!178) (_1!28907 (h!56627 newBucket!178)))))))

(declare-fun b!4538198 () Bool)

(assert (=> b!4538198 (= e!2827915 (noDuplicateKeys!1198 (t!357834 newBucket!178)))))

(assert (= (and d!1402225 (not res!1891083)) b!4538197))

(assert (= (and b!4538197 res!1891084) b!4538198))

(declare-fun m!5302595 () Bool)

(assert (=> b!4538197 m!5302595))

(declare-fun m!5302597 () Bool)

(assert (=> b!4538198 m!5302597))

(assert (=> b!4538161 d!1402225))

(declare-fun d!1402227 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8434 (List!50872) (InoxSet tuple2!51226))

(assert (=> d!1402227 (= (eq!655 lt!1713097 lt!1713117) (= (content!8434 (toList!4403 lt!1713097)) (content!8434 (toList!4403 lt!1713117))))))

(declare-fun bs!875035 () Bool)

(assert (= bs!875035 d!1402227))

(declare-fun m!5302599 () Bool)

(assert (=> bs!875035 m!5302599))

(declare-fun m!5302601 () Bool)

(assert (=> bs!875035 m!5302601))

(assert (=> b!4538182 d!1402227))

(declare-fun bs!875045 () Bool)

(declare-fun b!4538249 () Bool)

(assert (= bs!875045 (and b!4538249 b!4538171)))

(declare-fun lambda!175834 () Int)

(assert (=> bs!875045 (not (= lambda!175834 lambda!175771))))

(assert (=> b!4538249 true))

(declare-fun bs!875048 () Bool)

(declare-fun b!4538248 () Bool)

(assert (= bs!875048 (and b!4538248 b!4538171)))

(declare-fun lambda!175836 () Int)

(assert (=> bs!875048 (not (= lambda!175836 lambda!175771))))

(declare-fun bs!875049 () Bool)

(assert (= bs!875049 (and b!4538248 b!4538249)))

(assert (=> bs!875049 (= lambda!175836 lambda!175834)))

(assert (=> b!4538248 true))

(declare-fun lambda!175837 () Int)

(assert (=> bs!875048 (not (= lambda!175837 lambda!175771))))

(declare-fun lt!1713258 () ListMap!3665)

(assert (=> bs!875049 (= (= lt!1713258 lt!1713121) (= lambda!175837 lambda!175834))))

(assert (=> b!4538248 (= (= lt!1713258 lt!1713121) (= lambda!175837 lambda!175836))))

(assert (=> b!4538248 true))

(declare-fun bs!875050 () Bool)

(declare-fun d!1402229 () Bool)

(assert (= bs!875050 (and d!1402229 b!4538171)))

(declare-fun lambda!175838 () Int)

(assert (=> bs!875050 (not (= lambda!175838 lambda!175771))))

(declare-fun bs!875051 () Bool)

(assert (= bs!875051 (and d!1402229 b!4538249)))

(declare-fun lt!1713253 () ListMap!3665)

(assert (=> bs!875051 (= (= lt!1713253 lt!1713121) (= lambda!175838 lambda!175834))))

(declare-fun bs!875052 () Bool)

(assert (= bs!875052 (and d!1402229 b!4538248)))

(assert (=> bs!875052 (= (= lt!1713253 lt!1713121) (= lambda!175838 lambda!175836))))

(assert (=> bs!875052 (= (= lt!1713253 lt!1713258) (= lambda!175838 lambda!175837))))

(assert (=> d!1402229 true))

(declare-fun bm!316430 () Bool)

(declare-fun call!316435 () Unit!98176)

(declare-fun lemmaContainsAllItsOwnKeys!364 (ListMap!3665) Unit!98176)

(assert (=> bm!316430 (= call!316435 (lemmaContainsAllItsOwnKeys!364 lt!1713121))))

(declare-fun b!4538245 () Bool)

(declare-fun e!2827945 () Bool)

(declare-fun invariantList!1043 (List!50872) Bool)

(assert (=> b!4538245 (= e!2827945 (invariantList!1043 (toList!4403 lt!1713253)))))

(declare-fun c!775049 () Bool)

(declare-fun bm!316431 () Bool)

(declare-fun call!316437 () Bool)

(declare-fun forall!10343 (List!50872 Int) Bool)

(assert (=> bm!316431 (= call!316437 (forall!10343 (ite c!775049 (toList!4403 lt!1713121) (_2!28908 lt!1713093)) (ite c!775049 lambda!175834 lambda!175837)))))

(declare-fun b!4538246 () Bool)

(declare-fun res!1891117 () Bool)

(assert (=> b!4538246 (=> (not res!1891117) (not e!2827945))))

(assert (=> b!4538246 (= res!1891117 (forall!10343 (toList!4403 lt!1713121) lambda!175838))))

(declare-fun b!4538247 () Bool)

(declare-fun e!2827946 () Bool)

(assert (=> b!4538247 (= e!2827946 (forall!10343 (toList!4403 lt!1713121) lambda!175837))))

(declare-fun e!2827947 () ListMap!3665)

(assert (=> b!4538248 (= e!2827947 lt!1713258)))

(declare-fun lt!1713264 () ListMap!3665)

(declare-fun +!1604 (ListMap!3665 tuple2!51226) ListMap!3665)

(assert (=> b!4538248 (= lt!1713264 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4538248 (= lt!1713258 (addToMapMapFromBucket!725 (t!357834 (_2!28908 lt!1713093)) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713257 () Unit!98176)

(assert (=> b!4538248 (= lt!1713257 call!316435)))

(assert (=> b!4538248 (forall!10343 (toList!4403 lt!1713121) lambda!175836)))

(declare-fun lt!1713265 () Unit!98176)

(assert (=> b!4538248 (= lt!1713265 lt!1713257)))

(assert (=> b!4538248 (forall!10343 (toList!4403 lt!1713264) lambda!175837)))

(declare-fun lt!1713252 () Unit!98176)

(declare-fun Unit!98193 () Unit!98176)

(assert (=> b!4538248 (= lt!1713252 Unit!98193)))

(declare-fun call!316436 () Bool)

(assert (=> b!4538248 call!316436))

(declare-fun lt!1713263 () Unit!98176)

(declare-fun Unit!98194 () Unit!98176)

(assert (=> b!4538248 (= lt!1713263 Unit!98194)))

(declare-fun lt!1713251 () Unit!98176)

(declare-fun Unit!98195 () Unit!98176)

(assert (=> b!4538248 (= lt!1713251 Unit!98195)))

(declare-fun lt!1713254 () Unit!98176)

(assert (=> b!4538248 (= lt!1713254 (forallContained!2605 (toList!4403 lt!1713264) lambda!175837 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4538248 (contains!13538 lt!1713264 (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1713250 () Unit!98176)

(declare-fun Unit!98196 () Unit!98176)

(assert (=> b!4538248 (= lt!1713250 Unit!98196)))

(assert (=> b!4538248 (contains!13538 lt!1713258 (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1713249 () Unit!98176)

(declare-fun Unit!98197 () Unit!98176)

(assert (=> b!4538248 (= lt!1713249 Unit!98197)))

(assert (=> b!4538248 call!316437))

(declare-fun lt!1713267 () Unit!98176)

(declare-fun Unit!98198 () Unit!98176)

(assert (=> b!4538248 (= lt!1713267 Unit!98198)))

(assert (=> b!4538248 (forall!10343 (toList!4403 lt!1713264) lambda!175837)))

(declare-fun lt!1713259 () Unit!98176)

(declare-fun Unit!98199 () Unit!98176)

(assert (=> b!4538248 (= lt!1713259 Unit!98199)))

(declare-fun lt!1713262 () Unit!98176)

(declare-fun Unit!98200 () Unit!98176)

(assert (=> b!4538248 (= lt!1713262 Unit!98200)))

(declare-fun lt!1713268 () Unit!98176)

(declare-fun addForallContainsKeyThenBeforeAdding!364 (ListMap!3665 ListMap!3665 K!12135 V!12381) Unit!98176)

(assert (=> b!4538248 (= lt!1713268 (addForallContainsKeyThenBeforeAdding!364 lt!1713121 lt!1713258 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4538248 (forall!10343 (toList!4403 lt!1713121) lambda!175837)))

(declare-fun lt!1713256 () Unit!98176)

(assert (=> b!4538248 (= lt!1713256 lt!1713268)))

(assert (=> b!4538248 (forall!10343 (toList!4403 lt!1713121) lambda!175837)))

(declare-fun lt!1713266 () Unit!98176)

(declare-fun Unit!98201 () Unit!98176)

(assert (=> b!4538248 (= lt!1713266 Unit!98201)))

(declare-fun res!1891116 () Bool)

(assert (=> b!4538248 (= res!1891116 (forall!10343 (_2!28908 lt!1713093) lambda!175837))))

(assert (=> b!4538248 (=> (not res!1891116) (not e!2827946))))

(assert (=> b!4538248 e!2827946))

(declare-fun lt!1713248 () Unit!98176)

(declare-fun Unit!98202 () Unit!98176)

(assert (=> b!4538248 (= lt!1713248 Unit!98202)))

(assert (=> b!4538249 (= e!2827947 lt!1713121)))

(declare-fun lt!1713261 () Unit!98176)

(assert (=> b!4538249 (= lt!1713261 call!316435)))

(assert (=> b!4538249 call!316436))

(declare-fun lt!1713260 () Unit!98176)

(assert (=> b!4538249 (= lt!1713260 lt!1713261)))

(assert (=> b!4538249 call!316437))

(declare-fun lt!1713255 () Unit!98176)

(declare-fun Unit!98203 () Unit!98176)

(assert (=> b!4538249 (= lt!1713255 Unit!98203)))

(declare-fun bm!316432 () Bool)

(assert (=> bm!316432 (= call!316436 (forall!10343 (ite c!775049 (toList!4403 lt!1713121) (t!357834 (_2!28908 lt!1713093))) (ite c!775049 lambda!175834 lambda!175837)))))

(assert (=> d!1402229 e!2827945))

(declare-fun res!1891115 () Bool)

(assert (=> d!1402229 (=> (not res!1891115) (not e!2827945))))

(assert (=> d!1402229 (= res!1891115 (forall!10343 (_2!28908 lt!1713093) lambda!175838))))

(assert (=> d!1402229 (= lt!1713253 e!2827947)))

(assert (=> d!1402229 (= c!775049 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1402229 (noDuplicateKeys!1198 (_2!28908 lt!1713093))))

(assert (=> d!1402229 (= (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713121) lt!1713253)))

(assert (= (and d!1402229 c!775049) b!4538249))

(assert (= (and d!1402229 (not c!775049)) b!4538248))

(assert (= (and b!4538248 res!1891116) b!4538247))

(assert (= (or b!4538249 b!4538248) bm!316431))

(assert (= (or b!4538249 b!4538248) bm!316432))

(assert (= (or b!4538249 b!4538248) bm!316430))

(assert (= (and d!1402229 res!1891115) b!4538246))

(assert (= (and b!4538246 res!1891117) b!4538245))

(declare-fun m!5302711 () Bool)

(assert (=> bm!316432 m!5302711))

(declare-fun m!5302713 () Bool)

(assert (=> b!4538248 m!5302713))

(declare-fun m!5302715 () Bool)

(assert (=> b!4538248 m!5302715))

(declare-fun m!5302717 () Bool)

(assert (=> b!4538248 m!5302717))

(declare-fun m!5302719 () Bool)

(assert (=> b!4538248 m!5302719))

(assert (=> b!4538248 m!5302713))

(assert (=> b!4538248 m!5302719))

(declare-fun m!5302721 () Bool)

(assert (=> b!4538248 m!5302721))

(declare-fun m!5302723 () Bool)

(assert (=> b!4538248 m!5302723))

(declare-fun m!5302725 () Bool)

(assert (=> b!4538248 m!5302725))

(declare-fun m!5302727 () Bool)

(assert (=> b!4538248 m!5302727))

(assert (=> b!4538248 m!5302715))

(declare-fun m!5302729 () Bool)

(assert (=> b!4538248 m!5302729))

(declare-fun m!5302731 () Bool)

(assert (=> b!4538248 m!5302731))

(declare-fun m!5302733 () Bool)

(assert (=> d!1402229 m!5302733))

(assert (=> d!1402229 m!5302483))

(declare-fun m!5302735 () Bool)

(assert (=> b!4538246 m!5302735))

(declare-fun m!5302737 () Bool)

(assert (=> b!4538245 m!5302737))

(declare-fun m!5302739 () Bool)

(assert (=> bm!316431 m!5302739))

(declare-fun m!5302741 () Bool)

(assert (=> bm!316430 m!5302741))

(assert (=> b!4538247 m!5302719))

(assert (=> b!4538182 d!1402229))

(declare-fun bs!875053 () Bool)

(declare-fun d!1402253 () Bool)

(assert (= bs!875053 (and d!1402253 start!450372)))

(declare-fun lambda!175843 () Int)

(assert (=> bs!875053 (= lambda!175843 lambda!175769)))

(declare-fun bs!875054 () Bool)

(assert (= bs!875054 (and d!1402253 b!4538171)))

(assert (=> bs!875054 (not (= lambda!175843 lambda!175770))))

(declare-fun lt!1713279 () ListMap!3665)

(assert (=> d!1402253 (invariantList!1043 (toList!4403 lt!1713279))))

(declare-fun e!2827953 () ListMap!3665)

(assert (=> d!1402253 (= lt!1713279 e!2827953)))

(declare-fun c!775053 () Bool)

(assert (=> d!1402253 (= c!775053 ((_ is Cons!50749) (toList!4404 lt!1713101)))))

(assert (=> d!1402253 (forall!10341 (toList!4404 lt!1713101) lambda!175843)))

(assert (=> d!1402253 (= (extractMap!1254 (toList!4404 lt!1713101)) lt!1713279)))

(declare-fun b!4538261 () Bool)

(assert (=> b!4538261 (= e!2827953 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 lt!1713101))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))))))

(declare-fun b!4538262 () Bool)

(assert (=> b!4538262 (= e!2827953 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402253 c!775053) b!4538261))

(assert (= (and d!1402253 (not c!775053)) b!4538262))

(declare-fun m!5302743 () Bool)

(assert (=> d!1402253 m!5302743))

(declare-fun m!5302745 () Bool)

(assert (=> d!1402253 m!5302745))

(declare-fun m!5302747 () Bool)

(assert (=> b!4538261 m!5302747))

(assert (=> b!4538261 m!5302747))

(declare-fun m!5302749 () Bool)

(assert (=> b!4538261 m!5302749))

(assert (=> b!4538182 d!1402253))

(declare-fun d!1402255 () Bool)

(assert (=> d!1402255 (= (eq!655 lt!1713092 lt!1713098) (= (content!8434 (toList!4403 lt!1713092)) (content!8434 (toList!4403 lt!1713098))))))

(declare-fun bs!875055 () Bool)

(assert (= bs!875055 d!1402255))

(declare-fun m!5302751 () Bool)

(assert (=> bs!875055 m!5302751))

(declare-fun m!5302753 () Bool)

(assert (=> bs!875055 m!5302753))

(assert (=> b!4538160 d!1402255))

(declare-fun d!1402257 () Bool)

(declare-fun res!1891125 () Bool)

(declare-fun e!2827958 () Bool)

(assert (=> d!1402257 (=> res!1891125 e!2827958)))

(assert (=> d!1402257 (= res!1891125 ((_ is Nil!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402257 (= (forall!10341 (toList!4404 lm!1477) lambda!175769) e!2827958)))

(declare-fun b!4538267 () Bool)

(declare-fun e!2827959 () Bool)

(assert (=> b!4538267 (= e!2827958 e!2827959)))

(declare-fun res!1891126 () Bool)

(assert (=> b!4538267 (=> (not res!1891126) (not e!2827959))))

(declare-fun dynLambda!21211 (Int tuple2!51228) Bool)

(assert (=> b!4538267 (= res!1891126 (dynLambda!21211 lambda!175769 (h!56628 (toList!4404 lm!1477))))))

(declare-fun b!4538268 () Bool)

(assert (=> b!4538268 (= e!2827959 (forall!10341 (t!357835 (toList!4404 lm!1477)) lambda!175769))))

(assert (= (and d!1402257 (not res!1891125)) b!4538267))

(assert (= (and b!4538267 res!1891126) b!4538268))

(declare-fun b_lambda!157659 () Bool)

(assert (=> (not b_lambda!157659) (not b!4538267)))

(declare-fun m!5302769 () Bool)

(assert (=> b!4538267 m!5302769))

(declare-fun m!5302771 () Bool)

(assert (=> b!4538268 m!5302771))

(assert (=> start!450372 d!1402257))

(declare-fun d!1402263 () Bool)

(declare-fun isStrictlySorted!457 (List!50873) Bool)

(assert (=> d!1402263 (= (inv!66319 lm!1477) (isStrictlySorted!457 (toList!4404 lm!1477)))))

(declare-fun bs!875066 () Bool)

(assert (= bs!875066 d!1402263))

(declare-fun m!5302785 () Bool)

(assert (=> bs!875066 m!5302785))

(assert (=> start!450372 d!1402263))

(declare-fun b!4538313 () Bool)

(declare-fun e!2827991 () Bool)

(declare-datatypes ((List!50875 0))(
  ( (Nil!50751) (Cons!50751 (h!56632 K!12135) (t!357837 List!50875)) )
))
(declare-fun contains!13540 (List!50875 K!12135) Bool)

(declare-fun keys!17658 (ListMap!3665) List!50875)

(assert (=> b!4538313 (= e!2827991 (not (contains!13540 (keys!17658 lt!1713092) key!3287)))))

(declare-fun bm!316437 () Bool)

(declare-fun call!316442 () Bool)

(declare-fun e!2827996 () List!50875)

(assert (=> bm!316437 (= call!316442 (contains!13540 e!2827996 key!3287))))

(declare-fun c!775067 () Bool)

(declare-fun c!775069 () Bool)

(assert (=> bm!316437 (= c!775067 c!775069)))

(declare-fun b!4538314 () Bool)

(declare-fun e!2827994 () Bool)

(assert (=> b!4538314 (= e!2827994 (contains!13540 (keys!17658 lt!1713092) key!3287))))

(declare-fun b!4538315 () Bool)

(declare-fun e!2827992 () Bool)

(assert (=> b!4538315 (= e!2827992 e!2827994)))

(declare-fun res!1891147 () Bool)

(assert (=> b!4538315 (=> (not res!1891147) (not e!2827994))))

(declare-datatypes ((Option!11200 0))(
  ( (None!11199) (Some!11199 (v!44891 V!12381)) )
))
(declare-fun isDefined!8474 (Option!11200) Bool)

(declare-fun getValueByKey!1144 (List!50872 K!12135) Option!11200)

(assert (=> b!4538315 (= res!1891147 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287)))))

(declare-fun b!4538316 () Bool)

(declare-fun e!2827995 () Unit!98176)

(declare-fun Unit!98205 () Unit!98176)

(assert (=> b!4538316 (= e!2827995 Unit!98205)))

(declare-fun b!4538317 () Bool)

(declare-fun e!2827993 () Unit!98176)

(assert (=> b!4538317 (= e!2827993 e!2827995)))

(declare-fun c!775068 () Bool)

(assert (=> b!4538317 (= c!775068 call!316442)))

(declare-fun d!1402269 () Bool)

(assert (=> d!1402269 e!2827992))

(declare-fun res!1891146 () Bool)

(assert (=> d!1402269 (=> res!1891146 e!2827992)))

(assert (=> d!1402269 (= res!1891146 e!2827991)))

(declare-fun res!1891145 () Bool)

(assert (=> d!1402269 (=> (not res!1891145) (not e!2827991))))

(declare-fun lt!1713315 () Bool)

(assert (=> d!1402269 (= res!1891145 (not lt!1713315))))

(declare-fun lt!1713317 () Bool)

(assert (=> d!1402269 (= lt!1713315 lt!1713317)))

(declare-fun lt!1713316 () Unit!98176)

(assert (=> d!1402269 (= lt!1713316 e!2827993)))

(assert (=> d!1402269 (= c!775069 lt!1713317)))

(declare-fun containsKey!1872 (List!50872 K!12135) Bool)

(assert (=> d!1402269 (= lt!1713317 (containsKey!1872 (toList!4403 lt!1713092) key!3287))))

(assert (=> d!1402269 (= (contains!13538 lt!1713092 key!3287) lt!1713315)))

(declare-fun b!4538318 () Bool)

(declare-fun getKeysList!491 (List!50872) List!50875)

(assert (=> b!4538318 (= e!2827996 (getKeysList!491 (toList!4403 lt!1713092)))))

(declare-fun b!4538319 () Bool)

(assert (=> b!4538319 false))

(declare-fun lt!1713321 () Unit!98176)

(declare-fun lt!1713318 () Unit!98176)

(assert (=> b!4538319 (= lt!1713321 lt!1713318)))

(assert (=> b!4538319 (containsKey!1872 (toList!4403 lt!1713092) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!490 (List!50872 K!12135) Unit!98176)

(assert (=> b!4538319 (= lt!1713318 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713092) key!3287))))

(declare-fun Unit!98207 () Unit!98176)

(assert (=> b!4538319 (= e!2827995 Unit!98207)))

(declare-fun b!4538320 () Bool)

(declare-fun lt!1713319 () Unit!98176)

(assert (=> b!4538320 (= e!2827993 lt!1713319)))

(declare-fun lt!1713320 () Unit!98176)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (List!50872 K!12135) Unit!98176)

(assert (=> b!4538320 (= lt!1713320 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713092) key!3287))))

(assert (=> b!4538320 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287))))

(declare-fun lt!1713314 () Unit!98176)

(assert (=> b!4538320 (= lt!1713314 lt!1713320)))

(declare-fun lemmaInListThenGetKeysListContains!487 (List!50872 K!12135) Unit!98176)

(assert (=> b!4538320 (= lt!1713319 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713092) key!3287))))

(assert (=> b!4538320 call!316442))

(declare-fun b!4538321 () Bool)

(assert (=> b!4538321 (= e!2827996 (keys!17658 lt!1713092))))

(assert (= (and d!1402269 c!775069) b!4538320))

(assert (= (and d!1402269 (not c!775069)) b!4538317))

(assert (= (and b!4538317 c!775068) b!4538319))

(assert (= (and b!4538317 (not c!775068)) b!4538316))

(assert (= (or b!4538320 b!4538317) bm!316437))

(assert (= (and bm!316437 c!775067) b!4538318))

(assert (= (and bm!316437 (not c!775067)) b!4538321))

(assert (= (and d!1402269 res!1891145) b!4538313))

(assert (= (and d!1402269 (not res!1891146)) b!4538315))

(assert (= (and b!4538315 res!1891147) b!4538314))

(declare-fun m!5302793 () Bool)

(assert (=> bm!316437 m!5302793))

(declare-fun m!5302795 () Bool)

(assert (=> b!4538315 m!5302795))

(assert (=> b!4538315 m!5302795))

(declare-fun m!5302797 () Bool)

(assert (=> b!4538315 m!5302797))

(declare-fun m!5302799 () Bool)

(assert (=> d!1402269 m!5302799))

(declare-fun m!5302801 () Bool)

(assert (=> b!4538313 m!5302801))

(assert (=> b!4538313 m!5302801))

(declare-fun m!5302803 () Bool)

(assert (=> b!4538313 m!5302803))

(assert (=> b!4538321 m!5302801))

(assert (=> b!4538314 m!5302801))

(assert (=> b!4538314 m!5302801))

(assert (=> b!4538314 m!5302803))

(assert (=> b!4538319 m!5302799))

(declare-fun m!5302805 () Bool)

(assert (=> b!4538319 m!5302805))

(declare-fun m!5302807 () Bool)

(assert (=> b!4538320 m!5302807))

(assert (=> b!4538320 m!5302795))

(assert (=> b!4538320 m!5302795))

(assert (=> b!4538320 m!5302797))

(declare-fun m!5302809 () Bool)

(assert (=> b!4538320 m!5302809))

(declare-fun m!5302811 () Bool)

(assert (=> b!4538318 m!5302811))

(assert (=> b!4538159 d!1402269))

(declare-fun bs!875068 () Bool)

(declare-fun d!1402275 () Bool)

(assert (= bs!875068 (and d!1402275 start!450372)))

(declare-fun lambda!175846 () Int)

(assert (=> bs!875068 (= lambda!175846 lambda!175769)))

(declare-fun bs!875069 () Bool)

(assert (= bs!875069 (and d!1402275 b!4538171)))

(assert (=> bs!875069 (not (= lambda!175846 lambda!175770))))

(declare-fun bs!875070 () Bool)

(assert (= bs!875070 (and d!1402275 d!1402253)))

(assert (=> bs!875070 (= lambda!175846 lambda!175843)))

(declare-fun lt!1713322 () ListMap!3665)

(assert (=> d!1402275 (invariantList!1043 (toList!4403 lt!1713322))))

(declare-fun e!2827997 () ListMap!3665)

(assert (=> d!1402275 (= lt!1713322 e!2827997)))

(declare-fun c!775070 () Bool)

(assert (=> d!1402275 (= c!775070 ((_ is Cons!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402275 (forall!10341 (toList!4404 lm!1477) lambda!175846)))

(assert (=> d!1402275 (= (extractMap!1254 (toList!4404 lm!1477)) lt!1713322)))

(declare-fun b!4538322 () Bool)

(assert (=> b!4538322 (= e!2827997 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))

(declare-fun b!4538323 () Bool)

(assert (=> b!4538323 (= e!2827997 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402275 c!775070) b!4538322))

(assert (= (and d!1402275 (not c!775070)) b!4538323))

(declare-fun m!5302813 () Bool)

(assert (=> d!1402275 m!5302813))

(declare-fun m!5302815 () Bool)

(assert (=> d!1402275 m!5302815))

(assert (=> b!4538322 m!5302543))

(assert (=> b!4538322 m!5302543))

(declare-fun m!5302817 () Bool)

(assert (=> b!4538322 m!5302817))

(assert (=> b!4538159 d!1402275))

(declare-fun d!1402277 () Bool)

(declare-fun hash!2914 (Hashable!5593 K!12135) (_ BitVec 64))

(assert (=> d!1402277 (= (hash!2911 hashF!1107 key!3287) (hash!2914 hashF!1107 key!3287))))

(declare-fun bs!875071 () Bool)

(assert (= bs!875071 d!1402277))

(declare-fun m!5302819 () Bool)

(assert (=> bs!875071 m!5302819))

(assert (=> b!4538180 d!1402277))

(declare-fun d!1402279 () Bool)

(declare-fun res!1891159 () Bool)

(declare-fun e!2828013 () Bool)

(assert (=> d!1402279 (=> res!1891159 e!2828013)))

(declare-fun e!2828012 () Bool)

(assert (=> d!1402279 (= res!1891159 e!2828012)))

(declare-fun res!1891158 () Bool)

(assert (=> d!1402279 (=> (not res!1891158) (not e!2828012))))

(assert (=> d!1402279 (= res!1891158 ((_ is Cons!50749) (t!357835 (toList!4404 lm!1477))))))

(assert (=> d!1402279 (= (containsKeyBiggerList!178 (t!357835 (toList!4404 lm!1477)) key!3287) e!2828013)))

(declare-fun b!4538341 () Bool)

(assert (=> b!4538341 (= e!2828012 (containsKey!1870 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(declare-fun b!4538342 () Bool)

(declare-fun e!2828011 () Bool)

(assert (=> b!4538342 (= e!2828013 e!2828011)))

(declare-fun res!1891157 () Bool)

(assert (=> b!4538342 (=> (not res!1891157) (not e!2828011))))

(assert (=> b!4538342 (= res!1891157 ((_ is Cons!50749) (t!357835 (toList!4404 lm!1477))))))

(declare-fun b!4538343 () Bool)

(assert (=> b!4538343 (= e!2828011 (containsKeyBiggerList!178 (t!357835 (t!357835 (toList!4404 lm!1477))) key!3287))))

(assert (= (and d!1402279 res!1891158) b!4538341))

(assert (= (and d!1402279 (not res!1891159)) b!4538342))

(assert (= (and b!4538342 res!1891157) b!4538343))

(declare-fun m!5302841 () Bool)

(assert (=> b!4538341 m!5302841))

(declare-fun m!5302845 () Bool)

(assert (=> b!4538343 m!5302845))

(assert (=> b!4538185 d!1402279))

(declare-fun d!1402283 () Bool)

(declare-fun res!1891162 () Bool)

(declare-fun e!2828016 () Bool)

(assert (=> d!1402283 (=> res!1891162 e!2828016)))

(declare-fun e!2828015 () Bool)

(assert (=> d!1402283 (= res!1891162 e!2828015)))

(declare-fun res!1891161 () Bool)

(assert (=> d!1402283 (=> (not res!1891161) (not e!2828015))))

(assert (=> d!1402283 (= res!1891161 ((_ is Cons!50749) (toList!4404 lt!1713100)))))

(assert (=> d!1402283 (= (containsKeyBiggerList!178 (toList!4404 lt!1713100) key!3287) e!2828016)))

(declare-fun b!4538344 () Bool)

(assert (=> b!4538344 (= e!2828015 (containsKey!1870 (_2!28908 (h!56628 (toList!4404 lt!1713100))) key!3287))))

(declare-fun b!4538345 () Bool)

(declare-fun e!2828014 () Bool)

(assert (=> b!4538345 (= e!2828016 e!2828014)))

(declare-fun res!1891160 () Bool)

(assert (=> b!4538345 (=> (not res!1891160) (not e!2828014))))

(assert (=> b!4538345 (= res!1891160 ((_ is Cons!50749) (toList!4404 lt!1713100)))))

(declare-fun b!4538346 () Bool)

(assert (=> b!4538346 (= e!2828014 (containsKeyBiggerList!178 (t!357835 (toList!4404 lt!1713100)) key!3287))))

(assert (= (and d!1402283 res!1891161) b!4538344))

(assert (= (and d!1402283 (not res!1891162)) b!4538345))

(assert (= (and b!4538345 res!1891160) b!4538346))

(declare-fun m!5302853 () Bool)

(assert (=> b!4538344 m!5302853))

(declare-fun m!5302855 () Bool)

(assert (=> b!4538346 m!5302855))

(assert (=> b!4538185 d!1402283))

(declare-fun bs!875088 () Bool)

(declare-fun d!1402289 () Bool)

(assert (= bs!875088 (and d!1402289 start!450372)))

(declare-fun lambda!175853 () Int)

(assert (=> bs!875088 (= lambda!175853 lambda!175769)))

(declare-fun bs!875089 () Bool)

(assert (= bs!875089 (and d!1402289 b!4538171)))

(assert (=> bs!875089 (not (= lambda!175853 lambda!175770))))

(declare-fun bs!875090 () Bool)

(assert (= bs!875090 (and d!1402289 d!1402253)))

(assert (=> bs!875090 (= lambda!175853 lambda!175843)))

(declare-fun bs!875091 () Bool)

(assert (= bs!875091 (and d!1402289 d!1402275)))

(assert (=> bs!875091 (= lambda!175853 lambda!175846)))

(assert (=> d!1402289 (containsKeyBiggerList!178 (toList!4404 lt!1713100) key!3287)))

(declare-fun lt!1713355 () Unit!98176)

(declare-fun choose!29864 (ListLongMap!3035 K!12135 Hashable!5593) Unit!98176)

(assert (=> d!1402289 (= lt!1713355 (choose!29864 lt!1713100 key!3287 hashF!1107))))

(assert (=> d!1402289 (forall!10341 (toList!4404 lt!1713100) lambda!175853)))

(assert (=> d!1402289 (= (lemmaInLongMapThenContainsKeyBiggerList!114 lt!1713100 key!3287 hashF!1107) lt!1713355)))

(declare-fun bs!875093 () Bool)

(assert (= bs!875093 d!1402289))

(assert (=> bs!875093 m!5302575))

(declare-fun m!5302859 () Bool)

(assert (=> bs!875093 m!5302859))

(declare-fun m!5302861 () Bool)

(assert (=> bs!875093 m!5302861))

(assert (=> b!4538185 d!1402289))

(declare-fun d!1402293 () Bool)

(declare-fun res!1891170 () Bool)

(declare-fun e!2828024 () Bool)

(assert (=> d!1402293 (=> res!1891170 e!2828024)))

(assert (=> d!1402293 (= res!1891170 (and ((_ is Cons!50748) (_2!28908 lt!1713093)) (= (_1!28907 (h!56627 (_2!28908 lt!1713093))) key!3287)))))

(assert (=> d!1402293 (= (containsKey!1870 (_2!28908 lt!1713093) key!3287) e!2828024)))

(declare-fun b!4538356 () Bool)

(declare-fun e!2828025 () Bool)

(assert (=> b!4538356 (= e!2828024 e!2828025)))

(declare-fun res!1891171 () Bool)

(assert (=> b!4538356 (=> (not res!1891171) (not e!2828025))))

(assert (=> b!4538356 (= res!1891171 ((_ is Cons!50748) (_2!28908 lt!1713093)))))

(declare-fun b!4538357 () Bool)

(assert (=> b!4538357 (= e!2828025 (containsKey!1870 (t!357834 (_2!28908 lt!1713093)) key!3287))))

(assert (= (and d!1402293 (not res!1891170)) b!4538356))

(assert (= (and b!4538356 res!1891171) b!4538357))

(declare-fun m!5302875 () Bool)

(assert (=> b!4538357 m!5302875))

(assert (=> b!4538163 d!1402293))

(declare-fun d!1402295 () Bool)

(declare-datatypes ((Option!11201 0))(
  ( (None!11200) (Some!11200 (v!44892 List!50872)) )
))
(declare-fun get!16682 (Option!11201) List!50872)

(declare-fun getValueByKey!1145 (List!50873 (_ BitVec 64)) Option!11201)

(assert (=> d!1402295 (= (apply!11935 lt!1713100 hash!344) (get!16682 (getValueByKey!1145 (toList!4404 lt!1713100) hash!344)))))

(declare-fun bs!875099 () Bool)

(assert (= bs!875099 d!1402295))

(declare-fun m!5302899 () Bool)

(assert (=> bs!875099 m!5302899))

(assert (=> bs!875099 m!5302899))

(declare-fun m!5302901 () Bool)

(assert (=> bs!875099 m!5302901))

(assert (=> b!4538184 d!1402295))

(declare-fun d!1402299 () Bool)

(declare-fun res!1891172 () Bool)

(declare-fun e!2828026 () Bool)

(assert (=> d!1402299 (=> res!1891172 e!2828026)))

(assert (=> d!1402299 (= res!1891172 (not ((_ is Cons!50748) (_2!28908 lt!1713093))))))

(assert (=> d!1402299 (= (noDuplicateKeys!1198 (_2!28908 lt!1713093)) e!2828026)))

(declare-fun b!4538358 () Bool)

(declare-fun e!2828027 () Bool)

(assert (=> b!4538358 (= e!2828026 e!2828027)))

(declare-fun res!1891173 () Bool)

(assert (=> b!4538358 (=> (not res!1891173) (not e!2828027))))

(assert (=> b!4538358 (= res!1891173 (not (containsKey!1870 (t!357834 (_2!28908 lt!1713093)) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4538359 () Bool)

(assert (=> b!4538359 (= e!2828027 (noDuplicateKeys!1198 (t!357834 (_2!28908 lt!1713093))))))

(assert (= (and d!1402299 (not res!1891172)) b!4538358))

(assert (= (and b!4538358 res!1891173) b!4538359))

(declare-fun m!5302903 () Bool)

(assert (=> b!4538358 m!5302903))

(declare-fun m!5302905 () Bool)

(assert (=> b!4538359 m!5302905))

(assert (=> b!4538162 d!1402299))

(declare-fun d!1402301 () Bool)

(assert (=> d!1402301 (dynLambda!21211 lambda!175769 (h!56628 (toList!4404 lm!1477)))))

(declare-fun lt!1713358 () Unit!98176)

(declare-fun choose!29865 (List!50873 Int tuple2!51228) Unit!98176)

(assert (=> d!1402301 (= lt!1713358 (choose!29865 (toList!4404 lm!1477) lambda!175769 (h!56628 (toList!4404 lm!1477))))))

(declare-fun e!2828030 () Bool)

(assert (=> d!1402301 e!2828030))

(declare-fun res!1891176 () Bool)

(assert (=> d!1402301 (=> (not res!1891176) (not e!2828030))))

(assert (=> d!1402301 (= res!1891176 (forall!10341 (toList!4404 lm!1477) lambda!175769))))

(assert (=> d!1402301 (= (forallContained!2604 (toList!4404 lm!1477) lambda!175769 (h!56628 (toList!4404 lm!1477))) lt!1713358)))

(declare-fun b!4538362 () Bool)

(assert (=> b!4538362 (= e!2828030 (contains!13537 (toList!4404 lm!1477) (h!56628 (toList!4404 lm!1477))))))

(assert (= (and d!1402301 res!1891176) b!4538362))

(declare-fun b_lambda!157663 () Bool)

(assert (=> (not b_lambda!157663) (not d!1402301)))

(assert (=> d!1402301 m!5302769))

(declare-fun m!5302907 () Bool)

(assert (=> d!1402301 m!5302907))

(assert (=> d!1402301 m!5302569))

(declare-fun m!5302909 () Bool)

(assert (=> b!4538362 m!5302909))

(assert (=> b!4538162 d!1402301))

(declare-fun bs!875102 () Bool)

(declare-fun d!1402303 () Bool)

(assert (= bs!875102 (and d!1402303 start!450372)))

(declare-fun lambda!175857 () Int)

(assert (=> bs!875102 (= lambda!175857 lambda!175769)))

(declare-fun bs!875103 () Bool)

(assert (= bs!875103 (and d!1402303 d!1402275)))

(assert (=> bs!875103 (= lambda!175857 lambda!175846)))

(declare-fun bs!875104 () Bool)

(assert (= bs!875104 (and d!1402303 b!4538171)))

(assert (=> bs!875104 (not (= lambda!175857 lambda!175770))))

(declare-fun bs!875105 () Bool)

(assert (= bs!875105 (and d!1402303 d!1402253)))

(assert (=> bs!875105 (= lambda!175857 lambda!175843)))

(declare-fun bs!875106 () Bool)

(assert (= bs!875106 (and d!1402303 d!1402289)))

(assert (=> bs!875106 (= lambda!175857 lambda!175853)))

(assert (=> d!1402303 (not (contains!13538 (extractMap!1254 (toList!4404 lm!1477)) key!3287))))

(declare-fun lt!1713367 () Unit!98176)

(declare-fun choose!29866 (ListLongMap!3035 K!12135 Hashable!5593) Unit!98176)

(assert (=> d!1402303 (= lt!1713367 (choose!29866 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1402303 (forall!10341 (toList!4404 lm!1477) lambda!175857)))

(assert (=> d!1402303 (= (lemmaNotInItsHashBucketThenNotInMap!186 lm!1477 key!3287 hashF!1107) lt!1713367)))

(declare-fun bs!875107 () Bool)

(assert (= bs!875107 d!1402303))

(assert (=> bs!875107 m!5302581))

(assert (=> bs!875107 m!5302581))

(declare-fun m!5302929 () Bool)

(assert (=> bs!875107 m!5302929))

(declare-fun m!5302931 () Bool)

(assert (=> bs!875107 m!5302931))

(declare-fun m!5302933 () Bool)

(assert (=> bs!875107 m!5302933))

(assert (=> b!4538183 d!1402303))

(declare-fun d!1402315 () Bool)

(declare-fun isEmpty!28744 (List!50873) Bool)

(assert (=> d!1402315 (= (isEmpty!28743 lm!1477) (isEmpty!28744 (toList!4404 lm!1477)))))

(declare-fun bs!875108 () Bool)

(assert (= bs!875108 d!1402315))

(declare-fun m!5302935 () Bool)

(assert (=> bs!875108 m!5302935))

(assert (=> b!4538177 d!1402315))

(declare-fun bs!875111 () Bool)

(declare-fun d!1402317 () Bool)

(assert (= bs!875111 (and d!1402317 b!4538248)))

(declare-fun lambda!175860 () Int)

(assert (=> bs!875111 (not (= lambda!175860 lambda!175836))))

(assert (=> bs!875111 (not (= lambda!175860 lambda!175837))))

(declare-fun bs!875112 () Bool)

(assert (= bs!875112 (and d!1402317 b!4538249)))

(assert (=> bs!875112 (not (= lambda!175860 lambda!175834))))

(declare-fun bs!875113 () Bool)

(assert (= bs!875113 (and d!1402317 d!1402229)))

(assert (=> bs!875113 (not (= lambda!175860 lambda!175838))))

(declare-fun bs!875114 () Bool)

(assert (= bs!875114 (and d!1402317 b!4538171)))

(assert (=> bs!875114 (= (= hash!344 (_1!28908 (h!56628 (toList!4404 lm!1477)))) (= lambda!175860 lambda!175771))))

(assert (=> d!1402317 true))

(assert (=> d!1402317 true))

(assert (=> d!1402317 (= (allKeysSameHash!1052 newBucket!178 hash!344 hashF!1107) (forall!10343 newBucket!178 lambda!175860))))

(declare-fun bs!875115 () Bool)

(assert (= bs!875115 d!1402317))

(declare-fun m!5302957 () Bool)

(assert (=> bs!875115 m!5302957))

(assert (=> b!4538155 d!1402317))

(declare-fun d!1402327 () Bool)

(declare-fun e!2828053 () Bool)

(assert (=> d!1402327 e!2828053))

(declare-fun res!1891201 () Bool)

(assert (=> d!1402327 (=> (not res!1891201) (not e!2828053))))

(declare-fun lt!1713382 () ListMap!3665)

(assert (=> d!1402327 (= res!1891201 (not (contains!13538 lt!1713382 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!167 (List!50872 K!12135) List!50872)

(assert (=> d!1402327 (= lt!1713382 (ListMap!3666 (removePresrvNoDuplicatedKeys!167 (toList!4403 lt!1713103) key!3287)))))

(assert (=> d!1402327 (= (-!424 lt!1713103 key!3287) lt!1713382)))

(declare-fun b!4538391 () Bool)

(declare-fun content!8435 (List!50875) (InoxSet K!12135))

(assert (=> b!4538391 (= e!2828053 (= ((_ map and) (content!8435 (keys!17658 lt!1713103)) ((_ map not) (store ((as const (Array K!12135 Bool)) false) key!3287 true))) (content!8435 (keys!17658 lt!1713382))))))

(assert (= (and d!1402327 res!1891201) b!4538391))

(declare-fun m!5302987 () Bool)

(assert (=> d!1402327 m!5302987))

(declare-fun m!5302989 () Bool)

(assert (=> d!1402327 m!5302989))

(declare-fun m!5302991 () Bool)

(assert (=> b!4538391 m!5302991))

(declare-fun m!5302993 () Bool)

(assert (=> b!4538391 m!5302993))

(declare-fun m!5302995 () Bool)

(assert (=> b!4538391 m!5302995))

(assert (=> b!4538391 m!5302991))

(declare-fun m!5302997 () Bool)

(assert (=> b!4538391 m!5302997))

(declare-fun m!5302999 () Bool)

(assert (=> b!4538391 m!5302999))

(assert (=> b!4538391 m!5302997))

(assert (=> b!4538176 d!1402327))

(declare-fun d!1402339 () Bool)

(assert (=> d!1402339 (= (eq!655 lt!1713121 lt!1713095) (= (content!8434 (toList!4403 lt!1713121)) (content!8434 (toList!4403 lt!1713095))))))

(declare-fun bs!875132 () Bool)

(assert (= bs!875132 d!1402339))

(declare-fun m!5303003 () Bool)

(assert (=> bs!875132 m!5303003))

(declare-fun m!5303005 () Bool)

(assert (=> bs!875132 m!5303005))

(assert (=> b!4538176 d!1402339))

(declare-fun d!1402343 () Bool)

(declare-fun head!9478 (List!50873) tuple2!51228)

(assert (=> d!1402343 (= (head!9476 lm!1477) (head!9478 (toList!4404 lm!1477)))))

(declare-fun bs!875133 () Bool)

(assert (= bs!875133 d!1402343))

(declare-fun m!5303007 () Bool)

(assert (=> bs!875133 m!5303007))

(assert (=> b!4538176 d!1402343))

(declare-fun bs!875134 () Bool)

(declare-fun d!1402345 () Bool)

(assert (= bs!875134 (and d!1402345 start!450372)))

(declare-fun lambda!175867 () Int)

(assert (=> bs!875134 (= lambda!175867 lambda!175769)))

(declare-fun bs!875135 () Bool)

(assert (= bs!875135 (and d!1402345 d!1402275)))

(assert (=> bs!875135 (= lambda!175867 lambda!175846)))

(declare-fun bs!875136 () Bool)

(assert (= bs!875136 (and d!1402345 b!4538171)))

(assert (=> bs!875136 (not (= lambda!175867 lambda!175770))))

(declare-fun bs!875137 () Bool)

(assert (= bs!875137 (and d!1402345 d!1402303)))

(assert (=> bs!875137 (= lambda!175867 lambda!175857)))

(declare-fun bs!875138 () Bool)

(assert (= bs!875138 (and d!1402345 d!1402253)))

(assert (=> bs!875138 (= lambda!175867 lambda!175843)))

(declare-fun bs!875139 () Bool)

(assert (= bs!875139 (and d!1402345 d!1402289)))

(assert (=> bs!875139 (= lambda!175867 lambda!175853)))

(declare-fun lt!1713383 () ListMap!3665)

(assert (=> d!1402345 (invariantList!1043 (toList!4403 lt!1713383))))

(declare-fun e!2828056 () ListMap!3665)

(assert (=> d!1402345 (= lt!1713383 e!2828056)))

(declare-fun c!775076 () Bool)

(assert (=> d!1402345 (= c!775076 ((_ is Cons!50749) (toList!4404 (+!1602 lt!1713100 lt!1713093))))))

(assert (=> d!1402345 (forall!10341 (toList!4404 (+!1602 lt!1713100 lt!1713093)) lambda!175867)))

(assert (=> d!1402345 (= (extractMap!1254 (toList!4404 (+!1602 lt!1713100 lt!1713093))) lt!1713383)))

(declare-fun b!4538394 () Bool)

(assert (=> b!4538394 (= e!2828056 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))))))

(declare-fun b!4538395 () Bool)

(assert (=> b!4538395 (= e!2828056 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402345 c!775076) b!4538394))

(assert (= (and d!1402345 (not c!775076)) b!4538395))

(declare-fun m!5303009 () Bool)

(assert (=> d!1402345 m!5303009))

(declare-fun m!5303011 () Bool)

(assert (=> d!1402345 m!5303011))

(declare-fun m!5303013 () Bool)

(assert (=> b!4538394 m!5303013))

(assert (=> b!4538394 m!5303013))

(declare-fun m!5303015 () Bool)

(assert (=> b!4538394 m!5303015))

(assert (=> b!4538176 d!1402345))

(declare-fun d!1402347 () Bool)

(declare-fun e!2828059 () Bool)

(assert (=> d!1402347 e!2828059))

(declare-fun res!1891209 () Bool)

(assert (=> d!1402347 (=> (not res!1891209) (not e!2828059))))

(declare-fun lt!1713393 () ListLongMap!3035)

(assert (=> d!1402347 (= res!1891209 (contains!13539 lt!1713393 (_1!28908 lt!1713093)))))

(declare-fun lt!1713394 () List!50873)

(assert (=> d!1402347 (= lt!1713393 (ListLongMap!3036 lt!1713394))))

(declare-fun lt!1713392 () Unit!98176)

(declare-fun lt!1713395 () Unit!98176)

(assert (=> d!1402347 (= lt!1713392 lt!1713395)))

(assert (=> d!1402347 (= (getValueByKey!1145 lt!1713394 (_1!28908 lt!1713093)) (Some!11200 (_2!28908 lt!1713093)))))

(declare-fun lemmaContainsTupThenGetReturnValue!718 (List!50873 (_ BitVec 64) List!50872) Unit!98176)

(assert (=> d!1402347 (= lt!1713395 (lemmaContainsTupThenGetReturnValue!718 lt!1713394 (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))

(declare-fun insertStrictlySorted!434 (List!50873 (_ BitVec 64) List!50872) List!50873)

(assert (=> d!1402347 (= lt!1713394 (insertStrictlySorted!434 (toList!4404 lt!1713100) (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))

(assert (=> d!1402347 (= (+!1602 lt!1713100 lt!1713093) lt!1713393)))

(declare-fun b!4538400 () Bool)

(declare-fun res!1891208 () Bool)

(assert (=> b!4538400 (=> (not res!1891208) (not e!2828059))))

(assert (=> b!4538400 (= res!1891208 (= (getValueByKey!1145 (toList!4404 lt!1713393) (_1!28908 lt!1713093)) (Some!11200 (_2!28908 lt!1713093))))))

(declare-fun b!4538401 () Bool)

(assert (=> b!4538401 (= e!2828059 (contains!13537 (toList!4404 lt!1713393) lt!1713093))))

(assert (= (and d!1402347 res!1891209) b!4538400))

(assert (= (and b!4538400 res!1891208) b!4538401))

(declare-fun m!5303017 () Bool)

(assert (=> d!1402347 m!5303017))

(declare-fun m!5303019 () Bool)

(assert (=> d!1402347 m!5303019))

(declare-fun m!5303021 () Bool)

(assert (=> d!1402347 m!5303021))

(declare-fun m!5303023 () Bool)

(assert (=> d!1402347 m!5303023))

(declare-fun m!5303025 () Bool)

(assert (=> b!4538400 m!5303025))

(declare-fun m!5303027 () Bool)

(assert (=> b!4538401 m!5303027))

(assert (=> b!4538176 d!1402347))

(declare-fun bs!875140 () Bool)

(declare-fun d!1402349 () Bool)

(assert (= bs!875140 (and d!1402349 start!450372)))

(declare-fun lambda!175870 () Int)

(assert (=> bs!875140 (= lambda!175870 lambda!175769)))

(declare-fun bs!875141 () Bool)

(assert (= bs!875141 (and d!1402349 d!1402275)))

(assert (=> bs!875141 (= lambda!175870 lambda!175846)))

(declare-fun bs!875142 () Bool)

(assert (= bs!875142 (and d!1402349 b!4538171)))

(assert (=> bs!875142 (not (= lambda!175870 lambda!175770))))

(declare-fun bs!875143 () Bool)

(assert (= bs!875143 (and d!1402349 d!1402303)))

(assert (=> bs!875143 (= lambda!175870 lambda!175857)))

(declare-fun bs!875144 () Bool)

(assert (= bs!875144 (and d!1402349 d!1402253)))

(assert (=> bs!875144 (= lambda!175870 lambda!175843)))

(declare-fun bs!875145 () Bool)

(assert (= bs!875145 (and d!1402349 d!1402289)))

(assert (=> bs!875145 (= lambda!175870 lambda!175853)))

(declare-fun bs!875146 () Bool)

(assert (= bs!875146 (and d!1402349 d!1402345)))

(assert (=> bs!875146 (= lambda!175870 lambda!175867)))

(declare-fun lt!1713396 () ListMap!3665)

(assert (=> d!1402349 (invariantList!1043 (toList!4403 lt!1713396))))

(declare-fun e!2828060 () ListMap!3665)

(assert (=> d!1402349 (= lt!1713396 e!2828060)))

(declare-fun c!775077 () Bool)

(assert (=> d!1402349 (= c!775077 ((_ is Cons!50749) (toList!4404 lt!1713102)))))

(assert (=> d!1402349 (forall!10341 (toList!4404 lt!1713102) lambda!175870)))

(assert (=> d!1402349 (= (extractMap!1254 (toList!4404 lt!1713102)) lt!1713396)))

(declare-fun b!4538402 () Bool)

(assert (=> b!4538402 (= e!2828060 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 lt!1713102))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))))))

(declare-fun b!4538403 () Bool)

(assert (=> b!4538403 (= e!2828060 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402349 c!775077) b!4538402))

(assert (= (and d!1402349 (not c!775077)) b!4538403))

(declare-fun m!5303029 () Bool)

(assert (=> d!1402349 m!5303029))

(declare-fun m!5303031 () Bool)

(assert (=> d!1402349 m!5303031))

(declare-fun m!5303033 () Bool)

(assert (=> b!4538402 m!5303033))

(assert (=> b!4538402 m!5303033))

(declare-fun m!5303035 () Bool)

(assert (=> b!4538402 m!5303035))

(assert (=> b!4538176 d!1402349))

(declare-fun d!1402351 () Bool)

(assert (=> d!1402351 (= (eq!655 lt!1713098 lt!1713092) (= (content!8434 (toList!4403 lt!1713098)) (content!8434 (toList!4403 lt!1713092))))))

(declare-fun bs!875151 () Bool)

(assert (= bs!875151 d!1402351))

(assert (=> bs!875151 m!5302753))

(assert (=> bs!875151 m!5302751))

(assert (=> b!4538176 d!1402351))

(declare-fun bs!875193 () Bool)

(declare-fun d!1402353 () Bool)

(assert (= bs!875193 (and d!1402353 start!450372)))

(declare-fun lambda!175879 () Int)

(assert (=> bs!875193 (= lambda!175879 lambda!175769)))

(declare-fun bs!875194 () Bool)

(assert (= bs!875194 (and d!1402353 d!1402275)))

(assert (=> bs!875194 (= lambda!175879 lambda!175846)))

(declare-fun bs!875195 () Bool)

(assert (= bs!875195 (and d!1402353 b!4538171)))

(assert (=> bs!875195 (not (= lambda!175879 lambda!175770))))

(declare-fun bs!875196 () Bool)

(assert (= bs!875196 (and d!1402353 d!1402349)))

(assert (=> bs!875196 (= lambda!175879 lambda!175870)))

(declare-fun bs!875197 () Bool)

(assert (= bs!875197 (and d!1402353 d!1402303)))

(assert (=> bs!875197 (= lambda!175879 lambda!175857)))

(declare-fun bs!875198 () Bool)

(assert (= bs!875198 (and d!1402353 d!1402253)))

(assert (=> bs!875198 (= lambda!175879 lambda!175843)))

(declare-fun bs!875199 () Bool)

(assert (= bs!875199 (and d!1402353 d!1402289)))

(assert (=> bs!875199 (= lambda!175879 lambda!175853)))

(declare-fun bs!875200 () Bool)

(assert (= bs!875200 (and d!1402353 d!1402345)))

(assert (=> bs!875200 (= lambda!175879 lambda!175867)))

(assert (=> d!1402353 (eq!655 (extractMap!1254 (toList!4404 (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178)))) (-!424 (extractMap!1254 (toList!4404 lt!1713100)) key!3287))))

(declare-fun lt!1713432 () Unit!98176)

(declare-fun choose!29869 (ListLongMap!3035 (_ BitVec 64) List!50872 K!12135 Hashable!5593) Unit!98176)

(assert (=> d!1402353 (= lt!1713432 (choose!29869 lt!1713100 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1402353 (forall!10341 (toList!4404 lt!1713100) lambda!175879)))

(assert (=> d!1402353 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!183 lt!1713100 hash!344 newBucket!178 key!3287 hashF!1107) lt!1713432)))

(declare-fun bs!875201 () Bool)

(assert (= bs!875201 d!1402353))

(declare-fun m!5303091 () Bool)

(assert (=> bs!875201 m!5303091))

(declare-fun m!5303093 () Bool)

(assert (=> bs!875201 m!5303093))

(assert (=> bs!875201 m!5302545))

(declare-fun m!5303095 () Bool)

(assert (=> bs!875201 m!5303095))

(declare-fun m!5303097 () Bool)

(assert (=> bs!875201 m!5303097))

(assert (=> bs!875201 m!5303095))

(declare-fun m!5303101 () Bool)

(assert (=> bs!875201 m!5303101))

(assert (=> bs!875201 m!5303097))

(assert (=> bs!875201 m!5302545))

(declare-fun m!5303103 () Bool)

(assert (=> bs!875201 m!5303103))

(assert (=> b!4538176 d!1402353))

(declare-fun d!1402369 () Bool)

(declare-fun e!2828073 () Bool)

(assert (=> d!1402369 e!2828073))

(declare-fun res!1891219 () Bool)

(assert (=> d!1402369 (=> (not res!1891219) (not e!2828073))))

(declare-fun lt!1713439 () ListLongMap!3035)

(assert (=> d!1402369 (= res!1891219 (contains!13539 lt!1713439 (_1!28908 lt!1713120)))))

(declare-fun lt!1713440 () List!50873)

(assert (=> d!1402369 (= lt!1713439 (ListLongMap!3036 lt!1713440))))

(declare-fun lt!1713438 () Unit!98176)

(declare-fun lt!1713441 () Unit!98176)

(assert (=> d!1402369 (= lt!1713438 lt!1713441)))

(assert (=> d!1402369 (= (getValueByKey!1145 lt!1713440 (_1!28908 lt!1713120)) (Some!11200 (_2!28908 lt!1713120)))))

(assert (=> d!1402369 (= lt!1713441 (lemmaContainsTupThenGetReturnValue!718 lt!1713440 (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))

(assert (=> d!1402369 (= lt!1713440 (insertStrictlySorted!434 (toList!4404 lt!1713100) (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))

(assert (=> d!1402369 (= (+!1602 lt!1713100 lt!1713120) lt!1713439)))

(declare-fun b!4538422 () Bool)

(declare-fun res!1891218 () Bool)

(assert (=> b!4538422 (=> (not res!1891218) (not e!2828073))))

(assert (=> b!4538422 (= res!1891218 (= (getValueByKey!1145 (toList!4404 lt!1713439) (_1!28908 lt!1713120)) (Some!11200 (_2!28908 lt!1713120))))))

(declare-fun b!4538423 () Bool)

(assert (=> b!4538423 (= e!2828073 (contains!13537 (toList!4404 lt!1713439) lt!1713120))))

(assert (= (and d!1402369 res!1891219) b!4538422))

(assert (= (and b!4538422 res!1891218) b!4538423))

(declare-fun m!5303109 () Bool)

(assert (=> d!1402369 m!5303109))

(declare-fun m!5303111 () Bool)

(assert (=> d!1402369 m!5303111))

(declare-fun m!5303113 () Bool)

(assert (=> d!1402369 m!5303113))

(declare-fun m!5303115 () Bool)

(assert (=> d!1402369 m!5303115))

(declare-fun m!5303117 () Bool)

(assert (=> b!4538422 m!5303117))

(declare-fun m!5303119 () Bool)

(assert (=> b!4538423 m!5303119))

(assert (=> b!4538176 d!1402369))

(declare-fun d!1402373 () Bool)

(assert (=> d!1402373 (= (eq!655 lt!1713097 lt!1713091) (= (content!8434 (toList!4403 lt!1713097)) (content!8434 (toList!4403 lt!1713091))))))

(declare-fun bs!875203 () Bool)

(assert (= bs!875203 d!1402373))

(assert (=> bs!875203 m!5302599))

(declare-fun m!5303121 () Bool)

(assert (=> bs!875203 m!5303121))

(assert (=> b!4538175 d!1402373))

(declare-fun d!1402375 () Bool)

(declare-fun lt!1713446 () Bool)

(declare-fun content!8437 (List!50873) (InoxSet tuple2!51228))

(assert (=> d!1402375 (= lt!1713446 (select (content!8437 (t!357835 (toList!4404 lm!1477))) lt!1713115))))

(declare-fun e!2828079 () Bool)

(assert (=> d!1402375 (= lt!1713446 e!2828079)))

(declare-fun res!1891224 () Bool)

(assert (=> d!1402375 (=> (not res!1891224) (not e!2828079))))

(assert (=> d!1402375 (= res!1891224 ((_ is Cons!50749) (t!357835 (toList!4404 lm!1477))))))

(assert (=> d!1402375 (= (contains!13537 (t!357835 (toList!4404 lm!1477)) lt!1713115) lt!1713446)))

(declare-fun b!4538428 () Bool)

(declare-fun e!2828078 () Bool)

(assert (=> b!4538428 (= e!2828079 e!2828078)))

(declare-fun res!1891225 () Bool)

(assert (=> b!4538428 (=> res!1891225 e!2828078)))

(assert (=> b!4538428 (= res!1891225 (= (h!56628 (t!357835 (toList!4404 lm!1477))) lt!1713115))))

(declare-fun b!4538429 () Bool)

(assert (=> b!4538429 (= e!2828078 (contains!13537 (t!357835 (t!357835 (toList!4404 lm!1477))) lt!1713115))))

(assert (= (and d!1402375 res!1891224) b!4538428))

(assert (= (and b!4538428 (not res!1891225)) b!4538429))

(declare-fun m!5303123 () Bool)

(assert (=> d!1402375 m!5303123))

(declare-fun m!5303125 () Bool)

(assert (=> d!1402375 m!5303125))

(declare-fun m!5303127 () Bool)

(assert (=> b!4538429 m!5303127))

(assert (=> b!4538158 d!1402375))

(declare-fun d!1402377 () Bool)

(declare-fun res!1891226 () Bool)

(declare-fun e!2828080 () Bool)

(assert (=> d!1402377 (=> res!1891226 e!2828080)))

(assert (=> d!1402377 (= res!1891226 (and ((_ is Cons!50748) lt!1713088) (= (_1!28907 (h!56627 lt!1713088)) key!3287)))))

(assert (=> d!1402377 (= (containsKey!1870 lt!1713088 key!3287) e!2828080)))

(declare-fun b!4538430 () Bool)

(declare-fun e!2828081 () Bool)

(assert (=> b!4538430 (= e!2828080 e!2828081)))

(declare-fun res!1891227 () Bool)

(assert (=> b!4538430 (=> (not res!1891227) (not e!2828081))))

(assert (=> b!4538430 (= res!1891227 ((_ is Cons!50748) lt!1713088))))

(declare-fun b!4538431 () Bool)

(assert (=> b!4538431 (= e!2828081 (containsKey!1870 (t!357834 lt!1713088) key!3287))))

(assert (= (and d!1402377 (not res!1891226)) b!4538430))

(assert (= (and b!4538430 res!1891227) b!4538431))

(declare-fun m!5303129 () Bool)

(assert (=> b!4538431 m!5303129))

(assert (=> b!4538178 d!1402377))

(declare-fun d!1402379 () Bool)

(assert (=> d!1402379 (= (eq!655 lt!1713090 lt!1713091) (= (content!8434 (toList!4403 lt!1713090)) (content!8434 (toList!4403 lt!1713091))))))

(declare-fun bs!875205 () Bool)

(assert (= bs!875205 d!1402379))

(declare-fun m!5303131 () Bool)

(assert (=> bs!875205 m!5303131))

(assert (=> bs!875205 m!5303121))

(assert (=> b!4538156 d!1402379))

(declare-fun d!1402381 () Bool)

(declare-fun e!2828082 () Bool)

(assert (=> d!1402381 e!2828082))

(declare-fun res!1891228 () Bool)

(assert (=> d!1402381 (=> (not res!1891228) (not e!2828082))))

(declare-fun lt!1713448 () ListMap!3665)

(assert (=> d!1402381 (= res!1891228 (not (contains!13538 lt!1713448 key!3287)))))

(assert (=> d!1402381 (= lt!1713448 (ListMap!3666 (removePresrvNoDuplicatedKeys!167 (toList!4403 lt!1713092) key!3287)))))

(assert (=> d!1402381 (= (-!424 lt!1713092 key!3287) lt!1713448)))

(declare-fun b!4538432 () Bool)

(assert (=> b!4538432 (= e!2828082 (= ((_ map and) (content!8435 (keys!17658 lt!1713092)) ((_ map not) (store ((as const (Array K!12135 Bool)) false) key!3287 true))) (content!8435 (keys!17658 lt!1713448))))))

(assert (= (and d!1402381 res!1891228) b!4538432))

(declare-fun m!5303133 () Bool)

(assert (=> d!1402381 m!5303133))

(declare-fun m!5303135 () Bool)

(assert (=> d!1402381 m!5303135))

(declare-fun m!5303137 () Bool)

(assert (=> b!4538432 m!5303137))

(declare-fun m!5303139 () Bool)

(assert (=> b!4538432 m!5303139))

(assert (=> b!4538432 m!5302995))

(assert (=> b!4538432 m!5303137))

(assert (=> b!4538432 m!5302801))

(declare-fun m!5303141 () Bool)

(assert (=> b!4538432 m!5303141))

(assert (=> b!4538432 m!5302801))

(assert (=> b!4538156 d!1402381))

(declare-fun b!4538463 () Bool)

(declare-fun e!2828104 () Bool)

(declare-fun e!2828103 () Bool)

(assert (=> b!4538463 (= e!2828104 e!2828103)))

(declare-fun res!1891240 () Bool)

(assert (=> b!4538463 (=> (not res!1891240) (not e!2828103))))

(declare-fun lt!1713455 () Option!11197)

(declare-fun isDefined!8475 (Option!11197) Bool)

(assert (=> b!4538463 (= res!1891240 (isDefined!8475 lt!1713455))))

(declare-fun b!4538464 () Bool)

(declare-fun res!1891239 () Bool)

(assert (=> b!4538464 (=> (not res!1891239) (not e!2828103))))

(assert (=> b!4538464 (= res!1891239 (= (_1!28907 (get!16681 lt!1713455)) key!3287))))

(declare-fun b!4538465 () Bool)

(declare-fun e!2828101 () Option!11197)

(assert (=> b!4538465 (= e!2828101 (Some!11196 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun b!4538466 () Bool)

(declare-fun e!2828102 () Option!11197)

(assert (=> b!4538466 (= e!2828102 None!11196)))

(declare-fun b!4538467 () Bool)

(declare-fun e!2828100 () Bool)

(assert (=> b!4538467 (= e!2828100 (not (containsKey!1870 (_2!28908 lt!1713093) key!3287)))))

(declare-fun d!1402383 () Bool)

(assert (=> d!1402383 e!2828104))

(declare-fun res!1891241 () Bool)

(assert (=> d!1402383 (=> res!1891241 e!2828104)))

(assert (=> d!1402383 (= res!1891241 e!2828100)))

(declare-fun res!1891238 () Bool)

(assert (=> d!1402383 (=> (not res!1891238) (not e!2828100))))

(declare-fun isEmpty!28745 (Option!11197) Bool)

(assert (=> d!1402383 (= res!1891238 (isEmpty!28745 lt!1713455))))

(assert (=> d!1402383 (= lt!1713455 e!2828101)))

(declare-fun c!775093 () Bool)

(assert (=> d!1402383 (= c!775093 (and ((_ is Cons!50748) (_2!28908 lt!1713093)) (= (_1!28907 (h!56627 (_2!28908 lt!1713093))) key!3287)))))

(assert (=> d!1402383 (noDuplicateKeys!1198 (_2!28908 lt!1713093))))

(assert (=> d!1402383 (= (getPair!214 (_2!28908 lt!1713093) key!3287) lt!1713455)))

(declare-fun b!4538462 () Bool)

(assert (=> b!4538462 (= e!2828101 e!2828102)))

(declare-fun c!775094 () Bool)

(assert (=> b!4538462 (= c!775094 ((_ is Cons!50748) (_2!28908 lt!1713093)))))

(declare-fun b!4538468 () Bool)

(assert (=> b!4538468 (= e!2828102 (getPair!214 (t!357834 (_2!28908 lt!1713093)) key!3287))))

(declare-fun b!4538469 () Bool)

(declare-fun contains!13542 (List!50872 tuple2!51226) Bool)

(assert (=> b!4538469 (= e!2828103 (contains!13542 (_2!28908 lt!1713093) (get!16681 lt!1713455)))))

(assert (= (and d!1402383 c!775093) b!4538465))

(assert (= (and d!1402383 (not c!775093)) b!4538462))

(assert (= (and b!4538462 c!775094) b!4538468))

(assert (= (and b!4538462 (not c!775094)) b!4538466))

(assert (= (and d!1402383 res!1891238) b!4538467))

(assert (= (and d!1402383 (not res!1891241)) b!4538463))

(assert (= (and b!4538463 res!1891240) b!4538464))

(assert (= (and b!4538464 res!1891239) b!4538469))

(declare-fun m!5303163 () Bool)

(assert (=> b!4538469 m!5303163))

(assert (=> b!4538469 m!5303163))

(declare-fun m!5303165 () Bool)

(assert (=> b!4538469 m!5303165))

(declare-fun m!5303167 () Bool)

(assert (=> d!1402383 m!5303167))

(assert (=> d!1402383 m!5302483))

(declare-fun m!5303169 () Bool)

(assert (=> b!4538463 m!5303169))

(assert (=> b!4538467 m!5302523))

(declare-fun m!5303171 () Bool)

(assert (=> b!4538468 m!5303171))

(assert (=> b!4538464 m!5303163))

(assert (=> b!4538171 d!1402383))

(declare-fun d!1402393 () Bool)

(assert (=> d!1402393 (dynLambda!21211 lambda!175770 (h!56628 (toList!4404 lm!1477)))))

(declare-fun lt!1713456 () Unit!98176)

(assert (=> d!1402393 (= lt!1713456 (choose!29865 (toList!4404 lm!1477) lambda!175770 (h!56628 (toList!4404 lm!1477))))))

(declare-fun e!2828105 () Bool)

(assert (=> d!1402393 e!2828105))

(declare-fun res!1891242 () Bool)

(assert (=> d!1402393 (=> (not res!1891242) (not e!2828105))))

(assert (=> d!1402393 (= res!1891242 (forall!10341 (toList!4404 lm!1477) lambda!175770))))

(assert (=> d!1402393 (= (forallContained!2604 (toList!4404 lm!1477) lambda!175770 (h!56628 (toList!4404 lm!1477))) lt!1713456)))

(declare-fun b!4538470 () Bool)

(assert (=> b!4538470 (= e!2828105 (contains!13537 (toList!4404 lm!1477) (h!56628 (toList!4404 lm!1477))))))

(assert (= (and d!1402393 res!1891242) b!4538470))

(declare-fun b_lambda!157669 () Bool)

(assert (=> (not b_lambda!157669) (not d!1402393)))

(declare-fun m!5303173 () Bool)

(assert (=> d!1402393 m!5303173))

(declare-fun m!5303175 () Bool)

(assert (=> d!1402393 m!5303175))

(declare-fun m!5303177 () Bool)

(assert (=> d!1402393 m!5303177))

(assert (=> b!4538470 m!5302909))

(assert (=> b!4538171 d!1402393))

(declare-fun d!1402395 () Bool)

(declare-fun dynLambda!21212 (Int tuple2!51226) Bool)

(assert (=> d!1402395 (dynLambda!21212 lambda!175771 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113))))))

(declare-fun lt!1713474 () Unit!98176)

(declare-fun choose!29871 (List!50872 Int tuple2!51226) Unit!98176)

(assert (=> d!1402395 (= lt!1713474 (choose!29871 (_2!28908 (h!56628 (toList!4404 lm!1477))) lambda!175771 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))))))

(declare-fun e!2828119 () Bool)

(assert (=> d!1402395 e!2828119))

(declare-fun res!1891252 () Bool)

(assert (=> d!1402395 (=> (not res!1891252) (not e!2828119))))

(assert (=> d!1402395 (= res!1891252 (forall!10343 (_2!28908 (h!56628 (toList!4404 lm!1477))) lambda!175771))))

(assert (=> d!1402395 (= (forallContained!2605 (_2!28908 (h!56628 (toList!4404 lm!1477))) lambda!175771 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))) lt!1713474)))

(declare-fun b!4538488 () Bool)

(assert (=> b!4538488 (= e!2828119 (contains!13542 (_2!28908 (h!56628 (toList!4404 lm!1477))) (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))))))

(assert (= (and d!1402395 res!1891252) b!4538488))

(declare-fun b_lambda!157671 () Bool)

(assert (=> (not b_lambda!157671) (not d!1402395)))

(declare-fun m!5303207 () Bool)

(assert (=> d!1402395 m!5303207))

(declare-fun m!5303209 () Bool)

(assert (=> d!1402395 m!5303209))

(declare-fun m!5303211 () Bool)

(assert (=> d!1402395 m!5303211))

(declare-fun m!5303215 () Bool)

(assert (=> b!4538488 m!5303215))

(assert (=> b!4538171 d!1402395))

(declare-fun d!1402401 () Bool)

(assert (=> d!1402401 (= (get!16681 lt!1713113) (v!44884 lt!1713113))))

(assert (=> b!4538171 d!1402401))

(declare-fun d!1402405 () Bool)

(assert (=> d!1402405 (= (eq!655 lt!1713097 lt!1713090) (= (content!8434 (toList!4403 lt!1713097)) (content!8434 (toList!4403 lt!1713090))))))

(declare-fun bs!875216 () Bool)

(assert (= bs!875216 d!1402405))

(assert (=> bs!875216 m!5302599))

(assert (=> bs!875216 m!5303131))

(assert (=> b!4538170 d!1402405))

(declare-fun d!1402407 () Bool)

(assert (=> d!1402407 (= (eq!655 lt!1713117 lt!1713090) (= (content!8434 (toList!4403 lt!1713117)) (content!8434 (toList!4403 lt!1713090))))))

(declare-fun bs!875217 () Bool)

(assert (= bs!875217 d!1402407))

(assert (=> bs!875217 m!5302601))

(assert (=> bs!875217 m!5303131))

(assert (=> b!4538170 d!1402407))

(declare-fun bs!875218 () Bool)

(declare-fun b!4538502 () Bool)

(assert (= bs!875218 (and b!4538502 b!4538248)))

(declare-fun lambda!175883 () Int)

(assert (=> bs!875218 (= (= lt!1713095 lt!1713121) (= lambda!175883 lambda!175836))))

(assert (=> bs!875218 (= (= lt!1713095 lt!1713258) (= lambda!175883 lambda!175837))))

(declare-fun bs!875219 () Bool)

(assert (= bs!875219 (and b!4538502 b!4538249)))

(assert (=> bs!875219 (= (= lt!1713095 lt!1713121) (= lambda!175883 lambda!175834))))

(declare-fun bs!875220 () Bool)

(assert (= bs!875220 (and b!4538502 d!1402229)))

(assert (=> bs!875220 (= (= lt!1713095 lt!1713253) (= lambda!175883 lambda!175838))))

(declare-fun bs!875221 () Bool)

(assert (= bs!875221 (and b!4538502 d!1402317)))

(assert (=> bs!875221 (not (= lambda!175883 lambda!175860))))

(declare-fun bs!875223 () Bool)

(assert (= bs!875223 (and b!4538502 b!4538171)))

(assert (=> bs!875223 (not (= lambda!175883 lambda!175771))))

(assert (=> b!4538502 true))

(declare-fun bs!875228 () Bool)

(declare-fun b!4538501 () Bool)

(assert (= bs!875228 (and b!4538501 b!4538248)))

(declare-fun lambda!175885 () Int)

(assert (=> bs!875228 (= (= lt!1713095 lt!1713121) (= lambda!175885 lambda!175836))))

(assert (=> bs!875228 (= (= lt!1713095 lt!1713258) (= lambda!175885 lambda!175837))))

(declare-fun bs!875231 () Bool)

(assert (= bs!875231 (and b!4538501 b!4538249)))

(assert (=> bs!875231 (= (= lt!1713095 lt!1713121) (= lambda!175885 lambda!175834))))

(declare-fun bs!875233 () Bool)

(assert (= bs!875233 (and b!4538501 d!1402317)))

(assert (=> bs!875233 (not (= lambda!175885 lambda!175860))))

(declare-fun bs!875235 () Bool)

(assert (= bs!875235 (and b!4538501 b!4538171)))

(assert (=> bs!875235 (not (= lambda!175885 lambda!175771))))

(declare-fun bs!875237 () Bool)

(assert (= bs!875237 (and b!4538501 b!4538502)))

(assert (=> bs!875237 (= lambda!175885 lambda!175883)))

(declare-fun bs!875238 () Bool)

(assert (= bs!875238 (and b!4538501 d!1402229)))

(assert (=> bs!875238 (= (= lt!1713095 lt!1713253) (= lambda!175885 lambda!175838))))

(assert (=> b!4538501 true))

(declare-fun lt!1713493 () ListMap!3665)

(declare-fun lambda!175886 () Int)

(assert (=> bs!875228 (= (= lt!1713493 lt!1713121) (= lambda!175886 lambda!175836))))

(assert (=> bs!875228 (= (= lt!1713493 lt!1713258) (= lambda!175886 lambda!175837))))

(assert (=> bs!875231 (= (= lt!1713493 lt!1713121) (= lambda!175886 lambda!175834))))

(assert (=> bs!875233 (not (= lambda!175886 lambda!175860))))

(assert (=> b!4538501 (= (= lt!1713493 lt!1713095) (= lambda!175886 lambda!175885))))

(assert (=> bs!875235 (not (= lambda!175886 lambda!175771))))

(assert (=> bs!875237 (= (= lt!1713493 lt!1713095) (= lambda!175886 lambda!175883))))

(assert (=> bs!875238 (= (= lt!1713493 lt!1713253) (= lambda!175886 lambda!175838))))

(assert (=> b!4538501 true))

(declare-fun bs!875250 () Bool)

(declare-fun d!1402409 () Bool)

(assert (= bs!875250 (and d!1402409 b!4538248)))

(declare-fun lambda!175888 () Int)

(declare-fun lt!1713488 () ListMap!3665)

(assert (=> bs!875250 (= (= lt!1713488 lt!1713121) (= lambda!175888 lambda!175836))))

(assert (=> bs!875250 (= (= lt!1713488 lt!1713258) (= lambda!175888 lambda!175837))))

(declare-fun bs!875251 () Bool)

(assert (= bs!875251 (and d!1402409 b!4538501)))

(assert (=> bs!875251 (= (= lt!1713488 lt!1713493) (= lambda!175888 lambda!175886))))

(declare-fun bs!875252 () Bool)

(assert (= bs!875252 (and d!1402409 b!4538249)))

(assert (=> bs!875252 (= (= lt!1713488 lt!1713121) (= lambda!175888 lambda!175834))))

(declare-fun bs!875253 () Bool)

(assert (= bs!875253 (and d!1402409 d!1402317)))

(assert (=> bs!875253 (not (= lambda!175888 lambda!175860))))

(assert (=> bs!875251 (= (= lt!1713488 lt!1713095) (= lambda!175888 lambda!175885))))

(declare-fun bs!875254 () Bool)

(assert (= bs!875254 (and d!1402409 b!4538171)))

(assert (=> bs!875254 (not (= lambda!175888 lambda!175771))))

(declare-fun bs!875255 () Bool)

(assert (= bs!875255 (and d!1402409 b!4538502)))

(assert (=> bs!875255 (= (= lt!1713488 lt!1713095) (= lambda!175888 lambda!175883))))

(declare-fun bs!875256 () Bool)

(assert (= bs!875256 (and d!1402409 d!1402229)))

(assert (=> bs!875256 (= (= lt!1713488 lt!1713253) (= lambda!175888 lambda!175838))))

(assert (=> d!1402409 true))

(declare-fun bm!316447 () Bool)

(declare-fun call!316452 () Unit!98176)

(assert (=> bm!316447 (= call!316452 (lemmaContainsAllItsOwnKeys!364 lt!1713095))))

(declare-fun b!4538498 () Bool)

(declare-fun e!2828126 () Bool)

(assert (=> b!4538498 (= e!2828126 (invariantList!1043 (toList!4403 lt!1713488)))))

(declare-fun call!316454 () Bool)

(declare-fun bm!316448 () Bool)

(declare-fun c!775102 () Bool)

(assert (=> bm!316448 (= call!316454 (forall!10343 (ite c!775102 (toList!4403 lt!1713095) (_2!28908 lt!1713093)) (ite c!775102 lambda!175883 lambda!175886)))))

(declare-fun b!4538499 () Bool)

(declare-fun res!1891258 () Bool)

(assert (=> b!4538499 (=> (not res!1891258) (not e!2828126))))

(assert (=> b!4538499 (= res!1891258 (forall!10343 (toList!4403 lt!1713095) lambda!175888))))

(declare-fun b!4538500 () Bool)

(declare-fun e!2828127 () Bool)

(assert (=> b!4538500 (= e!2828127 (forall!10343 (toList!4403 lt!1713095) lambda!175886))))

(declare-fun e!2828128 () ListMap!3665)

(assert (=> b!4538501 (= e!2828128 lt!1713493)))

(declare-fun lt!1713499 () ListMap!3665)

(assert (=> b!4538501 (= lt!1713499 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4538501 (= lt!1713493 (addToMapMapFromBucket!725 (t!357834 (_2!28908 lt!1713093)) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713492 () Unit!98176)

(assert (=> b!4538501 (= lt!1713492 call!316452)))

(assert (=> b!4538501 (forall!10343 (toList!4403 lt!1713095) lambda!175885)))

(declare-fun lt!1713500 () Unit!98176)

(assert (=> b!4538501 (= lt!1713500 lt!1713492)))

(assert (=> b!4538501 (forall!10343 (toList!4403 lt!1713499) lambda!175886)))

(declare-fun lt!1713487 () Unit!98176)

(declare-fun Unit!98225 () Unit!98176)

(assert (=> b!4538501 (= lt!1713487 Unit!98225)))

(declare-fun call!316453 () Bool)

(assert (=> b!4538501 call!316453))

(declare-fun lt!1713498 () Unit!98176)

(declare-fun Unit!98227 () Unit!98176)

(assert (=> b!4538501 (= lt!1713498 Unit!98227)))

(declare-fun lt!1713486 () Unit!98176)

(declare-fun Unit!98228 () Unit!98176)

(assert (=> b!4538501 (= lt!1713486 Unit!98228)))

(declare-fun lt!1713489 () Unit!98176)

(assert (=> b!4538501 (= lt!1713489 (forallContained!2605 (toList!4403 lt!1713499) lambda!175886 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4538501 (contains!13538 lt!1713499 (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1713485 () Unit!98176)

(declare-fun Unit!98231 () Unit!98176)

(assert (=> b!4538501 (= lt!1713485 Unit!98231)))

(assert (=> b!4538501 (contains!13538 lt!1713493 (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1713484 () Unit!98176)

(declare-fun Unit!98232 () Unit!98176)

(assert (=> b!4538501 (= lt!1713484 Unit!98232)))

(assert (=> b!4538501 call!316454))

(declare-fun lt!1713502 () Unit!98176)

(declare-fun Unit!98234 () Unit!98176)

(assert (=> b!4538501 (= lt!1713502 Unit!98234)))

(assert (=> b!4538501 (forall!10343 (toList!4403 lt!1713499) lambda!175886)))

(declare-fun lt!1713494 () Unit!98176)

(declare-fun Unit!98235 () Unit!98176)

(assert (=> b!4538501 (= lt!1713494 Unit!98235)))

(declare-fun lt!1713497 () Unit!98176)

(declare-fun Unit!98236 () Unit!98176)

(assert (=> b!4538501 (= lt!1713497 Unit!98236)))

(declare-fun lt!1713503 () Unit!98176)

(assert (=> b!4538501 (= lt!1713503 (addForallContainsKeyThenBeforeAdding!364 lt!1713095 lt!1713493 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4538501 (forall!10343 (toList!4403 lt!1713095) lambda!175886)))

(declare-fun lt!1713491 () Unit!98176)

(assert (=> b!4538501 (= lt!1713491 lt!1713503)))

(assert (=> b!4538501 (forall!10343 (toList!4403 lt!1713095) lambda!175886)))

(declare-fun lt!1713501 () Unit!98176)

(declare-fun Unit!98238 () Unit!98176)

(assert (=> b!4538501 (= lt!1713501 Unit!98238)))

(declare-fun res!1891257 () Bool)

(assert (=> b!4538501 (= res!1891257 (forall!10343 (_2!28908 lt!1713093) lambda!175886))))

(assert (=> b!4538501 (=> (not res!1891257) (not e!2828127))))

(assert (=> b!4538501 e!2828127))

(declare-fun lt!1713483 () Unit!98176)

(declare-fun Unit!98239 () Unit!98176)

(assert (=> b!4538501 (= lt!1713483 Unit!98239)))

(assert (=> b!4538502 (= e!2828128 lt!1713095)))

(declare-fun lt!1713496 () Unit!98176)

(assert (=> b!4538502 (= lt!1713496 call!316452)))

(assert (=> b!4538502 call!316453))

(declare-fun lt!1713495 () Unit!98176)

(assert (=> b!4538502 (= lt!1713495 lt!1713496)))

(assert (=> b!4538502 call!316454))

(declare-fun lt!1713490 () Unit!98176)

(declare-fun Unit!98240 () Unit!98176)

(assert (=> b!4538502 (= lt!1713490 Unit!98240)))

(declare-fun bm!316449 () Bool)

(assert (=> bm!316449 (= call!316453 (forall!10343 (ite c!775102 (toList!4403 lt!1713095) (t!357834 (_2!28908 lt!1713093))) (ite c!775102 lambda!175883 lambda!175886)))))

(assert (=> d!1402409 e!2828126))

(declare-fun res!1891256 () Bool)

(assert (=> d!1402409 (=> (not res!1891256) (not e!2828126))))

(assert (=> d!1402409 (= res!1891256 (forall!10343 (_2!28908 lt!1713093) lambda!175888))))

(assert (=> d!1402409 (= lt!1713488 e!2828128)))

(assert (=> d!1402409 (= c!775102 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1402409 (noDuplicateKeys!1198 (_2!28908 lt!1713093))))

(assert (=> d!1402409 (= (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713095) lt!1713488)))

(assert (= (and d!1402409 c!775102) b!4538502))

(assert (= (and d!1402409 (not c!775102)) b!4538501))

(assert (= (and b!4538501 res!1891257) b!4538500))

(assert (= (or b!4538502 b!4538501) bm!316448))

(assert (= (or b!4538502 b!4538501) bm!316449))

(assert (= (or b!4538502 b!4538501) bm!316447))

(assert (= (and d!1402409 res!1891256) b!4538499))

(assert (= (and b!4538499 res!1891258) b!4538498))

(declare-fun m!5303253 () Bool)

(assert (=> bm!316449 m!5303253))

(declare-fun m!5303255 () Bool)

(assert (=> b!4538501 m!5303255))

(declare-fun m!5303257 () Bool)

(assert (=> b!4538501 m!5303257))

(declare-fun m!5303259 () Bool)

(assert (=> b!4538501 m!5303259))

(declare-fun m!5303261 () Bool)

(assert (=> b!4538501 m!5303261))

(assert (=> b!4538501 m!5303255))

(assert (=> b!4538501 m!5303261))

(declare-fun m!5303263 () Bool)

(assert (=> b!4538501 m!5303263))

(declare-fun m!5303265 () Bool)

(assert (=> b!4538501 m!5303265))

(declare-fun m!5303267 () Bool)

(assert (=> b!4538501 m!5303267))

(declare-fun m!5303269 () Bool)

(assert (=> b!4538501 m!5303269))

(assert (=> b!4538501 m!5303257))

(declare-fun m!5303271 () Bool)

(assert (=> b!4538501 m!5303271))

(declare-fun m!5303273 () Bool)

(assert (=> b!4538501 m!5303273))

(declare-fun m!5303275 () Bool)

(assert (=> d!1402409 m!5303275))

(assert (=> d!1402409 m!5302483))

(declare-fun m!5303277 () Bool)

(assert (=> b!4538499 m!5303277))

(declare-fun m!5303279 () Bool)

(assert (=> b!4538498 m!5303279))

(declare-fun m!5303281 () Bool)

(assert (=> bm!316448 m!5303281))

(declare-fun m!5303283 () Bool)

(assert (=> bm!316447 m!5303283))

(assert (=> b!4538500 m!5303261))

(assert (=> b!4538170 d!1402409))

(declare-fun d!1402417 () Bool)

(assert (=> d!1402417 (eq!655 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713121) (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713095))))

(declare-fun lt!1713511 () Unit!98176)

(declare-fun choose!29872 (ListMap!3665 ListMap!3665 List!50872) Unit!98176)

(assert (=> d!1402417 (= lt!1713511 (choose!29872 lt!1713121 lt!1713095 (_2!28908 lt!1713093)))))

(assert (=> d!1402417 (noDuplicateKeys!1198 (_2!28908 lt!1713093))))

(assert (=> d!1402417 (= (lemmaAddToMapFromBucketPreservesEquivalence!74 lt!1713121 lt!1713095 (_2!28908 lt!1713093)) lt!1713511)))

(declare-fun bs!875261 () Bool)

(assert (= bs!875261 d!1402417))

(declare-fun m!5303285 () Bool)

(assert (=> bs!875261 m!5303285))

(assert (=> bs!875261 m!5302479))

(assert (=> bs!875261 m!5302563))

(declare-fun m!5303287 () Bool)

(assert (=> bs!875261 m!5303287))

(assert (=> bs!875261 m!5302479))

(assert (=> bs!875261 m!5302483))

(assert (=> bs!875261 m!5302563))

(assert (=> b!4538170 d!1402417))

(declare-fun d!1402419 () Bool)

(declare-fun lt!1713512 () Bool)

(assert (=> d!1402419 (= lt!1713512 (select (content!8437 (toList!4404 lm!1477)) lt!1713115))))

(declare-fun e!2828132 () Bool)

(assert (=> d!1402419 (= lt!1713512 e!2828132)))

(declare-fun res!1891259 () Bool)

(assert (=> d!1402419 (=> (not res!1891259) (not e!2828132))))

(assert (=> d!1402419 (= res!1891259 ((_ is Cons!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402419 (= (contains!13537 (toList!4404 lm!1477) lt!1713115) lt!1713512)))

(declare-fun b!4538507 () Bool)

(declare-fun e!2828131 () Bool)

(assert (=> b!4538507 (= e!2828132 e!2828131)))

(declare-fun res!1891260 () Bool)

(assert (=> b!4538507 (=> res!1891260 e!2828131)))

(assert (=> b!4538507 (= res!1891260 (= (h!56628 (toList!4404 lm!1477)) lt!1713115))))

(declare-fun b!4538508 () Bool)

(assert (=> b!4538508 (= e!2828131 (contains!13537 (t!357835 (toList!4404 lm!1477)) lt!1713115))))

(assert (= (and d!1402419 res!1891259) b!4538507))

(assert (= (and b!4538507 (not res!1891260)) b!4538508))

(declare-fun m!5303289 () Bool)

(assert (=> d!1402419 m!5303289))

(declare-fun m!5303291 () Bool)

(assert (=> d!1402419 m!5303291))

(assert (=> b!4538508 m!5302473))

(assert (=> b!4538174 d!1402419))

(declare-fun bs!875271 () Bool)

(declare-fun d!1402421 () Bool)

(assert (= bs!875271 (and d!1402421 start!450372)))

(declare-fun lambda!175894 () Int)

(assert (=> bs!875271 (= lambda!175894 lambda!175769)))

(declare-fun bs!875272 () Bool)

(assert (= bs!875272 (and d!1402421 d!1402275)))

(assert (=> bs!875272 (= lambda!175894 lambda!175846)))

(declare-fun bs!875273 () Bool)

(assert (= bs!875273 (and d!1402421 b!4538171)))

(assert (=> bs!875273 (not (= lambda!175894 lambda!175770))))

(declare-fun bs!875274 () Bool)

(assert (= bs!875274 (and d!1402421 d!1402349)))

(assert (=> bs!875274 (= lambda!175894 lambda!175870)))

(declare-fun bs!875275 () Bool)

(assert (= bs!875275 (and d!1402421 d!1402353)))

(assert (=> bs!875275 (= lambda!175894 lambda!175879)))

(declare-fun bs!875276 () Bool)

(assert (= bs!875276 (and d!1402421 d!1402303)))

(assert (=> bs!875276 (= lambda!175894 lambda!175857)))

(declare-fun bs!875277 () Bool)

(assert (= bs!875277 (and d!1402421 d!1402253)))

(assert (=> bs!875277 (= lambda!175894 lambda!175843)))

(declare-fun bs!875278 () Bool)

(assert (= bs!875278 (and d!1402421 d!1402289)))

(assert (=> bs!875278 (= lambda!175894 lambda!175853)))

(declare-fun bs!875279 () Bool)

(assert (= bs!875279 (and d!1402421 d!1402345)))

(assert (=> bs!875279 (= lambda!175894 lambda!175867)))

(assert (=> d!1402421 (contains!13539 lm!1477 (hash!2911 hashF!1107 key!3287))))

(declare-fun lt!1713515 () Unit!98176)

(declare-fun choose!29873 (ListLongMap!3035 K!12135 Hashable!5593) Unit!98176)

(assert (=> d!1402421 (= lt!1713515 (choose!29873 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1402421 (forall!10341 (toList!4404 lm!1477) lambda!175894)))

(assert (=> d!1402421 (= (lemmaInGenMapThenLongMapContainsHash!272 lm!1477 key!3287 hashF!1107) lt!1713515)))

(declare-fun bs!875280 () Bool)

(assert (= bs!875280 d!1402421))

(assert (=> bs!875280 m!5302551))

(assert (=> bs!875280 m!5302551))

(declare-fun m!5303307 () Bool)

(assert (=> bs!875280 m!5303307))

(declare-fun m!5303309 () Bool)

(assert (=> bs!875280 m!5303309))

(declare-fun m!5303311 () Bool)

(assert (=> bs!875280 m!5303311))

(assert (=> b!4538174 d!1402421))

(declare-fun d!1402429 () Bool)

(assert (=> d!1402429 (= (apply!11935 lm!1477 hash!344) (get!16682 (getValueByKey!1145 (toList!4404 lm!1477) hash!344)))))

(declare-fun bs!875281 () Bool)

(assert (= bs!875281 d!1402429))

(declare-fun m!5303313 () Bool)

(assert (=> bs!875281 m!5303313))

(assert (=> bs!875281 m!5303313))

(declare-fun m!5303315 () Bool)

(assert (=> bs!875281 m!5303315))

(assert (=> b!4538174 d!1402429))

(declare-fun d!1402431 () Bool)

(declare-fun e!2828150 () Bool)

(assert (=> d!1402431 e!2828150))

(declare-fun res!1891275 () Bool)

(assert (=> d!1402431 (=> res!1891275 e!2828150)))

(declare-fun lt!1713529 () Bool)

(assert (=> d!1402431 (= res!1891275 (not lt!1713529))))

(declare-fun lt!1713527 () Bool)

(assert (=> d!1402431 (= lt!1713529 lt!1713527)))

(declare-fun lt!1713528 () Unit!98176)

(declare-fun e!2828149 () Unit!98176)

(assert (=> d!1402431 (= lt!1713528 e!2828149)))

(declare-fun c!775107 () Bool)

(assert (=> d!1402431 (= c!775107 lt!1713527)))

(declare-fun containsKey!1874 (List!50873 (_ BitVec 64)) Bool)

(assert (=> d!1402431 (= lt!1713527 (containsKey!1874 (toList!4404 lm!1477) lt!1713089))))

(assert (=> d!1402431 (= (contains!13539 lm!1477 lt!1713089) lt!1713529)))

(declare-fun b!4538527 () Bool)

(declare-fun lt!1713530 () Unit!98176)

(assert (=> b!4538527 (= e!2828149 lt!1713530)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (List!50873 (_ BitVec 64)) Unit!98176)

(assert (=> b!4538527 (= lt!1713530 (lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (toList!4404 lm!1477) lt!1713089))))

(declare-fun isDefined!8477 (Option!11201) Bool)

(assert (=> b!4538527 (isDefined!8477 (getValueByKey!1145 (toList!4404 lm!1477) lt!1713089))))

(declare-fun b!4538528 () Bool)

(declare-fun Unit!98242 () Unit!98176)

(assert (=> b!4538528 (= e!2828149 Unit!98242)))

(declare-fun b!4538529 () Bool)

(assert (=> b!4538529 (= e!2828150 (isDefined!8477 (getValueByKey!1145 (toList!4404 lm!1477) lt!1713089)))))

(assert (= (and d!1402431 c!775107) b!4538527))

(assert (= (and d!1402431 (not c!775107)) b!4538528))

(assert (= (and d!1402431 (not res!1891275)) b!4538529))

(declare-fun m!5303325 () Bool)

(assert (=> d!1402431 m!5303325))

(declare-fun m!5303327 () Bool)

(assert (=> b!4538527 m!5303327))

(declare-fun m!5303329 () Bool)

(assert (=> b!4538527 m!5303329))

(assert (=> b!4538527 m!5303329))

(declare-fun m!5303331 () Bool)

(assert (=> b!4538527 m!5303331))

(assert (=> b!4538529 m!5303329))

(assert (=> b!4538529 m!5303329))

(assert (=> b!4538529 m!5303331))

(assert (=> b!4538174 d!1402431))

(declare-fun d!1402439 () Bool)

(assert (=> d!1402439 (dynLambda!21211 lambda!175769 lt!1713115)))

(declare-fun lt!1713531 () Unit!98176)

(assert (=> d!1402439 (= lt!1713531 (choose!29865 (toList!4404 lm!1477) lambda!175769 lt!1713115))))

(declare-fun e!2828151 () Bool)

(assert (=> d!1402439 e!2828151))

(declare-fun res!1891276 () Bool)

(assert (=> d!1402439 (=> (not res!1891276) (not e!2828151))))

(assert (=> d!1402439 (= res!1891276 (forall!10341 (toList!4404 lm!1477) lambda!175769))))

(assert (=> d!1402439 (= (forallContained!2604 (toList!4404 lm!1477) lambda!175769 lt!1713115) lt!1713531)))

(declare-fun b!4538530 () Bool)

(assert (=> b!4538530 (= e!2828151 (contains!13537 (toList!4404 lm!1477) lt!1713115))))

(assert (= (and d!1402439 res!1891276) b!4538530))

(declare-fun b_lambda!157673 () Bool)

(assert (=> (not b_lambda!157673) (not d!1402439)))

(declare-fun m!5303333 () Bool)

(assert (=> d!1402439 m!5303333))

(declare-fun m!5303335 () Bool)

(assert (=> d!1402439 m!5303335))

(assert (=> d!1402439 m!5302569))

(assert (=> b!4538530 m!5302525))

(assert (=> b!4538174 d!1402439))

(declare-fun b!4538564 () Bool)

(declare-fun e!2828171 () List!50872)

(declare-fun e!2828172 () List!50872)

(assert (=> b!4538564 (= e!2828171 e!2828172)))

(declare-fun c!775118 () Bool)

(assert (=> b!4538564 (= c!775118 ((_ is Cons!50748) lt!1713088))))

(declare-fun b!4538566 () Bool)

(assert (=> b!4538566 (= e!2828172 Nil!50748)))

(declare-fun b!4538563 () Bool)

(assert (=> b!4538563 (= e!2828171 (t!357834 lt!1713088))))

(declare-fun d!1402441 () Bool)

(declare-fun lt!1713537 () List!50872)

(assert (=> d!1402441 (not (containsKey!1870 lt!1713537 key!3287))))

(assert (=> d!1402441 (= lt!1713537 e!2828171)))

(declare-fun c!775119 () Bool)

(assert (=> d!1402441 (= c!775119 (and ((_ is Cons!50748) lt!1713088) (= (_1!28907 (h!56627 lt!1713088)) key!3287)))))

(assert (=> d!1402441 (noDuplicateKeys!1198 lt!1713088)))

(assert (=> d!1402441 (= (removePairForKey!825 lt!1713088 key!3287) lt!1713537)))

(declare-fun b!4538565 () Bool)

(assert (=> b!4538565 (= e!2828172 (Cons!50748 (h!56627 lt!1713088) (removePairForKey!825 (t!357834 lt!1713088) key!3287)))))

(assert (= (and d!1402441 c!775119) b!4538563))

(assert (= (and d!1402441 (not c!775119)) b!4538564))

(assert (= (and b!4538564 c!775118) b!4538565))

(assert (= (and b!4538564 (not c!775118)) b!4538566))

(declare-fun m!5303337 () Bool)

(assert (=> d!1402441 m!5303337))

(declare-fun m!5303339 () Bool)

(assert (=> d!1402441 m!5303339))

(declare-fun m!5303341 () Bool)

(assert (=> b!4538565 m!5303341))

(assert (=> b!4538174 d!1402441))

(declare-fun d!1402443 () Bool)

(assert (=> d!1402443 (contains!13537 (toList!4404 lm!1477) (tuple2!51229 hash!344 lt!1713088))))

(declare-fun lt!1713543 () Unit!98176)

(declare-fun choose!29875 (List!50873 (_ BitVec 64) List!50872) Unit!98176)

(assert (=> d!1402443 (= lt!1713543 (choose!29875 (toList!4404 lm!1477) hash!344 lt!1713088))))

(declare-fun e!2828178 () Bool)

(assert (=> d!1402443 e!2828178))

(declare-fun res!1891294 () Bool)

(assert (=> d!1402443 (=> (not res!1891294) (not e!2828178))))

(assert (=> d!1402443 (= res!1891294 (isStrictlySorted!457 (toList!4404 lm!1477)))))

(assert (=> d!1402443 (= (lemmaGetValueByKeyImpliesContainsTuple!710 (toList!4404 lm!1477) hash!344 lt!1713088) lt!1713543)))

(declare-fun b!4538572 () Bool)

(assert (=> b!4538572 (= e!2828178 (= (getValueByKey!1145 (toList!4404 lm!1477) hash!344) (Some!11200 lt!1713088)))))

(assert (= (and d!1402443 res!1891294) b!4538572))

(declare-fun m!5303359 () Bool)

(assert (=> d!1402443 m!5303359))

(declare-fun m!5303361 () Bool)

(assert (=> d!1402443 m!5303361))

(assert (=> d!1402443 m!5302785))

(assert (=> b!4538572 m!5303313))

(assert (=> b!4538174 d!1402443))

(declare-fun d!1402449 () Bool)

(declare-fun e!2828180 () Bool)

(assert (=> d!1402449 e!2828180))

(declare-fun res!1891297 () Bool)

(assert (=> d!1402449 (=> (not res!1891297) (not e!2828180))))

(declare-fun lt!1713546 () ListLongMap!3035)

(assert (=> d!1402449 (= res!1891297 (contains!13539 lt!1713546 (_1!28908 lt!1713120)))))

(declare-fun lt!1713547 () List!50873)

(assert (=> d!1402449 (= lt!1713546 (ListLongMap!3036 lt!1713547))))

(declare-fun lt!1713545 () Unit!98176)

(declare-fun lt!1713548 () Unit!98176)

(assert (=> d!1402449 (= lt!1713545 lt!1713548)))

(assert (=> d!1402449 (= (getValueByKey!1145 lt!1713547 (_1!28908 lt!1713120)) (Some!11200 (_2!28908 lt!1713120)))))

(assert (=> d!1402449 (= lt!1713548 (lemmaContainsTupThenGetReturnValue!718 lt!1713547 (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))

(assert (=> d!1402449 (= lt!1713547 (insertStrictlySorted!434 (toList!4404 lm!1477) (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))

(assert (=> d!1402449 (= (+!1602 lm!1477 lt!1713120) lt!1713546)))

(declare-fun b!4538574 () Bool)

(declare-fun res!1891296 () Bool)

(assert (=> b!4538574 (=> (not res!1891296) (not e!2828180))))

(assert (=> b!4538574 (= res!1891296 (= (getValueByKey!1145 (toList!4404 lt!1713546) (_1!28908 lt!1713120)) (Some!11200 (_2!28908 lt!1713120))))))

(declare-fun b!4538575 () Bool)

(assert (=> b!4538575 (= e!2828180 (contains!13537 (toList!4404 lt!1713546) lt!1713120))))

(assert (= (and d!1402449 res!1891297) b!4538574))

(assert (= (and b!4538574 res!1891296) b!4538575))

(declare-fun m!5303371 () Bool)

(assert (=> d!1402449 m!5303371))

(declare-fun m!5303373 () Bool)

(assert (=> d!1402449 m!5303373))

(declare-fun m!5303375 () Bool)

(assert (=> d!1402449 m!5303375))

(declare-fun m!5303377 () Bool)

(assert (=> d!1402449 m!5303377))

(declare-fun m!5303379 () Bool)

(assert (=> b!4538574 m!5303379))

(declare-fun m!5303381 () Bool)

(assert (=> b!4538575 m!5303381))

(assert (=> b!4538173 d!1402449))

(declare-fun d!1402453 () Bool)

(declare-fun e!2828181 () Bool)

(assert (=> d!1402453 e!2828181))

(declare-fun res!1891299 () Bool)

(assert (=> d!1402453 (=> (not res!1891299) (not e!2828181))))

(declare-fun lt!1713550 () ListLongMap!3035)

(assert (=> d!1402453 (= res!1891299 (contains!13539 lt!1713550 (_1!28908 lt!1713093)))))

(declare-fun lt!1713551 () List!50873)

(assert (=> d!1402453 (= lt!1713550 (ListLongMap!3036 lt!1713551))))

(declare-fun lt!1713549 () Unit!98176)

(declare-fun lt!1713552 () Unit!98176)

(assert (=> d!1402453 (= lt!1713549 lt!1713552)))

(assert (=> d!1402453 (= (getValueByKey!1145 lt!1713551 (_1!28908 lt!1713093)) (Some!11200 (_2!28908 lt!1713093)))))

(assert (=> d!1402453 (= lt!1713552 (lemmaContainsTupThenGetReturnValue!718 lt!1713551 (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))

(assert (=> d!1402453 (= lt!1713551 (insertStrictlySorted!434 (toList!4404 lt!1713102) (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))

(assert (=> d!1402453 (= (+!1602 lt!1713102 lt!1713093) lt!1713550)))

(declare-fun b!4538576 () Bool)

(declare-fun res!1891298 () Bool)

(assert (=> b!4538576 (=> (not res!1891298) (not e!2828181))))

(assert (=> b!4538576 (= res!1891298 (= (getValueByKey!1145 (toList!4404 lt!1713550) (_1!28908 lt!1713093)) (Some!11200 (_2!28908 lt!1713093))))))

(declare-fun b!4538577 () Bool)

(assert (=> b!4538577 (= e!2828181 (contains!13537 (toList!4404 lt!1713550) lt!1713093))))

(assert (= (and d!1402453 res!1891299) b!4538576))

(assert (= (and b!4538576 res!1891298) b!4538577))

(declare-fun m!5303383 () Bool)

(assert (=> d!1402453 m!5303383))

(declare-fun m!5303385 () Bool)

(assert (=> d!1402453 m!5303385))

(declare-fun m!5303387 () Bool)

(assert (=> d!1402453 m!5303387))

(declare-fun m!5303389 () Bool)

(assert (=> d!1402453 m!5303389))

(declare-fun m!5303391 () Bool)

(assert (=> b!4538576 m!5303391))

(declare-fun m!5303393 () Bool)

(assert (=> b!4538577 m!5303393))

(assert (=> b!4538173 d!1402453))

(declare-fun bs!875302 () Bool)

(declare-fun d!1402455 () Bool)

(assert (= bs!875302 (and d!1402455 start!450372)))

(declare-fun lambda!175900 () Int)

(assert (=> bs!875302 (not (= lambda!175900 lambda!175769))))

(declare-fun bs!875303 () Bool)

(assert (= bs!875303 (and d!1402455 d!1402275)))

(assert (=> bs!875303 (not (= lambda!175900 lambda!175846))))

(declare-fun bs!875304 () Bool)

(assert (= bs!875304 (and d!1402455 b!4538171)))

(assert (=> bs!875304 (= lambda!175900 lambda!175770)))

(declare-fun bs!875305 () Bool)

(assert (= bs!875305 (and d!1402455 d!1402349)))

(assert (=> bs!875305 (not (= lambda!175900 lambda!175870))))

(declare-fun bs!875306 () Bool)

(assert (= bs!875306 (and d!1402455 d!1402353)))

(assert (=> bs!875306 (not (= lambda!175900 lambda!175879))))

(declare-fun bs!875307 () Bool)

(assert (= bs!875307 (and d!1402455 d!1402303)))

(assert (=> bs!875307 (not (= lambda!175900 lambda!175857))))

(declare-fun bs!875308 () Bool)

(assert (= bs!875308 (and d!1402455 d!1402253)))

(assert (=> bs!875308 (not (= lambda!175900 lambda!175843))))

(declare-fun bs!875309 () Bool)

(assert (= bs!875309 (and d!1402455 d!1402421)))

(assert (=> bs!875309 (not (= lambda!175900 lambda!175894))))

(declare-fun bs!875310 () Bool)

(assert (= bs!875310 (and d!1402455 d!1402289)))

(assert (=> bs!875310 (not (= lambda!175900 lambda!175853))))

(declare-fun bs!875311 () Bool)

(assert (= bs!875311 (and d!1402455 d!1402345)))

(assert (=> bs!875311 (not (= lambda!175900 lambda!175867))))

(assert (=> d!1402455 true))

(assert (=> d!1402455 (= (allKeysSameHashInMap!1305 lm!1477 hashF!1107) (forall!10341 (toList!4404 lm!1477) lambda!175900))))

(declare-fun bs!875312 () Bool)

(assert (= bs!875312 d!1402455))

(declare-fun m!5303403 () Bool)

(assert (=> bs!875312 m!5303403))

(assert (=> b!4538172 d!1402455))

(declare-fun d!1402465 () Bool)

(assert (=> d!1402465 (= (head!9476 lt!1713101) (head!9478 (toList!4404 lt!1713101)))))

(declare-fun bs!875313 () Bool)

(assert (= bs!875313 d!1402465))

(declare-fun m!5303405 () Bool)

(assert (=> bs!875313 m!5303405))

(assert (=> b!4538166 d!1402465))

(declare-fun b!4538588 () Bool)

(declare-fun e!2828188 () Bool)

(assert (=> b!4538588 (= e!2828188 (not (contains!13540 (keys!17658 lt!1713103) key!3287)))))

(declare-fun bm!316450 () Bool)

(declare-fun call!316455 () Bool)

(declare-fun e!2828193 () List!50875)

(assert (=> bm!316450 (= call!316455 (contains!13540 e!2828193 key!3287))))

(declare-fun c!775120 () Bool)

(declare-fun c!775122 () Bool)

(assert (=> bm!316450 (= c!775120 c!775122)))

(declare-fun b!4538589 () Bool)

(declare-fun e!2828191 () Bool)

(assert (=> b!4538589 (= e!2828191 (contains!13540 (keys!17658 lt!1713103) key!3287))))

(declare-fun b!4538590 () Bool)

(declare-fun e!2828189 () Bool)

(assert (=> b!4538590 (= e!2828189 e!2828191)))

(declare-fun res!1891302 () Bool)

(assert (=> b!4538590 (=> (not res!1891302) (not e!2828191))))

(assert (=> b!4538590 (= res!1891302 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287)))))

(declare-fun b!4538591 () Bool)

(declare-fun e!2828192 () Unit!98176)

(declare-fun Unit!98245 () Unit!98176)

(assert (=> b!4538591 (= e!2828192 Unit!98245)))

(declare-fun b!4538592 () Bool)

(declare-fun e!2828190 () Unit!98176)

(assert (=> b!4538592 (= e!2828190 e!2828192)))

(declare-fun c!775121 () Bool)

(assert (=> b!4538592 (= c!775121 call!316455)))

(declare-fun d!1402467 () Bool)

(assert (=> d!1402467 e!2828189))

(declare-fun res!1891301 () Bool)

(assert (=> d!1402467 (=> res!1891301 e!2828189)))

(assert (=> d!1402467 (= res!1891301 e!2828188)))

(declare-fun res!1891300 () Bool)

(assert (=> d!1402467 (=> (not res!1891300) (not e!2828188))))

(declare-fun lt!1713554 () Bool)

(assert (=> d!1402467 (= res!1891300 (not lt!1713554))))

(declare-fun lt!1713556 () Bool)

(assert (=> d!1402467 (= lt!1713554 lt!1713556)))

(declare-fun lt!1713555 () Unit!98176)

(assert (=> d!1402467 (= lt!1713555 e!2828190)))

(assert (=> d!1402467 (= c!775122 lt!1713556)))

(assert (=> d!1402467 (= lt!1713556 (containsKey!1872 (toList!4403 lt!1713103) key!3287))))

(assert (=> d!1402467 (= (contains!13538 lt!1713103 key!3287) lt!1713554)))

(declare-fun b!4538593 () Bool)

(assert (=> b!4538593 (= e!2828193 (getKeysList!491 (toList!4403 lt!1713103)))))

(declare-fun b!4538594 () Bool)

(assert (=> b!4538594 false))

(declare-fun lt!1713560 () Unit!98176)

(declare-fun lt!1713557 () Unit!98176)

(assert (=> b!4538594 (= lt!1713560 lt!1713557)))

(assert (=> b!4538594 (containsKey!1872 (toList!4403 lt!1713103) key!3287)))

(assert (=> b!4538594 (= lt!1713557 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713103) key!3287))))

(declare-fun Unit!98247 () Unit!98176)

(assert (=> b!4538594 (= e!2828192 Unit!98247)))

(declare-fun b!4538595 () Bool)

(declare-fun lt!1713558 () Unit!98176)

(assert (=> b!4538595 (= e!2828190 lt!1713558)))

(declare-fun lt!1713559 () Unit!98176)

(assert (=> b!4538595 (= lt!1713559 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713103) key!3287))))

(assert (=> b!4538595 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287))))

(declare-fun lt!1713553 () Unit!98176)

(assert (=> b!4538595 (= lt!1713553 lt!1713559)))

(assert (=> b!4538595 (= lt!1713558 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713103) key!3287))))

(assert (=> b!4538595 call!316455))

(declare-fun b!4538596 () Bool)

(assert (=> b!4538596 (= e!2828193 (keys!17658 lt!1713103))))

(assert (= (and d!1402467 c!775122) b!4538595))

(assert (= (and d!1402467 (not c!775122)) b!4538592))

(assert (= (and b!4538592 c!775121) b!4538594))

(assert (= (and b!4538592 (not c!775121)) b!4538591))

(assert (= (or b!4538595 b!4538592) bm!316450))

(assert (= (and bm!316450 c!775120) b!4538593))

(assert (= (and bm!316450 (not c!775120)) b!4538596))

(assert (= (and d!1402467 res!1891300) b!4538588))

(assert (= (and d!1402467 (not res!1891301)) b!4538590))

(assert (= (and b!4538590 res!1891302) b!4538589))

(declare-fun m!5303407 () Bool)

(assert (=> bm!316450 m!5303407))

(declare-fun m!5303409 () Bool)

(assert (=> b!4538590 m!5303409))

(assert (=> b!4538590 m!5303409))

(declare-fun m!5303411 () Bool)

(assert (=> b!4538590 m!5303411))

(declare-fun m!5303413 () Bool)

(assert (=> d!1402467 m!5303413))

(assert (=> b!4538588 m!5302997))

(assert (=> b!4538588 m!5302997))

(declare-fun m!5303415 () Bool)

(assert (=> b!4538588 m!5303415))

(assert (=> b!4538596 m!5302997))

(assert (=> b!4538589 m!5302997))

(assert (=> b!4538589 m!5302997))

(assert (=> b!4538589 m!5303415))

(assert (=> b!4538594 m!5303413))

(declare-fun m!5303417 () Bool)

(assert (=> b!4538594 m!5303417))

(declare-fun m!5303419 () Bool)

(assert (=> b!4538595 m!5303419))

(assert (=> b!4538595 m!5303409))

(assert (=> b!4538595 m!5303409))

(assert (=> b!4538595 m!5303411))

(declare-fun m!5303421 () Bool)

(assert (=> b!4538595 m!5303421))

(declare-fun m!5303423 () Bool)

(assert (=> b!4538593 m!5303423))

(assert (=> b!4538165 d!1402467))

(declare-fun b!4538597 () Bool)

(declare-fun e!2828194 () Bool)

(assert (=> b!4538597 (= e!2828194 (not (contains!13540 (keys!17658 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287)))))

(declare-fun bm!316451 () Bool)

(declare-fun call!316456 () Bool)

(declare-fun e!2828199 () List!50875)

(assert (=> bm!316451 (= call!316456 (contains!13540 e!2828199 key!3287))))

(declare-fun c!775123 () Bool)

(declare-fun c!775125 () Bool)

(assert (=> bm!316451 (= c!775123 c!775125)))

(declare-fun b!4538598 () Bool)

(declare-fun e!2828197 () Bool)

(assert (=> b!4538598 (= e!2828197 (contains!13540 (keys!17658 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(declare-fun b!4538599 () Bool)

(declare-fun e!2828195 () Bool)

(assert (=> b!4538599 (= e!2828195 e!2828197)))

(declare-fun res!1891305 () Bool)

(assert (=> b!4538599 (=> (not res!1891305) (not e!2828197))))

(assert (=> b!4538599 (= res!1891305 (isDefined!8474 (getValueByKey!1144 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287)))))

(declare-fun b!4538600 () Bool)

(declare-fun e!2828198 () Unit!98176)

(declare-fun Unit!98249 () Unit!98176)

(assert (=> b!4538600 (= e!2828198 Unit!98249)))

(declare-fun b!4538601 () Bool)

(declare-fun e!2828196 () Unit!98176)

(assert (=> b!4538601 (= e!2828196 e!2828198)))

(declare-fun c!775124 () Bool)

(assert (=> b!4538601 (= c!775124 call!316456)))

(declare-fun d!1402469 () Bool)

(assert (=> d!1402469 e!2828195))

(declare-fun res!1891304 () Bool)

(assert (=> d!1402469 (=> res!1891304 e!2828195)))

(assert (=> d!1402469 (= res!1891304 e!2828194)))

(declare-fun res!1891303 () Bool)

(assert (=> d!1402469 (=> (not res!1891303) (not e!2828194))))

(declare-fun lt!1713562 () Bool)

(assert (=> d!1402469 (= res!1891303 (not lt!1713562))))

(declare-fun lt!1713564 () Bool)

(assert (=> d!1402469 (= lt!1713562 lt!1713564)))

(declare-fun lt!1713563 () Unit!98176)

(assert (=> d!1402469 (= lt!1713563 e!2828196)))

(assert (=> d!1402469 (= c!775125 lt!1713564)))

(assert (=> d!1402469 (= lt!1713564 (containsKey!1872 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(assert (=> d!1402469 (= (contains!13538 (extractMap!1254 (t!357835 (toList!4404 lm!1477))) key!3287) lt!1713562)))

(declare-fun b!4538602 () Bool)

(assert (=> b!4538602 (= e!2828199 (getKeysList!491 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))

(declare-fun b!4538603 () Bool)

(assert (=> b!4538603 false))

(declare-fun lt!1713568 () Unit!98176)

(declare-fun lt!1713565 () Unit!98176)

(assert (=> b!4538603 (= lt!1713568 lt!1713565)))

(assert (=> b!4538603 (containsKey!1872 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287)))

(assert (=> b!4538603 (= lt!1713565 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(declare-fun Unit!98251 () Unit!98176)

(assert (=> b!4538603 (= e!2828198 Unit!98251)))

(declare-fun b!4538604 () Bool)

(declare-fun lt!1713566 () Unit!98176)

(assert (=> b!4538604 (= e!2828196 lt!1713566)))

(declare-fun lt!1713567 () Unit!98176)

(assert (=> b!4538604 (= lt!1713567 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(assert (=> b!4538604 (isDefined!8474 (getValueByKey!1144 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(declare-fun lt!1713561 () Unit!98176)

(assert (=> b!4538604 (= lt!1713561 lt!1713567)))

(assert (=> b!4538604 (= lt!1713566 (lemmaInListThenGetKeysListContains!487 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(assert (=> b!4538604 call!316456))

(declare-fun b!4538605 () Bool)

(assert (=> b!4538605 (= e!2828199 (keys!17658 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))

(assert (= (and d!1402469 c!775125) b!4538604))

(assert (= (and d!1402469 (not c!775125)) b!4538601))

(assert (= (and b!4538601 c!775124) b!4538603))

(assert (= (and b!4538601 (not c!775124)) b!4538600))

(assert (= (or b!4538604 b!4538601) bm!316451))

(assert (= (and bm!316451 c!775123) b!4538602))

(assert (= (and bm!316451 (not c!775123)) b!4538605))

(assert (= (and d!1402469 res!1891303) b!4538597))

(assert (= (and d!1402469 (not res!1891304)) b!4538599))

(assert (= (and b!4538599 res!1891305) b!4538598))

(declare-fun m!5303425 () Bool)

(assert (=> bm!316451 m!5303425))

(declare-fun m!5303427 () Bool)

(assert (=> b!4538599 m!5303427))

(assert (=> b!4538599 m!5303427))

(declare-fun m!5303429 () Bool)

(assert (=> b!4538599 m!5303429))

(declare-fun m!5303431 () Bool)

(assert (=> d!1402469 m!5303431))

(assert (=> b!4538597 m!5302543))

(declare-fun m!5303433 () Bool)

(assert (=> b!4538597 m!5303433))

(assert (=> b!4538597 m!5303433))

(declare-fun m!5303435 () Bool)

(assert (=> b!4538597 m!5303435))

(assert (=> b!4538605 m!5302543))

(assert (=> b!4538605 m!5303433))

(assert (=> b!4538598 m!5302543))

(assert (=> b!4538598 m!5303433))

(assert (=> b!4538598 m!5303433))

(assert (=> b!4538598 m!5303435))

(assert (=> b!4538603 m!5303431))

(declare-fun m!5303437 () Bool)

(assert (=> b!4538603 m!5303437))

(declare-fun m!5303439 () Bool)

(assert (=> b!4538604 m!5303439))

(assert (=> b!4538604 m!5303427))

(assert (=> b!4538604 m!5303427))

(assert (=> b!4538604 m!5303429))

(declare-fun m!5303441 () Bool)

(assert (=> b!4538604 m!5303441))

(declare-fun m!5303443 () Bool)

(assert (=> b!4538602 m!5303443))

(assert (=> b!4538165 d!1402469))

(declare-fun bs!875314 () Bool)

(declare-fun d!1402471 () Bool)

(assert (= bs!875314 (and d!1402471 start!450372)))

(declare-fun lambda!175901 () Int)

(assert (=> bs!875314 (= lambda!175901 lambda!175769)))

(declare-fun bs!875315 () Bool)

(assert (= bs!875315 (and d!1402471 d!1402275)))

(assert (=> bs!875315 (= lambda!175901 lambda!175846)))

(declare-fun bs!875316 () Bool)

(assert (= bs!875316 (and d!1402471 b!4538171)))

(assert (=> bs!875316 (not (= lambda!175901 lambda!175770))))

(declare-fun bs!875317 () Bool)

(assert (= bs!875317 (and d!1402471 d!1402349)))

(assert (=> bs!875317 (= lambda!175901 lambda!175870)))

(declare-fun bs!875318 () Bool)

(assert (= bs!875318 (and d!1402471 d!1402353)))

(assert (=> bs!875318 (= lambda!175901 lambda!175879)))

(declare-fun bs!875319 () Bool)

(assert (= bs!875319 (and d!1402471 d!1402303)))

(assert (=> bs!875319 (= lambda!175901 lambda!175857)))

(declare-fun bs!875320 () Bool)

(assert (= bs!875320 (and d!1402471 d!1402455)))

(assert (=> bs!875320 (not (= lambda!175901 lambda!175900))))

(declare-fun bs!875321 () Bool)

(assert (= bs!875321 (and d!1402471 d!1402253)))

(assert (=> bs!875321 (= lambda!175901 lambda!175843)))

(declare-fun bs!875322 () Bool)

(assert (= bs!875322 (and d!1402471 d!1402421)))

(assert (=> bs!875322 (= lambda!175901 lambda!175894)))

(declare-fun bs!875323 () Bool)

(assert (= bs!875323 (and d!1402471 d!1402289)))

(assert (=> bs!875323 (= lambda!175901 lambda!175853)))

(declare-fun bs!875324 () Bool)

(assert (= bs!875324 (and d!1402471 d!1402345)))

(assert (=> bs!875324 (= lambda!175901 lambda!175867)))

(declare-fun lt!1713569 () ListMap!3665)

(assert (=> d!1402471 (invariantList!1043 (toList!4403 lt!1713569))))

(declare-fun e!2828200 () ListMap!3665)

(assert (=> d!1402471 (= lt!1713569 e!2828200)))

(declare-fun c!775126 () Bool)

(assert (=> d!1402471 (= c!775126 ((_ is Cons!50749) (t!357835 (toList!4404 lm!1477))))))

(assert (=> d!1402471 (forall!10341 (t!357835 (toList!4404 lm!1477)) lambda!175901)))

(assert (=> d!1402471 (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713569)))

(declare-fun b!4538606 () Bool)

(assert (=> b!4538606 (= e!2828200 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))))))

(declare-fun b!4538607 () Bool)

(assert (=> b!4538607 (= e!2828200 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402471 c!775126) b!4538606))

(assert (= (and d!1402471 (not c!775126)) b!4538607))

(declare-fun m!5303445 () Bool)

(assert (=> d!1402471 m!5303445))

(declare-fun m!5303447 () Bool)

(assert (=> d!1402471 m!5303447))

(declare-fun m!5303449 () Bool)

(assert (=> b!4538606 m!5303449))

(assert (=> b!4538606 m!5303449))

(declare-fun m!5303451 () Bool)

(assert (=> b!4538606 m!5303451))

(assert (=> b!4538165 d!1402471))

(declare-fun bs!875325 () Bool)

(declare-fun d!1402473 () Bool)

(assert (= bs!875325 (and d!1402473 start!450372)))

(declare-fun lambda!175902 () Int)

(assert (=> bs!875325 (= lambda!175902 lambda!175769)))

(declare-fun bs!875326 () Bool)

(assert (= bs!875326 (and d!1402473 d!1402275)))

(assert (=> bs!875326 (= lambda!175902 lambda!175846)))

(declare-fun bs!875327 () Bool)

(assert (= bs!875327 (and d!1402473 b!4538171)))

(assert (=> bs!875327 (not (= lambda!175902 lambda!175770))))

(declare-fun bs!875328 () Bool)

(assert (= bs!875328 (and d!1402473 d!1402349)))

(assert (=> bs!875328 (= lambda!175902 lambda!175870)))

(declare-fun bs!875329 () Bool)

(assert (= bs!875329 (and d!1402473 d!1402353)))

(assert (=> bs!875329 (= lambda!175902 lambda!175879)))

(declare-fun bs!875330 () Bool)

(assert (= bs!875330 (and d!1402473 d!1402303)))

(assert (=> bs!875330 (= lambda!175902 lambda!175857)))

(declare-fun bs!875331 () Bool)

(assert (= bs!875331 (and d!1402473 d!1402471)))

(assert (=> bs!875331 (= lambda!175902 lambda!175901)))

(declare-fun bs!875332 () Bool)

(assert (= bs!875332 (and d!1402473 d!1402455)))

(assert (=> bs!875332 (not (= lambda!175902 lambda!175900))))

(declare-fun bs!875333 () Bool)

(assert (= bs!875333 (and d!1402473 d!1402253)))

(assert (=> bs!875333 (= lambda!175902 lambda!175843)))

(declare-fun bs!875334 () Bool)

(assert (= bs!875334 (and d!1402473 d!1402421)))

(assert (=> bs!875334 (= lambda!175902 lambda!175894)))

(declare-fun bs!875335 () Bool)

(assert (= bs!875335 (and d!1402473 d!1402289)))

(assert (=> bs!875335 (= lambda!175902 lambda!175853)))

(declare-fun bs!875336 () Bool)

(assert (= bs!875336 (and d!1402473 d!1402345)))

(assert (=> bs!875336 (= lambda!175902 lambda!175867)))

(declare-fun lt!1713570 () ListMap!3665)

(assert (=> d!1402473 (invariantList!1043 (toList!4403 lt!1713570))))

(declare-fun e!2828201 () ListMap!3665)

(assert (=> d!1402473 (= lt!1713570 e!2828201)))

(declare-fun c!775127 () Bool)

(assert (=> d!1402473 (= c!775127 ((_ is Cons!50749) (toList!4404 lt!1713100)))))

(assert (=> d!1402473 (forall!10341 (toList!4404 lt!1713100) lambda!175902)))

(assert (=> d!1402473 (= (extractMap!1254 (toList!4404 lt!1713100)) lt!1713570)))

(declare-fun b!4538608 () Bool)

(assert (=> b!4538608 (= e!2828201 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))))))

(declare-fun b!4538609 () Bool)

(assert (=> b!4538609 (= e!2828201 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402473 c!775127) b!4538608))

(assert (= (and d!1402473 (not c!775127)) b!4538609))

(declare-fun m!5303453 () Bool)

(assert (=> d!1402473 m!5303453))

(declare-fun m!5303455 () Bool)

(assert (=> d!1402473 m!5303455))

(declare-fun m!5303457 () Bool)

(assert (=> b!4538608 m!5303457))

(assert (=> b!4538608 m!5303457))

(declare-fun m!5303459 () Bool)

(assert (=> b!4538608 m!5303459))

(assert (=> b!4538165 d!1402473))

(declare-fun bs!875337 () Bool)

(declare-fun d!1402475 () Bool)

(assert (= bs!875337 (and d!1402475 start!450372)))

(declare-fun lambda!175905 () Int)

(assert (=> bs!875337 (= lambda!175905 lambda!175769)))

(declare-fun bs!875338 () Bool)

(assert (= bs!875338 (and d!1402475 d!1402275)))

(assert (=> bs!875338 (= lambda!175905 lambda!175846)))

(declare-fun bs!875339 () Bool)

(assert (= bs!875339 (and d!1402475 b!4538171)))

(assert (=> bs!875339 (not (= lambda!175905 lambda!175770))))

(declare-fun bs!875340 () Bool)

(assert (= bs!875340 (and d!1402475 d!1402349)))

(assert (=> bs!875340 (= lambda!175905 lambda!175870)))

(declare-fun bs!875341 () Bool)

(assert (= bs!875341 (and d!1402475 d!1402353)))

(assert (=> bs!875341 (= lambda!175905 lambda!175879)))

(declare-fun bs!875342 () Bool)

(assert (= bs!875342 (and d!1402475 d!1402303)))

(assert (=> bs!875342 (= lambda!175905 lambda!175857)))

(declare-fun bs!875343 () Bool)

(assert (= bs!875343 (and d!1402475 d!1402471)))

(assert (=> bs!875343 (= lambda!175905 lambda!175901)))

(declare-fun bs!875344 () Bool)

(assert (= bs!875344 (and d!1402475 d!1402455)))

(assert (=> bs!875344 (not (= lambda!175905 lambda!175900))))

(declare-fun bs!875345 () Bool)

(assert (= bs!875345 (and d!1402475 d!1402253)))

(assert (=> bs!875345 (= lambda!175905 lambda!175843)))

(declare-fun bs!875346 () Bool)

(assert (= bs!875346 (and d!1402475 d!1402421)))

(assert (=> bs!875346 (= lambda!175905 lambda!175894)))

(declare-fun bs!875347 () Bool)

(assert (= bs!875347 (and d!1402475 d!1402473)))

(assert (=> bs!875347 (= lambda!175905 lambda!175902)))

(declare-fun bs!875348 () Bool)

(assert (= bs!875348 (and d!1402475 d!1402289)))

(assert (=> bs!875348 (= lambda!175905 lambda!175853)))

(declare-fun bs!875349 () Bool)

(assert (= bs!875349 (and d!1402475 d!1402345)))

(assert (=> bs!875349 (= lambda!175905 lambda!175867)))

(assert (=> d!1402475 (contains!13538 (extractMap!1254 (toList!4404 lt!1713100)) key!3287)))

(declare-fun lt!1713573 () Unit!98176)

(declare-fun choose!29877 (ListLongMap!3035 K!12135 Hashable!5593) Unit!98176)

(assert (=> d!1402475 (= lt!1713573 (choose!29877 lt!1713100 key!3287 hashF!1107))))

(assert (=> d!1402475 (forall!10341 (toList!4404 lt!1713100) lambda!175905)))

(assert (=> d!1402475 (= (lemmaListContainsThenExtractedMapContains!168 lt!1713100 key!3287 hashF!1107) lt!1713573)))

(declare-fun bs!875350 () Bool)

(assert (= bs!875350 d!1402475))

(assert (=> bs!875350 m!5302545))

(assert (=> bs!875350 m!5302545))

(declare-fun m!5303461 () Bool)

(assert (=> bs!875350 m!5303461))

(declare-fun m!5303463 () Bool)

(assert (=> bs!875350 m!5303463))

(declare-fun m!5303465 () Bool)

(assert (=> bs!875350 m!5303465))

(assert (=> b!4538165 d!1402475))

(declare-fun d!1402477 () Bool)

(declare-fun e!2828203 () Bool)

(assert (=> d!1402477 e!2828203))

(declare-fun res!1891306 () Bool)

(assert (=> d!1402477 (=> res!1891306 e!2828203)))

(declare-fun lt!1713576 () Bool)

(assert (=> d!1402477 (= res!1891306 (not lt!1713576))))

(declare-fun lt!1713574 () Bool)

(assert (=> d!1402477 (= lt!1713576 lt!1713574)))

(declare-fun lt!1713575 () Unit!98176)

(declare-fun e!2828202 () Unit!98176)

(assert (=> d!1402477 (= lt!1713575 e!2828202)))

(declare-fun c!775128 () Bool)

(assert (=> d!1402477 (= c!775128 lt!1713574)))

(assert (=> d!1402477 (= lt!1713574 (containsKey!1874 (toList!4404 lt!1713100) hash!344))))

(assert (=> d!1402477 (= (contains!13539 lt!1713100 hash!344) lt!1713576)))

(declare-fun b!4538610 () Bool)

(declare-fun lt!1713577 () Unit!98176)

(assert (=> b!4538610 (= e!2828202 lt!1713577)))

(assert (=> b!4538610 (= lt!1713577 (lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (toList!4404 lt!1713100) hash!344))))

(assert (=> b!4538610 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713100) hash!344))))

(declare-fun b!4538611 () Bool)

(declare-fun Unit!98252 () Unit!98176)

(assert (=> b!4538611 (= e!2828202 Unit!98252)))

(declare-fun b!4538612 () Bool)

(assert (=> b!4538612 (= e!2828203 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713100) hash!344)))))

(assert (= (and d!1402477 c!775128) b!4538610))

(assert (= (and d!1402477 (not c!775128)) b!4538611))

(assert (= (and d!1402477 (not res!1891306)) b!4538612))

(declare-fun m!5303467 () Bool)

(assert (=> d!1402477 m!5303467))

(declare-fun m!5303469 () Bool)

(assert (=> b!4538610 m!5303469))

(assert (=> b!4538610 m!5302899))

(assert (=> b!4538610 m!5302899))

(declare-fun m!5303471 () Bool)

(assert (=> b!4538610 m!5303471))

(assert (=> b!4538612 m!5302899))

(assert (=> b!4538612 m!5302899))

(assert (=> b!4538612 m!5303471))

(assert (=> b!4538164 d!1402477))

(declare-fun d!1402479 () Bool)

(declare-fun tail!7800 (List!50873) List!50873)

(assert (=> d!1402479 (= (tail!7798 lm!1477) (ListLongMap!3036 (tail!7800 (toList!4404 lm!1477))))))

(declare-fun bs!875351 () Bool)

(assert (= bs!875351 d!1402479))

(declare-fun m!5303473 () Bool)

(assert (=> bs!875351 m!5303473))

(assert (=> b!4538164 d!1402479))

(declare-fun d!1402481 () Bool)

(assert (=> d!1402481 (= (eq!655 lt!1713090 lt!1713099) (= (content!8434 (toList!4403 lt!1713090)) (content!8434 (toList!4403 lt!1713099))))))

(declare-fun bs!875352 () Bool)

(assert (= bs!875352 d!1402481))

(assert (=> bs!875352 m!5303131))

(declare-fun m!5303475 () Bool)

(assert (=> bs!875352 m!5303475))

(assert (=> b!4538169 d!1402481))

(declare-fun d!1402483 () Bool)

(declare-fun e!2828204 () Bool)

(assert (=> d!1402483 e!2828204))

(declare-fun res!1891307 () Bool)

(assert (=> d!1402483 (=> (not res!1891307) (not e!2828204))))

(declare-fun lt!1713578 () ListMap!3665)

(assert (=> d!1402483 (= res!1891307 (not (contains!13538 lt!1713578 key!3287)))))

(assert (=> d!1402483 (= lt!1713578 (ListMap!3666 (removePresrvNoDuplicatedKeys!167 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287)))))

(assert (=> d!1402483 (= (-!424 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103) key!3287) lt!1713578)))

(declare-fun b!4538613 () Bool)

(assert (=> b!4538613 (= e!2828204 (= ((_ map and) (content!8435 (keys!17658 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) ((_ map not) (store ((as const (Array K!12135 Bool)) false) key!3287 true))) (content!8435 (keys!17658 lt!1713578))))))

(assert (= (and d!1402483 res!1891307) b!4538613))

(declare-fun m!5303477 () Bool)

(assert (=> d!1402483 m!5303477))

(declare-fun m!5303479 () Bool)

(assert (=> d!1402483 m!5303479))

(declare-fun m!5303481 () Bool)

(assert (=> b!4538613 m!5303481))

(declare-fun m!5303483 () Bool)

(assert (=> b!4538613 m!5303483))

(assert (=> b!4538613 m!5302995))

(assert (=> b!4538613 m!5303481))

(declare-fun m!5303485 () Bool)

(assert (=> b!4538613 m!5303485))

(declare-fun m!5303487 () Bool)

(assert (=> b!4538613 m!5303487))

(assert (=> b!4538613 m!5302493))

(assert (=> b!4538613 m!5303485))

(assert (=> b!4538169 d!1402483))

(declare-fun bs!875353 () Bool)

(declare-fun b!4538618 () Bool)

(assert (= bs!875353 (and b!4538618 b!4538248)))

(declare-fun lambda!175906 () Int)

(assert (=> bs!875353 (= (= lt!1713103 lt!1713121) (= lambda!175906 lambda!175836))))

(declare-fun bs!875354 () Bool)

(assert (= bs!875354 (and b!4538618 d!1402409)))

(assert (=> bs!875354 (= (= lt!1713103 lt!1713488) (= lambda!175906 lambda!175888))))

(assert (=> bs!875353 (= (= lt!1713103 lt!1713258) (= lambda!175906 lambda!175837))))

(declare-fun bs!875355 () Bool)

(assert (= bs!875355 (and b!4538618 b!4538501)))

(assert (=> bs!875355 (= (= lt!1713103 lt!1713493) (= lambda!175906 lambda!175886))))

(declare-fun bs!875356 () Bool)

(assert (= bs!875356 (and b!4538618 b!4538249)))

(assert (=> bs!875356 (= (= lt!1713103 lt!1713121) (= lambda!175906 lambda!175834))))

(declare-fun bs!875357 () Bool)

(assert (= bs!875357 (and b!4538618 d!1402317)))

(assert (=> bs!875357 (not (= lambda!175906 lambda!175860))))

(assert (=> bs!875355 (= (= lt!1713103 lt!1713095) (= lambda!175906 lambda!175885))))

(declare-fun bs!875358 () Bool)

(assert (= bs!875358 (and b!4538618 b!4538171)))

(assert (=> bs!875358 (not (= lambda!175906 lambda!175771))))

(declare-fun bs!875359 () Bool)

(assert (= bs!875359 (and b!4538618 b!4538502)))

(assert (=> bs!875359 (= (= lt!1713103 lt!1713095) (= lambda!175906 lambda!175883))))

(declare-fun bs!875360 () Bool)

(assert (= bs!875360 (and b!4538618 d!1402229)))

(assert (=> bs!875360 (= (= lt!1713103 lt!1713253) (= lambda!175906 lambda!175838))))

(assert (=> b!4538618 true))

(declare-fun bs!875361 () Bool)

(declare-fun b!4538617 () Bool)

(assert (= bs!875361 (and b!4538617 d!1402409)))

(declare-fun lambda!175907 () Int)

(assert (=> bs!875361 (= (= lt!1713103 lt!1713488) (= lambda!175907 lambda!175888))))

(declare-fun bs!875362 () Bool)

(assert (= bs!875362 (and b!4538617 b!4538248)))

(assert (=> bs!875362 (= (= lt!1713103 lt!1713258) (= lambda!175907 lambda!175837))))

(declare-fun bs!875363 () Bool)

(assert (= bs!875363 (and b!4538617 b!4538501)))

(assert (=> bs!875363 (= (= lt!1713103 lt!1713493) (= lambda!175907 lambda!175886))))

(declare-fun bs!875364 () Bool)

(assert (= bs!875364 (and b!4538617 b!4538249)))

(assert (=> bs!875364 (= (= lt!1713103 lt!1713121) (= lambda!175907 lambda!175834))))

(declare-fun bs!875365 () Bool)

(assert (= bs!875365 (and b!4538617 d!1402317)))

(assert (=> bs!875365 (not (= lambda!175907 lambda!175860))))

(assert (=> bs!875363 (= (= lt!1713103 lt!1713095) (= lambda!175907 lambda!175885))))

(declare-fun bs!875366 () Bool)

(assert (= bs!875366 (and b!4538617 b!4538171)))

(assert (=> bs!875366 (not (= lambda!175907 lambda!175771))))

(assert (=> bs!875362 (= (= lt!1713103 lt!1713121) (= lambda!175907 lambda!175836))))

(declare-fun bs!875367 () Bool)

(assert (= bs!875367 (and b!4538617 b!4538618)))

(assert (=> bs!875367 (= lambda!175907 lambda!175906)))

(declare-fun bs!875368 () Bool)

(assert (= bs!875368 (and b!4538617 b!4538502)))

(assert (=> bs!875368 (= (= lt!1713103 lt!1713095) (= lambda!175907 lambda!175883))))

(declare-fun bs!875369 () Bool)

(assert (= bs!875369 (and b!4538617 d!1402229)))

(assert (=> bs!875369 (= (= lt!1713103 lt!1713253) (= lambda!175907 lambda!175838))))

(assert (=> b!4538617 true))

(declare-fun lt!1713589 () ListMap!3665)

(declare-fun lambda!175908 () Int)

(assert (=> bs!875361 (= (= lt!1713589 lt!1713488) (= lambda!175908 lambda!175888))))

(assert (=> bs!875362 (= (= lt!1713589 lt!1713258) (= lambda!175908 lambda!175837))))

(assert (=> bs!875363 (= (= lt!1713589 lt!1713493) (= lambda!175908 lambda!175886))))

(assert (=> bs!875364 (= (= lt!1713589 lt!1713121) (= lambda!175908 lambda!175834))))

(assert (=> bs!875365 (not (= lambda!175908 lambda!175860))))

(assert (=> bs!875363 (= (= lt!1713589 lt!1713095) (= lambda!175908 lambda!175885))))

(assert (=> b!4538617 (= (= lt!1713589 lt!1713103) (= lambda!175908 lambda!175907))))

(assert (=> bs!875366 (not (= lambda!175908 lambda!175771))))

(assert (=> bs!875362 (= (= lt!1713589 lt!1713121) (= lambda!175908 lambda!175836))))

(assert (=> bs!875367 (= (= lt!1713589 lt!1713103) (= lambda!175908 lambda!175906))))

(assert (=> bs!875368 (= (= lt!1713589 lt!1713095) (= lambda!175908 lambda!175883))))

(assert (=> bs!875369 (= (= lt!1713589 lt!1713253) (= lambda!175908 lambda!175838))))

(assert (=> b!4538617 true))

(declare-fun bs!875370 () Bool)

(declare-fun d!1402485 () Bool)

(assert (= bs!875370 (and d!1402485 d!1402409)))

(declare-fun lt!1713584 () ListMap!3665)

(declare-fun lambda!175909 () Int)

(assert (=> bs!875370 (= (= lt!1713584 lt!1713488) (= lambda!175909 lambda!175888))))

(declare-fun bs!875371 () Bool)

(assert (= bs!875371 (and d!1402485 b!4538248)))

(assert (=> bs!875371 (= (= lt!1713584 lt!1713258) (= lambda!175909 lambda!175837))))

(declare-fun bs!875372 () Bool)

(assert (= bs!875372 (and d!1402485 b!4538501)))

(assert (=> bs!875372 (= (= lt!1713584 lt!1713493) (= lambda!175909 lambda!175886))))

(declare-fun bs!875373 () Bool)

(assert (= bs!875373 (and d!1402485 d!1402317)))

(assert (=> bs!875373 (not (= lambda!175909 lambda!175860))))

(assert (=> bs!875372 (= (= lt!1713584 lt!1713095) (= lambda!175909 lambda!175885))))

(declare-fun bs!875374 () Bool)

(assert (= bs!875374 (and d!1402485 b!4538617)))

(assert (=> bs!875374 (= (= lt!1713584 lt!1713103) (= lambda!175909 lambda!175907))))

(declare-fun bs!875375 () Bool)

(assert (= bs!875375 (and d!1402485 b!4538171)))

(assert (=> bs!875375 (not (= lambda!175909 lambda!175771))))

(assert (=> bs!875371 (= (= lt!1713584 lt!1713121) (= lambda!175909 lambda!175836))))

(declare-fun bs!875376 () Bool)

(assert (= bs!875376 (and d!1402485 b!4538618)))

(assert (=> bs!875376 (= (= lt!1713584 lt!1713103) (= lambda!175909 lambda!175906))))

(assert (=> bs!875374 (= (= lt!1713584 lt!1713589) (= lambda!175909 lambda!175908))))

(declare-fun bs!875377 () Bool)

(assert (= bs!875377 (and d!1402485 b!4538249)))

(assert (=> bs!875377 (= (= lt!1713584 lt!1713121) (= lambda!175909 lambda!175834))))

(declare-fun bs!875378 () Bool)

(assert (= bs!875378 (and d!1402485 b!4538502)))

(assert (=> bs!875378 (= (= lt!1713584 lt!1713095) (= lambda!175909 lambda!175883))))

(declare-fun bs!875379 () Bool)

(assert (= bs!875379 (and d!1402485 d!1402229)))

(assert (=> bs!875379 (= (= lt!1713584 lt!1713253) (= lambda!175909 lambda!175838))))

(assert (=> d!1402485 true))

(declare-fun bm!316452 () Bool)

(declare-fun call!316457 () Unit!98176)

(assert (=> bm!316452 (= call!316457 (lemmaContainsAllItsOwnKeys!364 lt!1713103))))

(declare-fun b!4538614 () Bool)

(declare-fun e!2828205 () Bool)

(assert (=> b!4538614 (= e!2828205 (invariantList!1043 (toList!4403 lt!1713584)))))

(declare-fun call!316459 () Bool)

(declare-fun c!775129 () Bool)

(declare-fun bm!316453 () Bool)

(assert (=> bm!316453 (= call!316459 (forall!10343 (ite c!775129 (toList!4403 lt!1713103) (_2!28908 lt!1713093)) (ite c!775129 lambda!175906 lambda!175908)))))

(declare-fun b!4538615 () Bool)

(declare-fun res!1891310 () Bool)

(assert (=> b!4538615 (=> (not res!1891310) (not e!2828205))))

(assert (=> b!4538615 (= res!1891310 (forall!10343 (toList!4403 lt!1713103) lambda!175909))))

(declare-fun b!4538616 () Bool)

(declare-fun e!2828206 () Bool)

(assert (=> b!4538616 (= e!2828206 (forall!10343 (toList!4403 lt!1713103) lambda!175908))))

(declare-fun e!2828207 () ListMap!3665)

(assert (=> b!4538617 (= e!2828207 lt!1713589)))

(declare-fun lt!1713595 () ListMap!3665)

(assert (=> b!4538617 (= lt!1713595 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4538617 (= lt!1713589 (addToMapMapFromBucket!725 (t!357834 (_2!28908 lt!1713093)) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713588 () Unit!98176)

(assert (=> b!4538617 (= lt!1713588 call!316457)))

(assert (=> b!4538617 (forall!10343 (toList!4403 lt!1713103) lambda!175907)))

(declare-fun lt!1713596 () Unit!98176)

(assert (=> b!4538617 (= lt!1713596 lt!1713588)))

(assert (=> b!4538617 (forall!10343 (toList!4403 lt!1713595) lambda!175908)))

(declare-fun lt!1713583 () Unit!98176)

(declare-fun Unit!98253 () Unit!98176)

(assert (=> b!4538617 (= lt!1713583 Unit!98253)))

(declare-fun call!316458 () Bool)

(assert (=> b!4538617 call!316458))

(declare-fun lt!1713594 () Unit!98176)

(declare-fun Unit!98254 () Unit!98176)

(assert (=> b!4538617 (= lt!1713594 Unit!98254)))

(declare-fun lt!1713582 () Unit!98176)

(declare-fun Unit!98255 () Unit!98176)

(assert (=> b!4538617 (= lt!1713582 Unit!98255)))

(declare-fun lt!1713585 () Unit!98176)

(assert (=> b!4538617 (= lt!1713585 (forallContained!2605 (toList!4403 lt!1713595) lambda!175908 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4538617 (contains!13538 lt!1713595 (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1713581 () Unit!98176)

(declare-fun Unit!98256 () Unit!98176)

(assert (=> b!4538617 (= lt!1713581 Unit!98256)))

(assert (=> b!4538617 (contains!13538 lt!1713589 (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1713580 () Unit!98176)

(declare-fun Unit!98257 () Unit!98176)

(assert (=> b!4538617 (= lt!1713580 Unit!98257)))

(assert (=> b!4538617 call!316459))

(declare-fun lt!1713598 () Unit!98176)

(declare-fun Unit!98258 () Unit!98176)

(assert (=> b!4538617 (= lt!1713598 Unit!98258)))

(assert (=> b!4538617 (forall!10343 (toList!4403 lt!1713595) lambda!175908)))

(declare-fun lt!1713590 () Unit!98176)

(declare-fun Unit!98259 () Unit!98176)

(assert (=> b!4538617 (= lt!1713590 Unit!98259)))

(declare-fun lt!1713593 () Unit!98176)

(declare-fun Unit!98260 () Unit!98176)

(assert (=> b!4538617 (= lt!1713593 Unit!98260)))

(declare-fun lt!1713599 () Unit!98176)

(assert (=> b!4538617 (= lt!1713599 (addForallContainsKeyThenBeforeAdding!364 lt!1713103 lt!1713589 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4538617 (forall!10343 (toList!4403 lt!1713103) lambda!175908)))

(declare-fun lt!1713587 () Unit!98176)

(assert (=> b!4538617 (= lt!1713587 lt!1713599)))

(assert (=> b!4538617 (forall!10343 (toList!4403 lt!1713103) lambda!175908)))

(declare-fun lt!1713597 () Unit!98176)

(declare-fun Unit!98261 () Unit!98176)

(assert (=> b!4538617 (= lt!1713597 Unit!98261)))

(declare-fun res!1891309 () Bool)

(assert (=> b!4538617 (= res!1891309 (forall!10343 (_2!28908 lt!1713093) lambda!175908))))

(assert (=> b!4538617 (=> (not res!1891309) (not e!2828206))))

(assert (=> b!4538617 e!2828206))

(declare-fun lt!1713579 () Unit!98176)

(declare-fun Unit!98262 () Unit!98176)

(assert (=> b!4538617 (= lt!1713579 Unit!98262)))

(assert (=> b!4538618 (= e!2828207 lt!1713103)))

(declare-fun lt!1713592 () Unit!98176)

(assert (=> b!4538618 (= lt!1713592 call!316457)))

(assert (=> b!4538618 call!316458))

(declare-fun lt!1713591 () Unit!98176)

(assert (=> b!4538618 (= lt!1713591 lt!1713592)))

(assert (=> b!4538618 call!316459))

(declare-fun lt!1713586 () Unit!98176)

(declare-fun Unit!98263 () Unit!98176)

(assert (=> b!4538618 (= lt!1713586 Unit!98263)))

(declare-fun bm!316454 () Bool)

(assert (=> bm!316454 (= call!316458 (forall!10343 (ite c!775129 (toList!4403 lt!1713103) (t!357834 (_2!28908 lt!1713093))) (ite c!775129 lambda!175906 lambda!175908)))))

(assert (=> d!1402485 e!2828205))

(declare-fun res!1891308 () Bool)

(assert (=> d!1402485 (=> (not res!1891308) (not e!2828205))))

(assert (=> d!1402485 (= res!1891308 (forall!10343 (_2!28908 lt!1713093) lambda!175909))))

(assert (=> d!1402485 (= lt!1713584 e!2828207)))

(assert (=> d!1402485 (= c!775129 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1402485 (noDuplicateKeys!1198 (_2!28908 lt!1713093))))

(assert (=> d!1402485 (= (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103) lt!1713584)))

(assert (= (and d!1402485 c!775129) b!4538618))

(assert (= (and d!1402485 (not c!775129)) b!4538617))

(assert (= (and b!4538617 res!1891309) b!4538616))

(assert (= (or b!4538618 b!4538617) bm!316453))

(assert (= (or b!4538618 b!4538617) bm!316454))

(assert (= (or b!4538618 b!4538617) bm!316452))

(assert (= (and d!1402485 res!1891308) b!4538615))

(assert (= (and b!4538615 res!1891310) b!4538614))

(declare-fun m!5303489 () Bool)

(assert (=> bm!316454 m!5303489))

(declare-fun m!5303491 () Bool)

(assert (=> b!4538617 m!5303491))

(declare-fun m!5303493 () Bool)

(assert (=> b!4538617 m!5303493))

(declare-fun m!5303495 () Bool)

(assert (=> b!4538617 m!5303495))

(declare-fun m!5303497 () Bool)

(assert (=> b!4538617 m!5303497))

(assert (=> b!4538617 m!5303491))

(assert (=> b!4538617 m!5303497))

(declare-fun m!5303499 () Bool)

(assert (=> b!4538617 m!5303499))

(declare-fun m!5303501 () Bool)

(assert (=> b!4538617 m!5303501))

(declare-fun m!5303503 () Bool)

(assert (=> b!4538617 m!5303503))

(declare-fun m!5303505 () Bool)

(assert (=> b!4538617 m!5303505))

(assert (=> b!4538617 m!5303493))

(declare-fun m!5303507 () Bool)

(assert (=> b!4538617 m!5303507))

(declare-fun m!5303509 () Bool)

(assert (=> b!4538617 m!5303509))

(declare-fun m!5303511 () Bool)

(assert (=> d!1402485 m!5303511))

(assert (=> d!1402485 m!5302483))

(declare-fun m!5303513 () Bool)

(assert (=> b!4538615 m!5303513))

(declare-fun m!5303515 () Bool)

(assert (=> b!4538614 m!5303515))

(declare-fun m!5303517 () Bool)

(assert (=> bm!316453 m!5303517))

(declare-fun m!5303519 () Bool)

(assert (=> bm!316452 m!5303519))

(assert (=> b!4538616 m!5303497))

(assert (=> b!4538169 d!1402485))

(declare-fun d!1402487 () Bool)

(assert (=> d!1402487 (= (addToMapMapFromBucket!725 (_2!28908 lt!1713093) (-!424 lt!1713103 key!3287)) (-!424 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103) key!3287))))

(declare-fun lt!1713602 () Unit!98176)

(declare-fun choose!29881 (ListMap!3665 K!12135 List!50872) Unit!98176)

(assert (=> d!1402487 (= lt!1713602 (choose!29881 lt!1713103 key!3287 (_2!28908 lt!1713093)))))

(assert (=> d!1402487 (not (containsKey!1870 (_2!28908 lt!1713093) key!3287))))

(assert (=> d!1402487 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!22 lt!1713103 key!3287 (_2!28908 lt!1713093)) lt!1713602)))

(declare-fun bs!875380 () Bool)

(assert (= bs!875380 d!1402487))

(assert (=> bs!875380 m!5302517))

(declare-fun m!5303521 () Bool)

(assert (=> bs!875380 m!5303521))

(assert (=> bs!875380 m!5302517))

(assert (=> bs!875380 m!5302493))

(assert (=> bs!875380 m!5302495))

(declare-fun m!5303523 () Bool)

(assert (=> bs!875380 m!5303523))

(assert (=> bs!875380 m!5302523))

(assert (=> bs!875380 m!5302493))

(assert (=> b!4538169 d!1402487))

(declare-fun b!4538623 () Bool)

(declare-fun tp!1338611 () Bool)

(declare-fun e!2828210 () Bool)

(assert (=> b!4538623 (= e!2828210 (and tp_is_empty!28069 tp_is_empty!28071 tp!1338611))))

(assert (=> b!4538186 (= tp!1338599 e!2828210)))

(assert (= (and b!4538186 ((_ is Cons!50748) (t!357834 newBucket!178))) b!4538623))

(declare-fun b!4538628 () Bool)

(declare-fun e!2828213 () Bool)

(declare-fun tp!1338616 () Bool)

(declare-fun tp!1338617 () Bool)

(assert (=> b!4538628 (= e!2828213 (and tp!1338616 tp!1338617))))

(assert (=> b!4538157 (= tp!1338598 e!2828213)))

(assert (= (and b!4538157 ((_ is Cons!50749) (toList!4404 lm!1477))) b!4538628))

(declare-fun b_lambda!157689 () Bool)

(assert (= b_lambda!157673 (or start!450372 b_lambda!157689)))

(declare-fun bs!875381 () Bool)

(declare-fun d!1402489 () Bool)

(assert (= bs!875381 (and d!1402489 start!450372)))

(assert (=> bs!875381 (= (dynLambda!21211 lambda!175769 lt!1713115) (noDuplicateKeys!1198 (_2!28908 lt!1713115)))))

(declare-fun m!5303525 () Bool)

(assert (=> bs!875381 m!5303525))

(assert (=> d!1402439 d!1402489))

(declare-fun b_lambda!157691 () Bool)

(assert (= b_lambda!157671 (or b!4538171 b_lambda!157691)))

(declare-fun bs!875382 () Bool)

(declare-fun d!1402491 () Bool)

(assert (= bs!875382 (and d!1402491 b!4538171)))

(assert (=> bs!875382 (= (dynLambda!21212 lambda!175771 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))) (= (hash!2911 hashF!1107 (_1!28907 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113))))) (_1!28908 (h!56628 (toList!4404 lm!1477)))))))

(declare-fun m!5303527 () Bool)

(assert (=> bs!875382 m!5303527))

(assert (=> d!1402395 d!1402491))

(declare-fun b_lambda!157693 () Bool)

(assert (= b_lambda!157663 (or start!450372 b_lambda!157693)))

(declare-fun bs!875383 () Bool)

(declare-fun d!1402493 () Bool)

(assert (= bs!875383 (and d!1402493 start!450372)))

(assert (=> bs!875383 (= (dynLambda!21211 lambda!175769 (h!56628 (toList!4404 lm!1477))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lm!1477)))))))

(declare-fun m!5303529 () Bool)

(assert (=> bs!875383 m!5303529))

(assert (=> d!1402301 d!1402493))

(declare-fun b_lambda!157695 () Bool)

(assert (= b_lambda!157669 (or b!4538171 b_lambda!157695)))

(declare-fun bs!875384 () Bool)

(declare-fun d!1402495 () Bool)

(assert (= bs!875384 (and d!1402495 b!4538171)))

(assert (=> bs!875384 (= (dynLambda!21211 lambda!175770 (h!56628 (toList!4404 lm!1477))) (allKeysSameHash!1052 (_2!28908 (h!56628 (toList!4404 lm!1477))) (_1!28908 (h!56628 (toList!4404 lm!1477))) hashF!1107))))

(declare-fun m!5303531 () Bool)

(assert (=> bs!875384 m!5303531))

(assert (=> d!1402393 d!1402495))

(declare-fun b_lambda!157697 () Bool)

(assert (= b_lambda!157659 (or start!450372 b_lambda!157697)))

(assert (=> b!4538267 d!1402493))

(check-sat (not d!1402473) (not bm!316449) (not b!4538530) (not d!1402431) (not b!4538575) (not b!4538604) (not b!4538597) (not b!4538623) (not b!4538527) (not d!1402429) (not b!4538608) (not bm!316432) (not b!4538595) (not d!1402269) (not b!4538341) (not bs!875381) (not d!1402345) (not b!4538565) (not d!1402277) (not b!4538590) (not d!1402351) (not b!4538246) (not b_lambda!157691) (not b!4538402) (not d!1402475) (not b!4538394) (not b!4538358) (not d!1402289) (not b!4538357) (not d!1402339) (not b!4538245) (not b!4538467) (not b!4538322) (not b!4538315) (not d!1402419) (not b!4538628) (not b!4538612) (not bs!875384) (not d!1402373) (not b!4538588) (not b!4538314) (not bm!316447) (not d!1402469) (not d!1402479) (not b!4538321) (not b!4538320) (not b!4538599) (not b!4538589) (not d!1402417) (not d!1402301) (not d!1402347) (not d!1402449) (not b!4538268) (not b!4538247) (not b!4538248) (not b!4538313) (not b_lambda!157697) (not d!1402349) (not b!4538596) (not b!4538401) (not b!4538499) (not b!4538572) (not b!4538616) (not b!4538603) (not b!4538488) (not b!4538613) (not d!1402303) (not b!4538500) (not b!4538423) (not d!1402439) (not b!4538617) (not d!1402381) (not bm!316448) (not b!4538464) (not b!4538422) (not d!1402343) (not b!4538359) (not b!4538577) (not b!4538594) (not d!1402455) (not d!1402393) (not d!1402421) (not b!4538593) (not b_lambda!157689) (not b!4538391) (not b!4538432) (not d!1402481) (not d!1402375) (not b!4538615) (not d!1402467) (not b!4538576) (not b_lambda!157695) (not d!1402317) (not bm!316451) (not d!1402471) (not d!1402453) (not b!4538610) (not d!1402353) (not b!4538346) (not d!1402255) (not d!1402227) (not b!4538469) (not d!1402443) (not b_lambda!157693) (not b!4538468) (not bm!316437) (not d!1402253) (not bm!316430) (not b!4538198) (not d!1402295) (not d!1402369) (not d!1402229) (not b!4538498) tp_is_empty!28071 (not b!4538602) (not bm!316454) (not b!4538614) tp_is_empty!28069 (not bm!316431) (not d!1402483) (not d!1402395) (not b!4538463) (not b!4538318) (not b!4538343) (not d!1402477) (not d!1402379) (not b!4538429) (not b!4538197) (not b!4538605) (not b!4538470) (not b!4538501) (not b!4538261) (not b!4538606) (not d!1402315) (not d!1402383) (not b!4538344) (not b!4538319) (not d!1402441) (not d!1402465) (not d!1402327) (not b!4538574) (not bm!316450) (not bs!875382) (not d!1402275) (not b!4538598) (not bs!875383) (not b!4538529) (not d!1402487) (not d!1402485) (not d!1402263) (not bm!316453) (not bm!316452) (not d!1402407) (not d!1402409) (not b!4538362) (not b!4538400) (not d!1402405) (not b!4538431) (not b!4538508))
(check-sat)
(get-model)

(declare-fun d!1402497 () Bool)

(declare-fun noDuplicatedKeys!276 (List!50872) Bool)

(assert (=> d!1402497 (= (invariantList!1043 (toList!4403 lt!1713569)) (noDuplicatedKeys!276 (toList!4403 lt!1713569)))))

(declare-fun bs!875385 () Bool)

(assert (= bs!875385 d!1402497))

(declare-fun m!5303533 () Bool)

(assert (=> bs!875385 m!5303533))

(assert (=> d!1402471 d!1402497))

(declare-fun d!1402499 () Bool)

(declare-fun res!1891311 () Bool)

(declare-fun e!2828214 () Bool)

(assert (=> d!1402499 (=> res!1891311 e!2828214)))

(assert (=> d!1402499 (= res!1891311 ((_ is Nil!50749) (t!357835 (toList!4404 lm!1477))))))

(assert (=> d!1402499 (= (forall!10341 (t!357835 (toList!4404 lm!1477)) lambda!175901) e!2828214)))

(declare-fun b!4538629 () Bool)

(declare-fun e!2828215 () Bool)

(assert (=> b!4538629 (= e!2828214 e!2828215)))

(declare-fun res!1891312 () Bool)

(assert (=> b!4538629 (=> (not res!1891312) (not e!2828215))))

(assert (=> b!4538629 (= res!1891312 (dynLambda!21211 lambda!175901 (h!56628 (t!357835 (toList!4404 lm!1477)))))))

(declare-fun b!4538630 () Bool)

(assert (=> b!4538630 (= e!2828215 (forall!10341 (t!357835 (t!357835 (toList!4404 lm!1477))) lambda!175901))))

(assert (= (and d!1402499 (not res!1891311)) b!4538629))

(assert (= (and b!4538629 res!1891312) b!4538630))

(declare-fun b_lambda!157699 () Bool)

(assert (=> (not b_lambda!157699) (not b!4538629)))

(declare-fun m!5303535 () Bool)

(assert (=> b!4538629 m!5303535))

(declare-fun m!5303537 () Bool)

(assert (=> b!4538630 m!5303537))

(assert (=> d!1402471 d!1402499))

(declare-fun d!1402501 () Bool)

(assert (=> d!1402501 (= (head!9478 (toList!4404 lm!1477)) (h!56628 (toList!4404 lm!1477)))))

(assert (=> d!1402343 d!1402501))

(declare-fun d!1402503 () Bool)

(declare-fun res!1891313 () Bool)

(declare-fun e!2828216 () Bool)

(assert (=> d!1402503 (=> res!1891313 e!2828216)))

(assert (=> d!1402503 (= res!1891313 (and ((_ is Cons!50748) lt!1713537) (= (_1!28907 (h!56627 lt!1713537)) key!3287)))))

(assert (=> d!1402503 (= (containsKey!1870 lt!1713537 key!3287) e!2828216)))

(declare-fun b!4538631 () Bool)

(declare-fun e!2828217 () Bool)

(assert (=> b!4538631 (= e!2828216 e!2828217)))

(declare-fun res!1891314 () Bool)

(assert (=> b!4538631 (=> (not res!1891314) (not e!2828217))))

(assert (=> b!4538631 (= res!1891314 ((_ is Cons!50748) lt!1713537))))

(declare-fun b!4538632 () Bool)

(assert (=> b!4538632 (= e!2828217 (containsKey!1870 (t!357834 lt!1713537) key!3287))))

(assert (= (and d!1402503 (not res!1891313)) b!4538631))

(assert (= (and b!4538631 res!1891314) b!4538632))

(declare-fun m!5303539 () Bool)

(assert (=> b!4538632 m!5303539))

(assert (=> d!1402441 d!1402503))

(declare-fun d!1402505 () Bool)

(declare-fun res!1891315 () Bool)

(declare-fun e!2828218 () Bool)

(assert (=> d!1402505 (=> res!1891315 e!2828218)))

(assert (=> d!1402505 (= res!1891315 (not ((_ is Cons!50748) lt!1713088)))))

(assert (=> d!1402505 (= (noDuplicateKeys!1198 lt!1713088) e!2828218)))

(declare-fun b!4538633 () Bool)

(declare-fun e!2828219 () Bool)

(assert (=> b!4538633 (= e!2828218 e!2828219)))

(declare-fun res!1891316 () Bool)

(assert (=> b!4538633 (=> (not res!1891316) (not e!2828219))))

(assert (=> b!4538633 (= res!1891316 (not (containsKey!1870 (t!357834 lt!1713088) (_1!28907 (h!56627 lt!1713088)))))))

(declare-fun b!4538634 () Bool)

(assert (=> b!4538634 (= e!2828219 (noDuplicateKeys!1198 (t!357834 lt!1713088)))))

(assert (= (and d!1402505 (not res!1891315)) b!4538633))

(assert (= (and b!4538633 res!1891316) b!4538634))

(declare-fun m!5303541 () Bool)

(assert (=> b!4538633 m!5303541))

(declare-fun m!5303543 () Bool)

(assert (=> b!4538634 m!5303543))

(assert (=> d!1402441 d!1402505))

(declare-fun d!1402507 () Bool)

(declare-fun res!1891321 () Bool)

(declare-fun e!2828224 () Bool)

(assert (=> d!1402507 (=> res!1891321 e!2828224)))

(assert (=> d!1402507 (= res!1891321 (and ((_ is Cons!50748) (toList!4403 lt!1713103)) (= (_1!28907 (h!56627 (toList!4403 lt!1713103))) key!3287)))))

(assert (=> d!1402507 (= (containsKey!1872 (toList!4403 lt!1713103) key!3287) e!2828224)))

(declare-fun b!4538639 () Bool)

(declare-fun e!2828225 () Bool)

(assert (=> b!4538639 (= e!2828224 e!2828225)))

(declare-fun res!1891322 () Bool)

(assert (=> b!4538639 (=> (not res!1891322) (not e!2828225))))

(assert (=> b!4538639 (= res!1891322 ((_ is Cons!50748) (toList!4403 lt!1713103)))))

(declare-fun b!4538640 () Bool)

(assert (=> b!4538640 (= e!2828225 (containsKey!1872 (t!357834 (toList!4403 lt!1713103)) key!3287))))

(assert (= (and d!1402507 (not res!1891321)) b!4538639))

(assert (= (and b!4538639 res!1891322) b!4538640))

(declare-fun m!5303545 () Bool)

(assert (=> b!4538640 m!5303545))

(assert (=> d!1402467 d!1402507))

(declare-fun d!1402509 () Bool)

(declare-fun res!1891323 () Bool)

(declare-fun e!2828226 () Bool)

(assert (=> d!1402509 (=> res!1891323 e!2828226)))

(assert (=> d!1402509 (= res!1891323 (and ((_ is Cons!50748) (t!357834 newBucket!178)) (= (_1!28907 (h!56627 (t!357834 newBucket!178))) (_1!28907 (h!56627 newBucket!178)))))))

(assert (=> d!1402509 (= (containsKey!1870 (t!357834 newBucket!178) (_1!28907 (h!56627 newBucket!178))) e!2828226)))

(declare-fun b!4538641 () Bool)

(declare-fun e!2828227 () Bool)

(assert (=> b!4538641 (= e!2828226 e!2828227)))

(declare-fun res!1891324 () Bool)

(assert (=> b!4538641 (=> (not res!1891324) (not e!2828227))))

(assert (=> b!4538641 (= res!1891324 ((_ is Cons!50748) (t!357834 newBucket!178)))))

(declare-fun b!4538642 () Bool)

(assert (=> b!4538642 (= e!2828227 (containsKey!1870 (t!357834 (t!357834 newBucket!178)) (_1!28907 (h!56627 newBucket!178))))))

(assert (= (and d!1402509 (not res!1891323)) b!4538641))

(assert (= (and b!4538641 res!1891324) b!4538642))

(declare-fun m!5303547 () Bool)

(assert (=> b!4538642 m!5303547))

(assert (=> b!4538197 d!1402509))

(declare-fun d!1402511 () Bool)

(declare-fun c!775132 () Bool)

(assert (=> d!1402511 (= c!775132 ((_ is Nil!50748) (toList!4403 lt!1713090)))))

(declare-fun e!2828230 () (InoxSet tuple2!51226))

(assert (=> d!1402511 (= (content!8434 (toList!4403 lt!1713090)) e!2828230)))

(declare-fun b!4538647 () Bool)

(assert (=> b!4538647 (= e!2828230 ((as const (Array tuple2!51226 Bool)) false))))

(declare-fun b!4538648 () Bool)

(assert (=> b!4538648 (= e!2828230 ((_ map or) (store ((as const (Array tuple2!51226 Bool)) false) (h!56627 (toList!4403 lt!1713090)) true) (content!8434 (t!357834 (toList!4403 lt!1713090)))))))

(assert (= (and d!1402511 c!775132) b!4538647))

(assert (= (and d!1402511 (not c!775132)) b!4538648))

(declare-fun m!5303549 () Bool)

(assert (=> b!4538648 m!5303549))

(declare-fun m!5303551 () Bool)

(assert (=> b!4538648 m!5303551))

(assert (=> d!1402481 d!1402511))

(declare-fun d!1402513 () Bool)

(declare-fun c!775133 () Bool)

(assert (=> d!1402513 (= c!775133 ((_ is Nil!50748) (toList!4403 lt!1713099)))))

(declare-fun e!2828231 () (InoxSet tuple2!51226))

(assert (=> d!1402513 (= (content!8434 (toList!4403 lt!1713099)) e!2828231)))

(declare-fun b!4538649 () Bool)

(assert (=> b!4538649 (= e!2828231 ((as const (Array tuple2!51226 Bool)) false))))

(declare-fun b!4538650 () Bool)

(assert (=> b!4538650 (= e!2828231 ((_ map or) (store ((as const (Array tuple2!51226 Bool)) false) (h!56627 (toList!4403 lt!1713099)) true) (content!8434 (t!357834 (toList!4403 lt!1713099)))))))

(assert (= (and d!1402513 c!775133) b!4538649))

(assert (= (and d!1402513 (not c!775133)) b!4538650))

(declare-fun m!5303553 () Bool)

(assert (=> b!4538650 m!5303553))

(declare-fun m!5303555 () Bool)

(assert (=> b!4538650 m!5303555))

(assert (=> d!1402481 d!1402513))

(declare-fun d!1402515 () Bool)

(declare-fun c!775136 () Bool)

(assert (=> d!1402515 (= c!775136 ((_ is Nil!50751) (keys!17658 lt!1713103)))))

(declare-fun e!2828234 () (InoxSet K!12135))

(assert (=> d!1402515 (= (content!8435 (keys!17658 lt!1713103)) e!2828234)))

(declare-fun b!4538655 () Bool)

(assert (=> b!4538655 (= e!2828234 ((as const (Array K!12135 Bool)) false))))

(declare-fun b!4538656 () Bool)

(assert (=> b!4538656 (= e!2828234 ((_ map or) (store ((as const (Array K!12135 Bool)) false) (h!56632 (keys!17658 lt!1713103)) true) (content!8435 (t!357837 (keys!17658 lt!1713103)))))))

(assert (= (and d!1402515 c!775136) b!4538655))

(assert (= (and d!1402515 (not c!775136)) b!4538656))

(declare-fun m!5303557 () Bool)

(assert (=> b!4538656 m!5303557))

(declare-fun m!5303559 () Bool)

(assert (=> b!4538656 m!5303559))

(assert (=> b!4538391 d!1402515))

(declare-fun b!4538664 () Bool)

(assert (=> b!4538664 true))

(declare-fun d!1402517 () Bool)

(declare-fun e!2828237 () Bool)

(assert (=> d!1402517 e!2828237))

(declare-fun res!1891332 () Bool)

(assert (=> d!1402517 (=> (not res!1891332) (not e!2828237))))

(declare-fun lt!1713605 () List!50875)

(declare-fun noDuplicate!761 (List!50875) Bool)

(assert (=> d!1402517 (= res!1891332 (noDuplicate!761 lt!1713605))))

(assert (=> d!1402517 (= lt!1713605 (getKeysList!491 (toList!4403 lt!1713103)))))

(assert (=> d!1402517 (= (keys!17658 lt!1713103) lt!1713605)))

(declare-fun b!4538663 () Bool)

(declare-fun res!1891331 () Bool)

(assert (=> b!4538663 (=> (not res!1891331) (not e!2828237))))

(declare-fun length!378 (List!50875) Int)

(declare-fun length!379 (List!50872) Int)

(assert (=> b!4538663 (= res!1891331 (= (length!378 lt!1713605) (length!379 (toList!4403 lt!1713103))))))

(declare-fun res!1891333 () Bool)

(assert (=> b!4538664 (=> (not res!1891333) (not e!2828237))))

(declare-fun lambda!175914 () Int)

(declare-fun forall!10344 (List!50875 Int) Bool)

(assert (=> b!4538664 (= res!1891333 (forall!10344 lt!1713605 lambda!175914))))

(declare-fun b!4538665 () Bool)

(declare-fun lambda!175915 () Int)

(declare-fun map!11171 (List!50872 Int) List!50875)

(assert (=> b!4538665 (= e!2828237 (= (content!8435 lt!1713605) (content!8435 (map!11171 (toList!4403 lt!1713103) lambda!175915))))))

(assert (= (and d!1402517 res!1891332) b!4538663))

(assert (= (and b!4538663 res!1891331) b!4538664))

(assert (= (and b!4538664 res!1891333) b!4538665))

(declare-fun m!5303561 () Bool)

(assert (=> d!1402517 m!5303561))

(assert (=> d!1402517 m!5303423))

(declare-fun m!5303563 () Bool)

(assert (=> b!4538663 m!5303563))

(declare-fun m!5303565 () Bool)

(assert (=> b!4538663 m!5303565))

(declare-fun m!5303567 () Bool)

(assert (=> b!4538664 m!5303567))

(declare-fun m!5303569 () Bool)

(assert (=> b!4538665 m!5303569))

(declare-fun m!5303571 () Bool)

(assert (=> b!4538665 m!5303571))

(assert (=> b!4538665 m!5303571))

(declare-fun m!5303573 () Bool)

(assert (=> b!4538665 m!5303573))

(assert (=> b!4538391 d!1402517))

(declare-fun d!1402519 () Bool)

(declare-fun c!775137 () Bool)

(assert (=> d!1402519 (= c!775137 ((_ is Nil!50751) (keys!17658 lt!1713382)))))

(declare-fun e!2828238 () (InoxSet K!12135))

(assert (=> d!1402519 (= (content!8435 (keys!17658 lt!1713382)) e!2828238)))

(declare-fun b!4538668 () Bool)

(assert (=> b!4538668 (= e!2828238 ((as const (Array K!12135 Bool)) false))))

(declare-fun b!4538669 () Bool)

(assert (=> b!4538669 (= e!2828238 ((_ map or) (store ((as const (Array K!12135 Bool)) false) (h!56632 (keys!17658 lt!1713382)) true) (content!8435 (t!357837 (keys!17658 lt!1713382)))))))

(assert (= (and d!1402519 c!775137) b!4538668))

(assert (= (and d!1402519 (not c!775137)) b!4538669))

(declare-fun m!5303575 () Bool)

(assert (=> b!4538669 m!5303575))

(declare-fun m!5303577 () Bool)

(assert (=> b!4538669 m!5303577))

(assert (=> b!4538391 d!1402519))

(declare-fun bs!875386 () Bool)

(declare-fun b!4538671 () Bool)

(assert (= bs!875386 (and b!4538671 b!4538664)))

(declare-fun lambda!175916 () Int)

(assert (=> bs!875386 (= (= (toList!4403 lt!1713382) (toList!4403 lt!1713103)) (= lambda!175916 lambda!175914))))

(assert (=> b!4538671 true))

(declare-fun bs!875387 () Bool)

(declare-fun b!4538672 () Bool)

(assert (= bs!875387 (and b!4538672 b!4538665)))

(declare-fun lambda!175917 () Int)

(assert (=> bs!875387 (= lambda!175917 lambda!175915)))

(declare-fun d!1402521 () Bool)

(declare-fun e!2828239 () Bool)

(assert (=> d!1402521 e!2828239))

(declare-fun res!1891335 () Bool)

(assert (=> d!1402521 (=> (not res!1891335) (not e!2828239))))

(declare-fun lt!1713606 () List!50875)

(assert (=> d!1402521 (= res!1891335 (noDuplicate!761 lt!1713606))))

(assert (=> d!1402521 (= lt!1713606 (getKeysList!491 (toList!4403 lt!1713382)))))

(assert (=> d!1402521 (= (keys!17658 lt!1713382) lt!1713606)))

(declare-fun b!4538670 () Bool)

(declare-fun res!1891334 () Bool)

(assert (=> b!4538670 (=> (not res!1891334) (not e!2828239))))

(assert (=> b!4538670 (= res!1891334 (= (length!378 lt!1713606) (length!379 (toList!4403 lt!1713382))))))

(declare-fun res!1891336 () Bool)

(assert (=> b!4538671 (=> (not res!1891336) (not e!2828239))))

(assert (=> b!4538671 (= res!1891336 (forall!10344 lt!1713606 lambda!175916))))

(assert (=> b!4538672 (= e!2828239 (= (content!8435 lt!1713606) (content!8435 (map!11171 (toList!4403 lt!1713382) lambda!175917))))))

(assert (= (and d!1402521 res!1891335) b!4538670))

(assert (= (and b!4538670 res!1891334) b!4538671))

(assert (= (and b!4538671 res!1891336) b!4538672))

(declare-fun m!5303579 () Bool)

(assert (=> d!1402521 m!5303579))

(declare-fun m!5303581 () Bool)

(assert (=> d!1402521 m!5303581))

(declare-fun m!5303583 () Bool)

(assert (=> b!4538670 m!5303583))

(declare-fun m!5303585 () Bool)

(assert (=> b!4538670 m!5303585))

(declare-fun m!5303587 () Bool)

(assert (=> b!4538671 m!5303587))

(declare-fun m!5303589 () Bool)

(assert (=> b!4538672 m!5303589))

(declare-fun m!5303591 () Bool)

(assert (=> b!4538672 m!5303591))

(assert (=> b!4538672 m!5303591))

(declare-fun m!5303593 () Bool)

(assert (=> b!4538672 m!5303593))

(assert (=> b!4538391 d!1402521))

(declare-fun bs!875388 () Bool)

(declare-fun d!1402523 () Bool)

(assert (= bs!875388 (and d!1402523 d!1402485)))

(declare-fun lambda!175918 () Int)

(assert (=> bs!875388 (not (= lambda!175918 lambda!175909))))

(declare-fun bs!875389 () Bool)

(assert (= bs!875389 (and d!1402523 d!1402409)))

(assert (=> bs!875389 (not (= lambda!175918 lambda!175888))))

(declare-fun bs!875390 () Bool)

(assert (= bs!875390 (and d!1402523 b!4538248)))

(assert (=> bs!875390 (not (= lambda!175918 lambda!175837))))

(declare-fun bs!875391 () Bool)

(assert (= bs!875391 (and d!1402523 b!4538501)))

(assert (=> bs!875391 (not (= lambda!175918 lambda!175886))))

(declare-fun bs!875392 () Bool)

(assert (= bs!875392 (and d!1402523 d!1402317)))

(assert (=> bs!875392 (= (= (_1!28908 (h!56628 (toList!4404 lm!1477))) hash!344) (= lambda!175918 lambda!175860))))

(assert (=> bs!875391 (not (= lambda!175918 lambda!175885))))

(declare-fun bs!875393 () Bool)

(assert (= bs!875393 (and d!1402523 b!4538617)))

(assert (=> bs!875393 (not (= lambda!175918 lambda!175907))))

(declare-fun bs!875394 () Bool)

(assert (= bs!875394 (and d!1402523 b!4538171)))

(assert (=> bs!875394 (= lambda!175918 lambda!175771)))

(assert (=> bs!875390 (not (= lambda!175918 lambda!175836))))

(declare-fun bs!875395 () Bool)

(assert (= bs!875395 (and d!1402523 b!4538618)))

(assert (=> bs!875395 (not (= lambda!175918 lambda!175906))))

(assert (=> bs!875393 (not (= lambda!175918 lambda!175908))))

(declare-fun bs!875396 () Bool)

(assert (= bs!875396 (and d!1402523 b!4538249)))

(assert (=> bs!875396 (not (= lambda!175918 lambda!175834))))

(declare-fun bs!875397 () Bool)

(assert (= bs!875397 (and d!1402523 b!4538502)))

(assert (=> bs!875397 (not (= lambda!175918 lambda!175883))))

(declare-fun bs!875398 () Bool)

(assert (= bs!875398 (and d!1402523 d!1402229)))

(assert (=> bs!875398 (not (= lambda!175918 lambda!175838))))

(assert (=> d!1402523 true))

(assert (=> d!1402523 true))

(assert (=> d!1402523 (= (allKeysSameHash!1052 (_2!28908 (h!56628 (toList!4404 lm!1477))) (_1!28908 (h!56628 (toList!4404 lm!1477))) hashF!1107) (forall!10343 (_2!28908 (h!56628 (toList!4404 lm!1477))) lambda!175918))))

(declare-fun bs!875399 () Bool)

(assert (= bs!875399 d!1402523))

(declare-fun m!5303595 () Bool)

(assert (=> bs!875399 m!5303595))

(assert (=> bs!875384 d!1402523))

(declare-fun d!1402525 () Bool)

(declare-fun res!1891337 () Bool)

(declare-fun e!2828240 () Bool)

(assert (=> d!1402525 (=> res!1891337 e!2828240)))

(assert (=> d!1402525 (= res!1891337 (and ((_ is Cons!50748) (t!357834 (_2!28908 lt!1713093))) (= (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))) key!3287)))))

(assert (=> d!1402525 (= (containsKey!1870 (t!357834 (_2!28908 lt!1713093)) key!3287) e!2828240)))

(declare-fun b!4538673 () Bool)

(declare-fun e!2828241 () Bool)

(assert (=> b!4538673 (= e!2828240 e!2828241)))

(declare-fun res!1891338 () Bool)

(assert (=> b!4538673 (=> (not res!1891338) (not e!2828241))))

(assert (=> b!4538673 (= res!1891338 ((_ is Cons!50748) (t!357834 (_2!28908 lt!1713093))))))

(declare-fun b!4538674 () Bool)

(assert (=> b!4538674 (= e!2828241 (containsKey!1870 (t!357834 (t!357834 (_2!28908 lt!1713093))) key!3287))))

(assert (= (and d!1402525 (not res!1891337)) b!4538673))

(assert (= (and b!4538673 res!1891338) b!4538674))

(declare-fun m!5303597 () Bool)

(assert (=> b!4538674 m!5303597))

(assert (=> b!4538357 d!1402525))

(declare-fun bs!875400 () Bool)

(declare-fun b!4538679 () Bool)

(assert (= bs!875400 (and b!4538679 d!1402485)))

(declare-fun lambda!175919 () Int)

(assert (=> bs!875400 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713584) (= lambda!175919 lambda!175909))))

(declare-fun bs!875401 () Bool)

(assert (= bs!875401 (and b!4538679 d!1402409)))

(assert (=> bs!875401 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713488) (= lambda!175919 lambda!175888))))

(declare-fun bs!875402 () Bool)

(assert (= bs!875402 (and b!4538679 d!1402523)))

(assert (=> bs!875402 (not (= lambda!175919 lambda!175918))))

(declare-fun bs!875403 () Bool)

(assert (= bs!875403 (and b!4538679 b!4538248)))

(assert (=> bs!875403 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713258) (= lambda!175919 lambda!175837))))

(declare-fun bs!875404 () Bool)

(assert (= bs!875404 (and b!4538679 b!4538501)))

(assert (=> bs!875404 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713493) (= lambda!175919 lambda!175886))))

(declare-fun bs!875405 () Bool)

(assert (= bs!875405 (and b!4538679 d!1402317)))

(assert (=> bs!875405 (not (= lambda!175919 lambda!175860))))

(assert (=> bs!875404 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713095) (= lambda!175919 lambda!175885))))

(declare-fun bs!875406 () Bool)

(assert (= bs!875406 (and b!4538679 b!4538617)))

(assert (=> bs!875406 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713103) (= lambda!175919 lambda!175907))))

(declare-fun bs!875407 () Bool)

(assert (= bs!875407 (and b!4538679 b!4538171)))

(assert (=> bs!875407 (not (= lambda!175919 lambda!175771))))

(assert (=> bs!875403 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713121) (= lambda!175919 lambda!175836))))

(declare-fun bs!875408 () Bool)

(assert (= bs!875408 (and b!4538679 b!4538618)))

(assert (=> bs!875408 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713103) (= lambda!175919 lambda!175906))))

(assert (=> bs!875406 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713589) (= lambda!175919 lambda!175908))))

(declare-fun bs!875409 () Bool)

(assert (= bs!875409 (and b!4538679 b!4538249)))

(assert (=> bs!875409 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713121) (= lambda!175919 lambda!175834))))

(declare-fun bs!875410 () Bool)

(assert (= bs!875410 (and b!4538679 b!4538502)))

(assert (=> bs!875410 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713095) (= lambda!175919 lambda!175883))))

(declare-fun bs!875411 () Bool)

(assert (= bs!875411 (and b!4538679 d!1402229)))

(assert (=> bs!875411 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713253) (= lambda!175919 lambda!175838))))

(assert (=> b!4538679 true))

(declare-fun bs!875412 () Bool)

(declare-fun b!4538678 () Bool)

(assert (= bs!875412 (and b!4538678 d!1402485)))

(declare-fun lambda!175920 () Int)

(assert (=> bs!875412 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713584) (= lambda!175920 lambda!175909))))

(declare-fun bs!875413 () Bool)

(assert (= bs!875413 (and b!4538678 d!1402409)))

(assert (=> bs!875413 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713488) (= lambda!175920 lambda!175888))))

(declare-fun bs!875414 () Bool)

(assert (= bs!875414 (and b!4538678 d!1402523)))

(assert (=> bs!875414 (not (= lambda!175920 lambda!175918))))

(declare-fun bs!875415 () Bool)

(assert (= bs!875415 (and b!4538678 b!4538248)))

(assert (=> bs!875415 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713258) (= lambda!175920 lambda!175837))))

(declare-fun bs!875416 () Bool)

(assert (= bs!875416 (and b!4538678 b!4538501)))

(assert (=> bs!875416 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713493) (= lambda!175920 lambda!175886))))

(declare-fun bs!875417 () Bool)

(assert (= bs!875417 (and b!4538678 d!1402317)))

(assert (=> bs!875417 (not (= lambda!175920 lambda!175860))))

(assert (=> bs!875416 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713095) (= lambda!175920 lambda!175885))))

(declare-fun bs!875418 () Bool)

(assert (= bs!875418 (and b!4538678 b!4538679)))

(assert (=> bs!875418 (= lambda!175920 lambda!175919)))

(declare-fun bs!875419 () Bool)

(assert (= bs!875419 (and b!4538678 b!4538617)))

(assert (=> bs!875419 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713103) (= lambda!175920 lambda!175907))))

(declare-fun bs!875420 () Bool)

(assert (= bs!875420 (and b!4538678 b!4538171)))

(assert (=> bs!875420 (not (= lambda!175920 lambda!175771))))

(assert (=> bs!875415 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713121) (= lambda!175920 lambda!175836))))

(declare-fun bs!875421 () Bool)

(assert (= bs!875421 (and b!4538678 b!4538618)))

(assert (=> bs!875421 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713103) (= lambda!175920 lambda!175906))))

(assert (=> bs!875419 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713589) (= lambda!175920 lambda!175908))))

(declare-fun bs!875422 () Bool)

(assert (= bs!875422 (and b!4538678 b!4538249)))

(assert (=> bs!875422 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713121) (= lambda!175920 lambda!175834))))

(declare-fun bs!875423 () Bool)

(assert (= bs!875423 (and b!4538678 b!4538502)))

(assert (=> bs!875423 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713095) (= lambda!175920 lambda!175883))))

(declare-fun bs!875424 () Bool)

(assert (= bs!875424 (and b!4538678 d!1402229)))

(assert (=> bs!875424 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713253) (= lambda!175920 lambda!175838))))

(assert (=> b!4538678 true))

(declare-fun lambda!175921 () Int)

(declare-fun lt!1713617 () ListMap!3665)

(assert (=> bs!875412 (= (= lt!1713617 lt!1713584) (= lambda!175921 lambda!175909))))

(assert (=> bs!875413 (= (= lt!1713617 lt!1713488) (= lambda!175921 lambda!175888))))

(assert (=> b!4538678 (= (= lt!1713617 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175921 lambda!175920))))

(assert (=> bs!875414 (not (= lambda!175921 lambda!175918))))

(assert (=> bs!875415 (= (= lt!1713617 lt!1713258) (= lambda!175921 lambda!175837))))

(assert (=> bs!875416 (= (= lt!1713617 lt!1713493) (= lambda!175921 lambda!175886))))

(assert (=> bs!875417 (not (= lambda!175921 lambda!175860))))

(assert (=> bs!875416 (= (= lt!1713617 lt!1713095) (= lambda!175921 lambda!175885))))

(assert (=> bs!875418 (= (= lt!1713617 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175921 lambda!175919))))

(assert (=> bs!875419 (= (= lt!1713617 lt!1713103) (= lambda!175921 lambda!175907))))

(assert (=> bs!875420 (not (= lambda!175921 lambda!175771))))

(assert (=> bs!875415 (= (= lt!1713617 lt!1713121) (= lambda!175921 lambda!175836))))

(assert (=> bs!875421 (= (= lt!1713617 lt!1713103) (= lambda!175921 lambda!175906))))

(assert (=> bs!875419 (= (= lt!1713617 lt!1713589) (= lambda!175921 lambda!175908))))

(assert (=> bs!875422 (= (= lt!1713617 lt!1713121) (= lambda!175921 lambda!175834))))

(assert (=> bs!875423 (= (= lt!1713617 lt!1713095) (= lambda!175921 lambda!175883))))

(assert (=> bs!875424 (= (= lt!1713617 lt!1713253) (= lambda!175921 lambda!175838))))

(assert (=> b!4538678 true))

(declare-fun bs!875425 () Bool)

(declare-fun d!1402527 () Bool)

(assert (= bs!875425 (and d!1402527 d!1402485)))

(declare-fun lambda!175922 () Int)

(declare-fun lt!1713612 () ListMap!3665)

(assert (=> bs!875425 (= (= lt!1713612 lt!1713584) (= lambda!175922 lambda!175909))))

(declare-fun bs!875426 () Bool)

(assert (= bs!875426 (and d!1402527 b!4538678)))

(assert (=> bs!875426 (= (= lt!1713612 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175922 lambda!175920))))

(declare-fun bs!875427 () Bool)

(assert (= bs!875427 (and d!1402527 d!1402523)))

(assert (=> bs!875427 (not (= lambda!175922 lambda!175918))))

(declare-fun bs!875428 () Bool)

(assert (= bs!875428 (and d!1402527 b!4538248)))

(assert (=> bs!875428 (= (= lt!1713612 lt!1713258) (= lambda!175922 lambda!175837))))

(declare-fun bs!875429 () Bool)

(assert (= bs!875429 (and d!1402527 b!4538501)))

(assert (=> bs!875429 (= (= lt!1713612 lt!1713493) (= lambda!175922 lambda!175886))))

(declare-fun bs!875430 () Bool)

(assert (= bs!875430 (and d!1402527 d!1402317)))

(assert (=> bs!875430 (not (= lambda!175922 lambda!175860))))

(assert (=> bs!875429 (= (= lt!1713612 lt!1713095) (= lambda!175922 lambda!175885))))

(declare-fun bs!875431 () Bool)

(assert (= bs!875431 (and d!1402527 b!4538679)))

(assert (=> bs!875431 (= (= lt!1713612 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175922 lambda!175919))))

(declare-fun bs!875432 () Bool)

(assert (= bs!875432 (and d!1402527 b!4538617)))

(assert (=> bs!875432 (= (= lt!1713612 lt!1713103) (= lambda!175922 lambda!175907))))

(declare-fun bs!875433 () Bool)

(assert (= bs!875433 (and d!1402527 b!4538171)))

(assert (=> bs!875433 (not (= lambda!175922 lambda!175771))))

(assert (=> bs!875428 (= (= lt!1713612 lt!1713121) (= lambda!175922 lambda!175836))))

(declare-fun bs!875434 () Bool)

(assert (= bs!875434 (and d!1402527 b!4538618)))

(assert (=> bs!875434 (= (= lt!1713612 lt!1713103) (= lambda!175922 lambda!175906))))

(assert (=> bs!875426 (= (= lt!1713612 lt!1713617) (= lambda!175922 lambda!175921))))

(declare-fun bs!875435 () Bool)

(assert (= bs!875435 (and d!1402527 d!1402409)))

(assert (=> bs!875435 (= (= lt!1713612 lt!1713488) (= lambda!175922 lambda!175888))))

(assert (=> bs!875432 (= (= lt!1713612 lt!1713589) (= lambda!175922 lambda!175908))))

(declare-fun bs!875436 () Bool)

(assert (= bs!875436 (and d!1402527 b!4538249)))

(assert (=> bs!875436 (= (= lt!1713612 lt!1713121) (= lambda!175922 lambda!175834))))

(declare-fun bs!875437 () Bool)

(assert (= bs!875437 (and d!1402527 b!4538502)))

(assert (=> bs!875437 (= (= lt!1713612 lt!1713095) (= lambda!175922 lambda!175883))))

(declare-fun bs!875438 () Bool)

(assert (= bs!875438 (and d!1402527 d!1402229)))

(assert (=> bs!875438 (= (= lt!1713612 lt!1713253) (= lambda!175922 lambda!175838))))

(assert (=> d!1402527 true))

(declare-fun bm!316455 () Bool)

(declare-fun call!316460 () Unit!98176)

(assert (=> bm!316455 (= call!316460 (lemmaContainsAllItsOwnKeys!364 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))))))

(declare-fun b!4538675 () Bool)

(declare-fun e!2828242 () Bool)

(assert (=> b!4538675 (= e!2828242 (invariantList!1043 (toList!4403 lt!1713612)))))

(declare-fun call!316462 () Bool)

(declare-fun c!775138 () Bool)

(declare-fun bm!316456 () Bool)

(assert (=> bm!316456 (= call!316462 (forall!10343 (ite c!775138 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (_2!28908 (h!56628 (toList!4404 lt!1713102)))) (ite c!775138 lambda!175919 lambda!175921)))))

(declare-fun b!4538676 () Bool)

(declare-fun res!1891341 () Bool)

(assert (=> b!4538676 (=> (not res!1891341) (not e!2828242))))

(assert (=> b!4538676 (= res!1891341 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) lambda!175922))))

(declare-fun b!4538677 () Bool)

(declare-fun e!2828243 () Bool)

(assert (=> b!4538677 (= e!2828243 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) lambda!175921))))

(declare-fun e!2828244 () ListMap!3665)

(assert (=> b!4538678 (= e!2828244 lt!1713617)))

(declare-fun lt!1713623 () ListMap!3665)

(assert (=> b!4538678 (= lt!1713623 (+!1604 (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713102))))))))

(assert (=> b!4538678 (= lt!1713617 (addToMapMapFromBucket!725 (t!357834 (_2!28908 (h!56628 (toList!4404 lt!1713102)))) (+!1604 (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713102)))))))))

(declare-fun lt!1713616 () Unit!98176)

(assert (=> b!4538678 (= lt!1713616 call!316460)))

(assert (=> b!4538678 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) lambda!175920)))

(declare-fun lt!1713624 () Unit!98176)

(assert (=> b!4538678 (= lt!1713624 lt!1713616)))

(assert (=> b!4538678 (forall!10343 (toList!4403 lt!1713623) lambda!175921)))

(declare-fun lt!1713611 () Unit!98176)

(declare-fun Unit!98264 () Unit!98176)

(assert (=> b!4538678 (= lt!1713611 Unit!98264)))

(declare-fun call!316461 () Bool)

(assert (=> b!4538678 call!316461))

(declare-fun lt!1713622 () Unit!98176)

(declare-fun Unit!98265 () Unit!98176)

(assert (=> b!4538678 (= lt!1713622 Unit!98265)))

(declare-fun lt!1713610 () Unit!98176)

(declare-fun Unit!98266 () Unit!98176)

(assert (=> b!4538678 (= lt!1713610 Unit!98266)))

(declare-fun lt!1713613 () Unit!98176)

(assert (=> b!4538678 (= lt!1713613 (forallContained!2605 (toList!4403 lt!1713623) lambda!175921 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713102))))))))

(assert (=> b!4538678 (contains!13538 lt!1713623 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713102))))))))

(declare-fun lt!1713609 () Unit!98176)

(declare-fun Unit!98267 () Unit!98176)

(assert (=> b!4538678 (= lt!1713609 Unit!98267)))

(assert (=> b!4538678 (contains!13538 lt!1713617 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713102))))))))

(declare-fun lt!1713608 () Unit!98176)

(declare-fun Unit!98268 () Unit!98176)

(assert (=> b!4538678 (= lt!1713608 Unit!98268)))

(assert (=> b!4538678 call!316462))

(declare-fun lt!1713626 () Unit!98176)

(declare-fun Unit!98269 () Unit!98176)

(assert (=> b!4538678 (= lt!1713626 Unit!98269)))

(assert (=> b!4538678 (forall!10343 (toList!4403 lt!1713623) lambda!175921)))

(declare-fun lt!1713618 () Unit!98176)

(declare-fun Unit!98270 () Unit!98176)

(assert (=> b!4538678 (= lt!1713618 Unit!98270)))

(declare-fun lt!1713621 () Unit!98176)

(declare-fun Unit!98271 () Unit!98176)

(assert (=> b!4538678 (= lt!1713621 Unit!98271)))

(declare-fun lt!1713627 () Unit!98176)

(assert (=> b!4538678 (= lt!1713627 (addForallContainsKeyThenBeforeAdding!364 (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713617 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713102))))) (_2!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713102)))))))))

(assert (=> b!4538678 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) lambda!175921)))

(declare-fun lt!1713615 () Unit!98176)

(assert (=> b!4538678 (= lt!1713615 lt!1713627)))

(assert (=> b!4538678 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) lambda!175921)))

(declare-fun lt!1713625 () Unit!98176)

(declare-fun Unit!98272 () Unit!98176)

(assert (=> b!4538678 (= lt!1713625 Unit!98272)))

(declare-fun res!1891340 () Bool)

(assert (=> b!4538678 (= res!1891340 (forall!10343 (_2!28908 (h!56628 (toList!4404 lt!1713102))) lambda!175921))))

(assert (=> b!4538678 (=> (not res!1891340) (not e!2828243))))

(assert (=> b!4538678 e!2828243))

(declare-fun lt!1713607 () Unit!98176)

(declare-fun Unit!98273 () Unit!98176)

(assert (=> b!4538678 (= lt!1713607 Unit!98273)))

(assert (=> b!4538679 (= e!2828244 (extractMap!1254 (t!357835 (toList!4404 lt!1713102))))))

(declare-fun lt!1713620 () Unit!98176)

(assert (=> b!4538679 (= lt!1713620 call!316460)))

(assert (=> b!4538679 call!316461))

(declare-fun lt!1713619 () Unit!98176)

(assert (=> b!4538679 (= lt!1713619 lt!1713620)))

(assert (=> b!4538679 call!316462))

(declare-fun lt!1713614 () Unit!98176)

(declare-fun Unit!98274 () Unit!98176)

(assert (=> b!4538679 (= lt!1713614 Unit!98274)))

(declare-fun bm!316457 () Bool)

(assert (=> bm!316457 (= call!316461 (forall!10343 (ite c!775138 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (t!357834 (_2!28908 (h!56628 (toList!4404 lt!1713102))))) (ite c!775138 lambda!175919 lambda!175921)))))

(assert (=> d!1402527 e!2828242))

(declare-fun res!1891339 () Bool)

(assert (=> d!1402527 (=> (not res!1891339) (not e!2828242))))

(assert (=> d!1402527 (= res!1891339 (forall!10343 (_2!28908 (h!56628 (toList!4404 lt!1713102))) lambda!175922))))

(assert (=> d!1402527 (= lt!1713612 e!2828244)))

(assert (=> d!1402527 (= c!775138 ((_ is Nil!50748) (_2!28908 (h!56628 (toList!4404 lt!1713102)))))))

(assert (=> d!1402527 (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lt!1713102))))))

(assert (=> d!1402527 (= (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 lt!1713102))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) lt!1713612)))

(assert (= (and d!1402527 c!775138) b!4538679))

(assert (= (and d!1402527 (not c!775138)) b!4538678))

(assert (= (and b!4538678 res!1891340) b!4538677))

(assert (= (or b!4538679 b!4538678) bm!316456))

(assert (= (or b!4538679 b!4538678) bm!316457))

(assert (= (or b!4538679 b!4538678) bm!316455))

(assert (= (and d!1402527 res!1891339) b!4538676))

(assert (= (and b!4538676 res!1891341) b!4538675))

(declare-fun m!5303599 () Bool)

(assert (=> bm!316457 m!5303599))

(declare-fun m!5303601 () Bool)

(assert (=> b!4538678 m!5303601))

(assert (=> b!4538678 m!5303033))

(declare-fun m!5303603 () Bool)

(assert (=> b!4538678 m!5303603))

(declare-fun m!5303605 () Bool)

(assert (=> b!4538678 m!5303605))

(declare-fun m!5303607 () Bool)

(assert (=> b!4538678 m!5303607))

(assert (=> b!4538678 m!5303601))

(assert (=> b!4538678 m!5303607))

(declare-fun m!5303609 () Bool)

(assert (=> b!4538678 m!5303609))

(declare-fun m!5303611 () Bool)

(assert (=> b!4538678 m!5303611))

(declare-fun m!5303613 () Bool)

(assert (=> b!4538678 m!5303613))

(declare-fun m!5303615 () Bool)

(assert (=> b!4538678 m!5303615))

(assert (=> b!4538678 m!5303603))

(declare-fun m!5303617 () Bool)

(assert (=> b!4538678 m!5303617))

(assert (=> b!4538678 m!5303033))

(declare-fun m!5303619 () Bool)

(assert (=> b!4538678 m!5303619))

(declare-fun m!5303621 () Bool)

(assert (=> d!1402527 m!5303621))

(declare-fun m!5303623 () Bool)

(assert (=> d!1402527 m!5303623))

(declare-fun m!5303625 () Bool)

(assert (=> b!4538676 m!5303625))

(declare-fun m!5303627 () Bool)

(assert (=> b!4538675 m!5303627))

(declare-fun m!5303629 () Bool)

(assert (=> bm!316456 m!5303629))

(assert (=> bm!316455 m!5303033))

(declare-fun m!5303631 () Bool)

(assert (=> bm!316455 m!5303631))

(assert (=> b!4538677 m!5303607))

(assert (=> b!4538402 d!1402527))

(declare-fun bs!875439 () Bool)

(declare-fun d!1402529 () Bool)

(assert (= bs!875439 (and d!1402529 start!450372)))

(declare-fun lambda!175923 () Int)

(assert (=> bs!875439 (= lambda!175923 lambda!175769)))

(declare-fun bs!875440 () Bool)

(assert (= bs!875440 (and d!1402529 d!1402275)))

(assert (=> bs!875440 (= lambda!175923 lambda!175846)))

(declare-fun bs!875441 () Bool)

(assert (= bs!875441 (and d!1402529 b!4538171)))

(assert (=> bs!875441 (not (= lambda!175923 lambda!175770))))

(declare-fun bs!875442 () Bool)

(assert (= bs!875442 (and d!1402529 d!1402349)))

(assert (=> bs!875442 (= lambda!175923 lambda!175870)))

(declare-fun bs!875443 () Bool)

(assert (= bs!875443 (and d!1402529 d!1402353)))

(assert (=> bs!875443 (= lambda!175923 lambda!175879)))

(declare-fun bs!875444 () Bool)

(assert (= bs!875444 (and d!1402529 d!1402303)))

(assert (=> bs!875444 (= lambda!175923 lambda!175857)))

(declare-fun bs!875445 () Bool)

(assert (= bs!875445 (and d!1402529 d!1402471)))

(assert (=> bs!875445 (= lambda!175923 lambda!175901)))

(declare-fun bs!875446 () Bool)

(assert (= bs!875446 (and d!1402529 d!1402475)))

(assert (=> bs!875446 (= lambda!175923 lambda!175905)))

(declare-fun bs!875447 () Bool)

(assert (= bs!875447 (and d!1402529 d!1402455)))

(assert (=> bs!875447 (not (= lambda!175923 lambda!175900))))

(declare-fun bs!875448 () Bool)

(assert (= bs!875448 (and d!1402529 d!1402253)))

(assert (=> bs!875448 (= lambda!175923 lambda!175843)))

(declare-fun bs!875449 () Bool)

(assert (= bs!875449 (and d!1402529 d!1402421)))

(assert (=> bs!875449 (= lambda!175923 lambda!175894)))

(declare-fun bs!875450 () Bool)

(assert (= bs!875450 (and d!1402529 d!1402473)))

(assert (=> bs!875450 (= lambda!175923 lambda!175902)))

(declare-fun bs!875451 () Bool)

(assert (= bs!875451 (and d!1402529 d!1402289)))

(assert (=> bs!875451 (= lambda!175923 lambda!175853)))

(declare-fun bs!875452 () Bool)

(assert (= bs!875452 (and d!1402529 d!1402345)))

(assert (=> bs!875452 (= lambda!175923 lambda!175867)))

(declare-fun lt!1713628 () ListMap!3665)

(assert (=> d!1402529 (invariantList!1043 (toList!4403 lt!1713628))))

(declare-fun e!2828245 () ListMap!3665)

(assert (=> d!1402529 (= lt!1713628 e!2828245)))

(declare-fun c!775139 () Bool)

(assert (=> d!1402529 (= c!775139 ((_ is Cons!50749) (t!357835 (toList!4404 lt!1713102))))))

(assert (=> d!1402529 (forall!10341 (t!357835 (toList!4404 lt!1713102)) lambda!175923)))

(assert (=> d!1402529 (= (extractMap!1254 (t!357835 (toList!4404 lt!1713102))) lt!1713628)))

(declare-fun b!4538680 () Bool)

(assert (=> b!4538680 (= e!2828245 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (t!357835 (toList!4404 lt!1713102)))) (extractMap!1254 (t!357835 (t!357835 (toList!4404 lt!1713102))))))))

(declare-fun b!4538681 () Bool)

(assert (=> b!4538681 (= e!2828245 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402529 c!775139) b!4538680))

(assert (= (and d!1402529 (not c!775139)) b!4538681))

(declare-fun m!5303633 () Bool)

(assert (=> d!1402529 m!5303633))

(declare-fun m!5303635 () Bool)

(assert (=> d!1402529 m!5303635))

(declare-fun m!5303637 () Bool)

(assert (=> b!4538680 m!5303637))

(assert (=> b!4538680 m!5303637))

(declare-fun m!5303639 () Bool)

(assert (=> b!4538680 m!5303639))

(assert (=> b!4538402 d!1402529))

(declare-fun bs!875453 () Bool)

(declare-fun b!4538686 () Bool)

(assert (= bs!875453 (and b!4538686 d!1402485)))

(declare-fun lambda!175924 () Int)

(assert (=> bs!875453 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713584) (= lambda!175924 lambda!175909))))

(declare-fun bs!875454 () Bool)

(assert (= bs!875454 (and b!4538686 d!1402523)))

(assert (=> bs!875454 (not (= lambda!175924 lambda!175918))))

(declare-fun bs!875455 () Bool)

(assert (= bs!875455 (and b!4538686 b!4538248)))

(assert (=> bs!875455 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713258) (= lambda!175924 lambda!175837))))

(declare-fun bs!875456 () Bool)

(assert (= bs!875456 (and b!4538686 b!4538501)))

(assert (=> bs!875456 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713493) (= lambda!175924 lambda!175886))))

(declare-fun bs!875457 () Bool)

(assert (= bs!875457 (and b!4538686 d!1402317)))

(assert (=> bs!875457 (not (= lambda!175924 lambda!175860))))

(assert (=> bs!875456 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!175924 lambda!175885))))

(declare-fun bs!875458 () Bool)

(assert (= bs!875458 (and b!4538686 b!4538679)))

(assert (=> bs!875458 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175924 lambda!175919))))

(declare-fun bs!875459 () Bool)

(assert (= bs!875459 (and b!4538686 b!4538617)))

(assert (=> bs!875459 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!175924 lambda!175907))))

(declare-fun bs!875460 () Bool)

(assert (= bs!875460 (and b!4538686 b!4538171)))

(assert (=> bs!875460 (not (= lambda!175924 lambda!175771))))

(assert (=> bs!875455 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175924 lambda!175836))))

(declare-fun bs!875461 () Bool)

(assert (= bs!875461 (and b!4538686 b!4538618)))

(assert (=> bs!875461 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!175924 lambda!175906))))

(declare-fun bs!875462 () Bool)

(assert (= bs!875462 (and b!4538686 b!4538678)))

(assert (=> bs!875462 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713617) (= lambda!175924 lambda!175921))))

(declare-fun bs!875463 () Bool)

(assert (= bs!875463 (and b!4538686 d!1402409)))

(assert (=> bs!875463 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713488) (= lambda!175924 lambda!175888))))

(assert (=> bs!875462 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175924 lambda!175920))))

(declare-fun bs!875464 () Bool)

(assert (= bs!875464 (and b!4538686 d!1402527)))

(assert (=> bs!875464 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713612) (= lambda!175924 lambda!175922))))

(assert (=> bs!875459 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!175924 lambda!175908))))

(declare-fun bs!875465 () Bool)

(assert (= bs!875465 (and b!4538686 b!4538249)))

(assert (=> bs!875465 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175924 lambda!175834))))

(declare-fun bs!875466 () Bool)

(assert (= bs!875466 (and b!4538686 b!4538502)))

(assert (=> bs!875466 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!175924 lambda!175883))))

(declare-fun bs!875467 () Bool)

(assert (= bs!875467 (and b!4538686 d!1402229)))

(assert (=> bs!875467 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713253) (= lambda!175924 lambda!175838))))

(assert (=> b!4538686 true))

(declare-fun bs!875468 () Bool)

(declare-fun b!4538685 () Bool)

(assert (= bs!875468 (and b!4538685 d!1402485)))

(declare-fun lambda!175925 () Int)

(assert (=> bs!875468 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713584) (= lambda!175925 lambda!175909))))

(declare-fun bs!875469 () Bool)

(assert (= bs!875469 (and b!4538685 d!1402523)))

(assert (=> bs!875469 (not (= lambda!175925 lambda!175918))))

(declare-fun bs!875470 () Bool)

(assert (= bs!875470 (and b!4538685 b!4538248)))

(assert (=> bs!875470 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713258) (= lambda!175925 lambda!175837))))

(declare-fun bs!875471 () Bool)

(assert (= bs!875471 (and b!4538685 b!4538501)))

(assert (=> bs!875471 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713493) (= lambda!175925 lambda!175886))))

(declare-fun bs!875472 () Bool)

(assert (= bs!875472 (and b!4538685 d!1402317)))

(assert (=> bs!875472 (not (= lambda!175925 lambda!175860))))

(assert (=> bs!875471 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!175925 lambda!175885))))

(declare-fun bs!875473 () Bool)

(assert (= bs!875473 (and b!4538685 b!4538679)))

(assert (=> bs!875473 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175925 lambda!175919))))

(declare-fun bs!875474 () Bool)

(assert (= bs!875474 (and b!4538685 b!4538617)))

(assert (=> bs!875474 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!175925 lambda!175907))))

(declare-fun bs!875475 () Bool)

(assert (= bs!875475 (and b!4538685 b!4538171)))

(assert (=> bs!875475 (not (= lambda!175925 lambda!175771))))

(assert (=> bs!875470 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175925 lambda!175836))))

(declare-fun bs!875476 () Bool)

(assert (= bs!875476 (and b!4538685 b!4538686)))

(assert (=> bs!875476 (= lambda!175925 lambda!175924)))

(declare-fun bs!875477 () Bool)

(assert (= bs!875477 (and b!4538685 b!4538618)))

(assert (=> bs!875477 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!175925 lambda!175906))))

(declare-fun bs!875478 () Bool)

(assert (= bs!875478 (and b!4538685 b!4538678)))

(assert (=> bs!875478 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713617) (= lambda!175925 lambda!175921))))

(declare-fun bs!875479 () Bool)

(assert (= bs!875479 (and b!4538685 d!1402409)))

(assert (=> bs!875479 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713488) (= lambda!175925 lambda!175888))))

(assert (=> bs!875478 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175925 lambda!175920))))

(declare-fun bs!875480 () Bool)

(assert (= bs!875480 (and b!4538685 d!1402527)))

(assert (=> bs!875480 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713612) (= lambda!175925 lambda!175922))))

(assert (=> bs!875474 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!175925 lambda!175908))))

(declare-fun bs!875481 () Bool)

(assert (= bs!875481 (and b!4538685 b!4538249)))

(assert (=> bs!875481 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175925 lambda!175834))))

(declare-fun bs!875482 () Bool)

(assert (= bs!875482 (and b!4538685 b!4538502)))

(assert (=> bs!875482 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!175925 lambda!175883))))

(declare-fun bs!875483 () Bool)

(assert (= bs!875483 (and b!4538685 d!1402229)))

(assert (=> bs!875483 (= (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713253) (= lambda!175925 lambda!175838))))

(assert (=> b!4538685 true))

(declare-fun lambda!175926 () Int)

(declare-fun lt!1713639 () ListMap!3665)

(assert (=> bs!875468 (= (= lt!1713639 lt!1713584) (= lambda!175926 lambda!175909))))

(assert (=> b!4538685 (= (= lt!1713639 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175926 lambda!175925))))

(assert (=> bs!875469 (not (= lambda!175926 lambda!175918))))

(assert (=> bs!875470 (= (= lt!1713639 lt!1713258) (= lambda!175926 lambda!175837))))

(assert (=> bs!875471 (= (= lt!1713639 lt!1713493) (= lambda!175926 lambda!175886))))

(assert (=> bs!875472 (not (= lambda!175926 lambda!175860))))

(assert (=> bs!875471 (= (= lt!1713639 lt!1713095) (= lambda!175926 lambda!175885))))

(assert (=> bs!875473 (= (= lt!1713639 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175926 lambda!175919))))

(assert (=> bs!875474 (= (= lt!1713639 lt!1713103) (= lambda!175926 lambda!175907))))

(assert (=> bs!875475 (not (= lambda!175926 lambda!175771))))

(assert (=> bs!875470 (= (= lt!1713639 lt!1713121) (= lambda!175926 lambda!175836))))

(assert (=> bs!875476 (= (= lt!1713639 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175926 lambda!175924))))

(assert (=> bs!875477 (= (= lt!1713639 lt!1713103) (= lambda!175926 lambda!175906))))

(assert (=> bs!875478 (= (= lt!1713639 lt!1713617) (= lambda!175926 lambda!175921))))

(assert (=> bs!875479 (= (= lt!1713639 lt!1713488) (= lambda!175926 lambda!175888))))

(assert (=> bs!875478 (= (= lt!1713639 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175926 lambda!175920))))

(assert (=> bs!875480 (= (= lt!1713639 lt!1713612) (= lambda!175926 lambda!175922))))

(assert (=> bs!875474 (= (= lt!1713639 lt!1713589) (= lambda!175926 lambda!175908))))

(assert (=> bs!875481 (= (= lt!1713639 lt!1713121) (= lambda!175926 lambda!175834))))

(assert (=> bs!875482 (= (= lt!1713639 lt!1713095) (= lambda!175926 lambda!175883))))

(assert (=> bs!875483 (= (= lt!1713639 lt!1713253) (= lambda!175926 lambda!175838))))

(assert (=> b!4538685 true))

(declare-fun bs!875484 () Bool)

(declare-fun d!1402531 () Bool)

(assert (= bs!875484 (and d!1402531 d!1402485)))

(declare-fun lt!1713634 () ListMap!3665)

(declare-fun lambda!175927 () Int)

(assert (=> bs!875484 (= (= lt!1713634 lt!1713584) (= lambda!175927 lambda!175909))))

(declare-fun bs!875485 () Bool)

(assert (= bs!875485 (and d!1402531 b!4538685)))

(assert (=> bs!875485 (= (= lt!1713634 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175927 lambda!175925))))

(declare-fun bs!875486 () Bool)

(assert (= bs!875486 (and d!1402531 d!1402523)))

(assert (=> bs!875486 (not (= lambda!175927 lambda!175918))))

(declare-fun bs!875487 () Bool)

(assert (= bs!875487 (and d!1402531 b!4538248)))

(assert (=> bs!875487 (= (= lt!1713634 lt!1713258) (= lambda!175927 lambda!175837))))

(declare-fun bs!875488 () Bool)

(assert (= bs!875488 (and d!1402531 b!4538501)))

(assert (=> bs!875488 (= (= lt!1713634 lt!1713493) (= lambda!175927 lambda!175886))))

(declare-fun bs!875489 () Bool)

(assert (= bs!875489 (and d!1402531 d!1402317)))

(assert (=> bs!875489 (not (= lambda!175927 lambda!175860))))

(assert (=> bs!875485 (= (= lt!1713634 lt!1713639) (= lambda!175927 lambda!175926))))

(assert (=> bs!875488 (= (= lt!1713634 lt!1713095) (= lambda!175927 lambda!175885))))

(declare-fun bs!875490 () Bool)

(assert (= bs!875490 (and d!1402531 b!4538679)))

(assert (=> bs!875490 (= (= lt!1713634 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175927 lambda!175919))))

(declare-fun bs!875491 () Bool)

(assert (= bs!875491 (and d!1402531 b!4538617)))

(assert (=> bs!875491 (= (= lt!1713634 lt!1713103) (= lambda!175927 lambda!175907))))

(declare-fun bs!875492 () Bool)

(assert (= bs!875492 (and d!1402531 b!4538171)))

(assert (=> bs!875492 (not (= lambda!175927 lambda!175771))))

(assert (=> bs!875487 (= (= lt!1713634 lt!1713121) (= lambda!175927 lambda!175836))))

(declare-fun bs!875493 () Bool)

(assert (= bs!875493 (and d!1402531 b!4538686)))

(assert (=> bs!875493 (= (= lt!1713634 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175927 lambda!175924))))

(declare-fun bs!875494 () Bool)

(assert (= bs!875494 (and d!1402531 b!4538618)))

(assert (=> bs!875494 (= (= lt!1713634 lt!1713103) (= lambda!175927 lambda!175906))))

(declare-fun bs!875495 () Bool)

(assert (= bs!875495 (and d!1402531 b!4538678)))

(assert (=> bs!875495 (= (= lt!1713634 lt!1713617) (= lambda!175927 lambda!175921))))

(declare-fun bs!875496 () Bool)

(assert (= bs!875496 (and d!1402531 d!1402409)))

(assert (=> bs!875496 (= (= lt!1713634 lt!1713488) (= lambda!175927 lambda!175888))))

(assert (=> bs!875495 (= (= lt!1713634 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175927 lambda!175920))))

(declare-fun bs!875497 () Bool)

(assert (= bs!875497 (and d!1402531 d!1402527)))

(assert (=> bs!875497 (= (= lt!1713634 lt!1713612) (= lambda!175927 lambda!175922))))

(assert (=> bs!875491 (= (= lt!1713634 lt!1713589) (= lambda!175927 lambda!175908))))

(declare-fun bs!875498 () Bool)

(assert (= bs!875498 (and d!1402531 b!4538249)))

(assert (=> bs!875498 (= (= lt!1713634 lt!1713121) (= lambda!175927 lambda!175834))))

(declare-fun bs!875499 () Bool)

(assert (= bs!875499 (and d!1402531 b!4538502)))

(assert (=> bs!875499 (= (= lt!1713634 lt!1713095) (= lambda!175927 lambda!175883))))

(declare-fun bs!875500 () Bool)

(assert (= bs!875500 (and d!1402531 d!1402229)))

(assert (=> bs!875500 (= (= lt!1713634 lt!1713253) (= lambda!175927 lambda!175838))))

(assert (=> d!1402531 true))

(declare-fun bm!316458 () Bool)

(declare-fun call!316463 () Unit!98176)

(assert (=> bm!316458 (= call!316463 (lemmaContainsAllItsOwnKeys!364 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun b!4538682 () Bool)

(declare-fun e!2828246 () Bool)

(assert (=> b!4538682 (= e!2828246 (invariantList!1043 (toList!4403 lt!1713634)))))

(declare-fun c!775140 () Bool)

(declare-fun bm!316459 () Bool)

(declare-fun call!316465 () Bool)

(assert (=> bm!316459 (= call!316465 (forall!10343 (ite c!775140 (toList!4403 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (t!357834 (_2!28908 lt!1713093))) (ite c!775140 lambda!175924 lambda!175926)))))

(declare-fun b!4538683 () Bool)

(declare-fun res!1891344 () Bool)

(assert (=> b!4538683 (=> (not res!1891344) (not e!2828246))))

(assert (=> b!4538683 (= res!1891344 (forall!10343 (toList!4403 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) lambda!175927))))

(declare-fun b!4538684 () Bool)

(declare-fun e!2828247 () Bool)

(assert (=> b!4538684 (= e!2828247 (forall!10343 (toList!4403 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) lambda!175926))))

(declare-fun e!2828248 () ListMap!3665)

(assert (=> b!4538685 (= e!2828248 lt!1713639)))

(declare-fun lt!1713645 () ListMap!3665)

(assert (=> b!4538685 (= lt!1713645 (+!1604 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> b!4538685 (= lt!1713639 (addToMapMapFromBucket!725 (t!357834 (t!357834 (_2!28908 lt!1713093))) (+!1604 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) (h!56627 (t!357834 (_2!28908 lt!1713093))))))))

(declare-fun lt!1713638 () Unit!98176)

(assert (=> b!4538685 (= lt!1713638 call!316463)))

(assert (=> b!4538685 (forall!10343 (toList!4403 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) lambda!175925)))

(declare-fun lt!1713646 () Unit!98176)

(assert (=> b!4538685 (= lt!1713646 lt!1713638)))

(assert (=> b!4538685 (forall!10343 (toList!4403 lt!1713645) lambda!175926)))

(declare-fun lt!1713633 () Unit!98176)

(declare-fun Unit!98275 () Unit!98176)

(assert (=> b!4538685 (= lt!1713633 Unit!98275)))

(declare-fun call!316464 () Bool)

(assert (=> b!4538685 call!316464))

(declare-fun lt!1713644 () Unit!98176)

(declare-fun Unit!98276 () Unit!98176)

(assert (=> b!4538685 (= lt!1713644 Unit!98276)))

(declare-fun lt!1713632 () Unit!98176)

(declare-fun Unit!98277 () Unit!98176)

(assert (=> b!4538685 (= lt!1713632 Unit!98277)))

(declare-fun lt!1713635 () Unit!98176)

(assert (=> b!4538685 (= lt!1713635 (forallContained!2605 (toList!4403 lt!1713645) lambda!175926 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> b!4538685 (contains!13538 lt!1713645 (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713631 () Unit!98176)

(declare-fun Unit!98278 () Unit!98176)

(assert (=> b!4538685 (= lt!1713631 Unit!98278)))

(assert (=> b!4538685 (contains!13538 lt!1713639 (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713630 () Unit!98176)

(declare-fun Unit!98279 () Unit!98176)

(assert (=> b!4538685 (= lt!1713630 Unit!98279)))

(assert (=> b!4538685 call!316465))

(declare-fun lt!1713648 () Unit!98176)

(declare-fun Unit!98280 () Unit!98176)

(assert (=> b!4538685 (= lt!1713648 Unit!98280)))

(assert (=> b!4538685 (forall!10343 (toList!4403 lt!1713645) lambda!175926)))

(declare-fun lt!1713640 () Unit!98176)

(declare-fun Unit!98281 () Unit!98176)

(assert (=> b!4538685 (= lt!1713640 Unit!98281)))

(declare-fun lt!1713643 () Unit!98176)

(declare-fun Unit!98282 () Unit!98176)

(assert (=> b!4538685 (= lt!1713643 Unit!98282)))

(declare-fun lt!1713649 () Unit!98176)

(assert (=> b!4538685 (= lt!1713649 (addForallContainsKeyThenBeforeAdding!364 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713639 (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))) (_2!28907 (h!56627 (t!357834 (_2!28908 lt!1713093))))))))

(assert (=> b!4538685 (forall!10343 (toList!4403 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) lambda!175926)))

(declare-fun lt!1713637 () Unit!98176)

(assert (=> b!4538685 (= lt!1713637 lt!1713649)))

(assert (=> b!4538685 (forall!10343 (toList!4403 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) lambda!175926)))

(declare-fun lt!1713647 () Unit!98176)

(declare-fun Unit!98283 () Unit!98176)

(assert (=> b!4538685 (= lt!1713647 Unit!98283)))

(declare-fun res!1891343 () Bool)

(assert (=> b!4538685 (= res!1891343 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!175926))))

(assert (=> b!4538685 (=> (not res!1891343) (not e!2828247))))

(assert (=> b!4538685 e!2828247))

(declare-fun lt!1713629 () Unit!98176)

(declare-fun Unit!98284 () Unit!98176)

(assert (=> b!4538685 (= lt!1713629 Unit!98284)))

(assert (=> b!4538686 (= e!2828248 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1713642 () Unit!98176)

(assert (=> b!4538686 (= lt!1713642 call!316463)))

(assert (=> b!4538686 call!316464))

(declare-fun lt!1713641 () Unit!98176)

(assert (=> b!4538686 (= lt!1713641 lt!1713642)))

(assert (=> b!4538686 call!316465))

(declare-fun lt!1713636 () Unit!98176)

(declare-fun Unit!98286 () Unit!98176)

(assert (=> b!4538686 (= lt!1713636 Unit!98286)))

(declare-fun bm!316460 () Bool)

(assert (=> bm!316460 (= call!316464 (forall!10343 (ite c!775140 (toList!4403 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (t!357834 (t!357834 (_2!28908 lt!1713093)))) (ite c!775140 lambda!175924 lambda!175926)))))

(assert (=> d!1402531 e!2828246))

(declare-fun res!1891342 () Bool)

(assert (=> d!1402531 (=> (not res!1891342) (not e!2828246))))

(assert (=> d!1402531 (= res!1891342 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!175927))))

(assert (=> d!1402531 (= lt!1713634 e!2828248)))

(assert (=> d!1402531 (= c!775140 ((_ is Nil!50748) (t!357834 (_2!28908 lt!1713093))))))

(assert (=> d!1402531 (noDuplicateKeys!1198 (t!357834 (_2!28908 lt!1713093)))))

(assert (=> d!1402531 (= (addToMapMapFromBucket!725 (t!357834 (_2!28908 lt!1713093)) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) lt!1713634)))

(assert (= (and d!1402531 c!775140) b!4538686))

(assert (= (and d!1402531 (not c!775140)) b!4538685))

(assert (= (and b!4538685 res!1891343) b!4538684))

(assert (= (or b!4538686 b!4538685) bm!316459))

(assert (= (or b!4538686 b!4538685) bm!316460))

(assert (= (or b!4538686 b!4538685) bm!316458))

(assert (= (and d!1402531 res!1891342) b!4538683))

(assert (= (and b!4538683 res!1891344) b!4538682))

(declare-fun m!5303641 () Bool)

(assert (=> bm!316460 m!5303641))

(declare-fun m!5303643 () Bool)

(assert (=> b!4538685 m!5303643))

(assert (=> b!4538685 m!5303493))

(declare-fun m!5303645 () Bool)

(assert (=> b!4538685 m!5303645))

(declare-fun m!5303647 () Bool)

(assert (=> b!4538685 m!5303647))

(declare-fun m!5303649 () Bool)

(assert (=> b!4538685 m!5303649))

(assert (=> b!4538685 m!5303643))

(assert (=> b!4538685 m!5303649))

(declare-fun m!5303651 () Bool)

(assert (=> b!4538685 m!5303651))

(declare-fun m!5303653 () Bool)

(assert (=> b!4538685 m!5303653))

(declare-fun m!5303655 () Bool)

(assert (=> b!4538685 m!5303655))

(declare-fun m!5303657 () Bool)

(assert (=> b!4538685 m!5303657))

(assert (=> b!4538685 m!5303645))

(declare-fun m!5303659 () Bool)

(assert (=> b!4538685 m!5303659))

(assert (=> b!4538685 m!5303493))

(declare-fun m!5303661 () Bool)

(assert (=> b!4538685 m!5303661))

(declare-fun m!5303663 () Bool)

(assert (=> d!1402531 m!5303663))

(assert (=> d!1402531 m!5302905))

(declare-fun m!5303665 () Bool)

(assert (=> b!4538683 m!5303665))

(declare-fun m!5303667 () Bool)

(assert (=> b!4538682 m!5303667))

(declare-fun m!5303669 () Bool)

(assert (=> bm!316459 m!5303669))

(assert (=> bm!316458 m!5303493))

(declare-fun m!5303671 () Bool)

(assert (=> bm!316458 m!5303671))

(assert (=> b!4538684 m!5303649))

(assert (=> b!4538617 d!1402531))

(declare-fun d!1402533 () Bool)

(declare-fun e!2828251 () Bool)

(assert (=> d!1402533 e!2828251))

(declare-fun res!1891350 () Bool)

(assert (=> d!1402533 (=> (not res!1891350) (not e!2828251))))

(declare-fun lt!1713661 () ListMap!3665)

(assert (=> d!1402533 (= res!1891350 (contains!13538 lt!1713661 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713659 () List!50872)

(assert (=> d!1402533 (= lt!1713661 (ListMap!3666 lt!1713659))))

(declare-fun lt!1713658 () Unit!98176)

(declare-fun lt!1713660 () Unit!98176)

(assert (=> d!1402533 (= lt!1713658 lt!1713660)))

(assert (=> d!1402533 (= (getValueByKey!1144 lt!1713659 (_1!28907 (h!56627 (_2!28908 lt!1713093)))) (Some!11199 (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!719 (List!50872 K!12135 V!12381) Unit!98176)

(assert (=> d!1402533 (= lt!1713660 (lemmaContainsTupThenGetReturnValue!719 lt!1713659 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun insertNoDuplicatedKeys!293 (List!50872 K!12135 V!12381) List!50872)

(assert (=> d!1402533 (= lt!1713659 (insertNoDuplicatedKeys!293 (toList!4403 lt!1713103) (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402533 (= (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093))) lt!1713661)))

(declare-fun b!4538691 () Bool)

(declare-fun res!1891349 () Bool)

(assert (=> b!4538691 (=> (not res!1891349) (not e!2828251))))

(assert (=> b!4538691 (= res!1891349 (= (getValueByKey!1144 (toList!4403 lt!1713661) (_1!28907 (h!56627 (_2!28908 lt!1713093)))) (Some!11199 (_2!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4538692 () Bool)

(assert (=> b!4538692 (= e!2828251 (contains!13542 (toList!4403 lt!1713661) (h!56627 (_2!28908 lt!1713093))))))

(assert (= (and d!1402533 res!1891350) b!4538691))

(assert (= (and b!4538691 res!1891349) b!4538692))

(declare-fun m!5303673 () Bool)

(assert (=> d!1402533 m!5303673))

(declare-fun m!5303675 () Bool)

(assert (=> d!1402533 m!5303675))

(declare-fun m!5303677 () Bool)

(assert (=> d!1402533 m!5303677))

(declare-fun m!5303679 () Bool)

(assert (=> d!1402533 m!5303679))

(declare-fun m!5303681 () Bool)

(assert (=> b!4538691 m!5303681))

(declare-fun m!5303683 () Bool)

(assert (=> b!4538692 m!5303683))

(assert (=> b!4538617 d!1402533))

(declare-fun d!1402535 () Bool)

(declare-fun res!1891355 () Bool)

(declare-fun e!2828256 () Bool)

(assert (=> d!1402535 (=> res!1891355 e!2828256)))

(assert (=> d!1402535 (= res!1891355 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1402535 (= (forall!10343 (_2!28908 lt!1713093) lambda!175908) e!2828256)))

(declare-fun b!4538697 () Bool)

(declare-fun e!2828257 () Bool)

(assert (=> b!4538697 (= e!2828256 e!2828257)))

(declare-fun res!1891356 () Bool)

(assert (=> b!4538697 (=> (not res!1891356) (not e!2828257))))

(assert (=> b!4538697 (= res!1891356 (dynLambda!21212 lambda!175908 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun b!4538698 () Bool)

(assert (=> b!4538698 (= e!2828257 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!175908))))

(assert (= (and d!1402535 (not res!1891355)) b!4538697))

(assert (= (and b!4538697 res!1891356) b!4538698))

(declare-fun b_lambda!157701 () Bool)

(assert (=> (not b_lambda!157701) (not b!4538697)))

(declare-fun m!5303685 () Bool)

(assert (=> b!4538697 m!5303685))

(declare-fun m!5303687 () Bool)

(assert (=> b!4538698 m!5303687))

(assert (=> b!4538617 d!1402535))

(declare-fun d!1402537 () Bool)

(declare-fun res!1891357 () Bool)

(declare-fun e!2828258 () Bool)

(assert (=> d!1402537 (=> res!1891357 e!2828258)))

(assert (=> d!1402537 (= res!1891357 ((_ is Nil!50748) (toList!4403 lt!1713103)))))

(assert (=> d!1402537 (= (forall!10343 (toList!4403 lt!1713103) lambda!175908) e!2828258)))

(declare-fun b!4538699 () Bool)

(declare-fun e!2828259 () Bool)

(assert (=> b!4538699 (= e!2828258 e!2828259)))

(declare-fun res!1891358 () Bool)

(assert (=> b!4538699 (=> (not res!1891358) (not e!2828259))))

(assert (=> b!4538699 (= res!1891358 (dynLambda!21212 lambda!175908 (h!56627 (toList!4403 lt!1713103))))))

(declare-fun b!4538700 () Bool)

(assert (=> b!4538700 (= e!2828259 (forall!10343 (t!357834 (toList!4403 lt!1713103)) lambda!175908))))

(assert (= (and d!1402537 (not res!1891357)) b!4538699))

(assert (= (and b!4538699 res!1891358) b!4538700))

(declare-fun b_lambda!157703 () Bool)

(assert (=> (not b_lambda!157703) (not b!4538699)))

(declare-fun m!5303689 () Bool)

(assert (=> b!4538699 m!5303689))

(declare-fun m!5303691 () Bool)

(assert (=> b!4538700 m!5303691))

(assert (=> b!4538617 d!1402537))

(declare-fun b!4538701 () Bool)

(declare-fun e!2828260 () Bool)

(assert (=> b!4538701 (= e!2828260 (not (contains!13540 (keys!17658 lt!1713595) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun bm!316461 () Bool)

(declare-fun call!316466 () Bool)

(declare-fun e!2828265 () List!50875)

(assert (=> bm!316461 (= call!316466 (contains!13540 e!2828265 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun c!775141 () Bool)

(declare-fun c!775143 () Bool)

(assert (=> bm!316461 (= c!775141 c!775143)))

(declare-fun b!4538702 () Bool)

(declare-fun e!2828263 () Bool)

(assert (=> b!4538702 (= e!2828263 (contains!13540 (keys!17658 lt!1713595) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun b!4538703 () Bool)

(declare-fun e!2828261 () Bool)

(assert (=> b!4538703 (= e!2828261 e!2828263)))

(declare-fun res!1891361 () Bool)

(assert (=> b!4538703 (=> (not res!1891361) (not e!2828263))))

(assert (=> b!4538703 (= res!1891361 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713595) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4538704 () Bool)

(declare-fun e!2828264 () Unit!98176)

(declare-fun Unit!98287 () Unit!98176)

(assert (=> b!4538704 (= e!2828264 Unit!98287)))

(declare-fun b!4538705 () Bool)

(declare-fun e!2828262 () Unit!98176)

(assert (=> b!4538705 (= e!2828262 e!2828264)))

(declare-fun c!775142 () Bool)

(assert (=> b!4538705 (= c!775142 call!316466)))

(declare-fun d!1402539 () Bool)

(assert (=> d!1402539 e!2828261))

(declare-fun res!1891360 () Bool)

(assert (=> d!1402539 (=> res!1891360 e!2828261)))

(assert (=> d!1402539 (= res!1891360 e!2828260)))

(declare-fun res!1891359 () Bool)

(assert (=> d!1402539 (=> (not res!1891359) (not e!2828260))))

(declare-fun lt!1713663 () Bool)

(assert (=> d!1402539 (= res!1891359 (not lt!1713663))))

(declare-fun lt!1713665 () Bool)

(assert (=> d!1402539 (= lt!1713663 lt!1713665)))

(declare-fun lt!1713664 () Unit!98176)

(assert (=> d!1402539 (= lt!1713664 e!2828262)))

(assert (=> d!1402539 (= c!775143 lt!1713665)))

(assert (=> d!1402539 (= lt!1713665 (containsKey!1872 (toList!4403 lt!1713595) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402539 (= (contains!13538 lt!1713595 (_1!28907 (h!56627 (_2!28908 lt!1713093)))) lt!1713663)))

(declare-fun b!4538706 () Bool)

(assert (=> b!4538706 (= e!2828265 (getKeysList!491 (toList!4403 lt!1713595)))))

(declare-fun b!4538707 () Bool)

(assert (=> b!4538707 false))

(declare-fun lt!1713669 () Unit!98176)

(declare-fun lt!1713666 () Unit!98176)

(assert (=> b!4538707 (= lt!1713669 lt!1713666)))

(assert (=> b!4538707 (containsKey!1872 (toList!4403 lt!1713595) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4538707 (= lt!1713666 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713595) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun Unit!98288 () Unit!98176)

(assert (=> b!4538707 (= e!2828264 Unit!98288)))

(declare-fun b!4538708 () Bool)

(declare-fun lt!1713667 () Unit!98176)

(assert (=> b!4538708 (= e!2828262 lt!1713667)))

(declare-fun lt!1713668 () Unit!98176)

(assert (=> b!4538708 (= lt!1713668 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713595) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4538708 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713595) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713662 () Unit!98176)

(assert (=> b!4538708 (= lt!1713662 lt!1713668)))

(assert (=> b!4538708 (= lt!1713667 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713595) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4538708 call!316466))

(declare-fun b!4538709 () Bool)

(assert (=> b!4538709 (= e!2828265 (keys!17658 lt!1713595))))

(assert (= (and d!1402539 c!775143) b!4538708))

(assert (= (and d!1402539 (not c!775143)) b!4538705))

(assert (= (and b!4538705 c!775142) b!4538707))

(assert (= (and b!4538705 (not c!775142)) b!4538704))

(assert (= (or b!4538708 b!4538705) bm!316461))

(assert (= (and bm!316461 c!775141) b!4538706))

(assert (= (and bm!316461 (not c!775141)) b!4538709))

(assert (= (and d!1402539 res!1891359) b!4538701))

(assert (= (and d!1402539 (not res!1891360)) b!4538703))

(assert (= (and b!4538703 res!1891361) b!4538702))

(declare-fun m!5303693 () Bool)

(assert (=> bm!316461 m!5303693))

(declare-fun m!5303695 () Bool)

(assert (=> b!4538703 m!5303695))

(assert (=> b!4538703 m!5303695))

(declare-fun m!5303697 () Bool)

(assert (=> b!4538703 m!5303697))

(declare-fun m!5303699 () Bool)

(assert (=> d!1402539 m!5303699))

(declare-fun m!5303701 () Bool)

(assert (=> b!4538701 m!5303701))

(assert (=> b!4538701 m!5303701))

(declare-fun m!5303703 () Bool)

(assert (=> b!4538701 m!5303703))

(assert (=> b!4538709 m!5303701))

(assert (=> b!4538702 m!5303701))

(assert (=> b!4538702 m!5303701))

(assert (=> b!4538702 m!5303703))

(assert (=> b!4538707 m!5303699))

(declare-fun m!5303705 () Bool)

(assert (=> b!4538707 m!5303705))

(declare-fun m!5303707 () Bool)

(assert (=> b!4538708 m!5303707))

(assert (=> b!4538708 m!5303695))

(assert (=> b!4538708 m!5303695))

(assert (=> b!4538708 m!5303697))

(declare-fun m!5303709 () Bool)

(assert (=> b!4538708 m!5303709))

(declare-fun m!5303711 () Bool)

(assert (=> b!4538706 m!5303711))

(assert (=> b!4538617 d!1402539))

(declare-fun d!1402541 () Bool)

(declare-fun res!1891362 () Bool)

(declare-fun e!2828266 () Bool)

(assert (=> d!1402541 (=> res!1891362 e!2828266)))

(assert (=> d!1402541 (= res!1891362 ((_ is Nil!50748) (toList!4403 lt!1713103)))))

(assert (=> d!1402541 (= (forall!10343 (toList!4403 lt!1713103) lambda!175907) e!2828266)))

(declare-fun b!4538710 () Bool)

(declare-fun e!2828267 () Bool)

(assert (=> b!4538710 (= e!2828266 e!2828267)))

(declare-fun res!1891363 () Bool)

(assert (=> b!4538710 (=> (not res!1891363) (not e!2828267))))

(assert (=> b!4538710 (= res!1891363 (dynLambda!21212 lambda!175907 (h!56627 (toList!4403 lt!1713103))))))

(declare-fun b!4538711 () Bool)

(assert (=> b!4538711 (= e!2828267 (forall!10343 (t!357834 (toList!4403 lt!1713103)) lambda!175907))))

(assert (= (and d!1402541 (not res!1891362)) b!4538710))

(assert (= (and b!4538710 res!1891363) b!4538711))

(declare-fun b_lambda!157705 () Bool)

(assert (=> (not b_lambda!157705) (not b!4538710)))

(declare-fun m!5303713 () Bool)

(assert (=> b!4538710 m!5303713))

(declare-fun m!5303715 () Bool)

(assert (=> b!4538711 m!5303715))

(assert (=> b!4538617 d!1402541))

(declare-fun d!1402543 () Bool)

(declare-fun res!1891364 () Bool)

(declare-fun e!2828268 () Bool)

(assert (=> d!1402543 (=> res!1891364 e!2828268)))

(assert (=> d!1402543 (= res!1891364 ((_ is Nil!50748) (toList!4403 lt!1713595)))))

(assert (=> d!1402543 (= (forall!10343 (toList!4403 lt!1713595) lambda!175908) e!2828268)))

(declare-fun b!4538712 () Bool)

(declare-fun e!2828269 () Bool)

(assert (=> b!4538712 (= e!2828268 e!2828269)))

(declare-fun res!1891365 () Bool)

(assert (=> b!4538712 (=> (not res!1891365) (not e!2828269))))

(assert (=> b!4538712 (= res!1891365 (dynLambda!21212 lambda!175908 (h!56627 (toList!4403 lt!1713595))))))

(declare-fun b!4538713 () Bool)

(assert (=> b!4538713 (= e!2828269 (forall!10343 (t!357834 (toList!4403 lt!1713595)) lambda!175908))))

(assert (= (and d!1402543 (not res!1891364)) b!4538712))

(assert (= (and b!4538712 res!1891365) b!4538713))

(declare-fun b_lambda!157707 () Bool)

(assert (=> (not b_lambda!157707) (not b!4538712)))

(declare-fun m!5303717 () Bool)

(assert (=> b!4538712 m!5303717))

(declare-fun m!5303719 () Bool)

(assert (=> b!4538713 m!5303719))

(assert (=> b!4538617 d!1402543))

(declare-fun bs!875501 () Bool)

(declare-fun d!1402545 () Bool)

(assert (= bs!875501 (and d!1402545 d!1402485)))

(declare-fun lambda!175932 () Int)

(assert (=> bs!875501 (= (= lt!1713589 lt!1713584) (= lambda!175932 lambda!175909))))

(declare-fun bs!875502 () Bool)

(assert (= bs!875502 (and d!1402545 b!4538685)))

(assert (=> bs!875502 (= (= lt!1713589 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175932 lambda!175925))))

(declare-fun bs!875503 () Bool)

(assert (= bs!875503 (and d!1402545 d!1402523)))

(assert (=> bs!875503 (not (= lambda!175932 lambda!175918))))

(declare-fun bs!875504 () Bool)

(assert (= bs!875504 (and d!1402545 b!4538248)))

(assert (=> bs!875504 (= (= lt!1713589 lt!1713258) (= lambda!175932 lambda!175837))))

(declare-fun bs!875505 () Bool)

(assert (= bs!875505 (and d!1402545 b!4538501)))

(assert (=> bs!875505 (= (= lt!1713589 lt!1713493) (= lambda!175932 lambda!175886))))

(declare-fun bs!875506 () Bool)

(assert (= bs!875506 (and d!1402545 d!1402317)))

(assert (=> bs!875506 (not (= lambda!175932 lambda!175860))))

(assert (=> bs!875502 (= (= lt!1713589 lt!1713639) (= lambda!175932 lambda!175926))))

(assert (=> bs!875505 (= (= lt!1713589 lt!1713095) (= lambda!175932 lambda!175885))))

(declare-fun bs!875507 () Bool)

(assert (= bs!875507 (and d!1402545 b!4538679)))

(assert (=> bs!875507 (= (= lt!1713589 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175932 lambda!175919))))

(declare-fun bs!875508 () Bool)

(assert (= bs!875508 (and d!1402545 d!1402531)))

(assert (=> bs!875508 (= (= lt!1713589 lt!1713634) (= lambda!175932 lambda!175927))))

(declare-fun bs!875509 () Bool)

(assert (= bs!875509 (and d!1402545 b!4538617)))

(assert (=> bs!875509 (= (= lt!1713589 lt!1713103) (= lambda!175932 lambda!175907))))

(declare-fun bs!875510 () Bool)

(assert (= bs!875510 (and d!1402545 b!4538171)))

(assert (=> bs!875510 (not (= lambda!175932 lambda!175771))))

(assert (=> bs!875504 (= (= lt!1713589 lt!1713121) (= lambda!175932 lambda!175836))))

(declare-fun bs!875511 () Bool)

(assert (= bs!875511 (and d!1402545 b!4538686)))

(assert (=> bs!875511 (= (= lt!1713589 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175932 lambda!175924))))

(declare-fun bs!875512 () Bool)

(assert (= bs!875512 (and d!1402545 b!4538618)))

(assert (=> bs!875512 (= (= lt!1713589 lt!1713103) (= lambda!175932 lambda!175906))))

(declare-fun bs!875513 () Bool)

(assert (= bs!875513 (and d!1402545 b!4538678)))

(assert (=> bs!875513 (= (= lt!1713589 lt!1713617) (= lambda!175932 lambda!175921))))

(declare-fun bs!875514 () Bool)

(assert (= bs!875514 (and d!1402545 d!1402409)))

(assert (=> bs!875514 (= (= lt!1713589 lt!1713488) (= lambda!175932 lambda!175888))))

(assert (=> bs!875513 (= (= lt!1713589 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175932 lambda!175920))))

(declare-fun bs!875515 () Bool)

(assert (= bs!875515 (and d!1402545 d!1402527)))

(assert (=> bs!875515 (= (= lt!1713589 lt!1713612) (= lambda!175932 lambda!175922))))

(assert (=> bs!875509 (= lambda!175932 lambda!175908)))

(declare-fun bs!875516 () Bool)

(assert (= bs!875516 (and d!1402545 b!4538249)))

(assert (=> bs!875516 (= (= lt!1713589 lt!1713121) (= lambda!175932 lambda!175834))))

(declare-fun bs!875517 () Bool)

(assert (= bs!875517 (and d!1402545 b!4538502)))

(assert (=> bs!875517 (= (= lt!1713589 lt!1713095) (= lambda!175932 lambda!175883))))

(declare-fun bs!875518 () Bool)

(assert (= bs!875518 (and d!1402545 d!1402229)))

(assert (=> bs!875518 (= (= lt!1713589 lt!1713253) (= lambda!175932 lambda!175838))))

(assert (=> d!1402545 true))

(assert (=> d!1402545 (forall!10343 (toList!4403 lt!1713103) lambda!175932)))

(declare-fun lt!1713672 () Unit!98176)

(declare-fun choose!29883 (ListMap!3665 ListMap!3665 K!12135 V!12381) Unit!98176)

(assert (=> d!1402545 (= lt!1713672 (choose!29883 lt!1713103 lt!1713589 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402545 (forall!10343 (toList!4403 (+!1604 lt!1713103 (tuple2!51227 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))) lambda!175932)))

(assert (=> d!1402545 (= (addForallContainsKeyThenBeforeAdding!364 lt!1713103 lt!1713589 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))) lt!1713672)))

(declare-fun bs!875519 () Bool)

(assert (= bs!875519 d!1402545))

(declare-fun m!5303721 () Bool)

(assert (=> bs!875519 m!5303721))

(declare-fun m!5303723 () Bool)

(assert (=> bs!875519 m!5303723))

(declare-fun m!5303725 () Bool)

(assert (=> bs!875519 m!5303725))

(declare-fun m!5303727 () Bool)

(assert (=> bs!875519 m!5303727))

(assert (=> b!4538617 d!1402545))

(declare-fun d!1402547 () Bool)

(assert (=> d!1402547 (dynLambda!21212 lambda!175908 (h!56627 (_2!28908 lt!1713093)))))

(declare-fun lt!1713673 () Unit!98176)

(assert (=> d!1402547 (= lt!1713673 (choose!29871 (toList!4403 lt!1713595) lambda!175908 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun e!2828270 () Bool)

(assert (=> d!1402547 e!2828270))

(declare-fun res!1891366 () Bool)

(assert (=> d!1402547 (=> (not res!1891366) (not e!2828270))))

(assert (=> d!1402547 (= res!1891366 (forall!10343 (toList!4403 lt!1713595) lambda!175908))))

(assert (=> d!1402547 (= (forallContained!2605 (toList!4403 lt!1713595) lambda!175908 (h!56627 (_2!28908 lt!1713093))) lt!1713673)))

(declare-fun b!4538715 () Bool)

(assert (=> b!4538715 (= e!2828270 (contains!13542 (toList!4403 lt!1713595) (h!56627 (_2!28908 lt!1713093))))))

(assert (= (and d!1402547 res!1891366) b!4538715))

(declare-fun b_lambda!157709 () Bool)

(assert (=> (not b_lambda!157709) (not d!1402547)))

(assert (=> d!1402547 m!5303685))

(declare-fun m!5303729 () Bool)

(assert (=> d!1402547 m!5303729))

(assert (=> d!1402547 m!5303491))

(declare-fun m!5303731 () Bool)

(assert (=> b!4538715 m!5303731))

(assert (=> b!4538617 d!1402547))

(declare-fun b!4538716 () Bool)

(declare-fun e!2828271 () Bool)

(assert (=> b!4538716 (= e!2828271 (not (contains!13540 (keys!17658 lt!1713589) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun bm!316462 () Bool)

(declare-fun call!316467 () Bool)

(declare-fun e!2828276 () List!50875)

(assert (=> bm!316462 (= call!316467 (contains!13540 e!2828276 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun c!775144 () Bool)

(declare-fun c!775146 () Bool)

(assert (=> bm!316462 (= c!775144 c!775146)))

(declare-fun b!4538717 () Bool)

(declare-fun e!2828274 () Bool)

(assert (=> b!4538717 (= e!2828274 (contains!13540 (keys!17658 lt!1713589) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun b!4538718 () Bool)

(declare-fun e!2828272 () Bool)

(assert (=> b!4538718 (= e!2828272 e!2828274)))

(declare-fun res!1891369 () Bool)

(assert (=> b!4538718 (=> (not res!1891369) (not e!2828274))))

(assert (=> b!4538718 (= res!1891369 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713589) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4538719 () Bool)

(declare-fun e!2828275 () Unit!98176)

(declare-fun Unit!98295 () Unit!98176)

(assert (=> b!4538719 (= e!2828275 Unit!98295)))

(declare-fun b!4538720 () Bool)

(declare-fun e!2828273 () Unit!98176)

(assert (=> b!4538720 (= e!2828273 e!2828275)))

(declare-fun c!775145 () Bool)

(assert (=> b!4538720 (= c!775145 call!316467)))

(declare-fun d!1402549 () Bool)

(assert (=> d!1402549 e!2828272))

(declare-fun res!1891368 () Bool)

(assert (=> d!1402549 (=> res!1891368 e!2828272)))

(assert (=> d!1402549 (= res!1891368 e!2828271)))

(declare-fun res!1891367 () Bool)

(assert (=> d!1402549 (=> (not res!1891367) (not e!2828271))))

(declare-fun lt!1713675 () Bool)

(assert (=> d!1402549 (= res!1891367 (not lt!1713675))))

(declare-fun lt!1713677 () Bool)

(assert (=> d!1402549 (= lt!1713675 lt!1713677)))

(declare-fun lt!1713676 () Unit!98176)

(assert (=> d!1402549 (= lt!1713676 e!2828273)))

(assert (=> d!1402549 (= c!775146 lt!1713677)))

(assert (=> d!1402549 (= lt!1713677 (containsKey!1872 (toList!4403 lt!1713589) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402549 (= (contains!13538 lt!1713589 (_1!28907 (h!56627 (_2!28908 lt!1713093)))) lt!1713675)))

(declare-fun b!4538721 () Bool)

(assert (=> b!4538721 (= e!2828276 (getKeysList!491 (toList!4403 lt!1713589)))))

(declare-fun b!4538722 () Bool)

(assert (=> b!4538722 false))

(declare-fun lt!1713681 () Unit!98176)

(declare-fun lt!1713678 () Unit!98176)

(assert (=> b!4538722 (= lt!1713681 lt!1713678)))

(assert (=> b!4538722 (containsKey!1872 (toList!4403 lt!1713589) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4538722 (= lt!1713678 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713589) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun Unit!98298 () Unit!98176)

(assert (=> b!4538722 (= e!2828275 Unit!98298)))

(declare-fun b!4538723 () Bool)

(declare-fun lt!1713679 () Unit!98176)

(assert (=> b!4538723 (= e!2828273 lt!1713679)))

(declare-fun lt!1713680 () Unit!98176)

(assert (=> b!4538723 (= lt!1713680 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713589) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4538723 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713589) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713674 () Unit!98176)

(assert (=> b!4538723 (= lt!1713674 lt!1713680)))

(assert (=> b!4538723 (= lt!1713679 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713589) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4538723 call!316467))

(declare-fun b!4538724 () Bool)

(assert (=> b!4538724 (= e!2828276 (keys!17658 lt!1713589))))

(assert (= (and d!1402549 c!775146) b!4538723))

(assert (= (and d!1402549 (not c!775146)) b!4538720))

(assert (= (and b!4538720 c!775145) b!4538722))

(assert (= (and b!4538720 (not c!775145)) b!4538719))

(assert (= (or b!4538723 b!4538720) bm!316462))

(assert (= (and bm!316462 c!775144) b!4538721))

(assert (= (and bm!316462 (not c!775144)) b!4538724))

(assert (= (and d!1402549 res!1891367) b!4538716))

(assert (= (and d!1402549 (not res!1891368)) b!4538718))

(assert (= (and b!4538718 res!1891369) b!4538717))

(declare-fun m!5303733 () Bool)

(assert (=> bm!316462 m!5303733))

(declare-fun m!5303735 () Bool)

(assert (=> b!4538718 m!5303735))

(assert (=> b!4538718 m!5303735))

(declare-fun m!5303737 () Bool)

(assert (=> b!4538718 m!5303737))

(declare-fun m!5303739 () Bool)

(assert (=> d!1402549 m!5303739))

(declare-fun m!5303741 () Bool)

(assert (=> b!4538716 m!5303741))

(assert (=> b!4538716 m!5303741))

(declare-fun m!5303743 () Bool)

(assert (=> b!4538716 m!5303743))

(assert (=> b!4538724 m!5303741))

(assert (=> b!4538717 m!5303741))

(assert (=> b!4538717 m!5303741))

(assert (=> b!4538717 m!5303743))

(assert (=> b!4538722 m!5303739))

(declare-fun m!5303745 () Bool)

(assert (=> b!4538722 m!5303745))

(declare-fun m!5303747 () Bool)

(assert (=> b!4538723 m!5303747))

(assert (=> b!4538723 m!5303735))

(assert (=> b!4538723 m!5303735))

(assert (=> b!4538723 m!5303737))

(declare-fun m!5303749 () Bool)

(assert (=> b!4538723 m!5303749))

(declare-fun m!5303751 () Bool)

(assert (=> b!4538721 m!5303751))

(assert (=> b!4538617 d!1402549))

(assert (=> b!4538508 d!1402375))

(declare-fun d!1402551 () Bool)

(declare-fun res!1891374 () Bool)

(declare-fun e!2828281 () Bool)

(assert (=> d!1402551 (=> res!1891374 e!2828281)))

(assert (=> d!1402551 (= res!1891374 (and ((_ is Cons!50749) (toList!4404 lt!1713100)) (= (_1!28908 (h!56628 (toList!4404 lt!1713100))) hash!344)))))

(assert (=> d!1402551 (= (containsKey!1874 (toList!4404 lt!1713100) hash!344) e!2828281)))

(declare-fun b!4538729 () Bool)

(declare-fun e!2828282 () Bool)

(assert (=> b!4538729 (= e!2828281 e!2828282)))

(declare-fun res!1891375 () Bool)

(assert (=> b!4538729 (=> (not res!1891375) (not e!2828282))))

(assert (=> b!4538729 (= res!1891375 (and (or (not ((_ is Cons!50749) (toList!4404 lt!1713100))) (bvsle (_1!28908 (h!56628 (toList!4404 lt!1713100))) hash!344)) ((_ is Cons!50749) (toList!4404 lt!1713100)) (bvslt (_1!28908 (h!56628 (toList!4404 lt!1713100))) hash!344)))))

(declare-fun b!4538730 () Bool)

(assert (=> b!4538730 (= e!2828282 (containsKey!1874 (t!357835 (toList!4404 lt!1713100)) hash!344))))

(assert (= (and d!1402551 (not res!1891374)) b!4538729))

(assert (= (and b!4538729 res!1891375) b!4538730))

(declare-fun m!5303753 () Bool)

(assert (=> b!4538730 m!5303753))

(assert (=> d!1402477 d!1402551))

(declare-fun d!1402553 () Bool)

(declare-fun isEmpty!28748 (Option!11200) Bool)

(assert (=> d!1402553 (= (isDefined!8474 (getValueByKey!1144 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287)) (not (isEmpty!28748 (getValueByKey!1144 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))))

(declare-fun bs!875520 () Bool)

(assert (= bs!875520 d!1402553))

(assert (=> bs!875520 m!5303427))

(declare-fun m!5303755 () Bool)

(assert (=> bs!875520 m!5303755))

(assert (=> b!4538599 d!1402553))

(declare-fun b!4538741 () Bool)

(declare-fun e!2828288 () Option!11200)

(assert (=> b!4538741 (= e!2828288 (getValueByKey!1144 (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) key!3287))))

(declare-fun b!4538739 () Bool)

(declare-fun e!2828287 () Option!11200)

(assert (=> b!4538739 (= e!2828287 (Some!11199 (_2!28907 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))))

(declare-fun d!1402555 () Bool)

(declare-fun c!775151 () Bool)

(assert (=> d!1402555 (= c!775151 (and ((_ is Cons!50748) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= (_1!28907 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) key!3287)))))

(assert (=> d!1402555 (= (getValueByKey!1144 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287) e!2828287)))

(declare-fun b!4538742 () Bool)

(assert (=> b!4538742 (= e!2828288 None!11199)))

(declare-fun b!4538740 () Bool)

(assert (=> b!4538740 (= e!2828287 e!2828288)))

(declare-fun c!775152 () Bool)

(assert (=> b!4538740 (= c!775152 (and ((_ is Cons!50748) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (not (= (_1!28907 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) key!3287))))))

(assert (= (and d!1402555 c!775151) b!4538739))

(assert (= (and d!1402555 (not c!775151)) b!4538740))

(assert (= (and b!4538740 c!775152) b!4538741))

(assert (= (and b!4538740 (not c!775152)) b!4538742))

(declare-fun m!5303757 () Bool)

(assert (=> b!4538741 m!5303757))

(assert (=> b!4538599 d!1402555))

(assert (=> b!4538467 d!1402293))

(declare-fun d!1402557 () Bool)

(assert (=> d!1402557 (= (invariantList!1043 (toList!4403 lt!1713396)) (noDuplicatedKeys!276 (toList!4403 lt!1713396)))))

(declare-fun bs!875521 () Bool)

(assert (= bs!875521 d!1402557))

(declare-fun m!5303759 () Bool)

(assert (=> bs!875521 m!5303759))

(assert (=> d!1402349 d!1402557))

(declare-fun d!1402559 () Bool)

(declare-fun res!1891376 () Bool)

(declare-fun e!2828289 () Bool)

(assert (=> d!1402559 (=> res!1891376 e!2828289)))

(assert (=> d!1402559 (= res!1891376 ((_ is Nil!50749) (toList!4404 lt!1713102)))))

(assert (=> d!1402559 (= (forall!10341 (toList!4404 lt!1713102) lambda!175870) e!2828289)))

(declare-fun b!4538743 () Bool)

(declare-fun e!2828290 () Bool)

(assert (=> b!4538743 (= e!2828289 e!2828290)))

(declare-fun res!1891377 () Bool)

(assert (=> b!4538743 (=> (not res!1891377) (not e!2828290))))

(assert (=> b!4538743 (= res!1891377 (dynLambda!21211 lambda!175870 (h!56628 (toList!4404 lt!1713102))))))

(declare-fun b!4538744 () Bool)

(assert (=> b!4538744 (= e!2828290 (forall!10341 (t!357835 (toList!4404 lt!1713102)) lambda!175870))))

(assert (= (and d!1402559 (not res!1891376)) b!4538743))

(assert (= (and b!4538743 res!1891377) b!4538744))

(declare-fun b_lambda!157711 () Bool)

(assert (=> (not b_lambda!157711) (not b!4538743)))

(declare-fun m!5303761 () Bool)

(assert (=> b!4538743 m!5303761))

(declare-fun m!5303763 () Bool)

(assert (=> b!4538744 m!5303763))

(assert (=> d!1402349 d!1402559))

(declare-fun d!1402561 () Bool)

(assert (=> d!1402561 (= (get!16682 (getValueByKey!1145 (toList!4404 lm!1477) hash!344)) (v!44892 (getValueByKey!1145 (toList!4404 lm!1477) hash!344)))))

(assert (=> d!1402429 d!1402561))

(declare-fun d!1402563 () Bool)

(declare-fun c!775157 () Bool)

(assert (=> d!1402563 (= c!775157 (and ((_ is Cons!50749) (toList!4404 lm!1477)) (= (_1!28908 (h!56628 (toList!4404 lm!1477))) hash!344)))))

(declare-fun e!2828295 () Option!11201)

(assert (=> d!1402563 (= (getValueByKey!1145 (toList!4404 lm!1477) hash!344) e!2828295)))

(declare-fun b!4538753 () Bool)

(assert (=> b!4538753 (= e!2828295 (Some!11200 (_2!28908 (h!56628 (toList!4404 lm!1477)))))))

(declare-fun b!4538755 () Bool)

(declare-fun e!2828296 () Option!11201)

(assert (=> b!4538755 (= e!2828296 (getValueByKey!1145 (t!357835 (toList!4404 lm!1477)) hash!344))))

(declare-fun b!4538754 () Bool)

(assert (=> b!4538754 (= e!2828295 e!2828296)))

(declare-fun c!775158 () Bool)

(assert (=> b!4538754 (= c!775158 (and ((_ is Cons!50749) (toList!4404 lm!1477)) (not (= (_1!28908 (h!56628 (toList!4404 lm!1477))) hash!344))))))

(declare-fun b!4538756 () Bool)

(assert (=> b!4538756 (= e!2828296 None!11200)))

(assert (= (and d!1402563 c!775157) b!4538753))

(assert (= (and d!1402563 (not c!775157)) b!4538754))

(assert (= (and b!4538754 c!775158) b!4538755))

(assert (= (and b!4538754 (not c!775158)) b!4538756))

(declare-fun m!5303765 () Bool)

(assert (=> b!4538755 m!5303765))

(assert (=> d!1402429 d!1402563))

(declare-fun d!1402565 () Bool)

(declare-fun res!1891378 () Bool)

(declare-fun e!2828297 () Bool)

(assert (=> d!1402565 (=> res!1891378 e!2828297)))

(assert (=> d!1402565 (= res!1891378 (and ((_ is Cons!50748) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= (_1!28907 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) key!3287)))))

(assert (=> d!1402565 (= (containsKey!1872 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287) e!2828297)))

(declare-fun b!4538757 () Bool)

(declare-fun e!2828298 () Bool)

(assert (=> b!4538757 (= e!2828297 e!2828298)))

(declare-fun res!1891379 () Bool)

(assert (=> b!4538757 (=> (not res!1891379) (not e!2828298))))

(assert (=> b!4538757 (= res!1891379 ((_ is Cons!50748) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))

(declare-fun b!4538758 () Bool)

(assert (=> b!4538758 (= e!2828298 (containsKey!1872 (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) key!3287))))

(assert (= (and d!1402565 (not res!1891378)) b!4538757))

(assert (= (and b!4538757 res!1891379) b!4538758))

(declare-fun m!5303767 () Bool)

(assert (=> b!4538758 m!5303767))

(assert (=> b!4538603 d!1402565))

(declare-fun d!1402567 () Bool)

(assert (=> d!1402567 (containsKey!1872 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287)))

(declare-fun lt!1713684 () Unit!98176)

(declare-fun choose!29884 (List!50872 K!12135) Unit!98176)

(assert (=> d!1402567 (= lt!1713684 (choose!29884 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(assert (=> d!1402567 (invariantList!1043 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))

(assert (=> d!1402567 (= (lemmaInGetKeysListThenContainsKey!490 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287) lt!1713684)))

(declare-fun bs!875522 () Bool)

(assert (= bs!875522 d!1402567))

(assert (=> bs!875522 m!5303431))

(declare-fun m!5303769 () Bool)

(assert (=> bs!875522 m!5303769))

(declare-fun m!5303771 () Bool)

(assert (=> bs!875522 m!5303771))

(assert (=> b!4538603 d!1402567))

(declare-fun d!1402569 () Bool)

(declare-fun res!1891380 () Bool)

(declare-fun e!2828299 () Bool)

(assert (=> d!1402569 (=> res!1891380 e!2828299)))

(assert (=> d!1402569 (= res!1891380 ((_ is Nil!50748) (ite c!775049 (toList!4403 lt!1713121) (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> d!1402569 (= (forall!10343 (ite c!775049 (toList!4403 lt!1713121) (t!357834 (_2!28908 lt!1713093))) (ite c!775049 lambda!175834 lambda!175837)) e!2828299)))

(declare-fun b!4538759 () Bool)

(declare-fun e!2828300 () Bool)

(assert (=> b!4538759 (= e!2828299 e!2828300)))

(declare-fun res!1891381 () Bool)

(assert (=> b!4538759 (=> (not res!1891381) (not e!2828300))))

(assert (=> b!4538759 (= res!1891381 (dynLambda!21212 (ite c!775049 lambda!175834 lambda!175837) (h!56627 (ite c!775049 (toList!4403 lt!1713121) (t!357834 (_2!28908 lt!1713093))))))))

(declare-fun b!4538760 () Bool)

(assert (=> b!4538760 (= e!2828300 (forall!10343 (t!357834 (ite c!775049 (toList!4403 lt!1713121) (t!357834 (_2!28908 lt!1713093)))) (ite c!775049 lambda!175834 lambda!175837)))))

(assert (= (and d!1402569 (not res!1891380)) b!4538759))

(assert (= (and b!4538759 res!1891381) b!4538760))

(declare-fun b_lambda!157713 () Bool)

(assert (=> (not b_lambda!157713) (not b!4538759)))

(declare-fun m!5303773 () Bool)

(assert (=> b!4538759 m!5303773))

(declare-fun m!5303775 () Bool)

(assert (=> b!4538760 m!5303775))

(assert (=> bm!316432 d!1402569))

(declare-fun d!1402571 () Bool)

(declare-fun res!1891382 () Bool)

(declare-fun e!2828301 () Bool)

(assert (=> d!1402571 (=> res!1891382 e!2828301)))

(assert (=> d!1402571 (= res!1891382 ((_ is Nil!50748) (ite c!775129 (toList!4403 lt!1713103) (_2!28908 lt!1713093))))))

(assert (=> d!1402571 (= (forall!10343 (ite c!775129 (toList!4403 lt!1713103) (_2!28908 lt!1713093)) (ite c!775129 lambda!175906 lambda!175908)) e!2828301)))

(declare-fun b!4538761 () Bool)

(declare-fun e!2828302 () Bool)

(assert (=> b!4538761 (= e!2828301 e!2828302)))

(declare-fun res!1891383 () Bool)

(assert (=> b!4538761 (=> (not res!1891383) (not e!2828302))))

(assert (=> b!4538761 (= res!1891383 (dynLambda!21212 (ite c!775129 lambda!175906 lambda!175908) (h!56627 (ite c!775129 (toList!4403 lt!1713103) (_2!28908 lt!1713093)))))))

(declare-fun b!4538762 () Bool)

(assert (=> b!4538762 (= e!2828302 (forall!10343 (t!357834 (ite c!775129 (toList!4403 lt!1713103) (_2!28908 lt!1713093))) (ite c!775129 lambda!175906 lambda!175908)))))

(assert (= (and d!1402571 (not res!1891382)) b!4538761))

(assert (= (and b!4538761 res!1891383) b!4538762))

(declare-fun b_lambda!157715 () Bool)

(assert (=> (not b_lambda!157715) (not b!4538761)))

(declare-fun m!5303777 () Bool)

(assert (=> b!4538761 m!5303777))

(declare-fun m!5303779 () Bool)

(assert (=> b!4538762 m!5303779))

(assert (=> bm!316453 d!1402571))

(declare-fun d!1402573 () Bool)

(declare-fun res!1891388 () Bool)

(declare-fun e!2828307 () Bool)

(assert (=> d!1402573 (=> res!1891388 e!2828307)))

(assert (=> d!1402573 (= res!1891388 (or ((_ is Nil!50749) (toList!4404 lm!1477)) ((_ is Nil!50749) (t!357835 (toList!4404 lm!1477)))))))

(assert (=> d!1402573 (= (isStrictlySorted!457 (toList!4404 lm!1477)) e!2828307)))

(declare-fun b!4538767 () Bool)

(declare-fun e!2828308 () Bool)

(assert (=> b!4538767 (= e!2828307 e!2828308)))

(declare-fun res!1891389 () Bool)

(assert (=> b!4538767 (=> (not res!1891389) (not e!2828308))))

(assert (=> b!4538767 (= res!1891389 (bvslt (_1!28908 (h!56628 (toList!4404 lm!1477))) (_1!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))))))

(declare-fun b!4538768 () Bool)

(assert (=> b!4538768 (= e!2828308 (isStrictlySorted!457 (t!357835 (toList!4404 lm!1477))))))

(assert (= (and d!1402573 (not res!1891388)) b!4538767))

(assert (= (and b!4538767 res!1891389) b!4538768))

(declare-fun m!5303781 () Bool)

(assert (=> b!4538768 m!5303781))

(assert (=> d!1402263 d!1402573))

(declare-fun d!1402575 () Bool)

(declare-fun res!1891390 () Bool)

(declare-fun e!2828309 () Bool)

(assert (=> d!1402575 (=> res!1891390 e!2828309)))

(assert (=> d!1402575 (= res!1891390 ((_ is Nil!50748) (toList!4403 lt!1713095)))))

(assert (=> d!1402575 (= (forall!10343 (toList!4403 lt!1713095) lambda!175886) e!2828309)))

(declare-fun b!4538769 () Bool)

(declare-fun e!2828310 () Bool)

(assert (=> b!4538769 (= e!2828309 e!2828310)))

(declare-fun res!1891391 () Bool)

(assert (=> b!4538769 (=> (not res!1891391) (not e!2828310))))

(assert (=> b!4538769 (= res!1891391 (dynLambda!21212 lambda!175886 (h!56627 (toList!4403 lt!1713095))))))

(declare-fun b!4538770 () Bool)

(assert (=> b!4538770 (= e!2828310 (forall!10343 (t!357834 (toList!4403 lt!1713095)) lambda!175886))))

(assert (= (and d!1402575 (not res!1891390)) b!4538769))

(assert (= (and b!4538769 res!1891391) b!4538770))

(declare-fun b_lambda!157717 () Bool)

(assert (=> (not b_lambda!157717) (not b!4538769)))

(declare-fun m!5303783 () Bool)

(assert (=> b!4538769 m!5303783))

(declare-fun m!5303785 () Bool)

(assert (=> b!4538770 m!5303785))

(assert (=> b!4538500 d!1402575))

(declare-fun d!1402577 () Bool)

(assert (=> d!1402577 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287))))

(declare-fun lt!1713687 () Unit!98176)

(declare-fun choose!29885 (List!50872 K!12135) Unit!98176)

(assert (=> d!1402577 (= lt!1713687 (choose!29885 (toList!4403 lt!1713092) key!3287))))

(assert (=> d!1402577 (invariantList!1043 (toList!4403 lt!1713092))))

(assert (=> d!1402577 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713092) key!3287) lt!1713687)))

(declare-fun bs!875523 () Bool)

(assert (= bs!875523 d!1402577))

(assert (=> bs!875523 m!5302795))

(assert (=> bs!875523 m!5302795))

(assert (=> bs!875523 m!5302797))

(declare-fun m!5303787 () Bool)

(assert (=> bs!875523 m!5303787))

(declare-fun m!5303789 () Bool)

(assert (=> bs!875523 m!5303789))

(assert (=> b!4538320 d!1402577))

(declare-fun d!1402581 () Bool)

(assert (=> d!1402581 (= (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287)) (not (isEmpty!28748 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287))))))

(declare-fun bs!875524 () Bool)

(assert (= bs!875524 d!1402581))

(assert (=> bs!875524 m!5302795))

(declare-fun m!5303791 () Bool)

(assert (=> bs!875524 m!5303791))

(assert (=> b!4538320 d!1402581))

(declare-fun b!4538773 () Bool)

(declare-fun e!2828312 () Option!11200)

(assert (=> b!4538773 (= e!2828312 (getValueByKey!1144 (t!357834 (toList!4403 lt!1713092)) key!3287))))

(declare-fun b!4538771 () Bool)

(declare-fun e!2828311 () Option!11200)

(assert (=> b!4538771 (= e!2828311 (Some!11199 (_2!28907 (h!56627 (toList!4403 lt!1713092)))))))

(declare-fun d!1402583 () Bool)

(declare-fun c!775159 () Bool)

(assert (=> d!1402583 (= c!775159 (and ((_ is Cons!50748) (toList!4403 lt!1713092)) (= (_1!28907 (h!56627 (toList!4403 lt!1713092))) key!3287)))))

(assert (=> d!1402583 (= (getValueByKey!1144 (toList!4403 lt!1713092) key!3287) e!2828311)))

(declare-fun b!4538774 () Bool)

(assert (=> b!4538774 (= e!2828312 None!11199)))

(declare-fun b!4538772 () Bool)

(assert (=> b!4538772 (= e!2828311 e!2828312)))

(declare-fun c!775160 () Bool)

(assert (=> b!4538772 (= c!775160 (and ((_ is Cons!50748) (toList!4403 lt!1713092)) (not (= (_1!28907 (h!56627 (toList!4403 lt!1713092))) key!3287))))))

(assert (= (and d!1402583 c!775159) b!4538771))

(assert (= (and d!1402583 (not c!775159)) b!4538772))

(assert (= (and b!4538772 c!775160) b!4538773))

(assert (= (and b!4538772 (not c!775160)) b!4538774))

(declare-fun m!5303793 () Bool)

(assert (=> b!4538773 m!5303793))

(assert (=> b!4538320 d!1402583))

(declare-fun d!1402585 () Bool)

(assert (=> d!1402585 (contains!13540 (getKeysList!491 (toList!4403 lt!1713092)) key!3287)))

(declare-fun lt!1713690 () Unit!98176)

(declare-fun choose!29886 (List!50872 K!12135) Unit!98176)

(assert (=> d!1402585 (= lt!1713690 (choose!29886 (toList!4403 lt!1713092) key!3287))))

(assert (=> d!1402585 (invariantList!1043 (toList!4403 lt!1713092))))

(assert (=> d!1402585 (= (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713092) key!3287) lt!1713690)))

(declare-fun bs!875525 () Bool)

(assert (= bs!875525 d!1402585))

(assert (=> bs!875525 m!5302811))

(assert (=> bs!875525 m!5302811))

(declare-fun m!5303795 () Bool)

(assert (=> bs!875525 m!5303795))

(declare-fun m!5303797 () Bool)

(assert (=> bs!875525 m!5303797))

(assert (=> bs!875525 m!5303789))

(assert (=> b!4538320 d!1402585))

(declare-fun d!1402587 () Bool)

(assert (=> d!1402587 (= (isDefined!8475 lt!1713455) (not (isEmpty!28745 lt!1713455)))))

(declare-fun bs!875526 () Bool)

(assert (= bs!875526 d!1402587))

(assert (=> bs!875526 m!5303167))

(assert (=> b!4538463 d!1402587))

(assert (=> d!1402469 d!1402565))

(declare-fun d!1402589 () Bool)

(assert (=> d!1402589 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287))))

(declare-fun lt!1713691 () Unit!98176)

(assert (=> d!1402589 (= lt!1713691 (choose!29885 (toList!4403 lt!1713103) key!3287))))

(assert (=> d!1402589 (invariantList!1043 (toList!4403 lt!1713103))))

(assert (=> d!1402589 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713103) key!3287) lt!1713691)))

(declare-fun bs!875527 () Bool)

(assert (= bs!875527 d!1402589))

(assert (=> bs!875527 m!5303409))

(assert (=> bs!875527 m!5303409))

(assert (=> bs!875527 m!5303411))

(declare-fun m!5303799 () Bool)

(assert (=> bs!875527 m!5303799))

(declare-fun m!5303801 () Bool)

(assert (=> bs!875527 m!5303801))

(assert (=> b!4538595 d!1402589))

(declare-fun d!1402591 () Bool)

(assert (=> d!1402591 (= (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287)) (not (isEmpty!28748 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287))))))

(declare-fun bs!875528 () Bool)

(assert (= bs!875528 d!1402591))

(assert (=> bs!875528 m!5303409))

(declare-fun m!5303803 () Bool)

(assert (=> bs!875528 m!5303803))

(assert (=> b!4538595 d!1402591))

(declare-fun b!4538783 () Bool)

(declare-fun e!2828320 () Option!11200)

(assert (=> b!4538783 (= e!2828320 (getValueByKey!1144 (t!357834 (toList!4403 lt!1713103)) key!3287))))

(declare-fun b!4538781 () Bool)

(declare-fun e!2828319 () Option!11200)

(assert (=> b!4538781 (= e!2828319 (Some!11199 (_2!28907 (h!56627 (toList!4403 lt!1713103)))))))

(declare-fun d!1402593 () Bool)

(declare-fun c!775161 () Bool)

(assert (=> d!1402593 (= c!775161 (and ((_ is Cons!50748) (toList!4403 lt!1713103)) (= (_1!28907 (h!56627 (toList!4403 lt!1713103))) key!3287)))))

(assert (=> d!1402593 (= (getValueByKey!1144 (toList!4403 lt!1713103) key!3287) e!2828319)))

(declare-fun b!4538784 () Bool)

(assert (=> b!4538784 (= e!2828320 None!11199)))

(declare-fun b!4538782 () Bool)

(assert (=> b!4538782 (= e!2828319 e!2828320)))

(declare-fun c!775162 () Bool)

(assert (=> b!4538782 (= c!775162 (and ((_ is Cons!50748) (toList!4403 lt!1713103)) (not (= (_1!28907 (h!56627 (toList!4403 lt!1713103))) key!3287))))))

(assert (= (and d!1402593 c!775161) b!4538781))

(assert (= (and d!1402593 (not c!775161)) b!4538782))

(assert (= (and b!4538782 c!775162) b!4538783))

(assert (= (and b!4538782 (not c!775162)) b!4538784))

(declare-fun m!5303805 () Bool)

(assert (=> b!4538783 m!5303805))

(assert (=> b!4538595 d!1402593))

(declare-fun d!1402595 () Bool)

(assert (=> d!1402595 (contains!13540 (getKeysList!491 (toList!4403 lt!1713103)) key!3287)))

(declare-fun lt!1713692 () Unit!98176)

(assert (=> d!1402595 (= lt!1713692 (choose!29886 (toList!4403 lt!1713103) key!3287))))

(assert (=> d!1402595 (invariantList!1043 (toList!4403 lt!1713103))))

(assert (=> d!1402595 (= (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713103) key!3287) lt!1713692)))

(declare-fun bs!875529 () Bool)

(assert (= bs!875529 d!1402595))

(assert (=> bs!875529 m!5303423))

(assert (=> bs!875529 m!5303423))

(declare-fun m!5303811 () Bool)

(assert (=> bs!875529 m!5303811))

(declare-fun m!5303813 () Bool)

(assert (=> bs!875529 m!5303813))

(assert (=> bs!875529 m!5303801))

(assert (=> b!4538595 d!1402595))

(declare-fun d!1402599 () Bool)

(declare-fun res!1891398 () Bool)

(declare-fun e!2828321 () Bool)

(assert (=> d!1402599 (=> res!1891398 e!2828321)))

(assert (=> d!1402599 (= res!1891398 ((_ is Nil!50749) (toList!4404 lt!1713100)))))

(assert (=> d!1402599 (= (forall!10341 (toList!4404 lt!1713100) lambda!175879) e!2828321)))

(declare-fun b!4538785 () Bool)

(declare-fun e!2828322 () Bool)

(assert (=> b!4538785 (= e!2828321 e!2828322)))

(declare-fun res!1891399 () Bool)

(assert (=> b!4538785 (=> (not res!1891399) (not e!2828322))))

(assert (=> b!4538785 (= res!1891399 (dynLambda!21211 lambda!175879 (h!56628 (toList!4404 lt!1713100))))))

(declare-fun b!4538786 () Bool)

(assert (=> b!4538786 (= e!2828322 (forall!10341 (t!357835 (toList!4404 lt!1713100)) lambda!175879))))

(assert (= (and d!1402599 (not res!1891398)) b!4538785))

(assert (= (and b!4538785 res!1891399) b!4538786))

(declare-fun b_lambda!157721 () Bool)

(assert (=> (not b_lambda!157721) (not b!4538785)))

(declare-fun m!5303815 () Bool)

(assert (=> b!4538785 m!5303815))

(declare-fun m!5303817 () Bool)

(assert (=> b!4538786 m!5303817))

(assert (=> d!1402353 d!1402599))

(declare-fun bs!875530 () Bool)

(declare-fun d!1402601 () Bool)

(assert (= bs!875530 (and d!1402601 start!450372)))

(declare-fun lambda!175933 () Int)

(assert (=> bs!875530 (= lambda!175933 lambda!175769)))

(declare-fun bs!875531 () Bool)

(assert (= bs!875531 (and d!1402601 d!1402275)))

(assert (=> bs!875531 (= lambda!175933 lambda!175846)))

(declare-fun bs!875532 () Bool)

(assert (= bs!875532 (and d!1402601 b!4538171)))

(assert (=> bs!875532 (not (= lambda!175933 lambda!175770))))

(declare-fun bs!875533 () Bool)

(assert (= bs!875533 (and d!1402601 d!1402353)))

(assert (=> bs!875533 (= lambda!175933 lambda!175879)))

(declare-fun bs!875534 () Bool)

(assert (= bs!875534 (and d!1402601 d!1402303)))

(assert (=> bs!875534 (= lambda!175933 lambda!175857)))

(declare-fun bs!875535 () Bool)

(assert (= bs!875535 (and d!1402601 d!1402471)))

(assert (=> bs!875535 (= lambda!175933 lambda!175901)))

(declare-fun bs!875536 () Bool)

(assert (= bs!875536 (and d!1402601 d!1402475)))

(assert (=> bs!875536 (= lambda!175933 lambda!175905)))

(declare-fun bs!875537 () Bool)

(assert (= bs!875537 (and d!1402601 d!1402529)))

(assert (=> bs!875537 (= lambda!175933 lambda!175923)))

(declare-fun bs!875538 () Bool)

(assert (= bs!875538 (and d!1402601 d!1402349)))

(assert (=> bs!875538 (= lambda!175933 lambda!175870)))

(declare-fun bs!875539 () Bool)

(assert (= bs!875539 (and d!1402601 d!1402455)))

(assert (=> bs!875539 (not (= lambda!175933 lambda!175900))))

(declare-fun bs!875540 () Bool)

(assert (= bs!875540 (and d!1402601 d!1402253)))

(assert (=> bs!875540 (= lambda!175933 lambda!175843)))

(declare-fun bs!875541 () Bool)

(assert (= bs!875541 (and d!1402601 d!1402421)))

(assert (=> bs!875541 (= lambda!175933 lambda!175894)))

(declare-fun bs!875542 () Bool)

(assert (= bs!875542 (and d!1402601 d!1402473)))

(assert (=> bs!875542 (= lambda!175933 lambda!175902)))

(declare-fun bs!875543 () Bool)

(assert (= bs!875543 (and d!1402601 d!1402289)))

(assert (=> bs!875543 (= lambda!175933 lambda!175853)))

(declare-fun bs!875544 () Bool)

(assert (= bs!875544 (and d!1402601 d!1402345)))

(assert (=> bs!875544 (= lambda!175933 lambda!175867)))

(declare-fun lt!1713697 () ListMap!3665)

(assert (=> d!1402601 (invariantList!1043 (toList!4403 lt!1713697))))

(declare-fun e!2828325 () ListMap!3665)

(assert (=> d!1402601 (= lt!1713697 e!2828325)))

(declare-fun c!775164 () Bool)

(assert (=> d!1402601 (= c!775164 ((_ is Cons!50749) (toList!4404 (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178)))))))

(assert (=> d!1402601 (forall!10341 (toList!4404 (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178))) lambda!175933)))

(assert (=> d!1402601 (= (extractMap!1254 (toList!4404 (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178)))) lt!1713697)))

(declare-fun b!4538790 () Bool)

(assert (=> b!4538790 (= e!2828325 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178))))) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178)))))))))

(declare-fun b!4538791 () Bool)

(assert (=> b!4538791 (= e!2828325 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402601 c!775164) b!4538790))

(assert (= (and d!1402601 (not c!775164)) b!4538791))

(declare-fun m!5303825 () Bool)

(assert (=> d!1402601 m!5303825))

(declare-fun m!5303827 () Bool)

(assert (=> d!1402601 m!5303827))

(declare-fun m!5303829 () Bool)

(assert (=> b!4538790 m!5303829))

(assert (=> b!4538790 m!5303829))

(declare-fun m!5303831 () Bool)

(assert (=> b!4538790 m!5303831))

(assert (=> d!1402353 d!1402601))

(declare-fun d!1402605 () Bool)

(declare-fun e!2828326 () Bool)

(assert (=> d!1402605 e!2828326))

(declare-fun res!1891402 () Bool)

(assert (=> d!1402605 (=> (not res!1891402) (not e!2828326))))

(declare-fun lt!1713699 () ListLongMap!3035)

(assert (=> d!1402605 (= res!1891402 (contains!13539 lt!1713699 (_1!28908 (tuple2!51229 hash!344 newBucket!178))))))

(declare-fun lt!1713700 () List!50873)

(assert (=> d!1402605 (= lt!1713699 (ListLongMap!3036 lt!1713700))))

(declare-fun lt!1713698 () Unit!98176)

(declare-fun lt!1713701 () Unit!98176)

(assert (=> d!1402605 (= lt!1713698 lt!1713701)))

(assert (=> d!1402605 (= (getValueByKey!1145 lt!1713700 (_1!28908 (tuple2!51229 hash!344 newBucket!178))) (Some!11200 (_2!28908 (tuple2!51229 hash!344 newBucket!178))))))

(assert (=> d!1402605 (= lt!1713701 (lemmaContainsTupThenGetReturnValue!718 lt!1713700 (_1!28908 (tuple2!51229 hash!344 newBucket!178)) (_2!28908 (tuple2!51229 hash!344 newBucket!178))))))

(assert (=> d!1402605 (= lt!1713700 (insertStrictlySorted!434 (toList!4404 lt!1713100) (_1!28908 (tuple2!51229 hash!344 newBucket!178)) (_2!28908 (tuple2!51229 hash!344 newBucket!178))))))

(assert (=> d!1402605 (= (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178)) lt!1713699)))

(declare-fun b!4538792 () Bool)

(declare-fun res!1891401 () Bool)

(assert (=> b!4538792 (=> (not res!1891401) (not e!2828326))))

(assert (=> b!4538792 (= res!1891401 (= (getValueByKey!1145 (toList!4404 lt!1713699) (_1!28908 (tuple2!51229 hash!344 newBucket!178))) (Some!11200 (_2!28908 (tuple2!51229 hash!344 newBucket!178)))))))

(declare-fun b!4538793 () Bool)

(assert (=> b!4538793 (= e!2828326 (contains!13537 (toList!4404 lt!1713699) (tuple2!51229 hash!344 newBucket!178)))))

(assert (= (and d!1402605 res!1891402) b!4538792))

(assert (= (and b!4538792 res!1891401) b!4538793))

(declare-fun m!5303833 () Bool)

(assert (=> d!1402605 m!5303833))

(declare-fun m!5303835 () Bool)

(assert (=> d!1402605 m!5303835))

(declare-fun m!5303837 () Bool)

(assert (=> d!1402605 m!5303837))

(declare-fun m!5303839 () Bool)

(assert (=> d!1402605 m!5303839))

(declare-fun m!5303841 () Bool)

(assert (=> b!4538792 m!5303841))

(declare-fun m!5303843 () Bool)

(assert (=> b!4538793 m!5303843))

(assert (=> d!1402353 d!1402605))

(declare-fun d!1402607 () Bool)

(declare-fun e!2828327 () Bool)

(assert (=> d!1402607 e!2828327))

(declare-fun res!1891403 () Bool)

(assert (=> d!1402607 (=> (not res!1891403) (not e!2828327))))

(declare-fun lt!1713702 () ListMap!3665)

(assert (=> d!1402607 (= res!1891403 (not (contains!13538 lt!1713702 key!3287)))))

(assert (=> d!1402607 (= lt!1713702 (ListMap!3666 (removePresrvNoDuplicatedKeys!167 (toList!4403 (extractMap!1254 (toList!4404 lt!1713100))) key!3287)))))

(assert (=> d!1402607 (= (-!424 (extractMap!1254 (toList!4404 lt!1713100)) key!3287) lt!1713702)))

(declare-fun b!4538794 () Bool)

(assert (=> b!4538794 (= e!2828327 (= ((_ map and) (content!8435 (keys!17658 (extractMap!1254 (toList!4404 lt!1713100)))) ((_ map not) (store ((as const (Array K!12135 Bool)) false) key!3287 true))) (content!8435 (keys!17658 lt!1713702))))))

(assert (= (and d!1402607 res!1891403) b!4538794))

(declare-fun m!5303845 () Bool)

(assert (=> d!1402607 m!5303845))

(declare-fun m!5303847 () Bool)

(assert (=> d!1402607 m!5303847))

(declare-fun m!5303849 () Bool)

(assert (=> b!4538794 m!5303849))

(declare-fun m!5303851 () Bool)

(assert (=> b!4538794 m!5303851))

(assert (=> b!4538794 m!5302995))

(assert (=> b!4538794 m!5303849))

(declare-fun m!5303853 () Bool)

(assert (=> b!4538794 m!5303853))

(declare-fun m!5303855 () Bool)

(assert (=> b!4538794 m!5303855))

(assert (=> b!4538794 m!5302545))

(assert (=> b!4538794 m!5303853))

(assert (=> d!1402353 d!1402607))

(assert (=> d!1402353 d!1402473))

(declare-fun d!1402609 () Bool)

(assert (=> d!1402609 (= (eq!655 (extractMap!1254 (toList!4404 (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178)))) (-!424 (extractMap!1254 (toList!4404 lt!1713100)) key!3287)) (= (content!8434 (toList!4403 (extractMap!1254 (toList!4404 (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178)))))) (content!8434 (toList!4403 (-!424 (extractMap!1254 (toList!4404 lt!1713100)) key!3287)))))))

(declare-fun bs!875545 () Bool)

(assert (= bs!875545 d!1402609))

(declare-fun m!5303857 () Bool)

(assert (=> bs!875545 m!5303857))

(declare-fun m!5303859 () Bool)

(assert (=> bs!875545 m!5303859))

(assert (=> d!1402353 d!1402609))

(declare-fun d!1402611 () Bool)

(assert (=> d!1402611 (eq!655 (extractMap!1254 (toList!4404 (+!1602 lt!1713100 (tuple2!51229 hash!344 newBucket!178)))) (-!424 (extractMap!1254 (toList!4404 lt!1713100)) key!3287))))

(assert (=> d!1402611 true))

(declare-fun _$8!695 () Unit!98176)

(assert (=> d!1402611 (= (choose!29869 lt!1713100 hash!344 newBucket!178 key!3287 hashF!1107) _$8!695)))

(declare-fun bs!875546 () Bool)

(assert (= bs!875546 d!1402611))

(assert (=> bs!875546 m!5303103))

(assert (=> bs!875546 m!5303097))

(assert (=> bs!875546 m!5303095))

(assert (=> bs!875546 m!5303101))

(assert (=> bs!875546 m!5302545))

(assert (=> bs!875546 m!5302545))

(assert (=> bs!875546 m!5303095))

(assert (=> bs!875546 m!5303097))

(assert (=> d!1402353 d!1402611))

(declare-fun d!1402617 () Bool)

(declare-fun res!1891410 () Bool)

(declare-fun e!2828337 () Bool)

(assert (=> d!1402617 (=> res!1891410 e!2828337)))

(assert (=> d!1402617 (= res!1891410 (not ((_ is Cons!50748) (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> d!1402617 (= (noDuplicateKeys!1198 (t!357834 (_2!28908 lt!1713093))) e!2828337)))

(declare-fun b!4538813 () Bool)

(declare-fun e!2828338 () Bool)

(assert (=> b!4538813 (= e!2828337 e!2828338)))

(declare-fun res!1891411 () Bool)

(assert (=> b!4538813 (=> (not res!1891411) (not e!2828338))))

(assert (=> b!4538813 (= res!1891411 (not (containsKey!1870 (t!357834 (t!357834 (_2!28908 lt!1713093))) (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))))

(declare-fun b!4538814 () Bool)

(assert (=> b!4538814 (= e!2828338 (noDuplicateKeys!1198 (t!357834 (t!357834 (_2!28908 lt!1713093)))))))

(assert (= (and d!1402617 (not res!1891410)) b!4538813))

(assert (= (and b!4538813 res!1891411) b!4538814))

(declare-fun m!5303871 () Bool)

(assert (=> b!4538813 m!5303871))

(declare-fun m!5303873 () Bool)

(assert (=> b!4538814 m!5303873))

(assert (=> b!4538359 d!1402617))

(declare-fun d!1402619 () Bool)

(declare-fun c!775171 () Bool)

(assert (=> d!1402619 (= c!775171 ((_ is Nil!50751) (keys!17658 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))

(declare-fun e!2828339 () (InoxSet K!12135))

(assert (=> d!1402619 (= (content!8435 (keys!17658 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) e!2828339)))

(declare-fun b!4538815 () Bool)

(assert (=> b!4538815 (= e!2828339 ((as const (Array K!12135 Bool)) false))))

(declare-fun b!4538816 () Bool)

(assert (=> b!4538816 (= e!2828339 ((_ map or) (store ((as const (Array K!12135 Bool)) false) (h!56632 (keys!17658 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) true) (content!8435 (t!357837 (keys!17658 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))))

(assert (= (and d!1402619 c!775171) b!4538815))

(assert (= (and d!1402619 (not c!775171)) b!4538816))

(declare-fun m!5303875 () Bool)

(assert (=> b!4538816 m!5303875))

(declare-fun m!5303877 () Bool)

(assert (=> b!4538816 m!5303877))

(assert (=> b!4538613 d!1402619))

(declare-fun bs!875547 () Bool)

(declare-fun b!4538818 () Bool)

(assert (= bs!875547 (and b!4538818 b!4538664)))

(declare-fun lambda!175934 () Int)

(assert (=> bs!875547 (= (= (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) (toList!4403 lt!1713103)) (= lambda!175934 lambda!175914))))

(declare-fun bs!875548 () Bool)

(assert (= bs!875548 (and b!4538818 b!4538671)))

(assert (=> bs!875548 (= (= (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) (toList!4403 lt!1713382)) (= lambda!175934 lambda!175916))))

(assert (=> b!4538818 true))

(declare-fun bs!875549 () Bool)

(declare-fun b!4538819 () Bool)

(assert (= bs!875549 (and b!4538819 b!4538665)))

(declare-fun lambda!175935 () Int)

(assert (=> bs!875549 (= lambda!175935 lambda!175915)))

(declare-fun bs!875550 () Bool)

(assert (= bs!875550 (and b!4538819 b!4538672)))

(assert (=> bs!875550 (= lambda!175935 lambda!175917)))

(declare-fun d!1402621 () Bool)

(declare-fun e!2828340 () Bool)

(assert (=> d!1402621 e!2828340))

(declare-fun res!1891413 () Bool)

(assert (=> d!1402621 (=> (not res!1891413) (not e!2828340))))

(declare-fun lt!1713706 () List!50875)

(assert (=> d!1402621 (= res!1891413 (noDuplicate!761 lt!1713706))))

(assert (=> d!1402621 (= lt!1713706 (getKeysList!491 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))

(assert (=> d!1402621 (= (keys!17658 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) lt!1713706)))

(declare-fun b!4538817 () Bool)

(declare-fun res!1891412 () Bool)

(assert (=> b!4538817 (=> (not res!1891412) (not e!2828340))))

(assert (=> b!4538817 (= res!1891412 (= (length!378 lt!1713706) (length!379 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))))))

(declare-fun res!1891414 () Bool)

(assert (=> b!4538818 (=> (not res!1891414) (not e!2828340))))

(assert (=> b!4538818 (= res!1891414 (forall!10344 lt!1713706 lambda!175934))))

(assert (=> b!4538819 (= e!2828340 (= (content!8435 lt!1713706) (content!8435 (map!11171 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) lambda!175935))))))

(assert (= (and d!1402621 res!1891413) b!4538817))

(assert (= (and b!4538817 res!1891412) b!4538818))

(assert (= (and b!4538818 res!1891414) b!4538819))

(declare-fun m!5303879 () Bool)

(assert (=> d!1402621 m!5303879))

(declare-fun m!5303881 () Bool)

(assert (=> d!1402621 m!5303881))

(declare-fun m!5303883 () Bool)

(assert (=> b!4538817 m!5303883))

(declare-fun m!5303885 () Bool)

(assert (=> b!4538817 m!5303885))

(declare-fun m!5303887 () Bool)

(assert (=> b!4538818 m!5303887))

(declare-fun m!5303889 () Bool)

(assert (=> b!4538819 m!5303889))

(declare-fun m!5303891 () Bool)

(assert (=> b!4538819 m!5303891))

(assert (=> b!4538819 m!5303891))

(declare-fun m!5303893 () Bool)

(assert (=> b!4538819 m!5303893))

(assert (=> b!4538613 d!1402621))

(declare-fun d!1402623 () Bool)

(declare-fun c!775172 () Bool)

(assert (=> d!1402623 (= c!775172 ((_ is Nil!50751) (keys!17658 lt!1713578)))))

(declare-fun e!2828341 () (InoxSet K!12135))

(assert (=> d!1402623 (= (content!8435 (keys!17658 lt!1713578)) e!2828341)))

(declare-fun b!4538820 () Bool)

(assert (=> b!4538820 (= e!2828341 ((as const (Array K!12135 Bool)) false))))

(declare-fun b!4538821 () Bool)

(assert (=> b!4538821 (= e!2828341 ((_ map or) (store ((as const (Array K!12135 Bool)) false) (h!56632 (keys!17658 lt!1713578)) true) (content!8435 (t!357837 (keys!17658 lt!1713578)))))))

(assert (= (and d!1402623 c!775172) b!4538820))

(assert (= (and d!1402623 (not c!775172)) b!4538821))

(declare-fun m!5303895 () Bool)

(assert (=> b!4538821 m!5303895))

(declare-fun m!5303897 () Bool)

(assert (=> b!4538821 m!5303897))

(assert (=> b!4538613 d!1402623))

(declare-fun bs!875551 () Bool)

(declare-fun b!4538823 () Bool)

(assert (= bs!875551 (and b!4538823 b!4538664)))

(declare-fun lambda!175936 () Int)

(assert (=> bs!875551 (= (= (toList!4403 lt!1713578) (toList!4403 lt!1713103)) (= lambda!175936 lambda!175914))))

(declare-fun bs!875552 () Bool)

(assert (= bs!875552 (and b!4538823 b!4538671)))

(assert (=> bs!875552 (= (= (toList!4403 lt!1713578) (toList!4403 lt!1713382)) (= lambda!175936 lambda!175916))))

(declare-fun bs!875553 () Bool)

(assert (= bs!875553 (and b!4538823 b!4538818)))

(assert (=> bs!875553 (= (= (toList!4403 lt!1713578) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!175936 lambda!175934))))

(assert (=> b!4538823 true))

(declare-fun bs!875554 () Bool)

(declare-fun b!4538824 () Bool)

(assert (= bs!875554 (and b!4538824 b!4538665)))

(declare-fun lambda!175937 () Int)

(assert (=> bs!875554 (= lambda!175937 lambda!175915)))

(declare-fun bs!875555 () Bool)

(assert (= bs!875555 (and b!4538824 b!4538672)))

(assert (=> bs!875555 (= lambda!175937 lambda!175917)))

(declare-fun bs!875556 () Bool)

(assert (= bs!875556 (and b!4538824 b!4538819)))

(assert (=> bs!875556 (= lambda!175937 lambda!175935)))

(declare-fun d!1402625 () Bool)

(declare-fun e!2828342 () Bool)

(assert (=> d!1402625 e!2828342))

(declare-fun res!1891416 () Bool)

(assert (=> d!1402625 (=> (not res!1891416) (not e!2828342))))

(declare-fun lt!1713707 () List!50875)

(assert (=> d!1402625 (= res!1891416 (noDuplicate!761 lt!1713707))))

(assert (=> d!1402625 (= lt!1713707 (getKeysList!491 (toList!4403 lt!1713578)))))

(assert (=> d!1402625 (= (keys!17658 lt!1713578) lt!1713707)))

(declare-fun b!4538822 () Bool)

(declare-fun res!1891415 () Bool)

(assert (=> b!4538822 (=> (not res!1891415) (not e!2828342))))

(assert (=> b!4538822 (= res!1891415 (= (length!378 lt!1713707) (length!379 (toList!4403 lt!1713578))))))

(declare-fun res!1891417 () Bool)

(assert (=> b!4538823 (=> (not res!1891417) (not e!2828342))))

(assert (=> b!4538823 (= res!1891417 (forall!10344 lt!1713707 lambda!175936))))

(assert (=> b!4538824 (= e!2828342 (= (content!8435 lt!1713707) (content!8435 (map!11171 (toList!4403 lt!1713578) lambda!175937))))))

(assert (= (and d!1402625 res!1891416) b!4538822))

(assert (= (and b!4538822 res!1891415) b!4538823))

(assert (= (and b!4538823 res!1891417) b!4538824))

(declare-fun m!5303899 () Bool)

(assert (=> d!1402625 m!5303899))

(declare-fun m!5303901 () Bool)

(assert (=> d!1402625 m!5303901))

(declare-fun m!5303903 () Bool)

(assert (=> b!4538822 m!5303903))

(declare-fun m!5303905 () Bool)

(assert (=> b!4538822 m!5303905))

(declare-fun m!5303907 () Bool)

(assert (=> b!4538823 m!5303907))

(declare-fun m!5303909 () Bool)

(assert (=> b!4538824 m!5303909))

(declare-fun m!5303911 () Bool)

(assert (=> b!4538824 m!5303911))

(assert (=> b!4538824 m!5303911))

(declare-fun m!5303913 () Bool)

(assert (=> b!4538824 m!5303913))

(assert (=> b!4538613 d!1402625))

(declare-fun d!1402627 () Bool)

(declare-fun res!1891418 () Bool)

(declare-fun e!2828343 () Bool)

(assert (=> d!1402627 (=> res!1891418 e!2828343)))

(assert (=> d!1402627 (= res!1891418 ((_ is Nil!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402627 (= (forall!10341 (toList!4404 lm!1477) lambda!175900) e!2828343)))

(declare-fun b!4538825 () Bool)

(declare-fun e!2828344 () Bool)

(assert (=> b!4538825 (= e!2828343 e!2828344)))

(declare-fun res!1891419 () Bool)

(assert (=> b!4538825 (=> (not res!1891419) (not e!2828344))))

(assert (=> b!4538825 (= res!1891419 (dynLambda!21211 lambda!175900 (h!56628 (toList!4404 lm!1477))))))

(declare-fun b!4538826 () Bool)

(assert (=> b!4538826 (= e!2828344 (forall!10341 (t!357835 (toList!4404 lm!1477)) lambda!175900))))

(assert (= (and d!1402627 (not res!1891418)) b!4538825))

(assert (= (and b!4538825 res!1891419) b!4538826))

(declare-fun b_lambda!157723 () Bool)

(assert (=> (not b_lambda!157723) (not b!4538825)))

(declare-fun m!5303915 () Bool)

(assert (=> b!4538825 m!5303915))

(declare-fun m!5303917 () Bool)

(assert (=> b!4538826 m!5303917))

(assert (=> d!1402455 d!1402627))

(assert (=> b!4538530 d!1402419))

(declare-fun d!1402629 () Bool)

(declare-fun c!775173 () Bool)

(assert (=> d!1402629 (= c!775173 ((_ is Nil!50748) (toList!4403 lt!1713098)))))

(declare-fun e!2828345 () (InoxSet tuple2!51226))

(assert (=> d!1402629 (= (content!8434 (toList!4403 lt!1713098)) e!2828345)))

(declare-fun b!4538827 () Bool)

(assert (=> b!4538827 (= e!2828345 ((as const (Array tuple2!51226 Bool)) false))))

(declare-fun b!4538828 () Bool)

(assert (=> b!4538828 (= e!2828345 ((_ map or) (store ((as const (Array tuple2!51226 Bool)) false) (h!56627 (toList!4403 lt!1713098)) true) (content!8434 (t!357834 (toList!4403 lt!1713098)))))))

(assert (= (and d!1402629 c!775173) b!4538827))

(assert (= (and d!1402629 (not c!775173)) b!4538828))

(declare-fun m!5303919 () Bool)

(assert (=> b!4538828 m!5303919))

(declare-fun m!5303921 () Bool)

(assert (=> b!4538828 m!5303921))

(assert (=> d!1402351 d!1402629))

(declare-fun d!1402631 () Bool)

(declare-fun c!775174 () Bool)

(assert (=> d!1402631 (= c!775174 ((_ is Nil!50748) (toList!4403 lt!1713092)))))

(declare-fun e!2828346 () (InoxSet tuple2!51226))

(assert (=> d!1402631 (= (content!8434 (toList!4403 lt!1713092)) e!2828346)))

(declare-fun b!4538829 () Bool)

(assert (=> b!4538829 (= e!2828346 ((as const (Array tuple2!51226 Bool)) false))))

(declare-fun b!4538830 () Bool)

(assert (=> b!4538830 (= e!2828346 ((_ map or) (store ((as const (Array tuple2!51226 Bool)) false) (h!56627 (toList!4403 lt!1713092)) true) (content!8434 (t!357834 (toList!4403 lt!1713092)))))))

(assert (= (and d!1402631 c!775174) b!4538829))

(assert (= (and d!1402631 (not c!775174)) b!4538830))

(declare-fun m!5303923 () Bool)

(assert (=> b!4538830 m!5303923))

(declare-fun m!5303925 () Bool)

(assert (=> b!4538830 m!5303925))

(assert (=> d!1402351 d!1402631))

(declare-fun d!1402633 () Bool)

(assert (=> d!1402633 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713100) hash!344))))

(declare-fun lt!1713710 () Unit!98176)

(declare-fun choose!29888 (List!50873 (_ BitVec 64)) Unit!98176)

(assert (=> d!1402633 (= lt!1713710 (choose!29888 (toList!4404 lt!1713100) hash!344))))

(declare-fun e!2828349 () Bool)

(assert (=> d!1402633 e!2828349))

(declare-fun res!1891422 () Bool)

(assert (=> d!1402633 (=> (not res!1891422) (not e!2828349))))

(assert (=> d!1402633 (= res!1891422 (isStrictlySorted!457 (toList!4404 lt!1713100)))))

(assert (=> d!1402633 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (toList!4404 lt!1713100) hash!344) lt!1713710)))

(declare-fun b!4538833 () Bool)

(assert (=> b!4538833 (= e!2828349 (containsKey!1874 (toList!4404 lt!1713100) hash!344))))

(assert (= (and d!1402633 res!1891422) b!4538833))

(assert (=> d!1402633 m!5302899))

(assert (=> d!1402633 m!5302899))

(assert (=> d!1402633 m!5303471))

(declare-fun m!5303927 () Bool)

(assert (=> d!1402633 m!5303927))

(declare-fun m!5303929 () Bool)

(assert (=> d!1402633 m!5303929))

(assert (=> b!4538833 m!5303467))

(assert (=> b!4538610 d!1402633))

(declare-fun d!1402635 () Bool)

(declare-fun isEmpty!28750 (Option!11201) Bool)

(assert (=> d!1402635 (= (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713100) hash!344)) (not (isEmpty!28750 (getValueByKey!1145 (toList!4404 lt!1713100) hash!344))))))

(declare-fun bs!875557 () Bool)

(assert (= bs!875557 d!1402635))

(assert (=> bs!875557 m!5302899))

(declare-fun m!5303931 () Bool)

(assert (=> bs!875557 m!5303931))

(assert (=> b!4538610 d!1402635))

(declare-fun d!1402637 () Bool)

(declare-fun c!775175 () Bool)

(assert (=> d!1402637 (= c!775175 (and ((_ is Cons!50749) (toList!4404 lt!1713100)) (= (_1!28908 (h!56628 (toList!4404 lt!1713100))) hash!344)))))

(declare-fun e!2828350 () Option!11201)

(assert (=> d!1402637 (= (getValueByKey!1145 (toList!4404 lt!1713100) hash!344) e!2828350)))

(declare-fun b!4538834 () Bool)

(assert (=> b!4538834 (= e!2828350 (Some!11200 (_2!28908 (h!56628 (toList!4404 lt!1713100)))))))

(declare-fun b!4538836 () Bool)

(declare-fun e!2828351 () Option!11201)

(assert (=> b!4538836 (= e!2828351 (getValueByKey!1145 (t!357835 (toList!4404 lt!1713100)) hash!344))))

(declare-fun b!4538835 () Bool)

(assert (=> b!4538835 (= e!2828350 e!2828351)))

(declare-fun c!775176 () Bool)

(assert (=> b!4538835 (= c!775176 (and ((_ is Cons!50749) (toList!4404 lt!1713100)) (not (= (_1!28908 (h!56628 (toList!4404 lt!1713100))) hash!344))))))

(declare-fun b!4538837 () Bool)

(assert (=> b!4538837 (= e!2828351 None!11200)))

(assert (= (and d!1402637 c!775175) b!4538834))

(assert (= (and d!1402637 (not c!775175)) b!4538835))

(assert (= (and b!4538835 c!775176) b!4538836))

(assert (= (and b!4538835 (not c!775176)) b!4538837))

(declare-fun m!5303933 () Bool)

(assert (=> b!4538836 m!5303933))

(assert (=> b!4538610 d!1402637))

(declare-fun d!1402639 () Bool)

(declare-fun res!1891423 () Bool)

(declare-fun e!2828354 () Bool)

(assert (=> d!1402639 (=> res!1891423 e!2828354)))

(assert (=> d!1402639 (= res!1891423 (not ((_ is Cons!50748) (t!357834 newBucket!178))))))

(assert (=> d!1402639 (= (noDuplicateKeys!1198 (t!357834 newBucket!178)) e!2828354)))

(declare-fun b!4538842 () Bool)

(declare-fun e!2828355 () Bool)

(assert (=> b!4538842 (= e!2828354 e!2828355)))

(declare-fun res!1891424 () Bool)

(assert (=> b!4538842 (=> (not res!1891424) (not e!2828355))))

(assert (=> b!4538842 (= res!1891424 (not (containsKey!1870 (t!357834 (t!357834 newBucket!178)) (_1!28907 (h!56627 (t!357834 newBucket!178))))))))

(declare-fun b!4538843 () Bool)

(assert (=> b!4538843 (= e!2828355 (noDuplicateKeys!1198 (t!357834 (t!357834 newBucket!178))))))

(assert (= (and d!1402639 (not res!1891423)) b!4538842))

(assert (= (and b!4538842 res!1891424) b!4538843))

(declare-fun m!5303935 () Bool)

(assert (=> b!4538842 m!5303935))

(declare-fun m!5303937 () Bool)

(assert (=> b!4538843 m!5303937))

(assert (=> b!4538198 d!1402639))

(assert (=> d!1402379 d!1402511))

(declare-fun d!1402641 () Bool)

(declare-fun c!775183 () Bool)

(assert (=> d!1402641 (= c!775183 ((_ is Nil!50748) (toList!4403 lt!1713091)))))

(declare-fun e!2828360 () (InoxSet tuple2!51226))

(assert (=> d!1402641 (= (content!8434 (toList!4403 lt!1713091)) e!2828360)))

(declare-fun b!4538852 () Bool)

(assert (=> b!4538852 (= e!2828360 ((as const (Array tuple2!51226 Bool)) false))))

(declare-fun b!4538853 () Bool)

(assert (=> b!4538853 (= e!2828360 ((_ map or) (store ((as const (Array tuple2!51226 Bool)) false) (h!56627 (toList!4403 lt!1713091)) true) (content!8434 (t!357834 (toList!4403 lt!1713091)))))))

(assert (= (and d!1402641 c!775183) b!4538852))

(assert (= (and d!1402641 (not c!775183)) b!4538853))

(declare-fun m!5303939 () Bool)

(assert (=> b!4538853 m!5303939))

(declare-fun m!5303941 () Bool)

(assert (=> b!4538853 m!5303941))

(assert (=> d!1402379 d!1402641))

(declare-fun b!4538854 () Bool)

(declare-fun e!2828361 () Bool)

(assert (=> b!4538854 (= e!2828361 (not (contains!13540 (keys!17658 lt!1713578) key!3287)))))

(declare-fun bm!316463 () Bool)

(declare-fun call!316468 () Bool)

(declare-fun e!2828366 () List!50875)

(assert (=> bm!316463 (= call!316468 (contains!13540 e!2828366 key!3287))))

(declare-fun c!775184 () Bool)

(declare-fun c!775186 () Bool)

(assert (=> bm!316463 (= c!775184 c!775186)))

(declare-fun b!4538855 () Bool)

(declare-fun e!2828364 () Bool)

(assert (=> b!4538855 (= e!2828364 (contains!13540 (keys!17658 lt!1713578) key!3287))))

(declare-fun b!4538856 () Bool)

(declare-fun e!2828362 () Bool)

(assert (=> b!4538856 (= e!2828362 e!2828364)))

(declare-fun res!1891427 () Bool)

(assert (=> b!4538856 (=> (not res!1891427) (not e!2828364))))

(assert (=> b!4538856 (= res!1891427 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713578) key!3287)))))

(declare-fun b!4538857 () Bool)

(declare-fun e!2828365 () Unit!98176)

(declare-fun Unit!98310 () Unit!98176)

(assert (=> b!4538857 (= e!2828365 Unit!98310)))

(declare-fun b!4538858 () Bool)

(declare-fun e!2828363 () Unit!98176)

(assert (=> b!4538858 (= e!2828363 e!2828365)))

(declare-fun c!775185 () Bool)

(assert (=> b!4538858 (= c!775185 call!316468)))

(declare-fun d!1402643 () Bool)

(assert (=> d!1402643 e!2828362))

(declare-fun res!1891426 () Bool)

(assert (=> d!1402643 (=> res!1891426 e!2828362)))

(assert (=> d!1402643 (= res!1891426 e!2828361)))

(declare-fun res!1891425 () Bool)

(assert (=> d!1402643 (=> (not res!1891425) (not e!2828361))))

(declare-fun lt!1713714 () Bool)

(assert (=> d!1402643 (= res!1891425 (not lt!1713714))))

(declare-fun lt!1713716 () Bool)

(assert (=> d!1402643 (= lt!1713714 lt!1713716)))

(declare-fun lt!1713715 () Unit!98176)

(assert (=> d!1402643 (= lt!1713715 e!2828363)))

(assert (=> d!1402643 (= c!775186 lt!1713716)))

(assert (=> d!1402643 (= lt!1713716 (containsKey!1872 (toList!4403 lt!1713578) key!3287))))

(assert (=> d!1402643 (= (contains!13538 lt!1713578 key!3287) lt!1713714)))

(declare-fun b!4538859 () Bool)

(assert (=> b!4538859 (= e!2828366 (getKeysList!491 (toList!4403 lt!1713578)))))

(declare-fun b!4538860 () Bool)

(assert (=> b!4538860 false))

(declare-fun lt!1713720 () Unit!98176)

(declare-fun lt!1713717 () Unit!98176)

(assert (=> b!4538860 (= lt!1713720 lt!1713717)))

(assert (=> b!4538860 (containsKey!1872 (toList!4403 lt!1713578) key!3287)))

(assert (=> b!4538860 (= lt!1713717 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713578) key!3287))))

(declare-fun Unit!98311 () Unit!98176)

(assert (=> b!4538860 (= e!2828365 Unit!98311)))

(declare-fun b!4538861 () Bool)

(declare-fun lt!1713718 () Unit!98176)

(assert (=> b!4538861 (= e!2828363 lt!1713718)))

(declare-fun lt!1713719 () Unit!98176)

(assert (=> b!4538861 (= lt!1713719 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713578) key!3287))))

(assert (=> b!4538861 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713578) key!3287))))

(declare-fun lt!1713713 () Unit!98176)

(assert (=> b!4538861 (= lt!1713713 lt!1713719)))

(assert (=> b!4538861 (= lt!1713718 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713578) key!3287))))

(assert (=> b!4538861 call!316468))

(declare-fun b!4538862 () Bool)

(assert (=> b!4538862 (= e!2828366 (keys!17658 lt!1713578))))

(assert (= (and d!1402643 c!775186) b!4538861))

(assert (= (and d!1402643 (not c!775186)) b!4538858))

(assert (= (and b!4538858 c!775185) b!4538860))

(assert (= (and b!4538858 (not c!775185)) b!4538857))

(assert (= (or b!4538861 b!4538858) bm!316463))

(assert (= (and bm!316463 c!775184) b!4538859))

(assert (= (and bm!316463 (not c!775184)) b!4538862))

(assert (= (and d!1402643 res!1891425) b!4538854))

(assert (= (and d!1402643 (not res!1891426)) b!4538856))

(assert (= (and b!4538856 res!1891427) b!4538855))

(declare-fun m!5303943 () Bool)

(assert (=> bm!316463 m!5303943))

(declare-fun m!5303945 () Bool)

(assert (=> b!4538856 m!5303945))

(assert (=> b!4538856 m!5303945))

(declare-fun m!5303947 () Bool)

(assert (=> b!4538856 m!5303947))

(declare-fun m!5303949 () Bool)

(assert (=> d!1402643 m!5303949))

(assert (=> b!4538854 m!5303481))

(assert (=> b!4538854 m!5303481))

(declare-fun m!5303951 () Bool)

(assert (=> b!4538854 m!5303951))

(assert (=> b!4538862 m!5303481))

(assert (=> b!4538855 m!5303481))

(assert (=> b!4538855 m!5303481))

(assert (=> b!4538855 m!5303951))

(assert (=> b!4538860 m!5303949))

(declare-fun m!5303953 () Bool)

(assert (=> b!4538860 m!5303953))

(declare-fun m!5303955 () Bool)

(assert (=> b!4538861 m!5303955))

(assert (=> b!4538861 m!5303945))

(assert (=> b!4538861 m!5303945))

(assert (=> b!4538861 m!5303947))

(declare-fun m!5303957 () Bool)

(assert (=> b!4538861 m!5303957))

(assert (=> b!4538859 m!5303901))

(assert (=> d!1402483 d!1402643))

(declare-fun b!4538951 () Bool)

(declare-fun e!2828415 () Unit!98176)

(declare-fun Unit!98312 () Unit!98176)

(assert (=> b!4538951 (= e!2828415 Unit!98312)))

(declare-fun b!4538952 () Bool)

(declare-fun e!2828418 () List!50872)

(assert (=> b!4538952 (= e!2828418 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))

(declare-fun c!775220 () Bool)

(declare-fun call!316491 () Bool)

(assert (=> b!4538952 (= c!775220 call!316491)))

(declare-fun lt!1713775 () Unit!98176)

(declare-fun e!2828414 () Unit!98176)

(assert (=> b!4538952 (= lt!1713775 e!2828414)))

(declare-fun b!4538953 () Bool)

(declare-fun res!1891453 () Bool)

(declare-fun e!2828419 () Bool)

(assert (=> b!4538953 (=> (not res!1891453) (not e!2828419))))

(declare-fun lt!1713776 () List!50872)

(assert (=> b!4538953 (= res!1891453 (= (content!8435 (getKeysList!491 lt!1713776)) ((_ map and) (content!8435 (getKeysList!491 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))) ((_ map not) (store ((as const (Array K!12135 Bool)) false) key!3287 true)))))))

(declare-fun b!4538954 () Bool)

(declare-fun e!2828416 () Unit!98176)

(declare-fun Unit!98313 () Unit!98176)

(assert (=> b!4538954 (= e!2828416 Unit!98313)))

(declare-fun lt!1713777 () Unit!98176)

(assert (=> b!4538954 (= lt!1713777 (lemmaInGetKeysListThenContainsKey!490 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (_1!28907 (h!56627 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))))

(assert (=> b!4538954 call!316491))

(declare-fun lt!1713780 () Unit!98176)

(assert (=> b!4538954 (= lt!1713780 lt!1713777)))

(assert (=> b!4538954 false))

(declare-fun e!2828417 () Bool)

(declare-fun call!316493 () (InoxSet tuple2!51226))

(declare-fun b!4538955 () Bool)

(declare-fun call!316494 () (InoxSet tuple2!51226))

(declare-fun get!16684 (Option!11200) V!12381)

(assert (=> b!4538955 (= e!2828417 (= call!316493 ((_ map and) call!316494 ((_ map not) (store ((as const (Array tuple2!51226 Bool)) false) (tuple2!51227 key!3287 (get!16684 (getValueByKey!1144 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287))) true)))))))

(assert (=> b!4538955 (containsKey!1872 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287)))

(declare-fun lt!1713788 () Unit!98176)

(assert (=> b!4538955 (= lt!1713788 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287))))

(assert (=> b!4538955 (isDefined!8474 (getValueByKey!1144 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287))))

(declare-fun lt!1713778 () Unit!98176)

(assert (=> b!4538955 (= lt!1713778 lt!1713788)))

(declare-fun d!1402645 () Bool)

(assert (=> d!1402645 e!2828419))

(declare-fun res!1891454 () Bool)

(assert (=> d!1402645 (=> (not res!1891454) (not e!2828419))))

(assert (=> d!1402645 (= res!1891454 (invariantList!1043 lt!1713776))))

(assert (=> d!1402645 (= lt!1713776 e!2828418)))

(declare-fun c!775226 () Bool)

(assert (=> d!1402645 (= c!775226 (and ((_ is Cons!50748) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= (_1!28907 (h!56627 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))) key!3287)))))

(assert (=> d!1402645 (invariantList!1043 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))))

(assert (=> d!1402645 (= (removePresrvNoDuplicatedKeys!167 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287) lt!1713776)))

(declare-fun bm!316485 () Bool)

(assert (=> bm!316485 (= call!316491 (containsKey!1872 (ite c!775226 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))) (ite c!775226 key!3287 (_1!28907 (h!56627 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))))))))

(declare-fun b!4538956 () Bool)

(declare-fun e!2828421 () List!50872)

(assert (=> b!4538956 (= e!2828418 e!2828421)))

(declare-fun c!775222 () Bool)

(assert (=> b!4538956 (= c!775222 (and ((_ is Cons!50748) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (not (= (_1!28907 (h!56627 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))) key!3287))))))

(declare-fun b!4538957 () Bool)

(assert (=> b!4538957 (= e!2828421 Nil!50748)))

(declare-fun b!4538958 () Bool)

(declare-fun res!1891452 () Bool)

(assert (=> b!4538958 (=> (not res!1891452) (not e!2828419))))

(assert (=> b!4538958 (= res!1891452 (not (containsKey!1872 lt!1713776 key!3287)))))

(declare-fun bm!316486 () Bool)

(assert (=> bm!316486 (= call!316493 (content!8434 lt!1713776))))

(declare-fun b!4538959 () Bool)

(declare-fun e!2828420 () List!50872)

(assert (=> b!4538959 (= e!2828420 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))

(declare-fun bm!316487 () Bool)

(declare-fun call!316495 () (InoxSet tuple2!51226))

(assert (=> bm!316487 (= call!316495 (content!8434 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))

(declare-fun b!4538960 () Bool)

(declare-fun Unit!98314 () Unit!98176)

(assert (=> b!4538960 (= e!2828416 Unit!98314)))

(declare-fun b!4538961 () Bool)

(declare-fun e!2828422 () Unit!98176)

(declare-fun Unit!98315 () Unit!98176)

(assert (=> b!4538961 (= e!2828422 Unit!98315)))

(declare-fun lt!1713786 () List!50872)

(assert (=> b!4538961 (= lt!1713786 (removePresrvNoDuplicatedKeys!167 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) key!3287))))

(declare-fun lt!1713790 () Unit!98176)

(assert (=> b!4538961 (= lt!1713790 (lemmaInListThenGetKeysListContains!487 lt!1713786 (_1!28907 (h!56627 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))))

(assert (=> b!4538961 (contains!13540 (getKeysList!491 lt!1713786) (_1!28907 (h!56627 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))))))

(declare-fun lt!1713791 () Unit!98176)

(assert (=> b!4538961 (= lt!1713791 lt!1713790)))

(assert (=> b!4538961 false))

(declare-fun lt!1713781 () K!12135)

(declare-fun call!316492 () Bool)

(declare-fun bm!316488 () Bool)

(assert (=> bm!316488 (= call!316492 (containsKey!1872 e!2828420 (ite c!775226 lt!1713781 (_1!28907 (h!56627 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))))))))

(declare-fun c!775219 () Bool)

(assert (=> bm!316488 (= c!775219 c!775226)))

(declare-fun b!4538962 () Bool)

(declare-fun call!316490 () (InoxSet tuple2!51226))

(assert (=> b!4538962 (= call!316490 call!316495)))

(declare-fun Unit!98316 () Unit!98176)

(assert (=> b!4538962 (= e!2828414 Unit!98316)))

(declare-fun bm!316489 () Bool)

(assert (=> bm!316489 (= call!316494 (content!8434 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))

(declare-fun b!4538963 () Bool)

(assert (=> b!4538963 (= e!2828417 (= call!316493 call!316494))))

(declare-fun b!4538964 () Bool)

(declare-fun Unit!98317 () Unit!98176)

(assert (=> b!4538964 (= e!2828422 Unit!98317)))

(declare-fun b!4538965 () Bool)

(assert (=> b!4538965 (= e!2828419 e!2828417)))

(declare-fun c!775221 () Bool)

(assert (=> b!4538965 (= c!775221 (containsKey!1872 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287))))

(declare-fun b!4538966 () Bool)

(assert (=> b!4538966 (= e!2828420 (removePresrvNoDuplicatedKeys!167 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) key!3287))))

(declare-fun b!4538967 () Bool)

(declare-fun lt!1713782 () Unit!98176)

(assert (=> b!4538967 (= lt!1713782 e!2828422)))

(declare-fun c!775224 () Bool)

(assert (=> b!4538967 (= c!775224 call!316492)))

(declare-fun lt!1713783 () Unit!98176)

(assert (=> b!4538967 (= lt!1713783 e!2828416)))

(declare-fun c!775223 () Bool)

(assert (=> b!4538967 (= c!775223 (contains!13540 (getKeysList!491 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))) (_1!28907 (h!56627 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))))))))

(declare-fun lt!1713785 () List!50872)

(declare-fun $colon$colon!964 (List!50872 tuple2!51226) List!50872)

(assert (=> b!4538967 (= lt!1713785 ($colon$colon!964 (removePresrvNoDuplicatedKeys!167 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) key!3287) (h!56627 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))))))

(assert (=> b!4538967 (= e!2828421 lt!1713785)))

(declare-fun b!4538968 () Bool)

(assert (=> b!4538968 (= call!316490 ((_ map and) call!316495 ((_ map not) (store ((as const (Array tuple2!51226 Bool)) false) (tuple2!51227 key!3287 (get!16684 (getValueByKey!1144 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287))) true))))))

(declare-fun lt!1713784 () Unit!98176)

(assert (=> b!4538968 (= lt!1713784 e!2828415)))

(declare-fun c!775225 () Bool)

(assert (=> b!4538968 (= c!775225 (contains!13542 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (tuple2!51227 key!3287 (get!16684 (getValueByKey!1144 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287)))))))

(declare-fun Unit!98318 () Unit!98176)

(assert (=> b!4538968 (= e!2828414 Unit!98318)))

(declare-fun b!4538969 () Bool)

(declare-fun Unit!98319 () Unit!98176)

(assert (=> b!4538969 (= e!2828415 Unit!98319)))

(declare-fun lt!1713779 () V!12381)

(assert (=> b!4538969 (= lt!1713779 (get!16684 (getValueByKey!1144 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287)))))

(assert (=> b!4538969 (= lt!1713781 key!3287)))

(declare-fun lt!1713792 () K!12135)

(assert (=> b!4538969 (= lt!1713792 key!3287)))

(declare-fun lt!1713787 () Unit!98176)

(declare-fun lemmaContainsTupleThenContainsKey!76 (List!50872 K!12135 V!12381) Unit!98176)

(assert (=> b!4538969 (= lt!1713787 (lemmaContainsTupleThenContainsKey!76 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) lt!1713781 (get!16684 (getValueByKey!1144 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)) key!3287))))))

(assert (=> b!4538969 call!316492))

(declare-fun lt!1713789 () Unit!98176)

(assert (=> b!4538969 (= lt!1713789 lt!1713787)))

(assert (=> b!4538969 false))

(declare-fun bm!316490 () Bool)

(assert (=> bm!316490 (= call!316490 (content!8434 (t!357834 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103)))))))

(assert (= (and d!1402645 c!775226) b!4538952))

(assert (= (and d!1402645 (not c!775226)) b!4538956))

(assert (= (and b!4538952 c!775220) b!4538968))

(assert (= (and b!4538952 (not c!775220)) b!4538962))

(assert (= (and b!4538968 c!775225) b!4538969))

(assert (= (and b!4538968 (not c!775225)) b!4538951))

(assert (= (or b!4538968 b!4538962) bm!316490))

(assert (= (or b!4538968 b!4538962) bm!316487))

(assert (= (and b!4538956 c!775222) b!4538967))

(assert (= (and b!4538956 (not c!775222)) b!4538957))

(assert (= (and b!4538967 c!775223) b!4538954))

(assert (= (and b!4538967 (not c!775223)) b!4538960))

(assert (= (and b!4538967 c!775224) b!4538961))

(assert (= (and b!4538967 (not c!775224)) b!4538964))

(assert (= (or b!4538952 b!4538954) bm!316485))

(assert (= (or b!4538969 b!4538967) bm!316488))

(assert (= (and bm!316488 c!775219) b!4538959))

(assert (= (and bm!316488 (not c!775219)) b!4538966))

(assert (= (and d!1402645 res!1891454) b!4538958))

(assert (= (and b!4538958 res!1891452) b!4538953))

(assert (= (and b!4538953 res!1891453) b!4538965))

(assert (= (and b!4538965 c!775221) b!4538955))

(assert (= (and b!4538965 (not c!775221)) b!4538963))

(assert (= (or b!4538955 b!4538963) bm!316486))

(assert (= (or b!4538955 b!4538963) bm!316489))

(declare-fun m!5303987 () Bool)

(assert (=> b!4538969 m!5303987))

(assert (=> b!4538969 m!5303987))

(declare-fun m!5303989 () Bool)

(assert (=> b!4538969 m!5303989))

(assert (=> b!4538969 m!5303989))

(declare-fun m!5303991 () Bool)

(assert (=> b!4538969 m!5303991))

(declare-fun m!5303993 () Bool)

(assert (=> bm!316490 m!5303993))

(declare-fun m!5303995 () Bool)

(assert (=> b!4538966 m!5303995))

(declare-fun m!5303997 () Bool)

(assert (=> b!4538958 m!5303997))

(assert (=> b!4538961 m!5303995))

(declare-fun m!5303999 () Bool)

(assert (=> b!4538961 m!5303999))

(declare-fun m!5304001 () Bool)

(assert (=> b!4538961 m!5304001))

(assert (=> b!4538961 m!5304001))

(declare-fun m!5304003 () Bool)

(assert (=> b!4538961 m!5304003))

(declare-fun m!5304005 () Bool)

(assert (=> bm!316487 m!5304005))

(declare-fun m!5304007 () Bool)

(assert (=> bm!316488 m!5304007))

(assert (=> b!4538955 m!5303987))

(assert (=> b!4538955 m!5303987))

(declare-fun m!5304009 () Bool)

(assert (=> b!4538955 m!5304009))

(declare-fun m!5304011 () Bool)

(assert (=> b!4538955 m!5304011))

(declare-fun m!5304013 () Bool)

(assert (=> b!4538955 m!5304013))

(assert (=> b!4538955 m!5303987))

(assert (=> b!4538955 m!5303989))

(declare-fun m!5304015 () Bool)

(assert (=> b!4538955 m!5304015))

(assert (=> b!4538968 m!5303987))

(assert (=> b!4538968 m!5303987))

(assert (=> b!4538968 m!5303989))

(assert (=> b!4538968 m!5304011))

(declare-fun m!5304017 () Bool)

(assert (=> b!4538968 m!5304017))

(declare-fun m!5304019 () Bool)

(assert (=> bm!316485 m!5304019))

(declare-fun m!5304021 () Bool)

(assert (=> d!1402645 m!5304021))

(declare-fun m!5304023 () Bool)

(assert (=> d!1402645 m!5304023))

(declare-fun m!5304025 () Bool)

(assert (=> bm!316486 m!5304025))

(declare-fun m!5304027 () Bool)

(assert (=> b!4538967 m!5304027))

(assert (=> b!4538967 m!5304027))

(declare-fun m!5304029 () Bool)

(assert (=> b!4538967 m!5304029))

(assert (=> b!4538967 m!5303995))

(assert (=> b!4538967 m!5303995))

(declare-fun m!5304031 () Bool)

(assert (=> b!4538967 m!5304031))

(assert (=> bm!316489 m!5304005))

(assert (=> b!4538965 m!5304013))

(declare-fun m!5304039 () Bool)

(assert (=> b!4538954 m!5304039))

(declare-fun m!5304043 () Bool)

(assert (=> b!4538953 m!5304043))

(assert (=> b!4538953 m!5302995))

(assert (=> b!4538953 m!5303881))

(assert (=> b!4538953 m!5304043))

(declare-fun m!5304051 () Bool)

(assert (=> b!4538953 m!5304051))

(assert (=> b!4538953 m!5303881))

(declare-fun m!5304059 () Bool)

(assert (=> b!4538953 m!5304059))

(assert (=> d!1402483 d!1402645))

(declare-fun d!1402657 () Bool)

(declare-fun c!775235 () Bool)

(assert (=> d!1402657 (= c!775235 ((_ is Nil!50749) (toList!4404 lm!1477)))))

(declare-fun e!2828435 () (InoxSet tuple2!51228))

(assert (=> d!1402657 (= (content!8437 (toList!4404 lm!1477)) e!2828435)))

(declare-fun b!4538996 () Bool)

(assert (=> b!4538996 (= e!2828435 ((as const (Array tuple2!51228 Bool)) false))))

(declare-fun b!4538997 () Bool)

(assert (=> b!4538997 (= e!2828435 ((_ map or) (store ((as const (Array tuple2!51228 Bool)) false) (h!56628 (toList!4404 lm!1477)) true) (content!8437 (t!357835 (toList!4404 lm!1477)))))))

(assert (= (and d!1402657 c!775235) b!4538996))

(assert (= (and d!1402657 (not c!775235)) b!4538997))

(declare-fun m!5304073 () Bool)

(assert (=> b!4538997 m!5304073))

(assert (=> b!4538997 m!5303123))

(assert (=> d!1402419 d!1402657))

(declare-fun d!1402663 () Bool)

(assert (=> d!1402663 (dynLambda!21211 lambda!175769 lt!1713115)))

(assert (=> d!1402663 true))

(declare-fun _$7!1938 () Unit!98176)

(assert (=> d!1402663 (= (choose!29865 (toList!4404 lm!1477) lambda!175769 lt!1713115) _$7!1938)))

(declare-fun b_lambda!157727 () Bool)

(assert (=> (not b_lambda!157727) (not d!1402663)))

(declare-fun bs!875586 () Bool)

(assert (= bs!875586 d!1402663))

(assert (=> bs!875586 m!5303333))

(assert (=> d!1402439 d!1402663))

(assert (=> d!1402439 d!1402257))

(declare-fun d!1402665 () Bool)

(declare-fun res!1891463 () Bool)

(declare-fun e!2828436 () Bool)

(assert (=> d!1402665 (=> res!1891463 e!2828436)))

(assert (=> d!1402665 (= res!1891463 (not ((_ is Cons!50748) (_2!28908 lt!1713115))))))

(assert (=> d!1402665 (= (noDuplicateKeys!1198 (_2!28908 lt!1713115)) e!2828436)))

(declare-fun b!4538998 () Bool)

(declare-fun e!2828437 () Bool)

(assert (=> b!4538998 (= e!2828436 e!2828437)))

(declare-fun res!1891464 () Bool)

(assert (=> b!4538998 (=> (not res!1891464) (not e!2828437))))

(assert (=> b!4538998 (= res!1891464 (not (containsKey!1870 (t!357834 (_2!28908 lt!1713115)) (_1!28907 (h!56627 (_2!28908 lt!1713115))))))))

(declare-fun b!4538999 () Bool)

(assert (=> b!4538999 (= e!2828437 (noDuplicateKeys!1198 (t!357834 (_2!28908 lt!1713115))))))

(assert (= (and d!1402665 (not res!1891463)) b!4538998))

(assert (= (and b!4538998 res!1891464) b!4538999))

(declare-fun m!5304075 () Bool)

(assert (=> b!4538998 m!5304075))

(declare-fun m!5304077 () Bool)

(assert (=> b!4538999 m!5304077))

(assert (=> bs!875381 d!1402665))

(declare-fun d!1402667 () Bool)

(assert (=> d!1402667 (= (invariantList!1043 (toList!4403 lt!1713488)) (noDuplicatedKeys!276 (toList!4403 lt!1713488)))))

(declare-fun bs!875587 () Bool)

(assert (= bs!875587 d!1402667))

(declare-fun m!5304079 () Bool)

(assert (=> bs!875587 m!5304079))

(assert (=> b!4538498 d!1402667))

(declare-fun d!1402669 () Bool)

(declare-fun e!2828439 () Bool)

(assert (=> d!1402669 e!2828439))

(declare-fun res!1891465 () Bool)

(assert (=> d!1402669 (=> res!1891465 e!2828439)))

(declare-fun lt!1713809 () Bool)

(assert (=> d!1402669 (= res!1891465 (not lt!1713809))))

(declare-fun lt!1713807 () Bool)

(assert (=> d!1402669 (= lt!1713809 lt!1713807)))

(declare-fun lt!1713808 () Unit!98176)

(declare-fun e!2828438 () Unit!98176)

(assert (=> d!1402669 (= lt!1713808 e!2828438)))

(declare-fun c!775236 () Bool)

(assert (=> d!1402669 (= c!775236 lt!1713807)))

(assert (=> d!1402669 (= lt!1713807 (containsKey!1874 (toList!4404 lt!1713393) (_1!28908 lt!1713093)))))

(assert (=> d!1402669 (= (contains!13539 lt!1713393 (_1!28908 lt!1713093)) lt!1713809)))

(declare-fun b!4539000 () Bool)

(declare-fun lt!1713810 () Unit!98176)

(assert (=> b!4539000 (= e!2828438 lt!1713810)))

(assert (=> b!4539000 (= lt!1713810 (lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (toList!4404 lt!1713393) (_1!28908 lt!1713093)))))

(assert (=> b!4539000 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713393) (_1!28908 lt!1713093)))))

(declare-fun b!4539001 () Bool)

(declare-fun Unit!98320 () Unit!98176)

(assert (=> b!4539001 (= e!2828438 Unit!98320)))

(declare-fun b!4539002 () Bool)

(assert (=> b!4539002 (= e!2828439 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713393) (_1!28908 lt!1713093))))))

(assert (= (and d!1402669 c!775236) b!4539000))

(assert (= (and d!1402669 (not c!775236)) b!4539001))

(assert (= (and d!1402669 (not res!1891465)) b!4539002))

(declare-fun m!5304103 () Bool)

(assert (=> d!1402669 m!5304103))

(declare-fun m!5304107 () Bool)

(assert (=> b!4539000 m!5304107))

(assert (=> b!4539000 m!5303025))

(assert (=> b!4539000 m!5303025))

(declare-fun m!5304113 () Bool)

(assert (=> b!4539000 m!5304113))

(assert (=> b!4539002 m!5303025))

(assert (=> b!4539002 m!5303025))

(assert (=> b!4539002 m!5304113))

(assert (=> d!1402347 d!1402669))

(declare-fun d!1402673 () Bool)

(declare-fun c!775237 () Bool)

(assert (=> d!1402673 (= c!775237 (and ((_ is Cons!50749) lt!1713394) (= (_1!28908 (h!56628 lt!1713394)) (_1!28908 lt!1713093))))))

(declare-fun e!2828440 () Option!11201)

(assert (=> d!1402673 (= (getValueByKey!1145 lt!1713394 (_1!28908 lt!1713093)) e!2828440)))

(declare-fun b!4539003 () Bool)

(assert (=> b!4539003 (= e!2828440 (Some!11200 (_2!28908 (h!56628 lt!1713394))))))

(declare-fun b!4539005 () Bool)

(declare-fun e!2828441 () Option!11201)

(assert (=> b!4539005 (= e!2828441 (getValueByKey!1145 (t!357835 lt!1713394) (_1!28908 lt!1713093)))))

(declare-fun b!4539004 () Bool)

(assert (=> b!4539004 (= e!2828440 e!2828441)))

(declare-fun c!775238 () Bool)

(assert (=> b!4539004 (= c!775238 (and ((_ is Cons!50749) lt!1713394) (not (= (_1!28908 (h!56628 lt!1713394)) (_1!28908 lt!1713093)))))))

(declare-fun b!4539006 () Bool)

(assert (=> b!4539006 (= e!2828441 None!11200)))

(assert (= (and d!1402673 c!775237) b!4539003))

(assert (= (and d!1402673 (not c!775237)) b!4539004))

(assert (= (and b!4539004 c!775238) b!4539005))

(assert (= (and b!4539004 (not c!775238)) b!4539006))

(declare-fun m!5304115 () Bool)

(assert (=> b!4539005 m!5304115))

(assert (=> d!1402347 d!1402673))

(declare-fun d!1402675 () Bool)

(assert (=> d!1402675 (= (getValueByKey!1145 lt!1713394 (_1!28908 lt!1713093)) (Some!11200 (_2!28908 lt!1713093)))))

(declare-fun lt!1713815 () Unit!98176)

(declare-fun choose!29891 (List!50873 (_ BitVec 64) List!50872) Unit!98176)

(assert (=> d!1402675 (= lt!1713815 (choose!29891 lt!1713394 (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))

(declare-fun e!2828446 () Bool)

(assert (=> d!1402675 e!2828446))

(declare-fun res!1891476 () Bool)

(assert (=> d!1402675 (=> (not res!1891476) (not e!2828446))))

(assert (=> d!1402675 (= res!1891476 (isStrictlySorted!457 lt!1713394))))

(assert (=> d!1402675 (= (lemmaContainsTupThenGetReturnValue!718 lt!1713394 (_1!28908 lt!1713093) (_2!28908 lt!1713093)) lt!1713815)))

(declare-fun b!4539017 () Bool)

(declare-fun res!1891477 () Bool)

(assert (=> b!4539017 (=> (not res!1891477) (not e!2828446))))

(assert (=> b!4539017 (= res!1891477 (containsKey!1874 lt!1713394 (_1!28908 lt!1713093)))))

(declare-fun b!4539018 () Bool)

(assert (=> b!4539018 (= e!2828446 (contains!13537 lt!1713394 (tuple2!51229 (_1!28908 lt!1713093) (_2!28908 lt!1713093))))))

(assert (= (and d!1402675 res!1891476) b!4539017))

(assert (= (and b!4539017 res!1891477) b!4539018))

(assert (=> d!1402675 m!5303019))

(declare-fun m!5304117 () Bool)

(assert (=> d!1402675 m!5304117))

(declare-fun m!5304119 () Bool)

(assert (=> d!1402675 m!5304119))

(declare-fun m!5304121 () Bool)

(assert (=> b!4539017 m!5304121))

(declare-fun m!5304123 () Bool)

(assert (=> b!4539018 m!5304123))

(assert (=> d!1402347 d!1402675))

(declare-fun b!4539061 () Bool)

(declare-fun e!2828469 () List!50873)

(declare-fun call!316506 () List!50873)

(assert (=> b!4539061 (= e!2828469 call!316506)))

(declare-fun d!1402677 () Bool)

(declare-fun e!2828473 () Bool)

(assert (=> d!1402677 e!2828473))

(declare-fun res!1891492 () Bool)

(assert (=> d!1402677 (=> (not res!1891492) (not e!2828473))))

(declare-fun lt!1713841 () List!50873)

(assert (=> d!1402677 (= res!1891492 (isStrictlySorted!457 lt!1713841))))

(declare-fun e!2828470 () List!50873)

(assert (=> d!1402677 (= lt!1713841 e!2828470)))

(declare-fun c!775254 () Bool)

(assert (=> d!1402677 (= c!775254 (and ((_ is Cons!50749) (toList!4404 lt!1713100)) (bvslt (_1!28908 (h!56628 (toList!4404 lt!1713100))) (_1!28908 lt!1713093))))))

(assert (=> d!1402677 (isStrictlySorted!457 (toList!4404 lt!1713100))))

(assert (=> d!1402677 (= (insertStrictlySorted!434 (toList!4404 lt!1713100) (_1!28908 lt!1713093) (_2!28908 lt!1713093)) lt!1713841)))

(declare-fun bm!316500 () Bool)

(declare-fun call!316505 () List!50873)

(assert (=> bm!316500 (= call!316506 call!316505)))

(declare-fun b!4539062 () Bool)

(declare-fun e!2828471 () List!50873)

(assert (=> b!4539062 (= e!2828471 call!316505)))

(declare-fun b!4539063 () Bool)

(assert (=> b!4539063 (= e!2828473 (contains!13537 lt!1713841 (tuple2!51229 (_1!28908 lt!1713093) (_2!28908 lt!1713093))))))

(declare-fun b!4539064 () Bool)

(assert (=> b!4539064 (= e!2828470 e!2828471)))

(declare-fun c!775255 () Bool)

(assert (=> b!4539064 (= c!775255 (and ((_ is Cons!50749) (toList!4404 lt!1713100)) (= (_1!28908 (h!56628 (toList!4404 lt!1713100))) (_1!28908 lt!1713093))))))

(declare-fun b!4539065 () Bool)

(declare-fun e!2828472 () List!50873)

(assert (=> b!4539065 (= e!2828472 (insertStrictlySorted!434 (t!357835 (toList!4404 lt!1713100)) (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))

(declare-fun b!4539066 () Bool)

(declare-fun c!775252 () Bool)

(assert (=> b!4539066 (= e!2828472 (ite c!775255 (t!357835 (toList!4404 lt!1713100)) (ite c!775252 (Cons!50749 (h!56628 (toList!4404 lt!1713100)) (t!357835 (toList!4404 lt!1713100))) Nil!50749)))))

(declare-fun bm!316501 () Bool)

(declare-fun call!316507 () List!50873)

(assert (=> bm!316501 (= call!316505 call!316507)))

(declare-fun bm!316502 () Bool)

(declare-fun $colon$colon!965 (List!50873 tuple2!51228) List!50873)

(assert (=> bm!316502 (= call!316507 ($colon$colon!965 e!2828472 (ite c!775254 (h!56628 (toList!4404 lt!1713100)) (tuple2!51229 (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))))

(declare-fun c!775253 () Bool)

(assert (=> bm!316502 (= c!775253 c!775254)))

(declare-fun b!4539067 () Bool)

(declare-fun res!1891493 () Bool)

(assert (=> b!4539067 (=> (not res!1891493) (not e!2828473))))

(assert (=> b!4539067 (= res!1891493 (containsKey!1874 lt!1713841 (_1!28908 lt!1713093)))))

(declare-fun b!4539068 () Bool)

(assert (=> b!4539068 (= e!2828470 call!316507)))

(declare-fun b!4539069 () Bool)

(assert (=> b!4539069 (= c!775252 (and ((_ is Cons!50749) (toList!4404 lt!1713100)) (bvsgt (_1!28908 (h!56628 (toList!4404 lt!1713100))) (_1!28908 lt!1713093))))))

(assert (=> b!4539069 (= e!2828471 e!2828469)))

(declare-fun b!4539070 () Bool)

(assert (=> b!4539070 (= e!2828469 call!316506)))

(assert (= (and d!1402677 c!775254) b!4539068))

(assert (= (and d!1402677 (not c!775254)) b!4539064))

(assert (= (and b!4539064 c!775255) b!4539062))

(assert (= (and b!4539064 (not c!775255)) b!4539069))

(assert (= (and b!4539069 c!775252) b!4539070))

(assert (= (and b!4539069 (not c!775252)) b!4539061))

(assert (= (or b!4539070 b!4539061) bm!316500))

(assert (= (or b!4539062 bm!316500) bm!316501))

(assert (= (or b!4539068 bm!316501) bm!316502))

(assert (= (and bm!316502 c!775253) b!4539065))

(assert (= (and bm!316502 (not c!775253)) b!4539066))

(assert (= (and d!1402677 res!1891492) b!4539067))

(assert (= (and b!4539067 res!1891493) b!4539063))

(declare-fun m!5304159 () Bool)

(assert (=> b!4539065 m!5304159))

(declare-fun m!5304161 () Bool)

(assert (=> bm!316502 m!5304161))

(declare-fun m!5304163 () Bool)

(assert (=> d!1402677 m!5304163))

(assert (=> d!1402677 m!5303929))

(declare-fun m!5304165 () Bool)

(assert (=> b!4539063 m!5304165))

(declare-fun m!5304167 () Bool)

(assert (=> b!4539067 m!5304167))

(assert (=> d!1402347 d!1402677))

(assert (=> d!1402289 d!1402283))

(declare-fun d!1402691 () Bool)

(assert (=> d!1402691 (containsKeyBiggerList!178 (toList!4404 lt!1713100) key!3287)))

(assert (=> d!1402691 true))

(declare-fun _$33!709 () Unit!98176)

(assert (=> d!1402691 (= (choose!29864 lt!1713100 key!3287 hashF!1107) _$33!709)))

(declare-fun bs!875635 () Bool)

(assert (= bs!875635 d!1402691))

(assert (=> bs!875635 m!5302575))

(assert (=> d!1402289 d!1402691))

(declare-fun d!1402693 () Bool)

(declare-fun res!1891494 () Bool)

(declare-fun e!2828474 () Bool)

(assert (=> d!1402693 (=> res!1891494 e!2828474)))

(assert (=> d!1402693 (= res!1891494 ((_ is Nil!50749) (toList!4404 lt!1713100)))))

(assert (=> d!1402693 (= (forall!10341 (toList!4404 lt!1713100) lambda!175853) e!2828474)))

(declare-fun b!4539071 () Bool)

(declare-fun e!2828475 () Bool)

(assert (=> b!4539071 (= e!2828474 e!2828475)))

(declare-fun res!1891495 () Bool)

(assert (=> b!4539071 (=> (not res!1891495) (not e!2828475))))

(assert (=> b!4539071 (= res!1891495 (dynLambda!21211 lambda!175853 (h!56628 (toList!4404 lt!1713100))))))

(declare-fun b!4539072 () Bool)

(assert (=> b!4539072 (= e!2828475 (forall!10341 (t!357835 (toList!4404 lt!1713100)) lambda!175853))))

(assert (= (and d!1402693 (not res!1891494)) b!4539071))

(assert (= (and b!4539071 res!1891495) b!4539072))

(declare-fun b_lambda!157731 () Bool)

(assert (=> (not b_lambda!157731) (not b!4539071)))

(declare-fun m!5304187 () Bool)

(assert (=> b!4539071 m!5304187))

(declare-fun m!5304189 () Bool)

(assert (=> b!4539072 m!5304189))

(assert (=> d!1402289 d!1402693))

(declare-fun d!1402695 () Bool)

(declare-fun res!1891496 () Bool)

(declare-fun e!2828476 () Bool)

(assert (=> d!1402695 (=> res!1891496 e!2828476)))

(assert (=> d!1402695 (= res!1891496 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1402695 (= (forall!10343 (_2!28908 lt!1713093) lambda!175838) e!2828476)))

(declare-fun b!4539073 () Bool)

(declare-fun e!2828477 () Bool)

(assert (=> b!4539073 (= e!2828476 e!2828477)))

(declare-fun res!1891497 () Bool)

(assert (=> b!4539073 (=> (not res!1891497) (not e!2828477))))

(assert (=> b!4539073 (= res!1891497 (dynLambda!21212 lambda!175838 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun b!4539074 () Bool)

(assert (=> b!4539074 (= e!2828477 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!175838))))

(assert (= (and d!1402695 (not res!1891496)) b!4539073))

(assert (= (and b!4539073 res!1891497) b!4539074))

(declare-fun b_lambda!157733 () Bool)

(assert (=> (not b_lambda!157733) (not b!4539073)))

(declare-fun m!5304199 () Bool)

(assert (=> b!4539073 m!5304199))

(declare-fun m!5304201 () Bool)

(assert (=> b!4539074 m!5304201))

(assert (=> d!1402229 d!1402695))

(assert (=> d!1402229 d!1402299))

(declare-fun d!1402697 () Bool)

(declare-fun res!1891498 () Bool)

(declare-fun e!2828478 () Bool)

(assert (=> d!1402697 (=> res!1891498 e!2828478)))

(assert (=> d!1402697 (= res!1891498 ((_ is Nil!50748) (ite c!775129 (toList!4403 lt!1713103) (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> d!1402697 (= (forall!10343 (ite c!775129 (toList!4403 lt!1713103) (t!357834 (_2!28908 lt!1713093))) (ite c!775129 lambda!175906 lambda!175908)) e!2828478)))

(declare-fun b!4539075 () Bool)

(declare-fun e!2828479 () Bool)

(assert (=> b!4539075 (= e!2828478 e!2828479)))

(declare-fun res!1891499 () Bool)

(assert (=> b!4539075 (=> (not res!1891499) (not e!2828479))))

(assert (=> b!4539075 (= res!1891499 (dynLambda!21212 (ite c!775129 lambda!175906 lambda!175908) (h!56627 (ite c!775129 (toList!4403 lt!1713103) (t!357834 (_2!28908 lt!1713093))))))))

(declare-fun b!4539076 () Bool)

(assert (=> b!4539076 (= e!2828479 (forall!10343 (t!357834 (ite c!775129 (toList!4403 lt!1713103) (t!357834 (_2!28908 lt!1713093)))) (ite c!775129 lambda!175906 lambda!175908)))))

(assert (= (and d!1402697 (not res!1891498)) b!4539075))

(assert (= (and b!4539075 res!1891499) b!4539076))

(declare-fun b_lambda!157735 () Bool)

(assert (=> (not b_lambda!157735) (not b!4539075)))

(declare-fun m!5304213 () Bool)

(assert (=> b!4539075 m!5304213))

(declare-fun m!5304215 () Bool)

(assert (=> b!4539076 m!5304215))

(assert (=> bm!316454 d!1402697))

(declare-fun d!1402701 () Bool)

(assert (=> d!1402701 (= (get!16682 (getValueByKey!1145 (toList!4404 lt!1713100) hash!344)) (v!44892 (getValueByKey!1145 (toList!4404 lt!1713100) hash!344)))))

(assert (=> d!1402295 d!1402701))

(assert (=> d!1402295 d!1402637))

(declare-fun d!1402703 () Bool)

(declare-fun res!1891500 () Bool)

(declare-fun e!2828481 () Bool)

(assert (=> d!1402703 (=> res!1891500 e!2828481)))

(assert (=> d!1402703 (= res!1891500 ((_ is Nil!50748) (toList!4403 lt!1713121)))))

(assert (=> d!1402703 (= (forall!10343 (toList!4403 lt!1713121) lambda!175838) e!2828481)))

(declare-fun b!4539079 () Bool)

(declare-fun e!2828482 () Bool)

(assert (=> b!4539079 (= e!2828481 e!2828482)))

(declare-fun res!1891501 () Bool)

(assert (=> b!4539079 (=> (not res!1891501) (not e!2828482))))

(assert (=> b!4539079 (= res!1891501 (dynLambda!21212 lambda!175838 (h!56627 (toList!4403 lt!1713121))))))

(declare-fun b!4539080 () Bool)

(assert (=> b!4539080 (= e!2828482 (forall!10343 (t!357834 (toList!4403 lt!1713121)) lambda!175838))))

(assert (= (and d!1402703 (not res!1891500)) b!4539079))

(assert (= (and b!4539079 res!1891501) b!4539080))

(declare-fun b_lambda!157737 () Bool)

(assert (=> (not b_lambda!157737) (not b!4539079)))

(declare-fun m!5304217 () Bool)

(assert (=> b!4539079 m!5304217))

(declare-fun m!5304219 () Bool)

(assert (=> b!4539080 m!5304219))

(assert (=> b!4538246 d!1402703))

(declare-fun d!1402705 () Bool)

(declare-fun lt!1713845 () Bool)

(assert (=> d!1402705 (= lt!1713845 (select (content!8435 (keys!17658 lt!1713092)) key!3287))))

(declare-fun e!2828487 () Bool)

(assert (=> d!1402705 (= lt!1713845 e!2828487)))

(declare-fun res!1891506 () Bool)

(assert (=> d!1402705 (=> (not res!1891506) (not e!2828487))))

(assert (=> d!1402705 (= res!1891506 ((_ is Cons!50751) (keys!17658 lt!1713092)))))

(assert (=> d!1402705 (= (contains!13540 (keys!17658 lt!1713092) key!3287) lt!1713845)))

(declare-fun b!4539085 () Bool)

(declare-fun e!2828488 () Bool)

(assert (=> b!4539085 (= e!2828487 e!2828488)))

(declare-fun res!1891507 () Bool)

(assert (=> b!4539085 (=> res!1891507 e!2828488)))

(assert (=> b!4539085 (= res!1891507 (= (h!56632 (keys!17658 lt!1713092)) key!3287))))

(declare-fun b!4539086 () Bool)

(assert (=> b!4539086 (= e!2828488 (contains!13540 (t!357837 (keys!17658 lt!1713092)) key!3287))))

(assert (= (and d!1402705 res!1891506) b!4539085))

(assert (= (and b!4539085 (not res!1891507)) b!4539086))

(assert (=> d!1402705 m!5302801))

(assert (=> d!1402705 m!5303141))

(declare-fun m!5304229 () Bool)

(assert (=> d!1402705 m!5304229))

(declare-fun m!5304231 () Bool)

(assert (=> b!4539086 m!5304231))

(assert (=> b!4538313 d!1402705))

(declare-fun bs!875650 () Bool)

(declare-fun b!4539090 () Bool)

(assert (= bs!875650 (and b!4539090 b!4538664)))

(declare-fun lambda!175966 () Int)

(assert (=> bs!875650 (= (= (toList!4403 lt!1713092) (toList!4403 lt!1713103)) (= lambda!175966 lambda!175914))))

(declare-fun bs!875651 () Bool)

(assert (= bs!875651 (and b!4539090 b!4538671)))

(assert (=> bs!875651 (= (= (toList!4403 lt!1713092) (toList!4403 lt!1713382)) (= lambda!175966 lambda!175916))))

(declare-fun bs!875652 () Bool)

(assert (= bs!875652 (and b!4539090 b!4538818)))

(assert (=> bs!875652 (= (= (toList!4403 lt!1713092) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!175966 lambda!175934))))

(declare-fun bs!875653 () Bool)

(assert (= bs!875653 (and b!4539090 b!4538823)))

(assert (=> bs!875653 (= (= (toList!4403 lt!1713092) (toList!4403 lt!1713578)) (= lambda!175966 lambda!175936))))

(assert (=> b!4539090 true))

(declare-fun bs!875654 () Bool)

(declare-fun b!4539091 () Bool)

(assert (= bs!875654 (and b!4539091 b!4538665)))

(declare-fun lambda!175967 () Int)

(assert (=> bs!875654 (= lambda!175967 lambda!175915)))

(declare-fun bs!875655 () Bool)

(assert (= bs!875655 (and b!4539091 b!4538672)))

(assert (=> bs!875655 (= lambda!175967 lambda!175917)))

(declare-fun bs!875656 () Bool)

(assert (= bs!875656 (and b!4539091 b!4538819)))

(assert (=> bs!875656 (= lambda!175967 lambda!175935)))

(declare-fun bs!875657 () Bool)

(assert (= bs!875657 (and b!4539091 b!4538824)))

(assert (=> bs!875657 (= lambda!175967 lambda!175937)))

(declare-fun d!1402709 () Bool)

(declare-fun e!2828491 () Bool)

(assert (=> d!1402709 e!2828491))

(declare-fun res!1891511 () Bool)

(assert (=> d!1402709 (=> (not res!1891511) (not e!2828491))))

(declare-fun lt!1713848 () List!50875)

(assert (=> d!1402709 (= res!1891511 (noDuplicate!761 lt!1713848))))

(assert (=> d!1402709 (= lt!1713848 (getKeysList!491 (toList!4403 lt!1713092)))))

(assert (=> d!1402709 (= (keys!17658 lt!1713092) lt!1713848)))

(declare-fun b!4539089 () Bool)

(declare-fun res!1891510 () Bool)

(assert (=> b!4539089 (=> (not res!1891510) (not e!2828491))))

(assert (=> b!4539089 (= res!1891510 (= (length!378 lt!1713848) (length!379 (toList!4403 lt!1713092))))))

(declare-fun res!1891512 () Bool)

(assert (=> b!4539090 (=> (not res!1891512) (not e!2828491))))

(assert (=> b!4539090 (= res!1891512 (forall!10344 lt!1713848 lambda!175966))))

(assert (=> b!4539091 (= e!2828491 (= (content!8435 lt!1713848) (content!8435 (map!11171 (toList!4403 lt!1713092) lambda!175967))))))

(assert (= (and d!1402709 res!1891511) b!4539089))

(assert (= (and b!4539089 res!1891510) b!4539090))

(assert (= (and b!4539090 res!1891512) b!4539091))

(declare-fun m!5304237 () Bool)

(assert (=> d!1402709 m!5304237))

(assert (=> d!1402709 m!5302811))

(declare-fun m!5304239 () Bool)

(assert (=> b!4539089 m!5304239))

(declare-fun m!5304241 () Bool)

(assert (=> b!4539089 m!5304241))

(declare-fun m!5304243 () Bool)

(assert (=> b!4539090 m!5304243))

(declare-fun m!5304245 () Bool)

(assert (=> b!4539091 m!5304245))

(declare-fun m!5304247 () Bool)

(assert (=> b!4539091 m!5304247))

(assert (=> b!4539091 m!5304247))

(declare-fun m!5304249 () Bool)

(assert (=> b!4539091 m!5304249))

(assert (=> b!4538313 d!1402709))

(declare-fun d!1402713 () Bool)

(declare-fun lt!1713850 () Bool)

(assert (=> d!1402713 (= lt!1713850 (select (content!8435 (keys!17658 lt!1713103)) key!3287))))

(declare-fun e!2828493 () Bool)

(assert (=> d!1402713 (= lt!1713850 e!2828493)))

(declare-fun res!1891514 () Bool)

(assert (=> d!1402713 (=> (not res!1891514) (not e!2828493))))

(assert (=> d!1402713 (= res!1891514 ((_ is Cons!50751) (keys!17658 lt!1713103)))))

(assert (=> d!1402713 (= (contains!13540 (keys!17658 lt!1713103) key!3287) lt!1713850)))

(declare-fun b!4539093 () Bool)

(declare-fun e!2828494 () Bool)

(assert (=> b!4539093 (= e!2828493 e!2828494)))

(declare-fun res!1891515 () Bool)

(assert (=> b!4539093 (=> res!1891515 e!2828494)))

(assert (=> b!4539093 (= res!1891515 (= (h!56632 (keys!17658 lt!1713103)) key!3287))))

(declare-fun b!4539094 () Bool)

(assert (=> b!4539094 (= e!2828494 (contains!13540 (t!357837 (keys!17658 lt!1713103)) key!3287))))

(assert (= (and d!1402713 res!1891514) b!4539093))

(assert (= (and b!4539093 (not res!1891515)) b!4539094))

(assert (=> d!1402713 m!5302997))

(assert (=> d!1402713 m!5302999))

(declare-fun m!5304253 () Bool)

(assert (=> d!1402713 m!5304253))

(declare-fun m!5304255 () Bool)

(assert (=> b!4539094 m!5304255))

(assert (=> b!4538588 d!1402713))

(assert (=> b!4538588 d!1402517))

(declare-fun d!1402717 () Bool)

(declare-fun c!775259 () Bool)

(assert (=> d!1402717 (= c!775259 (and ((_ is Cons!50749) (toList!4404 lt!1713550)) (= (_1!28908 (h!56628 (toList!4404 lt!1713550))) (_1!28908 lt!1713093))))))

(declare-fun e!2828497 () Option!11201)

(assert (=> d!1402717 (= (getValueByKey!1145 (toList!4404 lt!1713550) (_1!28908 lt!1713093)) e!2828497)))

(declare-fun b!4539099 () Bool)

(assert (=> b!4539099 (= e!2828497 (Some!11200 (_2!28908 (h!56628 (toList!4404 lt!1713550)))))))

(declare-fun b!4539101 () Bool)

(declare-fun e!2828498 () Option!11201)

(assert (=> b!4539101 (= e!2828498 (getValueByKey!1145 (t!357835 (toList!4404 lt!1713550)) (_1!28908 lt!1713093)))))

(declare-fun b!4539100 () Bool)

(assert (=> b!4539100 (= e!2828497 e!2828498)))

(declare-fun c!775260 () Bool)

(assert (=> b!4539100 (= c!775260 (and ((_ is Cons!50749) (toList!4404 lt!1713550)) (not (= (_1!28908 (h!56628 (toList!4404 lt!1713550))) (_1!28908 lt!1713093)))))))

(declare-fun b!4539102 () Bool)

(assert (=> b!4539102 (= e!2828498 None!11200)))

(assert (= (and d!1402717 c!775259) b!4539099))

(assert (= (and d!1402717 (not c!775259)) b!4539100))

(assert (= (and b!4539100 c!775260) b!4539101))

(assert (= (and b!4539100 (not c!775260)) b!4539102))

(declare-fun m!5304259 () Bool)

(assert (=> b!4539101 m!5304259))

(assert (=> b!4538576 d!1402717))

(declare-fun d!1402723 () Bool)

(declare-fun res!1891516 () Bool)

(declare-fun e!2828499 () Bool)

(assert (=> d!1402723 (=> res!1891516 e!2828499)))

(assert (=> d!1402723 (= res!1891516 ((_ is Nil!50749) (t!357835 (toList!4404 lm!1477))))))

(assert (=> d!1402723 (= (forall!10341 (t!357835 (toList!4404 lm!1477)) lambda!175769) e!2828499)))

(declare-fun b!4539103 () Bool)

(declare-fun e!2828500 () Bool)

(assert (=> b!4539103 (= e!2828499 e!2828500)))

(declare-fun res!1891517 () Bool)

(assert (=> b!4539103 (=> (not res!1891517) (not e!2828500))))

(assert (=> b!4539103 (= res!1891517 (dynLambda!21211 lambda!175769 (h!56628 (t!357835 (toList!4404 lm!1477)))))))

(declare-fun b!4539104 () Bool)

(assert (=> b!4539104 (= e!2828500 (forall!10341 (t!357835 (t!357835 (toList!4404 lm!1477))) lambda!175769))))

(assert (= (and d!1402723 (not res!1891516)) b!4539103))

(assert (= (and b!4539103 res!1891517) b!4539104))

(declare-fun b_lambda!157739 () Bool)

(assert (=> (not b_lambda!157739) (not b!4539103)))

(declare-fun m!5304261 () Bool)

(assert (=> b!4539103 m!5304261))

(declare-fun m!5304263 () Bool)

(assert (=> b!4539104 m!5304263))

(assert (=> b!4538268 d!1402723))

(declare-fun d!1402725 () Bool)

(declare-fun c!775261 () Bool)

(assert (=> d!1402725 (= c!775261 (and ((_ is Cons!50749) (toList!4404 lt!1713393)) (= (_1!28908 (h!56628 (toList!4404 lt!1713393))) (_1!28908 lt!1713093))))))

(declare-fun e!2828501 () Option!11201)

(assert (=> d!1402725 (= (getValueByKey!1145 (toList!4404 lt!1713393) (_1!28908 lt!1713093)) e!2828501)))

(declare-fun b!4539105 () Bool)

(assert (=> b!4539105 (= e!2828501 (Some!11200 (_2!28908 (h!56628 (toList!4404 lt!1713393)))))))

(declare-fun b!4539107 () Bool)

(declare-fun e!2828502 () Option!11201)

(assert (=> b!4539107 (= e!2828502 (getValueByKey!1145 (t!357835 (toList!4404 lt!1713393)) (_1!28908 lt!1713093)))))

(declare-fun b!4539106 () Bool)

(assert (=> b!4539106 (= e!2828501 e!2828502)))

(declare-fun c!775262 () Bool)

(assert (=> b!4539106 (= c!775262 (and ((_ is Cons!50749) (toList!4404 lt!1713393)) (not (= (_1!28908 (h!56628 (toList!4404 lt!1713393))) (_1!28908 lt!1713093)))))))

(declare-fun b!4539108 () Bool)

(assert (=> b!4539108 (= e!2828502 None!11200)))

(assert (= (and d!1402725 c!775261) b!4539105))

(assert (= (and d!1402725 (not c!775261)) b!4539106))

(assert (= (and b!4539106 c!775262) b!4539107))

(assert (= (and b!4539106 (not c!775262)) b!4539108))

(declare-fun m!5304265 () Bool)

(assert (=> b!4539107 m!5304265))

(assert (=> b!4538400 d!1402725))

(declare-fun bs!875659 () Bool)

(declare-fun d!1402727 () Bool)

(assert (= bs!875659 (and d!1402727 d!1402485)))

(declare-fun lambda!175970 () Int)

(assert (=> bs!875659 (= (= lt!1713121 lt!1713584) (= lambda!175970 lambda!175909))))

(declare-fun bs!875660 () Bool)

(assert (= bs!875660 (and d!1402727 b!4538685)))

(assert (=> bs!875660 (= (= lt!1713121 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175970 lambda!175925))))

(declare-fun bs!875661 () Bool)

(assert (= bs!875661 (and d!1402727 d!1402523)))

(assert (=> bs!875661 (not (= lambda!175970 lambda!175918))))

(declare-fun bs!875662 () Bool)

(assert (= bs!875662 (and d!1402727 b!4538248)))

(assert (=> bs!875662 (= (= lt!1713121 lt!1713258) (= lambda!175970 lambda!175837))))

(declare-fun bs!875663 () Bool)

(assert (= bs!875663 (and d!1402727 b!4538501)))

(assert (=> bs!875663 (= (= lt!1713121 lt!1713493) (= lambda!175970 lambda!175886))))

(declare-fun bs!875664 () Bool)

(assert (= bs!875664 (and d!1402727 d!1402317)))

(assert (=> bs!875664 (not (= lambda!175970 lambda!175860))))

(assert (=> bs!875660 (= (= lt!1713121 lt!1713639) (= lambda!175970 lambda!175926))))

(assert (=> bs!875663 (= (= lt!1713121 lt!1713095) (= lambda!175970 lambda!175885))))

(declare-fun bs!875665 () Bool)

(assert (= bs!875665 (and d!1402727 d!1402531)))

(assert (=> bs!875665 (= (= lt!1713121 lt!1713634) (= lambda!175970 lambda!175927))))

(declare-fun bs!875666 () Bool)

(assert (= bs!875666 (and d!1402727 b!4538617)))

(assert (=> bs!875666 (= (= lt!1713121 lt!1713103) (= lambda!175970 lambda!175907))))

(declare-fun bs!875667 () Bool)

(assert (= bs!875667 (and d!1402727 b!4538171)))

(assert (=> bs!875667 (not (= lambda!175970 lambda!175771))))

(assert (=> bs!875662 (= lambda!175970 lambda!175836)))

(declare-fun bs!875668 () Bool)

(assert (= bs!875668 (and d!1402727 b!4538686)))

(assert (=> bs!875668 (= (= lt!1713121 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175970 lambda!175924))))

(declare-fun bs!875669 () Bool)

(assert (= bs!875669 (and d!1402727 b!4538618)))

(assert (=> bs!875669 (= (= lt!1713121 lt!1713103) (= lambda!175970 lambda!175906))))

(declare-fun bs!875670 () Bool)

(assert (= bs!875670 (and d!1402727 b!4538678)))

(assert (=> bs!875670 (= (= lt!1713121 lt!1713617) (= lambda!175970 lambda!175921))))

(declare-fun bs!875672 () Bool)

(assert (= bs!875672 (and d!1402727 d!1402409)))

(assert (=> bs!875672 (= (= lt!1713121 lt!1713488) (= lambda!175970 lambda!175888))))

(assert (=> bs!875670 (= (= lt!1713121 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175970 lambda!175920))))

(declare-fun bs!875673 () Bool)

(assert (= bs!875673 (and d!1402727 d!1402527)))

(assert (=> bs!875673 (= (= lt!1713121 lt!1713612) (= lambda!175970 lambda!175922))))

(assert (=> bs!875666 (= (= lt!1713121 lt!1713589) (= lambda!175970 lambda!175908))))

(declare-fun bs!875675 () Bool)

(assert (= bs!875675 (and d!1402727 b!4538249)))

(assert (=> bs!875675 (= lambda!175970 lambda!175834)))

(declare-fun bs!875676 () Bool)

(assert (= bs!875676 (and d!1402727 b!4538502)))

(assert (=> bs!875676 (= (= lt!1713121 lt!1713095) (= lambda!175970 lambda!175883))))

(declare-fun bs!875677 () Bool)

(assert (= bs!875677 (and d!1402727 d!1402229)))

(assert (=> bs!875677 (= (= lt!1713121 lt!1713253) (= lambda!175970 lambda!175838))))

(declare-fun bs!875678 () Bool)

(assert (= bs!875678 (and d!1402727 b!4538679)))

(assert (=> bs!875678 (= (= lt!1713121 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175970 lambda!175919))))

(declare-fun bs!875679 () Bool)

(assert (= bs!875679 (and d!1402727 d!1402545)))

(assert (=> bs!875679 (= (= lt!1713121 lt!1713589) (= lambda!175970 lambda!175932))))

(assert (=> d!1402727 true))

(assert (=> d!1402727 (forall!10343 (toList!4403 lt!1713121) lambda!175970)))

(declare-fun lt!1713853 () Unit!98176)

(declare-fun choose!29892 (ListMap!3665) Unit!98176)

(assert (=> d!1402727 (= lt!1713853 (choose!29892 lt!1713121))))

(assert (=> d!1402727 (= (lemmaContainsAllItsOwnKeys!364 lt!1713121) lt!1713853)))

(declare-fun bs!875680 () Bool)

(assert (= bs!875680 d!1402727))

(declare-fun m!5304271 () Bool)

(assert (=> bs!875680 m!5304271))

(declare-fun m!5304275 () Bool)

(assert (=> bs!875680 m!5304275))

(assert (=> bm!316430 d!1402727))

(declare-fun d!1402735 () Bool)

(declare-fun res!1891518 () Bool)

(declare-fun e!2828503 () Bool)

(assert (=> d!1402735 (=> res!1891518 e!2828503)))

(assert (=> d!1402735 (= res!1891518 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1402735 (= (forall!10343 (_2!28908 lt!1713093) lambda!175888) e!2828503)))

(declare-fun b!4539109 () Bool)

(declare-fun e!2828504 () Bool)

(assert (=> b!4539109 (= e!2828503 e!2828504)))

(declare-fun res!1891519 () Bool)

(assert (=> b!4539109 (=> (not res!1891519) (not e!2828504))))

(assert (=> b!4539109 (= res!1891519 (dynLambda!21212 lambda!175888 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun b!4539110 () Bool)

(assert (=> b!4539110 (= e!2828504 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!175888))))

(assert (= (and d!1402735 (not res!1891518)) b!4539109))

(assert (= (and b!4539109 res!1891519) b!4539110))

(declare-fun b_lambda!157741 () Bool)

(assert (=> (not b_lambda!157741) (not b!4539109)))

(declare-fun m!5304277 () Bool)

(assert (=> b!4539109 m!5304277))

(declare-fun m!5304279 () Bool)

(assert (=> b!4539110 m!5304279))

(assert (=> d!1402409 d!1402735))

(assert (=> d!1402409 d!1402299))

(declare-fun d!1402737 () Bool)

(declare-fun e!2828506 () Bool)

(assert (=> d!1402737 e!2828506))

(declare-fun res!1891520 () Bool)

(assert (=> d!1402737 (=> res!1891520 e!2828506)))

(declare-fun lt!1713856 () Bool)

(assert (=> d!1402737 (= res!1891520 (not lt!1713856))))

(declare-fun lt!1713854 () Bool)

(assert (=> d!1402737 (= lt!1713856 lt!1713854)))

(declare-fun lt!1713855 () Unit!98176)

(declare-fun e!2828505 () Unit!98176)

(assert (=> d!1402737 (= lt!1713855 e!2828505)))

(declare-fun c!775263 () Bool)

(assert (=> d!1402737 (= c!775263 lt!1713854)))

(assert (=> d!1402737 (= lt!1713854 (containsKey!1874 (toList!4404 lt!1713550) (_1!28908 lt!1713093)))))

(assert (=> d!1402737 (= (contains!13539 lt!1713550 (_1!28908 lt!1713093)) lt!1713856)))

(declare-fun b!4539111 () Bool)

(declare-fun lt!1713857 () Unit!98176)

(assert (=> b!4539111 (= e!2828505 lt!1713857)))

(assert (=> b!4539111 (= lt!1713857 (lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (toList!4404 lt!1713550) (_1!28908 lt!1713093)))))

(assert (=> b!4539111 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713550) (_1!28908 lt!1713093)))))

(declare-fun b!4539112 () Bool)

(declare-fun Unit!98332 () Unit!98176)

(assert (=> b!4539112 (= e!2828505 Unit!98332)))

(declare-fun b!4539113 () Bool)

(assert (=> b!4539113 (= e!2828506 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713550) (_1!28908 lt!1713093))))))

(assert (= (and d!1402737 c!775263) b!4539111))

(assert (= (and d!1402737 (not c!775263)) b!4539112))

(assert (= (and d!1402737 (not res!1891520)) b!4539113))

(declare-fun m!5304281 () Bool)

(assert (=> d!1402737 m!5304281))

(declare-fun m!5304283 () Bool)

(assert (=> b!4539111 m!5304283))

(assert (=> b!4539111 m!5303391))

(assert (=> b!4539111 m!5303391))

(declare-fun m!5304285 () Bool)

(assert (=> b!4539111 m!5304285))

(assert (=> b!4539113 m!5303391))

(assert (=> b!4539113 m!5303391))

(assert (=> b!4539113 m!5304285))

(assert (=> d!1402453 d!1402737))

(declare-fun d!1402741 () Bool)

(declare-fun c!775266 () Bool)

(assert (=> d!1402741 (= c!775266 (and ((_ is Cons!50749) lt!1713551) (= (_1!28908 (h!56628 lt!1713551)) (_1!28908 lt!1713093))))))

(declare-fun e!2828509 () Option!11201)

(assert (=> d!1402741 (= (getValueByKey!1145 lt!1713551 (_1!28908 lt!1713093)) e!2828509)))

(declare-fun b!4539118 () Bool)

(assert (=> b!4539118 (= e!2828509 (Some!11200 (_2!28908 (h!56628 lt!1713551))))))

(declare-fun b!4539120 () Bool)

(declare-fun e!2828510 () Option!11201)

(assert (=> b!4539120 (= e!2828510 (getValueByKey!1145 (t!357835 lt!1713551) (_1!28908 lt!1713093)))))

(declare-fun b!4539119 () Bool)

(assert (=> b!4539119 (= e!2828509 e!2828510)))

(declare-fun c!775267 () Bool)

(assert (=> b!4539119 (= c!775267 (and ((_ is Cons!50749) lt!1713551) (not (= (_1!28908 (h!56628 lt!1713551)) (_1!28908 lt!1713093)))))))

(declare-fun b!4539121 () Bool)

(assert (=> b!4539121 (= e!2828510 None!11200)))

(assert (= (and d!1402741 c!775266) b!4539118))

(assert (= (and d!1402741 (not c!775266)) b!4539119))

(assert (= (and b!4539119 c!775267) b!4539120))

(assert (= (and b!4539119 (not c!775267)) b!4539121))

(declare-fun m!5304287 () Bool)

(assert (=> b!4539120 m!5304287))

(assert (=> d!1402453 d!1402741))

(declare-fun d!1402743 () Bool)

(assert (=> d!1402743 (= (getValueByKey!1145 lt!1713551 (_1!28908 lt!1713093)) (Some!11200 (_2!28908 lt!1713093)))))

(declare-fun lt!1713858 () Unit!98176)

(assert (=> d!1402743 (= lt!1713858 (choose!29891 lt!1713551 (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))

(declare-fun e!2828511 () Bool)

(assert (=> d!1402743 e!2828511))

(declare-fun res!1891521 () Bool)

(assert (=> d!1402743 (=> (not res!1891521) (not e!2828511))))

(assert (=> d!1402743 (= res!1891521 (isStrictlySorted!457 lt!1713551))))

(assert (=> d!1402743 (= (lemmaContainsTupThenGetReturnValue!718 lt!1713551 (_1!28908 lt!1713093) (_2!28908 lt!1713093)) lt!1713858)))

(declare-fun b!4539122 () Bool)

(declare-fun res!1891522 () Bool)

(assert (=> b!4539122 (=> (not res!1891522) (not e!2828511))))

(assert (=> b!4539122 (= res!1891522 (containsKey!1874 lt!1713551 (_1!28908 lt!1713093)))))

(declare-fun b!4539123 () Bool)

(assert (=> b!4539123 (= e!2828511 (contains!13537 lt!1713551 (tuple2!51229 (_1!28908 lt!1713093) (_2!28908 lt!1713093))))))

(assert (= (and d!1402743 res!1891521) b!4539122))

(assert (= (and b!4539122 res!1891522) b!4539123))

(assert (=> d!1402743 m!5303385))

(declare-fun m!5304289 () Bool)

(assert (=> d!1402743 m!5304289))

(declare-fun m!5304291 () Bool)

(assert (=> d!1402743 m!5304291))

(declare-fun m!5304293 () Bool)

(assert (=> b!4539122 m!5304293))

(declare-fun m!5304295 () Bool)

(assert (=> b!4539123 m!5304295))

(assert (=> d!1402453 d!1402743))

(declare-fun b!4539126 () Bool)

(declare-fun e!2828513 () List!50873)

(declare-fun call!316509 () List!50873)

(assert (=> b!4539126 (= e!2828513 call!316509)))

(declare-fun d!1402745 () Bool)

(declare-fun e!2828517 () Bool)

(assert (=> d!1402745 e!2828517))

(declare-fun res!1891523 () Bool)

(assert (=> d!1402745 (=> (not res!1891523) (not e!2828517))))

(declare-fun lt!1713859 () List!50873)

(assert (=> d!1402745 (= res!1891523 (isStrictlySorted!457 lt!1713859))))

(declare-fun e!2828514 () List!50873)

(assert (=> d!1402745 (= lt!1713859 e!2828514)))

(declare-fun c!775271 () Bool)

(assert (=> d!1402745 (= c!775271 (and ((_ is Cons!50749) (toList!4404 lt!1713102)) (bvslt (_1!28908 (h!56628 (toList!4404 lt!1713102))) (_1!28908 lt!1713093))))))

(assert (=> d!1402745 (isStrictlySorted!457 (toList!4404 lt!1713102))))

(assert (=> d!1402745 (= (insertStrictlySorted!434 (toList!4404 lt!1713102) (_1!28908 lt!1713093) (_2!28908 lt!1713093)) lt!1713859)))

(declare-fun bm!316503 () Bool)

(declare-fun call!316508 () List!50873)

(assert (=> bm!316503 (= call!316509 call!316508)))

(declare-fun b!4539127 () Bool)

(declare-fun e!2828515 () List!50873)

(assert (=> b!4539127 (= e!2828515 call!316508)))

(declare-fun b!4539128 () Bool)

(assert (=> b!4539128 (= e!2828517 (contains!13537 lt!1713859 (tuple2!51229 (_1!28908 lt!1713093) (_2!28908 lt!1713093))))))

(declare-fun b!4539129 () Bool)

(assert (=> b!4539129 (= e!2828514 e!2828515)))

(declare-fun c!775272 () Bool)

(assert (=> b!4539129 (= c!775272 (and ((_ is Cons!50749) (toList!4404 lt!1713102)) (= (_1!28908 (h!56628 (toList!4404 lt!1713102))) (_1!28908 lt!1713093))))))

(declare-fun b!4539130 () Bool)

(declare-fun e!2828516 () List!50873)

(assert (=> b!4539130 (= e!2828516 (insertStrictlySorted!434 (t!357835 (toList!4404 lt!1713102)) (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))

(declare-fun b!4539131 () Bool)

(declare-fun c!775269 () Bool)

(assert (=> b!4539131 (= e!2828516 (ite c!775272 (t!357835 (toList!4404 lt!1713102)) (ite c!775269 (Cons!50749 (h!56628 (toList!4404 lt!1713102)) (t!357835 (toList!4404 lt!1713102))) Nil!50749)))))

(declare-fun bm!316504 () Bool)

(declare-fun call!316510 () List!50873)

(assert (=> bm!316504 (= call!316508 call!316510)))

(declare-fun bm!316505 () Bool)

(assert (=> bm!316505 (= call!316510 ($colon$colon!965 e!2828516 (ite c!775271 (h!56628 (toList!4404 lt!1713102)) (tuple2!51229 (_1!28908 lt!1713093) (_2!28908 lt!1713093)))))))

(declare-fun c!775270 () Bool)

(assert (=> bm!316505 (= c!775270 c!775271)))

(declare-fun b!4539132 () Bool)

(declare-fun res!1891524 () Bool)

(assert (=> b!4539132 (=> (not res!1891524) (not e!2828517))))

(assert (=> b!4539132 (= res!1891524 (containsKey!1874 lt!1713859 (_1!28908 lt!1713093)))))

(declare-fun b!4539133 () Bool)

(assert (=> b!4539133 (= e!2828514 call!316510)))

(declare-fun b!4539134 () Bool)

(assert (=> b!4539134 (= c!775269 (and ((_ is Cons!50749) (toList!4404 lt!1713102)) (bvsgt (_1!28908 (h!56628 (toList!4404 lt!1713102))) (_1!28908 lt!1713093))))))

(assert (=> b!4539134 (= e!2828515 e!2828513)))

(declare-fun b!4539135 () Bool)

(assert (=> b!4539135 (= e!2828513 call!316509)))

(assert (= (and d!1402745 c!775271) b!4539133))

(assert (= (and d!1402745 (not c!775271)) b!4539129))

(assert (= (and b!4539129 c!775272) b!4539127))

(assert (= (and b!4539129 (not c!775272)) b!4539134))

(assert (= (and b!4539134 c!775269) b!4539135))

(assert (= (and b!4539134 (not c!775269)) b!4539126))

(assert (= (or b!4539135 b!4539126) bm!316503))

(assert (= (or b!4539127 bm!316503) bm!316504))

(assert (= (or b!4539133 bm!316504) bm!316505))

(assert (= (and bm!316505 c!775270) b!4539130))

(assert (= (and bm!316505 (not c!775270)) b!4539131))

(assert (= (and d!1402745 res!1891523) b!4539132))

(assert (= (and b!4539132 res!1891524) b!4539128))

(declare-fun m!5304305 () Bool)

(assert (=> b!4539130 m!5304305))

(declare-fun m!5304307 () Bool)

(assert (=> bm!316505 m!5304307))

(declare-fun m!5304309 () Bool)

(assert (=> d!1402745 m!5304309))

(declare-fun m!5304311 () Bool)

(assert (=> d!1402745 m!5304311))

(declare-fun m!5304313 () Bool)

(assert (=> b!4539128 m!5304313))

(declare-fun m!5304315 () Bool)

(assert (=> b!4539132 m!5304315))

(assert (=> d!1402453 d!1402745))

(declare-fun b!4539143 () Bool)

(declare-fun e!2828526 () Bool)

(declare-fun e!2828525 () Bool)

(assert (=> b!4539143 (= e!2828526 e!2828525)))

(declare-fun res!1891529 () Bool)

(assert (=> b!4539143 (=> (not res!1891529) (not e!2828525))))

(declare-fun lt!1713861 () Option!11197)

(assert (=> b!4539143 (= res!1891529 (isDefined!8475 lt!1713861))))

(declare-fun b!4539144 () Bool)

(declare-fun res!1891528 () Bool)

(assert (=> b!4539144 (=> (not res!1891528) (not e!2828525))))

(assert (=> b!4539144 (= res!1891528 (= (_1!28907 (get!16681 lt!1713861)) key!3287))))

(declare-fun b!4539145 () Bool)

(declare-fun e!2828523 () Option!11197)

(assert (=> b!4539145 (= e!2828523 (Some!11196 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(declare-fun b!4539146 () Bool)

(declare-fun e!2828524 () Option!11197)

(assert (=> b!4539146 (= e!2828524 None!11196)))

(declare-fun b!4539147 () Bool)

(declare-fun e!2828522 () Bool)

(assert (=> b!4539147 (= e!2828522 (not (containsKey!1870 (t!357834 (_2!28908 lt!1713093)) key!3287)))))

(declare-fun d!1402751 () Bool)

(assert (=> d!1402751 e!2828526))

(declare-fun res!1891530 () Bool)

(assert (=> d!1402751 (=> res!1891530 e!2828526)))

(assert (=> d!1402751 (= res!1891530 e!2828522)))

(declare-fun res!1891527 () Bool)

(assert (=> d!1402751 (=> (not res!1891527) (not e!2828522))))

(assert (=> d!1402751 (= res!1891527 (isEmpty!28745 lt!1713861))))

(assert (=> d!1402751 (= lt!1713861 e!2828523)))

(declare-fun c!775275 () Bool)

(assert (=> d!1402751 (= c!775275 (and ((_ is Cons!50748) (t!357834 (_2!28908 lt!1713093))) (= (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))) key!3287)))))

(assert (=> d!1402751 (noDuplicateKeys!1198 (t!357834 (_2!28908 lt!1713093)))))

(assert (=> d!1402751 (= (getPair!214 (t!357834 (_2!28908 lt!1713093)) key!3287) lt!1713861)))

(declare-fun b!4539142 () Bool)

(assert (=> b!4539142 (= e!2828523 e!2828524)))

(declare-fun c!775276 () Bool)

(assert (=> b!4539142 (= c!775276 ((_ is Cons!50748) (t!357834 (_2!28908 lt!1713093))))))

(declare-fun b!4539148 () Bool)

(assert (=> b!4539148 (= e!2828524 (getPair!214 (t!357834 (t!357834 (_2!28908 lt!1713093))) key!3287))))

(declare-fun b!4539149 () Bool)

(assert (=> b!4539149 (= e!2828525 (contains!13542 (t!357834 (_2!28908 lt!1713093)) (get!16681 lt!1713861)))))

(assert (= (and d!1402751 c!775275) b!4539145))

(assert (= (and d!1402751 (not c!775275)) b!4539142))

(assert (= (and b!4539142 c!775276) b!4539148))

(assert (= (and b!4539142 (not c!775276)) b!4539146))

(assert (= (and d!1402751 res!1891527) b!4539147))

(assert (= (and d!1402751 (not res!1891530)) b!4539143))

(assert (= (and b!4539143 res!1891529) b!4539144))

(assert (= (and b!4539144 res!1891528) b!4539149))

(declare-fun m!5304317 () Bool)

(assert (=> b!4539149 m!5304317))

(assert (=> b!4539149 m!5304317))

(declare-fun m!5304319 () Bool)

(assert (=> b!4539149 m!5304319))

(declare-fun m!5304321 () Bool)

(assert (=> d!1402751 m!5304321))

(assert (=> d!1402751 m!5302905))

(declare-fun m!5304323 () Bool)

(assert (=> b!4539143 m!5304323))

(assert (=> b!4539147 m!5302875))

(declare-fun m!5304325 () Bool)

(assert (=> b!4539148 m!5304325))

(assert (=> b!4539144 m!5304317))

(assert (=> b!4538468 d!1402751))

(declare-fun d!1402753 () Bool)

(declare-fun e!2828529 () Bool)

(assert (=> d!1402753 e!2828529))

(declare-fun res!1891531 () Bool)

(assert (=> d!1402753 (=> res!1891531 e!2828529)))

(declare-fun lt!1713864 () Bool)

(assert (=> d!1402753 (= res!1891531 (not lt!1713864))))

(declare-fun lt!1713862 () Bool)

(assert (=> d!1402753 (= lt!1713864 lt!1713862)))

(declare-fun lt!1713863 () Unit!98176)

(declare-fun e!2828527 () Unit!98176)

(assert (=> d!1402753 (= lt!1713863 e!2828527)))

(declare-fun c!775278 () Bool)

(assert (=> d!1402753 (= c!775278 lt!1713862)))

(assert (=> d!1402753 (= lt!1713862 (containsKey!1874 (toList!4404 lt!1713546) (_1!28908 lt!1713120)))))

(assert (=> d!1402753 (= (contains!13539 lt!1713546 (_1!28908 lt!1713120)) lt!1713864)))

(declare-fun b!4539152 () Bool)

(declare-fun lt!1713865 () Unit!98176)

(assert (=> b!4539152 (= e!2828527 lt!1713865)))

(assert (=> b!4539152 (= lt!1713865 (lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (toList!4404 lt!1713546) (_1!28908 lt!1713120)))))

(assert (=> b!4539152 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713546) (_1!28908 lt!1713120)))))

(declare-fun b!4539153 () Bool)

(declare-fun Unit!98333 () Unit!98176)

(assert (=> b!4539153 (= e!2828527 Unit!98333)))

(declare-fun b!4539154 () Bool)

(assert (=> b!4539154 (= e!2828529 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713546) (_1!28908 lt!1713120))))))

(assert (= (and d!1402753 c!775278) b!4539152))

(assert (= (and d!1402753 (not c!775278)) b!4539153))

(assert (= (and d!1402753 (not res!1891531)) b!4539154))

(declare-fun m!5304331 () Bool)

(assert (=> d!1402753 m!5304331))

(declare-fun m!5304333 () Bool)

(assert (=> b!4539152 m!5304333))

(assert (=> b!4539152 m!5303379))

(assert (=> b!4539152 m!5303379))

(declare-fun m!5304335 () Bool)

(assert (=> b!4539152 m!5304335))

(assert (=> b!4539154 m!5303379))

(assert (=> b!4539154 m!5303379))

(assert (=> b!4539154 m!5304335))

(assert (=> d!1402449 d!1402753))

(declare-fun d!1402757 () Bool)

(declare-fun c!775279 () Bool)

(assert (=> d!1402757 (= c!775279 (and ((_ is Cons!50749) lt!1713547) (= (_1!28908 (h!56628 lt!1713547)) (_1!28908 lt!1713120))))))

(declare-fun e!2828531 () Option!11201)

(assert (=> d!1402757 (= (getValueByKey!1145 lt!1713547 (_1!28908 lt!1713120)) e!2828531)))

(declare-fun b!4539158 () Bool)

(assert (=> b!4539158 (= e!2828531 (Some!11200 (_2!28908 (h!56628 lt!1713547))))))

(declare-fun b!4539160 () Bool)

(declare-fun e!2828532 () Option!11201)

(assert (=> b!4539160 (= e!2828532 (getValueByKey!1145 (t!357835 lt!1713547) (_1!28908 lt!1713120)))))

(declare-fun b!4539159 () Bool)

(assert (=> b!4539159 (= e!2828531 e!2828532)))

(declare-fun c!775280 () Bool)

(assert (=> b!4539159 (= c!775280 (and ((_ is Cons!50749) lt!1713547) (not (= (_1!28908 (h!56628 lt!1713547)) (_1!28908 lt!1713120)))))))

(declare-fun b!4539161 () Bool)

(assert (=> b!4539161 (= e!2828532 None!11200)))

(assert (= (and d!1402757 c!775279) b!4539158))

(assert (= (and d!1402757 (not c!775279)) b!4539159))

(assert (= (and b!4539159 c!775280) b!4539160))

(assert (= (and b!4539159 (not c!775280)) b!4539161))

(declare-fun m!5304337 () Bool)

(assert (=> b!4539160 m!5304337))

(assert (=> d!1402449 d!1402757))

(declare-fun d!1402759 () Bool)

(assert (=> d!1402759 (= (getValueByKey!1145 lt!1713547 (_1!28908 lt!1713120)) (Some!11200 (_2!28908 lt!1713120)))))

(declare-fun lt!1713867 () Unit!98176)

(assert (=> d!1402759 (= lt!1713867 (choose!29891 lt!1713547 (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))

(declare-fun e!2828533 () Bool)

(assert (=> d!1402759 e!2828533))

(declare-fun res!1891535 () Bool)

(assert (=> d!1402759 (=> (not res!1891535) (not e!2828533))))

(assert (=> d!1402759 (= res!1891535 (isStrictlySorted!457 lt!1713547))))

(assert (=> d!1402759 (= (lemmaContainsTupThenGetReturnValue!718 lt!1713547 (_1!28908 lt!1713120) (_2!28908 lt!1713120)) lt!1713867)))

(declare-fun b!4539162 () Bool)

(declare-fun res!1891536 () Bool)

(assert (=> b!4539162 (=> (not res!1891536) (not e!2828533))))

(assert (=> b!4539162 (= res!1891536 (containsKey!1874 lt!1713547 (_1!28908 lt!1713120)))))

(declare-fun b!4539163 () Bool)

(assert (=> b!4539163 (= e!2828533 (contains!13537 lt!1713547 (tuple2!51229 (_1!28908 lt!1713120) (_2!28908 lt!1713120))))))

(assert (= (and d!1402759 res!1891535) b!4539162))

(assert (= (and b!4539162 res!1891536) b!4539163))

(assert (=> d!1402759 m!5303373))

(declare-fun m!5304339 () Bool)

(assert (=> d!1402759 m!5304339))

(declare-fun m!5304341 () Bool)

(assert (=> d!1402759 m!5304341))

(declare-fun m!5304343 () Bool)

(assert (=> b!4539162 m!5304343))

(declare-fun m!5304345 () Bool)

(assert (=> b!4539163 m!5304345))

(assert (=> d!1402449 d!1402759))

(declare-fun b!4539164 () Bool)

(declare-fun e!2828534 () List!50873)

(declare-fun call!316512 () List!50873)

(assert (=> b!4539164 (= e!2828534 call!316512)))

(declare-fun d!1402761 () Bool)

(declare-fun e!2828538 () Bool)

(assert (=> d!1402761 e!2828538))

(declare-fun res!1891537 () Bool)

(assert (=> d!1402761 (=> (not res!1891537) (not e!2828538))))

(declare-fun lt!1713868 () List!50873)

(assert (=> d!1402761 (= res!1891537 (isStrictlySorted!457 lt!1713868))))

(declare-fun e!2828535 () List!50873)

(assert (=> d!1402761 (= lt!1713868 e!2828535)))

(declare-fun c!775283 () Bool)

(assert (=> d!1402761 (= c!775283 (and ((_ is Cons!50749) (toList!4404 lm!1477)) (bvslt (_1!28908 (h!56628 (toList!4404 lm!1477))) (_1!28908 lt!1713120))))))

(assert (=> d!1402761 (isStrictlySorted!457 (toList!4404 lm!1477))))

(assert (=> d!1402761 (= (insertStrictlySorted!434 (toList!4404 lm!1477) (_1!28908 lt!1713120) (_2!28908 lt!1713120)) lt!1713868)))

(declare-fun bm!316506 () Bool)

(declare-fun call!316511 () List!50873)

(assert (=> bm!316506 (= call!316512 call!316511)))

(declare-fun b!4539165 () Bool)

(declare-fun e!2828536 () List!50873)

(assert (=> b!4539165 (= e!2828536 call!316511)))

(declare-fun b!4539166 () Bool)

(assert (=> b!4539166 (= e!2828538 (contains!13537 lt!1713868 (tuple2!51229 (_1!28908 lt!1713120) (_2!28908 lt!1713120))))))

(declare-fun b!4539167 () Bool)

(assert (=> b!4539167 (= e!2828535 e!2828536)))

(declare-fun c!775284 () Bool)

(assert (=> b!4539167 (= c!775284 (and ((_ is Cons!50749) (toList!4404 lm!1477)) (= (_1!28908 (h!56628 (toList!4404 lm!1477))) (_1!28908 lt!1713120))))))

(declare-fun b!4539168 () Bool)

(declare-fun e!2828537 () List!50873)

(assert (=> b!4539168 (= e!2828537 (insertStrictlySorted!434 (t!357835 (toList!4404 lm!1477)) (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))

(declare-fun c!775281 () Bool)

(declare-fun b!4539169 () Bool)

(assert (=> b!4539169 (= e!2828537 (ite c!775284 (t!357835 (toList!4404 lm!1477)) (ite c!775281 (Cons!50749 (h!56628 (toList!4404 lm!1477)) (t!357835 (toList!4404 lm!1477))) Nil!50749)))))

(declare-fun bm!316507 () Bool)

(declare-fun call!316513 () List!50873)

(assert (=> bm!316507 (= call!316511 call!316513)))

(declare-fun bm!316508 () Bool)

(assert (=> bm!316508 (= call!316513 ($colon$colon!965 e!2828537 (ite c!775283 (h!56628 (toList!4404 lm!1477)) (tuple2!51229 (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))))

(declare-fun c!775282 () Bool)

(assert (=> bm!316508 (= c!775282 c!775283)))

(declare-fun b!4539170 () Bool)

(declare-fun res!1891538 () Bool)

(assert (=> b!4539170 (=> (not res!1891538) (not e!2828538))))

(assert (=> b!4539170 (= res!1891538 (containsKey!1874 lt!1713868 (_1!28908 lt!1713120)))))

(declare-fun b!4539171 () Bool)

(assert (=> b!4539171 (= e!2828535 call!316513)))

(declare-fun b!4539172 () Bool)

(assert (=> b!4539172 (= c!775281 (and ((_ is Cons!50749) (toList!4404 lm!1477)) (bvsgt (_1!28908 (h!56628 (toList!4404 lm!1477))) (_1!28908 lt!1713120))))))

(assert (=> b!4539172 (= e!2828536 e!2828534)))

(declare-fun b!4539173 () Bool)

(assert (=> b!4539173 (= e!2828534 call!316512)))

(assert (= (and d!1402761 c!775283) b!4539171))

(assert (= (and d!1402761 (not c!775283)) b!4539167))

(assert (= (and b!4539167 c!775284) b!4539165))

(assert (= (and b!4539167 (not c!775284)) b!4539172))

(assert (= (and b!4539172 c!775281) b!4539173))

(assert (= (and b!4539172 (not c!775281)) b!4539164))

(assert (= (or b!4539173 b!4539164) bm!316506))

(assert (= (or b!4539165 bm!316506) bm!316507))

(assert (= (or b!4539171 bm!316507) bm!316508))

(assert (= (and bm!316508 c!775282) b!4539168))

(assert (= (and bm!316508 (not c!775282)) b!4539169))

(assert (= (and d!1402761 res!1891537) b!4539170))

(assert (= (and b!4539170 res!1891538) b!4539166))

(declare-fun m!5304361 () Bool)

(assert (=> b!4539168 m!5304361))

(declare-fun m!5304365 () Bool)

(assert (=> bm!316508 m!5304365))

(declare-fun m!5304367 () Bool)

(assert (=> d!1402761 m!5304367))

(assert (=> d!1402761 m!5302785))

(declare-fun m!5304369 () Bool)

(assert (=> b!4539166 m!5304369))

(declare-fun m!5304371 () Bool)

(assert (=> b!4539170 m!5304371))

(assert (=> d!1402449 d!1402761))

(declare-fun d!1402767 () Bool)

(assert (=> d!1402767 (isDefined!8474 (getValueByKey!1144 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(declare-fun lt!1713870 () Unit!98176)

(assert (=> d!1402767 (= lt!1713870 (choose!29885 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(assert (=> d!1402767 (invariantList!1043 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))

(assert (=> d!1402767 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287) lt!1713870)))

(declare-fun bs!875695 () Bool)

(assert (= bs!875695 d!1402767))

(assert (=> bs!875695 m!5303427))

(assert (=> bs!875695 m!5303427))

(assert (=> bs!875695 m!5303429))

(declare-fun m!5304373 () Bool)

(assert (=> bs!875695 m!5304373))

(assert (=> bs!875695 m!5303771))

(assert (=> b!4538604 d!1402767))

(assert (=> b!4538604 d!1402553))

(assert (=> b!4538604 d!1402555))

(declare-fun d!1402769 () Bool)

(assert (=> d!1402769 (contains!13540 (getKeysList!491 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) key!3287)))

(declare-fun lt!1713871 () Unit!98176)

(assert (=> d!1402769 (= lt!1713871 (choose!29886 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(assert (=> d!1402769 (invariantList!1043 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))

(assert (=> d!1402769 (= (lemmaInListThenGetKeysListContains!487 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287) lt!1713871)))

(declare-fun bs!875699 () Bool)

(assert (= bs!875699 d!1402769))

(assert (=> bs!875699 m!5303443))

(assert (=> bs!875699 m!5303443))

(declare-fun m!5304375 () Bool)

(assert (=> bs!875699 m!5304375))

(declare-fun m!5304377 () Bool)

(assert (=> bs!875699 m!5304377))

(assert (=> bs!875699 m!5303771))

(assert (=> b!4538604 d!1402769))

(declare-fun bs!875706 () Bool)

(declare-fun b!4539183 () Bool)

(assert (= bs!875706 (and b!4539183 d!1402485)))

(declare-fun lambda!175975 () Int)

(assert (=> bs!875706 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713584) (= lambda!175975 lambda!175909))))

(declare-fun bs!875707 () Bool)

(assert (= bs!875707 (and b!4539183 b!4538685)))

(assert (=> bs!875707 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175975 lambda!175925))))

(declare-fun bs!875708 () Bool)

(assert (= bs!875708 (and b!4539183 d!1402523)))

(assert (=> bs!875708 (not (= lambda!175975 lambda!175918))))

(declare-fun bs!875709 () Bool)

(assert (= bs!875709 (and b!4539183 b!4538248)))

(assert (=> bs!875709 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713258) (= lambda!175975 lambda!175837))))

(declare-fun bs!875710 () Bool)

(assert (= bs!875710 (and b!4539183 b!4538501)))

(assert (=> bs!875710 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713493) (= lambda!175975 lambda!175886))))

(declare-fun bs!875711 () Bool)

(assert (= bs!875711 (and b!4539183 d!1402317)))

(assert (=> bs!875711 (not (= lambda!175975 lambda!175860))))

(assert (=> bs!875707 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713639) (= lambda!175975 lambda!175926))))

(assert (=> bs!875710 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713095) (= lambda!175975 lambda!175885))))

(declare-fun bs!875712 () Bool)

(assert (= bs!875712 (and b!4539183 d!1402727)))

(assert (=> bs!875712 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713121) (= lambda!175975 lambda!175970))))

(declare-fun bs!875713 () Bool)

(assert (= bs!875713 (and b!4539183 d!1402531)))

(assert (=> bs!875713 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713634) (= lambda!175975 lambda!175927))))

(declare-fun bs!875714 () Bool)

(assert (= bs!875714 (and b!4539183 b!4538617)))

(assert (=> bs!875714 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713103) (= lambda!175975 lambda!175907))))

(declare-fun bs!875715 () Bool)

(assert (= bs!875715 (and b!4539183 b!4538171)))

(assert (=> bs!875715 (not (= lambda!175975 lambda!175771))))

(assert (=> bs!875709 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713121) (= lambda!175975 lambda!175836))))

(declare-fun bs!875716 () Bool)

(assert (= bs!875716 (and b!4539183 b!4538686)))

(assert (=> bs!875716 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175975 lambda!175924))))

(declare-fun bs!875717 () Bool)

(assert (= bs!875717 (and b!4539183 b!4538618)))

(assert (=> bs!875717 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713103) (= lambda!175975 lambda!175906))))

(declare-fun bs!875718 () Bool)

(assert (= bs!875718 (and b!4539183 b!4538678)))

(assert (=> bs!875718 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713617) (= lambda!175975 lambda!175921))))

(declare-fun bs!875719 () Bool)

(assert (= bs!875719 (and b!4539183 d!1402409)))

(assert (=> bs!875719 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713488) (= lambda!175975 lambda!175888))))

(assert (=> bs!875718 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175975 lambda!175920))))

(declare-fun bs!875720 () Bool)

(assert (= bs!875720 (and b!4539183 d!1402527)))

(assert (=> bs!875720 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713612) (= lambda!175975 lambda!175922))))

(assert (=> bs!875714 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713589) (= lambda!175975 lambda!175908))))

(declare-fun bs!875721 () Bool)

(assert (= bs!875721 (and b!4539183 b!4538249)))

(assert (=> bs!875721 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713121) (= lambda!175975 lambda!175834))))

(declare-fun bs!875722 () Bool)

(assert (= bs!875722 (and b!4539183 b!4538502)))

(assert (=> bs!875722 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713095) (= lambda!175975 lambda!175883))))

(declare-fun bs!875723 () Bool)

(assert (= bs!875723 (and b!4539183 d!1402229)))

(assert (=> bs!875723 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713253) (= lambda!175975 lambda!175838))))

(declare-fun bs!875724 () Bool)

(assert (= bs!875724 (and b!4539183 b!4538679)))

(assert (=> bs!875724 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175975 lambda!175919))))

(declare-fun bs!875725 () Bool)

(assert (= bs!875725 (and b!4539183 d!1402545)))

(assert (=> bs!875725 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713589) (= lambda!175975 lambda!175932))))

(assert (=> b!4539183 true))

(declare-fun bs!875726 () Bool)

(declare-fun b!4539182 () Bool)

(assert (= bs!875726 (and b!4539182 d!1402485)))

(declare-fun lambda!175976 () Int)

(assert (=> bs!875726 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713584) (= lambda!175976 lambda!175909))))

(declare-fun bs!875727 () Bool)

(assert (= bs!875727 (and b!4539182 b!4538685)))

(assert (=> bs!875727 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175976 lambda!175925))))

(declare-fun bs!875728 () Bool)

(assert (= bs!875728 (and b!4539182 d!1402523)))

(assert (=> bs!875728 (not (= lambda!175976 lambda!175918))))

(declare-fun bs!875729 () Bool)

(assert (= bs!875729 (and b!4539182 b!4538248)))

(assert (=> bs!875729 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713258) (= lambda!175976 lambda!175837))))

(declare-fun bs!875730 () Bool)

(assert (= bs!875730 (and b!4539182 b!4538501)))

(assert (=> bs!875730 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713493) (= lambda!175976 lambda!175886))))

(declare-fun bs!875731 () Bool)

(assert (= bs!875731 (and b!4539182 d!1402317)))

(assert (=> bs!875731 (not (= lambda!175976 lambda!175860))))

(assert (=> bs!875727 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713639) (= lambda!175976 lambda!175926))))

(assert (=> bs!875730 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713095) (= lambda!175976 lambda!175885))))

(declare-fun bs!875732 () Bool)

(assert (= bs!875732 (and b!4539182 b!4539183)))

(assert (=> bs!875732 (= lambda!175976 lambda!175975)))

(declare-fun bs!875733 () Bool)

(assert (= bs!875733 (and b!4539182 d!1402727)))

(assert (=> bs!875733 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713121) (= lambda!175976 lambda!175970))))

(declare-fun bs!875734 () Bool)

(assert (= bs!875734 (and b!4539182 d!1402531)))

(assert (=> bs!875734 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713634) (= lambda!175976 lambda!175927))))

(declare-fun bs!875735 () Bool)

(assert (= bs!875735 (and b!4539182 b!4538617)))

(assert (=> bs!875735 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713103) (= lambda!175976 lambda!175907))))

(declare-fun bs!875736 () Bool)

(assert (= bs!875736 (and b!4539182 b!4538171)))

(assert (=> bs!875736 (not (= lambda!175976 lambda!175771))))

(assert (=> bs!875729 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713121) (= lambda!175976 lambda!175836))))

(declare-fun bs!875737 () Bool)

(assert (= bs!875737 (and b!4539182 b!4538686)))

(assert (=> bs!875737 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175976 lambda!175924))))

(declare-fun bs!875738 () Bool)

(assert (= bs!875738 (and b!4539182 b!4538618)))

(assert (=> bs!875738 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713103) (= lambda!175976 lambda!175906))))

(declare-fun bs!875739 () Bool)

(assert (= bs!875739 (and b!4539182 b!4538678)))

(assert (=> bs!875739 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713617) (= lambda!175976 lambda!175921))))

(declare-fun bs!875740 () Bool)

(assert (= bs!875740 (and b!4539182 d!1402409)))

(assert (=> bs!875740 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713488) (= lambda!175976 lambda!175888))))

(assert (=> bs!875739 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175976 lambda!175920))))

(declare-fun bs!875742 () Bool)

(assert (= bs!875742 (and b!4539182 d!1402527)))

(assert (=> bs!875742 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713612) (= lambda!175976 lambda!175922))))

(assert (=> bs!875735 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713589) (= lambda!175976 lambda!175908))))

(declare-fun bs!875743 () Bool)

(assert (= bs!875743 (and b!4539182 b!4538249)))

(assert (=> bs!875743 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713121) (= lambda!175976 lambda!175834))))

(declare-fun bs!875744 () Bool)

(assert (= bs!875744 (and b!4539182 b!4538502)))

(assert (=> bs!875744 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713095) (= lambda!175976 lambda!175883))))

(declare-fun bs!875745 () Bool)

(assert (= bs!875745 (and b!4539182 d!1402229)))

(assert (=> bs!875745 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713253) (= lambda!175976 lambda!175838))))

(declare-fun bs!875746 () Bool)

(assert (= bs!875746 (and b!4539182 b!4538679)))

(assert (=> bs!875746 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175976 lambda!175919))))

(declare-fun bs!875747 () Bool)

(assert (= bs!875747 (and b!4539182 d!1402545)))

(assert (=> bs!875747 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713589) (= lambda!175976 lambda!175932))))

(assert (=> b!4539182 true))

(declare-fun lt!1713882 () ListMap!3665)

(declare-fun lambda!175977 () Int)

(assert (=> bs!875726 (= (= lt!1713882 lt!1713584) (= lambda!175977 lambda!175909))))

(assert (=> bs!875727 (= (= lt!1713882 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175977 lambda!175925))))

(assert (=> bs!875728 (not (= lambda!175977 lambda!175918))))

(assert (=> b!4539182 (= (= lt!1713882 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175977 lambda!175976))))

(assert (=> bs!875729 (= (= lt!1713882 lt!1713258) (= lambda!175977 lambda!175837))))

(assert (=> bs!875730 (= (= lt!1713882 lt!1713493) (= lambda!175977 lambda!175886))))

(assert (=> bs!875731 (not (= lambda!175977 lambda!175860))))

(assert (=> bs!875727 (= (= lt!1713882 lt!1713639) (= lambda!175977 lambda!175926))))

(assert (=> bs!875730 (= (= lt!1713882 lt!1713095) (= lambda!175977 lambda!175885))))

(assert (=> bs!875732 (= (= lt!1713882 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175977 lambda!175975))))

(assert (=> bs!875733 (= (= lt!1713882 lt!1713121) (= lambda!175977 lambda!175970))))

(assert (=> bs!875734 (= (= lt!1713882 lt!1713634) (= lambda!175977 lambda!175927))))

(assert (=> bs!875735 (= (= lt!1713882 lt!1713103) (= lambda!175977 lambda!175907))))

(assert (=> bs!875736 (not (= lambda!175977 lambda!175771))))

(assert (=> bs!875729 (= (= lt!1713882 lt!1713121) (= lambda!175977 lambda!175836))))

(assert (=> bs!875737 (= (= lt!1713882 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175977 lambda!175924))))

(assert (=> bs!875738 (= (= lt!1713882 lt!1713103) (= lambda!175977 lambda!175906))))

(assert (=> bs!875739 (= (= lt!1713882 lt!1713617) (= lambda!175977 lambda!175921))))

(assert (=> bs!875740 (= (= lt!1713882 lt!1713488) (= lambda!175977 lambda!175888))))

(assert (=> bs!875739 (= (= lt!1713882 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175977 lambda!175920))))

(assert (=> bs!875742 (= (= lt!1713882 lt!1713612) (= lambda!175977 lambda!175922))))

(assert (=> bs!875735 (= (= lt!1713882 lt!1713589) (= lambda!175977 lambda!175908))))

(assert (=> bs!875743 (= (= lt!1713882 lt!1713121) (= lambda!175977 lambda!175834))))

(assert (=> bs!875744 (= (= lt!1713882 lt!1713095) (= lambda!175977 lambda!175883))))

(assert (=> bs!875745 (= (= lt!1713882 lt!1713253) (= lambda!175977 lambda!175838))))

(assert (=> bs!875746 (= (= lt!1713882 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175977 lambda!175919))))

(assert (=> bs!875747 (= (= lt!1713882 lt!1713589) (= lambda!175977 lambda!175932))))

(assert (=> b!4539182 true))

(declare-fun bs!875749 () Bool)

(declare-fun d!1402771 () Bool)

(assert (= bs!875749 (and d!1402771 d!1402485)))

(declare-fun lambda!175978 () Int)

(declare-fun lt!1713877 () ListMap!3665)

(assert (=> bs!875749 (= (= lt!1713877 lt!1713584) (= lambda!175978 lambda!175909))))

(declare-fun bs!875750 () Bool)

(assert (= bs!875750 (and d!1402771 b!4538685)))

(assert (=> bs!875750 (= (= lt!1713877 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175978 lambda!175925))))

(declare-fun bs!875751 () Bool)

(assert (= bs!875751 (and d!1402771 d!1402523)))

(assert (=> bs!875751 (not (= lambda!175978 lambda!175918))))

(declare-fun bs!875752 () Bool)

(assert (= bs!875752 (and d!1402771 b!4539182)))

(assert (=> bs!875752 (= (= lt!1713877 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175978 lambda!175976))))

(declare-fun bs!875753 () Bool)

(assert (= bs!875753 (and d!1402771 b!4538248)))

(assert (=> bs!875753 (= (= lt!1713877 lt!1713258) (= lambda!175978 lambda!175837))))

(assert (=> bs!875752 (= (= lt!1713877 lt!1713882) (= lambda!175978 lambda!175977))))

(declare-fun bs!875754 () Bool)

(assert (= bs!875754 (and d!1402771 b!4538501)))

(assert (=> bs!875754 (= (= lt!1713877 lt!1713493) (= lambda!175978 lambda!175886))))

(declare-fun bs!875755 () Bool)

(assert (= bs!875755 (and d!1402771 d!1402317)))

(assert (=> bs!875755 (not (= lambda!175978 lambda!175860))))

(assert (=> bs!875750 (= (= lt!1713877 lt!1713639) (= lambda!175978 lambda!175926))))

(assert (=> bs!875754 (= (= lt!1713877 lt!1713095) (= lambda!175978 lambda!175885))))

(declare-fun bs!875756 () Bool)

(assert (= bs!875756 (and d!1402771 b!4539183)))

(assert (=> bs!875756 (= (= lt!1713877 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175978 lambda!175975))))

(declare-fun bs!875757 () Bool)

(assert (= bs!875757 (and d!1402771 d!1402727)))

(assert (=> bs!875757 (= (= lt!1713877 lt!1713121) (= lambda!175978 lambda!175970))))

(declare-fun bs!875758 () Bool)

(assert (= bs!875758 (and d!1402771 d!1402531)))

(assert (=> bs!875758 (= (= lt!1713877 lt!1713634) (= lambda!175978 lambda!175927))))

(declare-fun bs!875759 () Bool)

(assert (= bs!875759 (and d!1402771 b!4538617)))

(assert (=> bs!875759 (= (= lt!1713877 lt!1713103) (= lambda!175978 lambda!175907))))

(declare-fun bs!875760 () Bool)

(assert (= bs!875760 (and d!1402771 b!4538171)))

(assert (=> bs!875760 (not (= lambda!175978 lambda!175771))))

(assert (=> bs!875753 (= (= lt!1713877 lt!1713121) (= lambda!175978 lambda!175836))))

(declare-fun bs!875761 () Bool)

(assert (= bs!875761 (and d!1402771 b!4538686)))

(assert (=> bs!875761 (= (= lt!1713877 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175978 lambda!175924))))

(declare-fun bs!875762 () Bool)

(assert (= bs!875762 (and d!1402771 b!4538618)))

(assert (=> bs!875762 (= (= lt!1713877 lt!1713103) (= lambda!175978 lambda!175906))))

(declare-fun bs!875763 () Bool)

(assert (= bs!875763 (and d!1402771 b!4538678)))

(assert (=> bs!875763 (= (= lt!1713877 lt!1713617) (= lambda!175978 lambda!175921))))

(declare-fun bs!875764 () Bool)

(assert (= bs!875764 (and d!1402771 d!1402409)))

(assert (=> bs!875764 (= (= lt!1713877 lt!1713488) (= lambda!175978 lambda!175888))))

(assert (=> bs!875763 (= (= lt!1713877 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175978 lambda!175920))))

(declare-fun bs!875765 () Bool)

(assert (= bs!875765 (and d!1402771 d!1402527)))

(assert (=> bs!875765 (= (= lt!1713877 lt!1713612) (= lambda!175978 lambda!175922))))

(assert (=> bs!875759 (= (= lt!1713877 lt!1713589) (= lambda!175978 lambda!175908))))

(declare-fun bs!875766 () Bool)

(assert (= bs!875766 (and d!1402771 b!4538249)))

(assert (=> bs!875766 (= (= lt!1713877 lt!1713121) (= lambda!175978 lambda!175834))))

(declare-fun bs!875767 () Bool)

(assert (= bs!875767 (and d!1402771 b!4538502)))

(assert (=> bs!875767 (= (= lt!1713877 lt!1713095) (= lambda!175978 lambda!175883))))

(declare-fun bs!875768 () Bool)

(assert (= bs!875768 (and d!1402771 d!1402229)))

(assert (=> bs!875768 (= (= lt!1713877 lt!1713253) (= lambda!175978 lambda!175838))))

(declare-fun bs!875769 () Bool)

(assert (= bs!875769 (and d!1402771 b!4538679)))

(assert (=> bs!875769 (= (= lt!1713877 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175978 lambda!175919))))

(declare-fun bs!875770 () Bool)

(assert (= bs!875770 (and d!1402771 d!1402545)))

(assert (=> bs!875770 (= (= lt!1713877 lt!1713589) (= lambda!175978 lambda!175932))))

(assert (=> d!1402771 true))

(declare-fun bm!316509 () Bool)

(declare-fun call!316514 () Unit!98176)

(assert (=> bm!316509 (= call!316514 (lemmaContainsAllItsOwnKeys!364 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))))))

(declare-fun b!4539179 () Bool)

(declare-fun e!2828541 () Bool)

(assert (=> b!4539179 (= e!2828541 (invariantList!1043 (toList!4403 lt!1713877)))))

(declare-fun c!775286 () Bool)

(declare-fun bm!316510 () Bool)

(declare-fun call!316516 () Bool)

(assert (=> bm!316510 (= call!316516 (forall!10343 (ite c!775286 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (_2!28908 (h!56628 (toList!4404 lt!1713101)))) (ite c!775286 lambda!175975 lambda!175977)))))

(declare-fun b!4539180 () Bool)

(declare-fun res!1891544 () Bool)

(assert (=> b!4539180 (=> (not res!1891544) (not e!2828541))))

(assert (=> b!4539180 (= res!1891544 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) lambda!175978))))

(declare-fun b!4539181 () Bool)

(declare-fun e!2828542 () Bool)

(assert (=> b!4539181 (= e!2828542 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) lambda!175977))))

(declare-fun e!2828543 () ListMap!3665)

(assert (=> b!4539182 (= e!2828543 lt!1713882)))

(declare-fun lt!1713888 () ListMap!3665)

(assert (=> b!4539182 (= lt!1713888 (+!1604 (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713101))))))))

(assert (=> b!4539182 (= lt!1713882 (addToMapMapFromBucket!725 (t!357834 (_2!28908 (h!56628 (toList!4404 lt!1713101)))) (+!1604 (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713101)))))))))

(declare-fun lt!1713881 () Unit!98176)

(assert (=> b!4539182 (= lt!1713881 call!316514)))

(assert (=> b!4539182 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) lambda!175976)))

(declare-fun lt!1713889 () Unit!98176)

(assert (=> b!4539182 (= lt!1713889 lt!1713881)))

(assert (=> b!4539182 (forall!10343 (toList!4403 lt!1713888) lambda!175977)))

(declare-fun lt!1713876 () Unit!98176)

(declare-fun Unit!98345 () Unit!98176)

(assert (=> b!4539182 (= lt!1713876 Unit!98345)))

(declare-fun call!316515 () Bool)

(assert (=> b!4539182 call!316515))

(declare-fun lt!1713887 () Unit!98176)

(declare-fun Unit!98346 () Unit!98176)

(assert (=> b!4539182 (= lt!1713887 Unit!98346)))

(declare-fun lt!1713875 () Unit!98176)

(declare-fun Unit!98347 () Unit!98176)

(assert (=> b!4539182 (= lt!1713875 Unit!98347)))

(declare-fun lt!1713878 () Unit!98176)

(assert (=> b!4539182 (= lt!1713878 (forallContained!2605 (toList!4403 lt!1713888) lambda!175977 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713101))))))))

(assert (=> b!4539182 (contains!13538 lt!1713888 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713101))))))))

(declare-fun lt!1713874 () Unit!98176)

(declare-fun Unit!98348 () Unit!98176)

(assert (=> b!4539182 (= lt!1713874 Unit!98348)))

(assert (=> b!4539182 (contains!13538 lt!1713882 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713101))))))))

(declare-fun lt!1713873 () Unit!98176)

(declare-fun Unit!98349 () Unit!98176)

(assert (=> b!4539182 (= lt!1713873 Unit!98349)))

(assert (=> b!4539182 call!316516))

(declare-fun lt!1713891 () Unit!98176)

(declare-fun Unit!98350 () Unit!98176)

(assert (=> b!4539182 (= lt!1713891 Unit!98350)))

(assert (=> b!4539182 (forall!10343 (toList!4403 lt!1713888) lambda!175977)))

(declare-fun lt!1713883 () Unit!98176)

(declare-fun Unit!98351 () Unit!98176)

(assert (=> b!4539182 (= lt!1713883 Unit!98351)))

(declare-fun lt!1713886 () Unit!98176)

(declare-fun Unit!98352 () Unit!98176)

(assert (=> b!4539182 (= lt!1713886 Unit!98352)))

(declare-fun lt!1713892 () Unit!98176)

(assert (=> b!4539182 (= lt!1713892 (addForallContainsKeyThenBeforeAdding!364 (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713882 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713101))))) (_2!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713101)))))))))

(assert (=> b!4539182 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) lambda!175977)))

(declare-fun lt!1713880 () Unit!98176)

(assert (=> b!4539182 (= lt!1713880 lt!1713892)))

(assert (=> b!4539182 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) lambda!175977)))

(declare-fun lt!1713890 () Unit!98176)

(declare-fun Unit!98353 () Unit!98176)

(assert (=> b!4539182 (= lt!1713890 Unit!98353)))

(declare-fun res!1891543 () Bool)

(assert (=> b!4539182 (= res!1891543 (forall!10343 (_2!28908 (h!56628 (toList!4404 lt!1713101))) lambda!175977))))

(assert (=> b!4539182 (=> (not res!1891543) (not e!2828542))))

(assert (=> b!4539182 e!2828542))

(declare-fun lt!1713872 () Unit!98176)

(declare-fun Unit!98354 () Unit!98176)

(assert (=> b!4539182 (= lt!1713872 Unit!98354)))

(assert (=> b!4539183 (= e!2828543 (extractMap!1254 (t!357835 (toList!4404 lt!1713101))))))

(declare-fun lt!1713885 () Unit!98176)

(assert (=> b!4539183 (= lt!1713885 call!316514)))

(assert (=> b!4539183 call!316515))

(declare-fun lt!1713884 () Unit!98176)

(assert (=> b!4539183 (= lt!1713884 lt!1713885)))

(assert (=> b!4539183 call!316516))

(declare-fun lt!1713879 () Unit!98176)

(declare-fun Unit!98355 () Unit!98176)

(assert (=> b!4539183 (= lt!1713879 Unit!98355)))

(declare-fun bm!316511 () Bool)

(assert (=> bm!316511 (= call!316515 (forall!10343 (ite c!775286 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (t!357834 (_2!28908 (h!56628 (toList!4404 lt!1713101))))) (ite c!775286 lambda!175975 lambda!175977)))))

(assert (=> d!1402771 e!2828541))

(declare-fun res!1891542 () Bool)

(assert (=> d!1402771 (=> (not res!1891542) (not e!2828541))))

(assert (=> d!1402771 (= res!1891542 (forall!10343 (_2!28908 (h!56628 (toList!4404 lt!1713101))) lambda!175978))))

(assert (=> d!1402771 (= lt!1713877 e!2828543)))

(assert (=> d!1402771 (= c!775286 ((_ is Nil!50748) (_2!28908 (h!56628 (toList!4404 lt!1713101)))))))

(assert (=> d!1402771 (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lt!1713101))))))

(assert (=> d!1402771 (= (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 lt!1713101))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) lt!1713877)))

(assert (= (and d!1402771 c!775286) b!4539183))

(assert (= (and d!1402771 (not c!775286)) b!4539182))

(assert (= (and b!4539182 res!1891543) b!4539181))

(assert (= (or b!4539183 b!4539182) bm!316510))

(assert (= (or b!4539183 b!4539182) bm!316511))

(assert (= (or b!4539183 b!4539182) bm!316509))

(assert (= (and d!1402771 res!1891542) b!4539180))

(assert (= (and b!4539180 res!1891544) b!4539179))

(declare-fun m!5304431 () Bool)

(assert (=> bm!316511 m!5304431))

(declare-fun m!5304433 () Bool)

(assert (=> b!4539182 m!5304433))

(assert (=> b!4539182 m!5302747))

(declare-fun m!5304435 () Bool)

(assert (=> b!4539182 m!5304435))

(declare-fun m!5304437 () Bool)

(assert (=> b!4539182 m!5304437))

(declare-fun m!5304439 () Bool)

(assert (=> b!4539182 m!5304439))

(assert (=> b!4539182 m!5304433))

(assert (=> b!4539182 m!5304439))

(declare-fun m!5304443 () Bool)

(assert (=> b!4539182 m!5304443))

(declare-fun m!5304445 () Bool)

(assert (=> b!4539182 m!5304445))

(declare-fun m!5304447 () Bool)

(assert (=> b!4539182 m!5304447))

(declare-fun m!5304449 () Bool)

(assert (=> b!4539182 m!5304449))

(assert (=> b!4539182 m!5304435))

(declare-fun m!5304451 () Bool)

(assert (=> b!4539182 m!5304451))

(assert (=> b!4539182 m!5302747))

(declare-fun m!5304457 () Bool)

(assert (=> b!4539182 m!5304457))

(declare-fun m!5304459 () Bool)

(assert (=> d!1402771 m!5304459))

(declare-fun m!5304463 () Bool)

(assert (=> d!1402771 m!5304463))

(declare-fun m!5304465 () Bool)

(assert (=> b!4539180 m!5304465))

(declare-fun m!5304467 () Bool)

(assert (=> b!4539179 m!5304467))

(declare-fun m!5304471 () Bool)

(assert (=> bm!316510 m!5304471))

(assert (=> bm!316509 m!5302747))

(declare-fun m!5304473 () Bool)

(assert (=> bm!316509 m!5304473))

(assert (=> b!4539181 m!5304439))

(assert (=> b!4538261 d!1402771))

(declare-fun bs!875774 () Bool)

(declare-fun d!1402801 () Bool)

(assert (= bs!875774 (and d!1402801 start!450372)))

(declare-fun lambda!175979 () Int)

(assert (=> bs!875774 (= lambda!175979 lambda!175769)))

(declare-fun bs!875775 () Bool)

(assert (= bs!875775 (and d!1402801 d!1402275)))

(assert (=> bs!875775 (= lambda!175979 lambda!175846)))

(declare-fun bs!875776 () Bool)

(assert (= bs!875776 (and d!1402801 b!4538171)))

(assert (=> bs!875776 (not (= lambda!175979 lambda!175770))))

(declare-fun bs!875777 () Bool)

(assert (= bs!875777 (and d!1402801 d!1402353)))

(assert (=> bs!875777 (= lambda!175979 lambda!175879)))

(declare-fun bs!875778 () Bool)

(assert (= bs!875778 (and d!1402801 d!1402303)))

(assert (=> bs!875778 (= lambda!175979 lambda!175857)))

(declare-fun bs!875779 () Bool)

(assert (= bs!875779 (and d!1402801 d!1402471)))

(assert (=> bs!875779 (= lambda!175979 lambda!175901)))

(declare-fun bs!875780 () Bool)

(assert (= bs!875780 (and d!1402801 d!1402475)))

(assert (=> bs!875780 (= lambda!175979 lambda!175905)))

(declare-fun bs!875781 () Bool)

(assert (= bs!875781 (and d!1402801 d!1402601)))

(assert (=> bs!875781 (= lambda!175979 lambda!175933)))

(declare-fun bs!875782 () Bool)

(assert (= bs!875782 (and d!1402801 d!1402529)))

(assert (=> bs!875782 (= lambda!175979 lambda!175923)))

(declare-fun bs!875783 () Bool)

(assert (= bs!875783 (and d!1402801 d!1402349)))

(assert (=> bs!875783 (= lambda!175979 lambda!175870)))

(declare-fun bs!875784 () Bool)

(assert (= bs!875784 (and d!1402801 d!1402455)))

(assert (=> bs!875784 (not (= lambda!175979 lambda!175900))))

(declare-fun bs!875785 () Bool)

(assert (= bs!875785 (and d!1402801 d!1402253)))

(assert (=> bs!875785 (= lambda!175979 lambda!175843)))

(declare-fun bs!875786 () Bool)

(assert (= bs!875786 (and d!1402801 d!1402421)))

(assert (=> bs!875786 (= lambda!175979 lambda!175894)))

(declare-fun bs!875788 () Bool)

(assert (= bs!875788 (and d!1402801 d!1402473)))

(assert (=> bs!875788 (= lambda!175979 lambda!175902)))

(declare-fun bs!875789 () Bool)

(assert (= bs!875789 (and d!1402801 d!1402289)))

(assert (=> bs!875789 (= lambda!175979 lambda!175853)))

(declare-fun bs!875790 () Bool)

(assert (= bs!875790 (and d!1402801 d!1402345)))

(assert (=> bs!875790 (= lambda!175979 lambda!175867)))

(declare-fun lt!1713901 () ListMap!3665)

(assert (=> d!1402801 (invariantList!1043 (toList!4403 lt!1713901))))

(declare-fun e!2828565 () ListMap!3665)

(assert (=> d!1402801 (= lt!1713901 e!2828565)))

(declare-fun c!775294 () Bool)

(assert (=> d!1402801 (= c!775294 ((_ is Cons!50749) (t!357835 (toList!4404 lt!1713101))))))

(assert (=> d!1402801 (forall!10341 (t!357835 (toList!4404 lt!1713101)) lambda!175979)))

(assert (=> d!1402801 (= (extractMap!1254 (t!357835 (toList!4404 lt!1713101))) lt!1713901)))

(declare-fun b!4539212 () Bool)

(assert (=> b!4539212 (= e!2828565 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (t!357835 (toList!4404 lt!1713101)))) (extractMap!1254 (t!357835 (t!357835 (toList!4404 lt!1713101))))))))

(declare-fun b!4539213 () Bool)

(assert (=> b!4539213 (= e!2828565 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402801 c!775294) b!4539212))

(assert (= (and d!1402801 (not c!775294)) b!4539213))

(declare-fun m!5304491 () Bool)

(assert (=> d!1402801 m!5304491))

(declare-fun m!5304493 () Bool)

(assert (=> d!1402801 m!5304493))

(declare-fun m!5304495 () Bool)

(assert (=> b!4539212 m!5304495))

(assert (=> b!4539212 m!5304495))

(declare-fun m!5304499 () Bool)

(assert (=> b!4539212 m!5304499))

(assert (=> b!4538261 d!1402801))

(declare-fun d!1402817 () Bool)

(assert (=> d!1402817 (isDefined!8477 (getValueByKey!1145 (toList!4404 lm!1477) lt!1713089))))

(declare-fun lt!1713903 () Unit!98176)

(assert (=> d!1402817 (= lt!1713903 (choose!29888 (toList!4404 lm!1477) lt!1713089))))

(declare-fun e!2828575 () Bool)

(assert (=> d!1402817 e!2828575))

(declare-fun res!1891565 () Bool)

(assert (=> d!1402817 (=> (not res!1891565) (not e!2828575))))

(assert (=> d!1402817 (= res!1891565 (isStrictlySorted!457 (toList!4404 lm!1477)))))

(assert (=> d!1402817 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (toList!4404 lm!1477) lt!1713089) lt!1713903)))

(declare-fun b!4539226 () Bool)

(assert (=> b!4539226 (= e!2828575 (containsKey!1874 (toList!4404 lm!1477) lt!1713089))))

(assert (= (and d!1402817 res!1891565) b!4539226))

(assert (=> d!1402817 m!5303329))

(assert (=> d!1402817 m!5303329))

(assert (=> d!1402817 m!5303331))

(declare-fun m!5304501 () Bool)

(assert (=> d!1402817 m!5304501))

(assert (=> d!1402817 m!5302785))

(assert (=> b!4539226 m!5303325))

(assert (=> b!4538527 d!1402817))

(declare-fun d!1402819 () Bool)

(assert (=> d!1402819 (= (isDefined!8477 (getValueByKey!1145 (toList!4404 lm!1477) lt!1713089)) (not (isEmpty!28750 (getValueByKey!1145 (toList!4404 lm!1477) lt!1713089))))))

(declare-fun bs!875791 () Bool)

(assert (= bs!875791 d!1402819))

(assert (=> bs!875791 m!5303329))

(declare-fun m!5304503 () Bool)

(assert (=> bs!875791 m!5304503))

(assert (=> b!4538527 d!1402819))

(declare-fun d!1402821 () Bool)

(declare-fun c!775298 () Bool)

(assert (=> d!1402821 (= c!775298 (and ((_ is Cons!50749) (toList!4404 lm!1477)) (= (_1!28908 (h!56628 (toList!4404 lm!1477))) lt!1713089)))))

(declare-fun e!2828576 () Option!11201)

(assert (=> d!1402821 (= (getValueByKey!1145 (toList!4404 lm!1477) lt!1713089) e!2828576)))

(declare-fun b!4539227 () Bool)

(assert (=> b!4539227 (= e!2828576 (Some!11200 (_2!28908 (h!56628 (toList!4404 lm!1477)))))))

(declare-fun b!4539229 () Bool)

(declare-fun e!2828577 () Option!11201)

(assert (=> b!4539229 (= e!2828577 (getValueByKey!1145 (t!357835 (toList!4404 lm!1477)) lt!1713089))))

(declare-fun b!4539228 () Bool)

(assert (=> b!4539228 (= e!2828576 e!2828577)))

(declare-fun c!775299 () Bool)

(assert (=> b!4539228 (= c!775299 (and ((_ is Cons!50749) (toList!4404 lm!1477)) (not (= (_1!28908 (h!56628 (toList!4404 lm!1477))) lt!1713089))))))

(declare-fun b!4539230 () Bool)

(assert (=> b!4539230 (= e!2828577 None!11200)))

(assert (= (and d!1402821 c!775298) b!4539227))

(assert (= (and d!1402821 (not c!775298)) b!4539228))

(assert (= (and b!4539228 c!775299) b!4539229))

(assert (= (and b!4539228 (not c!775299)) b!4539230))

(declare-fun m!5304505 () Bool)

(assert (=> b!4539229 m!5304505))

(assert (=> b!4538527 d!1402821))

(declare-fun bs!875792 () Bool)

(declare-fun b!4539235 () Bool)

(assert (= bs!875792 (and b!4539235 d!1402485)))

(declare-fun lambda!175980 () Int)

(assert (=> bs!875792 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713584) (= lambda!175980 lambda!175909))))

(declare-fun bs!875793 () Bool)

(assert (= bs!875793 (and b!4539235 b!4538685)))

(assert (=> bs!875793 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175980 lambda!175925))))

(declare-fun bs!875794 () Bool)

(assert (= bs!875794 (and b!4539235 d!1402523)))

(assert (=> bs!875794 (not (= lambda!175980 lambda!175918))))

(declare-fun bs!875795 () Bool)

(assert (= bs!875795 (and b!4539235 b!4539182)))

(assert (=> bs!875795 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175980 lambda!175976))))

(declare-fun bs!875796 () Bool)

(assert (= bs!875796 (and b!4539235 b!4538248)))

(assert (=> bs!875796 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713258) (= lambda!175980 lambda!175837))))

(assert (=> bs!875795 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713882) (= lambda!175980 lambda!175977))))

(declare-fun bs!875797 () Bool)

(assert (= bs!875797 (and b!4539235 b!4538501)))

(assert (=> bs!875797 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713493) (= lambda!175980 lambda!175886))))

(assert (=> bs!875793 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713639) (= lambda!175980 lambda!175926))))

(assert (=> bs!875797 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713095) (= lambda!175980 lambda!175885))))

(declare-fun bs!875798 () Bool)

(assert (= bs!875798 (and b!4539235 b!4539183)))

(assert (=> bs!875798 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175980 lambda!175975))))

(declare-fun bs!875799 () Bool)

(assert (= bs!875799 (and b!4539235 d!1402727)))

(assert (=> bs!875799 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713121) (= lambda!175980 lambda!175970))))

(declare-fun bs!875800 () Bool)

(assert (= bs!875800 (and b!4539235 d!1402531)))

(assert (=> bs!875800 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713634) (= lambda!175980 lambda!175927))))

(declare-fun bs!875801 () Bool)

(assert (= bs!875801 (and b!4539235 b!4538617)))

(assert (=> bs!875801 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713103) (= lambda!175980 lambda!175907))))

(declare-fun bs!875802 () Bool)

(assert (= bs!875802 (and b!4539235 b!4538171)))

(assert (=> bs!875802 (not (= lambda!175980 lambda!175771))))

(assert (=> bs!875796 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713121) (= lambda!175980 lambda!175836))))

(declare-fun bs!875803 () Bool)

(assert (= bs!875803 (and b!4539235 b!4538686)))

(assert (=> bs!875803 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175980 lambda!175924))))

(declare-fun bs!875804 () Bool)

(assert (= bs!875804 (and b!4539235 b!4538618)))

(assert (=> bs!875804 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713103) (= lambda!175980 lambda!175906))))

(declare-fun bs!875805 () Bool)

(assert (= bs!875805 (and b!4539235 b!4538678)))

(assert (=> bs!875805 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713617) (= lambda!175980 lambda!175921))))

(declare-fun bs!875806 () Bool)

(assert (= bs!875806 (and b!4539235 d!1402409)))

(assert (=> bs!875806 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713488) (= lambda!175980 lambda!175888))))

(assert (=> bs!875805 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175980 lambda!175920))))

(declare-fun bs!875807 () Bool)

(assert (= bs!875807 (and b!4539235 d!1402527)))

(assert (=> bs!875807 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713612) (= lambda!175980 lambda!175922))))

(assert (=> bs!875801 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713589) (= lambda!175980 lambda!175908))))

(declare-fun bs!875808 () Bool)

(assert (= bs!875808 (and b!4539235 b!4538249)))

(assert (=> bs!875808 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713121) (= lambda!175980 lambda!175834))))

(declare-fun bs!875809 () Bool)

(assert (= bs!875809 (and b!4539235 b!4538502)))

(assert (=> bs!875809 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713095) (= lambda!175980 lambda!175883))))

(declare-fun bs!875810 () Bool)

(assert (= bs!875810 (and b!4539235 d!1402229)))

(assert (=> bs!875810 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713253) (= lambda!175980 lambda!175838))))

(declare-fun bs!875811 () Bool)

(assert (= bs!875811 (and b!4539235 d!1402771)))

(assert (=> bs!875811 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713877) (= lambda!175980 lambda!175978))))

(declare-fun bs!875812 () Bool)

(assert (= bs!875812 (and b!4539235 d!1402317)))

(assert (=> bs!875812 (not (= lambda!175980 lambda!175860))))

(declare-fun bs!875813 () Bool)

(assert (= bs!875813 (and b!4539235 b!4538679)))

(assert (=> bs!875813 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175980 lambda!175919))))

(declare-fun bs!875814 () Bool)

(assert (= bs!875814 (and b!4539235 d!1402545)))

(assert (=> bs!875814 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713589) (= lambda!175980 lambda!175932))))

(assert (=> b!4539235 true))

(declare-fun bs!875815 () Bool)

(declare-fun b!4539234 () Bool)

(assert (= bs!875815 (and b!4539234 d!1402485)))

(declare-fun lambda!175981 () Int)

(assert (=> bs!875815 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713584) (= lambda!175981 lambda!175909))))

(declare-fun bs!875816 () Bool)

(assert (= bs!875816 (and b!4539234 b!4538685)))

(assert (=> bs!875816 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175981 lambda!175925))))

(declare-fun bs!875817 () Bool)

(assert (= bs!875817 (and b!4539234 d!1402523)))

(assert (=> bs!875817 (not (= lambda!175981 lambda!175918))))

(declare-fun bs!875818 () Bool)

(assert (= bs!875818 (and b!4539234 b!4539182)))

(assert (=> bs!875818 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175981 lambda!175976))))

(declare-fun bs!875819 () Bool)

(assert (= bs!875819 (and b!4539234 b!4538248)))

(assert (=> bs!875819 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713258) (= lambda!175981 lambda!175837))))

(assert (=> bs!875818 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713882) (= lambda!175981 lambda!175977))))

(declare-fun bs!875820 () Bool)

(assert (= bs!875820 (and b!4539234 b!4538501)))

(assert (=> bs!875820 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713493) (= lambda!175981 lambda!175886))))

(assert (=> bs!875816 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713639) (= lambda!175981 lambda!175926))))

(assert (=> bs!875820 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713095) (= lambda!175981 lambda!175885))))

(declare-fun bs!875821 () Bool)

(assert (= bs!875821 (and b!4539234 b!4539183)))

(assert (=> bs!875821 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175981 lambda!175975))))

(declare-fun bs!875822 () Bool)

(assert (= bs!875822 (and b!4539234 b!4539235)))

(assert (=> bs!875822 (= lambda!175981 lambda!175980)))

(declare-fun bs!875823 () Bool)

(assert (= bs!875823 (and b!4539234 d!1402727)))

(assert (=> bs!875823 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713121) (= lambda!175981 lambda!175970))))

(declare-fun bs!875824 () Bool)

(assert (= bs!875824 (and b!4539234 d!1402531)))

(assert (=> bs!875824 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713634) (= lambda!175981 lambda!175927))))

(declare-fun bs!875825 () Bool)

(assert (= bs!875825 (and b!4539234 b!4538617)))

(assert (=> bs!875825 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713103) (= lambda!175981 lambda!175907))))

(declare-fun bs!875826 () Bool)

(assert (= bs!875826 (and b!4539234 b!4538171)))

(assert (=> bs!875826 (not (= lambda!175981 lambda!175771))))

(assert (=> bs!875819 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713121) (= lambda!175981 lambda!175836))))

(declare-fun bs!875827 () Bool)

(assert (= bs!875827 (and b!4539234 b!4538686)))

(assert (=> bs!875827 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175981 lambda!175924))))

(declare-fun bs!875828 () Bool)

(assert (= bs!875828 (and b!4539234 b!4538618)))

(assert (=> bs!875828 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713103) (= lambda!175981 lambda!175906))))

(declare-fun bs!875829 () Bool)

(assert (= bs!875829 (and b!4539234 b!4538678)))

(assert (=> bs!875829 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713617) (= lambda!175981 lambda!175921))))

(declare-fun bs!875830 () Bool)

(assert (= bs!875830 (and b!4539234 d!1402409)))

(assert (=> bs!875830 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713488) (= lambda!175981 lambda!175888))))

(assert (=> bs!875829 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175981 lambda!175920))))

(declare-fun bs!875831 () Bool)

(assert (= bs!875831 (and b!4539234 d!1402527)))

(assert (=> bs!875831 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713612) (= lambda!175981 lambda!175922))))

(assert (=> bs!875825 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713589) (= lambda!175981 lambda!175908))))

(declare-fun bs!875832 () Bool)

(assert (= bs!875832 (and b!4539234 b!4538249)))

(assert (=> bs!875832 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713121) (= lambda!175981 lambda!175834))))

(declare-fun bs!875833 () Bool)

(assert (= bs!875833 (and b!4539234 b!4538502)))

(assert (=> bs!875833 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713095) (= lambda!175981 lambda!175883))))

(declare-fun bs!875834 () Bool)

(assert (= bs!875834 (and b!4539234 d!1402229)))

(assert (=> bs!875834 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713253) (= lambda!175981 lambda!175838))))

(declare-fun bs!875835 () Bool)

(assert (= bs!875835 (and b!4539234 d!1402771)))

(assert (=> bs!875835 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713877) (= lambda!175981 lambda!175978))))

(declare-fun bs!875836 () Bool)

(assert (= bs!875836 (and b!4539234 d!1402317)))

(assert (=> bs!875836 (not (= lambda!175981 lambda!175860))))

(declare-fun bs!875837 () Bool)

(assert (= bs!875837 (and b!4539234 b!4538679)))

(assert (=> bs!875837 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175981 lambda!175919))))

(declare-fun bs!875838 () Bool)

(assert (= bs!875838 (and b!4539234 d!1402545)))

(assert (=> bs!875838 (= (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713589) (= lambda!175981 lambda!175932))))

(assert (=> b!4539234 true))

(declare-fun lambda!175982 () Int)

(declare-fun lt!1713914 () ListMap!3665)

(assert (=> bs!875815 (= (= lt!1713914 lt!1713584) (= lambda!175982 lambda!175909))))

(assert (=> bs!875816 (= (= lt!1713914 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175982 lambda!175925))))

(assert (=> bs!875817 (not (= lambda!175982 lambda!175918))))

(assert (=> bs!875818 (= (= lt!1713914 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175982 lambda!175976))))

(assert (=> bs!875819 (= (= lt!1713914 lt!1713258) (= lambda!175982 lambda!175837))))

(assert (=> bs!875818 (= (= lt!1713914 lt!1713882) (= lambda!175982 lambda!175977))))

(assert (=> bs!875820 (= (= lt!1713914 lt!1713493) (= lambda!175982 lambda!175886))))

(assert (=> bs!875816 (= (= lt!1713914 lt!1713639) (= lambda!175982 lambda!175926))))

(assert (=> bs!875821 (= (= lt!1713914 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175982 lambda!175975))))

(assert (=> bs!875822 (= (= lt!1713914 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!175982 lambda!175980))))

(assert (=> bs!875823 (= (= lt!1713914 lt!1713121) (= lambda!175982 lambda!175970))))

(assert (=> bs!875824 (= (= lt!1713914 lt!1713634) (= lambda!175982 lambda!175927))))

(assert (=> bs!875825 (= (= lt!1713914 lt!1713103) (= lambda!175982 lambda!175907))))

(assert (=> bs!875826 (not (= lambda!175982 lambda!175771))))

(assert (=> bs!875819 (= (= lt!1713914 lt!1713121) (= lambda!175982 lambda!175836))))

(assert (=> bs!875827 (= (= lt!1713914 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175982 lambda!175924))))

(assert (=> bs!875828 (= (= lt!1713914 lt!1713103) (= lambda!175982 lambda!175906))))

(assert (=> bs!875829 (= (= lt!1713914 lt!1713617) (= lambda!175982 lambda!175921))))

(assert (=> bs!875830 (= (= lt!1713914 lt!1713488) (= lambda!175982 lambda!175888))))

(assert (=> bs!875829 (= (= lt!1713914 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175982 lambda!175920))))

(assert (=> bs!875831 (= (= lt!1713914 lt!1713612) (= lambda!175982 lambda!175922))))

(assert (=> bs!875825 (= (= lt!1713914 lt!1713589) (= lambda!175982 lambda!175908))))

(assert (=> bs!875832 (= (= lt!1713914 lt!1713121) (= lambda!175982 lambda!175834))))

(assert (=> bs!875833 (= (= lt!1713914 lt!1713095) (= lambda!175982 lambda!175883))))

(assert (=> bs!875834 (= (= lt!1713914 lt!1713253) (= lambda!175982 lambda!175838))))

(assert (=> bs!875835 (= (= lt!1713914 lt!1713877) (= lambda!175982 lambda!175978))))

(assert (=> bs!875836 (not (= lambda!175982 lambda!175860))))

(assert (=> b!4539234 (= (= lt!1713914 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!175982 lambda!175981))))

(assert (=> bs!875820 (= (= lt!1713914 lt!1713095) (= lambda!175982 lambda!175885))))

(assert (=> bs!875837 (= (= lt!1713914 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175982 lambda!175919))))

(assert (=> bs!875838 (= (= lt!1713914 lt!1713589) (= lambda!175982 lambda!175932))))

(assert (=> b!4539234 true))

(declare-fun bs!875840 () Bool)

(declare-fun d!1402823 () Bool)

(assert (= bs!875840 (and d!1402823 d!1402485)))

(declare-fun lt!1713909 () ListMap!3665)

(declare-fun lambda!175983 () Int)

(assert (=> bs!875840 (= (= lt!1713909 lt!1713584) (= lambda!175983 lambda!175909))))

(declare-fun bs!875842 () Bool)

(assert (= bs!875842 (and d!1402823 b!4538685)))

(assert (=> bs!875842 (= (= lt!1713909 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175983 lambda!175925))))

(declare-fun bs!875843 () Bool)

(assert (= bs!875843 (and d!1402823 d!1402523)))

(assert (=> bs!875843 (not (= lambda!175983 lambda!175918))))

(declare-fun bs!875845 () Bool)

(assert (= bs!875845 (and d!1402823 b!4539182)))

(assert (=> bs!875845 (= (= lt!1713909 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175983 lambda!175976))))

(declare-fun bs!875847 () Bool)

(assert (= bs!875847 (and d!1402823 b!4538248)))

(assert (=> bs!875847 (= (= lt!1713909 lt!1713258) (= lambda!175983 lambda!175837))))

(assert (=> bs!875845 (= (= lt!1713909 lt!1713882) (= lambda!175983 lambda!175977))))

(declare-fun bs!875850 () Bool)

(assert (= bs!875850 (and d!1402823 b!4538501)))

(assert (=> bs!875850 (= (= lt!1713909 lt!1713493) (= lambda!175983 lambda!175886))))

(assert (=> bs!875842 (= (= lt!1713909 lt!1713639) (= lambda!175983 lambda!175926))))

(declare-fun bs!875853 () Bool)

(assert (= bs!875853 (and d!1402823 b!4539183)))

(assert (=> bs!875853 (= (= lt!1713909 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175983 lambda!175975))))

(declare-fun bs!875855 () Bool)

(assert (= bs!875855 (and d!1402823 b!4539235)))

(assert (=> bs!875855 (= (= lt!1713909 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!175983 lambda!175980))))

(declare-fun bs!875857 () Bool)

(assert (= bs!875857 (and d!1402823 d!1402727)))

(assert (=> bs!875857 (= (= lt!1713909 lt!1713121) (= lambda!175983 lambda!175970))))

(declare-fun bs!875859 () Bool)

(assert (= bs!875859 (and d!1402823 d!1402531)))

(assert (=> bs!875859 (= (= lt!1713909 lt!1713634) (= lambda!175983 lambda!175927))))

(declare-fun bs!875861 () Bool)

(assert (= bs!875861 (and d!1402823 b!4539234)))

(assert (=> bs!875861 (= (= lt!1713909 lt!1713914) (= lambda!175983 lambda!175982))))

(declare-fun bs!875863 () Bool)

(assert (= bs!875863 (and d!1402823 b!4538617)))

(assert (=> bs!875863 (= (= lt!1713909 lt!1713103) (= lambda!175983 lambda!175907))))

(declare-fun bs!875864 () Bool)

(assert (= bs!875864 (and d!1402823 b!4538171)))

(assert (=> bs!875864 (not (= lambda!175983 lambda!175771))))

(assert (=> bs!875847 (= (= lt!1713909 lt!1713121) (= lambda!175983 lambda!175836))))

(declare-fun bs!875866 () Bool)

(assert (= bs!875866 (and d!1402823 b!4538686)))

(assert (=> bs!875866 (= (= lt!1713909 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175983 lambda!175924))))

(declare-fun bs!875867 () Bool)

(assert (= bs!875867 (and d!1402823 b!4538618)))

(assert (=> bs!875867 (= (= lt!1713909 lt!1713103) (= lambda!175983 lambda!175906))))

(declare-fun bs!875868 () Bool)

(assert (= bs!875868 (and d!1402823 b!4538678)))

(assert (=> bs!875868 (= (= lt!1713909 lt!1713617) (= lambda!175983 lambda!175921))))

(declare-fun bs!875869 () Bool)

(assert (= bs!875869 (and d!1402823 d!1402409)))

(assert (=> bs!875869 (= (= lt!1713909 lt!1713488) (= lambda!175983 lambda!175888))))

(assert (=> bs!875868 (= (= lt!1713909 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175983 lambda!175920))))

(declare-fun bs!875871 () Bool)

(assert (= bs!875871 (and d!1402823 d!1402527)))

(assert (=> bs!875871 (= (= lt!1713909 lt!1713612) (= lambda!175983 lambda!175922))))

(assert (=> bs!875863 (= (= lt!1713909 lt!1713589) (= lambda!175983 lambda!175908))))

(declare-fun bs!875873 () Bool)

(assert (= bs!875873 (and d!1402823 b!4538249)))

(assert (=> bs!875873 (= (= lt!1713909 lt!1713121) (= lambda!175983 lambda!175834))))

(declare-fun bs!875874 () Bool)

(assert (= bs!875874 (and d!1402823 b!4538502)))

(assert (=> bs!875874 (= (= lt!1713909 lt!1713095) (= lambda!175983 lambda!175883))))

(declare-fun bs!875875 () Bool)

(assert (= bs!875875 (and d!1402823 d!1402229)))

(assert (=> bs!875875 (= (= lt!1713909 lt!1713253) (= lambda!175983 lambda!175838))))

(declare-fun bs!875876 () Bool)

(assert (= bs!875876 (and d!1402823 d!1402771)))

(assert (=> bs!875876 (= (= lt!1713909 lt!1713877) (= lambda!175983 lambda!175978))))

(declare-fun bs!875877 () Bool)

(assert (= bs!875877 (and d!1402823 d!1402317)))

(assert (=> bs!875877 (not (= lambda!175983 lambda!175860))))

(assert (=> bs!875861 (= (= lt!1713909 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!175983 lambda!175981))))

(assert (=> bs!875850 (= (= lt!1713909 lt!1713095) (= lambda!175983 lambda!175885))))

(declare-fun bs!875879 () Bool)

(assert (= bs!875879 (and d!1402823 b!4538679)))

(assert (=> bs!875879 (= (= lt!1713909 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175983 lambda!175919))))

(declare-fun bs!875881 () Bool)

(assert (= bs!875881 (and d!1402823 d!1402545)))

(assert (=> bs!875881 (= (= lt!1713909 lt!1713589) (= lambda!175983 lambda!175932))))

(assert (=> d!1402823 true))

(declare-fun bm!316512 () Bool)

(declare-fun call!316517 () Unit!98176)

(assert (=> bm!316512 (= call!316517 (lemmaContainsAllItsOwnKeys!364 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))))))

(declare-fun b!4539231 () Bool)

(declare-fun e!2828578 () Bool)

(assert (=> b!4539231 (= e!2828578 (invariantList!1043 (toList!4403 lt!1713909)))))

(declare-fun call!316519 () Bool)

(declare-fun c!775300 () Bool)

(declare-fun bm!316513 () Bool)

(assert (=> bm!316513 (= call!316519 (forall!10343 (ite c!775300 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (_2!28908 (h!56628 (toList!4404 lt!1713100)))) (ite c!775300 lambda!175980 lambda!175982)))))

(declare-fun b!4539232 () Bool)

(declare-fun res!1891568 () Bool)

(assert (=> b!4539232 (=> (not res!1891568) (not e!2828578))))

(assert (=> b!4539232 (= res!1891568 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) lambda!175983))))

(declare-fun b!4539233 () Bool)

(declare-fun e!2828579 () Bool)

(assert (=> b!4539233 (= e!2828579 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) lambda!175982))))

(declare-fun e!2828580 () ListMap!3665)

(assert (=> b!4539234 (= e!2828580 lt!1713914)))

(declare-fun lt!1713920 () ListMap!3665)

(assert (=> b!4539234 (= lt!1713920 (+!1604 (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713100))))))))

(assert (=> b!4539234 (= lt!1713914 (addToMapMapFromBucket!725 (t!357834 (_2!28908 (h!56628 (toList!4404 lt!1713100)))) (+!1604 (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713100)))))))))

(declare-fun lt!1713913 () Unit!98176)

(assert (=> b!4539234 (= lt!1713913 call!316517)))

(assert (=> b!4539234 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) lambda!175981)))

(declare-fun lt!1713921 () Unit!98176)

(assert (=> b!4539234 (= lt!1713921 lt!1713913)))

(assert (=> b!4539234 (forall!10343 (toList!4403 lt!1713920) lambda!175982)))

(declare-fun lt!1713908 () Unit!98176)

(declare-fun Unit!98362 () Unit!98176)

(assert (=> b!4539234 (= lt!1713908 Unit!98362)))

(declare-fun call!316518 () Bool)

(assert (=> b!4539234 call!316518))

(declare-fun lt!1713919 () Unit!98176)

(declare-fun Unit!98363 () Unit!98176)

(assert (=> b!4539234 (= lt!1713919 Unit!98363)))

(declare-fun lt!1713907 () Unit!98176)

(declare-fun Unit!98364 () Unit!98176)

(assert (=> b!4539234 (= lt!1713907 Unit!98364)))

(declare-fun lt!1713910 () Unit!98176)

(assert (=> b!4539234 (= lt!1713910 (forallContained!2605 (toList!4403 lt!1713920) lambda!175982 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713100))))))))

(assert (=> b!4539234 (contains!13538 lt!1713920 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713100))))))))

(declare-fun lt!1713906 () Unit!98176)

(declare-fun Unit!98365 () Unit!98176)

(assert (=> b!4539234 (= lt!1713906 Unit!98365)))

(assert (=> b!4539234 (contains!13538 lt!1713914 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713100))))))))

(declare-fun lt!1713905 () Unit!98176)

(declare-fun Unit!98366 () Unit!98176)

(assert (=> b!4539234 (= lt!1713905 Unit!98366)))

(assert (=> b!4539234 call!316519))

(declare-fun lt!1713923 () Unit!98176)

(declare-fun Unit!98367 () Unit!98176)

(assert (=> b!4539234 (= lt!1713923 Unit!98367)))

(assert (=> b!4539234 (forall!10343 (toList!4403 lt!1713920) lambda!175982)))

(declare-fun lt!1713915 () Unit!98176)

(declare-fun Unit!98368 () Unit!98176)

(assert (=> b!4539234 (= lt!1713915 Unit!98368)))

(declare-fun lt!1713918 () Unit!98176)

(declare-fun Unit!98369 () Unit!98176)

(assert (=> b!4539234 (= lt!1713918 Unit!98369)))

(declare-fun lt!1713924 () Unit!98176)

(assert (=> b!4539234 (= lt!1713924 (addForallContainsKeyThenBeforeAdding!364 (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713914 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713100))))) (_2!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713100)))))))))

(assert (=> b!4539234 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) lambda!175982)))

(declare-fun lt!1713912 () Unit!98176)

(assert (=> b!4539234 (= lt!1713912 lt!1713924)))

(assert (=> b!4539234 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) lambda!175982)))

(declare-fun lt!1713922 () Unit!98176)

(declare-fun Unit!98372 () Unit!98176)

(assert (=> b!4539234 (= lt!1713922 Unit!98372)))

(declare-fun res!1891567 () Bool)

(assert (=> b!4539234 (= res!1891567 (forall!10343 (_2!28908 (h!56628 (toList!4404 lt!1713100))) lambda!175982))))

(assert (=> b!4539234 (=> (not res!1891567) (not e!2828579))))

(assert (=> b!4539234 e!2828579))

(declare-fun lt!1713904 () Unit!98176)

(declare-fun Unit!98375 () Unit!98176)

(assert (=> b!4539234 (= lt!1713904 Unit!98375)))

(assert (=> b!4539235 (= e!2828580 (extractMap!1254 (t!357835 (toList!4404 lt!1713100))))))

(declare-fun lt!1713917 () Unit!98176)

(assert (=> b!4539235 (= lt!1713917 call!316517)))

(assert (=> b!4539235 call!316518))

(declare-fun lt!1713916 () Unit!98176)

(assert (=> b!4539235 (= lt!1713916 lt!1713917)))

(assert (=> b!4539235 call!316519))

(declare-fun lt!1713911 () Unit!98176)

(declare-fun Unit!98376 () Unit!98176)

(assert (=> b!4539235 (= lt!1713911 Unit!98376)))

(declare-fun bm!316514 () Bool)

(assert (=> bm!316514 (= call!316518 (forall!10343 (ite c!775300 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (t!357834 (_2!28908 (h!56628 (toList!4404 lt!1713100))))) (ite c!775300 lambda!175980 lambda!175982)))))

(assert (=> d!1402823 e!2828578))

(declare-fun res!1891566 () Bool)

(assert (=> d!1402823 (=> (not res!1891566) (not e!2828578))))

(assert (=> d!1402823 (= res!1891566 (forall!10343 (_2!28908 (h!56628 (toList!4404 lt!1713100))) lambda!175983))))

(assert (=> d!1402823 (= lt!1713909 e!2828580)))

(assert (=> d!1402823 (= c!775300 ((_ is Nil!50748) (_2!28908 (h!56628 (toList!4404 lt!1713100)))))))

(assert (=> d!1402823 (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lt!1713100))))))

(assert (=> d!1402823 (= (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 lt!1713100))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) lt!1713909)))

(assert (= (and d!1402823 c!775300) b!4539235))

(assert (= (and d!1402823 (not c!775300)) b!4539234))

(assert (= (and b!4539234 res!1891567) b!4539233))

(assert (= (or b!4539235 b!4539234) bm!316513))

(assert (= (or b!4539235 b!4539234) bm!316514))

(assert (= (or b!4539235 b!4539234) bm!316512))

(assert (= (and d!1402823 res!1891566) b!4539232))

(assert (= (and b!4539232 res!1891568) b!4539231))

(declare-fun m!5304507 () Bool)

(assert (=> bm!316514 m!5304507))

(declare-fun m!5304509 () Bool)

(assert (=> b!4539234 m!5304509))

(assert (=> b!4539234 m!5303457))

(declare-fun m!5304511 () Bool)

(assert (=> b!4539234 m!5304511))

(declare-fun m!5304513 () Bool)

(assert (=> b!4539234 m!5304513))

(declare-fun m!5304515 () Bool)

(assert (=> b!4539234 m!5304515))

(assert (=> b!4539234 m!5304509))

(assert (=> b!4539234 m!5304515))

(declare-fun m!5304517 () Bool)

(assert (=> b!4539234 m!5304517))

(declare-fun m!5304519 () Bool)

(assert (=> b!4539234 m!5304519))

(declare-fun m!5304521 () Bool)

(assert (=> b!4539234 m!5304521))

(declare-fun m!5304523 () Bool)

(assert (=> b!4539234 m!5304523))

(assert (=> b!4539234 m!5304511))

(declare-fun m!5304525 () Bool)

(assert (=> b!4539234 m!5304525))

(assert (=> b!4539234 m!5303457))

(declare-fun m!5304527 () Bool)

(assert (=> b!4539234 m!5304527))

(declare-fun m!5304529 () Bool)

(assert (=> d!1402823 m!5304529))

(declare-fun m!5304531 () Bool)

(assert (=> d!1402823 m!5304531))

(declare-fun m!5304533 () Bool)

(assert (=> b!4539232 m!5304533))

(declare-fun m!5304535 () Bool)

(assert (=> b!4539231 m!5304535))

(declare-fun m!5304537 () Bool)

(assert (=> bm!316513 m!5304537))

(assert (=> bm!316512 m!5303457))

(declare-fun m!5304539 () Bool)

(assert (=> bm!316512 m!5304539))

(assert (=> b!4539233 m!5304515))

(assert (=> b!4538608 d!1402823))

(declare-fun bs!875896 () Bool)

(declare-fun d!1402827 () Bool)

(assert (= bs!875896 (and d!1402827 start!450372)))

(declare-fun lambda!175987 () Int)

(assert (=> bs!875896 (= lambda!175987 lambda!175769)))

(declare-fun bs!875897 () Bool)

(assert (= bs!875897 (and d!1402827 d!1402275)))

(assert (=> bs!875897 (= lambda!175987 lambda!175846)))

(declare-fun bs!875898 () Bool)

(assert (= bs!875898 (and d!1402827 b!4538171)))

(assert (=> bs!875898 (not (= lambda!175987 lambda!175770))))

(declare-fun bs!875899 () Bool)

(assert (= bs!875899 (and d!1402827 d!1402353)))

(assert (=> bs!875899 (= lambda!175987 lambda!175879)))

(declare-fun bs!875900 () Bool)

(assert (= bs!875900 (and d!1402827 d!1402303)))

(assert (=> bs!875900 (= lambda!175987 lambda!175857)))

(declare-fun bs!875901 () Bool)

(assert (= bs!875901 (and d!1402827 d!1402471)))

(assert (=> bs!875901 (= lambda!175987 lambda!175901)))

(declare-fun bs!875902 () Bool)

(assert (= bs!875902 (and d!1402827 d!1402801)))

(assert (=> bs!875902 (= lambda!175987 lambda!175979)))

(declare-fun bs!875903 () Bool)

(assert (= bs!875903 (and d!1402827 d!1402475)))

(assert (=> bs!875903 (= lambda!175987 lambda!175905)))

(declare-fun bs!875904 () Bool)

(assert (= bs!875904 (and d!1402827 d!1402601)))

(assert (=> bs!875904 (= lambda!175987 lambda!175933)))

(declare-fun bs!875905 () Bool)

(assert (= bs!875905 (and d!1402827 d!1402529)))

(assert (=> bs!875905 (= lambda!175987 lambda!175923)))

(declare-fun bs!875906 () Bool)

(assert (= bs!875906 (and d!1402827 d!1402349)))

(assert (=> bs!875906 (= lambda!175987 lambda!175870)))

(declare-fun bs!875907 () Bool)

(assert (= bs!875907 (and d!1402827 d!1402455)))

(assert (=> bs!875907 (not (= lambda!175987 lambda!175900))))

(declare-fun bs!875908 () Bool)

(assert (= bs!875908 (and d!1402827 d!1402253)))

(assert (=> bs!875908 (= lambda!175987 lambda!175843)))

(declare-fun bs!875909 () Bool)

(assert (= bs!875909 (and d!1402827 d!1402421)))

(assert (=> bs!875909 (= lambda!175987 lambda!175894)))

(declare-fun bs!875910 () Bool)

(assert (= bs!875910 (and d!1402827 d!1402473)))

(assert (=> bs!875910 (= lambda!175987 lambda!175902)))

(declare-fun bs!875911 () Bool)

(assert (= bs!875911 (and d!1402827 d!1402289)))

(assert (=> bs!875911 (= lambda!175987 lambda!175853)))

(declare-fun bs!875912 () Bool)

(assert (= bs!875912 (and d!1402827 d!1402345)))

(assert (=> bs!875912 (= lambda!175987 lambda!175867)))

(declare-fun lt!1713946 () ListMap!3665)

(assert (=> d!1402827 (invariantList!1043 (toList!4403 lt!1713946))))

(declare-fun e!2828584 () ListMap!3665)

(assert (=> d!1402827 (= lt!1713946 e!2828584)))

(declare-fun c!775302 () Bool)

(assert (=> d!1402827 (= c!775302 ((_ is Cons!50749) (t!357835 (toList!4404 lt!1713100))))))

(assert (=> d!1402827 (forall!10341 (t!357835 (toList!4404 lt!1713100)) lambda!175987)))

(assert (=> d!1402827 (= (extractMap!1254 (t!357835 (toList!4404 lt!1713100))) lt!1713946)))

(declare-fun b!4539241 () Bool)

(assert (=> b!4539241 (= e!2828584 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (t!357835 (toList!4404 lt!1713100)))) (extractMap!1254 (t!357835 (t!357835 (toList!4404 lt!1713100))))))))

(declare-fun b!4539242 () Bool)

(assert (=> b!4539242 (= e!2828584 (ListMap!3666 Nil!50748))))

(assert (= (and d!1402827 c!775302) b!4539241))

(assert (= (and d!1402827 (not c!775302)) b!4539242))

(declare-fun m!5304541 () Bool)

(assert (=> d!1402827 m!5304541))

(declare-fun m!5304543 () Bool)

(assert (=> d!1402827 m!5304543))

(declare-fun m!5304545 () Bool)

(assert (=> b!4539241 m!5304545))

(assert (=> b!4539241 m!5304545))

(declare-fun m!5304547 () Bool)

(assert (=> b!4539241 m!5304547))

(assert (=> b!4538608 d!1402827))

(declare-fun d!1402829 () Bool)

(assert (=> d!1402829 (= (get!16681 lt!1713455) (v!44884 lt!1713455))))

(assert (=> b!4538464 d!1402829))

(declare-fun d!1402831 () Bool)

(declare-fun lt!1713947 () Bool)

(assert (=> d!1402831 (= lt!1713947 (select (content!8435 (keys!17658 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) key!3287))))

(declare-fun e!2828585 () Bool)

(assert (=> d!1402831 (= lt!1713947 e!2828585)))

(declare-fun res!1891572 () Bool)

(assert (=> d!1402831 (=> (not res!1891572) (not e!2828585))))

(assert (=> d!1402831 (= res!1891572 ((_ is Cons!50751) (keys!17658 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))

(assert (=> d!1402831 (= (contains!13540 (keys!17658 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) key!3287) lt!1713947)))

(declare-fun b!4539243 () Bool)

(declare-fun e!2828586 () Bool)

(assert (=> b!4539243 (= e!2828585 e!2828586)))

(declare-fun res!1891573 () Bool)

(assert (=> b!4539243 (=> res!1891573 e!2828586)))

(assert (=> b!4539243 (= res!1891573 (= (h!56632 (keys!17658 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) key!3287))))

(declare-fun b!4539244 () Bool)

(assert (=> b!4539244 (= e!2828586 (contains!13540 (t!357837 (keys!17658 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) key!3287))))

(assert (= (and d!1402831 res!1891572) b!4539243))

(assert (= (and b!4539243 (not res!1891573)) b!4539244))

(assert (=> d!1402831 m!5303433))

(declare-fun m!5304549 () Bool)

(assert (=> d!1402831 m!5304549))

(declare-fun m!5304551 () Bool)

(assert (=> d!1402831 m!5304551))

(declare-fun m!5304553 () Bool)

(assert (=> b!4539244 m!5304553))

(assert (=> b!4538597 d!1402831))

(declare-fun bs!875925 () Bool)

(declare-fun b!4539246 () Bool)

(assert (= bs!875925 (and b!4539246 b!4538823)))

(declare-fun lambda!175989 () Int)

(assert (=> bs!875925 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713578)) (= lambda!175989 lambda!175936))))

(declare-fun bs!875928 () Bool)

(assert (= bs!875928 (and b!4539246 b!4538671)))

(assert (=> bs!875928 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713382)) (= lambda!175989 lambda!175916))))

(declare-fun bs!875929 () Bool)

(assert (= bs!875929 (and b!4539246 b!4539090)))

(assert (=> bs!875929 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713092)) (= lambda!175989 lambda!175966))))

(declare-fun bs!875930 () Bool)

(assert (= bs!875930 (and b!4539246 b!4538818)))

(assert (=> bs!875930 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!175989 lambda!175934))))

(declare-fun bs!875932 () Bool)

(assert (= bs!875932 (and b!4539246 b!4538664)))

(assert (=> bs!875932 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713103)) (= lambda!175989 lambda!175914))))

(assert (=> b!4539246 true))

(declare-fun bs!875934 () Bool)

(declare-fun b!4539247 () Bool)

(assert (= bs!875934 (and b!4539247 b!4538672)))

(declare-fun lambda!175990 () Int)

(assert (=> bs!875934 (= lambda!175990 lambda!175917)))

(declare-fun bs!875936 () Bool)

(assert (= bs!875936 (and b!4539247 b!4538665)))

(assert (=> bs!875936 (= lambda!175990 lambda!175915)))

(declare-fun bs!875937 () Bool)

(assert (= bs!875937 (and b!4539247 b!4539091)))

(assert (=> bs!875937 (= lambda!175990 lambda!175967)))

(declare-fun bs!875938 () Bool)

(assert (= bs!875938 (and b!4539247 b!4538824)))

(assert (=> bs!875938 (= lambda!175990 lambda!175937)))

(declare-fun bs!875939 () Bool)

(assert (= bs!875939 (and b!4539247 b!4538819)))

(assert (=> bs!875939 (= lambda!175990 lambda!175935)))

(declare-fun d!1402833 () Bool)

(declare-fun e!2828587 () Bool)

(assert (=> d!1402833 e!2828587))

(declare-fun res!1891575 () Bool)

(assert (=> d!1402833 (=> (not res!1891575) (not e!2828587))))

(declare-fun lt!1713948 () List!50875)

(assert (=> d!1402833 (= res!1891575 (noDuplicate!761 lt!1713948))))

(assert (=> d!1402833 (= lt!1713948 (getKeysList!491 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))

(assert (=> d!1402833 (= (keys!17658 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) lt!1713948)))

(declare-fun b!4539245 () Bool)

(declare-fun res!1891574 () Bool)

(assert (=> b!4539245 (=> (not res!1891574) (not e!2828587))))

(assert (=> b!4539245 (= res!1891574 (= (length!378 lt!1713948) (length!379 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))))

(declare-fun res!1891576 () Bool)

(assert (=> b!4539246 (=> (not res!1891576) (not e!2828587))))

(assert (=> b!4539246 (= res!1891576 (forall!10344 lt!1713948 lambda!175989))))

(assert (=> b!4539247 (= e!2828587 (= (content!8435 lt!1713948) (content!8435 (map!11171 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) lambda!175990))))))

(assert (= (and d!1402833 res!1891575) b!4539245))

(assert (= (and b!4539245 res!1891574) b!4539246))

(assert (= (and b!4539246 res!1891576) b!4539247))

(declare-fun m!5304555 () Bool)

(assert (=> d!1402833 m!5304555))

(assert (=> d!1402833 m!5303443))

(declare-fun m!5304557 () Bool)

(assert (=> b!4539245 m!5304557))

(declare-fun m!5304559 () Bool)

(assert (=> b!4539245 m!5304559))

(declare-fun m!5304561 () Bool)

(assert (=> b!4539246 m!5304561))

(declare-fun m!5304563 () Bool)

(assert (=> b!4539247 m!5304563))

(declare-fun m!5304565 () Bool)

(assert (=> b!4539247 m!5304565))

(assert (=> b!4539247 m!5304565))

(declare-fun m!5304567 () Bool)

(assert (=> b!4539247 m!5304567))

(assert (=> b!4538597 d!1402833))

(declare-fun d!1402835 () Bool)

(assert (=> d!1402835 (= (hash!2911 hashF!1107 (_1!28907 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113))))) (hash!2914 hashF!1107 (_1!28907 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113))))))))

(declare-fun bs!875940 () Bool)

(assert (= bs!875940 d!1402835))

(declare-fun m!5304569 () Bool)

(assert (=> bs!875940 m!5304569))

(assert (=> bs!875382 d!1402835))

(declare-fun b!4539248 () Bool)

(declare-fun e!2828588 () Bool)

(assert (=> b!4539248 (= e!2828588 (not (contains!13540 (keys!17658 (extractMap!1254 (toList!4404 lt!1713100))) key!3287)))))

(declare-fun bm!316518 () Bool)

(declare-fun call!316523 () Bool)

(declare-fun e!2828593 () List!50875)

(assert (=> bm!316518 (= call!316523 (contains!13540 e!2828593 key!3287))))

(declare-fun c!775303 () Bool)

(declare-fun c!775305 () Bool)

(assert (=> bm!316518 (= c!775303 c!775305)))

(declare-fun b!4539249 () Bool)

(declare-fun e!2828591 () Bool)

(assert (=> b!4539249 (= e!2828591 (contains!13540 (keys!17658 (extractMap!1254 (toList!4404 lt!1713100))) key!3287))))

(declare-fun b!4539250 () Bool)

(declare-fun e!2828589 () Bool)

(assert (=> b!4539250 (= e!2828589 e!2828591)))

(declare-fun res!1891579 () Bool)

(assert (=> b!4539250 (=> (not res!1891579) (not e!2828591))))

(assert (=> b!4539250 (= res!1891579 (isDefined!8474 (getValueByKey!1144 (toList!4403 (extractMap!1254 (toList!4404 lt!1713100))) key!3287)))))

(declare-fun b!4539251 () Bool)

(declare-fun e!2828592 () Unit!98176)

(declare-fun Unit!98379 () Unit!98176)

(assert (=> b!4539251 (= e!2828592 Unit!98379)))

(declare-fun b!4539252 () Bool)

(declare-fun e!2828590 () Unit!98176)

(assert (=> b!4539252 (= e!2828590 e!2828592)))

(declare-fun c!775304 () Bool)

(assert (=> b!4539252 (= c!775304 call!316523)))

(declare-fun d!1402837 () Bool)

(assert (=> d!1402837 e!2828589))

(declare-fun res!1891578 () Bool)

(assert (=> d!1402837 (=> res!1891578 e!2828589)))

(assert (=> d!1402837 (= res!1891578 e!2828588)))

(declare-fun res!1891577 () Bool)

(assert (=> d!1402837 (=> (not res!1891577) (not e!2828588))))

(declare-fun lt!1713950 () Bool)

(assert (=> d!1402837 (= res!1891577 (not lt!1713950))))

(declare-fun lt!1713952 () Bool)

(assert (=> d!1402837 (= lt!1713950 lt!1713952)))

(declare-fun lt!1713951 () Unit!98176)

(assert (=> d!1402837 (= lt!1713951 e!2828590)))

(assert (=> d!1402837 (= c!775305 lt!1713952)))

(assert (=> d!1402837 (= lt!1713952 (containsKey!1872 (toList!4403 (extractMap!1254 (toList!4404 lt!1713100))) key!3287))))

(assert (=> d!1402837 (= (contains!13538 (extractMap!1254 (toList!4404 lt!1713100)) key!3287) lt!1713950)))

(declare-fun b!4539253 () Bool)

(assert (=> b!4539253 (= e!2828593 (getKeysList!491 (toList!4403 (extractMap!1254 (toList!4404 lt!1713100)))))))

(declare-fun b!4539254 () Bool)

(assert (=> b!4539254 false))

(declare-fun lt!1713956 () Unit!98176)

(declare-fun lt!1713953 () Unit!98176)

(assert (=> b!4539254 (= lt!1713956 lt!1713953)))

(assert (=> b!4539254 (containsKey!1872 (toList!4403 (extractMap!1254 (toList!4404 lt!1713100))) key!3287)))

(assert (=> b!4539254 (= lt!1713953 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 (extractMap!1254 (toList!4404 lt!1713100))) key!3287))))

(declare-fun Unit!98380 () Unit!98176)

(assert (=> b!4539254 (= e!2828592 Unit!98380)))

(declare-fun b!4539255 () Bool)

(declare-fun lt!1713954 () Unit!98176)

(assert (=> b!4539255 (= e!2828590 lt!1713954)))

(declare-fun lt!1713955 () Unit!98176)

(assert (=> b!4539255 (= lt!1713955 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 (extractMap!1254 (toList!4404 lt!1713100))) key!3287))))

(assert (=> b!4539255 (isDefined!8474 (getValueByKey!1144 (toList!4403 (extractMap!1254 (toList!4404 lt!1713100))) key!3287))))

(declare-fun lt!1713949 () Unit!98176)

(assert (=> b!4539255 (= lt!1713949 lt!1713955)))

(assert (=> b!4539255 (= lt!1713954 (lemmaInListThenGetKeysListContains!487 (toList!4403 (extractMap!1254 (toList!4404 lt!1713100))) key!3287))))

(assert (=> b!4539255 call!316523))

(declare-fun b!4539256 () Bool)

(assert (=> b!4539256 (= e!2828593 (keys!17658 (extractMap!1254 (toList!4404 lt!1713100))))))

(assert (= (and d!1402837 c!775305) b!4539255))

(assert (= (and d!1402837 (not c!775305)) b!4539252))

(assert (= (and b!4539252 c!775304) b!4539254))

(assert (= (and b!4539252 (not c!775304)) b!4539251))

(assert (= (or b!4539255 b!4539252) bm!316518))

(assert (= (and bm!316518 c!775303) b!4539253))

(assert (= (and bm!316518 (not c!775303)) b!4539256))

(assert (= (and d!1402837 res!1891577) b!4539248))

(assert (= (and d!1402837 (not res!1891578)) b!4539250))

(assert (= (and b!4539250 res!1891579) b!4539249))

(declare-fun m!5304605 () Bool)

(assert (=> bm!316518 m!5304605))

(declare-fun m!5304607 () Bool)

(assert (=> b!4539250 m!5304607))

(assert (=> b!4539250 m!5304607))

(declare-fun m!5304609 () Bool)

(assert (=> b!4539250 m!5304609))

(declare-fun m!5304611 () Bool)

(assert (=> d!1402837 m!5304611))

(assert (=> b!4539248 m!5302545))

(assert (=> b!4539248 m!5303853))

(assert (=> b!4539248 m!5303853))

(declare-fun m!5304613 () Bool)

(assert (=> b!4539248 m!5304613))

(assert (=> b!4539256 m!5302545))

(assert (=> b!4539256 m!5303853))

(assert (=> b!4539249 m!5302545))

(assert (=> b!4539249 m!5303853))

(assert (=> b!4539249 m!5303853))

(assert (=> b!4539249 m!5304613))

(assert (=> b!4539254 m!5304611))

(declare-fun m!5304619 () Bool)

(assert (=> b!4539254 m!5304619))

(declare-fun m!5304623 () Bool)

(assert (=> b!4539255 m!5304623))

(assert (=> b!4539255 m!5304607))

(assert (=> b!4539255 m!5304607))

(assert (=> b!4539255 m!5304609))

(declare-fun m!5304625 () Bool)

(assert (=> b!4539255 m!5304625))

(declare-fun m!5304627 () Bool)

(assert (=> b!4539253 m!5304627))

(assert (=> d!1402475 d!1402837))

(assert (=> d!1402475 d!1402473))

(declare-fun d!1402843 () Bool)

(assert (=> d!1402843 (contains!13538 (extractMap!1254 (toList!4404 lt!1713100)) key!3287)))

(assert (=> d!1402843 true))

(declare-fun _$34!721 () Unit!98176)

(assert (=> d!1402843 (= (choose!29877 lt!1713100 key!3287 hashF!1107) _$34!721)))

(declare-fun bs!875955 () Bool)

(assert (= bs!875955 d!1402843))

(assert (=> bs!875955 m!5302545))

(assert (=> bs!875955 m!5302545))

(assert (=> bs!875955 m!5303461))

(assert (=> d!1402475 d!1402843))

(declare-fun d!1402853 () Bool)

(declare-fun res!1891595 () Bool)

(declare-fun e!2828607 () Bool)

(assert (=> d!1402853 (=> res!1891595 e!2828607)))

(assert (=> d!1402853 (= res!1891595 ((_ is Nil!50749) (toList!4404 lt!1713100)))))

(assert (=> d!1402853 (= (forall!10341 (toList!4404 lt!1713100) lambda!175905) e!2828607)))

(declare-fun b!4539272 () Bool)

(declare-fun e!2828608 () Bool)

(assert (=> b!4539272 (= e!2828607 e!2828608)))

(declare-fun res!1891596 () Bool)

(assert (=> b!4539272 (=> (not res!1891596) (not e!2828608))))

(assert (=> b!4539272 (= res!1891596 (dynLambda!21211 lambda!175905 (h!56628 (toList!4404 lt!1713100))))))

(declare-fun b!4539273 () Bool)

(assert (=> b!4539273 (= e!2828608 (forall!10341 (t!357835 (toList!4404 lt!1713100)) lambda!175905))))

(assert (= (and d!1402853 (not res!1891595)) b!4539272))

(assert (= (and b!4539272 res!1891596) b!4539273))

(declare-fun b_lambda!157749 () Bool)

(assert (=> (not b_lambda!157749) (not b!4539272)))

(declare-fun m!5304653 () Bool)

(assert (=> b!4539272 m!5304653))

(declare-fun m!5304655 () Bool)

(assert (=> b!4539273 m!5304655))

(assert (=> d!1402475 d!1402853))

(assert (=> b!4538321 d!1402709))

(declare-fun d!1402855 () Bool)

(declare-fun res!1891597 () Bool)

(declare-fun e!2828609 () Bool)

(assert (=> d!1402855 (=> res!1891597 e!2828609)))

(assert (=> d!1402855 (= res!1891597 ((_ is Nil!50748) (toList!4403 lt!1713095)))))

(assert (=> d!1402855 (= (forall!10343 (toList!4403 lt!1713095) lambda!175885) e!2828609)))

(declare-fun b!4539274 () Bool)

(declare-fun e!2828610 () Bool)

(assert (=> b!4539274 (= e!2828609 e!2828610)))

(declare-fun res!1891598 () Bool)

(assert (=> b!4539274 (=> (not res!1891598) (not e!2828610))))

(assert (=> b!4539274 (= res!1891598 (dynLambda!21212 lambda!175885 (h!56627 (toList!4403 lt!1713095))))))

(declare-fun b!4539275 () Bool)

(assert (=> b!4539275 (= e!2828610 (forall!10343 (t!357834 (toList!4403 lt!1713095)) lambda!175885))))

(assert (= (and d!1402855 (not res!1891597)) b!4539274))

(assert (= (and b!4539274 res!1891598) b!4539275))

(declare-fun b_lambda!157751 () Bool)

(assert (=> (not b_lambda!157751) (not b!4539274)))

(declare-fun m!5304657 () Bool)

(assert (=> b!4539274 m!5304657))

(declare-fun m!5304659 () Bool)

(assert (=> b!4539275 m!5304659))

(assert (=> b!4538501 d!1402855))

(declare-fun d!1402857 () Bool)

(declare-fun res!1891599 () Bool)

(declare-fun e!2828611 () Bool)

(assert (=> d!1402857 (=> res!1891599 e!2828611)))

(assert (=> d!1402857 (= res!1891599 ((_ is Nil!50748) (toList!4403 lt!1713499)))))

(assert (=> d!1402857 (= (forall!10343 (toList!4403 lt!1713499) lambda!175886) e!2828611)))

(declare-fun b!4539276 () Bool)

(declare-fun e!2828612 () Bool)

(assert (=> b!4539276 (= e!2828611 e!2828612)))

(declare-fun res!1891600 () Bool)

(assert (=> b!4539276 (=> (not res!1891600) (not e!2828612))))

(assert (=> b!4539276 (= res!1891600 (dynLambda!21212 lambda!175886 (h!56627 (toList!4403 lt!1713499))))))

(declare-fun b!4539277 () Bool)

(assert (=> b!4539277 (= e!2828612 (forall!10343 (t!357834 (toList!4403 lt!1713499)) lambda!175886))))

(assert (= (and d!1402857 (not res!1891599)) b!4539276))

(assert (= (and b!4539276 res!1891600) b!4539277))

(declare-fun b_lambda!157753 () Bool)

(assert (=> (not b_lambda!157753) (not b!4539276)))

(declare-fun m!5304661 () Bool)

(assert (=> b!4539276 m!5304661))

(declare-fun m!5304663 () Bool)

(assert (=> b!4539277 m!5304663))

(assert (=> b!4538501 d!1402857))

(assert (=> b!4538501 d!1402575))

(declare-fun bs!875960 () Bool)

(declare-fun b!4539282 () Bool)

(assert (= bs!875960 (and b!4539282 d!1402485)))

(declare-fun lambda!175996 () Int)

(assert (=> bs!875960 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713584) (= lambda!175996 lambda!175909))))

(declare-fun bs!875963 () Bool)

(assert (= bs!875963 (and b!4539282 d!1402823)))

(assert (=> bs!875963 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713909) (= lambda!175996 lambda!175983))))

(declare-fun bs!875964 () Bool)

(assert (= bs!875964 (and b!4539282 b!4538685)))

(assert (=> bs!875964 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175996 lambda!175925))))

(declare-fun bs!875966 () Bool)

(assert (= bs!875966 (and b!4539282 d!1402523)))

(assert (=> bs!875966 (not (= lambda!175996 lambda!175918))))

(declare-fun bs!875968 () Bool)

(assert (= bs!875968 (and b!4539282 b!4539182)))

(assert (=> bs!875968 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175996 lambda!175976))))

(declare-fun bs!875969 () Bool)

(assert (= bs!875969 (and b!4539282 b!4538248)))

(assert (=> bs!875969 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713258) (= lambda!175996 lambda!175837))))

(assert (=> bs!875968 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713882) (= lambda!175996 lambda!175977))))

(declare-fun bs!875972 () Bool)

(assert (= bs!875972 (and b!4539282 b!4538501)))

(assert (=> bs!875972 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713493) (= lambda!175996 lambda!175886))))

(assert (=> bs!875964 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713639) (= lambda!175996 lambda!175926))))

(declare-fun bs!875976 () Bool)

(assert (= bs!875976 (and b!4539282 b!4539183)))

(assert (=> bs!875976 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175996 lambda!175975))))

(declare-fun bs!875978 () Bool)

(assert (= bs!875978 (and b!4539282 b!4539235)))

(assert (=> bs!875978 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!175996 lambda!175980))))

(declare-fun bs!875979 () Bool)

(assert (= bs!875979 (and b!4539282 d!1402727)))

(assert (=> bs!875979 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175996 lambda!175970))))

(declare-fun bs!875981 () Bool)

(assert (= bs!875981 (and b!4539282 d!1402531)))

(assert (=> bs!875981 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713634) (= lambda!175996 lambda!175927))))

(declare-fun bs!875982 () Bool)

(assert (= bs!875982 (and b!4539282 b!4539234)))

(assert (=> bs!875982 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713914) (= lambda!175996 lambda!175982))))

(declare-fun bs!875984 () Bool)

(assert (= bs!875984 (and b!4539282 b!4538617)))

(assert (=> bs!875984 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!175996 lambda!175907))))

(declare-fun bs!875986 () Bool)

(assert (= bs!875986 (and b!4539282 b!4538171)))

(assert (=> bs!875986 (not (= lambda!175996 lambda!175771))))

(assert (=> bs!875969 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175996 lambda!175836))))

(declare-fun bs!875988 () Bool)

(assert (= bs!875988 (and b!4539282 b!4538686)))

(assert (=> bs!875988 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175996 lambda!175924))))

(declare-fun bs!875989 () Bool)

(assert (= bs!875989 (and b!4539282 b!4538618)))

(assert (=> bs!875989 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!175996 lambda!175906))))

(declare-fun bs!875990 () Bool)

(assert (= bs!875990 (and b!4539282 b!4538678)))

(assert (=> bs!875990 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713617) (= lambda!175996 lambda!175921))))

(declare-fun bs!875991 () Bool)

(assert (= bs!875991 (and b!4539282 d!1402409)))

(assert (=> bs!875991 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713488) (= lambda!175996 lambda!175888))))

(assert (=> bs!875990 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175996 lambda!175920))))

(declare-fun bs!875993 () Bool)

(assert (= bs!875993 (and b!4539282 d!1402527)))

(assert (=> bs!875993 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713612) (= lambda!175996 lambda!175922))))

(assert (=> bs!875984 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!175996 lambda!175908))))

(declare-fun bs!875994 () Bool)

(assert (= bs!875994 (and b!4539282 b!4538249)))

(assert (=> bs!875994 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175996 lambda!175834))))

(declare-fun bs!875995 () Bool)

(assert (= bs!875995 (and b!4539282 b!4538502)))

(assert (=> bs!875995 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!175996 lambda!175883))))

(declare-fun bs!875996 () Bool)

(assert (= bs!875996 (and b!4539282 d!1402229)))

(assert (=> bs!875996 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713253) (= lambda!175996 lambda!175838))))

(declare-fun bs!875997 () Bool)

(assert (= bs!875997 (and b!4539282 d!1402771)))

(assert (=> bs!875997 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713877) (= lambda!175996 lambda!175978))))

(declare-fun bs!875998 () Bool)

(assert (= bs!875998 (and b!4539282 d!1402317)))

(assert (=> bs!875998 (not (= lambda!175996 lambda!175860))))

(assert (=> bs!875982 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!175996 lambda!175981))))

(assert (=> bs!875972 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!175996 lambda!175885))))

(declare-fun bs!875999 () Bool)

(assert (= bs!875999 (and b!4539282 b!4538679)))

(assert (=> bs!875999 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175996 lambda!175919))))

(declare-fun bs!876000 () Bool)

(assert (= bs!876000 (and b!4539282 d!1402545)))

(assert (=> bs!876000 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!175996 lambda!175932))))

(assert (=> b!4539282 true))

(declare-fun bs!876006 () Bool)

(declare-fun b!4539281 () Bool)

(assert (= bs!876006 (and b!4539281 d!1402485)))

(declare-fun lambda!175998 () Int)

(assert (=> bs!876006 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713584) (= lambda!175998 lambda!175909))))

(declare-fun bs!876007 () Bool)

(assert (= bs!876007 (and b!4539281 d!1402823)))

(assert (=> bs!876007 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713909) (= lambda!175998 lambda!175983))))

(declare-fun bs!876009 () Bool)

(assert (= bs!876009 (and b!4539281 b!4538685)))

(assert (=> bs!876009 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175998 lambda!175925))))

(declare-fun bs!876011 () Bool)

(assert (= bs!876011 (and b!4539281 d!1402523)))

(assert (=> bs!876011 (not (= lambda!175998 lambda!175918))))

(declare-fun bs!876013 () Bool)

(assert (= bs!876013 (and b!4539281 b!4539182)))

(assert (=> bs!876013 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175998 lambda!175976))))

(declare-fun bs!876015 () Bool)

(assert (= bs!876015 (and b!4539281 b!4538248)))

(assert (=> bs!876015 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713258) (= lambda!175998 lambda!175837))))

(declare-fun bs!876017 () Bool)

(assert (= bs!876017 (and b!4539281 b!4539282)))

(assert (=> bs!876017 (= lambda!175998 lambda!175996)))

(assert (=> bs!876013 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713882) (= lambda!175998 lambda!175977))))

(declare-fun bs!876020 () Bool)

(assert (= bs!876020 (and b!4539281 b!4538501)))

(assert (=> bs!876020 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713493) (= lambda!175998 lambda!175886))))

(assert (=> bs!876009 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713639) (= lambda!175998 lambda!175926))))

(declare-fun bs!876022 () Bool)

(assert (= bs!876022 (and b!4539281 b!4539183)))

(assert (=> bs!876022 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!175998 lambda!175975))))

(declare-fun bs!876024 () Bool)

(assert (= bs!876024 (and b!4539281 b!4539235)))

(assert (=> bs!876024 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!175998 lambda!175980))))

(declare-fun bs!876026 () Bool)

(assert (= bs!876026 (and b!4539281 d!1402727)))

(assert (=> bs!876026 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175998 lambda!175970))))

(declare-fun bs!876027 () Bool)

(assert (= bs!876027 (and b!4539281 d!1402531)))

(assert (=> bs!876027 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713634) (= lambda!175998 lambda!175927))))

(declare-fun bs!876028 () Bool)

(assert (= bs!876028 (and b!4539281 b!4539234)))

(assert (=> bs!876028 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713914) (= lambda!175998 lambda!175982))))

(declare-fun bs!876030 () Bool)

(assert (= bs!876030 (and b!4539281 b!4538617)))

(assert (=> bs!876030 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!175998 lambda!175907))))

(declare-fun bs!876031 () Bool)

(assert (= bs!876031 (and b!4539281 b!4538171)))

(assert (=> bs!876031 (not (= lambda!175998 lambda!175771))))

(assert (=> bs!876015 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175998 lambda!175836))))

(declare-fun bs!876033 () Bool)

(assert (= bs!876033 (and b!4539281 b!4538686)))

(assert (=> bs!876033 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!175998 lambda!175924))))

(declare-fun bs!876035 () Bool)

(assert (= bs!876035 (and b!4539281 b!4538618)))

(assert (=> bs!876035 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!175998 lambda!175906))))

(declare-fun bs!876037 () Bool)

(assert (= bs!876037 (and b!4539281 b!4538678)))

(assert (=> bs!876037 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713617) (= lambda!175998 lambda!175921))))

(declare-fun bs!876038 () Bool)

(assert (= bs!876038 (and b!4539281 d!1402409)))

(assert (=> bs!876038 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713488) (= lambda!175998 lambda!175888))))

(assert (=> bs!876037 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175998 lambda!175920))))

(declare-fun bs!876039 () Bool)

(assert (= bs!876039 (and b!4539281 d!1402527)))

(assert (=> bs!876039 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713612) (= lambda!175998 lambda!175922))))

(assert (=> bs!876030 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!175998 lambda!175908))))

(declare-fun bs!876040 () Bool)

(assert (= bs!876040 (and b!4539281 b!4538249)))

(assert (=> bs!876040 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!175998 lambda!175834))))

(declare-fun bs!876041 () Bool)

(assert (= bs!876041 (and b!4539281 b!4538502)))

(assert (=> bs!876041 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!175998 lambda!175883))))

(declare-fun bs!876043 () Bool)

(assert (= bs!876043 (and b!4539281 d!1402229)))

(assert (=> bs!876043 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713253) (= lambda!175998 lambda!175838))))

(declare-fun bs!876045 () Bool)

(assert (= bs!876045 (and b!4539281 d!1402771)))

(assert (=> bs!876045 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713877) (= lambda!175998 lambda!175978))))

(declare-fun bs!876046 () Bool)

(assert (= bs!876046 (and b!4539281 d!1402317)))

(assert (=> bs!876046 (not (= lambda!175998 lambda!175860))))

(assert (=> bs!876028 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!175998 lambda!175981))))

(assert (=> bs!876020 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!175998 lambda!175885))))

(declare-fun bs!876051 () Bool)

(assert (= bs!876051 (and b!4539281 b!4538679)))

(assert (=> bs!876051 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!175998 lambda!175919))))

(declare-fun bs!876053 () Bool)

(assert (= bs!876053 (and b!4539281 d!1402545)))

(assert (=> bs!876053 (= (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!175998 lambda!175932))))

(assert (=> b!4539281 true))

(declare-fun lambda!176000 () Int)

(declare-fun lt!1713974 () ListMap!3665)

(assert (=> bs!876006 (= (= lt!1713974 lt!1713584) (= lambda!176000 lambda!175909))))

(assert (=> bs!876007 (= (= lt!1713974 lt!1713909) (= lambda!176000 lambda!175983))))

(assert (=> bs!876009 (= (= lt!1713974 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176000 lambda!175925))))

(assert (=> bs!876011 (not (= lambda!176000 lambda!175918))))

(assert (=> bs!876013 (= (= lt!1713974 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176000 lambda!175976))))

(assert (=> bs!876015 (= (= lt!1713974 lt!1713258) (= lambda!176000 lambda!175837))))

(assert (=> bs!876017 (= (= lt!1713974 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176000 lambda!175996))))

(assert (=> bs!876013 (= (= lt!1713974 lt!1713882) (= lambda!176000 lambda!175977))))

(assert (=> bs!876020 (= (= lt!1713974 lt!1713493) (= lambda!176000 lambda!175886))))

(assert (=> bs!876009 (= (= lt!1713974 lt!1713639) (= lambda!176000 lambda!175926))))

(assert (=> bs!876022 (= (= lt!1713974 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176000 lambda!175975))))

(assert (=> bs!876024 (= (= lt!1713974 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176000 lambda!175980))))

(assert (=> bs!876026 (= (= lt!1713974 lt!1713121) (= lambda!176000 lambda!175970))))

(assert (=> bs!876027 (= (= lt!1713974 lt!1713634) (= lambda!176000 lambda!175927))))

(assert (=> bs!876028 (= (= lt!1713974 lt!1713914) (= lambda!176000 lambda!175982))))

(assert (=> bs!876030 (= (= lt!1713974 lt!1713103) (= lambda!176000 lambda!175907))))

(assert (=> bs!876031 (not (= lambda!176000 lambda!175771))))

(assert (=> bs!876015 (= (= lt!1713974 lt!1713121) (= lambda!176000 lambda!175836))))

(assert (=> bs!876033 (= (= lt!1713974 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176000 lambda!175924))))

(assert (=> bs!876035 (= (= lt!1713974 lt!1713103) (= lambda!176000 lambda!175906))))

(assert (=> bs!876037 (= (= lt!1713974 lt!1713617) (= lambda!176000 lambda!175921))))

(assert (=> bs!876038 (= (= lt!1713974 lt!1713488) (= lambda!176000 lambda!175888))))

(assert (=> bs!876037 (= (= lt!1713974 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176000 lambda!175920))))

(assert (=> bs!876039 (= (= lt!1713974 lt!1713612) (= lambda!176000 lambda!175922))))

(assert (=> bs!876030 (= (= lt!1713974 lt!1713589) (= lambda!176000 lambda!175908))))

(assert (=> bs!876040 (= (= lt!1713974 lt!1713121) (= lambda!176000 lambda!175834))))

(assert (=> bs!876041 (= (= lt!1713974 lt!1713095) (= lambda!176000 lambda!175883))))

(assert (=> bs!876043 (= (= lt!1713974 lt!1713253) (= lambda!176000 lambda!175838))))

(assert (=> b!4539281 (= (= lt!1713974 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176000 lambda!175998))))

(assert (=> bs!876045 (= (= lt!1713974 lt!1713877) (= lambda!176000 lambda!175978))))

(assert (=> bs!876046 (not (= lambda!176000 lambda!175860))))

(assert (=> bs!876028 (= (= lt!1713974 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176000 lambda!175981))))

(assert (=> bs!876020 (= (= lt!1713974 lt!1713095) (= lambda!176000 lambda!175885))))

(assert (=> bs!876051 (= (= lt!1713974 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176000 lambda!175919))))

(assert (=> bs!876053 (= (= lt!1713974 lt!1713589) (= lambda!176000 lambda!175932))))

(assert (=> b!4539281 true))

(declare-fun bs!876067 () Bool)

(declare-fun d!1402859 () Bool)

(assert (= bs!876067 (and d!1402859 d!1402485)))

(declare-fun lt!1713969 () ListMap!3665)

(declare-fun lambda!176002 () Int)

(assert (=> bs!876067 (= (= lt!1713969 lt!1713584) (= lambda!176002 lambda!175909))))

(declare-fun bs!876068 () Bool)

(assert (= bs!876068 (and d!1402859 d!1402823)))

(assert (=> bs!876068 (= (= lt!1713969 lt!1713909) (= lambda!176002 lambda!175983))))

(declare-fun bs!876069 () Bool)

(assert (= bs!876069 (and d!1402859 b!4538685)))

(assert (=> bs!876069 (= (= lt!1713969 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176002 lambda!175925))))

(declare-fun bs!876070 () Bool)

(assert (= bs!876070 (and d!1402859 d!1402523)))

(assert (=> bs!876070 (not (= lambda!176002 lambda!175918))))

(declare-fun bs!876071 () Bool)

(assert (= bs!876071 (and d!1402859 b!4539182)))

(assert (=> bs!876071 (= (= lt!1713969 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176002 lambda!175976))))

(declare-fun bs!876072 () Bool)

(assert (= bs!876072 (and d!1402859 b!4538248)))

(assert (=> bs!876072 (= (= lt!1713969 lt!1713258) (= lambda!176002 lambda!175837))))

(declare-fun bs!876073 () Bool)

(assert (= bs!876073 (and d!1402859 b!4539282)))

(assert (=> bs!876073 (= (= lt!1713969 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176002 lambda!175996))))

(assert (=> bs!876071 (= (= lt!1713969 lt!1713882) (= lambda!176002 lambda!175977))))

(declare-fun bs!876075 () Bool)

(assert (= bs!876075 (and d!1402859 b!4538501)))

(assert (=> bs!876075 (= (= lt!1713969 lt!1713493) (= lambda!176002 lambda!175886))))

(assert (=> bs!876069 (= (= lt!1713969 lt!1713639) (= lambda!176002 lambda!175926))))

(declare-fun bs!876078 () Bool)

(assert (= bs!876078 (and d!1402859 b!4539183)))

(assert (=> bs!876078 (= (= lt!1713969 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176002 lambda!175975))))

(declare-fun bs!876080 () Bool)

(assert (= bs!876080 (and d!1402859 b!4539235)))

(assert (=> bs!876080 (= (= lt!1713969 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176002 lambda!175980))))

(declare-fun bs!876081 () Bool)

(assert (= bs!876081 (and d!1402859 d!1402727)))

(assert (=> bs!876081 (= (= lt!1713969 lt!1713121) (= lambda!176002 lambda!175970))))

(declare-fun bs!876083 () Bool)

(assert (= bs!876083 (and d!1402859 d!1402531)))

(assert (=> bs!876083 (= (= lt!1713969 lt!1713634) (= lambda!176002 lambda!175927))))

(declare-fun bs!876085 () Bool)

(assert (= bs!876085 (and d!1402859 b!4539234)))

(assert (=> bs!876085 (= (= lt!1713969 lt!1713914) (= lambda!176002 lambda!175982))))

(declare-fun bs!876086 () Bool)

(assert (= bs!876086 (and d!1402859 b!4538617)))

(assert (=> bs!876086 (= (= lt!1713969 lt!1713103) (= lambda!176002 lambda!175907))))

(assert (=> bs!876072 (= (= lt!1713969 lt!1713121) (= lambda!176002 lambda!175836))))

(declare-fun bs!876089 () Bool)

(assert (= bs!876089 (and d!1402859 b!4538686)))

(assert (=> bs!876089 (= (= lt!1713969 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176002 lambda!175924))))

(declare-fun bs!876091 () Bool)

(assert (= bs!876091 (and d!1402859 b!4538618)))

(assert (=> bs!876091 (= (= lt!1713969 lt!1713103) (= lambda!176002 lambda!175906))))

(declare-fun bs!876093 () Bool)

(assert (= bs!876093 (and d!1402859 b!4538678)))

(assert (=> bs!876093 (= (= lt!1713969 lt!1713617) (= lambda!176002 lambda!175921))))

(declare-fun bs!876095 () Bool)

(assert (= bs!876095 (and d!1402859 d!1402409)))

(assert (=> bs!876095 (= (= lt!1713969 lt!1713488) (= lambda!176002 lambda!175888))))

(assert (=> bs!876093 (= (= lt!1713969 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176002 lambda!175920))))

(declare-fun bs!876098 () Bool)

(assert (= bs!876098 (and d!1402859 d!1402527)))

(assert (=> bs!876098 (= (= lt!1713969 lt!1713612) (= lambda!176002 lambda!175922))))

(assert (=> bs!876086 (= (= lt!1713969 lt!1713589) (= lambda!176002 lambda!175908))))

(declare-fun bs!876101 () Bool)

(assert (= bs!876101 (and d!1402859 b!4538249)))

(assert (=> bs!876101 (= (= lt!1713969 lt!1713121) (= lambda!176002 lambda!175834))))

(declare-fun bs!876102 () Bool)

(assert (= bs!876102 (and d!1402859 b!4538502)))

(assert (=> bs!876102 (= (= lt!1713969 lt!1713095) (= lambda!176002 lambda!175883))))

(declare-fun bs!876104 () Bool)

(assert (= bs!876104 (and d!1402859 d!1402229)))

(assert (=> bs!876104 (= (= lt!1713969 lt!1713253) (= lambda!176002 lambda!175838))))

(declare-fun bs!876106 () Bool)

(assert (= bs!876106 (and d!1402859 b!4539281)))

(assert (=> bs!876106 (= (= lt!1713969 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176002 lambda!175998))))

(declare-fun bs!876107 () Bool)

(assert (= bs!876107 (and d!1402859 d!1402771)))

(assert (=> bs!876107 (= (= lt!1713969 lt!1713877) (= lambda!176002 lambda!175978))))

(declare-fun bs!876109 () Bool)

(assert (= bs!876109 (and d!1402859 d!1402317)))

(assert (=> bs!876109 (not (= lambda!176002 lambda!175860))))

(assert (=> bs!876085 (= (= lt!1713969 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176002 lambda!175981))))

(assert (=> bs!876075 (= (= lt!1713969 lt!1713095) (= lambda!176002 lambda!175885))))

(declare-fun bs!876111 () Bool)

(assert (= bs!876111 (and d!1402859 b!4538679)))

(assert (=> bs!876111 (= (= lt!1713969 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176002 lambda!175919))))

(declare-fun bs!876113 () Bool)

(assert (= bs!876113 (and d!1402859 d!1402545)))

(assert (=> bs!876113 (= (= lt!1713969 lt!1713589) (= lambda!176002 lambda!175932))))

(declare-fun bs!876115 () Bool)

(assert (= bs!876115 (and d!1402859 b!4538171)))

(assert (=> bs!876115 (not (= lambda!176002 lambda!175771))))

(assert (=> bs!876106 (= (= lt!1713969 lt!1713974) (= lambda!176002 lambda!176000))))

(assert (=> d!1402859 true))

(declare-fun bm!316519 () Bool)

(declare-fun call!316524 () Unit!98176)

(assert (=> bm!316519 (= call!316524 (lemmaContainsAllItsOwnKeys!364 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun b!4539278 () Bool)

(declare-fun e!2828613 () Bool)

(assert (=> b!4539278 (= e!2828613 (invariantList!1043 (toList!4403 lt!1713969)))))

(declare-fun call!316526 () Bool)

(declare-fun c!775306 () Bool)

(declare-fun bm!316520 () Bool)

(assert (=> bm!316520 (= call!316526 (forall!10343 (ite c!775306 (toList!4403 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (t!357834 (_2!28908 lt!1713093))) (ite c!775306 lambda!175996 lambda!176000)))))

(declare-fun b!4539279 () Bool)

(declare-fun res!1891603 () Bool)

(assert (=> b!4539279 (=> (not res!1891603) (not e!2828613))))

(assert (=> b!4539279 (= res!1891603 (forall!10343 (toList!4403 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) lambda!176002))))

(declare-fun e!2828614 () Bool)

(declare-fun b!4539280 () Bool)

(assert (=> b!4539280 (= e!2828614 (forall!10343 (toList!4403 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) lambda!176000))))

(declare-fun e!2828615 () ListMap!3665)

(assert (=> b!4539281 (= e!2828615 lt!1713974)))

(declare-fun lt!1713980 () ListMap!3665)

(assert (=> b!4539281 (= lt!1713980 (+!1604 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> b!4539281 (= lt!1713974 (addToMapMapFromBucket!725 (t!357834 (t!357834 (_2!28908 lt!1713093))) (+!1604 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) (h!56627 (t!357834 (_2!28908 lt!1713093))))))))

(declare-fun lt!1713973 () Unit!98176)

(assert (=> b!4539281 (= lt!1713973 call!316524)))

(assert (=> b!4539281 (forall!10343 (toList!4403 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) lambda!175998)))

(declare-fun lt!1713981 () Unit!98176)

(assert (=> b!4539281 (= lt!1713981 lt!1713973)))

(assert (=> b!4539281 (forall!10343 (toList!4403 lt!1713980) lambda!176000)))

(declare-fun lt!1713968 () Unit!98176)

(declare-fun Unit!98383 () Unit!98176)

(assert (=> b!4539281 (= lt!1713968 Unit!98383)))

(declare-fun call!316525 () Bool)

(assert (=> b!4539281 call!316525))

(declare-fun lt!1713979 () Unit!98176)

(declare-fun Unit!98384 () Unit!98176)

(assert (=> b!4539281 (= lt!1713979 Unit!98384)))

(declare-fun lt!1713967 () Unit!98176)

(declare-fun Unit!98385 () Unit!98176)

(assert (=> b!4539281 (= lt!1713967 Unit!98385)))

(declare-fun lt!1713970 () Unit!98176)

(assert (=> b!4539281 (= lt!1713970 (forallContained!2605 (toList!4403 lt!1713980) lambda!176000 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> b!4539281 (contains!13538 lt!1713980 (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713966 () Unit!98176)

(declare-fun Unit!98386 () Unit!98176)

(assert (=> b!4539281 (= lt!1713966 Unit!98386)))

(assert (=> b!4539281 (contains!13538 lt!1713974 (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(declare-fun lt!1713965 () Unit!98176)

(declare-fun Unit!98387 () Unit!98176)

(assert (=> b!4539281 (= lt!1713965 Unit!98387)))

(assert (=> b!4539281 call!316526))

(declare-fun lt!1713983 () Unit!98176)

(declare-fun Unit!98388 () Unit!98176)

(assert (=> b!4539281 (= lt!1713983 Unit!98388)))

(assert (=> b!4539281 (forall!10343 (toList!4403 lt!1713980) lambda!176000)))

(declare-fun lt!1713975 () Unit!98176)

(declare-fun Unit!98389 () Unit!98176)

(assert (=> b!4539281 (= lt!1713975 Unit!98389)))

(declare-fun lt!1713978 () Unit!98176)

(declare-fun Unit!98390 () Unit!98176)

(assert (=> b!4539281 (= lt!1713978 Unit!98390)))

(declare-fun lt!1713984 () Unit!98176)

(assert (=> b!4539281 (= lt!1713984 (addForallContainsKeyThenBeforeAdding!364 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1713974 (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))) (_2!28907 (h!56627 (t!357834 (_2!28908 lt!1713093))))))))

(assert (=> b!4539281 (forall!10343 (toList!4403 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) lambda!176000)))

(declare-fun lt!1713972 () Unit!98176)

(assert (=> b!4539281 (= lt!1713972 lt!1713984)))

(assert (=> b!4539281 (forall!10343 (toList!4403 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) lambda!176000)))

(declare-fun lt!1713982 () Unit!98176)

(declare-fun Unit!98392 () Unit!98176)

(assert (=> b!4539281 (= lt!1713982 Unit!98392)))

(declare-fun res!1891602 () Bool)

(assert (=> b!4539281 (= res!1891602 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!176000))))

(assert (=> b!4539281 (=> (not res!1891602) (not e!2828614))))

(assert (=> b!4539281 e!2828614))

(declare-fun lt!1713964 () Unit!98176)

(declare-fun Unit!98393 () Unit!98176)

(assert (=> b!4539281 (= lt!1713964 Unit!98393)))

(assert (=> b!4539282 (= e!2828615 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1713977 () Unit!98176)

(assert (=> b!4539282 (= lt!1713977 call!316524)))

(assert (=> b!4539282 call!316525))

(declare-fun lt!1713976 () Unit!98176)

(assert (=> b!4539282 (= lt!1713976 lt!1713977)))

(assert (=> b!4539282 call!316526))

(declare-fun lt!1713971 () Unit!98176)

(declare-fun Unit!98394 () Unit!98176)

(assert (=> b!4539282 (= lt!1713971 Unit!98394)))

(declare-fun bm!316521 () Bool)

(assert (=> bm!316521 (= call!316525 (forall!10343 (ite c!775306 (toList!4403 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (t!357834 (t!357834 (_2!28908 lt!1713093)))) (ite c!775306 lambda!175996 lambda!176000)))))

(assert (=> d!1402859 e!2828613))

(declare-fun res!1891601 () Bool)

(assert (=> d!1402859 (=> (not res!1891601) (not e!2828613))))

(assert (=> d!1402859 (= res!1891601 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!176002))))

(assert (=> d!1402859 (= lt!1713969 e!2828615)))

(assert (=> d!1402859 (= c!775306 ((_ is Nil!50748) (t!357834 (_2!28908 lt!1713093))))))

(assert (=> d!1402859 (noDuplicateKeys!1198 (t!357834 (_2!28908 lt!1713093)))))

(assert (=> d!1402859 (= (addToMapMapFromBucket!725 (t!357834 (_2!28908 lt!1713093)) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) lt!1713969)))

(assert (= (and d!1402859 c!775306) b!4539282))

(assert (= (and d!1402859 (not c!775306)) b!4539281))

(assert (= (and b!4539281 res!1891602) b!4539280))

(assert (= (or b!4539282 b!4539281) bm!316520))

(assert (= (or b!4539282 b!4539281) bm!316521))

(assert (= (or b!4539282 b!4539281) bm!316519))

(assert (= (and d!1402859 res!1891601) b!4539279))

(assert (= (and b!4539279 res!1891603) b!4539278))

(declare-fun m!5304709 () Bool)

(assert (=> bm!316521 m!5304709))

(declare-fun m!5304711 () Bool)

(assert (=> b!4539281 m!5304711))

(assert (=> b!4539281 m!5303257))

(declare-fun m!5304713 () Bool)

(assert (=> b!4539281 m!5304713))

(declare-fun m!5304715 () Bool)

(assert (=> b!4539281 m!5304715))

(declare-fun m!5304717 () Bool)

(assert (=> b!4539281 m!5304717))

(assert (=> b!4539281 m!5304711))

(assert (=> b!4539281 m!5304717))

(declare-fun m!5304719 () Bool)

(assert (=> b!4539281 m!5304719))

(declare-fun m!5304721 () Bool)

(assert (=> b!4539281 m!5304721))

(declare-fun m!5304723 () Bool)

(assert (=> b!4539281 m!5304723))

(declare-fun m!5304725 () Bool)

(assert (=> b!4539281 m!5304725))

(assert (=> b!4539281 m!5304713))

(declare-fun m!5304727 () Bool)

(assert (=> b!4539281 m!5304727))

(assert (=> b!4539281 m!5303257))

(declare-fun m!5304729 () Bool)

(assert (=> b!4539281 m!5304729))

(declare-fun m!5304731 () Bool)

(assert (=> d!1402859 m!5304731))

(assert (=> d!1402859 m!5302905))

(declare-fun m!5304733 () Bool)

(assert (=> b!4539279 m!5304733))

(declare-fun m!5304735 () Bool)

(assert (=> b!4539278 m!5304735))

(declare-fun m!5304737 () Bool)

(assert (=> bm!316520 m!5304737))

(assert (=> bm!316519 m!5303257))

(declare-fun m!5304739 () Bool)

(assert (=> bm!316519 m!5304739))

(assert (=> b!4539280 m!5304717))

(assert (=> b!4538501 d!1402859))

(declare-fun d!1402867 () Bool)

(declare-fun e!2828622 () Bool)

(assert (=> d!1402867 e!2828622))

(declare-fun res!1891610 () Bool)

(assert (=> d!1402867 (=> (not res!1891610) (not e!2828622))))

(declare-fun lt!1714010 () ListMap!3665)

(assert (=> d!1402867 (= res!1891610 (contains!13538 lt!1714010 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1714008 () List!50872)

(assert (=> d!1402867 (= lt!1714010 (ListMap!3666 lt!1714008))))

(declare-fun lt!1714007 () Unit!98176)

(declare-fun lt!1714009 () Unit!98176)

(assert (=> d!1402867 (= lt!1714007 lt!1714009)))

(assert (=> d!1402867 (= (getValueByKey!1144 lt!1714008 (_1!28907 (h!56627 (_2!28908 lt!1713093)))) (Some!11199 (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402867 (= lt!1714009 (lemmaContainsTupThenGetReturnValue!719 lt!1714008 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402867 (= lt!1714008 (insertNoDuplicatedKeys!293 (toList!4403 lt!1713095) (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402867 (= (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093))) lt!1714010)))

(declare-fun b!4539292 () Bool)

(declare-fun res!1891609 () Bool)

(assert (=> b!4539292 (=> (not res!1891609) (not e!2828622))))

(assert (=> b!4539292 (= res!1891609 (= (getValueByKey!1144 (toList!4403 lt!1714010) (_1!28907 (h!56627 (_2!28908 lt!1713093)))) (Some!11199 (_2!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4539293 () Bool)

(assert (=> b!4539293 (= e!2828622 (contains!13542 (toList!4403 lt!1714010) (h!56627 (_2!28908 lt!1713093))))))

(assert (= (and d!1402867 res!1891610) b!4539292))

(assert (= (and b!4539292 res!1891609) b!4539293))

(declare-fun m!5304741 () Bool)

(assert (=> d!1402867 m!5304741))

(declare-fun m!5304743 () Bool)

(assert (=> d!1402867 m!5304743))

(declare-fun m!5304745 () Bool)

(assert (=> d!1402867 m!5304745))

(declare-fun m!5304747 () Bool)

(assert (=> d!1402867 m!5304747))

(declare-fun m!5304749 () Bool)

(assert (=> b!4539292 m!5304749))

(declare-fun m!5304751 () Bool)

(assert (=> b!4539293 m!5304751))

(assert (=> b!4538501 d!1402867))

(declare-fun d!1402869 () Bool)

(assert (=> d!1402869 (dynLambda!21212 lambda!175886 (h!56627 (_2!28908 lt!1713093)))))

(declare-fun lt!1714011 () Unit!98176)

(assert (=> d!1402869 (= lt!1714011 (choose!29871 (toList!4403 lt!1713499) lambda!175886 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun e!2828623 () Bool)

(assert (=> d!1402869 e!2828623))

(declare-fun res!1891611 () Bool)

(assert (=> d!1402869 (=> (not res!1891611) (not e!2828623))))

(assert (=> d!1402869 (= res!1891611 (forall!10343 (toList!4403 lt!1713499) lambda!175886))))

(assert (=> d!1402869 (= (forallContained!2605 (toList!4403 lt!1713499) lambda!175886 (h!56627 (_2!28908 lt!1713093))) lt!1714011)))

(declare-fun b!4539294 () Bool)

(assert (=> b!4539294 (= e!2828623 (contains!13542 (toList!4403 lt!1713499) (h!56627 (_2!28908 lt!1713093))))))

(assert (= (and d!1402869 res!1891611) b!4539294))

(declare-fun b_lambda!157757 () Bool)

(assert (=> (not b_lambda!157757) (not d!1402869)))

(declare-fun m!5304761 () Bool)

(assert (=> d!1402869 m!5304761))

(declare-fun m!5304763 () Bool)

(assert (=> d!1402869 m!5304763))

(assert (=> d!1402869 m!5303255))

(declare-fun m!5304767 () Bool)

(assert (=> b!4539294 m!5304767))

(assert (=> b!4538501 d!1402869))

(declare-fun b!4539297 () Bool)

(declare-fun e!2828626 () Bool)

(assert (=> b!4539297 (= e!2828626 (not (contains!13540 (keys!17658 lt!1713493) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun bm!316525 () Bool)

(declare-fun call!316530 () Bool)

(declare-fun e!2828631 () List!50875)

(assert (=> bm!316525 (= call!316530 (contains!13540 e!2828631 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun c!775309 () Bool)

(declare-fun c!775311 () Bool)

(assert (=> bm!316525 (= c!775309 c!775311)))

(declare-fun b!4539298 () Bool)

(declare-fun e!2828629 () Bool)

(assert (=> b!4539298 (= e!2828629 (contains!13540 (keys!17658 lt!1713493) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun b!4539299 () Bool)

(declare-fun e!2828627 () Bool)

(assert (=> b!4539299 (= e!2828627 e!2828629)))

(declare-fun res!1891616 () Bool)

(assert (=> b!4539299 (=> (not res!1891616) (not e!2828629))))

(assert (=> b!4539299 (= res!1891616 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713493) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4539300 () Bool)

(declare-fun e!2828630 () Unit!98176)

(declare-fun Unit!98395 () Unit!98176)

(assert (=> b!4539300 (= e!2828630 Unit!98395)))

(declare-fun b!4539301 () Bool)

(declare-fun e!2828628 () Unit!98176)

(assert (=> b!4539301 (= e!2828628 e!2828630)))

(declare-fun c!775310 () Bool)

(assert (=> b!4539301 (= c!775310 call!316530)))

(declare-fun d!1402875 () Bool)

(assert (=> d!1402875 e!2828627))

(declare-fun res!1891615 () Bool)

(assert (=> d!1402875 (=> res!1891615 e!2828627)))

(assert (=> d!1402875 (= res!1891615 e!2828626)))

(declare-fun res!1891613 () Bool)

(assert (=> d!1402875 (=> (not res!1891613) (not e!2828626))))

(declare-fun lt!1714013 () Bool)

(assert (=> d!1402875 (= res!1891613 (not lt!1714013))))

(declare-fun lt!1714015 () Bool)

(assert (=> d!1402875 (= lt!1714013 lt!1714015)))

(declare-fun lt!1714014 () Unit!98176)

(assert (=> d!1402875 (= lt!1714014 e!2828628)))

(assert (=> d!1402875 (= c!775311 lt!1714015)))

(assert (=> d!1402875 (= lt!1714015 (containsKey!1872 (toList!4403 lt!1713493) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402875 (= (contains!13538 lt!1713493 (_1!28907 (h!56627 (_2!28908 lt!1713093)))) lt!1714013)))

(declare-fun b!4539302 () Bool)

(assert (=> b!4539302 (= e!2828631 (getKeysList!491 (toList!4403 lt!1713493)))))

(declare-fun b!4539303 () Bool)

(assert (=> b!4539303 false))

(declare-fun lt!1714019 () Unit!98176)

(declare-fun lt!1714016 () Unit!98176)

(assert (=> b!4539303 (= lt!1714019 lt!1714016)))

(assert (=> b!4539303 (containsKey!1872 (toList!4403 lt!1713493) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4539303 (= lt!1714016 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713493) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun Unit!98396 () Unit!98176)

(assert (=> b!4539303 (= e!2828630 Unit!98396)))

(declare-fun b!4539304 () Bool)

(declare-fun lt!1714017 () Unit!98176)

(assert (=> b!4539304 (= e!2828628 lt!1714017)))

(declare-fun lt!1714018 () Unit!98176)

(assert (=> b!4539304 (= lt!1714018 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713493) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4539304 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713493) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1714012 () Unit!98176)

(assert (=> b!4539304 (= lt!1714012 lt!1714018)))

(assert (=> b!4539304 (= lt!1714017 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713493) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4539304 call!316530))

(declare-fun b!4539305 () Bool)

(assert (=> b!4539305 (= e!2828631 (keys!17658 lt!1713493))))

(assert (= (and d!1402875 c!775311) b!4539304))

(assert (= (and d!1402875 (not c!775311)) b!4539301))

(assert (= (and b!4539301 c!775310) b!4539303))

(assert (= (and b!4539301 (not c!775310)) b!4539300))

(assert (= (or b!4539304 b!4539301) bm!316525))

(assert (= (and bm!316525 c!775309) b!4539302))

(assert (= (and bm!316525 (not c!775309)) b!4539305))

(assert (= (and d!1402875 res!1891613) b!4539297))

(assert (= (and d!1402875 (not res!1891615)) b!4539299))

(assert (= (and b!4539299 res!1891616) b!4539298))

(declare-fun m!5304775 () Bool)

(assert (=> bm!316525 m!5304775))

(declare-fun m!5304777 () Bool)

(assert (=> b!4539299 m!5304777))

(assert (=> b!4539299 m!5304777))

(declare-fun m!5304779 () Bool)

(assert (=> b!4539299 m!5304779))

(declare-fun m!5304781 () Bool)

(assert (=> d!1402875 m!5304781))

(declare-fun m!5304783 () Bool)

(assert (=> b!4539297 m!5304783))

(assert (=> b!4539297 m!5304783))

(declare-fun m!5304785 () Bool)

(assert (=> b!4539297 m!5304785))

(assert (=> b!4539305 m!5304783))

(assert (=> b!4539298 m!5304783))

(assert (=> b!4539298 m!5304783))

(assert (=> b!4539298 m!5304785))

(assert (=> b!4539303 m!5304781))

(declare-fun m!5304787 () Bool)

(assert (=> b!4539303 m!5304787))

(declare-fun m!5304789 () Bool)

(assert (=> b!4539304 m!5304789))

(assert (=> b!4539304 m!5304777))

(assert (=> b!4539304 m!5304777))

(assert (=> b!4539304 m!5304779))

(declare-fun m!5304795 () Bool)

(assert (=> b!4539304 m!5304795))

(declare-fun m!5304799 () Bool)

(assert (=> b!4539302 m!5304799))

(assert (=> b!4538501 d!1402875))

(declare-fun b!4539313 () Bool)

(declare-fun e!2828636 () Bool)

(assert (=> b!4539313 (= e!2828636 (not (contains!13540 (keys!17658 lt!1713499) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun bm!316526 () Bool)

(declare-fun call!316531 () Bool)

(declare-fun e!2828641 () List!50875)

(assert (=> bm!316526 (= call!316531 (contains!13540 e!2828641 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun c!775315 () Bool)

(declare-fun c!775317 () Bool)

(assert (=> bm!316526 (= c!775315 c!775317)))

(declare-fun b!4539314 () Bool)

(declare-fun e!2828639 () Bool)

(assert (=> b!4539314 (= e!2828639 (contains!13540 (keys!17658 lt!1713499) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun b!4539315 () Bool)

(declare-fun e!2828637 () Bool)

(assert (=> b!4539315 (= e!2828637 e!2828639)))

(declare-fun res!1891620 () Bool)

(assert (=> b!4539315 (=> (not res!1891620) (not e!2828639))))

(assert (=> b!4539315 (= res!1891620 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713499) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4539316 () Bool)

(declare-fun e!2828640 () Unit!98176)

(declare-fun Unit!98397 () Unit!98176)

(assert (=> b!4539316 (= e!2828640 Unit!98397)))

(declare-fun b!4539317 () Bool)

(declare-fun e!2828638 () Unit!98176)

(assert (=> b!4539317 (= e!2828638 e!2828640)))

(declare-fun c!775316 () Bool)

(assert (=> b!4539317 (= c!775316 call!316531)))

(declare-fun d!1402881 () Bool)

(assert (=> d!1402881 e!2828637))

(declare-fun res!1891619 () Bool)

(assert (=> d!1402881 (=> res!1891619 e!2828637)))

(assert (=> d!1402881 (= res!1891619 e!2828636)))

(declare-fun res!1891618 () Bool)

(assert (=> d!1402881 (=> (not res!1891618) (not e!2828636))))

(declare-fun lt!1714025 () Bool)

(assert (=> d!1402881 (= res!1891618 (not lt!1714025))))

(declare-fun lt!1714027 () Bool)

(assert (=> d!1402881 (= lt!1714025 lt!1714027)))

(declare-fun lt!1714026 () Unit!98176)

(assert (=> d!1402881 (= lt!1714026 e!2828638)))

(assert (=> d!1402881 (= c!775317 lt!1714027)))

(assert (=> d!1402881 (= lt!1714027 (containsKey!1872 (toList!4403 lt!1713499) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402881 (= (contains!13538 lt!1713499 (_1!28907 (h!56627 (_2!28908 lt!1713093)))) lt!1714025)))

(declare-fun b!4539318 () Bool)

(assert (=> b!4539318 (= e!2828641 (getKeysList!491 (toList!4403 lt!1713499)))))

(declare-fun b!4539319 () Bool)

(assert (=> b!4539319 false))

(declare-fun lt!1714031 () Unit!98176)

(declare-fun lt!1714028 () Unit!98176)

(assert (=> b!4539319 (= lt!1714031 lt!1714028)))

(assert (=> b!4539319 (containsKey!1872 (toList!4403 lt!1713499) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4539319 (= lt!1714028 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713499) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun Unit!98398 () Unit!98176)

(assert (=> b!4539319 (= e!2828640 Unit!98398)))

(declare-fun b!4539320 () Bool)

(declare-fun lt!1714029 () Unit!98176)

(assert (=> b!4539320 (= e!2828638 lt!1714029)))

(declare-fun lt!1714030 () Unit!98176)

(assert (=> b!4539320 (= lt!1714030 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713499) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4539320 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713499) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1714024 () Unit!98176)

(assert (=> b!4539320 (= lt!1714024 lt!1714030)))

(assert (=> b!4539320 (= lt!1714029 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713499) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4539320 call!316531))

(declare-fun b!4539321 () Bool)

(assert (=> b!4539321 (= e!2828641 (keys!17658 lt!1713499))))

(assert (= (and d!1402881 c!775317) b!4539320))

(assert (= (and d!1402881 (not c!775317)) b!4539317))

(assert (= (and b!4539317 c!775316) b!4539319))

(assert (= (and b!4539317 (not c!775316)) b!4539316))

(assert (= (or b!4539320 b!4539317) bm!316526))

(assert (= (and bm!316526 c!775315) b!4539318))

(assert (= (and bm!316526 (not c!775315)) b!4539321))

(assert (= (and d!1402881 res!1891618) b!4539313))

(assert (= (and d!1402881 (not res!1891619)) b!4539315))

(assert (= (and b!4539315 res!1891620) b!4539314))

(declare-fun m!5304803 () Bool)

(assert (=> bm!316526 m!5304803))

(declare-fun m!5304805 () Bool)

(assert (=> b!4539315 m!5304805))

(assert (=> b!4539315 m!5304805))

(declare-fun m!5304807 () Bool)

(assert (=> b!4539315 m!5304807))

(declare-fun m!5304809 () Bool)

(assert (=> d!1402881 m!5304809))

(declare-fun m!5304811 () Bool)

(assert (=> b!4539313 m!5304811))

(assert (=> b!4539313 m!5304811))

(declare-fun m!5304813 () Bool)

(assert (=> b!4539313 m!5304813))

(assert (=> b!4539321 m!5304811))

(assert (=> b!4539314 m!5304811))

(assert (=> b!4539314 m!5304811))

(assert (=> b!4539314 m!5304813))

(assert (=> b!4539319 m!5304809))

(declare-fun m!5304815 () Bool)

(assert (=> b!4539319 m!5304815))

(declare-fun m!5304817 () Bool)

(assert (=> b!4539320 m!5304817))

(assert (=> b!4539320 m!5304805))

(assert (=> b!4539320 m!5304805))

(assert (=> b!4539320 m!5304807))

(declare-fun m!5304819 () Bool)

(assert (=> b!4539320 m!5304819))

(declare-fun m!5304821 () Bool)

(assert (=> b!4539318 m!5304821))

(assert (=> b!4538501 d!1402881))

(declare-fun d!1402885 () Bool)

(declare-fun res!1891621 () Bool)

(declare-fun e!2828642 () Bool)

(assert (=> d!1402885 (=> res!1891621 e!2828642)))

(assert (=> d!1402885 (= res!1891621 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1402885 (= (forall!10343 (_2!28908 lt!1713093) lambda!175886) e!2828642)))

(declare-fun b!4539322 () Bool)

(declare-fun e!2828643 () Bool)

(assert (=> b!4539322 (= e!2828642 e!2828643)))

(declare-fun res!1891622 () Bool)

(assert (=> b!4539322 (=> (not res!1891622) (not e!2828643))))

(assert (=> b!4539322 (= res!1891622 (dynLambda!21212 lambda!175886 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun b!4539323 () Bool)

(assert (=> b!4539323 (= e!2828643 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!175886))))

(assert (= (and d!1402885 (not res!1891621)) b!4539322))

(assert (= (and b!4539322 res!1891622) b!4539323))

(declare-fun b_lambda!157761 () Bool)

(assert (=> (not b_lambda!157761) (not b!4539322)))

(assert (=> b!4539322 m!5304761))

(declare-fun m!5304823 () Bool)

(assert (=> b!4539323 m!5304823))

(assert (=> b!4538501 d!1402885))

(declare-fun bs!876133 () Bool)

(declare-fun d!1402887 () Bool)

(assert (= bs!876133 (and d!1402887 d!1402485)))

(declare-fun lambda!176005 () Int)

(assert (=> bs!876133 (= (= lt!1713493 lt!1713584) (= lambda!176005 lambda!175909))))

(declare-fun bs!876134 () Bool)

(assert (= bs!876134 (and d!1402887 d!1402823)))

(assert (=> bs!876134 (= (= lt!1713493 lt!1713909) (= lambda!176005 lambda!175983))))

(declare-fun bs!876135 () Bool)

(assert (= bs!876135 (and d!1402887 b!4538685)))

(assert (=> bs!876135 (= (= lt!1713493 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176005 lambda!175925))))

(declare-fun bs!876136 () Bool)

(assert (= bs!876136 (and d!1402887 d!1402523)))

(assert (=> bs!876136 (not (= lambda!176005 lambda!175918))))

(declare-fun bs!876137 () Bool)

(assert (= bs!876137 (and d!1402887 b!4539182)))

(assert (=> bs!876137 (= (= lt!1713493 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176005 lambda!175976))))

(declare-fun bs!876138 () Bool)

(assert (= bs!876138 (and d!1402887 b!4538248)))

(assert (=> bs!876138 (= (= lt!1713493 lt!1713258) (= lambda!176005 lambda!175837))))

(declare-fun bs!876139 () Bool)

(assert (= bs!876139 (and d!1402887 b!4539282)))

(assert (=> bs!876139 (= (= lt!1713493 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176005 lambda!175996))))

(assert (=> bs!876137 (= (= lt!1713493 lt!1713882) (= lambda!176005 lambda!175977))))

(declare-fun bs!876140 () Bool)

(assert (= bs!876140 (and d!1402887 b!4538501)))

(assert (=> bs!876140 (= lambda!176005 lambda!175886)))

(assert (=> bs!876135 (= (= lt!1713493 lt!1713639) (= lambda!176005 lambda!175926))))

(declare-fun bs!876141 () Bool)

(assert (= bs!876141 (and d!1402887 b!4539183)))

(assert (=> bs!876141 (= (= lt!1713493 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176005 lambda!175975))))

(declare-fun bs!876142 () Bool)

(assert (= bs!876142 (and d!1402887 b!4539235)))

(assert (=> bs!876142 (= (= lt!1713493 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176005 lambda!175980))))

(declare-fun bs!876143 () Bool)

(assert (= bs!876143 (and d!1402887 d!1402727)))

(assert (=> bs!876143 (= (= lt!1713493 lt!1713121) (= lambda!176005 lambda!175970))))

(declare-fun bs!876144 () Bool)

(assert (= bs!876144 (and d!1402887 d!1402531)))

(assert (=> bs!876144 (= (= lt!1713493 lt!1713634) (= lambda!176005 lambda!175927))))

(declare-fun bs!876145 () Bool)

(assert (= bs!876145 (and d!1402887 b!4538617)))

(assert (=> bs!876145 (= (= lt!1713493 lt!1713103) (= lambda!176005 lambda!175907))))

(assert (=> bs!876138 (= (= lt!1713493 lt!1713121) (= lambda!176005 lambda!175836))))

(declare-fun bs!876146 () Bool)

(assert (= bs!876146 (and d!1402887 b!4538686)))

(assert (=> bs!876146 (= (= lt!1713493 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176005 lambda!175924))))

(declare-fun bs!876147 () Bool)

(assert (= bs!876147 (and d!1402887 b!4538618)))

(assert (=> bs!876147 (= (= lt!1713493 lt!1713103) (= lambda!176005 lambda!175906))))

(declare-fun bs!876148 () Bool)

(assert (= bs!876148 (and d!1402887 b!4538678)))

(assert (=> bs!876148 (= (= lt!1713493 lt!1713617) (= lambda!176005 lambda!175921))))

(declare-fun bs!876149 () Bool)

(assert (= bs!876149 (and d!1402887 d!1402409)))

(assert (=> bs!876149 (= (= lt!1713493 lt!1713488) (= lambda!176005 lambda!175888))))

(assert (=> bs!876148 (= (= lt!1713493 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176005 lambda!175920))))

(declare-fun bs!876150 () Bool)

(assert (= bs!876150 (and d!1402887 d!1402527)))

(assert (=> bs!876150 (= (= lt!1713493 lt!1713612) (= lambda!176005 lambda!175922))))

(assert (=> bs!876145 (= (= lt!1713493 lt!1713589) (= lambda!176005 lambda!175908))))

(declare-fun bs!876151 () Bool)

(assert (= bs!876151 (and d!1402887 b!4538249)))

(assert (=> bs!876151 (= (= lt!1713493 lt!1713121) (= lambda!176005 lambda!175834))))

(declare-fun bs!876152 () Bool)

(assert (= bs!876152 (and d!1402887 b!4538502)))

(assert (=> bs!876152 (= (= lt!1713493 lt!1713095) (= lambda!176005 lambda!175883))))

(declare-fun bs!876153 () Bool)

(assert (= bs!876153 (and d!1402887 d!1402229)))

(assert (=> bs!876153 (= (= lt!1713493 lt!1713253) (= lambda!176005 lambda!175838))))

(declare-fun bs!876154 () Bool)

(assert (= bs!876154 (and d!1402887 b!4539281)))

(assert (=> bs!876154 (= (= lt!1713493 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176005 lambda!175998))))

(declare-fun bs!876155 () Bool)

(assert (= bs!876155 (and d!1402887 d!1402771)))

(assert (=> bs!876155 (= (= lt!1713493 lt!1713877) (= lambda!176005 lambda!175978))))

(declare-fun bs!876156 () Bool)

(assert (= bs!876156 (and d!1402887 d!1402317)))

(assert (=> bs!876156 (not (= lambda!176005 lambda!175860))))

(declare-fun bs!876157 () Bool)

(assert (= bs!876157 (and d!1402887 b!4539234)))

(assert (=> bs!876157 (= (= lt!1713493 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176005 lambda!175981))))

(assert (=> bs!876140 (= (= lt!1713493 lt!1713095) (= lambda!176005 lambda!175885))))

(declare-fun bs!876158 () Bool)

(assert (= bs!876158 (and d!1402887 b!4538679)))

(assert (=> bs!876158 (= (= lt!1713493 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176005 lambda!175919))))

(declare-fun bs!876159 () Bool)

(assert (= bs!876159 (and d!1402887 d!1402545)))

(assert (=> bs!876159 (= (= lt!1713493 lt!1713589) (= lambda!176005 lambda!175932))))

(declare-fun bs!876160 () Bool)

(assert (= bs!876160 (and d!1402887 d!1402859)))

(assert (=> bs!876160 (= (= lt!1713493 lt!1713969) (= lambda!176005 lambda!176002))))

(assert (=> bs!876157 (= (= lt!1713493 lt!1713914) (= lambda!176005 lambda!175982))))

(declare-fun bs!876161 () Bool)

(assert (= bs!876161 (and d!1402887 b!4538171)))

(assert (=> bs!876161 (not (= lambda!176005 lambda!175771))))

(assert (=> bs!876154 (= (= lt!1713493 lt!1713974) (= lambda!176005 lambda!176000))))

(assert (=> d!1402887 true))

(assert (=> d!1402887 (forall!10343 (toList!4403 lt!1713095) lambda!176005)))

(declare-fun lt!1714032 () Unit!98176)

(assert (=> d!1402887 (= lt!1714032 (choose!29883 lt!1713095 lt!1713493 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1402887 (forall!10343 (toList!4403 (+!1604 lt!1713095 (tuple2!51227 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))) lambda!176005)))

(assert (=> d!1402887 (= (addForallContainsKeyThenBeforeAdding!364 lt!1713095 lt!1713493 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))) lt!1714032)))

(declare-fun bs!876162 () Bool)

(assert (= bs!876162 d!1402887))

(declare-fun m!5304831 () Bool)

(assert (=> bs!876162 m!5304831))

(declare-fun m!5304833 () Bool)

(assert (=> bs!876162 m!5304833))

(declare-fun m!5304835 () Bool)

(assert (=> bs!876162 m!5304835))

(declare-fun m!5304837 () Bool)

(assert (=> bs!876162 m!5304837))

(assert (=> b!4538501 d!1402887))

(assert (=> b!4538596 d!1402517))

(declare-fun d!1402895 () Bool)

(declare-fun res!1891633 () Bool)

(declare-fun e!2828654 () Bool)

(assert (=> d!1402895 (=> res!1891633 e!2828654)))

(declare-fun e!2828653 () Bool)

(assert (=> d!1402895 (= res!1891633 e!2828653)))

(declare-fun res!1891632 () Bool)

(assert (=> d!1402895 (=> (not res!1891632) (not e!2828653))))

(assert (=> d!1402895 (= res!1891632 ((_ is Cons!50749) (t!357835 (t!357835 (toList!4404 lm!1477)))))))

(assert (=> d!1402895 (= (containsKeyBiggerList!178 (t!357835 (t!357835 (toList!4404 lm!1477))) key!3287) e!2828654)))

(declare-fun b!4539332 () Bool)

(assert (=> b!4539332 (= e!2828653 (containsKey!1870 (_2!28908 (h!56628 (t!357835 (t!357835 (toList!4404 lm!1477))))) key!3287))))

(declare-fun b!4539333 () Bool)

(declare-fun e!2828652 () Bool)

(assert (=> b!4539333 (= e!2828654 e!2828652)))

(declare-fun res!1891631 () Bool)

(assert (=> b!4539333 (=> (not res!1891631) (not e!2828652))))

(assert (=> b!4539333 (= res!1891631 ((_ is Cons!50749) (t!357835 (t!357835 (toList!4404 lm!1477)))))))

(declare-fun b!4539334 () Bool)

(assert (=> b!4539334 (= e!2828652 (containsKeyBiggerList!178 (t!357835 (t!357835 (t!357835 (toList!4404 lm!1477)))) key!3287))))

(assert (= (and d!1402895 res!1891632) b!4539332))

(assert (= (and d!1402895 (not res!1891633)) b!4539333))

(assert (= (and b!4539333 res!1891631) b!4539334))

(declare-fun m!5304841 () Bool)

(assert (=> b!4539332 m!5304841))

(declare-fun m!5304843 () Bool)

(assert (=> b!4539334 m!5304843))

(assert (=> b!4538343 d!1402895))

(declare-fun d!1402899 () Bool)

(declare-fun lt!1714057 () Bool)

(assert (=> d!1402899 (= lt!1714057 (select (content!8437 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713115))))

(declare-fun e!2828659 () Bool)

(assert (=> d!1402899 (= lt!1714057 e!2828659)))

(declare-fun res!1891637 () Bool)

(assert (=> d!1402899 (=> (not res!1891637) (not e!2828659))))

(assert (=> d!1402899 (= res!1891637 ((_ is Cons!50749) (t!357835 (t!357835 (toList!4404 lm!1477)))))))

(assert (=> d!1402899 (= (contains!13537 (t!357835 (t!357835 (toList!4404 lm!1477))) lt!1713115) lt!1714057)))

(declare-fun b!4539340 () Bool)

(declare-fun e!2828658 () Bool)

(assert (=> b!4539340 (= e!2828659 e!2828658)))

(declare-fun res!1891638 () Bool)

(assert (=> b!4539340 (=> res!1891638 e!2828658)))

(assert (=> b!4539340 (= res!1891638 (= (h!56628 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713115))))

(declare-fun b!4539341 () Bool)

(assert (=> b!4539341 (= e!2828658 (contains!13537 (t!357835 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713115))))

(assert (= (and d!1402899 res!1891637) b!4539340))

(assert (= (and b!4539340 (not res!1891638)) b!4539341))

(declare-fun m!5304845 () Bool)

(assert (=> d!1402899 m!5304845))

(declare-fun m!5304847 () Bool)

(assert (=> d!1402899 m!5304847))

(declare-fun m!5304849 () Bool)

(assert (=> b!4539341 m!5304849))

(assert (=> b!4538429 d!1402899))

(declare-fun d!1402901 () Bool)

(declare-fun lt!1714058 () Bool)

(assert (=> d!1402901 (= lt!1714058 (select (content!8435 e!2827996) key!3287))))

(declare-fun e!2828660 () Bool)

(assert (=> d!1402901 (= lt!1714058 e!2828660)))

(declare-fun res!1891639 () Bool)

(assert (=> d!1402901 (=> (not res!1891639) (not e!2828660))))

(assert (=> d!1402901 (= res!1891639 ((_ is Cons!50751) e!2827996))))

(assert (=> d!1402901 (= (contains!13540 e!2827996 key!3287) lt!1714058)))

(declare-fun b!4539342 () Bool)

(declare-fun e!2828661 () Bool)

(assert (=> b!4539342 (= e!2828660 e!2828661)))

(declare-fun res!1891640 () Bool)

(assert (=> b!4539342 (=> res!1891640 e!2828661)))

(assert (=> b!4539342 (= res!1891640 (= (h!56632 e!2827996) key!3287))))

(declare-fun b!4539343 () Bool)

(assert (=> b!4539343 (= e!2828661 (contains!13540 (t!357837 e!2827996) key!3287))))

(assert (= (and d!1402901 res!1891639) b!4539342))

(assert (= (and b!4539342 (not res!1891640)) b!4539343))

(declare-fun m!5304851 () Bool)

(assert (=> d!1402901 m!5304851))

(declare-fun m!5304853 () Bool)

(assert (=> d!1402901 m!5304853))

(declare-fun m!5304855 () Bool)

(assert (=> b!4539343 m!5304855))

(assert (=> bm!316437 d!1402901))

(declare-fun d!1402903 () Bool)

(declare-fun lt!1714059 () Bool)

(assert (=> d!1402903 (= lt!1714059 (select (content!8435 e!2828193) key!3287))))

(declare-fun e!2828662 () Bool)

(assert (=> d!1402903 (= lt!1714059 e!2828662)))

(declare-fun res!1891641 () Bool)

(assert (=> d!1402903 (=> (not res!1891641) (not e!2828662))))

(assert (=> d!1402903 (= res!1891641 ((_ is Cons!50751) e!2828193))))

(assert (=> d!1402903 (= (contains!13540 e!2828193 key!3287) lt!1714059)))

(declare-fun b!4539344 () Bool)

(declare-fun e!2828663 () Bool)

(assert (=> b!4539344 (= e!2828662 e!2828663)))

(declare-fun res!1891642 () Bool)

(assert (=> b!4539344 (=> res!1891642 e!2828663)))

(assert (=> b!4539344 (= res!1891642 (= (h!56632 e!2828193) key!3287))))

(declare-fun b!4539345 () Bool)

(assert (=> b!4539345 (= e!2828663 (contains!13540 (t!357837 e!2828193) key!3287))))

(assert (= (and d!1402903 res!1891641) b!4539344))

(assert (= (and b!4539344 (not res!1891642)) b!4539345))

(declare-fun m!5304857 () Bool)

(assert (=> d!1402903 m!5304857))

(declare-fun m!5304859 () Bool)

(assert (=> d!1402903 m!5304859))

(declare-fun m!5304861 () Bool)

(assert (=> b!4539345 m!5304861))

(assert (=> bm!316450 d!1402903))

(declare-fun d!1402905 () Bool)

(declare-fun e!2828665 () Bool)

(assert (=> d!1402905 e!2828665))

(declare-fun res!1891643 () Bool)

(assert (=> d!1402905 (=> res!1891643 e!2828665)))

(declare-fun lt!1714062 () Bool)

(assert (=> d!1402905 (= res!1891643 (not lt!1714062))))

(declare-fun lt!1714060 () Bool)

(assert (=> d!1402905 (= lt!1714062 lt!1714060)))

(declare-fun lt!1714061 () Unit!98176)

(declare-fun e!2828664 () Unit!98176)

(assert (=> d!1402905 (= lt!1714061 e!2828664)))

(declare-fun c!775319 () Bool)

(assert (=> d!1402905 (= c!775319 lt!1714060)))

(assert (=> d!1402905 (= lt!1714060 (containsKey!1874 (toList!4404 lm!1477) (hash!2911 hashF!1107 key!3287)))))

(assert (=> d!1402905 (= (contains!13539 lm!1477 (hash!2911 hashF!1107 key!3287)) lt!1714062)))

(declare-fun b!4539346 () Bool)

(declare-fun lt!1714063 () Unit!98176)

(assert (=> b!4539346 (= e!2828664 lt!1714063)))

(assert (=> b!4539346 (= lt!1714063 (lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (toList!4404 lm!1477) (hash!2911 hashF!1107 key!3287)))))

(assert (=> b!4539346 (isDefined!8477 (getValueByKey!1145 (toList!4404 lm!1477) (hash!2911 hashF!1107 key!3287)))))

(declare-fun b!4539347 () Bool)

(declare-fun Unit!98399 () Unit!98176)

(assert (=> b!4539347 (= e!2828664 Unit!98399)))

(declare-fun b!4539348 () Bool)

(assert (=> b!4539348 (= e!2828665 (isDefined!8477 (getValueByKey!1145 (toList!4404 lm!1477) (hash!2911 hashF!1107 key!3287))))))

(assert (= (and d!1402905 c!775319) b!4539346))

(assert (= (and d!1402905 (not c!775319)) b!4539347))

(assert (= (and d!1402905 (not res!1891643)) b!4539348))

(assert (=> d!1402905 m!5302551))

(declare-fun m!5304863 () Bool)

(assert (=> d!1402905 m!5304863))

(assert (=> b!4539346 m!5302551))

(declare-fun m!5304865 () Bool)

(assert (=> b!4539346 m!5304865))

(assert (=> b!4539346 m!5302551))

(declare-fun m!5304867 () Bool)

(assert (=> b!4539346 m!5304867))

(assert (=> b!4539346 m!5304867))

(declare-fun m!5304869 () Bool)

(assert (=> b!4539346 m!5304869))

(assert (=> b!4539348 m!5302551))

(assert (=> b!4539348 m!5304867))

(assert (=> b!4539348 m!5304867))

(assert (=> b!4539348 m!5304869))

(assert (=> d!1402421 d!1402905))

(assert (=> d!1402421 d!1402277))

(declare-fun d!1402907 () Bool)

(assert (=> d!1402907 (contains!13539 lm!1477 (hash!2911 hashF!1107 key!3287))))

(assert (=> d!1402907 true))

(declare-fun _$27!1278 () Unit!98176)

(assert (=> d!1402907 (= (choose!29873 lm!1477 key!3287 hashF!1107) _$27!1278)))

(declare-fun bs!876186 () Bool)

(assert (= bs!876186 d!1402907))

(assert (=> bs!876186 m!5302551))

(assert (=> bs!876186 m!5302551))

(assert (=> bs!876186 m!5303307))

(assert (=> d!1402421 d!1402907))

(declare-fun d!1402909 () Bool)

(declare-fun res!1891644 () Bool)

(declare-fun e!2828666 () Bool)

(assert (=> d!1402909 (=> res!1891644 e!2828666)))

(assert (=> d!1402909 (= res!1891644 ((_ is Nil!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402909 (= (forall!10341 (toList!4404 lm!1477) lambda!175894) e!2828666)))

(declare-fun b!4539349 () Bool)

(declare-fun e!2828667 () Bool)

(assert (=> b!4539349 (= e!2828666 e!2828667)))

(declare-fun res!1891645 () Bool)

(assert (=> b!4539349 (=> (not res!1891645) (not e!2828667))))

(assert (=> b!4539349 (= res!1891645 (dynLambda!21211 lambda!175894 (h!56628 (toList!4404 lm!1477))))))

(declare-fun b!4539350 () Bool)

(assert (=> b!4539350 (= e!2828667 (forall!10341 (t!357835 (toList!4404 lm!1477)) lambda!175894))))

(assert (= (and d!1402909 (not res!1891644)) b!4539349))

(assert (= (and b!4539349 res!1891645) b!4539350))

(declare-fun b_lambda!157765 () Bool)

(assert (=> (not b_lambda!157765) (not b!4539349)))

(declare-fun m!5304871 () Bool)

(assert (=> b!4539349 m!5304871))

(declare-fun m!5304873 () Bool)

(assert (=> b!4539350 m!5304873))

(assert (=> d!1402421 d!1402909))

(declare-fun d!1402911 () Bool)

(declare-fun res!1891646 () Bool)

(declare-fun e!2828668 () Bool)

(assert (=> d!1402911 (=> res!1891646 e!2828668)))

(assert (=> d!1402911 (= res!1891646 ((_ is Nil!50748) (ite c!775102 (toList!4403 lt!1713095) (_2!28908 lt!1713093))))))

(assert (=> d!1402911 (= (forall!10343 (ite c!775102 (toList!4403 lt!1713095) (_2!28908 lt!1713093)) (ite c!775102 lambda!175883 lambda!175886)) e!2828668)))

(declare-fun b!4539351 () Bool)

(declare-fun e!2828669 () Bool)

(assert (=> b!4539351 (= e!2828668 e!2828669)))

(declare-fun res!1891647 () Bool)

(assert (=> b!4539351 (=> (not res!1891647) (not e!2828669))))

(assert (=> b!4539351 (= res!1891647 (dynLambda!21212 (ite c!775102 lambda!175883 lambda!175886) (h!56627 (ite c!775102 (toList!4403 lt!1713095) (_2!28908 lt!1713093)))))))

(declare-fun b!4539352 () Bool)

(assert (=> b!4539352 (= e!2828669 (forall!10343 (t!357834 (ite c!775102 (toList!4403 lt!1713095) (_2!28908 lt!1713093))) (ite c!775102 lambda!175883 lambda!175886)))))

(assert (= (and d!1402911 (not res!1891646)) b!4539351))

(assert (= (and b!4539351 res!1891647) b!4539352))

(declare-fun b_lambda!157767 () Bool)

(assert (=> (not b_lambda!157767) (not b!4539351)))

(declare-fun m!5304875 () Bool)

(assert (=> b!4539351 m!5304875))

(declare-fun m!5304877 () Bool)

(assert (=> b!4539352 m!5304877))

(assert (=> bm!316448 d!1402911))

(declare-fun b!4539354 () Bool)

(declare-fun e!2828670 () List!50872)

(declare-fun e!2828671 () List!50872)

(assert (=> b!4539354 (= e!2828670 e!2828671)))

(declare-fun c!775320 () Bool)

(assert (=> b!4539354 (= c!775320 ((_ is Cons!50748) (t!357834 lt!1713088)))))

(declare-fun b!4539356 () Bool)

(assert (=> b!4539356 (= e!2828671 Nil!50748)))

(declare-fun b!4539353 () Bool)

(assert (=> b!4539353 (= e!2828670 (t!357834 (t!357834 lt!1713088)))))

(declare-fun d!1402913 () Bool)

(declare-fun lt!1714064 () List!50872)

(assert (=> d!1402913 (not (containsKey!1870 lt!1714064 key!3287))))

(assert (=> d!1402913 (= lt!1714064 e!2828670)))

(declare-fun c!775321 () Bool)

(assert (=> d!1402913 (= c!775321 (and ((_ is Cons!50748) (t!357834 lt!1713088)) (= (_1!28907 (h!56627 (t!357834 lt!1713088))) key!3287)))))

(assert (=> d!1402913 (noDuplicateKeys!1198 (t!357834 lt!1713088))))

(assert (=> d!1402913 (= (removePairForKey!825 (t!357834 lt!1713088) key!3287) lt!1714064)))

(declare-fun b!4539355 () Bool)

(assert (=> b!4539355 (= e!2828671 (Cons!50748 (h!56627 (t!357834 lt!1713088)) (removePairForKey!825 (t!357834 (t!357834 lt!1713088)) key!3287)))))

(assert (= (and d!1402913 c!775321) b!4539353))

(assert (= (and d!1402913 (not c!775321)) b!4539354))

(assert (= (and b!4539354 c!775320) b!4539355))

(assert (= (and b!4539354 (not c!775320)) b!4539356))

(declare-fun m!5304879 () Bool)

(assert (=> d!1402913 m!5304879))

(assert (=> d!1402913 m!5303543))

(declare-fun m!5304881 () Bool)

(assert (=> b!4539355 m!5304881))

(assert (=> b!4538565 d!1402913))

(declare-fun d!1402915 () Bool)

(assert (=> d!1402915 (= (invariantList!1043 (toList!4403 lt!1713570)) (noDuplicatedKeys!276 (toList!4403 lt!1713570)))))

(declare-fun bs!876209 () Bool)

(assert (= bs!876209 d!1402915))

(declare-fun m!5304883 () Bool)

(assert (=> bs!876209 m!5304883))

(assert (=> d!1402473 d!1402915))

(declare-fun d!1402917 () Bool)

(declare-fun res!1891648 () Bool)

(declare-fun e!2828672 () Bool)

(assert (=> d!1402917 (=> res!1891648 e!2828672)))

(assert (=> d!1402917 (= res!1891648 ((_ is Nil!50749) (toList!4404 lt!1713100)))))

(assert (=> d!1402917 (= (forall!10341 (toList!4404 lt!1713100) lambda!175902) e!2828672)))

(declare-fun b!4539357 () Bool)

(declare-fun e!2828673 () Bool)

(assert (=> b!4539357 (= e!2828672 e!2828673)))

(declare-fun res!1891649 () Bool)

(assert (=> b!4539357 (=> (not res!1891649) (not e!2828673))))

(assert (=> b!4539357 (= res!1891649 (dynLambda!21211 lambda!175902 (h!56628 (toList!4404 lt!1713100))))))

(declare-fun b!4539358 () Bool)

(assert (=> b!4539358 (= e!2828673 (forall!10341 (t!357835 (toList!4404 lt!1713100)) lambda!175902))))

(assert (= (and d!1402917 (not res!1891648)) b!4539357))

(assert (= (and b!4539357 res!1891649) b!4539358))

(declare-fun b_lambda!157769 () Bool)

(assert (=> (not b_lambda!157769) (not b!4539357)))

(declare-fun m!5304885 () Bool)

(assert (=> b!4539357 m!5304885))

(declare-fun m!5304887 () Bool)

(assert (=> b!4539358 m!5304887))

(assert (=> d!1402473 d!1402917))

(declare-fun d!1402919 () Bool)

(assert (=> d!1402919 (dynLambda!21211 lambda!175770 (h!56628 (toList!4404 lm!1477)))))

(assert (=> d!1402919 true))

(declare-fun _$7!1939 () Unit!98176)

(assert (=> d!1402919 (= (choose!29865 (toList!4404 lm!1477) lambda!175770 (h!56628 (toList!4404 lm!1477))) _$7!1939)))

(declare-fun b_lambda!157771 () Bool)

(assert (=> (not b_lambda!157771) (not d!1402919)))

(declare-fun bs!876211 () Bool)

(assert (= bs!876211 d!1402919))

(assert (=> bs!876211 m!5303173))

(assert (=> d!1402393 d!1402919))

(declare-fun d!1402921 () Bool)

(declare-fun res!1891650 () Bool)

(declare-fun e!2828674 () Bool)

(assert (=> d!1402921 (=> res!1891650 e!2828674)))

(assert (=> d!1402921 (= res!1891650 ((_ is Nil!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402921 (= (forall!10341 (toList!4404 lm!1477) lambda!175770) e!2828674)))

(declare-fun b!4539359 () Bool)

(declare-fun e!2828675 () Bool)

(assert (=> b!4539359 (= e!2828674 e!2828675)))

(declare-fun res!1891651 () Bool)

(assert (=> b!4539359 (=> (not res!1891651) (not e!2828675))))

(assert (=> b!4539359 (= res!1891651 (dynLambda!21211 lambda!175770 (h!56628 (toList!4404 lm!1477))))))

(declare-fun b!4539360 () Bool)

(assert (=> b!4539360 (= e!2828675 (forall!10341 (t!357835 (toList!4404 lm!1477)) lambda!175770))))

(assert (= (and d!1402921 (not res!1891650)) b!4539359))

(assert (= (and b!4539359 res!1891651) b!4539360))

(declare-fun b_lambda!157773 () Bool)

(assert (=> (not b_lambda!157773) (not b!4539359)))

(assert (=> b!4539359 m!5303173))

(declare-fun m!5304889 () Bool)

(assert (=> b!4539360 m!5304889))

(assert (=> d!1402393 d!1402921))

(declare-fun d!1402923 () Bool)

(declare-fun res!1891652 () Bool)

(declare-fun e!2828676 () Bool)

(assert (=> d!1402923 (=> res!1891652 e!2828676)))

(assert (=> d!1402923 (= res!1891652 ((_ is Nil!50748) (toList!4403 lt!1713103)))))

(assert (=> d!1402923 (= (forall!10343 (toList!4403 lt!1713103) lambda!175909) e!2828676)))

(declare-fun b!4539361 () Bool)

(declare-fun e!2828677 () Bool)

(assert (=> b!4539361 (= e!2828676 e!2828677)))

(declare-fun res!1891653 () Bool)

(assert (=> b!4539361 (=> (not res!1891653) (not e!2828677))))

(assert (=> b!4539361 (= res!1891653 (dynLambda!21212 lambda!175909 (h!56627 (toList!4403 lt!1713103))))))

(declare-fun b!4539362 () Bool)

(assert (=> b!4539362 (= e!2828677 (forall!10343 (t!357834 (toList!4403 lt!1713103)) lambda!175909))))

(assert (= (and d!1402923 (not res!1891652)) b!4539361))

(assert (= (and b!4539361 res!1891653) b!4539362))

(declare-fun b_lambda!157775 () Bool)

(assert (=> (not b_lambda!157775) (not b!4539361)))

(declare-fun m!5304891 () Bool)

(assert (=> b!4539361 m!5304891))

(declare-fun m!5304893 () Bool)

(assert (=> b!4539362 m!5304893))

(assert (=> b!4538615 d!1402923))

(declare-fun d!1402925 () Bool)

(declare-fun res!1891654 () Bool)

(declare-fun e!2828678 () Bool)

(assert (=> d!1402925 (=> res!1891654 e!2828678)))

(assert (=> d!1402925 (= res!1891654 ((_ is Nil!50748) (toList!4403 lt!1713121)))))

(assert (=> d!1402925 (= (forall!10343 (toList!4403 lt!1713121) lambda!175837) e!2828678)))

(declare-fun b!4539363 () Bool)

(declare-fun e!2828679 () Bool)

(assert (=> b!4539363 (= e!2828678 e!2828679)))

(declare-fun res!1891655 () Bool)

(assert (=> b!4539363 (=> (not res!1891655) (not e!2828679))))

(assert (=> b!4539363 (= res!1891655 (dynLambda!21212 lambda!175837 (h!56627 (toList!4403 lt!1713121))))))

(declare-fun b!4539364 () Bool)

(assert (=> b!4539364 (= e!2828679 (forall!10343 (t!357834 (toList!4403 lt!1713121)) lambda!175837))))

(assert (= (and d!1402925 (not res!1891654)) b!4539363))

(assert (= (and b!4539363 res!1891655) b!4539364))

(declare-fun b_lambda!157777 () Bool)

(assert (=> (not b_lambda!157777) (not b!4539363)))

(declare-fun m!5304895 () Bool)

(assert (=> b!4539363 m!5304895))

(declare-fun m!5304897 () Bool)

(assert (=> b!4539364 m!5304897))

(assert (=> b!4538247 d!1402925))

(declare-fun d!1402927 () Bool)

(declare-fun lt!1714065 () Bool)

(assert (=> d!1402927 (= lt!1714065 (select (content!8437 (toList!4404 lm!1477)) (h!56628 (toList!4404 lm!1477))))))

(declare-fun e!2828681 () Bool)

(assert (=> d!1402927 (= lt!1714065 e!2828681)))

(declare-fun res!1891656 () Bool)

(assert (=> d!1402927 (=> (not res!1891656) (not e!2828681))))

(assert (=> d!1402927 (= res!1891656 ((_ is Cons!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402927 (= (contains!13537 (toList!4404 lm!1477) (h!56628 (toList!4404 lm!1477))) lt!1714065)))

(declare-fun b!4539365 () Bool)

(declare-fun e!2828680 () Bool)

(assert (=> b!4539365 (= e!2828681 e!2828680)))

(declare-fun res!1891657 () Bool)

(assert (=> b!4539365 (=> res!1891657 e!2828680)))

(assert (=> b!4539365 (= res!1891657 (= (h!56628 (toList!4404 lm!1477)) (h!56628 (toList!4404 lm!1477))))))

(declare-fun b!4539366 () Bool)

(assert (=> b!4539366 (= e!2828680 (contains!13537 (t!357835 (toList!4404 lm!1477)) (h!56628 (toList!4404 lm!1477))))))

(assert (= (and d!1402927 res!1891656) b!4539365))

(assert (= (and b!4539365 (not res!1891657)) b!4539366))

(assert (=> d!1402927 m!5303289))

(declare-fun m!5304899 () Bool)

(assert (=> d!1402927 m!5304899))

(declare-fun m!5304901 () Bool)

(assert (=> b!4539366 m!5304901))

(assert (=> b!4538470 d!1402927))

(assert (=> b!4538605 d!1402833))

(declare-fun d!1402929 () Bool)

(assert (=> d!1402929 (dynLambda!21211 lambda!175769 (h!56628 (toList!4404 lm!1477)))))

(assert (=> d!1402929 true))

(declare-fun _$7!1940 () Unit!98176)

(assert (=> d!1402929 (= (choose!29865 (toList!4404 lm!1477) lambda!175769 (h!56628 (toList!4404 lm!1477))) _$7!1940)))

(declare-fun b_lambda!157779 () Bool)

(assert (=> (not b_lambda!157779) (not d!1402929)))

(declare-fun bs!876212 () Bool)

(assert (= bs!876212 d!1402929))

(assert (=> bs!876212 m!5302769))

(assert (=> d!1402301 d!1402929))

(assert (=> d!1402301 d!1402257))

(declare-fun d!1402931 () Bool)

(declare-fun res!1891658 () Bool)

(declare-fun e!2828682 () Bool)

(assert (=> d!1402931 (=> res!1891658 e!2828682)))

(assert (=> d!1402931 (= res!1891658 (and ((_ is Cons!50748) (toList!4403 lt!1713092)) (= (_1!28907 (h!56627 (toList!4403 lt!1713092))) key!3287)))))

(assert (=> d!1402931 (= (containsKey!1872 (toList!4403 lt!1713092) key!3287) e!2828682)))

(declare-fun b!4539367 () Bool)

(declare-fun e!2828683 () Bool)

(assert (=> b!4539367 (= e!2828682 e!2828683)))

(declare-fun res!1891659 () Bool)

(assert (=> b!4539367 (=> (not res!1891659) (not e!2828683))))

(assert (=> b!4539367 (= res!1891659 ((_ is Cons!50748) (toList!4403 lt!1713092)))))

(declare-fun b!4539368 () Bool)

(assert (=> b!4539368 (= e!2828683 (containsKey!1872 (t!357834 (toList!4403 lt!1713092)) key!3287))))

(assert (= (and d!1402931 (not res!1891658)) b!4539367))

(assert (= (and b!4539367 res!1891659) b!4539368))

(declare-fun m!5304903 () Bool)

(assert (=> b!4539368 m!5304903))

(assert (=> d!1402269 d!1402931))

(declare-fun b!4539369 () Bool)

(declare-fun e!2828684 () Bool)

(assert (=> b!4539369 (= e!2828684 (not (contains!13540 (keys!17658 (extractMap!1254 (toList!4404 lm!1477))) key!3287)))))

(declare-fun bm!316530 () Bool)

(declare-fun call!316535 () Bool)

(declare-fun e!2828689 () List!50875)

(assert (=> bm!316530 (= call!316535 (contains!13540 e!2828689 key!3287))))

(declare-fun c!775322 () Bool)

(declare-fun c!775324 () Bool)

(assert (=> bm!316530 (= c!775322 c!775324)))

(declare-fun b!4539370 () Bool)

(declare-fun e!2828687 () Bool)

(assert (=> b!4539370 (= e!2828687 (contains!13540 (keys!17658 (extractMap!1254 (toList!4404 lm!1477))) key!3287))))

(declare-fun b!4539371 () Bool)

(declare-fun e!2828685 () Bool)

(assert (=> b!4539371 (= e!2828685 e!2828687)))

(declare-fun res!1891662 () Bool)

(assert (=> b!4539371 (=> (not res!1891662) (not e!2828687))))

(assert (=> b!4539371 (= res!1891662 (isDefined!8474 (getValueByKey!1144 (toList!4403 (extractMap!1254 (toList!4404 lm!1477))) key!3287)))))

(declare-fun b!4539372 () Bool)

(declare-fun e!2828688 () Unit!98176)

(declare-fun Unit!98404 () Unit!98176)

(assert (=> b!4539372 (= e!2828688 Unit!98404)))

(declare-fun b!4539373 () Bool)

(declare-fun e!2828686 () Unit!98176)

(assert (=> b!4539373 (= e!2828686 e!2828688)))

(declare-fun c!775323 () Bool)

(assert (=> b!4539373 (= c!775323 call!316535)))

(declare-fun d!1402933 () Bool)

(assert (=> d!1402933 e!2828685))

(declare-fun res!1891661 () Bool)

(assert (=> d!1402933 (=> res!1891661 e!2828685)))

(assert (=> d!1402933 (= res!1891661 e!2828684)))

(declare-fun res!1891660 () Bool)

(assert (=> d!1402933 (=> (not res!1891660) (not e!2828684))))

(declare-fun lt!1714067 () Bool)

(assert (=> d!1402933 (= res!1891660 (not lt!1714067))))

(declare-fun lt!1714069 () Bool)

(assert (=> d!1402933 (= lt!1714067 lt!1714069)))

(declare-fun lt!1714068 () Unit!98176)

(assert (=> d!1402933 (= lt!1714068 e!2828686)))

(assert (=> d!1402933 (= c!775324 lt!1714069)))

(assert (=> d!1402933 (= lt!1714069 (containsKey!1872 (toList!4403 (extractMap!1254 (toList!4404 lm!1477))) key!3287))))

(assert (=> d!1402933 (= (contains!13538 (extractMap!1254 (toList!4404 lm!1477)) key!3287) lt!1714067)))

(declare-fun b!4539374 () Bool)

(assert (=> b!4539374 (= e!2828689 (getKeysList!491 (toList!4403 (extractMap!1254 (toList!4404 lm!1477)))))))

(declare-fun b!4539375 () Bool)

(assert (=> b!4539375 false))

(declare-fun lt!1714073 () Unit!98176)

(declare-fun lt!1714070 () Unit!98176)

(assert (=> b!4539375 (= lt!1714073 lt!1714070)))

(assert (=> b!4539375 (containsKey!1872 (toList!4403 (extractMap!1254 (toList!4404 lm!1477))) key!3287)))

(assert (=> b!4539375 (= lt!1714070 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 (extractMap!1254 (toList!4404 lm!1477))) key!3287))))

(declare-fun Unit!98406 () Unit!98176)

(assert (=> b!4539375 (= e!2828688 Unit!98406)))

(declare-fun b!4539376 () Bool)

(declare-fun lt!1714071 () Unit!98176)

(assert (=> b!4539376 (= e!2828686 lt!1714071)))

(declare-fun lt!1714072 () Unit!98176)

(assert (=> b!4539376 (= lt!1714072 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 (extractMap!1254 (toList!4404 lm!1477))) key!3287))))

(assert (=> b!4539376 (isDefined!8474 (getValueByKey!1144 (toList!4403 (extractMap!1254 (toList!4404 lm!1477))) key!3287))))

(declare-fun lt!1714066 () Unit!98176)

(assert (=> b!4539376 (= lt!1714066 lt!1714072)))

(assert (=> b!4539376 (= lt!1714071 (lemmaInListThenGetKeysListContains!487 (toList!4403 (extractMap!1254 (toList!4404 lm!1477))) key!3287))))

(assert (=> b!4539376 call!316535))

(declare-fun b!4539377 () Bool)

(assert (=> b!4539377 (= e!2828689 (keys!17658 (extractMap!1254 (toList!4404 lm!1477))))))

(assert (= (and d!1402933 c!775324) b!4539376))

(assert (= (and d!1402933 (not c!775324)) b!4539373))

(assert (= (and b!4539373 c!775323) b!4539375))

(assert (= (and b!4539373 (not c!775323)) b!4539372))

(assert (= (or b!4539376 b!4539373) bm!316530))

(assert (= (and bm!316530 c!775322) b!4539374))

(assert (= (and bm!316530 (not c!775322)) b!4539377))

(assert (= (and d!1402933 res!1891660) b!4539369))

(assert (= (and d!1402933 (not res!1891661)) b!4539371))

(assert (= (and b!4539371 res!1891662) b!4539370))

(declare-fun m!5304905 () Bool)

(assert (=> bm!316530 m!5304905))

(declare-fun m!5304907 () Bool)

(assert (=> b!4539371 m!5304907))

(assert (=> b!4539371 m!5304907))

(declare-fun m!5304909 () Bool)

(assert (=> b!4539371 m!5304909))

(declare-fun m!5304911 () Bool)

(assert (=> d!1402933 m!5304911))

(assert (=> b!4539369 m!5302581))

(declare-fun m!5304913 () Bool)

(assert (=> b!4539369 m!5304913))

(assert (=> b!4539369 m!5304913))

(declare-fun m!5304915 () Bool)

(assert (=> b!4539369 m!5304915))

(assert (=> b!4539377 m!5302581))

(assert (=> b!4539377 m!5304913))

(assert (=> b!4539370 m!5302581))

(assert (=> b!4539370 m!5304913))

(assert (=> b!4539370 m!5304913))

(assert (=> b!4539370 m!5304915))

(assert (=> b!4539375 m!5304911))

(declare-fun m!5304917 () Bool)

(assert (=> b!4539375 m!5304917))

(declare-fun m!5304919 () Bool)

(assert (=> b!4539376 m!5304919))

(assert (=> b!4539376 m!5304907))

(assert (=> b!4539376 m!5304907))

(assert (=> b!4539376 m!5304909))

(declare-fun m!5304921 () Bool)

(assert (=> b!4539376 m!5304921))

(declare-fun m!5304923 () Bool)

(assert (=> b!4539374 m!5304923))

(assert (=> d!1402303 d!1402933))

(assert (=> d!1402303 d!1402275))

(declare-fun d!1402935 () Bool)

(assert (=> d!1402935 (not (contains!13538 (extractMap!1254 (toList!4404 lm!1477)) key!3287))))

(assert (=> d!1402935 true))

(declare-fun _$26!416 () Unit!98176)

(assert (=> d!1402935 (= (choose!29866 lm!1477 key!3287 hashF!1107) _$26!416)))

(declare-fun bs!876253 () Bool)

(assert (= bs!876253 d!1402935))

(assert (=> bs!876253 m!5302581))

(assert (=> bs!876253 m!5302581))

(assert (=> bs!876253 m!5302929))

(assert (=> d!1402303 d!1402935))

(declare-fun d!1402945 () Bool)

(declare-fun res!1891667 () Bool)

(declare-fun e!2828695 () Bool)

(assert (=> d!1402945 (=> res!1891667 e!2828695)))

(assert (=> d!1402945 (= res!1891667 ((_ is Nil!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402945 (= (forall!10341 (toList!4404 lm!1477) lambda!175857) e!2828695)))

(declare-fun b!4539384 () Bool)

(declare-fun e!2828696 () Bool)

(assert (=> b!4539384 (= e!2828695 e!2828696)))

(declare-fun res!1891668 () Bool)

(assert (=> b!4539384 (=> (not res!1891668) (not e!2828696))))

(assert (=> b!4539384 (= res!1891668 (dynLambda!21211 lambda!175857 (h!56628 (toList!4404 lm!1477))))))

(declare-fun b!4539385 () Bool)

(assert (=> b!4539385 (= e!2828696 (forall!10341 (t!357835 (toList!4404 lm!1477)) lambda!175857))))

(assert (= (and d!1402945 (not res!1891667)) b!4539384))

(assert (= (and b!4539384 res!1891668) b!4539385))

(declare-fun b_lambda!157783 () Bool)

(assert (=> (not b_lambda!157783) (not b!4539384)))

(declare-fun m!5304973 () Bool)

(assert (=> b!4539384 m!5304973))

(declare-fun m!5304975 () Bool)

(assert (=> b!4539385 m!5304975))

(assert (=> d!1402303 d!1402945))

(declare-fun d!1402949 () Bool)

(declare-fun res!1891671 () Bool)

(declare-fun e!2828699 () Bool)

(assert (=> d!1402949 (=> res!1891671 e!2828699)))

(assert (=> d!1402949 (= res!1891671 (and ((_ is Cons!50748) (_2!28908 (h!56628 (toList!4404 lt!1713100)))) (= (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lt!1713100))))) key!3287)))))

(assert (=> d!1402949 (= (containsKey!1870 (_2!28908 (h!56628 (toList!4404 lt!1713100))) key!3287) e!2828699)))

(declare-fun b!4539388 () Bool)

(declare-fun e!2828700 () Bool)

(assert (=> b!4539388 (= e!2828699 e!2828700)))

(declare-fun res!1891672 () Bool)

(assert (=> b!4539388 (=> (not res!1891672) (not e!2828700))))

(assert (=> b!4539388 (= res!1891672 ((_ is Cons!50748) (_2!28908 (h!56628 (toList!4404 lt!1713100)))))))

(declare-fun b!4539389 () Bool)

(assert (=> b!4539389 (= e!2828700 (containsKey!1870 (t!357834 (_2!28908 (h!56628 (toList!4404 lt!1713100)))) key!3287))))

(assert (= (and d!1402949 (not res!1891671)) b!4539388))

(assert (= (and b!4539388 res!1891672) b!4539389))

(declare-fun m!5304977 () Bool)

(assert (=> b!4539389 m!5304977))

(assert (=> b!4538344 d!1402949))

(declare-fun d!1402951 () Bool)

(declare-fun lt!1714075 () Bool)

(assert (=> d!1402951 (= lt!1714075 (select (content!8437 (toList!4404 lt!1713550)) lt!1713093))))

(declare-fun e!2828702 () Bool)

(assert (=> d!1402951 (= lt!1714075 e!2828702)))

(declare-fun res!1891673 () Bool)

(assert (=> d!1402951 (=> (not res!1891673) (not e!2828702))))

(assert (=> d!1402951 (= res!1891673 ((_ is Cons!50749) (toList!4404 lt!1713550)))))

(assert (=> d!1402951 (= (contains!13537 (toList!4404 lt!1713550) lt!1713093) lt!1714075)))

(declare-fun b!4539390 () Bool)

(declare-fun e!2828701 () Bool)

(assert (=> b!4539390 (= e!2828702 e!2828701)))

(declare-fun res!1891674 () Bool)

(assert (=> b!4539390 (=> res!1891674 e!2828701)))

(assert (=> b!4539390 (= res!1891674 (= (h!56628 (toList!4404 lt!1713550)) lt!1713093))))

(declare-fun b!4539391 () Bool)

(assert (=> b!4539391 (= e!2828701 (contains!13537 (t!357835 (toList!4404 lt!1713550)) lt!1713093))))

(assert (= (and d!1402951 res!1891673) b!4539390))

(assert (= (and b!4539390 (not res!1891674)) b!4539391))

(declare-fun m!5304983 () Bool)

(assert (=> d!1402951 m!5304983))

(declare-fun m!5304985 () Bool)

(assert (=> d!1402951 m!5304985))

(declare-fun m!5304989 () Bool)

(assert (=> b!4539391 m!5304989))

(assert (=> b!4538577 d!1402951))

(declare-fun d!1402957 () Bool)

(assert (=> d!1402957 (= (invariantList!1043 (toList!4403 lt!1713253)) (noDuplicatedKeys!276 (toList!4403 lt!1713253)))))

(declare-fun bs!876256 () Bool)

(assert (= bs!876256 d!1402957))

(declare-fun m!5304991 () Bool)

(assert (=> bs!876256 m!5304991))

(assert (=> b!4538245 d!1402957))

(assert (=> b!4538362 d!1402927))

(declare-fun d!1402959 () Bool)

(declare-fun lt!1714087 () Bool)

(assert (=> d!1402959 (= lt!1714087 (select (content!8434 (_2!28908 lt!1713093)) (get!16681 lt!1713455)))))

(declare-fun e!2828722 () Bool)

(assert (=> d!1402959 (= lt!1714087 e!2828722)))

(declare-fun res!1891688 () Bool)

(assert (=> d!1402959 (=> (not res!1891688) (not e!2828722))))

(assert (=> d!1402959 (= res!1891688 ((_ is Cons!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1402959 (= (contains!13542 (_2!28908 lt!1713093) (get!16681 lt!1713455)) lt!1714087)))

(declare-fun b!4539418 () Bool)

(declare-fun e!2828723 () Bool)

(assert (=> b!4539418 (= e!2828722 e!2828723)))

(declare-fun res!1891687 () Bool)

(assert (=> b!4539418 (=> res!1891687 e!2828723)))

(assert (=> b!4539418 (= res!1891687 (= (h!56627 (_2!28908 lt!1713093)) (get!16681 lt!1713455)))))

(declare-fun b!4539419 () Bool)

(assert (=> b!4539419 (= e!2828723 (contains!13542 (t!357834 (_2!28908 lt!1713093)) (get!16681 lt!1713455)))))

(assert (= (and d!1402959 res!1891688) b!4539418))

(assert (= (and b!4539418 (not res!1891687)) b!4539419))

(declare-fun m!5305031 () Bool)

(assert (=> d!1402959 m!5305031))

(assert (=> d!1402959 m!5303163))

(declare-fun m!5305033 () Bool)

(assert (=> d!1402959 m!5305033))

(assert (=> b!4539419 m!5303163))

(declare-fun m!5305035 () Bool)

(assert (=> b!4539419 m!5305035))

(assert (=> b!4538469 d!1402959))

(assert (=> b!4538469 d!1402829))

(declare-fun d!1402977 () Bool)

(declare-fun res!1891689 () Bool)

(declare-fun e!2828724 () Bool)

(assert (=> d!1402977 (=> res!1891689 e!2828724)))

(assert (=> d!1402977 (= res!1891689 (not ((_ is Cons!50748) (_2!28908 (h!56628 (toList!4404 lm!1477))))))))

(assert (=> d!1402977 (= (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lm!1477)))) e!2828724)))

(declare-fun b!4539420 () Bool)

(declare-fun e!2828725 () Bool)

(assert (=> b!4539420 (= e!2828724 e!2828725)))

(declare-fun res!1891690 () Bool)

(assert (=> b!4539420 (=> (not res!1891690) (not e!2828725))))

(assert (=> b!4539420 (= res!1891690 (not (containsKey!1870 (t!357834 (_2!28908 (h!56628 (toList!4404 lm!1477)))) (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477))))))))))

(declare-fun b!4539421 () Bool)

(assert (=> b!4539421 (= e!2828725 (noDuplicateKeys!1198 (t!357834 (_2!28908 (h!56628 (toList!4404 lm!1477))))))))

(assert (= (and d!1402977 (not res!1891689)) b!4539420))

(assert (= (and b!4539420 res!1891690) b!4539421))

(declare-fun m!5305037 () Bool)

(assert (=> b!4539420 m!5305037))

(declare-fun m!5305039 () Bool)

(assert (=> b!4539421 m!5305039))

(assert (=> bs!875383 d!1402977))

(declare-fun lt!1714088 () Bool)

(declare-fun d!1402979 () Bool)

(assert (=> d!1402979 (= lt!1714088 (select (content!8437 (toList!4404 lm!1477)) (tuple2!51229 hash!344 lt!1713088)))))

(declare-fun e!2828727 () Bool)

(assert (=> d!1402979 (= lt!1714088 e!2828727)))

(declare-fun res!1891691 () Bool)

(assert (=> d!1402979 (=> (not res!1891691) (not e!2828727))))

(assert (=> d!1402979 (= res!1891691 ((_ is Cons!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402979 (= (contains!13537 (toList!4404 lm!1477) (tuple2!51229 hash!344 lt!1713088)) lt!1714088)))

(declare-fun b!4539422 () Bool)

(declare-fun e!2828726 () Bool)

(assert (=> b!4539422 (= e!2828727 e!2828726)))

(declare-fun res!1891692 () Bool)

(assert (=> b!4539422 (=> res!1891692 e!2828726)))

(assert (=> b!4539422 (= res!1891692 (= (h!56628 (toList!4404 lm!1477)) (tuple2!51229 hash!344 lt!1713088)))))

(declare-fun b!4539423 () Bool)

(assert (=> b!4539423 (= e!2828726 (contains!13537 (t!357835 (toList!4404 lm!1477)) (tuple2!51229 hash!344 lt!1713088)))))

(assert (= (and d!1402979 res!1891691) b!4539422))

(assert (= (and b!4539422 (not res!1891692)) b!4539423))

(assert (=> d!1402979 m!5303289))

(declare-fun m!5305041 () Bool)

(assert (=> d!1402979 m!5305041))

(declare-fun m!5305043 () Bool)

(assert (=> b!4539423 m!5305043))

(assert (=> d!1402443 d!1402979))

(declare-fun d!1402981 () Bool)

(assert (=> d!1402981 (contains!13537 (toList!4404 lm!1477) (tuple2!51229 hash!344 lt!1713088))))

(assert (=> d!1402981 true))

(declare-fun _$14!1224 () Unit!98176)

(assert (=> d!1402981 (= (choose!29875 (toList!4404 lm!1477) hash!344 lt!1713088) _$14!1224)))

(declare-fun bs!876259 () Bool)

(assert (= bs!876259 d!1402981))

(assert (=> bs!876259 m!5303359))

(assert (=> d!1402443 d!1402981))

(assert (=> d!1402443 d!1402573))

(declare-fun bs!876260 () Bool)

(declare-fun d!1402983 () Bool)

(assert (= bs!876260 (and d!1402983 d!1402485)))

(declare-fun lambda!176011 () Int)

(assert (=> bs!876260 (= (= lt!1713103 lt!1713584) (= lambda!176011 lambda!175909))))

(declare-fun bs!876261 () Bool)

(assert (= bs!876261 (and d!1402983 d!1402823)))

(assert (=> bs!876261 (= (= lt!1713103 lt!1713909) (= lambda!176011 lambda!175983))))

(declare-fun bs!876262 () Bool)

(assert (= bs!876262 (and d!1402983 b!4538685)))

(assert (=> bs!876262 (= (= lt!1713103 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176011 lambda!175925))))

(declare-fun bs!876263 () Bool)

(assert (= bs!876263 (and d!1402983 d!1402523)))

(assert (=> bs!876263 (not (= lambda!176011 lambda!175918))))

(declare-fun bs!876264 () Bool)

(assert (= bs!876264 (and d!1402983 b!4539182)))

(assert (=> bs!876264 (= (= lt!1713103 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176011 lambda!175976))))

(declare-fun bs!876265 () Bool)

(assert (= bs!876265 (and d!1402983 b!4539282)))

(assert (=> bs!876265 (= (= lt!1713103 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176011 lambda!175996))))

(assert (=> bs!876264 (= (= lt!1713103 lt!1713882) (= lambda!176011 lambda!175977))))

(declare-fun bs!876266 () Bool)

(assert (= bs!876266 (and d!1402983 b!4538501)))

(assert (=> bs!876266 (= (= lt!1713103 lt!1713493) (= lambda!176011 lambda!175886))))

(assert (=> bs!876262 (= (= lt!1713103 lt!1713639) (= lambda!176011 lambda!175926))))

(declare-fun bs!876267 () Bool)

(assert (= bs!876267 (and d!1402983 b!4539183)))

(assert (=> bs!876267 (= (= lt!1713103 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176011 lambda!175975))))

(declare-fun bs!876268 () Bool)

(assert (= bs!876268 (and d!1402983 b!4539235)))

(assert (=> bs!876268 (= (= lt!1713103 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176011 lambda!175980))))

(declare-fun bs!876269 () Bool)

(assert (= bs!876269 (and d!1402983 d!1402727)))

(assert (=> bs!876269 (= (= lt!1713103 lt!1713121) (= lambda!176011 lambda!175970))))

(declare-fun bs!876270 () Bool)

(assert (= bs!876270 (and d!1402983 d!1402531)))

(assert (=> bs!876270 (= (= lt!1713103 lt!1713634) (= lambda!176011 lambda!175927))))

(declare-fun bs!876271 () Bool)

(assert (= bs!876271 (and d!1402983 b!4538617)))

(assert (=> bs!876271 (= lambda!176011 lambda!175907)))

(declare-fun bs!876272 () Bool)

(assert (= bs!876272 (and d!1402983 b!4538248)))

(assert (=> bs!876272 (= (= lt!1713103 lt!1713121) (= lambda!176011 lambda!175836))))

(declare-fun bs!876273 () Bool)

(assert (= bs!876273 (and d!1402983 b!4538686)))

(assert (=> bs!876273 (= (= lt!1713103 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176011 lambda!175924))))

(declare-fun bs!876274 () Bool)

(assert (= bs!876274 (and d!1402983 b!4538618)))

(assert (=> bs!876274 (= lambda!176011 lambda!175906)))

(declare-fun bs!876275 () Bool)

(assert (= bs!876275 (and d!1402983 b!4538678)))

(assert (=> bs!876275 (= (= lt!1713103 lt!1713617) (= lambda!176011 lambda!175921))))

(declare-fun bs!876276 () Bool)

(assert (= bs!876276 (and d!1402983 d!1402409)))

(assert (=> bs!876276 (= (= lt!1713103 lt!1713488) (= lambda!176011 lambda!175888))))

(assert (=> bs!876275 (= (= lt!1713103 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176011 lambda!175920))))

(declare-fun bs!876277 () Bool)

(assert (= bs!876277 (and d!1402983 d!1402527)))

(assert (=> bs!876277 (= (= lt!1713103 lt!1713612) (= lambda!176011 lambda!175922))))

(declare-fun bs!876278 () Bool)

(assert (= bs!876278 (and d!1402983 d!1402887)))

(assert (=> bs!876278 (= (= lt!1713103 lt!1713493) (= lambda!176011 lambda!176005))))

(assert (=> bs!876272 (= (= lt!1713103 lt!1713258) (= lambda!176011 lambda!175837))))

(assert (=> bs!876271 (= (= lt!1713103 lt!1713589) (= lambda!176011 lambda!175908))))

(declare-fun bs!876279 () Bool)

(assert (= bs!876279 (and d!1402983 b!4538249)))

(assert (=> bs!876279 (= (= lt!1713103 lt!1713121) (= lambda!176011 lambda!175834))))

(declare-fun bs!876280 () Bool)

(assert (= bs!876280 (and d!1402983 b!4538502)))

(assert (=> bs!876280 (= (= lt!1713103 lt!1713095) (= lambda!176011 lambda!175883))))

(declare-fun bs!876281 () Bool)

(assert (= bs!876281 (and d!1402983 d!1402229)))

(assert (=> bs!876281 (= (= lt!1713103 lt!1713253) (= lambda!176011 lambda!175838))))

(declare-fun bs!876282 () Bool)

(assert (= bs!876282 (and d!1402983 b!4539281)))

(assert (=> bs!876282 (= (= lt!1713103 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176011 lambda!175998))))

(declare-fun bs!876283 () Bool)

(assert (= bs!876283 (and d!1402983 d!1402771)))

(assert (=> bs!876283 (= (= lt!1713103 lt!1713877) (= lambda!176011 lambda!175978))))

(declare-fun bs!876284 () Bool)

(assert (= bs!876284 (and d!1402983 d!1402317)))

(assert (=> bs!876284 (not (= lambda!176011 lambda!175860))))

(declare-fun bs!876285 () Bool)

(assert (= bs!876285 (and d!1402983 b!4539234)))

(assert (=> bs!876285 (= (= lt!1713103 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176011 lambda!175981))))

(assert (=> bs!876266 (= (= lt!1713103 lt!1713095) (= lambda!176011 lambda!175885))))

(declare-fun bs!876286 () Bool)

(assert (= bs!876286 (and d!1402983 b!4538679)))

(assert (=> bs!876286 (= (= lt!1713103 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176011 lambda!175919))))

(declare-fun bs!876287 () Bool)

(assert (= bs!876287 (and d!1402983 d!1402545)))

(assert (=> bs!876287 (= (= lt!1713103 lt!1713589) (= lambda!176011 lambda!175932))))

(declare-fun bs!876288 () Bool)

(assert (= bs!876288 (and d!1402983 d!1402859)))

(assert (=> bs!876288 (= (= lt!1713103 lt!1713969) (= lambda!176011 lambda!176002))))

(assert (=> bs!876285 (= (= lt!1713103 lt!1713914) (= lambda!176011 lambda!175982))))

(declare-fun bs!876289 () Bool)

(assert (= bs!876289 (and d!1402983 b!4538171)))

(assert (=> bs!876289 (not (= lambda!176011 lambda!175771))))

(assert (=> bs!876282 (= (= lt!1713103 lt!1713974) (= lambda!176011 lambda!176000))))

(assert (=> d!1402983 true))

(assert (=> d!1402983 (forall!10343 (toList!4403 lt!1713103) lambda!176011)))

(declare-fun lt!1714089 () Unit!98176)

(assert (=> d!1402983 (= lt!1714089 (choose!29892 lt!1713103))))

(assert (=> d!1402983 (= (lemmaContainsAllItsOwnKeys!364 lt!1713103) lt!1714089)))

(declare-fun bs!876290 () Bool)

(assert (= bs!876290 d!1402983))

(declare-fun m!5305045 () Bool)

(assert (=> bs!876290 m!5305045))

(declare-fun m!5305047 () Bool)

(assert (=> bs!876290 m!5305047))

(assert (=> bm!316452 d!1402983))

(declare-fun d!1402985 () Bool)

(declare-fun lt!1714090 () Bool)

(assert (=> d!1402985 (= lt!1714090 (select (content!8437 (toList!4404 lt!1713393)) lt!1713093))))

(declare-fun e!2828729 () Bool)

(assert (=> d!1402985 (= lt!1714090 e!2828729)))

(declare-fun res!1891693 () Bool)

(assert (=> d!1402985 (=> (not res!1891693) (not e!2828729))))

(assert (=> d!1402985 (= res!1891693 ((_ is Cons!50749) (toList!4404 lt!1713393)))))

(assert (=> d!1402985 (= (contains!13537 (toList!4404 lt!1713393) lt!1713093) lt!1714090)))

(declare-fun b!4539424 () Bool)

(declare-fun e!2828728 () Bool)

(assert (=> b!4539424 (= e!2828729 e!2828728)))

(declare-fun res!1891694 () Bool)

(assert (=> b!4539424 (=> res!1891694 e!2828728)))

(assert (=> b!4539424 (= res!1891694 (= (h!56628 (toList!4404 lt!1713393)) lt!1713093))))

(declare-fun b!4539425 () Bool)

(assert (=> b!4539425 (= e!2828728 (contains!13537 (t!357835 (toList!4404 lt!1713393)) lt!1713093))))

(assert (= (and d!1402985 res!1891693) b!4539424))

(assert (= (and b!4539424 (not res!1891694)) b!4539425))

(declare-fun m!5305049 () Bool)

(assert (=> d!1402985 m!5305049))

(declare-fun m!5305051 () Bool)

(assert (=> d!1402985 m!5305051))

(declare-fun m!5305053 () Bool)

(assert (=> b!4539425 m!5305053))

(assert (=> b!4538401 d!1402985))

(declare-fun bs!876291 () Bool)

(declare-fun b!4539430 () Bool)

(assert (= bs!876291 (and b!4539430 d!1402485)))

(declare-fun lambda!176012 () Int)

(assert (=> bs!876291 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713584) (= lambda!176012 lambda!175909))))

(declare-fun bs!876292 () Bool)

(assert (= bs!876292 (and b!4539430 d!1402823)))

(assert (=> bs!876292 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713909) (= lambda!176012 lambda!175983))))

(declare-fun bs!876293 () Bool)

(assert (= bs!876293 (and b!4539430 b!4538685)))

(assert (=> bs!876293 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176012 lambda!175925))))

(declare-fun bs!876294 () Bool)

(assert (= bs!876294 (and b!4539430 d!1402523)))

(assert (=> bs!876294 (not (= lambda!176012 lambda!175918))))

(declare-fun bs!876295 () Bool)

(assert (= bs!876295 (and b!4539430 b!4539182)))

(assert (=> bs!876295 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176012 lambda!175976))))

(declare-fun bs!876296 () Bool)

(assert (= bs!876296 (and b!4539430 b!4539282)))

(assert (=> bs!876296 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176012 lambda!175996))))

(assert (=> bs!876295 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713882) (= lambda!176012 lambda!175977))))

(declare-fun bs!876298 () Bool)

(assert (= bs!876298 (and b!4539430 b!4538501)))

(assert (=> bs!876298 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713493) (= lambda!176012 lambda!175886))))

(assert (=> bs!876293 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713639) (= lambda!176012 lambda!175926))))

(declare-fun bs!876299 () Bool)

(assert (= bs!876299 (and b!4539430 b!4539183)))

(assert (=> bs!876299 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176012 lambda!175975))))

(declare-fun bs!876300 () Bool)

(assert (= bs!876300 (and b!4539430 b!4539235)))

(assert (=> bs!876300 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176012 lambda!175980))))

(declare-fun bs!876301 () Bool)

(assert (= bs!876301 (and b!4539430 d!1402531)))

(assert (=> bs!876301 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713634) (= lambda!176012 lambda!175927))))

(declare-fun bs!876302 () Bool)

(assert (= bs!876302 (and b!4539430 b!4538617)))

(assert (=> bs!876302 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713103) (= lambda!176012 lambda!175907))))

(declare-fun bs!876303 () Bool)

(assert (= bs!876303 (and b!4539430 b!4538248)))

(assert (=> bs!876303 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713121) (= lambda!176012 lambda!175836))))

(declare-fun bs!876305 () Bool)

(assert (= bs!876305 (and b!4539430 b!4538686)))

(assert (=> bs!876305 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176012 lambda!175924))))

(declare-fun bs!876306 () Bool)

(assert (= bs!876306 (and b!4539430 b!4538618)))

(assert (=> bs!876306 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713103) (= lambda!176012 lambda!175906))))

(declare-fun bs!876307 () Bool)

(assert (= bs!876307 (and b!4539430 b!4538678)))

(assert (=> bs!876307 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713617) (= lambda!176012 lambda!175921))))

(declare-fun bs!876308 () Bool)

(assert (= bs!876308 (and b!4539430 d!1402409)))

(assert (=> bs!876308 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713488) (= lambda!176012 lambda!175888))))

(assert (=> bs!876307 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176012 lambda!175920))))

(declare-fun bs!876309 () Bool)

(assert (= bs!876309 (and b!4539430 d!1402527)))

(assert (=> bs!876309 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713612) (= lambda!176012 lambda!175922))))

(declare-fun bs!876311 () Bool)

(assert (= bs!876311 (and b!4539430 d!1402887)))

(assert (=> bs!876311 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713493) (= lambda!176012 lambda!176005))))

(assert (=> bs!876303 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713258) (= lambda!176012 lambda!175837))))

(assert (=> bs!876302 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713589) (= lambda!176012 lambda!175908))))

(declare-fun bs!876315 () Bool)

(assert (= bs!876315 (and b!4539430 b!4538249)))

(assert (=> bs!876315 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713121) (= lambda!176012 lambda!175834))))

(declare-fun bs!876317 () Bool)

(assert (= bs!876317 (and b!4539430 b!4538502)))

(assert (=> bs!876317 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713095) (= lambda!176012 lambda!175883))))

(declare-fun bs!876319 () Bool)

(assert (= bs!876319 (and b!4539430 d!1402229)))

(assert (=> bs!876319 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713253) (= lambda!176012 lambda!175838))))

(declare-fun bs!876321 () Bool)

(assert (= bs!876321 (and b!4539430 b!4539281)))

(assert (=> bs!876321 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176012 lambda!175998))))

(declare-fun bs!876323 () Bool)

(assert (= bs!876323 (and b!4539430 d!1402771)))

(assert (=> bs!876323 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713877) (= lambda!176012 lambda!175978))))

(declare-fun bs!876325 () Bool)

(assert (= bs!876325 (and b!4539430 d!1402317)))

(assert (=> bs!876325 (not (= lambda!176012 lambda!175860))))

(declare-fun bs!876327 () Bool)

(assert (= bs!876327 (and b!4539430 b!4539234)))

(assert (=> bs!876327 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176012 lambda!175981))))

(assert (=> bs!876298 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713095) (= lambda!176012 lambda!175885))))

(declare-fun bs!876330 () Bool)

(assert (= bs!876330 (and b!4539430 b!4538679)))

(assert (=> bs!876330 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176012 lambda!175919))))

(declare-fun bs!876334 () Bool)

(assert (= bs!876334 (and b!4539430 d!1402545)))

(assert (=> bs!876334 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713589) (= lambda!176012 lambda!175932))))

(declare-fun bs!876336 () Bool)

(assert (= bs!876336 (and b!4539430 d!1402983)))

(assert (=> bs!876336 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713103) (= lambda!176012 lambda!176011))))

(declare-fun bs!876338 () Bool)

(assert (= bs!876338 (and b!4539430 d!1402727)))

(assert (=> bs!876338 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713121) (= lambda!176012 lambda!175970))))

(declare-fun bs!876340 () Bool)

(assert (= bs!876340 (and b!4539430 d!1402859)))

(assert (=> bs!876340 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713969) (= lambda!176012 lambda!176002))))

(assert (=> bs!876327 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713914) (= lambda!176012 lambda!175982))))

(declare-fun bs!876341 () Bool)

(assert (= bs!876341 (and b!4539430 b!4538171)))

(assert (=> bs!876341 (not (= lambda!176012 lambda!175771))))

(assert (=> bs!876321 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713974) (= lambda!176012 lambda!176000))))

(assert (=> b!4539430 true))

(declare-fun bs!876349 () Bool)

(declare-fun b!4539429 () Bool)

(assert (= bs!876349 (and b!4539429 d!1402485)))

(declare-fun lambda!176014 () Int)

(assert (=> bs!876349 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713584) (= lambda!176014 lambda!175909))))

(declare-fun bs!876350 () Bool)

(assert (= bs!876350 (and b!4539429 d!1402823)))

(assert (=> bs!876350 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713909) (= lambda!176014 lambda!175983))))

(declare-fun bs!876351 () Bool)

(assert (= bs!876351 (and b!4539429 b!4538685)))

(assert (=> bs!876351 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176014 lambda!175925))))

(declare-fun bs!876352 () Bool)

(assert (= bs!876352 (and b!4539429 d!1402523)))

(assert (=> bs!876352 (not (= lambda!176014 lambda!175918))))

(declare-fun bs!876354 () Bool)

(assert (= bs!876354 (and b!4539429 b!4539182)))

(assert (=> bs!876354 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176014 lambda!175976))))

(declare-fun bs!876355 () Bool)

(assert (= bs!876355 (and b!4539429 b!4539282)))

(assert (=> bs!876355 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176014 lambda!175996))))

(assert (=> bs!876354 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713882) (= lambda!176014 lambda!175977))))

(declare-fun bs!876356 () Bool)

(assert (= bs!876356 (and b!4539429 b!4538501)))

(assert (=> bs!876356 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713493) (= lambda!176014 lambda!175886))))

(assert (=> bs!876351 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713639) (= lambda!176014 lambda!175926))))

(declare-fun bs!876357 () Bool)

(assert (= bs!876357 (and b!4539429 b!4539183)))

(assert (=> bs!876357 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176014 lambda!175975))))

(declare-fun bs!876358 () Bool)

(assert (= bs!876358 (and b!4539429 b!4539235)))

(assert (=> bs!876358 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176014 lambda!175980))))

(declare-fun bs!876359 () Bool)

(assert (= bs!876359 (and b!4539429 d!1402531)))

(assert (=> bs!876359 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713634) (= lambda!176014 lambda!175927))))

(declare-fun bs!876360 () Bool)

(assert (= bs!876360 (and b!4539429 b!4538248)))

(assert (=> bs!876360 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713121) (= lambda!176014 lambda!175836))))

(declare-fun bs!876361 () Bool)

(assert (= bs!876361 (and b!4539429 b!4538686)))

(assert (=> bs!876361 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176014 lambda!175924))))

(declare-fun bs!876362 () Bool)

(assert (= bs!876362 (and b!4539429 b!4538618)))

(assert (=> bs!876362 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713103) (= lambda!176014 lambda!175906))))

(declare-fun bs!876363 () Bool)

(assert (= bs!876363 (and b!4539429 b!4538678)))

(assert (=> bs!876363 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713617) (= lambda!176014 lambda!175921))))

(declare-fun bs!876364 () Bool)

(assert (= bs!876364 (and b!4539429 d!1402409)))

(assert (=> bs!876364 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713488) (= lambda!176014 lambda!175888))))

(assert (=> bs!876363 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176014 lambda!175920))))

(declare-fun bs!876366 () Bool)

(assert (= bs!876366 (and b!4539429 d!1402527)))

(assert (=> bs!876366 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713612) (= lambda!176014 lambda!175922))))

(declare-fun bs!876367 () Bool)

(assert (= bs!876367 (and b!4539429 d!1402887)))

(assert (=> bs!876367 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713493) (= lambda!176014 lambda!176005))))

(assert (=> bs!876360 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713258) (= lambda!176014 lambda!175837))))

(declare-fun bs!876368 () Bool)

(assert (= bs!876368 (and b!4539429 b!4538617)))

(assert (=> bs!876368 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713589) (= lambda!176014 lambda!175908))))

(declare-fun bs!876369 () Bool)

(assert (= bs!876369 (and b!4539429 b!4538249)))

(assert (=> bs!876369 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713121) (= lambda!176014 lambda!175834))))

(declare-fun bs!876370 () Bool)

(assert (= bs!876370 (and b!4539429 b!4538502)))

(assert (=> bs!876370 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713095) (= lambda!176014 lambda!175883))))

(declare-fun bs!876371 () Bool)

(assert (= bs!876371 (and b!4539429 d!1402229)))

(assert (=> bs!876371 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713253) (= lambda!176014 lambda!175838))))

(declare-fun bs!876372 () Bool)

(assert (= bs!876372 (and b!4539429 b!4539281)))

(assert (=> bs!876372 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176014 lambda!175998))))

(declare-fun bs!876373 () Bool)

(assert (= bs!876373 (and b!4539429 d!1402771)))

(assert (=> bs!876373 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713877) (= lambda!176014 lambda!175978))))

(declare-fun bs!876374 () Bool)

(assert (= bs!876374 (and b!4539429 d!1402317)))

(assert (=> bs!876374 (not (= lambda!176014 lambda!175860))))

(declare-fun bs!876375 () Bool)

(assert (= bs!876375 (and b!4539429 b!4539234)))

(assert (=> bs!876375 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176014 lambda!175981))))

(assert (=> bs!876356 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713095) (= lambda!176014 lambda!175885))))

(declare-fun bs!876376 () Bool)

(assert (= bs!876376 (and b!4539429 b!4538679)))

(assert (=> bs!876376 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176014 lambda!175919))))

(declare-fun bs!876377 () Bool)

(assert (= bs!876377 (and b!4539429 d!1402545)))

(assert (=> bs!876377 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713589) (= lambda!176014 lambda!175932))))

(declare-fun bs!876378 () Bool)

(assert (= bs!876378 (and b!4539429 d!1402983)))

(assert (=> bs!876378 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713103) (= lambda!176014 lambda!176011))))

(declare-fun bs!876379 () Bool)

(assert (= bs!876379 (and b!4539429 d!1402727)))

(assert (=> bs!876379 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713121) (= lambda!176014 lambda!175970))))

(declare-fun bs!876380 () Bool)

(assert (= bs!876380 (and b!4539429 d!1402859)))

(assert (=> bs!876380 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713969) (= lambda!176014 lambda!176002))))

(assert (=> bs!876375 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713914) (= lambda!176014 lambda!175982))))

(declare-fun bs!876381 () Bool)

(assert (= bs!876381 (and b!4539429 b!4539430)))

(assert (=> bs!876381 (= lambda!176014 lambda!176012)))

(assert (=> bs!876368 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713103) (= lambda!176014 lambda!175907))))

(declare-fun bs!876382 () Bool)

(assert (= bs!876382 (and b!4539429 b!4538171)))

(assert (=> bs!876382 (not (= lambda!176014 lambda!175771))))

(assert (=> bs!876372 (= (= (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1713974) (= lambda!176014 lambda!176000))))

(assert (=> b!4539429 true))

(declare-fun lambda!176015 () Int)

(declare-fun lt!1714101 () ListMap!3665)

(assert (=> bs!876349 (= (= lt!1714101 lt!1713584) (= lambda!176015 lambda!175909))))

(assert (=> bs!876350 (= (= lt!1714101 lt!1713909) (= lambda!176015 lambda!175983))))

(assert (=> bs!876351 (= (= lt!1714101 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176015 lambda!175925))))

(assert (=> bs!876352 (not (= lambda!176015 lambda!175918))))

(assert (=> bs!876354 (= (= lt!1714101 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176015 lambda!175976))))

(assert (=> bs!876355 (= (= lt!1714101 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176015 lambda!175996))))

(assert (=> bs!876354 (= (= lt!1714101 lt!1713882) (= lambda!176015 lambda!175977))))

(assert (=> bs!876356 (= (= lt!1714101 lt!1713493) (= lambda!176015 lambda!175886))))

(assert (=> bs!876351 (= (= lt!1714101 lt!1713639) (= lambda!176015 lambda!175926))))

(assert (=> bs!876357 (= (= lt!1714101 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176015 lambda!175975))))

(assert (=> bs!876358 (= (= lt!1714101 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176015 lambda!175980))))

(assert (=> bs!876359 (= (= lt!1714101 lt!1713634) (= lambda!176015 lambda!175927))))

(assert (=> bs!876360 (= (= lt!1714101 lt!1713121) (= lambda!176015 lambda!175836))))

(assert (=> bs!876361 (= (= lt!1714101 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176015 lambda!175924))))

(assert (=> bs!876362 (= (= lt!1714101 lt!1713103) (= lambda!176015 lambda!175906))))

(assert (=> bs!876363 (= (= lt!1714101 lt!1713617) (= lambda!176015 lambda!175921))))

(assert (=> bs!876364 (= (= lt!1714101 lt!1713488) (= lambda!176015 lambda!175888))))

(assert (=> bs!876363 (= (= lt!1714101 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176015 lambda!175920))))

(assert (=> bs!876366 (= (= lt!1714101 lt!1713612) (= lambda!176015 lambda!175922))))

(assert (=> bs!876367 (= (= lt!1714101 lt!1713493) (= lambda!176015 lambda!176005))))

(assert (=> bs!876360 (= (= lt!1714101 lt!1713258) (= lambda!176015 lambda!175837))))

(assert (=> bs!876368 (= (= lt!1714101 lt!1713589) (= lambda!176015 lambda!175908))))

(assert (=> bs!876369 (= (= lt!1714101 lt!1713121) (= lambda!176015 lambda!175834))))

(assert (=> bs!876370 (= (= lt!1714101 lt!1713095) (= lambda!176015 lambda!175883))))

(assert (=> bs!876371 (= (= lt!1714101 lt!1713253) (= lambda!176015 lambda!175838))))

(assert (=> bs!876372 (= (= lt!1714101 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176015 lambda!175998))))

(assert (=> bs!876373 (= (= lt!1714101 lt!1713877) (= lambda!176015 lambda!175978))))

(assert (=> bs!876374 (not (= lambda!176015 lambda!175860))))

(assert (=> bs!876375 (= (= lt!1714101 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176015 lambda!175981))))

(assert (=> bs!876356 (= (= lt!1714101 lt!1713095) (= lambda!176015 lambda!175885))))

(assert (=> bs!876376 (= (= lt!1714101 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176015 lambda!175919))))

(assert (=> bs!876377 (= (= lt!1714101 lt!1713589) (= lambda!176015 lambda!175932))))

(assert (=> bs!876378 (= (= lt!1714101 lt!1713103) (= lambda!176015 lambda!176011))))

(assert (=> b!4539429 (= (= lt!1714101 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176015 lambda!176014))))

(assert (=> bs!876379 (= (= lt!1714101 lt!1713121) (= lambda!176015 lambda!175970))))

(assert (=> bs!876380 (= (= lt!1714101 lt!1713969) (= lambda!176015 lambda!176002))))

(assert (=> bs!876375 (= (= lt!1714101 lt!1713914) (= lambda!176015 lambda!175982))))

(assert (=> bs!876381 (= (= lt!1714101 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176015 lambda!176012))))

(assert (=> bs!876368 (= (= lt!1714101 lt!1713103) (= lambda!176015 lambda!175907))))

(assert (=> bs!876382 (not (= lambda!176015 lambda!175771))))

(assert (=> bs!876372 (= (= lt!1714101 lt!1713974) (= lambda!176015 lambda!176000))))

(assert (=> b!4539429 true))

(declare-fun bs!876399 () Bool)

(declare-fun d!1402987 () Bool)

(assert (= bs!876399 (and d!1402987 d!1402485)))

(declare-fun lt!1714096 () ListMap!3665)

(declare-fun lambda!176018 () Int)

(assert (=> bs!876399 (= (= lt!1714096 lt!1713584) (= lambda!176018 lambda!175909))))

(declare-fun bs!876400 () Bool)

(assert (= bs!876400 (and d!1402987 d!1402823)))

(assert (=> bs!876400 (= (= lt!1714096 lt!1713909) (= lambda!176018 lambda!175983))))

(declare-fun bs!876401 () Bool)

(assert (= bs!876401 (and d!1402987 b!4538685)))

(assert (=> bs!876401 (= (= lt!1714096 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176018 lambda!175925))))

(declare-fun bs!876402 () Bool)

(assert (= bs!876402 (and d!1402987 d!1402523)))

(assert (=> bs!876402 (not (= lambda!176018 lambda!175918))))

(declare-fun bs!876403 () Bool)

(assert (= bs!876403 (and d!1402987 b!4539182)))

(assert (=> bs!876403 (= (= lt!1714096 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176018 lambda!175976))))

(declare-fun bs!876404 () Bool)

(assert (= bs!876404 (and d!1402987 b!4539282)))

(assert (=> bs!876404 (= (= lt!1714096 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176018 lambda!175996))))

(assert (=> bs!876403 (= (= lt!1714096 lt!1713882) (= lambda!176018 lambda!175977))))

(declare-fun bs!876405 () Bool)

(assert (= bs!876405 (and d!1402987 b!4538501)))

(assert (=> bs!876405 (= (= lt!1714096 lt!1713493) (= lambda!176018 lambda!175886))))

(declare-fun bs!876406 () Bool)

(assert (= bs!876406 (and d!1402987 b!4539429)))

(assert (=> bs!876406 (= (= lt!1714096 lt!1714101) (= lambda!176018 lambda!176015))))

(assert (=> bs!876401 (= (= lt!1714096 lt!1713639) (= lambda!176018 lambda!175926))))

(declare-fun bs!876408 () Bool)

(assert (= bs!876408 (and d!1402987 b!4539183)))

(assert (=> bs!876408 (= (= lt!1714096 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176018 lambda!175975))))

(declare-fun bs!876409 () Bool)

(assert (= bs!876409 (and d!1402987 b!4539235)))

(assert (=> bs!876409 (= (= lt!1714096 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176018 lambda!175980))))

(declare-fun bs!876411 () Bool)

(assert (= bs!876411 (and d!1402987 d!1402531)))

(assert (=> bs!876411 (= (= lt!1714096 lt!1713634) (= lambda!176018 lambda!175927))))

(declare-fun bs!876413 () Bool)

(assert (= bs!876413 (and d!1402987 b!4538248)))

(assert (=> bs!876413 (= (= lt!1714096 lt!1713121) (= lambda!176018 lambda!175836))))

(declare-fun bs!876415 () Bool)

(assert (= bs!876415 (and d!1402987 b!4538686)))

(assert (=> bs!876415 (= (= lt!1714096 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176018 lambda!175924))))

(declare-fun bs!876417 () Bool)

(assert (= bs!876417 (and d!1402987 b!4538618)))

(assert (=> bs!876417 (= (= lt!1714096 lt!1713103) (= lambda!176018 lambda!175906))))

(declare-fun bs!876419 () Bool)

(assert (= bs!876419 (and d!1402987 b!4538678)))

(assert (=> bs!876419 (= (= lt!1714096 lt!1713617) (= lambda!176018 lambda!175921))))

(declare-fun bs!876421 () Bool)

(assert (= bs!876421 (and d!1402987 d!1402409)))

(assert (=> bs!876421 (= (= lt!1714096 lt!1713488) (= lambda!176018 lambda!175888))))

(assert (=> bs!876419 (= (= lt!1714096 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176018 lambda!175920))))

(declare-fun bs!876426 () Bool)

(assert (= bs!876426 (and d!1402987 d!1402527)))

(assert (=> bs!876426 (= (= lt!1714096 lt!1713612) (= lambda!176018 lambda!175922))))

(declare-fun bs!876427 () Bool)

(assert (= bs!876427 (and d!1402987 d!1402887)))

(assert (=> bs!876427 (= (= lt!1714096 lt!1713493) (= lambda!176018 lambda!176005))))

(assert (=> bs!876413 (= (= lt!1714096 lt!1713258) (= lambda!176018 lambda!175837))))

(declare-fun bs!876429 () Bool)

(assert (= bs!876429 (and d!1402987 b!4538617)))

(assert (=> bs!876429 (= (= lt!1714096 lt!1713589) (= lambda!176018 lambda!175908))))

(declare-fun bs!876432 () Bool)

(assert (= bs!876432 (and d!1402987 b!4538249)))

(assert (=> bs!876432 (= (= lt!1714096 lt!1713121) (= lambda!176018 lambda!175834))))

(declare-fun bs!876435 () Bool)

(assert (= bs!876435 (and d!1402987 b!4538502)))

(assert (=> bs!876435 (= (= lt!1714096 lt!1713095) (= lambda!176018 lambda!175883))))

(declare-fun bs!876437 () Bool)

(assert (= bs!876437 (and d!1402987 d!1402229)))

(assert (=> bs!876437 (= (= lt!1714096 lt!1713253) (= lambda!176018 lambda!175838))))

(declare-fun bs!876439 () Bool)

(assert (= bs!876439 (and d!1402987 b!4539281)))

(assert (=> bs!876439 (= (= lt!1714096 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176018 lambda!175998))))

(declare-fun bs!876440 () Bool)

(assert (= bs!876440 (and d!1402987 d!1402771)))

(assert (=> bs!876440 (= (= lt!1714096 lt!1713877) (= lambda!176018 lambda!175978))))

(declare-fun bs!876441 () Bool)

(assert (= bs!876441 (and d!1402987 d!1402317)))

(assert (=> bs!876441 (not (= lambda!176018 lambda!175860))))

(declare-fun bs!876442 () Bool)

(assert (= bs!876442 (and d!1402987 b!4539234)))

(assert (=> bs!876442 (= (= lt!1714096 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176018 lambda!175981))))

(assert (=> bs!876405 (= (= lt!1714096 lt!1713095) (= lambda!176018 lambda!175885))))

(declare-fun bs!876443 () Bool)

(assert (= bs!876443 (and d!1402987 b!4538679)))

(assert (=> bs!876443 (= (= lt!1714096 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176018 lambda!175919))))

(declare-fun bs!876444 () Bool)

(assert (= bs!876444 (and d!1402987 d!1402545)))

(assert (=> bs!876444 (= (= lt!1714096 lt!1713589) (= lambda!176018 lambda!175932))))

(declare-fun bs!876445 () Bool)

(assert (= bs!876445 (and d!1402987 d!1402983)))

(assert (=> bs!876445 (= (= lt!1714096 lt!1713103) (= lambda!176018 lambda!176011))))

(assert (=> bs!876406 (= (= lt!1714096 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176018 lambda!176014))))

(declare-fun bs!876446 () Bool)

(assert (= bs!876446 (and d!1402987 d!1402727)))

(assert (=> bs!876446 (= (= lt!1714096 lt!1713121) (= lambda!176018 lambda!175970))))

(declare-fun bs!876447 () Bool)

(assert (= bs!876447 (and d!1402987 d!1402859)))

(assert (=> bs!876447 (= (= lt!1714096 lt!1713969) (= lambda!176018 lambda!176002))))

(assert (=> bs!876442 (= (= lt!1714096 lt!1713914) (= lambda!176018 lambda!175982))))

(declare-fun bs!876448 () Bool)

(assert (= bs!876448 (and d!1402987 b!4539430)))

(assert (=> bs!876448 (= (= lt!1714096 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176018 lambda!176012))))

(assert (=> bs!876429 (= (= lt!1714096 lt!1713103) (= lambda!176018 lambda!175907))))

(declare-fun bs!876449 () Bool)

(assert (= bs!876449 (and d!1402987 b!4538171)))

(assert (=> bs!876449 (not (= lambda!176018 lambda!175771))))

(assert (=> bs!876439 (= (= lt!1714096 lt!1713974) (= lambda!176018 lambda!176000))))

(assert (=> d!1402987 true))

(declare-fun bm!316532 () Bool)

(declare-fun call!316537 () Unit!98176)

(assert (=> bm!316532 (= call!316537 (lemmaContainsAllItsOwnKeys!364 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))

(declare-fun b!4539426 () Bool)

(declare-fun e!2828730 () Bool)

(assert (=> b!4539426 (= e!2828730 (invariantList!1043 (toList!4403 lt!1714096)))))

(declare-fun bm!316533 () Bool)

(declare-fun call!316539 () Bool)

(declare-fun c!775333 () Bool)

(assert (=> bm!316533 (= call!316539 (forall!10343 (ite c!775333 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (_2!28908 (h!56628 (toList!4404 lm!1477)))) (ite c!775333 lambda!176012 lambda!176015)))))

(declare-fun b!4539427 () Bool)

(declare-fun res!1891697 () Bool)

(assert (=> b!4539427 (=> (not res!1891697) (not e!2828730))))

(assert (=> b!4539427 (= res!1891697 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) lambda!176018))))

(declare-fun b!4539428 () Bool)

(declare-fun e!2828731 () Bool)

(assert (=> b!4539428 (= e!2828731 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) lambda!176015))))

(declare-fun e!2828732 () ListMap!3665)

(assert (=> b!4539429 (= e!2828732 lt!1714101)))

(declare-fun lt!1714107 () ListMap!3665)

(assert (=> b!4539429 (= lt!1714107 (+!1604 (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477))))))))

(assert (=> b!4539429 (= lt!1714101 (addToMapMapFromBucket!725 (t!357834 (_2!28908 (h!56628 (toList!4404 lm!1477)))) (+!1604 (extractMap!1254 (t!357835 (toList!4404 lm!1477))) (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477)))))))))

(declare-fun lt!1714100 () Unit!98176)

(assert (=> b!4539429 (= lt!1714100 call!316537)))

(assert (=> b!4539429 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) lambda!176014)))

(declare-fun lt!1714108 () Unit!98176)

(assert (=> b!4539429 (= lt!1714108 lt!1714100)))

(assert (=> b!4539429 (forall!10343 (toList!4403 lt!1714107) lambda!176015)))

(declare-fun lt!1714095 () Unit!98176)

(declare-fun Unit!98411 () Unit!98176)

(assert (=> b!4539429 (= lt!1714095 Unit!98411)))

(declare-fun call!316538 () Bool)

(assert (=> b!4539429 call!316538))

(declare-fun lt!1714106 () Unit!98176)

(declare-fun Unit!98412 () Unit!98176)

(assert (=> b!4539429 (= lt!1714106 Unit!98412)))

(declare-fun lt!1714094 () Unit!98176)

(declare-fun Unit!98413 () Unit!98176)

(assert (=> b!4539429 (= lt!1714094 Unit!98413)))

(declare-fun lt!1714097 () Unit!98176)

(assert (=> b!4539429 (= lt!1714097 (forallContained!2605 (toList!4403 lt!1714107) lambda!176015 (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477))))))))

(assert (=> b!4539429 (contains!13538 lt!1714107 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477))))))))

(declare-fun lt!1714093 () Unit!98176)

(declare-fun Unit!98414 () Unit!98176)

(assert (=> b!4539429 (= lt!1714093 Unit!98414)))

(assert (=> b!4539429 (contains!13538 lt!1714101 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477))))))))

(declare-fun lt!1714092 () Unit!98176)

(declare-fun Unit!98415 () Unit!98176)

(assert (=> b!4539429 (= lt!1714092 Unit!98415)))

(assert (=> b!4539429 call!316539))

(declare-fun lt!1714110 () Unit!98176)

(declare-fun Unit!98416 () Unit!98176)

(assert (=> b!4539429 (= lt!1714110 Unit!98416)))

(assert (=> b!4539429 (forall!10343 (toList!4403 lt!1714107) lambda!176015)))

(declare-fun lt!1714102 () Unit!98176)

(declare-fun Unit!98417 () Unit!98176)

(assert (=> b!4539429 (= lt!1714102 Unit!98417)))

(declare-fun lt!1714105 () Unit!98176)

(declare-fun Unit!98418 () Unit!98176)

(assert (=> b!4539429 (= lt!1714105 Unit!98418)))

(declare-fun lt!1714111 () Unit!98176)

(assert (=> b!4539429 (= lt!1714111 (addForallContainsKeyThenBeforeAdding!364 (extractMap!1254 (t!357835 (toList!4404 lm!1477))) lt!1714101 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477))))) (_2!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477)))))))))

(assert (=> b!4539429 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) lambda!176015)))

(declare-fun lt!1714099 () Unit!98176)

(assert (=> b!4539429 (= lt!1714099 lt!1714111)))

(assert (=> b!4539429 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) lambda!176015)))

(declare-fun lt!1714109 () Unit!98176)

(declare-fun Unit!98419 () Unit!98176)

(assert (=> b!4539429 (= lt!1714109 Unit!98419)))

(declare-fun res!1891696 () Bool)

(assert (=> b!4539429 (= res!1891696 (forall!10343 (_2!28908 (h!56628 (toList!4404 lm!1477))) lambda!176015))))

(assert (=> b!4539429 (=> (not res!1891696) (not e!2828731))))

(assert (=> b!4539429 e!2828731))

(declare-fun lt!1714091 () Unit!98176)

(declare-fun Unit!98420 () Unit!98176)

(assert (=> b!4539429 (= lt!1714091 Unit!98420)))

(assert (=> b!4539430 (= e!2828732 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))

(declare-fun lt!1714104 () Unit!98176)

(assert (=> b!4539430 (= lt!1714104 call!316537)))

(assert (=> b!4539430 call!316538))

(declare-fun lt!1714103 () Unit!98176)

(assert (=> b!4539430 (= lt!1714103 lt!1714104)))

(assert (=> b!4539430 call!316539))

(declare-fun lt!1714098 () Unit!98176)

(declare-fun Unit!98421 () Unit!98176)

(assert (=> b!4539430 (= lt!1714098 Unit!98421)))

(declare-fun bm!316534 () Bool)

(assert (=> bm!316534 (= call!316538 (forall!10343 (ite c!775333 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (t!357834 (_2!28908 (h!56628 (toList!4404 lm!1477))))) (ite c!775333 lambda!176012 lambda!176015)))))

(assert (=> d!1402987 e!2828730))

(declare-fun res!1891695 () Bool)

(assert (=> d!1402987 (=> (not res!1891695) (not e!2828730))))

(assert (=> d!1402987 (= res!1891695 (forall!10343 (_2!28908 (h!56628 (toList!4404 lm!1477))) lambda!176018))))

(assert (=> d!1402987 (= lt!1714096 e!2828732)))

(assert (=> d!1402987 (= c!775333 ((_ is Nil!50748) (_2!28908 (h!56628 (toList!4404 lm!1477)))))))

(assert (=> d!1402987 (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lm!1477))))))

(assert (=> d!1402987 (= (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 lm!1477))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) lt!1714096)))

(assert (= (and d!1402987 c!775333) b!4539430))

(assert (= (and d!1402987 (not c!775333)) b!4539429))

(assert (= (and b!4539429 res!1891696) b!4539428))

(assert (= (or b!4539430 b!4539429) bm!316533))

(assert (= (or b!4539430 b!4539429) bm!316534))

(assert (= (or b!4539430 b!4539429) bm!316532))

(assert (= (and d!1402987 res!1891695) b!4539427))

(assert (= (and b!4539427 res!1891697) b!4539426))

(declare-fun m!5305153 () Bool)

(assert (=> bm!316534 m!5305153))

(declare-fun m!5305155 () Bool)

(assert (=> b!4539429 m!5305155))

(assert (=> b!4539429 m!5302543))

(declare-fun m!5305157 () Bool)

(assert (=> b!4539429 m!5305157))

(declare-fun m!5305159 () Bool)

(assert (=> b!4539429 m!5305159))

(declare-fun m!5305161 () Bool)

(assert (=> b!4539429 m!5305161))

(assert (=> b!4539429 m!5305155))

(assert (=> b!4539429 m!5305161))

(declare-fun m!5305163 () Bool)

(assert (=> b!4539429 m!5305163))

(declare-fun m!5305165 () Bool)

(assert (=> b!4539429 m!5305165))

(declare-fun m!5305167 () Bool)

(assert (=> b!4539429 m!5305167))

(declare-fun m!5305169 () Bool)

(assert (=> b!4539429 m!5305169))

(assert (=> b!4539429 m!5305157))

(declare-fun m!5305171 () Bool)

(assert (=> b!4539429 m!5305171))

(assert (=> b!4539429 m!5302543))

(declare-fun m!5305173 () Bool)

(assert (=> b!4539429 m!5305173))

(declare-fun m!5305175 () Bool)

(assert (=> d!1402987 m!5305175))

(assert (=> d!1402987 m!5303529))

(declare-fun m!5305177 () Bool)

(assert (=> b!4539427 m!5305177))

(declare-fun m!5305179 () Bool)

(assert (=> b!4539426 m!5305179))

(declare-fun m!5305181 () Bool)

(assert (=> bm!316533 m!5305181))

(assert (=> bm!316532 m!5302543))

(declare-fun m!5305183 () Bool)

(assert (=> bm!316532 m!5305183))

(assert (=> b!4539428 m!5305161))

(assert (=> b!4538322 d!1402987))

(assert (=> b!4538322 d!1402471))

(declare-fun d!1403031 () Bool)

(declare-fun res!1891728 () Bool)

(declare-fun e!2828767 () Bool)

(assert (=> d!1403031 (=> res!1891728 e!2828767)))

(assert (=> d!1403031 (= res!1891728 ((_ is Nil!50748) newBucket!178))))

(assert (=> d!1403031 (= (forall!10343 newBucket!178 lambda!175860) e!2828767)))

(declare-fun b!4539485 () Bool)

(declare-fun e!2828768 () Bool)

(assert (=> b!4539485 (= e!2828767 e!2828768)))

(declare-fun res!1891729 () Bool)

(assert (=> b!4539485 (=> (not res!1891729) (not e!2828768))))

(assert (=> b!4539485 (= res!1891729 (dynLambda!21212 lambda!175860 (h!56627 newBucket!178)))))

(declare-fun b!4539486 () Bool)

(assert (=> b!4539486 (= e!2828768 (forall!10343 (t!357834 newBucket!178) lambda!175860))))

(assert (= (and d!1403031 (not res!1891728)) b!4539485))

(assert (= (and b!4539485 res!1891729) b!4539486))

(declare-fun b_lambda!157797 () Bool)

(assert (=> (not b_lambda!157797) (not b!4539485)))

(declare-fun m!5305185 () Bool)

(assert (=> b!4539485 m!5305185))

(declare-fun m!5305187 () Bool)

(assert (=> b!4539486 m!5305187))

(assert (=> d!1402317 d!1403031))

(declare-fun d!1403033 () Bool)

(assert (=> d!1403033 (= (isEmpty!28745 lt!1713455) (not ((_ is Some!11196) lt!1713455)))))

(assert (=> d!1402383 d!1403033))

(assert (=> d!1402383 d!1402299))

(declare-fun d!1403035 () Bool)

(declare-fun c!775346 () Bool)

(assert (=> d!1403035 (= c!775346 ((_ is Nil!50748) (toList!4403 lt!1713097)))))

(declare-fun e!2828769 () (InoxSet tuple2!51226))

(assert (=> d!1403035 (= (content!8434 (toList!4403 lt!1713097)) e!2828769)))

(declare-fun b!4539487 () Bool)

(assert (=> b!4539487 (= e!2828769 ((as const (Array tuple2!51226 Bool)) false))))

(declare-fun b!4539488 () Bool)

(assert (=> b!4539488 (= e!2828769 ((_ map or) (store ((as const (Array tuple2!51226 Bool)) false) (h!56627 (toList!4403 lt!1713097)) true) (content!8434 (t!357834 (toList!4403 lt!1713097)))))))

(assert (= (and d!1403035 c!775346) b!4539487))

(assert (= (and d!1403035 (not c!775346)) b!4539488))

(declare-fun m!5305189 () Bool)

(assert (=> b!4539488 m!5305189))

(declare-fun m!5305191 () Bool)

(assert (=> b!4539488 m!5305191))

(assert (=> d!1402227 d!1403035))

(declare-fun d!1403037 () Bool)

(declare-fun c!775347 () Bool)

(assert (=> d!1403037 (= c!775347 ((_ is Nil!50748) (toList!4403 lt!1713117)))))

(declare-fun e!2828770 () (InoxSet tuple2!51226))

(assert (=> d!1403037 (= (content!8434 (toList!4403 lt!1713117)) e!2828770)))

(declare-fun b!4539489 () Bool)

(assert (=> b!4539489 (= e!2828770 ((as const (Array tuple2!51226 Bool)) false))))

(declare-fun b!4539490 () Bool)

(assert (=> b!4539490 (= e!2828770 ((_ map or) (store ((as const (Array tuple2!51226 Bool)) false) (h!56627 (toList!4403 lt!1713117)) true) (content!8434 (t!357834 (toList!4403 lt!1713117)))))))

(assert (= (and d!1403037 c!775347) b!4539489))

(assert (= (and d!1403037 (not c!775347)) b!4539490))

(declare-fun m!5305193 () Bool)

(assert (=> b!4539490 m!5305193))

(declare-fun m!5305195 () Bool)

(assert (=> b!4539490 m!5305195))

(assert (=> d!1402227 d!1403037))

(declare-fun bs!876498 () Bool)

(declare-fun b!4539578 () Bool)

(assert (= bs!876498 (and b!4539578 b!4538823)))

(declare-fun lambda!176033 () Int)

(assert (=> bs!876498 (= (= (t!357834 (toList!4403 lt!1713103)) (toList!4403 lt!1713578)) (= lambda!176033 lambda!175936))))

(declare-fun bs!876499 () Bool)

(assert (= bs!876499 (and b!4539578 b!4538671)))

(assert (=> bs!876499 (= (= (t!357834 (toList!4403 lt!1713103)) (toList!4403 lt!1713382)) (= lambda!176033 lambda!175916))))

(declare-fun bs!876500 () Bool)

(assert (= bs!876500 (and b!4539578 b!4539090)))

(assert (=> bs!876500 (= (= (t!357834 (toList!4403 lt!1713103)) (toList!4403 lt!1713092)) (= lambda!176033 lambda!175966))))

(declare-fun bs!876501 () Bool)

(assert (= bs!876501 (and b!4539578 b!4538818)))

(assert (=> bs!876501 (= (= (t!357834 (toList!4403 lt!1713103)) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176033 lambda!175934))))

(declare-fun bs!876502 () Bool)

(assert (= bs!876502 (and b!4539578 b!4538664)))

(assert (=> bs!876502 (= (= (t!357834 (toList!4403 lt!1713103)) (toList!4403 lt!1713103)) (= lambda!176033 lambda!175914))))

(declare-fun bs!876503 () Bool)

(assert (= bs!876503 (and b!4539578 b!4539246)))

(assert (=> bs!876503 (= (= (t!357834 (toList!4403 lt!1713103)) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= lambda!176033 lambda!175989))))

(assert (=> b!4539578 true))

(declare-fun bs!876504 () Bool)

(declare-fun b!4539572 () Bool)

(assert (= bs!876504 (and b!4539572 b!4538823)))

(declare-fun lambda!176034 () Int)

(assert (=> bs!876504 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103))) (toList!4403 lt!1713578)) (= lambda!176034 lambda!175936))))

(declare-fun bs!876505 () Bool)

(assert (= bs!876505 (and b!4539572 b!4538671)))

(assert (=> bs!876505 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103))) (toList!4403 lt!1713382)) (= lambda!176034 lambda!175916))))

(declare-fun bs!876506 () Bool)

(assert (= bs!876506 (and b!4539572 b!4539090)))

(assert (=> bs!876506 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103))) (toList!4403 lt!1713092)) (= lambda!176034 lambda!175966))))

(declare-fun bs!876507 () Bool)

(assert (= bs!876507 (and b!4539572 b!4538818)))

(assert (=> bs!876507 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103))) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176034 lambda!175934))))

(declare-fun bs!876508 () Bool)

(assert (= bs!876508 (and b!4539572 b!4538664)))

(assert (=> bs!876508 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103))) (toList!4403 lt!1713103)) (= lambda!176034 lambda!175914))))

(declare-fun bs!876509 () Bool)

(assert (= bs!876509 (and b!4539572 b!4539578)))

(assert (=> bs!876509 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103))) (t!357834 (toList!4403 lt!1713103))) (= lambda!176034 lambda!176033))))

(declare-fun bs!876510 () Bool)

(assert (= bs!876510 (and b!4539572 b!4539246)))

(assert (=> bs!876510 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103))) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= lambda!176034 lambda!175989))))

(assert (=> b!4539572 true))

(declare-fun bs!876511 () Bool)

(declare-fun b!4539573 () Bool)

(assert (= bs!876511 (and b!4539573 b!4538823)))

(declare-fun lambda!176035 () Int)

(assert (=> bs!876511 (= (= (toList!4403 lt!1713103) (toList!4403 lt!1713578)) (= lambda!176035 lambda!175936))))

(declare-fun bs!876512 () Bool)

(assert (= bs!876512 (and b!4539573 b!4538671)))

(assert (=> bs!876512 (= (= (toList!4403 lt!1713103) (toList!4403 lt!1713382)) (= lambda!176035 lambda!175916))))

(declare-fun bs!876513 () Bool)

(assert (= bs!876513 (and b!4539573 b!4539090)))

(assert (=> bs!876513 (= (= (toList!4403 lt!1713103) (toList!4403 lt!1713092)) (= lambda!176035 lambda!175966))))

(declare-fun bs!876514 () Bool)

(assert (= bs!876514 (and b!4539573 b!4538818)))

(assert (=> bs!876514 (= (= (toList!4403 lt!1713103) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176035 lambda!175934))))

(declare-fun bs!876515 () Bool)

(assert (= bs!876515 (and b!4539573 b!4539572)))

(assert (=> bs!876515 (= (= (toList!4403 lt!1713103) (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103)))) (= lambda!176035 lambda!176034))))

(declare-fun bs!876516 () Bool)

(assert (= bs!876516 (and b!4539573 b!4538664)))

(assert (=> bs!876516 (= lambda!176035 lambda!175914)))

(declare-fun bs!876517 () Bool)

(assert (= bs!876517 (and b!4539573 b!4539578)))

(assert (=> bs!876517 (= (= (toList!4403 lt!1713103) (t!357834 (toList!4403 lt!1713103))) (= lambda!176035 lambda!176033))))

(declare-fun bs!876518 () Bool)

(assert (= bs!876518 (and b!4539573 b!4539246)))

(assert (=> bs!876518 (= (= (toList!4403 lt!1713103) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= lambda!176035 lambda!175989))))

(assert (=> b!4539573 true))

(declare-fun bs!876519 () Bool)

(declare-fun b!4539576 () Bool)

(assert (= bs!876519 (and b!4539576 b!4539247)))

(declare-fun lambda!176036 () Int)

(assert (=> bs!876519 (= lambda!176036 lambda!175990)))

(declare-fun bs!876520 () Bool)

(assert (= bs!876520 (and b!4539576 b!4538672)))

(assert (=> bs!876520 (= lambda!176036 lambda!175917)))

(declare-fun bs!876521 () Bool)

(assert (= bs!876521 (and b!4539576 b!4538665)))

(assert (=> bs!876521 (= lambda!176036 lambda!175915)))

(declare-fun bs!876522 () Bool)

(assert (= bs!876522 (and b!4539576 b!4539091)))

(assert (=> bs!876522 (= lambda!176036 lambda!175967)))

(declare-fun bs!876523 () Bool)

(assert (= bs!876523 (and b!4539576 b!4538824)))

(assert (=> bs!876523 (= lambda!176036 lambda!175937)))

(declare-fun bs!876524 () Bool)

(assert (= bs!876524 (and b!4539576 b!4538819)))

(assert (=> bs!876524 (= lambda!176036 lambda!175935)))

(declare-fun b!4539570 () Bool)

(declare-fun e!2828821 () List!50875)

(assert (=> b!4539570 (= e!2828821 Nil!50751)))

(declare-fun b!4539571 () Bool)

(declare-fun e!2828818 () Unit!98176)

(declare-fun Unit!98422 () Unit!98176)

(assert (=> b!4539571 (= e!2828818 Unit!98422)))

(assert (=> b!4539572 (= e!2828821 (Cons!50751 (_1!28907 (h!56627 (toList!4403 lt!1713103))) (getKeysList!491 (t!357834 (toList!4403 lt!1713103)))))))

(declare-fun c!775371 () Bool)

(assert (=> b!4539572 (= c!775371 (containsKey!1872 (t!357834 (toList!4403 lt!1713103)) (_1!28907 (h!56627 (toList!4403 lt!1713103)))))))

(declare-fun lt!1714183 () Unit!98176)

(assert (=> b!4539572 (= lt!1714183 e!2828818)))

(declare-fun c!775373 () Bool)

(assert (=> b!4539572 (= c!775373 (contains!13540 (getKeysList!491 (t!357834 (toList!4403 lt!1713103))) (_1!28907 (h!56627 (toList!4403 lt!1713103)))))))

(declare-fun lt!1714185 () Unit!98176)

(declare-fun e!2828819 () Unit!98176)

(assert (=> b!4539572 (= lt!1714185 e!2828819)))

(declare-fun lt!1714180 () List!50875)

(assert (=> b!4539572 (= lt!1714180 (getKeysList!491 (t!357834 (toList!4403 lt!1713103))))))

(declare-fun lt!1714181 () Unit!98176)

(declare-fun lemmaForallContainsAddHeadPreserves!183 (List!50872 List!50875 tuple2!51226) Unit!98176)

(assert (=> b!4539572 (= lt!1714181 (lemmaForallContainsAddHeadPreserves!183 (t!357834 (toList!4403 lt!1713103)) lt!1714180 (h!56627 (toList!4403 lt!1713103))))))

(assert (=> b!4539572 (forall!10344 lt!1714180 lambda!176034)))

(declare-fun lt!1714182 () Unit!98176)

(assert (=> b!4539572 (= lt!1714182 lt!1714181)))

(declare-fun res!1891764 () Bool)

(declare-fun e!2828820 () Bool)

(assert (=> b!4539573 (=> (not res!1891764) (not e!2828820))))

(declare-fun lt!1714184 () List!50875)

(assert (=> b!4539573 (= res!1891764 (forall!10344 lt!1714184 lambda!176035))))

(declare-fun b!4539574 () Bool)

(assert (=> b!4539574 false))

(declare-fun Unit!98423 () Unit!98176)

(assert (=> b!4539574 (= e!2828818 Unit!98423)))

(declare-fun b!4539575 () Bool)

(declare-fun Unit!98424 () Unit!98176)

(assert (=> b!4539575 (= e!2828819 Unit!98424)))

(assert (=> b!4539576 (= e!2828820 (= (content!8435 lt!1714184) (content!8435 (map!11171 (toList!4403 lt!1713103) lambda!176036))))))

(declare-fun d!1403039 () Bool)

(assert (=> d!1403039 e!2828820))

(declare-fun res!1891763 () Bool)

(assert (=> d!1403039 (=> (not res!1891763) (not e!2828820))))

(assert (=> d!1403039 (= res!1891763 (noDuplicate!761 lt!1714184))))

(assert (=> d!1403039 (= lt!1714184 e!2828821)))

(declare-fun c!775372 () Bool)

(assert (=> d!1403039 (= c!775372 ((_ is Cons!50748) (toList!4403 lt!1713103)))))

(assert (=> d!1403039 (invariantList!1043 (toList!4403 lt!1713103))))

(assert (=> d!1403039 (= (getKeysList!491 (toList!4403 lt!1713103)) lt!1714184)))

(declare-fun b!4539577 () Bool)

(declare-fun res!1891765 () Bool)

(assert (=> b!4539577 (=> (not res!1891765) (not e!2828820))))

(assert (=> b!4539577 (= res!1891765 (= (length!378 lt!1714184) (length!379 (toList!4403 lt!1713103))))))

(assert (=> b!4539578 false))

(declare-fun lt!1714179 () Unit!98176)

(declare-fun forallContained!2607 (List!50875 Int K!12135) Unit!98176)

(assert (=> b!4539578 (= lt!1714179 (forallContained!2607 (getKeysList!491 (t!357834 (toList!4403 lt!1713103))) lambda!176033 (_1!28907 (h!56627 (toList!4403 lt!1713103)))))))

(declare-fun Unit!98426 () Unit!98176)

(assert (=> b!4539578 (= e!2828819 Unit!98426)))

(assert (= (and d!1403039 c!775372) b!4539572))

(assert (= (and d!1403039 (not c!775372)) b!4539570))

(assert (= (and b!4539572 c!775371) b!4539574))

(assert (= (and b!4539572 (not c!775371)) b!4539571))

(assert (= (and b!4539572 c!775373) b!4539578))

(assert (= (and b!4539572 (not c!775373)) b!4539575))

(assert (= (and d!1403039 res!1891763) b!4539577))

(assert (= (and b!4539577 res!1891765) b!4539573))

(assert (= (and b!4539573 res!1891764) b!4539576))

(declare-fun m!5305331 () Bool)

(assert (=> d!1403039 m!5305331))

(assert (=> d!1403039 m!5303801))

(declare-fun m!5305333 () Bool)

(assert (=> b!4539572 m!5305333))

(assert (=> b!4539572 m!5305333))

(declare-fun m!5305335 () Bool)

(assert (=> b!4539572 m!5305335))

(declare-fun m!5305337 () Bool)

(assert (=> b!4539572 m!5305337))

(declare-fun m!5305339 () Bool)

(assert (=> b!4539572 m!5305339))

(declare-fun m!5305341 () Bool)

(assert (=> b!4539572 m!5305341))

(declare-fun m!5305343 () Bool)

(assert (=> b!4539577 m!5305343))

(assert (=> b!4539577 m!5303565))

(assert (=> b!4539578 m!5305333))

(assert (=> b!4539578 m!5305333))

(declare-fun m!5305345 () Bool)

(assert (=> b!4539578 m!5305345))

(declare-fun m!5305347 () Bool)

(assert (=> b!4539573 m!5305347))

(declare-fun m!5305349 () Bool)

(assert (=> b!4539576 m!5305349))

(declare-fun m!5305351 () Bool)

(assert (=> b!4539576 m!5305351))

(assert (=> b!4539576 m!5305351))

(declare-fun m!5305353 () Bool)

(assert (=> b!4539576 m!5305353))

(assert (=> b!4538593 d!1403039))

(assert (=> d!1402255 d!1402631))

(assert (=> d!1402255 d!1402629))

(declare-fun bs!876525 () Bool)

(declare-fun b!4539590 () Bool)

(assert (= bs!876525 (and b!4539590 b!4538823)))

(declare-fun lambda!176041 () Int)

(assert (=> bs!876525 (= (= (t!357834 (toList!4403 lt!1713092)) (toList!4403 lt!1713578)) (= lambda!176041 lambda!175936))))

(declare-fun bs!876526 () Bool)

(assert (= bs!876526 (and b!4539590 b!4538671)))

(assert (=> bs!876526 (= (= (t!357834 (toList!4403 lt!1713092)) (toList!4403 lt!1713382)) (= lambda!176041 lambda!175916))))

(declare-fun bs!876527 () Bool)

(assert (= bs!876527 (and b!4539590 b!4539090)))

(assert (=> bs!876527 (= (= (t!357834 (toList!4403 lt!1713092)) (toList!4403 lt!1713092)) (= lambda!176041 lambda!175966))))

(declare-fun bs!876528 () Bool)

(assert (= bs!876528 (and b!4539590 b!4538818)))

(assert (=> bs!876528 (= (= (t!357834 (toList!4403 lt!1713092)) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176041 lambda!175934))))

(declare-fun bs!876530 () Bool)

(assert (= bs!876530 (and b!4539590 b!4538664)))

(assert (=> bs!876530 (= (= (t!357834 (toList!4403 lt!1713092)) (toList!4403 lt!1713103)) (= lambda!176041 lambda!175914))))

(declare-fun bs!876532 () Bool)

(assert (= bs!876532 (and b!4539590 b!4539578)))

(assert (=> bs!876532 (= (= (t!357834 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713103))) (= lambda!176041 lambda!176033))))

(declare-fun bs!876534 () Bool)

(assert (= bs!876534 (and b!4539590 b!4539246)))

(assert (=> bs!876534 (= (= (t!357834 (toList!4403 lt!1713092)) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= lambda!176041 lambda!175989))))

(declare-fun bs!876538 () Bool)

(assert (= bs!876538 (and b!4539590 b!4539572)))

(assert (=> bs!876538 (= (= (t!357834 (toList!4403 lt!1713092)) (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103)))) (= lambda!176041 lambda!176034))))

(declare-fun bs!876539 () Bool)

(assert (= bs!876539 (and b!4539590 b!4539573)))

(assert (=> bs!876539 (= (= (t!357834 (toList!4403 lt!1713092)) (toList!4403 lt!1713103)) (= lambda!176041 lambda!176035))))

(assert (=> b!4539590 true))

(declare-fun bs!876543 () Bool)

(declare-fun b!4539584 () Bool)

(assert (= bs!876543 (and b!4539584 b!4538823)))

(declare-fun lambda!176043 () Int)

(assert (=> bs!876543 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (toList!4403 lt!1713578)) (= lambda!176043 lambda!175936))))

(declare-fun bs!876544 () Bool)

(assert (= bs!876544 (and b!4539584 b!4538671)))

(assert (=> bs!876544 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (toList!4403 lt!1713382)) (= lambda!176043 lambda!175916))))

(declare-fun bs!876546 () Bool)

(assert (= bs!876546 (and b!4539584 b!4539090)))

(assert (=> bs!876546 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (toList!4403 lt!1713092)) (= lambda!176043 lambda!175966))))

(declare-fun bs!876547 () Bool)

(assert (= bs!876547 (and b!4539584 b!4538818)))

(assert (=> bs!876547 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176043 lambda!175934))))

(declare-fun bs!876548 () Bool)

(assert (= bs!876548 (and b!4539584 b!4539590)))

(assert (=> bs!876548 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (t!357834 (toList!4403 lt!1713092))) (= lambda!176043 lambda!176041))))

(declare-fun bs!876550 () Bool)

(assert (= bs!876550 (and b!4539584 b!4538664)))

(assert (=> bs!876550 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (toList!4403 lt!1713103)) (= lambda!176043 lambda!175914))))

(declare-fun bs!876551 () Bool)

(assert (= bs!876551 (and b!4539584 b!4539578)))

(assert (=> bs!876551 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (t!357834 (toList!4403 lt!1713103))) (= lambda!176043 lambda!176033))))

(declare-fun bs!876552 () Bool)

(assert (= bs!876552 (and b!4539584 b!4539246)))

(assert (=> bs!876552 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= lambda!176043 lambda!175989))))

(declare-fun bs!876554 () Bool)

(assert (= bs!876554 (and b!4539584 b!4539572)))

(assert (=> bs!876554 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103)))) (= lambda!176043 lambda!176034))))

(declare-fun bs!876556 () Bool)

(assert (= bs!876556 (and b!4539584 b!4539573)))

(assert (=> bs!876556 (= (= (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092))) (toList!4403 lt!1713103)) (= lambda!176043 lambda!176035))))

(assert (=> b!4539584 true))

(declare-fun bs!876560 () Bool)

(declare-fun b!4539585 () Bool)

(assert (= bs!876560 (and b!4539585 b!4538823)))

(declare-fun lambda!176044 () Int)

(assert (=> bs!876560 (= (= (toList!4403 lt!1713092) (toList!4403 lt!1713578)) (= lambda!176044 lambda!175936))))

(declare-fun bs!876561 () Bool)

(assert (= bs!876561 (and b!4539585 b!4538671)))

(assert (=> bs!876561 (= (= (toList!4403 lt!1713092) (toList!4403 lt!1713382)) (= lambda!176044 lambda!175916))))

(declare-fun bs!876563 () Bool)

(assert (= bs!876563 (and b!4539585 b!4539090)))

(assert (=> bs!876563 (= lambda!176044 lambda!175966)))

(declare-fun bs!876564 () Bool)

(assert (= bs!876564 (and b!4539585 b!4538818)))

(assert (=> bs!876564 (= (= (toList!4403 lt!1713092) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176044 lambda!175934))))

(declare-fun bs!876566 () Bool)

(assert (= bs!876566 (and b!4539585 b!4539590)))

(assert (=> bs!876566 (= (= (toList!4403 lt!1713092) (t!357834 (toList!4403 lt!1713092))) (= lambda!176044 lambda!176041))))

(declare-fun bs!876568 () Bool)

(assert (= bs!876568 (and b!4539585 b!4538664)))

(assert (=> bs!876568 (= (= (toList!4403 lt!1713092) (toList!4403 lt!1713103)) (= lambda!176044 lambda!175914))))

(declare-fun bs!876569 () Bool)

(assert (= bs!876569 (and b!4539585 b!4539578)))

(assert (=> bs!876569 (= (= (toList!4403 lt!1713092) (t!357834 (toList!4403 lt!1713103))) (= lambda!176044 lambda!176033))))

(declare-fun bs!876571 () Bool)

(assert (= bs!876571 (and b!4539585 b!4539572)))

(assert (=> bs!876571 (= (= (toList!4403 lt!1713092) (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103)))) (= lambda!176044 lambda!176034))))

(declare-fun bs!876573 () Bool)

(assert (= bs!876573 (and b!4539585 b!4539573)))

(assert (=> bs!876573 (= (= (toList!4403 lt!1713092) (toList!4403 lt!1713103)) (= lambda!176044 lambda!176035))))

(declare-fun bs!876574 () Bool)

(assert (= bs!876574 (and b!4539585 b!4539584)))

(assert (=> bs!876574 (= (= (toList!4403 lt!1713092) (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092)))) (= lambda!176044 lambda!176043))))

(declare-fun bs!876575 () Bool)

(assert (= bs!876575 (and b!4539585 b!4539246)))

(assert (=> bs!876575 (= (= (toList!4403 lt!1713092) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= lambda!176044 lambda!175989))))

(assert (=> b!4539585 true))

(declare-fun bs!876577 () Bool)

(declare-fun b!4539588 () Bool)

(assert (= bs!876577 (and b!4539588 b!4539247)))

(declare-fun lambda!176045 () Int)

(assert (=> bs!876577 (= lambda!176045 lambda!175990)))

(declare-fun bs!876578 () Bool)

(assert (= bs!876578 (and b!4539588 b!4538672)))

(assert (=> bs!876578 (= lambda!176045 lambda!175917)))

(declare-fun bs!876580 () Bool)

(assert (= bs!876580 (and b!4539588 b!4538665)))

(assert (=> bs!876580 (= lambda!176045 lambda!175915)))

(declare-fun bs!876583 () Bool)

(assert (= bs!876583 (and b!4539588 b!4539576)))

(assert (=> bs!876583 (= lambda!176045 lambda!176036)))

(declare-fun bs!876585 () Bool)

(assert (= bs!876585 (and b!4539588 b!4539091)))

(assert (=> bs!876585 (= lambda!176045 lambda!175967)))

(declare-fun bs!876586 () Bool)

(assert (= bs!876586 (and b!4539588 b!4538824)))

(assert (=> bs!876586 (= lambda!176045 lambda!175937)))

(declare-fun bs!876587 () Bool)

(assert (= bs!876587 (and b!4539588 b!4538819)))

(assert (=> bs!876587 (= lambda!176045 lambda!175935)))

(declare-fun b!4539582 () Bool)

(declare-fun e!2828825 () List!50875)

(assert (=> b!4539582 (= e!2828825 Nil!50751)))

(declare-fun b!4539583 () Bool)

(declare-fun e!2828822 () Unit!98176)

(declare-fun Unit!98437 () Unit!98176)

(assert (=> b!4539583 (= e!2828822 Unit!98437)))

(assert (=> b!4539584 (= e!2828825 (Cons!50751 (_1!28907 (h!56627 (toList!4403 lt!1713092))) (getKeysList!491 (t!357834 (toList!4403 lt!1713092)))))))

(declare-fun c!775374 () Bool)

(assert (=> b!4539584 (= c!775374 (containsKey!1872 (t!357834 (toList!4403 lt!1713092)) (_1!28907 (h!56627 (toList!4403 lt!1713092)))))))

(declare-fun lt!1714192 () Unit!98176)

(assert (=> b!4539584 (= lt!1714192 e!2828822)))

(declare-fun c!775376 () Bool)

(assert (=> b!4539584 (= c!775376 (contains!13540 (getKeysList!491 (t!357834 (toList!4403 lt!1713092))) (_1!28907 (h!56627 (toList!4403 lt!1713092)))))))

(declare-fun lt!1714194 () Unit!98176)

(declare-fun e!2828823 () Unit!98176)

(assert (=> b!4539584 (= lt!1714194 e!2828823)))

(declare-fun lt!1714189 () List!50875)

(assert (=> b!4539584 (= lt!1714189 (getKeysList!491 (t!357834 (toList!4403 lt!1713092))))))

(declare-fun lt!1714190 () Unit!98176)

(assert (=> b!4539584 (= lt!1714190 (lemmaForallContainsAddHeadPreserves!183 (t!357834 (toList!4403 lt!1713092)) lt!1714189 (h!56627 (toList!4403 lt!1713092))))))

(assert (=> b!4539584 (forall!10344 lt!1714189 lambda!176043)))

(declare-fun lt!1714191 () Unit!98176)

(assert (=> b!4539584 (= lt!1714191 lt!1714190)))

(declare-fun res!1891767 () Bool)

(declare-fun e!2828824 () Bool)

(assert (=> b!4539585 (=> (not res!1891767) (not e!2828824))))

(declare-fun lt!1714193 () List!50875)

(assert (=> b!4539585 (= res!1891767 (forall!10344 lt!1714193 lambda!176044))))

(declare-fun b!4539586 () Bool)

(assert (=> b!4539586 false))

(declare-fun Unit!98438 () Unit!98176)

(assert (=> b!4539586 (= e!2828822 Unit!98438)))

(declare-fun b!4539587 () Bool)

(declare-fun Unit!98439 () Unit!98176)

(assert (=> b!4539587 (= e!2828823 Unit!98439)))

(assert (=> b!4539588 (= e!2828824 (= (content!8435 lt!1714193) (content!8435 (map!11171 (toList!4403 lt!1713092) lambda!176045))))))

(declare-fun d!1403077 () Bool)

(assert (=> d!1403077 e!2828824))

(declare-fun res!1891766 () Bool)

(assert (=> d!1403077 (=> (not res!1891766) (not e!2828824))))

(assert (=> d!1403077 (= res!1891766 (noDuplicate!761 lt!1714193))))

(assert (=> d!1403077 (= lt!1714193 e!2828825)))

(declare-fun c!775375 () Bool)

(assert (=> d!1403077 (= c!775375 ((_ is Cons!50748) (toList!4403 lt!1713092)))))

(assert (=> d!1403077 (invariantList!1043 (toList!4403 lt!1713092))))

(assert (=> d!1403077 (= (getKeysList!491 (toList!4403 lt!1713092)) lt!1714193)))

(declare-fun b!4539589 () Bool)

(declare-fun res!1891768 () Bool)

(assert (=> b!4539589 (=> (not res!1891768) (not e!2828824))))

(assert (=> b!4539589 (= res!1891768 (= (length!378 lt!1714193) (length!379 (toList!4403 lt!1713092))))))

(assert (=> b!4539590 false))

(declare-fun lt!1714188 () Unit!98176)

(assert (=> b!4539590 (= lt!1714188 (forallContained!2607 (getKeysList!491 (t!357834 (toList!4403 lt!1713092))) lambda!176041 (_1!28907 (h!56627 (toList!4403 lt!1713092)))))))

(declare-fun Unit!98440 () Unit!98176)

(assert (=> b!4539590 (= e!2828823 Unit!98440)))

(assert (= (and d!1403077 c!775375) b!4539584))

(assert (= (and d!1403077 (not c!775375)) b!4539582))

(assert (= (and b!4539584 c!775374) b!4539586))

(assert (= (and b!4539584 (not c!775374)) b!4539583))

(assert (= (and b!4539584 c!775376) b!4539590))

(assert (= (and b!4539584 (not c!775376)) b!4539587))

(assert (= (and d!1403077 res!1891766) b!4539589))

(assert (= (and b!4539589 res!1891768) b!4539585))

(assert (= (and b!4539585 res!1891767) b!4539588))

(declare-fun m!5305367 () Bool)

(assert (=> d!1403077 m!5305367))

(assert (=> d!1403077 m!5303789))

(declare-fun m!5305369 () Bool)

(assert (=> b!4539584 m!5305369))

(assert (=> b!4539584 m!5305369))

(declare-fun m!5305371 () Bool)

(assert (=> b!4539584 m!5305371))

(declare-fun m!5305373 () Bool)

(assert (=> b!4539584 m!5305373))

(declare-fun m!5305377 () Bool)

(assert (=> b!4539584 m!5305377))

(declare-fun m!5305381 () Bool)

(assert (=> b!4539584 m!5305381))

(declare-fun m!5305383 () Bool)

(assert (=> b!4539589 m!5305383))

(assert (=> b!4539589 m!5304241))

(assert (=> b!4539590 m!5305369))

(assert (=> b!4539590 m!5305369))

(declare-fun m!5305385 () Bool)

(assert (=> b!4539590 m!5305385))

(declare-fun m!5305387 () Bool)

(assert (=> b!4539585 m!5305387))

(declare-fun m!5305389 () Bool)

(assert (=> b!4539588 m!5305389))

(declare-fun m!5305391 () Bool)

(assert (=> b!4539588 m!5305391))

(assert (=> b!4539588 m!5305391))

(declare-fun m!5305393 () Bool)

(assert (=> b!4539588 m!5305393))

(assert (=> b!4538318 d!1403077))

(assert (=> d!1402407 d!1403037))

(assert (=> d!1402407 d!1402511))

(declare-fun d!1403085 () Bool)

(assert (=> d!1403085 (= (invariantList!1043 (toList!4403 lt!1713322)) (noDuplicatedKeys!276 (toList!4403 lt!1713322)))))

(declare-fun bs!876589 () Bool)

(assert (= bs!876589 d!1403085))

(declare-fun m!5305399 () Bool)

(assert (=> bs!876589 m!5305399))

(assert (=> d!1402275 d!1403085))

(declare-fun d!1403089 () Bool)

(declare-fun res!1891776 () Bool)

(declare-fun e!2828833 () Bool)

(assert (=> d!1403089 (=> res!1891776 e!2828833)))

(assert (=> d!1403089 (= res!1891776 ((_ is Nil!50749) (toList!4404 lm!1477)))))

(assert (=> d!1403089 (= (forall!10341 (toList!4404 lm!1477) lambda!175846) e!2828833)))

(declare-fun b!4539598 () Bool)

(declare-fun e!2828834 () Bool)

(assert (=> b!4539598 (= e!2828833 e!2828834)))

(declare-fun res!1891777 () Bool)

(assert (=> b!4539598 (=> (not res!1891777) (not e!2828834))))

(assert (=> b!4539598 (= res!1891777 (dynLambda!21211 lambda!175846 (h!56628 (toList!4404 lm!1477))))))

(declare-fun b!4539599 () Bool)

(assert (=> b!4539599 (= e!2828834 (forall!10341 (t!357835 (toList!4404 lm!1477)) lambda!175846))))

(assert (= (and d!1403089 (not res!1891776)) b!4539598))

(assert (= (and b!4539598 res!1891777) b!4539599))

(declare-fun b_lambda!157813 () Bool)

(assert (=> (not b_lambda!157813) (not b!4539598)))

(declare-fun m!5305407 () Bool)

(assert (=> b!4539598 m!5305407))

(declare-fun m!5305409 () Bool)

(assert (=> b!4539599 m!5305409))

(assert (=> d!1402275 d!1403089))

(declare-fun d!1403093 () Bool)

(declare-fun lt!1714218 () Bool)

(assert (=> d!1403093 (= lt!1714218 (select (content!8435 e!2828199) key!3287))))

(declare-fun e!2828838 () Bool)

(assert (=> d!1403093 (= lt!1714218 e!2828838)))

(declare-fun res!1891781 () Bool)

(assert (=> d!1403093 (=> (not res!1891781) (not e!2828838))))

(assert (=> d!1403093 (= res!1891781 ((_ is Cons!50751) e!2828199))))

(assert (=> d!1403093 (= (contains!13540 e!2828199 key!3287) lt!1714218)))

(declare-fun b!4539605 () Bool)

(declare-fun e!2828839 () Bool)

(assert (=> b!4539605 (= e!2828838 e!2828839)))

(declare-fun res!1891782 () Bool)

(assert (=> b!4539605 (=> res!1891782 e!2828839)))

(assert (=> b!4539605 (= res!1891782 (= (h!56632 e!2828199) key!3287))))

(declare-fun b!4539606 () Bool)

(assert (=> b!4539606 (= e!2828839 (contains!13540 (t!357837 e!2828199) key!3287))))

(assert (= (and d!1403093 res!1891781) b!4539605))

(assert (= (and b!4539605 (not res!1891782)) b!4539606))

(declare-fun m!5305411 () Bool)

(assert (=> d!1403093 m!5305411))

(declare-fun m!5305413 () Bool)

(assert (=> d!1403093 m!5305413))

(declare-fun m!5305415 () Bool)

(assert (=> b!4539606 m!5305415))

(assert (=> bm!316451 d!1403093))

(assert (=> b!4538589 d!1402713))

(assert (=> b!4538589 d!1402517))

(assert (=> b!4538314 d!1402705))

(assert (=> b!4538314 d!1402709))

(declare-fun d!1403095 () Bool)

(assert (=> d!1403095 (= (isEmpty!28744 (toList!4404 lm!1477)) ((_ is Nil!50749) (toList!4404 lm!1477)))))

(assert (=> d!1402315 d!1403095))

(assert (=> b!4538612 d!1402635))

(assert (=> b!4538612 d!1402637))

(declare-fun d!1403097 () Bool)

(declare-fun c!775378 () Bool)

(assert (=> d!1403097 (= c!775378 (and ((_ is Cons!50749) (toList!4404 lt!1713439)) (= (_1!28908 (h!56628 (toList!4404 lt!1713439))) (_1!28908 lt!1713120))))))

(declare-fun e!2828840 () Option!11201)

(assert (=> d!1403097 (= (getValueByKey!1145 (toList!4404 lt!1713439) (_1!28908 lt!1713120)) e!2828840)))

(declare-fun b!4539607 () Bool)

(assert (=> b!4539607 (= e!2828840 (Some!11200 (_2!28908 (h!56628 (toList!4404 lt!1713439)))))))

(declare-fun b!4539609 () Bool)

(declare-fun e!2828841 () Option!11201)

(assert (=> b!4539609 (= e!2828841 (getValueByKey!1145 (t!357835 (toList!4404 lt!1713439)) (_1!28908 lt!1713120)))))

(declare-fun b!4539608 () Bool)

(assert (=> b!4539608 (= e!2828840 e!2828841)))

(declare-fun c!775379 () Bool)

(assert (=> b!4539608 (= c!775379 (and ((_ is Cons!50749) (toList!4404 lt!1713439)) (not (= (_1!28908 (h!56628 (toList!4404 lt!1713439))) (_1!28908 lt!1713120)))))))

(declare-fun b!4539610 () Bool)

(assert (=> b!4539610 (= e!2828841 None!11200)))

(assert (= (and d!1403097 c!775378) b!4539607))

(assert (= (and d!1403097 (not c!775378)) b!4539608))

(assert (= (and b!4539608 c!775379) b!4539609))

(assert (= (and b!4539608 (not c!775379)) b!4539610))

(declare-fun m!5305417 () Bool)

(assert (=> b!4539609 m!5305417))

(assert (=> b!4538422 d!1403097))

(declare-fun d!1403099 () Bool)

(declare-fun c!775380 () Bool)

(assert (=> d!1403099 (= c!775380 (and ((_ is Cons!50749) (toList!4404 lt!1713546)) (= (_1!28908 (h!56628 (toList!4404 lt!1713546))) (_1!28908 lt!1713120))))))

(declare-fun e!2828842 () Option!11201)

(assert (=> d!1403099 (= (getValueByKey!1145 (toList!4404 lt!1713546) (_1!28908 lt!1713120)) e!2828842)))

(declare-fun b!4539611 () Bool)

(assert (=> b!4539611 (= e!2828842 (Some!11200 (_2!28908 (h!56628 (toList!4404 lt!1713546)))))))

(declare-fun b!4539613 () Bool)

(declare-fun e!2828843 () Option!11201)

(assert (=> b!4539613 (= e!2828843 (getValueByKey!1145 (t!357835 (toList!4404 lt!1713546)) (_1!28908 lt!1713120)))))

(declare-fun b!4539612 () Bool)

(assert (=> b!4539612 (= e!2828842 e!2828843)))

(declare-fun c!775381 () Bool)

(assert (=> b!4539612 (= c!775381 (and ((_ is Cons!50749) (toList!4404 lt!1713546)) (not (= (_1!28908 (h!56628 (toList!4404 lt!1713546))) (_1!28908 lt!1713120)))))))

(declare-fun b!4539614 () Bool)

(assert (=> b!4539614 (= e!2828843 None!11200)))

(assert (= (and d!1403099 c!775380) b!4539611))

(assert (= (and d!1403099 (not c!775380)) b!4539612))

(assert (= (and b!4539612 c!775381) b!4539613))

(assert (= (and b!4539612 (not c!775381)) b!4539614))

(declare-fun m!5305419 () Bool)

(assert (=> b!4539613 m!5305419))

(assert (=> b!4538574 d!1403099))

(declare-fun d!1403101 () Bool)

(declare-fun choose!29896 (Hashable!5593 K!12135) (_ BitVec 64))

(assert (=> d!1403101 (= (hash!2914 hashF!1107 key!3287) (choose!29896 hashF!1107 key!3287))))

(declare-fun bs!876608 () Bool)

(assert (= bs!876608 d!1403101))

(declare-fun m!5305421 () Bool)

(assert (=> bs!876608 m!5305421))

(assert (=> d!1402277 d!1403101))

(assert (=> d!1402373 d!1403035))

(assert (=> d!1402373 d!1402641))

(declare-fun d!1403103 () Bool)

(declare-fun res!1891783 () Bool)

(declare-fun e!2828844 () Bool)

(assert (=> d!1403103 (=> res!1891783 e!2828844)))

(assert (=> d!1403103 (= res!1891783 ((_ is Nil!50748) (ite c!775102 (toList!4403 lt!1713095) (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> d!1403103 (= (forall!10343 (ite c!775102 (toList!4403 lt!1713095) (t!357834 (_2!28908 lt!1713093))) (ite c!775102 lambda!175883 lambda!175886)) e!2828844)))

(declare-fun b!4539615 () Bool)

(declare-fun e!2828845 () Bool)

(assert (=> b!4539615 (= e!2828844 e!2828845)))

(declare-fun res!1891784 () Bool)

(assert (=> b!4539615 (=> (not res!1891784) (not e!2828845))))

(assert (=> b!4539615 (= res!1891784 (dynLambda!21212 (ite c!775102 lambda!175883 lambda!175886) (h!56627 (ite c!775102 (toList!4403 lt!1713095) (t!357834 (_2!28908 lt!1713093))))))))

(declare-fun b!4539616 () Bool)

(assert (=> b!4539616 (= e!2828845 (forall!10343 (t!357834 (ite c!775102 (toList!4403 lt!1713095) (t!357834 (_2!28908 lt!1713093)))) (ite c!775102 lambda!175883 lambda!175886)))))

(assert (= (and d!1403103 (not res!1891783)) b!4539615))

(assert (= (and b!4539615 res!1891784) b!4539616))

(declare-fun b_lambda!157815 () Bool)

(assert (=> (not b_lambda!157815) (not b!4539615)))

(declare-fun m!5305423 () Bool)

(assert (=> b!4539615 m!5305423))

(declare-fun m!5305425 () Bool)

(assert (=> b!4539616 m!5305425))

(assert (=> bm!316449 d!1403103))

(declare-fun b!4539617 () Bool)

(declare-fun e!2828846 () Bool)

(assert (=> b!4539617 (= e!2828846 (not (contains!13540 (keys!17658 lt!1713382) key!3287)))))

(declare-fun bm!316546 () Bool)

(declare-fun call!316551 () Bool)

(declare-fun e!2828851 () List!50875)

(assert (=> bm!316546 (= call!316551 (contains!13540 e!2828851 key!3287))))

(declare-fun c!775382 () Bool)

(declare-fun c!775384 () Bool)

(assert (=> bm!316546 (= c!775382 c!775384)))

(declare-fun b!4539618 () Bool)

(declare-fun e!2828849 () Bool)

(assert (=> b!4539618 (= e!2828849 (contains!13540 (keys!17658 lt!1713382) key!3287))))

(declare-fun b!4539619 () Bool)

(declare-fun e!2828847 () Bool)

(assert (=> b!4539619 (= e!2828847 e!2828849)))

(declare-fun res!1891787 () Bool)

(assert (=> b!4539619 (=> (not res!1891787) (not e!2828849))))

(assert (=> b!4539619 (= res!1891787 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713382) key!3287)))))

(declare-fun b!4539620 () Bool)

(declare-fun e!2828850 () Unit!98176)

(declare-fun Unit!98441 () Unit!98176)

(assert (=> b!4539620 (= e!2828850 Unit!98441)))

(declare-fun b!4539621 () Bool)

(declare-fun e!2828848 () Unit!98176)

(assert (=> b!4539621 (= e!2828848 e!2828850)))

(declare-fun c!775383 () Bool)

(assert (=> b!4539621 (= c!775383 call!316551)))

(declare-fun d!1403105 () Bool)

(assert (=> d!1403105 e!2828847))

(declare-fun res!1891786 () Bool)

(assert (=> d!1403105 (=> res!1891786 e!2828847)))

(assert (=> d!1403105 (= res!1891786 e!2828846)))

(declare-fun res!1891785 () Bool)

(assert (=> d!1403105 (=> (not res!1891785) (not e!2828846))))

(declare-fun lt!1714220 () Bool)

(assert (=> d!1403105 (= res!1891785 (not lt!1714220))))

(declare-fun lt!1714222 () Bool)

(assert (=> d!1403105 (= lt!1714220 lt!1714222)))

(declare-fun lt!1714221 () Unit!98176)

(assert (=> d!1403105 (= lt!1714221 e!2828848)))

(assert (=> d!1403105 (= c!775384 lt!1714222)))

(assert (=> d!1403105 (= lt!1714222 (containsKey!1872 (toList!4403 lt!1713382) key!3287))))

(assert (=> d!1403105 (= (contains!13538 lt!1713382 key!3287) lt!1714220)))

(declare-fun b!4539622 () Bool)

(assert (=> b!4539622 (= e!2828851 (getKeysList!491 (toList!4403 lt!1713382)))))

(declare-fun b!4539623 () Bool)

(assert (=> b!4539623 false))

(declare-fun lt!1714226 () Unit!98176)

(declare-fun lt!1714223 () Unit!98176)

(assert (=> b!4539623 (= lt!1714226 lt!1714223)))

(assert (=> b!4539623 (containsKey!1872 (toList!4403 lt!1713382) key!3287)))

(assert (=> b!4539623 (= lt!1714223 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713382) key!3287))))

(declare-fun Unit!98442 () Unit!98176)

(assert (=> b!4539623 (= e!2828850 Unit!98442)))

(declare-fun b!4539624 () Bool)

(declare-fun lt!1714224 () Unit!98176)

(assert (=> b!4539624 (= e!2828848 lt!1714224)))

(declare-fun lt!1714225 () Unit!98176)

(assert (=> b!4539624 (= lt!1714225 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713382) key!3287))))

(assert (=> b!4539624 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713382) key!3287))))

(declare-fun lt!1714219 () Unit!98176)

(assert (=> b!4539624 (= lt!1714219 lt!1714225)))

(assert (=> b!4539624 (= lt!1714224 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713382) key!3287))))

(assert (=> b!4539624 call!316551))

(declare-fun b!4539625 () Bool)

(assert (=> b!4539625 (= e!2828851 (keys!17658 lt!1713382))))

(assert (= (and d!1403105 c!775384) b!4539624))

(assert (= (and d!1403105 (not c!775384)) b!4539621))

(assert (= (and b!4539621 c!775383) b!4539623))

(assert (= (and b!4539621 (not c!775383)) b!4539620))

(assert (= (or b!4539624 b!4539621) bm!316546))

(assert (= (and bm!316546 c!775382) b!4539622))

(assert (= (and bm!316546 (not c!775382)) b!4539625))

(assert (= (and d!1403105 res!1891785) b!4539617))

(assert (= (and d!1403105 (not res!1891786)) b!4539619))

(assert (= (and b!4539619 res!1891787) b!4539618))

(declare-fun m!5305427 () Bool)

(assert (=> bm!316546 m!5305427))

(declare-fun m!5305429 () Bool)

(assert (=> b!4539619 m!5305429))

(assert (=> b!4539619 m!5305429))

(declare-fun m!5305431 () Bool)

(assert (=> b!4539619 m!5305431))

(declare-fun m!5305433 () Bool)

(assert (=> d!1403105 m!5305433))

(assert (=> b!4539617 m!5302991))

(assert (=> b!4539617 m!5302991))

(declare-fun m!5305435 () Bool)

(assert (=> b!4539617 m!5305435))

(assert (=> b!4539625 m!5302991))

(assert (=> b!4539618 m!5302991))

(assert (=> b!4539618 m!5302991))

(assert (=> b!4539618 m!5305435))

(assert (=> b!4539623 m!5305433))

(declare-fun m!5305437 () Bool)

(assert (=> b!4539623 m!5305437))

(declare-fun m!5305439 () Bool)

(assert (=> b!4539624 m!5305439))

(assert (=> b!4539624 m!5305429))

(assert (=> b!4539624 m!5305429))

(assert (=> b!4539624 m!5305431))

(declare-fun m!5305441 () Bool)

(assert (=> b!4539624 m!5305441))

(assert (=> b!4539622 m!5303581))

(assert (=> d!1402327 d!1403105))

(declare-fun b!4539626 () Bool)

(declare-fun e!2828853 () Unit!98176)

(declare-fun Unit!98443 () Unit!98176)

(assert (=> b!4539626 (= e!2828853 Unit!98443)))

(declare-fun b!4539627 () Bool)

(declare-fun e!2828856 () List!50872)

(assert (=> b!4539627 (= e!2828856 (t!357834 (toList!4403 lt!1713103)))))

(declare-fun c!775386 () Bool)

(declare-fun call!316553 () Bool)

(assert (=> b!4539627 (= c!775386 call!316553)))

(declare-fun lt!1714227 () Unit!98176)

(declare-fun e!2828852 () Unit!98176)

(assert (=> b!4539627 (= lt!1714227 e!2828852)))

(declare-fun b!4539628 () Bool)

(declare-fun res!1891789 () Bool)

(declare-fun e!2828857 () Bool)

(assert (=> b!4539628 (=> (not res!1891789) (not e!2828857))))

(declare-fun lt!1714228 () List!50872)

(assert (=> b!4539628 (= res!1891789 (= (content!8435 (getKeysList!491 lt!1714228)) ((_ map and) (content!8435 (getKeysList!491 (toList!4403 lt!1713103))) ((_ map not) (store ((as const (Array K!12135 Bool)) false) key!3287 true)))))))

(declare-fun b!4539629 () Bool)

(declare-fun e!2828854 () Unit!98176)

(declare-fun Unit!98444 () Unit!98176)

(assert (=> b!4539629 (= e!2828854 Unit!98444)))

(declare-fun lt!1714229 () Unit!98176)

(assert (=> b!4539629 (= lt!1714229 (lemmaInGetKeysListThenContainsKey!490 (t!357834 (toList!4403 lt!1713103)) (_1!28907 (h!56627 (toList!4403 lt!1713103)))))))

(assert (=> b!4539629 call!316553))

(declare-fun lt!1714232 () Unit!98176)

(assert (=> b!4539629 (= lt!1714232 lt!1714229)))

(assert (=> b!4539629 false))

(declare-fun e!2828855 () Bool)

(declare-fun call!316556 () (InoxSet tuple2!51226))

(declare-fun b!4539630 () Bool)

(declare-fun call!316555 () (InoxSet tuple2!51226))

(assert (=> b!4539630 (= e!2828855 (= call!316555 ((_ map and) call!316556 ((_ map not) (store ((as const (Array tuple2!51226 Bool)) false) (tuple2!51227 key!3287 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287))) true)))))))

(assert (=> b!4539630 (containsKey!1872 (toList!4403 lt!1713103) key!3287)))

(declare-fun lt!1714240 () Unit!98176)

(assert (=> b!4539630 (= lt!1714240 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713103) key!3287))))

(assert (=> b!4539630 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287))))

(declare-fun lt!1714230 () Unit!98176)

(assert (=> b!4539630 (= lt!1714230 lt!1714240)))

(declare-fun d!1403107 () Bool)

(assert (=> d!1403107 e!2828857))

(declare-fun res!1891790 () Bool)

(assert (=> d!1403107 (=> (not res!1891790) (not e!2828857))))

(assert (=> d!1403107 (= res!1891790 (invariantList!1043 lt!1714228))))

(assert (=> d!1403107 (= lt!1714228 e!2828856)))

(declare-fun c!775392 () Bool)

(assert (=> d!1403107 (= c!775392 (and ((_ is Cons!50748) (toList!4403 lt!1713103)) (= (_1!28907 (h!56627 (toList!4403 lt!1713103))) key!3287)))))

(assert (=> d!1403107 (invariantList!1043 (toList!4403 lt!1713103))))

(assert (=> d!1403107 (= (removePresrvNoDuplicatedKeys!167 (toList!4403 lt!1713103) key!3287) lt!1714228)))

(declare-fun bm!316547 () Bool)

(assert (=> bm!316547 (= call!316553 (containsKey!1872 (ite c!775392 (toList!4403 lt!1713103) (t!357834 (toList!4403 lt!1713103))) (ite c!775392 key!3287 (_1!28907 (h!56627 (toList!4403 lt!1713103))))))))

(declare-fun b!4539631 () Bool)

(declare-fun e!2828859 () List!50872)

(assert (=> b!4539631 (= e!2828856 e!2828859)))

(declare-fun c!775388 () Bool)

(assert (=> b!4539631 (= c!775388 (and ((_ is Cons!50748) (toList!4403 lt!1713103)) (not (= (_1!28907 (h!56627 (toList!4403 lt!1713103))) key!3287))))))

(declare-fun b!4539632 () Bool)

(assert (=> b!4539632 (= e!2828859 Nil!50748)))

(declare-fun b!4539633 () Bool)

(declare-fun res!1891788 () Bool)

(assert (=> b!4539633 (=> (not res!1891788) (not e!2828857))))

(assert (=> b!4539633 (= res!1891788 (not (containsKey!1872 lt!1714228 key!3287)))))

(declare-fun bm!316548 () Bool)

(assert (=> bm!316548 (= call!316555 (content!8434 lt!1714228))))

(declare-fun b!4539634 () Bool)

(declare-fun e!2828858 () List!50872)

(assert (=> b!4539634 (= e!2828858 (t!357834 (toList!4403 lt!1713103)))))

(declare-fun bm!316549 () Bool)

(declare-fun call!316557 () (InoxSet tuple2!51226))

(assert (=> bm!316549 (= call!316557 (content!8434 (toList!4403 lt!1713103)))))

(declare-fun b!4539635 () Bool)

(declare-fun Unit!98445 () Unit!98176)

(assert (=> b!4539635 (= e!2828854 Unit!98445)))

(declare-fun b!4539636 () Bool)

(declare-fun e!2828860 () Unit!98176)

(declare-fun Unit!98446 () Unit!98176)

(assert (=> b!4539636 (= e!2828860 Unit!98446)))

(declare-fun lt!1714238 () List!50872)

(assert (=> b!4539636 (= lt!1714238 (removePresrvNoDuplicatedKeys!167 (t!357834 (toList!4403 lt!1713103)) key!3287))))

(declare-fun lt!1714242 () Unit!98176)

(assert (=> b!4539636 (= lt!1714242 (lemmaInListThenGetKeysListContains!487 lt!1714238 (_1!28907 (h!56627 (toList!4403 lt!1713103)))))))

(assert (=> b!4539636 (contains!13540 (getKeysList!491 lt!1714238) (_1!28907 (h!56627 (toList!4403 lt!1713103))))))

(declare-fun lt!1714243 () Unit!98176)

(assert (=> b!4539636 (= lt!1714243 lt!1714242)))

(assert (=> b!4539636 false))

(declare-fun bm!316550 () Bool)

(declare-fun call!316554 () Bool)

(declare-fun lt!1714233 () K!12135)

(assert (=> bm!316550 (= call!316554 (containsKey!1872 e!2828858 (ite c!775392 lt!1714233 (_1!28907 (h!56627 (toList!4403 lt!1713103))))))))

(declare-fun c!775385 () Bool)

(assert (=> bm!316550 (= c!775385 c!775392)))

(declare-fun b!4539637 () Bool)

(declare-fun call!316552 () (InoxSet tuple2!51226))

(assert (=> b!4539637 (= call!316552 call!316557)))

(declare-fun Unit!98447 () Unit!98176)

(assert (=> b!4539637 (= e!2828852 Unit!98447)))

(declare-fun bm!316551 () Bool)

(assert (=> bm!316551 (= call!316556 (content!8434 (toList!4403 lt!1713103)))))

(declare-fun b!4539638 () Bool)

(assert (=> b!4539638 (= e!2828855 (= call!316555 call!316556))))

(declare-fun b!4539639 () Bool)

(declare-fun Unit!98448 () Unit!98176)

(assert (=> b!4539639 (= e!2828860 Unit!98448)))

(declare-fun b!4539640 () Bool)

(assert (=> b!4539640 (= e!2828857 e!2828855)))

(declare-fun c!775387 () Bool)

(assert (=> b!4539640 (= c!775387 (containsKey!1872 (toList!4403 lt!1713103) key!3287))))

(declare-fun b!4539641 () Bool)

(assert (=> b!4539641 (= e!2828858 (removePresrvNoDuplicatedKeys!167 (t!357834 (toList!4403 lt!1713103)) key!3287))))

(declare-fun b!4539642 () Bool)

(declare-fun lt!1714234 () Unit!98176)

(assert (=> b!4539642 (= lt!1714234 e!2828860)))

(declare-fun c!775390 () Bool)

(assert (=> b!4539642 (= c!775390 call!316554)))

(declare-fun lt!1714235 () Unit!98176)

(assert (=> b!4539642 (= lt!1714235 e!2828854)))

(declare-fun c!775389 () Bool)

(assert (=> b!4539642 (= c!775389 (contains!13540 (getKeysList!491 (t!357834 (toList!4403 lt!1713103))) (_1!28907 (h!56627 (toList!4403 lt!1713103)))))))

(declare-fun lt!1714237 () List!50872)

(assert (=> b!4539642 (= lt!1714237 ($colon$colon!964 (removePresrvNoDuplicatedKeys!167 (t!357834 (toList!4403 lt!1713103)) key!3287) (h!56627 (toList!4403 lt!1713103))))))

(assert (=> b!4539642 (= e!2828859 lt!1714237)))

(declare-fun b!4539643 () Bool)

(assert (=> b!4539643 (= call!316552 ((_ map and) call!316557 ((_ map not) (store ((as const (Array tuple2!51226 Bool)) false) (tuple2!51227 key!3287 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287))) true))))))

(declare-fun lt!1714236 () Unit!98176)

(assert (=> b!4539643 (= lt!1714236 e!2828853)))

(declare-fun c!775391 () Bool)

(assert (=> b!4539643 (= c!775391 (contains!13542 (t!357834 (toList!4403 lt!1713103)) (tuple2!51227 key!3287 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287)))))))

(declare-fun Unit!98449 () Unit!98176)

(assert (=> b!4539643 (= e!2828852 Unit!98449)))

(declare-fun b!4539644 () Bool)

(declare-fun Unit!98450 () Unit!98176)

(assert (=> b!4539644 (= e!2828853 Unit!98450)))

(declare-fun lt!1714231 () V!12381)

(assert (=> b!4539644 (= lt!1714231 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287)))))

(assert (=> b!4539644 (= lt!1714233 key!3287)))

(declare-fun lt!1714244 () K!12135)

(assert (=> b!4539644 (= lt!1714244 key!3287)))

(declare-fun lt!1714239 () Unit!98176)

(assert (=> b!4539644 (= lt!1714239 (lemmaContainsTupleThenContainsKey!76 (t!357834 (toList!4403 lt!1713103)) lt!1714233 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713103) key!3287))))))

(assert (=> b!4539644 call!316554))

(declare-fun lt!1714241 () Unit!98176)

(assert (=> b!4539644 (= lt!1714241 lt!1714239)))

(assert (=> b!4539644 false))

(declare-fun bm!316552 () Bool)

(assert (=> bm!316552 (= call!316552 (content!8434 (t!357834 (toList!4403 lt!1713103))))))

(assert (= (and d!1403107 c!775392) b!4539627))

(assert (= (and d!1403107 (not c!775392)) b!4539631))

(assert (= (and b!4539627 c!775386) b!4539643))

(assert (= (and b!4539627 (not c!775386)) b!4539637))

(assert (= (and b!4539643 c!775391) b!4539644))

(assert (= (and b!4539643 (not c!775391)) b!4539626))

(assert (= (or b!4539643 b!4539637) bm!316552))

(assert (= (or b!4539643 b!4539637) bm!316549))

(assert (= (and b!4539631 c!775388) b!4539642))

(assert (= (and b!4539631 (not c!775388)) b!4539632))

(assert (= (and b!4539642 c!775389) b!4539629))

(assert (= (and b!4539642 (not c!775389)) b!4539635))

(assert (= (and b!4539642 c!775390) b!4539636))

(assert (= (and b!4539642 (not c!775390)) b!4539639))

(assert (= (or b!4539627 b!4539629) bm!316547))

(assert (= (or b!4539644 b!4539642) bm!316550))

(assert (= (and bm!316550 c!775385) b!4539634))

(assert (= (and bm!316550 (not c!775385)) b!4539641))

(assert (= (and d!1403107 res!1891790) b!4539633))

(assert (= (and b!4539633 res!1891788) b!4539628))

(assert (= (and b!4539628 res!1891789) b!4539640))

(assert (= (and b!4539640 c!775387) b!4539630))

(assert (= (and b!4539640 (not c!775387)) b!4539638))

(assert (= (or b!4539630 b!4539638) bm!316548))

(assert (= (or b!4539630 b!4539638) bm!316551))

(assert (=> b!4539644 m!5303409))

(assert (=> b!4539644 m!5303409))

(declare-fun m!5305443 () Bool)

(assert (=> b!4539644 m!5305443))

(assert (=> b!4539644 m!5305443))

(declare-fun m!5305445 () Bool)

(assert (=> b!4539644 m!5305445))

(declare-fun m!5305447 () Bool)

(assert (=> bm!316552 m!5305447))

(declare-fun m!5305449 () Bool)

(assert (=> b!4539641 m!5305449))

(declare-fun m!5305451 () Bool)

(assert (=> b!4539633 m!5305451))

(assert (=> b!4539636 m!5305449))

(declare-fun m!5305453 () Bool)

(assert (=> b!4539636 m!5305453))

(declare-fun m!5305455 () Bool)

(assert (=> b!4539636 m!5305455))

(assert (=> b!4539636 m!5305455))

(declare-fun m!5305457 () Bool)

(assert (=> b!4539636 m!5305457))

(declare-fun m!5305459 () Bool)

(assert (=> bm!316549 m!5305459))

(declare-fun m!5305461 () Bool)

(assert (=> bm!316550 m!5305461))

(assert (=> b!4539630 m!5303409))

(assert (=> b!4539630 m!5303409))

(assert (=> b!4539630 m!5303411))

(declare-fun m!5305463 () Bool)

(assert (=> b!4539630 m!5305463))

(assert (=> b!4539630 m!5303413))

(assert (=> b!4539630 m!5303409))

(assert (=> b!4539630 m!5305443))

(assert (=> b!4539630 m!5303419))

(assert (=> b!4539643 m!5303409))

(assert (=> b!4539643 m!5303409))

(assert (=> b!4539643 m!5305443))

(assert (=> b!4539643 m!5305463))

(declare-fun m!5305465 () Bool)

(assert (=> b!4539643 m!5305465))

(declare-fun m!5305467 () Bool)

(assert (=> bm!316547 m!5305467))

(declare-fun m!5305469 () Bool)

(assert (=> d!1403107 m!5305469))

(assert (=> d!1403107 m!5303801))

(declare-fun m!5305471 () Bool)

(assert (=> bm!316548 m!5305471))

(assert (=> b!4539642 m!5305333))

(assert (=> b!4539642 m!5305333))

(assert (=> b!4539642 m!5305335))

(assert (=> b!4539642 m!5305449))

(assert (=> b!4539642 m!5305449))

(declare-fun m!5305473 () Bool)

(assert (=> b!4539642 m!5305473))

(assert (=> bm!316551 m!5305459))

(assert (=> b!4539640 m!5303413))

(declare-fun m!5305475 () Bool)

(assert (=> b!4539629 m!5305475))

(declare-fun m!5305477 () Bool)

(assert (=> b!4539628 m!5305477))

(assert (=> b!4539628 m!5302995))

(assert (=> b!4539628 m!5303423))

(assert (=> b!4539628 m!5305477))

(declare-fun m!5305479 () Bool)

(assert (=> b!4539628 m!5305479))

(assert (=> b!4539628 m!5303423))

(declare-fun m!5305481 () Bool)

(assert (=> b!4539628 m!5305481))

(assert (=> d!1402327 d!1403107))

(declare-fun lt!1714245 () Bool)

(declare-fun d!1403109 () Bool)

(assert (=> d!1403109 (= lt!1714245 (select (content!8434 (_2!28908 (h!56628 (toList!4404 lm!1477)))) (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))))))

(declare-fun e!2828861 () Bool)

(assert (=> d!1403109 (= lt!1714245 e!2828861)))

(declare-fun res!1891792 () Bool)

(assert (=> d!1403109 (=> (not res!1891792) (not e!2828861))))

(assert (=> d!1403109 (= res!1891792 ((_ is Cons!50748) (_2!28908 (h!56628 (toList!4404 lm!1477)))))))

(assert (=> d!1403109 (= (contains!13542 (_2!28908 (h!56628 (toList!4404 lm!1477))) (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))) lt!1714245)))

(declare-fun b!4539645 () Bool)

(declare-fun e!2828862 () Bool)

(assert (=> b!4539645 (= e!2828861 e!2828862)))

(declare-fun res!1891791 () Bool)

(assert (=> b!4539645 (=> res!1891791 e!2828862)))

(assert (=> b!4539645 (= res!1891791 (= (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477)))) (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))))))

(declare-fun b!4539646 () Bool)

(assert (=> b!4539646 (= e!2828862 (contains!13542 (t!357834 (_2!28908 (h!56628 (toList!4404 lm!1477)))) (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))))))

(assert (= (and d!1403109 res!1891792) b!4539645))

(assert (= (and b!4539645 (not res!1891791)) b!4539646))

(declare-fun m!5305483 () Bool)

(assert (=> d!1403109 m!5305483))

(declare-fun m!5305485 () Bool)

(assert (=> d!1403109 m!5305485))

(declare-fun m!5305487 () Bool)

(assert (=> b!4539646 m!5305487))

(assert (=> b!4538488 d!1403109))

(declare-fun d!1403111 () Bool)

(declare-fun e!2828864 () Bool)

(assert (=> d!1403111 e!2828864))

(declare-fun res!1891793 () Bool)

(assert (=> d!1403111 (=> res!1891793 e!2828864)))

(declare-fun lt!1714248 () Bool)

(assert (=> d!1403111 (= res!1891793 (not lt!1714248))))

(declare-fun lt!1714246 () Bool)

(assert (=> d!1403111 (= lt!1714248 lt!1714246)))

(declare-fun lt!1714247 () Unit!98176)

(declare-fun e!2828863 () Unit!98176)

(assert (=> d!1403111 (= lt!1714247 e!2828863)))

(declare-fun c!775393 () Bool)

(assert (=> d!1403111 (= c!775393 lt!1714246)))

(assert (=> d!1403111 (= lt!1714246 (containsKey!1874 (toList!4404 lt!1713439) (_1!28908 lt!1713120)))))

(assert (=> d!1403111 (= (contains!13539 lt!1713439 (_1!28908 lt!1713120)) lt!1714248)))

(declare-fun b!4539647 () Bool)

(declare-fun lt!1714249 () Unit!98176)

(assert (=> b!4539647 (= e!2828863 lt!1714249)))

(assert (=> b!4539647 (= lt!1714249 (lemmaContainsKeyImpliesGetValueByKeyDefined!1049 (toList!4404 lt!1713439) (_1!28908 lt!1713120)))))

(assert (=> b!4539647 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713439) (_1!28908 lt!1713120)))))

(declare-fun b!4539648 () Bool)

(declare-fun Unit!98451 () Unit!98176)

(assert (=> b!4539648 (= e!2828863 Unit!98451)))

(declare-fun b!4539649 () Bool)

(assert (=> b!4539649 (= e!2828864 (isDefined!8477 (getValueByKey!1145 (toList!4404 lt!1713439) (_1!28908 lt!1713120))))))

(assert (= (and d!1403111 c!775393) b!4539647))

(assert (= (and d!1403111 (not c!775393)) b!4539648))

(assert (= (and d!1403111 (not res!1891793)) b!4539649))

(declare-fun m!5305489 () Bool)

(assert (=> d!1403111 m!5305489))

(declare-fun m!5305491 () Bool)

(assert (=> b!4539647 m!5305491))

(assert (=> b!4539647 m!5303117))

(assert (=> b!4539647 m!5303117))

(declare-fun m!5305493 () Bool)

(assert (=> b!4539647 m!5305493))

(assert (=> b!4539649 m!5303117))

(assert (=> b!4539649 m!5303117))

(assert (=> b!4539649 m!5305493))

(assert (=> d!1402369 d!1403111))

(declare-fun d!1403113 () Bool)

(declare-fun c!775394 () Bool)

(assert (=> d!1403113 (= c!775394 (and ((_ is Cons!50749) lt!1713440) (= (_1!28908 (h!56628 lt!1713440)) (_1!28908 lt!1713120))))))

(declare-fun e!2828865 () Option!11201)

(assert (=> d!1403113 (= (getValueByKey!1145 lt!1713440 (_1!28908 lt!1713120)) e!2828865)))

(declare-fun b!4539650 () Bool)

(assert (=> b!4539650 (= e!2828865 (Some!11200 (_2!28908 (h!56628 lt!1713440))))))

(declare-fun b!4539652 () Bool)

(declare-fun e!2828866 () Option!11201)

(assert (=> b!4539652 (= e!2828866 (getValueByKey!1145 (t!357835 lt!1713440) (_1!28908 lt!1713120)))))

(declare-fun b!4539651 () Bool)

(assert (=> b!4539651 (= e!2828865 e!2828866)))

(declare-fun c!775395 () Bool)

(assert (=> b!4539651 (= c!775395 (and ((_ is Cons!50749) lt!1713440) (not (= (_1!28908 (h!56628 lt!1713440)) (_1!28908 lt!1713120)))))))

(declare-fun b!4539653 () Bool)

(assert (=> b!4539653 (= e!2828866 None!11200)))

(assert (= (and d!1403113 c!775394) b!4539650))

(assert (= (and d!1403113 (not c!775394)) b!4539651))

(assert (= (and b!4539651 c!775395) b!4539652))

(assert (= (and b!4539651 (not c!775395)) b!4539653))

(declare-fun m!5305495 () Bool)

(assert (=> b!4539652 m!5305495))

(assert (=> d!1402369 d!1403113))

(declare-fun d!1403115 () Bool)

(assert (=> d!1403115 (= (getValueByKey!1145 lt!1713440 (_1!28908 lt!1713120)) (Some!11200 (_2!28908 lt!1713120)))))

(declare-fun lt!1714250 () Unit!98176)

(assert (=> d!1403115 (= lt!1714250 (choose!29891 lt!1713440 (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))

(declare-fun e!2828867 () Bool)

(assert (=> d!1403115 e!2828867))

(declare-fun res!1891794 () Bool)

(assert (=> d!1403115 (=> (not res!1891794) (not e!2828867))))

(assert (=> d!1403115 (= res!1891794 (isStrictlySorted!457 lt!1713440))))

(assert (=> d!1403115 (= (lemmaContainsTupThenGetReturnValue!718 lt!1713440 (_1!28908 lt!1713120) (_2!28908 lt!1713120)) lt!1714250)))

(declare-fun b!4539654 () Bool)

(declare-fun res!1891795 () Bool)

(assert (=> b!4539654 (=> (not res!1891795) (not e!2828867))))

(assert (=> b!4539654 (= res!1891795 (containsKey!1874 lt!1713440 (_1!28908 lt!1713120)))))

(declare-fun b!4539655 () Bool)

(assert (=> b!4539655 (= e!2828867 (contains!13537 lt!1713440 (tuple2!51229 (_1!28908 lt!1713120) (_2!28908 lt!1713120))))))

(assert (= (and d!1403115 res!1891794) b!4539654))

(assert (= (and b!4539654 res!1891795) b!4539655))

(assert (=> d!1403115 m!5303111))

(declare-fun m!5305497 () Bool)

(assert (=> d!1403115 m!5305497))

(declare-fun m!5305499 () Bool)

(assert (=> d!1403115 m!5305499))

(declare-fun m!5305501 () Bool)

(assert (=> b!4539654 m!5305501))

(declare-fun m!5305503 () Bool)

(assert (=> b!4539655 m!5305503))

(assert (=> d!1402369 d!1403115))

(declare-fun b!4539656 () Bool)

(declare-fun e!2828868 () List!50873)

(declare-fun call!316559 () List!50873)

(assert (=> b!4539656 (= e!2828868 call!316559)))

(declare-fun d!1403117 () Bool)

(declare-fun e!2828872 () Bool)

(assert (=> d!1403117 e!2828872))

(declare-fun res!1891796 () Bool)

(assert (=> d!1403117 (=> (not res!1891796) (not e!2828872))))

(declare-fun lt!1714251 () List!50873)

(assert (=> d!1403117 (= res!1891796 (isStrictlySorted!457 lt!1714251))))

(declare-fun e!2828869 () List!50873)

(assert (=> d!1403117 (= lt!1714251 e!2828869)))

(declare-fun c!775398 () Bool)

(assert (=> d!1403117 (= c!775398 (and ((_ is Cons!50749) (toList!4404 lt!1713100)) (bvslt (_1!28908 (h!56628 (toList!4404 lt!1713100))) (_1!28908 lt!1713120))))))

(assert (=> d!1403117 (isStrictlySorted!457 (toList!4404 lt!1713100))))

(assert (=> d!1403117 (= (insertStrictlySorted!434 (toList!4404 lt!1713100) (_1!28908 lt!1713120) (_2!28908 lt!1713120)) lt!1714251)))

(declare-fun bm!316553 () Bool)

(declare-fun call!316558 () List!50873)

(assert (=> bm!316553 (= call!316559 call!316558)))

(declare-fun b!4539657 () Bool)

(declare-fun e!2828870 () List!50873)

(assert (=> b!4539657 (= e!2828870 call!316558)))

(declare-fun b!4539658 () Bool)

(assert (=> b!4539658 (= e!2828872 (contains!13537 lt!1714251 (tuple2!51229 (_1!28908 lt!1713120) (_2!28908 lt!1713120))))))

(declare-fun b!4539659 () Bool)

(assert (=> b!4539659 (= e!2828869 e!2828870)))

(declare-fun c!775399 () Bool)

(assert (=> b!4539659 (= c!775399 (and ((_ is Cons!50749) (toList!4404 lt!1713100)) (= (_1!28908 (h!56628 (toList!4404 lt!1713100))) (_1!28908 lt!1713120))))))

(declare-fun b!4539660 () Bool)

(declare-fun e!2828871 () List!50873)

(assert (=> b!4539660 (= e!2828871 (insertStrictlySorted!434 (t!357835 (toList!4404 lt!1713100)) (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))

(declare-fun b!4539661 () Bool)

(declare-fun c!775396 () Bool)

(assert (=> b!4539661 (= e!2828871 (ite c!775399 (t!357835 (toList!4404 lt!1713100)) (ite c!775396 (Cons!50749 (h!56628 (toList!4404 lt!1713100)) (t!357835 (toList!4404 lt!1713100))) Nil!50749)))))

(declare-fun bm!316554 () Bool)

(declare-fun call!316560 () List!50873)

(assert (=> bm!316554 (= call!316558 call!316560)))

(declare-fun bm!316555 () Bool)

(assert (=> bm!316555 (= call!316560 ($colon$colon!965 e!2828871 (ite c!775398 (h!56628 (toList!4404 lt!1713100)) (tuple2!51229 (_1!28908 lt!1713120) (_2!28908 lt!1713120)))))))

(declare-fun c!775397 () Bool)

(assert (=> bm!316555 (= c!775397 c!775398)))

(declare-fun b!4539662 () Bool)

(declare-fun res!1891797 () Bool)

(assert (=> b!4539662 (=> (not res!1891797) (not e!2828872))))

(assert (=> b!4539662 (= res!1891797 (containsKey!1874 lt!1714251 (_1!28908 lt!1713120)))))

(declare-fun b!4539663 () Bool)

(assert (=> b!4539663 (= e!2828869 call!316560)))

(declare-fun b!4539664 () Bool)

(assert (=> b!4539664 (= c!775396 (and ((_ is Cons!50749) (toList!4404 lt!1713100)) (bvsgt (_1!28908 (h!56628 (toList!4404 lt!1713100))) (_1!28908 lt!1713120))))))

(assert (=> b!4539664 (= e!2828870 e!2828868)))

(declare-fun b!4539665 () Bool)

(assert (=> b!4539665 (= e!2828868 call!316559)))

(assert (= (and d!1403117 c!775398) b!4539663))

(assert (= (and d!1403117 (not c!775398)) b!4539659))

(assert (= (and b!4539659 c!775399) b!4539657))

(assert (= (and b!4539659 (not c!775399)) b!4539664))

(assert (= (and b!4539664 c!775396) b!4539665))

(assert (= (and b!4539664 (not c!775396)) b!4539656))

(assert (= (or b!4539665 b!4539656) bm!316553))

(assert (= (or b!4539657 bm!316553) bm!316554))

(assert (= (or b!4539663 bm!316554) bm!316555))

(assert (= (and bm!316555 c!775397) b!4539660))

(assert (= (and bm!316555 (not c!775397)) b!4539661))

(assert (= (and d!1403117 res!1891796) b!4539662))

(assert (= (and b!4539662 res!1891797) b!4539658))

(declare-fun m!5305505 () Bool)

(assert (=> b!4539660 m!5305505))

(declare-fun m!5305507 () Bool)

(assert (=> bm!316555 m!5305507))

(declare-fun m!5305509 () Bool)

(assert (=> d!1403117 m!5305509))

(assert (=> d!1403117 m!5303929))

(declare-fun m!5305511 () Bool)

(assert (=> b!4539658 m!5305511))

(declare-fun m!5305513 () Bool)

(assert (=> b!4539662 m!5305513))

(assert (=> d!1402369 d!1403117))

(declare-fun d!1403119 () Bool)

(declare-fun res!1891798 () Bool)

(declare-fun e!2828873 () Bool)

(assert (=> d!1403119 (=> res!1891798 e!2828873)))

(assert (=> d!1403119 (= res!1891798 ((_ is Nil!50748) (toList!4403 lt!1713121)))))

(assert (=> d!1403119 (= (forall!10343 (toList!4403 lt!1713121) lambda!175836) e!2828873)))

(declare-fun b!4539666 () Bool)

(declare-fun e!2828874 () Bool)

(assert (=> b!4539666 (= e!2828873 e!2828874)))

(declare-fun res!1891799 () Bool)

(assert (=> b!4539666 (=> (not res!1891799) (not e!2828874))))

(assert (=> b!4539666 (= res!1891799 (dynLambda!21212 lambda!175836 (h!56627 (toList!4403 lt!1713121))))))

(declare-fun b!4539667 () Bool)

(assert (=> b!4539667 (= e!2828874 (forall!10343 (t!357834 (toList!4403 lt!1713121)) lambda!175836))))

(assert (= (and d!1403119 (not res!1891798)) b!4539666))

(assert (= (and b!4539666 res!1891799) b!4539667))

(declare-fun b_lambda!157817 () Bool)

(assert (=> (not b_lambda!157817) (not b!4539666)))

(declare-fun m!5305515 () Bool)

(assert (=> b!4539666 m!5305515))

(declare-fun m!5305517 () Bool)

(assert (=> b!4539667 m!5305517))

(assert (=> b!4538248 d!1403119))

(declare-fun b!4539668 () Bool)

(declare-fun e!2828875 () Bool)

(assert (=> b!4539668 (= e!2828875 (not (contains!13540 (keys!17658 lt!1713258) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun bm!316556 () Bool)

(declare-fun call!316561 () Bool)

(declare-fun e!2828880 () List!50875)

(assert (=> bm!316556 (= call!316561 (contains!13540 e!2828880 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun c!775400 () Bool)

(declare-fun c!775402 () Bool)

(assert (=> bm!316556 (= c!775400 c!775402)))

(declare-fun b!4539669 () Bool)

(declare-fun e!2828878 () Bool)

(assert (=> b!4539669 (= e!2828878 (contains!13540 (keys!17658 lt!1713258) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun b!4539670 () Bool)

(declare-fun e!2828876 () Bool)

(assert (=> b!4539670 (= e!2828876 e!2828878)))

(declare-fun res!1891802 () Bool)

(assert (=> b!4539670 (=> (not res!1891802) (not e!2828878))))

(assert (=> b!4539670 (= res!1891802 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713258) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4539671 () Bool)

(declare-fun e!2828879 () Unit!98176)

(declare-fun Unit!98463 () Unit!98176)

(assert (=> b!4539671 (= e!2828879 Unit!98463)))

(declare-fun b!4539672 () Bool)

(declare-fun e!2828877 () Unit!98176)

(assert (=> b!4539672 (= e!2828877 e!2828879)))

(declare-fun c!775401 () Bool)

(assert (=> b!4539672 (= c!775401 call!316561)))

(declare-fun d!1403121 () Bool)

(assert (=> d!1403121 e!2828876))

(declare-fun res!1891801 () Bool)

(assert (=> d!1403121 (=> res!1891801 e!2828876)))

(assert (=> d!1403121 (= res!1891801 e!2828875)))

(declare-fun res!1891800 () Bool)

(assert (=> d!1403121 (=> (not res!1891800) (not e!2828875))))

(declare-fun lt!1714253 () Bool)

(assert (=> d!1403121 (= res!1891800 (not lt!1714253))))

(declare-fun lt!1714255 () Bool)

(assert (=> d!1403121 (= lt!1714253 lt!1714255)))

(declare-fun lt!1714254 () Unit!98176)

(assert (=> d!1403121 (= lt!1714254 e!2828877)))

(assert (=> d!1403121 (= c!775402 lt!1714255)))

(assert (=> d!1403121 (= lt!1714255 (containsKey!1872 (toList!4403 lt!1713258) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1403121 (= (contains!13538 lt!1713258 (_1!28907 (h!56627 (_2!28908 lt!1713093)))) lt!1714253)))

(declare-fun b!4539673 () Bool)

(assert (=> b!4539673 (= e!2828880 (getKeysList!491 (toList!4403 lt!1713258)))))

(declare-fun b!4539674 () Bool)

(assert (=> b!4539674 false))

(declare-fun lt!1714259 () Unit!98176)

(declare-fun lt!1714256 () Unit!98176)

(assert (=> b!4539674 (= lt!1714259 lt!1714256)))

(assert (=> b!4539674 (containsKey!1872 (toList!4403 lt!1713258) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4539674 (= lt!1714256 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713258) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun Unit!98464 () Unit!98176)

(assert (=> b!4539674 (= e!2828879 Unit!98464)))

(declare-fun b!4539675 () Bool)

(declare-fun lt!1714257 () Unit!98176)

(assert (=> b!4539675 (= e!2828877 lt!1714257)))

(declare-fun lt!1714258 () Unit!98176)

(assert (=> b!4539675 (= lt!1714258 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713258) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4539675 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713258) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1714252 () Unit!98176)

(assert (=> b!4539675 (= lt!1714252 lt!1714258)))

(assert (=> b!4539675 (= lt!1714257 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713258) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4539675 call!316561))

(declare-fun b!4539676 () Bool)

(assert (=> b!4539676 (= e!2828880 (keys!17658 lt!1713258))))

(assert (= (and d!1403121 c!775402) b!4539675))

(assert (= (and d!1403121 (not c!775402)) b!4539672))

(assert (= (and b!4539672 c!775401) b!4539674))

(assert (= (and b!4539672 (not c!775401)) b!4539671))

(assert (= (or b!4539675 b!4539672) bm!316556))

(assert (= (and bm!316556 c!775400) b!4539673))

(assert (= (and bm!316556 (not c!775400)) b!4539676))

(assert (= (and d!1403121 res!1891800) b!4539668))

(assert (= (and d!1403121 (not res!1891801)) b!4539670))

(assert (= (and b!4539670 res!1891802) b!4539669))

(declare-fun m!5305519 () Bool)

(assert (=> bm!316556 m!5305519))

(declare-fun m!5305521 () Bool)

(assert (=> b!4539670 m!5305521))

(assert (=> b!4539670 m!5305521))

(declare-fun m!5305523 () Bool)

(assert (=> b!4539670 m!5305523))

(declare-fun m!5305525 () Bool)

(assert (=> d!1403121 m!5305525))

(declare-fun m!5305527 () Bool)

(assert (=> b!4539668 m!5305527))

(assert (=> b!4539668 m!5305527))

(declare-fun m!5305529 () Bool)

(assert (=> b!4539668 m!5305529))

(assert (=> b!4539676 m!5305527))

(assert (=> b!4539669 m!5305527))

(assert (=> b!4539669 m!5305527))

(assert (=> b!4539669 m!5305529))

(assert (=> b!4539674 m!5305525))

(declare-fun m!5305531 () Bool)

(assert (=> b!4539674 m!5305531))

(declare-fun m!5305533 () Bool)

(assert (=> b!4539675 m!5305533))

(assert (=> b!4539675 m!5305521))

(assert (=> b!4539675 m!5305521))

(assert (=> b!4539675 m!5305523))

(declare-fun m!5305535 () Bool)

(assert (=> b!4539675 m!5305535))

(declare-fun m!5305537 () Bool)

(assert (=> b!4539673 m!5305537))

(assert (=> b!4538248 d!1403121))

(declare-fun bs!876675 () Bool)

(declare-fun b!4539681 () Bool)

(assert (= bs!876675 (and b!4539681 d!1402485)))

(declare-fun lambda!176050 () Int)

(assert (=> bs!876675 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713584) (= lambda!176050 lambda!175909))))

(declare-fun bs!876676 () Bool)

(assert (= bs!876676 (and b!4539681 d!1402823)))

(assert (=> bs!876676 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713909) (= lambda!176050 lambda!175983))))

(declare-fun bs!876677 () Bool)

(assert (= bs!876677 (and b!4539681 b!4538685)))

(assert (=> bs!876677 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176050 lambda!175925))))

(declare-fun bs!876678 () Bool)

(assert (= bs!876678 (and b!4539681 d!1402523)))

(assert (=> bs!876678 (not (= lambda!176050 lambda!175918))))

(declare-fun bs!876679 () Bool)

(assert (= bs!876679 (and b!4539681 b!4539182)))

(assert (=> bs!876679 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176050 lambda!175976))))

(declare-fun bs!876680 () Bool)

(assert (= bs!876680 (and b!4539681 b!4539282)))

(assert (=> bs!876680 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176050 lambda!175996))))

(assert (=> bs!876679 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713882) (= lambda!176050 lambda!175977))))

(declare-fun bs!876681 () Bool)

(assert (= bs!876681 (and b!4539681 b!4538501)))

(assert (=> bs!876681 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713493) (= lambda!176050 lambda!175886))))

(declare-fun bs!876682 () Bool)

(assert (= bs!876682 (and b!4539681 b!4539429)))

(assert (=> bs!876682 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1714101) (= lambda!176050 lambda!176015))))

(assert (=> bs!876677 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713639) (= lambda!176050 lambda!175926))))

(declare-fun bs!876683 () Bool)

(assert (= bs!876683 (and b!4539681 b!4539183)))

(assert (=> bs!876683 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176050 lambda!175975))))

(declare-fun bs!876684 () Bool)

(assert (= bs!876684 (and b!4539681 b!4539235)))

(assert (=> bs!876684 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176050 lambda!175980))))

(declare-fun bs!876685 () Bool)

(assert (= bs!876685 (and b!4539681 d!1402531)))

(assert (=> bs!876685 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713634) (= lambda!176050 lambda!175927))))

(declare-fun bs!876686 () Bool)

(assert (= bs!876686 (and b!4539681 b!4538248)))

(assert (=> bs!876686 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!176050 lambda!175836))))

(declare-fun bs!876687 () Bool)

(assert (= bs!876687 (and b!4539681 b!4538686)))

(assert (=> bs!876687 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176050 lambda!175924))))

(declare-fun bs!876688 () Bool)

(assert (= bs!876688 (and b!4539681 b!4538618)))

(assert (=> bs!876688 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!176050 lambda!175906))))

(declare-fun bs!876689 () Bool)

(assert (= bs!876689 (and b!4539681 b!4538678)))

(assert (=> bs!876689 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713617) (= lambda!176050 lambda!175921))))

(declare-fun bs!876690 () Bool)

(assert (= bs!876690 (and b!4539681 d!1402409)))

(assert (=> bs!876690 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713488) (= lambda!176050 lambda!175888))))

(assert (=> bs!876689 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176050 lambda!175920))))

(declare-fun bs!876691 () Bool)

(assert (= bs!876691 (and b!4539681 d!1402527)))

(assert (=> bs!876691 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713612) (= lambda!176050 lambda!175922))))

(declare-fun bs!876692 () Bool)

(assert (= bs!876692 (and b!4539681 d!1402887)))

(assert (=> bs!876692 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713493) (= lambda!176050 lambda!176005))))

(assert (=> bs!876686 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713258) (= lambda!176050 lambda!175837))))

(declare-fun bs!876693 () Bool)

(assert (= bs!876693 (and b!4539681 b!4538617)))

(assert (=> bs!876693 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!176050 lambda!175908))))

(declare-fun bs!876694 () Bool)

(assert (= bs!876694 (and b!4539681 d!1402987)))

(assert (=> bs!876694 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1714096) (= lambda!176050 lambda!176018))))

(declare-fun bs!876695 () Bool)

(assert (= bs!876695 (and b!4539681 b!4538249)))

(assert (=> bs!876695 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!176050 lambda!175834))))

(declare-fun bs!876696 () Bool)

(assert (= bs!876696 (and b!4539681 b!4538502)))

(assert (=> bs!876696 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!176050 lambda!175883))))

(declare-fun bs!876697 () Bool)

(assert (= bs!876697 (and b!4539681 d!1402229)))

(assert (=> bs!876697 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713253) (= lambda!176050 lambda!175838))))

(declare-fun bs!876698 () Bool)

(assert (= bs!876698 (and b!4539681 b!4539281)))

(assert (=> bs!876698 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176050 lambda!175998))))

(declare-fun bs!876699 () Bool)

(assert (= bs!876699 (and b!4539681 d!1402771)))

(assert (=> bs!876699 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713877) (= lambda!176050 lambda!175978))))

(declare-fun bs!876700 () Bool)

(assert (= bs!876700 (and b!4539681 d!1402317)))

(assert (=> bs!876700 (not (= lambda!176050 lambda!175860))))

(declare-fun bs!876701 () Bool)

(assert (= bs!876701 (and b!4539681 b!4539234)))

(assert (=> bs!876701 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176050 lambda!175981))))

(assert (=> bs!876681 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!176050 lambda!175885))))

(declare-fun bs!876702 () Bool)

(assert (= bs!876702 (and b!4539681 b!4538679)))

(assert (=> bs!876702 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176050 lambda!175919))))

(declare-fun bs!876703 () Bool)

(assert (= bs!876703 (and b!4539681 d!1402545)))

(assert (=> bs!876703 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!176050 lambda!175932))))

(declare-fun bs!876705 () Bool)

(assert (= bs!876705 (and b!4539681 d!1402983)))

(assert (=> bs!876705 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!176050 lambda!176011))))

(assert (=> bs!876682 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176050 lambda!176014))))

(declare-fun bs!876707 () Bool)

(assert (= bs!876707 (and b!4539681 d!1402727)))

(assert (=> bs!876707 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!176050 lambda!175970))))

(declare-fun bs!876709 () Bool)

(assert (= bs!876709 (and b!4539681 d!1402859)))

(assert (=> bs!876709 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713969) (= lambda!176050 lambda!176002))))

(assert (=> bs!876701 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713914) (= lambda!176050 lambda!175982))))

(declare-fun bs!876712 () Bool)

(assert (= bs!876712 (and b!4539681 b!4539430)))

(assert (=> bs!876712 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176050 lambda!176012))))

(assert (=> bs!876693 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!176050 lambda!175907))))

(declare-fun bs!876715 () Bool)

(assert (= bs!876715 (and b!4539681 b!4538171)))

(assert (=> bs!876715 (not (= lambda!176050 lambda!175771))))

(assert (=> bs!876698 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713974) (= lambda!176050 lambda!176000))))

(assert (=> b!4539681 true))

(declare-fun bs!876724 () Bool)

(declare-fun b!4539680 () Bool)

(assert (= bs!876724 (and b!4539680 d!1402485)))

(declare-fun lambda!176052 () Int)

(assert (=> bs!876724 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713584) (= lambda!176052 lambda!175909))))

(declare-fun bs!876727 () Bool)

(assert (= bs!876727 (and b!4539680 d!1402823)))

(assert (=> bs!876727 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713909) (= lambda!176052 lambda!175983))))

(declare-fun bs!876729 () Bool)

(assert (= bs!876729 (and b!4539680 b!4538685)))

(assert (=> bs!876729 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176052 lambda!175925))))

(declare-fun bs!876730 () Bool)

(assert (= bs!876730 (and b!4539680 d!1402523)))

(assert (=> bs!876730 (not (= lambda!176052 lambda!175918))))

(declare-fun bs!876732 () Bool)

(assert (= bs!876732 (and b!4539680 b!4539182)))

(assert (=> bs!876732 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176052 lambda!175976))))

(declare-fun bs!876734 () Bool)

(assert (= bs!876734 (and b!4539680 b!4539282)))

(assert (=> bs!876734 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176052 lambda!175996))))

(assert (=> bs!876732 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713882) (= lambda!176052 lambda!175977))))

(declare-fun bs!876736 () Bool)

(assert (= bs!876736 (and b!4539680 b!4538501)))

(assert (=> bs!876736 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713493) (= lambda!176052 lambda!175886))))

(declare-fun bs!876738 () Bool)

(assert (= bs!876738 (and b!4539680 b!4539429)))

(assert (=> bs!876738 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1714101) (= lambda!176052 lambda!176015))))

(assert (=> bs!876729 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713639) (= lambda!176052 lambda!175926))))

(declare-fun bs!876740 () Bool)

(assert (= bs!876740 (and b!4539680 b!4539183)))

(assert (=> bs!876740 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176052 lambda!175975))))

(declare-fun bs!876742 () Bool)

(assert (= bs!876742 (and b!4539680 b!4539235)))

(assert (=> bs!876742 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176052 lambda!175980))))

(declare-fun bs!876743 () Bool)

(assert (= bs!876743 (and b!4539680 d!1402531)))

(assert (=> bs!876743 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713634) (= lambda!176052 lambda!175927))))

(declare-fun bs!876745 () Bool)

(assert (= bs!876745 (and b!4539680 b!4538248)))

(assert (=> bs!876745 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!176052 lambda!175836))))

(declare-fun bs!876746 () Bool)

(assert (= bs!876746 (and b!4539680 b!4538686)))

(assert (=> bs!876746 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176052 lambda!175924))))

(declare-fun bs!876748 () Bool)

(assert (= bs!876748 (and b!4539680 b!4538618)))

(assert (=> bs!876748 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!176052 lambda!175906))))

(declare-fun bs!876749 () Bool)

(assert (= bs!876749 (and b!4539680 b!4538678)))

(assert (=> bs!876749 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713617) (= lambda!176052 lambda!175921))))

(declare-fun bs!876751 () Bool)

(assert (= bs!876751 (and b!4539680 d!1402409)))

(assert (=> bs!876751 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713488) (= lambda!176052 lambda!175888))))

(assert (=> bs!876749 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176052 lambda!175920))))

(declare-fun bs!876755 () Bool)

(assert (= bs!876755 (and b!4539680 d!1402527)))

(assert (=> bs!876755 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713612) (= lambda!176052 lambda!175922))))

(declare-fun bs!876756 () Bool)

(assert (= bs!876756 (and b!4539680 d!1402887)))

(assert (=> bs!876756 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713493) (= lambda!176052 lambda!176005))))

(assert (=> bs!876745 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713258) (= lambda!176052 lambda!175837))))

(declare-fun bs!876758 () Bool)

(assert (= bs!876758 (and b!4539680 b!4538617)))

(assert (=> bs!876758 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!176052 lambda!175908))))

(declare-fun bs!876759 () Bool)

(assert (= bs!876759 (and b!4539680 d!1402987)))

(assert (=> bs!876759 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1714096) (= lambda!176052 lambda!176018))))

(declare-fun bs!876761 () Bool)

(assert (= bs!876761 (and b!4539680 b!4538249)))

(assert (=> bs!876761 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!176052 lambda!175834))))

(declare-fun bs!876762 () Bool)

(assert (= bs!876762 (and b!4539680 b!4538502)))

(assert (=> bs!876762 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!176052 lambda!175883))))

(declare-fun bs!876763 () Bool)

(assert (= bs!876763 (and b!4539680 d!1402229)))

(assert (=> bs!876763 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713253) (= lambda!176052 lambda!175838))))

(declare-fun bs!876765 () Bool)

(assert (= bs!876765 (and b!4539680 b!4539281)))

(assert (=> bs!876765 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176052 lambda!175998))))

(declare-fun bs!876767 () Bool)

(assert (= bs!876767 (and b!4539680 d!1402771)))

(assert (=> bs!876767 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713877) (= lambda!176052 lambda!175978))))

(declare-fun bs!876770 () Bool)

(assert (= bs!876770 (and b!4539680 d!1402317)))

(assert (=> bs!876770 (not (= lambda!176052 lambda!175860))))

(declare-fun bs!876772 () Bool)

(assert (= bs!876772 (and b!4539680 b!4539234)))

(assert (=> bs!876772 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176052 lambda!175981))))

(assert (=> bs!876736 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713095) (= lambda!176052 lambda!175885))))

(declare-fun bs!876775 () Bool)

(assert (= bs!876775 (and b!4539680 b!4538679)))

(assert (=> bs!876775 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176052 lambda!175919))))

(declare-fun bs!876778 () Bool)

(assert (= bs!876778 (and b!4539680 d!1402545)))

(assert (=> bs!876778 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713589) (= lambda!176052 lambda!175932))))

(declare-fun bs!876780 () Bool)

(assert (= bs!876780 (and b!4539680 d!1402983)))

(assert (=> bs!876780 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!176052 lambda!176011))))

(assert (=> bs!876738 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176052 lambda!176014))))

(declare-fun bs!876783 () Bool)

(assert (= bs!876783 (and b!4539680 d!1402727)))

(assert (=> bs!876783 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713121) (= lambda!176052 lambda!175970))))

(declare-fun bs!876785 () Bool)

(assert (= bs!876785 (and b!4539680 d!1402859)))

(assert (=> bs!876785 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713969) (= lambda!176052 lambda!176002))))

(assert (=> bs!876772 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713914) (= lambda!176052 lambda!175982))))

(declare-fun bs!876787 () Bool)

(assert (= bs!876787 (and b!4539680 b!4539430)))

(assert (=> bs!876787 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176052 lambda!176012))))

(assert (=> bs!876758 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713103) (= lambda!176052 lambda!175907))))

(declare-fun bs!876790 () Bool)

(assert (= bs!876790 (and b!4539680 b!4539681)))

(assert (=> bs!876790 (= lambda!176052 lambda!176050)))

(declare-fun bs!876792 () Bool)

(assert (= bs!876792 (and b!4539680 b!4538171)))

(assert (=> bs!876792 (not (= lambda!176052 lambda!175771))))

(assert (=> bs!876765 (= (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1713974) (= lambda!176052 lambda!176000))))

(assert (=> b!4539680 true))

(declare-fun lt!1714270 () ListMap!3665)

(declare-fun lambda!176054 () Int)

(assert (=> bs!876724 (= (= lt!1714270 lt!1713584) (= lambda!176054 lambda!175909))))

(assert (=> bs!876727 (= (= lt!1714270 lt!1713909) (= lambda!176054 lambda!175983))))

(assert (=> bs!876729 (= (= lt!1714270 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176054 lambda!175925))))

(assert (=> bs!876730 (not (= lambda!176054 lambda!175918))))

(assert (=> bs!876732 (= (= lt!1714270 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176054 lambda!175976))))

(assert (=> bs!876734 (= (= lt!1714270 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176054 lambda!175996))))

(assert (=> bs!876732 (= (= lt!1714270 lt!1713882) (= lambda!176054 lambda!175977))))

(assert (=> bs!876736 (= (= lt!1714270 lt!1713493) (= lambda!176054 lambda!175886))))

(assert (=> b!4539680 (= (= lt!1714270 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176054 lambda!176052))))

(assert (=> bs!876738 (= (= lt!1714270 lt!1714101) (= lambda!176054 lambda!176015))))

(assert (=> bs!876729 (= (= lt!1714270 lt!1713639) (= lambda!176054 lambda!175926))))

(assert (=> bs!876740 (= (= lt!1714270 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176054 lambda!175975))))

(assert (=> bs!876742 (= (= lt!1714270 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176054 lambda!175980))))

(assert (=> bs!876743 (= (= lt!1714270 lt!1713634) (= lambda!176054 lambda!175927))))

(assert (=> bs!876745 (= (= lt!1714270 lt!1713121) (= lambda!176054 lambda!175836))))

(assert (=> bs!876746 (= (= lt!1714270 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176054 lambda!175924))))

(assert (=> bs!876748 (= (= lt!1714270 lt!1713103) (= lambda!176054 lambda!175906))))

(assert (=> bs!876749 (= (= lt!1714270 lt!1713617) (= lambda!176054 lambda!175921))))

(assert (=> bs!876751 (= (= lt!1714270 lt!1713488) (= lambda!176054 lambda!175888))))

(assert (=> bs!876749 (= (= lt!1714270 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176054 lambda!175920))))

(assert (=> bs!876755 (= (= lt!1714270 lt!1713612) (= lambda!176054 lambda!175922))))

(assert (=> bs!876756 (= (= lt!1714270 lt!1713493) (= lambda!176054 lambda!176005))))

(assert (=> bs!876745 (= (= lt!1714270 lt!1713258) (= lambda!176054 lambda!175837))))

(assert (=> bs!876758 (= (= lt!1714270 lt!1713589) (= lambda!176054 lambda!175908))))

(assert (=> bs!876759 (= (= lt!1714270 lt!1714096) (= lambda!176054 lambda!176018))))

(assert (=> bs!876761 (= (= lt!1714270 lt!1713121) (= lambda!176054 lambda!175834))))

(assert (=> bs!876762 (= (= lt!1714270 lt!1713095) (= lambda!176054 lambda!175883))))

(assert (=> bs!876763 (= (= lt!1714270 lt!1713253) (= lambda!176054 lambda!175838))))

(assert (=> bs!876765 (= (= lt!1714270 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176054 lambda!175998))))

(assert (=> bs!876767 (= (= lt!1714270 lt!1713877) (= lambda!176054 lambda!175978))))

(assert (=> bs!876770 (not (= lambda!176054 lambda!175860))))

(assert (=> bs!876772 (= (= lt!1714270 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176054 lambda!175981))))

(assert (=> bs!876736 (= (= lt!1714270 lt!1713095) (= lambda!176054 lambda!175885))))

(assert (=> bs!876775 (= (= lt!1714270 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176054 lambda!175919))))

(assert (=> bs!876778 (= (= lt!1714270 lt!1713589) (= lambda!176054 lambda!175932))))

(assert (=> bs!876780 (= (= lt!1714270 lt!1713103) (= lambda!176054 lambda!176011))))

(assert (=> bs!876738 (= (= lt!1714270 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176054 lambda!176014))))

(assert (=> bs!876783 (= (= lt!1714270 lt!1713121) (= lambda!176054 lambda!175970))))

(assert (=> bs!876785 (= (= lt!1714270 lt!1713969) (= lambda!176054 lambda!176002))))

(assert (=> bs!876772 (= (= lt!1714270 lt!1713914) (= lambda!176054 lambda!175982))))

(assert (=> bs!876787 (= (= lt!1714270 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176054 lambda!176012))))

(assert (=> bs!876758 (= (= lt!1714270 lt!1713103) (= lambda!176054 lambda!175907))))

(assert (=> bs!876790 (= (= lt!1714270 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176054 lambda!176050))))

(assert (=> bs!876792 (not (= lambda!176054 lambda!175771))))

(assert (=> bs!876765 (= (= lt!1714270 lt!1713974) (= lambda!176054 lambda!176000))))

(assert (=> b!4539680 true))

(declare-fun bs!876839 () Bool)

(declare-fun d!1403123 () Bool)

(assert (= bs!876839 (and d!1403123 d!1402485)))

(declare-fun lt!1714265 () ListMap!3665)

(declare-fun lambda!176057 () Int)

(assert (=> bs!876839 (= (= lt!1714265 lt!1713584) (= lambda!176057 lambda!175909))))

(declare-fun bs!876840 () Bool)

(assert (= bs!876840 (and d!1403123 d!1402823)))

(assert (=> bs!876840 (= (= lt!1714265 lt!1713909) (= lambda!176057 lambda!175983))))

(declare-fun bs!876841 () Bool)

(assert (= bs!876841 (and d!1403123 b!4538685)))

(assert (=> bs!876841 (= (= lt!1714265 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176057 lambda!175925))))

(declare-fun bs!876842 () Bool)

(assert (= bs!876842 (and d!1403123 d!1402523)))

(assert (=> bs!876842 (not (= lambda!176057 lambda!175918))))

(declare-fun bs!876843 () Bool)

(assert (= bs!876843 (and d!1403123 b!4539182)))

(assert (=> bs!876843 (= (= lt!1714265 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176057 lambda!175976))))

(declare-fun bs!876844 () Bool)

(assert (= bs!876844 (and d!1403123 b!4539282)))

(assert (=> bs!876844 (= (= lt!1714265 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176057 lambda!175996))))

(assert (=> bs!876843 (= (= lt!1714265 lt!1713882) (= lambda!176057 lambda!175977))))

(declare-fun bs!876845 () Bool)

(assert (= bs!876845 (and d!1403123 b!4538501)))

(assert (=> bs!876845 (= (= lt!1714265 lt!1713493) (= lambda!176057 lambda!175886))))

(declare-fun bs!876846 () Bool)

(assert (= bs!876846 (and d!1403123 b!4539680)))

(assert (=> bs!876846 (= (= lt!1714265 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176057 lambda!176052))))

(declare-fun bs!876847 () Bool)

(assert (= bs!876847 (and d!1403123 b!4539429)))

(assert (=> bs!876847 (= (= lt!1714265 lt!1714101) (= lambda!176057 lambda!176015))))

(assert (=> bs!876841 (= (= lt!1714265 lt!1713639) (= lambda!176057 lambda!175926))))

(declare-fun bs!876848 () Bool)

(assert (= bs!876848 (and d!1403123 b!4539183)))

(assert (=> bs!876848 (= (= lt!1714265 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176057 lambda!175975))))

(declare-fun bs!876849 () Bool)

(assert (= bs!876849 (and d!1403123 b!4539235)))

(assert (=> bs!876849 (= (= lt!1714265 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176057 lambda!175980))))

(declare-fun bs!876850 () Bool)

(assert (= bs!876850 (and d!1403123 d!1402531)))

(assert (=> bs!876850 (= (= lt!1714265 lt!1713634) (= lambda!176057 lambda!175927))))

(declare-fun bs!876851 () Bool)

(assert (= bs!876851 (and d!1403123 b!4538248)))

(assert (=> bs!876851 (= (= lt!1714265 lt!1713121) (= lambda!176057 lambda!175836))))

(declare-fun bs!876852 () Bool)

(assert (= bs!876852 (and d!1403123 b!4538686)))

(assert (=> bs!876852 (= (= lt!1714265 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176057 lambda!175924))))

(declare-fun bs!876853 () Bool)

(assert (= bs!876853 (and d!1403123 b!4538618)))

(assert (=> bs!876853 (= (= lt!1714265 lt!1713103) (= lambda!176057 lambda!175906))))

(declare-fun bs!876854 () Bool)

(assert (= bs!876854 (and d!1403123 b!4538678)))

(assert (=> bs!876854 (= (= lt!1714265 lt!1713617) (= lambda!176057 lambda!175921))))

(declare-fun bs!876855 () Bool)

(assert (= bs!876855 (and d!1403123 d!1402409)))

(assert (=> bs!876855 (= (= lt!1714265 lt!1713488) (= lambda!176057 lambda!175888))))

(assert (=> bs!876846 (= (= lt!1714265 lt!1714270) (= lambda!176057 lambda!176054))))

(assert (=> bs!876854 (= (= lt!1714265 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176057 lambda!175920))))

(declare-fun bs!876856 () Bool)

(assert (= bs!876856 (and d!1403123 d!1402527)))

(assert (=> bs!876856 (= (= lt!1714265 lt!1713612) (= lambda!176057 lambda!175922))))

(declare-fun bs!876857 () Bool)

(assert (= bs!876857 (and d!1403123 d!1402887)))

(assert (=> bs!876857 (= (= lt!1714265 lt!1713493) (= lambda!176057 lambda!176005))))

(assert (=> bs!876851 (= (= lt!1714265 lt!1713258) (= lambda!176057 lambda!175837))))

(declare-fun bs!876858 () Bool)

(assert (= bs!876858 (and d!1403123 b!4538617)))

(assert (=> bs!876858 (= (= lt!1714265 lt!1713589) (= lambda!176057 lambda!175908))))

(declare-fun bs!876859 () Bool)

(assert (= bs!876859 (and d!1403123 d!1402987)))

(assert (=> bs!876859 (= (= lt!1714265 lt!1714096) (= lambda!176057 lambda!176018))))

(declare-fun bs!876860 () Bool)

(assert (= bs!876860 (and d!1403123 b!4538249)))

(assert (=> bs!876860 (= (= lt!1714265 lt!1713121) (= lambda!176057 lambda!175834))))

(declare-fun bs!876862 () Bool)

(assert (= bs!876862 (and d!1403123 b!4538502)))

(assert (=> bs!876862 (= (= lt!1714265 lt!1713095) (= lambda!176057 lambda!175883))))

(declare-fun bs!876864 () Bool)

(assert (= bs!876864 (and d!1403123 d!1402229)))

(assert (=> bs!876864 (= (= lt!1714265 lt!1713253) (= lambda!176057 lambda!175838))))

(declare-fun bs!876866 () Bool)

(assert (= bs!876866 (and d!1403123 b!4539281)))

(assert (=> bs!876866 (= (= lt!1714265 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176057 lambda!175998))))

(declare-fun bs!876869 () Bool)

(assert (= bs!876869 (and d!1403123 d!1402771)))

(assert (=> bs!876869 (= (= lt!1714265 lt!1713877) (= lambda!176057 lambda!175978))))

(declare-fun bs!876871 () Bool)

(assert (= bs!876871 (and d!1403123 d!1402317)))

(assert (=> bs!876871 (not (= lambda!176057 lambda!175860))))

(declare-fun bs!876873 () Bool)

(assert (= bs!876873 (and d!1403123 b!4539234)))

(assert (=> bs!876873 (= (= lt!1714265 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176057 lambda!175981))))

(assert (=> bs!876845 (= (= lt!1714265 lt!1713095) (= lambda!176057 lambda!175885))))

(declare-fun bs!876876 () Bool)

(assert (= bs!876876 (and d!1403123 b!4538679)))

(assert (=> bs!876876 (= (= lt!1714265 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176057 lambda!175919))))

(declare-fun bs!876878 () Bool)

(assert (= bs!876878 (and d!1403123 d!1402545)))

(assert (=> bs!876878 (= (= lt!1714265 lt!1713589) (= lambda!176057 lambda!175932))))

(declare-fun bs!876880 () Bool)

(assert (= bs!876880 (and d!1403123 d!1402983)))

(assert (=> bs!876880 (= (= lt!1714265 lt!1713103) (= lambda!176057 lambda!176011))))

(assert (=> bs!876847 (= (= lt!1714265 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176057 lambda!176014))))

(declare-fun bs!876883 () Bool)

(assert (= bs!876883 (and d!1403123 d!1402727)))

(assert (=> bs!876883 (= (= lt!1714265 lt!1713121) (= lambda!176057 lambda!175970))))

(declare-fun bs!876885 () Bool)

(assert (= bs!876885 (and d!1403123 d!1402859)))

(assert (=> bs!876885 (= (= lt!1714265 lt!1713969) (= lambda!176057 lambda!176002))))

(assert (=> bs!876873 (= (= lt!1714265 lt!1713914) (= lambda!176057 lambda!175982))))

(declare-fun bs!876888 () Bool)

(assert (= bs!876888 (and d!1403123 b!4539430)))

(assert (=> bs!876888 (= (= lt!1714265 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176057 lambda!176012))))

(assert (=> bs!876858 (= (= lt!1714265 lt!1713103) (= lambda!176057 lambda!175907))))

(declare-fun bs!876890 () Bool)

(assert (= bs!876890 (and d!1403123 b!4539681)))

(assert (=> bs!876890 (= (= lt!1714265 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176057 lambda!176050))))

(declare-fun bs!876893 () Bool)

(assert (= bs!876893 (and d!1403123 b!4538171)))

(assert (=> bs!876893 (not (= lambda!176057 lambda!175771))))

(assert (=> bs!876866 (= (= lt!1714265 lt!1713974) (= lambda!176057 lambda!176000))))

(assert (=> d!1403123 true))

(declare-fun bm!316557 () Bool)

(declare-fun call!316562 () Unit!98176)

(assert (=> bm!316557 (= call!316562 (lemmaContainsAllItsOwnKeys!364 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun b!4539677 () Bool)

(declare-fun e!2828881 () Bool)

(assert (=> b!4539677 (= e!2828881 (invariantList!1043 (toList!4403 lt!1714265)))))

(declare-fun c!775403 () Bool)

(declare-fun bm!316558 () Bool)

(declare-fun call!316564 () Bool)

(assert (=> bm!316558 (= call!316564 (forall!10343 (ite c!775403 (toList!4403 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (t!357834 (_2!28908 lt!1713093))) (ite c!775403 lambda!176050 lambda!176054)))))

(declare-fun b!4539678 () Bool)

(declare-fun res!1891805 () Bool)

(assert (=> b!4539678 (=> (not res!1891805) (not e!2828881))))

(assert (=> b!4539678 (= res!1891805 (forall!10343 (toList!4403 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) lambda!176057))))

(declare-fun b!4539679 () Bool)

(declare-fun e!2828882 () Bool)

(assert (=> b!4539679 (= e!2828882 (forall!10343 (toList!4403 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) lambda!176054))))

(declare-fun e!2828883 () ListMap!3665)

(assert (=> b!4539680 (= e!2828883 lt!1714270)))

(declare-fun lt!1714276 () ListMap!3665)

(assert (=> b!4539680 (= lt!1714276 (+!1604 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> b!4539680 (= lt!1714270 (addToMapMapFromBucket!725 (t!357834 (t!357834 (_2!28908 lt!1713093))) (+!1604 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) (h!56627 (t!357834 (_2!28908 lt!1713093))))))))

(declare-fun lt!1714269 () Unit!98176)

(assert (=> b!4539680 (= lt!1714269 call!316562)))

(assert (=> b!4539680 (forall!10343 (toList!4403 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) lambda!176052)))

(declare-fun lt!1714277 () Unit!98176)

(assert (=> b!4539680 (= lt!1714277 lt!1714269)))

(assert (=> b!4539680 (forall!10343 (toList!4403 lt!1714276) lambda!176054)))

(declare-fun lt!1714264 () Unit!98176)

(declare-fun Unit!98465 () Unit!98176)

(assert (=> b!4539680 (= lt!1714264 Unit!98465)))

(declare-fun call!316563 () Bool)

(assert (=> b!4539680 call!316563))

(declare-fun lt!1714275 () Unit!98176)

(declare-fun Unit!98466 () Unit!98176)

(assert (=> b!4539680 (= lt!1714275 Unit!98466)))

(declare-fun lt!1714263 () Unit!98176)

(declare-fun Unit!98467 () Unit!98176)

(assert (=> b!4539680 (= lt!1714263 Unit!98467)))

(declare-fun lt!1714266 () Unit!98176)

(assert (=> b!4539680 (= lt!1714266 (forallContained!2605 (toList!4403 lt!1714276) lambda!176054 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(assert (=> b!4539680 (contains!13538 lt!1714276 (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(declare-fun lt!1714262 () Unit!98176)

(declare-fun Unit!98468 () Unit!98176)

(assert (=> b!4539680 (= lt!1714262 Unit!98468)))

(assert (=> b!4539680 (contains!13538 lt!1714270 (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))))))

(declare-fun lt!1714261 () Unit!98176)

(declare-fun Unit!98470 () Unit!98176)

(assert (=> b!4539680 (= lt!1714261 Unit!98470)))

(assert (=> b!4539680 call!316564))

(declare-fun lt!1714279 () Unit!98176)

(declare-fun Unit!98471 () Unit!98176)

(assert (=> b!4539680 (= lt!1714279 Unit!98471)))

(assert (=> b!4539680 (forall!10343 (toList!4403 lt!1714276) lambda!176054)))

(declare-fun lt!1714271 () Unit!98176)

(declare-fun Unit!98472 () Unit!98176)

(assert (=> b!4539680 (= lt!1714271 Unit!98472)))

(declare-fun lt!1714274 () Unit!98176)

(declare-fun Unit!98473 () Unit!98176)

(assert (=> b!4539680 (= lt!1714274 Unit!98473)))

(declare-fun lt!1714280 () Unit!98176)

(assert (=> b!4539680 (= lt!1714280 (addForallContainsKeyThenBeforeAdding!364 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1714270 (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))) (_2!28907 (h!56627 (t!357834 (_2!28908 lt!1713093))))))))

(assert (=> b!4539680 (forall!10343 (toList!4403 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) lambda!176054)))

(declare-fun lt!1714268 () Unit!98176)

(assert (=> b!4539680 (= lt!1714268 lt!1714280)))

(assert (=> b!4539680 (forall!10343 (toList!4403 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) lambda!176054)))

(declare-fun lt!1714278 () Unit!98176)

(declare-fun Unit!98475 () Unit!98176)

(assert (=> b!4539680 (= lt!1714278 Unit!98475)))

(declare-fun res!1891804 () Bool)

(assert (=> b!4539680 (= res!1891804 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!176054))))

(assert (=> b!4539680 (=> (not res!1891804) (not e!2828882))))

(assert (=> b!4539680 e!2828882))

(declare-fun lt!1714260 () Unit!98176)

(declare-fun Unit!98478 () Unit!98176)

(assert (=> b!4539680 (= lt!1714260 Unit!98478)))

(assert (=> b!4539681 (= e!2828883 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1714273 () Unit!98176)

(assert (=> b!4539681 (= lt!1714273 call!316562)))

(assert (=> b!4539681 call!316563))

(declare-fun lt!1714272 () Unit!98176)

(assert (=> b!4539681 (= lt!1714272 lt!1714273)))

(assert (=> b!4539681 call!316564))

(declare-fun lt!1714267 () Unit!98176)

(declare-fun Unit!98481 () Unit!98176)

(assert (=> b!4539681 (= lt!1714267 Unit!98481)))

(declare-fun bm!316559 () Bool)

(assert (=> bm!316559 (= call!316563 (forall!10343 (ite c!775403 (toList!4403 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (t!357834 (t!357834 (_2!28908 lt!1713093)))) (ite c!775403 lambda!176050 lambda!176054)))))

(assert (=> d!1403123 e!2828881))

(declare-fun res!1891803 () Bool)

(assert (=> d!1403123 (=> (not res!1891803) (not e!2828881))))

(assert (=> d!1403123 (= res!1891803 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!176057))))

(assert (=> d!1403123 (= lt!1714265 e!2828883)))

(assert (=> d!1403123 (= c!775403 ((_ is Nil!50748) (t!357834 (_2!28908 lt!1713093))))))

(assert (=> d!1403123 (noDuplicateKeys!1198 (t!357834 (_2!28908 lt!1713093)))))

(assert (=> d!1403123 (= (addToMapMapFromBucket!725 (t!357834 (_2!28908 lt!1713093)) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) lt!1714265)))

(assert (= (and d!1403123 c!775403) b!4539681))

(assert (= (and d!1403123 (not c!775403)) b!4539680))

(assert (= (and b!4539680 res!1891804) b!4539679))

(assert (= (or b!4539681 b!4539680) bm!316558))

(assert (= (or b!4539681 b!4539680) bm!316559))

(assert (= (or b!4539681 b!4539680) bm!316557))

(assert (= (and d!1403123 res!1891803) b!4539678))

(assert (= (and b!4539678 res!1891805) b!4539677))

(declare-fun m!5305577 () Bool)

(assert (=> bm!316559 m!5305577))

(declare-fun m!5305579 () Bool)

(assert (=> b!4539680 m!5305579))

(assert (=> b!4539680 m!5302715))

(declare-fun m!5305581 () Bool)

(assert (=> b!4539680 m!5305581))

(declare-fun m!5305583 () Bool)

(assert (=> b!4539680 m!5305583))

(declare-fun m!5305585 () Bool)

(assert (=> b!4539680 m!5305585))

(assert (=> b!4539680 m!5305579))

(assert (=> b!4539680 m!5305585))

(declare-fun m!5305587 () Bool)

(assert (=> b!4539680 m!5305587))

(declare-fun m!5305589 () Bool)

(assert (=> b!4539680 m!5305589))

(declare-fun m!5305591 () Bool)

(assert (=> b!4539680 m!5305591))

(declare-fun m!5305593 () Bool)

(assert (=> b!4539680 m!5305593))

(assert (=> b!4539680 m!5305581))

(declare-fun m!5305595 () Bool)

(assert (=> b!4539680 m!5305595))

(assert (=> b!4539680 m!5302715))

(declare-fun m!5305597 () Bool)

(assert (=> b!4539680 m!5305597))

(declare-fun m!5305599 () Bool)

(assert (=> d!1403123 m!5305599))

(assert (=> d!1403123 m!5302905))

(declare-fun m!5305601 () Bool)

(assert (=> b!4539678 m!5305601))

(declare-fun m!5305603 () Bool)

(assert (=> b!4539677 m!5305603))

(declare-fun m!5305605 () Bool)

(assert (=> bm!316558 m!5305605))

(assert (=> bm!316557 m!5302715))

(declare-fun m!5305607 () Bool)

(assert (=> bm!316557 m!5305607))

(assert (=> b!4539679 m!5305585))

(assert (=> b!4538248 d!1403123))

(assert (=> b!4538248 d!1402925))

(declare-fun d!1403133 () Bool)

(declare-fun res!1891811 () Bool)

(declare-fun e!2828889 () Bool)

(assert (=> d!1403133 (=> res!1891811 e!2828889)))

(assert (=> d!1403133 (= res!1891811 ((_ is Nil!50748) (toList!4403 lt!1713264)))))

(assert (=> d!1403133 (= (forall!10343 (toList!4403 lt!1713264) lambda!175837) e!2828889)))

(declare-fun b!4539689 () Bool)

(declare-fun e!2828890 () Bool)

(assert (=> b!4539689 (= e!2828889 e!2828890)))

(declare-fun res!1891812 () Bool)

(assert (=> b!4539689 (=> (not res!1891812) (not e!2828890))))

(assert (=> b!4539689 (= res!1891812 (dynLambda!21212 lambda!175837 (h!56627 (toList!4403 lt!1713264))))))

(declare-fun b!4539690 () Bool)

(assert (=> b!4539690 (= e!2828890 (forall!10343 (t!357834 (toList!4403 lt!1713264)) lambda!175837))))

(assert (= (and d!1403133 (not res!1891811)) b!4539689))

(assert (= (and b!4539689 res!1891812) b!4539690))

(declare-fun b_lambda!157821 () Bool)

(assert (=> (not b_lambda!157821) (not b!4539689)))

(declare-fun m!5305609 () Bool)

(assert (=> b!4539689 m!5305609))

(declare-fun m!5305611 () Bool)

(assert (=> b!4539690 m!5305611))

(assert (=> b!4538248 d!1403133))

(declare-fun bs!876908 () Bool)

(declare-fun d!1403135 () Bool)

(assert (= bs!876908 (and d!1403135 d!1402485)))

(declare-fun lambda!176059 () Int)

(assert (=> bs!876908 (= (= lt!1713258 lt!1713584) (= lambda!176059 lambda!175909))))

(declare-fun bs!876909 () Bool)

(assert (= bs!876909 (and d!1403135 d!1402823)))

(assert (=> bs!876909 (= (= lt!1713258 lt!1713909) (= lambda!176059 lambda!175983))))

(declare-fun bs!876910 () Bool)

(assert (= bs!876910 (and d!1403135 b!4538685)))

(assert (=> bs!876910 (= (= lt!1713258 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176059 lambda!175925))))

(declare-fun bs!876911 () Bool)

(assert (= bs!876911 (and d!1403135 d!1402523)))

(assert (=> bs!876911 (not (= lambda!176059 lambda!175918))))

(declare-fun bs!876912 () Bool)

(assert (= bs!876912 (and d!1403135 b!4539182)))

(assert (=> bs!876912 (= (= lt!1713258 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176059 lambda!175976))))

(declare-fun bs!876913 () Bool)

(assert (= bs!876913 (and d!1403135 b!4539282)))

(assert (=> bs!876913 (= (= lt!1713258 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176059 lambda!175996))))

(assert (=> bs!876912 (= (= lt!1713258 lt!1713882) (= lambda!176059 lambda!175977))))

(declare-fun bs!876914 () Bool)

(assert (= bs!876914 (and d!1403135 b!4538501)))

(assert (=> bs!876914 (= (= lt!1713258 lt!1713493) (= lambda!176059 lambda!175886))))

(declare-fun bs!876915 () Bool)

(assert (= bs!876915 (and d!1403135 b!4539680)))

(assert (=> bs!876915 (= (= lt!1713258 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176059 lambda!176052))))

(declare-fun bs!876916 () Bool)

(assert (= bs!876916 (and d!1403135 b!4539429)))

(assert (=> bs!876916 (= (= lt!1713258 lt!1714101) (= lambda!176059 lambda!176015))))

(assert (=> bs!876910 (= (= lt!1713258 lt!1713639) (= lambda!176059 lambda!175926))))

(declare-fun bs!876917 () Bool)

(assert (= bs!876917 (and d!1403135 b!4539183)))

(assert (=> bs!876917 (= (= lt!1713258 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176059 lambda!175975))))

(declare-fun bs!876918 () Bool)

(assert (= bs!876918 (and d!1403135 b!4539235)))

(assert (=> bs!876918 (= (= lt!1713258 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176059 lambda!175980))))

(declare-fun bs!876919 () Bool)

(assert (= bs!876919 (and d!1403135 d!1402531)))

(assert (=> bs!876919 (= (= lt!1713258 lt!1713634) (= lambda!176059 lambda!175927))))

(declare-fun bs!876920 () Bool)

(assert (= bs!876920 (and d!1403135 b!4538248)))

(assert (=> bs!876920 (= (= lt!1713258 lt!1713121) (= lambda!176059 lambda!175836))))

(declare-fun bs!876921 () Bool)

(assert (= bs!876921 (and d!1403135 b!4538686)))

(assert (=> bs!876921 (= (= lt!1713258 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176059 lambda!175924))))

(declare-fun bs!876922 () Bool)

(assert (= bs!876922 (and d!1403135 b!4538618)))

(assert (=> bs!876922 (= (= lt!1713258 lt!1713103) (= lambda!176059 lambda!175906))))

(declare-fun bs!876923 () Bool)

(assert (= bs!876923 (and d!1403135 b!4538678)))

(assert (=> bs!876923 (= (= lt!1713258 lt!1713617) (= lambda!176059 lambda!175921))))

(declare-fun bs!876924 () Bool)

(assert (= bs!876924 (and d!1403135 d!1402409)))

(assert (=> bs!876924 (= (= lt!1713258 lt!1713488) (= lambda!176059 lambda!175888))))

(assert (=> bs!876915 (= (= lt!1713258 lt!1714270) (= lambda!176059 lambda!176054))))

(assert (=> bs!876923 (= (= lt!1713258 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176059 lambda!175920))))

(declare-fun bs!876925 () Bool)

(assert (= bs!876925 (and d!1403135 d!1402527)))

(assert (=> bs!876925 (= (= lt!1713258 lt!1713612) (= lambda!176059 lambda!175922))))

(declare-fun bs!876926 () Bool)

(assert (= bs!876926 (and d!1403135 d!1402887)))

(assert (=> bs!876926 (= (= lt!1713258 lt!1713493) (= lambda!176059 lambda!176005))))

(assert (=> bs!876920 (= lambda!176059 lambda!175837)))

(declare-fun bs!876927 () Bool)

(assert (= bs!876927 (and d!1403135 b!4538617)))

(assert (=> bs!876927 (= (= lt!1713258 lt!1713589) (= lambda!176059 lambda!175908))))

(declare-fun bs!876928 () Bool)

(assert (= bs!876928 (and d!1403135 d!1402987)))

(assert (=> bs!876928 (= (= lt!1713258 lt!1714096) (= lambda!176059 lambda!176018))))

(declare-fun bs!876929 () Bool)

(assert (= bs!876929 (and d!1403135 b!4538249)))

(assert (=> bs!876929 (= (= lt!1713258 lt!1713121) (= lambda!176059 lambda!175834))))

(declare-fun bs!876930 () Bool)

(assert (= bs!876930 (and d!1403135 b!4538502)))

(assert (=> bs!876930 (= (= lt!1713258 lt!1713095) (= lambda!176059 lambda!175883))))

(declare-fun bs!876931 () Bool)

(assert (= bs!876931 (and d!1403135 d!1402229)))

(assert (=> bs!876931 (= (= lt!1713258 lt!1713253) (= lambda!176059 lambda!175838))))

(declare-fun bs!876932 () Bool)

(assert (= bs!876932 (and d!1403135 d!1403123)))

(assert (=> bs!876932 (= (= lt!1713258 lt!1714265) (= lambda!176059 lambda!176057))))

(declare-fun bs!876933 () Bool)

(assert (= bs!876933 (and d!1403135 b!4539281)))

(assert (=> bs!876933 (= (= lt!1713258 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176059 lambda!175998))))

(declare-fun bs!876934 () Bool)

(assert (= bs!876934 (and d!1403135 d!1402771)))

(assert (=> bs!876934 (= (= lt!1713258 lt!1713877) (= lambda!176059 lambda!175978))))

(declare-fun bs!876935 () Bool)

(assert (= bs!876935 (and d!1403135 d!1402317)))

(assert (=> bs!876935 (not (= lambda!176059 lambda!175860))))

(declare-fun bs!876936 () Bool)

(assert (= bs!876936 (and d!1403135 b!4539234)))

(assert (=> bs!876936 (= (= lt!1713258 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176059 lambda!175981))))

(assert (=> bs!876914 (= (= lt!1713258 lt!1713095) (= lambda!176059 lambda!175885))))

(declare-fun bs!876938 () Bool)

(assert (= bs!876938 (and d!1403135 b!4538679)))

(assert (=> bs!876938 (= (= lt!1713258 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176059 lambda!175919))))

(declare-fun bs!876939 () Bool)

(assert (= bs!876939 (and d!1403135 d!1402545)))

(assert (=> bs!876939 (= (= lt!1713258 lt!1713589) (= lambda!176059 lambda!175932))))

(declare-fun bs!876941 () Bool)

(assert (= bs!876941 (and d!1403135 d!1402983)))

(assert (=> bs!876941 (= (= lt!1713258 lt!1713103) (= lambda!176059 lambda!176011))))

(assert (=> bs!876916 (= (= lt!1713258 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176059 lambda!176014))))

(declare-fun bs!876943 () Bool)

(assert (= bs!876943 (and d!1403135 d!1402727)))

(assert (=> bs!876943 (= (= lt!1713258 lt!1713121) (= lambda!176059 lambda!175970))))

(declare-fun bs!876945 () Bool)

(assert (= bs!876945 (and d!1403135 d!1402859)))

(assert (=> bs!876945 (= (= lt!1713258 lt!1713969) (= lambda!176059 lambda!176002))))

(assert (=> bs!876936 (= (= lt!1713258 lt!1713914) (= lambda!176059 lambda!175982))))

(declare-fun bs!876948 () Bool)

(assert (= bs!876948 (and d!1403135 b!4539430)))

(assert (=> bs!876948 (= (= lt!1713258 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176059 lambda!176012))))

(assert (=> bs!876927 (= (= lt!1713258 lt!1713103) (= lambda!176059 lambda!175907))))

(declare-fun bs!876951 () Bool)

(assert (= bs!876951 (and d!1403135 b!4539681)))

(assert (=> bs!876951 (= (= lt!1713258 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176059 lambda!176050))))

(declare-fun bs!876953 () Bool)

(assert (= bs!876953 (and d!1403135 b!4538171)))

(assert (=> bs!876953 (not (= lambda!176059 lambda!175771))))

(assert (=> bs!876933 (= (= lt!1713258 lt!1713974) (= lambda!176059 lambda!176000))))

(assert (=> d!1403135 true))

(assert (=> d!1403135 (forall!10343 (toList!4403 lt!1713121) lambda!176059)))

(declare-fun lt!1714303 () Unit!98176)

(assert (=> d!1403135 (= lt!1714303 (choose!29883 lt!1713121 lt!1713258 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1403135 (forall!10343 (toList!4403 (+!1604 lt!1713121 (tuple2!51227 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))) lambda!176059)))

(assert (=> d!1403135 (= (addForallContainsKeyThenBeforeAdding!364 lt!1713121 lt!1713258 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))) lt!1714303)))

(declare-fun bs!876961 () Bool)

(assert (= bs!876961 d!1403135))

(declare-fun m!5305667 () Bool)

(assert (=> bs!876961 m!5305667))

(declare-fun m!5305669 () Bool)

(assert (=> bs!876961 m!5305669))

(declare-fun m!5305671 () Bool)

(assert (=> bs!876961 m!5305671))

(declare-fun m!5305673 () Bool)

(assert (=> bs!876961 m!5305673))

(assert (=> b!4538248 d!1403135))

(declare-fun d!1403145 () Bool)

(declare-fun e!2828900 () Bool)

(assert (=> d!1403145 e!2828900))

(declare-fun res!1891824 () Bool)

(assert (=> d!1403145 (=> (not res!1891824) (not e!2828900))))

(declare-fun lt!1714332 () ListMap!3665)

(assert (=> d!1403145 (= res!1891824 (contains!13538 lt!1714332 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1714330 () List!50872)

(assert (=> d!1403145 (= lt!1714332 (ListMap!3666 lt!1714330))))

(declare-fun lt!1714329 () Unit!98176)

(declare-fun lt!1714331 () Unit!98176)

(assert (=> d!1403145 (= lt!1714329 lt!1714331)))

(assert (=> d!1403145 (= (getValueByKey!1144 lt!1714330 (_1!28907 (h!56627 (_2!28908 lt!1713093)))) (Some!11199 (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1403145 (= lt!1714331 (lemmaContainsTupThenGetReturnValue!719 lt!1714330 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1403145 (= lt!1714330 (insertNoDuplicatedKeys!293 (toList!4403 lt!1713121) (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1403145 (= (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093))) lt!1714332)))

(declare-fun b!4539703 () Bool)

(declare-fun res!1891823 () Bool)

(assert (=> b!4539703 (=> (not res!1891823) (not e!2828900))))

(assert (=> b!4539703 (= res!1891823 (= (getValueByKey!1144 (toList!4403 lt!1714332) (_1!28907 (h!56627 (_2!28908 lt!1713093)))) (Some!11199 (_2!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4539704 () Bool)

(assert (=> b!4539704 (= e!2828900 (contains!13542 (toList!4403 lt!1714332) (h!56627 (_2!28908 lt!1713093))))))

(assert (= (and d!1403145 res!1891824) b!4539703))

(assert (= (and b!4539703 res!1891823) b!4539704))

(declare-fun m!5305675 () Bool)

(assert (=> d!1403145 m!5305675))

(declare-fun m!5305677 () Bool)

(assert (=> d!1403145 m!5305677))

(declare-fun m!5305679 () Bool)

(assert (=> d!1403145 m!5305679))

(declare-fun m!5305681 () Bool)

(assert (=> d!1403145 m!5305681))

(declare-fun m!5305683 () Bool)

(assert (=> b!4539703 m!5305683))

(declare-fun m!5305685 () Bool)

(assert (=> b!4539704 m!5305685))

(assert (=> b!4538248 d!1403145))

(declare-fun d!1403147 () Bool)

(declare-fun res!1891825 () Bool)

(declare-fun e!2828901 () Bool)

(assert (=> d!1403147 (=> res!1891825 e!2828901)))

(assert (=> d!1403147 (= res!1891825 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1403147 (= (forall!10343 (_2!28908 lt!1713093) lambda!175837) e!2828901)))

(declare-fun b!4539705 () Bool)

(declare-fun e!2828902 () Bool)

(assert (=> b!4539705 (= e!2828901 e!2828902)))

(declare-fun res!1891826 () Bool)

(assert (=> b!4539705 (=> (not res!1891826) (not e!2828902))))

(assert (=> b!4539705 (= res!1891826 (dynLambda!21212 lambda!175837 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun b!4539706 () Bool)

(assert (=> b!4539706 (= e!2828902 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!175837))))

(assert (= (and d!1403147 (not res!1891825)) b!4539705))

(assert (= (and b!4539705 res!1891826) b!4539706))

(declare-fun b_lambda!157825 () Bool)

(assert (=> (not b_lambda!157825) (not b!4539705)))

(declare-fun m!5305687 () Bool)

(assert (=> b!4539705 m!5305687))

(declare-fun m!5305689 () Bool)

(assert (=> b!4539706 m!5305689))

(assert (=> b!4538248 d!1403147))

(declare-fun b!4539707 () Bool)

(declare-fun e!2828903 () Bool)

(assert (=> b!4539707 (= e!2828903 (not (contains!13540 (keys!17658 lt!1713264) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun bm!316566 () Bool)

(declare-fun call!316571 () Bool)

(declare-fun e!2828908 () List!50875)

(assert (=> bm!316566 (= call!316571 (contains!13540 e!2828908 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun c!775406 () Bool)

(declare-fun c!775408 () Bool)

(assert (=> bm!316566 (= c!775406 c!775408)))

(declare-fun b!4539708 () Bool)

(declare-fun e!2828906 () Bool)

(assert (=> b!4539708 (= e!2828906 (contains!13540 (keys!17658 lt!1713264) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun b!4539709 () Bool)

(declare-fun e!2828904 () Bool)

(assert (=> b!4539709 (= e!2828904 e!2828906)))

(declare-fun res!1891829 () Bool)

(assert (=> b!4539709 (=> (not res!1891829) (not e!2828906))))

(assert (=> b!4539709 (= res!1891829 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713264) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(declare-fun b!4539710 () Bool)

(declare-fun e!2828907 () Unit!98176)

(declare-fun Unit!98489 () Unit!98176)

(assert (=> b!4539710 (= e!2828907 Unit!98489)))

(declare-fun b!4539711 () Bool)

(declare-fun e!2828905 () Unit!98176)

(assert (=> b!4539711 (= e!2828905 e!2828907)))

(declare-fun c!775407 () Bool)

(assert (=> b!4539711 (= c!775407 call!316571)))

(declare-fun d!1403149 () Bool)

(assert (=> d!1403149 e!2828904))

(declare-fun res!1891828 () Bool)

(assert (=> d!1403149 (=> res!1891828 e!2828904)))

(assert (=> d!1403149 (= res!1891828 e!2828903)))

(declare-fun res!1891827 () Bool)

(assert (=> d!1403149 (=> (not res!1891827) (not e!2828903))))

(declare-fun lt!1714334 () Bool)

(assert (=> d!1403149 (= res!1891827 (not lt!1714334))))

(declare-fun lt!1714336 () Bool)

(assert (=> d!1403149 (= lt!1714334 lt!1714336)))

(declare-fun lt!1714335 () Unit!98176)

(assert (=> d!1403149 (= lt!1714335 e!2828905)))

(assert (=> d!1403149 (= c!775408 lt!1714336)))

(assert (=> d!1403149 (= lt!1714336 (containsKey!1872 (toList!4403 lt!1713264) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> d!1403149 (= (contains!13538 lt!1713264 (_1!28907 (h!56627 (_2!28908 lt!1713093)))) lt!1714334)))

(declare-fun b!4539712 () Bool)

(assert (=> b!4539712 (= e!2828908 (getKeysList!491 (toList!4403 lt!1713264)))))

(declare-fun b!4539713 () Bool)

(assert (=> b!4539713 false))

(declare-fun lt!1714340 () Unit!98176)

(declare-fun lt!1714337 () Unit!98176)

(assert (=> b!4539713 (= lt!1714340 lt!1714337)))

(assert (=> b!4539713 (containsKey!1872 (toList!4403 lt!1713264) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4539713 (= lt!1714337 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713264) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun Unit!98491 () Unit!98176)

(assert (=> b!4539713 (= e!2828907 Unit!98491)))

(declare-fun b!4539714 () Bool)

(declare-fun lt!1714338 () Unit!98176)

(assert (=> b!4539714 (= e!2828905 lt!1714338)))

(declare-fun lt!1714339 () Unit!98176)

(assert (=> b!4539714 (= lt!1714339 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713264) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4539714 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713264) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1714333 () Unit!98176)

(assert (=> b!4539714 (= lt!1714333 lt!1714339)))

(assert (=> b!4539714 (= lt!1714338 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713264) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4539714 call!316571))

(declare-fun b!4539715 () Bool)

(assert (=> b!4539715 (= e!2828908 (keys!17658 lt!1713264))))

(assert (= (and d!1403149 c!775408) b!4539714))

(assert (= (and d!1403149 (not c!775408)) b!4539711))

(assert (= (and b!4539711 c!775407) b!4539713))

(assert (= (and b!4539711 (not c!775407)) b!4539710))

(assert (= (or b!4539714 b!4539711) bm!316566))

(assert (= (and bm!316566 c!775406) b!4539712))

(assert (= (and bm!316566 (not c!775406)) b!4539715))

(assert (= (and d!1403149 res!1891827) b!4539707))

(assert (= (and d!1403149 (not res!1891828)) b!4539709))

(assert (= (and b!4539709 res!1891829) b!4539708))

(declare-fun m!5305691 () Bool)

(assert (=> bm!316566 m!5305691))

(declare-fun m!5305693 () Bool)

(assert (=> b!4539709 m!5305693))

(assert (=> b!4539709 m!5305693))

(declare-fun m!5305695 () Bool)

(assert (=> b!4539709 m!5305695))

(declare-fun m!5305697 () Bool)

(assert (=> d!1403149 m!5305697))

(declare-fun m!5305699 () Bool)

(assert (=> b!4539707 m!5305699))

(assert (=> b!4539707 m!5305699))

(declare-fun m!5305701 () Bool)

(assert (=> b!4539707 m!5305701))

(assert (=> b!4539715 m!5305699))

(assert (=> b!4539708 m!5305699))

(assert (=> b!4539708 m!5305699))

(assert (=> b!4539708 m!5305701))

(assert (=> b!4539713 m!5305697))

(declare-fun m!5305703 () Bool)

(assert (=> b!4539713 m!5305703))

(declare-fun m!5305705 () Bool)

(assert (=> b!4539714 m!5305705))

(assert (=> b!4539714 m!5305693))

(assert (=> b!4539714 m!5305693))

(assert (=> b!4539714 m!5305695))

(declare-fun m!5305707 () Bool)

(assert (=> b!4539714 m!5305707))

(declare-fun m!5305709 () Bool)

(assert (=> b!4539712 m!5305709))

(assert (=> b!4538248 d!1403149))

(declare-fun d!1403151 () Bool)

(assert (=> d!1403151 (dynLambda!21212 lambda!175837 (h!56627 (_2!28908 lt!1713093)))))

(declare-fun lt!1714341 () Unit!98176)

(assert (=> d!1403151 (= lt!1714341 (choose!29871 (toList!4403 lt!1713264) lambda!175837 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun e!2828909 () Bool)

(assert (=> d!1403151 e!2828909))

(declare-fun res!1891830 () Bool)

(assert (=> d!1403151 (=> (not res!1891830) (not e!2828909))))

(assert (=> d!1403151 (= res!1891830 (forall!10343 (toList!4403 lt!1713264) lambda!175837))))

(assert (=> d!1403151 (= (forallContained!2605 (toList!4403 lt!1713264) lambda!175837 (h!56627 (_2!28908 lt!1713093))) lt!1714341)))

(declare-fun b!4539716 () Bool)

(assert (=> b!4539716 (= e!2828909 (contains!13542 (toList!4403 lt!1713264) (h!56627 (_2!28908 lt!1713093))))))

(assert (= (and d!1403151 res!1891830) b!4539716))

(declare-fun b_lambda!157827 () Bool)

(assert (=> (not b_lambda!157827) (not d!1403151)))

(assert (=> d!1403151 m!5305687))

(declare-fun m!5305711 () Bool)

(assert (=> d!1403151 m!5305711))

(assert (=> d!1403151 m!5302713))

(declare-fun m!5305713 () Bool)

(assert (=> b!4539716 m!5305713))

(assert (=> b!4538248 d!1403151))

(assert (=> b!4538616 d!1402537))

(declare-fun d!1403153 () Bool)

(declare-fun res!1891831 () Bool)

(declare-fun e!2828910 () Bool)

(assert (=> d!1403153 (=> res!1891831 e!2828910)))

(assert (=> d!1403153 (= res!1891831 (and ((_ is Cons!50748) (t!357834 lt!1713088)) (= (_1!28907 (h!56627 (t!357834 lt!1713088))) key!3287)))))

(assert (=> d!1403153 (= (containsKey!1870 (t!357834 lt!1713088) key!3287) e!2828910)))

(declare-fun b!4539717 () Bool)

(declare-fun e!2828911 () Bool)

(assert (=> b!4539717 (= e!2828910 e!2828911)))

(declare-fun res!1891832 () Bool)

(assert (=> b!4539717 (=> (not res!1891832) (not e!2828911))))

(assert (=> b!4539717 (= res!1891832 ((_ is Cons!50748) (t!357834 lt!1713088)))))

(declare-fun b!4539718 () Bool)

(assert (=> b!4539718 (= e!2828911 (containsKey!1870 (t!357834 (t!357834 lt!1713088)) key!3287))))

(assert (= (and d!1403153 (not res!1891831)) b!4539717))

(assert (= (and b!4539717 res!1891832) b!4539718))

(declare-fun m!5305715 () Bool)

(assert (=> b!4539718 m!5305715))

(assert (=> b!4538431 d!1403153))

(assert (=> b!4538529 d!1402819))

(assert (=> b!4538529 d!1402821))

(assert (=> d!1402417 d!1402409))

(assert (=> d!1402417 d!1402229))

(declare-fun d!1403155 () Bool)

(assert (=> d!1403155 (= (eq!655 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713121) (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713095)) (= (content!8434 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713121))) (content!8434 (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713095)))))))

(declare-fun bs!876992 () Bool)

(assert (= bs!876992 d!1403155))

(declare-fun m!5305717 () Bool)

(assert (=> bs!876992 m!5305717))

(declare-fun m!5305719 () Bool)

(assert (=> bs!876992 m!5305719))

(assert (=> d!1402417 d!1403155))

(assert (=> d!1402417 d!1402299))

(declare-fun d!1403157 () Bool)

(assert (=> d!1403157 (eq!655 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713121) (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713095))))

(assert (=> d!1403157 true))

(declare-fun _$16!263 () Unit!98176)

(assert (=> d!1403157 (= (choose!29872 lt!1713121 lt!1713095 (_2!28908 lt!1713093)) _$16!263)))

(declare-fun bs!877016 () Bool)

(assert (= bs!877016 d!1403157))

(assert (=> bs!877016 m!5302479))

(assert (=> bs!877016 m!5302563))

(assert (=> bs!877016 m!5302479))

(assert (=> bs!877016 m!5302563))

(assert (=> bs!877016 m!5303287))

(assert (=> d!1402417 d!1403157))

(declare-fun d!1403159 () Bool)

(declare-fun c!775409 () Bool)

(assert (=> d!1403159 (= c!775409 ((_ is Nil!50751) (keys!17658 lt!1713092)))))

(declare-fun e!2828912 () (InoxSet K!12135))

(assert (=> d!1403159 (= (content!8435 (keys!17658 lt!1713092)) e!2828912)))

(declare-fun b!4539719 () Bool)

(assert (=> b!4539719 (= e!2828912 ((as const (Array K!12135 Bool)) false))))

(declare-fun b!4539720 () Bool)

(assert (=> b!4539720 (= e!2828912 ((_ map or) (store ((as const (Array K!12135 Bool)) false) (h!56632 (keys!17658 lt!1713092)) true) (content!8435 (t!357837 (keys!17658 lt!1713092)))))))

(assert (= (and d!1403159 c!775409) b!4539719))

(assert (= (and d!1403159 (not c!775409)) b!4539720))

(declare-fun m!5305721 () Bool)

(assert (=> b!4539720 m!5305721))

(declare-fun m!5305723 () Bool)

(assert (=> b!4539720 m!5305723))

(assert (=> b!4538432 d!1403159))

(assert (=> b!4538432 d!1402709))

(declare-fun d!1403161 () Bool)

(declare-fun c!775410 () Bool)

(assert (=> d!1403161 (= c!775410 ((_ is Nil!50751) (keys!17658 lt!1713448)))))

(declare-fun e!2828913 () (InoxSet K!12135))

(assert (=> d!1403161 (= (content!8435 (keys!17658 lt!1713448)) e!2828913)))

(declare-fun b!4539721 () Bool)

(assert (=> b!4539721 (= e!2828913 ((as const (Array K!12135 Bool)) false))))

(declare-fun b!4539722 () Bool)

(assert (=> b!4539722 (= e!2828913 ((_ map or) (store ((as const (Array K!12135 Bool)) false) (h!56632 (keys!17658 lt!1713448)) true) (content!8435 (t!357837 (keys!17658 lt!1713448)))))))

(assert (= (and d!1403161 c!775410) b!4539721))

(assert (= (and d!1403161 (not c!775410)) b!4539722))

(declare-fun m!5305725 () Bool)

(assert (=> b!4539722 m!5305725))

(declare-fun m!5305727 () Bool)

(assert (=> b!4539722 m!5305727))

(assert (=> b!4538432 d!1403161))

(declare-fun bs!877018 () Bool)

(declare-fun b!4539724 () Bool)

(assert (= bs!877018 (and b!4539724 b!4538823)))

(declare-fun lambda!176064 () Int)

(assert (=> bs!877018 (= (= (toList!4403 lt!1713448) (toList!4403 lt!1713578)) (= lambda!176064 lambda!175936))))

(declare-fun bs!877021 () Bool)

(assert (= bs!877021 (and b!4539724 b!4538671)))

(assert (=> bs!877021 (= (= (toList!4403 lt!1713448) (toList!4403 lt!1713382)) (= lambda!176064 lambda!175916))))

(declare-fun bs!877023 () Bool)

(assert (= bs!877023 (and b!4539724 b!4539090)))

(assert (=> bs!877023 (= (= (toList!4403 lt!1713448) (toList!4403 lt!1713092)) (= lambda!176064 lambda!175966))))

(declare-fun bs!877024 () Bool)

(assert (= bs!877024 (and b!4539724 b!4538818)))

(assert (=> bs!877024 (= (= (toList!4403 lt!1713448) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176064 lambda!175934))))

(declare-fun bs!877026 () Bool)

(assert (= bs!877026 (and b!4539724 b!4539590)))

(assert (=> bs!877026 (= (= (toList!4403 lt!1713448) (t!357834 (toList!4403 lt!1713092))) (= lambda!176064 lambda!176041))))

(declare-fun bs!877028 () Bool)

(assert (= bs!877028 (and b!4539724 b!4538664)))

(assert (=> bs!877028 (= (= (toList!4403 lt!1713448) (toList!4403 lt!1713103)) (= lambda!176064 lambda!175914))))

(declare-fun bs!877029 () Bool)

(assert (= bs!877029 (and b!4539724 b!4539578)))

(assert (=> bs!877029 (= (= (toList!4403 lt!1713448) (t!357834 (toList!4403 lt!1713103))) (= lambda!176064 lambda!176033))))

(declare-fun bs!877031 () Bool)

(assert (= bs!877031 (and b!4539724 b!4539585)))

(assert (=> bs!877031 (= (= (toList!4403 lt!1713448) (toList!4403 lt!1713092)) (= lambda!176064 lambda!176044))))

(declare-fun bs!877033 () Bool)

(assert (= bs!877033 (and b!4539724 b!4539572)))

(assert (=> bs!877033 (= (= (toList!4403 lt!1713448) (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103)))) (= lambda!176064 lambda!176034))))

(declare-fun bs!877035 () Bool)

(assert (= bs!877035 (and b!4539724 b!4539573)))

(assert (=> bs!877035 (= (= (toList!4403 lt!1713448) (toList!4403 lt!1713103)) (= lambda!176064 lambda!176035))))

(declare-fun bs!877036 () Bool)

(assert (= bs!877036 (and b!4539724 b!4539584)))

(assert (=> bs!877036 (= (= (toList!4403 lt!1713448) (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092)))) (= lambda!176064 lambda!176043))))

(declare-fun bs!877038 () Bool)

(assert (= bs!877038 (and b!4539724 b!4539246)))

(assert (=> bs!877038 (= (= (toList!4403 lt!1713448) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= lambda!176064 lambda!175989))))

(assert (=> b!4539724 true))

(declare-fun bs!877042 () Bool)

(declare-fun b!4539725 () Bool)

(assert (= bs!877042 (and b!4539725 b!4539247)))

(declare-fun lambda!176065 () Int)

(assert (=> bs!877042 (= lambda!176065 lambda!175990)))

(declare-fun bs!877044 () Bool)

(assert (= bs!877044 (and b!4539725 b!4538672)))

(assert (=> bs!877044 (= lambda!176065 lambda!175917)))

(declare-fun bs!877045 () Bool)

(assert (= bs!877045 (and b!4539725 b!4539576)))

(assert (=> bs!877045 (= lambda!176065 lambda!176036)))

(declare-fun bs!877048 () Bool)

(assert (= bs!877048 (and b!4539725 b!4539091)))

(assert (=> bs!877048 (= lambda!176065 lambda!175967)))

(declare-fun bs!877050 () Bool)

(assert (= bs!877050 (and b!4539725 b!4538824)))

(assert (=> bs!877050 (= lambda!176065 lambda!175937)))

(declare-fun bs!877052 () Bool)

(assert (= bs!877052 (and b!4539725 b!4538819)))

(assert (=> bs!877052 (= lambda!176065 lambda!175935)))

(declare-fun bs!877053 () Bool)

(assert (= bs!877053 (and b!4539725 b!4539588)))

(assert (=> bs!877053 (= lambda!176065 lambda!176045)))

(declare-fun bs!877055 () Bool)

(assert (= bs!877055 (and b!4539725 b!4538665)))

(assert (=> bs!877055 (= lambda!176065 lambda!175915)))

(declare-fun d!1403163 () Bool)

(declare-fun e!2828914 () Bool)

(assert (=> d!1403163 e!2828914))

(declare-fun res!1891834 () Bool)

(assert (=> d!1403163 (=> (not res!1891834) (not e!2828914))))

(declare-fun lt!1714342 () List!50875)

(assert (=> d!1403163 (= res!1891834 (noDuplicate!761 lt!1714342))))

(assert (=> d!1403163 (= lt!1714342 (getKeysList!491 (toList!4403 lt!1713448)))))

(assert (=> d!1403163 (= (keys!17658 lt!1713448) lt!1714342)))

(declare-fun b!4539723 () Bool)

(declare-fun res!1891833 () Bool)

(assert (=> b!4539723 (=> (not res!1891833) (not e!2828914))))

(assert (=> b!4539723 (= res!1891833 (= (length!378 lt!1714342) (length!379 (toList!4403 lt!1713448))))))

(declare-fun res!1891835 () Bool)

(assert (=> b!4539724 (=> (not res!1891835) (not e!2828914))))

(assert (=> b!4539724 (= res!1891835 (forall!10344 lt!1714342 lambda!176064))))

(assert (=> b!4539725 (= e!2828914 (= (content!8435 lt!1714342) (content!8435 (map!11171 (toList!4403 lt!1713448) lambda!176065))))))

(assert (= (and d!1403163 res!1891834) b!4539723))

(assert (= (and b!4539723 res!1891833) b!4539724))

(assert (= (and b!4539724 res!1891835) b!4539725))

(declare-fun m!5305729 () Bool)

(assert (=> d!1403163 m!5305729))

(declare-fun m!5305731 () Bool)

(assert (=> d!1403163 m!5305731))

(declare-fun m!5305733 () Bool)

(assert (=> b!4539723 m!5305733))

(declare-fun m!5305735 () Bool)

(assert (=> b!4539723 m!5305735))

(declare-fun m!5305737 () Bool)

(assert (=> b!4539724 m!5305737))

(declare-fun m!5305739 () Bool)

(assert (=> b!4539725 m!5305739))

(declare-fun m!5305741 () Bool)

(assert (=> b!4539725 m!5305741))

(assert (=> b!4539725 m!5305741))

(declare-fun m!5305743 () Bool)

(assert (=> b!4539725 m!5305743))

(assert (=> b!4538432 d!1403163))

(declare-fun d!1403165 () Bool)

(assert (=> d!1403165 (= (tail!7800 (toList!4404 lm!1477)) (t!357835 (toList!4404 lm!1477)))))

(assert (=> d!1402479 d!1403165))

(declare-fun d!1403167 () Bool)

(assert (=> d!1403167 (= (head!9478 (toList!4404 lt!1713101)) (h!56628 (toList!4404 lt!1713101)))))

(assert (=> d!1402465 d!1403167))

(declare-fun d!1403169 () Bool)

(declare-fun res!1891836 () Bool)

(declare-fun e!2828915 () Bool)

(assert (=> d!1403169 (=> res!1891836 e!2828915)))

(assert (=> d!1403169 (= res!1891836 ((_ is Nil!50748) (ite c!775049 (toList!4403 lt!1713121) (_2!28908 lt!1713093))))))

(assert (=> d!1403169 (= (forall!10343 (ite c!775049 (toList!4403 lt!1713121) (_2!28908 lt!1713093)) (ite c!775049 lambda!175834 lambda!175837)) e!2828915)))

(declare-fun b!4539726 () Bool)

(declare-fun e!2828916 () Bool)

(assert (=> b!4539726 (= e!2828915 e!2828916)))

(declare-fun res!1891837 () Bool)

(assert (=> b!4539726 (=> (not res!1891837) (not e!2828916))))

(assert (=> b!4539726 (= res!1891837 (dynLambda!21212 (ite c!775049 lambda!175834 lambda!175837) (h!56627 (ite c!775049 (toList!4403 lt!1713121) (_2!28908 lt!1713093)))))))

(declare-fun b!4539727 () Bool)

(assert (=> b!4539727 (= e!2828916 (forall!10343 (t!357834 (ite c!775049 (toList!4403 lt!1713121) (_2!28908 lt!1713093))) (ite c!775049 lambda!175834 lambda!175837)))))

(assert (= (and d!1403169 (not res!1891836)) b!4539726))

(assert (= (and b!4539726 res!1891837) b!4539727))

(declare-fun b_lambda!157829 () Bool)

(assert (=> (not b_lambda!157829) (not b!4539726)))

(declare-fun m!5305745 () Bool)

(assert (=> b!4539726 m!5305745))

(declare-fun m!5305747 () Bool)

(assert (=> b!4539727 m!5305747))

(assert (=> bm!316431 d!1403169))

(declare-fun bs!877073 () Bool)

(declare-fun b!4539736 () Bool)

(assert (= bs!877073 (and b!4539736 b!4538823)))

(declare-fun lambda!176066 () Int)

(assert (=> bs!877073 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (toList!4403 lt!1713578)) (= lambda!176066 lambda!175936))))

(declare-fun bs!877074 () Bool)

(assert (= bs!877074 (and b!4539736 b!4538671)))

(assert (=> bs!877074 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (toList!4403 lt!1713382)) (= lambda!176066 lambda!175916))))

(declare-fun bs!877075 () Bool)

(assert (= bs!877075 (and b!4539736 b!4539090)))

(assert (=> bs!877075 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (toList!4403 lt!1713092)) (= lambda!176066 lambda!175966))))

(declare-fun bs!877076 () Bool)

(assert (= bs!877076 (and b!4539736 b!4538818)))

(assert (=> bs!877076 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176066 lambda!175934))))

(declare-fun bs!877077 () Bool)

(assert (= bs!877077 (and b!4539736 b!4538664)))

(assert (=> bs!877077 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (toList!4403 lt!1713103)) (= lambda!176066 lambda!175914))))

(declare-fun bs!877078 () Bool)

(assert (= bs!877078 (and b!4539736 b!4539578)))

(assert (=> bs!877078 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 lt!1713103))) (= lambda!176066 lambda!176033))))

(declare-fun bs!877079 () Bool)

(assert (= bs!877079 (and b!4539736 b!4539585)))

(assert (=> bs!877079 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (toList!4403 lt!1713092)) (= lambda!176066 lambda!176044))))

(declare-fun bs!877080 () Bool)

(assert (= bs!877080 (and b!4539736 b!4539590)))

(assert (=> bs!877080 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 lt!1713092))) (= lambda!176066 lambda!176041))))

(declare-fun bs!877081 () Bool)

(assert (= bs!877081 (and b!4539736 b!4539724)))

(assert (=> bs!877081 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (toList!4403 lt!1713448)) (= lambda!176066 lambda!176064))))

(declare-fun bs!877082 () Bool)

(assert (= bs!877082 (and b!4539736 b!4539572)))

(assert (=> bs!877082 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103)))) (= lambda!176066 lambda!176034))))

(declare-fun bs!877083 () Bool)

(assert (= bs!877083 (and b!4539736 b!4539573)))

(assert (=> bs!877083 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (toList!4403 lt!1713103)) (= lambda!176066 lambda!176035))))

(declare-fun bs!877084 () Bool)

(assert (= bs!877084 (and b!4539736 b!4539584)))

(assert (=> bs!877084 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092)))) (= lambda!176066 lambda!176043))))

(declare-fun bs!877085 () Bool)

(assert (= bs!877085 (and b!4539736 b!4539246)))

(assert (=> bs!877085 (= (= (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= lambda!176066 lambda!175989))))

(assert (=> b!4539736 true))

(declare-fun bs!877086 () Bool)

(declare-fun b!4539730 () Bool)

(assert (= bs!877086 (and b!4539730 b!4538823)))

(declare-fun lambda!176067 () Int)

(assert (=> bs!877086 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (toList!4403 lt!1713578)) (= lambda!176067 lambda!175936))))

(declare-fun bs!877087 () Bool)

(assert (= bs!877087 (and b!4539730 b!4538671)))

(assert (=> bs!877087 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (toList!4403 lt!1713382)) (= lambda!176067 lambda!175916))))

(declare-fun bs!877088 () Bool)

(assert (= bs!877088 (and b!4539730 b!4539090)))

(assert (=> bs!877088 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (toList!4403 lt!1713092)) (= lambda!176067 lambda!175966))))

(declare-fun bs!877089 () Bool)

(assert (= bs!877089 (and b!4539730 b!4538818)))

(assert (=> bs!877089 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176067 lambda!175934))))

(declare-fun bs!877090 () Bool)

(assert (= bs!877090 (and b!4539730 b!4538664)))

(assert (=> bs!877090 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (toList!4403 lt!1713103)) (= lambda!176067 lambda!175914))))

(declare-fun bs!877091 () Bool)

(assert (= bs!877091 (and b!4539730 b!4539578)))

(assert (=> bs!877091 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (t!357834 (toList!4403 lt!1713103))) (= lambda!176067 lambda!176033))))

(declare-fun bs!877092 () Bool)

(assert (= bs!877092 (and b!4539730 b!4539736)))

(assert (=> bs!877092 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (= lambda!176067 lambda!176066))))

(declare-fun bs!877093 () Bool)

(assert (= bs!877093 (and b!4539730 b!4539585)))

(assert (=> bs!877093 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (toList!4403 lt!1713092)) (= lambda!176067 lambda!176044))))

(declare-fun bs!877094 () Bool)

(assert (= bs!877094 (and b!4539730 b!4539590)))

(assert (=> bs!877094 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (t!357834 (toList!4403 lt!1713092))) (= lambda!176067 lambda!176041))))

(declare-fun bs!877095 () Bool)

(assert (= bs!877095 (and b!4539730 b!4539724)))

(assert (=> bs!877095 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (toList!4403 lt!1713448)) (= lambda!176067 lambda!176064))))

(declare-fun bs!877096 () Bool)

(assert (= bs!877096 (and b!4539730 b!4539572)))

(assert (=> bs!877096 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103)))) (= lambda!176067 lambda!176034))))

(declare-fun bs!877097 () Bool)

(assert (= bs!877097 (and b!4539730 b!4539573)))

(assert (=> bs!877097 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (toList!4403 lt!1713103)) (= lambda!176067 lambda!176035))))

(declare-fun bs!877098 () Bool)

(assert (= bs!877098 (and b!4539730 b!4539584)))

(assert (=> bs!877098 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092)))) (= lambda!176067 lambda!176043))))

(declare-fun bs!877099 () Bool)

(assert (= bs!877099 (and b!4539730 b!4539246)))

(assert (=> bs!877099 (= (= (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (= lambda!176067 lambda!175989))))

(assert (=> b!4539730 true))

(declare-fun bs!877100 () Bool)

(declare-fun b!4539731 () Bool)

(assert (= bs!877100 (and b!4539731 b!4538823)))

(declare-fun lambda!176068 () Int)

(assert (=> bs!877100 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713578)) (= lambda!176068 lambda!175936))))

(declare-fun bs!877101 () Bool)

(assert (= bs!877101 (and b!4539731 b!4538671)))

(assert (=> bs!877101 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713382)) (= lambda!176068 lambda!175916))))

(declare-fun bs!877102 () Bool)

(assert (= bs!877102 (and b!4539731 b!4539090)))

(assert (=> bs!877102 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713092)) (= lambda!176068 lambda!175966))))

(declare-fun bs!877103 () Bool)

(assert (= bs!877103 (and b!4539731 b!4538818)))

(assert (=> bs!877103 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103))) (= lambda!176068 lambda!175934))))

(declare-fun bs!877104 () Bool)

(assert (= bs!877104 (and b!4539731 b!4539730)))

(assert (=> bs!877104 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (Cons!50748 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))) (= lambda!176068 lambda!176067))))

(declare-fun bs!877105 () Bool)

(assert (= bs!877105 (and b!4539731 b!4538664)))

(assert (=> bs!877105 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713103)) (= lambda!176068 lambda!175914))))

(declare-fun bs!877106 () Bool)

(assert (= bs!877106 (and b!4539731 b!4539578)))

(assert (=> bs!877106 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (t!357834 (toList!4403 lt!1713103))) (= lambda!176068 lambda!176033))))

(declare-fun bs!877107 () Bool)

(assert (= bs!877107 (and b!4539731 b!4539736)))

(assert (=> bs!877107 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (= lambda!176068 lambda!176066))))

(declare-fun bs!877108 () Bool)

(assert (= bs!877108 (and b!4539731 b!4539585)))

(assert (=> bs!877108 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713092)) (= lambda!176068 lambda!176044))))

(declare-fun bs!877109 () Bool)

(assert (= bs!877109 (and b!4539731 b!4539590)))

(assert (=> bs!877109 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (t!357834 (toList!4403 lt!1713092))) (= lambda!176068 lambda!176041))))

(declare-fun bs!877110 () Bool)

(assert (= bs!877110 (and b!4539731 b!4539724)))

(assert (=> bs!877110 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713448)) (= lambda!176068 lambda!176064))))

(declare-fun bs!877111 () Bool)

(assert (= bs!877111 (and b!4539731 b!4539572)))

(assert (=> bs!877111 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (Cons!50748 (h!56627 (toList!4403 lt!1713103)) (t!357834 (toList!4403 lt!1713103)))) (= lambda!176068 lambda!176034))))

(declare-fun bs!877112 () Bool)

(assert (= bs!877112 (and b!4539731 b!4539573)))

(assert (=> bs!877112 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (toList!4403 lt!1713103)) (= lambda!176068 lambda!176035))))

(declare-fun bs!877113 () Bool)

(assert (= bs!877113 (and b!4539731 b!4539584)))

(assert (=> bs!877113 (= (= (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (Cons!50748 (h!56627 (toList!4403 lt!1713092)) (t!357834 (toList!4403 lt!1713092)))) (= lambda!176068 lambda!176043))))

(declare-fun bs!877114 () Bool)

(assert (= bs!877114 (and b!4539731 b!4539246)))

(assert (=> bs!877114 (= lambda!176068 lambda!175989)))

(assert (=> b!4539731 true))

(declare-fun bs!877115 () Bool)

(declare-fun b!4539734 () Bool)

(assert (= bs!877115 (and b!4539734 b!4539247)))

(declare-fun lambda!176069 () Int)

(assert (=> bs!877115 (= lambda!176069 lambda!175990)))

(declare-fun bs!877116 () Bool)

(assert (= bs!877116 (and b!4539734 b!4538672)))

(assert (=> bs!877116 (= lambda!176069 lambda!175917)))

(declare-fun bs!877117 () Bool)

(assert (= bs!877117 (and b!4539734 b!4539576)))

(assert (=> bs!877117 (= lambda!176069 lambda!176036)))

(declare-fun bs!877118 () Bool)

(assert (= bs!877118 (and b!4539734 b!4539091)))

(assert (=> bs!877118 (= lambda!176069 lambda!175967)))

(declare-fun bs!877119 () Bool)

(assert (= bs!877119 (and b!4539734 b!4539725)))

(assert (=> bs!877119 (= lambda!176069 lambda!176065)))

(declare-fun bs!877120 () Bool)

(assert (= bs!877120 (and b!4539734 b!4538824)))

(assert (=> bs!877120 (= lambda!176069 lambda!175937)))

(declare-fun bs!877121 () Bool)

(assert (= bs!877121 (and b!4539734 b!4538819)))

(assert (=> bs!877121 (= lambda!176069 lambda!175935)))

(declare-fun bs!877122 () Bool)

(assert (= bs!877122 (and b!4539734 b!4539588)))

(assert (=> bs!877122 (= lambda!176069 lambda!176045)))

(declare-fun bs!877123 () Bool)

(assert (= bs!877123 (and b!4539734 b!4538665)))

(assert (=> bs!877123 (= lambda!176069 lambda!175915)))

(declare-fun b!4539728 () Bool)

(declare-fun e!2828920 () List!50875)

(assert (=> b!4539728 (= e!2828920 Nil!50751)))

(declare-fun b!4539729 () Bool)

(declare-fun e!2828917 () Unit!98176)

(declare-fun Unit!98493 () Unit!98176)

(assert (=> b!4539729 (= e!2828917 Unit!98493)))

(assert (=> b!4539730 (= e!2828920 (Cons!50751 (_1!28907 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (getKeysList!491 (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))))

(declare-fun c!775411 () Bool)

(assert (=> b!4539730 (= c!775411 (containsKey!1872 (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) (_1!28907 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))))

(declare-fun lt!1714347 () Unit!98176)

(assert (=> b!4539730 (= lt!1714347 e!2828917)))

(declare-fun c!775413 () Bool)

(assert (=> b!4539730 (= c!775413 (contains!13540 (getKeysList!491 (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) (_1!28907 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))))

(declare-fun lt!1714349 () Unit!98176)

(declare-fun e!2828918 () Unit!98176)

(assert (=> b!4539730 (= lt!1714349 e!2828918)))

(declare-fun lt!1714344 () List!50875)

(assert (=> b!4539730 (= lt!1714344 (getKeysList!491 (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))))

(declare-fun lt!1714345 () Unit!98176)

(assert (=> b!4539730 (= lt!1714345 (lemmaForallContainsAddHeadPreserves!183 (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) lt!1714344 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))))

(assert (=> b!4539730 (forall!10344 lt!1714344 lambda!176067)))

(declare-fun lt!1714346 () Unit!98176)

(assert (=> b!4539730 (= lt!1714346 lt!1714345)))

(declare-fun res!1891839 () Bool)

(declare-fun e!2828919 () Bool)

(assert (=> b!4539731 (=> (not res!1891839) (not e!2828919))))

(declare-fun lt!1714348 () List!50875)

(assert (=> b!4539731 (= res!1891839 (forall!10344 lt!1714348 lambda!176068))))

(declare-fun b!4539732 () Bool)

(assert (=> b!4539732 false))

(declare-fun Unit!98494 () Unit!98176)

(assert (=> b!4539732 (= e!2828917 Unit!98494)))

(declare-fun b!4539733 () Bool)

(declare-fun Unit!98495 () Unit!98176)

(assert (=> b!4539733 (= e!2828918 Unit!98495)))

(assert (=> b!4539734 (= e!2828919 (= (content!8435 lt!1714348) (content!8435 (map!11171 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) lambda!176069))))))

(declare-fun d!1403171 () Bool)

(assert (=> d!1403171 e!2828919))

(declare-fun res!1891838 () Bool)

(assert (=> d!1403171 (=> (not res!1891838) (not e!2828919))))

(assert (=> d!1403171 (= res!1891838 (noDuplicate!761 lt!1714348))))

(assert (=> d!1403171 (= lt!1714348 e!2828920)))

(declare-fun c!775412 () Bool)

(assert (=> d!1403171 (= c!775412 ((_ is Cons!50748) (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))

(assert (=> d!1403171 (invariantList!1043 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))

(assert (=> d!1403171 (= (getKeysList!491 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))) lt!1714348)))

(declare-fun b!4539735 () Bool)

(declare-fun res!1891840 () Bool)

(assert (=> b!4539735 (=> (not res!1891840) (not e!2828919))))

(assert (=> b!4539735 (= res!1891840 (= (length!378 lt!1714348) (length!379 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))))))

(assert (=> b!4539736 false))

(declare-fun lt!1714343 () Unit!98176)

(assert (=> b!4539736 (= lt!1714343 (forallContained!2607 (getKeysList!491 (t!357834 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))))) lambda!176066 (_1!28907 (h!56627 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 lm!1477))))))))))

(declare-fun Unit!98496 () Unit!98176)

(assert (=> b!4539736 (= e!2828918 Unit!98496)))

(assert (= (and d!1403171 c!775412) b!4539730))

(assert (= (and d!1403171 (not c!775412)) b!4539728))

(assert (= (and b!4539730 c!775411) b!4539732))

(assert (= (and b!4539730 (not c!775411)) b!4539729))

(assert (= (and b!4539730 c!775413) b!4539736))

(assert (= (and b!4539730 (not c!775413)) b!4539733))

(assert (= (and d!1403171 res!1891838) b!4539735))

(assert (= (and b!4539735 res!1891840) b!4539731))

(assert (= (and b!4539731 res!1891839) b!4539734))

(declare-fun m!5305841 () Bool)

(assert (=> d!1403171 m!5305841))

(assert (=> d!1403171 m!5303771))

(declare-fun m!5305843 () Bool)

(assert (=> b!4539730 m!5305843))

(assert (=> b!4539730 m!5305843))

(declare-fun m!5305845 () Bool)

(assert (=> b!4539730 m!5305845))

(declare-fun m!5305847 () Bool)

(assert (=> b!4539730 m!5305847))

(declare-fun m!5305849 () Bool)

(assert (=> b!4539730 m!5305849))

(declare-fun m!5305851 () Bool)

(assert (=> b!4539730 m!5305851))

(declare-fun m!5305853 () Bool)

(assert (=> b!4539735 m!5305853))

(assert (=> b!4539735 m!5304559))

(assert (=> b!4539736 m!5305843))

(assert (=> b!4539736 m!5305843))

(declare-fun m!5305855 () Bool)

(assert (=> b!4539736 m!5305855))

(declare-fun m!5305857 () Bool)

(assert (=> b!4539731 m!5305857))

(declare-fun m!5305859 () Bool)

(assert (=> b!4539734 m!5305859))

(declare-fun m!5305861 () Bool)

(assert (=> b!4539734 m!5305861))

(assert (=> b!4539734 m!5305861))

(declare-fun m!5305863 () Bool)

(assert (=> b!4539734 m!5305863))

(assert (=> b!4538602 d!1403171))

(declare-fun d!1403189 () Bool)

(assert (=> d!1403189 (= (invariantList!1043 (toList!4403 lt!1713584)) (noDuplicatedKeys!276 (toList!4403 lt!1713584)))))

(declare-fun bs!877125 () Bool)

(assert (= bs!877125 d!1403189))

(declare-fun m!5305865 () Bool)

(assert (=> bs!877125 m!5305865))

(assert (=> b!4538614 d!1403189))

(declare-fun bs!877132 () Bool)

(declare-fun b!4539768 () Bool)

(assert (= bs!877132 (and b!4539768 d!1402485)))

(declare-fun lambda!176071 () Int)

(assert (=> bs!877132 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713584) (= lambda!176071 lambda!175909))))

(declare-fun bs!877134 () Bool)

(assert (= bs!877134 (and b!4539768 d!1402823)))

(assert (=> bs!877134 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713909) (= lambda!176071 lambda!175983))))

(declare-fun bs!877135 () Bool)

(assert (= bs!877135 (and b!4539768 b!4538685)))

(assert (=> bs!877135 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176071 lambda!175925))))

(declare-fun bs!877137 () Bool)

(assert (= bs!877137 (and b!4539768 d!1402523)))

(assert (=> bs!877137 (not (= lambda!176071 lambda!175918))))

(declare-fun bs!877138 () Bool)

(assert (= bs!877138 (and b!4539768 b!4539182)))

(assert (=> bs!877138 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176071 lambda!175976))))

(declare-fun bs!877140 () Bool)

(assert (= bs!877140 (and b!4539768 b!4539282)))

(assert (=> bs!877140 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176071 lambda!175996))))

(assert (=> bs!877138 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713882) (= lambda!176071 lambda!175977))))

(declare-fun bs!877143 () Bool)

(assert (= bs!877143 (and b!4539768 b!4538501)))

(assert (=> bs!877143 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713493) (= lambda!176071 lambda!175886))))

(declare-fun bs!877145 () Bool)

(assert (= bs!877145 (and b!4539768 b!4539680)))

(assert (=> bs!877145 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176071 lambda!176052))))

(declare-fun bs!877147 () Bool)

(assert (= bs!877147 (and b!4539768 b!4539429)))

(assert (=> bs!877147 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714101) (= lambda!176071 lambda!176015))))

(assert (=> bs!877135 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713639) (= lambda!176071 lambda!175926))))

(declare-fun bs!877149 () Bool)

(assert (= bs!877149 (and b!4539768 b!4539183)))

(assert (=> bs!877149 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176071 lambda!175975))))

(declare-fun bs!877151 () Bool)

(assert (= bs!877151 (and b!4539768 b!4539235)))

(assert (=> bs!877151 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176071 lambda!175980))))

(declare-fun bs!877153 () Bool)

(assert (= bs!877153 (and b!4539768 b!4538248)))

(assert (=> bs!877153 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713121) (= lambda!176071 lambda!175836))))

(declare-fun bs!877156 () Bool)

(assert (= bs!877156 (and b!4539768 b!4538686)))

(assert (=> bs!877156 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176071 lambda!175924))))

(declare-fun bs!877158 () Bool)

(assert (= bs!877158 (and b!4539768 b!4538618)))

(assert (=> bs!877158 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713103) (= lambda!176071 lambda!175906))))

(declare-fun bs!877159 () Bool)

(assert (= bs!877159 (and b!4539768 b!4538678)))

(assert (=> bs!877159 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713617) (= lambda!176071 lambda!175921))))

(declare-fun bs!877161 () Bool)

(assert (= bs!877161 (and b!4539768 d!1402409)))

(assert (=> bs!877161 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713488) (= lambda!176071 lambda!175888))))

(assert (=> bs!877145 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714270) (= lambda!176071 lambda!176054))))

(assert (=> bs!877159 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176071 lambda!175920))))

(declare-fun bs!877165 () Bool)

(assert (= bs!877165 (and b!4539768 d!1402527)))

(assert (=> bs!877165 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713612) (= lambda!176071 lambda!175922))))

(declare-fun bs!877166 () Bool)

(assert (= bs!877166 (and b!4539768 d!1402887)))

(assert (=> bs!877166 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713493) (= lambda!176071 lambda!176005))))

(assert (=> bs!877153 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713258) (= lambda!176071 lambda!175837))))

(declare-fun bs!877169 () Bool)

(assert (= bs!877169 (and b!4539768 b!4538617)))

(assert (=> bs!877169 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713589) (= lambda!176071 lambda!175908))))

(declare-fun bs!877171 () Bool)

(assert (= bs!877171 (and b!4539768 d!1402987)))

(assert (=> bs!877171 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714096) (= lambda!176071 lambda!176018))))

(declare-fun bs!877173 () Bool)

(assert (= bs!877173 (and b!4539768 b!4538249)))

(assert (=> bs!877173 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713121) (= lambda!176071 lambda!175834))))

(declare-fun bs!877174 () Bool)

(assert (= bs!877174 (and b!4539768 b!4538502)))

(assert (=> bs!877174 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713095) (= lambda!176071 lambda!175883))))

(declare-fun bs!877176 () Bool)

(assert (= bs!877176 (and b!4539768 d!1402229)))

(assert (=> bs!877176 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713253) (= lambda!176071 lambda!175838))))

(declare-fun bs!877177 () Bool)

(assert (= bs!877177 (and b!4539768 d!1403123)))

(assert (=> bs!877177 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714265) (= lambda!176071 lambda!176057))))

(declare-fun bs!877178 () Bool)

(assert (= bs!877178 (and b!4539768 b!4539281)))

(assert (=> bs!877178 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176071 lambda!175998))))

(declare-fun bs!877180 () Bool)

(assert (= bs!877180 (and b!4539768 d!1402771)))

(assert (=> bs!877180 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713877) (= lambda!176071 lambda!175978))))

(declare-fun bs!877183 () Bool)

(assert (= bs!877183 (and b!4539768 d!1402317)))

(assert (=> bs!877183 (not (= lambda!176071 lambda!175860))))

(declare-fun bs!877185 () Bool)

(assert (= bs!877185 (and b!4539768 b!4539234)))

(assert (=> bs!877185 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176071 lambda!175981))))

(assert (=> bs!877143 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713095) (= lambda!176071 lambda!175885))))

(declare-fun bs!877189 () Bool)

(assert (= bs!877189 (and b!4539768 b!4538679)))

(assert (=> bs!877189 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176071 lambda!175919))))

(declare-fun bs!877191 () Bool)

(assert (= bs!877191 (and b!4539768 d!1402545)))

(assert (=> bs!877191 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713589) (= lambda!176071 lambda!175932))))

(declare-fun bs!877192 () Bool)

(assert (= bs!877192 (and b!4539768 d!1402983)))

(assert (=> bs!877192 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713103) (= lambda!176071 lambda!176011))))

(assert (=> bs!877147 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176071 lambda!176014))))

(declare-fun bs!877193 () Bool)

(assert (= bs!877193 (and b!4539768 d!1402727)))

(assert (=> bs!877193 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713121) (= lambda!176071 lambda!175970))))

(declare-fun bs!877194 () Bool)

(assert (= bs!877194 (and b!4539768 d!1403135)))

(assert (=> bs!877194 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713258) (= lambda!176071 lambda!176059))))

(declare-fun bs!877195 () Bool)

(assert (= bs!877195 (and b!4539768 d!1402531)))

(assert (=> bs!877195 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713634) (= lambda!176071 lambda!175927))))

(declare-fun bs!877197 () Bool)

(assert (= bs!877197 (and b!4539768 d!1402859)))

(assert (=> bs!877197 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713969) (= lambda!176071 lambda!176002))))

(assert (=> bs!877185 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713914) (= lambda!176071 lambda!175982))))

(declare-fun bs!877198 () Bool)

(assert (= bs!877198 (and b!4539768 b!4539430)))

(assert (=> bs!877198 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176071 lambda!176012))))

(assert (=> bs!877169 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713103) (= lambda!176071 lambda!175907))))

(declare-fun bs!877199 () Bool)

(assert (= bs!877199 (and b!4539768 b!4539681)))

(assert (=> bs!877199 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176071 lambda!176050))))

(declare-fun bs!877200 () Bool)

(assert (= bs!877200 (and b!4539768 b!4538171)))

(assert (=> bs!877200 (not (= lambda!176071 lambda!175771))))

(assert (=> bs!877178 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713974) (= lambda!176071 lambda!176000))))

(assert (=> b!4539768 true))

(declare-fun bs!877201 () Bool)

(declare-fun b!4539767 () Bool)

(assert (= bs!877201 (and b!4539767 d!1402485)))

(declare-fun lambda!176072 () Int)

(assert (=> bs!877201 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713584) (= lambda!176072 lambda!175909))))

(declare-fun bs!877202 () Bool)

(assert (= bs!877202 (and b!4539767 d!1402823)))

(assert (=> bs!877202 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713909) (= lambda!176072 lambda!175983))))

(declare-fun bs!877203 () Bool)

(assert (= bs!877203 (and b!4539767 b!4538685)))

(assert (=> bs!877203 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176072 lambda!175925))))

(declare-fun bs!877205 () Bool)

(assert (= bs!877205 (and b!4539767 d!1402523)))

(assert (=> bs!877205 (not (= lambda!176072 lambda!175918))))

(declare-fun bs!877207 () Bool)

(assert (= bs!877207 (and b!4539767 b!4539182)))

(assert (=> bs!877207 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176072 lambda!175976))))

(declare-fun bs!877208 () Bool)

(assert (= bs!877208 (and b!4539767 b!4539282)))

(assert (=> bs!877208 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176072 lambda!175996))))

(assert (=> bs!877207 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713882) (= lambda!176072 lambda!175977))))

(declare-fun bs!877211 () Bool)

(assert (= bs!877211 (and b!4539767 b!4538501)))

(assert (=> bs!877211 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713493) (= lambda!176072 lambda!175886))))

(declare-fun bs!877212 () Bool)

(assert (= bs!877212 (and b!4539767 b!4539680)))

(assert (=> bs!877212 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176072 lambda!176052))))

(assert (=> bs!877203 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713639) (= lambda!176072 lambda!175926))))

(declare-fun bs!877216 () Bool)

(assert (= bs!877216 (and b!4539767 b!4539183)))

(assert (=> bs!877216 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176072 lambda!175975))))

(declare-fun bs!877218 () Bool)

(assert (= bs!877218 (and b!4539767 b!4539235)))

(assert (=> bs!877218 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176072 lambda!175980))))

(declare-fun bs!877219 () Bool)

(assert (= bs!877219 (and b!4539767 b!4538248)))

(assert (=> bs!877219 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713121) (= lambda!176072 lambda!175836))))

(declare-fun bs!877221 () Bool)

(assert (= bs!877221 (and b!4539767 b!4538686)))

(assert (=> bs!877221 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176072 lambda!175924))))

(declare-fun bs!877223 () Bool)

(assert (= bs!877223 (and b!4539767 b!4538618)))

(assert (=> bs!877223 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713103) (= lambda!176072 lambda!175906))))

(declare-fun bs!877225 () Bool)

(assert (= bs!877225 (and b!4539767 b!4538678)))

(assert (=> bs!877225 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713617) (= lambda!176072 lambda!175921))))

(declare-fun bs!877227 () Bool)

(assert (= bs!877227 (and b!4539767 d!1402409)))

(assert (=> bs!877227 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713488) (= lambda!176072 lambda!175888))))

(assert (=> bs!877212 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714270) (= lambda!176072 lambda!176054))))

(assert (=> bs!877225 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176072 lambda!175920))))

(declare-fun bs!877230 () Bool)

(assert (= bs!877230 (and b!4539767 d!1402527)))

(assert (=> bs!877230 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713612) (= lambda!176072 lambda!175922))))

(declare-fun bs!877232 () Bool)

(assert (= bs!877232 (and b!4539767 d!1402887)))

(assert (=> bs!877232 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713493) (= lambda!176072 lambda!176005))))

(assert (=> bs!877219 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713258) (= lambda!176072 lambda!175837))))

(declare-fun bs!877234 () Bool)

(assert (= bs!877234 (and b!4539767 b!4538617)))

(assert (=> bs!877234 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713589) (= lambda!176072 lambda!175908))))

(declare-fun bs!877236 () Bool)

(assert (= bs!877236 (and b!4539767 d!1402987)))

(assert (=> bs!877236 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714096) (= lambda!176072 lambda!176018))))

(declare-fun bs!877238 () Bool)

(assert (= bs!877238 (and b!4539767 b!4538249)))

(assert (=> bs!877238 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713121) (= lambda!176072 lambda!175834))))

(declare-fun bs!877240 () Bool)

(assert (= bs!877240 (and b!4539767 b!4538502)))

(assert (=> bs!877240 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713095) (= lambda!176072 lambda!175883))))

(declare-fun bs!877241 () Bool)

(assert (= bs!877241 (and b!4539767 d!1402229)))

(assert (=> bs!877241 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713253) (= lambda!176072 lambda!175838))))

(declare-fun bs!877243 () Bool)

(assert (= bs!877243 (and b!4539767 d!1403123)))

(assert (=> bs!877243 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714265) (= lambda!176072 lambda!176057))))

(declare-fun bs!877245 () Bool)

(assert (= bs!877245 (and b!4539767 b!4539768)))

(assert (=> bs!877245 (= lambda!176072 lambda!176071)))

(declare-fun bs!877247 () Bool)

(assert (= bs!877247 (and b!4539767 b!4539429)))

(assert (=> bs!877247 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714101) (= lambda!176072 lambda!176015))))

(declare-fun bs!877249 () Bool)

(assert (= bs!877249 (and b!4539767 b!4539281)))

(assert (=> bs!877249 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176072 lambda!175998))))

(declare-fun bs!877250 () Bool)

(assert (= bs!877250 (and b!4539767 d!1402771)))

(assert (=> bs!877250 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713877) (= lambda!176072 lambda!175978))))

(declare-fun bs!877251 () Bool)

(assert (= bs!877251 (and b!4539767 d!1402317)))

(assert (=> bs!877251 (not (= lambda!176072 lambda!175860))))

(declare-fun bs!877253 () Bool)

(assert (= bs!877253 (and b!4539767 b!4539234)))

(assert (=> bs!877253 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176072 lambda!175981))))

(assert (=> bs!877211 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713095) (= lambda!176072 lambda!175885))))

(declare-fun bs!877256 () Bool)

(assert (= bs!877256 (and b!4539767 b!4538679)))

(assert (=> bs!877256 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176072 lambda!175919))))

(declare-fun bs!877258 () Bool)

(assert (= bs!877258 (and b!4539767 d!1402545)))

(assert (=> bs!877258 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713589) (= lambda!176072 lambda!175932))))

(declare-fun bs!877259 () Bool)

(assert (= bs!877259 (and b!4539767 d!1402983)))

(assert (=> bs!877259 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713103) (= lambda!176072 lambda!176011))))

(assert (=> bs!877247 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176072 lambda!176014))))

(declare-fun bs!877260 () Bool)

(assert (= bs!877260 (and b!4539767 d!1402727)))

(assert (=> bs!877260 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713121) (= lambda!176072 lambda!175970))))

(declare-fun bs!877262 () Bool)

(assert (= bs!877262 (and b!4539767 d!1403135)))

(assert (=> bs!877262 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713258) (= lambda!176072 lambda!176059))))

(declare-fun bs!877263 () Bool)

(assert (= bs!877263 (and b!4539767 d!1402531)))

(assert (=> bs!877263 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713634) (= lambda!176072 lambda!175927))))

(declare-fun bs!877264 () Bool)

(assert (= bs!877264 (and b!4539767 d!1402859)))

(assert (=> bs!877264 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713969) (= lambda!176072 lambda!176002))))

(assert (=> bs!877253 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713914) (= lambda!176072 lambda!175982))))

(declare-fun bs!877265 () Bool)

(assert (= bs!877265 (and b!4539767 b!4539430)))

(assert (=> bs!877265 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176072 lambda!176012))))

(assert (=> bs!877234 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713103) (= lambda!176072 lambda!175907))))

(declare-fun bs!877267 () Bool)

(assert (= bs!877267 (and b!4539767 b!4539681)))

(assert (=> bs!877267 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176072 lambda!176050))))

(declare-fun bs!877269 () Bool)

(assert (= bs!877269 (and b!4539767 b!4538171)))

(assert (=> bs!877269 (not (= lambda!176072 lambda!175771))))

(assert (=> bs!877249 (= (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1713974) (= lambda!176072 lambda!176000))))

(assert (=> b!4539767 true))

(declare-fun lt!1714378 () ListMap!3665)

(declare-fun lambda!176074 () Int)

(assert (=> bs!877201 (= (= lt!1714378 lt!1713584) (= lambda!176074 lambda!175909))))

(assert (=> bs!877202 (= (= lt!1714378 lt!1713909) (= lambda!176074 lambda!175983))))

(assert (=> bs!877203 (= (= lt!1714378 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176074 lambda!175925))))

(assert (=> bs!877205 (not (= lambda!176074 lambda!175918))))

(assert (=> bs!877207 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176074 lambda!175976))))

(assert (=> bs!877208 (= (= lt!1714378 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176074 lambda!175996))))

(assert (=> bs!877207 (= (= lt!1714378 lt!1713882) (= lambda!176074 lambda!175977))))

(assert (=> bs!877211 (= (= lt!1714378 lt!1713493) (= lambda!176074 lambda!175886))))

(assert (=> bs!877212 (= (= lt!1714378 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176074 lambda!176052))))

(assert (=> bs!877203 (= (= lt!1714378 lt!1713639) (= lambda!176074 lambda!175926))))

(assert (=> b!4539767 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176074 lambda!176072))))

(assert (=> bs!877216 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176074 lambda!175975))))

(assert (=> bs!877218 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176074 lambda!175980))))

(assert (=> bs!877219 (= (= lt!1714378 lt!1713121) (= lambda!176074 lambda!175836))))

(assert (=> bs!877221 (= (= lt!1714378 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176074 lambda!175924))))

(assert (=> bs!877223 (= (= lt!1714378 lt!1713103) (= lambda!176074 lambda!175906))))

(assert (=> bs!877225 (= (= lt!1714378 lt!1713617) (= lambda!176074 lambda!175921))))

(assert (=> bs!877227 (= (= lt!1714378 lt!1713488) (= lambda!176074 lambda!175888))))

(assert (=> bs!877212 (= (= lt!1714378 lt!1714270) (= lambda!176074 lambda!176054))))

(assert (=> bs!877225 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176074 lambda!175920))))

(assert (=> bs!877230 (= (= lt!1714378 lt!1713612) (= lambda!176074 lambda!175922))))

(assert (=> bs!877232 (= (= lt!1714378 lt!1713493) (= lambda!176074 lambda!176005))))

(assert (=> bs!877219 (= (= lt!1714378 lt!1713258) (= lambda!176074 lambda!175837))))

(assert (=> bs!877234 (= (= lt!1714378 lt!1713589) (= lambda!176074 lambda!175908))))

(assert (=> bs!877236 (= (= lt!1714378 lt!1714096) (= lambda!176074 lambda!176018))))

(assert (=> bs!877238 (= (= lt!1714378 lt!1713121) (= lambda!176074 lambda!175834))))

(assert (=> bs!877240 (= (= lt!1714378 lt!1713095) (= lambda!176074 lambda!175883))))

(assert (=> bs!877241 (= (= lt!1714378 lt!1713253) (= lambda!176074 lambda!175838))))

(assert (=> bs!877243 (= (= lt!1714378 lt!1714265) (= lambda!176074 lambda!176057))))

(assert (=> bs!877245 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176074 lambda!176071))))

(assert (=> bs!877247 (= (= lt!1714378 lt!1714101) (= lambda!176074 lambda!176015))))

(assert (=> bs!877249 (= (= lt!1714378 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176074 lambda!175998))))

(assert (=> bs!877250 (= (= lt!1714378 lt!1713877) (= lambda!176074 lambda!175978))))

(assert (=> bs!877251 (not (= lambda!176074 lambda!175860))))

(assert (=> bs!877253 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176074 lambda!175981))))

(assert (=> bs!877211 (= (= lt!1714378 lt!1713095) (= lambda!176074 lambda!175885))))

(assert (=> bs!877256 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176074 lambda!175919))))

(assert (=> bs!877258 (= (= lt!1714378 lt!1713589) (= lambda!176074 lambda!175932))))

(assert (=> bs!877259 (= (= lt!1714378 lt!1713103) (= lambda!176074 lambda!176011))))

(assert (=> bs!877247 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176074 lambda!176014))))

(assert (=> bs!877260 (= (= lt!1714378 lt!1713121) (= lambda!176074 lambda!175970))))

(assert (=> bs!877262 (= (= lt!1714378 lt!1713258) (= lambda!176074 lambda!176059))))

(assert (=> bs!877263 (= (= lt!1714378 lt!1713634) (= lambda!176074 lambda!175927))))

(assert (=> bs!877264 (= (= lt!1714378 lt!1713969) (= lambda!176074 lambda!176002))))

(assert (=> bs!877253 (= (= lt!1714378 lt!1713914) (= lambda!176074 lambda!175982))))

(assert (=> bs!877265 (= (= lt!1714378 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176074 lambda!176012))))

(assert (=> bs!877234 (= (= lt!1714378 lt!1713103) (= lambda!176074 lambda!175907))))

(assert (=> bs!877267 (= (= lt!1714378 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176074 lambda!176050))))

(assert (=> bs!877269 (not (= lambda!176074 lambda!175771))))

(assert (=> bs!877249 (= (= lt!1714378 lt!1713974) (= lambda!176074 lambda!176000))))

(assert (=> b!4539767 true))

(declare-fun bs!877315 () Bool)

(declare-fun d!1403191 () Bool)

(assert (= bs!877315 (and d!1403191 d!1402485)))

(declare-fun lt!1714373 () ListMap!3665)

(declare-fun lambda!176076 () Int)

(assert (=> bs!877315 (= (= lt!1714373 lt!1713584) (= lambda!176076 lambda!175909))))

(declare-fun bs!877316 () Bool)

(assert (= bs!877316 (and d!1403191 d!1402823)))

(assert (=> bs!877316 (= (= lt!1714373 lt!1713909) (= lambda!176076 lambda!175983))))

(declare-fun bs!877317 () Bool)

(assert (= bs!877317 (and d!1403191 b!4538685)))

(assert (=> bs!877317 (= (= lt!1714373 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176076 lambda!175925))))

(declare-fun bs!877319 () Bool)

(assert (= bs!877319 (and d!1403191 d!1402523)))

(assert (=> bs!877319 (not (= lambda!176076 lambda!175918))))

(declare-fun bs!877320 () Bool)

(assert (= bs!877320 (and d!1403191 b!4539182)))

(assert (=> bs!877320 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176076 lambda!175976))))

(declare-fun bs!877321 () Bool)

(assert (= bs!877321 (and d!1403191 b!4539282)))

(assert (=> bs!877321 (= (= lt!1714373 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176076 lambda!175996))))

(assert (=> bs!877320 (= (= lt!1714373 lt!1713882) (= lambda!176076 lambda!175977))))

(declare-fun bs!877322 () Bool)

(assert (= bs!877322 (and d!1403191 b!4538501)))

(assert (=> bs!877322 (= (= lt!1714373 lt!1713493) (= lambda!176076 lambda!175886))))

(declare-fun bs!877323 () Bool)

(assert (= bs!877323 (and d!1403191 b!4539680)))

(assert (=> bs!877323 (= (= lt!1714373 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176076 lambda!176052))))

(assert (=> bs!877317 (= (= lt!1714373 lt!1713639) (= lambda!176076 lambda!175926))))

(declare-fun bs!877324 () Bool)

(assert (= bs!877324 (and d!1403191 b!4539767)))

(assert (=> bs!877324 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176076 lambda!176072))))

(declare-fun bs!877325 () Bool)

(assert (= bs!877325 (and d!1403191 b!4539183)))

(assert (=> bs!877325 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176076 lambda!175975))))

(declare-fun bs!877327 () Bool)

(assert (= bs!877327 (and d!1403191 b!4539235)))

(assert (=> bs!877327 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176076 lambda!175980))))

(declare-fun bs!877328 () Bool)

(assert (= bs!877328 (and d!1403191 b!4538248)))

(assert (=> bs!877328 (= (= lt!1714373 lt!1713121) (= lambda!176076 lambda!175836))))

(declare-fun bs!877329 () Bool)

(assert (= bs!877329 (and d!1403191 b!4538686)))

(assert (=> bs!877329 (= (= lt!1714373 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176076 lambda!175924))))

(assert (=> bs!877324 (= (= lt!1714373 lt!1714378) (= lambda!176076 lambda!176074))))

(declare-fun bs!877330 () Bool)

(assert (= bs!877330 (and d!1403191 b!4538618)))

(assert (=> bs!877330 (= (= lt!1714373 lt!1713103) (= lambda!176076 lambda!175906))))

(declare-fun bs!877331 () Bool)

(assert (= bs!877331 (and d!1403191 b!4538678)))

(assert (=> bs!877331 (= (= lt!1714373 lt!1713617) (= lambda!176076 lambda!175921))))

(declare-fun bs!877332 () Bool)

(assert (= bs!877332 (and d!1403191 d!1402409)))

(assert (=> bs!877332 (= (= lt!1714373 lt!1713488) (= lambda!176076 lambda!175888))))

(assert (=> bs!877323 (= (= lt!1714373 lt!1714270) (= lambda!176076 lambda!176054))))

(assert (=> bs!877331 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176076 lambda!175920))))

(declare-fun bs!877333 () Bool)

(assert (= bs!877333 (and d!1403191 d!1402527)))

(assert (=> bs!877333 (= (= lt!1714373 lt!1713612) (= lambda!176076 lambda!175922))))

(declare-fun bs!877334 () Bool)

(assert (= bs!877334 (and d!1403191 d!1402887)))

(assert (=> bs!877334 (= (= lt!1714373 lt!1713493) (= lambda!176076 lambda!176005))))

(assert (=> bs!877328 (= (= lt!1714373 lt!1713258) (= lambda!176076 lambda!175837))))

(declare-fun bs!877335 () Bool)

(assert (= bs!877335 (and d!1403191 b!4538617)))

(assert (=> bs!877335 (= (= lt!1714373 lt!1713589) (= lambda!176076 lambda!175908))))

(declare-fun bs!877336 () Bool)

(assert (= bs!877336 (and d!1403191 d!1402987)))

(assert (=> bs!877336 (= (= lt!1714373 lt!1714096) (= lambda!176076 lambda!176018))))

(declare-fun bs!877337 () Bool)

(assert (= bs!877337 (and d!1403191 b!4538249)))

(assert (=> bs!877337 (= (= lt!1714373 lt!1713121) (= lambda!176076 lambda!175834))))

(declare-fun bs!877338 () Bool)

(assert (= bs!877338 (and d!1403191 b!4538502)))

(assert (=> bs!877338 (= (= lt!1714373 lt!1713095) (= lambda!176076 lambda!175883))))

(declare-fun bs!877339 () Bool)

(assert (= bs!877339 (and d!1403191 d!1402229)))

(assert (=> bs!877339 (= (= lt!1714373 lt!1713253) (= lambda!176076 lambda!175838))))

(declare-fun bs!877340 () Bool)

(assert (= bs!877340 (and d!1403191 d!1403123)))

(assert (=> bs!877340 (= (= lt!1714373 lt!1714265) (= lambda!176076 lambda!176057))))

(declare-fun bs!877341 () Bool)

(assert (= bs!877341 (and d!1403191 b!4539768)))

(assert (=> bs!877341 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176076 lambda!176071))))

(declare-fun bs!877342 () Bool)

(assert (= bs!877342 (and d!1403191 b!4539429)))

(assert (=> bs!877342 (= (= lt!1714373 lt!1714101) (= lambda!176076 lambda!176015))))

(declare-fun bs!877343 () Bool)

(assert (= bs!877343 (and d!1403191 b!4539281)))

(assert (=> bs!877343 (= (= lt!1714373 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176076 lambda!175998))))

(declare-fun bs!877344 () Bool)

(assert (= bs!877344 (and d!1403191 d!1402771)))

(assert (=> bs!877344 (= (= lt!1714373 lt!1713877) (= lambda!176076 lambda!175978))))

(declare-fun bs!877345 () Bool)

(assert (= bs!877345 (and d!1403191 d!1402317)))

(assert (=> bs!877345 (not (= lambda!176076 lambda!175860))))

(declare-fun bs!877346 () Bool)

(assert (= bs!877346 (and d!1403191 b!4539234)))

(assert (=> bs!877346 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176076 lambda!175981))))

(assert (=> bs!877322 (= (= lt!1714373 lt!1713095) (= lambda!176076 lambda!175885))))

(declare-fun bs!877347 () Bool)

(assert (= bs!877347 (and d!1403191 b!4538679)))

(assert (=> bs!877347 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176076 lambda!175919))))

(declare-fun bs!877348 () Bool)

(assert (= bs!877348 (and d!1403191 d!1402545)))

(assert (=> bs!877348 (= (= lt!1714373 lt!1713589) (= lambda!176076 lambda!175932))))

(declare-fun bs!877349 () Bool)

(assert (= bs!877349 (and d!1403191 d!1402983)))

(assert (=> bs!877349 (= (= lt!1714373 lt!1713103) (= lambda!176076 lambda!176011))))

(assert (=> bs!877342 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176076 lambda!176014))))

(declare-fun bs!877350 () Bool)

(assert (= bs!877350 (and d!1403191 d!1402727)))

(assert (=> bs!877350 (= (= lt!1714373 lt!1713121) (= lambda!176076 lambda!175970))))

(declare-fun bs!877351 () Bool)

(assert (= bs!877351 (and d!1403191 d!1403135)))

(assert (=> bs!877351 (= (= lt!1714373 lt!1713258) (= lambda!176076 lambda!176059))))

(declare-fun bs!877352 () Bool)

(assert (= bs!877352 (and d!1403191 d!1402531)))

(assert (=> bs!877352 (= (= lt!1714373 lt!1713634) (= lambda!176076 lambda!175927))))

(declare-fun bs!877353 () Bool)

(assert (= bs!877353 (and d!1403191 d!1402859)))

(assert (=> bs!877353 (= (= lt!1714373 lt!1713969) (= lambda!176076 lambda!176002))))

(assert (=> bs!877346 (= (= lt!1714373 lt!1713914) (= lambda!176076 lambda!175982))))

(declare-fun bs!877354 () Bool)

(assert (= bs!877354 (and d!1403191 b!4539430)))

(assert (=> bs!877354 (= (= lt!1714373 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176076 lambda!176012))))

(assert (=> bs!877335 (= (= lt!1714373 lt!1713103) (= lambda!176076 lambda!175907))))

(declare-fun bs!877355 () Bool)

(assert (= bs!877355 (and d!1403191 b!4539681)))

(assert (=> bs!877355 (= (= lt!1714373 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176076 lambda!176050))))

(declare-fun bs!877356 () Bool)

(assert (= bs!877356 (and d!1403191 b!4538171)))

(assert (=> bs!877356 (not (= lambda!176076 lambda!175771))))

(assert (=> bs!877343 (= (= lt!1714373 lt!1713974) (= lambda!176076 lambda!176000))))

(assert (=> d!1403191 true))

(declare-fun bm!316569 () Bool)

(declare-fun call!316574 () Unit!98176)

(assert (=> bm!316569 (= call!316574 (lemmaContainsAllItsOwnKeys!364 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))))))

(declare-fun b!4539764 () Bool)

(declare-fun e!2828942 () Bool)

(assert (=> b!4539764 (= e!2828942 (invariantList!1043 (toList!4403 lt!1714373)))))

(declare-fun c!775420 () Bool)

(declare-fun bm!316570 () Bool)

(declare-fun call!316576 () Bool)

(assert (=> bm!316570 (= call!316576 (forall!10343 (ite c!775420 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (ite c!775420 lambda!176071 lambda!176074)))))

(declare-fun b!4539765 () Bool)

(declare-fun res!1891858 () Bool)

(assert (=> b!4539765 (=> (not res!1891858) (not e!2828942))))

(assert (=> b!4539765 (= res!1891858 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) lambda!176076))))

(declare-fun e!2828943 () Bool)

(declare-fun b!4539766 () Bool)

(assert (=> b!4539766 (= e!2828943 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) lambda!176074))))

(declare-fun e!2828944 () ListMap!3665)

(assert (=> b!4539767 (= e!2828944 lt!1714378)))

(declare-fun lt!1714384 () ListMap!3665)

(assert (=> b!4539767 (= lt!1714384 (+!1604 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (h!56627 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))))))

(assert (=> b!4539767 (= lt!1714378 (addToMapMapFromBucket!725 (t!357834 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (+!1604 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (h!56627 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093))))))))))

(declare-fun lt!1714377 () Unit!98176)

(assert (=> b!4539767 (= lt!1714377 call!316574)))

(assert (=> b!4539767 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) lambda!176072)))

(declare-fun lt!1714385 () Unit!98176)

(assert (=> b!4539767 (= lt!1714385 lt!1714377)))

(assert (=> b!4539767 (forall!10343 (toList!4403 lt!1714384) lambda!176074)))

(declare-fun lt!1714372 () Unit!98176)

(declare-fun Unit!98508 () Unit!98176)

(assert (=> b!4539767 (= lt!1714372 Unit!98508)))

(declare-fun call!316575 () Bool)

(assert (=> b!4539767 call!316575))

(declare-fun lt!1714383 () Unit!98176)

(declare-fun Unit!98509 () Unit!98176)

(assert (=> b!4539767 (= lt!1714383 Unit!98509)))

(declare-fun lt!1714371 () Unit!98176)

(declare-fun Unit!98510 () Unit!98176)

(assert (=> b!4539767 (= lt!1714371 Unit!98510)))

(declare-fun lt!1714374 () Unit!98176)

(assert (=> b!4539767 (= lt!1714374 (forallContained!2605 (toList!4403 lt!1714384) lambda!176074 (h!56627 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))))))

(assert (=> b!4539767 (contains!13538 lt!1714384 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))))))

(declare-fun lt!1714370 () Unit!98176)

(declare-fun Unit!98511 () Unit!98176)

(assert (=> b!4539767 (= lt!1714370 Unit!98511)))

(assert (=> b!4539767 (contains!13538 lt!1714378 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))))))

(declare-fun lt!1714369 () Unit!98176)

(declare-fun Unit!98512 () Unit!98176)

(assert (=> b!4539767 (= lt!1714369 Unit!98512)))

(assert (=> b!4539767 call!316576))

(declare-fun lt!1714387 () Unit!98176)

(declare-fun Unit!98513 () Unit!98176)

(assert (=> b!4539767 (= lt!1714387 Unit!98513)))

(assert (=> b!4539767 (forall!10343 (toList!4403 lt!1714384) lambda!176074)))

(declare-fun lt!1714379 () Unit!98176)

(declare-fun Unit!98514 () Unit!98176)

(assert (=> b!4539767 (= lt!1714379 Unit!98514)))

(declare-fun lt!1714382 () Unit!98176)

(declare-fun Unit!98515 () Unit!98176)

(assert (=> b!4539767 (= lt!1714382 Unit!98515)))

(declare-fun lt!1714388 () Unit!98176)

(assert (=> b!4539767 (= lt!1714388 (addForallContainsKeyThenBeforeAdding!364 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714378 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))) (_2!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093))))))))))

(assert (=> b!4539767 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) lambda!176074)))

(declare-fun lt!1714376 () Unit!98176)

(assert (=> b!4539767 (= lt!1714376 lt!1714388)))

(assert (=> b!4539767 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) lambda!176074)))

(declare-fun lt!1714386 () Unit!98176)

(declare-fun Unit!98516 () Unit!98176)

(assert (=> b!4539767 (= lt!1714386 Unit!98516)))

(declare-fun res!1891857 () Bool)

(assert (=> b!4539767 (= res!1891857 (forall!10343 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lambda!176074))))

(assert (=> b!4539767 (=> (not res!1891857) (not e!2828943))))

(assert (=> b!4539767 e!2828943))

(declare-fun lt!1714368 () Unit!98176)

(declare-fun Unit!98517 () Unit!98176)

(assert (=> b!4539767 (= lt!1714368 Unit!98517)))

(assert (=> b!4539768 (= e!2828944 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))))

(declare-fun lt!1714381 () Unit!98176)

(assert (=> b!4539768 (= lt!1714381 call!316574)))

(assert (=> b!4539768 call!316575))

(declare-fun lt!1714380 () Unit!98176)

(assert (=> b!4539768 (= lt!1714380 lt!1714381)))

(assert (=> b!4539768 call!316576))

(declare-fun lt!1714375 () Unit!98176)

(declare-fun Unit!98518 () Unit!98176)

(assert (=> b!4539768 (= lt!1714375 Unit!98518)))

(declare-fun bm!316571 () Bool)

(assert (=> bm!316571 (= call!316575 (forall!10343 (ite c!775420 (toList!4403 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (t!357834 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))) (ite c!775420 lambda!176071 lambda!176074)))))

(assert (=> d!1403191 e!2828942))

(declare-fun res!1891856 () Bool)

(assert (=> d!1403191 (=> (not res!1891856) (not e!2828942))))

(assert (=> d!1403191 (= res!1891856 (forall!10343 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lambda!176076))))

(assert (=> d!1403191 (= lt!1714373 e!2828944)))

(assert (=> d!1403191 (= c!775420 ((_ is Nil!50748) (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093))))))))

(assert (=> d!1403191 (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))))

(assert (=> d!1403191 (= (addToMapMapFromBucket!725 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) lt!1714373)))

(assert (= (and d!1403191 c!775420) b!4539768))

(assert (= (and d!1403191 (not c!775420)) b!4539767))

(assert (= (and b!4539767 res!1891857) b!4539766))

(assert (= (or b!4539768 b!4539767) bm!316570))

(assert (= (or b!4539768 b!4539767) bm!316571))

(assert (= (or b!4539768 b!4539767) bm!316569))

(assert (= (and d!1403191 res!1891856) b!4539765))

(assert (= (and b!4539765 res!1891858) b!4539764))

(declare-fun m!5305881 () Bool)

(assert (=> bm!316571 m!5305881))

(declare-fun m!5305883 () Bool)

(assert (=> b!4539767 m!5305883))

(assert (=> b!4539767 m!5303013))

(declare-fun m!5305885 () Bool)

(assert (=> b!4539767 m!5305885))

(declare-fun m!5305887 () Bool)

(assert (=> b!4539767 m!5305887))

(declare-fun m!5305889 () Bool)

(assert (=> b!4539767 m!5305889))

(assert (=> b!4539767 m!5305883))

(assert (=> b!4539767 m!5305889))

(declare-fun m!5305891 () Bool)

(assert (=> b!4539767 m!5305891))

(declare-fun m!5305893 () Bool)

(assert (=> b!4539767 m!5305893))

(declare-fun m!5305895 () Bool)

(assert (=> b!4539767 m!5305895))

(declare-fun m!5305897 () Bool)

(assert (=> b!4539767 m!5305897))

(assert (=> b!4539767 m!5305885))

(declare-fun m!5305899 () Bool)

(assert (=> b!4539767 m!5305899))

(assert (=> b!4539767 m!5303013))

(declare-fun m!5305901 () Bool)

(assert (=> b!4539767 m!5305901))

(declare-fun m!5305903 () Bool)

(assert (=> d!1403191 m!5305903))

(declare-fun m!5305905 () Bool)

(assert (=> d!1403191 m!5305905))

(declare-fun m!5305907 () Bool)

(assert (=> b!4539765 m!5305907))

(declare-fun m!5305909 () Bool)

(assert (=> b!4539764 m!5305909))

(declare-fun m!5305911 () Bool)

(assert (=> bm!316570 m!5305911))

(assert (=> bm!316569 m!5303013))

(declare-fun m!5305913 () Bool)

(assert (=> bm!316569 m!5305913))

(assert (=> b!4539766 m!5305889))

(assert (=> b!4538394 d!1403191))

(declare-fun bs!877363 () Bool)

(declare-fun d!1403199 () Bool)

(assert (= bs!877363 (and d!1403199 start!450372)))

(declare-fun lambda!176079 () Int)

(assert (=> bs!877363 (= lambda!176079 lambda!175769)))

(declare-fun bs!877365 () Bool)

(assert (= bs!877365 (and d!1403199 d!1402275)))

(assert (=> bs!877365 (= lambda!176079 lambda!175846)))

(declare-fun bs!877367 () Bool)

(assert (= bs!877367 (and d!1403199 b!4538171)))

(assert (=> bs!877367 (not (= lambda!176079 lambda!175770))))

(declare-fun bs!877369 () Bool)

(assert (= bs!877369 (and d!1403199 d!1402353)))

(assert (=> bs!877369 (= lambda!176079 lambda!175879)))

(declare-fun bs!877371 () Bool)

(assert (= bs!877371 (and d!1403199 d!1402303)))

(assert (=> bs!877371 (= lambda!176079 lambda!175857)))

(declare-fun bs!877374 () Bool)

(assert (= bs!877374 (and d!1403199 d!1402471)))

(assert (=> bs!877374 (= lambda!176079 lambda!175901)))

(declare-fun bs!877376 () Bool)

(assert (= bs!877376 (and d!1403199 d!1402801)))

(assert (=> bs!877376 (= lambda!176079 lambda!175979)))

(declare-fun bs!877378 () Bool)

(assert (= bs!877378 (and d!1403199 d!1402601)))

(assert (=> bs!877378 (= lambda!176079 lambda!175933)))

(declare-fun bs!877380 () Bool)

(assert (= bs!877380 (and d!1403199 d!1402529)))

(assert (=> bs!877380 (= lambda!176079 lambda!175923)))

(declare-fun bs!877382 () Bool)

(assert (= bs!877382 (and d!1403199 d!1402349)))

(assert (=> bs!877382 (= lambda!176079 lambda!175870)))

(declare-fun bs!877384 () Bool)

(assert (= bs!877384 (and d!1403199 d!1402475)))

(assert (=> bs!877384 (= lambda!176079 lambda!175905)))

(declare-fun bs!877386 () Bool)

(assert (= bs!877386 (and d!1403199 d!1402827)))

(assert (=> bs!877386 (= lambda!176079 lambda!175987)))

(declare-fun bs!877388 () Bool)

(assert (= bs!877388 (and d!1403199 d!1402455)))

(assert (=> bs!877388 (not (= lambda!176079 lambda!175900))))

(declare-fun bs!877390 () Bool)

(assert (= bs!877390 (and d!1403199 d!1402253)))

(assert (=> bs!877390 (= lambda!176079 lambda!175843)))

(declare-fun bs!877391 () Bool)

(assert (= bs!877391 (and d!1403199 d!1402421)))

(assert (=> bs!877391 (= lambda!176079 lambda!175894)))

(declare-fun bs!877393 () Bool)

(assert (= bs!877393 (and d!1403199 d!1402473)))

(assert (=> bs!877393 (= lambda!176079 lambda!175902)))

(declare-fun bs!877395 () Bool)

(assert (= bs!877395 (and d!1403199 d!1402289)))

(assert (=> bs!877395 (= lambda!176079 lambda!175853)))

(declare-fun bs!877397 () Bool)

(assert (= bs!877397 (and d!1403199 d!1402345)))

(assert (=> bs!877397 (= lambda!176079 lambda!175867)))

(declare-fun lt!1714410 () ListMap!3665)

(assert (=> d!1403199 (invariantList!1043 (toList!4403 lt!1714410))))

(declare-fun e!2828952 () ListMap!3665)

(assert (=> d!1403199 (= lt!1714410 e!2828952)))

(declare-fun c!775422 () Bool)

(assert (=> d!1403199 (= c!775422 ((_ is Cons!50749) (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))))

(assert (=> d!1403199 (forall!10341 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))) lambda!176079)))

(assert (=> d!1403199 (= (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) lt!1714410)))

(declare-fun b!4539778 () Bool)

(assert (=> b!4539778 (= e!2828952 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (extractMap!1254 (t!357835 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))))))

(declare-fun b!4539779 () Bool)

(assert (=> b!4539779 (= e!2828952 (ListMap!3666 Nil!50748))))

(assert (= (and d!1403199 c!775422) b!4539778))

(assert (= (and d!1403199 (not c!775422)) b!4539779))

(declare-fun m!5305915 () Bool)

(assert (=> d!1403199 m!5305915))

(declare-fun m!5305917 () Bool)

(assert (=> d!1403199 m!5305917))

(declare-fun m!5305919 () Bool)

(assert (=> b!4539778 m!5305919))

(assert (=> b!4539778 m!5305919))

(declare-fun m!5305921 () Bool)

(assert (=> b!4539778 m!5305921))

(assert (=> b!4538394 d!1403199))

(assert (=> d!1402405 d!1403035))

(assert (=> d!1402405 d!1402511))

(assert (=> b!4538319 d!1402931))

(declare-fun d!1403201 () Bool)

(assert (=> d!1403201 (containsKey!1872 (toList!4403 lt!1713092) key!3287)))

(declare-fun lt!1714411 () Unit!98176)

(assert (=> d!1403201 (= lt!1714411 (choose!29884 (toList!4403 lt!1713092) key!3287))))

(assert (=> d!1403201 (invariantList!1043 (toList!4403 lt!1713092))))

(assert (=> d!1403201 (= (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713092) key!3287) lt!1714411)))

(declare-fun bs!877403 () Bool)

(assert (= bs!877403 d!1403201))

(assert (=> bs!877403 m!5302799))

(declare-fun m!5305923 () Bool)

(assert (=> bs!877403 m!5305923))

(assert (=> bs!877403 m!5303789))

(assert (=> b!4538319 d!1403201))

(declare-fun d!1403203 () Bool)

(declare-fun c!775423 () Bool)

(assert (=> d!1403203 (= c!775423 ((_ is Nil!50748) (toList!4403 lt!1713121)))))

(declare-fun e!2828953 () (InoxSet tuple2!51226))

(assert (=> d!1403203 (= (content!8434 (toList!4403 lt!1713121)) e!2828953)))

(declare-fun b!4539780 () Bool)

(assert (=> b!4539780 (= e!2828953 ((as const (Array tuple2!51226 Bool)) false))))

(declare-fun b!4539781 () Bool)

(assert (=> b!4539781 (= e!2828953 ((_ map or) (store ((as const (Array tuple2!51226 Bool)) false) (h!56627 (toList!4403 lt!1713121)) true) (content!8434 (t!357834 (toList!4403 lt!1713121)))))))

(assert (= (and d!1403203 c!775423) b!4539780))

(assert (= (and d!1403203 (not c!775423)) b!4539781))

(declare-fun m!5305925 () Bool)

(assert (=> b!4539781 m!5305925))

(declare-fun m!5305927 () Bool)

(assert (=> b!4539781 m!5305927))

(assert (=> d!1402339 d!1403203))

(declare-fun d!1403205 () Bool)

(declare-fun c!775424 () Bool)

(assert (=> d!1403205 (= c!775424 ((_ is Nil!50748) (toList!4403 lt!1713095)))))

(declare-fun e!2828954 () (InoxSet tuple2!51226))

(assert (=> d!1403205 (= (content!8434 (toList!4403 lt!1713095)) e!2828954)))

(declare-fun b!4539782 () Bool)

(assert (=> b!4539782 (= e!2828954 ((as const (Array tuple2!51226 Bool)) false))))

(declare-fun b!4539783 () Bool)

(assert (=> b!4539783 (= e!2828954 ((_ map or) (store ((as const (Array tuple2!51226 Bool)) false) (h!56627 (toList!4403 lt!1713095)) true) (content!8434 (t!357834 (toList!4403 lt!1713095)))))))

(assert (= (and d!1403205 c!775424) b!4539782))

(assert (= (and d!1403205 (not c!775424)) b!4539783))

(declare-fun m!5305929 () Bool)

(assert (=> b!4539783 m!5305929))

(declare-fun m!5305931 () Bool)

(assert (=> b!4539783 m!5305931))

(assert (=> d!1402339 d!1403205))

(assert (=> b!4538572 d!1402563))

(declare-fun d!1403207 () Bool)

(declare-fun lt!1714412 () Bool)

(assert (=> d!1403207 (= lt!1714412 (select (content!8437 (toList!4404 lt!1713439)) lt!1713120))))

(declare-fun e!2828956 () Bool)

(assert (=> d!1403207 (= lt!1714412 e!2828956)))

(declare-fun res!1891866 () Bool)

(assert (=> d!1403207 (=> (not res!1891866) (not e!2828956))))

(assert (=> d!1403207 (= res!1891866 ((_ is Cons!50749) (toList!4404 lt!1713439)))))

(assert (=> d!1403207 (= (contains!13537 (toList!4404 lt!1713439) lt!1713120) lt!1714412)))

(declare-fun b!4539784 () Bool)

(declare-fun e!2828955 () Bool)

(assert (=> b!4539784 (= e!2828956 e!2828955)))

(declare-fun res!1891867 () Bool)

(assert (=> b!4539784 (=> res!1891867 e!2828955)))

(assert (=> b!4539784 (= res!1891867 (= (h!56628 (toList!4404 lt!1713439)) lt!1713120))))

(declare-fun b!4539785 () Bool)

(assert (=> b!4539785 (= e!2828955 (contains!13537 (t!357835 (toList!4404 lt!1713439)) lt!1713120))))

(assert (= (and d!1403207 res!1891866) b!4539784))

(assert (= (and b!4539784 (not res!1891867)) b!4539785))

(declare-fun m!5305933 () Bool)

(assert (=> d!1403207 m!5305933))

(declare-fun m!5305935 () Bool)

(assert (=> d!1403207 m!5305935))

(declare-fun m!5305937 () Bool)

(assert (=> b!4539785 m!5305937))

(assert (=> b!4538423 d!1403207))

(declare-fun d!1403209 () Bool)

(declare-fun res!1891868 () Bool)

(declare-fun e!2828957 () Bool)

(assert (=> d!1403209 (=> res!1891868 e!2828957)))

(assert (=> d!1403209 (= res!1891868 ((_ is Nil!50748) (toList!4403 lt!1713095)))))

(assert (=> d!1403209 (= (forall!10343 (toList!4403 lt!1713095) lambda!175888) e!2828957)))

(declare-fun b!4539786 () Bool)

(declare-fun e!2828958 () Bool)

(assert (=> b!4539786 (= e!2828957 e!2828958)))

(declare-fun res!1891869 () Bool)

(assert (=> b!4539786 (=> (not res!1891869) (not e!2828958))))

(assert (=> b!4539786 (= res!1891869 (dynLambda!21212 lambda!175888 (h!56627 (toList!4403 lt!1713095))))))

(declare-fun b!4539787 () Bool)

(assert (=> b!4539787 (= e!2828958 (forall!10343 (t!357834 (toList!4403 lt!1713095)) lambda!175888))))

(assert (= (and d!1403209 (not res!1891868)) b!4539786))

(assert (= (and b!4539786 res!1891869) b!4539787))

(declare-fun b_lambda!157841 () Bool)

(assert (=> (not b_lambda!157841) (not b!4539786)))

(declare-fun m!5305939 () Bool)

(assert (=> b!4539786 m!5305939))

(declare-fun m!5305941 () Bool)

(assert (=> b!4539787 m!5305941))

(assert (=> b!4538499 d!1403209))

(assert (=> b!4538594 d!1402507))

(declare-fun d!1403211 () Bool)

(assert (=> d!1403211 (containsKey!1872 (toList!4403 lt!1713103) key!3287)))

(declare-fun lt!1714413 () Unit!98176)

(assert (=> d!1403211 (= lt!1714413 (choose!29884 (toList!4403 lt!1713103) key!3287))))

(assert (=> d!1403211 (invariantList!1043 (toList!4403 lt!1713103))))

(assert (=> d!1403211 (= (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713103) key!3287) lt!1714413)))

(declare-fun bs!877416 () Bool)

(assert (= bs!877416 d!1403211))

(assert (=> bs!877416 m!5303413))

(declare-fun m!5305943 () Bool)

(assert (=> bs!877416 m!5305943))

(assert (=> bs!877416 m!5303801))

(assert (=> b!4538594 d!1403211))

(assert (=> b!4538598 d!1402831))

(assert (=> b!4538598 d!1402833))

(declare-fun d!1403213 () Bool)

(declare-fun res!1891870 () Bool)

(declare-fun e!2828959 () Bool)

(assert (=> d!1403213 (=> res!1891870 e!2828959)))

(assert (=> d!1403213 (= res!1891870 (and ((_ is Cons!50748) (t!357834 (_2!28908 lt!1713093))) (= (_1!28907 (h!56627 (t!357834 (_2!28908 lt!1713093)))) (_1!28907 (h!56627 (_2!28908 lt!1713093))))))))

(assert (=> d!1403213 (= (containsKey!1870 (t!357834 (_2!28908 lt!1713093)) (_1!28907 (h!56627 (_2!28908 lt!1713093)))) e!2828959)))

(declare-fun b!4539788 () Bool)

(declare-fun e!2828960 () Bool)

(assert (=> b!4539788 (= e!2828959 e!2828960)))

(declare-fun res!1891871 () Bool)

(assert (=> b!4539788 (=> (not res!1891871) (not e!2828960))))

(assert (=> b!4539788 (= res!1891871 ((_ is Cons!50748) (t!357834 (_2!28908 lt!1713093))))))

(declare-fun b!4539789 () Bool)

(assert (=> b!4539789 (= e!2828960 (containsKey!1870 (t!357834 (t!357834 (_2!28908 lt!1713093))) (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (= (and d!1403213 (not res!1891870)) b!4539788))

(assert (= (and b!4539788 res!1891871) b!4539789))

(declare-fun m!5305945 () Bool)

(assert (=> b!4539789 m!5305945))

(assert (=> b!4538358 d!1403213))

(declare-fun b!4539790 () Bool)

(declare-fun e!2828961 () Bool)

(assert (=> b!4539790 (= e!2828961 (not (contains!13540 (keys!17658 lt!1713448) key!3287)))))

(declare-fun bm!316575 () Bool)

(declare-fun call!316580 () Bool)

(declare-fun e!2828966 () List!50875)

(assert (=> bm!316575 (= call!316580 (contains!13540 e!2828966 key!3287))))

(declare-fun c!775425 () Bool)

(declare-fun c!775427 () Bool)

(assert (=> bm!316575 (= c!775425 c!775427)))

(declare-fun b!4539791 () Bool)

(declare-fun e!2828964 () Bool)

(assert (=> b!4539791 (= e!2828964 (contains!13540 (keys!17658 lt!1713448) key!3287))))

(declare-fun b!4539792 () Bool)

(declare-fun e!2828962 () Bool)

(assert (=> b!4539792 (= e!2828962 e!2828964)))

(declare-fun res!1891874 () Bool)

(assert (=> b!4539792 (=> (not res!1891874) (not e!2828964))))

(assert (=> b!4539792 (= res!1891874 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713448) key!3287)))))

(declare-fun b!4539793 () Bool)

(declare-fun e!2828965 () Unit!98176)

(declare-fun Unit!98519 () Unit!98176)

(assert (=> b!4539793 (= e!2828965 Unit!98519)))

(declare-fun b!4539794 () Bool)

(declare-fun e!2828963 () Unit!98176)

(assert (=> b!4539794 (= e!2828963 e!2828965)))

(declare-fun c!775426 () Bool)

(assert (=> b!4539794 (= c!775426 call!316580)))

(declare-fun d!1403215 () Bool)

(assert (=> d!1403215 e!2828962))

(declare-fun res!1891873 () Bool)

(assert (=> d!1403215 (=> res!1891873 e!2828962)))

(assert (=> d!1403215 (= res!1891873 e!2828961)))

(declare-fun res!1891872 () Bool)

(assert (=> d!1403215 (=> (not res!1891872) (not e!2828961))))

(declare-fun lt!1714415 () Bool)

(assert (=> d!1403215 (= res!1891872 (not lt!1714415))))

(declare-fun lt!1714417 () Bool)

(assert (=> d!1403215 (= lt!1714415 lt!1714417)))

(declare-fun lt!1714416 () Unit!98176)

(assert (=> d!1403215 (= lt!1714416 e!2828963)))

(assert (=> d!1403215 (= c!775427 lt!1714417)))

(assert (=> d!1403215 (= lt!1714417 (containsKey!1872 (toList!4403 lt!1713448) key!3287))))

(assert (=> d!1403215 (= (contains!13538 lt!1713448 key!3287) lt!1714415)))

(declare-fun b!4539795 () Bool)

(assert (=> b!4539795 (= e!2828966 (getKeysList!491 (toList!4403 lt!1713448)))))

(declare-fun b!4539796 () Bool)

(assert (=> b!4539796 false))

(declare-fun lt!1714421 () Unit!98176)

(declare-fun lt!1714418 () Unit!98176)

(assert (=> b!4539796 (= lt!1714421 lt!1714418)))

(assert (=> b!4539796 (containsKey!1872 (toList!4403 lt!1713448) key!3287)))

(assert (=> b!4539796 (= lt!1714418 (lemmaInGetKeysListThenContainsKey!490 (toList!4403 lt!1713448) key!3287))))

(declare-fun Unit!98520 () Unit!98176)

(assert (=> b!4539796 (= e!2828965 Unit!98520)))

(declare-fun b!4539797 () Bool)

(declare-fun lt!1714419 () Unit!98176)

(assert (=> b!4539797 (= e!2828963 lt!1714419)))

(declare-fun lt!1714420 () Unit!98176)

(assert (=> b!4539797 (= lt!1714420 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713448) key!3287))))

(assert (=> b!4539797 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713448) key!3287))))

(declare-fun lt!1714414 () Unit!98176)

(assert (=> b!4539797 (= lt!1714414 lt!1714420)))

(assert (=> b!4539797 (= lt!1714419 (lemmaInListThenGetKeysListContains!487 (toList!4403 lt!1713448) key!3287))))

(assert (=> b!4539797 call!316580))

(declare-fun b!4539798 () Bool)

(assert (=> b!4539798 (= e!2828966 (keys!17658 lt!1713448))))

(assert (= (and d!1403215 c!775427) b!4539797))

(assert (= (and d!1403215 (not c!775427)) b!4539794))

(assert (= (and b!4539794 c!775426) b!4539796))

(assert (= (and b!4539794 (not c!775426)) b!4539793))

(assert (= (or b!4539797 b!4539794) bm!316575))

(assert (= (and bm!316575 c!775425) b!4539795))

(assert (= (and bm!316575 (not c!775425)) b!4539798))

(assert (= (and d!1403215 res!1891872) b!4539790))

(assert (= (and d!1403215 (not res!1891873)) b!4539792))

(assert (= (and b!4539792 res!1891874) b!4539791))

(declare-fun m!5305947 () Bool)

(assert (=> bm!316575 m!5305947))

(declare-fun m!5305949 () Bool)

(assert (=> b!4539792 m!5305949))

(assert (=> b!4539792 m!5305949))

(declare-fun m!5305951 () Bool)

(assert (=> b!4539792 m!5305951))

(declare-fun m!5305953 () Bool)

(assert (=> d!1403215 m!5305953))

(assert (=> b!4539790 m!5303137))

(assert (=> b!4539790 m!5303137))

(declare-fun m!5305955 () Bool)

(assert (=> b!4539790 m!5305955))

(assert (=> b!4539798 m!5303137))

(assert (=> b!4539791 m!5303137))

(assert (=> b!4539791 m!5303137))

(assert (=> b!4539791 m!5305955))

(assert (=> b!4539796 m!5305953))

(declare-fun m!5305957 () Bool)

(assert (=> b!4539796 m!5305957))

(declare-fun m!5305959 () Bool)

(assert (=> b!4539797 m!5305959))

(assert (=> b!4539797 m!5305949))

(assert (=> b!4539797 m!5305949))

(assert (=> b!4539797 m!5305951))

(declare-fun m!5305961 () Bool)

(assert (=> b!4539797 m!5305961))

(assert (=> b!4539795 m!5305731))

(assert (=> d!1402381 d!1403215))

(declare-fun b!4539799 () Bool)

(declare-fun e!2828968 () Unit!98176)

(declare-fun Unit!98521 () Unit!98176)

(assert (=> b!4539799 (= e!2828968 Unit!98521)))

(declare-fun b!4539800 () Bool)

(declare-fun e!2828971 () List!50872)

(assert (=> b!4539800 (= e!2828971 (t!357834 (toList!4403 lt!1713092)))))

(declare-fun c!775429 () Bool)

(declare-fun call!316582 () Bool)

(assert (=> b!4539800 (= c!775429 call!316582)))

(declare-fun lt!1714422 () Unit!98176)

(declare-fun e!2828967 () Unit!98176)

(assert (=> b!4539800 (= lt!1714422 e!2828967)))

(declare-fun b!4539801 () Bool)

(declare-fun res!1891876 () Bool)

(declare-fun e!2828972 () Bool)

(assert (=> b!4539801 (=> (not res!1891876) (not e!2828972))))

(declare-fun lt!1714423 () List!50872)

(assert (=> b!4539801 (= res!1891876 (= (content!8435 (getKeysList!491 lt!1714423)) ((_ map and) (content!8435 (getKeysList!491 (toList!4403 lt!1713092))) ((_ map not) (store ((as const (Array K!12135 Bool)) false) key!3287 true)))))))

(declare-fun b!4539802 () Bool)

(declare-fun e!2828969 () Unit!98176)

(declare-fun Unit!98522 () Unit!98176)

(assert (=> b!4539802 (= e!2828969 Unit!98522)))

(declare-fun lt!1714424 () Unit!98176)

(assert (=> b!4539802 (= lt!1714424 (lemmaInGetKeysListThenContainsKey!490 (t!357834 (toList!4403 lt!1713092)) (_1!28907 (h!56627 (toList!4403 lt!1713092)))))))

(assert (=> b!4539802 call!316582))

(declare-fun lt!1714427 () Unit!98176)

(assert (=> b!4539802 (= lt!1714427 lt!1714424)))

(assert (=> b!4539802 false))

(declare-fun call!316585 () (InoxSet tuple2!51226))

(declare-fun b!4539803 () Bool)

(declare-fun call!316584 () (InoxSet tuple2!51226))

(declare-fun e!2828970 () Bool)

(assert (=> b!4539803 (= e!2828970 (= call!316584 ((_ map and) call!316585 ((_ map not) (store ((as const (Array tuple2!51226 Bool)) false) (tuple2!51227 key!3287 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287))) true)))))))

(assert (=> b!4539803 (containsKey!1872 (toList!4403 lt!1713092) key!3287)))

(declare-fun lt!1714435 () Unit!98176)

(assert (=> b!4539803 (= lt!1714435 (lemmaContainsKeyImpliesGetValueByKeyDefined!1047 (toList!4403 lt!1713092) key!3287))))

(assert (=> b!4539803 (isDefined!8474 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287))))

(declare-fun lt!1714425 () Unit!98176)

(assert (=> b!4539803 (= lt!1714425 lt!1714435)))

(declare-fun d!1403217 () Bool)

(assert (=> d!1403217 e!2828972))

(declare-fun res!1891877 () Bool)

(assert (=> d!1403217 (=> (not res!1891877) (not e!2828972))))

(assert (=> d!1403217 (= res!1891877 (invariantList!1043 lt!1714423))))

(assert (=> d!1403217 (= lt!1714423 e!2828971)))

(declare-fun c!775435 () Bool)

(assert (=> d!1403217 (= c!775435 (and ((_ is Cons!50748) (toList!4403 lt!1713092)) (= (_1!28907 (h!56627 (toList!4403 lt!1713092))) key!3287)))))

(assert (=> d!1403217 (invariantList!1043 (toList!4403 lt!1713092))))

(assert (=> d!1403217 (= (removePresrvNoDuplicatedKeys!167 (toList!4403 lt!1713092) key!3287) lt!1714423)))

(declare-fun bm!316576 () Bool)

(assert (=> bm!316576 (= call!316582 (containsKey!1872 (ite c!775435 (toList!4403 lt!1713092) (t!357834 (toList!4403 lt!1713092))) (ite c!775435 key!3287 (_1!28907 (h!56627 (toList!4403 lt!1713092))))))))

(declare-fun b!4539804 () Bool)

(declare-fun e!2828974 () List!50872)

(assert (=> b!4539804 (= e!2828971 e!2828974)))

(declare-fun c!775431 () Bool)

(assert (=> b!4539804 (= c!775431 (and ((_ is Cons!50748) (toList!4403 lt!1713092)) (not (= (_1!28907 (h!56627 (toList!4403 lt!1713092))) key!3287))))))

(declare-fun b!4539805 () Bool)

(assert (=> b!4539805 (= e!2828974 Nil!50748)))

(declare-fun b!4539806 () Bool)

(declare-fun res!1891875 () Bool)

(assert (=> b!4539806 (=> (not res!1891875) (not e!2828972))))

(assert (=> b!4539806 (= res!1891875 (not (containsKey!1872 lt!1714423 key!3287)))))

(declare-fun bm!316577 () Bool)

(assert (=> bm!316577 (= call!316584 (content!8434 lt!1714423))))

(declare-fun b!4539807 () Bool)

(declare-fun e!2828973 () List!50872)

(assert (=> b!4539807 (= e!2828973 (t!357834 (toList!4403 lt!1713092)))))

(declare-fun bm!316578 () Bool)

(declare-fun call!316586 () (InoxSet tuple2!51226))

(assert (=> bm!316578 (= call!316586 (content!8434 (toList!4403 lt!1713092)))))

(declare-fun b!4539808 () Bool)

(declare-fun Unit!98523 () Unit!98176)

(assert (=> b!4539808 (= e!2828969 Unit!98523)))

(declare-fun b!4539809 () Bool)

(declare-fun e!2828975 () Unit!98176)

(declare-fun Unit!98524 () Unit!98176)

(assert (=> b!4539809 (= e!2828975 Unit!98524)))

(declare-fun lt!1714433 () List!50872)

(assert (=> b!4539809 (= lt!1714433 (removePresrvNoDuplicatedKeys!167 (t!357834 (toList!4403 lt!1713092)) key!3287))))

(declare-fun lt!1714437 () Unit!98176)

(assert (=> b!4539809 (= lt!1714437 (lemmaInListThenGetKeysListContains!487 lt!1714433 (_1!28907 (h!56627 (toList!4403 lt!1713092)))))))

(assert (=> b!4539809 (contains!13540 (getKeysList!491 lt!1714433) (_1!28907 (h!56627 (toList!4403 lt!1713092))))))

(declare-fun lt!1714438 () Unit!98176)

(assert (=> b!4539809 (= lt!1714438 lt!1714437)))

(assert (=> b!4539809 false))

(declare-fun lt!1714428 () K!12135)

(declare-fun bm!316579 () Bool)

(declare-fun call!316583 () Bool)

(assert (=> bm!316579 (= call!316583 (containsKey!1872 e!2828973 (ite c!775435 lt!1714428 (_1!28907 (h!56627 (toList!4403 lt!1713092))))))))

(declare-fun c!775428 () Bool)

(assert (=> bm!316579 (= c!775428 c!775435)))

(declare-fun b!4539810 () Bool)

(declare-fun call!316581 () (InoxSet tuple2!51226))

(assert (=> b!4539810 (= call!316581 call!316586)))

(declare-fun Unit!98525 () Unit!98176)

(assert (=> b!4539810 (= e!2828967 Unit!98525)))

(declare-fun bm!316580 () Bool)

(assert (=> bm!316580 (= call!316585 (content!8434 (toList!4403 lt!1713092)))))

(declare-fun b!4539811 () Bool)

(assert (=> b!4539811 (= e!2828970 (= call!316584 call!316585))))

(declare-fun b!4539812 () Bool)

(declare-fun Unit!98526 () Unit!98176)

(assert (=> b!4539812 (= e!2828975 Unit!98526)))

(declare-fun b!4539813 () Bool)

(assert (=> b!4539813 (= e!2828972 e!2828970)))

(declare-fun c!775430 () Bool)

(assert (=> b!4539813 (= c!775430 (containsKey!1872 (toList!4403 lt!1713092) key!3287))))

(declare-fun b!4539814 () Bool)

(assert (=> b!4539814 (= e!2828973 (removePresrvNoDuplicatedKeys!167 (t!357834 (toList!4403 lt!1713092)) key!3287))))

(declare-fun b!4539815 () Bool)

(declare-fun lt!1714429 () Unit!98176)

(assert (=> b!4539815 (= lt!1714429 e!2828975)))

(declare-fun c!775433 () Bool)

(assert (=> b!4539815 (= c!775433 call!316583)))

(declare-fun lt!1714430 () Unit!98176)

(assert (=> b!4539815 (= lt!1714430 e!2828969)))

(declare-fun c!775432 () Bool)

(assert (=> b!4539815 (= c!775432 (contains!13540 (getKeysList!491 (t!357834 (toList!4403 lt!1713092))) (_1!28907 (h!56627 (toList!4403 lt!1713092)))))))

(declare-fun lt!1714432 () List!50872)

(assert (=> b!4539815 (= lt!1714432 ($colon$colon!964 (removePresrvNoDuplicatedKeys!167 (t!357834 (toList!4403 lt!1713092)) key!3287) (h!56627 (toList!4403 lt!1713092))))))

(assert (=> b!4539815 (= e!2828974 lt!1714432)))

(declare-fun b!4539816 () Bool)

(assert (=> b!4539816 (= call!316581 ((_ map and) call!316586 ((_ map not) (store ((as const (Array tuple2!51226 Bool)) false) (tuple2!51227 key!3287 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287))) true))))))

(declare-fun lt!1714431 () Unit!98176)

(assert (=> b!4539816 (= lt!1714431 e!2828968)))

(declare-fun c!775434 () Bool)

(assert (=> b!4539816 (= c!775434 (contains!13542 (t!357834 (toList!4403 lt!1713092)) (tuple2!51227 key!3287 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287)))))))

(declare-fun Unit!98527 () Unit!98176)

(assert (=> b!4539816 (= e!2828967 Unit!98527)))

(declare-fun b!4539817 () Bool)

(declare-fun Unit!98528 () Unit!98176)

(assert (=> b!4539817 (= e!2828968 Unit!98528)))

(declare-fun lt!1714426 () V!12381)

(assert (=> b!4539817 (= lt!1714426 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287)))))

(assert (=> b!4539817 (= lt!1714428 key!3287)))

(declare-fun lt!1714439 () K!12135)

(assert (=> b!4539817 (= lt!1714439 key!3287)))

(declare-fun lt!1714434 () Unit!98176)

(assert (=> b!4539817 (= lt!1714434 (lemmaContainsTupleThenContainsKey!76 (t!357834 (toList!4403 lt!1713092)) lt!1714428 (get!16684 (getValueByKey!1144 (toList!4403 lt!1713092) key!3287))))))

(assert (=> b!4539817 call!316583))

(declare-fun lt!1714436 () Unit!98176)

(assert (=> b!4539817 (= lt!1714436 lt!1714434)))

(assert (=> b!4539817 false))

(declare-fun bm!316581 () Bool)

(assert (=> bm!316581 (= call!316581 (content!8434 (t!357834 (toList!4403 lt!1713092))))))

(assert (= (and d!1403217 c!775435) b!4539800))

(assert (= (and d!1403217 (not c!775435)) b!4539804))

(assert (= (and b!4539800 c!775429) b!4539816))

(assert (= (and b!4539800 (not c!775429)) b!4539810))

(assert (= (and b!4539816 c!775434) b!4539817))

(assert (= (and b!4539816 (not c!775434)) b!4539799))

(assert (= (or b!4539816 b!4539810) bm!316581))

(assert (= (or b!4539816 b!4539810) bm!316578))

(assert (= (and b!4539804 c!775431) b!4539815))

(assert (= (and b!4539804 (not c!775431)) b!4539805))

(assert (= (and b!4539815 c!775432) b!4539802))

(assert (= (and b!4539815 (not c!775432)) b!4539808))

(assert (= (and b!4539815 c!775433) b!4539809))

(assert (= (and b!4539815 (not c!775433)) b!4539812))

(assert (= (or b!4539800 b!4539802) bm!316576))

(assert (= (or b!4539817 b!4539815) bm!316579))

(assert (= (and bm!316579 c!775428) b!4539807))

(assert (= (and bm!316579 (not c!775428)) b!4539814))

(assert (= (and d!1403217 res!1891877) b!4539806))

(assert (= (and b!4539806 res!1891875) b!4539801))

(assert (= (and b!4539801 res!1891876) b!4539813))

(assert (= (and b!4539813 c!775430) b!4539803))

(assert (= (and b!4539813 (not c!775430)) b!4539811))

(assert (= (or b!4539803 b!4539811) bm!316577))

(assert (= (or b!4539803 b!4539811) bm!316580))

(assert (=> b!4539817 m!5302795))

(assert (=> b!4539817 m!5302795))

(declare-fun m!5305999 () Bool)

(assert (=> b!4539817 m!5305999))

(assert (=> b!4539817 m!5305999))

(declare-fun m!5306001 () Bool)

(assert (=> b!4539817 m!5306001))

(assert (=> bm!316581 m!5303925))

(declare-fun m!5306003 () Bool)

(assert (=> b!4539814 m!5306003))

(declare-fun m!5306005 () Bool)

(assert (=> b!4539806 m!5306005))

(assert (=> b!4539809 m!5306003))

(declare-fun m!5306007 () Bool)

(assert (=> b!4539809 m!5306007))

(declare-fun m!5306009 () Bool)

(assert (=> b!4539809 m!5306009))

(assert (=> b!4539809 m!5306009))

(declare-fun m!5306011 () Bool)

(assert (=> b!4539809 m!5306011))

(assert (=> bm!316578 m!5302751))

(declare-fun m!5306013 () Bool)

(assert (=> bm!316579 m!5306013))

(assert (=> b!4539803 m!5302795))

(assert (=> b!4539803 m!5302795))

(assert (=> b!4539803 m!5302797))

(declare-fun m!5306015 () Bool)

(assert (=> b!4539803 m!5306015))

(assert (=> b!4539803 m!5302799))

(assert (=> b!4539803 m!5302795))

(assert (=> b!4539803 m!5305999))

(assert (=> b!4539803 m!5302807))

(assert (=> b!4539816 m!5302795))

(assert (=> b!4539816 m!5302795))

(assert (=> b!4539816 m!5305999))

(assert (=> b!4539816 m!5306015))

(declare-fun m!5306017 () Bool)

(assert (=> b!4539816 m!5306017))

(declare-fun m!5306019 () Bool)

(assert (=> bm!316576 m!5306019))

(declare-fun m!5306021 () Bool)

(assert (=> d!1403217 m!5306021))

(assert (=> d!1403217 m!5303789))

(declare-fun m!5306023 () Bool)

(assert (=> bm!316577 m!5306023))

(assert (=> b!4539815 m!5305369))

(assert (=> b!4539815 m!5305369))

(assert (=> b!4539815 m!5305371))

(assert (=> b!4539815 m!5306003))

(assert (=> b!4539815 m!5306003))

(declare-fun m!5306025 () Bool)

(assert (=> b!4539815 m!5306025))

(assert (=> bm!316580 m!5302751))

(assert (=> b!4539813 m!5302799))

(declare-fun m!5306027 () Bool)

(assert (=> b!4539802 m!5306027))

(declare-fun m!5306029 () Bool)

(assert (=> b!4539801 m!5306029))

(assert (=> b!4539801 m!5302995))

(assert (=> b!4539801 m!5302811))

(assert (=> b!4539801 m!5306029))

(declare-fun m!5306031 () Bool)

(assert (=> b!4539801 m!5306031))

(assert (=> b!4539801 m!5302811))

(declare-fun m!5306033 () Bool)

(assert (=> b!4539801 m!5306033))

(assert (=> d!1402381 d!1403217))

(declare-fun d!1403221 () Bool)

(declare-fun c!775437 () Bool)

(assert (=> d!1403221 (= c!775437 ((_ is Nil!50749) (t!357835 (toList!4404 lm!1477))))))

(declare-fun e!2828977 () (InoxSet tuple2!51228))

(assert (=> d!1403221 (= (content!8437 (t!357835 (toList!4404 lm!1477))) e!2828977)))

(declare-fun b!4539820 () Bool)

(assert (=> b!4539820 (= e!2828977 ((as const (Array tuple2!51228 Bool)) false))))

(declare-fun b!4539821 () Bool)

(assert (=> b!4539821 (= e!2828977 ((_ map or) (store ((as const (Array tuple2!51228 Bool)) false) (h!56628 (t!357835 (toList!4404 lm!1477))) true) (content!8437 (t!357835 (t!357835 (toList!4404 lm!1477))))))))

(assert (= (and d!1403221 c!775437) b!4539820))

(assert (= (and d!1403221 (not c!775437)) b!4539821))

(declare-fun m!5306043 () Bool)

(assert (=> b!4539821 m!5306043))

(assert (=> b!4539821 m!5304845))

(assert (=> d!1402375 d!1403221))

(declare-fun d!1403225 () Bool)

(assert (=> d!1403225 (dynLambda!21212 lambda!175771 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113))))))

(assert (=> d!1403225 true))

(declare-fun _$7!1947 () Unit!98176)

(assert (=> d!1403225 (= (choose!29871 (_2!28908 (h!56628 (toList!4404 lm!1477))) lambda!175771 (tuple2!51227 key!3287 (_2!28907 (get!16681 lt!1713113)))) _$7!1947)))

(declare-fun b_lambda!157843 () Bool)

(assert (=> (not b_lambda!157843) (not d!1403225)))

(declare-fun bs!877439 () Bool)

(assert (= bs!877439 d!1403225))

(assert (=> bs!877439 m!5303207))

(assert (=> d!1402395 d!1403225))

(declare-fun d!1403229 () Bool)

(declare-fun res!1891881 () Bool)

(declare-fun e!2828981 () Bool)

(assert (=> d!1403229 (=> res!1891881 e!2828981)))

(assert (=> d!1403229 (= res!1891881 ((_ is Nil!50748) (_2!28908 (h!56628 (toList!4404 lm!1477)))))))

(assert (=> d!1403229 (= (forall!10343 (_2!28908 (h!56628 (toList!4404 lm!1477))) lambda!175771) e!2828981)))

(declare-fun b!4539827 () Bool)

(declare-fun e!2828982 () Bool)

(assert (=> b!4539827 (= e!2828981 e!2828982)))

(declare-fun res!1891882 () Bool)

(assert (=> b!4539827 (=> (not res!1891882) (not e!2828982))))

(assert (=> b!4539827 (= res!1891882 (dynLambda!21212 lambda!175771 (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477))))))))

(declare-fun b!4539828 () Bool)

(assert (=> b!4539828 (= e!2828982 (forall!10343 (t!357834 (_2!28908 (h!56628 (toList!4404 lm!1477)))) lambda!175771))))

(assert (= (and d!1403229 (not res!1891881)) b!4539827))

(assert (= (and b!4539827 res!1891882) b!4539828))

(declare-fun b_lambda!157845 () Bool)

(assert (=> (not b_lambda!157845) (not b!4539827)))

(declare-fun m!5306047 () Bool)

(assert (=> b!4539827 m!5306047))

(declare-fun m!5306049 () Bool)

(assert (=> b!4539828 m!5306049))

(assert (=> d!1402395 d!1403229))

(assert (=> d!1402487 d!1402485))

(assert (=> d!1402487 d!1402327))

(declare-fun bs!877453 () Bool)

(declare-fun b!4539833 () Bool)

(assert (= bs!877453 (and b!4539833 d!1402485)))

(declare-fun lambda!176082 () Int)

(assert (=> bs!877453 (= (= (-!424 lt!1713103 key!3287) lt!1713584) (= lambda!176082 lambda!175909))))

(declare-fun bs!877456 () Bool)

(assert (= bs!877456 (and b!4539833 d!1402823)))

(assert (=> bs!877456 (= (= (-!424 lt!1713103 key!3287) lt!1713909) (= lambda!176082 lambda!175983))))

(declare-fun bs!877457 () Bool)

(assert (= bs!877457 (and b!4539833 b!4538685)))

(assert (=> bs!877457 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176082 lambda!175925))))

(declare-fun bs!877459 () Bool)

(assert (= bs!877459 (and b!4539833 d!1402523)))

(assert (=> bs!877459 (not (= lambda!176082 lambda!175918))))

(declare-fun bs!877461 () Bool)

(assert (= bs!877461 (and b!4539833 b!4539182)))

(assert (=> bs!877461 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176082 lambda!175976))))

(declare-fun bs!877463 () Bool)

(assert (= bs!877463 (and b!4539833 b!4539282)))

(assert (=> bs!877463 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176082 lambda!175996))))

(assert (=> bs!877461 (= (= (-!424 lt!1713103 key!3287) lt!1713882) (= lambda!176082 lambda!175977))))

(declare-fun bs!877467 () Bool)

(assert (= bs!877467 (and b!4539833 b!4538501)))

(assert (=> bs!877467 (= (= (-!424 lt!1713103 key!3287) lt!1713493) (= lambda!176082 lambda!175886))))

(declare-fun bs!877468 () Bool)

(assert (= bs!877468 (and b!4539833 b!4539680)))

(assert (=> bs!877468 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176082 lambda!176052))))

(assert (=> bs!877457 (= (= (-!424 lt!1713103 key!3287) lt!1713639) (= lambda!176082 lambda!175926))))

(declare-fun bs!877471 () Bool)

(assert (= bs!877471 (and b!4539833 b!4539767)))

(assert (=> bs!877471 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176082 lambda!176072))))

(declare-fun bs!877473 () Bool)

(assert (= bs!877473 (and b!4539833 b!4539183)))

(assert (=> bs!877473 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176082 lambda!175975))))

(declare-fun bs!877475 () Bool)

(assert (= bs!877475 (and b!4539833 b!4539235)))

(assert (=> bs!877475 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176082 lambda!175980))))

(declare-fun bs!877476 () Bool)

(assert (= bs!877476 (and b!4539833 b!4538248)))

(assert (=> bs!877476 (= (= (-!424 lt!1713103 key!3287) lt!1713121) (= lambda!176082 lambda!175836))))

(declare-fun bs!877478 () Bool)

(assert (= bs!877478 (and b!4539833 b!4538686)))

(assert (=> bs!877478 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176082 lambda!175924))))

(assert (=> bs!877471 (= (= (-!424 lt!1713103 key!3287) lt!1714378) (= lambda!176082 lambda!176074))))

(declare-fun bs!877480 () Bool)

(assert (= bs!877480 (and b!4539833 b!4538618)))

(assert (=> bs!877480 (= (= (-!424 lt!1713103 key!3287) lt!1713103) (= lambda!176082 lambda!175906))))

(declare-fun bs!877482 () Bool)

(assert (= bs!877482 (and b!4539833 b!4538678)))

(assert (=> bs!877482 (= (= (-!424 lt!1713103 key!3287) lt!1713617) (= lambda!176082 lambda!175921))))

(declare-fun bs!877483 () Bool)

(assert (= bs!877483 (and b!4539833 d!1402409)))

(assert (=> bs!877483 (= (= (-!424 lt!1713103 key!3287) lt!1713488) (= lambda!176082 lambda!175888))))

(assert (=> bs!877468 (= (= (-!424 lt!1713103 key!3287) lt!1714270) (= lambda!176082 lambda!176054))))

(assert (=> bs!877482 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176082 lambda!175920))))

(declare-fun bs!877486 () Bool)

(assert (= bs!877486 (and b!4539833 d!1402527)))

(assert (=> bs!877486 (= (= (-!424 lt!1713103 key!3287) lt!1713612) (= lambda!176082 lambda!175922))))

(declare-fun bs!877488 () Bool)

(assert (= bs!877488 (and b!4539833 d!1402887)))

(assert (=> bs!877488 (= (= (-!424 lt!1713103 key!3287) lt!1713493) (= lambda!176082 lambda!176005))))

(assert (=> bs!877476 (= (= (-!424 lt!1713103 key!3287) lt!1713258) (= lambda!176082 lambda!175837))))

(declare-fun bs!877491 () Bool)

(assert (= bs!877491 (and b!4539833 b!4538617)))

(assert (=> bs!877491 (= (= (-!424 lt!1713103 key!3287) lt!1713589) (= lambda!176082 lambda!175908))))

(declare-fun bs!877492 () Bool)

(assert (= bs!877492 (and b!4539833 d!1402987)))

(assert (=> bs!877492 (= (= (-!424 lt!1713103 key!3287) lt!1714096) (= lambda!176082 lambda!176018))))

(declare-fun bs!877493 () Bool)

(assert (= bs!877493 (and b!4539833 b!4538249)))

(assert (=> bs!877493 (= (= (-!424 lt!1713103 key!3287) lt!1713121) (= lambda!176082 lambda!175834))))

(declare-fun bs!877494 () Bool)

(assert (= bs!877494 (and b!4539833 b!4538502)))

(assert (=> bs!877494 (= (= (-!424 lt!1713103 key!3287) lt!1713095) (= lambda!176082 lambda!175883))))

(declare-fun bs!877496 () Bool)

(assert (= bs!877496 (and b!4539833 d!1402229)))

(assert (=> bs!877496 (= (= (-!424 lt!1713103 key!3287) lt!1713253) (= lambda!176082 lambda!175838))))

(declare-fun bs!877498 () Bool)

(assert (= bs!877498 (and b!4539833 d!1403123)))

(assert (=> bs!877498 (= (= (-!424 lt!1713103 key!3287) lt!1714265) (= lambda!176082 lambda!176057))))

(declare-fun bs!877500 () Bool)

(assert (= bs!877500 (and b!4539833 b!4539768)))

(assert (=> bs!877500 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176082 lambda!176071))))

(declare-fun bs!877501 () Bool)

(assert (= bs!877501 (and b!4539833 b!4539429)))

(assert (=> bs!877501 (= (= (-!424 lt!1713103 key!3287) lt!1714101) (= lambda!176082 lambda!176015))))

(declare-fun bs!877503 () Bool)

(assert (= bs!877503 (and b!4539833 b!4539281)))

(assert (=> bs!877503 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176082 lambda!175998))))

(declare-fun bs!877504 () Bool)

(assert (= bs!877504 (and b!4539833 d!1402771)))

(assert (=> bs!877504 (= (= (-!424 lt!1713103 key!3287) lt!1713877) (= lambda!176082 lambda!175978))))

(declare-fun bs!877505 () Bool)

(assert (= bs!877505 (and b!4539833 d!1402317)))

(assert (=> bs!877505 (not (= lambda!176082 lambda!175860))))

(declare-fun bs!877506 () Bool)

(assert (= bs!877506 (and b!4539833 b!4539234)))

(assert (=> bs!877506 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176082 lambda!175981))))

(assert (=> bs!877467 (= (= (-!424 lt!1713103 key!3287) lt!1713095) (= lambda!176082 lambda!175885))))

(declare-fun bs!877507 () Bool)

(assert (= bs!877507 (and b!4539833 b!4538679)))

(assert (=> bs!877507 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176082 lambda!175919))))

(declare-fun bs!877508 () Bool)

(assert (= bs!877508 (and b!4539833 d!1402545)))

(assert (=> bs!877508 (= (= (-!424 lt!1713103 key!3287) lt!1713589) (= lambda!176082 lambda!175932))))

(declare-fun bs!877510 () Bool)

(assert (= bs!877510 (and b!4539833 d!1402983)))

(assert (=> bs!877510 (= (= (-!424 lt!1713103 key!3287) lt!1713103) (= lambda!176082 lambda!176011))))

(assert (=> bs!877501 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176082 lambda!176014))))

(declare-fun bs!877512 () Bool)

(assert (= bs!877512 (and b!4539833 d!1402727)))

(assert (=> bs!877512 (= (= (-!424 lt!1713103 key!3287) lt!1713121) (= lambda!176082 lambda!175970))))

(declare-fun bs!877515 () Bool)

(assert (= bs!877515 (and b!4539833 d!1403135)))

(assert (=> bs!877515 (= (= (-!424 lt!1713103 key!3287) lt!1713258) (= lambda!176082 lambda!176059))))

(declare-fun bs!877517 () Bool)

(assert (= bs!877517 (and b!4539833 d!1402531)))

(assert (=> bs!877517 (= (= (-!424 lt!1713103 key!3287) lt!1713634) (= lambda!176082 lambda!175927))))

(declare-fun bs!877519 () Bool)

(assert (= bs!877519 (and b!4539833 d!1402859)))

(assert (=> bs!877519 (= (= (-!424 lt!1713103 key!3287) lt!1713969) (= lambda!176082 lambda!176002))))

(assert (=> bs!877506 (= (= (-!424 lt!1713103 key!3287) lt!1713914) (= lambda!176082 lambda!175982))))

(declare-fun bs!877521 () Bool)

(assert (= bs!877521 (and b!4539833 b!4539430)))

(assert (=> bs!877521 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176082 lambda!176012))))

(assert (=> bs!877491 (= (= (-!424 lt!1713103 key!3287) lt!1713103) (= lambda!176082 lambda!175907))))

(declare-fun bs!877523 () Bool)

(assert (= bs!877523 (and b!4539833 b!4539681)))

(assert (=> bs!877523 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176082 lambda!176050))))

(declare-fun bs!877525 () Bool)

(assert (= bs!877525 (and b!4539833 d!1403191)))

(assert (=> bs!877525 (= (= (-!424 lt!1713103 key!3287) lt!1714373) (= lambda!176082 lambda!176076))))

(declare-fun bs!877527 () Bool)

(assert (= bs!877527 (and b!4539833 b!4538171)))

(assert (=> bs!877527 (not (= lambda!176082 lambda!175771))))

(assert (=> bs!877503 (= (= (-!424 lt!1713103 key!3287) lt!1713974) (= lambda!176082 lambda!176000))))

(assert (=> b!4539833 true))

(declare-fun bs!877535 () Bool)

(declare-fun b!4539832 () Bool)

(assert (= bs!877535 (and b!4539832 d!1402485)))

(declare-fun lambda!176084 () Int)

(assert (=> bs!877535 (= (= (-!424 lt!1713103 key!3287) lt!1713584) (= lambda!176084 lambda!175909))))

(declare-fun bs!877537 () Bool)

(assert (= bs!877537 (and b!4539832 d!1402823)))

(assert (=> bs!877537 (= (= (-!424 lt!1713103 key!3287) lt!1713909) (= lambda!176084 lambda!175983))))

(declare-fun bs!877539 () Bool)

(assert (= bs!877539 (and b!4539832 b!4538685)))

(assert (=> bs!877539 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176084 lambda!175925))))

(declare-fun bs!877540 () Bool)

(assert (= bs!877540 (and b!4539832 d!1402523)))

(assert (=> bs!877540 (not (= lambda!176084 lambda!175918))))

(declare-fun bs!877541 () Bool)

(assert (= bs!877541 (and b!4539832 b!4539182)))

(assert (=> bs!877541 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176084 lambda!175976))))

(declare-fun bs!877543 () Bool)

(assert (= bs!877543 (and b!4539832 b!4539282)))

(assert (=> bs!877543 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176084 lambda!175996))))

(assert (=> bs!877541 (= (= (-!424 lt!1713103 key!3287) lt!1713882) (= lambda!176084 lambda!175977))))

(declare-fun bs!877546 () Bool)

(assert (= bs!877546 (and b!4539832 b!4538501)))

(assert (=> bs!877546 (= (= (-!424 lt!1713103 key!3287) lt!1713493) (= lambda!176084 lambda!175886))))

(declare-fun bs!877548 () Bool)

(assert (= bs!877548 (and b!4539832 b!4539680)))

(assert (=> bs!877548 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176084 lambda!176052))))

(assert (=> bs!877539 (= (= (-!424 lt!1713103 key!3287) lt!1713639) (= lambda!176084 lambda!175926))))

(declare-fun bs!877550 () Bool)

(assert (= bs!877550 (and b!4539832 b!4539767)))

(assert (=> bs!877550 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176084 lambda!176072))))

(declare-fun bs!877552 () Bool)

(assert (= bs!877552 (and b!4539832 b!4539183)))

(assert (=> bs!877552 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176084 lambda!175975))))

(declare-fun bs!877553 () Bool)

(assert (= bs!877553 (and b!4539832 b!4539235)))

(assert (=> bs!877553 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176084 lambda!175980))))

(declare-fun bs!877555 () Bool)

(assert (= bs!877555 (and b!4539832 b!4538248)))

(assert (=> bs!877555 (= (= (-!424 lt!1713103 key!3287) lt!1713121) (= lambda!176084 lambda!175836))))

(declare-fun bs!877556 () Bool)

(assert (= bs!877556 (and b!4539832 b!4538686)))

(assert (=> bs!877556 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176084 lambda!175924))))

(assert (=> bs!877550 (= (= (-!424 lt!1713103 key!3287) lt!1714378) (= lambda!176084 lambda!176074))))

(declare-fun bs!877560 () Bool)

(assert (= bs!877560 (and b!4539832 b!4538618)))

(assert (=> bs!877560 (= (= (-!424 lt!1713103 key!3287) lt!1713103) (= lambda!176084 lambda!175906))))

(declare-fun bs!877561 () Bool)

(assert (= bs!877561 (and b!4539832 b!4538678)))

(assert (=> bs!877561 (= (= (-!424 lt!1713103 key!3287) lt!1713617) (= lambda!176084 lambda!175921))))

(declare-fun bs!877563 () Bool)

(assert (= bs!877563 (and b!4539832 d!1402409)))

(assert (=> bs!877563 (= (= (-!424 lt!1713103 key!3287) lt!1713488) (= lambda!176084 lambda!175888))))

(assert (=> bs!877548 (= (= (-!424 lt!1713103 key!3287) lt!1714270) (= lambda!176084 lambda!176054))))

(assert (=> bs!877561 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176084 lambda!175920))))

(declare-fun bs!877565 () Bool)

(assert (= bs!877565 (and b!4539832 d!1402527)))

(assert (=> bs!877565 (= (= (-!424 lt!1713103 key!3287) lt!1713612) (= lambda!176084 lambda!175922))))

(declare-fun bs!877566 () Bool)

(assert (= bs!877566 (and b!4539832 d!1402887)))

(assert (=> bs!877566 (= (= (-!424 lt!1713103 key!3287) lt!1713493) (= lambda!176084 lambda!176005))))

(assert (=> bs!877555 (= (= (-!424 lt!1713103 key!3287) lt!1713258) (= lambda!176084 lambda!175837))))

(declare-fun bs!877569 () Bool)

(assert (= bs!877569 (and b!4539832 b!4538617)))

(assert (=> bs!877569 (= (= (-!424 lt!1713103 key!3287) lt!1713589) (= lambda!176084 lambda!175908))))

(declare-fun bs!877570 () Bool)

(assert (= bs!877570 (and b!4539832 d!1402987)))

(assert (=> bs!877570 (= (= (-!424 lt!1713103 key!3287) lt!1714096) (= lambda!176084 lambda!176018))))

(declare-fun bs!877572 () Bool)

(assert (= bs!877572 (and b!4539832 b!4538249)))

(assert (=> bs!877572 (= (= (-!424 lt!1713103 key!3287) lt!1713121) (= lambda!176084 lambda!175834))))

(declare-fun bs!877574 () Bool)

(assert (= bs!877574 (and b!4539832 b!4538502)))

(assert (=> bs!877574 (= (= (-!424 lt!1713103 key!3287) lt!1713095) (= lambda!176084 lambda!175883))))

(declare-fun bs!877576 () Bool)

(assert (= bs!877576 (and b!4539832 d!1402229)))

(assert (=> bs!877576 (= (= (-!424 lt!1713103 key!3287) lt!1713253) (= lambda!176084 lambda!175838))))

(declare-fun bs!877578 () Bool)

(assert (= bs!877578 (and b!4539832 d!1403123)))

(assert (=> bs!877578 (= (= (-!424 lt!1713103 key!3287) lt!1714265) (= lambda!176084 lambda!176057))))

(declare-fun bs!877580 () Bool)

(assert (= bs!877580 (and b!4539832 b!4539768)))

(assert (=> bs!877580 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176084 lambda!176071))))

(declare-fun bs!877581 () Bool)

(assert (= bs!877581 (and b!4539832 b!4539429)))

(assert (=> bs!877581 (= (= (-!424 lt!1713103 key!3287) lt!1714101) (= lambda!176084 lambda!176015))))

(declare-fun bs!877582 () Bool)

(assert (= bs!877582 (and b!4539832 b!4539281)))

(assert (=> bs!877582 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176084 lambda!175998))))

(declare-fun bs!877583 () Bool)

(assert (= bs!877583 (and b!4539832 d!1402771)))

(assert (=> bs!877583 (= (= (-!424 lt!1713103 key!3287) lt!1713877) (= lambda!176084 lambda!175978))))

(declare-fun bs!877585 () Bool)

(assert (= bs!877585 (and b!4539832 d!1402317)))

(assert (=> bs!877585 (not (= lambda!176084 lambda!175860))))

(declare-fun bs!877587 () Bool)

(assert (= bs!877587 (and b!4539832 b!4539234)))

(assert (=> bs!877587 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176084 lambda!175981))))

(assert (=> bs!877546 (= (= (-!424 lt!1713103 key!3287) lt!1713095) (= lambda!176084 lambda!175885))))

(declare-fun bs!877589 () Bool)

(assert (= bs!877589 (and b!4539832 b!4538679)))

(assert (=> bs!877589 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176084 lambda!175919))))

(declare-fun bs!877590 () Bool)

(assert (= bs!877590 (and b!4539832 d!1402545)))

(assert (=> bs!877590 (= (= (-!424 lt!1713103 key!3287) lt!1713589) (= lambda!176084 lambda!175932))))

(declare-fun bs!877592 () Bool)

(assert (= bs!877592 (and b!4539832 b!4539833)))

(assert (=> bs!877592 (= lambda!176084 lambda!176082)))

(declare-fun bs!877593 () Bool)

(assert (= bs!877593 (and b!4539832 d!1402983)))

(assert (=> bs!877593 (= (= (-!424 lt!1713103 key!3287) lt!1713103) (= lambda!176084 lambda!176011))))

(assert (=> bs!877581 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176084 lambda!176014))))

(declare-fun bs!877594 () Bool)

(assert (= bs!877594 (and b!4539832 d!1402727)))

(assert (=> bs!877594 (= (= (-!424 lt!1713103 key!3287) lt!1713121) (= lambda!176084 lambda!175970))))

(declare-fun bs!877595 () Bool)

(assert (= bs!877595 (and b!4539832 d!1403135)))

(assert (=> bs!877595 (= (= (-!424 lt!1713103 key!3287) lt!1713258) (= lambda!176084 lambda!176059))))

(declare-fun bs!877596 () Bool)

(assert (= bs!877596 (and b!4539832 d!1402531)))

(assert (=> bs!877596 (= (= (-!424 lt!1713103 key!3287) lt!1713634) (= lambda!176084 lambda!175927))))

(declare-fun bs!877597 () Bool)

(assert (= bs!877597 (and b!4539832 d!1402859)))

(assert (=> bs!877597 (= (= (-!424 lt!1713103 key!3287) lt!1713969) (= lambda!176084 lambda!176002))))

(assert (=> bs!877587 (= (= (-!424 lt!1713103 key!3287) lt!1713914) (= lambda!176084 lambda!175982))))

(declare-fun bs!877598 () Bool)

(assert (= bs!877598 (and b!4539832 b!4539430)))

(assert (=> bs!877598 (= (= (-!424 lt!1713103 key!3287) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176084 lambda!176012))))

(assert (=> bs!877569 (= (= (-!424 lt!1713103 key!3287) lt!1713103) (= lambda!176084 lambda!175907))))

(declare-fun bs!877599 () Bool)

(assert (= bs!877599 (and b!4539832 b!4539681)))

(assert (=> bs!877599 (= (= (-!424 lt!1713103 key!3287) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176084 lambda!176050))))

(declare-fun bs!877600 () Bool)

(assert (= bs!877600 (and b!4539832 d!1403191)))

(assert (=> bs!877600 (= (= (-!424 lt!1713103 key!3287) lt!1714373) (= lambda!176084 lambda!176076))))

(declare-fun bs!877601 () Bool)

(assert (= bs!877601 (and b!4539832 b!4538171)))

(assert (=> bs!877601 (not (= lambda!176084 lambda!175771))))

(assert (=> bs!877582 (= (= (-!424 lt!1713103 key!3287) lt!1713974) (= lambda!176084 lambda!176000))))

(assert (=> b!4539832 true))

(declare-fun lt!1714472 () ListMap!3665)

(declare-fun lambda!176086 () Int)

(assert (=> bs!877535 (= (= lt!1714472 lt!1713584) (= lambda!176086 lambda!175909))))

(assert (=> bs!877537 (= (= lt!1714472 lt!1713909) (= lambda!176086 lambda!175983))))

(assert (=> bs!877539 (= (= lt!1714472 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176086 lambda!175925))))

(assert (=> bs!877540 (not (= lambda!176086 lambda!175918))))

(assert (=> bs!877541 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176086 lambda!175976))))

(assert (=> bs!877543 (= (= lt!1714472 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176086 lambda!175996))))

(assert (=> bs!877541 (= (= lt!1714472 lt!1713882) (= lambda!176086 lambda!175977))))

(assert (=> bs!877546 (= (= lt!1714472 lt!1713493) (= lambda!176086 lambda!175886))))

(assert (=> bs!877539 (= (= lt!1714472 lt!1713639) (= lambda!176086 lambda!175926))))

(assert (=> bs!877550 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176086 lambda!176072))))

(assert (=> bs!877552 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176086 lambda!175975))))

(assert (=> bs!877553 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176086 lambda!175980))))

(assert (=> bs!877555 (= (= lt!1714472 lt!1713121) (= lambda!176086 lambda!175836))))

(assert (=> bs!877556 (= (= lt!1714472 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176086 lambda!175924))))

(assert (=> bs!877550 (= (= lt!1714472 lt!1714378) (= lambda!176086 lambda!176074))))

(assert (=> bs!877560 (= (= lt!1714472 lt!1713103) (= lambda!176086 lambda!175906))))

(assert (=> bs!877561 (= (= lt!1714472 lt!1713617) (= lambda!176086 lambda!175921))))

(assert (=> bs!877563 (= (= lt!1714472 lt!1713488) (= lambda!176086 lambda!175888))))

(assert (=> bs!877548 (= (= lt!1714472 lt!1714270) (= lambda!176086 lambda!176054))))

(assert (=> bs!877561 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176086 lambda!175920))))

(assert (=> bs!877565 (= (= lt!1714472 lt!1713612) (= lambda!176086 lambda!175922))))

(assert (=> bs!877566 (= (= lt!1714472 lt!1713493) (= lambda!176086 lambda!176005))))

(assert (=> bs!877555 (= (= lt!1714472 lt!1713258) (= lambda!176086 lambda!175837))))

(assert (=> b!4539832 (= (= lt!1714472 (-!424 lt!1713103 key!3287)) (= lambda!176086 lambda!176084))))

(assert (=> bs!877548 (= (= lt!1714472 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176086 lambda!176052))))

(assert (=> bs!877569 (= (= lt!1714472 lt!1713589) (= lambda!176086 lambda!175908))))

(assert (=> bs!877570 (= (= lt!1714472 lt!1714096) (= lambda!176086 lambda!176018))))

(assert (=> bs!877572 (= (= lt!1714472 lt!1713121) (= lambda!176086 lambda!175834))))

(assert (=> bs!877574 (= (= lt!1714472 lt!1713095) (= lambda!176086 lambda!175883))))

(assert (=> bs!877576 (= (= lt!1714472 lt!1713253) (= lambda!176086 lambda!175838))))

(assert (=> bs!877578 (= (= lt!1714472 lt!1714265) (= lambda!176086 lambda!176057))))

(assert (=> bs!877580 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176086 lambda!176071))))

(assert (=> bs!877581 (= (= lt!1714472 lt!1714101) (= lambda!176086 lambda!176015))))

(assert (=> bs!877582 (= (= lt!1714472 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176086 lambda!175998))))

(assert (=> bs!877583 (= (= lt!1714472 lt!1713877) (= lambda!176086 lambda!175978))))

(assert (=> bs!877585 (not (= lambda!176086 lambda!175860))))

(assert (=> bs!877587 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176086 lambda!175981))))

(assert (=> bs!877546 (= (= lt!1714472 lt!1713095) (= lambda!176086 lambda!175885))))

(assert (=> bs!877589 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176086 lambda!175919))))

(assert (=> bs!877590 (= (= lt!1714472 lt!1713589) (= lambda!176086 lambda!175932))))

(assert (=> bs!877592 (= (= lt!1714472 (-!424 lt!1713103 key!3287)) (= lambda!176086 lambda!176082))))

(assert (=> bs!877593 (= (= lt!1714472 lt!1713103) (= lambda!176086 lambda!176011))))

(assert (=> bs!877581 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176086 lambda!176014))))

(assert (=> bs!877594 (= (= lt!1714472 lt!1713121) (= lambda!176086 lambda!175970))))

(assert (=> bs!877595 (= (= lt!1714472 lt!1713258) (= lambda!176086 lambda!176059))))

(assert (=> bs!877596 (= (= lt!1714472 lt!1713634) (= lambda!176086 lambda!175927))))

(assert (=> bs!877597 (= (= lt!1714472 lt!1713969) (= lambda!176086 lambda!176002))))

(assert (=> bs!877587 (= (= lt!1714472 lt!1713914) (= lambda!176086 lambda!175982))))

(assert (=> bs!877598 (= (= lt!1714472 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176086 lambda!176012))))

(assert (=> bs!877569 (= (= lt!1714472 lt!1713103) (= lambda!176086 lambda!175907))))

(assert (=> bs!877599 (= (= lt!1714472 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176086 lambda!176050))))

(assert (=> bs!877600 (= (= lt!1714472 lt!1714373) (= lambda!176086 lambda!176076))))

(assert (=> bs!877601 (not (= lambda!176086 lambda!175771))))

(assert (=> bs!877582 (= (= lt!1714472 lt!1713974) (= lambda!176086 lambda!176000))))

(assert (=> b!4539832 true))

(declare-fun bs!877612 () Bool)

(declare-fun d!1403231 () Bool)

(assert (= bs!877612 (and d!1403231 d!1402485)))

(declare-fun lambda!176088 () Int)

(declare-fun lt!1714467 () ListMap!3665)

(assert (=> bs!877612 (= (= lt!1714467 lt!1713584) (= lambda!176088 lambda!175909))))

(declare-fun bs!877614 () Bool)

(assert (= bs!877614 (and d!1403231 d!1402823)))

(assert (=> bs!877614 (= (= lt!1714467 lt!1713909) (= lambda!176088 lambda!175983))))

(declare-fun bs!877616 () Bool)

(assert (= bs!877616 (and d!1403231 b!4538685)))

(assert (=> bs!877616 (= (= lt!1714467 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176088 lambda!175925))))

(declare-fun bs!877618 () Bool)

(assert (= bs!877618 (and d!1403231 d!1402523)))

(assert (=> bs!877618 (not (= lambda!176088 lambda!175918))))

(declare-fun bs!877620 () Bool)

(assert (= bs!877620 (and d!1403231 b!4539182)))

(assert (=> bs!877620 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176088 lambda!175976))))

(declare-fun bs!877622 () Bool)

(assert (= bs!877622 (and d!1403231 b!4539282)))

(assert (=> bs!877622 (= (= lt!1714467 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176088 lambda!175996))))

(assert (=> bs!877620 (= (= lt!1714467 lt!1713882) (= lambda!176088 lambda!175977))))

(declare-fun bs!877625 () Bool)

(assert (= bs!877625 (and d!1403231 b!4538501)))

(assert (=> bs!877625 (= (= lt!1714467 lt!1713493) (= lambda!176088 lambda!175886))))

(assert (=> bs!877616 (= (= lt!1714467 lt!1713639) (= lambda!176088 lambda!175926))))

(declare-fun bs!877627 () Bool)

(assert (= bs!877627 (and d!1403231 b!4539767)))

(assert (=> bs!877627 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176088 lambda!176072))))

(declare-fun bs!877630 () Bool)

(assert (= bs!877630 (and d!1403231 b!4539183)))

(assert (=> bs!877630 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176088 lambda!175975))))

(declare-fun bs!877631 () Bool)

(assert (= bs!877631 (and d!1403231 b!4539235)))

(assert (=> bs!877631 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176088 lambda!175980))))

(declare-fun bs!877633 () Bool)

(assert (= bs!877633 (and d!1403231 b!4538248)))

(assert (=> bs!877633 (= (= lt!1714467 lt!1713121) (= lambda!176088 lambda!175836))))

(declare-fun bs!877634 () Bool)

(assert (= bs!877634 (and d!1403231 b!4538686)))

(assert (=> bs!877634 (= (= lt!1714467 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176088 lambda!175924))))

(assert (=> bs!877627 (= (= lt!1714467 lt!1714378) (= lambda!176088 lambda!176074))))

(declare-fun bs!877637 () Bool)

(assert (= bs!877637 (and d!1403231 b!4538618)))

(assert (=> bs!877637 (= (= lt!1714467 lt!1713103) (= lambda!176088 lambda!175906))))

(declare-fun bs!877639 () Bool)

(assert (= bs!877639 (and d!1403231 b!4538678)))

(assert (=> bs!877639 (= (= lt!1714467 lt!1713617) (= lambda!176088 lambda!175921))))

(declare-fun bs!877641 () Bool)

(assert (= bs!877641 (and d!1403231 d!1402409)))

(assert (=> bs!877641 (= (= lt!1714467 lt!1713488) (= lambda!176088 lambda!175888))))

(declare-fun bs!877643 () Bool)

(assert (= bs!877643 (and d!1403231 b!4539680)))

(assert (=> bs!877643 (= (= lt!1714467 lt!1714270) (= lambda!176088 lambda!176054))))

(assert (=> bs!877639 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176088 lambda!175920))))

(declare-fun bs!877645 () Bool)

(assert (= bs!877645 (and d!1403231 d!1402527)))

(assert (=> bs!877645 (= (= lt!1714467 lt!1713612) (= lambda!176088 lambda!175922))))

(declare-fun bs!877647 () Bool)

(assert (= bs!877647 (and d!1403231 d!1402887)))

(assert (=> bs!877647 (= (= lt!1714467 lt!1713493) (= lambda!176088 lambda!176005))))

(assert (=> bs!877633 (= (= lt!1714467 lt!1713258) (= lambda!176088 lambda!175837))))

(declare-fun bs!877650 () Bool)

(assert (= bs!877650 (and d!1403231 b!4539832)))

(assert (=> bs!877650 (= (= lt!1714467 (-!424 lt!1713103 key!3287)) (= lambda!176088 lambda!176084))))

(assert (=> bs!877643 (= (= lt!1714467 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176088 lambda!176052))))

(declare-fun bs!877652 () Bool)

(assert (= bs!877652 (and d!1403231 b!4538617)))

(assert (=> bs!877652 (= (= lt!1714467 lt!1713589) (= lambda!176088 lambda!175908))))

(declare-fun bs!877654 () Bool)

(assert (= bs!877654 (and d!1403231 d!1402987)))

(assert (=> bs!877654 (= (= lt!1714467 lt!1714096) (= lambda!176088 lambda!176018))))

(declare-fun bs!877655 () Bool)

(assert (= bs!877655 (and d!1403231 b!4538249)))

(assert (=> bs!877655 (= (= lt!1714467 lt!1713121) (= lambda!176088 lambda!175834))))

(declare-fun bs!877656 () Bool)

(assert (= bs!877656 (and d!1403231 b!4538502)))

(assert (=> bs!877656 (= (= lt!1714467 lt!1713095) (= lambda!176088 lambda!175883))))

(declare-fun bs!877658 () Bool)

(assert (= bs!877658 (and d!1403231 d!1402229)))

(assert (=> bs!877658 (= (= lt!1714467 lt!1713253) (= lambda!176088 lambda!175838))))

(declare-fun bs!877660 () Bool)

(assert (= bs!877660 (and d!1403231 d!1403123)))

(assert (=> bs!877660 (= (= lt!1714467 lt!1714265) (= lambda!176088 lambda!176057))))

(declare-fun bs!877662 () Bool)

(assert (= bs!877662 (and d!1403231 b!4539768)))

(assert (=> bs!877662 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176088 lambda!176071))))

(declare-fun bs!877664 () Bool)

(assert (= bs!877664 (and d!1403231 b!4539429)))

(assert (=> bs!877664 (= (= lt!1714467 lt!1714101) (= lambda!176088 lambda!176015))))

(declare-fun bs!877667 () Bool)

(assert (= bs!877667 (and d!1403231 b!4539281)))

(assert (=> bs!877667 (= (= lt!1714467 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176088 lambda!175998))))

(declare-fun bs!877669 () Bool)

(assert (= bs!877669 (and d!1403231 d!1402771)))

(assert (=> bs!877669 (= (= lt!1714467 lt!1713877) (= lambda!176088 lambda!175978))))

(declare-fun bs!877670 () Bool)

(assert (= bs!877670 (and d!1403231 d!1402317)))

(assert (=> bs!877670 (not (= lambda!176088 lambda!175860))))

(declare-fun bs!877671 () Bool)

(assert (= bs!877671 (and d!1403231 b!4539234)))

(assert (=> bs!877671 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176088 lambda!175981))))

(assert (=> bs!877625 (= (= lt!1714467 lt!1713095) (= lambda!176088 lambda!175885))))

(declare-fun bs!877674 () Bool)

(assert (= bs!877674 (and d!1403231 b!4538679)))

(assert (=> bs!877674 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176088 lambda!175919))))

(declare-fun bs!877676 () Bool)

(assert (= bs!877676 (and d!1403231 d!1402545)))

(assert (=> bs!877676 (= (= lt!1714467 lt!1713589) (= lambda!176088 lambda!175932))))

(declare-fun bs!877678 () Bool)

(assert (= bs!877678 (and d!1403231 b!4539833)))

(assert (=> bs!877678 (= (= lt!1714467 (-!424 lt!1713103 key!3287)) (= lambda!176088 lambda!176082))))

(declare-fun bs!877679 () Bool)

(assert (= bs!877679 (and d!1403231 d!1402983)))

(assert (=> bs!877679 (= (= lt!1714467 lt!1713103) (= lambda!176088 lambda!176011))))

(assert (=> bs!877664 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176088 lambda!176014))))

(declare-fun bs!877680 () Bool)

(assert (= bs!877680 (and d!1403231 d!1402727)))

(assert (=> bs!877680 (= (= lt!1714467 lt!1713121) (= lambda!176088 lambda!175970))))

(declare-fun bs!877681 () Bool)

(assert (= bs!877681 (and d!1403231 d!1403135)))

(assert (=> bs!877681 (= (= lt!1714467 lt!1713258) (= lambda!176088 lambda!176059))))

(declare-fun bs!877682 () Bool)

(assert (= bs!877682 (and d!1403231 d!1402531)))

(assert (=> bs!877682 (= (= lt!1714467 lt!1713634) (= lambda!176088 lambda!175927))))

(declare-fun bs!877683 () Bool)

(assert (= bs!877683 (and d!1403231 d!1402859)))

(assert (=> bs!877683 (= (= lt!1714467 lt!1713969) (= lambda!176088 lambda!176002))))

(assert (=> bs!877671 (= (= lt!1714467 lt!1713914) (= lambda!176088 lambda!175982))))

(declare-fun bs!877684 () Bool)

(assert (= bs!877684 (and d!1403231 b!4539430)))

(assert (=> bs!877684 (= (= lt!1714467 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176088 lambda!176012))))

(assert (=> bs!877652 (= (= lt!1714467 lt!1713103) (= lambda!176088 lambda!175907))))

(declare-fun bs!877685 () Bool)

(assert (= bs!877685 (and d!1403231 b!4539681)))

(assert (=> bs!877685 (= (= lt!1714467 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176088 lambda!176050))))

(assert (=> bs!877650 (= (= lt!1714467 lt!1714472) (= lambda!176088 lambda!176086))))

(declare-fun bs!877686 () Bool)

(assert (= bs!877686 (and d!1403231 d!1403191)))

(assert (=> bs!877686 (= (= lt!1714467 lt!1714373) (= lambda!176088 lambda!176076))))

(declare-fun bs!877687 () Bool)

(assert (= bs!877687 (and d!1403231 b!4538171)))

(assert (=> bs!877687 (not (= lambda!176088 lambda!175771))))

(assert (=> bs!877667 (= (= lt!1714467 lt!1713974) (= lambda!176088 lambda!176000))))

(assert (=> d!1403231 true))

(declare-fun bm!316585 () Bool)

(declare-fun call!316590 () Unit!98176)

(assert (=> bm!316585 (= call!316590 (lemmaContainsAllItsOwnKeys!364 (-!424 lt!1713103 key!3287)))))

(declare-fun b!4539829 () Bool)

(declare-fun e!2828983 () Bool)

(assert (=> b!4539829 (= e!2828983 (invariantList!1043 (toList!4403 lt!1714467)))))

(declare-fun call!316592 () Bool)

(declare-fun bm!316586 () Bool)

(declare-fun c!775439 () Bool)

(assert (=> bm!316586 (= call!316592 (forall!10343 (ite c!775439 (toList!4403 (-!424 lt!1713103 key!3287)) (_2!28908 lt!1713093)) (ite c!775439 lambda!176082 lambda!176086)))))

(declare-fun b!4539830 () Bool)

(declare-fun res!1891885 () Bool)

(assert (=> b!4539830 (=> (not res!1891885) (not e!2828983))))

(assert (=> b!4539830 (= res!1891885 (forall!10343 (toList!4403 (-!424 lt!1713103 key!3287)) lambda!176088))))

(declare-fun e!2828984 () Bool)

(declare-fun b!4539831 () Bool)

(assert (=> b!4539831 (= e!2828984 (forall!10343 (toList!4403 (-!424 lt!1713103 key!3287)) lambda!176086))))

(declare-fun e!2828985 () ListMap!3665)

(assert (=> b!4539832 (= e!2828985 lt!1714472)))

(declare-fun lt!1714478 () ListMap!3665)

(assert (=> b!4539832 (= lt!1714478 (+!1604 (-!424 lt!1713103 key!3287) (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4539832 (= lt!1714472 (addToMapMapFromBucket!725 (t!357834 (_2!28908 lt!1713093)) (+!1604 (-!424 lt!1713103 key!3287) (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun lt!1714471 () Unit!98176)

(assert (=> b!4539832 (= lt!1714471 call!316590)))

(assert (=> b!4539832 (forall!10343 (toList!4403 (-!424 lt!1713103 key!3287)) lambda!176084)))

(declare-fun lt!1714479 () Unit!98176)

(assert (=> b!4539832 (= lt!1714479 lt!1714471)))

(assert (=> b!4539832 (forall!10343 (toList!4403 lt!1714478) lambda!176086)))

(declare-fun lt!1714466 () Unit!98176)

(declare-fun Unit!98545 () Unit!98176)

(assert (=> b!4539832 (= lt!1714466 Unit!98545)))

(declare-fun call!316591 () Bool)

(assert (=> b!4539832 call!316591))

(declare-fun lt!1714477 () Unit!98176)

(declare-fun Unit!98546 () Unit!98176)

(assert (=> b!4539832 (= lt!1714477 Unit!98546)))

(declare-fun lt!1714465 () Unit!98176)

(declare-fun Unit!98547 () Unit!98176)

(assert (=> b!4539832 (= lt!1714465 Unit!98547)))

(declare-fun lt!1714468 () Unit!98176)

(assert (=> b!4539832 (= lt!1714468 (forallContained!2605 (toList!4403 lt!1714478) lambda!176086 (h!56627 (_2!28908 lt!1713093))))))

(assert (=> b!4539832 (contains!13538 lt!1714478 (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1714464 () Unit!98176)

(declare-fun Unit!98548 () Unit!98176)

(assert (=> b!4539832 (= lt!1714464 Unit!98548)))

(assert (=> b!4539832 (contains!13538 lt!1714472 (_1!28907 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun lt!1714463 () Unit!98176)

(declare-fun Unit!98550 () Unit!98176)

(assert (=> b!4539832 (= lt!1714463 Unit!98550)))

(assert (=> b!4539832 call!316592))

(declare-fun lt!1714481 () Unit!98176)

(declare-fun Unit!98551 () Unit!98176)

(assert (=> b!4539832 (= lt!1714481 Unit!98551)))

(assert (=> b!4539832 (forall!10343 (toList!4403 lt!1714478) lambda!176086)))

(declare-fun lt!1714473 () Unit!98176)

(declare-fun Unit!98552 () Unit!98176)

(assert (=> b!4539832 (= lt!1714473 Unit!98552)))

(declare-fun lt!1714476 () Unit!98176)

(declare-fun Unit!98554 () Unit!98176)

(assert (=> b!4539832 (= lt!1714476 Unit!98554)))

(declare-fun lt!1714482 () Unit!98176)

(assert (=> b!4539832 (= lt!1714482 (addForallContainsKeyThenBeforeAdding!364 (-!424 lt!1713103 key!3287) lt!1714472 (_1!28907 (h!56627 (_2!28908 lt!1713093))) (_2!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> b!4539832 (forall!10343 (toList!4403 (-!424 lt!1713103 key!3287)) lambda!176086)))

(declare-fun lt!1714470 () Unit!98176)

(assert (=> b!4539832 (= lt!1714470 lt!1714482)))

(assert (=> b!4539832 (forall!10343 (toList!4403 (-!424 lt!1713103 key!3287)) lambda!176086)))

(declare-fun lt!1714480 () Unit!98176)

(declare-fun Unit!98556 () Unit!98176)

(assert (=> b!4539832 (= lt!1714480 Unit!98556)))

(declare-fun res!1891884 () Bool)

(assert (=> b!4539832 (= res!1891884 (forall!10343 (_2!28908 lt!1713093) lambda!176086))))

(assert (=> b!4539832 (=> (not res!1891884) (not e!2828984))))

(assert (=> b!4539832 e!2828984))

(declare-fun lt!1714462 () Unit!98176)

(declare-fun Unit!98557 () Unit!98176)

(assert (=> b!4539832 (= lt!1714462 Unit!98557)))

(assert (=> b!4539833 (= e!2828985 (-!424 lt!1713103 key!3287))))

(declare-fun lt!1714475 () Unit!98176)

(assert (=> b!4539833 (= lt!1714475 call!316590)))

(assert (=> b!4539833 call!316591))

(declare-fun lt!1714474 () Unit!98176)

(assert (=> b!4539833 (= lt!1714474 lt!1714475)))

(assert (=> b!4539833 call!316592))

(declare-fun lt!1714469 () Unit!98176)

(declare-fun Unit!98558 () Unit!98176)

(assert (=> b!4539833 (= lt!1714469 Unit!98558)))

(declare-fun bm!316587 () Bool)

(assert (=> bm!316587 (= call!316591 (forall!10343 (ite c!775439 (toList!4403 (-!424 lt!1713103 key!3287)) (t!357834 (_2!28908 lt!1713093))) (ite c!775439 lambda!176082 lambda!176086)))))

(assert (=> d!1403231 e!2828983))

(declare-fun res!1891883 () Bool)

(assert (=> d!1403231 (=> (not res!1891883) (not e!2828983))))

(assert (=> d!1403231 (= res!1891883 (forall!10343 (_2!28908 lt!1713093) lambda!176088))))

(assert (=> d!1403231 (= lt!1714467 e!2828985)))

(assert (=> d!1403231 (= c!775439 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1403231 (noDuplicateKeys!1198 (_2!28908 lt!1713093))))

(assert (=> d!1403231 (= (addToMapMapFromBucket!725 (_2!28908 lt!1713093) (-!424 lt!1713103 key!3287)) lt!1714467)))

(assert (= (and d!1403231 c!775439) b!4539833))

(assert (= (and d!1403231 (not c!775439)) b!4539832))

(assert (= (and b!4539832 res!1891884) b!4539831))

(assert (= (or b!4539833 b!4539832) bm!316586))

(assert (= (or b!4539833 b!4539832) bm!316587))

(assert (= (or b!4539833 b!4539832) bm!316585))

(assert (= (and d!1403231 res!1891883) b!4539830))

(assert (= (and b!4539830 res!1891885) b!4539829))

(declare-fun m!5306087 () Bool)

(assert (=> bm!316587 m!5306087))

(declare-fun m!5306089 () Bool)

(assert (=> b!4539832 m!5306089))

(assert (=> b!4539832 m!5302517))

(declare-fun m!5306091 () Bool)

(assert (=> b!4539832 m!5306091))

(declare-fun m!5306093 () Bool)

(assert (=> b!4539832 m!5306093))

(declare-fun m!5306095 () Bool)

(assert (=> b!4539832 m!5306095))

(assert (=> b!4539832 m!5306089))

(assert (=> b!4539832 m!5306095))

(declare-fun m!5306097 () Bool)

(assert (=> b!4539832 m!5306097))

(declare-fun m!5306099 () Bool)

(assert (=> b!4539832 m!5306099))

(declare-fun m!5306101 () Bool)

(assert (=> b!4539832 m!5306101))

(declare-fun m!5306103 () Bool)

(assert (=> b!4539832 m!5306103))

(assert (=> b!4539832 m!5306091))

(declare-fun m!5306105 () Bool)

(assert (=> b!4539832 m!5306105))

(assert (=> b!4539832 m!5302517))

(declare-fun m!5306107 () Bool)

(assert (=> b!4539832 m!5306107))

(declare-fun m!5306109 () Bool)

(assert (=> d!1403231 m!5306109))

(assert (=> d!1403231 m!5302483))

(declare-fun m!5306111 () Bool)

(assert (=> b!4539830 m!5306111))

(declare-fun m!5306113 () Bool)

(assert (=> b!4539829 m!5306113))

(declare-fun m!5306115 () Bool)

(assert (=> bm!316586 m!5306115))

(assert (=> bm!316585 m!5302517))

(declare-fun m!5306117 () Bool)

(assert (=> bm!316585 m!5306117))

(assert (=> b!4539831 m!5306095))

(assert (=> d!1402487 d!1403231))

(assert (=> d!1402487 d!1402483))

(assert (=> d!1402487 d!1402293))

(declare-fun d!1403235 () Bool)

(assert (=> d!1403235 (= (addToMapMapFromBucket!725 (_2!28908 lt!1713093) (-!424 lt!1713103 key!3287)) (-!424 (addToMapMapFromBucket!725 (_2!28908 lt!1713093) lt!1713103) key!3287))))

(assert (=> d!1403235 true))

(declare-fun _$14!1227 () Unit!98176)

(assert (=> d!1403235 (= (choose!29881 lt!1713103 key!3287 (_2!28908 lt!1713093)) _$14!1227)))

(declare-fun bs!877710 () Bool)

(assert (= bs!877710 d!1403235))

(assert (=> bs!877710 m!5302517))

(assert (=> bs!877710 m!5302517))

(assert (=> bs!877710 m!5303521))

(assert (=> bs!877710 m!5302493))

(assert (=> bs!877710 m!5302493))

(assert (=> bs!877710 m!5302495))

(assert (=> d!1402487 d!1403235))

(declare-fun d!1403259 () Bool)

(declare-fun res!1891899 () Bool)

(declare-fun e!2829005 () Bool)

(assert (=> d!1403259 (=> res!1891899 e!2829005)))

(assert (=> d!1403259 (= res!1891899 (and ((_ is Cons!50749) (toList!4404 lm!1477)) (= (_1!28908 (h!56628 (toList!4404 lm!1477))) lt!1713089)))))

(assert (=> d!1403259 (= (containsKey!1874 (toList!4404 lm!1477) lt!1713089) e!2829005)))

(declare-fun b!4539859 () Bool)

(declare-fun e!2829006 () Bool)

(assert (=> b!4539859 (= e!2829005 e!2829006)))

(declare-fun res!1891900 () Bool)

(assert (=> b!4539859 (=> (not res!1891900) (not e!2829006))))

(assert (=> b!4539859 (= res!1891900 (and (or (not ((_ is Cons!50749) (toList!4404 lm!1477))) (bvsle (_1!28908 (h!56628 (toList!4404 lm!1477))) lt!1713089)) ((_ is Cons!50749) (toList!4404 lm!1477)) (bvslt (_1!28908 (h!56628 (toList!4404 lm!1477))) lt!1713089)))))

(declare-fun b!4539860 () Bool)

(assert (=> b!4539860 (= e!2829006 (containsKey!1874 (t!357835 (toList!4404 lm!1477)) lt!1713089))))

(assert (= (and d!1403259 (not res!1891899)) b!4539859))

(assert (= (and b!4539859 res!1891900) b!4539860))

(declare-fun m!5306169 () Bool)

(assert (=> b!4539860 m!5306169))

(assert (=> d!1402431 d!1403259))

(declare-fun bs!877711 () Bool)

(declare-fun d!1403261 () Bool)

(assert (= bs!877711 (and d!1403261 d!1402485)))

(declare-fun lambda!176090 () Int)

(assert (=> bs!877711 (= (= lt!1713095 lt!1713584) (= lambda!176090 lambda!175909))))

(declare-fun bs!877712 () Bool)

(assert (= bs!877712 (and d!1403261 d!1402823)))

(assert (=> bs!877712 (= (= lt!1713095 lt!1713909) (= lambda!176090 lambda!175983))))

(declare-fun bs!877713 () Bool)

(assert (= bs!877713 (and d!1403261 b!4538685)))

(assert (=> bs!877713 (= (= lt!1713095 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176090 lambda!175925))))

(declare-fun bs!877714 () Bool)

(assert (= bs!877714 (and d!1403261 d!1402523)))

(assert (=> bs!877714 (not (= lambda!176090 lambda!175918))))

(declare-fun bs!877715 () Bool)

(assert (= bs!877715 (and d!1403261 b!4539282)))

(assert (=> bs!877715 (= (= lt!1713095 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176090 lambda!175996))))

(declare-fun bs!877716 () Bool)

(assert (= bs!877716 (and d!1403261 b!4539182)))

(assert (=> bs!877716 (= (= lt!1713095 lt!1713882) (= lambda!176090 lambda!175977))))

(declare-fun bs!877717 () Bool)

(assert (= bs!877717 (and d!1403261 b!4538501)))

(assert (=> bs!877717 (= (= lt!1713095 lt!1713493) (= lambda!176090 lambda!175886))))

(assert (=> bs!877713 (= (= lt!1713095 lt!1713639) (= lambda!176090 lambda!175926))))

(declare-fun bs!877718 () Bool)

(assert (= bs!877718 (and d!1403261 b!4539767)))

(assert (=> bs!877718 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176090 lambda!176072))))

(declare-fun bs!877719 () Bool)

(assert (= bs!877719 (and d!1403261 b!4539183)))

(assert (=> bs!877719 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176090 lambda!175975))))

(declare-fun bs!877720 () Bool)

(assert (= bs!877720 (and d!1403261 b!4539235)))

(assert (=> bs!877720 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176090 lambda!175980))))

(declare-fun bs!877721 () Bool)

(assert (= bs!877721 (and d!1403261 b!4538248)))

(assert (=> bs!877721 (= (= lt!1713095 lt!1713121) (= lambda!176090 lambda!175836))))

(declare-fun bs!877722 () Bool)

(assert (= bs!877722 (and d!1403261 b!4538686)))

(assert (=> bs!877722 (= (= lt!1713095 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176090 lambda!175924))))

(assert (=> bs!877718 (= (= lt!1713095 lt!1714378) (= lambda!176090 lambda!176074))))

(declare-fun bs!877723 () Bool)

(assert (= bs!877723 (and d!1403261 b!4538618)))

(assert (=> bs!877723 (= (= lt!1713095 lt!1713103) (= lambda!176090 lambda!175906))))

(declare-fun bs!877724 () Bool)

(assert (= bs!877724 (and d!1403261 b!4538678)))

(assert (=> bs!877724 (= (= lt!1713095 lt!1713617) (= lambda!176090 lambda!175921))))

(declare-fun bs!877725 () Bool)

(assert (= bs!877725 (and d!1403261 d!1402409)))

(assert (=> bs!877725 (= (= lt!1713095 lt!1713488) (= lambda!176090 lambda!175888))))

(declare-fun bs!877726 () Bool)

(assert (= bs!877726 (and d!1403261 b!4539680)))

(assert (=> bs!877726 (= (= lt!1713095 lt!1714270) (= lambda!176090 lambda!176054))))

(assert (=> bs!877724 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176090 lambda!175920))))

(declare-fun bs!877727 () Bool)

(assert (= bs!877727 (and d!1403261 d!1402527)))

(assert (=> bs!877727 (= (= lt!1713095 lt!1713612) (= lambda!176090 lambda!175922))))

(declare-fun bs!877728 () Bool)

(assert (= bs!877728 (and d!1403261 d!1403231)))

(assert (=> bs!877728 (= (= lt!1713095 lt!1714467) (= lambda!176090 lambda!176088))))

(assert (=> bs!877716 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176090 lambda!175976))))

(declare-fun bs!877729 () Bool)

(assert (= bs!877729 (and d!1403261 d!1402887)))

(assert (=> bs!877729 (= (= lt!1713095 lt!1713493) (= lambda!176090 lambda!176005))))

(assert (=> bs!877721 (= (= lt!1713095 lt!1713258) (= lambda!176090 lambda!175837))))

(declare-fun bs!877730 () Bool)

(assert (= bs!877730 (and d!1403261 b!4539832)))

(assert (=> bs!877730 (= (= lt!1713095 (-!424 lt!1713103 key!3287)) (= lambda!176090 lambda!176084))))

(assert (=> bs!877726 (= (= lt!1713095 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176090 lambda!176052))))

(declare-fun bs!877731 () Bool)

(assert (= bs!877731 (and d!1403261 b!4538617)))

(assert (=> bs!877731 (= (= lt!1713095 lt!1713589) (= lambda!176090 lambda!175908))))

(declare-fun bs!877732 () Bool)

(assert (= bs!877732 (and d!1403261 d!1402987)))

(assert (=> bs!877732 (= (= lt!1713095 lt!1714096) (= lambda!176090 lambda!176018))))

(declare-fun bs!877733 () Bool)

(assert (= bs!877733 (and d!1403261 b!4538249)))

(assert (=> bs!877733 (= (= lt!1713095 lt!1713121) (= lambda!176090 lambda!175834))))

(declare-fun bs!877734 () Bool)

(assert (= bs!877734 (and d!1403261 b!4538502)))

(assert (=> bs!877734 (= lambda!176090 lambda!175883)))

(declare-fun bs!877735 () Bool)

(assert (= bs!877735 (and d!1403261 d!1402229)))

(assert (=> bs!877735 (= (= lt!1713095 lt!1713253) (= lambda!176090 lambda!175838))))

(declare-fun bs!877736 () Bool)

(assert (= bs!877736 (and d!1403261 d!1403123)))

(assert (=> bs!877736 (= (= lt!1713095 lt!1714265) (= lambda!176090 lambda!176057))))

(declare-fun bs!877737 () Bool)

(assert (= bs!877737 (and d!1403261 b!4539768)))

(assert (=> bs!877737 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176090 lambda!176071))))

(declare-fun bs!877738 () Bool)

(assert (= bs!877738 (and d!1403261 b!4539429)))

(assert (=> bs!877738 (= (= lt!1713095 lt!1714101) (= lambda!176090 lambda!176015))))

(declare-fun bs!877739 () Bool)

(assert (= bs!877739 (and d!1403261 b!4539281)))

(assert (=> bs!877739 (= (= lt!1713095 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176090 lambda!175998))))

(declare-fun bs!877740 () Bool)

(assert (= bs!877740 (and d!1403261 d!1402771)))

(assert (=> bs!877740 (= (= lt!1713095 lt!1713877) (= lambda!176090 lambda!175978))))

(declare-fun bs!877741 () Bool)

(assert (= bs!877741 (and d!1403261 d!1402317)))

(assert (=> bs!877741 (not (= lambda!176090 lambda!175860))))

(declare-fun bs!877742 () Bool)

(assert (= bs!877742 (and d!1403261 b!4539234)))

(assert (=> bs!877742 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176090 lambda!175981))))

(assert (=> bs!877717 (= lambda!176090 lambda!175885)))

(declare-fun bs!877743 () Bool)

(assert (= bs!877743 (and d!1403261 b!4538679)))

(assert (=> bs!877743 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176090 lambda!175919))))

(declare-fun bs!877744 () Bool)

(assert (= bs!877744 (and d!1403261 d!1402545)))

(assert (=> bs!877744 (= (= lt!1713095 lt!1713589) (= lambda!176090 lambda!175932))))

(declare-fun bs!877745 () Bool)

(assert (= bs!877745 (and d!1403261 b!4539833)))

(assert (=> bs!877745 (= (= lt!1713095 (-!424 lt!1713103 key!3287)) (= lambda!176090 lambda!176082))))

(declare-fun bs!877746 () Bool)

(assert (= bs!877746 (and d!1403261 d!1402983)))

(assert (=> bs!877746 (= (= lt!1713095 lt!1713103) (= lambda!176090 lambda!176011))))

(assert (=> bs!877738 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176090 lambda!176014))))

(declare-fun bs!877747 () Bool)

(assert (= bs!877747 (and d!1403261 d!1402727)))

(assert (=> bs!877747 (= (= lt!1713095 lt!1713121) (= lambda!176090 lambda!175970))))

(declare-fun bs!877748 () Bool)

(assert (= bs!877748 (and d!1403261 d!1403135)))

(assert (=> bs!877748 (= (= lt!1713095 lt!1713258) (= lambda!176090 lambda!176059))))

(declare-fun bs!877749 () Bool)

(assert (= bs!877749 (and d!1403261 d!1402531)))

(assert (=> bs!877749 (= (= lt!1713095 lt!1713634) (= lambda!176090 lambda!175927))))

(declare-fun bs!877750 () Bool)

(assert (= bs!877750 (and d!1403261 d!1402859)))

(assert (=> bs!877750 (= (= lt!1713095 lt!1713969) (= lambda!176090 lambda!176002))))

(assert (=> bs!877742 (= (= lt!1713095 lt!1713914) (= lambda!176090 lambda!175982))))

(declare-fun bs!877751 () Bool)

(assert (= bs!877751 (and d!1403261 b!4539430)))

(assert (=> bs!877751 (= (= lt!1713095 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176090 lambda!176012))))

(assert (=> bs!877731 (= (= lt!1713095 lt!1713103) (= lambda!176090 lambda!175907))))

(declare-fun bs!877752 () Bool)

(assert (= bs!877752 (and d!1403261 b!4539681)))

(assert (=> bs!877752 (= (= lt!1713095 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176090 lambda!176050))))

(assert (=> bs!877730 (= (= lt!1713095 lt!1714472) (= lambda!176090 lambda!176086))))

(declare-fun bs!877753 () Bool)

(assert (= bs!877753 (and d!1403261 d!1403191)))

(assert (=> bs!877753 (= (= lt!1713095 lt!1714373) (= lambda!176090 lambda!176076))))

(declare-fun bs!877754 () Bool)

(assert (= bs!877754 (and d!1403261 b!4538171)))

(assert (=> bs!877754 (not (= lambda!176090 lambda!175771))))

(assert (=> bs!877739 (= (= lt!1713095 lt!1713974) (= lambda!176090 lambda!176000))))

(assert (=> d!1403261 true))

(assert (=> d!1403261 (forall!10343 (toList!4403 lt!1713095) lambda!176090)))

(declare-fun lt!1714494 () Unit!98176)

(assert (=> d!1403261 (= lt!1714494 (choose!29892 lt!1713095))))

(assert (=> d!1403261 (= (lemmaContainsAllItsOwnKeys!364 lt!1713095) lt!1714494)))

(declare-fun bs!877755 () Bool)

(assert (= bs!877755 d!1403261))

(declare-fun m!5306171 () Bool)

(assert (=> bs!877755 m!5306171))

(declare-fun m!5306173 () Bool)

(assert (=> bs!877755 m!5306173))

(assert (=> bm!316447 d!1403261))

(assert (=> b!4538590 d!1402591))

(assert (=> b!4538590 d!1402593))

(declare-fun d!1403263 () Bool)

(assert (=> d!1403263 (= (invariantList!1043 (toList!4403 lt!1713279)) (noDuplicatedKeys!276 (toList!4403 lt!1713279)))))

(declare-fun bs!877756 () Bool)

(assert (= bs!877756 d!1403263))

(declare-fun m!5306175 () Bool)

(assert (=> bs!877756 m!5306175))

(assert (=> d!1402253 d!1403263))

(declare-fun d!1403265 () Bool)

(declare-fun res!1891901 () Bool)

(declare-fun e!2829007 () Bool)

(assert (=> d!1403265 (=> res!1891901 e!2829007)))

(assert (=> d!1403265 (= res!1891901 ((_ is Nil!50749) (toList!4404 lt!1713101)))))

(assert (=> d!1403265 (= (forall!10341 (toList!4404 lt!1713101) lambda!175843) e!2829007)))

(declare-fun b!4539861 () Bool)

(declare-fun e!2829008 () Bool)

(assert (=> b!4539861 (= e!2829007 e!2829008)))

(declare-fun res!1891902 () Bool)

(assert (=> b!4539861 (=> (not res!1891902) (not e!2829008))))

(assert (=> b!4539861 (= res!1891902 (dynLambda!21211 lambda!175843 (h!56628 (toList!4404 lt!1713101))))))

(declare-fun b!4539862 () Bool)

(assert (=> b!4539862 (= e!2829008 (forall!10341 (t!357835 (toList!4404 lt!1713101)) lambda!175843))))

(assert (= (and d!1403265 (not res!1891901)) b!4539861))

(assert (= (and b!4539861 res!1891902) b!4539862))

(declare-fun b_lambda!157851 () Bool)

(assert (=> (not b_lambda!157851) (not b!4539861)))

(declare-fun m!5306177 () Bool)

(assert (=> b!4539861 m!5306177))

(declare-fun m!5306179 () Bool)

(assert (=> b!4539862 m!5306179))

(assert (=> d!1402253 d!1403265))

(declare-fun d!1403267 () Bool)

(declare-fun res!1891905 () Bool)

(declare-fun e!2829011 () Bool)

(assert (=> d!1403267 (=> res!1891905 e!2829011)))

(declare-fun e!2829010 () Bool)

(assert (=> d!1403267 (= res!1891905 e!2829010)))

(declare-fun res!1891904 () Bool)

(assert (=> d!1403267 (=> (not res!1891904) (not e!2829010))))

(assert (=> d!1403267 (= res!1891904 ((_ is Cons!50749) (t!357835 (toList!4404 lt!1713100))))))

(assert (=> d!1403267 (= (containsKeyBiggerList!178 (t!357835 (toList!4404 lt!1713100)) key!3287) e!2829011)))

(declare-fun b!4539863 () Bool)

(assert (=> b!4539863 (= e!2829010 (containsKey!1870 (_2!28908 (h!56628 (t!357835 (toList!4404 lt!1713100)))) key!3287))))

(declare-fun b!4539864 () Bool)

(declare-fun e!2829009 () Bool)

(assert (=> b!4539864 (= e!2829011 e!2829009)))

(declare-fun res!1891903 () Bool)

(assert (=> b!4539864 (=> (not res!1891903) (not e!2829009))))

(assert (=> b!4539864 (= res!1891903 ((_ is Cons!50749) (t!357835 (toList!4404 lt!1713100))))))

(declare-fun b!4539865 () Bool)

(assert (=> b!4539865 (= e!2829009 (containsKeyBiggerList!178 (t!357835 (t!357835 (toList!4404 lt!1713100))) key!3287))))

(assert (= (and d!1403267 res!1891904) b!4539863))

(assert (= (and d!1403267 (not res!1891905)) b!4539864))

(assert (= (and b!4539864 res!1891903) b!4539865))

(declare-fun m!5306181 () Bool)

(assert (=> b!4539863 m!5306181))

(declare-fun m!5306183 () Bool)

(assert (=> b!4539865 m!5306183))

(assert (=> b!4538346 d!1403267))

(declare-fun d!1403269 () Bool)

(declare-fun res!1891906 () Bool)

(declare-fun e!2829012 () Bool)

(assert (=> d!1403269 (=> res!1891906 e!2829012)))

(assert (=> d!1403269 (= res!1891906 (and ((_ is Cons!50748) (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))) (= (_1!28907 (h!56627 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))))) key!3287)))))

(assert (=> d!1403269 (= (containsKey!1870 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))) key!3287) e!2829012)))

(declare-fun b!4539866 () Bool)

(declare-fun e!2829013 () Bool)

(assert (=> b!4539866 (= e!2829012 e!2829013)))

(declare-fun res!1891907 () Bool)

(assert (=> b!4539866 (=> (not res!1891907) (not e!2829013))))

(assert (=> b!4539866 (= res!1891907 ((_ is Cons!50748) (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))))))

(declare-fun b!4539867 () Bool)

(assert (=> b!4539867 (= e!2829013 (containsKey!1870 (t!357834 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))) key!3287))))

(assert (= (and d!1403269 (not res!1891906)) b!4539866))

(assert (= (and b!4539866 res!1891907) b!4539867))

(declare-fun m!5306185 () Bool)

(assert (=> b!4539867 m!5306185))

(assert (=> b!4538341 d!1403269))

(declare-fun bs!877757 () Bool)

(declare-fun b!4539872 () Bool)

(assert (= bs!877757 (and b!4539872 d!1402485)))

(declare-fun lambda!176091 () Int)

(assert (=> bs!877757 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713584) (= lambda!176091 lambda!175909))))

(declare-fun bs!877758 () Bool)

(assert (= bs!877758 (and b!4539872 d!1402823)))

(assert (=> bs!877758 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713909) (= lambda!176091 lambda!175983))))

(declare-fun bs!877759 () Bool)

(assert (= bs!877759 (and b!4539872 b!4538685)))

(assert (=> bs!877759 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176091 lambda!175925))))

(declare-fun bs!877760 () Bool)

(assert (= bs!877760 (and b!4539872 d!1402523)))

(assert (=> bs!877760 (not (= lambda!176091 lambda!175918))))

(declare-fun bs!877761 () Bool)

(assert (= bs!877761 (and b!4539872 b!4539282)))

(assert (=> bs!877761 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176091 lambda!175996))))

(declare-fun bs!877762 () Bool)

(assert (= bs!877762 (and b!4539872 b!4539182)))

(assert (=> bs!877762 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713882) (= lambda!176091 lambda!175977))))

(assert (=> bs!877759 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713639) (= lambda!176091 lambda!175926))))

(declare-fun bs!877763 () Bool)

(assert (= bs!877763 (and b!4539872 b!4539767)))

(assert (=> bs!877763 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176091 lambda!176072))))

(declare-fun bs!877764 () Bool)

(assert (= bs!877764 (and b!4539872 b!4539183)))

(assert (=> bs!877764 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176091 lambda!175975))))

(declare-fun bs!877765 () Bool)

(assert (= bs!877765 (and b!4539872 b!4539235)))

(assert (=> bs!877765 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176091 lambda!175980))))

(declare-fun bs!877766 () Bool)

(assert (= bs!877766 (and b!4539872 b!4538248)))

(assert (=> bs!877766 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713121) (= lambda!176091 lambda!175836))))

(declare-fun bs!877767 () Bool)

(assert (= bs!877767 (and b!4539872 b!4538686)))

(assert (=> bs!877767 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176091 lambda!175924))))

(assert (=> bs!877763 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714378) (= lambda!176091 lambda!176074))))

(declare-fun bs!877768 () Bool)

(assert (= bs!877768 (and b!4539872 b!4538618)))

(assert (=> bs!877768 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713103) (= lambda!176091 lambda!175906))))

(declare-fun bs!877769 () Bool)

(assert (= bs!877769 (and b!4539872 b!4538678)))

(assert (=> bs!877769 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713617) (= lambda!176091 lambda!175921))))

(declare-fun bs!877770 () Bool)

(assert (= bs!877770 (and b!4539872 d!1402409)))

(assert (=> bs!877770 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713488) (= lambda!176091 lambda!175888))))

(declare-fun bs!877771 () Bool)

(assert (= bs!877771 (and b!4539872 b!4539680)))

(assert (=> bs!877771 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714270) (= lambda!176091 lambda!176054))))

(assert (=> bs!877769 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176091 lambda!175920))))

(declare-fun bs!877772 () Bool)

(assert (= bs!877772 (and b!4539872 d!1402527)))

(assert (=> bs!877772 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713612) (= lambda!176091 lambda!175922))))

(declare-fun bs!877773 () Bool)

(assert (= bs!877773 (and b!4539872 d!1403231)))

(assert (=> bs!877773 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714467) (= lambda!176091 lambda!176088))))

(assert (=> bs!877762 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176091 lambda!175976))))

(declare-fun bs!877774 () Bool)

(assert (= bs!877774 (and b!4539872 d!1402887)))

(assert (=> bs!877774 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713493) (= lambda!176091 lambda!176005))))

(assert (=> bs!877766 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713258) (= lambda!176091 lambda!175837))))

(declare-fun bs!877775 () Bool)

(assert (= bs!877775 (and b!4539872 d!1403261)))

(assert (=> bs!877775 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713095) (= lambda!176091 lambda!176090))))

(declare-fun bs!877776 () Bool)

(assert (= bs!877776 (and b!4539872 b!4538501)))

(assert (=> bs!877776 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713493) (= lambda!176091 lambda!175886))))

(declare-fun bs!877777 () Bool)

(assert (= bs!877777 (and b!4539872 b!4539832)))

(assert (=> bs!877777 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (-!424 lt!1713103 key!3287)) (= lambda!176091 lambda!176084))))

(assert (=> bs!877771 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176091 lambda!176052))))

(declare-fun bs!877778 () Bool)

(assert (= bs!877778 (and b!4539872 b!4538617)))

(assert (=> bs!877778 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713589) (= lambda!176091 lambda!175908))))

(declare-fun bs!877779 () Bool)

(assert (= bs!877779 (and b!4539872 d!1402987)))

(assert (=> bs!877779 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714096) (= lambda!176091 lambda!176018))))

(declare-fun bs!877780 () Bool)

(assert (= bs!877780 (and b!4539872 b!4538249)))

(assert (=> bs!877780 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713121) (= lambda!176091 lambda!175834))))

(declare-fun bs!877781 () Bool)

(assert (= bs!877781 (and b!4539872 b!4538502)))

(assert (=> bs!877781 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713095) (= lambda!176091 lambda!175883))))

(declare-fun bs!877782 () Bool)

(assert (= bs!877782 (and b!4539872 d!1402229)))

(assert (=> bs!877782 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713253) (= lambda!176091 lambda!175838))))

(declare-fun bs!877783 () Bool)

(assert (= bs!877783 (and b!4539872 d!1403123)))

(assert (=> bs!877783 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714265) (= lambda!176091 lambda!176057))))

(declare-fun bs!877784 () Bool)

(assert (= bs!877784 (and b!4539872 b!4539768)))

(assert (=> bs!877784 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176091 lambda!176071))))

(declare-fun bs!877785 () Bool)

(assert (= bs!877785 (and b!4539872 b!4539429)))

(assert (=> bs!877785 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714101) (= lambda!176091 lambda!176015))))

(declare-fun bs!877786 () Bool)

(assert (= bs!877786 (and b!4539872 b!4539281)))

(assert (=> bs!877786 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176091 lambda!175998))))

(declare-fun bs!877787 () Bool)

(assert (= bs!877787 (and b!4539872 d!1402771)))

(assert (=> bs!877787 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713877) (= lambda!176091 lambda!175978))))

(declare-fun bs!877788 () Bool)

(assert (= bs!877788 (and b!4539872 d!1402317)))

(assert (=> bs!877788 (not (= lambda!176091 lambda!175860))))

(declare-fun bs!877789 () Bool)

(assert (= bs!877789 (and b!4539872 b!4539234)))

(assert (=> bs!877789 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176091 lambda!175981))))

(assert (=> bs!877776 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713095) (= lambda!176091 lambda!175885))))

(declare-fun bs!877790 () Bool)

(assert (= bs!877790 (and b!4539872 b!4538679)))

(assert (=> bs!877790 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176091 lambda!175919))))

(declare-fun bs!877791 () Bool)

(assert (= bs!877791 (and b!4539872 d!1402545)))

(assert (=> bs!877791 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713589) (= lambda!176091 lambda!175932))))

(declare-fun bs!877792 () Bool)

(assert (= bs!877792 (and b!4539872 b!4539833)))

(assert (=> bs!877792 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (-!424 lt!1713103 key!3287)) (= lambda!176091 lambda!176082))))

(declare-fun bs!877793 () Bool)

(assert (= bs!877793 (and b!4539872 d!1402983)))

(assert (=> bs!877793 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713103) (= lambda!176091 lambda!176011))))

(assert (=> bs!877785 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176091 lambda!176014))))

(declare-fun bs!877794 () Bool)

(assert (= bs!877794 (and b!4539872 d!1402727)))

(assert (=> bs!877794 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713121) (= lambda!176091 lambda!175970))))

(declare-fun bs!877795 () Bool)

(assert (= bs!877795 (and b!4539872 d!1403135)))

(assert (=> bs!877795 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713258) (= lambda!176091 lambda!176059))))

(declare-fun bs!877796 () Bool)

(assert (= bs!877796 (and b!4539872 d!1402531)))

(assert (=> bs!877796 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713634) (= lambda!176091 lambda!175927))))

(declare-fun bs!877797 () Bool)

(assert (= bs!877797 (and b!4539872 d!1402859)))

(assert (=> bs!877797 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713969) (= lambda!176091 lambda!176002))))

(assert (=> bs!877789 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713914) (= lambda!176091 lambda!175982))))

(declare-fun bs!877798 () Bool)

(assert (= bs!877798 (and b!4539872 b!4539430)))

(assert (=> bs!877798 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176091 lambda!176012))))

(assert (=> bs!877778 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713103) (= lambda!176091 lambda!175907))))

(declare-fun bs!877799 () Bool)

(assert (= bs!877799 (and b!4539872 b!4539681)))

(assert (=> bs!877799 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176091 lambda!176050))))

(assert (=> bs!877777 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714472) (= lambda!176091 lambda!176086))))

(declare-fun bs!877800 () Bool)

(assert (= bs!877800 (and b!4539872 d!1403191)))

(assert (=> bs!877800 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714373) (= lambda!176091 lambda!176076))))

(declare-fun bs!877801 () Bool)

(assert (= bs!877801 (and b!4539872 b!4538171)))

(assert (=> bs!877801 (not (= lambda!176091 lambda!175771))))

(assert (=> bs!877786 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713974) (= lambda!176091 lambda!176000))))

(assert (=> b!4539872 true))

(declare-fun bs!877802 () Bool)

(declare-fun b!4539871 () Bool)

(assert (= bs!877802 (and b!4539871 d!1402485)))

(declare-fun lambda!176092 () Int)

(assert (=> bs!877802 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713584) (= lambda!176092 lambda!175909))))

(declare-fun bs!877803 () Bool)

(assert (= bs!877803 (and b!4539871 d!1402823)))

(assert (=> bs!877803 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713909) (= lambda!176092 lambda!175983))))

(declare-fun bs!877804 () Bool)

(assert (= bs!877804 (and b!4539871 b!4538685)))

(assert (=> bs!877804 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176092 lambda!175925))))

(declare-fun bs!877805 () Bool)

(assert (= bs!877805 (and b!4539871 d!1402523)))

(assert (=> bs!877805 (not (= lambda!176092 lambda!175918))))

(declare-fun bs!877806 () Bool)

(assert (= bs!877806 (and b!4539871 b!4539872)))

(assert (=> bs!877806 (= lambda!176092 lambda!176091)))

(declare-fun bs!877807 () Bool)

(assert (= bs!877807 (and b!4539871 b!4539282)))

(assert (=> bs!877807 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176092 lambda!175996))))

(declare-fun bs!877808 () Bool)

(assert (= bs!877808 (and b!4539871 b!4539182)))

(assert (=> bs!877808 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713882) (= lambda!176092 lambda!175977))))

(assert (=> bs!877804 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713639) (= lambda!176092 lambda!175926))))

(declare-fun bs!877809 () Bool)

(assert (= bs!877809 (and b!4539871 b!4539767)))

(assert (=> bs!877809 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176092 lambda!176072))))

(declare-fun bs!877810 () Bool)

(assert (= bs!877810 (and b!4539871 b!4539183)))

(assert (=> bs!877810 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176092 lambda!175975))))

(declare-fun bs!877811 () Bool)

(assert (= bs!877811 (and b!4539871 b!4539235)))

(assert (=> bs!877811 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176092 lambda!175980))))

(declare-fun bs!877812 () Bool)

(assert (= bs!877812 (and b!4539871 b!4538248)))

(assert (=> bs!877812 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713121) (= lambda!176092 lambda!175836))))

(declare-fun bs!877813 () Bool)

(assert (= bs!877813 (and b!4539871 b!4538686)))

(assert (=> bs!877813 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176092 lambda!175924))))

(assert (=> bs!877809 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714378) (= lambda!176092 lambda!176074))))

(declare-fun bs!877814 () Bool)

(assert (= bs!877814 (and b!4539871 b!4538618)))

(assert (=> bs!877814 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713103) (= lambda!176092 lambda!175906))))

(declare-fun bs!877815 () Bool)

(assert (= bs!877815 (and b!4539871 b!4538678)))

(assert (=> bs!877815 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713617) (= lambda!176092 lambda!175921))))

(declare-fun bs!877816 () Bool)

(assert (= bs!877816 (and b!4539871 d!1402409)))

(assert (=> bs!877816 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713488) (= lambda!176092 lambda!175888))))

(declare-fun bs!877817 () Bool)

(assert (= bs!877817 (and b!4539871 b!4539680)))

(assert (=> bs!877817 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714270) (= lambda!176092 lambda!176054))))

(assert (=> bs!877815 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176092 lambda!175920))))

(declare-fun bs!877818 () Bool)

(assert (= bs!877818 (and b!4539871 d!1402527)))

(assert (=> bs!877818 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713612) (= lambda!176092 lambda!175922))))

(declare-fun bs!877819 () Bool)

(assert (= bs!877819 (and b!4539871 d!1403231)))

(assert (=> bs!877819 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714467) (= lambda!176092 lambda!176088))))

(assert (=> bs!877808 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176092 lambda!175976))))

(declare-fun bs!877820 () Bool)

(assert (= bs!877820 (and b!4539871 d!1402887)))

(assert (=> bs!877820 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713493) (= lambda!176092 lambda!176005))))

(assert (=> bs!877812 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713258) (= lambda!176092 lambda!175837))))

(declare-fun bs!877821 () Bool)

(assert (= bs!877821 (and b!4539871 d!1403261)))

(assert (=> bs!877821 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713095) (= lambda!176092 lambda!176090))))

(declare-fun bs!877822 () Bool)

(assert (= bs!877822 (and b!4539871 b!4538501)))

(assert (=> bs!877822 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713493) (= lambda!176092 lambda!175886))))

(declare-fun bs!877823 () Bool)

(assert (= bs!877823 (and b!4539871 b!4539832)))

(assert (=> bs!877823 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (-!424 lt!1713103 key!3287)) (= lambda!176092 lambda!176084))))

(assert (=> bs!877817 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176092 lambda!176052))))

(declare-fun bs!877824 () Bool)

(assert (= bs!877824 (and b!4539871 b!4538617)))

(assert (=> bs!877824 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713589) (= lambda!176092 lambda!175908))))

(declare-fun bs!877825 () Bool)

(assert (= bs!877825 (and b!4539871 d!1402987)))

(assert (=> bs!877825 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714096) (= lambda!176092 lambda!176018))))

(declare-fun bs!877826 () Bool)

(assert (= bs!877826 (and b!4539871 b!4538249)))

(assert (=> bs!877826 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713121) (= lambda!176092 lambda!175834))))

(declare-fun bs!877827 () Bool)

(assert (= bs!877827 (and b!4539871 b!4538502)))

(assert (=> bs!877827 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713095) (= lambda!176092 lambda!175883))))

(declare-fun bs!877828 () Bool)

(assert (= bs!877828 (and b!4539871 d!1402229)))

(assert (=> bs!877828 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713253) (= lambda!176092 lambda!175838))))

(declare-fun bs!877829 () Bool)

(assert (= bs!877829 (and b!4539871 d!1403123)))

(assert (=> bs!877829 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714265) (= lambda!176092 lambda!176057))))

(declare-fun bs!877830 () Bool)

(assert (= bs!877830 (and b!4539871 b!4539768)))

(assert (=> bs!877830 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176092 lambda!176071))))

(declare-fun bs!877831 () Bool)

(assert (= bs!877831 (and b!4539871 b!4539429)))

(assert (=> bs!877831 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714101) (= lambda!176092 lambda!176015))))

(declare-fun bs!877832 () Bool)

(assert (= bs!877832 (and b!4539871 b!4539281)))

(assert (=> bs!877832 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176092 lambda!175998))))

(declare-fun bs!877833 () Bool)

(assert (= bs!877833 (and b!4539871 d!1402771)))

(assert (=> bs!877833 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713877) (= lambda!176092 lambda!175978))))

(declare-fun bs!877834 () Bool)

(assert (= bs!877834 (and b!4539871 d!1402317)))

(assert (=> bs!877834 (not (= lambda!176092 lambda!175860))))

(declare-fun bs!877835 () Bool)

(assert (= bs!877835 (and b!4539871 b!4539234)))

(assert (=> bs!877835 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176092 lambda!175981))))

(assert (=> bs!877822 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713095) (= lambda!176092 lambda!175885))))

(declare-fun bs!877836 () Bool)

(assert (= bs!877836 (and b!4539871 b!4538679)))

(assert (=> bs!877836 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176092 lambda!175919))))

(declare-fun bs!877837 () Bool)

(assert (= bs!877837 (and b!4539871 d!1402545)))

(assert (=> bs!877837 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713589) (= lambda!176092 lambda!175932))))

(declare-fun bs!877838 () Bool)

(assert (= bs!877838 (and b!4539871 b!4539833)))

(assert (=> bs!877838 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (-!424 lt!1713103 key!3287)) (= lambda!176092 lambda!176082))))

(declare-fun bs!877839 () Bool)

(assert (= bs!877839 (and b!4539871 d!1402983)))

(assert (=> bs!877839 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713103) (= lambda!176092 lambda!176011))))

(assert (=> bs!877831 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176092 lambda!176014))))

(declare-fun bs!877840 () Bool)

(assert (= bs!877840 (and b!4539871 d!1402727)))

(assert (=> bs!877840 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713121) (= lambda!176092 lambda!175970))))

(declare-fun bs!877841 () Bool)

(assert (= bs!877841 (and b!4539871 d!1403135)))

(assert (=> bs!877841 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713258) (= lambda!176092 lambda!176059))))

(declare-fun bs!877842 () Bool)

(assert (= bs!877842 (and b!4539871 d!1402531)))

(assert (=> bs!877842 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713634) (= lambda!176092 lambda!175927))))

(declare-fun bs!877843 () Bool)

(assert (= bs!877843 (and b!4539871 d!1402859)))

(assert (=> bs!877843 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713969) (= lambda!176092 lambda!176002))))

(assert (=> bs!877835 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713914) (= lambda!176092 lambda!175982))))

(declare-fun bs!877844 () Bool)

(assert (= bs!877844 (and b!4539871 b!4539430)))

(assert (=> bs!877844 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176092 lambda!176012))))

(assert (=> bs!877824 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713103) (= lambda!176092 lambda!175907))))

(declare-fun bs!877845 () Bool)

(assert (= bs!877845 (and b!4539871 b!4539681)))

(assert (=> bs!877845 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176092 lambda!176050))))

(assert (=> bs!877823 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714472) (= lambda!176092 lambda!176086))))

(declare-fun bs!877846 () Bool)

(assert (= bs!877846 (and b!4539871 d!1403191)))

(assert (=> bs!877846 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714373) (= lambda!176092 lambda!176076))))

(declare-fun bs!877847 () Bool)

(assert (= bs!877847 (and b!4539871 b!4538171)))

(assert (=> bs!877847 (not (= lambda!176092 lambda!175771))))

(assert (=> bs!877832 (= (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1713974) (= lambda!176092 lambda!176000))))

(assert (=> b!4539871 true))

(declare-fun lambda!176093 () Int)

(declare-fun lt!1714505 () ListMap!3665)

(assert (=> bs!877802 (= (= lt!1714505 lt!1713584) (= lambda!176093 lambda!175909))))

(assert (=> bs!877803 (= (= lt!1714505 lt!1713909) (= lambda!176093 lambda!175983))))

(assert (=> bs!877804 (= (= lt!1714505 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176093 lambda!175925))))

(assert (=> bs!877805 (not (= lambda!176093 lambda!175918))))

(assert (=> bs!877806 (= (= lt!1714505 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) (= lambda!176093 lambda!176091))))

(assert (=> bs!877807 (= (= lt!1714505 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176093 lambda!175996))))

(assert (=> bs!877808 (= (= lt!1714505 lt!1713882) (= lambda!176093 lambda!175977))))

(assert (=> bs!877804 (= (= lt!1714505 lt!1713639) (= lambda!176093 lambda!175926))))

(assert (=> bs!877809 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176093 lambda!176072))))

(assert (=> bs!877810 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176093 lambda!175975))))

(assert (=> bs!877811 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176093 lambda!175980))))

(assert (=> bs!877812 (= (= lt!1714505 lt!1713121) (= lambda!176093 lambda!175836))))

(assert (=> bs!877813 (= (= lt!1714505 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176093 lambda!175924))))

(assert (=> bs!877809 (= (= lt!1714505 lt!1714378) (= lambda!176093 lambda!176074))))

(assert (=> bs!877814 (= (= lt!1714505 lt!1713103) (= lambda!176093 lambda!175906))))

(assert (=> bs!877815 (= (= lt!1714505 lt!1713617) (= lambda!176093 lambda!175921))))

(assert (=> bs!877816 (= (= lt!1714505 lt!1713488) (= lambda!176093 lambda!175888))))

(assert (=> bs!877817 (= (= lt!1714505 lt!1714270) (= lambda!176093 lambda!176054))))

(assert (=> bs!877815 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176093 lambda!175920))))

(assert (=> bs!877818 (= (= lt!1714505 lt!1713612) (= lambda!176093 lambda!175922))))

(assert (=> bs!877819 (= (= lt!1714505 lt!1714467) (= lambda!176093 lambda!176088))))

(assert (=> bs!877808 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176093 lambda!175976))))

(assert (=> b!4539871 (= (= lt!1714505 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) (= lambda!176093 lambda!176092))))

(assert (=> bs!877820 (= (= lt!1714505 lt!1713493) (= lambda!176093 lambda!176005))))

(assert (=> bs!877812 (= (= lt!1714505 lt!1713258) (= lambda!176093 lambda!175837))))

(assert (=> bs!877821 (= (= lt!1714505 lt!1713095) (= lambda!176093 lambda!176090))))

(assert (=> bs!877822 (= (= lt!1714505 lt!1713493) (= lambda!176093 lambda!175886))))

(assert (=> bs!877823 (= (= lt!1714505 (-!424 lt!1713103 key!3287)) (= lambda!176093 lambda!176084))))

(assert (=> bs!877817 (= (= lt!1714505 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176093 lambda!176052))))

(assert (=> bs!877824 (= (= lt!1714505 lt!1713589) (= lambda!176093 lambda!175908))))

(assert (=> bs!877825 (= (= lt!1714505 lt!1714096) (= lambda!176093 lambda!176018))))

(assert (=> bs!877826 (= (= lt!1714505 lt!1713121) (= lambda!176093 lambda!175834))))

(assert (=> bs!877827 (= (= lt!1714505 lt!1713095) (= lambda!176093 lambda!175883))))

(assert (=> bs!877828 (= (= lt!1714505 lt!1713253) (= lambda!176093 lambda!175838))))

(assert (=> bs!877829 (= (= lt!1714505 lt!1714265) (= lambda!176093 lambda!176057))))

(assert (=> bs!877830 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176093 lambda!176071))))

(assert (=> bs!877831 (= (= lt!1714505 lt!1714101) (= lambda!176093 lambda!176015))))

(assert (=> bs!877832 (= (= lt!1714505 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176093 lambda!175998))))

(assert (=> bs!877833 (= (= lt!1714505 lt!1713877) (= lambda!176093 lambda!175978))))

(assert (=> bs!877834 (not (= lambda!176093 lambda!175860))))

(assert (=> bs!877835 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176093 lambda!175981))))

(assert (=> bs!877822 (= (= lt!1714505 lt!1713095) (= lambda!176093 lambda!175885))))

(assert (=> bs!877836 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176093 lambda!175919))))

(assert (=> bs!877837 (= (= lt!1714505 lt!1713589) (= lambda!176093 lambda!175932))))

(assert (=> bs!877838 (= (= lt!1714505 (-!424 lt!1713103 key!3287)) (= lambda!176093 lambda!176082))))

(assert (=> bs!877839 (= (= lt!1714505 lt!1713103) (= lambda!176093 lambda!176011))))

(assert (=> bs!877831 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176093 lambda!176014))))

(assert (=> bs!877840 (= (= lt!1714505 lt!1713121) (= lambda!176093 lambda!175970))))

(assert (=> bs!877841 (= (= lt!1714505 lt!1713258) (= lambda!176093 lambda!176059))))

(assert (=> bs!877842 (= (= lt!1714505 lt!1713634) (= lambda!176093 lambda!175927))))

(assert (=> bs!877843 (= (= lt!1714505 lt!1713969) (= lambda!176093 lambda!176002))))

(assert (=> bs!877835 (= (= lt!1714505 lt!1713914) (= lambda!176093 lambda!175982))))

(assert (=> bs!877844 (= (= lt!1714505 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176093 lambda!176012))))

(assert (=> bs!877824 (= (= lt!1714505 lt!1713103) (= lambda!176093 lambda!175907))))

(assert (=> bs!877845 (= (= lt!1714505 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176093 lambda!176050))))

(assert (=> bs!877823 (= (= lt!1714505 lt!1714472) (= lambda!176093 lambda!176086))))

(assert (=> bs!877846 (= (= lt!1714505 lt!1714373) (= lambda!176093 lambda!176076))))

(assert (=> bs!877847 (not (= lambda!176093 lambda!175771))))

(assert (=> bs!877832 (= (= lt!1714505 lt!1713974) (= lambda!176093 lambda!176000))))

(assert (=> b!4539871 true))

(declare-fun bs!877848 () Bool)

(declare-fun d!1403271 () Bool)

(assert (= bs!877848 (and d!1403271 d!1402485)))

(declare-fun lt!1714500 () ListMap!3665)

(declare-fun lambda!176094 () Int)

(assert (=> bs!877848 (= (= lt!1714500 lt!1713584) (= lambda!176094 lambda!175909))))

(declare-fun bs!877849 () Bool)

(assert (= bs!877849 (and d!1403271 d!1402823)))

(assert (=> bs!877849 (= (= lt!1714500 lt!1713909) (= lambda!176094 lambda!175983))))

(declare-fun bs!877850 () Bool)

(assert (= bs!877850 (and d!1403271 b!4538685)))

(assert (=> bs!877850 (= (= lt!1714500 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176094 lambda!175925))))

(declare-fun bs!877851 () Bool)

(assert (= bs!877851 (and d!1403271 d!1402523)))

(assert (=> bs!877851 (not (= lambda!176094 lambda!175918))))

(declare-fun bs!877852 () Bool)

(assert (= bs!877852 (and d!1403271 b!4539282)))

(assert (=> bs!877852 (= (= lt!1714500 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176094 lambda!175996))))

(declare-fun bs!877853 () Bool)

(assert (= bs!877853 (and d!1403271 b!4539182)))

(assert (=> bs!877853 (= (= lt!1714500 lt!1713882) (= lambda!176094 lambda!175977))))

(assert (=> bs!877850 (= (= lt!1714500 lt!1713639) (= lambda!176094 lambda!175926))))

(declare-fun bs!877854 () Bool)

(assert (= bs!877854 (and d!1403271 b!4539767)))

(assert (=> bs!877854 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176094 lambda!176072))))

(declare-fun bs!877855 () Bool)

(assert (= bs!877855 (and d!1403271 b!4539183)))

(assert (=> bs!877855 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176094 lambda!175975))))

(declare-fun bs!877856 () Bool)

(assert (= bs!877856 (and d!1403271 b!4539235)))

(assert (=> bs!877856 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176094 lambda!175980))))

(declare-fun bs!877857 () Bool)

(assert (= bs!877857 (and d!1403271 b!4538248)))

(assert (=> bs!877857 (= (= lt!1714500 lt!1713121) (= lambda!176094 lambda!175836))))

(declare-fun bs!877858 () Bool)

(assert (= bs!877858 (and d!1403271 b!4538686)))

(assert (=> bs!877858 (= (= lt!1714500 (+!1604 lt!1713103 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176094 lambda!175924))))

(assert (=> bs!877854 (= (= lt!1714500 lt!1714378) (= lambda!176094 lambda!176074))))

(declare-fun bs!877859 () Bool)

(assert (= bs!877859 (and d!1403271 b!4538618)))

(assert (=> bs!877859 (= (= lt!1714500 lt!1713103) (= lambda!176094 lambda!175906))))

(declare-fun bs!877860 () Bool)

(assert (= bs!877860 (and d!1403271 b!4538678)))

(assert (=> bs!877860 (= (= lt!1714500 lt!1713617) (= lambda!176094 lambda!175921))))

(declare-fun bs!877861 () Bool)

(assert (= bs!877861 (and d!1403271 d!1402409)))

(assert (=> bs!877861 (= (= lt!1714500 lt!1713488) (= lambda!176094 lambda!175888))))

(declare-fun bs!877862 () Bool)

(assert (= bs!877862 (and d!1403271 b!4539680)))

(assert (=> bs!877862 (= (= lt!1714500 lt!1714270) (= lambda!176094 lambda!176054))))

(assert (=> bs!877860 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176094 lambda!175920))))

(declare-fun bs!877863 () Bool)

(assert (= bs!877863 (and d!1403271 d!1402527)))

(assert (=> bs!877863 (= (= lt!1714500 lt!1713612) (= lambda!176094 lambda!175922))))

(declare-fun bs!877864 () Bool)

(assert (= bs!877864 (and d!1403271 d!1403231)))

(assert (=> bs!877864 (= (= lt!1714500 lt!1714467) (= lambda!176094 lambda!176088))))

(assert (=> bs!877853 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 lt!1713101)))) (= lambda!176094 lambda!175976))))

(declare-fun bs!877865 () Bool)

(assert (= bs!877865 (and d!1403271 b!4539872)))

(assert (=> bs!877865 (= (= lt!1714500 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) (= lambda!176094 lambda!176091))))

(declare-fun bs!877866 () Bool)

(assert (= bs!877866 (and d!1403271 b!4539871)))

(assert (=> bs!877866 (= (= lt!1714500 lt!1714505) (= lambda!176094 lambda!176093))))

(assert (=> bs!877866 (= (= lt!1714500 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) (= lambda!176094 lambda!176092))))

(declare-fun bs!877867 () Bool)

(assert (= bs!877867 (and d!1403271 d!1402887)))

(assert (=> bs!877867 (= (= lt!1714500 lt!1713493) (= lambda!176094 lambda!176005))))

(assert (=> bs!877857 (= (= lt!1714500 lt!1713258) (= lambda!176094 lambda!175837))))

(declare-fun bs!877868 () Bool)

(assert (= bs!877868 (and d!1403271 d!1403261)))

(assert (=> bs!877868 (= (= lt!1714500 lt!1713095) (= lambda!176094 lambda!176090))))

(declare-fun bs!877869 () Bool)

(assert (= bs!877869 (and d!1403271 b!4538501)))

(assert (=> bs!877869 (= (= lt!1714500 lt!1713493) (= lambda!176094 lambda!175886))))

(declare-fun bs!877870 () Bool)

(assert (= bs!877870 (and d!1403271 b!4539832)))

(assert (=> bs!877870 (= (= lt!1714500 (-!424 lt!1713103 key!3287)) (= lambda!176094 lambda!176084))))

(assert (=> bs!877862 (= (= lt!1714500 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176094 lambda!176052))))

(declare-fun bs!877871 () Bool)

(assert (= bs!877871 (and d!1403271 b!4538617)))

(assert (=> bs!877871 (= (= lt!1714500 lt!1713589) (= lambda!176094 lambda!175908))))

(declare-fun bs!877872 () Bool)

(assert (= bs!877872 (and d!1403271 d!1402987)))

(assert (=> bs!877872 (= (= lt!1714500 lt!1714096) (= lambda!176094 lambda!176018))))

(declare-fun bs!877873 () Bool)

(assert (= bs!877873 (and d!1403271 b!4538249)))

(assert (=> bs!877873 (= (= lt!1714500 lt!1713121) (= lambda!176094 lambda!175834))))

(declare-fun bs!877874 () Bool)

(assert (= bs!877874 (and d!1403271 b!4538502)))

(assert (=> bs!877874 (= (= lt!1714500 lt!1713095) (= lambda!176094 lambda!175883))))

(declare-fun bs!877875 () Bool)

(assert (= bs!877875 (and d!1403271 d!1402229)))

(assert (=> bs!877875 (= (= lt!1714500 lt!1713253) (= lambda!176094 lambda!175838))))

(declare-fun bs!877876 () Bool)

(assert (= bs!877876 (and d!1403271 d!1403123)))

(assert (=> bs!877876 (= (= lt!1714500 lt!1714265) (= lambda!176094 lambda!176057))))

(declare-fun bs!877877 () Bool)

(assert (= bs!877877 (and d!1403271 b!4539768)))

(assert (=> bs!877877 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))))) (= lambda!176094 lambda!176071))))

(declare-fun bs!877878 () Bool)

(assert (= bs!877878 (and d!1403271 b!4539429)))

(assert (=> bs!877878 (= (= lt!1714500 lt!1714101) (= lambda!176094 lambda!176015))))

(declare-fun bs!877879 () Bool)

(assert (= bs!877879 (and d!1403271 b!4539281)))

(assert (=> bs!877879 (= (= lt!1714500 (+!1604 lt!1713095 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176094 lambda!175998))))

(declare-fun bs!877880 () Bool)

(assert (= bs!877880 (and d!1403271 d!1402771)))

(assert (=> bs!877880 (= (= lt!1714500 lt!1713877) (= lambda!176094 lambda!175978))))

(declare-fun bs!877881 () Bool)

(assert (= bs!877881 (and d!1403271 d!1402317)))

(assert (=> bs!877881 (not (= lambda!176094 lambda!175860))))

(declare-fun bs!877882 () Bool)

(assert (= bs!877882 (and d!1403271 b!4539234)))

(assert (=> bs!877882 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 lt!1713100)))) (= lambda!176094 lambda!175981))))

(assert (=> bs!877869 (= (= lt!1714500 lt!1713095) (= lambda!176094 lambda!175885))))

(declare-fun bs!877883 () Bool)

(assert (= bs!877883 (and d!1403271 b!4538679)))

(assert (=> bs!877883 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 lt!1713102)))) (= lambda!176094 lambda!175919))))

(declare-fun bs!877884 () Bool)

(assert (= bs!877884 (and d!1403271 d!1402545)))

(assert (=> bs!877884 (= (= lt!1714500 lt!1713589) (= lambda!176094 lambda!175932))))

(declare-fun bs!877885 () Bool)

(assert (= bs!877885 (and d!1403271 b!4539833)))

(assert (=> bs!877885 (= (= lt!1714500 (-!424 lt!1713103 key!3287)) (= lambda!176094 lambda!176082))))

(declare-fun bs!877886 () Bool)

(assert (= bs!877886 (and d!1403271 d!1402983)))

(assert (=> bs!877886 (= (= lt!1714500 lt!1713103) (= lambda!176094 lambda!176011))))

(assert (=> bs!877878 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176094 lambda!176014))))

(declare-fun bs!877887 () Bool)

(assert (= bs!877887 (and d!1403271 d!1402727)))

(assert (=> bs!877887 (= (= lt!1714500 lt!1713121) (= lambda!176094 lambda!175970))))

(declare-fun bs!877888 () Bool)

(assert (= bs!877888 (and d!1403271 d!1403135)))

(assert (=> bs!877888 (= (= lt!1714500 lt!1713258) (= lambda!176094 lambda!176059))))

(declare-fun bs!877889 () Bool)

(assert (= bs!877889 (and d!1403271 d!1402531)))

(assert (=> bs!877889 (= (= lt!1714500 lt!1713634) (= lambda!176094 lambda!175927))))

(declare-fun bs!877890 () Bool)

(assert (= bs!877890 (and d!1403271 d!1402859)))

(assert (=> bs!877890 (= (= lt!1714500 lt!1713969) (= lambda!176094 lambda!176002))))

(assert (=> bs!877882 (= (= lt!1714500 lt!1713914) (= lambda!176094 lambda!175982))))

(declare-fun bs!877891 () Bool)

(assert (= bs!877891 (and d!1403271 b!4539430)))

(assert (=> bs!877891 (= (= lt!1714500 (extractMap!1254 (t!357835 (toList!4404 lm!1477)))) (= lambda!176094 lambda!176012))))

(assert (=> bs!877871 (= (= lt!1714500 lt!1713103) (= lambda!176094 lambda!175907))))

(declare-fun bs!877892 () Bool)

(assert (= bs!877892 (and d!1403271 b!4539681)))

(assert (=> bs!877892 (= (= lt!1714500 (+!1604 lt!1713121 (h!56627 (_2!28908 lt!1713093)))) (= lambda!176094 lambda!176050))))

(assert (=> bs!877870 (= (= lt!1714500 lt!1714472) (= lambda!176094 lambda!176086))))

(declare-fun bs!877893 () Bool)

(assert (= bs!877893 (and d!1403271 d!1403191)))

(assert (=> bs!877893 (= (= lt!1714500 lt!1714373) (= lambda!176094 lambda!176076))))

(declare-fun bs!877894 () Bool)

(assert (= bs!877894 (and d!1403271 b!4538171)))

(assert (=> bs!877894 (not (= lambda!176094 lambda!175771))))

(assert (=> bs!877879 (= (= lt!1714500 lt!1713974) (= lambda!176094 lambda!176000))))

(assert (=> d!1403271 true))

(declare-fun bm!316589 () Bool)

(declare-fun call!316594 () Unit!98176)

(assert (=> bm!316589 (= call!316594 (lemmaContainsAllItsOwnKeys!364 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))))))

(declare-fun b!4539868 () Bool)

(declare-fun e!2829014 () Bool)

(assert (=> b!4539868 (= e!2829014 (invariantList!1043 (toList!4403 lt!1714500)))))

(declare-fun call!316596 () Bool)

(declare-fun c!775446 () Bool)

(declare-fun bm!316590 () Bool)

(assert (=> bm!316590 (= call!316596 (forall!10343 (ite c!775446 (toList!4403 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))) (ite c!775446 lambda!176091 lambda!176093)))))

(declare-fun b!4539869 () Bool)

(declare-fun res!1891910 () Bool)

(assert (=> b!4539869 (=> (not res!1891910) (not e!2829014))))

(assert (=> b!4539869 (= res!1891910 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) lambda!176094))))

(declare-fun b!4539870 () Bool)

(declare-fun e!2829015 () Bool)

(assert (=> b!4539870 (= e!2829015 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) lambda!176093))))

(declare-fun e!2829016 () ListMap!3665)

(assert (=> b!4539871 (= e!2829016 lt!1714505)))

(declare-fun lt!1714511 () ListMap!3665)

(assert (=> b!4539871 (= lt!1714511 (+!1604 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (h!56627 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))))))))

(assert (=> b!4539871 (= lt!1714505 (addToMapMapFromBucket!725 (t!357834 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))) (+!1604 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) (h!56627 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))))))))

(declare-fun lt!1714504 () Unit!98176)

(assert (=> b!4539871 (= lt!1714504 call!316594)))

(assert (=> b!4539871 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) lambda!176092)))

(declare-fun lt!1714512 () Unit!98176)

(assert (=> b!4539871 (= lt!1714512 lt!1714504)))

(assert (=> b!4539871 (forall!10343 (toList!4403 lt!1714511) lambda!176093)))

(declare-fun lt!1714499 () Unit!98176)

(declare-fun Unit!98565 () Unit!98176)

(assert (=> b!4539871 (= lt!1714499 Unit!98565)))

(declare-fun call!316595 () Bool)

(assert (=> b!4539871 call!316595))

(declare-fun lt!1714510 () Unit!98176)

(declare-fun Unit!98566 () Unit!98176)

(assert (=> b!4539871 (= lt!1714510 Unit!98566)))

(declare-fun lt!1714498 () Unit!98176)

(declare-fun Unit!98567 () Unit!98176)

(assert (=> b!4539871 (= lt!1714498 Unit!98567)))

(declare-fun lt!1714501 () Unit!98176)

(assert (=> b!4539871 (= lt!1714501 (forallContained!2605 (toList!4403 lt!1714511) lambda!176093 (h!56627 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))))))))

(assert (=> b!4539871 (contains!13538 lt!1714511 (_1!28907 (h!56627 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))))))))

(declare-fun lt!1714497 () Unit!98176)

(declare-fun Unit!98568 () Unit!98176)

(assert (=> b!4539871 (= lt!1714497 Unit!98568)))

(assert (=> b!4539871 (contains!13538 lt!1714505 (_1!28907 (h!56627 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))))))))

(declare-fun lt!1714496 () Unit!98176)

(declare-fun Unit!98569 () Unit!98176)

(assert (=> b!4539871 (= lt!1714496 Unit!98569)))

(assert (=> b!4539871 call!316596))

(declare-fun lt!1714514 () Unit!98176)

(declare-fun Unit!98570 () Unit!98176)

(assert (=> b!4539871 (= lt!1714514 Unit!98570)))

(assert (=> b!4539871 (forall!10343 (toList!4403 lt!1714511) lambda!176093)))

(declare-fun lt!1714506 () Unit!98176)

(declare-fun Unit!98571 () Unit!98176)

(assert (=> b!4539871 (= lt!1714506 Unit!98571)))

(declare-fun lt!1714509 () Unit!98176)

(declare-fun Unit!98572 () Unit!98176)

(assert (=> b!4539871 (= lt!1714509 Unit!98572)))

(declare-fun lt!1714515 () Unit!98176)

(assert (=> b!4539871 (= lt!1714515 (addForallContainsKeyThenBeforeAdding!364 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714505 (_1!28907 (h!56627 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))))) (_2!28907 (h!56627 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))))))))

(assert (=> b!4539871 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) lambda!176093)))

(declare-fun lt!1714503 () Unit!98176)

(assert (=> b!4539871 (= lt!1714503 lt!1714515)))

(assert (=> b!4539871 (forall!10343 (toList!4403 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) lambda!176093)))

(declare-fun lt!1714513 () Unit!98176)

(declare-fun Unit!98573 () Unit!98176)

(assert (=> b!4539871 (= lt!1714513 Unit!98573)))

(declare-fun res!1891909 () Bool)

(assert (=> b!4539871 (= res!1891909 (forall!10343 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))) lambda!176093))))

(assert (=> b!4539871 (=> (not res!1891909) (not e!2829015))))

(assert (=> b!4539871 e!2829015))

(declare-fun lt!1714495 () Unit!98176)

(declare-fun Unit!98574 () Unit!98176)

(assert (=> b!4539871 (= lt!1714495 Unit!98574)))

(assert (=> b!4539872 (= e!2829016 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))))))

(declare-fun lt!1714508 () Unit!98176)

(assert (=> b!4539872 (= lt!1714508 call!316594)))

(assert (=> b!4539872 call!316595))

(declare-fun lt!1714507 () Unit!98176)

(assert (=> b!4539872 (= lt!1714507 lt!1714508)))

(assert (=> b!4539872 call!316596))

(declare-fun lt!1714502 () Unit!98176)

(declare-fun Unit!98575 () Unit!98176)

(assert (=> b!4539872 (= lt!1714502 Unit!98575)))

(declare-fun bm!316591 () Bool)

(assert (=> bm!316591 (= call!316595 (forall!10343 (ite c!775446 (toList!4403 (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) (t!357834 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))))) (ite c!775446 lambda!176091 lambda!176093)))))

(assert (=> d!1403271 e!2829014))

(declare-fun res!1891908 () Bool)

(assert (=> d!1403271 (=> (not res!1891908) (not e!2829014))))

(assert (=> d!1403271 (= res!1891908 (forall!10343 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))) lambda!176094))))

(assert (=> d!1403271 (= lt!1714500 e!2829016)))

(assert (=> d!1403271 (= c!775446 ((_ is Nil!50748) (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))))))

(assert (=> d!1403271 (noDuplicateKeys!1198 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))))))

(assert (=> d!1403271 (= (addToMapMapFromBucket!725 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477)))) (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477))))) lt!1714500)))

(assert (= (and d!1403271 c!775446) b!4539872))

(assert (= (and d!1403271 (not c!775446)) b!4539871))

(assert (= (and b!4539871 res!1891909) b!4539870))

(assert (= (or b!4539872 b!4539871) bm!316590))

(assert (= (or b!4539872 b!4539871) bm!316591))

(assert (= (or b!4539872 b!4539871) bm!316589))

(assert (= (and d!1403271 res!1891908) b!4539869))

(assert (= (and b!4539869 res!1891910) b!4539868))

(declare-fun m!5306187 () Bool)

(assert (=> bm!316591 m!5306187))

(declare-fun m!5306189 () Bool)

(assert (=> b!4539871 m!5306189))

(assert (=> b!4539871 m!5303449))

(declare-fun m!5306191 () Bool)

(assert (=> b!4539871 m!5306191))

(declare-fun m!5306193 () Bool)

(assert (=> b!4539871 m!5306193))

(declare-fun m!5306195 () Bool)

(assert (=> b!4539871 m!5306195))

(assert (=> b!4539871 m!5306189))

(assert (=> b!4539871 m!5306195))

(declare-fun m!5306197 () Bool)

(assert (=> b!4539871 m!5306197))

(declare-fun m!5306199 () Bool)

(assert (=> b!4539871 m!5306199))

(declare-fun m!5306201 () Bool)

(assert (=> b!4539871 m!5306201))

(declare-fun m!5306203 () Bool)

(assert (=> b!4539871 m!5306203))

(assert (=> b!4539871 m!5306191))

(declare-fun m!5306205 () Bool)

(assert (=> b!4539871 m!5306205))

(assert (=> b!4539871 m!5303449))

(declare-fun m!5306207 () Bool)

(assert (=> b!4539871 m!5306207))

(declare-fun m!5306209 () Bool)

(assert (=> d!1403271 m!5306209))

(declare-fun m!5306211 () Bool)

(assert (=> d!1403271 m!5306211))

(declare-fun m!5306213 () Bool)

(assert (=> b!4539869 m!5306213))

(declare-fun m!5306215 () Bool)

(assert (=> b!4539868 m!5306215))

(declare-fun m!5306217 () Bool)

(assert (=> bm!316590 m!5306217))

(assert (=> bm!316589 m!5303449))

(declare-fun m!5306219 () Bool)

(assert (=> bm!316589 m!5306219))

(assert (=> b!4539870 m!5306195))

(assert (=> b!4538606 d!1403271))

(declare-fun bs!877895 () Bool)

(declare-fun d!1403273 () Bool)

(assert (= bs!877895 (and d!1403273 start!450372)))

(declare-fun lambda!176095 () Int)

(assert (=> bs!877895 (= lambda!176095 lambda!175769)))

(declare-fun bs!877896 () Bool)

(assert (= bs!877896 (and d!1403273 d!1402275)))

(assert (=> bs!877896 (= lambda!176095 lambda!175846)))

(declare-fun bs!877897 () Bool)

(assert (= bs!877897 (and d!1403273 b!4538171)))

(assert (=> bs!877897 (not (= lambda!176095 lambda!175770))))

(declare-fun bs!877898 () Bool)

(assert (= bs!877898 (and d!1403273 d!1402353)))

(assert (=> bs!877898 (= lambda!176095 lambda!175879)))

(declare-fun bs!877899 () Bool)

(assert (= bs!877899 (and d!1403273 d!1402303)))

(assert (=> bs!877899 (= lambda!176095 lambda!175857)))

(declare-fun bs!877900 () Bool)

(assert (= bs!877900 (and d!1403273 d!1402471)))

(assert (=> bs!877900 (= lambda!176095 lambda!175901)))

(declare-fun bs!877901 () Bool)

(assert (= bs!877901 (and d!1403273 d!1402801)))

(assert (=> bs!877901 (= lambda!176095 lambda!175979)))

(declare-fun bs!877902 () Bool)

(assert (= bs!877902 (and d!1403273 d!1403199)))

(assert (=> bs!877902 (= lambda!176095 lambda!176079)))

(declare-fun bs!877903 () Bool)

(assert (= bs!877903 (and d!1403273 d!1402601)))

(assert (=> bs!877903 (= lambda!176095 lambda!175933)))

(declare-fun bs!877904 () Bool)

(assert (= bs!877904 (and d!1403273 d!1402529)))

(assert (=> bs!877904 (= lambda!176095 lambda!175923)))

(declare-fun bs!877905 () Bool)

(assert (= bs!877905 (and d!1403273 d!1402349)))

(assert (=> bs!877905 (= lambda!176095 lambda!175870)))

(declare-fun bs!877906 () Bool)

(assert (= bs!877906 (and d!1403273 d!1402475)))

(assert (=> bs!877906 (= lambda!176095 lambda!175905)))

(declare-fun bs!877907 () Bool)

(assert (= bs!877907 (and d!1403273 d!1402827)))

(assert (=> bs!877907 (= lambda!176095 lambda!175987)))

(declare-fun bs!877908 () Bool)

(assert (= bs!877908 (and d!1403273 d!1402455)))

(assert (=> bs!877908 (not (= lambda!176095 lambda!175900))))

(declare-fun bs!877909 () Bool)

(assert (= bs!877909 (and d!1403273 d!1402253)))

(assert (=> bs!877909 (= lambda!176095 lambda!175843)))

(declare-fun bs!877910 () Bool)

(assert (= bs!877910 (and d!1403273 d!1402421)))

(assert (=> bs!877910 (= lambda!176095 lambda!175894)))

(declare-fun bs!877911 () Bool)

(assert (= bs!877911 (and d!1403273 d!1402473)))

(assert (=> bs!877911 (= lambda!176095 lambda!175902)))

(declare-fun bs!877912 () Bool)

(assert (= bs!877912 (and d!1403273 d!1402289)))

(assert (=> bs!877912 (= lambda!176095 lambda!175853)))

(declare-fun bs!877913 () Bool)

(assert (= bs!877913 (and d!1403273 d!1402345)))

(assert (=> bs!877913 (= lambda!176095 lambda!175867)))

(declare-fun lt!1714532 () ListMap!3665)

(assert (=> d!1403273 (invariantList!1043 (toList!4403 lt!1714532))))

(declare-fun e!2829025 () ListMap!3665)

(assert (=> d!1403273 (= lt!1714532 e!2829025)))

(declare-fun c!775453 () Bool)

(assert (=> d!1403273 (= c!775453 ((_ is Cons!50749) (t!357835 (t!357835 (toList!4404 lm!1477)))))))

(assert (=> d!1403273 (forall!10341 (t!357835 (t!357835 (toList!4404 lm!1477))) lambda!176095)))

(assert (=> d!1403273 (= (extractMap!1254 (t!357835 (t!357835 (toList!4404 lm!1477)))) lt!1714532)))

(declare-fun b!4539885 () Bool)

(assert (=> b!4539885 (= e!2829025 (addToMapMapFromBucket!725 (_2!28908 (h!56628 (t!357835 (t!357835 (toList!4404 lm!1477))))) (extractMap!1254 (t!357835 (t!357835 (t!357835 (toList!4404 lm!1477)))))))))

(declare-fun b!4539886 () Bool)

(assert (=> b!4539886 (= e!2829025 (ListMap!3666 Nil!50748))))

(assert (= (and d!1403273 c!775453) b!4539885))

(assert (= (and d!1403273 (not c!775453)) b!4539886))

(declare-fun m!5306221 () Bool)

(assert (=> d!1403273 m!5306221))

(declare-fun m!5306223 () Bool)

(assert (=> d!1403273 m!5306223))

(declare-fun m!5306225 () Bool)

(assert (=> b!4539885 m!5306225))

(assert (=> b!4539885 m!5306225))

(declare-fun m!5306227 () Bool)

(assert (=> b!4539885 m!5306227))

(assert (=> b!4538606 d!1403273))

(declare-fun d!1403275 () Bool)

(declare-fun lt!1714549 () Bool)

(assert (=> d!1403275 (= lt!1714549 (select (content!8437 (toList!4404 lt!1713546)) lt!1713120))))

(declare-fun e!2829033 () Bool)

(assert (=> d!1403275 (= lt!1714549 e!2829033)))

(declare-fun res!1891911 () Bool)

(assert (=> d!1403275 (=> (not res!1891911) (not e!2829033))))

(assert (=> d!1403275 (= res!1891911 ((_ is Cons!50749) (toList!4404 lt!1713546)))))

(assert (=> d!1403275 (= (contains!13537 (toList!4404 lt!1713546) lt!1713120) lt!1714549)))

(declare-fun b!4539899 () Bool)

(declare-fun e!2829032 () Bool)

(assert (=> b!4539899 (= e!2829033 e!2829032)))

(declare-fun res!1891912 () Bool)

(assert (=> b!4539899 (=> res!1891912 e!2829032)))

(assert (=> b!4539899 (= res!1891912 (= (h!56628 (toList!4404 lt!1713546)) lt!1713120))))

(declare-fun b!4539900 () Bool)

(assert (=> b!4539900 (= e!2829032 (contains!13537 (t!357835 (toList!4404 lt!1713546)) lt!1713120))))

(assert (= (and d!1403275 res!1891911) b!4539899))

(assert (= (and b!4539899 (not res!1891912)) b!4539900))

(declare-fun m!5306229 () Bool)

(assert (=> d!1403275 m!5306229))

(declare-fun m!5306231 () Bool)

(assert (=> d!1403275 m!5306231))

(declare-fun m!5306233 () Bool)

(assert (=> b!4539900 m!5306233))

(assert (=> b!4538575 d!1403275))

(declare-fun d!1403277 () Bool)

(assert (=> d!1403277 (= (invariantList!1043 (toList!4403 lt!1713383)) (noDuplicatedKeys!276 (toList!4403 lt!1713383)))))

(declare-fun bs!877914 () Bool)

(assert (= bs!877914 d!1403277))

(declare-fun m!5306235 () Bool)

(assert (=> bs!877914 m!5306235))

(assert (=> d!1402345 d!1403277))

(declare-fun d!1403279 () Bool)

(declare-fun res!1891913 () Bool)

(declare-fun e!2829034 () Bool)

(assert (=> d!1403279 (=> res!1891913 e!2829034)))

(assert (=> d!1403279 (= res!1891913 ((_ is Nil!50749) (toList!4404 (+!1602 lt!1713100 lt!1713093))))))

(assert (=> d!1403279 (= (forall!10341 (toList!4404 (+!1602 lt!1713100 lt!1713093)) lambda!175867) e!2829034)))

(declare-fun b!4539901 () Bool)

(declare-fun e!2829035 () Bool)

(assert (=> b!4539901 (= e!2829034 e!2829035)))

(declare-fun res!1891914 () Bool)

(assert (=> b!4539901 (=> (not res!1891914) (not e!2829035))))

(assert (=> b!4539901 (= res!1891914 (dynLambda!21211 lambda!175867 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))))))

(declare-fun b!4539902 () Bool)

(assert (=> b!4539902 (= e!2829035 (forall!10341 (t!357835 (toList!4404 (+!1602 lt!1713100 lt!1713093))) lambda!175867))))

(assert (= (and d!1403279 (not res!1891913)) b!4539901))

(assert (= (and b!4539901 res!1891914) b!4539902))

(declare-fun b_lambda!157853 () Bool)

(assert (=> (not b_lambda!157853) (not b!4539901)))

(declare-fun m!5306237 () Bool)

(assert (=> b!4539901 m!5306237))

(declare-fun m!5306239 () Bool)

(assert (=> b!4539902 m!5306239))

(assert (=> d!1402345 d!1403279))

(declare-fun d!1403281 () Bool)

(declare-fun res!1891915 () Bool)

(declare-fun e!2829038 () Bool)

(assert (=> d!1403281 (=> res!1891915 e!2829038)))

(assert (=> d!1403281 (= res!1891915 ((_ is Nil!50748) (_2!28908 lt!1713093)))))

(assert (=> d!1403281 (= (forall!10343 (_2!28908 lt!1713093) lambda!175909) e!2829038)))

(declare-fun b!4539907 () Bool)

(declare-fun e!2829039 () Bool)

(assert (=> b!4539907 (= e!2829038 e!2829039)))

(declare-fun res!1891916 () Bool)

(assert (=> b!4539907 (=> (not res!1891916) (not e!2829039))))

(assert (=> b!4539907 (= res!1891916 (dynLambda!21212 lambda!175909 (h!56627 (_2!28908 lt!1713093))))))

(declare-fun b!4539908 () Bool)

(assert (=> b!4539908 (= e!2829039 (forall!10343 (t!357834 (_2!28908 lt!1713093)) lambda!175909))))

(assert (= (and d!1403281 (not res!1891915)) b!4539907))

(assert (= (and b!4539907 res!1891916) b!4539908))

(declare-fun b_lambda!157855 () Bool)

(assert (=> (not b_lambda!157855) (not b!4539907)))

(declare-fun m!5306241 () Bool)

(assert (=> b!4539907 m!5306241))

(declare-fun m!5306243 () Bool)

(assert (=> b!4539908 m!5306243))

(assert (=> d!1402485 d!1403281))

(assert (=> d!1402485 d!1402299))

(assert (=> b!4538315 d!1402581))

(assert (=> b!4538315 d!1402583))

(declare-fun tp!1338618 () Bool)

(declare-fun b!4539919 () Bool)

(declare-fun e!2829044 () Bool)

(assert (=> b!4539919 (= e!2829044 (and tp_is_empty!28069 tp_is_empty!28071 tp!1338618))))

(assert (=> b!4538623 (= tp!1338611 e!2829044)))

(assert (= (and b!4538623 ((_ is Cons!50748) (t!357834 (t!357834 newBucket!178)))) b!4539919))

(declare-fun b!4539920 () Bool)

(declare-fun e!2829045 () Bool)

(declare-fun tp!1338619 () Bool)

(assert (=> b!4539920 (= e!2829045 (and tp_is_empty!28069 tp_is_empty!28071 tp!1338619))))

(assert (=> b!4538628 (= tp!1338616 e!2829045)))

(assert (= (and b!4538628 ((_ is Cons!50748) (_2!28908 (h!56628 (toList!4404 lm!1477))))) b!4539920))

(declare-fun b!4539921 () Bool)

(declare-fun e!2829046 () Bool)

(declare-fun tp!1338620 () Bool)

(declare-fun tp!1338621 () Bool)

(assert (=> b!4539921 (= e!2829046 (and tp!1338620 tp!1338621))))

(assert (=> b!4538628 (= tp!1338617 e!2829046)))

(assert (= (and b!4538628 ((_ is Cons!50749) (t!357835 (toList!4404 lm!1477)))) b!4539921))

(declare-fun b_lambda!157857 () Bool)

(assert (= b_lambda!157753 (or b!4538501 b_lambda!157857)))

(declare-fun bs!877915 () Bool)

(declare-fun d!1403283 () Bool)

(assert (= bs!877915 (and d!1403283 b!4538501)))

(assert (=> bs!877915 (= (dynLambda!21212 lambda!175886 (h!56627 (toList!4403 lt!1713499))) (contains!13538 lt!1713493 (_1!28907 (h!56627 (toList!4403 lt!1713499)))))))

(declare-fun m!5306245 () Bool)

(assert (=> bs!877915 m!5306245))

(assert (=> b!4539276 d!1403283))

(declare-fun b_lambda!157859 () Bool)

(assert (= b_lambda!157827 (or b!4538248 b_lambda!157859)))

(declare-fun bs!877916 () Bool)

(declare-fun d!1403285 () Bool)

(assert (= bs!877916 (and d!1403285 b!4538248)))

(assert (=> bs!877916 (= (dynLambda!21212 lambda!175837 (h!56627 (_2!28908 lt!1713093))) (contains!13538 lt!1713258 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> bs!877916 m!5302725))

(assert (=> d!1403151 d!1403285))

(declare-fun b_lambda!157861 () Bool)

(assert (= b_lambda!157775 (or d!1402485 b_lambda!157861)))

(declare-fun bs!877917 () Bool)

(declare-fun d!1403287 () Bool)

(assert (= bs!877917 (and d!1403287 d!1402485)))

(assert (=> bs!877917 (= (dynLambda!21212 lambda!175909 (h!56627 (toList!4403 lt!1713103))) (contains!13538 lt!1713584 (_1!28907 (h!56627 (toList!4403 lt!1713103)))))))

(declare-fun m!5306247 () Bool)

(assert (=> bs!877917 m!5306247))

(assert (=> b!4539361 d!1403287))

(declare-fun b_lambda!157863 () Bool)

(assert (= b_lambda!157703 (or b!4538617 b_lambda!157863)))

(declare-fun bs!877918 () Bool)

(declare-fun d!1403289 () Bool)

(assert (= bs!877918 (and d!1403289 b!4538617)))

(assert (=> bs!877918 (= (dynLambda!21212 lambda!175908 (h!56627 (toList!4403 lt!1713103))) (contains!13538 lt!1713589 (_1!28907 (h!56627 (toList!4403 lt!1713103)))))))

(declare-fun m!5306249 () Bool)

(assert (=> bs!877918 m!5306249))

(assert (=> b!4538699 d!1403289))

(declare-fun b_lambda!157865 () Bool)

(assert (= b_lambda!157845 (or b!4538171 b_lambda!157865)))

(declare-fun bs!877919 () Bool)

(declare-fun d!1403291 () Bool)

(assert (= bs!877919 (and d!1403291 b!4538171)))

(assert (=> bs!877919 (= (dynLambda!21212 lambda!175771 (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477))))) (= (hash!2911 hashF!1107 (_1!28907 (h!56627 (_2!28908 (h!56628 (toList!4404 lm!1477)))))) (_1!28908 (h!56628 (toList!4404 lm!1477)))))))

(declare-fun m!5306251 () Bool)

(assert (=> bs!877919 m!5306251))

(assert (=> b!4539827 d!1403291))

(declare-fun b_lambda!157867 () Bool)

(assert (= b_lambda!157783 (or d!1402303 b_lambda!157867)))

(declare-fun bs!877920 () Bool)

(declare-fun d!1403293 () Bool)

(assert (= bs!877920 (and d!1403293 d!1402303)))

(assert (=> bs!877920 (= (dynLambda!21211 lambda!175857 (h!56628 (toList!4404 lm!1477))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lm!1477)))))))

(assert (=> bs!877920 m!5303529))

(assert (=> b!4539384 d!1403293))

(declare-fun b_lambda!157869 () Bool)

(assert (= b_lambda!157843 (or b!4538171 b_lambda!157869)))

(assert (=> d!1403225 d!1402491))

(declare-fun b_lambda!157871 () Bool)

(assert (= b_lambda!157821 (or b!4538248 b_lambda!157871)))

(declare-fun bs!877921 () Bool)

(declare-fun d!1403295 () Bool)

(assert (= bs!877921 (and d!1403295 b!4538248)))

(assert (=> bs!877921 (= (dynLambda!21212 lambda!175837 (h!56627 (toList!4403 lt!1713264))) (contains!13538 lt!1713258 (_1!28907 (h!56627 (toList!4403 lt!1713264)))))))

(declare-fun m!5306253 () Bool)

(assert (=> bs!877921 m!5306253))

(assert (=> b!4539689 d!1403295))

(declare-fun b_lambda!157873 () Bool)

(assert (= b_lambda!157797 (or d!1402317 b_lambda!157873)))

(declare-fun bs!877922 () Bool)

(declare-fun d!1403297 () Bool)

(assert (= bs!877922 (and d!1403297 d!1402317)))

(assert (=> bs!877922 (= (dynLambda!21212 lambda!175860 (h!56627 newBucket!178)) (= (hash!2911 hashF!1107 (_1!28907 (h!56627 newBucket!178))) hash!344))))

(declare-fun m!5306255 () Bool)

(assert (=> bs!877922 m!5306255))

(assert (=> b!4539485 d!1403297))

(declare-fun b_lambda!157875 () Bool)

(assert (= b_lambda!157727 (or start!450372 b_lambda!157875)))

(assert (=> d!1402663 d!1402489))

(declare-fun b_lambda!157877 () Bool)

(assert (= b_lambda!157721 (or d!1402353 b_lambda!157877)))

(declare-fun bs!877923 () Bool)

(declare-fun d!1403299 () Bool)

(assert (= bs!877923 (and d!1403299 d!1402353)))

(assert (=> bs!877923 (= (dynLambda!21211 lambda!175879 (h!56628 (toList!4404 lt!1713100))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lt!1713100)))))))

(assert (=> bs!877923 m!5304531))

(assert (=> b!4538785 d!1403299))

(declare-fun b_lambda!157879 () Bool)

(assert (= b_lambda!157741 (or d!1402409 b_lambda!157879)))

(declare-fun bs!877924 () Bool)

(declare-fun d!1403301 () Bool)

(assert (= bs!877924 (and d!1403301 d!1402409)))

(assert (=> bs!877924 (= (dynLambda!21212 lambda!175888 (h!56627 (_2!28908 lt!1713093))) (contains!13538 lt!1713488 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun m!5306257 () Bool)

(assert (=> bs!877924 m!5306257))

(assert (=> b!4539109 d!1403301))

(declare-fun b_lambda!157881 () Bool)

(assert (= b_lambda!157751 (or b!4538501 b_lambda!157881)))

(declare-fun bs!877925 () Bool)

(declare-fun d!1403303 () Bool)

(assert (= bs!877925 (and d!1403303 b!4538501)))

(assert (=> bs!877925 (= (dynLambda!21212 lambda!175885 (h!56627 (toList!4403 lt!1713095))) (contains!13538 lt!1713095 (_1!28907 (h!56627 (toList!4403 lt!1713095)))))))

(declare-fun m!5306259 () Bool)

(assert (=> bs!877925 m!5306259))

(assert (=> b!4539274 d!1403303))

(declare-fun b_lambda!157883 () Bool)

(assert (= b_lambda!157777 (or b!4538248 b_lambda!157883)))

(declare-fun bs!877926 () Bool)

(declare-fun d!1403305 () Bool)

(assert (= bs!877926 (and d!1403305 b!4538248)))

(assert (=> bs!877926 (= (dynLambda!21212 lambda!175837 (h!56627 (toList!4403 lt!1713121))) (contains!13538 lt!1713258 (_1!28907 (h!56627 (toList!4403 lt!1713121)))))))

(declare-fun m!5306261 () Bool)

(assert (=> bs!877926 m!5306261))

(assert (=> b!4539363 d!1403305))

(declare-fun b_lambda!157885 () Bool)

(assert (= b_lambda!157707 (or b!4538617 b_lambda!157885)))

(declare-fun bs!877927 () Bool)

(declare-fun d!1403307 () Bool)

(assert (= bs!877927 (and d!1403307 b!4538617)))

(assert (=> bs!877927 (= (dynLambda!21212 lambda!175908 (h!56627 (toList!4403 lt!1713595))) (contains!13538 lt!1713589 (_1!28907 (h!56627 (toList!4403 lt!1713595)))))))

(declare-fun m!5306263 () Bool)

(assert (=> bs!877927 m!5306263))

(assert (=> b!4538712 d!1403307))

(declare-fun b_lambda!157887 () Bool)

(assert (= b_lambda!157765 (or d!1402421 b_lambda!157887)))

(declare-fun bs!877928 () Bool)

(declare-fun d!1403309 () Bool)

(assert (= bs!877928 (and d!1403309 d!1402421)))

(assert (=> bs!877928 (= (dynLambda!21211 lambda!175894 (h!56628 (toList!4404 lm!1477))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lm!1477)))))))

(assert (=> bs!877928 m!5303529))

(assert (=> b!4539349 d!1403309))

(declare-fun b_lambda!157889 () Bool)

(assert (= b_lambda!157733 (or d!1402229 b_lambda!157889)))

(declare-fun bs!877929 () Bool)

(declare-fun d!1403311 () Bool)

(assert (= bs!877929 (and d!1403311 d!1402229)))

(assert (=> bs!877929 (= (dynLambda!21212 lambda!175838 (h!56627 (_2!28908 lt!1713093))) (contains!13538 lt!1713253 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun m!5306265 () Bool)

(assert (=> bs!877929 m!5306265))

(assert (=> b!4539073 d!1403311))

(declare-fun b_lambda!157891 () Bool)

(assert (= b_lambda!157723 (or d!1402455 b_lambda!157891)))

(declare-fun bs!877930 () Bool)

(declare-fun d!1403313 () Bool)

(assert (= bs!877930 (and d!1403313 d!1402455)))

(assert (=> bs!877930 (= (dynLambda!21211 lambda!175900 (h!56628 (toList!4404 lm!1477))) (allKeysSameHash!1052 (_2!28908 (h!56628 (toList!4404 lm!1477))) (_1!28908 (h!56628 (toList!4404 lm!1477))) hashF!1107))))

(assert (=> bs!877930 m!5303531))

(assert (=> b!4538825 d!1403313))

(declare-fun b_lambda!157893 () Bool)

(assert (= b_lambda!157825 (or b!4538248 b_lambda!157893)))

(assert (=> b!4539705 d!1403285))

(declare-fun b_lambda!157895 () Bool)

(assert (= b_lambda!157717 (or b!4538501 b_lambda!157895)))

(declare-fun bs!877931 () Bool)

(declare-fun d!1403315 () Bool)

(assert (= bs!877931 (and d!1403315 b!4538501)))

(assert (=> bs!877931 (= (dynLambda!21212 lambda!175886 (h!56627 (toList!4403 lt!1713095))) (contains!13538 lt!1713493 (_1!28907 (h!56627 (toList!4403 lt!1713095)))))))

(declare-fun m!5306267 () Bool)

(assert (=> bs!877931 m!5306267))

(assert (=> b!4538769 d!1403315))

(declare-fun b_lambda!157897 () Bool)

(assert (= b_lambda!157769 (or d!1402473 b_lambda!157897)))

(declare-fun bs!877932 () Bool)

(declare-fun d!1403317 () Bool)

(assert (= bs!877932 (and d!1403317 d!1402473)))

(assert (=> bs!877932 (= (dynLambda!21211 lambda!175902 (h!56628 (toList!4404 lt!1713100))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lt!1713100)))))))

(assert (=> bs!877932 m!5304531))

(assert (=> b!4539357 d!1403317))

(declare-fun b_lambda!157899 () Bool)

(assert (= b_lambda!157853 (or d!1402345 b_lambda!157899)))

(declare-fun bs!877933 () Bool)

(declare-fun d!1403319 () Bool)

(assert (= bs!877933 (and d!1403319 d!1402345)))

(assert (=> bs!877933 (= (dynLambda!21211 lambda!175867 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093)))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 (+!1602 lt!1713100 lt!1713093))))))))

(assert (=> bs!877933 m!5305905))

(assert (=> b!4539901 d!1403319))

(declare-fun b_lambda!157901 () Bool)

(assert (= b_lambda!157731 (or d!1402289 b_lambda!157901)))

(declare-fun bs!877934 () Bool)

(declare-fun d!1403321 () Bool)

(assert (= bs!877934 (and d!1403321 d!1402289)))

(assert (=> bs!877934 (= (dynLambda!21211 lambda!175853 (h!56628 (toList!4404 lt!1713100))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lt!1713100)))))))

(assert (=> bs!877934 m!5304531))

(assert (=> b!4539071 d!1403321))

(declare-fun b_lambda!157903 () Bool)

(assert (= b_lambda!157757 (or b!4538501 b_lambda!157903)))

(declare-fun bs!877935 () Bool)

(declare-fun d!1403323 () Bool)

(assert (= bs!877935 (and d!1403323 b!4538501)))

(assert (=> bs!877935 (= (dynLambda!21212 lambda!175886 (h!56627 (_2!28908 lt!1713093))) (contains!13538 lt!1713493 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> bs!877935 m!5303267))

(assert (=> d!1402869 d!1403323))

(declare-fun b_lambda!157905 () Bool)

(assert (= b_lambda!157813 (or d!1402275 b_lambda!157905)))

(declare-fun bs!877936 () Bool)

(declare-fun d!1403325 () Bool)

(assert (= bs!877936 (and d!1403325 d!1402275)))

(assert (=> bs!877936 (= (dynLambda!21211 lambda!175846 (h!56628 (toList!4404 lm!1477))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lm!1477)))))))

(assert (=> bs!877936 m!5303529))

(assert (=> b!4539598 d!1403325))

(declare-fun b_lambda!157907 () Bool)

(assert (= b_lambda!157739 (or start!450372 b_lambda!157907)))

(declare-fun bs!877937 () Bool)

(declare-fun d!1403327 () Bool)

(assert (= bs!877937 (and d!1403327 start!450372)))

(assert (=> bs!877937 (= (dynLambda!21211 lambda!175769 (h!56628 (t!357835 (toList!4404 lm!1477)))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))))))

(assert (=> bs!877937 m!5306211))

(assert (=> b!4539103 d!1403327))

(declare-fun b_lambda!157909 () Bool)

(assert (= b_lambda!157855 (or d!1402485 b_lambda!157909)))

(declare-fun bs!877938 () Bool)

(declare-fun d!1403329 () Bool)

(assert (= bs!877938 (and d!1403329 d!1402485)))

(assert (=> bs!877938 (= (dynLambda!21212 lambda!175909 (h!56627 (_2!28908 lt!1713093))) (contains!13538 lt!1713584 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(declare-fun m!5306269 () Bool)

(assert (=> bs!877938 m!5306269))

(assert (=> b!4539907 d!1403329))

(declare-fun b_lambda!157911 () Bool)

(assert (= b_lambda!157817 (or b!4538248 b_lambda!157911)))

(declare-fun bs!877939 () Bool)

(declare-fun d!1403331 () Bool)

(assert (= bs!877939 (and d!1403331 b!4538248)))

(assert (=> bs!877939 (= (dynLambda!21212 lambda!175836 (h!56627 (toList!4403 lt!1713121))) (contains!13538 lt!1713121 (_1!28907 (h!56627 (toList!4403 lt!1713121)))))))

(declare-fun m!5306271 () Bool)

(assert (=> bs!877939 m!5306271))

(assert (=> b!4539666 d!1403331))

(declare-fun b_lambda!157913 () Bool)

(assert (= b_lambda!157771 (or b!4538171 b_lambda!157913)))

(assert (=> d!1402919 d!1402495))

(declare-fun b_lambda!157915 () Bool)

(assert (= b_lambda!157773 (or b!4538171 b_lambda!157915)))

(assert (=> b!4539359 d!1402495))

(declare-fun b_lambda!157917 () Bool)

(assert (= b_lambda!157737 (or d!1402229 b_lambda!157917)))

(declare-fun bs!877940 () Bool)

(declare-fun d!1403333 () Bool)

(assert (= bs!877940 (and d!1403333 d!1402229)))

(assert (=> bs!877940 (= (dynLambda!21212 lambda!175838 (h!56627 (toList!4403 lt!1713121))) (contains!13538 lt!1713253 (_1!28907 (h!56627 (toList!4403 lt!1713121)))))))

(declare-fun m!5306273 () Bool)

(assert (=> bs!877940 m!5306273))

(assert (=> b!4539079 d!1403333))

(declare-fun b_lambda!157919 () Bool)

(assert (= b_lambda!157761 (or b!4538501 b_lambda!157919)))

(assert (=> b!4539322 d!1403323))

(declare-fun b_lambda!157921 () Bool)

(assert (= b_lambda!157749 (or d!1402475 b_lambda!157921)))

(declare-fun bs!877941 () Bool)

(declare-fun d!1403335 () Bool)

(assert (= bs!877941 (and d!1403335 d!1402475)))

(assert (=> bs!877941 (= (dynLambda!21211 lambda!175905 (h!56628 (toList!4404 lt!1713100))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lt!1713100)))))))

(assert (=> bs!877941 m!5304531))

(assert (=> b!4539272 d!1403335))

(declare-fun b_lambda!157923 () Bool)

(assert (= b_lambda!157701 (or b!4538617 b_lambda!157923)))

(declare-fun bs!877942 () Bool)

(declare-fun d!1403337 () Bool)

(assert (= bs!877942 (and d!1403337 b!4538617)))

(assert (=> bs!877942 (= (dynLambda!21212 lambda!175908 (h!56627 (_2!28908 lt!1713093))) (contains!13538 lt!1713589 (_1!28907 (h!56627 (_2!28908 lt!1713093)))))))

(assert (=> bs!877942 m!5303503))

(assert (=> b!4538697 d!1403337))

(declare-fun b_lambda!157925 () Bool)

(assert (= b_lambda!157711 (or d!1402349 b_lambda!157925)))

(declare-fun bs!877943 () Bool)

(declare-fun d!1403339 () Bool)

(assert (= bs!877943 (and d!1403339 d!1402349)))

(assert (=> bs!877943 (= (dynLambda!21211 lambda!175870 (h!56628 (toList!4404 lt!1713102))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lt!1713102)))))))

(assert (=> bs!877943 m!5303623))

(assert (=> b!4538743 d!1403339))

(declare-fun b_lambda!157927 () Bool)

(assert (= b_lambda!157709 (or b!4538617 b_lambda!157927)))

(assert (=> d!1402547 d!1403337))

(declare-fun b_lambda!157929 () Bool)

(assert (= b_lambda!157699 (or d!1402471 b_lambda!157929)))

(declare-fun bs!877944 () Bool)

(declare-fun d!1403341 () Bool)

(assert (= bs!877944 (and d!1403341 d!1402471)))

(assert (=> bs!877944 (= (dynLambda!21211 lambda!175901 (h!56628 (t!357835 (toList!4404 lm!1477)))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (t!357835 (toList!4404 lm!1477))))))))

(assert (=> bs!877944 m!5306211))

(assert (=> b!4538629 d!1403341))

(declare-fun b_lambda!157931 () Bool)

(assert (= b_lambda!157779 (or start!450372 b_lambda!157931)))

(assert (=> d!1402929 d!1402493))

(declare-fun b_lambda!157933 () Bool)

(assert (= b_lambda!157851 (or d!1402253 b_lambda!157933)))

(declare-fun bs!877945 () Bool)

(declare-fun d!1403343 () Bool)

(assert (= bs!877945 (and d!1403343 d!1402253)))

(assert (=> bs!877945 (= (dynLambda!21211 lambda!175843 (h!56628 (toList!4404 lt!1713101))) (noDuplicateKeys!1198 (_2!28908 (h!56628 (toList!4404 lt!1713101)))))))

(assert (=> bs!877945 m!5304463))

(assert (=> b!4539861 d!1403343))

(declare-fun b_lambda!157935 () Bool)

(assert (= b_lambda!157841 (or d!1402409 b_lambda!157935)))

(declare-fun bs!877946 () Bool)

(declare-fun d!1403345 () Bool)

(assert (= bs!877946 (and d!1403345 d!1402409)))

(assert (=> bs!877946 (= (dynLambda!21212 lambda!175888 (h!56627 (toList!4403 lt!1713095))) (contains!13538 lt!1713488 (_1!28907 (h!56627 (toList!4403 lt!1713095)))))))

(declare-fun m!5306275 () Bool)

(assert (=> bs!877946 m!5306275))

(assert (=> b!4539786 d!1403345))

(declare-fun b_lambda!157937 () Bool)

(assert (= b_lambda!157705 (or b!4538617 b_lambda!157937)))

(declare-fun bs!877947 () Bool)

(declare-fun d!1403347 () Bool)

(assert (= bs!877947 (and d!1403347 b!4538617)))

(assert (=> bs!877947 (= (dynLambda!21212 lambda!175907 (h!56627 (toList!4403 lt!1713103))) (contains!13538 lt!1713103 (_1!28907 (h!56627 (toList!4403 lt!1713103)))))))

(declare-fun m!5306277 () Bool)

(assert (=> bs!877947 m!5306277))

(assert (=> b!4538710 d!1403347))

(check-sat (not d!1402801) (not b!4539348) (not d!1402557) (not bm!316533) (not b!4539385) (not b!4538633) (not b!4538768) (not b!4539420) (not b!4538685) (not b!4539707) (not d!1402691) (not bs!877940) (not b!4539318) (not b!4539870) (not b!4539253) (not b!4539297) (not d!1403199) (not b!4539321) (not bs!877921) (not b_lambda!157923) (not d!1402545) (not b_lambda!157715) (not d!1403157) (not bs!877919) (not b!4539616) (not b!4538793) (not d!1402523) (not b_lambda!157867) (not bs!877931) (not d!1402727) (not d!1403231) (not bs!877944) (not b!4539816) (not b!4539573) (not b!4539640) (not b!4539725) (not b!4539801) (not b!4539368) (not b!4539572) (not bm!316580) (not bm!316461) (not b!4538698) (not bs!877945) (not b_lambda!157903) (not d!1403171) (not bm!316559) (not b!4539578) (not b_lambda!157905) (not b!4538707) (not b!4539255) (not b!4538723) (not b_lambda!157767) (not b!4539599) (not d!1403115) (not b!4539132) (not b!4539130) (not b!4539646) (not b!4539654) (not b!4538711) (not b!4539670) (not b!4538836) (not b!4539249) (not b!4538842) (not b_lambda!157691) (not d!1402709) (not bs!877943) (not bs!877933) (not b!4539341) (not b!4539280) (not d!1402643) (not b!4539624) (not d!1402591) (not d!1403263) (not b!4539675) (not b_lambda!157929) (not b!4539179) (not d!1403039) (not b!4539149) (not bm!316502) (not d!1403155) (not b!4539865) (not b!4539669) (not b!4539798) (not b!4538773) (not b!4539074) (not bs!877936) (not b_lambda!157913) (not b!4539250) (not d!1402881) (not d!1403277) (not b!4539371) (not bm!316558) (not bm!316534) (not d!1402743) (not b!4539094) (not bm!316487) (not b!4539065) (not bm!316512) (not b_lambda!157933) (not b!4539813) (not b!4539231) (not bs!877924) (not d!1402915) (not b!4539829) (not b!4539275) (not bs!877939) (not d!1402539) (not b!4539389) (not b!4539885) (not b!4538997) (not b!4538741) (not b!4538953) (not b!4539613) (not d!1402835) (not b!4538821) (not b!4538700) (not b!4538722) (not b!4539622) (not b_lambda!157919) (not bm!316520) (not b!4539419) (not b!4538860) (not b!4539293) (not b!4538762) (not b!4539724) (not bs!877928) (not bm!316526) (not b_lambda!157927) (not b!4539778) (not b!4538854) (not b!4539254) (not d!1402549) (not b!4538721) (not b!4539362) (not b!4539248) (not bm!316586) (not b!4539111) (not d!1403217) (not b!4539182) (not b!4539256) (not b!4539063) (not b!4539334) (not b!4538715) (not b!4538760) (not bm!316508) (not d!1402817) (not b!4539375) (not bs!877918) (not b!4538682) (not bs!877942) (not d!1402987) (not b_lambda!157881) (not b!4539797) (not b!4539320) (not bs!877917) (not b!4538817) (not b!4539067) (not bs!877926) (not b!4538718) (not b_lambda!157863) (not d!1402927) (not b!4539676) (not b!4538965) (not b!4539704) (not d!1402625) (not b_lambda!157865) (not d!1402869) (not b!4538640) (not b!4539623) (not d!1402553) (not d!1402859) (not b!4538822) (not b!4539421) (not b_lambda!157871) (not b!4538828) (not d!1402837) (not bm!316587) (not d!1402595) (not b_lambda!157897) (not d!1402751) (not d!1402607) (not b!4539619) (not b!4538642) (not b!4539643) (not b_lambda!157879) (not b_lambda!157697) (not b!4539180) (not bm!316490) (not b!4539343) (not b!4539181) (not b_lambda!157891) (not b!4539162) (not d!1403151) (not b_lambda!157889) (not b_lambda!157713) (not b!4538855) (not b!4538676) (not b!4539366) (not d!1402533) (not b!4539226) (not d!1403145) (not d!1402979) (not bs!877932) (not b!4539821) (not bm!316579) (not bm!316569) (not d!1402907) (not b!4539585) (not b!4539358) (not b!4539703) (not b_lambda!157895) (not b!4538677) (not b!4539292) (not d!1403121) (not b!4539229) (not b!4538630) (not d!1402621) (not d!1402819) (not b!4539868) (not b!4539080) (not b!4539577) (not b!4539715) (not b_lambda!157887) (not d!1402951) (not b!4539674) (not bm!316514) (not b!4539425) (not b!4539678) (not b!4539832) (not bm!316459) (not b!4538969) (not d!1403077) (not b!4539233) (not bm!316455) (not b!4538862) (not b!4538856) (not b!4539486) (not b!4539298) (not bm!316525) (not b!4538790) (not b!4539690) (not b_lambda!157829) (not b!4538701) (not b!4539919) (not b!4539667) (not b!4539426) (not d!1402547) (not b!4539709) (not b!4539734) (not b!4539148) (not d!1403093) (not bm!316550) (not b!4538998) (not bs!877930) (not d!1402669) (not d!1403111) (not d!1402601) (not d!1403189) (not b!4538669) (not b!4539429) (not b!4538843) (not bm!316530) (not b_lambda!157689) (not b!4539708) (not d!1402677) (not bm!316488) (not b!4538770) (not d!1402899) (not b!4539490) (not b!4539076) (not b!4539677) (not b!4539427) (not b!4539817) (not b!4538783) (not d!1403207) (not b!4538999) (not b!4539246) (not bm!316551) (not b!4538819) (not b!4539364) (not b!4539352) (not b!4539731) (not b_lambda!157885) (not b!4539002) (not b!4539617) (not b!4539120) (not b_lambda!157873) (not b!4539107) (not bm!316519) (not b!4539718) (not b!4539636) (not b!4539160) (not b!4539673) (not d!1403135) (not bm!316548) (not bm!316591) (not b!4538664) (not b!4539900) (not b_lambda!157869) (not bm!316578) (not b!4538708) (not b!4538702) (not d!1402905) (not bm!316511) (not b!4539170) (not bs!877920) (not b!4539662) (not b!4539902) (not b_lambda!157695) (not bs!877915) (not b!4539863) (not bm!316589) (not b!4539809) (not d!1402935) (not b!4539727) (not b!4539642) (not b!4539792) (not bm!316546) (not b!4538716) (not b!4538656) (not d!1402903) (not b!4539304) (not d!1402887) (not bm!316585) (not b!4538632) (not bs!877938) (not bs!877922) (not b!4539370) (not b!4539089) (not b!4538755) (not d!1402843) (not b_lambda!157931) (not d!1403273) (not b!4539377) (not b!4539590) (not b!4539302) (not b!4539828) (not b!4539606) (not b!4539086) (not d!1403105) (not d!1402577) (not b!4538672) (not b_lambda!157901) (not b!4539790) (not bm!316576) (not b!4539299) (not b_lambda!157693) (not b!4539168) (not d!1402521) (not d!1403149) (not b!4539588) (not d!1402827) (not bm!316460) (not d!1402635) (not b!4539391) (not bm!316521) (not b!4539716) (not b!4538703) (not bm!316518) (not b!4538955) (not b!4538709) (not b!4539101) (not b!4539345) (not b!4539735) (not b!4539234) (not b!4539713) (not bs!877937) (not b!4539803) (not bm!316549) (not d!1402981) (not b!4539629) (not bm!316557) (not b!4539921) (not b!4539649) (not bs!877946) (not b!4538634) (not b!4539660) (not d!1403109) (not b_lambda!157917) (not b!4539005) (not d!1403163) (not b!4539152) (not bm!316505) (not bm!316577) (not b!4539652) (not bm!316566) (not d!1402983) (not b!4538650) tp_is_empty!28071 (not bm!316575) (not b!4538833) (not d!1402705) (not bm!316462) (not d!1402913) (not b!4538758) (not d!1403117) (not b!4539633) (not d!1403101) (not b!4538706) (not d!1402933) (not b!4538966) (not b!4539374) (not b!4539360) (not d!1402867) (not d!1403107) (not b!4539869) (not b!4538680) (not b!4539647) (not b!4538968) (not d!1403215) (not b!4538724) (not bs!877925) (not b!4539658) (not b!4539765) (not bm!316571) (not b!4538859) (not b!4539110) tp_is_empty!28069 (not b!4539143) (not b!4539630) (not b!4539104) (not d!1402611) (not b!4538684) (not b!4539281) (not d!1403261) (not bm!316486) (not d!1402497) (not d!1402737) (not d!1402517) (not b!4538823) (not d!1402587) (not bm!316456) (not b!4539815) (not b_lambda!157921) (not b!4539680) (not b!4538671) (not b!4539867) (not d!1402609) (not b!4538786) (not bs!877947) (not b!4539722) (not d!1403085) (not b!4539319) (not bm!316570) (not b!4539789) (not b!4539628) (not b!4539350) (not d!1402959) (not bs!877934) (not b_lambda!157937) (not d!1402957) (not b_lambda!157815) (not b_lambda!157861) (not b!4539303) (not d!1402769) (not b!4539641) (not b_lambda!157909) (not b_lambda!157883) (not b!4538967) (not b!4539767) (not b!4538717) (not d!1402833) (not d!1403201) (not b!4539123) (not b!4539428) (not b_lambda!157857) (not b!4539147) (not d!1402901) (not d!1402771) (not b!4539830) (not b!4539294) (not d!1403275) (not d!1402531) (not bm!316552) (not bm!316556) (not b!4539791) (not b!4538692) (not b!4539723) (not d!1402823) (not b!4539795) (not b!4539278) (not b!4539241) (not b!4539018) (not b!4539920) (not b!4538691) (not d!1402527) (not d!1402767) (not d!1403191) (not b!4538744) (not b!4539369) (not b!4539355) (not bs!877923) (not d!1402633) (not bm!316590) (not b_lambda!157925) (not b!4539655) (not d!1402589) (not b!4539584) (not b!4539831) (not d!1403235) (not bm!316532) (not b!4538678) (not bm!316457) (not d!1402585) (not bm!316581) (not b!4539000) (not b!4539736) (not b!4538826) (not b!4538830) (not b!4538954) (not b!4538861) (not b!4539232) (not bm!316489) (not d!1402831) (not b!4538824) (not b!4538730) (not d!1402745) (not b_lambda!157911) (not b!4539346) (not b!4538813) (not b!4539714) (not b!4539814) (not b!4538818) (not d!1403271) (not b_lambda!157935) (not d!1403123) (not b!4539787) (not b!4538663) (not b!4539488) (not b!4539072) (not b_lambda!157875) (not b!4539706) (not bm!316458) (not bs!877941) (not b!4538961) (not b!4538816) (not b!4539163) (not b!4539783) (not b_lambda!157735) (not b!4539305) (not b!4538670) (not b!4538665) (not b!4539423) (not bs!877916) (not b!4539090) (not b!4539144) (not b!4539091) (not b!4539730) (not b!4539247) (not b_lambda!157915) (not b!4538648) (not b!4538683) (not b!4539679) (not d!1402605) (not b!4539244) (not b!4539279) (not b!4538794) (not b!4539314) (not bm!316463) (not b!4539313) (not d!1402759) (not b_lambda!157859) (not b!4539323) (not b!4539860) (not bm!316510) (not b!4539806) (not b!4539766) (not b!4539017) (not d!1402529) (not bm!316513) (not b!4539609) (not bm!316485) (not b!4539712) (not b_lambda!157907) (not b!4538958) (not d!1402761) (not b!4539764) (not d!1402753) (not b!4539332) (not b!4538713) (not b!4539908) (not bm!316547) (not b!4539277) (not b!4539871) (not d!1402567) (not b!4539576) (not b!4539802) (not b!4539122) (not b!4539589) (not b!4539720) (not bm!316555) (not d!1402645) (not b!4539315) (not b!4538792) (not b!4539862) (not bs!877927) (not b!4539785) (not b!4539245) (not b_lambda!157893) (not b!4539113) (not b!4538674) (not b!4539781) (not b!4539618) (not d!1402675) (not d!1402713) (not b!4539668) (not bs!877929) (not b!4538814) (not bm!316509) (not d!1402985) (not b!4538675) (not b!4539166) (not d!1402581) (not b_lambda!157877) (not b!4539376) (not d!1402667) (not b!4539212) (not bs!877935) (not d!1402875) (not b!4538853) (not b_lambda!157899) (not d!1403211) (not b!4539796) (not b!4539154) (not b!4539128) (not b!4539273) (not b!4539644) (not b!4539625))
(check-sat)
