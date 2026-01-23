; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!503642 () Bool)

(assert start!503642)

(declare-fun b!4840072 () Bool)

(declare-fun res!2063319 () Bool)

(declare-fun e!3024837 () Bool)

(assert (=> b!4840072 (=> (not res!2063319) (not e!3024837))))

(declare-datatypes ((K!17104 0))(
  ( (K!17105 (val!21989 Int)) )
))
(declare-datatypes ((V!17350 0))(
  ( (V!17351 (val!21990 Int)) )
))
(declare-datatypes ((tuple2!58850 0))(
  ( (tuple2!58851 (_1!32719 K!17104) (_2!32719 V!17350)) )
))
(declare-datatypes ((List!55472 0))(
  ( (Nil!55348) (Cons!55348 (h!61783 tuple2!58850) (t!362968 List!55472)) )
))
(declare-datatypes ((tuple2!58852 0))(
  ( (tuple2!58853 (_1!32720 (_ BitVec 64)) (_2!32720 List!55472)) )
))
(declare-datatypes ((List!55473 0))(
  ( (Nil!55349) (Cons!55349 (h!61784 tuple2!58852) (t!362969 List!55473)) )
))
(declare-datatypes ((ListLongMap!6291 0))(
  ( (ListLongMap!6292 (toList!7747 List!55473)) )
))
(declare-fun lm!2671 () ListLongMap!6291)

(declare-fun key!6540 () K!17104)

(declare-fun containsKeyBiggerList!698 (List!55473 K!17104) Bool)

(assert (=> b!4840072 (= res!2063319 (containsKeyBiggerList!698 (toList!7747 lm!2671) key!6540))))

(declare-fun b!4840073 () Bool)

(declare-fun res!2063320 () Bool)

(assert (=> b!4840073 (=> (not res!2063320) (not e!3024837))))

(declare-fun e!3024835 () Bool)

(assert (=> b!4840073 (= res!2063320 e!3024835)))

(declare-fun res!2063326 () Bool)

(assert (=> b!4840073 (=> res!2063326 e!3024835)))

(get-info :version)

(assert (=> b!4840073 (= res!2063326 (not ((_ is Cons!55349) (toList!7747 lm!2671))))))

(declare-fun b!4840074 () Bool)

(declare-fun e!3024833 () Bool)

(assert (=> b!4840074 (= e!3024837 e!3024833)))

(declare-fun res!2063321 () Bool)

(assert (=> b!4840074 (=> (not res!2063321) (not e!3024833))))

(declare-datatypes ((ListMap!7097 0))(
  ( (ListMap!7098 (toList!7748 List!55472)) )
))
(declare-fun lt!1984532 () ListMap!7097)

(declare-fun extractMap!2768 (List!55473) ListMap!7097)

(declare-fun addToMapMapFromBucket!1908 (List!55472 ListMap!7097) ListMap!7097)

(assert (=> b!4840074 (= res!2063321 (= (extractMap!2768 (toList!7747 lm!2671)) (addToMapMapFromBucket!1908 (_2!32720 (h!61784 (toList!7747 lm!2671))) lt!1984532)))))

(assert (=> b!4840074 (= lt!1984532 (extractMap!2768 (t!362969 (toList!7747 lm!2671))))))

(declare-fun res!2063323 () Bool)

(assert (=> start!503642 (=> (not res!2063323) (not e!3024837))))

(declare-fun lambda!240836 () Int)

(declare-fun forall!12836 (List!55473 Int) Bool)

(assert (=> start!503642 (= res!2063323 (forall!12836 (toList!7747 lm!2671) lambda!240836))))

(assert (=> start!503642 e!3024837))

(declare-fun e!3024834 () Bool)

(declare-fun inv!71004 (ListLongMap!6291) Bool)

(assert (=> start!503642 (and (inv!71004 lm!2671) e!3024834)))

(assert (=> start!503642 true))

(declare-fun tp_is_empty!34931 () Bool)

(assert (=> start!503642 tp_is_empty!34931))

(declare-fun b!4840075 () Bool)

(declare-fun e!3024836 () Bool)

(declare-fun contains!19093 (ListMap!7097 K!17104) Bool)

(assert (=> b!4840075 (= e!3024836 (contains!19093 lt!1984532 key!6540))))

(declare-fun lt!1984531 () ListLongMap!6291)

(assert (=> b!4840075 (contains!19093 (extractMap!2768 (toList!7747 lt!1984531)) key!6540)))

(declare-datatypes ((Hashable!7414 0))(
  ( (HashableExt!7413 (__x!33689 Int)) )
))
(declare-fun hashF!1662 () Hashable!7414)

(declare-datatypes ((Unit!144986 0))(
  ( (Unit!144987) )
))
(declare-fun lt!1984530 () Unit!144986)

(declare-fun lemmaListContainsThenExtractedMapContains!750 (ListLongMap!6291 K!17104 Hashable!7414) Unit!144986)

(assert (=> b!4840075 (= lt!1984530 (lemmaListContainsThenExtractedMapContains!750 lt!1984531 key!6540 hashF!1662))))

(declare-fun tail!9491 (ListLongMap!6291) ListLongMap!6291)

(assert (=> b!4840075 (= lt!1984531 (tail!9491 lm!2671))))

(declare-fun b!4840076 () Bool)

(declare-fun tp!1363798 () Bool)

(assert (=> b!4840076 (= e!3024834 tp!1363798)))

(declare-fun b!4840077 () Bool)

(declare-fun res!2063325 () Bool)

(assert (=> b!4840077 (=> (not res!2063325) (not e!3024837))))

(assert (=> b!4840077 (= res!2063325 ((_ is Cons!55349) (toList!7747 lm!2671)))))

(declare-fun b!4840078 () Bool)

(declare-fun containsKey!4578 (List!55472 K!17104) Bool)

(assert (=> b!4840078 (= e!3024835 (not (containsKey!4578 (_2!32720 (h!61784 (toList!7747 lm!2671))) key!6540)))))

(declare-fun b!4840079 () Bool)

(assert (=> b!4840079 (= e!3024833 (not e!3024836))))

(declare-fun res!2063322 () Bool)

(assert (=> b!4840079 (=> res!2063322 e!3024836)))

(assert (=> b!4840079 (= res!2063322 (not (containsKeyBiggerList!698 (t!362969 (toList!7747 lm!2671)) key!6540)))))

(declare-fun tail!9492 (List!55473) List!55473)

(assert (=> b!4840079 (containsKeyBiggerList!698 (tail!9492 (toList!7747 lm!2671)) key!6540)))

(declare-fun lt!1984529 () Unit!144986)

(declare-fun lemmaInBiggerListButNotHeadThenTail!52 (ListLongMap!6291 K!17104 Hashable!7414) Unit!144986)

