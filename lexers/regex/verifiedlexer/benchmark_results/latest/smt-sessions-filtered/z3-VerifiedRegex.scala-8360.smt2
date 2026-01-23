; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!435012 () Bool)

(assert start!435012)

(declare-fun b!4443913 () Bool)

(declare-fun res!1840493 () Bool)

(declare-fun e!2766938 () Bool)

(assert (=> b!4443913 (=> (not res!1840493) (not e!2766938))))

(declare-datatypes ((K!11205 0))(
  ( (K!11206 (val!17235 Int)) )
))
(declare-fun key!3717 () K!11205)

(declare-datatypes ((Hashable!5247 0))(
  ( (HashableExt!5246 (__x!30950 Int)) )
))
(declare-fun hashF!1220 () Hashable!5247)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2315 (Hashable!5247 K!11205) (_ BitVec 64))

(assert (=> b!4443913 (= res!1840493 (= (hash!2315 hashF!1220 key!3717) hash!366))))

(declare-fun b!4443914 () Bool)

(declare-datatypes ((Unit!84144 0))(
  ( (Unit!84145) )
))
(declare-fun e!2766939 () Unit!84144)

(declare-fun Unit!84146 () Unit!84144)

(assert (=> b!4443914 (= e!2766939 Unit!84146)))

(declare-fun lt!1638454 () Unit!84144)

(declare-datatypes ((V!11451 0))(
  ( (V!11452 (val!17236 Int)) )
))
(declare-datatypes ((tuple2!49790 0))(
  ( (tuple2!49791 (_1!28189 K!11205) (_2!28189 V!11451)) )
))
(declare-datatypes ((List!49960 0))(
  ( (Nil!49836) (Cons!49836 (h!55571 tuple2!49790) (t!356902 List!49960)) )
))
(declare-datatypes ((tuple2!49792 0))(
  ( (tuple2!49793 (_1!28190 (_ BitVec 64)) (_2!28190 List!49960)) )
))
(declare-datatypes ((List!49961 0))(
  ( (Nil!49837) (Cons!49837 (h!55572 tuple2!49792) (t!356903 List!49961)) )
))
(declare-datatypes ((ListLongMap!2343 0))(
  ( (ListLongMap!2344 (toList!3693 List!49961)) )
))
(declare-fun lm!1616 () ListLongMap!2343)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!90 (ListLongMap!2343 K!11205 Hashable!5247) Unit!84144)

(assert (=> b!4443914 (= lt!1638454 (lemmaExtractTailMapContainsThenExtractMapDoes!90 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4443914 false))

(declare-fun e!2766935 () Bool)

(declare-fun tp!1334368 () Bool)

(declare-fun b!4443915 () Bool)

(declare-fun tp_is_empty!26659 () Bool)

(declare-fun tp_is_empty!26657 () Bool)

(assert (=> b!4443915 (= e!2766935 (and tp_is_empty!26659 tp_is_empty!26657 tp!1334368))))

(declare-fun b!4443916 () Bool)

(declare-fun e!2766934 () Bool)

(declare-fun contains!12414 (ListLongMap!2343 (_ BitVec 64)) Bool)

(assert (=> b!4443916 (= e!2766934 (contains!12414 lm!1616 (_1!28190 (h!55572 (toList!3693 lm!1616)))))))

(declare-fun e!2766941 () Bool)

(declare-fun newValue!93 () V!11451)

(declare-fun b!4443917 () Bool)

(declare-fun newBucket!194 () List!49960)

(declare-fun lt!1638447 () Bool)

(assert (=> b!4443917 (= e!2766941 (and (not lt!1638447) (= newBucket!194 (Cons!49836 (tuple2!49791 key!3717 newValue!93) Nil!49836))))))

(declare-fun b!4443918 () Bool)

(declare-fun e!2766942 () Bool)

(declare-fun e!2766940 () Bool)

(assert (=> b!4443918 (= e!2766942 e!2766940)))

(declare-fun res!1840502 () Bool)

(assert (=> b!4443918 (=> (not res!1840502) (not e!2766940))))

(assert (=> b!4443918 (= res!1840502 e!2766941)))

(declare-fun res!1840504 () Bool)

(assert (=> b!4443918 (=> res!1840504 e!2766941)))

(declare-fun e!2766933 () Bool)

(assert (=> b!4443918 (= res!1840504 e!2766933)))

(declare-fun res!1840503 () Bool)

(assert (=> b!4443918 (=> (not res!1840503) (not e!2766933))))

(assert (=> b!4443918 (= res!1840503 lt!1638447)))

(assert (=> b!4443918 (= lt!1638447 (contains!12414 lm!1616 hash!366))))

(declare-fun b!4443919 () Bool)

(declare-fun res!1840501 () Bool)

(assert (=> b!4443919 (=> res!1840501 e!2766934)))

(declare-fun lambda!157844 () Int)

(declare-fun forall!9732 (List!49961 Int) Bool)

(assert (=> b!4443919 (= res!1840501 (not (forall!9732 (toList!3693 lm!1616) lambda!157844)))))

(declare-fun b!4443920 () Bool)

(declare-fun e!2766937 () Bool)

(declare-fun tp!1334367 () Bool)

(assert (=> b!4443920 (= e!2766937 tp!1334367)))

(declare-fun b!4443921 () Bool)

(declare-fun Unit!84147 () Unit!84144)

(assert (=> b!4443921 (= e!2766939 Unit!84147)))

(declare-fun res!1840500 () Bool)

(assert (=> start!435012 (=> (not res!1840500) (not e!2766938))))

(assert (=> start!435012 (= res!1840500 (forall!9732 (toList!3693 lm!1616) lambda!157844))))

(assert (=> start!435012 e!2766938))

(assert (=> start!435012 tp_is_empty!26657))

(assert (=> start!435012 tp_is_empty!26659))

(assert (=> start!435012 e!2766935))

(declare-fun inv!65391 (ListLongMap!2343) Bool)

(assert (=> start!435012 (and (inv!65391 lm!1616) e!2766937)))

(assert (=> start!435012 true))

(declare-fun b!4443922 () Bool)

(declare-fun res!1840499 () Bool)

(declare-fun e!2766936 () Bool)

(assert (=> b!4443922 (=> res!1840499 e!2766936)))

(get-info :version)

(assert (=> b!4443922 (= res!1840499 (or (and ((_ is Cons!49837) (toList!3693 lm!1616)) (= (_1!28190 (h!55572 (toList!3693 lm!1616))) hash!366)) (not ((_ is Cons!49837) (toList!3693 lm!1616))) (= (_1!28190 (h!55572 (toList!3693 lm!1616))) hash!366)))))

(declare-fun b!4443923 () Bool)

(assert (=> b!4443923 (= e!2766940 (not e!2766936))))

(declare-fun res!1840505 () Bool)

(assert (=> b!4443923 (=> res!1840505 e!2766936)))

(declare-fun lt!1638445 () ListLongMap!2343)

(assert (=> b!4443923 (= res!1840505 (not (forall!9732 (toList!3693 lt!1638445) lambda!157844)))))

(assert (=> b!4443923 (forall!9732 (toList!3693 lt!1638445) lambda!157844)))

(declare-fun lt!1638450 () tuple2!49792)

(declare-fun +!1243 (ListLongMap!2343 tuple2!49792) ListLongMap!2343)

(assert (=> b!4443923 (= lt!1638445 (+!1243 lm!1616 lt!1638450))))

(assert (=> b!4443923 (= lt!1638450 (tuple2!49793 hash!366 newBucket!194))))

(declare-fun lt!1638446 () Unit!84144)

(declare-fun addValidProp!491 (ListLongMap!2343 Int (_ BitVec 64) List!49960) Unit!84144)

(assert (=> b!4443923 (= lt!1638446 (addValidProp!491 lm!1616 lambda!157844 hash!366 newBucket!194))))

(declare-fun b!4443924 () Bool)

(assert (=> b!4443924 (= e!2766936 e!2766934)))

(declare-fun res!1840494 () Bool)

(assert (=> b!4443924 (=> res!1840494 e!2766934)))

(declare-fun head!9292 (ListLongMap!2343) tuple2!49792)

(assert (=> b!4443924 (= res!1840494 (= (head!9292 lm!1616) lt!1638450))))

(declare-datatypes ((ListMap!2937 0))(
  ( (ListMap!2938 (toList!3694 List!49960)) )
))
(declare-fun lt!1638455 () ListMap!2937)

(declare-fun lt!1638452 () ListMap!2937)

(declare-fun eq!453 (ListMap!2937 ListMap!2937) Bool)

(declare-fun +!1244 (ListMap!2937 tuple2!49790) ListMap!2937)

(assert (=> b!4443924 (eq!453 lt!1638455 (+!1244 lt!1638452 (tuple2!49791 key!3717 newValue!93)))))

(declare-fun lt!1638453 () ListLongMap!2343)

(declare-fun extractMap!914 (List!49961) ListMap!2937)

(assert (=> b!4443924 (= lt!1638452 (extractMap!914 (toList!3693 lt!1638453)))))

(assert (=> b!4443924 (= lt!1638455 (extractMap!914 (toList!3693 (+!1243 lt!1638453 lt!1638450))))))

(declare-fun lt!1638448 () Unit!84144)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!161 (ListLongMap!2343 (_ BitVec 64) List!49960 K!11205 V!11451 Hashable!5247) Unit!84144)

(assert (=> b!4443924 (= lt!1638448 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!161 lt!1638453 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7406 (ListLongMap!2343) ListLongMap!2343)

(assert (=> b!4443924 (= lt!1638453 (tail!7406 lm!1616))))

(declare-fun lt!1638449 () Unit!84144)

(assert (=> b!4443924 (= lt!1638449 e!2766939)))

(declare-fun c!756249 () Bool)

(declare-fun contains!12415 (ListMap!2937 K!11205) Bool)

(declare-fun tail!7407 (List!49961) List!49961)

(assert (=> b!4443924 (= c!756249 (contains!12415 (extractMap!914 (tail!7407 (toList!3693 lm!1616))) key!3717))))

(declare-fun b!4443925 () Bool)

(declare-fun res!1840491 () Bool)

(assert (=> b!4443925 (=> res!1840491 e!2766934)))

(declare-fun lt!1638451 () ListMap!2937)

(declare-fun addToMapMapFromBucket!459 (List!49960 ListMap!2937) ListMap!2937)

(assert (=> b!4443925 (= res!1840491 (not (eq!453 lt!1638451 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) lt!1638452))))))

(declare-fun b!4443926 () Bool)

(assert (=> b!4443926 (= e!2766938 e!2766942)))

(declare-fun res!1840496 () Bool)

(assert (=> b!4443926 (=> (not res!1840496) (not e!2766942))))

(assert (=> b!4443926 (= res!1840496 (not (contains!12415 lt!1638451 key!3717)))))

(assert (=> b!4443926 (= lt!1638451 (extractMap!914 (toList!3693 lm!1616)))))

(declare-fun b!4443927 () Bool)

(declare-fun res!1840495 () Bool)

(assert (=> b!4443927 (=> (not res!1840495) (not e!2766938))))

(declare-fun allKeysSameHash!813 (List!49960 (_ BitVec 64) Hashable!5247) Bool)

(assert (=> b!4443927 (= res!1840495 (allKeysSameHash!813 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4443928 () Bool)

(declare-fun apply!11705 (ListLongMap!2343 (_ BitVec 64)) List!49960)

(assert (=> b!4443928 (= e!2766933 (= newBucket!194 (Cons!49836 (tuple2!49791 key!3717 newValue!93) (apply!11705 lm!1616 hash!366))))))

(declare-fun b!4443929 () Bool)

(declare-fun res!1840492 () Bool)

(assert (=> b!4443929 (=> (not res!1840492) (not e!2766938))))

(declare-fun allKeysSameHashInMap!959 (ListLongMap!2343 Hashable!5247) Bool)

(assert (=> b!4443929 (= res!1840492 (allKeysSameHashInMap!959 lm!1616 hashF!1220))))

(declare-fun b!4443930 () Bool)

(declare-fun res!1840498 () Bool)

(assert (=> b!4443930 (=> (not res!1840498) (not e!2766940))))

(assert (=> b!4443930 (= res!1840498 (forall!9732 (toList!3693 lm!1616) lambda!157844))))

(declare-fun b!4443931 () Bool)

(declare-fun res!1840497 () Bool)

(assert (=> b!4443931 (=> (not res!1840497) (not e!2766940))))

(declare-fun noDuplicateKeys!853 (List!49960) Bool)

(assert (=> b!4443931 (= res!1840497 (noDuplicateKeys!853 newBucket!194))))

(assert (= (and start!435012 res!1840500) b!4443929))

(assert (= (and b!4443929 res!1840492) b!4443913))

(assert (= (and b!4443913 res!1840493) b!4443927))

(assert (= (and b!4443927 res!1840495) b!4443926))

(assert (= (and b!4443926 res!1840496) b!4443918))

(assert (= (and b!4443918 res!1840503) b!4443928))

(assert (= (and b!4443918 (not res!1840504)) b!4443917))

(assert (= (and b!4443918 res!1840502) b!4443931))

(assert (= (and b!4443931 res!1840497) b!4443930))

(assert (= (and b!4443930 res!1840498) b!4443923))

(assert (= (and b!4443923 (not res!1840505)) b!4443922))

(assert (= (and b!4443922 (not res!1840499)) b!4443924))

(assert (= (and b!4443924 c!756249) b!4443914))

(assert (= (and b!4443924 (not c!756249)) b!4443921))

(assert (= (and b!4443924 (not res!1840494)) b!4443925))

(assert (= (and b!4443925 (not res!1840491)) b!4443919))

(assert (= (and b!4443919 (not res!1840501)) b!4443916))

(assert (= (and start!435012 ((_ is Cons!49836) newBucket!194)) b!4443915))

(assert (= start!435012 b!4443920))

(declare-fun m!5133295 () Bool)

(assert (=> b!4443914 m!5133295))

(declare-fun m!5133297 () Bool)

(assert (=> b!4443916 m!5133297))

(declare-fun m!5133299 () Bool)

(assert (=> b!4443923 m!5133299))

(assert (=> b!4443923 m!5133299))

(declare-fun m!5133301 () Bool)

(assert (=> b!4443923 m!5133301))

(declare-fun m!5133303 () Bool)

(assert (=> b!4443923 m!5133303))

(declare-fun m!5133305 () Bool)

(assert (=> b!4443926 m!5133305))

(declare-fun m!5133307 () Bool)

(assert (=> b!4443926 m!5133307))

(declare-fun m!5133309 () Bool)

(assert (=> b!4443913 m!5133309))

(declare-fun m!5133311 () Bool)

(assert (=> b!4443927 m!5133311))

(declare-fun m!5133313 () Bool)

(assert (=> b!4443918 m!5133313))

(declare-fun m!5133315 () Bool)

(assert (=> b!4443925 m!5133315))

(assert (=> b!4443925 m!5133315))

(declare-fun m!5133317 () Bool)

(assert (=> b!4443925 m!5133317))

(declare-fun m!5133319 () Bool)

(assert (=> b!4443928 m!5133319))

(declare-fun m!5133321 () Bool)

(assert (=> start!435012 m!5133321))

(declare-fun m!5133323 () Bool)

(assert (=> start!435012 m!5133323))

(declare-fun m!5133325 () Bool)

(assert (=> b!4443931 m!5133325))

(assert (=> b!4443919 m!5133321))

(assert (=> b!4443930 m!5133321))

(declare-fun m!5133327 () Bool)

(assert (=> b!4443924 m!5133327))

(declare-fun m!5133329 () Bool)

(assert (=> b!4443924 m!5133329))

(declare-fun m!5133331 () Bool)

(assert (=> b!4443924 m!5133331))

(declare-fun m!5133333 () Bool)

(assert (=> b!4443924 m!5133333))

(declare-fun m!5133335 () Bool)

(assert (=> b!4443924 m!5133335))

(declare-fun m!5133337 () Bool)

(assert (=> b!4443924 m!5133337))

(declare-fun m!5133339 () Bool)

(assert (=> b!4443924 m!5133339))

(assert (=> b!4443924 m!5133327))

(declare-fun m!5133341 () Bool)

(assert (=> b!4443924 m!5133341))

(declare-fun m!5133343 () Bool)

(assert (=> b!4443924 m!5133343))

(assert (=> b!4443924 m!5133329))

(declare-fun m!5133345 () Bool)

(assert (=> b!4443924 m!5133345))

(assert (=> b!4443924 m!5133337))

(declare-fun m!5133347 () Bool)

(assert (=> b!4443924 m!5133347))

(declare-fun m!5133349 () Bool)

(assert (=> b!4443929 m!5133349))

(check-sat (not b!4443915) (not b!4443914) (not b!4443930) (not b!4443926) (not start!435012) (not b!4443924) (not b!4443913) (not b!4443929) tp_is_empty!26659 tp_is_empty!26657 (not b!4443916) (not b!4443925) (not b!4443919) (not b!4443923) (not b!4443928) (not b!4443918) (not b!4443931) (not b!4443927) (not b!4443920))
(check-sat)
(get-model)

(declare-fun b!4443952 () Bool)

(declare-fun e!2766955 () Unit!84144)

(declare-fun lt!1638474 () Unit!84144)

(assert (=> b!4443952 (= e!2766955 lt!1638474)))

(declare-fun lt!1638475 () Unit!84144)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!714 (List!49960 K!11205) Unit!84144)

(assert (=> b!4443952 (= lt!1638475 (lemmaContainsKeyImpliesGetValueByKeyDefined!714 (toList!3694 lt!1638451) key!3717))))

(declare-datatypes ((Option!10821 0))(
  ( (None!10820) (Some!10820 (v!44056 V!11451)) )
))
(declare-fun isDefined!8111 (Option!10821) Bool)

(declare-fun getValueByKey!807 (List!49960 K!11205) Option!10821)

(assert (=> b!4443952 (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638451) key!3717))))

(declare-fun lt!1638472 () Unit!84144)

(assert (=> b!4443952 (= lt!1638472 lt!1638475)))

(declare-fun lemmaInListThenGetKeysListContains!296 (List!49960 K!11205) Unit!84144)

(assert (=> b!4443952 (= lt!1638474 (lemmaInListThenGetKeysListContains!296 (toList!3694 lt!1638451) key!3717))))

(declare-fun call!309135 () Bool)

(assert (=> b!4443952 call!309135))

(declare-fun b!4443953 () Bool)

(declare-fun e!2766959 () Bool)

(declare-fun e!2766956 () Bool)

(assert (=> b!4443953 (= e!2766959 e!2766956)))

(declare-fun res!1840512 () Bool)

(assert (=> b!4443953 (=> (not res!1840512) (not e!2766956))))

(assert (=> b!4443953 (= res!1840512 (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638451) key!3717)))))

(declare-fun b!4443954 () Bool)

(declare-datatypes ((List!49963 0))(
  ( (Nil!49839) (Cons!49839 (h!55576 K!11205) (t!356905 List!49963)) )
))
(declare-fun e!2766957 () List!49963)

(declare-fun keys!17083 (ListMap!2937) List!49963)

(assert (=> b!4443954 (= e!2766957 (keys!17083 lt!1638451))))

(declare-fun b!4443956 () Bool)

(declare-fun e!2766960 () Bool)

(declare-fun contains!12419 (List!49963 K!11205) Bool)

(assert (=> b!4443956 (= e!2766960 (not (contains!12419 (keys!17083 lt!1638451) key!3717)))))

(declare-fun b!4443957 () Bool)

(declare-fun getKeysList!299 (List!49960) List!49963)

(assert (=> b!4443957 (= e!2766957 (getKeysList!299 (toList!3694 lt!1638451)))))

(declare-fun b!4443958 () Bool)

(declare-fun e!2766958 () Unit!84144)

(assert (=> b!4443958 (= e!2766955 e!2766958)))

(declare-fun c!756258 () Bool)

(assert (=> b!4443958 (= c!756258 call!309135)))

(declare-fun b!4443959 () Bool)

(assert (=> b!4443959 (= e!2766956 (contains!12419 (keys!17083 lt!1638451) key!3717))))

(declare-fun bm!309130 () Bool)

(assert (=> bm!309130 (= call!309135 (contains!12419 e!2766957 key!3717))))

(declare-fun c!756257 () Bool)

(declare-fun c!756256 () Bool)

(assert (=> bm!309130 (= c!756257 c!756256)))

(declare-fun b!4443960 () Bool)

(declare-fun Unit!84165 () Unit!84144)

(assert (=> b!4443960 (= e!2766958 Unit!84165)))

(declare-fun d!1349079 () Bool)

(assert (=> d!1349079 e!2766959))

(declare-fun res!1840513 () Bool)

(assert (=> d!1349079 (=> res!1840513 e!2766959)))

(assert (=> d!1349079 (= res!1840513 e!2766960)))

(declare-fun res!1840514 () Bool)

(assert (=> d!1349079 (=> (not res!1840514) (not e!2766960))))

(declare-fun lt!1638479 () Bool)

(assert (=> d!1349079 (= res!1840514 (not lt!1638479))))

(declare-fun lt!1638473 () Bool)

(assert (=> d!1349079 (= lt!1638479 lt!1638473)))

(declare-fun lt!1638477 () Unit!84144)

(assert (=> d!1349079 (= lt!1638477 e!2766955)))

(assert (=> d!1349079 (= c!756256 lt!1638473)))

(declare-fun containsKey!1270 (List!49960 K!11205) Bool)

(assert (=> d!1349079 (= lt!1638473 (containsKey!1270 (toList!3694 lt!1638451) key!3717))))

(assert (=> d!1349079 (= (contains!12415 lt!1638451 key!3717) lt!1638479)))

(declare-fun b!4443955 () Bool)

(assert (=> b!4443955 false))

(declare-fun lt!1638476 () Unit!84144)

(declare-fun lt!1638478 () Unit!84144)

(assert (=> b!4443955 (= lt!1638476 lt!1638478)))

(assert (=> b!4443955 (containsKey!1270 (toList!3694 lt!1638451) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!297 (List!49960 K!11205) Unit!84144)

(assert (=> b!4443955 (= lt!1638478 (lemmaInGetKeysListThenContainsKey!297 (toList!3694 lt!1638451) key!3717))))

(declare-fun Unit!84166 () Unit!84144)

(assert (=> b!4443955 (= e!2766958 Unit!84166)))

(assert (= (and d!1349079 c!756256) b!4443952))

(assert (= (and d!1349079 (not c!756256)) b!4443958))

(assert (= (and b!4443958 c!756258) b!4443955))

(assert (= (and b!4443958 (not c!756258)) b!4443960))

(assert (= (or b!4443952 b!4443958) bm!309130))

(assert (= (and bm!309130 c!756257) b!4443957))

(assert (= (and bm!309130 (not c!756257)) b!4443954))

(assert (= (and d!1349079 res!1840514) b!4443956))

(assert (= (and d!1349079 (not res!1840513)) b!4443953))

(assert (= (and b!4443953 res!1840512) b!4443959))

(declare-fun m!5133357 () Bool)

(assert (=> bm!309130 m!5133357))

(declare-fun m!5133359 () Bool)

(assert (=> b!4443959 m!5133359))

(assert (=> b!4443959 m!5133359))

(declare-fun m!5133361 () Bool)

(assert (=> b!4443959 m!5133361))

(assert (=> b!4443956 m!5133359))

(assert (=> b!4443956 m!5133359))

(assert (=> b!4443956 m!5133361))

(declare-fun m!5133363 () Bool)

(assert (=> b!4443957 m!5133363))

(declare-fun m!5133365 () Bool)

(assert (=> d!1349079 m!5133365))

(declare-fun m!5133367 () Bool)

(assert (=> b!4443953 m!5133367))

(assert (=> b!4443953 m!5133367))

(declare-fun m!5133369 () Bool)

(assert (=> b!4443953 m!5133369))

(assert (=> b!4443954 m!5133359))

(declare-fun m!5133371 () Bool)

(assert (=> b!4443952 m!5133371))

(assert (=> b!4443952 m!5133367))

(assert (=> b!4443952 m!5133367))

(assert (=> b!4443952 m!5133369))

(declare-fun m!5133373 () Bool)

(assert (=> b!4443952 m!5133373))

(assert (=> b!4443955 m!5133365))

(declare-fun m!5133375 () Bool)

(assert (=> b!4443955 m!5133375))

(assert (=> b!4443926 d!1349079))

(declare-fun bs!764948 () Bool)

(declare-fun d!1349081 () Bool)

(assert (= bs!764948 (and d!1349081 start!435012)))

(declare-fun lambda!157872 () Int)

(assert (=> bs!764948 (= lambda!157872 lambda!157844)))

(declare-fun lt!1638524 () ListMap!2937)

(declare-fun invariantList!852 (List!49960) Bool)

(assert (=> d!1349081 (invariantList!852 (toList!3694 lt!1638524))))

(declare-fun e!2766967 () ListMap!2937)

(assert (=> d!1349081 (= lt!1638524 e!2766967)))

(declare-fun c!756263 () Bool)

(assert (=> d!1349081 (= c!756263 ((_ is Cons!49837) (toList!3693 lm!1616)))))

(assert (=> d!1349081 (forall!9732 (toList!3693 lm!1616) lambda!157872)))

(assert (=> d!1349081 (= (extractMap!914 (toList!3693 lm!1616)) lt!1638524)))

(declare-fun b!4443969 () Bool)

(assert (=> b!4443969 (= e!2766967 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))))))

(declare-fun b!4443970 () Bool)

(assert (=> b!4443970 (= e!2766967 (ListMap!2938 Nil!49836))))

(assert (= (and d!1349081 c!756263) b!4443969))

(assert (= (and d!1349081 (not c!756263)) b!4443970))

(declare-fun m!5133377 () Bool)

(assert (=> d!1349081 m!5133377))

(declare-fun m!5133379 () Bool)

(assert (=> d!1349081 m!5133379))

(declare-fun m!5133381 () Bool)

(assert (=> b!4443969 m!5133381))

(assert (=> b!4443969 m!5133381))

(declare-fun m!5133383 () Bool)

(assert (=> b!4443969 m!5133383))

(assert (=> b!4443926 d!1349081))

(declare-fun d!1349083 () Bool)

(declare-fun e!2766983 () Bool)

(assert (=> d!1349083 e!2766983))

(declare-fun res!1840532 () Bool)

(assert (=> d!1349083 (=> res!1840532 e!2766983)))

(declare-fun lt!1638555 () Bool)

(assert (=> d!1349083 (= res!1840532 (not lt!1638555))))

(declare-fun lt!1638554 () Bool)

(assert (=> d!1349083 (= lt!1638555 lt!1638554)))

(declare-fun lt!1638556 () Unit!84144)

(declare-fun e!2766984 () Unit!84144)

(assert (=> d!1349083 (= lt!1638556 e!2766984)))

(declare-fun c!756267 () Bool)

(assert (=> d!1349083 (= c!756267 lt!1638554)))

(declare-fun containsKey!1271 (List!49961 (_ BitVec 64)) Bool)

(assert (=> d!1349083 (= lt!1638554 (containsKey!1271 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (=> d!1349083 (= (contains!12414 lm!1616 (_1!28190 (h!55572 (toList!3693 lm!1616)))) lt!1638555)))

(declare-fun b!4443996 () Bool)

(declare-fun lt!1638557 () Unit!84144)

(assert (=> b!4443996 (= e!2766984 lt!1638557)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!715 (List!49961 (_ BitVec 64)) Unit!84144)

(assert (=> b!4443996 (= lt!1638557 (lemmaContainsKeyImpliesGetValueByKeyDefined!715 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))

(declare-datatypes ((Option!10822 0))(
  ( (None!10821) (Some!10821 (v!44057 List!49960)) )
))
(declare-fun isDefined!8112 (Option!10822) Bool)

(declare-fun getValueByKey!808 (List!49961 (_ BitVec 64)) Option!10822)

(assert (=> b!4443996 (isDefined!8112 (getValueByKey!808 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))

(declare-fun b!4443997 () Bool)

(declare-fun Unit!84167 () Unit!84144)

(assert (=> b!4443997 (= e!2766984 Unit!84167)))

(declare-fun b!4443998 () Bool)

(assert (=> b!4443998 (= e!2766983 (isDefined!8112 (getValueByKey!808 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (= (and d!1349083 c!756267) b!4443996))

(assert (= (and d!1349083 (not c!756267)) b!4443997))

(assert (= (and d!1349083 (not res!1840532)) b!4443998))

(declare-fun m!5133425 () Bool)

(assert (=> d!1349083 m!5133425))

(declare-fun m!5133427 () Bool)

(assert (=> b!4443996 m!5133427))

(declare-fun m!5133429 () Bool)

(assert (=> b!4443996 m!5133429))

(assert (=> b!4443996 m!5133429))

(declare-fun m!5133431 () Bool)

(assert (=> b!4443996 m!5133431))

(assert (=> b!4443998 m!5133429))

(assert (=> b!4443998 m!5133429))

(assert (=> b!4443998 m!5133431))

(assert (=> b!4443916 d!1349083))

(declare-fun bs!764956 () Bool)

(declare-fun d!1349089 () Bool)

(assert (= bs!764956 (and d!1349089 start!435012)))

(declare-fun lambda!157888 () Int)

(assert (=> bs!764956 (= lambda!157888 lambda!157844)))

(declare-fun bs!764957 () Bool)

(assert (= bs!764957 (and d!1349089 d!1349081)))

(assert (=> bs!764957 (= lambda!157888 lambda!157872)))

(assert (=> d!1349089 (contains!12415 (extractMap!914 (toList!3693 lm!1616)) key!3717)))

(declare-fun lt!1638587 () Unit!84144)

(declare-fun choose!28242 (ListLongMap!2343 K!11205 Hashable!5247) Unit!84144)

(assert (=> d!1349089 (= lt!1638587 (choose!28242 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1349089 (forall!9732 (toList!3693 lm!1616) lambda!157888)))

(assert (=> d!1349089 (= (lemmaExtractTailMapContainsThenExtractMapDoes!90 lm!1616 key!3717 hashF!1220) lt!1638587)))

(declare-fun bs!764958 () Bool)

(assert (= bs!764958 d!1349089))

(assert (=> bs!764958 m!5133307))

(assert (=> bs!764958 m!5133307))

(declare-fun m!5133463 () Bool)

(assert (=> bs!764958 m!5133463))

(declare-fun m!5133465 () Bool)

(assert (=> bs!764958 m!5133465))

(declare-fun m!5133467 () Bool)

(assert (=> bs!764958 m!5133467))

(assert (=> b!4443914 d!1349089))

(declare-fun d!1349099 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8017 (List!49960) (InoxSet tuple2!49790))

(assert (=> d!1349099 (= (eq!453 lt!1638451 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) lt!1638452)) (= (content!8017 (toList!3694 lt!1638451)) (content!8017 (toList!3694 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) lt!1638452)))))))

(declare-fun bs!764959 () Bool)

(assert (= bs!764959 d!1349099))

(declare-fun m!5133469 () Bool)

(assert (=> bs!764959 m!5133469))

(declare-fun m!5133471 () Bool)

(assert (=> bs!764959 m!5133471))

(assert (=> b!4443925 d!1349099))

(declare-fun b!4444109 () Bool)

(assert (=> b!4444109 true))

(declare-fun bs!764998 () Bool)

(declare-fun b!4444112 () Bool)

(assert (= bs!764998 (and b!4444112 b!4444109)))

(declare-fun lambda!157930 () Int)

(declare-fun lambda!157929 () Int)

(assert (=> bs!764998 (= lambda!157930 lambda!157929)))

(assert (=> b!4444112 true))

(declare-fun lambda!157931 () Int)

(declare-fun lt!1638694 () ListMap!2937)

(assert (=> bs!764998 (= (= lt!1638694 lt!1638452) (= lambda!157931 lambda!157929))))

(assert (=> b!4444112 (= (= lt!1638694 lt!1638452) (= lambda!157931 lambda!157930))))

(assert (=> b!4444112 true))

(declare-fun bs!764999 () Bool)

(declare-fun d!1349101 () Bool)

(assert (= bs!764999 (and d!1349101 b!4444109)))

(declare-fun lt!1638707 () ListMap!2937)

(declare-fun lambda!157932 () Int)

(assert (=> bs!764999 (= (= lt!1638707 lt!1638452) (= lambda!157932 lambda!157929))))

(declare-fun bs!765000 () Bool)

(assert (= bs!765000 (and d!1349101 b!4444112)))

(assert (=> bs!765000 (= (= lt!1638707 lt!1638452) (= lambda!157932 lambda!157930))))

(assert (=> bs!765000 (= (= lt!1638707 lt!1638694) (= lambda!157932 lambda!157931))))

(assert (=> d!1349101 true))

(declare-fun e!2767054 () ListMap!2937)

(assert (=> b!4444109 (= e!2767054 lt!1638452)))

(declare-fun lt!1638700 () Unit!84144)

(declare-fun call!309157 () Unit!84144)

(assert (=> b!4444109 (= lt!1638700 call!309157)))

(declare-fun call!309156 () Bool)

(assert (=> b!4444109 call!309156))

(declare-fun lt!1638705 () Unit!84144)

(assert (=> b!4444109 (= lt!1638705 lt!1638700)))

(declare-fun call!309155 () Bool)

(assert (=> b!4444109 call!309155))

(declare-fun lt!1638711 () Unit!84144)

(declare-fun Unit!84168 () Unit!84144)

(assert (=> b!4444109 (= lt!1638711 Unit!84168)))

(declare-fun b!4444110 () Bool)

(declare-fun res!1840580 () Bool)

(declare-fun e!2767055 () Bool)

(assert (=> b!4444110 (=> (not res!1840580) (not e!2767055))))

(declare-fun forall!9734 (List!49960 Int) Bool)

(assert (=> b!4444110 (= res!1840580 (forall!9734 (toList!3694 lt!1638452) lambda!157932))))

(declare-fun bm!309150 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!209 (ListMap!2937) Unit!84144)

(assert (=> bm!309150 (= call!309157 (lemmaContainsAllItsOwnKeys!209 lt!1638452))))

(declare-fun c!756292 () Bool)

(declare-fun bm!309151 () Bool)

(assert (=> bm!309151 (= call!309156 (forall!9734 (ite c!756292 (toList!3694 lt!1638452) (_2!28190 (h!55572 (toList!3693 lm!1616)))) (ite c!756292 lambda!157929 lambda!157931)))))

(declare-fun bm!309152 () Bool)

(assert (=> bm!309152 (= call!309155 (forall!9734 (ite c!756292 (toList!3694 lt!1638452) (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (ite c!756292 lambda!157929 lambda!157931)))))

(assert (=> d!1349101 e!2767055))

(declare-fun res!1840582 () Bool)

(assert (=> d!1349101 (=> (not res!1840582) (not e!2767055))))

(assert (=> d!1349101 (= res!1840582 (forall!9734 (_2!28190 (h!55572 (toList!3693 lm!1616))) lambda!157932))))

(assert (=> d!1349101 (= lt!1638707 e!2767054)))

(assert (=> d!1349101 (= c!756292 ((_ is Nil!49836) (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (=> d!1349101 (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lm!1616))))))

(assert (=> d!1349101 (= (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) lt!1638452) lt!1638707)))

(declare-fun b!4444111 () Bool)

(assert (=> b!4444111 (= e!2767055 (invariantList!852 (toList!3694 lt!1638707)))))

(assert (=> b!4444112 (= e!2767054 lt!1638694)))

(declare-fun lt!1638703 () ListMap!2937)

(assert (=> b!4444112 (= lt!1638703 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> b!4444112 (= lt!1638694 (addToMapMapFromBucket!459 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))) (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun lt!1638695 () Unit!84144)

(assert (=> b!4444112 (= lt!1638695 call!309157)))

(assert (=> b!4444112 (forall!9734 (toList!3694 lt!1638452) lambda!157930)))

(declare-fun lt!1638704 () Unit!84144)

(assert (=> b!4444112 (= lt!1638704 lt!1638695)))

(assert (=> b!4444112 (forall!9734 (toList!3694 lt!1638703) lambda!157931)))

(declare-fun lt!1638702 () Unit!84144)

(declare-fun Unit!84169 () Unit!84144)

(assert (=> b!4444112 (= lt!1638702 Unit!84169)))

(assert (=> b!4444112 call!309155))

(declare-fun lt!1638697 () Unit!84144)

(declare-fun Unit!84170 () Unit!84144)

(assert (=> b!4444112 (= lt!1638697 Unit!84170)))

(declare-fun lt!1638696 () Unit!84144)

(declare-fun Unit!84171 () Unit!84144)

(assert (=> b!4444112 (= lt!1638696 Unit!84171)))

(declare-fun lt!1638709 () Unit!84144)

(declare-fun forallContained!2149 (List!49960 Int tuple2!49790) Unit!84144)

(assert (=> b!4444112 (= lt!1638709 (forallContained!2149 (toList!3694 lt!1638703) lambda!157931 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> b!4444112 (contains!12415 lt!1638703 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(declare-fun lt!1638698 () Unit!84144)

(declare-fun Unit!84172 () Unit!84144)

(assert (=> b!4444112 (= lt!1638698 Unit!84172)))

(assert (=> b!4444112 (contains!12415 lt!1638694 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(declare-fun lt!1638712 () Unit!84144)

(declare-fun Unit!84173 () Unit!84144)

(assert (=> b!4444112 (= lt!1638712 Unit!84173)))

(assert (=> b!4444112 call!309156))

(declare-fun lt!1638713 () Unit!84144)

(declare-fun Unit!84174 () Unit!84144)

(assert (=> b!4444112 (= lt!1638713 Unit!84174)))

(assert (=> b!4444112 (forall!9734 (toList!3694 lt!1638703) lambda!157931)))

(declare-fun lt!1638701 () Unit!84144)

(declare-fun Unit!84175 () Unit!84144)

(assert (=> b!4444112 (= lt!1638701 Unit!84175)))

(declare-fun lt!1638699 () Unit!84144)

(declare-fun Unit!84176 () Unit!84144)

(assert (=> b!4444112 (= lt!1638699 Unit!84176)))

(declare-fun lt!1638706 () Unit!84144)

(declare-fun addForallContainsKeyThenBeforeAdding!209 (ListMap!2937 ListMap!2937 K!11205 V!11451) Unit!84144)

(assert (=> b!4444112 (= lt!1638706 (addForallContainsKeyThenBeforeAdding!209 lt!1638452 lt!1638694 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> b!4444112 (forall!9734 (toList!3694 lt!1638452) lambda!157931)))

(declare-fun lt!1638714 () Unit!84144)

(assert (=> b!4444112 (= lt!1638714 lt!1638706)))

(assert (=> b!4444112 (forall!9734 (toList!3694 lt!1638452) lambda!157931)))

(declare-fun lt!1638710 () Unit!84144)

(declare-fun Unit!84177 () Unit!84144)

(assert (=> b!4444112 (= lt!1638710 Unit!84177)))

(declare-fun res!1840581 () Bool)

(assert (=> b!4444112 (= res!1840581 (forall!9734 (_2!28190 (h!55572 (toList!3693 lm!1616))) lambda!157931))))

(declare-fun e!2767053 () Bool)

(assert (=> b!4444112 (=> (not res!1840581) (not e!2767053))))

(assert (=> b!4444112 e!2767053))

(declare-fun lt!1638708 () Unit!84144)

(declare-fun Unit!84178 () Unit!84144)

(assert (=> b!4444112 (= lt!1638708 Unit!84178)))

(declare-fun b!4444113 () Bool)

(assert (=> b!4444113 (= e!2767053 (forall!9734 (toList!3694 lt!1638452) lambda!157931))))

(assert (= (and d!1349101 c!756292) b!4444109))

(assert (= (and d!1349101 (not c!756292)) b!4444112))

(assert (= (and b!4444112 res!1840581) b!4444113))

(assert (= (or b!4444109 b!4444112) bm!309150))

(assert (= (or b!4444109 b!4444112) bm!309151))

(assert (= (or b!4444109 b!4444112) bm!309152))

(assert (= (and d!1349101 res!1840582) b!4444110))

(assert (= (and b!4444110 res!1840580) b!4444111))

(declare-fun m!5133619 () Bool)

(assert (=> b!4444112 m!5133619))

(declare-fun m!5133621 () Bool)

(assert (=> b!4444112 m!5133621))

(declare-fun m!5133623 () Bool)

(assert (=> b!4444112 m!5133623))

(declare-fun m!5133625 () Bool)

(assert (=> b!4444112 m!5133625))

(declare-fun m!5133627 () Bool)

(assert (=> b!4444112 m!5133627))

(declare-fun m!5133629 () Bool)

(assert (=> b!4444112 m!5133629))

(assert (=> b!4444112 m!5133627))

(declare-fun m!5133631 () Bool)

(assert (=> b!4444112 m!5133631))

(assert (=> b!4444112 m!5133619))

(declare-fun m!5133633 () Bool)

(assert (=> b!4444112 m!5133633))

(declare-fun m!5133635 () Bool)

(assert (=> b!4444112 m!5133635))

(declare-fun m!5133637 () Bool)

(assert (=> b!4444112 m!5133637))

(assert (=> b!4444112 m!5133637))

(declare-fun m!5133639 () Bool)

(assert (=> bm!309152 m!5133639))

(declare-fun m!5133641 () Bool)

(assert (=> bm!309150 m!5133641))

(declare-fun m!5133643 () Bool)

(assert (=> b!4444110 m!5133643))

(declare-fun m!5133645 () Bool)

(assert (=> b!4444111 m!5133645))

(assert (=> b!4444113 m!5133637))

(declare-fun m!5133647 () Bool)

(assert (=> bm!309151 m!5133647))

(declare-fun m!5133649 () Bool)

(assert (=> d!1349101 m!5133649))

(declare-fun m!5133651 () Bool)

(assert (=> d!1349101 m!5133651))

(assert (=> b!4443925 d!1349101))

(declare-fun d!1349147 () Bool)

(declare-fun e!2767056 () Bool)

(assert (=> d!1349147 e!2767056))

(declare-fun res!1840583 () Bool)

(assert (=> d!1349147 (=> res!1840583 e!2767056)))

(declare-fun lt!1638716 () Bool)

(assert (=> d!1349147 (= res!1840583 (not lt!1638716))))

(declare-fun lt!1638715 () Bool)

(assert (=> d!1349147 (= lt!1638716 lt!1638715)))

(declare-fun lt!1638717 () Unit!84144)

(declare-fun e!2767057 () Unit!84144)

(assert (=> d!1349147 (= lt!1638717 e!2767057)))

(declare-fun c!756293 () Bool)

(assert (=> d!1349147 (= c!756293 lt!1638715)))

(assert (=> d!1349147 (= lt!1638715 (containsKey!1271 (toList!3693 lm!1616) hash!366))))

(assert (=> d!1349147 (= (contains!12414 lm!1616 hash!366) lt!1638716)))

(declare-fun b!4444116 () Bool)

(declare-fun lt!1638718 () Unit!84144)

(assert (=> b!4444116 (= e!2767057 lt!1638718)))

(assert (=> b!4444116 (= lt!1638718 (lemmaContainsKeyImpliesGetValueByKeyDefined!715 (toList!3693 lm!1616) hash!366))))

(assert (=> b!4444116 (isDefined!8112 (getValueByKey!808 (toList!3693 lm!1616) hash!366))))

(declare-fun b!4444117 () Bool)

(declare-fun Unit!84179 () Unit!84144)

(assert (=> b!4444117 (= e!2767057 Unit!84179)))

(declare-fun b!4444118 () Bool)

(assert (=> b!4444118 (= e!2767056 (isDefined!8112 (getValueByKey!808 (toList!3693 lm!1616) hash!366)))))

(assert (= (and d!1349147 c!756293) b!4444116))

(assert (= (and d!1349147 (not c!756293)) b!4444117))

(assert (= (and d!1349147 (not res!1840583)) b!4444118))

(declare-fun m!5133653 () Bool)

(assert (=> d!1349147 m!5133653))

(declare-fun m!5133655 () Bool)

(assert (=> b!4444116 m!5133655))

(declare-fun m!5133657 () Bool)

(assert (=> b!4444116 m!5133657))

(assert (=> b!4444116 m!5133657))

(declare-fun m!5133659 () Bool)

(assert (=> b!4444116 m!5133659))

(assert (=> b!4444118 m!5133657))

(assert (=> b!4444118 m!5133657))

(assert (=> b!4444118 m!5133659))

(assert (=> b!4443918 d!1349147))

(declare-fun bs!765001 () Bool)

(declare-fun d!1349149 () Bool)

(assert (= bs!765001 (and d!1349149 start!435012)))

(declare-fun lambda!157935 () Int)

(assert (=> bs!765001 (not (= lambda!157935 lambda!157844))))

(declare-fun bs!765002 () Bool)

(assert (= bs!765002 (and d!1349149 d!1349081)))

(assert (=> bs!765002 (not (= lambda!157935 lambda!157872))))

(declare-fun bs!765003 () Bool)

(assert (= bs!765003 (and d!1349149 d!1349089)))

(assert (=> bs!765003 (not (= lambda!157935 lambda!157888))))

(assert (=> d!1349149 true))

(assert (=> d!1349149 (= (allKeysSameHashInMap!959 lm!1616 hashF!1220) (forall!9732 (toList!3693 lm!1616) lambda!157935))))

(declare-fun bs!765004 () Bool)

(assert (= bs!765004 d!1349149))

(declare-fun m!5133661 () Bool)

(assert (=> bs!765004 m!5133661))

(assert (=> b!4443929 d!1349149))

(declare-fun bs!765005 () Bool)

(declare-fun d!1349151 () Bool)

(assert (= bs!765005 (and d!1349151 b!4444109)))

(declare-fun lambda!157938 () Int)

(assert (=> bs!765005 (not (= lambda!157938 lambda!157929))))

(declare-fun bs!765006 () Bool)

(assert (= bs!765006 (and d!1349151 b!4444112)))

(assert (=> bs!765006 (not (= lambda!157938 lambda!157930))))

(assert (=> bs!765006 (not (= lambda!157938 lambda!157931))))

(declare-fun bs!765007 () Bool)

(assert (= bs!765007 (and d!1349151 d!1349101)))

(assert (=> bs!765007 (not (= lambda!157938 lambda!157932))))

(assert (=> d!1349151 true))

(assert (=> d!1349151 true))

(assert (=> d!1349151 (= (allKeysSameHash!813 newBucket!194 hash!366 hashF!1220) (forall!9734 newBucket!194 lambda!157938))))

(declare-fun bs!765008 () Bool)

(assert (= bs!765008 d!1349151))

(declare-fun m!5133663 () Bool)

(assert (=> bs!765008 m!5133663))

(assert (=> b!4443927 d!1349151))

(declare-fun d!1349153 () Bool)

(declare-fun get!16256 (Option!10822) List!49960)

(assert (=> d!1349153 (= (apply!11705 lm!1616 hash!366) (get!16256 (getValueByKey!808 (toList!3693 lm!1616) hash!366)))))

(declare-fun bs!765009 () Bool)

(assert (= bs!765009 d!1349153))

(assert (=> bs!765009 m!5133657))

(assert (=> bs!765009 m!5133657))

(declare-fun m!5133665 () Bool)

(assert (=> bs!765009 m!5133665))

(assert (=> b!4443928 d!1349153))

(declare-fun d!1349155 () Bool)

(declare-fun res!1840588 () Bool)

(declare-fun e!2767062 () Bool)

(assert (=> d!1349155 (=> res!1840588 e!2767062)))

(assert (=> d!1349155 (= res!1840588 (not ((_ is Cons!49836) newBucket!194)))))

(assert (=> d!1349155 (= (noDuplicateKeys!853 newBucket!194) e!2767062)))

(declare-fun b!4444129 () Bool)

(declare-fun e!2767063 () Bool)

(assert (=> b!4444129 (= e!2767062 e!2767063)))

(declare-fun res!1840589 () Bool)

(assert (=> b!4444129 (=> (not res!1840589) (not e!2767063))))

(declare-fun containsKey!1272 (List!49960 K!11205) Bool)

(assert (=> b!4444129 (= res!1840589 (not (containsKey!1272 (t!356902 newBucket!194) (_1!28189 (h!55571 newBucket!194)))))))

(declare-fun b!4444130 () Bool)

(assert (=> b!4444130 (= e!2767063 (noDuplicateKeys!853 (t!356902 newBucket!194)))))

(assert (= (and d!1349155 (not res!1840588)) b!4444129))

(assert (= (and b!4444129 res!1840589) b!4444130))

(declare-fun m!5133667 () Bool)

(assert (=> b!4444129 m!5133667))

(declare-fun m!5133669 () Bool)

(assert (=> b!4444130 m!5133669))

(assert (=> b!4443931 d!1349155))

(declare-fun d!1349157 () Bool)

(declare-fun res!1840594 () Bool)

(declare-fun e!2767068 () Bool)

(assert (=> d!1349157 (=> res!1840594 e!2767068)))

(assert (=> d!1349157 (= res!1840594 ((_ is Nil!49837) (toList!3693 lm!1616)))))

(assert (=> d!1349157 (= (forall!9732 (toList!3693 lm!1616) lambda!157844) e!2767068)))

(declare-fun b!4444135 () Bool)

(declare-fun e!2767069 () Bool)

(assert (=> b!4444135 (= e!2767068 e!2767069)))

(declare-fun res!1840595 () Bool)

(assert (=> b!4444135 (=> (not res!1840595) (not e!2767069))))

(declare-fun dynLambda!20922 (Int tuple2!49792) Bool)

(assert (=> b!4444135 (= res!1840595 (dynLambda!20922 lambda!157844 (h!55572 (toList!3693 lm!1616))))))

(declare-fun b!4444136 () Bool)

(assert (=> b!4444136 (= e!2767069 (forall!9732 (t!356903 (toList!3693 lm!1616)) lambda!157844))))

(assert (= (and d!1349157 (not res!1840594)) b!4444135))

(assert (= (and b!4444135 res!1840595) b!4444136))

(declare-fun b_lambda!145333 () Bool)

(assert (=> (not b_lambda!145333) (not b!4444135)))

(declare-fun m!5133671 () Bool)

(assert (=> b!4444135 m!5133671))

(declare-fun m!5133673 () Bool)

(assert (=> b!4444136 m!5133673))

(assert (=> start!435012 d!1349157))

(declare-fun d!1349159 () Bool)

(declare-fun isStrictlySorted!278 (List!49961) Bool)

(assert (=> d!1349159 (= (inv!65391 lm!1616) (isStrictlySorted!278 (toList!3693 lm!1616)))))

(declare-fun bs!765010 () Bool)

(assert (= bs!765010 d!1349159))

(declare-fun m!5133675 () Bool)

(assert (=> bs!765010 m!5133675))

(assert (=> start!435012 d!1349159))

(assert (=> b!4443919 d!1349157))

(assert (=> b!4443930 d!1349157))

(declare-fun d!1349161 () Bool)

(declare-fun res!1840596 () Bool)

(declare-fun e!2767070 () Bool)

(assert (=> d!1349161 (=> res!1840596 e!2767070)))

(assert (=> d!1349161 (= res!1840596 ((_ is Nil!49837) (toList!3693 lt!1638445)))))

(assert (=> d!1349161 (= (forall!9732 (toList!3693 lt!1638445) lambda!157844) e!2767070)))

(declare-fun b!4444137 () Bool)

(declare-fun e!2767071 () Bool)

(assert (=> b!4444137 (= e!2767070 e!2767071)))

(declare-fun res!1840597 () Bool)

(assert (=> b!4444137 (=> (not res!1840597) (not e!2767071))))

(assert (=> b!4444137 (= res!1840597 (dynLambda!20922 lambda!157844 (h!55572 (toList!3693 lt!1638445))))))

(declare-fun b!4444138 () Bool)

(assert (=> b!4444138 (= e!2767071 (forall!9732 (t!356903 (toList!3693 lt!1638445)) lambda!157844))))

(assert (= (and d!1349161 (not res!1840596)) b!4444137))

(assert (= (and b!4444137 res!1840597) b!4444138))

(declare-fun b_lambda!145335 () Bool)

(assert (=> (not b_lambda!145335) (not b!4444137)))

(declare-fun m!5133677 () Bool)

(assert (=> b!4444137 m!5133677))

(declare-fun m!5133679 () Bool)

(assert (=> b!4444138 m!5133679))

(assert (=> b!4443923 d!1349161))

(declare-fun d!1349163 () Bool)

(declare-fun e!2767074 () Bool)

(assert (=> d!1349163 e!2767074))

(declare-fun res!1840603 () Bool)

(assert (=> d!1349163 (=> (not res!1840603) (not e!2767074))))

(declare-fun lt!1638729 () ListLongMap!2343)

(assert (=> d!1349163 (= res!1840603 (contains!12414 lt!1638729 (_1!28190 lt!1638450)))))

(declare-fun lt!1638727 () List!49961)

(assert (=> d!1349163 (= lt!1638729 (ListLongMap!2344 lt!1638727))))

(declare-fun lt!1638728 () Unit!84144)

(declare-fun lt!1638730 () Unit!84144)

(assert (=> d!1349163 (= lt!1638728 lt!1638730)))

(assert (=> d!1349163 (= (getValueByKey!808 lt!1638727 (_1!28190 lt!1638450)) (Some!10821 (_2!28190 lt!1638450)))))

(declare-fun lemmaContainsTupThenGetReturnValue!523 (List!49961 (_ BitVec 64) List!49960) Unit!84144)

(assert (=> d!1349163 (= lt!1638730 (lemmaContainsTupThenGetReturnValue!523 lt!1638727 (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))

(declare-fun insertStrictlySorted!306 (List!49961 (_ BitVec 64) List!49960) List!49961)

(assert (=> d!1349163 (= lt!1638727 (insertStrictlySorted!306 (toList!3693 lm!1616) (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))

(assert (=> d!1349163 (= (+!1243 lm!1616 lt!1638450) lt!1638729)))

(declare-fun b!4444143 () Bool)

(declare-fun res!1840602 () Bool)

(assert (=> b!4444143 (=> (not res!1840602) (not e!2767074))))

(assert (=> b!4444143 (= res!1840602 (= (getValueByKey!808 (toList!3693 lt!1638729) (_1!28190 lt!1638450)) (Some!10821 (_2!28190 lt!1638450))))))

(declare-fun b!4444144 () Bool)

(declare-fun contains!12420 (List!49961 tuple2!49792) Bool)

(assert (=> b!4444144 (= e!2767074 (contains!12420 (toList!3693 lt!1638729) lt!1638450))))

(assert (= (and d!1349163 res!1840603) b!4444143))

(assert (= (and b!4444143 res!1840602) b!4444144))

(declare-fun m!5133681 () Bool)

(assert (=> d!1349163 m!5133681))

(declare-fun m!5133683 () Bool)

(assert (=> d!1349163 m!5133683))

(declare-fun m!5133685 () Bool)

(assert (=> d!1349163 m!5133685))

(declare-fun m!5133687 () Bool)

(assert (=> d!1349163 m!5133687))

(declare-fun m!5133689 () Bool)

(assert (=> b!4444143 m!5133689))

(declare-fun m!5133691 () Bool)

(assert (=> b!4444144 m!5133691))

(assert (=> b!4443923 d!1349163))

(declare-fun d!1349165 () Bool)

(assert (=> d!1349165 (forall!9732 (toList!3693 (+!1243 lm!1616 (tuple2!49793 hash!366 newBucket!194))) lambda!157844)))

(declare-fun lt!1638733 () Unit!84144)

(declare-fun choose!28243 (ListLongMap!2343 Int (_ BitVec 64) List!49960) Unit!84144)

(assert (=> d!1349165 (= lt!1638733 (choose!28243 lm!1616 lambda!157844 hash!366 newBucket!194))))

(declare-fun e!2767077 () Bool)

(assert (=> d!1349165 e!2767077))

(declare-fun res!1840606 () Bool)

(assert (=> d!1349165 (=> (not res!1840606) (not e!2767077))))

(assert (=> d!1349165 (= res!1840606 (forall!9732 (toList!3693 lm!1616) lambda!157844))))

(assert (=> d!1349165 (= (addValidProp!491 lm!1616 lambda!157844 hash!366 newBucket!194) lt!1638733)))

(declare-fun b!4444148 () Bool)

(assert (=> b!4444148 (= e!2767077 (dynLambda!20922 lambda!157844 (tuple2!49793 hash!366 newBucket!194)))))

(assert (= (and d!1349165 res!1840606) b!4444148))

(declare-fun b_lambda!145337 () Bool)

(assert (=> (not b_lambda!145337) (not b!4444148)))

(declare-fun m!5133693 () Bool)

(assert (=> d!1349165 m!5133693))

(declare-fun m!5133695 () Bool)

(assert (=> d!1349165 m!5133695))

(declare-fun m!5133697 () Bool)

(assert (=> d!1349165 m!5133697))

(assert (=> d!1349165 m!5133321))

(declare-fun m!5133699 () Bool)

(assert (=> b!4444148 m!5133699))

(assert (=> b!4443923 d!1349165))

(declare-fun d!1349167 () Bool)

(declare-fun hash!2319 (Hashable!5247 K!11205) (_ BitVec 64))

(assert (=> d!1349167 (= (hash!2315 hashF!1220 key!3717) (hash!2319 hashF!1220 key!3717))))

(declare-fun bs!765011 () Bool)

(assert (= bs!765011 d!1349167))

(declare-fun m!5133701 () Bool)

(assert (=> bs!765011 m!5133701))

(assert (=> b!4443913 d!1349167))

(declare-fun d!1349169 () Bool)

(declare-fun e!2767080 () Bool)

(assert (=> d!1349169 e!2767080))

(declare-fun res!1840612 () Bool)

(assert (=> d!1349169 (=> (not res!1840612) (not e!2767080))))

(declare-fun lt!1638743 () ListMap!2937)

(assert (=> d!1349169 (= res!1840612 (contains!12415 lt!1638743 (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun lt!1638744 () List!49960)

(assert (=> d!1349169 (= lt!1638743 (ListMap!2938 lt!1638744))))

(declare-fun lt!1638742 () Unit!84144)

(declare-fun lt!1638745 () Unit!84144)

(assert (=> d!1349169 (= lt!1638742 lt!1638745)))

(assert (=> d!1349169 (= (getValueByKey!807 lt!1638744 (_1!28189 (tuple2!49791 key!3717 newValue!93))) (Some!10820 (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!524 (List!49960 K!11205 V!11451) Unit!84144)

(assert (=> d!1349169 (= lt!1638745 (lemmaContainsTupThenGetReturnValue!524 lt!1638744 (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!226 (List!49960 K!11205 V!11451) List!49960)

(assert (=> d!1349169 (= lt!1638744 (insertNoDuplicatedKeys!226 (toList!3694 lt!1638452) (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(assert (=> d!1349169 (= (+!1244 lt!1638452 (tuple2!49791 key!3717 newValue!93)) lt!1638743)))

(declare-fun b!4444153 () Bool)

(declare-fun res!1840611 () Bool)

(assert (=> b!4444153 (=> (not res!1840611) (not e!2767080))))

(assert (=> b!4444153 (= res!1840611 (= (getValueByKey!807 (toList!3694 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93))) (Some!10820 (_2!28189 (tuple2!49791 key!3717 newValue!93)))))))

(declare-fun b!4444154 () Bool)

(declare-fun contains!12421 (List!49960 tuple2!49790) Bool)

(assert (=> b!4444154 (= e!2767080 (contains!12421 (toList!3694 lt!1638743) (tuple2!49791 key!3717 newValue!93)))))

(assert (= (and d!1349169 res!1840612) b!4444153))

(assert (= (and b!4444153 res!1840611) b!4444154))

(declare-fun m!5133703 () Bool)

(assert (=> d!1349169 m!5133703))

(declare-fun m!5133705 () Bool)

(assert (=> d!1349169 m!5133705))

(declare-fun m!5133707 () Bool)

(assert (=> d!1349169 m!5133707))

(declare-fun m!5133709 () Bool)

(assert (=> d!1349169 m!5133709))

(declare-fun m!5133711 () Bool)

(assert (=> b!4444153 m!5133711))

(declare-fun m!5133713 () Bool)

(assert (=> b!4444154 m!5133713))

(assert (=> b!4443924 d!1349169))

(declare-fun bs!765012 () Bool)

(declare-fun d!1349171 () Bool)

(assert (= bs!765012 (and d!1349171 start!435012)))

(declare-fun lambda!157941 () Int)

(assert (=> bs!765012 (= lambda!157941 lambda!157844)))

(declare-fun bs!765013 () Bool)

(assert (= bs!765013 (and d!1349171 d!1349081)))

(assert (=> bs!765013 (= lambda!157941 lambda!157872)))

(declare-fun bs!765014 () Bool)

(assert (= bs!765014 (and d!1349171 d!1349089)))

(assert (=> bs!765014 (= lambda!157941 lambda!157888)))

(declare-fun bs!765015 () Bool)

(assert (= bs!765015 (and d!1349171 d!1349149)))

(assert (=> bs!765015 (not (= lambda!157941 lambda!157935))))

(assert (=> d!1349171 (eq!453 (extractMap!914 (toList!3693 (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194)))) (+!1244 (extractMap!914 (toList!3693 lt!1638453)) (tuple2!49791 key!3717 newValue!93)))))

(declare-fun lt!1638748 () Unit!84144)

(declare-fun choose!28244 (ListLongMap!2343 (_ BitVec 64) List!49960 K!11205 V!11451 Hashable!5247) Unit!84144)

(assert (=> d!1349171 (= lt!1638748 (choose!28244 lt!1638453 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1349171 (forall!9732 (toList!3693 lt!1638453) lambda!157941)))

(assert (=> d!1349171 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!161 lt!1638453 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1638748)))

(declare-fun bs!765016 () Bool)

(assert (= bs!765016 d!1349171))

(declare-fun m!5133715 () Bool)

(assert (=> bs!765016 m!5133715))

(declare-fun m!5133717 () Bool)

(assert (=> bs!765016 m!5133717))

(declare-fun m!5133719 () Bool)

(assert (=> bs!765016 m!5133719))

(declare-fun m!5133721 () Bool)

(assert (=> bs!765016 m!5133721))

(declare-fun m!5133723 () Bool)

(assert (=> bs!765016 m!5133723))

(declare-fun m!5133725 () Bool)

(assert (=> bs!765016 m!5133725))

(assert (=> bs!765016 m!5133343))

(assert (=> bs!765016 m!5133715))

(assert (=> bs!765016 m!5133343))

(assert (=> bs!765016 m!5133717))

(assert (=> b!4443924 d!1349171))

(declare-fun d!1349173 () Bool)

(assert (=> d!1349173 (= (eq!453 lt!1638455 (+!1244 lt!1638452 (tuple2!49791 key!3717 newValue!93))) (= (content!8017 (toList!3694 lt!1638455)) (content!8017 (toList!3694 (+!1244 lt!1638452 (tuple2!49791 key!3717 newValue!93))))))))

(declare-fun bs!765017 () Bool)

(assert (= bs!765017 d!1349173))

(declare-fun m!5133727 () Bool)

(assert (=> bs!765017 m!5133727))

(declare-fun m!5133729 () Bool)

(assert (=> bs!765017 m!5133729))

(assert (=> b!4443924 d!1349173))

(declare-fun d!1349175 () Bool)

(declare-fun e!2767081 () Bool)

(assert (=> d!1349175 e!2767081))

(declare-fun res!1840614 () Bool)

(assert (=> d!1349175 (=> (not res!1840614) (not e!2767081))))

(declare-fun lt!1638751 () ListLongMap!2343)

(assert (=> d!1349175 (= res!1840614 (contains!12414 lt!1638751 (_1!28190 lt!1638450)))))

(declare-fun lt!1638749 () List!49961)

(assert (=> d!1349175 (= lt!1638751 (ListLongMap!2344 lt!1638749))))

(declare-fun lt!1638750 () Unit!84144)

(declare-fun lt!1638752 () Unit!84144)

(assert (=> d!1349175 (= lt!1638750 lt!1638752)))

(assert (=> d!1349175 (= (getValueByKey!808 lt!1638749 (_1!28190 lt!1638450)) (Some!10821 (_2!28190 lt!1638450)))))

(assert (=> d!1349175 (= lt!1638752 (lemmaContainsTupThenGetReturnValue!523 lt!1638749 (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))

(assert (=> d!1349175 (= lt!1638749 (insertStrictlySorted!306 (toList!3693 lt!1638453) (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))

(assert (=> d!1349175 (= (+!1243 lt!1638453 lt!1638450) lt!1638751)))

(declare-fun b!4444155 () Bool)

(declare-fun res!1840613 () Bool)

(assert (=> b!4444155 (=> (not res!1840613) (not e!2767081))))

(assert (=> b!4444155 (= res!1840613 (= (getValueByKey!808 (toList!3693 lt!1638751) (_1!28190 lt!1638450)) (Some!10821 (_2!28190 lt!1638450))))))

(declare-fun b!4444156 () Bool)

(assert (=> b!4444156 (= e!2767081 (contains!12420 (toList!3693 lt!1638751) lt!1638450))))

(assert (= (and d!1349175 res!1840614) b!4444155))

(assert (= (and b!4444155 res!1840613) b!4444156))

(declare-fun m!5133731 () Bool)

(assert (=> d!1349175 m!5133731))

(declare-fun m!5133733 () Bool)

(assert (=> d!1349175 m!5133733))

(declare-fun m!5133735 () Bool)

(assert (=> d!1349175 m!5133735))

(declare-fun m!5133737 () Bool)

(assert (=> d!1349175 m!5133737))

(declare-fun m!5133739 () Bool)

(assert (=> b!4444155 m!5133739))

(declare-fun m!5133741 () Bool)

(assert (=> b!4444156 m!5133741))

(assert (=> b!4443924 d!1349175))

(declare-fun bs!765018 () Bool)

(declare-fun d!1349177 () Bool)

(assert (= bs!765018 (and d!1349177 d!1349081)))

(declare-fun lambda!157942 () Int)

(assert (=> bs!765018 (= lambda!157942 lambda!157872)))

(declare-fun bs!765019 () Bool)

(assert (= bs!765019 (and d!1349177 d!1349089)))

(assert (=> bs!765019 (= lambda!157942 lambda!157888)))

(declare-fun bs!765020 () Bool)

(assert (= bs!765020 (and d!1349177 d!1349171)))

(assert (=> bs!765020 (= lambda!157942 lambda!157941)))

(declare-fun bs!765021 () Bool)

(assert (= bs!765021 (and d!1349177 start!435012)))

(assert (=> bs!765021 (= lambda!157942 lambda!157844)))

(declare-fun bs!765022 () Bool)

(assert (= bs!765022 (and d!1349177 d!1349149)))

(assert (=> bs!765022 (not (= lambda!157942 lambda!157935))))

(declare-fun lt!1638753 () ListMap!2937)

(assert (=> d!1349177 (invariantList!852 (toList!3694 lt!1638753))))

(declare-fun e!2767082 () ListMap!2937)

(assert (=> d!1349177 (= lt!1638753 e!2767082)))

(declare-fun c!756294 () Bool)

(assert (=> d!1349177 (= c!756294 ((_ is Cons!49837) (toList!3693 lt!1638453)))))

(assert (=> d!1349177 (forall!9732 (toList!3693 lt!1638453) lambda!157942)))

(assert (=> d!1349177 (= (extractMap!914 (toList!3693 lt!1638453)) lt!1638753)))

(declare-fun b!4444157 () Bool)

(assert (=> b!4444157 (= e!2767082 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 lt!1638453)))))))

(declare-fun b!4444158 () Bool)

(assert (=> b!4444158 (= e!2767082 (ListMap!2938 Nil!49836))))

(assert (= (and d!1349177 c!756294) b!4444157))

(assert (= (and d!1349177 (not c!756294)) b!4444158))

(declare-fun m!5133743 () Bool)

(assert (=> d!1349177 m!5133743))

(declare-fun m!5133745 () Bool)

(assert (=> d!1349177 m!5133745))

(declare-fun m!5133747 () Bool)

(assert (=> b!4444157 m!5133747))

(assert (=> b!4444157 m!5133747))

(declare-fun m!5133749 () Bool)

(assert (=> b!4444157 m!5133749))

(assert (=> b!4443924 d!1349177))

(declare-fun d!1349179 () Bool)

(assert (=> d!1349179 (= (tail!7406 lm!1616) (ListLongMap!2344 (tail!7407 (toList!3693 lm!1616))))))

(declare-fun bs!765023 () Bool)

(assert (= bs!765023 d!1349179))

(assert (=> bs!765023 m!5133327))

(assert (=> b!4443924 d!1349179))

(declare-fun bs!765024 () Bool)

(declare-fun d!1349181 () Bool)

(assert (= bs!765024 (and d!1349181 d!1349081)))

(declare-fun lambda!157943 () Int)

(assert (=> bs!765024 (= lambda!157943 lambda!157872)))

(declare-fun bs!765025 () Bool)

(assert (= bs!765025 (and d!1349181 d!1349177)))

(assert (=> bs!765025 (= lambda!157943 lambda!157942)))

(declare-fun bs!765026 () Bool)

(assert (= bs!765026 (and d!1349181 d!1349089)))

(assert (=> bs!765026 (= lambda!157943 lambda!157888)))

(declare-fun bs!765027 () Bool)

(assert (= bs!765027 (and d!1349181 d!1349171)))

(assert (=> bs!765027 (= lambda!157943 lambda!157941)))

(declare-fun bs!765028 () Bool)

(assert (= bs!765028 (and d!1349181 start!435012)))

(assert (=> bs!765028 (= lambda!157943 lambda!157844)))

(declare-fun bs!765029 () Bool)

(assert (= bs!765029 (and d!1349181 d!1349149)))

(assert (=> bs!765029 (not (= lambda!157943 lambda!157935))))

(declare-fun lt!1638754 () ListMap!2937)

(assert (=> d!1349181 (invariantList!852 (toList!3694 lt!1638754))))

(declare-fun e!2767083 () ListMap!2937)

(assert (=> d!1349181 (= lt!1638754 e!2767083)))

(declare-fun c!756295 () Bool)

(assert (=> d!1349181 (= c!756295 ((_ is Cons!49837) (tail!7407 (toList!3693 lm!1616))))))

(assert (=> d!1349181 (forall!9732 (tail!7407 (toList!3693 lm!1616)) lambda!157943)))

(assert (=> d!1349181 (= (extractMap!914 (tail!7407 (toList!3693 lm!1616))) lt!1638754)))

(declare-fun b!4444159 () Bool)

(assert (=> b!4444159 (= e!2767083 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))))))

(declare-fun b!4444160 () Bool)

(assert (=> b!4444160 (= e!2767083 (ListMap!2938 Nil!49836))))

(assert (= (and d!1349181 c!756295) b!4444159))

(assert (= (and d!1349181 (not c!756295)) b!4444160))

(declare-fun m!5133751 () Bool)

(assert (=> d!1349181 m!5133751))

(assert (=> d!1349181 m!5133327))

(declare-fun m!5133753 () Bool)

(assert (=> d!1349181 m!5133753))

(declare-fun m!5133755 () Bool)

(assert (=> b!4444159 m!5133755))

(assert (=> b!4444159 m!5133755))

(declare-fun m!5133757 () Bool)

(assert (=> b!4444159 m!5133757))

(assert (=> b!4443924 d!1349181))

(declare-fun d!1349183 () Bool)

(assert (=> d!1349183 (= (tail!7407 (toList!3693 lm!1616)) (t!356903 (toList!3693 lm!1616)))))

(assert (=> b!4443924 d!1349183))

(declare-fun b!4444161 () Bool)

(declare-fun e!2767084 () Unit!84144)

(declare-fun lt!1638757 () Unit!84144)

(assert (=> b!4444161 (= e!2767084 lt!1638757)))

(declare-fun lt!1638758 () Unit!84144)

(assert (=> b!4444161 (= lt!1638758 (lemmaContainsKeyImpliesGetValueByKeyDefined!714 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(assert (=> b!4444161 (isDefined!8111 (getValueByKey!807 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(declare-fun lt!1638755 () Unit!84144)

(assert (=> b!4444161 (= lt!1638755 lt!1638758)))

(assert (=> b!4444161 (= lt!1638757 (lemmaInListThenGetKeysListContains!296 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(declare-fun call!309158 () Bool)

(assert (=> b!4444161 call!309158))

(declare-fun b!4444162 () Bool)

(declare-fun e!2767088 () Bool)

(declare-fun e!2767085 () Bool)

(assert (=> b!4444162 (= e!2767088 e!2767085)))

(declare-fun res!1840615 () Bool)

(assert (=> b!4444162 (=> (not res!1840615) (not e!2767085))))

(assert (=> b!4444162 (= res!1840615 (isDefined!8111 (getValueByKey!807 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717)))))

(declare-fun b!4444163 () Bool)

(declare-fun e!2767086 () List!49963)

(assert (=> b!4444163 (= e!2767086 (keys!17083 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))))

(declare-fun b!4444165 () Bool)

(declare-fun e!2767089 () Bool)

(assert (=> b!4444165 (= e!2767089 (not (contains!12419 (keys!17083 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717)))))

(declare-fun b!4444166 () Bool)

(assert (=> b!4444166 (= e!2767086 (getKeysList!299 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))

(declare-fun b!4444167 () Bool)

(declare-fun e!2767087 () Unit!84144)

(assert (=> b!4444167 (= e!2767084 e!2767087)))

(declare-fun c!756298 () Bool)

(assert (=> b!4444167 (= c!756298 call!309158)))

(declare-fun b!4444168 () Bool)

(assert (=> b!4444168 (= e!2767085 (contains!12419 (keys!17083 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(declare-fun bm!309153 () Bool)

(assert (=> bm!309153 (= call!309158 (contains!12419 e!2767086 key!3717))))

(declare-fun c!756297 () Bool)

(declare-fun c!756296 () Bool)

(assert (=> bm!309153 (= c!756297 c!756296)))

(declare-fun b!4444169 () Bool)

(declare-fun Unit!84180 () Unit!84144)

(assert (=> b!4444169 (= e!2767087 Unit!84180)))

(declare-fun d!1349185 () Bool)

(assert (=> d!1349185 e!2767088))

(declare-fun res!1840616 () Bool)

(assert (=> d!1349185 (=> res!1840616 e!2767088)))

(assert (=> d!1349185 (= res!1840616 e!2767089)))

(declare-fun res!1840617 () Bool)

(assert (=> d!1349185 (=> (not res!1840617) (not e!2767089))))

(declare-fun lt!1638762 () Bool)

(assert (=> d!1349185 (= res!1840617 (not lt!1638762))))

(declare-fun lt!1638756 () Bool)

(assert (=> d!1349185 (= lt!1638762 lt!1638756)))

(declare-fun lt!1638760 () Unit!84144)

(assert (=> d!1349185 (= lt!1638760 e!2767084)))

(assert (=> d!1349185 (= c!756296 lt!1638756)))

(assert (=> d!1349185 (= lt!1638756 (containsKey!1270 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(assert (=> d!1349185 (= (contains!12415 (extractMap!914 (tail!7407 (toList!3693 lm!1616))) key!3717) lt!1638762)))

(declare-fun b!4444164 () Bool)

(assert (=> b!4444164 false))

(declare-fun lt!1638759 () Unit!84144)

(declare-fun lt!1638761 () Unit!84144)

(assert (=> b!4444164 (= lt!1638759 lt!1638761)))

(assert (=> b!4444164 (containsKey!1270 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717)))

(assert (=> b!4444164 (= lt!1638761 (lemmaInGetKeysListThenContainsKey!297 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(declare-fun Unit!84181 () Unit!84144)

(assert (=> b!4444164 (= e!2767087 Unit!84181)))

(assert (= (and d!1349185 c!756296) b!4444161))

(assert (= (and d!1349185 (not c!756296)) b!4444167))

(assert (= (and b!4444167 c!756298) b!4444164))

(assert (= (and b!4444167 (not c!756298)) b!4444169))

(assert (= (or b!4444161 b!4444167) bm!309153))

(assert (= (and bm!309153 c!756297) b!4444166))

(assert (= (and bm!309153 (not c!756297)) b!4444163))

(assert (= (and d!1349185 res!1840617) b!4444165))

(assert (= (and d!1349185 (not res!1840616)) b!4444162))

(assert (= (and b!4444162 res!1840615) b!4444168))

(declare-fun m!5133759 () Bool)

(assert (=> bm!309153 m!5133759))

(assert (=> b!4444168 m!5133329))

(declare-fun m!5133761 () Bool)

(assert (=> b!4444168 m!5133761))

(assert (=> b!4444168 m!5133761))

(declare-fun m!5133763 () Bool)

(assert (=> b!4444168 m!5133763))

(assert (=> b!4444165 m!5133329))

(assert (=> b!4444165 m!5133761))

(assert (=> b!4444165 m!5133761))

(assert (=> b!4444165 m!5133763))

(declare-fun m!5133765 () Bool)

(assert (=> b!4444166 m!5133765))

(declare-fun m!5133767 () Bool)

(assert (=> d!1349185 m!5133767))

(declare-fun m!5133769 () Bool)

(assert (=> b!4444162 m!5133769))

(assert (=> b!4444162 m!5133769))

(declare-fun m!5133771 () Bool)

(assert (=> b!4444162 m!5133771))

(assert (=> b!4444163 m!5133329))

(assert (=> b!4444163 m!5133761))

(declare-fun m!5133773 () Bool)

(assert (=> b!4444161 m!5133773))

(assert (=> b!4444161 m!5133769))

(assert (=> b!4444161 m!5133769))

(assert (=> b!4444161 m!5133771))

(declare-fun m!5133775 () Bool)

(assert (=> b!4444161 m!5133775))

(assert (=> b!4444164 m!5133767))

(declare-fun m!5133777 () Bool)

(assert (=> b!4444164 m!5133777))

(assert (=> b!4443924 d!1349185))

(declare-fun d!1349187 () Bool)

(declare-fun head!9294 (List!49961) tuple2!49792)

(assert (=> d!1349187 (= (head!9292 lm!1616) (head!9294 (toList!3693 lm!1616)))))

(declare-fun bs!765030 () Bool)

(assert (= bs!765030 d!1349187))

(declare-fun m!5133779 () Bool)

(assert (=> bs!765030 m!5133779))

(assert (=> b!4443924 d!1349187))

(declare-fun bs!765031 () Bool)

(declare-fun d!1349189 () Bool)

(assert (= bs!765031 (and d!1349189 d!1349081)))

(declare-fun lambda!157944 () Int)

(assert (=> bs!765031 (= lambda!157944 lambda!157872)))

(declare-fun bs!765032 () Bool)

(assert (= bs!765032 (and d!1349189 d!1349177)))

(assert (=> bs!765032 (= lambda!157944 lambda!157942)))

(declare-fun bs!765033 () Bool)

(assert (= bs!765033 (and d!1349189 d!1349089)))

(assert (=> bs!765033 (= lambda!157944 lambda!157888)))

(declare-fun bs!765034 () Bool)

(assert (= bs!765034 (and d!1349189 d!1349181)))

(assert (=> bs!765034 (= lambda!157944 lambda!157943)))

(declare-fun bs!765035 () Bool)

(assert (= bs!765035 (and d!1349189 d!1349171)))

(assert (=> bs!765035 (= lambda!157944 lambda!157941)))

(declare-fun bs!765036 () Bool)

(assert (= bs!765036 (and d!1349189 start!435012)))

(assert (=> bs!765036 (= lambda!157944 lambda!157844)))

(declare-fun bs!765037 () Bool)

(assert (= bs!765037 (and d!1349189 d!1349149)))

(assert (=> bs!765037 (not (= lambda!157944 lambda!157935))))

(declare-fun lt!1638763 () ListMap!2937)

(assert (=> d!1349189 (invariantList!852 (toList!3694 lt!1638763))))

(declare-fun e!2767090 () ListMap!2937)

(assert (=> d!1349189 (= lt!1638763 e!2767090)))

(declare-fun c!756299 () Bool)

(assert (=> d!1349189 (= c!756299 ((_ is Cons!49837) (toList!3693 (+!1243 lt!1638453 lt!1638450))))))

(assert (=> d!1349189 (forall!9732 (toList!3693 (+!1243 lt!1638453 lt!1638450)) lambda!157944)))

(assert (=> d!1349189 (= (extractMap!914 (toList!3693 (+!1243 lt!1638453 lt!1638450))) lt!1638763)))

(declare-fun b!4444170 () Bool)

(assert (=> b!4444170 (= e!2767090 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))))))

(declare-fun b!4444171 () Bool)

(assert (=> b!4444171 (= e!2767090 (ListMap!2938 Nil!49836))))

(assert (= (and d!1349189 c!756299) b!4444170))

(assert (= (and d!1349189 (not c!756299)) b!4444171))

(declare-fun m!5133781 () Bool)

(assert (=> d!1349189 m!5133781))

(declare-fun m!5133783 () Bool)

(assert (=> d!1349189 m!5133783))

(declare-fun m!5133785 () Bool)

(assert (=> b!4444170 m!5133785))

(assert (=> b!4444170 m!5133785))

(declare-fun m!5133787 () Bool)

(assert (=> b!4444170 m!5133787))

(assert (=> b!4443924 d!1349189))

(declare-fun b!4444176 () Bool)

(declare-fun tp!1334380 () Bool)

(declare-fun e!2767093 () Bool)

(assert (=> b!4444176 (= e!2767093 (and tp_is_empty!26659 tp_is_empty!26657 tp!1334380))))

(assert (=> b!4443915 (= tp!1334368 e!2767093)))

(assert (= (and b!4443915 ((_ is Cons!49836) (t!356902 newBucket!194))) b!4444176))

(declare-fun b!4444181 () Bool)

(declare-fun e!2767096 () Bool)

(declare-fun tp!1334385 () Bool)

(declare-fun tp!1334386 () Bool)

(assert (=> b!4444181 (= e!2767096 (and tp!1334385 tp!1334386))))

(assert (=> b!4443920 (= tp!1334367 e!2767096)))

(assert (= (and b!4443920 ((_ is Cons!49837) (toList!3693 lm!1616))) b!4444181))

(declare-fun b_lambda!145339 () Bool)

(assert (= b_lambda!145333 (or start!435012 b_lambda!145339)))

(declare-fun bs!765038 () Bool)

(declare-fun d!1349191 () Bool)

(assert (= bs!765038 (and d!1349191 start!435012)))

(assert (=> bs!765038 (= (dynLambda!20922 lambda!157844 (h!55572 (toList!3693 lm!1616))) (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (=> bs!765038 m!5133651))

(assert (=> b!4444135 d!1349191))

(declare-fun b_lambda!145341 () Bool)

(assert (= b_lambda!145337 (or start!435012 b_lambda!145341)))

(declare-fun bs!765039 () Bool)

(declare-fun d!1349193 () Bool)

(assert (= bs!765039 (and d!1349193 start!435012)))

(assert (=> bs!765039 (= (dynLambda!20922 lambda!157844 (tuple2!49793 hash!366 newBucket!194)) (noDuplicateKeys!853 (_2!28190 (tuple2!49793 hash!366 newBucket!194))))))

(declare-fun m!5133789 () Bool)

(assert (=> bs!765039 m!5133789))

(assert (=> b!4444148 d!1349193))

(declare-fun b_lambda!145343 () Bool)

(assert (= b_lambda!145335 (or start!435012 b_lambda!145343)))

(declare-fun bs!765040 () Bool)

(declare-fun d!1349195 () Bool)

(assert (= bs!765040 (and d!1349195 start!435012)))

(assert (=> bs!765040 (= (dynLambda!20922 lambda!157844 (h!55572 (toList!3693 lt!1638445))) (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lt!1638445)))))))

(declare-fun m!5133791 () Bool)

(assert (=> bs!765040 m!5133791))

(assert (=> b!4444137 d!1349195))

(check-sat (not b!4444110) (not d!1349083) (not b!4444164) (not d!1349147) (not d!1349185) (not d!1349165) (not d!1349159) (not b_lambda!145341) (not b!4444155) (not b!4443952) (not b!4444136) tp_is_empty!26659 tp_is_empty!26657 (not b!4443959) (not bm!309152) (not bm!309150) (not bm!309130) (not b!4444157) (not b!4444143) (not b!4444129) (not b_lambda!145339) (not d!1349173) (not d!1349079) (not d!1349187) (not bm!309151) (not b!4443998) (not d!1349171) (not bm!309153) (not b!4444138) (not b!4444176) (not d!1349089) (not d!1349101) (not d!1349153) (not d!1349151) (not b!4444130) (not b!4443996) (not d!1349177) (not b!4444156) (not b!4443954) (not d!1349163) (not b!4444181) (not b!4444144) (not b!4444112) (not b!4443969) (not bs!765038) (not bs!765040) (not d!1349175) (not b!4443955) (not b!4444159) (not b!4444166) (not b!4444161) (not b!4444118) (not d!1349149) (not d!1349081) (not b!4444165) (not b!4444162) (not b!4443953) (not d!1349189) (not d!1349099) (not d!1349181) (not b!4444170) (not b!4443957) (not d!1349167) (not b!4444153) (not b!4444168) (not bs!765039) (not b!4443956) (not b_lambda!145343) (not b!4444111) (not b!4444113) (not b!4444116) (not d!1349169) (not b!4444163) (not b!4444154) (not d!1349179))
(check-sat)
(get-model)

(declare-fun b!4444473 () Bool)

(declare-fun e!2767278 () Option!10822)

(declare-fun e!2767279 () Option!10822)

(assert (=> b!4444473 (= e!2767278 e!2767279)))

(declare-fun c!756375 () Bool)

(assert (=> b!4444473 (= c!756375 (and ((_ is Cons!49837) (toList!3693 lt!1638751)) (not (= (_1!28190 (h!55572 (toList!3693 lt!1638751))) (_1!28190 lt!1638450)))))))

(declare-fun d!1349343 () Bool)

(declare-fun c!756374 () Bool)

(assert (=> d!1349343 (= c!756374 (and ((_ is Cons!49837) (toList!3693 lt!1638751)) (= (_1!28190 (h!55572 (toList!3693 lt!1638751))) (_1!28190 lt!1638450))))))

(assert (=> d!1349343 (= (getValueByKey!808 (toList!3693 lt!1638751) (_1!28190 lt!1638450)) e!2767278)))

(declare-fun b!4444474 () Bool)

(assert (=> b!4444474 (= e!2767279 (getValueByKey!808 (t!356903 (toList!3693 lt!1638751)) (_1!28190 lt!1638450)))))

(declare-fun b!4444472 () Bool)

(assert (=> b!4444472 (= e!2767278 (Some!10821 (_2!28190 (h!55572 (toList!3693 lt!1638751)))))))

(declare-fun b!4444475 () Bool)

(assert (=> b!4444475 (= e!2767279 None!10821)))

(assert (= (and d!1349343 c!756374) b!4444472))

(assert (= (and d!1349343 (not c!756374)) b!4444473))

(assert (= (and b!4444473 c!756375) b!4444474))

(assert (= (and b!4444473 (not c!756375)) b!4444475))

(declare-fun m!5134285 () Bool)

(assert (=> b!4444474 m!5134285))

(assert (=> b!4444155 d!1349343))

(declare-fun d!1349357 () Bool)

(declare-fun lt!1638927 () Bool)

(assert (=> d!1349357 (= lt!1638927 (select (content!8017 (toList!3694 lt!1638743)) (tuple2!49791 key!3717 newValue!93)))))

(declare-fun e!2767291 () Bool)

(assert (=> d!1349357 (= lt!1638927 e!2767291)))

(declare-fun res!1840765 () Bool)

(assert (=> d!1349357 (=> (not res!1840765) (not e!2767291))))

(assert (=> d!1349357 (= res!1840765 ((_ is Cons!49836) (toList!3694 lt!1638743)))))

(assert (=> d!1349357 (= (contains!12421 (toList!3694 lt!1638743) (tuple2!49791 key!3717 newValue!93)) lt!1638927)))

(declare-fun b!4444486 () Bool)

(declare-fun e!2767290 () Bool)

(assert (=> b!4444486 (= e!2767291 e!2767290)))

(declare-fun res!1840766 () Bool)

(assert (=> b!4444486 (=> res!1840766 e!2767290)))

(assert (=> b!4444486 (= res!1840766 (= (h!55571 (toList!3694 lt!1638743)) (tuple2!49791 key!3717 newValue!93)))))

(declare-fun b!4444487 () Bool)

(assert (=> b!4444487 (= e!2767290 (contains!12421 (t!356902 (toList!3694 lt!1638743)) (tuple2!49791 key!3717 newValue!93)))))

(assert (= (and d!1349357 res!1840765) b!4444486))

(assert (= (and b!4444486 (not res!1840766)) b!4444487))

(declare-fun m!5134289 () Bool)

(assert (=> d!1349357 m!5134289))

(declare-fun m!5134291 () Bool)

(assert (=> d!1349357 m!5134291))

(declare-fun m!5134293 () Bool)

(assert (=> b!4444487 m!5134293))

(assert (=> b!4444154 d!1349357))

(declare-fun d!1349361 () Bool)

(declare-fun noDuplicatedKeys!195 (List!49960) Bool)

(assert (=> d!1349361 (= (invariantList!852 (toList!3694 lt!1638754)) (noDuplicatedKeys!195 (toList!3694 lt!1638754)))))

(declare-fun bs!765215 () Bool)

(assert (= bs!765215 d!1349361))

(declare-fun m!5134295 () Bool)

(assert (=> bs!765215 m!5134295))

(assert (=> d!1349181 d!1349361))

(declare-fun d!1349363 () Bool)

(declare-fun res!1840771 () Bool)

(declare-fun e!2767296 () Bool)

(assert (=> d!1349363 (=> res!1840771 e!2767296)))

(assert (=> d!1349363 (= res!1840771 ((_ is Nil!49837) (tail!7407 (toList!3693 lm!1616))))))

(assert (=> d!1349363 (= (forall!9732 (tail!7407 (toList!3693 lm!1616)) lambda!157943) e!2767296)))

(declare-fun b!4444492 () Bool)

(declare-fun e!2767297 () Bool)

(assert (=> b!4444492 (= e!2767296 e!2767297)))

(declare-fun res!1840772 () Bool)

(assert (=> b!4444492 (=> (not res!1840772) (not e!2767297))))

(assert (=> b!4444492 (= res!1840772 (dynLambda!20922 lambda!157943 (h!55572 (tail!7407 (toList!3693 lm!1616)))))))

(declare-fun b!4444493 () Bool)

(assert (=> b!4444493 (= e!2767297 (forall!9732 (t!356903 (tail!7407 (toList!3693 lm!1616))) lambda!157943))))

(assert (= (and d!1349363 (not res!1840771)) b!4444492))

(assert (= (and b!4444492 res!1840772) b!4444493))

(declare-fun b_lambda!145369 () Bool)

(assert (=> (not b_lambda!145369) (not b!4444492)))

(declare-fun m!5134297 () Bool)

(assert (=> b!4444492 m!5134297))

(declare-fun m!5134299 () Bool)

(assert (=> b!4444493 m!5134299))

(assert (=> d!1349181 d!1349363))

(declare-fun d!1349365 () Bool)

(declare-fun lt!1638933 () Bool)

(declare-fun content!8019 (List!49963) (InoxSet K!11205))

(assert (=> d!1349365 (= lt!1638933 (select (content!8019 e!2766957) key!3717))))

(declare-fun e!2767310 () Bool)

(assert (=> d!1349365 (= lt!1638933 e!2767310)))

(declare-fun res!1840785 () Bool)

(assert (=> d!1349365 (=> (not res!1840785) (not e!2767310))))

(assert (=> d!1349365 (= res!1840785 ((_ is Cons!49839) e!2766957))))

(assert (=> d!1349365 (= (contains!12419 e!2766957 key!3717) lt!1638933)))

(declare-fun b!4444506 () Bool)

(declare-fun e!2767311 () Bool)

(assert (=> b!4444506 (= e!2767310 e!2767311)))

(declare-fun res!1840786 () Bool)

(assert (=> b!4444506 (=> res!1840786 e!2767311)))

(assert (=> b!4444506 (= res!1840786 (= (h!55576 e!2766957) key!3717))))

(declare-fun b!4444507 () Bool)

(assert (=> b!4444507 (= e!2767311 (contains!12419 (t!356905 e!2766957) key!3717))))

(assert (= (and d!1349365 res!1840785) b!4444506))

(assert (= (and b!4444506 (not res!1840786)) b!4444507))

(declare-fun m!5134323 () Bool)

(assert (=> d!1349365 m!5134323))

(declare-fun m!5134325 () Bool)

(assert (=> d!1349365 m!5134325))

(declare-fun m!5134327 () Bool)

(assert (=> b!4444507 m!5134327))

(assert (=> bm!309130 d!1349365))

(declare-fun d!1349379 () Bool)

(assert (=> d!1349379 (= (invariantList!852 (toList!3694 lt!1638524)) (noDuplicatedKeys!195 (toList!3694 lt!1638524)))))

(declare-fun bs!765218 () Bool)

(assert (= bs!765218 d!1349379))

(declare-fun m!5134331 () Bool)

(assert (=> bs!765218 m!5134331))

(assert (=> d!1349081 d!1349379))

(declare-fun d!1349383 () Bool)

(declare-fun res!1840788 () Bool)

(declare-fun e!2767313 () Bool)

(assert (=> d!1349383 (=> res!1840788 e!2767313)))

(assert (=> d!1349383 (= res!1840788 ((_ is Nil!49837) (toList!3693 lm!1616)))))

(assert (=> d!1349383 (= (forall!9732 (toList!3693 lm!1616) lambda!157872) e!2767313)))

(declare-fun b!4444509 () Bool)

(declare-fun e!2767314 () Bool)

(assert (=> b!4444509 (= e!2767313 e!2767314)))

(declare-fun res!1840789 () Bool)

(assert (=> b!4444509 (=> (not res!1840789) (not e!2767314))))

(assert (=> b!4444509 (= res!1840789 (dynLambda!20922 lambda!157872 (h!55572 (toList!3693 lm!1616))))))

(declare-fun b!4444510 () Bool)

(assert (=> b!4444510 (= e!2767314 (forall!9732 (t!356903 (toList!3693 lm!1616)) lambda!157872))))

(assert (= (and d!1349383 (not res!1840788)) b!4444509))

(assert (= (and b!4444509 res!1840789) b!4444510))

(declare-fun b_lambda!145377 () Bool)

(assert (=> (not b_lambda!145377) (not b!4444509)))

(declare-fun m!5134335 () Bool)

(assert (=> b!4444509 m!5134335))

(declare-fun m!5134337 () Bool)

(assert (=> b!4444510 m!5134337))

(assert (=> d!1349081 d!1349383))

(declare-fun d!1349387 () Bool)

(assert (=> d!1349387 (= (invariantList!852 (toList!3694 lt!1638763)) (noDuplicatedKeys!195 (toList!3694 lt!1638763)))))

(declare-fun bs!765220 () Bool)

(assert (= bs!765220 d!1349387))

(declare-fun m!5134341 () Bool)

(assert (=> bs!765220 m!5134341))

(assert (=> d!1349189 d!1349387))

(declare-fun d!1349391 () Bool)

(declare-fun res!1840792 () Bool)

(declare-fun e!2767319 () Bool)

(assert (=> d!1349391 (=> res!1840792 e!2767319)))

(assert (=> d!1349391 (= res!1840792 ((_ is Nil!49837) (toList!3693 (+!1243 lt!1638453 lt!1638450))))))

(assert (=> d!1349391 (= (forall!9732 (toList!3693 (+!1243 lt!1638453 lt!1638450)) lambda!157944) e!2767319)))

(declare-fun b!4444517 () Bool)

(declare-fun e!2767320 () Bool)

(assert (=> b!4444517 (= e!2767319 e!2767320)))

(declare-fun res!1840793 () Bool)

(assert (=> b!4444517 (=> (not res!1840793) (not e!2767320))))

(assert (=> b!4444517 (= res!1840793 (dynLambda!20922 lambda!157944 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))))

(declare-fun b!4444518 () Bool)

(assert (=> b!4444518 (= e!2767320 (forall!9732 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))) lambda!157944))))

(assert (= (and d!1349391 (not res!1840792)) b!4444517))

(assert (= (and b!4444517 res!1840793) b!4444518))

(declare-fun b_lambda!145381 () Bool)

(assert (=> (not b_lambda!145381) (not b!4444517)))

(declare-fun m!5134343 () Bool)

(assert (=> b!4444517 m!5134343))

(declare-fun m!5134345 () Bool)

(assert (=> b!4444518 m!5134345))

(assert (=> d!1349189 d!1349391))

(declare-fun d!1349393 () Bool)

(declare-fun res!1840794 () Bool)

(declare-fun e!2767321 () Bool)

(assert (=> d!1349393 (=> res!1840794 e!2767321)))

(assert (=> d!1349393 (= res!1840794 (not ((_ is Cons!49836) (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> d!1349393 (= (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lm!1616)))) e!2767321)))

(declare-fun b!4444519 () Bool)

(declare-fun e!2767322 () Bool)

(assert (=> b!4444519 (= e!2767321 e!2767322)))

(declare-fun res!1840795 () Bool)

(assert (=> b!4444519 (=> (not res!1840795) (not e!2767322))))

(assert (=> b!4444519 (= res!1840795 (not (containsKey!1272 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))))

(declare-fun b!4444520 () Bool)

(assert (=> b!4444520 (= e!2767322 (noDuplicateKeys!853 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (= (and d!1349393 (not res!1840794)) b!4444519))

(assert (= (and b!4444519 res!1840795) b!4444520))

(declare-fun m!5134349 () Bool)

(assert (=> b!4444519 m!5134349))

(declare-fun m!5134353 () Bool)

(assert (=> b!4444520 m!5134353))

(assert (=> bs!765038 d!1349393))

(declare-fun d!1349395 () Bool)

(declare-fun res!1840803 () Bool)

(declare-fun e!2767330 () Bool)

(assert (=> d!1349395 (=> res!1840803 e!2767330)))

(assert (=> d!1349395 (= res!1840803 (or ((_ is Nil!49837) (toList!3693 lm!1616)) ((_ is Nil!49837) (t!356903 (toList!3693 lm!1616)))))))

(assert (=> d!1349395 (= (isStrictlySorted!278 (toList!3693 lm!1616)) e!2767330)))

(declare-fun b!4444530 () Bool)

(declare-fun e!2767331 () Bool)

(assert (=> b!4444530 (= e!2767330 e!2767331)))

(declare-fun res!1840804 () Bool)

(assert (=> b!4444530 (=> (not res!1840804) (not e!2767331))))

(assert (=> b!4444530 (= res!1840804 (bvslt (_1!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 (h!55572 (t!356903 (toList!3693 lm!1616))))))))

(declare-fun b!4444531 () Bool)

(assert (=> b!4444531 (= e!2767331 (isStrictlySorted!278 (t!356903 (toList!3693 lm!1616))))))

(assert (= (and d!1349395 (not res!1840803)) b!4444530))

(assert (= (and b!4444530 res!1840804) b!4444531))

(declare-fun m!5134355 () Bool)

(assert (=> b!4444531 m!5134355))

(assert (=> d!1349159 d!1349395))

(declare-fun d!1349399 () Bool)

(declare-fun e!2767332 () Bool)

(assert (=> d!1349399 e!2767332))

(declare-fun res!1840805 () Bool)

(assert (=> d!1349399 (=> res!1840805 e!2767332)))

(declare-fun lt!1638957 () Bool)

(assert (=> d!1349399 (= res!1840805 (not lt!1638957))))

(declare-fun lt!1638956 () Bool)

(assert (=> d!1349399 (= lt!1638957 lt!1638956)))

(declare-fun lt!1638958 () Unit!84144)

(declare-fun e!2767333 () Unit!84144)

(assert (=> d!1349399 (= lt!1638958 e!2767333)))

(declare-fun c!756379 () Bool)

(assert (=> d!1349399 (= c!756379 lt!1638956)))

(assert (=> d!1349399 (= lt!1638956 (containsKey!1271 (toList!3693 lt!1638729) (_1!28190 lt!1638450)))))

(assert (=> d!1349399 (= (contains!12414 lt!1638729 (_1!28190 lt!1638450)) lt!1638957)))

(declare-fun b!4444532 () Bool)

(declare-fun lt!1638959 () Unit!84144)

(assert (=> b!4444532 (= e!2767333 lt!1638959)))

(assert (=> b!4444532 (= lt!1638959 (lemmaContainsKeyImpliesGetValueByKeyDefined!715 (toList!3693 lt!1638729) (_1!28190 lt!1638450)))))

(assert (=> b!4444532 (isDefined!8112 (getValueByKey!808 (toList!3693 lt!1638729) (_1!28190 lt!1638450)))))

(declare-fun b!4444533 () Bool)

(declare-fun Unit!84215 () Unit!84144)

(assert (=> b!4444533 (= e!2767333 Unit!84215)))

(declare-fun b!4444534 () Bool)

(assert (=> b!4444534 (= e!2767332 (isDefined!8112 (getValueByKey!808 (toList!3693 lt!1638729) (_1!28190 lt!1638450))))))

(assert (= (and d!1349399 c!756379) b!4444532))

(assert (= (and d!1349399 (not c!756379)) b!4444533))

(assert (= (and d!1349399 (not res!1840805)) b!4444534))

(declare-fun m!5134357 () Bool)

(assert (=> d!1349399 m!5134357))

(declare-fun m!5134359 () Bool)

(assert (=> b!4444532 m!5134359))

(assert (=> b!4444532 m!5133689))

(assert (=> b!4444532 m!5133689))

(declare-fun m!5134361 () Bool)

(assert (=> b!4444532 m!5134361))

(assert (=> b!4444534 m!5133689))

(assert (=> b!4444534 m!5133689))

(assert (=> b!4444534 m!5134361))

(assert (=> d!1349163 d!1349399))

(declare-fun b!4444536 () Bool)

(declare-fun e!2767334 () Option!10822)

(declare-fun e!2767335 () Option!10822)

(assert (=> b!4444536 (= e!2767334 e!2767335)))

(declare-fun c!756381 () Bool)

(assert (=> b!4444536 (= c!756381 (and ((_ is Cons!49837) lt!1638727) (not (= (_1!28190 (h!55572 lt!1638727)) (_1!28190 lt!1638450)))))))

(declare-fun d!1349401 () Bool)

(declare-fun c!756380 () Bool)

(assert (=> d!1349401 (= c!756380 (and ((_ is Cons!49837) lt!1638727) (= (_1!28190 (h!55572 lt!1638727)) (_1!28190 lt!1638450))))))

(assert (=> d!1349401 (= (getValueByKey!808 lt!1638727 (_1!28190 lt!1638450)) e!2767334)))

(declare-fun b!4444537 () Bool)

(assert (=> b!4444537 (= e!2767335 (getValueByKey!808 (t!356903 lt!1638727) (_1!28190 lt!1638450)))))

(declare-fun b!4444535 () Bool)

(assert (=> b!4444535 (= e!2767334 (Some!10821 (_2!28190 (h!55572 lt!1638727))))))

(declare-fun b!4444538 () Bool)

(assert (=> b!4444538 (= e!2767335 None!10821)))

(assert (= (and d!1349401 c!756380) b!4444535))

(assert (= (and d!1349401 (not c!756380)) b!4444536))

(assert (= (and b!4444536 c!756381) b!4444537))

(assert (= (and b!4444536 (not c!756381)) b!4444538))

(declare-fun m!5134363 () Bool)

(assert (=> b!4444537 m!5134363))

(assert (=> d!1349163 d!1349401))

(declare-fun d!1349403 () Bool)

(assert (=> d!1349403 (= (getValueByKey!808 lt!1638727 (_1!28190 lt!1638450)) (Some!10821 (_2!28190 lt!1638450)))))

(declare-fun lt!1638962 () Unit!84144)

(declare-fun choose!28248 (List!49961 (_ BitVec 64) List!49960) Unit!84144)

(assert (=> d!1349403 (= lt!1638962 (choose!28248 lt!1638727 (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))

(declare-fun e!2767338 () Bool)

(assert (=> d!1349403 e!2767338))

(declare-fun res!1840810 () Bool)

(assert (=> d!1349403 (=> (not res!1840810) (not e!2767338))))

(assert (=> d!1349403 (= res!1840810 (isStrictlySorted!278 lt!1638727))))

(assert (=> d!1349403 (= (lemmaContainsTupThenGetReturnValue!523 lt!1638727 (_1!28190 lt!1638450) (_2!28190 lt!1638450)) lt!1638962)))

(declare-fun b!4444543 () Bool)

(declare-fun res!1840811 () Bool)

(assert (=> b!4444543 (=> (not res!1840811) (not e!2767338))))

(assert (=> b!4444543 (= res!1840811 (containsKey!1271 lt!1638727 (_1!28190 lt!1638450)))))

(declare-fun b!4444544 () Bool)

(assert (=> b!4444544 (= e!2767338 (contains!12420 lt!1638727 (tuple2!49793 (_1!28190 lt!1638450) (_2!28190 lt!1638450))))))

(assert (= (and d!1349403 res!1840810) b!4444543))

(assert (= (and b!4444543 res!1840811) b!4444544))

(assert (=> d!1349403 m!5133683))

(declare-fun m!5134365 () Bool)

(assert (=> d!1349403 m!5134365))

(declare-fun m!5134367 () Bool)

(assert (=> d!1349403 m!5134367))

(declare-fun m!5134369 () Bool)

(assert (=> b!4444543 m!5134369))

(declare-fun m!5134371 () Bool)

(assert (=> b!4444544 m!5134371))

(assert (=> d!1349163 d!1349403))

(declare-fun b!4444588 () Bool)

(declare-fun e!2767365 () List!49961)

(declare-fun call!309191 () List!49961)

(assert (=> b!4444588 (= e!2767365 call!309191)))

(declare-fun b!4444589 () Bool)

(declare-fun e!2767367 () List!49961)

(assert (=> b!4444589 (= e!2767367 (insertStrictlySorted!306 (t!356903 (toList!3693 lm!1616)) (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))

(declare-fun bm!309186 () Bool)

(declare-fun call!309193 () List!49961)

(assert (=> bm!309186 (= call!309193 call!309191)))

(declare-fun b!4444590 () Bool)

(declare-fun e!2767363 () Bool)

(declare-fun lt!1638978 () List!49961)

(assert (=> b!4444590 (= e!2767363 (contains!12420 lt!1638978 (tuple2!49793 (_1!28190 lt!1638450) (_2!28190 lt!1638450))))))

(declare-fun b!4444591 () Bool)

(declare-fun e!2767364 () List!49961)

(assert (=> b!4444591 (= e!2767364 call!309193)))

(declare-fun bm!309187 () Bool)

(declare-fun c!756397 () Bool)

(declare-fun $colon$colon!817 (List!49961 tuple2!49792) List!49961)

(assert (=> bm!309187 (= call!309191 ($colon$colon!817 e!2767367 (ite c!756397 (h!55572 (toList!3693 lm!1616)) (tuple2!49793 (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))))

(declare-fun c!756399 () Bool)

(assert (=> bm!309187 (= c!756399 c!756397)))

(declare-fun b!4444592 () Bool)

(assert (=> b!4444592 (= e!2767365 e!2767364)))

(declare-fun c!756398 () Bool)

(assert (=> b!4444592 (= c!756398 (and ((_ is Cons!49837) (toList!3693 lm!1616)) (= (_1!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 lt!1638450))))))

(declare-fun bm!309188 () Bool)

(declare-fun call!309192 () List!49961)

(assert (=> bm!309188 (= call!309192 call!309193)))

(declare-fun c!756396 () Bool)

(declare-fun b!4444594 () Bool)

(assert (=> b!4444594 (= e!2767367 (ite c!756398 (t!356903 (toList!3693 lm!1616)) (ite c!756396 (Cons!49837 (h!55572 (toList!3693 lm!1616)) (t!356903 (toList!3693 lm!1616))) Nil!49837)))))

(declare-fun b!4444595 () Bool)

(declare-fun e!2767366 () List!49961)

(assert (=> b!4444595 (= e!2767366 call!309192)))

(declare-fun b!4444596 () Bool)

(assert (=> b!4444596 (= e!2767366 call!309192)))

(declare-fun b!4444597 () Bool)

(declare-fun res!1840828 () Bool)

(assert (=> b!4444597 (=> (not res!1840828) (not e!2767363))))

(assert (=> b!4444597 (= res!1840828 (containsKey!1271 lt!1638978 (_1!28190 lt!1638450)))))

(declare-fun b!4444593 () Bool)

(assert (=> b!4444593 (= c!756396 (and ((_ is Cons!49837) (toList!3693 lm!1616)) (bvsgt (_1!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 lt!1638450))))))

(assert (=> b!4444593 (= e!2767364 e!2767366)))

(declare-fun d!1349405 () Bool)

(assert (=> d!1349405 e!2767363))

(declare-fun res!1840827 () Bool)

(assert (=> d!1349405 (=> (not res!1840827) (not e!2767363))))

(assert (=> d!1349405 (= res!1840827 (isStrictlySorted!278 lt!1638978))))

(assert (=> d!1349405 (= lt!1638978 e!2767365)))

(assert (=> d!1349405 (= c!756397 (and ((_ is Cons!49837) (toList!3693 lm!1616)) (bvslt (_1!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 lt!1638450))))))

(assert (=> d!1349405 (isStrictlySorted!278 (toList!3693 lm!1616))))

(assert (=> d!1349405 (= (insertStrictlySorted!306 (toList!3693 lm!1616) (_1!28190 lt!1638450) (_2!28190 lt!1638450)) lt!1638978)))

(assert (= (and d!1349405 c!756397) b!4444588))

(assert (= (and d!1349405 (not c!756397)) b!4444592))

(assert (= (and b!4444592 c!756398) b!4444591))

(assert (= (and b!4444592 (not c!756398)) b!4444593))

(assert (= (and b!4444593 c!756396) b!4444595))

(assert (= (and b!4444593 (not c!756396)) b!4444596))

(assert (= (or b!4444595 b!4444596) bm!309188))

(assert (= (or b!4444591 bm!309188) bm!309186))

(assert (= (or b!4444588 bm!309186) bm!309187))

(assert (= (and bm!309187 c!756399) b!4444589))

(assert (= (and bm!309187 (not c!756399)) b!4444594))

(assert (= (and d!1349405 res!1840827) b!4444597))

(assert (= (and b!4444597 res!1840828) b!4444590))

(declare-fun m!5134451 () Bool)

(assert (=> b!4444597 m!5134451))

(declare-fun m!5134453 () Bool)

(assert (=> b!4444590 m!5134453))

(declare-fun m!5134455 () Bool)

(assert (=> b!4444589 m!5134455))

(declare-fun m!5134457 () Bool)

(assert (=> bm!309187 m!5134457))

(declare-fun m!5134459 () Bool)

(assert (=> d!1349405 m!5134459))

(assert (=> d!1349405 m!5133675))

(assert (=> d!1349163 d!1349405))

(declare-fun bs!765278 () Bool)

(declare-fun b!4444598 () Bool)

(assert (= bs!765278 (and b!4444598 b!4444112)))

(declare-fun lambda!157993 () Int)

(assert (=> bs!765278 (= (= (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1638694) (= lambda!157993 lambda!157931))))

(declare-fun bs!765279 () Bool)

(assert (= bs!765279 (and b!4444598 b!4444109)))

(assert (=> bs!765279 (= (= (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1638452) (= lambda!157993 lambda!157929))))

(declare-fun bs!765280 () Bool)

(assert (= bs!765280 (and b!4444598 d!1349101)))

(assert (=> bs!765280 (= (= (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1638707) (= lambda!157993 lambda!157932))))

(assert (=> bs!765278 (= (= (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1638452) (= lambda!157993 lambda!157930))))

(declare-fun bs!765281 () Bool)

(assert (= bs!765281 (and b!4444598 d!1349151)))

(assert (=> bs!765281 (not (= lambda!157993 lambda!157938))))

(assert (=> b!4444598 true))

(declare-fun bs!765282 () Bool)

(declare-fun b!4444601 () Bool)

(assert (= bs!765282 (and b!4444601 b!4444112)))

(declare-fun lambda!157994 () Int)

(assert (=> bs!765282 (= (= (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1638694) (= lambda!157994 lambda!157931))))

(declare-fun bs!765283 () Bool)

(assert (= bs!765283 (and b!4444601 b!4444109)))

(assert (=> bs!765283 (= (= (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1638452) (= lambda!157994 lambda!157929))))

(declare-fun bs!765284 () Bool)

(assert (= bs!765284 (and b!4444601 d!1349101)))

(assert (=> bs!765284 (= (= (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1638707) (= lambda!157994 lambda!157932))))

(assert (=> bs!765282 (= (= (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1638452) (= lambda!157994 lambda!157930))))

(declare-fun bs!765285 () Bool)

(assert (= bs!765285 (and b!4444601 d!1349151)))

(assert (=> bs!765285 (not (= lambda!157994 lambda!157938))))

(declare-fun bs!765286 () Bool)

(assert (= bs!765286 (and b!4444601 b!4444598)))

(assert (=> bs!765286 (= lambda!157994 lambda!157993)))

(assert (=> b!4444601 true))

(declare-fun lt!1638979 () ListMap!2937)

(declare-fun lambda!157995 () Int)

(assert (=> bs!765282 (= (= lt!1638979 lt!1638694) (= lambda!157995 lambda!157931))))

(assert (=> bs!765283 (= (= lt!1638979 lt!1638452) (= lambda!157995 lambda!157929))))

(assert (=> bs!765284 (= (= lt!1638979 lt!1638707) (= lambda!157995 lambda!157932))))

(assert (=> bs!765282 (= (= lt!1638979 lt!1638452) (= lambda!157995 lambda!157930))))

(assert (=> b!4444601 (= (= lt!1638979 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!157995 lambda!157994))))

(assert (=> bs!765285 (not (= lambda!157995 lambda!157938))))

(assert (=> bs!765286 (= (= lt!1638979 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!157995 lambda!157993))))

(assert (=> b!4444601 true))

(declare-fun bs!765287 () Bool)

(declare-fun d!1349419 () Bool)

(assert (= bs!765287 (and d!1349419 b!4444112)))

(declare-fun lt!1638992 () ListMap!2937)

(declare-fun lambda!157996 () Int)

(assert (=> bs!765287 (= (= lt!1638992 lt!1638694) (= lambda!157996 lambda!157931))))

(declare-fun bs!765288 () Bool)

(assert (= bs!765288 (and d!1349419 b!4444109)))

(assert (=> bs!765288 (= (= lt!1638992 lt!1638452) (= lambda!157996 lambda!157929))))

(declare-fun bs!765289 () Bool)

(assert (= bs!765289 (and d!1349419 d!1349101)))

(assert (=> bs!765289 (= (= lt!1638992 lt!1638707) (= lambda!157996 lambda!157932))))

(assert (=> bs!765287 (= (= lt!1638992 lt!1638452) (= lambda!157996 lambda!157930))))

(declare-fun bs!765290 () Bool)

(assert (= bs!765290 (and d!1349419 b!4444601)))

(assert (=> bs!765290 (= (= lt!1638992 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!157996 lambda!157994))))

(declare-fun bs!765291 () Bool)

(assert (= bs!765291 (and d!1349419 d!1349151)))

(assert (=> bs!765291 (not (= lambda!157996 lambda!157938))))

(declare-fun bs!765292 () Bool)

(assert (= bs!765292 (and d!1349419 b!4444598)))

(assert (=> bs!765292 (= (= lt!1638992 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!157996 lambda!157993))))

(assert (=> bs!765290 (= (= lt!1638992 lt!1638979) (= lambda!157996 lambda!157995))))

(assert (=> d!1349419 true))

(declare-fun e!2767369 () ListMap!2937)

(assert (=> b!4444598 (= e!2767369 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))))))

(declare-fun lt!1638985 () Unit!84144)

(declare-fun call!309196 () Unit!84144)

(assert (=> b!4444598 (= lt!1638985 call!309196)))

(declare-fun call!309195 () Bool)

(assert (=> b!4444598 call!309195))

(declare-fun lt!1638990 () Unit!84144)

(assert (=> b!4444598 (= lt!1638990 lt!1638985)))

(declare-fun call!309194 () Bool)

(assert (=> b!4444598 call!309194))

(declare-fun lt!1638996 () Unit!84144)

(declare-fun Unit!84216 () Unit!84144)

(assert (=> b!4444598 (= lt!1638996 Unit!84216)))

(declare-fun b!4444599 () Bool)

(declare-fun res!1840829 () Bool)

(declare-fun e!2767370 () Bool)

(assert (=> b!4444599 (=> (not res!1840829) (not e!2767370))))

(assert (=> b!4444599 (= res!1840829 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) lambda!157996))))

(declare-fun bm!309189 () Bool)

(assert (=> bm!309189 (= call!309196 (lemmaContainsAllItsOwnKeys!209 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))))))

(declare-fun c!756400 () Bool)

(declare-fun bm!309190 () Bool)

(assert (=> bm!309190 (= call!309195 (forall!9734 (ite c!756400 (toList!3694 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616))))) (ite c!756400 lambda!157993 lambda!157995)))))

(declare-fun bm!309191 () Bool)

(assert (=> bm!309191 (= call!309194 (forall!9734 (ite c!756400 (toList!3694 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (t!356902 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))))) (ite c!756400 lambda!157993 lambda!157995)))))

(assert (=> d!1349419 e!2767370))

(declare-fun res!1840831 () Bool)

(assert (=> d!1349419 (=> (not res!1840831) (not e!2767370))))

(assert (=> d!1349419 (= res!1840831 (forall!9734 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))) lambda!157996))))

(assert (=> d!1349419 (= lt!1638992 e!2767369)))

(assert (=> d!1349419 (= c!756400 ((_ is Nil!49836) (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616))))))))

(assert (=> d!1349419 (noDuplicateKeys!853 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))))))

(assert (=> d!1349419 (= (addToMapMapFromBucket!459 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) lt!1638992)))

(declare-fun b!4444600 () Bool)

(assert (=> b!4444600 (= e!2767370 (invariantList!852 (toList!3694 lt!1638992)))))

(assert (=> b!4444601 (= e!2767369 lt!1638979)))

(declare-fun lt!1638988 () ListMap!2937)

(assert (=> b!4444601 (= lt!1638988 (+!1244 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) (h!55571 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))))))))

(assert (=> b!4444601 (= lt!1638979 (addToMapMapFromBucket!459 (t!356902 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616))))) (+!1244 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) (h!55571 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616))))))))))

(declare-fun lt!1638980 () Unit!84144)

(assert (=> b!4444601 (= lt!1638980 call!309196)))

(assert (=> b!4444601 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) lambda!157994)))

(declare-fun lt!1638989 () Unit!84144)

(assert (=> b!4444601 (= lt!1638989 lt!1638980)))

(assert (=> b!4444601 (forall!9734 (toList!3694 lt!1638988) lambda!157995)))

(declare-fun lt!1638987 () Unit!84144)

(declare-fun Unit!84217 () Unit!84144)

(assert (=> b!4444601 (= lt!1638987 Unit!84217)))

(assert (=> b!4444601 call!309194))

(declare-fun lt!1638982 () Unit!84144)

(declare-fun Unit!84218 () Unit!84144)

(assert (=> b!4444601 (= lt!1638982 Unit!84218)))

(declare-fun lt!1638981 () Unit!84144)

(declare-fun Unit!84219 () Unit!84144)

(assert (=> b!4444601 (= lt!1638981 Unit!84219)))

(declare-fun lt!1638994 () Unit!84144)

(assert (=> b!4444601 (= lt!1638994 (forallContained!2149 (toList!3694 lt!1638988) lambda!157995 (h!55571 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))))))))

(assert (=> b!4444601 (contains!12415 lt!1638988 (_1!28189 (h!55571 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))))))))

(declare-fun lt!1638983 () Unit!84144)

(declare-fun Unit!84220 () Unit!84144)

(assert (=> b!4444601 (= lt!1638983 Unit!84220)))

(assert (=> b!4444601 (contains!12415 lt!1638979 (_1!28189 (h!55571 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))))))))

(declare-fun lt!1638997 () Unit!84144)

(declare-fun Unit!84221 () Unit!84144)

(assert (=> b!4444601 (= lt!1638997 Unit!84221)))

(assert (=> b!4444601 call!309195))

(declare-fun lt!1638998 () Unit!84144)

(declare-fun Unit!84222 () Unit!84144)

(assert (=> b!4444601 (= lt!1638998 Unit!84222)))

(assert (=> b!4444601 (forall!9734 (toList!3694 lt!1638988) lambda!157995)))

(declare-fun lt!1638986 () Unit!84144)

(declare-fun Unit!84223 () Unit!84144)

(assert (=> b!4444601 (= lt!1638986 Unit!84223)))

(declare-fun lt!1638984 () Unit!84144)

(declare-fun Unit!84224 () Unit!84144)

(assert (=> b!4444601 (= lt!1638984 Unit!84224)))

(declare-fun lt!1638991 () Unit!84144)

(assert (=> b!4444601 (= lt!1638991 (addForallContainsKeyThenBeforeAdding!209 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1638979 (_1!28189 (h!55571 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616))))))))))

(assert (=> b!4444601 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) lambda!157995)))

(declare-fun lt!1638999 () Unit!84144)

(assert (=> b!4444601 (= lt!1638999 lt!1638991)))

(assert (=> b!4444601 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) lambda!157995)))

(declare-fun lt!1638995 () Unit!84144)

(declare-fun Unit!84225 () Unit!84144)

(assert (=> b!4444601 (= lt!1638995 Unit!84225)))

(declare-fun res!1840830 () Bool)

(assert (=> b!4444601 (= res!1840830 (forall!9734 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616)))) lambda!157995))))

(declare-fun e!2767368 () Bool)

(assert (=> b!4444601 (=> (not res!1840830) (not e!2767368))))

(assert (=> b!4444601 e!2767368))

(declare-fun lt!1638993 () Unit!84144)

(declare-fun Unit!84226 () Unit!84144)

(assert (=> b!4444601 (= lt!1638993 Unit!84226)))

(declare-fun b!4444602 () Bool)

(assert (=> b!4444602 (= e!2767368 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) lambda!157995))))

(assert (= (and d!1349419 c!756400) b!4444598))

(assert (= (and d!1349419 (not c!756400)) b!4444601))

(assert (= (and b!4444601 res!1840830) b!4444602))

(assert (= (or b!4444598 b!4444601) bm!309189))

(assert (= (or b!4444598 b!4444601) bm!309190))

(assert (= (or b!4444598 b!4444601) bm!309191))

(assert (= (and d!1349419 res!1840831) b!4444599))

(assert (= (and b!4444599 res!1840829) b!4444600))

(declare-fun m!5134461 () Bool)

(assert (=> b!4444601 m!5134461))

(assert (=> b!4444601 m!5133755))

(declare-fun m!5134463 () Bool)

(assert (=> b!4444601 m!5134463))

(declare-fun m!5134465 () Bool)

(assert (=> b!4444601 m!5134465))

(declare-fun m!5134467 () Bool)

(assert (=> b!4444601 m!5134467))

(declare-fun m!5134469 () Bool)

(assert (=> b!4444601 m!5134469))

(declare-fun m!5134471 () Bool)

(assert (=> b!4444601 m!5134471))

(assert (=> b!4444601 m!5133755))

(assert (=> b!4444601 m!5134469))

(declare-fun m!5134473 () Bool)

(assert (=> b!4444601 m!5134473))

(assert (=> b!4444601 m!5134461))

(declare-fun m!5134475 () Bool)

(assert (=> b!4444601 m!5134475))

(declare-fun m!5134477 () Bool)

(assert (=> b!4444601 m!5134477))

(declare-fun m!5134479 () Bool)

(assert (=> b!4444601 m!5134479))

(assert (=> b!4444601 m!5134479))

(declare-fun m!5134481 () Bool)

(assert (=> bm!309191 m!5134481))

(assert (=> bm!309189 m!5133755))

(declare-fun m!5134483 () Bool)

(assert (=> bm!309189 m!5134483))

(declare-fun m!5134485 () Bool)

(assert (=> b!4444599 m!5134485))

(declare-fun m!5134487 () Bool)

(assert (=> b!4444600 m!5134487))

(assert (=> b!4444602 m!5134479))

(declare-fun m!5134489 () Bool)

(assert (=> bm!309190 m!5134489))

(declare-fun m!5134491 () Bool)

(assert (=> d!1349419 m!5134491))

(declare-fun m!5134493 () Bool)

(assert (=> d!1349419 m!5134493))

(assert (=> b!4444159 d!1349419))

(declare-fun bs!765293 () Bool)

(declare-fun d!1349421 () Bool)

(assert (= bs!765293 (and d!1349421 d!1349081)))

(declare-fun lambda!157997 () Int)

(assert (=> bs!765293 (= lambda!157997 lambda!157872)))

(declare-fun bs!765294 () Bool)

(assert (= bs!765294 (and d!1349421 d!1349177)))

(assert (=> bs!765294 (= lambda!157997 lambda!157942)))

(declare-fun bs!765295 () Bool)

(assert (= bs!765295 (and d!1349421 d!1349089)))

(assert (=> bs!765295 (= lambda!157997 lambda!157888)))

(declare-fun bs!765296 () Bool)

(assert (= bs!765296 (and d!1349421 d!1349181)))

(assert (=> bs!765296 (= lambda!157997 lambda!157943)))

(declare-fun bs!765297 () Bool)

(assert (= bs!765297 (and d!1349421 d!1349171)))

(assert (=> bs!765297 (= lambda!157997 lambda!157941)))

(declare-fun bs!765298 () Bool)

(assert (= bs!765298 (and d!1349421 start!435012)))

(assert (=> bs!765298 (= lambda!157997 lambda!157844)))

(declare-fun bs!765299 () Bool)

(assert (= bs!765299 (and d!1349421 d!1349189)))

(assert (=> bs!765299 (= lambda!157997 lambda!157944)))

(declare-fun bs!765300 () Bool)

(assert (= bs!765300 (and d!1349421 d!1349149)))

(assert (=> bs!765300 (not (= lambda!157997 lambda!157935))))

(declare-fun lt!1639000 () ListMap!2937)

(assert (=> d!1349421 (invariantList!852 (toList!3694 lt!1639000))))

(declare-fun e!2767371 () ListMap!2937)

(assert (=> d!1349421 (= lt!1639000 e!2767371)))

(declare-fun c!756401 () Bool)

(assert (=> d!1349421 (= c!756401 ((_ is Cons!49837) (t!356903 (tail!7407 (toList!3693 lm!1616)))))))

(assert (=> d!1349421 (forall!9732 (t!356903 (tail!7407 (toList!3693 lm!1616))) lambda!157997)))

(assert (=> d!1349421 (= (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616)))) lt!1639000)))

(declare-fun b!4444603 () Bool)

(assert (=> b!4444603 (= e!2767371 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (t!356903 (tail!7407 (toList!3693 lm!1616)))))))))

(declare-fun b!4444604 () Bool)

(assert (=> b!4444604 (= e!2767371 (ListMap!2938 Nil!49836))))

(assert (= (and d!1349421 c!756401) b!4444603))

(assert (= (and d!1349421 (not c!756401)) b!4444604))

(declare-fun m!5134495 () Bool)

(assert (=> d!1349421 m!5134495))

(declare-fun m!5134497 () Bool)

(assert (=> d!1349421 m!5134497))

(declare-fun m!5134499 () Bool)

(assert (=> b!4444603 m!5134499))

(assert (=> b!4444603 m!5134499))

(declare-fun m!5134501 () Bool)

(assert (=> b!4444603 m!5134501))

(assert (=> b!4444159 d!1349421))

(declare-fun d!1349423 () Bool)

(declare-fun c!756404 () Bool)

(assert (=> d!1349423 (= c!756404 ((_ is Nil!49836) (toList!3694 lt!1638455)))))

(declare-fun e!2767374 () (InoxSet tuple2!49790))

(assert (=> d!1349423 (= (content!8017 (toList!3694 lt!1638455)) e!2767374)))

(declare-fun b!4444609 () Bool)

(assert (=> b!4444609 (= e!2767374 ((as const (Array tuple2!49790 Bool)) false))))

(declare-fun b!4444610 () Bool)

(assert (=> b!4444610 (= e!2767374 ((_ map or) (store ((as const (Array tuple2!49790 Bool)) false) (h!55571 (toList!3694 lt!1638455)) true) (content!8017 (t!356902 (toList!3694 lt!1638455)))))))

(assert (= (and d!1349423 c!756404) b!4444609))

(assert (= (and d!1349423 (not c!756404)) b!4444610))

(declare-fun m!5134503 () Bool)

(assert (=> b!4444610 m!5134503))

(declare-fun m!5134505 () Bool)

(assert (=> b!4444610 m!5134505))

(assert (=> d!1349173 d!1349423))

(declare-fun d!1349425 () Bool)

(declare-fun c!756405 () Bool)

(assert (=> d!1349425 (= c!756405 ((_ is Nil!49836) (toList!3694 (+!1244 lt!1638452 (tuple2!49791 key!3717 newValue!93)))))))

(declare-fun e!2767375 () (InoxSet tuple2!49790))

(assert (=> d!1349425 (= (content!8017 (toList!3694 (+!1244 lt!1638452 (tuple2!49791 key!3717 newValue!93)))) e!2767375)))

(declare-fun b!4444611 () Bool)

(assert (=> b!4444611 (= e!2767375 ((as const (Array tuple2!49790 Bool)) false))))

(declare-fun b!4444612 () Bool)

(assert (=> b!4444612 (= e!2767375 ((_ map or) (store ((as const (Array tuple2!49790 Bool)) false) (h!55571 (toList!3694 (+!1244 lt!1638452 (tuple2!49791 key!3717 newValue!93)))) true) (content!8017 (t!356902 (toList!3694 (+!1244 lt!1638452 (tuple2!49791 key!3717 newValue!93)))))))))

(assert (= (and d!1349425 c!756405) b!4444611))

(assert (= (and d!1349425 (not c!756405)) b!4444612))

(declare-fun m!5134507 () Bool)

(assert (=> b!4444612 m!5134507))

(declare-fun m!5134509 () Bool)

(assert (=> b!4444612 m!5134509))

(assert (=> d!1349173 d!1349425))

(declare-fun d!1349427 () Bool)

(declare-fun res!1840836 () Bool)

(declare-fun e!2767380 () Bool)

(assert (=> d!1349427 (=> res!1840836 e!2767380)))

(assert (=> d!1349427 (= res!1840836 (and ((_ is Cons!49837) (toList!3693 lm!1616)) (= (_1!28190 (h!55572 (toList!3693 lm!1616))) hash!366)))))

(assert (=> d!1349427 (= (containsKey!1271 (toList!3693 lm!1616) hash!366) e!2767380)))

(declare-fun b!4444617 () Bool)

(declare-fun e!2767381 () Bool)

(assert (=> b!4444617 (= e!2767380 e!2767381)))

(declare-fun res!1840837 () Bool)

(assert (=> b!4444617 (=> (not res!1840837) (not e!2767381))))

(assert (=> b!4444617 (= res!1840837 (and (or (not ((_ is Cons!49837) (toList!3693 lm!1616))) (bvsle (_1!28190 (h!55572 (toList!3693 lm!1616))) hash!366)) ((_ is Cons!49837) (toList!3693 lm!1616)) (bvslt (_1!28190 (h!55572 (toList!3693 lm!1616))) hash!366)))))

(declare-fun b!4444618 () Bool)

(assert (=> b!4444618 (= e!2767381 (containsKey!1271 (t!356903 (toList!3693 lm!1616)) hash!366))))

(assert (= (and d!1349427 (not res!1840836)) b!4444617))

(assert (= (and b!4444617 res!1840837) b!4444618))

(declare-fun m!5134511 () Bool)

(assert (=> b!4444618 m!5134511))

(assert (=> d!1349147 d!1349427))

(declare-fun bs!765301 () Bool)

(declare-fun b!4444619 () Bool)

(assert (= bs!765301 (and b!4444619 b!4444112)))

(declare-fun lambda!157998 () Int)

(assert (=> bs!765301 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638694) (= lambda!157998 lambda!157931))))

(declare-fun bs!765302 () Bool)

(assert (= bs!765302 (and b!4444619 b!4444109)))

(assert (=> bs!765302 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638452) (= lambda!157998 lambda!157929))))

(declare-fun bs!765303 () Bool)

(assert (= bs!765303 (and b!4444619 d!1349101)))

(assert (=> bs!765303 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638707) (= lambda!157998 lambda!157932))))

(assert (=> bs!765301 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638452) (= lambda!157998 lambda!157930))))

(declare-fun bs!765304 () Bool)

(assert (= bs!765304 (and b!4444619 d!1349419)))

(assert (=> bs!765304 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638992) (= lambda!157998 lambda!157996))))

(declare-fun bs!765305 () Bool)

(assert (= bs!765305 (and b!4444619 b!4444601)))

(assert (=> bs!765305 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!157998 lambda!157994))))

(declare-fun bs!765306 () Bool)

(assert (= bs!765306 (and b!4444619 d!1349151)))

(assert (=> bs!765306 (not (= lambda!157998 lambda!157938))))

(declare-fun bs!765307 () Bool)

(assert (= bs!765307 (and b!4444619 b!4444598)))

(assert (=> bs!765307 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!157998 lambda!157993))))

(assert (=> bs!765305 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638979) (= lambda!157998 lambda!157995))))

(assert (=> b!4444619 true))

(declare-fun bs!765308 () Bool)

(declare-fun b!4444622 () Bool)

(assert (= bs!765308 (and b!4444622 b!4444112)))

(declare-fun lambda!157999 () Int)

(assert (=> bs!765308 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638694) (= lambda!157999 lambda!157931))))

(declare-fun bs!765309 () Bool)

(assert (= bs!765309 (and b!4444622 b!4444109)))

(assert (=> bs!765309 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638452) (= lambda!157999 lambda!157929))))

(declare-fun bs!765310 () Bool)

(assert (= bs!765310 (and b!4444622 d!1349101)))

(assert (=> bs!765310 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638707) (= lambda!157999 lambda!157932))))

(assert (=> bs!765308 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638452) (= lambda!157999 lambda!157930))))

(declare-fun bs!765311 () Bool)

(assert (= bs!765311 (and b!4444622 b!4444619)))

(assert (=> bs!765311 (= lambda!157999 lambda!157998)))

(declare-fun bs!765312 () Bool)

(assert (= bs!765312 (and b!4444622 d!1349419)))

(assert (=> bs!765312 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638992) (= lambda!157999 lambda!157996))))

(declare-fun bs!765313 () Bool)

(assert (= bs!765313 (and b!4444622 b!4444601)))

(assert (=> bs!765313 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!157999 lambda!157994))))

(declare-fun bs!765314 () Bool)

(assert (= bs!765314 (and b!4444622 d!1349151)))

(assert (=> bs!765314 (not (= lambda!157999 lambda!157938))))

(declare-fun bs!765315 () Bool)

(assert (= bs!765315 (and b!4444622 b!4444598)))

(assert (=> bs!765315 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!157999 lambda!157993))))

(assert (=> bs!765313 (= (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1638979) (= lambda!157999 lambda!157995))))

(assert (=> b!4444622 true))

(declare-fun lambda!158000 () Int)

(declare-fun lt!1639001 () ListMap!2937)

(assert (=> bs!765308 (= (= lt!1639001 lt!1638694) (= lambda!158000 lambda!157931))))

(assert (=> bs!765309 (= (= lt!1639001 lt!1638452) (= lambda!158000 lambda!157929))))

(assert (=> bs!765310 (= (= lt!1639001 lt!1638707) (= lambda!158000 lambda!157932))))

(assert (=> bs!765308 (= (= lt!1639001 lt!1638452) (= lambda!158000 lambda!157930))))

(assert (=> bs!765311 (= (= lt!1639001 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158000 lambda!157998))))

(assert (=> bs!765312 (= (= lt!1639001 lt!1638992) (= lambda!158000 lambda!157996))))

(assert (=> bs!765313 (= (= lt!1639001 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158000 lambda!157994))))

(assert (=> bs!765314 (not (= lambda!158000 lambda!157938))))

(assert (=> bs!765313 (= (= lt!1639001 lt!1638979) (= lambda!158000 lambda!157995))))

(assert (=> b!4444622 (= (= lt!1639001 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158000 lambda!157999))))

(assert (=> bs!765315 (= (= lt!1639001 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158000 lambda!157993))))

(assert (=> b!4444622 true))

(declare-fun bs!765316 () Bool)

(declare-fun d!1349429 () Bool)

(assert (= bs!765316 (and d!1349429 b!4444112)))

(declare-fun lt!1639014 () ListMap!2937)

(declare-fun lambda!158001 () Int)

(assert (=> bs!765316 (= (= lt!1639014 lt!1638694) (= lambda!158001 lambda!157931))))

(declare-fun bs!765317 () Bool)

(assert (= bs!765317 (and d!1349429 b!4444109)))

(assert (=> bs!765317 (= (= lt!1639014 lt!1638452) (= lambda!158001 lambda!157929))))

(declare-fun bs!765318 () Bool)

(assert (= bs!765318 (and d!1349429 d!1349101)))

(assert (=> bs!765318 (= (= lt!1639014 lt!1638707) (= lambda!158001 lambda!157932))))

(declare-fun bs!765319 () Bool)

(assert (= bs!765319 (and d!1349429 b!4444622)))

(assert (=> bs!765319 (= (= lt!1639014 lt!1639001) (= lambda!158001 lambda!158000))))

(assert (=> bs!765316 (= (= lt!1639014 lt!1638452) (= lambda!158001 lambda!157930))))

(declare-fun bs!765320 () Bool)

(assert (= bs!765320 (and d!1349429 b!4444619)))

(assert (=> bs!765320 (= (= lt!1639014 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158001 lambda!157998))))

(declare-fun bs!765321 () Bool)

(assert (= bs!765321 (and d!1349429 d!1349419)))

(assert (=> bs!765321 (= (= lt!1639014 lt!1638992) (= lambda!158001 lambda!157996))))

(declare-fun bs!765322 () Bool)

(assert (= bs!765322 (and d!1349429 b!4444601)))

(assert (=> bs!765322 (= (= lt!1639014 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158001 lambda!157994))))

(declare-fun bs!765323 () Bool)

(assert (= bs!765323 (and d!1349429 d!1349151)))

(assert (=> bs!765323 (not (= lambda!158001 lambda!157938))))

(assert (=> bs!765322 (= (= lt!1639014 lt!1638979) (= lambda!158001 lambda!157995))))

(assert (=> bs!765319 (= (= lt!1639014 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158001 lambda!157999))))

(declare-fun bs!765324 () Bool)

(assert (= bs!765324 (and d!1349429 b!4444598)))

(assert (=> bs!765324 (= (= lt!1639014 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158001 lambda!157993))))

(assert (=> d!1349429 true))

(declare-fun e!2767383 () ListMap!2937)

(assert (=> b!4444619 (= e!2767383 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))))

(declare-fun lt!1639007 () Unit!84144)

(declare-fun call!309199 () Unit!84144)

(assert (=> b!4444619 (= lt!1639007 call!309199)))

(declare-fun call!309198 () Bool)

(assert (=> b!4444619 call!309198))

(declare-fun lt!1639012 () Unit!84144)

(assert (=> b!4444619 (= lt!1639012 lt!1639007)))

(declare-fun call!309197 () Bool)

(assert (=> b!4444619 call!309197))

(declare-fun lt!1639018 () Unit!84144)

(declare-fun Unit!84232 () Unit!84144)

(assert (=> b!4444619 (= lt!1639018 Unit!84232)))

(declare-fun b!4444620 () Bool)

(declare-fun res!1840838 () Bool)

(declare-fun e!2767384 () Bool)

(assert (=> b!4444620 (=> (not res!1840838) (not e!2767384))))

(assert (=> b!4444620 (= res!1840838 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) lambda!158001))))

(declare-fun bm!309192 () Bool)

(assert (=> bm!309192 (= call!309199 (lemmaContainsAllItsOwnKeys!209 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))))))

(declare-fun c!756406 () Bool)

(declare-fun bm!309193 () Bool)

(assert (=> bm!309193 (= call!309198 (forall!9734 (ite c!756406 (toList!3694 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (ite c!756406 lambda!157998 lambda!158000)))))

(declare-fun bm!309194 () Bool)

(assert (=> bm!309194 (= call!309197 (forall!9734 (ite c!756406 (toList!3694 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (t!356902 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))) (ite c!756406 lambda!157998 lambda!158000)))))

(assert (=> d!1349429 e!2767384))

(declare-fun res!1840840 () Bool)

(assert (=> d!1349429 (=> (not res!1840840) (not e!2767384))))

(assert (=> d!1349429 (= res!1840840 (forall!9734 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lambda!158001))))

(assert (=> d!1349429 (= lt!1639014 e!2767383)))

(assert (=> d!1349429 (= c!756406 ((_ is Nil!49836) (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450))))))))

(assert (=> d!1349429 (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))))

(assert (=> d!1349429 (= (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) lt!1639014)))

(declare-fun b!4444621 () Bool)

(assert (=> b!4444621 (= e!2767384 (invariantList!852 (toList!3694 lt!1639014)))))

(assert (=> b!4444622 (= e!2767383 lt!1639001)))

(declare-fun lt!1639010 () ListMap!2937)

(assert (=> b!4444622 (= lt!1639010 (+!1244 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) (h!55571 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))))))

(assert (=> b!4444622 (= lt!1639001 (addToMapMapFromBucket!459 (t!356902 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (+!1244 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) (h!55571 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450))))))))))

(declare-fun lt!1639002 () Unit!84144)

(assert (=> b!4444622 (= lt!1639002 call!309199)))

(assert (=> b!4444622 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) lambda!157999)))

(declare-fun lt!1639011 () Unit!84144)

(assert (=> b!4444622 (= lt!1639011 lt!1639002)))

(assert (=> b!4444622 (forall!9734 (toList!3694 lt!1639010) lambda!158000)))

(declare-fun lt!1639009 () Unit!84144)

(declare-fun Unit!84233 () Unit!84144)

(assert (=> b!4444622 (= lt!1639009 Unit!84233)))

(assert (=> b!4444622 call!309197))

(declare-fun lt!1639004 () Unit!84144)

(declare-fun Unit!84234 () Unit!84144)

(assert (=> b!4444622 (= lt!1639004 Unit!84234)))

(declare-fun lt!1639003 () Unit!84144)

(declare-fun Unit!84235 () Unit!84144)

(assert (=> b!4444622 (= lt!1639003 Unit!84235)))

(declare-fun lt!1639016 () Unit!84144)

(assert (=> b!4444622 (= lt!1639016 (forallContained!2149 (toList!3694 lt!1639010) lambda!158000 (h!55571 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))))))

(assert (=> b!4444622 (contains!12415 lt!1639010 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))))))

(declare-fun lt!1639005 () Unit!84144)

(declare-fun Unit!84236 () Unit!84144)

(assert (=> b!4444622 (= lt!1639005 Unit!84236)))

(assert (=> b!4444622 (contains!12415 lt!1639001 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))))))

(declare-fun lt!1639019 () Unit!84144)

(declare-fun Unit!84237 () Unit!84144)

(assert (=> b!4444622 (= lt!1639019 Unit!84237)))

(assert (=> b!4444622 call!309198))

(declare-fun lt!1639020 () Unit!84144)

(declare-fun Unit!84238 () Unit!84144)

(assert (=> b!4444622 (= lt!1639020 Unit!84238)))

(assert (=> b!4444622 (forall!9734 (toList!3694 lt!1639010) lambda!158000)))

(declare-fun lt!1639008 () Unit!84144)

(declare-fun Unit!84239 () Unit!84144)

(assert (=> b!4444622 (= lt!1639008 Unit!84239)))

(declare-fun lt!1639006 () Unit!84144)

(declare-fun Unit!84240 () Unit!84144)

(assert (=> b!4444622 (= lt!1639006 Unit!84240)))

(declare-fun lt!1639013 () Unit!84144)

(assert (=> b!4444622 (= lt!1639013 (addForallContainsKeyThenBeforeAdding!209 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1639001 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450))))))))))

(assert (=> b!4444622 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) lambda!158000)))

(declare-fun lt!1639021 () Unit!84144)

(assert (=> b!4444622 (= lt!1639021 lt!1639013)))

(assert (=> b!4444622 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) lambda!158000)))

(declare-fun lt!1639017 () Unit!84144)

(declare-fun Unit!84241 () Unit!84144)

(assert (=> b!4444622 (= lt!1639017 Unit!84241)))

(declare-fun res!1840839 () Bool)

(assert (=> b!4444622 (= res!1840839 (forall!9734 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lambda!158000))))

(declare-fun e!2767382 () Bool)

(assert (=> b!4444622 (=> (not res!1840839) (not e!2767382))))

(assert (=> b!4444622 e!2767382))

(declare-fun lt!1639015 () Unit!84144)

(declare-fun Unit!84242 () Unit!84144)

(assert (=> b!4444622 (= lt!1639015 Unit!84242)))

(declare-fun b!4444623 () Bool)

(assert (=> b!4444623 (= e!2767382 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) lambda!158000))))

(assert (= (and d!1349429 c!756406) b!4444619))

(assert (= (and d!1349429 (not c!756406)) b!4444622))

(assert (= (and b!4444622 res!1840839) b!4444623))

(assert (= (or b!4444619 b!4444622) bm!309192))

(assert (= (or b!4444619 b!4444622) bm!309193))

(assert (= (or b!4444619 b!4444622) bm!309194))

(assert (= (and d!1349429 res!1840840) b!4444620))

(assert (= (and b!4444620 res!1840838) b!4444621))

(declare-fun m!5134513 () Bool)

(assert (=> b!4444622 m!5134513))

(assert (=> b!4444622 m!5133785))

(declare-fun m!5134515 () Bool)

(assert (=> b!4444622 m!5134515))

(declare-fun m!5134517 () Bool)

(assert (=> b!4444622 m!5134517))

(declare-fun m!5134519 () Bool)

(assert (=> b!4444622 m!5134519))

(declare-fun m!5134521 () Bool)

(assert (=> b!4444622 m!5134521))

(declare-fun m!5134523 () Bool)

(assert (=> b!4444622 m!5134523))

(assert (=> b!4444622 m!5133785))

(assert (=> b!4444622 m!5134521))

(declare-fun m!5134525 () Bool)

(assert (=> b!4444622 m!5134525))

(assert (=> b!4444622 m!5134513))

(declare-fun m!5134527 () Bool)

(assert (=> b!4444622 m!5134527))

(declare-fun m!5134529 () Bool)

(assert (=> b!4444622 m!5134529))

(declare-fun m!5134531 () Bool)

(assert (=> b!4444622 m!5134531))

(assert (=> b!4444622 m!5134531))

(declare-fun m!5134533 () Bool)

(assert (=> bm!309194 m!5134533))

(assert (=> bm!309192 m!5133785))

(declare-fun m!5134535 () Bool)

(assert (=> bm!309192 m!5134535))

(declare-fun m!5134537 () Bool)

(assert (=> b!4444620 m!5134537))

(declare-fun m!5134539 () Bool)

(assert (=> b!4444621 m!5134539))

(assert (=> b!4444623 m!5134531))

(declare-fun m!5134541 () Bool)

(assert (=> bm!309193 m!5134541))

(declare-fun m!5134543 () Bool)

(assert (=> d!1349429 m!5134543))

(declare-fun m!5134545 () Bool)

(assert (=> d!1349429 m!5134545))

(assert (=> b!4444170 d!1349429))

(declare-fun bs!765325 () Bool)

(declare-fun d!1349431 () Bool)

(assert (= bs!765325 (and d!1349431 d!1349081)))

(declare-fun lambda!158002 () Int)

(assert (=> bs!765325 (= lambda!158002 lambda!157872)))

(declare-fun bs!765326 () Bool)

(assert (= bs!765326 (and d!1349431 d!1349177)))

(assert (=> bs!765326 (= lambda!158002 lambda!157942)))

(declare-fun bs!765327 () Bool)

(assert (= bs!765327 (and d!1349431 d!1349089)))

(assert (=> bs!765327 (= lambda!158002 lambda!157888)))

(declare-fun bs!765328 () Bool)

(assert (= bs!765328 (and d!1349431 d!1349421)))

(assert (=> bs!765328 (= lambda!158002 lambda!157997)))

(declare-fun bs!765329 () Bool)

(assert (= bs!765329 (and d!1349431 d!1349181)))

(assert (=> bs!765329 (= lambda!158002 lambda!157943)))

(declare-fun bs!765330 () Bool)

(assert (= bs!765330 (and d!1349431 d!1349171)))

(assert (=> bs!765330 (= lambda!158002 lambda!157941)))

(declare-fun bs!765331 () Bool)

(assert (= bs!765331 (and d!1349431 start!435012)))

(assert (=> bs!765331 (= lambda!158002 lambda!157844)))

(declare-fun bs!765332 () Bool)

(assert (= bs!765332 (and d!1349431 d!1349189)))

(assert (=> bs!765332 (= lambda!158002 lambda!157944)))

(declare-fun bs!765333 () Bool)

(assert (= bs!765333 (and d!1349431 d!1349149)))

(assert (=> bs!765333 (not (= lambda!158002 lambda!157935))))

(declare-fun lt!1639044 () ListMap!2937)

(assert (=> d!1349431 (invariantList!852 (toList!3694 lt!1639044))))

(declare-fun e!2767399 () ListMap!2937)

(assert (=> d!1349431 (= lt!1639044 e!2767399)))

(declare-fun c!756417 () Bool)

(assert (=> d!1349431 (= c!756417 ((_ is Cons!49837) (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))))

(assert (=> d!1349431 (forall!9732 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))) lambda!158002)))

(assert (=> d!1349431 (= (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) lt!1639044)))

(declare-fun b!4444652 () Bool)

(assert (=> b!4444652 (= e!2767399 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (extractMap!914 (t!356903 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450)))))))))

(declare-fun b!4444653 () Bool)

(assert (=> b!4444653 (= e!2767399 (ListMap!2938 Nil!49836))))

(assert (= (and d!1349431 c!756417) b!4444652))

(assert (= (and d!1349431 (not c!756417)) b!4444653))

(declare-fun m!5134547 () Bool)

(assert (=> d!1349431 m!5134547))

(declare-fun m!5134549 () Bool)

(assert (=> d!1349431 m!5134549))

(declare-fun m!5134551 () Bool)

(assert (=> b!4444652 m!5134551))

(assert (=> b!4444652 m!5134551))

(declare-fun m!5134553 () Bool)

(assert (=> b!4444652 m!5134553))

(assert (=> b!4444170 d!1349431))

(declare-fun d!1349433 () Bool)

(declare-fun res!1840853 () Bool)

(declare-fun e!2767404 () Bool)

(assert (=> d!1349433 (=> res!1840853 e!2767404)))

(assert (=> d!1349433 (= res!1840853 (and ((_ is Cons!49836) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (= (_1!28189 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) key!3717)))))

(assert (=> d!1349433 (= (containsKey!1270 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717) e!2767404)))

(declare-fun b!4444658 () Bool)

(declare-fun e!2767405 () Bool)

(assert (=> b!4444658 (= e!2767404 e!2767405)))

(declare-fun res!1840854 () Bool)

(assert (=> b!4444658 (=> (not res!1840854) (not e!2767405))))

(assert (=> b!4444658 (= res!1840854 ((_ is Cons!49836) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))

(declare-fun b!4444659 () Bool)

(assert (=> b!4444659 (= e!2767405 (containsKey!1270 (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) key!3717))))

(assert (= (and d!1349433 (not res!1840853)) b!4444658))

(assert (= (and b!4444658 res!1840854) b!4444659))

(declare-fun m!5134555 () Bool)

(assert (=> b!4444659 m!5134555))

(assert (=> d!1349185 d!1349433))

(declare-fun d!1349435 () Bool)

(declare-fun res!1840859 () Bool)

(declare-fun e!2767413 () Bool)

(assert (=> d!1349435 (=> res!1840859 e!2767413)))

(assert (=> d!1349435 (= res!1840859 ((_ is Nil!49837) (toList!3693 lm!1616)))))

(assert (=> d!1349435 (= (forall!9732 (toList!3693 lm!1616) lambda!157935) e!2767413)))

(declare-fun b!4444674 () Bool)

(declare-fun e!2767414 () Bool)

(assert (=> b!4444674 (= e!2767413 e!2767414)))

(declare-fun res!1840860 () Bool)

(assert (=> b!4444674 (=> (not res!1840860) (not e!2767414))))

(assert (=> b!4444674 (= res!1840860 (dynLambda!20922 lambda!157935 (h!55572 (toList!3693 lm!1616))))))

(declare-fun b!4444675 () Bool)

(assert (=> b!4444675 (= e!2767414 (forall!9732 (t!356903 (toList!3693 lm!1616)) lambda!157935))))

(assert (= (and d!1349435 (not res!1840859)) b!4444674))

(assert (= (and b!4444674 res!1840860) b!4444675))

(declare-fun b_lambda!145383 () Bool)

(assert (=> (not b_lambda!145383) (not b!4444674)))

(declare-fun m!5134557 () Bool)

(assert (=> b!4444674 m!5134557))

(declare-fun m!5134559 () Bool)

(assert (=> b!4444675 m!5134559))

(assert (=> d!1349149 d!1349435))

(declare-fun d!1349437 () Bool)

(assert (=> d!1349437 (isDefined!8112 (getValueByKey!808 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))

(declare-fun lt!1639066 () Unit!84144)

(declare-fun choose!28252 (List!49961 (_ BitVec 64)) Unit!84144)

(assert (=> d!1349437 (= lt!1639066 (choose!28252 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))

(declare-fun e!2767423 () Bool)

(assert (=> d!1349437 e!2767423))

(declare-fun res!1840866 () Bool)

(assert (=> d!1349437 (=> (not res!1840866) (not e!2767423))))

(assert (=> d!1349437 (= res!1840866 (isStrictlySorted!278 (toList!3693 lm!1616)))))

(assert (=> d!1349437 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!715 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))) lt!1639066)))

(declare-fun b!4444687 () Bool)

(assert (=> b!4444687 (= e!2767423 (containsKey!1271 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (= (and d!1349437 res!1840866) b!4444687))

(assert (=> d!1349437 m!5133429))

(assert (=> d!1349437 m!5133429))

(assert (=> d!1349437 m!5133431))

(declare-fun m!5134621 () Bool)

(assert (=> d!1349437 m!5134621))

(assert (=> d!1349437 m!5133675))

(assert (=> b!4444687 m!5133425))

(assert (=> b!4443996 d!1349437))

(declare-fun d!1349443 () Bool)

(declare-fun isEmpty!28397 (Option!10822) Bool)

(assert (=> d!1349443 (= (isDefined!8112 (getValueByKey!808 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616))))) (not (isEmpty!28397 (getValueByKey!808 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun bs!765334 () Bool)

(assert (= bs!765334 d!1349443))

(assert (=> bs!765334 m!5133429))

(declare-fun m!5134623 () Bool)

(assert (=> bs!765334 m!5134623))

(assert (=> b!4443996 d!1349443))

(declare-fun b!4444689 () Bool)

(declare-fun e!2767424 () Option!10822)

(declare-fun e!2767425 () Option!10822)

(assert (=> b!4444689 (= e!2767424 e!2767425)))

(declare-fun c!756427 () Bool)

(assert (=> b!4444689 (= c!756427 (and ((_ is Cons!49837) (toList!3693 lm!1616)) (not (= (_1!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun d!1349445 () Bool)

(declare-fun c!756426 () Bool)

(assert (=> d!1349445 (= c!756426 (and ((_ is Cons!49837) (toList!3693 lm!1616)) (= (_1!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> d!1349445 (= (getValueByKey!808 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))) e!2767424)))

(declare-fun b!4444690 () Bool)

(assert (=> b!4444690 (= e!2767425 (getValueByKey!808 (t!356903 (toList!3693 lm!1616)) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))

(declare-fun b!4444688 () Bool)

(assert (=> b!4444688 (= e!2767424 (Some!10821 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(declare-fun b!4444691 () Bool)

(assert (=> b!4444691 (= e!2767425 None!10821)))

(assert (= (and d!1349445 c!756426) b!4444688))

(assert (= (and d!1349445 (not c!756426)) b!4444689))

(assert (= (and b!4444689 c!756427) b!4444690))

(assert (= (and b!4444689 (not c!756427)) b!4444691))

(declare-fun m!5134625 () Bool)

(assert (=> b!4444690 m!5134625))

(assert (=> b!4443996 d!1349445))

(declare-fun d!1349447 () Bool)

(declare-fun isEmpty!28398 (Option!10821) Bool)

(assert (=> d!1349447 (= (isDefined!8111 (getValueByKey!807 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717)) (not (isEmpty!28398 (getValueByKey!807 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))))

(declare-fun bs!765335 () Bool)

(assert (= bs!765335 d!1349447))

(assert (=> bs!765335 m!5133769))

(declare-fun m!5134627 () Bool)

(assert (=> bs!765335 m!5134627))

(assert (=> b!4444162 d!1349447))

(declare-fun b!4444717 () Bool)

(declare-fun e!2767442 () Option!10821)

(declare-fun e!2767443 () Option!10821)

(assert (=> b!4444717 (= e!2767442 e!2767443)))

(declare-fun c!756436 () Bool)

(assert (=> b!4444717 (= c!756436 (and ((_ is Cons!49836) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (not (= (_1!28189 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) key!3717))))))

(declare-fun d!1349449 () Bool)

(declare-fun c!756435 () Bool)

(assert (=> d!1349449 (= c!756435 (and ((_ is Cons!49836) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (= (_1!28189 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) key!3717)))))

(assert (=> d!1349449 (= (getValueByKey!807 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717) e!2767442)))

(declare-fun b!4444718 () Bool)

(assert (=> b!4444718 (= e!2767443 (getValueByKey!807 (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) key!3717))))

(declare-fun b!4444716 () Bool)

(assert (=> b!4444716 (= e!2767442 (Some!10820 (_2!28189 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))))

(declare-fun b!4444719 () Bool)

(assert (=> b!4444719 (= e!2767443 None!10820)))

(assert (= (and d!1349449 c!756435) b!4444716))

(assert (= (and d!1349449 (not c!756435)) b!4444717))

(assert (= (and b!4444717 c!756436) b!4444718))

(assert (= (and b!4444717 (not c!756436)) b!4444719))

(declare-fun m!5134651 () Bool)

(assert (=> b!4444718 m!5134651))

(assert (=> b!4444162 d!1349449))

(declare-fun b!4444728 () Bool)

(assert (=> b!4444728 true))

(declare-fun d!1349457 () Bool)

(declare-fun e!2767446 () Bool)

(assert (=> d!1349457 e!2767446))

(declare-fun res!1840885 () Bool)

(assert (=> d!1349457 (=> (not res!1840885) (not e!2767446))))

(declare-fun lt!1639084 () List!49963)

(declare-fun noDuplicate!680 (List!49963) Bool)

(assert (=> d!1349457 (= res!1840885 (noDuplicate!680 lt!1639084))))

(assert (=> d!1349457 (= lt!1639084 (getKeysList!299 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))

(assert (=> d!1349457 (= (keys!17083 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) lt!1639084)))

(declare-fun b!4444727 () Bool)

(declare-fun res!1840884 () Bool)

(assert (=> b!4444727 (=> (not res!1840884) (not e!2767446))))

(declare-fun length!216 (List!49963) Int)

(declare-fun length!217 (List!49960) Int)

(assert (=> b!4444727 (= res!1840884 (= (length!216 lt!1639084) (length!217 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))))))

(declare-fun res!1840883 () Bool)

(assert (=> b!4444728 (=> (not res!1840883) (not e!2767446))))

(declare-fun lambda!158007 () Int)

(declare-fun forall!9736 (List!49963 Int) Bool)

(assert (=> b!4444728 (= res!1840883 (forall!9736 lt!1639084 lambda!158007))))

(declare-fun b!4444729 () Bool)

(declare-fun lambda!158008 () Int)

(declare-fun map!10904 (List!49960 Int) List!49963)

(assert (=> b!4444729 (= e!2767446 (= (content!8019 lt!1639084) (content!8019 (map!10904 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) lambda!158008))))))

(assert (= (and d!1349457 res!1840885) b!4444727))

(assert (= (and b!4444727 res!1840884) b!4444728))

(assert (= (and b!4444728 res!1840883) b!4444729))

(declare-fun m!5134673 () Bool)

(assert (=> d!1349457 m!5134673))

(assert (=> d!1349457 m!5133765))

(declare-fun m!5134675 () Bool)

(assert (=> b!4444727 m!5134675))

(declare-fun m!5134677 () Bool)

(assert (=> b!4444727 m!5134677))

(declare-fun m!5134679 () Bool)

(assert (=> b!4444728 m!5134679))

(declare-fun m!5134681 () Bool)

(assert (=> b!4444729 m!5134681))

(declare-fun m!5134683 () Bool)

(assert (=> b!4444729 m!5134683))

(assert (=> b!4444729 m!5134683))

(declare-fun m!5134685 () Bool)

(assert (=> b!4444729 m!5134685))

(assert (=> b!4444163 d!1349457))

(declare-fun d!1349461 () Bool)

(declare-fun res!1840890 () Bool)

(declare-fun e!2767451 () Bool)

(assert (=> d!1349461 (=> res!1840890 e!2767451)))

(assert (=> d!1349461 (= res!1840890 ((_ is Nil!49836) newBucket!194))))

(assert (=> d!1349461 (= (forall!9734 newBucket!194 lambda!157938) e!2767451)))

(declare-fun b!4444736 () Bool)

(declare-fun e!2767452 () Bool)

(assert (=> b!4444736 (= e!2767451 e!2767452)))

(declare-fun res!1840891 () Bool)

(assert (=> b!4444736 (=> (not res!1840891) (not e!2767452))))

(declare-fun dynLambda!20924 (Int tuple2!49790) Bool)

(assert (=> b!4444736 (= res!1840891 (dynLambda!20924 lambda!157938 (h!55571 newBucket!194)))))

(declare-fun b!4444737 () Bool)

(assert (=> b!4444737 (= e!2767452 (forall!9734 (t!356902 newBucket!194) lambda!157938))))

(assert (= (and d!1349461 (not res!1840890)) b!4444736))

(assert (= (and b!4444736 res!1840891) b!4444737))

(declare-fun b_lambda!145389 () Bool)

(assert (=> (not b_lambda!145389) (not b!4444736)))

(declare-fun m!5134687 () Bool)

(assert (=> b!4444736 m!5134687))

(declare-fun m!5134689 () Bool)

(assert (=> b!4444737 m!5134689))

(assert (=> d!1349151 d!1349461))

(declare-fun d!1349463 () Bool)

(declare-fun lt!1639088 () Bool)

(assert (=> d!1349463 (= lt!1639088 (select (content!8019 (keys!17083 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) key!3717))))

(declare-fun e!2767453 () Bool)

(assert (=> d!1349463 (= lt!1639088 e!2767453)))

(declare-fun res!1840892 () Bool)

(assert (=> d!1349463 (=> (not res!1840892) (not e!2767453))))

(assert (=> d!1349463 (= res!1840892 ((_ is Cons!49839) (keys!17083 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))

(assert (=> d!1349463 (= (contains!12419 (keys!17083 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717) lt!1639088)))

(declare-fun b!4444738 () Bool)

(declare-fun e!2767454 () Bool)

(assert (=> b!4444738 (= e!2767453 e!2767454)))

(declare-fun res!1840893 () Bool)

(assert (=> b!4444738 (=> res!1840893 e!2767454)))

(assert (=> b!4444738 (= res!1840893 (= (h!55576 (keys!17083 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) key!3717))))

(declare-fun b!4444739 () Bool)

(assert (=> b!4444739 (= e!2767454 (contains!12419 (t!356905 (keys!17083 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) key!3717))))

(assert (= (and d!1349463 res!1840892) b!4444738))

(assert (= (and b!4444738 (not res!1840893)) b!4444739))

(assert (=> d!1349463 m!5133761))

(declare-fun m!5134691 () Bool)

(assert (=> d!1349463 m!5134691))

(declare-fun m!5134693 () Bool)

(assert (=> d!1349463 m!5134693))

(declare-fun m!5134695 () Bool)

(assert (=> b!4444739 m!5134695))

(assert (=> b!4444165 d!1349463))

(assert (=> b!4444165 d!1349457))

(declare-fun d!1349465 () Bool)

(declare-fun e!2767455 () Bool)

(assert (=> d!1349465 e!2767455))

(declare-fun res!1840894 () Bool)

(assert (=> d!1349465 (=> res!1840894 e!2767455)))

(declare-fun lt!1639090 () Bool)

(assert (=> d!1349465 (= res!1840894 (not lt!1639090))))

(declare-fun lt!1639089 () Bool)

(assert (=> d!1349465 (= lt!1639090 lt!1639089)))

(declare-fun lt!1639091 () Unit!84144)

(declare-fun e!2767456 () Unit!84144)

(assert (=> d!1349465 (= lt!1639091 e!2767456)))

(declare-fun c!756437 () Bool)

(assert (=> d!1349465 (= c!756437 lt!1639089)))

(assert (=> d!1349465 (= lt!1639089 (containsKey!1271 (toList!3693 lt!1638751) (_1!28190 lt!1638450)))))

(assert (=> d!1349465 (= (contains!12414 lt!1638751 (_1!28190 lt!1638450)) lt!1639090)))

(declare-fun b!4444740 () Bool)

(declare-fun lt!1639092 () Unit!84144)

(assert (=> b!4444740 (= e!2767456 lt!1639092)))

(assert (=> b!4444740 (= lt!1639092 (lemmaContainsKeyImpliesGetValueByKeyDefined!715 (toList!3693 lt!1638751) (_1!28190 lt!1638450)))))

(assert (=> b!4444740 (isDefined!8112 (getValueByKey!808 (toList!3693 lt!1638751) (_1!28190 lt!1638450)))))

(declare-fun b!4444741 () Bool)

(declare-fun Unit!84247 () Unit!84144)

(assert (=> b!4444741 (= e!2767456 Unit!84247)))

(declare-fun b!4444742 () Bool)

(assert (=> b!4444742 (= e!2767455 (isDefined!8112 (getValueByKey!808 (toList!3693 lt!1638751) (_1!28190 lt!1638450))))))

(assert (= (and d!1349465 c!756437) b!4444740))

(assert (= (and d!1349465 (not c!756437)) b!4444741))

(assert (= (and d!1349465 (not res!1840894)) b!4444742))

(declare-fun m!5134697 () Bool)

(assert (=> d!1349465 m!5134697))

(declare-fun m!5134699 () Bool)

(assert (=> b!4444740 m!5134699))

(assert (=> b!4444740 m!5133739))

(assert (=> b!4444740 m!5133739))

(declare-fun m!5134701 () Bool)

(assert (=> b!4444740 m!5134701))

(assert (=> b!4444742 m!5133739))

(assert (=> b!4444742 m!5133739))

(assert (=> b!4444742 m!5134701))

(assert (=> d!1349175 d!1349465))

(declare-fun b!4444744 () Bool)

(declare-fun e!2767457 () Option!10822)

(declare-fun e!2767458 () Option!10822)

(assert (=> b!4444744 (= e!2767457 e!2767458)))

(declare-fun c!756439 () Bool)

(assert (=> b!4444744 (= c!756439 (and ((_ is Cons!49837) lt!1638749) (not (= (_1!28190 (h!55572 lt!1638749)) (_1!28190 lt!1638450)))))))

(declare-fun d!1349467 () Bool)

(declare-fun c!756438 () Bool)

(assert (=> d!1349467 (= c!756438 (and ((_ is Cons!49837) lt!1638749) (= (_1!28190 (h!55572 lt!1638749)) (_1!28190 lt!1638450))))))

(assert (=> d!1349467 (= (getValueByKey!808 lt!1638749 (_1!28190 lt!1638450)) e!2767457)))

(declare-fun b!4444745 () Bool)

(assert (=> b!4444745 (= e!2767458 (getValueByKey!808 (t!356903 lt!1638749) (_1!28190 lt!1638450)))))

(declare-fun b!4444743 () Bool)

(assert (=> b!4444743 (= e!2767457 (Some!10821 (_2!28190 (h!55572 lt!1638749))))))

(declare-fun b!4444746 () Bool)

(assert (=> b!4444746 (= e!2767458 None!10821)))

(assert (= (and d!1349467 c!756438) b!4444743))

(assert (= (and d!1349467 (not c!756438)) b!4444744))

(assert (= (and b!4444744 c!756439) b!4444745))

(assert (= (and b!4444744 (not c!756439)) b!4444746))

(declare-fun m!5134707 () Bool)

(assert (=> b!4444745 m!5134707))

(assert (=> d!1349175 d!1349467))

(declare-fun d!1349469 () Bool)

(assert (=> d!1349469 (= (getValueByKey!808 lt!1638749 (_1!28190 lt!1638450)) (Some!10821 (_2!28190 lt!1638450)))))

(declare-fun lt!1639093 () Unit!84144)

(assert (=> d!1349469 (= lt!1639093 (choose!28248 lt!1638749 (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))

(declare-fun e!2767459 () Bool)

(assert (=> d!1349469 e!2767459))

(declare-fun res!1840895 () Bool)

(assert (=> d!1349469 (=> (not res!1840895) (not e!2767459))))

(assert (=> d!1349469 (= res!1840895 (isStrictlySorted!278 lt!1638749))))

(assert (=> d!1349469 (= (lemmaContainsTupThenGetReturnValue!523 lt!1638749 (_1!28190 lt!1638450) (_2!28190 lt!1638450)) lt!1639093)))

(declare-fun b!4444747 () Bool)

(declare-fun res!1840896 () Bool)

(assert (=> b!4444747 (=> (not res!1840896) (not e!2767459))))

(assert (=> b!4444747 (= res!1840896 (containsKey!1271 lt!1638749 (_1!28190 lt!1638450)))))

(declare-fun b!4444748 () Bool)

(assert (=> b!4444748 (= e!2767459 (contains!12420 lt!1638749 (tuple2!49793 (_1!28190 lt!1638450) (_2!28190 lt!1638450))))))

(assert (= (and d!1349469 res!1840895) b!4444747))

(assert (= (and b!4444747 res!1840896) b!4444748))

(assert (=> d!1349469 m!5133733))

(declare-fun m!5134713 () Bool)

(assert (=> d!1349469 m!5134713))

(declare-fun m!5134715 () Bool)

(assert (=> d!1349469 m!5134715))

(declare-fun m!5134717 () Bool)

(assert (=> b!4444747 m!5134717))

(declare-fun m!5134719 () Bool)

(assert (=> b!4444748 m!5134719))

(assert (=> d!1349175 d!1349469))

(declare-fun b!4444754 () Bool)

(declare-fun e!2767465 () List!49961)

(declare-fun call!309217 () List!49961)

(assert (=> b!4444754 (= e!2767465 call!309217)))

(declare-fun b!4444755 () Bool)

(declare-fun e!2767467 () List!49961)

(assert (=> b!4444755 (= e!2767467 (insertStrictlySorted!306 (t!356903 (toList!3693 lt!1638453)) (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))

(declare-fun bm!309212 () Bool)

(declare-fun call!309219 () List!49961)

(assert (=> bm!309212 (= call!309219 call!309217)))

(declare-fun b!4444756 () Bool)

(declare-fun e!2767463 () Bool)

(declare-fun lt!1639115 () List!49961)

(assert (=> b!4444756 (= e!2767463 (contains!12420 lt!1639115 (tuple2!49793 (_1!28190 lt!1638450) (_2!28190 lt!1638450))))))

(declare-fun b!4444757 () Bool)

(declare-fun e!2767464 () List!49961)

(assert (=> b!4444757 (= e!2767464 call!309219)))

(declare-fun bm!309213 () Bool)

(declare-fun c!756442 () Bool)

(assert (=> bm!309213 (= call!309217 ($colon$colon!817 e!2767467 (ite c!756442 (h!55572 (toList!3693 lt!1638453)) (tuple2!49793 (_1!28190 lt!1638450) (_2!28190 lt!1638450)))))))

(declare-fun c!756444 () Bool)

(assert (=> bm!309213 (= c!756444 c!756442)))

(declare-fun b!4444758 () Bool)

(assert (=> b!4444758 (= e!2767465 e!2767464)))

(declare-fun c!756443 () Bool)

(assert (=> b!4444758 (= c!756443 (and ((_ is Cons!49837) (toList!3693 lt!1638453)) (= (_1!28190 (h!55572 (toList!3693 lt!1638453))) (_1!28190 lt!1638450))))))

(declare-fun bm!309214 () Bool)

(declare-fun call!309218 () List!49961)

(assert (=> bm!309214 (= call!309218 call!309219)))

(declare-fun c!756441 () Bool)

(declare-fun b!4444760 () Bool)

(assert (=> b!4444760 (= e!2767467 (ite c!756443 (t!356903 (toList!3693 lt!1638453)) (ite c!756441 (Cons!49837 (h!55572 (toList!3693 lt!1638453)) (t!356903 (toList!3693 lt!1638453))) Nil!49837)))))

(declare-fun b!4444761 () Bool)

(declare-fun e!2767466 () List!49961)

(assert (=> b!4444761 (= e!2767466 call!309218)))

(declare-fun b!4444762 () Bool)

(assert (=> b!4444762 (= e!2767466 call!309218)))

(declare-fun b!4444763 () Bool)

(declare-fun res!1840901 () Bool)

(assert (=> b!4444763 (=> (not res!1840901) (not e!2767463))))

(assert (=> b!4444763 (= res!1840901 (containsKey!1271 lt!1639115 (_1!28190 lt!1638450)))))

(declare-fun b!4444759 () Bool)

(assert (=> b!4444759 (= c!756441 (and ((_ is Cons!49837) (toList!3693 lt!1638453)) (bvsgt (_1!28190 (h!55572 (toList!3693 lt!1638453))) (_1!28190 lt!1638450))))))

(assert (=> b!4444759 (= e!2767464 e!2767466)))

(declare-fun d!1349473 () Bool)

(assert (=> d!1349473 e!2767463))

(declare-fun res!1840900 () Bool)

(assert (=> d!1349473 (=> (not res!1840900) (not e!2767463))))

(assert (=> d!1349473 (= res!1840900 (isStrictlySorted!278 lt!1639115))))

(assert (=> d!1349473 (= lt!1639115 e!2767465)))

(assert (=> d!1349473 (= c!756442 (and ((_ is Cons!49837) (toList!3693 lt!1638453)) (bvslt (_1!28190 (h!55572 (toList!3693 lt!1638453))) (_1!28190 lt!1638450))))))

(assert (=> d!1349473 (isStrictlySorted!278 (toList!3693 lt!1638453))))

(assert (=> d!1349473 (= (insertStrictlySorted!306 (toList!3693 lt!1638453) (_1!28190 lt!1638450) (_2!28190 lt!1638450)) lt!1639115)))

(assert (= (and d!1349473 c!756442) b!4444754))

(assert (= (and d!1349473 (not c!756442)) b!4444758))

(assert (= (and b!4444758 c!756443) b!4444757))

(assert (= (and b!4444758 (not c!756443)) b!4444759))

(assert (= (and b!4444759 c!756441) b!4444761))

(assert (= (and b!4444759 (not c!756441)) b!4444762))

(assert (= (or b!4444761 b!4444762) bm!309214))

(assert (= (or b!4444757 bm!309214) bm!309212))

(assert (= (or b!4444754 bm!309212) bm!309213))

(assert (= (and bm!309213 c!756444) b!4444755))

(assert (= (and bm!309213 (not c!756444)) b!4444760))

(assert (= (and d!1349473 res!1840900) b!4444763))

(assert (= (and b!4444763 res!1840901) b!4444756))

(declare-fun m!5134721 () Bool)

(assert (=> b!4444763 m!5134721))

(declare-fun m!5134723 () Bool)

(assert (=> b!4444756 m!5134723))

(declare-fun m!5134725 () Bool)

(assert (=> b!4444755 m!5134725))

(declare-fun m!5134727 () Bool)

(assert (=> bm!309213 m!5134727))

(declare-fun m!5134729 () Bool)

(assert (=> d!1349473 m!5134729))

(declare-fun m!5134731 () Bool)

(assert (=> d!1349473 m!5134731))

(assert (=> d!1349175 d!1349473))

(declare-fun d!1349475 () Bool)

(declare-fun res!1840902 () Bool)

(declare-fun e!2767468 () Bool)

(assert (=> d!1349475 (=> res!1840902 e!2767468)))

(assert (=> d!1349475 (= res!1840902 (and ((_ is Cons!49836) (toList!3694 lt!1638451)) (= (_1!28189 (h!55571 (toList!3694 lt!1638451))) key!3717)))))

(assert (=> d!1349475 (= (containsKey!1270 (toList!3694 lt!1638451) key!3717) e!2767468)))

(declare-fun b!4444764 () Bool)

(declare-fun e!2767469 () Bool)

(assert (=> b!4444764 (= e!2767468 e!2767469)))

(declare-fun res!1840903 () Bool)

(assert (=> b!4444764 (=> (not res!1840903) (not e!2767469))))

(assert (=> b!4444764 (= res!1840903 ((_ is Cons!49836) (toList!3694 lt!1638451)))))

(declare-fun b!4444765 () Bool)

(assert (=> b!4444765 (= e!2767469 (containsKey!1270 (t!356902 (toList!3694 lt!1638451)) key!3717))))

(assert (= (and d!1349475 (not res!1840902)) b!4444764))

(assert (= (and b!4444764 res!1840903) b!4444765))

(declare-fun m!5134733 () Bool)

(assert (=> b!4444765 m!5134733))

(assert (=> d!1349079 d!1349475))

(declare-fun bs!765372 () Bool)

(declare-fun b!4444766 () Bool)

(assert (= bs!765372 (and b!4444766 b!4444112)))

(declare-fun lambda!158015 () Int)

(assert (=> bs!765372 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638694) (= lambda!158015 lambda!157931))))

(declare-fun bs!765373 () Bool)

(assert (= bs!765373 (and b!4444766 b!4444109)))

(assert (=> bs!765373 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638452) (= lambda!158015 lambda!157929))))

(declare-fun bs!765374 () Bool)

(assert (= bs!765374 (and b!4444766 d!1349101)))

(assert (=> bs!765374 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638707) (= lambda!158015 lambda!157932))))

(declare-fun bs!765375 () Bool)

(assert (= bs!765375 (and b!4444766 d!1349429)))

(assert (=> bs!765375 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1639014) (= lambda!158015 lambda!158001))))

(declare-fun bs!765377 () Bool)

(assert (= bs!765377 (and b!4444766 b!4444622)))

(assert (=> bs!765377 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1639001) (= lambda!158015 lambda!158000))))

(assert (=> bs!765372 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638452) (= lambda!158015 lambda!157930))))

(declare-fun bs!765380 () Bool)

(assert (= bs!765380 (and b!4444766 b!4444619)))

(assert (=> bs!765380 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158015 lambda!157998))))

(declare-fun bs!765382 () Bool)

(assert (= bs!765382 (and b!4444766 d!1349419)))

(assert (=> bs!765382 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638992) (= lambda!158015 lambda!157996))))

(declare-fun bs!765384 () Bool)

(assert (= bs!765384 (and b!4444766 b!4444601)))

(assert (=> bs!765384 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158015 lambda!157994))))

(declare-fun bs!765385 () Bool)

(assert (= bs!765385 (and b!4444766 d!1349151)))

(assert (=> bs!765385 (not (= lambda!158015 lambda!157938))))

(assert (=> bs!765384 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638979) (= lambda!158015 lambda!157995))))

(assert (=> bs!765377 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158015 lambda!157999))))

(declare-fun bs!765389 () Bool)

(assert (= bs!765389 (and b!4444766 b!4444598)))

(assert (=> bs!765389 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158015 lambda!157993))))

(assert (=> b!4444766 true))

(declare-fun bs!765396 () Bool)

(declare-fun b!4444769 () Bool)

(assert (= bs!765396 (and b!4444769 b!4444112)))

(declare-fun lambda!158017 () Int)

(assert (=> bs!765396 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638694) (= lambda!158017 lambda!157931))))

(declare-fun bs!765399 () Bool)

(assert (= bs!765399 (and b!4444769 b!4444109)))

(assert (=> bs!765399 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638452) (= lambda!158017 lambda!157929))))

(declare-fun bs!765401 () Bool)

(assert (= bs!765401 (and b!4444769 d!1349101)))

(assert (=> bs!765401 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638707) (= lambda!158017 lambda!157932))))

(declare-fun bs!765402 () Bool)

(assert (= bs!765402 (and b!4444769 d!1349429)))

(assert (=> bs!765402 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1639014) (= lambda!158017 lambda!158001))))

(declare-fun bs!765404 () Bool)

(assert (= bs!765404 (and b!4444769 b!4444622)))

(assert (=> bs!765404 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1639001) (= lambda!158017 lambda!158000))))

(assert (=> bs!765396 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638452) (= lambda!158017 lambda!157930))))

(declare-fun bs!765405 () Bool)

(assert (= bs!765405 (and b!4444769 b!4444619)))

(assert (=> bs!765405 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158017 lambda!157998))))

(declare-fun bs!765407 () Bool)

(assert (= bs!765407 (and b!4444769 b!4444601)))

(assert (=> bs!765407 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158017 lambda!157994))))

(declare-fun bs!765408 () Bool)

(assert (= bs!765408 (and b!4444769 b!4444766)))

(assert (=> bs!765408 (= lambda!158017 lambda!158015)))

(declare-fun bs!765409 () Bool)

(assert (= bs!765409 (and b!4444769 d!1349419)))

(assert (=> bs!765409 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638992) (= lambda!158017 lambda!157996))))

(declare-fun bs!765410 () Bool)

(assert (= bs!765410 (and b!4444769 d!1349151)))

(assert (=> bs!765410 (not (= lambda!158017 lambda!157938))))

(assert (=> bs!765407 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1638979) (= lambda!158017 lambda!157995))))

(assert (=> bs!765404 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158017 lambda!157999))))

(declare-fun bs!765411 () Bool)

(assert (= bs!765411 (and b!4444769 b!4444598)))

(assert (=> bs!765411 (= (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158017 lambda!157993))))

(assert (=> b!4444769 true))

(declare-fun lt!1639116 () ListMap!2937)

(declare-fun lambda!158019 () Int)

(assert (=> bs!765396 (= (= lt!1639116 lt!1638694) (= lambda!158019 lambda!157931))))

(assert (=> bs!765399 (= (= lt!1639116 lt!1638452) (= lambda!158019 lambda!157929))))

(assert (=> bs!765401 (= (= lt!1639116 lt!1638707) (= lambda!158019 lambda!157932))))

(assert (=> bs!765402 (= (= lt!1639116 lt!1639014) (= lambda!158019 lambda!158001))))

(assert (=> bs!765404 (= (= lt!1639116 lt!1639001) (= lambda!158019 lambda!158000))))

(assert (=> bs!765396 (= (= lt!1639116 lt!1638452) (= lambda!158019 lambda!157930))))

(assert (=> bs!765407 (= (= lt!1639116 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158019 lambda!157994))))

(assert (=> bs!765405 (= (= lt!1639116 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158019 lambda!157998))))

(assert (=> b!4444769 (= (= lt!1639116 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158019 lambda!158017))))

(assert (=> bs!765408 (= (= lt!1639116 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158019 lambda!158015))))

(assert (=> bs!765409 (= (= lt!1639116 lt!1638992) (= lambda!158019 lambda!157996))))

(assert (=> bs!765410 (not (= lambda!158019 lambda!157938))))

(assert (=> bs!765407 (= (= lt!1639116 lt!1638979) (= lambda!158019 lambda!157995))))

(assert (=> bs!765404 (= (= lt!1639116 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158019 lambda!157999))))

(assert (=> bs!765411 (= (= lt!1639116 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158019 lambda!157993))))

(assert (=> b!4444769 true))

(declare-fun bs!765412 () Bool)

(declare-fun d!1349477 () Bool)

(assert (= bs!765412 (and d!1349477 b!4444112)))

(declare-fun lambda!158020 () Int)

(declare-fun lt!1639129 () ListMap!2937)

(assert (=> bs!765412 (= (= lt!1639129 lt!1638694) (= lambda!158020 lambda!157931))))

(declare-fun bs!765413 () Bool)

(assert (= bs!765413 (and d!1349477 d!1349101)))

(assert (=> bs!765413 (= (= lt!1639129 lt!1638707) (= lambda!158020 lambda!157932))))

(declare-fun bs!765414 () Bool)

(assert (= bs!765414 (and d!1349477 d!1349429)))

(assert (=> bs!765414 (= (= lt!1639129 lt!1639014) (= lambda!158020 lambda!158001))))

(declare-fun bs!765415 () Bool)

(assert (= bs!765415 (and d!1349477 b!4444622)))

(assert (=> bs!765415 (= (= lt!1639129 lt!1639001) (= lambda!158020 lambda!158000))))

(assert (=> bs!765412 (= (= lt!1639129 lt!1638452) (= lambda!158020 lambda!157930))))

(declare-fun bs!765416 () Bool)

(assert (= bs!765416 (and d!1349477 b!4444601)))

(assert (=> bs!765416 (= (= lt!1639129 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158020 lambda!157994))))

(declare-fun bs!765418 () Bool)

(assert (= bs!765418 (and d!1349477 b!4444769)))

(assert (=> bs!765418 (= (= lt!1639129 lt!1639116) (= lambda!158020 lambda!158019))))

(declare-fun bs!765420 () Bool)

(assert (= bs!765420 (and d!1349477 b!4444109)))

(assert (=> bs!765420 (= (= lt!1639129 lt!1638452) (= lambda!158020 lambda!157929))))

(declare-fun bs!765422 () Bool)

(assert (= bs!765422 (and d!1349477 b!4444619)))

(assert (=> bs!765422 (= (= lt!1639129 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158020 lambda!157998))))

(assert (=> bs!765418 (= (= lt!1639129 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158020 lambda!158017))))

(declare-fun bs!765425 () Bool)

(assert (= bs!765425 (and d!1349477 b!4444766)))

(assert (=> bs!765425 (= (= lt!1639129 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158020 lambda!158015))))

(declare-fun bs!765426 () Bool)

(assert (= bs!765426 (and d!1349477 d!1349419)))

(assert (=> bs!765426 (= (= lt!1639129 lt!1638992) (= lambda!158020 lambda!157996))))

(declare-fun bs!765428 () Bool)

(assert (= bs!765428 (and d!1349477 d!1349151)))

(assert (=> bs!765428 (not (= lambda!158020 lambda!157938))))

(assert (=> bs!765416 (= (= lt!1639129 lt!1638979) (= lambda!158020 lambda!157995))))

(assert (=> bs!765415 (= (= lt!1639129 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158020 lambda!157999))))

(declare-fun bs!765432 () Bool)

(assert (= bs!765432 (and d!1349477 b!4444598)))

(assert (=> bs!765432 (= (= lt!1639129 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158020 lambda!157993))))

(assert (=> d!1349477 true))

(declare-fun e!2767471 () ListMap!2937)

(assert (=> b!4444766 (= e!2767471 (extractMap!914 (t!356903 (toList!3693 lm!1616))))))

(declare-fun lt!1639122 () Unit!84144)

(declare-fun call!309222 () Unit!84144)

(assert (=> b!4444766 (= lt!1639122 call!309222)))

(declare-fun call!309221 () Bool)

(assert (=> b!4444766 call!309221))

(declare-fun lt!1639127 () Unit!84144)

(assert (=> b!4444766 (= lt!1639127 lt!1639122)))

(declare-fun call!309220 () Bool)

(assert (=> b!4444766 call!309220))

(declare-fun lt!1639133 () Unit!84144)

(declare-fun Unit!84251 () Unit!84144)

(assert (=> b!4444766 (= lt!1639133 Unit!84251)))

(declare-fun b!4444767 () Bool)

(declare-fun res!1840904 () Bool)

(declare-fun e!2767472 () Bool)

(assert (=> b!4444767 (=> (not res!1840904) (not e!2767472))))

(assert (=> b!4444767 (= res!1840904 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) lambda!158020))))

(declare-fun bm!309215 () Bool)

(assert (=> bm!309215 (= call!309222 (lemmaContainsAllItsOwnKeys!209 (extractMap!914 (t!356903 (toList!3693 lm!1616)))))))

(declare-fun bm!309216 () Bool)

(declare-fun c!756445 () Bool)

(assert (=> bm!309216 (= call!309221 (forall!9734 (ite c!756445 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (_2!28190 (h!55572 (toList!3693 lm!1616)))) (ite c!756445 lambda!158015 lambda!158019)))))

(declare-fun bm!309217 () Bool)

(assert (=> bm!309217 (= call!309220 (forall!9734 (ite c!756445 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (ite c!756445 lambda!158015 lambda!158019)))))

(assert (=> d!1349477 e!2767472))

(declare-fun res!1840906 () Bool)

(assert (=> d!1349477 (=> (not res!1840906) (not e!2767472))))

(assert (=> d!1349477 (= res!1840906 (forall!9734 (_2!28190 (h!55572 (toList!3693 lm!1616))) lambda!158020))))

(assert (=> d!1349477 (= lt!1639129 e!2767471)))

(assert (=> d!1349477 (= c!756445 ((_ is Nil!49836) (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (=> d!1349477 (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lm!1616))))))

(assert (=> d!1349477 (= (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))) lt!1639129)))

(declare-fun b!4444768 () Bool)

(assert (=> b!4444768 (= e!2767472 (invariantList!852 (toList!3694 lt!1639129)))))

(assert (=> b!4444769 (= e!2767471 lt!1639116)))

(declare-fun lt!1639125 () ListMap!2937)

(assert (=> b!4444769 (= lt!1639125 (+!1244 (extractMap!914 (t!356903 (toList!3693 lm!1616))) (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> b!4444769 (= lt!1639116 (addToMapMapFromBucket!459 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))) (+!1244 (extractMap!914 (t!356903 (toList!3693 lm!1616))) (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun lt!1639117 () Unit!84144)

(assert (=> b!4444769 (= lt!1639117 call!309222)))

(assert (=> b!4444769 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) lambda!158017)))

(declare-fun lt!1639126 () Unit!84144)

(assert (=> b!4444769 (= lt!1639126 lt!1639117)))

(assert (=> b!4444769 (forall!9734 (toList!3694 lt!1639125) lambda!158019)))

(declare-fun lt!1639124 () Unit!84144)

(declare-fun Unit!84252 () Unit!84144)

(assert (=> b!4444769 (= lt!1639124 Unit!84252)))

(assert (=> b!4444769 call!309220))

(declare-fun lt!1639119 () Unit!84144)

(declare-fun Unit!84253 () Unit!84144)

(assert (=> b!4444769 (= lt!1639119 Unit!84253)))

(declare-fun lt!1639118 () Unit!84144)

(declare-fun Unit!84254 () Unit!84144)

(assert (=> b!4444769 (= lt!1639118 Unit!84254)))

(declare-fun lt!1639131 () Unit!84144)

(assert (=> b!4444769 (= lt!1639131 (forallContained!2149 (toList!3694 lt!1639125) lambda!158019 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> b!4444769 (contains!12415 lt!1639125 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(declare-fun lt!1639120 () Unit!84144)

(declare-fun Unit!84255 () Unit!84144)

(assert (=> b!4444769 (= lt!1639120 Unit!84255)))

(assert (=> b!4444769 (contains!12415 lt!1639116 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(declare-fun lt!1639134 () Unit!84144)

(declare-fun Unit!84256 () Unit!84144)

(assert (=> b!4444769 (= lt!1639134 Unit!84256)))

(assert (=> b!4444769 call!309221))

(declare-fun lt!1639135 () Unit!84144)

(declare-fun Unit!84257 () Unit!84144)

(assert (=> b!4444769 (= lt!1639135 Unit!84257)))

(assert (=> b!4444769 (forall!9734 (toList!3694 lt!1639125) lambda!158019)))

(declare-fun lt!1639123 () Unit!84144)

(declare-fun Unit!84258 () Unit!84144)

(assert (=> b!4444769 (= lt!1639123 Unit!84258)))

(declare-fun lt!1639121 () Unit!84144)

(declare-fun Unit!84259 () Unit!84144)

(assert (=> b!4444769 (= lt!1639121 Unit!84259)))

(declare-fun lt!1639128 () Unit!84144)

(assert (=> b!4444769 (= lt!1639128 (addForallContainsKeyThenBeforeAdding!209 (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1639116 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> b!4444769 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) lambda!158019)))

(declare-fun lt!1639136 () Unit!84144)

(assert (=> b!4444769 (= lt!1639136 lt!1639128)))

(assert (=> b!4444769 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) lambda!158019)))

(declare-fun lt!1639132 () Unit!84144)

(declare-fun Unit!84260 () Unit!84144)

(assert (=> b!4444769 (= lt!1639132 Unit!84260)))

(declare-fun res!1840905 () Bool)

(assert (=> b!4444769 (= res!1840905 (forall!9734 (_2!28190 (h!55572 (toList!3693 lm!1616))) lambda!158019))))

(declare-fun e!2767470 () Bool)

(assert (=> b!4444769 (=> (not res!1840905) (not e!2767470))))

(assert (=> b!4444769 e!2767470))

(declare-fun lt!1639130 () Unit!84144)

(declare-fun Unit!84261 () Unit!84144)

(assert (=> b!4444769 (= lt!1639130 Unit!84261)))

(declare-fun b!4444770 () Bool)

(assert (=> b!4444770 (= e!2767470 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) lambda!158019))))

(assert (= (and d!1349477 c!756445) b!4444766))

(assert (= (and d!1349477 (not c!756445)) b!4444769))

(assert (= (and b!4444769 res!1840905) b!4444770))

(assert (= (or b!4444766 b!4444769) bm!309215))

(assert (= (or b!4444766 b!4444769) bm!309216))

(assert (= (or b!4444766 b!4444769) bm!309217))

(assert (= (and d!1349477 res!1840906) b!4444767))

(assert (= (and b!4444767 res!1840904) b!4444768))

(declare-fun m!5134735 () Bool)

(assert (=> b!4444769 m!5134735))

(assert (=> b!4444769 m!5133381))

(declare-fun m!5134737 () Bool)

(assert (=> b!4444769 m!5134737))

(declare-fun m!5134739 () Bool)

(assert (=> b!4444769 m!5134739))

(declare-fun m!5134741 () Bool)

(assert (=> b!4444769 m!5134741))

(declare-fun m!5134743 () Bool)

(assert (=> b!4444769 m!5134743))

(declare-fun m!5134745 () Bool)

(assert (=> b!4444769 m!5134745))

(assert (=> b!4444769 m!5133381))

(assert (=> b!4444769 m!5134743))

(declare-fun m!5134747 () Bool)

(assert (=> b!4444769 m!5134747))

(assert (=> b!4444769 m!5134735))

(declare-fun m!5134749 () Bool)

(assert (=> b!4444769 m!5134749))

(declare-fun m!5134751 () Bool)

(assert (=> b!4444769 m!5134751))

(declare-fun m!5134753 () Bool)

(assert (=> b!4444769 m!5134753))

(assert (=> b!4444769 m!5134753))

(declare-fun m!5134755 () Bool)

(assert (=> bm!309217 m!5134755))

(assert (=> bm!309215 m!5133381))

(declare-fun m!5134757 () Bool)

(assert (=> bm!309215 m!5134757))

(declare-fun m!5134759 () Bool)

(assert (=> b!4444767 m!5134759))

(declare-fun m!5134761 () Bool)

(assert (=> b!4444768 m!5134761))

(assert (=> b!4444770 m!5134753))

(declare-fun m!5134763 () Bool)

(assert (=> bm!309216 m!5134763))

(declare-fun m!5134765 () Bool)

(assert (=> d!1349477 m!5134765))

(assert (=> d!1349477 m!5133651))

(assert (=> b!4443969 d!1349477))

(declare-fun bs!765444 () Bool)

(declare-fun d!1349479 () Bool)

(assert (= bs!765444 (and d!1349479 d!1349081)))

(declare-fun lambda!158022 () Int)

(assert (=> bs!765444 (= lambda!158022 lambda!157872)))

(declare-fun bs!765445 () Bool)

(assert (= bs!765445 (and d!1349479 d!1349177)))

(assert (=> bs!765445 (= lambda!158022 lambda!157942)))

(declare-fun bs!765446 () Bool)

(assert (= bs!765446 (and d!1349479 d!1349089)))

(assert (=> bs!765446 (= lambda!158022 lambda!157888)))

(declare-fun bs!765447 () Bool)

(assert (= bs!765447 (and d!1349479 d!1349421)))

(assert (=> bs!765447 (= lambda!158022 lambda!157997)))

(declare-fun bs!765448 () Bool)

(assert (= bs!765448 (and d!1349479 d!1349181)))

(assert (=> bs!765448 (= lambda!158022 lambda!157943)))

(declare-fun bs!765449 () Bool)

(assert (= bs!765449 (and d!1349479 d!1349431)))

(assert (=> bs!765449 (= lambda!158022 lambda!158002)))

(declare-fun bs!765450 () Bool)

(assert (= bs!765450 (and d!1349479 d!1349171)))

(assert (=> bs!765450 (= lambda!158022 lambda!157941)))

(declare-fun bs!765451 () Bool)

(assert (= bs!765451 (and d!1349479 start!435012)))

(assert (=> bs!765451 (= lambda!158022 lambda!157844)))

(declare-fun bs!765452 () Bool)

(assert (= bs!765452 (and d!1349479 d!1349189)))

(assert (=> bs!765452 (= lambda!158022 lambda!157944)))

(declare-fun bs!765453 () Bool)

(assert (= bs!765453 (and d!1349479 d!1349149)))

(assert (=> bs!765453 (not (= lambda!158022 lambda!157935))))

(declare-fun lt!1639137 () ListMap!2937)

(assert (=> d!1349479 (invariantList!852 (toList!3694 lt!1639137))))

(declare-fun e!2767473 () ListMap!2937)

(assert (=> d!1349479 (= lt!1639137 e!2767473)))

(declare-fun c!756446 () Bool)

(assert (=> d!1349479 (= c!756446 ((_ is Cons!49837) (t!356903 (toList!3693 lm!1616))))))

(assert (=> d!1349479 (forall!9732 (t!356903 (toList!3693 lm!1616)) lambda!158022)))

(assert (=> d!1349479 (= (extractMap!914 (t!356903 (toList!3693 lm!1616))) lt!1639137)))

(declare-fun b!4444771 () Bool)

(assert (=> b!4444771 (= e!2767473 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (t!356903 (toList!3693 lm!1616)))) (extractMap!914 (t!356903 (t!356903 (toList!3693 lm!1616))))))))

(declare-fun b!4444772 () Bool)

(assert (=> b!4444772 (= e!2767473 (ListMap!2938 Nil!49836))))

(assert (= (and d!1349479 c!756446) b!4444771))

(assert (= (and d!1349479 (not c!756446)) b!4444772))

(declare-fun m!5134801 () Bool)

(assert (=> d!1349479 m!5134801))

(declare-fun m!5134803 () Bool)

(assert (=> d!1349479 m!5134803))

(declare-fun m!5134805 () Bool)

(assert (=> b!4444771 m!5134805))

(assert (=> b!4444771 m!5134805))

(declare-fun m!5134807 () Bool)

(assert (=> b!4444771 m!5134807))

(assert (=> b!4443969 d!1349479))

(declare-fun bs!765473 () Bool)

(declare-fun d!1349483 () Bool)

(assert (= bs!765473 (and d!1349483 b!4444112)))

(declare-fun lambda!158025 () Int)

(assert (=> bs!765473 (= (= lt!1638452 lt!1638694) (= lambda!158025 lambda!157931))))

(declare-fun bs!765474 () Bool)

(assert (= bs!765474 (and d!1349483 d!1349101)))

(assert (=> bs!765474 (= (= lt!1638452 lt!1638707) (= lambda!158025 lambda!157932))))

(declare-fun bs!765475 () Bool)

(assert (= bs!765475 (and d!1349483 d!1349429)))

(assert (=> bs!765475 (= (= lt!1638452 lt!1639014) (= lambda!158025 lambda!158001))))

(declare-fun bs!765476 () Bool)

(assert (= bs!765476 (and d!1349483 b!4444622)))

(assert (=> bs!765476 (= (= lt!1638452 lt!1639001) (= lambda!158025 lambda!158000))))

(assert (=> bs!765473 (= lambda!158025 lambda!157930)))

(declare-fun bs!765477 () Bool)

(assert (= bs!765477 (and d!1349483 d!1349477)))

(assert (=> bs!765477 (= (= lt!1638452 lt!1639129) (= lambda!158025 lambda!158020))))

(declare-fun bs!765478 () Bool)

(assert (= bs!765478 (and d!1349483 b!4444601)))

(assert (=> bs!765478 (= (= lt!1638452 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158025 lambda!157994))))

(declare-fun bs!765479 () Bool)

(assert (= bs!765479 (and d!1349483 b!4444769)))

(assert (=> bs!765479 (= (= lt!1638452 lt!1639116) (= lambda!158025 lambda!158019))))

(declare-fun bs!765480 () Bool)

(assert (= bs!765480 (and d!1349483 b!4444109)))

(assert (=> bs!765480 (= lambda!158025 lambda!157929)))

(declare-fun bs!765481 () Bool)

(assert (= bs!765481 (and d!1349483 b!4444619)))

(assert (=> bs!765481 (= (= lt!1638452 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158025 lambda!157998))))

(assert (=> bs!765479 (= (= lt!1638452 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158025 lambda!158017))))

(declare-fun bs!765482 () Bool)

(assert (= bs!765482 (and d!1349483 b!4444766)))

(assert (=> bs!765482 (= (= lt!1638452 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158025 lambda!158015))))

(declare-fun bs!765483 () Bool)

(assert (= bs!765483 (and d!1349483 d!1349419)))

(assert (=> bs!765483 (= (= lt!1638452 lt!1638992) (= lambda!158025 lambda!157996))))

(declare-fun bs!765484 () Bool)

(assert (= bs!765484 (and d!1349483 d!1349151)))

(assert (=> bs!765484 (not (= lambda!158025 lambda!157938))))

(assert (=> bs!765478 (= (= lt!1638452 lt!1638979) (= lambda!158025 lambda!157995))))

(assert (=> bs!765476 (= (= lt!1638452 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158025 lambda!157999))))

(declare-fun bs!765485 () Bool)

(assert (= bs!765485 (and d!1349483 b!4444598)))

(assert (=> bs!765485 (= (= lt!1638452 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158025 lambda!157993))))

(assert (=> d!1349483 true))

(assert (=> d!1349483 (forall!9734 (toList!3694 lt!1638452) lambda!158025)))

(declare-fun lt!1639141 () Unit!84144)

(declare-fun choose!28254 (ListMap!2937) Unit!84144)

(assert (=> d!1349483 (= lt!1639141 (choose!28254 lt!1638452))))

(assert (=> d!1349483 (= (lemmaContainsAllItsOwnKeys!209 lt!1638452) lt!1639141)))

(declare-fun bs!765486 () Bool)

(assert (= bs!765486 d!1349483))

(declare-fun m!5134847 () Bool)

(assert (=> bs!765486 m!5134847))

(declare-fun m!5134849 () Bool)

(assert (=> bs!765486 m!5134849))

(assert (=> bm!309150 d!1349483))

(declare-fun d!1349529 () Bool)

(declare-fun res!1840915 () Bool)

(declare-fun e!2767485 () Bool)

(assert (=> d!1349529 (=> res!1840915 e!2767485)))

(assert (=> d!1349529 (= res!1840915 ((_ is Nil!49836) (ite c!756292 (toList!3694 lt!1638452) (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> d!1349529 (= (forall!9734 (ite c!756292 (toList!3694 lt!1638452) (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (ite c!756292 lambda!157929 lambda!157931)) e!2767485)))

(declare-fun b!4444784 () Bool)

(declare-fun e!2767486 () Bool)

(assert (=> b!4444784 (= e!2767485 e!2767486)))

(declare-fun res!1840916 () Bool)

(assert (=> b!4444784 (=> (not res!1840916) (not e!2767486))))

(assert (=> b!4444784 (= res!1840916 (dynLambda!20924 (ite c!756292 lambda!157929 lambda!157931) (h!55571 (ite c!756292 (toList!3694 lt!1638452) (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))))

(declare-fun b!4444785 () Bool)

(assert (=> b!4444785 (= e!2767486 (forall!9734 (t!356902 (ite c!756292 (toList!3694 lt!1638452) (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (ite c!756292 lambda!157929 lambda!157931)))))

(assert (= (and d!1349529 (not res!1840915)) b!4444784))

(assert (= (and b!4444784 res!1840916) b!4444785))

(declare-fun b_lambda!145435 () Bool)

(assert (=> (not b_lambda!145435) (not b!4444784)))

(declare-fun m!5134851 () Bool)

(assert (=> b!4444784 m!5134851))

(declare-fun m!5134853 () Bool)

(assert (=> b!4444785 m!5134853))

(assert (=> bm!309152 d!1349529))

(declare-fun d!1349531 () Bool)

(declare-fun lt!1639142 () Bool)

(assert (=> d!1349531 (= lt!1639142 (select (content!8019 e!2767086) key!3717))))

(declare-fun e!2767487 () Bool)

(assert (=> d!1349531 (= lt!1639142 e!2767487)))

(declare-fun res!1840917 () Bool)

(assert (=> d!1349531 (=> (not res!1840917) (not e!2767487))))

(assert (=> d!1349531 (= res!1840917 ((_ is Cons!49839) e!2767086))))

(assert (=> d!1349531 (= (contains!12419 e!2767086 key!3717) lt!1639142)))

(declare-fun b!4444786 () Bool)

(declare-fun e!2767488 () Bool)

(assert (=> b!4444786 (= e!2767487 e!2767488)))

(declare-fun res!1840918 () Bool)

(assert (=> b!4444786 (=> res!1840918 e!2767488)))

(assert (=> b!4444786 (= res!1840918 (= (h!55576 e!2767086) key!3717))))

(declare-fun b!4444787 () Bool)

(assert (=> b!4444787 (= e!2767488 (contains!12419 (t!356905 e!2767086) key!3717))))

(assert (= (and d!1349531 res!1840917) b!4444786))

(assert (= (and b!4444786 (not res!1840918)) b!4444787))

(declare-fun m!5134855 () Bool)

(assert (=> d!1349531 m!5134855))

(declare-fun m!5134857 () Bool)

(assert (=> d!1349531 m!5134857))

(declare-fun m!5134859 () Bool)

(assert (=> b!4444787 m!5134859))

(assert (=> bm!309153 d!1349531))

(declare-fun b!4444789 () Bool)

(declare-fun e!2767489 () Option!10822)

(declare-fun e!2767490 () Option!10822)

(assert (=> b!4444789 (= e!2767489 e!2767490)))

(declare-fun c!756448 () Bool)

(assert (=> b!4444789 (= c!756448 (and ((_ is Cons!49837) (toList!3693 lt!1638729)) (not (= (_1!28190 (h!55572 (toList!3693 lt!1638729))) (_1!28190 lt!1638450)))))))

(declare-fun d!1349533 () Bool)

(declare-fun c!756447 () Bool)

(assert (=> d!1349533 (= c!756447 (and ((_ is Cons!49837) (toList!3693 lt!1638729)) (= (_1!28190 (h!55572 (toList!3693 lt!1638729))) (_1!28190 lt!1638450))))))

(assert (=> d!1349533 (= (getValueByKey!808 (toList!3693 lt!1638729) (_1!28190 lt!1638450)) e!2767489)))

(declare-fun b!4444790 () Bool)

(assert (=> b!4444790 (= e!2767490 (getValueByKey!808 (t!356903 (toList!3693 lt!1638729)) (_1!28190 lt!1638450)))))

(declare-fun b!4444788 () Bool)

(assert (=> b!4444788 (= e!2767489 (Some!10821 (_2!28190 (h!55572 (toList!3693 lt!1638729)))))))

(declare-fun b!4444791 () Bool)

(assert (=> b!4444791 (= e!2767490 None!10821)))

(assert (= (and d!1349533 c!756447) b!4444788))

(assert (= (and d!1349533 (not c!756447)) b!4444789))

(assert (= (and b!4444789 c!756448) b!4444790))

(assert (= (and b!4444789 (not c!756448)) b!4444791))

(declare-fun m!5134861 () Bool)

(assert (=> b!4444790 m!5134861))

(assert (=> b!4444143 d!1349533))

(declare-fun d!1349535 () Bool)

(assert (=> d!1349535 (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638451) key!3717))))

(declare-fun lt!1639145 () Unit!84144)

(declare-fun choose!28255 (List!49960 K!11205) Unit!84144)

(assert (=> d!1349535 (= lt!1639145 (choose!28255 (toList!3694 lt!1638451) key!3717))))

(assert (=> d!1349535 (invariantList!852 (toList!3694 lt!1638451))))

(assert (=> d!1349535 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!714 (toList!3694 lt!1638451) key!3717) lt!1639145)))

(declare-fun bs!765487 () Bool)

(assert (= bs!765487 d!1349535))

(assert (=> bs!765487 m!5133367))

(assert (=> bs!765487 m!5133367))

(assert (=> bs!765487 m!5133369))

(declare-fun m!5134863 () Bool)

(assert (=> bs!765487 m!5134863))

(declare-fun m!5134865 () Bool)

(assert (=> bs!765487 m!5134865))

(assert (=> b!4443952 d!1349535))

(declare-fun d!1349537 () Bool)

(assert (=> d!1349537 (= (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638451) key!3717)) (not (isEmpty!28398 (getValueByKey!807 (toList!3694 lt!1638451) key!3717))))))

(declare-fun bs!765488 () Bool)

(assert (= bs!765488 d!1349537))

(assert (=> bs!765488 m!5133367))

(declare-fun m!5134867 () Bool)

(assert (=> bs!765488 m!5134867))

(assert (=> b!4443952 d!1349537))

(declare-fun b!4444793 () Bool)

(declare-fun e!2767491 () Option!10821)

(declare-fun e!2767492 () Option!10821)

(assert (=> b!4444793 (= e!2767491 e!2767492)))

(declare-fun c!756450 () Bool)

(assert (=> b!4444793 (= c!756450 (and ((_ is Cons!49836) (toList!3694 lt!1638451)) (not (= (_1!28189 (h!55571 (toList!3694 lt!1638451))) key!3717))))))

(declare-fun d!1349539 () Bool)

(declare-fun c!756449 () Bool)

(assert (=> d!1349539 (= c!756449 (and ((_ is Cons!49836) (toList!3694 lt!1638451)) (= (_1!28189 (h!55571 (toList!3694 lt!1638451))) key!3717)))))

(assert (=> d!1349539 (= (getValueByKey!807 (toList!3694 lt!1638451) key!3717) e!2767491)))

(declare-fun b!4444794 () Bool)

(assert (=> b!4444794 (= e!2767492 (getValueByKey!807 (t!356902 (toList!3694 lt!1638451)) key!3717))))

(declare-fun b!4444792 () Bool)

(assert (=> b!4444792 (= e!2767491 (Some!10820 (_2!28189 (h!55571 (toList!3694 lt!1638451)))))))

(declare-fun b!4444795 () Bool)

(assert (=> b!4444795 (= e!2767492 None!10820)))

(assert (= (and d!1349539 c!756449) b!4444792))

(assert (= (and d!1349539 (not c!756449)) b!4444793))

(assert (= (and b!4444793 c!756450) b!4444794))

(assert (= (and b!4444793 (not c!756450)) b!4444795))

(declare-fun m!5134869 () Bool)

(assert (=> b!4444794 m!5134869))

(assert (=> b!4443952 d!1349539))

(declare-fun d!1349541 () Bool)

(assert (=> d!1349541 (contains!12419 (getKeysList!299 (toList!3694 lt!1638451)) key!3717)))

(declare-fun lt!1639148 () Unit!84144)

(declare-fun choose!28256 (List!49960 K!11205) Unit!84144)

(assert (=> d!1349541 (= lt!1639148 (choose!28256 (toList!3694 lt!1638451) key!3717))))

(assert (=> d!1349541 (invariantList!852 (toList!3694 lt!1638451))))

(assert (=> d!1349541 (= (lemmaInListThenGetKeysListContains!296 (toList!3694 lt!1638451) key!3717) lt!1639148)))

(declare-fun bs!765489 () Bool)

(assert (= bs!765489 d!1349541))

(assert (=> bs!765489 m!5133363))

(assert (=> bs!765489 m!5133363))

(declare-fun m!5134871 () Bool)

(assert (=> bs!765489 m!5134871))

(declare-fun m!5134873 () Bool)

(assert (=> bs!765489 m!5134873))

(assert (=> bs!765489 m!5134865))

(assert (=> b!4443952 d!1349541))

(declare-fun bs!765490 () Bool)

(declare-fun b!4444797 () Bool)

(assert (= bs!765490 (and b!4444797 b!4444728)))

(declare-fun lambda!158026 () Int)

(assert (=> bs!765490 (= (= (toList!3694 lt!1638451) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158026 lambda!158007))))

(assert (=> b!4444797 true))

(declare-fun bs!765491 () Bool)

(declare-fun b!4444798 () Bool)

(assert (= bs!765491 (and b!4444798 b!4444729)))

(declare-fun lambda!158027 () Int)

(assert (=> bs!765491 (= lambda!158027 lambda!158008)))

(declare-fun d!1349543 () Bool)

(declare-fun e!2767493 () Bool)

(assert (=> d!1349543 e!2767493))

(declare-fun res!1840921 () Bool)

(assert (=> d!1349543 (=> (not res!1840921) (not e!2767493))))

(declare-fun lt!1639149 () List!49963)

(assert (=> d!1349543 (= res!1840921 (noDuplicate!680 lt!1639149))))

(assert (=> d!1349543 (= lt!1639149 (getKeysList!299 (toList!3694 lt!1638451)))))

(assert (=> d!1349543 (= (keys!17083 lt!1638451) lt!1639149)))

(declare-fun b!4444796 () Bool)

(declare-fun res!1840920 () Bool)

(assert (=> b!4444796 (=> (not res!1840920) (not e!2767493))))

(assert (=> b!4444796 (= res!1840920 (= (length!216 lt!1639149) (length!217 (toList!3694 lt!1638451))))))

(declare-fun res!1840919 () Bool)

(assert (=> b!4444797 (=> (not res!1840919) (not e!2767493))))

(assert (=> b!4444797 (= res!1840919 (forall!9736 lt!1639149 lambda!158026))))

(assert (=> b!4444798 (= e!2767493 (= (content!8019 lt!1639149) (content!8019 (map!10904 (toList!3694 lt!1638451) lambda!158027))))))

(assert (= (and d!1349543 res!1840921) b!4444796))

(assert (= (and b!4444796 res!1840920) b!4444797))

(assert (= (and b!4444797 res!1840919) b!4444798))

(declare-fun m!5134875 () Bool)

(assert (=> d!1349543 m!5134875))

(assert (=> d!1349543 m!5133363))

(declare-fun m!5134877 () Bool)

(assert (=> b!4444796 m!5134877))

(declare-fun m!5134879 () Bool)

(assert (=> b!4444796 m!5134879))

(declare-fun m!5134881 () Bool)

(assert (=> b!4444797 m!5134881))

(declare-fun m!5134883 () Bool)

(assert (=> b!4444798 m!5134883))

(declare-fun m!5134885 () Bool)

(assert (=> b!4444798 m!5134885))

(assert (=> b!4444798 m!5134885))

(declare-fun m!5134887 () Bool)

(assert (=> b!4444798 m!5134887))

(assert (=> b!4443954 d!1349543))

(declare-fun d!1349545 () Bool)

(assert (=> d!1349545 (= (head!9294 (toList!3693 lm!1616)) (h!55572 (toList!3693 lm!1616)))))

(assert (=> d!1349187 d!1349545))

(declare-fun d!1349547 () Bool)

(assert (=> d!1349547 (isDefined!8112 (getValueByKey!808 (toList!3693 lm!1616) hash!366))))

(declare-fun lt!1639150 () Unit!84144)

(assert (=> d!1349547 (= lt!1639150 (choose!28252 (toList!3693 lm!1616) hash!366))))

(declare-fun e!2767494 () Bool)

(assert (=> d!1349547 e!2767494))

(declare-fun res!1840922 () Bool)

(assert (=> d!1349547 (=> (not res!1840922) (not e!2767494))))

(assert (=> d!1349547 (= res!1840922 (isStrictlySorted!278 (toList!3693 lm!1616)))))

(assert (=> d!1349547 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!715 (toList!3693 lm!1616) hash!366) lt!1639150)))

(declare-fun b!4444799 () Bool)

(assert (=> b!4444799 (= e!2767494 (containsKey!1271 (toList!3693 lm!1616) hash!366))))

(assert (= (and d!1349547 res!1840922) b!4444799))

(assert (=> d!1349547 m!5133657))

(assert (=> d!1349547 m!5133657))

(assert (=> d!1349547 m!5133659))

(declare-fun m!5134889 () Bool)

(assert (=> d!1349547 m!5134889))

(assert (=> d!1349547 m!5133675))

(assert (=> b!4444799 m!5133653))

(assert (=> b!4444116 d!1349547))

(declare-fun d!1349549 () Bool)

(assert (=> d!1349549 (= (isDefined!8112 (getValueByKey!808 (toList!3693 lm!1616) hash!366)) (not (isEmpty!28397 (getValueByKey!808 (toList!3693 lm!1616) hash!366))))))

(declare-fun bs!765492 () Bool)

(assert (= bs!765492 d!1349549))

(assert (=> bs!765492 m!5133657))

(declare-fun m!5134891 () Bool)

(assert (=> bs!765492 m!5134891))

(assert (=> b!4444116 d!1349549))

(declare-fun b!4444801 () Bool)

(declare-fun e!2767495 () Option!10822)

(declare-fun e!2767496 () Option!10822)

(assert (=> b!4444801 (= e!2767495 e!2767496)))

(declare-fun c!756452 () Bool)

(assert (=> b!4444801 (= c!756452 (and ((_ is Cons!49837) (toList!3693 lm!1616)) (not (= (_1!28190 (h!55572 (toList!3693 lm!1616))) hash!366))))))

(declare-fun d!1349551 () Bool)

(declare-fun c!756451 () Bool)

(assert (=> d!1349551 (= c!756451 (and ((_ is Cons!49837) (toList!3693 lm!1616)) (= (_1!28190 (h!55572 (toList!3693 lm!1616))) hash!366)))))

(assert (=> d!1349551 (= (getValueByKey!808 (toList!3693 lm!1616) hash!366) e!2767495)))

(declare-fun b!4444802 () Bool)

(assert (=> b!4444802 (= e!2767496 (getValueByKey!808 (t!356903 (toList!3693 lm!1616)) hash!366))))

(declare-fun b!4444800 () Bool)

(assert (=> b!4444800 (= e!2767495 (Some!10821 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(declare-fun b!4444803 () Bool)

(assert (=> b!4444803 (= e!2767496 None!10821)))

(assert (= (and d!1349551 c!756451) b!4444800))

(assert (= (and d!1349551 (not c!756451)) b!4444801))

(assert (= (and b!4444801 c!756452) b!4444802))

(assert (= (and b!4444801 (not c!756452)) b!4444803))

(declare-fun m!5134893 () Bool)

(assert (=> b!4444802 m!5134893))

(assert (=> b!4444116 d!1349551))

(declare-fun d!1349553 () Bool)

(declare-fun res!1840923 () Bool)

(declare-fun e!2767497 () Bool)

(assert (=> d!1349553 (=> res!1840923 e!2767497)))

(assert (=> d!1349553 (= res!1840923 ((_ is Nil!49837) (t!356903 (toList!3693 lm!1616))))))

(assert (=> d!1349553 (= (forall!9732 (t!356903 (toList!3693 lm!1616)) lambda!157844) e!2767497)))

(declare-fun b!4444804 () Bool)

(declare-fun e!2767498 () Bool)

(assert (=> b!4444804 (= e!2767497 e!2767498)))

(declare-fun res!1840924 () Bool)

(assert (=> b!4444804 (=> (not res!1840924) (not e!2767498))))

(assert (=> b!4444804 (= res!1840924 (dynLambda!20922 lambda!157844 (h!55572 (t!356903 (toList!3693 lm!1616)))))))

(declare-fun b!4444805 () Bool)

(assert (=> b!4444805 (= e!2767498 (forall!9732 (t!356903 (t!356903 (toList!3693 lm!1616))) lambda!157844))))

(assert (= (and d!1349553 (not res!1840923)) b!4444804))

(assert (= (and b!4444804 res!1840924) b!4444805))

(declare-fun b_lambda!145437 () Bool)

(assert (=> (not b_lambda!145437) (not b!4444804)))

(declare-fun m!5134895 () Bool)

(assert (=> b!4444804 m!5134895))

(declare-fun m!5134897 () Bool)

(assert (=> b!4444805 m!5134897))

(assert (=> b!4444136 d!1349553))

(declare-fun d!1349555 () Bool)

(declare-fun res!1840925 () Bool)

(declare-fun e!2767499 () Bool)

(assert (=> d!1349555 (=> res!1840925 e!2767499)))

(assert (=> d!1349555 (= res!1840925 ((_ is Nil!49837) (t!356903 (toList!3693 lt!1638445))))))

(assert (=> d!1349555 (= (forall!9732 (t!356903 (toList!3693 lt!1638445)) lambda!157844) e!2767499)))

(declare-fun b!4444806 () Bool)

(declare-fun e!2767500 () Bool)

(assert (=> b!4444806 (= e!2767499 e!2767500)))

(declare-fun res!1840926 () Bool)

(assert (=> b!4444806 (=> (not res!1840926) (not e!2767500))))

(assert (=> b!4444806 (= res!1840926 (dynLambda!20922 lambda!157844 (h!55572 (t!356903 (toList!3693 lt!1638445)))))))

(declare-fun b!4444807 () Bool)

(assert (=> b!4444807 (= e!2767500 (forall!9732 (t!356903 (t!356903 (toList!3693 lt!1638445))) lambda!157844))))

(assert (= (and d!1349555 (not res!1840925)) b!4444806))

(assert (= (and b!4444806 res!1840926) b!4444807))

(declare-fun b_lambda!145439 () Bool)

(assert (=> (not b_lambda!145439) (not b!4444806)))

(declare-fun m!5134899 () Bool)

(assert (=> b!4444806 m!5134899))

(declare-fun m!5134901 () Bool)

(assert (=> b!4444807 m!5134901))

(assert (=> b!4444138 d!1349555))

(assert (=> b!4444118 d!1349549))

(assert (=> b!4444118 d!1349551))

(declare-fun bs!765493 () Bool)

(declare-fun b!4444808 () Bool)

(assert (= bs!765493 (and b!4444808 b!4444112)))

(declare-fun lambda!158028 () Int)

(assert (=> bs!765493 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638694) (= lambda!158028 lambda!157931))))

(declare-fun bs!765494 () Bool)

(assert (= bs!765494 (and b!4444808 d!1349101)))

(assert (=> bs!765494 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638707) (= lambda!158028 lambda!157932))))

(declare-fun bs!765495 () Bool)

(assert (= bs!765495 (and b!4444808 d!1349429)))

(assert (=> bs!765495 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639014) (= lambda!158028 lambda!158001))))

(assert (=> bs!765493 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638452) (= lambda!158028 lambda!157930))))

(declare-fun bs!765496 () Bool)

(assert (= bs!765496 (and b!4444808 d!1349477)))

(assert (=> bs!765496 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639129) (= lambda!158028 lambda!158020))))

(declare-fun bs!765497 () Bool)

(assert (= bs!765497 (and b!4444808 b!4444601)))

(assert (=> bs!765497 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158028 lambda!157994))))

(declare-fun bs!765498 () Bool)

(assert (= bs!765498 (and b!4444808 b!4444769)))

(assert (=> bs!765498 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639116) (= lambda!158028 lambda!158019))))

(declare-fun bs!765499 () Bool)

(assert (= bs!765499 (and b!4444808 b!4444109)))

(assert (=> bs!765499 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638452) (= lambda!158028 lambda!157929))))

(declare-fun bs!765500 () Bool)

(assert (= bs!765500 (and b!4444808 d!1349483)))

(assert (=> bs!765500 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638452) (= lambda!158028 lambda!158025))))

(declare-fun bs!765501 () Bool)

(assert (= bs!765501 (and b!4444808 b!4444622)))

(assert (=> bs!765501 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639001) (= lambda!158028 lambda!158000))))

(declare-fun bs!765502 () Bool)

(assert (= bs!765502 (and b!4444808 b!4444619)))

(assert (=> bs!765502 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158028 lambda!157998))))

(assert (=> bs!765498 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158028 lambda!158017))))

(declare-fun bs!765503 () Bool)

(assert (= bs!765503 (and b!4444808 b!4444766)))

(assert (=> bs!765503 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158028 lambda!158015))))

(declare-fun bs!765504 () Bool)

(assert (= bs!765504 (and b!4444808 d!1349419)))

(assert (=> bs!765504 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638992) (= lambda!158028 lambda!157996))))

(declare-fun bs!765505 () Bool)

(assert (= bs!765505 (and b!4444808 d!1349151)))

(assert (=> bs!765505 (not (= lambda!158028 lambda!157938))))

(assert (=> bs!765497 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638979) (= lambda!158028 lambda!157995))))

(assert (=> bs!765501 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158028 lambda!157999))))

(declare-fun bs!765506 () Bool)

(assert (= bs!765506 (and b!4444808 b!4444598)))

(assert (=> bs!765506 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158028 lambda!157993))))

(assert (=> b!4444808 true))

(declare-fun bs!765507 () Bool)

(declare-fun b!4444811 () Bool)

(assert (= bs!765507 (and b!4444811 b!4444112)))

(declare-fun lambda!158029 () Int)

(assert (=> bs!765507 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638694) (= lambda!158029 lambda!157931))))

(declare-fun bs!765508 () Bool)

(assert (= bs!765508 (and b!4444811 d!1349101)))

(assert (=> bs!765508 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638707) (= lambda!158029 lambda!157932))))

(declare-fun bs!765509 () Bool)

(assert (= bs!765509 (and b!4444811 d!1349429)))

(assert (=> bs!765509 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639014) (= lambda!158029 lambda!158001))))

(assert (=> bs!765507 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638452) (= lambda!158029 lambda!157930))))

(declare-fun bs!765510 () Bool)

(assert (= bs!765510 (and b!4444811 d!1349477)))

(assert (=> bs!765510 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639129) (= lambda!158029 lambda!158020))))

(declare-fun bs!765511 () Bool)

(assert (= bs!765511 (and b!4444811 b!4444808)))

(assert (=> bs!765511 (= lambda!158029 lambda!158028)))

(declare-fun bs!765512 () Bool)

(assert (= bs!765512 (and b!4444811 b!4444601)))

(assert (=> bs!765512 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158029 lambda!157994))))

(declare-fun bs!765513 () Bool)

(assert (= bs!765513 (and b!4444811 b!4444769)))

(assert (=> bs!765513 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639116) (= lambda!158029 lambda!158019))))

(declare-fun bs!765514 () Bool)

(assert (= bs!765514 (and b!4444811 b!4444109)))

(assert (=> bs!765514 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638452) (= lambda!158029 lambda!157929))))

(declare-fun bs!765515 () Bool)

(assert (= bs!765515 (and b!4444811 d!1349483)))

(assert (=> bs!765515 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638452) (= lambda!158029 lambda!158025))))

(declare-fun bs!765516 () Bool)

(assert (= bs!765516 (and b!4444811 b!4444622)))

(assert (=> bs!765516 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639001) (= lambda!158029 lambda!158000))))

(declare-fun bs!765517 () Bool)

(assert (= bs!765517 (and b!4444811 b!4444619)))

(assert (=> bs!765517 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158029 lambda!157998))))

(assert (=> bs!765513 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158029 lambda!158017))))

(declare-fun bs!765518 () Bool)

(assert (= bs!765518 (and b!4444811 b!4444766)))

(assert (=> bs!765518 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158029 lambda!158015))))

(declare-fun bs!765519 () Bool)

(assert (= bs!765519 (and b!4444811 d!1349419)))

(assert (=> bs!765519 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638992) (= lambda!158029 lambda!157996))))

(declare-fun bs!765520 () Bool)

(assert (= bs!765520 (and b!4444811 d!1349151)))

(assert (=> bs!765520 (not (= lambda!158029 lambda!157938))))

(assert (=> bs!765512 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1638979) (= lambda!158029 lambda!157995))))

(assert (=> bs!765516 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158029 lambda!157999))))

(declare-fun bs!765521 () Bool)

(assert (= bs!765521 (and b!4444811 b!4444598)))

(assert (=> bs!765521 (= (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158029 lambda!157993))))

(assert (=> b!4444811 true))

(declare-fun lambda!158030 () Int)

(declare-fun lt!1639151 () ListMap!2937)

(assert (=> bs!765507 (= (= lt!1639151 lt!1638694) (= lambda!158030 lambda!157931))))

(assert (=> bs!765508 (= (= lt!1639151 lt!1638707) (= lambda!158030 lambda!157932))))

(assert (=> bs!765509 (= (= lt!1639151 lt!1639014) (= lambda!158030 lambda!158001))))

(assert (=> bs!765507 (= (= lt!1639151 lt!1638452) (= lambda!158030 lambda!157930))))

(assert (=> bs!765510 (= (= lt!1639151 lt!1639129) (= lambda!158030 lambda!158020))))

(assert (=> bs!765511 (= (= lt!1639151 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158030 lambda!158028))))

(assert (=> bs!765512 (= (= lt!1639151 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158030 lambda!157994))))

(assert (=> bs!765513 (= (= lt!1639151 lt!1639116) (= lambda!158030 lambda!158019))))

(assert (=> bs!765514 (= (= lt!1639151 lt!1638452) (= lambda!158030 lambda!157929))))

(assert (=> bs!765515 (= (= lt!1639151 lt!1638452) (= lambda!158030 lambda!158025))))

(assert (=> bs!765516 (= (= lt!1639151 lt!1639001) (= lambda!158030 lambda!158000))))

(assert (=> bs!765517 (= (= lt!1639151 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158030 lambda!157998))))

(assert (=> bs!765513 (= (= lt!1639151 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158030 lambda!158017))))

(assert (=> b!4444811 (= (= lt!1639151 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158030 lambda!158029))))

(assert (=> bs!765518 (= (= lt!1639151 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158030 lambda!158015))))

(assert (=> bs!765519 (= (= lt!1639151 lt!1638992) (= lambda!158030 lambda!157996))))

(assert (=> bs!765520 (not (= lambda!158030 lambda!157938))))

(assert (=> bs!765512 (= (= lt!1639151 lt!1638979) (= lambda!158030 lambda!157995))))

(assert (=> bs!765516 (= (= lt!1639151 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158030 lambda!157999))))

(assert (=> bs!765521 (= (= lt!1639151 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158030 lambda!157993))))

(assert (=> b!4444811 true))

(declare-fun bs!765522 () Bool)

(declare-fun d!1349557 () Bool)

(assert (= bs!765522 (and d!1349557 b!4444112)))

(declare-fun lambda!158031 () Int)

(declare-fun lt!1639164 () ListMap!2937)

(assert (=> bs!765522 (= (= lt!1639164 lt!1638694) (= lambda!158031 lambda!157931))))

(declare-fun bs!765523 () Bool)

(assert (= bs!765523 (and d!1349557 d!1349101)))

(assert (=> bs!765523 (= (= lt!1639164 lt!1638707) (= lambda!158031 lambda!157932))))

(declare-fun bs!765524 () Bool)

(assert (= bs!765524 (and d!1349557 d!1349429)))

(assert (=> bs!765524 (= (= lt!1639164 lt!1639014) (= lambda!158031 lambda!158001))))

(assert (=> bs!765522 (= (= lt!1639164 lt!1638452) (= lambda!158031 lambda!157930))))

(declare-fun bs!765525 () Bool)

(assert (= bs!765525 (and d!1349557 d!1349477)))

(assert (=> bs!765525 (= (= lt!1639164 lt!1639129) (= lambda!158031 lambda!158020))))

(declare-fun bs!765526 () Bool)

(assert (= bs!765526 (and d!1349557 b!4444808)))

(assert (=> bs!765526 (= (= lt!1639164 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158031 lambda!158028))))

(declare-fun bs!765527 () Bool)

(assert (= bs!765527 (and d!1349557 b!4444601)))

(assert (=> bs!765527 (= (= lt!1639164 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158031 lambda!157994))))

(declare-fun bs!765528 () Bool)

(assert (= bs!765528 (and d!1349557 b!4444769)))

(assert (=> bs!765528 (= (= lt!1639164 lt!1639116) (= lambda!158031 lambda!158019))))

(declare-fun bs!765529 () Bool)

(assert (= bs!765529 (and d!1349557 b!4444109)))

(assert (=> bs!765529 (= (= lt!1639164 lt!1638452) (= lambda!158031 lambda!157929))))

(declare-fun bs!765530 () Bool)

(assert (= bs!765530 (and d!1349557 d!1349483)))

(assert (=> bs!765530 (= (= lt!1639164 lt!1638452) (= lambda!158031 lambda!158025))))

(declare-fun bs!765531 () Bool)

(assert (= bs!765531 (and d!1349557 b!4444622)))

(assert (=> bs!765531 (= (= lt!1639164 lt!1639001) (= lambda!158031 lambda!158000))))

(declare-fun bs!765532 () Bool)

(assert (= bs!765532 (and d!1349557 b!4444619)))

(assert (=> bs!765532 (= (= lt!1639164 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158031 lambda!157998))))

(assert (=> bs!765528 (= (= lt!1639164 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158031 lambda!158017))))

(declare-fun bs!765533 () Bool)

(assert (= bs!765533 (and d!1349557 b!4444811)))

(assert (=> bs!765533 (= (= lt!1639164 lt!1639151) (= lambda!158031 lambda!158030))))

(assert (=> bs!765533 (= (= lt!1639164 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158031 lambda!158029))))

(declare-fun bs!765534 () Bool)

(assert (= bs!765534 (and d!1349557 b!4444766)))

(assert (=> bs!765534 (= (= lt!1639164 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158031 lambda!158015))))

(declare-fun bs!765535 () Bool)

(assert (= bs!765535 (and d!1349557 d!1349419)))

(assert (=> bs!765535 (= (= lt!1639164 lt!1638992) (= lambda!158031 lambda!157996))))

(declare-fun bs!765536 () Bool)

(assert (= bs!765536 (and d!1349557 d!1349151)))

(assert (=> bs!765536 (not (= lambda!158031 lambda!157938))))

(assert (=> bs!765527 (= (= lt!1639164 lt!1638979) (= lambda!158031 lambda!157995))))

(assert (=> bs!765531 (= (= lt!1639164 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158031 lambda!157999))))

(declare-fun bs!765537 () Bool)

(assert (= bs!765537 (and d!1349557 b!4444598)))

(assert (=> bs!765537 (= (= lt!1639164 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158031 lambda!157993))))

(assert (=> d!1349557 true))

(declare-fun e!2767502 () ListMap!2937)

(assert (=> b!4444808 (= e!2767502 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(declare-fun lt!1639157 () Unit!84144)

(declare-fun call!309225 () Unit!84144)

(assert (=> b!4444808 (= lt!1639157 call!309225)))

(declare-fun call!309224 () Bool)

(assert (=> b!4444808 call!309224))

(declare-fun lt!1639162 () Unit!84144)

(assert (=> b!4444808 (= lt!1639162 lt!1639157)))

(declare-fun call!309223 () Bool)

(assert (=> b!4444808 call!309223))

(declare-fun lt!1639168 () Unit!84144)

(declare-fun Unit!84273 () Unit!84144)

(assert (=> b!4444808 (= lt!1639168 Unit!84273)))

(declare-fun b!4444809 () Bool)

(declare-fun res!1840927 () Bool)

(declare-fun e!2767503 () Bool)

(assert (=> b!4444809 (=> (not res!1840927) (not e!2767503))))

(assert (=> b!4444809 (= res!1840927 (forall!9734 (toList!3694 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) lambda!158031))))

(declare-fun bm!309218 () Bool)

(assert (=> bm!309218 (= call!309225 (lemmaContainsAllItsOwnKeys!209 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun bm!309219 () Bool)

(declare-fun c!756453 () Bool)

(assert (=> bm!309219 (= call!309224 (forall!9734 (ite c!756453 (toList!3694 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (ite c!756453 lambda!158028 lambda!158030)))))

(declare-fun bm!309220 () Bool)

(assert (=> bm!309220 (= call!309223 (forall!9734 (ite c!756453 (toList!3694 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (t!356902 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (ite c!756453 lambda!158028 lambda!158030)))))

(assert (=> d!1349557 e!2767503))

(declare-fun res!1840929 () Bool)

(assert (=> d!1349557 (=> (not res!1840929) (not e!2767503))))

(assert (=> d!1349557 (= res!1840929 (forall!9734 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))) lambda!158031))))

(assert (=> d!1349557 (= lt!1639164 e!2767502)))

(assert (=> d!1349557 (= c!756453 ((_ is Nil!49836) (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> d!1349557 (noDuplicateKeys!853 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (=> d!1349557 (= (addToMapMapFromBucket!459 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))) (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) lt!1639164)))

(declare-fun b!4444810 () Bool)

(assert (=> b!4444810 (= e!2767503 (invariantList!852 (toList!3694 lt!1639164)))))

(assert (=> b!4444811 (= e!2767502 lt!1639151)))

(declare-fun lt!1639160 () ListMap!2937)

(assert (=> b!4444811 (= lt!1639160 (+!1244 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (h!55571 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> b!4444811 (= lt!1639151 (addToMapMapFromBucket!459 (t!356902 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (+!1244 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (h!55571 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))))

(declare-fun lt!1639152 () Unit!84144)

(assert (=> b!4444811 (= lt!1639152 call!309225)))

(assert (=> b!4444811 (forall!9734 (toList!3694 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) lambda!158029)))

(declare-fun lt!1639161 () Unit!84144)

(assert (=> b!4444811 (= lt!1639161 lt!1639152)))

(assert (=> b!4444811 (forall!9734 (toList!3694 lt!1639160) lambda!158030)))

(declare-fun lt!1639159 () Unit!84144)

(declare-fun Unit!84274 () Unit!84144)

(assert (=> b!4444811 (= lt!1639159 Unit!84274)))

(assert (=> b!4444811 call!309223))

(declare-fun lt!1639154 () Unit!84144)

(declare-fun Unit!84276 () Unit!84144)

(assert (=> b!4444811 (= lt!1639154 Unit!84276)))

(declare-fun lt!1639153 () Unit!84144)

(declare-fun Unit!84277 () Unit!84144)

(assert (=> b!4444811 (= lt!1639153 Unit!84277)))

(declare-fun lt!1639166 () Unit!84144)

(assert (=> b!4444811 (= lt!1639166 (forallContained!2149 (toList!3694 lt!1639160) lambda!158030 (h!55571 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> b!4444811 (contains!12415 lt!1639160 (_1!28189 (h!55571 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun lt!1639155 () Unit!84144)

(declare-fun Unit!84278 () Unit!84144)

(assert (=> b!4444811 (= lt!1639155 Unit!84278)))

(assert (=> b!4444811 (contains!12415 lt!1639151 (_1!28189 (h!55571 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun lt!1639169 () Unit!84144)

(declare-fun Unit!84279 () Unit!84144)

(assert (=> b!4444811 (= lt!1639169 Unit!84279)))

(assert (=> b!4444811 call!309224))

(declare-fun lt!1639170 () Unit!84144)

(declare-fun Unit!84281 () Unit!84144)

(assert (=> b!4444811 (= lt!1639170 Unit!84281)))

(assert (=> b!4444811 (forall!9734 (toList!3694 lt!1639160) lambda!158030)))

(declare-fun lt!1639158 () Unit!84144)

(declare-fun Unit!84282 () Unit!84144)

(assert (=> b!4444811 (= lt!1639158 Unit!84282)))

(declare-fun lt!1639156 () Unit!84144)

(declare-fun Unit!84283 () Unit!84144)

(assert (=> b!4444811 (= lt!1639156 Unit!84283)))

(declare-fun lt!1639163 () Unit!84144)

(assert (=> b!4444811 (= lt!1639163 (addForallContainsKeyThenBeforeAdding!209 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639151 (_1!28189 (h!55571 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (_2!28189 (h!55571 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))))

(assert (=> b!4444811 (forall!9734 (toList!3694 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) lambda!158030)))

(declare-fun lt!1639171 () Unit!84144)

(assert (=> b!4444811 (= lt!1639171 lt!1639163)))

(assert (=> b!4444811 (forall!9734 (toList!3694 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) lambda!158030)))

(declare-fun lt!1639167 () Unit!84144)

(declare-fun Unit!84284 () Unit!84144)

(assert (=> b!4444811 (= lt!1639167 Unit!84284)))

(declare-fun res!1840928 () Bool)

(assert (=> b!4444811 (= res!1840928 (forall!9734 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))) lambda!158030))))

(declare-fun e!2767501 () Bool)

(assert (=> b!4444811 (=> (not res!1840928) (not e!2767501))))

(assert (=> b!4444811 e!2767501))

(declare-fun lt!1639165 () Unit!84144)

(declare-fun Unit!84285 () Unit!84144)

(assert (=> b!4444811 (= lt!1639165 Unit!84285)))

(declare-fun b!4444812 () Bool)

(assert (=> b!4444812 (= e!2767501 (forall!9734 (toList!3694 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) lambda!158030))))

(assert (= (and d!1349557 c!756453) b!4444808))

(assert (= (and d!1349557 (not c!756453)) b!4444811))

(assert (= (and b!4444811 res!1840928) b!4444812))

(assert (= (or b!4444808 b!4444811) bm!309218))

(assert (= (or b!4444808 b!4444811) bm!309219))

(assert (= (or b!4444808 b!4444811) bm!309220))

(assert (= (and d!1349557 res!1840929) b!4444809))

(assert (= (and b!4444809 res!1840927) b!4444810))

(declare-fun m!5134903 () Bool)

(assert (=> b!4444811 m!5134903))

(assert (=> b!4444811 m!5133627))

(declare-fun m!5134905 () Bool)

(assert (=> b!4444811 m!5134905))

(declare-fun m!5134907 () Bool)

(assert (=> b!4444811 m!5134907))

(declare-fun m!5134909 () Bool)

(assert (=> b!4444811 m!5134909))

(declare-fun m!5134911 () Bool)

(assert (=> b!4444811 m!5134911))

(declare-fun m!5134913 () Bool)

(assert (=> b!4444811 m!5134913))

(assert (=> b!4444811 m!5133627))

(assert (=> b!4444811 m!5134911))

(declare-fun m!5134915 () Bool)

(assert (=> b!4444811 m!5134915))

(assert (=> b!4444811 m!5134903))

(declare-fun m!5134917 () Bool)

(assert (=> b!4444811 m!5134917))

(declare-fun m!5134919 () Bool)

(assert (=> b!4444811 m!5134919))

(declare-fun m!5134921 () Bool)

(assert (=> b!4444811 m!5134921))

(assert (=> b!4444811 m!5134921))

(declare-fun m!5134923 () Bool)

(assert (=> bm!309220 m!5134923))

(assert (=> bm!309218 m!5133627))

(declare-fun m!5134925 () Bool)

(assert (=> bm!309218 m!5134925))

(declare-fun m!5134927 () Bool)

(assert (=> b!4444809 m!5134927))

(declare-fun m!5134929 () Bool)

(assert (=> b!4444810 m!5134929))

(assert (=> b!4444812 m!5134921))

(declare-fun m!5134931 () Bool)

(assert (=> bm!309219 m!5134931))

(declare-fun m!5134933 () Bool)

(assert (=> d!1349557 m!5134933))

(assert (=> d!1349557 m!5134353))

(assert (=> b!4444112 d!1349557))

(declare-fun d!1349559 () Bool)

(declare-fun res!1840930 () Bool)

(declare-fun e!2767504 () Bool)

(assert (=> d!1349559 (=> res!1840930 e!2767504)))

(assert (=> d!1349559 (= res!1840930 ((_ is Nil!49836) (toList!3694 lt!1638452)))))

(assert (=> d!1349559 (= (forall!9734 (toList!3694 lt!1638452) lambda!157930) e!2767504)))

(declare-fun b!4444813 () Bool)

(declare-fun e!2767505 () Bool)

(assert (=> b!4444813 (= e!2767504 e!2767505)))

(declare-fun res!1840931 () Bool)

(assert (=> b!4444813 (=> (not res!1840931) (not e!2767505))))

(assert (=> b!4444813 (= res!1840931 (dynLambda!20924 lambda!157930 (h!55571 (toList!3694 lt!1638452))))))

(declare-fun b!4444814 () Bool)

(assert (=> b!4444814 (= e!2767505 (forall!9734 (t!356902 (toList!3694 lt!1638452)) lambda!157930))))

(assert (= (and d!1349559 (not res!1840930)) b!4444813))

(assert (= (and b!4444813 res!1840931) b!4444814))

(declare-fun b_lambda!145441 () Bool)

(assert (=> (not b_lambda!145441) (not b!4444813)))

(declare-fun m!5134935 () Bool)

(assert (=> b!4444813 m!5134935))

(declare-fun m!5134937 () Bool)

(assert (=> b!4444814 m!5134937))

(assert (=> b!4444112 d!1349559))

(declare-fun b!4444815 () Bool)

(declare-fun e!2767506 () Unit!84144)

(declare-fun lt!1639174 () Unit!84144)

(assert (=> b!4444815 (= e!2767506 lt!1639174)))

(declare-fun lt!1639175 () Unit!84144)

(assert (=> b!4444815 (= lt!1639175 (lemmaContainsKeyImpliesGetValueByKeyDefined!714 (toList!3694 lt!1638694) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> b!4444815 (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638694) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun lt!1639172 () Unit!84144)

(assert (=> b!4444815 (= lt!1639172 lt!1639175)))

(assert (=> b!4444815 (= lt!1639174 (lemmaInListThenGetKeysListContains!296 (toList!3694 lt!1638694) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun call!309226 () Bool)

(assert (=> b!4444815 call!309226))

(declare-fun b!4444816 () Bool)

(declare-fun e!2767510 () Bool)

(declare-fun e!2767507 () Bool)

(assert (=> b!4444816 (= e!2767510 e!2767507)))

(declare-fun res!1840932 () Bool)

(assert (=> b!4444816 (=> (not res!1840932) (not e!2767507))))

(assert (=> b!4444816 (= res!1840932 (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638694) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))))

(declare-fun b!4444817 () Bool)

(declare-fun e!2767508 () List!49963)

(assert (=> b!4444817 (= e!2767508 (keys!17083 lt!1638694))))

(declare-fun b!4444819 () Bool)

(declare-fun e!2767511 () Bool)

(assert (=> b!4444819 (= e!2767511 (not (contains!12419 (keys!17083 lt!1638694) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))))

(declare-fun b!4444820 () Bool)

(assert (=> b!4444820 (= e!2767508 (getKeysList!299 (toList!3694 lt!1638694)))))

(declare-fun b!4444821 () Bool)

(declare-fun e!2767509 () Unit!84144)

(assert (=> b!4444821 (= e!2767506 e!2767509)))

(declare-fun c!756456 () Bool)

(assert (=> b!4444821 (= c!756456 call!309226)))

(declare-fun b!4444822 () Bool)

(assert (=> b!4444822 (= e!2767507 (contains!12419 (keys!17083 lt!1638694) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun bm!309221 () Bool)

(assert (=> bm!309221 (= call!309226 (contains!12419 e!2767508 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun c!756455 () Bool)

(declare-fun c!756454 () Bool)

(assert (=> bm!309221 (= c!756455 c!756454)))

(declare-fun b!4444823 () Bool)

(declare-fun Unit!84287 () Unit!84144)

(assert (=> b!4444823 (= e!2767509 Unit!84287)))

(declare-fun d!1349561 () Bool)

(assert (=> d!1349561 e!2767510))

(declare-fun res!1840933 () Bool)

(assert (=> d!1349561 (=> res!1840933 e!2767510)))

(assert (=> d!1349561 (= res!1840933 e!2767511)))

(declare-fun res!1840934 () Bool)

(assert (=> d!1349561 (=> (not res!1840934) (not e!2767511))))

(declare-fun lt!1639179 () Bool)

(assert (=> d!1349561 (= res!1840934 (not lt!1639179))))

(declare-fun lt!1639173 () Bool)

(assert (=> d!1349561 (= lt!1639179 lt!1639173)))

(declare-fun lt!1639177 () Unit!84144)

(assert (=> d!1349561 (= lt!1639177 e!2767506)))

(assert (=> d!1349561 (= c!756454 lt!1639173)))

(assert (=> d!1349561 (= lt!1639173 (containsKey!1270 (toList!3694 lt!1638694) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> d!1349561 (= (contains!12415 lt!1638694 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) lt!1639179)))

(declare-fun b!4444818 () Bool)

(assert (=> b!4444818 false))

(declare-fun lt!1639176 () Unit!84144)

(declare-fun lt!1639178 () Unit!84144)

(assert (=> b!4444818 (= lt!1639176 lt!1639178)))

(assert (=> b!4444818 (containsKey!1270 (toList!3694 lt!1638694) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> b!4444818 (= lt!1639178 (lemmaInGetKeysListThenContainsKey!297 (toList!3694 lt!1638694) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun Unit!84288 () Unit!84144)

(assert (=> b!4444818 (= e!2767509 Unit!84288)))

(assert (= (and d!1349561 c!756454) b!4444815))

(assert (= (and d!1349561 (not c!756454)) b!4444821))

(assert (= (and b!4444821 c!756456) b!4444818))

(assert (= (and b!4444821 (not c!756456)) b!4444823))

(assert (= (or b!4444815 b!4444821) bm!309221))

(assert (= (and bm!309221 c!756455) b!4444820))

(assert (= (and bm!309221 (not c!756455)) b!4444817))

(assert (= (and d!1349561 res!1840934) b!4444819))

(assert (= (and d!1349561 (not res!1840933)) b!4444816))

(assert (= (and b!4444816 res!1840932) b!4444822))

(declare-fun m!5134939 () Bool)

(assert (=> bm!309221 m!5134939))

(declare-fun m!5134941 () Bool)

(assert (=> b!4444822 m!5134941))

(assert (=> b!4444822 m!5134941))

(declare-fun m!5134943 () Bool)

(assert (=> b!4444822 m!5134943))

(assert (=> b!4444819 m!5134941))

(assert (=> b!4444819 m!5134941))

(assert (=> b!4444819 m!5134943))

(declare-fun m!5134945 () Bool)

(assert (=> b!4444820 m!5134945))

(declare-fun m!5134947 () Bool)

(assert (=> d!1349561 m!5134947))

(declare-fun m!5134949 () Bool)

(assert (=> b!4444816 m!5134949))

(assert (=> b!4444816 m!5134949))

(declare-fun m!5134951 () Bool)

(assert (=> b!4444816 m!5134951))

(assert (=> b!4444817 m!5134941))

(declare-fun m!5134953 () Bool)

(assert (=> b!4444815 m!5134953))

(assert (=> b!4444815 m!5134949))

(assert (=> b!4444815 m!5134949))

(assert (=> b!4444815 m!5134951))

(declare-fun m!5134955 () Bool)

(assert (=> b!4444815 m!5134955))

(assert (=> b!4444818 m!5134947))

(declare-fun m!5134957 () Bool)

(assert (=> b!4444818 m!5134957))

(assert (=> b!4444112 d!1349561))

(declare-fun d!1349563 () Bool)

(declare-fun res!1840935 () Bool)

(declare-fun e!2767512 () Bool)

(assert (=> d!1349563 (=> res!1840935 e!2767512)))

(assert (=> d!1349563 (= res!1840935 ((_ is Nil!49836) (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (=> d!1349563 (= (forall!9734 (_2!28190 (h!55572 (toList!3693 lm!1616))) lambda!157931) e!2767512)))

(declare-fun b!4444824 () Bool)

(declare-fun e!2767513 () Bool)

(assert (=> b!4444824 (= e!2767512 e!2767513)))

(declare-fun res!1840936 () Bool)

(assert (=> b!4444824 (=> (not res!1840936) (not e!2767513))))

(assert (=> b!4444824 (= res!1840936 (dynLambda!20924 lambda!157931 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(declare-fun b!4444825 () Bool)

(assert (=> b!4444825 (= e!2767513 (forall!9734 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))) lambda!157931))))

(assert (= (and d!1349563 (not res!1840935)) b!4444824))

(assert (= (and b!4444824 res!1840936) b!4444825))

(declare-fun b_lambda!145443 () Bool)

(assert (=> (not b_lambda!145443) (not b!4444824)))

(declare-fun m!5134959 () Bool)

(assert (=> b!4444824 m!5134959))

(declare-fun m!5134961 () Bool)

(assert (=> b!4444825 m!5134961))

(assert (=> b!4444112 d!1349563))

(declare-fun d!1349565 () Bool)

(declare-fun res!1840937 () Bool)

(declare-fun e!2767514 () Bool)

(assert (=> d!1349565 (=> res!1840937 e!2767514)))

(assert (=> d!1349565 (= res!1840937 ((_ is Nil!49836) (toList!3694 lt!1638703)))))

(assert (=> d!1349565 (= (forall!9734 (toList!3694 lt!1638703) lambda!157931) e!2767514)))

(declare-fun b!4444826 () Bool)

(declare-fun e!2767515 () Bool)

(assert (=> b!4444826 (= e!2767514 e!2767515)))

(declare-fun res!1840938 () Bool)

(assert (=> b!4444826 (=> (not res!1840938) (not e!2767515))))

(assert (=> b!4444826 (= res!1840938 (dynLambda!20924 lambda!157931 (h!55571 (toList!3694 lt!1638703))))))

(declare-fun b!4444827 () Bool)

(assert (=> b!4444827 (= e!2767515 (forall!9734 (t!356902 (toList!3694 lt!1638703)) lambda!157931))))

(assert (= (and d!1349565 (not res!1840937)) b!4444826))

(assert (= (and b!4444826 res!1840938) b!4444827))

(declare-fun b_lambda!145445 () Bool)

(assert (=> (not b_lambda!145445) (not b!4444826)))

(declare-fun m!5134963 () Bool)

(assert (=> b!4444826 m!5134963))

(declare-fun m!5134965 () Bool)

(assert (=> b!4444827 m!5134965))

(assert (=> b!4444112 d!1349565))

(declare-fun d!1349567 () Bool)

(assert (=> d!1349567 (dynLambda!20924 lambda!157931 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(declare-fun lt!1639182 () Unit!84144)

(declare-fun choose!28258 (List!49960 Int tuple2!49790) Unit!84144)

(assert (=> d!1349567 (= lt!1639182 (choose!28258 (toList!3694 lt!1638703) lambda!157931 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(declare-fun e!2767518 () Bool)

(assert (=> d!1349567 e!2767518))

(declare-fun res!1840941 () Bool)

(assert (=> d!1349567 (=> (not res!1840941) (not e!2767518))))

(assert (=> d!1349567 (= res!1840941 (forall!9734 (toList!3694 lt!1638703) lambda!157931))))

(assert (=> d!1349567 (= (forallContained!2149 (toList!3694 lt!1638703) lambda!157931 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639182)))

(declare-fun b!4444830 () Bool)

(assert (=> b!4444830 (= e!2767518 (contains!12421 (toList!3694 lt!1638703) (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (= (and d!1349567 res!1840941) b!4444830))

(declare-fun b_lambda!145447 () Bool)

(assert (=> (not b_lambda!145447) (not d!1349567)))

(assert (=> d!1349567 m!5134959))

(declare-fun m!5134967 () Bool)

(assert (=> d!1349567 m!5134967))

(assert (=> d!1349567 m!5133619))

(declare-fun m!5134969 () Bool)

(assert (=> b!4444830 m!5134969))

(assert (=> b!4444112 d!1349567))

(declare-fun d!1349569 () Bool)

(declare-fun res!1840942 () Bool)

(declare-fun e!2767519 () Bool)

(assert (=> d!1349569 (=> res!1840942 e!2767519)))

(assert (=> d!1349569 (= res!1840942 ((_ is Nil!49836) (toList!3694 lt!1638452)))))

(assert (=> d!1349569 (= (forall!9734 (toList!3694 lt!1638452) lambda!157931) e!2767519)))

(declare-fun b!4444831 () Bool)

(declare-fun e!2767520 () Bool)

(assert (=> b!4444831 (= e!2767519 e!2767520)))

(declare-fun res!1840943 () Bool)

(assert (=> b!4444831 (=> (not res!1840943) (not e!2767520))))

(assert (=> b!4444831 (= res!1840943 (dynLambda!20924 lambda!157931 (h!55571 (toList!3694 lt!1638452))))))

(declare-fun b!4444832 () Bool)

(assert (=> b!4444832 (= e!2767520 (forall!9734 (t!356902 (toList!3694 lt!1638452)) lambda!157931))))

(assert (= (and d!1349569 (not res!1840942)) b!4444831))

(assert (= (and b!4444831 res!1840943) b!4444832))

(declare-fun b_lambda!145449 () Bool)

(assert (=> (not b_lambda!145449) (not b!4444831)))

(declare-fun m!5134971 () Bool)

(assert (=> b!4444831 m!5134971))

(declare-fun m!5134973 () Bool)

(assert (=> b!4444832 m!5134973))

(assert (=> b!4444112 d!1349569))

(declare-fun bs!765538 () Bool)

(declare-fun d!1349571 () Bool)

(assert (= bs!765538 (and d!1349571 b!4444112)))

(declare-fun lambda!158036 () Int)

(assert (=> bs!765538 (= lambda!158036 lambda!157931)))

(declare-fun bs!765539 () Bool)

(assert (= bs!765539 (and d!1349571 d!1349101)))

(assert (=> bs!765539 (= (= lt!1638694 lt!1638707) (= lambda!158036 lambda!157932))))

(declare-fun bs!765540 () Bool)

(assert (= bs!765540 (and d!1349571 d!1349429)))

(assert (=> bs!765540 (= (= lt!1638694 lt!1639014) (= lambda!158036 lambda!158001))))

(assert (=> bs!765538 (= (= lt!1638694 lt!1638452) (= lambda!158036 lambda!157930))))

(declare-fun bs!765541 () Bool)

(assert (= bs!765541 (and d!1349571 d!1349477)))

(assert (=> bs!765541 (= (= lt!1638694 lt!1639129) (= lambda!158036 lambda!158020))))

(declare-fun bs!765542 () Bool)

(assert (= bs!765542 (and d!1349571 b!4444808)))

(assert (=> bs!765542 (= (= lt!1638694 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158036 lambda!158028))))

(declare-fun bs!765543 () Bool)

(assert (= bs!765543 (and d!1349571 d!1349557)))

(assert (=> bs!765543 (= (= lt!1638694 lt!1639164) (= lambda!158036 lambda!158031))))

(declare-fun bs!765544 () Bool)

(assert (= bs!765544 (and d!1349571 b!4444601)))

(assert (=> bs!765544 (= (= lt!1638694 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158036 lambda!157994))))

(declare-fun bs!765545 () Bool)

(assert (= bs!765545 (and d!1349571 b!4444769)))

(assert (=> bs!765545 (= (= lt!1638694 lt!1639116) (= lambda!158036 lambda!158019))))

(declare-fun bs!765546 () Bool)

(assert (= bs!765546 (and d!1349571 b!4444109)))

(assert (=> bs!765546 (= (= lt!1638694 lt!1638452) (= lambda!158036 lambda!157929))))

(declare-fun bs!765547 () Bool)

(assert (= bs!765547 (and d!1349571 d!1349483)))

(assert (=> bs!765547 (= (= lt!1638694 lt!1638452) (= lambda!158036 lambda!158025))))

(declare-fun bs!765548 () Bool)

(assert (= bs!765548 (and d!1349571 b!4444622)))

(assert (=> bs!765548 (= (= lt!1638694 lt!1639001) (= lambda!158036 lambda!158000))))

(declare-fun bs!765549 () Bool)

(assert (= bs!765549 (and d!1349571 b!4444619)))

(assert (=> bs!765549 (= (= lt!1638694 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158036 lambda!157998))))

(assert (=> bs!765545 (= (= lt!1638694 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158036 lambda!158017))))

(declare-fun bs!765550 () Bool)

(assert (= bs!765550 (and d!1349571 b!4444811)))

(assert (=> bs!765550 (= (= lt!1638694 lt!1639151) (= lambda!158036 lambda!158030))))

(assert (=> bs!765550 (= (= lt!1638694 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158036 lambda!158029))))

(declare-fun bs!765551 () Bool)

(assert (= bs!765551 (and d!1349571 b!4444766)))

(assert (=> bs!765551 (= (= lt!1638694 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158036 lambda!158015))))

(declare-fun bs!765552 () Bool)

(assert (= bs!765552 (and d!1349571 d!1349419)))

(assert (=> bs!765552 (= (= lt!1638694 lt!1638992) (= lambda!158036 lambda!157996))))

(declare-fun bs!765553 () Bool)

(assert (= bs!765553 (and d!1349571 d!1349151)))

(assert (=> bs!765553 (not (= lambda!158036 lambda!157938))))

(assert (=> bs!765544 (= (= lt!1638694 lt!1638979) (= lambda!158036 lambda!157995))))

(assert (=> bs!765548 (= (= lt!1638694 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158036 lambda!157999))))

(declare-fun bs!765554 () Bool)

(assert (= bs!765554 (and d!1349571 b!4444598)))

(assert (=> bs!765554 (= (= lt!1638694 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158036 lambda!157993))))

(assert (=> d!1349571 true))

(assert (=> d!1349571 (forall!9734 (toList!3694 lt!1638452) lambda!158036)))

(declare-fun lt!1639185 () Unit!84144)

(declare-fun choose!28260 (ListMap!2937 ListMap!2937 K!11205 V!11451) Unit!84144)

(assert (=> d!1349571 (= lt!1639185 (choose!28260 lt!1638452 lt!1638694 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> d!1349571 (forall!9734 (toList!3694 (+!1244 lt!1638452 (tuple2!49791 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))) lambda!158036)))

(assert (=> d!1349571 (= (addForallContainsKeyThenBeforeAdding!209 lt!1638452 lt!1638694 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) lt!1639185)))

(declare-fun bs!765555 () Bool)

(assert (= bs!765555 d!1349571))

(declare-fun m!5134975 () Bool)

(assert (=> bs!765555 m!5134975))

(declare-fun m!5134977 () Bool)

(assert (=> bs!765555 m!5134977))

(declare-fun m!5134979 () Bool)

(assert (=> bs!765555 m!5134979))

(declare-fun m!5134981 () Bool)

(assert (=> bs!765555 m!5134981))

(assert (=> b!4444112 d!1349571))

(declare-fun d!1349573 () Bool)

(declare-fun e!2767521 () Bool)

(assert (=> d!1349573 e!2767521))

(declare-fun res!1840945 () Bool)

(assert (=> d!1349573 (=> (not res!1840945) (not e!2767521))))

(declare-fun lt!1639187 () ListMap!2937)

(assert (=> d!1349573 (= res!1840945 (contains!12415 lt!1639187 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun lt!1639188 () List!49960)

(assert (=> d!1349573 (= lt!1639187 (ListMap!2938 lt!1639188))))

(declare-fun lt!1639186 () Unit!84144)

(declare-fun lt!1639189 () Unit!84144)

(assert (=> d!1349573 (= lt!1639186 lt!1639189)))

(assert (=> d!1349573 (= (getValueByKey!807 lt!1639188 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (Some!10820 (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> d!1349573 (= lt!1639189 (lemmaContainsTupThenGetReturnValue!524 lt!1639188 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> d!1349573 (= lt!1639188 (insertNoDuplicatedKeys!226 (toList!3694 lt!1638452) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> d!1349573 (= (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) lt!1639187)))

(declare-fun b!4444834 () Bool)

(declare-fun res!1840944 () Bool)

(assert (=> b!4444834 (=> (not res!1840944) (not e!2767521))))

(assert (=> b!4444834 (= res!1840944 (= (getValueByKey!807 (toList!3694 lt!1639187) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (Some!10820 (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))))

(declare-fun b!4444835 () Bool)

(assert (=> b!4444835 (= e!2767521 (contains!12421 (toList!3694 lt!1639187) (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (= (and d!1349573 res!1840945) b!4444834))

(assert (= (and b!4444834 res!1840944) b!4444835))

(declare-fun m!5134983 () Bool)

(assert (=> d!1349573 m!5134983))

(declare-fun m!5134985 () Bool)

(assert (=> d!1349573 m!5134985))

(declare-fun m!5134987 () Bool)

(assert (=> d!1349573 m!5134987))

(declare-fun m!5134989 () Bool)

(assert (=> d!1349573 m!5134989))

(declare-fun m!5134991 () Bool)

(assert (=> b!4444834 m!5134991))

(declare-fun m!5134993 () Bool)

(assert (=> b!4444835 m!5134993))

(assert (=> b!4444112 d!1349573))

(declare-fun b!4444836 () Bool)

(declare-fun e!2767522 () Unit!84144)

(declare-fun lt!1639192 () Unit!84144)

(assert (=> b!4444836 (= e!2767522 lt!1639192)))

(declare-fun lt!1639193 () Unit!84144)

(assert (=> b!4444836 (= lt!1639193 (lemmaContainsKeyImpliesGetValueByKeyDefined!714 (toList!3694 lt!1638703) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> b!4444836 (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638703) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun lt!1639190 () Unit!84144)

(assert (=> b!4444836 (= lt!1639190 lt!1639193)))

(assert (=> b!4444836 (= lt!1639192 (lemmaInListThenGetKeysListContains!296 (toList!3694 lt!1638703) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun call!309227 () Bool)

(assert (=> b!4444836 call!309227))

(declare-fun b!4444837 () Bool)

(declare-fun e!2767526 () Bool)

(declare-fun e!2767523 () Bool)

(assert (=> b!4444837 (= e!2767526 e!2767523)))

(declare-fun res!1840946 () Bool)

(assert (=> b!4444837 (=> (not res!1840946) (not e!2767523))))

(assert (=> b!4444837 (= res!1840946 (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638703) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))))

(declare-fun b!4444838 () Bool)

(declare-fun e!2767524 () List!49963)

(assert (=> b!4444838 (= e!2767524 (keys!17083 lt!1638703))))

(declare-fun b!4444840 () Bool)

(declare-fun e!2767527 () Bool)

(assert (=> b!4444840 (= e!2767527 (not (contains!12419 (keys!17083 lt!1638703) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))))

(declare-fun b!4444841 () Bool)

(assert (=> b!4444841 (= e!2767524 (getKeysList!299 (toList!3694 lt!1638703)))))

(declare-fun b!4444842 () Bool)

(declare-fun e!2767525 () Unit!84144)

(assert (=> b!4444842 (= e!2767522 e!2767525)))

(declare-fun c!756459 () Bool)

(assert (=> b!4444842 (= c!756459 call!309227)))

(declare-fun b!4444843 () Bool)

(assert (=> b!4444843 (= e!2767523 (contains!12419 (keys!17083 lt!1638703) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun bm!309222 () Bool)

(assert (=> bm!309222 (= call!309227 (contains!12419 e!2767524 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun c!756458 () Bool)

(declare-fun c!756457 () Bool)

(assert (=> bm!309222 (= c!756458 c!756457)))

(declare-fun b!4444844 () Bool)

(declare-fun Unit!84292 () Unit!84144)

(assert (=> b!4444844 (= e!2767525 Unit!84292)))

(declare-fun d!1349575 () Bool)

(assert (=> d!1349575 e!2767526))

(declare-fun res!1840947 () Bool)

(assert (=> d!1349575 (=> res!1840947 e!2767526)))

(assert (=> d!1349575 (= res!1840947 e!2767527)))

(declare-fun res!1840948 () Bool)

(assert (=> d!1349575 (=> (not res!1840948) (not e!2767527))))

(declare-fun lt!1639197 () Bool)

(assert (=> d!1349575 (= res!1840948 (not lt!1639197))))

(declare-fun lt!1639191 () Bool)

(assert (=> d!1349575 (= lt!1639197 lt!1639191)))

(declare-fun lt!1639195 () Unit!84144)

(assert (=> d!1349575 (= lt!1639195 e!2767522)))

(assert (=> d!1349575 (= c!756457 lt!1639191)))

(assert (=> d!1349575 (= lt!1639191 (containsKey!1270 (toList!3694 lt!1638703) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> d!1349575 (= (contains!12415 lt!1638703 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) lt!1639197)))

(declare-fun b!4444839 () Bool)

(assert (=> b!4444839 false))

(declare-fun lt!1639194 () Unit!84144)

(declare-fun lt!1639196 () Unit!84144)

(assert (=> b!4444839 (= lt!1639194 lt!1639196)))

(assert (=> b!4444839 (containsKey!1270 (toList!3694 lt!1638703) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> b!4444839 (= lt!1639196 (lemmaInGetKeysListThenContainsKey!297 (toList!3694 lt!1638703) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun Unit!84294 () Unit!84144)

(assert (=> b!4444839 (= e!2767525 Unit!84294)))

(assert (= (and d!1349575 c!756457) b!4444836))

(assert (= (and d!1349575 (not c!756457)) b!4444842))

(assert (= (and b!4444842 c!756459) b!4444839))

(assert (= (and b!4444842 (not c!756459)) b!4444844))

(assert (= (or b!4444836 b!4444842) bm!309222))

(assert (= (and bm!309222 c!756458) b!4444841))

(assert (= (and bm!309222 (not c!756458)) b!4444838))

(assert (= (and d!1349575 res!1840948) b!4444840))

(assert (= (and d!1349575 (not res!1840947)) b!4444837))

(assert (= (and b!4444837 res!1840946) b!4444843))

(declare-fun m!5134995 () Bool)

(assert (=> bm!309222 m!5134995))

(declare-fun m!5134997 () Bool)

(assert (=> b!4444843 m!5134997))

(assert (=> b!4444843 m!5134997))

(declare-fun m!5134999 () Bool)

(assert (=> b!4444843 m!5134999))

(assert (=> b!4444840 m!5134997))

(assert (=> b!4444840 m!5134997))

(assert (=> b!4444840 m!5134999))

(declare-fun m!5135001 () Bool)

(assert (=> b!4444841 m!5135001))

(declare-fun m!5135003 () Bool)

(assert (=> d!1349575 m!5135003))

(declare-fun m!5135005 () Bool)

(assert (=> b!4444837 m!5135005))

(assert (=> b!4444837 m!5135005))

(declare-fun m!5135007 () Bool)

(assert (=> b!4444837 m!5135007))

(assert (=> b!4444838 m!5134997))

(declare-fun m!5135009 () Bool)

(assert (=> b!4444836 m!5135009))

(assert (=> b!4444836 m!5135005))

(assert (=> b!4444836 m!5135005))

(assert (=> b!4444836 m!5135007))

(declare-fun m!5135011 () Bool)

(assert (=> b!4444836 m!5135011))

(assert (=> b!4444839 m!5135003))

(declare-fun m!5135013 () Bool)

(assert (=> b!4444839 m!5135013))

(assert (=> b!4444112 d!1349575))

(declare-fun d!1349577 () Bool)

(declare-fun lt!1639198 () Bool)

(assert (=> d!1349577 (= lt!1639198 (select (content!8019 (keys!17083 lt!1638451)) key!3717))))

(declare-fun e!2767528 () Bool)

(assert (=> d!1349577 (= lt!1639198 e!2767528)))

(declare-fun res!1840949 () Bool)

(assert (=> d!1349577 (=> (not res!1840949) (not e!2767528))))

(assert (=> d!1349577 (= res!1840949 ((_ is Cons!49839) (keys!17083 lt!1638451)))))

(assert (=> d!1349577 (= (contains!12419 (keys!17083 lt!1638451) key!3717) lt!1639198)))

(declare-fun b!4444845 () Bool)

(declare-fun e!2767529 () Bool)

(assert (=> b!4444845 (= e!2767528 e!2767529)))

(declare-fun res!1840950 () Bool)

(assert (=> b!4444845 (=> res!1840950 e!2767529)))

(assert (=> b!4444845 (= res!1840950 (= (h!55576 (keys!17083 lt!1638451)) key!3717))))

(declare-fun b!4444846 () Bool)

(assert (=> b!4444846 (= e!2767529 (contains!12419 (t!356905 (keys!17083 lt!1638451)) key!3717))))

(assert (= (and d!1349577 res!1840949) b!4444845))

(assert (= (and b!4444845 (not res!1840950)) b!4444846))

(assert (=> d!1349577 m!5133359))

(declare-fun m!5135015 () Bool)

(assert (=> d!1349577 m!5135015))

(declare-fun m!5135017 () Bool)

(assert (=> d!1349577 m!5135017))

(declare-fun m!5135019 () Bool)

(assert (=> b!4444846 m!5135019))

(assert (=> b!4443956 d!1349577))

(assert (=> b!4443956 d!1349543))

(declare-fun b!4444847 () Bool)

(declare-fun e!2767530 () Unit!84144)

(declare-fun lt!1639201 () Unit!84144)

(assert (=> b!4444847 (= e!2767530 lt!1639201)))

(declare-fun lt!1639202 () Unit!84144)

(assert (=> b!4444847 (= lt!1639202 (lemmaContainsKeyImpliesGetValueByKeyDefined!714 (toList!3694 (extractMap!914 (toList!3693 lm!1616))) key!3717))))

(assert (=> b!4444847 (isDefined!8111 (getValueByKey!807 (toList!3694 (extractMap!914 (toList!3693 lm!1616))) key!3717))))

(declare-fun lt!1639199 () Unit!84144)

(assert (=> b!4444847 (= lt!1639199 lt!1639202)))

(assert (=> b!4444847 (= lt!1639201 (lemmaInListThenGetKeysListContains!296 (toList!3694 (extractMap!914 (toList!3693 lm!1616))) key!3717))))

(declare-fun call!309228 () Bool)

(assert (=> b!4444847 call!309228))

(declare-fun b!4444848 () Bool)

(declare-fun e!2767534 () Bool)

(declare-fun e!2767531 () Bool)

(assert (=> b!4444848 (= e!2767534 e!2767531)))

(declare-fun res!1840951 () Bool)

(assert (=> b!4444848 (=> (not res!1840951) (not e!2767531))))

(assert (=> b!4444848 (= res!1840951 (isDefined!8111 (getValueByKey!807 (toList!3694 (extractMap!914 (toList!3693 lm!1616))) key!3717)))))

(declare-fun b!4444849 () Bool)

(declare-fun e!2767532 () List!49963)

(assert (=> b!4444849 (= e!2767532 (keys!17083 (extractMap!914 (toList!3693 lm!1616))))))

(declare-fun b!4444851 () Bool)

(declare-fun e!2767535 () Bool)

(assert (=> b!4444851 (= e!2767535 (not (contains!12419 (keys!17083 (extractMap!914 (toList!3693 lm!1616))) key!3717)))))

(declare-fun b!4444852 () Bool)

(assert (=> b!4444852 (= e!2767532 (getKeysList!299 (toList!3694 (extractMap!914 (toList!3693 lm!1616)))))))

(declare-fun b!4444853 () Bool)

(declare-fun e!2767533 () Unit!84144)

(assert (=> b!4444853 (= e!2767530 e!2767533)))

(declare-fun c!756462 () Bool)

(assert (=> b!4444853 (= c!756462 call!309228)))

(declare-fun b!4444854 () Bool)

(assert (=> b!4444854 (= e!2767531 (contains!12419 (keys!17083 (extractMap!914 (toList!3693 lm!1616))) key!3717))))

(declare-fun bm!309223 () Bool)

(assert (=> bm!309223 (= call!309228 (contains!12419 e!2767532 key!3717))))

(declare-fun c!756461 () Bool)

(declare-fun c!756460 () Bool)

(assert (=> bm!309223 (= c!756461 c!756460)))

(declare-fun b!4444855 () Bool)

(declare-fun Unit!84296 () Unit!84144)

(assert (=> b!4444855 (= e!2767533 Unit!84296)))

(declare-fun d!1349579 () Bool)

(assert (=> d!1349579 e!2767534))

(declare-fun res!1840952 () Bool)

(assert (=> d!1349579 (=> res!1840952 e!2767534)))

(assert (=> d!1349579 (= res!1840952 e!2767535)))

(declare-fun res!1840953 () Bool)

(assert (=> d!1349579 (=> (not res!1840953) (not e!2767535))))

(declare-fun lt!1639206 () Bool)

(assert (=> d!1349579 (= res!1840953 (not lt!1639206))))

(declare-fun lt!1639200 () Bool)

(assert (=> d!1349579 (= lt!1639206 lt!1639200)))

(declare-fun lt!1639204 () Unit!84144)

(assert (=> d!1349579 (= lt!1639204 e!2767530)))

(assert (=> d!1349579 (= c!756460 lt!1639200)))

(assert (=> d!1349579 (= lt!1639200 (containsKey!1270 (toList!3694 (extractMap!914 (toList!3693 lm!1616))) key!3717))))

(assert (=> d!1349579 (= (contains!12415 (extractMap!914 (toList!3693 lm!1616)) key!3717) lt!1639206)))

(declare-fun b!4444850 () Bool)

(assert (=> b!4444850 false))

(declare-fun lt!1639203 () Unit!84144)

(declare-fun lt!1639205 () Unit!84144)

(assert (=> b!4444850 (= lt!1639203 lt!1639205)))

(assert (=> b!4444850 (containsKey!1270 (toList!3694 (extractMap!914 (toList!3693 lm!1616))) key!3717)))

(assert (=> b!4444850 (= lt!1639205 (lemmaInGetKeysListThenContainsKey!297 (toList!3694 (extractMap!914 (toList!3693 lm!1616))) key!3717))))

(declare-fun Unit!84297 () Unit!84144)

(assert (=> b!4444850 (= e!2767533 Unit!84297)))

(assert (= (and d!1349579 c!756460) b!4444847))

(assert (= (and d!1349579 (not c!756460)) b!4444853))

(assert (= (and b!4444853 c!756462) b!4444850))

(assert (= (and b!4444853 (not c!756462)) b!4444855))

(assert (= (or b!4444847 b!4444853) bm!309223))

(assert (= (and bm!309223 c!756461) b!4444852))

(assert (= (and bm!309223 (not c!756461)) b!4444849))

(assert (= (and d!1349579 res!1840953) b!4444851))

(assert (= (and d!1349579 (not res!1840952)) b!4444848))

(assert (= (and b!4444848 res!1840951) b!4444854))

(declare-fun m!5135021 () Bool)

(assert (=> bm!309223 m!5135021))

(assert (=> b!4444854 m!5133307))

(declare-fun m!5135023 () Bool)

(assert (=> b!4444854 m!5135023))

(assert (=> b!4444854 m!5135023))

(declare-fun m!5135025 () Bool)

(assert (=> b!4444854 m!5135025))

(assert (=> b!4444851 m!5133307))

(assert (=> b!4444851 m!5135023))

(assert (=> b!4444851 m!5135023))

(assert (=> b!4444851 m!5135025))

(declare-fun m!5135027 () Bool)

(assert (=> b!4444852 m!5135027))

(declare-fun m!5135029 () Bool)

(assert (=> d!1349579 m!5135029))

(declare-fun m!5135031 () Bool)

(assert (=> b!4444848 m!5135031))

(assert (=> b!4444848 m!5135031))

(declare-fun m!5135033 () Bool)

(assert (=> b!4444848 m!5135033))

(assert (=> b!4444849 m!5133307))

(assert (=> b!4444849 m!5135023))

(declare-fun m!5135035 () Bool)

(assert (=> b!4444847 m!5135035))

(assert (=> b!4444847 m!5135031))

(assert (=> b!4444847 m!5135031))

(assert (=> b!4444847 m!5135033))

(declare-fun m!5135037 () Bool)

(assert (=> b!4444847 m!5135037))

(assert (=> b!4444850 m!5135029))

(declare-fun m!5135039 () Bool)

(assert (=> b!4444850 m!5135039))

(assert (=> d!1349089 d!1349579))

(assert (=> d!1349089 d!1349081))

(declare-fun d!1349581 () Bool)

(assert (=> d!1349581 (contains!12415 (extractMap!914 (toList!3693 lm!1616)) key!3717)))

(assert (=> d!1349581 true))

(declare-fun _$12!1226 () Unit!84144)

(assert (=> d!1349581 (= (choose!28242 lm!1616 key!3717 hashF!1220) _$12!1226)))

(declare-fun bs!765556 () Bool)

(assert (= bs!765556 d!1349581))

(assert (=> bs!765556 m!5133307))

(assert (=> bs!765556 m!5133307))

(assert (=> bs!765556 m!5133463))

(assert (=> d!1349089 d!1349581))

(declare-fun d!1349583 () Bool)

(declare-fun res!1840954 () Bool)

(declare-fun e!2767536 () Bool)

(assert (=> d!1349583 (=> res!1840954 e!2767536)))

(assert (=> d!1349583 (= res!1840954 ((_ is Nil!49837) (toList!3693 lm!1616)))))

(assert (=> d!1349583 (= (forall!9732 (toList!3693 lm!1616) lambda!157888) e!2767536)))

(declare-fun b!4444856 () Bool)

(declare-fun e!2767537 () Bool)

(assert (=> b!4444856 (= e!2767536 e!2767537)))

(declare-fun res!1840955 () Bool)

(assert (=> b!4444856 (=> (not res!1840955) (not e!2767537))))

(assert (=> b!4444856 (= res!1840955 (dynLambda!20922 lambda!157888 (h!55572 (toList!3693 lm!1616))))))

(declare-fun b!4444857 () Bool)

(assert (=> b!4444857 (= e!2767537 (forall!9732 (t!356903 (toList!3693 lm!1616)) lambda!157888))))

(assert (= (and d!1349583 (not res!1840954)) b!4444856))

(assert (= (and b!4444856 res!1840955) b!4444857))

(declare-fun b_lambda!145451 () Bool)

(assert (=> (not b_lambda!145451) (not b!4444856)))

(declare-fun m!5135041 () Bool)

(assert (=> b!4444856 m!5135041))

(declare-fun m!5135043 () Bool)

(assert (=> b!4444857 m!5135043))

(assert (=> d!1349089 d!1349583))

(declare-fun bs!765557 () Bool)

(declare-fun b!4444883 () Bool)

(assert (= bs!765557 (and b!4444883 b!4444728)))

(declare-fun lambda!158045 () Int)

(assert (=> bs!765557 (= (= (t!356902 (toList!3694 lt!1638451)) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158045 lambda!158007))))

(declare-fun bs!765558 () Bool)

(assert (= bs!765558 (and b!4444883 b!4444797)))

(assert (=> bs!765558 (= (= (t!356902 (toList!3694 lt!1638451)) (toList!3694 lt!1638451)) (= lambda!158045 lambda!158026))))

(assert (=> b!4444883 true))

(declare-fun bs!765559 () Bool)

(declare-fun b!4444878 () Bool)

(assert (= bs!765559 (and b!4444878 b!4444728)))

(declare-fun lambda!158046 () Int)

(assert (=> bs!765559 (= (= (Cons!49836 (h!55571 (toList!3694 lt!1638451)) (t!356902 (toList!3694 lt!1638451))) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158046 lambda!158007))))

(declare-fun bs!765560 () Bool)

(assert (= bs!765560 (and b!4444878 b!4444797)))

(assert (=> bs!765560 (= (= (Cons!49836 (h!55571 (toList!3694 lt!1638451)) (t!356902 (toList!3694 lt!1638451))) (toList!3694 lt!1638451)) (= lambda!158046 lambda!158026))))

(declare-fun bs!765561 () Bool)

(assert (= bs!765561 (and b!4444878 b!4444883)))

(assert (=> bs!765561 (= (= (Cons!49836 (h!55571 (toList!3694 lt!1638451)) (t!356902 (toList!3694 lt!1638451))) (t!356902 (toList!3694 lt!1638451))) (= lambda!158046 lambda!158045))))

(assert (=> b!4444878 true))

(declare-fun bs!765562 () Bool)

(declare-fun b!4444882 () Bool)

(assert (= bs!765562 (and b!4444882 b!4444728)))

(declare-fun lambda!158047 () Int)

(assert (=> bs!765562 (= (= (toList!3694 lt!1638451) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158047 lambda!158007))))

(declare-fun bs!765563 () Bool)

(assert (= bs!765563 (and b!4444882 b!4444797)))

(assert (=> bs!765563 (= lambda!158047 lambda!158026)))

(declare-fun bs!765564 () Bool)

(assert (= bs!765564 (and b!4444882 b!4444883)))

(assert (=> bs!765564 (= (= (toList!3694 lt!1638451) (t!356902 (toList!3694 lt!1638451))) (= lambda!158047 lambda!158045))))

(declare-fun bs!765565 () Bool)

(assert (= bs!765565 (and b!4444882 b!4444878)))

(assert (=> bs!765565 (= (= (toList!3694 lt!1638451) (Cons!49836 (h!55571 (toList!3694 lt!1638451)) (t!356902 (toList!3694 lt!1638451)))) (= lambda!158047 lambda!158046))))

(assert (=> b!4444882 true))

(declare-fun bs!765566 () Bool)

(declare-fun b!4444884 () Bool)

(assert (= bs!765566 (and b!4444884 b!4444729)))

(declare-fun lambda!158048 () Int)

(assert (=> bs!765566 (= lambda!158048 lambda!158008)))

(declare-fun bs!765567 () Bool)

(assert (= bs!765567 (and b!4444884 b!4444798)))

(assert (=> bs!765567 (= lambda!158048 lambda!158027)))

(declare-fun b!4444876 () Bool)

(declare-fun res!1840962 () Bool)

(declare-fun e!2767549 () Bool)

(assert (=> b!4444876 (=> (not res!1840962) (not e!2767549))))

(declare-fun lt!1639222 () List!49963)

(assert (=> b!4444876 (= res!1840962 (= (length!216 lt!1639222) (length!217 (toList!3694 lt!1638451))))))

(declare-fun b!4444877 () Bool)

(assert (=> b!4444877 false))

(declare-fun e!2767547 () Unit!84144)

(declare-fun Unit!84298 () Unit!84144)

(assert (=> b!4444877 (= e!2767547 Unit!84298)))

(declare-fun e!2767546 () List!49963)

(assert (=> b!4444878 (= e!2767546 (Cons!49839 (_1!28189 (h!55571 (toList!3694 lt!1638451))) (getKeysList!299 (t!356902 (toList!3694 lt!1638451)))))))

(declare-fun c!756470 () Bool)

(assert (=> b!4444878 (= c!756470 (containsKey!1270 (t!356902 (toList!3694 lt!1638451)) (_1!28189 (h!55571 (toList!3694 lt!1638451)))))))

(declare-fun lt!1639223 () Unit!84144)

(assert (=> b!4444878 (= lt!1639223 e!2767547)))

(declare-fun c!756469 () Bool)

(assert (=> b!4444878 (= c!756469 (contains!12419 (getKeysList!299 (t!356902 (toList!3694 lt!1638451))) (_1!28189 (h!55571 (toList!3694 lt!1638451)))))))

(declare-fun lt!1639226 () Unit!84144)

(declare-fun e!2767548 () Unit!84144)

(assert (=> b!4444878 (= lt!1639226 e!2767548)))

(declare-fun lt!1639227 () List!49963)

(assert (=> b!4444878 (= lt!1639227 (getKeysList!299 (t!356902 (toList!3694 lt!1638451))))))

(declare-fun lt!1639221 () Unit!84144)

(declare-fun lemmaForallContainsAddHeadPreserves!102 (List!49960 List!49963 tuple2!49790) Unit!84144)

(assert (=> b!4444878 (= lt!1639221 (lemmaForallContainsAddHeadPreserves!102 (t!356902 (toList!3694 lt!1638451)) lt!1639227 (h!55571 (toList!3694 lt!1638451))))))

(assert (=> b!4444878 (forall!9736 lt!1639227 lambda!158046)))

(declare-fun lt!1639224 () Unit!84144)

(assert (=> b!4444878 (= lt!1639224 lt!1639221)))

(declare-fun b!4444879 () Bool)

(declare-fun Unit!84299 () Unit!84144)

(assert (=> b!4444879 (= e!2767547 Unit!84299)))

(declare-fun b!4444881 () Bool)

(declare-fun Unit!84300 () Unit!84144)

(assert (=> b!4444881 (= e!2767548 Unit!84300)))

(declare-fun res!1840963 () Bool)

(assert (=> b!4444882 (=> (not res!1840963) (not e!2767549))))

(assert (=> b!4444882 (= res!1840963 (forall!9736 lt!1639222 lambda!158047))))

(assert (=> b!4444883 false))

(declare-fun lt!1639225 () Unit!84144)

(declare-fun forallContained!2151 (List!49963 Int K!11205) Unit!84144)

(assert (=> b!4444883 (= lt!1639225 (forallContained!2151 (getKeysList!299 (t!356902 (toList!3694 lt!1638451))) lambda!158045 (_1!28189 (h!55571 (toList!3694 lt!1638451)))))))

(declare-fun Unit!84301 () Unit!84144)

(assert (=> b!4444883 (= e!2767548 Unit!84301)))

(assert (=> b!4444884 (= e!2767549 (= (content!8019 lt!1639222) (content!8019 (map!10904 (toList!3694 lt!1638451) lambda!158048))))))

(declare-fun d!1349585 () Bool)

(assert (=> d!1349585 e!2767549))

(declare-fun res!1840964 () Bool)

(assert (=> d!1349585 (=> (not res!1840964) (not e!2767549))))

(assert (=> d!1349585 (= res!1840964 (noDuplicate!680 lt!1639222))))

(assert (=> d!1349585 (= lt!1639222 e!2767546)))

(declare-fun c!756471 () Bool)

(assert (=> d!1349585 (= c!756471 ((_ is Cons!49836) (toList!3694 lt!1638451)))))

(assert (=> d!1349585 (invariantList!852 (toList!3694 lt!1638451))))

(assert (=> d!1349585 (= (getKeysList!299 (toList!3694 lt!1638451)) lt!1639222)))

(declare-fun b!4444880 () Bool)

(assert (=> b!4444880 (= e!2767546 Nil!49839)))

(assert (= (and d!1349585 c!756471) b!4444878))

(assert (= (and d!1349585 (not c!756471)) b!4444880))

(assert (= (and b!4444878 c!756470) b!4444877))

(assert (= (and b!4444878 (not c!756470)) b!4444879))

(assert (= (and b!4444878 c!756469) b!4444883))

(assert (= (and b!4444878 (not c!756469)) b!4444881))

(assert (= (and d!1349585 res!1840964) b!4444876))

(assert (= (and b!4444876 res!1840962) b!4444882))

(assert (= (and b!4444882 res!1840963) b!4444884))

(declare-fun m!5135045 () Bool)

(assert (=> b!4444876 m!5135045))

(assert (=> b!4444876 m!5134879))

(declare-fun m!5135047 () Bool)

(assert (=> b!4444884 m!5135047))

(declare-fun m!5135049 () Bool)

(assert (=> b!4444884 m!5135049))

(assert (=> b!4444884 m!5135049))

(declare-fun m!5135051 () Bool)

(assert (=> b!4444884 m!5135051))

(declare-fun m!5135053 () Bool)

(assert (=> d!1349585 m!5135053))

(assert (=> d!1349585 m!5134865))

(declare-fun m!5135055 () Bool)

(assert (=> b!4444878 m!5135055))

(declare-fun m!5135057 () Bool)

(assert (=> b!4444878 m!5135057))

(assert (=> b!4444878 m!5135057))

(declare-fun m!5135059 () Bool)

(assert (=> b!4444878 m!5135059))

(declare-fun m!5135061 () Bool)

(assert (=> b!4444878 m!5135061))

(declare-fun m!5135063 () Bool)

(assert (=> b!4444878 m!5135063))

(assert (=> b!4444883 m!5135057))

(assert (=> b!4444883 m!5135057))

(declare-fun m!5135065 () Bool)

(assert (=> b!4444883 m!5135065))

(declare-fun m!5135067 () Bool)

(assert (=> b!4444882 m!5135067))

(assert (=> b!4443957 d!1349585))

(declare-fun d!1349587 () Bool)

(assert (=> d!1349587 (= (get!16256 (getValueByKey!808 (toList!3693 lm!1616) hash!366)) (v!44057 (getValueByKey!808 (toList!3693 lm!1616) hash!366)))))

(assert (=> d!1349153 d!1349587))

(assert (=> d!1349153 d!1349551))

(declare-fun d!1349589 () Bool)

(declare-fun lt!1639230 () Bool)

(declare-fun content!8021 (List!49961) (InoxSet tuple2!49792))

(assert (=> d!1349589 (= lt!1639230 (select (content!8021 (toList!3693 lt!1638751)) lt!1638450))))

(declare-fun e!2767554 () Bool)

(assert (=> d!1349589 (= lt!1639230 e!2767554)))

(declare-fun res!1840969 () Bool)

(assert (=> d!1349589 (=> (not res!1840969) (not e!2767554))))

(assert (=> d!1349589 (= res!1840969 ((_ is Cons!49837) (toList!3693 lt!1638751)))))

(assert (=> d!1349589 (= (contains!12420 (toList!3693 lt!1638751) lt!1638450) lt!1639230)))

(declare-fun b!4444891 () Bool)

(declare-fun e!2767555 () Bool)

(assert (=> b!4444891 (= e!2767554 e!2767555)))

(declare-fun res!1840970 () Bool)

(assert (=> b!4444891 (=> res!1840970 e!2767555)))

(assert (=> b!4444891 (= res!1840970 (= (h!55572 (toList!3693 lt!1638751)) lt!1638450))))

(declare-fun b!4444892 () Bool)

(assert (=> b!4444892 (= e!2767555 (contains!12420 (t!356903 (toList!3693 lt!1638751)) lt!1638450))))

(assert (= (and d!1349589 res!1840969) b!4444891))

(assert (= (and b!4444891 (not res!1840970)) b!4444892))

(declare-fun m!5135069 () Bool)

(assert (=> d!1349589 m!5135069))

(declare-fun m!5135071 () Bool)

(assert (=> d!1349589 m!5135071))

(declare-fun m!5135073 () Bool)

(assert (=> b!4444892 m!5135073))

(assert (=> b!4444156 d!1349589))

(assert (=> b!4443959 d!1349577))

(assert (=> b!4443959 d!1349543))

(declare-fun d!1349591 () Bool)

(declare-fun choose!28262 (Hashable!5247 K!11205) (_ BitVec 64))

(assert (=> d!1349591 (= (hash!2319 hashF!1220 key!3717) (choose!28262 hashF!1220 key!3717))))

(declare-fun bs!765568 () Bool)

(assert (= bs!765568 d!1349591))

(declare-fun m!5135075 () Bool)

(assert (=> bs!765568 m!5135075))

(assert (=> d!1349167 d!1349591))

(declare-fun d!1349593 () Bool)

(declare-fun c!756472 () Bool)

(assert (=> d!1349593 (= c!756472 ((_ is Nil!49836) (toList!3694 lt!1638451)))))

(declare-fun e!2767556 () (InoxSet tuple2!49790))

(assert (=> d!1349593 (= (content!8017 (toList!3694 lt!1638451)) e!2767556)))

(declare-fun b!4444893 () Bool)

(assert (=> b!4444893 (= e!2767556 ((as const (Array tuple2!49790 Bool)) false))))

(declare-fun b!4444894 () Bool)

(assert (=> b!4444894 (= e!2767556 ((_ map or) (store ((as const (Array tuple2!49790 Bool)) false) (h!55571 (toList!3694 lt!1638451)) true) (content!8017 (t!356902 (toList!3694 lt!1638451)))))))

(assert (= (and d!1349593 c!756472) b!4444893))

(assert (= (and d!1349593 (not c!756472)) b!4444894))

(declare-fun m!5135077 () Bool)

(assert (=> b!4444894 m!5135077))

(declare-fun m!5135079 () Bool)

(assert (=> b!4444894 m!5135079))

(assert (=> d!1349099 d!1349593))

(declare-fun d!1349595 () Bool)

(declare-fun c!756473 () Bool)

(assert (=> d!1349595 (= c!756473 ((_ is Nil!49836) (toList!3694 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) lt!1638452))))))

(declare-fun e!2767557 () (InoxSet tuple2!49790))

(assert (=> d!1349595 (= (content!8017 (toList!3694 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) lt!1638452))) e!2767557)))

(declare-fun b!4444895 () Bool)

(assert (=> b!4444895 (= e!2767557 ((as const (Array tuple2!49790 Bool)) false))))

(declare-fun b!4444896 () Bool)

(assert (=> b!4444896 (= e!2767557 ((_ map or) (store ((as const (Array tuple2!49790 Bool)) false) (h!55571 (toList!3694 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) lt!1638452))) true) (content!8017 (t!356902 (toList!3694 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lm!1616))) lt!1638452))))))))

(assert (= (and d!1349595 c!756473) b!4444895))

(assert (= (and d!1349595 (not c!756473)) b!4444896))

(declare-fun m!5135081 () Bool)

(assert (=> b!4444896 m!5135081))

(declare-fun m!5135083 () Bool)

(assert (=> b!4444896 m!5135083))

(assert (=> d!1349099 d!1349595))

(declare-fun d!1349597 () Bool)

(declare-fun res!1840971 () Bool)

(declare-fun e!2767558 () Bool)

(assert (=> d!1349597 (=> res!1840971 e!2767558)))

(assert (=> d!1349597 (= res!1840971 (not ((_ is Cons!49836) (_2!28190 (tuple2!49793 hash!366 newBucket!194)))))))

(assert (=> d!1349597 (= (noDuplicateKeys!853 (_2!28190 (tuple2!49793 hash!366 newBucket!194))) e!2767558)))

(declare-fun b!4444897 () Bool)

(declare-fun e!2767559 () Bool)

(assert (=> b!4444897 (= e!2767558 e!2767559)))

(declare-fun res!1840972 () Bool)

(assert (=> b!4444897 (=> (not res!1840972) (not e!2767559))))

(assert (=> b!4444897 (= res!1840972 (not (containsKey!1272 (t!356902 (_2!28190 (tuple2!49793 hash!366 newBucket!194))) (_1!28189 (h!55571 (_2!28190 (tuple2!49793 hash!366 newBucket!194)))))))))

(declare-fun b!4444898 () Bool)

(assert (=> b!4444898 (= e!2767559 (noDuplicateKeys!853 (t!356902 (_2!28190 (tuple2!49793 hash!366 newBucket!194)))))))

(assert (= (and d!1349597 (not res!1840971)) b!4444897))

(assert (= (and b!4444897 res!1840972) b!4444898))

(declare-fun m!5135085 () Bool)

(assert (=> b!4444897 m!5135085))

(declare-fun m!5135087 () Bool)

(assert (=> b!4444898 m!5135087))

(assert (=> bs!765039 d!1349597))

(declare-fun d!1349599 () Bool)

(assert (=> d!1349599 (isDefined!8111 (getValueByKey!807 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(declare-fun lt!1639231 () Unit!84144)

(assert (=> d!1349599 (= lt!1639231 (choose!28255 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(assert (=> d!1349599 (invariantList!852 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))))

(assert (=> d!1349599 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!714 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717) lt!1639231)))

(declare-fun bs!765569 () Bool)

(assert (= bs!765569 d!1349599))

(assert (=> bs!765569 m!5133769))

(assert (=> bs!765569 m!5133769))

(assert (=> bs!765569 m!5133771))

(declare-fun m!5135089 () Bool)

(assert (=> bs!765569 m!5135089))

(declare-fun m!5135091 () Bool)

(assert (=> bs!765569 m!5135091))

(assert (=> b!4444161 d!1349599))

(assert (=> b!4444161 d!1349447))

(assert (=> b!4444161 d!1349449))

(declare-fun d!1349601 () Bool)

(assert (=> d!1349601 (contains!12419 (getKeysList!299 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) key!3717)))

(declare-fun lt!1639232 () Unit!84144)

(assert (=> d!1349601 (= lt!1639232 (choose!28256 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(assert (=> d!1349601 (invariantList!852 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))))

(assert (=> d!1349601 (= (lemmaInListThenGetKeysListContains!296 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717) lt!1639232)))

(declare-fun bs!765570 () Bool)

(assert (= bs!765570 d!1349601))

(assert (=> bs!765570 m!5133765))

(assert (=> bs!765570 m!5133765))

(declare-fun m!5135093 () Bool)

(assert (=> bs!765570 m!5135093))

(declare-fun m!5135095 () Bool)

(assert (=> bs!765570 m!5135095))

(assert (=> bs!765570 m!5135091))

(assert (=> b!4444161 d!1349601))

(declare-fun d!1349603 () Bool)

(declare-fun res!1840977 () Bool)

(declare-fun e!2767564 () Bool)

(assert (=> d!1349603 (=> res!1840977 e!2767564)))

(assert (=> d!1349603 (= res!1840977 (and ((_ is Cons!49836) (t!356902 newBucket!194)) (= (_1!28189 (h!55571 (t!356902 newBucket!194))) (_1!28189 (h!55571 newBucket!194)))))))

(assert (=> d!1349603 (= (containsKey!1272 (t!356902 newBucket!194) (_1!28189 (h!55571 newBucket!194))) e!2767564)))

(declare-fun b!4444903 () Bool)

(declare-fun e!2767565 () Bool)

(assert (=> b!4444903 (= e!2767564 e!2767565)))

(declare-fun res!1840978 () Bool)

(assert (=> b!4444903 (=> (not res!1840978) (not e!2767565))))

(assert (=> b!4444903 (= res!1840978 ((_ is Cons!49836) (t!356902 newBucket!194)))))

(declare-fun b!4444904 () Bool)

(assert (=> b!4444904 (= e!2767565 (containsKey!1272 (t!356902 (t!356902 newBucket!194)) (_1!28189 (h!55571 newBucket!194))))))

(assert (= (and d!1349603 (not res!1840977)) b!4444903))

(assert (= (and b!4444903 res!1840978) b!4444904))

(declare-fun m!5135097 () Bool)

(assert (=> b!4444904 m!5135097))

(assert (=> b!4444129 d!1349603))

(declare-fun d!1349605 () Bool)

(declare-fun res!1840979 () Bool)

(declare-fun e!2767566 () Bool)

(assert (=> d!1349605 (=> res!1840979 e!2767566)))

(assert (=> d!1349605 (= res!1840979 ((_ is Nil!49837) (toList!3693 (+!1243 lm!1616 (tuple2!49793 hash!366 newBucket!194)))))))

(assert (=> d!1349605 (= (forall!9732 (toList!3693 (+!1243 lm!1616 (tuple2!49793 hash!366 newBucket!194))) lambda!157844) e!2767566)))

(declare-fun b!4444905 () Bool)

(declare-fun e!2767567 () Bool)

(assert (=> b!4444905 (= e!2767566 e!2767567)))

(declare-fun res!1840980 () Bool)

(assert (=> b!4444905 (=> (not res!1840980) (not e!2767567))))

(assert (=> b!4444905 (= res!1840980 (dynLambda!20922 lambda!157844 (h!55572 (toList!3693 (+!1243 lm!1616 (tuple2!49793 hash!366 newBucket!194))))))))

(declare-fun b!4444906 () Bool)

(assert (=> b!4444906 (= e!2767567 (forall!9732 (t!356903 (toList!3693 (+!1243 lm!1616 (tuple2!49793 hash!366 newBucket!194)))) lambda!157844))))

(assert (= (and d!1349605 (not res!1840979)) b!4444905))

(assert (= (and b!4444905 res!1840980) b!4444906))

(declare-fun b_lambda!145453 () Bool)

(assert (=> (not b_lambda!145453) (not b!4444905)))

(declare-fun m!5135099 () Bool)

(assert (=> b!4444905 m!5135099))

(declare-fun m!5135101 () Bool)

(assert (=> b!4444906 m!5135101))

(assert (=> d!1349165 d!1349605))

(declare-fun d!1349607 () Bool)

(declare-fun e!2767568 () Bool)

(assert (=> d!1349607 e!2767568))

(declare-fun res!1840982 () Bool)

(assert (=> d!1349607 (=> (not res!1840982) (not e!2767568))))

(declare-fun lt!1639235 () ListLongMap!2343)

(assert (=> d!1349607 (= res!1840982 (contains!12414 lt!1639235 (_1!28190 (tuple2!49793 hash!366 newBucket!194))))))

(declare-fun lt!1639233 () List!49961)

(assert (=> d!1349607 (= lt!1639235 (ListLongMap!2344 lt!1639233))))

(declare-fun lt!1639234 () Unit!84144)

(declare-fun lt!1639236 () Unit!84144)

(assert (=> d!1349607 (= lt!1639234 lt!1639236)))

(assert (=> d!1349607 (= (getValueByKey!808 lt!1639233 (_1!28190 (tuple2!49793 hash!366 newBucket!194))) (Some!10821 (_2!28190 (tuple2!49793 hash!366 newBucket!194))))))

(assert (=> d!1349607 (= lt!1639236 (lemmaContainsTupThenGetReturnValue!523 lt!1639233 (_1!28190 (tuple2!49793 hash!366 newBucket!194)) (_2!28190 (tuple2!49793 hash!366 newBucket!194))))))

(assert (=> d!1349607 (= lt!1639233 (insertStrictlySorted!306 (toList!3693 lm!1616) (_1!28190 (tuple2!49793 hash!366 newBucket!194)) (_2!28190 (tuple2!49793 hash!366 newBucket!194))))))

(assert (=> d!1349607 (= (+!1243 lm!1616 (tuple2!49793 hash!366 newBucket!194)) lt!1639235)))

(declare-fun b!4444907 () Bool)

(declare-fun res!1840981 () Bool)

(assert (=> b!4444907 (=> (not res!1840981) (not e!2767568))))

(assert (=> b!4444907 (= res!1840981 (= (getValueByKey!808 (toList!3693 lt!1639235) (_1!28190 (tuple2!49793 hash!366 newBucket!194))) (Some!10821 (_2!28190 (tuple2!49793 hash!366 newBucket!194)))))))

(declare-fun b!4444908 () Bool)

(assert (=> b!4444908 (= e!2767568 (contains!12420 (toList!3693 lt!1639235) (tuple2!49793 hash!366 newBucket!194)))))

(assert (= (and d!1349607 res!1840982) b!4444907))

(assert (= (and b!4444907 res!1840981) b!4444908))

(declare-fun m!5135103 () Bool)

(assert (=> d!1349607 m!5135103))

(declare-fun m!5135105 () Bool)

(assert (=> d!1349607 m!5135105))

(declare-fun m!5135107 () Bool)

(assert (=> d!1349607 m!5135107))

(declare-fun m!5135109 () Bool)

(assert (=> d!1349607 m!5135109))

(declare-fun m!5135111 () Bool)

(assert (=> b!4444907 m!5135111))

(declare-fun m!5135113 () Bool)

(assert (=> b!4444908 m!5135113))

(assert (=> d!1349165 d!1349607))

(declare-fun d!1349609 () Bool)

(assert (=> d!1349609 (forall!9732 (toList!3693 (+!1243 lm!1616 (tuple2!49793 hash!366 newBucket!194))) lambda!157844)))

(assert (=> d!1349609 true))

(declare-fun _$31!454 () Unit!84144)

(assert (=> d!1349609 (= (choose!28243 lm!1616 lambda!157844 hash!366 newBucket!194) _$31!454)))

(declare-fun bs!765571 () Bool)

(assert (= bs!765571 d!1349609))

(assert (=> bs!765571 m!5133693))

(assert (=> bs!765571 m!5133695))

(assert (=> d!1349165 d!1349609))

(assert (=> d!1349165 d!1349157))

(assert (=> b!4443998 d!1349443))

(assert (=> b!4443998 d!1349445))

(assert (=> b!4444164 d!1349433))

(declare-fun d!1349611 () Bool)

(assert (=> d!1349611 (containsKey!1270 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717)))

(declare-fun lt!1639239 () Unit!84144)

(declare-fun choose!28263 (List!49960 K!11205) Unit!84144)

(assert (=> d!1349611 (= lt!1639239 (choose!28263 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717))))

(assert (=> d!1349611 (invariantList!852 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))))

(assert (=> d!1349611 (= (lemmaInGetKeysListThenContainsKey!297 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) key!3717) lt!1639239)))

(declare-fun bs!765572 () Bool)

(assert (= bs!765572 d!1349611))

(assert (=> bs!765572 m!5133767))

(declare-fun m!5135115 () Bool)

(assert (=> bs!765572 m!5135115))

(assert (=> bs!765572 m!5135091))

(assert (=> b!4444164 d!1349611))

(declare-fun b!4444910 () Bool)

(declare-fun e!2767569 () Unit!84144)

(declare-fun lt!1639242 () Unit!84144)

(assert (=> b!4444910 (= e!2767569 lt!1639242)))

(declare-fun lt!1639243 () Unit!84144)

(assert (=> b!4444910 (= lt!1639243 (lemmaContainsKeyImpliesGetValueByKeyDefined!714 (toList!3694 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(assert (=> b!4444910 (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun lt!1639240 () Unit!84144)

(assert (=> b!4444910 (= lt!1639240 lt!1639243)))

(assert (=> b!4444910 (= lt!1639242 (lemmaInListThenGetKeysListContains!296 (toList!3694 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun call!309229 () Bool)

(assert (=> b!4444910 call!309229))

(declare-fun b!4444911 () Bool)

(declare-fun e!2767573 () Bool)

(declare-fun e!2767570 () Bool)

(assert (=> b!4444911 (= e!2767573 e!2767570)))

(declare-fun res!1840983 () Bool)

(assert (=> b!4444911 (=> (not res!1840983) (not e!2767570))))

(assert (=> b!4444911 (= res!1840983 (isDefined!8111 (getValueByKey!807 (toList!3694 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93)))))))

(declare-fun b!4444912 () Bool)

(declare-fun e!2767571 () List!49963)

(assert (=> b!4444912 (= e!2767571 (keys!17083 lt!1638743))))

(declare-fun e!2767574 () Bool)

(declare-fun b!4444914 () Bool)

(assert (=> b!4444914 (= e!2767574 (not (contains!12419 (keys!17083 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93)))))))

(declare-fun b!4444915 () Bool)

(assert (=> b!4444915 (= e!2767571 (getKeysList!299 (toList!3694 lt!1638743)))))

(declare-fun b!4444916 () Bool)

(declare-fun e!2767572 () Unit!84144)

(assert (=> b!4444916 (= e!2767569 e!2767572)))

(declare-fun c!756476 () Bool)

(assert (=> b!4444916 (= c!756476 call!309229)))

(declare-fun b!4444917 () Bool)

(assert (=> b!4444917 (= e!2767570 (contains!12419 (keys!17083 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun bm!309224 () Bool)

(assert (=> bm!309224 (= call!309229 (contains!12419 e!2767571 (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun c!756475 () Bool)

(declare-fun c!756474 () Bool)

(assert (=> bm!309224 (= c!756475 c!756474)))

(declare-fun b!4444918 () Bool)

(declare-fun Unit!84313 () Unit!84144)

(assert (=> b!4444918 (= e!2767572 Unit!84313)))

(declare-fun d!1349613 () Bool)

(assert (=> d!1349613 e!2767573))

(declare-fun res!1840984 () Bool)

(assert (=> d!1349613 (=> res!1840984 e!2767573)))

(assert (=> d!1349613 (= res!1840984 e!2767574)))

(declare-fun res!1840985 () Bool)

(assert (=> d!1349613 (=> (not res!1840985) (not e!2767574))))

(declare-fun lt!1639247 () Bool)

(assert (=> d!1349613 (= res!1840985 (not lt!1639247))))

(declare-fun lt!1639241 () Bool)

(assert (=> d!1349613 (= lt!1639247 lt!1639241)))

(declare-fun lt!1639245 () Unit!84144)

(assert (=> d!1349613 (= lt!1639245 e!2767569)))

(assert (=> d!1349613 (= c!756474 lt!1639241)))

(assert (=> d!1349613 (= lt!1639241 (containsKey!1270 (toList!3694 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(assert (=> d!1349613 (= (contains!12415 lt!1638743 (_1!28189 (tuple2!49791 key!3717 newValue!93))) lt!1639247)))

(declare-fun b!4444913 () Bool)

(assert (=> b!4444913 false))

(declare-fun lt!1639244 () Unit!84144)

(declare-fun lt!1639246 () Unit!84144)

(assert (=> b!4444913 (= lt!1639244 lt!1639246)))

(assert (=> b!4444913 (containsKey!1270 (toList!3694 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93)))))

(assert (=> b!4444913 (= lt!1639246 (lemmaInGetKeysListThenContainsKey!297 (toList!3694 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun Unit!84314 () Unit!84144)

(assert (=> b!4444913 (= e!2767572 Unit!84314)))

(assert (= (and d!1349613 c!756474) b!4444910))

(assert (= (and d!1349613 (not c!756474)) b!4444916))

(assert (= (and b!4444916 c!756476) b!4444913))

(assert (= (and b!4444916 (not c!756476)) b!4444918))

(assert (= (or b!4444910 b!4444916) bm!309224))

(assert (= (and bm!309224 c!756475) b!4444915))

(assert (= (and bm!309224 (not c!756475)) b!4444912))

(assert (= (and d!1349613 res!1840985) b!4444914))

(assert (= (and d!1349613 (not res!1840984)) b!4444911))

(assert (= (and b!4444911 res!1840983) b!4444917))

(declare-fun m!5135117 () Bool)

(assert (=> bm!309224 m!5135117))

(declare-fun m!5135119 () Bool)

(assert (=> b!4444917 m!5135119))

(assert (=> b!4444917 m!5135119))

(declare-fun m!5135121 () Bool)

(assert (=> b!4444917 m!5135121))

(assert (=> b!4444914 m!5135119))

(assert (=> b!4444914 m!5135119))

(assert (=> b!4444914 m!5135121))

(declare-fun m!5135123 () Bool)

(assert (=> b!4444915 m!5135123))

(declare-fun m!5135125 () Bool)

(assert (=> d!1349613 m!5135125))

(assert (=> b!4444911 m!5133711))

(assert (=> b!4444911 m!5133711))

(declare-fun m!5135127 () Bool)

(assert (=> b!4444911 m!5135127))

(assert (=> b!4444912 m!5135119))

(declare-fun m!5135129 () Bool)

(assert (=> b!4444910 m!5135129))

(assert (=> b!4444910 m!5133711))

(assert (=> b!4444910 m!5133711))

(assert (=> b!4444910 m!5135127))

(declare-fun m!5135131 () Bool)

(assert (=> b!4444910 m!5135131))

(assert (=> b!4444913 m!5135125))

(declare-fun m!5135133 () Bool)

(assert (=> b!4444913 m!5135133))

(assert (=> d!1349169 d!1349613))

(declare-fun b!4444920 () Bool)

(declare-fun e!2767575 () Option!10821)

(declare-fun e!2767576 () Option!10821)

(assert (=> b!4444920 (= e!2767575 e!2767576)))

(declare-fun c!756478 () Bool)

(assert (=> b!4444920 (= c!756478 (and ((_ is Cons!49836) lt!1638744) (not (= (_1!28189 (h!55571 lt!1638744)) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))))

(declare-fun c!756477 () Bool)

(declare-fun d!1349615 () Bool)

(assert (=> d!1349615 (= c!756477 (and ((_ is Cons!49836) lt!1638744) (= (_1!28189 (h!55571 lt!1638744)) (_1!28189 (tuple2!49791 key!3717 newValue!93)))))))

(assert (=> d!1349615 (= (getValueByKey!807 lt!1638744 (_1!28189 (tuple2!49791 key!3717 newValue!93))) e!2767575)))

(declare-fun b!4444921 () Bool)

(assert (=> b!4444921 (= e!2767576 (getValueByKey!807 (t!356902 lt!1638744) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun b!4444919 () Bool)

(assert (=> b!4444919 (= e!2767575 (Some!10820 (_2!28189 (h!55571 lt!1638744))))))

(declare-fun b!4444922 () Bool)

(assert (=> b!4444922 (= e!2767576 None!10820)))

(assert (= (and d!1349615 c!756477) b!4444919))

(assert (= (and d!1349615 (not c!756477)) b!4444920))

(assert (= (and b!4444920 c!756478) b!4444921))

(assert (= (and b!4444920 (not c!756478)) b!4444922))

(declare-fun m!5135135 () Bool)

(assert (=> b!4444921 m!5135135))

(assert (=> d!1349169 d!1349615))

(declare-fun d!1349617 () Bool)

(assert (=> d!1349617 (= (getValueByKey!807 lt!1638744 (_1!28189 (tuple2!49791 key!3717 newValue!93))) (Some!10820 (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun lt!1639250 () Unit!84144)

(declare-fun choose!28264 (List!49960 K!11205 V!11451) Unit!84144)

(assert (=> d!1349617 (= lt!1639250 (choose!28264 lt!1638744 (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun e!2767579 () Bool)

(assert (=> d!1349617 e!2767579))

(declare-fun res!1840990 () Bool)

(assert (=> d!1349617 (=> (not res!1840990) (not e!2767579))))

(assert (=> d!1349617 (= res!1840990 (invariantList!852 lt!1638744))))

(assert (=> d!1349617 (= (lemmaContainsTupThenGetReturnValue!524 lt!1638744 (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))) lt!1639250)))

(declare-fun b!4444927 () Bool)

(declare-fun res!1840991 () Bool)

(assert (=> b!4444927 (=> (not res!1840991) (not e!2767579))))

(assert (=> b!4444927 (= res!1840991 (containsKey!1270 lt!1638744 (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun b!4444928 () Bool)

(assert (=> b!4444928 (= e!2767579 (contains!12421 lt!1638744 (tuple2!49791 (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93)))))))

(assert (= (and d!1349617 res!1840990) b!4444927))

(assert (= (and b!4444927 res!1840991) b!4444928))

(assert (=> d!1349617 m!5133705))

(declare-fun m!5135137 () Bool)

(assert (=> d!1349617 m!5135137))

(declare-fun m!5135139 () Bool)

(assert (=> d!1349617 m!5135139))

(declare-fun m!5135141 () Bool)

(assert (=> b!4444927 m!5135141))

(declare-fun m!5135143 () Bool)

(assert (=> b!4444928 m!5135143))

(assert (=> d!1349169 d!1349617))

(declare-fun b!4444957 () Bool)

(declare-fun e!2767597 () Bool)

(assert (=> b!4444957 (= e!2767597 (not (containsKey!1270 (toList!3694 lt!1638452) (_1!28189 (tuple2!49791 key!3717 newValue!93)))))))

(declare-fun b!4444958 () Bool)

(declare-fun e!2767595 () List!49960)

(declare-fun lt!1639283 () List!49960)

(assert (=> b!4444958 (= e!2767595 lt!1639283)))

(declare-fun call!309239 () List!49960)

(assert (=> b!4444958 (= lt!1639283 call!309239)))

(declare-fun c!756492 () Bool)

(assert (=> b!4444958 (= c!756492 (containsKey!1270 (insertNoDuplicatedKeys!226 (t!356902 (toList!3694 lt!1638452)) (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))) (_1!28189 (h!55571 (toList!3694 lt!1638452)))))))

(declare-fun lt!1639282 () Unit!84144)

(declare-fun e!2767599 () Unit!84144)

(assert (=> b!4444958 (= lt!1639282 e!2767599)))

(declare-fun b!4444959 () Bool)

(declare-fun Unit!84315 () Unit!84144)

(assert (=> b!4444959 (= e!2767599 Unit!84315)))

(declare-fun bm!309233 () Bool)

(declare-fun call!309241 () List!49960)

(declare-fun call!309238 () List!49960)

(assert (=> bm!309233 (= call!309241 call!309238)))

(declare-fun b!4444960 () Bool)

(declare-fun res!1841001 () Bool)

(declare-fun e!2767594 () Bool)

(assert (=> b!4444960 (=> (not res!1841001) (not e!2767594))))

(declare-fun lt!1639277 () List!49960)

(assert (=> b!4444960 (= res!1841001 (contains!12421 lt!1639277 (tuple2!49791 (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93)))))))

(declare-fun b!4444961 () Bool)

(declare-fun c!756491 () Bool)

(assert (=> b!4444961 (= c!756491 ((_ is Cons!49836) (toList!3694 lt!1638452)))))

(declare-fun e!2767600 () List!49960)

(assert (=> b!4444961 (= e!2767600 e!2767595)))

(declare-fun b!4444962 () Bool)

(declare-fun e!2767596 () List!49960)

(assert (=> b!4444962 (= e!2767596 Nil!49836)))

(declare-fun b!4444963 () Bool)

(declare-fun e!2767598 () List!49960)

(assert (=> b!4444963 (= e!2767598 e!2767600)))

(declare-fun res!1841003 () Bool)

(assert (=> b!4444963 (= res!1841003 ((_ is Cons!49836) (toList!3694 lt!1638452)))))

(assert (=> b!4444963 (=> (not res!1841003) (not e!2767597))))

(declare-fun c!756490 () Bool)

(assert (=> b!4444963 (= c!756490 e!2767597)))

(declare-fun b!4444964 () Bool)

(assert (=> b!4444964 (= e!2767600 call!309241)))

(declare-fun c!756493 () Bool)

(declare-fun lt!1639281 () List!49960)

(declare-fun bm!309234 () Bool)

(declare-fun call!309240 () List!49963)

(assert (=> bm!309234 (= call!309240 (getKeysList!299 (ite c!756493 (toList!3694 lt!1638452) lt!1639281)))))

(declare-fun b!4444965 () Bool)

(assert (=> b!4444965 (= e!2767594 (= (content!8019 (getKeysList!299 lt!1639277)) ((_ map or) (content!8019 (getKeysList!299 (toList!3694 lt!1638452))) (store ((as const (Array K!11205 Bool)) false) (_1!28189 (tuple2!49791 key!3717 newValue!93)) true))))))

(declare-fun b!4444966 () Bool)

(assert (=> b!4444966 (= e!2767595 call!309239)))

(declare-fun b!4444967 () Bool)

(assert (=> b!4444967 (= e!2767596 (insertNoDuplicatedKeys!226 (t!356902 (toList!3694 lt!1638452)) (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun bm!309235 () Bool)

(declare-fun $colon$colon!820 (List!49960 tuple2!49790) List!49960)

(assert (=> bm!309235 (= call!309238 ($colon$colon!820 (ite c!756493 (t!356902 (toList!3694 lt!1638452)) (ite c!756490 (toList!3694 lt!1638452) e!2767596)) (ite (or c!756493 c!756490) (tuple2!49791 (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))) (ite c!756491 (h!55571 (toList!3694 lt!1638452)) (tuple2!49791 (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93)))))))))

(declare-fun bm!309236 () Bool)

(assert (=> bm!309236 (= call!309239 call!309241)))

(declare-fun c!756489 () Bool)

(assert (=> bm!309236 (= c!756489 c!756491)))

(declare-fun d!1349619 () Bool)

(assert (=> d!1349619 e!2767594))

(declare-fun res!1841000 () Bool)

(assert (=> d!1349619 (=> (not res!1841000) (not e!2767594))))

(assert (=> d!1349619 (= res!1841000 (invariantList!852 lt!1639277))))

(assert (=> d!1349619 (= lt!1639277 e!2767598)))

(assert (=> d!1349619 (= c!756493 (and ((_ is Cons!49836) (toList!3694 lt!1638452)) (= (_1!28189 (h!55571 (toList!3694 lt!1638452))) (_1!28189 (tuple2!49791 key!3717 newValue!93)))))))

(assert (=> d!1349619 (invariantList!852 (toList!3694 lt!1638452))))

(assert (=> d!1349619 (= (insertNoDuplicatedKeys!226 (toList!3694 lt!1638452) (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))) lt!1639277)))

(declare-fun b!4444968 () Bool)

(declare-fun res!1841002 () Bool)

(assert (=> b!4444968 (=> (not res!1841002) (not e!2767594))))

(assert (=> b!4444968 (= res!1841002 (containsKey!1270 lt!1639277 (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun b!4444969 () Bool)

(assert (=> b!4444969 (= e!2767598 call!309238)))

(declare-fun lt!1639279 () List!49963)

(assert (=> b!4444969 (= lt!1639279 call!309240)))

(declare-fun lt!1639273 () Unit!84144)

(declare-fun lemmaSubseqRefl!109 (List!49963) Unit!84144)

(assert (=> b!4444969 (= lt!1639273 (lemmaSubseqRefl!109 lt!1639279))))

(declare-fun subseq!625 (List!49963 List!49963) Bool)

(assert (=> b!4444969 (subseq!625 lt!1639279 lt!1639279)))

(declare-fun lt!1639276 () Unit!84144)

(assert (=> b!4444969 (= lt!1639276 lt!1639273)))

(declare-fun b!4444970 () Bool)

(assert (=> b!4444970 false))

(declare-fun lt!1639274 () Unit!84144)

(declare-fun lt!1639278 () Unit!84144)

(assert (=> b!4444970 (= lt!1639274 lt!1639278)))

(assert (=> b!4444970 (containsKey!1270 (t!356902 (toList!3694 lt!1638452)) (_1!28189 (h!55571 (toList!3694 lt!1638452))))))

(assert (=> b!4444970 (= lt!1639278 (lemmaInGetKeysListThenContainsKey!297 (t!356902 (toList!3694 lt!1638452)) (_1!28189 (h!55571 (toList!3694 lt!1638452)))))))

(declare-fun lt!1639275 () Unit!84144)

(declare-fun lt!1639280 () Unit!84144)

(assert (=> b!4444970 (= lt!1639275 lt!1639280)))

(assert (=> b!4444970 (contains!12419 call!309240 (_1!28189 (h!55571 (toList!3694 lt!1638452))))))

(assert (=> b!4444970 (= lt!1639280 (lemmaInListThenGetKeysListContains!296 lt!1639281 (_1!28189 (h!55571 (toList!3694 lt!1638452)))))))

(assert (=> b!4444970 (= lt!1639281 (insertNoDuplicatedKeys!226 (t!356902 (toList!3694 lt!1638452)) (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun Unit!84316 () Unit!84144)

(assert (=> b!4444970 (= e!2767599 Unit!84316)))

(assert (= (and d!1349619 c!756493) b!4444969))

(assert (= (and d!1349619 (not c!756493)) b!4444963))

(assert (= (and b!4444963 res!1841003) b!4444957))

(assert (= (and b!4444963 c!756490) b!4444964))

(assert (= (and b!4444963 (not c!756490)) b!4444961))

(assert (= (and b!4444961 c!756491) b!4444958))

(assert (= (and b!4444961 (not c!756491)) b!4444966))

(assert (= (and b!4444958 c!756492) b!4444970))

(assert (= (and b!4444958 (not c!756492)) b!4444959))

(assert (= (or b!4444958 b!4444966) bm!309236))

(assert (= (and bm!309236 c!756489) b!4444967))

(assert (= (and bm!309236 (not c!756489)) b!4444962))

(assert (= (or b!4444964 bm!309236) bm!309233))

(assert (= (or b!4444969 b!4444970) bm!309234))

(assert (= (or b!4444969 bm!309233) bm!309235))

(assert (= (and d!1349619 res!1841000) b!4444968))

(assert (= (and b!4444968 res!1841002) b!4444960))

(assert (= (and b!4444960 res!1841001) b!4444965))

(declare-fun m!5135145 () Bool)

(assert (=> d!1349619 m!5135145))

(declare-fun m!5135147 () Bool)

(assert (=> d!1349619 m!5135147))

(declare-fun m!5135149 () Bool)

(assert (=> b!4444970 m!5135149))

(declare-fun m!5135151 () Bool)

(assert (=> b!4444970 m!5135151))

(declare-fun m!5135153 () Bool)

(assert (=> b!4444970 m!5135153))

(declare-fun m!5135155 () Bool)

(assert (=> b!4444970 m!5135155))

(declare-fun m!5135157 () Bool)

(assert (=> b!4444970 m!5135157))

(assert (=> b!4444967 m!5135151))

(declare-fun m!5135159 () Bool)

(assert (=> b!4444965 m!5135159))

(declare-fun m!5135161 () Bool)

(assert (=> b!4444965 m!5135161))

(declare-fun m!5135163 () Bool)

(assert (=> b!4444965 m!5135163))

(declare-fun m!5135165 () Bool)

(assert (=> b!4444965 m!5135165))

(declare-fun m!5135167 () Bool)

(assert (=> b!4444965 m!5135167))

(assert (=> b!4444965 m!5135165))

(assert (=> b!4444965 m!5135161))

(declare-fun m!5135169 () Bool)

(assert (=> b!4444957 m!5135169))

(declare-fun m!5135171 () Bool)

(assert (=> bm!309234 m!5135171))

(declare-fun m!5135173 () Bool)

(assert (=> b!4444968 m!5135173))

(declare-fun m!5135175 () Bool)

(assert (=> b!4444969 m!5135175))

(declare-fun m!5135177 () Bool)

(assert (=> b!4444969 m!5135177))

(declare-fun m!5135179 () Bool)

(assert (=> bm!309235 m!5135179))

(assert (=> b!4444958 m!5135151))

(assert (=> b!4444958 m!5135151))

(declare-fun m!5135181 () Bool)

(assert (=> b!4444958 m!5135181))

(declare-fun m!5135183 () Bool)

(assert (=> b!4444960 m!5135183))

(assert (=> d!1349169 d!1349619))

(declare-fun d!1349621 () Bool)

(declare-fun res!1841004 () Bool)

(declare-fun e!2767601 () Bool)

(assert (=> d!1349621 (=> res!1841004 e!2767601)))

(assert (=> d!1349621 (= res!1841004 (not ((_ is Cons!49836) (t!356902 newBucket!194))))))

(assert (=> d!1349621 (= (noDuplicateKeys!853 (t!356902 newBucket!194)) e!2767601)))

(declare-fun b!4444971 () Bool)

(declare-fun e!2767602 () Bool)

(assert (=> b!4444971 (= e!2767601 e!2767602)))

(declare-fun res!1841005 () Bool)

(assert (=> b!4444971 (=> (not res!1841005) (not e!2767602))))

(assert (=> b!4444971 (= res!1841005 (not (containsKey!1272 (t!356902 (t!356902 newBucket!194)) (_1!28189 (h!55571 (t!356902 newBucket!194))))))))

(declare-fun b!4444972 () Bool)

(assert (=> b!4444972 (= e!2767602 (noDuplicateKeys!853 (t!356902 (t!356902 newBucket!194))))))

(assert (= (and d!1349621 (not res!1841004)) b!4444971))

(assert (= (and b!4444971 res!1841005) b!4444972))

(declare-fun m!5135185 () Bool)

(assert (=> b!4444971 m!5135185))

(declare-fun m!5135187 () Bool)

(assert (=> b!4444972 m!5135187))

(assert (=> b!4444130 d!1349621))

(declare-fun d!1349623 () Bool)

(declare-fun res!1841006 () Bool)

(declare-fun e!2767603 () Bool)

(assert (=> d!1349623 (=> res!1841006 e!2767603)))

(assert (=> d!1349623 (= res!1841006 (not ((_ is Cons!49836) (_2!28190 (h!55572 (toList!3693 lt!1638445))))))))

(assert (=> d!1349623 (= (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lt!1638445)))) e!2767603)))

(declare-fun b!4444973 () Bool)

(declare-fun e!2767604 () Bool)

(assert (=> b!4444973 (= e!2767603 e!2767604)))

(declare-fun res!1841007 () Bool)

(assert (=> b!4444973 (=> (not res!1841007) (not e!2767604))))

(assert (=> b!4444973 (= res!1841007 (not (containsKey!1272 (t!356902 (_2!28190 (h!55572 (toList!3693 lt!1638445)))) (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lt!1638445))))))))))

(declare-fun b!4444974 () Bool)

(assert (=> b!4444974 (= e!2767604 (noDuplicateKeys!853 (t!356902 (_2!28190 (h!55572 (toList!3693 lt!1638445))))))))

(assert (= (and d!1349623 (not res!1841006)) b!4444973))

(assert (= (and b!4444973 res!1841007) b!4444974))

(declare-fun m!5135189 () Bool)

(assert (=> b!4444973 m!5135189))

(declare-fun m!5135191 () Bool)

(assert (=> b!4444974 m!5135191))

(assert (=> bs!765040 d!1349623))

(declare-fun d!1349625 () Bool)

(assert (=> d!1349625 (= (eq!453 (extractMap!914 (toList!3693 (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194)))) (+!1244 (extractMap!914 (toList!3693 lt!1638453)) (tuple2!49791 key!3717 newValue!93))) (= (content!8017 (toList!3694 (extractMap!914 (toList!3693 (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194)))))) (content!8017 (toList!3694 (+!1244 (extractMap!914 (toList!3693 lt!1638453)) (tuple2!49791 key!3717 newValue!93))))))))

(declare-fun bs!765573 () Bool)

(assert (= bs!765573 d!1349625))

(declare-fun m!5135193 () Bool)

(assert (=> bs!765573 m!5135193))

(declare-fun m!5135195 () Bool)

(assert (=> bs!765573 m!5135195))

(assert (=> d!1349171 d!1349625))

(declare-fun d!1349627 () Bool)

(declare-fun res!1841008 () Bool)

(declare-fun e!2767605 () Bool)

(assert (=> d!1349627 (=> res!1841008 e!2767605)))

(assert (=> d!1349627 (= res!1841008 ((_ is Nil!49837) (toList!3693 lt!1638453)))))

(assert (=> d!1349627 (= (forall!9732 (toList!3693 lt!1638453) lambda!157941) e!2767605)))

(declare-fun b!4444975 () Bool)

(declare-fun e!2767606 () Bool)

(assert (=> b!4444975 (= e!2767605 e!2767606)))

(declare-fun res!1841009 () Bool)

(assert (=> b!4444975 (=> (not res!1841009) (not e!2767606))))

(assert (=> b!4444975 (= res!1841009 (dynLambda!20922 lambda!157941 (h!55572 (toList!3693 lt!1638453))))))

(declare-fun b!4444976 () Bool)

(assert (=> b!4444976 (= e!2767606 (forall!9732 (t!356903 (toList!3693 lt!1638453)) lambda!157941))))

(assert (= (and d!1349627 (not res!1841008)) b!4444975))

(assert (= (and b!4444975 res!1841009) b!4444976))

(declare-fun b_lambda!145455 () Bool)

(assert (=> (not b_lambda!145455) (not b!4444975)))

(declare-fun m!5135197 () Bool)

(assert (=> b!4444975 m!5135197))

(declare-fun m!5135199 () Bool)

(assert (=> b!4444976 m!5135199))

(assert (=> d!1349171 d!1349627))

(declare-fun d!1349629 () Bool)

(declare-fun e!2767607 () Bool)

(assert (=> d!1349629 e!2767607))

(declare-fun res!1841011 () Bool)

(assert (=> d!1349629 (=> (not res!1841011) (not e!2767607))))

(declare-fun lt!1639285 () ListMap!2937)

(assert (=> d!1349629 (= res!1841011 (contains!12415 lt!1639285 (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun lt!1639286 () List!49960)

(assert (=> d!1349629 (= lt!1639285 (ListMap!2938 lt!1639286))))

(declare-fun lt!1639284 () Unit!84144)

(declare-fun lt!1639287 () Unit!84144)

(assert (=> d!1349629 (= lt!1639284 lt!1639287)))

(assert (=> d!1349629 (= (getValueByKey!807 lt!1639286 (_1!28189 (tuple2!49791 key!3717 newValue!93))) (Some!10820 (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(assert (=> d!1349629 (= lt!1639287 (lemmaContainsTupThenGetReturnValue!524 lt!1639286 (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(assert (=> d!1349629 (= lt!1639286 (insertNoDuplicatedKeys!226 (toList!3694 (extractMap!914 (toList!3693 lt!1638453))) (_1!28189 (tuple2!49791 key!3717 newValue!93)) (_2!28189 (tuple2!49791 key!3717 newValue!93))))))

(assert (=> d!1349629 (= (+!1244 (extractMap!914 (toList!3693 lt!1638453)) (tuple2!49791 key!3717 newValue!93)) lt!1639285)))

(declare-fun b!4444977 () Bool)

(declare-fun res!1841010 () Bool)

(assert (=> b!4444977 (=> (not res!1841010) (not e!2767607))))

(assert (=> b!4444977 (= res!1841010 (= (getValueByKey!807 (toList!3694 lt!1639285) (_1!28189 (tuple2!49791 key!3717 newValue!93))) (Some!10820 (_2!28189 (tuple2!49791 key!3717 newValue!93)))))))

(declare-fun b!4444978 () Bool)

(assert (=> b!4444978 (= e!2767607 (contains!12421 (toList!3694 lt!1639285) (tuple2!49791 key!3717 newValue!93)))))

(assert (= (and d!1349629 res!1841011) b!4444977))

(assert (= (and b!4444977 res!1841010) b!4444978))

(declare-fun m!5135201 () Bool)

(assert (=> d!1349629 m!5135201))

(declare-fun m!5135203 () Bool)

(assert (=> d!1349629 m!5135203))

(declare-fun m!5135205 () Bool)

(assert (=> d!1349629 m!5135205))

(declare-fun m!5135207 () Bool)

(assert (=> d!1349629 m!5135207))

(declare-fun m!5135209 () Bool)

(assert (=> b!4444977 m!5135209))

(declare-fun m!5135211 () Bool)

(assert (=> b!4444978 m!5135211))

(assert (=> d!1349171 d!1349629))

(declare-fun bs!765574 () Bool)

(declare-fun d!1349631 () Bool)

(assert (= bs!765574 (and d!1349631 d!1349081)))

(declare-fun lambda!158049 () Int)

(assert (=> bs!765574 (= lambda!158049 lambda!157872)))

(declare-fun bs!765575 () Bool)

(assert (= bs!765575 (and d!1349631 d!1349177)))

(assert (=> bs!765575 (= lambda!158049 lambda!157942)))

(declare-fun bs!765576 () Bool)

(assert (= bs!765576 (and d!1349631 d!1349479)))

(assert (=> bs!765576 (= lambda!158049 lambda!158022)))

(declare-fun bs!765577 () Bool)

(assert (= bs!765577 (and d!1349631 d!1349089)))

(assert (=> bs!765577 (= lambda!158049 lambda!157888)))

(declare-fun bs!765578 () Bool)

(assert (= bs!765578 (and d!1349631 d!1349421)))

(assert (=> bs!765578 (= lambda!158049 lambda!157997)))

(declare-fun bs!765579 () Bool)

(assert (= bs!765579 (and d!1349631 d!1349181)))

(assert (=> bs!765579 (= lambda!158049 lambda!157943)))

(declare-fun bs!765580 () Bool)

(assert (= bs!765580 (and d!1349631 d!1349431)))

(assert (=> bs!765580 (= lambda!158049 lambda!158002)))

(declare-fun bs!765581 () Bool)

(assert (= bs!765581 (and d!1349631 d!1349171)))

(assert (=> bs!765581 (= lambda!158049 lambda!157941)))

(declare-fun bs!765582 () Bool)

(assert (= bs!765582 (and d!1349631 start!435012)))

(assert (=> bs!765582 (= lambda!158049 lambda!157844)))

(declare-fun bs!765583 () Bool)

(assert (= bs!765583 (and d!1349631 d!1349189)))

(assert (=> bs!765583 (= lambda!158049 lambda!157944)))

(declare-fun bs!765584 () Bool)

(assert (= bs!765584 (and d!1349631 d!1349149)))

(assert (=> bs!765584 (not (= lambda!158049 lambda!157935))))

(declare-fun lt!1639288 () ListMap!2937)

(assert (=> d!1349631 (invariantList!852 (toList!3694 lt!1639288))))

(declare-fun e!2767608 () ListMap!2937)

(assert (=> d!1349631 (= lt!1639288 e!2767608)))

(declare-fun c!756494 () Bool)

(assert (=> d!1349631 (= c!756494 ((_ is Cons!49837) (toList!3693 (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194)))))))

(assert (=> d!1349631 (forall!9732 (toList!3693 (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194))) lambda!158049)))

(assert (=> d!1349631 (= (extractMap!914 (toList!3693 (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194)))) lt!1639288)))

(declare-fun b!4444979 () Bool)

(assert (=> b!4444979 (= e!2767608 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194))))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194)))))))))

(declare-fun b!4444980 () Bool)

(assert (=> b!4444980 (= e!2767608 (ListMap!2938 Nil!49836))))

(assert (= (and d!1349631 c!756494) b!4444979))

(assert (= (and d!1349631 (not c!756494)) b!4444980))

(declare-fun m!5135213 () Bool)

(assert (=> d!1349631 m!5135213))

(declare-fun m!5135215 () Bool)

(assert (=> d!1349631 m!5135215))

(declare-fun m!5135217 () Bool)

(assert (=> b!4444979 m!5135217))

(assert (=> b!4444979 m!5135217))

(declare-fun m!5135219 () Bool)

(assert (=> b!4444979 m!5135219))

(assert (=> d!1349171 d!1349631))

(assert (=> d!1349171 d!1349177))

(declare-fun d!1349633 () Bool)

(assert (=> d!1349633 (eq!453 (extractMap!914 (toList!3693 (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194)))) (+!1244 (extractMap!914 (toList!3693 lt!1638453)) (tuple2!49791 key!3717 newValue!93)))))

(assert (=> d!1349633 true))

(declare-fun _$9!236 () Unit!84144)

(assert (=> d!1349633 (= (choose!28244 lt!1638453 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) _$9!236)))

(declare-fun bs!765585 () Bool)

(assert (= bs!765585 d!1349633))

(assert (=> bs!765585 m!5133715))

(assert (=> bs!765585 m!5133717))

(assert (=> bs!765585 m!5133719))

(assert (=> bs!765585 m!5133725))

(assert (=> bs!765585 m!5133715))

(assert (=> bs!765585 m!5133343))

(assert (=> bs!765585 m!5133343))

(assert (=> bs!765585 m!5133717))

(assert (=> d!1349171 d!1349633))

(declare-fun d!1349635 () Bool)

(declare-fun e!2767609 () Bool)

(assert (=> d!1349635 e!2767609))

(declare-fun res!1841013 () Bool)

(assert (=> d!1349635 (=> (not res!1841013) (not e!2767609))))

(declare-fun lt!1639291 () ListLongMap!2343)

(assert (=> d!1349635 (= res!1841013 (contains!12414 lt!1639291 (_1!28190 (tuple2!49793 hash!366 newBucket!194))))))

(declare-fun lt!1639289 () List!49961)

(assert (=> d!1349635 (= lt!1639291 (ListLongMap!2344 lt!1639289))))

(declare-fun lt!1639290 () Unit!84144)

(declare-fun lt!1639292 () Unit!84144)

(assert (=> d!1349635 (= lt!1639290 lt!1639292)))

(assert (=> d!1349635 (= (getValueByKey!808 lt!1639289 (_1!28190 (tuple2!49793 hash!366 newBucket!194))) (Some!10821 (_2!28190 (tuple2!49793 hash!366 newBucket!194))))))

(assert (=> d!1349635 (= lt!1639292 (lemmaContainsTupThenGetReturnValue!523 lt!1639289 (_1!28190 (tuple2!49793 hash!366 newBucket!194)) (_2!28190 (tuple2!49793 hash!366 newBucket!194))))))

(assert (=> d!1349635 (= lt!1639289 (insertStrictlySorted!306 (toList!3693 lt!1638453) (_1!28190 (tuple2!49793 hash!366 newBucket!194)) (_2!28190 (tuple2!49793 hash!366 newBucket!194))))))

(assert (=> d!1349635 (= (+!1243 lt!1638453 (tuple2!49793 hash!366 newBucket!194)) lt!1639291)))

(declare-fun b!4444981 () Bool)

(declare-fun res!1841012 () Bool)

(assert (=> b!4444981 (=> (not res!1841012) (not e!2767609))))

(assert (=> b!4444981 (= res!1841012 (= (getValueByKey!808 (toList!3693 lt!1639291) (_1!28190 (tuple2!49793 hash!366 newBucket!194))) (Some!10821 (_2!28190 (tuple2!49793 hash!366 newBucket!194)))))))

(declare-fun b!4444982 () Bool)

(assert (=> b!4444982 (= e!2767609 (contains!12420 (toList!3693 lt!1639291) (tuple2!49793 hash!366 newBucket!194)))))

(assert (= (and d!1349635 res!1841013) b!4444981))

(assert (= (and b!4444981 res!1841012) b!4444982))

(declare-fun m!5135221 () Bool)

(assert (=> d!1349635 m!5135221))

(declare-fun m!5135223 () Bool)

(assert (=> d!1349635 m!5135223))

(declare-fun m!5135225 () Bool)

(assert (=> d!1349635 m!5135225))

(declare-fun m!5135227 () Bool)

(assert (=> d!1349635 m!5135227))

(declare-fun m!5135229 () Bool)

(assert (=> b!4444981 m!5135229))

(declare-fun m!5135231 () Bool)

(assert (=> b!4444982 m!5135231))

(assert (=> d!1349171 d!1349635))

(declare-fun d!1349637 () Bool)

(declare-fun res!1841014 () Bool)

(declare-fun e!2767610 () Bool)

(assert (=> d!1349637 (=> res!1841014 e!2767610)))

(assert (=> d!1349637 (= res!1841014 ((_ is Nil!49836) (toList!3694 lt!1638452)))))

(assert (=> d!1349637 (= (forall!9734 (toList!3694 lt!1638452) lambda!157932) e!2767610)))

(declare-fun b!4444983 () Bool)

(declare-fun e!2767611 () Bool)

(assert (=> b!4444983 (= e!2767610 e!2767611)))

(declare-fun res!1841015 () Bool)

(assert (=> b!4444983 (=> (not res!1841015) (not e!2767611))))

(assert (=> b!4444983 (= res!1841015 (dynLambda!20924 lambda!157932 (h!55571 (toList!3694 lt!1638452))))))

(declare-fun b!4444984 () Bool)

(assert (=> b!4444984 (= e!2767611 (forall!9734 (t!356902 (toList!3694 lt!1638452)) lambda!157932))))

(assert (= (and d!1349637 (not res!1841014)) b!4444983))

(assert (= (and b!4444983 res!1841015) b!4444984))

(declare-fun b_lambda!145457 () Bool)

(assert (=> (not b_lambda!145457) (not b!4444983)))

(declare-fun m!5135233 () Bool)

(assert (=> b!4444983 m!5135233))

(declare-fun m!5135235 () Bool)

(assert (=> b!4444984 m!5135235))

(assert (=> b!4444110 d!1349637))

(declare-fun bs!765586 () Bool)

(declare-fun b!4444992 () Bool)

(assert (= bs!765586 (and b!4444992 b!4444883)))

(declare-fun lambda!158050 () Int)

(assert (=> bs!765586 (= (= (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (t!356902 (toList!3694 lt!1638451))) (= lambda!158050 lambda!158045))))

(declare-fun bs!765587 () Bool)

(assert (= bs!765587 (and b!4444992 b!4444728)))

(assert (=> bs!765587 (= (= (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158050 lambda!158007))))

(declare-fun bs!765588 () Bool)

(assert (= bs!765588 (and b!4444992 b!4444797)))

(assert (=> bs!765588 (= (= (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (toList!3694 lt!1638451)) (= lambda!158050 lambda!158026))))

(declare-fun bs!765589 () Bool)

(assert (= bs!765589 (and b!4444992 b!4444882)))

(assert (=> bs!765589 (= (= (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (toList!3694 lt!1638451)) (= lambda!158050 lambda!158047))))

(declare-fun bs!765590 () Bool)

(assert (= bs!765590 (and b!4444992 b!4444878)))

(assert (=> bs!765590 (= (= (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (Cons!49836 (h!55571 (toList!3694 lt!1638451)) (t!356902 (toList!3694 lt!1638451)))) (= lambda!158050 lambda!158046))))

(assert (=> b!4444992 true))

(declare-fun bs!765591 () Bool)

(declare-fun b!4444987 () Bool)

(assert (= bs!765591 (and b!4444987 b!4444883)))

(declare-fun lambda!158051 () Int)

(assert (=> bs!765591 (= (= (Cons!49836 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (t!356902 (toList!3694 lt!1638451))) (= lambda!158051 lambda!158045))))

(declare-fun bs!765592 () Bool)

(assert (= bs!765592 (and b!4444987 b!4444728)))

(assert (=> bs!765592 (= (= (Cons!49836 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158051 lambda!158007))))

(declare-fun bs!765593 () Bool)

(assert (= bs!765593 (and b!4444987 b!4444992)))

(assert (=> bs!765593 (= (= (Cons!49836 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (= lambda!158051 lambda!158050))))

(declare-fun bs!765594 () Bool)

(assert (= bs!765594 (and b!4444987 b!4444797)))

(assert (=> bs!765594 (= (= (Cons!49836 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (toList!3694 lt!1638451)) (= lambda!158051 lambda!158026))))

(declare-fun bs!765595 () Bool)

(assert (= bs!765595 (and b!4444987 b!4444882)))

(assert (=> bs!765595 (= (= (Cons!49836 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (toList!3694 lt!1638451)) (= lambda!158051 lambda!158047))))

(declare-fun bs!765596 () Bool)

(assert (= bs!765596 (and b!4444987 b!4444878)))

(assert (=> bs!765596 (= (= (Cons!49836 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (Cons!49836 (h!55571 (toList!3694 lt!1638451)) (t!356902 (toList!3694 lt!1638451)))) (= lambda!158051 lambda!158046))))

(assert (=> b!4444987 true))

(declare-fun bs!765597 () Bool)

(declare-fun b!4444991 () Bool)

(assert (= bs!765597 (and b!4444991 b!4444883)))

(declare-fun lambda!158052 () Int)

(assert (=> bs!765597 (= (= (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) (t!356902 (toList!3694 lt!1638451))) (= lambda!158052 lambda!158045))))

(declare-fun bs!765598 () Bool)

(assert (= bs!765598 (and b!4444991 b!4444987)))

(assert (=> bs!765598 (= (= (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) (Cons!49836 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))) (= lambda!158052 lambda!158051))))

(declare-fun bs!765599 () Bool)

(assert (= bs!765599 (and b!4444991 b!4444728)))

(assert (=> bs!765599 (= lambda!158052 lambda!158007)))

(declare-fun bs!765600 () Bool)

(assert (= bs!765600 (and b!4444991 b!4444992)))

(assert (=> bs!765600 (= (= (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (= lambda!158052 lambda!158050))))

(declare-fun bs!765601 () Bool)

(assert (= bs!765601 (and b!4444991 b!4444797)))

(assert (=> bs!765601 (= (= (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) (toList!3694 lt!1638451)) (= lambda!158052 lambda!158026))))

(declare-fun bs!765602 () Bool)

(assert (= bs!765602 (and b!4444991 b!4444882)))

(assert (=> bs!765602 (= (= (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) (toList!3694 lt!1638451)) (= lambda!158052 lambda!158047))))

(declare-fun bs!765603 () Bool)

(assert (= bs!765603 (and b!4444991 b!4444878)))

(assert (=> bs!765603 (= (= (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) (Cons!49836 (h!55571 (toList!3694 lt!1638451)) (t!356902 (toList!3694 lt!1638451)))) (= lambda!158052 lambda!158046))))

(assert (=> b!4444991 true))

(declare-fun bs!765604 () Bool)

(declare-fun b!4444993 () Bool)

(assert (= bs!765604 (and b!4444993 b!4444729)))

(declare-fun lambda!158053 () Int)

(assert (=> bs!765604 (= lambda!158053 lambda!158008)))

(declare-fun bs!765605 () Bool)

(assert (= bs!765605 (and b!4444993 b!4444798)))

(assert (=> bs!765605 (= lambda!158053 lambda!158027)))

(declare-fun bs!765606 () Bool)

(assert (= bs!765606 (and b!4444993 b!4444884)))

(assert (=> bs!765606 (= lambda!158053 lambda!158048)))

(declare-fun b!4444985 () Bool)

(declare-fun res!1841016 () Bool)

(declare-fun e!2767615 () Bool)

(assert (=> b!4444985 (=> (not res!1841016) (not e!2767615))))

(declare-fun lt!1639294 () List!49963)

(assert (=> b!4444985 (= res!1841016 (= (length!216 lt!1639294) (length!217 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))))))

(declare-fun b!4444986 () Bool)

(assert (=> b!4444986 false))

(declare-fun e!2767613 () Unit!84144)

(declare-fun Unit!84317 () Unit!84144)

(assert (=> b!4444986 (= e!2767613 Unit!84317)))

(declare-fun e!2767612 () List!49963)

(assert (=> b!4444987 (= e!2767612 (Cons!49839 (_1!28189 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (getKeysList!299 (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))))

(declare-fun c!756496 () Bool)

(assert (=> b!4444987 (= c!756496 (containsKey!1270 (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) (_1!28189 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))))

(declare-fun lt!1639295 () Unit!84144)

(assert (=> b!4444987 (= lt!1639295 e!2767613)))

(declare-fun c!756495 () Bool)

(assert (=> b!4444987 (= c!756495 (contains!12419 (getKeysList!299 (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) (_1!28189 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))))

(declare-fun lt!1639298 () Unit!84144)

(declare-fun e!2767614 () Unit!84144)

(assert (=> b!4444987 (= lt!1639298 e!2767614)))

(declare-fun lt!1639299 () List!49963)

(assert (=> b!4444987 (= lt!1639299 (getKeysList!299 (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))))))

(declare-fun lt!1639293 () Unit!84144)

(assert (=> b!4444987 (= lt!1639293 (lemmaForallContainsAddHeadPreserves!102 (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) lt!1639299 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))))))

(assert (=> b!4444987 (forall!9736 lt!1639299 lambda!158051)))

(declare-fun lt!1639296 () Unit!84144)

(assert (=> b!4444987 (= lt!1639296 lt!1639293)))

(declare-fun b!4444988 () Bool)

(declare-fun Unit!84318 () Unit!84144)

(assert (=> b!4444988 (= e!2767613 Unit!84318)))

(declare-fun b!4444990 () Bool)

(declare-fun Unit!84319 () Unit!84144)

(assert (=> b!4444990 (= e!2767614 Unit!84319)))

(declare-fun res!1841017 () Bool)

(assert (=> b!4444991 (=> (not res!1841017) (not e!2767615))))

(assert (=> b!4444991 (= res!1841017 (forall!9736 lt!1639294 lambda!158052))))

(assert (=> b!4444992 false))

(declare-fun lt!1639297 () Unit!84144)

(assert (=> b!4444992 (= lt!1639297 (forallContained!2151 (getKeysList!299 (t!356902 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))) lambda!158050 (_1!28189 (h!55571 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))))

(declare-fun Unit!84320 () Unit!84144)

(assert (=> b!4444992 (= e!2767614 Unit!84320)))

(assert (=> b!4444993 (= e!2767615 (= (content!8019 lt!1639294) (content!8019 (map!10904 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))) lambda!158053))))))

(declare-fun d!1349639 () Bool)

(assert (=> d!1349639 e!2767615))

(declare-fun res!1841018 () Bool)

(assert (=> d!1349639 (=> (not res!1841018) (not e!2767615))))

(assert (=> d!1349639 (= res!1841018 (noDuplicate!680 lt!1639294))))

(assert (=> d!1349639 (= lt!1639294 e!2767612)))

(declare-fun c!756497 () Bool)

(assert (=> d!1349639 (= c!756497 ((_ is Cons!49836) (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))))))

(assert (=> d!1349639 (invariantList!852 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616)))))))

(assert (=> d!1349639 (= (getKeysList!299 (toList!3694 (extractMap!914 (tail!7407 (toList!3693 lm!1616))))) lt!1639294)))

(declare-fun b!4444989 () Bool)

(assert (=> b!4444989 (= e!2767612 Nil!49839)))

(assert (= (and d!1349639 c!756497) b!4444987))

(assert (= (and d!1349639 (not c!756497)) b!4444989))

(assert (= (and b!4444987 c!756496) b!4444986))

(assert (= (and b!4444987 (not c!756496)) b!4444988))

(assert (= (and b!4444987 c!756495) b!4444992))

(assert (= (and b!4444987 (not c!756495)) b!4444990))

(assert (= (and d!1349639 res!1841018) b!4444985))

(assert (= (and b!4444985 res!1841016) b!4444991))

(assert (= (and b!4444991 res!1841017) b!4444993))

(declare-fun m!5135237 () Bool)

(assert (=> b!4444985 m!5135237))

(assert (=> b!4444985 m!5134677))

(declare-fun m!5135239 () Bool)

(assert (=> b!4444993 m!5135239))

(declare-fun m!5135241 () Bool)

(assert (=> b!4444993 m!5135241))

(assert (=> b!4444993 m!5135241))

(declare-fun m!5135243 () Bool)

(assert (=> b!4444993 m!5135243))

(declare-fun m!5135245 () Bool)

(assert (=> d!1349639 m!5135245))

(assert (=> d!1349639 m!5135091))

(declare-fun m!5135247 () Bool)

(assert (=> b!4444987 m!5135247))

(declare-fun m!5135249 () Bool)

(assert (=> b!4444987 m!5135249))

(assert (=> b!4444987 m!5135249))

(declare-fun m!5135251 () Bool)

(assert (=> b!4444987 m!5135251))

(declare-fun m!5135253 () Bool)

(assert (=> b!4444987 m!5135253))

(declare-fun m!5135255 () Bool)

(assert (=> b!4444987 m!5135255))

(assert (=> b!4444992 m!5135249))

(assert (=> b!4444992 m!5135249))

(declare-fun m!5135257 () Bool)

(assert (=> b!4444992 m!5135257))

(declare-fun m!5135259 () Bool)

(assert (=> b!4444991 m!5135259))

(assert (=> b!4444166 d!1349639))

(declare-fun d!1349641 () Bool)

(declare-fun res!1841019 () Bool)

(declare-fun e!2767616 () Bool)

(assert (=> d!1349641 (=> res!1841019 e!2767616)))

(assert (=> d!1349641 (= res!1841019 ((_ is Nil!49836) (ite c!756292 (toList!3694 lt!1638452) (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> d!1349641 (= (forall!9734 (ite c!756292 (toList!3694 lt!1638452) (_2!28190 (h!55572 (toList!3693 lm!1616)))) (ite c!756292 lambda!157929 lambda!157931)) e!2767616)))

(declare-fun b!4444994 () Bool)

(declare-fun e!2767617 () Bool)

(assert (=> b!4444994 (= e!2767616 e!2767617)))

(declare-fun res!1841020 () Bool)

(assert (=> b!4444994 (=> (not res!1841020) (not e!2767617))))

(assert (=> b!4444994 (= res!1841020 (dynLambda!20924 (ite c!756292 lambda!157929 lambda!157931) (h!55571 (ite c!756292 (toList!3694 lt!1638452) (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun b!4444995 () Bool)

(assert (=> b!4444995 (= e!2767617 (forall!9734 (t!356902 (ite c!756292 (toList!3694 lt!1638452) (_2!28190 (h!55572 (toList!3693 lm!1616))))) (ite c!756292 lambda!157929 lambda!157931)))))

(assert (= (and d!1349641 (not res!1841019)) b!4444994))

(assert (= (and b!4444994 res!1841020) b!4444995))

(declare-fun b_lambda!145459 () Bool)

(assert (=> (not b_lambda!145459) (not b!4444994)))

(declare-fun m!5135261 () Bool)

(assert (=> b!4444994 m!5135261))

(declare-fun m!5135263 () Bool)

(assert (=> b!4444995 m!5135263))

(assert (=> bm!309151 d!1349641))

(assert (=> b!4444168 d!1349463))

(assert (=> b!4444168 d!1349457))

(assert (=> d!1349179 d!1349183))

(declare-fun d!1349643 () Bool)

(assert (=> d!1349643 (= (invariantList!852 (toList!3694 lt!1638753)) (noDuplicatedKeys!195 (toList!3694 lt!1638753)))))

(declare-fun bs!765607 () Bool)

(assert (= bs!765607 d!1349643))

(declare-fun m!5135265 () Bool)

(assert (=> bs!765607 m!5135265))

(assert (=> d!1349177 d!1349643))

(declare-fun d!1349645 () Bool)

(declare-fun res!1841021 () Bool)

(declare-fun e!2767618 () Bool)

(assert (=> d!1349645 (=> res!1841021 e!2767618)))

(assert (=> d!1349645 (= res!1841021 ((_ is Nil!49837) (toList!3693 lt!1638453)))))

(assert (=> d!1349645 (= (forall!9732 (toList!3693 lt!1638453) lambda!157942) e!2767618)))

(declare-fun b!4444996 () Bool)

(declare-fun e!2767619 () Bool)

(assert (=> b!4444996 (= e!2767618 e!2767619)))

(declare-fun res!1841022 () Bool)

(assert (=> b!4444996 (=> (not res!1841022) (not e!2767619))))

(assert (=> b!4444996 (= res!1841022 (dynLambda!20922 lambda!157942 (h!55572 (toList!3693 lt!1638453))))))

(declare-fun b!4444997 () Bool)

(assert (=> b!4444997 (= e!2767619 (forall!9732 (t!356903 (toList!3693 lt!1638453)) lambda!157942))))

(assert (= (and d!1349645 (not res!1841021)) b!4444996))

(assert (= (and b!4444996 res!1841022) b!4444997))

(declare-fun b_lambda!145461 () Bool)

(assert (=> (not b_lambda!145461) (not b!4444996)))

(declare-fun m!5135267 () Bool)

(assert (=> b!4444996 m!5135267))

(declare-fun m!5135269 () Bool)

(assert (=> b!4444997 m!5135269))

(assert (=> d!1349177 d!1349645))

(declare-fun d!1349647 () Bool)

(declare-fun res!1841023 () Bool)

(declare-fun e!2767620 () Bool)

(assert (=> d!1349647 (=> res!1841023 e!2767620)))

(assert (=> d!1349647 (= res!1841023 (and ((_ is Cons!49837) (toList!3693 lm!1616)) (= (_1!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 (h!55572 (toList!3693 lm!1616))))))))

(assert (=> d!1349647 (= (containsKey!1271 (toList!3693 lm!1616) (_1!28190 (h!55572 (toList!3693 lm!1616)))) e!2767620)))

(declare-fun b!4444998 () Bool)

(declare-fun e!2767621 () Bool)

(assert (=> b!4444998 (= e!2767620 e!2767621)))

(declare-fun res!1841024 () Bool)

(assert (=> b!4444998 (=> (not res!1841024) (not e!2767621))))

(assert (=> b!4444998 (= res!1841024 (and (or (not ((_ is Cons!49837) (toList!3693 lm!1616))) (bvsle (_1!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 (h!55572 (toList!3693 lm!1616))))) ((_ is Cons!49837) (toList!3693 lm!1616)) (bvslt (_1!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 (h!55572 (toList!3693 lm!1616))))))))

(declare-fun b!4444999 () Bool)

(assert (=> b!4444999 (= e!2767621 (containsKey!1271 (t!356903 (toList!3693 lm!1616)) (_1!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (= (and d!1349647 (not res!1841023)) b!4444998))

(assert (= (and b!4444998 res!1841024) b!4444999))

(declare-fun m!5135271 () Bool)

(assert (=> b!4444999 m!5135271))

(assert (=> d!1349083 d!1349647))

(declare-fun d!1349649 () Bool)

(declare-fun res!1841025 () Bool)

(declare-fun e!2767622 () Bool)

(assert (=> d!1349649 (=> res!1841025 e!2767622)))

(assert (=> d!1349649 (= res!1841025 ((_ is Nil!49836) (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (=> d!1349649 (= (forall!9734 (_2!28190 (h!55572 (toList!3693 lm!1616))) lambda!157932) e!2767622)))

(declare-fun b!4445000 () Bool)

(declare-fun e!2767623 () Bool)

(assert (=> b!4445000 (= e!2767622 e!2767623)))

(declare-fun res!1841026 () Bool)

(assert (=> b!4445000 (=> (not res!1841026) (not e!2767623))))

(assert (=> b!4445000 (= res!1841026 (dynLambda!20924 lambda!157932 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))))))

(declare-fun b!4445001 () Bool)

(assert (=> b!4445001 (= e!2767623 (forall!9734 (t!356902 (_2!28190 (h!55572 (toList!3693 lm!1616)))) lambda!157932))))

(assert (= (and d!1349649 (not res!1841025)) b!4445000))

(assert (= (and b!4445000 res!1841026) b!4445001))

(declare-fun b_lambda!145463 () Bool)

(assert (=> (not b_lambda!145463) (not b!4445000)))

(declare-fun m!5135273 () Bool)

(assert (=> b!4445000 m!5135273))

(declare-fun m!5135275 () Bool)

(assert (=> b!4445001 m!5135275))

(assert (=> d!1349101 d!1349649))

(assert (=> d!1349101 d!1349393))

(assert (=> b!4443953 d!1349537))

(assert (=> b!4443953 d!1349539))

(declare-fun d!1349651 () Bool)

(assert (=> d!1349651 (= (invariantList!852 (toList!3694 lt!1638707)) (noDuplicatedKeys!195 (toList!3694 lt!1638707)))))

(declare-fun bs!765608 () Bool)

(assert (= bs!765608 d!1349651))

(declare-fun m!5135277 () Bool)

(assert (=> bs!765608 m!5135277))

(assert (=> b!4444111 d!1349651))

(declare-fun d!1349653 () Bool)

(declare-fun lt!1639300 () Bool)

(assert (=> d!1349653 (= lt!1639300 (select (content!8021 (toList!3693 lt!1638729)) lt!1638450))))

(declare-fun e!2767624 () Bool)

(assert (=> d!1349653 (= lt!1639300 e!2767624)))

(declare-fun res!1841027 () Bool)

(assert (=> d!1349653 (=> (not res!1841027) (not e!2767624))))

(assert (=> d!1349653 (= res!1841027 ((_ is Cons!49837) (toList!3693 lt!1638729)))))

(assert (=> d!1349653 (= (contains!12420 (toList!3693 lt!1638729) lt!1638450) lt!1639300)))

(declare-fun b!4445002 () Bool)

(declare-fun e!2767625 () Bool)

(assert (=> b!4445002 (= e!2767624 e!2767625)))

(declare-fun res!1841028 () Bool)

(assert (=> b!4445002 (=> res!1841028 e!2767625)))

(assert (=> b!4445002 (= res!1841028 (= (h!55572 (toList!3693 lt!1638729)) lt!1638450))))

(declare-fun b!4445003 () Bool)

(assert (=> b!4445003 (= e!2767625 (contains!12420 (t!356903 (toList!3693 lt!1638729)) lt!1638450))))

(assert (= (and d!1349653 res!1841027) b!4445002))

(assert (= (and b!4445002 (not res!1841028)) b!4445003))

(declare-fun m!5135279 () Bool)

(assert (=> d!1349653 m!5135279))

(declare-fun m!5135281 () Bool)

(assert (=> d!1349653 m!5135281))

(declare-fun m!5135283 () Bool)

(assert (=> b!4445003 m!5135283))

(assert (=> b!4444144 d!1349653))

(assert (=> b!4443955 d!1349475))

(declare-fun d!1349655 () Bool)

(assert (=> d!1349655 (containsKey!1270 (toList!3694 lt!1638451) key!3717)))

(declare-fun lt!1639301 () Unit!84144)

(assert (=> d!1349655 (= lt!1639301 (choose!28263 (toList!3694 lt!1638451) key!3717))))

(assert (=> d!1349655 (invariantList!852 (toList!3694 lt!1638451))))

(assert (=> d!1349655 (= (lemmaInGetKeysListThenContainsKey!297 (toList!3694 lt!1638451) key!3717) lt!1639301)))

(declare-fun bs!765609 () Bool)

(assert (= bs!765609 d!1349655))

(assert (=> bs!765609 m!5133365))

(declare-fun m!5135285 () Bool)

(assert (=> bs!765609 m!5135285))

(assert (=> bs!765609 m!5134865))

(assert (=> b!4443955 d!1349655))

(assert (=> b!4444113 d!1349569))

(declare-fun bs!765610 () Bool)

(declare-fun b!4445004 () Bool)

(assert (= bs!765610 (and b!4445004 b!4444112)))

(declare-fun lambda!158054 () Int)

(assert (=> bs!765610 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638694) (= lambda!158054 lambda!157931))))

(declare-fun bs!765611 () Bool)

(assert (= bs!765611 (and b!4445004 d!1349429)))

(assert (=> bs!765611 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639014) (= lambda!158054 lambda!158001))))

(assert (=> bs!765610 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638452) (= lambda!158054 lambda!157930))))

(declare-fun bs!765612 () Bool)

(assert (= bs!765612 (and b!4445004 d!1349477)))

(assert (=> bs!765612 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639129) (= lambda!158054 lambda!158020))))

(declare-fun bs!765613 () Bool)

(assert (= bs!765613 (and b!4445004 b!4444808)))

(assert (=> bs!765613 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158054 lambda!158028))))

(declare-fun bs!765614 () Bool)

(assert (= bs!765614 (and b!4445004 d!1349557)))

(assert (=> bs!765614 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639164) (= lambda!158054 lambda!158031))))

(declare-fun bs!765615 () Bool)

(assert (= bs!765615 (and b!4445004 b!4444601)))

(assert (=> bs!765615 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158054 lambda!157994))))

(declare-fun bs!765616 () Bool)

(assert (= bs!765616 (and b!4445004 b!4444769)))

(assert (=> bs!765616 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639116) (= lambda!158054 lambda!158019))))

(declare-fun bs!765617 () Bool)

(assert (= bs!765617 (and b!4445004 b!4444109)))

(assert (=> bs!765617 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638452) (= lambda!158054 lambda!157929))))

(declare-fun bs!765618 () Bool)

(assert (= bs!765618 (and b!4445004 d!1349571)))

(assert (=> bs!765618 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638694) (= lambda!158054 lambda!158036))))

(declare-fun bs!765619 () Bool)

(assert (= bs!765619 (and b!4445004 d!1349101)))

(assert (=> bs!765619 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638707) (= lambda!158054 lambda!157932))))

(declare-fun bs!765620 () Bool)

(assert (= bs!765620 (and b!4445004 d!1349483)))

(assert (=> bs!765620 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638452) (= lambda!158054 lambda!158025))))

(declare-fun bs!765621 () Bool)

(assert (= bs!765621 (and b!4445004 b!4444622)))

(assert (=> bs!765621 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639001) (= lambda!158054 lambda!158000))))

(declare-fun bs!765622 () Bool)

(assert (= bs!765622 (and b!4445004 b!4444619)))

(assert (=> bs!765622 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158054 lambda!157998))))

(assert (=> bs!765616 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158054 lambda!158017))))

(declare-fun bs!765623 () Bool)

(assert (= bs!765623 (and b!4445004 b!4444811)))

(assert (=> bs!765623 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639151) (= lambda!158054 lambda!158030))))

(assert (=> bs!765623 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158054 lambda!158029))))

(declare-fun bs!765624 () Bool)

(assert (= bs!765624 (and b!4445004 b!4444766)))

(assert (=> bs!765624 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158054 lambda!158015))))

(declare-fun bs!765625 () Bool)

(assert (= bs!765625 (and b!4445004 d!1349419)))

(assert (=> bs!765625 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638992) (= lambda!158054 lambda!157996))))

(declare-fun bs!765626 () Bool)

(assert (= bs!765626 (and b!4445004 d!1349151)))

(assert (=> bs!765626 (not (= lambda!158054 lambda!157938))))

(assert (=> bs!765615 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638979) (= lambda!158054 lambda!157995))))

(assert (=> bs!765621 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158054 lambda!157999))))

(declare-fun bs!765627 () Bool)

(assert (= bs!765627 (and b!4445004 b!4444598)))

(assert (=> bs!765627 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158054 lambda!157993))))

(assert (=> b!4445004 true))

(declare-fun bs!765628 () Bool)

(declare-fun b!4445007 () Bool)

(assert (= bs!765628 (and b!4445007 b!4444112)))

(declare-fun lambda!158055 () Int)

(assert (=> bs!765628 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638694) (= lambda!158055 lambda!157931))))

(declare-fun bs!765629 () Bool)

(assert (= bs!765629 (and b!4445007 d!1349429)))

(assert (=> bs!765629 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639014) (= lambda!158055 lambda!158001))))

(assert (=> bs!765628 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638452) (= lambda!158055 lambda!157930))))

(declare-fun bs!765630 () Bool)

(assert (= bs!765630 (and b!4445007 d!1349477)))

(assert (=> bs!765630 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639129) (= lambda!158055 lambda!158020))))

(declare-fun bs!765631 () Bool)

(assert (= bs!765631 (and b!4445007 b!4444808)))

(assert (=> bs!765631 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158055 lambda!158028))))

(declare-fun bs!765632 () Bool)

(assert (= bs!765632 (and b!4445007 d!1349557)))

(assert (=> bs!765632 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639164) (= lambda!158055 lambda!158031))))

(declare-fun bs!765633 () Bool)

(assert (= bs!765633 (and b!4445007 b!4444601)))

(assert (=> bs!765633 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158055 lambda!157994))))

(declare-fun bs!765634 () Bool)

(assert (= bs!765634 (and b!4445007 b!4445004)))

(assert (=> bs!765634 (= lambda!158055 lambda!158054)))

(declare-fun bs!765635 () Bool)

(assert (= bs!765635 (and b!4445007 b!4444769)))

(assert (=> bs!765635 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639116) (= lambda!158055 lambda!158019))))

(declare-fun bs!765636 () Bool)

(assert (= bs!765636 (and b!4445007 b!4444109)))

(assert (=> bs!765636 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638452) (= lambda!158055 lambda!157929))))

(declare-fun bs!765637 () Bool)

(assert (= bs!765637 (and b!4445007 d!1349571)))

(assert (=> bs!765637 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638694) (= lambda!158055 lambda!158036))))

(declare-fun bs!765638 () Bool)

(assert (= bs!765638 (and b!4445007 d!1349101)))

(assert (=> bs!765638 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638707) (= lambda!158055 lambda!157932))))

(declare-fun bs!765639 () Bool)

(assert (= bs!765639 (and b!4445007 d!1349483)))

(assert (=> bs!765639 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638452) (= lambda!158055 lambda!158025))))

(declare-fun bs!765640 () Bool)

(assert (= bs!765640 (and b!4445007 b!4444622)))

(assert (=> bs!765640 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639001) (= lambda!158055 lambda!158000))))

(declare-fun bs!765641 () Bool)

(assert (= bs!765641 (and b!4445007 b!4444619)))

(assert (=> bs!765641 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158055 lambda!157998))))

(assert (=> bs!765635 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158055 lambda!158017))))

(declare-fun bs!765642 () Bool)

(assert (= bs!765642 (and b!4445007 b!4444811)))

(assert (=> bs!765642 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639151) (= lambda!158055 lambda!158030))))

(assert (=> bs!765642 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158055 lambda!158029))))

(declare-fun bs!765643 () Bool)

(assert (= bs!765643 (and b!4445007 b!4444766)))

(assert (=> bs!765643 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158055 lambda!158015))))

(declare-fun bs!765644 () Bool)

(assert (= bs!765644 (and b!4445007 d!1349419)))

(assert (=> bs!765644 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638992) (= lambda!158055 lambda!157996))))

(declare-fun bs!765645 () Bool)

(assert (= bs!765645 (and b!4445007 d!1349151)))

(assert (=> bs!765645 (not (= lambda!158055 lambda!157938))))

(assert (=> bs!765633 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1638979) (= lambda!158055 lambda!157995))))

(assert (=> bs!765640 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158055 lambda!157999))))

(declare-fun bs!765646 () Bool)

(assert (= bs!765646 (and b!4445007 b!4444598)))

(assert (=> bs!765646 (= (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158055 lambda!157993))))

(assert (=> b!4445007 true))

(declare-fun lt!1639302 () ListMap!2937)

(declare-fun lambda!158056 () Int)

(assert (=> bs!765628 (= (= lt!1639302 lt!1638694) (= lambda!158056 lambda!157931))))

(assert (=> bs!765629 (= (= lt!1639302 lt!1639014) (= lambda!158056 lambda!158001))))

(assert (=> bs!765628 (= (= lt!1639302 lt!1638452) (= lambda!158056 lambda!157930))))

(assert (=> bs!765630 (= (= lt!1639302 lt!1639129) (= lambda!158056 lambda!158020))))

(assert (=> b!4445007 (= (= lt!1639302 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) (= lambda!158056 lambda!158055))))

(assert (=> bs!765631 (= (= lt!1639302 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158056 lambda!158028))))

(assert (=> bs!765632 (= (= lt!1639302 lt!1639164) (= lambda!158056 lambda!158031))))

(assert (=> bs!765633 (= (= lt!1639302 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158056 lambda!157994))))

(assert (=> bs!765634 (= (= lt!1639302 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) (= lambda!158056 lambda!158054))))

(assert (=> bs!765635 (= (= lt!1639302 lt!1639116) (= lambda!158056 lambda!158019))))

(assert (=> bs!765636 (= (= lt!1639302 lt!1638452) (= lambda!158056 lambda!157929))))

(assert (=> bs!765637 (= (= lt!1639302 lt!1638694) (= lambda!158056 lambda!158036))))

(assert (=> bs!765638 (= (= lt!1639302 lt!1638707) (= lambda!158056 lambda!157932))))

(assert (=> bs!765639 (= (= lt!1639302 lt!1638452) (= lambda!158056 lambda!158025))))

(assert (=> bs!765640 (= (= lt!1639302 lt!1639001) (= lambda!158056 lambda!158000))))

(assert (=> bs!765641 (= (= lt!1639302 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158056 lambda!157998))))

(assert (=> bs!765635 (= (= lt!1639302 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158056 lambda!158017))))

(assert (=> bs!765642 (= (= lt!1639302 lt!1639151) (= lambda!158056 lambda!158030))))

(assert (=> bs!765642 (= (= lt!1639302 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158056 lambda!158029))))

(assert (=> bs!765643 (= (= lt!1639302 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158056 lambda!158015))))

(assert (=> bs!765644 (= (= lt!1639302 lt!1638992) (= lambda!158056 lambda!157996))))

(assert (=> bs!765645 (not (= lambda!158056 lambda!157938))))

(assert (=> bs!765633 (= (= lt!1639302 lt!1638979) (= lambda!158056 lambda!157995))))

(assert (=> bs!765640 (= (= lt!1639302 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158056 lambda!157999))))

(assert (=> bs!765646 (= (= lt!1639302 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158056 lambda!157993))))

(assert (=> b!4445007 true))

(declare-fun bs!765647 () Bool)

(declare-fun d!1349657 () Bool)

(assert (= bs!765647 (and d!1349657 b!4444112)))

(declare-fun lambda!158057 () Int)

(declare-fun lt!1639315 () ListMap!2937)

(assert (=> bs!765647 (= (= lt!1639315 lt!1638694) (= lambda!158057 lambda!157931))))

(declare-fun bs!765648 () Bool)

(assert (= bs!765648 (and d!1349657 d!1349429)))

(assert (=> bs!765648 (= (= lt!1639315 lt!1639014) (= lambda!158057 lambda!158001))))

(assert (=> bs!765647 (= (= lt!1639315 lt!1638452) (= lambda!158057 lambda!157930))))

(declare-fun bs!765649 () Bool)

(assert (= bs!765649 (and d!1349657 d!1349477)))

(assert (=> bs!765649 (= (= lt!1639315 lt!1639129) (= lambda!158057 lambda!158020))))

(declare-fun bs!765650 () Bool)

(assert (= bs!765650 (and d!1349657 b!4445007)))

(assert (=> bs!765650 (= (= lt!1639315 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) (= lambda!158057 lambda!158055))))

(declare-fun bs!765651 () Bool)

(assert (= bs!765651 (and d!1349657 b!4444808)))

(assert (=> bs!765651 (= (= lt!1639315 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158057 lambda!158028))))

(declare-fun bs!765652 () Bool)

(assert (= bs!765652 (and d!1349657 d!1349557)))

(assert (=> bs!765652 (= (= lt!1639315 lt!1639164) (= lambda!158057 lambda!158031))))

(declare-fun bs!765653 () Bool)

(assert (= bs!765653 (and d!1349657 b!4444601)))

(assert (=> bs!765653 (= (= lt!1639315 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158057 lambda!157994))))

(declare-fun bs!765654 () Bool)

(assert (= bs!765654 (and d!1349657 b!4445004)))

(assert (=> bs!765654 (= (= lt!1639315 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) (= lambda!158057 lambda!158054))))

(declare-fun bs!765655 () Bool)

(assert (= bs!765655 (and d!1349657 b!4444769)))

(assert (=> bs!765655 (= (= lt!1639315 lt!1639116) (= lambda!158057 lambda!158019))))

(declare-fun bs!765656 () Bool)

(assert (= bs!765656 (and d!1349657 b!4444109)))

(assert (=> bs!765656 (= (= lt!1639315 lt!1638452) (= lambda!158057 lambda!157929))))

(declare-fun bs!765657 () Bool)

(assert (= bs!765657 (and d!1349657 d!1349571)))

(assert (=> bs!765657 (= (= lt!1639315 lt!1638694) (= lambda!158057 lambda!158036))))

(declare-fun bs!765658 () Bool)

(assert (= bs!765658 (and d!1349657 d!1349101)))

(assert (=> bs!765658 (= (= lt!1639315 lt!1638707) (= lambda!158057 lambda!157932))))

(declare-fun bs!765659 () Bool)

(assert (= bs!765659 (and d!1349657 d!1349483)))

(assert (=> bs!765659 (= (= lt!1639315 lt!1638452) (= lambda!158057 lambda!158025))))

(declare-fun bs!765660 () Bool)

(assert (= bs!765660 (and d!1349657 b!4444622)))

(assert (=> bs!765660 (= (= lt!1639315 lt!1639001) (= lambda!158057 lambda!158000))))

(declare-fun bs!765661 () Bool)

(assert (= bs!765661 (and d!1349657 b!4444619)))

(assert (=> bs!765661 (= (= lt!1639315 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158057 lambda!157998))))

(assert (=> bs!765655 (= (= lt!1639315 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158057 lambda!158017))))

(declare-fun bs!765662 () Bool)

(assert (= bs!765662 (and d!1349657 b!4444811)))

(assert (=> bs!765662 (= (= lt!1639315 lt!1639151) (= lambda!158057 lambda!158030))))

(assert (=> bs!765662 (= (= lt!1639315 (+!1244 lt!1638452 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))) (= lambda!158057 lambda!158029))))

(declare-fun bs!765663 () Bool)

(assert (= bs!765663 (and d!1349657 b!4444766)))

(assert (=> bs!765663 (= (= lt!1639315 (extractMap!914 (t!356903 (toList!3693 lm!1616)))) (= lambda!158057 lambda!158015))))

(declare-fun bs!765664 () Bool)

(assert (= bs!765664 (and d!1349657 d!1349419)))

(assert (=> bs!765664 (= (= lt!1639315 lt!1638992) (= lambda!158057 lambda!157996))))

(assert (=> bs!765650 (= (= lt!1639315 lt!1639302) (= lambda!158057 lambda!158056))))

(declare-fun bs!765665 () Bool)

(assert (= bs!765665 (and d!1349657 d!1349151)))

(assert (=> bs!765665 (not (= lambda!158057 lambda!157938))))

(assert (=> bs!765653 (= (= lt!1639315 lt!1638979) (= lambda!158057 lambda!157995))))

(assert (=> bs!765660 (= (= lt!1639315 (extractMap!914 (t!356903 (toList!3693 (+!1243 lt!1638453 lt!1638450))))) (= lambda!158057 lambda!157999))))

(declare-fun bs!765666 () Bool)

(assert (= bs!765666 (and d!1349657 b!4444598)))

(assert (=> bs!765666 (= (= lt!1639315 (extractMap!914 (t!356903 (tail!7407 (toList!3693 lm!1616))))) (= lambda!158057 lambda!157993))))

(assert (=> d!1349657 true))

(declare-fun e!2767627 () ListMap!2937)

(assert (=> b!4445004 (= e!2767627 (extractMap!914 (t!356903 (toList!3693 lt!1638453))))))

(declare-fun lt!1639308 () Unit!84144)

(declare-fun call!309244 () Unit!84144)

(assert (=> b!4445004 (= lt!1639308 call!309244)))

(declare-fun call!309243 () Bool)

(assert (=> b!4445004 call!309243))

(declare-fun lt!1639313 () Unit!84144)

(assert (=> b!4445004 (= lt!1639313 lt!1639308)))

(declare-fun call!309242 () Bool)

(assert (=> b!4445004 call!309242))

(declare-fun lt!1639319 () Unit!84144)

(declare-fun Unit!84321 () Unit!84144)

(assert (=> b!4445004 (= lt!1639319 Unit!84321)))

(declare-fun b!4445005 () Bool)

(declare-fun res!1841029 () Bool)

(declare-fun e!2767628 () Bool)

(assert (=> b!4445005 (=> (not res!1841029) (not e!2767628))))

(assert (=> b!4445005 (= res!1841029 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) lambda!158057))))

(declare-fun bm!309237 () Bool)

(assert (=> bm!309237 (= call!309244 (lemmaContainsAllItsOwnKeys!209 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))))))

(declare-fun c!756498 () Bool)

(declare-fun bm!309238 () Bool)

(assert (=> bm!309238 (= call!309243 (forall!9734 (ite c!756498 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) (_2!28190 (h!55572 (toList!3693 lt!1638453)))) (ite c!756498 lambda!158054 lambda!158056)))))

(declare-fun bm!309239 () Bool)

(assert (=> bm!309239 (= call!309242 (forall!9734 (ite c!756498 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) (t!356902 (_2!28190 (h!55572 (toList!3693 lt!1638453))))) (ite c!756498 lambda!158054 lambda!158056)))))

(assert (=> d!1349657 e!2767628))

(declare-fun res!1841031 () Bool)

(assert (=> d!1349657 (=> (not res!1841031) (not e!2767628))))

(assert (=> d!1349657 (= res!1841031 (forall!9734 (_2!28190 (h!55572 (toList!3693 lt!1638453))) lambda!158057))))

(assert (=> d!1349657 (= lt!1639315 e!2767627)))

(assert (=> d!1349657 (= c!756498 ((_ is Nil!49836) (_2!28190 (h!55572 (toList!3693 lt!1638453)))))))

(assert (=> d!1349657 (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lt!1638453))))))

(assert (=> d!1349657 (= (addToMapMapFromBucket!459 (_2!28190 (h!55572 (toList!3693 lt!1638453))) (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) lt!1639315)))

(declare-fun b!4445006 () Bool)

(assert (=> b!4445006 (= e!2767628 (invariantList!852 (toList!3694 lt!1639315)))))

(assert (=> b!4445007 (= e!2767627 lt!1639302)))

(declare-fun lt!1639311 () ListMap!2937)

(assert (=> b!4445007 (= lt!1639311 (+!1244 (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (h!55571 (_2!28190 (h!55572 (toList!3693 lt!1638453))))))))

(assert (=> b!4445007 (= lt!1639302 (addToMapMapFromBucket!459 (t!356902 (_2!28190 (h!55572 (toList!3693 lt!1638453)))) (+!1244 (extractMap!914 (t!356903 (toList!3693 lt!1638453))) (h!55571 (_2!28190 (h!55572 (toList!3693 lt!1638453)))))))))

(declare-fun lt!1639303 () Unit!84144)

(assert (=> b!4445007 (= lt!1639303 call!309244)))

(assert (=> b!4445007 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) lambda!158055)))

(declare-fun lt!1639312 () Unit!84144)

(assert (=> b!4445007 (= lt!1639312 lt!1639303)))

(assert (=> b!4445007 (forall!9734 (toList!3694 lt!1639311) lambda!158056)))

(declare-fun lt!1639310 () Unit!84144)

(declare-fun Unit!84322 () Unit!84144)

(assert (=> b!4445007 (= lt!1639310 Unit!84322)))

(assert (=> b!4445007 call!309242))

(declare-fun lt!1639305 () Unit!84144)

(declare-fun Unit!84323 () Unit!84144)

(assert (=> b!4445007 (= lt!1639305 Unit!84323)))

(declare-fun lt!1639304 () Unit!84144)

(declare-fun Unit!84324 () Unit!84144)

(assert (=> b!4445007 (= lt!1639304 Unit!84324)))

(declare-fun lt!1639317 () Unit!84144)

(assert (=> b!4445007 (= lt!1639317 (forallContained!2149 (toList!3694 lt!1639311) lambda!158056 (h!55571 (_2!28190 (h!55572 (toList!3693 lt!1638453))))))))

(assert (=> b!4445007 (contains!12415 lt!1639311 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lt!1638453))))))))

(declare-fun lt!1639306 () Unit!84144)

(declare-fun Unit!84325 () Unit!84144)

(assert (=> b!4445007 (= lt!1639306 Unit!84325)))

(assert (=> b!4445007 (contains!12415 lt!1639302 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lt!1638453))))))))

(declare-fun lt!1639320 () Unit!84144)

(declare-fun Unit!84326 () Unit!84144)

(assert (=> b!4445007 (= lt!1639320 Unit!84326)))

(assert (=> b!4445007 call!309243))

(declare-fun lt!1639321 () Unit!84144)

(declare-fun Unit!84327 () Unit!84144)

(assert (=> b!4445007 (= lt!1639321 Unit!84327)))

(assert (=> b!4445007 (forall!9734 (toList!3694 lt!1639311) lambda!158056)))

(declare-fun lt!1639309 () Unit!84144)

(declare-fun Unit!84328 () Unit!84144)

(assert (=> b!4445007 (= lt!1639309 Unit!84328)))

(declare-fun lt!1639307 () Unit!84144)

(declare-fun Unit!84329 () Unit!84144)

(assert (=> b!4445007 (= lt!1639307 Unit!84329)))

(declare-fun lt!1639314 () Unit!84144)

(assert (=> b!4445007 (= lt!1639314 (addForallContainsKeyThenBeforeAdding!209 (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639302 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lt!1638453))))) (_2!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lt!1638453)))))))))

(assert (=> b!4445007 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) lambda!158056)))

(declare-fun lt!1639322 () Unit!84144)

(assert (=> b!4445007 (= lt!1639322 lt!1639314)))

(assert (=> b!4445007 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) lambda!158056)))

(declare-fun lt!1639318 () Unit!84144)

(declare-fun Unit!84330 () Unit!84144)

(assert (=> b!4445007 (= lt!1639318 Unit!84330)))

(declare-fun res!1841030 () Bool)

(assert (=> b!4445007 (= res!1841030 (forall!9734 (_2!28190 (h!55572 (toList!3693 lt!1638453))) lambda!158056))))

(declare-fun e!2767626 () Bool)

(assert (=> b!4445007 (=> (not res!1841030) (not e!2767626))))

(assert (=> b!4445007 e!2767626))

(declare-fun lt!1639316 () Unit!84144)

(declare-fun Unit!84331 () Unit!84144)

(assert (=> b!4445007 (= lt!1639316 Unit!84331)))

(declare-fun b!4445008 () Bool)

(assert (=> b!4445008 (= e!2767626 (forall!9734 (toList!3694 (extractMap!914 (t!356903 (toList!3693 lt!1638453)))) lambda!158056))))

(assert (= (and d!1349657 c!756498) b!4445004))

(assert (= (and d!1349657 (not c!756498)) b!4445007))

(assert (= (and b!4445007 res!1841030) b!4445008))

(assert (= (or b!4445004 b!4445007) bm!309237))

(assert (= (or b!4445004 b!4445007) bm!309238))

(assert (= (or b!4445004 b!4445007) bm!309239))

(assert (= (and d!1349657 res!1841031) b!4445005))

(assert (= (and b!4445005 res!1841029) b!4445006))

(declare-fun m!5135287 () Bool)

(assert (=> b!4445007 m!5135287))

(assert (=> b!4445007 m!5133747))

(declare-fun m!5135289 () Bool)

(assert (=> b!4445007 m!5135289))

(declare-fun m!5135291 () Bool)

(assert (=> b!4445007 m!5135291))

(declare-fun m!5135293 () Bool)

(assert (=> b!4445007 m!5135293))

(declare-fun m!5135295 () Bool)

(assert (=> b!4445007 m!5135295))

(declare-fun m!5135297 () Bool)

(assert (=> b!4445007 m!5135297))

(assert (=> b!4445007 m!5133747))

(assert (=> b!4445007 m!5135295))

(declare-fun m!5135299 () Bool)

(assert (=> b!4445007 m!5135299))

(assert (=> b!4445007 m!5135287))

(declare-fun m!5135301 () Bool)

(assert (=> b!4445007 m!5135301))

(declare-fun m!5135303 () Bool)

(assert (=> b!4445007 m!5135303))

(declare-fun m!5135305 () Bool)

(assert (=> b!4445007 m!5135305))

(assert (=> b!4445007 m!5135305))

(declare-fun m!5135307 () Bool)

(assert (=> bm!309239 m!5135307))

(assert (=> bm!309237 m!5133747))

(declare-fun m!5135309 () Bool)

(assert (=> bm!309237 m!5135309))

(declare-fun m!5135311 () Bool)

(assert (=> b!4445005 m!5135311))

(declare-fun m!5135313 () Bool)

(assert (=> b!4445006 m!5135313))

(assert (=> b!4445008 m!5135305))

(declare-fun m!5135315 () Bool)

(assert (=> bm!309238 m!5135315))

(declare-fun m!5135317 () Bool)

(assert (=> d!1349657 m!5135317))

(declare-fun m!5135319 () Bool)

(assert (=> d!1349657 m!5135319))

(assert (=> b!4444157 d!1349657))

(declare-fun bs!765667 () Bool)

(declare-fun d!1349659 () Bool)

(assert (= bs!765667 (and d!1349659 d!1349081)))

(declare-fun lambda!158058 () Int)

(assert (=> bs!765667 (= lambda!158058 lambda!157872)))

(declare-fun bs!765668 () Bool)

(assert (= bs!765668 (and d!1349659 d!1349177)))

(assert (=> bs!765668 (= lambda!158058 lambda!157942)))

(declare-fun bs!765669 () Bool)

(assert (= bs!765669 (and d!1349659 d!1349479)))

(assert (=> bs!765669 (= lambda!158058 lambda!158022)))

(declare-fun bs!765670 () Bool)

(assert (= bs!765670 (and d!1349659 d!1349089)))

(assert (=> bs!765670 (= lambda!158058 lambda!157888)))

(declare-fun bs!765671 () Bool)

(assert (= bs!765671 (and d!1349659 d!1349421)))

(assert (=> bs!765671 (= lambda!158058 lambda!157997)))

(declare-fun bs!765672 () Bool)

(assert (= bs!765672 (and d!1349659 d!1349181)))

(assert (=> bs!765672 (= lambda!158058 lambda!157943)))

(declare-fun bs!765673 () Bool)

(assert (= bs!765673 (and d!1349659 d!1349431)))

(assert (=> bs!765673 (= lambda!158058 lambda!158002)))

(declare-fun bs!765674 () Bool)

(assert (= bs!765674 (and d!1349659 d!1349171)))

(assert (=> bs!765674 (= lambda!158058 lambda!157941)))

(declare-fun bs!765675 () Bool)

(assert (= bs!765675 (and d!1349659 start!435012)))

(assert (=> bs!765675 (= lambda!158058 lambda!157844)))

(declare-fun bs!765676 () Bool)

(assert (= bs!765676 (and d!1349659 d!1349631)))

(assert (=> bs!765676 (= lambda!158058 lambda!158049)))

(declare-fun bs!765677 () Bool)

(assert (= bs!765677 (and d!1349659 d!1349189)))

(assert (=> bs!765677 (= lambda!158058 lambda!157944)))

(declare-fun bs!765678 () Bool)

(assert (= bs!765678 (and d!1349659 d!1349149)))

(assert (=> bs!765678 (not (= lambda!158058 lambda!157935))))

(declare-fun lt!1639323 () ListMap!2937)

(assert (=> d!1349659 (invariantList!852 (toList!3694 lt!1639323))))

(declare-fun e!2767629 () ListMap!2937)

(assert (=> d!1349659 (= lt!1639323 e!2767629)))

(declare-fun c!756499 () Bool)

(assert (=> d!1349659 (= c!756499 ((_ is Cons!49837) (t!356903 (toList!3693 lt!1638453))))))

(assert (=> d!1349659 (forall!9732 (t!356903 (toList!3693 lt!1638453)) lambda!158058)))

(assert (=> d!1349659 (= (extractMap!914 (t!356903 (toList!3693 lt!1638453))) lt!1639323)))

(declare-fun b!4445009 () Bool)

(assert (=> b!4445009 (= e!2767629 (addToMapMapFromBucket!459 (_2!28190 (h!55572 (t!356903 (toList!3693 lt!1638453)))) (extractMap!914 (t!356903 (t!356903 (toList!3693 lt!1638453))))))))

(declare-fun b!4445010 () Bool)

(assert (=> b!4445010 (= e!2767629 (ListMap!2938 Nil!49836))))

(assert (= (and d!1349659 c!756499) b!4445009))

(assert (= (and d!1349659 (not c!756499)) b!4445010))

(declare-fun m!5135321 () Bool)

(assert (=> d!1349659 m!5135321))

(declare-fun m!5135323 () Bool)

(assert (=> d!1349659 m!5135323))

(declare-fun m!5135325 () Bool)

(assert (=> b!4445009 m!5135325))

(assert (=> b!4445009 m!5135325))

(declare-fun m!5135327 () Bool)

(assert (=> b!4445009 m!5135327))

(assert (=> b!4444157 d!1349659))

(declare-fun b!4445012 () Bool)

(declare-fun e!2767630 () Option!10821)

(declare-fun e!2767631 () Option!10821)

(assert (=> b!4445012 (= e!2767630 e!2767631)))

(declare-fun c!756501 () Bool)

(assert (=> b!4445012 (= c!756501 (and ((_ is Cons!49836) (toList!3694 lt!1638743)) (not (= (_1!28189 (h!55571 (toList!3694 lt!1638743))) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))))

(declare-fun d!1349661 () Bool)

(declare-fun c!756500 () Bool)

(assert (=> d!1349661 (= c!756500 (and ((_ is Cons!49836) (toList!3694 lt!1638743)) (= (_1!28189 (h!55571 (toList!3694 lt!1638743))) (_1!28189 (tuple2!49791 key!3717 newValue!93)))))))

(assert (=> d!1349661 (= (getValueByKey!807 (toList!3694 lt!1638743) (_1!28189 (tuple2!49791 key!3717 newValue!93))) e!2767630)))

(declare-fun b!4445013 () Bool)

(assert (=> b!4445013 (= e!2767631 (getValueByKey!807 (t!356902 (toList!3694 lt!1638743)) (_1!28189 (tuple2!49791 key!3717 newValue!93))))))

(declare-fun b!4445011 () Bool)

(assert (=> b!4445011 (= e!2767630 (Some!10820 (_2!28189 (h!55571 (toList!3694 lt!1638743)))))))

(declare-fun b!4445014 () Bool)

(assert (=> b!4445014 (= e!2767631 None!10820)))

(assert (= (and d!1349661 c!756500) b!4445011))

(assert (= (and d!1349661 (not c!756500)) b!4445012))

(assert (= (and b!4445012 c!756501) b!4445013))

(assert (= (and b!4445012 (not c!756501)) b!4445014))

(declare-fun m!5135329 () Bool)

(assert (=> b!4445013 m!5135329))

(assert (=> b!4444153 d!1349661))

(declare-fun b!4445015 () Bool)

(declare-fun tp!1334391 () Bool)

(declare-fun e!2767632 () Bool)

(assert (=> b!4445015 (= e!2767632 (and tp_is_empty!26659 tp_is_empty!26657 tp!1334391))))

(assert (=> b!4444181 (= tp!1334385 e!2767632)))

(assert (= (and b!4444181 ((_ is Cons!49836) (_2!28190 (h!55572 (toList!3693 lm!1616))))) b!4445015))

(declare-fun b!4445016 () Bool)

(declare-fun e!2767633 () Bool)

(declare-fun tp!1334392 () Bool)

(declare-fun tp!1334393 () Bool)

(assert (=> b!4445016 (= e!2767633 (and tp!1334392 tp!1334393))))

(assert (=> b!4444181 (= tp!1334386 e!2767633)))

(assert (= (and b!4444181 ((_ is Cons!49837) (t!356903 (toList!3693 lm!1616)))) b!4445016))

(declare-fun tp!1334394 () Bool)

(declare-fun e!2767634 () Bool)

(declare-fun b!4445017 () Bool)

(assert (=> b!4445017 (= e!2767634 (and tp_is_empty!26659 tp_is_empty!26657 tp!1334394))))

(assert (=> b!4444176 (= tp!1334380 e!2767634)))

(assert (= (and b!4444176 ((_ is Cons!49836) (t!356902 (t!356902 newBucket!194)))) b!4445017))

(declare-fun b_lambda!145465 () Bool)

(assert (= b_lambda!145441 (or b!4444112 b_lambda!145465)))

(declare-fun bs!765679 () Bool)

(declare-fun d!1349663 () Bool)

(assert (= bs!765679 (and d!1349663 b!4444112)))

(assert (=> bs!765679 (= (dynLambda!20924 lambda!157930 (h!55571 (toList!3694 lt!1638452))) (contains!12415 lt!1638452 (_1!28189 (h!55571 (toList!3694 lt!1638452)))))))

(declare-fun m!5135331 () Bool)

(assert (=> bs!765679 m!5135331))

(assert (=> b!4444813 d!1349663))

(declare-fun b_lambda!145467 () Bool)

(assert (= b_lambda!145377 (or d!1349081 b_lambda!145467)))

(declare-fun bs!765680 () Bool)

(declare-fun d!1349665 () Bool)

(assert (= bs!765680 (and d!1349665 d!1349081)))

(assert (=> bs!765680 (= (dynLambda!20922 lambda!157872 (h!55572 (toList!3693 lm!1616))) (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (=> bs!765680 m!5133651))

(assert (=> b!4444509 d!1349665))

(declare-fun b_lambda!145469 () Bool)

(assert (= b_lambda!145445 (or b!4444112 b_lambda!145469)))

(declare-fun bs!765681 () Bool)

(declare-fun d!1349667 () Bool)

(assert (= bs!765681 (and d!1349667 b!4444112)))

(assert (=> bs!765681 (= (dynLambda!20924 lambda!157931 (h!55571 (toList!3694 lt!1638703))) (contains!12415 lt!1638694 (_1!28189 (h!55571 (toList!3694 lt!1638703)))))))

(declare-fun m!5135333 () Bool)

(assert (=> bs!765681 m!5135333))

(assert (=> b!4444826 d!1349667))

(declare-fun b_lambda!145471 () Bool)

(assert (= b_lambda!145381 (or d!1349189 b_lambda!145471)))

(declare-fun bs!765682 () Bool)

(declare-fun d!1349669 () Bool)

(assert (= bs!765682 (and d!1349669 d!1349189)))

(assert (=> bs!765682 (= (dynLambda!20922 lambda!157944 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450)))) (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 (+!1243 lt!1638453 lt!1638450))))))))

(assert (=> bs!765682 m!5134545))

(assert (=> b!4444517 d!1349669))

(declare-fun b_lambda!145473 () Bool)

(assert (= b_lambda!145463 (or d!1349101 b_lambda!145473)))

(declare-fun bs!765683 () Bool)

(declare-fun d!1349671 () Bool)

(assert (= bs!765683 (and d!1349671 d!1349101)))

(assert (=> bs!765683 (= (dynLambda!20924 lambda!157932 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (contains!12415 lt!1638707 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(declare-fun m!5135335 () Bool)

(assert (=> bs!765683 m!5135335))

(assert (=> b!4445000 d!1349671))

(declare-fun b_lambda!145475 () Bool)

(assert (= b_lambda!145383 (or d!1349149 b_lambda!145475)))

(declare-fun bs!765684 () Bool)

(declare-fun d!1349673 () Bool)

(assert (= bs!765684 (and d!1349673 d!1349149)))

(assert (=> bs!765684 (= (dynLambda!20922 lambda!157935 (h!55572 (toList!3693 lm!1616))) (allKeysSameHash!813 (_2!28190 (h!55572 (toList!3693 lm!1616))) (_1!28190 (h!55572 (toList!3693 lm!1616))) hashF!1220))))

(declare-fun m!5135337 () Bool)

(assert (=> bs!765684 m!5135337))

(assert (=> b!4444674 d!1349673))

(declare-fun b_lambda!145477 () Bool)

(assert (= b_lambda!145449 (or b!4444112 b_lambda!145477)))

(declare-fun bs!765685 () Bool)

(declare-fun d!1349675 () Bool)

(assert (= bs!765685 (and d!1349675 b!4444112)))

(assert (=> bs!765685 (= (dynLambda!20924 lambda!157931 (h!55571 (toList!3694 lt!1638452))) (contains!12415 lt!1638694 (_1!28189 (h!55571 (toList!3694 lt!1638452)))))))

(declare-fun m!5135339 () Bool)

(assert (=> bs!765685 m!5135339))

(assert (=> b!4444831 d!1349675))

(declare-fun b_lambda!145479 () Bool)

(assert (= b_lambda!145369 (or d!1349181 b_lambda!145479)))

(declare-fun bs!765686 () Bool)

(declare-fun d!1349677 () Bool)

(assert (= bs!765686 (and d!1349677 d!1349181)))

(assert (=> bs!765686 (= (dynLambda!20922 lambda!157943 (h!55572 (tail!7407 (toList!3693 lm!1616)))) (noDuplicateKeys!853 (_2!28190 (h!55572 (tail!7407 (toList!3693 lm!1616))))))))

(assert (=> bs!765686 m!5134493))

(assert (=> b!4444492 d!1349677))

(declare-fun b_lambda!145481 () Bool)

(assert (= b_lambda!145455 (or d!1349171 b_lambda!145481)))

(declare-fun bs!765687 () Bool)

(declare-fun d!1349679 () Bool)

(assert (= bs!765687 (and d!1349679 d!1349171)))

(assert (=> bs!765687 (= (dynLambda!20922 lambda!157941 (h!55572 (toList!3693 lt!1638453))) (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lt!1638453)))))))

(assert (=> bs!765687 m!5135319))

(assert (=> b!4444975 d!1349679))

(declare-fun b_lambda!145483 () Bool)

(assert (= b_lambda!145437 (or start!435012 b_lambda!145483)))

(declare-fun bs!765688 () Bool)

(declare-fun d!1349681 () Bool)

(assert (= bs!765688 (and d!1349681 start!435012)))

(assert (=> bs!765688 (= (dynLambda!20922 lambda!157844 (h!55572 (t!356903 (toList!3693 lm!1616)))) (noDuplicateKeys!853 (_2!28190 (h!55572 (t!356903 (toList!3693 lm!1616))))))))

(declare-fun m!5135341 () Bool)

(assert (=> bs!765688 m!5135341))

(assert (=> b!4444804 d!1349681))

(declare-fun b_lambda!145485 () Bool)

(assert (= b_lambda!145453 (or start!435012 b_lambda!145485)))

(declare-fun bs!765689 () Bool)

(declare-fun d!1349683 () Bool)

(assert (= bs!765689 (and d!1349683 start!435012)))

(assert (=> bs!765689 (= (dynLambda!20922 lambda!157844 (h!55572 (toList!3693 (+!1243 lm!1616 (tuple2!49793 hash!366 newBucket!194))))) (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 (+!1243 lm!1616 (tuple2!49793 hash!366 newBucket!194)))))))))

(declare-fun m!5135343 () Bool)

(assert (=> bs!765689 m!5135343))

(assert (=> b!4444905 d!1349683))

(declare-fun b_lambda!145487 () Bool)

(assert (= b_lambda!145451 (or d!1349089 b_lambda!145487)))

(declare-fun bs!765690 () Bool)

(declare-fun d!1349685 () Bool)

(assert (= bs!765690 (and d!1349685 d!1349089)))

(assert (=> bs!765690 (= (dynLambda!20922 lambda!157888 (h!55572 (toList!3693 lm!1616))) (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))

(assert (=> bs!765690 m!5133651))

(assert (=> b!4444856 d!1349685))

(declare-fun b_lambda!145489 () Bool)

(assert (= b_lambda!145447 (or b!4444112 b_lambda!145489)))

(declare-fun bs!765691 () Bool)

(declare-fun d!1349687 () Bool)

(assert (= bs!765691 (and d!1349687 b!4444112)))

(assert (=> bs!765691 (= (dynLambda!20924 lambda!157931 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616))))) (contains!12415 lt!1638694 (_1!28189 (h!55571 (_2!28190 (h!55572 (toList!3693 lm!1616)))))))))

(assert (=> bs!765691 m!5133633))

(assert (=> d!1349567 d!1349687))

(declare-fun b_lambda!145491 () Bool)

(assert (= b_lambda!145389 (or d!1349151 b_lambda!145491)))

(declare-fun bs!765692 () Bool)

(declare-fun d!1349689 () Bool)

(assert (= bs!765692 (and d!1349689 d!1349151)))

(assert (=> bs!765692 (= (dynLambda!20924 lambda!157938 (h!55571 newBucket!194)) (= (hash!2315 hashF!1220 (_1!28189 (h!55571 newBucket!194))) hash!366))))

(declare-fun m!5135345 () Bool)

(assert (=> bs!765692 m!5135345))

(assert (=> b!4444736 d!1349689))

(declare-fun b_lambda!145493 () Bool)

(assert (= b_lambda!145457 (or d!1349101 b_lambda!145493)))

(declare-fun bs!765693 () Bool)

(declare-fun d!1349691 () Bool)

(assert (= bs!765693 (and d!1349691 d!1349101)))

(assert (=> bs!765693 (= (dynLambda!20924 lambda!157932 (h!55571 (toList!3694 lt!1638452))) (contains!12415 lt!1638707 (_1!28189 (h!55571 (toList!3694 lt!1638452)))))))

(declare-fun m!5135347 () Bool)

(assert (=> bs!765693 m!5135347))

(assert (=> b!4444983 d!1349691))

(declare-fun b_lambda!145495 () Bool)

(assert (= b_lambda!145439 (or start!435012 b_lambda!145495)))

(declare-fun bs!765694 () Bool)

(declare-fun d!1349693 () Bool)

(assert (= bs!765694 (and d!1349693 start!435012)))

(assert (=> bs!765694 (= (dynLambda!20922 lambda!157844 (h!55572 (t!356903 (toList!3693 lt!1638445)))) (noDuplicateKeys!853 (_2!28190 (h!55572 (t!356903 (toList!3693 lt!1638445))))))))

(declare-fun m!5135349 () Bool)

(assert (=> bs!765694 m!5135349))

(assert (=> b!4444806 d!1349693))

(declare-fun b_lambda!145497 () Bool)

(assert (= b_lambda!145443 (or b!4444112 b_lambda!145497)))

(assert (=> b!4444824 d!1349687))

(declare-fun b_lambda!145499 () Bool)

(assert (= b_lambda!145461 (or d!1349177 b_lambda!145499)))

(declare-fun bs!765695 () Bool)

(declare-fun d!1349695 () Bool)

(assert (= bs!765695 (and d!1349695 d!1349177)))

(assert (=> bs!765695 (= (dynLambda!20922 lambda!157942 (h!55572 (toList!3693 lt!1638453))) (noDuplicateKeys!853 (_2!28190 (h!55572 (toList!3693 lt!1638453)))))))

(assert (=> bs!765695 m!5135319))

(assert (=> b!4444996 d!1349695))

(check-sat (not bs!765685) (not b!4444832) (not b!4444805) (not bm!309223) (not b!4444897) (not b!4444819) (not b_lambda!145341) (not b_lambda!145497) (not b!4444748) (not b!4444802) (not b!4444768) (not b!4444621) (not bm!309238) (not b!4444602) (not d!1349607) (not b!4444972) (not d!1349599) (not b!4444769) (not bs!765684) (not d!1349625) (not b!4444992) (not b!4444787) (not b!4444854) (not b!4444747) (not b!4445001) (not b_lambda!145491) (not b!4444487) (not b!4444970) (not b!4444739) (not b!4444912) (not d!1349365) (not b!4444974) (not b!4444763) (not b!4444771) (not bm!309224) (not b!4444815) (not bm!309220) (not b!4444818) (not b!4444659) (not b!4444811) (not b!4444991) (not bs!765691) (not d!1349613) (not b!4444814) (not b_lambda!145467) (not d!1349531) (not bm!309215) (not b!4444610) (not b!4444537) tp_is_empty!26657 (not d!1349361) (not b!4444765) (not b_lambda!145435) (not b!4444883) (not b!4444960) tp_is_empty!26659 (not b!4444911) (not b!4444987) (not b!4444727) (not d!1349635) (not b!4444906) (not bm!309192) (not b!4444599) (not b!4444857) (not b!4444798) (not bs!765679) (not b_lambda!145479) (not bs!765695) (not b!4444589) (not b_lambda!145477) (not b!4444999) (not b!4444894) (not b!4444841) (not d!1349473) (not b!4444834) (not b!4444965) (not b!4444830) (not d!1349437) (not b!4444839) (not b!4444740) (not b!4444742) (not b_lambda!145465) (not b!4444618) (not b!4444652) (not b!4444718) (not d!1349387) (not b_lambda!145339) (not b!4445003) (not b!4444809) (not bm!309218) (not b!4444794) (not b!4445008) (not bs!765680) (not b!4444850) (not bs!765687) (not b!4445007) (not b!4444799) (not d!1349617) (not b!4444796) (not d!1349639) (not b_lambda!145481) (not d!1349573) (not b!4444601) (not d!1349447) (not b!4444755) (not d!1349631) (not d!1349357) (not bm!309213) (not b!4444690) (not bs!765689) (not b!4445005) (not b_lambda!145493) (not b!4444968) (not b!4444827) (not b!4444913) (not d!1349609) (not b!4444785) (not b!4444915) (not b!4444995) (not d!1349655) (not b_lambda!145487) (not bm!309191) (not d!1349549) (not bm!309189) (not bm!309216) (not b!4445006) (not d!1349399) (not d!1349419) (not d!1349577) (not bs!765690) (not b!4444917) (not b!4444836) (not b!4444790) (not b!4445016) (not b!4445017) (not d!1349561) (not b!4444675) (not b!4444797) (not b!4444921) (not b!4444590) (not bm!309190) (not b!4444520) (not d!1349575) (not b!4444838) (not d!1349469) (not d!1349581) (not bm!309217) (not bs!765682) (not b_lambda!145483) (not b!4444837) (not b!4444984) (not b_lambda!145495) (not b!4444967) (not d!1349651) (not d!1349479) (not b!4444843) (not d!1349591) (not b!4444978) (not b_lambda!145499) (not d!1349585) (not b!4444687) (not b!4444851) (not bm!309222) (not d!1349477) (not b!4444519) (not b!4445013) (not d!1349643) (not bs!765688) (not b!4444997) (not d!1349619) (not b_lambda!145475) (not d!1349601) (not b!4444979) (not b!4444884) (not d!1349463) (not b!4444623) (not b!4444878) (not bs!765692) (not d!1349629) (not d!1349543) (not b!4444544) (not b!4444904) (not d!1349611) (not b!4444543) (not b!4444896) (not d!1349541) (not d!1349403) (not d!1349589) (not b!4444600) (not b!4444892) (not b!4444985) (not bm!309219) (not b_lambda!145489) (not d!1349405) (not b!4444846) (not b!4444973) (not d!1349571) (not b!4444882) (not b!4444770) (not d!1349657) (not b!4444729) (not b!4444493) (not b!4445009) (not bs!765686) (not d!1349567) (not b!4444531) (not b!4444840) (not bm!309194) (not b!4444474) (not b!4444908) (not b!4444507) (not d!1349443) (not d!1349431) (not b!4444603) (not bm!309235) (not b!4444982) (not b!4445015) (not b!4444977) (not b!4444971) (not b!4444810) (not b!4444612) (not bm!309237) (not d!1349379) (not b!4444822) (not b!4444907) (not b!4444928) (not b!4444532) (not d!1349633) (not b!4444767) (not b!4444993) (not d!1349465) (not b_lambda!145471) (not d!1349429) (not b!4444927) (not d!1349483) (not b!4444807) (not b!4444817) (not d!1349537) (not d!1349579) (not bs!765693) (not b!4444847) (not d!1349547) (not d!1349535) (not b!4444914) (not b!4444876) (not b!4444816) (not b!4444981) (not b!4444825) (not b_lambda!145473) (not d!1349457) (not d!1349421) (not bm!309239) (not bm!309187) (not b!4444510) (not b!4444849) (not b!4444756) (not bm!309193) (not b!4444910) (not b!4444745) (not b!4444820) (not d!1349653) (not bs!765681) (not b_lambda!145343) (not b!4444812) (not bm!309221) (not b!4444728) (not b!4444958) (not b!4444976) (not b!4444518) (not d!1349557) (not b!4444597) (not bm!309234) (not b!4444622) (not bs!765683) (not b_lambda!145485) (not d!1349659) (not b!4444957) (not b!4444835) (not b_lambda!145469) (not b!4444898) (not b!4444852) (not b_lambda!145459) (not b!4444848) (not b!4444534) (not bs!765694) (not b!4444620) (not b!4444737) (not b!4444969))
(check-sat)
