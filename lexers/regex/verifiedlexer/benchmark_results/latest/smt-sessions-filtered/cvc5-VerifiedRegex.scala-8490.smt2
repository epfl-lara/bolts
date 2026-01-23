; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!441546 () Bool)

(assert start!441546)

(declare-fun b!4484769 () Bool)

(declare-fun res!1862698 () Bool)

(declare-fun e!2793168 () Bool)

(assert (=> b!4484769 (=> (not res!1862698) (not e!2793168))))

(declare-datatypes ((K!11853 0))(
  ( (K!11854 (val!17753 Int)) )
))
(declare-datatypes ((V!12099 0))(
  ( (V!12100 (val!17754 Int)) )
))
(declare-datatypes ((tuple2!50774 0))(
  ( (tuple2!50775 (_1!28681 K!11853) (_2!28681 V!12099)) )
))
(declare-datatypes ((List!50562 0))(
  ( (Nil!50438) (Cons!50438 (h!56233 tuple2!50774) (t!357516 List!50562)) )
))
(declare-datatypes ((tuple2!50776 0))(
  ( (tuple2!50777 (_1!28682 (_ BitVec 64)) (_2!28682 List!50562)) )
))
(declare-datatypes ((List!50563 0))(
  ( (Nil!50439) (Cons!50439 (h!56234 tuple2!50776) (t!357517 List!50563)) )
))
(declare-datatypes ((ListLongMap!2809 0))(
  ( (ListLongMap!2810 (toList!4177 List!50563)) )
))
(declare-fun lm!1477 () ListLongMap!2809)

(declare-fun key!3287 () K!11853)

(declare-datatypes ((ListMap!3439 0))(
  ( (ListMap!3440 (toList!4178 List!50562)) )
))
(declare-fun contains!13056 (ListMap!3439 K!11853) Bool)

(declare-fun extractMap!1141 (List!50563) ListMap!3439)

(assert (=> b!4484769 (= res!1862698 (contains!13056 (extractMap!1141 (toList!4177 lm!1477)) key!3287))))

(declare-fun b!4484770 () Bool)

(declare-fun res!1862693 () Bool)

(declare-fun e!2793176 () Bool)

(assert (=> b!4484770 (=> res!1862693 e!2793176)))

(declare-fun lt!1670558 () ListLongMap!2809)

(declare-fun lt!1670565 () List!50562)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!11822 (ListLongMap!2809 (_ BitVec 64)) List!50562)

(assert (=> b!4484770 (= res!1862693 (not (= (apply!11822 lt!1670558 hash!344) lt!1670565)))))

(declare-fun b!4484771 () Bool)

(declare-fun e!2793172 () Bool)

(assert (=> b!4484771 (= e!2793168 e!2793172)))

(declare-fun res!1862692 () Bool)

(assert (=> b!4484771 (=> (not res!1862692) (not e!2793172))))

(declare-fun lt!1670563 () (_ BitVec 64))

(assert (=> b!4484771 (= res!1862692 (= lt!1670563 hash!344))))

(declare-datatypes ((Hashable!5480 0))(
  ( (HashableExt!5479 (__x!31183 Int)) )
))
(declare-fun hashF!1107 () Hashable!5480)

(declare-fun hash!2590 (Hashable!5480 K!11853) (_ BitVec 64))

(assert (=> b!4484771 (= lt!1670563 (hash!2590 hashF!1107 key!3287))))

(declare-fun b!4484772 () Bool)

(declare-fun res!1862689 () Bool)

(declare-fun e!2793173 () Bool)

(assert (=> b!4484772 (=> res!1862689 e!2793173)))

(assert (=> b!4484772 (= res!1862689 (or (is-Nil!50439 (toList!4177 lm!1477)) (= (_1!28682 (h!56234 (toList!4177 lm!1477))) hash!344)))))

(declare-fun b!4484773 () Bool)

(declare-fun res!1862700 () Bool)

(assert (=> b!4484773 (=> (not res!1862700) (not e!2793168))))

(declare-fun allKeysSameHashInMap!1192 (ListLongMap!2809 Hashable!5480) Bool)

(assert (=> b!4484773 (= res!1862700 (allKeysSameHashInMap!1192 lm!1477 hashF!1107))))

(declare-fun res!1862695 () Bool)

(assert (=> start!441546 (=> (not res!1862695) (not e!2793168))))

(declare-fun lambda!166190 () Int)

(declare-fun forall!10095 (List!50563 Int) Bool)

(assert (=> start!441546 (= res!1862695 (forall!10095 (toList!4177 lm!1477) lambda!166190))))

(assert (=> start!441546 e!2793168))

(assert (=> start!441546 true))

(declare-fun e!2793174 () Bool)

(declare-fun inv!66038 (ListLongMap!2809) Bool)

(assert (=> start!441546 (and (inv!66038 lm!1477) e!2793174)))

(declare-fun tp_is_empty!27617 () Bool)

(assert (=> start!441546 tp_is_empty!27617))

(declare-fun e!2793175 () Bool)

(assert (=> start!441546 e!2793175))

(declare-fun b!4484774 () Bool)

(declare-datatypes ((Unit!90047 0))(
  ( (Unit!90048) )
))
(declare-fun e!2793169 () Unit!90047)

(declare-fun Unit!90049 () Unit!90047)

(assert (=> b!4484774 (= e!2793169 Unit!90049)))

(declare-fun b!4484775 () Bool)

(declare-fun e!2793170 () Bool)

(assert (=> b!4484775 (= e!2793176 e!2793170)))

(declare-fun res!1862696 () Bool)

(assert (=> b!4484775 (=> res!1862696 e!2793170)))

(declare-fun lt!1670556 () Bool)

(assert (=> b!4484775 (= res!1862696 lt!1670556)))

(declare-fun lt!1670557 () Unit!90047)

(assert (=> b!4484775 (= lt!1670557 e!2793169)))

(declare-fun c!763862 () Bool)

(assert (=> b!4484775 (= c!763862 lt!1670556)))

(declare-fun containsKey!1589 (List!50562 K!11853) Bool)

(assert (=> b!4484775 (= lt!1670556 (not (containsKey!1589 lt!1670565 key!3287)))))

(declare-fun b!4484776 () Bool)

(declare-fun Unit!90050 () Unit!90047)

(assert (=> b!4484776 (= e!2793169 Unit!90050)))

(declare-fun lt!1670559 () Unit!90047)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!73 (ListLongMap!2809 K!11853 Hashable!5480) Unit!90047)

(assert (=> b!4484776 (= lt!1670559 (lemmaNotInItsHashBucketThenNotInMap!73 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4484776 false))

(declare-fun b!4484777 () Bool)

(declare-fun res!1862691 () Bool)

(assert (=> b!4484777 (=> res!1862691 e!2793173)))

(declare-fun newBucket!178 () List!50562)

(declare-fun noDuplicateKeys!1085 (List!50562) Bool)

(assert (=> b!4484777 (= res!1862691 (not (noDuplicateKeys!1085 newBucket!178)))))

(declare-fun b!4484778 () Bool)

(declare-fun e!2793171 () Bool)

(assert (=> b!4484778 (= e!2793170 e!2793171)))

(declare-fun res!1862694 () Bool)

(assert (=> b!4484778 (=> res!1862694 e!2793171)))

(declare-fun containsKeyBiggerList!65 (List!50563 K!11853) Bool)

(assert (=> b!4484778 (= res!1862694 (not (containsKeyBiggerList!65 (t!357517 (toList!4177 lm!1477)) key!3287)))))

(assert (=> b!4484778 (containsKeyBiggerList!65 (toList!4177 lt!1670558) key!3287)))

(declare-fun lt!1670555 () Unit!90047)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!1 (ListLongMap!2809 K!11853 Hashable!5480) Unit!90047)

(assert (=> b!4484778 (= lt!1670555 (lemmaInLongMapThenContainsKeyBiggerList!1 lt!1670558 key!3287 hashF!1107))))

(declare-fun b!4484779 () Bool)

(assert (=> b!4484779 (= e!2793172 (not e!2793173))))

(declare-fun res!1862697 () Bool)

(assert (=> b!4484779 (=> res!1862697 e!2793173)))

(declare-fun removePairForKey!712 (List!50562 K!11853) List!50562)

(assert (=> b!4484779 (= res!1862697 (not (= newBucket!178 (removePairForKey!712 lt!1670565 key!3287))))))

(declare-fun lt!1670562 () Unit!90047)

(declare-fun lt!1670564 () tuple2!50776)

(declare-fun forallContained!2356 (List!50563 Int tuple2!50776) Unit!90047)

(assert (=> b!4484779 (= lt!1670562 (forallContained!2356 (toList!4177 lm!1477) lambda!166190 lt!1670564))))

(declare-fun contains!13057 (List!50563 tuple2!50776) Bool)

(assert (=> b!4484779 (contains!13057 (toList!4177 lm!1477) lt!1670564)))

(assert (=> b!4484779 (= lt!1670564 (tuple2!50777 hash!344 lt!1670565))))

(declare-fun lt!1670561 () Unit!90047)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!597 (List!50563 (_ BitVec 64) List!50562) Unit!90047)

(assert (=> b!4484779 (= lt!1670561 (lemmaGetValueByKeyImpliesContainsTuple!597 (toList!4177 lm!1477) hash!344 lt!1670565))))

(assert (=> b!4484779 (= lt!1670565 (apply!11822 lm!1477 hash!344))))

(declare-fun contains!13058 (ListLongMap!2809 (_ BitVec 64)) Bool)

(assert (=> b!4484779 (contains!13058 lm!1477 lt!1670563)))

(declare-fun lt!1670560 () Unit!90047)

(declare-fun lemmaInGenMapThenLongMapContainsHash!159 (ListLongMap!2809 K!11853 Hashable!5480) Unit!90047)

