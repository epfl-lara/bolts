; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478528 () Bool)

(assert start!478528)

(declare-fun res!1990426 () Bool)

(declare-fun e!2937696 () Bool)

(assert (=> start!478528 (=> (not res!1990426) (not e!2937696))))

(declare-datatypes ((K!14025 0))(
  ( (K!14026 (val!19491 Int)) )
))
(declare-datatypes ((V!14271 0))(
  ( (V!14272 (val!19492 Int)) )
))
(declare-datatypes ((tuple2!54194 0))(
  ( (tuple2!54195 (_1!30391 K!14025) (_2!30391 V!14271)) )
))
(declare-datatypes ((List!52787 0))(
  ( (Nil!52663) (Cons!52663 (h!58970 tuple2!54194) (t!360023 List!52787)) )
))
(declare-datatypes ((tuple2!54196 0))(
  ( (tuple2!54197 (_1!30392 (_ BitVec 64)) (_2!30392 List!52787)) )
))
(declare-datatypes ((List!52788 0))(
  ( (Nil!52664) (Cons!52664 (h!58971 tuple2!54196) (t!360024 List!52788)) )
))
(declare-datatypes ((ListLongMap!4319 0))(
  ( (ListLongMap!4320 (toList!5789 List!52788)) )
))
(declare-fun lm!2023 () ListLongMap!4319)

(declare-fun lambda!212483 () Int)

(declare-fun forall!11479 (List!52788 Int) Bool)

(assert (=> start!478528 (= res!1990426 (forall!11479 (toList!5789 lm!2023) lambda!212483))))

(assert (=> start!478528 e!2937696))

(declare-fun e!2937699 () Bool)

(declare-fun inv!67899 (ListLongMap!4319) Bool)

(assert (=> start!478528 (and (inv!67899 lm!2023) e!2937699)))

(declare-fun tp_is_empty!31093 () Bool)

(assert (=> start!478528 tp_is_empty!31093))

(declare-fun e!2937704 () Bool)

(assert (=> start!478528 e!2937704))

(assert (=> start!478528 true))

(declare-fun e!2937695 () Bool)

(assert (=> start!478528 e!2937695))

(declare-fun b!4709970 () Bool)

(declare-fun e!2937701 () Bool)

(declare-fun e!2937700 () Bool)

(assert (=> b!4709970 (= e!2937701 e!2937700)))

(declare-fun res!1990431 () Bool)

(assert (=> b!4709970 (=> res!1990431 e!2937700)))

(declare-fun lt!1874458 () List!52787)

(declare-fun newBucket!218 () List!52787)

(assert (=> b!4709970 (= res!1990431 (not (= lt!1874458 newBucket!218)))))

(declare-fun oldBucket!34 () List!52787)

(declare-fun tail!8841 (List!52787) List!52787)

(assert (=> b!4709970 (= lt!1874458 (tail!8841 oldBucket!34))))

(declare-fun b!4709971 () Bool)

(declare-fun e!2937702 () Bool)

(declare-datatypes ((ListMap!5153 0))(
  ( (ListMap!5154 (toList!5790 List!52787)) )
))
(declare-fun lt!1874460 () ListMap!5153)

(declare-fun lt!1874456 () ListMap!5153)

(assert (=> b!4709971 (= e!2937702 (= lt!1874460 lt!1874456))))

(declare-fun b!4709972 () Bool)

(declare-fun res!1990438 () Bool)

(assert (=> b!4709972 (=> res!1990438 e!2937702)))

(declare-fun key!4653 () K!14025)

(declare-fun containsKey!3251 (List!52787 K!14025) Bool)

(assert (=> b!4709972 (= res!1990438 (containsKey!3251 lt!1874458 key!4653))))

(declare-fun b!4709973 () Bool)

(declare-fun res!1990427 () Bool)

(declare-fun e!2937703 () Bool)

(assert (=> b!4709973 (=> (not res!1990427) (not e!2937703))))

(get-info :version)

(assert (=> b!4709973 (= res!1990427 ((_ is Cons!52664) (toList!5789 lm!2023)))))

(declare-fun b!4709974 () Bool)

(assert (=> b!4709974 (= e!2937696 e!2937703)))

(declare-fun res!1990434 () Bool)

(assert (=> b!4709974 (=> (not res!1990434) (not e!2937703))))

(declare-fun lt!1874457 () ListMap!5153)

(declare-fun contains!15968 (ListMap!5153 K!14025) Bool)

(assert (=> b!4709974 (= res!1990434 (contains!15968 lt!1874457 key!4653))))

(declare-fun extractMap!1976 (List!52788) ListMap!5153)

(assert (=> b!4709974 (= lt!1874457 (extractMap!1976 (toList!5789 lm!2023)))))

(declare-fun b!4709975 () Bool)

(declare-fun tp!1347401 () Bool)

(declare-fun tp_is_empty!31095 () Bool)

(assert (=> b!4709975 (= e!2937695 (and tp_is_empty!31093 tp_is_empty!31095 tp!1347401))))

(declare-fun b!4709976 () Bool)

(declare-fun res!1990441 () Bool)

(assert (=> b!4709976 (=> (not res!1990441) (not e!2937703))))

(declare-datatypes ((Hashable!6319 0))(
  ( (HashableExt!6318 (__x!32022 Int)) )
))
(declare-fun hashF!1323 () Hashable!6319)

(declare-fun allKeysSameHashInMap!1864 (ListLongMap!4319 Hashable!6319) Bool)

(assert (=> b!4709976 (= res!1990441 (allKeysSameHashInMap!1864 lm!2023 hashF!1323))))

(declare-fun tp!1347400 () Bool)

(declare-fun b!4709977 () Bool)

(assert (=> b!4709977 (= e!2937704 (and tp_is_empty!31093 tp_is_empty!31095 tp!1347400))))

(declare-fun b!4709978 () Bool)

(declare-fun tp!1347399 () Bool)

(assert (=> b!4709978 (= e!2937699 tp!1347399)))

(declare-fun b!4709979 () Bool)

(declare-fun e!2937698 () Bool)

(declare-fun e!2937697 () Bool)

(assert (=> b!4709979 (= e!2937698 e!2937697)))

(declare-fun res!1990429 () Bool)

(assert (=> b!4709979 (=> res!1990429 e!2937697)))

(declare-fun lt!1874455 () ListMap!5153)

(declare-fun addToMapMapFromBucket!1380 (List!52787 ListMap!5153) ListMap!5153)

(assert (=> b!4709979 (= res!1990429 (not (= lt!1874460 (addToMapMapFromBucket!1380 newBucket!218 lt!1874455))))))

(assert (=> b!4709979 (= lt!1874460 (addToMapMapFromBucket!1380 lt!1874458 lt!1874455))))

(declare-fun b!4709980 () Bool)

(declare-fun res!1990428 () Bool)

