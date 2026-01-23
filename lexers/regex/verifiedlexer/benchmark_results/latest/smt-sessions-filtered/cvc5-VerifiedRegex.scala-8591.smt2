; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!457140 () Bool)

(assert start!457140)

(declare-fun b!4590201 () Bool)

(declare-fun res!1918834 () Bool)

(declare-fun e!2862835 () Bool)

(assert (=> b!4590201 (=> res!1918834 e!2862835)))

(declare-datatypes ((K!12358 0))(
  ( (K!12359 (val!18157 Int)) )
))
(declare-datatypes ((V!12604 0))(
  ( (V!12605 (val!18158 Int)) )
))
(declare-datatypes ((tuple2!51582 0))(
  ( (tuple2!51583 (_1!29085 K!12358) (_2!29085 V!12604)) )
))
(declare-datatypes ((List!51113 0))(
  ( (Nil!50989) (Cons!50989 (h!56933 tuple2!51582) (t!358107 List!51113)) )
))
(declare-fun newBucket!178 () List!51113)

(declare-fun noDuplicateKeys!1283 (List!51113) Bool)

(assert (=> b!4590201 (= res!1918834 (not (noDuplicateKeys!1283 newBucket!178)))))

(declare-fun b!4590202 () Bool)

(declare-fun res!1918836 () Bool)

(declare-fun e!2862837 () Bool)

(assert (=> b!4590202 (=> (not res!1918836) (not e!2862837))))

(declare-datatypes ((tuple2!51584 0))(
  ( (tuple2!51585 (_1!29086 (_ BitVec 64)) (_2!29086 List!51113)) )
))
(declare-datatypes ((List!51114 0))(
  ( (Nil!50990) (Cons!50990 (h!56934 tuple2!51584) (t!358108 List!51114)) )
))
(declare-datatypes ((ListLongMap!3213 0))(
  ( (ListLongMap!3214 (toList!4581 List!51114)) )
))
(declare-fun lm!1477 () ListLongMap!3213)

(declare-fun key!3287 () K!12358)

(declare-datatypes ((ListMap!3843 0))(
  ( (ListMap!3844 (toList!4582 List!51113)) )
))
(declare-fun contains!13897 (ListMap!3843 K!12358) Bool)

(declare-fun extractMap!1343 (List!51114) ListMap!3843)

(assert (=> b!4590202 (= res!1918836 (contains!13897 (extractMap!1343 (toList!4581 lm!1477)) key!3287))))

(declare-fun b!4590203 () Bool)

(declare-fun e!2862839 () Bool)

(declare-fun tp!1339961 () Bool)

(assert (=> b!4590203 (= e!2862839 tp!1339961)))

(declare-fun e!2862838 () Bool)

(declare-fun b!4590204 () Bool)

(declare-fun tp!1339960 () Bool)

(declare-fun tp_is_empty!28427 () Bool)

(declare-fun tp_is_empty!28425 () Bool)

(assert (=> b!4590204 (= e!2862838 (and tp_is_empty!28425 tp_is_empty!28427 tp!1339960))))

(declare-fun b!4590205 () Bool)

(assert (=> b!4590205 (= e!2862835 (not (is-Nil!50990 (toList!4581 lm!1477))))))

(declare-fun res!1918833 () Bool)

(assert (=> start!457140 (=> (not res!1918833) (not e!2862837))))

(declare-fun lambda!184627 () Int)

(declare-fun forall!10530 (List!51114 Int) Bool)

(assert (=> start!457140 (= res!1918833 (forall!10530 (toList!4581 lm!1477) lambda!184627))))

(assert (=> start!457140 e!2862837))

(assert (=> start!457140 true))

(declare-fun inv!66543 (ListLongMap!3213) Bool)

(assert (=> start!457140 (and (inv!66543 lm!1477) e!2862839)))

(assert (=> start!457140 tp_is_empty!28425))

(assert (=> start!457140 e!2862838))

(declare-fun b!4590206 () Bool)

(declare-fun e!2862836 () Bool)

(assert (=> b!4590206 (= e!2862836 (not e!2862835))))

(declare-fun res!1918832 () Bool)

(assert (=> b!4590206 (=> res!1918832 e!2862835)))

(declare-fun lt!1752772 () List!51113)

(declare-fun removePairForKey!908 (List!51113 K!12358) List!51113)

(assert (=> b!4590206 (= res!1918832 (not (= newBucket!178 (removePairForKey!908 lt!1752772 key!3287))))))

(declare-datatypes ((Unit!107385 0))(
  ( (Unit!107386) )
))
(declare-fun lt!1752777 () Unit!107385)

(declare-fun lt!1752775 () tuple2!51584)

(declare-fun forallContained!2788 (List!51114 Int tuple2!51584) Unit!107385)

(assert (=> b!4590206 (= lt!1752777 (forallContained!2788 (toList!4581 lm!1477) lambda!184627 lt!1752775))))

(declare-fun contains!13898 (List!51114 tuple2!51584) Bool)

(assert (=> b!4590206 (contains!13898 (toList!4581 lm!1477) lt!1752775)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4590206 (= lt!1752775 (tuple2!51585 hash!344 lt!1752772))))

(declare-fun lt!1752774 () Unit!107385)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!793 (List!51114 (_ BitVec 64) List!51113) Unit!107385)