(assert (=> b!4840079 (= lt!1984529 (lemmaInBiggerListButNotHeadThenTail!52 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4840080 () Bool)

(declare-fun res!2063324 () Bool)

(assert (=> b!4840080 (=> (not res!2063324) (not e!3024837))))

(declare-fun allKeysSameHashInMap!2730 (ListLongMap!6291 Hashable!7414) Bool)

(assert (=> b!4840080 (= res!2063324 (allKeysSameHashInMap!2730 lm!2671 hashF!1662))))

(assert (= (and start!503642 res!2063323) b!4840080))

(assert (= (and b!4840080 res!2063324) b!4840072))

(assert (= (and b!4840072 res!2063319) b!4840073))

(assert (= (and b!4840073 (not res!2063326)) b!4840078))

(assert (= (and b!4840073 res!2063320) b!4840077))

(assert (= (and b!4840077 res!2063325) b!4840074))

(assert (= (and b!4840074 res!2063321) b!4840079))

(assert (= (and b!4840079 (not res!2063322)) b!4840075))

(assert (= start!503642 b!4840076))

(declare-fun m!5835792 () Bool)

(assert (=> b!4840075 m!5835792))

(declare-fun m!5835794 () Bool)

(assert (=> b!4840075 m!5835794))

(declare-fun m!5835796 () Bool)

(assert (=> b!4840075 m!5835796))

(declare-fun m!5835798 () Bool)

(assert (=> b!4840075 m!5835798))

(declare-fun m!5835800 () Bool)

(assert (=> b!4840075 m!5835800))

(assert (=> b!4840075 m!5835792))

(declare-fun m!5835802 () Bool)

(assert (=> b!4840080 m!5835802))

(declare-fun m!5835804 () Bool)

(assert (=> b!4840078 m!5835804))

(declare-fun m!5835806 () Bool)

(assert (=> b!4840079 m!5835806))

(declare-fun m!5835808 () Bool)

(assert (=> b!4840079 m!5835808))

(assert (=> b!4840079 m!5835808))

(declare-fun m!5835810 () Bool)

(assert (=> b!4840079 m!5835810))

(declare-fun m!5835812 () Bool)

(assert (=> b!4840079 m!5835812))

(declare-fun m!5835814 () Bool)

(assert (=> start!503642 m!5835814))

(declare-fun m!5835816 () Bool)

(assert (=> start!503642 m!5835816))

(declare-fun m!5835818 () Bool)

(assert (=> b!4840074 m!5835818))

(declare-fun m!5835820 () Bool)

(assert (=> b!4840074 m!5835820))

(declare-fun m!5835822 () Bool)

(assert (=> b!4840074 m!5835822))

(declare-fun m!5835824 () Bool)

(assert (=> b!4840072 m!5835824))

(check-sat (not b!4840075) (not b!4840072) (not b!4840079) (not b!4840074) (not start!503642) (not b!4840076) (not b!4840080) tp_is_empty!34931 (not b!4840078))
(check-sat)
(get-model)

(declare-fun d!1551500 () Bool)

(declare-fun res!2063333 () Bool)

(declare-fun e!3024847 () Bool)

(assert (=> d!1551500 (=> res!2063333 e!3024847)))

(declare-fun e!3024848 () Bool)

(assert (=> d!1551500 (= res!2063333 e!3024848)))

(declare-fun res!2063334 () Bool)

(assert (=> d!1551500 (=> (not res!2063334) (not e!3024848))))

(assert (=> d!1551500 (= res!2063334 ((_ is Cons!55349) (toList!7747 lm!2671)))))

(assert (=> d!1551500 (= (containsKeyBiggerList!698 (toList!7747 lm!2671) key!6540) e!3024847)))

(declare-fun b!4840091 () Bool)

(assert (=> b!4840091 (= e!3024848 (containsKey!4578 (_2!32720 (h!61784 (toList!7747 lm!2671))) key!6540))))

(declare-fun b!4840092 () Bool)

(declare-fun e!3024846 () Bool)

(assert (=> b!4840092 (= e!3024847 e!3024846)))

(declare-fun res!2063335 () Bool)

(assert (=> b!4840092 (=> (not res!2063335) (not e!3024846))))

(assert (=> b!4840092 (= res!2063335 ((_ is Cons!55349) (toList!7747 lm!2671)))))

(declare-fun b!4840093 () Bool)

(assert (=> b!4840093 (= e!3024846 (containsKeyBiggerList!698 (t!362969 (toList!7747 lm!2671)) key!6540))))

(assert (= (and d!1551500 res!2063334) b!4840091))

(assert (= (and d!1551500 (not res!2063333)) b!4840092))

(assert (= (and b!4840092 res!2063335) b!4840093))

(assert (=> b!4840091 m!5835804))

(assert (=> b!4840093 m!5835806))

(assert (=> b!4840072 d!1551500))

(declare-fun bs!1168293 () Bool)

(declare-fun d!1551502 () Bool)

(assert (= bs!1168293 (and d!1551502 start!503642)))

(declare-fun lambda!240842 () Int)

(assert (=> bs!1168293 (not (= lambda!240842 lambda!240836))))

(assert (=> d!1551502 true))

(assert (=> d!1551502 (= (allKeysSameHashInMap!2730 lm!2671 hashF!1662) (forall!12836 (toList!7747 lm!2671) lambda!240842))))

(declare-fun bs!1168294 () Bool)

(assert (= bs!1168294 d!1551502))

(declare-fun m!5835834 () Bool)

(assert (=> bs!1168294 m!5835834))

(assert (=> b!4840080 d!1551502))

(declare-fun bs!1168298 () Bool)

(declare-fun d!1551506 () Bool)

(assert (= bs!1168298 (and d!1551506 start!503642)))

(declare-fun lambda!240850 () Int)

(assert (=> bs!1168298 (= lambda!240850 lambda!240836)))

(declare-fun bs!1168299 () Bool)

(assert (= bs!1168299 (and d!1551506 d!1551502)))

(assert (=> bs!1168299 (not (= lambda!240850 lambda!240842))))

(assert (=> d!1551506 (contains!19093 (extractMap!2768 (toList!7747 lt!1984531)) key!6540)))

(declare-fun lt!1984573 () Unit!144986)

(declare-fun choose!35368 (ListLongMap!6291 K!17104 Hashable!7414) Unit!144986)

(assert (=> d!1551506 (= lt!1984573 (choose!35368 lt!1984531 key!6540 hashF!1662))))

(assert (=> d!1551506 (forall!12836 (toList!7747 lt!1984531) lambda!240850)))

(assert (=> d!1551506 (= (lemmaListContainsThenExtractedMapContains!750 lt!1984531 key!6540 hashF!1662) lt!1984573)))

(declare-fun bs!1168301 () Bool)

(assert (= bs!1168301 d!1551506))

(assert (=> bs!1168301 m!5835792))

(assert (=> bs!1168301 m!5835792))

(assert (=> bs!1168301 m!5835794))

(declare-fun m!5835880 () Bool)

(assert (=> bs!1168301 m!5835880))

(declare-fun m!5835882 () Bool)

(assert (=> bs!1168301 m!5835882))

(assert (=> b!4840075 d!1551506))

(declare-fun bs!1168316 () Bool)

(declare-fun d!1551514 () Bool)

(assert (= bs!1168316 (and d!1551514 start!503642)))

(declare-fun lambda!240858 () Int)

(assert (=> bs!1168316 (= lambda!240858 lambda!240836)))

(declare-fun bs!1168317 () Bool)

(assert (= bs!1168317 (and d!1551514 d!1551502)))

(assert (=> bs!1168317 (not (= lambda!240858 lambda!240842))))

(declare-fun bs!1168318 () Bool)

(assert (= bs!1168318 (and d!1551514 d!1551506)))

(assert (=> bs!1168318 (= lambda!240858 lambda!240850)))

(declare-fun lt!1984580 () ListMap!7097)

(declare-fun invariantList!1876 (List!55472) Bool)

(assert (=> d!1551514 (invariantList!1876 (toList!7748 lt!1984580))))

(declare-fun e!3024904 () ListMap!7097)

(assert (=> d!1551514 (= lt!1984580 e!3024904)))

(declare-fun c!824303 () Bool)

(assert (=> d!1551514 (= c!824303 ((_ is Cons!55349) (toList!7747 lt!1984531)))))

(assert (=> d!1551514 (forall!12836 (toList!7747 lt!1984531) lambda!240858)))

(assert (=> d!1551514 (= (extractMap!2768 (toList!7747 lt!1984531)) lt!1984580)))

(declare-fun b!4840169 () Bool)

(assert (=> b!4840169 (= e!3024904 (addToMapMapFromBucket!1908 (_2!32720 (h!61784 (toList!7747 lt!1984531))) (extractMap!2768 (t!362969 (toList!7747 lt!1984531)))))))

(declare-fun b!4840170 () Bool)

(assert (=> b!4840170 (= e!3024904 (ListMap!7098 Nil!55348))))

(assert (= (and d!1551514 c!824303) b!4840169))

(assert (= (and d!1551514 (not c!824303)) b!4840170))

(declare-fun m!5835912 () Bool)

(assert (=> d!1551514 m!5835912))

(declare-fun m!5835914 () Bool)

(assert (=> d!1551514 m!5835914))

(declare-fun m!5835916 () Bool)

(assert (=> b!4840169 m!5835916))

(assert (=> b!4840169 m!5835916))

(declare-fun m!5835918 () Bool)

(assert (=> b!4840169 m!5835918))

(assert (=> b!4840075 d!1551514))

(declare-fun d!1551536 () Bool)

(assert (=> d!1551536 (= (tail!9491 lm!2671) (ListLongMap!6292 (tail!9492 (toList!7747 lm!2671))))))

(declare-fun bs!1168319 () Bool)

(assert (= bs!1168319 d!1551536))

(assert (=> bs!1168319 m!5835808))

(assert (=> b!4840075 d!1551536))

(declare-fun b!4840189 () Bool)

(declare-fun e!3024917 () Unit!144986)

(declare-fun e!3024921 () Unit!144986)

(assert (=> b!4840189 (= e!3024917 e!3024921)))

(declare-fun c!824312 () Bool)

(declare-fun call!337333 () Bool)

(assert (=> b!4840189 (= c!824312 call!337333)))

(declare-fun b!4840190 () Bool)

(declare-fun e!3024920 () Bool)

(declare-datatypes ((List!55475 0))(
  ( (Nil!55351) (Cons!55351 (h!61786 K!17104) (t!362971 List!55475)) )
))
(declare-fun contains!19095 (List!55475 K!17104) Bool)

(declare-fun keys!20455 (ListMap!7097) List!55475)

(assert (=> b!4840190 (= e!3024920 (contains!19095 (keys!20455 lt!1984532) key!6540))))

(declare-fun d!1551538 () Bool)

(declare-fun e!3024918 () Bool)

(assert (=> d!1551538 e!3024918))

(declare-fun res!2063383 () Bool)

(assert (=> d!1551538 (=> res!2063383 e!3024918)))

(declare-fun e!3024919 () Bool)

(assert (=> d!1551538 (= res!2063383 e!3024919)))

(declare-fun res!2063382 () Bool)

(assert (=> d!1551538 (=> (not res!2063382) (not e!3024919))))

(declare-fun lt!1984603 () Bool)

(assert (=> d!1551538 (= res!2063382 (not lt!1984603))))

(declare-fun lt!1984599 () Bool)

(assert (=> d!1551538 (= lt!1984603 lt!1984599)))

(declare-fun lt!1984604 () Unit!144986)

(assert (=> d!1551538 (= lt!1984604 e!3024917)))

(declare-fun c!824311 () Bool)

(assert (=> d!1551538 (= c!824311 lt!1984599)))

(declare-fun containsKey!4580 (List!55472 K!17104) Bool)

(assert (=> d!1551538 (= lt!1984599 (containsKey!4580 (toList!7748 lt!1984532) key!6540))))

(assert (=> d!1551538 (= (contains!19093 lt!1984532 key!6540) lt!1984603)))

(declare-fun b!4840191 () Bool)

(declare-fun e!3024922 () List!55475)

(assert (=> b!4840191 (= e!3024922 (keys!20455 lt!1984532))))

(declare-fun b!4840192 () Bool)

(declare-fun getKeysList!1208 (List!55472) List!55475)

(assert (=> b!4840192 (= e!3024922 (getKeysList!1208 (toList!7748 lt!1984532)))))

(declare-fun b!4840193 () Bool)

(declare-fun Unit!145003 () Unit!144986)

(assert (=> b!4840193 (= e!3024921 Unit!145003)))

(declare-fun b!4840194 () Bool)

(assert (=> b!4840194 (= e!3024918 e!3024920)))

(declare-fun res!2063381 () Bool)

(assert (=> b!4840194 (=> (not res!2063381) (not e!3024920))))

(declare-datatypes ((Option!13609 0))(
  ( (None!13608) (Some!13608 (v!49334 V!17350)) )
))
(declare-fun isDefined!10708 (Option!13609) Bool)

(declare-fun getValueByKey!2707 (List!55472 K!17104) Option!13609)

(assert (=> b!4840194 (= res!2063381 (isDefined!10708 (getValueByKey!2707 (toList!7748 lt!1984532) key!6540)))))

(declare-fun b!4840195 () Bool)

(assert (=> b!4840195 (= e!3024919 (not (contains!19095 (keys!20455 lt!1984532) key!6540)))))

(declare-fun b!4840196 () Bool)

(assert (=> b!4840196 false))

(declare-fun lt!1984598 () Unit!144986)

(declare-fun lt!1984600 () Unit!144986)

(assert (=> b!4840196 (= lt!1984598 lt!1984600)))

(assert (=> b!4840196 (containsKey!4580 (toList!7748 lt!1984532) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1208 (List!55472 K!17104) Unit!144986)

(assert (=> b!4840196 (= lt!1984600 (lemmaInGetKeysListThenContainsKey!1208 (toList!7748 lt!1984532) key!6540))))

(declare-fun Unit!145004 () Unit!144986)

(assert (=> b!4840196 (= e!3024921 Unit!145004)))

(declare-fun b!4840197 () Bool)

(declare-fun lt!1984602 () Unit!144986)

(assert (=> b!4840197 (= e!3024917 lt!1984602)))

(declare-fun lt!1984597 () Unit!144986)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2481 (List!55472 K!17104) Unit!144986)

(assert (=> b!4840197 (= lt!1984597 (lemmaContainsKeyImpliesGetValueByKeyDefined!2481 (toList!7748 lt!1984532) key!6540))))

(assert (=> b!4840197 (isDefined!10708 (getValueByKey!2707 (toList!7748 lt!1984532) key!6540))))

(declare-fun lt!1984601 () Unit!144986)

(assert (=> b!4840197 (= lt!1984601 lt!1984597)))

(declare-fun lemmaInListThenGetKeysListContains!1203 (List!55472 K!17104) Unit!144986)

(assert (=> b!4840197 (= lt!1984602 (lemmaInListThenGetKeysListContains!1203 (toList!7748 lt!1984532) key!6540))))

(assert (=> b!4840197 call!337333))

(declare-fun bm!337328 () Bool)

(assert (=> bm!337328 (= call!337333 (contains!19095 e!3024922 key!6540))))

(declare-fun c!824310 () Bool)

(assert (=> bm!337328 (= c!824310 c!824311)))

(assert (= (and d!1551538 c!824311) b!4840197))

(assert (= (and d!1551538 (not c!824311)) b!4840189))

(assert (= (and b!4840189 c!824312) b!4840196))

(assert (= (and b!4840189 (not c!824312)) b!4840193))

(assert (= (or b!4840197 b!4840189) bm!337328))

(assert (= (and bm!337328 c!824310) b!4840192))

(assert (= (and bm!337328 (not c!824310)) b!4840191))

(assert (= (and d!1551538 res!2063382) b!4840195))

(assert (= (and d!1551538 (not res!2063383)) b!4840194))

(assert (= (and b!4840194 res!2063381) b!4840190))

(declare-fun m!5835920 () Bool)

(assert (=> b!4840192 m!5835920))

(declare-fun m!5835922 () Bool)

(assert (=> b!4840197 m!5835922))

(declare-fun m!5835924 () Bool)

(assert (=> b!4840197 m!5835924))

(assert (=> b!4840197 m!5835924))

(declare-fun m!5835926 () Bool)

(assert (=> b!4840197 m!5835926))

(declare-fun m!5835928 () Bool)

(assert (=> b!4840197 m!5835928))

(declare-fun m!5835930 () Bool)

(assert (=> b!4840195 m!5835930))

(assert (=> b!4840195 m!5835930))

(declare-fun m!5835932 () Bool)

(assert (=> b!4840195 m!5835932))

(assert (=> b!4840190 m!5835930))

(assert (=> b!4840190 m!5835930))

(assert (=> b!4840190 m!5835932))

(assert (=> b!4840194 m!5835924))

(assert (=> b!4840194 m!5835924))

(assert (=> b!4840194 m!5835926))

(declare-fun m!5835934 () Bool)

(assert (=> b!4840196 m!5835934))

(declare-fun m!5835936 () Bool)

(assert (=> b!4840196 m!5835936))

(assert (=> b!4840191 m!5835930))

(assert (=> d!1551538 m!5835934))

(declare-fun m!5835938 () Bool)

(assert (=> bm!337328 m!5835938))

(assert (=> b!4840075 d!1551538))

(declare-fun b!4840198 () Bool)

(declare-fun e!3024923 () Unit!144986)

(declare-fun e!3024927 () Unit!144986)

(assert (=> b!4840198 (= e!3024923 e!3024927)))

(declare-fun c!824315 () Bool)

(declare-fun call!337334 () Bool)

(assert (=> b!4840198 (= c!824315 call!337334)))

(declare-fun b!4840199 () Bool)

(declare-fun e!3024926 () Bool)

(assert (=> b!4840199 (= e!3024926 (contains!19095 (keys!20455 (extractMap!2768 (toList!7747 lt!1984531))) key!6540))))

(declare-fun d!1551540 () Bool)

(declare-fun e!3024924 () Bool)

(assert (=> d!1551540 e!3024924))

(declare-fun res!2063386 () Bool)

(assert (=> d!1551540 (=> res!2063386 e!3024924)))

(declare-fun e!3024925 () Bool)

(assert (=> d!1551540 (= res!2063386 e!3024925)))

(declare-fun res!2063385 () Bool)

(assert (=> d!1551540 (=> (not res!2063385) (not e!3024925))))

(declare-fun lt!1984611 () Bool)

(assert (=> d!1551540 (= res!2063385 (not lt!1984611))))

(declare-fun lt!1984607 () Bool)

(assert (=> d!1551540 (= lt!1984611 lt!1984607)))

(declare-fun lt!1984612 () Unit!144986)

(assert (=> d!1551540 (= lt!1984612 e!3024923)))

(declare-fun c!824314 () Bool)

(assert (=> d!1551540 (= c!824314 lt!1984607)))

(assert (=> d!1551540 (= lt!1984607 (containsKey!4580 (toList!7748 (extractMap!2768 (toList!7747 lt!1984531))) key!6540))))

(assert (=> d!1551540 (= (contains!19093 (extractMap!2768 (toList!7747 lt!1984531)) key!6540) lt!1984611)))

(declare-fun b!4840200 () Bool)

(declare-fun e!3024928 () List!55475)

(assert (=> b!4840200 (= e!3024928 (keys!20455 (extractMap!2768 (toList!7747 lt!1984531))))))

(declare-fun b!4840201 () Bool)

(assert (=> b!4840201 (= e!3024928 (getKeysList!1208 (toList!7748 (extractMap!2768 (toList!7747 lt!1984531)))))))

(declare-fun b!4840202 () Bool)

(declare-fun Unit!145005 () Unit!144986)

(assert (=> b!4840202 (= e!3024927 Unit!145005)))

(declare-fun b!4840203 () Bool)

(assert (=> b!4840203 (= e!3024924 e!3024926)))

(declare-fun res!2063384 () Bool)

(assert (=> b!4840203 (=> (not res!2063384) (not e!3024926))))

(assert (=> b!4840203 (= res!2063384 (isDefined!10708 (getValueByKey!2707 (toList!7748 (extractMap!2768 (toList!7747 lt!1984531))) key!6540)))))

(declare-fun b!4840204 () Bool)

(assert (=> b!4840204 (= e!3024925 (not (contains!19095 (keys!20455 (extractMap!2768 (toList!7747 lt!1984531))) key!6540)))))

(declare-fun b!4840205 () Bool)

(assert (=> b!4840205 false))

(declare-fun lt!1984606 () Unit!144986)

(declare-fun lt!1984608 () Unit!144986)

(assert (=> b!4840205 (= lt!1984606 lt!1984608)))

(assert (=> b!4840205 (containsKey!4580 (toList!7748 (extractMap!2768 (toList!7747 lt!1984531))) key!6540)))

(assert (=> b!4840205 (= lt!1984608 (lemmaInGetKeysListThenContainsKey!1208 (toList!7748 (extractMap!2768 (toList!7747 lt!1984531))) key!6540))))

(declare-fun Unit!145006 () Unit!144986)

(assert (=> b!4840205 (= e!3024927 Unit!145006)))

(declare-fun b!4840206 () Bool)

(declare-fun lt!1984610 () Unit!144986)

(assert (=> b!4840206 (= e!3024923 lt!1984610)))

(declare-fun lt!1984605 () Unit!144986)

(assert (=> b!4840206 (= lt!1984605 (lemmaContainsKeyImpliesGetValueByKeyDefined!2481 (toList!7748 (extractMap!2768 (toList!7747 lt!1984531))) key!6540))))

(assert (=> b!4840206 (isDefined!10708 (getValueByKey!2707 (toList!7748 (extractMap!2768 (toList!7747 lt!1984531))) key!6540))))

(declare-fun lt!1984609 () Unit!144986)

(assert (=> b!4840206 (= lt!1984609 lt!1984605)))

(assert (=> b!4840206 (= lt!1984610 (lemmaInListThenGetKeysListContains!1203 (toList!7748 (extractMap!2768 (toList!7747 lt!1984531))) key!6540))))

(assert (=> b!4840206 call!337334))

(declare-fun bm!337329 () Bool)

(assert (=> bm!337329 (= call!337334 (contains!19095 e!3024928 key!6540))))

(declare-fun c!824313 () Bool)

(assert (=> bm!337329 (= c!824313 c!824314)))

(assert (= (and d!1551540 c!824314) b!4840206))

(assert (= (and d!1551540 (not c!824314)) b!4840198))

(assert (= (and b!4840198 c!824315) b!4840205))

(assert (= (and b!4840198 (not c!824315)) b!4840202))

(assert (= (or b!4840206 b!4840198) bm!337329))

(assert (= (and bm!337329 c!824313) b!4840201))

(assert (= (and bm!337329 (not c!824313)) b!4840200))

(assert (= (and d!1551540 res!2063385) b!4840204))

(assert (= (and d!1551540 (not res!2063386)) b!4840203))

(assert (= (and b!4840203 res!2063384) b!4840199))

(declare-fun m!5835940 () Bool)

(assert (=> b!4840201 m!5835940))

(declare-fun m!5835942 () Bool)

(assert (=> b!4840206 m!5835942))

(declare-fun m!5835944 () Bool)

(assert (=> b!4840206 m!5835944))

(assert (=> b!4840206 m!5835944))

(declare-fun m!5835946 () Bool)

(assert (=> b!4840206 m!5835946))

(declare-fun m!5835948 () Bool)

(assert (=> b!4840206 m!5835948))

(assert (=> b!4840204 m!5835792))

(declare-fun m!5835950 () Bool)

(assert (=> b!4840204 m!5835950))

(assert (=> b!4840204 m!5835950))

(declare-fun m!5835952 () Bool)

(assert (=> b!4840204 m!5835952))

(assert (=> b!4840199 m!5835792))

(assert (=> b!4840199 m!5835950))

(assert (=> b!4840199 m!5835950))

(assert (=> b!4840199 m!5835952))

(assert (=> b!4840203 m!5835944))

(assert (=> b!4840203 m!5835944))

(assert (=> b!4840203 m!5835946))

(declare-fun m!5835954 () Bool)

(assert (=> b!4840205 m!5835954))

(declare-fun m!5835956 () Bool)

(assert (=> b!4840205 m!5835956))

(assert (=> b!4840200 m!5835792))

(assert (=> b!4840200 m!5835950))

(assert (=> d!1551540 m!5835954))

(declare-fun m!5835958 () Bool)

(assert (=> bm!337329 m!5835958))

(assert (=> b!4840075 d!1551540))

(declare-fun bs!1168320 () Bool)

(declare-fun d!1551542 () Bool)

(assert (= bs!1168320 (and d!1551542 start!503642)))

(declare-fun lambda!240859 () Int)

(assert (=> bs!1168320 (= lambda!240859 lambda!240836)))

(declare-fun bs!1168321 () Bool)

(assert (= bs!1168321 (and d!1551542 d!1551502)))

(assert (=> bs!1168321 (not (= lambda!240859 lambda!240842))))

(declare-fun bs!1168322 () Bool)

(assert (= bs!1168322 (and d!1551542 d!1551506)))

(assert (=> bs!1168322 (= lambda!240859 lambda!240850)))

(declare-fun bs!1168323 () Bool)

(assert (= bs!1168323 (and d!1551542 d!1551514)))

(assert (=> bs!1168323 (= lambda!240859 lambda!240858)))

(declare-fun lt!1984613 () ListMap!7097)

(assert (=> d!1551542 (invariantList!1876 (toList!7748 lt!1984613))))

(declare-fun e!3024929 () ListMap!7097)

(assert (=> d!1551542 (= lt!1984613 e!3024929)))

(declare-fun c!824316 () Bool)

(assert (=> d!1551542 (= c!824316 ((_ is Cons!55349) (toList!7747 lm!2671)))))

(assert (=> d!1551542 (forall!12836 (toList!7747 lm!2671) lambda!240859)))

(assert (=> d!1551542 (= (extractMap!2768 (toList!7747 lm!2671)) lt!1984613)))

(declare-fun b!4840207 () Bool)

(assert (=> b!4840207 (= e!3024929 (addToMapMapFromBucket!1908 (_2!32720 (h!61784 (toList!7747 lm!2671))) (extractMap!2768 (t!362969 (toList!7747 lm!2671)))))))

(declare-fun b!4840208 () Bool)

(assert (=> b!4840208 (= e!3024929 (ListMap!7098 Nil!55348))))

(assert (= (and d!1551542 c!824316) b!4840207))

(assert (= (and d!1551542 (not c!824316)) b!4840208))

(declare-fun m!5835960 () Bool)

(assert (=> d!1551542 m!5835960))

(declare-fun m!5835962 () Bool)

(assert (=> d!1551542 m!5835962))

(assert (=> b!4840207 m!5835822))

(assert (=> b!4840207 m!5835822))

(declare-fun m!5835964 () Bool)

(assert (=> b!4840207 m!5835964))

(assert (=> b!4840074 d!1551542))

(declare-fun b!4840247 () Bool)

(assert (=> b!4840247 true))

(declare-fun bs!1168334 () Bool)

(declare-fun b!4840243 () Bool)

(assert (= bs!1168334 (and b!4840243 b!4840247)))

(declare-fun lambda!240922 () Int)

(declare-fun lambda!240921 () Int)

(assert (=> bs!1168334 (= lambda!240922 lambda!240921)))

(assert (=> b!4840243 true))

(declare-fun lt!1984723 () ListMap!7097)

(declare-fun lambda!240923 () Int)

(assert (=> bs!1168334 (= (= lt!1984723 lt!1984532) (= lambda!240923 lambda!240921))))

(assert (=> b!4840243 (= (= lt!1984723 lt!1984532) (= lambda!240923 lambda!240922))))

(assert (=> b!4840243 true))

(declare-fun bs!1168335 () Bool)

(declare-fun d!1551544 () Bool)

(assert (= bs!1168335 (and d!1551544 b!4840247)))

(declare-fun lambda!240924 () Int)

(declare-fun lt!1984730 () ListMap!7097)

(assert (=> bs!1168335 (= (= lt!1984730 lt!1984532) (= lambda!240924 lambda!240921))))

(declare-fun bs!1168336 () Bool)

(assert (= bs!1168336 (and d!1551544 b!4840243)))

(assert (=> bs!1168336 (= (= lt!1984730 lt!1984532) (= lambda!240924 lambda!240922))))

(assert (=> bs!1168336 (= (= lt!1984730 lt!1984723) (= lambda!240924 lambda!240923))))

(assert (=> d!1551544 true))

(declare-fun e!3024951 () Bool)

(assert (=> d!1551544 e!3024951))

(declare-fun res!2063404 () Bool)

(assert (=> d!1551544 (=> (not res!2063404) (not e!3024951))))

(declare-fun forall!12838 (List!55472 Int) Bool)

(assert (=> d!1551544 (= res!2063404 (forall!12838 (_2!32720 (h!61784 (toList!7747 lm!2671))) lambda!240924))))

(declare-fun e!3024949 () ListMap!7097)

(assert (=> d!1551544 (= lt!1984730 e!3024949)))

(declare-fun c!824323 () Bool)

(assert (=> d!1551544 (= c!824323 ((_ is Nil!55348) (_2!32720 (h!61784 (toList!7747 lm!2671)))))))

(declare-fun noDuplicateKeys!2541 (List!55472) Bool)

(assert (=> d!1551544 (noDuplicateKeys!2541 (_2!32720 (h!61784 (toList!7747 lm!2671))))))

(assert (=> d!1551544 (= (addToMapMapFromBucket!1908 (_2!32720 (h!61784 (toList!7747 lm!2671))) lt!1984532) lt!1984730)))

(declare-fun call!337352 () Bool)

(declare-fun bm!337345 () Bool)

(assert (=> bm!337345 (= call!337352 (forall!12838 (toList!7748 lt!1984532) (ite c!824323 lambda!240921 lambda!240923)))))

(declare-fun call!337350 () Bool)

(declare-fun bm!337346 () Bool)

(assert (=> bm!337346 (= call!337350 (forall!12838 (ite c!824323 (toList!7748 lt!1984532) (t!362968 (_2!32720 (h!61784 (toList!7747 lm!2671))))) (ite c!824323 lambda!240921 lambda!240923)))))

(declare-fun bm!337347 () Bool)

(declare-fun call!337351 () Unit!144986)

(declare-fun lemmaContainsAllItsOwnKeys!1050 (ListMap!7097) Unit!144986)

(assert (=> bm!337347 (= call!337351 (lemmaContainsAllItsOwnKeys!1050 lt!1984532))))

(assert (=> b!4840243 (= e!3024949 lt!1984723)))

(declare-fun lt!1984734 () ListMap!7097)

(declare-fun +!2610 (ListMap!7097 tuple2!58850) ListMap!7097)

(assert (=> b!4840243 (= lt!1984734 (+!2610 lt!1984532 (h!61783 (_2!32720 (h!61784 (toList!7747 lm!2671))))))))

(assert (=> b!4840243 (= lt!1984723 (addToMapMapFromBucket!1908 (t!362968 (_2!32720 (h!61784 (toList!7747 lm!2671)))) (+!2610 lt!1984532 (h!61783 (_2!32720 (h!61784 (toList!7747 lm!2671)))))))))

(declare-fun lt!1984732 () Unit!144986)

(assert (=> b!4840243 (= lt!1984732 call!337351)))

(assert (=> b!4840243 (forall!12838 (toList!7748 lt!1984532) lambda!240922)))

(declare-fun lt!1984727 () Unit!144986)

(assert (=> b!4840243 (= lt!1984727 lt!1984732)))

(assert (=> b!4840243 (forall!12838 (toList!7748 lt!1984734) lambda!240923)))

(declare-fun lt!1984738 () Unit!144986)

(declare-fun Unit!145007 () Unit!144986)

(assert (=> b!4840243 (= lt!1984738 Unit!145007)))

(assert (=> b!4840243 call!337350))

(declare-fun lt!1984726 () Unit!144986)

(declare-fun Unit!145008 () Unit!144986)

(assert (=> b!4840243 (= lt!1984726 Unit!145008)))

(declare-fun lt!1984722 () Unit!144986)

(declare-fun Unit!145009 () Unit!144986)

(assert (=> b!4840243 (= lt!1984722 Unit!145009)))

(declare-fun lt!1984735 () Unit!144986)

(declare-fun forallContained!4493 (List!55472 Int tuple2!58850) Unit!144986)

(assert (=> b!4840243 (= lt!1984735 (forallContained!4493 (toList!7748 lt!1984734) lambda!240923 (h!61783 (_2!32720 (h!61784 (toList!7747 lm!2671))))))))

(assert (=> b!4840243 (contains!19093 lt!1984734 (_1!32719 (h!61783 (_2!32720 (h!61784 (toList!7747 lm!2671))))))))

(declare-fun lt!1984736 () Unit!144986)

(declare-fun Unit!145010 () Unit!144986)

(assert (=> b!4840243 (= lt!1984736 Unit!145010)))

(assert (=> b!4840243 (contains!19093 lt!1984723 (_1!32719 (h!61783 (_2!32720 (h!61784 (toList!7747 lm!2671))))))))

(declare-fun lt!1984740 () Unit!144986)

(declare-fun Unit!145011 () Unit!144986)

(assert (=> b!4840243 (= lt!1984740 Unit!145011)))

(assert (=> b!4840243 (forall!12838 (_2!32720 (h!61784 (toList!7747 lm!2671))) lambda!240923)))

(declare-fun lt!1984724 () Unit!144986)

(declare-fun Unit!145012 () Unit!144986)

(assert (=> b!4840243 (= lt!1984724 Unit!145012)))

(assert (=> b!4840243 (forall!12838 (toList!7748 lt!1984734) lambda!240923)))

(declare-fun lt!1984739 () Unit!144986)

(declare-fun Unit!145013 () Unit!144986)

(assert (=> b!4840243 (= lt!1984739 Unit!145013)))

(declare-fun lt!1984733 () Unit!144986)

(declare-fun Unit!145014 () Unit!144986)

(assert (=> b!4840243 (= lt!1984733 Unit!145014)))

(declare-fun lt!1984737 () Unit!144986)

(declare-fun addForallContainsKeyThenBeforeAdding!1048 (ListMap!7097 ListMap!7097 K!17104 V!17350) Unit!144986)

(assert (=> b!4840243 (= lt!1984737 (addForallContainsKeyThenBeforeAdding!1048 lt!1984532 lt!1984723 (_1!32719 (h!61783 (_2!32720 (h!61784 (toList!7747 lm!2671))))) (_2!32719 (h!61783 (_2!32720 (h!61784 (toList!7747 lm!2671)))))))))

(assert (=> b!4840243 call!337352))

(declare-fun lt!1984721 () Unit!144986)

(assert (=> b!4840243 (= lt!1984721 lt!1984737)))

(assert (=> b!4840243 (forall!12838 (toList!7748 lt!1984532) lambda!240923)))

(declare-fun lt!1984725 () Unit!144986)

(declare-fun Unit!145015 () Unit!144986)

(assert (=> b!4840243 (= lt!1984725 Unit!145015)))

(declare-fun res!2063402 () Bool)

(assert (=> b!4840243 (= res!2063402 (forall!12838 (_2!32720 (h!61784 (toList!7747 lm!2671))) lambda!240923))))

(declare-fun e!3024950 () Bool)

(assert (=> b!4840243 (=> (not res!2063402) (not e!3024950))))

(assert (=> b!4840243 e!3024950))

(declare-fun lt!1984731 () Unit!144986)

(declare-fun Unit!145016 () Unit!144986)

(assert (=> b!4840243 (= lt!1984731 Unit!145016)))

(declare-fun b!4840244 () Bool)

(declare-fun res!2063403 () Bool)

(assert (=> b!4840244 (=> (not res!2063403) (not e!3024951))))

(assert (=> b!4840244 (= res!2063403 (forall!12838 (toList!7748 lt!1984532) lambda!240924))))

(declare-fun b!4840245 () Bool)

(assert (=> b!4840245 (= e!3024951 (invariantList!1876 (toList!7748 lt!1984730)))))

(declare-fun b!4840246 () Bool)

(assert (=> b!4840246 (= e!3024950 (forall!12838 (toList!7748 lt!1984532) lambda!240923))))

(assert (=> b!4840247 (= e!3024949 lt!1984532)))

(declare-fun lt!1984720 () Unit!144986)

(assert (=> b!4840247 (= lt!1984720 call!337351)))

(assert (=> b!4840247 call!337350))

(declare-fun lt!1984729 () Unit!144986)

(assert (=> b!4840247 (= lt!1984729 lt!1984720)))

(assert (=> b!4840247 call!337352))

(declare-fun lt!1984728 () Unit!144986)

(declare-fun Unit!145017 () Unit!144986)

(assert (=> b!4840247 (= lt!1984728 Unit!145017)))

(assert (= (and d!1551544 c!824323) b!4840247))

(assert (= (and d!1551544 (not c!824323)) b!4840243))

(assert (= (and b!4840243 res!2063402) b!4840246))

(assert (= (or b!4840247 b!4840243) bm!337347))

(assert (= (or b!4840247 b!4840243) bm!337346))

(assert (= (or b!4840247 b!4840243) bm!337345))

(assert (= (and d!1551544 res!2063404) b!4840244))

(assert (= (and b!4840244 res!2063403) b!4840245))

(declare-fun m!5836008 () Bool)

(assert (=> b!4840244 m!5836008))

(declare-fun m!5836010 () Bool)

(assert (=> bm!337345 m!5836010))

(declare-fun m!5836012 () Bool)

(assert (=> b!4840246 m!5836012))

(declare-fun m!5836014 () Bool)

(assert (=> bm!337347 m!5836014))

(declare-fun m!5836016 () Bool)

(assert (=> b!4840243 m!5836016))

(declare-fun m!5836018 () Bool)

(assert (=> b!4840243 m!5836018))

(declare-fun m!5836020 () Bool)

(assert (=> b!4840243 m!5836020))

(declare-fun m!5836022 () Bool)

(assert (=> b!4840243 m!5836022))

(declare-fun m!5836024 () Bool)

(assert (=> b!4840243 m!5836024))

(declare-fun m!5836026 () Bool)

(assert (=> b!4840243 m!5836026))

(declare-fun m!5836028 () Bool)

(assert (=> b!4840243 m!5836028))

(assert (=> b!4840243 m!5836028))

(declare-fun m!5836030 () Bool)

(assert (=> b!4840243 m!5836030))

(assert (=> b!4840243 m!5836012))

(declare-fun m!5836032 () Bool)

(assert (=> b!4840243 m!5836032))

(assert (=> b!4840243 m!5836020))

(assert (=> b!4840243 m!5836026))

(declare-fun m!5836034 () Bool)

(assert (=> b!4840245 m!5836034))

(declare-fun m!5836036 () Bool)

(assert (=> bm!337346 m!5836036))

(declare-fun m!5836038 () Bool)

(assert (=> d!1551544 m!5836038))

(declare-fun m!5836040 () Bool)

(assert (=> d!1551544 m!5836040))

(assert (=> b!4840074 d!1551544))

(declare-fun bs!1168337 () Bool)

(declare-fun d!1551550 () Bool)

(assert (= bs!1168337 (and d!1551550 d!1551502)))

(declare-fun lambda!240925 () Int)

(assert (=> bs!1168337 (not (= lambda!240925 lambda!240842))))

(declare-fun bs!1168338 () Bool)

(assert (= bs!1168338 (and d!1551550 d!1551542)))

(assert (=> bs!1168338 (= lambda!240925 lambda!240859)))

(declare-fun bs!1168339 () Bool)

(assert (= bs!1168339 (and d!1551550 start!503642)))

(assert (=> bs!1168339 (= lambda!240925 lambda!240836)))

(declare-fun bs!1168340 () Bool)

(assert (= bs!1168340 (and d!1551550 d!1551514)))

(assert (=> bs!1168340 (= lambda!240925 lambda!240858)))

(declare-fun bs!1168341 () Bool)

(assert (= bs!1168341 (and d!1551550 d!1551506)))

(assert (=> bs!1168341 (= lambda!240925 lambda!240850)))

(declare-fun lt!1984741 () ListMap!7097)

(assert (=> d!1551550 (invariantList!1876 (toList!7748 lt!1984741))))

(declare-fun e!3024952 () ListMap!7097)

(assert (=> d!1551550 (= lt!1984741 e!3024952)))

(declare-fun c!824324 () Bool)

(assert (=> d!1551550 (= c!824324 ((_ is Cons!55349) (t!362969 (toList!7747 lm!2671))))))

(assert (=> d!1551550 (forall!12836 (t!362969 (toList!7747 lm!2671)) lambda!240925)))

(assert (=> d!1551550 (= (extractMap!2768 (t!362969 (toList!7747 lm!2671))) lt!1984741)))

(declare-fun b!4840250 () Bool)

(assert (=> b!4840250 (= e!3024952 (addToMapMapFromBucket!1908 (_2!32720 (h!61784 (t!362969 (toList!7747 lm!2671)))) (extractMap!2768 (t!362969 (t!362969 (toList!7747 lm!2671))))))))

(declare-fun b!4840251 () Bool)

(assert (=> b!4840251 (= e!3024952 (ListMap!7098 Nil!55348))))

(assert (= (and d!1551550 c!824324) b!4840250))

(assert (= (and d!1551550 (not c!824324)) b!4840251))

(declare-fun m!5836042 () Bool)

(assert (=> d!1551550 m!5836042))

(declare-fun m!5836044 () Bool)

(assert (=> d!1551550 m!5836044))

(declare-fun m!5836046 () Bool)

(assert (=> b!4840250 m!5836046))

(assert (=> b!4840250 m!5836046))

(declare-fun m!5836048 () Bool)

(assert (=> b!4840250 m!5836048))

(assert (=> b!4840074 d!1551550))

(declare-fun d!1551552 () Bool)

(declare-fun res!2063409 () Bool)

(declare-fun e!3024957 () Bool)

(assert (=> d!1551552 (=> res!2063409 e!3024957)))

(assert (=> d!1551552 (= res!2063409 ((_ is Nil!55349) (toList!7747 lm!2671)))))

(assert (=> d!1551552 (= (forall!12836 (toList!7747 lm!2671) lambda!240836) e!3024957)))

(declare-fun b!4840256 () Bool)

(declare-fun e!3024958 () Bool)

(assert (=> b!4840256 (= e!3024957 e!3024958)))

(declare-fun res!2063410 () Bool)

(assert (=> b!4840256 (=> (not res!2063410) (not e!3024958))))

(declare-fun dynLambda!22294 (Int tuple2!58852) Bool)

(assert (=> b!4840256 (= res!2063410 (dynLambda!22294 lambda!240836 (h!61784 (toList!7747 lm!2671))))))

(declare-fun b!4840257 () Bool)

(assert (=> b!4840257 (= e!3024958 (forall!12836 (t!362969 (toList!7747 lm!2671)) lambda!240836))))

(assert (= (and d!1551552 (not res!2063409)) b!4840256))

(assert (= (and b!4840256 res!2063410) b!4840257))

(declare-fun b_lambda!191319 () Bool)

(assert (=> (not b_lambda!191319) (not b!4840256)))

(declare-fun m!5836050 () Bool)

(assert (=> b!4840256 m!5836050))

(declare-fun m!5836052 () Bool)

(assert (=> b!4840257 m!5836052))

(assert (=> start!503642 d!1551552))

(declare-fun d!1551554 () Bool)

(declare-fun isStrictlySorted!1040 (List!55473) Bool)

(assert (=> d!1551554 (= (inv!71004 lm!2671) (isStrictlySorted!1040 (toList!7747 lm!2671)))))

(declare-fun bs!1168342 () Bool)

(assert (= bs!1168342 d!1551554))

(declare-fun m!5836054 () Bool)

(assert (=> bs!1168342 m!5836054))

(assert (=> start!503642 d!1551554))

(declare-fun d!1551556 () Bool)

(declare-fun res!2063411 () Bool)

(declare-fun e!3024960 () Bool)

(assert (=> d!1551556 (=> res!2063411 e!3024960)))

(declare-fun e!3024961 () Bool)

(assert (=> d!1551556 (= res!2063411 e!3024961)))

(declare-fun res!2063412 () Bool)

(assert (=> d!1551556 (=> (not res!2063412) (not e!3024961))))

(assert (=> d!1551556 (= res!2063412 ((_ is Cons!55349) (t!362969 (toList!7747 lm!2671))))))

(assert (=> d!1551556 (= (containsKeyBiggerList!698 (t!362969 (toList!7747 lm!2671)) key!6540) e!3024960)))

(declare-fun b!4840258 () Bool)

(assert (=> b!4840258 (= e!3024961 (containsKey!4578 (_2!32720 (h!61784 (t!362969 (toList!7747 lm!2671)))) key!6540))))

(declare-fun b!4840259 () Bool)

(declare-fun e!3024959 () Bool)

(assert (=> b!4840259 (= e!3024960 e!3024959)))

(declare-fun res!2063413 () Bool)

(assert (=> b!4840259 (=> (not res!2063413) (not e!3024959))))

(assert (=> b!4840259 (= res!2063413 ((_ is Cons!55349) (t!362969 (toList!7747 lm!2671))))))

(declare-fun b!4840260 () Bool)

(assert (=> b!4840260 (= e!3024959 (containsKeyBiggerList!698 (t!362969 (t!362969 (toList!7747 lm!2671))) key!6540))))

(assert (= (and d!1551556 res!2063412) b!4840258))

(assert (= (and d!1551556 (not res!2063411)) b!4840259))

(assert (= (and b!4840259 res!2063413) b!4840260))

(declare-fun m!5836056 () Bool)

(assert (=> b!4840258 m!5836056))

(declare-fun m!5836058 () Bool)

(assert (=> b!4840260 m!5836058))

(assert (=> b!4840079 d!1551556))

(declare-fun d!1551558 () Bool)

(declare-fun res!2063414 () Bool)

(declare-fun e!3024963 () Bool)

(assert (=> d!1551558 (=> res!2063414 e!3024963)))

(declare-fun e!3024964 () Bool)

(assert (=> d!1551558 (= res!2063414 e!3024964)))

(declare-fun res!2063415 () Bool)

(assert (=> d!1551558 (=> (not res!2063415) (not e!3024964))))

(assert (=> d!1551558 (= res!2063415 ((_ is Cons!55349) (tail!9492 (toList!7747 lm!2671))))))

(assert (=> d!1551558 (= (containsKeyBiggerList!698 (tail!9492 (toList!7747 lm!2671)) key!6540) e!3024963)))

(declare-fun b!4840261 () Bool)

(assert (=> b!4840261 (= e!3024964 (containsKey!4578 (_2!32720 (h!61784 (tail!9492 (toList!7747 lm!2671)))) key!6540))))

(declare-fun b!4840262 () Bool)

(declare-fun e!3024962 () Bool)

(assert (=> b!4840262 (= e!3024963 e!3024962)))

(declare-fun res!2063416 () Bool)

(assert (=> b!4840262 (=> (not res!2063416) (not e!3024962))))

(assert (=> b!4840262 (= res!2063416 ((_ is Cons!55349) (tail!9492 (toList!7747 lm!2671))))))

(declare-fun b!4840263 () Bool)

(assert (=> b!4840263 (= e!3024962 (containsKeyBiggerList!698 (t!362969 (tail!9492 (toList!7747 lm!2671))) key!6540))))

(assert (= (and d!1551558 res!2063415) b!4840261))

(assert (= (and d!1551558 (not res!2063414)) b!4840262))

(assert (= (and b!4840262 res!2063416) b!4840263))

(declare-fun m!5836060 () Bool)

(assert (=> b!4840261 m!5836060))

(declare-fun m!5836062 () Bool)

(assert (=> b!4840263 m!5836062))

(assert (=> b!4840079 d!1551558))

(declare-fun d!1551560 () Bool)

(assert (=> d!1551560 (= (tail!9492 (toList!7747 lm!2671)) (t!362969 (toList!7747 lm!2671)))))

(assert (=> b!4840079 d!1551560))

(declare-fun bs!1168343 () Bool)

(declare-fun d!1551562 () Bool)

(assert (= bs!1168343 (and d!1551562 d!1551502)))

(declare-fun lambda!240928 () Int)

(assert (=> bs!1168343 (not (= lambda!240928 lambda!240842))))

(declare-fun bs!1168344 () Bool)

(assert (= bs!1168344 (and d!1551562 d!1551542)))

(assert (=> bs!1168344 (= lambda!240928 lambda!240859)))

(declare-fun bs!1168345 () Bool)

(assert (= bs!1168345 (and d!1551562 start!503642)))

(assert (=> bs!1168345 (= lambda!240928 lambda!240836)))

(declare-fun bs!1168346 () Bool)

(assert (= bs!1168346 (and d!1551562 d!1551550)))

(assert (=> bs!1168346 (= lambda!240928 lambda!240925)))

(declare-fun bs!1168347 () Bool)

(assert (= bs!1168347 (and d!1551562 d!1551514)))

(assert (=> bs!1168347 (= lambda!240928 lambda!240858)))

(declare-fun bs!1168348 () Bool)

(assert (= bs!1168348 (and d!1551562 d!1551506)))

(assert (=> bs!1168348 (= lambda!240928 lambda!240850)))

(assert (=> d!1551562 (containsKeyBiggerList!698 (tail!9492 (toList!7747 lm!2671)) key!6540)))

(declare-fun lt!1984744 () Unit!144986)

(declare-fun choose!35369 (ListLongMap!6291 K!17104 Hashable!7414) Unit!144986)

(assert (=> d!1551562 (= lt!1984744 (choose!35369 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1551562 (forall!12836 (toList!7747 lm!2671) lambda!240928)))

(assert (=> d!1551562 (= (lemmaInBiggerListButNotHeadThenTail!52 lm!2671 key!6540 hashF!1662) lt!1984744)))

(declare-fun bs!1168349 () Bool)

(assert (= bs!1168349 d!1551562))

(assert (=> bs!1168349 m!5835808))

(assert (=> bs!1168349 m!5835808))

(assert (=> bs!1168349 m!5835810))

(declare-fun m!5836064 () Bool)

(assert (=> bs!1168349 m!5836064))

(declare-fun m!5836066 () Bool)

(assert (=> bs!1168349 m!5836066))

(assert (=> b!4840079 d!1551562))

(declare-fun d!1551564 () Bool)

(declare-fun res!2063421 () Bool)

(declare-fun e!3024969 () Bool)

(assert (=> d!1551564 (=> res!2063421 e!3024969)))

(assert (=> d!1551564 (= res!2063421 (and ((_ is Cons!55348) (_2!32720 (h!61784 (toList!7747 lm!2671)))) (= (_1!32719 (h!61783 (_2!32720 (h!61784 (toList!7747 lm!2671))))) key!6540)))))

(assert (=> d!1551564 (= (containsKey!4578 (_2!32720 (h!61784 (toList!7747 lm!2671))) key!6540) e!3024969)))

(declare-fun b!4840268 () Bool)

(declare-fun e!3024970 () Bool)

(assert (=> b!4840268 (= e!3024969 e!3024970)))

(declare-fun res!2063422 () Bool)

(assert (=> b!4840268 (=> (not res!2063422) (not e!3024970))))

(assert (=> b!4840268 (= res!2063422 ((_ is Cons!55348) (_2!32720 (h!61784 (toList!7747 lm!2671)))))))

(declare-fun b!4840269 () Bool)

(assert (=> b!4840269 (= e!3024970 (containsKey!4578 (t!362968 (_2!32720 (h!61784 (toList!7747 lm!2671)))) key!6540))))

(assert (= (and d!1551564 (not res!2063421)) b!4840268))

(assert (= (and b!4840268 res!2063422) b!4840269))

(declare-fun m!5836068 () Bool)

(assert (=> b!4840269 m!5836068))

(assert (=> b!4840078 d!1551564))

(declare-fun b!4840274 () Bool)

(declare-fun e!3024973 () Bool)

(declare-fun tp!1363809 () Bool)

(declare-fun tp!1363810 () Bool)

(assert (=> b!4840274 (= e!3024973 (and tp!1363809 tp!1363810))))

(assert (=> b!4840076 (= tp!1363798 e!3024973)))

(assert (= (and b!4840076 ((_ is Cons!55349) (toList!7747 lm!2671))) b!4840274))

(declare-fun b_lambda!191321 () Bool)

(assert (= b_lambda!191319 (or start!503642 b_lambda!191321)))

(declare-fun bs!1168350 () Bool)

(declare-fun d!1551566 () Bool)

(assert (= bs!1168350 (and d!1551566 start!503642)))

(assert (=> bs!1168350 (= (dynLambda!22294 lambda!240836 (h!61784 (toList!7747 lm!2671))) (noDuplicateKeys!2541 (_2!32720 (h!61784 (toList!7747 lm!2671)))))))

(assert (=> bs!1168350 m!5836040))

(assert (=> b!4840256 d!1551566))

(check-sat (not bm!337329) (not d!1551544) (not b!4840190) (not bm!337328) (not b!4840243) (not d!1551506) (not d!1551514) (not b!4840191) (not b!4840200) (not b!4840257) (not b!4840258) (not b!4840203) (not b!4840199) (not b!4840201) (not d!1551554) (not b!4840196) (not bm!337345) (not b!4840244) (not b!4840204) (not b!4840093) (not d!1551540) (not d!1551562) (not b!4840245) (not d!1551542) (not b!4840197) (not b!4840263) (not b!4840250) (not b!4840207) (not b!4840274) (not b!4840260) (not d!1551550) (not b!4840261) (not d!1551538) (not bs!1168350) tp_is_empty!34931 (not b!4840195) (not b!4840169) (not b!4840192) (not b!4840091) (not b_lambda!191321) (not d!1551536) (not bm!337346) (not b!4840246) (not bm!337347) (not b!4840206) (not d!1551502) (not b!4840194) (not b!4840269) (not b!4840205))
(check-sat)
