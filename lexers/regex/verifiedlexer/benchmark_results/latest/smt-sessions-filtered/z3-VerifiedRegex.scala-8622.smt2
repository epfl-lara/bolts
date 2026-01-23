; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!459864 () Bool)

(assert start!459864)

(declare-fun b!4604246 () Bool)

(declare-fun e!2871923 () Bool)

(declare-fun tp!1340724 () Bool)

(assert (=> b!4604246 (= e!2871923 tp!1340724)))

(declare-fun b!4604247 () Bool)

(declare-fun res!1926532 () Bool)

(declare-fun e!2871924 () Bool)

(assert (=> b!4604247 (=> res!1926532 e!2871924)))

(declare-datatypes ((K!12515 0))(
  ( (K!12516 (val!18283 Int)) )
))
(declare-datatypes ((V!12761 0))(
  ( (V!12762 (val!18284 Int)) )
))
(declare-datatypes ((tuple2!51834 0))(
  ( (tuple2!51835 (_1!29211 K!12515) (_2!29211 V!12761)) )
))
(declare-datatypes ((List!51270 0))(
  ( (Nil!51146) (Cons!51146 (h!57122 tuple2!51834) (t!358264 List!51270)) )
))
(declare-fun lt!1762463 () List!51270)

(declare-datatypes ((tuple2!51836 0))(
  ( (tuple2!51837 (_1!29212 (_ BitVec 64)) (_2!29212 List!51270)) )
))
(declare-datatypes ((List!51271 0))(
  ( (Nil!51147) (Cons!51147 (h!57123 tuple2!51836) (t!358265 List!51271)) )
))
(declare-datatypes ((ListLongMap!3339 0))(
  ( (ListLongMap!3340 (toList!4707 List!51271)) )
))
(declare-fun lt!1762470 () ListLongMap!3339)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!12083 (ListLongMap!3339 (_ BitVec 64)) List!51270)

(assert (=> b!4604247 (= res!1926532 (not (= (apply!12083 lt!1762470 hash!344) lt!1762463)))))

(declare-fun e!2871918 () Bool)

(declare-fun b!4604248 () Bool)

(declare-fun tp_is_empty!28679 () Bool)

(declare-fun tp_is_empty!28677 () Bool)

(declare-fun tp!1340725 () Bool)

(assert (=> b!4604248 (= e!2871918 (and tp_is_empty!28677 tp_is_empty!28679 tp!1340725))))

(declare-fun b!4604249 () Bool)

(declare-fun res!1926534 () Bool)

(declare-fun e!2871922 () Bool)

(assert (=> b!4604249 (=> (not res!1926534) (not e!2871922))))

(declare-fun lm!1477 () ListLongMap!3339)

(declare-datatypes ((Hashable!5745 0))(
  ( (HashableExt!5744 (__x!31448 Int)) )
))
(declare-fun hashF!1107 () Hashable!5745)

(declare-fun allKeysSameHashInMap!1457 (ListLongMap!3339 Hashable!5745) Bool)

(assert (=> b!4604249 (= res!1926534 (allKeysSameHashInMap!1457 lm!1477 hashF!1107))))

(declare-fun b!4604250 () Bool)

(declare-fun res!1926527 () Bool)

(assert (=> b!4604250 (=> res!1926527 e!2871924)))

(declare-fun lt!1762467 () tuple2!51836)

(declare-fun contains!14127 (List!51271 tuple2!51836) Bool)

(assert (=> b!4604250 (= res!1926527 (not (contains!14127 (t!358265 (toList!4707 lm!1477)) lt!1762467)))))

(declare-fun b!4604251 () Bool)

(declare-fun e!2871919 () Bool)

(assert (=> b!4604251 (= e!2871919 (allKeysSameHashInMap!1457 lt!1762470 hashF!1107))))

(declare-fun b!4604252 () Bool)

(assert (=> b!4604252 (= e!2871924 e!2871919)))

(declare-fun res!1926536 () Bool)

(assert (=> b!4604252 (=> res!1926536 e!2871919)))

(declare-fun lt!1762466 () Bool)

(assert (=> b!4604252 (= res!1926536 lt!1762466)))

(declare-datatypes ((Unit!108873 0))(
  ( (Unit!108874) )
))
(declare-fun lt!1762468 () Unit!108873)

(declare-fun e!2871920 () Unit!108873)

(assert (=> b!4604252 (= lt!1762468 e!2871920)))

(declare-fun c!788744 () Bool)

(assert (=> b!4604252 (= c!788744 lt!1762466)))

(declare-fun key!3287 () K!12515)

(declare-fun containsKey!2206 (List!51270 K!12515) Bool)

(assert (=> b!4604252 (= lt!1762466 (not (containsKey!2206 lt!1762463 key!3287)))))

(declare-fun b!4604253 () Bool)

(declare-fun res!1926538 () Bool)

(assert (=> b!4604253 (=> res!1926538 e!2871919)))

(declare-fun lambda!187200 () Int)

(declare-fun forall!10646 (List!51271 Int) Bool)

(assert (=> b!4604253 (= res!1926538 (not (forall!10646 (toList!4707 lt!1762470) lambda!187200)))))

(declare-fun b!4604254 () Bool)

(declare-fun res!1926535 () Bool)

(declare-fun e!2871917 () Bool)

(assert (=> b!4604254 (=> (not res!1926535) (not e!2871917))))

(declare-fun newBucket!178 () List!51270)

(declare-fun allKeysSameHash!1202 (List!51270 (_ BitVec 64) Hashable!5745) Bool)

