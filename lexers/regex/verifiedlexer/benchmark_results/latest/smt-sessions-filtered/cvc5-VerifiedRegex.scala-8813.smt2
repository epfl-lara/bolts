; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471546 () Bool)

(assert start!471546)

(declare-fun b!4672914 () Bool)

(declare-fun res!1967488 () Bool)

(declare-fun e!2916054 () Bool)

(assert (=> b!4672914 (=> (not res!1967488) (not e!2916054))))

(declare-datatypes ((K!13468 0))(
  ( (K!13469 (val!19045 Int)) )
))
(declare-datatypes ((V!13714 0))(
  ( (V!13715 (val!19046 Int)) )
))
(declare-datatypes ((tuple2!53302 0))(
  ( (tuple2!53303 (_1!29945 K!13468) (_2!29945 V!13714)) )
))
(declare-datatypes ((List!52220 0))(
  ( (Nil!52096) (Cons!52096 (h!58282 tuple2!53302) (t!359358 List!52220)) )
))
(declare-datatypes ((tuple2!53304 0))(
  ( (tuple2!53305 (_1!29946 (_ BitVec 64)) (_2!29946 List!52220)) )
))
(declare-datatypes ((List!52221 0))(
  ( (Nil!52097) (Cons!52097 (h!58283 tuple2!53304) (t!359359 List!52221)) )
))
(declare-datatypes ((ListLongMap!3873 0))(
  ( (ListLongMap!3874 (toList!5343 List!52221)) )
))
(declare-fun lm!2023 () ListLongMap!3873)

(assert (=> b!4672914 (= res!1967488 (is-Cons!52097 (toList!5343 lm!2023)))))

(declare-fun tp_is_empty!30201 () Bool)

(declare-fun b!4672915 () Bool)

(declare-fun tp_is_empty!30203 () Bool)

(declare-fun tp!1344172 () Bool)

(declare-fun e!2916053 () Bool)

(assert (=> b!4672915 (= e!2916053 (and tp_is_empty!30201 tp_is_empty!30203 tp!1344172))))

(declare-fun b!4672916 () Bool)

(declare-fun noDuplicateKeys!1727 (List!52220) Bool)

(assert (=> b!4672916 (= e!2916054 (not (noDuplicateKeys!1727 (_2!29946 (h!58283 (toList!5343 lm!2023))))))))

(declare-datatypes ((ListMap!4707 0))(
  ( (ListMap!4708 (toList!5344 List!52220)) )
))
(declare-fun lt!1834172 () ListMap!4707)

(declare-fun extractMap!1753 (List!52221) ListMap!4707)

(assert (=> b!4672916 (= lt!1834172 (extractMap!1753 (t!359359 (toList!5343 lm!2023))))))

(declare-fun tail!8292 (ListLongMap!3873) ListLongMap!3873)

(assert (=> b!4672916 (= (t!359359 (toList!5343 lm!2023)) (toList!5343 (tail!8292 lm!2023)))))

(declare-fun b!4672917 () Bool)

(declare-fun res!1967482 () Bool)

(assert (=> b!4672917 (=> (not res!1967482) (not e!2916054))))

(declare-datatypes ((Hashable!6096 0))(
  ( (HashableExt!6095 (__x!31799 Int)) )
))
(declare-fun hashF!1323 () Hashable!6096)

(declare-fun allKeysSameHashInMap!1641 (ListLongMap!3873 Hashable!6096) Bool)

(assert (=> b!4672917 (= res!1967482 (allKeysSameHashInMap!1641 lm!2023 hashF!1323))))

(declare-fun res!1967492 () Bool)

(assert (=> start!471546 (=> (not res!1967492) (not e!2916054))))

(declare-fun lambda!202949 () Int)

(declare-fun forall!11136 (List!52221 Int) Bool)

(assert (=> start!471546 (= res!1967492 (forall!11136 (toList!5343 lm!2023) lambda!202949))))

(assert (=> start!471546 e!2916054))

(declare-fun e!2916055 () Bool)

(declare-fun inv!67343 (ListLongMap!3873) Bool)

(assert (=> start!471546 (and (inv!67343 lm!2023) e!2916055)))

(assert (=> start!471546 tp_is_empty!30201))

(declare-fun e!2916052 () Bool)

(assert (=> start!471546 e!2916052))

(assert (=> start!471546 true))

(assert (=> start!471546 e!2916053))

(declare-fun b!4672918 () Bool)

(declare-fun res!1967486 () Bool)

(assert (=> b!4672918 (=> (not res!1967486) (not e!2916054))))

(declare-fun key!4653 () K!13468)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!3880 (Hashable!6096 K!13468) (_ BitVec 64))

(assert (=> b!4672918 (= res!1967486 (= (hash!3880 hashF!1323 key!4653) hash!405))))

(declare-fun b!4672919 () Bool)

(declare-fun res!1967487 () Bool)

