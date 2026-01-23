; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504426 () Bool)

(assert start!504426)

(declare-fun b!4844537 () Bool)

(declare-fun e!3027838 () Bool)

(declare-datatypes ((K!17197 0))(
  ( (K!17198 (val!22063 Int)) )
))
(declare-datatypes ((V!17443 0))(
  ( (V!17444 (val!22064 Int)) )
))
(declare-datatypes ((tuple2!58998 0))(
  ( (tuple2!58999 (_1!32793 K!17197) (_2!32793 V!17443)) )
))
(declare-datatypes ((List!55555 0))(
  ( (Nil!55431) (Cons!55431 (h!61868 tuple2!58998) (t!363051 List!55555)) )
))
(declare-datatypes ((tuple2!59000 0))(
  ( (tuple2!59001 (_1!32794 (_ BitVec 64)) (_2!32794 List!55555)) )
))
(declare-datatypes ((List!55556 0))(
  ( (Nil!55432) (Cons!55432 (h!61869 tuple2!59000) (t!363052 List!55556)) )
))
(declare-datatypes ((ListLongMap!6365 0))(
  ( (ListLongMap!6366 (toList!7809 List!55556)) )
))
(declare-fun lm!2671 () ListLongMap!6365)

(declare-fun key!6540 () K!17197)

(declare-fun containsKey!4624 (List!55555 K!17197) Bool)

(assert (=> b!4844537 (= e!3027838 (not (containsKey!4624 (_2!32794 (h!61869 (toList!7809 lm!2671))) key!6540)))))

(declare-fun b!4844539 () Bool)

(declare-fun res!2066183 () Bool)

(declare-fun e!3027836 () Bool)

(assert (=> b!4844539 (=> (not res!2066183) (not e!3027836))))

(declare-datatypes ((Hashable!7451 0))(
  ( (HashableExt!7450 (__x!33726 Int)) )
))
(declare-fun hashF!1662 () Hashable!7451)

(declare-fun allKeysSameHashInMap!2767 (ListLongMap!6365 Hashable!7451) Bool)

(assert (=> b!4844539 (= res!2066183 (allKeysSameHashInMap!2767 lm!2671 hashF!1662))))

(declare-fun b!4844540 () Bool)

(declare-fun e!3027837 () Bool)

(declare-fun tp!1364093 () Bool)

(assert (=> b!4844540 (= e!3027837 tp!1364093)))

(declare-fun b!4844541 () Bool)

(declare-fun res!2066187 () Bool)

(assert (=> b!4844541 (=> (not res!2066187) (not e!3027836))))

(declare-fun containsKeyBiggerList!735 (List!55556 K!17197) Bool)

(assert (=> b!4844541 (= res!2066187 (containsKeyBiggerList!735 (toList!7809 lm!2671) key!6540))))

(declare-fun res!2066188 () Bool)

(assert (=> start!504426 (=> (not res!2066188) (not e!3027836))))

(declare-fun lambda!242139 () Int)

(declare-fun forall!12890 (List!55556 Int) Bool)

(assert (=> start!504426 (= res!2066188 (forall!12890 (toList!7809 lm!2671) lambda!242139))))

(assert (=> start!504426 e!3027836))

(declare-fun inv!71098 (ListLongMap!6365) Bool)

(assert (=> start!504426 (and (inv!71098 lm!2671) e!3027837)))

(assert (=> start!504426 true))

(declare-fun tp_is_empty!35013 () Bool)

(assert (=> start!504426 tp_is_empty!35013))

(declare-fun b!4844538 () Bool)

(declare-fun res!2066185 () Bool)

(assert (=> b!4844538 (=> (not res!2066185) (not e!3027836))))

(assert (=> b!4844538 (= res!2066185 (not (is-Cons!55432 (toList!7809 lm!2671))))))

(declare-fun b!4844542 () Bool)

(declare-datatypes ((ListMap!7147 0))(
  ( (ListMap!7148 (toList!7810 List!55555)) )
))
(declare-fun contains!19133 (ListMap!7147 K!17197) Bool)

(declare-fun extractMap!2793 (List!55556) ListMap!7147)

(assert (=> b!4844542 (= e!3027836 (not (contains!19133 (extractMap!2793 (toList!7809 lm!2671)) key!6540)))))

