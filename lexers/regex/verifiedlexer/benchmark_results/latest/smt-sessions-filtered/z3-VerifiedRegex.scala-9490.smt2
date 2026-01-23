; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!501376 () Bool)

(assert start!501376)

(declare-fun res!2056437 () Bool)

(declare-fun e!3017386 () Bool)

(assert (=> start!501376 (=> (not res!2056437) (not e!3017386))))

(declare-datatypes ((V!16985 0))(
  ( (V!16986 (val!21697 Int)) )
))
(declare-datatypes ((K!16739 0))(
  ( (K!16740 (val!21698 Int)) )
))
(declare-datatypes ((tuple2!58330 0))(
  ( (tuple2!58331 (_1!32459 K!16739) (_2!32459 V!16985)) )
))
(declare-datatypes ((List!55172 0))(
  ( (Nil!55048) (Cons!55048 (h!61482 tuple2!58330) (t!362668 List!55172)) )
))
(declare-datatypes ((tuple2!58332 0))(
  ( (tuple2!58333 (_1!32460 (_ BitVec 64)) (_2!32460 List!55172)) )
))
(declare-datatypes ((List!55173 0))(
  ( (Nil!55049) (Cons!55049 (h!61483 tuple2!58332) (t!362669 List!55173)) )
))
(declare-datatypes ((ListLongMap!6063 0))(
  ( (ListLongMap!6064 (toList!7541 List!55173)) )
))
(declare-fun lm!2325 () ListLongMap!6063)

(declare-fun lambda!237488 () Int)

(declare-fun forall!12658 (List!55173 Int) Bool)

(assert (=> start!501376 (= res!2056437 (forall!12658 (toList!7541 lm!2325) lambda!237488))))

(assert (=> start!501376 e!3017386))

(declare-fun e!3017384 () Bool)

(declare-fun inv!70639 (ListLongMap!6063) Bool)

(assert (=> start!501376 (and (inv!70639 lm!2325) e!3017384)))

(assert (=> start!501376 true))

(declare-fun tp_is_empty!34543 () Bool)

(assert (=> start!501376 tp_is_empty!34543))

(declare-fun b!4828904 () Bool)

(declare-fun res!2056436 () Bool)

(assert (=> b!4828904 (=> (not res!2056436) (not e!3017386))))

(declare-datatypes ((Hashable!7300 0))(
  ( (HashableExt!7299 (__x!33575 Int)) )
))
(declare-fun hashF!1543 () Hashable!7300)

(declare-fun allKeysSameHashInMap!2616 (ListLongMap!6063 Hashable!7300) Bool)

(assert (=> b!4828904 (= res!2056436 (allKeysSameHashInMap!2616 lm!2325 hashF!1543))))

(declare-fun b!4828905 () Bool)

(declare-fun res!2056439 () Bool)

(assert (=> b!4828905 (=> (not res!2056439) (not e!3017386))))

(get-info :version)

(assert (=> b!4828905 (= res!2056439 ((_ is Cons!55049) (toList!7541 lm!2325)))))

(declare-fun b!4828906 () Bool)

(declare-fun tail!9422 (ListLongMap!6063) ListLongMap!6063)

(assert (=> b!4828906 (= e!3017386 (not (forall!12658 (toList!7541 (tail!9422 lm!2325)) lambda!237488)))))

(declare-fun key!5594 () K!16739)

(declare-fun containsKey!4415 (List!55172 K!16739) Bool)

(declare-fun apply!13365 (ListLongMap!6063 (_ BitVec 64)) List!55172)

(assert (=> b!4828906 (not (containsKey!4415 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325)))) key!5594))))

(declare-datatypes ((Unit!143475 0))(
  ( (Unit!143476) )
))
(declare-fun lt!1975327 () Unit!143475)

(declare-fun lemmaNotSameHashThenCannotContainKey!234 (ListLongMap!6063 K!16739 (_ BitVec 64) Hashable!7300) Unit!143475)

(assert (=> b!4828906 (= lt!1975327 (lemmaNotSameHashThenCannotContainKey!234 lm!2325 key!5594 (_1!32460 (h!61483 (toList!7541 lm!2325))) hashF!1543))))

(declare-datatypes ((ListMap!6913 0))(
  ( (ListMap!6914 (toList!7542 List!55172)) )
))
(declare-fun lt!1975328 () ListMap!6913)

(declare-fun e!3017385 () Bool)

(declare-fun contains!18852 (ListMap!6913 K!16739) Bool)

(declare-fun addToMapMapFromBucket!1823 (List!55172 ListMap!6913) ListMap!6913)

(assert (=> b!4828906 (= (contains!18852 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328) key!5594) e!3017385)))

(declare-fun res!2056435 () Bool)

(assert (=> b!4828906 (=> res!2056435 e!3017385)))

(assert (=> b!4828906 (= res!2056435 (containsKey!4415 (_2!32460 (h!61483 (toList!7541 lm!2325))) key!5594))))

(declare-fun lt!1975329 () Unit!143475)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!46 (List!55172 ListMap!6913 K!16739) Unit!143475)

(assert (=> b!4828906 (= lt!1975329 (lemmaAddToMapFromBucketContainsIIFInAccOrL!46 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328 key!5594))))

(declare-fun extractMap!2708 (List!55173) ListMap!6913)

(assert (=> b!4828906 (= lt!1975328 (extractMap!2708 (t!362669 (toList!7541 lm!2325))))))

(declare-fun b!4828907 () Bool)

(declare-fun tp!1362812 () Bool)

(assert (=> b!4828907 (= e!3017384 tp!1362812)))

(declare-fun b!4828908 () Bool)

(declare-fun res!2056438 () Bool)

(assert (=> b!4828908 (=> (not res!2056438) (not e!3017386))))

(declare-fun contains!18853 (ListLongMap!6063 (_ BitVec 64)) Bool)

(declare-fun hash!5453 (Hashable!7300 K!16739) (_ BitVec 64))

(assert (=> b!4828908 (= res!2056438 (not (contains!18853 lm!2325 (hash!5453 hashF!1543 key!5594))))))

(declare-fun b!4828909 () Bool)

(assert (=> b!4828909 (= e!3017385 (contains!18852 lt!1975328 key!5594))))

(assert (= (and start!501376 res!2056437) b!4828904))

(assert (= (and b!4828904 res!2056436) b!4828908))

(assert (= (and b!4828908 res!2056438) b!4828905))

(assert (= (and b!4828905 res!2056439) b!4828906))

(assert (= (and b!4828906 (not res!2056435)) b!4828909))

(assert (= start!501376 b!4828907))

(declare-fun m!5820830 () Bool)

(assert (=> b!4828908 m!5820830))

(assert (=> b!4828908 m!5820830))

(declare-fun m!5820832 () Bool)

(assert (=> b!4828908 m!5820832))

(declare-fun m!5820834 () Bool)

(assert (=> b!4828904 m!5820834))

(declare-fun m!5820836 () Bool)

(assert (=> start!501376 m!5820836))

(declare-fun m!5820838 () Bool)

(assert (=> start!501376 m!5820838))

(declare-fun m!5820840 () Bool)

(assert (=> b!4828909 m!5820840))

(declare-fun m!5820842 () Bool)

(assert (=> b!4828906 m!5820842))

(declare-fun m!5820844 () Bool)

(assert (=> b!4828906 m!5820844))

(declare-fun m!5820846 () Bool)

(assert (=> b!4828906 m!5820846))

(declare-fun m!5820848 () Bool)

(assert (=> b!4828906 m!5820848))

(declare-fun m!5820850 () Bool)

(assert (=> b!4828906 m!5820850))

(declare-fun m!5820852 () Bool)

(assert (=> b!4828906 m!5820852))

(assert (=> b!4828906 m!5820848))

(declare-fun m!5820854 () Bool)

(assert (=> b!4828906 m!5820854))

(declare-fun m!5820856 () Bool)

(assert (=> b!4828906 m!5820856))

(declare-fun m!5820858 () Bool)

(assert (=> b!4828906 m!5820858))

(declare-fun m!5820860 () Bool)

(assert (=> b!4828906 m!5820860))

(assert (=> b!4828906 m!5820854))

(check-sat tp_is_empty!34543 (not start!501376) (not b!4828909) (not b!4828906) (not b!4828908) (not b!4828904) (not b!4828907))
(check-sat)
(get-model)

(declare-fun b!4828964 () Bool)

(declare-fun e!3017430 () Unit!143475)

(declare-fun e!3017429 () Unit!143475)

(assert (=> b!4828964 (= e!3017430 e!3017429)))

(declare-fun c!822795 () Bool)

(declare-fun call!336538 () Bool)

(assert (=> b!4828964 (= c!822795 call!336538)))

(declare-fun b!4828965 () Bool)

(declare-fun Unit!143493 () Unit!143475)

(assert (=> b!4828965 (= e!3017429 Unit!143493)))

(declare-fun bm!336533 () Bool)

(declare-datatypes ((List!55175 0))(
  ( (Nil!55051) (Cons!55051 (h!61485 K!16739) (t!362671 List!55175)) )
))
(declare-fun e!3017426 () List!55175)

(declare-fun contains!18855 (List!55175 K!16739) Bool)

(assert (=> bm!336533 (= call!336538 (contains!18855 e!3017426 key!5594))))

(declare-fun c!822797 () Bool)

(declare-fun c!822796 () Bool)

(assert (=> bm!336533 (= c!822797 c!822796)))

(declare-fun b!4828966 () Bool)

(declare-fun e!3017428 () Bool)

(declare-fun keys!20269 (ListMap!6913) List!55175)

(assert (=> b!4828966 (= e!3017428 (contains!18855 (keys!20269 lt!1975328) key!5594))))

(declare-fun b!4828967 () Bool)

(assert (=> b!4828967 (= e!3017426 (keys!20269 lt!1975328))))

(declare-fun b!4828968 () Bool)

(declare-fun e!3017427 () Bool)

(assert (=> b!4828968 (= e!3017427 (not (contains!18855 (keys!20269 lt!1975328) key!5594)))))

(declare-fun b!4828969 () Bool)

(assert (=> b!4828969 false))

(declare-fun lt!1975376 () Unit!143475)

(declare-fun lt!1975379 () Unit!143475)

(assert (=> b!4828969 (= lt!1975376 lt!1975379)))

(declare-fun containsKey!4418 (List!55172 K!16739) Bool)

(assert (=> b!4828969 (containsKey!4418 (toList!7542 lt!1975328) key!5594)))

(declare-fun lemmaInGetKeysListThenContainsKey!1168 (List!55172 K!16739) Unit!143475)

(assert (=> b!4828969 (= lt!1975379 (lemmaInGetKeysListThenContainsKey!1168 (toList!7542 lt!1975328) key!5594))))

(declare-fun Unit!143494 () Unit!143475)

(assert (=> b!4828969 (= e!3017429 Unit!143494)))

(declare-fun b!4828970 () Bool)

(declare-fun lt!1975380 () Unit!143475)

(assert (=> b!4828970 (= e!3017430 lt!1975380)))

(declare-fun lt!1975374 () Unit!143475)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2427 (List!55172 K!16739) Unit!143475)

(assert (=> b!4828970 (= lt!1975374 (lemmaContainsKeyImpliesGetValueByKeyDefined!2427 (toList!7542 lt!1975328) key!5594))))

(declare-datatypes ((Option!13515 0))(
  ( (None!13514) (Some!13514 (v!49203 V!16985)) )
))
(declare-fun isDefined!10630 (Option!13515) Bool)

(declare-fun getValueByKey!2642 (List!55172 K!16739) Option!13515)

(assert (=> b!4828970 (isDefined!10630 (getValueByKey!2642 (toList!7542 lt!1975328) key!5594))))

(declare-fun lt!1975373 () Unit!143475)

(assert (=> b!4828970 (= lt!1975373 lt!1975374)))

(declare-fun lemmaInListThenGetKeysListContains!1163 (List!55172 K!16739) Unit!143475)

(assert (=> b!4828970 (= lt!1975380 (lemmaInListThenGetKeysListContains!1163 (toList!7542 lt!1975328) key!5594))))

(assert (=> b!4828970 call!336538))

(declare-fun b!4828971 () Bool)

(declare-fun getKeysList!1168 (List!55172) List!55175)

(assert (=> b!4828971 (= e!3017426 (getKeysList!1168 (toList!7542 lt!1975328)))))

(declare-fun d!1547555 () Bool)

(declare-fun e!3017431 () Bool)

(assert (=> d!1547555 e!3017431))

(declare-fun res!2056464 () Bool)

(assert (=> d!1547555 (=> res!2056464 e!3017431)))

(assert (=> d!1547555 (= res!2056464 e!3017427)))

(declare-fun res!2056465 () Bool)

(assert (=> d!1547555 (=> (not res!2056465) (not e!3017427))))

(declare-fun lt!1975377 () Bool)

(assert (=> d!1547555 (= res!2056465 (not lt!1975377))))

(declare-fun lt!1975375 () Bool)

(assert (=> d!1547555 (= lt!1975377 lt!1975375)))

(declare-fun lt!1975378 () Unit!143475)

(assert (=> d!1547555 (= lt!1975378 e!3017430)))

(assert (=> d!1547555 (= c!822796 lt!1975375)))

(assert (=> d!1547555 (= lt!1975375 (containsKey!4418 (toList!7542 lt!1975328) key!5594))))

(assert (=> d!1547555 (= (contains!18852 lt!1975328 key!5594) lt!1975377)))

(declare-fun b!4828972 () Bool)

(assert (=> b!4828972 (= e!3017431 e!3017428)))

(declare-fun res!2056466 () Bool)

(assert (=> b!4828972 (=> (not res!2056466) (not e!3017428))))

(assert (=> b!4828972 (= res!2056466 (isDefined!10630 (getValueByKey!2642 (toList!7542 lt!1975328) key!5594)))))

(assert (= (and d!1547555 c!822796) b!4828970))

(assert (= (and d!1547555 (not c!822796)) b!4828964))

(assert (= (and b!4828964 c!822795) b!4828969))

(assert (= (and b!4828964 (not c!822795)) b!4828965))

(assert (= (or b!4828970 b!4828964) bm!336533))

(assert (= (and bm!336533 c!822797) b!4828971))

(assert (= (and bm!336533 (not c!822797)) b!4828967))

(assert (= (and d!1547555 res!2056465) b!4828968))

(assert (= (and d!1547555 (not res!2056464)) b!4828972))

(assert (= (and b!4828972 res!2056466) b!4828966))

(declare-fun m!5820890 () Bool)

(assert (=> b!4828970 m!5820890))

(declare-fun m!5820892 () Bool)

(assert (=> b!4828970 m!5820892))

(assert (=> b!4828970 m!5820892))

(declare-fun m!5820894 () Bool)

(assert (=> b!4828970 m!5820894))

(declare-fun m!5820896 () Bool)

(assert (=> b!4828970 m!5820896))

(declare-fun m!5820898 () Bool)

(assert (=> bm!336533 m!5820898))

(declare-fun m!5820900 () Bool)

(assert (=> b!4828967 m!5820900))

(assert (=> b!4828968 m!5820900))

(assert (=> b!4828968 m!5820900))

(declare-fun m!5820902 () Bool)

(assert (=> b!4828968 m!5820902))

(assert (=> b!4828966 m!5820900))

(assert (=> b!4828966 m!5820900))

(assert (=> b!4828966 m!5820902))

(declare-fun m!5820904 () Bool)

(assert (=> b!4828969 m!5820904))

(declare-fun m!5820906 () Bool)

(assert (=> b!4828969 m!5820906))

(assert (=> b!4828972 m!5820892))

(assert (=> b!4828972 m!5820892))

(assert (=> b!4828972 m!5820894))

(assert (=> d!1547555 m!5820904))

(declare-fun m!5820908 () Bool)

(assert (=> b!4828971 m!5820908))

(assert (=> b!4828909 d!1547555))

(declare-fun d!1547563 () Bool)

(declare-fun e!3017436 () Bool)

(assert (=> d!1547563 e!3017436))

(declare-fun res!2056469 () Bool)

(assert (=> d!1547563 (=> res!2056469 e!3017436)))

(declare-fun lt!1975390 () Bool)

(assert (=> d!1547563 (= res!2056469 (not lt!1975390))))

(declare-fun lt!1975392 () Bool)

(assert (=> d!1547563 (= lt!1975390 lt!1975392)))

(declare-fun lt!1975389 () Unit!143475)

(declare-fun e!3017437 () Unit!143475)

(assert (=> d!1547563 (= lt!1975389 e!3017437)))

(declare-fun c!822800 () Bool)

(assert (=> d!1547563 (= c!822800 lt!1975392)))

(declare-fun containsKey!4419 (List!55173 (_ BitVec 64)) Bool)

(assert (=> d!1547563 (= lt!1975392 (containsKey!4419 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)))))

(assert (=> d!1547563 (= (contains!18853 lm!2325 (hash!5453 hashF!1543 key!5594)) lt!1975390)))

(declare-fun b!4828979 () Bool)

(declare-fun lt!1975391 () Unit!143475)

(assert (=> b!4828979 (= e!3017437 lt!1975391)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2428 (List!55173 (_ BitVec 64)) Unit!143475)

(assert (=> b!4828979 (= lt!1975391 (lemmaContainsKeyImpliesGetValueByKeyDefined!2428 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)))))

(declare-datatypes ((Option!13516 0))(
  ( (None!13515) (Some!13515 (v!49204 List!55172)) )
))
(declare-fun isDefined!10631 (Option!13516) Bool)

(declare-fun getValueByKey!2643 (List!55173 (_ BitVec 64)) Option!13516)

(assert (=> b!4828979 (isDefined!10631 (getValueByKey!2643 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)))))

(declare-fun b!4828980 () Bool)

(declare-fun Unit!143495 () Unit!143475)

(assert (=> b!4828980 (= e!3017437 Unit!143495)))

(declare-fun b!4828981 () Bool)

(assert (=> b!4828981 (= e!3017436 (isDefined!10631 (getValueByKey!2643 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594))))))

(assert (= (and d!1547563 c!822800) b!4828979))

(assert (= (and d!1547563 (not c!822800)) b!4828980))

(assert (= (and d!1547563 (not res!2056469)) b!4828981))

(assert (=> d!1547563 m!5820830))

(declare-fun m!5820910 () Bool)

(assert (=> d!1547563 m!5820910))

(assert (=> b!4828979 m!5820830))

(declare-fun m!5820912 () Bool)

(assert (=> b!4828979 m!5820912))

(assert (=> b!4828979 m!5820830))

(declare-fun m!5820914 () Bool)

(assert (=> b!4828979 m!5820914))

(assert (=> b!4828979 m!5820914))

(declare-fun m!5820916 () Bool)

(assert (=> b!4828979 m!5820916))

(assert (=> b!4828981 m!5820830))

(assert (=> b!4828981 m!5820914))

(assert (=> b!4828981 m!5820914))

(assert (=> b!4828981 m!5820916))

(assert (=> b!4828908 d!1547563))

(declare-fun d!1547565 () Bool)

(declare-fun hash!5457 (Hashable!7300 K!16739) (_ BitVec 64))

(assert (=> d!1547565 (= (hash!5453 hashF!1543 key!5594) (hash!5457 hashF!1543 key!5594))))

(declare-fun bs!1165222 () Bool)

(assert (= bs!1165222 d!1547565))

(declare-fun m!5820918 () Bool)

(assert (=> bs!1165222 m!5820918))

(assert (=> b!4828908 d!1547565))

(declare-fun d!1547567 () Bool)

(declare-fun res!2056474 () Bool)

(declare-fun e!3017442 () Bool)

(assert (=> d!1547567 (=> res!2056474 e!3017442)))

(assert (=> d!1547567 (= res!2056474 ((_ is Nil!55049) (toList!7541 lm!2325)))))

(assert (=> d!1547567 (= (forall!12658 (toList!7541 lm!2325) lambda!237488) e!3017442)))

(declare-fun b!4828986 () Bool)

(declare-fun e!3017443 () Bool)

(assert (=> b!4828986 (= e!3017442 e!3017443)))

(declare-fun res!2056475 () Bool)

(assert (=> b!4828986 (=> (not res!2056475) (not e!3017443))))

(declare-fun dynLambda!22235 (Int tuple2!58332) Bool)

(assert (=> b!4828986 (= res!2056475 (dynLambda!22235 lambda!237488 (h!61483 (toList!7541 lm!2325))))))

(declare-fun b!4828987 () Bool)

(assert (=> b!4828987 (= e!3017443 (forall!12658 (t!362669 (toList!7541 lm!2325)) lambda!237488))))

(assert (= (and d!1547567 (not res!2056474)) b!4828986))

(assert (= (and b!4828986 res!2056475) b!4828987))

(declare-fun b_lambda!190275 () Bool)

(assert (=> (not b_lambda!190275) (not b!4828986)))

(declare-fun m!5820920 () Bool)

(assert (=> b!4828986 m!5820920))

(declare-fun m!5820922 () Bool)

(assert (=> b!4828987 m!5820922))

(assert (=> start!501376 d!1547567))

(declare-fun d!1547569 () Bool)

(declare-fun isStrictlySorted!997 (List!55173) Bool)

(assert (=> d!1547569 (= (inv!70639 lm!2325) (isStrictlySorted!997 (toList!7541 lm!2325)))))

(declare-fun bs!1165223 () Bool)

(assert (= bs!1165223 d!1547569))

(declare-fun m!5820924 () Bool)

(assert (=> bs!1165223 m!5820924))

(assert (=> start!501376 d!1547569))

(declare-fun bs!1165224 () Bool)

(declare-fun d!1547571 () Bool)

(assert (= bs!1165224 (and d!1547571 start!501376)))

(declare-fun lambda!237491 () Int)

(assert (=> bs!1165224 (not (= lambda!237491 lambda!237488))))

(assert (=> d!1547571 true))

(assert (=> d!1547571 (= (allKeysSameHashInMap!2616 lm!2325 hashF!1543) (forall!12658 (toList!7541 lm!2325) lambda!237491))))

(declare-fun bs!1165225 () Bool)

(assert (= bs!1165225 d!1547571))

(declare-fun m!5820926 () Bool)

(assert (=> bs!1165225 m!5820926))

(assert (=> b!4828904 d!1547571))

(declare-fun d!1547573 () Bool)

(declare-fun res!2056476 () Bool)

(declare-fun e!3017444 () Bool)

(assert (=> d!1547573 (=> res!2056476 e!3017444)))

(assert (=> d!1547573 (= res!2056476 ((_ is Nil!55049) (toList!7541 (tail!9422 lm!2325))))))

(assert (=> d!1547573 (= (forall!12658 (toList!7541 (tail!9422 lm!2325)) lambda!237488) e!3017444)))

(declare-fun b!4828990 () Bool)

(declare-fun e!3017445 () Bool)

(assert (=> b!4828990 (= e!3017444 e!3017445)))

(declare-fun res!2056477 () Bool)

(assert (=> b!4828990 (=> (not res!2056477) (not e!3017445))))

(assert (=> b!4828990 (= res!2056477 (dynLambda!22235 lambda!237488 (h!61483 (toList!7541 (tail!9422 lm!2325)))))))

(declare-fun b!4828991 () Bool)

(assert (=> b!4828991 (= e!3017445 (forall!12658 (t!362669 (toList!7541 (tail!9422 lm!2325))) lambda!237488))))

(assert (= (and d!1547573 (not res!2056476)) b!4828990))

(assert (= (and b!4828990 res!2056477) b!4828991))

(declare-fun b_lambda!190277 () Bool)

(assert (=> (not b_lambda!190277) (not b!4828990)))

(declare-fun m!5820928 () Bool)

(assert (=> b!4828990 m!5820928))

(declare-fun m!5820930 () Bool)

(assert (=> b!4828991 m!5820930))

(assert (=> b!4828906 d!1547573))

(declare-fun d!1547575 () Bool)

(declare-fun res!2056482 () Bool)

(declare-fun e!3017450 () Bool)

(assert (=> d!1547575 (=> res!2056482 e!3017450)))

(assert (=> d!1547575 (= res!2056482 (and ((_ is Cons!55048) (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325))))) (= (_1!32459 (h!61482 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325)))))) key!5594)))))

(assert (=> d!1547575 (= (containsKey!4415 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325)))) key!5594) e!3017450)))

(declare-fun b!4828996 () Bool)

(declare-fun e!3017451 () Bool)

(assert (=> b!4828996 (= e!3017450 e!3017451)))

(declare-fun res!2056483 () Bool)

(assert (=> b!4828996 (=> (not res!2056483) (not e!3017451))))

(assert (=> b!4828996 (= res!2056483 ((_ is Cons!55048) (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun b!4828997 () Bool)

(assert (=> b!4828997 (= e!3017451 (containsKey!4415 (t!362668 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325))))) key!5594))))

(assert (= (and d!1547575 (not res!2056482)) b!4828996))

(assert (= (and b!4828996 res!2056483) b!4828997))

(declare-fun m!5820932 () Bool)

(assert (=> b!4828997 m!5820932))

(assert (=> b!4828906 d!1547575))

(declare-fun d!1547577 () Bool)

(declare-fun tail!9424 (List!55173) List!55173)

(assert (=> d!1547577 (= (tail!9422 lm!2325) (ListLongMap!6064 (tail!9424 (toList!7541 lm!2325))))))

(declare-fun bs!1165226 () Bool)

(assert (= bs!1165226 d!1547577))

(declare-fun m!5820934 () Bool)

(assert (=> bs!1165226 m!5820934))

(assert (=> b!4828906 d!1547577))

(declare-fun b!4829070 () Bool)

(assert (=> b!4829070 true))

(declare-fun bs!1165244 () Bool)

