; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503794 () Bool)

(assert start!503794)

(declare-fun b!4840718 () Bool)

(declare-fun e!3025239 () Bool)

(declare-datatypes ((K!17137 0))(
  ( (K!17138 (val!22015 Int)) )
))
(declare-datatypes ((V!17383 0))(
  ( (V!17384 (val!22016 Int)) )
))
(declare-datatypes ((tuple2!58902 0))(
  ( (tuple2!58903 (_1!32745 K!17137) (_2!32745 V!17383)) )
))
(declare-datatypes ((List!55500 0))(
  ( (Nil!55376) (Cons!55376 (h!61811 tuple2!58902) (t!362996 List!55500)) )
))
(declare-datatypes ((tuple2!58904 0))(
  ( (tuple2!58905 (_1!32746 (_ BitVec 64)) (_2!32746 List!55500)) )
))
(declare-datatypes ((List!55501 0))(
  ( (Nil!55377) (Cons!55377 (h!61812 tuple2!58904) (t!362997 List!55501)) )
))
(declare-datatypes ((ListLongMap!6317 0))(
  ( (ListLongMap!6318 (toList!7761 List!55501)) )
))
(declare-fun lm!2671 () ListLongMap!6317)

(declare-datatypes ((ListMap!7099 0))(
  ( (ListMap!7100 (toList!7762 List!55500)) )
))
(declare-fun extractMap!2769 (List!55501) ListMap!7099)

(declare-fun addToMapMapFromBucket!1909 (List!55500 ListMap!7099) ListMap!7099)

(assert (=> b!4840718 (= e!3025239 (not (= (extractMap!2769 (toList!7761 lm!2671)) (addToMapMapFromBucket!1909 (_2!32746 (h!61812 (toList!7761 lm!2671))) (extractMap!2769 (t!362997 (toList!7761 lm!2671)))))))))

(declare-fun e!3025238 () Bool)

(assert (=> b!4840718 e!3025238))

(declare-fun res!2063757 () Bool)

(assert (=> b!4840718 (=> (not res!2063757) (not e!3025238))))

(declare-fun lt!1984820 () tuple2!58902)

(declare-fun contains!19098 (List!55500 tuple2!58902) Bool)

(declare-fun head!10389 (List!55501) tuple2!58904)

(assert (=> b!4840718 (= res!2063757 (contains!19098 (_2!32746 (head!10389 (toList!7761 lm!2671))) lt!1984820))))

(declare-fun key!6540 () K!17137)

(declare-fun lt!1984819 () V!17383)

(assert (=> b!4840718 (= lt!1984820 (tuple2!58903 key!6540 lt!1984819))))

(declare-datatypes ((Unit!145022 0))(
  ( (Unit!145023) )
))
(declare-fun lt!1984821 () Unit!145022)

(declare-datatypes ((Hashable!7427 0))(
  ( (HashableExt!7426 (__x!33702 Int)) )
))
(declare-fun hashF!1662 () Hashable!7427)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!17 (ListLongMap!6317 K!17137 V!17383 Hashable!7427) Unit!145022)

(assert (=> b!4840718 (= lt!1984821 (lemmaInPairListHeadThenGetValueInTuple!17 lm!2671 key!6540 lt!1984819 hashF!1662))))

(declare-fun getValue!195 (List!55501 K!17137) V!17383)

(assert (=> b!4840718 (= lt!1984819 (getValue!195 (toList!7761 lm!2671) key!6540))))

(declare-fun b!4840719 () Bool)

(declare-fun res!2063756 () Bool)

(assert (=> b!4840719 (=> (not res!2063756) (not e!3025239))))

(declare-fun containsKey!4593 (List!55500 K!17137) Bool)

(assert (=> b!4840719 (= res!2063756 (containsKey!4593 (_2!32746 (h!61812 (toList!7761 lm!2671))) key!6540))))

(declare-fun b!4840720 () Bool)

(declare-fun e!3025237 () Bool)

(declare-fun tp!1363885 () Bool)

(assert (=> b!4840720 (= e!3025237 tp!1363885)))

(declare-fun b!4840721 () Bool)

(declare-fun res!2063755 () Bool)

(assert (=> b!4840721 (=> (not res!2063755) (not e!3025239))))

(assert (=> b!4840721 (= res!2063755 (is-Cons!55377 (toList!7761 lm!2671)))))

(declare-fun b!4840722 () Bool)

(assert (=> b!4840722 (= e!3025238 (contains!19098 (_2!32746 (h!61812 (toList!7761 lm!2671))) lt!1984820))))

(declare-fun res!2063752 () Bool)

(assert (=> start!503794 (=> (not res!2063752) (not e!3025239))))

(declare-fun lambda!241000 () Int)

(declare-fun forall!12851 (List!55501 Int) Bool)

(assert (=> start!503794 (= res!2063752 (forall!12851 (toList!7761 lm!2671) lambda!241000))))

(assert (=> start!503794 e!3025239))

(declare-fun inv!71038 (ListLongMap!6317) Bool)

(assert (=> start!503794 (and (inv!71038 lm!2671) e!3025237)))

(assert (=> start!503794 true))

(declare-fun tp_is_empty!34957 () Bool)

(assert (=> start!503794 tp_is_empty!34957))

(declare-fun b!4840723 () Bool)

