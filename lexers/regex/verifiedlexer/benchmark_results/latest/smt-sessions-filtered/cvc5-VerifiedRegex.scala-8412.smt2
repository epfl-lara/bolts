; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436974 () Bool)

(assert start!436974)

(declare-fun res!1848230 () Bool)

(declare-fun e!2775871 () Bool)

(assert (=> start!436974 (=> (not res!1848230) (not e!2775871))))

(declare-datatypes ((K!11463 0))(
  ( (K!11464 (val!17441 Int)) )
))
(declare-datatypes ((V!11709 0))(
  ( (V!11710 (val!17442 Int)) )
))
(declare-datatypes ((tuple2!50202 0))(
  ( (tuple2!50203 (_1!28395 K!11463) (_2!28395 V!11709)) )
))
(declare-datatypes ((List!50201 0))(
  ( (Nil!50077) (Cons!50077 (h!55822 tuple2!50202) (t!357151 List!50201)) )
))
(declare-datatypes ((tuple2!50204 0))(
  ( (tuple2!50205 (_1!28396 (_ BitVec 64)) (_2!28396 List!50201)) )
))
(declare-datatypes ((List!50202 0))(
  ( (Nil!50078) (Cons!50078 (h!55823 tuple2!50204) (t!357152 List!50202)) )
))
(declare-datatypes ((ListLongMap!2549 0))(
  ( (ListLongMap!2550 (toList!3893 List!50202)) )
))
(declare-fun lm!1853 () ListLongMap!2549)

(declare-fun lambda!160848 () Int)

(declare-fun forall!9874 (List!50202 Int) Bool)

(assert (=> start!436974 (= res!1848230 (forall!9874 (toList!3893 lm!1853) lambda!160848))))

(assert (=> start!436974 e!2775871))

(declare-fun e!2775870 () Bool)

(declare-fun inv!65650 (ListLongMap!2549) Bool)

(assert (=> start!436974 (and (inv!65650 lm!1853) e!2775870)))

(assert (=> start!436974 true))

(declare-fun e!2775872 () Bool)

(assert (=> start!436974 e!2775872))

(declare-fun tp_is_empty!26993 () Bool)

(assert (=> start!436974 tp_is_empty!26993))

(declare-fun b!4457818 () Bool)

(declare-fun l!12858 () List!50201)

(declare-fun size!35899 (List!50201) Int)

(assert (=> b!4457818 (= e!2775871 (< (size!35899 l!12858) 0))))

(declare-fun b!4457819 () Bool)

(declare-fun tp!1335277 () Bool)

(assert (=> b!4457819 (= e!2775870 tp!1335277)))

(declare-fun b!4457820 () Bool)

(declare-fun res!1848231 () Bool)

(assert (=> b!4457820 (=> (not res!1848231) (not e!2775871))))

(declare-datatypes ((Hashable!5350 0))(
  ( (HashableExt!5349 (__x!31053 Int)) )
))
(declare-fun hashF!1313 () Hashable!5350)

(declare-fun allKeysSameHashInMap!1062 (ListLongMap!2549 Hashable!5350) Bool)

(assert (=> b!4457820 (= res!1848231 (allKeysSameHashInMap!1062 lm!1853 hashF!1313))))

(declare-fun b!4457821 () Bool)

(declare-fun res!1848229 () Bool)

(assert (=> b!4457821 (=> (not res!1848229) (not e!2775871))))

(declare-fun key!4412 () K!11463)

(declare-datatypes ((ListMap!3131 0))(
  ( (ListMap!3132 (toList!3894 List!50201)) )
))
(declare-fun contains!12597 (ListMap!3131 K!11463) Bool)

(declare-fun extractMap!1011 (List!50202) ListMap!3131)

(assert (=> b!4457821 (= res!1848229 (contains!12597 (extractMap!1011 (toList!3893 lm!1853)) key!4412))))

(declare-fun tp_is_empty!26995 () Bool)

(declare-fun b!4457822 () Bool)

(declare-fun tp!1335276 () Bool)