(assert (=> b!4709980 (=> (not res!1990428) (not e!2937696))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1776 (List!52787 (_ BitVec 64) Hashable!6319) Bool)

(assert (=> b!4709980 (= res!1990428 (allKeysSameHash!1776 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4709981 () Bool)

(declare-fun res!1990435 () Bool)

(assert (=> b!4709981 (=> (not res!1990435) (not e!2937703))))

(declare-fun hash!4272 (Hashable!6319 K!14025) (_ BitVec 64))

(assert (=> b!4709981 (= res!1990435 (= (hash!4272 hashF!1323 key!4653) hash!405))))

(declare-fun b!4709982 () Bool)

(assert (=> b!4709982 (= e!2937697 e!2937702)))

(declare-fun res!1990439 () Bool)

(assert (=> b!4709982 (=> res!1990439 e!2937702)))

(declare-fun eq!1087 (ListMap!5153 ListMap!5153) Bool)

(declare-fun +!2214 (ListMap!5153 tuple2!54194) ListMap!5153)

(assert (=> b!4709982 (= res!1990439 (not (eq!1087 (+!2214 lt!1874460 (h!58970 oldBucket!34)) (addToMapMapFromBucket!1380 oldBucket!34 lt!1874455))))))

(declare-fun lt!1874459 () tuple2!54194)

(assert (=> b!4709982 (eq!1087 (addToMapMapFromBucket!1380 (Cons!52663 lt!1874459 lt!1874458) lt!1874455) (+!2214 lt!1874460 lt!1874459))))

(declare-datatypes ((Unit!127752 0))(
  ( (Unit!127753) )
))
(declare-fun lt!1874454 () Unit!127752)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!336 (tuple2!54194 List!52787 ListMap!5153) Unit!127752)

(assert (=> b!4709982 (= lt!1874454 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!336 lt!1874459 lt!1874458 lt!1874455))))

(declare-fun head!10139 (List!52787) tuple2!54194)

(assert (=> b!4709982 (= lt!1874459 (head!10139 oldBucket!34))))

(declare-fun b!4709983 () Bool)

(declare-fun res!1990436 () Bool)

(assert (=> b!4709983 (=> (not res!1990436) (not e!2937703))))

(declare-fun head!10140 (List!52788) tuple2!54196)

(assert (=> b!4709983 (= res!1990436 (= (head!10140 (toList!5789 lm!2023)) (tuple2!54197 hash!405 oldBucket!34)))))

(declare-fun b!4709984 () Bool)

(assert (=> b!4709984 (= e!2937703 (not e!2937701))))

(declare-fun res!1990440 () Bool)

(assert (=> b!4709984 (=> res!1990440 e!2937701)))

(assert (=> b!4709984 (= res!1990440 (or (not ((_ is Cons!52663) oldBucket!34)) (not (= (_1!30391 (h!58970 oldBucket!34)) key!4653))))))

(assert (=> b!4709984 (= lt!1874457 (addToMapMapFromBucket!1380 (_2!30392 (h!58971 (toList!5789 lm!2023))) lt!1874455))))

(assert (=> b!4709984 (= lt!1874455 (extractMap!1976 (t!360024 (toList!5789 lm!2023))))))

(declare-fun tail!8842 (ListLongMap!4319) ListLongMap!4319)

(assert (=> b!4709984 (= (t!360024 (toList!5789 lm!2023)) (toList!5789 (tail!8842 lm!2023)))))

(declare-fun b!4709985 () Bool)

(declare-fun res!1990430 () Bool)

(assert (=> b!4709985 (=> (not res!1990430) (not e!2937696))))

(declare-fun noDuplicateKeys!1950 (List!52787) Bool)

(assert (=> b!4709985 (= res!1990430 (noDuplicateKeys!1950 oldBucket!34))))

(declare-fun b!4709986 () Bool)

(declare-fun res!1990437 () Bool)

(assert (=> b!4709986 (=> (not res!1990437) (not e!2937703))))

(assert (=> b!4709986 (= res!1990437 (allKeysSameHash!1776 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4709987 () Bool)

(declare-fun res!1990425 () Bool)

(assert (=> b!4709987 (=> (not res!1990425) (not e!2937696))))

(assert (=> b!4709987 (= res!1990425 (noDuplicateKeys!1950 newBucket!218))))

(declare-fun b!4709988 () Bool)

(declare-fun res!1990433 () Bool)

(assert (=> b!4709988 (=> (not res!1990433) (not e!2937696))))

(declare-fun removePairForKey!1545 (List!52787 K!14025) List!52787)

(assert (=> b!4709988 (= res!1990433 (= (removePairForKey!1545 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4709989 () Bool)

(assert (=> b!4709989 (= e!2937700 e!2937698)))

(declare-fun res!1990432 () Bool)

(assert (=> b!4709989 (=> res!1990432 e!2937698)))

(assert (=> b!4709989 (= res!1990432 (not (= lt!1874456 (extractMap!1976 (Cons!52664 (tuple2!54197 hash!405 newBucket!218) (t!360024 (toList!5789 lm!2023)))))))))

(assert (=> b!4709989 (= lt!1874456 (extractMap!1976 (Cons!52664 (tuple2!54197 hash!405 lt!1874458) (t!360024 (toList!5789 lm!2023)))))))

(assert (= (and start!478528 res!1990426) b!4709985))

(assert (= (and b!4709985 res!1990430) b!4709987))

(assert (= (and b!4709987 res!1990425) b!4709988))

(assert (= (and b!4709988 res!1990433) b!4709980))

(assert (= (and b!4709980 res!1990428) b!4709974))

(assert (= (and b!4709974 res!1990434) b!4709981))

(assert (= (and b!4709981 res!1990435) b!4709986))

(assert (= (and b!4709986 res!1990437) b!4709976))

(assert (= (and b!4709976 res!1990441) b!4709983))

(assert (= (and b!4709983 res!1990436) b!4709973))

(assert (= (and b!4709973 res!1990427) b!4709984))

(assert (= (and b!4709984 (not res!1990440)) b!4709970))

(assert (= (and b!4709970 (not res!1990431)) b!4709989))

(assert (= (and b!4709989 (not res!1990432)) b!4709979))

(assert (= (and b!4709979 (not res!1990429)) b!4709982))

(assert (= (and b!4709982 (not res!1990439)) b!4709972))

(assert (= (and b!4709972 (not res!1990438)) b!4709971))

(assert (= start!478528 b!4709978))

(assert (= (and start!478528 ((_ is Cons!52663) oldBucket!34)) b!4709977))

(assert (= (and start!478528 ((_ is Cons!52663) newBucket!218)) b!4709975))

(declare-fun m!5634833 () Bool)

(assert (=> b!4709984 m!5634833))

(declare-fun m!5634835 () Bool)

(assert (=> b!4709984 m!5634835))

(declare-fun m!5634837 () Bool)

(assert (=> b!4709984 m!5634837))

(declare-fun m!5634839 () Bool)

(assert (=> b!4709985 m!5634839))

(declare-fun m!5634841 () Bool)

(assert (=> b!4709987 m!5634841))

(declare-fun m!5634843 () Bool)

(assert (=> b!4709974 m!5634843))

(declare-fun m!5634845 () Bool)

(assert (=> b!4709974 m!5634845))

(declare-fun m!5634847 () Bool)

(assert (=> start!478528 m!5634847))

(declare-fun m!5634849 () Bool)

(assert (=> start!478528 m!5634849))

(declare-fun m!5634851 () Bool)

(assert (=> b!4709979 m!5634851))

(declare-fun m!5634853 () Bool)

(assert (=> b!4709979 m!5634853))

(declare-fun m!5634855 () Bool)

(assert (=> b!4709983 m!5634855))

(declare-fun m!5634857 () Bool)

(assert (=> b!4709986 m!5634857))

(declare-fun m!5634859 () Bool)

(assert (=> b!4709972 m!5634859))

(declare-fun m!5634861 () Bool)

(assert (=> b!4709976 m!5634861))

(declare-fun m!5634863 () Bool)

(assert (=> b!4709980 m!5634863))

(declare-fun m!5634865 () Bool)

(assert (=> b!4709970 m!5634865))

(declare-fun m!5634867 () Bool)

(assert (=> b!4709988 m!5634867))

(declare-fun m!5634869 () Bool)

(assert (=> b!4709982 m!5634869))

(declare-fun m!5634871 () Bool)

(assert (=> b!4709982 m!5634871))

(declare-fun m!5634873 () Bool)

(assert (=> b!4709982 m!5634873))

(declare-fun m!5634875 () Bool)

(assert (=> b!4709982 m!5634875))

(assert (=> b!4709982 m!5634869))

(declare-fun m!5634877 () Bool)

(assert (=> b!4709982 m!5634877))

(assert (=> b!4709982 m!5634871))

(assert (=> b!4709982 m!5634873))

(declare-fun m!5634879 () Bool)

(assert (=> b!4709982 m!5634879))

(assert (=> b!4709982 m!5634875))

(declare-fun m!5634881 () Bool)

(assert (=> b!4709982 m!5634881))

(declare-fun m!5634883 () Bool)

(assert (=> b!4709982 m!5634883))

(declare-fun m!5634885 () Bool)

(assert (=> b!4709989 m!5634885))

(declare-fun m!5634887 () Bool)

(assert (=> b!4709989 m!5634887))

(declare-fun m!5634889 () Bool)

(assert (=> b!4709981 m!5634889))

(check-sat (not b!4709979) (not b!4709976) (not b!4709986) (not b!4709985) (not b!4709982) (not b!4709984) (not b!4709978) (not b!4709975) (not b!4709988) (not b!4709980) (not start!478528) (not b!4709983) (not b!4709977) (not b!4709970) (not b!4709972) (not b!4709987) tp_is_empty!31095 (not b!4709989) tp_is_empty!31093 (not b!4709974) (not b!4709981))
(check-sat)
(get-model)

(declare-fun d!1498841 () Bool)

(assert (=> d!1498841 (= (tail!8841 oldBucket!34) (t!360023 oldBucket!34))))

(assert (=> b!4709970 d!1498841))

(declare-fun d!1498843 () Bool)

(declare-fun hash!4274 (Hashable!6319 K!14025) (_ BitVec 64))

(assert (=> d!1498843 (= (hash!4272 hashF!1323 key!4653) (hash!4274 hashF!1323 key!4653))))

(declare-fun bs!1101400 () Bool)

(assert (= bs!1101400 d!1498843))

(declare-fun m!5634891 () Bool)

(assert (=> bs!1101400 m!5634891))

(assert (=> b!4709981 d!1498843))

(declare-fun d!1498845 () Bool)

(assert (=> d!1498845 true))

(assert (=> d!1498845 true))

(declare-fun lambda!212486 () Int)

(declare-fun forall!11481 (List!52787 Int) Bool)

(assert (=> d!1498845 (= (allKeysSameHash!1776 oldBucket!34 hash!405 hashF!1323) (forall!11481 oldBucket!34 lambda!212486))))

(declare-fun bs!1101401 () Bool)

(assert (= bs!1101401 d!1498845))

(declare-fun m!5634893 () Bool)

(assert (=> bs!1101401 m!5634893))

(assert (=> b!4709980 d!1498845))

(declare-fun bs!1101522 () Bool)

(declare-fun b!4710092 () Bool)

(assert (= bs!1101522 (and b!4710092 d!1498845)))

(declare-fun lambda!212573 () Int)

(assert (=> bs!1101522 (not (= lambda!212573 lambda!212486))))

(assert (=> b!4710092 true))

(declare-fun bs!1101530 () Bool)

(declare-fun b!4710091 () Bool)

(assert (= bs!1101530 (and b!4710091 d!1498845)))

(declare-fun lambda!212574 () Int)

(assert (=> bs!1101530 (not (= lambda!212574 lambda!212486))))

(declare-fun bs!1101531 () Bool)

(assert (= bs!1101531 (and b!4710091 b!4710092)))

(assert (=> bs!1101531 (= lambda!212574 lambda!212573)))

(assert (=> b!4710091 true))

(declare-fun lambda!212575 () Int)

(assert (=> bs!1101530 (not (= lambda!212575 lambda!212486))))

(declare-fun lt!1874678 () ListMap!5153)

(assert (=> bs!1101531 (= (= lt!1874678 lt!1874455) (= lambda!212575 lambda!212573))))

(assert (=> b!4710091 (= (= lt!1874678 lt!1874455) (= lambda!212575 lambda!212574))))

(assert (=> b!4710091 true))

(declare-fun bs!1101537 () Bool)

(declare-fun d!1498847 () Bool)

(assert (= bs!1101537 (and d!1498847 d!1498845)))

(declare-fun lambda!212576 () Int)

(assert (=> bs!1101537 (not (= lambda!212576 lambda!212486))))

(declare-fun bs!1101538 () Bool)

(assert (= bs!1101538 (and d!1498847 b!4710092)))

(declare-fun lt!1874679 () ListMap!5153)

(assert (=> bs!1101538 (= (= lt!1874679 lt!1874455) (= lambda!212576 lambda!212573))))

(declare-fun bs!1101539 () Bool)

(assert (= bs!1101539 (and d!1498847 b!4710091)))

(assert (=> bs!1101539 (= (= lt!1874679 lt!1874455) (= lambda!212576 lambda!212574))))

(assert (=> bs!1101539 (= (= lt!1874679 lt!1874678) (= lambda!212576 lambda!212575))))

(assert (=> d!1498847 true))

(declare-fun b!4710089 () Bool)

(declare-fun e!2937762 () Bool)

(declare-fun invariantList!1472 (List!52787) Bool)

(assert (=> b!4710089 (= e!2937762 (invariantList!1472 (toList!5790 lt!1874679)))))

(declare-fun b!4710090 () Bool)

(declare-fun e!2937761 () Bool)

(assert (=> b!4710090 (= e!2937761 (forall!11481 (toList!5790 lt!1874455) lambda!212575))))

(declare-fun e!2937760 () ListMap!5153)

(assert (=> b!4710091 (= e!2937760 lt!1874678)))

(declare-fun lt!1874692 () ListMap!5153)

(assert (=> b!4710091 (= lt!1874692 (+!2214 lt!1874455 (h!58970 (_2!30392 (h!58971 (toList!5789 lm!2023))))))))

(assert (=> b!4710091 (= lt!1874678 (addToMapMapFromBucket!1380 (t!360023 (_2!30392 (h!58971 (toList!5789 lm!2023)))) (+!2214 lt!1874455 (h!58970 (_2!30392 (h!58971 (toList!5789 lm!2023)))))))))

(declare-fun lt!1874677 () Unit!127752)

(declare-fun call!329307 () Unit!127752)

(assert (=> b!4710091 (= lt!1874677 call!329307)))

(assert (=> b!4710091 (forall!11481 (toList!5790 lt!1874455) lambda!212574)))

(declare-fun lt!1874685 () Unit!127752)

(assert (=> b!4710091 (= lt!1874685 lt!1874677)))

(assert (=> b!4710091 (forall!11481 (toList!5790 lt!1874692) lambda!212575)))

(declare-fun lt!1874683 () Unit!127752)

(declare-fun Unit!127776 () Unit!127752)

(assert (=> b!4710091 (= lt!1874683 Unit!127776)))

(declare-fun call!329305 () Bool)

(assert (=> b!4710091 call!329305))

(declare-fun lt!1874689 () Unit!127752)

(declare-fun Unit!127777 () Unit!127752)

(assert (=> b!4710091 (= lt!1874689 Unit!127777)))

(declare-fun lt!1874676 () Unit!127752)

(declare-fun Unit!127778 () Unit!127752)

(assert (=> b!4710091 (= lt!1874676 Unit!127778)))

(declare-fun lt!1874681 () Unit!127752)

(declare-fun forallContained!3560 (List!52787 Int tuple2!54194) Unit!127752)

(assert (=> b!4710091 (= lt!1874681 (forallContained!3560 (toList!5790 lt!1874692) lambda!212575 (h!58970 (_2!30392 (h!58971 (toList!5789 lm!2023))))))))

(assert (=> b!4710091 (contains!15968 lt!1874692 (_1!30391 (h!58970 (_2!30392 (h!58971 (toList!5789 lm!2023))))))))

(declare-fun lt!1874690 () Unit!127752)

(declare-fun Unit!127779 () Unit!127752)

(assert (=> b!4710091 (= lt!1874690 Unit!127779)))

(assert (=> b!4710091 (contains!15968 lt!1874678 (_1!30391 (h!58970 (_2!30392 (h!58971 (toList!5789 lm!2023))))))))

(declare-fun lt!1874687 () Unit!127752)

(declare-fun Unit!127780 () Unit!127752)

(assert (=> b!4710091 (= lt!1874687 Unit!127780)))

(assert (=> b!4710091 (forall!11481 (_2!30392 (h!58971 (toList!5789 lm!2023))) lambda!212575)))

(declare-fun lt!1874682 () Unit!127752)

(declare-fun Unit!127781 () Unit!127752)

(assert (=> b!4710091 (= lt!1874682 Unit!127781)))

(assert (=> b!4710091 (forall!11481 (toList!5790 lt!1874692) lambda!212575)))

(declare-fun lt!1874691 () Unit!127752)

(declare-fun Unit!127782 () Unit!127752)

(assert (=> b!4710091 (= lt!1874691 Unit!127782)))

(declare-fun lt!1874696 () Unit!127752)

(declare-fun Unit!127783 () Unit!127752)

(assert (=> b!4710091 (= lt!1874696 Unit!127783)))

(declare-fun lt!1874688 () Unit!127752)

(declare-fun addForallContainsKeyThenBeforeAdding!759 (ListMap!5153 ListMap!5153 K!14025 V!14271) Unit!127752)

(assert (=> b!4710091 (= lt!1874688 (addForallContainsKeyThenBeforeAdding!759 lt!1874455 lt!1874678 (_1!30391 (h!58970 (_2!30392 (h!58971 (toList!5789 lm!2023))))) (_2!30391 (h!58970 (_2!30392 (h!58971 (toList!5789 lm!2023)))))))))

(declare-fun call!329306 () Bool)

(assert (=> b!4710091 call!329306))

(declare-fun lt!1874693 () Unit!127752)

(assert (=> b!4710091 (= lt!1874693 lt!1874688)))

(assert (=> b!4710091 (forall!11481 (toList!5790 lt!1874455) lambda!212575)))

(declare-fun lt!1874694 () Unit!127752)

(declare-fun Unit!127784 () Unit!127752)

(assert (=> b!4710091 (= lt!1874694 Unit!127784)))

(declare-fun res!1990492 () Bool)

(assert (=> b!4710091 (= res!1990492 (forall!11481 (_2!30392 (h!58971 (toList!5789 lm!2023))) lambda!212575))))

(assert (=> b!4710091 (=> (not res!1990492) (not e!2937761))))

(assert (=> b!4710091 e!2937761))

(declare-fun lt!1874686 () Unit!127752)

(declare-fun Unit!127785 () Unit!127752)

(assert (=> b!4710091 (= lt!1874686 Unit!127785)))

(declare-fun c!804723 () Bool)

(declare-fun bm!329300 () Bool)

(assert (=> bm!329300 (= call!329306 (forall!11481 (toList!5790 lt!1874455) (ite c!804723 lambda!212573 lambda!212575)))))

(declare-fun bm!329301 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!760 (ListMap!5153) Unit!127752)

(assert (=> bm!329301 (= call!329307 (lemmaContainsAllItsOwnKeys!760 lt!1874455))))

(assert (=> d!1498847 e!2937762))

(declare-fun res!1990493 () Bool)

(assert (=> d!1498847 (=> (not res!1990493) (not e!2937762))))

(assert (=> d!1498847 (= res!1990493 (forall!11481 (_2!30392 (h!58971 (toList!5789 lm!2023))) lambda!212576))))

(assert (=> d!1498847 (= lt!1874679 e!2937760)))

(assert (=> d!1498847 (= c!804723 ((_ is Nil!52663) (_2!30392 (h!58971 (toList!5789 lm!2023)))))))

(assert (=> d!1498847 (noDuplicateKeys!1950 (_2!30392 (h!58971 (toList!5789 lm!2023))))))

(assert (=> d!1498847 (= (addToMapMapFromBucket!1380 (_2!30392 (h!58971 (toList!5789 lm!2023))) lt!1874455) lt!1874679)))

(assert (=> b!4710092 (= e!2937760 lt!1874455)))

(declare-fun lt!1874680 () Unit!127752)

(assert (=> b!4710092 (= lt!1874680 call!329307)))

(assert (=> b!4710092 call!329305))

(declare-fun lt!1874695 () Unit!127752)

(assert (=> b!4710092 (= lt!1874695 lt!1874680)))

(assert (=> b!4710092 call!329306))

(declare-fun lt!1874684 () Unit!127752)

(declare-fun Unit!127786 () Unit!127752)

(assert (=> b!4710092 (= lt!1874684 Unit!127786)))

(declare-fun bm!329302 () Bool)

(assert (=> bm!329302 (= call!329305 (forall!11481 (ite c!804723 (toList!5790 lt!1874455) (t!360023 (_2!30392 (h!58971 (toList!5789 lm!2023))))) (ite c!804723 lambda!212573 lambda!212575)))))

(declare-fun b!4710093 () Bool)

(declare-fun res!1990491 () Bool)

(assert (=> b!4710093 (=> (not res!1990491) (not e!2937762))))

(assert (=> b!4710093 (= res!1990491 (forall!11481 (toList!5790 lt!1874455) lambda!212576))))

(assert (= (and d!1498847 c!804723) b!4710092))

(assert (= (and d!1498847 (not c!804723)) b!4710091))

(assert (= (and b!4710091 res!1990492) b!4710090))

(assert (= (or b!4710092 b!4710091) bm!329301))

(assert (= (or b!4710092 b!4710091) bm!329300))

(assert (= (or b!4710092 b!4710091) bm!329302))

(assert (= (and d!1498847 res!1990493) b!4710093))

(assert (= (and b!4710093 res!1990491) b!4710089))

(declare-fun m!5635139 () Bool)

(assert (=> bm!329301 m!5635139))

(declare-fun m!5635145 () Bool)

(assert (=> bm!329302 m!5635145))

(declare-fun m!5635147 () Bool)

(assert (=> d!1498847 m!5635147))

(declare-fun m!5635151 () Bool)

(assert (=> d!1498847 m!5635151))

(declare-fun m!5635153 () Bool)

(assert (=> b!4710093 m!5635153))

(declare-fun m!5635155 () Bool)

(assert (=> b!4710090 m!5635155))

(declare-fun m!5635157 () Bool)

(assert (=> b!4710091 m!5635157))

(declare-fun m!5635159 () Bool)

(assert (=> b!4710091 m!5635159))

(assert (=> b!4710091 m!5635155))

(declare-fun m!5635161 () Bool)

(assert (=> b!4710091 m!5635161))

(declare-fun m!5635163 () Bool)

(assert (=> b!4710091 m!5635163))

(declare-fun m!5635165 () Bool)

(assert (=> b!4710091 m!5635165))

(assert (=> b!4710091 m!5635157))

(declare-fun m!5635167 () Bool)

(assert (=> b!4710091 m!5635167))

(declare-fun m!5635169 () Bool)

(assert (=> b!4710091 m!5635169))

(assert (=> b!4710091 m!5635167))

(assert (=> b!4710091 m!5635159))

(declare-fun m!5635171 () Bool)

(assert (=> b!4710091 m!5635171))

(declare-fun m!5635173 () Bool)

(assert (=> b!4710091 m!5635173))

(declare-fun m!5635175 () Bool)

(assert (=> b!4710089 m!5635175))

(declare-fun m!5635177 () Bool)

(assert (=> bm!329300 m!5635177))

(assert (=> b!4709984 d!1498847))

(declare-fun bs!1101546 () Bool)

(declare-fun d!1498895 () Bool)

(assert (= bs!1101546 (and d!1498895 start!478528)))

(declare-fun lambda!212580 () Int)

(assert (=> bs!1101546 (= lambda!212580 lambda!212483)))

(declare-fun lt!1874700 () ListMap!5153)

(assert (=> d!1498895 (invariantList!1472 (toList!5790 lt!1874700))))

(declare-fun e!2937772 () ListMap!5153)

(assert (=> d!1498895 (= lt!1874700 e!2937772)))

(declare-fun c!804727 () Bool)

(assert (=> d!1498895 (= c!804727 ((_ is Cons!52664) (t!360024 (toList!5789 lm!2023))))))

(assert (=> d!1498895 (forall!11479 (t!360024 (toList!5789 lm!2023)) lambda!212580)))

(assert (=> d!1498895 (= (extractMap!1976 (t!360024 (toList!5789 lm!2023))) lt!1874700)))

(declare-fun b!4710108 () Bool)

(assert (=> b!4710108 (= e!2937772 (addToMapMapFromBucket!1380 (_2!30392 (h!58971 (t!360024 (toList!5789 lm!2023)))) (extractMap!1976 (t!360024 (t!360024 (toList!5789 lm!2023))))))))

(declare-fun b!4710109 () Bool)

(assert (=> b!4710109 (= e!2937772 (ListMap!5154 Nil!52663))))

(assert (= (and d!1498895 c!804727) b!4710108))

(assert (= (and d!1498895 (not c!804727)) b!4710109))

(declare-fun m!5635187 () Bool)

(assert (=> d!1498895 m!5635187))

(declare-fun m!5635189 () Bool)

(assert (=> d!1498895 m!5635189))

(declare-fun m!5635191 () Bool)

(assert (=> b!4710108 m!5635191))

(assert (=> b!4710108 m!5635191))

(declare-fun m!5635193 () Bool)

(assert (=> b!4710108 m!5635193))

(assert (=> b!4709984 d!1498895))

(declare-fun d!1498903 () Bool)

(declare-fun tail!8843 (List!52788) List!52788)

(assert (=> d!1498903 (= (tail!8842 lm!2023) (ListLongMap!4320 (tail!8843 (toList!5789 lm!2023))))))

(declare-fun bs!1101547 () Bool)

(assert (= bs!1101547 d!1498903))

(declare-fun m!5635195 () Bool)

(assert (=> bs!1101547 m!5635195))

(assert (=> b!4709984 d!1498903))

(declare-fun d!1498905 () Bool)

(declare-fun res!1990504 () Bool)

(declare-fun e!2937777 () Bool)

(assert (=> d!1498905 (=> res!1990504 e!2937777)))

(assert (=> d!1498905 (= res!1990504 (and ((_ is Cons!52663) lt!1874458) (= (_1!30391 (h!58970 lt!1874458)) key!4653)))))

(assert (=> d!1498905 (= (containsKey!3251 lt!1874458 key!4653) e!2937777)))

(declare-fun b!4710114 () Bool)

(declare-fun e!2937778 () Bool)

(assert (=> b!4710114 (= e!2937777 e!2937778)))

(declare-fun res!1990505 () Bool)

(assert (=> b!4710114 (=> (not res!1990505) (not e!2937778))))

(assert (=> b!4710114 (= res!1990505 ((_ is Cons!52663) lt!1874458))))

(declare-fun b!4710115 () Bool)

(assert (=> b!4710115 (= e!2937778 (containsKey!3251 (t!360023 lt!1874458) key!4653))))

(assert (= (and d!1498905 (not res!1990504)) b!4710114))

(assert (= (and b!4710114 res!1990505) b!4710115))

(declare-fun m!5635197 () Bool)

(assert (=> b!4710115 m!5635197))

(assert (=> b!4709972 d!1498905))

(declare-fun d!1498907 () Bool)

(assert (=> d!1498907 (= (head!10140 (toList!5789 lm!2023)) (h!58971 (toList!5789 lm!2023)))))

(assert (=> b!4709983 d!1498907))

(declare-fun d!1498909 () Bool)

(assert (=> d!1498909 (eq!1087 (addToMapMapFromBucket!1380 (Cons!52663 lt!1874459 lt!1874458) lt!1874455) (+!2214 (addToMapMapFromBucket!1380 lt!1874458 lt!1874455) lt!1874459))))

(declare-fun lt!1874728 () Unit!127752)

(declare-fun choose!33113 (tuple2!54194 List!52787 ListMap!5153) Unit!127752)

(assert (=> d!1498909 (= lt!1874728 (choose!33113 lt!1874459 lt!1874458 lt!1874455))))

(assert (=> d!1498909 (noDuplicateKeys!1950 lt!1874458)))

(assert (=> d!1498909 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!336 lt!1874459 lt!1874458 lt!1874455) lt!1874728)))

(declare-fun bs!1101568 () Bool)

(assert (= bs!1101568 d!1498909))

(assert (=> bs!1101568 m!5634853))

(declare-fun m!5635225 () Bool)

(assert (=> bs!1101568 m!5635225))

(assert (=> bs!1101568 m!5634871))

(assert (=> bs!1101568 m!5635225))

(declare-fun m!5635227 () Bool)

(assert (=> bs!1101568 m!5635227))

(assert (=> bs!1101568 m!5634853))

(assert (=> bs!1101568 m!5634871))

(declare-fun m!5635231 () Bool)

(assert (=> bs!1101568 m!5635231))

(declare-fun m!5635233 () Bool)

(assert (=> bs!1101568 m!5635233))

(assert (=> b!4709982 d!1498909))

(declare-fun d!1498917 () Bool)

(declare-fun e!2937807 () Bool)

(assert (=> d!1498917 e!2937807))

(declare-fun res!1990519 () Bool)

(assert (=> d!1498917 (=> (not res!1990519) (not e!2937807))))

(declare-fun lt!1874739 () ListMap!5153)

(assert (=> d!1498917 (= res!1990519 (contains!15968 lt!1874739 (_1!30391 (h!58970 oldBucket!34))))))

(declare-fun lt!1874737 () List!52787)

(assert (=> d!1498917 (= lt!1874739 (ListMap!5154 lt!1874737))))

(declare-fun lt!1874738 () Unit!127752)

(declare-fun lt!1874740 () Unit!127752)

(assert (=> d!1498917 (= lt!1874738 lt!1874740)))

(declare-datatypes ((Option!12265 0))(
  ( (None!12264) (Some!12264 (v!46791 V!14271)) )
))
(declare-fun getValueByKey!1897 (List!52787 K!14025) Option!12265)

(assert (=> d!1498917 (= (getValueByKey!1897 lt!1874737 (_1!30391 (h!58970 oldBucket!34))) (Some!12264 (_2!30391 (h!58970 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1060 (List!52787 K!14025 V!14271) Unit!127752)

(assert (=> d!1498917 (= lt!1874740 (lemmaContainsTupThenGetReturnValue!1060 lt!1874737 (_1!30391 (h!58970 oldBucket!34)) (_2!30391 (h!58970 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!568 (List!52787 K!14025 V!14271) List!52787)

(assert (=> d!1498917 (= lt!1874737 (insertNoDuplicatedKeys!568 (toList!5790 lt!1874460) (_1!30391 (h!58970 oldBucket!34)) (_2!30391 (h!58970 oldBucket!34))))))

(assert (=> d!1498917 (= (+!2214 lt!1874460 (h!58970 oldBucket!34)) lt!1874739)))

(declare-fun b!4710160 () Bool)

(declare-fun res!1990520 () Bool)

(assert (=> b!4710160 (=> (not res!1990520) (not e!2937807))))

(assert (=> b!4710160 (= res!1990520 (= (getValueByKey!1897 (toList!5790 lt!1874739) (_1!30391 (h!58970 oldBucket!34))) (Some!12264 (_2!30391 (h!58970 oldBucket!34)))))))

(declare-fun b!4710161 () Bool)

(declare-fun contains!15970 (List!52787 tuple2!54194) Bool)

(assert (=> b!4710161 (= e!2937807 (contains!15970 (toList!5790 lt!1874739) (h!58970 oldBucket!34)))))

(assert (= (and d!1498917 res!1990519) b!4710160))

(assert (= (and b!4710160 res!1990520) b!4710161))

(declare-fun m!5635235 () Bool)

(assert (=> d!1498917 m!5635235))

(declare-fun m!5635237 () Bool)

(assert (=> d!1498917 m!5635237))

(declare-fun m!5635239 () Bool)

(assert (=> d!1498917 m!5635239))

(declare-fun m!5635241 () Bool)

(assert (=> d!1498917 m!5635241))

(declare-fun m!5635243 () Bool)

(assert (=> b!4710160 m!5635243))

(declare-fun m!5635245 () Bool)

(assert (=> b!4710161 m!5635245))

(assert (=> b!4709982 d!1498917))

(declare-fun d!1498921 () Bool)

(assert (=> d!1498921 (= (head!10139 oldBucket!34) (h!58970 oldBucket!34))))

(assert (=> b!4709982 d!1498921))

(declare-fun d!1498923 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9330 (List!52787) (InoxSet tuple2!54194))

(assert (=> d!1498923 (= (eq!1087 (addToMapMapFromBucket!1380 (Cons!52663 lt!1874459 lt!1874458) lt!1874455) (+!2214 lt!1874460 lt!1874459)) (= (content!9330 (toList!5790 (addToMapMapFromBucket!1380 (Cons!52663 lt!1874459 lt!1874458) lt!1874455))) (content!9330 (toList!5790 (+!2214 lt!1874460 lt!1874459)))))))

(declare-fun bs!1101572 () Bool)

(assert (= bs!1101572 d!1498923))

(declare-fun m!5635247 () Bool)

(assert (=> bs!1101572 m!5635247))

(declare-fun m!5635249 () Bool)

(assert (=> bs!1101572 m!5635249))

(assert (=> b!4709982 d!1498923))

(declare-fun bs!1101573 () Bool)

(declare-fun b!4710165 () Bool)

(assert (= bs!1101573 (and b!4710165 b!4710092)))

(declare-fun lambda!212583 () Int)

(assert (=> bs!1101573 (= lambda!212583 lambda!212573)))

(declare-fun bs!1101574 () Bool)

(assert (= bs!1101574 (and b!4710165 b!4710091)))

(assert (=> bs!1101574 (= lambda!212583 lambda!212574)))

(declare-fun bs!1101575 () Bool)

(assert (= bs!1101575 (and b!4710165 d!1498847)))

(assert (=> bs!1101575 (= (= lt!1874455 lt!1874679) (= lambda!212583 lambda!212576))))

(assert (=> bs!1101574 (= (= lt!1874455 lt!1874678) (= lambda!212583 lambda!212575))))

(declare-fun bs!1101576 () Bool)

(assert (= bs!1101576 (and b!4710165 d!1498845)))

(assert (=> bs!1101576 (not (= lambda!212583 lambda!212486))))

(assert (=> b!4710165 true))

(declare-fun bs!1101577 () Bool)

(declare-fun b!4710164 () Bool)

(assert (= bs!1101577 (and b!4710164 b!4710092)))

(declare-fun lambda!212584 () Int)

(assert (=> bs!1101577 (= lambda!212584 lambda!212573)))

(declare-fun bs!1101578 () Bool)

(assert (= bs!1101578 (and b!4710164 d!1498847)))

(assert (=> bs!1101578 (= (= lt!1874455 lt!1874679) (= lambda!212584 lambda!212576))))

(declare-fun bs!1101579 () Bool)

(assert (= bs!1101579 (and b!4710164 b!4710165)))

(assert (=> bs!1101579 (= lambda!212584 lambda!212583)))

(declare-fun bs!1101580 () Bool)

(assert (= bs!1101580 (and b!4710164 b!4710091)))

(assert (=> bs!1101580 (= lambda!212584 lambda!212574)))

(assert (=> bs!1101580 (= (= lt!1874455 lt!1874678) (= lambda!212584 lambda!212575))))

(declare-fun bs!1101581 () Bool)

(assert (= bs!1101581 (and b!4710164 d!1498845)))

(assert (=> bs!1101581 (not (= lambda!212584 lambda!212486))))

(assert (=> b!4710164 true))

(declare-fun lt!1874743 () ListMap!5153)

(declare-fun lambda!212585 () Int)

(assert (=> bs!1101577 (= (= lt!1874743 lt!1874455) (= lambda!212585 lambda!212573))))

(assert (=> b!4710164 (= (= lt!1874743 lt!1874455) (= lambda!212585 lambda!212584))))

(assert (=> bs!1101578 (= (= lt!1874743 lt!1874679) (= lambda!212585 lambda!212576))))

(assert (=> bs!1101579 (= (= lt!1874743 lt!1874455) (= lambda!212585 lambda!212583))))

(assert (=> bs!1101580 (= (= lt!1874743 lt!1874455) (= lambda!212585 lambda!212574))))

(assert (=> bs!1101580 (= (= lt!1874743 lt!1874678) (= lambda!212585 lambda!212575))))

(assert (=> bs!1101581 (not (= lambda!212585 lambda!212486))))

(assert (=> b!4710164 true))

(declare-fun bs!1101582 () Bool)

(declare-fun d!1498925 () Bool)

(assert (= bs!1101582 (and d!1498925 b!4710092)))

(declare-fun lt!1874744 () ListMap!5153)

(declare-fun lambda!212586 () Int)

(assert (=> bs!1101582 (= (= lt!1874744 lt!1874455) (= lambda!212586 lambda!212573))))

(declare-fun bs!1101583 () Bool)

(assert (= bs!1101583 (and d!1498925 b!4710164)))

(assert (=> bs!1101583 (= (= lt!1874744 lt!1874743) (= lambda!212586 lambda!212585))))

(assert (=> bs!1101583 (= (= lt!1874744 lt!1874455) (= lambda!212586 lambda!212584))))

(declare-fun bs!1101584 () Bool)

(assert (= bs!1101584 (and d!1498925 d!1498847)))

(assert (=> bs!1101584 (= (= lt!1874744 lt!1874679) (= lambda!212586 lambda!212576))))

(declare-fun bs!1101585 () Bool)

(assert (= bs!1101585 (and d!1498925 b!4710165)))

(assert (=> bs!1101585 (= (= lt!1874744 lt!1874455) (= lambda!212586 lambda!212583))))

(declare-fun bs!1101586 () Bool)

(assert (= bs!1101586 (and d!1498925 b!4710091)))

(assert (=> bs!1101586 (= (= lt!1874744 lt!1874455) (= lambda!212586 lambda!212574))))

(assert (=> bs!1101586 (= (= lt!1874744 lt!1874678) (= lambda!212586 lambda!212575))))

(declare-fun bs!1101587 () Bool)

(assert (= bs!1101587 (and d!1498925 d!1498845)))

(assert (=> bs!1101587 (not (= lambda!212586 lambda!212486))))

(assert (=> d!1498925 true))

(declare-fun b!4710162 () Bool)

(declare-fun e!2937810 () Bool)

(assert (=> b!4710162 (= e!2937810 (invariantList!1472 (toList!5790 lt!1874744)))))

(declare-fun b!4710163 () Bool)

(declare-fun e!2937809 () Bool)

(assert (=> b!4710163 (= e!2937809 (forall!11481 (toList!5790 lt!1874455) lambda!212585))))

(declare-fun e!2937808 () ListMap!5153)

(assert (=> b!4710164 (= e!2937808 lt!1874743)))

(declare-fun lt!1874757 () ListMap!5153)

(assert (=> b!4710164 (= lt!1874757 (+!2214 lt!1874455 (h!58970 (Cons!52663 lt!1874459 lt!1874458))))))

(assert (=> b!4710164 (= lt!1874743 (addToMapMapFromBucket!1380 (t!360023 (Cons!52663 lt!1874459 lt!1874458)) (+!2214 lt!1874455 (h!58970 (Cons!52663 lt!1874459 lt!1874458)))))))

(declare-fun lt!1874742 () Unit!127752)

(declare-fun call!329313 () Unit!127752)

(assert (=> b!4710164 (= lt!1874742 call!329313)))

(assert (=> b!4710164 (forall!11481 (toList!5790 lt!1874455) lambda!212584)))

(declare-fun lt!1874750 () Unit!127752)

(assert (=> b!4710164 (= lt!1874750 lt!1874742)))

(assert (=> b!4710164 (forall!11481 (toList!5790 lt!1874757) lambda!212585)))

(declare-fun lt!1874748 () Unit!127752)

(declare-fun Unit!127798 () Unit!127752)

(assert (=> b!4710164 (= lt!1874748 Unit!127798)))

(declare-fun call!329311 () Bool)

(assert (=> b!4710164 call!329311))

(declare-fun lt!1874754 () Unit!127752)

(declare-fun Unit!127799 () Unit!127752)

(assert (=> b!4710164 (= lt!1874754 Unit!127799)))

(declare-fun lt!1874741 () Unit!127752)

(declare-fun Unit!127800 () Unit!127752)

(assert (=> b!4710164 (= lt!1874741 Unit!127800)))

(declare-fun lt!1874746 () Unit!127752)

(assert (=> b!4710164 (= lt!1874746 (forallContained!3560 (toList!5790 lt!1874757) lambda!212585 (h!58970 (Cons!52663 lt!1874459 lt!1874458))))))

(assert (=> b!4710164 (contains!15968 lt!1874757 (_1!30391 (h!58970 (Cons!52663 lt!1874459 lt!1874458))))))

(declare-fun lt!1874755 () Unit!127752)

(declare-fun Unit!127801 () Unit!127752)

(assert (=> b!4710164 (= lt!1874755 Unit!127801)))

(assert (=> b!4710164 (contains!15968 lt!1874743 (_1!30391 (h!58970 (Cons!52663 lt!1874459 lt!1874458))))))

(declare-fun lt!1874752 () Unit!127752)

(declare-fun Unit!127802 () Unit!127752)

(assert (=> b!4710164 (= lt!1874752 Unit!127802)))

(assert (=> b!4710164 (forall!11481 (Cons!52663 lt!1874459 lt!1874458) lambda!212585)))

(declare-fun lt!1874747 () Unit!127752)

(declare-fun Unit!127803 () Unit!127752)

(assert (=> b!4710164 (= lt!1874747 Unit!127803)))

(assert (=> b!4710164 (forall!11481 (toList!5790 lt!1874757) lambda!212585)))

(declare-fun lt!1874756 () Unit!127752)

(declare-fun Unit!127804 () Unit!127752)

(assert (=> b!4710164 (= lt!1874756 Unit!127804)))

(declare-fun lt!1874761 () Unit!127752)

(declare-fun Unit!127805 () Unit!127752)

(assert (=> b!4710164 (= lt!1874761 Unit!127805)))

(declare-fun lt!1874753 () Unit!127752)

(assert (=> b!4710164 (= lt!1874753 (addForallContainsKeyThenBeforeAdding!759 lt!1874455 lt!1874743 (_1!30391 (h!58970 (Cons!52663 lt!1874459 lt!1874458))) (_2!30391 (h!58970 (Cons!52663 lt!1874459 lt!1874458)))))))

(declare-fun call!329312 () Bool)

(assert (=> b!4710164 call!329312))

(declare-fun lt!1874758 () Unit!127752)

(assert (=> b!4710164 (= lt!1874758 lt!1874753)))

(assert (=> b!4710164 (forall!11481 (toList!5790 lt!1874455) lambda!212585)))

(declare-fun lt!1874759 () Unit!127752)

(declare-fun Unit!127806 () Unit!127752)

(assert (=> b!4710164 (= lt!1874759 Unit!127806)))

(declare-fun res!1990522 () Bool)

(assert (=> b!4710164 (= res!1990522 (forall!11481 (Cons!52663 lt!1874459 lt!1874458) lambda!212585))))

(assert (=> b!4710164 (=> (not res!1990522) (not e!2937809))))

(assert (=> b!4710164 e!2937809))

(declare-fun lt!1874751 () Unit!127752)

(declare-fun Unit!127807 () Unit!127752)

(assert (=> b!4710164 (= lt!1874751 Unit!127807)))

(declare-fun c!804738 () Bool)

(declare-fun bm!329306 () Bool)

(assert (=> bm!329306 (= call!329312 (forall!11481 (toList!5790 lt!1874455) (ite c!804738 lambda!212583 lambda!212585)))))

(declare-fun bm!329307 () Bool)

(assert (=> bm!329307 (= call!329313 (lemmaContainsAllItsOwnKeys!760 lt!1874455))))

(assert (=> d!1498925 e!2937810))

(declare-fun res!1990523 () Bool)

(assert (=> d!1498925 (=> (not res!1990523) (not e!2937810))))

(assert (=> d!1498925 (= res!1990523 (forall!11481 (Cons!52663 lt!1874459 lt!1874458) lambda!212586))))

(assert (=> d!1498925 (= lt!1874744 e!2937808)))

(assert (=> d!1498925 (= c!804738 ((_ is Nil!52663) (Cons!52663 lt!1874459 lt!1874458)))))

(assert (=> d!1498925 (noDuplicateKeys!1950 (Cons!52663 lt!1874459 lt!1874458))))

(assert (=> d!1498925 (= (addToMapMapFromBucket!1380 (Cons!52663 lt!1874459 lt!1874458) lt!1874455) lt!1874744)))

(assert (=> b!4710165 (= e!2937808 lt!1874455)))

(declare-fun lt!1874745 () Unit!127752)

(assert (=> b!4710165 (= lt!1874745 call!329313)))

(assert (=> b!4710165 call!329311))

(declare-fun lt!1874760 () Unit!127752)

(assert (=> b!4710165 (= lt!1874760 lt!1874745)))

(assert (=> b!4710165 call!329312))

(declare-fun lt!1874749 () Unit!127752)

(declare-fun Unit!127808 () Unit!127752)

(assert (=> b!4710165 (= lt!1874749 Unit!127808)))

(declare-fun bm!329308 () Bool)

(assert (=> bm!329308 (= call!329311 (forall!11481 (ite c!804738 (toList!5790 lt!1874455) (t!360023 (Cons!52663 lt!1874459 lt!1874458))) (ite c!804738 lambda!212583 lambda!212585)))))

(declare-fun b!4710166 () Bool)

(declare-fun res!1990521 () Bool)

(assert (=> b!4710166 (=> (not res!1990521) (not e!2937810))))

(assert (=> b!4710166 (= res!1990521 (forall!11481 (toList!5790 lt!1874455) lambda!212586))))

(assert (= (and d!1498925 c!804738) b!4710165))

(assert (= (and d!1498925 (not c!804738)) b!4710164))

(assert (= (and b!4710164 res!1990522) b!4710163))

(assert (= (or b!4710165 b!4710164) bm!329307))

(assert (= (or b!4710165 b!4710164) bm!329306))

(assert (= (or b!4710165 b!4710164) bm!329308))

(assert (= (and d!1498925 res!1990523) b!4710166))

(assert (= (and b!4710166 res!1990521) b!4710162))

(assert (=> bm!329307 m!5635139))

(declare-fun m!5635251 () Bool)

(assert (=> bm!329308 m!5635251))

(declare-fun m!5635253 () Bool)

(assert (=> d!1498925 m!5635253))

(declare-fun m!5635255 () Bool)

(assert (=> d!1498925 m!5635255))

(declare-fun m!5635257 () Bool)

(assert (=> b!4710166 m!5635257))

(declare-fun m!5635259 () Bool)

(assert (=> b!4710163 m!5635259))

(declare-fun m!5635261 () Bool)

(assert (=> b!4710164 m!5635261))

(declare-fun m!5635263 () Bool)

(assert (=> b!4710164 m!5635263))

(assert (=> b!4710164 m!5635259))

(declare-fun m!5635265 () Bool)

(assert (=> b!4710164 m!5635265))

(declare-fun m!5635267 () Bool)

(assert (=> b!4710164 m!5635267))

(declare-fun m!5635269 () Bool)

(assert (=> b!4710164 m!5635269))

(assert (=> b!4710164 m!5635261))

(declare-fun m!5635271 () Bool)

(assert (=> b!4710164 m!5635271))

(declare-fun m!5635273 () Bool)

(assert (=> b!4710164 m!5635273))

(assert (=> b!4710164 m!5635271))

(assert (=> b!4710164 m!5635263))

(declare-fun m!5635275 () Bool)

(assert (=> b!4710164 m!5635275))

(declare-fun m!5635277 () Bool)

(assert (=> b!4710164 m!5635277))

(declare-fun m!5635279 () Bool)

(assert (=> b!4710162 m!5635279))

(declare-fun m!5635281 () Bool)

(assert (=> bm!329306 m!5635281))

(assert (=> b!4709982 d!1498925))

(declare-fun d!1498927 () Bool)

(assert (=> d!1498927 (= (eq!1087 (+!2214 lt!1874460 (h!58970 oldBucket!34)) (addToMapMapFromBucket!1380 oldBucket!34 lt!1874455)) (= (content!9330 (toList!5790 (+!2214 lt!1874460 (h!58970 oldBucket!34)))) (content!9330 (toList!5790 (addToMapMapFromBucket!1380 oldBucket!34 lt!1874455)))))))

(declare-fun bs!1101588 () Bool)

(assert (= bs!1101588 d!1498927))

(declare-fun m!5635283 () Bool)

(assert (=> bs!1101588 m!5635283))

(declare-fun m!5635285 () Bool)

(assert (=> bs!1101588 m!5635285))

(assert (=> b!4709982 d!1498927))

(declare-fun bs!1101589 () Bool)

(declare-fun b!4710170 () Bool)

(assert (= bs!1101589 (and b!4710170 b!4710164)))

(declare-fun lambda!212587 () Int)

(assert (=> bs!1101589 (= (= lt!1874455 lt!1874743) (= lambda!212587 lambda!212585))))

(assert (=> bs!1101589 (= lambda!212587 lambda!212584)))

(declare-fun bs!1101590 () Bool)

(assert (= bs!1101590 (and b!4710170 d!1498847)))

(assert (=> bs!1101590 (= (= lt!1874455 lt!1874679) (= lambda!212587 lambda!212576))))

(declare-fun bs!1101591 () Bool)

(assert (= bs!1101591 (and b!4710170 d!1498925)))

(assert (=> bs!1101591 (= (= lt!1874455 lt!1874744) (= lambda!212587 lambda!212586))))

(declare-fun bs!1101592 () Bool)

(assert (= bs!1101592 (and b!4710170 b!4710092)))

(assert (=> bs!1101592 (= lambda!212587 lambda!212573)))

(declare-fun bs!1101593 () Bool)

(assert (= bs!1101593 (and b!4710170 b!4710165)))

(assert (=> bs!1101593 (= lambda!212587 lambda!212583)))

(declare-fun bs!1101594 () Bool)

(assert (= bs!1101594 (and b!4710170 b!4710091)))

(assert (=> bs!1101594 (= lambda!212587 lambda!212574)))

(assert (=> bs!1101594 (= (= lt!1874455 lt!1874678) (= lambda!212587 lambda!212575))))

(declare-fun bs!1101595 () Bool)

(assert (= bs!1101595 (and b!4710170 d!1498845)))

(assert (=> bs!1101595 (not (= lambda!212587 lambda!212486))))

(assert (=> b!4710170 true))

(declare-fun bs!1101596 () Bool)

(declare-fun b!4710169 () Bool)

(assert (= bs!1101596 (and b!4710169 b!4710164)))

(declare-fun lambda!212588 () Int)

(assert (=> bs!1101596 (= (= lt!1874455 lt!1874743) (= lambda!212588 lambda!212585))))

(assert (=> bs!1101596 (= lambda!212588 lambda!212584)))

(declare-fun bs!1101597 () Bool)

(assert (= bs!1101597 (and b!4710169 b!4710170)))

(assert (=> bs!1101597 (= lambda!212588 lambda!212587)))

(declare-fun bs!1101598 () Bool)

(assert (= bs!1101598 (and b!4710169 d!1498847)))

(assert (=> bs!1101598 (= (= lt!1874455 lt!1874679) (= lambda!212588 lambda!212576))))

(declare-fun bs!1101599 () Bool)

(assert (= bs!1101599 (and b!4710169 d!1498925)))

(assert (=> bs!1101599 (= (= lt!1874455 lt!1874744) (= lambda!212588 lambda!212586))))

(declare-fun bs!1101600 () Bool)

(assert (= bs!1101600 (and b!4710169 b!4710092)))

(assert (=> bs!1101600 (= lambda!212588 lambda!212573)))

(declare-fun bs!1101601 () Bool)

(assert (= bs!1101601 (and b!4710169 b!4710165)))

(assert (=> bs!1101601 (= lambda!212588 lambda!212583)))

(declare-fun bs!1101602 () Bool)

(assert (= bs!1101602 (and b!4710169 b!4710091)))

(assert (=> bs!1101602 (= lambda!212588 lambda!212574)))

(assert (=> bs!1101602 (= (= lt!1874455 lt!1874678) (= lambda!212588 lambda!212575))))

(declare-fun bs!1101603 () Bool)

(assert (= bs!1101603 (and b!4710169 d!1498845)))

(assert (=> bs!1101603 (not (= lambda!212588 lambda!212486))))

(assert (=> b!4710169 true))

(declare-fun lambda!212589 () Int)

(declare-fun lt!1874764 () ListMap!5153)

(assert (=> bs!1101596 (= (= lt!1874764 lt!1874743) (= lambda!212589 lambda!212585))))

(assert (=> bs!1101596 (= (= lt!1874764 lt!1874455) (= lambda!212589 lambda!212584))))

(assert (=> bs!1101597 (= (= lt!1874764 lt!1874455) (= lambda!212589 lambda!212587))))

(assert (=> bs!1101599 (= (= lt!1874764 lt!1874744) (= lambda!212589 lambda!212586))))

(assert (=> bs!1101600 (= (= lt!1874764 lt!1874455) (= lambda!212589 lambda!212573))))

(assert (=> bs!1101601 (= (= lt!1874764 lt!1874455) (= lambda!212589 lambda!212583))))

(assert (=> bs!1101602 (= (= lt!1874764 lt!1874455) (= lambda!212589 lambda!212574))))

(assert (=> b!4710169 (= (= lt!1874764 lt!1874455) (= lambda!212589 lambda!212588))))

(assert (=> bs!1101598 (= (= lt!1874764 lt!1874679) (= lambda!212589 lambda!212576))))

(assert (=> bs!1101602 (= (= lt!1874764 lt!1874678) (= lambda!212589 lambda!212575))))

(assert (=> bs!1101603 (not (= lambda!212589 lambda!212486))))

(assert (=> b!4710169 true))

(declare-fun bs!1101604 () Bool)

(declare-fun d!1498929 () Bool)

(assert (= bs!1101604 (and d!1498929 b!4710169)))

(declare-fun lambda!212590 () Int)

(declare-fun lt!1874765 () ListMap!5153)

(assert (=> bs!1101604 (= (= lt!1874765 lt!1874764) (= lambda!212590 lambda!212589))))

(declare-fun bs!1101605 () Bool)

(assert (= bs!1101605 (and d!1498929 b!4710164)))

(assert (=> bs!1101605 (= (= lt!1874765 lt!1874743) (= lambda!212590 lambda!212585))))

(assert (=> bs!1101605 (= (= lt!1874765 lt!1874455) (= lambda!212590 lambda!212584))))

(declare-fun bs!1101606 () Bool)

(assert (= bs!1101606 (and d!1498929 b!4710170)))

(assert (=> bs!1101606 (= (= lt!1874765 lt!1874455) (= lambda!212590 lambda!212587))))

(declare-fun bs!1101607 () Bool)

(assert (= bs!1101607 (and d!1498929 d!1498925)))

(assert (=> bs!1101607 (= (= lt!1874765 lt!1874744) (= lambda!212590 lambda!212586))))

(declare-fun bs!1101608 () Bool)

(assert (= bs!1101608 (and d!1498929 b!4710092)))

(assert (=> bs!1101608 (= (= lt!1874765 lt!1874455) (= lambda!212590 lambda!212573))))

(declare-fun bs!1101609 () Bool)

(assert (= bs!1101609 (and d!1498929 b!4710165)))

(assert (=> bs!1101609 (= (= lt!1874765 lt!1874455) (= lambda!212590 lambda!212583))))

(declare-fun bs!1101610 () Bool)

(assert (= bs!1101610 (and d!1498929 b!4710091)))

(assert (=> bs!1101610 (= (= lt!1874765 lt!1874455) (= lambda!212590 lambda!212574))))

(assert (=> bs!1101604 (= (= lt!1874765 lt!1874455) (= lambda!212590 lambda!212588))))

(declare-fun bs!1101611 () Bool)

(assert (= bs!1101611 (and d!1498929 d!1498847)))

(assert (=> bs!1101611 (= (= lt!1874765 lt!1874679) (= lambda!212590 lambda!212576))))

(assert (=> bs!1101610 (= (= lt!1874765 lt!1874678) (= lambda!212590 lambda!212575))))

(declare-fun bs!1101612 () Bool)

(assert (= bs!1101612 (and d!1498929 d!1498845)))

(assert (=> bs!1101612 (not (= lambda!212590 lambda!212486))))

(assert (=> d!1498929 true))

(declare-fun b!4710167 () Bool)

(declare-fun e!2937813 () Bool)

(assert (=> b!4710167 (= e!2937813 (invariantList!1472 (toList!5790 lt!1874765)))))

(declare-fun b!4710168 () Bool)

(declare-fun e!2937812 () Bool)

(assert (=> b!4710168 (= e!2937812 (forall!11481 (toList!5790 lt!1874455) lambda!212589))))

(declare-fun e!2937811 () ListMap!5153)

(assert (=> b!4710169 (= e!2937811 lt!1874764)))

(declare-fun lt!1874778 () ListMap!5153)

(assert (=> b!4710169 (= lt!1874778 (+!2214 lt!1874455 (h!58970 oldBucket!34)))))

(assert (=> b!4710169 (= lt!1874764 (addToMapMapFromBucket!1380 (t!360023 oldBucket!34) (+!2214 lt!1874455 (h!58970 oldBucket!34))))))

(declare-fun lt!1874763 () Unit!127752)

(declare-fun call!329316 () Unit!127752)

(assert (=> b!4710169 (= lt!1874763 call!329316)))

(assert (=> b!4710169 (forall!11481 (toList!5790 lt!1874455) lambda!212588)))

(declare-fun lt!1874771 () Unit!127752)

(assert (=> b!4710169 (= lt!1874771 lt!1874763)))

(assert (=> b!4710169 (forall!11481 (toList!5790 lt!1874778) lambda!212589)))

(declare-fun lt!1874769 () Unit!127752)

(declare-fun Unit!127820 () Unit!127752)

(assert (=> b!4710169 (= lt!1874769 Unit!127820)))

(declare-fun call!329314 () Bool)

(assert (=> b!4710169 call!329314))

(declare-fun lt!1874775 () Unit!127752)

(declare-fun Unit!127821 () Unit!127752)

(assert (=> b!4710169 (= lt!1874775 Unit!127821)))

(declare-fun lt!1874762 () Unit!127752)

(declare-fun Unit!127822 () Unit!127752)

(assert (=> b!4710169 (= lt!1874762 Unit!127822)))

(declare-fun lt!1874767 () Unit!127752)

(assert (=> b!4710169 (= lt!1874767 (forallContained!3560 (toList!5790 lt!1874778) lambda!212589 (h!58970 oldBucket!34)))))

(assert (=> b!4710169 (contains!15968 lt!1874778 (_1!30391 (h!58970 oldBucket!34)))))

(declare-fun lt!1874776 () Unit!127752)

(declare-fun Unit!127823 () Unit!127752)

(assert (=> b!4710169 (= lt!1874776 Unit!127823)))

(assert (=> b!4710169 (contains!15968 lt!1874764 (_1!30391 (h!58970 oldBucket!34)))))

(declare-fun lt!1874773 () Unit!127752)

(declare-fun Unit!127824 () Unit!127752)

(assert (=> b!4710169 (= lt!1874773 Unit!127824)))

(assert (=> b!4710169 (forall!11481 oldBucket!34 lambda!212589)))

(declare-fun lt!1874768 () Unit!127752)

(declare-fun Unit!127825 () Unit!127752)

(assert (=> b!4710169 (= lt!1874768 Unit!127825)))

(assert (=> b!4710169 (forall!11481 (toList!5790 lt!1874778) lambda!212589)))

(declare-fun lt!1874777 () Unit!127752)

(declare-fun Unit!127826 () Unit!127752)

(assert (=> b!4710169 (= lt!1874777 Unit!127826)))

(declare-fun lt!1874782 () Unit!127752)

(declare-fun Unit!127827 () Unit!127752)

(assert (=> b!4710169 (= lt!1874782 Unit!127827)))

(declare-fun lt!1874774 () Unit!127752)

(assert (=> b!4710169 (= lt!1874774 (addForallContainsKeyThenBeforeAdding!759 lt!1874455 lt!1874764 (_1!30391 (h!58970 oldBucket!34)) (_2!30391 (h!58970 oldBucket!34))))))

(declare-fun call!329315 () Bool)

(assert (=> b!4710169 call!329315))

(declare-fun lt!1874779 () Unit!127752)

(assert (=> b!4710169 (= lt!1874779 lt!1874774)))

(assert (=> b!4710169 (forall!11481 (toList!5790 lt!1874455) lambda!212589)))

(declare-fun lt!1874780 () Unit!127752)

(declare-fun Unit!127828 () Unit!127752)

(assert (=> b!4710169 (= lt!1874780 Unit!127828)))

(declare-fun res!1990525 () Bool)

(assert (=> b!4710169 (= res!1990525 (forall!11481 oldBucket!34 lambda!212589))))

(assert (=> b!4710169 (=> (not res!1990525) (not e!2937812))))

(assert (=> b!4710169 e!2937812))

(declare-fun lt!1874772 () Unit!127752)

(declare-fun Unit!127829 () Unit!127752)

(assert (=> b!4710169 (= lt!1874772 Unit!127829)))

(declare-fun c!804739 () Bool)

(declare-fun bm!329309 () Bool)

(assert (=> bm!329309 (= call!329315 (forall!11481 (toList!5790 lt!1874455) (ite c!804739 lambda!212587 lambda!212589)))))

(declare-fun bm!329310 () Bool)

(assert (=> bm!329310 (= call!329316 (lemmaContainsAllItsOwnKeys!760 lt!1874455))))

(assert (=> d!1498929 e!2937813))

(declare-fun res!1990526 () Bool)

(assert (=> d!1498929 (=> (not res!1990526) (not e!2937813))))

(assert (=> d!1498929 (= res!1990526 (forall!11481 oldBucket!34 lambda!212590))))

(assert (=> d!1498929 (= lt!1874765 e!2937811)))

(assert (=> d!1498929 (= c!804739 ((_ is Nil!52663) oldBucket!34))))

(assert (=> d!1498929 (noDuplicateKeys!1950 oldBucket!34)))

(assert (=> d!1498929 (= (addToMapMapFromBucket!1380 oldBucket!34 lt!1874455) lt!1874765)))

(assert (=> b!4710170 (= e!2937811 lt!1874455)))

(declare-fun lt!1874766 () Unit!127752)

(assert (=> b!4710170 (= lt!1874766 call!329316)))

(assert (=> b!4710170 call!329314))

(declare-fun lt!1874781 () Unit!127752)

(assert (=> b!4710170 (= lt!1874781 lt!1874766)))

(assert (=> b!4710170 call!329315))

(declare-fun lt!1874770 () Unit!127752)

(declare-fun Unit!127830 () Unit!127752)

(assert (=> b!4710170 (= lt!1874770 Unit!127830)))

(declare-fun bm!329311 () Bool)

(assert (=> bm!329311 (= call!329314 (forall!11481 (ite c!804739 (toList!5790 lt!1874455) (t!360023 oldBucket!34)) (ite c!804739 lambda!212587 lambda!212589)))))

(declare-fun b!4710171 () Bool)

(declare-fun res!1990524 () Bool)

(assert (=> b!4710171 (=> (not res!1990524) (not e!2937813))))

(assert (=> b!4710171 (= res!1990524 (forall!11481 (toList!5790 lt!1874455) lambda!212590))))

(assert (= (and d!1498929 c!804739) b!4710170))

(assert (= (and d!1498929 (not c!804739)) b!4710169))

(assert (= (and b!4710169 res!1990525) b!4710168))

(assert (= (or b!4710170 b!4710169) bm!329310))

(assert (= (or b!4710170 b!4710169) bm!329309))

(assert (= (or b!4710170 b!4710169) bm!329311))

(assert (= (and d!1498929 res!1990526) b!4710171))

(assert (= (and b!4710171 res!1990524) b!4710167))

(assert (=> bm!329310 m!5635139))

(declare-fun m!5635287 () Bool)

(assert (=> bm!329311 m!5635287))

(declare-fun m!5635289 () Bool)

(assert (=> d!1498929 m!5635289))

(assert (=> d!1498929 m!5634839))

(declare-fun m!5635291 () Bool)

(assert (=> b!4710171 m!5635291))

(declare-fun m!5635293 () Bool)

(assert (=> b!4710168 m!5635293))

(declare-fun m!5635295 () Bool)

(assert (=> b!4710169 m!5635295))

(declare-fun m!5635297 () Bool)

(assert (=> b!4710169 m!5635297))

(assert (=> b!4710169 m!5635293))

(declare-fun m!5635299 () Bool)

(assert (=> b!4710169 m!5635299))

(declare-fun m!5635301 () Bool)

(assert (=> b!4710169 m!5635301))

(declare-fun m!5635303 () Bool)

(assert (=> b!4710169 m!5635303))

(assert (=> b!4710169 m!5635295))

(declare-fun m!5635305 () Bool)

(assert (=> b!4710169 m!5635305))

(declare-fun m!5635307 () Bool)

(assert (=> b!4710169 m!5635307))

(assert (=> b!4710169 m!5635305))

(assert (=> b!4710169 m!5635297))

(declare-fun m!5635309 () Bool)

(assert (=> b!4710169 m!5635309))

(declare-fun m!5635311 () Bool)

(assert (=> b!4710169 m!5635311))

(declare-fun m!5635313 () Bool)

(assert (=> b!4710167 m!5635313))

(declare-fun m!5635315 () Bool)

(assert (=> bm!329309 m!5635315))

(assert (=> b!4709982 d!1498929))

(declare-fun d!1498931 () Bool)

(declare-fun e!2937814 () Bool)

(assert (=> d!1498931 e!2937814))

(declare-fun res!1990527 () Bool)

(assert (=> d!1498931 (=> (not res!1990527) (not e!2937814))))

(declare-fun lt!1874785 () ListMap!5153)

(assert (=> d!1498931 (= res!1990527 (contains!15968 lt!1874785 (_1!30391 lt!1874459)))))

(declare-fun lt!1874783 () List!52787)

(assert (=> d!1498931 (= lt!1874785 (ListMap!5154 lt!1874783))))

(declare-fun lt!1874784 () Unit!127752)

(declare-fun lt!1874786 () Unit!127752)

(assert (=> d!1498931 (= lt!1874784 lt!1874786)))

(assert (=> d!1498931 (= (getValueByKey!1897 lt!1874783 (_1!30391 lt!1874459)) (Some!12264 (_2!30391 lt!1874459)))))

(assert (=> d!1498931 (= lt!1874786 (lemmaContainsTupThenGetReturnValue!1060 lt!1874783 (_1!30391 lt!1874459) (_2!30391 lt!1874459)))))

(assert (=> d!1498931 (= lt!1874783 (insertNoDuplicatedKeys!568 (toList!5790 lt!1874460) (_1!30391 lt!1874459) (_2!30391 lt!1874459)))))

(assert (=> d!1498931 (= (+!2214 lt!1874460 lt!1874459) lt!1874785)))

(declare-fun b!4710172 () Bool)

(declare-fun res!1990528 () Bool)

(assert (=> b!4710172 (=> (not res!1990528) (not e!2937814))))

(assert (=> b!4710172 (= res!1990528 (= (getValueByKey!1897 (toList!5790 lt!1874785) (_1!30391 lt!1874459)) (Some!12264 (_2!30391 lt!1874459))))))

(declare-fun b!4710173 () Bool)

(assert (=> b!4710173 (= e!2937814 (contains!15970 (toList!5790 lt!1874785) lt!1874459))))

(assert (= (and d!1498931 res!1990527) b!4710172))

(assert (= (and b!4710172 res!1990528) b!4710173))

(declare-fun m!5635317 () Bool)

(assert (=> d!1498931 m!5635317))

(declare-fun m!5635319 () Bool)

(assert (=> d!1498931 m!5635319))

(declare-fun m!5635321 () Bool)

(assert (=> d!1498931 m!5635321))

(declare-fun m!5635323 () Bool)

(assert (=> d!1498931 m!5635323))

(declare-fun m!5635325 () Bool)

(assert (=> b!4710172 m!5635325))

(declare-fun m!5635327 () Bool)

(assert (=> b!4710173 m!5635327))

(assert (=> b!4709982 d!1498931))

(declare-fun bs!1101613 () Bool)

(declare-fun d!1498933 () Bool)

(assert (= bs!1101613 (and d!1498933 start!478528)))

(declare-fun lambda!212593 () Int)

(assert (=> bs!1101613 (not (= lambda!212593 lambda!212483))))

(declare-fun bs!1101614 () Bool)

(assert (= bs!1101614 (and d!1498933 d!1498895)))

(assert (=> bs!1101614 (not (= lambda!212593 lambda!212580))))

(assert (=> d!1498933 true))

(assert (=> d!1498933 (= (allKeysSameHashInMap!1864 lm!2023 hashF!1323) (forall!11479 (toList!5789 lm!2023) lambda!212593))))

(declare-fun bs!1101615 () Bool)

(assert (= bs!1101615 d!1498933))

(declare-fun m!5635329 () Bool)

(assert (=> bs!1101615 m!5635329))

(assert (=> b!4709976 d!1498933))

(declare-fun d!1498935 () Bool)

(declare-fun res!1990533 () Bool)

(declare-fun e!2937819 () Bool)

(assert (=> d!1498935 (=> res!1990533 e!2937819)))

(assert (=> d!1498935 (= res!1990533 (not ((_ is Cons!52663) newBucket!218)))))

(assert (=> d!1498935 (= (noDuplicateKeys!1950 newBucket!218) e!2937819)))

(declare-fun b!4710180 () Bool)

(declare-fun e!2937820 () Bool)

(assert (=> b!4710180 (= e!2937819 e!2937820)))

(declare-fun res!1990534 () Bool)

(assert (=> b!4710180 (=> (not res!1990534) (not e!2937820))))

(assert (=> b!4710180 (= res!1990534 (not (containsKey!3251 (t!360023 newBucket!218) (_1!30391 (h!58970 newBucket!218)))))))

(declare-fun b!4710181 () Bool)

(assert (=> b!4710181 (= e!2937820 (noDuplicateKeys!1950 (t!360023 newBucket!218)))))

(assert (= (and d!1498935 (not res!1990533)) b!4710180))

(assert (= (and b!4710180 res!1990534) b!4710181))

(declare-fun m!5635331 () Bool)

(assert (=> b!4710180 m!5635331))

(declare-fun m!5635333 () Bool)

(assert (=> b!4710181 m!5635333))

(assert (=> b!4709987 d!1498935))

(declare-fun bs!1101616 () Bool)

(declare-fun d!1498937 () Bool)

(assert (= bs!1101616 (and d!1498937 d!1498929)))

(declare-fun lambda!212594 () Int)

(assert (=> bs!1101616 (not (= lambda!212594 lambda!212590))))

(declare-fun bs!1101617 () Bool)

(assert (= bs!1101617 (and d!1498937 b!4710169)))

(assert (=> bs!1101617 (not (= lambda!212594 lambda!212589))))

(declare-fun bs!1101618 () Bool)

(assert (= bs!1101618 (and d!1498937 b!4710164)))

(assert (=> bs!1101618 (not (= lambda!212594 lambda!212585))))

(assert (=> bs!1101618 (not (= lambda!212594 lambda!212584))))

(declare-fun bs!1101619 () Bool)

(assert (= bs!1101619 (and d!1498937 b!4710170)))

(assert (=> bs!1101619 (not (= lambda!212594 lambda!212587))))

(declare-fun bs!1101620 () Bool)

(assert (= bs!1101620 (and d!1498937 d!1498925)))

(assert (=> bs!1101620 (not (= lambda!212594 lambda!212586))))

(declare-fun bs!1101621 () Bool)

(assert (= bs!1101621 (and d!1498937 b!4710092)))

(assert (=> bs!1101621 (not (= lambda!212594 lambda!212573))))

(declare-fun bs!1101622 () Bool)

(assert (= bs!1101622 (and d!1498937 b!4710165)))

(assert (=> bs!1101622 (not (= lambda!212594 lambda!212583))))

(declare-fun bs!1101623 () Bool)

(assert (= bs!1101623 (and d!1498937 b!4710091)))

(assert (=> bs!1101623 (not (= lambda!212594 lambda!212574))))

(assert (=> bs!1101617 (not (= lambda!212594 lambda!212588))))

(declare-fun bs!1101624 () Bool)

(assert (= bs!1101624 (and d!1498937 d!1498847)))

(assert (=> bs!1101624 (not (= lambda!212594 lambda!212576))))

(assert (=> bs!1101623 (not (= lambda!212594 lambda!212575))))

(declare-fun bs!1101625 () Bool)

(assert (= bs!1101625 (and d!1498937 d!1498845)))

(assert (=> bs!1101625 (= lambda!212594 lambda!212486)))

(assert (=> d!1498937 true))

(assert (=> d!1498937 true))

(assert (=> d!1498937 (= (allKeysSameHash!1776 newBucket!218 hash!405 hashF!1323) (forall!11481 newBucket!218 lambda!212594))))

(declare-fun bs!1101626 () Bool)

(assert (= bs!1101626 d!1498937))

(declare-fun m!5635335 () Bool)

(assert (=> bs!1101626 m!5635335))

(assert (=> b!4709986 d!1498937))

(declare-fun bm!329314 () Bool)

(declare-fun call!329319 () Bool)

(declare-datatypes ((List!52789 0))(
  ( (Nil!52665) (Cons!52665 (h!58974 K!14025) (t!360027 List!52789)) )
))
(declare-fun e!2937836 () List!52789)

(declare-fun contains!15971 (List!52789 K!14025) Bool)

(assert (=> bm!329314 (= call!329319 (contains!15971 e!2937836 key!4653))))

(declare-fun c!804748 () Bool)

(declare-fun c!804746 () Bool)

(assert (=> bm!329314 (= c!804748 c!804746)))

(declare-fun b!4710200 () Bool)

(declare-fun e!2937834 () Unit!127752)

(declare-fun Unit!127831 () Unit!127752)

(assert (=> b!4710200 (= e!2937834 Unit!127831)))

(declare-fun b!4710201 () Bool)

(declare-fun e!2937838 () Bool)

(declare-fun keys!18870 (ListMap!5153) List!52789)

(assert (=> b!4710201 (= e!2937838 (not (contains!15971 (keys!18870 lt!1874457) key!4653)))))

(declare-fun b!4710202 () Bool)

(assert (=> b!4710202 (= e!2937836 (keys!18870 lt!1874457))))

(declare-fun b!4710204 () Bool)

(declare-fun e!2937837 () Bool)

(declare-fun e!2937833 () Bool)

(assert (=> b!4710204 (= e!2937837 e!2937833)))

(declare-fun res!1990542 () Bool)

(assert (=> b!4710204 (=> (not res!1990542) (not e!2937833))))

(declare-fun isDefined!9519 (Option!12265) Bool)

(assert (=> b!4710204 (= res!1990542 (isDefined!9519 (getValueByKey!1897 (toList!5790 lt!1874457) key!4653)))))

(declare-fun b!4710205 () Bool)

(assert (=> b!4710205 (= e!2937833 (contains!15971 (keys!18870 lt!1874457) key!4653))))

(declare-fun b!4710206 () Bool)

(declare-fun e!2937835 () Unit!127752)

(assert (=> b!4710206 (= e!2937835 e!2937834)))

(declare-fun c!804747 () Bool)

(assert (=> b!4710206 (= c!804747 call!329319)))

(declare-fun b!4710207 () Bool)

(declare-fun lt!1874809 () Unit!127752)

(assert (=> b!4710207 (= e!2937835 lt!1874809)))

(declare-fun lt!1874807 () Unit!127752)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1788 (List!52787 K!14025) Unit!127752)

(assert (=> b!4710207 (= lt!1874807 (lemmaContainsKeyImpliesGetValueByKeyDefined!1788 (toList!5790 lt!1874457) key!4653))))

(assert (=> b!4710207 (isDefined!9519 (getValueByKey!1897 (toList!5790 lt!1874457) key!4653))))

(declare-fun lt!1874808 () Unit!127752)

(assert (=> b!4710207 (= lt!1874808 lt!1874807)))

(declare-fun lemmaInListThenGetKeysListContains!906 (List!52787 K!14025) Unit!127752)

(assert (=> b!4710207 (= lt!1874809 (lemmaInListThenGetKeysListContains!906 (toList!5790 lt!1874457) key!4653))))

(assert (=> b!4710207 call!329319))

(declare-fun b!4710208 () Bool)

(assert (=> b!4710208 false))

(declare-fun lt!1874804 () Unit!127752)

(declare-fun lt!1874810 () Unit!127752)

(assert (=> b!4710208 (= lt!1874804 lt!1874810)))

(declare-fun containsKey!3252 (List!52787 K!14025) Bool)

(assert (=> b!4710208 (containsKey!3252 (toList!5790 lt!1874457) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!910 (List!52787 K!14025) Unit!127752)

(assert (=> b!4710208 (= lt!1874810 (lemmaInGetKeysListThenContainsKey!910 (toList!5790 lt!1874457) key!4653))))

(declare-fun Unit!127833 () Unit!127752)

(assert (=> b!4710208 (= e!2937834 Unit!127833)))

(declare-fun b!4710203 () Bool)

(declare-fun getKeysList!911 (List!52787) List!52789)

(assert (=> b!4710203 (= e!2937836 (getKeysList!911 (toList!5790 lt!1874457)))))

(declare-fun d!1498939 () Bool)

(assert (=> d!1498939 e!2937837))

(declare-fun res!1990543 () Bool)

(assert (=> d!1498939 (=> res!1990543 e!2937837)))

(assert (=> d!1498939 (= res!1990543 e!2937838)))

(declare-fun res!1990541 () Bool)

(assert (=> d!1498939 (=> (not res!1990541) (not e!2937838))))

(declare-fun lt!1874806 () Bool)

(assert (=> d!1498939 (= res!1990541 (not lt!1874806))))

(declare-fun lt!1874803 () Bool)

(assert (=> d!1498939 (= lt!1874806 lt!1874803)))

(declare-fun lt!1874805 () Unit!127752)

(assert (=> d!1498939 (= lt!1874805 e!2937835)))

(assert (=> d!1498939 (= c!804746 lt!1874803)))

(assert (=> d!1498939 (= lt!1874803 (containsKey!3252 (toList!5790 lt!1874457) key!4653))))

(assert (=> d!1498939 (= (contains!15968 lt!1874457 key!4653) lt!1874806)))

(assert (= (and d!1498939 c!804746) b!4710207))

(assert (= (and d!1498939 (not c!804746)) b!4710206))

(assert (= (and b!4710206 c!804747) b!4710208))

(assert (= (and b!4710206 (not c!804747)) b!4710200))

(assert (= (or b!4710207 b!4710206) bm!329314))

(assert (= (and bm!329314 c!804748) b!4710203))

(assert (= (and bm!329314 (not c!804748)) b!4710202))

(assert (= (and d!1498939 res!1990541) b!4710201))

(assert (= (and d!1498939 (not res!1990543)) b!4710204))

(assert (= (and b!4710204 res!1990542) b!4710205))

(declare-fun m!5635337 () Bool)

(assert (=> b!4710207 m!5635337))

(declare-fun m!5635339 () Bool)

(assert (=> b!4710207 m!5635339))

(assert (=> b!4710207 m!5635339))

(declare-fun m!5635341 () Bool)

(assert (=> b!4710207 m!5635341))

(declare-fun m!5635343 () Bool)

(assert (=> b!4710207 m!5635343))

(declare-fun m!5635345 () Bool)

(assert (=> b!4710205 m!5635345))

(assert (=> b!4710205 m!5635345))

(declare-fun m!5635347 () Bool)

(assert (=> b!4710205 m!5635347))

(assert (=> b!4710202 m!5635345))

(assert (=> b!4710204 m!5635339))

(assert (=> b!4710204 m!5635339))

(assert (=> b!4710204 m!5635341))

(assert (=> b!4710201 m!5635345))

(assert (=> b!4710201 m!5635345))

(assert (=> b!4710201 m!5635347))

(declare-fun m!5635349 () Bool)

(assert (=> b!4710208 m!5635349))

(declare-fun m!5635351 () Bool)

(assert (=> b!4710208 m!5635351))

(declare-fun m!5635353 () Bool)

(assert (=> bm!329314 m!5635353))

(declare-fun m!5635355 () Bool)

(assert (=> b!4710203 m!5635355))

(assert (=> d!1498939 m!5635349))

(assert (=> b!4709974 d!1498939))

(declare-fun bs!1101627 () Bool)

(declare-fun d!1498941 () Bool)

(assert (= bs!1101627 (and d!1498941 start!478528)))

(declare-fun lambda!212595 () Int)

(assert (=> bs!1101627 (= lambda!212595 lambda!212483)))

(declare-fun bs!1101628 () Bool)

(assert (= bs!1101628 (and d!1498941 d!1498895)))

(assert (=> bs!1101628 (= lambda!212595 lambda!212580)))

(declare-fun bs!1101629 () Bool)

(assert (= bs!1101629 (and d!1498941 d!1498933)))

(assert (=> bs!1101629 (not (= lambda!212595 lambda!212593))))

(declare-fun lt!1874811 () ListMap!5153)

(assert (=> d!1498941 (invariantList!1472 (toList!5790 lt!1874811))))

(declare-fun e!2937839 () ListMap!5153)

(assert (=> d!1498941 (= lt!1874811 e!2937839)))

(declare-fun c!804749 () Bool)

(assert (=> d!1498941 (= c!804749 ((_ is Cons!52664) (toList!5789 lm!2023)))))

(assert (=> d!1498941 (forall!11479 (toList!5789 lm!2023) lambda!212595)))

(assert (=> d!1498941 (= (extractMap!1976 (toList!5789 lm!2023)) lt!1874811)))

(declare-fun b!4710209 () Bool)

(assert (=> b!4710209 (= e!2937839 (addToMapMapFromBucket!1380 (_2!30392 (h!58971 (toList!5789 lm!2023))) (extractMap!1976 (t!360024 (toList!5789 lm!2023)))))))

(declare-fun b!4710210 () Bool)

(assert (=> b!4710210 (= e!2937839 (ListMap!5154 Nil!52663))))

(assert (= (and d!1498941 c!804749) b!4710209))

(assert (= (and d!1498941 (not c!804749)) b!4710210))

(declare-fun m!5635357 () Bool)

(assert (=> d!1498941 m!5635357))

(declare-fun m!5635359 () Bool)

(assert (=> d!1498941 m!5635359))

(assert (=> b!4710209 m!5634835))

(assert (=> b!4710209 m!5634835))

(declare-fun m!5635361 () Bool)

(assert (=> b!4710209 m!5635361))

(assert (=> b!4709974 d!1498941))

(declare-fun d!1498943 () Bool)

(declare-fun res!1990544 () Bool)

(declare-fun e!2937840 () Bool)

(assert (=> d!1498943 (=> res!1990544 e!2937840)))

(assert (=> d!1498943 (= res!1990544 (not ((_ is Cons!52663) oldBucket!34)))))

(assert (=> d!1498943 (= (noDuplicateKeys!1950 oldBucket!34) e!2937840)))

(declare-fun b!4710211 () Bool)

(declare-fun e!2937841 () Bool)

(assert (=> b!4710211 (= e!2937840 e!2937841)))

(declare-fun res!1990545 () Bool)

(assert (=> b!4710211 (=> (not res!1990545) (not e!2937841))))

(assert (=> b!4710211 (= res!1990545 (not (containsKey!3251 (t!360023 oldBucket!34) (_1!30391 (h!58970 oldBucket!34)))))))

(declare-fun b!4710212 () Bool)

(assert (=> b!4710212 (= e!2937841 (noDuplicateKeys!1950 (t!360023 oldBucket!34)))))

(assert (= (and d!1498943 (not res!1990544)) b!4710211))

(assert (= (and b!4710211 res!1990545) b!4710212))

(declare-fun m!5635363 () Bool)

(assert (=> b!4710211 m!5635363))

(declare-fun m!5635365 () Bool)

(assert (=> b!4710212 m!5635365))

(assert (=> b!4709985 d!1498943))

(declare-fun bs!1101630 () Bool)

(declare-fun b!4710216 () Bool)

(assert (= bs!1101630 (and b!4710216 d!1498929)))

(declare-fun lambda!212596 () Int)

(assert (=> bs!1101630 (= (= lt!1874455 lt!1874765) (= lambda!212596 lambda!212590))))

(declare-fun bs!1101631 () Bool)

(assert (= bs!1101631 (and b!4710216 b!4710169)))

(assert (=> bs!1101631 (= (= lt!1874455 lt!1874764) (= lambda!212596 lambda!212589))))

(declare-fun bs!1101632 () Bool)

(assert (= bs!1101632 (and b!4710216 b!4710164)))

(assert (=> bs!1101632 (= (= lt!1874455 lt!1874743) (= lambda!212596 lambda!212585))))

(assert (=> bs!1101632 (= lambda!212596 lambda!212584)))

(declare-fun bs!1101633 () Bool)

(assert (= bs!1101633 (and b!4710216 d!1498925)))

(assert (=> bs!1101633 (= (= lt!1874455 lt!1874744) (= lambda!212596 lambda!212586))))

(declare-fun bs!1101634 () Bool)

(assert (= bs!1101634 (and b!4710216 b!4710092)))

(assert (=> bs!1101634 (= lambda!212596 lambda!212573)))

(declare-fun bs!1101635 () Bool)

(assert (= bs!1101635 (and b!4710216 d!1498937)))

(assert (=> bs!1101635 (not (= lambda!212596 lambda!212594))))

(declare-fun bs!1101636 () Bool)

(assert (= bs!1101636 (and b!4710216 b!4710170)))

(assert (=> bs!1101636 (= lambda!212596 lambda!212587)))

(declare-fun bs!1101637 () Bool)

(assert (= bs!1101637 (and b!4710216 b!4710165)))

(assert (=> bs!1101637 (= lambda!212596 lambda!212583)))

(declare-fun bs!1101638 () Bool)

(assert (= bs!1101638 (and b!4710216 b!4710091)))

(assert (=> bs!1101638 (= lambda!212596 lambda!212574)))

(assert (=> bs!1101631 (= lambda!212596 lambda!212588)))

(declare-fun bs!1101639 () Bool)

(assert (= bs!1101639 (and b!4710216 d!1498847)))

(assert (=> bs!1101639 (= (= lt!1874455 lt!1874679) (= lambda!212596 lambda!212576))))

(assert (=> bs!1101638 (= (= lt!1874455 lt!1874678) (= lambda!212596 lambda!212575))))

(declare-fun bs!1101640 () Bool)

(assert (= bs!1101640 (and b!4710216 d!1498845)))

(assert (=> bs!1101640 (not (= lambda!212596 lambda!212486))))

(assert (=> b!4710216 true))

(declare-fun bs!1101641 () Bool)

(declare-fun b!4710215 () Bool)

(assert (= bs!1101641 (and b!4710215 b!4710216)))

(declare-fun lambda!212597 () Int)

(assert (=> bs!1101641 (= lambda!212597 lambda!212596)))

(declare-fun bs!1101642 () Bool)

(assert (= bs!1101642 (and b!4710215 d!1498929)))

(assert (=> bs!1101642 (= (= lt!1874455 lt!1874765) (= lambda!212597 lambda!212590))))

(declare-fun bs!1101643 () Bool)

(assert (= bs!1101643 (and b!4710215 b!4710169)))

(assert (=> bs!1101643 (= (= lt!1874455 lt!1874764) (= lambda!212597 lambda!212589))))

(declare-fun bs!1101644 () Bool)

(assert (= bs!1101644 (and b!4710215 b!4710164)))

(assert (=> bs!1101644 (= (= lt!1874455 lt!1874743) (= lambda!212597 lambda!212585))))

(assert (=> bs!1101644 (= lambda!212597 lambda!212584)))

(declare-fun bs!1101645 () Bool)

(assert (= bs!1101645 (and b!4710215 d!1498925)))

(assert (=> bs!1101645 (= (= lt!1874455 lt!1874744) (= lambda!212597 lambda!212586))))

(declare-fun bs!1101646 () Bool)

(assert (= bs!1101646 (and b!4710215 b!4710092)))

(assert (=> bs!1101646 (= lambda!212597 lambda!212573)))

(declare-fun bs!1101647 () Bool)

(assert (= bs!1101647 (and b!4710215 d!1498937)))

(assert (=> bs!1101647 (not (= lambda!212597 lambda!212594))))

(declare-fun bs!1101648 () Bool)

(assert (= bs!1101648 (and b!4710215 b!4710170)))

(assert (=> bs!1101648 (= lambda!212597 lambda!212587)))

(declare-fun bs!1101649 () Bool)

(assert (= bs!1101649 (and b!4710215 b!4710165)))

(assert (=> bs!1101649 (= lambda!212597 lambda!212583)))

(declare-fun bs!1101650 () Bool)

(assert (= bs!1101650 (and b!4710215 b!4710091)))

(assert (=> bs!1101650 (= lambda!212597 lambda!212574)))

(assert (=> bs!1101643 (= lambda!212597 lambda!212588)))

(declare-fun bs!1101651 () Bool)

(assert (= bs!1101651 (and b!4710215 d!1498847)))

(assert (=> bs!1101651 (= (= lt!1874455 lt!1874679) (= lambda!212597 lambda!212576))))

(assert (=> bs!1101650 (= (= lt!1874455 lt!1874678) (= lambda!212597 lambda!212575))))

(declare-fun bs!1101652 () Bool)

(assert (= bs!1101652 (and b!4710215 d!1498845)))

(assert (=> bs!1101652 (not (= lambda!212597 lambda!212486))))

(assert (=> b!4710215 true))

(declare-fun lt!1874814 () ListMap!5153)

(declare-fun lambda!212598 () Int)

(assert (=> bs!1101641 (= (= lt!1874814 lt!1874455) (= lambda!212598 lambda!212596))))

(assert (=> bs!1101642 (= (= lt!1874814 lt!1874765) (= lambda!212598 lambda!212590))))

(assert (=> bs!1101643 (= (= lt!1874814 lt!1874764) (= lambda!212598 lambda!212589))))

(assert (=> b!4710215 (= (= lt!1874814 lt!1874455) (= lambda!212598 lambda!212597))))

(assert (=> bs!1101644 (= (= lt!1874814 lt!1874743) (= lambda!212598 lambda!212585))))

(assert (=> bs!1101644 (= (= lt!1874814 lt!1874455) (= lambda!212598 lambda!212584))))

(assert (=> bs!1101645 (= (= lt!1874814 lt!1874744) (= lambda!212598 lambda!212586))))

(assert (=> bs!1101646 (= (= lt!1874814 lt!1874455) (= lambda!212598 lambda!212573))))

(assert (=> bs!1101647 (not (= lambda!212598 lambda!212594))))

(assert (=> bs!1101648 (= (= lt!1874814 lt!1874455) (= lambda!212598 lambda!212587))))

(assert (=> bs!1101649 (= (= lt!1874814 lt!1874455) (= lambda!212598 lambda!212583))))

(assert (=> bs!1101650 (= (= lt!1874814 lt!1874455) (= lambda!212598 lambda!212574))))

(assert (=> bs!1101643 (= (= lt!1874814 lt!1874455) (= lambda!212598 lambda!212588))))

(assert (=> bs!1101651 (= (= lt!1874814 lt!1874679) (= lambda!212598 lambda!212576))))

(assert (=> bs!1101650 (= (= lt!1874814 lt!1874678) (= lambda!212598 lambda!212575))))

(assert (=> bs!1101652 (not (= lambda!212598 lambda!212486))))

(assert (=> b!4710215 true))

(declare-fun bs!1101653 () Bool)

(declare-fun d!1498945 () Bool)

(assert (= bs!1101653 (and d!1498945 b!4710216)))

(declare-fun lt!1874815 () ListMap!5153)

(declare-fun lambda!212599 () Int)

(assert (=> bs!1101653 (= (= lt!1874815 lt!1874455) (= lambda!212599 lambda!212596))))

(declare-fun bs!1101654 () Bool)

(assert (= bs!1101654 (and d!1498945 d!1498929)))

(assert (=> bs!1101654 (= (= lt!1874815 lt!1874765) (= lambda!212599 lambda!212590))))

(declare-fun bs!1101655 () Bool)

(assert (= bs!1101655 (and d!1498945 b!4710169)))

(assert (=> bs!1101655 (= (= lt!1874815 lt!1874764) (= lambda!212599 lambda!212589))))

(declare-fun bs!1101656 () Bool)

(assert (= bs!1101656 (and d!1498945 b!4710215)))

(assert (=> bs!1101656 (= (= lt!1874815 lt!1874455) (= lambda!212599 lambda!212597))))

(declare-fun bs!1101657 () Bool)

(assert (= bs!1101657 (and d!1498945 b!4710164)))

(assert (=> bs!1101657 (= (= lt!1874815 lt!1874743) (= lambda!212599 lambda!212585))))

(assert (=> bs!1101657 (= (= lt!1874815 lt!1874455) (= lambda!212599 lambda!212584))))

(declare-fun bs!1101658 () Bool)

(assert (= bs!1101658 (and d!1498945 d!1498925)))

(assert (=> bs!1101658 (= (= lt!1874815 lt!1874744) (= lambda!212599 lambda!212586))))

(declare-fun bs!1101659 () Bool)

(assert (= bs!1101659 (and d!1498945 b!4710092)))

(assert (=> bs!1101659 (= (= lt!1874815 lt!1874455) (= lambda!212599 lambda!212573))))

(declare-fun bs!1101660 () Bool)

(assert (= bs!1101660 (and d!1498945 d!1498937)))

(assert (=> bs!1101660 (not (= lambda!212599 lambda!212594))))

(declare-fun bs!1101661 () Bool)

(assert (= bs!1101661 (and d!1498945 b!4710170)))

(assert (=> bs!1101661 (= (= lt!1874815 lt!1874455) (= lambda!212599 lambda!212587))))

(declare-fun bs!1101662 () Bool)

(assert (= bs!1101662 (and d!1498945 b!4710165)))

(assert (=> bs!1101662 (= (= lt!1874815 lt!1874455) (= lambda!212599 lambda!212583))))

(declare-fun bs!1101663 () Bool)

(assert (= bs!1101663 (and d!1498945 b!4710091)))

(assert (=> bs!1101663 (= (= lt!1874815 lt!1874455) (= lambda!212599 lambda!212574))))

(assert (=> bs!1101655 (= (= lt!1874815 lt!1874455) (= lambda!212599 lambda!212588))))

(declare-fun bs!1101664 () Bool)

(assert (= bs!1101664 (and d!1498945 d!1498847)))

(assert (=> bs!1101664 (= (= lt!1874815 lt!1874679) (= lambda!212599 lambda!212576))))

(assert (=> bs!1101656 (= (= lt!1874815 lt!1874814) (= lambda!212599 lambda!212598))))

(assert (=> bs!1101663 (= (= lt!1874815 lt!1874678) (= lambda!212599 lambda!212575))))

(declare-fun bs!1101665 () Bool)

(assert (= bs!1101665 (and d!1498945 d!1498845)))

(assert (=> bs!1101665 (not (= lambda!212599 lambda!212486))))

(assert (=> d!1498945 true))

(declare-fun b!4710213 () Bool)

(declare-fun e!2937844 () Bool)

(assert (=> b!4710213 (= e!2937844 (invariantList!1472 (toList!5790 lt!1874815)))))

(declare-fun b!4710214 () Bool)

(declare-fun e!2937843 () Bool)

(assert (=> b!4710214 (= e!2937843 (forall!11481 (toList!5790 lt!1874455) lambda!212598))))

(declare-fun e!2937842 () ListMap!5153)

(assert (=> b!4710215 (= e!2937842 lt!1874814)))

(declare-fun lt!1874828 () ListMap!5153)

(assert (=> b!4710215 (= lt!1874828 (+!2214 lt!1874455 (h!58970 newBucket!218)))))

(assert (=> b!4710215 (= lt!1874814 (addToMapMapFromBucket!1380 (t!360023 newBucket!218) (+!2214 lt!1874455 (h!58970 newBucket!218))))))

(declare-fun lt!1874813 () Unit!127752)

(declare-fun call!329322 () Unit!127752)

(assert (=> b!4710215 (= lt!1874813 call!329322)))

(assert (=> b!4710215 (forall!11481 (toList!5790 lt!1874455) lambda!212597)))

(declare-fun lt!1874821 () Unit!127752)

(assert (=> b!4710215 (= lt!1874821 lt!1874813)))

(assert (=> b!4710215 (forall!11481 (toList!5790 lt!1874828) lambda!212598)))

(declare-fun lt!1874819 () Unit!127752)

(declare-fun Unit!127846 () Unit!127752)

(assert (=> b!4710215 (= lt!1874819 Unit!127846)))

(declare-fun call!329320 () Bool)

(assert (=> b!4710215 call!329320))

(declare-fun lt!1874825 () Unit!127752)

(declare-fun Unit!127847 () Unit!127752)

(assert (=> b!4710215 (= lt!1874825 Unit!127847)))

(declare-fun lt!1874812 () Unit!127752)

(declare-fun Unit!127848 () Unit!127752)

(assert (=> b!4710215 (= lt!1874812 Unit!127848)))

(declare-fun lt!1874817 () Unit!127752)

(assert (=> b!4710215 (= lt!1874817 (forallContained!3560 (toList!5790 lt!1874828) lambda!212598 (h!58970 newBucket!218)))))

(assert (=> b!4710215 (contains!15968 lt!1874828 (_1!30391 (h!58970 newBucket!218)))))

(declare-fun lt!1874826 () Unit!127752)

(declare-fun Unit!127849 () Unit!127752)

(assert (=> b!4710215 (= lt!1874826 Unit!127849)))

(assert (=> b!4710215 (contains!15968 lt!1874814 (_1!30391 (h!58970 newBucket!218)))))

(declare-fun lt!1874823 () Unit!127752)

(declare-fun Unit!127850 () Unit!127752)

(assert (=> b!4710215 (= lt!1874823 Unit!127850)))

(assert (=> b!4710215 (forall!11481 newBucket!218 lambda!212598)))

(declare-fun lt!1874818 () Unit!127752)

(declare-fun Unit!127851 () Unit!127752)

(assert (=> b!4710215 (= lt!1874818 Unit!127851)))

(assert (=> b!4710215 (forall!11481 (toList!5790 lt!1874828) lambda!212598)))

(declare-fun lt!1874827 () Unit!127752)

(declare-fun Unit!127852 () Unit!127752)

(assert (=> b!4710215 (= lt!1874827 Unit!127852)))

(declare-fun lt!1874832 () Unit!127752)

(declare-fun Unit!127853 () Unit!127752)

(assert (=> b!4710215 (= lt!1874832 Unit!127853)))

(declare-fun lt!1874824 () Unit!127752)

(assert (=> b!4710215 (= lt!1874824 (addForallContainsKeyThenBeforeAdding!759 lt!1874455 lt!1874814 (_1!30391 (h!58970 newBucket!218)) (_2!30391 (h!58970 newBucket!218))))))

(declare-fun call!329321 () Bool)

(assert (=> b!4710215 call!329321))

(declare-fun lt!1874829 () Unit!127752)

(assert (=> b!4710215 (= lt!1874829 lt!1874824)))

(assert (=> b!4710215 (forall!11481 (toList!5790 lt!1874455) lambda!212598)))

(declare-fun lt!1874830 () Unit!127752)

(declare-fun Unit!127854 () Unit!127752)

(assert (=> b!4710215 (= lt!1874830 Unit!127854)))

(declare-fun res!1990547 () Bool)

(assert (=> b!4710215 (= res!1990547 (forall!11481 newBucket!218 lambda!212598))))

(assert (=> b!4710215 (=> (not res!1990547) (not e!2937843))))

(assert (=> b!4710215 e!2937843))

(declare-fun lt!1874822 () Unit!127752)

(declare-fun Unit!127855 () Unit!127752)

(assert (=> b!4710215 (= lt!1874822 Unit!127855)))

(declare-fun bm!329315 () Bool)

(declare-fun c!804750 () Bool)

(assert (=> bm!329315 (= call!329321 (forall!11481 (toList!5790 lt!1874455) (ite c!804750 lambda!212596 lambda!212598)))))

(declare-fun bm!329316 () Bool)

(assert (=> bm!329316 (= call!329322 (lemmaContainsAllItsOwnKeys!760 lt!1874455))))

(assert (=> d!1498945 e!2937844))

(declare-fun res!1990548 () Bool)

(assert (=> d!1498945 (=> (not res!1990548) (not e!2937844))))

(assert (=> d!1498945 (= res!1990548 (forall!11481 newBucket!218 lambda!212599))))

(assert (=> d!1498945 (= lt!1874815 e!2937842)))

(assert (=> d!1498945 (= c!804750 ((_ is Nil!52663) newBucket!218))))

(assert (=> d!1498945 (noDuplicateKeys!1950 newBucket!218)))

(assert (=> d!1498945 (= (addToMapMapFromBucket!1380 newBucket!218 lt!1874455) lt!1874815)))

(assert (=> b!4710216 (= e!2937842 lt!1874455)))

(declare-fun lt!1874816 () Unit!127752)

(assert (=> b!4710216 (= lt!1874816 call!329322)))

(assert (=> b!4710216 call!329320))

(declare-fun lt!1874831 () Unit!127752)

(assert (=> b!4710216 (= lt!1874831 lt!1874816)))

(assert (=> b!4710216 call!329321))

(declare-fun lt!1874820 () Unit!127752)

(declare-fun Unit!127856 () Unit!127752)

(assert (=> b!4710216 (= lt!1874820 Unit!127856)))

(declare-fun bm!329317 () Bool)

(assert (=> bm!329317 (= call!329320 (forall!11481 (ite c!804750 (toList!5790 lt!1874455) (t!360023 newBucket!218)) (ite c!804750 lambda!212596 lambda!212598)))))

(declare-fun b!4710217 () Bool)

(declare-fun res!1990546 () Bool)

(assert (=> b!4710217 (=> (not res!1990546) (not e!2937844))))

(assert (=> b!4710217 (= res!1990546 (forall!11481 (toList!5790 lt!1874455) lambda!212599))))

(assert (= (and d!1498945 c!804750) b!4710216))

(assert (= (and d!1498945 (not c!804750)) b!4710215))

(assert (= (and b!4710215 res!1990547) b!4710214))

(assert (= (or b!4710216 b!4710215) bm!329316))

(assert (= (or b!4710216 b!4710215) bm!329315))

(assert (= (or b!4710216 b!4710215) bm!329317))

(assert (= (and d!1498945 res!1990548) b!4710217))

(assert (= (and b!4710217 res!1990546) b!4710213))

(assert (=> bm!329316 m!5635139))

(declare-fun m!5635367 () Bool)

(assert (=> bm!329317 m!5635367))

(declare-fun m!5635369 () Bool)

(assert (=> d!1498945 m!5635369))

(assert (=> d!1498945 m!5634841))

(declare-fun m!5635371 () Bool)

(assert (=> b!4710217 m!5635371))

(declare-fun m!5635373 () Bool)

(assert (=> b!4710214 m!5635373))

(declare-fun m!5635375 () Bool)

(assert (=> b!4710215 m!5635375))

(declare-fun m!5635377 () Bool)

(assert (=> b!4710215 m!5635377))

(assert (=> b!4710215 m!5635373))

(declare-fun m!5635379 () Bool)

(assert (=> b!4710215 m!5635379))

(declare-fun m!5635381 () Bool)

(assert (=> b!4710215 m!5635381))

(declare-fun m!5635383 () Bool)

(assert (=> b!4710215 m!5635383))

(assert (=> b!4710215 m!5635375))

(declare-fun m!5635385 () Bool)

(assert (=> b!4710215 m!5635385))

(declare-fun m!5635387 () Bool)

(assert (=> b!4710215 m!5635387))

(assert (=> b!4710215 m!5635385))

(assert (=> b!4710215 m!5635377))

(declare-fun m!5635389 () Bool)

(assert (=> b!4710215 m!5635389))

(declare-fun m!5635391 () Bool)

(assert (=> b!4710215 m!5635391))

(declare-fun m!5635393 () Bool)

(assert (=> b!4710213 m!5635393))

(declare-fun m!5635395 () Bool)

(assert (=> bm!329315 m!5635395))

(assert (=> b!4709979 d!1498945))

(declare-fun bs!1101666 () Bool)

(declare-fun b!4710221 () Bool)

(assert (= bs!1101666 (and b!4710221 b!4710216)))

(declare-fun lambda!212600 () Int)

(assert (=> bs!1101666 (= lambda!212600 lambda!212596)))

(declare-fun bs!1101667 () Bool)

(assert (= bs!1101667 (and b!4710221 d!1498929)))

(assert (=> bs!1101667 (= (= lt!1874455 lt!1874765) (= lambda!212600 lambda!212590))))

(declare-fun bs!1101668 () Bool)

(assert (= bs!1101668 (and b!4710221 b!4710169)))

(assert (=> bs!1101668 (= (= lt!1874455 lt!1874764) (= lambda!212600 lambda!212589))))

(declare-fun bs!1101669 () Bool)

(assert (= bs!1101669 (and b!4710221 b!4710215)))

(assert (=> bs!1101669 (= lambda!212600 lambda!212597)))

(declare-fun bs!1101670 () Bool)

(assert (= bs!1101670 (and b!4710221 b!4710164)))

(assert (=> bs!1101670 (= (= lt!1874455 lt!1874743) (= lambda!212600 lambda!212585))))

(assert (=> bs!1101670 (= lambda!212600 lambda!212584)))

(declare-fun bs!1101671 () Bool)

(assert (= bs!1101671 (and b!4710221 d!1498925)))

(assert (=> bs!1101671 (= (= lt!1874455 lt!1874744) (= lambda!212600 lambda!212586))))

(declare-fun bs!1101672 () Bool)

(assert (= bs!1101672 (and b!4710221 b!4710092)))

(assert (=> bs!1101672 (= lambda!212600 lambda!212573)))

(declare-fun bs!1101673 () Bool)

(assert (= bs!1101673 (and b!4710221 d!1498937)))

(assert (=> bs!1101673 (not (= lambda!212600 lambda!212594))))

(declare-fun bs!1101674 () Bool)

(assert (= bs!1101674 (and b!4710221 b!4710170)))

(assert (=> bs!1101674 (= lambda!212600 lambda!212587)))

(declare-fun bs!1101675 () Bool)

(assert (= bs!1101675 (and b!4710221 b!4710165)))

(assert (=> bs!1101675 (= lambda!212600 lambda!212583)))

(declare-fun bs!1101676 () Bool)

(assert (= bs!1101676 (and b!4710221 b!4710091)))

(assert (=> bs!1101676 (= lambda!212600 lambda!212574)))

(assert (=> bs!1101668 (= lambda!212600 lambda!212588)))

(declare-fun bs!1101677 () Bool)

(assert (= bs!1101677 (and b!4710221 d!1498847)))

(assert (=> bs!1101677 (= (= lt!1874455 lt!1874679) (= lambda!212600 lambda!212576))))

(assert (=> bs!1101669 (= (= lt!1874455 lt!1874814) (= lambda!212600 lambda!212598))))

(assert (=> bs!1101676 (= (= lt!1874455 lt!1874678) (= lambda!212600 lambda!212575))))

(declare-fun bs!1101678 () Bool)

(assert (= bs!1101678 (and b!4710221 d!1498845)))

(assert (=> bs!1101678 (not (= lambda!212600 lambda!212486))))

(declare-fun bs!1101679 () Bool)

(assert (= bs!1101679 (and b!4710221 d!1498945)))

(assert (=> bs!1101679 (= (= lt!1874455 lt!1874815) (= lambda!212600 lambda!212599))))

(assert (=> b!4710221 true))

(declare-fun bs!1101680 () Bool)

(declare-fun b!4710220 () Bool)

(assert (= bs!1101680 (and b!4710220 b!4710216)))

(declare-fun lambda!212601 () Int)

(assert (=> bs!1101680 (= lambda!212601 lambda!212596)))

(declare-fun bs!1101681 () Bool)

(assert (= bs!1101681 (and b!4710220 d!1498929)))

(assert (=> bs!1101681 (= (= lt!1874455 lt!1874765) (= lambda!212601 lambda!212590))))

(declare-fun bs!1101682 () Bool)

(assert (= bs!1101682 (and b!4710220 b!4710215)))

(assert (=> bs!1101682 (= lambda!212601 lambda!212597)))

(declare-fun bs!1101683 () Bool)

(assert (= bs!1101683 (and b!4710220 b!4710164)))

(assert (=> bs!1101683 (= (= lt!1874455 lt!1874743) (= lambda!212601 lambda!212585))))

(assert (=> bs!1101683 (= lambda!212601 lambda!212584)))

(declare-fun bs!1101684 () Bool)

(assert (= bs!1101684 (and b!4710220 d!1498925)))

(assert (=> bs!1101684 (= (= lt!1874455 lt!1874744) (= lambda!212601 lambda!212586))))

(declare-fun bs!1101685 () Bool)

(assert (= bs!1101685 (and b!4710220 b!4710092)))

(assert (=> bs!1101685 (= lambda!212601 lambda!212573)))

(declare-fun bs!1101686 () Bool)

(assert (= bs!1101686 (and b!4710220 b!4710169)))

(assert (=> bs!1101686 (= (= lt!1874455 lt!1874764) (= lambda!212601 lambda!212589))))

(declare-fun bs!1101687 () Bool)

(assert (= bs!1101687 (and b!4710220 b!4710221)))

(assert (=> bs!1101687 (= lambda!212601 lambda!212600)))

(declare-fun bs!1101688 () Bool)

(assert (= bs!1101688 (and b!4710220 d!1498937)))

(assert (=> bs!1101688 (not (= lambda!212601 lambda!212594))))

(declare-fun bs!1101689 () Bool)

(assert (= bs!1101689 (and b!4710220 b!4710170)))

(assert (=> bs!1101689 (= lambda!212601 lambda!212587)))

(declare-fun bs!1101690 () Bool)

(assert (= bs!1101690 (and b!4710220 b!4710165)))

(assert (=> bs!1101690 (= lambda!212601 lambda!212583)))

(declare-fun bs!1101691 () Bool)

(assert (= bs!1101691 (and b!4710220 b!4710091)))

(assert (=> bs!1101691 (= lambda!212601 lambda!212574)))

(assert (=> bs!1101686 (= lambda!212601 lambda!212588)))

(declare-fun bs!1101692 () Bool)

(assert (= bs!1101692 (and b!4710220 d!1498847)))

(assert (=> bs!1101692 (= (= lt!1874455 lt!1874679) (= lambda!212601 lambda!212576))))

(assert (=> bs!1101682 (= (= lt!1874455 lt!1874814) (= lambda!212601 lambda!212598))))

(assert (=> bs!1101691 (= (= lt!1874455 lt!1874678) (= lambda!212601 lambda!212575))))

(declare-fun bs!1101693 () Bool)

(assert (= bs!1101693 (and b!4710220 d!1498845)))

(assert (=> bs!1101693 (not (= lambda!212601 lambda!212486))))

(declare-fun bs!1101694 () Bool)

(assert (= bs!1101694 (and b!4710220 d!1498945)))

(assert (=> bs!1101694 (= (= lt!1874455 lt!1874815) (= lambda!212601 lambda!212599))))

(assert (=> b!4710220 true))

(declare-fun lt!1874835 () ListMap!5153)

(declare-fun lambda!212602 () Int)

(assert (=> bs!1101681 (= (= lt!1874835 lt!1874765) (= lambda!212602 lambda!212590))))

(assert (=> bs!1101682 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212597))))

(assert (=> bs!1101683 (= (= lt!1874835 lt!1874743) (= lambda!212602 lambda!212585))))

(assert (=> bs!1101683 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212584))))

(assert (=> b!4710220 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212601))))

(assert (=> bs!1101680 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212596))))

(assert (=> bs!1101684 (= (= lt!1874835 lt!1874744) (= lambda!212602 lambda!212586))))

(assert (=> bs!1101685 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212573))))

(assert (=> bs!1101686 (= (= lt!1874835 lt!1874764) (= lambda!212602 lambda!212589))))

(assert (=> bs!1101687 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212600))))

(assert (=> bs!1101688 (not (= lambda!212602 lambda!212594))))

(assert (=> bs!1101689 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212587))))

(assert (=> bs!1101690 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212583))))

(assert (=> bs!1101691 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212574))))

