; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!457210 () Bool)

(assert start!457210)

(declare-fun b!4590581 () Bool)

(declare-fun res!1919066 () Bool)

(declare-fun e!2863053 () Bool)

(assert (=> b!4590581 (=> res!1919066 e!2863053)))

(declare-datatypes ((K!12373 0))(
  ( (K!12374 (val!18169 Int)) )
))
(declare-datatypes ((V!12619 0))(
  ( (V!12620 (val!18170 Int)) )
))
(declare-datatypes ((tuple2!51606 0))(
  ( (tuple2!51607 (_1!29097 K!12373) (_2!29097 V!12619)) )
))
(declare-datatypes ((List!51126 0))(
  ( (Nil!51002) (Cons!51002 (h!56948 tuple2!51606) (t!358120 List!51126)) )
))
(declare-datatypes ((tuple2!51608 0))(
  ( (tuple2!51609 (_1!29098 (_ BitVec 64)) (_2!29098 List!51126)) )
))
(declare-datatypes ((List!51127 0))(
  ( (Nil!51003) (Cons!51003 (h!56949 tuple2!51608) (t!358121 List!51127)) )
))
(declare-datatypes ((ListLongMap!3225 0))(
  ( (ListLongMap!3226 (toList!4593 List!51127)) )
))
(declare-fun lm!1477 () ListLongMap!3225)

(declare-fun lambda!184687 () Int)

(declare-fun forall!10537 (List!51127 Int) Bool)

(assert (=> b!4590581 (= res!1919066 (not (forall!10537 (toList!4593 lm!1477) lambda!184687)))))

(declare-fun b!4590582 () Bool)

(declare-fun e!2863055 () Bool)

(declare-fun tp!1340015 () Bool)

(assert (=> b!4590582 (= e!2863055 tp!1340015)))

(declare-fun b!4590583 () Bool)

(declare-fun e!2863054 () Bool)

(declare-fun e!2863052 () Bool)

(assert (=> b!4590583 (= e!2863054 e!2863052)))

(declare-fun res!1919065 () Bool)

(assert (=> b!4590583 (=> (not res!1919065) (not e!2863052))))

(declare-fun lt!1752992 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4590583 (= res!1919065 (= lt!1752992 hash!344))))

(declare-datatypes ((Hashable!5688 0))(
  ( (HashableExt!5687 (__x!31391 Int)) )
))
(declare-fun hashF!1107 () Hashable!5688)

(declare-fun key!3287 () K!12373)

(declare-fun hash!3160 (Hashable!5688 K!12373) (_ BitVec 64))

(assert (=> b!4590583 (= lt!1752992 (hash!3160 hashF!1107 key!3287))))

(declare-fun b!4590585 () Bool)

(declare-fun res!1919061 () Bool)

(assert (=> b!4590585 (=> res!1919061 e!2863053)))

(declare-fun containsKey!2089 (List!51126 K!12373) Bool)

(assert (=> b!4590585 (= res!1919061 (containsKey!2089 (_2!29098 (h!56949 (toList!4593 lm!1477))) key!3287))))

(declare-fun b!4590586 () Bool)

(declare-fun res!1919063 () Bool)

(assert (=> b!4590586 (=> (not res!1919063) (not e!2863052))))

(declare-fun newBucket!178 () List!51126)

(declare-fun allKeysSameHash!1145 (List!51126 (_ BitVec 64) Hashable!5688) Bool)

