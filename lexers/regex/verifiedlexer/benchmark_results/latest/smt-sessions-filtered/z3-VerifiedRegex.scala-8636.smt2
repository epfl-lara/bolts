; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461020 () Bool)

(assert start!461020)

(declare-fun bs!1015835 () Bool)

(declare-fun b!4610010 () Bool)

(assert (= bs!1015835 (and b!4610010 start!461020)))

(declare-fun lambda!188315 () Int)

(declare-fun lambda!188314 () Int)

(assert (=> bs!1015835 (not (= lambda!188315 lambda!188314))))

(assert (=> b!4610010 true))

(assert (=> b!4610010 true))

(assert (=> b!4610010 true))

(declare-fun b!4609996 () Bool)

(declare-fun res!1929987 () Bool)

(declare-fun e!2875657 () Bool)

(assert (=> b!4609996 (=> res!1929987 e!2875657)))

(declare-datatypes ((K!12585 0))(
  ( (K!12586 (val!18339 Int)) )
))
(declare-datatypes ((V!12831 0))(
  ( (V!12832 (val!18340 Int)) )
))
(declare-datatypes ((tuple2!51946 0))(
  ( (tuple2!51947 (_1!29267 K!12585) (_2!29267 V!12831)) )
))
(declare-datatypes ((List!51341 0))(
  ( (Nil!51217) (Cons!51217 (h!57209 tuple2!51946) (t!358335 List!51341)) )
))
(declare-datatypes ((tuple2!51948 0))(
  ( (tuple2!51949 (_1!29268 (_ BitVec 64)) (_2!29268 List!51341)) )
))
(declare-fun lt!1766445 () tuple2!51948)

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4609996 (= res!1929987 (bvsge (_1!29268 lt!1766445) hash!344))))

(declare-fun b!4609997 () Bool)

(declare-fun res!1929983 () Bool)

(declare-fun e!2875663 () Bool)

(assert (=> b!4609997 (=> res!1929983 e!2875663)))

(declare-fun key!3287 () K!12585)

(declare-fun containsKey!2264 (List!51341 K!12585) Bool)

(assert (=> b!4609997 (= res!1929983 (not (containsKey!2264 (_2!29268 lt!1766445) key!3287)))))

(declare-fun b!4609998 () Bool)

(declare-fun e!2875670 () Bool)

(assert (=> b!4609998 (= e!2875670 e!2875657)))

(declare-fun res!1929990 () Bool)

(assert (=> b!4609998 (=> res!1929990 e!2875657)))

(declare-datatypes ((ListMap!4025 0))(
  ( (ListMap!4026 (toList!4763 List!51341)) )
))
(declare-fun lt!1766437 () ListMap!4025)

(declare-fun lt!1766448 () ListMap!4025)

(declare-fun eq!747 (ListMap!4025 ListMap!4025) Bool)

(assert (=> b!4609998 (= res!1929990 (not (eq!747 lt!1766437 lt!1766448)))))

(declare-datatypes ((List!51342 0))(
  ( (Nil!51218) (Cons!51218 (h!57210 tuple2!51948) (t!358336 List!51342)) )
))
(declare-datatypes ((ListLongMap!3395 0))(
  ( (ListLongMap!3396 (toList!4764 List!51342)) )
))
(declare-fun lt!1766441 () ListLongMap!3395)

(declare-fun extractMap!1434 (List!51342) ListMap!4025)

(declare-fun +!1784 (ListLongMap!3395 tuple2!51948) ListLongMap!3395)

(assert (=> b!4609998 (= lt!1766437 (extractMap!1434 (toList!4764 (+!1784 lt!1766441 lt!1766445))))))

(declare-fun lm!1477 () ListLongMap!3395)

(declare-fun head!9560 (ListLongMap!3395) tuple2!51948)

(assert (=> b!4609998 (= lt!1766445 (head!9560 lm!1477))))

(declare-fun lt!1766429 () ListMap!4025)

(declare-fun lt!1766440 () ListMap!4025)

(assert (=> b!4609998 (eq!747 lt!1766429 lt!1766440)))

(declare-fun lt!1766430 () ListMap!4025)

(declare-fun -!516 (ListMap!4025 K!12585) ListMap!4025)

(assert (=> b!4609998 (= lt!1766440 (-!516 lt!1766430 key!3287))))

(declare-fun lt!1766426 () ListLongMap!3395)

(assert (=> b!4609998 (= lt!1766429 (extractMap!1434 (toList!4764 lt!1766426)))))

(declare-fun lt!1766449 () tuple2!51948)

(assert (=> b!4609998 (= lt!1766426 (+!1784 lt!1766441 lt!1766449))))

(declare-fun newBucket!178 () List!51341)

(assert (=> b!4609998 (= lt!1766449 (tuple2!51949 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5773 0))(
  ( (HashableExt!5772 (__x!31476 Int)) )
))
(declare-fun hashF!1107 () Hashable!5773)

(declare-datatypes ((Unit!109347 0))(
  ( (Unit!109348) )
))
(declare-fun lt!1766431 () Unit!109347)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!231 (ListLongMap!3395 (_ BitVec 64) List!51341 K!12585 Hashable!5773) Unit!109347)