(assert (=> bs!1101686 (= (= lt!1874835 lt!1874455) (= lambda!212602 lambda!212588))))

(assert (=> bs!1101692 (= (= lt!1874835 lt!1874679) (= lambda!212602 lambda!212576))))

(assert (=> bs!1101682 (= (= lt!1874835 lt!1874814) (= lambda!212602 lambda!212598))))

(assert (=> bs!1101691 (= (= lt!1874835 lt!1874678) (= lambda!212602 lambda!212575))))

(assert (=> bs!1101693 (not (= lambda!212602 lambda!212486))))

(assert (=> bs!1101694 (= (= lt!1874835 lt!1874815) (= lambda!212602 lambda!212599))))

(assert (=> b!4710220 true))

(declare-fun bs!1101695 () Bool)

(declare-fun d!1498947 () Bool)

(assert (= bs!1101695 (and d!1498947 d!1498929)))

(declare-fun lt!1874836 () ListMap!5153)

(declare-fun lambda!212603 () Int)

(assert (=> bs!1101695 (= (= lt!1874836 lt!1874765) (= lambda!212603 lambda!212590))))

(declare-fun bs!1101696 () Bool)

(assert (= bs!1101696 (and d!1498947 b!4710215)))

(assert (=> bs!1101696 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212597))))