(declare-fun b!4844543 () Bool)

(declare-fun res!2066184 () Bool)

(assert (=> b!4844543 (=> (not res!2066184) (not e!3027836))))

(assert (=> b!4844543 (= res!2066184 e!3027838)))

(declare-fun res!2066186 () Bool)

(assert (=> b!4844543 (=> res!2066186 e!3027838)))

(assert (=> b!4844543 (= res!2066186 (not (is-Cons!55432 (toList!7809 lm!2671))))))

(assert (= (and start!504426 res!2066188) b!4844539))

(assert (= (and b!4844539 res!2066183) b!4844541))

(assert (= (and b!4844541 res!2066187) b!4844543))

(assert (= (and b!4844543 (not res!2066186)) b!4844537))

(assert (= (and b!4844543 res!2066184) b!4844538))

(assert (= (and b!4844538 res!2066185) b!4844542))

(assert (= start!504426 b!4844540))

(declare-fun m!5843152 () Bool)

(assert (=> b!4844539 m!5843152))

(declare-fun m!5843154 () Bool)

(assert (=> b!4844542 m!5843154))

(assert (=> b!4844542 m!5843154))

(declare-fun m!5843156 () Bool)

(assert (=> b!4844542 m!5843156))

(declare-fun m!5843158 () Bool)

(assert (=> b!4844541 m!5843158))

(declare-fun m!5843160 () Bool)

(assert (=> b!4844537 m!5843160))

(declare-fun m!5843162 () Bool)

(assert (=> start!504426 m!5843162))

(declare-fun m!5843164 () Bool)

(assert (=> start!504426 m!5843164))

(push 1)

(assert (not b!4844540))

(assert (not b!4844541))

(assert (not b!4844537))

(assert (not b!4844542))

(assert tp_is_empty!35013)

(assert (not start!504426))