(assert (=> b!4457822 (= e!2775872 (and tp_is_empty!26993 tp_is_empty!26995 tp!1335276))))

(declare-fun b!4457823 () Bool)

(declare-fun res!1848228 () Bool)

(assert (=> b!4457823 (=> (not res!1848228) (not e!2775871))))

(declare-fun noDuplicateKeys!943 (List!50201) Bool)

(assert (=> b!4457823 (= res!1848228 (noDuplicateKeys!943 l!12858))))

(assert (= (and start!436974 res!1848230) b!4457820))

(assert (= (and b!4457820 res!1848231) b!4457823))

(assert (= (and b!4457823 res!1848228) b!4457821))

(assert (= (and b!4457821 res!1848229) b!4457818))

(assert (= start!436974 b!4457819))

(assert (= (and start!436974 (is-Cons!50077 l!12858)) b!4457822))

(declare-fun m!5160565 () Bool)

(assert (=> b!4457823 m!5160565))

(declare-fun m!5160567 () Bool)

(assert (=> b!4457820 m!5160567))

(declare-fun m!5160569 () Bool)

(assert (=> start!436974 m!5160569))

(declare-fun m!5160571 () Bool)

(assert (=> start!436974 m!5160571))

(declare-fun m!5160573 () Bool)

(assert (=> b!4457818 m!5160573))

(declare-fun m!5160575 () Bool)

(assert (=> b!4457821 m!5160575))

(assert (=> b!4457821 m!5160575))

(declare-fun m!5160577 () Bool)

(assert (=> b!4457821 m!5160577))

(push 1)

(assert tp_is_empty!26995)

(assert (not b!4457821))

(assert (not start!436974))

(assert (not b!4457822))

(assert (not b!4457818))

(assert (not b!4457819))

(assert tp_is_empty!26993)

(assert (not b!4457823))

(assert (not b!4457820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!310270 () Bool)

(declare-fun call!310275 () Bool)

(declare-datatypes ((List!50205 0))(
  ( (Nil!50081) (Cons!50081 (h!55826 K!11463) (t!357155 List!50205)) )
))
(declare-fun e!2775908 () List!50205)

(declare-fun contains!12599 (List!50205 K!11463) Bool)

(assert (=> bm!310270 (= call!310275 (contains!12599 e!2775908 key!4412))))

(declare-fun c!758764 () Bool)

(declare-fun c!758762 () Bool)

(assert (=> bm!310270 (= c!758764 c!758762)))

(declare-fun b!4457872 () Bool)

(declare-fun e!2775904 () Bool)

(declare-fun keys!17225 (ListMap!3131) List!50205)

(assert (=> b!4457872 (= e!2775904 (contains!12599 (keys!17225 (extractMap!1011 (toList!3893 lm!1853))) key!4412))))

(declare-fun b!4457873 () Bool)

(declare-datatypes ((Unit!86362 0))(
  ( (Unit!86363) )
))
(declare-fun e!2775903 () Unit!86362)

(declare-fun lt!1649381 () Unit!86362)

(assert (=> b!4457873 (= e!2775903 lt!1649381)))

(declare-fun lt!1649377 () Unit!86362)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!755 (List!50201 K!11463) Unit!86362)

(assert (=> b!4457873 (= lt!1649377 (lemmaContainsKeyImpliesGetValueByKeyDefined!755 (toList!3894 (extractMap!1011 (toList!3893 lm!1853))) key!4412))))

(declare-datatypes ((Option!10864 0))(
  ( (None!10863) (Some!10863 (v!44121 V!11709)) )
))
(declare-fun isDefined!8152 (Option!10864) Bool)

(declare-fun getValueByKey!850 (List!50201 K!11463) Option!10864)

(assert (=> b!4457873 (isDefined!8152 (getValueByKey!850 (toList!3894 (extractMap!1011 (toList!3893 lm!1853))) key!4412))))

(declare-fun lt!1649382 () Unit!86362)

(assert (=> b!4457873 (= lt!1649382 lt!1649377)))

(declare-fun lemmaInListThenGetKeysListContains!328 (List!50201 K!11463) Unit!86362)