(declare-fun bs!1101697 () Bool)

(assert (= bs!1101697 (and d!1498947 b!4710164)))

(assert (=> bs!1101697 (= (= lt!1874836 lt!1874743) (= lambda!212603 lambda!212585))))

(assert (=> bs!1101697 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212584))))

(declare-fun bs!1101698 () Bool)

(assert (= bs!1101698 (and d!1498947 b!4710220)))

(assert (=> bs!1101698 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212601))))

(declare-fun bs!1101699 () Bool)

(assert (= bs!1101699 (and d!1498947 b!4710216)))

(assert (=> bs!1101699 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212596))))

(declare-fun bs!1101700 () Bool)

(assert (= bs!1101700 (and d!1498947 d!1498925)))

(assert (=> bs!1101700 (= (= lt!1874836 lt!1874744) (= lambda!212603 lambda!212586))))

(declare-fun bs!1101701 () Bool)

(assert (= bs!1101701 (and d!1498947 b!4710092)))

(assert (=> bs!1101701 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212573))))

(declare-fun bs!1101702 () Bool)

(assert (= bs!1101702 (and d!1498947 b!4710169)))

(assert (=> bs!1101702 (= (= lt!1874836 lt!1874764) (= lambda!212603 lambda!212589))))

(declare-fun bs!1101703 () Bool)