(declare-fun b!4829069 () Bool)

(assert (= bs!1165244 (and b!4829069 b!4829070)))

(declare-fun lambda!237562 () Int)

(declare-fun lambda!237561 () Int)

(assert (=> bs!1165244 (= lambda!237562 lambda!237561)))

(assert (=> b!4829069 true))

(declare-fun lambda!237563 () Int)

(declare-fun lt!1975544 () ListMap!6913)

(assert (=> bs!1165244 (= (= lt!1975544 lt!1975328) (= lambda!237563 lambda!237561))))

(assert (=> b!4829069 (= (= lt!1975544 lt!1975328) (= lambda!237563 lambda!237562))))

(assert (=> b!4829069 true))

(declare-fun bs!1165245 () Bool)

(declare-fun d!1547579 () Bool)

(assert (= bs!1165245 (and d!1547579 b!4829070)))

(declare-fun lt!1975543 () ListMap!6913)

(declare-fun lambda!237564 () Int)

(assert (=> bs!1165245 (= (= lt!1975543 lt!1975328) (= lambda!237564 lambda!237561))))

(declare-fun bs!1165246 () Bool)

(assert (= bs!1165246 (and d!1547579 b!4829069)))

(assert (=> bs!1165246 (= (= lt!1975543 lt!1975328) (= lambda!237564 lambda!237562))))

(assert (=> bs!1165246 (= (= lt!1975543 lt!1975544) (= lambda!237564 lambda!237563))))

(assert (=> d!1547579 true))

(declare-fun b!4829066 () Bool)

(declare-fun res!2056517 () Bool)

(declare-fun e!3017497 () Bool)

(assert (=> b!4829066 (=> (not res!2056517) (not e!3017497))))

(declare-fun forall!12660 (List!55172 Int) Bool)

(assert (=> b!4829066 (= res!2056517 (forall!12660 (toList!7542 lt!1975328) lambda!237564))))

(declare-fun bm!336550 () Bool)

(declare-fun c!822815 () Bool)

(declare-fun call!336557 () Bool)

(assert (=> bm!336550 (= call!336557 (forall!12660 (toList!7542 lt!1975328) (ite c!822815 lambda!237561 lambda!237562)))))

(assert (=> d!1547579 e!3017497))

(declare-fun res!2056516 () Bool)

(assert (=> d!1547579 (=> (not res!2056516) (not e!3017497))))

(assert (=> d!1547579 (= res!2056516 (forall!12660 (_2!32460 (h!61483 (toList!7541 lm!2325))) lambda!237564))))

(declare-fun e!3017495 () ListMap!6913)

(assert (=> d!1547579 (= lt!1975543 e!3017495)))