(declare-fun res!2063753 () Bool)

(assert (=> b!4840723 (=> (not res!2063753) (not e!3025239))))

(declare-fun containsKeyBiggerList!711 (List!55501 K!17137) Bool)

(assert (=> b!4840723 (= res!2063753 (containsKeyBiggerList!711 (toList!7761 lm!2671) key!6540))))

(declare-fun b!4840724 () Bool)

(declare-fun res!2063754 () Bool)

(assert (=> b!4840724 (=> (not res!2063754) (not e!3025239))))

(declare-fun allKeysSameHashInMap!2743 (ListLongMap!6317 Hashable!7427) Bool)

(assert (=> b!4840724 (= res!2063754 (allKeysSameHashInMap!2743 lm!2671 hashF!1662))))

(assert (= (and start!503794 res!2063752) b!4840724))

(assert (= (and b!4840724 res!2063754) b!4840723))

(assert (= (and b!4840723 res!2063753) b!4840721))

(assert (= (and b!4840721 res!2063755) b!4840719))

(assert (= (and b!4840719 res!2063756) b!4840718))

(assert (= (and b!4840718 res!2063757) b!4840722))

(assert (= start!503794 b!4840720))

(declare-fun m!5836382 () Bool)

(assert (=> b!4840718 m!5836382))

(declare-fun m!5836384 () Bool)

(assert (=> b!4840718 m!5836384))

(declare-fun m!5836386 () Bool)

(assert (=> b!4840718 m!5836386))

(declare-fun m!5836388 () Bool)

(assert (=> b!4840718 m!5836388))

(declare-fun m!5836390 () Bool)

(assert (=> b!4840718 m!5836390))

(declare-fun m!5836392 () Bool)

(assert (=> b!4840718 m!5836392))

(declare-fun m!5836394 () Bool)

(assert (=> b!4840718 m!5836394))

(assert (=> b!4840718 m!5836388))

(declare-fun m!5836396 () Bool)

(assert (=> b!4840723 m!5836396))

(declare-fun m!5836398 () Bool)

(assert (=> b!4840724 m!5836398))

(declare-fun m!5836400 () Bool)

(assert (=> b!4840722 m!5836400))

(declare-fun m!5836402 () Bool)

(assert (=> start!503794 m!5836402))

(declare-fun m!5836404 () Bool)

(assert (=> start!503794 m!5836404))

(declare-fun m!5836406 () Bool)

(assert (=> b!4840719 m!5836406))

(push 1)

(assert (not b!4840724))

(assert tp_is_empty!34957)

(assert (not b!4840719))

(assert (not b!4840723))

(assert (not start!503794))

(assert (not b!4840722))

(assert (not b!4840720))