(assert (= bs!1101703 (and d!1498947 b!4710221)))

(assert (=> bs!1101703 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212600))))

(declare-fun bs!1101704 () Bool)

(assert (= bs!1101704 (and d!1498947 d!1498937)))

(assert (=> bs!1101704 (not (= lambda!212603 lambda!212594))))

(declare-fun bs!1101705 () Bool)

(assert (= bs!1101705 (and d!1498947 b!4710170)))

(assert (=> bs!1101705 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212587))))

(declare-fun bs!1101706 () Bool)

(assert (= bs!1101706 (and d!1498947 b!4710165)))

(assert (=> bs!1101706 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212583))))

(assert (=> bs!1101698 (= (= lt!1874836 lt!1874835) (= lambda!212603 lambda!212602))))

(declare-fun bs!1101707 () Bool)

(assert (= bs!1101707 (and d!1498947 b!4710091)))

(assert (=> bs!1101707 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212574))))

(assert (=> bs!1101702 (= (= lt!1874836 lt!1874455) (= lambda!212603 lambda!212588))))

(declare-fun bs!1101708 () Bool)

(assert (= bs!1101708 (and d!1498947 d!1498847)))

(assert (=> bs!1101708 (= (= lt!1874836 lt!1874679) (= lambda!212603 lambda!212576))))

