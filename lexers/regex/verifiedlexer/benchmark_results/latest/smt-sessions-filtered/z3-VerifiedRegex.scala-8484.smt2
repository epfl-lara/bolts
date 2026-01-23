; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!441344 () Bool)

(assert start!441344)

(declare-fun b!4483601 () Bool)

(declare-fun res!1861922 () Bool)

(declare-fun e!2792520 () Bool)

(assert (=> b!4483601 (=> (not res!1861922) (not e!2792520))))

(declare-datatypes ((K!11825 0))(
  ( (K!11826 (val!17731 Int)) )
))
(declare-datatypes ((V!12071 0))(
  ( (V!12072 (val!17732 Int)) )
))
(declare-datatypes ((tuple2!50730 0))(
  ( (tuple2!50731 (_1!28659 K!11825) (_2!28659 V!12071)) )
))
(declare-datatypes ((List!50538 0))(
  ( (Nil!50414) (Cons!50414 (h!56207 tuple2!50730) (t!357492 List!50538)) )
))
(declare-datatypes ((tuple2!50732 0))(
  ( (tuple2!50733 (_1!28660 (_ BitVec 64)) (_2!28660 List!50538)) )
))
(declare-datatypes ((List!50539 0))(
  ( (Nil!50415) (Cons!50415 (h!56208 tuple2!50732) (t!357493 List!50539)) )
))
(declare-datatypes ((ListLongMap!2787 0))(
  ( (ListLongMap!2788 (toList!4155 List!50539)) )
))
(declare-fun lm!1477 () ListLongMap!2787)

(declare-fun key!3287 () K!11825)

(declare-datatypes ((ListMap!3417 0))(
  ( (ListMap!3418 (toList!4156 List!50538)) )
))
(declare-fun contains!13021 (ListMap!3417 K!11825) Bool)

(declare-fun extractMap!1130 (List!50539) ListMap!3417)

(assert (=> b!4483601 (= res!1861922 (contains!13021 (extractMap!1130 (toList!4155 lm!1477)) key!3287))))

(declare-fun b!4483602 () Bool)

(declare-fun e!2792519 () Bool)

(declare-fun e!2792518 () Bool)

(assert (=> b!4483602 (= e!2792519 e!2792518)))

(declare-fun res!1861929 () Bool)

(assert (=> b!4483602 (=> res!1861929 e!2792518)))

(declare-fun lt!1669824 () ListLongMap!2787)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13022 (ListLongMap!2787 (_ BitVec 64)) Bool)

(assert (=> b!4483602 (= res!1861929 (not (contains!13022 lt!1669824 hash!344)))))

(declare-fun tail!7589 (ListLongMap!2787) ListLongMap!2787)

(assert (=> b!4483602 (= lt!1669824 (tail!7589 lm!1477))))

(declare-fun b!4483603 () Bool)

(declare-fun e!2792521 () Bool)

(declare-fun tp!1336852 () Bool)

(declare-fun tp_is_empty!27575 () Bool)

(declare-fun tp_is_empty!27573 () Bool)

(assert (=> b!4483603 (= e!2792521 (and tp_is_empty!27573 tp_is_empty!27575 tp!1336852))))

(declare-fun b!4483604 () Bool)

(declare-fun res!1861932 () Bool)

(assert (=> b!4483604 (=> res!1861932 e!2792518)))

(declare-fun lambda!165963 () Int)

(declare-fun forall!10080 (List!50539 Int) Bool)

(assert (=> b!4483604 (= res!1861932 (not (forall!10080 (toList!4155 lm!1477) lambda!165963)))))

(declare-fun res!1861934 () Bool)

(assert (=> start!441344 (=> (not res!1861934) (not e!2792520))))

(assert (=> start!441344 (= res!1861934 (forall!10080 (toList!4155 lm!1477) lambda!165963))))

(assert (=> start!441344 e!2792520))

(assert (=> start!441344 true))

(declare-fun e!2792516 () Bool)

(declare-fun inv!66009 (ListLongMap!2787) Bool)

(assert (=> start!441344 (and (inv!66009 lm!1477) e!2792516)))

(assert (=> start!441344 tp_is_empty!27573))

(assert (=> start!441344 e!2792521))

(declare-fun b!4483605 () Bool)

(declare-fun res!1861928 () Bool)

(assert (=> b!4483605 (=> res!1861928 e!2792518)))

(declare-fun lt!1669821 () (_ BitVec 64))

(declare-fun containsKey!1574 (List!50538 K!11825) Bool)

(declare-fun apply!11811 (ListLongMap!2787 (_ BitVec 64)) List!50538)

(assert (=> b!4483605 (= res!1861928 (containsKey!1574 (apply!11811 lm!1477 lt!1669821) key!3287))))