(assert (not b!4840718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1551671 () Bool)

(declare-fun lt!1984833 () Bool)

(declare-fun content!9854 (List!55500) (Set tuple2!58902))

(assert (=> d!1551671 (= lt!1984833 (set.member lt!1984820 (content!9854 (_2!32746 (h!61812 (toList!7761 lm!2671))))))))

(declare-fun e!3025253 () Bool)

(assert (=> d!1551671 (= lt!1984833 e!3025253)))

(declare-fun res!2063781 () Bool)

(assert (=> d!1551671 (=> (not res!2063781) (not e!3025253))))

(assert (=> d!1551671 (= res!2063781 (is-Cons!55376 (_2!32746 (h!61812 (toList!7761 lm!2671)))))))

(assert (=> d!1551671 (= (contains!19098 (_2!32746 (h!61812 (toList!7761 lm!2671))) lt!1984820) lt!1984833)))

(declare-fun b!4840750 () Bool)

(declare-fun e!3025254 () Bool)

(assert (=> b!4840750 (= e!3025253 e!3025254)))

(declare-fun res!2063780 () Bool)

(assert (=> b!4840750 (=> res!2063780 e!3025254)))

(assert (=> b!4840750 (= res!2063780 (= (h!61811 (_2!32746 (h!61812 (toList!7761 lm!2671)))) lt!1984820))))

(declare-fun b!4840751 () Bool)

(assert (=> b!4840751 (= e!3025254 (contains!19098 (t!362996 (_2!32746 (h!61812 (toList!7761 lm!2671)))) lt!1984820))))

(assert (= (and d!1551671 res!2063781) b!4840750))

(assert (= (and b!4840750 (not res!2063780)) b!4840751))

(declare-fun m!5836434 () Bool)

(assert (=> d!1551671 m!5836434))

(declare-fun m!5836436 () Bool)

(assert (=> d!1551671 m!5836436))

(declare-fun m!5836438 () Bool)

(assert (=> b!4840751 m!5836438))

(assert (=> b!4840722 d!1551671))

(declare-fun bs!1168390 () Bool)

(declare-fun d!1551673 () Bool)

(assert (= bs!1168390 (and d!1551673 start!503794)))

(declare-fun lambda!241006 () Int)

(assert (=> bs!1168390 (not (= lambda!241006 lambda!241000))))

(assert (=> d!1551673 true))

(assert (=> d!1551673 (= (allKeysSameHashInMap!2743 lm!2671 hashF!1662) (forall!12851 (toList!7761 lm!2671) lambda!241006))))

(declare-fun bs!1168391 () Bool)

(assert (= bs!1168391 d!1551673))

(declare-fun m!5836440 () Bool)

(assert (=> bs!1168391 m!5836440))

(assert (=> b!4840724 d!1551673))

(declare-fun d!1551675 () Bool)

(declare-fun res!2063789 () Bool)

(declare-fun e!3025261 () Bool)

(assert (=> d!1551675 (=> res!2063789 e!3025261)))

(declare-fun e!3025262 () Bool)

(assert (=> d!1551675 (= res!2063789 e!3025262)))

(declare-fun res!2063788 () Bool)

(assert (=> d!1551675 (=> (not res!2063788) (not e!3025262))))

(assert (=> d!1551675 (= res!2063788 (is-Cons!55377 (toList!7761 lm!2671)))))

(assert (=> d!1551675 (= (containsKeyBiggerList!711 (toList!7761 lm!2671) key!6540) e!3025261)))

(declare-fun b!4840760 () Bool)

(assert (=> b!4840760 (= e!3025262 (containsKey!4593 (_2!32746 (h!61812 (toList!7761 lm!2671))) key!6540))))

(declare-fun b!4840761 () Bool)

(declare-fun e!3025263 () Bool)

(assert (=> b!4840761 (= e!3025261 e!3025263)))

(declare-fun res!2063790 () Bool)

(assert (=> b!4840761 (=> (not res!2063790) (not e!3025263))))

(assert (=> b!4840761 (= res!2063790 (is-Cons!55377 (toList!7761 lm!2671)))))

(declare-fun b!4840762 () Bool)

(assert (=> b!4840762 (= e!3025263 (containsKeyBiggerList!711 (t!362997 (toList!7761 lm!2671)) key!6540))))

(assert (= (and d!1551675 res!2063788) b!4840760))

(assert (= (and d!1551675 (not res!2063789)) b!4840761))

(assert (= (and b!4840761 res!2063790) b!4840762))

(assert (=> b!4840760 m!5836406))

(declare-fun m!5836442 () Bool)

(assert (=> b!4840762 m!5836442))

(assert (=> b!4840723 d!1551675))

(declare-fun d!1551677 () Bool)

(declare-fun res!2063795 () Bool)

(declare-fun e!3025268 () Bool)

(assert (=> d!1551677 (=> res!2063795 e!3025268)))

(assert (=> d!1551677 (= res!2063795 (is-Nil!55377 (toList!7761 lm!2671)))))

(assert (=> d!1551677 (= (forall!12851 (toList!7761 lm!2671) lambda!241000) e!3025268)))

(declare-fun b!4840767 () Bool)

(declare-fun e!3025269 () Bool)

(assert (=> b!4840767 (= e!3025268 e!3025269)))

(declare-fun res!2063796 () Bool)

(assert (=> b!4840767 (=> (not res!2063796) (not e!3025269))))

(declare-fun dynLambda!22300 (Int tuple2!58904) Bool)

(assert (=> b!4840767 (= res!2063796 (dynLambda!22300 lambda!241000 (h!61812 (toList!7761 lm!2671))))))

(declare-fun b!4840768 () Bool)

(assert (=> b!4840768 (= e!3025269 (forall!12851 (t!362997 (toList!7761 lm!2671)) lambda!241000))))

(assert (= (and d!1551677 (not res!2063795)) b!4840767))

(assert (= (and b!4840767 res!2063796) b!4840768))

(declare-fun b_lambda!191347 () Bool)

(assert (=> (not b_lambda!191347) (not b!4840767)))

(declare-fun m!5836444 () Bool)

(assert (=> b!4840767 m!5836444))

(declare-fun m!5836446 () Bool)

(assert (=> b!4840768 m!5836446))

(assert (=> start!503794 d!1551677))

(declare-fun d!1551679 () Bool)

(declare-fun isStrictlySorted!1045 (List!55501) Bool)

(assert (=> d!1551679 (= (inv!71038 lm!2671) (isStrictlySorted!1045 (toList!7761 lm!2671)))))

(declare-fun bs!1168392 () Bool)

(assert (= bs!1168392 d!1551679))

(declare-fun m!5836448 () Bool)

(assert (=> bs!1168392 m!5836448))

(assert (=> start!503794 d!1551679))

(declare-fun d!1551681 () Bool)

(assert (=> d!1551681 (= (head!10389 (toList!7761 lm!2671)) (h!61812 (toList!7761 lm!2671)))))

(assert (=> b!4840718 d!1551681))

(declare-fun bs!1168393 () Bool)

(declare-fun d!1551683 () Bool)

(assert (= bs!1168393 (and d!1551683 start!503794)))

(declare-fun lambda!241009 () Int)

(assert (=> bs!1168393 (= lambda!241009 lambda!241000)))

(declare-fun bs!1168394 () Bool)

(assert (= bs!1168394 (and d!1551683 d!1551673)))

(assert (=> bs!1168394 (not (= lambda!241009 lambda!241006))))

(declare-fun lt!1984838 () ListMap!7099)

(declare-fun invariantList!1877 (List!55500) Bool)

(assert (=> d!1551683 (invariantList!1877 (toList!7762 lt!1984838))))

(declare-fun e!3025276 () ListMap!7099)

(assert (=> d!1551683 (= lt!1984838 e!3025276)))

(declare-fun c!824345 () Bool)

(assert (=> d!1551683 (= c!824345 (is-Cons!55377 (toList!7761 lm!2671)))))

(assert (=> d!1551683 (forall!12851 (toList!7761 lm!2671) lambda!241009)))

(assert (=> d!1551683 (= (extractMap!2769 (toList!7761 lm!2671)) lt!1984838)))

(declare-fun b!4840777 () Bool)

(assert (=> b!4840777 (= e!3025276 (addToMapMapFromBucket!1909 (_2!32746 (h!61812 (toList!7761 lm!2671))) (extractMap!2769 (t!362997 (toList!7761 lm!2671)))))))

(declare-fun b!4840778 () Bool)

(assert (=> b!4840778 (= e!3025276 (ListMap!7100 Nil!55376))))

(assert (= (and d!1551683 c!824345) b!4840777))

(assert (= (and d!1551683 (not c!824345)) b!4840778))

(declare-fun m!5836450 () Bool)

(assert (=> d!1551683 m!5836450))

(declare-fun m!5836452 () Bool)

(assert (=> d!1551683 m!5836452))

(assert (=> b!4840777 m!5836388))

(assert (=> b!4840777 m!5836388))

(assert (=> b!4840777 m!5836390))

(assert (=> b!4840718 d!1551683))

(declare-fun d!1551687 () Bool)

(declare-fun lt!1984840 () Bool)

(assert (=> d!1551687 (= lt!1984840 (set.member lt!1984820 (content!9854 (_2!32746 (head!10389 (toList!7761 lm!2671))))))))

(declare-fun e!3025279 () Bool)

(assert (=> d!1551687 (= lt!1984840 e!3025279)))

(declare-fun res!2063804 () Bool)

(assert (=> d!1551687 (=> (not res!2063804) (not e!3025279))))

(assert (=> d!1551687 (= res!2063804 (is-Cons!55376 (_2!32746 (head!10389 (toList!7761 lm!2671)))))))

(assert (=> d!1551687 (= (contains!19098 (_2!32746 (head!10389 (toList!7761 lm!2671))) lt!1984820) lt!1984840)))

(declare-fun b!4840781 () Bool)

(declare-fun e!3025280 () Bool)

(assert (=> b!4840781 (= e!3025279 e!3025280)))

(declare-fun res!2063803 () Bool)

(assert (=> b!4840781 (=> res!2063803 e!3025280)))

(assert (=> b!4840781 (= res!2063803 (= (h!61811 (_2!32746 (head!10389 (toList!7761 lm!2671)))) lt!1984820))))

(declare-fun b!4840782 () Bool)

(assert (=> b!4840782 (= e!3025280 (contains!19098 (t!362996 (_2!32746 (head!10389 (toList!7761 lm!2671)))) lt!1984820))))

(assert (= (and d!1551687 res!2063804) b!4840781))

(assert (= (and b!4840781 (not res!2063803)) b!4840782))

(declare-fun m!5836454 () Bool)

(assert (=> d!1551687 m!5836454))

(declare-fun m!5836456 () Bool)

(assert (=> d!1551687 m!5836456))

(declare-fun m!5836458 () Bool)

(assert (=> b!4840782 m!5836458))

(assert (=> b!4840718 d!1551687))

(declare-fun d!1551689 () Bool)

(declare-fun c!824348 () Bool)

(declare-fun e!3025286 () Bool)

(assert (=> d!1551689 (= c!824348 e!3025286)))

(declare-fun res!2063807 () Bool)

(assert (=> d!1551689 (=> (not res!2063807) (not e!3025286))))

(assert (=> d!1551689 (= res!2063807 (is-Cons!55377 (toList!7761 lm!2671)))))

(declare-fun e!3025285 () V!17383)

(assert (=> d!1551689 (= (getValue!195 (toList!7761 lm!2671) key!6540) e!3025285)))

(declare-fun b!4840791 () Bool)

(assert (=> b!4840791 (= e!3025286 (containsKey!4593 (_2!32746 (h!61812 (toList!7761 lm!2671))) key!6540))))

(declare-fun b!4840789 () Bool)

(declare-datatypes ((Option!13612 0))(
  ( (None!13611) (Some!13611 (v!49345 tuple2!58902)) )
))
(declare-fun get!18955 (Option!13612) tuple2!58902)

(declare-fun getPair!1052 (List!55500 K!17137) Option!13612)

(assert (=> b!4840789 (= e!3025285 (_2!32745 (get!18955 (getPair!1052 (_2!32746 (h!61812 (toList!7761 lm!2671))) key!6540))))))

(declare-fun b!4840790 () Bool)

(assert (=> b!4840790 (= e!3025285 (getValue!195 (t!362997 (toList!7761 lm!2671)) key!6540))))

(assert (= (and d!1551689 res!2063807) b!4840791))

(assert (= (and d!1551689 c!824348) b!4840789))

(assert (= (and d!1551689 (not c!824348)) b!4840790))

(assert (=> b!4840791 m!5836406))

(declare-fun m!5836466 () Bool)

(assert (=> b!4840789 m!5836466))

(assert (=> b!4840789 m!5836466))

(declare-fun m!5836468 () Bool)

(assert (=> b!4840789 m!5836468))

(declare-fun m!5836470 () Bool)

(assert (=> b!4840790 m!5836470))

(assert (=> b!4840718 d!1551689))

(declare-fun bs!1168395 () Bool)

(declare-fun d!1551693 () Bool)

(assert (= bs!1168395 (and d!1551693 start!503794)))

(declare-fun lambda!241010 () Int)

(assert (=> bs!1168395 (= lambda!241010 lambda!241000)))

(declare-fun bs!1168396 () Bool)

(assert (= bs!1168396 (and d!1551693 d!1551673)))

(assert (=> bs!1168396 (not (= lambda!241010 lambda!241006))))

(declare-fun bs!1168397 () Bool)

(assert (= bs!1168397 (and d!1551693 d!1551683)))

(assert (=> bs!1168397 (= lambda!241010 lambda!241009)))

(declare-fun lt!1984841 () ListMap!7099)

(assert (=> d!1551693 (invariantList!1877 (toList!7762 lt!1984841))))

(declare-fun e!3025287 () ListMap!7099)

(assert (=> d!1551693 (= lt!1984841 e!3025287)))

(declare-fun c!824349 () Bool)

(assert (=> d!1551693 (= c!824349 (is-Cons!55377 (t!362997 (toList!7761 lm!2671))))))

(assert (=> d!1551693 (forall!12851 (t!362997 (toList!7761 lm!2671)) lambda!241010)))

(assert (=> d!1551693 (= (extractMap!2769 (t!362997 (toList!7761 lm!2671))) lt!1984841)))

(declare-fun b!4840792 () Bool)

(assert (=> b!4840792 (= e!3025287 (addToMapMapFromBucket!1909 (_2!32746 (h!61812 (t!362997 (toList!7761 lm!2671)))) (extractMap!2769 (t!362997 (t!362997 (toList!7761 lm!2671))))))))

(declare-fun b!4840793 () Bool)

(assert (=> b!4840793 (= e!3025287 (ListMap!7100 Nil!55376))))

(assert (= (and d!1551693 c!824349) b!4840792))

(assert (= (and d!1551693 (not c!824349)) b!4840793))

(declare-fun m!5836472 () Bool)

(assert (=> d!1551693 m!5836472))

(declare-fun m!5836474 () Bool)

(assert (=> d!1551693 m!5836474))

(declare-fun m!5836476 () Bool)

(assert (=> b!4840792 m!5836476))

(assert (=> b!4840792 m!5836476))

(declare-fun m!5836478 () Bool)

(assert (=> b!4840792 m!5836478))

(assert (=> b!4840718 d!1551693))

(declare-fun b!4840829 () Bool)

(assert (=> b!4840829 true))

(declare-fun bs!1168406 () Bool)

(declare-fun b!4840827 () Bool)

(assert (= bs!1168406 (and b!4840827 b!4840829)))

(declare-fun lambda!241049 () Int)

(declare-fun lambda!241048 () Int)

(assert (=> bs!1168406 (= lambda!241049 lambda!241048)))

(assert (=> b!4840827 true))

(declare-fun lambda!241050 () Int)

(declare-fun lt!1984906 () ListMap!7099)

(assert (=> bs!1168406 (= (= lt!1984906 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) (= lambda!241050 lambda!241048))))

(assert (=> b!4840827 (= (= lt!1984906 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) (= lambda!241050 lambda!241049))))

(assert (=> b!4840827 true))

(declare-fun bs!1168407 () Bool)

(declare-fun d!1551695 () Bool)

(assert (= bs!1168407 (and d!1551695 b!4840829)))

(declare-fun lt!1984910 () ListMap!7099)

(declare-fun lambda!241051 () Int)

(assert (=> bs!1168407 (= (= lt!1984910 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) (= lambda!241051 lambda!241048))))

(declare-fun bs!1168408 () Bool)

(assert (= bs!1168408 (and d!1551695 b!4840827)))

(assert (=> bs!1168408 (= (= lt!1984910 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) (= lambda!241051 lambda!241049))))

(assert (=> bs!1168408 (= (= lt!1984910 lt!1984906) (= lambda!241051 lambda!241050))))

(assert (=> d!1551695 true))

(declare-fun bm!337354 () Bool)

(declare-fun lt!1984891 () ListMap!7099)

(declare-fun c!824355 () Bool)

(declare-fun call!337360 () Bool)

(declare-fun forall!12853 (List!55500 Int) Bool)

(assert (=> bm!337354 (= call!337360 (forall!12853 (ite c!824355 (toList!7762 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) (toList!7762 lt!1984891)) (ite c!824355 lambda!241048 lambda!241050)))))

(declare-fun bm!337355 () Bool)

(declare-fun call!337359 () Bool)

(assert (=> bm!337355 (= call!337359 (forall!12853 (ite c!824355 (toList!7762 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) (t!362996 (_2!32746 (h!61812 (toList!7761 lm!2671))))) (ite c!824355 lambda!241048 lambda!241050)))))

(declare-fun bm!337356 () Bool)

(declare-fun call!337361 () Unit!145022)

(declare-fun lemmaContainsAllItsOwnKeys!1051 (ListMap!7099) Unit!145022)

(assert (=> bm!337356 (= call!337361 (lemmaContainsAllItsOwnKeys!1051 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))))))

