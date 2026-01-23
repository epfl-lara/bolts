; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503484 () Bool)

(assert start!503484)

(declare-fun b!4839298 () Bool)

(assert (=> b!4839298 true))

(declare-fun b!4839295 () Bool)

(declare-fun res!2062799 () Bool)

(declare-fun e!3024345 () Bool)

(assert (=> b!4839295 (=> (not res!2062799) (not e!3024345))))

(declare-datatypes ((K!17072 0))(
  ( (K!17073 (val!21963 Int)) )
))
(declare-datatypes ((V!17318 0))(
  ( (V!17319 (val!21964 Int)) )
))
(declare-datatypes ((tuple2!58798 0))(
  ( (tuple2!58799 (_1!32693 K!17072) (_2!32693 V!17318)) )
))
(declare-datatypes ((List!55444 0))(
  ( (Nil!55320) (Cons!55320 (h!61755 tuple2!58798) (t!362940 List!55444)) )
))
(declare-datatypes ((tuple2!58800 0))(
  ( (tuple2!58801 (_1!32694 (_ BitVec 64)) (_2!32694 List!55444)) )
))
(declare-datatypes ((List!55445 0))(
  ( (Nil!55321) (Cons!55321 (h!61756 tuple2!58800) (t!362941 List!55445)) )
))
(declare-datatypes ((ListLongMap!6265 0))(
  ( (ListLongMap!6266 (toList!7725 List!55445)) )
))
(declare-fun lm!2671 () ListLongMap!6265)

(declare-datatypes ((Hashable!7401 0))(
  ( (HashableExt!7400 (__x!33676 Int)) )
))
(declare-fun hashF!1662 () Hashable!7401)

(declare-fun allKeysSameHashInMap!2717 (ListLongMap!6265 Hashable!7401) Bool)

(assert (=> b!4839295 (= res!2062799 (allKeysSameHashInMap!2717 lm!2671 hashF!1662))))

(declare-fun b!4839296 () Bool)

(declare-fun e!3024349 () Bool)

(declare-fun e!3024350 () Bool)

(assert (=> b!4839296 (= e!3024349 (not e!3024350))))

(declare-fun res!2062800 () Bool)

(assert (=> b!4839296 (=> res!2062800 e!3024350)))

(declare-fun key!6540 () K!17072)

(declare-fun containsKeyBiggerList!685 (List!55445 K!17072) Bool)

(assert (=> b!4839296 (= res!2062800 (not (containsKeyBiggerList!685 (t!362941 (toList!7725 lm!2671)) key!6540)))))

(declare-fun tail!9479 (List!55445) List!55445)

(assert (=> b!4839296 (containsKeyBiggerList!685 (tail!9479 (toList!7725 lm!2671)) key!6540)))

(declare-datatypes ((Unit!144907 0))(
  ( (Unit!144908) )
))
(declare-fun lt!1983924 () Unit!144907)

(declare-fun lemmaInBiggerListButNotHeadThenTail!45 (ListLongMap!6265 K!17072 Hashable!7401) Unit!144907)