(assert (=> b!4590586 (= res!1919063 (allKeysSameHash!1145 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4590587 () Bool)

(assert (=> b!4590587 (= e!2863052 (not e!2863053))))

(declare-fun res!1919059 () Bool)

(assert (=> b!4590587 (=> res!1919059 e!2863053)))

(declare-fun lt!1752990 () List!51126)

(declare-fun removePairForKey!914 (List!51126 K!12373) List!51126)

(assert (=> b!4590587 (= res!1919059 (not (= newBucket!178 (removePairForKey!914 lt!1752990 key!3287))))))

(declare-datatypes ((Unit!107400 0))(
  ( (Unit!107401) )
))
(declare-fun lt!1752988 () Unit!107400)

(declare-fun lt!1752991 () tuple2!51608)

(declare-fun forallContained!2794 (List!51127 Int tuple2!51608) Unit!107400)

(assert (=> b!4590587 (= lt!1752988 (forallContained!2794 (toList!4593 lm!1477) lambda!184687 lt!1752991))))

(declare-fun contains!13916 (List!51127 tuple2!51608) Bool)

(assert (=> b!4590587 (contains!13916 (toList!4593 lm!1477) lt!1752991)))

(assert (=> b!4590587 (= lt!1752991 (tuple2!51609 hash!344 lt!1752990))))

(declare-fun lt!1752989 () Unit!107400)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!799 (List!51127 (_ BitVec 64) List!51126) Unit!107400)

(assert (=> b!4590587 (= lt!1752989 (lemmaGetValueByKeyImpliesContainsTuple!799 (toList!4593 lm!1477) hash!344 lt!1752990))))

(declare-fun apply!12026 (ListLongMap!3225 (_ BitVec 64)) List!51126)

(assert (=> b!4590587 (= lt!1752990 (apply!12026 lm!1477 hash!344))))

(declare-fun contains!13917 (ListLongMap!3225 (_ BitVec 64)) Bool)

(assert (=> b!4590587 (contains!13917 lm!1477 lt!1752992)))

(declare-fun lt!1752993 () Unit!107400)

(declare-fun lemmaInGenMapThenLongMapContainsHash!363 (ListLongMap!3225 K!12373 Hashable!5688) Unit!107400)

(assert (=> b!4590587 (= lt!1752993 (lemmaInGenMapThenLongMapContainsHash!363 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4590588 () Bool)

(declare-fun res!1919062 () Bool)

(assert (=> b!4590588 (=> (not res!1919062) (not e!2863054))))

(declare-fun allKeysSameHashInMap!1400 (ListLongMap!3225 Hashable!5688) Bool)

(assert (=> b!4590588 (= res!1919062 (allKeysSameHashInMap!1400 lm!1477 hashF!1107))))

(declare-fun b!4590589 () Bool)

(declare-fun res!1919067 () Bool)

(assert (=> b!4590589 (=> res!1919067 e!2863053)))

(declare-fun noDuplicateKeys!1289 (List!51126) Bool)

(assert (=> b!4590589 (= res!1919067 (not (noDuplicateKeys!1289 newBucket!178)))))

(declare-fun b!4590590 () Bool)

(declare-fun res!1919068 () Bool)

(assert (=> b!4590590 (=> res!1919068 e!2863053)))

(assert (=> b!4590590 (= res!1919068 (or (is-Nil!51003 (toList!4593 lm!1477)) (not (= (_1!29098 (h!56949 (toList!4593 lm!1477))) hash!344))))))

(declare-fun b!4590591 () Bool)

(declare-fun res!1919064 () Bool)

(assert (=> b!4590591 (=> (not res!1919064) (not e!2863054))))

(declare-datatypes ((ListMap!3855 0))(
  ( (ListMap!3856 (toList!4594 List!51126)) )
))
(declare-fun contains!13918 (ListMap!3855 K!12373) Bool)

(declare-fun extractMap!1349 (List!51127) ListMap!3855)

(assert (=> b!4590591 (= res!1919064 (contains!13918 (extractMap!1349 (toList!4593 lm!1477)) key!3287))))

(declare-fun tp_is_empty!28451 () Bool)

(declare-fun tp!1340014 () Bool)

(declare-fun tp_is_empty!28449 () Bool)

(declare-fun e!2863051 () Bool)

(declare-fun b!4590592 () Bool)

(assert (=> b!4590592 (= e!2863051 (and tp_is_empty!28449 tp_is_empty!28451 tp!1340014))))

(declare-fun res!1919060 () Bool)

(assert (=> start!457210 (=> (not res!1919060) (not e!2863054))))

(assert (=> start!457210 (= res!1919060 (forall!10537 (toList!4593 lm!1477) lambda!184687))))

(assert (=> start!457210 e!2863054))

(assert (=> start!457210 true))

(declare-fun inv!66558 (ListLongMap!3225) Bool)

(assert (=> start!457210 (and (inv!66558 lm!1477) e!2863055)))

(assert (=> start!457210 tp_is_empty!28449))

(assert (=> start!457210 e!2863051))

(declare-fun b!4590584 () Bool)

(assert (=> b!4590584 (= e!2863053 (not (containsKey!2089 (apply!12026 lm!1477 lt!1752992) key!3287)))))

(assert (= (and start!457210 res!1919060) b!4590588))

(assert (= (and b!4590588 res!1919062) b!4590591))

(assert (= (and b!4590591 res!1919064) b!4590583))

(assert (= (and b!4590583 res!1919065) b!4590586))

(assert (= (and b!4590586 res!1919063) b!4590587))

(assert (= (and b!4590587 (not res!1919059)) b!4590589))

(assert (= (and b!4590589 (not res!1919067)) b!4590590))

(assert (= (and b!4590590 (not res!1919068)) b!4590585))

(assert (= (and b!4590585 (not res!1919061)) b!4590581))

(assert (= (and b!4590581 (not res!1919066)) b!4590584))

(assert (= start!457210 b!4590582))

(assert (= (and start!457210 (is-Cons!51002 newBucket!178)) b!4590592))

(declare-fun m!5413835 () Bool)

(assert (=> b!4590588 m!5413835))

(declare-fun m!5413837 () Bool)

(assert (=> b!4590589 m!5413837))

(declare-fun m!5413839 () Bool)

(assert (=> b!4590583 m!5413839))

(declare-fun m!5413841 () Bool)

(assert (=> b!4590581 m!5413841))

(declare-fun m!5413843 () Bool)

(assert (=> b!4590591 m!5413843))

(assert (=> b!4590591 m!5413843))

(declare-fun m!5413845 () Bool)

(assert (=> b!4590591 m!5413845))

(declare-fun m!5413847 () Bool)

(assert (=> b!4590584 m!5413847))

(assert (=> b!4590584 m!5413847))

(declare-fun m!5413849 () Bool)

(assert (=> b!4590584 m!5413849))

(declare-fun m!5413851 () Bool)

(assert (=> b!4590585 m!5413851))

(declare-fun m!5413853 () Bool)

(assert (=> b!4590586 m!5413853))

(assert (=> start!457210 m!5413841))

(declare-fun m!5413855 () Bool)

(assert (=> start!457210 m!5413855))

(declare-fun m!5413857 () Bool)

(assert (=> b!4590587 m!5413857))

(declare-fun m!5413859 () Bool)

(assert (=> b!4590587 m!5413859))

(declare-fun m!5413861 () Bool)

(assert (=> b!4590587 m!5413861))

(declare-fun m!5413863 () Bool)

(assert (=> b!4590587 m!5413863))

(declare-fun m!5413865 () Bool)

(assert (=> b!4590587 m!5413865))

(declare-fun m!5413867 () Bool)

(assert (=> b!4590587 m!5413867))

(declare-fun m!5413869 () Bool)

(assert (=> b!4590587 m!5413869))

(push 1)

(assert (not b!4590586))

(assert tp_is_empty!28451)

(assert (not b!4590591))

(assert (not b!4590585))

(assert tp_is_empty!28449)

(assert (not b!4590581))

(assert (not b!4590592))

(assert (not b!4590587))

(assert (not b!4590588))

(assert (not b!4590589))

(assert (not b!4590583))

(assert (not start!457210))

(assert (not b!4590582))

(assert (not b!4590584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1444051 () Bool)

(declare-fun res!1919103 () Bool)

(declare-fun e!2863075 () Bool)

(assert (=> d!1444051 (=> res!1919103 e!2863075)))

(assert (=> d!1444051 (= res!1919103 (is-Nil!51003 (toList!4593 lm!1477)))))

(assert (=> d!1444051 (= (forall!10537 (toList!4593 lm!1477) lambda!184687) e!2863075)))

(declare-fun b!4590633 () Bool)

(declare-fun e!2863076 () Bool)

(assert (=> b!4590633 (= e!2863075 e!2863076)))

(declare-fun res!1919104 () Bool)

(assert (=> b!4590633 (=> (not res!1919104) (not e!2863076))))

(declare-fun dynLambda!21359 (Int tuple2!51608) Bool)

(assert (=> b!4590633 (= res!1919104 (dynLambda!21359 lambda!184687 (h!56949 (toList!4593 lm!1477))))))

(declare-fun b!4590634 () Bool)

(assert (=> b!4590634 (= e!2863076 (forall!10537 (t!358121 (toList!4593 lm!1477)) lambda!184687))))

(assert (= (and d!1444051 (not res!1919103)) b!4590633))

(assert (= (and b!4590633 res!1919104) b!4590634))

(declare-fun b_lambda!168433 () Bool)

(assert (=> (not b_lambda!168433) (not b!4590633)))

(declare-fun m!5413907 () Bool)

(assert (=> b!4590633 m!5413907))

(declare-fun m!5413909 () Bool)

(assert (=> b!4590634 m!5413909))

(assert (=> b!4590581 d!1444051))

(declare-fun bs!1007893 () Bool)

(declare-fun d!1444053 () Bool)

(assert (= bs!1007893 (and d!1444053 start!457210)))

(declare-fun lambda!184697 () Int)

(assert (=> bs!1007893 (= lambda!184697 lambda!184687)))

(assert (=> d!1444053 (contains!13917 lm!1477 (hash!3160 hashF!1107 key!3287))))

(declare-fun lt!1753014 () Unit!107400)

(declare-fun choose!30637 (ListLongMap!3225 K!12373 Hashable!5688) Unit!107400)

(assert (=> d!1444053 (= lt!1753014 (choose!30637 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1444053 (forall!10537 (toList!4593 lm!1477) lambda!184697)))

(assert (=> d!1444053 (= (lemmaInGenMapThenLongMapContainsHash!363 lm!1477 key!3287 hashF!1107) lt!1753014)))

(declare-fun bs!1007894 () Bool)

(assert (= bs!1007894 d!1444053))

(assert (=> bs!1007894 m!5413839))

(assert (=> bs!1007894 m!5413839))

(declare-fun m!5413911 () Bool)

(assert (=> bs!1007894 m!5413911))

(declare-fun m!5413913 () Bool)

(assert (=> bs!1007894 m!5413913))

(declare-fun m!5413915 () Bool)

(assert (=> bs!1007894 m!5413915))

(assert (=> b!4590587 d!1444053))

(declare-fun d!1444055 () Bool)

(declare-datatypes ((Option!11352 0))(
  ( (None!11351) (Some!11351 (v!45263 List!51126)) )
))
(declare-fun get!16846 (Option!11352) List!51126)

(declare-fun getValueByKey!1272 (List!51127 (_ BitVec 64)) Option!11352)

(assert (=> d!1444055 (= (apply!12026 lm!1477 hash!344) (get!16846 (getValueByKey!1272 (toList!4593 lm!1477) hash!344)))))

(declare-fun bs!1007895 () Bool)

(assert (= bs!1007895 d!1444055))

(declare-fun m!5413917 () Bool)

(assert (=> bs!1007895 m!5413917))

(assert (=> bs!1007895 m!5413917))

(declare-fun m!5413919 () Bool)

(assert (=> bs!1007895 m!5413919))

(assert (=> b!4590587 d!1444055))

(declare-fun b!4590645 () Bool)

(declare-fun e!2863081 () List!51126)

(assert (=> b!4590645 (= e!2863081 (Cons!51002 (h!56948 lt!1752990) (removePairForKey!914 (t!358120 lt!1752990) key!3287)))))

(declare-fun b!4590644 () Bool)

(declare-fun e!2863082 () List!51126)

(assert (=> b!4590644 (= e!2863082 e!2863081)))

(declare-fun c!786163 () Bool)

(assert (=> b!4590644 (= c!786163 (is-Cons!51002 lt!1752990))))

(declare-fun d!1444059 () Bool)

(declare-fun lt!1753017 () List!51126)

(assert (=> d!1444059 (not (containsKey!2089 lt!1753017 key!3287))))

(assert (=> d!1444059 (= lt!1753017 e!2863082)))

(declare-fun c!786164 () Bool)

(assert (=> d!1444059 (= c!786164 (and (is-Cons!51002 lt!1752990) (= (_1!29097 (h!56948 lt!1752990)) key!3287)))))

(assert (=> d!1444059 (noDuplicateKeys!1289 lt!1752990)))

(assert (=> d!1444059 (= (removePairForKey!914 lt!1752990 key!3287) lt!1753017)))

(declare-fun b!4590646 () Bool)

(assert (=> b!4590646 (= e!2863081 Nil!51002)))

(declare-fun b!4590643 () Bool)

(assert (=> b!4590643 (= e!2863082 (t!358120 lt!1752990))))

(assert (= (and d!1444059 c!786164) b!4590643))

(assert (= (and d!1444059 (not c!786164)) b!4590644))

(assert (= (and b!4590644 c!786163) b!4590645))

(assert (= (and b!4590644 (not c!786163)) b!4590646))

(declare-fun m!5413921 () Bool)

(assert (=> b!4590645 m!5413921))

(declare-fun m!5413923 () Bool)

(assert (=> d!1444059 m!5413923))

(declare-fun m!5413925 () Bool)

(assert (=> d!1444059 m!5413925))

(assert (=> b!4590587 d!1444059))

(declare-fun d!1444061 () Bool)

(assert (=> d!1444061 (contains!13916 (toList!4593 lm!1477) (tuple2!51609 hash!344 lt!1752990))))

(declare-fun lt!1753020 () Unit!107400)

(declare-fun choose!30638 (List!51127 (_ BitVec 64) List!51126) Unit!107400)

(assert (=> d!1444061 (= lt!1753020 (choose!30638 (toList!4593 lm!1477) hash!344 lt!1752990))))

(declare-fun e!2863089 () Bool)

(assert (=> d!1444061 e!2863089))

(declare-fun res!1919111 () Bool)

(assert (=> d!1444061 (=> (not res!1919111) (not e!2863089))))

(declare-fun isStrictlySorted!521 (List!51127) Bool)

(assert (=> d!1444061 (= res!1919111 (isStrictlySorted!521 (toList!4593 lm!1477)))))

(assert (=> d!1444061 (= (lemmaGetValueByKeyImpliesContainsTuple!799 (toList!4593 lm!1477) hash!344 lt!1752990) lt!1753020)))

(declare-fun b!4590655 () Bool)

(assert (=> b!4590655 (= e!2863089 (= (getValueByKey!1272 (toList!4593 lm!1477) hash!344) (Some!11351 lt!1752990)))))

(assert (= (and d!1444061 res!1919111) b!4590655))

(declare-fun m!5413929 () Bool)

(assert (=> d!1444061 m!5413929))

(declare-fun m!5413931 () Bool)

(assert (=> d!1444061 m!5413931))

(declare-fun m!5413933 () Bool)

(assert (=> d!1444061 m!5413933))

(assert (=> b!4590655 m!5413917))

(assert (=> b!4590587 d!1444061))

(declare-fun d!1444065 () Bool)

(declare-fun e!2863097 () Bool)

(assert (=> d!1444065 e!2863097))

(declare-fun res!1919116 () Bool)

(assert (=> d!1444065 (=> res!1919116 e!2863097)))

(declare-fun lt!1753031 () Bool)

(assert (=> d!1444065 (= res!1919116 (not lt!1753031))))

(declare-fun lt!1753029 () Bool)

(assert (=> d!1444065 (= lt!1753031 lt!1753029)))

(declare-fun lt!1753030 () Unit!107400)

(declare-fun e!2863096 () Unit!107400)

(assert (=> d!1444065 (= lt!1753030 e!2863096)))

(declare-fun c!786167 () Bool)

(assert (=> d!1444065 (= c!786167 lt!1753029)))

(declare-fun containsKey!2091 (List!51127 (_ BitVec 64)) Bool)

(assert (=> d!1444065 (= lt!1753029 (containsKey!2091 (toList!4593 lm!1477) lt!1752992))))

(assert (=> d!1444065 (= (contains!13917 lm!1477 lt!1752992) lt!1753031)))

(declare-fun b!4590664 () Bool)

(declare-fun lt!1753032 () Unit!107400)

(assert (=> b!4590664 (= e!2863096 lt!1753032)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1176 (List!51127 (_ BitVec 64)) Unit!107400)

(assert (=> b!4590664 (= lt!1753032 (lemmaContainsKeyImpliesGetValueByKeyDefined!1176 (toList!4593 lm!1477) lt!1752992))))

(declare-fun isDefined!8620 (Option!11352) Bool)

(assert (=> b!4590664 (isDefined!8620 (getValueByKey!1272 (toList!4593 lm!1477) lt!1752992))))

(declare-fun b!4590665 () Bool)

(declare-fun Unit!107404 () Unit!107400)

(assert (=> b!4590665 (= e!2863096 Unit!107404)))

(declare-fun b!4590666 () Bool)

(assert (=> b!4590666 (= e!2863097 (isDefined!8620 (getValueByKey!1272 (toList!4593 lm!1477) lt!1752992)))))

(assert (= (and d!1444065 c!786167) b!4590664))

(assert (= (and d!1444065 (not c!786167)) b!4590665))

(assert (= (and d!1444065 (not res!1919116)) b!4590666))

(declare-fun m!5413941 () Bool)

(assert (=> d!1444065 m!5413941))

(declare-fun m!5413943 () Bool)

(assert (=> b!4590664 m!5413943))

(declare-fun m!5413945 () Bool)

(assert (=> b!4590664 m!5413945))

(assert (=> b!4590664 m!5413945))

(declare-fun m!5413947 () Bool)

(assert (=> b!4590664 m!5413947))

(assert (=> b!4590666 m!5413945))

(assert (=> b!4590666 m!5413945))

(assert (=> b!4590666 m!5413947))

(assert (=> b!4590587 d!1444065))

(declare-fun d!1444071 () Bool)

(assert (=> d!1444071 (dynLambda!21359 lambda!184687 lt!1752991)))

(declare-fun lt!1753035 () Unit!107400)

(declare-fun choose!30639 (List!51127 Int tuple2!51608) Unit!107400)

(assert (=> d!1444071 (= lt!1753035 (choose!30639 (toList!4593 lm!1477) lambda!184687 lt!1752991))))

(declare-fun e!2863106 () Bool)

(assert (=> d!1444071 e!2863106))

(declare-fun res!1919125 () Bool)

(assert (=> d!1444071 (=> (not res!1919125) (not e!2863106))))

(assert (=> d!1444071 (= res!1919125 (forall!10537 (toList!4593 lm!1477) lambda!184687))))

(assert (=> d!1444071 (= (forallContained!2794 (toList!4593 lm!1477) lambda!184687 lt!1752991) lt!1753035)))

(declare-fun b!4590675 () Bool)

(assert (=> b!4590675 (= e!2863106 (contains!13916 (toList!4593 lm!1477) lt!1752991))))

(assert (= (and d!1444071 res!1919125) b!4590675))

(declare-fun b_lambda!168437 () Bool)

(assert (=> (not b_lambda!168437) (not d!1444071)))

(declare-fun m!5413951 () Bool)

(assert (=> d!1444071 m!5413951))

(declare-fun m!5413953 () Bool)

(assert (=> d!1444071 m!5413953))

(assert (=> d!1444071 m!5413841))

(assert (=> b!4590675 m!5413859))

(assert (=> b!4590587 d!1444071))

(declare-fun d!1444073 () Bool)

(declare-fun lt!1753038 () Bool)

(declare-fun content!8605 (List!51127) (Set tuple2!51608))

(assert (=> d!1444073 (= lt!1753038 (set.member lt!1752991 (content!8605 (toList!4593 lm!1477))))))

(declare-fun e!2863112 () Bool)

(assert (=> d!1444073 (= lt!1753038 e!2863112)))

(declare-fun res!1919131 () Bool)

(assert (=> d!1444073 (=> (not res!1919131) (not e!2863112))))

(assert (=> d!1444073 (= res!1919131 (is-Cons!51003 (toList!4593 lm!1477)))))

(assert (=> d!1444073 (= (contains!13916 (toList!4593 lm!1477) lt!1752991) lt!1753038)))

(declare-fun b!4590680 () Bool)

(declare-fun e!2863111 () Bool)

(assert (=> b!4590680 (= e!2863112 e!2863111)))

(declare-fun res!1919130 () Bool)

(assert (=> b!4590680 (=> res!1919130 e!2863111)))

(assert (=> b!4590680 (= res!1919130 (= (h!56949 (toList!4593 lm!1477)) lt!1752991))))

(declare-fun b!4590681 () Bool)

(assert (=> b!4590681 (= e!2863111 (contains!13916 (t!358121 (toList!4593 lm!1477)) lt!1752991))))

(assert (= (and d!1444073 res!1919131) b!4590680))

(assert (= (and b!4590680 (not res!1919130)) b!4590681))

(declare-fun m!5413957 () Bool)

(assert (=> d!1444073 m!5413957))

(declare-fun m!5413959 () Bool)

(assert (=> d!1444073 m!5413959))

(declare-fun m!5413963 () Bool)

(assert (=> b!4590681 m!5413963))

(assert (=> b!4590587 d!1444073))

(declare-fun d!1444077 () Bool)

(declare-fun res!1919136 () Bool)

(declare-fun e!2863117 () Bool)

(assert (=> d!1444077 (=> res!1919136 e!2863117)))

(assert (=> d!1444077 (= res!1919136 (and (is-Cons!51002 (_2!29098 (h!56949 (toList!4593 lm!1477)))) (= (_1!29097 (h!56948 (_2!29098 (h!56949 (toList!4593 lm!1477))))) key!3287)))))

(assert (=> d!1444077 (= (containsKey!2089 (_2!29098 (h!56949 (toList!4593 lm!1477))) key!3287) e!2863117)))

(declare-fun b!4590686 () Bool)

(declare-fun e!2863118 () Bool)

(assert (=> b!4590686 (= e!2863117 e!2863118)))

(declare-fun res!1919137 () Bool)

(assert (=> b!4590686 (=> (not res!1919137) (not e!2863118))))

(assert (=> b!4590686 (= res!1919137 (is-Cons!51002 (_2!29098 (h!56949 (toList!4593 lm!1477)))))))

(declare-fun b!4590687 () Bool)

(assert (=> b!4590687 (= e!2863118 (containsKey!2089 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477)))) key!3287))))

(assert (= (and d!1444077 (not res!1919136)) b!4590686))

(assert (= (and b!4590686 res!1919137) b!4590687))

(declare-fun m!5413965 () Bool)

(assert (=> b!4590687 m!5413965))

(assert (=> b!4590585 d!1444077))

(declare-fun d!1444081 () Bool)

(assert (=> d!1444081 true))

(assert (=> d!1444081 true))

(declare-fun lambda!184703 () Int)

(declare-fun forall!10539 (List!51126 Int) Bool)

(assert (=> d!1444081 (= (allKeysSameHash!1145 newBucket!178 hash!344 hashF!1107) (forall!10539 newBucket!178 lambda!184703))))

(declare-fun bs!1007900 () Bool)

(assert (= bs!1007900 d!1444081))

(declare-fun m!5413967 () Bool)

(assert (=> bs!1007900 m!5413967))

(assert (=> b!4590586 d!1444081))

(declare-fun b!4590710 () Bool)

(assert (=> b!4590710 false))

(declare-fun lt!1753061 () Unit!107400)

(declare-fun lt!1753058 () Unit!107400)

(assert (=> b!4590710 (= lt!1753061 lt!1753058)))

(declare-fun containsKey!2092 (List!51126 K!12373) Bool)

(assert (=> b!4590710 (containsKey!2092 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!553 (List!51126 K!12373) Unit!107400)

(assert (=> b!4590710 (= lt!1753058 (lemmaInGetKeysListThenContainsKey!553 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(declare-fun e!2863135 () Unit!107400)

(declare-fun Unit!107405 () Unit!107400)

(assert (=> b!4590710 (= e!2863135 Unit!107405)))

(declare-fun b!4590711 () Bool)

(declare-fun Unit!107406 () Unit!107400)

(assert (=> b!4590711 (= e!2863135 Unit!107406)))

(declare-fun b!4590713 () Bool)

(declare-datatypes ((List!51130 0))(
  ( (Nil!51006) (Cons!51006 (h!56953 K!12373) (t!358124 List!51130)) )
))
(declare-fun e!2863132 () List!51130)

(declare-fun keys!17835 (ListMap!3855) List!51130)

(assert (=> b!4590713 (= e!2863132 (keys!17835 (extractMap!1349 (toList!4593 lm!1477))))))

(declare-fun b!4590714 () Bool)

(declare-fun e!2863136 () Bool)

(declare-fun contains!13922 (List!51130 K!12373) Bool)

(assert (=> b!4590714 (= e!2863136 (contains!13922 (keys!17835 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(declare-fun bm!320529 () Bool)

(declare-fun call!320534 () Bool)

(assert (=> bm!320529 (= call!320534 (contains!13922 e!2863132 key!3287))))

(declare-fun c!786174 () Bool)

(declare-fun c!786175 () Bool)

(assert (=> bm!320529 (= c!786174 c!786175)))

(declare-fun b!4590715 () Bool)

(declare-fun e!2863133 () Bool)

(assert (=> b!4590715 (= e!2863133 e!2863136)))

(declare-fun res!1919146 () Bool)

(assert (=> b!4590715 (=> (not res!1919146) (not e!2863136))))

(declare-datatypes ((Option!11353 0))(
  ( (None!11352) (Some!11352 (v!45264 V!12619)) )
))
(declare-fun isDefined!8621 (Option!11353) Bool)

(declare-fun getValueByKey!1273 (List!51126 K!12373) Option!11353)

(assert (=> b!4590715 (= res!1919146 (isDefined!8621 (getValueByKey!1273 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287)))))

(declare-fun b!4590716 () Bool)

(declare-fun getKeysList!554 (List!51126) List!51130)

(assert (=> b!4590716 (= e!2863132 (getKeysList!554 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))))

(declare-fun b!4590717 () Bool)

(declare-fun e!2863131 () Unit!107400)

(assert (=> b!4590717 (= e!2863131 e!2863135)))

(declare-fun c!786176 () Bool)

(assert (=> b!4590717 (= c!786176 call!320534)))

(declare-fun b!4590718 () Bool)

(declare-fun e!2863134 () Bool)

(assert (=> b!4590718 (= e!2863134 (not (contains!13922 (keys!17835 (extractMap!1349 (toList!4593 lm!1477))) key!3287)))))

(declare-fun d!1444083 () Bool)

(assert (=> d!1444083 e!2863133))

(declare-fun res!1919144 () Bool)

(assert (=> d!1444083 (=> res!1919144 e!2863133)))

(assert (=> d!1444083 (= res!1919144 e!2863134)))

(declare-fun res!1919145 () Bool)

(assert (=> d!1444083 (=> (not res!1919145) (not e!2863134))))

(declare-fun lt!1753060 () Bool)

(assert (=> d!1444083 (= res!1919145 (not lt!1753060))))

(declare-fun lt!1753057 () Bool)

(assert (=> d!1444083 (= lt!1753060 lt!1753057)))

(declare-fun lt!1753062 () Unit!107400)

(assert (=> d!1444083 (= lt!1753062 e!2863131)))

(assert (=> d!1444083 (= c!786175 lt!1753057)))

(assert (=> d!1444083 (= lt!1753057 (containsKey!2092 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(assert (=> d!1444083 (= (contains!13918 (extractMap!1349 (toList!4593 lm!1477)) key!3287) lt!1753060)))

(declare-fun b!4590712 () Bool)

(declare-fun lt!1753059 () Unit!107400)

(assert (=> b!4590712 (= e!2863131 lt!1753059)))

(declare-fun lt!1753056 () Unit!107400)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1177 (List!51126 K!12373) Unit!107400)

(assert (=> b!4590712 (= lt!1753056 (lemmaContainsKeyImpliesGetValueByKeyDefined!1177 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(assert (=> b!4590712 (isDefined!8621 (getValueByKey!1273 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(declare-fun lt!1753055 () Unit!107400)

(assert (=> b!4590712 (= lt!1753055 lt!1753056)))

(declare-fun lemmaInListThenGetKeysListContains!550 (List!51126 K!12373) Unit!107400)

(assert (=> b!4590712 (= lt!1753059 (lemmaInListThenGetKeysListContains!550 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(assert (=> b!4590712 call!320534))

(assert (= (and d!1444083 c!786175) b!4590712))

(assert (= (and d!1444083 (not c!786175)) b!4590717))

(assert (= (and b!4590717 c!786176) b!4590710))

(assert (= (and b!4590717 (not c!786176)) b!4590711))

(assert (= (or b!4590712 b!4590717) bm!320529))

(assert (= (and bm!320529 c!786174) b!4590716))

(assert (= (and bm!320529 (not c!786174)) b!4590713))

(assert (= (and d!1444083 res!1919145) b!4590718))

(assert (= (and d!1444083 (not res!1919144)) b!4590715))

(assert (= (and b!4590715 res!1919146) b!4590714))

(assert (=> b!4590714 m!5413843))

(declare-fun m!5413969 () Bool)

(assert (=> b!4590714 m!5413969))

(assert (=> b!4590714 m!5413969))

(declare-fun m!5413971 () Bool)

(assert (=> b!4590714 m!5413971))

(declare-fun m!5413973 () Bool)

(assert (=> b!4590715 m!5413973))

(assert (=> b!4590715 m!5413973))

(declare-fun m!5413975 () Bool)

(assert (=> b!4590715 m!5413975))

(declare-fun m!5413977 () Bool)

(assert (=> b!4590716 m!5413977))

(declare-fun m!5413979 () Bool)

(assert (=> bm!320529 m!5413979))

(assert (=> b!4590713 m!5413843))

(assert (=> b!4590713 m!5413969))

(declare-fun m!5413981 () Bool)

(assert (=> b!4590710 m!5413981))

(declare-fun m!5413983 () Bool)

(assert (=> b!4590710 m!5413983))

(assert (=> d!1444083 m!5413981))

(assert (=> b!4590718 m!5413843))

(assert (=> b!4590718 m!5413969))

(assert (=> b!4590718 m!5413969))

(assert (=> b!4590718 m!5413971))

(declare-fun m!5413985 () Bool)

(assert (=> b!4590712 m!5413985))

(assert (=> b!4590712 m!5413973))

(assert (=> b!4590712 m!5413973))

(assert (=> b!4590712 m!5413975))

(declare-fun m!5413987 () Bool)

(assert (=> b!4590712 m!5413987))

(assert (=> b!4590591 d!1444083))

(declare-fun bs!1007901 () Bool)

(declare-fun d!1444085 () Bool)

(assert (= bs!1007901 (and d!1444085 start!457210)))

(declare-fun lambda!184706 () Int)

(assert (=> bs!1007901 (= lambda!184706 lambda!184687)))

(declare-fun bs!1007902 () Bool)

(assert (= bs!1007902 (and d!1444085 d!1444053)))

(assert (=> bs!1007902 (= lambda!184706 lambda!184697)))

(declare-fun lt!1753081 () ListMap!3855)

(declare-fun invariantList!1106 (List!51126) Bool)

(assert (=> d!1444085 (invariantList!1106 (toList!4594 lt!1753081))))

(declare-fun e!2863147 () ListMap!3855)

(assert (=> d!1444085 (= lt!1753081 e!2863147)))

(declare-fun c!786185 () Bool)

(assert (=> d!1444085 (= c!786185 (is-Cons!51003 (toList!4593 lm!1477)))))

(assert (=> d!1444085 (forall!10537 (toList!4593 lm!1477) lambda!184706)))

(assert (=> d!1444085 (= (extractMap!1349 (toList!4593 lm!1477)) lt!1753081)))

(declare-fun b!4590735 () Bool)

(declare-fun addToMapMapFromBucket!796 (List!51126 ListMap!3855) ListMap!3855)

(assert (=> b!4590735 (= e!2863147 (addToMapMapFromBucket!796 (_2!29098 (h!56949 (toList!4593 lm!1477))) (extractMap!1349 (t!358121 (toList!4593 lm!1477)))))))

(declare-fun b!4590736 () Bool)

(assert (=> b!4590736 (= e!2863147 (ListMap!3856 Nil!51002))))

(assert (= (and d!1444085 c!786185) b!4590735))

(assert (= (and d!1444085 (not c!786185)) b!4590736))

(declare-fun m!5413989 () Bool)

(assert (=> d!1444085 m!5413989))

(declare-fun m!5413991 () Bool)

(assert (=> d!1444085 m!5413991))

(declare-fun m!5413993 () Bool)

(assert (=> b!4590735 m!5413993))

(assert (=> b!4590735 m!5413993))

(declare-fun m!5413995 () Bool)

(assert (=> b!4590735 m!5413995))

(assert (=> b!4590591 d!1444085))

(declare-fun d!1444087 () Bool)

(declare-fun res!1919153 () Bool)

(declare-fun e!2863152 () Bool)

(assert (=> d!1444087 (=> res!1919153 e!2863152)))

(assert (=> d!1444087 (= res!1919153 (and (is-Cons!51002 (apply!12026 lm!1477 lt!1752992)) (= (_1!29097 (h!56948 (apply!12026 lm!1477 lt!1752992))) key!3287)))))

(assert (=> d!1444087 (= (containsKey!2089 (apply!12026 lm!1477 lt!1752992) key!3287) e!2863152)))

(declare-fun b!4590743 () Bool)

(declare-fun e!2863153 () Bool)

(assert (=> b!4590743 (= e!2863152 e!2863153)))

(declare-fun res!1919154 () Bool)

(assert (=> b!4590743 (=> (not res!1919154) (not e!2863153))))

(assert (=> b!4590743 (= res!1919154 (is-Cons!51002 (apply!12026 lm!1477 lt!1752992)))))

(declare-fun b!4590744 () Bool)

(assert (=> b!4590744 (= e!2863153 (containsKey!2089 (t!358120 (apply!12026 lm!1477 lt!1752992)) key!3287))))

(assert (= (and d!1444087 (not res!1919153)) b!4590743))

(assert (= (and b!4590743 res!1919154) b!4590744))

(declare-fun m!5413997 () Bool)

(assert (=> b!4590744 m!5413997))

(assert (=> b!4590584 d!1444087))

(declare-fun d!1444089 () Bool)

(assert (=> d!1444089 (= (apply!12026 lm!1477 lt!1752992) (get!16846 (getValueByKey!1272 (toList!4593 lm!1477) lt!1752992)))))

(declare-fun bs!1007903 () Bool)

(assert (= bs!1007903 d!1444089))

(assert (=> bs!1007903 m!5413945))

(assert (=> bs!1007903 m!5413945))

(declare-fun m!5413999 () Bool)

(assert (=> bs!1007903 m!5413999))

(assert (=> b!4590584 d!1444089))

(declare-fun d!1444091 () Bool)

(declare-fun res!1919159 () Bool)

(declare-fun e!2863158 () Bool)

(assert (=> d!1444091 (=> res!1919159 e!2863158)))

(assert (=> d!1444091 (= res!1919159 (not (is-Cons!51002 newBucket!178)))))

(assert (=> d!1444091 (= (noDuplicateKeys!1289 newBucket!178) e!2863158)))

(declare-fun b!4590749 () Bool)

(declare-fun e!2863159 () Bool)

(assert (=> b!4590749 (= e!2863158 e!2863159)))

(declare-fun res!1919160 () Bool)

(assert (=> b!4590749 (=> (not res!1919160) (not e!2863159))))

(assert (=> b!4590749 (= res!1919160 (not (containsKey!2089 (t!358120 newBucket!178) (_1!29097 (h!56948 newBucket!178)))))))

(declare-fun b!4590750 () Bool)

(assert (=> b!4590750 (= e!2863159 (noDuplicateKeys!1289 (t!358120 newBucket!178)))))

(assert (= (and d!1444091 (not res!1919159)) b!4590749))

(assert (= (and b!4590749 res!1919160) b!4590750))

(declare-fun m!5414001 () Bool)

(assert (=> b!4590749 m!5414001))

(declare-fun m!5414003 () Bool)

(assert (=> b!4590750 m!5414003))

(assert (=> b!4590589 d!1444091))

(assert (=> start!457210 d!1444051))

(declare-fun d!1444093 () Bool)

(assert (=> d!1444093 (= (inv!66558 lm!1477) (isStrictlySorted!521 (toList!4593 lm!1477)))))

(declare-fun bs!1007904 () Bool)

(assert (= bs!1007904 d!1444093))

(assert (=> bs!1007904 m!5413933))

(assert (=> start!457210 d!1444093))

(declare-fun bs!1007905 () Bool)

(declare-fun d!1444095 () Bool)

(assert (= bs!1007905 (and d!1444095 start!457210)))

(declare-fun lambda!184709 () Int)

(assert (=> bs!1007905 (not (= lambda!184709 lambda!184687))))

(declare-fun bs!1007906 () Bool)

(assert (= bs!1007906 (and d!1444095 d!1444053)))

(assert (=> bs!1007906 (not (= lambda!184709 lambda!184697))))

(declare-fun bs!1007907 () Bool)

(assert (= bs!1007907 (and d!1444095 d!1444085)))

(assert (=> bs!1007907 (not (= lambda!184709 lambda!184706))))

(assert (=> d!1444095 true))

(assert (=> d!1444095 (= (allKeysSameHashInMap!1400 lm!1477 hashF!1107) (forall!10537 (toList!4593 lm!1477) lambda!184709))))

(declare-fun bs!1007908 () Bool)

(assert (= bs!1007908 d!1444095))

(declare-fun m!5414005 () Bool)

(assert (=> bs!1007908 m!5414005))

(assert (=> b!4590588 d!1444095))

(declare-fun d!1444097 () Bool)

(declare-fun hash!3162 (Hashable!5688 K!12373) (_ BitVec 64))

(assert (=> d!1444097 (= (hash!3160 hashF!1107 key!3287) (hash!3162 hashF!1107 key!3287))))

(declare-fun bs!1007909 () Bool)

(assert (= bs!1007909 d!1444097))

(declare-fun m!5414007 () Bool)

(assert (=> bs!1007909 m!5414007))

(assert (=> b!4590583 d!1444097))

(declare-fun tp!1340024 () Bool)

(declare-fun e!2863162 () Bool)

(declare-fun b!4590757 () Bool)

(assert (=> b!4590757 (= e!2863162 (and tp_is_empty!28449 tp_is_empty!28451 tp!1340024))))

(assert (=> b!4590592 (= tp!1340014 e!2863162)))

(assert (= (and b!4590592 (is-Cons!51002 (t!358120 newBucket!178))) b!4590757))

(declare-fun b!4590771 () Bool)

(declare-fun e!2863171 () Bool)

(declare-fun tp!1340029 () Bool)

(declare-fun tp!1340030 () Bool)

(assert (=> b!4590771 (= e!2863171 (and tp!1340029 tp!1340030))))

(assert (=> b!4590582 (= tp!1340015 e!2863171)))

(assert (= (and b!4590582 (is-Cons!51003 (toList!4593 lm!1477))) b!4590771))

(declare-fun b_lambda!168439 () Bool)

(assert (= b_lambda!168433 (or start!457210 b_lambda!168439)))

(declare-fun bs!1007910 () Bool)

(declare-fun d!1444099 () Bool)

(assert (= bs!1007910 (and d!1444099 start!457210)))

(assert (=> bs!1007910 (= (dynLambda!21359 lambda!184687 (h!56949 (toList!4593 lm!1477))) (noDuplicateKeys!1289 (_2!29098 (h!56949 (toList!4593 lm!1477)))))))

(declare-fun m!5414009 () Bool)

(assert (=> bs!1007910 m!5414009))

(assert (=> b!4590633 d!1444099))

(declare-fun b_lambda!168441 () Bool)

(assert (= b_lambda!168437 (or start!457210 b_lambda!168441)))

(declare-fun bs!1007911 () Bool)

(declare-fun d!1444101 () Bool)

(assert (= bs!1007911 (and d!1444101 start!457210)))

(assert (=> bs!1007911 (= (dynLambda!21359 lambda!184687 lt!1752991) (noDuplicateKeys!1289 (_2!29098 lt!1752991)))))

(declare-fun m!5414011 () Bool)

(assert (=> bs!1007911 m!5414011))

(assert (=> d!1444071 d!1444101))

(push 1)

(assert (not d!1444071))

(assert (not b!4590757))

(assert (not d!1444095))

(assert (not b!4590718))

(assert tp_is_empty!28449)

(assert (not b!4590634))

(assert (not b!4590714))

(assert (not bs!1007910))

(assert (not b!4590681))

(assert (not d!1444089))

(assert tp_is_empty!28451)

(assert (not b!4590687))

(assert (not b!4590712))

(assert (not b!4590716))

(assert (not d!1444055))

(assert (not b!4590710))

(assert (not b!4590735))

(assert (not d!1444059))

(assert (not d!1444061))

(assert (not b!4590771))

(assert (not b!4590749))

(assert (not b!4590713))

(assert (not d!1444097))

(assert (not d!1444093))

(assert (not b!4590664))

(assert (not d!1444085))

(assert (not b!4590655))

(assert (not d!1444053))

(assert (not b!4590744))

(assert (not b!4590666))

(assert (not b_lambda!168441))

(assert (not b!4590645))

(assert (not d!1444081))

(assert (not d!1444073))

(assert (not b!4590715))

(assert (not d!1444065))

(assert (not b!4590750))

(assert (not bm!320529))

(assert (not d!1444083))

(assert (not b_lambda!168439))

(assert (not bs!1007911))

(assert (not b!4590675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1444131 () Bool)

(assert (=> d!1444131 (isDefined!8621 (getValueByKey!1273 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(declare-fun lt!1753122 () Unit!107400)

(declare-fun choose!30643 (List!51126 K!12373) Unit!107400)

(assert (=> d!1444131 (= lt!1753122 (choose!30643 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(assert (=> d!1444131 (invariantList!1106 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))))

(assert (=> d!1444131 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1177 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287) lt!1753122)))

(declare-fun bs!1007923 () Bool)

(assert (= bs!1007923 d!1444131))

(assert (=> bs!1007923 m!5413973))

(assert (=> bs!1007923 m!5413973))

(assert (=> bs!1007923 m!5413975))

(declare-fun m!5414091 () Bool)

(assert (=> bs!1007923 m!5414091))

(declare-fun m!5414093 () Bool)

(assert (=> bs!1007923 m!5414093))

(assert (=> b!4590712 d!1444131))

(declare-fun d!1444133 () Bool)

(declare-fun isEmpty!28836 (Option!11353) Bool)

(assert (=> d!1444133 (= (isDefined!8621 (getValueByKey!1273 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287)) (not (isEmpty!28836 (getValueByKey!1273 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))))

(declare-fun bs!1007924 () Bool)

(assert (= bs!1007924 d!1444133))

(assert (=> bs!1007924 m!5413973))

(declare-fun m!5414095 () Bool)

(assert (=> bs!1007924 m!5414095))

(assert (=> b!4590712 d!1444133))

(declare-fun b!4590842 () Bool)

(declare-fun e!2863217 () Option!11353)

(declare-fun e!2863218 () Option!11353)

(assert (=> b!4590842 (= e!2863217 e!2863218)))

(declare-fun c!786206 () Bool)

(assert (=> b!4590842 (= c!786206 (and (is-Cons!51002 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (not (= (_1!29097 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) key!3287))))))

(declare-fun b!4590844 () Bool)

(assert (=> b!4590844 (= e!2863218 None!11352)))

(declare-fun b!4590841 () Bool)

(assert (=> b!4590841 (= e!2863217 (Some!11352 (_2!29097 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))))))

(declare-fun d!1444135 () Bool)

(declare-fun c!786205 () Bool)

(assert (=> d!1444135 (= c!786205 (and (is-Cons!51002 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (= (_1!29097 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) key!3287)))))

(assert (=> d!1444135 (= (getValueByKey!1273 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287) e!2863217)))

(declare-fun b!4590843 () Bool)

(assert (=> b!4590843 (= e!2863218 (getValueByKey!1273 (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) key!3287))))

(assert (= (and d!1444135 c!786205) b!4590841))

(assert (= (and d!1444135 (not c!786205)) b!4590842))

(assert (= (and b!4590842 c!786206) b!4590843))

(assert (= (and b!4590842 (not c!786206)) b!4590844))

(declare-fun m!5414097 () Bool)

(assert (=> b!4590843 m!5414097))

(assert (=> b!4590712 d!1444135))

(declare-fun d!1444137 () Bool)

(assert (=> d!1444137 (contains!13922 (getKeysList!554 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) key!3287)))

(declare-fun lt!1753125 () Unit!107400)

(declare-fun choose!30644 (List!51126 K!12373) Unit!107400)

(assert (=> d!1444137 (= lt!1753125 (choose!30644 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(assert (=> d!1444137 (invariantList!1106 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))))

(assert (=> d!1444137 (= (lemmaInListThenGetKeysListContains!550 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287) lt!1753125)))

(declare-fun bs!1007925 () Bool)

(assert (= bs!1007925 d!1444137))

(assert (=> bs!1007925 m!5413977))

(assert (=> bs!1007925 m!5413977))

(declare-fun m!5414099 () Bool)

(assert (=> bs!1007925 m!5414099))

(declare-fun m!5414101 () Bool)

(assert (=> bs!1007925 m!5414101))

(assert (=> bs!1007925 m!5414093))

(assert (=> b!4590712 d!1444137))

(declare-fun d!1444139 () Bool)

(declare-fun res!1919191 () Bool)

(declare-fun e!2863223 () Bool)

(assert (=> d!1444139 (=> res!1919191 e!2863223)))

(assert (=> d!1444139 (= res!1919191 (is-Nil!51002 newBucket!178))))

(assert (=> d!1444139 (= (forall!10539 newBucket!178 lambda!184703) e!2863223)))

(declare-fun b!4590849 () Bool)

(declare-fun e!2863224 () Bool)

(assert (=> b!4590849 (= e!2863223 e!2863224)))

(declare-fun res!1919192 () Bool)

(assert (=> b!4590849 (=> (not res!1919192) (not e!2863224))))

(declare-fun dynLambda!21361 (Int tuple2!51606) Bool)

(assert (=> b!4590849 (= res!1919192 (dynLambda!21361 lambda!184703 (h!56948 newBucket!178)))))

(declare-fun b!4590850 () Bool)

(assert (=> b!4590850 (= e!2863224 (forall!10539 (t!358120 newBucket!178) lambda!184703))))

(assert (= (and d!1444139 (not res!1919191)) b!4590849))

(assert (= (and b!4590849 res!1919192) b!4590850))

(declare-fun b_lambda!168449 () Bool)

(assert (=> (not b_lambda!168449) (not b!4590849)))

(declare-fun m!5414103 () Bool)

(assert (=> b!4590849 m!5414103))

(declare-fun m!5414105 () Bool)

(assert (=> b!4590850 m!5414105))

(assert (=> d!1444081 d!1444139))

(declare-fun b!4590858 () Bool)

(assert (=> b!4590858 true))

(declare-fun d!1444141 () Bool)

(declare-fun e!2863227 () Bool)

(assert (=> d!1444141 e!2863227))

(declare-fun res!1919200 () Bool)

(assert (=> d!1444141 (=> (not res!1919200) (not e!2863227))))

(declare-fun lt!1753128 () List!51130)

(declare-fun noDuplicate!797 (List!51130) Bool)

(assert (=> d!1444141 (= res!1919200 (noDuplicate!797 lt!1753128))))

(assert (=> d!1444141 (= lt!1753128 (getKeysList!554 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))))

(assert (=> d!1444141 (= (keys!17835 (extractMap!1349 (toList!4593 lm!1477))) lt!1753128)))

(declare-fun b!4590857 () Bool)

(declare-fun res!1919201 () Bool)

(assert (=> b!4590857 (=> (not res!1919201) (not e!2863227))))

(declare-fun length!450 (List!51130) Int)

(declare-fun length!451 (List!51126) Int)

(assert (=> b!4590857 (= res!1919201 (= (length!450 lt!1753128) (length!451 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))))))

(declare-fun res!1919199 () Bool)

(assert (=> b!4590858 (=> (not res!1919199) (not e!2863227))))

(declare-fun lambda!184723 () Int)

(declare-fun forall!10541 (List!51130 Int) Bool)

(assert (=> b!4590858 (= res!1919199 (forall!10541 lt!1753128 lambda!184723))))

(declare-fun b!4590859 () Bool)

(declare-fun lambda!184724 () Int)

(declare-fun content!8607 (List!51130) (Set K!12373))

(declare-fun map!11255 (List!51126 Int) List!51130)

(assert (=> b!4590859 (= e!2863227 (= (content!8607 lt!1753128) (content!8607 (map!11255 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) lambda!184724))))))

(assert (= (and d!1444141 res!1919200) b!4590857))

(assert (= (and b!4590857 res!1919201) b!4590858))

(assert (= (and b!4590858 res!1919199) b!4590859))

(declare-fun m!5414107 () Bool)

(assert (=> d!1444141 m!5414107))

(assert (=> d!1444141 m!5413977))

(declare-fun m!5414109 () Bool)

(assert (=> b!4590857 m!5414109))

(declare-fun m!5414111 () Bool)

(assert (=> b!4590857 m!5414111))

(declare-fun m!5414113 () Bool)

(assert (=> b!4590858 m!5414113))

(declare-fun m!5414115 () Bool)

(assert (=> b!4590859 m!5414115))

(declare-fun m!5414117 () Bool)

(assert (=> b!4590859 m!5414117))

(assert (=> b!4590859 m!5414117))

(declare-fun m!5414119 () Bool)

(assert (=> b!4590859 m!5414119))

(assert (=> b!4590713 d!1444141))

(declare-fun b!4590864 () Bool)

(declare-fun e!2863228 () List!51126)

(assert (=> b!4590864 (= e!2863228 (Cons!51002 (h!56948 (t!358120 lt!1752990)) (removePairForKey!914 (t!358120 (t!358120 lt!1752990)) key!3287)))))

(declare-fun b!4590863 () Bool)

(declare-fun e!2863229 () List!51126)

(assert (=> b!4590863 (= e!2863229 e!2863228)))

(declare-fun c!786207 () Bool)

(assert (=> b!4590863 (= c!786207 (is-Cons!51002 (t!358120 lt!1752990)))))

(declare-fun d!1444143 () Bool)

(declare-fun lt!1753129 () List!51126)

(assert (=> d!1444143 (not (containsKey!2089 lt!1753129 key!3287))))

(assert (=> d!1444143 (= lt!1753129 e!2863229)))

(declare-fun c!786208 () Bool)

(assert (=> d!1444143 (= c!786208 (and (is-Cons!51002 (t!358120 lt!1752990)) (= (_1!29097 (h!56948 (t!358120 lt!1752990))) key!3287)))))

(assert (=> d!1444143 (noDuplicateKeys!1289 (t!358120 lt!1752990))))

(assert (=> d!1444143 (= (removePairForKey!914 (t!358120 lt!1752990) key!3287) lt!1753129)))

(declare-fun b!4590865 () Bool)

(assert (=> b!4590865 (= e!2863228 Nil!51002)))

(declare-fun b!4590862 () Bool)

(assert (=> b!4590862 (= e!2863229 (t!358120 (t!358120 lt!1752990)))))

(assert (= (and d!1444143 c!786208) b!4590862))

(assert (= (and d!1444143 (not c!786208)) b!4590863))

(assert (= (and b!4590863 c!786207) b!4590864))

(assert (= (and b!4590863 (not c!786207)) b!4590865))

(declare-fun m!5414121 () Bool)

(assert (=> b!4590864 m!5414121))

(declare-fun m!5414123 () Bool)

(assert (=> d!1444143 m!5414123))

(declare-fun m!5414125 () Bool)

(assert (=> d!1444143 m!5414125))

(assert (=> b!4590645 d!1444143))

(declare-fun d!1444145 () Bool)

(declare-fun res!1919202 () Bool)

(declare-fun e!2863230 () Bool)

(assert (=> d!1444145 (=> res!1919202 e!2863230)))

(assert (=> d!1444145 (= res!1919202 (is-Nil!51003 (t!358121 (toList!4593 lm!1477))))))

(assert (=> d!1444145 (= (forall!10537 (t!358121 (toList!4593 lm!1477)) lambda!184687) e!2863230)))

(declare-fun b!4590866 () Bool)

(declare-fun e!2863231 () Bool)

(assert (=> b!4590866 (= e!2863230 e!2863231)))

(declare-fun res!1919203 () Bool)

(assert (=> b!4590866 (=> (not res!1919203) (not e!2863231))))

(assert (=> b!4590866 (= res!1919203 (dynLambda!21359 lambda!184687 (h!56949 (t!358121 (toList!4593 lm!1477)))))))

(declare-fun b!4590867 () Bool)

(assert (=> b!4590867 (= e!2863231 (forall!10537 (t!358121 (t!358121 (toList!4593 lm!1477))) lambda!184687))))

(assert (= (and d!1444145 (not res!1919202)) b!4590866))

(assert (= (and b!4590866 res!1919203) b!4590867))

(declare-fun b_lambda!168451 () Bool)

(assert (=> (not b_lambda!168451) (not b!4590866)))

(declare-fun m!5414127 () Bool)

(assert (=> b!4590866 m!5414127))

(declare-fun m!5414129 () Bool)

(assert (=> b!4590867 m!5414129))

(assert (=> b!4590634 d!1444145))

(declare-fun d!1444147 () Bool)

(declare-fun lt!1753132 () Bool)

(assert (=> d!1444147 (= lt!1753132 (set.member key!3287 (content!8607 e!2863132)))))

(declare-fun e!2863237 () Bool)

(assert (=> d!1444147 (= lt!1753132 e!2863237)))

(declare-fun res!1919208 () Bool)

(assert (=> d!1444147 (=> (not res!1919208) (not e!2863237))))

(assert (=> d!1444147 (= res!1919208 (is-Cons!51006 e!2863132))))

(assert (=> d!1444147 (= (contains!13922 e!2863132 key!3287) lt!1753132)))

(declare-fun b!4590872 () Bool)

(declare-fun e!2863236 () Bool)

(assert (=> b!4590872 (= e!2863237 e!2863236)))

(declare-fun res!1919209 () Bool)

(assert (=> b!4590872 (=> res!1919209 e!2863236)))

(assert (=> b!4590872 (= res!1919209 (= (h!56953 e!2863132) key!3287))))

(declare-fun b!4590873 () Bool)

(assert (=> b!4590873 (= e!2863236 (contains!13922 (t!358124 e!2863132) key!3287))))

(assert (= (and d!1444147 res!1919208) b!4590872))

(assert (= (and b!4590872 (not res!1919209)) b!4590873))

(declare-fun m!5414131 () Bool)

(assert (=> d!1444147 m!5414131))

(declare-fun m!5414133 () Bool)

(assert (=> d!1444147 m!5414133))

(declare-fun m!5414135 () Bool)

(assert (=> b!4590873 m!5414135))

(assert (=> bm!320529 d!1444147))

(declare-fun d!1444149 () Bool)

(declare-fun res!1919214 () Bool)

(declare-fun e!2863242 () Bool)

(assert (=> d!1444149 (=> res!1919214 e!2863242)))

(assert (=> d!1444149 (= res!1919214 (and (is-Cons!51003 (toList!4593 lm!1477)) (= (_1!29098 (h!56949 (toList!4593 lm!1477))) lt!1752992)))))

(assert (=> d!1444149 (= (containsKey!2091 (toList!4593 lm!1477) lt!1752992) e!2863242)))

(declare-fun b!4590878 () Bool)

(declare-fun e!2863243 () Bool)

(assert (=> b!4590878 (= e!2863242 e!2863243)))

(declare-fun res!1919215 () Bool)

(assert (=> b!4590878 (=> (not res!1919215) (not e!2863243))))

(assert (=> b!4590878 (= res!1919215 (and (or (not (is-Cons!51003 (toList!4593 lm!1477))) (bvsle (_1!29098 (h!56949 (toList!4593 lm!1477))) lt!1752992)) (is-Cons!51003 (toList!4593 lm!1477)) (bvslt (_1!29098 (h!56949 (toList!4593 lm!1477))) lt!1752992)))))

(declare-fun b!4590879 () Bool)

(assert (=> b!4590879 (= e!2863243 (containsKey!2091 (t!358121 (toList!4593 lm!1477)) lt!1752992))))

(assert (= (and d!1444149 (not res!1919214)) b!4590878))

(assert (= (and b!4590878 res!1919215) b!4590879))

(declare-fun m!5414137 () Bool)

(assert (=> b!4590879 m!5414137))

(assert (=> d!1444065 d!1444149))

(assert (=> b!4590675 d!1444073))

(declare-fun d!1444151 () Bool)

(declare-fun res!1919216 () Bool)

(declare-fun e!2863244 () Bool)

(assert (=> d!1444151 (=> res!1919216 e!2863244)))

(assert (=> d!1444151 (= res!1919216 (not (is-Cons!51002 (_2!29098 (h!56949 (toList!4593 lm!1477))))))))

(assert (=> d!1444151 (= (noDuplicateKeys!1289 (_2!29098 (h!56949 (toList!4593 lm!1477)))) e!2863244)))

(declare-fun b!4590880 () Bool)

(declare-fun e!2863245 () Bool)

(assert (=> b!4590880 (= e!2863244 e!2863245)))

(declare-fun res!1919217 () Bool)

(assert (=> b!4590880 (=> (not res!1919217) (not e!2863245))))

(assert (=> b!4590880 (= res!1919217 (not (containsKey!2089 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477)))) (_1!29097 (h!56948 (_2!29098 (h!56949 (toList!4593 lm!1477))))))))))

(declare-fun b!4590881 () Bool)

(assert (=> b!4590881 (= e!2863245 (noDuplicateKeys!1289 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477))))))))

(assert (= (and d!1444151 (not res!1919216)) b!4590880))

(assert (= (and b!4590880 res!1919217) b!4590881))

(declare-fun m!5414139 () Bool)

(assert (=> b!4590880 m!5414139))

(declare-fun m!5414141 () Bool)

(assert (=> b!4590881 m!5414141))

(assert (=> bs!1007910 d!1444151))

(declare-fun d!1444153 () Bool)

(assert (=> d!1444153 (dynLambda!21359 lambda!184687 lt!1752991)))

(assert (=> d!1444153 true))

(declare-fun _$7!2090 () Unit!107400)

(assert (=> d!1444153 (= (choose!30639 (toList!4593 lm!1477) lambda!184687 lt!1752991) _$7!2090)))

(declare-fun b_lambda!168453 () Bool)

(assert (=> (not b_lambda!168453) (not d!1444153)))

(declare-fun bs!1007926 () Bool)

(assert (= bs!1007926 d!1444153))

(assert (=> bs!1007926 m!5413951))

(assert (=> d!1444071 d!1444153))

(assert (=> d!1444071 d!1444051))

(declare-fun d!1444155 () Bool)

(declare-fun lt!1753133 () Bool)

(assert (=> d!1444155 (= lt!1753133 (set.member key!3287 (content!8607 (keys!17835 (extractMap!1349 (toList!4593 lm!1477))))))))

(declare-fun e!2863247 () Bool)

(assert (=> d!1444155 (= lt!1753133 e!2863247)))

(declare-fun res!1919218 () Bool)

(assert (=> d!1444155 (=> (not res!1919218) (not e!2863247))))

(assert (=> d!1444155 (= res!1919218 (is-Cons!51006 (keys!17835 (extractMap!1349 (toList!4593 lm!1477)))))))

(assert (=> d!1444155 (= (contains!13922 (keys!17835 (extractMap!1349 (toList!4593 lm!1477))) key!3287) lt!1753133)))

(declare-fun b!4590882 () Bool)

(declare-fun e!2863246 () Bool)

(assert (=> b!4590882 (= e!2863247 e!2863246)))

(declare-fun res!1919219 () Bool)

(assert (=> b!4590882 (=> res!1919219 e!2863246)))

(assert (=> b!4590882 (= res!1919219 (= (h!56953 (keys!17835 (extractMap!1349 (toList!4593 lm!1477)))) key!3287))))

(declare-fun b!4590883 () Bool)

(assert (=> b!4590883 (= e!2863246 (contains!13922 (t!358124 (keys!17835 (extractMap!1349 (toList!4593 lm!1477)))) key!3287))))

(assert (= (and d!1444155 res!1919218) b!4590882))

(assert (= (and b!4590882 (not res!1919219)) b!4590883))

(assert (=> d!1444155 m!5413969))

(declare-fun m!5414143 () Bool)

(assert (=> d!1444155 m!5414143))

(declare-fun m!5414145 () Bool)

(assert (=> d!1444155 m!5414145))

(declare-fun m!5414147 () Bool)

(assert (=> b!4590883 m!5414147))

(assert (=> b!4590714 d!1444155))

(assert (=> b!4590714 d!1444141))

(declare-fun d!1444157 () Bool)

(declare-fun res!1919224 () Bool)

(declare-fun e!2863252 () Bool)

(assert (=> d!1444157 (=> res!1919224 e!2863252)))

(assert (=> d!1444157 (= res!1919224 (or (is-Nil!51003 (toList!4593 lm!1477)) (is-Nil!51003 (t!358121 (toList!4593 lm!1477)))))))

(assert (=> d!1444157 (= (isStrictlySorted!521 (toList!4593 lm!1477)) e!2863252)))

(declare-fun b!4590888 () Bool)

(declare-fun e!2863253 () Bool)

(assert (=> b!4590888 (= e!2863252 e!2863253)))

(declare-fun res!1919225 () Bool)

(assert (=> b!4590888 (=> (not res!1919225) (not e!2863253))))

(assert (=> b!4590888 (= res!1919225 (bvslt (_1!29098 (h!56949 (toList!4593 lm!1477))) (_1!29098 (h!56949 (t!358121 (toList!4593 lm!1477))))))))

(declare-fun b!4590889 () Bool)

(assert (=> b!4590889 (= e!2863253 (isStrictlySorted!521 (t!358121 (toList!4593 lm!1477))))))

(assert (= (and d!1444157 (not res!1919224)) b!4590888))

(assert (= (and b!4590888 res!1919225) b!4590889))

(declare-fun m!5414149 () Bool)

(assert (=> b!4590889 m!5414149))

(assert (=> d!1444093 d!1444157))

(assert (=> b!4590715 d!1444133))

(assert (=> b!4590715 d!1444135))

(declare-fun bs!1007927 () Bool)

(declare-fun b!4590916 () Bool)

(assert (= bs!1007927 (and b!4590916 b!4590858)))

(declare-fun lambda!184733 () Int)

(assert (=> bs!1007927 (= (= (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (= lambda!184733 lambda!184723))))

(assert (=> b!4590916 true))

(declare-fun bs!1007928 () Bool)

(declare-fun b!4590910 () Bool)

(assert (= bs!1007928 (and b!4590910 b!4590858)))

(declare-fun lambda!184734 () Int)

(assert (=> bs!1007928 (= (= (Cons!51002 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (= lambda!184734 lambda!184723))))

(declare-fun bs!1007929 () Bool)

(assert (= bs!1007929 (and b!4590910 b!4590916)))

(assert (=> bs!1007929 (= (= (Cons!51002 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) (= lambda!184734 lambda!184733))))

(assert (=> b!4590910 true))

(declare-fun bs!1007930 () Bool)

(declare-fun b!4590915 () Bool)

(assert (= bs!1007930 (and b!4590915 b!4590858)))

(declare-fun lambda!184735 () Int)

(assert (=> bs!1007930 (= lambda!184735 lambda!184723)))

(declare-fun bs!1007931 () Bool)

(assert (= bs!1007931 (and b!4590915 b!4590916)))

(assert (=> bs!1007931 (= (= (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) (= lambda!184735 lambda!184733))))

(declare-fun bs!1007932 () Bool)

(assert (= bs!1007932 (and b!4590915 b!4590910)))

(assert (=> bs!1007932 (= (= (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) (Cons!51002 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))) (= lambda!184735 lambda!184734))))

(assert (=> b!4590915 true))

(declare-fun bs!1007933 () Bool)

(declare-fun b!4590908 () Bool)

(assert (= bs!1007933 (and b!4590908 b!4590859)))

(declare-fun lambda!184736 () Int)

(assert (=> bs!1007933 (= lambda!184736 lambda!184724)))

(declare-fun lt!1753149 () List!51130)

(declare-fun e!2863265 () Bool)

(assert (=> b!4590908 (= e!2863265 (= (content!8607 lt!1753149) (content!8607 (map!11255 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) lambda!184736))))))

(declare-fun d!1444159 () Bool)

(assert (=> d!1444159 e!2863265))

(declare-fun res!1919234 () Bool)

(assert (=> d!1444159 (=> (not res!1919234) (not e!2863265))))

(assert (=> d!1444159 (= res!1919234 (noDuplicate!797 lt!1753149))))

(declare-fun e!2863263 () List!51130)

(assert (=> d!1444159 (= lt!1753149 e!2863263)))

(declare-fun c!786215 () Bool)

(assert (=> d!1444159 (= c!786215 (is-Cons!51002 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))))

(assert (=> d!1444159 (invariantList!1106 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))))

(assert (=> d!1444159 (= (getKeysList!554 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) lt!1753149)))

(declare-fun b!4590909 () Bool)

(declare-fun res!1919233 () Bool)

(assert (=> b!4590909 (=> (not res!1919233) (not e!2863265))))

(assert (=> b!4590909 (= res!1919233 (= (length!450 lt!1753149) (length!451 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))))))

(assert (=> b!4590910 (= e!2863263 (Cons!51006 (_1!29097 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) (getKeysList!554 (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))))))

(declare-fun c!786216 () Bool)

(assert (=> b!4590910 (= c!786216 (containsKey!2092 (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (_1!29097 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))))))

(declare-fun lt!1753150 () Unit!107400)

(declare-fun e!2863264 () Unit!107400)

(assert (=> b!4590910 (= lt!1753150 e!2863264)))

(declare-fun c!786217 () Bool)

(assert (=> b!4590910 (= c!786217 (contains!13922 (getKeysList!554 (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) (_1!29097 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))))))

(declare-fun lt!1753154 () Unit!107400)

(declare-fun e!2863262 () Unit!107400)

(assert (=> b!4590910 (= lt!1753154 e!2863262)))

(declare-fun lt!1753152 () List!51130)

(assert (=> b!4590910 (= lt!1753152 (getKeysList!554 (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))))))

(declare-fun lt!1753148 () Unit!107400)

(declare-fun lemmaForallContainsAddHeadPreserves!217 (List!51126 List!51130 tuple2!51606) Unit!107400)

(assert (=> b!4590910 (= lt!1753148 (lemmaForallContainsAddHeadPreserves!217 (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) lt!1753152 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))))))

(assert (=> b!4590910 (forall!10541 lt!1753152 lambda!184734)))

(declare-fun lt!1753153 () Unit!107400)

(assert (=> b!4590910 (= lt!1753153 lt!1753148)))

(declare-fun b!4590911 () Bool)

(declare-fun Unit!107410 () Unit!107400)

(assert (=> b!4590911 (= e!2863262 Unit!107410)))

(declare-fun b!4590912 () Bool)

(declare-fun Unit!107411 () Unit!107400)

(assert (=> b!4590912 (= e!2863264 Unit!107411)))

(declare-fun b!4590913 () Bool)

(assert (=> b!4590913 (= e!2863263 Nil!51006)))

(declare-fun b!4590914 () Bool)

(assert (=> b!4590914 false))

(declare-fun Unit!107412 () Unit!107400)

(assert (=> b!4590914 (= e!2863264 Unit!107412)))

(declare-fun res!1919232 () Bool)

(assert (=> b!4590915 (=> (not res!1919232) (not e!2863265))))

(assert (=> b!4590915 (= res!1919232 (forall!10541 lt!1753149 lambda!184735))))

(assert (=> b!4590916 false))

(declare-fun lt!1753151 () Unit!107400)

(declare-fun forallContained!2796 (List!51130 Int K!12373) Unit!107400)

(assert (=> b!4590916 (= lt!1753151 (forallContained!2796 (getKeysList!554 (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) lambda!184733 (_1!29097 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))))))

(declare-fun Unit!107413 () Unit!107400)

(assert (=> b!4590916 (= e!2863262 Unit!107413)))

(assert (= (and d!1444159 c!786215) b!4590910))

(assert (= (and d!1444159 (not c!786215)) b!4590913))

(assert (= (and b!4590910 c!786216) b!4590914))

(assert (= (and b!4590910 (not c!786216)) b!4590912))

(assert (= (and b!4590910 c!786217) b!4590916))

(assert (= (and b!4590910 (not c!786217)) b!4590911))

(assert (= (and d!1444159 res!1919234) b!4590909))

(assert (= (and b!4590909 res!1919233) b!4590915))

(assert (= (and b!4590915 res!1919232) b!4590908))

(declare-fun m!5414151 () Bool)

(assert (=> b!4590915 m!5414151))

(declare-fun m!5414153 () Bool)

(assert (=> d!1444159 m!5414153))

(assert (=> d!1444159 m!5414093))

(declare-fun m!5414155 () Bool)

(assert (=> b!4590909 m!5414155))

(assert (=> b!4590909 m!5414111))

(declare-fun m!5414157 () Bool)

(assert (=> b!4590910 m!5414157))

(declare-fun m!5414159 () Bool)

(assert (=> b!4590910 m!5414159))

(declare-fun m!5414161 () Bool)

(assert (=> b!4590910 m!5414161))

(declare-fun m!5414163 () Bool)

(assert (=> b!4590910 m!5414163))

(assert (=> b!4590910 m!5414161))

(declare-fun m!5414165 () Bool)

(assert (=> b!4590910 m!5414165))

(assert (=> b!4590916 m!5414161))

(assert (=> b!4590916 m!5414161))

(declare-fun m!5414167 () Bool)

(assert (=> b!4590916 m!5414167))

(declare-fun m!5414169 () Bool)

(assert (=> b!4590908 m!5414169))

(declare-fun m!5414171 () Bool)

(assert (=> b!4590908 m!5414171))

(assert (=> b!4590908 m!5414171))

(declare-fun m!5414173 () Bool)

(assert (=> b!4590908 m!5414173))

(assert (=> b!4590716 d!1444159))

(declare-fun d!1444161 () Bool)

(declare-fun lt!1753155 () Bool)

(assert (=> d!1444161 (= lt!1753155 (set.member lt!1752991 (content!8605 (t!358121 (toList!4593 lm!1477)))))))

(declare-fun e!2863267 () Bool)

(assert (=> d!1444161 (= lt!1753155 e!2863267)))

(declare-fun res!1919236 () Bool)

(assert (=> d!1444161 (=> (not res!1919236) (not e!2863267))))

(assert (=> d!1444161 (= res!1919236 (is-Cons!51003 (t!358121 (toList!4593 lm!1477))))))

(assert (=> d!1444161 (= (contains!13916 (t!358121 (toList!4593 lm!1477)) lt!1752991) lt!1753155)))

(declare-fun b!4590919 () Bool)

(declare-fun e!2863266 () Bool)

(assert (=> b!4590919 (= e!2863267 e!2863266)))

(declare-fun res!1919235 () Bool)

(assert (=> b!4590919 (=> res!1919235 e!2863266)))

(assert (=> b!4590919 (= res!1919235 (= (h!56949 (t!358121 (toList!4593 lm!1477))) lt!1752991))))

(declare-fun b!4590920 () Bool)

(assert (=> b!4590920 (= e!2863266 (contains!13916 (t!358121 (t!358121 (toList!4593 lm!1477))) lt!1752991))))

(assert (= (and d!1444161 res!1919236) b!4590919))

(assert (= (and b!4590919 (not res!1919235)) b!4590920))

(declare-fun m!5414175 () Bool)

(assert (=> d!1444161 m!5414175))

(declare-fun m!5414177 () Bool)

(assert (=> d!1444161 m!5414177))

(declare-fun m!5414179 () Bool)

(assert (=> b!4590920 m!5414179))

(assert (=> b!4590681 d!1444161))

(declare-fun d!1444163 () Bool)

(declare-fun res!1919237 () Bool)

(declare-fun e!2863268 () Bool)

(assert (=> d!1444163 (=> res!1919237 e!2863268)))

(assert (=> d!1444163 (= res!1919237 (and (is-Cons!51002 lt!1753017) (= (_1!29097 (h!56948 lt!1753017)) key!3287)))))

(assert (=> d!1444163 (= (containsKey!2089 lt!1753017 key!3287) e!2863268)))

(declare-fun b!4590921 () Bool)

(declare-fun e!2863269 () Bool)

(assert (=> b!4590921 (= e!2863268 e!2863269)))

(declare-fun res!1919238 () Bool)

(assert (=> b!4590921 (=> (not res!1919238) (not e!2863269))))

(assert (=> b!4590921 (= res!1919238 (is-Cons!51002 lt!1753017))))

(declare-fun b!4590922 () Bool)

(assert (=> b!4590922 (= e!2863269 (containsKey!2089 (t!358120 lt!1753017) key!3287))))

(assert (= (and d!1444163 (not res!1919237)) b!4590921))

(assert (= (and b!4590921 res!1919238) b!4590922))

(declare-fun m!5414181 () Bool)

(assert (=> b!4590922 m!5414181))

(assert (=> d!1444059 d!1444163))

(declare-fun d!1444165 () Bool)

(declare-fun res!1919239 () Bool)

(declare-fun e!2863270 () Bool)

(assert (=> d!1444165 (=> res!1919239 e!2863270)))

(assert (=> d!1444165 (= res!1919239 (not (is-Cons!51002 lt!1752990)))))

(assert (=> d!1444165 (= (noDuplicateKeys!1289 lt!1752990) e!2863270)))

(declare-fun b!4590923 () Bool)

(declare-fun e!2863271 () Bool)

(assert (=> b!4590923 (= e!2863270 e!2863271)))

(declare-fun res!1919240 () Bool)

(assert (=> b!4590923 (=> (not res!1919240) (not e!2863271))))

(assert (=> b!4590923 (= res!1919240 (not (containsKey!2089 (t!358120 lt!1752990) (_1!29097 (h!56948 lt!1752990)))))))

(declare-fun b!4590924 () Bool)

(assert (=> b!4590924 (= e!2863271 (noDuplicateKeys!1289 (t!358120 lt!1752990)))))

(assert (= (and d!1444165 (not res!1919239)) b!4590923))

(assert (= (and b!4590923 res!1919240) b!4590924))

(declare-fun m!5414183 () Bool)

(assert (=> b!4590923 m!5414183))

(assert (=> b!4590924 m!5414125))

(assert (=> d!1444059 d!1444165))

(declare-fun d!1444167 () Bool)

(declare-fun res!1919241 () Bool)

(declare-fun e!2863272 () Bool)

(assert (=> d!1444167 (=> res!1919241 e!2863272)))

(assert (=> d!1444167 (= res!1919241 (is-Nil!51003 (toList!4593 lm!1477)))))

(assert (=> d!1444167 (= (forall!10537 (toList!4593 lm!1477) lambda!184709) e!2863272)))

(declare-fun b!4590925 () Bool)

(declare-fun e!2863273 () Bool)

(assert (=> b!4590925 (= e!2863272 e!2863273)))

(declare-fun res!1919242 () Bool)

(assert (=> b!4590925 (=> (not res!1919242) (not e!2863273))))

(assert (=> b!4590925 (= res!1919242 (dynLambda!21359 lambda!184709 (h!56949 (toList!4593 lm!1477))))))

(declare-fun b!4590926 () Bool)

(assert (=> b!4590926 (= e!2863273 (forall!10537 (t!358121 (toList!4593 lm!1477)) lambda!184709))))

(assert (= (and d!1444167 (not res!1919241)) b!4590925))

(assert (= (and b!4590925 res!1919242) b!4590926))

(declare-fun b_lambda!168455 () Bool)

(assert (=> (not b_lambda!168455) (not b!4590925)))

(declare-fun m!5414185 () Bool)

(assert (=> b!4590925 m!5414185))

(declare-fun m!5414187 () Bool)

(assert (=> b!4590926 m!5414187))

(assert (=> d!1444095 d!1444167))

(declare-fun d!1444169 () Bool)

(declare-fun res!1919243 () Bool)

(declare-fun e!2863274 () Bool)

(assert (=> d!1444169 (=> res!1919243 e!2863274)))

(assert (=> d!1444169 (= res!1919243 (not (is-Cons!51002 (_2!29098 lt!1752991))))))

(assert (=> d!1444169 (= (noDuplicateKeys!1289 (_2!29098 lt!1752991)) e!2863274)))

(declare-fun b!4590927 () Bool)

(declare-fun e!2863275 () Bool)

(assert (=> b!4590927 (= e!2863274 e!2863275)))

(declare-fun res!1919244 () Bool)

(assert (=> b!4590927 (=> (not res!1919244) (not e!2863275))))

(assert (=> b!4590927 (= res!1919244 (not (containsKey!2089 (t!358120 (_2!29098 lt!1752991)) (_1!29097 (h!56948 (_2!29098 lt!1752991))))))))

(declare-fun b!4590928 () Bool)

(assert (=> b!4590928 (= e!2863275 (noDuplicateKeys!1289 (t!358120 (_2!29098 lt!1752991))))))

(assert (= (and d!1444169 (not res!1919243)) b!4590927))

(assert (= (and b!4590927 res!1919244) b!4590928))

(declare-fun m!5414189 () Bool)

(assert (=> b!4590927 m!5414189))

(declare-fun m!5414191 () Bool)

(assert (=> b!4590928 m!5414191))

(assert (=> bs!1007911 d!1444169))

(declare-fun d!1444171 () Bool)

(declare-fun res!1919245 () Bool)

(declare-fun e!2863276 () Bool)

(assert (=> d!1444171 (=> res!1919245 e!2863276)))

(assert (=> d!1444171 (= res!1919245 (and (is-Cons!51002 (t!358120 (apply!12026 lm!1477 lt!1752992))) (= (_1!29097 (h!56948 (t!358120 (apply!12026 lm!1477 lt!1752992)))) key!3287)))))

(assert (=> d!1444171 (= (containsKey!2089 (t!358120 (apply!12026 lm!1477 lt!1752992)) key!3287) e!2863276)))

(declare-fun b!4590929 () Bool)

(declare-fun e!2863277 () Bool)

(assert (=> b!4590929 (= e!2863276 e!2863277)))

(declare-fun res!1919246 () Bool)

(assert (=> b!4590929 (=> (not res!1919246) (not e!2863277))))

(assert (=> b!4590929 (= res!1919246 (is-Cons!51002 (t!358120 (apply!12026 lm!1477 lt!1752992))))))

(declare-fun b!4590930 () Bool)

(assert (=> b!4590930 (= e!2863277 (containsKey!2089 (t!358120 (t!358120 (apply!12026 lm!1477 lt!1752992))) key!3287))))

(assert (= (and d!1444171 (not res!1919245)) b!4590929))

(assert (= (and b!4590929 res!1919246) b!4590930))

(declare-fun m!5414193 () Bool)

(assert (=> b!4590930 m!5414193))

(assert (=> b!4590744 d!1444171))

(assert (=> b!4590718 d!1444155))

(assert (=> b!4590718 d!1444141))

(declare-fun d!1444173 () Bool)

(declare-fun noDuplicatedKeys!312 (List!51126) Bool)

(assert (=> d!1444173 (= (invariantList!1106 (toList!4594 lt!1753081)) (noDuplicatedKeys!312 (toList!4594 lt!1753081)))))

(declare-fun bs!1007934 () Bool)

(assert (= bs!1007934 d!1444173))

(declare-fun m!5414195 () Bool)

(assert (=> bs!1007934 m!5414195))

(assert (=> d!1444085 d!1444173))

(declare-fun d!1444175 () Bool)

(declare-fun res!1919247 () Bool)

(declare-fun e!2863278 () Bool)

(assert (=> d!1444175 (=> res!1919247 e!2863278)))

(assert (=> d!1444175 (= res!1919247 (is-Nil!51003 (toList!4593 lm!1477)))))

(assert (=> d!1444175 (= (forall!10537 (toList!4593 lm!1477) lambda!184706) e!2863278)))

(declare-fun b!4590931 () Bool)

(declare-fun e!2863279 () Bool)

(assert (=> b!4590931 (= e!2863278 e!2863279)))

(declare-fun res!1919248 () Bool)

(assert (=> b!4590931 (=> (not res!1919248) (not e!2863279))))

(assert (=> b!4590931 (= res!1919248 (dynLambda!21359 lambda!184706 (h!56949 (toList!4593 lm!1477))))))

(declare-fun b!4590932 () Bool)

(assert (=> b!4590932 (= e!2863279 (forall!10537 (t!358121 (toList!4593 lm!1477)) lambda!184706))))

(assert (= (and d!1444175 (not res!1919247)) b!4590931))

(assert (= (and b!4590931 res!1919248) b!4590932))

(declare-fun b_lambda!168457 () Bool)

(assert (=> (not b_lambda!168457) (not b!4590931)))

(declare-fun m!5414197 () Bool)

(assert (=> b!4590931 m!5414197))

(declare-fun m!5414199 () Bool)

(assert (=> b!4590932 m!5414199))

(assert (=> d!1444085 d!1444175))

(declare-fun d!1444177 () Bool)

(declare-fun e!2863281 () Bool)

(assert (=> d!1444177 e!2863281))

(declare-fun res!1919249 () Bool)

(assert (=> d!1444177 (=> res!1919249 e!2863281)))

(declare-fun lt!1753158 () Bool)

(assert (=> d!1444177 (= res!1919249 (not lt!1753158))))

(declare-fun lt!1753156 () Bool)

(assert (=> d!1444177 (= lt!1753158 lt!1753156)))

(declare-fun lt!1753157 () Unit!107400)

(declare-fun e!2863280 () Unit!107400)

(assert (=> d!1444177 (= lt!1753157 e!2863280)))

(declare-fun c!786218 () Bool)

(assert (=> d!1444177 (= c!786218 lt!1753156)))

(assert (=> d!1444177 (= lt!1753156 (containsKey!2091 (toList!4593 lm!1477) (hash!3160 hashF!1107 key!3287)))))

(assert (=> d!1444177 (= (contains!13917 lm!1477 (hash!3160 hashF!1107 key!3287)) lt!1753158)))

(declare-fun b!4590933 () Bool)

(declare-fun lt!1753159 () Unit!107400)

(assert (=> b!4590933 (= e!2863280 lt!1753159)))

(assert (=> b!4590933 (= lt!1753159 (lemmaContainsKeyImpliesGetValueByKeyDefined!1176 (toList!4593 lm!1477) (hash!3160 hashF!1107 key!3287)))))

(assert (=> b!4590933 (isDefined!8620 (getValueByKey!1272 (toList!4593 lm!1477) (hash!3160 hashF!1107 key!3287)))))

(declare-fun b!4590934 () Bool)

(declare-fun Unit!107414 () Unit!107400)

(assert (=> b!4590934 (= e!2863280 Unit!107414)))

(declare-fun b!4590935 () Bool)

(assert (=> b!4590935 (= e!2863281 (isDefined!8620 (getValueByKey!1272 (toList!4593 lm!1477) (hash!3160 hashF!1107 key!3287))))))

(assert (= (and d!1444177 c!786218) b!4590933))

(assert (= (and d!1444177 (not c!786218)) b!4590934))

(assert (= (and d!1444177 (not res!1919249)) b!4590935))

(assert (=> d!1444177 m!5413839))

(declare-fun m!5414201 () Bool)

(assert (=> d!1444177 m!5414201))

(assert (=> b!4590933 m!5413839))

(declare-fun m!5414203 () Bool)

(assert (=> b!4590933 m!5414203))

(assert (=> b!4590933 m!5413839))

(declare-fun m!5414205 () Bool)

(assert (=> b!4590933 m!5414205))

(assert (=> b!4590933 m!5414205))

(declare-fun m!5414207 () Bool)

(assert (=> b!4590933 m!5414207))

(assert (=> b!4590935 m!5413839))

(assert (=> b!4590935 m!5414205))

(assert (=> b!4590935 m!5414205))

(assert (=> b!4590935 m!5414207))

(assert (=> d!1444053 d!1444177))

(assert (=> d!1444053 d!1444097))

(declare-fun d!1444179 () Bool)

(assert (=> d!1444179 (contains!13917 lm!1477 (hash!3160 hashF!1107 key!3287))))

(assert (=> d!1444179 true))

(declare-fun _$27!1387 () Unit!107400)

(assert (=> d!1444179 (= (choose!30637 lm!1477 key!3287 hashF!1107) _$27!1387)))

(declare-fun bs!1007935 () Bool)

(assert (= bs!1007935 d!1444179))

(assert (=> bs!1007935 m!5413839))

(assert (=> bs!1007935 m!5413839))

(assert (=> bs!1007935 m!5413911))

(assert (=> d!1444053 d!1444179))

(declare-fun d!1444181 () Bool)

(declare-fun res!1919250 () Bool)

(declare-fun e!2863282 () Bool)

(assert (=> d!1444181 (=> res!1919250 e!2863282)))

(assert (=> d!1444181 (= res!1919250 (is-Nil!51003 (toList!4593 lm!1477)))))

(assert (=> d!1444181 (= (forall!10537 (toList!4593 lm!1477) lambda!184697) e!2863282)))

(declare-fun b!4590936 () Bool)

(declare-fun e!2863283 () Bool)

(assert (=> b!4590936 (= e!2863282 e!2863283)))

(declare-fun res!1919251 () Bool)

(assert (=> b!4590936 (=> (not res!1919251) (not e!2863283))))

(assert (=> b!4590936 (= res!1919251 (dynLambda!21359 lambda!184697 (h!56949 (toList!4593 lm!1477))))))

(declare-fun b!4590937 () Bool)

(assert (=> b!4590937 (= e!2863283 (forall!10537 (t!358121 (toList!4593 lm!1477)) lambda!184697))))

(assert (= (and d!1444181 (not res!1919250)) b!4590936))

(assert (= (and b!4590936 res!1919251) b!4590937))

(declare-fun b_lambda!168459 () Bool)

(assert (=> (not b_lambda!168459) (not b!4590936)))

(declare-fun m!5414209 () Bool)

(assert (=> b!4590936 m!5414209))

(declare-fun m!5414211 () Bool)

(assert (=> b!4590937 m!5414211))

(assert (=> d!1444053 d!1444181))

(declare-fun d!1444183 () Bool)

(declare-fun choose!30645 (Hashable!5688 K!12373) (_ BitVec 64))

(assert (=> d!1444183 (= (hash!3162 hashF!1107 key!3287) (choose!30645 hashF!1107 key!3287))))

(declare-fun bs!1007936 () Bool)

(assert (= bs!1007936 d!1444183))

(declare-fun m!5414213 () Bool)

(assert (=> bs!1007936 m!5414213))

(assert (=> d!1444097 d!1444183))

(declare-fun lt!1753160 () Bool)

(declare-fun d!1444185 () Bool)

(assert (=> d!1444185 (= lt!1753160 (set.member (tuple2!51609 hash!344 lt!1752990) (content!8605 (toList!4593 lm!1477))))))

(declare-fun e!2863285 () Bool)

(assert (=> d!1444185 (= lt!1753160 e!2863285)))

(declare-fun res!1919253 () Bool)

(assert (=> d!1444185 (=> (not res!1919253) (not e!2863285))))

(assert (=> d!1444185 (= res!1919253 (is-Cons!51003 (toList!4593 lm!1477)))))

(assert (=> d!1444185 (= (contains!13916 (toList!4593 lm!1477) (tuple2!51609 hash!344 lt!1752990)) lt!1753160)))

(declare-fun b!4590938 () Bool)

(declare-fun e!2863284 () Bool)

(assert (=> b!4590938 (= e!2863285 e!2863284)))

(declare-fun res!1919252 () Bool)

(assert (=> b!4590938 (=> res!1919252 e!2863284)))

(assert (=> b!4590938 (= res!1919252 (= (h!56949 (toList!4593 lm!1477)) (tuple2!51609 hash!344 lt!1752990)))))

(declare-fun b!4590939 () Bool)

(assert (=> b!4590939 (= e!2863284 (contains!13916 (t!358121 (toList!4593 lm!1477)) (tuple2!51609 hash!344 lt!1752990)))))

(assert (= (and d!1444185 res!1919253) b!4590938))

(assert (= (and b!4590938 (not res!1919252)) b!4590939))

(assert (=> d!1444185 m!5413957))

(declare-fun m!5414215 () Bool)

(assert (=> d!1444185 m!5414215))

(declare-fun m!5414217 () Bool)

(assert (=> b!4590939 m!5414217))

(assert (=> d!1444061 d!1444185))

(declare-fun d!1444187 () Bool)

(assert (=> d!1444187 (contains!13916 (toList!4593 lm!1477) (tuple2!51609 hash!344 lt!1752990))))

(assert (=> d!1444187 true))

(declare-fun _$14!1425 () Unit!107400)

(assert (=> d!1444187 (= (choose!30638 (toList!4593 lm!1477) hash!344 lt!1752990) _$14!1425)))

(declare-fun bs!1007937 () Bool)

(assert (= bs!1007937 d!1444187))

(assert (=> bs!1007937 m!5413929))

(assert (=> d!1444061 d!1444187))

(assert (=> d!1444061 d!1444157))

(declare-fun d!1444189 () Bool)

(assert (=> d!1444189 (= (get!16846 (getValueByKey!1272 (toList!4593 lm!1477) hash!344)) (v!45263 (getValueByKey!1272 (toList!4593 lm!1477) hash!344)))))

(assert (=> d!1444055 d!1444189))

(declare-fun b!4590948 () Bool)

(declare-fun e!2863290 () Option!11352)

(assert (=> b!4590948 (= e!2863290 (Some!11351 (_2!29098 (h!56949 (toList!4593 lm!1477)))))))

(declare-fun d!1444191 () Bool)

(declare-fun c!786223 () Bool)

(assert (=> d!1444191 (= c!786223 (and (is-Cons!51003 (toList!4593 lm!1477)) (= (_1!29098 (h!56949 (toList!4593 lm!1477))) hash!344)))))

(assert (=> d!1444191 (= (getValueByKey!1272 (toList!4593 lm!1477) hash!344) e!2863290)))

(declare-fun b!4590949 () Bool)

(declare-fun e!2863291 () Option!11352)

(assert (=> b!4590949 (= e!2863290 e!2863291)))

(declare-fun c!786224 () Bool)

(assert (=> b!4590949 (= c!786224 (and (is-Cons!51003 (toList!4593 lm!1477)) (not (= (_1!29098 (h!56949 (toList!4593 lm!1477))) hash!344))))))

(declare-fun b!4590951 () Bool)

(assert (=> b!4590951 (= e!2863291 None!11351)))

(declare-fun b!4590950 () Bool)

(assert (=> b!4590950 (= e!2863291 (getValueByKey!1272 (t!358121 (toList!4593 lm!1477)) hash!344))))

(assert (= (and d!1444191 c!786223) b!4590948))

(assert (= (and d!1444191 (not c!786223)) b!4590949))

(assert (= (and b!4590949 c!786224) b!4590950))

(assert (= (and b!4590949 (not c!786224)) b!4590951))

(declare-fun m!5414219 () Bool)

(assert (=> b!4590950 m!5414219))

(assert (=> d!1444055 d!1444191))

(declare-fun d!1444193 () Bool)

(assert (=> d!1444193 (= (get!16846 (getValueByKey!1272 (toList!4593 lm!1477) lt!1752992)) (v!45263 (getValueByKey!1272 (toList!4593 lm!1477) lt!1752992)))))

(assert (=> d!1444089 d!1444193))

(declare-fun b!4590952 () Bool)

(declare-fun e!2863292 () Option!11352)

(assert (=> b!4590952 (= e!2863292 (Some!11351 (_2!29098 (h!56949 (toList!4593 lm!1477)))))))

(declare-fun d!1444195 () Bool)

(declare-fun c!786225 () Bool)

(assert (=> d!1444195 (= c!786225 (and (is-Cons!51003 (toList!4593 lm!1477)) (= (_1!29098 (h!56949 (toList!4593 lm!1477))) lt!1752992)))))

(assert (=> d!1444195 (= (getValueByKey!1272 (toList!4593 lm!1477) lt!1752992) e!2863292)))

(declare-fun b!4590953 () Bool)

(declare-fun e!2863293 () Option!11352)

(assert (=> b!4590953 (= e!2863292 e!2863293)))

(declare-fun c!786226 () Bool)

(assert (=> b!4590953 (= c!786226 (and (is-Cons!51003 (toList!4593 lm!1477)) (not (= (_1!29098 (h!56949 (toList!4593 lm!1477))) lt!1752992))))))

(declare-fun b!4590955 () Bool)

(assert (=> b!4590955 (= e!2863293 None!11351)))

(declare-fun b!4590954 () Bool)

(assert (=> b!4590954 (= e!2863293 (getValueByKey!1272 (t!358121 (toList!4593 lm!1477)) lt!1752992))))

(assert (= (and d!1444195 c!786225) b!4590952))

(assert (= (and d!1444195 (not c!786225)) b!4590953))

(assert (= (and b!4590953 c!786226) b!4590954))

(assert (= (and b!4590953 (not c!786226)) b!4590955))

(declare-fun m!5414221 () Bool)

(assert (=> b!4590954 m!5414221))

(assert (=> d!1444089 d!1444195))

(declare-fun d!1444197 () Bool)

(assert (=> d!1444197 (isDefined!8620 (getValueByKey!1272 (toList!4593 lm!1477) lt!1752992))))

(declare-fun lt!1753163 () Unit!107400)

(declare-fun choose!30646 (List!51127 (_ BitVec 64)) Unit!107400)

(assert (=> d!1444197 (= lt!1753163 (choose!30646 (toList!4593 lm!1477) lt!1752992))))

(declare-fun e!2863296 () Bool)

(assert (=> d!1444197 e!2863296))

(declare-fun res!1919256 () Bool)

(assert (=> d!1444197 (=> (not res!1919256) (not e!2863296))))

(assert (=> d!1444197 (= res!1919256 (isStrictlySorted!521 (toList!4593 lm!1477)))))

(assert (=> d!1444197 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1176 (toList!4593 lm!1477) lt!1752992) lt!1753163)))

(declare-fun b!4590958 () Bool)

(assert (=> b!4590958 (= e!2863296 (containsKey!2091 (toList!4593 lm!1477) lt!1752992))))

(assert (= (and d!1444197 res!1919256) b!4590958))

(assert (=> d!1444197 m!5413945))

(assert (=> d!1444197 m!5413945))

(assert (=> d!1444197 m!5413947))

(declare-fun m!5414223 () Bool)

(assert (=> d!1444197 m!5414223))

(assert (=> d!1444197 m!5413933))

(assert (=> b!4590958 m!5413941))

(assert (=> b!4590664 d!1444197))

(declare-fun d!1444199 () Bool)

(declare-fun isEmpty!28837 (Option!11352) Bool)

(assert (=> d!1444199 (= (isDefined!8620 (getValueByKey!1272 (toList!4593 lm!1477) lt!1752992)) (not (isEmpty!28837 (getValueByKey!1272 (toList!4593 lm!1477) lt!1752992))))))

(declare-fun bs!1007938 () Bool)

(assert (= bs!1007938 d!1444199))

(assert (=> bs!1007938 m!5413945))

(declare-fun m!5414225 () Bool)

(assert (=> bs!1007938 m!5414225))

(assert (=> b!4590664 d!1444199))

(assert (=> b!4590664 d!1444195))

(assert (=> b!4590655 d!1444191))

(declare-fun d!1444201 () Bool)

(declare-fun res!1919257 () Bool)

(declare-fun e!2863297 () Bool)

(assert (=> d!1444201 (=> res!1919257 e!2863297)))

(assert (=> d!1444201 (= res!1919257 (and (is-Cons!51002 (t!358120 newBucket!178)) (= (_1!29097 (h!56948 (t!358120 newBucket!178))) (_1!29097 (h!56948 newBucket!178)))))))

(assert (=> d!1444201 (= (containsKey!2089 (t!358120 newBucket!178) (_1!29097 (h!56948 newBucket!178))) e!2863297)))

(declare-fun b!4590959 () Bool)

(declare-fun e!2863298 () Bool)

(assert (=> b!4590959 (= e!2863297 e!2863298)))

(declare-fun res!1919258 () Bool)

(assert (=> b!4590959 (=> (not res!1919258) (not e!2863298))))

(assert (=> b!4590959 (= res!1919258 (is-Cons!51002 (t!358120 newBucket!178)))))

(declare-fun b!4590960 () Bool)

(assert (=> b!4590960 (= e!2863298 (containsKey!2089 (t!358120 (t!358120 newBucket!178)) (_1!29097 (h!56948 newBucket!178))))))

(assert (= (and d!1444201 (not res!1919257)) b!4590959))

(assert (= (and b!4590959 res!1919258) b!4590960))

(declare-fun m!5414227 () Bool)

(assert (=> b!4590960 m!5414227))

(assert (=> b!4590749 d!1444201))

(declare-fun d!1444203 () Bool)

(declare-fun res!1919263 () Bool)

(declare-fun e!2863303 () Bool)

(assert (=> d!1444203 (=> res!1919263 e!2863303)))

(assert (=> d!1444203 (= res!1919263 (and (is-Cons!51002 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) (= (_1!29097 (h!56948 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))) key!3287)))))

(assert (=> d!1444203 (= (containsKey!2092 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287) e!2863303)))

(declare-fun b!4590965 () Bool)

(declare-fun e!2863304 () Bool)

(assert (=> b!4590965 (= e!2863303 e!2863304)))

(declare-fun res!1919264 () Bool)

(assert (=> b!4590965 (=> (not res!1919264) (not e!2863304))))

(assert (=> b!4590965 (= res!1919264 (is-Cons!51002 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))))))

(declare-fun b!4590966 () Bool)

(assert (=> b!4590966 (= e!2863304 (containsKey!2092 (t!358120 (toList!4594 (extractMap!1349 (toList!4593 lm!1477)))) key!3287))))

(assert (= (and d!1444203 (not res!1919263)) b!4590965))

(assert (= (and b!4590965 res!1919264) b!4590966))

(declare-fun m!5414229 () Bool)

(assert (=> b!4590966 m!5414229))

(assert (=> d!1444083 d!1444203))

(assert (=> b!4590710 d!1444203))

(declare-fun d!1444205 () Bool)

(assert (=> d!1444205 (containsKey!2092 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287)))

(declare-fun lt!1753166 () Unit!107400)

(declare-fun choose!30647 (List!51126 K!12373) Unit!107400)

(assert (=> d!1444205 (= lt!1753166 (choose!30647 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287))))

(assert (=> d!1444205 (invariantList!1106 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))))))

(assert (=> d!1444205 (= (lemmaInGetKeysListThenContainsKey!553 (toList!4594 (extractMap!1349 (toList!4593 lm!1477))) key!3287) lt!1753166)))

(declare-fun bs!1007939 () Bool)

(assert (= bs!1007939 d!1444205))

(assert (=> bs!1007939 m!5413981))

(declare-fun m!5414231 () Bool)

(assert (=> bs!1007939 m!5414231))

(assert (=> bs!1007939 m!5414093))

(assert (=> b!4590710 d!1444205))

(declare-fun d!1444207 () Bool)

(declare-fun c!786229 () Bool)

(assert (=> d!1444207 (= c!786229 (is-Nil!51003 (toList!4593 lm!1477)))))

(declare-fun e!2863307 () (Set tuple2!51608))

(assert (=> d!1444207 (= (content!8605 (toList!4593 lm!1477)) e!2863307)))

(declare-fun b!4590971 () Bool)

(assert (=> b!4590971 (= e!2863307 (as set.empty (Set tuple2!51608)))))

(declare-fun b!4590972 () Bool)

(assert (=> b!4590972 (= e!2863307 (set.union (set.insert (h!56949 (toList!4593 lm!1477)) (as set.empty (Set tuple2!51608))) (content!8605 (t!358121 (toList!4593 lm!1477)))))))

(assert (= (and d!1444207 c!786229) b!4590971))

(assert (= (and d!1444207 (not c!786229)) b!4590972))

(declare-fun m!5414233 () Bool)

(assert (=> b!4590972 m!5414233))

(assert (=> b!4590972 m!5414175))

(assert (=> d!1444073 d!1444207))

(declare-fun d!1444209 () Bool)

(declare-fun res!1919265 () Bool)

(declare-fun e!2863308 () Bool)

(assert (=> d!1444209 (=> res!1919265 e!2863308)))

(assert (=> d!1444209 (= res!1919265 (not (is-Cons!51002 (t!358120 newBucket!178))))))

(assert (=> d!1444209 (= (noDuplicateKeys!1289 (t!358120 newBucket!178)) e!2863308)))

(declare-fun b!4590973 () Bool)

(declare-fun e!2863309 () Bool)

(assert (=> b!4590973 (= e!2863308 e!2863309)))

(declare-fun res!1919266 () Bool)

(assert (=> b!4590973 (=> (not res!1919266) (not e!2863309))))

(assert (=> b!4590973 (= res!1919266 (not (containsKey!2089 (t!358120 (t!358120 newBucket!178)) (_1!29097 (h!56948 (t!358120 newBucket!178))))))))

(declare-fun b!4590974 () Bool)

(assert (=> b!4590974 (= e!2863309 (noDuplicateKeys!1289 (t!358120 (t!358120 newBucket!178))))))

(assert (= (and d!1444209 (not res!1919265)) b!4590973))

(assert (= (and b!4590973 res!1919266) b!4590974))

(declare-fun m!5414235 () Bool)

(assert (=> b!4590973 m!5414235))

(declare-fun m!5414237 () Bool)

(assert (=> b!4590974 m!5414237))

(assert (=> b!4590750 d!1444209))

(declare-fun bs!1007944 () Bool)

(declare-fun b!4591053 () Bool)

(assert (= bs!1007944 (and b!4591053 d!1444081)))

(declare-fun lambda!184765 () Int)

(assert (=> bs!1007944 (not (= lambda!184765 lambda!184703))))

(assert (=> b!4591053 true))

(declare-fun bs!1007945 () Bool)

(declare-fun b!4591052 () Bool)

(assert (= bs!1007945 (and b!4591052 d!1444081)))

(declare-fun lambda!184766 () Int)

(assert (=> bs!1007945 (not (= lambda!184766 lambda!184703))))

(declare-fun bs!1007946 () Bool)

(assert (= bs!1007946 (and b!4591052 b!4591053)))

(assert (=> bs!1007946 (= lambda!184766 lambda!184765)))

(assert (=> b!4591052 true))

(declare-fun lambda!184767 () Int)

(assert (=> bs!1007945 (not (= lambda!184767 lambda!184703))))

(declare-fun lt!1753229 () ListMap!3855)

(assert (=> bs!1007946 (= (= lt!1753229 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) (= lambda!184767 lambda!184765))))

(assert (=> b!4591052 (= (= lt!1753229 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) (= lambda!184767 lambda!184766))))

(assert (=> b!4591052 true))

(declare-fun bs!1007947 () Bool)

(declare-fun d!1444211 () Bool)

(assert (= bs!1007947 (and d!1444211 d!1444081)))

(declare-fun lambda!184768 () Int)

(assert (=> bs!1007947 (not (= lambda!184768 lambda!184703))))

(declare-fun bs!1007948 () Bool)

(assert (= bs!1007948 (and d!1444211 b!4591053)))

(declare-fun lt!1753236 () ListMap!3855)

(assert (=> bs!1007948 (= (= lt!1753236 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) (= lambda!184768 lambda!184765))))

(declare-fun bs!1007949 () Bool)

(assert (= bs!1007949 (and d!1444211 b!4591052)))

(assert (=> bs!1007949 (= (= lt!1753236 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) (= lambda!184768 lambda!184766))))

(assert (=> bs!1007949 (= (= lt!1753236 lt!1753229) (= lambda!184768 lambda!184767))))

(assert (=> d!1444211 true))

(declare-fun bm!320539 () Bool)

(declare-fun call!320546 () Unit!107400)

(declare-fun lemmaContainsAllItsOwnKeys!421 (ListMap!3855) Unit!107400)

(assert (=> bm!320539 (= call!320546 (lemmaContainsAllItsOwnKeys!421 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))))))

(declare-fun bm!320540 () Bool)

(declare-fun call!320545 () Bool)

(declare-fun c!786244 () Bool)

(assert (=> bm!320540 (= call!320545 (forall!10539 (toList!4594 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) (ite c!786244 lambda!184765 lambda!184767)))))

(declare-fun b!4591049 () Bool)

(declare-fun e!2863369 () Bool)

(assert (=> b!4591049 (= e!2863369 (forall!10539 (toList!4594 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) lambda!184767))))

(declare-fun b!4591050 () Bool)

(declare-fun e!2863370 () Bool)

(assert (=> b!4591050 (= e!2863370 (invariantList!1106 (toList!4594 lt!1753236)))))

(declare-fun call!320544 () Bool)

(declare-fun bm!320541 () Bool)

(assert (=> bm!320541 (= call!320544 (forall!10539 (ite c!786244 (toList!4594 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) (_2!29098 (h!56949 (toList!4593 lm!1477)))) (ite c!786244 lambda!184765 lambda!184767)))))

(declare-fun b!4591051 () Bool)

(declare-fun res!1919314 () Bool)

(assert (=> b!4591051 (=> (not res!1919314) (not e!2863370))))

(assert (=> b!4591051 (= res!1919314 (forall!10539 (toList!4594 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) lambda!184768))))

(declare-fun e!2863368 () ListMap!3855)

(assert (=> b!4591052 (= e!2863368 lt!1753229)))

(declare-fun lt!1753224 () ListMap!3855)

(declare-fun +!1723 (ListMap!3855 tuple2!51606) ListMap!3855)

(assert (=> b!4591052 (= lt!1753224 (+!1723 (extractMap!1349 (t!358121 (toList!4593 lm!1477))) (h!56948 (_2!29098 (h!56949 (toList!4593 lm!1477))))))))

(assert (=> b!4591052 (= lt!1753229 (addToMapMapFromBucket!796 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477)))) (+!1723 (extractMap!1349 (t!358121 (toList!4593 lm!1477))) (h!56948 (_2!29098 (h!56949 (toList!4593 lm!1477)))))))))

(declare-fun lt!1753223 () Unit!107400)

(assert (=> b!4591052 (= lt!1753223 call!320546)))

(assert (=> b!4591052 (forall!10539 (toList!4594 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) lambda!184766)))

(declare-fun lt!1753238 () Unit!107400)

(assert (=> b!4591052 (= lt!1753238 lt!1753223)))

(assert (=> b!4591052 (forall!10539 (toList!4594 lt!1753224) lambda!184767)))

(declare-fun lt!1753225 () Unit!107400)

(declare-fun Unit!107415 () Unit!107400)

(assert (=> b!4591052 (= lt!1753225 Unit!107415)))

(assert (=> b!4591052 (forall!10539 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477)))) lambda!184767)))

(declare-fun lt!1753232 () Unit!107400)

(declare-fun Unit!107416 () Unit!107400)

(assert (=> b!4591052 (= lt!1753232 Unit!107416)))

(declare-fun lt!1753222 () Unit!107400)

(declare-fun Unit!107417 () Unit!107400)

(assert (=> b!4591052 (= lt!1753222 Unit!107417)))

(declare-fun lt!1753230 () Unit!107400)

(declare-fun forallContained!2797 (List!51126 Int tuple2!51606) Unit!107400)

(assert (=> b!4591052 (= lt!1753230 (forallContained!2797 (toList!4594 lt!1753224) lambda!184767 (h!56948 (_2!29098 (h!56949 (toList!4593 lm!1477))))))))

(assert (=> b!4591052 (contains!13918 lt!1753224 (_1!29097 (h!56948 (_2!29098 (h!56949 (toList!4593 lm!1477))))))))

(declare-fun lt!1753237 () Unit!107400)

(declare-fun Unit!107418 () Unit!107400)

(assert (=> b!4591052 (= lt!1753237 Unit!107418)))

(assert (=> b!4591052 (contains!13918 lt!1753229 (_1!29097 (h!56948 (_2!29098 (h!56949 (toList!4593 lm!1477))))))))

(declare-fun lt!1753233 () Unit!107400)

(declare-fun Unit!107419 () Unit!107400)

(assert (=> b!4591052 (= lt!1753233 Unit!107419)))

(assert (=> b!4591052 call!320544))

(declare-fun lt!1753227 () Unit!107400)

(declare-fun Unit!107420 () Unit!107400)

(assert (=> b!4591052 (= lt!1753227 Unit!107420)))

(assert (=> b!4591052 (forall!10539 (toList!4594 lt!1753224) lambda!184767)))

(declare-fun lt!1753219 () Unit!107400)

(declare-fun Unit!107421 () Unit!107400)

(assert (=> b!4591052 (= lt!1753219 Unit!107421)))

(declare-fun lt!1753231 () Unit!107400)

(declare-fun Unit!107422 () Unit!107400)

(assert (=> b!4591052 (= lt!1753231 Unit!107422)))

(declare-fun lt!1753228 () Unit!107400)

(declare-fun addForallContainsKeyThenBeforeAdding!421 (ListMap!3855 ListMap!3855 K!12373 V!12619) Unit!107400)

(assert (=> b!4591052 (= lt!1753228 (addForallContainsKeyThenBeforeAdding!421 (extractMap!1349 (t!358121 (toList!4593 lm!1477))) lt!1753229 (_1!29097 (h!56948 (_2!29098 (h!56949 (toList!4593 lm!1477))))) (_2!29097 (h!56948 (_2!29098 (h!56949 (toList!4593 lm!1477)))))))))

(assert (=> b!4591052 call!320545))

(declare-fun lt!1753239 () Unit!107400)

(assert (=> b!4591052 (= lt!1753239 lt!1753228)))

(assert (=> b!4591052 (forall!10539 (toList!4594 (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) lambda!184767)))

(declare-fun lt!1753220 () Unit!107400)

(declare-fun Unit!107423 () Unit!107400)

(assert (=> b!4591052 (= lt!1753220 Unit!107423)))

(declare-fun res!1919313 () Bool)

(assert (=> b!4591052 (= res!1919313 (forall!10539 (_2!29098 (h!56949 (toList!4593 lm!1477))) lambda!184767))))

(assert (=> b!4591052 (=> (not res!1919313) (not e!2863369))))

(assert (=> b!4591052 e!2863369))

(declare-fun lt!1753226 () Unit!107400)

(declare-fun Unit!107424 () Unit!107400)

(assert (=> b!4591052 (= lt!1753226 Unit!107424)))

(assert (=> b!4591053 (= e!2863368 (extractMap!1349 (t!358121 (toList!4593 lm!1477))))))

(declare-fun lt!1753221 () Unit!107400)

(assert (=> b!4591053 (= lt!1753221 call!320546)))

(assert (=> b!4591053 call!320545))

(declare-fun lt!1753234 () Unit!107400)

(assert (=> b!4591053 (= lt!1753234 lt!1753221)))

(assert (=> b!4591053 call!320544))

(declare-fun lt!1753235 () Unit!107400)

(declare-fun Unit!107425 () Unit!107400)

(assert (=> b!4591053 (= lt!1753235 Unit!107425)))

(assert (=> d!1444211 e!2863370))

(declare-fun res!1919315 () Bool)

(assert (=> d!1444211 (=> (not res!1919315) (not e!2863370))))

(assert (=> d!1444211 (= res!1919315 (forall!10539 (_2!29098 (h!56949 (toList!4593 lm!1477))) lambda!184768))))

(assert (=> d!1444211 (= lt!1753236 e!2863368)))

(assert (=> d!1444211 (= c!786244 (is-Nil!51002 (_2!29098 (h!56949 (toList!4593 lm!1477)))))))

(assert (=> d!1444211 (noDuplicateKeys!1289 (_2!29098 (h!56949 (toList!4593 lm!1477))))))

(assert (=> d!1444211 (= (addToMapMapFromBucket!796 (_2!29098 (h!56949 (toList!4593 lm!1477))) (extractMap!1349 (t!358121 (toList!4593 lm!1477)))) lt!1753236)))

(assert (= (and d!1444211 c!786244) b!4591053))

(assert (= (and d!1444211 (not c!786244)) b!4591052))

(assert (= (and b!4591052 res!1919313) b!4591049))

(assert (= (or b!4591053 b!4591052) bm!320541))

(assert (= (or b!4591053 b!4591052) bm!320540))

(assert (= (or b!4591053 b!4591052) bm!320539))

(assert (= (and d!1444211 res!1919315) b!4591051))

(assert (= (and b!4591051 res!1919314) b!4591050))

(declare-fun m!5414293 () Bool)

(assert (=> bm!320540 m!5414293))

(declare-fun m!5414295 () Bool)

(assert (=> d!1444211 m!5414295))

(assert (=> d!1444211 m!5414009))

(declare-fun m!5414297 () Bool)

(assert (=> b!4591052 m!5414297))

(declare-fun m!5414299 () Bool)

(assert (=> b!4591052 m!5414299))

(declare-fun m!5414301 () Bool)

(assert (=> b!4591052 m!5414301))

(declare-fun m!5414303 () Bool)

(assert (=> b!4591052 m!5414303))

(assert (=> b!4591052 m!5413993))

(assert (=> b!4591052 m!5414299))

(declare-fun m!5414305 () Bool)

(assert (=> b!4591052 m!5414305))

(assert (=> b!4591052 m!5414303))

(declare-fun m!5414307 () Bool)

(assert (=> b!4591052 m!5414307))

(declare-fun m!5414309 () Bool)

(assert (=> b!4591052 m!5414309))

(assert (=> b!4591052 m!5413993))

(declare-fun m!5414311 () Bool)

(assert (=> b!4591052 m!5414311))

(declare-fun m!5414313 () Bool)

(assert (=> b!4591052 m!5414313))

(declare-fun m!5414315 () Bool)

(assert (=> b!4591052 m!5414315))

(declare-fun m!5414317 () Bool)

(assert (=> b!4591052 m!5414317))

(assert (=> b!4591049 m!5414297))

(declare-fun m!5414319 () Bool)

(assert (=> b!4591050 m!5414319))

(declare-fun m!5414321 () Bool)

(assert (=> bm!320541 m!5414321))

(declare-fun m!5414323 () Bool)

(assert (=> b!4591051 m!5414323))

(assert (=> bm!320539 m!5413993))

(declare-fun m!5414325 () Bool)

(assert (=> bm!320539 m!5414325))

(assert (=> b!4590735 d!1444211))

(declare-fun bs!1007950 () Bool)

(declare-fun d!1444251 () Bool)

(assert (= bs!1007950 (and d!1444251 start!457210)))

(declare-fun lambda!184769 () Int)

(assert (=> bs!1007950 (= lambda!184769 lambda!184687)))

(declare-fun bs!1007951 () Bool)

(assert (= bs!1007951 (and d!1444251 d!1444053)))

(assert (=> bs!1007951 (= lambda!184769 lambda!184697)))

(declare-fun bs!1007952 () Bool)

(assert (= bs!1007952 (and d!1444251 d!1444085)))

(assert (=> bs!1007952 (= lambda!184769 lambda!184706)))

(declare-fun bs!1007953 () Bool)

(assert (= bs!1007953 (and d!1444251 d!1444095)))

(assert (=> bs!1007953 (not (= lambda!184769 lambda!184709))))

(declare-fun lt!1753240 () ListMap!3855)

(assert (=> d!1444251 (invariantList!1106 (toList!4594 lt!1753240))))

(declare-fun e!2863371 () ListMap!3855)

(assert (=> d!1444251 (= lt!1753240 e!2863371)))

(declare-fun c!786245 () Bool)

(assert (=> d!1444251 (= c!786245 (is-Cons!51003 (t!358121 (toList!4593 lm!1477))))))

(assert (=> d!1444251 (forall!10537 (t!358121 (toList!4593 lm!1477)) lambda!184769)))

(assert (=> d!1444251 (= (extractMap!1349 (t!358121 (toList!4593 lm!1477))) lt!1753240)))

(declare-fun b!4591056 () Bool)

(assert (=> b!4591056 (= e!2863371 (addToMapMapFromBucket!796 (_2!29098 (h!56949 (t!358121 (toList!4593 lm!1477)))) (extractMap!1349 (t!358121 (t!358121 (toList!4593 lm!1477))))))))

(declare-fun b!4591057 () Bool)

(assert (=> b!4591057 (= e!2863371 (ListMap!3856 Nil!51002))))

(assert (= (and d!1444251 c!786245) b!4591056))

(assert (= (and d!1444251 (not c!786245)) b!4591057))

(declare-fun m!5414327 () Bool)

(assert (=> d!1444251 m!5414327))

(declare-fun m!5414329 () Bool)

(assert (=> d!1444251 m!5414329))

(declare-fun m!5414331 () Bool)

(assert (=> b!4591056 m!5414331))

(assert (=> b!4591056 m!5414331))

(declare-fun m!5414333 () Bool)

(assert (=> b!4591056 m!5414333))

(assert (=> b!4590735 d!1444251))

(declare-fun d!1444253 () Bool)

(declare-fun res!1919316 () Bool)

(declare-fun e!2863372 () Bool)

(assert (=> d!1444253 (=> res!1919316 e!2863372)))

(assert (=> d!1444253 (= res!1919316 (and (is-Cons!51002 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477))))) (= (_1!29097 (h!56948 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477)))))) key!3287)))))

(assert (=> d!1444253 (= (containsKey!2089 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477)))) key!3287) e!2863372)))

(declare-fun b!4591058 () Bool)

(declare-fun e!2863373 () Bool)

(assert (=> b!4591058 (= e!2863372 e!2863373)))

(declare-fun res!1919317 () Bool)

(assert (=> b!4591058 (=> (not res!1919317) (not e!2863373))))

(assert (=> b!4591058 (= res!1919317 (is-Cons!51002 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477))))))))

