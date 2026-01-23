; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458756 () Bool)

(assert start!458756)

(declare-fun b!4597640 () Bool)

(declare-fun res!1922983 () Bool)

(declare-fun e!2867773 () Bool)

(assert (=> b!4597640 (=> (not res!1922983) (not e!2867773))))

(declare-datatypes ((K!12440 0))(
  ( (K!12441 (val!18223 Int)) )
))
(declare-datatypes ((V!12686 0))(
  ( (V!12687 (val!18224 Int)) )
))
(declare-datatypes ((tuple2!51714 0))(
  ( (tuple2!51715 (_1!29151 K!12440) (_2!29151 V!12686)) )
))
(declare-datatypes ((List!51198 0))(
  ( (Nil!51074) (Cons!51074 (h!57038 tuple2!51714) (t!358192 List!51198)) )
))
(declare-datatypes ((tuple2!51716 0))(
  ( (tuple2!51717 (_1!29152 (_ BitVec 64)) (_2!29152 List!51198)) )
))
(declare-datatypes ((List!51199 0))(
  ( (Nil!51075) (Cons!51075 (h!57039 tuple2!51716) (t!358193 List!51199)) )
))
(declare-datatypes ((ListLongMap!3279 0))(
  ( (ListLongMap!3280 (toList!4647 List!51199)) )
))
(declare-fun lm!1477 () ListLongMap!3279)

(declare-fun key!3287 () K!12440)

(declare-datatypes ((ListMap!3909 0))(
  ( (ListMap!3910 (toList!4648 List!51198)) )
))
(declare-fun contains!14019 (ListMap!3909 K!12440) Bool)

(declare-fun extractMap!1376 (List!51199) ListMap!3909)

(assert (=> b!4597640 (= res!1922983 (contains!14019 (extractMap!1376 (toList!4647 lm!1477)) key!3287))))

(declare-fun tp_is_empty!28557 () Bool)

(declare-fun b!4597641 () Bool)

(declare-fun tp!1340405 () Bool)

(declare-fun tp_is_empty!28559 () Bool)

(declare-fun e!2867776 () Bool)

(assert (=> b!4597641 (= e!2867776 (and tp_is_empty!28557 tp_is_empty!28559 tp!1340405))))

(declare-fun b!4597642 () Bool)

(declare-fun e!2867771 () Bool)

(declare-fun e!2867775 () Bool)

(assert (=> b!4597642 (= e!2867771 e!2867775)))

(declare-fun res!1922980 () Bool)

(assert (=> b!4597642 (=> res!1922980 e!2867775)))

(declare-fun lt!1757605 () List!51199)

(declare-fun containsKeyBiggerList!272 (List!51199 K!12440) Bool)

(assert (=> b!4597642 (= res!1922980 (not (containsKeyBiggerList!272 lt!1757605 key!3287)))))

(assert (=> b!4597642 (= lt!1757605 (Cons!51075 (h!57039 (toList!4647 lm!1477)) Nil!51075))))

(declare-fun b!4597643 () Bool)

(declare-datatypes ((Unit!108069 0))(
  ( (Unit!108070) )
))
(declare-fun e!2867770 () Unit!108069)

(declare-fun Unit!108071 () Unit!108069)

(assert (=> b!4597643 (= e!2867770 Unit!108071)))

(declare-datatypes ((Hashable!5715 0))(
  ( (HashableExt!5714 (__x!31418 Int)) )
))
(declare-fun hashF!1107 () Hashable!5715)

(declare-fun lt!1757606 () Unit!108069)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!286 (ListLongMap!3279 K!12440 Hashable!5715) Unit!108069)