(assert (=> b!4457873 (= lt!1649381 (lemmaInListThenGetKeysListContains!328 (toList!3894 (extractMap!1011 (toList!3893 lm!1853))) key!4412))))

(assert (=> b!4457873 call!310275))

(declare-fun b!4457874 () Bool)

(declare-fun e!2775906 () Bool)

(assert (=> b!4457874 (= e!2775906 (not (contains!12599 (keys!17225 (extractMap!1011 (toList!3893 lm!1853))) key!4412)))))

(declare-fun b!4457875 () Bool)

(declare-fun e!2775907 () Unit!86362)

(assert (=> b!4457875 (= e!2775903 e!2775907)))

(declare-fun c!758763 () Bool)

(assert (=> b!4457875 (= c!758763 call!310275)))

(declare-fun b!4457876 () Bool)

(declare-fun Unit!86364 () Unit!86362)

(assert (=> b!4457876 (= e!2775907 Unit!86364)))

(declare-fun b!4457877 () Bool)

(assert (=> b!4457877 false))

(declare-fun lt!1649379 () Unit!86362)

(declare-fun lt!1649378 () Unit!86362)

(assert (=> b!4457877 (= lt!1649379 lt!1649378)))

(declare-fun containsKey!1343 (List!50201 K!11463) Bool)