(declare-fun b!4591059 () Bool)

(assert (=> b!4591059 (= e!2863373 (containsKey!2089 (t!358120 (t!358120 (_2!29098 (h!56949 (toList!4593 lm!1477))))) key!3287))))

(assert (= (and d!1444253 (not res!1919316)) b!4591058))

(assert (= (and b!4591058 res!1919317) b!4591059))

(declare-fun m!5414335 () Bool)

(assert (=> b!4591059 m!5414335))

(assert (=> b!4590687 d!1444253))

(assert (=> b!4590666 d!1444199))

(assert (=> b!4590666 d!1444195))

(declare-fun b!4591060 () Bool)

(declare-fun e!2863374 () Bool)

(declare-fun tp!1340040 () Bool)

(assert (=> b!4591060 (= e!2863374 (and tp_is_empty!28449 tp_is_empty!28451 tp!1340040))))

(assert (=> b!4590757 (= tp!1340024 e!2863374)))

(assert (= (and b!4590757 (is-Cons!51002 (t!358120 (t!358120 newBucket!178)))) b!4591060))

(declare-fun b!4591061 () Bool)

(declare-fun tp!1340041 () Bool)

(declare-fun e!2863375 () Bool)

(assert (=> b!4591061 (= e!2863375 (and tp_is_empty!28449 tp_is_empty!28451 tp!1340041))))