(declare-fun e!3025313 () ListMap!7099)

(assert (=> b!4840827 (= e!3025313 lt!1984906)))

(declare-fun +!2611 (ListMap!7099 tuple2!58902) ListMap!7099)

(assert (=> b!4840827 (= lt!1984891 (+!2611 (extractMap!2769 (t!362997 (toList!7761 lm!2671))) (h!61811 (_2!32746 (h!61812 (toList!7761 lm!2671))))))))

(assert (=> b!4840827 (= lt!1984906 (addToMapMapFromBucket!1909 (t!362996 (_2!32746 (h!61812 (toList!7761 lm!2671)))) (+!2611 (extractMap!2769 (t!362997 (toList!7761 lm!2671))) (h!61811 (_2!32746 (h!61812 (toList!7761 lm!2671)))))))))

(declare-fun lt!1984903 () Unit!145022)

(assert (=> b!4840827 (= lt!1984903 call!337361)))

(assert (=> b!4840827 (forall!12853 (toList!7762 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) lambda!241049)))

(declare-fun lt!1984897 () Unit!145022)

(assert (=> b!4840827 (= lt!1984897 lt!1984903)))

(assert (=> b!4840827 (forall!12853 (toList!7762 lt!1984891) lambda!241050)))

(declare-fun lt!1984905 () Unit!145022)