(assert (=> b!4839296 (= lt!1983924 (lemmaInBiggerListButNotHeadThenTail!45 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4839297 () Bool)

(declare-fun e!3024346 () Bool)

(assert (=> b!4839297 (= e!3024350 e!3024346)))

(declare-fun res!2062802 () Bool)

(assert (=> b!4839297 (=> res!2062802 e!3024346)))

(declare-datatypes ((ListMap!7079 0))(
  ( (ListMap!7080 (toList!7726 List!55444)) )
))
(declare-fun lt!1983920 () ListMap!7079)

(declare-fun contains!19079 (ListMap!7079 K!17072) Bool)

(assert (=> b!4839297 (= res!2062802 (not (contains!19079 lt!1983920 key!6540)))))

(declare-fun lt!1983919 () ListLongMap!6265)

(declare-fun extractMap!2759 (List!55445) ListMap!7079)

(assert (=> b!4839297 (contains!19079 (extractMap!2759 (toList!7725 lt!1983919)) key!6540)))

(declare-fun lt!1983918 () Unit!144907)

(declare-fun lemmaListContainsThenExtractedMapContains!745 (ListLongMap!6265 K!17072 Hashable!7401) Unit!144907)

(assert (=> b!4839297 (= lt!1983918 (lemmaListContainsThenExtractedMapContains!745 lt!1983919 key!6540 hashF!1662))))

(declare-fun tail!9480 (ListLongMap!6265) ListLongMap!6265)

(assert (=> b!4839297 (= lt!1983919 (tail!9480 lm!2671))))

(declare-fun lambda!240527 () Int)

(declare-fun forall!12818 (List!55444 Int) Bool)

(assert (=> b!4839298 (= e!3024346 (forall!12818 (toList!7726 lt!1983920) lambda!240527))))

(declare-fun lt!1983923 () V!17318)

(declare-fun contains!19080 (List!55444 tuple2!58798) Bool)

(assert (=> b!4839298 (contains!19080 (toList!7726 lt!1983920) (tuple2!58799 key!6540 lt!1983923))))

(declare-fun lt!1983922 () Unit!144907)

(declare-fun lemmaGetValueImpliesTupleContained!728 (ListMap!7079 K!17072 V!17318) Unit!144907)

(assert (=> b!4839298 (= lt!1983922 (lemmaGetValueImpliesTupleContained!728 lt!1983920 key!6540 lt!1983923))))

(declare-datatypes ((Option!13604 0))(
  ( (None!13603) (Some!13603 (v!49327 V!17318)) )
))
(declare-fun get!18936 (Option!13604) V!17318)

(declare-fun getValueByKey!2702 (List!55444 K!17072) Option!13604)

(assert (=> b!4839298 (= lt!1983923 (get!18936 (getValueByKey!2702 (toList!7726 lt!1983920) key!6540)))))

(declare-fun b!4839299 () Bool)

(assert (=> b!4839299 (= e!3024345 e!3024349)))

(declare-fun res!2062807 () Bool)

(assert (=> b!4839299 (=> (not res!2062807) (not e!3024349))))

(declare-fun lt!1983921 () ListMap!7079)

(declare-fun addToMapMapFromBucket!1899 (List!55444 ListMap!7079) ListMap!7079)

(assert (=> b!4839299 (= res!2062807 (= lt!1983921 (addToMapMapFromBucket!1899 (_2!32694 (h!61756 (toList!7725 lm!2671))) lt!1983920)))))

(assert (=> b!4839299 (= lt!1983921 (extractMap!2759 (toList!7725 lm!2671)))))

(assert (=> b!4839299 (= lt!1983920 (extractMap!2759 (t!362941 (toList!7725 lm!2671))))))

(declare-fun res!2062801 () Bool)

(assert (=> start!503484 (=> (not res!2062801) (not e!3024345))))

(declare-fun lambda!240526 () Int)

(declare-fun forall!12819 (List!55445 Int) Bool)

(assert (=> start!503484 (= res!2062801 (forall!12819 (toList!7725 lm!2671) lambda!240526))))

(assert (=> start!503484 e!3024345))

(declare-fun e!3024348 () Bool)

(declare-fun inv!70973 (ListLongMap!6265) Bool)

(assert (=> start!503484 (and (inv!70973 lm!2671) e!3024348)))

(assert (=> start!503484 true))

(declare-fun tp_is_empty!34905 () Bool)

(assert (=> start!503484 tp_is_empty!34905))

(declare-fun b!4839300 () Bool)

(declare-fun e!3024347 () Bool)

(declare-fun containsKey!4563 (List!55444 K!17072) Bool)

(assert (=> b!4839300 (= e!3024347 (not (containsKey!4563 (_2!32694 (h!61756 (toList!7725 lm!2671))) key!6540)))))

(declare-fun b!4839301 () Bool)

(declare-fun res!2062805 () Bool)

(assert (=> b!4839301 (=> (not res!2062805) (not e!3024345))))

(assert (=> b!4839301 (= res!2062805 (is-Cons!55321 (toList!7725 lm!2671)))))

(declare-fun b!4839302 () Bool)

(declare-fun res!2062804 () Bool)

(assert (=> b!4839302 (=> (not res!2062804) (not e!3024345))))

(assert (=> b!4839302 (= res!2062804 (containsKeyBiggerList!685 (toList!7725 lm!2671) key!6540))))

(declare-fun b!4839303 () Bool)

(declare-fun tp!1363723 () Bool)

(assert (=> b!4839303 (= e!3024348 tp!1363723)))

(declare-fun b!4839304 () Bool)

(declare-fun res!2062806 () Bool)

(assert (=> b!4839304 (=> (not res!2062806) (not e!3024345))))

(assert (=> b!4839304 (= res!2062806 e!3024347)))

(declare-fun res!2062803 () Bool)

(assert (=> b!4839304 (=> res!2062803 e!3024347)))

(assert (=> b!4839304 (= res!2062803 (not (is-Cons!55321 (toList!7725 lm!2671))))))

(assert (= (and start!503484 res!2062801) b!4839295))

(assert (= (and b!4839295 res!2062799) b!4839302))

(assert (= (and b!4839302 res!2062804) b!4839304))

(assert (= (and b!4839304 (not res!2062803)) b!4839300))

(assert (= (and b!4839304 res!2062806) b!4839301))

(assert (= (and b!4839301 res!2062805) b!4839299))

(assert (= (and b!4839299 res!2062807) b!4839296))

(assert (= (and b!4839296 (not res!2062800)) b!4839297))

(assert (= (and b!4839297 (not res!2062802)) b!4839298))

(assert (= start!503484 b!4839303))

(declare-fun m!5834978 () Bool)

(assert (=> b!4839296 m!5834978))

(declare-fun m!5834980 () Bool)

(assert (=> b!4839296 m!5834980))

(assert (=> b!4839296 m!5834980))

(declare-fun m!5834982 () Bool)

(assert (=> b!4839296 m!5834982))

(declare-fun m!5834984 () Bool)

(assert (=> b!4839296 m!5834984))

(declare-fun m!5834986 () Bool)

(assert (=> b!4839295 m!5834986))

(declare-fun m!5834988 () Bool)

(assert (=> b!4839298 m!5834988))

(declare-fun m!5834990 () Bool)

(assert (=> b!4839298 m!5834990))

(declare-fun m!5834992 () Bool)

(assert (=> b!4839298 m!5834992))

(declare-fun m!5834994 () Bool)

(assert (=> b!4839298 m!5834994))

(assert (=> b!4839298 m!5834990))

(declare-fun m!5834996 () Bool)

(assert (=> b!4839298 m!5834996))

(declare-fun m!5834998 () Bool)

(assert (=> b!4839297 m!5834998))

(declare-fun m!5835000 () Bool)

(assert (=> b!4839297 m!5835000))

(declare-fun m!5835002 () Bool)

(assert (=> b!4839297 m!5835002))

(declare-fun m!5835004 () Bool)

(assert (=> b!4839297 m!5835004))

(assert (=> b!4839297 m!5835000))

(declare-fun m!5835006 () Bool)

(assert (=> b!4839297 m!5835006))

(declare-fun m!5835008 () Bool)

(assert (=> b!4839300 m!5835008))

(declare-fun m!5835010 () Bool)

(assert (=> start!503484 m!5835010))

(declare-fun m!5835012 () Bool)

(assert (=> start!503484 m!5835012))

(declare-fun m!5835014 () Bool)

(assert (=> b!4839302 m!5835014))

(declare-fun m!5835016 () Bool)

(assert (=> b!4839299 m!5835016))

(declare-fun m!5835018 () Bool)

(assert (=> b!4839299 m!5835018))

(declare-fun m!5835020 () Bool)

(assert (=> b!4839299 m!5835020))

(push 1)

(assert (not b!4839299))

(assert (not b!4839302))

(assert (not b!4839303))

(assert (not start!503484))

(assert (not b!4839298))

(assert (not b!4839296))

(assert (not b!4839295))

(assert (not b!4839300))

(assert tp_is_empty!34905)

(assert (not b!4839297))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1168155 () Bool)

(declare-fun b!4839352 () Bool)

(assert (= bs!1168155 (and b!4839352 b!4839298)))

(declare-fun lambda!240562 () Int)

(assert (=> bs!1168155 (= (= lt!1983920 lt!1983921) (= lambda!240562 lambda!240527))))

(assert (=> b!4839352 true))

(declare-fun bs!1168156 () Bool)

(declare-fun b!4839351 () Bool)

(assert (= bs!1168156 (and b!4839351 b!4839298)))

(declare-fun lambda!240563 () Int)

(assert (=> bs!1168156 (= (= lt!1983920 lt!1983921) (= lambda!240563 lambda!240527))))

(declare-fun bs!1168157 () Bool)

(assert (= bs!1168157 (and b!4839351 b!4839352)))

(assert (=> bs!1168157 (= lambda!240563 lambda!240562)))

(assert (=> b!4839351 true))

(declare-fun lt!1983994 () ListMap!7079)

(declare-fun lambda!240564 () Int)

(assert (=> bs!1168156 (= (= lt!1983994 lt!1983921) (= lambda!240564 lambda!240527))))

(assert (=> bs!1168157 (= (= lt!1983994 lt!1983920) (= lambda!240564 lambda!240562))))

(assert (=> b!4839351 (= (= lt!1983994 lt!1983920) (= lambda!240564 lambda!240563))))

(assert (=> b!4839351 true))

(declare-fun bs!1168158 () Bool)

(declare-fun d!1551310 () Bool)

(assert (= bs!1168158 (and d!1551310 b!4839298)))

(declare-fun lambda!240565 () Int)

(declare-fun lt!1984005 () ListMap!7079)

(assert (=> bs!1168158 (= (= lt!1984005 lt!1983921) (= lambda!240565 lambda!240527))))

(declare-fun bs!1168159 () Bool)

(assert (= bs!1168159 (and d!1551310 b!4839352)))

(assert (=> bs!1168159 (= (= lt!1984005 lt!1983920) (= lambda!240565 lambda!240562))))

(declare-fun bs!1168160 () Bool)

(assert (= bs!1168160 (and d!1551310 b!4839351)))

(assert (=> bs!1168160 (= (= lt!1984005 lt!1983920) (= lambda!240565 lambda!240563))))

(assert (=> bs!1168160 (= (= lt!1984005 lt!1983994) (= lambda!240565 lambda!240564))))

(assert (=> d!1551310 true))

(declare-fun b!4839349 () Bool)

(declare-fun res!2062843 () Bool)

(declare-fun e!3024376 () Bool)

(assert (=> b!4839349 (=> (not res!2062843) (not e!3024376))))

(assert (=> b!4839349 (= res!2062843 (forall!12818 (toList!7726 lt!1983920) lambda!240565))))

(declare-fun b!4839350 () Bool)

(declare-fun invariantList!1870 (List!55444) Bool)

(assert (=> b!4839350 (= e!3024376 (invariantList!1870 (toList!7726 lt!1984005)))))

(declare-fun bm!337266 () Bool)

(declare-fun call!337271 () Unit!144907)

(declare-fun lemmaContainsAllItsOwnKeys!1044 (ListMap!7079) Unit!144907)

(assert (=> bm!337266 (= call!337271 (lemmaContainsAllItsOwnKeys!1044 lt!1983920))))

(declare-fun e!3024377 () ListMap!7079)

(assert (=> b!4839351 (= e!3024377 lt!1983994)))

(declare-fun lt!1984006 () ListMap!7079)

(declare-fun +!2604 (ListMap!7079 tuple2!58798) ListMap!7079)

(assert (=> b!4839351 (= lt!1984006 (+!2604 lt!1983920 (h!61755 (_2!32694 (h!61756 (toList!7725 lm!2671))))))))

(assert (=> b!4839351 (= lt!1983994 (addToMapMapFromBucket!1899 (t!362940 (_2!32694 (h!61756 (toList!7725 lm!2671)))) (+!2604 lt!1983920 (h!61755 (_2!32694 (h!61756 (toList!7725 lm!2671)))))))))

(declare-fun lt!1983989 () Unit!144907)

(assert (=> b!4839351 (= lt!1983989 call!337271)))

(declare-fun call!337272 () Bool)

(assert (=> b!4839351 call!337272))

(declare-fun lt!1983993 () Unit!144907)

(assert (=> b!4839351 (= lt!1983993 lt!1983989)))

(assert (=> b!4839351 (forall!12818 (toList!7726 lt!1984006) lambda!240564)))

(declare-fun lt!1983992 () Unit!144907)

(declare-fun Unit!144911 () Unit!144907)

(assert (=> b!4839351 (= lt!1983992 Unit!144911)))

(assert (=> b!4839351 (forall!12818 (t!362940 (_2!32694 (h!61756 (toList!7725 lm!2671)))) lambda!240564)))

(declare-fun lt!1984001 () Unit!144907)

(declare-fun Unit!144912 () Unit!144907)

(assert (=> b!4839351 (= lt!1984001 Unit!144912)))

(declare-fun lt!1983991 () Unit!144907)

(declare-fun Unit!144913 () Unit!144907)

(assert (=> b!4839351 (= lt!1983991 Unit!144913)))

(declare-fun lt!1983988 () Unit!144907)

(declare-fun forallContained!4485 (List!55444 Int tuple2!58798) Unit!144907)

(assert (=> b!4839351 (= lt!1983988 (forallContained!4485 (toList!7726 lt!1984006) lambda!240564 (h!61755 (_2!32694 (h!61756 (toList!7725 lm!2671))))))))

(assert (=> b!4839351 (contains!19079 lt!1984006 (_1!32693 (h!61755 (_2!32694 (h!61756 (toList!7725 lm!2671))))))))

(declare-fun lt!1983999 () Unit!144907)

(declare-fun Unit!144914 () Unit!144907)

(assert (=> b!4839351 (= lt!1983999 Unit!144914)))

(assert (=> b!4839351 (contains!19079 lt!1983994 (_1!32693 (h!61755 (_2!32694 (h!61756 (toList!7725 lm!2671))))))))

(declare-fun lt!1984000 () Unit!144907)

(declare-fun Unit!144915 () Unit!144907)

(assert (=> b!4839351 (= lt!1984000 Unit!144915)))

(assert (=> b!4839351 (forall!12818 (_2!32694 (h!61756 (toList!7725 lm!2671))) lambda!240564)))

(declare-fun lt!1984004 () Unit!144907)

(declare-fun Unit!144916 () Unit!144907)

(assert (=> b!4839351 (= lt!1984004 Unit!144916)))

(assert (=> b!4839351 (forall!12818 (toList!7726 lt!1984006) lambda!240564)))

(declare-fun lt!1984002 () Unit!144907)

(declare-fun Unit!144917 () Unit!144907)

(assert (=> b!4839351 (= lt!1984002 Unit!144917)))

(declare-fun lt!1983996 () Unit!144907)

(declare-fun Unit!144918 () Unit!144907)

(assert (=> b!4839351 (= lt!1983996 Unit!144918)))

(declare-fun lt!1984008 () Unit!144907)

(declare-fun addForallContainsKeyThenBeforeAdding!1042 (ListMap!7079 ListMap!7079 K!17072 V!17318) Unit!144907)

(assert (=> b!4839351 (= lt!1984008 (addForallContainsKeyThenBeforeAdding!1042 lt!1983920 lt!1983994 (_1!32693 (h!61755 (_2!32694 (h!61756 (toList!7725 lm!2671))))) (_2!32693 (h!61755 (_2!32694 (h!61756 (toList!7725 lm!2671)))))))))

(assert (=> b!4839351 (forall!12818 (toList!7726 lt!1983920) lambda!240564)))

(declare-fun lt!1983998 () Unit!144907)

(assert (=> b!4839351 (= lt!1983998 lt!1984008)))

(assert (=> b!4839351 (forall!12818 (toList!7726 lt!1983920) lambda!240564)))

(declare-fun lt!1983990 () Unit!144907)

(declare-fun Unit!144919 () Unit!144907)

(assert (=> b!4839351 (= lt!1983990 Unit!144919)))

(declare-fun res!2062841 () Bool)

(assert (=> b!4839351 (= res!2062841 (forall!12818 (_2!32694 (h!61756 (toList!7725 lm!2671))) lambda!240564))))

(declare-fun e!3024375 () Bool)

(assert (=> b!4839351 (=> (not res!2062841) (not e!3024375))))

(assert (=> b!4839351 e!3024375))

(declare-fun lt!1983995 () Unit!144907)

(declare-fun Unit!144920 () Unit!144907)

(assert (=> b!4839351 (= lt!1983995 Unit!144920)))

(declare-fun bm!337267 () Bool)

(declare-fun c!824208 () Bool)

(assert (=> bm!337267 (= call!337272 (forall!12818 (toList!7726 lt!1983920) (ite c!824208 lambda!240562 lambda!240563)))))

(declare-fun bm!337268 () Bool)

(declare-fun call!337273 () Bool)

(assert (=> bm!337268 (= call!337273 (forall!12818 (toList!7726 lt!1983920) (ite c!824208 lambda!240562 lambda!240564)))))

(assert (=> b!4839352 (= e!3024377 lt!1983920)))

(declare-fun lt!1984007 () Unit!144907)

(assert (=> b!4839352 (= lt!1984007 call!337271)))

(assert (=> b!4839352 call!337272))

(declare-fun lt!1984003 () Unit!144907)

(assert (=> b!4839352 (= lt!1984003 lt!1984007)))

(assert (=> b!4839352 call!337273))

(declare-fun lt!1983997 () Unit!144907)

(declare-fun Unit!144921 () Unit!144907)

(assert (=> b!4839352 (= lt!1983997 Unit!144921)))

(assert (=> d!1551310 e!3024376))

(declare-fun res!2062842 () Bool)

(assert (=> d!1551310 (=> (not res!2062842) (not e!3024376))))

(assert (=> d!1551310 (= res!2062842 (forall!12818 (_2!32694 (h!61756 (toList!7725 lm!2671))) lambda!240565))))

(assert (=> d!1551310 (= lt!1984005 e!3024377)))

(assert (=> d!1551310 (= c!824208 (is-Nil!55320 (_2!32694 (h!61756 (toList!7725 lm!2671)))))))

(declare-fun noDuplicateKeys!2535 (List!55444) Bool)

(assert (=> d!1551310 (noDuplicateKeys!2535 (_2!32694 (h!61756 (toList!7725 lm!2671))))))

(assert (=> d!1551310 (= (addToMapMapFromBucket!1899 (_2!32694 (h!61756 (toList!7725 lm!2671))) lt!1983920) lt!1984005)))

(declare-fun b!4839353 () Bool)

(assert (=> b!4839353 (= e!3024375 call!337273)))

(assert (= (and d!1551310 c!824208) b!4839352))

(assert (= (and d!1551310 (not c!824208)) b!4839351))

(assert (= (and b!4839351 res!2062841) b!4839353))

(assert (= (or b!4839352 b!4839351) bm!337266))

(assert (= (or b!4839352 b!4839351) bm!337267))

(assert (= (or b!4839352 b!4839353) bm!337268))

(assert (= (and d!1551310 res!2062842) b!4839349))

(assert (= (and b!4839349 res!2062843) b!4839350))

(declare-fun m!5835066 () Bool)

(assert (=> bm!337268 m!5835066))

(declare-fun m!5835068 () Bool)

(assert (=> b!4839349 m!5835068))

(declare-fun m!5835070 () Bool)

(assert (=> bm!337267 m!5835070))

(declare-fun m!5835072 () Bool)

(assert (=> bm!337266 m!5835072))

(declare-fun m!5835074 () Bool)

(assert (=> d!1551310 m!5835074))

(declare-fun m!5835076 () Bool)

(assert (=> d!1551310 m!5835076))

(declare-fun m!5835078 () Bool)

(assert (=> b!4839351 m!5835078))

(declare-fun m!5835080 () Bool)

(assert (=> b!4839351 m!5835080))

(declare-fun m!5835082 () Bool)

(assert (=> b!4839351 m!5835082))

(declare-fun m!5835084 () Bool)

(assert (=> b!4839351 m!5835084))

(declare-fun m!5835086 () Bool)

(assert (=> b!4839351 m!5835086))

(declare-fun m!5835088 () Bool)

(assert (=> b!4839351 m!5835088))

(assert (=> b!4839351 m!5835088))

(declare-fun m!5835090 () Bool)

(assert (=> b!4839351 m!5835090))

(declare-fun m!5835092 () Bool)

(assert (=> b!4839351 m!5835092))

(assert (=> b!4839351 m!5835092))

(declare-fun m!5835094 () Bool)

(assert (=> b!4839351 m!5835094))

(assert (=> b!4839351 m!5835086))

(assert (=> b!4839351 m!5835082))

(declare-fun m!5835096 () Bool)

(assert (=> b!4839351 m!5835096))

(declare-fun m!5835098 () Bool)

(assert (=> b!4839350 m!5835098))

(assert (=> b!4839299 d!1551310))

(declare-fun bs!1168161 () Bool)

(declare-fun d!1551314 () Bool)

(assert (= bs!1168161 (and d!1551314 start!503484)))

(declare-fun lambda!240568 () Int)

(assert (=> bs!1168161 (= lambda!240568 lambda!240526)))

(declare-fun lt!1984011 () ListMap!7079)

(assert (=> d!1551314 (invariantList!1870 (toList!7726 lt!1984011))))

(declare-fun e!3024380 () ListMap!7079)

(assert (=> d!1551314 (= lt!1984011 e!3024380)))

(declare-fun c!824211 () Bool)

(assert (=> d!1551314 (= c!824211 (is-Cons!55321 (toList!7725 lm!2671)))))

(assert (=> d!1551314 (forall!12819 (toList!7725 lm!2671) lambda!240568)))

(assert (=> d!1551314 (= (extractMap!2759 (toList!7725 lm!2671)) lt!1984011)))

(declare-fun b!4839358 () Bool)

(assert (=> b!4839358 (= e!3024380 (addToMapMapFromBucket!1899 (_2!32694 (h!61756 (toList!7725 lm!2671))) (extractMap!2759 (t!362941 (toList!7725 lm!2671)))))))

(declare-fun b!4839359 () Bool)

(assert (=> b!4839359 (= e!3024380 (ListMap!7080 Nil!55320))))

(assert (= (and d!1551314 c!824211) b!4839358))

(assert (= (and d!1551314 (not c!824211)) b!4839359))

(declare-fun m!5835100 () Bool)

(assert (=> d!1551314 m!5835100))

(declare-fun m!5835102 () Bool)

(assert (=> d!1551314 m!5835102))

(assert (=> b!4839358 m!5835020))

(assert (=> b!4839358 m!5835020))

(declare-fun m!5835104 () Bool)

(assert (=> b!4839358 m!5835104))

(assert (=> b!4839299 d!1551314))

(declare-fun bs!1168162 () Bool)

(declare-fun d!1551316 () Bool)

(assert (= bs!1168162 (and d!1551316 start!503484)))

(declare-fun lambda!240569 () Int)

(assert (=> bs!1168162 (= lambda!240569 lambda!240526)))

(declare-fun bs!1168163 () Bool)

(assert (= bs!1168163 (and d!1551316 d!1551314)))

(assert (=> bs!1168163 (= lambda!240569 lambda!240568)))

(declare-fun lt!1984012 () ListMap!7079)

(assert (=> d!1551316 (invariantList!1870 (toList!7726 lt!1984012))))

(declare-fun e!3024381 () ListMap!7079)

(assert (=> d!1551316 (= lt!1984012 e!3024381)))

(declare-fun c!824212 () Bool)

(assert (=> d!1551316 (= c!824212 (is-Cons!55321 (t!362941 (toList!7725 lm!2671))))))

(assert (=> d!1551316 (forall!12819 (t!362941 (toList!7725 lm!2671)) lambda!240569)))

(assert (=> d!1551316 (= (extractMap!2759 (t!362941 (toList!7725 lm!2671))) lt!1984012)))

(declare-fun b!4839360 () Bool)

(assert (=> b!4839360 (= e!3024381 (addToMapMapFromBucket!1899 (_2!32694 (h!61756 (t!362941 (toList!7725 lm!2671)))) (extractMap!2759 (t!362941 (t!362941 (toList!7725 lm!2671))))))))

(declare-fun b!4839361 () Bool)

(assert (=> b!4839361 (= e!3024381 (ListMap!7080 Nil!55320))))

(assert (= (and d!1551316 c!824212) b!4839360))

(assert (= (and d!1551316 (not c!824212)) b!4839361))

(declare-fun m!5835106 () Bool)

(assert (=> d!1551316 m!5835106))

(declare-fun m!5835108 () Bool)

(assert (=> d!1551316 m!5835108))

(declare-fun m!5835110 () Bool)

(assert (=> b!4839360 m!5835110))

(assert (=> b!4839360 m!5835110))

(declare-fun m!5835112 () Bool)

(assert (=> b!4839360 m!5835112))

(assert (=> b!4839299 d!1551316))

(declare-fun bs!1168164 () Bool)

(declare-fun d!1551318 () Bool)

(assert (= bs!1168164 (and d!1551318 start!503484)))

(declare-fun lambda!240570 () Int)

(assert (=> bs!1168164 (= lambda!240570 lambda!240526)))

(declare-fun bs!1168165 () Bool)

(assert (= bs!1168165 (and d!1551318 d!1551314)))

(assert (=> bs!1168165 (= lambda!240570 lambda!240568)))

(declare-fun bs!1168166 () Bool)

(assert (= bs!1168166 (and d!1551318 d!1551316)))

(assert (=> bs!1168166 (= lambda!240570 lambda!240569)))

(declare-fun lt!1984013 () ListMap!7079)

(assert (=> d!1551318 (invariantList!1870 (toList!7726 lt!1984013))))

(declare-fun e!3024382 () ListMap!7079)

(assert (=> d!1551318 (= lt!1984013 e!3024382)))

(declare-fun c!824213 () Bool)

(assert (=> d!1551318 (= c!824213 (is-Cons!55321 (toList!7725 lt!1983919)))))

(assert (=> d!1551318 (forall!12819 (toList!7725 lt!1983919) lambda!240570)))

(assert (=> d!1551318 (= (extractMap!2759 (toList!7725 lt!1983919)) lt!1984013)))

(declare-fun b!4839362 () Bool)

(assert (=> b!4839362 (= e!3024382 (addToMapMapFromBucket!1899 (_2!32694 (h!61756 (toList!7725 lt!1983919))) (extractMap!2759 (t!362941 (toList!7725 lt!1983919)))))))

(declare-fun b!4839363 () Bool)

(assert (=> b!4839363 (= e!3024382 (ListMap!7080 Nil!55320))))

(assert (= (and d!1551318 c!824213) b!4839362))

(assert (= (and d!1551318 (not c!824213)) b!4839363))

(declare-fun m!5835114 () Bool)

(assert (=> d!1551318 m!5835114))

(declare-fun m!5835116 () Bool)

(assert (=> d!1551318 m!5835116))

(declare-fun m!5835118 () Bool)

(assert (=> b!4839362 m!5835118))

(assert (=> b!4839362 m!5835118))

(declare-fun m!5835120 () Bool)

(assert (=> b!4839362 m!5835120))

(assert (=> b!4839297 d!1551318))

(declare-fun bm!337271 () Bool)

(declare-fun call!337276 () Bool)

(declare-datatypes ((List!55448 0))(
  ( (Nil!55324) (Cons!55324 (h!61759 K!17072) (t!362944 List!55448)) )
))
(declare-fun e!3024397 () List!55448)

(declare-fun contains!19083 (List!55448 K!17072) Bool)

(assert (=> bm!337271 (= call!337276 (contains!19083 e!3024397 key!6540))))

(declare-fun c!824221 () Bool)

(declare-fun c!824222 () Bool)

(assert (=> bm!337271 (= c!824221 c!824222)))

(declare-fun b!4839382 () Bool)

(declare-fun getKeysList!1205 (List!55444) List!55448)

(assert (=> b!4839382 (= e!3024397 (getKeysList!1205 (toList!7726 lt!1983920)))))

(declare-fun b!4839383 () Bool)

(declare-fun e!3024399 () Bool)

(declare-fun e!3024400 () Bool)

(assert (=> b!4839383 (= e!3024399 e!3024400)))

(declare-fun res!2062851 () Bool)

(assert (=> b!4839383 (=> (not res!2062851) (not e!3024400))))

(declare-fun isDefined!10705 (Option!13604) Bool)

(assert (=> b!4839383 (= res!2062851 (isDefined!10705 (getValueByKey!2702 (toList!7726 lt!1983920) key!6540)))))

(declare-fun b!4839384 () Bool)

(declare-fun e!3024395 () Unit!144907)

(declare-fun e!3024396 () Unit!144907)

(assert (=> b!4839384 (= e!3024395 e!3024396)))

(declare-fun c!824220 () Bool)

(assert (=> b!4839384 (= c!824220 call!337276)))

(declare-fun b!4839385 () Bool)

(declare-fun keys!20440 (ListMap!7079) List!55448)

(assert (=> b!4839385 (= e!3024397 (keys!20440 lt!1983920))))

(declare-fun d!1551320 () Bool)

(assert (=> d!1551320 e!3024399))

(declare-fun res!2062852 () Bool)

(assert (=> d!1551320 (=> res!2062852 e!3024399)))

(declare-fun e!3024398 () Bool)

(assert (=> d!1551320 (= res!2062852 e!3024398)))

(declare-fun res!2062850 () Bool)

(assert (=> d!1551320 (=> (not res!2062850) (not e!3024398))))

(declare-fun lt!1984030 () Bool)

(assert (=> d!1551320 (= res!2062850 (not lt!1984030))))

(declare-fun lt!1984035 () Bool)

(assert (=> d!1551320 (= lt!1984030 lt!1984035)))

(declare-fun lt!1984036 () Unit!144907)

(assert (=> d!1551320 (= lt!1984036 e!3024395)))

(assert (=> d!1551320 (= c!824222 lt!1984035)))

(declare-fun containsKey!4565 (List!55444 K!17072) Bool)

(assert (=> d!1551320 (= lt!1984035 (containsKey!4565 (toList!7726 lt!1983920) key!6540))))

(assert (=> d!1551320 (= (contains!19079 lt!1983920 key!6540) lt!1984030)))

(declare-fun b!4839386 () Bool)

(assert (=> b!4839386 (= e!3024400 (contains!19083 (keys!20440 lt!1983920) key!6540))))

(declare-fun b!4839387 () Bool)

(assert (=> b!4839387 false))

(declare-fun lt!1984037 () Unit!144907)

(declare-fun lt!1984033 () Unit!144907)

(assert (=> b!4839387 (= lt!1984037 lt!1984033)))

(assert (=> b!4839387 (containsKey!4565 (toList!7726 lt!1983920) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1205 (List!55444 K!17072) Unit!144907)

(assert (=> b!4839387 (= lt!1984033 (lemmaInGetKeysListThenContainsKey!1205 (toList!7726 lt!1983920) key!6540))))

(declare-fun Unit!144922 () Unit!144907)

(assert (=> b!4839387 (= e!3024396 Unit!144922)))

(declare-fun b!4839388 () Bool)

(declare-fun Unit!144923 () Unit!144907)

(assert (=> b!4839388 (= e!3024396 Unit!144923)))

(declare-fun b!4839389 () Bool)

(assert (=> b!4839389 (= e!3024398 (not (contains!19083 (keys!20440 lt!1983920) key!6540)))))

(declare-fun b!4839390 () Bool)

(declare-fun lt!1984031 () Unit!144907)

(assert (=> b!4839390 (= e!3024395 lt!1984031)))

(declare-fun lt!1984032 () Unit!144907)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2478 (List!55444 K!17072) Unit!144907)

(assert (=> b!4839390 (= lt!1984032 (lemmaContainsKeyImpliesGetValueByKeyDefined!2478 (toList!7726 lt!1983920) key!6540))))

(assert (=> b!4839390 (isDefined!10705 (getValueByKey!2702 (toList!7726 lt!1983920) key!6540))))

(declare-fun lt!1984034 () Unit!144907)

(assert (=> b!4839390 (= lt!1984034 lt!1984032)))

(declare-fun lemmaInListThenGetKeysListContains!1200 (List!55444 K!17072) Unit!144907)

(assert (=> b!4839390 (= lt!1984031 (lemmaInListThenGetKeysListContains!1200 (toList!7726 lt!1983920) key!6540))))

(assert (=> b!4839390 call!337276))

(assert (= (and d!1551320 c!824222) b!4839390))

(assert (= (and d!1551320 (not c!824222)) b!4839384))

(assert (= (and b!4839384 c!824220) b!4839387))

(assert (= (and b!4839384 (not c!824220)) b!4839388))

(assert (= (or b!4839390 b!4839384) bm!337271))

(assert (= (and bm!337271 c!824221) b!4839382))

(assert (= (and bm!337271 (not c!824221)) b!4839385))

(assert (= (and d!1551320 res!2062850) b!4839389))

(assert (= (and d!1551320 (not res!2062852)) b!4839383))

(assert (= (and b!4839383 res!2062851) b!4839386))

(declare-fun m!5835122 () Bool)

(assert (=> b!4839386 m!5835122))

(assert (=> b!4839386 m!5835122))

(declare-fun m!5835124 () Bool)

(assert (=> b!4839386 m!5835124))

(assert (=> b!4839385 m!5835122))

(declare-fun m!5835126 () Bool)

(assert (=> b!4839387 m!5835126))

(declare-fun m!5835128 () Bool)

(assert (=> b!4839387 m!5835128))

(assert (=> d!1551320 m!5835126))

(declare-fun m!5835130 () Bool)

(assert (=> b!4839382 m!5835130))

(declare-fun m!5835132 () Bool)

(assert (=> b!4839390 m!5835132))

(assert (=> b!4839390 m!5834990))

(assert (=> b!4839390 m!5834990))

(declare-fun m!5835134 () Bool)

(assert (=> b!4839390 m!5835134))

(declare-fun m!5835136 () Bool)

(assert (=> b!4839390 m!5835136))

(declare-fun m!5835138 () Bool)

(assert (=> bm!337271 m!5835138))

(assert (=> b!4839389 m!5835122))

(assert (=> b!4839389 m!5835122))

(assert (=> b!4839389 m!5835124))

(assert (=> b!4839383 m!5834990))

(assert (=> b!4839383 m!5834990))

(assert (=> b!4839383 m!5835134))

(assert (=> b!4839297 d!1551320))

(declare-fun d!1551322 () Bool)

(assert (=> d!1551322 (= (tail!9480 lm!2671) (ListLongMap!6266 (tail!9479 (toList!7725 lm!2671))))))

(declare-fun bs!1168167 () Bool)

(assert (= bs!1168167 d!1551322))

(assert (=> bs!1168167 m!5834980))

(assert (=> b!4839297 d!1551322))

(declare-fun bm!337272 () Bool)

(declare-fun call!337277 () Bool)

(declare-fun e!3024403 () List!55448)

(assert (=> bm!337272 (= call!337277 (contains!19083 e!3024403 key!6540))))

(declare-fun c!824224 () Bool)

(declare-fun c!824225 () Bool)

(assert (=> bm!337272 (= c!824224 c!824225)))

(declare-fun b!4839391 () Bool)

(assert (=> b!4839391 (= e!3024403 (getKeysList!1205 (toList!7726 (extractMap!2759 (toList!7725 lt!1983919)))))))

(declare-fun b!4839392 () Bool)

(declare-fun e!3024405 () Bool)

(declare-fun e!3024406 () Bool)

(assert (=> b!4839392 (= e!3024405 e!3024406)))

(declare-fun res!2062854 () Bool)

(assert (=> b!4839392 (=> (not res!2062854) (not e!3024406))))

(assert (=> b!4839392 (= res!2062854 (isDefined!10705 (getValueByKey!2702 (toList!7726 (extractMap!2759 (toList!7725 lt!1983919))) key!6540)))))

(declare-fun b!4839393 () Bool)

(declare-fun e!3024401 () Unit!144907)

(declare-fun e!3024402 () Unit!144907)

(assert (=> b!4839393 (= e!3024401 e!3024402)))

(declare-fun c!824223 () Bool)

(assert (=> b!4839393 (= c!824223 call!337277)))

(declare-fun b!4839394 () Bool)

(assert (=> b!4839394 (= e!3024403 (keys!20440 (extractMap!2759 (toList!7725 lt!1983919))))))

(declare-fun d!1551324 () Bool)

(assert (=> d!1551324 e!3024405))

(declare-fun res!2062855 () Bool)

(assert (=> d!1551324 (=> res!2062855 e!3024405)))

(declare-fun e!3024404 () Bool)

(assert (=> d!1551324 (= res!2062855 e!3024404)))

(declare-fun res!2062853 () Bool)

(assert (=> d!1551324 (=> (not res!2062853) (not e!3024404))))

(declare-fun lt!1984038 () Bool)

(assert (=> d!1551324 (= res!2062853 (not lt!1984038))))

(declare-fun lt!1984043 () Bool)

(assert (=> d!1551324 (= lt!1984038 lt!1984043)))

(declare-fun lt!1984044 () Unit!144907)

(assert (=> d!1551324 (= lt!1984044 e!3024401)))

(assert (=> d!1551324 (= c!824225 lt!1984043)))

(assert (=> d!1551324 (= lt!1984043 (containsKey!4565 (toList!7726 (extractMap!2759 (toList!7725 lt!1983919))) key!6540))))

(assert (=> d!1551324 (= (contains!19079 (extractMap!2759 (toList!7725 lt!1983919)) key!6540) lt!1984038)))

(declare-fun b!4839395 () Bool)

(assert (=> b!4839395 (= e!3024406 (contains!19083 (keys!20440 (extractMap!2759 (toList!7725 lt!1983919))) key!6540))))

(declare-fun b!4839396 () Bool)

(assert (=> b!4839396 false))

(declare-fun lt!1984045 () Unit!144907)

(declare-fun lt!1984041 () Unit!144907)

(assert (=> b!4839396 (= lt!1984045 lt!1984041)))

(assert (=> b!4839396 (containsKey!4565 (toList!7726 (extractMap!2759 (toList!7725 lt!1983919))) key!6540)))

(assert (=> b!4839396 (= lt!1984041 (lemmaInGetKeysListThenContainsKey!1205 (toList!7726 (extractMap!2759 (toList!7725 lt!1983919))) key!6540))))

(declare-fun Unit!144924 () Unit!144907)

(assert (=> b!4839396 (= e!3024402 Unit!144924)))

(declare-fun b!4839397 () Bool)

(declare-fun Unit!144925 () Unit!144907)

(assert (=> b!4839397 (= e!3024402 Unit!144925)))

(declare-fun b!4839398 () Bool)

(assert (=> b!4839398 (= e!3024404 (not (contains!19083 (keys!20440 (extractMap!2759 (toList!7725 lt!1983919))) key!6540)))))

(declare-fun b!4839399 () Bool)

(declare-fun lt!1984039 () Unit!144907)

(assert (=> b!4839399 (= e!3024401 lt!1984039)))

(declare-fun lt!1984040 () Unit!144907)

(assert (=> b!4839399 (= lt!1984040 (lemmaContainsKeyImpliesGetValueByKeyDefined!2478 (toList!7726 (extractMap!2759 (toList!7725 lt!1983919))) key!6540))))

(assert (=> b!4839399 (isDefined!10705 (getValueByKey!2702 (toList!7726 (extractMap!2759 (toList!7725 lt!1983919))) key!6540))))

(declare-fun lt!1984042 () Unit!144907)

(assert (=> b!4839399 (= lt!1984042 lt!1984040)))

(assert (=> b!4839399 (= lt!1984039 (lemmaInListThenGetKeysListContains!1200 (toList!7726 (extractMap!2759 (toList!7725 lt!1983919))) key!6540))))

(assert (=> b!4839399 call!337277))

(assert (= (and d!1551324 c!824225) b!4839399))

(assert (= (and d!1551324 (not c!824225)) b!4839393))

(assert (= (and b!4839393 c!824223) b!4839396))

(assert (= (and b!4839393 (not c!824223)) b!4839397))

(assert (= (or b!4839399 b!4839393) bm!337272))

(assert (= (and bm!337272 c!824224) b!4839391))

(assert (= (and bm!337272 (not c!824224)) b!4839394))

(assert (= (and d!1551324 res!2062853) b!4839398))

(assert (= (and d!1551324 (not res!2062855)) b!4839392))

(assert (= (and b!4839392 res!2062854) b!4839395))

(assert (=> b!4839395 m!5835000))

(declare-fun m!5835140 () Bool)

(assert (=> b!4839395 m!5835140))

(assert (=> b!4839395 m!5835140))

(declare-fun m!5835142 () Bool)

(assert (=> b!4839395 m!5835142))

(assert (=> b!4839394 m!5835000))

(assert (=> b!4839394 m!5835140))

(declare-fun m!5835144 () Bool)

(assert (=> b!4839396 m!5835144))

(declare-fun m!5835146 () Bool)

(assert (=> b!4839396 m!5835146))

(assert (=> d!1551324 m!5835144))

(declare-fun m!5835148 () Bool)

(assert (=> b!4839391 m!5835148))

(declare-fun m!5835150 () Bool)

(assert (=> b!4839399 m!5835150))

(declare-fun m!5835152 () Bool)

(assert (=> b!4839399 m!5835152))

(assert (=> b!4839399 m!5835152))

(declare-fun m!5835154 () Bool)

(assert (=> b!4839399 m!5835154))

(declare-fun m!5835156 () Bool)

(assert (=> b!4839399 m!5835156))

(declare-fun m!5835158 () Bool)

(assert (=> bm!337272 m!5835158))

(assert (=> b!4839398 m!5835000))

(assert (=> b!4839398 m!5835140))

(assert (=> b!4839398 m!5835140))

(assert (=> b!4839398 m!5835142))

(assert (=> b!4839392 m!5835152))

(assert (=> b!4839392 m!5835152))

(assert (=> b!4839392 m!5835154))

(assert (=> b!4839297 d!1551324))

(declare-fun bs!1168168 () Bool)

(declare-fun d!1551326 () Bool)

(assert (= bs!1168168 (and d!1551326 start!503484)))

(declare-fun lambda!240573 () Int)

(assert (=> bs!1168168 (= lambda!240573 lambda!240526)))

(declare-fun bs!1168169 () Bool)

(assert (= bs!1168169 (and d!1551326 d!1551314)))

(assert (=> bs!1168169 (= lambda!240573 lambda!240568)))

(declare-fun bs!1168170 () Bool)

(assert (= bs!1168170 (and d!1551326 d!1551316)))

(assert (=> bs!1168170 (= lambda!240573 lambda!240569)))

(declare-fun bs!1168171 () Bool)

(assert (= bs!1168171 (and d!1551326 d!1551318)))

(assert (=> bs!1168171 (= lambda!240573 lambda!240570)))

(assert (=> d!1551326 (contains!19079 (extractMap!2759 (toList!7725 lt!1983919)) key!6540)))

(declare-fun lt!1984048 () Unit!144907)

(declare-fun choose!35359 (ListLongMap!6265 K!17072 Hashable!7401) Unit!144907)

(assert (=> d!1551326 (= lt!1984048 (choose!35359 lt!1983919 key!6540 hashF!1662))))

(assert (=> d!1551326 (forall!12819 (toList!7725 lt!1983919) lambda!240573)))

(assert (=> d!1551326 (= (lemmaListContainsThenExtractedMapContains!745 lt!1983919 key!6540 hashF!1662) lt!1984048)))

(declare-fun bs!1168172 () Bool)

(assert (= bs!1168172 d!1551326))

(assert (=> bs!1168172 m!5835000))

(assert (=> bs!1168172 m!5835000))

(assert (=> bs!1168172 m!5835006))

(declare-fun m!5835160 () Bool)

(assert (=> bs!1168172 m!5835160))

(declare-fun m!5835162 () Bool)

(assert (=> bs!1168172 m!5835162))

(assert (=> b!4839297 d!1551326))

(declare-fun d!1551328 () Bool)

(declare-fun res!2062860 () Bool)

(declare-fun e!3024411 () Bool)

(assert (=> d!1551328 (=> res!2062860 e!3024411)))

(assert (=> d!1551328 (= res!2062860 (is-Nil!55321 (toList!7725 lm!2671)))))

(assert (=> d!1551328 (= (forall!12819 (toList!7725 lm!2671) lambda!240526) e!3024411)))

(declare-fun b!4839404 () Bool)

(declare-fun e!3024412 () Bool)

(assert (=> b!4839404 (= e!3024411 e!3024412)))

(declare-fun res!2062861 () Bool)

(assert (=> b!4839404 (=> (not res!2062861) (not e!3024412))))

(declare-fun dynLambda!22286 (Int tuple2!58800) Bool)

(assert (=> b!4839404 (= res!2062861 (dynLambda!22286 lambda!240526 (h!61756 (toList!7725 lm!2671))))))

(declare-fun b!4839405 () Bool)

(assert (=> b!4839405 (= e!3024412 (forall!12819 (t!362941 (toList!7725 lm!2671)) lambda!240526))))

(assert (= (and d!1551328 (not res!2062860)) b!4839404))

(assert (= (and b!4839404 res!2062861) b!4839405))

(declare-fun b_lambda!191283 () Bool)

(assert (=> (not b_lambda!191283) (not b!4839404)))

(declare-fun m!5835164 () Bool)

(assert (=> b!4839404 m!5835164))

(declare-fun m!5835166 () Bool)

(assert (=> b!4839405 m!5835166))

(assert (=> start!503484 d!1551328))

(declare-fun d!1551330 () Bool)

(declare-fun isStrictlySorted!1034 (List!55445) Bool)

(assert (=> d!1551330 (= (inv!70973 lm!2671) (isStrictlySorted!1034 (toList!7725 lm!2671)))))

(declare-fun bs!1168173 () Bool)

(assert (= bs!1168173 d!1551330))

(declare-fun m!5835168 () Bool)

(assert (=> bs!1168173 m!5835168))

(assert (=> start!503484 d!1551330))

(declare-fun d!1551332 () Bool)

(declare-fun res!2062866 () Bool)

(declare-fun e!3024417 () Bool)

(assert (=> d!1551332 (=> res!2062866 e!3024417)))

(assert (=> d!1551332 (= res!2062866 (is-Nil!55320 (toList!7726 lt!1983920)))))

(assert (=> d!1551332 (= (forall!12818 (toList!7726 lt!1983920) lambda!240527) e!3024417)))

(declare-fun b!4839410 () Bool)

(declare-fun e!3024418 () Bool)

(assert (=> b!4839410 (= e!3024417 e!3024418)))

(declare-fun res!2062867 () Bool)

(assert (=> b!4839410 (=> (not res!2062867) (not e!3024418))))

(declare-fun dynLambda!22287 (Int tuple2!58798) Bool)

(assert (=> b!4839410 (= res!2062867 (dynLambda!22287 lambda!240527 (h!61755 (toList!7726 lt!1983920))))))

(declare-fun b!4839411 () Bool)

(assert (=> b!4839411 (= e!3024418 (forall!12818 (t!362940 (toList!7726 lt!1983920)) lambda!240527))))

(assert (= (and d!1551332 (not res!2062866)) b!4839410))

(assert (= (and b!4839410 res!2062867) b!4839411))

(declare-fun b_lambda!191285 () Bool)

(assert (=> (not b_lambda!191285) (not b!4839410)))

(declare-fun m!5835170 () Bool)

(assert (=> b!4839410 m!5835170))

(declare-fun m!5835172 () Bool)

(assert (=> b!4839411 m!5835172))

(assert (=> b!4839298 d!1551332))

(declare-fun d!1551334 () Bool)

(declare-fun lt!1984051 () Bool)

(declare-fun content!9851 (List!55444) (Set tuple2!58798))

(assert (=> d!1551334 (= lt!1984051 (set.member (tuple2!58799 key!6540 lt!1983923) (content!9851 (toList!7726 lt!1983920))))))

(declare-fun e!3024423 () Bool)

(assert (=> d!1551334 (= lt!1984051 e!3024423)))

(declare-fun res!2062873 () Bool)

(assert (=> d!1551334 (=> (not res!2062873) (not e!3024423))))

(assert (=> d!1551334 (= res!2062873 (is-Cons!55320 (toList!7726 lt!1983920)))))

(assert (=> d!1551334 (= (contains!19080 (toList!7726 lt!1983920) (tuple2!58799 key!6540 lt!1983923)) lt!1984051)))

(declare-fun b!4839416 () Bool)

(declare-fun e!3024424 () Bool)

(assert (=> b!4839416 (= e!3024423 e!3024424)))

(declare-fun res!2062872 () Bool)

(assert (=> b!4839416 (=> res!2062872 e!3024424)))

(assert (=> b!4839416 (= res!2062872 (= (h!61755 (toList!7726 lt!1983920)) (tuple2!58799 key!6540 lt!1983923)))))

(declare-fun b!4839417 () Bool)

(assert (=> b!4839417 (= e!3024424 (contains!19080 (t!362940 (toList!7726 lt!1983920)) (tuple2!58799 key!6540 lt!1983923)))))

(assert (= (and d!1551334 res!2062873) b!4839416))

(assert (= (and b!4839416 (not res!2062872)) b!4839417))

(declare-fun m!5835174 () Bool)

(assert (=> d!1551334 m!5835174))

(declare-fun m!5835176 () Bool)

(assert (=> d!1551334 m!5835176))

(declare-fun m!5835178 () Bool)

(assert (=> b!4839417 m!5835178))

(assert (=> b!4839298 d!1551334))

(declare-fun d!1551336 () Bool)

(assert (=> d!1551336 (= (get!18936 (getValueByKey!2702 (toList!7726 lt!1983920) key!6540)) (v!49327 (getValueByKey!2702 (toList!7726 lt!1983920) key!6540)))))

(assert (=> b!4839298 d!1551336))

(declare-fun b!4839427 () Bool)

(declare-fun e!3024429 () Option!13604)

(declare-fun e!3024430 () Option!13604)

(assert (=> b!4839427 (= e!3024429 e!3024430)))

(declare-fun c!824231 () Bool)

(assert (=> b!4839427 (= c!824231 (and (is-Cons!55320 (toList!7726 lt!1983920)) (not (= (_1!32693 (h!61755 (toList!7726 lt!1983920))) key!6540))))))

(declare-fun d!1551338 () Bool)

(declare-fun c!824230 () Bool)

(assert (=> d!1551338 (= c!824230 (and (is-Cons!55320 (toList!7726 lt!1983920)) (= (_1!32693 (h!61755 (toList!7726 lt!1983920))) key!6540)))))

(assert (=> d!1551338 (= (getValueByKey!2702 (toList!7726 lt!1983920) key!6540) e!3024429)))

(declare-fun b!4839426 () Bool)

(assert (=> b!4839426 (= e!3024429 (Some!13603 (_2!32693 (h!61755 (toList!7726 lt!1983920)))))))

(declare-fun b!4839428 () Bool)

(assert (=> b!4839428 (= e!3024430 (getValueByKey!2702 (t!362940 (toList!7726 lt!1983920)) key!6540))))

(declare-fun b!4839429 () Bool)

(assert (=> b!4839429 (= e!3024430 None!13603)))

(assert (= (and d!1551338 c!824230) b!4839426))

(assert (= (and d!1551338 (not c!824230)) b!4839427))

(assert (= (and b!4839427 c!824231) b!4839428))

(assert (= (and b!4839427 (not c!824231)) b!4839429))

(declare-fun m!5835180 () Bool)

(assert (=> b!4839428 m!5835180))

(assert (=> b!4839298 d!1551338))

(declare-fun d!1551340 () Bool)

(assert (=> d!1551340 (contains!19080 (toList!7726 lt!1983920) (tuple2!58799 key!6540 lt!1983923))))

(declare-fun lt!1984054 () Unit!144907)

(declare-fun choose!35360 (ListMap!7079 K!17072 V!17318) Unit!144907)

(assert (=> d!1551340 (= lt!1984054 (choose!35360 lt!1983920 key!6540 lt!1983923))))

(assert (=> d!1551340 (contains!19079 lt!1983920 key!6540)))

(assert (=> d!1551340 (= (lemmaGetValueImpliesTupleContained!728 lt!1983920 key!6540 lt!1983923) lt!1984054)))

(declare-fun bs!1168174 () Bool)

(assert (= bs!1168174 d!1551340))

(assert (=> bs!1168174 m!5834988))

(declare-fun m!5835182 () Bool)

(assert (=> bs!1168174 m!5835182))

(assert (=> bs!1168174 m!5835002))

(assert (=> b!4839298 d!1551340))

(declare-fun d!1551342 () Bool)

(declare-fun res!2062882 () Bool)

(declare-fun e!3024438 () Bool)

(assert (=> d!1551342 (=> res!2062882 e!3024438)))

(declare-fun e!3024439 () Bool)

(assert (=> d!1551342 (= res!2062882 e!3024439)))

(declare-fun res!2062880 () Bool)

(assert (=> d!1551342 (=> (not res!2062880) (not e!3024439))))

(assert (=> d!1551342 (= res!2062880 (is-Cons!55321 (t!362941 (toList!7725 lm!2671))))))

(assert (=> d!1551342 (= (containsKeyBiggerList!685 (t!362941 (toList!7725 lm!2671)) key!6540) e!3024438)))

(declare-fun b!4839437 () Bool)

(assert (=> b!4839437 (= e!3024439 (containsKey!4563 (_2!32694 (h!61756 (t!362941 (toList!7725 lm!2671)))) key!6540))))

(declare-fun b!4839438 () Bool)

(declare-fun e!3024437 () Bool)

(assert (=> b!4839438 (= e!3024438 e!3024437)))

(declare-fun res!2062881 () Bool)

(assert (=> b!4839438 (=> (not res!2062881) (not e!3024437))))

(assert (=> b!4839438 (= res!2062881 (is-Cons!55321 (t!362941 (toList!7725 lm!2671))))))

(declare-fun b!4839439 () Bool)

(assert (=> b!4839439 (= e!3024437 (containsKeyBiggerList!685 (t!362941 (t!362941 (toList!7725 lm!2671))) key!6540))))

(assert (= (and d!1551342 res!2062880) b!4839437))

(assert (= (and d!1551342 (not res!2062882)) b!4839438))

(assert (= (and b!4839438 res!2062881) b!4839439))

(declare-fun m!5835184 () Bool)

(assert (=> b!4839437 m!5835184))

(declare-fun m!5835186 () Bool)

(assert (=> b!4839439 m!5835186))

(assert (=> b!4839296 d!1551342))

(declare-fun d!1551344 () Bool)

(declare-fun res!2062885 () Bool)

(declare-fun e!3024441 () Bool)

(assert (=> d!1551344 (=> res!2062885 e!3024441)))

(declare-fun e!3024442 () Bool)

(assert (=> d!1551344 (= res!2062885 e!3024442)))

(declare-fun res!2062883 () Bool)

(assert (=> d!1551344 (=> (not res!2062883) (not e!3024442))))

(assert (=> d!1551344 (= res!2062883 (is-Cons!55321 (tail!9479 (toList!7725 lm!2671))))))

(assert (=> d!1551344 (= (containsKeyBiggerList!685 (tail!9479 (toList!7725 lm!2671)) key!6540) e!3024441)))

(declare-fun b!4839440 () Bool)

(assert (=> b!4839440 (= e!3024442 (containsKey!4563 (_2!32694 (h!61756 (tail!9479 (toList!7725 lm!2671)))) key!6540))))

(declare-fun b!4839441 () Bool)

(declare-fun e!3024440 () Bool)

(assert (=> b!4839441 (= e!3024441 e!3024440)))

(declare-fun res!2062884 () Bool)

(assert (=> b!4839441 (=> (not res!2062884) (not e!3024440))))

(assert (=> b!4839441 (= res!2062884 (is-Cons!55321 (tail!9479 (toList!7725 lm!2671))))))

(declare-fun b!4839442 () Bool)

(assert (=> b!4839442 (= e!3024440 (containsKeyBiggerList!685 (t!362941 (tail!9479 (toList!7725 lm!2671))) key!6540))))

(assert (= (and d!1551344 res!2062883) b!4839440))

(assert (= (and d!1551344 (not res!2062885)) b!4839441))

(assert (= (and b!4839441 res!2062884) b!4839442))

(declare-fun m!5835188 () Bool)

(assert (=> b!4839440 m!5835188))

(declare-fun m!5835190 () Bool)

(assert (=> b!4839442 m!5835190))

(assert (=> b!4839296 d!1551344))

(declare-fun d!1551346 () Bool)

(assert (=> d!1551346 (= (tail!9479 (toList!7725 lm!2671)) (t!362941 (toList!7725 lm!2671)))))

(assert (=> b!4839296 d!1551346))

(declare-fun bs!1168175 () Bool)

(declare-fun d!1551348 () Bool)

(assert (= bs!1168175 (and d!1551348 d!1551318)))

(declare-fun lambda!240576 () Int)

(assert (=> bs!1168175 (= lambda!240576 lambda!240570)))

(declare-fun bs!1168176 () Bool)

(assert (= bs!1168176 (and d!1551348 d!1551326)))

(assert (=> bs!1168176 (= lambda!240576 lambda!240573)))

(declare-fun bs!1168177 () Bool)

(assert (= bs!1168177 (and d!1551348 d!1551316)))

(assert (=> bs!1168177 (= lambda!240576 lambda!240569)))

(declare-fun bs!1168178 () Bool)

(assert (= bs!1168178 (and d!1551348 d!1551314)))

(assert (=> bs!1168178 (= lambda!240576 lambda!240568)))

(declare-fun bs!1168179 () Bool)

(assert (= bs!1168179 (and d!1551348 start!503484)))

(assert (=> bs!1168179 (= lambda!240576 lambda!240526)))

(assert (=> d!1551348 (containsKeyBiggerList!685 (tail!9479 (toList!7725 lm!2671)) key!6540)))

(declare-fun lt!1984057 () Unit!144907)

(declare-fun choose!35361 (ListLongMap!6265 K!17072 Hashable!7401) Unit!144907)

(assert (=> d!1551348 (= lt!1984057 (choose!35361 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1551348 (forall!12819 (toList!7725 lm!2671) lambda!240576)))

(assert (=> d!1551348 (= (lemmaInBiggerListButNotHeadThenTail!45 lm!2671 key!6540 hashF!1662) lt!1984057)))

(declare-fun bs!1168180 () Bool)

(assert (= bs!1168180 d!1551348))

(assert (=> bs!1168180 m!5834980))

(assert (=> bs!1168180 m!5834980))

(assert (=> bs!1168180 m!5834982))

(declare-fun m!5835192 () Bool)

(assert (=> bs!1168180 m!5835192))

(declare-fun m!5835194 () Bool)

(assert (=> bs!1168180 m!5835194))

(assert (=> b!4839296 d!1551348))

(declare-fun d!1551350 () Bool)

(declare-fun res!2062888 () Bool)

(declare-fun e!3024444 () Bool)

(assert (=> d!1551350 (=> res!2062888 e!3024444)))

(declare-fun e!3024445 () Bool)

(assert (=> d!1551350 (= res!2062888 e!3024445)))

(declare-fun res!2062886 () Bool)

(assert (=> d!1551350 (=> (not res!2062886) (not e!3024445))))

(assert (=> d!1551350 (= res!2062886 (is-Cons!55321 (toList!7725 lm!2671)))))

(assert (=> d!1551350 (= (containsKeyBiggerList!685 (toList!7725 lm!2671) key!6540) e!3024444)))

(declare-fun b!4839445 () Bool)

(assert (=> b!4839445 (= e!3024445 (containsKey!4563 (_2!32694 (h!61756 (toList!7725 lm!2671))) key!6540))))

(declare-fun b!4839446 () Bool)

(declare-fun e!3024443 () Bool)

(assert (=> b!4839446 (= e!3024444 e!3024443)))

(declare-fun res!2062887 () Bool)

(assert (=> b!4839446 (=> (not res!2062887) (not e!3024443))))

(assert (=> b!4839446 (= res!2062887 (is-Cons!55321 (toList!7725 lm!2671)))))

(declare-fun b!4839447 () Bool)

(assert (=> b!4839447 (= e!3024443 (containsKeyBiggerList!685 (t!362941 (toList!7725 lm!2671)) key!6540))))

(assert (= (and d!1551350 res!2062886) b!4839445))

(assert (= (and d!1551350 (not res!2062888)) b!4839446))

(assert (= (and b!4839446 res!2062887) b!4839447))

(assert (=> b!4839445 m!5835008))

(assert (=> b!4839447 m!5834978))

(assert (=> b!4839302 d!1551350))

(declare-fun d!1551352 () Bool)

(declare-fun res!2062893 () Bool)

(declare-fun e!3024452 () Bool)

(assert (=> d!1551352 (=> res!2062893 e!3024452)))

(assert (=> d!1551352 (= res!2062893 (and (is-Cons!55320 (_2!32694 (h!61756 (toList!7725 lm!2671)))) (= (_1!32693 (h!61755 (_2!32694 (h!61756 (toList!7725 lm!2671))))) key!6540)))))

(assert (=> d!1551352 (= (containsKey!4563 (_2!32694 (h!61756 (toList!7725 lm!2671))) key!6540) e!3024452)))

(declare-fun b!4839454 () Bool)

(declare-fun e!3024453 () Bool)

(assert (=> b!4839454 (= e!3024452 e!3024453)))

(declare-fun res!2062894 () Bool)

(assert (=> b!4839454 (=> (not res!2062894) (not e!3024453))))

(assert (=> b!4839454 (= res!2062894 (is-Cons!55320 (_2!32694 (h!61756 (toList!7725 lm!2671)))))))

(declare-fun b!4839455 () Bool)

(assert (=> b!4839455 (= e!3024453 (containsKey!4563 (t!362940 (_2!32694 (h!61756 (toList!7725 lm!2671)))) key!6540))))

(assert (= (and d!1551352 (not res!2062893)) b!4839454))

(assert (= (and b!4839454 res!2062894) b!4839455))

(declare-fun m!5835196 () Bool)

(assert (=> b!4839455 m!5835196))

(assert (=> b!4839300 d!1551352))

(declare-fun bs!1168181 () Bool)

(declare-fun d!1551354 () Bool)

(assert (= bs!1168181 (and d!1551354 d!1551318)))

(declare-fun lambda!240583 () Int)

(assert (=> bs!1168181 (not (= lambda!240583 lambda!240570))))

(declare-fun bs!1168182 () Bool)

(assert (= bs!1168182 (and d!1551354 d!1551326)))

(assert (=> bs!1168182 (not (= lambda!240583 lambda!240573))))

(declare-fun bs!1168183 () Bool)

(assert (= bs!1168183 (and d!1551354 d!1551348)))

(assert (=> bs!1168183 (not (= lambda!240583 lambda!240576))))

(declare-fun bs!1168184 () Bool)

(assert (= bs!1168184 (and d!1551354 d!1551316)))

(assert (=> bs!1168184 (not (= lambda!240583 lambda!240569))))

(declare-fun bs!1168185 () Bool)

(assert (= bs!1168185 (and d!1551354 d!1551314)))

(assert (=> bs!1168185 (not (= lambda!240583 lambda!240568))))

(declare-fun bs!1168186 () Bool)

(assert (= bs!1168186 (and d!1551354 start!503484)))

(assert (=> bs!1168186 (not (= lambda!240583 lambda!240526))))

(assert (=> d!1551354 true))

(assert (=> d!1551354 (= (allKeysSameHashInMap!2717 lm!2671 hashF!1662) (forall!12819 (toList!7725 lm!2671) lambda!240583))))

(declare-fun bs!1168187 () Bool)

(assert (= bs!1168187 d!1551354))

(declare-fun m!5835198 () Bool)

(assert (=> bs!1168187 m!5835198))

(assert (=> b!4839295 d!1551354))

(declare-fun b!4839462 () Bool)

(declare-fun e!3024456 () Bool)

(declare-fun tp!1363731 () Bool)

(declare-fun tp!1363732 () Bool)

(assert (=> b!4839462 (= e!3024456 (and tp!1363731 tp!1363732))))

(assert (=> b!4839303 (= tp!1363723 e!3024456)))

(assert (= (and b!4839303 (is-Cons!55321 (toList!7725 lm!2671))) b!4839462))

(declare-fun b_lambda!191287 () Bool)

(assert (= b_lambda!191285 (or b!4839298 b_lambda!191287)))

(declare-fun bs!1168188 () Bool)

(declare-fun d!1551356 () Bool)

(assert (= bs!1168188 (and d!1551356 b!4839298)))

(assert (=> bs!1168188 (= (dynLambda!22287 lambda!240527 (h!61755 (toList!7726 lt!1983920))) (contains!19079 lt!1983921 (_1!32693 (h!61755 (toList!7726 lt!1983920)))))))

(declare-fun m!5835200 () Bool)

(assert (=> bs!1168188 m!5835200))

(assert (=> b!4839410 d!1551356))

(declare-fun b_lambda!191289 () Bool)

(assert (= b_lambda!191283 (or start!503484 b_lambda!191289)))

(declare-fun bs!1168189 () Bool)

(declare-fun d!1551358 () Bool)

(assert (= bs!1168189 (and d!1551358 start!503484)))

(assert (=> bs!1168189 (= (dynLambda!22286 lambda!240526 (h!61756 (toList!7725 lm!2671))) (noDuplicateKeys!2535 (_2!32694 (h!61756 (toList!7725 lm!2671)))))))

(assert (=> bs!1168189 m!5835076))

(assert (=> b!4839404 d!1551358))

(push 1)

(assert (not b!4839447))

(assert (not bm!337266))

(assert (not d!1551348))

(assert (not d!1551320))

(assert (not b!4839391))

(assert (not b!4839399))

(assert (not bs!1168189))

(assert (not b!4839360))

(assert (not bm!337268))

(assert (not b!4839358))

(assert (not d!1551324))

(assert (not b!4839385))

(assert (not b!4839396))

(assert (not d!1551334))

(assert (not b!4839392))

(assert (not d!1551354))

(assert (not b_lambda!191287))

(assert (not b!4839383))

(assert (not b!4839462))

(assert (not b!4839349))

(assert (not d!1551326))

(assert (not d!1551314))

(assert (not b!4839351))

(assert (not b!4839350))

(assert (not b!4839405))

(assert (not b!4839455))

(assert (not d!1551340))

(assert (not b!4839389))

(assert (not bm!337267))

(assert (not d!1551316))

(assert (not b!4839362))

(assert (not b!4839398))

(assert (not bs!1168188))

(assert (not d!1551310))

(assert (not b!4839394))

(assert (not bm!337271))

(assert (not b!4839440))

(assert (not b!4839386))

(assert (not b!4839437))

(assert (not b!4839417))

(assert (not b!4839411))

(assert (not b!4839382))

(assert (not bm!337272))

(assert (not b_lambda!191289))

(assert tp_is_empty!34905)

(assert (not b!4839387))

(assert (not d!1551318))

(assert (not b!4839439))

(assert (not d!1551322))

(assert (not b!4839445))

(assert (not b!4839395))

(assert (not b!4839390))

(assert (not b!4839442))

(assert (not b!4839428))

(assert (not d!1551330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