(assert (=> b!4672919 (=> (not res!1967487) (not e!2916054))))

(declare-fun newBucket!218 () List!52220)

(assert (=> b!4672919 (= res!1967487 (noDuplicateKeys!1727 newBucket!218))))

(declare-fun b!4672920 () Bool)

(declare-fun res!1967485 () Bool)

(assert (=> b!4672920 (=> (not res!1967485) (not e!2916054))))

(declare-fun contains!15274 (ListMap!4707 K!13468) Bool)

(assert (=> b!4672920 (= res!1967485 (contains!15274 (extractMap!1753 (toList!5343 lm!2023)) key!4653))))

(declare-fun b!4672921 () Bool)

(declare-fun tp!1344173 () Bool)

(assert (=> b!4672921 (= e!2916055 tp!1344173)))

(declare-fun b!4672922 () Bool)

(declare-fun res!1967490 () Bool)

(assert (=> b!4672922 (=> (not res!1967490) (not e!2916054))))

(declare-fun oldBucket!34 () List!52220)

(declare-fun removePairForKey!1322 (List!52220 K!13468) List!52220)

(assert (=> b!4672922 (= res!1967490 (= (removePairForKey!1322 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4672923 () Bool)

(declare-fun res!1967484 () Bool)

(assert (=> b!4672923 (=> (not res!1967484) (not e!2916054))))

(assert (=> b!4672923 (= res!1967484 (noDuplicateKeys!1727 oldBucket!34))))

(declare-fun b!4672924 () Bool)

(declare-fun res!1967491 () Bool)

(assert (=> b!4672924 (=> (not res!1967491) (not e!2916054))))

(declare-fun allKeysSameHash!1553 (List!52220 (_ BitVec 64) Hashable!6096) Bool)

(assert (=> b!4672924 (= res!1967491 (allKeysSameHash!1553 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4672925 () Bool)

(declare-fun res!1967483 () Bool)

(assert (=> b!4672925 (=> (not res!1967483) (not e!2916054))))

(assert (=> b!4672925 (= res!1967483 (allKeysSameHash!1553 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4672926 () Bool)

(declare-fun res!1967489 () Bool)

(assert (=> b!4672926 (=> (not res!1967489) (not e!2916054))))

(declare-fun head!9767 (List!52221) tuple2!53304)

(assert (=> b!4672926 (= res!1967489 (= (head!9767 (toList!5343 lm!2023)) (tuple2!53305 hash!405 oldBucket!34)))))

(declare-fun b!4672927 () Bool)

(declare-fun tp!1344174 () Bool)

(assert (=> b!4672927 (= e!2916052 (and tp_is_empty!30201 tp_is_empty!30203 tp!1344174))))

(assert (= (and start!471546 res!1967492) b!4672923))

(assert (= (and b!4672923 res!1967484) b!4672919))

(assert (= (and b!4672919 res!1967487) b!4672922))

(assert (= (and b!4672922 res!1967490) b!4672925))

(assert (= (and b!4672925 res!1967483) b!4672920))

(assert (= (and b!4672920 res!1967485) b!4672918))

(assert (= (and b!4672918 res!1967486) b!4672924))

(assert (= (and b!4672924 res!1967491) b!4672917))

(assert (= (and b!4672917 res!1967482) b!4672926))

(assert (= (and b!4672926 res!1967489) b!4672914))

(assert (= (and b!4672914 res!1967488) b!4672916))

(assert (= start!471546 b!4672921))

(assert (= (and start!471546 (is-Cons!52096 oldBucket!34)) b!4672927))

(assert (= (and start!471546 (is-Cons!52096 newBucket!218)) b!4672915))

(declare-fun m!5566617 () Bool)

(assert (=> b!4672919 m!5566617))

(declare-fun m!5566619 () Bool)

(assert (=> b!4672920 m!5566619))

(assert (=> b!4672920 m!5566619))

(declare-fun m!5566621 () Bool)

(assert (=> b!4672920 m!5566621))

(declare-fun m!5566623 () Bool)

(assert (=> b!4672924 m!5566623))

(declare-fun m!5566625 () Bool)

(assert (=> b!4672918 m!5566625))

(declare-fun m!5566627 () Bool)

(assert (=> b!4672922 m!5566627))

(declare-fun m!5566629 () Bool)

(assert (=> b!4672916 m!5566629))

(declare-fun m!5566631 () Bool)

(assert (=> b!4672916 m!5566631))

(declare-fun m!5566633 () Bool)

(assert (=> b!4672916 m!5566633))

(declare-fun m!5566635 () Bool)

(assert (=> b!4672917 m!5566635))

(declare-fun m!5566637 () Bool)

(assert (=> b!4672923 m!5566637))

(declare-fun m!5566639 () Bool)

(assert (=> b!4672926 m!5566639))

(declare-fun m!5566641 () Bool)

(assert (=> b!4672925 m!5566641))

(declare-fun m!5566643 () Bool)

(assert (=> start!471546 m!5566643))

(declare-fun m!5566645 () Bool)

(assert (=> start!471546 m!5566645))

(push 1)

(assert (not b!4672926))

(assert (not b!4672915))

(assert (not b!4672918))

(assert tp_is_empty!30201)

(assert (not b!4672920))

(assert (not b!4672919))

(assert (not b!4672925))

(assert (not b!4672927))

(assert tp_is_empty!30203)

(assert (not start!471546))

(assert (not b!4672924))

(assert (not b!4672923))

(assert (not b!4672922))

(assert (not b!4672921))

(assert (not b!4672916))

(assert (not b!4672917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1485932 () Bool)

(assert (=> d!1485932 (= (head!9767 (toList!5343 lm!2023)) (h!58283 (toList!5343 lm!2023)))))

(assert (=> b!4672926 d!1485932))

(declare-fun d!1485934 () Bool)

(assert (=> d!1485934 true))

(assert (=> d!1485934 true))

(declare-fun lambda!202955 () Int)

(declare-fun forall!11138 (List!52220 Int) Bool)

(assert (=> d!1485934 (= (allKeysSameHash!1553 oldBucket!34 hash!405 hashF!1323) (forall!11138 oldBucket!34 lambda!202955))))

(declare-fun bs!1079210 () Bool)

(assert (= bs!1079210 d!1485934))

(declare-fun m!5566677 () Bool)

(assert (=> bs!1079210 m!5566677))

(assert (=> b!4672925 d!1485934))

(declare-fun b!4672992 () Bool)

(declare-datatypes ((List!52224 0))(
  ( (Nil!52100) (Cons!52100 (h!58287 K!13468) (t!359362 List!52224)) )
))
(declare-fun e!2916083 () List!52224)

(declare-fun getKeysList!790 (List!52220) List!52224)

(assert (=> b!4672992 (= e!2916083 (getKeysList!790 (toList!5344 (extractMap!1753 (toList!5343 lm!2023)))))))

(declare-fun b!4672993 () Bool)

(declare-datatypes ((Unit!121354 0))(
  ( (Unit!121355) )
))
(declare-fun e!2916082 () Unit!121354)

(declare-fun Unit!121356 () Unit!121354)

(assert (=> b!4672993 (= e!2916082 Unit!121356)))

(declare-fun d!1485936 () Bool)

(declare-fun e!2916085 () Bool)

(assert (=> d!1485936 e!2916085))

(declare-fun res!1967533 () Bool)

(assert (=> d!1485936 (=> res!1967533 e!2916085)))

(declare-fun e!2916080 () Bool)

(assert (=> d!1485936 (= res!1967533 e!2916080)))

(declare-fun res!1967534 () Bool)

(assert (=> d!1485936 (=> (not res!1967534) (not e!2916080))))

(declare-fun lt!1834192 () Bool)

(assert (=> d!1485936 (= res!1967534 (not lt!1834192))))

(declare-fun lt!1834196 () Bool)

(assert (=> d!1485936 (= lt!1834192 lt!1834196)))

(declare-fun lt!1834194 () Unit!121354)

(declare-fun e!2916084 () Unit!121354)

(assert (=> d!1485936 (= lt!1834194 e!2916084)))

(declare-fun c!799853 () Bool)

(assert (=> d!1485936 (= c!799853 lt!1834196)))

(declare-fun containsKey!2871 (List!52220 K!13468) Bool)

(assert (=> d!1485936 (= lt!1834196 (containsKey!2871 (toList!5344 (extractMap!1753 (toList!5343 lm!2023))) key!4653))))

(assert (=> d!1485936 (= (contains!15274 (extractMap!1753 (toList!5343 lm!2023)) key!4653) lt!1834192)))

(declare-fun b!4672994 () Bool)

(assert (=> b!4672994 false))

(declare-fun lt!1834197 () Unit!121354)

(declare-fun lt!1834195 () Unit!121354)

(assert (=> b!4672994 (= lt!1834197 lt!1834195)))

(assert (=> b!4672994 (containsKey!2871 (toList!5344 (extractMap!1753 (toList!5343 lm!2023))) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!789 (List!52220 K!13468) Unit!121354)

(assert (=> b!4672994 (= lt!1834195 (lemmaInGetKeysListThenContainsKey!789 (toList!5344 (extractMap!1753 (toList!5343 lm!2023))) key!4653))))

(declare-fun Unit!121357 () Unit!121354)

(assert (=> b!4672994 (= e!2916082 Unit!121357)))

(declare-fun b!4672995 () Bool)

(assert (=> b!4672995 (= e!2916084 e!2916082)))

(declare-fun c!799854 () Bool)

(declare-fun call!326576 () Bool)

(assert (=> b!4672995 (= c!799854 call!326576)))

(declare-fun b!4672996 () Bool)

(declare-fun lt!1834193 () Unit!121354)

(assert (=> b!4672996 (= e!2916084 lt!1834193)))

(declare-fun lt!1834198 () Unit!121354)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1585 (List!52220 K!13468) Unit!121354)

(assert (=> b!4672996 (= lt!1834198 (lemmaContainsKeyImpliesGetValueByKeyDefined!1585 (toList!5344 (extractMap!1753 (toList!5343 lm!2023))) key!4653))))

(declare-datatypes ((Option!11945 0))(
  ( (None!11944) (Some!11944 (v!46307 V!13714)) )
))
(declare-fun isDefined!9200 (Option!11945) Bool)

(declare-fun getValueByKey!1693 (List!52220 K!13468) Option!11945)

(assert (=> b!4672996 (isDefined!9200 (getValueByKey!1693 (toList!5344 (extractMap!1753 (toList!5343 lm!2023))) key!4653))))

(declare-fun lt!1834199 () Unit!121354)

(assert (=> b!4672996 (= lt!1834199 lt!1834198)))

(declare-fun lemmaInListThenGetKeysListContains!785 (List!52220 K!13468) Unit!121354)

(assert (=> b!4672996 (= lt!1834193 (lemmaInListThenGetKeysListContains!785 (toList!5344 (extractMap!1753 (toList!5343 lm!2023))) key!4653))))

(assert (=> b!4672996 call!326576))

(declare-fun b!4672997 () Bool)

(declare-fun e!2916081 () Bool)

(assert (=> b!4672997 (= e!2916085 e!2916081)))

(declare-fun res!1967532 () Bool)

(assert (=> b!4672997 (=> (not res!1967532) (not e!2916081))))

(assert (=> b!4672997 (= res!1967532 (isDefined!9200 (getValueByKey!1693 (toList!5344 (extractMap!1753 (toList!5343 lm!2023))) key!4653)))))

(declare-fun b!4672998 () Bool)

(declare-fun contains!15276 (List!52224 K!13468) Bool)

(declare-fun keys!18527 (ListMap!4707) List!52224)

(assert (=> b!4672998 (= e!2916081 (contains!15276 (keys!18527 (extractMap!1753 (toList!5343 lm!2023))) key!4653))))

(declare-fun bm!326571 () Bool)

(assert (=> bm!326571 (= call!326576 (contains!15276 e!2916083 key!4653))))

(declare-fun c!799855 () Bool)

(assert (=> bm!326571 (= c!799855 c!799853)))

(declare-fun b!4672999 () Bool)

(assert (=> b!4672999 (= e!2916083 (keys!18527 (extractMap!1753 (toList!5343 lm!2023))))))

(declare-fun b!4673000 () Bool)

(assert (=> b!4673000 (= e!2916080 (not (contains!15276 (keys!18527 (extractMap!1753 (toList!5343 lm!2023))) key!4653)))))

(assert (= (and d!1485936 c!799853) b!4672996))

(assert (= (and d!1485936 (not c!799853)) b!4672995))

(assert (= (and b!4672995 c!799854) b!4672994))

(assert (= (and b!4672995 (not c!799854)) b!4672993))

(assert (= (or b!4672996 b!4672995) bm!326571))

(assert (= (and bm!326571 c!799855) b!4672992))

(assert (= (and bm!326571 (not c!799855)) b!4672999))

(assert (= (and d!1485936 res!1967534) b!4673000))

(assert (= (and d!1485936 (not res!1967533)) b!4672997))

(assert (= (and b!4672997 res!1967532) b!4672998))

(declare-fun m!5566681 () Bool)

(assert (=> b!4672997 m!5566681))

(assert (=> b!4672997 m!5566681))

(declare-fun m!5566683 () Bool)

(assert (=> b!4672997 m!5566683))

(declare-fun m!5566685 () Bool)

(assert (=> d!1485936 m!5566685))

(declare-fun m!5566687 () Bool)

(assert (=> b!4672996 m!5566687))

(assert (=> b!4672996 m!5566681))

(assert (=> b!4672996 m!5566681))

(assert (=> b!4672996 m!5566683))

(declare-fun m!5566689 () Bool)

(assert (=> b!4672996 m!5566689))

(declare-fun m!5566691 () Bool)

(assert (=> bm!326571 m!5566691))

(assert (=> b!4672998 m!5566619))

(declare-fun m!5566693 () Bool)

(assert (=> b!4672998 m!5566693))

(assert (=> b!4672998 m!5566693))

(declare-fun m!5566695 () Bool)

(assert (=> b!4672998 m!5566695))

(assert (=> b!4673000 m!5566619))

(assert (=> b!4673000 m!5566693))

(assert (=> b!4673000 m!5566693))

(assert (=> b!4673000 m!5566695))

(assert (=> b!4672999 m!5566619))

(assert (=> b!4672999 m!5566693))

(declare-fun m!5566697 () Bool)

(assert (=> b!4672992 m!5566697))

(assert (=> b!4672994 m!5566685))

(declare-fun m!5566699 () Bool)

(assert (=> b!4672994 m!5566699))

(assert (=> b!4672920 d!1485936))

(declare-fun bs!1079212 () Bool)

(declare-fun d!1485942 () Bool)

(assert (= bs!1079212 (and d!1485942 start!471546)))

(declare-fun lambda!202958 () Int)

(assert (=> bs!1079212 (= lambda!202958 lambda!202949)))

(declare-fun lt!1834202 () ListMap!4707)

(declare-fun invariantList!1351 (List!52220) Bool)

(assert (=> d!1485942 (invariantList!1351 (toList!5344 lt!1834202))))

(declare-fun e!2916088 () ListMap!4707)

(assert (=> d!1485942 (= lt!1834202 e!2916088)))

(declare-fun c!799858 () Bool)

(assert (=> d!1485942 (= c!799858 (is-Cons!52097 (toList!5343 lm!2023)))))

(assert (=> d!1485942 (forall!11136 (toList!5343 lm!2023) lambda!202958)))

(assert (=> d!1485942 (= (extractMap!1753 (toList!5343 lm!2023)) lt!1834202)))

(declare-fun b!4673005 () Bool)

(declare-fun addToMapMapFromBucket!1160 (List!52220 ListMap!4707) ListMap!4707)

(assert (=> b!4673005 (= e!2916088 (addToMapMapFromBucket!1160 (_2!29946 (h!58283 (toList!5343 lm!2023))) (extractMap!1753 (t!359359 (toList!5343 lm!2023)))))))

(declare-fun b!4673006 () Bool)

(assert (=> b!4673006 (= e!2916088 (ListMap!4708 Nil!52096))))

(assert (= (and d!1485942 c!799858) b!4673005))

(assert (= (and d!1485942 (not c!799858)) b!4673006))

(declare-fun m!5566701 () Bool)

(assert (=> d!1485942 m!5566701))

(declare-fun m!5566703 () Bool)

(assert (=> d!1485942 m!5566703))

(assert (=> b!4673005 m!5566631))

(assert (=> b!4673005 m!5566631))

(declare-fun m!5566705 () Bool)

(assert (=> b!4673005 m!5566705))

(assert (=> b!4672920 d!1485942))

(declare-fun d!1485944 () Bool)

(declare-fun lt!1834221 () List!52220)

(declare-fun containsKey!2872 (List!52220 K!13468) Bool)

(assert (=> d!1485944 (not (containsKey!2872 lt!1834221 key!4653))))

(declare-fun e!2916098 () List!52220)

(assert (=> d!1485944 (= lt!1834221 e!2916098)))

(declare-fun c!799868 () Bool)

(assert (=> d!1485944 (= c!799868 (and (is-Cons!52096 oldBucket!34) (= (_1!29945 (h!58282 oldBucket!34)) key!4653)))))

(assert (=> d!1485944 (noDuplicateKeys!1727 oldBucket!34)))

(assert (=> d!1485944 (= (removePairForKey!1322 oldBucket!34 key!4653) lt!1834221)))

(declare-fun b!4673023 () Bool)

(assert (=> b!4673023 (= e!2916098 (t!359358 oldBucket!34))))

(declare-fun b!4673025 () Bool)

(declare-fun e!2916097 () List!52220)

(assert (=> b!4673025 (= e!2916097 (Cons!52096 (h!58282 oldBucket!34) (removePairForKey!1322 (t!359358 oldBucket!34) key!4653)))))

(declare-fun b!4673026 () Bool)

(assert (=> b!4673026 (= e!2916097 Nil!52096)))

(declare-fun b!4673024 () Bool)

(assert (=> b!4673024 (= e!2916098 e!2916097)))

(declare-fun c!799867 () Bool)

(assert (=> b!4673024 (= c!799867 (is-Cons!52096 oldBucket!34))))

(assert (= (and d!1485944 c!799868) b!4673023))

(assert (= (and d!1485944 (not c!799868)) b!4673024))

(assert (= (and b!4673024 c!799867) b!4673025))

(assert (= (and b!4673024 (not c!799867)) b!4673026))

(declare-fun m!5566707 () Bool)

(assert (=> d!1485944 m!5566707))

(assert (=> d!1485944 m!5566637))

(declare-fun m!5566709 () Bool)

(assert (=> b!4673025 m!5566709))

(assert (=> b!4672922 d!1485944))

(declare-fun d!1485946 () Bool)

(declare-fun res!1967545 () Bool)

(declare-fun e!2916111 () Bool)

(assert (=> d!1485946 (=> res!1967545 e!2916111)))

(assert (=> d!1485946 (= res!1967545 (not (is-Cons!52096 (_2!29946 (h!58283 (toList!5343 lm!2023))))))))

(assert (=> d!1485946 (= (noDuplicateKeys!1727 (_2!29946 (h!58283 (toList!5343 lm!2023)))) e!2916111)))

(declare-fun b!4673041 () Bool)

(declare-fun e!2916112 () Bool)

(assert (=> b!4673041 (= e!2916111 e!2916112)))

(declare-fun res!1967546 () Bool)

(assert (=> b!4673041 (=> (not res!1967546) (not e!2916112))))

(assert (=> b!4673041 (= res!1967546 (not (containsKey!2872 (t!359358 (_2!29946 (h!58283 (toList!5343 lm!2023)))) (_1!29945 (h!58282 (_2!29946 (h!58283 (toList!5343 lm!2023))))))))))

(declare-fun b!4673042 () Bool)

(assert (=> b!4673042 (= e!2916112 (noDuplicateKeys!1727 (t!359358 (_2!29946 (h!58283 (toList!5343 lm!2023))))))))

(assert (= (and d!1485946 (not res!1967545)) b!4673041))

(assert (= (and b!4673041 res!1967546) b!4673042))

(declare-fun m!5566711 () Bool)

(assert (=> b!4673041 m!5566711))

(declare-fun m!5566713 () Bool)

(assert (=> b!4673042 m!5566713))

(assert (=> b!4672916 d!1485946))

(declare-fun bs!1079213 () Bool)

(declare-fun d!1485948 () Bool)

(assert (= bs!1079213 (and d!1485948 start!471546)))

(declare-fun lambda!202959 () Int)

(assert (=> bs!1079213 (= lambda!202959 lambda!202949)))

(declare-fun bs!1079214 () Bool)

(assert (= bs!1079214 (and d!1485948 d!1485942)))

(assert (=> bs!1079214 (= lambda!202959 lambda!202958)))

(declare-fun lt!1834222 () ListMap!4707)

(assert (=> d!1485948 (invariantList!1351 (toList!5344 lt!1834222))))

(declare-fun e!2916113 () ListMap!4707)

(assert (=> d!1485948 (= lt!1834222 e!2916113)))

(declare-fun c!799871 () Bool)

(assert (=> d!1485948 (= c!799871 (is-Cons!52097 (t!359359 (toList!5343 lm!2023))))))

(assert (=> d!1485948 (forall!11136 (t!359359 (toList!5343 lm!2023)) lambda!202959)))

(assert (=> d!1485948 (= (extractMap!1753 (t!359359 (toList!5343 lm!2023))) lt!1834222)))

(declare-fun b!4673043 () Bool)

(assert (=> b!4673043 (= e!2916113 (addToMapMapFromBucket!1160 (_2!29946 (h!58283 (t!359359 (toList!5343 lm!2023)))) (extractMap!1753 (t!359359 (t!359359 (toList!5343 lm!2023))))))))

(declare-fun b!4673044 () Bool)

(assert (=> b!4673044 (= e!2916113 (ListMap!4708 Nil!52096))))

(assert (= (and d!1485948 c!799871) b!4673043))

(assert (= (and d!1485948 (not c!799871)) b!4673044))

(declare-fun m!5566715 () Bool)

(assert (=> d!1485948 m!5566715))

(declare-fun m!5566717 () Bool)

(assert (=> d!1485948 m!5566717))

(declare-fun m!5566719 () Bool)

(assert (=> b!4673043 m!5566719))

(assert (=> b!4673043 m!5566719))

(declare-fun m!5566721 () Bool)

(assert (=> b!4673043 m!5566721))

(assert (=> b!4672916 d!1485948))

(declare-fun d!1485950 () Bool)

(declare-fun tail!8294 (List!52221) List!52221)

(assert (=> d!1485950 (= (tail!8292 lm!2023) (ListLongMap!3874 (tail!8294 (toList!5343 lm!2023))))))

(declare-fun bs!1079215 () Bool)

(assert (= bs!1079215 d!1485950))

(declare-fun m!5566723 () Bool)

(assert (=> bs!1079215 m!5566723))

(assert (=> b!4672916 d!1485950))

(declare-fun d!1485952 () Bool)

(declare-fun res!1967547 () Bool)

(declare-fun e!2916114 () Bool)

(assert (=> d!1485952 (=> res!1967547 e!2916114)))

(assert (=> d!1485952 (= res!1967547 (not (is-Cons!52096 oldBucket!34)))))

(assert (=> d!1485952 (= (noDuplicateKeys!1727 oldBucket!34) e!2916114)))

(declare-fun b!4673045 () Bool)

(declare-fun e!2916115 () Bool)

(assert (=> b!4673045 (= e!2916114 e!2916115)))

(declare-fun res!1967548 () Bool)

(assert (=> b!4673045 (=> (not res!1967548) (not e!2916115))))

(assert (=> b!4673045 (= res!1967548 (not (containsKey!2872 (t!359358 oldBucket!34) (_1!29945 (h!58282 oldBucket!34)))))))

(declare-fun b!4673046 () Bool)

(assert (=> b!4673046 (= e!2916115 (noDuplicateKeys!1727 (t!359358 oldBucket!34)))))

(assert (= (and d!1485952 (not res!1967547)) b!4673045))

(assert (= (and b!4673045 res!1967548) b!4673046))

(declare-fun m!5566725 () Bool)

(assert (=> b!4673045 m!5566725))

(declare-fun m!5566727 () Bool)

(assert (=> b!4673046 m!5566727))

(assert (=> b!4672923 d!1485952))

(declare-fun d!1485954 () Bool)

(declare-fun hash!3882 (Hashable!6096 K!13468) (_ BitVec 64))

(assert (=> d!1485954 (= (hash!3880 hashF!1323 key!4653) (hash!3882 hashF!1323 key!4653))))

(declare-fun bs!1079216 () Bool)

(assert (= bs!1079216 d!1485954))

(declare-fun m!5566729 () Bool)

(assert (=> bs!1079216 m!5566729))

(assert (=> b!4672918 d!1485954))

(declare-fun bs!1079217 () Bool)

(declare-fun d!1485956 () Bool)

(assert (= bs!1079217 (and d!1485956 start!471546)))

(declare-fun lambda!202962 () Int)

(assert (=> bs!1079217 (not (= lambda!202962 lambda!202949))))

(declare-fun bs!1079218 () Bool)

(assert (= bs!1079218 (and d!1485956 d!1485942)))

(assert (=> bs!1079218 (not (= lambda!202962 lambda!202958))))

(declare-fun bs!1079219 () Bool)

(assert (= bs!1079219 (and d!1485956 d!1485948)))

(assert (=> bs!1079219 (not (= lambda!202962 lambda!202959))))

(assert (=> d!1485956 true))

(assert (=> d!1485956 (= (allKeysSameHashInMap!1641 lm!2023 hashF!1323) (forall!11136 (toList!5343 lm!2023) lambda!202962))))

(declare-fun bs!1079220 () Bool)

(assert (= bs!1079220 d!1485956))

(declare-fun m!5566731 () Bool)

(assert (=> bs!1079220 m!5566731))

(assert (=> b!4672917 d!1485956))

(declare-fun d!1485958 () Bool)

(declare-fun res!1967553 () Bool)

(declare-fun e!2916120 () Bool)

(assert (=> d!1485958 (=> res!1967553 e!2916120)))

(assert (=> d!1485958 (= res!1967553 (is-Nil!52097 (toList!5343 lm!2023)))))

(assert (=> d!1485958 (= (forall!11136 (toList!5343 lm!2023) lambda!202949) e!2916120)))

(declare-fun b!4673053 () Bool)

(declare-fun e!2916121 () Bool)

(assert (=> b!4673053 (= e!2916120 e!2916121)))

(declare-fun res!1967554 () Bool)

(assert (=> b!4673053 (=> (not res!1967554) (not e!2916121))))

(declare-fun dynLambda!21654 (Int tuple2!53304) Bool)

(assert (=> b!4673053 (= res!1967554 (dynLambda!21654 lambda!202949 (h!58283 (toList!5343 lm!2023))))))

(declare-fun b!4673054 () Bool)

(assert (=> b!4673054 (= e!2916121 (forall!11136 (t!359359 (toList!5343 lm!2023)) lambda!202949))))

(assert (= (and d!1485958 (not res!1967553)) b!4673053))

(assert (= (and b!4673053 res!1967554) b!4673054))

(declare-fun b_lambda!176461 () Bool)

(assert (=> (not b_lambda!176461) (not b!4673053)))

(declare-fun m!5566733 () Bool)

(assert (=> b!4673053 m!5566733))

(declare-fun m!5566735 () Bool)

(assert (=> b!4673054 m!5566735))

(assert (=> start!471546 d!1485958))

(declare-fun d!1485960 () Bool)

(declare-fun isStrictlySorted!591 (List!52221) Bool)

(assert (=> d!1485960 (= (inv!67343 lm!2023) (isStrictlySorted!591 (toList!5343 lm!2023)))))

(declare-fun bs!1079221 () Bool)

(assert (= bs!1079221 d!1485960))

(declare-fun m!5566737 () Bool)

(assert (=> bs!1079221 m!5566737))

(assert (=> start!471546 d!1485960))

(declare-fun d!1485962 () Bool)

(declare-fun res!1967558 () Bool)

(declare-fun e!2916128 () Bool)

(assert (=> d!1485962 (=> res!1967558 e!2916128)))

(assert (=> d!1485962 (= res!1967558 (not (is-Cons!52096 newBucket!218)))))

(assert (=> d!1485962 (= (noDuplicateKeys!1727 newBucket!218) e!2916128)))

(declare-fun b!4673064 () Bool)

(declare-fun e!2916129 () Bool)

(assert (=> b!4673064 (= e!2916128 e!2916129)))

(declare-fun res!1967559 () Bool)

(assert (=> b!4673064 (=> (not res!1967559) (not e!2916129))))

(assert (=> b!4673064 (= res!1967559 (not (containsKey!2872 (t!359358 newBucket!218) (_1!29945 (h!58282 newBucket!218)))))))

(declare-fun b!4673065 () Bool)

(assert (=> b!4673065 (= e!2916129 (noDuplicateKeys!1727 (t!359358 newBucket!218)))))

(assert (= (and d!1485962 (not res!1967558)) b!4673064))

(assert (= (and b!4673064 res!1967559) b!4673065))

(declare-fun m!5566739 () Bool)

(assert (=> b!4673064 m!5566739))

(declare-fun m!5566741 () Bool)

(assert (=> b!4673065 m!5566741))

(assert (=> b!4672919 d!1485962))

(declare-fun bs!1079222 () Bool)

(declare-fun d!1485964 () Bool)

(assert (= bs!1079222 (and d!1485964 d!1485934)))

(declare-fun lambda!202963 () Int)

(assert (=> bs!1079222 (= lambda!202963 lambda!202955)))

(assert (=> d!1485964 true))

(assert (=> d!1485964 true))

(assert (=> d!1485964 (= (allKeysSameHash!1553 newBucket!218 hash!405 hashF!1323) (forall!11138 newBucket!218 lambda!202963))))

(declare-fun bs!1079223 () Bool)

(assert (= bs!1079223 d!1485964))

(declare-fun m!5566749 () Bool)

(assert (=> bs!1079223 m!5566749))

(assert (=> b!4672924 d!1485964))

(declare-fun tp!1344186 () Bool)

(declare-fun e!2916132 () Bool)

(declare-fun b!4673070 () Bool)

(assert (=> b!4673070 (= e!2916132 (and tp_is_empty!30201 tp_is_empty!30203 tp!1344186))))

(assert (=> b!4672915 (= tp!1344172 e!2916132)))

(assert (= (and b!4672915 (is-Cons!52096 (t!359358 newBucket!218))) b!4673070))

(declare-fun tp!1344187 () Bool)

(declare-fun e!2916133 () Bool)

(declare-fun b!4673071 () Bool)

(assert (=> b!4673071 (= e!2916133 (and tp_is_empty!30201 tp_is_empty!30203 tp!1344187))))

(assert (=> b!4672927 (= tp!1344174 e!2916133)))

(assert (= (and b!4672927 (is-Cons!52096 (t!359358 oldBucket!34))) b!4673071))

(declare-fun b!4673076 () Bool)

(declare-fun e!2916136 () Bool)

(declare-fun tp!1344192 () Bool)

(declare-fun tp!1344193 () Bool)

(assert (=> b!4673076 (= e!2916136 (and tp!1344192 tp!1344193))))

(assert (=> b!4672921 (= tp!1344173 e!2916136)))

(assert (= (and b!4672921 (is-Cons!52097 (toList!5343 lm!2023))) b!4673076))

(declare-fun b_lambda!176463 () Bool)

(assert (= b_lambda!176461 (or start!471546 b_lambda!176463)))

(declare-fun bs!1079224 () Bool)

(declare-fun d!1485968 () Bool)

(assert (= bs!1079224 (and d!1485968 start!471546)))

(assert (=> bs!1079224 (= (dynLambda!21654 lambda!202949 (h!58283 (toList!5343 lm!2023))) (noDuplicateKeys!1727 (_2!29946 (h!58283 (toList!5343 lm!2023)))))))

(assert (=> bs!1079224 m!5566629))

(assert (=> b!4673053 d!1485968))

(push 1)

(assert (not b!4673076))

(assert (not d!1485964))

(assert (not b!4672997))

(assert (not d!1485942))

(assert (not b!4673065))

(assert (not d!1485944))

(assert (not d!1485934))

(assert (not b!4672994))

(assert (not b!4672998))

(assert (not b!4673025))

(assert tp_is_empty!30203)

(assert (not b!4672996))

(assert (not b!4673054))

(assert (not bs!1079224))

(assert (not b!4672999))

(assert (not d!1485954))

(assert (not bm!326571))

(assert tp_is_empty!30201)

(assert (not d!1485950))

(assert (not d!1485956))

(assert (not b!4673045))

(assert (not b!4673071))

(assert (not b_lambda!176463))

(assert (not b!4673070))

(assert (not d!1485960))

(assert (not b!4673041))

(assert (not d!1485936))

(assert (not b!4673064))

(assert (not b!4673046))

(assert (not b!4673042))

(assert (not b!4673043))

(assert (not d!1485948))

(assert (not b!4673000))

(assert (not b!4673005))

(assert (not b!4672992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