(declare-fun Unit!145026 () Unit!145022)

(assert (=> b!4840827 (= lt!1984905 Unit!145026)))

(assert (=> b!4840827 call!337359))

(declare-fun lt!1984896 () Unit!145022)

(declare-fun Unit!145027 () Unit!145022)

(assert (=> b!4840827 (= lt!1984896 Unit!145027)))

(declare-fun lt!1984899 () Unit!145022)

(declare-fun Unit!145028 () Unit!145022)

(assert (=> b!4840827 (= lt!1984899 Unit!145028)))

(declare-fun lt!1984907 () Unit!145022)

(declare-fun forallContained!4494 (List!55500 Int tuple2!58902) Unit!145022)

(assert (=> b!4840827 (= lt!1984907 (forallContained!4494 (toList!7762 lt!1984891) lambda!241050 (h!61811 (_2!32746 (h!61812 (toList!7761 lm!2671))))))))

(declare-fun contains!19100 (ListMap!7099 K!17137) Bool)

(assert (=> b!4840827 (contains!19100 lt!1984891 (_1!32745 (h!61811 (_2!32746 (h!61812 (toList!7761 lm!2671))))))))

(declare-fun lt!1984895 () Unit!145022)

(declare-fun Unit!145029 () Unit!145022)

(assert (=> b!4840827 (= lt!1984895 Unit!145029)))