(assert (=> b!4609998 (= lt!1766431 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!231 lt!1766441 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4609999 () Bool)

(declare-fun res!1929982 () Bool)

(declare-fun e!2875662 () Bool)

(assert (=> b!4609999 (=> (not res!1929982) (not e!2875662))))

(declare-fun allKeysSameHash!1230 (List!51341 (_ BitVec 64) Hashable!5773) Bool)

(assert (=> b!4609999 (= res!1929982 (allKeysSameHash!1230 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4610000 () Bool)

(declare-fun res!1929993 () Bool)

(assert (=> b!4610000 (=> res!1929993 e!2875657)))

(assert (=> b!4610000 (= res!1929993 (not (eq!747 lt!1766448 lt!1766437)))))

(declare-fun b!4610001 () Bool)

(declare-fun res!1929994 () Bool)

(declare-fun e!2875664 () Bool)

(assert (=> b!4610001 (=> (not res!1929994) (not e!2875664))))

(declare-fun allKeysSameHashInMap!1485 (ListLongMap!3395 Hashable!5773) Bool)

(assert (=> b!4610001 (= res!1929994 (allKeysSameHashInMap!1485 lm!1477 hashF!1107))))

(declare-fun b!4610002 () Bool)

(declare-fun e!2875668 () Bool)

(assert (=> b!4610002 (= e!2875668 e!2875663)))

(declare-fun res!1929991 () Bool)

(assert (=> b!4610002 (=> res!1929991 e!2875663)))

(declare-fun noDuplicateKeys!1374 (List!51341) Bool)

(assert (=> b!4610002 (= res!1929991 (not (noDuplicateKeys!1374 (_2!29268 lt!1766445))))))

(declare-fun lt!1766439 () Unit!109347)

(declare-fun forallContained!2942 (List!51342 Int tuple2!51948) Unit!109347)

(assert (=> b!4610002 (= lt!1766439 (forallContained!2942 (toList!4764 lm!1477) lambda!188314 (h!57210 (toList!4764 lm!1477))))))

(declare-fun b!4610003 () Bool)

(declare-fun res!1929992 () Bool)

(declare-fun e!2875665 () Bool)

(assert (=> b!4610003 (=> res!1929992 e!2875665)))

(declare-fun lt!1766442 () tuple2!51948)

(declare-fun contains!14228 (List!51342 tuple2!51948) Bool)

(assert (=> b!4610003 (= res!1929992 (not (contains!14228 (t!358336 (toList!4764 lm!1477)) lt!1766442)))))

(declare-fun tp_is_empty!28791 () Bool)

(declare-fun tp!1341069 () Bool)

(declare-fun tp_is_empty!28789 () Bool)

(declare-fun e!2875658 () Bool)

(declare-fun b!4610004 () Bool)

(assert (=> b!4610004 (= e!2875658 (and tp_is_empty!28789 tp_is_empty!28791 tp!1341069))))

(declare-fun b!4610005 () Bool)

(declare-fun e!2875669 () Bool)

(declare-fun e!2875667 () Bool)

(assert (=> b!4610005 (= e!2875669 e!2875667)))

(declare-fun res!1929989 () Bool)

(assert (=> b!4610005 (=> res!1929989 e!2875667)))

(declare-fun containsKeyBiggerList!314 (List!51342 K!12585) Bool)

(assert (=> b!4610005 (= res!1929989 (not (containsKeyBiggerList!314 (t!358336 (toList!4764 lm!1477)) key!3287)))))

(assert (=> b!4610005 (containsKeyBiggerList!314 (toList!4764 lt!1766441) key!3287)))

(declare-fun lt!1766443 () Unit!109347)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!184 (ListLongMap!3395 K!12585 Hashable!5773) Unit!109347)

(assert (=> b!4610005 (= lt!1766443 (lemmaInLongMapThenContainsKeyBiggerList!184 lt!1766441 key!3287 hashF!1107))))

(declare-fun b!4610006 () Bool)

(declare-fun e!2875661 () Bool)

(assert (=> b!4610006 (= e!2875661 e!2875665)))

(declare-fun res!1929978 () Bool)

(assert (=> b!4610006 (=> res!1929978 e!2875665)))

(declare-fun contains!14229 (ListLongMap!3395 (_ BitVec 64)) Bool)

(assert (=> b!4610006 (= res!1929978 (not (contains!14229 lt!1766441 hash!344)))))

(declare-fun tail!8033 (ListLongMap!3395) ListLongMap!3395)

(assert (=> b!4610006 (= lt!1766441 (tail!8033 lm!1477))))

(declare-fun b!4610007 () Bool)

(declare-fun e!2875656 () Unit!109347)

(declare-fun Unit!109349 () Unit!109347)

(assert (=> b!4610007 (= e!2875656 Unit!109349)))

(declare-fun res!1929996 () Bool)

(assert (=> start!461020 (=> (not res!1929996) (not e!2875664))))

(declare-fun forall!10696 (List!51342 Int) Bool)

(assert (=> start!461020 (= res!1929996 (forall!10696 (toList!4764 lm!1477) lambda!188314))))

(assert (=> start!461020 e!2875664))

(assert (=> start!461020 true))

(declare-fun e!2875660 () Bool)

(declare-fun inv!66769 (ListLongMap!3395) Bool)

(assert (=> start!461020 (and (inv!66769 lm!1477) e!2875660)))

(assert (=> start!461020 tp_is_empty!28789))

(assert (=> start!461020 e!2875658))

(declare-fun b!4610008 () Bool)

(declare-fun Unit!109350 () Unit!109347)

(assert (=> b!4610008 (= e!2875656 Unit!109350)))

(declare-fun lt!1766427 () Unit!109347)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!338 (ListLongMap!3395 K!12585 Hashable!5773) Unit!109347)

(assert (=> b!4610008 (= lt!1766427 (lemmaNotInItsHashBucketThenNotInMap!338 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4610008 false))

(declare-fun b!4610009 () Bool)

(declare-fun res!1929985 () Bool)

(assert (=> b!4610009 (=> res!1929985 e!2875661)))

(get-info :version)

(assert (=> b!4610009 (= res!1929985 (or ((_ is Nil!51218) (toList!4764 lm!1477)) (= (_1!29268 (h!57210 (toList!4764 lm!1477))) hash!344)))))

(assert (=> b!4610010 (= e!2875663 false)))

(declare-fun lambda!188316 () Int)

(declare-datatypes ((Option!11446 0))(
  ( (None!11445) (Some!11445 (v!45507 tuple2!51946)) )
))
(declare-fun lt!1766436 () Option!11446)

(declare-fun lt!1766435 () Unit!109347)

(declare-fun forallContained!2943 (List!51341 Int tuple2!51946) Unit!109347)

(declare-fun get!16945 (Option!11446) tuple2!51946)

(assert (=> b!4610010 (= lt!1766435 (forallContained!2943 (_2!29268 (h!57210 (toList!4764 lm!1477))) lambda!188316 (tuple2!51947 key!3287 (_2!29267 (get!16945 lt!1766436)))))))

(declare-fun lt!1766447 () Unit!109347)

(assert (=> b!4610010 (= lt!1766447 (forallContained!2942 (toList!4764 lm!1477) lambda!188315 (h!57210 (toList!4764 lm!1477))))))

(declare-fun getPair!242 (List!51341 K!12585) Option!11446)

(assert (=> b!4610010 (= lt!1766436 (getPair!242 (_2!29268 lt!1766445) key!3287))))

(assert (=> b!4610010 (not (= hash!344 (_1!29268 lt!1766445)))))

(declare-fun b!4610011 () Bool)

(declare-fun tp!1341068 () Bool)

(assert (=> b!4610011 (= e!2875660 tp!1341068)))

(declare-fun b!4610012 () Bool)

(assert (=> b!4610012 (= e!2875667 e!2875670)))

(declare-fun res!1929980 () Bool)

(assert (=> b!4610012 (=> res!1929980 e!2875670)))

(declare-fun contains!14230 (ListMap!4025 K!12585) Bool)

(assert (=> b!4610012 (= res!1929980 (not (contains!14230 (extractMap!1434 (t!358336 (toList!4764 lm!1477))) key!3287)))))

(assert (=> b!4610012 (contains!14230 lt!1766430 key!3287)))

(assert (=> b!4610012 (= lt!1766430 (extractMap!1434 (toList!4764 lt!1766441)))))

(declare-fun lt!1766424 () Unit!109347)

(declare-fun lemmaListContainsThenExtractedMapContains!286 (ListLongMap!3395 K!12585 Hashable!5773) Unit!109347)

(assert (=> b!4610012 (= lt!1766424 (lemmaListContainsThenExtractedMapContains!286 lt!1766441 key!3287 hashF!1107))))

(declare-fun b!4610013 () Bool)

(declare-fun e!2875666 () Bool)

(declare-fun e!2875655 () Bool)

(assert (=> b!4610013 (= e!2875666 e!2875655)))

(declare-fun res!1929981 () Bool)

(assert (=> b!4610013 (=> res!1929981 e!2875655)))

(declare-fun lt!1766446 () ListMap!4025)

(declare-fun lt!1766422 () ListMap!4025)

(assert (=> b!4610013 (= res!1929981 (not (eq!747 lt!1766446 lt!1766422)))))

(declare-fun addToMapMapFromBucket!844 (List!51341 ListMap!4025) ListMap!4025)

(assert (=> b!4610013 (= lt!1766422 (addToMapMapFromBucket!844 (_2!29268 lt!1766445) lt!1766429))))

(declare-fun lt!1766433 () ListLongMap!3395)

(assert (=> b!4610013 (= lt!1766446 (extractMap!1434 (toList!4764 lt!1766433)))))

(declare-fun b!4610014 () Bool)

(assert (=> b!4610014 (= e!2875662 (not e!2875661))))

(declare-fun res!1929976 () Bool)

(assert (=> b!4610014 (=> res!1929976 e!2875661)))

(declare-fun lt!1766451 () List!51341)

(declare-fun removePairForKey!999 (List!51341 K!12585) List!51341)

(assert (=> b!4610014 (= res!1929976 (not (= newBucket!178 (removePairForKey!999 lt!1766451 key!3287))))))

(declare-fun lt!1766434 () Unit!109347)

(assert (=> b!4610014 (= lt!1766434 (forallContained!2942 (toList!4764 lm!1477) lambda!188314 lt!1766442))))

(assert (=> b!4610014 (contains!14228 (toList!4764 lm!1477) lt!1766442)))

(assert (=> b!4610014 (= lt!1766442 (tuple2!51949 hash!344 lt!1766451))))

(declare-fun lt!1766438 () Unit!109347)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!884 (List!51342 (_ BitVec 64) List!51341) Unit!109347)

(assert (=> b!4610014 (= lt!1766438 (lemmaGetValueByKeyImpliesContainsTuple!884 (toList!4764 lm!1477) hash!344 lt!1766451))))

(declare-fun apply!12111 (ListLongMap!3395 (_ BitVec 64)) List!51341)

(assert (=> b!4610014 (= lt!1766451 (apply!12111 lm!1477 hash!344))))

(declare-fun lt!1766425 () (_ BitVec 64))

(assert (=> b!4610014 (contains!14229 lm!1477 lt!1766425)))

(declare-fun lt!1766423 () Unit!109347)

(declare-fun lemmaInGenMapThenLongMapContainsHash!448 (ListLongMap!3395 K!12585 Hashable!5773) Unit!109347)

(assert (=> b!4610014 (= lt!1766423 (lemmaInGenMapThenLongMapContainsHash!448 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4610015 () Bool)

(declare-fun res!1929977 () Bool)

(assert (=> b!4610015 (=> res!1929977 e!2875665)))

(assert (=> b!4610015 (= res!1929977 (not (= (apply!12111 lt!1766441 hash!344) lt!1766451)))))

(declare-fun b!4610016 () Bool)

(assert (=> b!4610016 (= e!2875665 e!2875669)))

(declare-fun res!1929984 () Bool)

(assert (=> b!4610016 (=> res!1929984 e!2875669)))

(declare-fun lt!1766444 () Bool)

(assert (=> b!4610016 (= res!1929984 lt!1766444)))

(declare-fun lt!1766450 () Unit!109347)

(assert (=> b!4610016 (= lt!1766450 e!2875656)))

(declare-fun c!789640 () Bool)

(assert (=> b!4610016 (= c!789640 lt!1766444)))

(assert (=> b!4610016 (= lt!1766444 (not (containsKey!2264 lt!1766451 key!3287)))))

(declare-fun b!4610017 () Bool)

(assert (=> b!4610017 (= e!2875657 e!2875666)))

(declare-fun res!1929997 () Bool)

(assert (=> b!4610017 (=> res!1929997 e!2875666)))

(assert (=> b!4610017 (= res!1929997 (not (= lt!1766433 (+!1784 lm!1477 lt!1766449))))))

(assert (=> b!4610017 (= lt!1766433 (+!1784 lt!1766426 lt!1766445))))

(declare-fun b!4610018 () Bool)

(declare-fun e!2875659 () Bool)

(assert (=> b!4610018 (= e!2875664 e!2875659)))

(declare-fun res!1929986 () Bool)

(assert (=> b!4610018 (=> (not res!1929986) (not e!2875659))))

(assert (=> b!4610018 (= res!1929986 (contains!14230 lt!1766448 key!3287))))

(assert (=> b!4610018 (= lt!1766448 (extractMap!1434 (toList!4764 lm!1477)))))

(declare-fun b!4610019 () Bool)

(assert (=> b!4610019 (= e!2875655 e!2875668)))

(declare-fun res!1929979 () Bool)

(assert (=> b!4610019 (=> res!1929979 e!2875668)))

(declare-fun lt!1766432 () ListMap!4025)

(assert (=> b!4610019 (= res!1929979 (not (eq!747 lt!1766446 lt!1766432)))))

(assert (=> b!4610019 (eq!747 lt!1766422 lt!1766432)))

(assert (=> b!4610019 (= lt!1766432 (addToMapMapFromBucket!844 (_2!29268 lt!1766445) lt!1766440))))

(declare-fun lt!1766428 () Unit!109347)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!106 (ListMap!4025 ListMap!4025 List!51341) Unit!109347)

(assert (=> b!4610019 (= lt!1766428 (lemmaAddToMapFromBucketPreservesEquivalence!106 lt!1766429 lt!1766440 (_2!29268 lt!1766445)))))

(declare-fun b!4610020 () Bool)

(declare-fun res!1929995 () Bool)

(assert (=> b!4610020 (=> res!1929995 e!2875666)))

(assert (=> b!4610020 (= res!1929995 (not (= (head!9560 lt!1766433) lt!1766445)))))

(declare-fun b!4610021 () Bool)

(assert (=> b!4610021 (= e!2875659 e!2875662)))

(declare-fun res!1929988 () Bool)

(assert (=> b!4610021 (=> (not res!1929988) (not e!2875662))))

(assert (=> b!4610021 (= res!1929988 (= lt!1766425 hash!344))))

(declare-fun hash!3313 (Hashable!5773 K!12585) (_ BitVec 64))

(assert (=> b!4610021 (= lt!1766425 (hash!3313 hashF!1107 key!3287))))

(declare-fun b!4610022 () Bool)

(declare-fun res!1929998 () Bool)

(assert (=> b!4610022 (=> res!1929998 e!2875661)))

(assert (=> b!4610022 (= res!1929998 (not (noDuplicateKeys!1374 newBucket!178)))))

(assert (= (and start!461020 res!1929996) b!4610001))

(assert (= (and b!4610001 res!1929994) b!4610018))

(assert (= (and b!4610018 res!1929986) b!4610021))

(assert (= (and b!4610021 res!1929988) b!4609999))

(assert (= (and b!4609999 res!1929982) b!4610014))

(assert (= (and b!4610014 (not res!1929976)) b!4610022))

(assert (= (and b!4610022 (not res!1929998)) b!4610009))

(assert (= (and b!4610009 (not res!1929985)) b!4610006))

(assert (= (and b!4610006 (not res!1929978)) b!4610015))

(assert (= (and b!4610015 (not res!1929977)) b!4610003))

(assert (= (and b!4610003 (not res!1929992)) b!4610016))

(assert (= (and b!4610016 c!789640) b!4610008))

(assert (= (and b!4610016 (not c!789640)) b!4610007))

(assert (= (and b!4610016 (not res!1929984)) b!4610005))

(assert (= (and b!4610005 (not res!1929989)) b!4610012))

(assert (= (and b!4610012 (not res!1929980)) b!4609998))

(assert (= (and b!4609998 (not res!1929990)) b!4610000))

(assert (= (and b!4610000 (not res!1929993)) b!4609996))

(assert (= (and b!4609996 (not res!1929987)) b!4610017))

(assert (= (and b!4610017 (not res!1929997)) b!4610020))

(assert (= (and b!4610020 (not res!1929995)) b!4610013))

(assert (= (and b!4610013 (not res!1929981)) b!4610019))

(assert (= (and b!4610019 (not res!1929979)) b!4610002))

(assert (= (and b!4610002 (not res!1929991)) b!4609997))

(assert (= (and b!4609997 (not res!1929983)) b!4610010))

(assert (= start!461020 b!4610011))

(assert (= (and start!461020 ((_ is Cons!51217) newBucket!178)) b!4610004))

(declare-fun m!5441139 () Bool)

(assert (=> b!4610006 m!5441139))

(declare-fun m!5441141 () Bool)

(assert (=> b!4610006 m!5441141))

(declare-fun m!5441143 () Bool)

(assert (=> b!4610016 m!5441143))

(declare-fun m!5441145 () Bool)

(assert (=> b!4610017 m!5441145))

(declare-fun m!5441147 () Bool)

(assert (=> b!4610017 m!5441147))

(declare-fun m!5441149 () Bool)

(assert (=> b!4610014 m!5441149))

(declare-fun m!5441151 () Bool)

(assert (=> b!4610014 m!5441151))

(declare-fun m!5441153 () Bool)

(assert (=> b!4610014 m!5441153))

(declare-fun m!5441155 () Bool)

(assert (=> b!4610014 m!5441155))

(declare-fun m!5441157 () Bool)

(assert (=> b!4610014 m!5441157))

(declare-fun m!5441159 () Bool)

(assert (=> b!4610014 m!5441159))

(declare-fun m!5441161 () Bool)

(assert (=> b!4610014 m!5441161))

(declare-fun m!5441163 () Bool)

(assert (=> b!4610000 m!5441163))

(declare-fun m!5441165 () Bool)

(assert (=> b!4610015 m!5441165))

(declare-fun m!5441167 () Bool)

(assert (=> b!4610020 m!5441167))

(declare-fun m!5441169 () Bool)

(assert (=> b!4610003 m!5441169))

(declare-fun m!5441171 () Bool)

(assert (=> b!4610002 m!5441171))

(declare-fun m!5441173 () Bool)

(assert (=> b!4610002 m!5441173))

(declare-fun m!5441175 () Bool)

(assert (=> b!4609999 m!5441175))

(declare-fun m!5441177 () Bool)

(assert (=> b!4609997 m!5441177))

(declare-fun m!5441179 () Bool)

(assert (=> b!4610019 m!5441179))

(declare-fun m!5441181 () Bool)

(assert (=> b!4610019 m!5441181))

(declare-fun m!5441183 () Bool)

(assert (=> b!4610019 m!5441183))

(declare-fun m!5441185 () Bool)

(assert (=> b!4610019 m!5441185))

(declare-fun m!5441187 () Bool)

(assert (=> start!461020 m!5441187))

(declare-fun m!5441189 () Bool)

(assert (=> start!461020 m!5441189))

(declare-fun m!5441191 () Bool)

(assert (=> b!4610022 m!5441191))

(declare-fun m!5441193 () Bool)

(assert (=> b!4610010 m!5441193))

(declare-fun m!5441195 () Bool)

(assert (=> b!4610010 m!5441195))

(declare-fun m!5441197 () Bool)

(assert (=> b!4610010 m!5441197))

(declare-fun m!5441199 () Bool)

(assert (=> b!4610010 m!5441199))

(declare-fun m!5441201 () Bool)

(assert (=> b!4609998 m!5441201))

(declare-fun m!5441203 () Bool)

(assert (=> b!4609998 m!5441203))

(declare-fun m!5441205 () Bool)

(assert (=> b!4609998 m!5441205))

(declare-fun m!5441207 () Bool)

(assert (=> b!4609998 m!5441207))

(declare-fun m!5441209 () Bool)

(assert (=> b!4609998 m!5441209))

(declare-fun m!5441211 () Bool)

(assert (=> b!4609998 m!5441211))

(declare-fun m!5441213 () Bool)

(assert (=> b!4609998 m!5441213))

(declare-fun m!5441215 () Bool)

(assert (=> b!4609998 m!5441215))

(declare-fun m!5441217 () Bool)

(assert (=> b!4609998 m!5441217))

(declare-fun m!5441219 () Bool)

(assert (=> b!4610001 m!5441219))

(declare-fun m!5441221 () Bool)

(assert (=> b!4610012 m!5441221))

(declare-fun m!5441223 () Bool)

(assert (=> b!4610012 m!5441223))

(declare-fun m!5441225 () Bool)

(assert (=> b!4610012 m!5441225))

(declare-fun m!5441227 () Bool)

(assert (=> b!4610012 m!5441227))

(assert (=> b!4610012 m!5441227))

(declare-fun m!5441229 () Bool)

(assert (=> b!4610012 m!5441229))

(declare-fun m!5441231 () Bool)

(assert (=> b!4610008 m!5441231))

(declare-fun m!5441233 () Bool)

(assert (=> b!4610005 m!5441233))

(declare-fun m!5441235 () Bool)

(assert (=> b!4610005 m!5441235))

(declare-fun m!5441237 () Bool)

(assert (=> b!4610005 m!5441237))

(declare-fun m!5441239 () Bool)

(assert (=> b!4610021 m!5441239))

(declare-fun m!5441241 () Bool)

(assert (=> b!4610018 m!5441241))

(declare-fun m!5441243 () Bool)

(assert (=> b!4610018 m!5441243))

(declare-fun m!5441245 () Bool)

(assert (=> b!4610013 m!5441245))

(declare-fun m!5441247 () Bool)

(assert (=> b!4610013 m!5441247))

(declare-fun m!5441249 () Bool)

(assert (=> b!4610013 m!5441249))

(check-sat tp_is_empty!28791 (not b!4610011) (not b!4610022) (not b!4609997) (not b!4610014) (not b!4610006) (not b!4610017) (not b!4610020) (not b!4610001) (not b!4610003) (not b!4610005) (not b!4610015) (not b!4610012) (not b!4610000) (not b!4610021) (not b!4610019) (not b!4610008) (not b!4610002) tp_is_empty!28789 (not b!4610004) (not b!4610016) (not start!461020) (not b!4610018) (not b!4609999) (not b!4610013) (not b!4609998) (not b!4610010))
(check-sat)
(get-model)

(declare-fun d!1452723 () Bool)

(declare-fun e!2875725 () Bool)

(assert (=> d!1452723 e!2875725))

(declare-fun res!1930052 () Bool)

(assert (=> d!1452723 (=> res!1930052 e!2875725)))

(declare-fun lt!1766495 () Bool)

(assert (=> d!1452723 (= res!1930052 (not lt!1766495))))

(declare-fun lt!1766492 () Bool)

(assert (=> d!1452723 (= lt!1766495 lt!1766492)))

(declare-fun lt!1766494 () Unit!109347)

(declare-fun e!2875726 () Unit!109347)

(assert (=> d!1452723 (= lt!1766494 e!2875726)))

(declare-fun c!789649 () Bool)

(assert (=> d!1452723 (= c!789649 lt!1766492)))

(declare-fun containsKey!2266 (List!51342 (_ BitVec 64)) Bool)

(assert (=> d!1452723 (= lt!1766492 (containsKey!2266 (toList!4764 lt!1766441) hash!344))))

(assert (=> d!1452723 (= (contains!14229 lt!1766441 hash!344) lt!1766495)))

(declare-fun b!4610100 () Bool)

(declare-fun lt!1766493 () Unit!109347)

(assert (=> b!4610100 (= e!2875726 lt!1766493)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1266 (List!51342 (_ BitVec 64)) Unit!109347)

(assert (=> b!4610100 (= lt!1766493 (lemmaContainsKeyImpliesGetValueByKeyDefined!1266 (toList!4764 lt!1766441) hash!344))))

(declare-datatypes ((Option!11448 0))(
  ( (None!11447) (Some!11447 (v!45513 List!51341)) )
))
(declare-fun isDefined!8714 (Option!11448) Bool)

(declare-fun getValueByKey!1364 (List!51342 (_ BitVec 64)) Option!11448)

(assert (=> b!4610100 (isDefined!8714 (getValueByKey!1364 (toList!4764 lt!1766441) hash!344))))

(declare-fun b!4610101 () Bool)

(declare-fun Unit!109352 () Unit!109347)

(assert (=> b!4610101 (= e!2875726 Unit!109352)))

(declare-fun b!4610102 () Bool)

(assert (=> b!4610102 (= e!2875725 (isDefined!8714 (getValueByKey!1364 (toList!4764 lt!1766441) hash!344)))))

(assert (= (and d!1452723 c!789649) b!4610100))

(assert (= (and d!1452723 (not c!789649)) b!4610101))

(assert (= (and d!1452723 (not res!1930052)) b!4610102))

(declare-fun m!5441343 () Bool)

(assert (=> d!1452723 m!5441343))

(declare-fun m!5441345 () Bool)

(assert (=> b!4610100 m!5441345))

(declare-fun m!5441347 () Bool)

(assert (=> b!4610100 m!5441347))

(assert (=> b!4610100 m!5441347))

(declare-fun m!5441349 () Bool)

(assert (=> b!4610100 m!5441349))

(assert (=> b!4610102 m!5441347))

(assert (=> b!4610102 m!5441347))

(assert (=> b!4610102 m!5441349))

(assert (=> b!4610006 d!1452723))

(declare-fun d!1452737 () Bool)

(declare-fun tail!8034 (List!51342) List!51342)

(assert (=> d!1452737 (= (tail!8033 lm!1477) (ListLongMap!3396 (tail!8034 (toList!4764 lm!1477))))))

(declare-fun bs!1015849 () Bool)

(assert (= bs!1015849 d!1452737))

(declare-fun m!5441351 () Bool)

(assert (=> bs!1015849 m!5441351))

(assert (=> b!4610006 d!1452737))

(declare-fun bs!1015869 () Bool)

(declare-fun d!1452739 () Bool)

(assert (= bs!1015869 (and d!1452739 start!461020)))

(declare-fun lambda!188335 () Int)

(assert (=> bs!1015869 (= lambda!188335 lambda!188314)))

(declare-fun bs!1015870 () Bool)

(assert (= bs!1015870 (and d!1452739 b!4610010)))

(assert (=> bs!1015870 (not (= lambda!188335 lambda!188315))))

(assert (=> d!1452739 (not (contains!14230 (extractMap!1434 (toList!4764 lm!1477)) key!3287))))

(declare-fun lt!1766516 () Unit!109347)

(declare-fun choose!31038 (ListLongMap!3395 K!12585 Hashable!5773) Unit!109347)

(assert (=> d!1452739 (= lt!1766516 (choose!31038 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1452739 (forall!10696 (toList!4764 lm!1477) lambda!188335)))

(assert (=> d!1452739 (= (lemmaNotInItsHashBucketThenNotInMap!338 lm!1477 key!3287 hashF!1107) lt!1766516)))

(declare-fun bs!1015871 () Bool)

(assert (= bs!1015871 d!1452739))

(assert (=> bs!1015871 m!5441243))

(assert (=> bs!1015871 m!5441243))

(declare-fun m!5441433 () Bool)

(assert (=> bs!1015871 m!5441433))

(declare-fun m!5441435 () Bool)

(assert (=> bs!1015871 m!5441435))

(declare-fun m!5441437 () Bool)

(assert (=> bs!1015871 m!5441437))

(assert (=> b!4610008 d!1452739))

(declare-fun d!1452765 () Bool)

(declare-fun res!1930074 () Bool)

(declare-fun e!2875750 () Bool)

(assert (=> d!1452765 (=> res!1930074 e!2875750)))

(assert (=> d!1452765 (= res!1930074 ((_ is Nil!51218) (toList!4764 lm!1477)))))

(assert (=> d!1452765 (= (forall!10696 (toList!4764 lm!1477) lambda!188314) e!2875750)))

(declare-fun b!4610132 () Bool)

(declare-fun e!2875751 () Bool)

(assert (=> b!4610132 (= e!2875750 e!2875751)))

(declare-fun res!1930075 () Bool)

(assert (=> b!4610132 (=> (not res!1930075) (not e!2875751))))

(declare-fun dynLambda!21440 (Int tuple2!51948) Bool)

(assert (=> b!4610132 (= res!1930075 (dynLambda!21440 lambda!188314 (h!57210 (toList!4764 lm!1477))))))

(declare-fun b!4610133 () Bool)

(assert (=> b!4610133 (= e!2875751 (forall!10696 (t!358336 (toList!4764 lm!1477)) lambda!188314))))

(assert (= (and d!1452765 (not res!1930074)) b!4610132))

(assert (= (and b!4610132 res!1930075) b!4610133))

(declare-fun b_lambda!170403 () Bool)

(assert (=> (not b_lambda!170403) (not b!4610132)))

(declare-fun m!5441449 () Bool)

(assert (=> b!4610132 m!5441449))

(declare-fun m!5441451 () Bool)

(assert (=> b!4610133 m!5441451))

(assert (=> start!461020 d!1452765))

(declare-fun d!1452771 () Bool)

(declare-fun isStrictlySorted!566 (List!51342) Bool)

(assert (=> d!1452771 (= (inv!66769 lm!1477) (isStrictlySorted!566 (toList!4764 lm!1477)))))

(declare-fun bs!1015881 () Bool)

(assert (= bs!1015881 d!1452771))

(declare-fun m!5441459 () Bool)

(assert (=> bs!1015881 m!5441459))

(assert (=> start!461020 d!1452771))

(declare-fun d!1452775 () Bool)

(declare-fun dynLambda!21441 (Int tuple2!51946) Bool)

(assert (=> d!1452775 (dynLambda!21441 lambda!188316 (tuple2!51947 key!3287 (_2!29267 (get!16945 lt!1766436))))))

(declare-fun lt!1766529 () Unit!109347)

(declare-fun choose!31039 (List!51341 Int tuple2!51946) Unit!109347)

(assert (=> d!1452775 (= lt!1766529 (choose!31039 (_2!29268 (h!57210 (toList!4764 lm!1477))) lambda!188316 (tuple2!51947 key!3287 (_2!29267 (get!16945 lt!1766436)))))))

(declare-fun e!2875765 () Bool)

(assert (=> d!1452775 e!2875765))

(declare-fun res!1930083 () Bool)

(assert (=> d!1452775 (=> (not res!1930083) (not e!2875765))))

(declare-fun forall!10698 (List!51341 Int) Bool)

(assert (=> d!1452775 (= res!1930083 (forall!10698 (_2!29268 (h!57210 (toList!4764 lm!1477))) lambda!188316))))

(assert (=> d!1452775 (= (forallContained!2943 (_2!29268 (h!57210 (toList!4764 lm!1477))) lambda!188316 (tuple2!51947 key!3287 (_2!29267 (get!16945 lt!1766436)))) lt!1766529)))

(declare-fun b!4610153 () Bool)

(declare-fun contains!14232 (List!51341 tuple2!51946) Bool)

(assert (=> b!4610153 (= e!2875765 (contains!14232 (_2!29268 (h!57210 (toList!4764 lm!1477))) (tuple2!51947 key!3287 (_2!29267 (get!16945 lt!1766436)))))))

(assert (= (and d!1452775 res!1930083) b!4610153))

(declare-fun b_lambda!170405 () Bool)

(assert (=> (not b_lambda!170405) (not d!1452775)))

(declare-fun m!5441471 () Bool)

(assert (=> d!1452775 m!5441471))

(declare-fun m!5441473 () Bool)

(assert (=> d!1452775 m!5441473))

(declare-fun m!5441475 () Bool)

(assert (=> d!1452775 m!5441475))

(declare-fun m!5441477 () Bool)

(assert (=> b!4610153 m!5441477))

(assert (=> b!4610010 d!1452775))

(declare-fun d!1452781 () Bool)

(assert (=> d!1452781 (= (get!16945 lt!1766436) (v!45507 lt!1766436))))

(assert (=> b!4610010 d!1452781))

(declare-fun d!1452783 () Bool)

(assert (=> d!1452783 (dynLambda!21440 lambda!188315 (h!57210 (toList!4764 lm!1477)))))

(declare-fun lt!1766545 () Unit!109347)

(declare-fun choose!31040 (List!51342 Int tuple2!51948) Unit!109347)

(assert (=> d!1452783 (= lt!1766545 (choose!31040 (toList!4764 lm!1477) lambda!188315 (h!57210 (toList!4764 lm!1477))))))

(declare-fun e!2875775 () Bool)

(assert (=> d!1452783 e!2875775))

(declare-fun res!1930090 () Bool)

(assert (=> d!1452783 (=> (not res!1930090) (not e!2875775))))

(assert (=> d!1452783 (= res!1930090 (forall!10696 (toList!4764 lm!1477) lambda!188315))))

(assert (=> d!1452783 (= (forallContained!2942 (toList!4764 lm!1477) lambda!188315 (h!57210 (toList!4764 lm!1477))) lt!1766545)))

(declare-fun b!4610166 () Bool)

(assert (=> b!4610166 (= e!2875775 (contains!14228 (toList!4764 lm!1477) (h!57210 (toList!4764 lm!1477))))))

(assert (= (and d!1452783 res!1930090) b!4610166))

(declare-fun b_lambda!170409 () Bool)

(assert (=> (not b_lambda!170409) (not d!1452783)))

(declare-fun m!5441497 () Bool)

(assert (=> d!1452783 m!5441497))

(declare-fun m!5441499 () Bool)

(assert (=> d!1452783 m!5441499))

(declare-fun m!5441501 () Bool)

(assert (=> d!1452783 m!5441501))

(declare-fun m!5441503 () Bool)

(assert (=> b!4610166 m!5441503))

(assert (=> b!4610010 d!1452783))

(declare-fun b!4610183 () Bool)

(declare-fun e!2875790 () Bool)

(declare-fun e!2875788 () Bool)

(assert (=> b!4610183 (= e!2875790 e!2875788)))

(declare-fun res!1930100 () Bool)

(assert (=> b!4610183 (=> (not res!1930100) (not e!2875788))))

(declare-fun lt!1766548 () Option!11446)

(declare-fun isDefined!8715 (Option!11446) Bool)

(assert (=> b!4610183 (= res!1930100 (isDefined!8715 lt!1766548))))

(declare-fun b!4610184 () Bool)

(declare-fun e!2875786 () Bool)

(assert (=> b!4610184 (= e!2875786 (not (containsKey!2264 (_2!29268 lt!1766445) key!3287)))))

(declare-fun b!4610185 () Bool)

(declare-fun e!2875789 () Option!11446)

(assert (=> b!4610185 (= e!2875789 (getPair!242 (t!358335 (_2!29268 lt!1766445)) key!3287))))

(declare-fun b!4610186 () Bool)

(declare-fun res!1930101 () Bool)

(assert (=> b!4610186 (=> (not res!1930101) (not e!2875788))))

(assert (=> b!4610186 (= res!1930101 (= (_1!29267 (get!16945 lt!1766548)) key!3287))))

(declare-fun b!4610187 () Bool)

(assert (=> b!4610187 (= e!2875789 None!11445)))

(declare-fun b!4610188 () Bool)

(declare-fun e!2875787 () Option!11446)

(assert (=> b!4610188 (= e!2875787 (Some!11445 (h!57209 (_2!29268 lt!1766445))))))

(declare-fun d!1452793 () Bool)

(assert (=> d!1452793 e!2875790))

(declare-fun res!1930099 () Bool)

(assert (=> d!1452793 (=> res!1930099 e!2875790)))

(assert (=> d!1452793 (= res!1930099 e!2875786)))

(declare-fun res!1930102 () Bool)

(assert (=> d!1452793 (=> (not res!1930102) (not e!2875786))))

(declare-fun isEmpty!28898 (Option!11446) Bool)

(assert (=> d!1452793 (= res!1930102 (isEmpty!28898 lt!1766548))))

(assert (=> d!1452793 (= lt!1766548 e!2875787)))

(declare-fun c!789667 () Bool)

(assert (=> d!1452793 (= c!789667 (and ((_ is Cons!51217) (_2!29268 lt!1766445)) (= (_1!29267 (h!57209 (_2!29268 lt!1766445))) key!3287)))))

(assert (=> d!1452793 (noDuplicateKeys!1374 (_2!29268 lt!1766445))))

(assert (=> d!1452793 (= (getPair!242 (_2!29268 lt!1766445) key!3287) lt!1766548)))

(declare-fun b!4610189 () Bool)

(assert (=> b!4610189 (= e!2875787 e!2875789)))

(declare-fun c!789668 () Bool)

(assert (=> b!4610189 (= c!789668 ((_ is Cons!51217) (_2!29268 lt!1766445)))))

(declare-fun b!4610190 () Bool)

(assert (=> b!4610190 (= e!2875788 (contains!14232 (_2!29268 lt!1766445) (get!16945 lt!1766548)))))

(assert (= (and d!1452793 c!789667) b!4610188))

(assert (= (and d!1452793 (not c!789667)) b!4610189))

(assert (= (and b!4610189 c!789668) b!4610185))

(assert (= (and b!4610189 (not c!789668)) b!4610187))

(assert (= (and d!1452793 res!1930102) b!4610184))

(assert (= (and d!1452793 (not res!1930099)) b!4610183))

(assert (= (and b!4610183 res!1930100) b!4610186))

(assert (= (and b!4610186 res!1930101) b!4610190))

(declare-fun m!5441505 () Bool)

(assert (=> d!1452793 m!5441505))

(assert (=> d!1452793 m!5441171))

(assert (=> b!4610184 m!5441177))

(declare-fun m!5441507 () Bool)

(assert (=> b!4610190 m!5441507))

(assert (=> b!4610190 m!5441507))

(declare-fun m!5441509 () Bool)

(assert (=> b!4610190 m!5441509))

(declare-fun m!5441511 () Bool)

(assert (=> b!4610185 m!5441511))

(assert (=> b!4610186 m!5441507))

(declare-fun m!5441513 () Bool)

(assert (=> b!4610183 m!5441513))

(assert (=> b!4610010 d!1452793))

(declare-fun d!1452795 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8705 (List!51341) (InoxSet tuple2!51946))

(assert (=> d!1452795 (= (eq!747 lt!1766446 lt!1766422) (= (content!8705 (toList!4763 lt!1766446)) (content!8705 (toList!4763 lt!1766422))))))

(declare-fun bs!1015884 () Bool)

(assert (= bs!1015884 d!1452795))

(declare-fun m!5441515 () Bool)

(assert (=> bs!1015884 m!5441515))

(declare-fun m!5441517 () Bool)

(assert (=> bs!1015884 m!5441517))

(assert (=> b!4610013 d!1452795))

(declare-fun bs!1015933 () Bool)

(declare-fun b!4610266 () Bool)

(assert (= bs!1015933 (and b!4610266 b!4610010)))

(declare-fun lambda!188405 () Int)

(assert (=> bs!1015933 (not (= lambda!188405 lambda!188316))))

(assert (=> b!4610266 true))

(declare-fun bs!1015938 () Bool)

(declare-fun b!4610264 () Bool)

(assert (= bs!1015938 (and b!4610264 b!4610010)))

(declare-fun lambda!188407 () Int)

(assert (=> bs!1015938 (not (= lambda!188407 lambda!188316))))

(declare-fun bs!1015940 () Bool)

(assert (= bs!1015940 (and b!4610264 b!4610266)))

(assert (=> bs!1015940 (= lambda!188407 lambda!188405)))

(assert (=> b!4610264 true))

(declare-fun lambda!188408 () Int)

(assert (=> bs!1015938 (not (= lambda!188408 lambda!188316))))

(declare-fun lt!1766725 () ListMap!4025)

(assert (=> bs!1015940 (= (= lt!1766725 lt!1766429) (= lambda!188408 lambda!188405))))

(assert (=> b!4610264 (= (= lt!1766725 lt!1766429) (= lambda!188408 lambda!188407))))

(assert (=> b!4610264 true))

(declare-fun bs!1015946 () Bool)

(declare-fun d!1452797 () Bool)

(assert (= bs!1015946 (and d!1452797 b!4610010)))

(declare-fun lambda!188409 () Int)

(assert (=> bs!1015946 (not (= lambda!188409 lambda!188316))))

(declare-fun bs!1015947 () Bool)

(assert (= bs!1015947 (and d!1452797 b!4610266)))

(declare-fun lt!1766726 () ListMap!4025)

(assert (=> bs!1015947 (= (= lt!1766726 lt!1766429) (= lambda!188409 lambda!188405))))

(declare-fun bs!1015948 () Bool)

(assert (= bs!1015948 (and d!1452797 b!4610264)))

(assert (=> bs!1015948 (= (= lt!1766726 lt!1766429) (= lambda!188409 lambda!188407))))

(assert (=> bs!1015948 (= (= lt!1766726 lt!1766725) (= lambda!188409 lambda!188408))))

(assert (=> d!1452797 true))

(declare-fun b!4610263 () Bool)

(declare-fun e!2875838 () Bool)

(declare-fun call!321462 () Bool)

(assert (=> b!4610263 (= e!2875838 call!321462)))

(declare-fun e!2875839 () ListMap!4025)

(assert (=> b!4610264 (= e!2875839 lt!1766725)))

(declare-fun lt!1766712 () ListMap!4025)

(declare-fun +!1786 (ListMap!4025 tuple2!51946) ListMap!4025)

(assert (=> b!4610264 (= lt!1766712 (+!1786 lt!1766429 (h!57209 (_2!29268 lt!1766445))))))

(assert (=> b!4610264 (= lt!1766725 (addToMapMapFromBucket!844 (t!358335 (_2!29268 lt!1766445)) (+!1786 lt!1766429 (h!57209 (_2!29268 lt!1766445)))))))

(declare-fun lt!1766722 () Unit!109347)

(declare-fun call!321463 () Unit!109347)

(assert (=> b!4610264 (= lt!1766722 call!321463)))

(assert (=> b!4610264 (forall!10698 (toList!4763 lt!1766429) lambda!188407)))

(declare-fun lt!1766718 () Unit!109347)

(assert (=> b!4610264 (= lt!1766718 lt!1766722)))

(assert (=> b!4610264 (forall!10698 (toList!4763 lt!1766712) lambda!188408)))

(declare-fun lt!1766708 () Unit!109347)

(declare-fun Unit!109365 () Unit!109347)

(assert (=> b!4610264 (= lt!1766708 Unit!109365)))

(assert (=> b!4610264 (forall!10698 (t!358335 (_2!29268 lt!1766445)) lambda!188408)))

(declare-fun lt!1766720 () Unit!109347)

(declare-fun Unit!109366 () Unit!109347)

(assert (=> b!4610264 (= lt!1766720 Unit!109366)))

(declare-fun lt!1766709 () Unit!109347)

(declare-fun Unit!109367 () Unit!109347)

(assert (=> b!4610264 (= lt!1766709 Unit!109367)))

(declare-fun lt!1766713 () Unit!109347)

(assert (=> b!4610264 (= lt!1766713 (forallContained!2943 (toList!4763 lt!1766712) lambda!188408 (h!57209 (_2!29268 lt!1766445))))))

(assert (=> b!4610264 (contains!14230 lt!1766712 (_1!29267 (h!57209 (_2!29268 lt!1766445))))))

(declare-fun lt!1766719 () Unit!109347)

(declare-fun Unit!109368 () Unit!109347)

(assert (=> b!4610264 (= lt!1766719 Unit!109368)))

(assert (=> b!4610264 (contains!14230 lt!1766725 (_1!29267 (h!57209 (_2!29268 lt!1766445))))))

(declare-fun lt!1766717 () Unit!109347)

(declare-fun Unit!109369 () Unit!109347)

(assert (=> b!4610264 (= lt!1766717 Unit!109369)))

(assert (=> b!4610264 (forall!10698 (_2!29268 lt!1766445) lambda!188408)))

(declare-fun lt!1766721 () Unit!109347)

(declare-fun Unit!109370 () Unit!109347)

(assert (=> b!4610264 (= lt!1766721 Unit!109370)))

(declare-fun call!321461 () Bool)

(assert (=> b!4610264 call!321461))

(declare-fun lt!1766711 () Unit!109347)

(declare-fun Unit!109371 () Unit!109347)

(assert (=> b!4610264 (= lt!1766711 Unit!109371)))

(declare-fun lt!1766727 () Unit!109347)

(declare-fun Unit!109372 () Unit!109347)

(assert (=> b!4610264 (= lt!1766727 Unit!109372)))

(declare-fun lt!1766714 () Unit!109347)

(declare-fun addForallContainsKeyThenBeforeAdding!454 (ListMap!4025 ListMap!4025 K!12585 V!12831) Unit!109347)

(assert (=> b!4610264 (= lt!1766714 (addForallContainsKeyThenBeforeAdding!454 lt!1766429 lt!1766725 (_1!29267 (h!57209 (_2!29268 lt!1766445))) (_2!29267 (h!57209 (_2!29268 lt!1766445)))))))

(assert (=> b!4610264 (forall!10698 (toList!4763 lt!1766429) lambda!188408)))

(declare-fun lt!1766715 () Unit!109347)

(assert (=> b!4610264 (= lt!1766715 lt!1766714)))

(assert (=> b!4610264 (forall!10698 (toList!4763 lt!1766429) lambda!188408)))

(declare-fun lt!1766716 () Unit!109347)

(declare-fun Unit!109373 () Unit!109347)

(assert (=> b!4610264 (= lt!1766716 Unit!109373)))

(declare-fun res!1930139 () Bool)

(assert (=> b!4610264 (= res!1930139 (forall!10698 (_2!29268 lt!1766445) lambda!188408))))

(assert (=> b!4610264 (=> (not res!1930139) (not e!2875838))))

(assert (=> b!4610264 e!2875838))

(declare-fun lt!1766724 () Unit!109347)

(declare-fun Unit!109374 () Unit!109347)

(assert (=> b!4610264 (= lt!1766724 Unit!109374)))

(declare-fun c!789687 () Bool)

(declare-fun bm!321456 () Bool)

(assert (=> bm!321456 (= call!321462 (forall!10698 (toList!4763 lt!1766429) (ite c!789687 lambda!188405 lambda!188408)))))

(declare-fun e!2875837 () Bool)

(assert (=> d!1452797 e!2875837))

(declare-fun res!1930138 () Bool)

(assert (=> d!1452797 (=> (not res!1930138) (not e!2875837))))

(assert (=> d!1452797 (= res!1930138 (forall!10698 (_2!29268 lt!1766445) lambda!188409))))

(assert (=> d!1452797 (= lt!1766726 e!2875839)))

(assert (=> d!1452797 (= c!789687 ((_ is Nil!51217) (_2!29268 lt!1766445)))))

(assert (=> d!1452797 (noDuplicateKeys!1374 (_2!29268 lt!1766445))))

(assert (=> d!1452797 (= (addToMapMapFromBucket!844 (_2!29268 lt!1766445) lt!1766429) lt!1766726)))

(declare-fun b!4610265 () Bool)

(declare-fun invariantList!1150 (List!51341) Bool)

(assert (=> b!4610265 (= e!2875837 (invariantList!1150 (toList!4763 lt!1766726)))))

(declare-fun bm!321457 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!454 (ListMap!4025) Unit!109347)

(assert (=> bm!321457 (= call!321463 (lemmaContainsAllItsOwnKeys!454 lt!1766429))))

(assert (=> b!4610266 (= e!2875839 lt!1766429)))

(declare-fun lt!1766723 () Unit!109347)

(assert (=> b!4610266 (= lt!1766723 call!321463)))

(assert (=> b!4610266 call!321462))

(declare-fun lt!1766710 () Unit!109347)

(assert (=> b!4610266 (= lt!1766710 lt!1766723)))

(assert (=> b!4610266 call!321461))

(declare-fun lt!1766728 () Unit!109347)

(declare-fun Unit!109375 () Unit!109347)

(assert (=> b!4610266 (= lt!1766728 Unit!109375)))

(declare-fun b!4610267 () Bool)

(declare-fun res!1930137 () Bool)

(assert (=> b!4610267 (=> (not res!1930137) (not e!2875837))))

(assert (=> b!4610267 (= res!1930137 (forall!10698 (toList!4763 lt!1766429) lambda!188409))))

(declare-fun bm!321458 () Bool)

(assert (=> bm!321458 (= call!321461 (forall!10698 (ite c!789687 (toList!4763 lt!1766429) (toList!4763 lt!1766712)) (ite c!789687 lambda!188405 lambda!188408)))))

(assert (= (and d!1452797 c!789687) b!4610266))

(assert (= (and d!1452797 (not c!789687)) b!4610264))

(assert (= (and b!4610264 res!1930139) b!4610263))

(assert (= (or b!4610266 b!4610264) bm!321458))

(assert (= (or b!4610266 b!4610263) bm!321456))

(assert (= (or b!4610266 b!4610264) bm!321457))

(assert (= (and d!1452797 res!1930138) b!4610267))

(assert (= (and b!4610267 res!1930137) b!4610265))

(declare-fun m!5441659 () Bool)

(assert (=> d!1452797 m!5441659))

(assert (=> d!1452797 m!5441171))

(declare-fun m!5441661 () Bool)

(assert (=> bm!321456 m!5441661))

(declare-fun m!5441663 () Bool)

(assert (=> b!4610264 m!5441663))

(declare-fun m!5441665 () Bool)

(assert (=> b!4610264 m!5441665))

(declare-fun m!5441667 () Bool)

(assert (=> b!4610264 m!5441667))

(declare-fun m!5441669 () Bool)

(assert (=> b!4610264 m!5441669))

(declare-fun m!5441671 () Bool)

(assert (=> b!4610264 m!5441671))

(declare-fun m!5441673 () Bool)

(assert (=> b!4610264 m!5441673))

(declare-fun m!5441675 () Bool)

(assert (=> b!4610264 m!5441675))

(declare-fun m!5441677 () Bool)

(assert (=> b!4610264 m!5441677))

(declare-fun m!5441679 () Bool)

(assert (=> b!4610264 m!5441679))

(declare-fun m!5441681 () Bool)

(assert (=> b!4610264 m!5441681))

(assert (=> b!4610264 m!5441669))

(assert (=> b!4610264 m!5441675))

(declare-fun m!5441683 () Bool)

(assert (=> b!4610264 m!5441683))

(assert (=> b!4610264 m!5441683))

(declare-fun m!5441685 () Bool)

(assert (=> b!4610265 m!5441685))

(declare-fun m!5441687 () Bool)

(assert (=> bm!321457 m!5441687))

(declare-fun m!5441689 () Bool)

(assert (=> bm!321458 m!5441689))

(declare-fun m!5441691 () Bool)

(assert (=> b!4610267 m!5441691))

(assert (=> b!4610013 d!1452797))

(declare-fun bs!1015961 () Bool)

(declare-fun d!1452825 () Bool)

(assert (= bs!1015961 (and d!1452825 start!461020)))

(declare-fun lambda!188415 () Int)

(assert (=> bs!1015961 (= lambda!188415 lambda!188314)))

(declare-fun bs!1015962 () Bool)

(assert (= bs!1015962 (and d!1452825 b!4610010)))

(assert (=> bs!1015962 (not (= lambda!188415 lambda!188315))))

(declare-fun bs!1015963 () Bool)

(assert (= bs!1015963 (and d!1452825 d!1452739)))

(assert (=> bs!1015963 (= lambda!188415 lambda!188335)))

(declare-fun lt!1766743 () ListMap!4025)

(assert (=> d!1452825 (invariantList!1150 (toList!4763 lt!1766743))))

(declare-fun e!2875849 () ListMap!4025)

(assert (=> d!1452825 (= lt!1766743 e!2875849)))

(declare-fun c!789694 () Bool)

(assert (=> d!1452825 (= c!789694 ((_ is Cons!51218) (toList!4764 lt!1766433)))))

(assert (=> d!1452825 (forall!10696 (toList!4764 lt!1766433) lambda!188415)))

(assert (=> d!1452825 (= (extractMap!1434 (toList!4764 lt!1766433)) lt!1766743)))

(declare-fun b!4610285 () Bool)

(assert (=> b!4610285 (= e!2875849 (addToMapMapFromBucket!844 (_2!29268 (h!57210 (toList!4764 lt!1766433))) (extractMap!1434 (t!358336 (toList!4764 lt!1766433)))))))

(declare-fun b!4610286 () Bool)

(assert (=> b!4610286 (= e!2875849 (ListMap!4026 Nil!51217))))

(assert (= (and d!1452825 c!789694) b!4610285))

(assert (= (and d!1452825 (not c!789694)) b!4610286))

(declare-fun m!5441699 () Bool)

(assert (=> d!1452825 m!5441699))

(declare-fun m!5441701 () Bool)

(assert (=> d!1452825 m!5441701))

(declare-fun m!5441703 () Bool)

(assert (=> b!4610285 m!5441703))

(assert (=> b!4610285 m!5441703))

(declare-fun m!5441705 () Bool)

(assert (=> b!4610285 m!5441705))

(assert (=> b!4610013 d!1452825))

(declare-fun b!4610326 () Bool)

(declare-datatypes ((List!51344 0))(
  ( (Nil!51220) (Cons!51220 (h!57214 K!12585) (t!358338 List!51344)) )
))
(declare-fun e!2875880 () List!51344)

(declare-fun getKeysList!599 (List!51341) List!51344)

(assert (=> b!4610326 (= e!2875880 (getKeysList!599 (toList!4763 (extractMap!1434 (t!358336 (toList!4764 lm!1477))))))))

(declare-fun b!4610327 () Bool)

(declare-fun e!2875879 () Unit!109347)

(declare-fun Unit!109376 () Unit!109347)

(assert (=> b!4610327 (= e!2875879 Unit!109376)))

(declare-fun b!4610328 () Bool)

(declare-fun e!2875877 () Bool)

(declare-fun e!2875876 () Bool)

(assert (=> b!4610328 (= e!2875877 e!2875876)))

(declare-fun res!1930153 () Bool)

(assert (=> b!4610328 (=> (not res!1930153) (not e!2875876))))

(declare-datatypes ((Option!11449 0))(
  ( (None!11448) (Some!11448 (v!45514 V!12831)) )
))
(declare-fun isDefined!8716 (Option!11449) Bool)

(declare-fun getValueByKey!1365 (List!51341 K!12585) Option!11449)

(assert (=> b!4610328 (= res!1930153 (isDefined!8716 (getValueByKey!1365 (toList!4763 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))) key!3287)))))

(declare-fun d!1452829 () Bool)

(assert (=> d!1452829 e!2875877))

(declare-fun res!1930152 () Bool)

(assert (=> d!1452829 (=> res!1930152 e!2875877)))

(declare-fun e!2875878 () Bool)

(assert (=> d!1452829 (= res!1930152 e!2875878)))

(declare-fun res!1930154 () Bool)

(assert (=> d!1452829 (=> (not res!1930154) (not e!2875878))))

(declare-fun lt!1766773 () Bool)

(assert (=> d!1452829 (= res!1930154 (not lt!1766773))))

(declare-fun lt!1766775 () Bool)

(assert (=> d!1452829 (= lt!1766773 lt!1766775)))

(declare-fun lt!1766776 () Unit!109347)

(declare-fun e!2875875 () Unit!109347)

(assert (=> d!1452829 (= lt!1766776 e!2875875)))

(declare-fun c!789706 () Bool)

(assert (=> d!1452829 (= c!789706 lt!1766775)))

(declare-fun containsKey!2267 (List!51341 K!12585) Bool)

(assert (=> d!1452829 (= lt!1766775 (containsKey!2267 (toList!4763 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))) key!3287))))

(assert (=> d!1452829 (= (contains!14230 (extractMap!1434 (t!358336 (toList!4764 lm!1477))) key!3287) lt!1766773)))

(declare-fun b!4610329 () Bool)

(assert (=> b!4610329 false))

(declare-fun lt!1766772 () Unit!109347)

(declare-fun lt!1766774 () Unit!109347)

(assert (=> b!4610329 (= lt!1766772 lt!1766774)))

(assert (=> b!4610329 (containsKey!2267 (toList!4763 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!598 (List!51341 K!12585) Unit!109347)

(assert (=> b!4610329 (= lt!1766774 (lemmaInGetKeysListThenContainsKey!598 (toList!4763 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))) key!3287))))

(declare-fun Unit!109381 () Unit!109347)

(assert (=> b!4610329 (= e!2875879 Unit!109381)))

(declare-fun bm!321463 () Bool)

(declare-fun call!321468 () Bool)

(declare-fun contains!14233 (List!51344 K!12585) Bool)

(assert (=> bm!321463 (= call!321468 (contains!14233 e!2875880 key!3287))))

(declare-fun c!789705 () Bool)

(assert (=> bm!321463 (= c!789705 c!789706)))

(declare-fun b!4610330 () Bool)

(assert (=> b!4610330 (= e!2875875 e!2875879)))

(declare-fun c!789707 () Bool)

(assert (=> b!4610330 (= c!789707 call!321468)))

(declare-fun b!4610331 () Bool)

(declare-fun lt!1766779 () Unit!109347)

(assert (=> b!4610331 (= e!2875875 lt!1766779)))

(declare-fun lt!1766777 () Unit!109347)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1267 (List!51341 K!12585) Unit!109347)

(assert (=> b!4610331 (= lt!1766777 (lemmaContainsKeyImpliesGetValueByKeyDefined!1267 (toList!4763 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))) key!3287))))

(assert (=> b!4610331 (isDefined!8716 (getValueByKey!1365 (toList!4763 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))) key!3287))))

(declare-fun lt!1766778 () Unit!109347)

(assert (=> b!4610331 (= lt!1766778 lt!1766777)))

(declare-fun lemmaInListThenGetKeysListContains!594 (List!51341 K!12585) Unit!109347)

(assert (=> b!4610331 (= lt!1766779 (lemmaInListThenGetKeysListContains!594 (toList!4763 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))) key!3287))))