(assert (not b!4844539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1172206 () Bool)

(declare-fun d!1554257 () Bool)

(assert (= bs!1172206 (and d!1554257 start!504426)))

(declare-fun lambda!242145 () Int)

(assert (=> bs!1172206 (not (= lambda!242145 lambda!242139))))

(assert (=> d!1554257 true))

(assert (=> d!1554257 (= (allKeysSameHashInMap!2767 lm!2671 hashF!1662) (forall!12890 (toList!7809 lm!2671) lambda!242145))))

(declare-fun bs!1172207 () Bool)

(assert (= bs!1172207 d!1554257))

(declare-fun m!5843180 () Bool)

(assert (=> bs!1172207 m!5843180))

(assert (=> b!4844539 d!1554257))

(declare-fun d!1554259 () Bool)

(declare-fun res!2066211 () Bool)

(declare-fun e!3027852 () Bool)

(assert (=> d!1554259 (=> res!2066211 e!3027852)))

(assert (=> d!1554259 (= res!2066211 (is-Nil!55432 (toList!7809 lm!2671)))))

(assert (=> d!1554259 (= (forall!12890 (toList!7809 lm!2671) lambda!242139) e!3027852)))

(declare-fun b!4844571 () Bool)

(declare-fun e!3027853 () Bool)

(assert (=> b!4844571 (= e!3027852 e!3027853)))

(declare-fun res!2066212 () Bool)

(assert (=> b!4844571 (=> (not res!2066212) (not e!3027853))))

(declare-fun dynLambda!22323 (Int tuple2!59000) Bool)

(assert (=> b!4844571 (= res!2066212 (dynLambda!22323 lambda!242139 (h!61869 (toList!7809 lm!2671))))))

(declare-fun b!4844572 () Bool)

(assert (=> b!4844572 (= e!3027853 (forall!12890 (t!363052 (toList!7809 lm!2671)) lambda!242139))))

(assert (= (and d!1554259 (not res!2066211)) b!4844571))

(assert (= (and b!4844571 res!2066212) b!4844572))

(declare-fun b_lambda!192235 () Bool)

(assert (=> (not b_lambda!192235) (not b!4844571)))

(declare-fun m!5843182 () Bool)

(assert (=> b!4844571 m!5843182))

(declare-fun m!5843184 () Bool)

(assert (=> b!4844572 m!5843184))

(assert (=> start!504426 d!1554259))

(declare-fun d!1554261 () Bool)

(declare-fun isStrictlySorted!1057 (List!55556) Bool)

(assert (=> d!1554261 (= (inv!71098 lm!2671) (isStrictlySorted!1057 (toList!7809 lm!2671)))))

(declare-fun bs!1172208 () Bool)

(assert (= bs!1172208 d!1554261))

(declare-fun m!5843186 () Bool)

(assert (=> bs!1172208 m!5843186))

(assert (=> start!504426 d!1554261))

(declare-fun d!1554263 () Bool)

(declare-fun res!2066221 () Bool)

(declare-fun e!3027861 () Bool)

(assert (=> d!1554263 (=> res!2066221 e!3027861)))

(declare-fun e!3027860 () Bool)

(assert (=> d!1554263 (= res!2066221 e!3027860)))

(declare-fun res!2066219 () Bool)

(assert (=> d!1554263 (=> (not res!2066219) (not e!3027860))))

(assert (=> d!1554263 (= res!2066219 (is-Cons!55432 (toList!7809 lm!2671)))))

(assert (=> d!1554263 (= (containsKeyBiggerList!735 (toList!7809 lm!2671) key!6540) e!3027861)))

(declare-fun b!4844579 () Bool)

(assert (=> b!4844579 (= e!3027860 (containsKey!4624 (_2!32794 (h!61869 (toList!7809 lm!2671))) key!6540))))

(declare-fun b!4844580 () Bool)

(declare-fun e!3027862 () Bool)

(assert (=> b!4844580 (= e!3027861 e!3027862)))

(declare-fun res!2066220 () Bool)

(assert (=> b!4844580 (=> (not res!2066220) (not e!3027862))))

(assert (=> b!4844580 (= res!2066220 (is-Cons!55432 (toList!7809 lm!2671)))))

(declare-fun b!4844581 () Bool)

(assert (=> b!4844581 (= e!3027862 (containsKeyBiggerList!735 (t!363052 (toList!7809 lm!2671)) key!6540))))

(assert (= (and d!1554263 res!2066219) b!4844579))

(assert (= (and d!1554263 (not res!2066221)) b!4844580))

(assert (= (and b!4844580 res!2066220) b!4844581))

(assert (=> b!4844579 m!5843160))

(declare-fun m!5843188 () Bool)

(assert (=> b!4844581 m!5843188))

(assert (=> b!4844541 d!1554263))

(declare-fun d!1554265 () Bool)

(declare-fun res!2066226 () Bool)

(declare-fun e!3027867 () Bool)

(assert (=> d!1554265 (=> res!2066226 e!3027867)))

(assert (=> d!1554265 (= res!2066226 (and (is-Cons!55431 (_2!32794 (h!61869 (toList!7809 lm!2671)))) (= (_1!32793 (h!61868 (_2!32794 (h!61869 (toList!7809 lm!2671))))) key!6540)))))

(assert (=> d!1554265 (= (containsKey!4624 (_2!32794 (h!61869 (toList!7809 lm!2671))) key!6540) e!3027867)))

(declare-fun b!4844586 () Bool)

(declare-fun e!3027868 () Bool)

(assert (=> b!4844586 (= e!3027867 e!3027868)))

(declare-fun res!2066227 () Bool)

(assert (=> b!4844586 (=> (not res!2066227) (not e!3027868))))

(assert (=> b!4844586 (= res!2066227 (is-Cons!55431 (_2!32794 (h!61869 (toList!7809 lm!2671)))))))

(declare-fun b!4844587 () Bool)

(assert (=> b!4844587 (= e!3027868 (containsKey!4624 (t!363051 (_2!32794 (h!61869 (toList!7809 lm!2671)))) key!6540))))

(assert (= (and d!1554265 (not res!2066226)) b!4844586))

(assert (= (and b!4844586 res!2066227) b!4844587))

(declare-fun m!5843190 () Bool)

(assert (=> b!4844587 m!5843190))

(assert (=> b!4844537 d!1554265))

(declare-fun b!4844609 () Bool)

(declare-fun e!3027883 () Bool)

(declare-datatypes ((List!55559 0))(
  ( (Nil!55435) (Cons!55435 (h!61872 K!17197) (t!363055 List!55559)) )
))
(declare-fun contains!19135 (List!55559 K!17197) Bool)

(declare-fun keys!20503 (ListMap!7147) List!55559)

(assert (=> b!4844609 (= e!3027883 (contains!19135 (keys!20503 (extractMap!2793 (toList!7809 lm!2671))) key!6540))))

(declare-fun b!4844610 () Bool)

(declare-fun e!3027884 () List!55559)

(assert (=> b!4844610 (= e!3027884 (keys!20503 (extractMap!2793 (toList!7809 lm!2671))))))

(declare-fun b!4844611 () Bool)

(declare-datatypes ((Unit!145615 0))(
  ( (Unit!145616) )
))
(declare-fun e!3027882 () Unit!145615)

(declare-fun e!3027886 () Unit!145615)

(assert (=> b!4844611 (= e!3027882 e!3027886)))

(declare-fun c!824897 () Bool)

(declare-fun call!337678 () Bool)

(assert (=> b!4844611 (= c!824897 call!337678)))

(declare-fun b!4844612 () Bool)

(declare-fun getKeysList!1216 (List!55555) List!55559)

(assert (=> b!4844612 (= e!3027884 (getKeysList!1216 (toList!7810 (extractMap!2793 (toList!7809 lm!2671)))))))

(declare-fun bm!337673 () Bool)

(assert (=> bm!337673 (= call!337678 (contains!19135 e!3027884 key!6540))))

(declare-fun c!824899 () Bool)

(declare-fun c!824898 () Bool)

(assert (=> bm!337673 (= c!824899 c!824898)))

(declare-fun b!4844613 () Bool)

(declare-fun lt!1987852 () Unit!145615)

(assert (=> b!4844613 (= e!3027882 lt!1987852)))

(declare-fun lt!1987848 () Unit!145615)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2489 (List!55555 K!17197) Unit!145615)