(assert (=> b!4590771 (= tp!1340029 e!2863375)))

(assert (= (and b!4590771 (is-Cons!51002 (_2!29098 (h!56949 (toList!4593 lm!1477))))) b!4591061))

(declare-fun b!4591062 () Bool)

(declare-fun e!2863376 () Bool)

(declare-fun tp!1340042 () Bool)

(declare-fun tp!1340043 () Bool)

(assert (=> b!4591062 (= e!2863376 (and tp!1340042 tp!1340043))))

(assert (=> b!4590771 (= tp!1340030 e!2863376)))

(assert (= (and b!4590771 (is-Cons!51003 (t!358121 (toList!4593 lm!1477)))) b!4591062))

(declare-fun b_lambda!168465 () Bool)

(assert (= b_lambda!168453 (or start!457210 b_lambda!168465)))

(assert (=> d!1444153 d!1444101))

(declare-fun b_lambda!168467 () Bool)

(assert (= b_lambda!168449 (or d!1444081 b_lambda!168467)))

(declare-fun bs!1007954 () Bool)

(declare-fun d!1444255 () Bool)

(assert (= bs!1007954 (and d!1444255 d!1444081)))

(assert (=> bs!1007954 (= (dynLambda!21361 lambda!184703 (h!56948 newBucket!178)) (= (hash!3160 hashF!1107 (_1!29097 (h!56948 newBucket!178))) hash!344))))