(assert (=> b!4597643 (= lt!1757606 (lemmaNotInItsHashBucketThenNotInMap!286 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4597643 false))

(declare-fun b!4597644 () Bool)

(declare-fun e!2867767 () Bool)

(assert (=> b!4597644 (= e!2867767 true)))

(declare-fun lt!1757602 () Bool)

(declare-fun lt!1757594 () ListLongMap!3279)

(declare-fun allKeysSameHashInMap!1427 (ListLongMap!3279 Hashable!5715) Bool)

(assert (=> b!4597644 (= lt!1757602 (allKeysSameHashInMap!1427 lt!1757594 hashF!1107))))

(declare-fun b!4597645 () Bool)

(declare-fun res!1922989 () Bool)

(declare-fun e!2867768 () Bool)

(assert (=> b!4597645 (=> res!1922989 e!2867768)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4597645 (= res!1922989 (or ((_ is Nil!51075) (toList!4647 lm!1477)) (not (= (_1!29152 (h!57039 (toList!4647 lm!1477))) hash!344))))))

(declare-fun b!4597647 () Bool)

(declare-fun res!1922986 () Bool)

(assert (=> b!4597647 (=> res!1922986 e!2867767)))

(declare-fun lambda!186072 () Int)

(declare-fun forall!10596 (List!51199 Int) Bool)

(assert (=> b!4597647 (= res!1922986 (not (forall!10596 (toList!4647 lt!1757594) lambda!186072)))))

(declare-fun b!4597648 () Bool)

(declare-fun e!2867766 () Bool)

(assert (=> b!4597648 (= e!2867766 (not e!2867768))))

(declare-fun res!1922984 () Bool)

(assert (=> b!4597648 (=> res!1922984 e!2867768)))

(declare-fun lt!1757598 () List!51198)

(declare-fun newBucket!178 () List!51198)

(declare-fun removePairForKey!941 (List!51198 K!12440) List!51198)

(assert (=> b!4597648 (= res!1922984 (not (= newBucket!178 (removePairForKey!941 lt!1757598 key!3287))))))

(declare-fun lt!1757601 () Unit!108069)

(declare-fun lt!1757607 () tuple2!51716)

(declare-fun forallContained!2849 (List!51199 Int tuple2!51716) Unit!108069)

(assert (=> b!4597648 (= lt!1757601 (forallContained!2849 (toList!4647 lm!1477) lambda!186072 lt!1757607))))

(declare-fun contains!14020 (List!51199 tuple2!51716) Bool)

(assert (=> b!4597648 (contains!14020 (toList!4647 lm!1477) lt!1757607)))

(assert (=> b!4597648 (= lt!1757607 (tuple2!51717 hash!344 lt!1757598))))

(declare-fun lt!1757595 () Unit!108069)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!826 (List!51199 (_ BitVec 64) List!51198) Unit!108069)

(assert (=> b!4597648 (= lt!1757595 (lemmaGetValueByKeyImpliesContainsTuple!826 (toList!4647 lm!1477) hash!344 lt!1757598))))

(declare-fun apply!12053 (ListLongMap!3279 (_ BitVec 64)) List!51198)

(assert (=> b!4597648 (= lt!1757598 (apply!12053 lm!1477 hash!344))))

(declare-fun lt!1757593 () (_ BitVec 64))

(declare-fun contains!14021 (ListLongMap!3279 (_ BitVec 64)) Bool)

(assert (=> b!4597648 (contains!14021 lm!1477 lt!1757593)))

(declare-fun lt!1757599 () Unit!108069)

(declare-fun lemmaInGenMapThenLongMapContainsHash!390 (ListLongMap!3279 K!12440 Hashable!5715) Unit!108069)

(assert (=> b!4597648 (= lt!1757599 (lemmaInGenMapThenLongMapContainsHash!390 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4597649 () Bool)

(declare-fun res!1922982 () Bool)

(assert (=> b!4597649 (=> res!1922982 e!2867767)))

(declare-fun lt!1757592 () ListMap!3909)

(assert (=> b!4597649 (= res!1922982 (not (contains!14019 lt!1757592 key!3287)))))

(declare-fun b!4597650 () Bool)

(assert (=> b!4597650 (= e!2867773 e!2867766)))

(declare-fun res!1922976 () Bool)

(assert (=> b!4597650 (=> (not res!1922976) (not e!2867766))))

(assert (=> b!4597650 (= res!1922976 (= lt!1757593 hash!344))))

(declare-fun hash!3211 (Hashable!5715 K!12440) (_ BitVec 64))

(assert (=> b!4597650 (= lt!1757593 (hash!3211 hashF!1107 key!3287))))

(declare-fun b!4597651 () Bool)

(declare-fun e!2867774 () Bool)

(assert (=> b!4597651 (= e!2867775 e!2867774)))

(declare-fun res!1922981 () Bool)

(assert (=> b!4597651 (=> res!1922981 e!2867774)))

(declare-fun lt!1757591 () ListLongMap!3279)

(declare-fun tail!7940 (List!51199) List!51199)

(assert (=> b!4597651 (= res!1922981 (not (= (t!358193 (toList!4647 lm!1477)) (tail!7940 (toList!4647 lt!1757591)))))))

(declare-fun lt!1757600 () tuple2!51716)

(declare-fun +!1742 (ListLongMap!3279 tuple2!51716) ListLongMap!3279)

(assert (=> b!4597651 (= lt!1757591 (+!1742 lm!1477 lt!1757600))))

(declare-fun eq!723 (ListMap!3909 ListMap!3909) Bool)

(declare-fun -!492 (ListMap!3909 K!12440) ListMap!3909)

(assert (=> b!4597651 (eq!723 (extractMap!1376 (Cons!51075 lt!1757600 Nil!51075)) (-!492 (extractMap!1376 (Cons!51075 (tuple2!51717 hash!344 (_2!29152 (h!57039 (toList!4647 lm!1477)))) Nil!51075)) key!3287))))

(assert (=> b!4597651 (= lt!1757600 (tuple2!51717 hash!344 newBucket!178))))

(declare-fun lt!1757596 () Unit!108069)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!82 ((_ BitVec 64) List!51198 List!51198 K!12440 Hashable!5715) Unit!108069)

(assert (=> b!4597651 (= lt!1757596 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!82 hash!344 (_2!29152 (h!57039 (toList!4647 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4597651 (contains!14019 (extractMap!1376 lt!1757605) key!3287)))

(declare-fun lt!1757597 () Unit!108069)

(declare-fun lemmaListContainsThenExtractedMapContains!250 (ListLongMap!3279 K!12440 Hashable!5715) Unit!108069)

(assert (=> b!4597651 (= lt!1757597 (lemmaListContainsThenExtractedMapContains!250 (ListLongMap!3280 lt!1757605) key!3287 hashF!1107))))

(declare-fun b!4597652 () Bool)

(declare-fun e!2867769 () Bool)

(assert (=> b!4597652 (= e!2867774 e!2867769)))

(declare-fun res!1922990 () Bool)

(assert (=> b!4597652 (=> res!1922990 e!2867769)))

(assert (=> b!4597652 (= res!1922990 (not (= lt!1757591 (+!1742 lt!1757594 lt!1757600))))))

(declare-fun tail!7941 (ListLongMap!3279) ListLongMap!3279)

(assert (=> b!4597652 (= lt!1757594 (tail!7941 lm!1477))))

(declare-fun b!4597653 () Bool)

(declare-fun res!1922977 () Bool)

(assert (=> b!4597653 (=> (not res!1922977) (not e!2867773))))

(assert (=> b!4597653 (= res!1922977 (allKeysSameHashInMap!1427 lm!1477 hashF!1107))))

(declare-fun b!4597654 () Bool)

(declare-fun e!2867772 () Bool)

(declare-fun tp!1340404 () Bool)

(assert (=> b!4597654 (= e!2867772 tp!1340404)))

(declare-fun res!1922978 () Bool)

(assert (=> start!458756 (=> (not res!1922978) (not e!2867773))))

(assert (=> start!458756 (= res!1922978 (forall!10596 (toList!4647 lm!1477) lambda!186072))))

(assert (=> start!458756 e!2867773))

(assert (=> start!458756 true))

(declare-fun inv!66624 (ListLongMap!3279) Bool)

(assert (=> start!458756 (and (inv!66624 lm!1477) e!2867772)))

(assert (=> start!458756 tp_is_empty!28557))

(assert (=> start!458756 e!2867776))

(declare-fun b!4597646 () Bool)

(declare-fun res!1922979 () Bool)

(assert (=> b!4597646 (=> (not res!1922979) (not e!2867766))))

(declare-fun allKeysSameHash!1172 (List!51198 (_ BitVec 64) Hashable!5715) Bool)

(assert (=> b!4597646 (= res!1922979 (allKeysSameHash!1172 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4597655 () Bool)

(assert (=> b!4597655 (= e!2867768 e!2867771)))

(declare-fun res!1922988 () Bool)

(assert (=> b!4597655 (=> res!1922988 e!2867771)))

(declare-fun lt!1757603 () Bool)

(assert (=> b!4597655 (= res!1922988 lt!1757603)))

(declare-fun lt!1757604 () Unit!108069)

(assert (=> b!4597655 (= lt!1757604 e!2867770)))

(declare-fun c!787438 () Bool)

(assert (=> b!4597655 (= c!787438 lt!1757603)))

(declare-fun containsKey!2152 (List!51198 K!12440) Bool)

(assert (=> b!4597655 (= lt!1757603 (not (containsKey!2152 (_2!29152 (h!57039 (toList!4647 lm!1477))) key!3287)))))

(declare-fun b!4597656 () Bool)

(declare-fun Unit!108072 () Unit!108069)

(assert (=> b!4597656 (= e!2867770 Unit!108072)))

(declare-fun b!4597657 () Bool)

(assert (=> b!4597657 (= e!2867769 e!2867767)))

(declare-fun res!1922987 () Bool)

(assert (=> b!4597657 (=> res!1922987 e!2867767)))

(assert (=> b!4597657 (= res!1922987 (not (= lt!1757592 (extractMap!1376 (t!358193 (toList!4647 lm!1477))))))))

(assert (=> b!4597657 (= lt!1757592 (extractMap!1376 (toList!4647 lt!1757594)))))

(declare-fun b!4597658 () Bool)

(declare-fun res!1922985 () Bool)

(assert (=> b!4597658 (=> res!1922985 e!2867768)))

(declare-fun noDuplicateKeys!1316 (List!51198) Bool)

(assert (=> b!4597658 (= res!1922985 (not (noDuplicateKeys!1316 newBucket!178)))))

(assert (= (and start!458756 res!1922978) b!4597653))

(assert (= (and b!4597653 res!1922977) b!4597640))

(assert (= (and b!4597640 res!1922983) b!4597650))

(assert (= (and b!4597650 res!1922976) b!4597646))

(assert (= (and b!4597646 res!1922979) b!4597648))

(assert (= (and b!4597648 (not res!1922984)) b!4597658))

(assert (= (and b!4597658 (not res!1922985)) b!4597645))

(assert (= (and b!4597645 (not res!1922989)) b!4597655))

(assert (= (and b!4597655 c!787438) b!4597643))

(assert (= (and b!4597655 (not c!787438)) b!4597656))

(assert (= (and b!4597655 (not res!1922988)) b!4597642))

(assert (= (and b!4597642 (not res!1922980)) b!4597651))

(assert (= (and b!4597651 (not res!1922981)) b!4597652))

(assert (= (and b!4597652 (not res!1922990)) b!4597657))

(assert (= (and b!4597657 (not res!1922987)) b!4597649))

(assert (= (and b!4597649 (not res!1922982)) b!4597647))

(assert (= (and b!4597647 (not res!1922986)) b!4597644))

(assert (= start!458756 b!4597654))

(assert (= (and start!458756 ((_ is Cons!51074) newBucket!178)) b!4597641))

(declare-fun m!5423357 () Bool)

(assert (=> start!458756 m!5423357))

(declare-fun m!5423359 () Bool)

(assert (=> start!458756 m!5423359))

(declare-fun m!5423361 () Bool)

(assert (=> b!4597653 m!5423361))

(declare-fun m!5423363 () Bool)

(assert (=> b!4597655 m!5423363))

(declare-fun m!5423365 () Bool)

(assert (=> b!4597651 m!5423365))

(declare-fun m!5423367 () Bool)

(assert (=> b!4597651 m!5423367))

(declare-fun m!5423369 () Bool)

(assert (=> b!4597651 m!5423369))

(declare-fun m!5423371 () Bool)

(assert (=> b!4597651 m!5423371))

(assert (=> b!4597651 m!5423367))

(declare-fun m!5423373 () Bool)

(assert (=> b!4597651 m!5423373))

(declare-fun m!5423375 () Bool)

(assert (=> b!4597651 m!5423375))

(declare-fun m!5423377 () Bool)

(assert (=> b!4597651 m!5423377))

(assert (=> b!4597651 m!5423377))

(declare-fun m!5423379 () Bool)

(assert (=> b!4597651 m!5423379))

(declare-fun m!5423381 () Bool)

(assert (=> b!4597651 m!5423381))

(assert (=> b!4597651 m!5423365))

(assert (=> b!4597651 m!5423371))

(declare-fun m!5423383 () Bool)

(assert (=> b!4597651 m!5423383))

(declare-fun m!5423385 () Bool)

(assert (=> b!4597657 m!5423385))

(declare-fun m!5423387 () Bool)

(assert (=> b!4597657 m!5423387))

(declare-fun m!5423389 () Bool)

(assert (=> b!4597644 m!5423389))

(declare-fun m!5423391 () Bool)

(assert (=> b!4597648 m!5423391))

(declare-fun m!5423393 () Bool)

(assert (=> b!4597648 m!5423393))

(declare-fun m!5423395 () Bool)

(assert (=> b!4597648 m!5423395))

(declare-fun m!5423397 () Bool)

(assert (=> b!4597648 m!5423397))

(declare-fun m!5423399 () Bool)

(assert (=> b!4597648 m!5423399))

(declare-fun m!5423401 () Bool)

(assert (=> b!4597648 m!5423401))

(declare-fun m!5423403 () Bool)

(assert (=> b!4597648 m!5423403))

(declare-fun m!5423405 () Bool)

(assert (=> b!4597647 m!5423405))

(declare-fun m!5423407 () Bool)

(assert (=> b!4597646 m!5423407))

(declare-fun m!5423409 () Bool)

(assert (=> b!4597642 m!5423409))

(declare-fun m!5423411 () Bool)

(assert (=> b!4597658 m!5423411))

(declare-fun m!5423413 () Bool)

(assert (=> b!4597652 m!5423413))

(declare-fun m!5423415 () Bool)

(assert (=> b!4597652 m!5423415))

(declare-fun m!5423417 () Bool)

(assert (=> b!4597650 m!5423417))

(declare-fun m!5423419 () Bool)

(assert (=> b!4597640 m!5423419))

(assert (=> b!4597640 m!5423419))

(declare-fun m!5423421 () Bool)

(assert (=> b!4597640 m!5423421))

(declare-fun m!5423423 () Bool)

(assert (=> b!4597649 m!5423423))

(declare-fun m!5423425 () Bool)

(assert (=> b!4597643 m!5423425))

(check-sat tp_is_empty!28557 (not b!4597657) (not b!4597649) (not b!4597643) tp_is_empty!28559 (not b!4597653) (not b!4597647) (not b!4597644) (not b!4597646) (not b!4597642) (not b!4597652) (not b!4597648) (not b!4597651) (not b!4597658) (not b!4597654) (not b!4597650) (not start!458756) (not b!4597655) (not b!4597641) (not b!4597640))
(check-sat)
