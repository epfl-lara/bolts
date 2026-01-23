; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!460700 () Bool)

(assert start!460700)

(declare-fun res!1928842 () Bool)

(declare-fun e!2874456 () Bool)

(assert (=> start!460700 (=> (not res!1928842) (not e!2874456))))

(declare-datatypes ((K!12565 0))(
  ( (K!12566 (val!18323 Int)) )
))
(declare-datatypes ((V!12811 0))(
  ( (V!12812 (val!18324 Int)) )
))
(declare-datatypes ((tuple2!51914 0))(
  ( (tuple2!51915 (_1!29251 K!12565) (_2!29251 V!12811)) )
))
(declare-datatypes ((List!51321 0))(
  ( (Nil!51197) (Cons!51197 (h!57185 tuple2!51914) (t!358315 List!51321)) )
))
(declare-datatypes ((tuple2!51916 0))(
  ( (tuple2!51917 (_1!29252 (_ BitVec 64)) (_2!29252 List!51321)) )
))
(declare-datatypes ((List!51322 0))(
  ( (Nil!51198) (Cons!51198 (h!57186 tuple2!51916) (t!358316 List!51322)) )
))
(declare-datatypes ((ListLongMap!3379 0))(
  ( (ListLongMap!3380 (toList!4747 List!51322)) )
))
(declare-fun lm!1477 () ListLongMap!3379)

(declare-fun lambda!187932 () Int)

(declare-fun forall!10682 (List!51322 Int) Bool)

(assert (=> start!460700 (= res!1928842 (forall!10682 (toList!4747 lm!1477) lambda!187932))))

(assert (=> start!460700 e!2874456))

(assert (=> start!460700 true))

(declare-fun e!2874453 () Bool)

(declare-fun inv!66749 (ListLongMap!3379) Bool)

(assert (=> start!460700 (and (inv!66749 lm!1477) e!2874453)))

(declare-fun tp_is_empty!28757 () Bool)

(assert (=> start!460700 tp_is_empty!28757))

(declare-fun e!2874454 () Bool)

(assert (=> start!460700 e!2874454))

(declare-fun b!4608147 () Bool)

(declare-fun res!1928848 () Bool)

(declare-fun e!2874446 () Bool)

(assert (=> b!4608147 (=> res!1928848 e!2874446)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4608147 (= res!1928848 (or ((_ is Nil!51198) (toList!4747 lm!1477)) (= (_1!29252 (h!57186 (toList!4747 lm!1477))) hash!344)))))

(declare-fun b!4608148 () Bool)

(declare-datatypes ((Unit!109165 0))(
  ( (Unit!109166) )
))
(declare-fun e!2874448 () Unit!109165)

(declare-fun Unit!109167 () Unit!109165)

(assert (=> b!4608148 (= e!2874448 Unit!109167)))

(declare-fun b!4608149 () Bool)

(declare-fun res!1928841 () Bool)

(declare-fun e!2874451 () Bool)

(assert (=> b!4608149 (=> res!1928841 e!2874451)))

(declare-fun lt!1764936 () ListLongMap!3379)

(declare-datatypes ((Hashable!5765 0))(
  ( (HashableExt!5764 (__x!31468 Int)) )
))
(declare-fun hashF!1107 () Hashable!5765)

(declare-fun allKeysSameHashInMap!1477 (ListLongMap!3379 Hashable!5765) Bool)

(assert (=> b!4608149 (= res!1928841 (not (allKeysSameHashInMap!1477 lt!1764936 hashF!1107)))))

(declare-fun b!4608150 () Bool)

(declare-fun res!1928850 () Bool)

(declare-fun e!2874447 () Bool)

(assert (=> b!4608150 (=> (not res!1928850) (not e!2874447))))

(declare-fun newBucket!178 () List!51321)

(declare-fun allKeysSameHash!1222 (List!51321 (_ BitVec 64) Hashable!5765) Bool)