(assert (=> bs!1101696 (= (= lt!1874836 lt!1874814) (= lambda!212603 lambda!212598))))

(assert (=> bs!1101707 (= (= lt!1874836 lt!1874678) (= lambda!212603 lambda!212575))))

(declare-fun bs!1101709 () Bool)

(assert (= bs!1101709 (and d!1498947 d!1498845)))

(assert (=> bs!1101709 (not (= lambda!212603 lambda!212486))))

(declare-fun bs!1101710 () Bool)

(assert (= bs!1101710 (and d!1498947 d!1498945)))

(assert (=> bs!1101710 (= (= lt!1874836 lt!1874815) (= lambda!212603 lambda!212599))))

(assert (=> d!1498947 true))

(declare-fun b!4710218 () Bool)

(declare-fun e!2937847 () Bool)

(assert (=> b!4710218 (= e!2937847 (invariantList!1472 (toList!5790 lt!1874836)))))

(declare-fun b!4710219 () Bool)

(declare-fun e!2937846 () Bool)

(assert (=> b!4710219 (= e!2937846 (forall!11481 (toList!5790 lt!1874455) lambda!212602))))

(declare-fun e!2937845 () ListMap!5153)

(assert (=> b!4710220 (= e!2937845 lt!1874835)))

(declare-fun lt!1874849 () ListMap!5153)