(declare-fun b!4483606 () Bool)

(assert (=> b!4483606 (= e!2792518 (forall!10080 (toList!4155 lm!1477) lambda!165963))))

(declare-fun b!4483607 () Bool)

(declare-fun res!1861927 () Bool)

(assert (=> b!4483607 (=> res!1861927 e!2792518)))

(declare-fun lt!1669822 () List!50538)

(assert (=> b!4483607 (= res!1861927 (containsKey!1574 lt!1669822 key!3287))))

(declare-fun b!4483608 () Bool)

(declare-fun res!1861930 () Bool)

(assert (=> b!4483608 (=> res!1861930 e!2792518)))

(declare-fun lt!1669819 () tuple2!50732)

(declare-fun contains!13023 (List!50539 tuple2!50732) Bool)

(assert (=> b!4483608 (= res!1861930 (not (contains!13023 (t!357493 (toList!4155 lm!1477)) lt!1669819)))))

(declare-fun b!4483609 () Bool)

(declare-fun res!1861931 () Bool)

(assert (=> b!4483609 (=> res!1861931 e!2792519)))

(get-info :version)

(assert (=> b!4483609 (= res!1861931 (or ((_ is Nil!50415) (toList!4155 lm!1477)) (= (_1!28660 (h!56208 (toList!4155 lm!1477))) hash!344)))))

(declare-fun b!4483610 () Bool)

(declare-fun tp!1336853 () Bool)

(assert (=> b!4483610 (= e!2792516 tp!1336853)))

(declare-fun b!4483611 () Bool)

(declare-fun e!2792517 () Bool)

(assert (=> b!4483611 (= e!2792520 e!2792517)))

(declare-fun res!1861921 () Bool)

(assert (=> b!4483611 (=> (not res!1861921) (not e!2792517))))

(assert (=> b!4483611 (= res!1861921 (= lt!1669821 hash!344))))

(declare-datatypes ((Hashable!5469 0))(
  ( (HashableExt!5468 (__x!31172 Int)) )
))
(declare-fun hashF!1107 () Hashable!5469)

(declare-fun hash!2577 (Hashable!5469 K!11825) (_ BitVec 64))

(assert (=> b!4483611 (= lt!1669821 (hash!2577 hashF!1107 key!3287))))

(declare-fun b!4483612 () Bool)

(declare-fun res!1861925 () Bool)

(assert (=> b!4483612 (=> (not res!1861925) (not e!2792520))))

(declare-fun allKeysSameHashInMap!1181 (ListLongMap!2787 Hashable!5469) Bool)

(assert (=> b!4483612 (= res!1861925 (allKeysSameHashInMap!1181 lm!1477 hashF!1107))))

(declare-fun b!4483613 () Bool)

(assert (=> b!4483613 (= e!2792517 (not e!2792519))))

(declare-fun res!1861933 () Bool)

(assert (=> b!4483613 (=> res!1861933 e!2792519)))

(declare-fun newBucket!178 () List!50538)

(declare-fun removePairForKey!701 (List!50538 K!11825) List!50538)

(assert (=> b!4483613 (= res!1861933 (not (= newBucket!178 (removePairForKey!701 lt!1669822 key!3287))))))

(declare-datatypes ((Unit!89971 0))(
  ( (Unit!89972) )
))
(declare-fun lt!1669823 () Unit!89971)

(declare-fun forallContained!2341 (List!50539 Int tuple2!50732) Unit!89971)

(assert (=> b!4483613 (= lt!1669823 (forallContained!2341 (toList!4155 lm!1477) lambda!165963 lt!1669819))))

(assert (=> b!4483613 (contains!13023 (toList!4155 lm!1477) lt!1669819)))

(assert (=> b!4483613 (= lt!1669819 (tuple2!50733 hash!344 lt!1669822))))

(declare-fun lt!1669818 () Unit!89971)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!586 (List!50539 (_ BitVec 64) List!50538) Unit!89971)

(assert (=> b!4483613 (= lt!1669818 (lemmaGetValueByKeyImpliesContainsTuple!586 (toList!4155 lm!1477) hash!344 lt!1669822))))

(assert (=> b!4483613 (= lt!1669822 (apply!11811 lm!1477 hash!344))))

(assert (=> b!4483613 (contains!13022 lm!1477 lt!1669821)))

(declare-fun lt!1669820 () Unit!89971)

(declare-fun lemmaInGenMapThenLongMapContainsHash!148 (ListLongMap!2787 K!11825 Hashable!5469) Unit!89971)