(assert (=> b!4844613 (= lt!1987848 (lemmaContainsKeyImpliesGetValueByKeyDefined!2489 (toList!7810 (extractMap!2793 (toList!7809 lm!2671))) key!6540))))

(declare-datatypes ((Option!13623 0))(
  ( (None!13622) (Some!13622 (v!49366 V!17443)) )
))
(declare-fun isDefined!10716 (Option!13623) Bool)

(declare-fun getValueByKey!2717 (List!55555 K!17197) Option!13623)

(assert (=> b!4844613 (isDefined!10716 (getValueByKey!2717 (toList!7810 (extractMap!2793 (toList!7809 lm!2671))) key!6540))))

(declare-fun lt!1987850 () Unit!145615)

(assert (=> b!4844613 (= lt!1987850 lt!1987848)))

(declare-fun lemmaInListThenGetKeysListContains!1211 (List!55555 K!17197) Unit!145615)

(assert (=> b!4844613 (= lt!1987852 (lemmaInListThenGetKeysListContains!1211 (toList!7810 (extractMap!2793 (toList!7809 lm!2671))) key!6540))))

(assert (=> b!4844613 call!337678))

(declare-fun b!4844614 () Bool)

(assert (=> b!4844614 false))

(declare-fun lt!1987851 () Unit!145615)

(declare-fun lt!1987847 () Unit!145615)

(assert (=> b!4844614 (= lt!1987851 lt!1987847)))

(declare-fun containsKey!4626 (List!55555 K!17197) Bool)