(assert (=> b!4604254 (= res!1926535 (allKeysSameHash!1202 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4604256 () Bool)

(declare-fun res!1926526 () Bool)

(declare-fun e!2871921 () Bool)

(assert (=> b!4604256 (=> res!1926526 e!2871921)))

(get-info :version)

(assert (=> b!4604256 (= res!1926526 (or ((_ is Nil!51147) (toList!4707 lm!1477)) (= (_1!29212 (h!57123 (toList!4707 lm!1477))) hash!344)))))

(declare-fun b!4604257 () Bool)

(assert (=> b!4604257 (= e!2871921 e!2871924)))

(declare-fun res!1926537 () Bool)

(assert (=> b!4604257 (=> res!1926537 e!2871924)))

(declare-fun contains!14128 (ListLongMap!3339 (_ BitVec 64)) Bool)

(assert (=> b!4604257 (= res!1926537 (not (contains!14128 lt!1762470 hash!344)))))

(declare-fun tail!7991 (ListLongMap!3339) ListLongMap!3339)

(assert (=> b!4604257 (= lt!1762470 (tail!7991 lm!1477))))

(declare-fun b!4604258 () Bool)

(declare-fun Unit!108875 () Unit!108873)

(assert (=> b!4604258 (= e!2871920 Unit!108875)))

(declare-fun lt!1762462 () Unit!108873)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!310 (ListLongMap!3339 K!12515 Hashable!5745) Unit!108873)

(assert (=> b!4604258 (= lt!1762462 (lemmaNotInItsHashBucketThenNotInMap!310 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4604258 false))

(declare-fun b!4604259 () Bool)

(declare-fun res!1926533 () Bool)

(assert (=> b!4604259 (=> (not res!1926533) (not e!2871922))))

(declare-datatypes ((ListMap!3969 0))(
  ( (ListMap!3970 (toList!4708 List!51270)) )
))
(declare-fun contains!14129 (ListMap!3969 K!12515) Bool)

(declare-fun extractMap!1406 (List!51271) ListMap!3969)

(assert (=> b!4604259 (= res!1926533 (contains!14129 (extractMap!1406 (toList!4707 lm!1477)) key!3287))))

(declare-fun b!4604260 () Bool)

(declare-fun res!1926531 () Bool)

(assert (=> b!4604260 (=> res!1926531 e!2871921)))

(declare-fun noDuplicateKeys!1346 (List!51270) Bool)

(assert (=> b!4604260 (= res!1926531 (not (noDuplicateKeys!1346 newBucket!178)))))

(declare-fun b!4604255 () Bool)

(assert (=> b!4604255 (= e!2871922 e!2871917)))

(declare-fun res!1926529 () Bool)

(assert (=> b!4604255 (=> (not res!1926529) (not e!2871917))))

(declare-fun lt!1762465 () (_ BitVec 64))

(assert (=> b!4604255 (= res!1926529 (= lt!1762465 hash!344))))

(declare-fun hash!3269 (Hashable!5745 K!12515) (_ BitVec 64))

(assert (=> b!4604255 (= lt!1762465 (hash!3269 hashF!1107 key!3287))))

(declare-fun res!1926528 () Bool)

(assert (=> start!459864 (=> (not res!1926528) (not e!2871922))))

(assert (=> start!459864 (= res!1926528 (forall!10646 (toList!4707 lm!1477) lambda!187200))))

(assert (=> start!459864 e!2871922))

(assert (=> start!459864 true))

(declare-fun inv!66699 (ListLongMap!3339) Bool)

(assert (=> start!459864 (and (inv!66699 lm!1477) e!2871923)))

(assert (=> start!459864 tp_is_empty!28677))

(assert (=> start!459864 e!2871918))

(declare-fun b!4604261 () Bool)

(declare-fun Unit!108876 () Unit!108873)

(assert (=> b!4604261 (= e!2871920 Unit!108876)))

(declare-fun b!4604262 () Bool)

(assert (=> b!4604262 (= e!2871917 (not e!2871921))))

(declare-fun res!1926530 () Bool)

(assert (=> b!4604262 (=> res!1926530 e!2871921)))

(declare-fun removePairForKey!971 (List!51270 K!12515) List!51270)

(assert (=> b!4604262 (= res!1926530 (not (= newBucket!178 (removePairForKey!971 lt!1762463 key!3287))))))

(declare-fun lt!1762469 () Unit!108873)

(declare-fun forallContained!2895 (List!51271 Int tuple2!51836) Unit!108873)

(assert (=> b!4604262 (= lt!1762469 (forallContained!2895 (toList!4707 lm!1477) lambda!187200 lt!1762467))))

(assert (=> b!4604262 (contains!14127 (toList!4707 lm!1477) lt!1762467)))

(assert (=> b!4604262 (= lt!1762467 (tuple2!51837 hash!344 lt!1762463))))

(declare-fun lt!1762471 () Unit!108873)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!856 (List!51271 (_ BitVec 64) List!51270) Unit!108873)

(assert (=> b!4604262 (= lt!1762471 (lemmaGetValueByKeyImpliesContainsTuple!856 (toList!4707 lm!1477) hash!344 lt!1762463))))

(assert (=> b!4604262 (= lt!1762463 (apply!12083 lm!1477 hash!344))))

(assert (=> b!4604262 (contains!14128 lm!1477 lt!1762465)))

(declare-fun lt!1762464 () Unit!108873)

(declare-fun lemmaInGenMapThenLongMapContainsHash!420 (ListLongMap!3339 K!12515 Hashable!5745) Unit!108873)

(assert (=> b!4604262 (= lt!1762464 (lemmaInGenMapThenLongMapContainsHash!420 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!459864 res!1926528) b!4604249))

(assert (= (and b!4604249 res!1926534) b!4604259))

(assert (= (and b!4604259 res!1926533) b!4604255))

(assert (= (and b!4604255 res!1926529) b!4604254))

(assert (= (and b!4604254 res!1926535) b!4604262))

(assert (= (and b!4604262 (not res!1926530)) b!4604260))

(assert (= (and b!4604260 (not res!1926531)) b!4604256))

(assert (= (and b!4604256 (not res!1926526)) b!4604257))

(assert (= (and b!4604257 (not res!1926537)) b!4604247))

(assert (= (and b!4604247 (not res!1926532)) b!4604250))

(assert (= (and b!4604250 (not res!1926527)) b!4604252))

(assert (= (and b!4604252 c!788744) b!4604258))

(assert (= (and b!4604252 (not c!788744)) b!4604261))

(assert (= (and b!4604252 (not res!1926536)) b!4604253))

(assert (= (and b!4604253 (not res!1926538)) b!4604251))

(assert (= start!459864 b!4604246))

(assert (= (and start!459864 ((_ is Cons!51146) newBucket!178)) b!4604248))

(declare-fun m!5433433 () Bool)

(assert (=> b!4604255 m!5433433))

(declare-fun m!5433435 () Bool)

(assert (=> b!4604254 m!5433435))

(declare-fun m!5433437 () Bool)

(assert (=> b!4604252 m!5433437))

(declare-fun m!5433439 () Bool)

(assert (=> b!4604247 m!5433439))

(declare-fun m!5433441 () Bool)

(assert (=> b!4604262 m!5433441))

(declare-fun m!5433443 () Bool)

(assert (=> b!4604262 m!5433443))

(declare-fun m!5433445 () Bool)

(assert (=> b!4604262 m!5433445))

(declare-fun m!5433447 () Bool)

(assert (=> b!4604262 m!5433447))

(declare-fun m!5433449 () Bool)

(assert (=> b!4604262 m!5433449))

(declare-fun m!5433451 () Bool)

(assert (=> b!4604262 m!5433451))

(declare-fun m!5433453 () Bool)

(assert (=> b!4604262 m!5433453))

(declare-fun m!5433455 () Bool)

(assert (=> b!4604260 m!5433455))

(declare-fun m!5433457 () Bool)

(assert (=> start!459864 m!5433457))

(declare-fun m!5433459 () Bool)

(assert (=> start!459864 m!5433459))

(declare-fun m!5433461 () Bool)

(assert (=> b!4604250 m!5433461))

(declare-fun m!5433463 () Bool)

(assert (=> b!4604258 m!5433463))

(declare-fun m!5433465 () Bool)

(assert (=> b!4604249 m!5433465))

(declare-fun m!5433467 () Bool)

(assert (=> b!4604257 m!5433467))

(declare-fun m!5433469 () Bool)

(assert (=> b!4604257 m!5433469))

(declare-fun m!5433471 () Bool)

(assert (=> b!4604259 m!5433471))

(assert (=> b!4604259 m!5433471))

(declare-fun m!5433473 () Bool)

(assert (=> b!4604259 m!5433473))

(declare-fun m!5433475 () Bool)

(assert (=> b!4604251 m!5433475))

(declare-fun m!5433477 () Bool)

(assert (=> b!4604253 m!5433477))

(check-sat (not b!4604249) (not b!4604254) (not b!4604259) (not b!4604252) tp_is_empty!28679 tp_is_empty!28677 (not b!4604257) (not b!4604250) (not b!4604262) (not b!4604255) (not start!459864) (not b!4604247) (not b!4604253) (not b!4604248) (not b!4604260) (not b!4604258) (not b!4604246) (not b!4604251))
(check-sat)
(get-model)

(declare-fun bs!1014080 () Bool)

(declare-fun d!1450187 () Bool)

(assert (= bs!1014080 (and d!1450187 start!459864)))

(declare-fun lambda!187203 () Int)

(assert (=> bs!1014080 (not (= lambda!187203 lambda!187200))))

(assert (=> d!1450187 true))

(assert (=> d!1450187 (= (allKeysSameHashInMap!1457 lt!1762470 hashF!1107) (forall!10646 (toList!4707 lt!1762470) lambda!187203))))

(declare-fun bs!1014081 () Bool)

(assert (= bs!1014081 d!1450187))

(declare-fun m!5433479 () Bool)

(assert (=> bs!1014081 m!5433479))

(assert (=> b!4604251 d!1450187))

(declare-fun bs!1014084 () Bool)

(declare-fun d!1450189 () Bool)

(assert (= bs!1014084 (and d!1450189 start!459864)))

(declare-fun lambda!187209 () Int)

(assert (=> bs!1014084 (= lambda!187209 lambda!187200)))

(declare-fun bs!1014085 () Bool)

(assert (= bs!1014085 (and d!1450189 d!1450187)))

(assert (=> bs!1014085 (not (= lambda!187209 lambda!187203))))

(assert (=> d!1450189 (contains!14128 lm!1477 (hash!3269 hashF!1107 key!3287))))

(declare-fun lt!1762479 () Unit!108873)

(declare-fun choose!30917 (ListLongMap!3339 K!12515 Hashable!5745) Unit!108873)

(assert (=> d!1450189 (= lt!1762479 (choose!30917 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1450189 (forall!10646 (toList!4707 lm!1477) lambda!187209)))

(assert (=> d!1450189 (= (lemmaInGenMapThenLongMapContainsHash!420 lm!1477 key!3287 hashF!1107) lt!1762479)))

(declare-fun bs!1014086 () Bool)

(assert (= bs!1014086 d!1450189))

(assert (=> bs!1014086 m!5433433))

(assert (=> bs!1014086 m!5433433))

(declare-fun m!5433493 () Bool)

(assert (=> bs!1014086 m!5433493))

(declare-fun m!5433495 () Bool)

(assert (=> bs!1014086 m!5433495))

(declare-fun m!5433497 () Bool)

(assert (=> bs!1014086 m!5433497))

(assert (=> b!4604262 d!1450189))

(declare-fun d!1450197 () Bool)

(declare-datatypes ((Option!11414 0))(
  ( (None!11413) (Some!11413 (v!45431 List!51270)) )
))
(declare-fun get!16913 (Option!11414) List!51270)

(declare-fun getValueByKey!1334 (List!51271 (_ BitVec 64)) Option!11414)

(assert (=> d!1450197 (= (apply!12083 lm!1477 hash!344) (get!16913 (getValueByKey!1334 (toList!4707 lm!1477) hash!344)))))

(declare-fun bs!1014087 () Bool)

(assert (= bs!1014087 d!1450197))

(declare-fun m!5433507 () Bool)

(assert (=> bs!1014087 m!5433507))

(assert (=> bs!1014087 m!5433507))

(declare-fun m!5433509 () Bool)

(assert (=> bs!1014087 m!5433509))

(assert (=> b!4604262 d!1450197))

(declare-fun b!4604307 () Bool)

(declare-fun e!2871951 () List!51270)

(assert (=> b!4604307 (= e!2871951 Nil!51146)))

(declare-fun b!4604304 () Bool)

(declare-fun e!2871952 () List!51270)

(assert (=> b!4604304 (= e!2871952 (t!358264 lt!1762463))))

(declare-fun b!4604305 () Bool)

(assert (=> b!4604305 (= e!2871952 e!2871951)))

(declare-fun c!788758 () Bool)

(assert (=> b!4604305 (= c!788758 ((_ is Cons!51146) lt!1762463))))

(declare-fun b!4604306 () Bool)

(assert (=> b!4604306 (= e!2871951 (Cons!51146 (h!57122 lt!1762463) (removePairForKey!971 (t!358264 lt!1762463) key!3287)))))

(declare-fun d!1450201 () Bool)

(declare-fun lt!1762503 () List!51270)

(assert (=> d!1450201 (not (containsKey!2206 lt!1762503 key!3287))))

(assert (=> d!1450201 (= lt!1762503 e!2871952)))

(declare-fun c!788759 () Bool)

(assert (=> d!1450201 (= c!788759 (and ((_ is Cons!51146) lt!1762463) (= (_1!29211 (h!57122 lt!1762463)) key!3287)))))

(assert (=> d!1450201 (noDuplicateKeys!1346 lt!1762463)))

(assert (=> d!1450201 (= (removePairForKey!971 lt!1762463 key!3287) lt!1762503)))

(assert (= (and d!1450201 c!788759) b!4604304))

(assert (= (and d!1450201 (not c!788759)) b!4604305))

(assert (= (and b!4604305 c!788758) b!4604306))

(assert (= (and b!4604305 (not c!788758)) b!4604307))

(declare-fun m!5433523 () Bool)

(assert (=> b!4604306 m!5433523))

(declare-fun m!5433525 () Bool)

(assert (=> d!1450201 m!5433525))

(declare-fun m!5433527 () Bool)

(assert (=> d!1450201 m!5433527))

(assert (=> b!4604262 d!1450201))

(declare-fun d!1450207 () Bool)

(declare-fun dynLambda!21416 (Int tuple2!51836) Bool)

(assert (=> d!1450207 (dynLambda!21416 lambda!187200 lt!1762467)))

(declare-fun lt!1762507 () Unit!108873)

(declare-fun choose!30918 (List!51271 Int tuple2!51836) Unit!108873)

(assert (=> d!1450207 (= lt!1762507 (choose!30918 (toList!4707 lm!1477) lambda!187200 lt!1762467))))

(declare-fun e!2871957 () Bool)

(assert (=> d!1450207 e!2871957))

(declare-fun res!1926556 () Bool)

(assert (=> d!1450207 (=> (not res!1926556) (not e!2871957))))

(assert (=> d!1450207 (= res!1926556 (forall!10646 (toList!4707 lm!1477) lambda!187200))))

(assert (=> d!1450207 (= (forallContained!2895 (toList!4707 lm!1477) lambda!187200 lt!1762467) lt!1762507)))

(declare-fun b!4604312 () Bool)

(assert (=> b!4604312 (= e!2871957 (contains!14127 (toList!4707 lm!1477) lt!1762467))))

(assert (= (and d!1450207 res!1926556) b!4604312))

(declare-fun b_lambda!169823 () Bool)

(assert (=> (not b_lambda!169823) (not d!1450207)))

(declare-fun m!5433535 () Bool)

(assert (=> d!1450207 m!5433535))

(declare-fun m!5433537 () Bool)

(assert (=> d!1450207 m!5433537))

(assert (=> d!1450207 m!5433457))

(assert (=> b!4604312 m!5433447))

(assert (=> b!4604262 d!1450207))

(declare-fun d!1450213 () Bool)

(declare-fun e!2871980 () Bool)

(assert (=> d!1450213 e!2871980))

(declare-fun res!1926568 () Bool)

(assert (=> d!1450213 (=> res!1926568 e!2871980)))

(declare-fun lt!1762542 () Bool)

(assert (=> d!1450213 (= res!1926568 (not lt!1762542))))

(declare-fun lt!1762540 () Bool)

(assert (=> d!1450213 (= lt!1762542 lt!1762540)))

(declare-fun lt!1762543 () Unit!108873)

(declare-fun e!2871981 () Unit!108873)

(assert (=> d!1450213 (= lt!1762543 e!2871981)))

(declare-fun c!788771 () Bool)

(assert (=> d!1450213 (= c!788771 lt!1762540)))

(declare-fun containsKey!2209 (List!51271 (_ BitVec 64)) Bool)

(assert (=> d!1450213 (= lt!1762540 (containsKey!2209 (toList!4707 lm!1477) lt!1762465))))

(assert (=> d!1450213 (= (contains!14128 lm!1477 lt!1762465) lt!1762542)))

(declare-fun b!4604346 () Bool)

(declare-fun lt!1762541 () Unit!108873)

(assert (=> b!4604346 (= e!2871981 lt!1762541)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1238 (List!51271 (_ BitVec 64)) Unit!108873)

(assert (=> b!4604346 (= lt!1762541 (lemmaContainsKeyImpliesGetValueByKeyDefined!1238 (toList!4707 lm!1477) lt!1762465))))

(declare-fun isDefined!8682 (Option!11414) Bool)

(assert (=> b!4604346 (isDefined!8682 (getValueByKey!1334 (toList!4707 lm!1477) lt!1762465))))

(declare-fun b!4604347 () Bool)

(declare-fun Unit!108881 () Unit!108873)

(assert (=> b!4604347 (= e!2871981 Unit!108881)))

(declare-fun b!4604348 () Bool)

(assert (=> b!4604348 (= e!2871980 (isDefined!8682 (getValueByKey!1334 (toList!4707 lm!1477) lt!1762465)))))

(assert (= (and d!1450213 c!788771) b!4604346))

(assert (= (and d!1450213 (not c!788771)) b!4604347))

(assert (= (and d!1450213 (not res!1926568)) b!4604348))

(declare-fun m!5433559 () Bool)

(assert (=> d!1450213 m!5433559))

(declare-fun m!5433561 () Bool)

(assert (=> b!4604346 m!5433561))

(declare-fun m!5433563 () Bool)

(assert (=> b!4604346 m!5433563))

(assert (=> b!4604346 m!5433563))

(declare-fun m!5433565 () Bool)

(assert (=> b!4604346 m!5433565))

(assert (=> b!4604348 m!5433563))

(assert (=> b!4604348 m!5433563))

(assert (=> b!4604348 m!5433565))

(assert (=> b!4604262 d!1450213))

(declare-fun d!1450217 () Bool)

(declare-fun lt!1762549 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8676 (List!51271) (InoxSet tuple2!51836))

(assert (=> d!1450217 (= lt!1762549 (select (content!8676 (toList!4707 lm!1477)) lt!1762467))))

(declare-fun e!2871989 () Bool)

(assert (=> d!1450217 (= lt!1762549 e!2871989)))

(declare-fun res!1926574 () Bool)

(assert (=> d!1450217 (=> (not res!1926574) (not e!2871989))))

(assert (=> d!1450217 (= res!1926574 ((_ is Cons!51147) (toList!4707 lm!1477)))))

(assert (=> d!1450217 (= (contains!14127 (toList!4707 lm!1477) lt!1762467) lt!1762549)))

(declare-fun b!4604359 () Bool)

(declare-fun e!2871990 () Bool)

(assert (=> b!4604359 (= e!2871989 e!2871990)))

(declare-fun res!1926573 () Bool)

(assert (=> b!4604359 (=> res!1926573 e!2871990)))

(assert (=> b!4604359 (= res!1926573 (= (h!57123 (toList!4707 lm!1477)) lt!1762467))))

(declare-fun b!4604360 () Bool)

(assert (=> b!4604360 (= e!2871990 (contains!14127 (t!358265 (toList!4707 lm!1477)) lt!1762467))))

(assert (= (and d!1450217 res!1926574) b!4604359))

(assert (= (and b!4604359 (not res!1926573)) b!4604360))

(declare-fun m!5433575 () Bool)

(assert (=> d!1450217 m!5433575))

(declare-fun m!5433577 () Bool)

(assert (=> d!1450217 m!5433577))

(assert (=> b!4604360 m!5433461))

(assert (=> b!4604262 d!1450217))

(declare-fun d!1450221 () Bool)

(assert (=> d!1450221 (contains!14127 (toList!4707 lm!1477) (tuple2!51837 hash!344 lt!1762463))))

(declare-fun lt!1762553 () Unit!108873)

(declare-fun choose!30919 (List!51271 (_ BitVec 64) List!51270) Unit!108873)

(assert (=> d!1450221 (= lt!1762553 (choose!30919 (toList!4707 lm!1477) hash!344 lt!1762463))))

(declare-fun e!2872003 () Bool)

(assert (=> d!1450221 e!2872003))

(declare-fun res!1926587 () Bool)

(assert (=> d!1450221 (=> (not res!1926587) (not e!2872003))))

(declare-fun isStrictlySorted!552 (List!51271) Bool)

(assert (=> d!1450221 (= res!1926587 (isStrictlySorted!552 (toList!4707 lm!1477)))))

(assert (=> d!1450221 (= (lemmaGetValueByKeyImpliesContainsTuple!856 (toList!4707 lm!1477) hash!344 lt!1762463) lt!1762553)))

(declare-fun b!4604379 () Bool)

(assert (=> b!4604379 (= e!2872003 (= (getValueByKey!1334 (toList!4707 lm!1477) hash!344) (Some!11413 lt!1762463)))))

(assert (= (and d!1450221 res!1926587) b!4604379))

(declare-fun m!5433597 () Bool)

(assert (=> d!1450221 m!5433597))

(declare-fun m!5433599 () Bool)

(assert (=> d!1450221 m!5433599))

(declare-fun m!5433601 () Bool)

(assert (=> d!1450221 m!5433601))

(assert (=> b!4604379 m!5433507))

(assert (=> b!4604262 d!1450221))

(declare-fun d!1450235 () Bool)

(declare-fun res!1926598 () Bool)

(declare-fun e!2872014 () Bool)

(assert (=> d!1450235 (=> res!1926598 e!2872014)))

(assert (=> d!1450235 (= res!1926598 (and ((_ is Cons!51146) lt!1762463) (= (_1!29211 (h!57122 lt!1762463)) key!3287)))))

(assert (=> d!1450235 (= (containsKey!2206 lt!1762463 key!3287) e!2872014)))

(declare-fun b!4604390 () Bool)

(declare-fun e!2872015 () Bool)

(assert (=> b!4604390 (= e!2872014 e!2872015)))

(declare-fun res!1926599 () Bool)

(assert (=> b!4604390 (=> (not res!1926599) (not e!2872015))))

(assert (=> b!4604390 (= res!1926599 ((_ is Cons!51146) lt!1762463))))

(declare-fun b!4604391 () Bool)

(assert (=> b!4604391 (= e!2872015 (containsKey!2206 (t!358264 lt!1762463) key!3287))))

(assert (= (and d!1450235 (not res!1926598)) b!4604390))

(assert (= (and b!4604390 res!1926599) b!4604391))

(declare-fun m!5433607 () Bool)

(assert (=> b!4604391 m!5433607))

(assert (=> b!4604252 d!1450235))

(declare-fun d!1450239 () Bool)

(declare-fun res!1926604 () Bool)

(declare-fun e!2872020 () Bool)

(assert (=> d!1450239 (=> res!1926604 e!2872020)))

(assert (=> d!1450239 (= res!1926604 ((_ is Nil!51147) (toList!4707 lt!1762470)))))

(assert (=> d!1450239 (= (forall!10646 (toList!4707 lt!1762470) lambda!187200) e!2872020)))

(declare-fun b!4604396 () Bool)

(declare-fun e!2872021 () Bool)

(assert (=> b!4604396 (= e!2872020 e!2872021)))

(declare-fun res!1926605 () Bool)

(assert (=> b!4604396 (=> (not res!1926605) (not e!2872021))))

(assert (=> b!4604396 (= res!1926605 (dynLambda!21416 lambda!187200 (h!57123 (toList!4707 lt!1762470))))))

(declare-fun b!4604397 () Bool)

(assert (=> b!4604397 (= e!2872021 (forall!10646 (t!358265 (toList!4707 lt!1762470)) lambda!187200))))

(assert (= (and d!1450239 (not res!1926604)) b!4604396))

(assert (= (and b!4604396 res!1926605) b!4604397))

(declare-fun b_lambda!169829 () Bool)

(assert (=> (not b_lambda!169829) (not b!4604396)))

(declare-fun m!5433609 () Bool)

(assert (=> b!4604396 m!5433609))

(declare-fun m!5433611 () Bool)

(assert (=> b!4604397 m!5433611))

(assert (=> b!4604253 d!1450239))

(declare-fun d!1450241 () Bool)

(declare-fun e!2872050 () Bool)

(assert (=> d!1450241 e!2872050))

(declare-fun res!1926620 () Bool)

(assert (=> d!1450241 (=> res!1926620 e!2872050)))

(declare-fun e!2872048 () Bool)

(assert (=> d!1450241 (= res!1926620 e!2872048)))

(declare-fun res!1926621 () Bool)

(assert (=> d!1450241 (=> (not res!1926621) (not e!2872048))))

(declare-fun lt!1762578 () Bool)

(assert (=> d!1450241 (= res!1926621 (not lt!1762578))))

(declare-fun lt!1762579 () Bool)

(assert (=> d!1450241 (= lt!1762578 lt!1762579)))

(declare-fun lt!1762581 () Unit!108873)

(declare-fun e!2872052 () Unit!108873)

(assert (=> d!1450241 (= lt!1762581 e!2872052)))

(declare-fun c!788783 () Bool)

(assert (=> d!1450241 (= c!788783 lt!1762579)))

(declare-fun containsKey!2210 (List!51270 K!12515) Bool)

(assert (=> d!1450241 (= lt!1762579 (containsKey!2210 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(assert (=> d!1450241 (= (contains!14129 (extractMap!1406 (toList!4707 lm!1477)) key!3287) lt!1762578)))

(declare-fun b!4604435 () Bool)

(declare-datatypes ((List!51273 0))(
  ( (Nil!51149) (Cons!51149 (h!57127 K!12515) (t!358267 List!51273)) )
))
(declare-fun e!2872049 () List!51273)

(declare-fun keys!17924 (ListMap!3969) List!51273)

(assert (=> b!4604435 (= e!2872049 (keys!17924 (extractMap!1406 (toList!4707 lm!1477))))))

(declare-fun b!4604436 () Bool)

(declare-fun lt!1762582 () Unit!108873)

(assert (=> b!4604436 (= e!2872052 lt!1762582)))

(declare-fun lt!1762584 () Unit!108873)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1239 (List!51270 K!12515) Unit!108873)

(assert (=> b!4604436 (= lt!1762584 (lemmaContainsKeyImpliesGetValueByKeyDefined!1239 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(declare-datatypes ((Option!11415 0))(
  ( (None!11414) (Some!11414 (v!45432 V!12761)) )
))
(declare-fun isDefined!8683 (Option!11415) Bool)

(declare-fun getValueByKey!1335 (List!51270 K!12515) Option!11415)

(assert (=> b!4604436 (isDefined!8683 (getValueByKey!1335 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(declare-fun lt!1762583 () Unit!108873)

(assert (=> b!4604436 (= lt!1762583 lt!1762584)))

(declare-fun lemmaInListThenGetKeysListContains!581 (List!51270 K!12515) Unit!108873)

(assert (=> b!4604436 (= lt!1762582 (lemmaInListThenGetKeysListContains!581 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(declare-fun call!321267 () Bool)

(assert (=> b!4604436 call!321267))

(declare-fun bm!321262 () Bool)

(declare-fun contains!14131 (List!51273 K!12515) Bool)

(assert (=> bm!321262 (= call!321267 (contains!14131 e!2872049 key!3287))))

(declare-fun c!788784 () Bool)

(assert (=> bm!321262 (= c!788784 c!788783)))

(declare-fun b!4604437 () Bool)

(declare-fun e!2872053 () Bool)

(assert (=> b!4604437 (= e!2872053 (contains!14131 (keys!17924 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(declare-fun b!4604438 () Bool)

(assert (=> b!4604438 false))

(declare-fun lt!1762580 () Unit!108873)

(declare-fun lt!1762577 () Unit!108873)

(assert (=> b!4604438 (= lt!1762580 lt!1762577)))

(assert (=> b!4604438 (containsKey!2210 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!584 (List!51270 K!12515) Unit!108873)

(assert (=> b!4604438 (= lt!1762577 (lemmaInGetKeysListThenContainsKey!584 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(declare-fun e!2872051 () Unit!108873)

(declare-fun Unit!108882 () Unit!108873)

(assert (=> b!4604438 (= e!2872051 Unit!108882)))

(declare-fun b!4604439 () Bool)

(declare-fun Unit!108883 () Unit!108873)

(assert (=> b!4604439 (= e!2872051 Unit!108883)))

(declare-fun b!4604440 () Bool)

(declare-fun getKeysList!585 (List!51270) List!51273)

(assert (=> b!4604440 (= e!2872049 (getKeysList!585 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))))

(declare-fun b!4604441 () Bool)

(assert (=> b!4604441 (= e!2872052 e!2872051)))

(declare-fun c!788782 () Bool)

(assert (=> b!4604441 (= c!788782 call!321267)))

(declare-fun b!4604442 () Bool)

(assert (=> b!4604442 (= e!2872048 (not (contains!14131 (keys!17924 (extractMap!1406 (toList!4707 lm!1477))) key!3287)))))

(declare-fun b!4604443 () Bool)

(assert (=> b!4604443 (= e!2872050 e!2872053)))

(declare-fun res!1926619 () Bool)

(assert (=> b!4604443 (=> (not res!1926619) (not e!2872053))))

(assert (=> b!4604443 (= res!1926619 (isDefined!8683 (getValueByKey!1335 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287)))))

(assert (= (and d!1450241 c!788783) b!4604436))

(assert (= (and d!1450241 (not c!788783)) b!4604441))

(assert (= (and b!4604441 c!788782) b!4604438))

(assert (= (and b!4604441 (not c!788782)) b!4604439))

(assert (= (or b!4604436 b!4604441) bm!321262))

(assert (= (and bm!321262 c!788784) b!4604440))

(assert (= (and bm!321262 (not c!788784)) b!4604435))

(assert (= (and d!1450241 res!1926621) b!4604442))

(assert (= (and d!1450241 (not res!1926620)) b!4604443))

(assert (= (and b!4604443 res!1926619) b!4604437))

(assert (=> b!4604442 m!5433471))

(declare-fun m!5433641 () Bool)

(assert (=> b!4604442 m!5433641))

(assert (=> b!4604442 m!5433641))

(declare-fun m!5433643 () Bool)

(assert (=> b!4604442 m!5433643))

(assert (=> b!4604435 m!5433471))

(assert (=> b!4604435 m!5433641))

(declare-fun m!5433645 () Bool)

(assert (=> b!4604440 m!5433645))

(declare-fun m!5433647 () Bool)

(assert (=> d!1450241 m!5433647))

(declare-fun m!5433649 () Bool)

(assert (=> b!4604443 m!5433649))

(assert (=> b!4604443 m!5433649))

(declare-fun m!5433651 () Bool)

(assert (=> b!4604443 m!5433651))

(declare-fun m!5433653 () Bool)

(assert (=> bm!321262 m!5433653))

(assert (=> b!4604437 m!5433471))

(assert (=> b!4604437 m!5433641))

(assert (=> b!4604437 m!5433641))

(assert (=> b!4604437 m!5433643))

(declare-fun m!5433655 () Bool)

(assert (=> b!4604436 m!5433655))

(assert (=> b!4604436 m!5433649))

(assert (=> b!4604436 m!5433649))

(assert (=> b!4604436 m!5433651))

(declare-fun m!5433657 () Bool)

(assert (=> b!4604436 m!5433657))

(assert (=> b!4604438 m!5433647))

(declare-fun m!5433659 () Bool)

(assert (=> b!4604438 m!5433659))

(assert (=> b!4604259 d!1450241))

(declare-fun bs!1014114 () Bool)

(declare-fun d!1450261 () Bool)

(assert (= bs!1014114 (and d!1450261 start!459864)))

(declare-fun lambda!187225 () Int)

(assert (=> bs!1014114 (= lambda!187225 lambda!187200)))

(declare-fun bs!1014115 () Bool)

(assert (= bs!1014115 (and d!1450261 d!1450187)))

(assert (=> bs!1014115 (not (= lambda!187225 lambda!187203))))

(declare-fun bs!1014116 () Bool)

(assert (= bs!1014116 (and d!1450261 d!1450189)))

(assert (=> bs!1014116 (= lambda!187225 lambda!187209)))

(declare-fun lt!1762587 () ListMap!3969)

(declare-fun invariantList!1136 (List!51270) Bool)

(assert (=> d!1450261 (invariantList!1136 (toList!4708 lt!1762587))))

(declare-fun e!2872056 () ListMap!3969)

(assert (=> d!1450261 (= lt!1762587 e!2872056)))

(declare-fun c!788787 () Bool)

(assert (=> d!1450261 (= c!788787 ((_ is Cons!51147) (toList!4707 lm!1477)))))

(assert (=> d!1450261 (forall!10646 (toList!4707 lm!1477) lambda!187225)))

(assert (=> d!1450261 (= (extractMap!1406 (toList!4707 lm!1477)) lt!1762587)))

(declare-fun b!4604448 () Bool)

(declare-fun addToMapMapFromBucket!828 (List!51270 ListMap!3969) ListMap!3969)

(assert (=> b!4604448 (= e!2872056 (addToMapMapFromBucket!828 (_2!29212 (h!57123 (toList!4707 lm!1477))) (extractMap!1406 (t!358265 (toList!4707 lm!1477)))))))

(declare-fun b!4604449 () Bool)

(assert (=> b!4604449 (= e!2872056 (ListMap!3970 Nil!51146))))

(assert (= (and d!1450261 c!788787) b!4604448))

(assert (= (and d!1450261 (not c!788787)) b!4604449))

(declare-fun m!5433661 () Bool)

(assert (=> d!1450261 m!5433661))

(declare-fun m!5433663 () Bool)

(assert (=> d!1450261 m!5433663))

(declare-fun m!5433665 () Bool)

(assert (=> b!4604448 m!5433665))

(assert (=> b!4604448 m!5433665))

(declare-fun m!5433667 () Bool)

(assert (=> b!4604448 m!5433667))

(assert (=> b!4604259 d!1450261))

(declare-fun d!1450263 () Bool)

(declare-fun res!1926622 () Bool)

(declare-fun e!2872057 () Bool)

(assert (=> d!1450263 (=> res!1926622 e!2872057)))

(assert (=> d!1450263 (= res!1926622 ((_ is Nil!51147) (toList!4707 lm!1477)))))

(assert (=> d!1450263 (= (forall!10646 (toList!4707 lm!1477) lambda!187200) e!2872057)))

(declare-fun b!4604450 () Bool)

(declare-fun e!2872058 () Bool)

(assert (=> b!4604450 (= e!2872057 e!2872058)))

(declare-fun res!1926623 () Bool)

(assert (=> b!4604450 (=> (not res!1926623) (not e!2872058))))

(assert (=> b!4604450 (= res!1926623 (dynLambda!21416 lambda!187200 (h!57123 (toList!4707 lm!1477))))))

(declare-fun b!4604451 () Bool)

(assert (=> b!4604451 (= e!2872058 (forall!10646 (t!358265 (toList!4707 lm!1477)) lambda!187200))))

(assert (= (and d!1450263 (not res!1926622)) b!4604450))

(assert (= (and b!4604450 res!1926623) b!4604451))

(declare-fun b_lambda!169837 () Bool)

(assert (=> (not b_lambda!169837) (not b!4604450)))

(declare-fun m!5433669 () Bool)

(assert (=> b!4604450 m!5433669))

(declare-fun m!5433671 () Bool)

(assert (=> b!4604451 m!5433671))

(assert (=> start!459864 d!1450263))

(declare-fun d!1450265 () Bool)

(assert (=> d!1450265 (= (inv!66699 lm!1477) (isStrictlySorted!552 (toList!4707 lm!1477)))))

(declare-fun bs!1014117 () Bool)

(assert (= bs!1014117 d!1450265))

(assert (=> bs!1014117 m!5433601))

(assert (=> start!459864 d!1450265))

(declare-fun bs!1014118 () Bool)

(declare-fun d!1450267 () Bool)

(assert (= bs!1014118 (and d!1450267 start!459864)))

(declare-fun lambda!187226 () Int)

(assert (=> bs!1014118 (not (= lambda!187226 lambda!187200))))

(declare-fun bs!1014119 () Bool)

(assert (= bs!1014119 (and d!1450267 d!1450187)))

(assert (=> bs!1014119 (= lambda!187226 lambda!187203)))

(declare-fun bs!1014120 () Bool)

(assert (= bs!1014120 (and d!1450267 d!1450189)))

(assert (=> bs!1014120 (not (= lambda!187226 lambda!187209))))

(declare-fun bs!1014121 () Bool)

(assert (= bs!1014121 (and d!1450267 d!1450261)))

(assert (=> bs!1014121 (not (= lambda!187226 lambda!187225))))

(assert (=> d!1450267 true))

(assert (=> d!1450267 (= (allKeysSameHashInMap!1457 lm!1477 hashF!1107) (forall!10646 (toList!4707 lm!1477) lambda!187226))))

(declare-fun bs!1014122 () Bool)

(assert (= bs!1014122 d!1450267))

(declare-fun m!5433673 () Bool)

(assert (=> bs!1014122 m!5433673))

(assert (=> b!4604249 d!1450267))

(declare-fun d!1450269 () Bool)

(declare-fun res!1926628 () Bool)

(declare-fun e!2872063 () Bool)

(assert (=> d!1450269 (=> res!1926628 e!2872063)))

(assert (=> d!1450269 (= res!1926628 (not ((_ is Cons!51146) newBucket!178)))))

(assert (=> d!1450269 (= (noDuplicateKeys!1346 newBucket!178) e!2872063)))

(declare-fun b!4604456 () Bool)

(declare-fun e!2872064 () Bool)

(assert (=> b!4604456 (= e!2872063 e!2872064)))

(declare-fun res!1926629 () Bool)

(assert (=> b!4604456 (=> (not res!1926629) (not e!2872064))))

(assert (=> b!4604456 (= res!1926629 (not (containsKey!2206 (t!358264 newBucket!178) (_1!29211 (h!57122 newBucket!178)))))))

(declare-fun b!4604457 () Bool)

(assert (=> b!4604457 (= e!2872064 (noDuplicateKeys!1346 (t!358264 newBucket!178)))))

(assert (= (and d!1450269 (not res!1926628)) b!4604456))

(assert (= (and b!4604456 res!1926629) b!4604457))

(declare-fun m!5433675 () Bool)

(assert (=> b!4604456 m!5433675))

(declare-fun m!5433677 () Bool)

(assert (=> b!4604457 m!5433677))

(assert (=> b!4604260 d!1450269))

(declare-fun d!1450271 () Bool)

(declare-fun lt!1762588 () Bool)

(assert (=> d!1450271 (= lt!1762588 (select (content!8676 (t!358265 (toList!4707 lm!1477))) lt!1762467))))

(declare-fun e!2872065 () Bool)

(assert (=> d!1450271 (= lt!1762588 e!2872065)))

(declare-fun res!1926631 () Bool)

(assert (=> d!1450271 (=> (not res!1926631) (not e!2872065))))

(assert (=> d!1450271 (= res!1926631 ((_ is Cons!51147) (t!358265 (toList!4707 lm!1477))))))

(assert (=> d!1450271 (= (contains!14127 (t!358265 (toList!4707 lm!1477)) lt!1762467) lt!1762588)))

(declare-fun b!4604458 () Bool)

(declare-fun e!2872066 () Bool)

(assert (=> b!4604458 (= e!2872065 e!2872066)))

(declare-fun res!1926630 () Bool)

(assert (=> b!4604458 (=> res!1926630 e!2872066)))

(assert (=> b!4604458 (= res!1926630 (= (h!57123 (t!358265 (toList!4707 lm!1477))) lt!1762467))))

(declare-fun b!4604459 () Bool)

(assert (=> b!4604459 (= e!2872066 (contains!14127 (t!358265 (t!358265 (toList!4707 lm!1477))) lt!1762467))))

(assert (= (and d!1450271 res!1926631) b!4604458))

(assert (= (and b!4604458 (not res!1926630)) b!4604459))

(declare-fun m!5433679 () Bool)

(assert (=> d!1450271 m!5433679))

(declare-fun m!5433681 () Bool)

(assert (=> d!1450271 m!5433681))

(declare-fun m!5433683 () Bool)

(assert (=> b!4604459 m!5433683))

(assert (=> b!4604250 d!1450271))

(declare-fun d!1450273 () Bool)

(declare-fun e!2872067 () Bool)

(assert (=> d!1450273 e!2872067))

(declare-fun res!1926632 () Bool)

(assert (=> d!1450273 (=> res!1926632 e!2872067)))

(declare-fun lt!1762591 () Bool)

(assert (=> d!1450273 (= res!1926632 (not lt!1762591))))

(declare-fun lt!1762589 () Bool)

(assert (=> d!1450273 (= lt!1762591 lt!1762589)))

(declare-fun lt!1762592 () Unit!108873)

(declare-fun e!2872068 () Unit!108873)

(assert (=> d!1450273 (= lt!1762592 e!2872068)))

(declare-fun c!788788 () Bool)

(assert (=> d!1450273 (= c!788788 lt!1762589)))

(assert (=> d!1450273 (= lt!1762589 (containsKey!2209 (toList!4707 lt!1762470) hash!344))))

(assert (=> d!1450273 (= (contains!14128 lt!1762470 hash!344) lt!1762591)))

(declare-fun b!4604460 () Bool)

(declare-fun lt!1762590 () Unit!108873)

(assert (=> b!4604460 (= e!2872068 lt!1762590)))

(assert (=> b!4604460 (= lt!1762590 (lemmaContainsKeyImpliesGetValueByKeyDefined!1238 (toList!4707 lt!1762470) hash!344))))

(assert (=> b!4604460 (isDefined!8682 (getValueByKey!1334 (toList!4707 lt!1762470) hash!344))))

(declare-fun b!4604461 () Bool)

(declare-fun Unit!108884 () Unit!108873)

(assert (=> b!4604461 (= e!2872068 Unit!108884)))

(declare-fun b!4604462 () Bool)

(assert (=> b!4604462 (= e!2872067 (isDefined!8682 (getValueByKey!1334 (toList!4707 lt!1762470) hash!344)))))

(assert (= (and d!1450273 c!788788) b!4604460))

(assert (= (and d!1450273 (not c!788788)) b!4604461))

(assert (= (and d!1450273 (not res!1926632)) b!4604462))

(declare-fun m!5433685 () Bool)

(assert (=> d!1450273 m!5433685))

(declare-fun m!5433687 () Bool)

(assert (=> b!4604460 m!5433687))

(declare-fun m!5433689 () Bool)

(assert (=> b!4604460 m!5433689))

(assert (=> b!4604460 m!5433689))

(declare-fun m!5433691 () Bool)

(assert (=> b!4604460 m!5433691))

(assert (=> b!4604462 m!5433689))

(assert (=> b!4604462 m!5433689))

(assert (=> b!4604462 m!5433691))

(assert (=> b!4604257 d!1450273))

(declare-fun d!1450275 () Bool)

(declare-fun tail!7993 (List!51271) List!51271)

(assert (=> d!1450275 (= (tail!7991 lm!1477) (ListLongMap!3340 (tail!7993 (toList!4707 lm!1477))))))

(declare-fun bs!1014123 () Bool)

(assert (= bs!1014123 d!1450275))

(declare-fun m!5433693 () Bool)

(assert (=> bs!1014123 m!5433693))

(assert (=> b!4604257 d!1450275))

(declare-fun d!1450277 () Bool)

(assert (=> d!1450277 (= (apply!12083 lt!1762470 hash!344) (get!16913 (getValueByKey!1334 (toList!4707 lt!1762470) hash!344)))))

(declare-fun bs!1014124 () Bool)

(assert (= bs!1014124 d!1450277))

(assert (=> bs!1014124 m!5433689))

(assert (=> bs!1014124 m!5433689))

(declare-fun m!5433695 () Bool)

(assert (=> bs!1014124 m!5433695))

(assert (=> b!4604247 d!1450277))

(declare-fun bs!1014125 () Bool)

(declare-fun d!1450279 () Bool)

(assert (= bs!1014125 (and d!1450279 start!459864)))

(declare-fun lambda!187229 () Int)

(assert (=> bs!1014125 (= lambda!187229 lambda!187200)))

(declare-fun bs!1014126 () Bool)

(assert (= bs!1014126 (and d!1450279 d!1450187)))

(assert (=> bs!1014126 (not (= lambda!187229 lambda!187203))))

(declare-fun bs!1014127 () Bool)

(assert (= bs!1014127 (and d!1450279 d!1450189)))

(assert (=> bs!1014127 (= lambda!187229 lambda!187209)))

(declare-fun bs!1014128 () Bool)

(assert (= bs!1014128 (and d!1450279 d!1450261)))

(assert (=> bs!1014128 (= lambda!187229 lambda!187225)))

(declare-fun bs!1014129 () Bool)

(assert (= bs!1014129 (and d!1450279 d!1450267)))

(assert (=> bs!1014129 (not (= lambda!187229 lambda!187226))))

(assert (=> d!1450279 (not (contains!14129 (extractMap!1406 (toList!4707 lm!1477)) key!3287))))

(declare-fun lt!1762595 () Unit!108873)

(declare-fun choose!30920 (ListLongMap!3339 K!12515 Hashable!5745) Unit!108873)

(assert (=> d!1450279 (= lt!1762595 (choose!30920 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1450279 (forall!10646 (toList!4707 lm!1477) lambda!187229)))

(assert (=> d!1450279 (= (lemmaNotInItsHashBucketThenNotInMap!310 lm!1477 key!3287 hashF!1107) lt!1762595)))

(declare-fun bs!1014130 () Bool)

(assert (= bs!1014130 d!1450279))

(assert (=> bs!1014130 m!5433471))

(assert (=> bs!1014130 m!5433471))

(assert (=> bs!1014130 m!5433473))

(declare-fun m!5433697 () Bool)

(assert (=> bs!1014130 m!5433697))

(declare-fun m!5433699 () Bool)

(assert (=> bs!1014130 m!5433699))

(assert (=> b!4604258 d!1450279))

(declare-fun d!1450281 () Bool)

(assert (=> d!1450281 true))

(assert (=> d!1450281 true))

(declare-fun lambda!187232 () Int)

(declare-fun forall!10648 (List!51270 Int) Bool)

(assert (=> d!1450281 (= (allKeysSameHash!1202 newBucket!178 hash!344 hashF!1107) (forall!10648 newBucket!178 lambda!187232))))

(declare-fun bs!1014131 () Bool)

(assert (= bs!1014131 d!1450281))

(declare-fun m!5433701 () Bool)

(assert (=> bs!1014131 m!5433701))

(assert (=> b!4604254 d!1450281))

(declare-fun d!1450283 () Bool)

(declare-fun hash!3271 (Hashable!5745 K!12515) (_ BitVec 64))

(assert (=> d!1450283 (= (hash!3269 hashF!1107 key!3287) (hash!3271 hashF!1107 key!3287))))

(declare-fun bs!1014132 () Bool)

(assert (= bs!1014132 d!1450283))

(declare-fun m!5433703 () Bool)

(assert (=> bs!1014132 m!5433703))

(assert (=> b!4604255 d!1450283))

(declare-fun b!4604471 () Bool)

(declare-fun e!2872071 () Bool)

(declare-fun tp!1340739 () Bool)

(declare-fun tp!1340740 () Bool)

(assert (=> b!4604471 (= e!2872071 (and tp!1340739 tp!1340740))))

(assert (=> b!4604246 (= tp!1340724 e!2872071)))

(assert (= (and b!4604246 ((_ is Cons!51147) (toList!4707 lm!1477))) b!4604471))

(declare-fun tp!1340743 () Bool)

(declare-fun b!4604476 () Bool)

(declare-fun e!2872074 () Bool)

(assert (=> b!4604476 (= e!2872074 (and tp_is_empty!28677 tp_is_empty!28679 tp!1340743))))

(assert (=> b!4604248 (= tp!1340725 e!2872074)))

(assert (= (and b!4604248 ((_ is Cons!51146) (t!358264 newBucket!178))) b!4604476))

(declare-fun b_lambda!169839 () Bool)

(assert (= b_lambda!169823 (or start!459864 b_lambda!169839)))

(declare-fun bs!1014133 () Bool)

(declare-fun d!1450285 () Bool)

(assert (= bs!1014133 (and d!1450285 start!459864)))

(assert (=> bs!1014133 (= (dynLambda!21416 lambda!187200 lt!1762467) (noDuplicateKeys!1346 (_2!29212 lt!1762467)))))

(declare-fun m!5433705 () Bool)

(assert (=> bs!1014133 m!5433705))

(assert (=> d!1450207 d!1450285))

(declare-fun b_lambda!169841 () Bool)

(assert (= b_lambda!169837 (or start!459864 b_lambda!169841)))

(declare-fun bs!1014134 () Bool)

(declare-fun d!1450287 () Bool)

(assert (= bs!1014134 (and d!1450287 start!459864)))

(assert (=> bs!1014134 (= (dynLambda!21416 lambda!187200 (h!57123 (toList!4707 lm!1477))) (noDuplicateKeys!1346 (_2!29212 (h!57123 (toList!4707 lm!1477)))))))

(declare-fun m!5433707 () Bool)

(assert (=> bs!1014134 m!5433707))

(assert (=> b!4604450 d!1450287))

(declare-fun b_lambda!169843 () Bool)

(assert (= b_lambda!169829 (or start!459864 b_lambda!169843)))

(declare-fun bs!1014135 () Bool)

(declare-fun d!1450289 () Bool)

(assert (= bs!1014135 (and d!1450289 start!459864)))

(assert (=> bs!1014135 (= (dynLambda!21416 lambda!187200 (h!57123 (toList!4707 lt!1762470))) (noDuplicateKeys!1346 (_2!29212 (h!57123 (toList!4707 lt!1762470)))))))

(declare-fun m!5433709 () Bool)

(assert (=> bs!1014135 m!5433709))

(assert (=> b!4604396 d!1450289))

(check-sat (not d!1450267) (not b_lambda!169843) (not b!4604436) (not b!4604348) (not b!4604448) (not d!1450241) (not b!4604438) (not b_lambda!169841) (not d!1450201) (not b!4604312) (not d!1450265) (not b!4604451) (not d!1450275) (not d!1450271) (not b!4604471) (not bs!1014134) (not d!1450277) (not bs!1014135) (not b!4604360) (not d!1450187) (not b!4604476) (not d!1450261) (not b!4604457) (not b!4604391) (not d!1450217) (not d!1450283) (not b!4604460) (not d!1450213) (not b!4604379) (not d!1450281) tp_is_empty!28679 (not b!4604306) (not b!4604397) tp_is_empty!28677 (not d!1450207) (not b!4604456) (not b_lambda!169839) (not d!1450273) (not b!4604346) (not b!4604440) (not b!4604443) (not b!4604435) (not b!4604459) (not b!4604437) (not d!1450189) (not bm!321262) (not bs!1014133) (not b!4604462) (not d!1450221) (not d!1450279) (not d!1450197) (not b!4604442))
(check-sat)
(get-model)

(declare-fun b!4604617 () Bool)

(assert (=> b!4604617 true))

(declare-fun bs!1014150 () Bool)

(declare-fun b!4604619 () Bool)

(assert (= bs!1014150 (and b!4604619 b!4604617)))

(declare-fun lambda!187260 () Int)

(declare-fun lambda!187259 () Int)

(assert (=> bs!1014150 (= (= (Cons!51146 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) (= lambda!187260 lambda!187259))))

(assert (=> b!4604619 true))

(declare-fun bs!1014151 () Bool)

(declare-fun b!4604614 () Bool)

(assert (= bs!1014151 (and b!4604614 b!4604617)))

(declare-fun lambda!187261 () Int)

(assert (=> bs!1014151 (= (= (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) (= lambda!187261 lambda!187259))))

(declare-fun bs!1014152 () Bool)

(assert (= bs!1014152 (and b!4604614 b!4604619)))

(assert (=> bs!1014152 (= (= (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) (Cons!51146 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))) (= lambda!187261 lambda!187260))))

(assert (=> b!4604614 true))

(declare-fun res!1926704 () Bool)

(declare-fun e!2872161 () Bool)

(assert (=> b!4604614 (=> (not res!1926704) (not e!2872161))))

(declare-fun lt!1762651 () List!51273)

(declare-fun forall!10650 (List!51273 Int) Bool)

(assert (=> b!4604614 (= res!1926704 (forall!10650 lt!1762651 lambda!187261))))

(declare-fun b!4604615 () Bool)

(assert (=> b!4604615 false))

(declare-fun e!2872162 () Unit!108873)

(declare-fun Unit!108900 () Unit!108873)

(assert (=> b!4604615 (= e!2872162 Unit!108900)))

(declare-fun b!4604616 () Bool)

(declare-fun Unit!108901 () Unit!108873)

(assert (=> b!4604616 (= e!2872162 Unit!108901)))

(assert (=> b!4604617 false))

(declare-fun lt!1762656 () Unit!108873)

(declare-fun forallContained!2898 (List!51273 Int K!12515) Unit!108873)

(assert (=> b!4604617 (= lt!1762656 (forallContained!2898 (getKeysList!585 (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) lambda!187259 (_1!29211 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))))))

(declare-fun e!2872160 () Unit!108873)

(declare-fun Unit!108902 () Unit!108873)

(assert (=> b!4604617 (= e!2872160 Unit!108902)))

(declare-fun b!4604618 () Bool)

(declare-fun lambda!187262 () Int)

(declare-fun content!8678 (List!51273) (InoxSet K!12515))

(declare-fun map!11306 (List!51270 Int) List!51273)

(assert (=> b!4604618 (= e!2872161 (= (content!8678 lt!1762651) (content!8678 (map!11306 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) lambda!187262))))))

(declare-fun e!2872163 () List!51273)

(assert (=> b!4604619 (= e!2872163 (Cons!51149 (_1!29211 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) (getKeysList!585 (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))))))

(declare-fun c!788823 () Bool)

(assert (=> b!4604619 (= c!788823 (containsKey!2210 (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) (_1!29211 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))))))

(declare-fun lt!1762652 () Unit!108873)

(assert (=> b!4604619 (= lt!1762652 e!2872162)))

(declare-fun c!788821 () Bool)

(assert (=> b!4604619 (= c!788821 (contains!14131 (getKeysList!585 (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) (_1!29211 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))))))

(declare-fun lt!1762653 () Unit!108873)

(assert (=> b!4604619 (= lt!1762653 e!2872160)))

(declare-fun lt!1762654 () List!51273)

(assert (=> b!4604619 (= lt!1762654 (getKeysList!585 (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))))))

(declare-fun lt!1762657 () Unit!108873)

(declare-fun lemmaForallContainsAddHeadPreserves!240 (List!51270 List!51273 tuple2!51834) Unit!108873)

(assert (=> b!4604619 (= lt!1762657 (lemmaForallContainsAddHeadPreserves!240 (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) lt!1762654 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))))))

(assert (=> b!4604619 (forall!10650 lt!1762654 lambda!187260)))

(declare-fun lt!1762655 () Unit!108873)

(assert (=> b!4604619 (= lt!1762655 lt!1762657)))

(declare-fun b!4604620 () Bool)

(assert (=> b!4604620 (= e!2872163 Nil!51149)))

(declare-fun d!1450347 () Bool)

(assert (=> d!1450347 e!2872161))

(declare-fun res!1926702 () Bool)

(assert (=> d!1450347 (=> (not res!1926702) (not e!2872161))))

(declare-fun noDuplicate!820 (List!51273) Bool)

(assert (=> d!1450347 (= res!1926702 (noDuplicate!820 lt!1762651))))

(assert (=> d!1450347 (= lt!1762651 e!2872163)))

(declare-fun c!788822 () Bool)

(assert (=> d!1450347 (= c!788822 ((_ is Cons!51146) (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))))

(assert (=> d!1450347 (invariantList!1136 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))))

(assert (=> d!1450347 (= (getKeysList!585 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) lt!1762651)))

(declare-fun b!4604621 () Bool)

(declare-fun res!1926703 () Bool)

(assert (=> b!4604621 (=> (not res!1926703) (not e!2872161))))

(declare-fun length!496 (List!51273) Int)

(declare-fun length!497 (List!51270) Int)

(assert (=> b!4604621 (= res!1926703 (= (length!496 lt!1762651) (length!497 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))))))

(declare-fun b!4604622 () Bool)

(declare-fun Unit!108903 () Unit!108873)

(assert (=> b!4604622 (= e!2872160 Unit!108903)))

(assert (= (and d!1450347 c!788822) b!4604619))

(assert (= (and d!1450347 (not c!788822)) b!4604620))

(assert (= (and b!4604619 c!788823) b!4604615))

(assert (= (and b!4604619 (not c!788823)) b!4604616))

(assert (= (and b!4604619 c!788821) b!4604617))

(assert (= (and b!4604619 (not c!788821)) b!4604622))

(assert (= (and d!1450347 res!1926702) b!4604621))

(assert (= (and b!4604621 res!1926703) b!4604614))

(assert (= (and b!4604614 res!1926704) b!4604618))

(declare-fun m!5433813 () Bool)

(assert (=> d!1450347 m!5433813))

(declare-fun m!5433815 () Bool)

(assert (=> d!1450347 m!5433815))

(declare-fun m!5433817 () Bool)

(assert (=> b!4604621 m!5433817))

(declare-fun m!5433819 () Bool)

(assert (=> b!4604621 m!5433819))

(declare-fun m!5433821 () Bool)

(assert (=> b!4604614 m!5433821))

(declare-fun m!5433823 () Bool)

(assert (=> b!4604617 m!5433823))

(assert (=> b!4604617 m!5433823))

(declare-fun m!5433825 () Bool)

(assert (=> b!4604617 m!5433825))

(declare-fun m!5433827 () Bool)

(assert (=> b!4604618 m!5433827))

(declare-fun m!5433829 () Bool)

(assert (=> b!4604618 m!5433829))

(assert (=> b!4604618 m!5433829))

(declare-fun m!5433831 () Bool)

(assert (=> b!4604618 m!5433831))

(declare-fun m!5433833 () Bool)

(assert (=> b!4604619 m!5433833))

(declare-fun m!5433835 () Bool)

(assert (=> b!4604619 m!5433835))

(assert (=> b!4604619 m!5433823))

(declare-fun m!5433837 () Bool)

(assert (=> b!4604619 m!5433837))

(declare-fun m!5433839 () Bool)

(assert (=> b!4604619 m!5433839))

(assert (=> b!4604619 m!5433823))

(assert (=> b!4604440 d!1450347))

(assert (=> b!4604360 d!1450271))

(declare-fun d!1450349 () Bool)

(assert (=> d!1450349 (isDefined!8682 (getValueByKey!1334 (toList!4707 lm!1477) lt!1762465))))

(declare-fun lt!1762660 () Unit!108873)

(declare-fun choose!30925 (List!51271 (_ BitVec 64)) Unit!108873)

(assert (=> d!1450349 (= lt!1762660 (choose!30925 (toList!4707 lm!1477) lt!1762465))))

(declare-fun e!2872166 () Bool)

(assert (=> d!1450349 e!2872166))

(declare-fun res!1926707 () Bool)

(assert (=> d!1450349 (=> (not res!1926707) (not e!2872166))))

(assert (=> d!1450349 (= res!1926707 (isStrictlySorted!552 (toList!4707 lm!1477)))))

(assert (=> d!1450349 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1238 (toList!4707 lm!1477) lt!1762465) lt!1762660)))

(declare-fun b!4604627 () Bool)

(assert (=> b!4604627 (= e!2872166 (containsKey!2209 (toList!4707 lm!1477) lt!1762465))))

(assert (= (and d!1450349 res!1926707) b!4604627))

(assert (=> d!1450349 m!5433563))

(assert (=> d!1450349 m!5433563))

(assert (=> d!1450349 m!5433565))

(declare-fun m!5433841 () Bool)

(assert (=> d!1450349 m!5433841))

(assert (=> d!1450349 m!5433601))

(assert (=> b!4604627 m!5433559))

(assert (=> b!4604346 d!1450349))

(declare-fun d!1450351 () Bool)

(declare-fun isEmpty!28881 (Option!11414) Bool)

(assert (=> d!1450351 (= (isDefined!8682 (getValueByKey!1334 (toList!4707 lm!1477) lt!1762465)) (not (isEmpty!28881 (getValueByKey!1334 (toList!4707 lm!1477) lt!1762465))))))

(declare-fun bs!1014153 () Bool)

(assert (= bs!1014153 d!1450351))

(assert (=> bs!1014153 m!5433563))

(declare-fun m!5433843 () Bool)

(assert (=> bs!1014153 m!5433843))

(assert (=> b!4604346 d!1450351))

(declare-fun b!4604638 () Bool)

(declare-fun e!2872172 () Option!11414)

(assert (=> b!4604638 (= e!2872172 (getValueByKey!1334 (t!358265 (toList!4707 lm!1477)) lt!1762465))))

(declare-fun b!4604636 () Bool)

(declare-fun e!2872171 () Option!11414)

(assert (=> b!4604636 (= e!2872171 (Some!11413 (_2!29212 (h!57123 (toList!4707 lm!1477)))))))

(declare-fun d!1450353 () Bool)

(declare-fun c!788828 () Bool)

(assert (=> d!1450353 (= c!788828 (and ((_ is Cons!51147) (toList!4707 lm!1477)) (= (_1!29212 (h!57123 (toList!4707 lm!1477))) lt!1762465)))))

(assert (=> d!1450353 (= (getValueByKey!1334 (toList!4707 lm!1477) lt!1762465) e!2872171)))

(declare-fun b!4604637 () Bool)

(assert (=> b!4604637 (= e!2872171 e!2872172)))

(declare-fun c!788829 () Bool)

(assert (=> b!4604637 (= c!788829 (and ((_ is Cons!51147) (toList!4707 lm!1477)) (not (= (_1!29212 (h!57123 (toList!4707 lm!1477))) lt!1762465))))))

(declare-fun b!4604639 () Bool)

(assert (=> b!4604639 (= e!2872172 None!11413)))

(assert (= (and d!1450353 c!788828) b!4604636))

(assert (= (and d!1450353 (not c!788828)) b!4604637))

(assert (= (and b!4604637 c!788829) b!4604638))

(assert (= (and b!4604637 (not c!788829)) b!4604639))

(declare-fun m!5433845 () Bool)

(assert (=> b!4604638 m!5433845))

(assert (=> b!4604346 d!1450353))

(declare-fun d!1450355 () Bool)

(declare-fun choose!30927 (Hashable!5745 K!12515) (_ BitVec 64))

(assert (=> d!1450355 (= (hash!3271 hashF!1107 key!3287) (choose!30927 hashF!1107 key!3287))))

(declare-fun bs!1014154 () Bool)

(assert (= bs!1014154 d!1450355))

(declare-fun m!5433847 () Bool)

(assert (=> bs!1014154 m!5433847))

(assert (=> d!1450283 d!1450355))

(declare-fun d!1450357 () Bool)

(assert (=> d!1450357 (dynLambda!21416 lambda!187200 lt!1762467)))

(assert (=> d!1450357 true))

(declare-fun _$7!2156 () Unit!108873)

(assert (=> d!1450357 (= (choose!30918 (toList!4707 lm!1477) lambda!187200 lt!1762467) _$7!2156)))

(declare-fun b_lambda!169851 () Bool)

(assert (=> (not b_lambda!169851) (not d!1450357)))

(declare-fun bs!1014155 () Bool)

(assert (= bs!1014155 d!1450357))

(assert (=> bs!1014155 m!5433535))

(assert (=> d!1450207 d!1450357))

(assert (=> d!1450207 d!1450263))

(declare-fun d!1450359 () Bool)

(assert (=> d!1450359 (= (isDefined!8682 (getValueByKey!1334 (toList!4707 lt!1762470) hash!344)) (not (isEmpty!28881 (getValueByKey!1334 (toList!4707 lt!1762470) hash!344))))))

(declare-fun bs!1014156 () Bool)

(assert (= bs!1014156 d!1450359))

(assert (=> bs!1014156 m!5433689))

(declare-fun m!5433849 () Bool)

(assert (=> bs!1014156 m!5433849))

(assert (=> b!4604462 d!1450359))

(declare-fun b!4604646 () Bool)

(declare-fun e!2872176 () Option!11414)

(assert (=> b!4604646 (= e!2872176 (getValueByKey!1334 (t!358265 (toList!4707 lt!1762470)) hash!344))))

(declare-fun b!4604644 () Bool)

(declare-fun e!2872175 () Option!11414)

(assert (=> b!4604644 (= e!2872175 (Some!11413 (_2!29212 (h!57123 (toList!4707 lt!1762470)))))))

(declare-fun d!1450361 () Bool)

(declare-fun c!788832 () Bool)

(assert (=> d!1450361 (= c!788832 (and ((_ is Cons!51147) (toList!4707 lt!1762470)) (= (_1!29212 (h!57123 (toList!4707 lt!1762470))) hash!344)))))

(assert (=> d!1450361 (= (getValueByKey!1334 (toList!4707 lt!1762470) hash!344) e!2872175)))

(declare-fun b!4604645 () Bool)

(assert (=> b!4604645 (= e!2872175 e!2872176)))

(declare-fun c!788833 () Bool)

(assert (=> b!4604645 (= c!788833 (and ((_ is Cons!51147) (toList!4707 lt!1762470)) (not (= (_1!29212 (h!57123 (toList!4707 lt!1762470))) hash!344))))))

(declare-fun b!4604647 () Bool)

(assert (=> b!4604647 (= e!2872176 None!11413)))

(assert (= (and d!1450361 c!788832) b!4604644))

(assert (= (and d!1450361 (not c!788832)) b!4604645))

(assert (= (and b!4604645 c!788833) b!4604646))

(assert (= (and b!4604645 (not c!788833)) b!4604647))

(declare-fun m!5433851 () Bool)

(assert (=> b!4604646 m!5433851))

(assert (=> b!4604462 d!1450361))

(declare-fun d!1450363 () Bool)

(declare-fun lt!1762679 () Bool)

(assert (=> d!1450363 (= lt!1762679 (select (content!8678 (keys!17924 (extractMap!1406 (toList!4707 lm!1477)))) key!3287))))

(declare-fun e!2872182 () Bool)

(assert (=> d!1450363 (= lt!1762679 e!2872182)))

(declare-fun res!1926713 () Bool)

(assert (=> d!1450363 (=> (not res!1926713) (not e!2872182))))

(assert (=> d!1450363 (= res!1926713 ((_ is Cons!51149) (keys!17924 (extractMap!1406 (toList!4707 lm!1477)))))))

(assert (=> d!1450363 (= (contains!14131 (keys!17924 (extractMap!1406 (toList!4707 lm!1477))) key!3287) lt!1762679)))

(declare-fun b!4604652 () Bool)

(declare-fun e!2872181 () Bool)

(assert (=> b!4604652 (= e!2872182 e!2872181)))

(declare-fun res!1926712 () Bool)

(assert (=> b!4604652 (=> res!1926712 e!2872181)))

(assert (=> b!4604652 (= res!1926712 (= (h!57127 (keys!17924 (extractMap!1406 (toList!4707 lm!1477)))) key!3287))))

(declare-fun b!4604653 () Bool)

(assert (=> b!4604653 (= e!2872181 (contains!14131 (t!358267 (keys!17924 (extractMap!1406 (toList!4707 lm!1477)))) key!3287))))

(assert (= (and d!1450363 res!1926713) b!4604652))

(assert (= (and b!4604652 (not res!1926712)) b!4604653))

(assert (=> d!1450363 m!5433641))

(declare-fun m!5433853 () Bool)

(assert (=> d!1450363 m!5433853))

(declare-fun m!5433855 () Bool)

(assert (=> d!1450363 m!5433855))

(declare-fun m!5433857 () Bool)

(assert (=> b!4604653 m!5433857))

(assert (=> b!4604442 d!1450363))

(declare-fun bs!1014157 () Bool)

(declare-fun b!4604661 () Bool)

(assert (= bs!1014157 (and b!4604661 b!4604617)))

(declare-fun lambda!187287 () Int)

(assert (=> bs!1014157 (= (= (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) (= lambda!187287 lambda!187259))))

(declare-fun bs!1014158 () Bool)

(assert (= bs!1014158 (and b!4604661 b!4604619)))

(assert (=> bs!1014158 (= (= (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) (Cons!51146 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))) (= lambda!187287 lambda!187260))))

(declare-fun bs!1014159 () Bool)

(assert (= bs!1014159 (and b!4604661 b!4604614)))

(assert (=> bs!1014159 (= lambda!187287 lambda!187261)))

(assert (=> b!4604661 true))

(declare-fun bs!1014160 () Bool)

(declare-fun b!4604662 () Bool)

(assert (= bs!1014160 (and b!4604662 b!4604618)))

(declare-fun lambda!187288 () Int)

(assert (=> bs!1014160 (= lambda!187288 lambda!187262)))

(declare-fun d!1450365 () Bool)

(declare-fun e!2872185 () Bool)

(assert (=> d!1450365 e!2872185))

(declare-fun res!1926720 () Bool)

(assert (=> d!1450365 (=> (not res!1926720) (not e!2872185))))

(declare-fun lt!1762706 () List!51273)

(assert (=> d!1450365 (= res!1926720 (noDuplicate!820 lt!1762706))))

(assert (=> d!1450365 (= lt!1762706 (getKeysList!585 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))))

(assert (=> d!1450365 (= (keys!17924 (extractMap!1406 (toList!4707 lm!1477))) lt!1762706)))

(declare-fun b!4604660 () Bool)

(declare-fun res!1926722 () Bool)

(assert (=> b!4604660 (=> (not res!1926722) (not e!2872185))))

(assert (=> b!4604660 (= res!1926722 (= (length!496 lt!1762706) (length!497 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))))))

(declare-fun res!1926721 () Bool)

(assert (=> b!4604661 (=> (not res!1926721) (not e!2872185))))

(assert (=> b!4604661 (= res!1926721 (forall!10650 lt!1762706 lambda!187287))))

(assert (=> b!4604662 (= e!2872185 (= (content!8678 lt!1762706) (content!8678 (map!11306 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) lambda!187288))))))

(assert (= (and d!1450365 res!1926720) b!4604660))

(assert (= (and b!4604660 res!1926722) b!4604661))

(assert (= (and b!4604661 res!1926721) b!4604662))

(declare-fun m!5433859 () Bool)

(assert (=> d!1450365 m!5433859))

(assert (=> d!1450365 m!5433645))

(declare-fun m!5433861 () Bool)

(assert (=> b!4604660 m!5433861))

(assert (=> b!4604660 m!5433819))

(declare-fun m!5433863 () Bool)

(assert (=> b!4604661 m!5433863))

(declare-fun m!5433865 () Bool)

(assert (=> b!4604662 m!5433865))

(declare-fun m!5433867 () Bool)

(assert (=> b!4604662 m!5433867))

(assert (=> b!4604662 m!5433867))

(declare-fun m!5433869 () Bool)

(assert (=> b!4604662 m!5433869))

(assert (=> b!4604442 d!1450365))

(declare-fun d!1450367 () Bool)

(declare-fun res!1926729 () Bool)

(declare-fun e!2872192 () Bool)

(assert (=> d!1450367 (=> res!1926729 e!2872192)))

(assert (=> d!1450367 (= res!1926729 (and ((_ is Cons!51146) (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) (= (_1!29211 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) key!3287)))))

(assert (=> d!1450367 (= (containsKey!2210 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287) e!2872192)))

(declare-fun b!4604671 () Bool)

(declare-fun e!2872193 () Bool)

(assert (=> b!4604671 (= e!2872192 e!2872193)))

(declare-fun res!1926730 () Bool)

(assert (=> b!4604671 (=> (not res!1926730) (not e!2872193))))

(assert (=> b!4604671 (= res!1926730 ((_ is Cons!51146) (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))))

(declare-fun b!4604672 () Bool)

(assert (=> b!4604672 (= e!2872193 (containsKey!2210 (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) key!3287))))

(assert (= (and d!1450367 (not res!1926729)) b!4604671))

(assert (= (and b!4604671 res!1926730) b!4604672))

(declare-fun m!5433871 () Bool)

(assert (=> b!4604672 m!5433871))

(assert (=> d!1450241 d!1450367))

(assert (=> b!4604438 d!1450367))

(declare-fun d!1450369 () Bool)

(assert (=> d!1450369 (containsKey!2210 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287)))

(declare-fun lt!1762711 () Unit!108873)

(declare-fun choose!30928 (List!51270 K!12515) Unit!108873)

(assert (=> d!1450369 (= lt!1762711 (choose!30928 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(assert (=> d!1450369 (invariantList!1136 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))))

(assert (=> d!1450369 (= (lemmaInGetKeysListThenContainsKey!584 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287) lt!1762711)))

(declare-fun bs!1014161 () Bool)

(assert (= bs!1014161 d!1450369))

(assert (=> bs!1014161 m!5433647))

(declare-fun m!5433873 () Bool)

(assert (=> bs!1014161 m!5433873))

(assert (=> bs!1014161 m!5433815))

(assert (=> b!4604438 d!1450369))

(declare-fun d!1450371 () Bool)

(assert (=> d!1450371 (= (get!16913 (getValueByKey!1334 (toList!4707 lt!1762470) hash!344)) (v!45431 (getValueByKey!1334 (toList!4707 lt!1762470) hash!344)))))

(assert (=> d!1450277 d!1450371))

(assert (=> d!1450277 d!1450361))

(declare-fun d!1450373 () Bool)

(assert (=> d!1450373 (isDefined!8682 (getValueByKey!1334 (toList!4707 lt!1762470) hash!344))))

(declare-fun lt!1762712 () Unit!108873)

(assert (=> d!1450373 (= lt!1762712 (choose!30925 (toList!4707 lt!1762470) hash!344))))

(declare-fun e!2872196 () Bool)

(assert (=> d!1450373 e!2872196))

(declare-fun res!1926735 () Bool)

(assert (=> d!1450373 (=> (not res!1926735) (not e!2872196))))

(assert (=> d!1450373 (= res!1926735 (isStrictlySorted!552 (toList!4707 lt!1762470)))))

(assert (=> d!1450373 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1238 (toList!4707 lt!1762470) hash!344) lt!1762712)))

(declare-fun b!4604677 () Bool)

(assert (=> b!4604677 (= e!2872196 (containsKey!2209 (toList!4707 lt!1762470) hash!344))))

(assert (= (and d!1450373 res!1926735) b!4604677))

(assert (=> d!1450373 m!5433689))

(assert (=> d!1450373 m!5433689))

(assert (=> d!1450373 m!5433691))

(declare-fun m!5433875 () Bool)

(assert (=> d!1450373 m!5433875))

(declare-fun m!5433877 () Bool)

(assert (=> d!1450373 m!5433877))

(assert (=> b!4604677 m!5433685))

(assert (=> b!4604460 d!1450373))

(assert (=> b!4604460 d!1450359))

(assert (=> b!4604460 d!1450361))

(declare-fun d!1450375 () Bool)

(declare-fun res!1926736 () Bool)

(declare-fun e!2872197 () Bool)

(assert (=> d!1450375 (=> res!1926736 e!2872197)))

(assert (=> d!1450375 (= res!1926736 ((_ is Nil!51147) (toList!4707 lt!1762470)))))

(assert (=> d!1450375 (= (forall!10646 (toList!4707 lt!1762470) lambda!187203) e!2872197)))

(declare-fun b!4604678 () Bool)

(declare-fun e!2872198 () Bool)

(assert (=> b!4604678 (= e!2872197 e!2872198)))

(declare-fun res!1926737 () Bool)

(assert (=> b!4604678 (=> (not res!1926737) (not e!2872198))))

(assert (=> b!4604678 (= res!1926737 (dynLambda!21416 lambda!187203 (h!57123 (toList!4707 lt!1762470))))))

(declare-fun b!4604679 () Bool)

(assert (=> b!4604679 (= e!2872198 (forall!10646 (t!358265 (toList!4707 lt!1762470)) lambda!187203))))

(assert (= (and d!1450375 (not res!1926736)) b!4604678))

(assert (= (and b!4604678 res!1926737) b!4604679))

(declare-fun b_lambda!169853 () Bool)

(assert (=> (not b_lambda!169853) (not b!4604678)))

(declare-fun m!5433879 () Bool)

(assert (=> b!4604678 m!5433879))

(declare-fun m!5433881 () Bool)

(assert (=> b!4604679 m!5433881))

(assert (=> d!1450187 d!1450375))

(declare-fun d!1450377 () Bool)

(declare-fun noDuplicatedKeys!333 (List!51270) Bool)

(assert (=> d!1450377 (= (invariantList!1136 (toList!4708 lt!1762587)) (noDuplicatedKeys!333 (toList!4708 lt!1762587)))))

(declare-fun bs!1014162 () Bool)

(assert (= bs!1014162 d!1450377))

(declare-fun m!5433883 () Bool)

(assert (=> bs!1014162 m!5433883))

(assert (=> d!1450261 d!1450377))

(declare-fun d!1450379 () Bool)

(declare-fun res!1926738 () Bool)

(declare-fun e!2872199 () Bool)

(assert (=> d!1450379 (=> res!1926738 e!2872199)))

(assert (=> d!1450379 (= res!1926738 ((_ is Nil!51147) (toList!4707 lm!1477)))))

(assert (=> d!1450379 (= (forall!10646 (toList!4707 lm!1477) lambda!187225) e!2872199)))

(declare-fun b!4604680 () Bool)

(declare-fun e!2872200 () Bool)

(assert (=> b!4604680 (= e!2872199 e!2872200)))

(declare-fun res!1926739 () Bool)

(assert (=> b!4604680 (=> (not res!1926739) (not e!2872200))))

(assert (=> b!4604680 (= res!1926739 (dynLambda!21416 lambda!187225 (h!57123 (toList!4707 lm!1477))))))

(declare-fun b!4604681 () Bool)

(assert (=> b!4604681 (= e!2872200 (forall!10646 (t!358265 (toList!4707 lm!1477)) lambda!187225))))

(assert (= (and d!1450379 (not res!1926738)) b!4604680))

(assert (= (and b!4604680 res!1926739) b!4604681))

(declare-fun b_lambda!169855 () Bool)

(assert (=> (not b_lambda!169855) (not b!4604680)))

(declare-fun m!5433885 () Bool)

(assert (=> b!4604680 m!5433885))

(declare-fun m!5433887 () Bool)

(assert (=> b!4604681 m!5433887))

(assert (=> d!1450261 d!1450379))

(declare-fun d!1450381 () Bool)

(declare-fun res!1926740 () Bool)

(declare-fun e!2872201 () Bool)

(assert (=> d!1450381 (=> res!1926740 e!2872201)))

(assert (=> d!1450381 (= res!1926740 ((_ is Nil!51147) (t!358265 (toList!4707 lt!1762470))))))

(assert (=> d!1450381 (= (forall!10646 (t!358265 (toList!4707 lt!1762470)) lambda!187200) e!2872201)))

(declare-fun b!4604682 () Bool)

(declare-fun e!2872202 () Bool)

(assert (=> b!4604682 (= e!2872201 e!2872202)))

(declare-fun res!1926741 () Bool)

(assert (=> b!4604682 (=> (not res!1926741) (not e!2872202))))

(assert (=> b!4604682 (= res!1926741 (dynLambda!21416 lambda!187200 (h!57123 (t!358265 (toList!4707 lt!1762470)))))))

(declare-fun b!4604683 () Bool)

(assert (=> b!4604683 (= e!2872202 (forall!10646 (t!358265 (t!358265 (toList!4707 lt!1762470))) lambda!187200))))

(assert (= (and d!1450381 (not res!1926740)) b!4604682))

(assert (= (and b!4604682 res!1926741) b!4604683))

(declare-fun b_lambda!169857 () Bool)

(assert (=> (not b_lambda!169857) (not b!4604682)))

(declare-fun m!5433889 () Bool)

(assert (=> b!4604682 m!5433889))

(declare-fun m!5433891 () Bool)

(assert (=> b!4604683 m!5433891))

(assert (=> b!4604397 d!1450381))

(declare-fun d!1450383 () Bool)

(declare-fun res!1926742 () Bool)

(declare-fun e!2872203 () Bool)

(assert (=> d!1450383 (=> res!1926742 e!2872203)))

(assert (=> d!1450383 (= res!1926742 (not ((_ is Cons!51146) (_2!29212 lt!1762467))))))

(assert (=> d!1450383 (= (noDuplicateKeys!1346 (_2!29212 lt!1762467)) e!2872203)))

(declare-fun b!4604684 () Bool)

(declare-fun e!2872204 () Bool)

(assert (=> b!4604684 (= e!2872203 e!2872204)))

(declare-fun res!1926743 () Bool)

(assert (=> b!4604684 (=> (not res!1926743) (not e!2872204))))

(assert (=> b!4604684 (= res!1926743 (not (containsKey!2206 (t!358264 (_2!29212 lt!1762467)) (_1!29211 (h!57122 (_2!29212 lt!1762467))))))))

(declare-fun b!4604685 () Bool)

(assert (=> b!4604685 (= e!2872204 (noDuplicateKeys!1346 (t!358264 (_2!29212 lt!1762467))))))

(assert (= (and d!1450383 (not res!1926742)) b!4604684))

(assert (= (and b!4604684 res!1926743) b!4604685))

(declare-fun m!5433893 () Bool)

(assert (=> b!4604684 m!5433893))

(declare-fun m!5433895 () Bool)

(assert (=> b!4604685 m!5433895))

(assert (=> bs!1014133 d!1450383))

(declare-fun d!1450385 () Bool)

(declare-fun res!1926744 () Bool)

(declare-fun e!2872205 () Bool)

(assert (=> d!1450385 (=> res!1926744 e!2872205)))

(assert (=> d!1450385 (= res!1926744 ((_ is Nil!51147) (toList!4707 lm!1477)))))

(assert (=> d!1450385 (= (forall!10646 (toList!4707 lm!1477) lambda!187226) e!2872205)))

(declare-fun b!4604686 () Bool)

(declare-fun e!2872206 () Bool)

(assert (=> b!4604686 (= e!2872205 e!2872206)))

(declare-fun res!1926745 () Bool)

(assert (=> b!4604686 (=> (not res!1926745) (not e!2872206))))

(assert (=> b!4604686 (= res!1926745 (dynLambda!21416 lambda!187226 (h!57123 (toList!4707 lm!1477))))))

(declare-fun b!4604687 () Bool)

(assert (=> b!4604687 (= e!2872206 (forall!10646 (t!358265 (toList!4707 lm!1477)) lambda!187226))))

(assert (= (and d!1450385 (not res!1926744)) b!4604686))

(assert (= (and b!4604686 res!1926745) b!4604687))

(declare-fun b_lambda!169859 () Bool)

(assert (=> (not b_lambda!169859) (not b!4604686)))

(declare-fun m!5433897 () Bool)

(assert (=> b!4604686 m!5433897))

(declare-fun m!5433899 () Bool)

(assert (=> b!4604687 m!5433899))

(assert (=> d!1450267 d!1450385))

(declare-fun d!1450387 () Bool)

(declare-fun res!1926746 () Bool)

(declare-fun e!2872207 () Bool)

(assert (=> d!1450387 (=> res!1926746 e!2872207)))

(assert (=> d!1450387 (= res!1926746 (and ((_ is Cons!51146) (t!358264 lt!1762463)) (= (_1!29211 (h!57122 (t!358264 lt!1762463))) key!3287)))))

(assert (=> d!1450387 (= (containsKey!2206 (t!358264 lt!1762463) key!3287) e!2872207)))

(declare-fun b!4604688 () Bool)

(declare-fun e!2872208 () Bool)

(assert (=> b!4604688 (= e!2872207 e!2872208)))

(declare-fun res!1926747 () Bool)

(assert (=> b!4604688 (=> (not res!1926747) (not e!2872208))))

(assert (=> b!4604688 (= res!1926747 ((_ is Cons!51146) (t!358264 lt!1762463)))))

(declare-fun b!4604689 () Bool)

(assert (=> b!4604689 (= e!2872208 (containsKey!2206 (t!358264 (t!358264 lt!1762463)) key!3287))))

(assert (= (and d!1450387 (not res!1926746)) b!4604688))

(assert (= (and b!4604688 res!1926747) b!4604689))

(declare-fun m!5433901 () Bool)

(assert (=> b!4604689 m!5433901))

(assert (=> b!4604391 d!1450387))

(declare-fun d!1450389 () Bool)

(declare-fun isEmpty!28882 (Option!11415) Bool)

(assert (=> d!1450389 (= (isDefined!8683 (getValueByKey!1335 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287)) (not (isEmpty!28882 (getValueByKey!1335 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))))

(declare-fun bs!1014163 () Bool)

(assert (= bs!1014163 d!1450389))

(assert (=> bs!1014163 m!5433649))

(declare-fun m!5433903 () Bool)

(assert (=> bs!1014163 m!5433903))

(assert (=> b!4604443 d!1450389))

(declare-fun b!4604708 () Bool)

(declare-fun e!2872217 () Option!11415)

(assert (=> b!4604708 (= e!2872217 None!11414)))

(declare-fun b!4604705 () Bool)

(declare-fun e!2872216 () Option!11415)

(assert (=> b!4604705 (= e!2872216 (Some!11414 (_2!29211 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))))))))

(declare-fun b!4604707 () Bool)

(assert (=> b!4604707 (= e!2872217 (getValueByKey!1335 (t!358264 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) key!3287))))

(declare-fun b!4604706 () Bool)

(assert (=> b!4604706 (= e!2872216 e!2872217)))

(declare-fun c!788840 () Bool)

(assert (=> b!4604706 (= c!788840 (and ((_ is Cons!51146) (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) (not (= (_1!29211 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) key!3287))))))

(declare-fun d!1450391 () Bool)

(declare-fun c!788839 () Bool)

(assert (=> d!1450391 (= c!788839 (and ((_ is Cons!51146) (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) (= (_1!29211 (h!57122 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))) key!3287)))))

(assert (=> d!1450391 (= (getValueByKey!1335 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287) e!2872216)))

(assert (= (and d!1450391 c!788839) b!4604705))

(assert (= (and d!1450391 (not c!788839)) b!4604706))

(assert (= (and b!4604706 c!788840) b!4604707))

(assert (= (and b!4604706 (not c!788840)) b!4604708))

(declare-fun m!5433905 () Bool)

(assert (=> b!4604707 m!5433905))

(assert (=> b!4604443 d!1450391))

(assert (=> b!4604348 d!1450351))

(assert (=> b!4604348 d!1450353))

(declare-fun d!1450393 () Bool)

(declare-fun lt!1762734 () Bool)

(assert (=> d!1450393 (= lt!1762734 (select (content!8676 (t!358265 (t!358265 (toList!4707 lm!1477)))) lt!1762467))))

(declare-fun e!2872218 () Bool)

(assert (=> d!1450393 (= lt!1762734 e!2872218)))

(declare-fun res!1926752 () Bool)

(assert (=> d!1450393 (=> (not res!1926752) (not e!2872218))))

(assert (=> d!1450393 (= res!1926752 ((_ is Cons!51147) (t!358265 (t!358265 (toList!4707 lm!1477)))))))

(assert (=> d!1450393 (= (contains!14127 (t!358265 (t!358265 (toList!4707 lm!1477))) lt!1762467) lt!1762734)))

(declare-fun b!4604709 () Bool)

(declare-fun e!2872219 () Bool)

(assert (=> b!4604709 (= e!2872218 e!2872219)))

(declare-fun res!1926751 () Bool)

(assert (=> b!4604709 (=> res!1926751 e!2872219)))

(assert (=> b!4604709 (= res!1926751 (= (h!57123 (t!358265 (t!358265 (toList!4707 lm!1477)))) lt!1762467))))

(declare-fun b!4604710 () Bool)

(assert (=> b!4604710 (= e!2872219 (contains!14127 (t!358265 (t!358265 (t!358265 (toList!4707 lm!1477)))) lt!1762467))))

(assert (= (and d!1450393 res!1926752) b!4604709))

(assert (= (and b!4604709 (not res!1926751)) b!4604710))

(declare-fun m!5433907 () Bool)

(assert (=> d!1450393 m!5433907))

(declare-fun m!5433909 () Bool)

(assert (=> d!1450393 m!5433909))

(declare-fun m!5433911 () Bool)

(assert (=> b!4604710 m!5433911))

(assert (=> b!4604459 d!1450393))

(assert (=> d!1450279 d!1450241))

(assert (=> d!1450279 d!1450261))

(declare-fun d!1450395 () Bool)

(assert (=> d!1450395 (not (contains!14129 (extractMap!1406 (toList!4707 lm!1477)) key!3287))))

(assert (=> d!1450395 true))

(declare-fun _$26!569 () Unit!108873)

(assert (=> d!1450395 (= (choose!30920 lm!1477 key!3287 hashF!1107) _$26!569)))

(declare-fun bs!1014179 () Bool)

(assert (= bs!1014179 d!1450395))

(assert (=> bs!1014179 m!5433471))

(assert (=> bs!1014179 m!5433471))

(assert (=> bs!1014179 m!5433473))

(assert (=> d!1450279 d!1450395))

(declare-fun d!1450419 () Bool)

(declare-fun res!1926763 () Bool)

(declare-fun e!2872234 () Bool)

(assert (=> d!1450419 (=> res!1926763 e!2872234)))

(assert (=> d!1450419 (= res!1926763 ((_ is Nil!51147) (toList!4707 lm!1477)))))

(assert (=> d!1450419 (= (forall!10646 (toList!4707 lm!1477) lambda!187229) e!2872234)))

(declare-fun b!4604729 () Bool)

(declare-fun e!2872235 () Bool)

(assert (=> b!4604729 (= e!2872234 e!2872235)))

(declare-fun res!1926764 () Bool)

(assert (=> b!4604729 (=> (not res!1926764) (not e!2872235))))

(assert (=> b!4604729 (= res!1926764 (dynLambda!21416 lambda!187229 (h!57123 (toList!4707 lm!1477))))))

(declare-fun b!4604730 () Bool)

(assert (=> b!4604730 (= e!2872235 (forall!10646 (t!358265 (toList!4707 lm!1477)) lambda!187229))))

(assert (= (and d!1450419 (not res!1926763)) b!4604729))

(assert (= (and b!4604729 res!1926764) b!4604730))

(declare-fun b_lambda!169863 () Bool)

(assert (=> (not b_lambda!169863) (not b!4604729)))

(declare-fun m!5433987 () Bool)

(assert (=> b!4604729 m!5433987))

(declare-fun m!5433989 () Bool)

(assert (=> b!4604730 m!5433989))

(assert (=> d!1450279 d!1450419))

(declare-fun b!4604734 () Bool)

(declare-fun e!2872236 () List!51270)

(assert (=> b!4604734 (= e!2872236 Nil!51146)))

(declare-fun b!4604731 () Bool)

(declare-fun e!2872237 () List!51270)

(assert (=> b!4604731 (= e!2872237 (t!358264 (t!358264 lt!1762463)))))

(declare-fun b!4604732 () Bool)

(assert (=> b!4604732 (= e!2872237 e!2872236)))

(declare-fun c!788845 () Bool)

(assert (=> b!4604732 (= c!788845 ((_ is Cons!51146) (t!358264 lt!1762463)))))

(declare-fun b!4604733 () Bool)

(assert (=> b!4604733 (= e!2872236 (Cons!51146 (h!57122 (t!358264 lt!1762463)) (removePairForKey!971 (t!358264 (t!358264 lt!1762463)) key!3287)))))

(declare-fun d!1450423 () Bool)

(declare-fun lt!1762742 () List!51270)

(assert (=> d!1450423 (not (containsKey!2206 lt!1762742 key!3287))))

(assert (=> d!1450423 (= lt!1762742 e!2872237)))

(declare-fun c!788846 () Bool)

(assert (=> d!1450423 (= c!788846 (and ((_ is Cons!51146) (t!358264 lt!1762463)) (= (_1!29211 (h!57122 (t!358264 lt!1762463))) key!3287)))))

(assert (=> d!1450423 (noDuplicateKeys!1346 (t!358264 lt!1762463))))

(assert (=> d!1450423 (= (removePairForKey!971 (t!358264 lt!1762463) key!3287) lt!1762742)))

(assert (= (and d!1450423 c!788846) b!4604731))

(assert (= (and d!1450423 (not c!788846)) b!4604732))

(assert (= (and b!4604732 c!788845) b!4604733))

(assert (= (and b!4604732 (not c!788845)) b!4604734))

(declare-fun m!5433991 () Bool)

(assert (=> b!4604733 m!5433991))

(declare-fun m!5433993 () Bool)

(assert (=> d!1450423 m!5433993))

(declare-fun m!5433995 () Bool)

(assert (=> d!1450423 m!5433995))

(assert (=> b!4604306 d!1450423))

(declare-fun d!1450425 () Bool)

(declare-fun res!1926771 () Bool)

(declare-fun e!2872244 () Bool)

(assert (=> d!1450425 (=> res!1926771 e!2872244)))

(assert (=> d!1450425 (= res!1926771 ((_ is Nil!51146) newBucket!178))))

(assert (=> d!1450425 (= (forall!10648 newBucket!178 lambda!187232) e!2872244)))

(declare-fun b!4604741 () Bool)

(declare-fun e!2872245 () Bool)

(assert (=> b!4604741 (= e!2872244 e!2872245)))

(declare-fun res!1926772 () Bool)

(assert (=> b!4604741 (=> (not res!1926772) (not e!2872245))))

(declare-fun dynLambda!21418 (Int tuple2!51834) Bool)

(assert (=> b!4604741 (= res!1926772 (dynLambda!21418 lambda!187232 (h!57122 newBucket!178)))))

(declare-fun b!4604742 () Bool)

(assert (=> b!4604742 (= e!2872245 (forall!10648 (t!358264 newBucket!178) lambda!187232))))

(assert (= (and d!1450425 (not res!1926771)) b!4604741))

(assert (= (and b!4604741 res!1926772) b!4604742))

(declare-fun b_lambda!169867 () Bool)

(assert (=> (not b_lambda!169867) (not b!4604741)))

(declare-fun m!5434001 () Bool)

(assert (=> b!4604741 m!5434001))

(declare-fun m!5434003 () Bool)

(assert (=> b!4604742 m!5434003))

(assert (=> d!1450281 d!1450425))

(declare-fun d!1450433 () Bool)

(declare-fun res!1926775 () Bool)

(declare-fun e!2872248 () Bool)

(assert (=> d!1450433 (=> res!1926775 e!2872248)))

(assert (=> d!1450433 (= res!1926775 (and ((_ is Cons!51146) (t!358264 newBucket!178)) (= (_1!29211 (h!57122 (t!358264 newBucket!178))) (_1!29211 (h!57122 newBucket!178)))))))

(assert (=> d!1450433 (= (containsKey!2206 (t!358264 newBucket!178) (_1!29211 (h!57122 newBucket!178))) e!2872248)))

(declare-fun b!4604745 () Bool)

(declare-fun e!2872249 () Bool)

(assert (=> b!4604745 (= e!2872248 e!2872249)))

(declare-fun res!1926776 () Bool)

(assert (=> b!4604745 (=> (not res!1926776) (not e!2872249))))

(assert (=> b!4604745 (= res!1926776 ((_ is Cons!51146) (t!358264 newBucket!178)))))

(declare-fun b!4604746 () Bool)

(assert (=> b!4604746 (= e!2872249 (containsKey!2206 (t!358264 (t!358264 newBucket!178)) (_1!29211 (h!57122 newBucket!178))))))

(assert (= (and d!1450433 (not res!1926775)) b!4604745))

(assert (= (and b!4604745 res!1926776) b!4604746))

(declare-fun m!5434009 () Bool)

(assert (=> b!4604746 m!5434009))

(assert (=> b!4604456 d!1450433))

(declare-fun d!1450437 () Bool)

(declare-fun res!1926791 () Bool)

(declare-fun e!2872267 () Bool)

(assert (=> d!1450437 (=> res!1926791 e!2872267)))

(assert (=> d!1450437 (= res!1926791 (and ((_ is Cons!51147) (toList!4707 lt!1762470)) (= (_1!29212 (h!57123 (toList!4707 lt!1762470))) hash!344)))))

(assert (=> d!1450437 (= (containsKey!2209 (toList!4707 lt!1762470) hash!344) e!2872267)))

(declare-fun b!4604767 () Bool)

(declare-fun e!2872268 () Bool)

(assert (=> b!4604767 (= e!2872267 e!2872268)))

(declare-fun res!1926792 () Bool)

(assert (=> b!4604767 (=> (not res!1926792) (not e!2872268))))

(assert (=> b!4604767 (= res!1926792 (and (or (not ((_ is Cons!51147) (toList!4707 lt!1762470))) (bvsle (_1!29212 (h!57123 (toList!4707 lt!1762470))) hash!344)) ((_ is Cons!51147) (toList!4707 lt!1762470)) (bvslt (_1!29212 (h!57123 (toList!4707 lt!1762470))) hash!344)))))

(declare-fun b!4604768 () Bool)

(assert (=> b!4604768 (= e!2872268 (containsKey!2209 (t!358265 (toList!4707 lt!1762470)) hash!344))))

(assert (= (and d!1450437 (not res!1926791)) b!4604767))

(assert (= (and b!4604767 res!1926792) b!4604768))

(declare-fun m!5434037 () Bool)

(assert (=> b!4604768 m!5434037))

(assert (=> d!1450273 d!1450437))

(declare-fun d!1450455 () Bool)

(declare-fun res!1926795 () Bool)

(declare-fun e!2872271 () Bool)

(assert (=> d!1450455 (=> res!1926795 e!2872271)))

(assert (=> d!1450455 (= res!1926795 (not ((_ is Cons!51146) (t!358264 newBucket!178))))))

(assert (=> d!1450455 (= (noDuplicateKeys!1346 (t!358264 newBucket!178)) e!2872271)))

(declare-fun b!4604771 () Bool)

(declare-fun e!2872272 () Bool)

(assert (=> b!4604771 (= e!2872271 e!2872272)))

(declare-fun res!1926796 () Bool)

(assert (=> b!4604771 (=> (not res!1926796) (not e!2872272))))

(assert (=> b!4604771 (= res!1926796 (not (containsKey!2206 (t!358264 (t!358264 newBucket!178)) (_1!29211 (h!57122 (t!358264 newBucket!178))))))))

(declare-fun b!4604772 () Bool)

(assert (=> b!4604772 (= e!2872272 (noDuplicateKeys!1346 (t!358264 (t!358264 newBucket!178))))))

(assert (= (and d!1450455 (not res!1926795)) b!4604771))

(assert (= (and b!4604771 res!1926796) b!4604772))

(declare-fun m!5434043 () Bool)

(assert (=> b!4604771 m!5434043))

(declare-fun m!5434045 () Bool)

(assert (=> b!4604772 m!5434045))

(assert (=> b!4604457 d!1450455))

(declare-fun d!1450459 () Bool)

(assert (=> d!1450459 (= (tail!7993 (toList!4707 lm!1477)) (t!358265 (toList!4707 lm!1477)))))

(assert (=> d!1450275 d!1450459))

(declare-fun d!1450461 () Bool)

(declare-fun res!1926799 () Bool)

(declare-fun e!2872276 () Bool)

(assert (=> d!1450461 (=> res!1926799 e!2872276)))

(assert (=> d!1450461 (= res!1926799 (not ((_ is Cons!51146) (_2!29212 (h!57123 (toList!4707 lm!1477))))))))

(assert (=> d!1450461 (= (noDuplicateKeys!1346 (_2!29212 (h!57123 (toList!4707 lm!1477)))) e!2872276)))

(declare-fun b!4604776 () Bool)

(declare-fun e!2872277 () Bool)

(assert (=> b!4604776 (= e!2872276 e!2872277)))

(declare-fun res!1926800 () Bool)

(assert (=> b!4604776 (=> (not res!1926800) (not e!2872277))))

(assert (=> b!4604776 (= res!1926800 (not (containsKey!2206 (t!358264 (_2!29212 (h!57123 (toList!4707 lm!1477)))) (_1!29211 (h!57122 (_2!29212 (h!57123 (toList!4707 lm!1477))))))))))

(declare-fun b!4604777 () Bool)

(assert (=> b!4604777 (= e!2872277 (noDuplicateKeys!1346 (t!358264 (_2!29212 (h!57123 (toList!4707 lm!1477))))))))

(assert (= (and d!1450461 (not res!1926799)) b!4604776))

(assert (= (and b!4604776 res!1926800) b!4604777))

(declare-fun m!5434051 () Bool)

(assert (=> b!4604776 m!5434051))

(declare-fun m!5434053 () Bool)

(assert (=> b!4604777 m!5434053))

(assert (=> bs!1014134 d!1450461))

(declare-fun d!1450463 () Bool)

(declare-fun res!1926801 () Bool)

(declare-fun e!2872280 () Bool)

(assert (=> d!1450463 (=> res!1926801 e!2872280)))

(assert (=> d!1450463 (= res!1926801 (and ((_ is Cons!51146) lt!1762503) (= (_1!29211 (h!57122 lt!1762503)) key!3287)))))

(assert (=> d!1450463 (= (containsKey!2206 lt!1762503 key!3287) e!2872280)))

(declare-fun b!4604780 () Bool)

(declare-fun e!2872281 () Bool)

(assert (=> b!4604780 (= e!2872280 e!2872281)))

(declare-fun res!1926802 () Bool)

(assert (=> b!4604780 (=> (not res!1926802) (not e!2872281))))

(assert (=> b!4604780 (= res!1926802 ((_ is Cons!51146) lt!1762503))))

(declare-fun b!4604781 () Bool)

(assert (=> b!4604781 (= e!2872281 (containsKey!2206 (t!358264 lt!1762503) key!3287))))

(assert (= (and d!1450463 (not res!1926801)) b!4604780))

(assert (= (and b!4604780 res!1926802) b!4604781))

(declare-fun m!5434055 () Bool)

(assert (=> b!4604781 m!5434055))

(assert (=> d!1450201 d!1450463))

(declare-fun d!1450465 () Bool)

(declare-fun res!1926803 () Bool)

(declare-fun e!2872282 () Bool)

(assert (=> d!1450465 (=> res!1926803 e!2872282)))

(assert (=> d!1450465 (= res!1926803 (not ((_ is Cons!51146) lt!1762463)))))

(assert (=> d!1450465 (= (noDuplicateKeys!1346 lt!1762463) e!2872282)))

(declare-fun b!4604782 () Bool)

(declare-fun e!2872283 () Bool)

(assert (=> b!4604782 (= e!2872282 e!2872283)))

(declare-fun res!1926804 () Bool)

(assert (=> b!4604782 (=> (not res!1926804) (not e!2872283))))

(assert (=> b!4604782 (= res!1926804 (not (containsKey!2206 (t!358264 lt!1762463) (_1!29211 (h!57122 lt!1762463)))))))

(declare-fun b!4604783 () Bool)

(assert (=> b!4604783 (= e!2872283 (noDuplicateKeys!1346 (t!358264 lt!1762463)))))

(assert (= (and d!1450465 (not res!1926803)) b!4604782))

(assert (= (and b!4604782 res!1926804) b!4604783))

(declare-fun m!5434057 () Bool)

(assert (=> b!4604782 m!5434057))

(assert (=> b!4604783 m!5433995))

(assert (=> d!1450201 d!1450465))

(declare-fun b!4604786 () Bool)

(declare-fun e!2872285 () Option!11414)

(assert (=> b!4604786 (= e!2872285 (getValueByKey!1334 (t!358265 (toList!4707 lm!1477)) hash!344))))

(declare-fun b!4604784 () Bool)

(declare-fun e!2872284 () Option!11414)

(assert (=> b!4604784 (= e!2872284 (Some!11413 (_2!29212 (h!57123 (toList!4707 lm!1477)))))))

(declare-fun d!1450469 () Bool)

(declare-fun c!788850 () Bool)

(assert (=> d!1450469 (= c!788850 (and ((_ is Cons!51147) (toList!4707 lm!1477)) (= (_1!29212 (h!57123 (toList!4707 lm!1477))) hash!344)))))

(assert (=> d!1450469 (= (getValueByKey!1334 (toList!4707 lm!1477) hash!344) e!2872284)))

(declare-fun b!4604785 () Bool)

(assert (=> b!4604785 (= e!2872284 e!2872285)))

(declare-fun c!788851 () Bool)

(assert (=> b!4604785 (= c!788851 (and ((_ is Cons!51147) (toList!4707 lm!1477)) (not (= (_1!29212 (h!57123 (toList!4707 lm!1477))) hash!344))))))

(declare-fun b!4604787 () Bool)

(assert (=> b!4604787 (= e!2872285 None!11413)))

(assert (= (and d!1450469 c!788850) b!4604784))

(assert (= (and d!1450469 (not c!788850)) b!4604785))

(assert (= (and b!4604785 c!788851) b!4604786))

(assert (= (and b!4604785 (not c!788851)) b!4604787))

(declare-fun m!5434063 () Bool)

(assert (=> b!4604786 m!5434063))

(assert (=> b!4604379 d!1450469))

(assert (=> b!4604312 d!1450217))

(declare-fun d!1450477 () Bool)

(declare-fun res!1926805 () Bool)

(declare-fun e!2872286 () Bool)

(assert (=> d!1450477 (=> res!1926805 e!2872286)))

(assert (=> d!1450477 (= res!1926805 ((_ is Nil!51147) (t!358265 (toList!4707 lm!1477))))))

(assert (=> d!1450477 (= (forall!10646 (t!358265 (toList!4707 lm!1477)) lambda!187200) e!2872286)))

(declare-fun b!4604788 () Bool)

(declare-fun e!2872287 () Bool)

(assert (=> b!4604788 (= e!2872286 e!2872287)))

(declare-fun res!1926806 () Bool)

(assert (=> b!4604788 (=> (not res!1926806) (not e!2872287))))

(assert (=> b!4604788 (= res!1926806 (dynLambda!21416 lambda!187200 (h!57123 (t!358265 (toList!4707 lm!1477)))))))

(declare-fun b!4604789 () Bool)

(assert (=> b!4604789 (= e!2872287 (forall!10646 (t!358265 (t!358265 (toList!4707 lm!1477))) lambda!187200))))

(assert (= (and d!1450477 (not res!1926805)) b!4604788))

(assert (= (and b!4604788 res!1926806) b!4604789))

(declare-fun b_lambda!169895 () Bool)

(assert (=> (not b_lambda!169895) (not b!4604788)))

(declare-fun m!5434069 () Bool)

(assert (=> b!4604788 m!5434069))

(declare-fun m!5434072 () Bool)

(assert (=> b!4604789 m!5434072))

(assert (=> b!4604451 d!1450477))

(declare-fun bs!1014190 () Bool)

(declare-fun b!4604801 () Bool)

(assert (= bs!1014190 (and b!4604801 d!1450281)))

(declare-fun lambda!187330 () Int)

(assert (=> bs!1014190 (not (= lambda!187330 lambda!187232))))

(assert (=> b!4604801 true))

(declare-fun bs!1014191 () Bool)

(declare-fun b!4604803 () Bool)

(assert (= bs!1014191 (and b!4604803 d!1450281)))

(declare-fun lambda!187331 () Int)

(assert (=> bs!1014191 (not (= lambda!187331 lambda!187232))))

(declare-fun bs!1014192 () Bool)

(assert (= bs!1014192 (and b!4604803 b!4604801)))

(assert (=> bs!1014192 (= lambda!187331 lambda!187330)))

(assert (=> b!4604803 true))

(declare-fun lambda!187332 () Int)

(assert (=> bs!1014191 (not (= lambda!187332 lambda!187232))))

(declare-fun lt!1762795 () ListMap!3969)

(assert (=> bs!1014192 (= (= lt!1762795 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) (= lambda!187332 lambda!187330))))

(assert (=> b!4604803 (= (= lt!1762795 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) (= lambda!187332 lambda!187331))))

(assert (=> b!4604803 true))

(declare-fun bs!1014193 () Bool)

(declare-fun d!1450485 () Bool)

(assert (= bs!1014193 (and d!1450485 d!1450281)))

(declare-fun lambda!187333 () Int)

(assert (=> bs!1014193 (not (= lambda!187333 lambda!187232))))

(declare-fun bs!1014194 () Bool)

(assert (= bs!1014194 (and d!1450485 b!4604801)))

(declare-fun lt!1762792 () ListMap!3969)

(assert (=> bs!1014194 (= (= lt!1762792 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) (= lambda!187333 lambda!187330))))

(declare-fun bs!1014195 () Bool)

(assert (= bs!1014195 (and d!1450485 b!4604803)))

(assert (=> bs!1014195 (= (= lt!1762792 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) (= lambda!187333 lambda!187331))))

(assert (=> bs!1014195 (= (= lt!1762792 lt!1762795) (= lambda!187333 lambda!187332))))

(assert (=> d!1450485 true))

(declare-fun e!2872294 () Bool)

(assert (=> d!1450485 e!2872294))

(declare-fun res!1926813 () Bool)

(assert (=> d!1450485 (=> (not res!1926813) (not e!2872294))))

(assert (=> d!1450485 (= res!1926813 (forall!10648 (_2!29212 (h!57123 (toList!4707 lm!1477))) lambda!187333))))

(declare-fun e!2872296 () ListMap!3969)

(assert (=> d!1450485 (= lt!1762792 e!2872296)))

(declare-fun c!788854 () Bool)

(assert (=> d!1450485 (= c!788854 ((_ is Nil!51146) (_2!29212 (h!57123 (toList!4707 lm!1477)))))))

(assert (=> d!1450485 (noDuplicateKeys!1346 (_2!29212 (h!57123 (toList!4707 lm!1477))))))

(assert (=> d!1450485 (= (addToMapMapFromBucket!828 (_2!29212 (h!57123 (toList!4707 lm!1477))) (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) lt!1762792)))

(declare-fun call!321284 () Bool)

(declare-fun bm!321278 () Bool)

(assert (=> bm!321278 (= call!321284 (forall!10648 (ite c!788854 (toList!4708 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) (_2!29212 (h!57123 (toList!4707 lm!1477)))) (ite c!788854 lambda!187330 lambda!187332)))))

(declare-fun bm!321279 () Bool)

(declare-fun call!321283 () Unit!108873)

(declare-fun lemmaContainsAllItsOwnKeys!444 (ListMap!3969) Unit!108873)

(assert (=> bm!321279 (= call!321283 (lemmaContainsAllItsOwnKeys!444 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))))))

(declare-fun b!4604800 () Bool)

(declare-fun e!2872295 () Bool)

(assert (=> b!4604800 (= e!2872295 (forall!10648 (toList!4708 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) lambda!187332))))

(assert (=> b!4604801 (= e!2872296 (extractMap!1406 (t!358265 (toList!4707 lm!1477))))))

(declare-fun lt!1762803 () Unit!108873)

(assert (=> b!4604801 (= lt!1762803 call!321283)))

(declare-fun call!321285 () Bool)

(assert (=> b!4604801 call!321285))

(declare-fun lt!1762802 () Unit!108873)

(assert (=> b!4604801 (= lt!1762802 lt!1762803)))

(assert (=> b!4604801 call!321284))

(declare-fun lt!1762789 () Unit!108873)

(declare-fun Unit!108905 () Unit!108873)

(assert (=> b!4604801 (= lt!1762789 Unit!108905)))

(declare-fun b!4604802 () Bool)

(assert (=> b!4604802 (= e!2872294 (invariantList!1136 (toList!4708 lt!1762792)))))

(declare-fun bm!321280 () Bool)

(assert (=> bm!321280 (= call!321285 (forall!10648 (ite c!788854 (toList!4708 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) (t!358264 (_2!29212 (h!57123 (toList!4707 lm!1477))))) (ite c!788854 lambda!187330 lambda!187332)))))

(assert (=> b!4604803 (= e!2872296 lt!1762795)))

(declare-fun lt!1762793 () ListMap!3969)

(declare-fun +!1770 (ListMap!3969 tuple2!51834) ListMap!3969)

(assert (=> b!4604803 (= lt!1762793 (+!1770 (extractMap!1406 (t!358265 (toList!4707 lm!1477))) (h!57122 (_2!29212 (h!57123 (toList!4707 lm!1477))))))))

(assert (=> b!4604803 (= lt!1762795 (addToMapMapFromBucket!828 (t!358264 (_2!29212 (h!57123 (toList!4707 lm!1477)))) (+!1770 (extractMap!1406 (t!358265 (toList!4707 lm!1477))) (h!57122 (_2!29212 (h!57123 (toList!4707 lm!1477)))))))))

(declare-fun lt!1762801 () Unit!108873)

(assert (=> b!4604803 (= lt!1762801 call!321283)))

(assert (=> b!4604803 (forall!10648 (toList!4708 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) lambda!187331)))

(declare-fun lt!1762787 () Unit!108873)

(assert (=> b!4604803 (= lt!1762787 lt!1762801)))

(assert (=> b!4604803 (forall!10648 (toList!4708 lt!1762793) lambda!187332)))

(declare-fun lt!1762798 () Unit!108873)

(declare-fun Unit!108906 () Unit!108873)

(assert (=> b!4604803 (= lt!1762798 Unit!108906)))

(assert (=> b!4604803 call!321285))

(declare-fun lt!1762788 () Unit!108873)

(declare-fun Unit!108907 () Unit!108873)

(assert (=> b!4604803 (= lt!1762788 Unit!108907)))

(declare-fun lt!1762806 () Unit!108873)

(declare-fun Unit!108908 () Unit!108873)

(assert (=> b!4604803 (= lt!1762806 Unit!108908)))

(declare-fun lt!1762799 () Unit!108873)

(declare-fun forallContained!2899 (List!51270 Int tuple2!51834) Unit!108873)

(assert (=> b!4604803 (= lt!1762799 (forallContained!2899 (toList!4708 lt!1762793) lambda!187332 (h!57122 (_2!29212 (h!57123 (toList!4707 lm!1477))))))))

(assert (=> b!4604803 (contains!14129 lt!1762793 (_1!29211 (h!57122 (_2!29212 (h!57123 (toList!4707 lm!1477))))))))

(declare-fun lt!1762796 () Unit!108873)

(declare-fun Unit!108909 () Unit!108873)

(assert (=> b!4604803 (= lt!1762796 Unit!108909)))

(assert (=> b!4604803 (contains!14129 lt!1762795 (_1!29211 (h!57122 (_2!29212 (h!57123 (toList!4707 lm!1477))))))))

(declare-fun lt!1762790 () Unit!108873)

(declare-fun Unit!108910 () Unit!108873)

(assert (=> b!4604803 (= lt!1762790 Unit!108910)))

(assert (=> b!4604803 (forall!10648 (_2!29212 (h!57123 (toList!4707 lm!1477))) lambda!187332)))

(declare-fun lt!1762797 () Unit!108873)

(declare-fun Unit!108911 () Unit!108873)

(assert (=> b!4604803 (= lt!1762797 Unit!108911)))

(assert (=> b!4604803 (forall!10648 (toList!4708 lt!1762793) lambda!187332)))

(declare-fun lt!1762786 () Unit!108873)

(declare-fun Unit!108912 () Unit!108873)

(assert (=> b!4604803 (= lt!1762786 Unit!108912)))

(declare-fun lt!1762794 () Unit!108873)

(declare-fun Unit!108913 () Unit!108873)

(assert (=> b!4604803 (= lt!1762794 Unit!108913)))

(declare-fun lt!1762805 () Unit!108873)

(declare-fun addForallContainsKeyThenBeforeAdding!444 (ListMap!3969 ListMap!3969 K!12515 V!12761) Unit!108873)

(assert (=> b!4604803 (= lt!1762805 (addForallContainsKeyThenBeforeAdding!444 (extractMap!1406 (t!358265 (toList!4707 lm!1477))) lt!1762795 (_1!29211 (h!57122 (_2!29212 (h!57123 (toList!4707 lm!1477))))) (_2!29211 (h!57122 (_2!29212 (h!57123 (toList!4707 lm!1477)))))))))

(assert (=> b!4604803 (forall!10648 (toList!4708 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) lambda!187332)))

(declare-fun lt!1762791 () Unit!108873)

(assert (=> b!4604803 (= lt!1762791 lt!1762805)))

(assert (=> b!4604803 (forall!10648 (toList!4708 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) lambda!187332)))

(declare-fun lt!1762800 () Unit!108873)

(declare-fun Unit!108914 () Unit!108873)

(assert (=> b!4604803 (= lt!1762800 Unit!108914)))

(declare-fun res!1926815 () Bool)

(assert (=> b!4604803 (= res!1926815 call!321284)))

(assert (=> b!4604803 (=> (not res!1926815) (not e!2872295))))

(assert (=> b!4604803 e!2872295))

(declare-fun lt!1762804 () Unit!108873)

(declare-fun Unit!108915 () Unit!108873)

(assert (=> b!4604803 (= lt!1762804 Unit!108915)))

(declare-fun b!4604804 () Bool)

(declare-fun res!1926814 () Bool)

(assert (=> b!4604804 (=> (not res!1926814) (not e!2872294))))

(assert (=> b!4604804 (= res!1926814 (forall!10648 (toList!4708 (extractMap!1406 (t!358265 (toList!4707 lm!1477)))) lambda!187333))))

(assert (= (and d!1450485 c!788854) b!4604801))

(assert (= (and d!1450485 (not c!788854)) b!4604803))

(assert (= (and b!4604803 res!1926815) b!4604800))

(assert (= (or b!4604801 b!4604803) bm!321278))

(assert (= (or b!4604801 b!4604803) bm!321280))

(assert (= (or b!4604801 b!4604803) bm!321279))

(assert (= (and d!1450485 res!1926813) b!4604804))

(assert (= (and b!4604804 res!1926814) b!4604802))

(declare-fun m!5434075 () Bool)

(assert (=> b!4604802 m!5434075))

(declare-fun m!5434077 () Bool)

(assert (=> bm!321278 m!5434077))

(declare-fun m!5434079 () Bool)

(assert (=> b!4604800 m!5434079))

(assert (=> bm!321279 m!5433665))

(declare-fun m!5434081 () Bool)

(assert (=> bm!321279 m!5434081))

(declare-fun m!5434083 () Bool)

(assert (=> bm!321280 m!5434083))

(declare-fun m!5434085 () Bool)

(assert (=> b!4604804 m!5434085))

(declare-fun m!5434087 () Bool)

(assert (=> d!1450485 m!5434087))

(assert (=> d!1450485 m!5433707))

(assert (=> b!4604803 m!5433665))

(declare-fun m!5434089 () Bool)

(assert (=> b!4604803 m!5434089))

(assert (=> b!4604803 m!5433665))

(declare-fun m!5434091 () Bool)

(assert (=> b!4604803 m!5434091))

(assert (=> b!4604803 m!5434079))

(declare-fun m!5434093 () Bool)

(assert (=> b!4604803 m!5434093))

(declare-fun m!5434095 () Bool)

(assert (=> b!4604803 m!5434095))

(declare-fun m!5434097 () Bool)

(assert (=> b!4604803 m!5434097))

(assert (=> b!4604803 m!5434089))

(declare-fun m!5434099 () Bool)

(assert (=> b!4604803 m!5434099))

(declare-fun m!5434101 () Bool)

(assert (=> b!4604803 m!5434101))

(declare-fun m!5434103 () Bool)

(assert (=> b!4604803 m!5434103))

(assert (=> b!4604803 m!5434079))

(declare-fun m!5434105 () Bool)

(assert (=> b!4604803 m!5434105))

(assert (=> b!4604803 m!5434105))

(assert (=> b!4604448 d!1450485))

(declare-fun bs!1014196 () Bool)

(declare-fun d!1450489 () Bool)

(assert (= bs!1014196 (and d!1450489 d!1450279)))

(declare-fun lambda!187334 () Int)

(assert (=> bs!1014196 (= lambda!187334 lambda!187229)))

(declare-fun bs!1014197 () Bool)

(assert (= bs!1014197 (and d!1450489 start!459864)))

(assert (=> bs!1014197 (= lambda!187334 lambda!187200)))

(declare-fun bs!1014198 () Bool)

(assert (= bs!1014198 (and d!1450489 d!1450187)))

(assert (=> bs!1014198 (not (= lambda!187334 lambda!187203))))

(declare-fun bs!1014199 () Bool)

(assert (= bs!1014199 (and d!1450489 d!1450189)))

(assert (=> bs!1014199 (= lambda!187334 lambda!187209)))

(declare-fun bs!1014200 () Bool)

(assert (= bs!1014200 (and d!1450489 d!1450261)))

(assert (=> bs!1014200 (= lambda!187334 lambda!187225)))

(declare-fun bs!1014201 () Bool)

(assert (= bs!1014201 (and d!1450489 d!1450267)))

(assert (=> bs!1014201 (not (= lambda!187334 lambda!187226))))

(declare-fun lt!1762807 () ListMap!3969)

(assert (=> d!1450489 (invariantList!1136 (toList!4708 lt!1762807))))

(declare-fun e!2872297 () ListMap!3969)

(assert (=> d!1450489 (= lt!1762807 e!2872297)))

(declare-fun c!788855 () Bool)

(assert (=> d!1450489 (= c!788855 ((_ is Cons!51147) (t!358265 (toList!4707 lm!1477))))))

(assert (=> d!1450489 (forall!10646 (t!358265 (toList!4707 lm!1477)) lambda!187334)))

(assert (=> d!1450489 (= (extractMap!1406 (t!358265 (toList!4707 lm!1477))) lt!1762807)))

(declare-fun b!4604807 () Bool)

(assert (=> b!4604807 (= e!2872297 (addToMapMapFromBucket!828 (_2!29212 (h!57123 (t!358265 (toList!4707 lm!1477)))) (extractMap!1406 (t!358265 (t!358265 (toList!4707 lm!1477))))))))

(declare-fun b!4604808 () Bool)

(assert (=> b!4604808 (= e!2872297 (ListMap!3970 Nil!51146))))

(assert (= (and d!1450489 c!788855) b!4604807))

(assert (= (and d!1450489 (not c!788855)) b!4604808))

(declare-fun m!5434107 () Bool)

(assert (=> d!1450489 m!5434107))

(declare-fun m!5434109 () Bool)

(assert (=> d!1450489 m!5434109))

(declare-fun m!5434111 () Bool)

(assert (=> b!4604807 m!5434111))

(assert (=> b!4604807 m!5434111))

(declare-fun m!5434113 () Bool)

(assert (=> b!4604807 m!5434113))

(assert (=> b!4604448 d!1450489))

(declare-fun d!1450491 () Bool)

(declare-fun lt!1762808 () Bool)

(assert (=> d!1450491 (= lt!1762808 (select (content!8676 (toList!4707 lm!1477)) (tuple2!51837 hash!344 lt!1762463)))))

(declare-fun e!2872298 () Bool)

(assert (=> d!1450491 (= lt!1762808 e!2872298)))

(declare-fun res!1926817 () Bool)

(assert (=> d!1450491 (=> (not res!1926817) (not e!2872298))))

(assert (=> d!1450491 (= res!1926817 ((_ is Cons!51147) (toList!4707 lm!1477)))))

(assert (=> d!1450491 (= (contains!14127 (toList!4707 lm!1477) (tuple2!51837 hash!344 lt!1762463)) lt!1762808)))

(declare-fun b!4604809 () Bool)

(declare-fun e!2872299 () Bool)

(assert (=> b!4604809 (= e!2872298 e!2872299)))

(declare-fun res!1926816 () Bool)

(assert (=> b!4604809 (=> res!1926816 e!2872299)))

(assert (=> b!4604809 (= res!1926816 (= (h!57123 (toList!4707 lm!1477)) (tuple2!51837 hash!344 lt!1762463)))))

(declare-fun b!4604810 () Bool)

(assert (=> b!4604810 (= e!2872299 (contains!14127 (t!358265 (toList!4707 lm!1477)) (tuple2!51837 hash!344 lt!1762463)))))

(assert (= (and d!1450491 res!1926817) b!4604809))

(assert (= (and b!4604809 (not res!1926816)) b!4604810))

(assert (=> d!1450491 m!5433575))

(declare-fun m!5434115 () Bool)

(assert (=> d!1450491 m!5434115))

(declare-fun m!5434117 () Bool)

(assert (=> b!4604810 m!5434117))

(assert (=> d!1450221 d!1450491))

(declare-fun d!1450493 () Bool)

(assert (=> d!1450493 (contains!14127 (toList!4707 lm!1477) (tuple2!51837 hash!344 lt!1762463))))

(assert (=> d!1450493 true))

(declare-fun _$14!1500 () Unit!108873)

(assert (=> d!1450493 (= (choose!30919 (toList!4707 lm!1477) hash!344 lt!1762463) _$14!1500)))

(declare-fun bs!1014202 () Bool)

(assert (= bs!1014202 d!1450493))

(assert (=> bs!1014202 m!5433597))

(assert (=> d!1450221 d!1450493))

(declare-fun d!1450495 () Bool)

(declare-fun res!1926822 () Bool)

(declare-fun e!2872304 () Bool)

(assert (=> d!1450495 (=> res!1926822 e!2872304)))

(assert (=> d!1450495 (= res!1926822 (or ((_ is Nil!51147) (toList!4707 lm!1477)) ((_ is Nil!51147) (t!358265 (toList!4707 lm!1477)))))))

(assert (=> d!1450495 (= (isStrictlySorted!552 (toList!4707 lm!1477)) e!2872304)))

(declare-fun b!4604815 () Bool)

(declare-fun e!2872305 () Bool)

(assert (=> b!4604815 (= e!2872304 e!2872305)))

(declare-fun res!1926823 () Bool)

(assert (=> b!4604815 (=> (not res!1926823) (not e!2872305))))

(assert (=> b!4604815 (= res!1926823 (bvslt (_1!29212 (h!57123 (toList!4707 lm!1477))) (_1!29212 (h!57123 (t!358265 (toList!4707 lm!1477))))))))

(declare-fun b!4604816 () Bool)

(assert (=> b!4604816 (= e!2872305 (isStrictlySorted!552 (t!358265 (toList!4707 lm!1477))))))

(assert (= (and d!1450495 (not res!1926822)) b!4604815))

(assert (= (and b!4604815 res!1926823) b!4604816))

(declare-fun m!5434119 () Bool)

(assert (=> b!4604816 m!5434119))

(assert (=> d!1450221 d!1450495))

(declare-fun d!1450497 () Bool)

(assert (=> d!1450497 (isDefined!8683 (getValueByKey!1335 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(declare-fun lt!1762811 () Unit!108873)

(declare-fun choose!30929 (List!51270 K!12515) Unit!108873)

(assert (=> d!1450497 (= lt!1762811 (choose!30929 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(assert (=> d!1450497 (invariantList!1136 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))))

(assert (=> d!1450497 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1239 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287) lt!1762811)))

(declare-fun bs!1014203 () Bool)

(assert (= bs!1014203 d!1450497))

(assert (=> bs!1014203 m!5433649))

(assert (=> bs!1014203 m!5433649))

(assert (=> bs!1014203 m!5433651))

(declare-fun m!5434121 () Bool)

(assert (=> bs!1014203 m!5434121))

(assert (=> bs!1014203 m!5433815))

(assert (=> b!4604436 d!1450497))

(assert (=> b!4604436 d!1450389))

(assert (=> b!4604436 d!1450391))

(declare-fun d!1450499 () Bool)

(assert (=> d!1450499 (contains!14131 (getKeysList!585 (toList!4708 (extractMap!1406 (toList!4707 lm!1477)))) key!3287)))

(declare-fun lt!1762814 () Unit!108873)

(declare-fun choose!30930 (List!51270 K!12515) Unit!108873)

(assert (=> d!1450499 (= lt!1762814 (choose!30930 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287))))

(assert (=> d!1450499 (invariantList!1136 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))))))

(assert (=> d!1450499 (= (lemmaInListThenGetKeysListContains!581 (toList!4708 (extractMap!1406 (toList!4707 lm!1477))) key!3287) lt!1762814)))

(declare-fun bs!1014204 () Bool)

(assert (= bs!1014204 d!1450499))

(assert (=> bs!1014204 m!5433645))

(assert (=> bs!1014204 m!5433645))

(declare-fun m!5434123 () Bool)

(assert (=> bs!1014204 m!5434123))

(declare-fun m!5434125 () Bool)

(assert (=> bs!1014204 m!5434125))

(assert (=> bs!1014204 m!5433815))

(assert (=> b!4604436 d!1450499))

(declare-fun d!1450501 () Bool)

(declare-fun lt!1762815 () Bool)

(assert (=> d!1450501 (= lt!1762815 (select (content!8678 e!2872049) key!3287))))

(declare-fun e!2872307 () Bool)

(assert (=> d!1450501 (= lt!1762815 e!2872307)))

(declare-fun res!1926825 () Bool)

(assert (=> d!1450501 (=> (not res!1926825) (not e!2872307))))

(assert (=> d!1450501 (= res!1926825 ((_ is Cons!51149) e!2872049))))

(assert (=> d!1450501 (= (contains!14131 e!2872049 key!3287) lt!1762815)))

(declare-fun b!4604817 () Bool)

(declare-fun e!2872306 () Bool)

(assert (=> b!4604817 (= e!2872307 e!2872306)))

(declare-fun res!1926824 () Bool)

(assert (=> b!4604817 (=> res!1926824 e!2872306)))

(assert (=> b!4604817 (= res!1926824 (= (h!57127 e!2872049) key!3287))))

(declare-fun b!4604818 () Bool)

(assert (=> b!4604818 (= e!2872306 (contains!14131 (t!358267 e!2872049) key!3287))))

(assert (= (and d!1450501 res!1926825) b!4604817))

(assert (= (and b!4604817 (not res!1926824)) b!4604818))

(declare-fun m!5434127 () Bool)

(assert (=> d!1450501 m!5434127))

(declare-fun m!5434129 () Bool)

(assert (=> d!1450501 m!5434129))

(declare-fun m!5434131 () Bool)

(assert (=> b!4604818 m!5434131))

(assert (=> bm!321262 d!1450501))

(declare-fun d!1450503 () Bool)

(assert (=> d!1450503 (= (get!16913 (getValueByKey!1334 (toList!4707 lm!1477) hash!344)) (v!45431 (getValueByKey!1334 (toList!4707 lm!1477) hash!344)))))

(assert (=> d!1450197 d!1450503))

(assert (=> d!1450197 d!1450469))

(declare-fun d!1450505 () Bool)

(declare-fun res!1926826 () Bool)

(declare-fun e!2872308 () Bool)

(assert (=> d!1450505 (=> res!1926826 e!2872308)))

(assert (=> d!1450505 (= res!1926826 (not ((_ is Cons!51146) (_2!29212 (h!57123 (toList!4707 lt!1762470))))))))

(assert (=> d!1450505 (= (noDuplicateKeys!1346 (_2!29212 (h!57123 (toList!4707 lt!1762470)))) e!2872308)))

(declare-fun b!4604819 () Bool)

(declare-fun e!2872309 () Bool)

(assert (=> b!4604819 (= e!2872308 e!2872309)))

(declare-fun res!1926827 () Bool)

(assert (=> b!4604819 (=> (not res!1926827) (not e!2872309))))

(assert (=> b!4604819 (= res!1926827 (not (containsKey!2206 (t!358264 (_2!29212 (h!57123 (toList!4707 lt!1762470)))) (_1!29211 (h!57122 (_2!29212 (h!57123 (toList!4707 lt!1762470))))))))))

(declare-fun b!4604820 () Bool)

(assert (=> b!4604820 (= e!2872309 (noDuplicateKeys!1346 (t!358264 (_2!29212 (h!57123 (toList!4707 lt!1762470))))))))

(assert (= (and d!1450505 (not res!1926826)) b!4604819))

(assert (= (and b!4604819 res!1926827) b!4604820))

(declare-fun m!5434133 () Bool)

(assert (=> b!4604819 m!5434133))

(declare-fun m!5434135 () Bool)

(assert (=> b!4604820 m!5434135))

(assert (=> bs!1014135 d!1450505))

(declare-fun d!1450507 () Bool)

(declare-fun res!1926828 () Bool)

(declare-fun e!2872310 () Bool)

(assert (=> d!1450507 (=> res!1926828 e!2872310)))

(assert (=> d!1450507 (= res!1926828 (and ((_ is Cons!51147) (toList!4707 lm!1477)) (= (_1!29212 (h!57123 (toList!4707 lm!1477))) lt!1762465)))))

(assert (=> d!1450507 (= (containsKey!2209 (toList!4707 lm!1477) lt!1762465) e!2872310)))

(declare-fun b!4604821 () Bool)

(declare-fun e!2872311 () Bool)

(assert (=> b!4604821 (= e!2872310 e!2872311)))

(declare-fun res!1926829 () Bool)

(assert (=> b!4604821 (=> (not res!1926829) (not e!2872311))))

(assert (=> b!4604821 (= res!1926829 (and (or (not ((_ is Cons!51147) (toList!4707 lm!1477))) (bvsle (_1!29212 (h!57123 (toList!4707 lm!1477))) lt!1762465)) ((_ is Cons!51147) (toList!4707 lm!1477)) (bvslt (_1!29212 (h!57123 (toList!4707 lm!1477))) lt!1762465)))))

(declare-fun b!4604822 () Bool)

(assert (=> b!4604822 (= e!2872311 (containsKey!2209 (t!358265 (toList!4707 lm!1477)) lt!1762465))))

(assert (= (and d!1450507 (not res!1926828)) b!4604821))

(assert (= (and b!4604821 res!1926829) b!4604822))

(declare-fun m!5434137 () Bool)

(assert (=> b!4604822 m!5434137))

(assert (=> d!1450213 d!1450507))

(assert (=> d!1450265 d!1450495))

(declare-fun d!1450509 () Bool)

(declare-fun c!788858 () Bool)

(assert (=> d!1450509 (= c!788858 ((_ is Nil!51147) (t!358265 (toList!4707 lm!1477))))))

(declare-fun e!2872314 () (InoxSet tuple2!51836))

(assert (=> d!1450509 (= (content!8676 (t!358265 (toList!4707 lm!1477))) e!2872314)))

(declare-fun b!4604827 () Bool)

(assert (=> b!4604827 (= e!2872314 ((as const (Array tuple2!51836 Bool)) false))))

(declare-fun b!4604828 () Bool)

(assert (=> b!4604828 (= e!2872314 ((_ map or) (store ((as const (Array tuple2!51836 Bool)) false) (h!57123 (t!358265 (toList!4707 lm!1477))) true) (content!8676 (t!358265 (t!358265 (toList!4707 lm!1477))))))))

(assert (= (and d!1450509 c!788858) b!4604827))

(assert (= (and d!1450509 (not c!788858)) b!4604828))

(declare-fun m!5434139 () Bool)

(assert (=> b!4604828 m!5434139))

(assert (=> b!4604828 m!5433907))

(assert (=> d!1450271 d!1450509))

(assert (=> b!4604437 d!1450363))

(assert (=> b!4604437 d!1450365))

(declare-fun d!1450511 () Bool)

(declare-fun c!788859 () Bool)

(assert (=> d!1450511 (= c!788859 ((_ is Nil!51147) (toList!4707 lm!1477)))))

(declare-fun e!2872315 () (InoxSet tuple2!51836))

(assert (=> d!1450511 (= (content!8676 (toList!4707 lm!1477)) e!2872315)))

(declare-fun b!4604829 () Bool)

(assert (=> b!4604829 (= e!2872315 ((as const (Array tuple2!51836 Bool)) false))))

(declare-fun b!4604830 () Bool)

(assert (=> b!4604830 (= e!2872315 ((_ map or) (store ((as const (Array tuple2!51836 Bool)) false) (h!57123 (toList!4707 lm!1477)) true) (content!8676 (t!358265 (toList!4707 lm!1477)))))))

(assert (= (and d!1450511 c!788859) b!4604829))

(assert (= (and d!1450511 (not c!788859)) b!4604830))

(declare-fun m!5434141 () Bool)

(assert (=> b!4604830 m!5434141))

(assert (=> b!4604830 m!5433679))

(assert (=> d!1450217 d!1450511))

(declare-fun d!1450513 () Bool)

(declare-fun e!2872316 () Bool)

(assert (=> d!1450513 e!2872316))

(declare-fun res!1926830 () Bool)

(assert (=> d!1450513 (=> res!1926830 e!2872316)))

(declare-fun lt!1762818 () Bool)

(assert (=> d!1450513 (= res!1926830 (not lt!1762818))))

(declare-fun lt!1762816 () Bool)

(assert (=> d!1450513 (= lt!1762818 lt!1762816)))

(declare-fun lt!1762819 () Unit!108873)

(declare-fun e!2872317 () Unit!108873)

(assert (=> d!1450513 (= lt!1762819 e!2872317)))

(declare-fun c!788860 () Bool)

(assert (=> d!1450513 (= c!788860 lt!1762816)))

(assert (=> d!1450513 (= lt!1762816 (containsKey!2209 (toList!4707 lm!1477) (hash!3269 hashF!1107 key!3287)))))

(assert (=> d!1450513 (= (contains!14128 lm!1477 (hash!3269 hashF!1107 key!3287)) lt!1762818)))

(declare-fun b!4604831 () Bool)

(declare-fun lt!1762817 () Unit!108873)

(assert (=> b!4604831 (= e!2872317 lt!1762817)))

(assert (=> b!4604831 (= lt!1762817 (lemmaContainsKeyImpliesGetValueByKeyDefined!1238 (toList!4707 lm!1477) (hash!3269 hashF!1107 key!3287)))))

(assert (=> b!4604831 (isDefined!8682 (getValueByKey!1334 (toList!4707 lm!1477) (hash!3269 hashF!1107 key!3287)))))

(declare-fun b!4604832 () Bool)

(declare-fun Unit!108916 () Unit!108873)

(assert (=> b!4604832 (= e!2872317 Unit!108916)))

(declare-fun b!4604833 () Bool)

(assert (=> b!4604833 (= e!2872316 (isDefined!8682 (getValueByKey!1334 (toList!4707 lm!1477) (hash!3269 hashF!1107 key!3287))))))

(assert (= (and d!1450513 c!788860) b!4604831))

(assert (= (and d!1450513 (not c!788860)) b!4604832))

(assert (= (and d!1450513 (not res!1926830)) b!4604833))

(assert (=> d!1450513 m!5433433))

(declare-fun m!5434143 () Bool)

(assert (=> d!1450513 m!5434143))

(assert (=> b!4604831 m!5433433))

(declare-fun m!5434145 () Bool)

(assert (=> b!4604831 m!5434145))

(assert (=> b!4604831 m!5433433))

(declare-fun m!5434147 () Bool)

(assert (=> b!4604831 m!5434147))

(assert (=> b!4604831 m!5434147))

(declare-fun m!5434149 () Bool)

(assert (=> b!4604831 m!5434149))

(assert (=> b!4604833 m!5433433))

(assert (=> b!4604833 m!5434147))

(assert (=> b!4604833 m!5434147))

(assert (=> b!4604833 m!5434149))

(assert (=> d!1450189 d!1450513))

(assert (=> d!1450189 d!1450283))

(declare-fun d!1450515 () Bool)

(assert (=> d!1450515 (contains!14128 lm!1477 (hash!3269 hashF!1107 key!3287))))

(assert (=> d!1450515 true))

(declare-fun _$27!1462 () Unit!108873)

(assert (=> d!1450515 (= (choose!30917 lm!1477 key!3287 hashF!1107) _$27!1462)))

(declare-fun bs!1014205 () Bool)

(assert (= bs!1014205 d!1450515))

(assert (=> bs!1014205 m!5433433))

(assert (=> bs!1014205 m!5433433))

(assert (=> bs!1014205 m!5433493))

(assert (=> d!1450189 d!1450515))

(declare-fun d!1450517 () Bool)

(declare-fun res!1926831 () Bool)

(declare-fun e!2872318 () Bool)

(assert (=> d!1450517 (=> res!1926831 e!2872318)))

(assert (=> d!1450517 (= res!1926831 ((_ is Nil!51147) (toList!4707 lm!1477)))))

(assert (=> d!1450517 (= (forall!10646 (toList!4707 lm!1477) lambda!187209) e!2872318)))

(declare-fun b!4604834 () Bool)

(declare-fun e!2872319 () Bool)

(assert (=> b!4604834 (= e!2872318 e!2872319)))

(declare-fun res!1926832 () Bool)

(assert (=> b!4604834 (=> (not res!1926832) (not e!2872319))))

(assert (=> b!4604834 (= res!1926832 (dynLambda!21416 lambda!187209 (h!57123 (toList!4707 lm!1477))))))

(declare-fun b!4604835 () Bool)

(assert (=> b!4604835 (= e!2872319 (forall!10646 (t!358265 (toList!4707 lm!1477)) lambda!187209))))

(assert (= (and d!1450517 (not res!1926831)) b!4604834))

(assert (= (and b!4604834 res!1926832) b!4604835))

(declare-fun b_lambda!169897 () Bool)

(assert (=> (not b_lambda!169897) (not b!4604834)))

(declare-fun m!5434151 () Bool)

(assert (=> b!4604834 m!5434151))

(declare-fun m!5434153 () Bool)

(assert (=> b!4604835 m!5434153))

(assert (=> d!1450189 d!1450517))

(assert (=> b!4604435 d!1450365))

(declare-fun e!2872320 () Bool)

(declare-fun tp!1340748 () Bool)

(declare-fun b!4604836 () Bool)

(assert (=> b!4604836 (= e!2872320 (and tp_is_empty!28677 tp_is_empty!28679 tp!1340748))))

(assert (=> b!4604476 (= tp!1340743 e!2872320)))

(assert (= (and b!4604476 ((_ is Cons!51146) (t!358264 (t!358264 newBucket!178)))) b!4604836))

(declare-fun e!2872321 () Bool)

(declare-fun tp!1340749 () Bool)

(declare-fun b!4604837 () Bool)

(assert (=> b!4604837 (= e!2872321 (and tp_is_empty!28677 tp_is_empty!28679 tp!1340749))))

(assert (=> b!4604471 (= tp!1340739 e!2872321)))

(assert (= (and b!4604471 ((_ is Cons!51146) (_2!29212 (h!57123 (toList!4707 lm!1477))))) b!4604837))

(declare-fun b!4604838 () Bool)

(declare-fun e!2872322 () Bool)

(declare-fun tp!1340750 () Bool)

(declare-fun tp!1340751 () Bool)

(assert (=> b!4604838 (= e!2872322 (and tp!1340750 tp!1340751))))

(assert (=> b!4604471 (= tp!1340740 e!2872322)))

(assert (= (and b!4604471 ((_ is Cons!51147) (t!358265 (toList!4707 lm!1477)))) b!4604838))

(declare-fun b_lambda!169899 () Bool)

(assert (= b_lambda!169895 (or start!459864 b_lambda!169899)))

(declare-fun bs!1014206 () Bool)

(declare-fun d!1450519 () Bool)

(assert (= bs!1014206 (and d!1450519 start!459864)))

(assert (=> bs!1014206 (= (dynLambda!21416 lambda!187200 (h!57123 (t!358265 (toList!4707 lm!1477)))) (noDuplicateKeys!1346 (_2!29212 (h!57123 (t!358265 (toList!4707 lm!1477))))))))

(declare-fun m!5434155 () Bool)

(assert (=> bs!1014206 m!5434155))

(assert (=> b!4604788 d!1450519))

(declare-fun b_lambda!169901 () Bool)

(assert (= b_lambda!169857 (or start!459864 b_lambda!169901)))

(declare-fun bs!1014207 () Bool)

(declare-fun d!1450521 () Bool)

(assert (= bs!1014207 (and d!1450521 start!459864)))

(assert (=> bs!1014207 (= (dynLambda!21416 lambda!187200 (h!57123 (t!358265 (toList!4707 lt!1762470)))) (noDuplicateKeys!1346 (_2!29212 (h!57123 (t!358265 (toList!4707 lt!1762470))))))))

(declare-fun m!5434157 () Bool)

(assert (=> bs!1014207 m!5434157))

(assert (=> b!4604682 d!1450521))

(declare-fun b_lambda!169903 () Bool)

(assert (= b_lambda!169897 (or d!1450189 b_lambda!169903)))

(declare-fun bs!1014208 () Bool)

(declare-fun d!1450523 () Bool)

(assert (= bs!1014208 (and d!1450523 d!1450189)))

(assert (=> bs!1014208 (= (dynLambda!21416 lambda!187209 (h!57123 (toList!4707 lm!1477))) (noDuplicateKeys!1346 (_2!29212 (h!57123 (toList!4707 lm!1477)))))))

(assert (=> bs!1014208 m!5433707))

(assert (=> b!4604834 d!1450523))

(declare-fun b_lambda!169905 () Bool)

(assert (= b_lambda!169863 (or d!1450279 b_lambda!169905)))

(declare-fun bs!1014209 () Bool)

(declare-fun d!1450525 () Bool)

(assert (= bs!1014209 (and d!1450525 d!1450279)))

(assert (=> bs!1014209 (= (dynLambda!21416 lambda!187229 (h!57123 (toList!4707 lm!1477))) (noDuplicateKeys!1346 (_2!29212 (h!57123 (toList!4707 lm!1477)))))))

(assert (=> bs!1014209 m!5433707))

(assert (=> b!4604729 d!1450525))

(declare-fun b_lambda!169907 () Bool)

(assert (= b_lambda!169853 (or d!1450187 b_lambda!169907)))

(declare-fun bs!1014210 () Bool)

(declare-fun d!1450527 () Bool)

(assert (= bs!1014210 (and d!1450527 d!1450187)))

(assert (=> bs!1014210 (= (dynLambda!21416 lambda!187203 (h!57123 (toList!4707 lt!1762470))) (allKeysSameHash!1202 (_2!29212 (h!57123 (toList!4707 lt!1762470))) (_1!29212 (h!57123 (toList!4707 lt!1762470))) hashF!1107))))

(declare-fun m!5434159 () Bool)

(assert (=> bs!1014210 m!5434159))

(assert (=> b!4604678 d!1450527))

(declare-fun b_lambda!169909 () Bool)

(assert (= b_lambda!169855 (or d!1450261 b_lambda!169909)))

(declare-fun bs!1014211 () Bool)

(declare-fun d!1450529 () Bool)

(assert (= bs!1014211 (and d!1450529 d!1450261)))

(assert (=> bs!1014211 (= (dynLambda!21416 lambda!187225 (h!57123 (toList!4707 lm!1477))) (noDuplicateKeys!1346 (_2!29212 (h!57123 (toList!4707 lm!1477)))))))

(assert (=> bs!1014211 m!5433707))

(assert (=> b!4604680 d!1450529))

(declare-fun b_lambda!169911 () Bool)

(assert (= b_lambda!169859 (or d!1450267 b_lambda!169911)))

(declare-fun bs!1014212 () Bool)

(declare-fun d!1450531 () Bool)

(assert (= bs!1014212 (and d!1450531 d!1450267)))

(assert (=> bs!1014212 (= (dynLambda!21416 lambda!187226 (h!57123 (toList!4707 lm!1477))) (allKeysSameHash!1202 (_2!29212 (h!57123 (toList!4707 lm!1477))) (_1!29212 (h!57123 (toList!4707 lm!1477))) hashF!1107))))

(declare-fun m!5434161 () Bool)

(assert (=> bs!1014212 m!5434161))

(assert (=> b!4604686 d!1450531))

(declare-fun b_lambda!169913 () Bool)

(assert (= b_lambda!169867 (or d!1450281 b_lambda!169913)))

(declare-fun bs!1014213 () Bool)

(declare-fun d!1450533 () Bool)

(assert (= bs!1014213 (and d!1450533 d!1450281)))

(assert (=> bs!1014213 (= (dynLambda!21418 lambda!187232 (h!57122 newBucket!178)) (= (hash!3269 hashF!1107 (_1!29211 (h!57122 newBucket!178))) hash!344))))

(declare-fun m!5434163 () Bool)

(assert (=> bs!1014213 m!5434163))

(assert (=> b!4604741 d!1450533))

(declare-fun b_lambda!169915 () Bool)

(assert (= b_lambda!169851 (or start!459864 b_lambda!169915)))

(assert (=> d!1450357 d!1450285))

(check-sat (not b_lambda!169909) (not b!4604838) (not b_lambda!169841) (not d!1450349) (not d!1450347) (not b!4604781) (not b!4604684) (not d!1450513) (not b!4604777) (not b!4604802) (not b!4604828) (not b_lambda!169915) (not b!4604833) (not b!4604621) (not b_lambda!169911) (not b_lambda!169907) (not b!4604835) (not b!4604681) (not bm!321280) (not b!4604804) (not b!4604619) (not b!4604836) (not bs!1014212) (not d!1450423) (not d!1450351) (not d!1450493) (not b_lambda!169843) (not b!4604772) (not b!4604685) (not b!4604660) (not b!4604818) (not b!4604820) (not b!4604677) (not b!4604789) (not d!1450373) (not d!1450497) (not b!4604783) (not d!1450491) (not b!4604687) (not d!1450363) (not b!4604807) (not b!4604730) (not bs!1014211) (not b!4604819) (not b!4604733) (not d!1450369) (not b_lambda!169913) (not b!4604662) (not b!4604614) (not b!4604617) (not bs!1014207) (not d!1450485) tp_is_empty!28679 tp_is_empty!28677 (not b_lambda!169901) (not b!4604771) (not b!4604638) (not b_lambda!169899) (not b!4604707) (not b!4604742) (not bs!1014209) (not b!4604768) (not b!4604618) (not b!4604830) (not b!4604710) (not b!4604816) (not d!1450389) (not b_lambda!169839) (not d!1450501) (not bs!1014213) (not b!4604822) (not b!4604776) (not d!1450365) (not b_lambda!169905) (not bm!321278) (not b!4604672) (not b!4604679) (not b_lambda!169903) (not b!4604803) (not b!4604689) (not d!1450499) (not b!4604683) (not b!4604661) (not b!4604782) (not bs!1014206) (not d!1450355) (not b!4604837) (not d!1450359) (not d!1450393) (not b!4604627) (not bm!321279) (not b!4604800) (not b!4604646) (not b!4604786) (not d!1450395) (not bs!1014208) (not b!4604653) (not b!4604810) (not b!4604831) (not d!1450515) (not bs!1014210) (not b!4604746) (not d!1450489) (not d!1450377))
(check-sat)