(assert (=> b!4457877 (containsKey!1343 (toList!3894 (extractMap!1011 (toList!3893 lm!1853))) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!330 (List!50201 K!11463) Unit!86362)

(assert (=> b!4457877 (= lt!1649378 (lemmaInGetKeysListThenContainsKey!330 (toList!3894 (extractMap!1011 (toList!3893 lm!1853))) key!4412))))

(declare-fun Unit!86365 () Unit!86362)

(assert (=> b!4457877 (= e!2775907 Unit!86365)))

(declare-fun b!4457878 () Bool)

(assert (=> b!4457878 (= e!2775908 (keys!17225 (extractMap!1011 (toList!3893 lm!1853))))))

(declare-fun d!1359665 () Bool)

(declare-fun e!2775905 () Bool)

(assert (=> d!1359665 e!2775905))

(declare-fun res!1848256 () Bool)

(assert (=> d!1359665 (=> res!1848256 e!2775905)))

(assert (=> d!1359665 (= res!1848256 e!2775906)))

(declare-fun res!1848258 () Bool)

(assert (=> d!1359665 (=> (not res!1848258) (not e!2775906))))

(declare-fun lt!1649376 () Bool)

(assert (=> d!1359665 (= res!1848258 (not lt!1649376))))

(declare-fun lt!1649380 () Bool)

(assert (=> d!1359665 (= lt!1649376 lt!1649380)))

(declare-fun lt!1649383 () Unit!86362)

(assert (=> d!1359665 (= lt!1649383 e!2775903)))

(assert (=> d!1359665 (= c!758762 lt!1649380)))

(assert (=> d!1359665 (= lt!1649380 (containsKey!1343 (toList!3894 (extractMap!1011 (toList!3893 lm!1853))) key!4412))))

(assert (=> d!1359665 (= (contains!12597 (extractMap!1011 (toList!3893 lm!1853)) key!4412) lt!1649376)))

(declare-fun b!4457879 () Bool)

(declare-fun getKeysList!332 (List!50201) List!50205)

(assert (=> b!4457879 (= e!2775908 (getKeysList!332 (toList!3894 (extractMap!1011 (toList!3893 lm!1853)))))))

(declare-fun b!4457880 () Bool)

(assert (=> b!4457880 (= e!2775905 e!2775904)))

(declare-fun res!1848257 () Bool)

(assert (=> b!4457880 (=> (not res!1848257) (not e!2775904))))

(assert (=> b!4457880 (= res!1848257 (isDefined!8152 (getValueByKey!850 (toList!3894 (extractMap!1011 (toList!3893 lm!1853))) key!4412)))))

(assert (= (and d!1359665 c!758762) b!4457873))

(assert (= (and d!1359665 (not c!758762)) b!4457875))

(assert (= (and b!4457875 c!758763) b!4457877))

(assert (= (and b!4457875 (not c!758763)) b!4457876))

(assert (= (or b!4457873 b!4457875) bm!310270))

(assert (= (and bm!310270 c!758764) b!4457879))

(assert (= (and bm!310270 (not c!758764)) b!4457878))

(assert (= (and d!1359665 res!1848258) b!4457874))

(assert (= (and d!1359665 (not res!1848256)) b!4457880))

(assert (= (and b!4457880 res!1848257) b!4457872))

(declare-fun m!5160599 () Bool)

(assert (=> d!1359665 m!5160599))

(assert (=> b!4457872 m!5160575))

(declare-fun m!5160601 () Bool)

(assert (=> b!4457872 m!5160601))

(assert (=> b!4457872 m!5160601))

(declare-fun m!5160603 () Bool)

(assert (=> b!4457872 m!5160603))

(assert (=> b!4457878 m!5160575))

(assert (=> b!4457878 m!5160601))

(assert (=> b!4457877 m!5160599))

(declare-fun m!5160605 () Bool)

(assert (=> b!4457877 m!5160605))

(declare-fun m!5160607 () Bool)

(assert (=> b!4457873 m!5160607))

(declare-fun m!5160609 () Bool)

(assert (=> b!4457873 m!5160609))

(assert (=> b!4457873 m!5160609))

(declare-fun m!5160611 () Bool)

(assert (=> b!4457873 m!5160611))

(declare-fun m!5160613 () Bool)

(assert (=> b!4457873 m!5160613))

(declare-fun m!5160615 () Bool)

(assert (=> b!4457879 m!5160615))

(assert (=> b!4457880 m!5160609))

(assert (=> b!4457880 m!5160609))

(assert (=> b!4457880 m!5160611))

(declare-fun m!5160617 () Bool)

(assert (=> bm!310270 m!5160617))

(assert (=> b!4457874 m!5160575))

(assert (=> b!4457874 m!5160601))

(assert (=> b!4457874 m!5160601))

(assert (=> b!4457874 m!5160603))

(assert (=> b!4457821 d!1359665))

(declare-fun bs!791136 () Bool)

(declare-fun d!1359673 () Bool)

(assert (= bs!791136 (and d!1359673 start!436974)))

(declare-fun lambda!160854 () Int)

(assert (=> bs!791136 (= lambda!160854 lambda!160848)))

(declare-fun lt!1649386 () ListMap!3131)

(declare-fun invariantList!886 (List!50201) Bool)

(assert (=> d!1359673 (invariantList!886 (toList!3894 lt!1649386))))

(declare-fun e!2775917 () ListMap!3131)

(assert (=> d!1359673 (= lt!1649386 e!2775917)))

(declare-fun c!758767 () Bool)

(assert (=> d!1359673 (= c!758767 (is-Cons!50078 (toList!3893 lm!1853)))))

(assert (=> d!1359673 (forall!9874 (toList!3893 lm!1853) lambda!160854)))

(assert (=> d!1359673 (= (extractMap!1011 (toList!3893 lm!1853)) lt!1649386)))

(declare-fun b!4457891 () Bool)

(declare-fun addToMapMapFromBucket!533 (List!50201 ListMap!3131) ListMap!3131)

(assert (=> b!4457891 (= e!2775917 (addToMapMapFromBucket!533 (_2!28396 (h!55823 (toList!3893 lm!1853))) (extractMap!1011 (t!357152 (toList!3893 lm!1853)))))))

(declare-fun b!4457892 () Bool)

(assert (=> b!4457892 (= e!2775917 (ListMap!3132 Nil!50077))))

(assert (= (and d!1359673 c!758767) b!4457891))

(assert (= (and d!1359673 (not c!758767)) b!4457892))

(declare-fun m!5160625 () Bool)

(assert (=> d!1359673 m!5160625))

(declare-fun m!5160627 () Bool)

(assert (=> d!1359673 m!5160627))

(declare-fun m!5160629 () Bool)

(assert (=> b!4457891 m!5160629))

(assert (=> b!4457891 m!5160629))

(declare-fun m!5160631 () Bool)

(assert (=> b!4457891 m!5160631))

(assert (=> b!4457821 d!1359673))

(declare-fun bs!791137 () Bool)

(declare-fun d!1359679 () Bool)

(assert (= bs!791137 (and d!1359679 start!436974)))

(declare-fun lambda!160857 () Int)

(assert (=> bs!791137 (not (= lambda!160857 lambda!160848))))

(declare-fun bs!791138 () Bool)

(assert (= bs!791138 (and d!1359679 d!1359673)))

(assert (=> bs!791138 (not (= lambda!160857 lambda!160854))))

(assert (=> d!1359679 true))

(assert (=> d!1359679 (= (allKeysSameHashInMap!1062 lm!1853 hashF!1313) (forall!9874 (toList!3893 lm!1853) lambda!160857))))

(declare-fun bs!791139 () Bool)

(assert (= bs!791139 d!1359679))

(declare-fun m!5160633 () Bool)

(assert (=> bs!791139 m!5160633))

(assert (=> b!4457820 d!1359679))

(declare-fun d!1359681 () Bool)

(declare-fun lt!1649389 () Int)

(assert (=> d!1359681 (>= lt!1649389 0)))

(declare-fun e!2775920 () Int)

(assert (=> d!1359681 (= lt!1649389 e!2775920)))

(declare-fun c!758770 () Bool)

(assert (=> d!1359681 (= c!758770 (is-Nil!50077 l!12858))))

(assert (=> d!1359681 (= (size!35899 l!12858) lt!1649389)))

(declare-fun b!4457899 () Bool)

(assert (=> b!4457899 (= e!2775920 0)))

(declare-fun b!4457900 () Bool)

(assert (=> b!4457900 (= e!2775920 (+ 1 (size!35899 (t!357151 l!12858))))))

(assert (= (and d!1359681 c!758770) b!4457899))

(assert (= (and d!1359681 (not c!758770)) b!4457900))

(declare-fun m!5160635 () Bool)

(assert (=> b!4457900 m!5160635))

(assert (=> b!4457818 d!1359681))

(declare-fun d!1359683 () Bool)

(declare-fun res!1848269 () Bool)

(declare-fun e!2775925 () Bool)

(assert (=> d!1359683 (=> res!1848269 e!2775925)))

(assert (=> d!1359683 (= res!1848269 (not (is-Cons!50077 l!12858)))))

(assert (=> d!1359683 (= (noDuplicateKeys!943 l!12858) e!2775925)))

(declare-fun b!4457905 () Bool)

(declare-fun e!2775926 () Bool)

(assert (=> b!4457905 (= e!2775925 e!2775926)))

(declare-fun res!1848270 () Bool)

(assert (=> b!4457905 (=> (not res!1848270) (not e!2775926))))

(declare-fun containsKey!1344 (List!50201 K!11463) Bool)

(assert (=> b!4457905 (= res!1848270 (not (containsKey!1344 (t!357151 l!12858) (_1!28395 (h!55822 l!12858)))))))

(declare-fun b!4457906 () Bool)

(assert (=> b!4457906 (= e!2775926 (noDuplicateKeys!943 (t!357151 l!12858)))))

(assert (= (and d!1359683 (not res!1848269)) b!4457905))

(assert (= (and b!4457905 res!1848270) b!4457906))

(declare-fun m!5160637 () Bool)

(assert (=> b!4457905 m!5160637))

(declare-fun m!5160639 () Bool)

(assert (=> b!4457906 m!5160639))

(assert (=> b!4457823 d!1359683))

(declare-fun d!1359685 () Bool)

(declare-fun res!1848275 () Bool)

(declare-fun e!2775931 () Bool)

(assert (=> d!1359685 (=> res!1848275 e!2775931)))

(assert (=> d!1359685 (= res!1848275 (is-Nil!50078 (toList!3893 lm!1853)))))

(assert (=> d!1359685 (= (forall!9874 (toList!3893 lm!1853) lambda!160848) e!2775931)))

(declare-fun b!4457911 () Bool)

(declare-fun e!2775932 () Bool)

(assert (=> b!4457911 (= e!2775931 e!2775932)))

(declare-fun res!1848276 () Bool)

(assert (=> b!4457911 (=> (not res!1848276) (not e!2775932))))

(declare-fun dynLambda!20978 (Int tuple2!50204) Bool)

(assert (=> b!4457911 (= res!1848276 (dynLambda!20978 lambda!160848 (h!55823 (toList!3893 lm!1853))))))

(declare-fun b!4457912 () Bool)

(assert (=> b!4457912 (= e!2775932 (forall!9874 (t!357152 (toList!3893 lm!1853)) lambda!160848))))

(assert (= (and d!1359685 (not res!1848275)) b!4457911))

(assert (= (and b!4457911 res!1848276) b!4457912))

(declare-fun b_lambda!147703 () Bool)

(assert (=> (not b_lambda!147703) (not b!4457911)))

(declare-fun m!5160641 () Bool)

(assert (=> b!4457911 m!5160641))

(declare-fun m!5160643 () Bool)

(assert (=> b!4457912 m!5160643))

(assert (=> start!436974 d!1359685))

(declare-fun d!1359687 () Bool)

(declare-fun isStrictlySorted!315 (List!50202) Bool)

(assert (=> d!1359687 (= (inv!65650 lm!1853) (isStrictlySorted!315 (toList!3893 lm!1853)))))

(declare-fun bs!791140 () Bool)

(assert (= bs!791140 d!1359687))

(declare-fun m!5160645 () Bool)

(assert (=> bs!791140 m!5160645))

(assert (=> start!436974 d!1359687))

(declare-fun e!2775935 () Bool)

(declare-fun b!4457917 () Bool)

(declare-fun tp!1335286 () Bool)

(assert (=> b!4457917 (= e!2775935 (and tp_is_empty!26993 tp_is_empty!26995 tp!1335286))))

(assert (=> b!4457822 (= tp!1335276 e!2775935)))

(assert (= (and b!4457822 (is-Cons!50077 (t!357151 l!12858))) b!4457917))

(declare-fun b!4457922 () Bool)

(declare-fun e!2775938 () Bool)

(declare-fun tp!1335291 () Bool)

(declare-fun tp!1335292 () Bool)

(assert (=> b!4457922 (= e!2775938 (and tp!1335291 tp!1335292))))

(assert (=> b!4457819 (= tp!1335277 e!2775938)))

(assert (= (and b!4457819 (is-Cons!50078 (toList!3893 lm!1853))) b!4457922))

(declare-fun b_lambda!147705 () Bool)

(assert (= b_lambda!147703 (or start!436974 b_lambda!147705)))

(declare-fun bs!791141 () Bool)

(declare-fun d!1359689 () Bool)

(assert (= bs!791141 (and d!1359689 start!436974)))

(assert (=> bs!791141 (= (dynLambda!20978 lambda!160848 (h!55823 (toList!3893 lm!1853))) (noDuplicateKeys!943 (_2!28396 (h!55823 (toList!3893 lm!1853)))))))

(declare-fun m!5160647 () Bool)

(assert (=> bs!791141 m!5160647))

(assert (=> b!4457911 d!1359689))

(push 1)

(assert (not b!4457880))

(assert (not d!1359679))

(assert (not d!1359687))

(assert (not b!4457906))

(assert (not b!4457879))

(assert (not b!4457905))

(assert (not b!4457874))

(assert (not b!4457878))

(assert (not b!4457891))

(assert (not b!4457912))

(assert (not b!4457873))

(assert tp_is_empty!26993)

(assert (not b!4457872))

(assert (not b!4457877))

(assert tp_is_empty!26995)

(assert (not bm!310270))

(assert (not b!4457922))

(assert (not bs!791141))

(assert (not d!1359665))

(assert (not b_lambda!147705))

(assert (not b!4457917))

(assert (not b!4457900))

(assert (not d!1359673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