(assert (=> b!4840827 (contains!19100 lt!1984906 (_1!32745 (h!61811 (_2!32746 (h!61812 (toList!7761 lm!2671))))))))

(declare-fun lt!1984904 () Unit!145022)

(declare-fun Unit!145030 () Unit!145022)

(assert (=> b!4840827 (= lt!1984904 Unit!145030)))

(assert (=> b!4840827 (forall!12853 (_2!32746 (h!61812 (toList!7761 lm!2671))) lambda!241050)))

(declare-fun lt!1984908 () Unit!145022)

(declare-fun Unit!145031 () Unit!145022)

(assert (=> b!4840827 (= lt!1984908 Unit!145031)))

(assert (=> b!4840827 call!337360))

(declare-fun lt!1984901 () Unit!145022)

(declare-fun Unit!145032 () Unit!145022)

(assert (=> b!4840827 (= lt!1984901 Unit!145032)))

(declare-fun lt!1984900 () Unit!145022)

(declare-fun Unit!145033 () Unit!145022)

(assert (=> b!4840827 (= lt!1984900 Unit!145033)))

(declare-fun lt!1984894 () Unit!145022)

(declare-fun addForallContainsKeyThenBeforeAdding!1049 (ListMap!7099 ListMap!7099 K!17137 V!17383) Unit!145022)

(assert (=> b!4840827 (= lt!1984894 (addForallContainsKeyThenBeforeAdding!1049 (extractMap!2769 (t!362997 (toList!7761 lm!2671))) lt!1984906 (_1!32745 (h!61811 (_2!32746 (h!61812 (toList!7761 lm!2671))))) (_2!32745 (h!61811 (_2!32746 (h!61812 (toList!7761 lm!2671)))))))))

(assert (=> b!4840827 (forall!12853 (toList!7762 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) lambda!241050)))

(declare-fun lt!1984893 () Unit!145022)

(assert (=> b!4840827 (= lt!1984893 lt!1984894)))

(assert (=> b!4840827 (forall!12853 (toList!7762 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) lambda!241050)))

(declare-fun lt!1984909 () Unit!145022)

(declare-fun Unit!145034 () Unit!145022)

(assert (=> b!4840827 (= lt!1984909 Unit!145034)))

(declare-fun res!2063829 () Bool)

(assert (=> b!4840827 (= res!2063829 (forall!12853 (_2!32746 (h!61812 (toList!7761 lm!2671))) lambda!241050))))

(declare-fun e!3025314 () Bool)

(assert (=> b!4840827 (=> (not res!2063829) (not e!3025314))))

(assert (=> b!4840827 e!3025314))

(declare-fun lt!1984902 () Unit!145022)

(declare-fun Unit!145035 () Unit!145022)

