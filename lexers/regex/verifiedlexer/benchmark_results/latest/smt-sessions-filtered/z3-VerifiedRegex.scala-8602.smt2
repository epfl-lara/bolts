; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458060 () Bool)

(assert start!458060)

(declare-fun b!4594228 () Bool)

(declare-fun e!2865542 () Bool)

(declare-fun tp!1340248 () Bool)

(assert (=> b!4594228 (= e!2865542 tp!1340248)))

(declare-fun b!4594229 () Bool)

(declare-fun res!1921188 () Bool)

(declare-fun e!2865540 () Bool)

(assert (=> b!4594229 (=> (not res!1921188) (not e!2865540))))

(declare-datatypes ((K!12415 0))(
  ( (K!12416 (val!18203 Int)) )
))
(declare-datatypes ((V!12661 0))(
  ( (V!12662 (val!18204 Int)) )
))
(declare-datatypes ((tuple2!51674 0))(
  ( (tuple2!51675 (_1!29131 K!12415) (_2!29131 V!12661)) )
))
(declare-datatypes ((List!51170 0))(
  ( (Nil!51046) (Cons!51046 (h!57002 tuple2!51674) (t!358164 List!51170)) )
))
(declare-datatypes ((tuple2!51676 0))(
  ( (tuple2!51677 (_1!29132 (_ BitVec 64)) (_2!29132 List!51170)) )
))
(declare-datatypes ((List!51171 0))(
  ( (Nil!51047) (Cons!51047 (h!57003 tuple2!51676) (t!358165 List!51171)) )
))
(declare-datatypes ((ListLongMap!3259 0))(
  ( (ListLongMap!3260 (toList!4627 List!51171)) )
))
(declare-fun lm!1477 () ListLongMap!3259)

(declare-datatypes ((Hashable!5705 0))(
  ( (HashableExt!5704 (__x!31408 Int)) )
))
(declare-fun hashF!1107 () Hashable!5705)

(declare-fun allKeysSameHashInMap!1417 (ListLongMap!3259 Hashable!5705) Bool)

(assert (=> b!4594229 (= res!1921188 (allKeysSameHashInMap!1417 lm!1477 hashF!1107))))

(declare-fun b!4594230 () Bool)

(declare-fun res!1921182 () Bool)

(declare-fun e!2865539 () Bool)

(assert (=> b!4594230 (=> res!1921182 e!2865539)))

(declare-fun newBucket!178 () List!51170)

(declare-fun noDuplicateKeys!1306 (List!51170) Bool)

(assert (=> b!4594230 (= res!1921182 (not (noDuplicateKeys!1306 newBucket!178)))))

(declare-fun b!4594231 () Bool)

(declare-fun res!1921187 () Bool)

(assert (=> b!4594231 (=> res!1921187 e!2865539)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4594231 (= res!1921187 (or ((_ is Nil!51047) (toList!4627 lm!1477)) (not (= (_1!29132 (h!57003 (toList!4627 lm!1477))) hash!344))))))

(declare-fun b!4594232 () Bool)

(declare-fun res!1921180 () Bool)

(assert (=> b!4594232 (=> (not res!1921180) (not e!2865540))))

(declare-fun key!3287 () K!12415)

(declare-datatypes ((ListMap!3889 0))(
  ( (ListMap!3890 (toList!4628 List!51170)) )
))
(declare-fun contains!13979 (ListMap!3889 K!12415) Bool)

(declare-fun extractMap!1366 (List!51171) ListMap!3889)

(assert (=> b!4594232 (= res!1921180 (contains!13979 (extractMap!1366 (toList!4627 lm!1477)) key!3287))))

(declare-fun b!4594233 () Bool)

(declare-fun e!2865537 () Bool)

(declare-fun removePairForKey!931 (List!51170 K!12415) List!51170)

(assert (=> b!4594233 (= e!2865537 (= (removePairForKey!931 (_2!29132 (h!57003 (toList!4627 lm!1477))) key!3287) newBucket!178))))

(declare-fun res!1921181 () Bool)

(assert (=> start!458060 (=> (not res!1921181) (not e!2865540))))

(declare-fun lambda!185400 () Int)

(declare-fun forall!10572 (List!51171 Int) Bool)

(assert (=> start!458060 (= res!1921181 (forall!10572 (toList!4627 lm!1477) lambda!185400))))

(assert (=> start!458060 e!2865540))

(assert (=> start!458060 true))

(declare-fun inv!66599 (ListLongMap!3259) Bool)

(assert (=> start!458060 (and (inv!66599 lm!1477) e!2865542)))

(declare-fun tp_is_empty!28517 () Bool)

(assert (=> start!458060 tp_is_empty!28517))

(declare-fun e!2865538 () Bool)

(assert (=> start!458060 e!2865538))

(declare-fun b!4594234 () Bool)

(declare-fun e!2865544 () Bool)

(declare-fun e!2865536 () Bool)

(assert (=> b!4594234 (= e!2865544 e!2865536)))

(declare-fun res!1921185 () Bool)

(assert (=> b!4594234 (=> res!1921185 e!2865536)))

(declare-fun lt!1755179 () List!51171)

(declare-fun containsKeyBiggerList!262 (List!51171 K!12415) Bool)

(assert (=> b!4594234 (= res!1921185 (not (containsKeyBiggerList!262 lt!1755179 key!3287)))))

(assert (=> b!4594234 (= lt!1755179 (Cons!51047 (h!57003 (toList!4627 lm!1477)) Nil!51047))))

(declare-fun b!4594235 () Bool)

(declare-datatypes ((Unit!107680 0))(
  ( (Unit!107681) )
))
(declare-fun e!2865543 () Unit!107680)

(declare-fun Unit!107682 () Unit!107680)

(assert (=> b!4594235 (= e!2865543 Unit!107682)))

(declare-fun b!4594236 () Bool)

(assert (=> b!4594236 (= e!2865539 e!2865544)))

(declare-fun res!1921183 () Bool)

(assert (=> b!4594236 (=> res!1921183 e!2865544)))

(declare-fun lt!1755181 () Bool)

(assert (=> b!4594236 (= res!1921183 lt!1755181)))

(declare-fun lt!1755180 () Unit!107680)

(assert (=> b!4594236 (= lt!1755180 e!2865543)))

(declare-fun c!786752 () Bool)

(assert (=> b!4594236 (= c!786752 lt!1755181)))

(declare-fun containsKey!2126 (List!51170 K!12415) Bool)

(assert (=> b!4594236 (= lt!1755181 (not (containsKey!2126 (_2!29132 (h!57003 (toList!4627 lm!1477))) key!3287)))))

(declare-fun b!4594237 () Bool)

(declare-fun Unit!107683 () Unit!107680)

(assert (=> b!4594237 (= e!2865543 Unit!107683)))

(declare-fun lt!1755185 () Unit!107680)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!276 (ListLongMap!3259 K!12415 Hashable!5705) Unit!107680)