(assert (=> b!4608150 (= res!1928850 (allKeysSameHash!1222 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4608151 () Bool)

(declare-fun res!1928845 () Bool)

(assert (=> b!4608151 (=> res!1928845 e!2874446)))

(declare-fun noDuplicateKeys!1366 (List!51321) Bool)

(assert (=> b!4608151 (= res!1928845 (not (noDuplicateKeys!1366 newBucket!178)))))

(declare-fun b!4608152 () Bool)

(declare-fun tp_is_empty!28759 () Bool)

(declare-fun tp!1340976 () Bool)

(assert (=> b!4608152 (= e!2874454 (and tp_is_empty!28757 tp_is_empty!28759 tp!1340976))))

(declare-fun b!4608153 () Bool)

(declare-fun res!1928849 () Bool)

(assert (=> b!4608153 (=> (not res!1928849) (not e!2874456))))

(assert (=> b!4608153 (= res!1928849 (allKeysSameHashInMap!1477 lm!1477 hashF!1107))))

(declare-fun b!4608154 () Bool)

(declare-fun tp!1340977 () Bool)

(assert (=> b!4608154 (= e!2874453 tp!1340977)))

(declare-fun b!4608155 () Bool)

(declare-fun res!1928835 () Bool)

(assert (=> b!4608155 (=> (not res!1928835) (not e!2874456))))

(declare-fun key!3287 () K!12565)

(declare-datatypes ((ListMap!4009 0))(
  ( (ListMap!4010 (toList!4748 List!51321)) )
))
(declare-fun contains!14200 (ListMap!4009 K!12565) Bool)

(declare-fun extractMap!1426 (List!51322) ListMap!4009)

(assert (=> b!4608155 (= res!1928835 (contains!14200 (extractMap!1426 (toList!4747 lm!1477)) key!3287))))

(declare-fun b!4608156 () Bool)

(assert (=> b!4608156 (= e!2874451 true)))

(declare-fun lt!1764924 () List!51321)

(declare-fun lt!1764922 () List!51321)

(declare-fun removePairForKey!991 (List!51321 K!12565) List!51321)

(assert (=> b!4608156 (= lt!1764924 (removePairForKey!991 lt!1764922 key!3287))))

(declare-fun lt!1764928 () Unit!109165)

(declare-fun lt!1764935 () tuple2!51916)

(declare-fun forallContained!2927 (List!51322 Int tuple2!51916) Unit!109165)

(assert (=> b!4608156 (= lt!1764928 (forallContained!2927 (toList!4747 lt!1764936) lambda!187932 lt!1764935))))

(declare-fun contains!14201 (List!51322 tuple2!51916) Bool)

(assert (=> b!4608156 (contains!14201 (toList!4747 lt!1764936) lt!1764935)))

(assert (=> b!4608156 (= lt!1764935 (tuple2!51917 hash!344 lt!1764922))))

(declare-fun lt!1764923 () Unit!109165)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!876 (List!51322 (_ BitVec 64) List!51321) Unit!109165)

(assert (=> b!4608156 (= lt!1764923 (lemmaGetValueByKeyImpliesContainsTuple!876 (toList!4747 lt!1764936) hash!344 lt!1764922))))

(declare-fun lt!1764932 () (_ BitVec 64))

(declare-fun contains!14202 (ListLongMap!3379 (_ BitVec 64)) Bool)

(assert (=> b!4608156 (contains!14202 lt!1764936 lt!1764932)))

(declare-fun lt!1764937 () Unit!109165)

(declare-fun lemmaInGenMapThenLongMapContainsHash!440 (ListLongMap!3379 K!12565 Hashable!5765) Unit!109165)

(assert (=> b!4608156 (= lt!1764937 (lemmaInGenMapThenLongMapContainsHash!440 lt!1764936 key!3287 hashF!1107))))

(declare-fun b!4608157 () Bool)

(declare-fun Unit!109168 () Unit!109165)

(assert (=> b!4608157 (= e!2874448 Unit!109168)))

(declare-fun lt!1764929 () Unit!109165)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!330 (ListLongMap!3379 K!12565 Hashable!5765) Unit!109165)

(assert (=> b!4608157 (= lt!1764929 (lemmaNotInItsHashBucketThenNotInMap!330 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4608157 false))

(declare-fun b!4608158 () Bool)

(declare-fun e!2874449 () Bool)

(assert (=> b!4608158 (= e!2874449 e!2874451)))

(declare-fun res!1928840 () Bool)

(assert (=> b!4608158 (=> res!1928840 e!2874451)))

(assert (=> b!4608158 (= res!1928840 (not (contains!14200 (extractMap!1426 (t!358316 (toList!4747 lm!1477))) key!3287)))))

(assert (=> b!4608158 (contains!14200 (extractMap!1426 (toList!4747 lt!1764936)) key!3287)))

(declare-fun lt!1764920 () Unit!109165)

(declare-fun lemmaListContainsThenExtractedMapContains!278 (ListLongMap!3379 K!12565 Hashable!5765) Unit!109165)

(assert (=> b!4608158 (= lt!1764920 (lemmaListContainsThenExtractedMapContains!278 lt!1764936 key!3287 hashF!1107))))

(declare-fun b!4608159 () Bool)

(declare-fun e!2874450 () Bool)

(assert (=> b!4608159 (= e!2874450 e!2874449)))

(declare-fun res!1928839 () Bool)

(assert (=> b!4608159 (=> res!1928839 e!2874449)))

(declare-fun containsKeyBiggerList!306 (List!51322 K!12565) Bool)

(assert (=> b!4608159 (= res!1928839 (not (containsKeyBiggerList!306 (t!358316 (toList!4747 lm!1477)) key!3287)))))

(assert (=> b!4608159 (containsKeyBiggerList!306 (toList!4747 lt!1764936) key!3287)))

(declare-fun lt!1764921 () Unit!109165)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!176 (ListLongMap!3379 K!12565 Hashable!5765) Unit!109165)

(assert (=> b!4608159 (= lt!1764921 (lemmaInLongMapThenContainsKeyBiggerList!176 lt!1764936 key!3287 hashF!1107))))

(declare-fun b!4608160 () Bool)

(declare-fun res!1928838 () Bool)

(declare-fun e!2874452 () Bool)

(assert (=> b!4608160 (=> res!1928838 e!2874452)))

(declare-fun lt!1764934 () tuple2!51916)

(assert (=> b!4608160 (= res!1928838 (not (contains!14201 (t!358316 (toList!4747 lm!1477)) lt!1764934)))))

(declare-fun b!4608161 () Bool)

(declare-fun e!2874455 () Bool)

(assert (=> b!4608161 (= e!2874446 e!2874455)))

(declare-fun res!1928846 () Bool)

(assert (=> b!4608161 (=> res!1928846 e!2874455)))

(assert (=> b!4608161 (= res!1928846 (not (contains!14202 lt!1764936 hash!344)))))

(declare-fun tail!8021 (ListLongMap!3379) ListLongMap!3379)

(assert (=> b!4608161 (= lt!1764936 (tail!8021 lm!1477))))

(declare-fun b!4608162 () Bool)

(assert (=> b!4608162 (= e!2874456 e!2874447)))

(declare-fun res!1928847 () Bool)

(assert (=> b!4608162 (=> (not res!1928847) (not e!2874447))))

(assert (=> b!4608162 (= res!1928847 (= lt!1764932 hash!344))))

(declare-fun hash!3299 (Hashable!5765 K!12565) (_ BitVec 64))

(assert (=> b!4608162 (= lt!1764932 (hash!3299 hashF!1107 key!3287))))

(declare-fun b!4608163 () Bool)

(assert (=> b!4608163 (= e!2874455 e!2874452)))

(declare-fun res!1928843 () Bool)

(assert (=> b!4608163 (=> res!1928843 e!2874452)))

(declare-fun lt!1764930 () List!51321)

(assert (=> b!4608163 (= res!1928843 (not (= lt!1764922 lt!1764930)))))

(declare-fun apply!12103 (ListLongMap!3379 (_ BitVec 64)) List!51321)

(assert (=> b!4608163 (= lt!1764922 (apply!12103 lt!1764936 hash!344))))

(declare-fun b!4608164 () Bool)

(assert (=> b!4608164 (= e!2874452 e!2874450)))

(declare-fun res!1928844 () Bool)

(assert (=> b!4608164 (=> res!1928844 e!2874450)))

(declare-fun lt!1764926 () Bool)

(assert (=> b!4608164 (= res!1928844 lt!1764926)))

(declare-fun lt!1764931 () Unit!109165)

(assert (=> b!4608164 (= lt!1764931 e!2874448)))

(declare-fun c!789356 () Bool)

(assert (=> b!4608164 (= c!789356 lt!1764926)))

(declare-fun containsKey!2248 (List!51321 K!12565) Bool)

(assert (=> b!4608164 (= lt!1764926 (not (containsKey!2248 lt!1764930 key!3287)))))

(declare-fun b!4608165 () Bool)

(assert (=> b!4608165 (= e!2874447 (not e!2874446))))

(declare-fun res!1928836 () Bool)

(assert (=> b!4608165 (=> res!1928836 e!2874446)))

(assert (=> b!4608165 (= res!1928836 (not (= newBucket!178 (removePairForKey!991 lt!1764930 key!3287))))))

(declare-fun lt!1764925 () Unit!109165)

(assert (=> b!4608165 (= lt!1764925 (forallContained!2927 (toList!4747 lm!1477) lambda!187932 lt!1764934))))

(assert (=> b!4608165 (contains!14201 (toList!4747 lm!1477) lt!1764934)))

(assert (=> b!4608165 (= lt!1764934 (tuple2!51917 hash!344 lt!1764930))))

(declare-fun lt!1764927 () Unit!109165)

(assert (=> b!4608165 (= lt!1764927 (lemmaGetValueByKeyImpliesContainsTuple!876 (toList!4747 lm!1477) hash!344 lt!1764930))))

(assert (=> b!4608165 (= lt!1764930 (apply!12103 lm!1477 hash!344))))

(assert (=> b!4608165 (contains!14202 lm!1477 lt!1764932)))

(declare-fun lt!1764933 () Unit!109165)

(assert (=> b!4608165 (= lt!1764933 (lemmaInGenMapThenLongMapContainsHash!440 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4608166 () Bool)

(declare-fun res!1928837 () Bool)

(assert (=> b!4608166 (=> res!1928837 e!2874451)))

(assert (=> b!4608166 (= res!1928837 (not (forall!10682 (toList!4747 lt!1764936) lambda!187932)))))

(assert (= (and start!460700 res!1928842) b!4608153))

(assert (= (and b!4608153 res!1928849) b!4608155))

(assert (= (and b!4608155 res!1928835) b!4608162))

(assert (= (and b!4608162 res!1928847) b!4608150))

(assert (= (and b!4608150 res!1928850) b!4608165))

(assert (= (and b!4608165 (not res!1928836)) b!4608151))

(assert (= (and b!4608151 (not res!1928845)) b!4608147))

(assert (= (and b!4608147 (not res!1928848)) b!4608161))

(assert (= (and b!4608161 (not res!1928846)) b!4608163))

(assert (= (and b!4608163 (not res!1928843)) b!4608160))

(assert (= (and b!4608160 (not res!1928838)) b!4608164))

(assert (= (and b!4608164 c!789356) b!4608157))

(assert (= (and b!4608164 (not c!789356)) b!4608148))

(assert (= (and b!4608164 (not res!1928844)) b!4608159))

(assert (= (and b!4608159 (not res!1928839)) b!4608158))

(assert (= (and b!4608158 (not res!1928840)) b!4608166))

(assert (= (and b!4608166 (not res!1928837)) b!4608149))

(assert (= (and b!4608149 (not res!1928841)) b!4608156))

(assert (= start!460700 b!4608154))

(assert (= (and start!460700 ((_ is Cons!51197) newBucket!178)) b!4608152))

(declare-fun m!5438263 () Bool)

(assert (=> b!4608163 m!5438263))

(declare-fun m!5438265 () Bool)

(assert (=> b!4608158 m!5438265))

(declare-fun m!5438267 () Bool)

(assert (=> b!4608158 m!5438267))

(declare-fun m!5438269 () Bool)

(assert (=> b!4608158 m!5438269))

(declare-fun m!5438271 () Bool)

(assert (=> b!4608158 m!5438271))

(assert (=> b!4608158 m!5438269))

(assert (=> b!4608158 m!5438267))

(declare-fun m!5438273 () Bool)

(assert (=> b!4608158 m!5438273))

(declare-fun m!5438275 () Bool)

(assert (=> b!4608160 m!5438275))

(declare-fun m!5438277 () Bool)

(assert (=> b!4608156 m!5438277))

(declare-fun m!5438279 () Bool)

(assert (=> b!4608156 m!5438279))

(declare-fun m!5438281 () Bool)

(assert (=> b!4608156 m!5438281))

(declare-fun m!5438283 () Bool)

(assert (=> b!4608156 m!5438283))

(declare-fun m!5438285 () Bool)

(assert (=> b!4608156 m!5438285))

(declare-fun m!5438287 () Bool)

(assert (=> b!4608156 m!5438287))

(declare-fun m!5438289 () Bool)

(assert (=> b!4608153 m!5438289))

(declare-fun m!5438291 () Bool)

(assert (=> b!4608150 m!5438291))

(declare-fun m!5438293 () Bool)

(assert (=> b!4608155 m!5438293))

(assert (=> b!4608155 m!5438293))

(declare-fun m!5438295 () Bool)

(assert (=> b!4608155 m!5438295))

(declare-fun m!5438297 () Bool)

(assert (=> b!4608159 m!5438297))

(declare-fun m!5438299 () Bool)

(assert (=> b!4608159 m!5438299))

(declare-fun m!5438301 () Bool)

(assert (=> b!4608159 m!5438301))

(declare-fun m!5438303 () Bool)

(assert (=> start!460700 m!5438303))

(declare-fun m!5438305 () Bool)

(assert (=> start!460700 m!5438305))

(declare-fun m!5438307 () Bool)

(assert (=> b!4608157 m!5438307))

(declare-fun m!5438309 () Bool)

(assert (=> b!4608151 m!5438309))

(declare-fun m!5438311 () Bool)

(assert (=> b!4608149 m!5438311))

(declare-fun m!5438313 () Bool)

(assert (=> b!4608166 m!5438313))

(declare-fun m!5438315 () Bool)

(assert (=> b!4608164 m!5438315))

(declare-fun m!5438317 () Bool)

(assert (=> b!4608165 m!5438317))

(declare-fun m!5438319 () Bool)

(assert (=> b!4608165 m!5438319))

(declare-fun m!5438321 () Bool)

(assert (=> b!4608165 m!5438321))

(declare-fun m!5438323 () Bool)

(assert (=> b!4608165 m!5438323))

(declare-fun m!5438325 () Bool)

(assert (=> b!4608165 m!5438325))

(declare-fun m!5438327 () Bool)

(assert (=> b!4608165 m!5438327))

(declare-fun m!5438329 () Bool)

(assert (=> b!4608165 m!5438329))

(declare-fun m!5438331 () Bool)

(assert (=> b!4608162 m!5438331))

(declare-fun m!5438333 () Bool)

(assert (=> b!4608161 m!5438333))

(declare-fun m!5438335 () Bool)

(assert (=> b!4608161 m!5438335))

(check-sat (not b!4608150) (not start!460700) (not b!4608159) (not b!4608154) tp_is_empty!28757 (not b!4608164) (not b!4608156) (not b!4608153) (not b!4608162) (not b!4608158) (not b!4608160) (not b!4608165) (not b!4608149) (not b!4608163) (not b!4608161) (not b!4608166) (not b!4608155) (not b!4608157) (not b!4608151) tp_is_empty!28759 (not b!4608152))
(check-sat)