(assert (=> b!4610331 call!321468))

(declare-fun b!4610332 () Bool)

(declare-fun keys!17967 (ListMap!4025) List!51344)

(assert (=> b!4610332 (= e!2875876 (contains!14233 (keys!17967 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))) key!3287))))

(declare-fun b!4610333 () Bool)

(assert (=> b!4610333 (= e!2875878 (not (contains!14233 (keys!17967 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))) key!3287)))))

(declare-fun b!4610334 () Bool)

(assert (=> b!4610334 (= e!2875880 (keys!17967 (extractMap!1434 (t!358336 (toList!4764 lm!1477)))))))

(assert (= (and d!1452829 c!789706) b!4610331))

(assert (= (and d!1452829 (not c!789706)) b!4610330))

(assert (= (and b!4610330 c!789707) b!4610329))

(assert (= (and b!4610330 (not c!789707)) b!4610327))

(assert (= (or b!4610331 b!4610330) bm!321463))

(assert (= (and bm!321463 c!789705) b!4610326))

(assert (= (and bm!321463 (not c!789705)) b!4610334))

(assert (= (and d!1452829 res!1930154) b!4610333))

(assert (= (and d!1452829 (not res!1930152)) b!4610328))

(assert (= (and b!4610328 res!1930153) b!4610332))

(declare-fun m!5441747 () Bool)

(assert (=> b!4610328 m!5441747))

(assert (=> b!4610328 m!5441747))

(declare-fun m!5441749 () Bool)

(assert (=> b!4610328 m!5441749))

(declare-fun m!5441751 () Bool)

(assert (=> b!4610326 m!5441751))

(assert (=> b!4610333 m!5441227))

(declare-fun m!5441753 () Bool)

(assert (=> b!4610333 m!5441753))

(assert (=> b!4610333 m!5441753))

(declare-fun m!5441755 () Bool)

(assert (=> b!4610333 m!5441755))

(declare-fun m!5441757 () Bool)

(assert (=> b!4610331 m!5441757))

(assert (=> b!4610331 m!5441747))

(assert (=> b!4610331 m!5441747))

(assert (=> b!4610331 m!5441749))

(declare-fun m!5441759 () Bool)

(assert (=> b!4610331 m!5441759))

(assert (=> b!4610332 m!5441227))

(assert (=> b!4610332 m!5441753))

(assert (=> b!4610332 m!5441753))

(assert (=> b!4610332 m!5441755))