(assert (=> b!4594237 (= lt!1755185 (lemmaNotInItsHashBucketThenNotInMap!276 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4594237 false))

(declare-fun b!4594238 () Bool)

(declare-fun e!2865541 () Bool)

(assert (=> b!4594238 (= e!2865541 (not e!2865539))))

(declare-fun res!1921186 () Bool)

(assert (=> b!4594238 (=> res!1921186 e!2865539)))

(declare-fun lt!1755189 () List!51170)

(assert (=> b!4594238 (= res!1921186 (not (= newBucket!178 (removePairForKey!931 lt!1755189 key!3287))))))

(declare-fun lt!1755186 () tuple2!51676)

(declare-fun lt!1755182 () Unit!107680)

(declare-fun forallContained!2827 (List!51171 Int tuple2!51676) Unit!107680)

(assert (=> b!4594238 (= lt!1755182 (forallContained!2827 (toList!4627 lm!1477) lambda!185400 lt!1755186))))

(declare-fun contains!13980 (List!51171 tuple2!51676) Bool)

(assert (=> b!4594238 (contains!13980 (toList!4627 lm!1477) lt!1755186)))

(assert (=> b!4594238 (= lt!1755186 (tuple2!51677 hash!344 lt!1755189))))

(declare-fun lt!1755184 () Unit!107680)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!816 (List!51171 (_ BitVec 64) List!51170) Unit!107680)

(assert (=> b!4594238 (= lt!1755184 (lemmaGetValueByKeyImpliesContainsTuple!816 (toList!4627 lm!1477) hash!344 lt!1755189))))

(declare-fun apply!12043 (ListLongMap!3259 (_ BitVec 64)) List!51170)

(assert (=> b!4594238 (= lt!1755189 (apply!12043 lm!1477 hash!344))))

(declare-fun lt!1755183 () (_ BitVec 64))

(declare-fun contains!13981 (ListLongMap!3259 (_ BitVec 64)) Bool)

(assert (=> b!4594238 (contains!13981 lm!1477 lt!1755183)))

(declare-fun lt!1755187 () Unit!107680)

(declare-fun lemmaInGenMapThenLongMapContainsHash!380 (ListLongMap!3259 K!12415 Hashable!5705) Unit!107680)

(assert (=> b!4594238 (= lt!1755187 (lemmaInGenMapThenLongMapContainsHash!380 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4594239 () Bool)

(declare-fun tp_is_empty!28519 () Bool)

(declare-fun tp!1340249 () Bool)

(assert (=> b!4594239 (= e!2865538 (and tp_is_empty!28517 tp_is_empty!28519 tp!1340249))))

(declare-fun b!4594240 () Bool)

(assert (=> b!4594240 (= e!2865540 e!2865541)))

(declare-fun res!1921178 () Bool)

(assert (=> b!4594240 (=> (not res!1921178) (not e!2865541))))

(assert (=> b!4594240 (= res!1921178 (= lt!1755183 hash!344))))

(declare-fun hash!3187 (Hashable!5705 K!12415) (_ BitVec 64))

(assert (=> b!4594240 (= lt!1755183 (hash!3187 hashF!1107 key!3287))))

(declare-fun b!4594241 () Bool)

(declare-fun res!1921179 () Bool)

(assert (=> b!4594241 (=> (not res!1921179) (not e!2865541))))

(declare-fun allKeysSameHash!1162 (List!51170 (_ BitVec 64) Hashable!5705) Bool)

(assert (=> b!4594241 (= res!1921179 (allKeysSameHash!1162 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4594242 () Bool)

(assert (=> b!4594242 (= e!2865536 e!2865537)))

(declare-fun res!1921184 () Bool)

(assert (=> b!4594242 (=> res!1921184 e!2865537)))

(assert (=> b!4594242 (= res!1921184 (not (noDuplicateKeys!1306 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(assert (=> b!4594242 (contains!13979 (extractMap!1366 lt!1755179) key!3287)))

(declare-fun lt!1755188 () Unit!107680)

(declare-fun lemmaListContainsThenExtractedMapContains!240 (ListLongMap!3259 K!12415 Hashable!5705) Unit!107680)

(assert (=> b!4594242 (= lt!1755188 (lemmaListContainsThenExtractedMapContains!240 (ListLongMap!3260 lt!1755179) key!3287 hashF!1107))))

(assert (= (and start!458060 res!1921181) b!4594229))

(assert (= (and b!4594229 res!1921188) b!4594232))

(assert (= (and b!4594232 res!1921180) b!4594240))

(assert (= (and b!4594240 res!1921178) b!4594241))

(assert (= (and b!4594241 res!1921179) b!4594238))

(assert (= (and b!4594238 (not res!1921186)) b!4594230))

(assert (= (and b!4594230 (not res!1921182)) b!4594231))

(assert (= (and b!4594231 (not res!1921187)) b!4594236))

(assert (= (and b!4594236 c!786752) b!4594237))

(assert (= (and b!4594236 (not c!786752)) b!4594235))

(assert (= (and b!4594236 (not res!1921183)) b!4594234))

(assert (= (and b!4594234 (not res!1921185)) b!4594242))

(assert (= (and b!4594242 (not res!1921184)) b!4594233))

(assert (= start!458060 b!4594228))

(assert (= (and start!458060 ((_ is Cons!51046) newBucket!178)) b!4594239))

(declare-fun m!5418185 () Bool)

(assert (=> b!4594237 m!5418185))

(declare-fun m!5418187 () Bool)

(assert (=> b!4594230 m!5418187))

(declare-fun m!5418189 () Bool)

(assert (=> b!4594240 m!5418189))

(declare-fun m!5418191 () Bool)

(assert (=> start!458060 m!5418191))

(declare-fun m!5418193 () Bool)

(assert (=> start!458060 m!5418193))

(declare-fun m!5418195 () Bool)

(assert (=> b!4594241 m!5418195))

(declare-fun m!5418197 () Bool)

(assert (=> b!4594229 m!5418197))

(declare-fun m!5418199 () Bool)

(assert (=> b!4594238 m!5418199))

(declare-fun m!5418201 () Bool)

(assert (=> b!4594238 m!5418201))

(declare-fun m!5418203 () Bool)

(assert (=> b!4594238 m!5418203))

(declare-fun m!5418205 () Bool)

(assert (=> b!4594238 m!5418205))

(declare-fun m!5418207 () Bool)

(assert (=> b!4594238 m!5418207))

(declare-fun m!5418209 () Bool)

(assert (=> b!4594238 m!5418209))

(declare-fun m!5418211 () Bool)

(assert (=> b!4594238 m!5418211))

(declare-fun m!5418213 () Bool)

(assert (=> b!4594234 m!5418213))

(declare-fun m!5418215 () Bool)

(assert (=> b!4594236 m!5418215))

(declare-fun m!5418217 () Bool)

(assert (=> b!4594242 m!5418217))

(declare-fun m!5418219 () Bool)

(assert (=> b!4594242 m!5418219))

(assert (=> b!4594242 m!5418219))

(declare-fun m!5418221 () Bool)

(assert (=> b!4594242 m!5418221))

(declare-fun m!5418223 () Bool)

(assert (=> b!4594242 m!5418223))

(declare-fun m!5418225 () Bool)

(assert (=> b!4594233 m!5418225))

(declare-fun m!5418227 () Bool)

(assert (=> b!4594232 m!5418227))

(assert (=> b!4594232 m!5418227))

(declare-fun m!5418229 () Bool)

(assert (=> b!4594232 m!5418229))

(check-sat (not b!4594234) (not b!4594237) (not b!4594230) (not b!4594233) (not b!4594238) tp_is_empty!28519 (not start!458060) (not b!4594232) (not b!4594242) (not b!4594229) (not b!4594240) (not b!4594241) (not b!4594236) tp_is_empty!28517 (not b!4594239) (not b!4594228))
(check-sat)
(get-model)

(declare-fun d!1445815 () Bool)

(declare-fun res!1921193 () Bool)

(declare-fun e!2865549 () Bool)

(assert (=> d!1445815 (=> res!1921193 e!2865549)))

(assert (=> d!1445815 (= res!1921193 ((_ is Nil!51047) (toList!4627 lm!1477)))))

(assert (=> d!1445815 (= (forall!10572 (toList!4627 lm!1477) lambda!185400) e!2865549)))

(declare-fun b!4594247 () Bool)

(declare-fun e!2865550 () Bool)

(assert (=> b!4594247 (= e!2865549 e!2865550)))

(declare-fun res!1921194 () Bool)

(assert (=> b!4594247 (=> (not res!1921194) (not e!2865550))))

(declare-fun dynLambda!21382 (Int tuple2!51676) Bool)

(assert (=> b!4594247 (= res!1921194 (dynLambda!21382 lambda!185400 (h!57003 (toList!4627 lm!1477))))))

(declare-fun b!4594248 () Bool)

(assert (=> b!4594248 (= e!2865550 (forall!10572 (t!358165 (toList!4627 lm!1477)) lambda!185400))))

(assert (= (and d!1445815 (not res!1921193)) b!4594247))

(assert (= (and b!4594247 res!1921194) b!4594248))

(declare-fun b_lambda!168957 () Bool)

(assert (=> (not b_lambda!168957) (not b!4594247)))

(declare-fun m!5418231 () Bool)

(assert (=> b!4594247 m!5418231))

(declare-fun m!5418233 () Bool)

(assert (=> b!4594248 m!5418233))

(assert (=> start!458060 d!1445815))

(declare-fun d!1445819 () Bool)

(declare-fun isStrictlySorted!532 (List!51171) Bool)

(assert (=> d!1445819 (= (inv!66599 lm!1477) (isStrictlySorted!532 (toList!4627 lm!1477)))))

(declare-fun bs!1008725 () Bool)

(assert (= bs!1008725 d!1445819))

(declare-fun m!5418239 () Bool)

(assert (=> bs!1008725 m!5418239))

(assert (=> start!458060 d!1445819))

(declare-fun bs!1008727 () Bool)

(declare-fun d!1445825 () Bool)

(assert (= bs!1008727 (and d!1445825 start!458060)))

(declare-fun lambda!185403 () Int)

(assert (=> bs!1008727 (= lambda!185403 lambda!185400)))

(assert (=> d!1445825 (contains!13981 lm!1477 (hash!3187 hashF!1107 key!3287))))

(declare-fun lt!1755195 () Unit!107680)

(declare-fun choose!30730 (ListLongMap!3259 K!12415 Hashable!5705) Unit!107680)

(assert (=> d!1445825 (= lt!1755195 (choose!30730 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1445825 (forall!10572 (toList!4627 lm!1477) lambda!185403)))

(assert (=> d!1445825 (= (lemmaInGenMapThenLongMapContainsHash!380 lm!1477 key!3287 hashF!1107) lt!1755195)))

(declare-fun bs!1008728 () Bool)

(assert (= bs!1008728 d!1445825))

(assert (=> bs!1008728 m!5418189))

(assert (=> bs!1008728 m!5418189))

(declare-fun m!5418259 () Bool)

(assert (=> bs!1008728 m!5418259))

(declare-fun m!5418261 () Bool)

(assert (=> bs!1008728 m!5418261))

(declare-fun m!5418263 () Bool)

(assert (=> bs!1008728 m!5418263))

(assert (=> b!4594238 d!1445825))

(declare-fun d!1445837 () Bool)

(declare-datatypes ((Option!11374 0))(
  ( (None!11373) (Some!11373 (v!45323 List!51170)) )
))
(declare-fun get!16865 (Option!11374) List!51170)

(declare-fun getValueByKey!1294 (List!51171 (_ BitVec 64)) Option!11374)

(assert (=> d!1445837 (= (apply!12043 lm!1477 hash!344) (get!16865 (getValueByKey!1294 (toList!4627 lm!1477) hash!344)))))

(declare-fun bs!1008729 () Bool)

(assert (= bs!1008729 d!1445837))

(declare-fun m!5418265 () Bool)

(assert (=> bs!1008729 m!5418265))

(assert (=> bs!1008729 m!5418265))

(declare-fun m!5418267 () Bool)

(assert (=> bs!1008729 m!5418267))

(assert (=> b!4594238 d!1445837))

(declare-fun d!1445839 () Bool)

(assert (=> d!1445839 (contains!13980 (toList!4627 lm!1477) (tuple2!51677 hash!344 lt!1755189))))

(declare-fun lt!1755214 () Unit!107680)

(declare-fun choose!30731 (List!51171 (_ BitVec 64) List!51170) Unit!107680)

(assert (=> d!1445839 (= lt!1755214 (choose!30731 (toList!4627 lm!1477) hash!344 lt!1755189))))

(declare-fun e!2865590 () Bool)

(assert (=> d!1445839 e!2865590))

(declare-fun res!1921224 () Bool)

(assert (=> d!1445839 (=> (not res!1921224) (not e!2865590))))

(assert (=> d!1445839 (= res!1921224 (isStrictlySorted!532 (toList!4627 lm!1477)))))

(assert (=> d!1445839 (= (lemmaGetValueByKeyImpliesContainsTuple!816 (toList!4627 lm!1477) hash!344 lt!1755189) lt!1755214)))

(declare-fun b!4594298 () Bool)

(assert (=> b!4594298 (= e!2865590 (= (getValueByKey!1294 (toList!4627 lm!1477) hash!344) (Some!11373 lt!1755189)))))

(assert (= (and d!1445839 res!1921224) b!4594298))

(declare-fun m!5418269 () Bool)

(assert (=> d!1445839 m!5418269))

(declare-fun m!5418271 () Bool)

(assert (=> d!1445839 m!5418271))

(assert (=> d!1445839 m!5418239))

(assert (=> b!4594298 m!5418265))

(assert (=> b!4594238 d!1445839))

(declare-fun d!1445841 () Bool)

(assert (=> d!1445841 (dynLambda!21382 lambda!185400 lt!1755186)))

(declare-fun lt!1755225 () Unit!107680)

(declare-fun choose!30732 (List!51171 Int tuple2!51676) Unit!107680)

(assert (=> d!1445841 (= lt!1755225 (choose!30732 (toList!4627 lm!1477) lambda!185400 lt!1755186))))

(declare-fun e!2865607 () Bool)

(assert (=> d!1445841 e!2865607))

(declare-fun res!1921236 () Bool)

(assert (=> d!1445841 (=> (not res!1921236) (not e!2865607))))

(assert (=> d!1445841 (= res!1921236 (forall!10572 (toList!4627 lm!1477) lambda!185400))))

(assert (=> d!1445841 (= (forallContained!2827 (toList!4627 lm!1477) lambda!185400 lt!1755186) lt!1755225)))

(declare-fun b!4594320 () Bool)

(assert (=> b!4594320 (= e!2865607 (contains!13980 (toList!4627 lm!1477) lt!1755186))))

(assert (= (and d!1445841 res!1921236) b!4594320))

(declare-fun b_lambda!168961 () Bool)

(assert (=> (not b_lambda!168961) (not d!1445841)))

(declare-fun m!5418293 () Bool)

(assert (=> d!1445841 m!5418293))

(declare-fun m!5418295 () Bool)

(assert (=> d!1445841 m!5418295))

(assert (=> d!1445841 m!5418191))

(assert (=> b!4594320 m!5418205))

(assert (=> b!4594238 d!1445841))

(declare-fun b!4594337 () Bool)

(declare-fun e!2865616 () List!51170)

(assert (=> b!4594337 (= e!2865616 (Cons!51046 (h!57002 lt!1755189) (removePairForKey!931 (t!358164 lt!1755189) key!3287)))))

(declare-fun b!4594336 () Bool)

(declare-fun e!2865615 () List!51170)

(assert (=> b!4594336 (= e!2865615 e!2865616)))

(declare-fun c!786776 () Bool)

(assert (=> b!4594336 (= c!786776 ((_ is Cons!51046) lt!1755189))))

(declare-fun b!4594335 () Bool)

(assert (=> b!4594335 (= e!2865615 (t!358164 lt!1755189))))

(declare-fun b!4594338 () Bool)

(assert (=> b!4594338 (= e!2865616 Nil!51046)))

(declare-fun d!1445845 () Bool)

(declare-fun lt!1755231 () List!51170)

(assert (=> d!1445845 (not (containsKey!2126 lt!1755231 key!3287))))

(assert (=> d!1445845 (= lt!1755231 e!2865615)))

(declare-fun c!786775 () Bool)

(assert (=> d!1445845 (= c!786775 (and ((_ is Cons!51046) lt!1755189) (= (_1!29131 (h!57002 lt!1755189)) key!3287)))))

(assert (=> d!1445845 (noDuplicateKeys!1306 lt!1755189)))

(assert (=> d!1445845 (= (removePairForKey!931 lt!1755189 key!3287) lt!1755231)))

(assert (= (and d!1445845 c!786775) b!4594335))

(assert (= (and d!1445845 (not c!786775)) b!4594336))

(assert (= (and b!4594336 c!786776) b!4594337))

(assert (= (and b!4594336 (not c!786776)) b!4594338))

(declare-fun m!5418305 () Bool)

(assert (=> b!4594337 m!5418305))

(declare-fun m!5418307 () Bool)

(assert (=> d!1445845 m!5418307))

(declare-fun m!5418309 () Bool)

(assert (=> d!1445845 m!5418309))

(assert (=> b!4594238 d!1445845))

(declare-fun d!1445849 () Bool)

(declare-fun e!2865621 () Bool)

(assert (=> d!1445849 e!2865621))

(declare-fun res!1921239 () Bool)

(assert (=> d!1445849 (=> res!1921239 e!2865621)))

(declare-fun lt!1755249 () Bool)

(assert (=> d!1445849 (= res!1921239 (not lt!1755249))))

(declare-fun lt!1755247 () Bool)

(assert (=> d!1445849 (= lt!1755249 lt!1755247)))

(declare-fun lt!1755248 () Unit!107680)

(declare-fun e!2865622 () Unit!107680)

(assert (=> d!1445849 (= lt!1755248 e!2865622)))

(declare-fun c!786779 () Bool)

(assert (=> d!1445849 (= c!786779 lt!1755247)))

(declare-fun containsKey!2129 (List!51171 (_ BitVec 64)) Bool)

(assert (=> d!1445849 (= lt!1755247 (containsKey!2129 (toList!4627 lm!1477) lt!1755183))))

(assert (=> d!1445849 (= (contains!13981 lm!1477 lt!1755183) lt!1755249)))

(declare-fun b!4594345 () Bool)

(declare-fun lt!1755246 () Unit!107680)

(assert (=> b!4594345 (= e!2865622 lt!1755246)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1198 (List!51171 (_ BitVec 64)) Unit!107680)

(assert (=> b!4594345 (= lt!1755246 (lemmaContainsKeyImpliesGetValueByKeyDefined!1198 (toList!4627 lm!1477) lt!1755183))))

(declare-fun isDefined!8642 (Option!11374) Bool)

(assert (=> b!4594345 (isDefined!8642 (getValueByKey!1294 (toList!4627 lm!1477) lt!1755183))))

(declare-fun b!4594346 () Bool)

(declare-fun Unit!107689 () Unit!107680)

(assert (=> b!4594346 (= e!2865622 Unit!107689)))

(declare-fun b!4594347 () Bool)

(assert (=> b!4594347 (= e!2865621 (isDefined!8642 (getValueByKey!1294 (toList!4627 lm!1477) lt!1755183)))))

(assert (= (and d!1445849 c!786779) b!4594345))

(assert (= (and d!1445849 (not c!786779)) b!4594346))

(assert (= (and d!1445849 (not res!1921239)) b!4594347))

(declare-fun m!5418325 () Bool)

(assert (=> d!1445849 m!5418325))

(declare-fun m!5418327 () Bool)

(assert (=> b!4594345 m!5418327))

(declare-fun m!5418329 () Bool)

(assert (=> b!4594345 m!5418329))

(assert (=> b!4594345 m!5418329))

(declare-fun m!5418331 () Bool)

(assert (=> b!4594345 m!5418331))

(assert (=> b!4594347 m!5418329))

(assert (=> b!4594347 m!5418329))

(assert (=> b!4594347 m!5418331))

(assert (=> b!4594238 d!1445849))

(declare-fun d!1445855 () Bool)

(declare-fun lt!1755256 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8624 (List!51171) (InoxSet tuple2!51676))

(assert (=> d!1445855 (= lt!1755256 (select (content!8624 (toList!4627 lm!1477)) lt!1755186))))

(declare-fun e!2865636 () Bool)

(assert (=> d!1445855 (= lt!1755256 e!2865636)))

(declare-fun res!1921251 () Bool)

(assert (=> d!1445855 (=> (not res!1921251) (not e!2865636))))

(assert (=> d!1445855 (= res!1921251 ((_ is Cons!51047) (toList!4627 lm!1477)))))

(assert (=> d!1445855 (= (contains!13980 (toList!4627 lm!1477) lt!1755186) lt!1755256)))

(declare-fun b!4594362 () Bool)

(declare-fun e!2865635 () Bool)

(assert (=> b!4594362 (= e!2865636 e!2865635)))

(declare-fun res!1921250 () Bool)

(assert (=> b!4594362 (=> res!1921250 e!2865635)))

(assert (=> b!4594362 (= res!1921250 (= (h!57003 (toList!4627 lm!1477)) lt!1755186))))

(declare-fun b!4594363 () Bool)

(assert (=> b!4594363 (= e!2865635 (contains!13980 (t!358165 (toList!4627 lm!1477)) lt!1755186))))

(assert (= (and d!1445855 res!1921251) b!4594362))

(assert (= (and b!4594362 (not res!1921250)) b!4594363))

(declare-fun m!5418349 () Bool)

(assert (=> d!1445855 m!5418349))

(declare-fun m!5418351 () Bool)

(assert (=> d!1445855 m!5418351))

(declare-fun m!5418353 () Bool)

(assert (=> b!4594363 m!5418353))

(assert (=> b!4594238 d!1445855))

(declare-fun bs!1008759 () Bool)

(declare-fun d!1445863 () Bool)

(assert (= bs!1008759 (and d!1445863 start!458060)))

(declare-fun lambda!185425 () Int)

(assert (=> bs!1008759 (= lambda!185425 lambda!185400)))

(declare-fun bs!1008760 () Bool)

(assert (= bs!1008760 (and d!1445863 d!1445825)))

(assert (=> bs!1008760 (= lambda!185425 lambda!185403)))

(assert (=> d!1445863 (not (contains!13979 (extractMap!1366 (toList!4627 lm!1477)) key!3287))))

(declare-fun lt!1755289 () Unit!107680)

(declare-fun choose!30733 (ListLongMap!3259 K!12415 Hashable!5705) Unit!107680)

(assert (=> d!1445863 (= lt!1755289 (choose!30733 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1445863 (forall!10572 (toList!4627 lm!1477) lambda!185425)))

(assert (=> d!1445863 (= (lemmaNotInItsHashBucketThenNotInMap!276 lm!1477 key!3287 hashF!1107) lt!1755289)))

(declare-fun bs!1008761 () Bool)

(assert (= bs!1008761 d!1445863))

(assert (=> bs!1008761 m!5418227))

(assert (=> bs!1008761 m!5418227))

(assert (=> bs!1008761 m!5418229))

(declare-fun m!5418413 () Bool)

(assert (=> bs!1008761 m!5418413))

(declare-fun m!5418415 () Bool)

(assert (=> bs!1008761 m!5418415))

(assert (=> b!4594237 d!1445863))

(declare-fun d!1445885 () Bool)

(declare-fun res!1921270 () Bool)

(declare-fun e!2865668 () Bool)

(assert (=> d!1445885 (=> res!1921270 e!2865668)))

(assert (=> d!1445885 (= res!1921270 (and ((_ is Cons!51046) (_2!29132 (h!57003 (toList!4627 lm!1477)))) (= (_1!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477))))) key!3287)))))

(assert (=> d!1445885 (= (containsKey!2126 (_2!29132 (h!57003 (toList!4627 lm!1477))) key!3287) e!2865668)))

(declare-fun b!4594412 () Bool)

(declare-fun e!2865669 () Bool)

(assert (=> b!4594412 (= e!2865668 e!2865669)))

(declare-fun res!1921271 () Bool)

(assert (=> b!4594412 (=> (not res!1921271) (not e!2865669))))

(assert (=> b!4594412 (= res!1921271 ((_ is Cons!51046) (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(declare-fun b!4594413 () Bool)

(assert (=> b!4594413 (= e!2865669 (containsKey!2126 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))) key!3287))))

(assert (= (and d!1445885 (not res!1921270)) b!4594412))

(assert (= (and b!4594412 res!1921271) b!4594413))

(declare-fun m!5418417 () Bool)

(assert (=> b!4594413 m!5418417))

(assert (=> b!4594236 d!1445885))

(declare-fun d!1445887 () Bool)

(declare-fun res!1921280 () Bool)

(declare-fun e!2865676 () Bool)

(assert (=> d!1445887 (=> res!1921280 e!2865676)))

(declare-fun e!2865678 () Bool)

(assert (=> d!1445887 (= res!1921280 e!2865678)))

(declare-fun res!1921279 () Bool)

(assert (=> d!1445887 (=> (not res!1921279) (not e!2865678))))

(assert (=> d!1445887 (= res!1921279 ((_ is Cons!51047) lt!1755179))))

(assert (=> d!1445887 (= (containsKeyBiggerList!262 lt!1755179 key!3287) e!2865676)))

(declare-fun b!4594420 () Bool)

(assert (=> b!4594420 (= e!2865678 (containsKey!2126 (_2!29132 (h!57003 lt!1755179)) key!3287))))

(declare-fun b!4594421 () Bool)

(declare-fun e!2865677 () Bool)

(assert (=> b!4594421 (= e!2865676 e!2865677)))

(declare-fun res!1921278 () Bool)

(assert (=> b!4594421 (=> (not res!1921278) (not e!2865677))))

(assert (=> b!4594421 (= res!1921278 ((_ is Cons!51047) lt!1755179))))

(declare-fun b!4594422 () Bool)

(assert (=> b!4594422 (= e!2865677 (containsKeyBiggerList!262 (t!358165 lt!1755179) key!3287))))

(assert (= (and d!1445887 res!1921279) b!4594420))

(assert (= (and d!1445887 (not res!1921280)) b!4594421))

(assert (= (and b!4594421 res!1921278) b!4594422))

(declare-fun m!5418419 () Bool)

(assert (=> b!4594420 m!5418419))

(declare-fun m!5418421 () Bool)

(assert (=> b!4594422 m!5418421))

(assert (=> b!4594234 d!1445887))

(declare-fun b!4594425 () Bool)

(declare-fun e!2865680 () List!51170)

(assert (=> b!4594425 (= e!2865680 (Cons!51046 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477)))) (removePairForKey!931 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))) key!3287)))))

(declare-fun b!4594424 () Bool)

(declare-fun e!2865679 () List!51170)

(assert (=> b!4594424 (= e!2865679 e!2865680)))

(declare-fun c!786790 () Bool)

(assert (=> b!4594424 (= c!786790 ((_ is Cons!51046) (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(declare-fun b!4594423 () Bool)

(assert (=> b!4594423 (= e!2865679 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(declare-fun b!4594426 () Bool)

(assert (=> b!4594426 (= e!2865680 Nil!51046)))

(declare-fun d!1445889 () Bool)

(declare-fun lt!1755290 () List!51170)

(assert (=> d!1445889 (not (containsKey!2126 lt!1755290 key!3287))))

(assert (=> d!1445889 (= lt!1755290 e!2865679)))

(declare-fun c!786789 () Bool)

(assert (=> d!1445889 (= c!786789 (and ((_ is Cons!51046) (_2!29132 (h!57003 (toList!4627 lm!1477)))) (= (_1!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477))))) key!3287)))))

(assert (=> d!1445889 (noDuplicateKeys!1306 (_2!29132 (h!57003 (toList!4627 lm!1477))))))

(assert (=> d!1445889 (= (removePairForKey!931 (_2!29132 (h!57003 (toList!4627 lm!1477))) key!3287) lt!1755290)))

(assert (= (and d!1445889 c!786789) b!4594423))

(assert (= (and d!1445889 (not c!786789)) b!4594424))

(assert (= (and b!4594424 c!786790) b!4594425))

(assert (= (and b!4594424 (not c!786790)) b!4594426))

(declare-fun m!5418423 () Bool)

(assert (=> b!4594425 m!5418423))

(declare-fun m!5418425 () Bool)

(assert (=> d!1445889 m!5418425))

(assert (=> d!1445889 m!5418217))

(assert (=> b!4594233 d!1445889))

(declare-fun b!4594445 () Bool)

(declare-fun e!2865698 () Unit!107680)

(declare-fun lt!1755312 () Unit!107680)

(assert (=> b!4594445 (= e!2865698 lt!1755312)))

(declare-fun lt!1755310 () Unit!107680)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1199 (List!51170 K!12415) Unit!107680)

(assert (=> b!4594445 (= lt!1755310 (lemmaContainsKeyImpliesGetValueByKeyDefined!1199 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(declare-datatypes ((Option!11375 0))(
  ( (None!11374) (Some!11374 (v!45324 V!12661)) )
))
(declare-fun isDefined!8643 (Option!11375) Bool)

(declare-fun getValueByKey!1295 (List!51170 K!12415) Option!11375)

(assert (=> b!4594445 (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(declare-fun lt!1755308 () Unit!107680)

(assert (=> b!4594445 (= lt!1755308 lt!1755310)))

(declare-fun lemmaInListThenGetKeysListContains!561 (List!51170 K!12415) Unit!107680)

(assert (=> b!4594445 (= lt!1755312 (lemmaInListThenGetKeysListContains!561 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(declare-fun call!320658 () Bool)

(assert (=> b!4594445 call!320658))

(declare-fun b!4594446 () Bool)

(declare-fun e!2865697 () Bool)

(declare-datatypes ((List!51173 0))(
  ( (Nil!51049) (Cons!51049 (h!57007 K!12415) (t!358167 List!51173)) )
))
(declare-fun contains!13983 (List!51173 K!12415) Bool)

(declare-fun keys!17864 (ListMap!3889) List!51173)

(assert (=> b!4594446 (= e!2865697 (not (contains!13983 (keys!17864 (extractMap!1366 (toList!4627 lm!1477))) key!3287)))))

(declare-fun b!4594447 () Bool)

(declare-fun e!2865693 () List!51173)

(assert (=> b!4594447 (= e!2865693 (keys!17864 (extractMap!1366 (toList!4627 lm!1477))))))

(declare-fun b!4594448 () Bool)

(declare-fun e!2865695 () Bool)

(assert (=> b!4594448 (= e!2865695 (contains!13983 (keys!17864 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(declare-fun b!4594449 () Bool)

(declare-fun e!2865696 () Unit!107680)

(declare-fun Unit!107690 () Unit!107680)

(assert (=> b!4594449 (= e!2865696 Unit!107690)))

(declare-fun d!1445891 () Bool)

(declare-fun e!2865694 () Bool)

(assert (=> d!1445891 e!2865694))

(declare-fun res!1921288 () Bool)

(assert (=> d!1445891 (=> res!1921288 e!2865694)))

(assert (=> d!1445891 (= res!1921288 e!2865697)))

(declare-fun res!1921287 () Bool)

(assert (=> d!1445891 (=> (not res!1921287) (not e!2865697))))

(declare-fun lt!1755314 () Bool)

(assert (=> d!1445891 (= res!1921287 (not lt!1755314))))

(declare-fun lt!1755307 () Bool)

(assert (=> d!1445891 (= lt!1755314 lt!1755307)))

(declare-fun lt!1755309 () Unit!107680)

(assert (=> d!1445891 (= lt!1755309 e!2865698)))

(declare-fun c!786798 () Bool)

(assert (=> d!1445891 (= c!786798 lt!1755307)))

(declare-fun containsKey!2130 (List!51170 K!12415) Bool)

(assert (=> d!1445891 (= lt!1755307 (containsKey!2130 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(assert (=> d!1445891 (= (contains!13979 (extractMap!1366 (toList!4627 lm!1477)) key!3287) lt!1755314)))

(declare-fun b!4594450 () Bool)

(declare-fun getKeysList!565 (List!51170) List!51173)

(assert (=> b!4594450 (= e!2865693 (getKeysList!565 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))))

(declare-fun b!4594451 () Bool)

(assert (=> b!4594451 false))

(declare-fun lt!1755311 () Unit!107680)

(declare-fun lt!1755313 () Unit!107680)

(assert (=> b!4594451 (= lt!1755311 lt!1755313)))

(assert (=> b!4594451 (containsKey!2130 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!564 (List!51170 K!12415) Unit!107680)

(assert (=> b!4594451 (= lt!1755313 (lemmaInGetKeysListThenContainsKey!564 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(declare-fun Unit!107691 () Unit!107680)

(assert (=> b!4594451 (= e!2865696 Unit!107691)))

(declare-fun bm!320653 () Bool)

(assert (=> bm!320653 (= call!320658 (contains!13983 e!2865693 key!3287))))

(declare-fun c!786797 () Bool)

(assert (=> bm!320653 (= c!786797 c!786798)))

(declare-fun b!4594452 () Bool)

(assert (=> b!4594452 (= e!2865694 e!2865695)))

(declare-fun res!1921289 () Bool)

(assert (=> b!4594452 (=> (not res!1921289) (not e!2865695))))

(assert (=> b!4594452 (= res!1921289 (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287)))))

(declare-fun b!4594453 () Bool)

(assert (=> b!4594453 (= e!2865698 e!2865696)))

(declare-fun c!786799 () Bool)

(assert (=> b!4594453 (= c!786799 call!320658)))

(assert (= (and d!1445891 c!786798) b!4594445))

(assert (= (and d!1445891 (not c!786798)) b!4594453))

(assert (= (and b!4594453 c!786799) b!4594451))

(assert (= (and b!4594453 (not c!786799)) b!4594449))

(assert (= (or b!4594445 b!4594453) bm!320653))

(assert (= (and bm!320653 c!786797) b!4594450))

(assert (= (and bm!320653 (not c!786797)) b!4594447))

(assert (= (and d!1445891 res!1921287) b!4594446))

(assert (= (and d!1445891 (not res!1921288)) b!4594452))

(assert (= (and b!4594452 res!1921289) b!4594448))

(declare-fun m!5418427 () Bool)

(assert (=> bm!320653 m!5418427))

(declare-fun m!5418429 () Bool)

(assert (=> b!4594450 m!5418429))

(assert (=> b!4594446 m!5418227))

(declare-fun m!5418431 () Bool)

(assert (=> b!4594446 m!5418431))

(assert (=> b!4594446 m!5418431))

(declare-fun m!5418433 () Bool)

(assert (=> b!4594446 m!5418433))

(declare-fun m!5418435 () Bool)

(assert (=> b!4594452 m!5418435))

(assert (=> b!4594452 m!5418435))

(declare-fun m!5418437 () Bool)

(assert (=> b!4594452 m!5418437))

(assert (=> b!4594448 m!5418227))

(assert (=> b!4594448 m!5418431))

(assert (=> b!4594448 m!5418431))

(assert (=> b!4594448 m!5418433))

(declare-fun m!5418439 () Bool)

(assert (=> b!4594451 m!5418439))

(declare-fun m!5418441 () Bool)

(assert (=> b!4594451 m!5418441))

(assert (=> b!4594447 m!5418227))

(assert (=> b!4594447 m!5418431))

(assert (=> d!1445891 m!5418439))

(declare-fun m!5418443 () Bool)

(assert (=> b!4594445 m!5418443))

(assert (=> b!4594445 m!5418435))

(assert (=> b!4594445 m!5418435))

(assert (=> b!4594445 m!5418437))

(declare-fun m!5418445 () Bool)

(assert (=> b!4594445 m!5418445))

(assert (=> b!4594232 d!1445891))

(declare-fun bs!1008762 () Bool)

(declare-fun d!1445893 () Bool)

(assert (= bs!1008762 (and d!1445893 start!458060)))

(declare-fun lambda!185428 () Int)

(assert (=> bs!1008762 (= lambda!185428 lambda!185400)))

(declare-fun bs!1008763 () Bool)

(assert (= bs!1008763 (and d!1445893 d!1445825)))

(assert (=> bs!1008763 (= lambda!185428 lambda!185403)))

(declare-fun bs!1008764 () Bool)

(assert (= bs!1008764 (and d!1445893 d!1445863)))

(assert (=> bs!1008764 (= lambda!185428 lambda!185425)))

(declare-fun lt!1755317 () ListMap!3889)

(declare-fun invariantList!1116 (List!51170) Bool)

(assert (=> d!1445893 (invariantList!1116 (toList!4628 lt!1755317))))

(declare-fun e!2865701 () ListMap!3889)

(assert (=> d!1445893 (= lt!1755317 e!2865701)))

(declare-fun c!786802 () Bool)

(assert (=> d!1445893 (= c!786802 ((_ is Cons!51047) (toList!4627 lm!1477)))))

(assert (=> d!1445893 (forall!10572 (toList!4627 lm!1477) lambda!185428)))

(assert (=> d!1445893 (= (extractMap!1366 (toList!4627 lm!1477)) lt!1755317)))

(declare-fun b!4594458 () Bool)

(declare-fun addToMapMapFromBucket!806 (List!51170 ListMap!3889) ListMap!3889)

(assert (=> b!4594458 (= e!2865701 (addToMapMapFromBucket!806 (_2!29132 (h!57003 (toList!4627 lm!1477))) (extractMap!1366 (t!358165 (toList!4627 lm!1477)))))))

(declare-fun b!4594459 () Bool)

(assert (=> b!4594459 (= e!2865701 (ListMap!3890 Nil!51046))))

(assert (= (and d!1445893 c!786802) b!4594458))

(assert (= (and d!1445893 (not c!786802)) b!4594459))

(declare-fun m!5418447 () Bool)

(assert (=> d!1445893 m!5418447))

(declare-fun m!5418449 () Bool)

(assert (=> d!1445893 m!5418449))

(declare-fun m!5418451 () Bool)

(assert (=> b!4594458 m!5418451))

(assert (=> b!4594458 m!5418451))

(declare-fun m!5418453 () Bool)

(assert (=> b!4594458 m!5418453))

(assert (=> b!4594232 d!1445893))

(declare-fun d!1445895 () Bool)

(declare-fun res!1921294 () Bool)

(declare-fun e!2865706 () Bool)

(assert (=> d!1445895 (=> res!1921294 e!2865706)))

(assert (=> d!1445895 (= res!1921294 (not ((_ is Cons!51046) (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(assert (=> d!1445895 (= (noDuplicateKeys!1306 (_2!29132 (h!57003 (toList!4627 lm!1477)))) e!2865706)))

(declare-fun b!4594464 () Bool)

(declare-fun e!2865707 () Bool)

(assert (=> b!4594464 (= e!2865706 e!2865707)))

(declare-fun res!1921295 () Bool)

(assert (=> b!4594464 (=> (not res!1921295) (not e!2865707))))

(assert (=> b!4594464 (= res!1921295 (not (containsKey!2126 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))) (_1!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))))

(declare-fun b!4594465 () Bool)

(assert (=> b!4594465 (= e!2865707 (noDuplicateKeys!1306 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(assert (= (and d!1445895 (not res!1921294)) b!4594464))

(assert (= (and b!4594464 res!1921295) b!4594465))

(declare-fun m!5418455 () Bool)

(assert (=> b!4594464 m!5418455))

(declare-fun m!5418457 () Bool)

(assert (=> b!4594465 m!5418457))

(assert (=> b!4594242 d!1445895))

(declare-fun b!4594466 () Bool)

(declare-fun e!2865713 () Unit!107680)

(declare-fun lt!1755323 () Unit!107680)

(assert (=> b!4594466 (= e!2865713 lt!1755323)))

(declare-fun lt!1755321 () Unit!107680)

(assert (=> b!4594466 (= lt!1755321 (lemmaContainsKeyImpliesGetValueByKeyDefined!1199 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))

(assert (=> b!4594466 (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))

(declare-fun lt!1755319 () Unit!107680)

(assert (=> b!4594466 (= lt!1755319 lt!1755321)))

(assert (=> b!4594466 (= lt!1755323 (lemmaInListThenGetKeysListContains!561 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))

(declare-fun call!320659 () Bool)

(assert (=> b!4594466 call!320659))

(declare-fun b!4594467 () Bool)

(declare-fun e!2865712 () Bool)

(assert (=> b!4594467 (= e!2865712 (not (contains!13983 (keys!17864 (extractMap!1366 lt!1755179)) key!3287)))))

(declare-fun b!4594468 () Bool)

(declare-fun e!2865708 () List!51173)

(assert (=> b!4594468 (= e!2865708 (keys!17864 (extractMap!1366 lt!1755179)))))

(declare-fun b!4594469 () Bool)

(declare-fun e!2865710 () Bool)

(assert (=> b!4594469 (= e!2865710 (contains!13983 (keys!17864 (extractMap!1366 lt!1755179)) key!3287))))

(declare-fun b!4594470 () Bool)

(declare-fun e!2865711 () Unit!107680)

(declare-fun Unit!107692 () Unit!107680)

(assert (=> b!4594470 (= e!2865711 Unit!107692)))

(declare-fun d!1445897 () Bool)

(declare-fun e!2865709 () Bool)

(assert (=> d!1445897 e!2865709))

(declare-fun res!1921297 () Bool)

(assert (=> d!1445897 (=> res!1921297 e!2865709)))

(assert (=> d!1445897 (= res!1921297 e!2865712)))

(declare-fun res!1921296 () Bool)

(assert (=> d!1445897 (=> (not res!1921296) (not e!2865712))))

(declare-fun lt!1755325 () Bool)

(assert (=> d!1445897 (= res!1921296 (not lt!1755325))))

(declare-fun lt!1755318 () Bool)

(assert (=> d!1445897 (= lt!1755325 lt!1755318)))

(declare-fun lt!1755320 () Unit!107680)

(assert (=> d!1445897 (= lt!1755320 e!2865713)))

(declare-fun c!786804 () Bool)

(assert (=> d!1445897 (= c!786804 lt!1755318)))

(assert (=> d!1445897 (= lt!1755318 (containsKey!2130 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))

(assert (=> d!1445897 (= (contains!13979 (extractMap!1366 lt!1755179) key!3287) lt!1755325)))

(declare-fun b!4594471 () Bool)

(assert (=> b!4594471 (= e!2865708 (getKeysList!565 (toList!4628 (extractMap!1366 lt!1755179))))))

(declare-fun b!4594472 () Bool)

(assert (=> b!4594472 false))

(declare-fun lt!1755322 () Unit!107680)

(declare-fun lt!1755324 () Unit!107680)

(assert (=> b!4594472 (= lt!1755322 lt!1755324)))

(assert (=> b!4594472 (containsKey!2130 (toList!4628 (extractMap!1366 lt!1755179)) key!3287)))

(assert (=> b!4594472 (= lt!1755324 (lemmaInGetKeysListThenContainsKey!564 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))

(declare-fun Unit!107693 () Unit!107680)

(assert (=> b!4594472 (= e!2865711 Unit!107693)))

(declare-fun bm!320654 () Bool)

(assert (=> bm!320654 (= call!320659 (contains!13983 e!2865708 key!3287))))

(declare-fun c!786803 () Bool)

(assert (=> bm!320654 (= c!786803 c!786804)))

(declare-fun b!4594473 () Bool)

(assert (=> b!4594473 (= e!2865709 e!2865710)))

(declare-fun res!1921298 () Bool)

(assert (=> b!4594473 (=> (not res!1921298) (not e!2865710))))

(assert (=> b!4594473 (= res!1921298 (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 lt!1755179)) key!3287)))))

(declare-fun b!4594474 () Bool)

(assert (=> b!4594474 (= e!2865713 e!2865711)))

(declare-fun c!786805 () Bool)

(assert (=> b!4594474 (= c!786805 call!320659)))

(assert (= (and d!1445897 c!786804) b!4594466))

(assert (= (and d!1445897 (not c!786804)) b!4594474))

(assert (= (and b!4594474 c!786805) b!4594472))

(assert (= (and b!4594474 (not c!786805)) b!4594470))

(assert (= (or b!4594466 b!4594474) bm!320654))

(assert (= (and bm!320654 c!786803) b!4594471))

(assert (= (and bm!320654 (not c!786803)) b!4594468))

(assert (= (and d!1445897 res!1921296) b!4594467))

(assert (= (and d!1445897 (not res!1921297)) b!4594473))

(assert (= (and b!4594473 res!1921298) b!4594469))

(declare-fun m!5418459 () Bool)

(assert (=> bm!320654 m!5418459))

(declare-fun m!5418461 () Bool)

(assert (=> b!4594471 m!5418461))

(assert (=> b!4594467 m!5418219))

(declare-fun m!5418463 () Bool)

(assert (=> b!4594467 m!5418463))

(assert (=> b!4594467 m!5418463))

(declare-fun m!5418465 () Bool)

(assert (=> b!4594467 m!5418465))

(declare-fun m!5418467 () Bool)

(assert (=> b!4594473 m!5418467))

(assert (=> b!4594473 m!5418467))

(declare-fun m!5418469 () Bool)

(assert (=> b!4594473 m!5418469))

(assert (=> b!4594469 m!5418219))

(assert (=> b!4594469 m!5418463))

(assert (=> b!4594469 m!5418463))

(assert (=> b!4594469 m!5418465))

(declare-fun m!5418471 () Bool)

(assert (=> b!4594472 m!5418471))

(declare-fun m!5418473 () Bool)

(assert (=> b!4594472 m!5418473))

(assert (=> b!4594468 m!5418219))

(assert (=> b!4594468 m!5418463))

(assert (=> d!1445897 m!5418471))

(declare-fun m!5418475 () Bool)

(assert (=> b!4594466 m!5418475))

(assert (=> b!4594466 m!5418467))

(assert (=> b!4594466 m!5418467))

(assert (=> b!4594466 m!5418469))

(declare-fun m!5418477 () Bool)

(assert (=> b!4594466 m!5418477))

(assert (=> b!4594242 d!1445897))

(declare-fun bs!1008765 () Bool)

(declare-fun d!1445899 () Bool)

(assert (= bs!1008765 (and d!1445899 start!458060)))

(declare-fun lambda!185429 () Int)

(assert (=> bs!1008765 (= lambda!185429 lambda!185400)))

(declare-fun bs!1008766 () Bool)

(assert (= bs!1008766 (and d!1445899 d!1445825)))

(assert (=> bs!1008766 (= lambda!185429 lambda!185403)))

(declare-fun bs!1008767 () Bool)

(assert (= bs!1008767 (and d!1445899 d!1445863)))

(assert (=> bs!1008767 (= lambda!185429 lambda!185425)))

(declare-fun bs!1008768 () Bool)

(assert (= bs!1008768 (and d!1445899 d!1445893)))

(assert (=> bs!1008768 (= lambda!185429 lambda!185428)))

(declare-fun lt!1755326 () ListMap!3889)

(assert (=> d!1445899 (invariantList!1116 (toList!4628 lt!1755326))))

(declare-fun e!2865714 () ListMap!3889)

(assert (=> d!1445899 (= lt!1755326 e!2865714)))

(declare-fun c!786806 () Bool)

(assert (=> d!1445899 (= c!786806 ((_ is Cons!51047) lt!1755179))))

(assert (=> d!1445899 (forall!10572 lt!1755179 lambda!185429)))

(assert (=> d!1445899 (= (extractMap!1366 lt!1755179) lt!1755326)))

(declare-fun b!4594475 () Bool)

(assert (=> b!4594475 (= e!2865714 (addToMapMapFromBucket!806 (_2!29132 (h!57003 lt!1755179)) (extractMap!1366 (t!358165 lt!1755179))))))

(declare-fun b!4594476 () Bool)

(assert (=> b!4594476 (= e!2865714 (ListMap!3890 Nil!51046))))

(assert (= (and d!1445899 c!786806) b!4594475))

(assert (= (and d!1445899 (not c!786806)) b!4594476))

(declare-fun m!5418479 () Bool)

(assert (=> d!1445899 m!5418479))

(declare-fun m!5418481 () Bool)

(assert (=> d!1445899 m!5418481))

(declare-fun m!5418483 () Bool)

(assert (=> b!4594475 m!5418483))

(assert (=> b!4594475 m!5418483))

(declare-fun m!5418485 () Bool)

(assert (=> b!4594475 m!5418485))

(assert (=> b!4594242 d!1445899))

(declare-fun bs!1008769 () Bool)

(declare-fun d!1445901 () Bool)

(assert (= bs!1008769 (and d!1445901 d!1445893)))

(declare-fun lambda!185432 () Int)

(assert (=> bs!1008769 (= lambda!185432 lambda!185428)))

(declare-fun bs!1008770 () Bool)

(assert (= bs!1008770 (and d!1445901 start!458060)))

(assert (=> bs!1008770 (= lambda!185432 lambda!185400)))

(declare-fun bs!1008771 () Bool)

(assert (= bs!1008771 (and d!1445901 d!1445863)))

(assert (=> bs!1008771 (= lambda!185432 lambda!185425)))

(declare-fun bs!1008772 () Bool)

(assert (= bs!1008772 (and d!1445901 d!1445899)))

(assert (=> bs!1008772 (= lambda!185432 lambda!185429)))

(declare-fun bs!1008773 () Bool)

(assert (= bs!1008773 (and d!1445901 d!1445825)))

(assert (=> bs!1008773 (= lambda!185432 lambda!185403)))

(assert (=> d!1445901 (contains!13979 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179))) key!3287)))

(declare-fun lt!1755329 () Unit!107680)

(declare-fun choose!30734 (ListLongMap!3259 K!12415 Hashable!5705) Unit!107680)

(assert (=> d!1445901 (= lt!1755329 (choose!30734 (ListLongMap!3260 lt!1755179) key!3287 hashF!1107))))

(assert (=> d!1445901 (forall!10572 (toList!4627 (ListLongMap!3260 lt!1755179)) lambda!185432)))

(assert (=> d!1445901 (= (lemmaListContainsThenExtractedMapContains!240 (ListLongMap!3260 lt!1755179) key!3287 hashF!1107) lt!1755329)))

(declare-fun bs!1008774 () Bool)

(assert (= bs!1008774 d!1445901))

(declare-fun m!5418487 () Bool)

(assert (=> bs!1008774 m!5418487))

(assert (=> bs!1008774 m!5418487))

(declare-fun m!5418489 () Bool)

(assert (=> bs!1008774 m!5418489))

(declare-fun m!5418491 () Bool)

(assert (=> bs!1008774 m!5418491))

(declare-fun m!5418493 () Bool)

(assert (=> bs!1008774 m!5418493))

(assert (=> b!4594242 d!1445901))

(declare-fun d!1445903 () Bool)

(declare-fun res!1921299 () Bool)

(declare-fun e!2865715 () Bool)

(assert (=> d!1445903 (=> res!1921299 e!2865715)))

(assert (=> d!1445903 (= res!1921299 (not ((_ is Cons!51046) newBucket!178)))))

(assert (=> d!1445903 (= (noDuplicateKeys!1306 newBucket!178) e!2865715)))

(declare-fun b!4594477 () Bool)

(declare-fun e!2865716 () Bool)

(assert (=> b!4594477 (= e!2865715 e!2865716)))

(declare-fun res!1921300 () Bool)

(assert (=> b!4594477 (=> (not res!1921300) (not e!2865716))))

(assert (=> b!4594477 (= res!1921300 (not (containsKey!2126 (t!358164 newBucket!178) (_1!29131 (h!57002 newBucket!178)))))))

(declare-fun b!4594478 () Bool)

(assert (=> b!4594478 (= e!2865716 (noDuplicateKeys!1306 (t!358164 newBucket!178)))))

(assert (= (and d!1445903 (not res!1921299)) b!4594477))

(assert (= (and b!4594477 res!1921300) b!4594478))

(declare-fun m!5418495 () Bool)

(assert (=> b!4594477 m!5418495))

(declare-fun m!5418497 () Bool)

(assert (=> b!4594478 m!5418497))

(assert (=> b!4594230 d!1445903))

(declare-fun d!1445905 () Bool)

(assert (=> d!1445905 true))

(assert (=> d!1445905 true))

(declare-fun lambda!185435 () Int)

(declare-fun forall!10574 (List!51170 Int) Bool)

(assert (=> d!1445905 (= (allKeysSameHash!1162 newBucket!178 hash!344 hashF!1107) (forall!10574 newBucket!178 lambda!185435))))

(declare-fun bs!1008775 () Bool)

(assert (= bs!1008775 d!1445905))

(declare-fun m!5418499 () Bool)

(assert (=> bs!1008775 m!5418499))

(assert (=> b!4594241 d!1445905))

(declare-fun d!1445907 () Bool)

(declare-fun hash!3189 (Hashable!5705 K!12415) (_ BitVec 64))

(assert (=> d!1445907 (= (hash!3187 hashF!1107 key!3287) (hash!3189 hashF!1107 key!3287))))

(declare-fun bs!1008776 () Bool)

(assert (= bs!1008776 d!1445907))

(declare-fun m!5418501 () Bool)

(assert (=> bs!1008776 m!5418501))

(assert (=> b!4594240 d!1445907))

(declare-fun bs!1008777 () Bool)

(declare-fun d!1445909 () Bool)

(assert (= bs!1008777 (and d!1445909 d!1445893)))

(declare-fun lambda!185438 () Int)

(assert (=> bs!1008777 (not (= lambda!185438 lambda!185428))))

(declare-fun bs!1008778 () Bool)

(assert (= bs!1008778 (and d!1445909 start!458060)))

(assert (=> bs!1008778 (not (= lambda!185438 lambda!185400))))

(declare-fun bs!1008779 () Bool)

(assert (= bs!1008779 (and d!1445909 d!1445863)))

(assert (=> bs!1008779 (not (= lambda!185438 lambda!185425))))

(declare-fun bs!1008780 () Bool)

(assert (= bs!1008780 (and d!1445909 d!1445901)))

(assert (=> bs!1008780 (not (= lambda!185438 lambda!185432))))

(declare-fun bs!1008781 () Bool)

(assert (= bs!1008781 (and d!1445909 d!1445899)))

(assert (=> bs!1008781 (not (= lambda!185438 lambda!185429))))

(declare-fun bs!1008782 () Bool)

(assert (= bs!1008782 (and d!1445909 d!1445825)))

(assert (=> bs!1008782 (not (= lambda!185438 lambda!185403))))

(assert (=> d!1445909 true))

(assert (=> d!1445909 (= (allKeysSameHashInMap!1417 lm!1477 hashF!1107) (forall!10572 (toList!4627 lm!1477) lambda!185438))))

(declare-fun bs!1008783 () Bool)

(assert (= bs!1008783 d!1445909))

(declare-fun m!5418503 () Bool)

(assert (=> bs!1008783 m!5418503))

(assert (=> b!4594229 d!1445909))

(declare-fun b!4594489 () Bool)

(declare-fun e!2865719 () Bool)

(declare-fun tp!1340263 () Bool)

(declare-fun tp!1340264 () Bool)

(assert (=> b!4594489 (= e!2865719 (and tp!1340263 tp!1340264))))

(assert (=> b!4594228 (= tp!1340248 e!2865719)))

(assert (= (and b!4594228 ((_ is Cons!51047) (toList!4627 lm!1477))) b!4594489))

(declare-fun b!4594494 () Bool)

(declare-fun e!2865722 () Bool)

(declare-fun tp!1340267 () Bool)

(assert (=> b!4594494 (= e!2865722 (and tp_is_empty!28517 tp_is_empty!28519 tp!1340267))))

(assert (=> b!4594239 (= tp!1340249 e!2865722)))

(assert (= (and b!4594239 ((_ is Cons!51046) (t!358164 newBucket!178))) b!4594494))

(declare-fun b_lambda!168969 () Bool)

(assert (= b_lambda!168957 (or start!458060 b_lambda!168969)))

(declare-fun bs!1008784 () Bool)

(declare-fun d!1445911 () Bool)

(assert (= bs!1008784 (and d!1445911 start!458060)))

(assert (=> bs!1008784 (= (dynLambda!21382 lambda!185400 (h!57003 (toList!4627 lm!1477))) (noDuplicateKeys!1306 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(assert (=> bs!1008784 m!5418217))

(assert (=> b!4594247 d!1445911))

(declare-fun b_lambda!168971 () Bool)

(assert (= b_lambda!168961 (or start!458060 b_lambda!168971)))

(declare-fun bs!1008785 () Bool)

(declare-fun d!1445913 () Bool)

(assert (= bs!1008785 (and d!1445913 start!458060)))

(assert (=> bs!1008785 (= (dynLambda!21382 lambda!185400 lt!1755186) (noDuplicateKeys!1306 (_2!29132 lt!1755186)))))

(declare-fun m!5418505 () Bool)

(assert (=> bs!1008785 m!5418505))

(assert (=> d!1445841 d!1445913))

(check-sat (not b!4594447) tp_is_empty!28517 (not b!4594468) (not bm!320653) (not b!4594446) (not b!4594450) (not d!1445849) (not b!4594475) (not b_lambda!168969) (not b!4594413) (not b!4594347) (not bm!320654) (not d!1445907) (not b!4594451) (not b!4594425) (not b!4594248) (not b!4594469) (not b!4594471) (not d!1445889) (not bs!1008785) (not b!4594337) (not b!4594473) (not b!4594445) (not d!1445905) (not b!4594478) (not b!4594477) tp_is_empty!28519 (not d!1445909) (not d!1445819) (not d!1445839) (not d!1445899) (not b!4594448) (not b!4594472) (not b!4594494) (not b!4594458) (not d!1445855) (not b!4594320) (not bs!1008784) (not b!4594422) (not b!4594464) (not b!4594363) (not d!1445841) (not b!4594467) (not b!4594489) (not d!1445845) (not d!1445837) (not b!4594466) (not b_lambda!168971) (not d!1445825) (not d!1445893) (not b!4594465) (not d!1445863) (not d!1445891) (not b!4594452) (not d!1445897) (not b!4594420) (not b!4594345) (not b!4594298) (not d!1445901))
(check-sat)
(get-model)

(declare-fun d!1445941 () Bool)

(declare-fun res!1921345 () Bool)

(declare-fun e!2865762 () Bool)

(assert (=> d!1445941 (=> res!1921345 e!2865762)))

(assert (=> d!1445941 (= res!1921345 (and ((_ is Cons!51046) (t!358164 newBucket!178)) (= (_1!29131 (h!57002 (t!358164 newBucket!178))) (_1!29131 (h!57002 newBucket!178)))))))

(assert (=> d!1445941 (= (containsKey!2126 (t!358164 newBucket!178) (_1!29131 (h!57002 newBucket!178))) e!2865762)))

(declare-fun b!4594551 () Bool)

(declare-fun e!2865763 () Bool)

(assert (=> b!4594551 (= e!2865762 e!2865763)))

(declare-fun res!1921346 () Bool)

(assert (=> b!4594551 (=> (not res!1921346) (not e!2865763))))

(assert (=> b!4594551 (= res!1921346 ((_ is Cons!51046) (t!358164 newBucket!178)))))

(declare-fun b!4594552 () Bool)

(assert (=> b!4594552 (= e!2865763 (containsKey!2126 (t!358164 (t!358164 newBucket!178)) (_1!29131 (h!57002 newBucket!178))))))

(assert (= (and d!1445941 (not res!1921345)) b!4594551))

(assert (= (and b!4594551 res!1921346) b!4594552))

(declare-fun m!5418587 () Bool)

(assert (=> b!4594552 m!5418587))

(assert (=> b!4594477 d!1445941))

(declare-fun d!1445945 () Bool)

(declare-fun lt!1755405 () Bool)

(declare-fun content!8626 (List!51173) (InoxSet K!12415))

(assert (=> d!1445945 (= lt!1755405 (select (content!8626 (keys!17864 (extractMap!1366 lt!1755179))) key!3287))))

(declare-fun e!2865773 () Bool)

(assert (=> d!1445945 (= lt!1755405 e!2865773)))

(declare-fun res!1921357 () Bool)

(assert (=> d!1445945 (=> (not res!1921357) (not e!2865773))))

(assert (=> d!1445945 (= res!1921357 ((_ is Cons!51049) (keys!17864 (extractMap!1366 lt!1755179))))))

(assert (=> d!1445945 (= (contains!13983 (keys!17864 (extractMap!1366 lt!1755179)) key!3287) lt!1755405)))

(declare-fun b!4594562 () Bool)

(declare-fun e!2865774 () Bool)

(assert (=> b!4594562 (= e!2865773 e!2865774)))

(declare-fun res!1921356 () Bool)

(assert (=> b!4594562 (=> res!1921356 e!2865774)))

(assert (=> b!4594562 (= res!1921356 (= (h!57007 (keys!17864 (extractMap!1366 lt!1755179))) key!3287))))

(declare-fun b!4594563 () Bool)

(assert (=> b!4594563 (= e!2865774 (contains!13983 (t!358167 (keys!17864 (extractMap!1366 lt!1755179))) key!3287))))

(assert (= (and d!1445945 res!1921357) b!4594562))

(assert (= (and b!4594562 (not res!1921356)) b!4594563))

(assert (=> d!1445945 m!5418463))

(declare-fun m!5418599 () Bool)

(assert (=> d!1445945 m!5418599))

(declare-fun m!5418601 () Bool)

(assert (=> d!1445945 m!5418601))

(declare-fun m!5418603 () Bool)

(assert (=> b!4594563 m!5418603))

(assert (=> b!4594467 d!1445945))

(declare-fun b!4594587 () Bool)

(assert (=> b!4594587 true))

(declare-fun d!1445951 () Bool)

(declare-fun e!2865785 () Bool)

(assert (=> d!1445951 e!2865785))

(declare-fun res!1921371 () Bool)

(assert (=> d!1445951 (=> (not res!1921371) (not e!2865785))))

(declare-fun lt!1755422 () List!51173)

(declare-fun noDuplicate!806 (List!51173) Bool)

(assert (=> d!1445951 (= res!1921371 (noDuplicate!806 lt!1755422))))

(assert (=> d!1445951 (= lt!1755422 (getKeysList!565 (toList!4628 (extractMap!1366 lt!1755179))))))

(assert (=> d!1445951 (= (keys!17864 (extractMap!1366 lt!1755179)) lt!1755422)))

(declare-fun b!4594586 () Bool)

(declare-fun res!1921370 () Bool)

(assert (=> b!4594586 (=> (not res!1921370) (not e!2865785))))

(declare-fun length!468 (List!51173) Int)

(declare-fun length!469 (List!51170) Int)

(assert (=> b!4594586 (= res!1921370 (= (length!468 lt!1755422) (length!469 (toList!4628 (extractMap!1366 lt!1755179)))))))

(declare-fun res!1921372 () Bool)

(assert (=> b!4594587 (=> (not res!1921372) (not e!2865785))))

(declare-fun lambda!185488 () Int)

(declare-fun forall!10576 (List!51173 Int) Bool)

(assert (=> b!4594587 (= res!1921372 (forall!10576 lt!1755422 lambda!185488))))

(declare-fun lambda!185491 () Int)

(declare-fun b!4594588 () Bool)

(declare-fun map!11272 (List!51170 Int) List!51173)

(assert (=> b!4594588 (= e!2865785 (= (content!8626 lt!1755422) (content!8626 (map!11272 (toList!4628 (extractMap!1366 lt!1755179)) lambda!185491))))))

(assert (= (and d!1445951 res!1921371) b!4594586))

(assert (= (and b!4594586 res!1921370) b!4594587))

(assert (= (and b!4594587 res!1921372) b!4594588))

(declare-fun m!5418605 () Bool)

(assert (=> d!1445951 m!5418605))

(assert (=> d!1445951 m!5418461))

(declare-fun m!5418607 () Bool)

(assert (=> b!4594586 m!5418607))

(declare-fun m!5418609 () Bool)

(assert (=> b!4594586 m!5418609))

(declare-fun m!5418611 () Bool)

(assert (=> b!4594587 m!5418611))

(declare-fun m!5418613 () Bool)

(assert (=> b!4594588 m!5418613))

(declare-fun m!5418615 () Bool)

(assert (=> b!4594588 m!5418615))

(assert (=> b!4594588 m!5418615))

(declare-fun m!5418617 () Bool)

(assert (=> b!4594588 m!5418617))

(assert (=> b!4594467 d!1445951))

(declare-fun bs!1008842 () Bool)

(declare-fun b!4594686 () Bool)

(assert (= bs!1008842 (and b!4594686 b!4594587)))

(declare-fun lambda!185511 () Int)

(assert (=> bs!1008842 (= (= (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (toList!4628 (extractMap!1366 lt!1755179))) (= lambda!185511 lambda!185488))))

(assert (=> b!4594686 true))

(declare-fun bs!1008843 () Bool)

(declare-fun b!4594682 () Bool)

(assert (= bs!1008843 (and b!4594682 b!4594587)))

(declare-fun lambda!185512 () Int)

(assert (=> bs!1008843 (= (= (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (toList!4628 (extractMap!1366 lt!1755179))) (= lambda!185512 lambda!185488))))

(declare-fun bs!1008844 () Bool)

(assert (= bs!1008844 (and b!4594682 b!4594686)))

(assert (=> bs!1008844 (= (= (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (= lambda!185512 lambda!185511))))

(assert (=> b!4594682 true))

(declare-fun bs!1008845 () Bool)

(declare-fun b!4594685 () Bool)

(assert (= bs!1008845 (and b!4594685 b!4594587)))

(declare-fun lambda!185513 () Int)

(assert (=> bs!1008845 (= (= (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) (toList!4628 (extractMap!1366 lt!1755179))) (= lambda!185513 lambda!185488))))

(declare-fun bs!1008846 () Bool)

(assert (= bs!1008846 (and b!4594685 b!4594686)))

(assert (=> bs!1008846 (= (= (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (= lambda!185513 lambda!185511))))

(declare-fun bs!1008847 () Bool)

(assert (= bs!1008847 (and b!4594685 b!4594682)))

(assert (=> bs!1008847 (= (= (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))) (= lambda!185513 lambda!185512))))

(assert (=> b!4594685 true))

(declare-fun bs!1008848 () Bool)

(declare-fun b!4594681 () Bool)

(assert (= bs!1008848 (and b!4594681 b!4594588)))

(declare-fun lambda!185514 () Int)

(assert (=> bs!1008848 (= lambda!185514 lambda!185491)))

(declare-fun b!4594680 () Bool)

(declare-fun e!2865842 () Unit!107680)

(declare-fun Unit!107720 () Unit!107680)

(assert (=> b!4594680 (= e!2865842 Unit!107720)))

(declare-fun d!1445953 () Bool)

(declare-fun e!2865840 () Bool)

(assert (=> d!1445953 e!2865840))

(declare-fun res!1921413 () Bool)

(assert (=> d!1445953 (=> (not res!1921413) (not e!2865840))))

(declare-fun lt!1755475 () List!51173)

(assert (=> d!1445953 (= res!1921413 (noDuplicate!806 lt!1755475))))

(declare-fun e!2865839 () List!51173)

(assert (=> d!1445953 (= lt!1755475 e!2865839)))

(declare-fun c!786842 () Bool)

(assert (=> d!1445953 (= c!786842 ((_ is Cons!51046) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))))

(assert (=> d!1445953 (invariantList!1116 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))))

(assert (=> d!1445953 (= (getKeysList!565 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) lt!1755475)))

(assert (=> b!4594681 (= e!2865840 (= (content!8626 lt!1755475) (content!8626 (map!11272 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) lambda!185514))))))

(assert (=> b!4594682 (= e!2865839 (Cons!51049 (_1!29131 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (getKeysList!565 (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))))))

(declare-fun c!786841 () Bool)

(assert (=> b!4594682 (= c!786841 (containsKey!2130 (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (_1!29131 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))))))

(declare-fun lt!1755476 () Unit!107680)

(declare-fun e!2865841 () Unit!107680)

(assert (=> b!4594682 (= lt!1755476 e!2865841)))

(declare-fun c!786840 () Bool)

(assert (=> b!4594682 (= c!786840 (contains!13983 (getKeysList!565 (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (_1!29131 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))))))

(declare-fun lt!1755473 () Unit!107680)

(assert (=> b!4594682 (= lt!1755473 e!2865842)))

(declare-fun lt!1755471 () List!51173)

(assert (=> b!4594682 (= lt!1755471 (getKeysList!565 (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))))))

(declare-fun lt!1755472 () Unit!107680)

(declare-fun lemmaForallContainsAddHeadPreserves!226 (List!51170 List!51173 tuple2!51674) Unit!107680)

(assert (=> b!4594682 (= lt!1755472 (lemmaForallContainsAddHeadPreserves!226 (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) lt!1755471 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))))))

(assert (=> b!4594682 (forall!10576 lt!1755471 lambda!185512)))

(declare-fun lt!1755474 () Unit!107680)

(assert (=> b!4594682 (= lt!1755474 lt!1755472)))

(declare-fun b!4594683 () Bool)

(declare-fun Unit!107721 () Unit!107680)

(assert (=> b!4594683 (= e!2865841 Unit!107721)))

(declare-fun b!4594684 () Bool)

(assert (=> b!4594684 false))

(declare-fun Unit!107722 () Unit!107680)

(assert (=> b!4594684 (= e!2865841 Unit!107722)))

(declare-fun res!1921414 () Bool)

(assert (=> b!4594685 (=> (not res!1921414) (not e!2865840))))

(assert (=> b!4594685 (= res!1921414 (forall!10576 lt!1755475 lambda!185513))))

(assert (=> b!4594686 false))

(declare-fun lt!1755470 () Unit!107680)

(declare-fun forallContained!2830 (List!51173 Int K!12415) Unit!107680)

(assert (=> b!4594686 (= lt!1755470 (forallContained!2830 (getKeysList!565 (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) lambda!185511 (_1!29131 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))))))

(declare-fun Unit!107723 () Unit!107680)

(assert (=> b!4594686 (= e!2865842 Unit!107723)))

(declare-fun b!4594687 () Bool)

(declare-fun res!1921412 () Bool)

(assert (=> b!4594687 (=> (not res!1921412) (not e!2865840))))

(assert (=> b!4594687 (= res!1921412 (= (length!468 lt!1755475) (length!469 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))))))

(declare-fun b!4594688 () Bool)

(assert (=> b!4594688 (= e!2865839 Nil!51049)))

(assert (= (and d!1445953 c!786842) b!4594682))

(assert (= (and d!1445953 (not c!786842)) b!4594688))

(assert (= (and b!4594682 c!786841) b!4594684))

(assert (= (and b!4594682 (not c!786841)) b!4594683))

(assert (= (and b!4594682 c!786840) b!4594686))

(assert (= (and b!4594682 (not c!786840)) b!4594680))

(assert (= (and d!1445953 res!1921413) b!4594687))

(assert (= (and b!4594687 res!1921412) b!4594685))

(assert (= (and b!4594685 res!1921414) b!4594681))

(declare-fun m!5418761 () Bool)

(assert (=> d!1445953 m!5418761))

(declare-fun m!5418763 () Bool)

(assert (=> d!1445953 m!5418763))

(declare-fun m!5418765 () Bool)

(assert (=> b!4594686 m!5418765))

(assert (=> b!4594686 m!5418765))

(declare-fun m!5418767 () Bool)

(assert (=> b!4594686 m!5418767))

(declare-fun m!5418769 () Bool)

(assert (=> b!4594687 m!5418769))

(declare-fun m!5418771 () Bool)

(assert (=> b!4594687 m!5418771))

(assert (=> b!4594682 m!5418765))

(declare-fun m!5418773 () Bool)

(assert (=> b!4594682 m!5418773))

(declare-fun m!5418775 () Bool)

(assert (=> b!4594682 m!5418775))

(assert (=> b!4594682 m!5418765))

(declare-fun m!5418777 () Bool)

(assert (=> b!4594682 m!5418777))

(declare-fun m!5418779 () Bool)

(assert (=> b!4594682 m!5418779))

(declare-fun m!5418781 () Bool)

(assert (=> b!4594685 m!5418781))

(declare-fun m!5418783 () Bool)

(assert (=> b!4594681 m!5418783))

(declare-fun m!5418785 () Bool)

(assert (=> b!4594681 m!5418785))

(assert (=> b!4594681 m!5418785))

(declare-fun m!5418787 () Bool)

(assert (=> b!4594681 m!5418787))

(assert (=> b!4594450 d!1445953))

(declare-fun d!1446001 () Bool)

(declare-fun lt!1755478 () Bool)

(assert (=> d!1446001 (= lt!1755478 (select (content!8626 (keys!17864 (extractMap!1366 (toList!4627 lm!1477)))) key!3287))))

(declare-fun e!2865848 () Bool)

(assert (=> d!1446001 (= lt!1755478 e!2865848)))

(declare-fun res!1921418 () Bool)

(assert (=> d!1446001 (=> (not res!1921418) (not e!2865848))))

(assert (=> d!1446001 (= res!1921418 ((_ is Cons!51049) (keys!17864 (extractMap!1366 (toList!4627 lm!1477)))))))

(assert (=> d!1446001 (= (contains!13983 (keys!17864 (extractMap!1366 (toList!4627 lm!1477))) key!3287) lt!1755478)))

(declare-fun b!4594699 () Bool)

(declare-fun e!2865849 () Bool)

(assert (=> b!4594699 (= e!2865848 e!2865849)))

(declare-fun res!1921417 () Bool)

(assert (=> b!4594699 (=> res!1921417 e!2865849)))

(assert (=> b!4594699 (= res!1921417 (= (h!57007 (keys!17864 (extractMap!1366 (toList!4627 lm!1477)))) key!3287))))

(declare-fun b!4594700 () Bool)

(assert (=> b!4594700 (= e!2865849 (contains!13983 (t!358167 (keys!17864 (extractMap!1366 (toList!4627 lm!1477)))) key!3287))))

(assert (= (and d!1446001 res!1921418) b!4594699))

(assert (= (and b!4594699 (not res!1921417)) b!4594700))

(assert (=> d!1446001 m!5418431))

(declare-fun m!5418789 () Bool)

(assert (=> d!1446001 m!5418789))

(declare-fun m!5418791 () Bool)

(assert (=> d!1446001 m!5418791))

(declare-fun m!5418793 () Bool)

(assert (=> b!4594700 m!5418793))

(assert (=> b!4594448 d!1446001))

(declare-fun bs!1008850 () Bool)

(declare-fun b!4594710 () Bool)

(assert (= bs!1008850 (and b!4594710 b!4594587)))

(declare-fun lambda!185515 () Int)

(assert (=> bs!1008850 (= (= (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) (toList!4628 (extractMap!1366 lt!1755179))) (= lambda!185515 lambda!185488))))

(declare-fun bs!1008851 () Bool)

(assert (= bs!1008851 (and b!4594710 b!4594686)))

(assert (=> bs!1008851 (= (= (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (= lambda!185515 lambda!185511))))

(declare-fun bs!1008852 () Bool)

(assert (= bs!1008852 (and b!4594710 b!4594682)))

(assert (=> bs!1008852 (= (= (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))) (= lambda!185515 lambda!185512))))

(declare-fun bs!1008853 () Bool)

(assert (= bs!1008853 (and b!4594710 b!4594685)))

(assert (=> bs!1008853 (= lambda!185515 lambda!185513)))

(assert (=> b!4594710 true))

(declare-fun bs!1008854 () Bool)

(declare-fun b!4594711 () Bool)

(assert (= bs!1008854 (and b!4594711 b!4594588)))

(declare-fun lambda!185516 () Int)

(assert (=> bs!1008854 (= lambda!185516 lambda!185491)))

(declare-fun bs!1008855 () Bool)

(assert (= bs!1008855 (and b!4594711 b!4594681)))

(assert (=> bs!1008855 (= lambda!185516 lambda!185514)))

(declare-fun d!1446003 () Bool)

(declare-fun e!2865852 () Bool)

(assert (=> d!1446003 e!2865852))

(declare-fun res!1921420 () Bool)

(assert (=> d!1446003 (=> (not res!1921420) (not e!2865852))))

(declare-fun lt!1755479 () List!51173)

(assert (=> d!1446003 (= res!1921420 (noDuplicate!806 lt!1755479))))

(assert (=> d!1446003 (= lt!1755479 (getKeysList!565 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))))

(assert (=> d!1446003 (= (keys!17864 (extractMap!1366 (toList!4627 lm!1477))) lt!1755479)))

(declare-fun b!4594709 () Bool)

(declare-fun res!1921419 () Bool)

(assert (=> b!4594709 (=> (not res!1921419) (not e!2865852))))

(assert (=> b!4594709 (= res!1921419 (= (length!468 lt!1755479) (length!469 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))))))

(declare-fun res!1921421 () Bool)

(assert (=> b!4594710 (=> (not res!1921421) (not e!2865852))))

(assert (=> b!4594710 (= res!1921421 (forall!10576 lt!1755479 lambda!185515))))

(assert (=> b!4594711 (= e!2865852 (= (content!8626 lt!1755479) (content!8626 (map!11272 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) lambda!185516))))))

(assert (= (and d!1446003 res!1921420) b!4594709))

(assert (= (and b!4594709 res!1921419) b!4594710))

(assert (= (and b!4594710 res!1921421) b!4594711))

(declare-fun m!5418795 () Bool)

(assert (=> d!1446003 m!5418795))

(assert (=> d!1446003 m!5418429))

(declare-fun m!5418797 () Bool)

(assert (=> b!4594709 m!5418797))

(assert (=> b!4594709 m!5418771))

(declare-fun m!5418799 () Bool)

(assert (=> b!4594710 m!5418799))

(declare-fun m!5418801 () Bool)

(assert (=> b!4594711 m!5418801))

(declare-fun m!5418803 () Bool)

(assert (=> b!4594711 m!5418803))

(assert (=> b!4594711 m!5418803))

(declare-fun m!5418805 () Bool)

(assert (=> b!4594711 m!5418805))

(assert (=> b!4594448 d!1446003))

(declare-fun d!1446005 () Bool)

(declare-fun res!1921427 () Bool)

(declare-fun e!2865865 () Bool)

(assert (=> d!1446005 (=> res!1921427 e!2865865)))

(assert (=> d!1446005 (= res!1921427 (and ((_ is Cons!51046) (toList!4628 (extractMap!1366 lt!1755179))) (= (_1!29131 (h!57002 (toList!4628 (extractMap!1366 lt!1755179)))) key!3287)))))

(assert (=> d!1446005 (= (containsKey!2130 (toList!4628 (extractMap!1366 lt!1755179)) key!3287) e!2865865)))

(declare-fun b!4594727 () Bool)

(declare-fun e!2865866 () Bool)

(assert (=> b!4594727 (= e!2865865 e!2865866)))

(declare-fun res!1921428 () Bool)

(assert (=> b!4594727 (=> (not res!1921428) (not e!2865866))))

(assert (=> b!4594727 (= res!1921428 ((_ is Cons!51046) (toList!4628 (extractMap!1366 lt!1755179))))))

(declare-fun b!4594728 () Bool)

(assert (=> b!4594728 (= e!2865866 (containsKey!2130 (t!358164 (toList!4628 (extractMap!1366 lt!1755179))) key!3287))))

(assert (= (and d!1446005 (not res!1921427)) b!4594727))

(assert (= (and b!4594727 res!1921428) b!4594728))

(declare-fun m!5418819 () Bool)

(assert (=> b!4594728 m!5418819))

(assert (=> d!1445897 d!1446005))

(declare-fun d!1446013 () Bool)

(declare-fun res!1921429 () Bool)

(declare-fun e!2865867 () Bool)

(assert (=> d!1446013 (=> res!1921429 e!2865867)))

(assert (=> d!1446013 (= res!1921429 (and ((_ is Cons!51046) (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) (= (_1!29131 (h!57002 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))))) key!3287)))))

(assert (=> d!1446013 (= (containsKey!2126 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))) key!3287) e!2865867)))

(declare-fun b!4594729 () Bool)

(declare-fun e!2865868 () Bool)

(assert (=> b!4594729 (= e!2865867 e!2865868)))

(declare-fun res!1921430 () Bool)

(assert (=> b!4594729 (=> (not res!1921430) (not e!2865868))))

(assert (=> b!4594729 (= res!1921430 ((_ is Cons!51046) (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(declare-fun b!4594730 () Bool)

(assert (=> b!4594730 (= e!2865868 (containsKey!2126 (t!358164 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) key!3287))))

(assert (= (and d!1446013 (not res!1921429)) b!4594729))

(assert (= (and b!4594729 res!1921430) b!4594730))

(declare-fun m!5418821 () Bool)

(assert (=> b!4594730 m!5418821))

(assert (=> b!4594413 d!1446013))

(declare-fun d!1446015 () Bool)

(declare-fun noDuplicatedKeys!321 (List!51170) Bool)

(assert (=> d!1446015 (= (invariantList!1116 (toList!4628 lt!1755317)) (noDuplicatedKeys!321 (toList!4628 lt!1755317)))))

(declare-fun bs!1008857 () Bool)

(assert (= bs!1008857 d!1446015))

(declare-fun m!5418823 () Bool)

(assert (=> bs!1008857 m!5418823))

(assert (=> d!1445893 d!1446015))

(declare-fun d!1446017 () Bool)

(declare-fun res!1921431 () Bool)

(declare-fun e!2865869 () Bool)

(assert (=> d!1446017 (=> res!1921431 e!2865869)))

(assert (=> d!1446017 (= res!1921431 ((_ is Nil!51047) (toList!4627 lm!1477)))))

(assert (=> d!1446017 (= (forall!10572 (toList!4627 lm!1477) lambda!185428) e!2865869)))

(declare-fun b!4594731 () Bool)

(declare-fun e!2865870 () Bool)

(assert (=> b!4594731 (= e!2865869 e!2865870)))

(declare-fun res!1921432 () Bool)

(assert (=> b!4594731 (=> (not res!1921432) (not e!2865870))))

(assert (=> b!4594731 (= res!1921432 (dynLambda!21382 lambda!185428 (h!57003 (toList!4627 lm!1477))))))

(declare-fun b!4594732 () Bool)

(assert (=> b!4594732 (= e!2865870 (forall!10572 (t!358165 (toList!4627 lm!1477)) lambda!185428))))

(assert (= (and d!1446017 (not res!1921431)) b!4594731))

(assert (= (and b!4594731 res!1921432) b!4594732))

(declare-fun b_lambda!168979 () Bool)

(assert (=> (not b_lambda!168979) (not b!4594731)))

(declare-fun m!5418825 () Bool)

(assert (=> b!4594731 m!5418825))

(declare-fun m!5418829 () Bool)

(assert (=> b!4594732 m!5418829))

(assert (=> d!1445893 d!1446017))

(declare-fun d!1446021 () Bool)

(declare-fun lt!1755484 () Bool)

(assert (=> d!1446021 (= lt!1755484 (select (content!8626 e!2865708) key!3287))))

(declare-fun e!2865873 () Bool)

(assert (=> d!1446021 (= lt!1755484 e!2865873)))

(declare-fun res!1921436 () Bool)

(assert (=> d!1446021 (=> (not res!1921436) (not e!2865873))))

(assert (=> d!1446021 (= res!1921436 ((_ is Cons!51049) e!2865708))))

(assert (=> d!1446021 (= (contains!13983 e!2865708 key!3287) lt!1755484)))

(declare-fun b!4594735 () Bool)

(declare-fun e!2865874 () Bool)

(assert (=> b!4594735 (= e!2865873 e!2865874)))

(declare-fun res!1921435 () Bool)

(assert (=> b!4594735 (=> res!1921435 e!2865874)))

(assert (=> b!4594735 (= res!1921435 (= (h!57007 e!2865708) key!3287))))

(declare-fun b!4594736 () Bool)

(assert (=> b!4594736 (= e!2865874 (contains!13983 (t!358167 e!2865708) key!3287))))

(assert (= (and d!1446021 res!1921436) b!4594735))

(assert (= (and b!4594735 (not res!1921435)) b!4594736))

(declare-fun m!5418833 () Bool)

(assert (=> d!1446021 m!5418833))

(declare-fun m!5418835 () Bool)

(assert (=> d!1446021 m!5418835))

(declare-fun m!5418837 () Bool)

(assert (=> b!4594736 m!5418837))

(assert (=> bm!320654 d!1446021))

(declare-fun b!4594760 () Bool)

(declare-fun e!2865888 () Option!11374)

(assert (=> b!4594760 (= e!2865888 (getValueByKey!1294 (t!358165 (toList!4627 lm!1477)) hash!344))))

(declare-fun b!4594761 () Bool)

(assert (=> b!4594761 (= e!2865888 None!11373)))

(declare-fun d!1446025 () Bool)

(declare-fun c!786862 () Bool)

(assert (=> d!1446025 (= c!786862 (and ((_ is Cons!51047) (toList!4627 lm!1477)) (= (_1!29132 (h!57003 (toList!4627 lm!1477))) hash!344)))))

(declare-fun e!2865887 () Option!11374)

(assert (=> d!1446025 (= (getValueByKey!1294 (toList!4627 lm!1477) hash!344) e!2865887)))

(declare-fun b!4594758 () Bool)

(assert (=> b!4594758 (= e!2865887 (Some!11373 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(declare-fun b!4594759 () Bool)

(assert (=> b!4594759 (= e!2865887 e!2865888)))

(declare-fun c!786863 () Bool)

(assert (=> b!4594759 (= c!786863 (and ((_ is Cons!51047) (toList!4627 lm!1477)) (not (= (_1!29132 (h!57003 (toList!4627 lm!1477))) hash!344))))))

(assert (= (and d!1446025 c!786862) b!4594758))

(assert (= (and d!1446025 (not c!786862)) b!4594759))

(assert (= (and b!4594759 c!786863) b!4594760))

(assert (= (and b!4594759 (not c!786863)) b!4594761))

(declare-fun m!5418843 () Bool)

(assert (=> b!4594760 m!5418843))

(assert (=> b!4594298 d!1446025))

(declare-fun d!1446033 () Bool)

(declare-fun res!1921444 () Bool)

(declare-fun e!2865889 () Bool)

(assert (=> d!1446033 (=> res!1921444 e!2865889)))

(assert (=> d!1446033 (= res!1921444 ((_ is Nil!51047) (t!358165 (toList!4627 lm!1477))))))

(assert (=> d!1446033 (= (forall!10572 (t!358165 (toList!4627 lm!1477)) lambda!185400) e!2865889)))

(declare-fun b!4594762 () Bool)

(declare-fun e!2865890 () Bool)

(assert (=> b!4594762 (= e!2865889 e!2865890)))

(declare-fun res!1921445 () Bool)

(assert (=> b!4594762 (=> (not res!1921445) (not e!2865890))))

(assert (=> b!4594762 (= res!1921445 (dynLambda!21382 lambda!185400 (h!57003 (t!358165 (toList!4627 lm!1477)))))))

(declare-fun b!4594763 () Bool)

(assert (=> b!4594763 (= e!2865890 (forall!10572 (t!358165 (t!358165 (toList!4627 lm!1477))) lambda!185400))))

(assert (= (and d!1446033 (not res!1921444)) b!4594762))

(assert (= (and b!4594762 res!1921445) b!4594763))

(declare-fun b_lambda!168985 () Bool)

(assert (=> (not b_lambda!168985) (not b!4594762)))

(declare-fun m!5418845 () Bool)

(assert (=> b!4594762 m!5418845))

(declare-fun m!5418847 () Bool)

(assert (=> b!4594763 m!5418847))

(assert (=> b!4594248 d!1446033))

(declare-fun bs!1008880 () Bool)

(declare-fun b!4594770 () Bool)

(assert (= bs!1008880 (and b!4594770 b!4594682)))

(declare-fun lambda!185521 () Int)

(assert (=> bs!1008880 (= (= (t!358164 (toList!4628 (extractMap!1366 lt!1755179))) (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))) (= lambda!185521 lambda!185512))))

(declare-fun bs!1008881 () Bool)

(assert (= bs!1008881 (and b!4594770 b!4594587)))

(assert (=> bs!1008881 (= (= (t!358164 (toList!4628 (extractMap!1366 lt!1755179))) (toList!4628 (extractMap!1366 lt!1755179))) (= lambda!185521 lambda!185488))))

(declare-fun bs!1008882 () Bool)

(assert (= bs!1008882 (and b!4594770 b!4594686)))

(assert (=> bs!1008882 (= (= (t!358164 (toList!4628 (extractMap!1366 lt!1755179))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (= lambda!185521 lambda!185511))))

(declare-fun bs!1008883 () Bool)

(assert (= bs!1008883 (and b!4594770 b!4594710)))

(assert (=> bs!1008883 (= (= (t!358164 (toList!4628 (extractMap!1366 lt!1755179))) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (= lambda!185521 lambda!185515))))

(declare-fun bs!1008884 () Bool)

(assert (= bs!1008884 (and b!4594770 b!4594685)))

(assert (=> bs!1008884 (= (= (t!358164 (toList!4628 (extractMap!1366 lt!1755179))) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (= lambda!185521 lambda!185513))))

(assert (=> b!4594770 true))

(declare-fun bs!1008885 () Bool)

(declare-fun b!4594766 () Bool)

(assert (= bs!1008885 (and b!4594766 b!4594587)))

(declare-fun lambda!185522 () Int)

(assert (=> bs!1008885 (= (= (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))) (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) (toList!4628 (extractMap!1366 lt!1755179))) (= lambda!185522 lambda!185488))))

(declare-fun bs!1008886 () Bool)

(assert (= bs!1008886 (and b!4594766 b!4594686)))

(assert (=> bs!1008886 (= (= (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))) (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (= lambda!185522 lambda!185511))))

(declare-fun bs!1008887 () Bool)

(assert (= bs!1008887 (and b!4594766 b!4594770)))

(assert (=> bs!1008887 (= (= (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))) (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) (= lambda!185522 lambda!185521))))

(declare-fun bs!1008888 () Bool)

(assert (= bs!1008888 (and b!4594766 b!4594682)))

(assert (=> bs!1008888 (= (= (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))) (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))) (= lambda!185522 lambda!185512))))

(declare-fun bs!1008889 () Bool)

(assert (= bs!1008889 (and b!4594766 b!4594710)))

(assert (=> bs!1008889 (= (= (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))) (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (= lambda!185522 lambda!185515))))

(declare-fun bs!1008890 () Bool)

(assert (= bs!1008890 (and b!4594766 b!4594685)))

(assert (=> bs!1008890 (= (= (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))) (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (= lambda!185522 lambda!185513))))

(assert (=> b!4594766 true))

(declare-fun bs!1008891 () Bool)

(declare-fun b!4594769 () Bool)

(assert (= bs!1008891 (and b!4594769 b!4594766)))

(declare-fun lambda!185523 () Int)

(assert (=> bs!1008891 (= (= (toList!4628 (extractMap!1366 lt!1755179)) (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))) (t!358164 (toList!4628 (extractMap!1366 lt!1755179))))) (= lambda!185523 lambda!185522))))

(declare-fun bs!1008892 () Bool)

(assert (= bs!1008892 (and b!4594769 b!4594587)))

(assert (=> bs!1008892 (= lambda!185523 lambda!185488)))

(declare-fun bs!1008893 () Bool)

(assert (= bs!1008893 (and b!4594769 b!4594686)))

(assert (=> bs!1008893 (= (= (toList!4628 (extractMap!1366 lt!1755179)) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) (= lambda!185523 lambda!185511))))

(declare-fun bs!1008894 () Bool)

(assert (= bs!1008894 (and b!4594769 b!4594770)))

(assert (=> bs!1008894 (= (= (toList!4628 (extractMap!1366 lt!1755179)) (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) (= lambda!185523 lambda!185521))))

(declare-fun bs!1008895 () Bool)

(assert (= bs!1008895 (and b!4594769 b!4594682)))

(assert (=> bs!1008895 (= (= (toList!4628 (extractMap!1366 lt!1755179)) (Cons!51046 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))) (= lambda!185523 lambda!185512))))

(declare-fun bs!1008896 () Bool)

(assert (= bs!1008896 (and b!4594769 b!4594710)))

(assert (=> bs!1008896 (= (= (toList!4628 (extractMap!1366 lt!1755179)) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (= lambda!185523 lambda!185515))))

(declare-fun bs!1008897 () Bool)

(assert (= bs!1008897 (and b!4594769 b!4594685)))

(assert (=> bs!1008897 (= (= (toList!4628 (extractMap!1366 lt!1755179)) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (= lambda!185523 lambda!185513))))

(assert (=> b!4594769 true))

(declare-fun bs!1008898 () Bool)

(declare-fun b!4594765 () Bool)

(assert (= bs!1008898 (and b!4594765 b!4594588)))

(declare-fun lambda!185524 () Int)

(assert (=> bs!1008898 (= lambda!185524 lambda!185491)))

(declare-fun bs!1008899 () Bool)

(assert (= bs!1008899 (and b!4594765 b!4594681)))

(assert (=> bs!1008899 (= lambda!185524 lambda!185514)))

(declare-fun bs!1008900 () Bool)

(assert (= bs!1008900 (and b!4594765 b!4594711)))

(assert (=> bs!1008900 (= lambda!185524 lambda!185516)))

(declare-fun b!4594764 () Bool)

(declare-fun e!2865894 () Unit!107680)

(declare-fun Unit!107725 () Unit!107680)

(assert (=> b!4594764 (= e!2865894 Unit!107725)))

(declare-fun d!1446035 () Bool)

(declare-fun e!2865892 () Bool)

(assert (=> d!1446035 e!2865892))

(declare-fun res!1921447 () Bool)

(assert (=> d!1446035 (=> (not res!1921447) (not e!2865892))))

(declare-fun lt!1755497 () List!51173)

(assert (=> d!1446035 (= res!1921447 (noDuplicate!806 lt!1755497))))

(declare-fun e!2865891 () List!51173)

(assert (=> d!1446035 (= lt!1755497 e!2865891)))

(declare-fun c!786866 () Bool)

(assert (=> d!1446035 (= c!786866 ((_ is Cons!51046) (toList!4628 (extractMap!1366 lt!1755179))))))

(assert (=> d!1446035 (invariantList!1116 (toList!4628 (extractMap!1366 lt!1755179)))))

(assert (=> d!1446035 (= (getKeysList!565 (toList!4628 (extractMap!1366 lt!1755179))) lt!1755497)))

(assert (=> b!4594765 (= e!2865892 (= (content!8626 lt!1755497) (content!8626 (map!11272 (toList!4628 (extractMap!1366 lt!1755179)) lambda!185524))))))

(assert (=> b!4594766 (= e!2865891 (Cons!51049 (_1!29131 (h!57002 (toList!4628 (extractMap!1366 lt!1755179)))) (getKeysList!565 (t!358164 (toList!4628 (extractMap!1366 lt!1755179))))))))

(declare-fun c!786865 () Bool)

(assert (=> b!4594766 (= c!786865 (containsKey!2130 (t!358164 (toList!4628 (extractMap!1366 lt!1755179))) (_1!29131 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))))))))

(declare-fun lt!1755498 () Unit!107680)

(declare-fun e!2865893 () Unit!107680)

(assert (=> b!4594766 (= lt!1755498 e!2865893)))

(declare-fun c!786864 () Bool)

(assert (=> b!4594766 (= c!786864 (contains!13983 (getKeysList!565 (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) (_1!29131 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))))))))

(declare-fun lt!1755495 () Unit!107680)

(assert (=> b!4594766 (= lt!1755495 e!2865894)))

(declare-fun lt!1755493 () List!51173)

(assert (=> b!4594766 (= lt!1755493 (getKeysList!565 (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))))))

(declare-fun lt!1755494 () Unit!107680)

(assert (=> b!4594766 (= lt!1755494 (lemmaForallContainsAddHeadPreserves!226 (t!358164 (toList!4628 (extractMap!1366 lt!1755179))) lt!1755493 (h!57002 (toList!4628 (extractMap!1366 lt!1755179)))))))

(assert (=> b!4594766 (forall!10576 lt!1755493 lambda!185522)))

(declare-fun lt!1755496 () Unit!107680)

(assert (=> b!4594766 (= lt!1755496 lt!1755494)))

(declare-fun b!4594767 () Bool)

(declare-fun Unit!107726 () Unit!107680)

(assert (=> b!4594767 (= e!2865893 Unit!107726)))

(declare-fun b!4594768 () Bool)

(assert (=> b!4594768 false))

(declare-fun Unit!107727 () Unit!107680)

(assert (=> b!4594768 (= e!2865893 Unit!107727)))

(declare-fun res!1921448 () Bool)

(assert (=> b!4594769 (=> (not res!1921448) (not e!2865892))))

(assert (=> b!4594769 (= res!1921448 (forall!10576 lt!1755497 lambda!185523))))

(assert (=> b!4594770 false))

(declare-fun lt!1755492 () Unit!107680)

(assert (=> b!4594770 (= lt!1755492 (forallContained!2830 (getKeysList!565 (t!358164 (toList!4628 (extractMap!1366 lt!1755179)))) lambda!185521 (_1!29131 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))))))))

(declare-fun Unit!107728 () Unit!107680)

(assert (=> b!4594770 (= e!2865894 Unit!107728)))

(declare-fun b!4594771 () Bool)

(declare-fun res!1921446 () Bool)

(assert (=> b!4594771 (=> (not res!1921446) (not e!2865892))))

(assert (=> b!4594771 (= res!1921446 (= (length!468 lt!1755497) (length!469 (toList!4628 (extractMap!1366 lt!1755179)))))))

(declare-fun b!4594772 () Bool)

(assert (=> b!4594772 (= e!2865891 Nil!51049)))

(assert (= (and d!1446035 c!786866) b!4594766))

(assert (= (and d!1446035 (not c!786866)) b!4594772))

(assert (= (and b!4594766 c!786865) b!4594768))

(assert (= (and b!4594766 (not c!786865)) b!4594767))

(assert (= (and b!4594766 c!786864) b!4594770))

(assert (= (and b!4594766 (not c!786864)) b!4594764))

(assert (= (and d!1446035 res!1921447) b!4594771))

(assert (= (and b!4594771 res!1921446) b!4594769))

(assert (= (and b!4594769 res!1921448) b!4594765))

(declare-fun m!5418889 () Bool)

(assert (=> d!1446035 m!5418889))

(declare-fun m!5418891 () Bool)

(assert (=> d!1446035 m!5418891))

(declare-fun m!5418893 () Bool)

(assert (=> b!4594770 m!5418893))

(assert (=> b!4594770 m!5418893))

(declare-fun m!5418895 () Bool)

(assert (=> b!4594770 m!5418895))

(declare-fun m!5418897 () Bool)

(assert (=> b!4594771 m!5418897))

(assert (=> b!4594771 m!5418609))

(assert (=> b!4594766 m!5418893))

(declare-fun m!5418899 () Bool)

(assert (=> b!4594766 m!5418899))

(declare-fun m!5418903 () Bool)

(assert (=> b!4594766 m!5418903))

(assert (=> b!4594766 m!5418893))

(declare-fun m!5418909 () Bool)

(assert (=> b!4594766 m!5418909))

(declare-fun m!5418911 () Bool)

(assert (=> b!4594766 m!5418911))

(declare-fun m!5418913 () Bool)

(assert (=> b!4594769 m!5418913))

(declare-fun m!5418915 () Bool)

(assert (=> b!4594765 m!5418915))

(declare-fun m!5418917 () Bool)

(assert (=> b!4594765 m!5418917))

(assert (=> b!4594765 m!5418917))

(declare-fun m!5418919 () Bool)

(assert (=> b!4594765 m!5418919))

(assert (=> b!4594471 d!1446035))

(assert (=> b!4594469 d!1445945))

(assert (=> b!4594469 d!1445951))

(declare-fun d!1446051 () Bool)

(declare-fun choose!30737 (Hashable!5705 K!12415) (_ BitVec 64))

(assert (=> d!1446051 (= (hash!3189 hashF!1107 key!3287) (choose!30737 hashF!1107 key!3287))))

(declare-fun bs!1008902 () Bool)

(assert (= bs!1008902 d!1446051))

(declare-fun m!5418923 () Bool)

(assert (=> bs!1008902 m!5418923))

(assert (=> d!1445907 d!1446051))

(declare-fun d!1446055 () Bool)

(declare-fun lt!1755502 () Bool)

(assert (=> d!1446055 (= lt!1755502 (select (content!8626 e!2865693) key!3287))))

(declare-fun e!2865905 () Bool)

(assert (=> d!1446055 (= lt!1755502 e!2865905)))

(declare-fun res!1921460 () Bool)

(assert (=> d!1446055 (=> (not res!1921460) (not e!2865905))))

(assert (=> d!1446055 (= res!1921460 ((_ is Cons!51049) e!2865693))))

(assert (=> d!1446055 (= (contains!13983 e!2865693 key!3287) lt!1755502)))

(declare-fun b!4594783 () Bool)

(declare-fun e!2865906 () Bool)

(assert (=> b!4594783 (= e!2865905 e!2865906)))

(declare-fun res!1921459 () Bool)

(assert (=> b!4594783 (=> res!1921459 e!2865906)))

(assert (=> b!4594783 (= res!1921459 (= (h!57007 e!2865693) key!3287))))

(declare-fun b!4594784 () Bool)

(assert (=> b!4594784 (= e!2865906 (contains!13983 (t!358167 e!2865693) key!3287))))

(assert (= (and d!1446055 res!1921460) b!4594783))

(assert (= (and b!4594783 (not res!1921459)) b!4594784))

(declare-fun m!5418925 () Bool)

(assert (=> d!1446055 m!5418925))

(declare-fun m!5418927 () Bool)

(assert (=> d!1446055 m!5418927))

(declare-fun m!5418929 () Bool)

(assert (=> b!4594784 m!5418929))

(assert (=> bm!320653 d!1446055))

(declare-fun d!1446057 () Bool)

(declare-fun res!1921461 () Bool)

(declare-fun e!2865907 () Bool)

(assert (=> d!1446057 (=> res!1921461 e!2865907)))

(assert (=> d!1446057 (= res!1921461 ((_ is Nil!51047) (toList!4627 lm!1477)))))

(assert (=> d!1446057 (= (forall!10572 (toList!4627 lm!1477) lambda!185438) e!2865907)))

(declare-fun b!4594785 () Bool)

(declare-fun e!2865908 () Bool)

(assert (=> b!4594785 (= e!2865907 e!2865908)))

(declare-fun res!1921462 () Bool)

(assert (=> b!4594785 (=> (not res!1921462) (not e!2865908))))

(assert (=> b!4594785 (= res!1921462 (dynLambda!21382 lambda!185438 (h!57003 (toList!4627 lm!1477))))))

(declare-fun b!4594786 () Bool)

(assert (=> b!4594786 (= e!2865908 (forall!10572 (t!358165 (toList!4627 lm!1477)) lambda!185438))))

(assert (= (and d!1446057 (not res!1921461)) b!4594785))

(assert (= (and b!4594785 res!1921462) b!4594786))

(declare-fun b_lambda!168989 () Bool)

(assert (=> (not b_lambda!168989) (not b!4594785)))

(declare-fun m!5418931 () Bool)

(assert (=> b!4594785 m!5418931))

(declare-fun m!5418933 () Bool)

(assert (=> b!4594786 m!5418933))

(assert (=> d!1445909 d!1446057))

(declare-fun d!1446059 () Bool)

(assert (=> d!1446059 (dynLambda!21382 lambda!185400 lt!1755186)))

(assert (=> d!1446059 true))

(declare-fun _$7!2117 () Unit!107680)

(assert (=> d!1446059 (= (choose!30732 (toList!4627 lm!1477) lambda!185400 lt!1755186) _$7!2117)))

(declare-fun b_lambda!168991 () Bool)

(assert (=> (not b_lambda!168991) (not d!1446059)))

(declare-fun bs!1008904 () Bool)

(assert (= bs!1008904 d!1446059))

(assert (=> bs!1008904 m!5418293))

(assert (=> d!1445841 d!1446059))

(assert (=> d!1445841 d!1445815))

(declare-fun d!1446063 () Bool)

(assert (=> d!1446063 (= (invariantList!1116 (toList!4628 lt!1755326)) (noDuplicatedKeys!321 (toList!4628 lt!1755326)))))

(declare-fun bs!1008905 () Bool)

(assert (= bs!1008905 d!1446063))

(declare-fun m!5418937 () Bool)

(assert (=> bs!1008905 m!5418937))

(assert (=> d!1445899 d!1446063))

(declare-fun d!1446065 () Bool)

(declare-fun res!1921463 () Bool)

(declare-fun e!2865909 () Bool)

(assert (=> d!1446065 (=> res!1921463 e!2865909)))

(assert (=> d!1446065 (= res!1921463 ((_ is Nil!51047) lt!1755179))))

(assert (=> d!1446065 (= (forall!10572 lt!1755179 lambda!185429) e!2865909)))

(declare-fun b!4594787 () Bool)

(declare-fun e!2865910 () Bool)

(assert (=> b!4594787 (= e!2865909 e!2865910)))

(declare-fun res!1921464 () Bool)

(assert (=> b!4594787 (=> (not res!1921464) (not e!2865910))))

(assert (=> b!4594787 (= res!1921464 (dynLambda!21382 lambda!185429 (h!57003 lt!1755179)))))

(declare-fun b!4594788 () Bool)

(assert (=> b!4594788 (= e!2865910 (forall!10572 (t!358165 lt!1755179) lambda!185429))))

(assert (= (and d!1446065 (not res!1921463)) b!4594787))

(assert (= (and b!4594787 res!1921464) b!4594788))

(declare-fun b_lambda!168993 () Bool)

(assert (=> (not b_lambda!168993) (not b!4594787)))

(declare-fun m!5418939 () Bool)

(assert (=> b!4594787 m!5418939))

(declare-fun m!5418941 () Bool)

(assert (=> b!4594788 m!5418941))

(assert (=> d!1445899 d!1446065))

(declare-fun d!1446067 () Bool)

(declare-fun isEmpty!28854 (Option!11375) Bool)

(assert (=> d!1446067 (= (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 lt!1755179)) key!3287)) (not (isEmpty!28854 (getValueByKey!1295 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))))

(declare-fun bs!1008906 () Bool)

(assert (= bs!1008906 d!1446067))

(assert (=> bs!1008906 m!5418467))

(declare-fun m!5418943 () Bool)

(assert (=> bs!1008906 m!5418943))

(assert (=> b!4594473 d!1446067))

(declare-fun b!4594799 () Bool)

(declare-fun e!2865917 () Option!11375)

(assert (=> b!4594799 (= e!2865917 (Some!11374 (_2!29131 (h!57002 (toList!4628 (extractMap!1366 lt!1755179))))))))

(declare-fun b!4594801 () Bool)

(declare-fun e!2865918 () Option!11375)

(assert (=> b!4594801 (= e!2865918 (getValueByKey!1295 (t!358164 (toList!4628 (extractMap!1366 lt!1755179))) key!3287))))

(declare-fun b!4594800 () Bool)

(assert (=> b!4594800 (= e!2865917 e!2865918)))

(declare-fun c!786872 () Bool)

(assert (=> b!4594800 (= c!786872 (and ((_ is Cons!51046) (toList!4628 (extractMap!1366 lt!1755179))) (not (= (_1!29131 (h!57002 (toList!4628 (extractMap!1366 lt!1755179)))) key!3287))))))

(declare-fun d!1446069 () Bool)

(declare-fun c!786871 () Bool)

(assert (=> d!1446069 (= c!786871 (and ((_ is Cons!51046) (toList!4628 (extractMap!1366 lt!1755179))) (= (_1!29131 (h!57002 (toList!4628 (extractMap!1366 lt!1755179)))) key!3287)))))

(assert (=> d!1446069 (= (getValueByKey!1295 (toList!4628 (extractMap!1366 lt!1755179)) key!3287) e!2865917)))

(declare-fun b!4594802 () Bool)

(assert (=> b!4594802 (= e!2865918 None!11374)))

(assert (= (and d!1446069 c!786871) b!4594799))

(assert (= (and d!1446069 (not c!786871)) b!4594800))

(assert (= (and b!4594800 c!786872) b!4594801))

(assert (= (and b!4594800 (not c!786872)) b!4594802))

(declare-fun m!5418961 () Bool)

(assert (=> b!4594801 m!5418961))

(assert (=> b!4594473 d!1446069))

(declare-fun d!1446081 () Bool)

(declare-fun res!1921473 () Bool)

(declare-fun e!2865925 () Bool)

(assert (=> d!1446081 (=> res!1921473 e!2865925)))

(assert (=> d!1446081 (= res!1921473 ((_ is Nil!51046) newBucket!178))))

(assert (=> d!1446081 (= (forall!10574 newBucket!178 lambda!185435) e!2865925)))

(declare-fun b!4594809 () Bool)

(declare-fun e!2865926 () Bool)

(assert (=> b!4594809 (= e!2865925 e!2865926)))

(declare-fun res!1921474 () Bool)

(assert (=> b!4594809 (=> (not res!1921474) (not e!2865926))))

(declare-fun dynLambda!21384 (Int tuple2!51674) Bool)

(assert (=> b!4594809 (= res!1921474 (dynLambda!21384 lambda!185435 (h!57002 newBucket!178)))))

(declare-fun b!4594810 () Bool)

(assert (=> b!4594810 (= e!2865926 (forall!10574 (t!358164 newBucket!178) lambda!185435))))

(assert (= (and d!1446081 (not res!1921473)) b!4594809))

(assert (= (and b!4594809 res!1921474) b!4594810))

(declare-fun b_lambda!168997 () Bool)

(assert (=> (not b_lambda!168997) (not b!4594809)))

(declare-fun m!5418963 () Bool)

(assert (=> b!4594809 m!5418963))

(declare-fun m!5418965 () Bool)

(assert (=> b!4594810 m!5418965))

(assert (=> d!1445905 d!1446081))

(assert (=> b!4594446 d!1446001))

(assert (=> b!4594446 d!1446003))

(declare-fun d!1446083 () Bool)

(declare-fun isEmpty!28855 (Option!11374) Bool)

(assert (=> d!1446083 (= (isDefined!8642 (getValueByKey!1294 (toList!4627 lm!1477) lt!1755183)) (not (isEmpty!28855 (getValueByKey!1294 (toList!4627 lm!1477) lt!1755183))))))

(declare-fun bs!1008911 () Bool)

(assert (= bs!1008911 d!1446083))

(assert (=> bs!1008911 m!5418329))

(declare-fun m!5418969 () Bool)

(assert (=> bs!1008911 m!5418969))

(assert (=> b!4594347 d!1446083))

(declare-fun b!4594814 () Bool)

(declare-fun e!2865929 () Option!11374)

(assert (=> b!4594814 (= e!2865929 (getValueByKey!1294 (t!358165 (toList!4627 lm!1477)) lt!1755183))))

(declare-fun b!4594815 () Bool)

(assert (=> b!4594815 (= e!2865929 None!11373)))

(declare-fun d!1446085 () Bool)

(declare-fun c!786873 () Bool)

(assert (=> d!1446085 (= c!786873 (and ((_ is Cons!51047) (toList!4627 lm!1477)) (= (_1!29132 (h!57003 (toList!4627 lm!1477))) lt!1755183)))))

(declare-fun e!2865928 () Option!11374)

(assert (=> d!1446085 (= (getValueByKey!1294 (toList!4627 lm!1477) lt!1755183) e!2865928)))

(declare-fun b!4594812 () Bool)

(assert (=> b!4594812 (= e!2865928 (Some!11373 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(declare-fun b!4594813 () Bool)

(assert (=> b!4594813 (= e!2865928 e!2865929)))

(declare-fun c!786874 () Bool)

(assert (=> b!4594813 (= c!786874 (and ((_ is Cons!51047) (toList!4627 lm!1477)) (not (= (_1!29132 (h!57003 (toList!4627 lm!1477))) lt!1755183))))))

(assert (= (and d!1446085 c!786873) b!4594812))

(assert (= (and d!1446085 (not c!786873)) b!4594813))

(assert (= (and b!4594813 c!786874) b!4594814))

(assert (= (and b!4594813 (not c!786874)) b!4594815))

(declare-fun m!5418971 () Bool)

(assert (=> b!4594814 m!5418971))

(assert (=> b!4594347 d!1446085))

(declare-fun d!1446089 () Bool)

(declare-fun c!786880 () Bool)

(assert (=> d!1446089 (= c!786880 ((_ is Nil!51047) (toList!4627 lm!1477)))))

(declare-fun e!2865940 () (InoxSet tuple2!51676))

(assert (=> d!1446089 (= (content!8624 (toList!4627 lm!1477)) e!2865940)))

(declare-fun b!4594831 () Bool)

(assert (=> b!4594831 (= e!2865940 ((as const (Array tuple2!51676 Bool)) false))))

(declare-fun b!4594832 () Bool)

(assert (=> b!4594832 (= e!2865940 ((_ map or) (store ((as const (Array tuple2!51676 Bool)) false) (h!57003 (toList!4627 lm!1477)) true) (content!8624 (t!358165 (toList!4627 lm!1477)))))))

(assert (= (and d!1446089 c!786880) b!4594831))

(assert (= (and d!1446089 (not c!786880)) b!4594832))

(declare-fun m!5418995 () Bool)

(assert (=> b!4594832 m!5418995))

(declare-fun m!5418999 () Bool)

(assert (=> b!4594832 m!5418999))

(assert (=> d!1445855 d!1446089))

(declare-fun d!1446093 () Bool)

(declare-fun lt!1755524 () Bool)

(assert (=> d!1446093 (= lt!1755524 (select (content!8624 (t!358165 (toList!4627 lm!1477))) lt!1755186))))

(declare-fun e!2865942 () Bool)

(assert (=> d!1446093 (= lt!1755524 e!2865942)))

(declare-fun res!1921482 () Bool)

(assert (=> d!1446093 (=> (not res!1921482) (not e!2865942))))

(assert (=> d!1446093 (= res!1921482 ((_ is Cons!51047) (t!358165 (toList!4627 lm!1477))))))

(assert (=> d!1446093 (= (contains!13980 (t!358165 (toList!4627 lm!1477)) lt!1755186) lt!1755524)))

(declare-fun b!4594833 () Bool)

(declare-fun e!2865941 () Bool)

(assert (=> b!4594833 (= e!2865942 e!2865941)))

(declare-fun res!1921481 () Bool)

(assert (=> b!4594833 (=> res!1921481 e!2865941)))

(assert (=> b!4594833 (= res!1921481 (= (h!57003 (t!358165 (toList!4627 lm!1477))) lt!1755186))))

(declare-fun b!4594835 () Bool)

(assert (=> b!4594835 (= e!2865941 (contains!13980 (t!358165 (t!358165 (toList!4627 lm!1477))) lt!1755186))))

(assert (= (and d!1446093 res!1921482) b!4594833))

(assert (= (and b!4594833 (not res!1921481)) b!4594835))

(assert (=> d!1446093 m!5418999))

(declare-fun m!5419001 () Bool)

(assert (=> d!1446093 m!5419001))

(declare-fun m!5419003 () Bool)

(assert (=> b!4594835 m!5419003))

(assert (=> b!4594363 d!1446093))

(declare-fun d!1446097 () Bool)

(declare-fun res!1921483 () Bool)

(declare-fun e!2865944 () Bool)

(assert (=> d!1446097 (=> res!1921483 e!2865944)))

(assert (=> d!1446097 (= res!1921483 (not ((_ is Cons!51046) (_2!29132 lt!1755186))))))

(assert (=> d!1446097 (= (noDuplicateKeys!1306 (_2!29132 lt!1755186)) e!2865944)))

(declare-fun b!4594837 () Bool)

(declare-fun e!2865945 () Bool)

(assert (=> b!4594837 (= e!2865944 e!2865945)))

(declare-fun res!1921484 () Bool)

(assert (=> b!4594837 (=> (not res!1921484) (not e!2865945))))

(assert (=> b!4594837 (= res!1921484 (not (containsKey!2126 (t!358164 (_2!29132 lt!1755186)) (_1!29131 (h!57002 (_2!29132 lt!1755186))))))))

(declare-fun b!4594838 () Bool)

(assert (=> b!4594838 (= e!2865945 (noDuplicateKeys!1306 (t!358164 (_2!29132 lt!1755186))))))

(assert (= (and d!1446097 (not res!1921483)) b!4594837))

(assert (= (and b!4594837 res!1921484) b!4594838))

(declare-fun m!5419005 () Bool)

(assert (=> b!4594837 m!5419005))

(declare-fun m!5419007 () Bool)

(assert (=> b!4594838 m!5419007))

(assert (=> bs!1008785 d!1446097))

(declare-fun d!1446099 () Bool)

(declare-fun res!1921485 () Bool)

(declare-fun e!2865946 () Bool)

(assert (=> d!1446099 (=> res!1921485 e!2865946)))

(assert (=> d!1446099 (= res!1921485 (not ((_ is Cons!51046) (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))))

(assert (=> d!1446099 (= (noDuplicateKeys!1306 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) e!2865946)))

(declare-fun b!4594839 () Bool)

(declare-fun e!2865947 () Bool)

(assert (=> b!4594839 (= e!2865946 e!2865947)))

(declare-fun res!1921486 () Bool)

(assert (=> b!4594839 (=> (not res!1921486) (not e!2865947))))

(assert (=> b!4594839 (= res!1921486 (not (containsKey!2126 (t!358164 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) (_1!29131 (h!57002 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))))))

(declare-fun b!4594840 () Bool)

(assert (=> b!4594840 (= e!2865947 (noDuplicateKeys!1306 (t!358164 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))))

(assert (= (and d!1446099 (not res!1921485)) b!4594839))

(assert (= (and b!4594839 res!1921486) b!4594840))

(declare-fun m!5419009 () Bool)

(assert (=> b!4594839 m!5419009))

(declare-fun m!5419011 () Bool)

(assert (=> b!4594840 m!5419011))

(assert (=> b!4594465 d!1446099))

(declare-fun d!1446101 () Bool)

(declare-fun res!1921487 () Bool)

(declare-fun e!2865948 () Bool)

(assert (=> d!1446101 (=> res!1921487 e!2865948)))

(assert (=> d!1446101 (= res!1921487 (and ((_ is Cons!51046) lt!1755231) (= (_1!29131 (h!57002 lt!1755231)) key!3287)))))

(assert (=> d!1446101 (= (containsKey!2126 lt!1755231 key!3287) e!2865948)))

(declare-fun b!4594841 () Bool)

(declare-fun e!2865949 () Bool)

(assert (=> b!4594841 (= e!2865948 e!2865949)))

(declare-fun res!1921488 () Bool)

(assert (=> b!4594841 (=> (not res!1921488) (not e!2865949))))

(assert (=> b!4594841 (= res!1921488 ((_ is Cons!51046) lt!1755231))))

(declare-fun b!4594842 () Bool)

(assert (=> b!4594842 (= e!2865949 (containsKey!2126 (t!358164 lt!1755231) key!3287))))

(assert (= (and d!1446101 (not res!1921487)) b!4594841))

(assert (= (and b!4594841 res!1921488) b!4594842))

(declare-fun m!5419013 () Bool)

(assert (=> b!4594842 m!5419013))

(assert (=> d!1445845 d!1446101))

(declare-fun d!1446103 () Bool)

(declare-fun res!1921489 () Bool)

(declare-fun e!2865950 () Bool)

(assert (=> d!1446103 (=> res!1921489 e!2865950)))

(assert (=> d!1446103 (= res!1921489 (not ((_ is Cons!51046) lt!1755189)))))

(assert (=> d!1446103 (= (noDuplicateKeys!1306 lt!1755189) e!2865950)))

(declare-fun b!4594843 () Bool)

(declare-fun e!2865951 () Bool)

(assert (=> b!4594843 (= e!2865950 e!2865951)))

(declare-fun res!1921490 () Bool)

(assert (=> b!4594843 (=> (not res!1921490) (not e!2865951))))

(assert (=> b!4594843 (= res!1921490 (not (containsKey!2126 (t!358164 lt!1755189) (_1!29131 (h!57002 lt!1755189)))))))

(declare-fun b!4594844 () Bool)

(assert (=> b!4594844 (= e!2865951 (noDuplicateKeys!1306 (t!358164 lt!1755189)))))

(assert (= (and d!1446103 (not res!1921489)) b!4594843))

(assert (= (and b!4594843 res!1921490) b!4594844))

(declare-fun m!5419023 () Bool)

(assert (=> b!4594843 m!5419023))

(declare-fun m!5419025 () Bool)

(assert (=> b!4594844 m!5419025))

(assert (=> d!1445845 d!1446103))

(declare-fun bs!1008930 () Bool)

(declare-fun b!4594863 () Bool)

(assert (= bs!1008930 (and b!4594863 d!1445905)))

(declare-fun lambda!185554 () Int)

(assert (=> bs!1008930 (not (= lambda!185554 lambda!185435))))

(assert (=> b!4594863 true))

(declare-fun bs!1008931 () Bool)

(declare-fun b!4594861 () Bool)

(assert (= bs!1008931 (and b!4594861 d!1445905)))

(declare-fun lambda!185555 () Int)

(assert (=> bs!1008931 (not (= lambda!185555 lambda!185435))))

(declare-fun bs!1008932 () Bool)

(assert (= bs!1008932 (and b!4594861 b!4594863)))

(assert (=> bs!1008932 (= lambda!185555 lambda!185554)))

(assert (=> b!4594861 true))

(declare-fun lambda!185556 () Int)

(assert (=> bs!1008931 (not (= lambda!185556 lambda!185435))))

(declare-fun lt!1755579 () ListMap!3889)

(assert (=> bs!1008932 (= (= lt!1755579 (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185556 lambda!185554))))

(assert (=> b!4594861 (= (= lt!1755579 (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185556 lambda!185555))))

(assert (=> b!4594861 true))

(declare-fun bs!1008933 () Bool)

(declare-fun d!1446107 () Bool)

(assert (= bs!1008933 (and d!1446107 d!1445905)))

(declare-fun lambda!185557 () Int)

(assert (=> bs!1008933 (not (= lambda!185557 lambda!185435))))

(declare-fun bs!1008934 () Bool)

(assert (= bs!1008934 (and d!1446107 b!4594863)))

(declare-fun lt!1755577 () ListMap!3889)

(assert (=> bs!1008934 (= (= lt!1755577 (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185557 lambda!185554))))

(declare-fun bs!1008935 () Bool)

(assert (= bs!1008935 (and d!1446107 b!4594861)))

(assert (=> bs!1008935 (= (= lt!1755577 (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185557 lambda!185555))))

(assert (=> bs!1008935 (= (= lt!1755577 lt!1755579) (= lambda!185557 lambda!185556))))

(assert (=> d!1446107 true))

(declare-fun call!320680 () Bool)

(declare-fun bm!320674 () Bool)

(declare-fun c!786884 () Bool)

(assert (=> bm!320674 (= call!320680 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 lt!1755179))) (ite c!786884 lambda!185554 lambda!185555)))))

(declare-fun e!2865964 () ListMap!3889)

(assert (=> b!4594861 (= e!2865964 lt!1755579)))

(declare-fun lt!1755571 () ListMap!3889)

(declare-fun +!1732 (ListMap!3889 tuple2!51674) ListMap!3889)

(assert (=> b!4594861 (= lt!1755571 (+!1732 (extractMap!1366 (t!358165 lt!1755179)) (h!57002 (_2!29132 (h!57003 lt!1755179)))))))

(assert (=> b!4594861 (= lt!1755579 (addToMapMapFromBucket!806 (t!358164 (_2!29132 (h!57003 lt!1755179))) (+!1732 (extractMap!1366 (t!358165 lt!1755179)) (h!57002 (_2!29132 (h!57003 lt!1755179))))))))

(declare-fun lt!1755586 () Unit!107680)

(declare-fun call!320679 () Unit!107680)

(assert (=> b!4594861 (= lt!1755586 call!320679)))

(assert (=> b!4594861 call!320680))

(declare-fun lt!1755572 () Unit!107680)

(assert (=> b!4594861 (= lt!1755572 lt!1755586)))

(assert (=> b!4594861 (forall!10574 (toList!4628 lt!1755571) lambda!185556)))

(declare-fun lt!1755583 () Unit!107680)

(declare-fun Unit!107733 () Unit!107680)

(assert (=> b!4594861 (= lt!1755583 Unit!107733)))

(declare-fun call!320681 () Bool)

(assert (=> b!4594861 call!320681))

(declare-fun lt!1755568 () Unit!107680)

(declare-fun Unit!107734 () Unit!107680)

(assert (=> b!4594861 (= lt!1755568 Unit!107734)))

(declare-fun lt!1755575 () Unit!107680)

(declare-fun Unit!107735 () Unit!107680)

(assert (=> b!4594861 (= lt!1755575 Unit!107735)))

(declare-fun lt!1755574 () Unit!107680)

(declare-fun forallContained!2831 (List!51170 Int tuple2!51674) Unit!107680)

(assert (=> b!4594861 (= lt!1755574 (forallContained!2831 (toList!4628 lt!1755571) lambda!185556 (h!57002 (_2!29132 (h!57003 lt!1755179)))))))

(assert (=> b!4594861 (contains!13979 lt!1755571 (_1!29131 (h!57002 (_2!29132 (h!57003 lt!1755179)))))))

(declare-fun lt!1755587 () Unit!107680)

(declare-fun Unit!107736 () Unit!107680)

(assert (=> b!4594861 (= lt!1755587 Unit!107736)))

(assert (=> b!4594861 (contains!13979 lt!1755579 (_1!29131 (h!57002 (_2!29132 (h!57003 lt!1755179)))))))

(declare-fun lt!1755576 () Unit!107680)

(declare-fun Unit!107737 () Unit!107680)

(assert (=> b!4594861 (= lt!1755576 Unit!107737)))

(assert (=> b!4594861 (forall!10574 (_2!29132 (h!57003 lt!1755179)) lambda!185556)))

(declare-fun lt!1755581 () Unit!107680)

(declare-fun Unit!107738 () Unit!107680)

(assert (=> b!4594861 (= lt!1755581 Unit!107738)))

(assert (=> b!4594861 (forall!10574 (toList!4628 lt!1755571) lambda!185556)))

(declare-fun lt!1755578 () Unit!107680)

(declare-fun Unit!107739 () Unit!107680)

(assert (=> b!4594861 (= lt!1755578 Unit!107739)))

(declare-fun lt!1755569 () Unit!107680)

(declare-fun Unit!107740 () Unit!107680)

(assert (=> b!4594861 (= lt!1755569 Unit!107740)))

(declare-fun lt!1755573 () Unit!107680)

(declare-fun addForallContainsKeyThenBeforeAdding!430 (ListMap!3889 ListMap!3889 K!12415 V!12661) Unit!107680)

(assert (=> b!4594861 (= lt!1755573 (addForallContainsKeyThenBeforeAdding!430 (extractMap!1366 (t!358165 lt!1755179)) lt!1755579 (_1!29131 (h!57002 (_2!29132 (h!57003 lt!1755179)))) (_2!29131 (h!57002 (_2!29132 (h!57003 lt!1755179))))))))

(assert (=> b!4594861 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 lt!1755179))) lambda!185556)))

(declare-fun lt!1755584 () Unit!107680)

(assert (=> b!4594861 (= lt!1755584 lt!1755573)))

(assert (=> b!4594861 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 lt!1755179))) lambda!185556)))

(declare-fun lt!1755585 () Unit!107680)

(declare-fun Unit!107741 () Unit!107680)

(assert (=> b!4594861 (= lt!1755585 Unit!107741)))

(declare-fun res!1921501 () Bool)

(assert (=> b!4594861 (= res!1921501 (forall!10574 (_2!29132 (h!57003 lt!1755179)) lambda!185556))))

(declare-fun e!2865965 () Bool)

(assert (=> b!4594861 (=> (not res!1921501) (not e!2865965))))

(assert (=> b!4594861 e!2865965))

(declare-fun lt!1755570 () Unit!107680)

(declare-fun Unit!107742 () Unit!107680)

(assert (=> b!4594861 (= lt!1755570 Unit!107742)))

(declare-fun b!4594862 () Bool)

(declare-fun res!1921499 () Bool)

(declare-fun e!2865963 () Bool)

(assert (=> b!4594862 (=> (not res!1921499) (not e!2865963))))

(assert (=> b!4594862 (= res!1921499 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 lt!1755179))) lambda!185557))))

(assert (=> b!4594863 (= e!2865964 (extractMap!1366 (t!358165 lt!1755179)))))

(declare-fun lt!1755567 () Unit!107680)

(assert (=> b!4594863 (= lt!1755567 call!320679)))

(assert (=> b!4594863 call!320681))

(declare-fun lt!1755580 () Unit!107680)

(assert (=> b!4594863 (= lt!1755580 lt!1755567)))

(assert (=> b!4594863 call!320680))

(declare-fun lt!1755582 () Unit!107680)

(declare-fun Unit!107743 () Unit!107680)

(assert (=> b!4594863 (= lt!1755582 Unit!107743)))

(declare-fun b!4594864 () Bool)

(assert (=> b!4594864 (= e!2865963 (invariantList!1116 (toList!4628 lt!1755577)))))

(declare-fun bm!320675 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!430 (ListMap!3889) Unit!107680)

(assert (=> bm!320675 (= call!320679 (lemmaContainsAllItsOwnKeys!430 (extractMap!1366 (t!358165 lt!1755179))))))

(declare-fun bm!320676 () Bool)

(assert (=> bm!320676 (= call!320681 (forall!10574 (ite c!786884 (toList!4628 (extractMap!1366 (t!358165 lt!1755179))) (t!358164 (_2!29132 (h!57003 lt!1755179)))) (ite c!786884 lambda!185554 lambda!185556)))))

(declare-fun b!4594860 () Bool)

(assert (=> b!4594860 (= e!2865965 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 lt!1755179))) lambda!185556))))

(assert (=> d!1446107 e!2865963))

(declare-fun res!1921500 () Bool)

(assert (=> d!1446107 (=> (not res!1921500) (not e!2865963))))

(assert (=> d!1446107 (= res!1921500 (forall!10574 (_2!29132 (h!57003 lt!1755179)) lambda!185557))))

(assert (=> d!1446107 (= lt!1755577 e!2865964)))

(assert (=> d!1446107 (= c!786884 ((_ is Nil!51046) (_2!29132 (h!57003 lt!1755179))))))

(assert (=> d!1446107 (noDuplicateKeys!1306 (_2!29132 (h!57003 lt!1755179)))))

(assert (=> d!1446107 (= (addToMapMapFromBucket!806 (_2!29132 (h!57003 lt!1755179)) (extractMap!1366 (t!358165 lt!1755179))) lt!1755577)))

(assert (= (and d!1446107 c!786884) b!4594863))

(assert (= (and d!1446107 (not c!786884)) b!4594861))

(assert (= (and b!4594861 res!1921501) b!4594860))

(assert (= (or b!4594863 b!4594861) bm!320676))

(assert (= (or b!4594863 b!4594861) bm!320674))

(assert (= (or b!4594863 b!4594861) bm!320675))

(assert (= (and d!1446107 res!1921500) b!4594862))

(assert (= (and b!4594862 res!1921499) b!4594864))

(assert (=> bm!320675 m!5418483))

(declare-fun m!5419039 () Bool)

(assert (=> bm!320675 m!5419039))

(declare-fun m!5419041 () Bool)

(assert (=> d!1446107 m!5419041))

(declare-fun m!5419043 () Bool)

(assert (=> d!1446107 m!5419043))

(declare-fun m!5419045 () Bool)

(assert (=> b!4594862 m!5419045))

(declare-fun m!5419047 () Bool)

(assert (=> b!4594860 m!5419047))

(declare-fun m!5419049 () Bool)

(assert (=> b!4594864 m!5419049))

(declare-fun m!5419051 () Bool)

(assert (=> bm!320676 m!5419051))

(declare-fun m!5419053 () Bool)

(assert (=> b!4594861 m!5419053))

(declare-fun m!5419055 () Bool)

(assert (=> b!4594861 m!5419055))

(assert (=> b!4594861 m!5419047))

(assert (=> b!4594861 m!5418483))

(declare-fun m!5419057 () Bool)

(assert (=> b!4594861 m!5419057))

(declare-fun m!5419059 () Bool)

(assert (=> b!4594861 m!5419059))

(declare-fun m!5419061 () Bool)

(assert (=> b!4594861 m!5419061))

(declare-fun m!5419063 () Bool)

(assert (=> b!4594861 m!5419063))

(assert (=> b!4594861 m!5419063))

(declare-fun m!5419065 () Bool)

(assert (=> b!4594861 m!5419065))

(assert (=> b!4594861 m!5419047))

(assert (=> b!4594861 m!5419061))

(assert (=> b!4594861 m!5418483))

(assert (=> b!4594861 m!5419053))

(declare-fun m!5419067 () Bool)

(assert (=> b!4594861 m!5419067))

(declare-fun m!5419069 () Bool)

(assert (=> bm!320674 m!5419069))

(assert (=> b!4594475 d!1446107))

(declare-fun bs!1008936 () Bool)

(declare-fun d!1446127 () Bool)

(assert (= bs!1008936 (and d!1446127 d!1445893)))

(declare-fun lambda!185558 () Int)

(assert (=> bs!1008936 (= lambda!185558 lambda!185428)))

(declare-fun bs!1008937 () Bool)

(assert (= bs!1008937 (and d!1446127 start!458060)))

(assert (=> bs!1008937 (= lambda!185558 lambda!185400)))

(declare-fun bs!1008938 () Bool)

(assert (= bs!1008938 (and d!1446127 d!1445863)))

(assert (=> bs!1008938 (= lambda!185558 lambda!185425)))

(declare-fun bs!1008939 () Bool)

(assert (= bs!1008939 (and d!1446127 d!1445899)))

(assert (=> bs!1008939 (= lambda!185558 lambda!185429)))

(declare-fun bs!1008940 () Bool)

(assert (= bs!1008940 (and d!1446127 d!1445825)))

(assert (=> bs!1008940 (= lambda!185558 lambda!185403)))

(declare-fun bs!1008941 () Bool)

(assert (= bs!1008941 (and d!1446127 d!1445901)))

(assert (=> bs!1008941 (= lambda!185558 lambda!185432)))

(declare-fun bs!1008942 () Bool)

(assert (= bs!1008942 (and d!1446127 d!1445909)))

(assert (=> bs!1008942 (not (= lambda!185558 lambda!185438))))

(declare-fun lt!1755588 () ListMap!3889)

(assert (=> d!1446127 (invariantList!1116 (toList!4628 lt!1755588))))

(declare-fun e!2865966 () ListMap!3889)

(assert (=> d!1446127 (= lt!1755588 e!2865966)))

(declare-fun c!786885 () Bool)

(assert (=> d!1446127 (= c!786885 ((_ is Cons!51047) (t!358165 lt!1755179)))))

(assert (=> d!1446127 (forall!10572 (t!358165 lt!1755179) lambda!185558)))

(assert (=> d!1446127 (= (extractMap!1366 (t!358165 lt!1755179)) lt!1755588)))

(declare-fun b!4594867 () Bool)

(assert (=> b!4594867 (= e!2865966 (addToMapMapFromBucket!806 (_2!29132 (h!57003 (t!358165 lt!1755179))) (extractMap!1366 (t!358165 (t!358165 lt!1755179)))))))

(declare-fun b!4594868 () Bool)

(assert (=> b!4594868 (= e!2865966 (ListMap!3890 Nil!51046))))

(assert (= (and d!1446127 c!786885) b!4594867))

(assert (= (and d!1446127 (not c!786885)) b!4594868))

(declare-fun m!5419071 () Bool)

(assert (=> d!1446127 m!5419071))

(declare-fun m!5419073 () Bool)

(assert (=> d!1446127 m!5419073))

(declare-fun m!5419075 () Bool)

(assert (=> b!4594867 m!5419075))

(assert (=> b!4594867 m!5419075))

(declare-fun m!5419077 () Bool)

(assert (=> b!4594867 m!5419077))

(assert (=> b!4594475 d!1446127))

(declare-fun d!1446129 () Bool)

(assert (=> d!1446129 (isDefined!8642 (getValueByKey!1294 (toList!4627 lm!1477) lt!1755183))))

(declare-fun lt!1755591 () Unit!107680)

(declare-fun choose!30741 (List!51171 (_ BitVec 64)) Unit!107680)

(assert (=> d!1446129 (= lt!1755591 (choose!30741 (toList!4627 lm!1477) lt!1755183))))

(declare-fun e!2865969 () Bool)

(assert (=> d!1446129 e!2865969))

(declare-fun res!1921504 () Bool)

(assert (=> d!1446129 (=> (not res!1921504) (not e!2865969))))

(assert (=> d!1446129 (= res!1921504 (isStrictlySorted!532 (toList!4627 lm!1477)))))

(assert (=> d!1446129 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1198 (toList!4627 lm!1477) lt!1755183) lt!1755591)))

(declare-fun b!4594871 () Bool)

(assert (=> b!4594871 (= e!2865969 (containsKey!2129 (toList!4627 lm!1477) lt!1755183))))

(assert (= (and d!1446129 res!1921504) b!4594871))

(assert (=> d!1446129 m!5418329))

(assert (=> d!1446129 m!5418329))

(assert (=> d!1446129 m!5418331))

(declare-fun m!5419079 () Bool)

(assert (=> d!1446129 m!5419079))

(assert (=> d!1446129 m!5418239))

(assert (=> b!4594871 m!5418325))

(assert (=> b!4594345 d!1446129))

(assert (=> b!4594345 d!1446083))

(assert (=> b!4594345 d!1446085))

(assert (=> b!4594468 d!1445951))

(declare-fun d!1446131 () Bool)

(declare-fun res!1921505 () Bool)

(declare-fun e!2865970 () Bool)

(assert (=> d!1446131 (=> res!1921505 e!2865970)))

(assert (=> d!1446131 (= res!1921505 (and ((_ is Cons!51046) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (= (_1!29131 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) key!3287)))))

(assert (=> d!1446131 (= (containsKey!2130 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287) e!2865970)))

(declare-fun b!4594872 () Bool)

(declare-fun e!2865971 () Bool)

(assert (=> b!4594872 (= e!2865970 e!2865971)))

(declare-fun res!1921506 () Bool)

(assert (=> b!4594872 (=> (not res!1921506) (not e!2865971))))

(assert (=> b!4594872 (= res!1921506 ((_ is Cons!51046) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))))

(declare-fun b!4594873 () Bool)

(assert (=> b!4594873 (= e!2865971 (containsKey!2130 (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) key!3287))))

(assert (= (and d!1446131 (not res!1921505)) b!4594872))

(assert (= (and b!4594872 res!1921506) b!4594873))

(declare-fun m!5419081 () Bool)

(assert (=> b!4594873 m!5419081))

(assert (=> b!4594451 d!1446131))

(declare-fun d!1446133 () Bool)

(assert (=> d!1446133 (containsKey!2130 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287)))

(declare-fun lt!1755594 () Unit!107680)

(declare-fun choose!30742 (List!51170 K!12415) Unit!107680)

(assert (=> d!1446133 (= lt!1755594 (choose!30742 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(assert (=> d!1446133 (invariantList!1116 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))))

(assert (=> d!1446133 (= (lemmaInGetKeysListThenContainsKey!564 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287) lt!1755594)))

(declare-fun bs!1008943 () Bool)

(assert (= bs!1008943 d!1446133))

(assert (=> bs!1008943 m!5418439))

(declare-fun m!5419083 () Bool)

(assert (=> bs!1008943 m!5419083))

(assert (=> bs!1008943 m!5418763))

(assert (=> b!4594451 d!1446133))

(assert (=> d!1445863 d!1445891))

(assert (=> d!1445863 d!1445893))

(declare-fun d!1446135 () Bool)

(assert (=> d!1446135 (not (contains!13979 (extractMap!1366 (toList!4627 lm!1477)) key!3287))))

(assert (=> d!1446135 true))

(declare-fun _$26!527 () Unit!107680)

(assert (=> d!1446135 (= (choose!30733 lm!1477 key!3287 hashF!1107) _$26!527)))

(declare-fun bs!1008944 () Bool)

(assert (= bs!1008944 d!1446135))

(assert (=> bs!1008944 m!5418227))

(assert (=> bs!1008944 m!5418227))

(assert (=> bs!1008944 m!5418229))

(assert (=> d!1445863 d!1446135))

(declare-fun d!1446137 () Bool)

(declare-fun res!1921507 () Bool)

(declare-fun e!2865972 () Bool)

(assert (=> d!1446137 (=> res!1921507 e!2865972)))

(assert (=> d!1446137 (= res!1921507 ((_ is Nil!51047) (toList!4627 lm!1477)))))

(assert (=> d!1446137 (= (forall!10572 (toList!4627 lm!1477) lambda!185425) e!2865972)))

(declare-fun b!4594874 () Bool)

(declare-fun e!2865973 () Bool)

(assert (=> b!4594874 (= e!2865972 e!2865973)))

(declare-fun res!1921508 () Bool)

(assert (=> b!4594874 (=> (not res!1921508) (not e!2865973))))

(assert (=> b!4594874 (= res!1921508 (dynLambda!21382 lambda!185425 (h!57003 (toList!4627 lm!1477))))))

(declare-fun b!4594875 () Bool)

(assert (=> b!4594875 (= e!2865973 (forall!10572 (t!358165 (toList!4627 lm!1477)) lambda!185425))))

(assert (= (and d!1446137 (not res!1921507)) b!4594874))

(assert (= (and b!4594874 res!1921508) b!4594875))

(declare-fun b_lambda!169021 () Bool)

(assert (=> (not b_lambda!169021) (not b!4594874)))

(declare-fun m!5419085 () Bool)

(assert (=> b!4594874 m!5419085))

(declare-fun m!5419087 () Bool)

(assert (=> b!4594875 m!5419087))

(assert (=> d!1445863 d!1446137))

(declare-fun d!1446139 () Bool)

(assert (=> d!1446139 (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))

(declare-fun lt!1755597 () Unit!107680)

(declare-fun choose!30743 (List!51170 K!12415) Unit!107680)

(assert (=> d!1446139 (= lt!1755597 (choose!30743 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))

(assert (=> d!1446139 (invariantList!1116 (toList!4628 (extractMap!1366 lt!1755179)))))

(assert (=> d!1446139 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1199 (toList!4628 (extractMap!1366 lt!1755179)) key!3287) lt!1755597)))

(declare-fun bs!1008945 () Bool)

(assert (= bs!1008945 d!1446139))

(assert (=> bs!1008945 m!5418467))

(assert (=> bs!1008945 m!5418467))

(assert (=> bs!1008945 m!5418469))

(declare-fun m!5419089 () Bool)

(assert (=> bs!1008945 m!5419089))

(assert (=> bs!1008945 m!5418891))

(assert (=> b!4594466 d!1446139))

(assert (=> b!4594466 d!1446067))

(assert (=> b!4594466 d!1446069))

(declare-fun d!1446141 () Bool)

(assert (=> d!1446141 (contains!13983 (getKeysList!565 (toList!4628 (extractMap!1366 lt!1755179))) key!3287)))

(declare-fun lt!1755600 () Unit!107680)

(declare-fun choose!30744 (List!51170 K!12415) Unit!107680)

(assert (=> d!1446141 (= lt!1755600 (choose!30744 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))

(assert (=> d!1446141 (invariantList!1116 (toList!4628 (extractMap!1366 lt!1755179)))))

(assert (=> d!1446141 (= (lemmaInListThenGetKeysListContains!561 (toList!4628 (extractMap!1366 lt!1755179)) key!3287) lt!1755600)))

(declare-fun bs!1008946 () Bool)

(assert (= bs!1008946 d!1446141))

(assert (=> bs!1008946 m!5418461))

(assert (=> bs!1008946 m!5418461))

(declare-fun m!5419091 () Bool)

(assert (=> bs!1008946 m!5419091))

(declare-fun m!5419093 () Bool)

(assert (=> bs!1008946 m!5419093))

(assert (=> bs!1008946 m!5418891))

(assert (=> b!4594466 d!1446141))

(declare-fun bs!1008947 () Bool)

(declare-fun b!4594879 () Bool)

(assert (= bs!1008947 (and b!4594879 d!1446107)))

(declare-fun lambda!185559 () Int)

(assert (=> bs!1008947 (= (= (extractMap!1366 (t!358165 (toList!4627 lm!1477))) lt!1755577) (= lambda!185559 lambda!185557))))

(declare-fun bs!1008948 () Bool)

(assert (= bs!1008948 (and b!4594879 b!4594861)))

(assert (=> bs!1008948 (= (= (extractMap!1366 (t!358165 (toList!4627 lm!1477))) lt!1755579) (= lambda!185559 lambda!185556))))

(declare-fun bs!1008949 () Bool)

(assert (= bs!1008949 (and b!4594879 d!1445905)))

(assert (=> bs!1008949 (not (= lambda!185559 lambda!185435))))

(assert (=> bs!1008948 (= (= (extractMap!1366 (t!358165 (toList!4627 lm!1477))) (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185559 lambda!185555))))

(declare-fun bs!1008950 () Bool)

(assert (= bs!1008950 (and b!4594879 b!4594863)))

(assert (=> bs!1008950 (= (= (extractMap!1366 (t!358165 (toList!4627 lm!1477))) (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185559 lambda!185554))))

(assert (=> b!4594879 true))

(declare-fun bs!1008951 () Bool)

(declare-fun b!4594877 () Bool)

(assert (= bs!1008951 (and b!4594877 b!4594879)))

(declare-fun lambda!185560 () Int)

(assert (=> bs!1008951 (= lambda!185560 lambda!185559)))

(declare-fun bs!1008952 () Bool)

(assert (= bs!1008952 (and b!4594877 d!1446107)))

(assert (=> bs!1008952 (= (= (extractMap!1366 (t!358165 (toList!4627 lm!1477))) lt!1755577) (= lambda!185560 lambda!185557))))

(declare-fun bs!1008953 () Bool)

(assert (= bs!1008953 (and b!4594877 b!4594861)))

(assert (=> bs!1008953 (= (= (extractMap!1366 (t!358165 (toList!4627 lm!1477))) lt!1755579) (= lambda!185560 lambda!185556))))

(declare-fun bs!1008954 () Bool)

(assert (= bs!1008954 (and b!4594877 d!1445905)))

(assert (=> bs!1008954 (not (= lambda!185560 lambda!185435))))

(assert (=> bs!1008953 (= (= (extractMap!1366 (t!358165 (toList!4627 lm!1477))) (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185560 lambda!185555))))

(declare-fun bs!1008955 () Bool)

(assert (= bs!1008955 (and b!4594877 b!4594863)))

(assert (=> bs!1008955 (= (= (extractMap!1366 (t!358165 (toList!4627 lm!1477))) (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185560 lambda!185554))))

(assert (=> b!4594877 true))

(declare-fun lt!1755613 () ListMap!3889)

(declare-fun lambda!185561 () Int)

(assert (=> bs!1008951 (= (= lt!1755613 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) (= lambda!185561 lambda!185559))))

(assert (=> bs!1008952 (= (= lt!1755613 lt!1755577) (= lambda!185561 lambda!185557))))

(assert (=> bs!1008953 (= (= lt!1755613 lt!1755579) (= lambda!185561 lambda!185556))))

(assert (=> bs!1008954 (not (= lambda!185561 lambda!185435))))

(assert (=> b!4594877 (= (= lt!1755613 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) (= lambda!185561 lambda!185560))))

(assert (=> bs!1008953 (= (= lt!1755613 (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185561 lambda!185555))))

(assert (=> bs!1008955 (= (= lt!1755613 (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185561 lambda!185554))))

(assert (=> b!4594877 true))

(declare-fun bs!1008956 () Bool)

(declare-fun d!1446143 () Bool)

(assert (= bs!1008956 (and d!1446143 b!4594879)))

(declare-fun lt!1755611 () ListMap!3889)

(declare-fun lambda!185562 () Int)

(assert (=> bs!1008956 (= (= lt!1755611 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) (= lambda!185562 lambda!185559))))

(declare-fun bs!1008957 () Bool)

(assert (= bs!1008957 (and d!1446143 d!1446107)))

(assert (=> bs!1008957 (= (= lt!1755611 lt!1755577) (= lambda!185562 lambda!185557))))

(declare-fun bs!1008958 () Bool)

(assert (= bs!1008958 (and d!1446143 b!4594861)))

(assert (=> bs!1008958 (= (= lt!1755611 lt!1755579) (= lambda!185562 lambda!185556))))

(declare-fun bs!1008959 () Bool)

(assert (= bs!1008959 (and d!1446143 d!1445905)))

(assert (=> bs!1008959 (not (= lambda!185562 lambda!185435))))

(declare-fun bs!1008960 () Bool)

(assert (= bs!1008960 (and d!1446143 b!4594877)))

(assert (=> bs!1008960 (= (= lt!1755611 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) (= lambda!185562 lambda!185560))))

(assert (=> bs!1008960 (= (= lt!1755611 lt!1755613) (= lambda!185562 lambda!185561))))

(assert (=> bs!1008958 (= (= lt!1755611 (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185562 lambda!185555))))

(declare-fun bs!1008961 () Bool)

(assert (= bs!1008961 (and d!1446143 b!4594863)))

(assert (=> bs!1008961 (= (= lt!1755611 (extractMap!1366 (t!358165 lt!1755179))) (= lambda!185562 lambda!185554))))

(assert (=> d!1446143 true))

(declare-fun call!320683 () Bool)

(declare-fun c!786886 () Bool)

(declare-fun bm!320677 () Bool)

(assert (=> bm!320677 (= call!320683 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) (ite c!786886 lambda!185559 lambda!185560)))))

(declare-fun e!2865975 () ListMap!3889)

(assert (=> b!4594877 (= e!2865975 lt!1755613)))

(declare-fun lt!1755605 () ListMap!3889)

(assert (=> b!4594877 (= lt!1755605 (+!1732 (extractMap!1366 (t!358165 (toList!4627 lm!1477))) (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(assert (=> b!4594877 (= lt!1755613 (addToMapMapFromBucket!806 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))) (+!1732 (extractMap!1366 (t!358165 (toList!4627 lm!1477))) (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))))

(declare-fun lt!1755620 () Unit!107680)

(declare-fun call!320682 () Unit!107680)

(assert (=> b!4594877 (= lt!1755620 call!320682)))

(assert (=> b!4594877 call!320683))

(declare-fun lt!1755606 () Unit!107680)

(assert (=> b!4594877 (= lt!1755606 lt!1755620)))

(assert (=> b!4594877 (forall!10574 (toList!4628 lt!1755605) lambda!185561)))

(declare-fun lt!1755617 () Unit!107680)

(declare-fun Unit!107746 () Unit!107680)

(assert (=> b!4594877 (= lt!1755617 Unit!107746)))

(declare-fun call!320684 () Bool)

(assert (=> b!4594877 call!320684))

(declare-fun lt!1755602 () Unit!107680)

(declare-fun Unit!107747 () Unit!107680)

(assert (=> b!4594877 (= lt!1755602 Unit!107747)))

(declare-fun lt!1755609 () Unit!107680)

(declare-fun Unit!107748 () Unit!107680)

(assert (=> b!4594877 (= lt!1755609 Unit!107748)))

(declare-fun lt!1755608 () Unit!107680)

(assert (=> b!4594877 (= lt!1755608 (forallContained!2831 (toList!4628 lt!1755605) lambda!185561 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(assert (=> b!4594877 (contains!13979 lt!1755605 (_1!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(declare-fun lt!1755621 () Unit!107680)

(declare-fun Unit!107749 () Unit!107680)

(assert (=> b!4594877 (= lt!1755621 Unit!107749)))

(assert (=> b!4594877 (contains!13979 lt!1755613 (_1!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(declare-fun lt!1755610 () Unit!107680)

(declare-fun Unit!107750 () Unit!107680)

(assert (=> b!4594877 (= lt!1755610 Unit!107750)))

(assert (=> b!4594877 (forall!10574 (_2!29132 (h!57003 (toList!4627 lm!1477))) lambda!185561)))

(declare-fun lt!1755615 () Unit!107680)

(declare-fun Unit!107751 () Unit!107680)

(assert (=> b!4594877 (= lt!1755615 Unit!107751)))

(assert (=> b!4594877 (forall!10574 (toList!4628 lt!1755605) lambda!185561)))

(declare-fun lt!1755612 () Unit!107680)

(declare-fun Unit!107752 () Unit!107680)

(assert (=> b!4594877 (= lt!1755612 Unit!107752)))

(declare-fun lt!1755603 () Unit!107680)

(declare-fun Unit!107753 () Unit!107680)

(assert (=> b!4594877 (= lt!1755603 Unit!107753)))

(declare-fun lt!1755607 () Unit!107680)

(assert (=> b!4594877 (= lt!1755607 (addForallContainsKeyThenBeforeAdding!430 (extractMap!1366 (t!358165 (toList!4627 lm!1477))) lt!1755613 (_1!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477))))) (_2!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))))

(assert (=> b!4594877 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) lambda!185561)))

(declare-fun lt!1755618 () Unit!107680)

(assert (=> b!4594877 (= lt!1755618 lt!1755607)))

(assert (=> b!4594877 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) lambda!185561)))

(declare-fun lt!1755619 () Unit!107680)

(declare-fun Unit!107754 () Unit!107680)

(assert (=> b!4594877 (= lt!1755619 Unit!107754)))

(declare-fun res!1921511 () Bool)

(assert (=> b!4594877 (= res!1921511 (forall!10574 (_2!29132 (h!57003 (toList!4627 lm!1477))) lambda!185561))))

(declare-fun e!2865976 () Bool)

(assert (=> b!4594877 (=> (not res!1921511) (not e!2865976))))

(assert (=> b!4594877 e!2865976))

(declare-fun lt!1755604 () Unit!107680)

(declare-fun Unit!107755 () Unit!107680)

(assert (=> b!4594877 (= lt!1755604 Unit!107755)))

(declare-fun b!4594878 () Bool)

(declare-fun res!1921509 () Bool)

(declare-fun e!2865974 () Bool)

(assert (=> b!4594878 (=> (not res!1921509) (not e!2865974))))

(assert (=> b!4594878 (= res!1921509 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) lambda!185562))))

(assert (=> b!4594879 (= e!2865975 (extractMap!1366 (t!358165 (toList!4627 lm!1477))))))

(declare-fun lt!1755601 () Unit!107680)

(assert (=> b!4594879 (= lt!1755601 call!320682)))

(assert (=> b!4594879 call!320684))

(declare-fun lt!1755614 () Unit!107680)

(assert (=> b!4594879 (= lt!1755614 lt!1755601)))

(assert (=> b!4594879 call!320683))

(declare-fun lt!1755616 () Unit!107680)

(declare-fun Unit!107756 () Unit!107680)

(assert (=> b!4594879 (= lt!1755616 Unit!107756)))

(declare-fun b!4594880 () Bool)

(assert (=> b!4594880 (= e!2865974 (invariantList!1116 (toList!4628 lt!1755611)))))

(declare-fun bm!320678 () Bool)

(assert (=> bm!320678 (= call!320682 (lemmaContainsAllItsOwnKeys!430 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))))))

(declare-fun bm!320679 () Bool)

(assert (=> bm!320679 (= call!320684 (forall!10574 (ite c!786886 (toList!4628 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) (ite c!786886 lambda!185559 lambda!185561)))))

(declare-fun b!4594876 () Bool)

(assert (=> b!4594876 (= e!2865976 (forall!10574 (toList!4628 (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) lambda!185561))))

(assert (=> d!1446143 e!2865974))

(declare-fun res!1921510 () Bool)

(assert (=> d!1446143 (=> (not res!1921510) (not e!2865974))))

(assert (=> d!1446143 (= res!1921510 (forall!10574 (_2!29132 (h!57003 (toList!4627 lm!1477))) lambda!185562))))

(assert (=> d!1446143 (= lt!1755611 e!2865975)))

(assert (=> d!1446143 (= c!786886 ((_ is Nil!51046) (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(assert (=> d!1446143 (noDuplicateKeys!1306 (_2!29132 (h!57003 (toList!4627 lm!1477))))))

(assert (=> d!1446143 (= (addToMapMapFromBucket!806 (_2!29132 (h!57003 (toList!4627 lm!1477))) (extractMap!1366 (t!358165 (toList!4627 lm!1477)))) lt!1755611)))

(assert (= (and d!1446143 c!786886) b!4594879))

(assert (= (and d!1446143 (not c!786886)) b!4594877))

(assert (= (and b!4594877 res!1921511) b!4594876))

(assert (= (or b!4594879 b!4594877) bm!320679))

(assert (= (or b!4594879 b!4594877) bm!320677))

(assert (= (or b!4594879 b!4594877) bm!320678))

(assert (= (and d!1446143 res!1921510) b!4594878))

(assert (= (and b!4594878 res!1921509) b!4594880))

(assert (=> bm!320678 m!5418451))

(declare-fun m!5419095 () Bool)

(assert (=> bm!320678 m!5419095))

(declare-fun m!5419097 () Bool)

(assert (=> d!1446143 m!5419097))

(assert (=> d!1446143 m!5418217))

(declare-fun m!5419099 () Bool)

(assert (=> b!4594878 m!5419099))

(declare-fun m!5419101 () Bool)

(assert (=> b!4594876 m!5419101))

(declare-fun m!5419103 () Bool)

(assert (=> b!4594880 m!5419103))

(declare-fun m!5419105 () Bool)

(assert (=> bm!320679 m!5419105))

(declare-fun m!5419107 () Bool)

(assert (=> b!4594877 m!5419107))

(declare-fun m!5419109 () Bool)

(assert (=> b!4594877 m!5419109))

(assert (=> b!4594877 m!5419101))

(assert (=> b!4594877 m!5418451))

(declare-fun m!5419111 () Bool)

(assert (=> b!4594877 m!5419111))

(declare-fun m!5419113 () Bool)

(assert (=> b!4594877 m!5419113))

(declare-fun m!5419115 () Bool)

(assert (=> b!4594877 m!5419115))

(declare-fun m!5419117 () Bool)

(assert (=> b!4594877 m!5419117))

(assert (=> b!4594877 m!5419117))

(declare-fun m!5419119 () Bool)

(assert (=> b!4594877 m!5419119))

(assert (=> b!4594877 m!5419101))

(assert (=> b!4594877 m!5419115))

(assert (=> b!4594877 m!5418451))

(assert (=> b!4594877 m!5419107))

(declare-fun m!5419121 () Bool)

(assert (=> b!4594877 m!5419121))

(declare-fun m!5419123 () Bool)

(assert (=> bm!320677 m!5419123))

(assert (=> b!4594458 d!1446143))

(declare-fun bs!1008962 () Bool)

(declare-fun d!1446145 () Bool)

(assert (= bs!1008962 (and d!1446145 d!1446127)))

(declare-fun lambda!185563 () Int)

(assert (=> bs!1008962 (= lambda!185563 lambda!185558)))

(declare-fun bs!1008963 () Bool)

(assert (= bs!1008963 (and d!1446145 d!1445893)))

(assert (=> bs!1008963 (= lambda!185563 lambda!185428)))

(declare-fun bs!1008964 () Bool)

(assert (= bs!1008964 (and d!1446145 start!458060)))

(assert (=> bs!1008964 (= lambda!185563 lambda!185400)))

(declare-fun bs!1008965 () Bool)

(assert (= bs!1008965 (and d!1446145 d!1445863)))

(assert (=> bs!1008965 (= lambda!185563 lambda!185425)))

(declare-fun bs!1008966 () Bool)

(assert (= bs!1008966 (and d!1446145 d!1445899)))

(assert (=> bs!1008966 (= lambda!185563 lambda!185429)))

(declare-fun bs!1008967 () Bool)

(assert (= bs!1008967 (and d!1446145 d!1445825)))

(assert (=> bs!1008967 (= lambda!185563 lambda!185403)))

(declare-fun bs!1008968 () Bool)

(assert (= bs!1008968 (and d!1446145 d!1445901)))

(assert (=> bs!1008968 (= lambda!185563 lambda!185432)))

(declare-fun bs!1008969 () Bool)

(assert (= bs!1008969 (and d!1446145 d!1445909)))

(assert (=> bs!1008969 (not (= lambda!185563 lambda!185438))))

(declare-fun lt!1755622 () ListMap!3889)

(assert (=> d!1446145 (invariantList!1116 (toList!4628 lt!1755622))))

(declare-fun e!2865977 () ListMap!3889)

(assert (=> d!1446145 (= lt!1755622 e!2865977)))

(declare-fun c!786887 () Bool)

(assert (=> d!1446145 (= c!786887 ((_ is Cons!51047) (t!358165 (toList!4627 lm!1477))))))

(assert (=> d!1446145 (forall!10572 (t!358165 (toList!4627 lm!1477)) lambda!185563)))

(assert (=> d!1446145 (= (extractMap!1366 (t!358165 (toList!4627 lm!1477))) lt!1755622)))

(declare-fun b!4594881 () Bool)

(assert (=> b!4594881 (= e!2865977 (addToMapMapFromBucket!806 (_2!29132 (h!57003 (t!358165 (toList!4627 lm!1477)))) (extractMap!1366 (t!358165 (t!358165 (toList!4627 lm!1477))))))))

(declare-fun b!4594882 () Bool)

(assert (=> b!4594882 (= e!2865977 (ListMap!3890 Nil!51046))))

(assert (= (and d!1446145 c!786887) b!4594881))

(assert (= (and d!1446145 (not c!786887)) b!4594882))

(declare-fun m!5419125 () Bool)

(assert (=> d!1446145 m!5419125))

(declare-fun m!5419127 () Bool)

(assert (=> d!1446145 m!5419127))

(declare-fun m!5419129 () Bool)

(assert (=> b!4594881 m!5419129))

(assert (=> b!4594881 m!5419129))

(declare-fun m!5419131 () Bool)

(assert (=> b!4594881 m!5419131))

(assert (=> b!4594458 d!1446145))

(declare-fun d!1446147 () Bool)

(declare-fun res!1921512 () Bool)

(declare-fun e!2865978 () Bool)

(assert (=> d!1446147 (=> res!1921512 e!2865978)))

(assert (=> d!1446147 (= res!1921512 (and ((_ is Cons!51046) lt!1755290) (= (_1!29131 (h!57002 lt!1755290)) key!3287)))))

(assert (=> d!1446147 (= (containsKey!2126 lt!1755290 key!3287) e!2865978)))

(declare-fun b!4594883 () Bool)

(declare-fun e!2865979 () Bool)

(assert (=> b!4594883 (= e!2865978 e!2865979)))

(declare-fun res!1921513 () Bool)

(assert (=> b!4594883 (=> (not res!1921513) (not e!2865979))))

(assert (=> b!4594883 (= res!1921513 ((_ is Cons!51046) lt!1755290))))

(declare-fun b!4594884 () Bool)

(assert (=> b!4594884 (= e!2865979 (containsKey!2126 (t!358164 lt!1755290) key!3287))))

(assert (= (and d!1446147 (not res!1921512)) b!4594883))

(assert (= (and b!4594883 res!1921513) b!4594884))

(declare-fun m!5419133 () Bool)

(assert (=> b!4594884 m!5419133))

(assert (=> d!1445889 d!1446147))

(assert (=> d!1445889 d!1445895))

(assert (=> b!4594447 d!1446003))

(assert (=> b!4594320 d!1445855))

(declare-fun d!1446149 () Bool)

(assert (=> d!1446149 (= (get!16865 (getValueByKey!1294 (toList!4627 lm!1477) hash!344)) (v!45323 (getValueByKey!1294 (toList!4627 lm!1477) hash!344)))))

(assert (=> d!1445837 d!1446149))

(assert (=> d!1445837 d!1446025))

(declare-fun b!4594887 () Bool)

(declare-fun e!2865981 () List!51170)

(assert (=> b!4594887 (= e!2865981 (Cons!51046 (h!57002 (t!358164 lt!1755189)) (removePairForKey!931 (t!358164 (t!358164 lt!1755189)) key!3287)))))

(declare-fun b!4594886 () Bool)

(declare-fun e!2865980 () List!51170)

(assert (=> b!4594886 (= e!2865980 e!2865981)))

(declare-fun c!786889 () Bool)

(assert (=> b!4594886 (= c!786889 ((_ is Cons!51046) (t!358164 lt!1755189)))))

(declare-fun b!4594885 () Bool)

(assert (=> b!4594885 (= e!2865980 (t!358164 (t!358164 lt!1755189)))))

(declare-fun b!4594888 () Bool)

(assert (=> b!4594888 (= e!2865981 Nil!51046)))

(declare-fun d!1446151 () Bool)

(declare-fun lt!1755623 () List!51170)

(assert (=> d!1446151 (not (containsKey!2126 lt!1755623 key!3287))))

(assert (=> d!1446151 (= lt!1755623 e!2865980)))

(declare-fun c!786888 () Bool)

(assert (=> d!1446151 (= c!786888 (and ((_ is Cons!51046) (t!358164 lt!1755189)) (= (_1!29131 (h!57002 (t!358164 lt!1755189))) key!3287)))))

(assert (=> d!1446151 (noDuplicateKeys!1306 (t!358164 lt!1755189))))

(assert (=> d!1446151 (= (removePairForKey!931 (t!358164 lt!1755189) key!3287) lt!1755623)))

(assert (= (and d!1446151 c!786888) b!4594885))

(assert (= (and d!1446151 (not c!786888)) b!4594886))

(assert (= (and b!4594886 c!786889) b!4594887))

(assert (= (and b!4594886 (not c!786889)) b!4594888))

(declare-fun m!5419135 () Bool)

(assert (=> b!4594887 m!5419135))

(declare-fun m!5419137 () Bool)

(assert (=> d!1446151 m!5419137))

(assert (=> d!1446151 m!5419025))

(assert (=> b!4594337 d!1446151))

(assert (=> b!4594472 d!1446005))

(declare-fun d!1446153 () Bool)

(assert (=> d!1446153 (containsKey!2130 (toList!4628 (extractMap!1366 lt!1755179)) key!3287)))

(declare-fun lt!1755624 () Unit!107680)

(assert (=> d!1446153 (= lt!1755624 (choose!30742 (toList!4628 (extractMap!1366 lt!1755179)) key!3287))))

(assert (=> d!1446153 (invariantList!1116 (toList!4628 (extractMap!1366 lt!1755179)))))

(assert (=> d!1446153 (= (lemmaInGetKeysListThenContainsKey!564 (toList!4628 (extractMap!1366 lt!1755179)) key!3287) lt!1755624)))

(declare-fun bs!1008970 () Bool)

(assert (= bs!1008970 d!1446153))

(assert (=> bs!1008970 m!5418471))

(declare-fun m!5419139 () Bool)

(assert (=> bs!1008970 m!5419139))

(assert (=> bs!1008970 m!5418891))

(assert (=> b!4594472 d!1446153))

(declare-fun b!4594891 () Bool)

(declare-fun e!2865983 () List!51170)

(assert (=> b!4594891 (= e!2865983 (Cons!51046 (h!57002 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) (removePairForKey!931 (t!358164 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) key!3287)))))

(declare-fun b!4594890 () Bool)

(declare-fun e!2865982 () List!51170)

(assert (=> b!4594890 (= e!2865982 e!2865983)))

(declare-fun c!786891 () Bool)

(assert (=> b!4594890 (= c!786891 ((_ is Cons!51046) (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(declare-fun b!4594889 () Bool)

(assert (=> b!4594889 (= e!2865982 (t!358164 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(declare-fun b!4594892 () Bool)

(assert (=> b!4594892 (= e!2865983 Nil!51046)))

(declare-fun d!1446155 () Bool)

(declare-fun lt!1755625 () List!51170)

(assert (=> d!1446155 (not (containsKey!2126 lt!1755625 key!3287))))

(assert (=> d!1446155 (= lt!1755625 e!2865982)))

(declare-fun c!786890 () Bool)

(assert (=> d!1446155 (= c!786890 (and ((_ is Cons!51046) (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) (= (_1!29131 (h!57002 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))))) key!3287)))))

(assert (=> d!1446155 (noDuplicateKeys!1306 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(assert (=> d!1446155 (= (removePairForKey!931 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))) key!3287) lt!1755625)))

(assert (= (and d!1446155 c!786890) b!4594889))

(assert (= (and d!1446155 (not c!786890)) b!4594890))

(assert (= (and b!4594890 c!786891) b!4594891))

(assert (= (and b!4594890 (not c!786891)) b!4594892))

(declare-fun m!5419141 () Bool)

(assert (=> b!4594891 m!5419141))

(declare-fun m!5419143 () Bool)

(assert (=> d!1446155 m!5419143))

(assert (=> d!1446155 m!5418457))

(assert (=> b!4594425 d!1446155))

(declare-fun d!1446157 () Bool)

(assert (=> d!1446157 (= (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287)) (not (isEmpty!28854 (getValueByKey!1295 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))))

(declare-fun bs!1008971 () Bool)

(assert (= bs!1008971 d!1446157))

(assert (=> bs!1008971 m!5418435))

(declare-fun m!5419145 () Bool)

(assert (=> bs!1008971 m!5419145))

(assert (=> b!4594452 d!1446157))

(declare-fun b!4594893 () Bool)

(declare-fun e!2865984 () Option!11375)

(assert (=> b!4594893 (= e!2865984 (Some!11374 (_2!29131 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))))))))

(declare-fun b!4594895 () Bool)

(declare-fun e!2865985 () Option!11375)

(assert (=> b!4594895 (= e!2865985 (getValueByKey!1295 (t!358164 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) key!3287))))

(declare-fun b!4594894 () Bool)

(assert (=> b!4594894 (= e!2865984 e!2865985)))

(declare-fun c!786893 () Bool)

(assert (=> b!4594894 (= c!786893 (and ((_ is Cons!51046) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (not (= (_1!29131 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) key!3287))))))

(declare-fun d!1446159 () Bool)

(declare-fun c!786892 () Bool)

(assert (=> d!1446159 (= c!786892 (and ((_ is Cons!51046) (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) (= (_1!29131 (h!57002 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))) key!3287)))))

(assert (=> d!1446159 (= (getValueByKey!1295 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287) e!2865984)))

(declare-fun b!4594896 () Bool)

(assert (=> b!4594896 (= e!2865985 None!11374)))

(assert (= (and d!1446159 c!786892) b!4594893))

(assert (= (and d!1446159 (not c!786892)) b!4594894))

(assert (= (and b!4594894 c!786893) b!4594895))

(assert (= (and b!4594894 (not c!786893)) b!4594896))

(declare-fun m!5419147 () Bool)

(assert (=> b!4594895 m!5419147))

(assert (=> b!4594452 d!1446159))

(declare-fun d!1446161 () Bool)

(declare-fun res!1921514 () Bool)

(declare-fun e!2865986 () Bool)

(assert (=> d!1446161 (=> res!1921514 e!2865986)))

(assert (=> d!1446161 (= res!1921514 (not ((_ is Cons!51046) (t!358164 newBucket!178))))))

(assert (=> d!1446161 (= (noDuplicateKeys!1306 (t!358164 newBucket!178)) e!2865986)))

(declare-fun b!4594897 () Bool)

(declare-fun e!2865987 () Bool)

(assert (=> b!4594897 (= e!2865986 e!2865987)))

(declare-fun res!1921515 () Bool)

(assert (=> b!4594897 (=> (not res!1921515) (not e!2865987))))

(assert (=> b!4594897 (= res!1921515 (not (containsKey!2126 (t!358164 (t!358164 newBucket!178)) (_1!29131 (h!57002 (t!358164 newBucket!178))))))))

(declare-fun b!4594898 () Bool)

(assert (=> b!4594898 (= e!2865987 (noDuplicateKeys!1306 (t!358164 (t!358164 newBucket!178))))))

(assert (= (and d!1446161 (not res!1921514)) b!4594897))

(assert (= (and b!4594897 res!1921515) b!4594898))

(declare-fun m!5419149 () Bool)

(assert (=> b!4594897 m!5419149))

(declare-fun m!5419151 () Bool)

(assert (=> b!4594898 m!5419151))

(assert (=> b!4594478 d!1446161))

(declare-fun d!1446163 () Bool)

(declare-fun res!1921520 () Bool)

(declare-fun e!2865992 () Bool)

(assert (=> d!1446163 (=> res!1921520 e!2865992)))

(assert (=> d!1446163 (= res!1921520 (and ((_ is Cons!51047) (toList!4627 lm!1477)) (= (_1!29132 (h!57003 (toList!4627 lm!1477))) lt!1755183)))))

(assert (=> d!1446163 (= (containsKey!2129 (toList!4627 lm!1477) lt!1755183) e!2865992)))

(declare-fun b!4594903 () Bool)

(declare-fun e!2865993 () Bool)

(assert (=> b!4594903 (= e!2865992 e!2865993)))

(declare-fun res!1921521 () Bool)

(assert (=> b!4594903 (=> (not res!1921521) (not e!2865993))))

(assert (=> b!4594903 (= res!1921521 (and (or (not ((_ is Cons!51047) (toList!4627 lm!1477))) (bvsle (_1!29132 (h!57003 (toList!4627 lm!1477))) lt!1755183)) ((_ is Cons!51047) (toList!4627 lm!1477)) (bvslt (_1!29132 (h!57003 (toList!4627 lm!1477))) lt!1755183)))))

(declare-fun b!4594904 () Bool)

(assert (=> b!4594904 (= e!2865993 (containsKey!2129 (t!358165 (toList!4627 lm!1477)) lt!1755183))))

(assert (= (and d!1446163 (not res!1921520)) b!4594903))

(assert (= (and b!4594903 res!1921521) b!4594904))

(declare-fun m!5419153 () Bool)

(assert (=> b!4594904 m!5419153))

(assert (=> d!1445849 d!1446163))

(assert (=> d!1445891 d!1446131))

(declare-fun d!1446165 () Bool)

(declare-fun e!2865994 () Bool)

(assert (=> d!1446165 e!2865994))

(declare-fun res!1921522 () Bool)

(assert (=> d!1446165 (=> res!1921522 e!2865994)))

(declare-fun lt!1755629 () Bool)

(assert (=> d!1446165 (= res!1921522 (not lt!1755629))))

(declare-fun lt!1755627 () Bool)

(assert (=> d!1446165 (= lt!1755629 lt!1755627)))

(declare-fun lt!1755628 () Unit!107680)

(declare-fun e!2865995 () Unit!107680)

(assert (=> d!1446165 (= lt!1755628 e!2865995)))

(declare-fun c!786894 () Bool)

(assert (=> d!1446165 (= c!786894 lt!1755627)))

(assert (=> d!1446165 (= lt!1755627 (containsKey!2129 (toList!4627 lm!1477) (hash!3187 hashF!1107 key!3287)))))

(assert (=> d!1446165 (= (contains!13981 lm!1477 (hash!3187 hashF!1107 key!3287)) lt!1755629)))

(declare-fun b!4594905 () Bool)

(declare-fun lt!1755626 () Unit!107680)

(assert (=> b!4594905 (= e!2865995 lt!1755626)))

(assert (=> b!4594905 (= lt!1755626 (lemmaContainsKeyImpliesGetValueByKeyDefined!1198 (toList!4627 lm!1477) (hash!3187 hashF!1107 key!3287)))))

(assert (=> b!4594905 (isDefined!8642 (getValueByKey!1294 (toList!4627 lm!1477) (hash!3187 hashF!1107 key!3287)))))

(declare-fun b!4594906 () Bool)

(declare-fun Unit!107757 () Unit!107680)

(assert (=> b!4594906 (= e!2865995 Unit!107757)))

(declare-fun b!4594907 () Bool)

(assert (=> b!4594907 (= e!2865994 (isDefined!8642 (getValueByKey!1294 (toList!4627 lm!1477) (hash!3187 hashF!1107 key!3287))))))

(assert (= (and d!1446165 c!786894) b!4594905))

(assert (= (and d!1446165 (not c!786894)) b!4594906))

(assert (= (and d!1446165 (not res!1921522)) b!4594907))

(assert (=> d!1446165 m!5418189))

(declare-fun m!5419155 () Bool)

(assert (=> d!1446165 m!5419155))

(assert (=> b!4594905 m!5418189))

(declare-fun m!5419157 () Bool)

(assert (=> b!4594905 m!5419157))

(assert (=> b!4594905 m!5418189))

(declare-fun m!5419159 () Bool)

(assert (=> b!4594905 m!5419159))

(assert (=> b!4594905 m!5419159))

(declare-fun m!5419161 () Bool)

(assert (=> b!4594905 m!5419161))

(assert (=> b!4594907 m!5418189))

(assert (=> b!4594907 m!5419159))

(assert (=> b!4594907 m!5419159))

(assert (=> b!4594907 m!5419161))

(assert (=> d!1445825 d!1446165))

(assert (=> d!1445825 d!1445907))

(declare-fun d!1446167 () Bool)

(assert (=> d!1446167 (contains!13981 lm!1477 (hash!3187 hashF!1107 key!3287))))

(assert (=> d!1446167 true))

(declare-fun _$27!1414 () Unit!107680)

(assert (=> d!1446167 (= (choose!30730 lm!1477 key!3287 hashF!1107) _$27!1414)))

(declare-fun bs!1008972 () Bool)

(assert (= bs!1008972 d!1446167))

(assert (=> bs!1008972 m!5418189))

(assert (=> bs!1008972 m!5418189))

(assert (=> bs!1008972 m!5418259))

(assert (=> d!1445825 d!1446167))

(declare-fun d!1446169 () Bool)

(declare-fun res!1921523 () Bool)

(declare-fun e!2865996 () Bool)

(assert (=> d!1446169 (=> res!1921523 e!2865996)))

(assert (=> d!1446169 (= res!1921523 ((_ is Nil!51047) (toList!4627 lm!1477)))))

(assert (=> d!1446169 (= (forall!10572 (toList!4627 lm!1477) lambda!185403) e!2865996)))

(declare-fun b!4594908 () Bool)

(declare-fun e!2865997 () Bool)

(assert (=> b!4594908 (= e!2865996 e!2865997)))

(declare-fun res!1921524 () Bool)

(assert (=> b!4594908 (=> (not res!1921524) (not e!2865997))))

(assert (=> b!4594908 (= res!1921524 (dynLambda!21382 lambda!185403 (h!57003 (toList!4627 lm!1477))))))

(declare-fun b!4594909 () Bool)

(assert (=> b!4594909 (= e!2865997 (forall!10572 (t!358165 (toList!4627 lm!1477)) lambda!185403))))

(assert (= (and d!1446169 (not res!1921523)) b!4594908))

(assert (= (and b!4594908 res!1921524) b!4594909))

(declare-fun b_lambda!169023 () Bool)

(assert (=> (not b_lambda!169023) (not b!4594908)))

(declare-fun m!5419163 () Bool)

(assert (=> b!4594908 m!5419163))

(declare-fun m!5419165 () Bool)

(assert (=> b!4594909 m!5419165))

(assert (=> d!1445825 d!1446169))

(declare-fun d!1446171 () Bool)

(declare-fun res!1921525 () Bool)

(declare-fun e!2865998 () Bool)

(assert (=> d!1446171 (=> res!1921525 e!2865998)))

(assert (=> d!1446171 (= res!1921525 (and ((_ is Cons!51046) (_2!29132 (h!57003 lt!1755179))) (= (_1!29131 (h!57002 (_2!29132 (h!57003 lt!1755179)))) key!3287)))))

(assert (=> d!1446171 (= (containsKey!2126 (_2!29132 (h!57003 lt!1755179)) key!3287) e!2865998)))

(declare-fun b!4594910 () Bool)

(declare-fun e!2865999 () Bool)

(assert (=> b!4594910 (= e!2865998 e!2865999)))

(declare-fun res!1921526 () Bool)

(assert (=> b!4594910 (=> (not res!1921526) (not e!2865999))))

(assert (=> b!4594910 (= res!1921526 ((_ is Cons!51046) (_2!29132 (h!57003 lt!1755179))))))

(declare-fun b!4594911 () Bool)

(assert (=> b!4594911 (= e!2865999 (containsKey!2126 (t!358164 (_2!29132 (h!57003 lt!1755179))) key!3287))))

(assert (= (and d!1446171 (not res!1921525)) b!4594910))

(assert (= (and b!4594910 res!1921526) b!4594911))

(declare-fun m!5419167 () Bool)

(assert (=> b!4594911 m!5419167))

(assert (=> b!4594420 d!1446171))

(declare-fun b!4594912 () Bool)

(declare-fun e!2866005 () Unit!107680)

(declare-fun lt!1755635 () Unit!107680)

(assert (=> b!4594912 (= e!2866005 lt!1755635)))

(declare-fun lt!1755633 () Unit!107680)

(assert (=> b!4594912 (= lt!1755633 (lemmaContainsKeyImpliesGetValueByKeyDefined!1199 (toList!4628 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))) key!3287))))

(assert (=> b!4594912 (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))) key!3287))))

(declare-fun lt!1755631 () Unit!107680)

(assert (=> b!4594912 (= lt!1755631 lt!1755633)))

(assert (=> b!4594912 (= lt!1755635 (lemmaInListThenGetKeysListContains!561 (toList!4628 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))) key!3287))))

(declare-fun call!320685 () Bool)

(assert (=> b!4594912 call!320685))

(declare-fun b!4594913 () Bool)

(declare-fun e!2866004 () Bool)

(assert (=> b!4594913 (= e!2866004 (not (contains!13983 (keys!17864 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))) key!3287)))))

(declare-fun b!4594914 () Bool)

(declare-fun e!2866000 () List!51173)

(assert (=> b!4594914 (= e!2866000 (keys!17864 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))))))

(declare-fun b!4594915 () Bool)

(declare-fun e!2866002 () Bool)

(assert (=> b!4594915 (= e!2866002 (contains!13983 (keys!17864 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))) key!3287))))

(declare-fun b!4594916 () Bool)

(declare-fun e!2866003 () Unit!107680)

(declare-fun Unit!107758 () Unit!107680)

(assert (=> b!4594916 (= e!2866003 Unit!107758)))

(declare-fun d!1446173 () Bool)

(declare-fun e!2866001 () Bool)

(assert (=> d!1446173 e!2866001))

(declare-fun res!1921528 () Bool)

(assert (=> d!1446173 (=> res!1921528 e!2866001)))

(assert (=> d!1446173 (= res!1921528 e!2866004)))

(declare-fun res!1921527 () Bool)

(assert (=> d!1446173 (=> (not res!1921527) (not e!2866004))))

(declare-fun lt!1755637 () Bool)

(assert (=> d!1446173 (= res!1921527 (not lt!1755637))))

(declare-fun lt!1755630 () Bool)

(assert (=> d!1446173 (= lt!1755637 lt!1755630)))

(declare-fun lt!1755632 () Unit!107680)

(assert (=> d!1446173 (= lt!1755632 e!2866005)))

(declare-fun c!786896 () Bool)

(assert (=> d!1446173 (= c!786896 lt!1755630)))

(assert (=> d!1446173 (= lt!1755630 (containsKey!2130 (toList!4628 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))) key!3287))))

(assert (=> d!1446173 (= (contains!13979 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179))) key!3287) lt!1755637)))

(declare-fun b!4594917 () Bool)

(assert (=> b!4594917 (= e!2866000 (getKeysList!565 (toList!4628 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179))))))))

(declare-fun b!4594918 () Bool)

(assert (=> b!4594918 false))

(declare-fun lt!1755634 () Unit!107680)

(declare-fun lt!1755636 () Unit!107680)

(assert (=> b!4594918 (= lt!1755634 lt!1755636)))

(assert (=> b!4594918 (containsKey!2130 (toList!4628 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))) key!3287)))

(assert (=> b!4594918 (= lt!1755636 (lemmaInGetKeysListThenContainsKey!564 (toList!4628 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))) key!3287))))

(declare-fun Unit!107759 () Unit!107680)

(assert (=> b!4594918 (= e!2866003 Unit!107759)))

(declare-fun bm!320680 () Bool)

(assert (=> bm!320680 (= call!320685 (contains!13983 e!2866000 key!3287))))

(declare-fun c!786895 () Bool)

(assert (=> bm!320680 (= c!786895 c!786896)))

(declare-fun b!4594919 () Bool)

(assert (=> b!4594919 (= e!2866001 e!2866002)))

(declare-fun res!1921529 () Bool)

(assert (=> b!4594919 (=> (not res!1921529) (not e!2866002))))

(assert (=> b!4594919 (= res!1921529 (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179)))) key!3287)))))

(declare-fun b!4594920 () Bool)

(assert (=> b!4594920 (= e!2866005 e!2866003)))

(declare-fun c!786897 () Bool)

(assert (=> b!4594920 (= c!786897 call!320685)))

(assert (= (and d!1446173 c!786896) b!4594912))

(assert (= (and d!1446173 (not c!786896)) b!4594920))

(assert (= (and b!4594920 c!786897) b!4594918))

(assert (= (and b!4594920 (not c!786897)) b!4594916))

(assert (= (or b!4594912 b!4594920) bm!320680))

(assert (= (and bm!320680 c!786895) b!4594917))

(assert (= (and bm!320680 (not c!786895)) b!4594914))

(assert (= (and d!1446173 res!1921527) b!4594913))

(assert (= (and d!1446173 (not res!1921528)) b!4594919))

(assert (= (and b!4594919 res!1921529) b!4594915))

(declare-fun m!5419169 () Bool)

(assert (=> bm!320680 m!5419169))

(declare-fun m!5419171 () Bool)

(assert (=> b!4594917 m!5419171))

(assert (=> b!4594913 m!5418487))

(declare-fun m!5419173 () Bool)

(assert (=> b!4594913 m!5419173))

(assert (=> b!4594913 m!5419173))

(declare-fun m!5419175 () Bool)

(assert (=> b!4594913 m!5419175))

(declare-fun m!5419177 () Bool)

(assert (=> b!4594919 m!5419177))

(assert (=> b!4594919 m!5419177))

(declare-fun m!5419179 () Bool)

(assert (=> b!4594919 m!5419179))

(assert (=> b!4594915 m!5418487))

(assert (=> b!4594915 m!5419173))

(assert (=> b!4594915 m!5419173))

(assert (=> b!4594915 m!5419175))

(declare-fun m!5419181 () Bool)

(assert (=> b!4594918 m!5419181))

(declare-fun m!5419183 () Bool)

(assert (=> b!4594918 m!5419183))

(assert (=> b!4594914 m!5418487))

(assert (=> b!4594914 m!5419173))

(assert (=> d!1446173 m!5419181))

(declare-fun m!5419185 () Bool)

(assert (=> b!4594912 m!5419185))

(assert (=> b!4594912 m!5419177))

(assert (=> b!4594912 m!5419177))

(assert (=> b!4594912 m!5419179))

(declare-fun m!5419187 () Bool)

(assert (=> b!4594912 m!5419187))

(assert (=> d!1445901 d!1446173))

(declare-fun bs!1008973 () Bool)

(declare-fun d!1446175 () Bool)

(assert (= bs!1008973 (and d!1446175 d!1446127)))

(declare-fun lambda!185564 () Int)

(assert (=> bs!1008973 (= lambda!185564 lambda!185558)))

(declare-fun bs!1008974 () Bool)

(assert (= bs!1008974 (and d!1446175 d!1446145)))

(assert (=> bs!1008974 (= lambda!185564 lambda!185563)))

(declare-fun bs!1008975 () Bool)

(assert (= bs!1008975 (and d!1446175 d!1445893)))

(assert (=> bs!1008975 (= lambda!185564 lambda!185428)))

(declare-fun bs!1008976 () Bool)

(assert (= bs!1008976 (and d!1446175 start!458060)))

(assert (=> bs!1008976 (= lambda!185564 lambda!185400)))

(declare-fun bs!1008977 () Bool)

(assert (= bs!1008977 (and d!1446175 d!1445863)))

(assert (=> bs!1008977 (= lambda!185564 lambda!185425)))

(declare-fun bs!1008978 () Bool)

(assert (= bs!1008978 (and d!1446175 d!1445899)))

(assert (=> bs!1008978 (= lambda!185564 lambda!185429)))

(declare-fun bs!1008979 () Bool)

(assert (= bs!1008979 (and d!1446175 d!1445825)))

(assert (=> bs!1008979 (= lambda!185564 lambda!185403)))

(declare-fun bs!1008980 () Bool)

(assert (= bs!1008980 (and d!1446175 d!1445901)))

(assert (=> bs!1008980 (= lambda!185564 lambda!185432)))

(declare-fun bs!1008981 () Bool)

(assert (= bs!1008981 (and d!1446175 d!1445909)))

(assert (=> bs!1008981 (not (= lambda!185564 lambda!185438))))

(declare-fun lt!1755638 () ListMap!3889)

(assert (=> d!1446175 (invariantList!1116 (toList!4628 lt!1755638))))

(declare-fun e!2866006 () ListMap!3889)

(assert (=> d!1446175 (= lt!1755638 e!2866006)))

(declare-fun c!786898 () Bool)

(assert (=> d!1446175 (= c!786898 ((_ is Cons!51047) (toList!4627 (ListLongMap!3260 lt!1755179))))))

(assert (=> d!1446175 (forall!10572 (toList!4627 (ListLongMap!3260 lt!1755179)) lambda!185564)))

(assert (=> d!1446175 (= (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179))) lt!1755638)))

(declare-fun b!4594921 () Bool)

(assert (=> b!4594921 (= e!2866006 (addToMapMapFromBucket!806 (_2!29132 (h!57003 (toList!4627 (ListLongMap!3260 lt!1755179)))) (extractMap!1366 (t!358165 (toList!4627 (ListLongMap!3260 lt!1755179))))))))

(declare-fun b!4594922 () Bool)

(assert (=> b!4594922 (= e!2866006 (ListMap!3890 Nil!51046))))

(assert (= (and d!1446175 c!786898) b!4594921))

(assert (= (and d!1446175 (not c!786898)) b!4594922))

(declare-fun m!5419189 () Bool)

(assert (=> d!1446175 m!5419189))

(declare-fun m!5419191 () Bool)

(assert (=> d!1446175 m!5419191))

(declare-fun m!5419193 () Bool)

(assert (=> b!4594921 m!5419193))

(assert (=> b!4594921 m!5419193))

(declare-fun m!5419195 () Bool)

(assert (=> b!4594921 m!5419195))

(assert (=> d!1445901 d!1446175))

(declare-fun d!1446177 () Bool)

(assert (=> d!1446177 (contains!13979 (extractMap!1366 (toList!4627 (ListLongMap!3260 lt!1755179))) key!3287)))

(assert (=> d!1446177 true))

(declare-fun _$34!808 () Unit!107680)

(assert (=> d!1446177 (= (choose!30734 (ListLongMap!3260 lt!1755179) key!3287 hashF!1107) _$34!808)))

(declare-fun bs!1008982 () Bool)

(assert (= bs!1008982 d!1446177))

(assert (=> bs!1008982 m!5418487))

(assert (=> bs!1008982 m!5418487))

(assert (=> bs!1008982 m!5418489))

(assert (=> d!1445901 d!1446177))

(declare-fun d!1446179 () Bool)

(declare-fun res!1921530 () Bool)

(declare-fun e!2866007 () Bool)

(assert (=> d!1446179 (=> res!1921530 e!2866007)))

(assert (=> d!1446179 (= res!1921530 ((_ is Nil!51047) (toList!4627 (ListLongMap!3260 lt!1755179))))))

(assert (=> d!1446179 (= (forall!10572 (toList!4627 (ListLongMap!3260 lt!1755179)) lambda!185432) e!2866007)))

(declare-fun b!4594923 () Bool)

(declare-fun e!2866008 () Bool)

(assert (=> b!4594923 (= e!2866007 e!2866008)))

(declare-fun res!1921531 () Bool)

(assert (=> b!4594923 (=> (not res!1921531) (not e!2866008))))

(assert (=> b!4594923 (= res!1921531 (dynLambda!21382 lambda!185432 (h!57003 (toList!4627 (ListLongMap!3260 lt!1755179)))))))

(declare-fun b!4594924 () Bool)

(assert (=> b!4594924 (= e!2866008 (forall!10572 (t!358165 (toList!4627 (ListLongMap!3260 lt!1755179))) lambda!185432))))

(assert (= (and d!1446179 (not res!1921530)) b!4594923))

(assert (= (and b!4594923 res!1921531) b!4594924))

(declare-fun b_lambda!169025 () Bool)

(assert (=> (not b_lambda!169025) (not b!4594923)))

(declare-fun m!5419197 () Bool)

(assert (=> b!4594923 m!5419197))

(declare-fun m!5419199 () Bool)

(assert (=> b!4594924 m!5419199))

(assert (=> d!1445901 d!1446179))

(declare-fun d!1446181 () Bool)

(assert (=> d!1446181 (isDefined!8643 (getValueByKey!1295 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(declare-fun lt!1755639 () Unit!107680)

(assert (=> d!1446181 (= lt!1755639 (choose!30743 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(assert (=> d!1446181 (invariantList!1116 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))))

(assert (=> d!1446181 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1199 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287) lt!1755639)))

(declare-fun bs!1008983 () Bool)

(assert (= bs!1008983 d!1446181))

(assert (=> bs!1008983 m!5418435))

(assert (=> bs!1008983 m!5418435))

(assert (=> bs!1008983 m!5418437))

(declare-fun m!5419201 () Bool)

(assert (=> bs!1008983 m!5419201))

(assert (=> bs!1008983 m!5418763))

(assert (=> b!4594445 d!1446181))

(assert (=> b!4594445 d!1446157))

(assert (=> b!4594445 d!1446159))

(declare-fun d!1446183 () Bool)

(assert (=> d!1446183 (contains!13983 (getKeysList!565 (toList!4628 (extractMap!1366 (toList!4627 lm!1477)))) key!3287)))

(declare-fun lt!1755640 () Unit!107680)

(assert (=> d!1446183 (= lt!1755640 (choose!30744 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287))))

(assert (=> d!1446183 (invariantList!1116 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))))))

(assert (=> d!1446183 (= (lemmaInListThenGetKeysListContains!561 (toList!4628 (extractMap!1366 (toList!4627 lm!1477))) key!3287) lt!1755640)))

(declare-fun bs!1008984 () Bool)

(assert (= bs!1008984 d!1446183))

(assert (=> bs!1008984 m!5418429))

(assert (=> bs!1008984 m!5418429))

(declare-fun m!5419203 () Bool)

(assert (=> bs!1008984 m!5419203))

(declare-fun m!5419205 () Bool)

(assert (=> bs!1008984 m!5419205))

(assert (=> bs!1008984 m!5418763))

(assert (=> b!4594445 d!1446183))

(declare-fun lt!1755641 () Bool)

(declare-fun d!1446185 () Bool)

(assert (=> d!1446185 (= lt!1755641 (select (content!8624 (toList!4627 lm!1477)) (tuple2!51677 hash!344 lt!1755189)))))

(declare-fun e!2866010 () Bool)

(assert (=> d!1446185 (= lt!1755641 e!2866010)))

(declare-fun res!1921533 () Bool)

(assert (=> d!1446185 (=> (not res!1921533) (not e!2866010))))

(assert (=> d!1446185 (= res!1921533 ((_ is Cons!51047) (toList!4627 lm!1477)))))

(assert (=> d!1446185 (= (contains!13980 (toList!4627 lm!1477) (tuple2!51677 hash!344 lt!1755189)) lt!1755641)))

(declare-fun b!4594925 () Bool)

(declare-fun e!2866009 () Bool)

(assert (=> b!4594925 (= e!2866010 e!2866009)))

(declare-fun res!1921532 () Bool)

(assert (=> b!4594925 (=> res!1921532 e!2866009)))

(assert (=> b!4594925 (= res!1921532 (= (h!57003 (toList!4627 lm!1477)) (tuple2!51677 hash!344 lt!1755189)))))

(declare-fun b!4594926 () Bool)

(assert (=> b!4594926 (= e!2866009 (contains!13980 (t!358165 (toList!4627 lm!1477)) (tuple2!51677 hash!344 lt!1755189)))))

(assert (= (and d!1446185 res!1921533) b!4594925))

(assert (= (and b!4594925 (not res!1921532)) b!4594926))

(assert (=> d!1446185 m!5418349))

(declare-fun m!5419207 () Bool)

(assert (=> d!1446185 m!5419207))

(declare-fun m!5419209 () Bool)

(assert (=> b!4594926 m!5419209))

(assert (=> d!1445839 d!1446185))

(declare-fun d!1446187 () Bool)

(assert (=> d!1446187 (contains!13980 (toList!4627 lm!1477) (tuple2!51677 hash!344 lt!1755189))))

(assert (=> d!1446187 true))

(declare-fun _$14!1458 () Unit!107680)

(assert (=> d!1446187 (= (choose!30731 (toList!4627 lm!1477) hash!344 lt!1755189) _$14!1458)))

(declare-fun bs!1008985 () Bool)

(assert (= bs!1008985 d!1446187))

(assert (=> bs!1008985 m!5418269))

(assert (=> d!1445839 d!1446187))

(declare-fun d!1446189 () Bool)

(declare-fun res!1921538 () Bool)

(declare-fun e!2866015 () Bool)

(assert (=> d!1446189 (=> res!1921538 e!2866015)))

(assert (=> d!1446189 (= res!1921538 (or ((_ is Nil!51047) (toList!4627 lm!1477)) ((_ is Nil!51047) (t!358165 (toList!4627 lm!1477)))))))

(assert (=> d!1446189 (= (isStrictlySorted!532 (toList!4627 lm!1477)) e!2866015)))

(declare-fun b!4594931 () Bool)

(declare-fun e!2866016 () Bool)

(assert (=> b!4594931 (= e!2866015 e!2866016)))

(declare-fun res!1921539 () Bool)

(assert (=> b!4594931 (=> (not res!1921539) (not e!2866016))))

(assert (=> b!4594931 (= res!1921539 (bvslt (_1!29132 (h!57003 (toList!4627 lm!1477))) (_1!29132 (h!57003 (t!358165 (toList!4627 lm!1477))))))))

(declare-fun b!4594932 () Bool)

(assert (=> b!4594932 (= e!2866016 (isStrictlySorted!532 (t!358165 (toList!4627 lm!1477))))))

(assert (= (and d!1446189 (not res!1921538)) b!4594931))

(assert (= (and b!4594931 res!1921539) b!4594932))

(declare-fun m!5419211 () Bool)

(assert (=> b!4594932 m!5419211))

(assert (=> d!1445839 d!1446189))

(assert (=> d!1445819 d!1446189))

(declare-fun d!1446191 () Bool)

(declare-fun res!1921542 () Bool)

(declare-fun e!2866017 () Bool)

(assert (=> d!1446191 (=> res!1921542 e!2866017)))

(declare-fun e!2866019 () Bool)

(assert (=> d!1446191 (= res!1921542 e!2866019)))

(declare-fun res!1921541 () Bool)

(assert (=> d!1446191 (=> (not res!1921541) (not e!2866019))))

(assert (=> d!1446191 (= res!1921541 ((_ is Cons!51047) (t!358165 lt!1755179)))))

(assert (=> d!1446191 (= (containsKeyBiggerList!262 (t!358165 lt!1755179) key!3287) e!2866017)))

(declare-fun b!4594933 () Bool)

(assert (=> b!4594933 (= e!2866019 (containsKey!2126 (_2!29132 (h!57003 (t!358165 lt!1755179))) key!3287))))

(declare-fun b!4594934 () Bool)

(declare-fun e!2866018 () Bool)

(assert (=> b!4594934 (= e!2866017 e!2866018)))

(declare-fun res!1921540 () Bool)

(assert (=> b!4594934 (=> (not res!1921540) (not e!2866018))))

(assert (=> b!4594934 (= res!1921540 ((_ is Cons!51047) (t!358165 lt!1755179)))))

(declare-fun b!4594935 () Bool)

(assert (=> b!4594935 (= e!2866018 (containsKeyBiggerList!262 (t!358165 (t!358165 lt!1755179)) key!3287))))

(assert (= (and d!1446191 res!1921541) b!4594933))

(assert (= (and d!1446191 (not res!1921542)) b!4594934))

(assert (= (and b!4594934 res!1921540) b!4594935))

(declare-fun m!5419213 () Bool)

(assert (=> b!4594933 m!5419213))

(declare-fun m!5419215 () Bool)

(assert (=> b!4594935 m!5419215))

(assert (=> b!4594422 d!1446191))

(declare-fun d!1446193 () Bool)

(declare-fun res!1921543 () Bool)

(declare-fun e!2866020 () Bool)

(assert (=> d!1446193 (=> res!1921543 e!2866020)))

(assert (=> d!1446193 (= res!1921543 (and ((_ is Cons!51046) (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) (= (_1!29131 (h!57002 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))))) (_1!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))))

(assert (=> d!1446193 (= (containsKey!2126 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477)))) (_1!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477)))))) e!2866020)))

(declare-fun b!4594936 () Bool)

(declare-fun e!2866021 () Bool)

(assert (=> b!4594936 (= e!2866020 e!2866021)))

(declare-fun res!1921544 () Bool)

(assert (=> b!4594936 (=> (not res!1921544) (not e!2866021))))

(assert (=> b!4594936 (= res!1921544 ((_ is Cons!51046) (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))))))

(declare-fun b!4594937 () Bool)

(assert (=> b!4594937 (= e!2866021 (containsKey!2126 (t!358164 (t!358164 (_2!29132 (h!57003 (toList!4627 lm!1477))))) (_1!29131 (h!57002 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))))

(assert (= (and d!1446193 (not res!1921543)) b!4594936))

(assert (= (and b!4594936 res!1921544) b!4594937))

(declare-fun m!5419217 () Bool)

(assert (=> b!4594937 m!5419217))

(assert (=> b!4594464 d!1446193))

(assert (=> bs!1008784 d!1445895))

(declare-fun e!2866022 () Bool)

(declare-fun b!4594938 () Bool)

(declare-fun tp!1340272 () Bool)

(assert (=> b!4594938 (= e!2866022 (and tp_is_empty!28517 tp_is_empty!28519 tp!1340272))))

(assert (=> b!4594494 (= tp!1340267 e!2866022)))

(assert (= (and b!4594494 ((_ is Cons!51046) (t!358164 (t!358164 newBucket!178)))) b!4594938))

(declare-fun b!4594939 () Bool)

(declare-fun e!2866023 () Bool)

(declare-fun tp!1340273 () Bool)

(assert (=> b!4594939 (= e!2866023 (and tp_is_empty!28517 tp_is_empty!28519 tp!1340273))))

(assert (=> b!4594489 (= tp!1340263 e!2866023)))

(assert (= (and b!4594489 ((_ is Cons!51046) (_2!29132 (h!57003 (toList!4627 lm!1477))))) b!4594939))

(declare-fun b!4594940 () Bool)

(declare-fun e!2866024 () Bool)

(declare-fun tp!1340274 () Bool)

(declare-fun tp!1340275 () Bool)

(assert (=> b!4594940 (= e!2866024 (and tp!1340274 tp!1340275))))

(assert (=> b!4594489 (= tp!1340264 e!2866024)))

(assert (= (and b!4594489 ((_ is Cons!51047) (t!358165 (toList!4627 lm!1477)))) b!4594940))

(declare-fun b_lambda!169027 () Bool)

(assert (= b_lambda!168979 (or d!1445893 b_lambda!169027)))

(declare-fun bs!1008986 () Bool)

(declare-fun d!1446195 () Bool)

(assert (= bs!1008986 (and d!1446195 d!1445893)))

(assert (=> bs!1008986 (= (dynLambda!21382 lambda!185428 (h!57003 (toList!4627 lm!1477))) (noDuplicateKeys!1306 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(assert (=> bs!1008986 m!5418217))

(assert (=> b!4594731 d!1446195))

(declare-fun b_lambda!169029 () Bool)

(assert (= b_lambda!169021 (or d!1445863 b_lambda!169029)))

(declare-fun bs!1008987 () Bool)

(declare-fun d!1446197 () Bool)

(assert (= bs!1008987 (and d!1446197 d!1445863)))

(assert (=> bs!1008987 (= (dynLambda!21382 lambda!185425 (h!57003 (toList!4627 lm!1477))) (noDuplicateKeys!1306 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(assert (=> bs!1008987 m!5418217))

(assert (=> b!4594874 d!1446197))

(declare-fun b_lambda!169031 () Bool)

(assert (= b_lambda!168985 (or start!458060 b_lambda!169031)))

(declare-fun bs!1008988 () Bool)

(declare-fun d!1446199 () Bool)

(assert (= bs!1008988 (and d!1446199 start!458060)))

(assert (=> bs!1008988 (= (dynLambda!21382 lambda!185400 (h!57003 (t!358165 (toList!4627 lm!1477)))) (noDuplicateKeys!1306 (_2!29132 (h!57003 (t!358165 (toList!4627 lm!1477))))))))

(declare-fun m!5419219 () Bool)

(assert (=> bs!1008988 m!5419219))

(assert (=> b!4594762 d!1446199))

(declare-fun b_lambda!169033 () Bool)

(assert (= b_lambda!168991 (or start!458060 b_lambda!169033)))

(assert (=> d!1446059 d!1445913))

(declare-fun b_lambda!169035 () Bool)

(assert (= b_lambda!169025 (or d!1445901 b_lambda!169035)))

(declare-fun bs!1008989 () Bool)

(declare-fun d!1446201 () Bool)

(assert (= bs!1008989 (and d!1446201 d!1445901)))

(assert (=> bs!1008989 (= (dynLambda!21382 lambda!185432 (h!57003 (toList!4627 (ListLongMap!3260 lt!1755179)))) (noDuplicateKeys!1306 (_2!29132 (h!57003 (toList!4627 (ListLongMap!3260 lt!1755179))))))))

(declare-fun m!5419221 () Bool)

(assert (=> bs!1008989 m!5419221))

(assert (=> b!4594923 d!1446201))

(declare-fun b_lambda!169037 () Bool)

(assert (= b_lambda!168993 (or d!1445899 b_lambda!169037)))

(declare-fun bs!1008990 () Bool)

(declare-fun d!1446203 () Bool)

(assert (= bs!1008990 (and d!1446203 d!1445899)))

(assert (=> bs!1008990 (= (dynLambda!21382 lambda!185429 (h!57003 lt!1755179)) (noDuplicateKeys!1306 (_2!29132 (h!57003 lt!1755179))))))

(assert (=> bs!1008990 m!5419043))

(assert (=> b!4594787 d!1446203))

(declare-fun b_lambda!169039 () Bool)

(assert (= b_lambda!169023 (or d!1445825 b_lambda!169039)))

(declare-fun bs!1008991 () Bool)

(declare-fun d!1446205 () Bool)

(assert (= bs!1008991 (and d!1446205 d!1445825)))

(assert (=> bs!1008991 (= (dynLambda!21382 lambda!185403 (h!57003 (toList!4627 lm!1477))) (noDuplicateKeys!1306 (_2!29132 (h!57003 (toList!4627 lm!1477)))))))

(assert (=> bs!1008991 m!5418217))

(assert (=> b!4594908 d!1446205))

(declare-fun b_lambda!169041 () Bool)

(assert (= b_lambda!168997 (or d!1445905 b_lambda!169041)))

(declare-fun bs!1008992 () Bool)

(declare-fun d!1446207 () Bool)

(assert (= bs!1008992 (and d!1446207 d!1445905)))

(assert (=> bs!1008992 (= (dynLambda!21384 lambda!185435 (h!57002 newBucket!178)) (= (hash!3187 hashF!1107 (_1!29131 (h!57002 newBucket!178))) hash!344))))

(declare-fun m!5419223 () Bool)

(assert (=> bs!1008992 m!5419223))

(assert (=> b!4594809 d!1446207))

(declare-fun b_lambda!169043 () Bool)

(assert (= b_lambda!168989 (or d!1445909 b_lambda!169043)))

(declare-fun bs!1008993 () Bool)

(declare-fun d!1446209 () Bool)

(assert (= bs!1008993 (and d!1446209 d!1445909)))

(assert (=> bs!1008993 (= (dynLambda!21382 lambda!185438 (h!57003 (toList!4627 lm!1477))) (allKeysSameHash!1162 (_2!29132 (h!57003 (toList!4627 lm!1477))) (_1!29132 (h!57003 (toList!4627 lm!1477))) hashF!1107))))

(declare-fun m!5419225 () Bool)

(assert (=> bs!1008993 m!5419225))

(assert (=> b!4594785 d!1446209))

(check-sat (not b!4594769) (not d!1446183) (not b!4594867) (not b_lambda!168969) (not d!1446035) (not b!4594832) (not b!4594905) (not bm!320676) (not b!4594897) (not d!1446051) (not bs!1008989) (not b!4594924) (not d!1446165) (not b!4594917) (not b!4594810) (not b!4594801) (not b!4594895) (not d!1446157) (not b!4594921) (not b!4594937) (not b!4594940) (not b!4594588) (not b!4594686) (not b!4594915) (not b!4594700) (not bs!1008988) (not bs!1008991) tp_is_empty!28517 (not d!1446107) (not b_lambda!169029) (not d!1446143) (not b!4594914) (not d!1446145) (not b!4594880) (not b!4594837) (not b_lambda!169031) (not b!4594878) (not b!4594919) (not b!4594838) (not b!4594840) (not b!4594835) (not d!1446177) (not d!1445953) (not bm!320674) (not bm!320680) (not bs!1008993) (not bs!1008990) (not d!1446155) (not d!1446067) (not b_lambda!169027) (not d!1446135) (not d!1446063) (not b!4594760) (not d!1446015) (not d!1446139) (not b!4594710) (not b!4594732) (not b!4594839) (not b!4594871) (not b!4594887) (not b_lambda!169033) (not b!4594884) (not d!1446129) (not b!4594862) (not d!1445945) tp_is_empty!28519 (not b!4594765) (not d!1446185) (not b_lambda!169037) (not bm!320677) (not d!1446127) (not b!4594730) (not b!4594873) (not d!1446021) (not b!4594864) (not bs!1008986) (not b!4594938) (not b!4594709) (not bm!320675) (not b!4594843) (not b!4594763) (not b!4594926) (not d!1446083) (not d!1446173) (not bm!320679) (not bs!1008987) (not b!4594814) (not b_lambda!169035) (not b!4594898) (not b!4594728) (not b!4594687) (not b!4594788) (not b!4594770) (not bm!320678) (not b_lambda!169039) (not b!4594909) (not b!4594681) (not d!1446175) (not b_lambda!169043) (not d!1446133) (not b!4594685) (not b_lambda!168971) (not d!1446003) (not b!4594918) (not b!4594913) (not d!1446093) (not d!1446055) (not b!4594842) (not b!4594563) (not b!4594860) (not b!4594844) (not b_lambda!169041) (not b!4594682) (not b!4594939) (not b!4594766) (not bs!1008992) (not d!1446167) (not b!4594861) (not d!1446151) (not d!1446141) (not b!4594784) (not b!4594932) (not b!4594586) (not b!4594935) (not b!4594881) (not b!4594552) (not b!4594911) (not d!1446187) (not b!4594771) (not b!4594877) (not b!4594907) (not b!4594587) (not b!4594711) (not b!4594904) (not d!1445951) (not b!4594876) (not b!4594912) (not b!4594891) (not b!4594875) (not b!4594786) (not d!1446153) (not d!1446001) (not b!4594736) (not d!1446181) (not b!4594933))
(check-sat)