(declare-fun m!5414337 () Bool)

(assert (=> bs!1007954 m!5414337))

(assert (=> b!4590849 d!1444255))

(declare-fun b_lambda!168469 () Bool)

(assert (= b_lambda!168459 (or d!1444053 b_lambda!168469)))

(declare-fun bs!1007955 () Bool)

(declare-fun d!1444257 () Bool)

(assert (= bs!1007955 (and d!1444257 d!1444053)))

(assert (=> bs!1007955 (= (dynLambda!21359 lambda!184697 (h!56949 (toList!4593 lm!1477))) (noDuplicateKeys!1289 (_2!29098 (h!56949 (toList!4593 lm!1477)))))))

(assert (=> bs!1007955 m!5414009))

(assert (=> b!4590936 d!1444257))

(declare-fun b_lambda!168471 () Bool)

(assert (= b_lambda!168457 (or d!1444085 b_lambda!168471)))

(declare-fun bs!1007956 () Bool)

(declare-fun d!1444259 () Bool)

(assert (= bs!1007956 (and d!1444259 d!1444085)))

(assert (=> bs!1007956 (= (dynLambda!21359 lambda!184706 (h!56949 (toList!4593 lm!1477))) (noDuplicateKeys!1289 (_2!29098 (h!56949 (toList!4593 lm!1477)))))))