(assert (=> b!4710220 (= lt!1874849 (+!2214 lt!1874455 (h!58970 lt!1874458)))))

(assert (=> b!4710220 (= lt!1874835 (addToMapMapFromBucket!1380 (t!360023 lt!1874458) (+!2214 lt!1874455 (h!58970 lt!1874458))))))

(declare-fun lt!1874834 () Unit!127752)

(declare-fun call!329325 () Unit!127752)

(assert (=> b!4710220 (= lt!1874834 call!329325)))

(assert (=> b!4710220 (forall!11481 (toList!5790 lt!1874455) lambda!212601)))

(declare-fun lt!1874842 () Unit!127752)

(assert (=> b!4710220 (= lt!1874842 lt!1874834)))

(assert (=> b!4710220 (forall!11481 (toList!5790 lt!1874849) lambda!212602)))

(declare-fun lt!1874840 () Unit!127752)

(declare-fun Unit!127857 () Unit!127752)

(assert (=> b!4710220 (= lt!1874840 Unit!127857)))

(declare-fun call!329323 () Bool)

(assert (=> b!4710220 call!329323))

(declare-fun lt!1874846 () Unit!127752)

(declare-fun Unit!127858 () Unit!127752)

(assert (=> b!4710220 (= lt!1874846 Unit!127858)))

(declare-fun lt!1874833 () Unit!127752)

(declare-fun Unit!127859 () Unit!127752)

(assert (=> b!4710220 (= lt!1874833 Unit!127859)))

(declare-fun lt!1874838 () Unit!127752)

(assert (=> b!4710220 (= lt!1874838 (forallContained!3560 (toList!5790 lt!1874849) lambda!212602 (h!58970 lt!1874458)))))

(assert (=> b!4710220 (contains!15968 lt!1874849 (_1!30391 (h!58970 lt!1874458)))))

(declare-fun lt!1874847 () Unit!127752)

(declare-fun Unit!127860 () Unit!127752)

(assert (=> b!4710220 (= lt!1874847 Unit!127860)))

(assert (=> b!4710220 (contains!15968 lt!1874835 (_1!30391 (h!58970 lt!1874458)))))

(declare-fun lt!1874844 () Unit!127752)

(declare-fun Unit!127861 () Unit!127752)

(assert (=> b!4710220 (= lt!1874844 Unit!127861)))

(assert (=> b!4710220 (forall!11481 lt!1874458 lambda!212602)))

(declare-fun lt!1874839 () Unit!127752)

(declare-fun Unit!127862 () Unit!127752)

(assert (=> b!4710220 (= lt!1874839 Unit!127862)))

(assert (=> b!4710220 (forall!11481 (toList!5790 lt!1874849) lambda!212602)))

(declare-fun lt!1874848 () Unit!127752)

(declare-fun Unit!127863 () Unit!127752)

(assert (=> b!4710220 (= lt!1874848 Unit!127863)))

(declare-fun lt!1874853 () Unit!127752)

(declare-fun Unit!127864 () Unit!127752)

(assert (=> b!4710220 (= lt!1874853 Unit!127864)))

(declare-fun lt!1874845 () Unit!127752)

(assert (=> b!4710220 (= lt!1874845 (addForallContainsKeyThenBeforeAdding!759 lt!1874455 lt!1874835 (_1!30391 (h!58970 lt!1874458)) (_2!30391 (h!58970 lt!1874458))))))

(declare-fun call!329324 () Bool)

(assert (=> b!4710220 call!329324))

(declare-fun lt!1874850 () Unit!127752)

(assert (=> b!4710220 (= lt!1874850 lt!1874845)))

(assert (=> b!4710220 (forall!11481 (toList!5790 lt!1874455) lambda!212602)))

(declare-fun lt!1874851 () Unit!127752)

(declare-fun Unit!127865 () Unit!127752)

(assert (=> b!4710220 (= lt!1874851 Unit!127865)))

(declare-fun res!1990550 () Bool)

(assert (=> b!4710220 (= res!1990550 (forall!11481 lt!1874458 lambda!212602))))

(assert (=> b!4710220 (=> (not res!1990550) (not e!2937846))))