(assert (=> d!1547579 (= c!822815 ((_ is Nil!55048) (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(declare-fun noDuplicateKeys!2466 (List!55172) Bool)

(assert (=> d!1547579 (noDuplicateKeys!2466 (_2!32460 (h!61483 (toList!7541 lm!2325))))))

(assert (=> d!1547579 (= (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328) lt!1975543)))

(declare-fun b!4829067 () Bool)

(declare-fun e!3017496 () Bool)

(assert (=> b!4829067 (= e!3017496 (forall!12660 (toList!7542 lt!1975328) lambda!237563))))

(declare-fun b!4829068 () Bool)

(declare-fun invariantList!1822 (List!55172) Bool)

(assert (=> b!4829068 (= e!3017497 (invariantList!1822 (toList!7542 lt!1975543)))))

(declare-fun bm!336551 () Bool)

(declare-fun call!336555 () Unit!143475)

(declare-fun lemmaContainsAllItsOwnKeys!1000 (ListMap!6913) Unit!143475)

(assert (=> bm!336551 (= call!336555 (lemmaContainsAllItsOwnKeys!1000 lt!1975328))))

(assert (=> b!4829069 (= e!3017495 lt!1975544)))

(declare-fun lt!1975531 () ListMap!6913)

(declare-fun +!2545 (ListMap!6913 tuple2!58330) ListMap!6913)

(assert (=> b!4829069 (= lt!1975531 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (=> b!4829069 (= lt!1975544 (addToMapMapFromBucket!1823 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun lt!1975534 () Unit!143475)

(assert (=> b!4829069 (= lt!1975534 call!336555)))

(assert (=> b!4829069 call!336557))

(declare-fun lt!1975539 () Unit!143475)

(assert (=> b!4829069 (= lt!1975539 lt!1975534)))

(assert (=> b!4829069 (forall!12660 (toList!7542 lt!1975531) lambda!237563)))

(declare-fun lt!1975526 () Unit!143475)

(declare-fun Unit!143496 () Unit!143475)

(assert (=> b!4829069 (= lt!1975526 Unit!143496)))

(assert (=> b!4829069 (forall!12660 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) lambda!237563)))

(declare-fun lt!1975542 () Unit!143475)

(declare-fun Unit!143497 () Unit!143475)

(assert (=> b!4829069 (= lt!1975542 Unit!143497)))

(declare-fun lt!1975540 () Unit!143475)

(declare-fun Unit!143498 () Unit!143475)

(assert (=> b!4829069 (= lt!1975540 Unit!143498)))

(declare-fun lt!1975530 () Unit!143475)

(declare-fun forallContained!4401 (List!55172 Int tuple2!58330) Unit!143475)

(assert (=> b!4829069 (= lt!1975530 (forallContained!4401 (toList!7542 lt!1975531) lambda!237563 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (=> b!4829069 (contains!18852 lt!1975531 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun lt!1975538 () Unit!143475)

(declare-fun Unit!143499 () Unit!143475)

(assert (=> b!4829069 (= lt!1975538 Unit!143499)))

(assert (=> b!4829069 (contains!18852 lt!1975544 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun lt!1975536 () Unit!143475)

(declare-fun Unit!143500 () Unit!143475)

(assert (=> b!4829069 (= lt!1975536 Unit!143500)))

(assert (=> b!4829069 (forall!12660 (_2!32460 (h!61483 (toList!7541 lm!2325))) lambda!237563)))

(declare-fun lt!1975541 () Unit!143475)

(declare-fun Unit!143501 () Unit!143475)

(assert (=> b!4829069 (= lt!1975541 Unit!143501)))

(assert (=> b!4829069 (forall!12660 (toList!7542 lt!1975531) lambda!237563)))

(declare-fun lt!1975527 () Unit!143475)

(declare-fun Unit!143502 () Unit!143475)

(assert (=> b!4829069 (= lt!1975527 Unit!143502)))

(declare-fun lt!1975535 () Unit!143475)

(declare-fun Unit!143503 () Unit!143475)

(assert (=> b!4829069 (= lt!1975535 Unit!143503)))

(declare-fun lt!1975525 () Unit!143475)

(declare-fun addForallContainsKeyThenBeforeAdding!999 (ListMap!6913 ListMap!6913 K!16739 V!16985) Unit!143475)

(assert (=> b!4829069 (= lt!1975525 (addForallContainsKeyThenBeforeAdding!999 lt!1975328 lt!1975544 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (_2!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun call!336556 () Bool)

(assert (=> b!4829069 call!336556))

(declare-fun lt!1975533 () Unit!143475)

(assert (=> b!4829069 (= lt!1975533 lt!1975525)))

(assert (=> b!4829069 (forall!12660 (toList!7542 lt!1975328) lambda!237563)))

(declare-fun lt!1975537 () Unit!143475)

(declare-fun Unit!143504 () Unit!143475)

(assert (=> b!4829069 (= lt!1975537 Unit!143504)))

(declare-fun res!2056515 () Bool)

(assert (=> b!4829069 (= res!2056515 (forall!12660 (_2!32460 (h!61483 (toList!7541 lm!2325))) lambda!237563))))

(assert (=> b!4829069 (=> (not res!2056515) (not e!3017496))))

(assert (=> b!4829069 e!3017496))

(declare-fun lt!1975524 () Unit!143475)

(declare-fun Unit!143505 () Unit!143475)

(assert (=> b!4829069 (= lt!1975524 Unit!143505)))

(declare-fun bm!336552 () Bool)

(assert (=> bm!336552 (= call!336556 (forall!12660 (toList!7542 lt!1975328) (ite c!822815 lambda!237561 lambda!237563)))))

(assert (=> b!4829070 (= e!3017495 lt!1975328)))

(declare-fun lt!1975529 () Unit!143475)

(assert (=> b!4829070 (= lt!1975529 call!336555)))

(assert (=> b!4829070 call!336556))

(declare-fun lt!1975528 () Unit!143475)

(assert (=> b!4829070 (= lt!1975528 lt!1975529)))

(assert (=> b!4829070 call!336557))

(declare-fun lt!1975532 () Unit!143475)

(declare-fun Unit!143506 () Unit!143475)

(assert (=> b!4829070 (= lt!1975532 Unit!143506)))

(assert (= (and d!1547579 c!822815) b!4829070))

(assert (= (and d!1547579 (not c!822815)) b!4829069))

(assert (= (and b!4829069 res!2056515) b!4829067))

(assert (= (or b!4829070 b!4829069) bm!336551))

(assert (= (or b!4829070 b!4829069) bm!336550))

(assert (= (or b!4829070 b!4829069) bm!336552))

(assert (= (and d!1547579 res!2056516) b!4829066))

(assert (= (and b!4829066 res!2056517) b!4829068))

(declare-fun m!5821030 () Bool)

(assert (=> b!4829067 m!5821030))

(declare-fun m!5821032 () Bool)

(assert (=> b!4829066 m!5821032))

(declare-fun m!5821034 () Bool)

(assert (=> b!4829069 m!5821034))

(declare-fun m!5821036 () Bool)

(assert (=> b!4829069 m!5821036))

(declare-fun m!5821038 () Bool)

(assert (=> b!4829069 m!5821038))

(declare-fun m!5821040 () Bool)

(assert (=> b!4829069 m!5821040))

(declare-fun m!5821042 () Bool)

(assert (=> b!4829069 m!5821042))

(declare-fun m!5821044 () Bool)

(assert (=> b!4829069 m!5821044))

(declare-fun m!5821046 () Bool)

(assert (=> b!4829069 m!5821046))

(declare-fun m!5821048 () Bool)

(assert (=> b!4829069 m!5821048))

(declare-fun m!5821050 () Bool)

(assert (=> b!4829069 m!5821050))

(assert (=> b!4829069 m!5821046))

(assert (=> b!4829069 m!5821042))

(assert (=> b!4829069 m!5821038))

(assert (=> b!4829069 m!5821030))

(declare-fun m!5821052 () Bool)

(assert (=> d!1547579 m!5821052))

(declare-fun m!5821054 () Bool)

(assert (=> d!1547579 m!5821054))

(declare-fun m!5821056 () Bool)

(assert (=> bm!336552 m!5821056))

(declare-fun m!5821058 () Bool)

(assert (=> bm!336550 m!5821058))

(declare-fun m!5821060 () Bool)

(assert (=> bm!336551 m!5821060))

(declare-fun m!5821062 () Bool)

(assert (=> b!4829068 m!5821062))

(assert (=> b!4828906 d!1547579))

(declare-fun bs!1165247 () Bool)

(declare-fun d!1547609 () Bool)

(assert (= bs!1165247 (and d!1547609 start!501376)))

(declare-fun lambda!237567 () Int)

(assert (=> bs!1165247 (= lambda!237567 lambda!237488)))

(declare-fun bs!1165248 () Bool)

(assert (= bs!1165248 (and d!1547609 d!1547571)))

(assert (=> bs!1165248 (not (= lambda!237567 lambda!237491))))

(assert (=> d!1547609 (not (containsKey!4415 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325)))) key!5594))))

(declare-fun lt!1975547 () Unit!143475)

(declare-fun choose!35195 (ListLongMap!6063 K!16739 (_ BitVec 64) Hashable!7300) Unit!143475)

(assert (=> d!1547609 (= lt!1975547 (choose!35195 lm!2325 key!5594 (_1!32460 (h!61483 (toList!7541 lm!2325))) hashF!1543))))

(assert (=> d!1547609 (forall!12658 (toList!7541 lm!2325) lambda!237567)))

(assert (=> d!1547609 (= (lemmaNotSameHashThenCannotContainKey!234 lm!2325 key!5594 (_1!32460 (h!61483 (toList!7541 lm!2325))) hashF!1543) lt!1975547)))

(declare-fun bs!1165249 () Bool)

(assert (= bs!1165249 d!1547609))

(assert (=> bs!1165249 m!5820854))

(assert (=> bs!1165249 m!5820854))

(assert (=> bs!1165249 m!5820856))

(declare-fun m!5821064 () Bool)

(assert (=> bs!1165249 m!5821064))

(declare-fun m!5821066 () Bool)

(assert (=> bs!1165249 m!5821066))

(assert (=> b!4828906 d!1547609))

(declare-fun d!1547611 () Bool)

(declare-fun get!18847 (Option!13516) List!55172)

(assert (=> d!1547611 (= (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325)))) (get!18847 (getValueByKey!2643 (toList!7541 lm!2325) (_1!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun bs!1165250 () Bool)

(assert (= bs!1165250 d!1547611))

(declare-fun m!5821068 () Bool)

(assert (=> bs!1165250 m!5821068))

(assert (=> bs!1165250 m!5821068))

(declare-fun m!5821070 () Bool)

(assert (=> bs!1165250 m!5821070))

(assert (=> b!4828906 d!1547611))

(declare-fun d!1547613 () Bool)

(declare-fun res!2056518 () Bool)

(declare-fun e!3017498 () Bool)

(assert (=> d!1547613 (=> res!2056518 e!3017498)))

(assert (=> d!1547613 (= res!2056518 (and ((_ is Cons!55048) (_2!32460 (h!61483 (toList!7541 lm!2325)))) (= (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) key!5594)))))

(assert (=> d!1547613 (= (containsKey!4415 (_2!32460 (h!61483 (toList!7541 lm!2325))) key!5594) e!3017498)))

(declare-fun b!4829073 () Bool)

(declare-fun e!3017499 () Bool)

(assert (=> b!4829073 (= e!3017498 e!3017499)))

(declare-fun res!2056519 () Bool)

(assert (=> b!4829073 (=> (not res!2056519) (not e!3017499))))

(assert (=> b!4829073 (= res!2056519 ((_ is Cons!55048) (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(declare-fun b!4829074 () Bool)

(assert (=> b!4829074 (= e!3017499 (containsKey!4415 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) key!5594))))

(assert (= (and d!1547613 (not res!2056518)) b!4829073))

(assert (= (and b!4829073 res!2056519) b!4829074))

(declare-fun m!5821072 () Bool)

(assert (=> b!4829074 m!5821072))

(assert (=> b!4828906 d!1547613))

(declare-fun d!1547615 () Bool)

(declare-fun e!3017502 () Bool)

(assert (=> d!1547615 (= (contains!18852 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328) key!5594) e!3017502)))

(declare-fun res!2056522 () Bool)

(assert (=> d!1547615 (=> res!2056522 e!3017502)))

(assert (=> d!1547615 (= res!2056522 (containsKey!4415 (_2!32460 (h!61483 (toList!7541 lm!2325))) key!5594))))

(declare-fun lt!1975550 () Unit!143475)

(declare-fun choose!35196 (List!55172 ListMap!6913 K!16739) Unit!143475)

(assert (=> d!1547615 (= lt!1975550 (choose!35196 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328 key!5594))))

(assert (=> d!1547615 (noDuplicateKeys!2466 (_2!32460 (h!61483 (toList!7541 lm!2325))))))

(assert (=> d!1547615 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!46 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328 key!5594) lt!1975550)))

(declare-fun b!4829077 () Bool)

(assert (=> b!4829077 (= e!3017502 (contains!18852 lt!1975328 key!5594))))

(assert (= (and d!1547615 (not res!2056522)) b!4829077))

(assert (=> d!1547615 m!5820852))

(declare-fun m!5821074 () Bool)

(assert (=> d!1547615 m!5821074))

(assert (=> d!1547615 m!5820848))

(assert (=> d!1547615 m!5820848))

(assert (=> d!1547615 m!5820850))

(assert (=> d!1547615 m!5821054))

(assert (=> b!4829077 m!5820840))

(assert (=> b!4828906 d!1547615))

(declare-fun bs!1165251 () Bool)

(declare-fun d!1547617 () Bool)

(assert (= bs!1165251 (and d!1547617 start!501376)))

(declare-fun lambda!237570 () Int)

(assert (=> bs!1165251 (= lambda!237570 lambda!237488)))

(declare-fun bs!1165252 () Bool)

(assert (= bs!1165252 (and d!1547617 d!1547571)))

(assert (=> bs!1165252 (not (= lambda!237570 lambda!237491))))

(declare-fun bs!1165253 () Bool)

(assert (= bs!1165253 (and d!1547617 d!1547609)))

(assert (=> bs!1165253 (= lambda!237570 lambda!237567)))

(declare-fun lt!1975553 () ListMap!6913)

(assert (=> d!1547617 (invariantList!1822 (toList!7542 lt!1975553))))

(declare-fun e!3017505 () ListMap!6913)

(assert (=> d!1547617 (= lt!1975553 e!3017505)))

(declare-fun c!822818 () Bool)

(assert (=> d!1547617 (= c!822818 ((_ is Cons!55049) (t!362669 (toList!7541 lm!2325))))))

(assert (=> d!1547617 (forall!12658 (t!362669 (toList!7541 lm!2325)) lambda!237570)))

(assert (=> d!1547617 (= (extractMap!2708 (t!362669 (toList!7541 lm!2325))) lt!1975553)))

(declare-fun b!4829082 () Bool)

(assert (=> b!4829082 (= e!3017505 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))) (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))))))

(declare-fun b!4829083 () Bool)

(assert (=> b!4829083 (= e!3017505 (ListMap!6914 Nil!55048))))

(assert (= (and d!1547617 c!822818) b!4829082))

(assert (= (and d!1547617 (not c!822818)) b!4829083))

(declare-fun m!5821076 () Bool)

(assert (=> d!1547617 m!5821076))

(declare-fun m!5821078 () Bool)

(assert (=> d!1547617 m!5821078))

(declare-fun m!5821080 () Bool)

(assert (=> b!4829082 m!5821080))

(assert (=> b!4829082 m!5821080))

(declare-fun m!5821082 () Bool)

(assert (=> b!4829082 m!5821082))

(assert (=> b!4828906 d!1547617))

(declare-fun b!4829084 () Bool)

(declare-fun e!3017510 () Unit!143475)

(declare-fun e!3017509 () Unit!143475)

(assert (=> b!4829084 (= e!3017510 e!3017509)))

(declare-fun c!822819 () Bool)

(declare-fun call!336558 () Bool)

(assert (=> b!4829084 (= c!822819 call!336558)))

(declare-fun b!4829085 () Bool)

(declare-fun Unit!143507 () Unit!143475)

(assert (=> b!4829085 (= e!3017509 Unit!143507)))

(declare-fun bm!336553 () Bool)

(declare-fun e!3017506 () List!55175)

(assert (=> bm!336553 (= call!336558 (contains!18855 e!3017506 key!5594))))

(declare-fun c!822821 () Bool)

(declare-fun c!822820 () Bool)

(assert (=> bm!336553 (= c!822821 c!822820)))

(declare-fun b!4829086 () Bool)

(declare-fun e!3017508 () Bool)

(assert (=> b!4829086 (= e!3017508 (contains!18855 (keys!20269 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(declare-fun b!4829087 () Bool)

(assert (=> b!4829087 (= e!3017506 (keys!20269 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))))

(declare-fun e!3017507 () Bool)

(declare-fun b!4829088 () Bool)

(assert (=> b!4829088 (= e!3017507 (not (contains!18855 (keys!20269 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594)))))

(declare-fun b!4829089 () Bool)

(assert (=> b!4829089 false))

(declare-fun lt!1975557 () Unit!143475)

(declare-fun lt!1975560 () Unit!143475)

(assert (=> b!4829089 (= lt!1975557 lt!1975560)))

(assert (=> b!4829089 (containsKey!4418 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594)))

(assert (=> b!4829089 (= lt!1975560 (lemmaInGetKeysListThenContainsKey!1168 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(declare-fun Unit!143508 () Unit!143475)

(assert (=> b!4829089 (= e!3017509 Unit!143508)))

(declare-fun b!4829090 () Bool)

(declare-fun lt!1975561 () Unit!143475)

(assert (=> b!4829090 (= e!3017510 lt!1975561)))

(declare-fun lt!1975555 () Unit!143475)

(assert (=> b!4829090 (= lt!1975555 (lemmaContainsKeyImpliesGetValueByKeyDefined!2427 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(assert (=> b!4829090 (isDefined!10630 (getValueByKey!2642 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(declare-fun lt!1975554 () Unit!143475)

(assert (=> b!4829090 (= lt!1975554 lt!1975555)))

(assert (=> b!4829090 (= lt!1975561 (lemmaInListThenGetKeysListContains!1163 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(assert (=> b!4829090 call!336558))

(declare-fun b!4829091 () Bool)

(assert (=> b!4829091 (= e!3017506 (getKeysList!1168 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))

(declare-fun d!1547619 () Bool)

(declare-fun e!3017511 () Bool)

(assert (=> d!1547619 e!3017511))

(declare-fun res!2056523 () Bool)

(assert (=> d!1547619 (=> res!2056523 e!3017511)))

(assert (=> d!1547619 (= res!2056523 e!3017507)))

(declare-fun res!2056524 () Bool)

(assert (=> d!1547619 (=> (not res!2056524) (not e!3017507))))

(declare-fun lt!1975558 () Bool)

(assert (=> d!1547619 (= res!2056524 (not lt!1975558))))

(declare-fun lt!1975556 () Bool)

(assert (=> d!1547619 (= lt!1975558 lt!1975556)))

(declare-fun lt!1975559 () Unit!143475)

(assert (=> d!1547619 (= lt!1975559 e!3017510)))

(assert (=> d!1547619 (= c!822820 lt!1975556)))

(assert (=> d!1547619 (= lt!1975556 (containsKey!4418 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(assert (=> d!1547619 (= (contains!18852 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328) key!5594) lt!1975558)))

(declare-fun b!4829092 () Bool)

(assert (=> b!4829092 (= e!3017511 e!3017508)))

(declare-fun res!2056525 () Bool)

(assert (=> b!4829092 (=> (not res!2056525) (not e!3017508))))

(assert (=> b!4829092 (= res!2056525 (isDefined!10630 (getValueByKey!2642 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594)))))

(assert (= (and d!1547619 c!822820) b!4829090))

(assert (= (and d!1547619 (not c!822820)) b!4829084))

(assert (= (and b!4829084 c!822819) b!4829089))

(assert (= (and b!4829084 (not c!822819)) b!4829085))

(assert (= (or b!4829090 b!4829084) bm!336553))

(assert (= (and bm!336553 c!822821) b!4829091))

(assert (= (and bm!336553 (not c!822821)) b!4829087))

(assert (= (and d!1547619 res!2056524) b!4829088))

(assert (= (and d!1547619 (not res!2056523)) b!4829092))

(assert (= (and b!4829092 res!2056525) b!4829086))

(declare-fun m!5821084 () Bool)

(assert (=> b!4829090 m!5821084))

(declare-fun m!5821086 () Bool)

(assert (=> b!4829090 m!5821086))

(assert (=> b!4829090 m!5821086))

(declare-fun m!5821088 () Bool)

(assert (=> b!4829090 m!5821088))

(declare-fun m!5821090 () Bool)

(assert (=> b!4829090 m!5821090))

(declare-fun m!5821092 () Bool)

(assert (=> bm!336553 m!5821092))

(assert (=> b!4829087 m!5820848))

(declare-fun m!5821094 () Bool)

(assert (=> b!4829087 m!5821094))

(assert (=> b!4829088 m!5820848))

(assert (=> b!4829088 m!5821094))

(assert (=> b!4829088 m!5821094))

(declare-fun m!5821096 () Bool)

(assert (=> b!4829088 m!5821096))

(assert (=> b!4829086 m!5820848))

(assert (=> b!4829086 m!5821094))

(assert (=> b!4829086 m!5821094))

(assert (=> b!4829086 m!5821096))

(declare-fun m!5821098 () Bool)

(assert (=> b!4829089 m!5821098))

(declare-fun m!5821100 () Bool)

(assert (=> b!4829089 m!5821100))

(assert (=> b!4829092 m!5821086))

(assert (=> b!4829092 m!5821086))

(assert (=> b!4829092 m!5821088))

(assert (=> d!1547619 m!5821098))

(declare-fun m!5821102 () Bool)

(assert (=> b!4829091 m!5821102))

(assert (=> b!4828906 d!1547619))

(declare-fun b!4829097 () Bool)

(declare-fun e!3017514 () Bool)

(declare-fun tp!1362823 () Bool)

(declare-fun tp!1362824 () Bool)

(assert (=> b!4829097 (= e!3017514 (and tp!1362823 tp!1362824))))

(assert (=> b!4828907 (= tp!1362812 e!3017514)))

(assert (= (and b!4828907 ((_ is Cons!55049) (toList!7541 lm!2325))) b!4829097))

(declare-fun b_lambda!190285 () Bool)

(assert (= b_lambda!190277 (or start!501376 b_lambda!190285)))

(declare-fun bs!1165254 () Bool)

(declare-fun d!1547621 () Bool)

(assert (= bs!1165254 (and d!1547621 start!501376)))

(assert (=> bs!1165254 (= (dynLambda!22235 lambda!237488 (h!61483 (toList!7541 (tail!9422 lm!2325)))) (noDuplicateKeys!2466 (_2!32460 (h!61483 (toList!7541 (tail!9422 lm!2325))))))))

(declare-fun m!5821104 () Bool)

(assert (=> bs!1165254 m!5821104))

(assert (=> b!4828990 d!1547621))

(declare-fun b_lambda!190287 () Bool)

(assert (= b_lambda!190275 (or start!501376 b_lambda!190287)))

(declare-fun bs!1165255 () Bool)

(declare-fun d!1547623 () Bool)

(assert (= bs!1165255 (and d!1547623 start!501376)))

(assert (=> bs!1165255 (= (dynLambda!22235 lambda!237488 (h!61483 (toList!7541 lm!2325))) (noDuplicateKeys!2466 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(assert (=> bs!1165255 m!5821054))

(assert (=> b!4828986 d!1547623))

(check-sat (not b!4828967) (not b!4829069) (not b!4829067) (not b!4828966) (not b!4828969) (not b_lambda!190285) (not d!1547571) (not d!1547555) (not b!4828981) (not b!4829077) (not b!4828991) (not d!1547611) (not b!4829066) (not b!4828968) (not b!4829089) tp_is_empty!34543 (not d!1547619) (not b!4829090) (not bm!336551) (not d!1547565) (not d!1547577) (not d!1547609) (not bm!336550) (not bm!336533) (not b!4828972) (not d!1547563) (not b!4829086) (not b!4829068) (not b_lambda!190287) (not b!4829091) (not b!4828970) (not b!4829082) (not d!1547579) (not b!4829092) (not bm!336552) (not d!1547569) (not bs!1165254) (not bs!1165255) (not b!4828987) (not b!4828971) (not b!4829097) (not b!4829088) (not b!4828997) (not b!4829087) (not b!4828979) (not bm!336553) (not d!1547615) (not d!1547617) (not b!4829074))
(check-sat)
(get-model)

(declare-fun d!1547653 () Bool)

(declare-fun res!2056569 () Bool)

(declare-fun e!3017565 () Bool)

(assert (=> d!1547653 (=> res!2056569 e!3017565)))

(assert (=> d!1547653 (= res!2056569 (and ((_ is Cons!55049) (toList!7541 lm!2325)) (= (_1!32460 (h!61483 (toList!7541 lm!2325))) (hash!5453 hashF!1543 key!5594))))))

(assert (=> d!1547653 (= (containsKey!4419 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)) e!3017565)))

(declare-fun b!4829171 () Bool)

(declare-fun e!3017566 () Bool)

(assert (=> b!4829171 (= e!3017565 e!3017566)))

(declare-fun res!2056570 () Bool)

(assert (=> b!4829171 (=> (not res!2056570) (not e!3017566))))

(assert (=> b!4829171 (= res!2056570 (and (or (not ((_ is Cons!55049) (toList!7541 lm!2325))) (bvsle (_1!32460 (h!61483 (toList!7541 lm!2325))) (hash!5453 hashF!1543 key!5594))) ((_ is Cons!55049) (toList!7541 lm!2325)) (bvslt (_1!32460 (h!61483 (toList!7541 lm!2325))) (hash!5453 hashF!1543 key!5594))))))

(declare-fun b!4829172 () Bool)

(assert (=> b!4829172 (= e!3017566 (containsKey!4419 (t!362669 (toList!7541 lm!2325)) (hash!5453 hashF!1543 key!5594)))))

(assert (= (and d!1547653 (not res!2056569)) b!4829171))

(assert (= (and b!4829171 res!2056570) b!4829172))

(assert (=> b!4829172 m!5820830))

(declare-fun m!5821192 () Bool)

(assert (=> b!4829172 m!5821192))

(assert (=> d!1547563 d!1547653))

(declare-fun d!1547655 () Bool)

(declare-fun isEmpty!29674 (Option!13515) Bool)

(assert (=> d!1547655 (= (isDefined!10630 (getValueByKey!2642 (toList!7542 lt!1975328) key!5594)) (not (isEmpty!29674 (getValueByKey!2642 (toList!7542 lt!1975328) key!5594))))))

(declare-fun bs!1165274 () Bool)

(assert (= bs!1165274 d!1547655))

(assert (=> bs!1165274 m!5820892))

(declare-fun m!5821194 () Bool)

(assert (=> bs!1165274 m!5821194))

(assert (=> b!4828972 d!1547655))

(declare-fun b!4829189 () Bool)

(declare-fun e!3017574 () Option!13515)

(assert (=> b!4829189 (= e!3017574 (getValueByKey!2642 (t!362668 (toList!7542 lt!1975328)) key!5594))))

(declare-fun b!4829187 () Bool)

(declare-fun e!3017573 () Option!13515)

(assert (=> b!4829187 (= e!3017573 (Some!13514 (_2!32459 (h!61482 (toList!7542 lt!1975328)))))))

(declare-fun b!4829190 () Bool)

(assert (=> b!4829190 (= e!3017574 None!13514)))

(declare-fun b!4829188 () Bool)

(assert (=> b!4829188 (= e!3017573 e!3017574)))

(declare-fun c!822841 () Bool)

(assert (=> b!4829188 (= c!822841 (and ((_ is Cons!55048) (toList!7542 lt!1975328)) (not (= (_1!32459 (h!61482 (toList!7542 lt!1975328))) key!5594))))))

(declare-fun d!1547657 () Bool)

(declare-fun c!822840 () Bool)

(assert (=> d!1547657 (= c!822840 (and ((_ is Cons!55048) (toList!7542 lt!1975328)) (= (_1!32459 (h!61482 (toList!7542 lt!1975328))) key!5594)))))

(assert (=> d!1547657 (= (getValueByKey!2642 (toList!7542 lt!1975328) key!5594) e!3017573)))

(assert (= (and d!1547657 c!822840) b!4829187))

(assert (= (and d!1547657 (not c!822840)) b!4829188))

(assert (= (and b!4829188 c!822841) b!4829189))

(assert (= (and b!4829188 (not c!822841)) b!4829190))

(declare-fun m!5821196 () Bool)

(assert (=> b!4829189 m!5821196))

(assert (=> b!4828972 d!1547657))

(declare-fun d!1547659 () Bool)

(declare-fun res!2056581 () Bool)

(declare-fun e!3017579 () Bool)

(assert (=> d!1547659 (=> res!2056581 e!3017579)))

(assert (=> d!1547659 (= res!2056581 (or ((_ is Nil!55049) (toList!7541 lm!2325)) ((_ is Nil!55049) (t!362669 (toList!7541 lm!2325)))))))

(assert (=> d!1547659 (= (isStrictlySorted!997 (toList!7541 lm!2325)) e!3017579)))

(declare-fun b!4829195 () Bool)

(declare-fun e!3017580 () Bool)

(assert (=> b!4829195 (= e!3017579 e!3017580)))

(declare-fun res!2056582 () Bool)

(assert (=> b!4829195 (=> (not res!2056582) (not e!3017580))))

(assert (=> b!4829195 (= res!2056582 (bvslt (_1!32460 (h!61483 (toList!7541 lm!2325))) (_1!32460 (h!61483 (t!362669 (toList!7541 lm!2325))))))))

(declare-fun b!4829196 () Bool)

(assert (=> b!4829196 (= e!3017580 (isStrictlySorted!997 (t!362669 (toList!7541 lm!2325))))))

(assert (= (and d!1547659 (not res!2056581)) b!4829195))

(assert (= (and b!4829195 res!2056582) b!4829196))

(declare-fun m!5821198 () Bool)

(assert (=> b!4829196 m!5821198))

(assert (=> d!1547569 d!1547659))

(declare-fun d!1547661 () Bool)

(declare-fun res!2056590 () Bool)

(declare-fun e!3017589 () Bool)

(assert (=> d!1547661 (=> res!2056590 e!3017589)))

(assert (=> d!1547661 (= res!2056590 (and ((_ is Cons!55048) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= (_1!32459 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) key!5594)))))

(assert (=> d!1547661 (= (containsKey!4418 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594) e!3017589)))

(declare-fun b!4829212 () Bool)

(declare-fun e!3017590 () Bool)

(assert (=> b!4829212 (= e!3017589 e!3017590)))

(declare-fun res!2056591 () Bool)

(assert (=> b!4829212 (=> (not res!2056591) (not e!3017590))))

(assert (=> b!4829212 (= res!2056591 ((_ is Cons!55048) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))

(declare-fun b!4829213 () Bool)

(assert (=> b!4829213 (= e!3017590 (containsKey!4418 (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) key!5594))))

(assert (= (and d!1547661 (not res!2056590)) b!4829212))

(assert (= (and b!4829212 res!2056591) b!4829213))

(declare-fun m!5821200 () Bool)

(assert (=> b!4829213 m!5821200))

(assert (=> d!1547619 d!1547661))

(declare-fun d!1547663 () Bool)

(declare-fun res!2056596 () Bool)

(declare-fun e!3017595 () Bool)

(assert (=> d!1547663 (=> res!2056596 e!3017595)))

(assert (=> d!1547663 (= res!2056596 (not ((_ is Cons!55048) (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (=> d!1547663 (= (noDuplicateKeys!2466 (_2!32460 (h!61483 (toList!7541 lm!2325)))) e!3017595)))

(declare-fun b!4829218 () Bool)

(declare-fun e!3017596 () Bool)

(assert (=> b!4829218 (= e!3017595 e!3017596)))

(declare-fun res!2056597 () Bool)

(assert (=> b!4829218 (=> (not res!2056597) (not e!3017596))))

(assert (=> b!4829218 (= res!2056597 (not (containsKey!4415 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))))

(declare-fun b!4829219 () Bool)

(assert (=> b!4829219 (= e!3017596 (noDuplicateKeys!2466 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (= (and d!1547663 (not res!2056596)) b!4829218))

(assert (= (and b!4829218 res!2056597) b!4829219))

(declare-fun m!5821228 () Bool)

(assert (=> b!4829218 m!5821228))

(declare-fun m!5821230 () Bool)

(assert (=> b!4829219 m!5821230))

(assert (=> d!1547615 d!1547663))

(assert (=> d!1547615 d!1547613))

(assert (=> d!1547615 d!1547579))

(declare-fun d!1547667 () Bool)

(declare-fun e!3017606 () Bool)

(assert (=> d!1547667 (= (contains!18852 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328) key!5594) e!3017606)))

(declare-fun res!2056601 () Bool)

(assert (=> d!1547667 (=> res!2056601 e!3017606)))

(assert (=> d!1547667 (= res!2056601 (containsKey!4415 (_2!32460 (h!61483 (toList!7541 lm!2325))) key!5594))))

(assert (=> d!1547667 true))

(declare-fun _$29!832 () Unit!143475)

(assert (=> d!1547667 (= (choose!35196 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328 key!5594) _$29!832)))

(declare-fun b!4829234 () Bool)

(assert (=> b!4829234 (= e!3017606 (contains!18852 lt!1975328 key!5594))))

(assert (= (and d!1547667 (not res!2056601)) b!4829234))

(assert (=> d!1547667 m!5820848))

(assert (=> d!1547667 m!5820848))

(assert (=> d!1547667 m!5820850))

(assert (=> d!1547667 m!5820852))

(assert (=> b!4829234 m!5820840))

(assert (=> d!1547615 d!1547667))

(assert (=> d!1547615 d!1547619))

(declare-fun d!1547677 () Bool)

(declare-fun res!2056611 () Bool)

(declare-fun e!3017616 () Bool)

(assert (=> d!1547677 (=> res!2056611 e!3017616)))

(assert (=> d!1547677 (= res!2056611 ((_ is Nil!55048) (toList!7542 lt!1975328)))))

(assert (=> d!1547677 (= (forall!12660 (toList!7542 lt!1975328) lambda!237564) e!3017616)))

(declare-fun b!4829245 () Bool)

(declare-fun e!3017617 () Bool)

(assert (=> b!4829245 (= e!3017616 e!3017617)))

(declare-fun res!2056612 () Bool)

(assert (=> b!4829245 (=> (not res!2056612) (not e!3017617))))

(declare-fun dynLambda!22237 (Int tuple2!58330) Bool)

(assert (=> b!4829245 (= res!2056612 (dynLambda!22237 lambda!237564 (h!61482 (toList!7542 lt!1975328))))))

(declare-fun b!4829246 () Bool)

(assert (=> b!4829246 (= e!3017617 (forall!12660 (t!362668 (toList!7542 lt!1975328)) lambda!237564))))

(assert (= (and d!1547677 (not res!2056611)) b!4829245))

(assert (= (and b!4829245 res!2056612) b!4829246))

(declare-fun b_lambda!190297 () Bool)

(assert (=> (not b_lambda!190297) (not b!4829245)))

(declare-fun m!5821246 () Bool)

(assert (=> b!4829245 m!5821246))

(declare-fun m!5821248 () Bool)

(assert (=> b!4829246 m!5821248))

(assert (=> b!4829066 d!1547677))

(declare-fun d!1547681 () Bool)

(declare-fun res!2056613 () Bool)

(declare-fun e!3017618 () Bool)

(assert (=> d!1547681 (=> res!2056613 e!3017618)))

(assert (=> d!1547681 (= res!2056613 ((_ is Nil!55048) (toList!7542 lt!1975328)))))

(assert (=> d!1547681 (= (forall!12660 (toList!7542 lt!1975328) (ite c!822815 lambda!237561 lambda!237562)) e!3017618)))

(declare-fun b!4829247 () Bool)

(declare-fun e!3017619 () Bool)

(assert (=> b!4829247 (= e!3017618 e!3017619)))

(declare-fun res!2056614 () Bool)

(assert (=> b!4829247 (=> (not res!2056614) (not e!3017619))))

(assert (=> b!4829247 (= res!2056614 (dynLambda!22237 (ite c!822815 lambda!237561 lambda!237562) (h!61482 (toList!7542 lt!1975328))))))

(declare-fun b!4829248 () Bool)

(assert (=> b!4829248 (= e!3017619 (forall!12660 (t!362668 (toList!7542 lt!1975328)) (ite c!822815 lambda!237561 lambda!237562)))))

(assert (= (and d!1547681 (not res!2056613)) b!4829247))

(assert (= (and b!4829247 res!2056614) b!4829248))

(declare-fun b_lambda!190299 () Bool)

(assert (=> (not b_lambda!190299) (not b!4829247)))

(declare-fun m!5821250 () Bool)

(assert (=> b!4829247 m!5821250))

(declare-fun m!5821254 () Bool)

(assert (=> b!4829248 m!5821254))

(assert (=> bm!336550 d!1547681))

(assert (=> b!4829077 d!1547555))

(declare-fun d!1547683 () Bool)

(assert (=> d!1547683 (= (get!18847 (getValueByKey!2643 (toList!7541 lm!2325) (_1!32460 (h!61483 (toList!7541 lm!2325))))) (v!49204 (getValueByKey!2643 (toList!7541 lm!2325) (_1!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (=> d!1547611 d!1547683))

(declare-fun b!4829264 () Bool)

(declare-fun e!3017629 () Option!13516)

(assert (=> b!4829264 (= e!3017629 None!13515)))

(declare-fun b!4829263 () Bool)

(assert (=> b!4829263 (= e!3017629 (getValueByKey!2643 (t!362669 (toList!7541 lm!2325)) (_1!32460 (h!61483 (toList!7541 lm!2325)))))))

(declare-fun d!1547687 () Bool)

(declare-fun c!822855 () Bool)

(assert (=> d!1547687 (= c!822855 (and ((_ is Cons!55049) (toList!7541 lm!2325)) (= (_1!32460 (h!61483 (toList!7541 lm!2325))) (_1!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun e!3017628 () Option!13516)

(assert (=> d!1547687 (= (getValueByKey!2643 (toList!7541 lm!2325) (_1!32460 (h!61483 (toList!7541 lm!2325)))) e!3017628)))

(declare-fun b!4829262 () Bool)

(assert (=> b!4829262 (= e!3017628 e!3017629)))

(declare-fun c!822856 () Bool)

(assert (=> b!4829262 (= c!822856 (and ((_ is Cons!55049) (toList!7541 lm!2325)) (not (= (_1!32460 (h!61483 (toList!7541 lm!2325))) (_1!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun b!4829261 () Bool)

(assert (=> b!4829261 (= e!3017628 (Some!13515 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(assert (= (and d!1547687 c!822855) b!4829261))

(assert (= (and d!1547687 (not c!822855)) b!4829262))

(assert (= (and b!4829262 c!822856) b!4829263))

(assert (= (and b!4829262 (not c!822856)) b!4829264))

(declare-fun m!5821266 () Bool)

(assert (=> b!4829263 m!5821266))

(assert (=> d!1547611 d!1547687))

(declare-fun d!1547693 () Bool)

(declare-fun res!2056619 () Bool)

(declare-fun e!3017630 () Bool)

(assert (=> d!1547693 (=> res!2056619 e!3017630)))

(assert (=> d!1547693 (= res!2056619 ((_ is Nil!55048) (toList!7542 lt!1975328)))))

(assert (=> d!1547693 (= (forall!12660 (toList!7542 lt!1975328) lambda!237563) e!3017630)))

(declare-fun b!4829265 () Bool)

(declare-fun e!3017631 () Bool)

(assert (=> b!4829265 (= e!3017630 e!3017631)))

(declare-fun res!2056620 () Bool)

(assert (=> b!4829265 (=> (not res!2056620) (not e!3017631))))

(assert (=> b!4829265 (= res!2056620 (dynLambda!22237 lambda!237563 (h!61482 (toList!7542 lt!1975328))))))

(declare-fun b!4829266 () Bool)

(assert (=> b!4829266 (= e!3017631 (forall!12660 (t!362668 (toList!7542 lt!1975328)) lambda!237563))))

(assert (= (and d!1547693 (not res!2056619)) b!4829265))

(assert (= (and b!4829265 res!2056620) b!4829266))

(declare-fun b_lambda!190303 () Bool)

(assert (=> (not b_lambda!190303) (not b!4829265)))

(declare-fun m!5821268 () Bool)

(assert (=> b!4829265 m!5821268))

(declare-fun m!5821270 () Bool)

(assert (=> b!4829266 m!5821270))

(assert (=> b!4829067 d!1547693))

(declare-fun d!1547695 () Bool)

(declare-fun choose!35198 (Hashable!7300 K!16739) (_ BitVec 64))

(assert (=> d!1547695 (= (hash!5457 hashF!1543 key!5594) (choose!35198 hashF!1543 key!5594))))

(declare-fun bs!1165286 () Bool)

(assert (= bs!1165286 d!1547695))

(declare-fun m!5821272 () Bool)

(assert (=> bs!1165286 m!5821272))

(assert (=> d!1547565 d!1547695))

(declare-fun d!1547697 () Bool)

(declare-fun noDuplicatedKeys!488 (List!55172) Bool)

(assert (=> d!1547697 (= (invariantList!1822 (toList!7542 lt!1975543)) (noDuplicatedKeys!488 (toList!7542 lt!1975543)))))

(declare-fun bs!1165287 () Bool)

(assert (= bs!1165287 d!1547697))

(declare-fun m!5821274 () Bool)

(assert (=> bs!1165287 m!5821274))

(assert (=> b!4829068 d!1547697))

(declare-fun d!1547699 () Bool)

(declare-fun lt!1975626 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9829 (List!55175) (InoxSet K!16739))

(assert (=> d!1547699 (= lt!1975626 (select (content!9829 e!3017506) key!5594))))

(declare-fun e!3017648 () Bool)

(assert (=> d!1547699 (= lt!1975626 e!3017648)))

(declare-fun res!2056638 () Bool)

(assert (=> d!1547699 (=> (not res!2056638) (not e!3017648))))

(assert (=> d!1547699 (= res!2056638 ((_ is Cons!55051) e!3017506))))

(assert (=> d!1547699 (= (contains!18855 e!3017506 key!5594) lt!1975626)))

(declare-fun b!4829284 () Bool)

(declare-fun e!3017647 () Bool)

(assert (=> b!4829284 (= e!3017648 e!3017647)))

(declare-fun res!2056639 () Bool)

(assert (=> b!4829284 (=> res!2056639 e!3017647)))

(assert (=> b!4829284 (= res!2056639 (= (h!61485 e!3017506) key!5594))))

(declare-fun b!4829285 () Bool)

(assert (=> b!4829285 (= e!3017647 (contains!18855 (t!362671 e!3017506) key!5594))))

(assert (= (and d!1547699 res!2056638) b!4829284))

(assert (= (and b!4829284 (not res!2056639)) b!4829285))

(declare-fun m!5821298 () Bool)

(assert (=> d!1547699 m!5821298))

(declare-fun m!5821300 () Bool)

(assert (=> d!1547699 m!5821300))

(declare-fun m!5821302 () Bool)

(assert (=> b!4829285 m!5821302))

(assert (=> bm!336553 d!1547699))

(declare-fun d!1547709 () Bool)

(declare-fun res!2056642 () Bool)

(declare-fun e!3017651 () Bool)

(assert (=> d!1547709 (=> res!2056642 e!3017651)))

(assert (=> d!1547709 (= res!2056642 (and ((_ is Cons!55048) (t!362668 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325)))))) (= (_1!32459 (h!61482 (t!362668 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325))))))) key!5594)))))

(assert (=> d!1547709 (= (containsKey!4415 (t!362668 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325))))) key!5594) e!3017651)))

(declare-fun b!4829288 () Bool)

(declare-fun e!3017652 () Bool)

(assert (=> b!4829288 (= e!3017651 e!3017652)))

(declare-fun res!2056643 () Bool)

(assert (=> b!4829288 (=> (not res!2056643) (not e!3017652))))

(assert (=> b!4829288 (= res!2056643 ((_ is Cons!55048) (t!362668 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun b!4829289 () Bool)

(assert (=> b!4829289 (= e!3017652 (containsKey!4415 (t!362668 (t!362668 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325)))))) key!5594))))

(assert (= (and d!1547709 (not res!2056642)) b!4829288))

(assert (= (and b!4829288 res!2056643) b!4829289))

(declare-fun m!5821308 () Bool)

(assert (=> b!4829289 m!5821308))

(assert (=> b!4828997 d!1547709))

(declare-fun bs!1165316 () Bool)

(declare-fun d!1547713 () Bool)

(assert (= bs!1165316 (and d!1547713 b!4829070)))

(declare-fun lambda!237602 () Int)

(assert (=> bs!1165316 (= lambda!237602 lambda!237561)))

(declare-fun bs!1165317 () Bool)

(assert (= bs!1165317 (and d!1547713 b!4829069)))

(assert (=> bs!1165317 (= lambda!237602 lambda!237562)))

(assert (=> bs!1165317 (= (= lt!1975328 lt!1975544) (= lambda!237602 lambda!237563))))

(declare-fun bs!1165318 () Bool)

(assert (= bs!1165318 (and d!1547713 d!1547579)))

(assert (=> bs!1165318 (= (= lt!1975328 lt!1975543) (= lambda!237602 lambda!237564))))

(assert (=> d!1547713 true))

(assert (=> d!1547713 (forall!12660 (toList!7542 lt!1975328) lambda!237602)))

(declare-fun lt!1975637 () Unit!143475)

(declare-fun choose!35199 (ListMap!6913) Unit!143475)

(assert (=> d!1547713 (= lt!1975637 (choose!35199 lt!1975328))))

(assert (=> d!1547713 (= (lemmaContainsAllItsOwnKeys!1000 lt!1975328) lt!1975637)))

(declare-fun bs!1165320 () Bool)

(assert (= bs!1165320 d!1547713))

(declare-fun m!5821344 () Bool)

(assert (=> bs!1165320 m!5821344))

(declare-fun m!5821346 () Bool)

(assert (=> bs!1165320 m!5821346))

(assert (=> bm!336551 d!1547713))

(declare-fun lt!1975638 () Bool)

(declare-fun d!1547723 () Bool)

(assert (=> d!1547723 (= lt!1975638 (select (content!9829 (keys!20269 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) key!5594))))

(declare-fun e!3017662 () Bool)

(assert (=> d!1547723 (= lt!1975638 e!3017662)))

(declare-fun res!2056651 () Bool)

(assert (=> d!1547723 (=> (not res!2056651) (not e!3017662))))

(assert (=> d!1547723 (= res!2056651 ((_ is Cons!55051) (keys!20269 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))

(assert (=> d!1547723 (= (contains!18855 (keys!20269 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594) lt!1975638)))

(declare-fun b!4829303 () Bool)

(declare-fun e!3017661 () Bool)

(assert (=> b!4829303 (= e!3017662 e!3017661)))

(declare-fun res!2056652 () Bool)

(assert (=> b!4829303 (=> res!2056652 e!3017661)))

(assert (=> b!4829303 (= res!2056652 (= (h!61485 (keys!20269 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) key!5594))))

(declare-fun b!4829304 () Bool)

(assert (=> b!4829304 (= e!3017661 (contains!18855 (t!362671 (keys!20269 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) key!5594))))

(assert (= (and d!1547723 res!2056651) b!4829303))

(assert (= (and b!4829303 (not res!2056652)) b!4829304))

(assert (=> d!1547723 m!5821094))

(declare-fun m!5821352 () Bool)

(assert (=> d!1547723 m!5821352))

(declare-fun m!5821354 () Bool)

(assert (=> d!1547723 m!5821354))

(declare-fun m!5821356 () Bool)

(assert (=> b!4829304 m!5821356))

(assert (=> b!4829086 d!1547723))

(declare-fun b!4829324 () Bool)

(assert (=> b!4829324 true))

(declare-fun d!1547727 () Bool)

(declare-fun e!3017673 () Bool)

(assert (=> d!1547727 e!3017673))

(declare-fun res!2056665 () Bool)

(assert (=> d!1547727 (=> (not res!2056665) (not e!3017673))))

(declare-fun lt!1975644 () List!55175)

(declare-fun noDuplicate!970 (List!55175) Bool)

(assert (=> d!1547727 (= res!2056665 (noDuplicate!970 lt!1975644))))

(assert (=> d!1547727 (= lt!1975644 (getKeysList!1168 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))

(assert (=> d!1547727 (= (keys!20269 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) lt!1975644)))

(declare-fun b!4829323 () Bool)

(declare-fun res!2056663 () Bool)

(assert (=> b!4829323 (=> (not res!2056663) (not e!3017673))))

(declare-fun length!796 (List!55175) Int)

(declare-fun length!797 (List!55172) Int)

(assert (=> b!4829323 (= res!2056663 (= (length!796 lt!1975644) (length!797 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))))))

(declare-fun res!2056664 () Bool)

(assert (=> b!4829324 (=> (not res!2056664) (not e!3017673))))

(declare-fun lambda!237607 () Int)

(declare-fun forall!12662 (List!55175 Int) Bool)

(assert (=> b!4829324 (= res!2056664 (forall!12662 lt!1975644 lambda!237607))))

(declare-fun lambda!237608 () Int)

(declare-fun b!4829325 () Bool)

(declare-fun map!12606 (List!55172 Int) List!55175)

(assert (=> b!4829325 (= e!3017673 (= (content!9829 lt!1975644) (content!9829 (map!12606 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) lambda!237608))))))

(assert (= (and d!1547727 res!2056665) b!4829323))

(assert (= (and b!4829323 res!2056663) b!4829324))

(assert (= (and b!4829324 res!2056664) b!4829325))

(declare-fun m!5821380 () Bool)

(assert (=> d!1547727 m!5821380))

(assert (=> d!1547727 m!5821102))

(declare-fun m!5821382 () Bool)

(assert (=> b!4829323 m!5821382))

(declare-fun m!5821384 () Bool)

(assert (=> b!4829323 m!5821384))

(declare-fun m!5821386 () Bool)

(assert (=> b!4829324 m!5821386))

(declare-fun m!5821388 () Bool)

(assert (=> b!4829325 m!5821388))

(declare-fun m!5821390 () Bool)

(assert (=> b!4829325 m!5821390))

(assert (=> b!4829325 m!5821390))

(declare-fun m!5821392 () Bool)

(assert (=> b!4829325 m!5821392))

(assert (=> b!4829086 d!1547727))

(declare-fun d!1547747 () Bool)

(declare-fun res!2056666 () Bool)

(declare-fun e!3017674 () Bool)

(assert (=> d!1547747 (=> res!2056666 e!3017674)))

(assert (=> d!1547747 (= res!2056666 (and ((_ is Cons!55048) (toList!7542 lt!1975328)) (= (_1!32459 (h!61482 (toList!7542 lt!1975328))) key!5594)))))

(assert (=> d!1547747 (= (containsKey!4418 (toList!7542 lt!1975328) key!5594) e!3017674)))

(declare-fun b!4829328 () Bool)

(declare-fun e!3017675 () Bool)

(assert (=> b!4829328 (= e!3017674 e!3017675)))

(declare-fun res!2056667 () Bool)

(assert (=> b!4829328 (=> (not res!2056667) (not e!3017675))))

(assert (=> b!4829328 (= res!2056667 ((_ is Cons!55048) (toList!7542 lt!1975328)))))

(declare-fun b!4829329 () Bool)

(assert (=> b!4829329 (= e!3017675 (containsKey!4418 (t!362668 (toList!7542 lt!1975328)) key!5594))))

(assert (= (and d!1547747 (not res!2056666)) b!4829328))

(assert (= (and b!4829328 res!2056667) b!4829329))

(declare-fun m!5821394 () Bool)

(assert (=> b!4829329 m!5821394))

(assert (=> d!1547555 d!1547747))

(declare-fun d!1547749 () Bool)

(declare-fun res!2056668 () Bool)

(declare-fun e!3017676 () Bool)

(assert (=> d!1547749 (=> res!2056668 e!3017676)))

(assert (=> d!1547749 (= res!2056668 ((_ is Nil!55048) (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (=> d!1547749 (= (forall!12660 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) lambda!237563) e!3017676)))

(declare-fun b!4829330 () Bool)

(declare-fun e!3017677 () Bool)

(assert (=> b!4829330 (= e!3017676 e!3017677)))

(declare-fun res!2056669 () Bool)

(assert (=> b!4829330 (=> (not res!2056669) (not e!3017677))))

(assert (=> b!4829330 (= res!2056669 (dynLambda!22237 lambda!237563 (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun b!4829331 () Bool)

(assert (=> b!4829331 (= e!3017677 (forall!12660 (t!362668 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lambda!237563))))

(assert (= (and d!1547749 (not res!2056668)) b!4829330))

(assert (= (and b!4829330 res!2056669) b!4829331))

(declare-fun b_lambda!190313 () Bool)

(assert (=> (not b_lambda!190313) (not b!4829330)))

(declare-fun m!5821396 () Bool)

(assert (=> b!4829330 m!5821396))

(declare-fun m!5821398 () Bool)

(assert (=> b!4829331 m!5821398))

(assert (=> b!4829069 d!1547749))

(assert (=> b!4829069 d!1547693))

(declare-fun d!1547751 () Bool)

(declare-fun res!2056670 () Bool)

(declare-fun e!3017678 () Bool)

(assert (=> d!1547751 (=> res!2056670 e!3017678)))

(assert (=> d!1547751 (= res!2056670 ((_ is Nil!55048) (toList!7542 lt!1975531)))))

(assert (=> d!1547751 (= (forall!12660 (toList!7542 lt!1975531) lambda!237563) e!3017678)))

(declare-fun b!4829332 () Bool)

(declare-fun e!3017679 () Bool)

(assert (=> b!4829332 (= e!3017678 e!3017679)))

(declare-fun res!2056671 () Bool)

(assert (=> b!4829332 (=> (not res!2056671) (not e!3017679))))

(assert (=> b!4829332 (= res!2056671 (dynLambda!22237 lambda!237563 (h!61482 (toList!7542 lt!1975531))))))

(declare-fun b!4829333 () Bool)

(assert (=> b!4829333 (= e!3017679 (forall!12660 (t!362668 (toList!7542 lt!1975531)) lambda!237563))))

(assert (= (and d!1547751 (not res!2056670)) b!4829332))

(assert (= (and b!4829332 res!2056671) b!4829333))

(declare-fun b_lambda!190315 () Bool)

(assert (=> (not b_lambda!190315) (not b!4829332)))

(declare-fun m!5821400 () Bool)

(assert (=> b!4829332 m!5821400))

(declare-fun m!5821402 () Bool)

(assert (=> b!4829333 m!5821402))

(assert (=> b!4829069 d!1547751))

(declare-fun d!1547753 () Bool)

(declare-fun res!2056672 () Bool)

(declare-fun e!3017680 () Bool)

(assert (=> d!1547753 (=> res!2056672 e!3017680)))

(assert (=> d!1547753 (= res!2056672 ((_ is Nil!55048) (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(assert (=> d!1547753 (= (forall!12660 (_2!32460 (h!61483 (toList!7541 lm!2325))) lambda!237563) e!3017680)))

(declare-fun b!4829334 () Bool)

(declare-fun e!3017681 () Bool)

(assert (=> b!4829334 (= e!3017680 e!3017681)))

(declare-fun res!2056673 () Bool)

(assert (=> b!4829334 (=> (not res!2056673) (not e!3017681))))

(assert (=> b!4829334 (= res!2056673 (dynLambda!22237 lambda!237563 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun b!4829335 () Bool)

(assert (=> b!4829335 (= e!3017681 (forall!12660 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) lambda!237563))))

(assert (= (and d!1547753 (not res!2056672)) b!4829334))

(assert (= (and b!4829334 res!2056673) b!4829335))

(declare-fun b_lambda!190317 () Bool)

(assert (=> (not b_lambda!190317) (not b!4829334)))

(declare-fun m!5821404 () Bool)

(assert (=> b!4829334 m!5821404))

(assert (=> b!4829335 m!5821044))

(assert (=> b!4829069 d!1547753))

(declare-fun bs!1165331 () Bool)

(declare-fun b!4829340 () Bool)

(assert (= bs!1165331 (and b!4829340 d!1547579)))

(declare-fun lambda!237612 () Int)

(assert (=> bs!1165331 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975543) (= lambda!237612 lambda!237564))))

(declare-fun bs!1165333 () Bool)

(assert (= bs!1165333 (and b!4829340 b!4829070)))

(assert (=> bs!1165333 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975328) (= lambda!237612 lambda!237561))))

(declare-fun bs!1165334 () Bool)

(assert (= bs!1165334 (and b!4829340 b!4829069)))

(assert (=> bs!1165334 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975328) (= lambda!237612 lambda!237562))))

(assert (=> bs!1165334 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975544) (= lambda!237612 lambda!237563))))

(declare-fun bs!1165335 () Bool)

(assert (= bs!1165335 (and b!4829340 d!1547713)))

(assert (=> bs!1165335 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975328) (= lambda!237612 lambda!237602))))

(assert (=> b!4829340 true))

(declare-fun bs!1165337 () Bool)

(declare-fun b!4829339 () Bool)

(assert (= bs!1165337 (and b!4829339 d!1547579)))

(declare-fun lambda!237613 () Int)

(assert (=> bs!1165337 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975543) (= lambda!237613 lambda!237564))))

(declare-fun bs!1165338 () Bool)

(assert (= bs!1165338 (and b!4829339 b!4829070)))

(assert (=> bs!1165338 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975328) (= lambda!237613 lambda!237561))))

(declare-fun bs!1165339 () Bool)

(assert (= bs!1165339 (and b!4829339 b!4829340)))

(assert (=> bs!1165339 (= lambda!237613 lambda!237612)))

(declare-fun bs!1165340 () Bool)

(assert (= bs!1165340 (and b!4829339 b!4829069)))

(assert (=> bs!1165340 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975328) (= lambda!237613 lambda!237562))))

(assert (=> bs!1165340 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975544) (= lambda!237613 lambda!237563))))

(declare-fun bs!1165341 () Bool)

(assert (= bs!1165341 (and b!4829339 d!1547713)))

(assert (=> bs!1165341 (= (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975328) (= lambda!237613 lambda!237602))))

(assert (=> b!4829339 true))

(declare-fun lambda!237614 () Int)

(declare-fun lt!1975668 () ListMap!6913)

(assert (=> bs!1165337 (= (= lt!1975668 lt!1975543) (= lambda!237614 lambda!237564))))

(assert (=> bs!1165338 (= (= lt!1975668 lt!1975328) (= lambda!237614 lambda!237561))))

(assert (=> bs!1165339 (= (= lt!1975668 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237614 lambda!237612))))

(assert (=> b!4829339 (= (= lt!1975668 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237614 lambda!237613))))

(assert (=> bs!1165340 (= (= lt!1975668 lt!1975328) (= lambda!237614 lambda!237562))))

(assert (=> bs!1165340 (= (= lt!1975668 lt!1975544) (= lambda!237614 lambda!237563))))

(assert (=> bs!1165341 (= (= lt!1975668 lt!1975328) (= lambda!237614 lambda!237602))))

(assert (=> b!4829339 true))

(declare-fun bs!1165342 () Bool)

(declare-fun d!1547755 () Bool)

(assert (= bs!1165342 (and d!1547755 d!1547579)))

(declare-fun lt!1975667 () ListMap!6913)

(declare-fun lambda!237615 () Int)

(assert (=> bs!1165342 (= (= lt!1975667 lt!1975543) (= lambda!237615 lambda!237564))))

(declare-fun bs!1165343 () Bool)

(assert (= bs!1165343 (and d!1547755 b!4829339)))

(assert (=> bs!1165343 (= (= lt!1975667 lt!1975668) (= lambda!237615 lambda!237614))))

(declare-fun bs!1165344 () Bool)

(assert (= bs!1165344 (and d!1547755 b!4829070)))

(assert (=> bs!1165344 (= (= lt!1975667 lt!1975328) (= lambda!237615 lambda!237561))))

(declare-fun bs!1165345 () Bool)

(assert (= bs!1165345 (and d!1547755 b!4829340)))

(assert (=> bs!1165345 (= (= lt!1975667 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237615 lambda!237612))))

(assert (=> bs!1165343 (= (= lt!1975667 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237615 lambda!237613))))

(declare-fun bs!1165346 () Bool)

(assert (= bs!1165346 (and d!1547755 b!4829069)))

(assert (=> bs!1165346 (= (= lt!1975667 lt!1975328) (= lambda!237615 lambda!237562))))

(assert (=> bs!1165346 (= (= lt!1975667 lt!1975544) (= lambda!237615 lambda!237563))))

(declare-fun bs!1165347 () Bool)

(assert (= bs!1165347 (and d!1547755 d!1547713)))

(assert (=> bs!1165347 (= (= lt!1975667 lt!1975328) (= lambda!237615 lambda!237602))))

(assert (=> d!1547755 true))

(declare-fun b!4829336 () Bool)

(declare-fun res!2056676 () Bool)

(declare-fun e!3017684 () Bool)

(assert (=> b!4829336 (=> (not res!2056676) (not e!3017684))))

(assert (=> b!4829336 (= res!2056676 (forall!12660 (toList!7542 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) lambda!237615))))

(declare-fun bm!336557 () Bool)

(declare-fun c!822864 () Bool)

(declare-fun call!336564 () Bool)

(assert (=> bm!336557 (= call!336564 (forall!12660 (toList!7542 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (ite c!822864 lambda!237612 lambda!237613)))))

(assert (=> d!1547755 e!3017684))

(declare-fun res!2056675 () Bool)

(assert (=> d!1547755 (=> (not res!2056675) (not e!3017684))))

(assert (=> d!1547755 (= res!2056675 (forall!12660 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) lambda!237615))))

(declare-fun e!3017682 () ListMap!6913)

(assert (=> d!1547755 (= lt!1975667 e!3017682)))

(assert (=> d!1547755 (= c!822864 ((_ is Nil!55048) (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (=> d!1547755 (noDuplicateKeys!2466 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(assert (=> d!1547755 (= (addToMapMapFromBucket!1823 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) lt!1975667)))

(declare-fun b!4829337 () Bool)

(declare-fun e!3017683 () Bool)

(assert (=> b!4829337 (= e!3017683 (forall!12660 (toList!7542 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) lambda!237614))))

(declare-fun b!4829338 () Bool)

(assert (=> b!4829338 (= e!3017684 (invariantList!1822 (toList!7542 lt!1975667)))))

(declare-fun bm!336558 () Bool)

(declare-fun call!336562 () Unit!143475)

(assert (=> bm!336558 (= call!336562 (lemmaContainsAllItsOwnKeys!1000 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> b!4829339 (= e!3017682 lt!1975668)))

(declare-fun lt!1975655 () ListMap!6913)

(assert (=> b!4829339 (= lt!1975655 (+!2545 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> b!4829339 (= lt!1975668 (addToMapMapFromBucket!1823 (t!362668 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (+!2545 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))))

(declare-fun lt!1975658 () Unit!143475)

(assert (=> b!4829339 (= lt!1975658 call!336562)))

(assert (=> b!4829339 call!336564))

(declare-fun lt!1975663 () Unit!143475)

(assert (=> b!4829339 (= lt!1975663 lt!1975658)))

(assert (=> b!4829339 (forall!12660 (toList!7542 lt!1975655) lambda!237614)))

(declare-fun lt!1975650 () Unit!143475)

(declare-fun Unit!143524 () Unit!143475)

(assert (=> b!4829339 (= lt!1975650 Unit!143524)))

(assert (=> b!4829339 (forall!12660 (t!362668 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lambda!237614)))

(declare-fun lt!1975666 () Unit!143475)

(declare-fun Unit!143525 () Unit!143475)

(assert (=> b!4829339 (= lt!1975666 Unit!143525)))

(declare-fun lt!1975664 () Unit!143475)

(declare-fun Unit!143526 () Unit!143475)

(assert (=> b!4829339 (= lt!1975664 Unit!143526)))

(declare-fun lt!1975654 () Unit!143475)

(assert (=> b!4829339 (= lt!1975654 (forallContained!4401 (toList!7542 lt!1975655) lambda!237614 (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> b!4829339 (contains!18852 lt!1975655 (_1!32459 (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun lt!1975662 () Unit!143475)

(declare-fun Unit!143527 () Unit!143475)

(assert (=> b!4829339 (= lt!1975662 Unit!143527)))

(assert (=> b!4829339 (contains!18852 lt!1975668 (_1!32459 (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun lt!1975660 () Unit!143475)

(declare-fun Unit!143528 () Unit!143475)

(assert (=> b!4829339 (= lt!1975660 Unit!143528)))

(assert (=> b!4829339 (forall!12660 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) lambda!237614)))

(declare-fun lt!1975665 () Unit!143475)

(declare-fun Unit!143529 () Unit!143475)

(assert (=> b!4829339 (= lt!1975665 Unit!143529)))

(assert (=> b!4829339 (forall!12660 (toList!7542 lt!1975655) lambda!237614)))

(declare-fun lt!1975651 () Unit!143475)

(declare-fun Unit!143530 () Unit!143475)

(assert (=> b!4829339 (= lt!1975651 Unit!143530)))

(declare-fun lt!1975659 () Unit!143475)

(declare-fun Unit!143531 () Unit!143475)

(assert (=> b!4829339 (= lt!1975659 Unit!143531)))

(declare-fun lt!1975649 () Unit!143475)

(assert (=> b!4829339 (= lt!1975649 (addForallContainsKeyThenBeforeAdding!999 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975668 (_1!32459 (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (_2!32459 (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))))

(declare-fun call!336563 () Bool)

(assert (=> b!4829339 call!336563))

(declare-fun lt!1975657 () Unit!143475)

(assert (=> b!4829339 (= lt!1975657 lt!1975649)))

(assert (=> b!4829339 (forall!12660 (toList!7542 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) lambda!237614)))

(declare-fun lt!1975661 () Unit!143475)

(declare-fun Unit!143532 () Unit!143475)

(assert (=> b!4829339 (= lt!1975661 Unit!143532)))

(declare-fun res!2056674 () Bool)

(assert (=> b!4829339 (= res!2056674 (forall!12660 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) lambda!237614))))

(assert (=> b!4829339 (=> (not res!2056674) (not e!3017683))))

(assert (=> b!4829339 e!3017683))

(declare-fun lt!1975648 () Unit!143475)

(declare-fun Unit!143533 () Unit!143475)

(assert (=> b!4829339 (= lt!1975648 Unit!143533)))

(declare-fun bm!336559 () Bool)

(assert (=> bm!336559 (= call!336563 (forall!12660 (toList!7542 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (ite c!822864 lambda!237612 lambda!237614)))))

(assert (=> b!4829340 (= e!3017682 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun lt!1975653 () Unit!143475)

(assert (=> b!4829340 (= lt!1975653 call!336562)))

(assert (=> b!4829340 call!336563))

(declare-fun lt!1975652 () Unit!143475)

(assert (=> b!4829340 (= lt!1975652 lt!1975653)))

(assert (=> b!4829340 call!336564))

(declare-fun lt!1975656 () Unit!143475)

(declare-fun Unit!143534 () Unit!143475)

(assert (=> b!4829340 (= lt!1975656 Unit!143534)))

(assert (= (and d!1547755 c!822864) b!4829340))

(assert (= (and d!1547755 (not c!822864)) b!4829339))

(assert (= (and b!4829339 res!2056674) b!4829337))

(assert (= (or b!4829340 b!4829339) bm!336558))

(assert (= (or b!4829340 b!4829339) bm!336557))

(assert (= (or b!4829340 b!4829339) bm!336559))

(assert (= (and d!1547755 res!2056675) b!4829336))

(assert (= (and b!4829336 res!2056676) b!4829338))

(declare-fun m!5821430 () Bool)

(assert (=> b!4829337 m!5821430))

(declare-fun m!5821432 () Bool)

(assert (=> b!4829336 m!5821432))

(declare-fun m!5821434 () Bool)

(assert (=> b!4829339 m!5821434))

(declare-fun m!5821436 () Bool)

(assert (=> b!4829339 m!5821436))

(declare-fun m!5821438 () Bool)

(assert (=> b!4829339 m!5821438))

(assert (=> b!4829339 m!5821046))

(declare-fun m!5821440 () Bool)

(assert (=> b!4829339 m!5821440))

(declare-fun m!5821442 () Bool)

(assert (=> b!4829339 m!5821442))

(declare-fun m!5821444 () Bool)

(assert (=> b!4829339 m!5821444))

(declare-fun m!5821446 () Bool)

(assert (=> b!4829339 m!5821446))

(declare-fun m!5821448 () Bool)

(assert (=> b!4829339 m!5821448))

(declare-fun m!5821450 () Bool)

(assert (=> b!4829339 m!5821450))

(assert (=> b!4829339 m!5821046))

(assert (=> b!4829339 m!5821446))

(assert (=> b!4829339 m!5821442))

(assert (=> b!4829339 m!5821438))

(assert (=> b!4829339 m!5821430))

(declare-fun m!5821452 () Bool)

(assert (=> d!1547755 m!5821452))

(assert (=> d!1547755 m!5821230))

(declare-fun m!5821454 () Bool)

(assert (=> bm!336559 m!5821454))

(declare-fun m!5821456 () Bool)

(assert (=> bm!336557 m!5821456))

(assert (=> bm!336558 m!5821046))

(declare-fun m!5821458 () Bool)

(assert (=> bm!336558 m!5821458))

(declare-fun m!5821460 () Bool)

(assert (=> b!4829338 m!5821460))

(assert (=> b!4829069 d!1547755))

(declare-fun d!1547775 () Bool)

(declare-fun e!3017709 () Bool)

(assert (=> d!1547775 e!3017709))

(declare-fun res!2056701 () Bool)

(assert (=> d!1547775 (=> (not res!2056701) (not e!3017709))))

(declare-fun lt!1975690 () ListMap!6913)

(assert (=> d!1547775 (= res!2056701 (contains!18852 lt!1975690 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun lt!1975692 () List!55172)

(assert (=> d!1547775 (= lt!1975690 (ListMap!6914 lt!1975692))))

(declare-fun lt!1975689 () Unit!143475)

(declare-fun lt!1975691 () Unit!143475)

(assert (=> d!1547775 (= lt!1975689 lt!1975691)))

(assert (=> d!1547775 (= (getValueByKey!2642 lt!1975692 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (Some!13514 (_2!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1226 (List!55172 K!16739 V!16985) Unit!143475)

(assert (=> d!1547775 (= lt!1975691 (lemmaContainsTupThenGetReturnValue!1226 lt!1975692 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (_2!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun insertNoDuplicatedKeys!734 (List!55172 K!16739 V!16985) List!55172)

(assert (=> d!1547775 (= lt!1975692 (insertNoDuplicatedKeys!734 (toList!7542 lt!1975328) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (_2!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> d!1547775 (= (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975690)))

(declare-fun b!4829371 () Bool)

(declare-fun res!2056700 () Bool)

(assert (=> b!4829371 (=> (not res!2056700) (not e!3017709))))

(assert (=> b!4829371 (= res!2056700 (= (getValueByKey!2642 (toList!7542 lt!1975690) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (Some!13514 (_2!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))))

(declare-fun b!4829372 () Bool)

(declare-fun contains!18856 (List!55172 tuple2!58330) Bool)

(assert (=> b!4829372 (= e!3017709 (contains!18856 (toList!7542 lt!1975690) (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (= (and d!1547775 res!2056701) b!4829371))

(assert (= (and b!4829371 res!2056700) b!4829372))

(declare-fun m!5821486 () Bool)

(assert (=> d!1547775 m!5821486))

(declare-fun m!5821490 () Bool)

(assert (=> d!1547775 m!5821490))

(declare-fun m!5821494 () Bool)

(assert (=> d!1547775 m!5821494))

(declare-fun m!5821496 () Bool)

(assert (=> d!1547775 m!5821496))

(declare-fun m!5821498 () Bool)

(assert (=> b!4829371 m!5821498))

(declare-fun m!5821500 () Bool)

(assert (=> b!4829372 m!5821500))

(assert (=> b!4829069 d!1547775))

(declare-fun bs!1165356 () Bool)

(declare-fun d!1547781 () Bool)

(assert (= bs!1165356 (and d!1547781 b!4829339)))

(declare-fun lambda!237625 () Int)

(assert (=> bs!1165356 (= (= lt!1975544 lt!1975668) (= lambda!237625 lambda!237614))))

(declare-fun bs!1165357 () Bool)

(assert (= bs!1165357 (and d!1547781 b!4829070)))

(assert (=> bs!1165357 (= (= lt!1975544 lt!1975328) (= lambda!237625 lambda!237561))))

(declare-fun bs!1165358 () Bool)

(assert (= bs!1165358 (and d!1547781 b!4829340)))

(assert (=> bs!1165358 (= (= lt!1975544 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237625 lambda!237612))))

(assert (=> bs!1165356 (= (= lt!1975544 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237625 lambda!237613))))

(declare-fun bs!1165359 () Bool)

(assert (= bs!1165359 (and d!1547781 d!1547579)))

(assert (=> bs!1165359 (= (= lt!1975544 lt!1975543) (= lambda!237625 lambda!237564))))

(declare-fun bs!1165360 () Bool)

(assert (= bs!1165360 (and d!1547781 d!1547755)))

(assert (=> bs!1165360 (= (= lt!1975544 lt!1975667) (= lambda!237625 lambda!237615))))

(declare-fun bs!1165361 () Bool)

(assert (= bs!1165361 (and d!1547781 b!4829069)))

(assert (=> bs!1165361 (= (= lt!1975544 lt!1975328) (= lambda!237625 lambda!237562))))

(assert (=> bs!1165361 (= lambda!237625 lambda!237563)))

(declare-fun bs!1165362 () Bool)

(assert (= bs!1165362 (and d!1547781 d!1547713)))

(assert (=> bs!1165362 (= (= lt!1975544 lt!1975328) (= lambda!237625 lambda!237602))))

(assert (=> d!1547781 true))

(assert (=> d!1547781 (forall!12660 (toList!7542 lt!1975328) lambda!237625)))

(declare-fun lt!1975703 () Unit!143475)

(declare-fun choose!35203 (ListMap!6913 ListMap!6913 K!16739 V!16985) Unit!143475)

(assert (=> d!1547781 (= lt!1975703 (choose!35203 lt!1975328 lt!1975544 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (_2!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> d!1547781 (forall!12660 (toList!7542 (+!2545 lt!1975328 (tuple2!58331 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (_2!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))) lambda!237625)))

(assert (=> d!1547781 (= (addForallContainsKeyThenBeforeAdding!999 lt!1975328 lt!1975544 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (_2!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) lt!1975703)))

(declare-fun bs!1165363 () Bool)

(assert (= bs!1165363 d!1547781))

(declare-fun m!5821514 () Bool)

(assert (=> bs!1165363 m!5821514))

(declare-fun m!5821516 () Bool)

(assert (=> bs!1165363 m!5821516))

(declare-fun m!5821518 () Bool)

(assert (=> bs!1165363 m!5821518))

(declare-fun m!5821520 () Bool)

(assert (=> bs!1165363 m!5821520))

(assert (=> b!4829069 d!1547781))

(declare-fun d!1547785 () Bool)

(assert (=> d!1547785 (dynLambda!22237 lambda!237563 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(declare-fun lt!1975731 () Unit!143475)

(declare-fun choose!35204 (List!55172 Int tuple2!58330) Unit!143475)

(assert (=> d!1547785 (= lt!1975731 (choose!35204 (toList!7542 lt!1975531) lambda!237563 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun e!3017718 () Bool)

(assert (=> d!1547785 e!3017718))

(declare-fun res!2056713 () Bool)

(assert (=> d!1547785 (=> (not res!2056713) (not e!3017718))))

(assert (=> d!1547785 (= res!2056713 (forall!12660 (toList!7542 lt!1975531) lambda!237563))))

(assert (=> d!1547785 (= (forallContained!4401 (toList!7542 lt!1975531) lambda!237563 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) lt!1975731)))

(declare-fun b!4829387 () Bool)

(assert (=> b!4829387 (= e!3017718 (contains!18856 (toList!7542 lt!1975531) (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (= (and d!1547785 res!2056713) b!4829387))

(declare-fun b_lambda!190325 () Bool)

(assert (=> (not b_lambda!190325) (not d!1547785)))

(assert (=> d!1547785 m!5821404))

(declare-fun m!5821522 () Bool)

(assert (=> d!1547785 m!5821522))

(assert (=> d!1547785 m!5821042))

(declare-fun m!5821524 () Bool)

(assert (=> b!4829387 m!5821524))

(assert (=> b!4829069 d!1547785))

(declare-fun b!4829388 () Bool)

(declare-fun e!3017723 () Unit!143475)

(declare-fun e!3017722 () Unit!143475)

(assert (=> b!4829388 (= e!3017723 e!3017722)))

(declare-fun c!822869 () Bool)

(declare-fun call!336569 () Bool)

(assert (=> b!4829388 (= c!822869 call!336569)))

(declare-fun b!4829389 () Bool)

(declare-fun Unit!143535 () Unit!143475)

(assert (=> b!4829389 (= e!3017722 Unit!143535)))

(declare-fun bm!336564 () Bool)

(declare-fun e!3017719 () List!55175)

(assert (=> bm!336564 (= call!336569 (contains!18855 e!3017719 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun c!822871 () Bool)

(declare-fun c!822870 () Bool)

(assert (=> bm!336564 (= c!822871 c!822870)))

(declare-fun b!4829390 () Bool)

(declare-fun e!3017721 () Bool)

(assert (=> b!4829390 (= e!3017721 (contains!18855 (keys!20269 lt!1975531) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun b!4829391 () Bool)

(assert (=> b!4829391 (= e!3017719 (keys!20269 lt!1975531))))

(declare-fun b!4829392 () Bool)

(declare-fun e!3017720 () Bool)

(assert (=> b!4829392 (= e!3017720 (not (contains!18855 (keys!20269 lt!1975531) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))))

(declare-fun b!4829393 () Bool)

(assert (=> b!4829393 false))

(declare-fun lt!1975735 () Unit!143475)

(declare-fun lt!1975738 () Unit!143475)

(assert (=> b!4829393 (= lt!1975735 lt!1975738)))

(assert (=> b!4829393 (containsKey!4418 (toList!7542 lt!1975531) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (=> b!4829393 (= lt!1975738 (lemmaInGetKeysListThenContainsKey!1168 (toList!7542 lt!1975531) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun Unit!143536 () Unit!143475)

(assert (=> b!4829393 (= e!3017722 Unit!143536)))

(declare-fun b!4829394 () Bool)

(declare-fun lt!1975739 () Unit!143475)

(assert (=> b!4829394 (= e!3017723 lt!1975739)))

(declare-fun lt!1975733 () Unit!143475)

(assert (=> b!4829394 (= lt!1975733 (lemmaContainsKeyImpliesGetValueByKeyDefined!2427 (toList!7542 lt!1975531) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> b!4829394 (isDefined!10630 (getValueByKey!2642 (toList!7542 lt!1975531) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun lt!1975732 () Unit!143475)

(assert (=> b!4829394 (= lt!1975732 lt!1975733)))

(assert (=> b!4829394 (= lt!1975739 (lemmaInListThenGetKeysListContains!1163 (toList!7542 lt!1975531) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> b!4829394 call!336569))

(declare-fun b!4829395 () Bool)

(assert (=> b!4829395 (= e!3017719 (getKeysList!1168 (toList!7542 lt!1975531)))))

(declare-fun d!1547787 () Bool)

(declare-fun e!3017724 () Bool)

(assert (=> d!1547787 e!3017724))

(declare-fun res!2056714 () Bool)

(assert (=> d!1547787 (=> res!2056714 e!3017724)))

(assert (=> d!1547787 (= res!2056714 e!3017720)))

(declare-fun res!2056715 () Bool)

(assert (=> d!1547787 (=> (not res!2056715) (not e!3017720))))

(declare-fun lt!1975736 () Bool)

(assert (=> d!1547787 (= res!2056715 (not lt!1975736))))

(declare-fun lt!1975734 () Bool)

(assert (=> d!1547787 (= lt!1975736 lt!1975734)))

(declare-fun lt!1975737 () Unit!143475)

(assert (=> d!1547787 (= lt!1975737 e!3017723)))

(assert (=> d!1547787 (= c!822870 lt!1975734)))

(assert (=> d!1547787 (= lt!1975734 (containsKey!4418 (toList!7542 lt!1975531) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> d!1547787 (= (contains!18852 lt!1975531 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) lt!1975736)))

(declare-fun b!4829396 () Bool)

(assert (=> b!4829396 (= e!3017724 e!3017721)))

(declare-fun res!2056716 () Bool)

(assert (=> b!4829396 (=> (not res!2056716) (not e!3017721))))

(assert (=> b!4829396 (= res!2056716 (isDefined!10630 (getValueByKey!2642 (toList!7542 lt!1975531) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))))

(assert (= (and d!1547787 c!822870) b!4829394))

(assert (= (and d!1547787 (not c!822870)) b!4829388))

(assert (= (and b!4829388 c!822869) b!4829393))

(assert (= (and b!4829388 (not c!822869)) b!4829389))

(assert (= (or b!4829394 b!4829388) bm!336564))

(assert (= (and bm!336564 c!822871) b!4829395))

(assert (= (and bm!336564 (not c!822871)) b!4829391))

(assert (= (and d!1547787 res!2056715) b!4829392))

(assert (= (and d!1547787 (not res!2056714)) b!4829396))

(assert (= (and b!4829396 res!2056716) b!4829390))

(declare-fun m!5821526 () Bool)

(assert (=> b!4829394 m!5821526))

(declare-fun m!5821528 () Bool)

(assert (=> b!4829394 m!5821528))

(assert (=> b!4829394 m!5821528))

(declare-fun m!5821530 () Bool)

(assert (=> b!4829394 m!5821530))

(declare-fun m!5821532 () Bool)

(assert (=> b!4829394 m!5821532))

(declare-fun m!5821534 () Bool)

(assert (=> bm!336564 m!5821534))

(declare-fun m!5821536 () Bool)

(assert (=> b!4829391 m!5821536))

(assert (=> b!4829392 m!5821536))

(assert (=> b!4829392 m!5821536))

(declare-fun m!5821538 () Bool)

(assert (=> b!4829392 m!5821538))

(assert (=> b!4829390 m!5821536))

(assert (=> b!4829390 m!5821536))

(assert (=> b!4829390 m!5821538))

(declare-fun m!5821540 () Bool)

(assert (=> b!4829393 m!5821540))

(declare-fun m!5821542 () Bool)

(assert (=> b!4829393 m!5821542))

(assert (=> b!4829396 m!5821528))

(assert (=> b!4829396 m!5821528))

(assert (=> b!4829396 m!5821530))

(assert (=> d!1547787 m!5821540))

(declare-fun m!5821544 () Bool)

(assert (=> b!4829395 m!5821544))

(assert (=> b!4829069 d!1547787))

(declare-fun b!4829397 () Bool)

(declare-fun e!3017729 () Unit!143475)

(declare-fun e!3017728 () Unit!143475)

(assert (=> b!4829397 (= e!3017729 e!3017728)))

(declare-fun c!822872 () Bool)

(declare-fun call!336570 () Bool)

(assert (=> b!4829397 (= c!822872 call!336570)))

(declare-fun b!4829398 () Bool)

(declare-fun Unit!143541 () Unit!143475)

(assert (=> b!4829398 (= e!3017728 Unit!143541)))

(declare-fun bm!336565 () Bool)

(declare-fun e!3017725 () List!55175)

(assert (=> bm!336565 (= call!336570 (contains!18855 e!3017725 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun c!822874 () Bool)

(declare-fun c!822873 () Bool)

(assert (=> bm!336565 (= c!822874 c!822873)))

(declare-fun b!4829399 () Bool)

(declare-fun e!3017727 () Bool)

(assert (=> b!4829399 (= e!3017727 (contains!18855 (keys!20269 lt!1975544) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun b!4829400 () Bool)

(assert (=> b!4829400 (= e!3017725 (keys!20269 lt!1975544))))

(declare-fun b!4829401 () Bool)

(declare-fun e!3017726 () Bool)

(assert (=> b!4829401 (= e!3017726 (not (contains!18855 (keys!20269 lt!1975544) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))))

(declare-fun b!4829402 () Bool)

(assert (=> b!4829402 false))

(declare-fun lt!1975743 () Unit!143475)

(declare-fun lt!1975746 () Unit!143475)

(assert (=> b!4829402 (= lt!1975743 lt!1975746)))

(assert (=> b!4829402 (containsKey!4418 (toList!7542 lt!1975544) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(assert (=> b!4829402 (= lt!1975746 (lemmaInGetKeysListThenContainsKey!1168 (toList!7542 lt!1975544) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun Unit!143542 () Unit!143475)

(assert (=> b!4829402 (= e!3017728 Unit!143542)))

(declare-fun b!4829403 () Bool)

(declare-fun lt!1975747 () Unit!143475)

(assert (=> b!4829403 (= e!3017729 lt!1975747)))

(declare-fun lt!1975741 () Unit!143475)

(assert (=> b!4829403 (= lt!1975741 (lemmaContainsKeyImpliesGetValueByKeyDefined!2427 (toList!7542 lt!1975544) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> b!4829403 (isDefined!10630 (getValueByKey!2642 (toList!7542 lt!1975544) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun lt!1975740 () Unit!143475)

(assert (=> b!4829403 (= lt!1975740 lt!1975741)))

(assert (=> b!4829403 (= lt!1975747 (lemmaInListThenGetKeysListContains!1163 (toList!7542 lt!1975544) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> b!4829403 call!336570))

(declare-fun b!4829404 () Bool)

(assert (=> b!4829404 (= e!3017725 (getKeysList!1168 (toList!7542 lt!1975544)))))

(declare-fun d!1547789 () Bool)

(declare-fun e!3017730 () Bool)

(assert (=> d!1547789 e!3017730))

(declare-fun res!2056717 () Bool)

(assert (=> d!1547789 (=> res!2056717 e!3017730)))

(assert (=> d!1547789 (= res!2056717 e!3017726)))

(declare-fun res!2056718 () Bool)

(assert (=> d!1547789 (=> (not res!2056718) (not e!3017726))))

(declare-fun lt!1975744 () Bool)

(assert (=> d!1547789 (= res!2056718 (not lt!1975744))))

(declare-fun lt!1975742 () Bool)

(assert (=> d!1547789 (= lt!1975744 lt!1975742)))

(declare-fun lt!1975745 () Unit!143475)

(assert (=> d!1547789 (= lt!1975745 e!3017729)))

(assert (=> d!1547789 (= c!822873 lt!1975742)))

(assert (=> d!1547789 (= lt!1975742 (containsKey!4418 (toList!7542 lt!1975544) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> d!1547789 (= (contains!18852 lt!1975544 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) lt!1975744)))

(declare-fun b!4829405 () Bool)

(assert (=> b!4829405 (= e!3017730 e!3017727)))

(declare-fun res!2056719 () Bool)

(assert (=> b!4829405 (=> (not res!2056719) (not e!3017727))))

(assert (=> b!4829405 (= res!2056719 (isDefined!10630 (getValueByKey!2642 (toList!7542 lt!1975544) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))))

(assert (= (and d!1547789 c!822873) b!4829403))

(assert (= (and d!1547789 (not c!822873)) b!4829397))

(assert (= (and b!4829397 c!822872) b!4829402))

(assert (= (and b!4829397 (not c!822872)) b!4829398))

(assert (= (or b!4829403 b!4829397) bm!336565))

(assert (= (and bm!336565 c!822874) b!4829404))

(assert (= (and bm!336565 (not c!822874)) b!4829400))

(assert (= (and d!1547789 res!2056718) b!4829401))

(assert (= (and d!1547789 (not res!2056717)) b!4829405))

(assert (= (and b!4829405 res!2056719) b!4829399))

(declare-fun m!5821546 () Bool)

(assert (=> b!4829403 m!5821546))

(declare-fun m!5821548 () Bool)

(assert (=> b!4829403 m!5821548))

(assert (=> b!4829403 m!5821548))

(declare-fun m!5821550 () Bool)

(assert (=> b!4829403 m!5821550))

(declare-fun m!5821552 () Bool)

(assert (=> b!4829403 m!5821552))

(declare-fun m!5821554 () Bool)

(assert (=> bm!336565 m!5821554))

(declare-fun m!5821556 () Bool)

(assert (=> b!4829400 m!5821556))

(assert (=> b!4829401 m!5821556))

(assert (=> b!4829401 m!5821556))

(declare-fun m!5821558 () Bool)

(assert (=> b!4829401 m!5821558))

(assert (=> b!4829399 m!5821556))

(assert (=> b!4829399 m!5821556))

(assert (=> b!4829399 m!5821558))

(declare-fun m!5821560 () Bool)

(assert (=> b!4829402 m!5821560))

(declare-fun m!5821562 () Bool)

(assert (=> b!4829402 m!5821562))

(assert (=> b!4829405 m!5821548))

(assert (=> b!4829405 m!5821548))

(assert (=> b!4829405 m!5821550))

(assert (=> d!1547789 m!5821560))

(declare-fun m!5821564 () Bool)

(assert (=> b!4829404 m!5821564))

(assert (=> b!4829069 d!1547789))

(declare-fun d!1547791 () Bool)

(assert (=> d!1547791 (= (invariantList!1822 (toList!7542 lt!1975553)) (noDuplicatedKeys!488 (toList!7542 lt!1975553)))))

(declare-fun bs!1165391 () Bool)

(assert (= bs!1165391 d!1547791))

(declare-fun m!5821566 () Bool)

(assert (=> bs!1165391 m!5821566))

(assert (=> d!1547617 d!1547791))

(declare-fun d!1547793 () Bool)

(declare-fun res!2056720 () Bool)

(declare-fun e!3017731 () Bool)

(assert (=> d!1547793 (=> res!2056720 e!3017731)))

(assert (=> d!1547793 (= res!2056720 ((_ is Nil!55049) (t!362669 (toList!7541 lm!2325))))))

(assert (=> d!1547793 (= (forall!12658 (t!362669 (toList!7541 lm!2325)) lambda!237570) e!3017731)))

(declare-fun b!4829406 () Bool)

(declare-fun e!3017732 () Bool)

(assert (=> b!4829406 (= e!3017731 e!3017732)))

(declare-fun res!2056721 () Bool)

(assert (=> b!4829406 (=> (not res!2056721) (not e!3017732))))

(assert (=> b!4829406 (= res!2056721 (dynLambda!22235 lambda!237570 (h!61483 (t!362669 (toList!7541 lm!2325)))))))

(declare-fun b!4829407 () Bool)

(assert (=> b!4829407 (= e!3017732 (forall!12658 (t!362669 (t!362669 (toList!7541 lm!2325))) lambda!237570))))

(assert (= (and d!1547793 (not res!2056720)) b!4829406))

(assert (= (and b!4829406 res!2056721) b!4829407))

(declare-fun b_lambda!190327 () Bool)

(assert (=> (not b_lambda!190327) (not b!4829406)))

(declare-fun m!5821568 () Bool)

(assert (=> b!4829406 m!5821568))

(declare-fun m!5821570 () Bool)

(assert (=> b!4829407 m!5821570))

(assert (=> d!1547617 d!1547793))

(assert (=> b!4829087 d!1547727))

(declare-fun d!1547795 () Bool)

(declare-fun res!2056722 () Bool)

(declare-fun e!3017733 () Bool)

(assert (=> d!1547795 (=> res!2056722 e!3017733)))

(assert (=> d!1547795 (= res!2056722 ((_ is Nil!55048) (toList!7542 lt!1975328)))))

(assert (=> d!1547795 (= (forall!12660 (toList!7542 lt!1975328) (ite c!822815 lambda!237561 lambda!237563)) e!3017733)))

(declare-fun b!4829408 () Bool)

(declare-fun e!3017734 () Bool)

(assert (=> b!4829408 (= e!3017733 e!3017734)))

(declare-fun res!2056723 () Bool)

(assert (=> b!4829408 (=> (not res!2056723) (not e!3017734))))

(assert (=> b!4829408 (= res!2056723 (dynLambda!22237 (ite c!822815 lambda!237561 lambda!237563) (h!61482 (toList!7542 lt!1975328))))))

(declare-fun b!4829409 () Bool)

(assert (=> b!4829409 (= e!3017734 (forall!12660 (t!362668 (toList!7542 lt!1975328)) (ite c!822815 lambda!237561 lambda!237563)))))

(assert (= (and d!1547795 (not res!2056722)) b!4829408))

(assert (= (and b!4829408 res!2056723) b!4829409))

(declare-fun b_lambda!190329 () Bool)

(assert (=> (not b_lambda!190329) (not b!4829408)))

(declare-fun m!5821572 () Bool)

(assert (=> b!4829408 m!5821572))

(declare-fun m!5821574 () Bool)

(assert (=> b!4829409 m!5821574))

(assert (=> bm!336552 d!1547795))

(assert (=> b!4829088 d!1547723))

(assert (=> b!4829088 d!1547727))

(assert (=> b!4829089 d!1547661))

(declare-fun d!1547797 () Bool)

(assert (=> d!1547797 (containsKey!4418 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594)))

(declare-fun lt!1975750 () Unit!143475)

(declare-fun choose!35206 (List!55172 K!16739) Unit!143475)

(assert (=> d!1547797 (= lt!1975750 (choose!35206 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(assert (=> d!1547797 (invariantList!1822 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))))

(assert (=> d!1547797 (= (lemmaInGetKeysListThenContainsKey!1168 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594) lt!1975750)))

(declare-fun bs!1165392 () Bool)

(assert (= bs!1165392 d!1547797))

(assert (=> bs!1165392 m!5821098))

(declare-fun m!5821608 () Bool)

(assert (=> bs!1165392 m!5821608))

(declare-fun m!5821610 () Bool)

(assert (=> bs!1165392 m!5821610))

(assert (=> b!4829089 d!1547797))

(declare-fun d!1547801 () Bool)

(declare-fun res!2056724 () Bool)

(declare-fun e!3017735 () Bool)

(assert (=> d!1547801 (=> res!2056724 e!3017735)))

(assert (=> d!1547801 (= res!2056724 ((_ is Nil!55049) (toList!7541 lm!2325)))))

(assert (=> d!1547801 (= (forall!12658 (toList!7541 lm!2325) lambda!237491) e!3017735)))

(declare-fun b!4829410 () Bool)

(declare-fun e!3017736 () Bool)

(assert (=> b!4829410 (= e!3017735 e!3017736)))

(declare-fun res!2056725 () Bool)

(assert (=> b!4829410 (=> (not res!2056725) (not e!3017736))))

(assert (=> b!4829410 (= res!2056725 (dynLambda!22235 lambda!237491 (h!61483 (toList!7541 lm!2325))))))

(declare-fun b!4829411 () Bool)

(assert (=> b!4829411 (= e!3017736 (forall!12658 (t!362669 (toList!7541 lm!2325)) lambda!237491))))

(assert (= (and d!1547801 (not res!2056724)) b!4829410))

(assert (= (and b!4829410 res!2056725) b!4829411))

(declare-fun b_lambda!190331 () Bool)

(assert (=> (not b_lambda!190331) (not b!4829410)))

(declare-fun m!5821612 () Bool)

(assert (=> b!4829410 m!5821612))

(declare-fun m!5821614 () Bool)

(assert (=> b!4829411 m!5821614))

(assert (=> d!1547571 d!1547801))

(declare-fun bs!1165393 () Bool)

(declare-fun b!4829416 () Bool)

(assert (= bs!1165393 (and b!4829416 b!4829339)))

(declare-fun lambda!237630 () Int)

(assert (=> bs!1165393 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975668) (= lambda!237630 lambda!237614))))

(declare-fun bs!1165394 () Bool)

(assert (= bs!1165394 (and b!4829416 b!4829070)))

(assert (=> bs!1165394 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975328) (= lambda!237630 lambda!237561))))

(declare-fun bs!1165395 () Bool)

(assert (= bs!1165395 (and b!4829416 d!1547781)))

(assert (=> bs!1165395 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975544) (= lambda!237630 lambda!237625))))

(declare-fun bs!1165396 () Bool)

(assert (= bs!1165396 (and b!4829416 b!4829340)))

(assert (=> bs!1165396 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237630 lambda!237612))))

(assert (=> bs!1165393 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237630 lambda!237613))))

(declare-fun bs!1165397 () Bool)

(assert (= bs!1165397 (and b!4829416 d!1547579)))

(assert (=> bs!1165397 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975543) (= lambda!237630 lambda!237564))))

(declare-fun bs!1165398 () Bool)

(assert (= bs!1165398 (and b!4829416 d!1547755)))

(assert (=> bs!1165398 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975667) (= lambda!237630 lambda!237615))))

(declare-fun bs!1165399 () Bool)

(assert (= bs!1165399 (and b!4829416 b!4829069)))

(assert (=> bs!1165399 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975328) (= lambda!237630 lambda!237562))))

(assert (=> bs!1165399 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975544) (= lambda!237630 lambda!237563))))

(declare-fun bs!1165400 () Bool)

(assert (= bs!1165400 (and b!4829416 d!1547713)))

(assert (=> bs!1165400 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975328) (= lambda!237630 lambda!237602))))

(assert (=> b!4829416 true))

(declare-fun bs!1165401 () Bool)

(declare-fun b!4829415 () Bool)

(assert (= bs!1165401 (and b!4829415 b!4829339)))

(declare-fun lambda!237631 () Int)

(assert (=> bs!1165401 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975668) (= lambda!237631 lambda!237614))))

(declare-fun bs!1165402 () Bool)

(assert (= bs!1165402 (and b!4829415 b!4829070)))

(assert (=> bs!1165402 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975328) (= lambda!237631 lambda!237561))))

(declare-fun bs!1165403 () Bool)

(assert (= bs!1165403 (and b!4829415 d!1547781)))

(assert (=> bs!1165403 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975544) (= lambda!237631 lambda!237625))))

(declare-fun bs!1165404 () Bool)

(assert (= bs!1165404 (and b!4829415 b!4829340)))

(assert (=> bs!1165404 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237631 lambda!237612))))

(declare-fun bs!1165405 () Bool)

(assert (= bs!1165405 (and b!4829415 b!4829416)))

(assert (=> bs!1165405 (= lambda!237631 lambda!237630)))

(assert (=> bs!1165401 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237631 lambda!237613))))

(declare-fun bs!1165406 () Bool)

(assert (= bs!1165406 (and b!4829415 d!1547579)))

(assert (=> bs!1165406 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975543) (= lambda!237631 lambda!237564))))

(declare-fun bs!1165407 () Bool)

(assert (= bs!1165407 (and b!4829415 d!1547755)))

(assert (=> bs!1165407 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975667) (= lambda!237631 lambda!237615))))

(declare-fun bs!1165408 () Bool)

(assert (= bs!1165408 (and b!4829415 b!4829069)))

(assert (=> bs!1165408 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975328) (= lambda!237631 lambda!237562))))

(assert (=> bs!1165408 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975544) (= lambda!237631 lambda!237563))))

(declare-fun bs!1165409 () Bool)

(assert (= bs!1165409 (and b!4829415 d!1547713)))

(assert (=> bs!1165409 (= (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975328) (= lambda!237631 lambda!237602))))

(assert (=> b!4829415 true))

(declare-fun lambda!237632 () Int)

(declare-fun lt!1975771 () ListMap!6913)

(assert (=> bs!1165401 (= (= lt!1975771 lt!1975668) (= lambda!237632 lambda!237614))))

(assert (=> b!4829415 (= (= lt!1975771 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) (= lambda!237632 lambda!237631))))

(assert (=> bs!1165402 (= (= lt!1975771 lt!1975328) (= lambda!237632 lambda!237561))))

(assert (=> bs!1165403 (= (= lt!1975771 lt!1975544) (= lambda!237632 lambda!237625))))

(assert (=> bs!1165404 (= (= lt!1975771 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237632 lambda!237612))))

(assert (=> bs!1165405 (= (= lt!1975771 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) (= lambda!237632 lambda!237630))))

(assert (=> bs!1165401 (= (= lt!1975771 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237632 lambda!237613))))

(assert (=> bs!1165406 (= (= lt!1975771 lt!1975543) (= lambda!237632 lambda!237564))))

(assert (=> bs!1165407 (= (= lt!1975771 lt!1975667) (= lambda!237632 lambda!237615))))

(assert (=> bs!1165408 (= (= lt!1975771 lt!1975328) (= lambda!237632 lambda!237562))))

(assert (=> bs!1165408 (= (= lt!1975771 lt!1975544) (= lambda!237632 lambda!237563))))

(assert (=> bs!1165409 (= (= lt!1975771 lt!1975328) (= lambda!237632 lambda!237602))))

(assert (=> b!4829415 true))

(declare-fun bs!1165410 () Bool)

(declare-fun d!1547803 () Bool)

(assert (= bs!1165410 (and d!1547803 b!4829415)))

(declare-fun lt!1975770 () ListMap!6913)

(declare-fun lambda!237633 () Int)

(assert (=> bs!1165410 (= (= lt!1975770 lt!1975771) (= lambda!237633 lambda!237632))))

(declare-fun bs!1165411 () Bool)

(assert (= bs!1165411 (and d!1547803 b!4829339)))

(assert (=> bs!1165411 (= (= lt!1975770 lt!1975668) (= lambda!237633 lambda!237614))))

(assert (=> bs!1165410 (= (= lt!1975770 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) (= lambda!237633 lambda!237631))))

(declare-fun bs!1165412 () Bool)

(assert (= bs!1165412 (and d!1547803 b!4829070)))

(assert (=> bs!1165412 (= (= lt!1975770 lt!1975328) (= lambda!237633 lambda!237561))))

(declare-fun bs!1165413 () Bool)

(assert (= bs!1165413 (and d!1547803 d!1547781)))

(assert (=> bs!1165413 (= (= lt!1975770 lt!1975544) (= lambda!237633 lambda!237625))))

(declare-fun bs!1165414 () Bool)

(assert (= bs!1165414 (and d!1547803 b!4829340)))

(assert (=> bs!1165414 (= (= lt!1975770 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237633 lambda!237612))))

(declare-fun bs!1165415 () Bool)

(assert (= bs!1165415 (and d!1547803 b!4829416)))

(assert (=> bs!1165415 (= (= lt!1975770 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) (= lambda!237633 lambda!237630))))

(assert (=> bs!1165411 (= (= lt!1975770 (+!2545 lt!1975328 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (= lambda!237633 lambda!237613))))

(declare-fun bs!1165416 () Bool)

(assert (= bs!1165416 (and d!1547803 d!1547579)))

(assert (=> bs!1165416 (= (= lt!1975770 lt!1975543) (= lambda!237633 lambda!237564))))

(declare-fun bs!1165417 () Bool)

(assert (= bs!1165417 (and d!1547803 d!1547755)))

(assert (=> bs!1165417 (= (= lt!1975770 lt!1975667) (= lambda!237633 lambda!237615))))

(declare-fun bs!1165418 () Bool)

(assert (= bs!1165418 (and d!1547803 b!4829069)))

(assert (=> bs!1165418 (= (= lt!1975770 lt!1975328) (= lambda!237633 lambda!237562))))

(assert (=> bs!1165418 (= (= lt!1975770 lt!1975544) (= lambda!237633 lambda!237563))))

(declare-fun bs!1165419 () Bool)

(assert (= bs!1165419 (and d!1547803 d!1547713)))

(assert (=> bs!1165419 (= (= lt!1975770 lt!1975328) (= lambda!237633 lambda!237602))))

(assert (=> d!1547803 true))

(declare-fun b!4829412 () Bool)

(declare-fun res!2056728 () Bool)

(declare-fun e!3017739 () Bool)

(assert (=> b!4829412 (=> (not res!2056728) (not e!3017739))))

(assert (=> b!4829412 (= res!2056728 (forall!12660 (toList!7542 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) lambda!237633))))

(declare-fun bm!336566 () Bool)

(declare-fun c!822875 () Bool)

(declare-fun call!336573 () Bool)

(assert (=> bm!336566 (= call!336573 (forall!12660 (toList!7542 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) (ite c!822875 lambda!237630 lambda!237631)))))

(assert (=> d!1547803 e!3017739))

(declare-fun res!2056727 () Bool)

(assert (=> d!1547803 (=> (not res!2056727) (not e!3017739))))

(assert (=> d!1547803 (= res!2056727 (forall!12660 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))) lambda!237633))))

(declare-fun e!3017737 () ListMap!6913)

(assert (=> d!1547803 (= lt!1975770 e!3017737)))

(assert (=> d!1547803 (= c!822875 ((_ is Nil!55048) (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325))))))))

(assert (=> d!1547803 (noDuplicateKeys!2466 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))))))

(assert (=> d!1547803 (= (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))) (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) lt!1975770)))

(declare-fun b!4829413 () Bool)

(declare-fun e!3017738 () Bool)

(assert (=> b!4829413 (= e!3017738 (forall!12660 (toList!7542 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) lambda!237632))))

(declare-fun b!4829414 () Bool)

(assert (=> b!4829414 (= e!3017739 (invariantList!1822 (toList!7542 lt!1975770)))))

(declare-fun bm!336567 () Bool)

(declare-fun call!336571 () Unit!143475)

(assert (=> bm!336567 (= call!336571 (lemmaContainsAllItsOwnKeys!1000 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))))))

(assert (=> b!4829415 (= e!3017737 lt!1975771)))

(declare-fun lt!1975758 () ListMap!6913)

(assert (=> b!4829415 (= lt!1975758 (+!2545 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) (h!61482 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))))))))

(assert (=> b!4829415 (= lt!1975771 (addToMapMapFromBucket!1823 (t!362668 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325))))) (+!2545 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) (h!61482 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325))))))))))

(declare-fun lt!1975761 () Unit!143475)

(assert (=> b!4829415 (= lt!1975761 call!336571)))

(assert (=> b!4829415 call!336573))

(declare-fun lt!1975766 () Unit!143475)

(assert (=> b!4829415 (= lt!1975766 lt!1975761)))

(assert (=> b!4829415 (forall!12660 (toList!7542 lt!1975758) lambda!237632)))

(declare-fun lt!1975753 () Unit!143475)

(declare-fun Unit!143543 () Unit!143475)

(assert (=> b!4829415 (= lt!1975753 Unit!143543)))

(assert (=> b!4829415 (forall!12660 (t!362668 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325))))) lambda!237632)))

(declare-fun lt!1975769 () Unit!143475)

(declare-fun Unit!143544 () Unit!143475)

(assert (=> b!4829415 (= lt!1975769 Unit!143544)))

(declare-fun lt!1975767 () Unit!143475)

(declare-fun Unit!143545 () Unit!143475)

(assert (=> b!4829415 (= lt!1975767 Unit!143545)))

(declare-fun lt!1975757 () Unit!143475)

(assert (=> b!4829415 (= lt!1975757 (forallContained!4401 (toList!7542 lt!1975758) lambda!237632 (h!61482 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))))))))

(assert (=> b!4829415 (contains!18852 lt!1975758 (_1!32459 (h!61482 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))))))))

(declare-fun lt!1975765 () Unit!143475)

(declare-fun Unit!143546 () Unit!143475)

(assert (=> b!4829415 (= lt!1975765 Unit!143546)))

(assert (=> b!4829415 (contains!18852 lt!1975771 (_1!32459 (h!61482 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))))))))

(declare-fun lt!1975763 () Unit!143475)

(declare-fun Unit!143547 () Unit!143475)

(assert (=> b!4829415 (= lt!1975763 Unit!143547)))

(assert (=> b!4829415 (forall!12660 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))) lambda!237632)))

(declare-fun lt!1975768 () Unit!143475)

(declare-fun Unit!143548 () Unit!143475)

(assert (=> b!4829415 (= lt!1975768 Unit!143548)))

(assert (=> b!4829415 (forall!12660 (toList!7542 lt!1975758) lambda!237632)))

(declare-fun lt!1975754 () Unit!143475)

(declare-fun Unit!143549 () Unit!143475)

(assert (=> b!4829415 (= lt!1975754 Unit!143549)))

(declare-fun lt!1975762 () Unit!143475)

(declare-fun Unit!143550 () Unit!143475)

(assert (=> b!4829415 (= lt!1975762 Unit!143550)))

(declare-fun lt!1975752 () Unit!143475)

(assert (=> b!4829415 (= lt!1975752 (addForallContainsKeyThenBeforeAdding!999 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975771 (_1!32459 (h!61482 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))))) (_2!32459 (h!61482 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325))))))))))

(declare-fun call!336572 () Bool)

(assert (=> b!4829415 call!336572))

(declare-fun lt!1975760 () Unit!143475)

(assert (=> b!4829415 (= lt!1975760 lt!1975752)))

(assert (=> b!4829415 (forall!12660 (toList!7542 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) lambda!237632)))

(declare-fun lt!1975764 () Unit!143475)

(declare-fun Unit!143551 () Unit!143475)

(assert (=> b!4829415 (= lt!1975764 Unit!143551)))

(declare-fun res!2056726 () Bool)

(assert (=> b!4829415 (= res!2056726 (forall!12660 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325)))) lambda!237632))))

(assert (=> b!4829415 (=> (not res!2056726) (not e!3017738))))

(assert (=> b!4829415 e!3017738))

(declare-fun lt!1975751 () Unit!143475)

(declare-fun Unit!143552 () Unit!143475)

(assert (=> b!4829415 (= lt!1975751 Unit!143552)))

(declare-fun bm!336568 () Bool)

(assert (=> bm!336568 (= call!336572 (forall!12660 (toList!7542 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325))))) (ite c!822875 lambda!237630 lambda!237632)))))

(assert (=> b!4829416 (= e!3017737 (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))))))

(declare-fun lt!1975756 () Unit!143475)

(assert (=> b!4829416 (= lt!1975756 call!336571)))

(assert (=> b!4829416 call!336572))

(declare-fun lt!1975755 () Unit!143475)

(assert (=> b!4829416 (= lt!1975755 lt!1975756)))

(assert (=> b!4829416 call!336573))

(declare-fun lt!1975759 () Unit!143475)

(declare-fun Unit!143553 () Unit!143475)

(assert (=> b!4829416 (= lt!1975759 Unit!143553)))

(assert (= (and d!1547803 c!822875) b!4829416))

(assert (= (and d!1547803 (not c!822875)) b!4829415))

(assert (= (and b!4829415 res!2056726) b!4829413))

(assert (= (or b!4829416 b!4829415) bm!336567))

(assert (= (or b!4829416 b!4829415) bm!336566))

(assert (= (or b!4829416 b!4829415) bm!336568))

(assert (= (and d!1547803 res!2056727) b!4829412))

(assert (= (and b!4829412 res!2056728) b!4829414))

(declare-fun m!5821644 () Bool)

(assert (=> b!4829413 m!5821644))

(declare-fun m!5821646 () Bool)

(assert (=> b!4829412 m!5821646))

(declare-fun m!5821648 () Bool)

(assert (=> b!4829415 m!5821648))

(declare-fun m!5821650 () Bool)

(assert (=> b!4829415 m!5821650))

(declare-fun m!5821652 () Bool)

(assert (=> b!4829415 m!5821652))

(assert (=> b!4829415 m!5821080))

(declare-fun m!5821654 () Bool)

(assert (=> b!4829415 m!5821654))

(declare-fun m!5821656 () Bool)

(assert (=> b!4829415 m!5821656))

(declare-fun m!5821658 () Bool)

(assert (=> b!4829415 m!5821658))

(declare-fun m!5821660 () Bool)

(assert (=> b!4829415 m!5821660))

(declare-fun m!5821662 () Bool)

(assert (=> b!4829415 m!5821662))

(declare-fun m!5821664 () Bool)

(assert (=> b!4829415 m!5821664))

(assert (=> b!4829415 m!5821080))

(assert (=> b!4829415 m!5821660))

(assert (=> b!4829415 m!5821656))

(assert (=> b!4829415 m!5821652))

(assert (=> b!4829415 m!5821644))

(declare-fun m!5821666 () Bool)

(assert (=> d!1547803 m!5821666))

(declare-fun m!5821668 () Bool)

(assert (=> d!1547803 m!5821668))

(declare-fun m!5821670 () Bool)

(assert (=> bm!336568 m!5821670))

(declare-fun m!5821672 () Bool)

(assert (=> bm!336566 m!5821672))

(assert (=> bm!336567 m!5821080))

(declare-fun m!5821674 () Bool)

(assert (=> bm!336567 m!5821674))

(declare-fun m!5821676 () Bool)

(assert (=> b!4829414 m!5821676))

(assert (=> b!4829082 d!1547803))

(declare-fun bs!1165420 () Bool)

(declare-fun d!1547811 () Bool)

(assert (= bs!1165420 (and d!1547811 start!501376)))

(declare-fun lambda!237634 () Int)

(assert (=> bs!1165420 (= lambda!237634 lambda!237488)))

(declare-fun bs!1165421 () Bool)

(assert (= bs!1165421 (and d!1547811 d!1547571)))

(assert (=> bs!1165421 (not (= lambda!237634 lambda!237491))))

(declare-fun bs!1165422 () Bool)

(assert (= bs!1165422 (and d!1547811 d!1547609)))

(assert (=> bs!1165422 (= lambda!237634 lambda!237567)))

(declare-fun bs!1165423 () Bool)

(assert (= bs!1165423 (and d!1547811 d!1547617)))

(assert (=> bs!1165423 (= lambda!237634 lambda!237570)))

(declare-fun lt!1975783 () ListMap!6913)

(assert (=> d!1547811 (invariantList!1822 (toList!7542 lt!1975783))))

(declare-fun e!3017751 () ListMap!6913)

(assert (=> d!1547811 (= lt!1975783 e!3017751)))

(declare-fun c!822879 () Bool)

(assert (=> d!1547811 (= c!822879 ((_ is Cons!55049) (t!362669 (t!362669 (toList!7541 lm!2325)))))))

(assert (=> d!1547811 (forall!12658 (t!362669 (t!362669 (toList!7541 lm!2325))) lambda!237634)))

(assert (=> d!1547811 (= (extractMap!2708 (t!362669 (t!362669 (toList!7541 lm!2325)))) lt!1975783)))

(declare-fun b!4829431 () Bool)

(assert (=> b!4829431 (= e!3017751 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (t!362669 (t!362669 (toList!7541 lm!2325))))) (extractMap!2708 (t!362669 (t!362669 (t!362669 (toList!7541 lm!2325)))))))))

(declare-fun b!4829432 () Bool)

(assert (=> b!4829432 (= e!3017751 (ListMap!6914 Nil!55048))))

(assert (= (and d!1547811 c!822879) b!4829431))

(assert (= (and d!1547811 (not c!822879)) b!4829432))

(declare-fun m!5821678 () Bool)

(assert (=> d!1547811 m!5821678))

(declare-fun m!5821680 () Bool)

(assert (=> d!1547811 m!5821680))

(declare-fun m!5821682 () Bool)

(assert (=> b!4829431 m!5821682))

(assert (=> b!4829431 m!5821682))

(declare-fun m!5821684 () Bool)

(assert (=> b!4829431 m!5821684))

(assert (=> b!4829082 d!1547811))

(declare-fun d!1547813 () Bool)

(assert (=> d!1547813 (= (tail!9424 (toList!7541 lm!2325)) (t!362669 (toList!7541 lm!2325)))))

(assert (=> d!1547577 d!1547813))

(declare-fun d!1547815 () Bool)

(assert (=> d!1547815 (isDefined!10630 (getValueByKey!2642 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(declare-fun lt!1975786 () Unit!143475)

(declare-fun choose!35209 (List!55172 K!16739) Unit!143475)

(assert (=> d!1547815 (= lt!1975786 (choose!35209 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(assert (=> d!1547815 (invariantList!1822 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))))

(assert (=> d!1547815 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2427 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594) lt!1975786)))

(declare-fun bs!1165424 () Bool)

(assert (= bs!1165424 d!1547815))

(assert (=> bs!1165424 m!5821086))

(assert (=> bs!1165424 m!5821086))

(assert (=> bs!1165424 m!5821088))

(declare-fun m!5821686 () Bool)

(assert (=> bs!1165424 m!5821686))

(assert (=> bs!1165424 m!5821610))

(assert (=> b!4829090 d!1547815))

(declare-fun d!1547817 () Bool)

(assert (=> d!1547817 (= (isDefined!10630 (getValueByKey!2642 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594)) (not (isEmpty!29674 (getValueByKey!2642 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))))

(declare-fun bs!1165425 () Bool)

(assert (= bs!1165425 d!1547817))

(assert (=> bs!1165425 m!5821086))

(declare-fun m!5821688 () Bool)

(assert (=> bs!1165425 m!5821688))

(assert (=> b!4829090 d!1547817))

(declare-fun e!3017756 () Option!13515)

(declare-fun b!4829438 () Bool)

(assert (=> b!4829438 (= e!3017756 (getValueByKey!2642 (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) key!5594))))

(declare-fun b!4829436 () Bool)

(declare-fun e!3017755 () Option!13515)

(assert (=> b!4829436 (= e!3017755 (Some!13514 (_2!32459 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))))

(declare-fun b!4829439 () Bool)

(assert (=> b!4829439 (= e!3017756 None!13514)))

(declare-fun b!4829437 () Bool)

(assert (=> b!4829437 (= e!3017755 e!3017756)))

(declare-fun c!822881 () Bool)

(assert (=> b!4829437 (= c!822881 (and ((_ is Cons!55048) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (not (= (_1!32459 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) key!5594))))))

(declare-fun d!1547819 () Bool)

(declare-fun c!822880 () Bool)

(assert (=> d!1547819 (= c!822880 (and ((_ is Cons!55048) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= (_1!32459 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) key!5594)))))

(assert (=> d!1547819 (= (getValueByKey!2642 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594) e!3017755)))

(assert (= (and d!1547819 c!822880) b!4829436))

(assert (= (and d!1547819 (not c!822880)) b!4829437))

(assert (= (and b!4829437 c!822881) b!4829438))

(assert (= (and b!4829437 (not c!822881)) b!4829439))

(declare-fun m!5821690 () Bool)

(assert (=> b!4829438 m!5821690))

(assert (=> b!4829090 d!1547819))

(declare-fun d!1547823 () Bool)

(assert (=> d!1547823 (contains!18855 (getKeysList!1168 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) key!5594)))

(declare-fun lt!1975790 () Unit!143475)

(declare-fun choose!35210 (List!55172 K!16739) Unit!143475)

(assert (=> d!1547823 (= lt!1975790 (choose!35210 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594))))

(assert (=> d!1547823 (invariantList!1822 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))))

(assert (=> d!1547823 (= (lemmaInListThenGetKeysListContains!1163 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) key!5594) lt!1975790)))

(declare-fun bs!1165431 () Bool)

(assert (= bs!1165431 d!1547823))

(assert (=> bs!1165431 m!5821102))

(assert (=> bs!1165431 m!5821102))

(declare-fun m!5821704 () Bool)

(assert (=> bs!1165431 m!5821704))

(declare-fun m!5821708 () Bool)

(assert (=> bs!1165431 m!5821708))

(assert (=> bs!1165431 m!5821610))

(assert (=> b!4829090 d!1547823))

(declare-fun bs!1165438 () Bool)

(declare-fun b!4829474 () Bool)

(assert (= bs!1165438 (and b!4829474 b!4829324)))

(declare-fun lambda!237643 () Int)

(assert (=> bs!1165438 (= (= (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237643 lambda!237607))))

(assert (=> b!4829474 true))

(declare-fun bs!1165439 () Bool)

(declare-fun b!4829468 () Bool)

(assert (= bs!1165439 (and b!4829468 b!4829324)))

(declare-fun lambda!237644 () Int)

(assert (=> bs!1165439 (= (= (Cons!55048 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237644 lambda!237607))))

(declare-fun bs!1165440 () Bool)

(assert (= bs!1165440 (and b!4829468 b!4829474)))

(assert (=> bs!1165440 (= (= (Cons!55048 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (= lambda!237644 lambda!237643))))

(assert (=> b!4829468 true))

(declare-fun bs!1165441 () Bool)

(declare-fun b!4829472 () Bool)

(assert (= bs!1165441 (and b!4829472 b!4829324)))

(declare-fun lambda!237645 () Int)

(assert (=> bs!1165441 (= lambda!237645 lambda!237607)))

(declare-fun bs!1165442 () Bool)

(assert (= bs!1165442 (and b!4829472 b!4829474)))

(assert (=> bs!1165442 (= (= (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (= lambda!237645 lambda!237643))))

(declare-fun bs!1165443 () Bool)

(assert (= bs!1165443 (and b!4829472 b!4829468)))

(assert (=> bs!1165443 (= (= (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) (Cons!55048 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))) (= lambda!237645 lambda!237644))))

(assert (=> b!4829472 true))

(declare-fun bs!1165444 () Bool)

(declare-fun b!4829466 () Bool)

(assert (= bs!1165444 (and b!4829466 b!4829325)))

(declare-fun lambda!237646 () Int)

(assert (=> bs!1165444 (= lambda!237646 lambda!237608)))

(declare-fun lt!1975811 () List!55175)

(declare-fun e!3017773 () Bool)

(assert (=> b!4829466 (= e!3017773 (= (content!9829 lt!1975811) (content!9829 (map!12606 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)) lambda!237646))))))

(declare-fun e!3017772 () List!55175)

(assert (=> b!4829468 (= e!3017772 (Cons!55051 (_1!32459 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (getKeysList!1168 (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))))

(declare-fun c!822890 () Bool)

(assert (=> b!4829468 (= c!822890 (containsKey!4418 (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (_1!32459 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))))

(declare-fun lt!1975807 () Unit!143475)

(declare-fun e!3017771 () Unit!143475)

(assert (=> b!4829468 (= lt!1975807 e!3017771)))

(declare-fun c!822888 () Bool)

(assert (=> b!4829468 (= c!822888 (contains!18855 (getKeysList!1168 (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (_1!32459 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))))

(declare-fun lt!1975805 () Unit!143475)

(declare-fun e!3017774 () Unit!143475)

(assert (=> b!4829468 (= lt!1975805 e!3017774)))

(declare-fun lt!1975810 () List!55175)

(assert (=> b!4829468 (= lt!1975810 (getKeysList!1168 (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))))))

(declare-fun lt!1975806 () Unit!143475)

(declare-fun lemmaForallContainsAddHeadPreserves!384 (List!55172 List!55175 tuple2!58330) Unit!143475)

(assert (=> b!4829468 (= lt!1975806 (lemmaForallContainsAddHeadPreserves!384 (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) lt!1975810 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))))))

(assert (=> b!4829468 (forall!12662 lt!1975810 lambda!237644)))

(declare-fun lt!1975808 () Unit!143475)

(assert (=> b!4829468 (= lt!1975808 lt!1975806)))

(declare-fun b!4829469 () Bool)

(assert (=> b!4829469 false))

(declare-fun Unit!143556 () Unit!143475)

(assert (=> b!4829469 (= e!3017771 Unit!143556)))

(declare-fun b!4829470 () Bool)

(assert (=> b!4829470 (= e!3017772 Nil!55051)))

(declare-fun b!4829467 () Bool)

(declare-fun Unit!143557 () Unit!143475)

(assert (=> b!4829467 (= e!3017771 Unit!143557)))

(declare-fun d!1547839 () Bool)

(assert (=> d!1547839 e!3017773))

(declare-fun res!2056748 () Bool)

(assert (=> d!1547839 (=> (not res!2056748) (not e!3017773))))

(assert (=> d!1547839 (= res!2056748 (noDuplicate!970 lt!1975811))))

(assert (=> d!1547839 (= lt!1975811 e!3017772)))

(declare-fun c!822889 () Bool)

(assert (=> d!1547839 (= c!822889 ((_ is Cons!55048) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))

(assert (=> d!1547839 (invariantList!1822 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))))

(assert (=> d!1547839 (= (getKeysList!1168 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) lt!1975811)))

(declare-fun b!4829471 () Bool)

(declare-fun res!2056750 () Bool)

(assert (=> b!4829471 (=> (not res!2056750) (not e!3017773))))

(assert (=> b!4829471 (= res!2056750 (= (length!796 lt!1975811) (length!797 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))))))

(declare-fun res!2056749 () Bool)

(assert (=> b!4829472 (=> (not res!2056749) (not e!3017773))))

(assert (=> b!4829472 (= res!2056749 (forall!12662 lt!1975811 lambda!237645))))

(declare-fun b!4829473 () Bool)

(declare-fun Unit!143558 () Unit!143475)

(assert (=> b!4829473 (= e!3017774 Unit!143558)))

(assert (=> b!4829474 false))

(declare-fun lt!1975809 () Unit!143475)

(declare-fun forallContained!4403 (List!55175 Int K!16739) Unit!143475)

(assert (=> b!4829474 (= lt!1975809 (forallContained!4403 (getKeysList!1168 (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) lambda!237643 (_1!32459 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))))))

(declare-fun Unit!143559 () Unit!143475)

(assert (=> b!4829474 (= e!3017774 Unit!143559)))

(assert (= (and d!1547839 c!822889) b!4829468))

(assert (= (and d!1547839 (not c!822889)) b!4829470))

(assert (= (and b!4829468 c!822890) b!4829469))

(assert (= (and b!4829468 (not c!822890)) b!4829467))

(assert (= (and b!4829468 c!822888) b!4829474))

(assert (= (and b!4829468 (not c!822888)) b!4829473))

(assert (= (and d!1547839 res!2056748) b!4829471))

(assert (= (and b!4829471 res!2056750) b!4829472))

(assert (= (and b!4829472 res!2056749) b!4829466))

(declare-fun m!5821716 () Bool)

(assert (=> b!4829466 m!5821716))

(declare-fun m!5821718 () Bool)

(assert (=> b!4829466 m!5821718))

(assert (=> b!4829466 m!5821718))

(declare-fun m!5821720 () Bool)

(assert (=> b!4829466 m!5821720))

(declare-fun m!5821722 () Bool)

(assert (=> d!1547839 m!5821722))

(assert (=> d!1547839 m!5821610))

(declare-fun m!5821724 () Bool)

(assert (=> b!4829474 m!5821724))

(assert (=> b!4829474 m!5821724))

(declare-fun m!5821726 () Bool)

(assert (=> b!4829474 m!5821726))

(declare-fun m!5821728 () Bool)

(assert (=> b!4829471 m!5821728))

(assert (=> b!4829471 m!5821384))

(declare-fun m!5821730 () Bool)

(assert (=> b!4829472 m!5821730))

(assert (=> b!4829468 m!5821724))

(declare-fun m!5821732 () Bool)

(assert (=> b!4829468 m!5821732))

(declare-fun m!5821734 () Bool)

(assert (=> b!4829468 m!5821734))

(declare-fun m!5821736 () Bool)

(assert (=> b!4829468 m!5821736))

(declare-fun m!5821738 () Bool)

(assert (=> b!4829468 m!5821738))

(assert (=> b!4829468 m!5821724))

(assert (=> b!4829091 d!1547839))

(assert (=> b!4829092 d!1547817))

(assert (=> b!4829092 d!1547819))

(declare-fun d!1547849 () Bool)

(declare-fun lt!1975812 () Bool)

(assert (=> d!1547849 (= lt!1975812 (select (content!9829 (keys!20269 lt!1975328)) key!5594))))

(declare-fun e!3017776 () Bool)

(assert (=> d!1547849 (= lt!1975812 e!3017776)))

(declare-fun res!2056751 () Bool)

(assert (=> d!1547849 (=> (not res!2056751) (not e!3017776))))

(assert (=> d!1547849 (= res!2056751 ((_ is Cons!55051) (keys!20269 lt!1975328)))))

(assert (=> d!1547849 (= (contains!18855 (keys!20269 lt!1975328) key!5594) lt!1975812)))

(declare-fun b!4829477 () Bool)

(declare-fun e!3017775 () Bool)

(assert (=> b!4829477 (= e!3017776 e!3017775)))

(declare-fun res!2056752 () Bool)

(assert (=> b!4829477 (=> res!2056752 e!3017775)))

(assert (=> b!4829477 (= res!2056752 (= (h!61485 (keys!20269 lt!1975328)) key!5594))))

(declare-fun b!4829478 () Bool)

(assert (=> b!4829478 (= e!3017775 (contains!18855 (t!362671 (keys!20269 lt!1975328)) key!5594))))

(assert (= (and d!1547849 res!2056751) b!4829477))

(assert (= (and b!4829477 (not res!2056752)) b!4829478))

(assert (=> d!1547849 m!5820900))

(declare-fun m!5821740 () Bool)

(assert (=> d!1547849 m!5821740))

(declare-fun m!5821742 () Bool)

(assert (=> d!1547849 m!5821742))

(declare-fun m!5821744 () Bool)

(assert (=> b!4829478 m!5821744))

(assert (=> b!4828966 d!1547849))

(declare-fun bs!1165445 () Bool)

(declare-fun b!4829480 () Bool)

(assert (= bs!1165445 (and b!4829480 b!4829324)))

(declare-fun lambda!237647 () Int)

(assert (=> bs!1165445 (= (= (toList!7542 lt!1975328) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237647 lambda!237607))))

(declare-fun bs!1165446 () Bool)

(assert (= bs!1165446 (and b!4829480 b!4829474)))

(assert (=> bs!1165446 (= (= (toList!7542 lt!1975328) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (= lambda!237647 lambda!237643))))

(declare-fun bs!1165447 () Bool)

(assert (= bs!1165447 (and b!4829480 b!4829468)))

(assert (=> bs!1165447 (= (= (toList!7542 lt!1975328) (Cons!55048 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))) (= lambda!237647 lambda!237644))))

(declare-fun bs!1165448 () Bool)

(assert (= bs!1165448 (and b!4829480 b!4829472)))

(assert (=> bs!1165448 (= (= (toList!7542 lt!1975328) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237647 lambda!237645))))

(assert (=> b!4829480 true))

(declare-fun bs!1165449 () Bool)

(declare-fun b!4829481 () Bool)

(assert (= bs!1165449 (and b!4829481 b!4829325)))

(declare-fun lambda!237648 () Int)

(assert (=> bs!1165449 (= lambda!237648 lambda!237608)))

(declare-fun bs!1165450 () Bool)

(assert (= bs!1165450 (and b!4829481 b!4829466)))

(assert (=> bs!1165450 (= lambda!237648 lambda!237646)))

(declare-fun d!1547851 () Bool)

(declare-fun e!3017777 () Bool)

(assert (=> d!1547851 e!3017777))

(declare-fun res!2056755 () Bool)

(assert (=> d!1547851 (=> (not res!2056755) (not e!3017777))))

(declare-fun lt!1975813 () List!55175)

(assert (=> d!1547851 (= res!2056755 (noDuplicate!970 lt!1975813))))

(assert (=> d!1547851 (= lt!1975813 (getKeysList!1168 (toList!7542 lt!1975328)))))

(assert (=> d!1547851 (= (keys!20269 lt!1975328) lt!1975813)))

(declare-fun b!4829479 () Bool)

(declare-fun res!2056753 () Bool)

(assert (=> b!4829479 (=> (not res!2056753) (not e!3017777))))

(assert (=> b!4829479 (= res!2056753 (= (length!796 lt!1975813) (length!797 (toList!7542 lt!1975328))))))

(declare-fun res!2056754 () Bool)

(assert (=> b!4829480 (=> (not res!2056754) (not e!3017777))))

(assert (=> b!4829480 (= res!2056754 (forall!12662 lt!1975813 lambda!237647))))

(assert (=> b!4829481 (= e!3017777 (= (content!9829 lt!1975813) (content!9829 (map!12606 (toList!7542 lt!1975328) lambda!237648))))))

(assert (= (and d!1547851 res!2056755) b!4829479))

(assert (= (and b!4829479 res!2056753) b!4829480))

(assert (= (and b!4829480 res!2056754) b!4829481))

(declare-fun m!5821746 () Bool)

(assert (=> d!1547851 m!5821746))

(assert (=> d!1547851 m!5820908))

(declare-fun m!5821748 () Bool)

(assert (=> b!4829479 m!5821748))

(declare-fun m!5821750 () Bool)

(assert (=> b!4829479 m!5821750))

(declare-fun m!5821752 () Bool)

(assert (=> b!4829480 m!5821752))

(declare-fun m!5821754 () Bool)

(assert (=> b!4829481 m!5821754))

(declare-fun m!5821756 () Bool)

(assert (=> b!4829481 m!5821756))

(assert (=> b!4829481 m!5821756))

(declare-fun m!5821758 () Bool)

(assert (=> b!4829481 m!5821758))

(assert (=> b!4828966 d!1547851))

(declare-fun d!1547853 () Bool)

(assert (=> d!1547853 (isDefined!10631 (getValueByKey!2643 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)))))

(declare-fun lt!1975816 () Unit!143475)

(declare-fun choose!35211 (List!55173 (_ BitVec 64)) Unit!143475)

(assert (=> d!1547853 (= lt!1975816 (choose!35211 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)))))

(declare-fun e!3017780 () Bool)

(assert (=> d!1547853 e!3017780))

(declare-fun res!2056758 () Bool)

(assert (=> d!1547853 (=> (not res!2056758) (not e!3017780))))

(assert (=> d!1547853 (= res!2056758 (isStrictlySorted!997 (toList!7541 lm!2325)))))

(assert (=> d!1547853 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2428 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)) lt!1975816)))

(declare-fun b!4829484 () Bool)

(assert (=> b!4829484 (= e!3017780 (containsKey!4419 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)))))

(assert (= (and d!1547853 res!2056758) b!4829484))

(assert (=> d!1547853 m!5820830))

(assert (=> d!1547853 m!5820914))

(assert (=> d!1547853 m!5820914))

(assert (=> d!1547853 m!5820916))

(assert (=> d!1547853 m!5820830))

(declare-fun m!5821760 () Bool)

(assert (=> d!1547853 m!5821760))

(assert (=> d!1547853 m!5820924))

(assert (=> b!4829484 m!5820830))

(assert (=> b!4829484 m!5820910))

(assert (=> b!4828979 d!1547853))

(declare-fun d!1547855 () Bool)

(declare-fun isEmpty!29677 (Option!13516) Bool)

(assert (=> d!1547855 (= (isDefined!10631 (getValueByKey!2643 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594))) (not (isEmpty!29677 (getValueByKey!2643 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)))))))

(declare-fun bs!1165451 () Bool)

(assert (= bs!1165451 d!1547855))

(assert (=> bs!1165451 m!5820914))

(declare-fun m!5821762 () Bool)

(assert (=> bs!1165451 m!5821762))

(assert (=> b!4828979 d!1547855))

(declare-fun b!4829488 () Bool)

(declare-fun e!3017782 () Option!13516)

(assert (=> b!4829488 (= e!3017782 None!13515)))

(declare-fun b!4829487 () Bool)

(assert (=> b!4829487 (= e!3017782 (getValueByKey!2643 (t!362669 (toList!7541 lm!2325)) (hash!5453 hashF!1543 key!5594)))))

(declare-fun d!1547857 () Bool)

(declare-fun c!822891 () Bool)

(assert (=> d!1547857 (= c!822891 (and ((_ is Cons!55049) (toList!7541 lm!2325)) (= (_1!32460 (h!61483 (toList!7541 lm!2325))) (hash!5453 hashF!1543 key!5594))))))

(declare-fun e!3017781 () Option!13516)

(assert (=> d!1547857 (= (getValueByKey!2643 (toList!7541 lm!2325) (hash!5453 hashF!1543 key!5594)) e!3017781)))

(declare-fun b!4829486 () Bool)

(assert (=> b!4829486 (= e!3017781 e!3017782)))

(declare-fun c!822892 () Bool)

(assert (=> b!4829486 (= c!822892 (and ((_ is Cons!55049) (toList!7541 lm!2325)) (not (= (_1!32460 (h!61483 (toList!7541 lm!2325))) (hash!5453 hashF!1543 key!5594)))))))

(declare-fun b!4829485 () Bool)

(assert (=> b!4829485 (= e!3017781 (Some!13515 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(assert (= (and d!1547857 c!822891) b!4829485))

(assert (= (and d!1547857 (not c!822891)) b!4829486))

(assert (= (and b!4829486 c!822892) b!4829487))

(assert (= (and b!4829486 (not c!822892)) b!4829488))

(assert (=> b!4829487 m!5820830))

(declare-fun m!5821764 () Bool)

(assert (=> b!4829487 m!5821764))

(assert (=> b!4828979 d!1547857))

(declare-fun d!1547859 () Bool)

(declare-fun lt!1975817 () Bool)

(assert (=> d!1547859 (= lt!1975817 (select (content!9829 e!3017426) key!5594))))

(declare-fun e!3017784 () Bool)

(assert (=> d!1547859 (= lt!1975817 e!3017784)))

(declare-fun res!2056759 () Bool)

(assert (=> d!1547859 (=> (not res!2056759) (not e!3017784))))

(assert (=> d!1547859 (= res!2056759 ((_ is Cons!55051) e!3017426))))

(assert (=> d!1547859 (= (contains!18855 e!3017426 key!5594) lt!1975817)))

(declare-fun b!4829489 () Bool)

(declare-fun e!3017783 () Bool)

(assert (=> b!4829489 (= e!3017784 e!3017783)))

(declare-fun res!2056760 () Bool)

(assert (=> b!4829489 (=> res!2056760 e!3017783)))

(assert (=> b!4829489 (= res!2056760 (= (h!61485 e!3017426) key!5594))))

(declare-fun b!4829490 () Bool)

(assert (=> b!4829490 (= e!3017783 (contains!18855 (t!362671 e!3017426) key!5594))))

(assert (= (and d!1547859 res!2056759) b!4829489))

(assert (= (and b!4829489 (not res!2056760)) b!4829490))

(declare-fun m!5821766 () Bool)

(assert (=> d!1547859 m!5821766))

(declare-fun m!5821768 () Bool)

(assert (=> d!1547859 m!5821768))

(declare-fun m!5821770 () Bool)

(assert (=> b!4829490 m!5821770))

(assert (=> bm!336533 d!1547859))

(declare-fun d!1547861 () Bool)

(declare-fun res!2056761 () Bool)

(declare-fun e!3017785 () Bool)

(assert (=> d!1547861 (=> res!2056761 e!3017785)))

(assert (=> d!1547861 (= res!2056761 (not ((_ is Cons!55048) (_2!32460 (h!61483 (toList!7541 (tail!9422 lm!2325)))))))))

(assert (=> d!1547861 (= (noDuplicateKeys!2466 (_2!32460 (h!61483 (toList!7541 (tail!9422 lm!2325))))) e!3017785)))

(declare-fun b!4829491 () Bool)

(declare-fun e!3017786 () Bool)

(assert (=> b!4829491 (= e!3017785 e!3017786)))

(declare-fun res!2056762 () Bool)

(assert (=> b!4829491 (=> (not res!2056762) (not e!3017786))))

(assert (=> b!4829491 (= res!2056762 (not (containsKey!4415 (t!362668 (_2!32460 (h!61483 (toList!7541 (tail!9422 lm!2325))))) (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 (tail!9422 lm!2325)))))))))))

(declare-fun b!4829492 () Bool)

(assert (=> b!4829492 (= e!3017786 (noDuplicateKeys!2466 (t!362668 (_2!32460 (h!61483 (toList!7541 (tail!9422 lm!2325)))))))))

(assert (= (and d!1547861 (not res!2056761)) b!4829491))

(assert (= (and b!4829491 res!2056762) b!4829492))

(declare-fun m!5821772 () Bool)

(assert (=> b!4829491 m!5821772))

(declare-fun m!5821774 () Bool)

(assert (=> b!4829492 m!5821774))

(assert (=> bs!1165254 d!1547861))

(declare-fun d!1547863 () Bool)

(declare-fun res!2056763 () Bool)

(declare-fun e!3017787 () Bool)

(assert (=> d!1547863 (=> res!2056763 e!3017787)))

(assert (=> d!1547863 (= res!2056763 ((_ is Nil!55049) (t!362669 (toList!7541 lm!2325))))))

(assert (=> d!1547863 (= (forall!12658 (t!362669 (toList!7541 lm!2325)) lambda!237488) e!3017787)))

(declare-fun b!4829493 () Bool)

(declare-fun e!3017788 () Bool)

(assert (=> b!4829493 (= e!3017787 e!3017788)))

(declare-fun res!2056764 () Bool)

(assert (=> b!4829493 (=> (not res!2056764) (not e!3017788))))

(assert (=> b!4829493 (= res!2056764 (dynLambda!22235 lambda!237488 (h!61483 (t!362669 (toList!7541 lm!2325)))))))

(declare-fun b!4829494 () Bool)

(assert (=> b!4829494 (= e!3017788 (forall!12658 (t!362669 (t!362669 (toList!7541 lm!2325))) lambda!237488))))

(assert (= (and d!1547863 (not res!2056763)) b!4829493))

(assert (= (and b!4829493 res!2056764) b!4829494))

(declare-fun b_lambda!190361 () Bool)

(assert (=> (not b_lambda!190361) (not b!4829493)))

(declare-fun m!5821776 () Bool)

(assert (=> b!4829493 m!5821776))

(declare-fun m!5821778 () Bool)

(assert (=> b!4829494 m!5821778))

(assert (=> b!4828987 d!1547863))

(assert (=> b!4828981 d!1547855))

(assert (=> b!4828981 d!1547857))

(assert (=> b!4828967 d!1547851))

(assert (=> d!1547609 d!1547575))

(assert (=> d!1547609 d!1547611))

(declare-fun d!1547865 () Bool)

(assert (=> d!1547865 (not (containsKey!4415 (apply!13365 lm!2325 (_1!32460 (h!61483 (toList!7541 lm!2325)))) key!5594))))

(assert (=> d!1547865 true))

(declare-fun _$39!454 () Unit!143475)

(assert (=> d!1547865 (= (choose!35195 lm!2325 key!5594 (_1!32460 (h!61483 (toList!7541 lm!2325))) hashF!1543) _$39!454)))

(declare-fun bs!1165452 () Bool)

(assert (= bs!1165452 d!1547865))

(assert (=> bs!1165452 m!5820854))

(assert (=> bs!1165452 m!5820854))

(assert (=> bs!1165452 m!5820856))

(assert (=> d!1547609 d!1547865))

(declare-fun d!1547867 () Bool)

(declare-fun res!2056765 () Bool)

(declare-fun e!3017789 () Bool)

(assert (=> d!1547867 (=> res!2056765 e!3017789)))

(assert (=> d!1547867 (= res!2056765 ((_ is Nil!55049) (toList!7541 lm!2325)))))

(assert (=> d!1547867 (= (forall!12658 (toList!7541 lm!2325) lambda!237567) e!3017789)))

(declare-fun b!4829495 () Bool)

(declare-fun e!3017790 () Bool)

(assert (=> b!4829495 (= e!3017789 e!3017790)))

(declare-fun res!2056766 () Bool)

(assert (=> b!4829495 (=> (not res!2056766) (not e!3017790))))

(assert (=> b!4829495 (= res!2056766 (dynLambda!22235 lambda!237567 (h!61483 (toList!7541 lm!2325))))))

(declare-fun b!4829496 () Bool)

(assert (=> b!4829496 (= e!3017790 (forall!12658 (t!362669 (toList!7541 lm!2325)) lambda!237567))))

(assert (= (and d!1547867 (not res!2056765)) b!4829495))

(assert (= (and b!4829495 res!2056766) b!4829496))

(declare-fun b_lambda!190363 () Bool)

(assert (=> (not b_lambda!190363) (not b!4829495)))

(declare-fun m!5821780 () Bool)

(assert (=> b!4829495 m!5821780))

(declare-fun m!5821782 () Bool)

(assert (=> b!4829496 m!5821782))

(assert (=> d!1547609 d!1547867))

(assert (=> b!4828968 d!1547849))

(assert (=> b!4828968 d!1547851))

(declare-fun d!1547869 () Bool)

(assert (=> d!1547869 (isDefined!10630 (getValueByKey!2642 (toList!7542 lt!1975328) key!5594))))

(declare-fun lt!1975818 () Unit!143475)

(assert (=> d!1547869 (= lt!1975818 (choose!35209 (toList!7542 lt!1975328) key!5594))))

(assert (=> d!1547869 (invariantList!1822 (toList!7542 lt!1975328))))

(assert (=> d!1547869 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2427 (toList!7542 lt!1975328) key!5594) lt!1975818)))

(declare-fun bs!1165453 () Bool)

(assert (= bs!1165453 d!1547869))

(assert (=> bs!1165453 m!5820892))

(assert (=> bs!1165453 m!5820892))

(assert (=> bs!1165453 m!5820894))

(declare-fun m!5821784 () Bool)

(assert (=> bs!1165453 m!5821784))

(declare-fun m!5821786 () Bool)

(assert (=> bs!1165453 m!5821786))

(assert (=> b!4828970 d!1547869))

(assert (=> b!4828970 d!1547655))

(assert (=> b!4828970 d!1547657))

(declare-fun d!1547871 () Bool)

(assert (=> d!1547871 (contains!18855 (getKeysList!1168 (toList!7542 lt!1975328)) key!5594)))

(declare-fun lt!1975819 () Unit!143475)

(assert (=> d!1547871 (= lt!1975819 (choose!35210 (toList!7542 lt!1975328) key!5594))))

(assert (=> d!1547871 (invariantList!1822 (toList!7542 lt!1975328))))

(assert (=> d!1547871 (= (lemmaInListThenGetKeysListContains!1163 (toList!7542 lt!1975328) key!5594) lt!1975819)))

(declare-fun bs!1165454 () Bool)

(assert (= bs!1165454 d!1547871))

(assert (=> bs!1165454 m!5820908))

(assert (=> bs!1165454 m!5820908))

(declare-fun m!5821788 () Bool)

(assert (=> bs!1165454 m!5821788))

(declare-fun m!5821790 () Bool)

(assert (=> bs!1165454 m!5821790))

(assert (=> bs!1165454 m!5821786))

(assert (=> b!4828970 d!1547871))

(declare-fun d!1547873 () Bool)

(declare-fun res!2056767 () Bool)

(declare-fun e!3017791 () Bool)

(assert (=> d!1547873 (=> res!2056767 e!3017791)))

(assert (=> d!1547873 (= res!2056767 ((_ is Nil!55048) (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(assert (=> d!1547873 (= (forall!12660 (_2!32460 (h!61483 (toList!7541 lm!2325))) lambda!237564) e!3017791)))

(declare-fun b!4829497 () Bool)

(declare-fun e!3017792 () Bool)

(assert (=> b!4829497 (= e!3017791 e!3017792)))

(declare-fun res!2056768 () Bool)

(assert (=> b!4829497 (=> (not res!2056768) (not e!3017792))))

(assert (=> b!4829497 (= res!2056768 (dynLambda!22237 lambda!237564 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun b!4829498 () Bool)

(assert (=> b!4829498 (= e!3017792 (forall!12660 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) lambda!237564))))

(assert (= (and d!1547873 (not res!2056767)) b!4829497))

(assert (= (and b!4829497 res!2056768) b!4829498))

(declare-fun b_lambda!190365 () Bool)

(assert (=> (not b_lambda!190365) (not b!4829497)))

(declare-fun m!5821792 () Bool)

(assert (=> b!4829497 m!5821792))

(declare-fun m!5821794 () Bool)

(assert (=> b!4829498 m!5821794))

(assert (=> d!1547579 d!1547873))

(assert (=> d!1547579 d!1547663))

(assert (=> b!4828969 d!1547747))

(declare-fun d!1547875 () Bool)

(assert (=> d!1547875 (containsKey!4418 (toList!7542 lt!1975328) key!5594)))

(declare-fun lt!1975820 () Unit!143475)

(assert (=> d!1547875 (= lt!1975820 (choose!35206 (toList!7542 lt!1975328) key!5594))))

(assert (=> d!1547875 (invariantList!1822 (toList!7542 lt!1975328))))

(assert (=> d!1547875 (= (lemmaInGetKeysListThenContainsKey!1168 (toList!7542 lt!1975328) key!5594) lt!1975820)))

(declare-fun bs!1165455 () Bool)

(assert (= bs!1165455 d!1547875))

(assert (=> bs!1165455 m!5820904))

(declare-fun m!5821796 () Bool)

(assert (=> bs!1165455 m!5821796))

(assert (=> bs!1165455 m!5821786))

(assert (=> b!4828969 d!1547875))

(declare-fun bs!1165456 () Bool)

(declare-fun b!4829507 () Bool)

(assert (= bs!1165456 (and b!4829507 b!4829468)))

(declare-fun lambda!237649 () Int)

(assert (=> bs!1165456 (= (= (t!362668 (toList!7542 lt!1975328)) (Cons!55048 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))) (= lambda!237649 lambda!237644))))

(declare-fun bs!1165457 () Bool)

(assert (= bs!1165457 (and b!4829507 b!4829474)))

(assert (=> bs!1165457 (= (= (t!362668 (toList!7542 lt!1975328)) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (= lambda!237649 lambda!237643))))

(declare-fun bs!1165458 () Bool)

(assert (= bs!1165458 (and b!4829507 b!4829324)))

(assert (=> bs!1165458 (= (= (t!362668 (toList!7542 lt!1975328)) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237649 lambda!237607))))

(declare-fun bs!1165459 () Bool)

(assert (= bs!1165459 (and b!4829507 b!4829480)))

(assert (=> bs!1165459 (= (= (t!362668 (toList!7542 lt!1975328)) (toList!7542 lt!1975328)) (= lambda!237649 lambda!237647))))

(declare-fun bs!1165460 () Bool)

(assert (= bs!1165460 (and b!4829507 b!4829472)))

(assert (=> bs!1165460 (= (= (t!362668 (toList!7542 lt!1975328)) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237649 lambda!237645))))

(assert (=> b!4829507 true))

(declare-fun bs!1165461 () Bool)

(declare-fun b!4829501 () Bool)

(assert (= bs!1165461 (and b!4829501 b!4829468)))

(declare-fun lambda!237650 () Int)

(assert (=> bs!1165461 (= (= (Cons!55048 (h!61482 (toList!7542 lt!1975328)) (t!362668 (toList!7542 lt!1975328))) (Cons!55048 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))) (= lambda!237650 lambda!237644))))

(declare-fun bs!1165462 () Bool)

(assert (= bs!1165462 (and b!4829501 b!4829507)))

(assert (=> bs!1165462 (= (= (Cons!55048 (h!61482 (toList!7542 lt!1975328)) (t!362668 (toList!7542 lt!1975328))) (t!362668 (toList!7542 lt!1975328))) (= lambda!237650 lambda!237649))))

(declare-fun bs!1165463 () Bool)

(assert (= bs!1165463 (and b!4829501 b!4829474)))

(assert (=> bs!1165463 (= (= (Cons!55048 (h!61482 (toList!7542 lt!1975328)) (t!362668 (toList!7542 lt!1975328))) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (= lambda!237650 lambda!237643))))

(declare-fun bs!1165464 () Bool)

(assert (= bs!1165464 (and b!4829501 b!4829324)))

(assert (=> bs!1165464 (= (= (Cons!55048 (h!61482 (toList!7542 lt!1975328)) (t!362668 (toList!7542 lt!1975328))) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237650 lambda!237607))))

(declare-fun bs!1165465 () Bool)

(assert (= bs!1165465 (and b!4829501 b!4829480)))

(assert (=> bs!1165465 (= (= (Cons!55048 (h!61482 (toList!7542 lt!1975328)) (t!362668 (toList!7542 lt!1975328))) (toList!7542 lt!1975328)) (= lambda!237650 lambda!237647))))

(declare-fun bs!1165466 () Bool)

(assert (= bs!1165466 (and b!4829501 b!4829472)))

(assert (=> bs!1165466 (= (= (Cons!55048 (h!61482 (toList!7542 lt!1975328)) (t!362668 (toList!7542 lt!1975328))) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237650 lambda!237645))))

(assert (=> b!4829501 true))

(declare-fun bs!1165467 () Bool)

(declare-fun b!4829505 () Bool)

(assert (= bs!1165467 (and b!4829505 b!4829468)))

(declare-fun lambda!237651 () Int)

(assert (=> bs!1165467 (= (= (toList!7542 lt!1975328) (Cons!55048 (h!61482 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))))) (= lambda!237651 lambda!237644))))

(declare-fun bs!1165468 () Bool)

(assert (= bs!1165468 (and b!4829505 b!4829474)))

(assert (=> bs!1165468 (= (= (toList!7542 lt!1975328) (t!362668 (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328)))) (= lambda!237651 lambda!237643))))

(declare-fun bs!1165469 () Bool)

(assert (= bs!1165469 (and b!4829505 b!4829324)))

(assert (=> bs!1165469 (= (= (toList!7542 lt!1975328) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237651 lambda!237607))))

(declare-fun bs!1165470 () Bool)

(assert (= bs!1165470 (and b!4829505 b!4829480)))

(assert (=> bs!1165470 (= lambda!237651 lambda!237647)))

(declare-fun bs!1165471 () Bool)

(assert (= bs!1165471 (and b!4829505 b!4829472)))

(assert (=> bs!1165471 (= (= (toList!7542 lt!1975328) (toList!7542 (addToMapMapFromBucket!1823 (_2!32460 (h!61483 (toList!7541 lm!2325))) lt!1975328))) (= lambda!237651 lambda!237645))))

(declare-fun bs!1165472 () Bool)

(assert (= bs!1165472 (and b!4829505 b!4829507)))

(assert (=> bs!1165472 (= (= (toList!7542 lt!1975328) (t!362668 (toList!7542 lt!1975328))) (= lambda!237651 lambda!237649))))

(declare-fun bs!1165473 () Bool)

(assert (= bs!1165473 (and b!4829505 b!4829501)))

(assert (=> bs!1165473 (= (= (toList!7542 lt!1975328) (Cons!55048 (h!61482 (toList!7542 lt!1975328)) (t!362668 (toList!7542 lt!1975328)))) (= lambda!237651 lambda!237650))))

(assert (=> b!4829505 true))

(declare-fun bs!1165474 () Bool)

(declare-fun b!4829499 () Bool)

(assert (= bs!1165474 (and b!4829499 b!4829325)))

(declare-fun lambda!237652 () Int)

(assert (=> bs!1165474 (= lambda!237652 lambda!237608)))

(declare-fun bs!1165475 () Bool)

(assert (= bs!1165475 (and b!4829499 b!4829466)))

(assert (=> bs!1165475 (= lambda!237652 lambda!237646)))

(declare-fun bs!1165476 () Bool)

(assert (= bs!1165476 (and b!4829499 b!4829481)))

(assert (=> bs!1165476 (= lambda!237652 lambda!237648)))

(declare-fun lt!1975827 () List!55175)

(declare-fun e!3017795 () Bool)

(assert (=> b!4829499 (= e!3017795 (= (content!9829 lt!1975827) (content!9829 (map!12606 (toList!7542 lt!1975328) lambda!237652))))))

(declare-fun e!3017794 () List!55175)

(assert (=> b!4829501 (= e!3017794 (Cons!55051 (_1!32459 (h!61482 (toList!7542 lt!1975328))) (getKeysList!1168 (t!362668 (toList!7542 lt!1975328)))))))

(declare-fun c!822895 () Bool)

(assert (=> b!4829501 (= c!822895 (containsKey!4418 (t!362668 (toList!7542 lt!1975328)) (_1!32459 (h!61482 (toList!7542 lt!1975328)))))))

(declare-fun lt!1975823 () Unit!143475)

(declare-fun e!3017793 () Unit!143475)

(assert (=> b!4829501 (= lt!1975823 e!3017793)))

(declare-fun c!822893 () Bool)

(assert (=> b!4829501 (= c!822893 (contains!18855 (getKeysList!1168 (t!362668 (toList!7542 lt!1975328))) (_1!32459 (h!61482 (toList!7542 lt!1975328)))))))

(declare-fun lt!1975821 () Unit!143475)

(declare-fun e!3017796 () Unit!143475)

(assert (=> b!4829501 (= lt!1975821 e!3017796)))

(declare-fun lt!1975826 () List!55175)

(assert (=> b!4829501 (= lt!1975826 (getKeysList!1168 (t!362668 (toList!7542 lt!1975328))))))

(declare-fun lt!1975822 () Unit!143475)

(assert (=> b!4829501 (= lt!1975822 (lemmaForallContainsAddHeadPreserves!384 (t!362668 (toList!7542 lt!1975328)) lt!1975826 (h!61482 (toList!7542 lt!1975328))))))

(assert (=> b!4829501 (forall!12662 lt!1975826 lambda!237650)))

(declare-fun lt!1975824 () Unit!143475)

(assert (=> b!4829501 (= lt!1975824 lt!1975822)))

(declare-fun b!4829502 () Bool)

(assert (=> b!4829502 false))

(declare-fun Unit!143573 () Unit!143475)

(assert (=> b!4829502 (= e!3017793 Unit!143573)))

(declare-fun b!4829503 () Bool)

(assert (=> b!4829503 (= e!3017794 Nil!55051)))

(declare-fun b!4829500 () Bool)

(declare-fun Unit!143574 () Unit!143475)

(assert (=> b!4829500 (= e!3017793 Unit!143574)))

(declare-fun d!1547877 () Bool)

(assert (=> d!1547877 e!3017795))

(declare-fun res!2056769 () Bool)

(assert (=> d!1547877 (=> (not res!2056769) (not e!3017795))))

(assert (=> d!1547877 (= res!2056769 (noDuplicate!970 lt!1975827))))

(assert (=> d!1547877 (= lt!1975827 e!3017794)))

(declare-fun c!822894 () Bool)

(assert (=> d!1547877 (= c!822894 ((_ is Cons!55048) (toList!7542 lt!1975328)))))

(assert (=> d!1547877 (invariantList!1822 (toList!7542 lt!1975328))))

(assert (=> d!1547877 (= (getKeysList!1168 (toList!7542 lt!1975328)) lt!1975827)))

(declare-fun b!4829504 () Bool)

(declare-fun res!2056771 () Bool)

(assert (=> b!4829504 (=> (not res!2056771) (not e!3017795))))

(assert (=> b!4829504 (= res!2056771 (= (length!796 lt!1975827) (length!797 (toList!7542 lt!1975328))))))

(declare-fun res!2056770 () Bool)

(assert (=> b!4829505 (=> (not res!2056770) (not e!3017795))))

(assert (=> b!4829505 (= res!2056770 (forall!12662 lt!1975827 lambda!237651))))

(declare-fun b!4829506 () Bool)

(declare-fun Unit!143575 () Unit!143475)

(assert (=> b!4829506 (= e!3017796 Unit!143575)))

(assert (=> b!4829507 false))

(declare-fun lt!1975825 () Unit!143475)

(assert (=> b!4829507 (= lt!1975825 (forallContained!4403 (getKeysList!1168 (t!362668 (toList!7542 lt!1975328))) lambda!237649 (_1!32459 (h!61482 (toList!7542 lt!1975328)))))))

(declare-fun Unit!143576 () Unit!143475)

(assert (=> b!4829507 (= e!3017796 Unit!143576)))

(assert (= (and d!1547877 c!822894) b!4829501))

(assert (= (and d!1547877 (not c!822894)) b!4829503))

(assert (= (and b!4829501 c!822895) b!4829502))

(assert (= (and b!4829501 (not c!822895)) b!4829500))

(assert (= (and b!4829501 c!822893) b!4829507))

(assert (= (and b!4829501 (not c!822893)) b!4829506))

(assert (= (and d!1547877 res!2056769) b!4829504))

(assert (= (and b!4829504 res!2056771) b!4829505))

(assert (= (and b!4829505 res!2056770) b!4829499))

(declare-fun m!5821798 () Bool)

(assert (=> b!4829499 m!5821798))

(declare-fun m!5821800 () Bool)

(assert (=> b!4829499 m!5821800))

(assert (=> b!4829499 m!5821800))

(declare-fun m!5821802 () Bool)

(assert (=> b!4829499 m!5821802))

(declare-fun m!5821804 () Bool)

(assert (=> d!1547877 m!5821804))

(assert (=> d!1547877 m!5821786))

(declare-fun m!5821806 () Bool)

(assert (=> b!4829507 m!5821806))

(assert (=> b!4829507 m!5821806))

(declare-fun m!5821808 () Bool)

(assert (=> b!4829507 m!5821808))

(declare-fun m!5821810 () Bool)

(assert (=> b!4829504 m!5821810))

(assert (=> b!4829504 m!5821750))

(declare-fun m!5821812 () Bool)

(assert (=> b!4829505 m!5821812))

(assert (=> b!4829501 m!5821806))

(declare-fun m!5821814 () Bool)

(assert (=> b!4829501 m!5821814))

(declare-fun m!5821816 () Bool)

(assert (=> b!4829501 m!5821816))

(declare-fun m!5821818 () Bool)

(assert (=> b!4829501 m!5821818))

(declare-fun m!5821820 () Bool)

(assert (=> b!4829501 m!5821820))

(assert (=> b!4829501 m!5821806))

(assert (=> b!4828971 d!1547877))

(declare-fun d!1547879 () Bool)

(declare-fun res!2056772 () Bool)

(declare-fun e!3017797 () Bool)

(assert (=> d!1547879 (=> res!2056772 e!3017797)))

(assert (=> d!1547879 (= res!2056772 (and ((_ is Cons!55048) (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (= (_1!32459 (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) key!5594)))))

(assert (=> d!1547879 (= (containsKey!4415 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))) key!5594) e!3017797)))

(declare-fun b!4829508 () Bool)

(declare-fun e!3017798 () Bool)

(assert (=> b!4829508 (= e!3017797 e!3017798)))

(declare-fun res!2056773 () Bool)

(assert (=> b!4829508 (=> (not res!2056773) (not e!3017798))))

(assert (=> b!4829508 (= res!2056773 ((_ is Cons!55048) (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))

(declare-fun b!4829509 () Bool)

(assert (=> b!4829509 (= e!3017798 (containsKey!4415 (t!362668 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))) key!5594))))

(assert (= (and d!1547879 (not res!2056772)) b!4829508))

(assert (= (and b!4829508 res!2056773) b!4829509))

(declare-fun m!5821822 () Bool)

(assert (=> b!4829509 m!5821822))

(assert (=> b!4829074 d!1547879))

(declare-fun d!1547881 () Bool)

(declare-fun res!2056774 () Bool)

(declare-fun e!3017799 () Bool)

(assert (=> d!1547881 (=> res!2056774 e!3017799)))

(assert (=> d!1547881 (= res!2056774 ((_ is Nil!55049) (t!362669 (toList!7541 (tail!9422 lm!2325)))))))

(assert (=> d!1547881 (= (forall!12658 (t!362669 (toList!7541 (tail!9422 lm!2325))) lambda!237488) e!3017799)))

(declare-fun b!4829510 () Bool)

(declare-fun e!3017800 () Bool)

(assert (=> b!4829510 (= e!3017799 e!3017800)))

(declare-fun res!2056775 () Bool)

(assert (=> b!4829510 (=> (not res!2056775) (not e!3017800))))

(assert (=> b!4829510 (= res!2056775 (dynLambda!22235 lambda!237488 (h!61483 (t!362669 (toList!7541 (tail!9422 lm!2325))))))))

(declare-fun b!4829511 () Bool)

(assert (=> b!4829511 (= e!3017800 (forall!12658 (t!362669 (t!362669 (toList!7541 (tail!9422 lm!2325)))) lambda!237488))))

(assert (= (and d!1547881 (not res!2056774)) b!4829510))

(assert (= (and b!4829510 res!2056775) b!4829511))

(declare-fun b_lambda!190367 () Bool)

(assert (=> (not b_lambda!190367) (not b!4829510)))

(declare-fun m!5821824 () Bool)

(assert (=> b!4829510 m!5821824))

(declare-fun m!5821826 () Bool)

(assert (=> b!4829511 m!5821826))

(assert (=> b!4828991 d!1547881))

(assert (=> bs!1165255 d!1547663))

(declare-fun e!3017803 () Bool)

(declare-fun tp_is_empty!34547 () Bool)

(declare-fun tp!1362832 () Bool)

(declare-fun b!4829516 () Bool)

(assert (=> b!4829516 (= e!3017803 (and tp_is_empty!34543 tp_is_empty!34547 tp!1362832))))

(assert (=> b!4829097 (= tp!1362823 e!3017803)))

(assert (= (and b!4829097 ((_ is Cons!55048) (_2!32460 (h!61483 (toList!7541 lm!2325))))) b!4829516))

(declare-fun b!4829517 () Bool)

(declare-fun e!3017804 () Bool)

(declare-fun tp!1362833 () Bool)

(declare-fun tp!1362834 () Bool)

(assert (=> b!4829517 (= e!3017804 (and tp!1362833 tp!1362834))))

(assert (=> b!4829097 (= tp!1362824 e!3017804)))

(assert (= (and b!4829097 ((_ is Cons!55049) (t!362669 (toList!7541 lm!2325)))) b!4829517))

(declare-fun b_lambda!190369 () Bool)

(assert (= b_lambda!190303 (or b!4829069 b_lambda!190369)))

(declare-fun bs!1165477 () Bool)

(declare-fun d!1547883 () Bool)

(assert (= bs!1165477 (and d!1547883 b!4829069)))

(assert (=> bs!1165477 (= (dynLambda!22237 lambda!237563 (h!61482 (toList!7542 lt!1975328))) (contains!18852 lt!1975544 (_1!32459 (h!61482 (toList!7542 lt!1975328)))))))

(declare-fun m!5821828 () Bool)

(assert (=> bs!1165477 m!5821828))

(assert (=> b!4829265 d!1547883))

(declare-fun b_lambda!190371 () Bool)

(assert (= b_lambda!190317 (or b!4829069 b_lambda!190371)))

(declare-fun bs!1165478 () Bool)

(declare-fun d!1547885 () Bool)

(assert (= bs!1165478 (and d!1547885 b!4829069)))

(assert (=> bs!1165478 (= (dynLambda!22237 lambda!237563 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (contains!18852 lt!1975544 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(assert (=> bs!1165478 m!5821036))

(assert (=> b!4829334 d!1547885))

(declare-fun b_lambda!190373 () Bool)

(assert (= b_lambda!190365 (or d!1547579 b_lambda!190373)))

(declare-fun bs!1165479 () Bool)

(declare-fun d!1547887 () Bool)

(assert (= bs!1165479 (and d!1547887 d!1547579)))

(assert (=> bs!1165479 (= (dynLambda!22237 lambda!237564 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325))))) (contains!18852 lt!1975543 (_1!32459 (h!61482 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))))

(declare-fun m!5821830 () Bool)

(assert (=> bs!1165479 m!5821830))

(assert (=> b!4829497 d!1547887))

(declare-fun b_lambda!190375 () Bool)

(assert (= b_lambda!190325 (or b!4829069 b_lambda!190375)))

(assert (=> d!1547785 d!1547885))

(declare-fun b_lambda!190377 () Bool)

(assert (= b_lambda!190297 (or d!1547579 b_lambda!190377)))

(declare-fun bs!1165480 () Bool)

(declare-fun d!1547889 () Bool)

(assert (= bs!1165480 (and d!1547889 d!1547579)))

(assert (=> bs!1165480 (= (dynLambda!22237 lambda!237564 (h!61482 (toList!7542 lt!1975328))) (contains!18852 lt!1975543 (_1!32459 (h!61482 (toList!7542 lt!1975328)))))))

(declare-fun m!5821832 () Bool)

(assert (=> bs!1165480 m!5821832))

(assert (=> b!4829245 d!1547889))

(declare-fun b_lambda!190379 () Bool)

(assert (= b_lambda!190313 (or b!4829069 b_lambda!190379)))

(declare-fun bs!1165481 () Bool)

(declare-fun d!1547891 () Bool)

(assert (= bs!1165481 (and d!1547891 b!4829069)))

(assert (=> bs!1165481 (= (dynLambda!22237 lambda!237563 (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325)))))) (contains!18852 lt!1975544 (_1!32459 (h!61482 (t!362668 (_2!32460 (h!61483 (toList!7541 lm!2325))))))))))

(declare-fun m!5821834 () Bool)

(assert (=> bs!1165481 m!5821834))

(assert (=> b!4829330 d!1547891))

(declare-fun b_lambda!190381 () Bool)

(assert (= b_lambda!190363 (or d!1547609 b_lambda!190381)))

(declare-fun bs!1165482 () Bool)

(declare-fun d!1547893 () Bool)

(assert (= bs!1165482 (and d!1547893 d!1547609)))

(assert (=> bs!1165482 (= (dynLambda!22235 lambda!237567 (h!61483 (toList!7541 lm!2325))) (noDuplicateKeys!2466 (_2!32460 (h!61483 (toList!7541 lm!2325)))))))

(assert (=> bs!1165482 m!5821054))

(assert (=> b!4829495 d!1547893))

(declare-fun b_lambda!190383 () Bool)

(assert (= b_lambda!190361 (or start!501376 b_lambda!190383)))

(declare-fun bs!1165483 () Bool)

(declare-fun d!1547895 () Bool)

(assert (= bs!1165483 (and d!1547895 start!501376)))

(assert (=> bs!1165483 (= (dynLambda!22235 lambda!237488 (h!61483 (t!362669 (toList!7541 lm!2325)))) (noDuplicateKeys!2466 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325))))))))

(assert (=> bs!1165483 m!5821668))

(assert (=> b!4829493 d!1547895))

(declare-fun b_lambda!190385 () Bool)

(assert (= b_lambda!190315 (or b!4829069 b_lambda!190385)))

(declare-fun bs!1165484 () Bool)

(declare-fun d!1547897 () Bool)

(assert (= bs!1165484 (and d!1547897 b!4829069)))

(assert (=> bs!1165484 (= (dynLambda!22237 lambda!237563 (h!61482 (toList!7542 lt!1975531))) (contains!18852 lt!1975544 (_1!32459 (h!61482 (toList!7542 lt!1975531)))))))

(declare-fun m!5821836 () Bool)

(assert (=> bs!1165484 m!5821836))

(assert (=> b!4829332 d!1547897))

(declare-fun b_lambda!190387 () Bool)

(assert (= b_lambda!190367 (or start!501376 b_lambda!190387)))

(declare-fun bs!1165485 () Bool)

(declare-fun d!1547899 () Bool)

(assert (= bs!1165485 (and d!1547899 start!501376)))

(assert (=> bs!1165485 (= (dynLambda!22235 lambda!237488 (h!61483 (t!362669 (toList!7541 (tail!9422 lm!2325))))) (noDuplicateKeys!2466 (_2!32460 (h!61483 (t!362669 (toList!7541 (tail!9422 lm!2325)))))))))

(declare-fun m!5821838 () Bool)

(assert (=> bs!1165485 m!5821838))

(assert (=> b!4829510 d!1547899))

(declare-fun b_lambda!190389 () Bool)

(assert (= b_lambda!190331 (or d!1547571 b_lambda!190389)))

(declare-fun bs!1165486 () Bool)

(declare-fun d!1547901 () Bool)

(assert (= bs!1165486 (and d!1547901 d!1547571)))

(declare-fun allKeysSameHash!2014 (List!55172 (_ BitVec 64) Hashable!7300) Bool)

(assert (=> bs!1165486 (= (dynLambda!22235 lambda!237491 (h!61483 (toList!7541 lm!2325))) (allKeysSameHash!2014 (_2!32460 (h!61483 (toList!7541 lm!2325))) (_1!32460 (h!61483 (toList!7541 lm!2325))) hashF!1543))))

(declare-fun m!5821840 () Bool)

(assert (=> bs!1165486 m!5821840))

(assert (=> b!4829410 d!1547901))

(declare-fun b_lambda!190391 () Bool)

(assert (= b_lambda!190327 (or d!1547617 b_lambda!190391)))

(declare-fun bs!1165487 () Bool)

(declare-fun d!1547903 () Bool)

(assert (= bs!1165487 (and d!1547903 d!1547617)))

(assert (=> bs!1165487 (= (dynLambda!22235 lambda!237570 (h!61483 (t!362669 (toList!7541 lm!2325)))) (noDuplicateKeys!2466 (_2!32460 (h!61483 (t!362669 (toList!7541 lm!2325))))))))

(assert (=> bs!1165487 m!5821668))

(assert (=> b!4829406 d!1547903))

(check-sat (not b_lambda!190371) (not d!1547695) (not b_lambda!190329) (not b!4829213) (not d!1547859) (not b!4829501) (not b!4829336) (not b!4829331) tp_is_empty!34543 (not b!4829412) (not b!4829196) (not b!4829403) (not b!4829248) (not d!1547811) (not d!1547855) (not b!4829438) (not b!4829218) (not bs!1165478) (not d!1547713) (not b!4829481) (not b!4829471) (not b!4829338) (not b!4829401) (not b_lambda!190389) (not b!4829329) (not b!4829189) (not b!4829394) (not b!4829431) (not b_lambda!190377) (not b_lambda!190379) (not b!4829414) (not b!4829478) (not b!4829372) (not d!1547655) (not b_lambda!190369) (not d!1547849) (not d!1547755) (not b!4829407) (not b!4829413) (not b_lambda!190285) (not b!4829479) (not d!1547697) (not b!4829496) (not b!4829387) (not b!4829371) (not b!4829404) (not b!4829505) (not b!4829304) (not bs!1165485) (not b!4829491) (not b!4829507) (not d!1547839) (not b!4829391) (not b!4829219) (not d!1547823) tp_is_empty!34547 (not d!1547785) (not b!4829337) (not b!4829396) (not bm!336557) (not bs!1165486) (not b_lambda!190373) (not d!1547797) (not d!1547723) (not b_lambda!190391) (not b_lambda!190287) (not d!1547667) (not bm!336559) (not b!4829395) (not bm!336566) (not b_lambda!190383) (not b!4829466) (not bs!1165483) (not bm!336564) (not d!1547803) (not b_lambda!190385) (not b!4829339) (not d!1547791) (not b!4829234) (not bm!336568) (not b!4829487) (not d!1547699) (not bs!1165481) (not b!4829494) (not b_lambda!190387) (not d!1547877) (not b!4829172) (not d!1547787) (not b!4829409) (not b!4829246) (not b!4829411) (not b!4829405) (not b!4829400) (not b!4829517) (not b!4829333) (not d!1547875) (not b!4829474) (not b!4829492) (not bm!336565) (not d!1547865) (not d!1547775) (not bm!336567) (not bs!1165479) (not b!4829504) (not b!4829499) (not b!4829393) (not b!4829335) (not b!4829472) (not b!4829285) (not b!4829509) (not d!1547851) (not b!4829323) (not b!4829263) (not b!4829289) (not b!4829511) (not b!4829516) (not b!4829390) (not d!1547789) (not bs!1165482) (not b!4829498) (not d!1547853) (not bm!336558) (not b!4829266) (not bs!1165477) (not b!4829484) (not b!4829402) (not b!4829399) (not b!4829325) (not d!1547815) (not b!4829490) (not b_lambda!190299) (not b!4829415) (not b_lambda!190375) (not b!4829392) (not b!4829480) (not bs!1165484) (not d!1547871) (not b!4829324) (not d!1547869) (not d!1547781) (not bs!1165487) (not b_lambda!190381) (not d!1547817) (not d!1547727) (not bs!1165480) (not b!4829468))
(check-sat)