(assert (=> bs!1007956 m!5414009))

(assert (=> b!4590931 d!1444259))

(declare-fun b_lambda!168473 () Bool)

(assert (= b_lambda!168455 (or d!1444095 b_lambda!168473)))

(declare-fun bs!1007957 () Bool)

(declare-fun d!1444261 () Bool)

(assert (= bs!1007957 (and d!1444261 d!1444095)))

(assert (=> bs!1007957 (= (dynLambda!21359 lambda!184709 (h!56949 (toList!4593 lm!1477))) (allKeysSameHash!1145 (_2!29098 (h!56949 (toList!4593 lm!1477))) (_1!29098 (h!56949 (toList!4593 lm!1477))) hashF!1107))))

(declare-fun m!5414339 () Bool)

(assert (=> bs!1007957 m!5414339))

(assert (=> b!4590925 d!1444261))

(declare-fun b_lambda!168475 () Bool)

(assert (= b_lambda!168451 (or start!457210 b_lambda!168475)))

(declare-fun bs!1007958 () Bool)

(declare-fun d!1444263 () Bool)

(assert (= bs!1007958 (and d!1444263 start!457210)))

(assert (=> bs!1007958 (= (dynLambda!21359 lambda!184687 (h!56949 (t!358121 (toList!4593 lm!1477)))) (noDuplicateKeys!1289 (_2!29098 (h!56949 (t!358121 (toList!4593 lm!1477))))))))