(assert (=> b!4844614 (containsKey!4626 (toList!7810 (extractMap!2793 (toList!7809 lm!2671))) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1216 (List!55555 K!17197) Unit!145615)

(assert (=> b!4844614 (= lt!1987847 (lemmaInGetKeysListThenContainsKey!1216 (toList!7810 (extractMap!2793 (toList!7809 lm!2671))) key!6540))))

(declare-fun Unit!145617 () Unit!145615)

(assert (=> b!4844614 (= e!3027886 Unit!145617)))

(declare-fun d!1554267 () Bool)

(declare-fun e!3027885 () Bool)

(assert (=> d!1554267 e!3027885))

(declare-fun res!2066236 () Bool)

(assert (=> d!1554267 (=> res!2066236 e!3027885)))

(declare-fun e!3027881 () Bool)

(assert (=> d!1554267 (= res!2066236 e!3027881)))

(declare-fun res!2066235 () Bool)

(assert (=> d!1554267 (=> (not res!2066235) (not e!3027881))))

(declare-fun lt!1987853 () Bool)

(assert (=> d!1554267 (= res!2066235 (not lt!1987853))))

(declare-fun lt!1987849 () Bool)

(assert (=> d!1554267 (= lt!1987853 lt!1987849)))

(declare-fun lt!1987846 () Unit!145615)

(assert (=> d!1554267 (= lt!1987846 e!3027882)))

(assert (=> d!1554267 (= c!824898 lt!1987849)))

(assert (=> d!1554267 (= lt!1987849 (containsKey!4626 (toList!7810 (extractMap!2793 (toList!7809 lm!2671))) key!6540))))

(assert (=> d!1554267 (= (contains!19133 (extractMap!2793 (toList!7809 lm!2671)) key!6540) lt!1987853)))

(declare-fun b!4844608 () Bool)

(assert (=> b!4844608 (= e!3027885 e!3027883)))

(declare-fun res!2066234 () Bool)

(assert (=> b!4844608 (=> (not res!2066234) (not e!3027883))))

(assert (=> b!4844608 (= res!2066234 (isDefined!10716 (getValueByKey!2717 (toList!7810 (extractMap!2793 (toList!7809 lm!2671))) key!6540)))))

(declare-fun b!4844615 () Bool)

(assert (=> b!4844615 (= e!3027881 (not (contains!19135 (keys!20503 (extractMap!2793 (toList!7809 lm!2671))) key!6540)))))

(declare-fun b!4844616 () Bool)

(declare-fun Unit!145618 () Unit!145615)

(assert (=> b!4844616 (= e!3027886 Unit!145618)))

(assert (= (and d!1554267 c!824898) b!4844613))

(assert (= (and d!1554267 (not c!824898)) b!4844611))

(assert (= (and b!4844611 c!824897) b!4844614))

(assert (= (and b!4844611 (not c!824897)) b!4844616))

(assert (= (or b!4844613 b!4844611) bm!337673))

(assert (= (and bm!337673 c!824899) b!4844612))

(assert (= (and bm!337673 (not c!824899)) b!4844610))

(assert (= (and d!1554267 res!2066235) b!4844615))

(assert (= (and d!1554267 (not res!2066236)) b!4844608))

(assert (= (and b!4844608 res!2066234) b!4844609))

(declare-fun m!5843194 () Bool)

(assert (=> bm!337673 m!5843194))

(declare-fun m!5843196 () Bool)

(assert (=> b!4844608 m!5843196))

(assert (=> b!4844608 m!5843196))

(declare-fun m!5843198 () Bool)

(assert (=> b!4844608 m!5843198))

(declare-fun m!5843200 () Bool)

(assert (=> b!4844613 m!5843200))

(assert (=> b!4844613 m!5843196))

(assert (=> b!4844613 m!5843196))

(assert (=> b!4844613 m!5843198))

(declare-fun m!5843202 () Bool)

(assert (=> b!4844613 m!5843202))

(declare-fun m!5843204 () Bool)

(assert (=> d!1554267 m!5843204))

(assert (=> b!4844610 m!5843154))

(declare-fun m!5843206 () Bool)

(assert (=> b!4844610 m!5843206))

(assert (=> b!4844609 m!5843154))

(assert (=> b!4844609 m!5843206))

(assert (=> b!4844609 m!5843206))

(declare-fun m!5843208 () Bool)

(assert (=> b!4844609 m!5843208))

(declare-fun m!5843210 () Bool)

(assert (=> b!4844612 m!5843210))

(assert (=> b!4844614 m!5843204))

(declare-fun m!5843212 () Bool)

(assert (=> b!4844614 m!5843212))

(assert (=> b!4844615 m!5843154))

(assert (=> b!4844615 m!5843206))

(assert (=> b!4844615 m!5843206))

(assert (=> b!4844615 m!5843208))

(assert (=> b!4844542 d!1554267))

(declare-fun bs!1172211 () Bool)

(declare-fun d!1554273 () Bool)

(assert (= bs!1172211 (and d!1554273 start!504426)))

(declare-fun lambda!242151 () Int)

(assert (=> bs!1172211 (= lambda!242151 lambda!242139)))

(declare-fun bs!1172212 () Bool)

(assert (= bs!1172212 (and d!1554273 d!1554257)))

(assert (=> bs!1172212 (not (= lambda!242151 lambda!242145))))

(declare-fun lt!1987856 () ListMap!7147)

(declare-fun invariantList!1890 (List!55555) Bool)

(assert (=> d!1554273 (invariantList!1890 (toList!7810 lt!1987856))))

(declare-fun e!3027889 () ListMap!7147)

(assert (=> d!1554273 (= lt!1987856 e!3027889)))

(declare-fun c!824902 () Bool)

(assert (=> d!1554273 (= c!824902 (is-Cons!55432 (toList!7809 lm!2671)))))

(assert (=> d!1554273 (forall!12890 (toList!7809 lm!2671) lambda!242151)))

(assert (=> d!1554273 (= (extractMap!2793 (toList!7809 lm!2671)) lt!1987856)))

(declare-fun b!4844621 () Bool)

(declare-fun addToMapMapFromBucket!1933 (List!55555 ListMap!7147) ListMap!7147)

(assert (=> b!4844621 (= e!3027889 (addToMapMapFromBucket!1933 (_2!32794 (h!61869 (toList!7809 lm!2671))) (extractMap!2793 (t!363052 (toList!7809 lm!2671)))))))

(declare-fun b!4844622 () Bool)

(assert (=> b!4844622 (= e!3027889 (ListMap!7148 Nil!55431))))

(assert (= (and d!1554273 c!824902) b!4844621))

(assert (= (and d!1554273 (not c!824902)) b!4844622))

(declare-fun m!5843214 () Bool)

(assert (=> d!1554273 m!5843214))

(declare-fun m!5843216 () Bool)

(assert (=> d!1554273 m!5843216))

(declare-fun m!5843218 () Bool)

(assert (=> b!4844621 m!5843218))

(assert (=> b!4844621 m!5843218))

(declare-fun m!5843220 () Bool)

(assert (=> b!4844621 m!5843220))

(assert (=> b!4844542 d!1554273))

(declare-fun b!4844627 () Bool)

(declare-fun e!3027892 () Bool)

(declare-fun tp!1364101 () Bool)

(declare-fun tp!1364102 () Bool)

(assert (=> b!4844627 (= e!3027892 (and tp!1364101 tp!1364102))))

(assert (=> b!4844540 (= tp!1364093 e!3027892)))

(assert (= (and b!4844540 (is-Cons!55432 (toList!7809 lm!2671))) b!4844627))

(declare-fun b_lambda!192237 () Bool)

(assert (= b_lambda!192235 (or start!504426 b_lambda!192237)))

(declare-fun bs!1172213 () Bool)

(declare-fun d!1554275 () Bool)

(assert (= bs!1172213 (and d!1554275 start!504426)))

(declare-fun noDuplicateKeys!2558 (List!55555) Bool)

(assert (=> bs!1172213 (= (dynLambda!22323 lambda!242139 (h!61869 (toList!7809 lm!2671))) (noDuplicateKeys!2558 (_2!32794 (h!61869 (toList!7809 lm!2671)))))))

(declare-fun m!5843222 () Bool)

(assert (=> bs!1172213 m!5843222))

(assert (=> b!4844571 d!1554275))

(push 1)

(assert (not b!4844627))

(assert (not d!1554261))

(assert (not bs!1172213))

(assert (not b!4844608))

(assert (not d!1554273))

(assert (not d!1554267))

(assert (not b!4844614))

(assert (not b!4844621))

(assert (not b!4844581))

(assert (not b!4844587))

(assert (not b!4844613))

(assert (not b!4844610))

(assert (not d!1554257))

(assert (not b!4844572))

(assert (not b!4844615))

(assert (not b!4844612))

(assert (not b_lambda!192237))

(assert (not bm!337673))

(assert (not b!4844579))

(assert tp_is_empty!35013)

(assert (not b!4844609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