(assert (=> b!4840827 (= lt!1984902 Unit!145035)))

(declare-fun e!3025312 () Bool)

(assert (=> d!1551695 e!3025312))

(declare-fun res!2063831 () Bool)

(assert (=> d!1551695 (=> (not res!2063831) (not e!3025312))))

(assert (=> d!1551695 (= res!2063831 (forall!12853 (_2!32746 (h!61812 (toList!7761 lm!2671))) lambda!241051))))

(assert (=> d!1551695 (= lt!1984910 e!3025313)))

(assert (=> d!1551695 (= c!824355 (is-Nil!55376 (_2!32746 (h!61812 (toList!7761 lm!2671)))))))

(declare-fun noDuplicateKeys!2545 (List!55500) Bool)

(assert (=> d!1551695 (noDuplicateKeys!2545 (_2!32746 (h!61812 (toList!7761 lm!2671))))))

(assert (=> d!1551695 (= (addToMapMapFromBucket!1909 (_2!32746 (h!61812 (toList!7761 lm!2671))) (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) lt!1984910)))

(declare-fun b!4840828 () Bool)

(declare-fun res!2063830 () Bool)

(assert (=> b!4840828 (=> (not res!2063830) (not e!3025312))))

(assert (=> b!4840828 (= res!2063830 (forall!12853 (toList!7762 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) lambda!241051))))

(assert (=> b!4840829 (= e!3025313 (extractMap!2769 (t!362997 (toList!7761 lm!2671))))))

(declare-fun lt!1984892 () Unit!145022)

(assert (=> b!4840829 (= lt!1984892 call!337361)))

(assert (=> b!4840829 call!337359))

(declare-fun lt!1984890 () Unit!145022)

(assert (=> b!4840829 (= lt!1984890 lt!1984892)))

(assert (=> b!4840829 call!337360))

(declare-fun lt!1984898 () Unit!145022)

(declare-fun Unit!145036 () Unit!145022)

(assert (=> b!4840829 (= lt!1984898 Unit!145036)))

(declare-fun b!4840830 () Bool)

(assert (=> b!4840830 (= e!3025314 (forall!12853 (toList!7762 (extractMap!2769 (t!362997 (toList!7761 lm!2671)))) lambda!241050))))

(declare-fun b!4840831 () Bool)

(assert (=> b!4840831 (= e!3025312 (invariantList!1877 (toList!7762 lt!1984910)))))

(assert (= (and d!1551695 c!824355) b!4840829))

(assert (= (and d!1551695 (not c!824355)) b!4840827))

(assert (= (and b!4840827 res!2063829) b!4840830))

(assert (= (or b!4840829 b!4840827) bm!337356))

(assert (= (or b!4840829 b!4840827) bm!337355))

(assert (= (or b!4840829 b!4840827) bm!337354))

(assert (= (and d!1551695 res!2063831) b!4840828))

(assert (= (and b!4840828 res!2063830) b!4840831))

(declare-fun m!5836496 () Bool)

(assert (=> bm!337354 m!5836496))

(declare-fun m!5836498 () Bool)

(assert (=> b!4840828 m!5836498))

(declare-fun m!5836500 () Bool)

(assert (=> b!4840831 m!5836500))

(declare-fun m!5836502 () Bool)

(assert (=> bm!337355 m!5836502))

(declare-fun m!5836504 () Bool)

(assert (=> b!4840827 m!5836504))

(declare-fun m!5836506 () Bool)

(assert (=> b!4840827 m!5836506))

(declare-fun m!5836508 () Bool)

(assert (=> b!4840827 m!5836508))

(assert (=> b!4840827 m!5836388))

(declare-fun m!5836510 () Bool)

(assert (=> b!4840827 m!5836510))

(declare-fun m!5836512 () Bool)

(assert (=> b!4840827 m!5836512))

(declare-fun m!5836514 () Bool)

(assert (=> b!4840827 m!5836514))

(assert (=> b!4840827 m!5836504))

(assert (=> b!4840827 m!5836388))

(declare-fun m!5836516 () Bool)

(assert (=> b!4840827 m!5836516))

(declare-fun m!5836518 () Bool)

(assert (=> b!4840827 m!5836518))

(assert (=> b!4840827 m!5836506))

(assert (=> b!4840827 m!5836510))

(declare-fun m!5836520 () Bool)

(assert (=> b!4840827 m!5836520))

(declare-fun m!5836522 () Bool)

(assert (=> b!4840827 m!5836522))

(declare-fun m!5836524 () Bool)

(assert (=> d!1551695 m!5836524))

(declare-fun m!5836526 () Bool)

(assert (=> d!1551695 m!5836526))

(assert (=> bm!337356 m!5836388))

(declare-fun m!5836528 () Bool)

(assert (=> bm!337356 m!5836528))

(assert (=> b!4840830 m!5836504))

(assert (=> b!4840718 d!1551695))

(declare-fun bs!1168409 () Bool)

(declare-fun d!1551709 () Bool)

(assert (= bs!1168409 (and d!1551709 start!503794)))

(declare-fun lambda!241054 () Int)

(assert (=> bs!1168409 (= lambda!241054 lambda!241000)))

(declare-fun bs!1168410 () Bool)

(assert (= bs!1168410 (and d!1551709 d!1551673)))

(assert (=> bs!1168410 (not (= lambda!241054 lambda!241006))))

(declare-fun bs!1168411 () Bool)

(assert (= bs!1168411 (and d!1551709 d!1551683)))

(assert (=> bs!1168411 (= lambda!241054 lambda!241009)))

(declare-fun bs!1168412 () Bool)

(assert (= bs!1168412 (and d!1551709 d!1551693)))

(assert (=> bs!1168412 (= lambda!241054 lambda!241010)))

(assert (=> d!1551709 (contains!19098 (_2!32746 (head!10389 (toList!7761 lm!2671))) (tuple2!58903 key!6540 lt!1984819))))

(declare-fun lt!1984913 () Unit!145022)

(declare-fun choose!35371 (ListLongMap!6317 K!17137 V!17383 Hashable!7427) Unit!145022)

(assert (=> d!1551709 (= lt!1984913 (choose!35371 lm!2671 key!6540 lt!1984819 hashF!1662))))

(assert (=> d!1551709 (forall!12851 (toList!7761 lm!2671) lambda!241054)))

(assert (=> d!1551709 (= (lemmaInPairListHeadThenGetValueInTuple!17 lm!2671 key!6540 lt!1984819 hashF!1662) lt!1984913)))

(declare-fun bs!1168413 () Bool)

(assert (= bs!1168413 d!1551709))

(assert (=> bs!1168413 m!5836382))

(declare-fun m!5836530 () Bool)

(assert (=> bs!1168413 m!5836530))

(declare-fun m!5836532 () Bool)

(assert (=> bs!1168413 m!5836532))

(declare-fun m!5836534 () Bool)

(assert (=> bs!1168413 m!5836534))

(assert (=> b!4840718 d!1551709))

(declare-fun d!1551711 () Bool)

(declare-fun res!2063836 () Bool)

(declare-fun e!3025319 () Bool)

(assert (=> d!1551711 (=> res!2063836 e!3025319)))

(assert (=> d!1551711 (= res!2063836 (and (is-Cons!55376 (_2!32746 (h!61812 (toList!7761 lm!2671)))) (= (_1!32745 (h!61811 (_2!32746 (h!61812 (toList!7761 lm!2671))))) key!6540)))))

(assert (=> d!1551711 (= (containsKey!4593 (_2!32746 (h!61812 (toList!7761 lm!2671))) key!6540) e!3025319)))

(declare-fun b!4840838 () Bool)

(declare-fun e!3025320 () Bool)

(assert (=> b!4840838 (= e!3025319 e!3025320)))

(declare-fun res!2063837 () Bool)

(assert (=> b!4840838 (=> (not res!2063837) (not e!3025320))))

(assert (=> b!4840838 (= res!2063837 (is-Cons!55376 (_2!32746 (h!61812 (toList!7761 lm!2671)))))))

(declare-fun b!4840839 () Bool)

(assert (=> b!4840839 (= e!3025320 (containsKey!4593 (t!362996 (_2!32746 (h!61812 (toList!7761 lm!2671)))) key!6540))))

(assert (= (and d!1551711 (not res!2063836)) b!4840838))

(assert (= (and b!4840838 res!2063837) b!4840839))

(declare-fun m!5836536 () Bool)

(assert (=> b!4840839 m!5836536))

(assert (=> b!4840719 d!1551711))

(declare-fun b!4840844 () Bool)

(declare-fun e!3025323 () Bool)

(declare-fun tp!1363893 () Bool)

(declare-fun tp!1363894 () Bool)

(assert (=> b!4840844 (= e!3025323 (and tp!1363893 tp!1363894))))

(assert (=> b!4840720 (= tp!1363885 e!3025323)))

(assert (= (and b!4840720 (is-Cons!55377 (toList!7761 lm!2671))) b!4840844))

(declare-fun b_lambda!191349 () Bool)

(assert (= b_lambda!191347 (or start!503794 b_lambda!191349)))

(declare-fun bs!1168414 () Bool)

(declare-fun d!1551713 () Bool)

(assert (= bs!1168414 (and d!1551713 start!503794)))

(assert (=> bs!1168414 (= (dynLambda!22300 lambda!241000 (h!61812 (toList!7761 lm!2671))) (noDuplicateKeys!2545 (_2!32746 (h!61812 (toList!7761 lm!2671)))))))

(assert (=> bs!1168414 m!5836526))

(assert (=> b!4840767 d!1551713))

(push 1)

(assert (not b!4840792))

(assert (not b!4840768))

(assert (not d!1551683))

(assert (not b!4840791))

(assert (not b!4840828))

(assert (not b!4840831))

(assert (not b!4840844))

(assert (not b!4840760))

(assert (not b!4840762))

(assert (not b!4840839))

(assert (not bm!337355))

(assert (not b!4840789))

(assert (not bm!337354))

(assert (not b!4840777))

(assert (not bm!337356))

(assert tp_is_empty!34957)

(assert (not d!1551671))

(assert (not b!4840830))

(assert (not b!4840827))

(assert (not d!1551695))

(assert (not b!4840751))

(assert (not d!1551709))

(assert (not b!4840790))

(assert (not b_lambda!191349))

(assert (not d!1551673))

(assert (not b!4840782))

(assert (not d!1551679))

(assert (not d!1551687))

(assert (not bs!1168414))

(assert (not d!1551693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