(assert (=> b!4483613 (= lt!1669820 (lemmaInGenMapThenLongMapContainsHash!148 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4483614 () Bool)

(declare-fun res!1861923 () Bool)

(assert (=> b!4483614 (=> res!1861923 e!2792518)))

(assert (=> b!4483614 (= res!1861923 (not (= (apply!11811 lt!1669824 hash!344) lt!1669822)))))

(declare-fun b!4483615 () Bool)

(declare-fun res!1861926 () Bool)

(assert (=> b!4483615 (=> res!1861926 e!2792519)))

(declare-fun noDuplicateKeys!1074 (List!50538) Bool)

(assert (=> b!4483615 (= res!1861926 (not (noDuplicateKeys!1074 newBucket!178)))))

(declare-fun b!4483616 () Bool)

(declare-fun res!1861924 () Bool)

(assert (=> b!4483616 (=> (not res!1861924) (not e!2792517))))

(declare-fun allKeysSameHash!928 (List!50538 (_ BitVec 64) Hashable!5469) Bool)

(assert (=> b!4483616 (= res!1861924 (allKeysSameHash!928 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!441344 res!1861934) b!4483612))

(assert (= (and b!4483612 res!1861925) b!4483601))

(assert (= (and b!4483601 res!1861922) b!4483611))

(assert (= (and b!4483611 res!1861921) b!4483616))

(assert (= (and b!4483616 res!1861924) b!4483613))

(assert (= (and b!4483613 (not res!1861933)) b!4483615))

(assert (= (and b!4483615 (not res!1861926)) b!4483609))

(assert (= (and b!4483609 (not res!1861931)) b!4483602))

(assert (= (and b!4483602 (not res!1861929)) b!4483614))

(assert (= (and b!4483614 (not res!1861923)) b!4483608))

(assert (= (and b!4483608 (not res!1861930)) b!4483607))

(assert (= (and b!4483607 (not res!1861927)) b!4483604))

(assert (= (and b!4483604 (not res!1861932)) b!4483605))

(assert (= (and b!4483605 (not res!1861928)) b!4483606))

(assert (= start!441344 b!4483610))

(assert (= (and start!441344 ((_ is Cons!50414) newBucket!178)) b!4483603))

(declare-fun m!5204143 () Bool)

(assert (=> b!4483605 m!5204143))

(assert (=> b!4483605 m!5204143))

(declare-fun m!5204145 () Bool)

(assert (=> b!4483605 m!5204145))

(declare-fun m!5204147 () Bool)

(assert (=> b!4483611 m!5204147))

(declare-fun m!5204149 () Bool)

(assert (=> b!4483601 m!5204149))

(assert (=> b!4483601 m!5204149))

(declare-fun m!5204151 () Bool)

(assert (=> b!4483601 m!5204151))

(declare-fun m!5204153 () Bool)

(assert (=> start!441344 m!5204153))

(declare-fun m!5204155 () Bool)

(assert (=> start!441344 m!5204155))

(declare-fun m!5204157 () Bool)

(assert (=> b!4483616 m!5204157))

(assert (=> b!4483606 m!5204153))

(assert (=> b!4483604 m!5204153))

(declare-fun m!5204159 () Bool)

(assert (=> b!4483607 m!5204159))

(declare-fun m!5204161 () Bool)

(assert (=> b!4483608 m!5204161))

(declare-fun m!5204163 () Bool)

(assert (=> b!4483612 m!5204163))

(declare-fun m!5204165 () Bool)

(assert (=> b!4483615 m!5204165))

(declare-fun m!5204167 () Bool)

(assert (=> b!4483613 m!5204167))

(declare-fun m!5204169 () Bool)

(assert (=> b!4483613 m!5204169))

(declare-fun m!5204171 () Bool)

(assert (=> b!4483613 m!5204171))

(declare-fun m!5204173 () Bool)

(assert (=> b!4483613 m!5204173))

(declare-fun m!5204175 () Bool)

(assert (=> b!4483613 m!5204175))

(declare-fun m!5204177 () Bool)

(assert (=> b!4483613 m!5204177))

(declare-fun m!5204179 () Bool)

(assert (=> b!4483613 m!5204179))

(declare-fun m!5204181 () Bool)

(assert (=> b!4483602 m!5204181))

(declare-fun m!5204183 () Bool)

(assert (=> b!4483602 m!5204183))

(declare-fun m!5204185 () Bool)

(assert (=> b!4483614 m!5204185))

(check-sat (not b!4483615) (not b!4483613) (not b!4483606) (not b!4483604) (not b!4483612) (not b!4483610) (not b!4483601) (not b!4483611) (not start!441344) tp_is_empty!27575 tp_is_empty!27573 (not b!4483614) (not b!4483607) (not b!4483608) (not b!4483603) (not b!4483602) (not b!4483605) (not b!4483616))
(check-sat)