(declare-fun m!5414341 () Bool)

(assert (=> bs!1007958 m!5414341))

(assert (=> b!4590866 d!1444263))

(push 1)

(assert (not d!1444187))

(assert (not d!1444133))

(assert (not b!4591051))

(assert (not d!1444199))

(assert (not bs!1007957))

(assert (not d!1444211))

(assert (not b!4590915))

(assert (not b!4590880))

(assert (not d!1444205))

(assert (not b!4590908))

(assert (not b!4590954))

(assert (not b!4591056))

(assert (not b!4591049))

(assert (not b_lambda!168471))

(assert tp_is_empty!28451)

(assert (not b!4590937))

(assert (not b!4590932))

(assert (not b!4590881))

(assert (not b_lambda!168469))

(assert (not b_lambda!168475))

(assert (not b!4590926))

(assert (not b!4590933))

(assert (not d!1444183))

(assert (not b!4590843))

(assert (not b!4591062))

(assert (not bs!1007958))

(assert (not b!4591060))

(assert (not d!1444141))

(assert (not b_lambda!168473))

(assert (not d!1444147))

(assert (not b!4590920))

(assert (not b!4590864))

(assert (not d!1444131))

(assert (not b!4590928))

(assert (not b!4590960))

(assert (not b!4590879))