(assert (=> b!4484779 (= lt!1670560 (lemmaInGenMapThenLongMapContainsHash!159 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4484780 () Bool)

(declare-fun tp!1336945 () Bool)

(assert (=> b!4484780 (= e!2793174 tp!1336945)))

(declare-fun b!4484781 () Bool)

(assert (=> b!4484781 (= e!2793173 e!2793176)))

(declare-fun res!1862690 () Bool)

(assert (=> b!4484781 (=> res!1862690 e!2793176)))

(assert (=> b!4484781 (= res!1862690 (not (contains!13058 lt!1670558 hash!344)))))

(declare-fun tail!7602 (ListLongMap!2809) ListLongMap!2809)

(assert (=> b!4484781 (= lt!1670558 (tail!7602 lm!1477))))

(declare-fun b!4484782 () Bool)

(declare-fun isEmpty!28534 (ListLongMap!2809) Bool)

(assert (=> b!4484782 (= e!2793171 (not (isEmpty!28534 lm!1477)))))

(declare-fun b!4484783 () Bool)

(declare-fun tp!1336944 () Bool)

(declare-fun tp_is_empty!27619 () Bool)

(assert (=> b!4484783 (= e!2793175 (and tp_is_empty!27617 tp_is_empty!27619 tp!1336944))))

(declare-fun b!4484784 () Bool)

(declare-fun res!1862701 () Bool)

(assert (=> b!4484784 (=> (not res!1862701) (not e!2793172))))

(declare-fun allKeysSameHash!939 (List!50562 (_ BitVec 64) Hashable!5480) Bool)

(assert (=> b!4484784 (= res!1862701 (allKeysSameHash!939 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4484785 () Bool)

(declare-fun res!1862699 () Bool)

(assert (=> b!4484785 (=> res!1862699 e!2793176)))

(assert (=> b!4484785 (= res!1862699 (not (contains!13057 (t!357517 (toList!4177 lm!1477)) lt!1670564)))))

(assert (= (and start!441546 res!1862695) b!4484773))

(assert (= (and b!4484773 res!1862700) b!4484769))

(assert (= (and b!4484769 res!1862698) b!4484771))

(assert (= (and b!4484771 res!1862692) b!4484784))

(assert (= (and b!4484784 res!1862701) b!4484779))

(assert (= (and b!4484779 (not res!1862697)) b!4484777))

(assert (= (and b!4484777 (not res!1862691)) b!4484772))

(assert (= (and b!4484772 (not res!1862689)) b!4484781))

(assert (= (and b!4484781 (not res!1862690)) b!4484770))

(assert (= (and b!4484770 (not res!1862693)) b!4484785))

(assert (= (and b!4484785 (not res!1862699)) b!4484775))

(assert (= (and b!4484775 c!763862) b!4484776))

(assert (= (and b!4484775 (not c!763862)) b!4484774))

(assert (= (and b!4484775 (not res!1862696)) b!4484778))

(assert (= (and b!4484778 (not res!1862694)) b!4484782))

(assert (= start!441546 b!4484780))

(assert (= (and start!441546 (is-Cons!50438 newBucket!178)) b!4484783))

(declare-fun m!5205365 () Bool)

(assert (=> b!4484773 m!5205365))

(declare-fun m!5205367 () Bool)

(assert (=> b!4484775 m!5205367))

(declare-fun m!5205369 () Bool)

(assert (=> b!4484785 m!5205369))

(declare-fun m!5205371 () Bool)

(assert (=> b!4484776 m!5205371))

(declare-fun m!5205373 () Bool)

(assert (=> b!4484778 m!5205373))

(declare-fun m!5205375 () Bool)

(assert (=> b!4484778 m!5205375))

(declare-fun m!5205377 () Bool)

(assert (=> b!4484778 m!5205377))

(declare-fun m!5205379 () Bool)

(assert (=> b!4484771 m!5205379))

(declare-fun m!5205381 () Bool)

(assert (=> start!441546 m!5205381))

(declare-fun m!5205383 () Bool)

(assert (=> start!441546 m!5205383))

(declare-fun m!5205385 () Bool)

(assert (=> b!4484781 m!5205385))

(declare-fun m!5205387 () Bool)

(assert (=> b!4484781 m!5205387))

(declare-fun m!5205389 () Bool)

(assert (=> b!4484769 m!5205389))

(assert (=> b!4484769 m!5205389))

(declare-fun m!5205391 () Bool)

(assert (=> b!4484769 m!5205391))

(declare-fun m!5205393 () Bool)

(assert (=> b!4484779 m!5205393))

(declare-fun m!5205395 () Bool)

(assert (=> b!4484779 m!5205395))

(declare-fun m!5205397 () Bool)

(assert (=> b!4484779 m!5205397))

(declare-fun m!5205399 () Bool)

(assert (=> b!4484779 m!5205399))

(declare-fun m!5205401 () Bool)

(assert (=> b!4484779 m!5205401))

(declare-fun m!5205403 () Bool)

(assert (=> b!4484779 m!5205403))

(declare-fun m!5205405 () Bool)

(assert (=> b!4484779 m!5205405))

(declare-fun m!5205407 () Bool)

(assert (=> b!4484782 m!5205407))

(declare-fun m!5205409 () Bool)

(assert (=> b!4484777 m!5205409))

(declare-fun m!5205411 () Bool)

(assert (=> b!4484770 m!5205411))

(declare-fun m!5205413 () Bool)

(assert (=> b!4484784 m!5205413))

(push 1)

(assert (not b!4484779))

(assert (not b!4484770))

(assert (not b!4484776))

(assert tp_is_empty!27617)

(assert (not b!4484781))

(assert (not b!4484782))

(assert (not b!4484777))

(assert (not start!441546))

(assert (not b!4484780))

(assert (not b!4484771))

(assert (not b!4484773))

(assert (not b!4484769))

(assert (not b!4484785))

(assert (not b!4484783))

(assert (not b!4484778))

(assert (not b!4484775))

(assert (not b!4484784))

(assert tp_is_empty!27619)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1372811 () Bool)

(declare-datatypes ((Option!10994 0))(
  ( (None!10993) (Some!10993 (v!44400 List!50562)) )
))
(declare-fun get!16460 (Option!10994) List!50562)

(declare-fun getValueByKey!974 (List!50563 (_ BitVec 64)) Option!10994)

(assert (=> d!1372811 (= (apply!11822 lt!1670558 hash!344) (get!16460 (getValueByKey!974 (toList!4177 lt!1670558) hash!344)))))

(declare-fun bs!825771 () Bool)

(assert (= bs!825771 d!1372811))

(declare-fun m!5205465 () Bool)

(assert (=> bs!825771 m!5205465))

(assert (=> bs!825771 m!5205465))

(declare-fun m!5205467 () Bool)

(assert (=> bs!825771 m!5205467))

(assert (=> b!4484770 d!1372811))

(declare-fun d!1372813 () Bool)

(declare-fun res!1862745 () Bool)

(declare-fun e!2793208 () Bool)

(assert (=> d!1372813 (=> res!1862745 e!2793208)))

(assert (=> d!1372813 (= res!1862745 (is-Nil!50439 (toList!4177 lm!1477)))))

(assert (=> d!1372813 (= (forall!10095 (toList!4177 lm!1477) lambda!166190) e!2793208)))

(declare-fun b!4484841 () Bool)

(declare-fun e!2793209 () Bool)

(assert (=> b!4484841 (= e!2793208 e!2793209)))

(declare-fun res!1862746 () Bool)

(assert (=> b!4484841 (=> (not res!1862746) (not e!2793209))))

(declare-fun dynLambda!21061 (Int tuple2!50776) Bool)

(assert (=> b!4484841 (= res!1862746 (dynLambda!21061 lambda!166190 (h!56234 (toList!4177 lm!1477))))))

(declare-fun b!4484842 () Bool)

(assert (=> b!4484842 (= e!2793209 (forall!10095 (t!357517 (toList!4177 lm!1477)) lambda!166190))))

(assert (= (and d!1372813 (not res!1862745)) b!4484841))

(assert (= (and b!4484841 res!1862746) b!4484842))

(declare-fun b_lambda!150553 () Bool)

(assert (=> (not b_lambda!150553) (not b!4484841)))

(declare-fun m!5205469 () Bool)

(assert (=> b!4484841 m!5205469))

(declare-fun m!5205471 () Bool)

(assert (=> b!4484842 m!5205471))

(assert (=> start!441546 d!1372813))

(declare-fun d!1372815 () Bool)

(declare-fun isStrictlySorted!372 (List!50563) Bool)

(assert (=> d!1372815 (= (inv!66038 lm!1477) (isStrictlySorted!372 (toList!4177 lm!1477)))))

(declare-fun bs!825772 () Bool)

(assert (= bs!825772 d!1372815))

(declare-fun m!5205473 () Bool)

(assert (=> bs!825772 m!5205473))

(assert (=> start!441546 d!1372815))

(declare-fun d!1372817 () Bool)

(declare-fun e!2793215 () Bool)

(assert (=> d!1372817 e!2793215))

(declare-fun res!1862749 () Bool)

(assert (=> d!1372817 (=> res!1862749 e!2793215)))

(declare-fun lt!1670607 () Bool)

(assert (=> d!1372817 (= res!1862749 (not lt!1670607))))

(declare-fun lt!1670609 () Bool)

(assert (=> d!1372817 (= lt!1670607 lt!1670609)))

(declare-fun lt!1670610 () Unit!90047)

(declare-fun e!2793214 () Unit!90047)

(assert (=> d!1372817 (= lt!1670610 e!2793214)))

(declare-fun c!763868 () Bool)

(assert (=> d!1372817 (= c!763868 lt!1670609)))

(declare-fun containsKey!1591 (List!50563 (_ BitVec 64)) Bool)

(assert (=> d!1372817 (= lt!1670609 (containsKey!1591 (toList!4177 lt!1670558) hash!344))))

(assert (=> d!1372817 (= (contains!13058 lt!1670558 hash!344) lt!1670607)))

(declare-fun b!4484849 () Bool)

(declare-fun lt!1670608 () Unit!90047)

(assert (=> b!4484849 (= e!2793214 lt!1670608)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!878 (List!50563 (_ BitVec 64)) Unit!90047)

(assert (=> b!4484849 (= lt!1670608 (lemmaContainsKeyImpliesGetValueByKeyDefined!878 (toList!4177 lt!1670558) hash!344))))

(declare-fun isDefined!8281 (Option!10994) Bool)

(assert (=> b!4484849 (isDefined!8281 (getValueByKey!974 (toList!4177 lt!1670558) hash!344))))

(declare-fun b!4484850 () Bool)

(declare-fun Unit!90055 () Unit!90047)

(assert (=> b!4484850 (= e!2793214 Unit!90055)))

(declare-fun b!4484851 () Bool)

(assert (=> b!4484851 (= e!2793215 (isDefined!8281 (getValueByKey!974 (toList!4177 lt!1670558) hash!344)))))

(assert (= (and d!1372817 c!763868) b!4484849))

(assert (= (and d!1372817 (not c!763868)) b!4484850))

(assert (= (and d!1372817 (not res!1862749)) b!4484851))

(declare-fun m!5205475 () Bool)

(assert (=> d!1372817 m!5205475))

(declare-fun m!5205477 () Bool)

(assert (=> b!4484849 m!5205477))

(assert (=> b!4484849 m!5205465))

(assert (=> b!4484849 m!5205465))

(declare-fun m!5205479 () Bool)

(assert (=> b!4484849 m!5205479))

(assert (=> b!4484851 m!5205465))

(assert (=> b!4484851 m!5205465))

(assert (=> b!4484851 m!5205479))

(assert (=> b!4484781 d!1372817))

(declare-fun d!1372819 () Bool)

(declare-fun tail!7604 (List!50563) List!50563)

(assert (=> d!1372819 (= (tail!7602 lm!1477) (ListLongMap!2810 (tail!7604 (toList!4177 lm!1477))))))

(declare-fun bs!825773 () Bool)

(assert (= bs!825773 d!1372819))

(declare-fun m!5205481 () Bool)

(assert (=> bs!825773 m!5205481))

(assert (=> b!4484781 d!1372819))

(declare-fun d!1372821 () Bool)

(assert (=> d!1372821 (contains!13057 (toList!4177 lm!1477) (tuple2!50777 hash!344 lt!1670565))))

(declare-fun lt!1670613 () Unit!90047)

(declare-fun choose!28837 (List!50563 (_ BitVec 64) List!50562) Unit!90047)

(assert (=> d!1372821 (= lt!1670613 (choose!28837 (toList!4177 lm!1477) hash!344 lt!1670565))))

(declare-fun e!2793218 () Bool)

(assert (=> d!1372821 e!2793218))

(declare-fun res!1862752 () Bool)

(assert (=> d!1372821 (=> (not res!1862752) (not e!2793218))))

(assert (=> d!1372821 (= res!1862752 (isStrictlySorted!372 (toList!4177 lm!1477)))))

(assert (=> d!1372821 (= (lemmaGetValueByKeyImpliesContainsTuple!597 (toList!4177 lm!1477) hash!344 lt!1670565) lt!1670613)))

(declare-fun b!4484854 () Bool)

(assert (=> b!4484854 (= e!2793218 (= (getValueByKey!974 (toList!4177 lm!1477) hash!344) (Some!10993 lt!1670565)))))

(assert (= (and d!1372821 res!1862752) b!4484854))

(declare-fun m!5205483 () Bool)

(assert (=> d!1372821 m!5205483))

(declare-fun m!5205485 () Bool)

(assert (=> d!1372821 m!5205485))

(assert (=> d!1372821 m!5205473))

(declare-fun m!5205487 () Bool)

(assert (=> b!4484854 m!5205487))

(assert (=> b!4484779 d!1372821))

(declare-fun bs!825774 () Bool)

(declare-fun d!1372823 () Bool)

(assert (= bs!825774 (and d!1372823 start!441546)))

(declare-fun lambda!166198 () Int)

(assert (=> bs!825774 (= lambda!166198 lambda!166190)))

(assert (=> d!1372823 (contains!13058 lm!1477 (hash!2590 hashF!1107 key!3287))))

(declare-fun lt!1670616 () Unit!90047)

(declare-fun choose!28838 (ListLongMap!2809 K!11853 Hashable!5480) Unit!90047)

(assert (=> d!1372823 (= lt!1670616 (choose!28838 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1372823 (forall!10095 (toList!4177 lm!1477) lambda!166198)))

(assert (=> d!1372823 (= (lemmaInGenMapThenLongMapContainsHash!159 lm!1477 key!3287 hashF!1107) lt!1670616)))

(declare-fun bs!825775 () Bool)

(assert (= bs!825775 d!1372823))

(assert (=> bs!825775 m!5205379))

(assert (=> bs!825775 m!5205379))

(declare-fun m!5205489 () Bool)

(assert (=> bs!825775 m!5205489))

(declare-fun m!5205491 () Bool)

(assert (=> bs!825775 m!5205491))

(declare-fun m!5205493 () Bool)

(assert (=> bs!825775 m!5205493))

(assert (=> b!4484779 d!1372823))

(declare-fun d!1372827 () Bool)

(declare-fun e!2793220 () Bool)

(assert (=> d!1372827 e!2793220))

(declare-fun res!1862753 () Bool)

(assert (=> d!1372827 (=> res!1862753 e!2793220)))

(declare-fun lt!1670617 () Bool)

(assert (=> d!1372827 (= res!1862753 (not lt!1670617))))

(declare-fun lt!1670619 () Bool)

(assert (=> d!1372827 (= lt!1670617 lt!1670619)))

(declare-fun lt!1670620 () Unit!90047)

(declare-fun e!2793219 () Unit!90047)

(assert (=> d!1372827 (= lt!1670620 e!2793219)))

(declare-fun c!763869 () Bool)

(assert (=> d!1372827 (= c!763869 lt!1670619)))

(assert (=> d!1372827 (= lt!1670619 (containsKey!1591 (toList!4177 lm!1477) lt!1670563))))

(assert (=> d!1372827 (= (contains!13058 lm!1477 lt!1670563) lt!1670617)))

(declare-fun b!4484855 () Bool)

(declare-fun lt!1670618 () Unit!90047)

(assert (=> b!4484855 (= e!2793219 lt!1670618)))

(assert (=> b!4484855 (= lt!1670618 (lemmaContainsKeyImpliesGetValueByKeyDefined!878 (toList!4177 lm!1477) lt!1670563))))

(assert (=> b!4484855 (isDefined!8281 (getValueByKey!974 (toList!4177 lm!1477) lt!1670563))))

(declare-fun b!4484856 () Bool)

(declare-fun Unit!90056 () Unit!90047)

(assert (=> b!4484856 (= e!2793219 Unit!90056)))

(declare-fun b!4484857 () Bool)

(assert (=> b!4484857 (= e!2793220 (isDefined!8281 (getValueByKey!974 (toList!4177 lm!1477) lt!1670563)))))

(assert (= (and d!1372827 c!763869) b!4484855))

(assert (= (and d!1372827 (not c!763869)) b!4484856))

(assert (= (and d!1372827 (not res!1862753)) b!4484857))

(declare-fun m!5205495 () Bool)

(assert (=> d!1372827 m!5205495))

(declare-fun m!5205497 () Bool)

(assert (=> b!4484855 m!5205497))

(declare-fun m!5205499 () Bool)

(assert (=> b!4484855 m!5205499))

(assert (=> b!4484855 m!5205499))

(declare-fun m!5205501 () Bool)

(assert (=> b!4484855 m!5205501))

(assert (=> b!4484857 m!5205499))

(assert (=> b!4484857 m!5205499))

(assert (=> b!4484857 m!5205501))

(assert (=> b!4484779 d!1372827))

(declare-fun b!4484869 () Bool)

(declare-fun e!2793225 () List!50562)

(assert (=> b!4484869 (= e!2793225 Nil!50438)))

(declare-fun b!4484866 () Bool)

(declare-fun e!2793226 () List!50562)

(assert (=> b!4484866 (= e!2793226 (t!357516 lt!1670565))))

(declare-fun b!4484868 () Bool)

(assert (=> b!4484868 (= e!2793225 (Cons!50438 (h!56233 lt!1670565) (removePairForKey!712 (t!357516 lt!1670565) key!3287)))))

(declare-fun b!4484867 () Bool)

(assert (=> b!4484867 (= e!2793226 e!2793225)))

(declare-fun c!763874 () Bool)

(assert (=> b!4484867 (= c!763874 (is-Cons!50438 lt!1670565))))

(declare-fun d!1372829 () Bool)

(declare-fun lt!1670623 () List!50562)

(assert (=> d!1372829 (not (containsKey!1589 lt!1670623 key!3287))))

(assert (=> d!1372829 (= lt!1670623 e!2793226)))

(declare-fun c!763875 () Bool)

(assert (=> d!1372829 (= c!763875 (and (is-Cons!50438 lt!1670565) (= (_1!28681 (h!56233 lt!1670565)) key!3287)))))

(assert (=> d!1372829 (noDuplicateKeys!1085 lt!1670565)))

(assert (=> d!1372829 (= (removePairForKey!712 lt!1670565 key!3287) lt!1670623)))

(assert (= (and d!1372829 c!763875) b!4484866))

(assert (= (and d!1372829 (not c!763875)) b!4484867))

(assert (= (and b!4484867 c!763874) b!4484868))

(assert (= (and b!4484867 (not c!763874)) b!4484869))

(declare-fun m!5205503 () Bool)

(assert (=> b!4484868 m!5205503))

(declare-fun m!5205505 () Bool)

(assert (=> d!1372829 m!5205505))

(declare-fun m!5205507 () Bool)

(assert (=> d!1372829 m!5205507))

(assert (=> b!4484779 d!1372829))

(declare-fun d!1372831 () Bool)

(declare-fun lt!1670626 () Bool)

(declare-fun content!8188 (List!50563) (Set tuple2!50776))

(assert (=> d!1372831 (= lt!1670626 (set.member lt!1670564 (content!8188 (toList!4177 lm!1477))))))

(declare-fun e!2793232 () Bool)

(assert (=> d!1372831 (= lt!1670626 e!2793232)))

(declare-fun res!1862758 () Bool)

(assert (=> d!1372831 (=> (not res!1862758) (not e!2793232))))

(assert (=> d!1372831 (= res!1862758 (is-Cons!50439 (toList!4177 lm!1477)))))

(assert (=> d!1372831 (= (contains!13057 (toList!4177 lm!1477) lt!1670564) lt!1670626)))

(declare-fun b!4484874 () Bool)

(declare-fun e!2793231 () Bool)

(assert (=> b!4484874 (= e!2793232 e!2793231)))

(declare-fun res!1862759 () Bool)

(assert (=> b!4484874 (=> res!1862759 e!2793231)))

(assert (=> b!4484874 (= res!1862759 (= (h!56234 (toList!4177 lm!1477)) lt!1670564))))

(declare-fun b!4484875 () Bool)

(assert (=> b!4484875 (= e!2793231 (contains!13057 (t!357517 (toList!4177 lm!1477)) lt!1670564))))

(assert (= (and d!1372831 res!1862758) b!4484874))

(assert (= (and b!4484874 (not res!1862759)) b!4484875))

(declare-fun m!5205509 () Bool)

(assert (=> d!1372831 m!5205509))

(declare-fun m!5205511 () Bool)

(assert (=> d!1372831 m!5205511))

(assert (=> b!4484875 m!5205369))

(assert (=> b!4484779 d!1372831))

(declare-fun d!1372833 () Bool)

(assert (=> d!1372833 (= (apply!11822 lm!1477 hash!344) (get!16460 (getValueByKey!974 (toList!4177 lm!1477) hash!344)))))

(declare-fun bs!825776 () Bool)

(assert (= bs!825776 d!1372833))

(assert (=> bs!825776 m!5205487))

(assert (=> bs!825776 m!5205487))

(declare-fun m!5205513 () Bool)

(assert (=> bs!825776 m!5205513))

(assert (=> b!4484779 d!1372833))

(declare-fun d!1372835 () Bool)

(assert (=> d!1372835 (dynLambda!21061 lambda!166190 lt!1670564)))

(declare-fun lt!1670629 () Unit!90047)

(declare-fun choose!28839 (List!50563 Int tuple2!50776) Unit!90047)

(assert (=> d!1372835 (= lt!1670629 (choose!28839 (toList!4177 lm!1477) lambda!166190 lt!1670564))))

(declare-fun e!2793235 () Bool)

(assert (=> d!1372835 e!2793235))

(declare-fun res!1862762 () Bool)

(assert (=> d!1372835 (=> (not res!1862762) (not e!2793235))))

(assert (=> d!1372835 (= res!1862762 (forall!10095 (toList!4177 lm!1477) lambda!166190))))

(assert (=> d!1372835 (= (forallContained!2356 (toList!4177 lm!1477) lambda!166190 lt!1670564) lt!1670629)))

(declare-fun b!4484878 () Bool)

(assert (=> b!4484878 (= e!2793235 (contains!13057 (toList!4177 lm!1477) lt!1670564))))

(assert (= (and d!1372835 res!1862762) b!4484878))

(declare-fun b_lambda!150555 () Bool)

(assert (=> (not b_lambda!150555) (not d!1372835)))

(declare-fun m!5205515 () Bool)

(assert (=> d!1372835 m!5205515))

(declare-fun m!5205517 () Bool)

(assert (=> d!1372835 m!5205517))

(assert (=> d!1372835 m!5205381))

(assert (=> b!4484878 m!5205405))

(assert (=> b!4484779 d!1372835))

(declare-fun b!4484897 () Bool)

(declare-fun e!2793251 () Bool)

(declare-datatypes ((List!50566 0))(
  ( (Nil!50442) (Cons!50442 (h!56239 K!11853) (t!357520 List!50566)) )
))
(declare-fun contains!13062 (List!50566 K!11853) Bool)

(declare-fun keys!17457 (ListMap!3439) List!50566)

(assert (=> b!4484897 (= e!2793251 (not (contains!13062 (keys!17457 (extractMap!1141 (toList!4177 lm!1477))) key!3287)))))

(declare-fun b!4484898 () Bool)

(declare-fun e!2793249 () Unit!90047)

(declare-fun lt!1670656 () Unit!90047)

(assert (=> b!4484898 (= e!2793249 lt!1670656)))

(declare-fun lt!1670651 () Unit!90047)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!879 (List!50562 K!11853) Unit!90047)

(assert (=> b!4484898 (= lt!1670651 (lemmaContainsKeyImpliesGetValueByKeyDefined!879 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(declare-datatypes ((Option!10995 0))(
  ( (None!10994) (Some!10994 (v!44401 V!12099)) )
))
(declare-fun isDefined!8282 (Option!10995) Bool)

(declare-fun getValueByKey!975 (List!50562 K!11853) Option!10995)

(assert (=> b!4484898 (isDefined!8282 (getValueByKey!975 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(declare-fun lt!1670654 () Unit!90047)

(assert (=> b!4484898 (= lt!1670654 lt!1670651)))

(declare-fun lemmaInListThenGetKeysListContains!402 (List!50562 K!11853) Unit!90047)

(assert (=> b!4484898 (= lt!1670656 (lemmaInListThenGetKeysListContains!402 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(declare-fun call!312182 () Bool)

(assert (=> b!4484898 call!312182))

(declare-fun b!4484899 () Bool)

(declare-fun e!2793248 () Bool)

(assert (=> b!4484899 (= e!2793248 (contains!13062 (keys!17457 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(declare-fun b!4484900 () Bool)

(declare-fun e!2793252 () List!50566)

(declare-fun getKeysList!406 (List!50562) List!50566)

(assert (=> b!4484900 (= e!2793252 (getKeysList!406 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))))

(declare-fun b!4484901 () Bool)

(assert (=> b!4484901 (= e!2793252 (keys!17457 (extractMap!1141 (toList!4177 lm!1477))))))

(declare-fun b!4484902 () Bool)

(declare-fun e!2793250 () Unit!90047)

(assert (=> b!4484902 (= e!2793249 e!2793250)))

(declare-fun c!763884 () Bool)

(assert (=> b!4484902 (= c!763884 call!312182)))

(declare-fun bm!312177 () Bool)

(assert (=> bm!312177 (= call!312182 (contains!13062 e!2793252 key!3287))))

(declare-fun c!763883 () Bool)

(declare-fun c!763882 () Bool)

(assert (=> bm!312177 (= c!763883 c!763882)))

(declare-fun b!4484904 () Bool)

(declare-fun Unit!90057 () Unit!90047)

(assert (=> b!4484904 (= e!2793250 Unit!90057)))

(declare-fun b!4484905 () Bool)

(assert (=> b!4484905 false))

(declare-fun lt!1670653 () Unit!90047)

(declare-fun lt!1670649 () Unit!90047)

(assert (=> b!4484905 (= lt!1670653 lt!1670649)))

(declare-fun containsKey!1592 (List!50562 K!11853) Bool)

(assert (=> b!4484905 (containsKey!1592 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!405 (List!50562 K!11853) Unit!90047)

(assert (=> b!4484905 (= lt!1670649 (lemmaInGetKeysListThenContainsKey!405 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(declare-fun Unit!90058 () Unit!90047)

(assert (=> b!4484905 (= e!2793250 Unit!90058)))

(declare-fun d!1372837 () Bool)

(declare-fun e!2793253 () Bool)

(assert (=> d!1372837 e!2793253))

(declare-fun res!1862769 () Bool)

(assert (=> d!1372837 (=> res!1862769 e!2793253)))

(assert (=> d!1372837 (= res!1862769 e!2793251)))

(declare-fun res!1862770 () Bool)

(assert (=> d!1372837 (=> (not res!1862770) (not e!2793251))))

(declare-fun lt!1670655 () Bool)

(assert (=> d!1372837 (= res!1862770 (not lt!1670655))))

(declare-fun lt!1670652 () Bool)

(assert (=> d!1372837 (= lt!1670655 lt!1670652)))

(declare-fun lt!1670650 () Unit!90047)

(assert (=> d!1372837 (= lt!1670650 e!2793249)))

(assert (=> d!1372837 (= c!763882 lt!1670652)))

(assert (=> d!1372837 (= lt!1670652 (containsKey!1592 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(assert (=> d!1372837 (= (contains!13056 (extractMap!1141 (toList!4177 lm!1477)) key!3287) lt!1670655)))

(declare-fun b!4484903 () Bool)

(assert (=> b!4484903 (= e!2793253 e!2793248)))

(declare-fun res!1862771 () Bool)

(assert (=> b!4484903 (=> (not res!1862771) (not e!2793248))))

(assert (=> b!4484903 (= res!1862771 (isDefined!8282 (getValueByKey!975 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287)))))

(assert (= (and d!1372837 c!763882) b!4484898))

(assert (= (and d!1372837 (not c!763882)) b!4484902))

(assert (= (and b!4484902 c!763884) b!4484905))

(assert (= (and b!4484902 (not c!763884)) b!4484904))

(assert (= (or b!4484898 b!4484902) bm!312177))

(assert (= (and bm!312177 c!763883) b!4484900))

(assert (= (and bm!312177 (not c!763883)) b!4484901))

(assert (= (and d!1372837 res!1862770) b!4484897))

(assert (= (and d!1372837 (not res!1862769)) b!4484903))

(assert (= (and b!4484903 res!1862771) b!4484899))

(declare-fun m!5205523 () Bool)

(assert (=> bm!312177 m!5205523))

(declare-fun m!5205525 () Bool)

(assert (=> b!4484903 m!5205525))

(assert (=> b!4484903 m!5205525))

(declare-fun m!5205527 () Bool)

(assert (=> b!4484903 m!5205527))

(assert (=> b!4484897 m!5205389))

(declare-fun m!5205529 () Bool)

(assert (=> b!4484897 m!5205529))

(assert (=> b!4484897 m!5205529))

(declare-fun m!5205531 () Bool)

(assert (=> b!4484897 m!5205531))

(declare-fun m!5205533 () Bool)

(assert (=> b!4484905 m!5205533))

(declare-fun m!5205535 () Bool)

(assert (=> b!4484905 m!5205535))

(declare-fun m!5205537 () Bool)

(assert (=> b!4484900 m!5205537))

(assert (=> d!1372837 m!5205533))

(declare-fun m!5205539 () Bool)

(assert (=> b!4484898 m!5205539))

(assert (=> b!4484898 m!5205525))

(assert (=> b!4484898 m!5205525))

(assert (=> b!4484898 m!5205527))

(declare-fun m!5205541 () Bool)

(assert (=> b!4484898 m!5205541))

(assert (=> b!4484901 m!5205389))

(assert (=> b!4484901 m!5205529))

(assert (=> b!4484899 m!5205389))

(assert (=> b!4484899 m!5205529))

(assert (=> b!4484899 m!5205529))

(assert (=> b!4484899 m!5205531))

(assert (=> b!4484769 d!1372837))

(declare-fun bs!825780 () Bool)

(declare-fun d!1372841 () Bool)

(assert (= bs!825780 (and d!1372841 start!441546)))

(declare-fun lambda!166207 () Int)

(assert (=> bs!825780 (= lambda!166207 lambda!166190)))

(declare-fun bs!825781 () Bool)

(assert (= bs!825781 (and d!1372841 d!1372823)))

(assert (=> bs!825781 (= lambda!166207 lambda!166198)))

(declare-fun lt!1670659 () ListMap!3439)

(declare-fun invariantList!958 (List!50562) Bool)

(assert (=> d!1372841 (invariantList!958 (toList!4178 lt!1670659))))

(declare-fun e!2793262 () ListMap!3439)

(assert (=> d!1372841 (= lt!1670659 e!2793262)))

(declare-fun c!763887 () Bool)

(assert (=> d!1372841 (= c!763887 (is-Cons!50439 (toList!4177 lm!1477)))))

(assert (=> d!1372841 (forall!10095 (toList!4177 lm!1477) lambda!166207)))

(assert (=> d!1372841 (= (extractMap!1141 (toList!4177 lm!1477)) lt!1670659)))

(declare-fun b!4484920 () Bool)

(declare-fun addToMapMapFromBucket!626 (List!50562 ListMap!3439) ListMap!3439)

(assert (=> b!4484920 (= e!2793262 (addToMapMapFromBucket!626 (_2!28682 (h!56234 (toList!4177 lm!1477))) (extractMap!1141 (t!357517 (toList!4177 lm!1477)))))))

(declare-fun b!4484921 () Bool)

(assert (=> b!4484921 (= e!2793262 (ListMap!3440 Nil!50438))))

(assert (= (and d!1372841 c!763887) b!4484920))

(assert (= (and d!1372841 (not c!763887)) b!4484921))

(declare-fun m!5205549 () Bool)

(assert (=> d!1372841 m!5205549))

(declare-fun m!5205551 () Bool)

(assert (=> d!1372841 m!5205551))

(declare-fun m!5205553 () Bool)

(assert (=> b!4484920 m!5205553))

(assert (=> b!4484920 m!5205553))

(declare-fun m!5205555 () Bool)

(assert (=> b!4484920 m!5205555))

(assert (=> b!4484769 d!1372841))

(declare-fun d!1372847 () Bool)

(declare-fun res!1862784 () Bool)

(declare-fun e!2793269 () Bool)

(assert (=> d!1372847 (=> res!1862784 e!2793269)))

(declare-fun e!2793271 () Bool)

(assert (=> d!1372847 (= res!1862784 e!2793271)))

(declare-fun res!1862785 () Bool)

(assert (=> d!1372847 (=> (not res!1862785) (not e!2793271))))

(assert (=> d!1372847 (= res!1862785 (is-Cons!50439 (t!357517 (toList!4177 lm!1477))))))

(assert (=> d!1372847 (= (containsKeyBiggerList!65 (t!357517 (toList!4177 lm!1477)) key!3287) e!2793269)))

(declare-fun b!4484928 () Bool)

(assert (=> b!4484928 (= e!2793271 (containsKey!1589 (_2!28682 (h!56234 (t!357517 (toList!4177 lm!1477)))) key!3287))))

(declare-fun b!4484929 () Bool)

(declare-fun e!2793270 () Bool)

(assert (=> b!4484929 (= e!2793269 e!2793270)))

(declare-fun res!1862786 () Bool)

(assert (=> b!4484929 (=> (not res!1862786) (not e!2793270))))

(assert (=> b!4484929 (= res!1862786 (is-Cons!50439 (t!357517 (toList!4177 lm!1477))))))

(declare-fun b!4484930 () Bool)

(assert (=> b!4484930 (= e!2793270 (containsKeyBiggerList!65 (t!357517 (t!357517 (toList!4177 lm!1477))) key!3287))))

(assert (= (and d!1372847 res!1862785) b!4484928))

(assert (= (and d!1372847 (not res!1862784)) b!4484929))

(assert (= (and b!4484929 res!1862786) b!4484930))

(declare-fun m!5205559 () Bool)

(assert (=> b!4484928 m!5205559))

(declare-fun m!5205561 () Bool)

(assert (=> b!4484930 m!5205561))

(assert (=> b!4484778 d!1372847))

(declare-fun d!1372851 () Bool)

(declare-fun res!1862787 () Bool)

(declare-fun e!2793272 () Bool)

(assert (=> d!1372851 (=> res!1862787 e!2793272)))

(declare-fun e!2793274 () Bool)

(assert (=> d!1372851 (= res!1862787 e!2793274)))

(declare-fun res!1862788 () Bool)

(assert (=> d!1372851 (=> (not res!1862788) (not e!2793274))))

(assert (=> d!1372851 (= res!1862788 (is-Cons!50439 (toList!4177 lt!1670558)))))

(assert (=> d!1372851 (= (containsKeyBiggerList!65 (toList!4177 lt!1670558) key!3287) e!2793272)))

(declare-fun b!4484931 () Bool)

(assert (=> b!4484931 (= e!2793274 (containsKey!1589 (_2!28682 (h!56234 (toList!4177 lt!1670558))) key!3287))))

(declare-fun b!4484932 () Bool)

(declare-fun e!2793273 () Bool)

(assert (=> b!4484932 (= e!2793272 e!2793273)))

(declare-fun res!1862789 () Bool)

(assert (=> b!4484932 (=> (not res!1862789) (not e!2793273))))

(assert (=> b!4484932 (= res!1862789 (is-Cons!50439 (toList!4177 lt!1670558)))))

(declare-fun b!4484933 () Bool)

(assert (=> b!4484933 (= e!2793273 (containsKeyBiggerList!65 (t!357517 (toList!4177 lt!1670558)) key!3287))))

(assert (= (and d!1372851 res!1862788) b!4484931))

(assert (= (and d!1372851 (not res!1862787)) b!4484932))

(assert (= (and b!4484932 res!1862789) b!4484933))

(declare-fun m!5205563 () Bool)

(assert (=> b!4484931 m!5205563))

(declare-fun m!5205565 () Bool)

(assert (=> b!4484933 m!5205565))

(assert (=> b!4484778 d!1372851))

(declare-fun bs!825783 () Bool)

(declare-fun d!1372853 () Bool)

(assert (= bs!825783 (and d!1372853 start!441546)))

(declare-fun lambda!166210 () Int)

(assert (=> bs!825783 (= lambda!166210 lambda!166190)))

(declare-fun bs!825784 () Bool)

(assert (= bs!825784 (and d!1372853 d!1372823)))

(assert (=> bs!825784 (= lambda!166210 lambda!166198)))

(declare-fun bs!825785 () Bool)

(assert (= bs!825785 (and d!1372853 d!1372841)))

(assert (=> bs!825785 (= lambda!166210 lambda!166207)))

(assert (=> d!1372853 (containsKeyBiggerList!65 (toList!4177 lt!1670558) key!3287)))

(declare-fun lt!1670662 () Unit!90047)

(declare-fun choose!28840 (ListLongMap!2809 K!11853 Hashable!5480) Unit!90047)

(assert (=> d!1372853 (= lt!1670662 (choose!28840 lt!1670558 key!3287 hashF!1107))))

(assert (=> d!1372853 (forall!10095 (toList!4177 lt!1670558) lambda!166210)))

(assert (=> d!1372853 (= (lemmaInLongMapThenContainsKeyBiggerList!1 lt!1670558 key!3287 hashF!1107) lt!1670662)))

(declare-fun bs!825786 () Bool)

(assert (= bs!825786 d!1372853))

(assert (=> bs!825786 m!5205375))

(declare-fun m!5205567 () Bool)

(assert (=> bs!825786 m!5205567))

(declare-fun m!5205569 () Bool)

(assert (=> bs!825786 m!5205569))

(assert (=> b!4484778 d!1372853))

(declare-fun bs!825787 () Bool)

(declare-fun d!1372855 () Bool)

(assert (= bs!825787 (and d!1372855 start!441546)))

(declare-fun lambda!166213 () Int)

(assert (=> bs!825787 (= lambda!166213 lambda!166190)))

(declare-fun bs!825788 () Bool)

(assert (= bs!825788 (and d!1372855 d!1372823)))

(assert (=> bs!825788 (= lambda!166213 lambda!166198)))

(declare-fun bs!825789 () Bool)

(assert (= bs!825789 (and d!1372855 d!1372841)))

(assert (=> bs!825789 (= lambda!166213 lambda!166207)))

(declare-fun bs!825790 () Bool)

(assert (= bs!825790 (and d!1372855 d!1372853)))

(assert (=> bs!825790 (= lambda!166213 lambda!166210)))

(assert (=> d!1372855 (not (contains!13056 (extractMap!1141 (toList!4177 lm!1477)) key!3287))))

(declare-fun lt!1670677 () Unit!90047)

(declare-fun choose!28841 (ListLongMap!2809 K!11853 Hashable!5480) Unit!90047)

(assert (=> d!1372855 (= lt!1670677 (choose!28841 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1372855 (forall!10095 (toList!4177 lm!1477) lambda!166213)))

(assert (=> d!1372855 (= (lemmaNotInItsHashBucketThenNotInMap!73 lm!1477 key!3287 hashF!1107) lt!1670677)))

(declare-fun bs!825791 () Bool)

(assert (= bs!825791 d!1372855))

(assert (=> bs!825791 m!5205389))

(assert (=> bs!825791 m!5205389))

(assert (=> bs!825791 m!5205391))

(declare-fun m!5205577 () Bool)

(assert (=> bs!825791 m!5205577))

(declare-fun m!5205579 () Bool)

(assert (=> bs!825791 m!5205579))

(assert (=> b!4484776 d!1372855))

(declare-fun d!1372857 () Bool)

(declare-fun res!1862797 () Bool)

(declare-fun e!2793285 () Bool)

(assert (=> d!1372857 (=> res!1862797 e!2793285)))

(assert (=> d!1372857 (= res!1862797 (not (is-Cons!50438 newBucket!178)))))

(assert (=> d!1372857 (= (noDuplicateKeys!1085 newBucket!178) e!2793285)))

(declare-fun b!4484947 () Bool)

(declare-fun e!2793286 () Bool)

(assert (=> b!4484947 (= e!2793285 e!2793286)))

(declare-fun res!1862798 () Bool)

(assert (=> b!4484947 (=> (not res!1862798) (not e!2793286))))

(assert (=> b!4484947 (= res!1862798 (not (containsKey!1589 (t!357516 newBucket!178) (_1!28681 (h!56233 newBucket!178)))))))

(declare-fun b!4484948 () Bool)

(assert (=> b!4484948 (= e!2793286 (noDuplicateKeys!1085 (t!357516 newBucket!178)))))

(assert (= (and d!1372857 (not res!1862797)) b!4484947))

(assert (= (and b!4484947 res!1862798) b!4484948))

(declare-fun m!5205583 () Bool)

(assert (=> b!4484947 m!5205583))

(declare-fun m!5205585 () Bool)

(assert (=> b!4484948 m!5205585))

(assert (=> b!4484777 d!1372857))

(declare-fun d!1372861 () Bool)

(declare-fun res!1862803 () Bool)

(declare-fun e!2793291 () Bool)

(assert (=> d!1372861 (=> res!1862803 e!2793291)))

(assert (=> d!1372861 (= res!1862803 (and (is-Cons!50438 lt!1670565) (= (_1!28681 (h!56233 lt!1670565)) key!3287)))))

(assert (=> d!1372861 (= (containsKey!1589 lt!1670565 key!3287) e!2793291)))

(declare-fun b!4484953 () Bool)

(declare-fun e!2793292 () Bool)

(assert (=> b!4484953 (= e!2793291 e!2793292)))

(declare-fun res!1862804 () Bool)

(assert (=> b!4484953 (=> (not res!1862804) (not e!2793292))))

(assert (=> b!4484953 (= res!1862804 (is-Cons!50438 lt!1670565))))

(declare-fun b!4484954 () Bool)

(assert (=> b!4484954 (= e!2793292 (containsKey!1589 (t!357516 lt!1670565) key!3287))))

(assert (= (and d!1372861 (not res!1862803)) b!4484953))

(assert (= (and b!4484953 res!1862804) b!4484954))

(declare-fun m!5205589 () Bool)

(assert (=> b!4484954 m!5205589))

(assert (=> b!4484775 d!1372861))

(declare-fun d!1372865 () Bool)

(assert (=> d!1372865 true))

(assert (=> d!1372865 true))

(declare-fun lambda!166216 () Int)

(declare-fun forall!10097 (List!50562 Int) Bool)

(assert (=> d!1372865 (= (allKeysSameHash!939 newBucket!178 hash!344 hashF!1107) (forall!10097 newBucket!178 lambda!166216))))

(declare-fun bs!825793 () Bool)

(assert (= bs!825793 d!1372865))

(declare-fun m!5205591 () Bool)

(assert (=> bs!825793 m!5205591))

(assert (=> b!4484784 d!1372865))

(declare-fun d!1372867 () Bool)

(declare-fun lt!1670678 () Bool)

(assert (=> d!1372867 (= lt!1670678 (set.member lt!1670564 (content!8188 (t!357517 (toList!4177 lm!1477)))))))

(declare-fun e!2793294 () Bool)

(assert (=> d!1372867 (= lt!1670678 e!2793294)))

(declare-fun res!1862805 () Bool)

(assert (=> d!1372867 (=> (not res!1862805) (not e!2793294))))

(assert (=> d!1372867 (= res!1862805 (is-Cons!50439 (t!357517 (toList!4177 lm!1477))))))

(assert (=> d!1372867 (= (contains!13057 (t!357517 (toList!4177 lm!1477)) lt!1670564) lt!1670678)))

(declare-fun b!4484959 () Bool)

(declare-fun e!2793293 () Bool)

(assert (=> b!4484959 (= e!2793294 e!2793293)))

(declare-fun res!1862806 () Bool)

(assert (=> b!4484959 (=> res!1862806 e!2793293)))

(assert (=> b!4484959 (= res!1862806 (= (h!56234 (t!357517 (toList!4177 lm!1477))) lt!1670564))))

(declare-fun b!4484960 () Bool)

(assert (=> b!4484960 (= e!2793293 (contains!13057 (t!357517 (t!357517 (toList!4177 lm!1477))) lt!1670564))))

(assert (= (and d!1372867 res!1862805) b!4484959))

(assert (= (and b!4484959 (not res!1862806)) b!4484960))

(declare-fun m!5205593 () Bool)

(assert (=> d!1372867 m!5205593))

(declare-fun m!5205595 () Bool)

(assert (=> d!1372867 m!5205595))

(declare-fun m!5205597 () Bool)

(assert (=> b!4484960 m!5205597))

(assert (=> b!4484785 d!1372867))

(declare-fun bs!825794 () Bool)

(declare-fun d!1372869 () Bool)

(assert (= bs!825794 (and d!1372869 d!1372841)))

(declare-fun lambda!166219 () Int)

(assert (=> bs!825794 (not (= lambda!166219 lambda!166207))))

(declare-fun bs!825795 () Bool)

(assert (= bs!825795 (and d!1372869 d!1372853)))

(assert (=> bs!825795 (not (= lambda!166219 lambda!166210))))

(declare-fun bs!825796 () Bool)

(assert (= bs!825796 (and d!1372869 d!1372855)))

(assert (=> bs!825796 (not (= lambda!166219 lambda!166213))))

(declare-fun bs!825797 () Bool)

(assert (= bs!825797 (and d!1372869 start!441546)))

(assert (=> bs!825797 (not (= lambda!166219 lambda!166190))))

(declare-fun bs!825798 () Bool)

(assert (= bs!825798 (and d!1372869 d!1372823)))

(assert (=> bs!825798 (not (= lambda!166219 lambda!166198))))

(assert (=> d!1372869 true))

(assert (=> d!1372869 (= (allKeysSameHashInMap!1192 lm!1477 hashF!1107) (forall!10095 (toList!4177 lm!1477) lambda!166219))))

(declare-fun bs!825799 () Bool)

(assert (= bs!825799 d!1372869))

(declare-fun m!5205599 () Bool)

(assert (=> bs!825799 m!5205599))

(assert (=> b!4484773 d!1372869))

(declare-fun d!1372871 () Bool)

(declare-fun hash!2592 (Hashable!5480 K!11853) (_ BitVec 64))

(assert (=> d!1372871 (= (hash!2590 hashF!1107 key!3287) (hash!2592 hashF!1107 key!3287))))

(declare-fun bs!825800 () Bool)

(assert (= bs!825800 d!1372871))

(declare-fun m!5205601 () Bool)

(assert (=> bs!825800 m!5205601))

(assert (=> b!4484771 d!1372871))

(declare-fun d!1372873 () Bool)

(declare-fun isEmpty!28536 (List!50563) Bool)

(assert (=> d!1372873 (= (isEmpty!28534 lm!1477) (isEmpty!28536 (toList!4177 lm!1477)))))

(declare-fun bs!825801 () Bool)

(assert (= bs!825801 d!1372873))

(declare-fun m!5205609 () Bool)

(assert (=> bs!825801 m!5205609))

(assert (=> b!4484782 d!1372873))

(declare-fun b!4484973 () Bool)

(declare-fun e!2793303 () Bool)

(declare-fun tp!1336956 () Bool)

(declare-fun tp!1336957 () Bool)

(assert (=> b!4484973 (= e!2793303 (and tp!1336956 tp!1336957))))

(assert (=> b!4484780 (= tp!1336945 e!2793303)))

(assert (= (and b!4484780 (is-Cons!50439 (toList!4177 lm!1477))) b!4484973))

(declare-fun e!2793306 () Bool)

(declare-fun tp!1336960 () Bool)

(declare-fun b!4484978 () Bool)

(assert (=> b!4484978 (= e!2793306 (and tp_is_empty!27617 tp_is_empty!27619 tp!1336960))))

(assert (=> b!4484783 (= tp!1336944 e!2793306)))

(assert (= (and b!4484783 (is-Cons!50438 (t!357516 newBucket!178))) b!4484978))

(declare-fun b_lambda!150559 () Bool)

(assert (= b_lambda!150553 (or start!441546 b_lambda!150559)))

(declare-fun bs!825802 () Bool)

(declare-fun d!1372877 () Bool)

(assert (= bs!825802 (and d!1372877 start!441546)))

(assert (=> bs!825802 (= (dynLambda!21061 lambda!166190 (h!56234 (toList!4177 lm!1477))) (noDuplicateKeys!1085 (_2!28682 (h!56234 (toList!4177 lm!1477)))))))

(declare-fun m!5205611 () Bool)

(assert (=> bs!825802 m!5205611))

(assert (=> b!4484841 d!1372877))

(declare-fun b_lambda!150561 () Bool)

(assert (= b_lambda!150555 (or start!441546 b_lambda!150561)))

(declare-fun bs!825803 () Bool)

(declare-fun d!1372879 () Bool)

(assert (= bs!825803 (and d!1372879 start!441546)))

(assert (=> bs!825803 (= (dynLambda!21061 lambda!166190 lt!1670564) (noDuplicateKeys!1085 (_2!28682 lt!1670564)))))

(declare-fun m!5205613 () Bool)

(assert (=> bs!825803 m!5205613))

(assert (=> d!1372835 d!1372879))

(push 1)

(assert (not d!1372819))

(assert (not d!1372827))

(assert (not b!4484900))

(assert (not b_lambda!150559))

(assert (not d!1372817))

(assert (not d!1372815))

(assert (not b!4484947))

(assert (not b!4484905))

(assert (not bs!825803))

(assert (not b!4484854))

(assert (not d!1372841))

(assert (not d!1372869))

(assert (not b!4484901))

(assert (not b!4484899))

(assert (not d!1372865))

(assert (not d!1372829))

(assert (not b!4484898))

(assert (not d!1372821))

(assert (not b!4484930))

(assert (not b!4484857))

(assert (not b!4484920))

(assert (not b!4484978))

(assert (not b!4484897))

(assert (not b_lambda!150561))

(assert (not d!1372831))

(assert (not b!4484928))

(assert (not b!4484948))

(assert (not d!1372837))

(assert (not b!4484954))

(assert tp_is_empty!27617)

(assert (not b!4484875))

(assert (not b!4484931))

(assert (not b!4484851))

(assert (not b!4484933))

(assert (not b!4484842))

(assert (not d!1372833))

(assert (not b!4484973))

(assert (not d!1372823))

(assert (not b!4484903))

(assert (not b!4484878))

(assert (not b!4484960))

(assert (not b!4484849))

(assert (not bm!312177))

(assert (not d!1372835))

(assert (not d!1372867))

(assert (not b!4484855))

(assert (not d!1372855))

(assert (not d!1372871))

(assert (not d!1372853))

(assert (not bs!825802))

(assert (not d!1372811))

(assert tp_is_empty!27619)

(assert (not d!1372873))

(assert (not b!4484868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1372919 () Bool)

(declare-fun res!1862855 () Bool)

(declare-fun e!2793374 () Bool)

(assert (=> d!1372919 (=> res!1862855 e!2793374)))

(assert (=> d!1372919 (= res!1862855 (and (is-Cons!50438 (t!357516 lt!1670565)) (= (_1!28681 (h!56233 (t!357516 lt!1670565))) key!3287)))))

(assert (=> d!1372919 (= (containsKey!1589 (t!357516 lt!1670565) key!3287) e!2793374)))

(declare-fun b!4485071 () Bool)

(declare-fun e!2793375 () Bool)

(assert (=> b!4485071 (= e!2793374 e!2793375)))

(declare-fun res!1862856 () Bool)

(assert (=> b!4485071 (=> (not res!1862856) (not e!2793375))))

(assert (=> b!4485071 (= res!1862856 (is-Cons!50438 (t!357516 lt!1670565)))))

(declare-fun b!4485072 () Bool)

(assert (=> b!4485072 (= e!2793375 (containsKey!1589 (t!357516 (t!357516 lt!1670565)) key!3287))))

(assert (= (and d!1372919 (not res!1862855)) b!4485071))

(assert (= (and b!4485071 res!1862856) b!4485072))

(declare-fun m!5205709 () Bool)

(assert (=> b!4485072 m!5205709))

(assert (=> b!4484954 d!1372919))

(assert (=> d!1372855 d!1372837))

(assert (=> d!1372855 d!1372841))

(declare-fun d!1372921 () Bool)

(assert (=> d!1372921 (not (contains!13056 (extractMap!1141 (toList!4177 lm!1477)) key!3287))))

(assert (=> d!1372921 true))

(declare-fun _$26!266 () Unit!90047)

(assert (=> d!1372921 (= (choose!28841 lm!1477 key!3287 hashF!1107) _$26!266)))

(declare-fun bs!825827 () Bool)

(assert (= bs!825827 d!1372921))

(assert (=> bs!825827 m!5205389))

(assert (=> bs!825827 m!5205389))

(assert (=> bs!825827 m!5205391))

(assert (=> d!1372855 d!1372921))

(declare-fun d!1372923 () Bool)

(declare-fun res!1862857 () Bool)

(declare-fun e!2793376 () Bool)

(assert (=> d!1372923 (=> res!1862857 e!2793376)))

(assert (=> d!1372923 (= res!1862857 (is-Nil!50439 (toList!4177 lm!1477)))))

(assert (=> d!1372923 (= (forall!10095 (toList!4177 lm!1477) lambda!166213) e!2793376)))

(declare-fun b!4485073 () Bool)

(declare-fun e!2793377 () Bool)

(assert (=> b!4485073 (= e!2793376 e!2793377)))

(declare-fun res!1862858 () Bool)

(assert (=> b!4485073 (=> (not res!1862858) (not e!2793377))))

(assert (=> b!4485073 (= res!1862858 (dynLambda!21061 lambda!166213 (h!56234 (toList!4177 lm!1477))))))

(declare-fun b!4485074 () Bool)

(assert (=> b!4485074 (= e!2793377 (forall!10095 (t!357517 (toList!4177 lm!1477)) lambda!166213))))

(assert (= (and d!1372923 (not res!1862857)) b!4485073))

(assert (= (and b!4485073 res!1862858) b!4485074))

(declare-fun b_lambda!150569 () Bool)

(assert (=> (not b_lambda!150569) (not b!4485073)))

(declare-fun m!5205711 () Bool)

(assert (=> b!4485073 m!5205711))

(declare-fun m!5205713 () Bool)

(assert (=> b!4485074 m!5205713))

(assert (=> d!1372855 d!1372923))

(declare-fun b!4485098 () Bool)

(assert (=> b!4485098 true))

(declare-fun bs!825828 () Bool)

(declare-fun b!4485097 () Bool)

(assert (= bs!825828 (and b!4485097 b!4485098)))

(declare-fun lambda!166241 () Int)

(declare-fun lambda!166240 () Int)

(assert (=> bs!825828 (= (= (Cons!50438 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) (= lambda!166241 lambda!166240))))

(assert (=> b!4485097 true))

(declare-fun bs!825829 () Bool)

(declare-fun b!4485093 () Bool)

(assert (= bs!825829 (and b!4485093 b!4485098)))

(declare-fun lambda!166242 () Int)

(assert (=> bs!825829 (= (= (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) (= lambda!166242 lambda!166240))))

(declare-fun bs!825830 () Bool)

(assert (= bs!825830 (and b!4485093 b!4485097)))

(assert (=> bs!825830 (= (= (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) (Cons!50438 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))) (= lambda!166242 lambda!166241))))

(assert (=> b!4485093 true))

(declare-fun res!1862867 () Bool)

(declare-fun e!2793386 () Bool)

(assert (=> b!4485093 (=> (not res!1862867) (not e!2793386))))

(declare-fun lt!1670743 () List!50566)

(declare-fun forall!10099 (List!50566 Int) Bool)

(assert (=> b!4485093 (= res!1862867 (forall!10099 lt!1670743 lambda!166242))))

(declare-fun b!4485094 () Bool)

(declare-fun e!2793387 () Unit!90047)

(declare-fun Unit!90063 () Unit!90047)

(assert (=> b!4485094 (= e!2793387 Unit!90063)))

(declare-fun b!4485095 () Bool)

(declare-fun e!2793389 () List!50566)

(assert (=> b!4485095 (= e!2793389 Nil!50442)))

(declare-fun b!4485096 () Bool)

(declare-fun res!1862865 () Bool)

(assert (=> b!4485096 (=> (not res!1862865) (not e!2793386))))

(declare-fun length!278 (List!50566) Int)

(declare-fun length!279 (List!50562) Int)

(assert (=> b!4485096 (= res!1862865 (= (length!278 lt!1670743) (length!279 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))))))

(assert (=> b!4485097 (= e!2793389 (Cons!50442 (_1!28681 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) (getKeysList!406 (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))))))

(declare-fun c!763916 () Bool)

(assert (=> b!4485097 (= c!763916 (containsKey!1592 (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) (_1!28681 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))))))

(declare-fun lt!1670745 () Unit!90047)

(declare-fun e!2793388 () Unit!90047)

(assert (=> b!4485097 (= lt!1670745 e!2793388)))

(declare-fun c!763917 () Bool)

(assert (=> b!4485097 (= c!763917 (contains!13062 (getKeysList!406 (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) (_1!28681 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))))))

(declare-fun lt!1670749 () Unit!90047)

(assert (=> b!4485097 (= lt!1670749 e!2793387)))

(declare-fun lt!1670747 () List!50566)

(assert (=> b!4485097 (= lt!1670747 (getKeysList!406 (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))))))

(declare-fun lt!1670748 () Unit!90047)

(declare-fun lemmaForallContainsAddHeadPreserves!132 (List!50562 List!50566 tuple2!50774) Unit!90047)

(assert (=> b!4485097 (= lt!1670748 (lemmaForallContainsAddHeadPreserves!132 (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) lt!1670747 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))))))

(assert (=> b!4485097 (forall!10099 lt!1670747 lambda!166241)))

(declare-fun lt!1670746 () Unit!90047)

(assert (=> b!4485097 (= lt!1670746 lt!1670748)))

(assert (=> b!4485098 false))

(declare-fun lt!1670744 () Unit!90047)

(declare-fun forallContained!2358 (List!50566 Int K!11853) Unit!90047)

(assert (=> b!4485098 (= lt!1670744 (forallContained!2358 (getKeysList!406 (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) lambda!166240 (_1!28681 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))))))

(declare-fun Unit!90064 () Unit!90047)

(assert (=> b!4485098 (= e!2793387 Unit!90064)))

(declare-fun b!4485099 () Bool)

(assert (=> b!4485099 false))

(declare-fun Unit!90065 () Unit!90047)

(assert (=> b!4485099 (= e!2793388 Unit!90065)))

(declare-fun b!4485100 () Bool)

(declare-fun Unit!90066 () Unit!90047)

(assert (=> b!4485100 (= e!2793388 Unit!90066)))

(declare-fun d!1372925 () Bool)

(assert (=> d!1372925 e!2793386))

(declare-fun res!1862866 () Bool)

(assert (=> d!1372925 (=> (not res!1862866) (not e!2793386))))

(declare-fun noDuplicate!711 (List!50566) Bool)

(assert (=> d!1372925 (= res!1862866 (noDuplicate!711 lt!1670743))))

(assert (=> d!1372925 (= lt!1670743 e!2793389)))

(declare-fun c!763918 () Bool)

(assert (=> d!1372925 (= c!763918 (is-Cons!50438 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))))

(assert (=> d!1372925 (invariantList!958 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))))

(assert (=> d!1372925 (= (getKeysList!406 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) lt!1670743)))

(declare-fun b!4485101 () Bool)

(declare-fun lambda!166243 () Int)

(declare-fun content!8190 (List!50566) (Set K!11853))

(declare-fun map!11065 (List!50562 Int) List!50566)

(assert (=> b!4485101 (= e!2793386 (= (content!8190 lt!1670743) (content!8190 (map!11065 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) lambda!166243))))))

(assert (= (and d!1372925 c!763918) b!4485097))

(assert (= (and d!1372925 (not c!763918)) b!4485095))

(assert (= (and b!4485097 c!763916) b!4485099))

(assert (= (and b!4485097 (not c!763916)) b!4485100))

(assert (= (and b!4485097 c!763917) b!4485098))

(assert (= (and b!4485097 (not c!763917)) b!4485094))

(assert (= (and d!1372925 res!1862866) b!4485096))

(assert (= (and b!4485096 res!1862865) b!4485093))

(assert (= (and b!4485093 res!1862867) b!4485101))

(declare-fun m!5205715 () Bool)

(assert (=> d!1372925 m!5205715))

(declare-fun m!5205717 () Bool)

(assert (=> d!1372925 m!5205717))

(declare-fun m!5205719 () Bool)

(assert (=> b!4485096 m!5205719))

(declare-fun m!5205721 () Bool)

(assert (=> b!4485096 m!5205721))

(declare-fun m!5205723 () Bool)

(assert (=> b!4485101 m!5205723))

(declare-fun m!5205725 () Bool)

(assert (=> b!4485101 m!5205725))

(assert (=> b!4485101 m!5205725))

(declare-fun m!5205727 () Bool)

(assert (=> b!4485101 m!5205727))

(declare-fun m!5205729 () Bool)

(assert (=> b!4485097 m!5205729))

(assert (=> b!4485097 m!5205729))

(declare-fun m!5205731 () Bool)

(assert (=> b!4485097 m!5205731))

(declare-fun m!5205733 () Bool)

(assert (=> b!4485097 m!5205733))

(declare-fun m!5205735 () Bool)

(assert (=> b!4485097 m!5205735))

(declare-fun m!5205737 () Bool)

(assert (=> b!4485097 m!5205737))

(assert (=> b!4485098 m!5205729))

(assert (=> b!4485098 m!5205729))

(declare-fun m!5205739 () Bool)

(assert (=> b!4485098 m!5205739))

(declare-fun m!5205741 () Bool)

(assert (=> b!4485093 m!5205741))

(assert (=> b!4484900 d!1372925))

(declare-fun d!1372927 () Bool)

(declare-fun res!1862868 () Bool)

(declare-fun e!2793390 () Bool)

(assert (=> d!1372927 (=> res!1862868 e!2793390)))

(assert (=> d!1372927 (= res!1862868 (is-Nil!50439 (toList!4177 lm!1477)))))

(assert (=> d!1372927 (= (forall!10095 (toList!4177 lm!1477) lambda!166219) e!2793390)))

(declare-fun b!4485104 () Bool)

(declare-fun e!2793391 () Bool)

(assert (=> b!4485104 (= e!2793390 e!2793391)))

(declare-fun res!1862869 () Bool)

(assert (=> b!4485104 (=> (not res!1862869) (not e!2793391))))

(assert (=> b!4485104 (= res!1862869 (dynLambda!21061 lambda!166219 (h!56234 (toList!4177 lm!1477))))))

(declare-fun b!4485105 () Bool)

(assert (=> b!4485105 (= e!2793391 (forall!10095 (t!357517 (toList!4177 lm!1477)) lambda!166219))))

(assert (= (and d!1372927 (not res!1862868)) b!4485104))

(assert (= (and b!4485104 res!1862869) b!4485105))

(declare-fun b_lambda!150571 () Bool)

(assert (=> (not b_lambda!150571) (not b!4485104)))

(declare-fun m!5205743 () Bool)

(assert (=> b!4485104 m!5205743))

(declare-fun m!5205745 () Bool)

(assert (=> b!4485105 m!5205745))

(assert (=> d!1372869 d!1372927))

(declare-fun d!1372929 () Bool)

(declare-fun res!1862870 () Bool)

(declare-fun e!2793392 () Bool)

(assert (=> d!1372929 (=> res!1862870 e!2793392)))

(assert (=> d!1372929 (= res!1862870 (not (is-Cons!50438 (_2!28682 (h!56234 (toList!4177 lm!1477))))))))

(assert (=> d!1372929 (= (noDuplicateKeys!1085 (_2!28682 (h!56234 (toList!4177 lm!1477)))) e!2793392)))

(declare-fun b!4485106 () Bool)

(declare-fun e!2793393 () Bool)

(assert (=> b!4485106 (= e!2793392 e!2793393)))

(declare-fun res!1862871 () Bool)

(assert (=> b!4485106 (=> (not res!1862871) (not e!2793393))))

(assert (=> b!4485106 (= res!1862871 (not (containsKey!1589 (t!357516 (_2!28682 (h!56234 (toList!4177 lm!1477)))) (_1!28681 (h!56233 (_2!28682 (h!56234 (toList!4177 lm!1477))))))))))

(declare-fun b!4485107 () Bool)

(assert (=> b!4485107 (= e!2793393 (noDuplicateKeys!1085 (t!357516 (_2!28682 (h!56234 (toList!4177 lm!1477))))))))

(assert (= (and d!1372929 (not res!1862870)) b!4485106))

(assert (= (and b!4485106 res!1862871) b!4485107))

(declare-fun m!5205747 () Bool)

(assert (=> b!4485106 m!5205747))

(declare-fun m!5205749 () Bool)

(assert (=> b!4485107 m!5205749))

(assert (=> bs!825802 d!1372929))

(declare-fun d!1372931 () Bool)

(declare-fun res!1862876 () Bool)

(declare-fun e!2793398 () Bool)

(assert (=> d!1372931 (=> res!1862876 e!2793398)))

(assert (=> d!1372931 (= res!1862876 (and (is-Cons!50439 (toList!4177 lm!1477)) (= (_1!28682 (h!56234 (toList!4177 lm!1477))) lt!1670563)))))

(assert (=> d!1372931 (= (containsKey!1591 (toList!4177 lm!1477) lt!1670563) e!2793398)))

(declare-fun b!4485112 () Bool)

(declare-fun e!2793399 () Bool)

(assert (=> b!4485112 (= e!2793398 e!2793399)))

(declare-fun res!1862877 () Bool)

(assert (=> b!4485112 (=> (not res!1862877) (not e!2793399))))

(assert (=> b!4485112 (= res!1862877 (and (or (not (is-Cons!50439 (toList!4177 lm!1477))) (bvsle (_1!28682 (h!56234 (toList!4177 lm!1477))) lt!1670563)) (is-Cons!50439 (toList!4177 lm!1477)) (bvslt (_1!28682 (h!56234 (toList!4177 lm!1477))) lt!1670563)))))

(declare-fun b!4485113 () Bool)

(assert (=> b!4485113 (= e!2793399 (containsKey!1591 (t!357517 (toList!4177 lm!1477)) lt!1670563))))

(assert (= (and d!1372931 (not res!1862876)) b!4485112))

(assert (= (and b!4485112 res!1862877) b!4485113))

(declare-fun m!5205751 () Bool)

(assert (=> b!4485113 m!5205751))

(assert (=> d!1372827 d!1372931))

(declare-fun d!1372933 () Bool)

(declare-fun res!1862878 () Bool)

(declare-fun e!2793400 () Bool)

(assert (=> d!1372933 (=> res!1862878 e!2793400)))

(assert (=> d!1372933 (= res!1862878 (and (is-Cons!50438 lt!1670623) (= (_1!28681 (h!56233 lt!1670623)) key!3287)))))

(assert (=> d!1372933 (= (containsKey!1589 lt!1670623 key!3287) e!2793400)))

(declare-fun b!4485114 () Bool)

(declare-fun e!2793401 () Bool)

(assert (=> b!4485114 (= e!2793400 e!2793401)))

(declare-fun res!1862879 () Bool)

(assert (=> b!4485114 (=> (not res!1862879) (not e!2793401))))

(assert (=> b!4485114 (= res!1862879 (is-Cons!50438 lt!1670623))))

(declare-fun b!4485115 () Bool)

(assert (=> b!4485115 (= e!2793401 (containsKey!1589 (t!357516 lt!1670623) key!3287))))

(assert (= (and d!1372933 (not res!1862878)) b!4485114))

(assert (= (and b!4485114 res!1862879) b!4485115))

(declare-fun m!5205753 () Bool)

(assert (=> b!4485115 m!5205753))

(assert (=> d!1372829 d!1372933))

(declare-fun d!1372935 () Bool)

(declare-fun res!1862880 () Bool)

(declare-fun e!2793402 () Bool)

(assert (=> d!1372935 (=> res!1862880 e!2793402)))

(assert (=> d!1372935 (= res!1862880 (not (is-Cons!50438 lt!1670565)))))

(assert (=> d!1372935 (= (noDuplicateKeys!1085 lt!1670565) e!2793402)))

(declare-fun b!4485116 () Bool)

(declare-fun e!2793403 () Bool)

(assert (=> b!4485116 (= e!2793402 e!2793403)))

(declare-fun res!1862881 () Bool)

(assert (=> b!4485116 (=> (not res!1862881) (not e!2793403))))

(assert (=> b!4485116 (= res!1862881 (not (containsKey!1589 (t!357516 lt!1670565) (_1!28681 (h!56233 lt!1670565)))))))

(declare-fun b!4485117 () Bool)

(assert (=> b!4485117 (= e!2793403 (noDuplicateKeys!1085 (t!357516 lt!1670565)))))

(assert (= (and d!1372935 (not res!1862880)) b!4485116))

(assert (= (and b!4485116 res!1862881) b!4485117))

(declare-fun m!5205755 () Bool)

(assert (=> b!4485116 m!5205755))

(declare-fun m!5205757 () Bool)

(assert (=> b!4485117 m!5205757))

(assert (=> d!1372829 d!1372935))

(declare-fun d!1372937 () Bool)

(declare-fun res!1862882 () Bool)

(declare-fun e!2793404 () Bool)

(assert (=> d!1372937 (=> res!1862882 e!2793404)))

(assert (=> d!1372937 (= res!1862882 (and (is-Cons!50439 (toList!4177 lt!1670558)) (= (_1!28682 (h!56234 (toList!4177 lt!1670558))) hash!344)))))

(assert (=> d!1372937 (= (containsKey!1591 (toList!4177 lt!1670558) hash!344) e!2793404)))

(declare-fun b!4485118 () Bool)

(declare-fun e!2793405 () Bool)

(assert (=> b!4485118 (= e!2793404 e!2793405)))

(declare-fun res!1862883 () Bool)

(assert (=> b!4485118 (=> (not res!1862883) (not e!2793405))))

(assert (=> b!4485118 (= res!1862883 (and (or (not (is-Cons!50439 (toList!4177 lt!1670558))) (bvsle (_1!28682 (h!56234 (toList!4177 lt!1670558))) hash!344)) (is-Cons!50439 (toList!4177 lt!1670558)) (bvslt (_1!28682 (h!56234 (toList!4177 lt!1670558))) hash!344)))))

(declare-fun b!4485119 () Bool)

(assert (=> b!4485119 (= e!2793405 (containsKey!1591 (t!357517 (toList!4177 lt!1670558)) hash!344))))

(assert (= (and d!1372937 (not res!1862882)) b!4485118))

(assert (= (and b!4485118 res!1862883) b!4485119))

(declare-fun m!5205759 () Bool)

(assert (=> b!4485119 m!5205759))

(assert (=> d!1372817 d!1372937))

(declare-fun d!1372939 () Bool)

(declare-fun e!2793407 () Bool)

(assert (=> d!1372939 e!2793407))

(declare-fun res!1862884 () Bool)

(assert (=> d!1372939 (=> res!1862884 e!2793407)))

(declare-fun lt!1670750 () Bool)

(assert (=> d!1372939 (= res!1862884 (not lt!1670750))))

(declare-fun lt!1670752 () Bool)

(assert (=> d!1372939 (= lt!1670750 lt!1670752)))

(declare-fun lt!1670753 () Unit!90047)

(declare-fun e!2793406 () Unit!90047)

(assert (=> d!1372939 (= lt!1670753 e!2793406)))

(declare-fun c!763919 () Bool)

(assert (=> d!1372939 (= c!763919 lt!1670752)))

(assert (=> d!1372939 (= lt!1670752 (containsKey!1591 (toList!4177 lm!1477) (hash!2590 hashF!1107 key!3287)))))

(assert (=> d!1372939 (= (contains!13058 lm!1477 (hash!2590 hashF!1107 key!3287)) lt!1670750)))

(declare-fun b!4485120 () Bool)

(declare-fun lt!1670751 () Unit!90047)

(assert (=> b!4485120 (= e!2793406 lt!1670751)))

(assert (=> b!4485120 (= lt!1670751 (lemmaContainsKeyImpliesGetValueByKeyDefined!878 (toList!4177 lm!1477) (hash!2590 hashF!1107 key!3287)))))

(assert (=> b!4485120 (isDefined!8281 (getValueByKey!974 (toList!4177 lm!1477) (hash!2590 hashF!1107 key!3287)))))

(declare-fun b!4485121 () Bool)

(declare-fun Unit!90067 () Unit!90047)

(assert (=> b!4485121 (= e!2793406 Unit!90067)))

(declare-fun b!4485122 () Bool)

(assert (=> b!4485122 (= e!2793407 (isDefined!8281 (getValueByKey!974 (toList!4177 lm!1477) (hash!2590 hashF!1107 key!3287))))))

(assert (= (and d!1372939 c!763919) b!4485120))

(assert (= (and d!1372939 (not c!763919)) b!4485121))

(assert (= (and d!1372939 (not res!1862884)) b!4485122))

(assert (=> d!1372939 m!5205379))

(declare-fun m!5205761 () Bool)

(assert (=> d!1372939 m!5205761))

(assert (=> b!4485120 m!5205379))

(declare-fun m!5205763 () Bool)

(assert (=> b!4485120 m!5205763))

(assert (=> b!4485120 m!5205379))

(declare-fun m!5205765 () Bool)

(assert (=> b!4485120 m!5205765))

(assert (=> b!4485120 m!5205765))

(declare-fun m!5205767 () Bool)

(assert (=> b!4485120 m!5205767))

(assert (=> b!4485122 m!5205379))

(assert (=> b!4485122 m!5205765))

(assert (=> b!4485122 m!5205765))

(assert (=> b!4485122 m!5205767))

(assert (=> d!1372823 d!1372939))

(assert (=> d!1372823 d!1372871))

(declare-fun d!1372941 () Bool)

(assert (=> d!1372941 (contains!13058 lm!1477 (hash!2590 hashF!1107 key!3287))))

(assert (=> d!1372941 true))

(declare-fun _$27!1125 () Unit!90047)

(assert (=> d!1372941 (= (choose!28838 lm!1477 key!3287 hashF!1107) _$27!1125)))

(declare-fun bs!825831 () Bool)

(assert (= bs!825831 d!1372941))

(assert (=> bs!825831 m!5205379))

(assert (=> bs!825831 m!5205379))

(assert (=> bs!825831 m!5205489))

(assert (=> d!1372823 d!1372941))

(declare-fun d!1372943 () Bool)

(declare-fun res!1862885 () Bool)

(declare-fun e!2793408 () Bool)

(assert (=> d!1372943 (=> res!1862885 e!2793408)))

(assert (=> d!1372943 (= res!1862885 (is-Nil!50439 (toList!4177 lm!1477)))))

(assert (=> d!1372943 (= (forall!10095 (toList!4177 lm!1477) lambda!166198) e!2793408)))

(declare-fun b!4485123 () Bool)

(declare-fun e!2793409 () Bool)

(assert (=> b!4485123 (= e!2793408 e!2793409)))

(declare-fun res!1862886 () Bool)

(assert (=> b!4485123 (=> (not res!1862886) (not e!2793409))))

(assert (=> b!4485123 (= res!1862886 (dynLambda!21061 lambda!166198 (h!56234 (toList!4177 lm!1477))))))

(declare-fun b!4485124 () Bool)

(assert (=> b!4485124 (= e!2793409 (forall!10095 (t!357517 (toList!4177 lm!1477)) lambda!166198))))

(assert (= (and d!1372943 (not res!1862885)) b!4485123))

(assert (= (and b!4485123 res!1862886) b!4485124))

(declare-fun b_lambda!150573 () Bool)

(assert (=> (not b_lambda!150573) (not b!4485123)))

(declare-fun m!5205769 () Bool)

(assert (=> b!4485123 m!5205769))

(declare-fun m!5205771 () Bool)

(assert (=> b!4485124 m!5205771))

(assert (=> d!1372823 d!1372943))

(declare-fun d!1372945 () Bool)

(assert (=> d!1372945 (isDefined!8282 (getValueByKey!975 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(declare-fun lt!1670756 () Unit!90047)

(declare-fun choose!28847 (List!50562 K!11853) Unit!90047)

(assert (=> d!1372945 (= lt!1670756 (choose!28847 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(assert (=> d!1372945 (invariantList!958 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))))

(assert (=> d!1372945 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!879 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287) lt!1670756)))

(declare-fun bs!825832 () Bool)

(assert (= bs!825832 d!1372945))

(assert (=> bs!825832 m!5205525))

(assert (=> bs!825832 m!5205525))

(assert (=> bs!825832 m!5205527))

(declare-fun m!5205773 () Bool)

(assert (=> bs!825832 m!5205773))

(assert (=> bs!825832 m!5205717))

(assert (=> b!4484898 d!1372945))

(declare-fun d!1372947 () Bool)

(declare-fun isEmpty!28538 (Option!10995) Bool)

(assert (=> d!1372947 (= (isDefined!8282 (getValueByKey!975 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287)) (not (isEmpty!28538 (getValueByKey!975 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))))

(declare-fun bs!825833 () Bool)

(assert (= bs!825833 d!1372947))

(assert (=> bs!825833 m!5205525))

(declare-fun m!5205775 () Bool)

(assert (=> bs!825833 m!5205775))

(assert (=> b!4484898 d!1372947))

(declare-fun b!4485134 () Bool)

(declare-fun e!2793414 () Option!10995)

(declare-fun e!2793415 () Option!10995)

(assert (=> b!4485134 (= e!2793414 e!2793415)))

(declare-fun c!763925 () Bool)

(assert (=> b!4485134 (= c!763925 (and (is-Cons!50438 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) (not (= (_1!28681 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) key!3287))))))

(declare-fun b!4485133 () Bool)

(assert (=> b!4485133 (= e!2793414 (Some!10994 (_2!28681 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))))))

(declare-fun b!4485135 () Bool)

(assert (=> b!4485135 (= e!2793415 (getValueByKey!975 (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) key!3287))))

(declare-fun d!1372949 () Bool)

(declare-fun c!763924 () Bool)

(assert (=> d!1372949 (= c!763924 (and (is-Cons!50438 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) (= (_1!28681 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) key!3287)))))

(assert (=> d!1372949 (= (getValueByKey!975 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287) e!2793414)))

(declare-fun b!4485136 () Bool)

(assert (=> b!4485136 (= e!2793415 None!10994)))

(assert (= (and d!1372949 c!763924) b!4485133))

(assert (= (and d!1372949 (not c!763924)) b!4485134))

(assert (= (and b!4485134 c!763925) b!4485135))

(assert (= (and b!4485134 (not c!763925)) b!4485136))

(declare-fun m!5205777 () Bool)

(assert (=> b!4485135 m!5205777))

(assert (=> b!4484898 d!1372949))

(declare-fun d!1372951 () Bool)

(assert (=> d!1372951 (contains!13062 (getKeysList!406 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) key!3287)))

(declare-fun lt!1670759 () Unit!90047)

(declare-fun choose!28848 (List!50562 K!11853) Unit!90047)

(assert (=> d!1372951 (= lt!1670759 (choose!28848 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(assert (=> d!1372951 (invariantList!958 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))))

(assert (=> d!1372951 (= (lemmaInListThenGetKeysListContains!402 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287) lt!1670759)))

(declare-fun bs!825834 () Bool)

(assert (= bs!825834 d!1372951))

(assert (=> bs!825834 m!5205537))

(assert (=> bs!825834 m!5205537))

(declare-fun m!5205779 () Bool)

(assert (=> bs!825834 m!5205779))

(declare-fun m!5205781 () Bool)

(assert (=> bs!825834 m!5205781))

(assert (=> bs!825834 m!5205717))

(assert (=> b!4484898 d!1372951))

(declare-fun d!1372953 () Bool)

(declare-fun res!1862887 () Bool)

(declare-fun e!2793416 () Bool)

(assert (=> d!1372953 (=> res!1862887 e!2793416)))

(assert (=> d!1372953 (= res!1862887 (and (is-Cons!50438 (_2!28682 (h!56234 (t!357517 (toList!4177 lm!1477))))) (= (_1!28681 (h!56233 (_2!28682 (h!56234 (t!357517 (toList!4177 lm!1477)))))) key!3287)))))

(assert (=> d!1372953 (= (containsKey!1589 (_2!28682 (h!56234 (t!357517 (toList!4177 lm!1477)))) key!3287) e!2793416)))

(declare-fun b!4485137 () Bool)

(declare-fun e!2793417 () Bool)

(assert (=> b!4485137 (= e!2793416 e!2793417)))

(declare-fun res!1862888 () Bool)

(assert (=> b!4485137 (=> (not res!1862888) (not e!2793417))))

(assert (=> b!4485137 (= res!1862888 (is-Cons!50438 (_2!28682 (h!56234 (t!357517 (toList!4177 lm!1477))))))))

(declare-fun b!4485138 () Bool)

(assert (=> b!4485138 (= e!2793417 (containsKey!1589 (t!357516 (_2!28682 (h!56234 (t!357517 (toList!4177 lm!1477))))) key!3287))))

(assert (= (and d!1372953 (not res!1862887)) b!4485137))

(assert (= (and b!4485137 res!1862888) b!4485138))

(declare-fun m!5205783 () Bool)

(assert (=> b!4485138 m!5205783))

(assert (=> b!4484928 d!1372953))

(declare-fun d!1372955 () Bool)

(declare-fun res!1862889 () Bool)

(declare-fun e!2793418 () Bool)

(assert (=> d!1372955 (=> res!1862889 e!2793418)))

(declare-fun e!2793420 () Bool)

(assert (=> d!1372955 (= res!1862889 e!2793420)))

(declare-fun res!1862890 () Bool)

(assert (=> d!1372955 (=> (not res!1862890) (not e!2793420))))

(assert (=> d!1372955 (= res!1862890 (is-Cons!50439 (t!357517 (t!357517 (toList!4177 lm!1477)))))))

(assert (=> d!1372955 (= (containsKeyBiggerList!65 (t!357517 (t!357517 (toList!4177 lm!1477))) key!3287) e!2793418)))

(declare-fun b!4485139 () Bool)

(assert (=> b!4485139 (= e!2793420 (containsKey!1589 (_2!28682 (h!56234 (t!357517 (t!357517 (toList!4177 lm!1477))))) key!3287))))

(declare-fun b!4485140 () Bool)

(declare-fun e!2793419 () Bool)

(assert (=> b!4485140 (= e!2793418 e!2793419)))

(declare-fun res!1862891 () Bool)

(assert (=> b!4485140 (=> (not res!1862891) (not e!2793419))))

(assert (=> b!4485140 (= res!1862891 (is-Cons!50439 (t!357517 (t!357517 (toList!4177 lm!1477)))))))

(declare-fun b!4485141 () Bool)

(assert (=> b!4485141 (= e!2793419 (containsKeyBiggerList!65 (t!357517 (t!357517 (t!357517 (toList!4177 lm!1477)))) key!3287))))

(assert (= (and d!1372955 res!1862890) b!4485139))

(assert (= (and d!1372955 (not res!1862889)) b!4485140))

(assert (= (and b!4485140 res!1862891) b!4485141))

(declare-fun m!5205785 () Bool)

(assert (=> b!4485139 m!5205785))

(declare-fun m!5205787 () Bool)

(assert (=> b!4485141 m!5205787))

(assert (=> b!4484930 d!1372955))

(assert (=> d!1372853 d!1372851))

(declare-fun d!1372957 () Bool)

(assert (=> d!1372957 (containsKeyBiggerList!65 (toList!4177 lt!1670558) key!3287)))

(assert (=> d!1372957 true))

(declare-fun _$33!559 () Unit!90047)

(assert (=> d!1372957 (= (choose!28840 lt!1670558 key!3287 hashF!1107) _$33!559)))

(declare-fun bs!825835 () Bool)

(assert (= bs!825835 d!1372957))

(assert (=> bs!825835 m!5205375))

(assert (=> d!1372853 d!1372957))

(declare-fun d!1372959 () Bool)

(declare-fun res!1862892 () Bool)

(declare-fun e!2793421 () Bool)

(assert (=> d!1372959 (=> res!1862892 e!2793421)))

(assert (=> d!1372959 (= res!1862892 (is-Nil!50439 (toList!4177 lt!1670558)))))

(assert (=> d!1372959 (= (forall!10095 (toList!4177 lt!1670558) lambda!166210) e!2793421)))

(declare-fun b!4485142 () Bool)

(declare-fun e!2793422 () Bool)

(assert (=> b!4485142 (= e!2793421 e!2793422)))

(declare-fun res!1862893 () Bool)

(assert (=> b!4485142 (=> (not res!1862893) (not e!2793422))))

(assert (=> b!4485142 (= res!1862893 (dynLambda!21061 lambda!166210 (h!56234 (toList!4177 lt!1670558))))))

(declare-fun b!4485143 () Bool)

(assert (=> b!4485143 (= e!2793422 (forall!10095 (t!357517 (toList!4177 lt!1670558)) lambda!166210))))

(assert (= (and d!1372959 (not res!1862892)) b!4485142))

(assert (= (and b!4485142 res!1862893) b!4485143))

(declare-fun b_lambda!150575 () Bool)

(assert (=> (not b_lambda!150575) (not b!4485142)))

(declare-fun m!5205789 () Bool)

(assert (=> b!4485142 m!5205789))

(declare-fun m!5205791 () Bool)

(assert (=> b!4485143 m!5205791))

(assert (=> d!1372853 d!1372959))

(declare-fun d!1372961 () Bool)

(declare-fun lt!1670760 () Bool)

(assert (=> d!1372961 (= lt!1670760 (set.member lt!1670564 (content!8188 (t!357517 (t!357517 (toList!4177 lm!1477))))))))

(declare-fun e!2793424 () Bool)

(assert (=> d!1372961 (= lt!1670760 e!2793424)))

(declare-fun res!1862894 () Bool)

(assert (=> d!1372961 (=> (not res!1862894) (not e!2793424))))

(assert (=> d!1372961 (= res!1862894 (is-Cons!50439 (t!357517 (t!357517 (toList!4177 lm!1477)))))))

(assert (=> d!1372961 (= (contains!13057 (t!357517 (t!357517 (toList!4177 lm!1477))) lt!1670564) lt!1670760)))

(declare-fun b!4485144 () Bool)

(declare-fun e!2793423 () Bool)

(assert (=> b!4485144 (= e!2793424 e!2793423)))

(declare-fun res!1862895 () Bool)

(assert (=> b!4485144 (=> res!1862895 e!2793423)))

(assert (=> b!4485144 (= res!1862895 (= (h!56234 (t!357517 (t!357517 (toList!4177 lm!1477)))) lt!1670564))))

(declare-fun b!4485145 () Bool)

(assert (=> b!4485145 (= e!2793423 (contains!13057 (t!357517 (t!357517 (t!357517 (toList!4177 lm!1477)))) lt!1670564))))

(assert (= (and d!1372961 res!1862894) b!4485144))

(assert (= (and b!4485144 (not res!1862895)) b!4485145))

(declare-fun m!5205793 () Bool)

(assert (=> d!1372961 m!5205793))

(declare-fun m!5205795 () Bool)

(assert (=> d!1372961 m!5205795))

(declare-fun m!5205797 () Bool)

(assert (=> b!4485145 m!5205797))

(assert (=> b!4484960 d!1372961))

(declare-fun d!1372963 () Bool)

(declare-fun res!1862900 () Bool)

(declare-fun e!2793429 () Bool)

(assert (=> d!1372963 (=> res!1862900 e!2793429)))

(assert (=> d!1372963 (= res!1862900 (and (is-Cons!50438 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) (= (_1!28681 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) key!3287)))))

(assert (=> d!1372963 (= (containsKey!1592 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287) e!2793429)))

(declare-fun b!4485150 () Bool)

(declare-fun e!2793430 () Bool)

(assert (=> b!4485150 (= e!2793429 e!2793430)))

(declare-fun res!1862901 () Bool)

(assert (=> b!4485150 (=> (not res!1862901) (not e!2793430))))

(assert (=> b!4485150 (= res!1862901 (is-Cons!50438 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))))

(declare-fun b!4485151 () Bool)

(assert (=> b!4485151 (= e!2793430 (containsKey!1592 (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) key!3287))))

(assert (= (and d!1372963 (not res!1862900)) b!4485150))

(assert (= (and b!4485150 res!1862901) b!4485151))

(declare-fun m!5205799 () Bool)

(assert (=> b!4485151 m!5205799))

(assert (=> b!4484905 d!1372963))

(declare-fun d!1372965 () Bool)

(assert (=> d!1372965 (containsKey!1592 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287)))

(declare-fun lt!1670763 () Unit!90047)

(declare-fun choose!28849 (List!50562 K!11853) Unit!90047)

(assert (=> d!1372965 (= lt!1670763 (choose!28849 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287))))

(assert (=> d!1372965 (invariantList!958 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))))

(assert (=> d!1372965 (= (lemmaInGetKeysListThenContainsKey!405 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) key!3287) lt!1670763)))

(declare-fun bs!825836 () Bool)

(assert (= bs!825836 d!1372965))

(assert (=> bs!825836 m!5205533))

(declare-fun m!5205801 () Bool)

(assert (=> bs!825836 m!5205801))

(assert (=> bs!825836 m!5205717))

(assert (=> b!4484905 d!1372965))

(declare-fun d!1372967 () Bool)

(declare-fun res!1862906 () Bool)

(declare-fun e!2793435 () Bool)

(assert (=> d!1372967 (=> res!1862906 e!2793435)))

(assert (=> d!1372967 (= res!1862906 (is-Nil!50438 newBucket!178))))

(assert (=> d!1372967 (= (forall!10097 newBucket!178 lambda!166216) e!2793435)))

(declare-fun b!4485156 () Bool)

(declare-fun e!2793436 () Bool)

(assert (=> b!4485156 (= e!2793435 e!2793436)))

(declare-fun res!1862907 () Bool)

(assert (=> b!4485156 (=> (not res!1862907) (not e!2793436))))

(declare-fun dynLambda!21063 (Int tuple2!50774) Bool)

(assert (=> b!4485156 (= res!1862907 (dynLambda!21063 lambda!166216 (h!56233 newBucket!178)))))

(declare-fun b!4485157 () Bool)

(assert (=> b!4485157 (= e!2793436 (forall!10097 (t!357516 newBucket!178) lambda!166216))))

(assert (= (and d!1372967 (not res!1862906)) b!4485156))

(assert (= (and b!4485156 res!1862907) b!4485157))

(declare-fun b_lambda!150577 () Bool)

(assert (=> (not b_lambda!150577) (not b!4485156)))

(declare-fun m!5205803 () Bool)

(assert (=> b!4485156 m!5205803))

(declare-fun m!5205805 () Bool)

(assert (=> b!4485157 m!5205805))

(assert (=> d!1372865 d!1372967))

(assert (=> b!4484903 d!1372947))

(assert (=> b!4484903 d!1372949))

(declare-fun bs!825837 () Bool)

(declare-fun b!4485170 () Bool)

(assert (= bs!825837 (and b!4485170 d!1372865)))

(declare-fun lambda!166272 () Int)

(assert (=> bs!825837 (not (= lambda!166272 lambda!166216))))

(assert (=> b!4485170 true))

(declare-fun bs!825838 () Bool)

(declare-fun b!4485172 () Bool)

(assert (= bs!825838 (and b!4485172 d!1372865)))

(declare-fun lambda!166273 () Int)

(assert (=> bs!825838 (not (= lambda!166273 lambda!166216))))

(declare-fun bs!825839 () Bool)

(assert (= bs!825839 (and b!4485172 b!4485170)))

(assert (=> bs!825839 (= lambda!166273 lambda!166272)))

(assert (=> b!4485172 true))

(declare-fun lambda!166274 () Int)

(assert (=> bs!825838 (not (= lambda!166274 lambda!166216))))

(declare-fun lt!1670807 () ListMap!3439)

(assert (=> bs!825839 (= (= lt!1670807 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) (= lambda!166274 lambda!166272))))

(assert (=> b!4485172 (= (= lt!1670807 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) (= lambda!166274 lambda!166273))))

(assert (=> b!4485172 true))

(declare-fun bs!825840 () Bool)

(declare-fun d!1372969 () Bool)

(assert (= bs!825840 (and d!1372969 d!1372865)))

(declare-fun lambda!166275 () Int)

(assert (=> bs!825840 (not (= lambda!166275 lambda!166216))))

(declare-fun bs!825841 () Bool)

(assert (= bs!825841 (and d!1372969 b!4485170)))

(declare-fun lt!1670806 () ListMap!3439)

(assert (=> bs!825841 (= (= lt!1670806 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) (= lambda!166275 lambda!166272))))

(declare-fun bs!825842 () Bool)

(assert (= bs!825842 (and d!1372969 b!4485172)))

(assert (=> bs!825842 (= (= lt!1670806 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) (= lambda!166275 lambda!166273))))

(assert (=> bs!825842 (= (= lt!1670806 lt!1670807) (= lambda!166275 lambda!166274))))

(assert (=> d!1372969 true))

(declare-fun bm!312187 () Bool)

(declare-fun call!312193 () Unit!90047)

(declare-fun lemmaContainsAllItsOwnKeys!289 (ListMap!3439) Unit!90047)

(assert (=> bm!312187 (= call!312193 (lemmaContainsAllItsOwnKeys!289 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))))))

(declare-fun b!4485168 () Bool)

(declare-fun e!2793444 () Bool)

(assert (=> b!4485168 (= e!2793444 (invariantList!958 (toList!4178 lt!1670806)))))

(declare-fun b!4485169 () Bool)

(declare-fun e!2793445 () Bool)

(assert (=> b!4485169 (= e!2793445 (forall!10097 (toList!4178 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) lambda!166274))))

(declare-fun bm!312188 () Bool)

(declare-fun c!763928 () Bool)

(declare-fun call!312194 () Bool)

(assert (=> bm!312188 (= call!312194 (forall!10097 (toList!4178 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) (ite c!763928 lambda!166272 lambda!166274)))))

(declare-fun e!2793443 () ListMap!3439)

(assert (=> b!4485170 (= e!2793443 (extractMap!1141 (t!357517 (toList!4177 lm!1477))))))

(declare-fun lt!1670825 () Unit!90047)

(assert (=> b!4485170 (= lt!1670825 call!312193)))

(declare-fun call!312192 () Bool)

(assert (=> b!4485170 call!312192))

(declare-fun lt!1670813 () Unit!90047)

(assert (=> b!4485170 (= lt!1670813 lt!1670825)))

(assert (=> b!4485170 call!312194))

(declare-fun lt!1670820 () Unit!90047)

(declare-fun Unit!90068 () Unit!90047)

(assert (=> b!4485170 (= lt!1670820 Unit!90068)))

(declare-fun b!4485171 () Bool)

(declare-fun res!1862914 () Bool)

(assert (=> b!4485171 (=> (not res!1862914) (not e!2793444))))

(assert (=> b!4485171 (= res!1862914 (forall!10097 (toList!4178 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) lambda!166275))))

(assert (=> d!1372969 e!2793444))

(declare-fun res!1862915 () Bool)

(assert (=> d!1372969 (=> (not res!1862915) (not e!2793444))))

(assert (=> d!1372969 (= res!1862915 (forall!10097 (_2!28682 (h!56234 (toList!4177 lm!1477))) lambda!166275))))

(assert (=> d!1372969 (= lt!1670806 e!2793443)))

(assert (=> d!1372969 (= c!763928 (is-Nil!50438 (_2!28682 (h!56234 (toList!4177 lm!1477)))))))

(assert (=> d!1372969 (noDuplicateKeys!1085 (_2!28682 (h!56234 (toList!4177 lm!1477))))))

(assert (=> d!1372969 (= (addToMapMapFromBucket!626 (_2!28682 (h!56234 (toList!4177 lm!1477))) (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) lt!1670806)))

(assert (=> b!4485172 (= e!2793443 lt!1670807)))

(declare-fun lt!1670811 () ListMap!3439)

(declare-fun +!1431 (ListMap!3439 tuple2!50774) ListMap!3439)

(assert (=> b!4485172 (= lt!1670811 (+!1431 (extractMap!1141 (t!357517 (toList!4177 lm!1477))) (h!56233 (_2!28682 (h!56234 (toList!4177 lm!1477))))))))

(assert (=> b!4485172 (= lt!1670807 (addToMapMapFromBucket!626 (t!357516 (_2!28682 (h!56234 (toList!4177 lm!1477)))) (+!1431 (extractMap!1141 (t!357517 (toList!4177 lm!1477))) (h!56233 (_2!28682 (h!56234 (toList!4177 lm!1477)))))))))

(declare-fun lt!1670810 () Unit!90047)

(assert (=> b!4485172 (= lt!1670810 call!312193)))

(assert (=> b!4485172 call!312192))

(declare-fun lt!1670823 () Unit!90047)

(assert (=> b!4485172 (= lt!1670823 lt!1670810)))

(assert (=> b!4485172 (forall!10097 (toList!4178 lt!1670811) lambda!166274)))

(declare-fun lt!1670812 () Unit!90047)

(declare-fun Unit!90069 () Unit!90047)

(assert (=> b!4485172 (= lt!1670812 Unit!90069)))

(assert (=> b!4485172 (forall!10097 (t!357516 (_2!28682 (h!56234 (toList!4177 lm!1477)))) lambda!166274)))

(declare-fun lt!1670824 () Unit!90047)

(declare-fun Unit!90070 () Unit!90047)

(assert (=> b!4485172 (= lt!1670824 Unit!90070)))

(declare-fun lt!1670815 () Unit!90047)

(declare-fun Unit!90071 () Unit!90047)

(assert (=> b!4485172 (= lt!1670815 Unit!90071)))

(declare-fun lt!1670819 () Unit!90047)

(declare-fun forallContained!2359 (List!50562 Int tuple2!50774) Unit!90047)

(assert (=> b!4485172 (= lt!1670819 (forallContained!2359 (toList!4178 lt!1670811) lambda!166274 (h!56233 (_2!28682 (h!56234 (toList!4177 lm!1477))))))))

(assert (=> b!4485172 (contains!13056 lt!1670811 (_1!28681 (h!56233 (_2!28682 (h!56234 (toList!4177 lm!1477))))))))

(declare-fun lt!1670816 () Unit!90047)

(declare-fun Unit!90072 () Unit!90047)

(assert (=> b!4485172 (= lt!1670816 Unit!90072)))

(assert (=> b!4485172 (contains!13056 lt!1670807 (_1!28681 (h!56233 (_2!28682 (h!56234 (toList!4177 lm!1477))))))))

(declare-fun lt!1670814 () Unit!90047)

(declare-fun Unit!90073 () Unit!90047)

(assert (=> b!4485172 (= lt!1670814 Unit!90073)))

(assert (=> b!4485172 (forall!10097 (_2!28682 (h!56234 (toList!4177 lm!1477))) lambda!166274)))

(declare-fun lt!1670809 () Unit!90047)

(declare-fun Unit!90074 () Unit!90047)

(assert (=> b!4485172 (= lt!1670809 Unit!90074)))

(assert (=> b!4485172 (forall!10097 (toList!4178 lt!1670811) lambda!166274)))

(declare-fun lt!1670817 () Unit!90047)

(declare-fun Unit!90075 () Unit!90047)

(assert (=> b!4485172 (= lt!1670817 Unit!90075)))

(declare-fun lt!1670821 () Unit!90047)

(declare-fun Unit!90076 () Unit!90047)

(assert (=> b!4485172 (= lt!1670821 Unit!90076)))

(declare-fun lt!1670818 () Unit!90047)

(declare-fun addForallContainsKeyThenBeforeAdding!289 (ListMap!3439 ListMap!3439 K!11853 V!12099) Unit!90047)

(assert (=> b!4485172 (= lt!1670818 (addForallContainsKeyThenBeforeAdding!289 (extractMap!1141 (t!357517 (toList!4177 lm!1477))) lt!1670807 (_1!28681 (h!56233 (_2!28682 (h!56234 (toList!4177 lm!1477))))) (_2!28681 (h!56233 (_2!28682 (h!56234 (toList!4177 lm!1477)))))))))

(assert (=> b!4485172 call!312194))

(declare-fun lt!1670808 () Unit!90047)

(assert (=> b!4485172 (= lt!1670808 lt!1670818)))

(assert (=> b!4485172 (forall!10097 (toList!4178 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) lambda!166274)))

(declare-fun lt!1670826 () Unit!90047)

(declare-fun Unit!90077 () Unit!90047)

(assert (=> b!4485172 (= lt!1670826 Unit!90077)))

(declare-fun res!1862916 () Bool)

(assert (=> b!4485172 (= res!1862916 (forall!10097 (_2!28682 (h!56234 (toList!4177 lm!1477))) lambda!166274))))

(assert (=> b!4485172 (=> (not res!1862916) (not e!2793445))))

(assert (=> b!4485172 e!2793445))

(declare-fun lt!1670822 () Unit!90047)

(declare-fun Unit!90078 () Unit!90047)

(assert (=> b!4485172 (= lt!1670822 Unit!90078)))

(declare-fun bm!312189 () Bool)

(assert (=> bm!312189 (= call!312192 (forall!10097 (toList!4178 (extractMap!1141 (t!357517 (toList!4177 lm!1477)))) (ite c!763928 lambda!166272 lambda!166273)))))

(assert (= (and d!1372969 c!763928) b!4485170))

(assert (= (and d!1372969 (not c!763928)) b!4485172))

(assert (= (and b!4485172 res!1862916) b!4485169))

(assert (= (or b!4485170 b!4485172) bm!312189))

(assert (= (or b!4485170 b!4485172) bm!312188))

(assert (= (or b!4485170 b!4485172) bm!312187))

(assert (= (and d!1372969 res!1862915) b!4485171))

(assert (= (and b!4485171 res!1862914) b!4485168))

(declare-fun m!5205807 () Bool)

(assert (=> b!4485168 m!5205807))

(declare-fun m!5205809 () Bool)

(assert (=> b!4485171 m!5205809))

(declare-fun m!5205811 () Bool)

(assert (=> b!4485169 m!5205811))

(declare-fun m!5205813 () Bool)

(assert (=> bm!312189 m!5205813))

(declare-fun m!5205815 () Bool)

(assert (=> d!1372969 m!5205815))

(assert (=> d!1372969 m!5205611))

(assert (=> b!4485172 m!5205553))

(declare-fun m!5205817 () Bool)

(assert (=> b!4485172 m!5205817))

(assert (=> b!4485172 m!5205811))

(assert (=> b!4485172 m!5205817))

(declare-fun m!5205819 () Bool)

(assert (=> b!4485172 m!5205819))

(declare-fun m!5205821 () Bool)

(assert (=> b!4485172 m!5205821))

(declare-fun m!5205823 () Bool)

(assert (=> b!4485172 m!5205823))

(declare-fun m!5205825 () Bool)

(assert (=> b!4485172 m!5205825))

(declare-fun m!5205827 () Bool)

(assert (=> b!4485172 m!5205827))

(declare-fun m!5205829 () Bool)

(assert (=> b!4485172 m!5205829))

(assert (=> b!4485172 m!5205553))

(declare-fun m!5205831 () Bool)

(assert (=> b!4485172 m!5205831))

(assert (=> b!4485172 m!5205829))

(assert (=> b!4485172 m!5205827))

(declare-fun m!5205833 () Bool)

(assert (=> b!4485172 m!5205833))

(declare-fun m!5205835 () Bool)

(assert (=> bm!312188 m!5205835))

(assert (=> bm!312187 m!5205553))

(declare-fun m!5205837 () Bool)

(assert (=> bm!312187 m!5205837))

(assert (=> b!4484920 d!1372969))

(declare-fun bs!825843 () Bool)

(declare-fun d!1372971 () Bool)

(assert (= bs!825843 (and d!1372971 d!1372869)))

(declare-fun lambda!166276 () Int)

(assert (=> bs!825843 (not (= lambda!166276 lambda!166219))))

(declare-fun bs!825844 () Bool)

(assert (= bs!825844 (and d!1372971 d!1372841)))

(assert (=> bs!825844 (= lambda!166276 lambda!166207)))

(declare-fun bs!825845 () Bool)

(assert (= bs!825845 (and d!1372971 d!1372853)))

(assert (=> bs!825845 (= lambda!166276 lambda!166210)))

(declare-fun bs!825846 () Bool)

(assert (= bs!825846 (and d!1372971 d!1372855)))

(assert (=> bs!825846 (= lambda!166276 lambda!166213)))

(declare-fun bs!825847 () Bool)

(assert (= bs!825847 (and d!1372971 start!441546)))

(assert (=> bs!825847 (= lambda!166276 lambda!166190)))

(declare-fun bs!825848 () Bool)

(assert (= bs!825848 (and d!1372971 d!1372823)))

(assert (=> bs!825848 (= lambda!166276 lambda!166198)))

(declare-fun lt!1670827 () ListMap!3439)

(assert (=> d!1372971 (invariantList!958 (toList!4178 lt!1670827))))

(declare-fun e!2793446 () ListMap!3439)

(assert (=> d!1372971 (= lt!1670827 e!2793446)))

(declare-fun c!763929 () Bool)

(assert (=> d!1372971 (= c!763929 (is-Cons!50439 (t!357517 (toList!4177 lm!1477))))))

(assert (=> d!1372971 (forall!10095 (t!357517 (toList!4177 lm!1477)) lambda!166276)))

(assert (=> d!1372971 (= (extractMap!1141 (t!357517 (toList!4177 lm!1477))) lt!1670827)))

(declare-fun b!4485175 () Bool)

(assert (=> b!4485175 (= e!2793446 (addToMapMapFromBucket!626 (_2!28682 (h!56234 (t!357517 (toList!4177 lm!1477)))) (extractMap!1141 (t!357517 (t!357517 (toList!4177 lm!1477))))))))

(declare-fun b!4485176 () Bool)

(assert (=> b!4485176 (= e!2793446 (ListMap!3440 Nil!50438))))

(assert (= (and d!1372971 c!763929) b!4485175))

(assert (= (and d!1372971 (not c!763929)) b!4485176))

(declare-fun m!5205839 () Bool)

(assert (=> d!1372971 m!5205839))

(declare-fun m!5205841 () Bool)

(assert (=> d!1372971 m!5205841))

(declare-fun m!5205843 () Bool)

(assert (=> b!4485175 m!5205843))

(assert (=> b!4485175 m!5205843))

(declare-fun m!5205845 () Bool)

(assert (=> b!4485175 m!5205845))

(assert (=> b!4484920 d!1372971))

(declare-fun d!1372973 () Bool)

(assert (=> d!1372973 (dynLambda!21061 lambda!166190 lt!1670564)))

(assert (=> d!1372973 true))

(declare-fun _$7!1726 () Unit!90047)

(assert (=> d!1372973 (= (choose!28839 (toList!4177 lm!1477) lambda!166190 lt!1670564) _$7!1726)))

(declare-fun b_lambda!150579 () Bool)

(assert (=> (not b_lambda!150579) (not d!1372973)))

(declare-fun bs!825849 () Bool)

(assert (= bs!825849 d!1372973))

(assert (=> bs!825849 m!5205515))

(assert (=> d!1372835 d!1372973))

(assert (=> d!1372835 d!1372813))

(declare-fun d!1372975 () Bool)

(assert (=> d!1372975 (= (get!16460 (getValueByKey!974 (toList!4177 lt!1670558) hash!344)) (v!44400 (getValueByKey!974 (toList!4177 lt!1670558) hash!344)))))

(assert (=> d!1372811 d!1372975))

(declare-fun b!4485186 () Bool)

(declare-fun e!2793451 () Option!10994)

(declare-fun e!2793452 () Option!10994)

(assert (=> b!4485186 (= e!2793451 e!2793452)))

(declare-fun c!763935 () Bool)

(assert (=> b!4485186 (= c!763935 (and (is-Cons!50439 (toList!4177 lt!1670558)) (not (= (_1!28682 (h!56234 (toList!4177 lt!1670558))) hash!344))))))

(declare-fun b!4485185 () Bool)

(assert (=> b!4485185 (= e!2793451 (Some!10993 (_2!28682 (h!56234 (toList!4177 lt!1670558)))))))

(declare-fun b!4485187 () Bool)

(assert (=> b!4485187 (= e!2793452 (getValueByKey!974 (t!357517 (toList!4177 lt!1670558)) hash!344))))

(declare-fun d!1372977 () Bool)

(declare-fun c!763934 () Bool)

(assert (=> d!1372977 (= c!763934 (and (is-Cons!50439 (toList!4177 lt!1670558)) (= (_1!28682 (h!56234 (toList!4177 lt!1670558))) hash!344)))))

(assert (=> d!1372977 (= (getValueByKey!974 (toList!4177 lt!1670558) hash!344) e!2793451)))

(declare-fun b!4485188 () Bool)

(assert (=> b!4485188 (= e!2793452 None!10993)))

(assert (= (and d!1372977 c!763934) b!4485185))

(assert (= (and d!1372977 (not c!763934)) b!4485186))

(assert (= (and b!4485186 c!763935) b!4485187))

(assert (= (and b!4485186 (not c!763935)) b!4485188))

(declare-fun m!5205847 () Bool)

(assert (=> b!4485187 m!5205847))

(assert (=> d!1372811 d!1372977))

(assert (=> b!4484878 d!1372831))

(declare-fun d!1372979 () Bool)

(declare-fun res!1862917 () Bool)

(declare-fun e!2793453 () Bool)

(assert (=> d!1372979 (=> res!1862917 e!2793453)))

(assert (=> d!1372979 (= res!1862917 (and (is-Cons!50438 (t!357516 newBucket!178)) (= (_1!28681 (h!56233 (t!357516 newBucket!178))) (_1!28681 (h!56233 newBucket!178)))))))

(assert (=> d!1372979 (= (containsKey!1589 (t!357516 newBucket!178) (_1!28681 (h!56233 newBucket!178))) e!2793453)))

(declare-fun b!4485189 () Bool)

(declare-fun e!2793454 () Bool)

(assert (=> b!4485189 (= e!2793453 e!2793454)))

(declare-fun res!1862918 () Bool)

(assert (=> b!4485189 (=> (not res!1862918) (not e!2793454))))

(assert (=> b!4485189 (= res!1862918 (is-Cons!50438 (t!357516 newBucket!178)))))

(declare-fun b!4485190 () Bool)

(assert (=> b!4485190 (= e!2793454 (containsKey!1589 (t!357516 (t!357516 newBucket!178)) (_1!28681 (h!56233 newBucket!178))))))

(assert (= (and d!1372979 (not res!1862917)) b!4485189))

(assert (= (and b!4485189 res!1862918) b!4485190))

(declare-fun m!5205849 () Bool)

(assert (=> b!4485190 m!5205849))

(assert (=> b!4484947 d!1372979))

(assert (=> d!1372837 d!1372963))

(declare-fun d!1372981 () Bool)

(declare-fun isEmpty!28539 (Option!10994) Bool)

(assert (=> d!1372981 (= (isDefined!8281 (getValueByKey!974 (toList!4177 lt!1670558) hash!344)) (not (isEmpty!28539 (getValueByKey!974 (toList!4177 lt!1670558) hash!344))))))

(declare-fun bs!825850 () Bool)

(assert (= bs!825850 d!1372981))

(assert (=> bs!825850 m!5205465))

(declare-fun m!5205851 () Bool)

(assert (=> bs!825850 m!5205851))

(assert (=> b!4484851 d!1372981))

(assert (=> b!4484851 d!1372977))

(declare-fun d!1372983 () Bool)

(declare-fun noDuplicatedKeys!226 (List!50562) Bool)

(assert (=> d!1372983 (= (invariantList!958 (toList!4178 lt!1670659)) (noDuplicatedKeys!226 (toList!4178 lt!1670659)))))

(declare-fun bs!825851 () Bool)

(assert (= bs!825851 d!1372983))

(declare-fun m!5205853 () Bool)

(assert (=> bs!825851 m!5205853))

(assert (=> d!1372841 d!1372983))

(declare-fun d!1372985 () Bool)

(declare-fun res!1862919 () Bool)

(declare-fun e!2793455 () Bool)

(assert (=> d!1372985 (=> res!1862919 e!2793455)))

(assert (=> d!1372985 (= res!1862919 (is-Nil!50439 (toList!4177 lm!1477)))))

(assert (=> d!1372985 (= (forall!10095 (toList!4177 lm!1477) lambda!166207) e!2793455)))

(declare-fun b!4485191 () Bool)

(declare-fun e!2793456 () Bool)

(assert (=> b!4485191 (= e!2793455 e!2793456)))

(declare-fun res!1862920 () Bool)

(assert (=> b!4485191 (=> (not res!1862920) (not e!2793456))))

(assert (=> b!4485191 (= res!1862920 (dynLambda!21061 lambda!166207 (h!56234 (toList!4177 lm!1477))))))

(declare-fun b!4485192 () Bool)

(assert (=> b!4485192 (= e!2793456 (forall!10095 (t!357517 (toList!4177 lm!1477)) lambda!166207))))

(assert (= (and d!1372985 (not res!1862919)) b!4485191))

(assert (= (and b!4485191 res!1862920) b!4485192))

(declare-fun b_lambda!150581 () Bool)

(assert (=> (not b_lambda!150581) (not b!4485191)))

(declare-fun m!5205855 () Bool)

(assert (=> b!4485191 m!5205855))

(declare-fun m!5205857 () Bool)

(assert (=> b!4485192 m!5205857))

(assert (=> d!1372841 d!1372985))

(declare-fun d!1372987 () Bool)

(declare-fun choose!28850 (Hashable!5480 K!11853) (_ BitVec 64))

(assert (=> d!1372987 (= (hash!2592 hashF!1107 key!3287) (choose!28850 hashF!1107 key!3287))))

(declare-fun bs!825852 () Bool)

(assert (= bs!825852 d!1372987))

(declare-fun m!5205859 () Bool)

(assert (=> bs!825852 m!5205859))

(assert (=> d!1372871 d!1372987))

(declare-fun d!1372989 () Bool)

(assert (=> d!1372989 (isDefined!8281 (getValueByKey!974 (toList!4177 lt!1670558) hash!344))))

(declare-fun lt!1670830 () Unit!90047)

(declare-fun choose!28851 (List!50563 (_ BitVec 64)) Unit!90047)

(assert (=> d!1372989 (= lt!1670830 (choose!28851 (toList!4177 lt!1670558) hash!344))))

(declare-fun e!2793459 () Bool)

(assert (=> d!1372989 e!2793459))

(declare-fun res!1862923 () Bool)

(assert (=> d!1372989 (=> (not res!1862923) (not e!2793459))))

(assert (=> d!1372989 (= res!1862923 (isStrictlySorted!372 (toList!4177 lt!1670558)))))

(assert (=> d!1372989 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!878 (toList!4177 lt!1670558) hash!344) lt!1670830)))

(declare-fun b!4485195 () Bool)

(assert (=> b!4485195 (= e!2793459 (containsKey!1591 (toList!4177 lt!1670558) hash!344))))

(assert (= (and d!1372989 res!1862923) b!4485195))

(assert (=> d!1372989 m!5205465))

(assert (=> d!1372989 m!5205465))

(assert (=> d!1372989 m!5205479))

(declare-fun m!5205861 () Bool)

(assert (=> d!1372989 m!5205861))

(declare-fun m!5205863 () Bool)

(assert (=> d!1372989 m!5205863))

(assert (=> b!4485195 m!5205475))

(assert (=> b!4484849 d!1372989))

(assert (=> b!4484849 d!1372981))

(assert (=> b!4484849 d!1372977))

(assert (=> b!4484875 d!1372867))

(declare-fun bs!825853 () Bool)

(declare-fun b!4485203 () Bool)

(assert (= bs!825853 (and b!4485203 b!4485098)))

(declare-fun lambda!166281 () Int)

(assert (=> bs!825853 (= (= (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))) (= lambda!166281 lambda!166240))))

(declare-fun bs!825854 () Bool)

(assert (= bs!825854 (and b!4485203 b!4485097)))

(assert (=> bs!825854 (= (= (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) (Cons!50438 (h!56233 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))) (t!357516 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))) (= lambda!166281 lambda!166241))))

(declare-fun bs!825855 () Bool)

(assert (= bs!825855 (and b!4485203 b!4485093)))

(assert (=> bs!825855 (= lambda!166281 lambda!166242)))

(assert (=> b!4485203 true))

(declare-fun bs!825856 () Bool)

(declare-fun b!4485204 () Bool)

(assert (= bs!825856 (and b!4485204 b!4485101)))

(declare-fun lambda!166282 () Int)

(assert (=> bs!825856 (= lambda!166282 lambda!166243)))

(declare-fun d!1372991 () Bool)

(declare-fun e!2793462 () Bool)

(assert (=> d!1372991 e!2793462))

(declare-fun res!1862930 () Bool)

(assert (=> d!1372991 (=> (not res!1862930) (not e!2793462))))

(declare-fun lt!1670833 () List!50566)

(assert (=> d!1372991 (= res!1862930 (noDuplicate!711 lt!1670833))))

(assert (=> d!1372991 (= lt!1670833 (getKeysList!406 (toList!4178 (extractMap!1141 (toList!4177 lm!1477)))))))

(assert (=> d!1372991 (= (keys!17457 (extractMap!1141 (toList!4177 lm!1477))) lt!1670833)))

(declare-fun b!4485202 () Bool)

(declare-fun res!1862932 () Bool)

(assert (=> b!4485202 (=> (not res!1862932) (not e!2793462))))

(assert (=> b!4485202 (= res!1862932 (= (length!278 lt!1670833) (length!279 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))))))))

(declare-fun res!1862931 () Bool)

(assert (=> b!4485203 (=> (not res!1862931) (not e!2793462))))

(assert (=> b!4485203 (= res!1862931 (forall!10099 lt!1670833 lambda!166281))))

(assert (=> b!4485204 (= e!2793462 (= (content!8190 lt!1670833) (content!8190 (map!11065 (toList!4178 (extractMap!1141 (toList!4177 lm!1477))) lambda!166282))))))

(assert (= (and d!1372991 res!1862930) b!4485202))

(assert (= (and b!4485202 res!1862932) b!4485203))

(assert (= (and b!4485203 res!1862931) b!4485204))

(declare-fun m!5205865 () Bool)

(assert (=> d!1372991 m!5205865))

(assert (=> d!1372991 m!5205537))

(declare-fun m!5205867 () Bool)

(assert (=> b!4485202 m!5205867))

(assert (=> b!4485202 m!5205721))

(declare-fun m!5205869 () Bool)

(assert (=> b!4485203 m!5205869))

(declare-fun m!5205871 () Bool)

(assert (=> b!4485204 m!5205871))

(declare-fun m!5205873 () Bool)

(assert (=> b!4485204 m!5205873))

(assert (=> b!4485204 m!5205873))

(declare-fun m!5205875 () Bool)

(assert (=> b!4485204 m!5205875))

(assert (=> b!4484901 d!1372991))

(declare-fun d!1372993 () Bool)

(declare-fun c!763938 () Bool)

(assert (=> d!1372993 (= c!763938 (is-Nil!50439 (toList!4177 lm!1477)))))

(declare-fun e!2793465 () (Set tuple2!50776))

(assert (=> d!1372993 (= (content!8188 (toList!4177 lm!1477)) e!2793465)))

(declare-fun b!4485211 () Bool)

(assert (=> b!4485211 (= e!2793465 (as set.empty (Set tuple2!50776)))))

(declare-fun b!4485212 () Bool)

(assert (=> b!4485212 (= e!2793465 (set.union (set.insert (h!56234 (toList!4177 lm!1477)) (as set.empty (Set tuple2!50776))) (content!8188 (t!357517 (toList!4177 lm!1477)))))))

(assert (= (and d!1372993 c!763938) b!4485211))

(assert (= (and d!1372993 (not c!763938)) b!4485212))

(declare-fun m!5205877 () Bool)

(assert (=> b!4485212 m!5205877))

(assert (=> b!4485212 m!5205593))

(assert (=> d!1372831 d!1372993))

(declare-fun d!1372995 () Bool)

(declare-fun lt!1670836 () Bool)

(assert (=> d!1372995 (= lt!1670836 (set.member key!3287 (content!8190 (keys!17457 (extractMap!1141 (toList!4177 lm!1477))))))))

(declare-fun e!2793471 () Bool)

(assert (=> d!1372995 (= lt!1670836 e!2793471)))

(declare-fun res!1862937 () Bool)

(assert (=> d!1372995 (=> (not res!1862937) (not e!2793471))))

(assert (=> d!1372995 (= res!1862937 (is-Cons!50442 (keys!17457 (extractMap!1141 (toList!4177 lm!1477)))))))

(assert (=> d!1372995 (= (contains!13062 (keys!17457 (extractMap!1141 (toList!4177 lm!1477))) key!3287) lt!1670836)))

(declare-fun b!4485217 () Bool)

(declare-fun e!2793470 () Bool)

(assert (=> b!4485217 (= e!2793471 e!2793470)))

(declare-fun res!1862938 () Bool)

(assert (=> b!4485217 (=> res!1862938 e!2793470)))

(assert (=> b!4485217 (= res!1862938 (= (h!56239 (keys!17457 (extractMap!1141 (toList!4177 lm!1477)))) key!3287))))

(declare-fun b!4485218 () Bool)

(assert (=> b!4485218 (= e!2793470 (contains!13062 (t!357520 (keys!17457 (extractMap!1141 (toList!4177 lm!1477)))) key!3287))))

(assert (= (and d!1372995 res!1862937) b!4485217))

(assert (= (and b!4485217 (not res!1862938)) b!4485218))

(assert (=> d!1372995 m!5205529))

(declare-fun m!5205879 () Bool)

(assert (=> d!1372995 m!5205879))

(declare-fun m!5205881 () Bool)

(assert (=> d!1372995 m!5205881))

(declare-fun m!5205883 () Bool)

(assert (=> b!4485218 m!5205883))

(assert (=> b!4484897 d!1372995))

(assert (=> b!4484897 d!1372991))

(declare-fun d!1372997 () Bool)

(declare-fun c!763939 () Bool)

(assert (=> d!1372997 (= c!763939 (is-Nil!50439 (t!357517 (toList!4177 lm!1477))))))

(declare-fun e!2793472 () (Set tuple2!50776))

(assert (=> d!1372997 (= (content!8188 (t!357517 (toList!4177 lm!1477))) e!2793472)))

(declare-fun b!4485219 () Bool)

(assert (=> b!4485219 (= e!2793472 (as set.empty (Set tuple2!50776)))))

(declare-fun b!4485220 () Bool)

(assert (=> b!4485220 (= e!2793472 (set.union (set.insert (h!56234 (t!357517 (toList!4177 lm!1477))) (as set.empty (Set tuple2!50776))) (content!8188 (t!357517 (t!357517 (toList!4177 lm!1477))))))))

(assert (= (and d!1372997 c!763939) b!4485219))

(assert (= (and d!1372997 (not c!763939)) b!4485220))

(declare-fun m!5205885 () Bool)

(assert (=> b!4485220 m!5205885))

(assert (=> b!4485220 m!5205793))

(assert (=> d!1372867 d!1372997))

(assert (=> b!4484899 d!1372995))

(assert (=> b!4484899 d!1372991))

(declare-fun d!1372999 () Bool)

(declare-fun res!1862939 () Bool)

(declare-fun e!2793473 () Bool)

(assert (=> d!1372999 (=> res!1862939 e!2793473)))

(assert (=> d!1372999 (= res!1862939 (not (is-Cons!50438 (_2!28682 lt!1670564))))))

(assert (=> d!1372999 (= (noDuplicateKeys!1085 (_2!28682 lt!1670564)) e!2793473)))

(declare-fun b!4485221 () Bool)

(declare-fun e!2793474 () Bool)

(assert (=> b!4485221 (= e!2793473 e!2793474)))

(declare-fun res!1862940 () Bool)

(assert (=> b!4485221 (=> (not res!1862940) (not e!2793474))))

(assert (=> b!4485221 (= res!1862940 (not (containsKey!1589 (t!357516 (_2!28682 lt!1670564)) (_1!28681 (h!56233 (_2!28682 lt!1670564))))))))

(declare-fun b!4485222 () Bool)

(assert (=> b!4485222 (= e!2793474 (noDuplicateKeys!1085 (t!357516 (_2!28682 lt!1670564))))))

(assert (= (and d!1372999 (not res!1862939)) b!4485221))

(assert (= (and b!4485221 res!1862940) b!4485222))

(declare-fun m!5205887 () Bool)

(assert (=> b!4485221 m!5205887))

(declare-fun m!5205889 () Bool)

(assert (=> b!4485222 m!5205889))

(assert (=> bs!825803 d!1372999))

(declare-fun d!1373001 () Bool)

(assert (=> d!1373001 (= (get!16460 (getValueByKey!974 (toList!4177 lm!1477) hash!344)) (v!44400 (getValueByKey!974 (toList!4177 lm!1477) hash!344)))))

(assert (=> d!1372833 d!1373001))

(declare-fun b!4485224 () Bool)

(declare-fun e!2793475 () Option!10994)

(declare-fun e!2793476 () Option!10994)

(assert (=> b!4485224 (= e!2793475 e!2793476)))

(declare-fun c!763941 () Bool)

(assert (=> b!4485224 (= c!763941 (and (is-Cons!50439 (toList!4177 lm!1477)) (not (= (_1!28682 (h!56234 (toList!4177 lm!1477))) hash!344))))))

(declare-fun b!4485223 () Bool)

(assert (=> b!4485223 (= e!2793475 (Some!10993 (_2!28682 (h!56234 (toList!4177 lm!1477)))))))

(declare-fun b!4485225 () Bool)

(assert (=> b!4485225 (= e!2793476 (getValueByKey!974 (t!357517 (toList!4177 lm!1477)) hash!344))))

(declare-fun d!1373003 () Bool)

(declare-fun c!763940 () Bool)

(assert (=> d!1373003 (= c!763940 (and (is-Cons!50439 (toList!4177 lm!1477)) (= (_1!28682 (h!56234 (toList!4177 lm!1477))) hash!344)))))

(assert (=> d!1373003 (= (getValueByKey!974 (toList!4177 lm!1477) hash!344) e!2793475)))

(declare-fun b!4485226 () Bool)

(assert (=> b!4485226 (= e!2793476 None!10993)))

(assert (= (and d!1373003 c!763940) b!4485223))

(assert (= (and d!1373003 (not c!763940)) b!4485224))

(assert (= (and b!4485224 c!763941) b!4485225))

(assert (= (and b!4485224 (not c!763941)) b!4485226))

(declare-fun m!5205891 () Bool)

(assert (=> b!4485225 m!5205891))

(assert (=> d!1372833 d!1373003))

(declare-fun d!1373005 () Bool)

(declare-fun lt!1670837 () Bool)

(assert (=> d!1373005 (= lt!1670837 (set.member key!3287 (content!8190 e!2793252)))))

(declare-fun e!2793478 () Bool)

(assert (=> d!1373005 (= lt!1670837 e!2793478)))

(declare-fun res!1862941 () Bool)

(assert (=> d!1373005 (=> (not res!1862941) (not e!2793478))))

(assert (=> d!1373005 (= res!1862941 (is-Cons!50442 e!2793252))))

(assert (=> d!1373005 (= (contains!13062 e!2793252 key!3287) lt!1670837)))

(declare-fun b!4485227 () Bool)

(declare-fun e!2793477 () Bool)

(assert (=> b!4485227 (= e!2793478 e!2793477)))

(declare-fun res!1862942 () Bool)

(assert (=> b!4485227 (=> res!1862942 e!2793477)))

(assert (=> b!4485227 (= res!1862942 (= (h!56239 e!2793252) key!3287))))

(declare-fun b!4485228 () Bool)

(assert (=> b!4485228 (= e!2793477 (contains!13062 (t!357520 e!2793252) key!3287))))

(assert (= (and d!1373005 res!1862941) b!4485227))

(assert (= (and b!4485227 (not res!1862942)) b!4485228))

(declare-fun m!5205893 () Bool)

(assert (=> d!1373005 m!5205893))

(declare-fun m!5205895 () Bool)

(assert (=> d!1373005 m!5205895))

(declare-fun m!5205897 () Bool)

(assert (=> b!4485228 m!5205897))

(assert (=> bm!312177 d!1373005))

(declare-fun d!1373007 () Bool)

(declare-fun res!1862943 () Bool)

(declare-fun e!2793479 () Bool)

(assert (=> d!1373007 (=> res!1862943 e!2793479)))

(assert (=> d!1373007 (= res!1862943 (is-Nil!50439 (t!357517 (toList!4177 lm!1477))))))

(assert (=> d!1373007 (= (forall!10095 (t!357517 (toList!4177 lm!1477)) lambda!166190) e!2793479)))

(declare-fun b!4485229 () Bool)

(declare-fun e!2793480 () Bool)

(assert (=> b!4485229 (= e!2793479 e!2793480)))

(declare-fun res!1862944 () Bool)

(assert (=> b!4485229 (=> (not res!1862944) (not e!2793480))))

(assert (=> b!4485229 (= res!1862944 (dynLambda!21061 lambda!166190 (h!56234 (t!357517 (toList!4177 lm!1477)))))))

(declare-fun b!4485230 () Bool)

(assert (=> b!4485230 (= e!2793480 (forall!10095 (t!357517 (t!357517 (toList!4177 lm!1477))) lambda!166190))))

(assert (= (and d!1373007 (not res!1862943)) b!4485229))

(assert (= (and b!4485229 res!1862944) b!4485230))

(declare-fun b_lambda!150583 () Bool)

(assert (=> (not b_lambda!150583) (not b!4485229)))

(declare-fun m!5205899 () Bool)

(assert (=> b!4485229 m!5205899))

(declare-fun m!5205901 () Bool)

(assert (=> b!4485230 m!5205901))

(assert (=> b!4484842 d!1373007))

(declare-fun d!1373009 () Bool)

(assert (=> d!1373009 (= (tail!7604 (toList!4177 lm!1477)) (t!357517 (toList!4177 lm!1477)))))

(assert (=> d!1372819 d!1373009))

(assert (=> b!4484854 d!1373003))

(declare-fun d!1373011 () Bool)

(assert (=> d!1373011 (isDefined!8281 (getValueByKey!974 (toList!4177 lm!1477) lt!1670563))))

(declare-fun lt!1670838 () Unit!90047)

(assert (=> d!1373011 (= lt!1670838 (choose!28851 (toList!4177 lm!1477) lt!1670563))))

(declare-fun e!2793481 () Bool)

(assert (=> d!1373011 e!2793481))

(declare-fun res!1862945 () Bool)

(assert (=> d!1373011 (=> (not res!1862945) (not e!2793481))))

(assert (=> d!1373011 (= res!1862945 (isStrictlySorted!372 (toList!4177 lm!1477)))))

(assert (=> d!1373011 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!878 (toList!4177 lm!1477) lt!1670563) lt!1670838)))

(declare-fun b!4485231 () Bool)

(assert (=> b!4485231 (= e!2793481 (containsKey!1591 (toList!4177 lm!1477) lt!1670563))))

(assert (= (and d!1373011 res!1862945) b!4485231))

(assert (=> d!1373011 m!5205499))

(assert (=> d!1373011 m!5205499))

(assert (=> d!1373011 m!5205501))

(declare-fun m!5205903 () Bool)

(assert (=> d!1373011 m!5205903))

(assert (=> d!1373011 m!5205473))

(assert (=> b!4485231 m!5205495))

(assert (=> b!4484855 d!1373011))

(declare-fun d!1373013 () Bool)

(assert (=> d!1373013 (= (isDefined!8281 (getValueByKey!974 (toList!4177 lm!1477) lt!1670563)) (not (isEmpty!28539 (getValueByKey!974 (toList!4177 lm!1477) lt!1670563))))))

(declare-fun bs!825857 () Bool)

(assert (= bs!825857 d!1373013))

(assert (=> bs!825857 m!5205499))

(declare-fun m!5205905 () Bool)

(assert (=> bs!825857 m!5205905))

(assert (=> b!4484855 d!1373013))

(declare-fun b!4485233 () Bool)

(declare-fun e!2793482 () Option!10994)

(declare-fun e!2793483 () Option!10994)

(assert (=> b!4485233 (= e!2793482 e!2793483)))

(declare-fun c!763943 () Bool)

(assert (=> b!4485233 (= c!763943 (and (is-Cons!50439 (toList!4177 lm!1477)) (not (= (_1!28682 (h!56234 (toList!4177 lm!1477))) lt!1670563))))))

(declare-fun b!4485232 () Bool)

(assert (=> b!4485232 (= e!2793482 (Some!10993 (_2!28682 (h!56234 (toList!4177 lm!1477)))))))

(declare-fun b!4485234 () Bool)

(assert (=> b!4485234 (= e!2793483 (getValueByKey!974 (t!357517 (toList!4177 lm!1477)) lt!1670563))))

(declare-fun d!1373015 () Bool)

(declare-fun c!763942 () Bool)

(assert (=> d!1373015 (= c!763942 (and (is-Cons!50439 (toList!4177 lm!1477)) (= (_1!28682 (h!56234 (toList!4177 lm!1477))) lt!1670563)))))

(assert (=> d!1373015 (= (getValueByKey!974 (toList!4177 lm!1477) lt!1670563) e!2793482)))

(declare-fun b!4485235 () Bool)

(assert (=> b!4485235 (= e!2793483 None!10993)))

(assert (= (and d!1373015 c!763942) b!4485232))

(assert (= (and d!1373015 (not c!763942)) b!4485233))

(assert (= (and b!4485233 c!763943) b!4485234))

(assert (= (and b!4485233 (not c!763943)) b!4485235))

(declare-fun m!5205907 () Bool)

(assert (=> b!4485234 m!5205907))

(assert (=> b!4484855 d!1373015))

(declare-fun d!1373017 () Bool)

(declare-fun res!1862950 () Bool)

(declare-fun e!2793488 () Bool)

(assert (=> d!1373017 (=> res!1862950 e!2793488)))

(assert (=> d!1373017 (= res!1862950 (or (is-Nil!50439 (toList!4177 lm!1477)) (is-Nil!50439 (t!357517 (toList!4177 lm!1477)))))))

(assert (=> d!1373017 (= (isStrictlySorted!372 (toList!4177 lm!1477)) e!2793488)))

(declare-fun b!4485240 () Bool)

(declare-fun e!2793489 () Bool)

(assert (=> b!4485240 (= e!2793488 e!2793489)))

(declare-fun res!1862951 () Bool)

(assert (=> b!4485240 (=> (not res!1862951) (not e!2793489))))

(assert (=> b!4485240 (= res!1862951 (bvslt (_1!28682 (h!56234 (toList!4177 lm!1477))) (_1!28682 (h!56234 (t!357517 (toList!4177 lm!1477))))))))

(declare-fun b!4485241 () Bool)

(assert (=> b!4485241 (= e!2793489 (isStrictlySorted!372 (t!357517 (toList!4177 lm!1477))))))

(assert (= (and d!1373017 (not res!1862950)) b!4485240))

(assert (= (and b!4485240 res!1862951) b!4485241))

(declare-fun m!5205909 () Bool)

(assert (=> b!4485241 m!5205909))

(assert (=> d!1372815 d!1373017))

(declare-fun d!1373019 () Bool)

(declare-fun res!1862952 () Bool)

(declare-fun e!2793490 () Bool)

(assert (=> d!1373019 (=> res!1862952 e!2793490)))

(assert (=> d!1373019 (= res!1862952 (not (is-Cons!50438 (t!357516 newBucket!178))))))

(assert (=> d!1373019 (= (noDuplicateKeys!1085 (t!357516 newBucket!178)) e!2793490)))

(declare-fun b!4485242 () Bool)

(declare-fun e!2793491 () Bool)

(assert (=> b!4485242 (= e!2793490 e!2793491)))

(declare-fun res!1862953 () Bool)

(assert (=> b!4485242 (=> (not res!1862953) (not e!2793491))))

(assert (=> b!4485242 (= res!1862953 (not (containsKey!1589 (t!357516 (t!357516 newBucket!178)) (_1!28681 (h!56233 (t!357516 newBucket!178))))))))

(declare-fun b!4485243 () Bool)

(assert (=> b!4485243 (= e!2793491 (noDuplicateKeys!1085 (t!357516 (t!357516 newBucket!178))))))

(assert (= (and d!1373019 (not res!1862952)) b!4485242))

(assert (= (and b!4485242 res!1862953) b!4485243))

(declare-fun m!5205911 () Bool)

(assert (=> b!4485242 m!5205911))

(declare-fun m!5205913 () Bool)

(assert (=> b!4485243 m!5205913))

(assert (=> b!4484948 d!1373019))

(assert (=> b!4484857 d!1373013))

(assert (=> b!4484857 d!1373015))

(declare-fun d!1373021 () Bool)

(declare-fun res!1862954 () Bool)

(declare-fun e!2793492 () Bool)

(assert (=> d!1373021 (=> res!1862954 e!2793492)))

(assert (=> d!1373021 (= res!1862954 (and (is-Cons!50438 (_2!28682 (h!56234 (toList!4177 lt!1670558)))) (= (_1!28681 (h!56233 (_2!28682 (h!56234 (toList!4177 lt!1670558))))) key!3287)))))

(assert (=> d!1373021 (= (containsKey!1589 (_2!28682 (h!56234 (toList!4177 lt!1670558))) key!3287) e!2793492)))

(declare-fun b!4485244 () Bool)

(declare-fun e!2793493 () Bool)

(assert (=> b!4485244 (= e!2793492 e!2793493)))

(declare-fun res!1862955 () Bool)

(assert (=> b!4485244 (=> (not res!1862955) (not e!2793493))))

(assert (=> b!4485244 (= res!1862955 (is-Cons!50438 (_2!28682 (h!56234 (toList!4177 lt!1670558)))))))

(declare-fun b!4485245 () Bool)

(assert (=> b!4485245 (= e!2793493 (containsKey!1589 (t!357516 (_2!28682 (h!56234 (toList!4177 lt!1670558)))) key!3287))))

(assert (= (and d!1373021 (not res!1862954)) b!4485244))

(assert (= (and b!4485244 res!1862955) b!4485245))

(declare-fun m!5205915 () Bool)

(assert (=> b!4485245 m!5205915))

(assert (=> b!4484931 d!1373021))

(declare-fun lt!1670839 () Bool)

(declare-fun d!1373023 () Bool)

(assert (=> d!1373023 (= lt!1670839 (set.member (tuple2!50777 hash!344 lt!1670565) (content!8188 (toList!4177 lm!1477))))))

(declare-fun e!2793495 () Bool)

(assert (=> d!1373023 (= lt!1670839 e!2793495)))

(declare-fun res!1862956 () Bool)

(assert (=> d!1373023 (=> (not res!1862956) (not e!2793495))))

(assert (=> d!1373023 (= res!1862956 (is-Cons!50439 (toList!4177 lm!1477)))))

(assert (=> d!1373023 (= (contains!13057 (toList!4177 lm!1477) (tuple2!50777 hash!344 lt!1670565)) lt!1670839)))

(declare-fun b!4485246 () Bool)

(declare-fun e!2793494 () Bool)

(assert (=> b!4485246 (= e!2793495 e!2793494)))

(declare-fun res!1862957 () Bool)

(assert (=> b!4485246 (=> res!1862957 e!2793494)))

(assert (=> b!4485246 (= res!1862957 (= (h!56234 (toList!4177 lm!1477)) (tuple2!50777 hash!344 lt!1670565)))))

(declare-fun b!4485247 () Bool)

(assert (=> b!4485247 (= e!2793494 (contains!13057 (t!357517 (toList!4177 lm!1477)) (tuple2!50777 hash!344 lt!1670565)))))

(assert (= (and d!1373023 res!1862956) b!4485246))

(assert (= (and b!4485246 (not res!1862957)) b!4485247))

(assert (=> d!1373023 m!5205509))

(declare-fun m!5205917 () Bool)

(assert (=> d!1373023 m!5205917))

(declare-fun m!5205919 () Bool)

(assert (=> b!4485247 m!5205919))

(assert (=> d!1372821 d!1373023))

(declare-fun d!1373025 () Bool)

(assert (=> d!1373025 (contains!13057 (toList!4177 lm!1477) (tuple2!50777 hash!344 lt!1670565))))

(assert (=> d!1373025 true))

(declare-fun _$14!1033 () Unit!90047)

(assert (=> d!1373025 (= (choose!28837 (toList!4177 lm!1477) hash!344 lt!1670565) _$14!1033)))

(declare-fun bs!825858 () Bool)

(assert (= bs!825858 d!1373025))

(assert (=> bs!825858 m!5205483))

(assert (=> d!1372821 d!1373025))

(assert (=> d!1372821 d!1373017))

(declare-fun b!4485251 () Bool)

(declare-fun e!2793496 () List!50562)

(assert (=> b!4485251 (= e!2793496 Nil!50438)))

(declare-fun b!4485248 () Bool)

(declare-fun e!2793497 () List!50562)

(assert (=> b!4485248 (= e!2793497 (t!357516 (t!357516 lt!1670565)))))

(declare-fun b!4485250 () Bool)

(assert (=> b!4485250 (= e!2793496 (Cons!50438 (h!56233 (t!357516 lt!1670565)) (removePairForKey!712 (t!357516 (t!357516 lt!1670565)) key!3287)))))

(declare-fun b!4485249 () Bool)

(assert (=> b!4485249 (= e!2793497 e!2793496)))

(declare-fun c!763944 () Bool)

(assert (=> b!4485249 (= c!763944 (is-Cons!50438 (t!357516 lt!1670565)))))

(declare-fun d!1373029 () Bool)

(declare-fun lt!1670840 () List!50562)

(assert (=> d!1373029 (not (containsKey!1589 lt!1670840 key!3287))))

(assert (=> d!1373029 (= lt!1670840 e!2793497)))

(declare-fun c!763945 () Bool)

(assert (=> d!1373029 (= c!763945 (and (is-Cons!50438 (t!357516 lt!1670565)) (= (_1!28681 (h!56233 (t!357516 lt!1670565))) key!3287)))))

(assert (=> d!1373029 (noDuplicateKeys!1085 (t!357516 lt!1670565))))

(assert (=> d!1373029 (= (removePairForKey!712 (t!357516 lt!1670565) key!3287) lt!1670840)))

(assert (= (and d!1373029 c!763945) b!4485248))

(assert (= (and d!1373029 (not c!763945)) b!4485249))

(assert (= (and b!4485249 c!763944) b!4485250))

(assert (= (and b!4485249 (not c!763944)) b!4485251))

(declare-fun m!5205921 () Bool)

(assert (=> b!4485250 m!5205921))

(declare-fun m!5205923 () Bool)

(assert (=> d!1373029 m!5205923))

(assert (=> d!1373029 m!5205757))

(assert (=> b!4484868 d!1373029))

(declare-fun d!1373031 () Bool)

(assert (=> d!1373031 (= (isEmpty!28536 (toList!4177 lm!1477)) (is-Nil!50439 (toList!4177 lm!1477)))))

(assert (=> d!1372873 d!1373031))

(declare-fun d!1373033 () Bool)

(declare-fun res!1862958 () Bool)

(declare-fun e!2793498 () Bool)

(assert (=> d!1373033 (=> res!1862958 e!2793498)))

(declare-fun e!2793500 () Bool)

(assert (=> d!1373033 (= res!1862958 e!2793500)))

(declare-fun res!1862959 () Bool)

(assert (=> d!1373033 (=> (not res!1862959) (not e!2793500))))

(assert (=> d!1373033 (= res!1862959 (is-Cons!50439 (t!357517 (toList!4177 lt!1670558))))))

(assert (=> d!1373033 (= (containsKeyBiggerList!65 (t!357517 (toList!4177 lt!1670558)) key!3287) e!2793498)))

(declare-fun b!4485252 () Bool)

(assert (=> b!4485252 (= e!2793500 (containsKey!1589 (_2!28682 (h!56234 (t!357517 (toList!4177 lt!1670558)))) key!3287))))

(declare-fun b!4485253 () Bool)

(declare-fun e!2793499 () Bool)

(assert (=> b!4485253 (= e!2793498 e!2793499)))

(declare-fun res!1862960 () Bool)

(assert (=> b!4485253 (=> (not res!1862960) (not e!2793499))))

(assert (=> b!4485253 (= res!1862960 (is-Cons!50439 (t!357517 (toList!4177 lt!1670558))))))

(declare-fun b!4485254 () Bool)

(assert (=> b!4485254 (= e!2793499 (containsKeyBiggerList!65 (t!357517 (t!357517 (toList!4177 lt!1670558))) key!3287))))

(assert (= (and d!1373033 res!1862959) b!4485252))

(assert (= (and d!1373033 (not res!1862958)) b!4485253))

(assert (= (and b!4485253 res!1862960) b!4485254))

(declare-fun m!5205925 () Bool)

(assert (=> b!4485252 m!5205925))

(declare-fun m!5205927 () Bool)

(assert (=> b!4485254 m!5205927))

(assert (=> b!4484933 d!1373033))

(declare-fun e!2793501 () Bool)

(declare-fun b!4485255 () Bool)

(declare-fun tp!1336970 () Bool)

(assert (=> b!4485255 (= e!2793501 (and tp_is_empty!27617 tp_is_empty!27619 tp!1336970))))

(assert (=> b!4484973 (= tp!1336956 e!2793501)))

(assert (= (and b!4484973 (is-Cons!50438 (_2!28682 (h!56234 (toList!4177 lm!1477))))) b!4485255))

(declare-fun b!4485256 () Bool)

(declare-fun e!2793502 () Bool)

(declare-fun tp!1336971 () Bool)

(declare-fun tp!1336972 () Bool)

(assert (=> b!4485256 (= e!2793502 (and tp!1336971 tp!1336972))))

(assert (=> b!4484973 (= tp!1336957 e!2793502)))

(assert (= (and b!4484973 (is-Cons!50439 (t!357517 (toList!4177 lm!1477)))) b!4485256))

(declare-fun tp!1336973 () Bool)

(declare-fun b!4485257 () Bool)

(declare-fun e!2793503 () Bool)

(assert (=> b!4485257 (= e!2793503 (and tp_is_empty!27617 tp_is_empty!27619 tp!1336973))))

(assert (=> b!4484978 (= tp!1336960 e!2793503)))

(assert (= (and b!4484978 (is-Cons!50438 (t!357516 (t!357516 newBucket!178)))) b!4485257))

(declare-fun b_lambda!150585 () Bool)

(assert (= b_lambda!150579 (or start!441546 b_lambda!150585)))

(assert (=> d!1372973 d!1372879))

(declare-fun b_lambda!150587 () Bool)

(assert (= b_lambda!150571 (or d!1372869 b_lambda!150587)))

(declare-fun bs!825859 () Bool)

(declare-fun d!1373035 () Bool)

(assert (= bs!825859 (and d!1373035 d!1372869)))

(assert (=> bs!825859 (= (dynLambda!21061 lambda!166219 (h!56234 (toList!4177 lm!1477))) (allKeysSameHash!939 (_2!28682 (h!56234 (toList!4177 lm!1477))) (_1!28682 (h!56234 (toList!4177 lm!1477))) hashF!1107))))

(declare-fun m!5205929 () Bool)

(assert (=> bs!825859 m!5205929))

(assert (=> b!4485104 d!1373035))

(declare-fun b_lambda!150589 () Bool)

(assert (= b_lambda!150575 (or d!1372853 b_lambda!150589)))

(declare-fun bs!825860 () Bool)

(declare-fun d!1373037 () Bool)

(assert (= bs!825860 (and d!1373037 d!1372853)))

(assert (=> bs!825860 (= (dynLambda!21061 lambda!166210 (h!56234 (toList!4177 lt!1670558))) (noDuplicateKeys!1085 (_2!28682 (h!56234 (toList!4177 lt!1670558)))))))

(declare-fun m!5205931 () Bool)

(assert (=> bs!825860 m!5205931))

(assert (=> b!4485142 d!1373037))

(declare-fun b_lambda!150591 () Bool)

(assert (= b_lambda!150581 (or d!1372841 b_lambda!150591)))

(declare-fun bs!825861 () Bool)

(declare-fun d!1373039 () Bool)

(assert (= bs!825861 (and d!1373039 d!1372841)))

(assert (=> bs!825861 (= (dynLambda!21061 lambda!166207 (h!56234 (toList!4177 lm!1477))) (noDuplicateKeys!1085 (_2!28682 (h!56234 (toList!4177 lm!1477)))))))

(assert (=> bs!825861 m!5205611))

(assert (=> b!4485191 d!1373039))

(declare-fun b_lambda!150593 () Bool)

(assert (= b_lambda!150583 (or start!441546 b_lambda!150593)))

(declare-fun bs!825862 () Bool)

(declare-fun d!1373041 () Bool)

(assert (= bs!825862 (and d!1373041 start!441546)))

(assert (=> bs!825862 (= (dynLambda!21061 lambda!166190 (h!56234 (t!357517 (toList!4177 lm!1477)))) (noDuplicateKeys!1085 (_2!28682 (h!56234 (t!357517 (toList!4177 lm!1477))))))))

(declare-fun m!5205933 () Bool)

(assert (=> bs!825862 m!5205933))

(assert (=> b!4485229 d!1373041))

(declare-fun b_lambda!150595 () Bool)

(assert (= b_lambda!150569 (or d!1372855 b_lambda!150595)))

(declare-fun bs!825863 () Bool)

(declare-fun d!1373043 () Bool)

(assert (= bs!825863 (and d!1373043 d!1372855)))

(assert (=> bs!825863 (= (dynLambda!21061 lambda!166213 (h!56234 (toList!4177 lm!1477))) (noDuplicateKeys!1085 (_2!28682 (h!56234 (toList!4177 lm!1477)))))))

(assert (=> bs!825863 m!5205611))

(assert (=> b!4485073 d!1373043))

(declare-fun b_lambda!150597 () Bool)

(assert (= b_lambda!150573 (or d!1372823 b_lambda!150597)))

(declare-fun bs!825864 () Bool)

(declare-fun d!1373045 () Bool)

(assert (= bs!825864 (and d!1373045 d!1372823)))

(assert (=> bs!825864 (= (dynLambda!21061 lambda!166198 (h!56234 (toList!4177 lm!1477))) (noDuplicateKeys!1085 (_2!28682 (h!56234 (toList!4177 lm!1477)))))))

(assert (=> bs!825864 m!5205611))

(assert (=> b!4485123 d!1373045))

(declare-fun b_lambda!150599 () Bool)

(assert (= b_lambda!150577 (or d!1372865 b_lambda!150599)))

(declare-fun bs!825865 () Bool)

(declare-fun d!1373047 () Bool)

(assert (= bs!825865 (and d!1373047 d!1372865)))

(assert (=> bs!825865 (= (dynLambda!21063 lambda!166216 (h!56233 newBucket!178)) (= (hash!2590 hashF!1107 (_1!28681 (h!56233 newBucket!178))) hash!344))))

(declare-fun m!5205935 () Bool)

(assert (=> bs!825865 m!5205935))

(assert (=> b!4485156 d!1373047))

(push 1)

(assert (not b!4485254))

(assert (not d!1372989))

(assert (not b!4485168))

(assert (not b!4485116))

(assert (not bm!312189))

(assert (not b!4485234))

(assert (not d!1372983))

(assert (not b!4485139))

(assert (not b_lambda!150587))

(assert (not b!4485097))

(assert (not b_lambda!150595))

(assert (not b!4485245))

(assert (not b!4485225))

(assert (not d!1372951))

(assert (not b!4485138))

(assert (not b!4485228))

(assert (not b_lambda!150597))

(assert (not bs!825865))

(assert (not bm!312187))

(assert (not d!1372991))

(assert (not bs!825861))

(assert (not b!4485074))

(assert (not b!4485072))

(assert (not b!4485241))

(assert (not b!4485187))

(assert (not b!4485230))

(assert (not b!4485117))

(assert (not b!4485250))

(assert (not b!4485203))

(assert (not b!4485257))

(assert (not bs!825863))

(assert (not b!4485145))

(assert (not b!4485119))

(assert (not b!4485172))

(assert (not d!1373005))

(assert (not d!1372961))

(assert (not d!1372987))

(assert (not b!4485252))

(assert (not b!4485106))

(assert (not d!1372921))

(assert (not b_lambda!150559))

(assert (not b!4485122))

(assert (not b_lambda!150561))

(assert (not b!4485195))

(assert (not b!4485247))

(assert (not d!1372971))

(assert (not b!4485101))

(assert (not b!4485242))

(assert (not d!1372939))

(assert (not d!1373023))

(assert (not d!1372981))

(assert (not b!4485105))

(assert (not b!4485120))

(assert (not b!4485256))

(assert (not b!4485192))

(assert (not d!1372947))

(assert (not b_lambda!150585))

(assert (not b!4485096))

(assert (not b!4485204))

(assert (not b!4485093))

(assert (not b!4485169))

(assert (not b!4485115))

(assert (not bm!312188))

(assert (not b!4485143))

(assert tp_is_empty!27617)

(assert (not d!1372925))

(assert (not b!4485175))

(assert (not b_lambda!150593))

(assert (not b!4485212))

(assert (not b!4485218))

(assert (not b!4485222))

(assert (not b!4485098))

(assert (not b!4485221))

(assert (not d!1372945))

(assert (not d!1372957))

(assert (not b_lambda!150591))

(assert (not b!4485220))

(assert (not b!4485107))

(assert (not b!4485190))

(assert (not b!4485157))

(assert (not b!4485202))

(assert (not bs!825864))

(assert (not b!4485135))

(assert (not b!4485255))

(assert (not b!4485171))

(assert (not d!1372965))

(assert (not b!4485231))

(assert (not d!1373013))

(assert (not b!4485151))

(assert (not d!1372969))

(assert (not bs!825862))

(assert (not d!1373029))

(assert (not b!4485124))

(assert (not bs!825859))

(assert (not b!4485243))

(assert (not d!1372941))

(assert (not b!4485113))

(assert (not b_lambda!150599))

(assert (not b!4485141))

(assert (not d!1373011))

(assert (not bs!825860))

(assert (not b_lambda!150589))

(assert tp_is_empty!27619)

(assert (not d!1372995))

(assert (not d!1373025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