(declare-fun m!5441761 () Bool)

(assert (=> bm!321463 m!5441761))

(declare-fun m!5441763 () Bool)

(assert (=> d!1452829 m!5441763))

(assert (=> b!4610329 m!5441763))

(declare-fun m!5441765 () Bool)

(assert (=> b!4610329 m!5441765))

(assert (=> b!4610334 m!5441227))

(assert (=> b!4610334 m!5441753))

(assert (=> b!4610012 d!1452829))

(declare-fun bs!1015994 () Bool)

(declare-fun d!1452843 () Bool)

(assert (= bs!1015994 (and d!1452843 start!461020)))

(declare-fun lambda!188420 () Int)

(assert (=> bs!1015994 (= lambda!188420 lambda!188314)))

(declare-fun bs!1015995 () Bool)

(assert (= bs!1015995 (and d!1452843 b!4610010)))

(assert (=> bs!1015995 (not (= lambda!188420 lambda!188315))))

(declare-fun bs!1015996 () Bool)

(assert (= bs!1015996 (and d!1452843 d!1452739)))

(assert (=> bs!1015996 (= lambda!188420 lambda!188335)))

(declare-fun bs!1015997 () Bool)

(assert (= bs!1015997 (and d!1452843 d!1452825)))

(assert (=> bs!1015997 (= lambda!188420 lambda!188415)))

(declare-fun lt!1766780 () ListMap!4025)

(assert (=> d!1452843 (invariantList!1150 (toList!4763 lt!1766780))))

(declare-fun e!2875881 () ListMap!4025)

(assert (=> d!1452843 (= lt!1766780 e!2875881)))

(declare-fun c!789708 () Bool)

(assert (=> d!1452843 (= c!789708 ((_ is Cons!51218) (t!358336 (toList!4764 lm!1477))))))

(assert (=> d!1452843 (forall!10696 (t!358336 (toList!4764 lm!1477)) lambda!188420)))

(assert (=> d!1452843 (= (extractMap!1434 (t!358336 (toList!4764 lm!1477))) lt!1766780)))

(declare-fun b!4610335 () Bool)

(assert (=> b!4610335 (= e!2875881 (addToMapMapFromBucket!844 (_2!29268 (h!57210 (t!358336 (toList!4764 lm!1477)))) (extractMap!1434 (t!358336 (t!358336 (toList!4764 lm!1477))))))))

(declare-fun b!4610336 () Bool)

(assert (=> b!4610336 (= e!2875881 (ListMap!4026 Nil!51217))))

(assert (= (and d!1452843 c!789708) b!4610335))

(assert (= (and d!1452843 (not c!789708)) b!4610336))

(declare-fun m!5441767 () Bool)

(assert (=> d!1452843 m!5441767))

(declare-fun m!5441769 () Bool)

(assert (=> d!1452843 m!5441769))

(declare-fun m!5441771 () Bool)

(assert (=> b!4610335 m!5441771))

(assert (=> b!4610335 m!5441771))

(declare-fun m!5441773 () Bool)

(assert (=> b!4610335 m!5441773))

(assert (=> b!4610012 d!1452843))

(declare-fun bs!1015998 () Bool)

(declare-fun d!1452845 () Bool)

(assert (= bs!1015998 (and d!1452845 start!461020)))

(declare-fun lambda!188421 () Int)

(assert (=> bs!1015998 (= lambda!188421 lambda!188314)))

(declare-fun bs!1015999 () Bool)

(assert (= bs!1015999 (and d!1452845 d!1452739)))

(assert (=> bs!1015999 (= lambda!188421 lambda!188335)))

(declare-fun bs!1016000 () Bool)

(assert (= bs!1016000 (and d!1452845 b!4610010)))

(assert (=> bs!1016000 (not (= lambda!188421 lambda!188315))))

(declare-fun bs!1016001 () Bool)

(assert (= bs!1016001 (and d!1452845 d!1452825)))

(assert (=> bs!1016001 (= lambda!188421 lambda!188415)))

(declare-fun bs!1016002 () Bool)

(assert (= bs!1016002 (and d!1452845 d!1452843)))

(assert (=> bs!1016002 (= lambda!188421 lambda!188420)))

(declare-fun lt!1766781 () ListMap!4025)

(assert (=> d!1452845 (invariantList!1150 (toList!4763 lt!1766781))))

(declare-fun e!2875882 () ListMap!4025)

(assert (=> d!1452845 (= lt!1766781 e!2875882)))

(declare-fun c!789709 () Bool)

(assert (=> d!1452845 (= c!789709 ((_ is Cons!51218) (toList!4764 lt!1766441)))))

(assert (=> d!1452845 (forall!10696 (toList!4764 lt!1766441) lambda!188421)))

(assert (=> d!1452845 (= (extractMap!1434 (toList!4764 lt!1766441)) lt!1766781)))

(declare-fun b!4610337 () Bool)

(assert (=> b!4610337 (= e!2875882 (addToMapMapFromBucket!844 (_2!29268 (h!57210 (toList!4764 lt!1766441))) (extractMap!1434 (t!358336 (toList!4764 lt!1766441)))))))

(declare-fun b!4610338 () Bool)

(assert (=> b!4610338 (= e!2875882 (ListMap!4026 Nil!51217))))

(assert (= (and d!1452845 c!789709) b!4610337))

(assert (= (and d!1452845 (not c!789709)) b!4610338))

(declare-fun m!5441775 () Bool)

(assert (=> d!1452845 m!5441775))

(declare-fun m!5441777 () Bool)

(assert (=> d!1452845 m!5441777))

(declare-fun m!5441779 () Bool)

(assert (=> b!4610337 m!5441779))

(assert (=> b!4610337 m!5441779))

(declare-fun m!5441781 () Bool)

(assert (=> b!4610337 m!5441781))

(assert (=> b!4610012 d!1452845))

(declare-fun bs!1016003 () Bool)

(declare-fun d!1452847 () Bool)

(assert (= bs!1016003 (and d!1452847 d!1452845)))

(declare-fun lambda!188424 () Int)

(assert (=> bs!1016003 (= lambda!188424 lambda!188421)))

(declare-fun bs!1016004 () Bool)

(assert (= bs!1016004 (and d!1452847 start!461020)))

(assert (=> bs!1016004 (= lambda!188424 lambda!188314)))

(declare-fun bs!1016005 () Bool)

(assert (= bs!1016005 (and d!1452847 d!1452739)))

(assert (=> bs!1016005 (= lambda!188424 lambda!188335)))

(declare-fun bs!1016006 () Bool)

(assert (= bs!1016006 (and d!1452847 b!4610010)))

(assert (=> bs!1016006 (not (= lambda!188424 lambda!188315))))

(declare-fun bs!1016007 () Bool)

(assert (= bs!1016007 (and d!1452847 d!1452825)))

(assert (=> bs!1016007 (= lambda!188424 lambda!188415)))

(declare-fun bs!1016008 () Bool)

(assert (= bs!1016008 (and d!1452847 d!1452843)))

(assert (=> bs!1016008 (= lambda!188424 lambda!188420)))

(assert (=> d!1452847 (contains!14230 (extractMap!1434 (toList!4764 lt!1766441)) key!3287)))

(declare-fun lt!1766784 () Unit!109347)

(declare-fun choose!31042 (ListLongMap!3395 K!12585 Hashable!5773) Unit!109347)

(assert (=> d!1452847 (= lt!1766784 (choose!31042 lt!1766441 key!3287 hashF!1107))))

(assert (=> d!1452847 (forall!10696 (toList!4764 lt!1766441) lambda!188424)))

(assert (=> d!1452847 (= (lemmaListContainsThenExtractedMapContains!286 lt!1766441 key!3287 hashF!1107) lt!1766784)))

(declare-fun bs!1016009 () Bool)

(assert (= bs!1016009 d!1452847))

(assert (=> bs!1016009 m!5441225))

(assert (=> bs!1016009 m!5441225))

(declare-fun m!5441783 () Bool)

(assert (=> bs!1016009 m!5441783))

(declare-fun m!5441785 () Bool)

(assert (=> bs!1016009 m!5441785))

(declare-fun m!5441787 () Bool)

(assert (=> bs!1016009 m!5441787))

(assert (=> b!4610012 d!1452847))

(declare-fun b!4610339 () Bool)

(declare-fun e!2875888 () List!51344)

(assert (=> b!4610339 (= e!2875888 (getKeysList!599 (toList!4763 lt!1766430)))))

(declare-fun b!4610340 () Bool)

(declare-fun e!2875887 () Unit!109347)

(declare-fun Unit!109390 () Unit!109347)

(assert (=> b!4610340 (= e!2875887 Unit!109390)))

(declare-fun b!4610341 () Bool)

(declare-fun e!2875885 () Bool)

(declare-fun e!2875884 () Bool)

(assert (=> b!4610341 (= e!2875885 e!2875884)))

(declare-fun res!1930156 () Bool)

(assert (=> b!4610341 (=> (not res!1930156) (not e!2875884))))

(assert (=> b!4610341 (= res!1930156 (isDefined!8716 (getValueByKey!1365 (toList!4763 lt!1766430) key!3287)))))

(declare-fun d!1452849 () Bool)

(assert (=> d!1452849 e!2875885))

(declare-fun res!1930155 () Bool)

(assert (=> d!1452849 (=> res!1930155 e!2875885)))

(declare-fun e!2875886 () Bool)

(assert (=> d!1452849 (= res!1930155 e!2875886)))

(declare-fun res!1930157 () Bool)

(assert (=> d!1452849 (=> (not res!1930157) (not e!2875886))))

(declare-fun lt!1766786 () Bool)

(assert (=> d!1452849 (= res!1930157 (not lt!1766786))))

(declare-fun lt!1766788 () Bool)

(assert (=> d!1452849 (= lt!1766786 lt!1766788)))

(declare-fun lt!1766789 () Unit!109347)

(declare-fun e!2875883 () Unit!109347)

(assert (=> d!1452849 (= lt!1766789 e!2875883)))

(declare-fun c!789711 () Bool)

(assert (=> d!1452849 (= c!789711 lt!1766788)))

(assert (=> d!1452849 (= lt!1766788 (containsKey!2267 (toList!4763 lt!1766430) key!3287))))

(assert (=> d!1452849 (= (contains!14230 lt!1766430 key!3287) lt!1766786)))

(declare-fun b!4610342 () Bool)

(assert (=> b!4610342 false))

(declare-fun lt!1766785 () Unit!109347)

(declare-fun lt!1766787 () Unit!109347)

(assert (=> b!4610342 (= lt!1766785 lt!1766787)))

(assert (=> b!4610342 (containsKey!2267 (toList!4763 lt!1766430) key!3287)))

(assert (=> b!4610342 (= lt!1766787 (lemmaInGetKeysListThenContainsKey!598 (toList!4763 lt!1766430) key!3287))))

(declare-fun Unit!109391 () Unit!109347)

(assert (=> b!4610342 (= e!2875887 Unit!109391)))

(declare-fun bm!321464 () Bool)

(declare-fun call!321469 () Bool)

(assert (=> bm!321464 (= call!321469 (contains!14233 e!2875888 key!3287))))

(declare-fun c!789710 () Bool)

(assert (=> bm!321464 (= c!789710 c!789711)))

(declare-fun b!4610343 () Bool)

(assert (=> b!4610343 (= e!2875883 e!2875887)))

(declare-fun c!789712 () Bool)

(assert (=> b!4610343 (= c!789712 call!321469)))

(declare-fun b!4610344 () Bool)

(declare-fun lt!1766792 () Unit!109347)

(assert (=> b!4610344 (= e!2875883 lt!1766792)))

(declare-fun lt!1766790 () Unit!109347)

(assert (=> b!4610344 (= lt!1766790 (lemmaContainsKeyImpliesGetValueByKeyDefined!1267 (toList!4763 lt!1766430) key!3287))))

(assert (=> b!4610344 (isDefined!8716 (getValueByKey!1365 (toList!4763 lt!1766430) key!3287))))

(declare-fun lt!1766791 () Unit!109347)

(assert (=> b!4610344 (= lt!1766791 lt!1766790)))

(assert (=> b!4610344 (= lt!1766792 (lemmaInListThenGetKeysListContains!594 (toList!4763 lt!1766430) key!3287))))

(assert (=> b!4610344 call!321469))

(declare-fun b!4610345 () Bool)

(assert (=> b!4610345 (= e!2875884 (contains!14233 (keys!17967 lt!1766430) key!3287))))

(declare-fun b!4610346 () Bool)

(assert (=> b!4610346 (= e!2875886 (not (contains!14233 (keys!17967 lt!1766430) key!3287)))))

(declare-fun b!4610347 () Bool)

(assert (=> b!4610347 (= e!2875888 (keys!17967 lt!1766430))))

(assert (= (and d!1452849 c!789711) b!4610344))

(assert (= (and d!1452849 (not c!789711)) b!4610343))

(assert (= (and b!4610343 c!789712) b!4610342))

(assert (= (and b!4610343 (not c!789712)) b!4610340))

(assert (= (or b!4610344 b!4610343) bm!321464))

(assert (= (and bm!321464 c!789710) b!4610339))

(assert (= (and bm!321464 (not c!789710)) b!4610347))

(assert (= (and d!1452849 res!1930157) b!4610346))

(assert (= (and d!1452849 (not res!1930155)) b!4610341))

(assert (= (and b!4610341 res!1930156) b!4610345))

(declare-fun m!5441789 () Bool)

(assert (=> b!4610341 m!5441789))

(assert (=> b!4610341 m!5441789))

(declare-fun m!5441791 () Bool)

(assert (=> b!4610341 m!5441791))

(declare-fun m!5441793 () Bool)

(assert (=> b!4610339 m!5441793))

(declare-fun m!5441795 () Bool)

(assert (=> b!4610346 m!5441795))

(assert (=> b!4610346 m!5441795))

(declare-fun m!5441797 () Bool)

(assert (=> b!4610346 m!5441797))

(declare-fun m!5441799 () Bool)

(assert (=> b!4610344 m!5441799))

(assert (=> b!4610344 m!5441789))

(assert (=> b!4610344 m!5441789))

(assert (=> b!4610344 m!5441791))

(declare-fun m!5441801 () Bool)

(assert (=> b!4610344 m!5441801))

(assert (=> b!4610345 m!5441795))

(assert (=> b!4610345 m!5441795))

(assert (=> b!4610345 m!5441797))

(declare-fun m!5441803 () Bool)

(assert (=> bm!321464 m!5441803))

(declare-fun m!5441805 () Bool)

(assert (=> d!1452849 m!5441805))

(assert (=> b!4610342 m!5441805))

(declare-fun m!5441807 () Bool)

(assert (=> b!4610342 m!5441807))

(assert (=> b!4610347 m!5441795))

(assert (=> b!4610012 d!1452849))

(declare-fun d!1452851 () Bool)

(declare-fun lt!1766795 () List!51341)

(assert (=> d!1452851 (not (containsKey!2264 lt!1766795 key!3287))))

(declare-fun e!2875893 () List!51341)

(assert (=> d!1452851 (= lt!1766795 e!2875893)))

(declare-fun c!789718 () Bool)

(assert (=> d!1452851 (= c!789718 (and ((_ is Cons!51217) lt!1766451) (= (_1!29267 (h!57209 lt!1766451)) key!3287)))))

(assert (=> d!1452851 (noDuplicateKeys!1374 lt!1766451)))

(assert (=> d!1452851 (= (removePairForKey!999 lt!1766451 key!3287) lt!1766795)))

(declare-fun b!4610356 () Bool)

(assert (=> b!4610356 (= e!2875893 (t!358335 lt!1766451))))

(declare-fun b!4610359 () Bool)

(declare-fun e!2875894 () List!51341)

(assert (=> b!4610359 (= e!2875894 Nil!51217)))

(declare-fun b!4610357 () Bool)

(assert (=> b!4610357 (= e!2875893 e!2875894)))

(declare-fun c!789717 () Bool)

(assert (=> b!4610357 (= c!789717 ((_ is Cons!51217) lt!1766451))))

(declare-fun b!4610358 () Bool)

(assert (=> b!4610358 (= e!2875894 (Cons!51217 (h!57209 lt!1766451) (removePairForKey!999 (t!358335 lt!1766451) key!3287)))))

(assert (= (and d!1452851 c!789718) b!4610356))

(assert (= (and d!1452851 (not c!789718)) b!4610357))

(assert (= (and b!4610357 c!789717) b!4610358))

(assert (= (and b!4610357 (not c!789717)) b!4610359))

(declare-fun m!5441809 () Bool)

(assert (=> d!1452851 m!5441809))

(declare-fun m!5441811 () Bool)

(assert (=> d!1452851 m!5441811))

(declare-fun m!5441813 () Bool)

(assert (=> b!4610358 m!5441813))

(assert (=> b!4610014 d!1452851))

(declare-fun bs!1016010 () Bool)

(declare-fun d!1452853 () Bool)

(assert (= bs!1016010 (and d!1452853 d!1452845)))

(declare-fun lambda!188427 () Int)

(assert (=> bs!1016010 (= lambda!188427 lambda!188421)))

(declare-fun bs!1016011 () Bool)

(assert (= bs!1016011 (and d!1452853 start!461020)))

(assert (=> bs!1016011 (= lambda!188427 lambda!188314)))

(declare-fun bs!1016012 () Bool)

(assert (= bs!1016012 (and d!1452853 d!1452739)))

(assert (=> bs!1016012 (= lambda!188427 lambda!188335)))

(declare-fun bs!1016013 () Bool)

(assert (= bs!1016013 (and d!1452853 b!4610010)))

(assert (=> bs!1016013 (not (= lambda!188427 lambda!188315))))

(declare-fun bs!1016014 () Bool)

(assert (= bs!1016014 (and d!1452853 d!1452825)))

(assert (=> bs!1016014 (= lambda!188427 lambda!188415)))

(declare-fun bs!1016015 () Bool)

(assert (= bs!1016015 (and d!1452853 d!1452847)))

(assert (=> bs!1016015 (= lambda!188427 lambda!188424)))

(declare-fun bs!1016016 () Bool)

(assert (= bs!1016016 (and d!1452853 d!1452843)))

(assert (=> bs!1016016 (= lambda!188427 lambda!188420)))

(assert (=> d!1452853 (contains!14229 lm!1477 (hash!3313 hashF!1107 key!3287))))

(declare-fun lt!1766798 () Unit!109347)

(declare-fun choose!31043 (ListLongMap!3395 K!12585 Hashable!5773) Unit!109347)