(assert (not b!4590935))

(assert (not d!1444155))

(assert (not d!1444161))

(assert (not d!1444177))

(assert (not d!1444251))

(assert (not bs!1007954))

(assert (not d!1444185))

(assert (not b!4590924))

(assert (not b!4590966))

(assert (not b!4590950))

(assert (not b!4590873))

(assert (not b!4591061))

(assert (not bm!320539))

(assert (not b!4590867))

(assert (not b!4590859))

(assert (not b!4590930))

(assert (not bs!1007955))

(assert (not b!4590858))

(assert (not b_lambda!168441))

(assert (not d!1444173))

(assert tp_is_empty!28449)

(assert (not b!4590922))

(assert (not b!4590939))

(assert (not b_lambda!168465))

(assert (not b_lambda!168467))

(assert (not b!4590910))

(assert (not b!4590972))

(assert (not b!4590909))

(assert (not b!4590850))

(assert (not b!4590889))

(assert (not d!1444137))

(assert (not d!1444179))

(assert (not bm!320540))

(assert (not b!4590923))

(assert (not b!4591052))

(assert (not b!4590958))

(assert (not bs!1007956))

(assert (not b!4590857))

(assert (not b!4591050))

(assert (not b!4590883))

(assert (not bm!320541))

(assert (not b!4590916))

(assert (not b!4590927))

(assert (not d!1444159))

(assert (not b!4590974))

(assert (not b!4591059))

(assert (not d!1444197))

(assert (not b_lambda!168439))

(assert (not d!1444143))

(assert (not b!4590973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