(assert (=> b!4710220 e!2937846))

(declare-fun lt!1874843 () Unit!127752)

(declare-fun Unit!127866 () Unit!127752)

(assert (=> b!4710220 (= lt!1874843 Unit!127866)))

(declare-fun c!804751 () Bool)

(declare-fun bm!329318 () Bool)

(assert (=> bm!329318 (= call!329324 (forall!11481 (toList!5790 lt!1874455) (ite c!804751 lambda!212600 lambda!212602)))))

(declare-fun bm!329319 () Bool)

(assert (=> bm!329319 (= call!329325 (lemmaContainsAllItsOwnKeys!760 lt!1874455))))

(assert (=> d!1498947 e!2937847))

(declare-fun res!1990551 () Bool)

(assert (=> d!1498947 (=> (not res!1990551) (not e!2937847))))

(assert (=> d!1498947 (= res!1990551 (forall!11481 lt!1874458 lambda!212603))))

(assert (=> d!1498947 (= lt!1874836 e!2937845)))

(assert (=> d!1498947 (= c!804751 ((_ is Nil!52663) lt!1874458))))

(assert (=> d!1498947 (noDuplicateKeys!1950 lt!1874458)))

(assert (=> d!1498947 (= (addToMapMapFromBucket!1380 lt!1874458 lt!1874455) lt!1874836)))

(assert (=> b!4710221 (= e!2937845 lt!1874455)))

(declare-fun lt!1874837 () Unit!127752)

(assert (=> b!4710221 (= lt!1874837 call!329325)))

(assert (=> b!4710221 call!329323))

(declare-fun lt!1874852 () Unit!127752)

(assert (=> b!4710221 (= lt!1874852 lt!1874837)))

(assert (=> b!4710221 call!329324))

(declare-fun lt!1874841 () Unit!127752)

(declare-fun Unit!127867 () Unit!127752)

(assert (=> b!4710221 (= lt!1874841 Unit!127867)))

(declare-fun bm!329320 () Bool)

(assert (=> bm!329320 (= call!329323 (forall!11481 (ite c!804751 (toList!5790 lt!1874455) (t!360023 lt!1874458)) (ite c!804751 lambda!212600 lambda!212602)))))

(declare-fun b!4710222 () Bool)

(declare-fun res!1990549 () Bool)

(assert (=> b!4710222 (=> (not res!1990549) (not e!2937847))))

(assert (=> b!4710222 (= res!1990549 (forall!11481 (toList!5790 lt!1874455) lambda!212603))))

(assert (= (and d!1498947 c!804751) b!4710221))

(assert (= (and d!1498947 (not c!804751)) b!4710220))

(assert (= (and b!4710220 res!1990550) b!4710219))

(assert (= (or b!4710221 b!4710220) bm!329319))

(assert (= (or b!4710221 b!4710220) bm!329318))

(assert (= (or b!4710221 b!4710220) bm!329320))

(assert (= (and d!1498947 res!1990551) b!4710222))

(assert (= (and b!4710222 res!1990549) b!4710218))

(assert (=> bm!329319 m!5635139))

(declare-fun m!5635397 () Bool)

(assert (=> bm!329320 m!5635397))

(declare-fun m!5635399 () Bool)

(assert (=> d!1498947 m!5635399))

(assert (=> d!1498947 m!5635231))

(declare-fun m!5635401 () Bool)

(assert (=> b!4710222 m!5635401))

(declare-fun m!5635403 () Bool)

(assert (=> b!4710219 m!5635403))

(declare-fun m!5635405 () Bool)

(assert (=> b!4710220 m!5635405))

(declare-fun m!5635407 () Bool)

(assert (=> b!4710220 m!5635407))

(assert (=> b!4710220 m!5635403))

(declare-fun m!5635409 () Bool)

(assert (=> b!4710220 m!5635409))

(declare-fun m!5635411 () Bool)

(assert (=> b!4710220 m!5635411))

(declare-fun m!5635413 () Bool)

(assert (=> b!4710220 m!5635413))

(assert (=> b!4710220 m!5635405))

(declare-fun m!5635415 () Bool)

(assert (=> b!4710220 m!5635415))

(declare-fun m!5635417 () Bool)

(assert (=> b!4710220 m!5635417))

(assert (=> b!4710220 m!5635415))

(assert (=> b!4710220 m!5635407))

(declare-fun m!5635419 () Bool)

(assert (=> b!4710220 m!5635419))

(declare-fun m!5635421 () Bool)

(assert (=> b!4710220 m!5635421))

(declare-fun m!5635423 () Bool)

(assert (=> b!4710218 m!5635423))

(declare-fun m!5635425 () Bool)

(assert (=> bm!329318 m!5635425))

(assert (=> b!4709979 d!1498947))

(declare-fun bs!1101711 () Bool)

(declare-fun d!1498949 () Bool)

(assert (= bs!1101711 (and d!1498949 start!478528)))

(declare-fun lambda!212604 () Int)

(assert (=> bs!1101711 (= lambda!212604 lambda!212483)))

(declare-fun bs!1101712 () Bool)

(assert (= bs!1101712 (and d!1498949 d!1498895)))

(assert (=> bs!1101712 (= lambda!212604 lambda!212580)))

(declare-fun bs!1101713 () Bool)

(assert (= bs!1101713 (and d!1498949 d!1498933)))

(assert (=> bs!1101713 (not (= lambda!212604 lambda!212593))))

(declare-fun bs!1101714 () Bool)

(assert (= bs!1101714 (and d!1498949 d!1498941)))

(assert (=> bs!1101714 (= lambda!212604 lambda!212595)))

(declare-fun lt!1874854 () ListMap!5153)

(assert (=> d!1498949 (invariantList!1472 (toList!5790 lt!1874854))))

(declare-fun e!2937848 () ListMap!5153)

(assert (=> d!1498949 (= lt!1874854 e!2937848)))

(declare-fun c!804752 () Bool)

(assert (=> d!1498949 (= c!804752 ((_ is Cons!52664) (Cons!52664 (tuple2!54197 hash!405 newBucket!218) (t!360024 (toList!5789 lm!2023)))))))

(assert (=> d!1498949 (forall!11479 (Cons!52664 (tuple2!54197 hash!405 newBucket!218) (t!360024 (toList!5789 lm!2023))) lambda!212604)))

(assert (=> d!1498949 (= (extractMap!1976 (Cons!52664 (tuple2!54197 hash!405 newBucket!218) (t!360024 (toList!5789 lm!2023)))) lt!1874854)))

(declare-fun b!4710223 () Bool)

(assert (=> b!4710223 (= e!2937848 (addToMapMapFromBucket!1380 (_2!30392 (h!58971 (Cons!52664 (tuple2!54197 hash!405 newBucket!218) (t!360024 (toList!5789 lm!2023))))) (extractMap!1976 (t!360024 (Cons!52664 (tuple2!54197 hash!405 newBucket!218) (t!360024 (toList!5789 lm!2023)))))))))

(declare-fun b!4710224 () Bool)

(assert (=> b!4710224 (= e!2937848 (ListMap!5154 Nil!52663))))

(assert (= (and d!1498949 c!804752) b!4710223))

(assert (= (and d!1498949 (not c!804752)) b!4710224))

(declare-fun m!5635427 () Bool)

(assert (=> d!1498949 m!5635427))

(declare-fun m!5635429 () Bool)

(assert (=> d!1498949 m!5635429))

(declare-fun m!5635431 () Bool)

(assert (=> b!4710223 m!5635431))

(assert (=> b!4710223 m!5635431))

(declare-fun m!5635433 () Bool)

(assert (=> b!4710223 m!5635433))

(assert (=> b!4709989 d!1498949))

(declare-fun bs!1101715 () Bool)

(declare-fun d!1498951 () Bool)

(assert (= bs!1101715 (and d!1498951 d!1498941)))

(declare-fun lambda!212605 () Int)

(assert (=> bs!1101715 (= lambda!212605 lambda!212595)))

(declare-fun bs!1101716 () Bool)

(assert (= bs!1101716 (and d!1498951 start!478528)))

(assert (=> bs!1101716 (= lambda!212605 lambda!212483)))

(declare-fun bs!1101717 () Bool)

(assert (= bs!1101717 (and d!1498951 d!1498933)))

(assert (=> bs!1101717 (not (= lambda!212605 lambda!212593))))

(declare-fun bs!1101718 () Bool)

(assert (= bs!1101718 (and d!1498951 d!1498949)))

(assert (=> bs!1101718 (= lambda!212605 lambda!212604)))

(declare-fun bs!1101719 () Bool)

(assert (= bs!1101719 (and d!1498951 d!1498895)))

(assert (=> bs!1101719 (= lambda!212605 lambda!212580)))

(declare-fun lt!1874855 () ListMap!5153)

(assert (=> d!1498951 (invariantList!1472 (toList!5790 lt!1874855))))

(declare-fun e!2937849 () ListMap!5153)

(assert (=> d!1498951 (= lt!1874855 e!2937849)))

(declare-fun c!804753 () Bool)

(assert (=> d!1498951 (= c!804753 ((_ is Cons!52664) (Cons!52664 (tuple2!54197 hash!405 lt!1874458) (t!360024 (toList!5789 lm!2023)))))))

(assert (=> d!1498951 (forall!11479 (Cons!52664 (tuple2!54197 hash!405 lt!1874458) (t!360024 (toList!5789 lm!2023))) lambda!212605)))

(assert (=> d!1498951 (= (extractMap!1976 (Cons!52664 (tuple2!54197 hash!405 lt!1874458) (t!360024 (toList!5789 lm!2023)))) lt!1874855)))

(declare-fun b!4710225 () Bool)

(assert (=> b!4710225 (= e!2937849 (addToMapMapFromBucket!1380 (_2!30392 (h!58971 (Cons!52664 (tuple2!54197 hash!405 lt!1874458) (t!360024 (toList!5789 lm!2023))))) (extractMap!1976 (t!360024 (Cons!52664 (tuple2!54197 hash!405 lt!1874458) (t!360024 (toList!5789 lm!2023)))))))))

(declare-fun b!4710226 () Bool)

(assert (=> b!4710226 (= e!2937849 (ListMap!5154 Nil!52663))))

(assert (= (and d!1498951 c!804753) b!4710225))

(assert (= (and d!1498951 (not c!804753)) b!4710226))

(declare-fun m!5635435 () Bool)

(assert (=> d!1498951 m!5635435))

(declare-fun m!5635437 () Bool)

(assert (=> d!1498951 m!5635437))

(declare-fun m!5635439 () Bool)

(assert (=> b!4710225 m!5635439))

(assert (=> b!4710225 m!5635439))

(declare-fun m!5635441 () Bool)

(assert (=> b!4710225 m!5635441))

(assert (=> b!4709989 d!1498951))

(declare-fun b!4710237 () Bool)

(declare-fun e!2937855 () List!52787)

(assert (=> b!4710237 (= e!2937855 (Cons!52663 (h!58970 oldBucket!34) (removePairForKey!1545 (t!360023 oldBucket!34) key!4653)))))

(declare-fun b!4710235 () Bool)

(declare-fun e!2937854 () List!52787)

(assert (=> b!4710235 (= e!2937854 (t!360023 oldBucket!34))))

(declare-fun d!1498953 () Bool)

(declare-fun lt!1874858 () List!52787)

(assert (=> d!1498953 (not (containsKey!3251 lt!1874858 key!4653))))

(assert (=> d!1498953 (= lt!1874858 e!2937854)))

(declare-fun c!804759 () Bool)

(assert (=> d!1498953 (= c!804759 (and ((_ is Cons!52663) oldBucket!34) (= (_1!30391 (h!58970 oldBucket!34)) key!4653)))))

(assert (=> d!1498953 (noDuplicateKeys!1950 oldBucket!34)))

(assert (=> d!1498953 (= (removePairForKey!1545 oldBucket!34 key!4653) lt!1874858)))

(declare-fun b!4710238 () Bool)

(assert (=> b!4710238 (= e!2937855 Nil!52663)))

(declare-fun b!4710236 () Bool)

(assert (=> b!4710236 (= e!2937854 e!2937855)))

(declare-fun c!804758 () Bool)

(assert (=> b!4710236 (= c!804758 ((_ is Cons!52663) oldBucket!34))))

(assert (= (and d!1498953 c!804759) b!4710235))

(assert (= (and d!1498953 (not c!804759)) b!4710236))

(assert (= (and b!4710236 c!804758) b!4710237))

(assert (= (and b!4710236 (not c!804758)) b!4710238))

(declare-fun m!5635443 () Bool)

(assert (=> b!4710237 m!5635443))

(declare-fun m!5635445 () Bool)

(assert (=> d!1498953 m!5635445))

(assert (=> d!1498953 m!5634839))

(assert (=> b!4709988 d!1498953))

(declare-fun d!1498955 () Bool)

(declare-fun res!1990556 () Bool)

(declare-fun e!2937860 () Bool)

(assert (=> d!1498955 (=> res!1990556 e!2937860)))

(assert (=> d!1498955 (= res!1990556 ((_ is Nil!52664) (toList!5789 lm!2023)))))

(assert (=> d!1498955 (= (forall!11479 (toList!5789 lm!2023) lambda!212483) e!2937860)))

(declare-fun b!4710243 () Bool)

(declare-fun e!2937861 () Bool)

(assert (=> b!4710243 (= e!2937860 e!2937861)))

(declare-fun res!1990557 () Bool)

(assert (=> b!4710243 (=> (not res!1990557) (not e!2937861))))

(declare-fun dynLambda!21775 (Int tuple2!54196) Bool)

(assert (=> b!4710243 (= res!1990557 (dynLambda!21775 lambda!212483 (h!58971 (toList!5789 lm!2023))))))

(declare-fun b!4710244 () Bool)

(assert (=> b!4710244 (= e!2937861 (forall!11479 (t!360024 (toList!5789 lm!2023)) lambda!212483))))

(assert (= (and d!1498955 (not res!1990556)) b!4710243))

(assert (= (and b!4710243 res!1990557) b!4710244))

(declare-fun b_lambda!177641 () Bool)

(assert (=> (not b_lambda!177641) (not b!4710243)))

(declare-fun m!5635447 () Bool)

(assert (=> b!4710243 m!5635447))

(declare-fun m!5635449 () Bool)

(assert (=> b!4710244 m!5635449))

(assert (=> start!478528 d!1498955))

(declare-fun d!1498957 () Bool)

(declare-fun isStrictlySorted!711 (List!52788) Bool)

(assert (=> d!1498957 (= (inv!67899 lm!2023) (isStrictlySorted!711 (toList!5789 lm!2023)))))

(declare-fun bs!1101720 () Bool)

(assert (= bs!1101720 d!1498957))

(declare-fun m!5635451 () Bool)

(assert (=> bs!1101720 m!5635451))

(assert (=> start!478528 d!1498957))

(declare-fun e!2937864 () Bool)

(declare-fun b!4710249 () Bool)

(declare-fun tp!1347414 () Bool)

(assert (=> b!4710249 (= e!2937864 (and tp_is_empty!31093 tp_is_empty!31095 tp!1347414))))

(assert (=> b!4709975 (= tp!1347401 e!2937864)))

(assert (= (and b!4709975 ((_ is Cons!52663) (t!360023 newBucket!218))) b!4710249))

(declare-fun b!4710254 () Bool)

(declare-fun e!2937867 () Bool)

(declare-fun tp!1347419 () Bool)

(declare-fun tp!1347420 () Bool)

(assert (=> b!4710254 (= e!2937867 (and tp!1347419 tp!1347420))))

(assert (=> b!4709978 (= tp!1347399 e!2937867)))

(assert (= (and b!4709978 ((_ is Cons!52664) (toList!5789 lm!2023))) b!4710254))

(declare-fun e!2937868 () Bool)

(declare-fun b!4710255 () Bool)

(declare-fun tp!1347421 () Bool)

(assert (=> b!4710255 (= e!2937868 (and tp_is_empty!31093 tp_is_empty!31095 tp!1347421))))

(assert (=> b!4709977 (= tp!1347400 e!2937868)))

(assert (= (and b!4709977 ((_ is Cons!52663) (t!360023 oldBucket!34))) b!4710255))

(declare-fun b_lambda!177643 () Bool)

(assert (= b_lambda!177641 (or start!478528 b_lambda!177643)))

(declare-fun bs!1101721 () Bool)

(declare-fun d!1498959 () Bool)

(assert (= bs!1101721 (and d!1498959 start!478528)))

(assert (=> bs!1101721 (= (dynLambda!21775 lambda!212483 (h!58971 (toList!5789 lm!2023))) (noDuplicateKeys!1950 (_2!30392 (h!58971 (toList!5789 lm!2023)))))))

(assert (=> bs!1101721 m!5635151))

(assert (=> b!4710243 d!1498959))

(check-sat (not b!4710091) (not d!1498845) (not b!4710213) (not bs!1101721) (not d!1498939) (not b!4710237) (not b!4710203) (not bm!329320) (not b!4710225) (not b!4710249) (not d!1498947) (not bm!329308) (not bm!329300) (not d!1498949) (not b!4710180) (not b!4710215) (not bm!329319) (not b!4710164) (not b!4710209) (not d!1498895) (not b!4710169) (not d!1498843) (not b!4710207) (not d!1498951) (not b!4710202) (not b!4710172) (not b!4710201) (not b!4710162) (not bm!329311) (not bm!329306) (not b!4710219) (not d!1498847) (not b!4710255) (not b!4710217) (not b!4710214) (not b!4710166) (not d!1498937) (not b!4710090) (not b!4710208) (not d!1498903) (not b!4710244) (not d!1498909) (not b!4710218) (not bm!329318) (not d!1498927) (not b!4710173) (not d!1498917) (not b!4710205) (not d!1498931) (not d!1498945) (not d!1498925) tp_is_empty!31095 (not b!4710115) (not b!4710204) (not b!4710167) (not bm!329301) tp_is_empty!31093 (not b!4710223) (not b!4710160) (not d!1498957) (not bm!329309) (not bm!329315) (not b!4710108) (not bm!329310) (not b!4710212) (not bm!329316) (not b!4710222) (not d!1498933) (not d!1498923) (not b!4710093) (not b!4710161) (not b!4710181) (not b!4710163) (not bm!329314) (not d!1498953) (not d!1498929) (not b!4710211) (not b!4710220) (not bm!329307) (not b!4710171) (not b!4710089) (not bm!329317) (not b!4710254) (not d!1498941) (not b!4710168) (not b_lambda!177643) (not bm!329302))
(check-sat)