(assert (=> d!1452853 (= lt!1766798 (choose!31043 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1452853 (forall!10696 (toList!4764 lm!1477) lambda!188427)))

(assert (=> d!1452853 (= (lemmaInGenMapThenLongMapContainsHash!448 lm!1477 key!3287 hashF!1107) lt!1766798)))

(declare-fun bs!1016017 () Bool)

(assert (= bs!1016017 d!1452853))

(assert (=> bs!1016017 m!5441239))

(assert (=> bs!1016017 m!5441239))

(declare-fun m!5441815 () Bool)

(assert (=> bs!1016017 m!5441815))

(declare-fun m!5441817 () Bool)

(assert (=> bs!1016017 m!5441817))

(declare-fun m!5441819 () Bool)

(assert (=> bs!1016017 m!5441819))

(assert (=> b!4610014 d!1452853))

(declare-fun d!1452855 () Bool)

(declare-fun get!16947 (Option!11448) List!51341)

(assert (=> d!1452855 (= (apply!12111 lm!1477 hash!344) (get!16947 (getValueByKey!1364 (toList!4764 lm!1477) hash!344)))))

(declare-fun bs!1016018 () Bool)

(assert (= bs!1016018 d!1452855))

(declare-fun m!5441821 () Bool)

(assert (=> bs!1016018 m!5441821))

(assert (=> bs!1016018 m!5441821))

(declare-fun m!5441823 () Bool)

(assert (=> bs!1016018 m!5441823))

(assert (=> b!4610014 d!1452855))

(declare-fun d!1452857 () Bool)

(assert (=> d!1452857 (dynLambda!21440 lambda!188314 lt!1766442)))

(declare-fun lt!1766799 () Unit!109347)

(assert (=> d!1452857 (= lt!1766799 (choose!31040 (toList!4764 lm!1477) lambda!188314 lt!1766442))))

(declare-fun e!2875895 () Bool)

(assert (=> d!1452857 e!2875895))

(declare-fun res!1930158 () Bool)

(assert (=> d!1452857 (=> (not res!1930158) (not e!2875895))))

(assert (=> d!1452857 (= res!1930158 (forall!10696 (toList!4764 lm!1477) lambda!188314))))

(assert (=> d!1452857 (= (forallContained!2942 (toList!4764 lm!1477) lambda!188314 lt!1766442) lt!1766799)))

(declare-fun b!4610360 () Bool)

(assert (=> b!4610360 (= e!2875895 (contains!14228 (toList!4764 lm!1477) lt!1766442))))

(assert (= (and d!1452857 res!1930158) b!4610360))

(declare-fun b_lambda!170423 () Bool)

(assert (=> (not b_lambda!170423) (not d!1452857)))

(declare-fun m!5441825 () Bool)

(assert (=> d!1452857 m!5441825))

(declare-fun m!5441827 () Bool)

(assert (=> d!1452857 m!5441827))

(assert (=> d!1452857 m!5441187))

(assert (=> b!4610360 m!5441151))

(assert (=> b!4610014 d!1452857))

(declare-fun d!1452859 () Bool)

(declare-fun e!2875896 () Bool)

(assert (=> d!1452859 e!2875896))

(declare-fun res!1930159 () Bool)

(assert (=> d!1452859 (=> res!1930159 e!2875896)))

(declare-fun lt!1766803 () Bool)

(assert (=> d!1452859 (= res!1930159 (not lt!1766803))))

(declare-fun lt!1766800 () Bool)

(assert (=> d!1452859 (= lt!1766803 lt!1766800)))

(declare-fun lt!1766802 () Unit!109347)

(declare-fun e!2875897 () Unit!109347)

(assert (=> d!1452859 (= lt!1766802 e!2875897)))

(declare-fun c!789719 () Bool)

(assert (=> d!1452859 (= c!789719 lt!1766800)))

(assert (=> d!1452859 (= lt!1766800 (containsKey!2266 (toList!4764 lm!1477) lt!1766425))))

(assert (=> d!1452859 (= (contains!14229 lm!1477 lt!1766425) lt!1766803)))

(declare-fun b!4610361 () Bool)

(declare-fun lt!1766801 () Unit!109347)

(assert (=> b!4610361 (= e!2875897 lt!1766801)))

(assert (=> b!4610361 (= lt!1766801 (lemmaContainsKeyImpliesGetValueByKeyDefined!1266 (toList!4764 lm!1477) lt!1766425))))

(assert (=> b!4610361 (isDefined!8714 (getValueByKey!1364 (toList!4764 lm!1477) lt!1766425))))

(declare-fun b!4610362 () Bool)

(declare-fun Unit!109394 () Unit!109347)

(assert (=> b!4610362 (= e!2875897 Unit!109394)))

(declare-fun b!4610363 () Bool)

(assert (=> b!4610363 (= e!2875896 (isDefined!8714 (getValueByKey!1364 (toList!4764 lm!1477) lt!1766425)))))

(assert (= (and d!1452859 c!789719) b!4610361))

(assert (= (and d!1452859 (not c!789719)) b!4610362))

(assert (= (and d!1452859 (not res!1930159)) b!4610363))

(declare-fun m!5441829 () Bool)

(assert (=> d!1452859 m!5441829))

(declare-fun m!5441831 () Bool)

(assert (=> b!4610361 m!5441831))

(declare-fun m!5441833 () Bool)

(assert (=> b!4610361 m!5441833))

(assert (=> b!4610361 m!5441833))

(declare-fun m!5441835 () Bool)

(assert (=> b!4610361 m!5441835))

(assert (=> b!4610363 m!5441833))

(assert (=> b!4610363 m!5441833))

(assert (=> b!4610363 m!5441835))

(assert (=> b!4610014 d!1452859))

(declare-fun d!1452861 () Bool)

(assert (=> d!1452861 (contains!14228 (toList!4764 lm!1477) (tuple2!51949 hash!344 lt!1766451))))

(declare-fun lt!1766806 () Unit!109347)

(declare-fun choose!31044 (List!51342 (_ BitVec 64) List!51341) Unit!109347)

(assert (=> d!1452861 (= lt!1766806 (choose!31044 (toList!4764 lm!1477) hash!344 lt!1766451))))

(declare-fun e!2875900 () Bool)

(assert (=> d!1452861 e!2875900))

(declare-fun res!1930162 () Bool)

(assert (=> d!1452861 (=> (not res!1930162) (not e!2875900))))

(assert (=> d!1452861 (= res!1930162 (isStrictlySorted!566 (toList!4764 lm!1477)))))

(assert (=> d!1452861 (= (lemmaGetValueByKeyImpliesContainsTuple!884 (toList!4764 lm!1477) hash!344 lt!1766451) lt!1766806)))

(declare-fun b!4610366 () Bool)

(assert (=> b!4610366 (= e!2875900 (= (getValueByKey!1364 (toList!4764 lm!1477) hash!344) (Some!11447 lt!1766451)))))

(assert (= (and d!1452861 res!1930162) b!4610366))

(declare-fun m!5441837 () Bool)

(assert (=> d!1452861 m!5441837))

(declare-fun m!5441839 () Bool)

(assert (=> d!1452861 m!5441839))

(assert (=> d!1452861 m!5441459))

(assert (=> b!4610366 m!5441821))

(assert (=> b!4610014 d!1452861))

(declare-fun d!1452863 () Bool)

(declare-fun lt!1766809 () Bool)

(declare-fun content!8706 (List!51342) (InoxSet tuple2!51948))

(assert (=> d!1452863 (= lt!1766809 (select (content!8706 (toList!4764 lm!1477)) lt!1766442))))

(declare-fun e!2875905 () Bool)

(assert (=> d!1452863 (= lt!1766809 e!2875905)))

(declare-fun res!1930167 () Bool)

(assert (=> d!1452863 (=> (not res!1930167) (not e!2875905))))

(assert (=> d!1452863 (= res!1930167 ((_ is Cons!51218) (toList!4764 lm!1477)))))

(assert (=> d!1452863 (= (contains!14228 (toList!4764 lm!1477) lt!1766442) lt!1766809)))

(declare-fun b!4610371 () Bool)

(declare-fun e!2875906 () Bool)

(assert (=> b!4610371 (= e!2875905 e!2875906)))

(declare-fun res!1930168 () Bool)

(assert (=> b!4610371 (=> res!1930168 e!2875906)))

(assert (=> b!4610371 (= res!1930168 (= (h!57210 (toList!4764 lm!1477)) lt!1766442))))

(declare-fun b!4610372 () Bool)

(assert (=> b!4610372 (= e!2875906 (contains!14228 (t!358336 (toList!4764 lm!1477)) lt!1766442))))

(assert (= (and d!1452863 res!1930167) b!4610371))

(assert (= (and b!4610371 (not res!1930168)) b!4610372))

(declare-fun m!5441841 () Bool)

(assert (=> d!1452863 m!5441841))

(declare-fun m!5441843 () Bool)

(assert (=> d!1452863 m!5441843))

(assert (=> b!4610372 m!5441169))

(assert (=> b!4610014 d!1452863))

(declare-fun d!1452865 () Bool)

(assert (=> d!1452865 (= (apply!12111 lt!1766441 hash!344) (get!16947 (getValueByKey!1364 (toList!4764 lt!1766441) hash!344)))))

(declare-fun bs!1016019 () Bool)

(assert (= bs!1016019 d!1452865))

(assert (=> bs!1016019 m!5441347))

(assert (=> bs!1016019 m!5441347))

(declare-fun m!5441845 () Bool)

(assert (=> bs!1016019 m!5441845))

(assert (=> b!4610015 d!1452865))

(declare-fun d!1452867 () Bool)

(declare-fun e!2875909 () Bool)

(assert (=> d!1452867 e!2875909))

(declare-fun res!1930173 () Bool)

(assert (=> d!1452867 (=> (not res!1930173) (not e!2875909))))

(declare-fun lt!1766821 () ListLongMap!3395)

(assert (=> d!1452867 (= res!1930173 (contains!14229 lt!1766821 (_1!29268 lt!1766449)))))

(declare-fun lt!1766818 () List!51342)

(assert (=> d!1452867 (= lt!1766821 (ListLongMap!3396 lt!1766818))))

(declare-fun lt!1766819 () Unit!109347)

(declare-fun lt!1766820 () Unit!109347)

(assert (=> d!1452867 (= lt!1766819 lt!1766820)))

(assert (=> d!1452867 (= (getValueByKey!1364 lt!1766818 (_1!29268 lt!1766449)) (Some!11447 (_2!29268 lt!1766449)))))

(declare-fun lemmaContainsTupThenGetReturnValue!808 (List!51342 (_ BitVec 64) List!51341) Unit!109347)

(assert (=> d!1452867 (= lt!1766820 (lemmaContainsTupThenGetReturnValue!808 lt!1766818 (_1!29268 lt!1766449) (_2!29268 lt!1766449)))))

(declare-fun insertStrictlySorted!500 (List!51342 (_ BitVec 64) List!51341) List!51342)

(assert (=> d!1452867 (= lt!1766818 (insertStrictlySorted!500 (toList!4764 lm!1477) (_1!29268 lt!1766449) (_2!29268 lt!1766449)))))

(assert (=> d!1452867 (= (+!1784 lm!1477 lt!1766449) lt!1766821)))

(declare-fun b!4610377 () Bool)

(declare-fun res!1930174 () Bool)

(assert (=> b!4610377 (=> (not res!1930174) (not e!2875909))))

(assert (=> b!4610377 (= res!1930174 (= (getValueByKey!1364 (toList!4764 lt!1766821) (_1!29268 lt!1766449)) (Some!11447 (_2!29268 lt!1766449))))))

(declare-fun b!4610378 () Bool)

(assert (=> b!4610378 (= e!2875909 (contains!14228 (toList!4764 lt!1766821) lt!1766449))))

(assert (= (and d!1452867 res!1930173) b!4610377))

(assert (= (and b!4610377 res!1930174) b!4610378))

(declare-fun m!5441847 () Bool)

(assert (=> d!1452867 m!5441847))

(declare-fun m!5441849 () Bool)

(assert (=> d!1452867 m!5441849))

(declare-fun m!5441851 () Bool)

(assert (=> d!1452867 m!5441851))

(declare-fun m!5441853 () Bool)

(assert (=> d!1452867 m!5441853))

(declare-fun m!5441855 () Bool)

(assert (=> b!4610377 m!5441855))

(declare-fun m!5441857 () Bool)

(assert (=> b!4610378 m!5441857))

(assert (=> b!4610017 d!1452867))

(declare-fun d!1452869 () Bool)

(declare-fun e!2875910 () Bool)

(assert (=> d!1452869 e!2875910))

(declare-fun res!1930175 () Bool)

(assert (=> d!1452869 (=> (not res!1930175) (not e!2875910))))

(declare-fun lt!1766825 () ListLongMap!3395)

(assert (=> d!1452869 (= res!1930175 (contains!14229 lt!1766825 (_1!29268 lt!1766445)))))

(declare-fun lt!1766822 () List!51342)

(assert (=> d!1452869 (= lt!1766825 (ListLongMap!3396 lt!1766822))))

(declare-fun lt!1766823 () Unit!109347)

(declare-fun lt!1766824 () Unit!109347)

(assert (=> d!1452869 (= lt!1766823 lt!1766824)))

(assert (=> d!1452869 (= (getValueByKey!1364 lt!1766822 (_1!29268 lt!1766445)) (Some!11447 (_2!29268 lt!1766445)))))

(assert (=> d!1452869 (= lt!1766824 (lemmaContainsTupThenGetReturnValue!808 lt!1766822 (_1!29268 lt!1766445) (_2!29268 lt!1766445)))))

(assert (=> d!1452869 (= lt!1766822 (insertStrictlySorted!500 (toList!4764 lt!1766426) (_1!29268 lt!1766445) (_2!29268 lt!1766445)))))

(assert (=> d!1452869 (= (+!1784 lt!1766426 lt!1766445) lt!1766825)))

(declare-fun b!4610379 () Bool)

(declare-fun res!1930176 () Bool)

(assert (=> b!4610379 (=> (not res!1930176) (not e!2875910))))

(assert (=> b!4610379 (= res!1930176 (= (getValueByKey!1364 (toList!4764 lt!1766825) (_1!29268 lt!1766445)) (Some!11447 (_2!29268 lt!1766445))))))

(declare-fun b!4610380 () Bool)

(assert (=> b!4610380 (= e!2875910 (contains!14228 (toList!4764 lt!1766825) lt!1766445))))

(assert (= (and d!1452869 res!1930175) b!4610379))

(assert (= (and b!4610379 res!1930176) b!4610380))

(declare-fun m!5441859 () Bool)

(assert (=> d!1452869 m!5441859))

(declare-fun m!5441861 () Bool)

(assert (=> d!1452869 m!5441861))

(declare-fun m!5441863 () Bool)

(assert (=> d!1452869 m!5441863))

(declare-fun m!5441865 () Bool)

(assert (=> d!1452869 m!5441865))

(declare-fun m!5441867 () Bool)

(assert (=> b!4610379 m!5441867))

(declare-fun m!5441869 () Bool)

(assert (=> b!4610380 m!5441869))

(assert (=> b!4610017 d!1452869))

(declare-fun d!1452871 () Bool)

(declare-fun res!1930181 () Bool)

(declare-fun e!2875915 () Bool)

(assert (=> d!1452871 (=> res!1930181 e!2875915)))

(assert (=> d!1452871 (= res!1930181 (and ((_ is Cons!51217) lt!1766451) (= (_1!29267 (h!57209 lt!1766451)) key!3287)))))

(assert (=> d!1452871 (= (containsKey!2264 lt!1766451 key!3287) e!2875915)))

(declare-fun b!4610385 () Bool)

(declare-fun e!2875916 () Bool)

(assert (=> b!4610385 (= e!2875915 e!2875916)))

(declare-fun res!1930182 () Bool)

(assert (=> b!4610385 (=> (not res!1930182) (not e!2875916))))

(assert (=> b!4610385 (= res!1930182 ((_ is Cons!51217) lt!1766451))))

(declare-fun b!4610386 () Bool)

(assert (=> b!4610386 (= e!2875916 (containsKey!2264 (t!358335 lt!1766451) key!3287))))

(assert (= (and d!1452871 (not res!1930181)) b!4610385))

(assert (= (and b!4610385 res!1930182) b!4610386))

(declare-fun m!5441871 () Bool)

(assert (=> b!4610386 m!5441871))

(assert (=> b!4610016 d!1452871))

(declare-fun d!1452873 () Bool)

(declare-fun res!1930183 () Bool)

(declare-fun e!2875917 () Bool)

(assert (=> d!1452873 (=> res!1930183 e!2875917)))

(assert (=> d!1452873 (= res!1930183 (and ((_ is Cons!51217) (_2!29268 lt!1766445)) (= (_1!29267 (h!57209 (_2!29268 lt!1766445))) key!3287)))))

(assert (=> d!1452873 (= (containsKey!2264 (_2!29268 lt!1766445) key!3287) e!2875917)))

(declare-fun b!4610387 () Bool)

(declare-fun e!2875918 () Bool)

(assert (=> b!4610387 (= e!2875917 e!2875918)))

(declare-fun res!1930184 () Bool)

(assert (=> b!4610387 (=> (not res!1930184) (not e!2875918))))

(assert (=> b!4610387 (= res!1930184 ((_ is Cons!51217) (_2!29268 lt!1766445)))))

(declare-fun b!4610388 () Bool)

(assert (=> b!4610388 (= e!2875918 (containsKey!2264 (t!358335 (_2!29268 lt!1766445)) key!3287))))

(assert (= (and d!1452873 (not res!1930183)) b!4610387))

(assert (= (and b!4610387 res!1930184) b!4610388))

(declare-fun m!5441873 () Bool)

(assert (=> b!4610388 m!5441873))

(assert (=> b!4609997 d!1452873))

(declare-fun b!4610389 () Bool)

(declare-fun e!2875924 () List!51344)

(assert (=> b!4610389 (= e!2875924 (getKeysList!599 (toList!4763 lt!1766448)))))

(declare-fun b!4610390 () Bool)

(declare-fun e!2875923 () Unit!109347)

(declare-fun Unit!109396 () Unit!109347)

(assert (=> b!4610390 (= e!2875923 Unit!109396)))

(declare-fun b!4610391 () Bool)

(declare-fun e!2875921 () Bool)

(declare-fun e!2875920 () Bool)

(assert (=> b!4610391 (= e!2875921 e!2875920)))

(declare-fun res!1930186 () Bool)

(assert (=> b!4610391 (=> (not res!1930186) (not e!2875920))))

(assert (=> b!4610391 (= res!1930186 (isDefined!8716 (getValueByKey!1365 (toList!4763 lt!1766448) key!3287)))))

(declare-fun d!1452875 () Bool)

(assert (=> d!1452875 e!2875921))

(declare-fun res!1930185 () Bool)

(assert (=> d!1452875 (=> res!1930185 e!2875921)))

(declare-fun e!2875922 () Bool)

(assert (=> d!1452875 (= res!1930185 e!2875922)))

(declare-fun res!1930187 () Bool)

(assert (=> d!1452875 (=> (not res!1930187) (not e!2875922))))

(declare-fun lt!1766827 () Bool)

(assert (=> d!1452875 (= res!1930187 (not lt!1766827))))

(declare-fun lt!1766829 () Bool)

(assert (=> d!1452875 (= lt!1766827 lt!1766829)))

(declare-fun lt!1766830 () Unit!109347)

(declare-fun e!2875919 () Unit!109347)

(assert (=> d!1452875 (= lt!1766830 e!2875919)))

(declare-fun c!789721 () Bool)

(assert (=> d!1452875 (= c!789721 lt!1766829)))

(assert (=> d!1452875 (= lt!1766829 (containsKey!2267 (toList!4763 lt!1766448) key!3287))))

(assert (=> d!1452875 (= (contains!14230 lt!1766448 key!3287) lt!1766827)))

(declare-fun b!4610392 () Bool)

(assert (=> b!4610392 false))

(declare-fun lt!1766826 () Unit!109347)

(declare-fun lt!1766828 () Unit!109347)

(assert (=> b!4610392 (= lt!1766826 lt!1766828)))

(assert (=> b!4610392 (containsKey!2267 (toList!4763 lt!1766448) key!3287)))

(assert (=> b!4610392 (= lt!1766828 (lemmaInGetKeysListThenContainsKey!598 (toList!4763 lt!1766448) key!3287))))

(declare-fun Unit!109397 () Unit!109347)

(assert (=> b!4610392 (= e!2875923 Unit!109397)))

(declare-fun bm!321465 () Bool)

(declare-fun call!321470 () Bool)

(assert (=> bm!321465 (= call!321470 (contains!14233 e!2875924 key!3287))))

(declare-fun c!789720 () Bool)

(assert (=> bm!321465 (= c!789720 c!789721)))

(declare-fun b!4610393 () Bool)

(assert (=> b!4610393 (= e!2875919 e!2875923)))

(declare-fun c!789722 () Bool)

(assert (=> b!4610393 (= c!789722 call!321470)))

(declare-fun b!4610394 () Bool)

(declare-fun lt!1766833 () Unit!109347)

(assert (=> b!4610394 (= e!2875919 lt!1766833)))

(declare-fun lt!1766831 () Unit!109347)

(assert (=> b!4610394 (= lt!1766831 (lemmaContainsKeyImpliesGetValueByKeyDefined!1267 (toList!4763 lt!1766448) key!3287))))

(assert (=> b!4610394 (isDefined!8716 (getValueByKey!1365 (toList!4763 lt!1766448) key!3287))))

(declare-fun lt!1766832 () Unit!109347)

(assert (=> b!4610394 (= lt!1766832 lt!1766831)))

(assert (=> b!4610394 (= lt!1766833 (lemmaInListThenGetKeysListContains!594 (toList!4763 lt!1766448) key!3287))))

(assert (=> b!4610394 call!321470))

(declare-fun b!4610395 () Bool)

(assert (=> b!4610395 (= e!2875920 (contains!14233 (keys!17967 lt!1766448) key!3287))))

(declare-fun b!4610396 () Bool)

(assert (=> b!4610396 (= e!2875922 (not (contains!14233 (keys!17967 lt!1766448) key!3287)))))

(declare-fun b!4610397 () Bool)

(assert (=> b!4610397 (= e!2875924 (keys!17967 lt!1766448))))

(assert (= (and d!1452875 c!789721) b!4610394))

(assert (= (and d!1452875 (not c!789721)) b!4610393))

(assert (= (and b!4610393 c!789722) b!4610392))

(assert (= (and b!4610393 (not c!789722)) b!4610390))

(assert (= (or b!4610394 b!4610393) bm!321465))

(assert (= (and bm!321465 c!789720) b!4610389))

(assert (= (and bm!321465 (not c!789720)) b!4610397))

(assert (= (and d!1452875 res!1930187) b!4610396))

(assert (= (and d!1452875 (not res!1930185)) b!4610391))

(assert (= (and b!4610391 res!1930186) b!4610395))

(declare-fun m!5441875 () Bool)

(assert (=> b!4610391 m!5441875))

(assert (=> b!4610391 m!5441875))

(declare-fun m!5441877 () Bool)

(assert (=> b!4610391 m!5441877))

(declare-fun m!5441879 () Bool)

(assert (=> b!4610389 m!5441879))

(declare-fun m!5441881 () Bool)

(assert (=> b!4610396 m!5441881))

(assert (=> b!4610396 m!5441881))

(declare-fun m!5441883 () Bool)

(assert (=> b!4610396 m!5441883))

(declare-fun m!5441885 () Bool)

(assert (=> b!4610394 m!5441885))

(assert (=> b!4610394 m!5441875))

(assert (=> b!4610394 m!5441875))

(assert (=> b!4610394 m!5441877))

(declare-fun m!5441887 () Bool)

(assert (=> b!4610394 m!5441887))

(assert (=> b!4610395 m!5441881))

(assert (=> b!4610395 m!5441881))

(assert (=> b!4610395 m!5441883))

(declare-fun m!5441889 () Bool)

(assert (=> bm!321465 m!5441889))

(declare-fun m!5441891 () Bool)

(assert (=> d!1452875 m!5441891))

(assert (=> b!4610392 m!5441891))

(declare-fun m!5441893 () Bool)

(assert (=> b!4610392 m!5441893))

(assert (=> b!4610397 m!5441881))

(assert (=> b!4610018 d!1452875))

(declare-fun bs!1016020 () Bool)

(declare-fun d!1452877 () Bool)

(assert (= bs!1016020 (and d!1452877 d!1452845)))

(declare-fun lambda!188428 () Int)

(assert (=> bs!1016020 (= lambda!188428 lambda!188421)))

(declare-fun bs!1016021 () Bool)

(assert (= bs!1016021 (and d!1452877 start!461020)))

(assert (=> bs!1016021 (= lambda!188428 lambda!188314)))

(declare-fun bs!1016022 () Bool)

(assert (= bs!1016022 (and d!1452877 d!1452739)))

(assert (=> bs!1016022 (= lambda!188428 lambda!188335)))

(declare-fun bs!1016023 () Bool)

(assert (= bs!1016023 (and d!1452877 b!4610010)))

(assert (=> bs!1016023 (not (= lambda!188428 lambda!188315))))

(declare-fun bs!1016024 () Bool)

(assert (= bs!1016024 (and d!1452877 d!1452825)))

(assert (=> bs!1016024 (= lambda!188428 lambda!188415)))

(declare-fun bs!1016025 () Bool)

(assert (= bs!1016025 (and d!1452877 d!1452853)))

(assert (=> bs!1016025 (= lambda!188428 lambda!188427)))

(declare-fun bs!1016026 () Bool)

(assert (= bs!1016026 (and d!1452877 d!1452847)))

(assert (=> bs!1016026 (= lambda!188428 lambda!188424)))

(declare-fun bs!1016027 () Bool)

(assert (= bs!1016027 (and d!1452877 d!1452843)))

(assert (=> bs!1016027 (= lambda!188428 lambda!188420)))

(declare-fun lt!1766834 () ListMap!4025)

(assert (=> d!1452877 (invariantList!1150 (toList!4763 lt!1766834))))

(declare-fun e!2875925 () ListMap!4025)

(assert (=> d!1452877 (= lt!1766834 e!2875925)))

(declare-fun c!789723 () Bool)

(assert (=> d!1452877 (= c!789723 ((_ is Cons!51218) (toList!4764 lm!1477)))))

(assert (=> d!1452877 (forall!10696 (toList!4764 lm!1477) lambda!188428)))

(assert (=> d!1452877 (= (extractMap!1434 (toList!4764 lm!1477)) lt!1766834)))

(declare-fun b!4610398 () Bool)

(assert (=> b!4610398 (= e!2875925 (addToMapMapFromBucket!844 (_2!29268 (h!57210 (toList!4764 lm!1477))) (extractMap!1434 (t!358336 (toList!4764 lm!1477)))))))

(declare-fun b!4610399 () Bool)

(assert (=> b!4610399 (= e!2875925 (ListMap!4026 Nil!51217))))

(assert (= (and d!1452877 c!789723) b!4610398))

(assert (= (and d!1452877 (not c!789723)) b!4610399))

(declare-fun m!5441895 () Bool)

(assert (=> d!1452877 m!5441895))

(declare-fun m!5441897 () Bool)

(assert (=> d!1452877 m!5441897))

(assert (=> b!4610398 m!5441227))

(assert (=> b!4610398 m!5441227))

(declare-fun m!5441899 () Bool)

(assert (=> b!4610398 m!5441899))

(assert (=> b!4610018 d!1452877))

(declare-fun d!1452879 () Bool)

(declare-fun e!2875926 () Bool)

(assert (=> d!1452879 e!2875926))

(declare-fun res!1930188 () Bool)

(assert (=> d!1452879 (=> (not res!1930188) (not e!2875926))))

(declare-fun lt!1766838 () ListLongMap!3395)

(assert (=> d!1452879 (= res!1930188 (contains!14229 lt!1766838 (_1!29268 lt!1766449)))))

(declare-fun lt!1766835 () List!51342)

(assert (=> d!1452879 (= lt!1766838 (ListLongMap!3396 lt!1766835))))

(declare-fun lt!1766836 () Unit!109347)

(declare-fun lt!1766837 () Unit!109347)

(assert (=> d!1452879 (= lt!1766836 lt!1766837)))

(assert (=> d!1452879 (= (getValueByKey!1364 lt!1766835 (_1!29268 lt!1766449)) (Some!11447 (_2!29268 lt!1766449)))))

(assert (=> d!1452879 (= lt!1766837 (lemmaContainsTupThenGetReturnValue!808 lt!1766835 (_1!29268 lt!1766449) (_2!29268 lt!1766449)))))

(assert (=> d!1452879 (= lt!1766835 (insertStrictlySorted!500 (toList!4764 lt!1766441) (_1!29268 lt!1766449) (_2!29268 lt!1766449)))))

(assert (=> d!1452879 (= (+!1784 lt!1766441 lt!1766449) lt!1766838)))

(declare-fun b!4610400 () Bool)

(declare-fun res!1930189 () Bool)

(assert (=> b!4610400 (=> (not res!1930189) (not e!2875926))))

(assert (=> b!4610400 (= res!1930189 (= (getValueByKey!1364 (toList!4764 lt!1766838) (_1!29268 lt!1766449)) (Some!11447 (_2!29268 lt!1766449))))))

(declare-fun b!4610401 () Bool)

(assert (=> b!4610401 (= e!2875926 (contains!14228 (toList!4764 lt!1766838) lt!1766449))))

(assert (= (and d!1452879 res!1930188) b!4610400))

(assert (= (and b!4610400 res!1930189) b!4610401))

(declare-fun m!5441901 () Bool)

(assert (=> d!1452879 m!5441901))

(declare-fun m!5441903 () Bool)

(assert (=> d!1452879 m!5441903))

(declare-fun m!5441905 () Bool)

(assert (=> d!1452879 m!5441905))

(declare-fun m!5441907 () Bool)

(assert (=> d!1452879 m!5441907))

(declare-fun m!5441909 () Bool)

(assert (=> b!4610400 m!5441909))

(declare-fun m!5441911 () Bool)

(assert (=> b!4610401 m!5441911))

(assert (=> b!4609998 d!1452879))

(declare-fun d!1452881 () Bool)

(declare-fun e!2875929 () Bool)

(assert (=> d!1452881 e!2875929))

(declare-fun res!1930192 () Bool)

(assert (=> d!1452881 (=> (not res!1930192) (not e!2875929))))

(declare-fun lt!1766841 () ListMap!4025)

(assert (=> d!1452881 (= res!1930192 (not (contains!14230 lt!1766841 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!232 (List!51341 K!12585) List!51341)

(assert (=> d!1452881 (= lt!1766841 (ListMap!4026 (removePresrvNoDuplicatedKeys!232 (toList!4763 lt!1766430) key!3287)))))

(assert (=> d!1452881 (= (-!516 lt!1766430 key!3287) lt!1766841)))

(declare-fun b!4610404 () Bool)

(declare-fun content!8707 (List!51344) (InoxSet K!12585))

(assert (=> b!4610404 (= e!2875929 (= ((_ map and) (content!8707 (keys!17967 lt!1766430)) ((_ map not) (store ((as const (Array K!12585 Bool)) false) key!3287 true))) (content!8707 (keys!17967 lt!1766841))))))

(assert (= (and d!1452881 res!1930192) b!4610404))

(declare-fun m!5441913 () Bool)

(assert (=> d!1452881 m!5441913))

(declare-fun m!5441915 () Bool)

(assert (=> d!1452881 m!5441915))

(assert (=> b!4610404 m!5441795))

(declare-fun m!5441917 () Bool)

(assert (=> b!4610404 m!5441917))

(declare-fun m!5441919 () Bool)

(assert (=> b!4610404 m!5441919))

(declare-fun m!5441921 () Bool)

(assert (=> b!4610404 m!5441921))

(declare-fun m!5441923 () Bool)

(assert (=> b!4610404 m!5441923))

(assert (=> b!4610404 m!5441795))

(assert (=> b!4610404 m!5441921))

(assert (=> b!4609998 d!1452881))

(declare-fun d!1452883 () Bool)

(declare-fun e!2875930 () Bool)

(assert (=> d!1452883 e!2875930))

(declare-fun res!1930193 () Bool)

(assert (=> d!1452883 (=> (not res!1930193) (not e!2875930))))

(declare-fun lt!1766845 () ListLongMap!3395)

(assert (=> d!1452883 (= res!1930193 (contains!14229 lt!1766845 (_1!29268 lt!1766445)))))

(declare-fun lt!1766842 () List!51342)

(assert (=> d!1452883 (= lt!1766845 (ListLongMap!3396 lt!1766842))))

(declare-fun lt!1766843 () Unit!109347)

(declare-fun lt!1766844 () Unit!109347)

(assert (=> d!1452883 (= lt!1766843 lt!1766844)))

(assert (=> d!1452883 (= (getValueByKey!1364 lt!1766842 (_1!29268 lt!1766445)) (Some!11447 (_2!29268 lt!1766445)))))

(assert (=> d!1452883 (= lt!1766844 (lemmaContainsTupThenGetReturnValue!808 lt!1766842 (_1!29268 lt!1766445) (_2!29268 lt!1766445)))))

(assert (=> d!1452883 (= lt!1766842 (insertStrictlySorted!500 (toList!4764 lt!1766441) (_1!29268 lt!1766445) (_2!29268 lt!1766445)))))

(assert (=> d!1452883 (= (+!1784 lt!1766441 lt!1766445) lt!1766845)))

(declare-fun b!4610405 () Bool)

(declare-fun res!1930194 () Bool)

(assert (=> b!4610405 (=> (not res!1930194) (not e!2875930))))

(assert (=> b!4610405 (= res!1930194 (= (getValueByKey!1364 (toList!4764 lt!1766845) (_1!29268 lt!1766445)) (Some!11447 (_2!29268 lt!1766445))))))

(declare-fun b!4610406 () Bool)

(assert (=> b!4610406 (= e!2875930 (contains!14228 (toList!4764 lt!1766845) lt!1766445))))

(assert (= (and d!1452883 res!1930193) b!4610405))

(assert (= (and b!4610405 res!1930194) b!4610406))

(declare-fun m!5441925 () Bool)

(assert (=> d!1452883 m!5441925))

(declare-fun m!5441927 () Bool)

(assert (=> d!1452883 m!5441927))

(declare-fun m!5441929 () Bool)

(assert (=> d!1452883 m!5441929))

(declare-fun m!5441931 () Bool)

(assert (=> d!1452883 m!5441931))

(declare-fun m!5441933 () Bool)

(assert (=> b!4610405 m!5441933))

(declare-fun m!5441935 () Bool)

(assert (=> b!4610406 m!5441935))

(assert (=> b!4609998 d!1452883))

(declare-fun bs!1016028 () Bool)

(declare-fun d!1452885 () Bool)

(assert (= bs!1016028 (and d!1452885 d!1452845)))

(declare-fun lambda!188431 () Int)

(assert (=> bs!1016028 (= lambda!188431 lambda!188421)))

(declare-fun bs!1016029 () Bool)

(assert (= bs!1016029 (and d!1452885 start!461020)))

(assert (=> bs!1016029 (= lambda!188431 lambda!188314)))

(declare-fun bs!1016030 () Bool)

(assert (= bs!1016030 (and d!1452885 d!1452877)))

(assert (=> bs!1016030 (= lambda!188431 lambda!188428)))

(declare-fun bs!1016031 () Bool)

(assert (= bs!1016031 (and d!1452885 d!1452739)))

(assert (=> bs!1016031 (= lambda!188431 lambda!188335)))

(declare-fun bs!1016032 () Bool)

(assert (= bs!1016032 (and d!1452885 b!4610010)))

(assert (=> bs!1016032 (not (= lambda!188431 lambda!188315))))

(declare-fun bs!1016033 () Bool)

(assert (= bs!1016033 (and d!1452885 d!1452825)))

(assert (=> bs!1016033 (= lambda!188431 lambda!188415)))

(declare-fun bs!1016034 () Bool)

(assert (= bs!1016034 (and d!1452885 d!1452853)))

(assert (=> bs!1016034 (= lambda!188431 lambda!188427)))

(declare-fun bs!1016035 () Bool)

(assert (= bs!1016035 (and d!1452885 d!1452847)))

(assert (=> bs!1016035 (= lambda!188431 lambda!188424)))

(declare-fun bs!1016036 () Bool)

(assert (= bs!1016036 (and d!1452885 d!1452843)))

(assert (=> bs!1016036 (= lambda!188431 lambda!188420)))

(assert (=> d!1452885 (eq!747 (extractMap!1434 (toList!4764 (+!1784 lt!1766441 (tuple2!51949 hash!344 newBucket!178)))) (-!516 (extractMap!1434 (toList!4764 lt!1766441)) key!3287))))

(declare-fun lt!1766848 () Unit!109347)

(declare-fun choose!31047 (ListLongMap!3395 (_ BitVec 64) List!51341 K!12585 Hashable!5773) Unit!109347)

(assert (=> d!1452885 (= lt!1766848 (choose!31047 lt!1766441 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1452885 (forall!10696 (toList!4764 lt!1766441) lambda!188431)))

(assert (=> d!1452885 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!231 lt!1766441 hash!344 newBucket!178 key!3287 hashF!1107) lt!1766848)))

(declare-fun bs!1016037 () Bool)

(assert (= bs!1016037 d!1452885))

(assert (=> bs!1016037 m!5441225))

(declare-fun m!5441937 () Bool)

(assert (=> bs!1016037 m!5441937))

(declare-fun m!5441939 () Bool)

(assert (=> bs!1016037 m!5441939))

(assert (=> bs!1016037 m!5441937))

(declare-fun m!5441941 () Bool)

(assert (=> bs!1016037 m!5441941))

(assert (=> bs!1016037 m!5441225))

(declare-fun m!5441943 () Bool)

(assert (=> bs!1016037 m!5441943))

(assert (=> bs!1016037 m!5441939))

(declare-fun m!5441945 () Bool)

(assert (=> bs!1016037 m!5441945))

(declare-fun m!5441947 () Bool)

(assert (=> bs!1016037 m!5441947))

(assert (=> b!4609998 d!1452885))

(declare-fun d!1452887 () Bool)

(assert (=> d!1452887 (= (eq!747 lt!1766437 lt!1766448) (= (content!8705 (toList!4763 lt!1766437)) (content!8705 (toList!4763 lt!1766448))))))

(declare-fun bs!1016038 () Bool)

(assert (= bs!1016038 d!1452887))

(declare-fun m!5441949 () Bool)

(assert (=> bs!1016038 m!5441949))

(declare-fun m!5441951 () Bool)

(assert (=> bs!1016038 m!5441951))

(assert (=> b!4609998 d!1452887))

(declare-fun bs!1016039 () Bool)

(declare-fun d!1452889 () Bool)

(assert (= bs!1016039 (and d!1452889 d!1452845)))

(declare-fun lambda!188432 () Int)

(assert (=> bs!1016039 (= lambda!188432 lambda!188421)))

(declare-fun bs!1016040 () Bool)

(assert (= bs!1016040 (and d!1452889 start!461020)))

(assert (=> bs!1016040 (= lambda!188432 lambda!188314)))

(declare-fun bs!1016041 () Bool)

(assert (= bs!1016041 (and d!1452889 d!1452877)))

(assert (=> bs!1016041 (= lambda!188432 lambda!188428)))

(declare-fun bs!1016042 () Bool)

(assert (= bs!1016042 (and d!1452889 d!1452739)))

(assert (=> bs!1016042 (= lambda!188432 lambda!188335)))

(declare-fun bs!1016043 () Bool)

(assert (= bs!1016043 (and d!1452889 b!4610010)))

(assert (=> bs!1016043 (not (= lambda!188432 lambda!188315))))

(declare-fun bs!1016044 () Bool)

(assert (= bs!1016044 (and d!1452889 d!1452825)))

(assert (=> bs!1016044 (= lambda!188432 lambda!188415)))

(declare-fun bs!1016045 () Bool)

(assert (= bs!1016045 (and d!1452889 d!1452853)))

(assert (=> bs!1016045 (= lambda!188432 lambda!188427)))

(declare-fun bs!1016046 () Bool)

(assert (= bs!1016046 (and d!1452889 d!1452847)))

(assert (=> bs!1016046 (= lambda!188432 lambda!188424)))

(declare-fun bs!1016047 () Bool)

(assert (= bs!1016047 (and d!1452889 d!1452843)))

(assert (=> bs!1016047 (= lambda!188432 lambda!188420)))

(declare-fun bs!1016048 () Bool)

(assert (= bs!1016048 (and d!1452889 d!1452885)))

(assert (=> bs!1016048 (= lambda!188432 lambda!188431)))

(declare-fun lt!1766849 () ListMap!4025)

(assert (=> d!1452889 (invariantList!1150 (toList!4763 lt!1766849))))

(declare-fun e!2875931 () ListMap!4025)

(assert (=> d!1452889 (= lt!1766849 e!2875931)))

(declare-fun c!789724 () Bool)

(assert (=> d!1452889 (= c!789724 ((_ is Cons!51218) (toList!4764 (+!1784 lt!1766441 lt!1766445))))))

(assert (=> d!1452889 (forall!10696 (toList!4764 (+!1784 lt!1766441 lt!1766445)) lambda!188432)))

(assert (=> d!1452889 (= (extractMap!1434 (toList!4764 (+!1784 lt!1766441 lt!1766445))) lt!1766849)))

(declare-fun b!4610407 () Bool)

(assert (=> b!4610407 (= e!2875931 (addToMapMapFromBucket!844 (_2!29268 (h!57210 (toList!4764 (+!1784 lt!1766441 lt!1766445)))) (extractMap!1434 (t!358336 (toList!4764 (+!1784 lt!1766441 lt!1766445))))))))

(declare-fun b!4610408 () Bool)

(assert (=> b!4610408 (= e!2875931 (ListMap!4026 Nil!51217))))

(assert (= (and d!1452889 c!789724) b!4610407))

(assert (= (and d!1452889 (not c!789724)) b!4610408))

(declare-fun m!5441953 () Bool)

(assert (=> d!1452889 m!5441953))

(declare-fun m!5441955 () Bool)

(assert (=> d!1452889 m!5441955))

(declare-fun m!5441957 () Bool)

(assert (=> b!4610407 m!5441957))

(assert (=> b!4610407 m!5441957))

(declare-fun m!5441959 () Bool)

(assert (=> b!4610407 m!5441959))

(assert (=> b!4609998 d!1452889))

(declare-fun d!1452891 () Bool)

(declare-fun head!9562 (List!51342) tuple2!51948)

(assert (=> d!1452891 (= (head!9560 lm!1477) (head!9562 (toList!4764 lm!1477)))))

(declare-fun bs!1016049 () Bool)

(assert (= bs!1016049 d!1452891))

(declare-fun m!5441961 () Bool)

(assert (=> bs!1016049 m!5441961))

(assert (=> b!4609998 d!1452891))

(declare-fun bs!1016050 () Bool)

(declare-fun d!1452893 () Bool)

(assert (= bs!1016050 (and d!1452893 d!1452845)))

(declare-fun lambda!188433 () Int)

(assert (=> bs!1016050 (= lambda!188433 lambda!188421)))

(declare-fun bs!1016051 () Bool)

(assert (= bs!1016051 (and d!1452893 d!1452889)))

(assert (=> bs!1016051 (= lambda!188433 lambda!188432)))

(declare-fun bs!1016052 () Bool)

(assert (= bs!1016052 (and d!1452893 start!461020)))

(assert (=> bs!1016052 (= lambda!188433 lambda!188314)))

(declare-fun bs!1016053 () Bool)

(assert (= bs!1016053 (and d!1452893 d!1452877)))

(assert (=> bs!1016053 (= lambda!188433 lambda!188428)))

(declare-fun bs!1016054 () Bool)

(assert (= bs!1016054 (and d!1452893 d!1452739)))

(assert (=> bs!1016054 (= lambda!188433 lambda!188335)))

(declare-fun bs!1016055 () Bool)

(assert (= bs!1016055 (and d!1452893 b!4610010)))

(assert (=> bs!1016055 (not (= lambda!188433 lambda!188315))))

(declare-fun bs!1016056 () Bool)

(assert (= bs!1016056 (and d!1452893 d!1452825)))

(assert (=> bs!1016056 (= lambda!188433 lambda!188415)))

(declare-fun bs!1016057 () Bool)

(assert (= bs!1016057 (and d!1452893 d!1452853)))

(assert (=> bs!1016057 (= lambda!188433 lambda!188427)))

(declare-fun bs!1016058 () Bool)

(assert (= bs!1016058 (and d!1452893 d!1452847)))

(assert (=> bs!1016058 (= lambda!188433 lambda!188424)))

(declare-fun bs!1016059 () Bool)

(assert (= bs!1016059 (and d!1452893 d!1452843)))

(assert (=> bs!1016059 (= lambda!188433 lambda!188420)))

(declare-fun bs!1016060 () Bool)

(assert (= bs!1016060 (and d!1452893 d!1452885)))

(assert (=> bs!1016060 (= lambda!188433 lambda!188431)))

(declare-fun lt!1766850 () ListMap!4025)

(assert (=> d!1452893 (invariantList!1150 (toList!4763 lt!1766850))))

(declare-fun e!2875932 () ListMap!4025)

(assert (=> d!1452893 (= lt!1766850 e!2875932)))

(declare-fun c!789725 () Bool)

(assert (=> d!1452893 (= c!789725 ((_ is Cons!51218) (toList!4764 lt!1766426)))))

(assert (=> d!1452893 (forall!10696 (toList!4764 lt!1766426) lambda!188433)))

(assert (=> d!1452893 (= (extractMap!1434 (toList!4764 lt!1766426)) lt!1766850)))

(declare-fun b!4610409 () Bool)

(assert (=> b!4610409 (= e!2875932 (addToMapMapFromBucket!844 (_2!29268 (h!57210 (toList!4764 lt!1766426))) (extractMap!1434 (t!358336 (toList!4764 lt!1766426)))))))

(declare-fun b!4610410 () Bool)

(assert (=> b!4610410 (= e!2875932 (ListMap!4026 Nil!51217))))

(assert (= (and d!1452893 c!789725) b!4610409))

(assert (= (and d!1452893 (not c!789725)) b!4610410))

(declare-fun m!5441963 () Bool)

(assert (=> d!1452893 m!5441963))

(declare-fun m!5441965 () Bool)

(assert (=> d!1452893 m!5441965))

(declare-fun m!5441967 () Bool)

(assert (=> b!4610409 m!5441967))

(assert (=> b!4610409 m!5441967))

(declare-fun m!5441969 () Bool)

(assert (=> b!4610409 m!5441969))

(assert (=> b!4609998 d!1452893))

(declare-fun d!1452895 () Bool)

(assert (=> d!1452895 (= (eq!747 lt!1766429 lt!1766440) (= (content!8705 (toList!4763 lt!1766429)) (content!8705 (toList!4763 lt!1766440))))))

(declare-fun bs!1016061 () Bool)

(assert (= bs!1016061 d!1452895))

(declare-fun m!5441971 () Bool)

(assert (=> bs!1016061 m!5441971))

(declare-fun m!5441973 () Bool)

(assert (=> bs!1016061 m!5441973))

(assert (=> b!4609998 d!1452895))

(declare-fun d!1452897 () Bool)

(assert (=> d!1452897 (= (eq!747 lt!1766446 lt!1766432) (= (content!8705 (toList!4763 lt!1766446)) (content!8705 (toList!4763 lt!1766432))))))

(declare-fun bs!1016062 () Bool)

(assert (= bs!1016062 d!1452897))

(assert (=> bs!1016062 m!5441515))

(declare-fun m!5441975 () Bool)

(assert (=> bs!1016062 m!5441975))

(assert (=> b!4610019 d!1452897))

(declare-fun d!1452899 () Bool)

(assert (=> d!1452899 (= (eq!747 lt!1766422 lt!1766432) (= (content!8705 (toList!4763 lt!1766422)) (content!8705 (toList!4763 lt!1766432))))))

(declare-fun bs!1016063 () Bool)

(assert (= bs!1016063 d!1452899))

(assert (=> bs!1016063 m!5441517))

(assert (=> bs!1016063 m!5441975))

(assert (=> b!4610019 d!1452899))

(declare-fun bs!1016064 () Bool)

(declare-fun b!4610414 () Bool)

(assert (= bs!1016064 (and b!4610414 b!4610264)))

(declare-fun lambda!188434 () Int)

(assert (=> bs!1016064 (= (= lt!1766440 lt!1766725) (= lambda!188434 lambda!188408))))

(declare-fun bs!1016065 () Bool)

(assert (= bs!1016065 (and b!4610414 b!4610266)))

(assert (=> bs!1016065 (= (= lt!1766440 lt!1766429) (= lambda!188434 lambda!188405))))

(assert (=> bs!1016064 (= (= lt!1766440 lt!1766429) (= lambda!188434 lambda!188407))))

(declare-fun bs!1016066 () Bool)

(assert (= bs!1016066 (and b!4610414 b!4610010)))

(assert (=> bs!1016066 (not (= lambda!188434 lambda!188316))))

(declare-fun bs!1016067 () Bool)

(assert (= bs!1016067 (and b!4610414 d!1452797)))

(assert (=> bs!1016067 (= (= lt!1766440 lt!1766726) (= lambda!188434 lambda!188409))))

(assert (=> b!4610414 true))

(declare-fun bs!1016068 () Bool)

(declare-fun b!4610412 () Bool)

(assert (= bs!1016068 (and b!4610412 b!4610266)))

(declare-fun lambda!188435 () Int)

(assert (=> bs!1016068 (= (= lt!1766440 lt!1766429) (= lambda!188435 lambda!188405))))

(declare-fun bs!1016069 () Bool)

(assert (= bs!1016069 (and b!4610412 b!4610264)))

(assert (=> bs!1016069 (= (= lt!1766440 lt!1766429) (= lambda!188435 lambda!188407))))

(declare-fun bs!1016070 () Bool)

(assert (= bs!1016070 (and b!4610412 b!4610010)))

(assert (=> bs!1016070 (not (= lambda!188435 lambda!188316))))

(declare-fun bs!1016071 () Bool)

(assert (= bs!1016071 (and b!4610412 d!1452797)))

(assert (=> bs!1016071 (= (= lt!1766440 lt!1766726) (= lambda!188435 lambda!188409))))

(assert (=> bs!1016069 (= (= lt!1766440 lt!1766725) (= lambda!188435 lambda!188408))))

(declare-fun bs!1016072 () Bool)

(assert (= bs!1016072 (and b!4610412 b!4610414)))

(assert (=> bs!1016072 (= lambda!188435 lambda!188434)))

(assert (=> b!4610412 true))

(declare-fun lambda!188436 () Int)

(declare-fun lt!1766868 () ListMap!4025)

(assert (=> b!4610412 (= (= lt!1766868 lt!1766440) (= lambda!188436 lambda!188435))))

(assert (=> bs!1016068 (= (= lt!1766868 lt!1766429) (= lambda!188436 lambda!188405))))

(assert (=> bs!1016069 (= (= lt!1766868 lt!1766429) (= lambda!188436 lambda!188407))))

(assert (=> bs!1016070 (not (= lambda!188436 lambda!188316))))

(assert (=> bs!1016071 (= (= lt!1766868 lt!1766726) (= lambda!188436 lambda!188409))))

(assert (=> bs!1016069 (= (= lt!1766868 lt!1766725) (= lambda!188436 lambda!188408))))

(assert (=> bs!1016072 (= (= lt!1766868 lt!1766440) (= lambda!188436 lambda!188434))))

(assert (=> b!4610412 true))

(declare-fun bs!1016073 () Bool)

(declare-fun d!1452901 () Bool)

(assert (= bs!1016073 (and d!1452901 b!4610412)))

(declare-fun lt!1766869 () ListMap!4025)

(declare-fun lambda!188437 () Int)

(assert (=> bs!1016073 (= (= lt!1766869 lt!1766868) (= lambda!188437 lambda!188436))))

(assert (=> bs!1016073 (= (= lt!1766869 lt!1766440) (= lambda!188437 lambda!188435))))

(declare-fun bs!1016074 () Bool)

(assert (= bs!1016074 (and d!1452901 b!4610266)))

(assert (=> bs!1016074 (= (= lt!1766869 lt!1766429) (= lambda!188437 lambda!188405))))

(declare-fun bs!1016075 () Bool)

(assert (= bs!1016075 (and d!1452901 b!4610264)))

(assert (=> bs!1016075 (= (= lt!1766869 lt!1766429) (= lambda!188437 lambda!188407))))

(declare-fun bs!1016076 () Bool)

(assert (= bs!1016076 (and d!1452901 b!4610010)))

(assert (=> bs!1016076 (not (= lambda!188437 lambda!188316))))

(declare-fun bs!1016077 () Bool)

(assert (= bs!1016077 (and d!1452901 d!1452797)))

(assert (=> bs!1016077 (= (= lt!1766869 lt!1766726) (= lambda!188437 lambda!188409))))

(assert (=> bs!1016075 (= (= lt!1766869 lt!1766725) (= lambda!188437 lambda!188408))))

(declare-fun bs!1016078 () Bool)

(assert (= bs!1016078 (and d!1452901 b!4610414)))

(assert (=> bs!1016078 (= (= lt!1766869 lt!1766440) (= lambda!188437 lambda!188434))))

(assert (=> d!1452901 true))

(declare-fun b!4610411 () Bool)

(declare-fun e!2875934 () Bool)

(declare-fun call!321472 () Bool)

(assert (=> b!4610411 (= e!2875934 call!321472)))

(declare-fun e!2875935 () ListMap!4025)

(assert (=> b!4610412 (= e!2875935 lt!1766868)))

(declare-fun lt!1766855 () ListMap!4025)

(assert (=> b!4610412 (= lt!1766855 (+!1786 lt!1766440 (h!57209 (_2!29268 lt!1766445))))))

(assert (=> b!4610412 (= lt!1766868 (addToMapMapFromBucket!844 (t!358335 (_2!29268 lt!1766445)) (+!1786 lt!1766440 (h!57209 (_2!29268 lt!1766445)))))))

(declare-fun lt!1766865 () Unit!109347)

(declare-fun call!321473 () Unit!109347)

(assert (=> b!4610412 (= lt!1766865 call!321473)))

(assert (=> b!4610412 (forall!10698 (toList!4763 lt!1766440) lambda!188435)))

(declare-fun lt!1766861 () Unit!109347)

(assert (=> b!4610412 (= lt!1766861 lt!1766865)))

(assert (=> b!4610412 (forall!10698 (toList!4763 lt!1766855) lambda!188436)))

(declare-fun lt!1766851 () Unit!109347)

(declare-fun Unit!109400 () Unit!109347)

(assert (=> b!4610412 (= lt!1766851 Unit!109400)))

(assert (=> b!4610412 (forall!10698 (t!358335 (_2!29268 lt!1766445)) lambda!188436)))

(declare-fun lt!1766863 () Unit!109347)

(declare-fun Unit!109401 () Unit!109347)

(assert (=> b!4610412 (= lt!1766863 Unit!109401)))

(declare-fun lt!1766852 () Unit!109347)

(declare-fun Unit!109402 () Unit!109347)

(assert (=> b!4610412 (= lt!1766852 Unit!109402)))

(declare-fun lt!1766856 () Unit!109347)

(assert (=> b!4610412 (= lt!1766856 (forallContained!2943 (toList!4763 lt!1766855) lambda!188436 (h!57209 (_2!29268 lt!1766445))))))

(assert (=> b!4610412 (contains!14230 lt!1766855 (_1!29267 (h!57209 (_2!29268 lt!1766445))))))

(declare-fun lt!1766862 () Unit!109347)

(declare-fun Unit!109403 () Unit!109347)

(assert (=> b!4610412 (= lt!1766862 Unit!109403)))

(assert (=> b!4610412 (contains!14230 lt!1766868 (_1!29267 (h!57209 (_2!29268 lt!1766445))))))

(declare-fun lt!1766860 () Unit!109347)

(declare-fun Unit!109404 () Unit!109347)

(assert (=> b!4610412 (= lt!1766860 Unit!109404)))

(assert (=> b!4610412 (forall!10698 (_2!29268 lt!1766445) lambda!188436)))

(declare-fun lt!1766864 () Unit!109347)

(declare-fun Unit!109405 () Unit!109347)

(assert (=> b!4610412 (= lt!1766864 Unit!109405)))

(declare-fun call!321471 () Bool)

(assert (=> b!4610412 call!321471))

(declare-fun lt!1766854 () Unit!109347)

(declare-fun Unit!109406 () Unit!109347)

(assert (=> b!4610412 (= lt!1766854 Unit!109406)))

(declare-fun lt!1766870 () Unit!109347)

(declare-fun Unit!109407 () Unit!109347)

(assert (=> b!4610412 (= lt!1766870 Unit!109407)))

(declare-fun lt!1766857 () Unit!109347)

(assert (=> b!4610412 (= lt!1766857 (addForallContainsKeyThenBeforeAdding!454 lt!1766440 lt!1766868 (_1!29267 (h!57209 (_2!29268 lt!1766445))) (_2!29267 (h!57209 (_2!29268 lt!1766445)))))))

(assert (=> b!4610412 (forall!10698 (toList!4763 lt!1766440) lambda!188436)))

(declare-fun lt!1766858 () Unit!109347)

(assert (=> b!4610412 (= lt!1766858 lt!1766857)))

(assert (=> b!4610412 (forall!10698 (toList!4763 lt!1766440) lambda!188436)))

(declare-fun lt!1766859 () Unit!109347)

(declare-fun Unit!109408 () Unit!109347)

(assert (=> b!4610412 (= lt!1766859 Unit!109408)))

(declare-fun res!1930197 () Bool)

(assert (=> b!4610412 (= res!1930197 (forall!10698 (_2!29268 lt!1766445) lambda!188436))))

(assert (=> b!4610412 (=> (not res!1930197) (not e!2875934))))

(assert (=> b!4610412 e!2875934))

(declare-fun lt!1766867 () Unit!109347)

(declare-fun Unit!109409 () Unit!109347)

(assert (=> b!4610412 (= lt!1766867 Unit!109409)))

(declare-fun bm!321466 () Bool)

(declare-fun c!789726 () Bool)

(assert (=> bm!321466 (= call!321472 (forall!10698 (toList!4763 lt!1766440) (ite c!789726 lambda!188434 lambda!188436)))))

(declare-fun e!2875933 () Bool)

(assert (=> d!1452901 e!2875933))

(declare-fun res!1930196 () Bool)

(assert (=> d!1452901 (=> (not res!1930196) (not e!2875933))))

(assert (=> d!1452901 (= res!1930196 (forall!10698 (_2!29268 lt!1766445) lambda!188437))))

(assert (=> d!1452901 (= lt!1766869 e!2875935)))

(assert (=> d!1452901 (= c!789726 ((_ is Nil!51217) (_2!29268 lt!1766445)))))

(assert (=> d!1452901 (noDuplicateKeys!1374 (_2!29268 lt!1766445))))

(assert (=> d!1452901 (= (addToMapMapFromBucket!844 (_2!29268 lt!1766445) lt!1766440) lt!1766869)))

(declare-fun b!4610413 () Bool)

(assert (=> b!4610413 (= e!2875933 (invariantList!1150 (toList!4763 lt!1766869)))))

(declare-fun bm!321467 () Bool)

(assert (=> bm!321467 (= call!321473 (lemmaContainsAllItsOwnKeys!454 lt!1766440))))

(assert (=> b!4610414 (= e!2875935 lt!1766440)))

(declare-fun lt!1766866 () Unit!109347)

(assert (=> b!4610414 (= lt!1766866 call!321473)))

(assert (=> b!4610414 call!321472))

(declare-fun lt!1766853 () Unit!109347)

(assert (=> b!4610414 (= lt!1766853 lt!1766866)))

(assert (=> b!4610414 call!321471))

(declare-fun lt!1766871 () Unit!109347)

(declare-fun Unit!109410 () Unit!109347)

(assert (=> b!4610414 (= lt!1766871 Unit!109410)))

(declare-fun b!4610415 () Bool)

(declare-fun res!1930195 () Bool)

(assert (=> b!4610415 (=> (not res!1930195) (not e!2875933))))

(assert (=> b!4610415 (= res!1930195 (forall!10698 (toList!4763 lt!1766440) lambda!188437))))

(declare-fun bm!321468 () Bool)

(assert (=> bm!321468 (= call!321471 (forall!10698 (ite c!789726 (toList!4763 lt!1766440) (toList!4763 lt!1766855)) (ite c!789726 lambda!188434 lambda!188436)))))

(assert (= (and d!1452901 c!789726) b!4610414))

(assert (= (and d!1452901 (not c!789726)) b!4610412))

(assert (= (and b!4610412 res!1930197) b!4610411))

(assert (= (or b!4610414 b!4610412) bm!321468))

(assert (= (or b!4610414 b!4610411) bm!321466))

(assert (= (or b!4610414 b!4610412) bm!321467))

(assert (= (and d!1452901 res!1930196) b!4610415))

(assert (= (and b!4610415 res!1930195) b!4610413))

(declare-fun m!5441977 () Bool)

(assert (=> d!1452901 m!5441977))

(assert (=> d!1452901 m!5441171))

(declare-fun m!5441979 () Bool)

(assert (=> bm!321466 m!5441979))

(declare-fun m!5441981 () Bool)

(assert (=> b!4610412 m!5441981))

(declare-fun m!5441983 () Bool)

(assert (=> b!4610412 m!5441983))

(declare-fun m!5441985 () Bool)

(assert (=> b!4610412 m!5441985))

(declare-fun m!5441987 () Bool)

(assert (=> b!4610412 m!5441987))

(declare-fun m!5441989 () Bool)

(assert (=> b!4610412 m!5441989))

(declare-fun m!5441991 () Bool)

(assert (=> b!4610412 m!5441991))

(declare-fun m!5441993 () Bool)

(assert (=> b!4610412 m!5441993))

(declare-fun m!5441995 () Bool)

(assert (=> b!4610412 m!5441995))

(declare-fun m!5441997 () Bool)

(assert (=> b!4610412 m!5441997))

(declare-fun m!5441999 () Bool)

(assert (=> b!4610412 m!5441999))

(assert (=> b!4610412 m!5441987))

(assert (=> b!4610412 m!5441993))

(declare-fun m!5442001 () Bool)

(assert (=> b!4610412 m!5442001))

(assert (=> b!4610412 m!5442001))

(declare-fun m!5442003 () Bool)

(assert (=> b!4610413 m!5442003))

(declare-fun m!5442005 () Bool)

(assert (=> bm!321467 m!5442005))

(declare-fun m!5442007 () Bool)

(assert (=> bm!321468 m!5442007))

(declare-fun m!5442009 () Bool)

(assert (=> b!4610415 m!5442009))

(assert (=> b!4610019 d!1452901))

(declare-fun d!1452903 () Bool)

(assert (=> d!1452903 (eq!747 (addToMapMapFromBucket!844 (_2!29268 lt!1766445) lt!1766429) (addToMapMapFromBucket!844 (_2!29268 lt!1766445) lt!1766440))))

(declare-fun lt!1766874 () Unit!109347)

(declare-fun choose!31048 (ListMap!4025 ListMap!4025 List!51341) Unit!109347)

(assert (=> d!1452903 (= lt!1766874 (choose!31048 lt!1766429 lt!1766440 (_2!29268 lt!1766445)))))

(assert (=> d!1452903 (noDuplicateKeys!1374 (_2!29268 lt!1766445))))

(assert (=> d!1452903 (= (lemmaAddToMapFromBucketPreservesEquivalence!106 lt!1766429 lt!1766440 (_2!29268 lt!1766445)) lt!1766874)))

(declare-fun bs!1016079 () Bool)

(assert (= bs!1016079 d!1452903))

(assert (=> bs!1016079 m!5441183))

(assert (=> bs!1016079 m!5441171))

(declare-fun m!5442011 () Bool)

(assert (=> bs!1016079 m!5442011))

(assert (=> bs!1016079 m!5441247))

(assert (=> bs!1016079 m!5441183))

(declare-fun m!5442013 () Bool)

(assert (=> bs!1016079 m!5442013))

(assert (=> bs!1016079 m!5441247))

(assert (=> b!4610019 d!1452903))

(declare-fun d!1452905 () Bool)

(declare-fun hash!3317 (Hashable!5773 K!12585) (_ BitVec 64))

(assert (=> d!1452905 (= (hash!3313 hashF!1107 key!3287) (hash!3317 hashF!1107 key!3287))))

(declare-fun bs!1016080 () Bool)

(assert (= bs!1016080 d!1452905))

(declare-fun m!5442015 () Bool)

(assert (=> bs!1016080 m!5442015))

(assert (=> b!4610021 d!1452905))

(declare-fun bs!1016081 () Bool)

(declare-fun d!1452907 () Bool)

(assert (= bs!1016081 (and d!1452907 d!1452901)))

(declare-fun lambda!188440 () Int)

(assert (=> bs!1016081 (not (= lambda!188440 lambda!188437))))

(declare-fun bs!1016082 () Bool)

(assert (= bs!1016082 (and d!1452907 b!4610412)))

(assert (=> bs!1016082 (not (= lambda!188440 lambda!188436))))

(assert (=> bs!1016082 (not (= lambda!188440 lambda!188435))))

(declare-fun bs!1016083 () Bool)

(assert (= bs!1016083 (and d!1452907 b!4610266)))

(assert (=> bs!1016083 (not (= lambda!188440 lambda!188405))))

(declare-fun bs!1016084 () Bool)

(assert (= bs!1016084 (and d!1452907 b!4610264)))

(assert (=> bs!1016084 (not (= lambda!188440 lambda!188407))))

(declare-fun bs!1016085 () Bool)

(assert (= bs!1016085 (and d!1452907 b!4610010)))

(assert (=> bs!1016085 (= (= hash!344 (_1!29268 (h!57210 (toList!4764 lm!1477)))) (= lambda!188440 lambda!188316))))

(declare-fun bs!1016086 () Bool)

(assert (= bs!1016086 (and d!1452907 d!1452797)))

(assert (=> bs!1016086 (not (= lambda!188440 lambda!188409))))

(assert (=> bs!1016084 (not (= lambda!188440 lambda!188408))))

(declare-fun bs!1016087 () Bool)

(assert (= bs!1016087 (and d!1452907 b!4610414)))

(assert (=> bs!1016087 (not (= lambda!188440 lambda!188434))))

(assert (=> d!1452907 true))

(assert (=> d!1452907 true))

(assert (=> d!1452907 (= (allKeysSameHash!1230 newBucket!178 hash!344 hashF!1107) (forall!10698 newBucket!178 lambda!188440))))

(declare-fun bs!1016088 () Bool)

(assert (= bs!1016088 d!1452907))

(declare-fun m!5442017 () Bool)

(assert (=> bs!1016088 m!5442017))

(assert (=> b!4609999 d!1452907))

(declare-fun d!1452909 () Bool)

(assert (=> d!1452909 (= (head!9560 lt!1766433) (head!9562 (toList!4764 lt!1766433)))))

(declare-fun bs!1016089 () Bool)

(assert (= bs!1016089 d!1452909))

(declare-fun m!5442019 () Bool)

(assert (=> bs!1016089 m!5442019))

(assert (=> b!4610020 d!1452909))

(declare-fun bs!1016090 () Bool)

(declare-fun d!1452911 () Bool)

(assert (= bs!1016090 (and d!1452911 d!1452845)))

(declare-fun lambda!188443 () Int)

(assert (=> bs!1016090 (not (= lambda!188443 lambda!188421))))

(declare-fun bs!1016091 () Bool)

(assert (= bs!1016091 (and d!1452911 d!1452893)))

(assert (=> bs!1016091 (not (= lambda!188443 lambda!188433))))

(declare-fun bs!1016092 () Bool)

(assert (= bs!1016092 (and d!1452911 d!1452889)))

(assert (=> bs!1016092 (not (= lambda!188443 lambda!188432))))

(declare-fun bs!1016093 () Bool)

(assert (= bs!1016093 (and d!1452911 start!461020)))

(assert (=> bs!1016093 (not (= lambda!188443 lambda!188314))))

(declare-fun bs!1016094 () Bool)

(assert (= bs!1016094 (and d!1452911 d!1452877)))

(assert (=> bs!1016094 (not (= lambda!188443 lambda!188428))))

(declare-fun bs!1016095 () Bool)

(assert (= bs!1016095 (and d!1452911 d!1452739)))

(assert (=> bs!1016095 (not (= lambda!188443 lambda!188335))))

(declare-fun bs!1016096 () Bool)

(assert (= bs!1016096 (and d!1452911 b!4610010)))

(assert (=> bs!1016096 (= lambda!188443 lambda!188315)))

(declare-fun bs!1016097 () Bool)

(assert (= bs!1016097 (and d!1452911 d!1452825)))

(assert (=> bs!1016097 (not (= lambda!188443 lambda!188415))))

(declare-fun bs!1016098 () Bool)

(assert (= bs!1016098 (and d!1452911 d!1452853)))

(assert (=> bs!1016098 (not (= lambda!188443 lambda!188427))))

(declare-fun bs!1016099 () Bool)

(assert (= bs!1016099 (and d!1452911 d!1452847)))

(assert (=> bs!1016099 (not (= lambda!188443 lambda!188424))))

(declare-fun bs!1016100 () Bool)

(assert (= bs!1016100 (and d!1452911 d!1452843)))

(assert (=> bs!1016100 (not (= lambda!188443 lambda!188420))))

(declare-fun bs!1016101 () Bool)

(assert (= bs!1016101 (and d!1452911 d!1452885)))

(assert (=> bs!1016101 (not (= lambda!188443 lambda!188431))))

(assert (=> d!1452911 true))

(assert (=> d!1452911 (= (allKeysSameHashInMap!1485 lm!1477 hashF!1107) (forall!10696 (toList!4764 lm!1477) lambda!188443))))

(declare-fun bs!1016102 () Bool)

(assert (= bs!1016102 d!1452911))

(declare-fun m!5442021 () Bool)

(assert (=> bs!1016102 m!5442021))

(assert (=> b!4610001 d!1452911))

(declare-fun d!1452913 () Bool)

(declare-fun res!1930202 () Bool)

(declare-fun e!2875940 () Bool)

(assert (=> d!1452913 (=> res!1930202 e!2875940)))

(assert (=> d!1452913 (= res!1930202 (not ((_ is Cons!51217) newBucket!178)))))

(assert (=> d!1452913 (= (noDuplicateKeys!1374 newBucket!178) e!2875940)))

(declare-fun b!4610422 () Bool)

(declare-fun e!2875941 () Bool)

(assert (=> b!4610422 (= e!2875940 e!2875941)))

(declare-fun res!1930203 () Bool)

(assert (=> b!4610422 (=> (not res!1930203) (not e!2875941))))

(assert (=> b!4610422 (= res!1930203 (not (containsKey!2264 (t!358335 newBucket!178) (_1!29267 (h!57209 newBucket!178)))))))

(declare-fun b!4610423 () Bool)

(assert (=> b!4610423 (= e!2875941 (noDuplicateKeys!1374 (t!358335 newBucket!178)))))

(assert (= (and d!1452913 (not res!1930202)) b!4610422))

(assert (= (and b!4610422 res!1930203) b!4610423))

(declare-fun m!5442023 () Bool)

(assert (=> b!4610422 m!5442023))

(declare-fun m!5442025 () Bool)

(assert (=> b!4610423 m!5442025))

(assert (=> b!4610022 d!1452913))

(declare-fun d!1452915 () Bool)

(assert (=> d!1452915 (= (eq!747 lt!1766448 lt!1766437) (= (content!8705 (toList!4763 lt!1766448)) (content!8705 (toList!4763 lt!1766437))))))

(declare-fun bs!1016103 () Bool)

(assert (= bs!1016103 d!1452915))

(assert (=> bs!1016103 m!5441951))

(assert (=> bs!1016103 m!5441949))

(assert (=> b!4610000 d!1452915))

(declare-fun d!1452917 () Bool)

(declare-fun res!1930204 () Bool)

(declare-fun e!2875942 () Bool)

(assert (=> d!1452917 (=> res!1930204 e!2875942)))

(assert (=> d!1452917 (= res!1930204 (not ((_ is Cons!51217) (_2!29268 lt!1766445))))))

(assert (=> d!1452917 (= (noDuplicateKeys!1374 (_2!29268 lt!1766445)) e!2875942)))

(declare-fun b!4610424 () Bool)

(declare-fun e!2875943 () Bool)

(assert (=> b!4610424 (= e!2875942 e!2875943)))

(declare-fun res!1930205 () Bool)

(assert (=> b!4610424 (=> (not res!1930205) (not e!2875943))))

(assert (=> b!4610424 (= res!1930205 (not (containsKey!2264 (t!358335 (_2!29268 lt!1766445)) (_1!29267 (h!57209 (_2!29268 lt!1766445))))))))

(declare-fun b!4610425 () Bool)

(assert (=> b!4610425 (= e!2875943 (noDuplicateKeys!1374 (t!358335 (_2!29268 lt!1766445))))))

(assert (= (and d!1452917 (not res!1930204)) b!4610424))

(assert (= (and b!4610424 res!1930205) b!4610425))

(declare-fun m!5442027 () Bool)

(assert (=> b!4610424 m!5442027))

(declare-fun m!5442029 () Bool)

(assert (=> b!4610425 m!5442029))

(assert (=> b!4610002 d!1452917))

(declare-fun d!1452919 () Bool)

(assert (=> d!1452919 (dynLambda!21440 lambda!188314 (h!57210 (toList!4764 lm!1477)))))

(declare-fun lt!1766875 () Unit!109347)

(assert (=> d!1452919 (= lt!1766875 (choose!31040 (toList!4764 lm!1477) lambda!188314 (h!57210 (toList!4764 lm!1477))))))

(declare-fun e!2875944 () Bool)

(assert (=> d!1452919 e!2875944))

(declare-fun res!1930206 () Bool)

(assert (=> d!1452919 (=> (not res!1930206) (not e!2875944))))

(assert (=> d!1452919 (= res!1930206 (forall!10696 (toList!4764 lm!1477) lambda!188314))))

(assert (=> d!1452919 (= (forallContained!2942 (toList!4764 lm!1477) lambda!188314 (h!57210 (toList!4764 lm!1477))) lt!1766875)))

(declare-fun b!4610426 () Bool)

(assert (=> b!4610426 (= e!2875944 (contains!14228 (toList!4764 lm!1477) (h!57210 (toList!4764 lm!1477))))))

(assert (= (and d!1452919 res!1930206) b!4610426))

(declare-fun b_lambda!170425 () Bool)

(assert (=> (not b_lambda!170425) (not d!1452919)))

(assert (=> d!1452919 m!5441449))

(declare-fun m!5442031 () Bool)

(assert (=> d!1452919 m!5442031))

(assert (=> d!1452919 m!5441187))

(assert (=> b!4610426 m!5441503))

(assert (=> b!4610002 d!1452919))

(declare-fun d!1452921 () Bool)

(declare-fun lt!1766876 () Bool)

(assert (=> d!1452921 (= lt!1766876 (select (content!8706 (t!358336 (toList!4764 lm!1477))) lt!1766442))))

(declare-fun e!2875945 () Bool)

(assert (=> d!1452921 (= lt!1766876 e!2875945)))

(declare-fun res!1930207 () Bool)

(assert (=> d!1452921 (=> (not res!1930207) (not e!2875945))))

(assert (=> d!1452921 (= res!1930207 ((_ is Cons!51218) (t!358336 (toList!4764 lm!1477))))))

(assert (=> d!1452921 (= (contains!14228 (t!358336 (toList!4764 lm!1477)) lt!1766442) lt!1766876)))

(declare-fun b!4610427 () Bool)

(declare-fun e!2875946 () Bool)

(assert (=> b!4610427 (= e!2875945 e!2875946)))

(declare-fun res!1930208 () Bool)

(assert (=> b!4610427 (=> res!1930208 e!2875946)))

(assert (=> b!4610427 (= res!1930208 (= (h!57210 (t!358336 (toList!4764 lm!1477))) lt!1766442))))

(declare-fun b!4610428 () Bool)

(assert (=> b!4610428 (= e!2875946 (contains!14228 (t!358336 (t!358336 (toList!4764 lm!1477))) lt!1766442))))

(assert (= (and d!1452921 res!1930207) b!4610427))

(assert (= (and b!4610427 (not res!1930208)) b!4610428))

(declare-fun m!5442033 () Bool)

(assert (=> d!1452921 m!5442033))

(declare-fun m!5442035 () Bool)

(assert (=> d!1452921 m!5442035))

(declare-fun m!5442037 () Bool)

(assert (=> b!4610428 m!5442037))

(assert (=> b!4610003 d!1452921))

(declare-fun d!1452923 () Bool)

(declare-fun res!1930216 () Bool)

(declare-fun e!2875954 () Bool)

(assert (=> d!1452923 (=> res!1930216 e!2875954)))

(declare-fun e!2875955 () Bool)

(assert (=> d!1452923 (= res!1930216 e!2875955)))

(declare-fun res!1930215 () Bool)

(assert (=> d!1452923 (=> (not res!1930215) (not e!2875955))))

(assert (=> d!1452923 (= res!1930215 ((_ is Cons!51218) (t!358336 (toList!4764 lm!1477))))))

(assert (=> d!1452923 (= (containsKeyBiggerList!314 (t!358336 (toList!4764 lm!1477)) key!3287) e!2875954)))

(declare-fun b!4610435 () Bool)

(assert (=> b!4610435 (= e!2875955 (containsKey!2264 (_2!29268 (h!57210 (t!358336 (toList!4764 lm!1477)))) key!3287))))

(declare-fun b!4610436 () Bool)

(declare-fun e!2875953 () Bool)

(assert (=> b!4610436 (= e!2875954 e!2875953)))

(declare-fun res!1930217 () Bool)

(assert (=> b!4610436 (=> (not res!1930217) (not e!2875953))))

(assert (=> b!4610436 (= res!1930217 ((_ is Cons!51218) (t!358336 (toList!4764 lm!1477))))))

(declare-fun b!4610437 () Bool)

(assert (=> b!4610437 (= e!2875953 (containsKeyBiggerList!314 (t!358336 (t!358336 (toList!4764 lm!1477))) key!3287))))

(assert (= (and d!1452923 res!1930215) b!4610435))

(assert (= (and d!1452923 (not res!1930216)) b!4610436))

(assert (= (and b!4610436 res!1930217) b!4610437))

(declare-fun m!5442039 () Bool)

(assert (=> b!4610435 m!5442039))

(declare-fun m!5442041 () Bool)

(assert (=> b!4610437 m!5442041))

(assert (=> b!4610005 d!1452923))

(declare-fun d!1452925 () Bool)

(declare-fun res!1930219 () Bool)

(declare-fun e!2875957 () Bool)

(assert (=> d!1452925 (=> res!1930219 e!2875957)))

(declare-fun e!2875958 () Bool)

(assert (=> d!1452925 (= res!1930219 e!2875958)))

(declare-fun res!1930218 () Bool)

(assert (=> d!1452925 (=> (not res!1930218) (not e!2875958))))

(assert (=> d!1452925 (= res!1930218 ((_ is Cons!51218) (toList!4764 lt!1766441)))))

(assert (=> d!1452925 (= (containsKeyBiggerList!314 (toList!4764 lt!1766441) key!3287) e!2875957)))

(declare-fun b!4610438 () Bool)

(assert (=> b!4610438 (= e!2875958 (containsKey!2264 (_2!29268 (h!57210 (toList!4764 lt!1766441))) key!3287))))

(declare-fun b!4610439 () Bool)

(declare-fun e!2875956 () Bool)

(assert (=> b!4610439 (= e!2875957 e!2875956)))

(declare-fun res!1930220 () Bool)

(assert (=> b!4610439 (=> (not res!1930220) (not e!2875956))))

(assert (=> b!4610439 (= res!1930220 ((_ is Cons!51218) (toList!4764 lt!1766441)))))

(declare-fun b!4610440 () Bool)

(assert (=> b!4610440 (= e!2875956 (containsKeyBiggerList!314 (t!358336 (toList!4764 lt!1766441)) key!3287))))

(assert (= (and d!1452925 res!1930218) b!4610438))

(assert (= (and d!1452925 (not res!1930219)) b!4610439))

(assert (= (and b!4610439 res!1930220) b!4610440))

(declare-fun m!5442043 () Bool)

(assert (=> b!4610438 m!5442043))

(declare-fun m!5442045 () Bool)

(assert (=> b!4610440 m!5442045))

(assert (=> b!4610005 d!1452925))

(declare-fun bs!1016104 () Bool)

(declare-fun d!1452927 () Bool)

(assert (= bs!1016104 (and d!1452927 d!1452845)))

(declare-fun lambda!188446 () Int)

(assert (=> bs!1016104 (= lambda!188446 lambda!188421)))

(declare-fun bs!1016105 () Bool)

(assert (= bs!1016105 (and d!1452927 d!1452893)))

(assert (=> bs!1016105 (= lambda!188446 lambda!188433)))

(declare-fun bs!1016106 () Bool)

(assert (= bs!1016106 (and d!1452927 d!1452889)))

(assert (=> bs!1016106 (= lambda!188446 lambda!188432)))

(declare-fun bs!1016107 () Bool)

(assert (= bs!1016107 (and d!1452927 start!461020)))

(assert (=> bs!1016107 (= lambda!188446 lambda!188314)))

(declare-fun bs!1016108 () Bool)

(assert (= bs!1016108 (and d!1452927 d!1452877)))

(assert (=> bs!1016108 (= lambda!188446 lambda!188428)))

(declare-fun bs!1016109 () Bool)

(assert (= bs!1016109 (and d!1452927 b!4610010)))

(assert (=> bs!1016109 (not (= lambda!188446 lambda!188315))))

(declare-fun bs!1016110 () Bool)

(assert (= bs!1016110 (and d!1452927 d!1452825)))

(assert (=> bs!1016110 (= lambda!188446 lambda!188415)))

(declare-fun bs!1016111 () Bool)

(assert (= bs!1016111 (and d!1452927 d!1452853)))

(assert (=> bs!1016111 (= lambda!188446 lambda!188427)))

(declare-fun bs!1016112 () Bool)

(assert (= bs!1016112 (and d!1452927 d!1452847)))

(assert (=> bs!1016112 (= lambda!188446 lambda!188424)))

(declare-fun bs!1016113 () Bool)

(assert (= bs!1016113 (and d!1452927 d!1452911)))

(assert (=> bs!1016113 (not (= lambda!188446 lambda!188443))))

(declare-fun bs!1016114 () Bool)

(assert (= bs!1016114 (and d!1452927 d!1452739)))

(assert (=> bs!1016114 (= lambda!188446 lambda!188335)))

(declare-fun bs!1016115 () Bool)

(assert (= bs!1016115 (and d!1452927 d!1452843)))

(assert (=> bs!1016115 (= lambda!188446 lambda!188420)))

(declare-fun bs!1016116 () Bool)

(assert (= bs!1016116 (and d!1452927 d!1452885)))

(assert (=> bs!1016116 (= lambda!188446 lambda!188431)))

(assert (=> d!1452927 (containsKeyBiggerList!314 (toList!4764 lt!1766441) key!3287)))

(declare-fun lt!1766879 () Unit!109347)

(declare-fun choose!31049 (ListLongMap!3395 K!12585 Hashable!5773) Unit!109347)

(assert (=> d!1452927 (= lt!1766879 (choose!31049 lt!1766441 key!3287 hashF!1107))))

(assert (=> d!1452927 (forall!10696 (toList!4764 lt!1766441) lambda!188446)))

(assert (=> d!1452927 (= (lemmaInLongMapThenContainsKeyBiggerList!184 lt!1766441 key!3287 hashF!1107) lt!1766879)))

(declare-fun bs!1016117 () Bool)

(assert (= bs!1016117 d!1452927))

(assert (=> bs!1016117 m!5441235))

(declare-fun m!5442047 () Bool)

(assert (=> bs!1016117 m!5442047))

(declare-fun m!5442049 () Bool)

(assert (=> bs!1016117 m!5442049))

(assert (=> b!4610005 d!1452927))

(declare-fun b!4610445 () Bool)

(declare-fun e!2875961 () Bool)

(declare-fun tp!1341083 () Bool)

(declare-fun tp!1341084 () Bool)

(assert (=> b!4610445 (= e!2875961 (and tp!1341083 tp!1341084))))

(assert (=> b!4610011 (= tp!1341068 e!2875961)))

(assert (= (and b!4610011 ((_ is Cons!51218) (toList!4764 lm!1477))) b!4610445))

(declare-fun e!2875964 () Bool)

(declare-fun b!4610450 () Bool)

(declare-fun tp!1341087 () Bool)

(assert (=> b!4610450 (= e!2875964 (and tp_is_empty!28789 tp_is_empty!28791 tp!1341087))))

(assert (=> b!4610004 (= tp!1341069 e!2875964)))

(assert (= (and b!4610004 ((_ is Cons!51217) (t!358335 newBucket!178))) b!4610450))

(declare-fun b_lambda!170427 () Bool)

(assert (= b_lambda!170425 (or start!461020 b_lambda!170427)))

(declare-fun bs!1016118 () Bool)

(declare-fun d!1452929 () Bool)

(assert (= bs!1016118 (and d!1452929 start!461020)))

(assert (=> bs!1016118 (= (dynLambda!21440 lambda!188314 (h!57210 (toList!4764 lm!1477))) (noDuplicateKeys!1374 (_2!29268 (h!57210 (toList!4764 lm!1477)))))))

(declare-fun m!5442051 () Bool)

(assert (=> bs!1016118 m!5442051))

(assert (=> d!1452919 d!1452929))

(declare-fun b_lambda!170429 () Bool)

(assert (= b_lambda!170423 (or start!461020 b_lambda!170429)))

(declare-fun bs!1016119 () Bool)

(declare-fun d!1452931 () Bool)

(assert (= bs!1016119 (and d!1452931 start!461020)))

(assert (=> bs!1016119 (= (dynLambda!21440 lambda!188314 lt!1766442) (noDuplicateKeys!1374 (_2!29268 lt!1766442)))))

(declare-fun m!5442053 () Bool)

(assert (=> bs!1016119 m!5442053))

(assert (=> d!1452857 d!1452931))

(declare-fun b_lambda!170431 () Bool)

(assert (= b_lambda!170405 (or b!4610010 b_lambda!170431)))

(declare-fun bs!1016120 () Bool)

(declare-fun d!1452933 () Bool)

(assert (= bs!1016120 (and d!1452933 b!4610010)))

(assert (=> bs!1016120 (= (dynLambda!21441 lambda!188316 (tuple2!51947 key!3287 (_2!29267 (get!16945 lt!1766436)))) (= (hash!3313 hashF!1107 (_1!29267 (tuple2!51947 key!3287 (_2!29267 (get!16945 lt!1766436))))) (_1!29268 (h!57210 (toList!4764 lm!1477)))))))

(declare-fun m!5442055 () Bool)

(assert (=> bs!1016120 m!5442055))

(assert (=> d!1452775 d!1452933))

(declare-fun b_lambda!170433 () Bool)

(assert (= b_lambda!170409 (or b!4610010 b_lambda!170433)))

(declare-fun bs!1016121 () Bool)

(declare-fun d!1452935 () Bool)

(assert (= bs!1016121 (and d!1452935 b!4610010)))

(assert (=> bs!1016121 (= (dynLambda!21440 lambda!188315 (h!57210 (toList!4764 lm!1477))) (allKeysSameHash!1230 (_2!29268 (h!57210 (toList!4764 lm!1477))) (_1!29268 (h!57210 (toList!4764 lm!1477))) hashF!1107))))

(declare-fun m!5442057 () Bool)

(assert (=> bs!1016121 m!5442057))

(assert (=> d!1452783 d!1452935))

(declare-fun b_lambda!170435 () Bool)

(assert (= b_lambda!170403 (or start!461020 b_lambda!170435)))

(assert (=> b!4610132 d!1452929))

(check-sat tp_is_empty!28791 (not b!4610401) (not b!4610334) (not b!4610426) (not b!4610264) (not d!1452879) (not b!4610333) (not d!1452887) (not d!1452883) (not d!1452893) (not bm!321457) (not bm!321465) (not d!1452771) (not b!4610358) (not d!1452889) (not b!4610265) (not b!4610342) (not b!4610166) (not b!4610328) (not d!1452919) (not bm!321464) (not b!4610386) (not d!1452775) (not b!4610450) (not d!1452915) (not d!1452881) (not b!4610102) (not d!1452863) (not d!1452853) (not b!4610377) (not b!4610345) (not b!4610347) (not b!4610380) (not b!4610391) (not b!4610361) (not b!4610397) (not d!1452877) (not d!1452927) (not d!1452901) (not b!4610372) (not d!1452783) (not b!4610285) (not b_lambda!170431) (not b!4610409) tp_is_empty!28789 (not d!1452845) (not b!4610424) (not b!4610363) (not b_lambda!170435) (not d!1452867) (not d!1452825) (not bm!321463) (not b!4610190) (not d!1452911) (not b_lambda!170433) (not d!1452907) (not b!4610366) (not bm!321458) (not b!4610360) (not b!4610133) (not d!1452891) (not d!1452903) (not b!4610404) (not d!1452857) (not d!1452829) (not b!4610395) (not bs!1016121) (not b!4610425) (not b!4610185) (not b!4610331) (not bs!1016118) (not b!4610329) (not b!4610400) (not bm!321467) (not b!4610438) (not d!1452897) (not b!4610413) (not b!4610406) (not b!4610415) (not d!1452895) (not b!4610394) (not b!4610344) (not bm!321456) (not d!1452849) (not b!4610405) (not b!4610332) (not d!1452793) (not b!4610398) (not d!1452737) (not d!1452875) (not b!4610184) (not d!1452899) (not b!4610267) (not b!4610100) (not b!4610337) (not b!4610389) (not b_lambda!170429) (not b!4610422) (not d!1452851) (not d!1452865) (not d!1452797) (not b!4610186) (not b!4610428) (not d!1452869) (not b!4610445) (not d!1452885) (not b!4610396) (not d!1452921) (not b!4610326) (not d!1452855) (not d!1452795) (not d!1452861) (not d!1452843) (not d!1452847) (not b!4610388) (not d!1452909) (not b!4610392) (not b!4610335) (not d!1452905) (not b!4610437) (not b!4610378) (not b!4610440) (not b!4610183) (not b!4610341) (not d!1452859) (not b!4610379) (not b!4610407) (not b!4610339) (not bm!321468) (not b!4610153) (not b!4610346) (not d!1452723) (not bm!321466) (not d!1452739) (not b!4610423) (not bs!1016120) (not b_lambda!170427) (not b!4610412) (not bs!1016119) (not b!4610435))
(check-sat)
