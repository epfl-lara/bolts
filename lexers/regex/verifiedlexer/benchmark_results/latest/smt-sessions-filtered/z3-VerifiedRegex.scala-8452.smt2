; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437692 () Bool)

(assert start!437692)

(declare-fun b!4462674 () Bool)

(declare-fun e!2778836 () Bool)

(declare-fun e!2778835 () Bool)

(assert (=> b!4462674 (= e!2778836 (not e!2778835))))

(declare-fun res!1851018 () Bool)

(assert (=> b!4462674 (=> res!1851018 e!2778835)))

(declare-datatypes ((K!11665 0))(
  ( (K!11666 (val!17603 Int)) )
))
(declare-fun key!3287 () K!11665)

(declare-datatypes ((V!11911 0))(
  ( (V!11912 (val!17604 Int)) )
))
(declare-datatypes ((tuple2!50474 0))(
  ( (tuple2!50475 (_1!28531 K!11665) (_2!28531 V!11911)) )
))
(declare-datatypes ((List!50366 0))(
  ( (Nil!50242) (Cons!50242 (h!55991 tuple2!50474) (t!357316 List!50366)) )
))
(declare-fun newBucket!178 () List!50366)

(declare-fun lt!1653321 () List!50366)

(declare-fun removePairForKey!637 (List!50366 K!11665) List!50366)

(assert (=> b!4462674 (= res!1851018 (not (= newBucket!178 (removePairForKey!637 lt!1653321 key!3287))))))

(declare-datatypes ((Unit!86927 0))(
  ( (Unit!86928) )
))
(declare-fun lt!1653323 () Unit!86927)

(declare-fun lambda!162073 () Int)

(declare-datatypes ((tuple2!50476 0))(
  ( (tuple2!50477 (_1!28532 (_ BitVec 64)) (_2!28532 List!50366)) )
))
(declare-datatypes ((List!50367 0))(
  ( (Nil!50243) (Cons!50243 (h!55992 tuple2!50476) (t!357317 List!50367)) )
))
(declare-datatypes ((ListLongMap!2659 0))(
  ( (ListLongMap!2660 (toList!4027 List!50367)) )
))
(declare-fun lm!1477 () ListLongMap!2659)

(declare-fun lt!1653318 () tuple2!50476)

(declare-fun forallContained!2227 (List!50367 Int tuple2!50476) Unit!86927)

(assert (=> b!4462674 (= lt!1653323 (forallContained!2227 (toList!4027 lm!1477) lambda!162073 lt!1653318))))

(declare-fun contains!12769 (List!50367 tuple2!50476) Bool)

(assert (=> b!4462674 (contains!12769 (toList!4027 lm!1477) lt!1653318)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4462674 (= lt!1653318 (tuple2!50477 hash!344 lt!1653321))))

(declare-fun lt!1653322 () Unit!86927)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!522 (List!50367 (_ BitVec 64) List!50366) Unit!86927)

(assert (=> b!4462674 (= lt!1653322 (lemmaGetValueByKeyImpliesContainsTuple!522 (toList!4027 lm!1477) hash!344 lt!1653321))))

(declare-fun apply!11747 (ListLongMap!2659 (_ BitVec 64)) List!50366)

(assert (=> b!4462674 (= lt!1653321 (apply!11747 lm!1477 hash!344))))

(declare-fun lt!1653320 () (_ BitVec 64))

(declare-fun contains!12770 (ListLongMap!2659 (_ BitVec 64)) Bool)

(assert (=> b!4462674 (contains!12770 lm!1477 lt!1653320)))

(declare-datatypes ((Hashable!5405 0))(
  ( (HashableExt!5404 (__x!31108 Int)) )
))
(declare-fun hashF!1107 () Hashable!5405)

(declare-fun lt!1653325 () Unit!86927)

(declare-fun lemmaInGenMapThenLongMapContainsHash!84 (ListLongMap!2659 K!11665 Hashable!5405) Unit!86927)

(assert (=> b!4462674 (= lt!1653325 (lemmaInGenMapThenLongMapContainsHash!84 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4462675 () Bool)

(declare-fun res!1851017 () Bool)

(declare-fun e!2778834 () Bool)

(assert (=> b!4462675 (=> (not res!1851017) (not e!2778834))))

(declare-datatypes ((ListMap!3289 0))(
  ( (ListMap!3290 (toList!4028 List!50366)) )
))
(declare-fun contains!12771 (ListMap!3289 K!11665) Bool)

(declare-fun extractMap!1066 (List!50367) ListMap!3289)

(assert (=> b!4462675 (= res!1851017 (contains!12771 (extractMap!1066 (toList!4027 lm!1477)) key!3287))))

(declare-fun b!4462676 () Bool)

(declare-fun res!1851019 () Bool)

(assert (=> b!4462676 (=> (not res!1851019) (not e!2778834))))

(declare-fun allKeysSameHashInMap!1117 (ListLongMap!2659 Hashable!5405) Bool)

(assert (=> b!4462676 (= res!1851019 (allKeysSameHashInMap!1117 lm!1477 hashF!1107))))

(declare-fun b!4462677 () Bool)

(declare-fun e!2778839 () Bool)

(declare-fun lt!1653316 () tuple2!50476)

(declare-fun +!1344 (ListLongMap!2659 tuple2!50476) ListLongMap!2659)

(assert (=> b!4462677 (= e!2778839 (not (= (toList!4027 (+!1344 lm!1477 lt!1653316)) Nil!50243)))))

(declare-fun eq!503 (ListMap!3289 ListMap!3289) Bool)

(declare-fun -!272 (ListMap!3289 K!11665) ListMap!3289)

(assert (=> b!4462677 (eq!503 (extractMap!1066 (Cons!50243 lt!1653316 Nil!50243)) (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287))))

(assert (=> b!4462677 (= lt!1653316 (tuple2!50477 hash!344 newBucket!178))))

(declare-fun lt!1653319 () Unit!86927)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!2 ((_ BitVec 64) List!50366 List!50366 K!11665 Hashable!5405) Unit!86927)

(assert (=> b!4462677 (= lt!1653319 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!2 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1653326 () List!50367)

(assert (=> b!4462677 (contains!12771 (extractMap!1066 lt!1653326) key!3287)))

(declare-fun lt!1653315 () Unit!86927)

(declare-fun lemmaListContainsThenExtractedMapContains!6 (ListLongMap!2659 K!11665 Hashable!5405) Unit!86927)

(assert (=> b!4462677 (= lt!1653315 (lemmaListContainsThenExtractedMapContains!6 (ListLongMap!2660 lt!1653326) key!3287 hashF!1107))))

(declare-fun b!4462678 () Bool)

(declare-fun e!2778837 () Unit!86927)

(declare-fun Unit!86929 () Unit!86927)

(assert (=> b!4462678 (= e!2778837 Unit!86929)))

(declare-fun lt!1653314 () Unit!86927)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!10 (ListLongMap!2659 K!11665 Hashable!5405) Unit!86927)

(assert (=> b!4462678 (= lt!1653314 (lemmaNotInItsHashBucketThenNotInMap!10 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4462678 false))

(declare-fun b!4462680 () Bool)

(declare-fun e!2778840 () Bool)

(assert (=> b!4462680 (= e!2778835 e!2778840)))

(declare-fun res!1851020 () Bool)

(assert (=> b!4462680 (=> res!1851020 e!2778840)))

(declare-fun lt!1653324 () Bool)

(assert (=> b!4462680 (= res!1851020 lt!1653324)))

(declare-fun lt!1653317 () Unit!86927)

(assert (=> b!4462680 (= lt!1653317 e!2778837)))

(declare-fun c!759360 () Bool)

(assert (=> b!4462680 (= c!759360 lt!1653324)))

(declare-fun containsKey!1426 (List!50366 K!11665) Bool)

(assert (=> b!4462680 (= lt!1653324 (not (containsKey!1426 (_2!28532 (h!55992 (toList!4027 lm!1477))) key!3287)))))

(declare-fun b!4462681 () Bool)

(assert (=> b!4462681 (= e!2778834 e!2778836)))

(declare-fun res!1851012 () Bool)

(assert (=> b!4462681 (=> (not res!1851012) (not e!2778836))))

(assert (=> b!4462681 (= res!1851012 (= lt!1653320 hash!344))))

(declare-fun hash!2395 (Hashable!5405 K!11665) (_ BitVec 64))

(assert (=> b!4462681 (= lt!1653320 (hash!2395 hashF!1107 key!3287))))

(declare-fun b!4462682 () Bool)

(assert (=> b!4462682 (= e!2778840 e!2778839)))

(declare-fun res!1851021 () Bool)

(assert (=> b!4462682 (=> res!1851021 e!2778839)))

(declare-fun containsKeyBiggerList!10 (List!50367 K!11665) Bool)

(assert (=> b!4462682 (= res!1851021 (not (containsKeyBiggerList!10 lt!1653326 key!3287)))))

(assert (=> b!4462682 (= lt!1653326 (Cons!50243 (h!55992 (toList!4027 lm!1477)) Nil!50243))))

(declare-fun b!4462683 () Bool)

(declare-fun res!1851014 () Bool)

(assert (=> b!4462683 (=> res!1851014 e!2778835)))

(get-info :version)

(assert (=> b!4462683 (= res!1851014 (or ((_ is Nil!50243) (toList!4027 lm!1477)) (not (= (_1!28532 (h!55992 (toList!4027 lm!1477))) hash!344))))))

(declare-fun tp_is_empty!27317 () Bool)

(declare-fun b!4462684 () Bool)

(declare-fun tp!1335982 () Bool)

(declare-fun e!2778841 () Bool)

(declare-fun tp_is_empty!27319 () Bool)

(assert (=> b!4462684 (= e!2778841 (and tp_is_empty!27317 tp_is_empty!27319 tp!1335982))))

(declare-fun b!4462679 () Bool)

(declare-fun res!1851015 () Bool)

(assert (=> b!4462679 (=> res!1851015 e!2778835)))

(declare-fun noDuplicateKeys!1010 (List!50366) Bool)

(assert (=> b!4462679 (= res!1851015 (not (noDuplicateKeys!1010 newBucket!178)))))

(declare-fun res!1851016 () Bool)

(assert (=> start!437692 (=> (not res!1851016) (not e!2778834))))

(declare-fun forall!9953 (List!50367 Int) Bool)

(assert (=> start!437692 (= res!1851016 (forall!9953 (toList!4027 lm!1477) lambda!162073))))

(assert (=> start!437692 e!2778834))

(assert (=> start!437692 true))

(declare-fun e!2778838 () Bool)

(declare-fun inv!65849 (ListLongMap!2659) Bool)

(assert (=> start!437692 (and (inv!65849 lm!1477) e!2778838)))

(assert (=> start!437692 tp_is_empty!27317))

(assert (=> start!437692 e!2778841))

(declare-fun b!4462685 () Bool)

(declare-fun res!1851013 () Bool)

(assert (=> b!4462685 (=> (not res!1851013) (not e!2778836))))

(declare-fun allKeysSameHash!864 (List!50366 (_ BitVec 64) Hashable!5405) Bool)

(assert (=> b!4462685 (= res!1851013 (allKeysSameHash!864 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4462686 () Bool)

(declare-fun Unit!86930 () Unit!86927)

(assert (=> b!4462686 (= e!2778837 Unit!86930)))

(declare-fun b!4462687 () Bool)

(declare-fun tp!1335983 () Bool)

(assert (=> b!4462687 (= e!2778838 tp!1335983)))

(assert (= (and start!437692 res!1851016) b!4462676))

(assert (= (and b!4462676 res!1851019) b!4462675))

(assert (= (and b!4462675 res!1851017) b!4462681))

(assert (= (and b!4462681 res!1851012) b!4462685))

(assert (= (and b!4462685 res!1851013) b!4462674))

(assert (= (and b!4462674 (not res!1851018)) b!4462679))

(assert (= (and b!4462679 (not res!1851015)) b!4462683))

(assert (= (and b!4462683 (not res!1851014)) b!4462680))

(assert (= (and b!4462680 c!759360) b!4462678))

(assert (= (and b!4462680 (not c!759360)) b!4462686))

(assert (= (and b!4462680 (not res!1851020)) b!4462682))

(assert (= (and b!4462682 (not res!1851021)) b!4462677))

(assert (= start!437692 b!4462687))

(assert (= (and start!437692 ((_ is Cons!50242) newBucket!178)) b!4462684))

(declare-fun m!5165683 () Bool)

(assert (=> b!4462681 m!5165683))

(declare-fun m!5165685 () Bool)

(assert (=> b!4462685 m!5165685))

(declare-fun m!5165687 () Bool)

(assert (=> b!4462674 m!5165687))

(declare-fun m!5165689 () Bool)

(assert (=> b!4462674 m!5165689))

(declare-fun m!5165691 () Bool)

(assert (=> b!4462674 m!5165691))

(declare-fun m!5165693 () Bool)

(assert (=> b!4462674 m!5165693))

(declare-fun m!5165695 () Bool)

(assert (=> b!4462674 m!5165695))

(declare-fun m!5165697 () Bool)

(assert (=> b!4462674 m!5165697))

(declare-fun m!5165699 () Bool)

(assert (=> b!4462674 m!5165699))

(declare-fun m!5165701 () Bool)

(assert (=> b!4462678 m!5165701))

(declare-fun m!5165703 () Bool)

(assert (=> start!437692 m!5165703))

(declare-fun m!5165705 () Bool)

(assert (=> start!437692 m!5165705))

(declare-fun m!5165707 () Bool)

(assert (=> b!4462679 m!5165707))

(declare-fun m!5165709 () Bool)

(assert (=> b!4462680 m!5165709))

(declare-fun m!5165711 () Bool)

(assert (=> b!4462677 m!5165711))

(declare-fun m!5165713 () Bool)

(assert (=> b!4462677 m!5165713))

(declare-fun m!5165715 () Bool)

(assert (=> b!4462677 m!5165715))

(declare-fun m!5165717 () Bool)

(assert (=> b!4462677 m!5165717))

(declare-fun m!5165719 () Bool)

(assert (=> b!4462677 m!5165719))

(assert (=> b!4462677 m!5165711))

(declare-fun m!5165721 () Bool)

(assert (=> b!4462677 m!5165721))

(assert (=> b!4462677 m!5165717))

(declare-fun m!5165723 () Bool)

(assert (=> b!4462677 m!5165723))

(assert (=> b!4462677 m!5165715))

(declare-fun m!5165725 () Bool)

(assert (=> b!4462677 m!5165725))

(declare-fun m!5165727 () Bool)

(assert (=> b!4462677 m!5165727))

(assert (=> b!4462677 m!5165721))

(declare-fun m!5165729 () Bool)

(assert (=> b!4462682 m!5165729))

(declare-fun m!5165731 () Bool)

(assert (=> b!4462676 m!5165731))

(declare-fun m!5165733 () Bool)

(assert (=> b!4462675 m!5165733))

(assert (=> b!4462675 m!5165733))

(declare-fun m!5165735 () Bool)

(assert (=> b!4462675 m!5165735))

(check-sat (not b!4462685) (not start!437692) (not b!4462678) (not b!4462684) (not b!4462675) (not b!4462681) (not b!4462687) (not b!4462674) (not b!4462680) (not b!4462677) tp_is_empty!27319 tp_is_empty!27317 (not b!4462676) (not b!4462682) (not b!4462679))
(check-sat)
(get-model)

(declare-fun d!1360443 () Bool)

(assert (=> d!1360443 true))

(assert (=> d!1360443 true))

(declare-fun lambda!162076 () Int)

(declare-fun forall!9955 (List!50366 Int) Bool)

(assert (=> d!1360443 (= (allKeysSameHash!864 newBucket!178 hash!344 hashF!1107) (forall!9955 newBucket!178 lambda!162076))))

(declare-fun bs!791626 () Bool)

(assert (= bs!791626 d!1360443))

(declare-fun m!5165737 () Bool)

(assert (=> bs!791626 m!5165737))

(assert (=> b!4462685 d!1360443))

(declare-fun bs!791627 () Bool)

(declare-fun d!1360445 () Bool)

(assert (= bs!791627 (and d!1360445 start!437692)))

(declare-fun lambda!162079 () Int)

(assert (=> bs!791627 (= lambda!162079 lambda!162073)))

(assert (=> d!1360445 (contains!12770 lm!1477 (hash!2395 hashF!1107 key!3287))))

(declare-fun lt!1653329 () Unit!86927)

(declare-fun choose!28429 (ListLongMap!2659 K!11665 Hashable!5405) Unit!86927)

(assert (=> d!1360445 (= lt!1653329 (choose!28429 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1360445 (forall!9953 (toList!4027 lm!1477) lambda!162079)))

(assert (=> d!1360445 (= (lemmaInGenMapThenLongMapContainsHash!84 lm!1477 key!3287 hashF!1107) lt!1653329)))

(declare-fun bs!791628 () Bool)

(assert (= bs!791628 d!1360445))

(assert (=> bs!791628 m!5165683))

(assert (=> bs!791628 m!5165683))

(declare-fun m!5165739 () Bool)

(assert (=> bs!791628 m!5165739))

(declare-fun m!5165741 () Bool)

(assert (=> bs!791628 m!5165741))

(declare-fun m!5165743 () Bool)

(assert (=> bs!791628 m!5165743))

(assert (=> b!4462674 d!1360445))

(declare-fun d!1360449 () Bool)

(declare-datatypes ((Option!10898 0))(
  ( (None!10897) (Some!10897 (v!44167 List!50366)) )
))
(declare-fun get!16361 (Option!10898) List!50366)

(declare-fun getValueByKey!884 (List!50367 (_ BitVec 64)) Option!10898)

(assert (=> d!1360449 (= (apply!11747 lm!1477 hash!344) (get!16361 (getValueByKey!884 (toList!4027 lm!1477) hash!344)))))

(declare-fun bs!791629 () Bool)

(assert (= bs!791629 d!1360449))

(declare-fun m!5165745 () Bool)

(assert (=> bs!791629 m!5165745))

(assert (=> bs!791629 m!5165745))

(declare-fun m!5165747 () Bool)

(assert (=> bs!791629 m!5165747))

(assert (=> b!4462674 d!1360449))

(declare-fun d!1360451 () Bool)

(declare-fun e!2778865 () Bool)

(assert (=> d!1360451 e!2778865))

(declare-fun res!1851042 () Bool)

(assert (=> d!1360451 (=> res!1851042 e!2778865)))

(declare-fun lt!1653343 () Bool)

(assert (=> d!1360451 (= res!1851042 (not lt!1653343))))

(declare-fun lt!1653344 () Bool)

(assert (=> d!1360451 (= lt!1653343 lt!1653344)))

(declare-fun lt!1653341 () Unit!86927)

(declare-fun e!2778864 () Unit!86927)

(assert (=> d!1360451 (= lt!1653341 e!2778864)))

(declare-fun c!759363 () Bool)

(assert (=> d!1360451 (= c!759363 lt!1653344)))

(declare-fun containsKey!1428 (List!50367 (_ BitVec 64)) Bool)

(assert (=> d!1360451 (= lt!1653344 (containsKey!1428 (toList!4027 lm!1477) lt!1653320))))

(assert (=> d!1360451 (= (contains!12770 lm!1477 lt!1653320) lt!1653343)))

(declare-fun b!4462720 () Bool)

(declare-fun lt!1653342 () Unit!86927)

(assert (=> b!4462720 (= e!2778864 lt!1653342)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!787 (List!50367 (_ BitVec 64)) Unit!86927)

(assert (=> b!4462720 (= lt!1653342 (lemmaContainsKeyImpliesGetValueByKeyDefined!787 (toList!4027 lm!1477) lt!1653320))))

(declare-fun isDefined!8184 (Option!10898) Bool)

(assert (=> b!4462720 (isDefined!8184 (getValueByKey!884 (toList!4027 lm!1477) lt!1653320))))

(declare-fun b!4462721 () Bool)

(declare-fun Unit!86935 () Unit!86927)

(assert (=> b!4462721 (= e!2778864 Unit!86935)))

(declare-fun b!4462722 () Bool)

(assert (=> b!4462722 (= e!2778865 (isDefined!8184 (getValueByKey!884 (toList!4027 lm!1477) lt!1653320)))))

(assert (= (and d!1360451 c!759363) b!4462720))

(assert (= (and d!1360451 (not c!759363)) b!4462721))

(assert (= (and d!1360451 (not res!1851042)) b!4462722))

(declare-fun m!5165763 () Bool)

(assert (=> d!1360451 m!5165763))

(declare-fun m!5165765 () Bool)

(assert (=> b!4462720 m!5165765))

(declare-fun m!5165767 () Bool)

(assert (=> b!4462720 m!5165767))

(assert (=> b!4462720 m!5165767))

(declare-fun m!5165773 () Bool)

(assert (=> b!4462720 m!5165773))

(assert (=> b!4462722 m!5165767))

(assert (=> b!4462722 m!5165767))

(assert (=> b!4462722 m!5165773))

(assert (=> b!4462674 d!1360451))

(declare-fun d!1360465 () Bool)

(assert (=> d!1360465 (contains!12769 (toList!4027 lm!1477) (tuple2!50477 hash!344 lt!1653321))))

(declare-fun lt!1653347 () Unit!86927)

(declare-fun choose!28431 (List!50367 (_ BitVec 64) List!50366) Unit!86927)

(assert (=> d!1360465 (= lt!1653347 (choose!28431 (toList!4027 lm!1477) hash!344 lt!1653321))))

(declare-fun e!2778871 () Bool)

(assert (=> d!1360465 e!2778871))

(declare-fun res!1851048 () Bool)

(assert (=> d!1360465 (=> (not res!1851048) (not e!2778871))))

(declare-fun isStrictlySorted!327 (List!50367) Bool)

(assert (=> d!1360465 (= res!1851048 (isStrictlySorted!327 (toList!4027 lm!1477)))))

(assert (=> d!1360465 (= (lemmaGetValueByKeyImpliesContainsTuple!522 (toList!4027 lm!1477) hash!344 lt!1653321) lt!1653347)))

(declare-fun b!4462728 () Bool)

(assert (=> b!4462728 (= e!2778871 (= (getValueByKey!884 (toList!4027 lm!1477) hash!344) (Some!10897 lt!1653321)))))

(assert (= (and d!1360465 res!1851048) b!4462728))

(declare-fun m!5165775 () Bool)

(assert (=> d!1360465 m!5165775))

(declare-fun m!5165777 () Bool)

(assert (=> d!1360465 m!5165777))

(declare-fun m!5165779 () Bool)

(assert (=> d!1360465 m!5165779))

(assert (=> b!4462728 m!5165745))

(assert (=> b!4462674 d!1360465))

(declare-fun b!4462756 () Bool)

(declare-fun e!2778889 () List!50366)

(declare-fun e!2778888 () List!50366)

(assert (=> b!4462756 (= e!2778889 e!2778888)))

(declare-fun c!759375 () Bool)

(assert (=> b!4462756 (= c!759375 ((_ is Cons!50242) lt!1653321))))

(declare-fun b!4462755 () Bool)

(assert (=> b!4462755 (= e!2778889 (t!357316 lt!1653321))))

(declare-fun d!1360467 () Bool)

(declare-fun lt!1653366 () List!50366)

(assert (=> d!1360467 (not (containsKey!1426 lt!1653366 key!3287))))

(assert (=> d!1360467 (= lt!1653366 e!2778889)))

(declare-fun c!759374 () Bool)

(assert (=> d!1360467 (= c!759374 (and ((_ is Cons!50242) lt!1653321) (= (_1!28531 (h!55991 lt!1653321)) key!3287)))))

(assert (=> d!1360467 (noDuplicateKeys!1010 lt!1653321)))

(assert (=> d!1360467 (= (removePairForKey!637 lt!1653321 key!3287) lt!1653366)))

(declare-fun b!4462757 () Bool)

(assert (=> b!4462757 (= e!2778888 (Cons!50242 (h!55991 lt!1653321) (removePairForKey!637 (t!357316 lt!1653321) key!3287)))))

(declare-fun b!4462758 () Bool)

(assert (=> b!4462758 (= e!2778888 Nil!50242)))

(assert (= (and d!1360467 c!759374) b!4462755))

(assert (= (and d!1360467 (not c!759374)) b!4462756))

(assert (= (and b!4462756 c!759375) b!4462757))

(assert (= (and b!4462756 (not c!759375)) b!4462758))

(declare-fun m!5165781 () Bool)

(assert (=> d!1360467 m!5165781))

(declare-fun m!5165783 () Bool)

(assert (=> d!1360467 m!5165783))

(declare-fun m!5165785 () Bool)

(assert (=> b!4462757 m!5165785))

(assert (=> b!4462674 d!1360467))

(declare-fun d!1360469 () Bool)

(declare-fun lt!1653377 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8059 (List!50367) (InoxSet tuple2!50476))

(assert (=> d!1360469 (= lt!1653377 (select (content!8059 (toList!4027 lm!1477)) lt!1653318))))

(declare-fun e!2778901 () Bool)

(assert (=> d!1360469 (= lt!1653377 e!2778901)))

(declare-fun res!1851062 () Bool)

(assert (=> d!1360469 (=> (not res!1851062) (not e!2778901))))

(assert (=> d!1360469 (= res!1851062 ((_ is Cons!50243) (toList!4027 lm!1477)))))

(assert (=> d!1360469 (= (contains!12769 (toList!4027 lm!1477) lt!1653318) lt!1653377)))

(declare-fun b!4462772 () Bool)

(declare-fun e!2778900 () Bool)

(assert (=> b!4462772 (= e!2778901 e!2778900)))

(declare-fun res!1851063 () Bool)

(assert (=> b!4462772 (=> res!1851063 e!2778900)))

(assert (=> b!4462772 (= res!1851063 (= (h!55992 (toList!4027 lm!1477)) lt!1653318))))

(declare-fun b!4462773 () Bool)

(assert (=> b!4462773 (= e!2778900 (contains!12769 (t!357317 (toList!4027 lm!1477)) lt!1653318))))

(assert (= (and d!1360469 res!1851062) b!4462772))

(assert (= (and b!4462772 (not res!1851063)) b!4462773))

(declare-fun m!5165807 () Bool)

(assert (=> d!1360469 m!5165807))

(declare-fun m!5165809 () Bool)

(assert (=> d!1360469 m!5165809))

(declare-fun m!5165811 () Bool)

(assert (=> b!4462773 m!5165811))

(assert (=> b!4462674 d!1360469))

(declare-fun d!1360473 () Bool)

(declare-fun dynLambda!20990 (Int tuple2!50476) Bool)

(assert (=> d!1360473 (dynLambda!20990 lambda!162073 lt!1653318)))

(declare-fun lt!1653383 () Unit!86927)

(declare-fun choose!28434 (List!50367 Int tuple2!50476) Unit!86927)

(assert (=> d!1360473 (= lt!1653383 (choose!28434 (toList!4027 lm!1477) lambda!162073 lt!1653318))))

(declare-fun e!2778907 () Bool)

(assert (=> d!1360473 e!2778907))

(declare-fun res!1851066 () Bool)

(assert (=> d!1360473 (=> (not res!1851066) (not e!2778907))))

(assert (=> d!1360473 (= res!1851066 (forall!9953 (toList!4027 lm!1477) lambda!162073))))

(assert (=> d!1360473 (= (forallContained!2227 (toList!4027 lm!1477) lambda!162073 lt!1653318) lt!1653383)))

(declare-fun b!4462782 () Bool)

(assert (=> b!4462782 (= e!2778907 (contains!12769 (toList!4027 lm!1477) lt!1653318))))

(assert (= (and d!1360473 res!1851066) b!4462782))

(declare-fun b_lambda!147797 () Bool)

(assert (=> (not b_lambda!147797) (not d!1360473)))

(declare-fun m!5165821 () Bool)

(assert (=> d!1360473 m!5165821))

(declare-fun m!5165823 () Bool)

(assert (=> d!1360473 m!5165823))

(assert (=> d!1360473 m!5165703))

(assert (=> b!4462782 m!5165687))

(assert (=> b!4462674 d!1360473))

(declare-fun bs!791645 () Bool)

(declare-fun d!1360477 () Bool)

(assert (= bs!791645 (and d!1360477 start!437692)))

(declare-fun lambda!162095 () Int)

(assert (=> bs!791645 (not (= lambda!162095 lambda!162073))))

(declare-fun bs!791646 () Bool)

(assert (= bs!791646 (and d!1360477 d!1360445)))

(assert (=> bs!791646 (not (= lambda!162095 lambda!162079))))

(assert (=> d!1360477 true))

(assert (=> d!1360477 (= (allKeysSameHashInMap!1117 lm!1477 hashF!1107) (forall!9953 (toList!4027 lm!1477) lambda!162095))))

(declare-fun bs!791647 () Bool)

(assert (= bs!791647 d!1360477))

(declare-fun m!5165839 () Bool)

(assert (=> bs!791647 m!5165839))

(assert (=> b!4462676 d!1360477))

(declare-fun b!4462826 () Bool)

(declare-fun e!2778932 () Unit!86927)

(declare-fun e!2778937 () Unit!86927)

(assert (=> b!4462826 (= e!2778932 e!2778937)))

(declare-fun c!759395 () Bool)

(declare-fun call!310649 () Bool)

(assert (=> b!4462826 (= c!759395 call!310649)))

(declare-fun b!4462827 () Bool)

(declare-datatypes ((List!50369 0))(
  ( (Nil!50245) (Cons!50245 (h!55996 K!11665) (t!357319 List!50369)) )
))
(declare-fun e!2778934 () List!50369)

(declare-fun keys!17334 (ListMap!3289) List!50369)

(assert (=> b!4462827 (= e!2778934 (keys!17334 (extractMap!1066 (toList!4027 lm!1477))))))

(declare-fun b!4462828 () Bool)

(declare-fun lt!1653429 () Unit!86927)

(assert (=> b!4462828 (= e!2778932 lt!1653429)))

(declare-fun lt!1653433 () Unit!86927)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!788 (List!50366 K!11665) Unit!86927)

(assert (=> b!4462828 (= lt!1653433 (lemmaContainsKeyImpliesGetValueByKeyDefined!788 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(declare-datatypes ((Option!10899 0))(
  ( (None!10898) (Some!10898 (v!44168 V!11911)) )
))
(declare-fun isDefined!8185 (Option!10899) Bool)

(declare-fun getValueByKey!885 (List!50366 K!11665) Option!10899)

(assert (=> b!4462828 (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(declare-fun lt!1653432 () Unit!86927)

(assert (=> b!4462828 (= lt!1653432 lt!1653433)))

(declare-fun lemmaInListThenGetKeysListContains!357 (List!50366 K!11665) Unit!86927)

(assert (=> b!4462828 (= lt!1653429 (lemmaInListThenGetKeysListContains!357 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(assert (=> b!4462828 call!310649))

(declare-fun d!1360485 () Bool)

(declare-fun e!2778933 () Bool)

(assert (=> d!1360485 e!2778933))

(declare-fun res!1851082 () Bool)

(assert (=> d!1360485 (=> res!1851082 e!2778933)))

(declare-fun e!2778935 () Bool)

(assert (=> d!1360485 (= res!1851082 e!2778935)))

(declare-fun res!1851084 () Bool)

(assert (=> d!1360485 (=> (not res!1851084) (not e!2778935))))

(declare-fun lt!1653436 () Bool)

(assert (=> d!1360485 (= res!1851084 (not lt!1653436))))

(declare-fun lt!1653435 () Bool)

(assert (=> d!1360485 (= lt!1653436 lt!1653435)))

(declare-fun lt!1653430 () Unit!86927)

(assert (=> d!1360485 (= lt!1653430 e!2778932)))

(declare-fun c!759394 () Bool)

(assert (=> d!1360485 (= c!759394 lt!1653435)))

(declare-fun containsKey!1429 (List!50366 K!11665) Bool)

(assert (=> d!1360485 (= lt!1653435 (containsKey!1429 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(assert (=> d!1360485 (= (contains!12771 (extractMap!1066 (toList!4027 lm!1477)) key!3287) lt!1653436)))

(declare-fun b!4462829 () Bool)

(assert (=> b!4462829 false))

(declare-fun lt!1653434 () Unit!86927)

(declare-fun lt!1653431 () Unit!86927)

(assert (=> b!4462829 (= lt!1653434 lt!1653431)))

(assert (=> b!4462829 (containsKey!1429 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!360 (List!50366 K!11665) Unit!86927)

(assert (=> b!4462829 (= lt!1653431 (lemmaInGetKeysListThenContainsKey!360 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(declare-fun Unit!86936 () Unit!86927)

(assert (=> b!4462829 (= e!2778937 Unit!86936)))

(declare-fun b!4462830 () Bool)

(declare-fun Unit!86937 () Unit!86927)

(assert (=> b!4462830 (= e!2778937 Unit!86937)))

(declare-fun b!4462831 () Bool)

(declare-fun e!2778936 () Bool)

(declare-fun contains!12773 (List!50369 K!11665) Bool)

(assert (=> b!4462831 (= e!2778936 (contains!12773 (keys!17334 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(declare-fun b!4462832 () Bool)

(assert (=> b!4462832 (= e!2778935 (not (contains!12773 (keys!17334 (extractMap!1066 (toList!4027 lm!1477))) key!3287)))))

(declare-fun bm!310644 () Bool)

(assert (=> bm!310644 (= call!310649 (contains!12773 e!2778934 key!3287))))

(declare-fun c!759396 () Bool)

(assert (=> bm!310644 (= c!759396 c!759394)))

(declare-fun b!4462833 () Bool)

(declare-fun getKeysList!361 (List!50366) List!50369)

(assert (=> b!4462833 (= e!2778934 (getKeysList!361 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))))

(declare-fun b!4462834 () Bool)

(assert (=> b!4462834 (= e!2778933 e!2778936)))

(declare-fun res!1851083 () Bool)

(assert (=> b!4462834 (=> (not res!1851083) (not e!2778936))))

(assert (=> b!4462834 (= res!1851083 (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287)))))

(assert (= (and d!1360485 c!759394) b!4462828))

(assert (= (and d!1360485 (not c!759394)) b!4462826))

(assert (= (and b!4462826 c!759395) b!4462829))

(assert (= (and b!4462826 (not c!759395)) b!4462830))

(assert (= (or b!4462828 b!4462826) bm!310644))

(assert (= (and bm!310644 c!759396) b!4462833))

(assert (= (and bm!310644 (not c!759396)) b!4462827))

(assert (= (and d!1360485 res!1851084) b!4462832))

(assert (= (and d!1360485 (not res!1851082)) b!4462834))

(assert (= (and b!4462834 res!1851083) b!4462831))

(declare-fun m!5165905 () Bool)

(assert (=> b!4462834 m!5165905))

(assert (=> b!4462834 m!5165905))

(declare-fun m!5165907 () Bool)

(assert (=> b!4462834 m!5165907))

(declare-fun m!5165909 () Bool)

(assert (=> b!4462829 m!5165909))

(declare-fun m!5165911 () Bool)

(assert (=> b!4462829 m!5165911))

(assert (=> d!1360485 m!5165909))

(assert (=> b!4462832 m!5165733))

(declare-fun m!5165913 () Bool)

(assert (=> b!4462832 m!5165913))

(assert (=> b!4462832 m!5165913))

(declare-fun m!5165915 () Bool)

(assert (=> b!4462832 m!5165915))

(assert (=> b!4462831 m!5165733))

(assert (=> b!4462831 m!5165913))

(assert (=> b!4462831 m!5165913))

(assert (=> b!4462831 m!5165915))

(declare-fun m!5165917 () Bool)

(assert (=> b!4462828 m!5165917))

(assert (=> b!4462828 m!5165905))

(assert (=> b!4462828 m!5165905))

(assert (=> b!4462828 m!5165907))

(declare-fun m!5165919 () Bool)

(assert (=> b!4462828 m!5165919))

(declare-fun m!5165921 () Bool)

(assert (=> bm!310644 m!5165921))

(declare-fun m!5165923 () Bool)

(assert (=> b!4462833 m!5165923))

(assert (=> b!4462827 m!5165733))

(assert (=> b!4462827 m!5165913))

(assert (=> b!4462675 d!1360485))

(declare-fun bs!791679 () Bool)

(declare-fun d!1360499 () Bool)

(assert (= bs!791679 (and d!1360499 start!437692)))

(declare-fun lambda!162106 () Int)

(assert (=> bs!791679 (= lambda!162106 lambda!162073)))

(declare-fun bs!791680 () Bool)

(assert (= bs!791680 (and d!1360499 d!1360445)))

(assert (=> bs!791680 (= lambda!162106 lambda!162079)))

(declare-fun bs!791681 () Bool)

(assert (= bs!791681 (and d!1360499 d!1360477)))

(assert (=> bs!791681 (not (= lambda!162106 lambda!162095))))

(declare-fun lt!1653456 () ListMap!3289)

(declare-fun invariantList!913 (List!50366) Bool)

(assert (=> d!1360499 (invariantList!913 (toList!4028 lt!1653456))))

(declare-fun e!2778965 () ListMap!3289)

(assert (=> d!1360499 (= lt!1653456 e!2778965)))

(declare-fun c!759405 () Bool)

(assert (=> d!1360499 (= c!759405 ((_ is Cons!50243) (toList!4027 lm!1477)))))

(assert (=> d!1360499 (forall!9953 (toList!4027 lm!1477) lambda!162106)))

(assert (=> d!1360499 (= (extractMap!1066 (toList!4027 lm!1477)) lt!1653456)))

(declare-fun b!4462870 () Bool)

(declare-fun addToMapMapFromBucket!575 (List!50366 ListMap!3289) ListMap!3289)

(assert (=> b!4462870 (= e!2778965 (addToMapMapFromBucket!575 (_2!28532 (h!55992 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (toList!4027 lm!1477)))))))

(declare-fun b!4462871 () Bool)

(assert (=> b!4462871 (= e!2778965 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360499 c!759405) b!4462870))

(assert (= (and d!1360499 (not c!759405)) b!4462871))

(declare-fun m!5165975 () Bool)

(assert (=> d!1360499 m!5165975))

(declare-fun m!5165977 () Bool)

(assert (=> d!1360499 m!5165977))

(declare-fun m!5165979 () Bool)

(assert (=> b!4462870 m!5165979))

(assert (=> b!4462870 m!5165979))

(declare-fun m!5165981 () Bool)

(assert (=> b!4462870 m!5165981))

(assert (=> b!4462675 d!1360499))

(declare-fun bs!791682 () Bool)

(declare-fun d!1360519 () Bool)

(assert (= bs!791682 (and d!1360519 start!437692)))

(declare-fun lambda!162107 () Int)

(assert (=> bs!791682 (= lambda!162107 lambda!162073)))

(declare-fun bs!791683 () Bool)

(assert (= bs!791683 (and d!1360519 d!1360445)))

(assert (=> bs!791683 (= lambda!162107 lambda!162079)))

(declare-fun bs!791684 () Bool)

(assert (= bs!791684 (and d!1360519 d!1360477)))

(assert (=> bs!791684 (not (= lambda!162107 lambda!162095))))

(declare-fun bs!791685 () Bool)

(assert (= bs!791685 (and d!1360519 d!1360499)))

(assert (=> bs!791685 (= lambda!162107 lambda!162106)))

(declare-fun lt!1653458 () ListMap!3289)

(assert (=> d!1360519 (invariantList!913 (toList!4028 lt!1653458))))

(declare-fun e!2778968 () ListMap!3289)

(assert (=> d!1360519 (= lt!1653458 e!2778968)))

(declare-fun c!759406 () Bool)

(assert (=> d!1360519 (= c!759406 ((_ is Cons!50243) (Cons!50243 lt!1653316 Nil!50243)))))

(assert (=> d!1360519 (forall!9953 (Cons!50243 lt!1653316 Nil!50243) lambda!162107)))

(assert (=> d!1360519 (= (extractMap!1066 (Cons!50243 lt!1653316 Nil!50243)) lt!1653458)))

(declare-fun b!4462874 () Bool)

(assert (=> b!4462874 (= e!2778968 (addToMapMapFromBucket!575 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))))))

(declare-fun b!4462875 () Bool)

(assert (=> b!4462875 (= e!2778968 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360519 c!759406) b!4462874))

(assert (= (and d!1360519 (not c!759406)) b!4462875))

(declare-fun m!5165983 () Bool)

(assert (=> d!1360519 m!5165983))

(declare-fun m!5165985 () Bool)

(assert (=> d!1360519 m!5165985))

(declare-fun m!5165987 () Bool)

(assert (=> b!4462874 m!5165987))

(assert (=> b!4462874 m!5165987))

(declare-fun m!5165989 () Bool)

(assert (=> b!4462874 m!5165989))

(assert (=> b!4462677 d!1360519))

(declare-fun bs!791686 () Bool)

(declare-fun d!1360521 () Bool)

(assert (= bs!791686 (and d!1360521 start!437692)))

(declare-fun lambda!162108 () Int)

(assert (=> bs!791686 (= lambda!162108 lambda!162073)))

(declare-fun bs!791687 () Bool)

(assert (= bs!791687 (and d!1360521 d!1360445)))

(assert (=> bs!791687 (= lambda!162108 lambda!162079)))

(declare-fun bs!791688 () Bool)

(assert (= bs!791688 (and d!1360521 d!1360499)))

(assert (=> bs!791688 (= lambda!162108 lambda!162106)))

(declare-fun bs!791689 () Bool)

(assert (= bs!791689 (and d!1360521 d!1360477)))

(assert (=> bs!791689 (not (= lambda!162108 lambda!162095))))

(declare-fun bs!791690 () Bool)

(assert (= bs!791690 (and d!1360521 d!1360519)))

(assert (=> bs!791690 (= lambda!162108 lambda!162107)))

(declare-fun lt!1653467 () ListMap!3289)

(assert (=> d!1360521 (invariantList!913 (toList!4028 lt!1653467))))

(declare-fun e!2778971 () ListMap!3289)

(assert (=> d!1360521 (= lt!1653467 e!2778971)))

(declare-fun c!759409 () Bool)

(assert (=> d!1360521 (= c!759409 ((_ is Cons!50243) (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))

(assert (=> d!1360521 (forall!9953 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243) lambda!162108)))

(assert (=> d!1360521 (= (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) lt!1653467)))

(declare-fun b!4462880 () Bool)

(assert (=> b!4462880 (= e!2778971 (addToMapMapFromBucket!575 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(declare-fun b!4462881 () Bool)

(assert (=> b!4462881 (= e!2778971 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360521 c!759409) b!4462880))

(assert (= (and d!1360521 (not c!759409)) b!4462881))

(declare-fun m!5165991 () Bool)

(assert (=> d!1360521 m!5165991))

(declare-fun m!5165993 () Bool)

(assert (=> d!1360521 m!5165993))

(declare-fun m!5165995 () Bool)

(assert (=> b!4462880 m!5165995))

(assert (=> b!4462880 m!5165995))

(declare-fun m!5165997 () Bool)

(assert (=> b!4462880 m!5165997))

(assert (=> b!4462677 d!1360521))

(declare-fun d!1360523 () Bool)

(declare-fun e!2778984 () Bool)

(assert (=> d!1360523 e!2778984))

(declare-fun res!1851111 () Bool)

(assert (=> d!1360523 (=> (not res!1851111) (not e!2778984))))

(declare-fun lt!1653474 () ListMap!3289)

(assert (=> d!1360523 (= res!1851111 (not (contains!12771 lt!1653474 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!49 (List!50366 K!11665) List!50366)

(assert (=> d!1360523 (= lt!1653474 (ListMap!3290 (removePresrvNoDuplicatedKeys!49 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287)))))

(assert (=> d!1360523 (= (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287) lt!1653474)))

(declare-fun b!4462899 () Bool)

(declare-fun content!8061 (List!50369) (InoxSet K!11665))

(assert (=> b!4462899 (= e!2778984 (= ((_ map and) (content!8061 (keys!17334 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) ((_ map not) (store ((as const (Array K!11665 Bool)) false) key!3287 true))) (content!8061 (keys!17334 lt!1653474))))))

(assert (= (and d!1360523 res!1851111) b!4462899))

(declare-fun m!5166009 () Bool)

(assert (=> d!1360523 m!5166009))

(declare-fun m!5166011 () Bool)

(assert (=> d!1360523 m!5166011))

(assert (=> b!4462899 m!5165721))

(declare-fun m!5166013 () Bool)

(assert (=> b!4462899 m!5166013))

(declare-fun m!5166015 () Bool)

(assert (=> b!4462899 m!5166015))

(assert (=> b!4462899 m!5166013))

(declare-fun m!5166017 () Bool)

(assert (=> b!4462899 m!5166017))

(declare-fun m!5166019 () Bool)

(assert (=> b!4462899 m!5166019))

(declare-fun m!5166021 () Bool)

(assert (=> b!4462899 m!5166021))

(assert (=> b!4462899 m!5166019))

(assert (=> b!4462677 d!1360523))

(declare-fun b!4462900 () Bool)

(declare-fun e!2778985 () Unit!86927)

(declare-fun e!2778990 () Unit!86927)

(assert (=> b!4462900 (= e!2778985 e!2778990)))

(declare-fun c!759412 () Bool)

(declare-fun call!310650 () Bool)

(assert (=> b!4462900 (= c!759412 call!310650)))

(declare-fun b!4462901 () Bool)

(declare-fun e!2778987 () List!50369)

(assert (=> b!4462901 (= e!2778987 (keys!17334 (extractMap!1066 lt!1653326)))))

(declare-fun b!4462902 () Bool)

(declare-fun lt!1653475 () Unit!86927)

(assert (=> b!4462902 (= e!2778985 lt!1653475)))

(declare-fun lt!1653479 () Unit!86927)

(assert (=> b!4462902 (= lt!1653479 (lemmaContainsKeyImpliesGetValueByKeyDefined!788 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))

(assert (=> b!4462902 (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))

(declare-fun lt!1653478 () Unit!86927)

(assert (=> b!4462902 (= lt!1653478 lt!1653479)))

(assert (=> b!4462902 (= lt!1653475 (lemmaInListThenGetKeysListContains!357 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))

(assert (=> b!4462902 call!310650))

(declare-fun d!1360529 () Bool)

(declare-fun e!2778986 () Bool)

(assert (=> d!1360529 e!2778986))

(declare-fun res!1851112 () Bool)

(assert (=> d!1360529 (=> res!1851112 e!2778986)))

(declare-fun e!2778988 () Bool)

(assert (=> d!1360529 (= res!1851112 e!2778988)))

(declare-fun res!1851114 () Bool)

(assert (=> d!1360529 (=> (not res!1851114) (not e!2778988))))

(declare-fun lt!1653482 () Bool)

(assert (=> d!1360529 (= res!1851114 (not lt!1653482))))

(declare-fun lt!1653481 () Bool)

(assert (=> d!1360529 (= lt!1653482 lt!1653481)))

(declare-fun lt!1653476 () Unit!86927)

(assert (=> d!1360529 (= lt!1653476 e!2778985)))

(declare-fun c!759411 () Bool)

(assert (=> d!1360529 (= c!759411 lt!1653481)))

(assert (=> d!1360529 (= lt!1653481 (containsKey!1429 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))

(assert (=> d!1360529 (= (contains!12771 (extractMap!1066 lt!1653326) key!3287) lt!1653482)))

(declare-fun b!4462903 () Bool)

(assert (=> b!4462903 false))

(declare-fun lt!1653480 () Unit!86927)

(declare-fun lt!1653477 () Unit!86927)

(assert (=> b!4462903 (= lt!1653480 lt!1653477)))

(assert (=> b!4462903 (containsKey!1429 (toList!4028 (extractMap!1066 lt!1653326)) key!3287)))

(assert (=> b!4462903 (= lt!1653477 (lemmaInGetKeysListThenContainsKey!360 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))

(declare-fun Unit!86939 () Unit!86927)

(assert (=> b!4462903 (= e!2778990 Unit!86939)))

(declare-fun b!4462904 () Bool)

(declare-fun Unit!86940 () Unit!86927)

(assert (=> b!4462904 (= e!2778990 Unit!86940)))

(declare-fun b!4462905 () Bool)

(declare-fun e!2778989 () Bool)

(assert (=> b!4462905 (= e!2778989 (contains!12773 (keys!17334 (extractMap!1066 lt!1653326)) key!3287))))

(declare-fun b!4462906 () Bool)

(assert (=> b!4462906 (= e!2778988 (not (contains!12773 (keys!17334 (extractMap!1066 lt!1653326)) key!3287)))))

(declare-fun bm!310645 () Bool)

(assert (=> bm!310645 (= call!310650 (contains!12773 e!2778987 key!3287))))

(declare-fun c!759413 () Bool)

(assert (=> bm!310645 (= c!759413 c!759411)))

(declare-fun b!4462907 () Bool)

(assert (=> b!4462907 (= e!2778987 (getKeysList!361 (toList!4028 (extractMap!1066 lt!1653326))))))

(declare-fun b!4462908 () Bool)

(assert (=> b!4462908 (= e!2778986 e!2778989)))

(declare-fun res!1851113 () Bool)

(assert (=> b!4462908 (=> (not res!1851113) (not e!2778989))))

(assert (=> b!4462908 (= res!1851113 (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 lt!1653326)) key!3287)))))

(assert (= (and d!1360529 c!759411) b!4462902))

(assert (= (and d!1360529 (not c!759411)) b!4462900))

(assert (= (and b!4462900 c!759412) b!4462903))

(assert (= (and b!4462900 (not c!759412)) b!4462904))

(assert (= (or b!4462902 b!4462900) bm!310645))

(assert (= (and bm!310645 c!759413) b!4462907))

(assert (= (and bm!310645 (not c!759413)) b!4462901))

(assert (= (and d!1360529 res!1851114) b!4462906))

(assert (= (and d!1360529 (not res!1851112)) b!4462908))

(assert (= (and b!4462908 res!1851113) b!4462905))

(declare-fun m!5166023 () Bool)

(assert (=> b!4462908 m!5166023))

(assert (=> b!4462908 m!5166023))

(declare-fun m!5166025 () Bool)

(assert (=> b!4462908 m!5166025))

(declare-fun m!5166027 () Bool)

(assert (=> b!4462903 m!5166027))

(declare-fun m!5166029 () Bool)

(assert (=> b!4462903 m!5166029))

(assert (=> d!1360529 m!5166027))

(assert (=> b!4462906 m!5165711))

(declare-fun m!5166031 () Bool)

(assert (=> b!4462906 m!5166031))

(assert (=> b!4462906 m!5166031))

(declare-fun m!5166033 () Bool)

(assert (=> b!4462906 m!5166033))

(assert (=> b!4462905 m!5165711))

(assert (=> b!4462905 m!5166031))

(assert (=> b!4462905 m!5166031))

(assert (=> b!4462905 m!5166033))

(declare-fun m!5166035 () Bool)

(assert (=> b!4462902 m!5166035))

(assert (=> b!4462902 m!5166023))

(assert (=> b!4462902 m!5166023))

(assert (=> b!4462902 m!5166025))

(declare-fun m!5166037 () Bool)

(assert (=> b!4462902 m!5166037))

(declare-fun m!5166039 () Bool)

(assert (=> bm!310645 m!5166039))

(declare-fun m!5166041 () Bool)

(assert (=> b!4462907 m!5166041))

(assert (=> b!4462901 m!5165711))

(assert (=> b!4462901 m!5166031))

(assert (=> b!4462677 d!1360529))

(declare-fun d!1360531 () Bool)

(declare-fun e!2778993 () Bool)

(assert (=> d!1360531 e!2778993))

(declare-fun res!1851119 () Bool)

(assert (=> d!1360531 (=> (not res!1851119) (not e!2778993))))

(declare-fun lt!1653494 () ListLongMap!2659)

(assert (=> d!1360531 (= res!1851119 (contains!12770 lt!1653494 (_1!28532 lt!1653316)))))

(declare-fun lt!1653491 () List!50367)

(assert (=> d!1360531 (= lt!1653494 (ListLongMap!2660 lt!1653491))))

(declare-fun lt!1653492 () Unit!86927)

(declare-fun lt!1653493 () Unit!86927)

(assert (=> d!1360531 (= lt!1653492 lt!1653493)))

(assert (=> d!1360531 (= (getValueByKey!884 lt!1653491 (_1!28532 lt!1653316)) (Some!10897 (_2!28532 lt!1653316)))))

(declare-fun lemmaContainsTupThenGetReturnValue!570 (List!50367 (_ BitVec 64) List!50366) Unit!86927)

(assert (=> d!1360531 (= lt!1653493 (lemmaContainsTupThenGetReturnValue!570 lt!1653491 (_1!28532 lt!1653316) (_2!28532 lt!1653316)))))

(declare-fun insertStrictlySorted!316 (List!50367 (_ BitVec 64) List!50366) List!50367)

(assert (=> d!1360531 (= lt!1653491 (insertStrictlySorted!316 (toList!4027 lm!1477) (_1!28532 lt!1653316) (_2!28532 lt!1653316)))))

(assert (=> d!1360531 (= (+!1344 lm!1477 lt!1653316) lt!1653494)))

(declare-fun b!4462913 () Bool)

(declare-fun res!1851120 () Bool)

(assert (=> b!4462913 (=> (not res!1851120) (not e!2778993))))

(assert (=> b!4462913 (= res!1851120 (= (getValueByKey!884 (toList!4027 lt!1653494) (_1!28532 lt!1653316)) (Some!10897 (_2!28532 lt!1653316))))))

(declare-fun b!4462914 () Bool)

(assert (=> b!4462914 (= e!2778993 (contains!12769 (toList!4027 lt!1653494) lt!1653316))))

(assert (= (and d!1360531 res!1851119) b!4462913))

(assert (= (and b!4462913 res!1851120) b!4462914))

(declare-fun m!5166043 () Bool)

(assert (=> d!1360531 m!5166043))

(declare-fun m!5166045 () Bool)

(assert (=> d!1360531 m!5166045))

(declare-fun m!5166047 () Bool)

(assert (=> d!1360531 m!5166047))

(declare-fun m!5166049 () Bool)

(assert (=> d!1360531 m!5166049))

(declare-fun m!5166051 () Bool)

(assert (=> b!4462913 m!5166051))

(declare-fun m!5166053 () Bool)

(assert (=> b!4462914 m!5166053))

(assert (=> b!4462677 d!1360531))

(declare-fun d!1360533 () Bool)

(declare-fun content!8062 (List!50366) (InoxSet tuple2!50474))

(assert (=> d!1360533 (= (eq!503 (extractMap!1066 (Cons!50243 lt!1653316 Nil!50243)) (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287)) (= (content!8062 (toList!4028 (extractMap!1066 (Cons!50243 lt!1653316 Nil!50243)))) (content!8062 (toList!4028 (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287)))))))

(declare-fun bs!791693 () Bool)

(assert (= bs!791693 d!1360533))

(declare-fun m!5166055 () Bool)

(assert (=> bs!791693 m!5166055))

(declare-fun m!5166057 () Bool)

(assert (=> bs!791693 m!5166057))

(assert (=> b!4462677 d!1360533))

(declare-fun bs!791694 () Bool)

(declare-fun d!1360535 () Bool)

(assert (= bs!791694 (and d!1360535 start!437692)))

(declare-fun lambda!162111 () Int)

(assert (=> bs!791694 (= lambda!162111 lambda!162073)))

(declare-fun bs!791695 () Bool)

(assert (= bs!791695 (and d!1360535 d!1360445)))

(assert (=> bs!791695 (= lambda!162111 lambda!162079)))

(declare-fun bs!791696 () Bool)

(assert (= bs!791696 (and d!1360535 d!1360521)))

(assert (=> bs!791696 (= lambda!162111 lambda!162108)))

(declare-fun bs!791697 () Bool)

(assert (= bs!791697 (and d!1360535 d!1360499)))

(assert (=> bs!791697 (= lambda!162111 lambda!162106)))

(declare-fun bs!791698 () Bool)

(assert (= bs!791698 (and d!1360535 d!1360477)))

(assert (=> bs!791698 (not (= lambda!162111 lambda!162095))))

(declare-fun bs!791699 () Bool)

(assert (= bs!791699 (and d!1360535 d!1360519)))

(assert (=> bs!791699 (= lambda!162111 lambda!162107)))

(assert (=> d!1360535 (contains!12771 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326))) key!3287)))

(declare-fun lt!1653497 () Unit!86927)

(declare-fun choose!28435 (ListLongMap!2659 K!11665 Hashable!5405) Unit!86927)

(assert (=> d!1360535 (= lt!1653497 (choose!28435 (ListLongMap!2660 lt!1653326) key!3287 hashF!1107))))

(assert (=> d!1360535 (forall!9953 (toList!4027 (ListLongMap!2660 lt!1653326)) lambda!162111)))

(assert (=> d!1360535 (= (lemmaListContainsThenExtractedMapContains!6 (ListLongMap!2660 lt!1653326) key!3287 hashF!1107) lt!1653497)))

(declare-fun bs!791700 () Bool)

(assert (= bs!791700 d!1360535))

(declare-fun m!5166059 () Bool)

(assert (=> bs!791700 m!5166059))

(assert (=> bs!791700 m!5166059))

(declare-fun m!5166061 () Bool)

(assert (=> bs!791700 m!5166061))

(declare-fun m!5166063 () Bool)

(assert (=> bs!791700 m!5166063))

(declare-fun m!5166065 () Bool)

(assert (=> bs!791700 m!5166065))

(assert (=> b!4462677 d!1360535))

(declare-fun bs!791701 () Bool)

(declare-fun d!1360537 () Bool)

(assert (= bs!791701 (and d!1360537 d!1360535)))

(declare-fun lambda!162112 () Int)

(assert (=> bs!791701 (= lambda!162112 lambda!162111)))

(declare-fun bs!791702 () Bool)

(assert (= bs!791702 (and d!1360537 start!437692)))

(assert (=> bs!791702 (= lambda!162112 lambda!162073)))

(declare-fun bs!791703 () Bool)

(assert (= bs!791703 (and d!1360537 d!1360445)))

(assert (=> bs!791703 (= lambda!162112 lambda!162079)))

(declare-fun bs!791704 () Bool)

(assert (= bs!791704 (and d!1360537 d!1360521)))

(assert (=> bs!791704 (= lambda!162112 lambda!162108)))

(declare-fun bs!791705 () Bool)

(assert (= bs!791705 (and d!1360537 d!1360499)))

(assert (=> bs!791705 (= lambda!162112 lambda!162106)))

(declare-fun bs!791706 () Bool)

(assert (= bs!791706 (and d!1360537 d!1360477)))

(assert (=> bs!791706 (not (= lambda!162112 lambda!162095))))

(declare-fun bs!791707 () Bool)

(assert (= bs!791707 (and d!1360537 d!1360519)))

(assert (=> bs!791707 (= lambda!162112 lambda!162107)))

(declare-fun lt!1653498 () ListMap!3289)

(assert (=> d!1360537 (invariantList!913 (toList!4028 lt!1653498))))

(declare-fun e!2778994 () ListMap!3289)

(assert (=> d!1360537 (= lt!1653498 e!2778994)))

(declare-fun c!759414 () Bool)

(assert (=> d!1360537 (= c!759414 ((_ is Cons!50243) lt!1653326))))

(assert (=> d!1360537 (forall!9953 lt!1653326 lambda!162112)))

(assert (=> d!1360537 (= (extractMap!1066 lt!1653326) lt!1653498)))

(declare-fun b!4462915 () Bool)

(assert (=> b!4462915 (= e!2778994 (addToMapMapFromBucket!575 (_2!28532 (h!55992 lt!1653326)) (extractMap!1066 (t!357317 lt!1653326))))))

(declare-fun b!4462916 () Bool)

(assert (=> b!4462916 (= e!2778994 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360537 c!759414) b!4462915))

(assert (= (and d!1360537 (not c!759414)) b!4462916))

(declare-fun m!5166067 () Bool)

(assert (=> d!1360537 m!5166067))

(declare-fun m!5166069 () Bool)

(assert (=> d!1360537 m!5166069))

(declare-fun m!5166071 () Bool)

(assert (=> b!4462915 m!5166071))

(assert (=> b!4462915 m!5166071))

(declare-fun m!5166073 () Bool)

(assert (=> b!4462915 m!5166073))

(assert (=> b!4462677 d!1360537))

(declare-fun d!1360539 () Bool)

(assert (=> d!1360539 (eq!503 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 newBucket!178) Nil!50243)) (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287))))

(declare-fun lt!1653501 () Unit!86927)

(declare-fun choose!28436 ((_ BitVec 64) List!50366 List!50366 K!11665 Hashable!5405) Unit!86927)

(assert (=> d!1360539 (= lt!1653501 (choose!28436 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1360539 (noDuplicateKeys!1010 (_2!28532 (h!55992 (toList!4027 lm!1477))))))

(assert (=> d!1360539 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!2 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1653501)))

(declare-fun bs!791708 () Bool)

(assert (= bs!791708 d!1360539))

(declare-fun m!5166075 () Bool)

(assert (=> bs!791708 m!5166075))

(assert (=> bs!791708 m!5165717))

(declare-fun m!5166077 () Bool)

(assert (=> bs!791708 m!5166077))

(declare-fun m!5166079 () Bool)

(assert (=> bs!791708 m!5166079))

(assert (=> bs!791708 m!5165721))

(declare-fun m!5166081 () Bool)

(assert (=> bs!791708 m!5166081))

(assert (=> bs!791708 m!5166075))

(assert (=> bs!791708 m!5165721))

(assert (=> bs!791708 m!5165717))

(assert (=> b!4462677 d!1360539))

(declare-fun d!1360541 () Bool)

(declare-fun res!1851125 () Bool)

(declare-fun e!2778999 () Bool)

(assert (=> d!1360541 (=> res!1851125 e!2778999)))

(assert (=> d!1360541 (= res!1851125 ((_ is Nil!50243) (toList!4027 lm!1477)))))

(assert (=> d!1360541 (= (forall!9953 (toList!4027 lm!1477) lambda!162073) e!2778999)))

(declare-fun b!4462921 () Bool)

(declare-fun e!2779000 () Bool)

(assert (=> b!4462921 (= e!2778999 e!2779000)))

(declare-fun res!1851126 () Bool)

(assert (=> b!4462921 (=> (not res!1851126) (not e!2779000))))

(assert (=> b!4462921 (= res!1851126 (dynLambda!20990 lambda!162073 (h!55992 (toList!4027 lm!1477))))))

(declare-fun b!4462922 () Bool)

(assert (=> b!4462922 (= e!2779000 (forall!9953 (t!357317 (toList!4027 lm!1477)) lambda!162073))))

(assert (= (and d!1360541 (not res!1851125)) b!4462921))

(assert (= (and b!4462921 res!1851126) b!4462922))

(declare-fun b_lambda!147807 () Bool)

(assert (=> (not b_lambda!147807) (not b!4462921)))

(declare-fun m!5166083 () Bool)

(assert (=> b!4462921 m!5166083))

(declare-fun m!5166085 () Bool)

(assert (=> b!4462922 m!5166085))

(assert (=> start!437692 d!1360541))

(declare-fun d!1360543 () Bool)

(assert (=> d!1360543 (= (inv!65849 lm!1477) (isStrictlySorted!327 (toList!4027 lm!1477)))))

(declare-fun bs!791709 () Bool)

(assert (= bs!791709 d!1360543))

(assert (=> bs!791709 m!5165779))

(assert (=> start!437692 d!1360543))

(declare-fun bs!791710 () Bool)

(declare-fun d!1360545 () Bool)

(assert (= bs!791710 (and d!1360545 d!1360535)))

(declare-fun lambda!162115 () Int)

(assert (=> bs!791710 (= lambda!162115 lambda!162111)))

(declare-fun bs!791711 () Bool)

(assert (= bs!791711 (and d!1360545 start!437692)))

(assert (=> bs!791711 (= lambda!162115 lambda!162073)))

(declare-fun bs!791712 () Bool)

(assert (= bs!791712 (and d!1360545 d!1360445)))

(assert (=> bs!791712 (= lambda!162115 lambda!162079)))

(declare-fun bs!791713 () Bool)

(assert (= bs!791713 (and d!1360545 d!1360521)))

(assert (=> bs!791713 (= lambda!162115 lambda!162108)))

(declare-fun bs!791714 () Bool)

(assert (= bs!791714 (and d!1360545 d!1360499)))

(assert (=> bs!791714 (= lambda!162115 lambda!162106)))

(declare-fun bs!791715 () Bool)

(assert (= bs!791715 (and d!1360545 d!1360537)))

(assert (=> bs!791715 (= lambda!162115 lambda!162112)))

(declare-fun bs!791716 () Bool)

(assert (= bs!791716 (and d!1360545 d!1360477)))

(assert (=> bs!791716 (not (= lambda!162115 lambda!162095))))

(declare-fun bs!791717 () Bool)

(assert (= bs!791717 (and d!1360545 d!1360519)))

(assert (=> bs!791717 (= lambda!162115 lambda!162107)))

(assert (=> d!1360545 (not (contains!12771 (extractMap!1066 (toList!4027 lm!1477)) key!3287))))

(declare-fun lt!1653504 () Unit!86927)

(declare-fun choose!28437 (ListLongMap!2659 K!11665 Hashable!5405) Unit!86927)

(assert (=> d!1360545 (= lt!1653504 (choose!28437 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1360545 (forall!9953 (toList!4027 lm!1477) lambda!162115)))

(assert (=> d!1360545 (= (lemmaNotInItsHashBucketThenNotInMap!10 lm!1477 key!3287 hashF!1107) lt!1653504)))

(declare-fun bs!791718 () Bool)

(assert (= bs!791718 d!1360545))

(assert (=> bs!791718 m!5165733))

(assert (=> bs!791718 m!5165733))

(assert (=> bs!791718 m!5165735))

(declare-fun m!5166087 () Bool)

(assert (=> bs!791718 m!5166087))

(declare-fun m!5166089 () Bool)

(assert (=> bs!791718 m!5166089))

(assert (=> b!4462678 d!1360545))

(declare-fun d!1360547 () Bool)

(declare-fun res!1851131 () Bool)

(declare-fun e!2779005 () Bool)

(assert (=> d!1360547 (=> res!1851131 e!2779005)))

(assert (=> d!1360547 (= res!1851131 (and ((_ is Cons!50242) (_2!28532 (h!55992 (toList!4027 lm!1477)))) (= (_1!28531 (h!55991 (_2!28532 (h!55992 (toList!4027 lm!1477))))) key!3287)))))

(assert (=> d!1360547 (= (containsKey!1426 (_2!28532 (h!55992 (toList!4027 lm!1477))) key!3287) e!2779005)))

(declare-fun b!4462927 () Bool)

(declare-fun e!2779006 () Bool)

(assert (=> b!4462927 (= e!2779005 e!2779006)))

(declare-fun res!1851132 () Bool)

(assert (=> b!4462927 (=> (not res!1851132) (not e!2779006))))

(assert (=> b!4462927 (= res!1851132 ((_ is Cons!50242) (_2!28532 (h!55992 (toList!4027 lm!1477)))))))

(declare-fun b!4462928 () Bool)

(assert (=> b!4462928 (= e!2779006 (containsKey!1426 (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477)))) key!3287))))

(assert (= (and d!1360547 (not res!1851131)) b!4462927))

(assert (= (and b!4462927 res!1851132) b!4462928))

(declare-fun m!5166091 () Bool)

(assert (=> b!4462928 m!5166091))

(assert (=> b!4462680 d!1360547))

(declare-fun d!1360549 () Bool)

(declare-fun res!1851137 () Bool)

(declare-fun e!2779011 () Bool)

(assert (=> d!1360549 (=> res!1851137 e!2779011)))

(assert (=> d!1360549 (= res!1851137 (not ((_ is Cons!50242) newBucket!178)))))

(assert (=> d!1360549 (= (noDuplicateKeys!1010 newBucket!178) e!2779011)))

(declare-fun b!4462933 () Bool)

(declare-fun e!2779012 () Bool)

(assert (=> b!4462933 (= e!2779011 e!2779012)))

(declare-fun res!1851138 () Bool)

(assert (=> b!4462933 (=> (not res!1851138) (not e!2779012))))

(assert (=> b!4462933 (= res!1851138 (not (containsKey!1426 (t!357316 newBucket!178) (_1!28531 (h!55991 newBucket!178)))))))

(declare-fun b!4462934 () Bool)

(assert (=> b!4462934 (= e!2779012 (noDuplicateKeys!1010 (t!357316 newBucket!178)))))

(assert (= (and d!1360549 (not res!1851137)) b!4462933))

(assert (= (and b!4462933 res!1851138) b!4462934))

(declare-fun m!5166093 () Bool)

(assert (=> b!4462933 m!5166093))

(declare-fun m!5166095 () Bool)

(assert (=> b!4462934 m!5166095))

(assert (=> b!4462679 d!1360549))

(declare-fun d!1360551 () Bool)

(declare-fun hash!2399 (Hashable!5405 K!11665) (_ BitVec 64))

(assert (=> d!1360551 (= (hash!2395 hashF!1107 key!3287) (hash!2399 hashF!1107 key!3287))))

(declare-fun bs!791719 () Bool)

(assert (= bs!791719 d!1360551))

(declare-fun m!5166097 () Bool)

(assert (=> bs!791719 m!5166097))

(assert (=> b!4462681 d!1360551))

(declare-fun d!1360553 () Bool)

(declare-fun res!1851145 () Bool)

(declare-fun e!2779019 () Bool)

(assert (=> d!1360553 (=> res!1851145 e!2779019)))

(declare-fun e!2779020 () Bool)

(assert (=> d!1360553 (= res!1851145 e!2779020)))

(declare-fun res!1851147 () Bool)

(assert (=> d!1360553 (=> (not res!1851147) (not e!2779020))))

(assert (=> d!1360553 (= res!1851147 ((_ is Cons!50243) lt!1653326))))

(assert (=> d!1360553 (= (containsKeyBiggerList!10 lt!1653326 key!3287) e!2779019)))

(declare-fun b!4462941 () Bool)

(assert (=> b!4462941 (= e!2779020 (containsKey!1426 (_2!28532 (h!55992 lt!1653326)) key!3287))))

(declare-fun b!4462942 () Bool)

(declare-fun e!2779021 () Bool)

(assert (=> b!4462942 (= e!2779019 e!2779021)))

(declare-fun res!1851146 () Bool)

(assert (=> b!4462942 (=> (not res!1851146) (not e!2779021))))

(assert (=> b!4462942 (= res!1851146 ((_ is Cons!50243) lt!1653326))))

(declare-fun b!4462943 () Bool)

(assert (=> b!4462943 (= e!2779021 (containsKeyBiggerList!10 (t!357317 lt!1653326) key!3287))))

(assert (= (and d!1360553 res!1851147) b!4462941))

(assert (= (and d!1360553 (not res!1851145)) b!4462942))

(assert (= (and b!4462942 res!1851146) b!4462943))

(declare-fun m!5166099 () Bool)

(assert (=> b!4462941 m!5166099))

(declare-fun m!5166101 () Bool)

(assert (=> b!4462943 m!5166101))

(assert (=> b!4462682 d!1360553))

(declare-fun tp!1335995 () Bool)

(declare-fun e!2779024 () Bool)

(declare-fun b!4462948 () Bool)

(assert (=> b!4462948 (= e!2779024 (and tp_is_empty!27317 tp_is_empty!27319 tp!1335995))))

(assert (=> b!4462684 (= tp!1335982 e!2779024)))

(assert (= (and b!4462684 ((_ is Cons!50242) (t!357316 newBucket!178))) b!4462948))

(declare-fun b!4462953 () Bool)

(declare-fun e!2779027 () Bool)

(declare-fun tp!1336000 () Bool)

(declare-fun tp!1336001 () Bool)

(assert (=> b!4462953 (= e!2779027 (and tp!1336000 tp!1336001))))

(assert (=> b!4462687 (= tp!1335983 e!2779027)))

(assert (= (and b!4462687 ((_ is Cons!50243) (toList!4027 lm!1477))) b!4462953))

(declare-fun b_lambda!147809 () Bool)

(assert (= b_lambda!147797 (or start!437692 b_lambda!147809)))

(declare-fun bs!791720 () Bool)

(declare-fun d!1360555 () Bool)

(assert (= bs!791720 (and d!1360555 start!437692)))

(assert (=> bs!791720 (= (dynLambda!20990 lambda!162073 lt!1653318) (noDuplicateKeys!1010 (_2!28532 lt!1653318)))))

(declare-fun m!5166103 () Bool)

(assert (=> bs!791720 m!5166103))

(assert (=> d!1360473 d!1360555))

(declare-fun b_lambda!147811 () Bool)

(assert (= b_lambda!147807 (or start!437692 b_lambda!147811)))

(declare-fun bs!791721 () Bool)

(declare-fun d!1360557 () Bool)

(assert (= bs!791721 (and d!1360557 start!437692)))

(assert (=> bs!791721 (= (dynLambda!20990 lambda!162073 (h!55992 (toList!4027 lm!1477))) (noDuplicateKeys!1010 (_2!28532 (h!55992 (toList!4027 lm!1477)))))))

(assert (=> bs!791721 m!5166081))

(assert (=> b!4462921 d!1360557))

(check-sat (not b!4462943) (not d!1360467) (not b!4462908) (not b!4462905) (not b!4462913) (not b!4462948) (not d!1360445) (not d!1360485) (not b!4462870) (not b!4462899) (not bm!310645) (not bs!791721) (not b!4462941) (not b!4462722) (not d!1360537) (not b!4462928) (not b!4462833) tp_is_empty!27317 (not d!1360539) (not d!1360451) (not b!4462880) (not d!1360523) (not d!1360519) (not d!1360529) (not b!4462903) (not b!4462906) (not b!4462827) (not bm!310644) (not b!4462757) (not b!4462922) (not b!4462720) (not b!4462832) (not b!4462782) (not d!1360477) (not b!4462901) (not bs!791720) (not d!1360551) (not b!4462874) (not d!1360443) (not d!1360531) (not b!4462915) (not d!1360545) (not b!4462773) (not b!4462933) (not d!1360533) (not b!4462914) (not d!1360449) (not d!1360521) (not b!4462902) (not b!4462907) (not b!4462828) (not d!1360469) (not d!1360465) (not b_lambda!147809) (not b!4462829) (not d!1360535) (not d!1360499) (not b!4462953) (not b!4462728) (not b!4462834) (not d!1360543) (not d!1360473) (not b!4462934) (not b_lambda!147811) tp_is_empty!27319 (not b!4462831))
(check-sat)
(get-model)

(declare-fun d!1360593 () Bool)

(declare-fun e!2779065 () Bool)

(assert (=> d!1360593 e!2779065))

(declare-fun res!1851179 () Bool)

(assert (=> d!1360593 (=> res!1851179 e!2779065)))

(declare-fun lt!1653514 () Bool)

(assert (=> d!1360593 (= res!1851179 (not lt!1653514))))

(declare-fun lt!1653515 () Bool)

(assert (=> d!1360593 (= lt!1653514 lt!1653515)))

(declare-fun lt!1653512 () Unit!86927)

(declare-fun e!2779064 () Unit!86927)

(assert (=> d!1360593 (= lt!1653512 e!2779064)))

(declare-fun c!759428 () Bool)

(assert (=> d!1360593 (= c!759428 lt!1653515)))

(assert (=> d!1360593 (= lt!1653515 (containsKey!1428 (toList!4027 lt!1653494) (_1!28532 lt!1653316)))))

(assert (=> d!1360593 (= (contains!12770 lt!1653494 (_1!28532 lt!1653316)) lt!1653514)))

(declare-fun b!4463013 () Bool)

(declare-fun lt!1653513 () Unit!86927)

(assert (=> b!4463013 (= e!2779064 lt!1653513)))

(assert (=> b!4463013 (= lt!1653513 (lemmaContainsKeyImpliesGetValueByKeyDefined!787 (toList!4027 lt!1653494) (_1!28532 lt!1653316)))))

(assert (=> b!4463013 (isDefined!8184 (getValueByKey!884 (toList!4027 lt!1653494) (_1!28532 lt!1653316)))))

(declare-fun b!4463014 () Bool)

(declare-fun Unit!86941 () Unit!86927)

(assert (=> b!4463014 (= e!2779064 Unit!86941)))

(declare-fun b!4463015 () Bool)

(assert (=> b!4463015 (= e!2779065 (isDefined!8184 (getValueByKey!884 (toList!4027 lt!1653494) (_1!28532 lt!1653316))))))

(assert (= (and d!1360593 c!759428) b!4463013))

(assert (= (and d!1360593 (not c!759428)) b!4463014))

(assert (= (and d!1360593 (not res!1851179)) b!4463015))

(declare-fun m!5166177 () Bool)

(assert (=> d!1360593 m!5166177))

(declare-fun m!5166179 () Bool)

(assert (=> b!4463013 m!5166179))

(assert (=> b!4463013 m!5166051))

(assert (=> b!4463013 m!5166051))

(declare-fun m!5166181 () Bool)

(assert (=> b!4463013 m!5166181))

(assert (=> b!4463015 m!5166051))

(assert (=> b!4463015 m!5166051))

(assert (=> b!4463015 m!5166181))

(assert (=> d!1360531 d!1360593))

(declare-fun d!1360595 () Bool)

(declare-fun c!759433 () Bool)

(assert (=> d!1360595 (= c!759433 (and ((_ is Cons!50243) lt!1653491) (= (_1!28532 (h!55992 lt!1653491)) (_1!28532 lt!1653316))))))

(declare-fun e!2779070 () Option!10898)

(assert (=> d!1360595 (= (getValueByKey!884 lt!1653491 (_1!28532 lt!1653316)) e!2779070)))

(declare-fun b!4463026 () Bool)

(declare-fun e!2779071 () Option!10898)

(assert (=> b!4463026 (= e!2779071 (getValueByKey!884 (t!357317 lt!1653491) (_1!28532 lt!1653316)))))

(declare-fun b!4463024 () Bool)

(assert (=> b!4463024 (= e!2779070 (Some!10897 (_2!28532 (h!55992 lt!1653491))))))

(declare-fun b!4463025 () Bool)

(assert (=> b!4463025 (= e!2779070 e!2779071)))

(declare-fun c!759434 () Bool)

(assert (=> b!4463025 (= c!759434 (and ((_ is Cons!50243) lt!1653491) (not (= (_1!28532 (h!55992 lt!1653491)) (_1!28532 lt!1653316)))))))

(declare-fun b!4463027 () Bool)

(assert (=> b!4463027 (= e!2779071 None!10897)))

(assert (= (and d!1360595 c!759433) b!4463024))

(assert (= (and d!1360595 (not c!759433)) b!4463025))

(assert (= (and b!4463025 c!759434) b!4463026))

(assert (= (and b!4463025 (not c!759434)) b!4463027))

(declare-fun m!5166183 () Bool)

(assert (=> b!4463026 m!5166183))

(assert (=> d!1360531 d!1360595))

(declare-fun d!1360597 () Bool)

(assert (=> d!1360597 (= (getValueByKey!884 lt!1653491 (_1!28532 lt!1653316)) (Some!10897 (_2!28532 lt!1653316)))))

(declare-fun lt!1653518 () Unit!86927)

(declare-fun choose!28439 (List!50367 (_ BitVec 64) List!50366) Unit!86927)

(assert (=> d!1360597 (= lt!1653518 (choose!28439 lt!1653491 (_1!28532 lt!1653316) (_2!28532 lt!1653316)))))

(declare-fun e!2779074 () Bool)

(assert (=> d!1360597 e!2779074))

(declare-fun res!1851184 () Bool)

(assert (=> d!1360597 (=> (not res!1851184) (not e!2779074))))

(assert (=> d!1360597 (= res!1851184 (isStrictlySorted!327 lt!1653491))))

(assert (=> d!1360597 (= (lemmaContainsTupThenGetReturnValue!570 lt!1653491 (_1!28532 lt!1653316) (_2!28532 lt!1653316)) lt!1653518)))

(declare-fun b!4463032 () Bool)

(declare-fun res!1851185 () Bool)

(assert (=> b!4463032 (=> (not res!1851185) (not e!2779074))))

(assert (=> b!4463032 (= res!1851185 (containsKey!1428 lt!1653491 (_1!28532 lt!1653316)))))

(declare-fun b!4463033 () Bool)

(assert (=> b!4463033 (= e!2779074 (contains!12769 lt!1653491 (tuple2!50477 (_1!28532 lt!1653316) (_2!28532 lt!1653316))))))

(assert (= (and d!1360597 res!1851184) b!4463032))

(assert (= (and b!4463032 res!1851185) b!4463033))

(assert (=> d!1360597 m!5166045))

(declare-fun m!5166185 () Bool)

(assert (=> d!1360597 m!5166185))

(declare-fun m!5166187 () Bool)

(assert (=> d!1360597 m!5166187))

(declare-fun m!5166189 () Bool)

(assert (=> b!4463032 m!5166189))

(declare-fun m!5166191 () Bool)

(assert (=> b!4463033 m!5166191))

(assert (=> d!1360531 d!1360597))

(declare-fun b!4463054 () Bool)

(declare-fun e!2779089 () List!50367)

(declare-fun call!310657 () List!50367)

(assert (=> b!4463054 (= e!2779089 call!310657)))

(declare-fun b!4463055 () Bool)

(declare-fun e!2779085 () List!50367)

(declare-fun call!310659 () List!50367)

(assert (=> b!4463055 (= e!2779085 call!310659)))

(declare-fun b!4463056 () Bool)

(declare-fun e!2779086 () List!50367)

(assert (=> b!4463056 (= e!2779086 (insertStrictlySorted!316 (t!357317 (toList!4027 lm!1477)) (_1!28532 lt!1653316) (_2!28532 lt!1653316)))))

(declare-fun b!4463057 () Bool)

(declare-fun e!2779088 () Bool)

(declare-fun lt!1653521 () List!50367)

(assert (=> b!4463057 (= e!2779088 (contains!12769 lt!1653521 (tuple2!50477 (_1!28532 lt!1653316) (_2!28532 lt!1653316))))))

(declare-fun b!4463058 () Bool)

(assert (=> b!4463058 (= e!2779089 call!310657)))

(declare-fun bm!310652 () Bool)

(assert (=> bm!310652 (= call!310657 call!310659)))

(declare-fun b!4463059 () Bool)

(declare-fun e!2779087 () List!50367)

(assert (=> b!4463059 (= e!2779087 e!2779085)))

(declare-fun c!759443 () Bool)

(assert (=> b!4463059 (= c!759443 (and ((_ is Cons!50243) (toList!4027 lm!1477)) (= (_1!28532 (h!55992 (toList!4027 lm!1477))) (_1!28532 lt!1653316))))))

(declare-fun bm!310653 () Bool)

(declare-fun c!759444 () Bool)

(declare-fun call!310658 () List!50367)

(declare-fun $colon$colon!833 (List!50367 tuple2!50476) List!50367)

(assert (=> bm!310653 (= call!310658 ($colon$colon!833 e!2779086 (ite c!759444 (h!55992 (toList!4027 lm!1477)) (tuple2!50477 (_1!28532 lt!1653316) (_2!28532 lt!1653316)))))))

(declare-fun c!759445 () Bool)

(assert (=> bm!310653 (= c!759445 c!759444)))

(declare-fun b!4463060 () Bool)

(assert (=> b!4463060 (= e!2779087 call!310658)))

(declare-fun b!4463061 () Bool)

(declare-fun c!759446 () Bool)

(assert (=> b!4463061 (= c!759446 (and ((_ is Cons!50243) (toList!4027 lm!1477)) (bvsgt (_1!28532 (h!55992 (toList!4027 lm!1477))) (_1!28532 lt!1653316))))))

(assert (=> b!4463061 (= e!2779085 e!2779089)))

(declare-fun b!4463062 () Bool)

(declare-fun res!1851191 () Bool)

(assert (=> b!4463062 (=> (not res!1851191) (not e!2779088))))

(assert (=> b!4463062 (= res!1851191 (containsKey!1428 lt!1653521 (_1!28532 lt!1653316)))))

(declare-fun b!4463063 () Bool)

(assert (=> b!4463063 (= e!2779086 (ite c!759443 (t!357317 (toList!4027 lm!1477)) (ite c!759446 (Cons!50243 (h!55992 (toList!4027 lm!1477)) (t!357317 (toList!4027 lm!1477))) Nil!50243)))))

(declare-fun d!1360599 () Bool)

(assert (=> d!1360599 e!2779088))

(declare-fun res!1851190 () Bool)

(assert (=> d!1360599 (=> (not res!1851190) (not e!2779088))))

(assert (=> d!1360599 (= res!1851190 (isStrictlySorted!327 lt!1653521))))

(assert (=> d!1360599 (= lt!1653521 e!2779087)))

(assert (=> d!1360599 (= c!759444 (and ((_ is Cons!50243) (toList!4027 lm!1477)) (bvslt (_1!28532 (h!55992 (toList!4027 lm!1477))) (_1!28532 lt!1653316))))))

(assert (=> d!1360599 (isStrictlySorted!327 (toList!4027 lm!1477))))

(assert (=> d!1360599 (= (insertStrictlySorted!316 (toList!4027 lm!1477) (_1!28532 lt!1653316) (_2!28532 lt!1653316)) lt!1653521)))

(declare-fun bm!310654 () Bool)

(assert (=> bm!310654 (= call!310659 call!310658)))

(assert (= (and d!1360599 c!759444) b!4463060))

(assert (= (and d!1360599 (not c!759444)) b!4463059))

(assert (= (and b!4463059 c!759443) b!4463055))

(assert (= (and b!4463059 (not c!759443)) b!4463061))

(assert (= (and b!4463061 c!759446) b!4463054))

(assert (= (and b!4463061 (not c!759446)) b!4463058))

(assert (= (or b!4463054 b!4463058) bm!310652))

(assert (= (or b!4463055 bm!310652) bm!310654))

(assert (= (or b!4463060 bm!310654) bm!310653))

(assert (= (and bm!310653 c!759445) b!4463056))

(assert (= (and bm!310653 (not c!759445)) b!4463063))

(assert (= (and d!1360599 res!1851190) b!4463062))

(assert (= (and b!4463062 res!1851191) b!4463057))

(declare-fun m!5166193 () Bool)

(assert (=> b!4463057 m!5166193))

(declare-fun m!5166195 () Bool)

(assert (=> d!1360599 m!5166195))

(assert (=> d!1360599 m!5165779))

(declare-fun m!5166197 () Bool)

(assert (=> b!4463056 m!5166197))

(declare-fun m!5166199 () Bool)

(assert (=> bm!310653 m!5166199))

(declare-fun m!5166201 () Bool)

(assert (=> b!4463062 m!5166201))

(assert (=> d!1360531 d!1360599))

(declare-fun bs!791746 () Bool)

(declare-fun b!4463117 () Bool)

(assert (= bs!791746 (and b!4463117 d!1360443)))

(declare-fun lambda!162187 () Int)

(assert (=> bs!791746 (not (= lambda!162187 lambda!162076))))

(assert (=> b!4463117 true))

(declare-fun bs!791747 () Bool)

(declare-fun b!4463116 () Bool)

(assert (= bs!791747 (and b!4463116 d!1360443)))

(declare-fun lambda!162188 () Int)

(assert (=> bs!791747 (not (= lambda!162188 lambda!162076))))

(declare-fun bs!791748 () Bool)

(assert (= bs!791748 (and b!4463116 b!4463117)))

(assert (=> bs!791748 (= lambda!162188 lambda!162187)))

(assert (=> b!4463116 true))

(declare-fun lambda!162189 () Int)

(assert (=> bs!791747 (not (= lambda!162189 lambda!162076))))

(declare-fun lt!1653648 () ListMap!3289)

(assert (=> bs!791748 (= (= lt!1653648 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162189 lambda!162187))))

(assert (=> b!4463116 (= (= lt!1653648 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162189 lambda!162188))))

(assert (=> b!4463116 true))

(declare-fun bs!791749 () Bool)

(declare-fun d!1360601 () Bool)

(assert (= bs!791749 (and d!1360601 d!1360443)))

(declare-fun lambda!162190 () Int)

(assert (=> bs!791749 (not (= lambda!162190 lambda!162076))))

(declare-fun bs!791750 () Bool)

(assert (= bs!791750 (and d!1360601 b!4463117)))

(declare-fun lt!1653641 () ListMap!3289)

(assert (=> bs!791750 (= (= lt!1653641 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162190 lambda!162187))))

(declare-fun bs!791751 () Bool)

(assert (= bs!791751 (and d!1360601 b!4463116)))

(assert (=> bs!791751 (= (= lt!1653641 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162190 lambda!162188))))

(assert (=> bs!791751 (= (= lt!1653641 lt!1653648) (= lambda!162190 lambda!162189))))

(assert (=> d!1360601 true))

(declare-fun b!4463113 () Bool)

(declare-fun e!2779121 () Bool)

(assert (=> b!4463113 (= e!2779121 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 lt!1653326))) lambda!162189))))

(declare-fun b!4463114 () Bool)

(declare-fun res!1851221 () Bool)

(declare-fun e!2779123 () Bool)

(assert (=> b!4463114 (=> (not res!1851221) (not e!2779123))))

(assert (=> b!4463114 (= res!1851221 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 lt!1653326))) lambda!162190))))

(declare-fun b!4463115 () Bool)

(assert (=> b!4463115 (= e!2779123 (invariantList!913 (toList!4028 lt!1653641)))))

(declare-fun e!2779122 () ListMap!3289)

(assert (=> b!4463116 (= e!2779122 lt!1653648)))

(declare-fun lt!1653644 () ListMap!3289)

(declare-fun +!1346 (ListMap!3289 tuple2!50474) ListMap!3289)

(assert (=> b!4463116 (= lt!1653644 (+!1346 (extractMap!1066 (t!357317 lt!1653326)) (h!55991 (_2!28532 (h!55992 lt!1653326)))))))

(assert (=> b!4463116 (= lt!1653648 (addToMapMapFromBucket!575 (t!357316 (_2!28532 (h!55992 lt!1653326))) (+!1346 (extractMap!1066 (t!357317 lt!1653326)) (h!55991 (_2!28532 (h!55992 lt!1653326))))))))

(declare-fun lt!1653643 () Unit!86927)

(declare-fun call!310677 () Unit!86927)

(assert (=> b!4463116 (= lt!1653643 call!310677)))

(declare-fun call!310678 () Bool)

(assert (=> b!4463116 call!310678))

(declare-fun lt!1653638 () Unit!86927)

(assert (=> b!4463116 (= lt!1653638 lt!1653643)))

(assert (=> b!4463116 (forall!9955 (toList!4028 lt!1653644) lambda!162189)))

(declare-fun lt!1653647 () Unit!86927)

(declare-fun Unit!86945 () Unit!86927)

(assert (=> b!4463116 (= lt!1653647 Unit!86945)))

(declare-fun call!310676 () Bool)

(assert (=> b!4463116 call!310676))

(declare-fun lt!1653656 () Unit!86927)

(declare-fun Unit!86947 () Unit!86927)

(assert (=> b!4463116 (= lt!1653656 Unit!86947)))

(declare-fun lt!1653649 () Unit!86927)

(declare-fun Unit!86948 () Unit!86927)

(assert (=> b!4463116 (= lt!1653649 Unit!86948)))

(declare-fun lt!1653654 () Unit!86927)

(declare-fun forallContained!2229 (List!50366 Int tuple2!50474) Unit!86927)

(assert (=> b!4463116 (= lt!1653654 (forallContained!2229 (toList!4028 lt!1653644) lambda!162189 (h!55991 (_2!28532 (h!55992 lt!1653326)))))))

(assert (=> b!4463116 (contains!12771 lt!1653644 (_1!28531 (h!55991 (_2!28532 (h!55992 lt!1653326)))))))

(declare-fun lt!1653645 () Unit!86927)

(declare-fun Unit!86952 () Unit!86927)

(assert (=> b!4463116 (= lt!1653645 Unit!86952)))

(assert (=> b!4463116 (contains!12771 lt!1653648 (_1!28531 (h!55991 (_2!28532 (h!55992 lt!1653326)))))))

(declare-fun lt!1653651 () Unit!86927)

(declare-fun Unit!86954 () Unit!86927)

(assert (=> b!4463116 (= lt!1653651 Unit!86954)))

(assert (=> b!4463116 (forall!9955 (_2!28532 (h!55992 lt!1653326)) lambda!162189)))

(declare-fun lt!1653653 () Unit!86927)

(declare-fun Unit!86955 () Unit!86927)

(assert (=> b!4463116 (= lt!1653653 Unit!86955)))

(assert (=> b!4463116 (forall!9955 (toList!4028 lt!1653644) lambda!162189)))

(declare-fun lt!1653646 () Unit!86927)

(declare-fun Unit!86956 () Unit!86927)

(assert (=> b!4463116 (= lt!1653646 Unit!86956)))

(declare-fun lt!1653657 () Unit!86927)

(declare-fun Unit!86957 () Unit!86927)

(assert (=> b!4463116 (= lt!1653657 Unit!86957)))

(declare-fun lt!1653655 () Unit!86927)

(declare-fun addForallContainsKeyThenBeforeAdding!258 (ListMap!3289 ListMap!3289 K!11665 V!11911) Unit!86927)

(assert (=> b!4463116 (= lt!1653655 (addForallContainsKeyThenBeforeAdding!258 (extractMap!1066 (t!357317 lt!1653326)) lt!1653648 (_1!28531 (h!55991 (_2!28532 (h!55992 lt!1653326)))) (_2!28531 (h!55991 (_2!28532 (h!55992 lt!1653326))))))))

(assert (=> b!4463116 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 lt!1653326))) lambda!162189)))

(declare-fun lt!1653640 () Unit!86927)

(assert (=> b!4463116 (= lt!1653640 lt!1653655)))

(assert (=> b!4463116 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 lt!1653326))) lambda!162189)))

(declare-fun lt!1653639 () Unit!86927)

(declare-fun Unit!86960 () Unit!86927)

(assert (=> b!4463116 (= lt!1653639 Unit!86960)))

(declare-fun res!1851222 () Bool)

(assert (=> b!4463116 (= res!1851222 (forall!9955 (_2!28532 (h!55992 lt!1653326)) lambda!162189))))

(assert (=> b!4463116 (=> (not res!1851222) (not e!2779121))))

(assert (=> b!4463116 e!2779121))

(declare-fun lt!1653642 () Unit!86927)

(declare-fun Unit!86961 () Unit!86927)

(assert (=> b!4463116 (= lt!1653642 Unit!86961)))

(assert (=> b!4463117 (= e!2779122 (extractMap!1066 (t!357317 lt!1653326)))))

(declare-fun lt!1653650 () Unit!86927)

(assert (=> b!4463117 (= lt!1653650 call!310677)))

(assert (=> b!4463117 call!310676))

(declare-fun lt!1653637 () Unit!86927)

(assert (=> b!4463117 (= lt!1653637 lt!1653650)))

(assert (=> b!4463117 call!310678))

(declare-fun lt!1653652 () Unit!86927)

(declare-fun Unit!86963 () Unit!86927)

(assert (=> b!4463117 (= lt!1653652 Unit!86963)))

(assert (=> d!1360601 e!2779123))

(declare-fun res!1851223 () Bool)

(assert (=> d!1360601 (=> (not res!1851223) (not e!2779123))))

(assert (=> d!1360601 (= res!1851223 (forall!9955 (_2!28532 (h!55992 lt!1653326)) lambda!162190))))

(assert (=> d!1360601 (= lt!1653641 e!2779122)))

(declare-fun c!759456 () Bool)

(assert (=> d!1360601 (= c!759456 ((_ is Nil!50242) (_2!28532 (h!55992 lt!1653326))))))

(assert (=> d!1360601 (noDuplicateKeys!1010 (_2!28532 (h!55992 lt!1653326)))))

(assert (=> d!1360601 (= (addToMapMapFromBucket!575 (_2!28532 (h!55992 lt!1653326)) (extractMap!1066 (t!357317 lt!1653326))) lt!1653641)))

(declare-fun bm!310671 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!259 (ListMap!3289) Unit!86927)

(assert (=> bm!310671 (= call!310677 (lemmaContainsAllItsOwnKeys!259 (extractMap!1066 (t!357317 lt!1653326))))))

(declare-fun bm!310672 () Bool)

(assert (=> bm!310672 (= call!310676 (forall!9955 (ite c!759456 (toList!4028 (extractMap!1066 (t!357317 lt!1653326))) (t!357316 (_2!28532 (h!55992 lt!1653326)))) (ite c!759456 lambda!162187 lambda!162189)))))

(declare-fun bm!310673 () Bool)

(assert (=> bm!310673 (= call!310678 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 lt!1653326))) (ite c!759456 lambda!162187 lambda!162188)))))

(assert (= (and d!1360601 c!759456) b!4463117))

(assert (= (and d!1360601 (not c!759456)) b!4463116))

(assert (= (and b!4463116 res!1851222) b!4463113))

(assert (= (or b!4463117 b!4463116) bm!310672))

(assert (= (or b!4463117 b!4463116) bm!310673))

(assert (= (or b!4463117 b!4463116) bm!310671))

(assert (= (and d!1360601 res!1851223) b!4463114))

(assert (= (and b!4463114 res!1851221) b!4463115))

(declare-fun m!5166281 () Bool)

(assert (=> b!4463116 m!5166281))

(declare-fun m!5166283 () Bool)

(assert (=> b!4463116 m!5166283))

(declare-fun m!5166285 () Bool)

(assert (=> b!4463116 m!5166285))

(assert (=> b!4463116 m!5166071))

(assert (=> b!4463116 m!5166281))

(declare-fun m!5166287 () Bool)

(assert (=> b!4463116 m!5166287))

(declare-fun m!5166289 () Bool)

(assert (=> b!4463116 m!5166289))

(declare-fun m!5166291 () Bool)

(assert (=> b!4463116 m!5166291))

(assert (=> b!4463116 m!5166285))

(assert (=> b!4463116 m!5166291))

(assert (=> b!4463116 m!5166071))

(declare-fun m!5166293 () Bool)

(assert (=> b!4463116 m!5166293))

(declare-fun m!5166295 () Bool)

(assert (=> b!4463116 m!5166295))

(declare-fun m!5166297 () Bool)

(assert (=> b!4463116 m!5166297))

(assert (=> b!4463116 m!5166295))

(assert (=> bm!310671 m!5166071))

(declare-fun m!5166299 () Bool)

(assert (=> bm!310671 m!5166299))

(declare-fun m!5166301 () Bool)

(assert (=> bm!310672 m!5166301))

(declare-fun m!5166303 () Bool)

(assert (=> b!4463114 m!5166303))

(declare-fun m!5166305 () Bool)

(assert (=> b!4463115 m!5166305))

(declare-fun m!5166307 () Bool)

(assert (=> bm!310673 m!5166307))

(assert (=> b!4463113 m!5166291))

(declare-fun m!5166309 () Bool)

(assert (=> d!1360601 m!5166309))

(declare-fun m!5166311 () Bool)

(assert (=> d!1360601 m!5166311))

(assert (=> b!4462915 d!1360601))

(declare-fun bs!791752 () Bool)

(declare-fun d!1360615 () Bool)

(assert (= bs!791752 (and d!1360615 d!1360535)))

(declare-fun lambda!162191 () Int)

(assert (=> bs!791752 (= lambda!162191 lambda!162111)))

(declare-fun bs!791753 () Bool)

(assert (= bs!791753 (and d!1360615 start!437692)))

(assert (=> bs!791753 (= lambda!162191 lambda!162073)))

(declare-fun bs!791754 () Bool)

(assert (= bs!791754 (and d!1360615 d!1360521)))

(assert (=> bs!791754 (= lambda!162191 lambda!162108)))

(declare-fun bs!791755 () Bool)

(assert (= bs!791755 (and d!1360615 d!1360499)))

(assert (=> bs!791755 (= lambda!162191 lambda!162106)))

(declare-fun bs!791756 () Bool)

(assert (= bs!791756 (and d!1360615 d!1360537)))

(assert (=> bs!791756 (= lambda!162191 lambda!162112)))

(declare-fun bs!791757 () Bool)

(assert (= bs!791757 (and d!1360615 d!1360545)))

(assert (=> bs!791757 (= lambda!162191 lambda!162115)))

(declare-fun bs!791758 () Bool)

(assert (= bs!791758 (and d!1360615 d!1360445)))

(assert (=> bs!791758 (= lambda!162191 lambda!162079)))

(declare-fun bs!791759 () Bool)

(assert (= bs!791759 (and d!1360615 d!1360477)))

(assert (=> bs!791759 (not (= lambda!162191 lambda!162095))))

(declare-fun bs!791760 () Bool)

(assert (= bs!791760 (and d!1360615 d!1360519)))

(assert (=> bs!791760 (= lambda!162191 lambda!162107)))

(declare-fun lt!1653658 () ListMap!3289)

(assert (=> d!1360615 (invariantList!913 (toList!4028 lt!1653658))))

(declare-fun e!2779124 () ListMap!3289)

(assert (=> d!1360615 (= lt!1653658 e!2779124)))

(declare-fun c!759457 () Bool)

(assert (=> d!1360615 (= c!759457 ((_ is Cons!50243) (t!357317 lt!1653326)))))

(assert (=> d!1360615 (forall!9953 (t!357317 lt!1653326) lambda!162191)))

(assert (=> d!1360615 (= (extractMap!1066 (t!357317 lt!1653326)) lt!1653658)))

(declare-fun b!4463120 () Bool)

(assert (=> b!4463120 (= e!2779124 (addToMapMapFromBucket!575 (_2!28532 (h!55992 (t!357317 lt!1653326))) (extractMap!1066 (t!357317 (t!357317 lt!1653326)))))))

(declare-fun b!4463121 () Bool)

(assert (=> b!4463121 (= e!2779124 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360615 c!759457) b!4463120))

(assert (= (and d!1360615 (not c!759457)) b!4463121))

(declare-fun m!5166313 () Bool)

(assert (=> d!1360615 m!5166313))

(declare-fun m!5166315 () Bool)

(assert (=> d!1360615 m!5166315))

(declare-fun m!5166317 () Bool)

(assert (=> b!4463120 m!5166317))

(assert (=> b!4463120 m!5166317))

(declare-fun m!5166319 () Bool)

(assert (=> b!4463120 m!5166319))

(assert (=> b!4462915 d!1360615))

(declare-fun d!1360617 () Bool)

(declare-fun res!1851228 () Bool)

(declare-fun e!2779129 () Bool)

(assert (=> d!1360617 (=> res!1851228 e!2779129)))

(assert (=> d!1360617 (= res!1851228 (and ((_ is Cons!50243) (toList!4027 lm!1477)) (= (_1!28532 (h!55992 (toList!4027 lm!1477))) lt!1653320)))))

(assert (=> d!1360617 (= (containsKey!1428 (toList!4027 lm!1477) lt!1653320) e!2779129)))

(declare-fun b!4463126 () Bool)

(declare-fun e!2779130 () Bool)

(assert (=> b!4463126 (= e!2779129 e!2779130)))

(declare-fun res!1851229 () Bool)

(assert (=> b!4463126 (=> (not res!1851229) (not e!2779130))))

(assert (=> b!4463126 (= res!1851229 (and (or (not ((_ is Cons!50243) (toList!4027 lm!1477))) (bvsle (_1!28532 (h!55992 (toList!4027 lm!1477))) lt!1653320)) ((_ is Cons!50243) (toList!4027 lm!1477)) (bvslt (_1!28532 (h!55992 (toList!4027 lm!1477))) lt!1653320)))))

(declare-fun b!4463127 () Bool)

(assert (=> b!4463127 (= e!2779130 (containsKey!1428 (t!357317 (toList!4027 lm!1477)) lt!1653320))))

(assert (= (and d!1360617 (not res!1851228)) b!4463126))

(assert (= (and b!4463126 res!1851229) b!4463127))

(declare-fun m!5166321 () Bool)

(assert (=> b!4463127 m!5166321))

(assert (=> d!1360451 d!1360617))

(declare-fun d!1360619 () Bool)

(declare-fun e!2779132 () Bool)

(assert (=> d!1360619 e!2779132))

(declare-fun res!1851230 () Bool)

(assert (=> d!1360619 (=> res!1851230 e!2779132)))

(declare-fun lt!1653661 () Bool)

(assert (=> d!1360619 (= res!1851230 (not lt!1653661))))

(declare-fun lt!1653662 () Bool)

(assert (=> d!1360619 (= lt!1653661 lt!1653662)))

(declare-fun lt!1653659 () Unit!86927)

(declare-fun e!2779131 () Unit!86927)

(assert (=> d!1360619 (= lt!1653659 e!2779131)))

(declare-fun c!759458 () Bool)

(assert (=> d!1360619 (= c!759458 lt!1653662)))

(assert (=> d!1360619 (= lt!1653662 (containsKey!1428 (toList!4027 lm!1477) (hash!2395 hashF!1107 key!3287)))))

(assert (=> d!1360619 (= (contains!12770 lm!1477 (hash!2395 hashF!1107 key!3287)) lt!1653661)))

(declare-fun b!4463128 () Bool)

(declare-fun lt!1653660 () Unit!86927)

(assert (=> b!4463128 (= e!2779131 lt!1653660)))

(assert (=> b!4463128 (= lt!1653660 (lemmaContainsKeyImpliesGetValueByKeyDefined!787 (toList!4027 lm!1477) (hash!2395 hashF!1107 key!3287)))))

(assert (=> b!4463128 (isDefined!8184 (getValueByKey!884 (toList!4027 lm!1477) (hash!2395 hashF!1107 key!3287)))))

(declare-fun b!4463129 () Bool)

(declare-fun Unit!86964 () Unit!86927)

(assert (=> b!4463129 (= e!2779131 Unit!86964)))

(declare-fun b!4463130 () Bool)

(assert (=> b!4463130 (= e!2779132 (isDefined!8184 (getValueByKey!884 (toList!4027 lm!1477) (hash!2395 hashF!1107 key!3287))))))

(assert (= (and d!1360619 c!759458) b!4463128))

(assert (= (and d!1360619 (not c!759458)) b!4463129))

(assert (= (and d!1360619 (not res!1851230)) b!4463130))

(assert (=> d!1360619 m!5165683))

(declare-fun m!5166323 () Bool)

(assert (=> d!1360619 m!5166323))

(assert (=> b!4463128 m!5165683))

(declare-fun m!5166325 () Bool)

(assert (=> b!4463128 m!5166325))

(assert (=> b!4463128 m!5165683))

(declare-fun m!5166327 () Bool)

(assert (=> b!4463128 m!5166327))

(assert (=> b!4463128 m!5166327))

(declare-fun m!5166329 () Bool)

(assert (=> b!4463128 m!5166329))

(assert (=> b!4463130 m!5165683))

(assert (=> b!4463130 m!5166327))

(assert (=> b!4463130 m!5166327))

(assert (=> b!4463130 m!5166329))

(assert (=> d!1360445 d!1360619))

(assert (=> d!1360445 d!1360551))

(declare-fun d!1360621 () Bool)

(assert (=> d!1360621 (contains!12770 lm!1477 (hash!2395 hashF!1107 key!3287))))

(assert (=> d!1360621 true))

(declare-fun _$27!1055 () Unit!86927)

(assert (=> d!1360621 (= (choose!28429 lm!1477 key!3287 hashF!1107) _$27!1055)))

(declare-fun bs!791761 () Bool)

(assert (= bs!791761 d!1360621))

(assert (=> bs!791761 m!5165683))

(assert (=> bs!791761 m!5165683))

(assert (=> bs!791761 m!5165739))

(assert (=> d!1360445 d!1360621))

(declare-fun d!1360623 () Bool)

(declare-fun res!1851231 () Bool)

(declare-fun e!2779135 () Bool)

(assert (=> d!1360623 (=> res!1851231 e!2779135)))

(assert (=> d!1360623 (= res!1851231 ((_ is Nil!50243) (toList!4027 lm!1477)))))

(assert (=> d!1360623 (= (forall!9953 (toList!4027 lm!1477) lambda!162079) e!2779135)))

(declare-fun b!4463131 () Bool)

(declare-fun e!2779136 () Bool)

(assert (=> b!4463131 (= e!2779135 e!2779136)))

(declare-fun res!1851232 () Bool)

(assert (=> b!4463131 (=> (not res!1851232) (not e!2779136))))

(assert (=> b!4463131 (= res!1851232 (dynLambda!20990 lambda!162079 (h!55992 (toList!4027 lm!1477))))))

(declare-fun b!4463132 () Bool)

(assert (=> b!4463132 (= e!2779136 (forall!9953 (t!357317 (toList!4027 lm!1477)) lambda!162079))))

(assert (= (and d!1360623 (not res!1851231)) b!4463131))

(assert (= (and b!4463131 res!1851232) b!4463132))

(declare-fun b_lambda!147819 () Bool)

(assert (=> (not b_lambda!147819) (not b!4463131)))

(declare-fun m!5166331 () Bool)

(assert (=> b!4463131 m!5166331))

(declare-fun m!5166333 () Bool)

(assert (=> b!4463132 m!5166333))

(assert (=> d!1360445 d!1360623))

(declare-fun d!1360625 () Bool)

(declare-fun c!759461 () Bool)

(assert (=> d!1360625 (= c!759461 ((_ is Nil!50243) (toList!4027 lm!1477)))))

(declare-fun e!2779139 () (InoxSet tuple2!50476))

(assert (=> d!1360625 (= (content!8059 (toList!4027 lm!1477)) e!2779139)))

(declare-fun b!4463137 () Bool)

(assert (=> b!4463137 (= e!2779139 ((as const (Array tuple2!50476 Bool)) false))))

(declare-fun b!4463138 () Bool)

(assert (=> b!4463138 (= e!2779139 ((_ map or) (store ((as const (Array tuple2!50476 Bool)) false) (h!55992 (toList!4027 lm!1477)) true) (content!8059 (t!357317 (toList!4027 lm!1477)))))))

(assert (= (and d!1360625 c!759461) b!4463137))

(assert (= (and d!1360625 (not c!759461)) b!4463138))

(declare-fun m!5166335 () Bool)

(assert (=> b!4463138 m!5166335))

(declare-fun m!5166337 () Bool)

(assert (=> b!4463138 m!5166337))

(assert (=> d!1360469 d!1360625))

(declare-fun d!1360627 () Bool)

(declare-fun lt!1653663 () Bool)

(assert (=> d!1360627 (= lt!1653663 (select (content!8059 (toList!4027 lt!1653494)) lt!1653316))))

(declare-fun e!2779141 () Bool)

(assert (=> d!1360627 (= lt!1653663 e!2779141)))

(declare-fun res!1851233 () Bool)

(assert (=> d!1360627 (=> (not res!1851233) (not e!2779141))))

(assert (=> d!1360627 (= res!1851233 ((_ is Cons!50243) (toList!4027 lt!1653494)))))

(assert (=> d!1360627 (= (contains!12769 (toList!4027 lt!1653494) lt!1653316) lt!1653663)))

(declare-fun b!4463139 () Bool)

(declare-fun e!2779140 () Bool)

(assert (=> b!4463139 (= e!2779141 e!2779140)))

(declare-fun res!1851234 () Bool)

(assert (=> b!4463139 (=> res!1851234 e!2779140)))

(assert (=> b!4463139 (= res!1851234 (= (h!55992 (toList!4027 lt!1653494)) lt!1653316))))

(declare-fun b!4463140 () Bool)

(assert (=> b!4463140 (= e!2779140 (contains!12769 (t!357317 (toList!4027 lt!1653494)) lt!1653316))))

(assert (= (and d!1360627 res!1851233) b!4463139))

(assert (= (and b!4463139 (not res!1851234)) b!4463140))

(declare-fun m!5166339 () Bool)

(assert (=> d!1360627 m!5166339))

(declare-fun m!5166341 () Bool)

(assert (=> d!1360627 m!5166341))

(declare-fun m!5166343 () Bool)

(assert (=> b!4463140 m!5166343))

(assert (=> b!4462914 d!1360627))

(declare-fun d!1360629 () Bool)

(declare-fun res!1851239 () Bool)

(declare-fun e!2779146 () Bool)

(assert (=> d!1360629 (=> res!1851239 e!2779146)))

(assert (=> d!1360629 (= res!1851239 (and ((_ is Cons!50242) (toList!4028 (extractMap!1066 lt!1653326))) (= (_1!28531 (h!55991 (toList!4028 (extractMap!1066 lt!1653326)))) key!3287)))))

(assert (=> d!1360629 (= (containsKey!1429 (toList!4028 (extractMap!1066 lt!1653326)) key!3287) e!2779146)))

(declare-fun b!4463145 () Bool)

(declare-fun e!2779147 () Bool)

(assert (=> b!4463145 (= e!2779146 e!2779147)))

(declare-fun res!1851240 () Bool)

(assert (=> b!4463145 (=> (not res!1851240) (not e!2779147))))

(assert (=> b!4463145 (= res!1851240 ((_ is Cons!50242) (toList!4028 (extractMap!1066 lt!1653326))))))

(declare-fun b!4463146 () Bool)

(assert (=> b!4463146 (= e!2779147 (containsKey!1429 (t!357316 (toList!4028 (extractMap!1066 lt!1653326))) key!3287))))

(assert (= (and d!1360629 (not res!1851239)) b!4463145))

(assert (= (and b!4463145 res!1851240) b!4463146))

(declare-fun m!5166345 () Bool)

(assert (=> b!4463146 m!5166345))

(assert (=> d!1360529 d!1360629))

(declare-fun b!4463148 () Bool)

(declare-fun e!2779149 () List!50366)

(declare-fun e!2779148 () List!50366)

(assert (=> b!4463148 (= e!2779149 e!2779148)))

(declare-fun c!759463 () Bool)

(assert (=> b!4463148 (= c!759463 ((_ is Cons!50242) (t!357316 lt!1653321)))))

(declare-fun b!4463147 () Bool)

(assert (=> b!4463147 (= e!2779149 (t!357316 (t!357316 lt!1653321)))))

(declare-fun d!1360631 () Bool)

(declare-fun lt!1653664 () List!50366)

(assert (=> d!1360631 (not (containsKey!1426 lt!1653664 key!3287))))

(assert (=> d!1360631 (= lt!1653664 e!2779149)))

(declare-fun c!759462 () Bool)

(assert (=> d!1360631 (= c!759462 (and ((_ is Cons!50242) (t!357316 lt!1653321)) (= (_1!28531 (h!55991 (t!357316 lt!1653321))) key!3287)))))

(assert (=> d!1360631 (noDuplicateKeys!1010 (t!357316 lt!1653321))))

(assert (=> d!1360631 (= (removePairForKey!637 (t!357316 lt!1653321) key!3287) lt!1653664)))

(declare-fun b!4463149 () Bool)

(assert (=> b!4463149 (= e!2779148 (Cons!50242 (h!55991 (t!357316 lt!1653321)) (removePairForKey!637 (t!357316 (t!357316 lt!1653321)) key!3287)))))

(declare-fun b!4463150 () Bool)

(assert (=> b!4463150 (= e!2779148 Nil!50242)))

(assert (= (and d!1360631 c!759462) b!4463147))

(assert (= (and d!1360631 (not c!759462)) b!4463148))

(assert (= (and b!4463148 c!759463) b!4463149))

(assert (= (and b!4463148 (not c!759463)) b!4463150))

(declare-fun m!5166347 () Bool)

(assert (=> d!1360631 m!5166347))

(declare-fun m!5166349 () Bool)

(assert (=> d!1360631 m!5166349))

(declare-fun m!5166351 () Bool)

(assert (=> b!4463149 m!5166351))

(assert (=> b!4462757 d!1360631))

(declare-fun b!4463170 () Bool)

(assert (=> b!4463170 true))

(declare-fun d!1360633 () Bool)

(declare-fun e!2779158 () Bool)

(assert (=> d!1360633 e!2779158))

(declare-fun res!1851248 () Bool)

(assert (=> d!1360633 (=> (not res!1851248) (not e!2779158))))

(declare-fun lt!1653683 () List!50369)

(declare-fun noDuplicate!690 (List!50369) Bool)

(assert (=> d!1360633 (= res!1851248 (noDuplicate!690 lt!1653683))))

(assert (=> d!1360633 (= lt!1653683 (getKeysList!361 (toList!4028 (extractMap!1066 lt!1653326))))))

(assert (=> d!1360633 (= (keys!17334 (extractMap!1066 lt!1653326)) lt!1653683)))

(declare-fun b!4463169 () Bool)

(declare-fun res!1851247 () Bool)

(assert (=> b!4463169 (=> (not res!1851247) (not e!2779158))))

(declare-fun length!236 (List!50369) Int)

(declare-fun length!237 (List!50366) Int)

(assert (=> b!4463169 (= res!1851247 (= (length!236 lt!1653683) (length!237 (toList!4028 (extractMap!1066 lt!1653326)))))))

(declare-fun res!1851249 () Bool)

(assert (=> b!4463170 (=> (not res!1851249) (not e!2779158))))

(declare-fun lambda!162196 () Int)

(declare-fun forall!9957 (List!50369 Int) Bool)

(assert (=> b!4463170 (= res!1851249 (forall!9957 lt!1653683 lambda!162196))))

(declare-fun b!4463171 () Bool)

(declare-fun lambda!162197 () Int)

(declare-fun map!11006 (List!50366 Int) List!50369)

(assert (=> b!4463171 (= e!2779158 (= (content!8061 lt!1653683) (content!8061 (map!11006 (toList!4028 (extractMap!1066 lt!1653326)) lambda!162197))))))

(assert (= (and d!1360633 res!1851248) b!4463169))

(assert (= (and b!4463169 res!1851247) b!4463170))

(assert (= (and b!4463170 res!1851249) b!4463171))

(declare-fun m!5166353 () Bool)

(assert (=> d!1360633 m!5166353))

(assert (=> d!1360633 m!5166041))

(declare-fun m!5166355 () Bool)

(assert (=> b!4463169 m!5166355))

(declare-fun m!5166357 () Bool)

(assert (=> b!4463169 m!5166357))

(declare-fun m!5166359 () Bool)

(assert (=> b!4463170 m!5166359))

(declare-fun m!5166361 () Bool)

(assert (=> b!4463171 m!5166361))

(declare-fun m!5166363 () Bool)

(assert (=> b!4463171 m!5166363))

(assert (=> b!4463171 m!5166363))

(declare-fun m!5166365 () Bool)

(assert (=> b!4463171 m!5166365))

(assert (=> b!4462901 d!1360633))

(declare-fun d!1360635 () Bool)

(declare-fun res!1851250 () Bool)

(declare-fun e!2779165 () Bool)

(assert (=> d!1360635 (=> res!1851250 e!2779165)))

(assert (=> d!1360635 (= res!1851250 ((_ is Nil!50243) (t!357317 (toList!4027 lm!1477))))))

(assert (=> d!1360635 (= (forall!9953 (t!357317 (toList!4027 lm!1477)) lambda!162073) e!2779165)))

(declare-fun b!4463186 () Bool)

(declare-fun e!2779166 () Bool)

(assert (=> b!4463186 (= e!2779165 e!2779166)))

(declare-fun res!1851251 () Bool)

(assert (=> b!4463186 (=> (not res!1851251) (not e!2779166))))

(assert (=> b!4463186 (= res!1851251 (dynLambda!20990 lambda!162073 (h!55992 (t!357317 (toList!4027 lm!1477)))))))

(declare-fun b!4463187 () Bool)

(assert (=> b!4463187 (= e!2779166 (forall!9953 (t!357317 (t!357317 (toList!4027 lm!1477))) lambda!162073))))

(assert (= (and d!1360635 (not res!1851250)) b!4463186))

(assert (= (and b!4463186 res!1851251) b!4463187))

(declare-fun b_lambda!147821 () Bool)

(assert (=> (not b_lambda!147821) (not b!4463186)))

(declare-fun m!5166367 () Bool)

(assert (=> b!4463186 m!5166367))

(declare-fun m!5166369 () Bool)

(assert (=> b!4463187 m!5166369))

(assert (=> b!4462922 d!1360635))

(assert (=> b!4462903 d!1360629))

(declare-fun d!1360637 () Bool)

(assert (=> d!1360637 (containsKey!1429 (toList!4028 (extractMap!1066 lt!1653326)) key!3287)))

(declare-fun lt!1653702 () Unit!86927)

(declare-fun choose!28440 (List!50366 K!11665) Unit!86927)

(assert (=> d!1360637 (= lt!1653702 (choose!28440 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))

(assert (=> d!1360637 (invariantList!913 (toList!4028 (extractMap!1066 lt!1653326)))))

(assert (=> d!1360637 (= (lemmaInGetKeysListThenContainsKey!360 (toList!4028 (extractMap!1066 lt!1653326)) key!3287) lt!1653702)))

(declare-fun bs!791762 () Bool)

(assert (= bs!791762 d!1360637))

(assert (=> bs!791762 m!5166027))

(declare-fun m!5166371 () Bool)

(assert (=> bs!791762 m!5166371))

(declare-fun m!5166373 () Bool)

(assert (=> bs!791762 m!5166373))

(assert (=> b!4462903 d!1360637))

(declare-fun d!1360639 () Bool)

(declare-fun noDuplicatedKeys!205 (List!50366) Bool)

(assert (=> d!1360639 (= (invariantList!913 (toList!4028 lt!1653458)) (noDuplicatedKeys!205 (toList!4028 lt!1653458)))))

(declare-fun bs!791763 () Bool)

(assert (= bs!791763 d!1360639))

(declare-fun m!5166375 () Bool)

(assert (=> bs!791763 m!5166375))

(assert (=> d!1360519 d!1360639))

(declare-fun d!1360641 () Bool)

(declare-fun res!1851258 () Bool)

(declare-fun e!2779173 () Bool)

(assert (=> d!1360641 (=> res!1851258 e!2779173)))

(assert (=> d!1360641 (= res!1851258 ((_ is Nil!50243) (Cons!50243 lt!1653316 Nil!50243)))))

(assert (=> d!1360641 (= (forall!9953 (Cons!50243 lt!1653316 Nil!50243) lambda!162107) e!2779173)))

(declare-fun b!4463202 () Bool)

(declare-fun e!2779174 () Bool)

(assert (=> b!4463202 (= e!2779173 e!2779174)))

(declare-fun res!1851259 () Bool)

(assert (=> b!4463202 (=> (not res!1851259) (not e!2779174))))

(assert (=> b!4463202 (= res!1851259 (dynLambda!20990 lambda!162107 (h!55992 (Cons!50243 lt!1653316 Nil!50243))))))

(declare-fun b!4463203 () Bool)

(assert (=> b!4463203 (= e!2779174 (forall!9953 (t!357317 (Cons!50243 lt!1653316 Nil!50243)) lambda!162107))))

(assert (= (and d!1360641 (not res!1851258)) b!4463202))

(assert (= (and b!4463202 res!1851259) b!4463203))

(declare-fun b_lambda!147823 () Bool)

(assert (=> (not b_lambda!147823) (not b!4463202)))

(declare-fun m!5166377 () Bool)

(assert (=> b!4463202 m!5166377))

(declare-fun m!5166379 () Bool)

(assert (=> b!4463203 m!5166379))

(assert (=> d!1360519 d!1360641))

(declare-fun bs!791764 () Bool)

(declare-fun b!4463205 () Bool)

(assert (= bs!791764 (and b!4463205 b!4463170)))

(declare-fun lambda!162198 () Int)

(assert (=> bs!791764 (= (= (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162198 lambda!162196))))

(assert (=> b!4463205 true))

(declare-fun bs!791765 () Bool)

(declare-fun b!4463206 () Bool)

(assert (= bs!791765 (and b!4463206 b!4463171)))

(declare-fun lambda!162199 () Int)

(assert (=> bs!791765 (= lambda!162199 lambda!162197)))

(declare-fun d!1360643 () Bool)

(declare-fun e!2779175 () Bool)

(assert (=> d!1360643 e!2779175))

(declare-fun res!1851261 () Bool)

(assert (=> d!1360643 (=> (not res!1851261) (not e!2779175))))

(declare-fun lt!1653707 () List!50369)

(assert (=> d!1360643 (= res!1851261 (noDuplicate!690 lt!1653707))))

(assert (=> d!1360643 (= lt!1653707 (getKeysList!361 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))))

(assert (=> d!1360643 (= (keys!17334 (extractMap!1066 (toList!4027 lm!1477))) lt!1653707)))

(declare-fun b!4463204 () Bool)

(declare-fun res!1851260 () Bool)

(assert (=> b!4463204 (=> (not res!1851260) (not e!2779175))))

(assert (=> b!4463204 (= res!1851260 (= (length!236 lt!1653707) (length!237 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))))))

(declare-fun res!1851262 () Bool)

(assert (=> b!4463205 (=> (not res!1851262) (not e!2779175))))

(assert (=> b!4463205 (= res!1851262 (forall!9957 lt!1653707 lambda!162198))))

(assert (=> b!4463206 (= e!2779175 (= (content!8061 lt!1653707) (content!8061 (map!11006 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) lambda!162199))))))

(assert (= (and d!1360643 res!1851261) b!4463204))

(assert (= (and b!4463204 res!1851260) b!4463205))

(assert (= (and b!4463205 res!1851262) b!4463206))

(declare-fun m!5166381 () Bool)

(assert (=> d!1360643 m!5166381))

(assert (=> d!1360643 m!5165923))

(declare-fun m!5166383 () Bool)

(assert (=> b!4463204 m!5166383))

(declare-fun m!5166385 () Bool)

(assert (=> b!4463204 m!5166385))

(declare-fun m!5166387 () Bool)

(assert (=> b!4463205 m!5166387))

(declare-fun m!5166389 () Bool)

(assert (=> b!4463206 m!5166389))

(declare-fun m!5166391 () Bool)

(assert (=> b!4463206 m!5166391))

(assert (=> b!4463206 m!5166391))

(declare-fun m!5166393 () Bool)

(assert (=> b!4463206 m!5166393))

(assert (=> b!4462827 d!1360643))

(declare-fun d!1360645 () Bool)

(declare-fun lt!1653710 () Bool)

(assert (=> d!1360645 (= lt!1653710 (select (content!8061 (keys!17334 (extractMap!1066 lt!1653326))) key!3287))))

(declare-fun e!2779181 () Bool)

(assert (=> d!1360645 (= lt!1653710 e!2779181)))

(declare-fun res!1851268 () Bool)

(assert (=> d!1360645 (=> (not res!1851268) (not e!2779181))))

(assert (=> d!1360645 (= res!1851268 ((_ is Cons!50245) (keys!17334 (extractMap!1066 lt!1653326))))))

(assert (=> d!1360645 (= (contains!12773 (keys!17334 (extractMap!1066 lt!1653326)) key!3287) lt!1653710)))

(declare-fun b!4463211 () Bool)

(declare-fun e!2779180 () Bool)

(assert (=> b!4463211 (= e!2779181 e!2779180)))

(declare-fun res!1851267 () Bool)

(assert (=> b!4463211 (=> res!1851267 e!2779180)))

(assert (=> b!4463211 (= res!1851267 (= (h!55996 (keys!17334 (extractMap!1066 lt!1653326))) key!3287))))

(declare-fun b!4463212 () Bool)

(assert (=> b!4463212 (= e!2779180 (contains!12773 (t!357319 (keys!17334 (extractMap!1066 lt!1653326))) key!3287))))

(assert (= (and d!1360645 res!1851268) b!4463211))

(assert (= (and b!4463211 (not res!1851267)) b!4463212))

(assert (=> d!1360645 m!5166031))

(declare-fun m!5166395 () Bool)

(assert (=> d!1360645 m!5166395))

(declare-fun m!5166397 () Bool)

(assert (=> d!1360645 m!5166397))

(declare-fun m!5166399 () Bool)

(assert (=> b!4463212 m!5166399))

(assert (=> b!4462905 d!1360645))

(assert (=> b!4462905 d!1360633))

(declare-fun bs!791766 () Bool)

(declare-fun b!4463217 () Bool)

(assert (= bs!791766 (and b!4463217 b!4463116)))

(declare-fun lambda!162200 () Int)

(assert (=> bs!791766 (= (= (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162200 lambda!162188))))

(declare-fun bs!791767 () Bool)

(assert (= bs!791767 (and b!4463217 d!1360601)))

(assert (=> bs!791767 (= (= (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lt!1653641) (= lambda!162200 lambda!162190))))

(declare-fun bs!791768 () Bool)

(assert (= bs!791768 (and b!4463217 b!4463117)))

(assert (=> bs!791768 (= (= (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162200 lambda!162187))))

(assert (=> bs!791766 (= (= (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lt!1653648) (= lambda!162200 lambda!162189))))

(declare-fun bs!791769 () Bool)

(assert (= bs!791769 (and b!4463217 d!1360443)))

(assert (=> bs!791769 (not (= lambda!162200 lambda!162076))))

(assert (=> b!4463217 true))

(declare-fun bs!791770 () Bool)

(declare-fun b!4463216 () Bool)

(assert (= bs!791770 (and b!4463216 b!4463116)))

(declare-fun lambda!162201 () Int)

(assert (=> bs!791770 (= (= (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162201 lambda!162188))))

(declare-fun bs!791771 () Bool)

(assert (= bs!791771 (and b!4463216 d!1360601)))

(assert (=> bs!791771 (= (= (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lt!1653641) (= lambda!162201 lambda!162190))))

(declare-fun bs!791772 () Bool)

(assert (= bs!791772 (and b!4463216 b!4463117)))

(assert (=> bs!791772 (= (= (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162201 lambda!162187))))

(assert (=> bs!791770 (= (= (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lt!1653648) (= lambda!162201 lambda!162189))))

(declare-fun bs!791773 () Bool)

(assert (= bs!791773 (and b!4463216 b!4463217)))

(assert (=> bs!791773 (= lambda!162201 lambda!162200)))

(declare-fun bs!791774 () Bool)

(assert (= bs!791774 (and b!4463216 d!1360443)))

(assert (=> bs!791774 (not (= lambda!162201 lambda!162076))))

(assert (=> b!4463216 true))

(declare-fun lt!1653722 () ListMap!3289)

(declare-fun lambda!162202 () Int)

(assert (=> bs!791770 (= (= lt!1653722 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162202 lambda!162188))))

(assert (=> bs!791771 (= (= lt!1653722 lt!1653641) (= lambda!162202 lambda!162190))))

(assert (=> b!4463216 (= (= lt!1653722 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162202 lambda!162201))))

(assert (=> bs!791772 (= (= lt!1653722 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162202 lambda!162187))))

(assert (=> bs!791770 (= (= lt!1653722 lt!1653648) (= lambda!162202 lambda!162189))))

(assert (=> bs!791773 (= (= lt!1653722 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162202 lambda!162200))))

(assert (=> bs!791774 (not (= lambda!162202 lambda!162076))))

(assert (=> b!4463216 true))

(declare-fun bs!791775 () Bool)

(declare-fun d!1360647 () Bool)

(assert (= bs!791775 (and d!1360647 b!4463116)))

(declare-fun lt!1653715 () ListMap!3289)

(declare-fun lambda!162203 () Int)

(assert (=> bs!791775 (= (= lt!1653715 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162203 lambda!162188))))

(declare-fun bs!791776 () Bool)

(assert (= bs!791776 (and d!1360647 b!4463216)))

(assert (=> bs!791776 (= (= lt!1653715 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162203 lambda!162201))))

(declare-fun bs!791777 () Bool)

(assert (= bs!791777 (and d!1360647 b!4463117)))

(assert (=> bs!791777 (= (= lt!1653715 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162203 lambda!162187))))

(assert (=> bs!791775 (= (= lt!1653715 lt!1653648) (= lambda!162203 lambda!162189))))

(declare-fun bs!791778 () Bool)

(assert (= bs!791778 (and d!1360647 b!4463217)))

(assert (=> bs!791778 (= (= lt!1653715 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162203 lambda!162200))))

(declare-fun bs!791779 () Bool)

(assert (= bs!791779 (and d!1360647 d!1360443)))

(assert (=> bs!791779 (not (= lambda!162203 lambda!162076))))

(declare-fun bs!791780 () Bool)

(assert (= bs!791780 (and d!1360647 d!1360601)))

(assert (=> bs!791780 (= (= lt!1653715 lt!1653641) (= lambda!162203 lambda!162190))))

(assert (=> bs!791776 (= (= lt!1653715 lt!1653722) (= lambda!162203 lambda!162202))))

(assert (=> d!1360647 true))

(declare-fun e!2779182 () Bool)

(declare-fun b!4463213 () Bool)

(assert (=> b!4463213 (= e!2779182 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) lambda!162202))))

(declare-fun b!4463214 () Bool)

(declare-fun res!1851269 () Bool)

(declare-fun e!2779184 () Bool)

(assert (=> b!4463214 (=> (not res!1851269) (not e!2779184))))

(assert (=> b!4463214 (= res!1851269 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) lambda!162203))))

(declare-fun b!4463215 () Bool)

(assert (=> b!4463215 (= e!2779184 (invariantList!913 (toList!4028 lt!1653715)))))

(declare-fun e!2779183 () ListMap!3289)

(assert (=> b!4463216 (= e!2779183 lt!1653722)))

(declare-fun lt!1653718 () ListMap!3289)

(assert (=> b!4463216 (= lt!1653718 (+!1346 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (h!55991 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))

(assert (=> b!4463216 (= lt!1653722 (addToMapMapFromBucket!575 (t!357316 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (+!1346 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (h!55991 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))))

(declare-fun lt!1653717 () Unit!86927)

(declare-fun call!310692 () Unit!86927)

(assert (=> b!4463216 (= lt!1653717 call!310692)))

(declare-fun call!310693 () Bool)

(assert (=> b!4463216 call!310693))

(declare-fun lt!1653712 () Unit!86927)

(assert (=> b!4463216 (= lt!1653712 lt!1653717)))

(assert (=> b!4463216 (forall!9955 (toList!4028 lt!1653718) lambda!162202)))

(declare-fun lt!1653721 () Unit!86927)

(declare-fun Unit!86975 () Unit!86927)

(assert (=> b!4463216 (= lt!1653721 Unit!86975)))

(declare-fun call!310691 () Bool)

(assert (=> b!4463216 call!310691))

(declare-fun lt!1653730 () Unit!86927)

(declare-fun Unit!86976 () Unit!86927)

(assert (=> b!4463216 (= lt!1653730 Unit!86976)))

(declare-fun lt!1653723 () Unit!86927)

(declare-fun Unit!86977 () Unit!86927)

(assert (=> b!4463216 (= lt!1653723 Unit!86977)))

(declare-fun lt!1653728 () Unit!86927)

(assert (=> b!4463216 (= lt!1653728 (forallContained!2229 (toList!4028 lt!1653718) lambda!162202 (h!55991 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))

(assert (=> b!4463216 (contains!12771 lt!1653718 (_1!28531 (h!55991 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))

(declare-fun lt!1653719 () Unit!86927)

(declare-fun Unit!86978 () Unit!86927)

(assert (=> b!4463216 (= lt!1653719 Unit!86978)))

(assert (=> b!4463216 (contains!12771 lt!1653722 (_1!28531 (h!55991 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))

(declare-fun lt!1653725 () Unit!86927)

(declare-fun Unit!86979 () Unit!86927)

(assert (=> b!4463216 (= lt!1653725 Unit!86979)))

(assert (=> b!4463216 (forall!9955 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lambda!162202)))

(declare-fun lt!1653727 () Unit!86927)

(declare-fun Unit!86980 () Unit!86927)

(assert (=> b!4463216 (= lt!1653727 Unit!86980)))

(assert (=> b!4463216 (forall!9955 (toList!4028 lt!1653718) lambda!162202)))

(declare-fun lt!1653720 () Unit!86927)

(declare-fun Unit!86981 () Unit!86927)

(assert (=> b!4463216 (= lt!1653720 Unit!86981)))

(declare-fun lt!1653731 () Unit!86927)

(declare-fun Unit!86982 () Unit!86927)

(assert (=> b!4463216 (= lt!1653731 Unit!86982)))

(declare-fun lt!1653729 () Unit!86927)

(assert (=> b!4463216 (= lt!1653729 (addForallContainsKeyThenBeforeAdding!258 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lt!1653722 (_1!28531 (h!55991 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))) (_2!28531 (h!55991 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))))

(assert (=> b!4463216 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) lambda!162202)))

(declare-fun lt!1653714 () Unit!86927)

(assert (=> b!4463216 (= lt!1653714 lt!1653729)))

(assert (=> b!4463216 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) lambda!162202)))

(declare-fun lt!1653713 () Unit!86927)

(declare-fun Unit!86983 () Unit!86927)

(assert (=> b!4463216 (= lt!1653713 Unit!86983)))

(declare-fun res!1851270 () Bool)

(assert (=> b!4463216 (= res!1851270 (forall!9955 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lambda!162202))))

(assert (=> b!4463216 (=> (not res!1851270) (not e!2779182))))

(assert (=> b!4463216 e!2779182))

(declare-fun lt!1653716 () Unit!86927)

(declare-fun Unit!86984 () Unit!86927)

(assert (=> b!4463216 (= lt!1653716 Unit!86984)))

(assert (=> b!4463217 (= e!2779183 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))

(declare-fun lt!1653724 () Unit!86927)

(assert (=> b!4463217 (= lt!1653724 call!310692)))

(assert (=> b!4463217 call!310691))

(declare-fun lt!1653711 () Unit!86927)

(assert (=> b!4463217 (= lt!1653711 lt!1653724)))

(assert (=> b!4463217 call!310693))

(declare-fun lt!1653726 () Unit!86927)

(declare-fun Unit!86985 () Unit!86927)

(assert (=> b!4463217 (= lt!1653726 Unit!86985)))

(assert (=> d!1360647 e!2779184))

(declare-fun res!1851271 () Bool)

(assert (=> d!1360647 (=> (not res!1851271) (not e!2779184))))

(assert (=> d!1360647 (= res!1851271 (forall!9955 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lambda!162203))))

(assert (=> d!1360647 (= lt!1653715 e!2779183)))

(declare-fun c!759480 () Bool)

(assert (=> d!1360647 (= c!759480 ((_ is Nil!50242) (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(assert (=> d!1360647 (noDuplicateKeys!1010 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))

(assert (=> d!1360647 (= (addToMapMapFromBucket!575 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) lt!1653715)))

(declare-fun bm!310686 () Bool)

(assert (=> bm!310686 (= call!310692 (lemmaContainsAllItsOwnKeys!259 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(declare-fun bm!310687 () Bool)

(assert (=> bm!310687 (= call!310691 (forall!9955 (ite c!759480 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (t!357316 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))) (ite c!759480 lambda!162200 lambda!162202)))))

(declare-fun bm!310688 () Bool)

(assert (=> bm!310688 (= call!310693 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (ite c!759480 lambda!162200 lambda!162201)))))

(assert (= (and d!1360647 c!759480) b!4463217))

(assert (= (and d!1360647 (not c!759480)) b!4463216))

(assert (= (and b!4463216 res!1851270) b!4463213))

(assert (= (or b!4463217 b!4463216) bm!310687))

(assert (= (or b!4463217 b!4463216) bm!310688))

(assert (= (or b!4463217 b!4463216) bm!310686))

(assert (= (and d!1360647 res!1851271) b!4463214))

(assert (= (and b!4463214 res!1851269) b!4463215))

(declare-fun m!5166401 () Bool)

(assert (=> b!4463216 m!5166401))

(declare-fun m!5166403 () Bool)

(assert (=> b!4463216 m!5166403))

(declare-fun m!5166405 () Bool)

(assert (=> b!4463216 m!5166405))

(assert (=> b!4463216 m!5165995))

(assert (=> b!4463216 m!5166401))

(declare-fun m!5166407 () Bool)

(assert (=> b!4463216 m!5166407))

(declare-fun m!5166409 () Bool)

(assert (=> b!4463216 m!5166409))

(declare-fun m!5166411 () Bool)

(assert (=> b!4463216 m!5166411))

(assert (=> b!4463216 m!5166405))

(assert (=> b!4463216 m!5166411))

(assert (=> b!4463216 m!5165995))

(declare-fun m!5166413 () Bool)

(assert (=> b!4463216 m!5166413))

(declare-fun m!5166415 () Bool)

(assert (=> b!4463216 m!5166415))

(declare-fun m!5166417 () Bool)

(assert (=> b!4463216 m!5166417))

(assert (=> b!4463216 m!5166415))

(assert (=> bm!310686 m!5165995))

(declare-fun m!5166419 () Bool)

(assert (=> bm!310686 m!5166419))

(declare-fun m!5166421 () Bool)

(assert (=> bm!310687 m!5166421))

(declare-fun m!5166423 () Bool)

(assert (=> b!4463214 m!5166423))

(declare-fun m!5166425 () Bool)

(assert (=> b!4463215 m!5166425))

(declare-fun m!5166427 () Bool)

(assert (=> bm!310688 m!5166427))

(assert (=> b!4463213 m!5166411))

(declare-fun m!5166429 () Bool)

(assert (=> d!1360647 m!5166429))

(declare-fun m!5166431 () Bool)

(assert (=> d!1360647 m!5166431))

(assert (=> b!4462880 d!1360647))

(declare-fun bs!791781 () Bool)

(declare-fun d!1360649 () Bool)

(assert (= bs!791781 (and d!1360649 d!1360535)))

(declare-fun lambda!162204 () Int)

(assert (=> bs!791781 (= lambda!162204 lambda!162111)))

(declare-fun bs!791782 () Bool)

(assert (= bs!791782 (and d!1360649 start!437692)))

(assert (=> bs!791782 (= lambda!162204 lambda!162073)))

(declare-fun bs!791783 () Bool)

(assert (= bs!791783 (and d!1360649 d!1360521)))

(assert (=> bs!791783 (= lambda!162204 lambda!162108)))

(declare-fun bs!791784 () Bool)

(assert (= bs!791784 (and d!1360649 d!1360499)))

(assert (=> bs!791784 (= lambda!162204 lambda!162106)))

(declare-fun bs!791785 () Bool)

(assert (= bs!791785 (and d!1360649 d!1360615)))

(assert (=> bs!791785 (= lambda!162204 lambda!162191)))

(declare-fun bs!791786 () Bool)

(assert (= bs!791786 (and d!1360649 d!1360537)))

(assert (=> bs!791786 (= lambda!162204 lambda!162112)))

(declare-fun bs!791787 () Bool)

(assert (= bs!791787 (and d!1360649 d!1360545)))

(assert (=> bs!791787 (= lambda!162204 lambda!162115)))

(declare-fun bs!791788 () Bool)

(assert (= bs!791788 (and d!1360649 d!1360445)))

(assert (=> bs!791788 (= lambda!162204 lambda!162079)))

(declare-fun bs!791789 () Bool)

(assert (= bs!791789 (and d!1360649 d!1360477)))

(assert (=> bs!791789 (not (= lambda!162204 lambda!162095))))

(declare-fun bs!791790 () Bool)

(assert (= bs!791790 (and d!1360649 d!1360519)))

(assert (=> bs!791790 (= lambda!162204 lambda!162107)))

(declare-fun lt!1653750 () ListMap!3289)

(assert (=> d!1360649 (invariantList!913 (toList!4028 lt!1653750))))

(declare-fun e!2779194 () ListMap!3289)

(assert (=> d!1360649 (= lt!1653750 e!2779194)))

(declare-fun c!759489 () Bool)

(assert (=> d!1360649 (= c!759489 ((_ is Cons!50243) (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))

(assert (=> d!1360649 (forall!9953 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) lambda!162204)))

(assert (=> d!1360649 (= (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lt!1653750)))

(declare-fun b!4463237 () Bool)

(assert (=> b!4463237 (= e!2779194 (addToMapMapFromBucket!575 (_2!28532 (h!55992 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (extractMap!1066 (t!357317 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))

(declare-fun b!4463238 () Bool)

(assert (=> b!4463238 (= e!2779194 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360649 c!759489) b!4463237))

(assert (= (and d!1360649 (not c!759489)) b!4463238))

(declare-fun m!5166433 () Bool)

(assert (=> d!1360649 m!5166433))

(declare-fun m!5166435 () Bool)

(assert (=> d!1360649 m!5166435))

(declare-fun m!5166437 () Bool)

(assert (=> b!4463237 m!5166437))

(assert (=> b!4463237 m!5166437))

(declare-fun m!5166441 () Bool)

(assert (=> b!4463237 m!5166441))

(assert (=> b!4462880 d!1360649))

(declare-fun d!1360651 () Bool)

(declare-fun res!1851275 () Bool)

(declare-fun e!2779195 () Bool)

(assert (=> d!1360651 (=> res!1851275 e!2779195)))

(assert (=> d!1360651 (= res!1851275 (and ((_ is Cons!50242) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (= (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) key!3287)))))

(assert (=> d!1360651 (= (containsKey!1429 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287) e!2779195)))

(declare-fun b!4463239 () Bool)

(declare-fun e!2779196 () Bool)

(assert (=> b!4463239 (= e!2779195 e!2779196)))

(declare-fun res!1851276 () Bool)

(assert (=> b!4463239 (=> (not res!1851276) (not e!2779196))))

(assert (=> b!4463239 (= res!1851276 ((_ is Cons!50242) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))))

(declare-fun b!4463240 () Bool)

(assert (=> b!4463240 (= e!2779196 (containsKey!1429 (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) key!3287))))

(assert (= (and d!1360651 (not res!1851275)) b!4463239))

(assert (= (and b!4463239 res!1851276) b!4463240))

(declare-fun m!5166455 () Bool)

(assert (=> b!4463240 m!5166455))

(assert (=> b!4462829 d!1360651))

(declare-fun d!1360653 () Bool)

(assert (=> d!1360653 (containsKey!1429 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287)))

(declare-fun lt!1653751 () Unit!86927)

(assert (=> d!1360653 (= lt!1653751 (choose!28440 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(assert (=> d!1360653 (invariantList!913 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))))

(assert (=> d!1360653 (= (lemmaInGetKeysListThenContainsKey!360 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287) lt!1653751)))

(declare-fun bs!791791 () Bool)

(assert (= bs!791791 d!1360653))

(assert (=> bs!791791 m!5165909))

(declare-fun m!5166467 () Bool)

(assert (=> bs!791791 m!5166467))

(declare-fun m!5166469 () Bool)

(assert (=> bs!791791 m!5166469))

(assert (=> b!4462829 d!1360653))

(declare-fun d!1360655 () Bool)

(declare-fun res!1851277 () Bool)

(declare-fun e!2779197 () Bool)

(assert (=> d!1360655 (=> res!1851277 e!2779197)))

(assert (=> d!1360655 (= res!1851277 (and ((_ is Cons!50242) (t!357316 newBucket!178)) (= (_1!28531 (h!55991 (t!357316 newBucket!178))) (_1!28531 (h!55991 newBucket!178)))))))

(assert (=> d!1360655 (= (containsKey!1426 (t!357316 newBucket!178) (_1!28531 (h!55991 newBucket!178))) e!2779197)))

(declare-fun b!4463241 () Bool)

(declare-fun e!2779198 () Bool)

(assert (=> b!4463241 (= e!2779197 e!2779198)))

(declare-fun res!1851278 () Bool)

(assert (=> b!4463241 (=> (not res!1851278) (not e!2779198))))

(assert (=> b!4463241 (= res!1851278 ((_ is Cons!50242) (t!357316 newBucket!178)))))

(declare-fun b!4463242 () Bool)

(assert (=> b!4463242 (= e!2779198 (containsKey!1426 (t!357316 (t!357316 newBucket!178)) (_1!28531 (h!55991 newBucket!178))))))

(assert (= (and d!1360655 (not res!1851277)) b!4463241))

(assert (= (and b!4463241 res!1851278) b!4463242))

(declare-fun m!5166479 () Bool)

(assert (=> b!4463242 m!5166479))

(assert (=> b!4462933 d!1360655))

(declare-fun d!1360657 () Bool)

(assert (=> d!1360657 (= (get!16361 (getValueByKey!884 (toList!4027 lm!1477) hash!344)) (v!44167 (getValueByKey!884 (toList!4027 lm!1477) hash!344)))))

(assert (=> d!1360449 d!1360657))

(declare-fun d!1360659 () Bool)

(declare-fun c!759490 () Bool)

(assert (=> d!1360659 (= c!759490 (and ((_ is Cons!50243) (toList!4027 lm!1477)) (= (_1!28532 (h!55992 (toList!4027 lm!1477))) hash!344)))))

(declare-fun e!2779199 () Option!10898)

(assert (=> d!1360659 (= (getValueByKey!884 (toList!4027 lm!1477) hash!344) e!2779199)))

(declare-fun b!4463245 () Bool)

(declare-fun e!2779200 () Option!10898)

(assert (=> b!4463245 (= e!2779200 (getValueByKey!884 (t!357317 (toList!4027 lm!1477)) hash!344))))

(declare-fun b!4463243 () Bool)

(assert (=> b!4463243 (= e!2779199 (Some!10897 (_2!28532 (h!55992 (toList!4027 lm!1477)))))))

(declare-fun b!4463244 () Bool)

(assert (=> b!4463244 (= e!2779199 e!2779200)))

(declare-fun c!759491 () Bool)

(assert (=> b!4463244 (= c!759491 (and ((_ is Cons!50243) (toList!4027 lm!1477)) (not (= (_1!28532 (h!55992 (toList!4027 lm!1477))) hash!344))))))

(declare-fun b!4463246 () Bool)

(assert (=> b!4463246 (= e!2779200 None!10897)))

(assert (= (and d!1360659 c!759490) b!4463243))

(assert (= (and d!1360659 (not c!759490)) b!4463244))

(assert (= (and b!4463244 c!759491) b!4463245))

(assert (= (and b!4463244 (not c!759491)) b!4463246))

(declare-fun m!5166503 () Bool)

(assert (=> b!4463245 m!5166503))

(assert (=> d!1360449 d!1360659))

(declare-fun b!4463247 () Bool)

(declare-fun e!2779201 () Unit!86927)

(declare-fun e!2779206 () Unit!86927)

(assert (=> b!4463247 (= e!2779201 e!2779206)))

(declare-fun c!759493 () Bool)

(declare-fun call!310700 () Bool)

(assert (=> b!4463247 (= c!759493 call!310700)))

(declare-fun b!4463248 () Bool)

(declare-fun e!2779203 () List!50369)

(assert (=> b!4463248 (= e!2779203 (keys!17334 lt!1653474))))

(declare-fun b!4463249 () Bool)

(declare-fun lt!1653752 () Unit!86927)

(assert (=> b!4463249 (= e!2779201 lt!1653752)))

(declare-fun lt!1653756 () Unit!86927)

(assert (=> b!4463249 (= lt!1653756 (lemmaContainsKeyImpliesGetValueByKeyDefined!788 (toList!4028 lt!1653474) key!3287))))

(assert (=> b!4463249 (isDefined!8185 (getValueByKey!885 (toList!4028 lt!1653474) key!3287))))

(declare-fun lt!1653755 () Unit!86927)

(assert (=> b!4463249 (= lt!1653755 lt!1653756)))

(assert (=> b!4463249 (= lt!1653752 (lemmaInListThenGetKeysListContains!357 (toList!4028 lt!1653474) key!3287))))

(assert (=> b!4463249 call!310700))

(declare-fun d!1360661 () Bool)

(declare-fun e!2779202 () Bool)

(assert (=> d!1360661 e!2779202))

(declare-fun res!1851279 () Bool)

(assert (=> d!1360661 (=> res!1851279 e!2779202)))

(declare-fun e!2779204 () Bool)

(assert (=> d!1360661 (= res!1851279 e!2779204)))

(declare-fun res!1851281 () Bool)

(assert (=> d!1360661 (=> (not res!1851281) (not e!2779204))))

(declare-fun lt!1653759 () Bool)

(assert (=> d!1360661 (= res!1851281 (not lt!1653759))))

(declare-fun lt!1653758 () Bool)

(assert (=> d!1360661 (= lt!1653759 lt!1653758)))

(declare-fun lt!1653753 () Unit!86927)

(assert (=> d!1360661 (= lt!1653753 e!2779201)))

(declare-fun c!759492 () Bool)

(assert (=> d!1360661 (= c!759492 lt!1653758)))

(assert (=> d!1360661 (= lt!1653758 (containsKey!1429 (toList!4028 lt!1653474) key!3287))))

(assert (=> d!1360661 (= (contains!12771 lt!1653474 key!3287) lt!1653759)))

(declare-fun b!4463250 () Bool)

(assert (=> b!4463250 false))

(declare-fun lt!1653757 () Unit!86927)

(declare-fun lt!1653754 () Unit!86927)

(assert (=> b!4463250 (= lt!1653757 lt!1653754)))

(assert (=> b!4463250 (containsKey!1429 (toList!4028 lt!1653474) key!3287)))

(assert (=> b!4463250 (= lt!1653754 (lemmaInGetKeysListThenContainsKey!360 (toList!4028 lt!1653474) key!3287))))

(declare-fun Unit!86997 () Unit!86927)

(assert (=> b!4463250 (= e!2779206 Unit!86997)))

(declare-fun b!4463251 () Bool)

(declare-fun Unit!86998 () Unit!86927)

(assert (=> b!4463251 (= e!2779206 Unit!86998)))

(declare-fun b!4463252 () Bool)

(declare-fun e!2779205 () Bool)

(assert (=> b!4463252 (= e!2779205 (contains!12773 (keys!17334 lt!1653474) key!3287))))

(declare-fun b!4463253 () Bool)

(assert (=> b!4463253 (= e!2779204 (not (contains!12773 (keys!17334 lt!1653474) key!3287)))))

(declare-fun bm!310695 () Bool)

(assert (=> bm!310695 (= call!310700 (contains!12773 e!2779203 key!3287))))

(declare-fun c!759494 () Bool)

(assert (=> bm!310695 (= c!759494 c!759492)))

(declare-fun b!4463254 () Bool)

(assert (=> b!4463254 (= e!2779203 (getKeysList!361 (toList!4028 lt!1653474)))))

(declare-fun b!4463255 () Bool)

(assert (=> b!4463255 (= e!2779202 e!2779205)))

(declare-fun res!1851280 () Bool)

(assert (=> b!4463255 (=> (not res!1851280) (not e!2779205))))

(assert (=> b!4463255 (= res!1851280 (isDefined!8185 (getValueByKey!885 (toList!4028 lt!1653474) key!3287)))))

(assert (= (and d!1360661 c!759492) b!4463249))

(assert (= (and d!1360661 (not c!759492)) b!4463247))

(assert (= (and b!4463247 c!759493) b!4463250))

(assert (= (and b!4463247 (not c!759493)) b!4463251))

(assert (= (or b!4463249 b!4463247) bm!310695))

(assert (= (and bm!310695 c!759494) b!4463254))

(assert (= (and bm!310695 (not c!759494)) b!4463248))

(assert (= (and d!1360661 res!1851281) b!4463253))

(assert (= (and d!1360661 (not res!1851279)) b!4463255))

(assert (= (and b!4463255 res!1851280) b!4463252))

(declare-fun m!5166509 () Bool)

(assert (=> b!4463255 m!5166509))

(assert (=> b!4463255 m!5166509))

(declare-fun m!5166511 () Bool)

(assert (=> b!4463255 m!5166511))

(declare-fun m!5166513 () Bool)

(assert (=> b!4463250 m!5166513))

(declare-fun m!5166515 () Bool)

(assert (=> b!4463250 m!5166515))

(assert (=> d!1360661 m!5166513))

(assert (=> b!4463253 m!5166019))

(assert (=> b!4463253 m!5166019))

(declare-fun m!5166517 () Bool)

(assert (=> b!4463253 m!5166517))

(assert (=> b!4463252 m!5166019))

(assert (=> b!4463252 m!5166019))

(assert (=> b!4463252 m!5166517))

(declare-fun m!5166519 () Bool)

(assert (=> b!4463249 m!5166519))

(assert (=> b!4463249 m!5166509))

(assert (=> b!4463249 m!5166509))

(assert (=> b!4463249 m!5166511))

(declare-fun m!5166521 () Bool)

(assert (=> b!4463249 m!5166521))

(declare-fun m!5166523 () Bool)

(assert (=> bm!310695 m!5166523))

(declare-fun m!5166525 () Bool)

(assert (=> b!4463254 m!5166525))

(assert (=> b!4463248 m!5166019))

(assert (=> d!1360523 d!1360661))

(declare-fun b!4463386 () Bool)

(declare-fun e!2779283 () Unit!86927)

(declare-fun Unit!86999 () Unit!86927)

(assert (=> b!4463386 (= e!2779283 Unit!86999)))

(declare-fun lt!1653859 () Unit!86927)

(assert (=> b!4463386 (= lt!1653859 (lemmaInGetKeysListThenContainsKey!360 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))))

(declare-fun call!310730 () Bool)

(assert (=> b!4463386 call!310730))

(declare-fun lt!1653852 () Unit!86927)

(assert (=> b!4463386 (= lt!1653852 lt!1653859)))

(assert (=> b!4463386 false))

(declare-fun bm!310720 () Bool)

(declare-fun c!759545 () Bool)

(assert (=> bm!310720 (= call!310730 (containsKey!1429 (ite c!759545 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))) (ite c!759545 key!3287 (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))))

(declare-fun b!4463387 () Bool)

(declare-fun call!310726 () (InoxSet tuple2!50474))

(declare-fun call!310727 () (InoxSet tuple2!50474))

(assert (=> b!4463387 (= call!310726 call!310727)))

(declare-fun e!2779282 () Unit!86927)

(declare-fun Unit!87000 () Unit!86927)

(assert (=> b!4463387 (= e!2779282 Unit!87000)))

(declare-fun e!2779278 () List!50366)

(declare-fun b!4463388 () Bool)

(assert (=> b!4463388 (= e!2779278 (removePresrvNoDuplicatedKeys!49 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) key!3287))))

(declare-fun b!4463389 () Bool)

(declare-fun e!2779280 () List!50366)

(declare-fun e!2779281 () List!50366)

(assert (=> b!4463389 (= e!2779280 e!2779281)))

(declare-fun c!759543 () Bool)

(assert (=> b!4463389 (= c!759543 (and ((_ is Cons!50242) (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (not (= (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))) key!3287))))))

(declare-fun b!4463390 () Bool)

(declare-fun e!2779277 () Unit!86927)

(declare-fun Unit!87002 () Unit!86927)

(assert (=> b!4463390 (= e!2779277 Unit!87002)))

(declare-fun bm!310722 () Bool)

(declare-fun call!310725 () (InoxSet tuple2!50474))

(assert (=> bm!310722 (= call!310725 (content!8062 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(declare-fun b!4463391 () Bool)

(declare-fun e!2779284 () Bool)

(declare-fun e!2779285 () Bool)

(assert (=> b!4463391 (= e!2779284 e!2779285)))

(declare-fun c!759544 () Bool)

(assert (=> b!4463391 (= c!759544 (containsKey!1429 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287))))

(declare-fun b!4463392 () Bool)

(assert (=> b!4463392 (= e!2779281 Nil!50242)))

(declare-fun bm!310723 () Bool)

(assert (=> bm!310723 (= call!310726 (content!8062 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))

(declare-fun b!4463393 () Bool)

(declare-fun Unit!87003 () Unit!86927)

(assert (=> b!4463393 (= e!2779277 Unit!87003)))

(declare-fun lt!1653858 () V!11911)

(declare-fun get!16364 (Option!10899) V!11911)

(assert (=> b!4463393 (= lt!1653858 (get!16364 (getValueByKey!885 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287)))))

(declare-fun lt!1653864 () K!11665)

(assert (=> b!4463393 (= lt!1653864 key!3287)))

(declare-fun lt!1653857 () K!11665)

(assert (=> b!4463393 (= lt!1653857 key!3287)))

(declare-fun lt!1653851 () Unit!86927)

(declare-fun lemmaContainsTupleThenContainsKey!15 (List!50366 K!11665 V!11911) Unit!86927)

(assert (=> b!4463393 (= lt!1653851 (lemmaContainsTupleThenContainsKey!15 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) lt!1653864 (get!16364 (getValueByKey!885 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287))))))

(declare-fun call!310728 () Bool)

(assert (=> b!4463393 call!310728))

(declare-fun lt!1653848 () Unit!86927)

(assert (=> b!4463393 (= lt!1653848 lt!1653851)))

(assert (=> b!4463393 false))

(declare-fun b!4463394 () Bool)

(declare-fun e!2779279 () Unit!86927)

(declare-fun Unit!87004 () Unit!86927)

(assert (=> b!4463394 (= e!2779279 Unit!87004)))

(declare-fun bm!310724 () Bool)

(assert (=> bm!310724 (= call!310727 (content!8062 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(declare-fun b!4463395 () Bool)

(declare-fun res!1851319 () Bool)

(assert (=> b!4463395 (=> (not res!1851319) (not e!2779284))))

(declare-fun lt!1653850 () List!50366)

(assert (=> b!4463395 (= res!1851319 (= (content!8061 (getKeysList!361 lt!1653850)) ((_ map and) (content!8061 (getKeysList!361 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))) ((_ map not) (store ((as const (Array K!11665 Bool)) false) key!3287 true)))))))

(declare-fun bm!310725 () Bool)

(assert (=> bm!310725 (= call!310728 (containsKey!1429 e!2779278 (ite c!759545 lt!1653864 (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))))

(declare-fun c!759546 () Bool)

(assert (=> bm!310725 (= c!759546 c!759545)))

(declare-fun b!4463396 () Bool)

(declare-fun Unit!87005 () Unit!86927)

(assert (=> b!4463396 (= e!2779283 Unit!87005)))

(declare-fun bm!310721 () Bool)

(declare-fun call!310729 () (InoxSet tuple2!50474))

(assert (=> bm!310721 (= call!310729 (content!8062 lt!1653850))))

(declare-fun d!1360667 () Bool)

(assert (=> d!1360667 e!2779284))

(declare-fun res!1851320 () Bool)

(assert (=> d!1360667 (=> (not res!1851320) (not e!2779284))))

(assert (=> d!1360667 (= res!1851320 (invariantList!913 lt!1653850))))

(assert (=> d!1360667 (= lt!1653850 e!2779280)))

(assert (=> d!1360667 (= c!759545 (and ((_ is Cons!50242) (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))) key!3287)))))

(assert (=> d!1360667 (invariantList!913 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))

(assert (=> d!1360667 (= (removePresrvNoDuplicatedKeys!49 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287) lt!1653850)))

(declare-fun b!4463397 () Bool)

(assert (=> b!4463397 (= e!2779285 (= call!310729 call!310725))))

(declare-fun b!4463398 () Bool)

(assert (=> b!4463398 (= e!2779278 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(declare-fun b!4463399 () Bool)

(assert (=> b!4463399 (= e!2779285 (= call!310729 ((_ map and) call!310725 ((_ map not) (store ((as const (Array tuple2!50474 Bool)) false) (tuple2!50475 key!3287 (get!16364 (getValueByKey!885 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287))) true)))))))

(assert (=> b!4463399 (containsKey!1429 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287)))

(declare-fun lt!1653847 () Unit!86927)

(assert (=> b!4463399 (= lt!1653847 (lemmaContainsKeyImpliesGetValueByKeyDefined!788 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287))))

(assert (=> b!4463399 (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287))))

(declare-fun lt!1653855 () Unit!86927)

(assert (=> b!4463399 (= lt!1653855 lt!1653847)))

(declare-fun b!4463400 () Bool)

(declare-fun lt!1653862 () Unit!86927)

(assert (=> b!4463400 (= lt!1653862 e!2779279)))

(declare-fun c!759542 () Bool)

(assert (=> b!4463400 (= c!759542 call!310728)))

(declare-fun lt!1653863 () Unit!86927)

(assert (=> b!4463400 (= lt!1653863 e!2779283)))

(declare-fun c!759549 () Bool)

(assert (=> b!4463400 (= c!759549 (contains!12773 (getKeysList!361 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))) (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))))

(declare-fun lt!1653853 () List!50366)

(declare-fun $colon$colon!835 (List!50366 tuple2!50474) List!50366)

(assert (=> b!4463400 (= lt!1653853 ($colon$colon!835 (removePresrvNoDuplicatedKeys!49 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) key!3287) (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))

(assert (=> b!4463400 (= e!2779281 lt!1653853)))

(declare-fun b!4463401 () Bool)

(assert (=> b!4463401 (= e!2779280 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(declare-fun c!759547 () Bool)

(assert (=> b!4463401 (= c!759547 call!310730)))

(declare-fun lt!1653849 () Unit!86927)

(assert (=> b!4463401 (= lt!1653849 e!2779282)))

(declare-fun b!4463402 () Bool)

(declare-fun res!1851318 () Bool)

(assert (=> b!4463402 (=> (not res!1851318) (not e!2779284))))

(assert (=> b!4463402 (= res!1851318 (not (containsKey!1429 lt!1653850 key!3287)))))

(declare-fun b!4463403 () Bool)

(assert (=> b!4463403 (= call!310726 ((_ map and) call!310727 ((_ map not) (store ((as const (Array tuple2!50474 Bool)) false) (tuple2!50475 key!3287 (get!16364 (getValueByKey!885 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287))) true))))))

(declare-fun lt!1653861 () Unit!86927)

(assert (=> b!4463403 (= lt!1653861 e!2779277)))

(declare-fun c!759548 () Bool)

(declare-fun contains!12775 (List!50366 tuple2!50474) Bool)

(assert (=> b!4463403 (= c!759548 (contains!12775 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (tuple2!50475 key!3287 (get!16364 (getValueByKey!885 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) key!3287)))))))

(declare-fun Unit!87006 () Unit!86927)

(assert (=> b!4463403 (= e!2779282 Unit!87006)))

(declare-fun b!4463404 () Bool)

(declare-fun Unit!87007 () Unit!86927)

(assert (=> b!4463404 (= e!2779279 Unit!87007)))

(declare-fun lt!1653854 () List!50366)

(assert (=> b!4463404 (= lt!1653854 (removePresrvNoDuplicatedKeys!49 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) key!3287))))

(declare-fun lt!1653860 () Unit!86927)

(assert (=> b!4463404 (= lt!1653860 (lemmaInListThenGetKeysListContains!357 lt!1653854 (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))))

(assert (=> b!4463404 (contains!12773 (getKeysList!361 lt!1653854) (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))

(declare-fun lt!1653856 () Unit!86927)

(assert (=> b!4463404 (= lt!1653856 lt!1653860)))

(assert (=> b!4463404 false))

(assert (= (and d!1360667 c!759545) b!4463401))

(assert (= (and d!1360667 (not c!759545)) b!4463389))

(assert (= (and b!4463401 c!759547) b!4463403))

(assert (= (and b!4463401 (not c!759547)) b!4463387))

(assert (= (and b!4463403 c!759548) b!4463393))

(assert (= (and b!4463403 (not c!759548)) b!4463390))

(assert (= (or b!4463403 b!4463387) bm!310723))

(assert (= (or b!4463403 b!4463387) bm!310724))

(assert (= (and b!4463389 c!759543) b!4463400))

(assert (= (and b!4463389 (not c!759543)) b!4463392))

(assert (= (and b!4463400 c!759549) b!4463386))

(assert (= (and b!4463400 (not c!759549)) b!4463396))

(assert (= (and b!4463400 c!759542) b!4463404))

(assert (= (and b!4463400 (not c!759542)) b!4463394))

(assert (= (or b!4463401 b!4463386) bm!310720))

(assert (= (or b!4463393 b!4463400) bm!310725))

(assert (= (and bm!310725 c!759546) b!4463398))

(assert (= (and bm!310725 (not c!759546)) b!4463388))

(assert (= (and d!1360667 res!1851320) b!4463402))

(assert (= (and b!4463402 res!1851318) b!4463395))

(assert (= (and b!4463395 res!1851319) b!4463391))

(assert (= (and b!4463391 c!759544) b!4463399))

(assert (= (and b!4463391 (not c!759544)) b!4463397))

(assert (= (or b!4463399 b!4463397) bm!310721))

(assert (= (or b!4463399 b!4463397) bm!310722))

(declare-fun m!5166613 () Bool)

(assert (=> b!4463400 m!5166613))

(assert (=> b!4463400 m!5166613))

(declare-fun m!5166615 () Bool)

(assert (=> b!4463400 m!5166615))

(declare-fun m!5166617 () Bool)

(assert (=> b!4463400 m!5166617))

(assert (=> b!4463400 m!5166617))

(declare-fun m!5166619 () Bool)

(assert (=> b!4463400 m!5166619))

(declare-fun m!5166621 () Bool)

(assert (=> b!4463391 m!5166621))

(declare-fun m!5166623 () Bool)

(assert (=> b!4463393 m!5166623))

(assert (=> b!4463393 m!5166623))

(declare-fun m!5166625 () Bool)

(assert (=> b!4463393 m!5166625))

(assert (=> b!4463393 m!5166625))

(declare-fun m!5166627 () Bool)

(assert (=> b!4463393 m!5166627))

(assert (=> b!4463399 m!5166623))

(declare-fun m!5166629 () Bool)

(assert (=> b!4463399 m!5166629))

(assert (=> b!4463399 m!5166621))

(assert (=> b!4463399 m!5166623))

(assert (=> b!4463399 m!5166625))

(declare-fun m!5166631 () Bool)

(assert (=> b!4463399 m!5166631))

(declare-fun m!5166633 () Bool)

(assert (=> b!4463399 m!5166633))

(assert (=> b!4463399 m!5166623))

(assert (=> b!4463403 m!5166623))

(assert (=> b!4463403 m!5166623))

(assert (=> b!4463403 m!5166625))

(assert (=> b!4463403 m!5166633))

(declare-fun m!5166635 () Bool)

(assert (=> b!4463403 m!5166635))

(declare-fun m!5166637 () Bool)

(assert (=> d!1360667 m!5166637))

(declare-fun m!5166639 () Bool)

(assert (=> d!1360667 m!5166639))

(declare-fun m!5166641 () Bool)

(assert (=> bm!310722 m!5166641))

(assert (=> b!4463388 m!5166617))

(assert (=> bm!310724 m!5166641))

(declare-fun m!5166643 () Bool)

(assert (=> bm!310720 m!5166643))

(assert (=> b!4463404 m!5166617))

(declare-fun m!5166645 () Bool)

(assert (=> b!4463404 m!5166645))

(declare-fun m!5166647 () Bool)

(assert (=> b!4463404 m!5166647))

(assert (=> b!4463404 m!5166647))

(declare-fun m!5166649 () Bool)

(assert (=> b!4463404 m!5166649))

(declare-fun m!5166651 () Bool)

(assert (=> b!4463386 m!5166651))

(declare-fun m!5166653 () Bool)

(assert (=> bm!310723 m!5166653))

(declare-fun m!5166655 () Bool)

(assert (=> bm!310725 m!5166655))

(declare-fun m!5166657 () Bool)

(assert (=> bm!310721 m!5166657))

(declare-fun m!5166659 () Bool)

(assert (=> b!4463402 m!5166659))

(assert (=> b!4463395 m!5166015))

(declare-fun m!5166661 () Bool)

(assert (=> b!4463395 m!5166661))

(declare-fun m!5166663 () Bool)

(assert (=> b!4463395 m!5166663))

(declare-fun m!5166665 () Bool)

(assert (=> b!4463395 m!5166665))

(assert (=> b!4463395 m!5166663))

(assert (=> b!4463395 m!5166661))

(declare-fun m!5166667 () Bool)

(assert (=> b!4463395 m!5166667))

(assert (=> d!1360523 d!1360667))

(declare-fun d!1360689 () Bool)

(declare-fun lt!1653872 () Bool)

(assert (=> d!1360689 (= lt!1653872 (select (content!8061 e!2778987) key!3287))))

(declare-fun e!2779291 () Bool)

(assert (=> d!1360689 (= lt!1653872 e!2779291)))

(declare-fun res!1851325 () Bool)

(assert (=> d!1360689 (=> (not res!1851325) (not e!2779291))))

(assert (=> d!1360689 (= res!1851325 ((_ is Cons!50245) e!2778987))))

(assert (=> d!1360689 (= (contains!12773 e!2778987 key!3287) lt!1653872)))

(declare-fun b!4463414 () Bool)

(declare-fun e!2779290 () Bool)

(assert (=> b!4463414 (= e!2779291 e!2779290)))

(declare-fun res!1851324 () Bool)

(assert (=> b!4463414 (=> res!1851324 e!2779290)))

(assert (=> b!4463414 (= res!1851324 (= (h!55996 e!2778987) key!3287))))

(declare-fun b!4463415 () Bool)

(assert (=> b!4463415 (= e!2779290 (contains!12773 (t!357319 e!2778987) key!3287))))

(assert (= (and d!1360689 res!1851325) b!4463414))

(assert (= (and b!4463414 (not res!1851324)) b!4463415))

(declare-fun m!5166669 () Bool)

(assert (=> d!1360689 m!5166669))

(declare-fun m!5166671 () Bool)

(assert (=> d!1360689 m!5166671))

(declare-fun m!5166673 () Bool)

(assert (=> b!4463415 m!5166673))

(assert (=> bm!310645 d!1360689))

(declare-fun d!1360691 () Bool)

(assert (=> d!1360691 (= (invariantList!913 (toList!4028 lt!1653456)) (noDuplicatedKeys!205 (toList!4028 lt!1653456)))))

(declare-fun bs!791818 () Bool)

(assert (= bs!791818 d!1360691))

(declare-fun m!5166675 () Bool)

(assert (=> bs!791818 m!5166675))

(assert (=> d!1360499 d!1360691))

(declare-fun d!1360693 () Bool)

(declare-fun res!1851326 () Bool)

(declare-fun e!2779292 () Bool)

(assert (=> d!1360693 (=> res!1851326 e!2779292)))

(assert (=> d!1360693 (= res!1851326 ((_ is Nil!50243) (toList!4027 lm!1477)))))

(assert (=> d!1360693 (= (forall!9953 (toList!4027 lm!1477) lambda!162106) e!2779292)))

(declare-fun b!4463418 () Bool)

(declare-fun e!2779293 () Bool)

(assert (=> b!4463418 (= e!2779292 e!2779293)))

(declare-fun res!1851327 () Bool)

(assert (=> b!4463418 (=> (not res!1851327) (not e!2779293))))

(assert (=> b!4463418 (= res!1851327 (dynLambda!20990 lambda!162106 (h!55992 (toList!4027 lm!1477))))))

(declare-fun b!4463419 () Bool)

(assert (=> b!4463419 (= e!2779293 (forall!9953 (t!357317 (toList!4027 lm!1477)) lambda!162106))))

(assert (= (and d!1360693 (not res!1851326)) b!4463418))

(assert (= (and b!4463418 res!1851327) b!4463419))

(declare-fun b_lambda!147825 () Bool)

(assert (=> (not b_lambda!147825) (not b!4463418)))

(declare-fun m!5166677 () Bool)

(assert (=> b!4463418 m!5166677))

(declare-fun m!5166679 () Bool)

(assert (=> b!4463419 m!5166679))

(assert (=> d!1360499 d!1360693))

(declare-fun bs!791824 () Bool)

(declare-fun b!4463424 () Bool)

(assert (= bs!791824 (and b!4463424 b!4463116)))

(declare-fun lambda!162220 () Int)

(assert (=> bs!791824 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162220 lambda!162188))))

(declare-fun bs!791827 () Bool)

(assert (= bs!791827 (and b!4463424 d!1360647)))

(assert (=> bs!791827 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653715) (= lambda!162220 lambda!162203))))

(declare-fun bs!791828 () Bool)

(assert (= bs!791828 (and b!4463424 b!4463216)))

(assert (=> bs!791828 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162220 lambda!162201))))

(declare-fun bs!791829 () Bool)

(assert (= bs!791829 (and b!4463424 b!4463117)))

(assert (=> bs!791829 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162220 lambda!162187))))

(assert (=> bs!791824 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653648) (= lambda!162220 lambda!162189))))

(declare-fun bs!791832 () Bool)

(assert (= bs!791832 (and b!4463424 b!4463217)))

(assert (=> bs!791832 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162220 lambda!162200))))

(declare-fun bs!791835 () Bool)

(assert (= bs!791835 (and b!4463424 d!1360443)))

(assert (=> bs!791835 (not (= lambda!162220 lambda!162076))))

(declare-fun bs!791837 () Bool)

(assert (= bs!791837 (and b!4463424 d!1360601)))

(assert (=> bs!791837 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653641) (= lambda!162220 lambda!162190))))

(assert (=> bs!791828 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653722) (= lambda!162220 lambda!162202))))

(assert (=> b!4463424 true))

(declare-fun bs!791841 () Bool)

(declare-fun b!4463423 () Bool)

(assert (= bs!791841 (and b!4463423 b!4463116)))

(declare-fun lambda!162223 () Int)

(assert (=> bs!791841 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162223 lambda!162188))))

(declare-fun bs!791842 () Bool)

(assert (= bs!791842 (and b!4463423 d!1360647)))

(assert (=> bs!791842 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653715) (= lambda!162223 lambda!162203))))

(declare-fun bs!791843 () Bool)

(assert (= bs!791843 (and b!4463423 b!4463216)))

(assert (=> bs!791843 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162223 lambda!162201))))

(declare-fun bs!791844 () Bool)

(assert (= bs!791844 (and b!4463423 b!4463117)))

(assert (=> bs!791844 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162223 lambda!162187))))

(assert (=> bs!791841 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653648) (= lambda!162223 lambda!162189))))

(declare-fun bs!791845 () Bool)

(assert (= bs!791845 (and b!4463423 b!4463217)))

(assert (=> bs!791845 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162223 lambda!162200))))

(declare-fun bs!791846 () Bool)

(assert (= bs!791846 (and b!4463423 d!1360601)))

(assert (=> bs!791846 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653641) (= lambda!162223 lambda!162190))))

(assert (=> bs!791843 (= (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653722) (= lambda!162223 lambda!162202))))

(declare-fun bs!791847 () Bool)

(assert (= bs!791847 (and b!4463423 d!1360443)))

(assert (=> bs!791847 (not (= lambda!162223 lambda!162076))))

(declare-fun bs!791848 () Bool)

(assert (= bs!791848 (and b!4463423 b!4463424)))

(assert (=> bs!791848 (= lambda!162223 lambda!162220)))

(assert (=> b!4463423 true))

(declare-fun lambda!162224 () Int)

(declare-fun lt!1653884 () ListMap!3289)

(assert (=> bs!791841 (= (= lt!1653884 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162224 lambda!162188))))

(assert (=> bs!791842 (= (= lt!1653884 lt!1653715) (= lambda!162224 lambda!162203))))

(assert (=> bs!791843 (= (= lt!1653884 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162224 lambda!162201))))

(assert (=> bs!791844 (= (= lt!1653884 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162224 lambda!162187))))

(assert (=> bs!791845 (= (= lt!1653884 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162224 lambda!162200))))

(assert (=> bs!791846 (= (= lt!1653884 lt!1653641) (= lambda!162224 lambda!162190))))

(assert (=> bs!791843 (= (= lt!1653884 lt!1653722) (= lambda!162224 lambda!162202))))

(assert (=> b!4463423 (= (= lt!1653884 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162224 lambda!162223))))

(assert (=> bs!791841 (= (= lt!1653884 lt!1653648) (= lambda!162224 lambda!162189))))

(assert (=> bs!791847 (not (= lambda!162224 lambda!162076))))

(assert (=> bs!791848 (= (= lt!1653884 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162224 lambda!162220))))

(assert (=> b!4463423 true))

(declare-fun bs!791849 () Bool)

(declare-fun d!1360695 () Bool)

(assert (= bs!791849 (and d!1360695 b!4463116)))

(declare-fun lambda!162225 () Int)

(declare-fun lt!1653877 () ListMap!3289)

(assert (=> bs!791849 (= (= lt!1653877 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162225 lambda!162188))))

(declare-fun bs!791850 () Bool)

(assert (= bs!791850 (and d!1360695 b!4463423)))

(assert (=> bs!791850 (= (= lt!1653877 lt!1653884) (= lambda!162225 lambda!162224))))

(declare-fun bs!791851 () Bool)

(assert (= bs!791851 (and d!1360695 d!1360647)))

(assert (=> bs!791851 (= (= lt!1653877 lt!1653715) (= lambda!162225 lambda!162203))))

(declare-fun bs!791852 () Bool)

(assert (= bs!791852 (and d!1360695 b!4463216)))

(assert (=> bs!791852 (= (= lt!1653877 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162225 lambda!162201))))

(declare-fun bs!791853 () Bool)

(assert (= bs!791853 (and d!1360695 b!4463117)))

(assert (=> bs!791853 (= (= lt!1653877 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162225 lambda!162187))))

(declare-fun bs!791854 () Bool)

(assert (= bs!791854 (and d!1360695 b!4463217)))

(assert (=> bs!791854 (= (= lt!1653877 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162225 lambda!162200))))

(declare-fun bs!791855 () Bool)

(assert (= bs!791855 (and d!1360695 d!1360601)))

(assert (=> bs!791855 (= (= lt!1653877 lt!1653641) (= lambda!162225 lambda!162190))))

(assert (=> bs!791852 (= (= lt!1653877 lt!1653722) (= lambda!162225 lambda!162202))))

(assert (=> bs!791850 (= (= lt!1653877 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162225 lambda!162223))))

(assert (=> bs!791849 (= (= lt!1653877 lt!1653648) (= lambda!162225 lambda!162189))))

(declare-fun bs!791856 () Bool)

(assert (= bs!791856 (and d!1360695 d!1360443)))

(assert (=> bs!791856 (not (= lambda!162225 lambda!162076))))

(declare-fun bs!791857 () Bool)

(assert (= bs!791857 (and d!1360695 b!4463424)))

(assert (=> bs!791857 (= (= lt!1653877 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162225 lambda!162220))))

(assert (=> d!1360695 true))

(declare-fun b!4463420 () Bool)

(declare-fun e!2779294 () Bool)

(assert (=> b!4463420 (= e!2779294 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) lambda!162224))))

(declare-fun b!4463421 () Bool)

(declare-fun res!1851328 () Bool)

(declare-fun e!2779296 () Bool)

(assert (=> b!4463421 (=> (not res!1851328) (not e!2779296))))

(assert (=> b!4463421 (= res!1851328 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) lambda!162225))))

(declare-fun b!4463422 () Bool)

(assert (=> b!4463422 (= e!2779296 (invariantList!913 (toList!4028 lt!1653877)))))

(declare-fun e!2779295 () ListMap!3289)

(assert (=> b!4463423 (= e!2779295 lt!1653884)))

(declare-fun lt!1653880 () ListMap!3289)

(assert (=> b!4463423 (= lt!1653880 (+!1346 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (h!55991 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))))))))

(assert (=> b!4463423 (= lt!1653884 (addToMapMapFromBucket!575 (t!357316 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243)))) (+!1346 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) (h!55991 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243)))))))))

(declare-fun lt!1653879 () Unit!86927)

(declare-fun call!310732 () Unit!86927)

(assert (=> b!4463423 (= lt!1653879 call!310732)))

(declare-fun call!310733 () Bool)

(assert (=> b!4463423 call!310733))

(declare-fun lt!1653874 () Unit!86927)

(assert (=> b!4463423 (= lt!1653874 lt!1653879)))

(assert (=> b!4463423 (forall!9955 (toList!4028 lt!1653880) lambda!162224)))

(declare-fun lt!1653883 () Unit!86927)

(declare-fun Unit!87012 () Unit!86927)

(assert (=> b!4463423 (= lt!1653883 Unit!87012)))

(declare-fun call!310731 () Bool)

(assert (=> b!4463423 call!310731))

(declare-fun lt!1653892 () Unit!86927)

(declare-fun Unit!87013 () Unit!86927)

(assert (=> b!4463423 (= lt!1653892 Unit!87013)))

(declare-fun lt!1653885 () Unit!86927)

(declare-fun Unit!87014 () Unit!86927)

(assert (=> b!4463423 (= lt!1653885 Unit!87014)))

(declare-fun lt!1653890 () Unit!86927)

(assert (=> b!4463423 (= lt!1653890 (forallContained!2229 (toList!4028 lt!1653880) lambda!162224 (h!55991 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))))))))

(assert (=> b!4463423 (contains!12771 lt!1653880 (_1!28531 (h!55991 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))))))))

(declare-fun lt!1653881 () Unit!86927)

(declare-fun Unit!87015 () Unit!86927)

(assert (=> b!4463423 (= lt!1653881 Unit!87015)))

(assert (=> b!4463423 (contains!12771 lt!1653884 (_1!28531 (h!55991 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))))))))

(declare-fun lt!1653887 () Unit!86927)

(declare-fun Unit!87016 () Unit!86927)

(assert (=> b!4463423 (= lt!1653887 Unit!87016)))

(assert (=> b!4463423 (forall!9955 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))) lambda!162224)))

(declare-fun lt!1653889 () Unit!86927)

(declare-fun Unit!87017 () Unit!86927)

(assert (=> b!4463423 (= lt!1653889 Unit!87017)))

(assert (=> b!4463423 (forall!9955 (toList!4028 lt!1653880) lambda!162224)))

(declare-fun lt!1653882 () Unit!86927)

(declare-fun Unit!87018 () Unit!86927)

(assert (=> b!4463423 (= lt!1653882 Unit!87018)))

(declare-fun lt!1653893 () Unit!86927)

(declare-fun Unit!87019 () Unit!86927)

(assert (=> b!4463423 (= lt!1653893 Unit!87019)))

(declare-fun lt!1653891 () Unit!86927)

(assert (=> b!4463423 (= lt!1653891 (addForallContainsKeyThenBeforeAdding!258 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653884 (_1!28531 (h!55991 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))))) (_2!28531 (h!55991 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243)))))))))

(assert (=> b!4463423 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) lambda!162224)))

(declare-fun lt!1653876 () Unit!86927)

(assert (=> b!4463423 (= lt!1653876 lt!1653891)))

(assert (=> b!4463423 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) lambda!162224)))

(declare-fun lt!1653875 () Unit!86927)

(declare-fun Unit!87020 () Unit!86927)

(assert (=> b!4463423 (= lt!1653875 Unit!87020)))

(declare-fun res!1851329 () Bool)

(assert (=> b!4463423 (= res!1851329 (forall!9955 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))) lambda!162224))))

(assert (=> b!4463423 (=> (not res!1851329) (not e!2779294))))

(assert (=> b!4463423 e!2779294))

(declare-fun lt!1653878 () Unit!86927)

(declare-fun Unit!87021 () Unit!86927)

(assert (=> b!4463423 (= lt!1653878 Unit!87021)))

(assert (=> b!4463424 (= e!2779295 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))))))

(declare-fun lt!1653886 () Unit!86927)

(assert (=> b!4463424 (= lt!1653886 call!310732)))

(assert (=> b!4463424 call!310731))

(declare-fun lt!1653873 () Unit!86927)

(assert (=> b!4463424 (= lt!1653873 lt!1653886)))

(assert (=> b!4463424 call!310733))

(declare-fun lt!1653888 () Unit!86927)

(declare-fun Unit!87022 () Unit!86927)

(assert (=> b!4463424 (= lt!1653888 Unit!87022)))

(assert (=> d!1360695 e!2779296))

(declare-fun res!1851330 () Bool)

(assert (=> d!1360695 (=> (not res!1851330) (not e!2779296))))

(assert (=> d!1360695 (= res!1851330 (forall!9955 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))) lambda!162225))))

(assert (=> d!1360695 (= lt!1653877 e!2779295)))

(declare-fun c!759553 () Bool)

(assert (=> d!1360695 (= c!759553 ((_ is Nil!50242) (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243)))))))

(assert (=> d!1360695 (noDuplicateKeys!1010 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))))))

(assert (=> d!1360695 (= (addToMapMapFromBucket!575 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))) (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) lt!1653877)))

(declare-fun bm!310726 () Bool)

(assert (=> bm!310726 (= call!310732 (lemmaContainsAllItsOwnKeys!259 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))))))

(declare-fun bm!310727 () Bool)

(assert (=> bm!310727 (= call!310731 (forall!9955 (ite c!759553 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (t!357316 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243))))) (ite c!759553 lambda!162220 lambda!162224)))))

(declare-fun bm!310728 () Bool)

(assert (=> bm!310728 (= call!310733 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (ite c!759553 lambda!162220 lambda!162223)))))

(assert (= (and d!1360695 c!759553) b!4463424))

(assert (= (and d!1360695 (not c!759553)) b!4463423))

(assert (= (and b!4463423 res!1851329) b!4463420))

(assert (= (or b!4463424 b!4463423) bm!310727))

(assert (= (or b!4463424 b!4463423) bm!310728))

(assert (= (or b!4463424 b!4463423) bm!310726))

(assert (= (and d!1360695 res!1851330) b!4463421))

(assert (= (and b!4463421 res!1851328) b!4463422))

(declare-fun m!5166721 () Bool)

(assert (=> b!4463423 m!5166721))

(declare-fun m!5166723 () Bool)

(assert (=> b!4463423 m!5166723))

(declare-fun m!5166725 () Bool)

(assert (=> b!4463423 m!5166725))

(assert (=> b!4463423 m!5165987))

(assert (=> b!4463423 m!5166721))

(declare-fun m!5166727 () Bool)

(assert (=> b!4463423 m!5166727))

(declare-fun m!5166729 () Bool)

(assert (=> b!4463423 m!5166729))

(declare-fun m!5166731 () Bool)

(assert (=> b!4463423 m!5166731))

(assert (=> b!4463423 m!5166725))

(assert (=> b!4463423 m!5166731))

(assert (=> b!4463423 m!5165987))

(declare-fun m!5166733 () Bool)

(assert (=> b!4463423 m!5166733))

(declare-fun m!5166735 () Bool)

(assert (=> b!4463423 m!5166735))

(declare-fun m!5166737 () Bool)

(assert (=> b!4463423 m!5166737))

(assert (=> b!4463423 m!5166735))

(assert (=> bm!310726 m!5165987))

(declare-fun m!5166739 () Bool)

(assert (=> bm!310726 m!5166739))

(declare-fun m!5166741 () Bool)

(assert (=> bm!310727 m!5166741))

(declare-fun m!5166743 () Bool)

(assert (=> b!4463421 m!5166743))

(declare-fun m!5166745 () Bool)

(assert (=> b!4463422 m!5166745))

(declare-fun m!5166747 () Bool)

(assert (=> bm!310728 m!5166747))

(assert (=> b!4463420 m!5166731))

(declare-fun m!5166751 () Bool)

(assert (=> d!1360695 m!5166751))

(declare-fun m!5166755 () Bool)

(assert (=> d!1360695 m!5166755))

(assert (=> b!4462874 d!1360695))

(declare-fun bs!791859 () Bool)

(declare-fun d!1360709 () Bool)

(assert (= bs!791859 (and d!1360709 d!1360535)))

(declare-fun lambda!162226 () Int)

(assert (=> bs!791859 (= lambda!162226 lambda!162111)))

(declare-fun bs!791860 () Bool)

(assert (= bs!791860 (and d!1360709 start!437692)))

(assert (=> bs!791860 (= lambda!162226 lambda!162073)))

(declare-fun bs!791861 () Bool)

(assert (= bs!791861 (and d!1360709 d!1360649)))

(assert (=> bs!791861 (= lambda!162226 lambda!162204)))

(declare-fun bs!791862 () Bool)

(assert (= bs!791862 (and d!1360709 d!1360521)))

(assert (=> bs!791862 (= lambda!162226 lambda!162108)))

(declare-fun bs!791863 () Bool)

(assert (= bs!791863 (and d!1360709 d!1360499)))

(assert (=> bs!791863 (= lambda!162226 lambda!162106)))

(declare-fun bs!791864 () Bool)

(assert (= bs!791864 (and d!1360709 d!1360615)))

(assert (=> bs!791864 (= lambda!162226 lambda!162191)))

(declare-fun bs!791865 () Bool)

(assert (= bs!791865 (and d!1360709 d!1360537)))

(assert (=> bs!791865 (= lambda!162226 lambda!162112)))

(declare-fun bs!791866 () Bool)

(assert (= bs!791866 (and d!1360709 d!1360545)))

(assert (=> bs!791866 (= lambda!162226 lambda!162115)))

(declare-fun bs!791867 () Bool)

(assert (= bs!791867 (and d!1360709 d!1360445)))

(assert (=> bs!791867 (= lambda!162226 lambda!162079)))

(declare-fun bs!791868 () Bool)

(assert (= bs!791868 (and d!1360709 d!1360477)))

(assert (=> bs!791868 (not (= lambda!162226 lambda!162095))))

(declare-fun bs!791869 () Bool)

(assert (= bs!791869 (and d!1360709 d!1360519)))

(assert (=> bs!791869 (= lambda!162226 lambda!162107)))

(declare-fun lt!1653897 () ListMap!3289)

(assert (=> d!1360709 (invariantList!913 (toList!4028 lt!1653897))))

(declare-fun e!2779309 () ListMap!3289)

(assert (=> d!1360709 (= lt!1653897 e!2779309)))

(declare-fun c!759556 () Bool)

(assert (=> d!1360709 (= c!759556 ((_ is Cons!50243) (t!357317 (Cons!50243 lt!1653316 Nil!50243))))))

(assert (=> d!1360709 (forall!9953 (t!357317 (Cons!50243 lt!1653316 Nil!50243)) lambda!162226)))

(assert (=> d!1360709 (= (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243))) lt!1653897)))

(declare-fun b!4463439 () Bool)

(assert (=> b!4463439 (= e!2779309 (addToMapMapFromBucket!575 (_2!28532 (h!55992 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (extractMap!1066 (t!357317 (t!357317 (Cons!50243 lt!1653316 Nil!50243))))))))

(declare-fun b!4463440 () Bool)

(assert (=> b!4463440 (= e!2779309 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360709 c!759556) b!4463439))

(assert (= (and d!1360709 (not c!759556)) b!4463440))

(declare-fun m!5166757 () Bool)

(assert (=> d!1360709 m!5166757))

(declare-fun m!5166759 () Bool)

(assert (=> d!1360709 m!5166759))

(declare-fun m!5166761 () Bool)

(assert (=> b!4463439 m!5166761))

(assert (=> b!4463439 m!5166761))

(declare-fun m!5166765 () Bool)

(assert (=> b!4463439 m!5166765))

(assert (=> b!4462874 d!1360709))

(declare-fun d!1360713 () Bool)

(declare-fun lt!1653901 () Bool)

(assert (=> d!1360713 (= lt!1653901 (select (content!8061 (keys!17334 (extractMap!1066 (toList!4027 lm!1477)))) key!3287))))

(declare-fun e!2779311 () Bool)

(assert (=> d!1360713 (= lt!1653901 e!2779311)))

(declare-fun res!1851342 () Bool)

(assert (=> d!1360713 (=> (not res!1851342) (not e!2779311))))

(assert (=> d!1360713 (= res!1851342 ((_ is Cons!50245) (keys!17334 (extractMap!1066 (toList!4027 lm!1477)))))))

(assert (=> d!1360713 (= (contains!12773 (keys!17334 (extractMap!1066 (toList!4027 lm!1477))) key!3287) lt!1653901)))

(declare-fun b!4463441 () Bool)

(declare-fun e!2779310 () Bool)

(assert (=> b!4463441 (= e!2779311 e!2779310)))

(declare-fun res!1851341 () Bool)

(assert (=> b!4463441 (=> res!1851341 e!2779310)))

(assert (=> b!4463441 (= res!1851341 (= (h!55996 (keys!17334 (extractMap!1066 (toList!4027 lm!1477)))) key!3287))))

(declare-fun b!4463442 () Bool)

(assert (=> b!4463442 (= e!2779310 (contains!12773 (t!357319 (keys!17334 (extractMap!1066 (toList!4027 lm!1477)))) key!3287))))

(assert (= (and d!1360713 res!1851342) b!4463441))

(assert (= (and b!4463441 (not res!1851341)) b!4463442))

(assert (=> d!1360713 m!5165913))

(declare-fun m!5166767 () Bool)

(assert (=> d!1360713 m!5166767))

(declare-fun m!5166769 () Bool)

(assert (=> d!1360713 m!5166769))

(declare-fun m!5166771 () Bool)

(assert (=> b!4463442 m!5166771))

(assert (=> b!4462831 d!1360713))

(assert (=> b!4462831 d!1360643))

(declare-fun d!1360715 () Bool)

(declare-fun isEmpty!28460 (Option!10899) Bool)

(assert (=> d!1360715 (= (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 lt!1653326)) key!3287)) (not (isEmpty!28460 (getValueByKey!885 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))))

(declare-fun bs!791871 () Bool)

(assert (= bs!791871 d!1360715))

(assert (=> bs!791871 m!5166023))

(declare-fun m!5166773 () Bool)

(assert (=> bs!791871 m!5166773))

(assert (=> b!4462908 d!1360715))

(declare-fun b!4463456 () Bool)

(declare-fun e!2779319 () Option!10899)

(assert (=> b!4463456 (= e!2779319 None!10898)))

(declare-fun b!4463454 () Bool)

(declare-fun e!2779318 () Option!10899)

(assert (=> b!4463454 (= e!2779318 e!2779319)))

(declare-fun c!759562 () Bool)

(assert (=> b!4463454 (= c!759562 (and ((_ is Cons!50242) (toList!4028 (extractMap!1066 lt!1653326))) (not (= (_1!28531 (h!55991 (toList!4028 (extractMap!1066 lt!1653326)))) key!3287))))))

(declare-fun b!4463455 () Bool)

(assert (=> b!4463455 (= e!2779319 (getValueByKey!885 (t!357316 (toList!4028 (extractMap!1066 lt!1653326))) key!3287))))

(declare-fun d!1360717 () Bool)

(declare-fun c!759561 () Bool)

(assert (=> d!1360717 (= c!759561 (and ((_ is Cons!50242) (toList!4028 (extractMap!1066 lt!1653326))) (= (_1!28531 (h!55991 (toList!4028 (extractMap!1066 lt!1653326)))) key!3287)))))

(assert (=> d!1360717 (= (getValueByKey!885 (toList!4028 (extractMap!1066 lt!1653326)) key!3287) e!2779318)))

(declare-fun b!4463453 () Bool)

(assert (=> b!4463453 (= e!2779318 (Some!10898 (_2!28531 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))))))))

(assert (= (and d!1360717 c!759561) b!4463453))

(assert (= (and d!1360717 (not c!759561)) b!4463454))

(assert (= (and b!4463454 c!759562) b!4463455))

(assert (= (and b!4463454 (not c!759562)) b!4463456))

(declare-fun m!5166785 () Bool)

(assert (=> b!4463455 m!5166785))

(assert (=> b!4462908 d!1360717))

(declare-fun d!1360725 () Bool)

(declare-fun res!1851355 () Bool)

(declare-fun e!2779330 () Bool)

(assert (=> d!1360725 (=> res!1851355 e!2779330)))

(assert (=> d!1360725 (= res!1851355 (or ((_ is Nil!50243) (toList!4027 lm!1477)) ((_ is Nil!50243) (t!357317 (toList!4027 lm!1477)))))))

(assert (=> d!1360725 (= (isStrictlySorted!327 (toList!4027 lm!1477)) e!2779330)))

(declare-fun b!4463467 () Bool)

(declare-fun e!2779331 () Bool)

(assert (=> b!4463467 (= e!2779330 e!2779331)))

(declare-fun res!1851356 () Bool)

(assert (=> b!4463467 (=> (not res!1851356) (not e!2779331))))

(assert (=> b!4463467 (= res!1851356 (bvslt (_1!28532 (h!55992 (toList!4027 lm!1477))) (_1!28532 (h!55992 (t!357317 (toList!4027 lm!1477))))))))

(declare-fun b!4463468 () Bool)

(assert (=> b!4463468 (= e!2779331 (isStrictlySorted!327 (t!357317 (toList!4027 lm!1477))))))

(assert (= (and d!1360725 (not res!1851355)) b!4463467))

(assert (= (and b!4463467 res!1851356) b!4463468))

(declare-fun m!5166791 () Bool)

(assert (=> b!4463468 m!5166791))

(assert (=> d!1360543 d!1360725))

(declare-fun d!1360731 () Bool)

(declare-fun lt!1653907 () Bool)

(assert (=> d!1360731 (= lt!1653907 (select (content!8061 e!2778934) key!3287))))

(declare-fun e!2779337 () Bool)

(assert (=> d!1360731 (= lt!1653907 e!2779337)))

(declare-fun res!1851362 () Bool)

(assert (=> d!1360731 (=> (not res!1851362) (not e!2779337))))

(assert (=> d!1360731 (= res!1851362 ((_ is Cons!50245) e!2778934))))

(assert (=> d!1360731 (= (contains!12773 e!2778934 key!3287) lt!1653907)))

(declare-fun b!4463473 () Bool)

(declare-fun e!2779336 () Bool)

(assert (=> b!4463473 (= e!2779337 e!2779336)))

(declare-fun res!1851361 () Bool)

(assert (=> b!4463473 (=> res!1851361 e!2779336)))

(assert (=> b!4463473 (= res!1851361 (= (h!55996 e!2778934) key!3287))))

(declare-fun b!4463474 () Bool)

(assert (=> b!4463474 (= e!2779336 (contains!12773 (t!357319 e!2778934) key!3287))))

(assert (= (and d!1360731 res!1851362) b!4463473))

(assert (= (and b!4463473 (not res!1851361)) b!4463474))

(declare-fun m!5166793 () Bool)

(assert (=> d!1360731 m!5166793))

(declare-fun m!5166797 () Bool)

(assert (=> d!1360731 m!5166797))

(declare-fun m!5166799 () Bool)

(assert (=> b!4463474 m!5166799))

(assert (=> bm!310644 d!1360731))

(declare-fun d!1360733 () Bool)

(assert (=> d!1360733 (= (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287)) (not (isEmpty!28460 (getValueByKey!885 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))))

(declare-fun bs!791874 () Bool)

(assert (= bs!791874 d!1360733))

(assert (=> bs!791874 m!5165905))

(declare-fun m!5166805 () Bool)

(assert (=> bs!791874 m!5166805))

(assert (=> b!4462834 d!1360733))

(declare-fun b!4463481 () Bool)

(declare-fun e!2779340 () Option!10899)

(assert (=> b!4463481 (= e!2779340 None!10898)))

(declare-fun b!4463479 () Bool)

(declare-fun e!2779339 () Option!10899)

(assert (=> b!4463479 (= e!2779339 e!2779340)))

(declare-fun c!759564 () Bool)

(assert (=> b!4463479 (= c!759564 (and ((_ is Cons!50242) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (not (= (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) key!3287))))))

(declare-fun b!4463480 () Bool)

(assert (=> b!4463480 (= e!2779340 (getValueByKey!885 (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) key!3287))))

(declare-fun d!1360737 () Bool)

(declare-fun c!759563 () Bool)

(assert (=> d!1360737 (= c!759563 (and ((_ is Cons!50242) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (= (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) key!3287)))))

(assert (=> d!1360737 (= (getValueByKey!885 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287) e!2779339)))

(declare-fun b!4463478 () Bool)

(assert (=> b!4463478 (= e!2779339 (Some!10898 (_2!28531 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))))))

(assert (= (and d!1360737 c!759563) b!4463478))

(assert (= (and d!1360737 (not c!759563)) b!4463479))

(assert (= (and b!4463479 c!759564) b!4463480))

(assert (= (and b!4463479 (not c!759564)) b!4463481))

(declare-fun m!5166807 () Bool)

(assert (=> b!4463480 m!5166807))

(assert (=> b!4462834 d!1360737))

(assert (=> d!1360545 d!1360485))

(assert (=> d!1360545 d!1360499))

(declare-fun d!1360739 () Bool)

(assert (=> d!1360739 (not (contains!12771 (extractMap!1066 (toList!4027 lm!1477)) key!3287))))

(assert (=> d!1360739 true))

(declare-fun _$26!215 () Unit!86927)

(assert (=> d!1360739 (= (choose!28437 lm!1477 key!3287 hashF!1107) _$26!215)))

(declare-fun bs!791894 () Bool)

(assert (= bs!791894 d!1360739))

(assert (=> bs!791894 m!5165733))

(assert (=> bs!791894 m!5165733))

(assert (=> bs!791894 m!5165735))

(assert (=> d!1360545 d!1360739))

(declare-fun d!1360767 () Bool)

(declare-fun res!1851380 () Bool)

(declare-fun e!2779361 () Bool)

(assert (=> d!1360767 (=> res!1851380 e!2779361)))

(assert (=> d!1360767 (= res!1851380 ((_ is Nil!50243) (toList!4027 lm!1477)))))

(assert (=> d!1360767 (= (forall!9953 (toList!4027 lm!1477) lambda!162115) e!2779361)))

(declare-fun b!4463510 () Bool)

(declare-fun e!2779362 () Bool)

(assert (=> b!4463510 (= e!2779361 e!2779362)))

(declare-fun res!1851381 () Bool)

(assert (=> b!4463510 (=> (not res!1851381) (not e!2779362))))

(assert (=> b!4463510 (= res!1851381 (dynLambda!20990 lambda!162115 (h!55992 (toList!4027 lm!1477))))))

(declare-fun b!4463511 () Bool)

(assert (=> b!4463511 (= e!2779362 (forall!9953 (t!357317 (toList!4027 lm!1477)) lambda!162115))))

(assert (= (and d!1360767 (not res!1851380)) b!4463510))

(assert (= (and b!4463510 res!1851381) b!4463511))

(declare-fun b_lambda!147835 () Bool)

(assert (=> (not b_lambda!147835) (not b!4463510)))

(declare-fun m!5166853 () Bool)

(assert (=> b!4463510 m!5166853))

(declare-fun m!5166855 () Bool)

(assert (=> b!4463511 m!5166855))

(assert (=> d!1360545 d!1360767))

(declare-fun bs!791902 () Bool)

(declare-fun b!4463516 () Bool)

(assert (= bs!791902 (and b!4463516 b!4463116)))

(declare-fun lambda!162231 () Int)

(assert (=> bs!791902 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162231 lambda!162188))))

(declare-fun bs!791905 () Bool)

(assert (= bs!791905 (and b!4463516 b!4463423)))

(assert (=> bs!791905 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653884) (= lambda!162231 lambda!162224))))

(declare-fun bs!791906 () Bool)

(assert (= bs!791906 (and b!4463516 d!1360695)))

(assert (=> bs!791906 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653877) (= lambda!162231 lambda!162225))))

(declare-fun bs!791907 () Bool)

(assert (= bs!791907 (and b!4463516 d!1360647)))

(assert (=> bs!791907 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653715) (= lambda!162231 lambda!162203))))

(declare-fun bs!791908 () Bool)

(assert (= bs!791908 (and b!4463516 b!4463216)))

(assert (=> bs!791908 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162231 lambda!162201))))

(declare-fun bs!791909 () Bool)

(assert (= bs!791909 (and b!4463516 b!4463117)))

(assert (=> bs!791909 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162231 lambda!162187))))

(declare-fun bs!791910 () Bool)

(assert (= bs!791910 (and b!4463516 b!4463217)))

(assert (=> bs!791910 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162231 lambda!162200))))

(declare-fun bs!791911 () Bool)

(assert (= bs!791911 (and b!4463516 d!1360601)))

(assert (=> bs!791911 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653641) (= lambda!162231 lambda!162190))))

(assert (=> bs!791908 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653722) (= lambda!162231 lambda!162202))))

(assert (=> bs!791905 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162231 lambda!162223))))

(assert (=> bs!791902 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653648) (= lambda!162231 lambda!162189))))

(declare-fun bs!791912 () Bool)

(assert (= bs!791912 (and b!4463516 d!1360443)))

(assert (=> bs!791912 (not (= lambda!162231 lambda!162076))))

(declare-fun bs!791913 () Bool)

(assert (= bs!791913 (and b!4463516 b!4463424)))

(assert (=> bs!791913 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162231 lambda!162220))))

(assert (=> b!4463516 true))

(declare-fun bs!791914 () Bool)

(declare-fun b!4463515 () Bool)

(assert (= bs!791914 (and b!4463515 b!4463116)))

(declare-fun lambda!162233 () Int)

(assert (=> bs!791914 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162233 lambda!162188))))

(declare-fun bs!791915 () Bool)

(assert (= bs!791915 (and b!4463515 b!4463423)))

(assert (=> bs!791915 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653884) (= lambda!162233 lambda!162224))))

(declare-fun bs!791916 () Bool)

(assert (= bs!791916 (and b!4463515 d!1360695)))

(assert (=> bs!791916 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653877) (= lambda!162233 lambda!162225))))

(declare-fun bs!791917 () Bool)

(assert (= bs!791917 (and b!4463515 d!1360647)))

(assert (=> bs!791917 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653715) (= lambda!162233 lambda!162203))))

(declare-fun bs!791918 () Bool)

(assert (= bs!791918 (and b!4463515 b!4463216)))

(assert (=> bs!791918 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162233 lambda!162201))))

(declare-fun bs!791919 () Bool)

(assert (= bs!791919 (and b!4463515 b!4463117)))

(assert (=> bs!791919 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162233 lambda!162187))))

(declare-fun bs!791920 () Bool)

(assert (= bs!791920 (and b!4463515 b!4463217)))

(assert (=> bs!791920 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162233 lambda!162200))))

(declare-fun bs!791921 () Bool)

(assert (= bs!791921 (and b!4463515 d!1360601)))

(assert (=> bs!791921 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653641) (= lambda!162233 lambda!162190))))

(assert (=> bs!791918 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653722) (= lambda!162233 lambda!162202))))

(declare-fun bs!791922 () Bool)

(assert (= bs!791922 (and b!4463515 b!4463516)))

(assert (=> bs!791922 (= lambda!162233 lambda!162231)))

(assert (=> bs!791915 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162233 lambda!162223))))

(assert (=> bs!791914 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653648) (= lambda!162233 lambda!162189))))

(declare-fun bs!791924 () Bool)

(assert (= bs!791924 (and b!4463515 d!1360443)))

(assert (=> bs!791924 (not (= lambda!162233 lambda!162076))))

(declare-fun bs!791926 () Bool)

(assert (= bs!791926 (and b!4463515 b!4463424)))

(assert (=> bs!791926 (= (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162233 lambda!162220))))

(assert (=> b!4463515 true))

(declare-fun lambda!162235 () Int)

(declare-fun lt!1653942 () ListMap!3289)

(assert (=> bs!791914 (= (= lt!1653942 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162235 lambda!162188))))

(assert (=> bs!791915 (= (= lt!1653942 lt!1653884) (= lambda!162235 lambda!162224))))

(assert (=> b!4463515 (= (= lt!1653942 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) (= lambda!162235 lambda!162233))))

(assert (=> bs!791916 (= (= lt!1653942 lt!1653877) (= lambda!162235 lambda!162225))))

(assert (=> bs!791917 (= (= lt!1653942 lt!1653715) (= lambda!162235 lambda!162203))))

(assert (=> bs!791918 (= (= lt!1653942 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162235 lambda!162201))))

(assert (=> bs!791919 (= (= lt!1653942 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162235 lambda!162187))))

(assert (=> bs!791920 (= (= lt!1653942 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162235 lambda!162200))))

(assert (=> bs!791921 (= (= lt!1653942 lt!1653641) (= lambda!162235 lambda!162190))))

(assert (=> bs!791918 (= (= lt!1653942 lt!1653722) (= lambda!162235 lambda!162202))))

(assert (=> bs!791922 (= (= lt!1653942 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) (= lambda!162235 lambda!162231))))

(assert (=> bs!791915 (= (= lt!1653942 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162235 lambda!162223))))

(assert (=> bs!791914 (= (= lt!1653942 lt!1653648) (= lambda!162235 lambda!162189))))

(assert (=> bs!791924 (not (= lambda!162235 lambda!162076))))

(assert (=> bs!791926 (= (= lt!1653942 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162235 lambda!162220))))

(assert (=> b!4463515 true))

(declare-fun bs!791934 () Bool)

(declare-fun d!1360769 () Bool)

(assert (= bs!791934 (and d!1360769 b!4463116)))

(declare-fun lambda!162236 () Int)

(declare-fun lt!1653935 () ListMap!3289)

(assert (=> bs!791934 (= (= lt!1653935 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162236 lambda!162188))))

(declare-fun bs!791935 () Bool)

(assert (= bs!791935 (and d!1360769 b!4463515)))

(assert (=> bs!791935 (= (= lt!1653935 lt!1653942) (= lambda!162236 lambda!162235))))

(declare-fun bs!791936 () Bool)

(assert (= bs!791936 (and d!1360769 b!4463423)))

(assert (=> bs!791936 (= (= lt!1653935 lt!1653884) (= lambda!162236 lambda!162224))))

(assert (=> bs!791935 (= (= lt!1653935 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) (= lambda!162236 lambda!162233))))

(declare-fun bs!791937 () Bool)

(assert (= bs!791937 (and d!1360769 d!1360695)))

(assert (=> bs!791937 (= (= lt!1653935 lt!1653877) (= lambda!162236 lambda!162225))))

(declare-fun bs!791938 () Bool)

(assert (= bs!791938 (and d!1360769 d!1360647)))

(assert (=> bs!791938 (= (= lt!1653935 lt!1653715) (= lambda!162236 lambda!162203))))

(declare-fun bs!791939 () Bool)

(assert (= bs!791939 (and d!1360769 b!4463216)))

(assert (=> bs!791939 (= (= lt!1653935 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162236 lambda!162201))))

(declare-fun bs!791940 () Bool)

(assert (= bs!791940 (and d!1360769 b!4463117)))

(assert (=> bs!791940 (= (= lt!1653935 (extractMap!1066 (t!357317 lt!1653326))) (= lambda!162236 lambda!162187))))

(declare-fun bs!791941 () Bool)

(assert (= bs!791941 (and d!1360769 b!4463217)))

(assert (=> bs!791941 (= (= lt!1653935 (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162236 lambda!162200))))

(declare-fun bs!791942 () Bool)

(assert (= bs!791942 (and d!1360769 d!1360601)))

(assert (=> bs!791942 (= (= lt!1653935 lt!1653641) (= lambda!162236 lambda!162190))))

(assert (=> bs!791939 (= (= lt!1653935 lt!1653722) (= lambda!162236 lambda!162202))))

(declare-fun bs!791943 () Bool)

(assert (= bs!791943 (and d!1360769 b!4463516)))

(assert (=> bs!791943 (= (= lt!1653935 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) (= lambda!162236 lambda!162231))))

(assert (=> bs!791936 (= (= lt!1653935 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162236 lambda!162223))))

(assert (=> bs!791934 (= (= lt!1653935 lt!1653648) (= lambda!162236 lambda!162189))))

(declare-fun bs!791944 () Bool)

(assert (= bs!791944 (and d!1360769 d!1360443)))

(assert (=> bs!791944 (not (= lambda!162236 lambda!162076))))

(declare-fun bs!791945 () Bool)

(assert (= bs!791945 (and d!1360769 b!4463424)))

(assert (=> bs!791945 (= (= lt!1653935 (extractMap!1066 (t!357317 (Cons!50243 lt!1653316 Nil!50243)))) (= lambda!162236 lambda!162220))))

(assert (=> d!1360769 true))

(declare-fun b!4463512 () Bool)

(declare-fun e!2779363 () Bool)

(assert (=> b!4463512 (= e!2779363 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) lambda!162235))))

(declare-fun b!4463513 () Bool)

(declare-fun res!1851382 () Bool)

(declare-fun e!2779365 () Bool)

(assert (=> b!4463513 (=> (not res!1851382) (not e!2779365))))

(assert (=> b!4463513 (= res!1851382 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) lambda!162236))))

(declare-fun b!4463514 () Bool)

(assert (=> b!4463514 (= e!2779365 (invariantList!913 (toList!4028 lt!1653935)))))

(declare-fun e!2779364 () ListMap!3289)

(assert (=> b!4463515 (= e!2779364 lt!1653942)))

(declare-fun lt!1653938 () ListMap!3289)

(assert (=> b!4463515 (= lt!1653938 (+!1346 (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (h!55991 (_2!28532 (h!55992 (toList!4027 lm!1477))))))))

(assert (=> b!4463515 (= lt!1653942 (addToMapMapFromBucket!575 (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477)))) (+!1346 (extractMap!1066 (t!357317 (toList!4027 lm!1477))) (h!55991 (_2!28532 (h!55992 (toList!4027 lm!1477)))))))))

(declare-fun lt!1653937 () Unit!86927)

(declare-fun call!310738 () Unit!86927)

(assert (=> b!4463515 (= lt!1653937 call!310738)))

(declare-fun call!310739 () Bool)

(assert (=> b!4463515 call!310739))

(declare-fun lt!1653932 () Unit!86927)

(assert (=> b!4463515 (= lt!1653932 lt!1653937)))

(assert (=> b!4463515 (forall!9955 (toList!4028 lt!1653938) lambda!162235)))

(declare-fun lt!1653941 () Unit!86927)

(declare-fun Unit!87023 () Unit!86927)

(assert (=> b!4463515 (= lt!1653941 Unit!87023)))

(declare-fun call!310737 () Bool)

(assert (=> b!4463515 call!310737))

(declare-fun lt!1653950 () Unit!86927)

(declare-fun Unit!87024 () Unit!86927)

(assert (=> b!4463515 (= lt!1653950 Unit!87024)))

(declare-fun lt!1653943 () Unit!86927)

(declare-fun Unit!87025 () Unit!86927)

(assert (=> b!4463515 (= lt!1653943 Unit!87025)))

(declare-fun lt!1653948 () Unit!86927)

(assert (=> b!4463515 (= lt!1653948 (forallContained!2229 (toList!4028 lt!1653938) lambda!162235 (h!55991 (_2!28532 (h!55992 (toList!4027 lm!1477))))))))

(assert (=> b!4463515 (contains!12771 lt!1653938 (_1!28531 (h!55991 (_2!28532 (h!55992 (toList!4027 lm!1477))))))))

(declare-fun lt!1653939 () Unit!86927)

(declare-fun Unit!87026 () Unit!86927)

(assert (=> b!4463515 (= lt!1653939 Unit!87026)))

(assert (=> b!4463515 (contains!12771 lt!1653942 (_1!28531 (h!55991 (_2!28532 (h!55992 (toList!4027 lm!1477))))))))

(declare-fun lt!1653945 () Unit!86927)

(declare-fun Unit!87027 () Unit!86927)

(assert (=> b!4463515 (= lt!1653945 Unit!87027)))

(assert (=> b!4463515 (forall!9955 (_2!28532 (h!55992 (toList!4027 lm!1477))) lambda!162235)))

(declare-fun lt!1653947 () Unit!86927)

(declare-fun Unit!87028 () Unit!86927)

(assert (=> b!4463515 (= lt!1653947 Unit!87028)))

(assert (=> b!4463515 (forall!9955 (toList!4028 lt!1653938) lambda!162235)))

(declare-fun lt!1653940 () Unit!86927)

(declare-fun Unit!87029 () Unit!86927)

(assert (=> b!4463515 (= lt!1653940 Unit!87029)))

(declare-fun lt!1653951 () Unit!86927)

(declare-fun Unit!87030 () Unit!86927)

(assert (=> b!4463515 (= lt!1653951 Unit!87030)))

(declare-fun lt!1653949 () Unit!86927)

(assert (=> b!4463515 (= lt!1653949 (addForallContainsKeyThenBeforeAdding!258 (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653942 (_1!28531 (h!55991 (_2!28532 (h!55992 (toList!4027 lm!1477))))) (_2!28531 (h!55991 (_2!28532 (h!55992 (toList!4027 lm!1477)))))))))

(assert (=> b!4463515 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) lambda!162235)))

(declare-fun lt!1653934 () Unit!86927)

(assert (=> b!4463515 (= lt!1653934 lt!1653949)))

(assert (=> b!4463515 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) lambda!162235)))

(declare-fun lt!1653933 () Unit!86927)

(declare-fun Unit!87031 () Unit!86927)

(assert (=> b!4463515 (= lt!1653933 Unit!87031)))

(declare-fun res!1851383 () Bool)

(assert (=> b!4463515 (= res!1851383 (forall!9955 (_2!28532 (h!55992 (toList!4027 lm!1477))) lambda!162235))))

(assert (=> b!4463515 (=> (not res!1851383) (not e!2779363))))

(assert (=> b!4463515 e!2779363))

(declare-fun lt!1653936 () Unit!86927)

(declare-fun Unit!87032 () Unit!86927)

(assert (=> b!4463515 (= lt!1653936 Unit!87032)))

(assert (=> b!4463516 (= e!2779364 (extractMap!1066 (t!357317 (toList!4027 lm!1477))))))

(declare-fun lt!1653944 () Unit!86927)

(assert (=> b!4463516 (= lt!1653944 call!310738)))

(assert (=> b!4463516 call!310737))

(declare-fun lt!1653931 () Unit!86927)

(assert (=> b!4463516 (= lt!1653931 lt!1653944)))

(assert (=> b!4463516 call!310739))

(declare-fun lt!1653946 () Unit!86927)

(declare-fun Unit!87033 () Unit!86927)

(assert (=> b!4463516 (= lt!1653946 Unit!87033)))

(assert (=> d!1360769 e!2779365))

(declare-fun res!1851384 () Bool)

(assert (=> d!1360769 (=> (not res!1851384) (not e!2779365))))

(assert (=> d!1360769 (= res!1851384 (forall!9955 (_2!28532 (h!55992 (toList!4027 lm!1477))) lambda!162236))))

(assert (=> d!1360769 (= lt!1653935 e!2779364)))

(declare-fun c!759572 () Bool)

(assert (=> d!1360769 (= c!759572 ((_ is Nil!50242) (_2!28532 (h!55992 (toList!4027 lm!1477)))))))

(assert (=> d!1360769 (noDuplicateKeys!1010 (_2!28532 (h!55992 (toList!4027 lm!1477))))))

(assert (=> d!1360769 (= (addToMapMapFromBucket!575 (_2!28532 (h!55992 (toList!4027 lm!1477))) (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) lt!1653935)))

(declare-fun bm!310732 () Bool)

(assert (=> bm!310732 (= call!310738 (lemmaContainsAllItsOwnKeys!259 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))))))

(declare-fun bm!310733 () Bool)

(assert (=> bm!310733 (= call!310737 (forall!9955 (ite c!759572 (toList!4028 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477))))) (ite c!759572 lambda!162231 lambda!162235)))))

(declare-fun bm!310734 () Bool)

(assert (=> bm!310734 (= call!310739 (forall!9955 (toList!4028 (extractMap!1066 (t!357317 (toList!4027 lm!1477)))) (ite c!759572 lambda!162231 lambda!162233)))))

(assert (= (and d!1360769 c!759572) b!4463516))

(assert (= (and d!1360769 (not c!759572)) b!4463515))

(assert (= (and b!4463515 res!1851383) b!4463512))

(assert (= (or b!4463516 b!4463515) bm!310733))

(assert (= (or b!4463516 b!4463515) bm!310734))

(assert (= (or b!4463516 b!4463515) bm!310732))

(assert (= (and d!1360769 res!1851384) b!4463513))

(assert (= (and b!4463513 res!1851382) b!4463514))

(declare-fun m!5166893 () Bool)

(assert (=> b!4463515 m!5166893))

(declare-fun m!5166895 () Bool)

(assert (=> b!4463515 m!5166895))

(declare-fun m!5166897 () Bool)

(assert (=> b!4463515 m!5166897))

(assert (=> b!4463515 m!5165979))

(assert (=> b!4463515 m!5166893))

(declare-fun m!5166899 () Bool)

(assert (=> b!4463515 m!5166899))

(declare-fun m!5166901 () Bool)

(assert (=> b!4463515 m!5166901))

(declare-fun m!5166905 () Bool)

(assert (=> b!4463515 m!5166905))

(assert (=> b!4463515 m!5166897))

(assert (=> b!4463515 m!5166905))

(assert (=> b!4463515 m!5165979))

(declare-fun m!5166911 () Bool)

(assert (=> b!4463515 m!5166911))

(declare-fun m!5166915 () Bool)

(assert (=> b!4463515 m!5166915))

(declare-fun m!5166917 () Bool)

(assert (=> b!4463515 m!5166917))

(assert (=> b!4463515 m!5166915))

(assert (=> bm!310732 m!5165979))

(declare-fun m!5166919 () Bool)

(assert (=> bm!310732 m!5166919))

(declare-fun m!5166921 () Bool)

(assert (=> bm!310733 m!5166921))

(declare-fun m!5166923 () Bool)

(assert (=> b!4463513 m!5166923))

(declare-fun m!5166925 () Bool)

(assert (=> b!4463514 m!5166925))

(declare-fun m!5166927 () Bool)

(assert (=> bm!310734 m!5166927))

(assert (=> b!4463512 m!5166905))

(declare-fun m!5166929 () Bool)

(assert (=> d!1360769 m!5166929))

(assert (=> d!1360769 m!5166081))

(assert (=> b!4462870 d!1360769))

(declare-fun bs!791958 () Bool)

(declare-fun d!1360775 () Bool)

(assert (= bs!791958 (and d!1360775 d!1360535)))

(declare-fun lambda!162238 () Int)

(assert (=> bs!791958 (= lambda!162238 lambda!162111)))

(declare-fun bs!791959 () Bool)

(assert (= bs!791959 (and d!1360775 start!437692)))

(assert (=> bs!791959 (= lambda!162238 lambda!162073)))

(declare-fun bs!791961 () Bool)

(assert (= bs!791961 (and d!1360775 d!1360709)))

(assert (=> bs!791961 (= lambda!162238 lambda!162226)))

(declare-fun bs!791962 () Bool)

(assert (= bs!791962 (and d!1360775 d!1360649)))

(assert (=> bs!791962 (= lambda!162238 lambda!162204)))

(declare-fun bs!791963 () Bool)

(assert (= bs!791963 (and d!1360775 d!1360521)))

(assert (=> bs!791963 (= lambda!162238 lambda!162108)))

(declare-fun bs!791964 () Bool)

(assert (= bs!791964 (and d!1360775 d!1360499)))

(assert (=> bs!791964 (= lambda!162238 lambda!162106)))

(declare-fun bs!791965 () Bool)

(assert (= bs!791965 (and d!1360775 d!1360615)))

(assert (=> bs!791965 (= lambda!162238 lambda!162191)))

(declare-fun bs!791966 () Bool)

(assert (= bs!791966 (and d!1360775 d!1360537)))

(assert (=> bs!791966 (= lambda!162238 lambda!162112)))

(declare-fun bs!791967 () Bool)

(assert (= bs!791967 (and d!1360775 d!1360545)))

(assert (=> bs!791967 (= lambda!162238 lambda!162115)))

(declare-fun bs!791968 () Bool)

(assert (= bs!791968 (and d!1360775 d!1360445)))

(assert (=> bs!791968 (= lambda!162238 lambda!162079)))

(declare-fun bs!791969 () Bool)

(assert (= bs!791969 (and d!1360775 d!1360477)))

(assert (=> bs!791969 (not (= lambda!162238 lambda!162095))))

(declare-fun bs!791970 () Bool)

(assert (= bs!791970 (and d!1360775 d!1360519)))

(assert (=> bs!791970 (= lambda!162238 lambda!162107)))

(declare-fun lt!1653953 () ListMap!3289)

(assert (=> d!1360775 (invariantList!913 (toList!4028 lt!1653953))))

(declare-fun e!2779367 () ListMap!3289)

(assert (=> d!1360775 (= lt!1653953 e!2779367)))

(declare-fun c!759574 () Bool)

(assert (=> d!1360775 (= c!759574 ((_ is Cons!50243) (t!357317 (toList!4027 lm!1477))))))

(assert (=> d!1360775 (forall!9953 (t!357317 (toList!4027 lm!1477)) lambda!162238)))

(assert (=> d!1360775 (= (extractMap!1066 (t!357317 (toList!4027 lm!1477))) lt!1653953)))

(declare-fun b!4463519 () Bool)

(assert (=> b!4463519 (= e!2779367 (addToMapMapFromBucket!575 (_2!28532 (h!55992 (t!357317 (toList!4027 lm!1477)))) (extractMap!1066 (t!357317 (t!357317 (toList!4027 lm!1477))))))))

(declare-fun b!4463520 () Bool)

(assert (=> b!4463520 (= e!2779367 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360775 c!759574) b!4463519))

(assert (= (and d!1360775 (not c!759574)) b!4463520))

(declare-fun m!5166943 () Bool)

(assert (=> d!1360775 m!5166943))

(declare-fun m!5166945 () Bool)

(assert (=> d!1360775 m!5166945))

(declare-fun m!5166947 () Bool)

(assert (=> b!4463519 m!5166947))

(assert (=> b!4463519 m!5166947))

(declare-fun m!5166949 () Bool)

(assert (=> b!4463519 m!5166949))

(assert (=> b!4462870 d!1360775))

(declare-fun d!1360785 () Bool)

(declare-fun res!1851390 () Bool)

(declare-fun e!2779374 () Bool)

(assert (=> d!1360785 (=> res!1851390 e!2779374)))

(assert (=> d!1360785 (= res!1851390 (not ((_ is Cons!50242) (_2!28532 (h!55992 (toList!4027 lm!1477))))))))

(assert (=> d!1360785 (= (noDuplicateKeys!1010 (_2!28532 (h!55992 (toList!4027 lm!1477)))) e!2779374)))

(declare-fun b!4463528 () Bool)

(declare-fun e!2779375 () Bool)

(assert (=> b!4463528 (= e!2779374 e!2779375)))

(declare-fun res!1851391 () Bool)

(assert (=> b!4463528 (=> (not res!1851391) (not e!2779375))))

(assert (=> b!4463528 (= res!1851391 (not (containsKey!1426 (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477)))) (_1!28531 (h!55991 (_2!28532 (h!55992 (toList!4027 lm!1477))))))))))

(declare-fun b!4463529 () Bool)

(assert (=> b!4463529 (= e!2779375 (noDuplicateKeys!1010 (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477))))))))

(assert (= (and d!1360785 (not res!1851390)) b!4463528))

(assert (= (and b!4463528 res!1851391) b!4463529))

(declare-fun m!5166959 () Bool)

(assert (=> b!4463528 m!5166959))

(declare-fun m!5166961 () Bool)

(assert (=> b!4463529 m!5166961))

(assert (=> bs!791721 d!1360785))

(declare-fun d!1360789 () Bool)

(assert (=> d!1360789 (= (invariantList!913 (toList!4028 lt!1653467)) (noDuplicatedKeys!205 (toList!4028 lt!1653467)))))

(declare-fun bs!791971 () Bool)

(assert (= bs!791971 d!1360789))

(declare-fun m!5166963 () Bool)

(assert (=> bs!791971 m!5166963))

(assert (=> d!1360521 d!1360789))

(declare-fun d!1360791 () Bool)

(declare-fun res!1851392 () Bool)

(declare-fun e!2779376 () Bool)

(assert (=> d!1360791 (=> res!1851392 e!2779376)))

(assert (=> d!1360791 (= res!1851392 ((_ is Nil!50243) (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))

(assert (=> d!1360791 (= (forall!9953 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243) lambda!162108) e!2779376)))

(declare-fun b!4463530 () Bool)

(declare-fun e!2779377 () Bool)

(assert (=> b!4463530 (= e!2779376 e!2779377)))

(declare-fun res!1851393 () Bool)

(assert (=> b!4463530 (=> (not res!1851393) (not e!2779377))))

(assert (=> b!4463530 (= res!1851393 (dynLambda!20990 lambda!162108 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))

(declare-fun b!4463531 () Bool)

(assert (=> b!4463531 (= e!2779377 (forall!9953 (t!357317 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) lambda!162108))))

(assert (= (and d!1360791 (not res!1851392)) b!4463530))

(assert (= (and b!4463530 res!1851393) b!4463531))

(declare-fun b_lambda!147841 () Bool)

(assert (=> (not b_lambda!147841) (not b!4463530)))

(declare-fun m!5166965 () Bool)

(assert (=> b!4463530 m!5166965))

(declare-fun m!5166967 () Bool)

(assert (=> b!4463531 m!5166967))

(assert (=> d!1360521 d!1360791))

(declare-fun d!1360793 () Bool)

(declare-fun c!759576 () Bool)

(assert (=> d!1360793 (= c!759576 (and ((_ is Cons!50243) (toList!4027 lt!1653494)) (= (_1!28532 (h!55992 (toList!4027 lt!1653494))) (_1!28532 lt!1653316))))))

(declare-fun e!2779378 () Option!10898)

(assert (=> d!1360793 (= (getValueByKey!884 (toList!4027 lt!1653494) (_1!28532 lt!1653316)) e!2779378)))

(declare-fun b!4463534 () Bool)

(declare-fun e!2779379 () Option!10898)

(assert (=> b!4463534 (= e!2779379 (getValueByKey!884 (t!357317 (toList!4027 lt!1653494)) (_1!28532 lt!1653316)))))

(declare-fun b!4463532 () Bool)

(assert (=> b!4463532 (= e!2779378 (Some!10897 (_2!28532 (h!55992 (toList!4027 lt!1653494)))))))

(declare-fun b!4463533 () Bool)

(assert (=> b!4463533 (= e!2779378 e!2779379)))

(declare-fun c!759577 () Bool)

(assert (=> b!4463533 (= c!759577 (and ((_ is Cons!50243) (toList!4027 lt!1653494)) (not (= (_1!28532 (h!55992 (toList!4027 lt!1653494))) (_1!28532 lt!1653316)))))))

(declare-fun b!4463535 () Bool)

(assert (=> b!4463535 (= e!2779379 None!10897)))

(assert (= (and d!1360793 c!759576) b!4463532))

(assert (= (and d!1360793 (not c!759576)) b!4463533))

(assert (= (and b!4463533 c!759577) b!4463534))

(assert (= (and b!4463533 (not c!759577)) b!4463535))

(declare-fun m!5166969 () Bool)

(assert (=> b!4463534 m!5166969))

(assert (=> b!4462913 d!1360793))

(assert (=> d!1360539 d!1360521))

(declare-fun d!1360795 () Bool)

(assert (=> d!1360795 (eq!503 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 newBucket!178) Nil!50243)) (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287))))

(assert (=> d!1360795 true))

(declare-fun _$18!177 () Unit!86927)

(assert (=> d!1360795 (= (choose!28436 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!177)))

(declare-fun bs!792007 () Bool)

(assert (= bs!792007 d!1360795))

(assert (=> bs!792007 m!5166075))

(assert (=> bs!792007 m!5165721))

(assert (=> bs!792007 m!5165721))

(assert (=> bs!792007 m!5165717))

(assert (=> bs!792007 m!5166075))

(assert (=> bs!792007 m!5165717))

(assert (=> bs!792007 m!5166077))

(assert (=> d!1360539 d!1360795))

(assert (=> d!1360539 d!1360523))

(assert (=> d!1360539 d!1360785))

(declare-fun bs!792015 () Bool)

(declare-fun d!1360807 () Bool)

(assert (= bs!792015 (and d!1360807 d!1360535)))

(declare-fun lambda!162244 () Int)

(assert (=> bs!792015 (= lambda!162244 lambda!162111)))

(declare-fun bs!792018 () Bool)

(assert (= bs!792018 (and d!1360807 start!437692)))

(assert (=> bs!792018 (= lambda!162244 lambda!162073)))

(declare-fun bs!792020 () Bool)

(assert (= bs!792020 (and d!1360807 d!1360709)))

(assert (=> bs!792020 (= lambda!162244 lambda!162226)))

(declare-fun bs!792022 () Bool)

(assert (= bs!792022 (and d!1360807 d!1360649)))

(assert (=> bs!792022 (= lambda!162244 lambda!162204)))

(declare-fun bs!792023 () Bool)

(assert (= bs!792023 (and d!1360807 d!1360775)))

(assert (=> bs!792023 (= lambda!162244 lambda!162238)))

(declare-fun bs!792025 () Bool)

(assert (= bs!792025 (and d!1360807 d!1360521)))

(assert (=> bs!792025 (= lambda!162244 lambda!162108)))

(declare-fun bs!792026 () Bool)

(assert (= bs!792026 (and d!1360807 d!1360499)))

(assert (=> bs!792026 (= lambda!162244 lambda!162106)))

(declare-fun bs!792027 () Bool)

(assert (= bs!792027 (and d!1360807 d!1360615)))

(assert (=> bs!792027 (= lambda!162244 lambda!162191)))

(declare-fun bs!792028 () Bool)

(assert (= bs!792028 (and d!1360807 d!1360537)))

(assert (=> bs!792028 (= lambda!162244 lambda!162112)))

(declare-fun bs!792029 () Bool)

(assert (= bs!792029 (and d!1360807 d!1360545)))

(assert (=> bs!792029 (= lambda!162244 lambda!162115)))

(declare-fun bs!792030 () Bool)

(assert (= bs!792030 (and d!1360807 d!1360445)))

(assert (=> bs!792030 (= lambda!162244 lambda!162079)))

(declare-fun bs!792031 () Bool)

(assert (= bs!792031 (and d!1360807 d!1360477)))

(assert (=> bs!792031 (not (= lambda!162244 lambda!162095))))

(declare-fun bs!792032 () Bool)

(assert (= bs!792032 (and d!1360807 d!1360519)))

(assert (=> bs!792032 (= lambda!162244 lambda!162107)))

(declare-fun lt!1653980 () ListMap!3289)

(assert (=> d!1360807 (invariantList!913 (toList!4028 lt!1653980))))

(declare-fun e!2779388 () ListMap!3289)

(assert (=> d!1360807 (= lt!1653980 e!2779388)))

(declare-fun c!759582 () Bool)

(assert (=> d!1360807 (= c!759582 ((_ is Cons!50243) (Cons!50243 (tuple2!50477 hash!344 newBucket!178) Nil!50243)))))

(assert (=> d!1360807 (forall!9953 (Cons!50243 (tuple2!50477 hash!344 newBucket!178) Nil!50243) lambda!162244)))

(assert (=> d!1360807 (= (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 newBucket!178) Nil!50243)) lt!1653980)))

(declare-fun b!4463549 () Bool)

(assert (=> b!4463549 (= e!2779388 (addToMapMapFromBucket!575 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 newBucket!178) Nil!50243))) (extractMap!1066 (t!357317 (Cons!50243 (tuple2!50477 hash!344 newBucket!178) Nil!50243)))))))

(declare-fun b!4463550 () Bool)

(assert (=> b!4463550 (= e!2779388 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360807 c!759582) b!4463549))

(assert (= (and d!1360807 (not c!759582)) b!4463550))

(declare-fun m!5167027 () Bool)

(assert (=> d!1360807 m!5167027))

(declare-fun m!5167029 () Bool)

(assert (=> d!1360807 m!5167029))

(declare-fun m!5167031 () Bool)

(assert (=> b!4463549 m!5167031))

(assert (=> b!4463549 m!5167031))

(declare-fun m!5167037 () Bool)

(assert (=> b!4463549 m!5167037))

(assert (=> d!1360539 d!1360807))

(declare-fun d!1360813 () Bool)

(assert (=> d!1360813 (= (eq!503 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 newBucket!178) Nil!50243)) (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287)) (= (content!8062 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 newBucket!178) Nil!50243)))) (content!8062 (toList!4028 (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287)))))))

(declare-fun bs!792033 () Bool)

(assert (= bs!792033 d!1360813))

(declare-fun m!5167043 () Bool)

(assert (=> bs!792033 m!5167043))

(assert (=> bs!792033 m!5166057))

(assert (=> d!1360539 d!1360813))

(assert (=> d!1360485 d!1360651))

(declare-fun d!1360819 () Bool)

(assert (=> d!1360819 (isDefined!8184 (getValueByKey!884 (toList!4027 lm!1477) lt!1653320))))

(declare-fun lt!1653991 () Unit!86927)

(declare-fun choose!28446 (List!50367 (_ BitVec 64)) Unit!86927)

(assert (=> d!1360819 (= lt!1653991 (choose!28446 (toList!4027 lm!1477) lt!1653320))))

(declare-fun e!2779401 () Bool)

(assert (=> d!1360819 e!2779401))

(declare-fun res!1851410 () Bool)

(assert (=> d!1360819 (=> (not res!1851410) (not e!2779401))))

(assert (=> d!1360819 (= res!1851410 (isStrictlySorted!327 (toList!4027 lm!1477)))))

(assert (=> d!1360819 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!787 (toList!4027 lm!1477) lt!1653320) lt!1653991)))

(declare-fun b!4463568 () Bool)

(assert (=> b!4463568 (= e!2779401 (containsKey!1428 (toList!4027 lm!1477) lt!1653320))))

(assert (= (and d!1360819 res!1851410) b!4463568))

(assert (=> d!1360819 m!5165767))

(assert (=> d!1360819 m!5165767))

(assert (=> d!1360819 m!5165773))

(declare-fun m!5167045 () Bool)

(assert (=> d!1360819 m!5167045))

(assert (=> d!1360819 m!5165779))

(assert (=> b!4463568 m!5165763))

(assert (=> b!4462720 d!1360819))

(declare-fun d!1360821 () Bool)

(declare-fun isEmpty!28461 (Option!10898) Bool)

(assert (=> d!1360821 (= (isDefined!8184 (getValueByKey!884 (toList!4027 lm!1477) lt!1653320)) (not (isEmpty!28461 (getValueByKey!884 (toList!4027 lm!1477) lt!1653320))))))

(declare-fun bs!792063 () Bool)

(assert (= bs!792063 d!1360821))

(assert (=> bs!792063 m!5165767))

(declare-fun m!5167047 () Bool)

(assert (=> bs!792063 m!5167047))

(assert (=> b!4462720 d!1360821))

(declare-fun d!1360823 () Bool)

(declare-fun c!759586 () Bool)

(assert (=> d!1360823 (= c!759586 (and ((_ is Cons!50243) (toList!4027 lm!1477)) (= (_1!28532 (h!55992 (toList!4027 lm!1477))) lt!1653320)))))

(declare-fun e!2779402 () Option!10898)

(assert (=> d!1360823 (= (getValueByKey!884 (toList!4027 lm!1477) lt!1653320) e!2779402)))

(declare-fun b!4463571 () Bool)

(declare-fun e!2779403 () Option!10898)

(assert (=> b!4463571 (= e!2779403 (getValueByKey!884 (t!357317 (toList!4027 lm!1477)) lt!1653320))))

(declare-fun b!4463569 () Bool)

(assert (=> b!4463569 (= e!2779402 (Some!10897 (_2!28532 (h!55992 (toList!4027 lm!1477)))))))

(declare-fun b!4463570 () Bool)

(assert (=> b!4463570 (= e!2779402 e!2779403)))

(declare-fun c!759587 () Bool)

(assert (=> b!4463570 (= c!759587 (and ((_ is Cons!50243) (toList!4027 lm!1477)) (not (= (_1!28532 (h!55992 (toList!4027 lm!1477))) lt!1653320))))))

(declare-fun b!4463572 () Bool)

(assert (=> b!4463572 (= e!2779403 None!10897)))

(assert (= (and d!1360823 c!759586) b!4463569))

(assert (= (and d!1360823 (not c!759586)) b!4463570))

(assert (= (and b!4463570 c!759587) b!4463571))

(assert (= (and b!4463570 (not c!759587)) b!4463572))

(declare-fun m!5167051 () Bool)

(assert (=> b!4463571 m!5167051))

(assert (=> b!4462720 d!1360823))

(declare-fun d!1360825 () Bool)

(assert (=> d!1360825 (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))

(declare-fun lt!1653998 () Unit!86927)

(declare-fun choose!28447 (List!50366 K!11665) Unit!86927)

(assert (=> d!1360825 (= lt!1653998 (choose!28447 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))

(assert (=> d!1360825 (invariantList!913 (toList!4028 (extractMap!1066 lt!1653326)))))

(assert (=> d!1360825 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!788 (toList!4028 (extractMap!1066 lt!1653326)) key!3287) lt!1653998)))

(declare-fun bs!792067 () Bool)

(assert (= bs!792067 d!1360825))

(assert (=> bs!792067 m!5166023))

(assert (=> bs!792067 m!5166023))

(assert (=> bs!792067 m!5166025))

(declare-fun m!5167089 () Bool)

(assert (=> bs!792067 m!5167089))

(assert (=> bs!792067 m!5166373))

(assert (=> b!4462902 d!1360825))

(assert (=> b!4462902 d!1360715))

(assert (=> b!4462902 d!1360717))

(declare-fun d!1360837 () Bool)

(assert (=> d!1360837 (contains!12773 (getKeysList!361 (toList!4028 (extractMap!1066 lt!1653326))) key!3287)))

(declare-fun lt!1654001 () Unit!86927)

(declare-fun choose!28448 (List!50366 K!11665) Unit!86927)

(assert (=> d!1360837 (= lt!1654001 (choose!28448 (toList!4028 (extractMap!1066 lt!1653326)) key!3287))))

(assert (=> d!1360837 (invariantList!913 (toList!4028 (extractMap!1066 lt!1653326)))))

(assert (=> d!1360837 (= (lemmaInListThenGetKeysListContains!357 (toList!4028 (extractMap!1066 lt!1653326)) key!3287) lt!1654001)))

(declare-fun bs!792068 () Bool)

(assert (= bs!792068 d!1360837))

(assert (=> bs!792068 m!5166041))

(assert (=> bs!792068 m!5166041))

(declare-fun m!5167091 () Bool)

(assert (=> bs!792068 m!5167091))

(declare-fun m!5167093 () Bool)

(assert (=> bs!792068 m!5167093))

(assert (=> bs!792068 m!5166373))

(assert (=> b!4462902 d!1360837))

(declare-fun b!4463575 () Bool)

(declare-fun e!2779406 () Unit!86927)

(declare-fun e!2779411 () Unit!86927)

(assert (=> b!4463575 (= e!2779406 e!2779411)))

(declare-fun c!759589 () Bool)

(declare-fun call!310743 () Bool)

(assert (=> b!4463575 (= c!759589 call!310743)))

(declare-fun b!4463576 () Bool)

(declare-fun e!2779408 () List!50369)

(assert (=> b!4463576 (= e!2779408 (keys!17334 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))))))

(declare-fun b!4463577 () Bool)

(declare-fun lt!1654002 () Unit!86927)

(assert (=> b!4463577 (= e!2779406 lt!1654002)))

(declare-fun lt!1654006 () Unit!86927)

(assert (=> b!4463577 (= lt!1654006 (lemmaContainsKeyImpliesGetValueByKeyDefined!788 (toList!4028 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))) key!3287))))

(assert (=> b!4463577 (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))) key!3287))))

(declare-fun lt!1654005 () Unit!86927)

(assert (=> b!4463577 (= lt!1654005 lt!1654006)))

(assert (=> b!4463577 (= lt!1654002 (lemmaInListThenGetKeysListContains!357 (toList!4028 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))) key!3287))))

(assert (=> b!4463577 call!310743))

(declare-fun d!1360839 () Bool)

(declare-fun e!2779407 () Bool)

(assert (=> d!1360839 e!2779407))

(declare-fun res!1851413 () Bool)

(assert (=> d!1360839 (=> res!1851413 e!2779407)))

(declare-fun e!2779409 () Bool)

(assert (=> d!1360839 (= res!1851413 e!2779409)))

(declare-fun res!1851415 () Bool)

(assert (=> d!1360839 (=> (not res!1851415) (not e!2779409))))

(declare-fun lt!1654009 () Bool)

(assert (=> d!1360839 (= res!1851415 (not lt!1654009))))

(declare-fun lt!1654008 () Bool)

(assert (=> d!1360839 (= lt!1654009 lt!1654008)))

(declare-fun lt!1654003 () Unit!86927)

(assert (=> d!1360839 (= lt!1654003 e!2779406)))

(declare-fun c!759588 () Bool)

(assert (=> d!1360839 (= c!759588 lt!1654008)))

(assert (=> d!1360839 (= lt!1654008 (containsKey!1429 (toList!4028 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))) key!3287))))

(assert (=> d!1360839 (= (contains!12771 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326))) key!3287) lt!1654009)))

(declare-fun b!4463578 () Bool)

(assert (=> b!4463578 false))

(declare-fun lt!1654007 () Unit!86927)

(declare-fun lt!1654004 () Unit!86927)

(assert (=> b!4463578 (= lt!1654007 lt!1654004)))

(assert (=> b!4463578 (containsKey!1429 (toList!4028 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))) key!3287)))

(assert (=> b!4463578 (= lt!1654004 (lemmaInGetKeysListThenContainsKey!360 (toList!4028 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))) key!3287))))

(declare-fun Unit!87046 () Unit!86927)

(assert (=> b!4463578 (= e!2779411 Unit!87046)))

(declare-fun b!4463579 () Bool)

(declare-fun Unit!87047 () Unit!86927)

(assert (=> b!4463579 (= e!2779411 Unit!87047)))

(declare-fun b!4463580 () Bool)

(declare-fun e!2779410 () Bool)

(assert (=> b!4463580 (= e!2779410 (contains!12773 (keys!17334 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))) key!3287))))

(declare-fun b!4463581 () Bool)

(assert (=> b!4463581 (= e!2779409 (not (contains!12773 (keys!17334 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))) key!3287)))))

(declare-fun bm!310738 () Bool)

(assert (=> bm!310738 (= call!310743 (contains!12773 e!2779408 key!3287))))

(declare-fun c!759590 () Bool)

(assert (=> bm!310738 (= c!759590 c!759588)))

(declare-fun b!4463582 () Bool)

(assert (=> b!4463582 (= e!2779408 (getKeysList!361 (toList!4028 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326))))))))

(declare-fun b!4463583 () Bool)

(assert (=> b!4463583 (= e!2779407 e!2779410)))

(declare-fun res!1851414 () Bool)

(assert (=> b!4463583 (=> (not res!1851414) (not e!2779410))))

(assert (=> b!4463583 (= res!1851414 (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326)))) key!3287)))))

(assert (= (and d!1360839 c!759588) b!4463577))

(assert (= (and d!1360839 (not c!759588)) b!4463575))

(assert (= (and b!4463575 c!759589) b!4463578))

(assert (= (and b!4463575 (not c!759589)) b!4463579))

(assert (= (or b!4463577 b!4463575) bm!310738))

(assert (= (and bm!310738 c!759590) b!4463582))

(assert (= (and bm!310738 (not c!759590)) b!4463576))

(assert (= (and d!1360839 res!1851415) b!4463581))

(assert (= (and d!1360839 (not res!1851413)) b!4463583))

(assert (= (and b!4463583 res!1851414) b!4463580))

(declare-fun m!5167095 () Bool)

(assert (=> b!4463583 m!5167095))

(assert (=> b!4463583 m!5167095))

(declare-fun m!5167097 () Bool)

(assert (=> b!4463583 m!5167097))

(declare-fun m!5167099 () Bool)

(assert (=> b!4463578 m!5167099))

(declare-fun m!5167101 () Bool)

(assert (=> b!4463578 m!5167101))

(assert (=> d!1360839 m!5167099))

(assert (=> b!4463581 m!5166059))

(declare-fun m!5167103 () Bool)

(assert (=> b!4463581 m!5167103))

(assert (=> b!4463581 m!5167103))

(declare-fun m!5167105 () Bool)

(assert (=> b!4463581 m!5167105))

(assert (=> b!4463580 m!5166059))

(assert (=> b!4463580 m!5167103))

(assert (=> b!4463580 m!5167103))

(assert (=> b!4463580 m!5167105))

(declare-fun m!5167107 () Bool)

(assert (=> b!4463577 m!5167107))

(assert (=> b!4463577 m!5167095))

(assert (=> b!4463577 m!5167095))

(assert (=> b!4463577 m!5167097))

(declare-fun m!5167109 () Bool)

(assert (=> b!4463577 m!5167109))

(declare-fun m!5167111 () Bool)

(assert (=> bm!310738 m!5167111))

(declare-fun m!5167113 () Bool)

(assert (=> b!4463582 m!5167113))

(assert (=> b!4463576 m!5166059))

(assert (=> b!4463576 m!5167103))

(assert (=> d!1360535 d!1360839))

(declare-fun bs!792069 () Bool)

(declare-fun d!1360841 () Bool)

(assert (= bs!792069 (and d!1360841 d!1360535)))

(declare-fun lambda!162249 () Int)

(assert (=> bs!792069 (= lambda!162249 lambda!162111)))

(declare-fun bs!792070 () Bool)

(assert (= bs!792070 (and d!1360841 start!437692)))

(assert (=> bs!792070 (= lambda!162249 lambda!162073)))

(declare-fun bs!792071 () Bool)

(assert (= bs!792071 (and d!1360841 d!1360709)))

(assert (=> bs!792071 (= lambda!162249 lambda!162226)))

(declare-fun bs!792072 () Bool)

(assert (= bs!792072 (and d!1360841 d!1360649)))

(assert (=> bs!792072 (= lambda!162249 lambda!162204)))

(declare-fun bs!792073 () Bool)

(assert (= bs!792073 (and d!1360841 d!1360521)))

(assert (=> bs!792073 (= lambda!162249 lambda!162108)))

(declare-fun bs!792074 () Bool)

(assert (= bs!792074 (and d!1360841 d!1360499)))

(assert (=> bs!792074 (= lambda!162249 lambda!162106)))

(declare-fun bs!792075 () Bool)

(assert (= bs!792075 (and d!1360841 d!1360615)))

(assert (=> bs!792075 (= lambda!162249 lambda!162191)))

(declare-fun bs!792076 () Bool)

(assert (= bs!792076 (and d!1360841 d!1360537)))

(assert (=> bs!792076 (= lambda!162249 lambda!162112)))

(declare-fun bs!792077 () Bool)

(assert (= bs!792077 (and d!1360841 d!1360545)))

(assert (=> bs!792077 (= lambda!162249 lambda!162115)))

(declare-fun bs!792078 () Bool)

(assert (= bs!792078 (and d!1360841 d!1360445)))

(assert (=> bs!792078 (= lambda!162249 lambda!162079)))

(declare-fun bs!792079 () Bool)

(assert (= bs!792079 (and d!1360841 d!1360775)))

(assert (=> bs!792079 (= lambda!162249 lambda!162238)))

(declare-fun bs!792080 () Bool)

(assert (= bs!792080 (and d!1360841 d!1360807)))

(assert (=> bs!792080 (= lambda!162249 lambda!162244)))

(declare-fun bs!792081 () Bool)

(assert (= bs!792081 (and d!1360841 d!1360477)))

(assert (=> bs!792081 (not (= lambda!162249 lambda!162095))))

(declare-fun bs!792082 () Bool)

(assert (= bs!792082 (and d!1360841 d!1360519)))

(assert (=> bs!792082 (= lambda!162249 lambda!162107)))

(declare-fun lt!1654010 () ListMap!3289)

(assert (=> d!1360841 (invariantList!913 (toList!4028 lt!1654010))))

(declare-fun e!2779412 () ListMap!3289)

(assert (=> d!1360841 (= lt!1654010 e!2779412)))

(declare-fun c!759591 () Bool)

(assert (=> d!1360841 (= c!759591 ((_ is Cons!50243) (toList!4027 (ListLongMap!2660 lt!1653326))))))

(assert (=> d!1360841 (forall!9953 (toList!4027 (ListLongMap!2660 lt!1653326)) lambda!162249)))

(assert (=> d!1360841 (= (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326))) lt!1654010)))

(declare-fun b!4463584 () Bool)

(assert (=> b!4463584 (= e!2779412 (addToMapMapFromBucket!575 (_2!28532 (h!55992 (toList!4027 (ListLongMap!2660 lt!1653326)))) (extractMap!1066 (t!357317 (toList!4027 (ListLongMap!2660 lt!1653326))))))))

(declare-fun b!4463585 () Bool)

(assert (=> b!4463585 (= e!2779412 (ListMap!3290 Nil!50242))))

(assert (= (and d!1360841 c!759591) b!4463584))

(assert (= (and d!1360841 (not c!759591)) b!4463585))

(declare-fun m!5167115 () Bool)

(assert (=> d!1360841 m!5167115))

(declare-fun m!5167117 () Bool)

(assert (=> d!1360841 m!5167117))

(declare-fun m!5167119 () Bool)

(assert (=> b!4463584 m!5167119))

(assert (=> b!4463584 m!5167119))

(declare-fun m!5167121 () Bool)

(assert (=> b!4463584 m!5167121))

(assert (=> d!1360535 d!1360841))

(declare-fun d!1360843 () Bool)

(assert (=> d!1360843 (contains!12771 (extractMap!1066 (toList!4027 (ListLongMap!2660 lt!1653326))) key!3287)))

(assert (=> d!1360843 true))

(declare-fun _$34!529 () Unit!86927)

(assert (=> d!1360843 (= (choose!28435 (ListLongMap!2660 lt!1653326) key!3287 hashF!1107) _$34!529)))

(declare-fun bs!792098 () Bool)

(assert (= bs!792098 d!1360843))

(assert (=> bs!792098 m!5166059))

(assert (=> bs!792098 m!5166059))

(assert (=> bs!792098 m!5166061))

(assert (=> d!1360535 d!1360843))

(declare-fun d!1360851 () Bool)

(declare-fun res!1851419 () Bool)

(declare-fun e!2779420 () Bool)

(assert (=> d!1360851 (=> res!1851419 e!2779420)))

(assert (=> d!1360851 (= res!1851419 ((_ is Nil!50243) (toList!4027 (ListLongMap!2660 lt!1653326))))))

(assert (=> d!1360851 (= (forall!9953 (toList!4027 (ListLongMap!2660 lt!1653326)) lambda!162111) e!2779420)))

(declare-fun b!4463597 () Bool)

(declare-fun e!2779421 () Bool)

(assert (=> b!4463597 (= e!2779420 e!2779421)))

(declare-fun res!1851420 () Bool)

(assert (=> b!4463597 (=> (not res!1851420) (not e!2779421))))

(assert (=> b!4463597 (= res!1851420 (dynLambda!20990 lambda!162111 (h!55992 (toList!4027 (ListLongMap!2660 lt!1653326)))))))

(declare-fun b!4463598 () Bool)

(assert (=> b!4463598 (= e!2779421 (forall!9953 (t!357317 (toList!4027 (ListLongMap!2660 lt!1653326))) lambda!162111))))

(assert (= (and d!1360851 (not res!1851419)) b!4463597))

(assert (= (and b!4463597 res!1851420) b!4463598))

(declare-fun b_lambda!147845 () Bool)

(assert (=> (not b_lambda!147845) (not b!4463597)))

(declare-fun m!5167151 () Bool)

(assert (=> b!4463597 m!5167151))

(declare-fun m!5167153 () Bool)

(assert (=> b!4463598 m!5167153))

(assert (=> d!1360535 d!1360851))

(declare-fun d!1360853 () Bool)

(declare-fun lt!1654020 () Bool)

(assert (=> d!1360853 (= lt!1654020 (select (content!8059 (t!357317 (toList!4027 lm!1477))) lt!1653318))))

(declare-fun e!2779423 () Bool)

(assert (=> d!1360853 (= lt!1654020 e!2779423)))

(declare-fun res!1851421 () Bool)

(assert (=> d!1360853 (=> (not res!1851421) (not e!2779423))))

(assert (=> d!1360853 (= res!1851421 ((_ is Cons!50243) (t!357317 (toList!4027 lm!1477))))))

(assert (=> d!1360853 (= (contains!12769 (t!357317 (toList!4027 lm!1477)) lt!1653318) lt!1654020)))

(declare-fun b!4463599 () Bool)

(declare-fun e!2779422 () Bool)

(assert (=> b!4463599 (= e!2779423 e!2779422)))

(declare-fun res!1851422 () Bool)

(assert (=> b!4463599 (=> res!1851422 e!2779422)))

(assert (=> b!4463599 (= res!1851422 (= (h!55992 (t!357317 (toList!4027 lm!1477))) lt!1653318))))

(declare-fun b!4463600 () Bool)

(assert (=> b!4463600 (= e!2779422 (contains!12769 (t!357317 (t!357317 (toList!4027 lm!1477))) lt!1653318))))

(assert (= (and d!1360853 res!1851421) b!4463599))

(assert (= (and b!4463599 (not res!1851422)) b!4463600))

(assert (=> d!1360853 m!5166337))

(declare-fun m!5167157 () Bool)

(assert (=> d!1360853 m!5167157))

(declare-fun m!5167159 () Bool)

(assert (=> b!4463600 m!5167159))

(assert (=> b!4462773 d!1360853))

(assert (=> b!4462728 d!1360659))

(declare-fun d!1360857 () Bool)

(declare-fun res!1851427 () Bool)

(declare-fun e!2779429 () Bool)

(assert (=> d!1360857 (=> res!1851427 e!2779429)))

(assert (=> d!1360857 (= res!1851427 ((_ is Nil!50242) newBucket!178))))

(assert (=> d!1360857 (= (forall!9955 newBucket!178 lambda!162076) e!2779429)))

(declare-fun b!4463607 () Bool)

(declare-fun e!2779430 () Bool)

(assert (=> b!4463607 (= e!2779429 e!2779430)))

(declare-fun res!1851428 () Bool)

(assert (=> b!4463607 (=> (not res!1851428) (not e!2779430))))

(declare-fun dynLambda!20992 (Int tuple2!50474) Bool)

(assert (=> b!4463607 (= res!1851428 (dynLambda!20992 lambda!162076 (h!55991 newBucket!178)))))

(declare-fun b!4463608 () Bool)

(assert (=> b!4463608 (= e!2779430 (forall!9955 (t!357316 newBucket!178) lambda!162076))))

(assert (= (and d!1360857 (not res!1851427)) b!4463607))

(assert (= (and b!4463607 res!1851428) b!4463608))

(declare-fun b_lambda!147847 () Bool)

(assert (=> (not b_lambda!147847) (not b!4463607)))

(declare-fun m!5167169 () Bool)

(assert (=> b!4463607 m!5167169))

(declare-fun m!5167171 () Bool)

(assert (=> b!4463608 m!5167171))

(assert (=> d!1360443 d!1360857))

(assert (=> b!4462722 d!1360821))

(assert (=> b!4462722 d!1360823))

(declare-fun d!1360861 () Bool)

(declare-fun res!1851429 () Bool)

(declare-fun e!2779431 () Bool)

(assert (=> d!1360861 (=> res!1851429 e!2779431)))

(assert (=> d!1360861 (= res!1851429 (and ((_ is Cons!50242) (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477))))) (= (_1!28531 (h!55991 (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477)))))) key!3287)))))

(assert (=> d!1360861 (= (containsKey!1426 (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477)))) key!3287) e!2779431)))

(declare-fun b!4463609 () Bool)

(declare-fun e!2779432 () Bool)

(assert (=> b!4463609 (= e!2779431 e!2779432)))

(declare-fun res!1851430 () Bool)

(assert (=> b!4463609 (=> (not res!1851430) (not e!2779432))))

(assert (=> b!4463609 (= res!1851430 ((_ is Cons!50242) (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477))))))))

(declare-fun b!4463610 () Bool)

(assert (=> b!4463610 (= e!2779432 (containsKey!1426 (t!357316 (t!357316 (_2!28532 (h!55992 (toList!4027 lm!1477))))) key!3287))))

(assert (= (and d!1360861 (not res!1851429)) b!4463609))

(assert (= (and b!4463609 res!1851430) b!4463610))

(declare-fun m!5167173 () Bool)

(assert (=> b!4463610 m!5167173))

(assert (=> b!4462928 d!1360861))

(declare-fun d!1360863 () Bool)

(declare-fun c!759599 () Bool)

(assert (=> d!1360863 (= c!759599 ((_ is Nil!50245) (keys!17334 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(declare-fun e!2779435 () (InoxSet K!11665))

(assert (=> d!1360863 (= (content!8061 (keys!17334 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) e!2779435)))

(declare-fun b!4463615 () Bool)

(assert (=> b!4463615 (= e!2779435 ((as const (Array K!11665 Bool)) false))))

(declare-fun b!4463616 () Bool)

(assert (=> b!4463616 (= e!2779435 ((_ map or) (store ((as const (Array K!11665 Bool)) false) (h!55996 (keys!17334 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) true) (content!8061 (t!357319 (keys!17334 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))))

(assert (= (and d!1360863 c!759599) b!4463615))

(assert (= (and d!1360863 (not c!759599)) b!4463616))

(declare-fun m!5167175 () Bool)

(assert (=> b!4463616 m!5167175))

(declare-fun m!5167177 () Bool)

(assert (=> b!4463616 m!5167177))

(assert (=> b!4462899 d!1360863))

(declare-fun bs!792113 () Bool)

(declare-fun b!4463618 () Bool)

(assert (= bs!792113 (and b!4463618 b!4463170)))

(declare-fun lambda!162252 () Int)

(assert (=> bs!792113 (= (= (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162252 lambda!162196))))

(declare-fun bs!792114 () Bool)

(assert (= bs!792114 (and b!4463618 b!4463205)))

(assert (=> bs!792114 (= (= (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (= lambda!162252 lambda!162198))))

(assert (=> b!4463618 true))

(declare-fun bs!792115 () Bool)

(declare-fun b!4463619 () Bool)

(assert (= bs!792115 (and b!4463619 b!4463171)))

(declare-fun lambda!162253 () Int)

(assert (=> bs!792115 (= lambda!162253 lambda!162197)))

(declare-fun bs!792116 () Bool)

(assert (= bs!792116 (and b!4463619 b!4463206)))

(assert (=> bs!792116 (= lambda!162253 lambda!162199)))

(declare-fun d!1360865 () Bool)

(declare-fun e!2779436 () Bool)

(assert (=> d!1360865 e!2779436))

(declare-fun res!1851432 () Bool)

(assert (=> d!1360865 (=> (not res!1851432) (not e!2779436))))

(declare-fun lt!1654022 () List!50369)

(assert (=> d!1360865 (= res!1851432 (noDuplicate!690 lt!1654022))))

(assert (=> d!1360865 (= lt!1654022 (getKeysList!361 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(assert (=> d!1360865 (= (keys!17334 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lt!1654022)))

(declare-fun b!4463617 () Bool)

(declare-fun res!1851431 () Bool)

(assert (=> b!4463617 (=> (not res!1851431) (not e!2779436))))

(assert (=> b!4463617 (= res!1851431 (= (length!236 lt!1654022) (length!237 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))))))))

(declare-fun res!1851433 () Bool)

(assert (=> b!4463618 (=> (not res!1851433) (not e!2779436))))

(assert (=> b!4463618 (= res!1851433 (forall!9957 lt!1654022 lambda!162252))))

(assert (=> b!4463619 (= e!2779436 (= (content!8061 lt!1654022) (content!8061 (map!11006 (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) lambda!162253))))))

(assert (= (and d!1360865 res!1851432) b!4463617))

(assert (= (and b!4463617 res!1851431) b!4463618))

(assert (= (and b!4463618 res!1851433) b!4463619))

(declare-fun m!5167179 () Bool)

(assert (=> d!1360865 m!5167179))

(assert (=> d!1360865 m!5166663))

(declare-fun m!5167181 () Bool)

(assert (=> b!4463617 m!5167181))

(declare-fun m!5167183 () Bool)

(assert (=> b!4463617 m!5167183))

(declare-fun m!5167185 () Bool)

(assert (=> b!4463618 m!5167185))

(declare-fun m!5167187 () Bool)

(assert (=> b!4463619 m!5167187))

(declare-fun m!5167189 () Bool)

(assert (=> b!4463619 m!5167189))

(assert (=> b!4463619 m!5167189))

(declare-fun m!5167191 () Bool)

(assert (=> b!4463619 m!5167191))

(assert (=> b!4462899 d!1360865))

(declare-fun d!1360867 () Bool)

(declare-fun c!759600 () Bool)

(assert (=> d!1360867 (= c!759600 ((_ is Nil!50245) (keys!17334 lt!1653474)))))

(declare-fun e!2779437 () (InoxSet K!11665))

(assert (=> d!1360867 (= (content!8061 (keys!17334 lt!1653474)) e!2779437)))

(declare-fun b!4463620 () Bool)

(assert (=> b!4463620 (= e!2779437 ((as const (Array K!11665 Bool)) false))))

(declare-fun b!4463621 () Bool)

(assert (=> b!4463621 (= e!2779437 ((_ map or) (store ((as const (Array K!11665 Bool)) false) (h!55996 (keys!17334 lt!1653474)) true) (content!8061 (t!357319 (keys!17334 lt!1653474)))))))

(assert (= (and d!1360867 c!759600) b!4463620))

(assert (= (and d!1360867 (not c!759600)) b!4463621))

(declare-fun m!5167193 () Bool)

(assert (=> b!4463621 m!5167193))

(declare-fun m!5167195 () Bool)

(assert (=> b!4463621 m!5167195))

(assert (=> b!4462899 d!1360867))

(declare-fun bs!792117 () Bool)

(declare-fun b!4463623 () Bool)

(assert (= bs!792117 (and b!4463623 b!4463170)))

(declare-fun lambda!162254 () Int)

(assert (=> bs!792117 (= (= (toList!4028 lt!1653474) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162254 lambda!162196))))

(declare-fun bs!792118 () Bool)

(assert (= bs!792118 (and b!4463623 b!4463205)))

(assert (=> bs!792118 (= (= (toList!4028 lt!1653474) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (= lambda!162254 lambda!162198))))

(declare-fun bs!792119 () Bool)

(assert (= bs!792119 (and b!4463623 b!4463618)))

(assert (=> bs!792119 (= (= (toList!4028 lt!1653474) (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162254 lambda!162252))))

(assert (=> b!4463623 true))

(declare-fun bs!792120 () Bool)

(declare-fun b!4463624 () Bool)

(assert (= bs!792120 (and b!4463624 b!4463171)))

(declare-fun lambda!162255 () Int)

(assert (=> bs!792120 (= lambda!162255 lambda!162197)))

(declare-fun bs!792121 () Bool)

(assert (= bs!792121 (and b!4463624 b!4463206)))

(assert (=> bs!792121 (= lambda!162255 lambda!162199)))

(declare-fun bs!792122 () Bool)

(assert (= bs!792122 (and b!4463624 b!4463619)))

(assert (=> bs!792122 (= lambda!162255 lambda!162253)))

(declare-fun d!1360869 () Bool)

(declare-fun e!2779438 () Bool)

(assert (=> d!1360869 e!2779438))

(declare-fun res!1851435 () Bool)

(assert (=> d!1360869 (=> (not res!1851435) (not e!2779438))))

(declare-fun lt!1654023 () List!50369)

(assert (=> d!1360869 (= res!1851435 (noDuplicate!690 lt!1654023))))

(assert (=> d!1360869 (= lt!1654023 (getKeysList!361 (toList!4028 lt!1653474)))))

(assert (=> d!1360869 (= (keys!17334 lt!1653474) lt!1654023)))

(declare-fun b!4463622 () Bool)

(declare-fun res!1851434 () Bool)

(assert (=> b!4463622 (=> (not res!1851434) (not e!2779438))))

(assert (=> b!4463622 (= res!1851434 (= (length!236 lt!1654023) (length!237 (toList!4028 lt!1653474))))))

(declare-fun res!1851436 () Bool)

(assert (=> b!4463623 (=> (not res!1851436) (not e!2779438))))

(assert (=> b!4463623 (= res!1851436 (forall!9957 lt!1654023 lambda!162254))))

(assert (=> b!4463624 (= e!2779438 (= (content!8061 lt!1654023) (content!8061 (map!11006 (toList!4028 lt!1653474) lambda!162255))))))

(assert (= (and d!1360869 res!1851435) b!4463622))

(assert (= (and b!4463622 res!1851434) b!4463623))

(assert (= (and b!4463623 res!1851436) b!4463624))

(declare-fun m!5167197 () Bool)

(assert (=> d!1360869 m!5167197))

(assert (=> d!1360869 m!5166525))

(declare-fun m!5167199 () Bool)

(assert (=> b!4463622 m!5167199))

(declare-fun m!5167201 () Bool)

(assert (=> b!4463622 m!5167201))

(declare-fun m!5167203 () Bool)

(assert (=> b!4463623 m!5167203))

(declare-fun m!5167205 () Bool)

(assert (=> b!4463624 m!5167205))

(declare-fun m!5167207 () Bool)

(assert (=> b!4463624 m!5167207))

(assert (=> b!4463624 m!5167207))

(declare-fun m!5167209 () Bool)

(assert (=> b!4463624 m!5167209))

(assert (=> b!4462899 d!1360869))

(declare-fun d!1360871 () Bool)

(assert (=> d!1360871 (isDefined!8185 (getValueByKey!885 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(declare-fun lt!1654024 () Unit!86927)

(assert (=> d!1360871 (= lt!1654024 (choose!28447 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(assert (=> d!1360871 (invariantList!913 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))))

(assert (=> d!1360871 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!788 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287) lt!1654024)))

(declare-fun bs!792123 () Bool)

(assert (= bs!792123 d!1360871))

(assert (=> bs!792123 m!5165905))

(assert (=> bs!792123 m!5165905))

(assert (=> bs!792123 m!5165907))

(declare-fun m!5167211 () Bool)

(assert (=> bs!792123 m!5167211))

(assert (=> bs!792123 m!5166469))

(assert (=> b!4462828 d!1360871))

(assert (=> b!4462828 d!1360733))

(assert (=> b!4462828 d!1360737))

(declare-fun d!1360873 () Bool)

(assert (=> d!1360873 (contains!12773 (getKeysList!361 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) key!3287)))

(declare-fun lt!1654025 () Unit!86927)

(assert (=> d!1360873 (= lt!1654025 (choose!28448 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287))))

(assert (=> d!1360873 (invariantList!913 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))))

(assert (=> d!1360873 (= (lemmaInListThenGetKeysListContains!357 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) key!3287) lt!1654025)))

(declare-fun bs!792124 () Bool)

(assert (= bs!792124 d!1360873))

(assert (=> bs!792124 m!5165923))

(assert (=> bs!792124 m!5165923))

(declare-fun m!5167213 () Bool)

(assert (=> bs!792124 m!5167213))

(declare-fun m!5167215 () Bool)

(assert (=> bs!792124 m!5167215))

(assert (=> bs!792124 m!5166469))

(assert (=> b!4462828 d!1360873))

(assert (=> b!4462906 d!1360645))

(assert (=> b!4462906 d!1360633))

(declare-fun d!1360875 () Bool)

(declare-fun res!1851437 () Bool)

(declare-fun e!2779439 () Bool)

(assert (=> d!1360875 (=> res!1851437 e!2779439)))

(assert (=> d!1360875 (= res!1851437 ((_ is Nil!50243) (toList!4027 lm!1477)))))

(assert (=> d!1360875 (= (forall!9953 (toList!4027 lm!1477) lambda!162095) e!2779439)))

(declare-fun b!4463625 () Bool)

(declare-fun e!2779440 () Bool)

(assert (=> b!4463625 (= e!2779439 e!2779440)))

(declare-fun res!1851438 () Bool)

(assert (=> b!4463625 (=> (not res!1851438) (not e!2779440))))

(assert (=> b!4463625 (= res!1851438 (dynLambda!20990 lambda!162095 (h!55992 (toList!4027 lm!1477))))))

(declare-fun b!4463626 () Bool)

(assert (=> b!4463626 (= e!2779440 (forall!9953 (t!357317 (toList!4027 lm!1477)) lambda!162095))))

(assert (= (and d!1360875 (not res!1851437)) b!4463625))

(assert (= (and b!4463625 res!1851438) b!4463626))

(declare-fun b_lambda!147849 () Bool)

(assert (=> (not b_lambda!147849) (not b!4463625)))

(declare-fun m!5167217 () Bool)

(assert (=> b!4463625 m!5167217))

(declare-fun m!5167219 () Bool)

(assert (=> b!4463626 m!5167219))

(assert (=> d!1360477 d!1360875))

(declare-fun d!1360877 () Bool)

(declare-fun res!1851439 () Bool)

(declare-fun e!2779441 () Bool)

(assert (=> d!1360877 (=> res!1851439 e!2779441)))

(assert (=> d!1360877 (= res!1851439 (not ((_ is Cons!50242) (t!357316 newBucket!178))))))

(assert (=> d!1360877 (= (noDuplicateKeys!1010 (t!357316 newBucket!178)) e!2779441)))

(declare-fun b!4463627 () Bool)

(declare-fun e!2779442 () Bool)

(assert (=> b!4463627 (= e!2779441 e!2779442)))

(declare-fun res!1851440 () Bool)

(assert (=> b!4463627 (=> (not res!1851440) (not e!2779442))))

(assert (=> b!4463627 (= res!1851440 (not (containsKey!1426 (t!357316 (t!357316 newBucket!178)) (_1!28531 (h!55991 (t!357316 newBucket!178))))))))

(declare-fun b!4463628 () Bool)

(assert (=> b!4463628 (= e!2779442 (noDuplicateKeys!1010 (t!357316 (t!357316 newBucket!178))))))

(assert (= (and d!1360877 (not res!1851439)) b!4463627))

(assert (= (and b!4463627 res!1851440) b!4463628))

(declare-fun m!5167221 () Bool)

(assert (=> b!4463627 m!5167221))

(declare-fun m!5167223 () Bool)

(assert (=> b!4463628 m!5167223))

(assert (=> b!4462934 d!1360877))

(assert (=> b!4462782 d!1360469))

(declare-fun lt!1654026 () Bool)

(declare-fun d!1360879 () Bool)

(assert (=> d!1360879 (= lt!1654026 (select (content!8059 (toList!4027 lm!1477)) (tuple2!50477 hash!344 lt!1653321)))))

(declare-fun e!2779444 () Bool)

(assert (=> d!1360879 (= lt!1654026 e!2779444)))

(declare-fun res!1851441 () Bool)

(assert (=> d!1360879 (=> (not res!1851441) (not e!2779444))))

(assert (=> d!1360879 (= res!1851441 ((_ is Cons!50243) (toList!4027 lm!1477)))))

(assert (=> d!1360879 (= (contains!12769 (toList!4027 lm!1477) (tuple2!50477 hash!344 lt!1653321)) lt!1654026)))

(declare-fun b!4463629 () Bool)

(declare-fun e!2779443 () Bool)

(assert (=> b!4463629 (= e!2779444 e!2779443)))

(declare-fun res!1851442 () Bool)

(assert (=> b!4463629 (=> res!1851442 e!2779443)))

(assert (=> b!4463629 (= res!1851442 (= (h!55992 (toList!4027 lm!1477)) (tuple2!50477 hash!344 lt!1653321)))))

(declare-fun b!4463630 () Bool)

(assert (=> b!4463630 (= e!2779443 (contains!12769 (t!357317 (toList!4027 lm!1477)) (tuple2!50477 hash!344 lt!1653321)))))

(assert (= (and d!1360879 res!1851441) b!4463629))

(assert (= (and b!4463629 (not res!1851442)) b!4463630))

(assert (=> d!1360879 m!5165807))

(declare-fun m!5167225 () Bool)

(assert (=> d!1360879 m!5167225))

(declare-fun m!5167227 () Bool)

(assert (=> b!4463630 m!5167227))

(assert (=> d!1360465 d!1360879))

(declare-fun d!1360881 () Bool)

(assert (=> d!1360881 (contains!12769 (toList!4027 lm!1477) (tuple2!50477 hash!344 lt!1653321))))

(assert (=> d!1360881 true))

(declare-fun _$14!960 () Unit!86927)

(assert (=> d!1360881 (= (choose!28431 (toList!4027 lm!1477) hash!344 lt!1653321) _$14!960)))

(declare-fun bs!792126 () Bool)

(assert (= bs!792126 d!1360881))

(assert (=> bs!792126 m!5165775))

(assert (=> d!1360465 d!1360881))

(assert (=> d!1360465 d!1360725))

(declare-fun bs!792137 () Bool)

(declare-fun b!4463660 () Bool)

(assert (= bs!792137 (and b!4463660 b!4463170)))

(declare-fun lambda!162264 () Int)

(assert (=> bs!792137 (= (= (t!357316 (toList!4028 (extractMap!1066 lt!1653326))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162264 lambda!162196))))

(declare-fun bs!792138 () Bool)

(assert (= bs!792138 (and b!4463660 b!4463205)))

(assert (=> bs!792138 (= (= (t!357316 (toList!4028 (extractMap!1066 lt!1653326))) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (= lambda!162264 lambda!162198))))

(declare-fun bs!792139 () Bool)

(assert (= bs!792139 (and b!4463660 b!4463618)))

(assert (=> bs!792139 (= (= (t!357316 (toList!4028 (extractMap!1066 lt!1653326))) (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162264 lambda!162252))))

(declare-fun bs!792140 () Bool)

(assert (= bs!792140 (and b!4463660 b!4463623)))

(assert (=> bs!792140 (= (= (t!357316 (toList!4028 (extractMap!1066 lt!1653326))) (toList!4028 lt!1653474)) (= lambda!162264 lambda!162254))))

(assert (=> b!4463660 true))

(declare-fun bs!792141 () Bool)

(declare-fun b!4463655 () Bool)

(assert (= bs!792141 (and b!4463655 b!4463170)))

(declare-fun lambda!162265 () Int)

(assert (=> bs!792141 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162265 lambda!162196))))

(declare-fun bs!792142 () Bool)

(assert (= bs!792142 (and b!4463655 b!4463660)))

(assert (=> bs!792142 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (= lambda!162265 lambda!162264))))

(declare-fun bs!792143 () Bool)

(assert (= bs!792143 (and b!4463655 b!4463623)))

(assert (=> bs!792143 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (toList!4028 lt!1653474)) (= lambda!162265 lambda!162254))))

(declare-fun bs!792144 () Bool)

(assert (= bs!792144 (and b!4463655 b!4463205)))

(assert (=> bs!792144 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (= lambda!162265 lambda!162198))))

(declare-fun bs!792145 () Bool)

(assert (= bs!792145 (and b!4463655 b!4463618)))

(assert (=> bs!792145 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162265 lambda!162252))))

(assert (=> b!4463655 true))

(declare-fun bs!792146 () Bool)

(declare-fun b!4463656 () Bool)

(assert (= bs!792146 (and b!4463656 b!4463170)))

(declare-fun lambda!162266 () Int)

(assert (=> bs!792146 (= lambda!162266 lambda!162196)))

(declare-fun bs!792147 () Bool)

(assert (= bs!792147 (and b!4463656 b!4463660)))

(assert (=> bs!792147 (= (= (toList!4028 (extractMap!1066 lt!1653326)) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (= lambda!162266 lambda!162264))))

(declare-fun bs!792148 () Bool)

(assert (= bs!792148 (and b!4463656 b!4463205)))

(assert (=> bs!792148 (= (= (toList!4028 (extractMap!1066 lt!1653326)) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (= lambda!162266 lambda!162198))))

(declare-fun bs!792149 () Bool)

(assert (= bs!792149 (and b!4463656 b!4463618)))

(assert (=> bs!792149 (= (= (toList!4028 (extractMap!1066 lt!1653326)) (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162266 lambda!162252))))

(declare-fun bs!792150 () Bool)

(assert (= bs!792150 (and b!4463656 b!4463655)))

(assert (=> bs!792150 (= (= (toList!4028 (extractMap!1066 lt!1653326)) (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326))))) (= lambda!162266 lambda!162265))))

(declare-fun bs!792151 () Bool)

(assert (= bs!792151 (and b!4463656 b!4463623)))

(assert (=> bs!792151 (= (= (toList!4028 (extractMap!1066 lt!1653326)) (toList!4028 lt!1653474)) (= lambda!162266 lambda!162254))))

(assert (=> b!4463656 true))

(declare-fun bs!792152 () Bool)

(declare-fun b!4463654 () Bool)

(assert (= bs!792152 (and b!4463654 b!4463171)))

(declare-fun lambda!162267 () Int)

(assert (=> bs!792152 (= lambda!162267 lambda!162197)))

(declare-fun bs!792153 () Bool)

(assert (= bs!792153 (and b!4463654 b!4463206)))

(assert (=> bs!792153 (= lambda!162267 lambda!162199)))

(declare-fun bs!792154 () Bool)

(assert (= bs!792154 (and b!4463654 b!4463619)))

(assert (=> bs!792154 (= lambda!162267 lambda!162253)))

(declare-fun bs!792155 () Bool)

(assert (= bs!792155 (and b!4463654 b!4463624)))

(assert (=> bs!792155 (= lambda!162267 lambda!162255)))

(declare-fun e!2779460 () Bool)

(declare-fun lt!1654042 () List!50369)

(assert (=> b!4463654 (= e!2779460 (= (content!8061 lt!1654042) (content!8061 (map!11006 (toList!4028 (extractMap!1066 lt!1653326)) lambda!162267))))))

(declare-fun e!2779459 () List!50369)

(assert (=> b!4463655 (= e!2779459 (Cons!50245 (_1!28531 (h!55991 (toList!4028 (extractMap!1066 lt!1653326)))) (getKeysList!361 (t!357316 (toList!4028 (extractMap!1066 lt!1653326))))))))

(declare-fun c!759609 () Bool)

(assert (=> b!4463655 (= c!759609 (containsKey!1429 (t!357316 (toList!4028 (extractMap!1066 lt!1653326))) (_1!28531 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))))))))

(declare-fun lt!1654043 () Unit!86927)

(declare-fun e!2779461 () Unit!86927)

(assert (=> b!4463655 (= lt!1654043 e!2779461)))

(declare-fun c!759607 () Bool)

(assert (=> b!4463655 (= c!759607 (contains!12773 (getKeysList!361 (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (_1!28531 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))))))))

(declare-fun lt!1654046 () Unit!86927)

(declare-fun e!2779458 () Unit!86927)

(assert (=> b!4463655 (= lt!1654046 e!2779458)))

(declare-fun lt!1654047 () List!50369)

(assert (=> b!4463655 (= lt!1654047 (getKeysList!361 (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))))))

(declare-fun lt!1654044 () Unit!86927)

(declare-fun lemmaForallContainsAddHeadPreserves!112 (List!50366 List!50369 tuple2!50474) Unit!86927)

(assert (=> b!4463655 (= lt!1654044 (lemmaForallContainsAddHeadPreserves!112 (t!357316 (toList!4028 (extractMap!1066 lt!1653326))) lt!1654047 (h!55991 (toList!4028 (extractMap!1066 lt!1653326)))))))

(assert (=> b!4463655 (forall!9957 lt!1654047 lambda!162265)))

(declare-fun lt!1654041 () Unit!86927)

(assert (=> b!4463655 (= lt!1654041 lt!1654044)))

(declare-fun res!1851452 () Bool)

(assert (=> b!4463656 (=> (not res!1851452) (not e!2779460))))

(assert (=> b!4463656 (= res!1851452 (forall!9957 lt!1654042 lambda!162266))))

(declare-fun b!4463657 () Bool)

(declare-fun Unit!87059 () Unit!86927)

(assert (=> b!4463657 (= e!2779461 Unit!87059)))

(declare-fun b!4463658 () Bool)

(assert (=> b!4463658 (= e!2779459 Nil!50245)))

(declare-fun b!4463659 () Bool)

(declare-fun res!1851453 () Bool)

(assert (=> b!4463659 (=> (not res!1851453) (not e!2779460))))

(assert (=> b!4463659 (= res!1851453 (= (length!236 lt!1654042) (length!237 (toList!4028 (extractMap!1066 lt!1653326)))))))

(declare-fun d!1360885 () Bool)

(assert (=> d!1360885 e!2779460))

(declare-fun res!1851451 () Bool)

(assert (=> d!1360885 (=> (not res!1851451) (not e!2779460))))

(assert (=> d!1360885 (= res!1851451 (noDuplicate!690 lt!1654042))))

(assert (=> d!1360885 (= lt!1654042 e!2779459)))

(declare-fun c!759608 () Bool)

(assert (=> d!1360885 (= c!759608 ((_ is Cons!50242) (toList!4028 (extractMap!1066 lt!1653326))))))

(assert (=> d!1360885 (invariantList!913 (toList!4028 (extractMap!1066 lt!1653326)))))

(assert (=> d!1360885 (= (getKeysList!361 (toList!4028 (extractMap!1066 lt!1653326))) lt!1654042)))

(assert (=> b!4463660 false))

(declare-fun lt!1654045 () Unit!86927)

(declare-fun forallContained!2231 (List!50369 Int K!11665) Unit!86927)

(assert (=> b!4463660 (= lt!1654045 (forallContained!2231 (getKeysList!361 (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) lambda!162264 (_1!28531 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))))))))

(declare-fun Unit!87060 () Unit!86927)

(assert (=> b!4463660 (= e!2779458 Unit!87060)))

(declare-fun b!4463661 () Bool)

(declare-fun Unit!87061 () Unit!86927)

(assert (=> b!4463661 (= e!2779458 Unit!87061)))

(declare-fun b!4463662 () Bool)

(assert (=> b!4463662 false))

(declare-fun Unit!87062 () Unit!86927)

(assert (=> b!4463662 (= e!2779461 Unit!87062)))

(assert (= (and d!1360885 c!759608) b!4463655))

(assert (= (and d!1360885 (not c!759608)) b!4463658))

(assert (= (and b!4463655 c!759609) b!4463662))

(assert (= (and b!4463655 (not c!759609)) b!4463657))

(assert (= (and b!4463655 c!759607) b!4463660))

(assert (= (and b!4463655 (not c!759607)) b!4463661))

(assert (= (and d!1360885 res!1851451) b!4463659))

(assert (= (and b!4463659 res!1851453) b!4463656))

(assert (= (and b!4463656 res!1851452) b!4463654))

(declare-fun m!5167241 () Bool)

(assert (=> b!4463660 m!5167241))

(assert (=> b!4463660 m!5167241))

(declare-fun m!5167243 () Bool)

(assert (=> b!4463660 m!5167243))

(declare-fun m!5167245 () Bool)

(assert (=> b!4463654 m!5167245))

(declare-fun m!5167247 () Bool)

(assert (=> b!4463654 m!5167247))

(assert (=> b!4463654 m!5167247))

(declare-fun m!5167249 () Bool)

(assert (=> b!4463654 m!5167249))

(declare-fun m!5167251 () Bool)

(assert (=> d!1360885 m!5167251))

(assert (=> d!1360885 m!5166373))

(declare-fun m!5167253 () Bool)

(assert (=> b!4463656 m!5167253))

(assert (=> b!4463655 m!5167241))

(declare-fun m!5167255 () Bool)

(assert (=> b!4463655 m!5167255))

(declare-fun m!5167257 () Bool)

(assert (=> b!4463655 m!5167257))

(declare-fun m!5167259 () Bool)

(assert (=> b!4463655 m!5167259))

(assert (=> b!4463655 m!5167241))

(declare-fun m!5167261 () Bool)

(assert (=> b!4463655 m!5167261))

(declare-fun m!5167263 () Bool)

(assert (=> b!4463659 m!5167263))

(assert (=> b!4463659 m!5166357))

(assert (=> b!4462907 d!1360885))

(declare-fun d!1360907 () Bool)

(declare-fun res!1851454 () Bool)

(declare-fun e!2779462 () Bool)

(assert (=> d!1360907 (=> res!1851454 e!2779462)))

(assert (=> d!1360907 (= res!1851454 (and ((_ is Cons!50242) (_2!28532 (h!55992 lt!1653326))) (= (_1!28531 (h!55991 (_2!28532 (h!55992 lt!1653326)))) key!3287)))))

(assert (=> d!1360907 (= (containsKey!1426 (_2!28532 (h!55992 lt!1653326)) key!3287) e!2779462)))

(declare-fun b!4463665 () Bool)

(declare-fun e!2779463 () Bool)

(assert (=> b!4463665 (= e!2779462 e!2779463)))

(declare-fun res!1851455 () Bool)

(assert (=> b!4463665 (=> (not res!1851455) (not e!2779463))))

(assert (=> b!4463665 (= res!1851455 ((_ is Cons!50242) (_2!28532 (h!55992 lt!1653326))))))

(declare-fun b!4463666 () Bool)

(assert (=> b!4463666 (= e!2779463 (containsKey!1426 (t!357316 (_2!28532 (h!55992 lt!1653326))) key!3287))))

(assert (= (and d!1360907 (not res!1851454)) b!4463665))

(assert (= (and b!4463665 res!1851455) b!4463666))

(declare-fun m!5167265 () Bool)

(assert (=> b!4463666 m!5167265))

(assert (=> b!4462941 d!1360907))

(assert (=> b!4462832 d!1360713))

(assert (=> b!4462832 d!1360643))

(declare-fun d!1360909 () Bool)

(assert (=> d!1360909 (dynLambda!20990 lambda!162073 lt!1653318)))

(assert (=> d!1360909 true))

(declare-fun _$7!1657 () Unit!86927)

(assert (=> d!1360909 (= (choose!28434 (toList!4027 lm!1477) lambda!162073 lt!1653318) _$7!1657)))

(declare-fun b_lambda!147875 () Bool)

(assert (=> (not b_lambda!147875) (not d!1360909)))

(declare-fun bs!792156 () Bool)

(assert (= bs!792156 d!1360909))

(assert (=> bs!792156 m!5165821))

(assert (=> d!1360473 d!1360909))

(assert (=> d!1360473 d!1360541))

(declare-fun d!1360911 () Bool)

(declare-fun res!1851456 () Bool)

(declare-fun e!2779464 () Bool)

(assert (=> d!1360911 (=> res!1851456 e!2779464)))

(declare-fun e!2779465 () Bool)

(assert (=> d!1360911 (= res!1851456 e!2779465)))

(declare-fun res!1851458 () Bool)

(assert (=> d!1360911 (=> (not res!1851458) (not e!2779465))))

(assert (=> d!1360911 (= res!1851458 ((_ is Cons!50243) (t!357317 lt!1653326)))))

(assert (=> d!1360911 (= (containsKeyBiggerList!10 (t!357317 lt!1653326) key!3287) e!2779464)))

(declare-fun b!4463667 () Bool)

(assert (=> b!4463667 (= e!2779465 (containsKey!1426 (_2!28532 (h!55992 (t!357317 lt!1653326))) key!3287))))

(declare-fun b!4463668 () Bool)

(declare-fun e!2779466 () Bool)

(assert (=> b!4463668 (= e!2779464 e!2779466)))

(declare-fun res!1851457 () Bool)

(assert (=> b!4463668 (=> (not res!1851457) (not e!2779466))))

(assert (=> b!4463668 (= res!1851457 ((_ is Cons!50243) (t!357317 lt!1653326)))))

(declare-fun b!4463669 () Bool)

(assert (=> b!4463669 (= e!2779466 (containsKeyBiggerList!10 (t!357317 (t!357317 lt!1653326)) key!3287))))

(assert (= (and d!1360911 res!1851458) b!4463667))

(assert (= (and d!1360911 (not res!1851456)) b!4463668))

(assert (= (and b!4463668 res!1851457) b!4463669))

(declare-fun m!5167267 () Bool)

(assert (=> b!4463667 m!5167267))

(declare-fun m!5167269 () Bool)

(assert (=> b!4463669 m!5167269))

(assert (=> b!4462943 d!1360911))

(declare-fun d!1360913 () Bool)

(declare-fun res!1851459 () Bool)

(declare-fun e!2779467 () Bool)

(assert (=> d!1360913 (=> res!1851459 e!2779467)))

(assert (=> d!1360913 (= res!1851459 (and ((_ is Cons!50242) lt!1653366) (= (_1!28531 (h!55991 lt!1653366)) key!3287)))))

(assert (=> d!1360913 (= (containsKey!1426 lt!1653366 key!3287) e!2779467)))

(declare-fun b!4463670 () Bool)

(declare-fun e!2779468 () Bool)

(assert (=> b!4463670 (= e!2779467 e!2779468)))

(declare-fun res!1851460 () Bool)

(assert (=> b!4463670 (=> (not res!1851460) (not e!2779468))))

(assert (=> b!4463670 (= res!1851460 ((_ is Cons!50242) lt!1653366))))

(declare-fun b!4463671 () Bool)

(assert (=> b!4463671 (= e!2779468 (containsKey!1426 (t!357316 lt!1653366) key!3287))))

(assert (= (and d!1360913 (not res!1851459)) b!4463670))

(assert (= (and b!4463670 res!1851460) b!4463671))

(declare-fun m!5167271 () Bool)

(assert (=> b!4463671 m!5167271))

(assert (=> d!1360467 d!1360913))

(declare-fun d!1360915 () Bool)

(declare-fun res!1851461 () Bool)

(declare-fun e!2779469 () Bool)

(assert (=> d!1360915 (=> res!1851461 e!2779469)))

(assert (=> d!1360915 (= res!1851461 (not ((_ is Cons!50242) lt!1653321)))))

(assert (=> d!1360915 (= (noDuplicateKeys!1010 lt!1653321) e!2779469)))

(declare-fun b!4463672 () Bool)

(declare-fun e!2779470 () Bool)

(assert (=> b!4463672 (= e!2779469 e!2779470)))

(declare-fun res!1851462 () Bool)

(assert (=> b!4463672 (=> (not res!1851462) (not e!2779470))))

(assert (=> b!4463672 (= res!1851462 (not (containsKey!1426 (t!357316 lt!1653321) (_1!28531 (h!55991 lt!1653321)))))))

(declare-fun b!4463673 () Bool)

(assert (=> b!4463673 (= e!2779470 (noDuplicateKeys!1010 (t!357316 lt!1653321)))))

(assert (= (and d!1360915 (not res!1851461)) b!4463672))

(assert (= (and b!4463672 res!1851462) b!4463673))

(declare-fun m!5167273 () Bool)

(assert (=> b!4463672 m!5167273))

(assert (=> b!4463673 m!5166349))

(assert (=> d!1360467 d!1360915))

(declare-fun bs!792157 () Bool)

(declare-fun b!4463680 () Bool)

(assert (= bs!792157 (and b!4463680 b!4463170)))

(declare-fun lambda!162268 () Int)

(assert (=> bs!792157 (= (= (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162268 lambda!162196))))

(declare-fun bs!792158 () Bool)

(assert (= bs!792158 (and b!4463680 b!4463660)))

(assert (=> bs!792158 (= (= (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (= lambda!162268 lambda!162264))))

(declare-fun bs!792159 () Bool)

(assert (= bs!792159 (and b!4463680 b!4463656)))

(assert (=> bs!792159 (= (= (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162268 lambda!162266))))

(declare-fun bs!792160 () Bool)

(assert (= bs!792160 (and b!4463680 b!4463205)))

(assert (=> bs!792160 (= (= (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (= lambda!162268 lambda!162198))))

(declare-fun bs!792161 () Bool)

(assert (= bs!792161 (and b!4463680 b!4463618)))

(assert (=> bs!792161 (= (= (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162268 lambda!162252))))

(declare-fun bs!792162 () Bool)

(assert (= bs!792162 (and b!4463680 b!4463655)))

(assert (=> bs!792162 (= (= (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326))))) (= lambda!162268 lambda!162265))))

(declare-fun bs!792163 () Bool)

(assert (= bs!792163 (and b!4463680 b!4463623)))

(assert (=> bs!792163 (= (= (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (toList!4028 lt!1653474)) (= lambda!162268 lambda!162254))))

(assert (=> b!4463680 true))

(declare-fun bs!792164 () Bool)

(declare-fun b!4463675 () Bool)

(assert (= bs!792164 (and b!4463675 b!4463680)))

(declare-fun lambda!162269 () Int)

(assert (=> bs!792164 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (= lambda!162269 lambda!162268))))

(declare-fun bs!792165 () Bool)

(assert (= bs!792165 (and b!4463675 b!4463170)))

(assert (=> bs!792165 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162269 lambda!162196))))

(declare-fun bs!792166 () Bool)

(assert (= bs!792166 (and b!4463675 b!4463660)))

(assert (=> bs!792166 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (= lambda!162269 lambda!162264))))

(declare-fun bs!792167 () Bool)

(assert (= bs!792167 (and b!4463675 b!4463656)))

(assert (=> bs!792167 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162269 lambda!162266))))

(declare-fun bs!792168 () Bool)

(assert (= bs!792168 (and b!4463675 b!4463205)))

(assert (=> bs!792168 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (= lambda!162269 lambda!162198))))

(declare-fun bs!792169 () Bool)

(assert (= bs!792169 (and b!4463675 b!4463618)))

(assert (=> bs!792169 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162269 lambda!162252))))

(declare-fun bs!792170 () Bool)

(assert (= bs!792170 (and b!4463675 b!4463655)))

(assert (=> bs!792170 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326))))) (= lambda!162269 lambda!162265))))

(declare-fun bs!792171 () Bool)

(assert (= bs!792171 (and b!4463675 b!4463623)))

(assert (=> bs!792171 (= (= (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (toList!4028 lt!1653474)) (= lambda!162269 lambda!162254))))

(assert (=> b!4463675 true))

(declare-fun bs!792172 () Bool)

(declare-fun b!4463676 () Bool)

(assert (= bs!792172 (and b!4463676 b!4463680)))

(declare-fun lambda!162270 () Int)

(assert (=> bs!792172 (= (= (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (= lambda!162270 lambda!162268))))

(declare-fun bs!792173 () Bool)

(assert (= bs!792173 (and b!4463676 b!4463170)))

(assert (=> bs!792173 (= (= (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162270 lambda!162196))))

(declare-fun bs!792174 () Bool)

(assert (= bs!792174 (and b!4463676 b!4463660)))

(assert (=> bs!792174 (= (= (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326)))) (= lambda!162270 lambda!162264))))

(declare-fun bs!792175 () Bool)

(assert (= bs!792175 (and b!4463676 b!4463656)))

(assert (=> bs!792175 (= (= (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) (toList!4028 (extractMap!1066 lt!1653326))) (= lambda!162270 lambda!162266))))

(declare-fun bs!792176 () Bool)

(assert (= bs!792176 (and b!4463676 b!4463205)))

(assert (=> bs!792176 (= lambda!162270 lambda!162198)))

(declare-fun bs!792177 () Bool)

(assert (= bs!792177 (and b!4463676 b!4463655)))

(assert (=> bs!792177 (= (= (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 lt!1653326))) (t!357316 (toList!4028 (extractMap!1066 lt!1653326))))) (= lambda!162270 lambda!162265))))

(declare-fun bs!792178 () Bool)

(assert (= bs!792178 (and b!4463676 b!4463623)))

(assert (=> bs!792178 (= (= (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) (toList!4028 lt!1653474)) (= lambda!162270 lambda!162254))))

(declare-fun bs!792179 () Bool)

(assert (= bs!792179 (and b!4463676 b!4463675)))

(assert (=> bs!792179 (= (= (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) (Cons!50242 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))) (= lambda!162270 lambda!162269))))

(declare-fun bs!792180 () Bool)

(assert (= bs!792180 (and b!4463676 b!4463618)))

(assert (=> bs!792180 (= (= (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) (toList!4028 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))) (= lambda!162270 lambda!162252))))

(assert (=> b!4463676 true))

(declare-fun bs!792181 () Bool)

(declare-fun b!4463674 () Bool)

(assert (= bs!792181 (and b!4463674 b!4463171)))

(declare-fun lambda!162271 () Int)

(assert (=> bs!792181 (= lambda!162271 lambda!162197)))

(declare-fun bs!792182 () Bool)

(assert (= bs!792182 (and b!4463674 b!4463619)))

(assert (=> bs!792182 (= lambda!162271 lambda!162253)))

(declare-fun bs!792183 () Bool)

(assert (= bs!792183 (and b!4463674 b!4463624)))

(assert (=> bs!792183 (= lambda!162271 lambda!162255)))

(declare-fun bs!792184 () Bool)

(assert (= bs!792184 (and b!4463674 b!4463206)))

(assert (=> bs!792184 (= lambda!162271 lambda!162199)))

(declare-fun bs!792185 () Bool)

(assert (= bs!792185 (and b!4463674 b!4463654)))

(assert (=> bs!792185 (= lambda!162271 lambda!162267)))

(declare-fun e!2779473 () Bool)

(declare-fun lt!1654049 () List!50369)

(assert (=> b!4463674 (= e!2779473 (= (content!8061 lt!1654049) (content!8061 (map!11006 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))) lambda!162271))))))

(declare-fun e!2779472 () List!50369)

(assert (=> b!4463675 (= e!2779472 (Cons!50245 (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (getKeysList!361 (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))))))

(declare-fun c!759612 () Bool)

(assert (=> b!4463675 (= c!759612 (containsKey!1429 (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))))))

(declare-fun lt!1654050 () Unit!86927)

(declare-fun e!2779474 () Unit!86927)

(assert (=> b!4463675 (= lt!1654050 e!2779474)))

(declare-fun c!759610 () Bool)

(assert (=> b!4463675 (= c!759610 (contains!12773 (getKeysList!361 (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))))))

(declare-fun lt!1654053 () Unit!86927)

(declare-fun e!2779471 () Unit!86927)

(assert (=> b!4463675 (= lt!1654053 e!2779471)))

(declare-fun lt!1654054 () List!50369)

(assert (=> b!4463675 (= lt!1654054 (getKeysList!361 (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))))))

(declare-fun lt!1654051 () Unit!86927)

(assert (=> b!4463675 (= lt!1654051 (lemmaForallContainsAddHeadPreserves!112 (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) lt!1654054 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))))))

(assert (=> b!4463675 (forall!9957 lt!1654054 lambda!162269)))

(declare-fun lt!1654048 () Unit!86927)

(assert (=> b!4463675 (= lt!1654048 lt!1654051)))

(declare-fun res!1851464 () Bool)

(assert (=> b!4463676 (=> (not res!1851464) (not e!2779473))))

(assert (=> b!4463676 (= res!1851464 (forall!9957 lt!1654049 lambda!162270))))

(declare-fun b!4463677 () Bool)

(declare-fun Unit!87067 () Unit!86927)

(assert (=> b!4463677 (= e!2779474 Unit!87067)))

(declare-fun b!4463678 () Bool)

(assert (=> b!4463678 (= e!2779472 Nil!50245)))

(declare-fun b!4463679 () Bool)

(declare-fun res!1851465 () Bool)

(assert (=> b!4463679 (=> (not res!1851465) (not e!2779473))))

(assert (=> b!4463679 (= res!1851465 (= (length!236 lt!1654049) (length!237 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))))))

(declare-fun d!1360917 () Bool)

(assert (=> d!1360917 e!2779473))

(declare-fun res!1851463 () Bool)

(assert (=> d!1360917 (=> (not res!1851463) (not e!2779473))))

(assert (=> d!1360917 (= res!1851463 (noDuplicate!690 lt!1654049))))

(assert (=> d!1360917 (= lt!1654049 e!2779472)))

(declare-fun c!759611 () Bool)

(assert (=> d!1360917 (= c!759611 ((_ is Cons!50242) (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))))

(assert (=> d!1360917 (invariantList!913 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))))

(assert (=> d!1360917 (= (getKeysList!361 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))) lt!1654049)))

(assert (=> b!4463680 false))

(declare-fun lt!1654052 () Unit!86927)

(assert (=> b!4463680 (= lt!1654052 (forallContained!2231 (getKeysList!361 (t!357316 (toList!4028 (extractMap!1066 (toList!4027 lm!1477))))) lambda!162268 (_1!28531 (h!55991 (toList!4028 (extractMap!1066 (toList!4027 lm!1477)))))))))

(declare-fun Unit!87068 () Unit!86927)

(assert (=> b!4463680 (= e!2779471 Unit!87068)))

(declare-fun b!4463681 () Bool)

(declare-fun Unit!87069 () Unit!86927)

(assert (=> b!4463681 (= e!2779471 Unit!87069)))

(declare-fun b!4463682 () Bool)

(assert (=> b!4463682 false))

(declare-fun Unit!87070 () Unit!86927)

(assert (=> b!4463682 (= e!2779474 Unit!87070)))

(assert (= (and d!1360917 c!759611) b!4463675))

(assert (= (and d!1360917 (not c!759611)) b!4463678))

(assert (= (and b!4463675 c!759612) b!4463682))

(assert (= (and b!4463675 (not c!759612)) b!4463677))

(assert (= (and b!4463675 c!759610) b!4463680))

(assert (= (and b!4463675 (not c!759610)) b!4463681))

(assert (= (and d!1360917 res!1851463) b!4463679))

(assert (= (and b!4463679 res!1851465) b!4463676))

(assert (= (and b!4463676 res!1851464) b!4463674))

(declare-fun m!5167275 () Bool)

(assert (=> b!4463680 m!5167275))

(assert (=> b!4463680 m!5167275))

(declare-fun m!5167277 () Bool)

(assert (=> b!4463680 m!5167277))

(declare-fun m!5167279 () Bool)

(assert (=> b!4463674 m!5167279))

(declare-fun m!5167281 () Bool)

(assert (=> b!4463674 m!5167281))

(assert (=> b!4463674 m!5167281))

(declare-fun m!5167283 () Bool)

(assert (=> b!4463674 m!5167283))

(declare-fun m!5167285 () Bool)

(assert (=> d!1360917 m!5167285))

(assert (=> d!1360917 m!5166469))

(declare-fun m!5167287 () Bool)

(assert (=> b!4463676 m!5167287))

(assert (=> b!4463675 m!5167275))

(declare-fun m!5167289 () Bool)

(assert (=> b!4463675 m!5167289))

(declare-fun m!5167291 () Bool)

(assert (=> b!4463675 m!5167291))

(declare-fun m!5167293 () Bool)

(assert (=> b!4463675 m!5167293))

(assert (=> b!4463675 m!5167275))

(declare-fun m!5167295 () Bool)

(assert (=> b!4463675 m!5167295))

(declare-fun m!5167297 () Bool)

(assert (=> b!4463679 m!5167297))

(assert (=> b!4463679 m!5166385))

(assert (=> b!4462833 d!1360917))

(declare-fun d!1360919 () Bool)

(assert (=> d!1360919 (= (invariantList!913 (toList!4028 lt!1653498)) (noDuplicatedKeys!205 (toList!4028 lt!1653498)))))

(declare-fun bs!792186 () Bool)

(assert (= bs!792186 d!1360919))

(declare-fun m!5167299 () Bool)

(assert (=> bs!792186 m!5167299))

(assert (=> d!1360537 d!1360919))

(declare-fun d!1360921 () Bool)

(declare-fun res!1851466 () Bool)

(declare-fun e!2779475 () Bool)

(assert (=> d!1360921 (=> res!1851466 e!2779475)))

(assert (=> d!1360921 (= res!1851466 ((_ is Nil!50243) lt!1653326))))

(assert (=> d!1360921 (= (forall!9953 lt!1653326 lambda!162112) e!2779475)))

(declare-fun b!4463683 () Bool)

(declare-fun e!2779476 () Bool)

(assert (=> b!4463683 (= e!2779475 e!2779476)))

(declare-fun res!1851467 () Bool)

(assert (=> b!4463683 (=> (not res!1851467) (not e!2779476))))

(assert (=> b!4463683 (= res!1851467 (dynLambda!20990 lambda!162112 (h!55992 lt!1653326)))))

(declare-fun b!4463684 () Bool)

(assert (=> b!4463684 (= e!2779476 (forall!9953 (t!357317 lt!1653326) lambda!162112))))

(assert (= (and d!1360921 (not res!1851466)) b!4463683))

(assert (= (and b!4463683 res!1851467) b!4463684))

(declare-fun b_lambda!147877 () Bool)

(assert (=> (not b_lambda!147877) (not b!4463683)))

(declare-fun m!5167301 () Bool)

(assert (=> b!4463683 m!5167301))

(declare-fun m!5167303 () Bool)

(assert (=> b!4463684 m!5167303))

(assert (=> d!1360537 d!1360921))

(declare-fun d!1360923 () Bool)

(declare-fun res!1851468 () Bool)

(declare-fun e!2779477 () Bool)

(assert (=> d!1360923 (=> res!1851468 e!2779477)))

(assert (=> d!1360923 (= res!1851468 (not ((_ is Cons!50242) (_2!28532 lt!1653318))))))

(assert (=> d!1360923 (= (noDuplicateKeys!1010 (_2!28532 lt!1653318)) e!2779477)))

(declare-fun b!4463685 () Bool)

(declare-fun e!2779478 () Bool)

(assert (=> b!4463685 (= e!2779477 e!2779478)))

(declare-fun res!1851469 () Bool)

(assert (=> b!4463685 (=> (not res!1851469) (not e!2779478))))

(assert (=> b!4463685 (= res!1851469 (not (containsKey!1426 (t!357316 (_2!28532 lt!1653318)) (_1!28531 (h!55991 (_2!28532 lt!1653318))))))))

(declare-fun b!4463686 () Bool)

(assert (=> b!4463686 (= e!2779478 (noDuplicateKeys!1010 (t!357316 (_2!28532 lt!1653318))))))

(assert (= (and d!1360923 (not res!1851468)) b!4463685))

(assert (= (and b!4463685 res!1851469) b!4463686))

(declare-fun m!5167305 () Bool)

(assert (=> b!4463685 m!5167305))

(declare-fun m!5167307 () Bool)

(assert (=> b!4463686 m!5167307))

(assert (=> bs!791720 d!1360923))

(declare-fun d!1360925 () Bool)

(declare-fun c!759615 () Bool)

(assert (=> d!1360925 (= c!759615 ((_ is Nil!50242) (toList!4028 (extractMap!1066 (Cons!50243 lt!1653316 Nil!50243)))))))

(declare-fun e!2779481 () (InoxSet tuple2!50474))

(assert (=> d!1360925 (= (content!8062 (toList!4028 (extractMap!1066 (Cons!50243 lt!1653316 Nil!50243)))) e!2779481)))

(declare-fun b!4463691 () Bool)

(assert (=> b!4463691 (= e!2779481 ((as const (Array tuple2!50474 Bool)) false))))

(declare-fun b!4463692 () Bool)

(assert (=> b!4463692 (= e!2779481 ((_ map or) (store ((as const (Array tuple2!50474 Bool)) false) (h!55991 (toList!4028 (extractMap!1066 (Cons!50243 lt!1653316 Nil!50243)))) true) (content!8062 (t!357316 (toList!4028 (extractMap!1066 (Cons!50243 lt!1653316 Nil!50243)))))))))

(assert (= (and d!1360925 c!759615) b!4463691))

(assert (= (and d!1360925 (not c!759615)) b!4463692))

(declare-fun m!5167309 () Bool)

(assert (=> b!4463692 m!5167309))

(declare-fun m!5167311 () Bool)

(assert (=> b!4463692 m!5167311))

(assert (=> d!1360533 d!1360925))

(declare-fun c!759616 () Bool)

(declare-fun d!1360927 () Bool)

(assert (=> d!1360927 (= c!759616 ((_ is Nil!50242) (toList!4028 (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287))))))

(declare-fun e!2779482 () (InoxSet tuple2!50474))

(assert (=> d!1360927 (= (content!8062 (toList!4028 (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287))) e!2779482)))

(declare-fun b!4463693 () Bool)

(assert (=> b!4463693 (= e!2779482 ((as const (Array tuple2!50474 Bool)) false))))

(declare-fun b!4463694 () Bool)

(assert (=> b!4463694 (= e!2779482 ((_ map or) (store ((as const (Array tuple2!50474 Bool)) false) (h!55991 (toList!4028 (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287))) true) (content!8062 (t!357316 (toList!4028 (-!272 (extractMap!1066 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)) key!3287))))))))

(assert (= (and d!1360927 c!759616) b!4463693))

(assert (= (and d!1360927 (not c!759616)) b!4463694))

(declare-fun m!5167313 () Bool)

(assert (=> b!4463694 m!5167313))

(declare-fun m!5167315 () Bool)

(assert (=> b!4463694 m!5167315))

(assert (=> d!1360533 d!1360927))

(declare-fun d!1360929 () Bool)

(declare-fun choose!28449 (Hashable!5405 K!11665) (_ BitVec 64))

(assert (=> d!1360929 (= (hash!2399 hashF!1107 key!3287) (choose!28449 hashF!1107 key!3287))))

(declare-fun bs!792187 () Bool)

(assert (= bs!792187 d!1360929))

(declare-fun m!5167317 () Bool)

(assert (=> bs!792187 m!5167317))

(assert (=> d!1360551 d!1360929))

(declare-fun b!4463695 () Bool)

(declare-fun e!2779483 () Bool)

(declare-fun tp!1336006 () Bool)

(assert (=> b!4463695 (= e!2779483 (and tp_is_empty!27317 tp_is_empty!27319 tp!1336006))))

(assert (=> b!4462948 (= tp!1335995 e!2779483)))

(assert (= (and b!4462948 ((_ is Cons!50242) (t!357316 (t!357316 newBucket!178)))) b!4463695))

(declare-fun e!2779484 () Bool)

(declare-fun b!4463696 () Bool)

(declare-fun tp!1336007 () Bool)

(assert (=> b!4463696 (= e!2779484 (and tp_is_empty!27317 tp_is_empty!27319 tp!1336007))))

(assert (=> b!4462953 (= tp!1336000 e!2779484)))

(assert (= (and b!4462953 ((_ is Cons!50242) (_2!28532 (h!55992 (toList!4027 lm!1477))))) b!4463696))

(declare-fun b!4463697 () Bool)

(declare-fun e!2779485 () Bool)

(declare-fun tp!1336008 () Bool)

(declare-fun tp!1336009 () Bool)

(assert (=> b!4463697 (= e!2779485 (and tp!1336008 tp!1336009))))

(assert (=> b!4462953 (= tp!1336001 e!2779485)))

(assert (= (and b!4462953 ((_ is Cons!50243) (t!357317 (toList!4027 lm!1477)))) b!4463697))

(declare-fun b_lambda!147879 () Bool)

(assert (= b_lambda!147819 (or d!1360445 b_lambda!147879)))

(declare-fun bs!792188 () Bool)

(declare-fun d!1360931 () Bool)

(assert (= bs!792188 (and d!1360931 d!1360445)))

(assert (=> bs!792188 (= (dynLambda!20990 lambda!162079 (h!55992 (toList!4027 lm!1477))) (noDuplicateKeys!1010 (_2!28532 (h!55992 (toList!4027 lm!1477)))))))

(assert (=> bs!792188 m!5166081))

(assert (=> b!4463131 d!1360931))

(declare-fun b_lambda!147881 () Bool)

(assert (= b_lambda!147847 (or d!1360443 b_lambda!147881)))

(declare-fun bs!792189 () Bool)

(declare-fun d!1360933 () Bool)

(assert (= bs!792189 (and d!1360933 d!1360443)))

(assert (=> bs!792189 (= (dynLambda!20992 lambda!162076 (h!55991 newBucket!178)) (= (hash!2395 hashF!1107 (_1!28531 (h!55991 newBucket!178))) hash!344))))

(declare-fun m!5167319 () Bool)

(assert (=> bs!792189 m!5167319))

(assert (=> b!4463607 d!1360933))

(declare-fun b_lambda!147883 () Bool)

(assert (= b_lambda!147849 (or d!1360477 b_lambda!147883)))

(declare-fun bs!792190 () Bool)

(declare-fun d!1360935 () Bool)

(assert (= bs!792190 (and d!1360935 d!1360477)))

(assert (=> bs!792190 (= (dynLambda!20990 lambda!162095 (h!55992 (toList!4027 lm!1477))) (allKeysSameHash!864 (_2!28532 (h!55992 (toList!4027 lm!1477))) (_1!28532 (h!55992 (toList!4027 lm!1477))) hashF!1107))))

(declare-fun m!5167321 () Bool)

(assert (=> bs!792190 m!5167321))

(assert (=> b!4463625 d!1360935))

(declare-fun b_lambda!147885 () Bool)

(assert (= b_lambda!147845 (or d!1360535 b_lambda!147885)))

(declare-fun bs!792191 () Bool)

(declare-fun d!1360937 () Bool)

(assert (= bs!792191 (and d!1360937 d!1360535)))

(assert (=> bs!792191 (= (dynLambda!20990 lambda!162111 (h!55992 (toList!4027 (ListLongMap!2660 lt!1653326)))) (noDuplicateKeys!1010 (_2!28532 (h!55992 (toList!4027 (ListLongMap!2660 lt!1653326))))))))

(declare-fun m!5167323 () Bool)

(assert (=> bs!792191 m!5167323))

(assert (=> b!4463597 d!1360937))

(declare-fun b_lambda!147887 () Bool)

(assert (= b_lambda!147875 (or start!437692 b_lambda!147887)))

(assert (=> d!1360909 d!1360555))

(declare-fun b_lambda!147889 () Bool)

(assert (= b_lambda!147835 (or d!1360545 b_lambda!147889)))

(declare-fun bs!792192 () Bool)

(declare-fun d!1360939 () Bool)

(assert (= bs!792192 (and d!1360939 d!1360545)))

(assert (=> bs!792192 (= (dynLambda!20990 lambda!162115 (h!55992 (toList!4027 lm!1477))) (noDuplicateKeys!1010 (_2!28532 (h!55992 (toList!4027 lm!1477)))))))

(assert (=> bs!792192 m!5166081))

(assert (=> b!4463510 d!1360939))

(declare-fun b_lambda!147891 () Bool)

(assert (= b_lambda!147877 (or d!1360537 b_lambda!147891)))

(declare-fun bs!792193 () Bool)

(declare-fun d!1360941 () Bool)

(assert (= bs!792193 (and d!1360941 d!1360537)))

(assert (=> bs!792193 (= (dynLambda!20990 lambda!162112 (h!55992 lt!1653326)) (noDuplicateKeys!1010 (_2!28532 (h!55992 lt!1653326))))))

(assert (=> bs!792193 m!5166311))

(assert (=> b!4463683 d!1360941))

(declare-fun b_lambda!147893 () Bool)

(assert (= b_lambda!147825 (or d!1360499 b_lambda!147893)))

(declare-fun bs!792194 () Bool)

(declare-fun d!1360943 () Bool)

(assert (= bs!792194 (and d!1360943 d!1360499)))

(assert (=> bs!792194 (= (dynLambda!20990 lambda!162106 (h!55992 (toList!4027 lm!1477))) (noDuplicateKeys!1010 (_2!28532 (h!55992 (toList!4027 lm!1477)))))))

(assert (=> bs!792194 m!5166081))

(assert (=> b!4463418 d!1360943))

(declare-fun b_lambda!147895 () Bool)

(assert (= b_lambda!147841 (or d!1360521 b_lambda!147895)))

(declare-fun bs!792195 () Bool)

(declare-fun d!1360945 () Bool)

(assert (= bs!792195 (and d!1360945 d!1360521)))

(assert (=> bs!792195 (= (dynLambda!20990 lambda!162108 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243))) (noDuplicateKeys!1010 (_2!28532 (h!55992 (Cons!50243 (tuple2!50477 hash!344 (_2!28532 (h!55992 (toList!4027 lm!1477)))) Nil!50243)))))))

(assert (=> bs!792195 m!5166431))

(assert (=> b!4463530 d!1360945))

(declare-fun b_lambda!147897 () Bool)

(assert (= b_lambda!147821 (or start!437692 b_lambda!147897)))

(declare-fun bs!792196 () Bool)

(declare-fun d!1360947 () Bool)

(assert (= bs!792196 (and d!1360947 start!437692)))

(assert (=> bs!792196 (= (dynLambda!20990 lambda!162073 (h!55992 (t!357317 (toList!4027 lm!1477)))) (noDuplicateKeys!1010 (_2!28532 (h!55992 (t!357317 (toList!4027 lm!1477))))))))

(declare-fun m!5167325 () Bool)

(assert (=> bs!792196 m!5167325))

(assert (=> b!4463186 d!1360947))

(declare-fun b_lambda!147899 () Bool)

(assert (= b_lambda!147823 (or d!1360519 b_lambda!147899)))

(declare-fun bs!792197 () Bool)

(declare-fun d!1360949 () Bool)

(assert (= bs!792197 (and d!1360949 d!1360519)))

(assert (=> bs!792197 (= (dynLambda!20990 lambda!162107 (h!55992 (Cons!50243 lt!1653316 Nil!50243))) (noDuplicateKeys!1010 (_2!28532 (h!55992 (Cons!50243 lt!1653316 Nil!50243)))))))

(assert (=> bs!792197 m!5166755))

(assert (=> b!4463202 d!1360949))

(check-sat (not b!4463130) (not d!1360775) (not b_lambda!147893) (not b!4463654) (not b!4463598) (not b_lambda!147879) (not b!4463685) (not d!1360633) (not b!4463237) (not bm!310727) (not b!4463056) (not b!4463400) (not bm!310673) (not b!4463062) (not b!4463187) (not b!4463667) (not b!4463248) (not b!4463171) (not b!4463116) (not b!4463421) (not b!4463676) (not d!1360593) (not b!4463628) (not b!4463580) (not d!1360733) (not d!1360631) (not d!1360881) (not bm!310738) (not b!4463146) tp_is_empty!27317 (not b!4463695) (not b!4463578) (not b!4463149) (not b!4463395) (not d!1360795) (not d!1360839) (not b!4463581) (not b!4463402) (not b!4463404) (not b!4463442) (not d!1360819) (not b!4463240) (not b_lambda!147881) (not d!1360715) (not b!4463215) (not b!4463128) (not b!4463213) (not bm!310688) (not d!1360731) (not b!4463531) (not bs!792192) (not d!1360709) (not b!4463169) (not b!4463388) (not b_lambda!147887) (not b!4463696) (not b!4463113) (not d!1360879) (not d!1360821) (not d!1360639) (not b!4463132) (not b!4463686) (not d!1360627) (not bm!310722) (not b!4463514) (not d!1360667) (not b!4463212) (not b!4463674) (not b!4463577) (not bm!310687) (not b!4463576) (not b!4463115) (not b!4463415) (not b!4463170) (not b!4463468) (not d!1360619) (not b!4463420) (not b!4463568) (not d!1360695) (not bs!792189) (not b_lambda!147883) (not b!4463127) (not bm!310728) (not b!4463455) (not bm!310721) (not bm!310695) (not d!1360917) (not b!4463033) (not b!4463399) (not d!1360637) (not d!1360871) (not b!4463511) (not d!1360825) (not d!1360645) (not b!4463660) (not b!4463138) (not d!1360643) (not b!4463656) (not b!4463624) (not b!4463206) (not b_lambda!147897) (not b!4463032) (not b!4463422) (not b!4463249) (not d!1360873) (not d!1360869) (not bm!310732) (not b_lambda!147895) (not b!4463571) (not b!4463253) (not b!4463694) (not bs!792196) (not b_lambda!147899) (not b!4463666) (not d!1360615) (not b!4463512) (not d!1360649) (not bm!310724) (not d!1360885) (not bs!792197) (not b!4463630) (not b!4463622) (not b_lambda!147885) (not b!4463513) (not bm!310734) (not b!4463608) (not b!4463669) (not b!4463026) (not b!4463626) (not b!4463584) (not b!4463250) (not b!4463203) (not b!4463697) (not d!1360739) (not b!4463255) (not b!4463617) (not b_lambda!147889) (not b!4463015) (not b!4463245) (not b!4463680) (not b!4463616) (not b!4463529) (not b!4463679) (not d!1360929) (not b!4463692) (not d!1360689) (not b!4463619) (not d!1360841) (not bs!792188) (not d!1360853) (not b!4463600) (not b!4463528) (not b!4463216) (not bs!792195) (not bm!310653) (not b!4463519) (not b!4463391) (not d!1360653) (not bm!310672) (not b!4463393) (not b_lambda!147809) (not bs!792190) (not b!4463671) (not b!4463214) (not b!4463684) (not d!1360919) (not d!1360599) (not b!4463386) (not b!4463515) (not b!4463252) (not b!4463675) (not d!1360813) (not d!1360769) (not bs!792191) (not d!1360713) (not d!1360691) (not b!4463140) (not b!4463582) (not b!4463623) (not bm!310725) (not b!4463474) (not bm!310671) (not b!4463621) (not b!4463480) (not b!4463403) (not d!1360601) (not bm!310726) (not d!1360843) (not bm!310723) (not d!1360647) (not bm!310733) (not b!4463549) (not bs!792193) (not b!4463672) (not d!1360621) (not d!1360865) (not b_lambda!147891) (not d!1360597) (not b!4463423) (not d!1360661) (not b!4463583) (not b!4463655) (not b!4463659) (not bs!792194) (not b!4463013) (not b!4463610) (not b!4463057) (not b!4463204) (not b!4463114) (not d!1360807) (not b!4463673) (not d!1360789) (not bm!310720) (not b!4463120) (not b!4463205) (not bm!310686) (not b!4463419) (not b!4463254) (not b!4463439) (not b!4463618) (not b!4463627) (not d!1360837) (not b!4463242) (not b_lambda!147811) tp_is_empty!27319 (not b!4463534))
(check-sat)