(assert (=> b!4590206 (= lt!1752774 (lemmaGetValueByKeyImpliesContainsTuple!793 (toList!4581 lm!1477) hash!344 lt!1752772))))

(declare-fun apply!12020 (ListLongMap!3213 (_ BitVec 64)) List!51113)

(assert (=> b!4590206 (= lt!1752772 (apply!12020 lm!1477 hash!344))))

(declare-fun lt!1752776 () (_ BitVec 64))

(declare-fun contains!13899 (ListLongMap!3213 (_ BitVec 64)) Bool)

(assert (=> b!4590206 (contains!13899 lm!1477 lt!1752776)))

(declare-datatypes ((Hashable!5682 0))(
  ( (HashableExt!5681 (__x!31385 Int)) )
))
(declare-fun hashF!1107 () Hashable!5682)

(declare-fun lt!1752773 () Unit!107385)

(declare-fun lemmaInGenMapThenLongMapContainsHash!357 (ListLongMap!3213 K!12358 Hashable!5682) Unit!107385)

(assert (=> b!4590206 (= lt!1752773 (lemmaInGenMapThenLongMapContainsHash!357 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4590207 () Bool)

(declare-fun res!1918831 () Bool)

(assert (=> b!4590207 (=> (not res!1918831) (not e!2862836))))

(declare-fun allKeysSameHash!1139 (List!51113 (_ BitVec 64) Hashable!5682) Bool)

(assert (=> b!4590207 (= res!1918831 (allKeysSameHash!1139 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4590208 () Bool)

(assert (=> b!4590208 (= e!2862837 e!2862836)))

(declare-fun res!1918835 () Bool)

(assert (=> b!4590208 (=> (not res!1918835) (not e!2862836))))

(assert (=> b!4590208 (= res!1918835 (= lt!1752776 hash!344))))

(declare-fun hash!3153 (Hashable!5682 K!12358) (_ BitVec 64))

(assert (=> b!4590208 (= lt!1752776 (hash!3153 hashF!1107 key!3287))))

(declare-fun b!4590209 () Bool)

(declare-fun res!1918837 () Bool)

(assert (=> b!4590209 (=> (not res!1918837) (not e!2862837))))

(declare-fun allKeysSameHashInMap!1394 (ListLongMap!3213 Hashable!5682) Bool)

(assert (=> b!4590209 (= res!1918837 (allKeysSameHashInMap!1394 lm!1477 hashF!1107))))

(assert (= (and start!457140 res!1918833) b!4590209))

(assert (= (and b!4590209 res!1918837) b!4590202))

(assert (= (and b!4590202 res!1918836) b!4590208))

(assert (= (and b!4590208 res!1918835) b!4590207))

(assert (= (and b!4590207 res!1918831) b!4590206))

(assert (= (and b!4590206 (not res!1918832)) b!4590201))

(assert (= (and b!4590201 (not res!1918834)) b!4590205))

(assert (= start!457140 b!4590203))

(assert (= (and start!457140 (is-Cons!50989 newBucket!178)) b!4590204))

(declare-fun m!5413487 () Bool)

(assert (=> b!4590201 m!5413487))

(declare-fun m!5413489 () Bool)

(assert (=> b!4590209 m!5413489))

(declare-fun m!5413491 () Bool)

(assert (=> b!4590206 m!5413491))

(declare-fun m!5413493 () Bool)

(assert (=> b!4590206 m!5413493))

(declare-fun m!5413495 () Bool)

(assert (=> b!4590206 m!5413495))

(declare-fun m!5413497 () Bool)

(assert (=> b!4590206 m!5413497))

(declare-fun m!5413499 () Bool)

(assert (=> b!4590206 m!5413499))

(declare-fun m!5413501 () Bool)

(assert (=> b!4590206 m!5413501))

(declare-fun m!5413503 () Bool)

(assert (=> b!4590206 m!5413503))

(declare-fun m!5413505 () Bool)

(assert (=> start!457140 m!5413505))

(declare-fun m!5413507 () Bool)

(assert (=> start!457140 m!5413507))

(declare-fun m!5413509 () Bool)

(assert (=> b!4590202 m!5413509))

(assert (=> b!4590202 m!5413509))

(declare-fun m!5413511 () Bool)

(assert (=> b!4590202 m!5413511))

(declare-fun m!5413513 () Bool)

(assert (=> b!4590207 m!5413513))

(declare-fun m!5413515 () Bool)

(assert (=> b!4590208 m!5413515))

(push 1)

(assert (not b!4590201))

(assert (not b!4590208))

(assert (not b!4590209))

(assert (not b!4590206))

(assert (not b!4590207))

(assert tp_is_empty!28425)

(assert (not start!457140))

(assert (not b!4590204))

(assert tp_is_empty!28427)

(assert (not b!4590202))

(assert (not b!4590203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1007862 () Bool)

(declare-fun d!1443986 () Bool)

(assert (= bs!1007862 (and d!1443986 start!457140)))

(declare-fun lambda!184635 () Int)

(assert (=> bs!1007862 (not (= lambda!184635 lambda!184627))))

(assert (=> d!1443986 true))

(assert (=> d!1443986 (= (allKeysSameHashInMap!1394 lm!1477 hashF!1107) (forall!10530 (toList!4581 lm!1477) lambda!184635))))

(declare-fun bs!1007863 () Bool)

(assert (= bs!1007863 d!1443986))

(declare-fun m!5413547 () Bool)

(assert (=> bs!1007863 m!5413547))

(assert (=> b!4590209 d!1443986))

(declare-fun bs!1007864 () Bool)

(declare-fun d!1443988 () Bool)

(assert (= bs!1007864 (and d!1443988 start!457140)))

(declare-fun lambda!184638 () Int)

(assert (=> bs!1007864 (= lambda!184638 lambda!184627)))

(declare-fun bs!1007865 () Bool)

(assert (= bs!1007865 (and d!1443988 d!1443986)))

(assert (=> bs!1007865 (not (= lambda!184638 lambda!184635))))

(assert (=> d!1443988 (contains!13899 lm!1477 (hash!3153 hashF!1107 key!3287))))

(declare-fun lt!1752798 () Unit!107385)

(declare-fun choose!30634 (ListLongMap!3213 K!12358 Hashable!5682) Unit!107385)

(assert (=> d!1443988 (= lt!1752798 (choose!30634 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1443988 (forall!10530 (toList!4581 lm!1477) lambda!184638)))

(assert (=> d!1443988 (= (lemmaInGenMapThenLongMapContainsHash!357 lm!1477 key!3287 hashF!1107) lt!1752798)))

(declare-fun bs!1007866 () Bool)

(assert (= bs!1007866 d!1443988))

(assert (=> bs!1007866 m!5413515))

(assert (=> bs!1007866 m!5413515))

(declare-fun m!5413549 () Bool)

(assert (=> bs!1007866 m!5413549))

(declare-fun m!5413551 () Bool)

(assert (=> bs!1007866 m!5413551))

(declare-fun m!5413553 () Bool)

(assert (=> bs!1007866 m!5413553))

(assert (=> b!4590206 d!1443988))

(declare-fun d!1443990 () Bool)

(declare-datatypes ((Option!11350 0))(
  ( (None!11349) (Some!11349 (v!45257 List!51113)) )
))
(declare-fun get!16842 (Option!11350) List!51113)

(declare-fun getValueByKey!1270 (List!51114 (_ BitVec 64)) Option!11350)

(assert (=> d!1443990 (= (apply!12020 lm!1477 hash!344) (get!16842 (getValueByKey!1270 (toList!4581 lm!1477) hash!344)))))

(declare-fun bs!1007867 () Bool)

(assert (= bs!1007867 d!1443990))

(declare-fun m!5413555 () Bool)

(assert (=> bs!1007867 m!5413555))

(assert (=> bs!1007867 m!5413555))

(declare-fun m!5413557 () Bool)

(assert (=> bs!1007867 m!5413557))

(assert (=> b!4590206 d!1443990))

(declare-fun d!1443992 () Bool)

(assert (=> d!1443992 (contains!13898 (toList!4581 lm!1477) (tuple2!51585 hash!344 lt!1752772))))

(declare-fun lt!1752801 () Unit!107385)

(declare-fun choose!30635 (List!51114 (_ BitVec 64) List!51113) Unit!107385)

(assert (=> d!1443992 (= lt!1752801 (choose!30635 (toList!4581 lm!1477) hash!344 lt!1752772))))

(declare-fun e!2862857 () Bool)

(assert (=> d!1443992 e!2862857))

(declare-fun res!1918861 () Bool)

(assert (=> d!1443992 (=> (not res!1918861) (not e!2862857))))

(declare-fun isStrictlySorted!520 (List!51114) Bool)

(assert (=> d!1443992 (= res!1918861 (isStrictlySorted!520 (toList!4581 lm!1477)))))

(assert (=> d!1443992 (= (lemmaGetValueByKeyImpliesContainsTuple!793 (toList!4581 lm!1477) hash!344 lt!1752772) lt!1752801)))

(declare-fun b!4590241 () Bool)

(assert (=> b!4590241 (= e!2862857 (= (getValueByKey!1270 (toList!4581 lm!1477) hash!344) (Some!11349 lt!1752772)))))

(assert (= (and d!1443992 res!1918861) b!4590241))

(declare-fun m!5413559 () Bool)

(assert (=> d!1443992 m!5413559))

(declare-fun m!5413561 () Bool)

(assert (=> d!1443992 m!5413561))

(declare-fun m!5413563 () Bool)

(assert (=> d!1443992 m!5413563))

(assert (=> b!4590241 m!5413555))

(assert (=> b!4590206 d!1443992))

(declare-fun b!4590253 () Bool)

(declare-fun e!2862862 () List!51113)

(assert (=> b!4590253 (= e!2862862 Nil!50989)))

(declare-fun b!4590251 () Bool)

(declare-fun e!2862863 () List!51113)

(assert (=> b!4590251 (= e!2862863 e!2862862)))

(declare-fun c!786121 () Bool)

(assert (=> b!4590251 (= c!786121 (is-Cons!50989 lt!1752772))))

(declare-fun d!1443994 () Bool)

(declare-fun lt!1752804 () List!51113)

(declare-fun containsKey!2082 (List!51113 K!12358) Bool)

(assert (=> d!1443994 (not (containsKey!2082 lt!1752804 key!3287))))

(assert (=> d!1443994 (= lt!1752804 e!2862863)))

(declare-fun c!786122 () Bool)

(assert (=> d!1443994 (= c!786122 (and (is-Cons!50989 lt!1752772) (= (_1!29085 (h!56933 lt!1752772)) key!3287)))))

(assert (=> d!1443994 (noDuplicateKeys!1283 lt!1752772)))

(assert (=> d!1443994 (= (removePairForKey!908 lt!1752772 key!3287) lt!1752804)))

(declare-fun b!4590252 () Bool)

(assert (=> b!4590252 (= e!2862862 (Cons!50989 (h!56933 lt!1752772) (removePairForKey!908 (t!358107 lt!1752772) key!3287)))))

(declare-fun b!4590250 () Bool)

(assert (=> b!4590250 (= e!2862863 (t!358107 lt!1752772))))

(assert (= (and d!1443994 c!786122) b!4590250))

(assert (= (and d!1443994 (not c!786122)) b!4590251))

(assert (= (and b!4590251 c!786121) b!4590252))

(assert (= (and b!4590251 (not c!786121)) b!4590253))

(declare-fun m!5413565 () Bool)

(assert (=> d!1443994 m!5413565))

(declare-fun m!5413567 () Bool)

(assert (=> d!1443994 m!5413567))

(declare-fun m!5413569 () Bool)

(assert (=> b!4590252 m!5413569))

(assert (=> b!4590206 d!1443994))

(declare-fun d!1443998 () Bool)

(declare-fun dynLambda!21358 (Int tuple2!51584) Bool)

(assert (=> d!1443998 (dynLambda!21358 lambda!184627 lt!1752775)))

(declare-fun lt!1752807 () Unit!107385)

(declare-fun choose!30636 (List!51114 Int tuple2!51584) Unit!107385)

(assert (=> d!1443998 (= lt!1752807 (choose!30636 (toList!4581 lm!1477) lambda!184627 lt!1752775))))

(declare-fun e!2862866 () Bool)

(assert (=> d!1443998 e!2862866))

(declare-fun res!1918864 () Bool)

(assert (=> d!1443998 (=> (not res!1918864) (not e!2862866))))

(assert (=> d!1443998 (= res!1918864 (forall!10530 (toList!4581 lm!1477) lambda!184627))))

(assert (=> d!1443998 (= (forallContained!2788 (toList!4581 lm!1477) lambda!184627 lt!1752775) lt!1752807)))

(declare-fun b!4590259 () Bool)

(assert (=> b!4590259 (= e!2862866 (contains!13898 (toList!4581 lm!1477) lt!1752775))))

(assert (= (and d!1443998 res!1918864) b!4590259))

(declare-fun b_lambda!168417 () Bool)

(assert (=> (not b_lambda!168417) (not d!1443998)))

(declare-fun m!5413571 () Bool)

(assert (=> d!1443998 m!5413571))

(declare-fun m!5413573 () Bool)

(assert (=> d!1443998 m!5413573))

(assert (=> d!1443998 m!5413505))

(assert (=> b!4590259 m!5413497))

(assert (=> b!4590206 d!1443998))

(declare-fun d!1444000 () Bool)

(declare-fun lt!1752810 () Bool)

(declare-fun content!8604 (List!51114) (Set tuple2!51584))

(assert (=> d!1444000 (= lt!1752810 (set.member lt!1752775 (content!8604 (toList!4581 lm!1477))))))

(declare-fun e!2862871 () Bool)

(assert (=> d!1444000 (= lt!1752810 e!2862871)))

(declare-fun res!1918870 () Bool)

(assert (=> d!1444000 (=> (not res!1918870) (not e!2862871))))

(assert (=> d!1444000 (= res!1918870 (is-Cons!50990 (toList!4581 lm!1477)))))

(assert (=> d!1444000 (= (contains!13898 (toList!4581 lm!1477) lt!1752775) lt!1752810)))

(declare-fun b!4590265 () Bool)

(declare-fun e!2862872 () Bool)

(assert (=> b!4590265 (= e!2862871 e!2862872)))

(declare-fun res!1918869 () Bool)

(assert (=> b!4590265 (=> res!1918869 e!2862872)))

(assert (=> b!4590265 (= res!1918869 (= (h!56934 (toList!4581 lm!1477)) lt!1752775))))

(declare-fun b!4590266 () Bool)

(assert (=> b!4590266 (= e!2862872 (contains!13898 (t!358108 (toList!4581 lm!1477)) lt!1752775))))

(assert (= (and d!1444000 res!1918870) b!4590265))

(assert (= (and b!4590265 (not res!1918869)) b!4590266))

(declare-fun m!5413577 () Bool)

(assert (=> d!1444000 m!5413577))

(declare-fun m!5413579 () Bool)

(assert (=> d!1444000 m!5413579))

(declare-fun m!5413581 () Bool)

(assert (=> b!4590266 m!5413581))

(assert (=> b!4590206 d!1444000))

(declare-fun d!1444004 () Bool)

(declare-fun e!2862877 () Bool)

(assert (=> d!1444004 e!2862877))

(declare-fun res!1918873 () Bool)

(assert (=> d!1444004 (=> res!1918873 e!2862877)))

(declare-fun lt!1752821 () Bool)

(assert (=> d!1444004 (= res!1918873 (not lt!1752821))))

(declare-fun lt!1752822 () Bool)

(assert (=> d!1444004 (= lt!1752821 lt!1752822)))

(declare-fun lt!1752820 () Unit!107385)

(declare-fun e!2862878 () Unit!107385)

(assert (=> d!1444004 (= lt!1752820 e!2862878)))

(declare-fun c!786125 () Bool)

(assert (=> d!1444004 (= c!786125 lt!1752822)))

(declare-fun containsKey!2083 (List!51114 (_ BitVec 64)) Bool)

(assert (=> d!1444004 (= lt!1752822 (containsKey!2083 (toList!4581 lm!1477) lt!1752776))))

(assert (=> d!1444004 (= (contains!13899 lm!1477 lt!1752776) lt!1752821)))

(declare-fun b!4590275 () Bool)

(declare-fun lt!1752819 () Unit!107385)

(assert (=> b!4590275 (= e!2862878 lt!1752819)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1174 (List!51114 (_ BitVec 64)) Unit!107385)

(assert (=> b!4590275 (= lt!1752819 (lemmaContainsKeyImpliesGetValueByKeyDefined!1174 (toList!4581 lm!1477) lt!1752776))))

(declare-fun isDefined!8618 (Option!11350) Bool)

(assert (=> b!4590275 (isDefined!8618 (getValueByKey!1270 (toList!4581 lm!1477) lt!1752776))))

(declare-fun b!4590276 () Bool)

(declare-fun Unit!107389 () Unit!107385)

(assert (=> b!4590276 (= e!2862878 Unit!107389)))

(declare-fun b!4590277 () Bool)

(assert (=> b!4590277 (= e!2862877 (isDefined!8618 (getValueByKey!1270 (toList!4581 lm!1477) lt!1752776)))))

(assert (= (and d!1444004 c!786125) b!4590275))

(assert (= (and d!1444004 (not c!786125)) b!4590276))

(assert (= (and d!1444004 (not res!1918873)) b!4590277))

(declare-fun m!5413585 () Bool)

(assert (=> d!1444004 m!5413585))

(declare-fun m!5413587 () Bool)

(assert (=> b!4590275 m!5413587))

(declare-fun m!5413589 () Bool)

(assert (=> b!4590275 m!5413589))

(assert (=> b!4590275 m!5413589))

(declare-fun m!5413591 () Bool)

(assert (=> b!4590275 m!5413591))

(assert (=> b!4590277 m!5413589))

(assert (=> b!4590277 m!5413589))

(assert (=> b!4590277 m!5413591))

(assert (=> b!4590206 d!1444004))

(declare-fun d!1444008 () Bool)

(declare-fun res!1918878 () Bool)

(declare-fun e!2862883 () Bool)

(assert (=> d!1444008 (=> res!1918878 e!2862883)))

(assert (=> d!1444008 (= res!1918878 (not (is-Cons!50989 newBucket!178)))))

(assert (=> d!1444008 (= (noDuplicateKeys!1283 newBucket!178) e!2862883)))

(declare-fun b!4590282 () Bool)

(declare-fun e!2862884 () Bool)

(assert (=> b!4590282 (= e!2862883 e!2862884)))

(declare-fun res!1918879 () Bool)

(assert (=> b!4590282 (=> (not res!1918879) (not e!2862884))))

(assert (=> b!4590282 (= res!1918879 (not (containsKey!2082 (t!358107 newBucket!178) (_1!29085 (h!56933 newBucket!178)))))))

(declare-fun b!4590283 () Bool)

(assert (=> b!4590283 (= e!2862884 (noDuplicateKeys!1283 (t!358107 newBucket!178)))))

(assert (= (and d!1444008 (not res!1918878)) b!4590282))

(assert (= (and b!4590282 res!1918879) b!4590283))

(declare-fun m!5413593 () Bool)

(assert (=> b!4590282 m!5413593))

(declare-fun m!5413595 () Bool)

(assert (=> b!4590283 m!5413595))

(assert (=> b!4590201 d!1444008))

(declare-fun d!1444010 () Bool)

(assert (=> d!1444010 true))

(assert (=> d!1444010 true))

(declare-fun lambda!184647 () Int)

(declare-fun forall!10532 (List!51113 Int) Bool)

(assert (=> d!1444010 (= (allKeysSameHash!1139 newBucket!178 hash!344 hashF!1107) (forall!10532 newBucket!178 lambda!184647))))

(declare-fun bs!1007871 () Bool)

(assert (= bs!1007871 d!1444010))

(declare-fun m!5413597 () Bool)

(assert (=> bs!1007871 m!5413597))

(assert (=> b!4590207 d!1444010))

(declare-fun b!4590306 () Bool)

(declare-datatypes ((List!51117 0))(
  ( (Nil!50993) (Cons!50993 (h!56939 K!12358) (t!358111 List!51117)) )
))
(declare-fun e!2862901 () List!51117)

(declare-fun getKeysList!553 (List!51113) List!51117)

(assert (=> b!4590306 (= e!2862901 (getKeysList!553 (toList!4582 (extractMap!1343 (toList!4581 lm!1477)))))))

(declare-fun b!4590307 () Bool)

(declare-fun e!2862902 () Bool)

(declare-fun e!2862900 () Bool)

(assert (=> b!4590307 (= e!2862902 e!2862900)))

(declare-fun res!1918888 () Bool)

(assert (=> b!4590307 (=> (not res!1918888) (not e!2862900))))

(declare-datatypes ((Option!11351 0))(
  ( (None!11350) (Some!11350 (v!45258 V!12604)) )
))
(declare-fun isDefined!8619 (Option!11351) Bool)

(declare-fun getValueByKey!1271 (List!51113 K!12358) Option!11351)

(assert (=> b!4590307 (= res!1918888 (isDefined!8619 (getValueByKey!1271 (toList!4582 (extractMap!1343 (toList!4581 lm!1477))) key!3287)))))

(declare-fun b!4590309 () Bool)

(declare-fun keys!17828 (ListMap!3843) List!51117)

(assert (=> b!4590309 (= e!2862901 (keys!17828 (extractMap!1343 (toList!4581 lm!1477))))))

(declare-fun b!4590310 () Bool)

(declare-fun e!2862897 () Unit!107385)

(declare-fun e!2862899 () Unit!107385)

(assert (=> b!4590310 (= e!2862897 e!2862899)))

(declare-fun c!786134 () Bool)

(declare-fun call!320528 () Bool)

(assert (=> b!4590310 (= c!786134 call!320528)))

(declare-fun b!4590311 () Bool)

(declare-fun lt!1752841 () Unit!107385)

(assert (=> b!4590311 (= e!2862897 lt!1752841)))

(declare-fun lt!1752839 () Unit!107385)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1175 (List!51113 K!12358) Unit!107385)

(assert (=> b!4590311 (= lt!1752839 (lemmaContainsKeyImpliesGetValueByKeyDefined!1175 (toList!4582 (extractMap!1343 (toList!4581 lm!1477))) key!3287))))

(assert (=> b!4590311 (isDefined!8619 (getValueByKey!1271 (toList!4582 (extractMap!1343 (toList!4581 lm!1477))) key!3287))))

(declare-fun lt!1752843 () Unit!107385)

(assert (=> b!4590311 (= lt!1752843 lt!1752839)))

(declare-fun lemmaInListThenGetKeysListContains!549 (List!51113 K!12358) Unit!107385)

(assert (=> b!4590311 (= lt!1752841 (lemmaInListThenGetKeysListContains!549 (toList!4582 (extractMap!1343 (toList!4581 lm!1477))) key!3287))))

(assert (=> b!4590311 call!320528))

(declare-fun d!1444012 () Bool)

(assert (=> d!1444012 e!2862902))

(declare-fun res!1918886 () Bool)

(assert (=> d!1444012 (=> res!1918886 e!2862902)))

(declare-fun e!2862898 () Bool)

(assert (=> d!1444012 (= res!1918886 e!2862898)))

(declare-fun res!1918887 () Bool)

(assert (=> d!1444012 (=> (not res!1918887) (not e!2862898))))

(declare-fun lt!1752844 () Bool)

(assert (=> d!1444012 (= res!1918887 (not lt!1752844))))

(declare-fun lt!1752846 () Bool)

(assert (=> d!1444012 (= lt!1752844 lt!1752846)))

(declare-fun lt!1752842 () Unit!107385)

(assert (=> d!1444012 (= lt!1752842 e!2862897)))

(declare-fun c!786132 () Bool)

(assert (=> d!1444012 (= c!786132 lt!1752846)))

(declare-fun containsKey!2084 (List!51113 K!12358) Bool)

(assert (=> d!1444012 (= lt!1752846 (containsKey!2084 (toList!4582 (extractMap!1343 (toList!4581 lm!1477))) key!3287))))

(assert (=> d!1444012 (= (contains!13897 (extractMap!1343 (toList!4581 lm!1477)) key!3287) lt!1752844)))

(declare-fun b!4590308 () Bool)

(declare-fun Unit!107390 () Unit!107385)

(assert (=> b!4590308 (= e!2862899 Unit!107390)))

(declare-fun b!4590312 () Bool)

(declare-fun contains!13903 (List!51117 K!12358) Bool)

(assert (=> b!4590312 (= e!2862900 (contains!13903 (keys!17828 (extractMap!1343 (toList!4581 lm!1477))) key!3287))))

(declare-fun b!4590313 () Bool)

(assert (=> b!4590313 false))

(declare-fun lt!1752840 () Unit!107385)

(declare-fun lt!1752845 () Unit!107385)

(assert (=> b!4590313 (= lt!1752840 lt!1752845)))

(assert (=> b!4590313 (containsKey!2084 (toList!4582 (extractMap!1343 (toList!4581 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!552 (List!51113 K!12358) Unit!107385)

(assert (=> b!4590313 (= lt!1752845 (lemmaInGetKeysListThenContainsKey!552 (toList!4582 (extractMap!1343 (toList!4581 lm!1477))) key!3287))))

(declare-fun Unit!107391 () Unit!107385)

(assert (=> b!4590313 (= e!2862899 Unit!107391)))

(declare-fun bm!320523 () Bool)

(assert (=> bm!320523 (= call!320528 (contains!13903 e!2862901 key!3287))))

(declare-fun c!786133 () Bool)

(assert (=> bm!320523 (= c!786133 c!786132)))

(declare-fun b!4590314 () Bool)

(assert (=> b!4590314 (= e!2862898 (not (contains!13903 (keys!17828 (extractMap!1343 (toList!4581 lm!1477))) key!3287)))))

(assert (= (and d!1444012 c!786132) b!4590311))

(assert (= (and d!1444012 (not c!786132)) b!4590310))

(assert (= (and b!4590310 c!786134) b!4590313))

(assert (= (and b!4590310 (not c!786134)) b!4590308))

(assert (= (or b!4590311 b!4590310) bm!320523))

(assert (= (and bm!320523 c!786133) b!4590306))

(assert (= (and bm!320523 (not c!786133)) b!4590309))

(assert (= (and d!1444012 res!1918887) b!4590314))

(assert (= (and d!1444012 (not res!1918886)) b!4590307))

(assert (= (and b!4590307 res!1918888) b!4590312))

(declare-fun m!5413599 () Bool)

(assert (=> d!1444012 m!5413599))

(assert (=> b!4590313 m!5413599))

(declare-fun m!5413601 () Bool)

(assert (=> b!4590313 m!5413601))

(assert (=> b!4590309 m!5413509))

(declare-fun m!5413603 () Bool)

(assert (=> b!4590309 m!5413603))

(assert (=> b!4590312 m!5413509))

(assert (=> b!4590312 m!5413603))

(assert (=> b!4590312 m!5413603))

(declare-fun m!5413605 () Bool)

(assert (=> b!4590312 m!5413605))

(assert (=> b!4590314 m!5413509))

(assert (=> b!4590314 m!5413603))

(assert (=> b!4590314 m!5413603))

(assert (=> b!4590314 m!5413605))

(declare-fun m!5413607 () Bool)

(assert (=> b!4590311 m!5413607))

(declare-fun m!5413609 () Bool)

(assert (=> b!4590311 m!5413609))

(assert (=> b!4590311 m!5413609))

(declare-fun m!5413611 () Bool)

(assert (=> b!4590311 m!5413611))

(declare-fun m!5413613 () Bool)

(assert (=> b!4590311 m!5413613))

(assert (=> b!4590307 m!5413609))

(assert (=> b!4590307 m!5413609))

(assert (=> b!4590307 m!5413611))

(declare-fun m!5413615 () Bool)

(assert (=> bm!320523 m!5413615))

(declare-fun m!5413617 () Bool)

(assert (=> b!4590306 m!5413617))

(assert (=> b!4590202 d!1444012))

(declare-fun bs!1007872 () Bool)

(declare-fun d!1444014 () Bool)

(assert (= bs!1007872 (and d!1444014 start!457140)))

(declare-fun lambda!184650 () Int)

(assert (=> bs!1007872 (= lambda!184650 lambda!184627)))

(declare-fun bs!1007873 () Bool)

(assert (= bs!1007873 (and d!1444014 d!1443986)))

(assert (=> bs!1007873 (not (= lambda!184650 lambda!184635))))

(declare-fun bs!1007874 () Bool)

(assert (= bs!1007874 (and d!1444014 d!1443988)))

(assert (=> bs!1007874 (= lambda!184650 lambda!184638)))

(declare-fun lt!1752865 () ListMap!3843)

(declare-fun invariantList!1105 (List!51113) Bool)

(assert (=> d!1444014 (invariantList!1105 (toList!4582 lt!1752865))))

(declare-fun e!2862911 () ListMap!3843)

(assert (=> d!1444014 (= lt!1752865 e!2862911)))

(declare-fun c!786143 () Bool)

(assert (=> d!1444014 (= c!786143 (is-Cons!50990 (toList!4581 lm!1477)))))

(assert (=> d!1444014 (forall!10530 (toList!4581 lm!1477) lambda!184650)))

(assert (=> d!1444014 (= (extractMap!1343 (toList!4581 lm!1477)) lt!1752865)))

(declare-fun b!4590331 () Bool)

(declare-fun addToMapMapFromBucket!795 (List!51113 ListMap!3843) ListMap!3843)

(assert (=> b!4590331 (= e!2862911 (addToMapMapFromBucket!795 (_2!29086 (h!56934 (toList!4581 lm!1477))) (extractMap!1343 (t!358108 (toList!4581 lm!1477)))))))

(declare-fun b!4590332 () Bool)

(assert (=> b!4590332 (= e!2862911 (ListMap!3844 Nil!50989))))

(assert (= (and d!1444014 c!786143) b!4590331))

(assert (= (and d!1444014 (not c!786143)) b!4590332))

(declare-fun m!5413619 () Bool)

(assert (=> d!1444014 m!5413619))

(declare-fun m!5413621 () Bool)

(assert (=> d!1444014 m!5413621))

(declare-fun m!5413623 () Bool)

(assert (=> b!4590331 m!5413623))

(assert (=> b!4590331 m!5413623))

(declare-fun m!5413625 () Bool)

(assert (=> b!4590331 m!5413625))

(assert (=> b!4590202 d!1444014))

(declare-fun d!1444016 () Bool)

(declare-fun res!1918899 () Bool)

(declare-fun e!2862922 () Bool)

(assert (=> d!1444016 (=> res!1918899 e!2862922)))

(assert (=> d!1444016 (= res!1918899 (is-Nil!50990 (toList!4581 lm!1477)))))

(assert (=> d!1444016 (= (forall!10530 (toList!4581 lm!1477) lambda!184627) e!2862922)))

(declare-fun b!4590343 () Bool)

(declare-fun e!2862923 () Bool)

(assert (=> b!4590343 (= e!2862922 e!2862923)))

(declare-fun res!1918900 () Bool)

(assert (=> b!4590343 (=> (not res!1918900) (not e!2862923))))

(assert (=> b!4590343 (= res!1918900 (dynLambda!21358 lambda!184627 (h!56934 (toList!4581 lm!1477))))))

(declare-fun b!4590344 () Bool)

(assert (=> b!4590344 (= e!2862923 (forall!10530 (t!358108 (toList!4581 lm!1477)) lambda!184627))))

(assert (= (and d!1444016 (not res!1918899)) b!4590343))

(assert (= (and b!4590343 res!1918900) b!4590344))

(declare-fun b_lambda!168419 () Bool)

(assert (=> (not b_lambda!168419) (not b!4590343)))

(declare-fun m!5413627 () Bool)

(assert (=> b!4590343 m!5413627))

(declare-fun m!5413629 () Bool)

(assert (=> b!4590344 m!5413629))

(assert (=> start!457140 d!1444016))

(declare-fun d!1444018 () Bool)

(assert (=> d!1444018 (= (inv!66543 lm!1477) (isStrictlySorted!520 (toList!4581 lm!1477)))))

(declare-fun bs!1007875 () Bool)

(assert (= bs!1007875 d!1444018))

(assert (=> bs!1007875 m!5413563))

(assert (=> start!457140 d!1444018))

(declare-fun d!1444020 () Bool)

(declare-fun hash!3155 (Hashable!5682 K!12358) (_ BitVec 64))

(assert (=> d!1444020 (= (hash!3153 hashF!1107 key!3287) (hash!3155 hashF!1107 key!3287))))

(declare-fun bs!1007876 () Bool)

(assert (= bs!1007876 d!1444020))

(declare-fun m!5413631 () Bool)

(assert (=> bs!1007876 m!5413631))

(assert (=> b!4590208 d!1444020))

(declare-fun b!4590349 () Bool)

(declare-fun tp!1339970 () Bool)

(declare-fun e!2862926 () Bool)

(assert (=> b!4590349 (= e!2862926 (and tp_is_empty!28425 tp_is_empty!28427 tp!1339970))))

(assert (=> b!4590204 (= tp!1339960 e!2862926)))

(assert (= (and b!4590204 (is-Cons!50989 (t!358107 newBucket!178))) b!4590349))

(declare-fun b!4590354 () Bool)

(declare-fun e!2862929 () Bool)

(declare-fun tp!1339975 () Bool)

(declare-fun tp!1339976 () Bool)

(assert (=> b!4590354 (= e!2862929 (and tp!1339975 tp!1339976))))

(assert (=> b!4590203 (= tp!1339961 e!2862929)))

(assert (= (and b!4590203 (is-Cons!50990 (toList!4581 lm!1477))) b!4590354))

(declare-fun b_lambda!168421 () Bool)

(assert (= b_lambda!168417 (or start!457140 b_lambda!168421)))

(declare-fun bs!1007877 () Bool)

(declare-fun d!1444022 () Bool)

(assert (= bs!1007877 (and d!1444022 start!457140)))

(assert (=> bs!1007877 (= (dynLambda!21358 lambda!184627 lt!1752775) (noDuplicateKeys!1283 (_2!29086 lt!1752775)))))

(declare-fun m!5413633 () Bool)

(assert (=> bs!1007877 m!5413633))

(assert (=> d!1443998 d!1444022))

(declare-fun b_lambda!168423 () Bool)

(assert (= b_lambda!168419 (or start!457140 b_lambda!168423)))

(declare-fun bs!1007878 () Bool)

(declare-fun d!1444024 () Bool)

(assert (= bs!1007878 (and d!1444024 start!457140)))

(assert (=> bs!1007878 (= (dynLambda!21358 lambda!184627 (h!56934 (toList!4581 lm!1477))) (noDuplicateKeys!1283 (_2!29086 (h!56934 (toList!4581 lm!1477)))))))

(declare-fun m!5413635 () Bool)

(assert (=> bs!1007878 m!5413635))

(assert (=> b!4590343 d!1444024))

(push 1)

(assert (not d!1443998))

(assert (not d!1444004))

(assert (not b!4590344))

(assert (not d!1443988))

(assert (not bs!1007877))

(assert (not b!4590277))

(assert (not d!1444018))

(assert (not b!4590307))

(assert (not b!4590282))

(assert (not d!1444020))

(assert (not d!1443986))

(assert (not b!4590266))

(assert (not b!4590311))

(assert (not d!1443992))

(assert (not b!4590306))

(assert (not b!4590275))

(assert (not b!4590309))

(assert (not d!1444014))

(assert (not d!1444012))

(assert (not b!4590283))

(assert (not d!1444000))

(assert (not b!4590331))

(assert (not b!4590349))

(assert (not bs!1007878))

(assert (not b!4590259))

(assert tp_is_empty!28427)

(assert (not b!4590312))

(assert (not d!1443994))

(assert (not b!4590241))

(assert (not b_lambda!168423))

(assert (not d!1444010))

(assert (not b!4590252))

(assert (not b!4590314))

(assert (not bm!320523))

(assert (not d!1443990))

(assert (not b!4590354))

(assert tp_is_empty!28425)

(assert (not b!4590313))

(assert (not b_lambda!168421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

