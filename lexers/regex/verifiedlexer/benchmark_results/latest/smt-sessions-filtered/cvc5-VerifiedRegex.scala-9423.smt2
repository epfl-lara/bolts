; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498300 () Bool)

(assert start!498300)

(declare-fun b!4815906 () Bool)

(declare-fun res!2048632 () Bool)

(declare-fun e!3008856 () Bool)

(assert (=> b!4815906 (=> (not res!2048632) (not e!3008856))))

(declare-datatypes ((K!16402 0))(
  ( (K!16403 (val!21427 Int)) )
))
(declare-datatypes ((V!16648 0))(
  ( (V!16649 (val!21428 Int)) )
))
(declare-datatypes ((tuple2!57790 0))(
  ( (tuple2!57791 (_1!32189 K!16402) (_2!32189 V!16648)) )
))
(declare-datatypes ((List!54870 0))(
  ( (Nil!54746) (Cons!54746 (h!61178 tuple2!57790) (t!362366 List!54870)) )
))
(declare-datatypes ((tuple2!57792 0))(
  ( (tuple2!57793 (_1!32190 (_ BitVec 64)) (_2!32190 List!54870)) )
))
(declare-datatypes ((List!54871 0))(
  ( (Nil!54747) (Cons!54747 (h!61179 tuple2!57792) (t!362367 List!54871)) )
))
(declare-datatypes ((ListLongMap!5793 0))(
  ( (ListLongMap!5794 (toList!7313 List!54871)) )
))
(declare-fun lm!2251 () ListLongMap!5793)

(declare-fun key!5322 () K!16402)

(declare-datatypes ((ListMap!6727 0))(
  ( (ListMap!6728 (toList!7314 List!54870)) )
))
(declare-fun contains!18560 (ListMap!6727 K!16402) Bool)

(declare-fun extractMap!2615 (List!54871) ListMap!6727)

(assert (=> b!4815906 (= res!2048632 (contains!18560 (extractMap!2615 (toList!7313 lm!2251)) key!5322))))

(declare-fun b!4815907 () Bool)

(declare-fun e!3008855 () Bool)

(declare-fun tp!1361876 () Bool)

(assert (=> b!4815907 (= e!3008855 tp!1361876)))

(declare-fun b!4815908 () Bool)

(declare-datatypes ((Unit!141944 0))(
  ( (Unit!141945) )
))
(declare-fun e!3008857 () Unit!141944)

(declare-fun Unit!141946 () Unit!141944)

(assert (=> b!4815908 (= e!3008857 Unit!141946)))

(declare-fun lt!1966736 () Unit!141944)

(declare-datatypes ((Hashable!7165 0))(
  ( (HashableExt!7164 (__x!33440 Int)) )
))
(declare-fun hashF!1486 () Hashable!7165)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!437 (ListLongMap!5793 K!16402 Hashable!7165) Unit!141944)

(assert (=> b!4815908 (= lt!1966736 (lemmaNotInItsHashBucketThenNotInMap!437 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4815908 false))

(declare-fun b!4815909 () Bool)

(declare-fun Unit!141947 () Unit!141944)

(assert (=> b!4815909 (= e!3008857 Unit!141947)))

(declare-fun b!4815910 () Bool)

(declare-fun e!3008854 () Bool)

(assert (=> b!4815910 (= e!3008856 (not e!3008854))))

(declare-fun res!2048630 () Bool)

(assert (=> b!4815910 (=> res!2048630 e!3008854)))

(declare-datatypes ((Option!13417 0))(
  ( (None!13416) (Some!13416 (v!49067 tuple2!57790)) )
))
(declare-fun lt!1966729 () Option!13417)

(declare-fun isDefined!10541 (Option!13417) Bool)

(assert (=> b!4815910 (= res!2048630 (not (isDefined!10541 lt!1966729)))))

(declare-fun lt!1966731 () Unit!141944)

(assert (=> b!4815910 (= lt!1966731 e!3008857)))

(declare-fun c!820795 () Bool)

(declare-fun isEmpty!29587 (Option!13417) Bool)

(assert (=> b!4815910 (= c!820795 (isEmpty!29587 lt!1966729))))

(declare-fun lt!1966735 () List!54870)

(declare-fun getPair!1005 (List!54870 K!16402) Option!13417)

(assert (=> b!4815910 (= lt!1966729 (getPair!1005 lt!1966735 key!5322))))

(declare-fun lambda!234515 () Int)

(declare-fun lt!1966733 () Unit!141944)

(declare-fun lt!1966734 () tuple2!57792)

(declare-fun forallContained!4333 (List!54871 Int tuple2!57792) Unit!141944)

(assert (=> b!4815910 (= lt!1966733 (forallContained!4333 (toList!7313 lm!2251) lambda!234515 lt!1966734))))

(declare-fun contains!18561 (List!54871 tuple2!57792) Bool)

(assert (=> b!4815910 (contains!18561 (toList!7313 lm!2251) lt!1966734)))

(declare-fun lt!1966730 () (_ BitVec 64))

(assert (=> b!4815910 (= lt!1966734 (tuple2!57793 lt!1966730 lt!1966735))))

(declare-fun lt!1966732 () Unit!141944)

(declare-fun lemmaGetValueImpliesTupleContained!676 (ListLongMap!5793 (_ BitVec 64) List!54870) Unit!141944)

(assert (=> b!4815910 (= lt!1966732 (lemmaGetValueImpliesTupleContained!676 lm!2251 lt!1966730 lt!1966735))))

(declare-fun apply!13270 (ListLongMap!5793 (_ BitVec 64)) List!54870)

(assert (=> b!4815910 (= lt!1966735 (apply!13270 lm!2251 lt!1966730))))

(declare-fun contains!18562 (ListLongMap!5793 (_ BitVec 64)) Bool)

(assert (=> b!4815910 (contains!18562 lm!2251 lt!1966730)))

(declare-fun hash!5237 (Hashable!7165 K!16402) (_ BitVec 64))

(assert (=> b!4815910 (= lt!1966730 (hash!5237 hashF!1486 key!5322))))

(declare-fun lt!1966728 () Unit!141944)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1103 (ListLongMap!5793 K!16402 Hashable!7165) Unit!141944)

(assert (=> b!4815910 (= lt!1966728 (lemmaInGenMapThenLongMapContainsHash!1103 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4815911 () Bool)

(declare-fun res!2048631 () Bool)

(assert (=> b!4815911 (=> (not res!2048631) (not e!3008856))))

(declare-fun allKeysSameHashInMap!2481 (ListLongMap!5793 Hashable!7165) Bool)

(assert (=> b!4815911 (= res!2048631 (allKeysSameHashInMap!2481 lm!2251 hashF!1486))))

(declare-fun res!2048633 () Bool)

(assert (=> start!498300 (=> (not res!2048633) (not e!3008856))))

(declare-fun forall!12471 (List!54871 Int) Bool)

(assert (=> start!498300 (= res!2048633 (forall!12471 (toList!7313 lm!2251) lambda!234515))))

(assert (=> start!498300 e!3008856))

(declare-fun inv!70303 (ListLongMap!5793) Bool)

(assert (=> start!498300 (and (inv!70303 lm!2251) e!3008855)))

(assert (=> start!498300 true))

(declare-fun tp_is_empty!34203 () Bool)

(assert (=> start!498300 tp_is_empty!34203))

(declare-fun b!4815912 () Bool)

(declare-fun noDuplicateKeys!2406 (List!54870) Bool)

(assert (=> b!4815912 (= e!3008854 (noDuplicateKeys!2406 lt!1966735))))

(declare-fun lt!1966727 () Unit!141944)

(assert (=> b!4815912 (= lt!1966727 (forallContained!4333 (toList!7313 lm!2251) lambda!234515 lt!1966734))))

(assert (= (and start!498300 res!2048633) b!4815911))

(assert (= (and b!4815911 res!2048631) b!4815906))

(assert (= (and b!4815906 res!2048632) b!4815910))

(assert (= (and b!4815910 c!820795) b!4815908))

(assert (= (and b!4815910 (not c!820795)) b!4815909))

(assert (= (and b!4815910 (not res!2048630)) b!4815912))

(assert (= start!498300 b!4815907))

(declare-fun m!5802174 () Bool)

(assert (=> b!4815908 m!5802174))

(declare-fun m!5802176 () Bool)

(assert (=> b!4815912 m!5802176))

(declare-fun m!5802178 () Bool)

(assert (=> b!4815912 m!5802178))

(declare-fun m!5802180 () Bool)

(assert (=> b!4815911 m!5802180))

(declare-fun m!5802182 () Bool)

(assert (=> b!4815906 m!5802182))

(assert (=> b!4815906 m!5802182))

(declare-fun m!5802184 () Bool)

(assert (=> b!4815906 m!5802184))

(declare-fun m!5802186 () Bool)

(assert (=> b!4815910 m!5802186))

(declare-fun m!5802188 () Bool)

(assert (=> b!4815910 m!5802188))

(declare-fun m!5802190 () Bool)

(assert (=> b!4815910 m!5802190))

(declare-fun m!5802192 () Bool)

(assert (=> b!4815910 m!5802192))

(declare-fun m!5802194 () Bool)

(assert (=> b!4815910 m!5802194))

(declare-fun m!5802196 () Bool)

(assert (=> b!4815910 m!5802196))

(assert (=> b!4815910 m!5802178))

(declare-fun m!5802198 () Bool)

(assert (=> b!4815910 m!5802198))

(declare-fun m!5802200 () Bool)

(assert (=> b!4815910 m!5802200))

(declare-fun m!5802202 () Bool)

(assert (=> b!4815910 m!5802202))

(declare-fun m!5802204 () Bool)

(assert (=> start!498300 m!5802204))

(declare-fun m!5802206 () Bool)

(assert (=> start!498300 m!5802206))

(push 1)

(assert (not b!4815911))

(assert (not b!4815912))

(assert tp_is_empty!34203)

(assert (not b!4815907))

(assert (not start!498300))

(assert (not b!4815910))

(assert (not b!4815906))

(assert (not b!4815908))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1541350 () Bool)

(declare-fun hash!5239 (Hashable!7165 K!16402) (_ BitVec 64))

(assert (=> d!1541350 (= (hash!5237 hashF!1486 key!5322) (hash!5239 hashF!1486 key!5322))))

(declare-fun bs!1160547 () Bool)

(assert (= bs!1160547 d!1541350))

(declare-fun m!5802242 () Bool)

(assert (=> bs!1160547 m!5802242))

(assert (=> b!4815910 d!1541350))

(declare-fun d!1541352 () Bool)

(declare-fun e!3008875 () Bool)

(assert (=> d!1541352 e!3008875))

(declare-fun res!2048648 () Bool)

(assert (=> d!1541352 (=> res!2048648 e!3008875)))

(declare-fun lt!1966778 () Bool)

(assert (=> d!1541352 (= res!2048648 (not lt!1966778))))

(declare-fun lt!1966776 () Bool)

(assert (=> d!1541352 (= lt!1966778 lt!1966776)))

(declare-fun lt!1966777 () Unit!141944)

(declare-fun e!3008874 () Unit!141944)

(assert (=> d!1541352 (= lt!1966777 e!3008874)))

(declare-fun c!820801 () Bool)

(assert (=> d!1541352 (= c!820801 lt!1966776)))

(declare-fun containsKey!4238 (List!54871 (_ BitVec 64)) Bool)

(assert (=> d!1541352 (= lt!1966776 (containsKey!4238 (toList!7313 lm!2251) lt!1966730))))

(assert (=> d!1541352 (= (contains!18562 lm!2251 lt!1966730) lt!1966778)))

(declare-fun b!4815940 () Bool)

(declare-fun lt!1966775 () Unit!141944)

(assert (=> b!4815940 (= e!3008874 lt!1966775)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2346 (List!54871 (_ BitVec 64)) Unit!141944)

(assert (=> b!4815940 (= lt!1966775 (lemmaContainsKeyImpliesGetValueByKeyDefined!2346 (toList!7313 lm!2251) lt!1966730))))

(declare-datatypes ((Option!13419 0))(
  ( (None!13418) (Some!13418 (v!49070 List!54870)) )
))
(declare-fun isDefined!10543 (Option!13419) Bool)

(declare-fun getValueByKey!2560 (List!54871 (_ BitVec 64)) Option!13419)

(assert (=> b!4815940 (isDefined!10543 (getValueByKey!2560 (toList!7313 lm!2251) lt!1966730))))

(declare-fun b!4815941 () Bool)

(declare-fun Unit!141952 () Unit!141944)

(assert (=> b!4815941 (= e!3008874 Unit!141952)))

(declare-fun b!4815942 () Bool)

(assert (=> b!4815942 (= e!3008875 (isDefined!10543 (getValueByKey!2560 (toList!7313 lm!2251) lt!1966730)))))

(assert (= (and d!1541352 c!820801) b!4815940))

(assert (= (and d!1541352 (not c!820801)) b!4815941))

(assert (= (and d!1541352 (not res!2048648)) b!4815942))

(declare-fun m!5802244 () Bool)

(assert (=> d!1541352 m!5802244))

(declare-fun m!5802246 () Bool)

(assert (=> b!4815940 m!5802246))

(declare-fun m!5802248 () Bool)

(assert (=> b!4815940 m!5802248))

(assert (=> b!4815940 m!5802248))

(declare-fun m!5802250 () Bool)

(assert (=> b!4815940 m!5802250))

(assert (=> b!4815942 m!5802248))

(assert (=> b!4815942 m!5802248))

(assert (=> b!4815942 m!5802250))

(assert (=> b!4815910 d!1541352))

(declare-fun d!1541354 () Bool)

(declare-fun lt!1966781 () Bool)

(declare-fun content!9792 (List!54871) (Set tuple2!57792))

(assert (=> d!1541354 (= lt!1966781 (set.member lt!1966734 (content!9792 (toList!7313 lm!2251))))))

(declare-fun e!3008881 () Bool)

(assert (=> d!1541354 (= lt!1966781 e!3008881)))

(declare-fun res!2048654 () Bool)

(assert (=> d!1541354 (=> (not res!2048654) (not e!3008881))))

(assert (=> d!1541354 (= res!2048654 (is-Cons!54747 (toList!7313 lm!2251)))))

(assert (=> d!1541354 (= (contains!18561 (toList!7313 lm!2251) lt!1966734) lt!1966781)))

(declare-fun b!4815947 () Bool)

(declare-fun e!3008880 () Bool)

(assert (=> b!4815947 (= e!3008881 e!3008880)))

(declare-fun res!2048653 () Bool)

(assert (=> b!4815947 (=> res!2048653 e!3008880)))

(assert (=> b!4815947 (= res!2048653 (= (h!61179 (toList!7313 lm!2251)) lt!1966734))))

(declare-fun b!4815948 () Bool)

(assert (=> b!4815948 (= e!3008880 (contains!18561 (t!362367 (toList!7313 lm!2251)) lt!1966734))))

(assert (= (and d!1541354 res!2048654) b!4815947))

(assert (= (and b!4815947 (not res!2048653)) b!4815948))

(declare-fun m!5802252 () Bool)

(assert (=> d!1541354 m!5802252))

(declare-fun m!5802254 () Bool)

(assert (=> d!1541354 m!5802254))

(declare-fun m!5802256 () Bool)

(assert (=> b!4815948 m!5802256))

(assert (=> b!4815910 d!1541354))

(declare-fun d!1541358 () Bool)

(declare-fun get!18730 (Option!13419) List!54870)

(assert (=> d!1541358 (= (apply!13270 lm!2251 lt!1966730) (get!18730 (getValueByKey!2560 (toList!7313 lm!2251) lt!1966730)))))

(declare-fun bs!1160548 () Bool)

(assert (= bs!1160548 d!1541358))

(assert (=> bs!1160548 m!5802248))

(assert (=> bs!1160548 m!5802248))

(declare-fun m!5802258 () Bool)

(assert (=> bs!1160548 m!5802258))

(assert (=> b!4815910 d!1541358))

(declare-fun d!1541360 () Bool)

(declare-fun dynLambda!22161 (Int tuple2!57792) Bool)

(assert (=> d!1541360 (dynLambda!22161 lambda!234515 lt!1966734)))

(declare-fun lt!1966784 () Unit!141944)

(declare-fun choose!34920 (List!54871 Int tuple2!57792) Unit!141944)

(assert (=> d!1541360 (= lt!1966784 (choose!34920 (toList!7313 lm!2251) lambda!234515 lt!1966734))))

(declare-fun e!3008884 () Bool)

(assert (=> d!1541360 e!3008884))

(declare-fun res!2048657 () Bool)

(assert (=> d!1541360 (=> (not res!2048657) (not e!3008884))))

(assert (=> d!1541360 (= res!2048657 (forall!12471 (toList!7313 lm!2251) lambda!234515))))

(assert (=> d!1541360 (= (forallContained!4333 (toList!7313 lm!2251) lambda!234515 lt!1966734) lt!1966784)))

(declare-fun b!4815951 () Bool)

(assert (=> b!4815951 (= e!3008884 (contains!18561 (toList!7313 lm!2251) lt!1966734))))

(assert (= (and d!1541360 res!2048657) b!4815951))

(declare-fun b_lambda!188425 () Bool)

(assert (=> (not b_lambda!188425) (not d!1541360)))

(declare-fun m!5802260 () Bool)

(assert (=> d!1541360 m!5802260))

(declare-fun m!5802262 () Bool)

(assert (=> d!1541360 m!5802262))

(assert (=> d!1541360 m!5802204))

(assert (=> b!4815951 m!5802202))

(assert (=> b!4815910 d!1541360))

(declare-fun d!1541362 () Bool)

(assert (=> d!1541362 (= (isDefined!10541 lt!1966729) (not (isEmpty!29587 lt!1966729)))))

(declare-fun bs!1160551 () Bool)

(assert (= bs!1160551 d!1541362))

(assert (=> bs!1160551 m!5802194))

(assert (=> b!4815910 d!1541362))

(declare-fun d!1541364 () Bool)

(declare-fun e!3008898 () Bool)

(assert (=> d!1541364 e!3008898))

(declare-fun res!2048669 () Bool)

(assert (=> d!1541364 (=> res!2048669 e!3008898)))

(declare-fun e!3008897 () Bool)

(assert (=> d!1541364 (= res!2048669 e!3008897)))

(declare-fun res!2048666 () Bool)

(assert (=> d!1541364 (=> (not res!2048666) (not e!3008897))))

(declare-fun lt!1966787 () Option!13417)

(assert (=> d!1541364 (= res!2048666 (isEmpty!29587 lt!1966787))))

(declare-fun e!3008899 () Option!13417)

(assert (=> d!1541364 (= lt!1966787 e!3008899)))

(declare-fun c!820806 () Bool)

(assert (=> d!1541364 (= c!820806 (and (is-Cons!54746 lt!1966735) (= (_1!32189 (h!61178 lt!1966735)) key!5322)))))

(assert (=> d!1541364 (noDuplicateKeys!2406 lt!1966735)))

(assert (=> d!1541364 (= (getPair!1005 lt!1966735 key!5322) lt!1966787)))

(declare-fun b!4815970 () Bool)

(assert (=> b!4815970 (= e!3008899 (Some!13416 (h!61178 lt!1966735)))))

(declare-fun b!4815971 () Bool)

(declare-fun e!3008896 () Option!13417)

(assert (=> b!4815971 (= e!3008896 None!13416)))

(declare-fun b!4815972 () Bool)

(declare-fun containsKey!4239 (List!54870 K!16402) Bool)

(assert (=> b!4815972 (= e!3008897 (not (containsKey!4239 lt!1966735 key!5322)))))

(declare-fun b!4815973 () Bool)

(declare-fun res!2048668 () Bool)

(declare-fun e!3008895 () Bool)

(assert (=> b!4815973 (=> (not res!2048668) (not e!3008895))))

(declare-fun get!18731 (Option!13417) tuple2!57790)

(assert (=> b!4815973 (= res!2048668 (= (_1!32189 (get!18731 lt!1966787)) key!5322))))

(declare-fun b!4815974 () Bool)

(assert (=> b!4815974 (= e!3008899 e!3008896)))

(declare-fun c!820807 () Bool)

(assert (=> b!4815974 (= c!820807 (is-Cons!54746 lt!1966735))))

(declare-fun b!4815975 () Bool)

(declare-fun contains!18566 (List!54870 tuple2!57790) Bool)

(assert (=> b!4815975 (= e!3008895 (contains!18566 lt!1966735 (get!18731 lt!1966787)))))

(declare-fun b!4815976 () Bool)

(assert (=> b!4815976 (= e!3008896 (getPair!1005 (t!362366 lt!1966735) key!5322))))

(declare-fun b!4815977 () Bool)

(assert (=> b!4815977 (= e!3008898 e!3008895)))

(declare-fun res!2048667 () Bool)

(assert (=> b!4815977 (=> (not res!2048667) (not e!3008895))))

(assert (=> b!4815977 (= res!2048667 (isDefined!10541 lt!1966787))))

(assert (= (and d!1541364 c!820806) b!4815970))

(assert (= (and d!1541364 (not c!820806)) b!4815974))

(assert (= (and b!4815974 c!820807) b!4815976))

(assert (= (and b!4815974 (not c!820807)) b!4815971))

(assert (= (and d!1541364 res!2048666) b!4815972))

(assert (= (and d!1541364 (not res!2048669)) b!4815977))

(assert (= (and b!4815977 res!2048667) b!4815973))

(assert (= (and b!4815973 res!2048668) b!4815975))

(declare-fun m!5802266 () Bool)

(assert (=> b!4815973 m!5802266))

(declare-fun m!5802268 () Bool)

(assert (=> b!4815977 m!5802268))

(assert (=> b!4815975 m!5802266))

(assert (=> b!4815975 m!5802266))

(declare-fun m!5802270 () Bool)

(assert (=> b!4815975 m!5802270))

(declare-fun m!5802272 () Bool)

(assert (=> b!4815976 m!5802272))

(declare-fun m!5802274 () Bool)

(assert (=> b!4815972 m!5802274))

(declare-fun m!5802276 () Bool)

(assert (=> d!1541364 m!5802276))

(assert (=> d!1541364 m!5802176))

(assert (=> b!4815910 d!1541364))

(declare-fun bs!1160552 () Bool)

(declare-fun d!1541368 () Bool)

(assert (= bs!1160552 (and d!1541368 start!498300)))

(declare-fun lambda!234528 () Int)

(assert (=> bs!1160552 (= lambda!234528 lambda!234515)))

(assert (=> d!1541368 (contains!18562 lm!2251 (hash!5237 hashF!1486 key!5322))))

(declare-fun lt!1966790 () Unit!141944)

(declare-fun choose!34921 (ListLongMap!5793 K!16402 Hashable!7165) Unit!141944)

(assert (=> d!1541368 (= lt!1966790 (choose!34921 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541368 (forall!12471 (toList!7313 lm!2251) lambda!234528)))

(assert (=> d!1541368 (= (lemmaInGenMapThenLongMapContainsHash!1103 lm!2251 key!5322 hashF!1486) lt!1966790)))

(declare-fun bs!1160553 () Bool)

(assert (= bs!1160553 d!1541368))

(assert (=> bs!1160553 m!5802198))

(assert (=> bs!1160553 m!5802198))

(declare-fun m!5802278 () Bool)

(assert (=> bs!1160553 m!5802278))

(declare-fun m!5802280 () Bool)

(assert (=> bs!1160553 m!5802280))

(declare-fun m!5802282 () Bool)

(assert (=> bs!1160553 m!5802282))

(assert (=> b!4815910 d!1541368))

(declare-fun d!1541370 () Bool)

(assert (=> d!1541370 (contains!18561 (toList!7313 lm!2251) (tuple2!57793 lt!1966730 lt!1966735))))

(declare-fun lt!1966793 () Unit!141944)

(declare-fun choose!34922 (ListLongMap!5793 (_ BitVec 64) List!54870) Unit!141944)

(assert (=> d!1541370 (= lt!1966793 (choose!34922 lm!2251 lt!1966730 lt!1966735))))

(assert (=> d!1541370 (contains!18562 lm!2251 lt!1966730)))

(assert (=> d!1541370 (= (lemmaGetValueImpliesTupleContained!676 lm!2251 lt!1966730 lt!1966735) lt!1966793)))

(declare-fun bs!1160554 () Bool)

(assert (= bs!1160554 d!1541370))

(declare-fun m!5802284 () Bool)

(assert (=> bs!1160554 m!5802284))

(declare-fun m!5802286 () Bool)

(assert (=> bs!1160554 m!5802286))

(assert (=> bs!1160554 m!5802196))

(assert (=> b!4815910 d!1541370))

(declare-fun d!1541372 () Bool)

(assert (=> d!1541372 (= (isEmpty!29587 lt!1966729) (not (is-Some!13416 lt!1966729)))))

(assert (=> b!4815910 d!1541372))

(declare-fun d!1541374 () Bool)

(declare-fun res!2048674 () Bool)

(declare-fun e!3008904 () Bool)

(assert (=> d!1541374 (=> res!2048674 e!3008904)))

(assert (=> d!1541374 (= res!2048674 (is-Nil!54747 (toList!7313 lm!2251)))))

(assert (=> d!1541374 (= (forall!12471 (toList!7313 lm!2251) lambda!234515) e!3008904)))

(declare-fun b!4815983 () Bool)

(declare-fun e!3008905 () Bool)

(assert (=> b!4815983 (= e!3008904 e!3008905)))

(declare-fun res!2048675 () Bool)

(assert (=> b!4815983 (=> (not res!2048675) (not e!3008905))))

(assert (=> b!4815983 (= res!2048675 (dynLambda!22161 lambda!234515 (h!61179 (toList!7313 lm!2251))))))

(declare-fun b!4815984 () Bool)

(assert (=> b!4815984 (= e!3008905 (forall!12471 (t!362367 (toList!7313 lm!2251)) lambda!234515))))

(assert (= (and d!1541374 (not res!2048674)) b!4815983))

(assert (= (and b!4815983 res!2048675) b!4815984))

(declare-fun b_lambda!188427 () Bool)

(assert (=> (not b_lambda!188427) (not b!4815983)))

(declare-fun m!5802288 () Bool)

(assert (=> b!4815983 m!5802288))

(declare-fun m!5802290 () Bool)

(assert (=> b!4815984 m!5802290))

(assert (=> start!498300 d!1541374))

(declare-fun d!1541376 () Bool)

(declare-fun isStrictlySorted!949 (List!54871) Bool)

(assert (=> d!1541376 (= (inv!70303 lm!2251) (isStrictlySorted!949 (toList!7313 lm!2251)))))

(declare-fun bs!1160555 () Bool)

(assert (= bs!1160555 d!1541376))

(declare-fun m!5802292 () Bool)

(assert (=> bs!1160555 m!5802292))

(assert (=> start!498300 d!1541376))

(declare-fun bs!1160556 () Bool)

(declare-fun d!1541378 () Bool)

(assert (= bs!1160556 (and d!1541378 start!498300)))

(declare-fun lambda!234531 () Int)

(assert (=> bs!1160556 (not (= lambda!234531 lambda!234515))))

(declare-fun bs!1160557 () Bool)

(assert (= bs!1160557 (and d!1541378 d!1541368)))

(assert (=> bs!1160557 (not (= lambda!234531 lambda!234528))))

(assert (=> d!1541378 true))

(assert (=> d!1541378 (= (allKeysSameHashInMap!2481 lm!2251 hashF!1486) (forall!12471 (toList!7313 lm!2251) lambda!234531))))

(declare-fun bs!1160558 () Bool)

(assert (= bs!1160558 d!1541378))

(declare-fun m!5802294 () Bool)

(assert (=> bs!1160558 m!5802294))

(assert (=> b!4815911 d!1541378))

(declare-fun b!4816005 () Bool)

(declare-fun e!3008919 () Bool)

(declare-datatypes ((List!54874 0))(
  ( (Nil!54750) (Cons!54750 (h!61182 K!16402) (t!362370 List!54874)) )
))
(declare-fun contains!18567 (List!54874 K!16402) Bool)

(declare-fun keys!20100 (ListMap!6727) List!54874)

(assert (=> b!4816005 (= e!3008919 (contains!18567 (keys!20100 (extractMap!2615 (toList!7313 lm!2251))) key!5322))))

(declare-fun b!4816006 () Bool)

(declare-fun e!3008921 () Unit!141944)

(declare-fun Unit!141953 () Unit!141944)

(assert (=> b!4816006 (= e!3008921 Unit!141953)))

(declare-fun b!4816007 () Bool)

(declare-fun e!3008920 () Bool)

(assert (=> b!4816007 (= e!3008920 (not (contains!18567 (keys!20100 (extractMap!2615 (toList!7313 lm!2251))) key!5322)))))

(declare-fun b!4816008 () Bool)

(declare-fun e!3008922 () Unit!141944)

(assert (=> b!4816008 (= e!3008922 e!3008921)))

(declare-fun c!820814 () Bool)

(declare-fun call!335965 () Bool)

(assert (=> b!4816008 (= c!820814 call!335965)))

(declare-fun d!1541380 () Bool)

(declare-fun e!3008918 () Bool)

(assert (=> d!1541380 e!3008918))

(declare-fun res!2048682 () Bool)

(assert (=> d!1541380 (=> res!2048682 e!3008918)))

(assert (=> d!1541380 (= res!2048682 e!3008920)))

(declare-fun res!2048684 () Bool)

(assert (=> d!1541380 (=> (not res!2048684) (not e!3008920))))

(declare-fun lt!1966816 () Bool)

(assert (=> d!1541380 (= res!2048684 (not lt!1966816))))

(declare-fun lt!1966817 () Bool)

(assert (=> d!1541380 (= lt!1966816 lt!1966817)))

(declare-fun lt!1966813 () Unit!141944)

(assert (=> d!1541380 (= lt!1966813 e!3008922)))

(declare-fun c!820815 () Bool)

(assert (=> d!1541380 (= c!820815 lt!1966817)))

(declare-fun containsKey!4240 (List!54870 K!16402) Bool)

(assert (=> d!1541380 (= lt!1966817 (containsKey!4240 (toList!7314 (extractMap!2615 (toList!7313 lm!2251))) key!5322))))

(assert (=> d!1541380 (= (contains!18560 (extractMap!2615 (toList!7313 lm!2251)) key!5322) lt!1966816)))

(declare-fun b!4816009 () Bool)

(declare-fun e!3008923 () List!54874)

(assert (=> b!4816009 (= e!3008923 (keys!20100 (extractMap!2615 (toList!7313 lm!2251))))))

(declare-fun b!4816010 () Bool)

(assert (=> b!4816010 (= e!3008918 e!3008919)))

(declare-fun res!2048683 () Bool)

(assert (=> b!4816010 (=> (not res!2048683) (not e!3008919))))

(declare-datatypes ((Option!13420 0))(
  ( (None!13419) (Some!13419 (v!49072 V!16648)) )
))
(declare-fun isDefined!10544 (Option!13420) Bool)

(declare-fun getValueByKey!2561 (List!54870 K!16402) Option!13420)

(assert (=> b!4816010 (= res!2048683 (isDefined!10544 (getValueByKey!2561 (toList!7314 (extractMap!2615 (toList!7313 lm!2251))) key!5322)))))

(declare-fun b!4816011 () Bool)

(assert (=> b!4816011 false))

(declare-fun lt!1966819 () Unit!141944)

(declare-fun lt!1966815 () Unit!141944)

(assert (=> b!4816011 (= lt!1966819 lt!1966815)))

(assert (=> b!4816011 (containsKey!4240 (toList!7314 (extractMap!2615 (toList!7313 lm!2251))) key!5322)))

(declare-fun lemmaInGetKeysListThenContainsKey!1135 (List!54870 K!16402) Unit!141944)

(assert (=> b!4816011 (= lt!1966815 (lemmaInGetKeysListThenContainsKey!1135 (toList!7314 (extractMap!2615 (toList!7313 lm!2251))) key!5322))))

(declare-fun Unit!141954 () Unit!141944)

(assert (=> b!4816011 (= e!3008921 Unit!141954)))

(declare-fun b!4816012 () Bool)

(declare-fun getKeysList!1135 (List!54870) List!54874)

(assert (=> b!4816012 (= e!3008923 (getKeysList!1135 (toList!7314 (extractMap!2615 (toList!7313 lm!2251)))))))

(declare-fun bm!335960 () Bool)

(assert (=> bm!335960 (= call!335965 (contains!18567 e!3008923 key!5322))))

(declare-fun c!820816 () Bool)

(assert (=> bm!335960 (= c!820816 c!820815)))

(declare-fun b!4816013 () Bool)

(declare-fun lt!1966814 () Unit!141944)

(assert (=> b!4816013 (= e!3008922 lt!1966814)))

(declare-fun lt!1966818 () Unit!141944)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2347 (List!54870 K!16402) Unit!141944)

(assert (=> b!4816013 (= lt!1966818 (lemmaContainsKeyImpliesGetValueByKeyDefined!2347 (toList!7314 (extractMap!2615 (toList!7313 lm!2251))) key!5322))))

(assert (=> b!4816013 (isDefined!10544 (getValueByKey!2561 (toList!7314 (extractMap!2615 (toList!7313 lm!2251))) key!5322))))

(declare-fun lt!1966820 () Unit!141944)

(assert (=> b!4816013 (= lt!1966820 lt!1966818)))

(declare-fun lemmaInListThenGetKeysListContains!1130 (List!54870 K!16402) Unit!141944)

(assert (=> b!4816013 (= lt!1966814 (lemmaInListThenGetKeysListContains!1130 (toList!7314 (extractMap!2615 (toList!7313 lm!2251))) key!5322))))

(assert (=> b!4816013 call!335965))

(assert (= (and d!1541380 c!820815) b!4816013))

(assert (= (and d!1541380 (not c!820815)) b!4816008))

(assert (= (and b!4816008 c!820814) b!4816011))

(assert (= (and b!4816008 (not c!820814)) b!4816006))

(assert (= (or b!4816013 b!4816008) bm!335960))

(assert (= (and bm!335960 c!820816) b!4816012))

(assert (= (and bm!335960 (not c!820816)) b!4816009))

(assert (= (and d!1541380 res!2048684) b!4816007))

(assert (= (and d!1541380 (not res!2048682)) b!4816010))

(assert (= (and b!4816010 res!2048683) b!4816005))

(declare-fun m!5802302 () Bool)

(assert (=> d!1541380 m!5802302))

(assert (=> b!4816007 m!5802182))

(declare-fun m!5802304 () Bool)

(assert (=> b!4816007 m!5802304))

(assert (=> b!4816007 m!5802304))

(declare-fun m!5802306 () Bool)

(assert (=> b!4816007 m!5802306))

(declare-fun m!5802308 () Bool)

(assert (=> b!4816012 m!5802308))

(assert (=> b!4816009 m!5802182))

(assert (=> b!4816009 m!5802304))

(assert (=> b!4816005 m!5802182))

(assert (=> b!4816005 m!5802304))

(assert (=> b!4816005 m!5802304))

(assert (=> b!4816005 m!5802306))

(assert (=> b!4816011 m!5802302))

(declare-fun m!5802310 () Bool)

(assert (=> b!4816011 m!5802310))

(declare-fun m!5802312 () Bool)

(assert (=> b!4816010 m!5802312))

(assert (=> b!4816010 m!5802312))

(declare-fun m!5802314 () Bool)

(assert (=> b!4816010 m!5802314))

(declare-fun m!5802316 () Bool)

(assert (=> bm!335960 m!5802316))

(declare-fun m!5802318 () Bool)

(assert (=> b!4816013 m!5802318))

(assert (=> b!4816013 m!5802312))

(assert (=> b!4816013 m!5802312))

(assert (=> b!4816013 m!5802314))

(declare-fun m!5802320 () Bool)

(assert (=> b!4816013 m!5802320))

(assert (=> b!4815906 d!1541380))

(declare-fun bs!1160563 () Bool)

(declare-fun d!1541386 () Bool)

(assert (= bs!1160563 (and d!1541386 start!498300)))

(declare-fun lambda!234537 () Int)

(assert (=> bs!1160563 (= lambda!234537 lambda!234515)))

(declare-fun bs!1160564 () Bool)

(assert (= bs!1160564 (and d!1541386 d!1541368)))

(assert (=> bs!1160564 (= lambda!234537 lambda!234528)))

(declare-fun bs!1160565 () Bool)

(assert (= bs!1160565 (and d!1541386 d!1541378)))

(assert (=> bs!1160565 (not (= lambda!234537 lambda!234531))))

(declare-fun lt!1966835 () ListMap!6727)

(declare-fun invariantList!1788 (List!54870) Bool)

(assert (=> d!1541386 (invariantList!1788 (toList!7314 lt!1966835))))

(declare-fun e!3008932 () ListMap!6727)

(assert (=> d!1541386 (= lt!1966835 e!3008932)))

(declare-fun c!820822 () Bool)

(assert (=> d!1541386 (= c!820822 (is-Cons!54747 (toList!7313 lm!2251)))))

(assert (=> d!1541386 (forall!12471 (toList!7313 lm!2251) lambda!234537)))

(assert (=> d!1541386 (= (extractMap!2615 (toList!7313 lm!2251)) lt!1966835)))

(declare-fun b!4816027 () Bool)

(declare-fun addToMapMapFromBucket!1765 (List!54870 ListMap!6727) ListMap!6727)

(assert (=> b!4816027 (= e!3008932 (addToMapMapFromBucket!1765 (_2!32190 (h!61179 (toList!7313 lm!2251))) (extractMap!2615 (t!362367 (toList!7313 lm!2251)))))))

(declare-fun b!4816028 () Bool)

(assert (=> b!4816028 (= e!3008932 (ListMap!6728 Nil!54746))))

(assert (= (and d!1541386 c!820822) b!4816027))

(assert (= (and d!1541386 (not c!820822)) b!4816028))

(declare-fun m!5802330 () Bool)

(assert (=> d!1541386 m!5802330))

(declare-fun m!5802332 () Bool)

(assert (=> d!1541386 m!5802332))

(declare-fun m!5802334 () Bool)

(assert (=> b!4816027 m!5802334))

(assert (=> b!4816027 m!5802334))

(declare-fun m!5802336 () Bool)

(assert (=> b!4816027 m!5802336))

(assert (=> b!4815906 d!1541386))

(declare-fun d!1541392 () Bool)

(declare-fun res!2048692 () Bool)

(declare-fun e!3008937 () Bool)

(assert (=> d!1541392 (=> res!2048692 e!3008937)))

(assert (=> d!1541392 (= res!2048692 (not (is-Cons!54746 lt!1966735)))))

(assert (=> d!1541392 (= (noDuplicateKeys!2406 lt!1966735) e!3008937)))

(declare-fun b!4816033 () Bool)

(declare-fun e!3008938 () Bool)

(assert (=> b!4816033 (= e!3008937 e!3008938)))

(declare-fun res!2048693 () Bool)

(assert (=> b!4816033 (=> (not res!2048693) (not e!3008938))))

(assert (=> b!4816033 (= res!2048693 (not (containsKey!4239 (t!362366 lt!1966735) (_1!32189 (h!61178 lt!1966735)))))))

(declare-fun b!4816034 () Bool)

(assert (=> b!4816034 (= e!3008938 (noDuplicateKeys!2406 (t!362366 lt!1966735)))))

(assert (= (and d!1541392 (not res!2048692)) b!4816033))

(assert (= (and b!4816033 res!2048693) b!4816034))

(declare-fun m!5802338 () Bool)

(assert (=> b!4816033 m!5802338))

(declare-fun m!5802340 () Bool)

(assert (=> b!4816034 m!5802340))

(assert (=> b!4815912 d!1541392))

(assert (=> b!4815912 d!1541360))

(declare-fun bs!1160566 () Bool)

(declare-fun d!1541394 () Bool)

(assert (= bs!1160566 (and d!1541394 start!498300)))

(declare-fun lambda!234540 () Int)

(assert (=> bs!1160566 (= lambda!234540 lambda!234515)))

(declare-fun bs!1160567 () Bool)

(assert (= bs!1160567 (and d!1541394 d!1541368)))

(assert (=> bs!1160567 (= lambda!234540 lambda!234528)))

(declare-fun bs!1160568 () Bool)

(assert (= bs!1160568 (and d!1541394 d!1541378)))

(assert (=> bs!1160568 (not (= lambda!234540 lambda!234531))))

(declare-fun bs!1160569 () Bool)

(assert (= bs!1160569 (and d!1541394 d!1541386)))

(assert (=> bs!1160569 (= lambda!234540 lambda!234537)))

(assert (=> d!1541394 (not (contains!18560 (extractMap!2615 (toList!7313 lm!2251)) key!5322))))

(declare-fun lt!1966841 () Unit!141944)

(declare-fun choose!34923 (ListLongMap!5793 K!16402 Hashable!7165) Unit!141944)

(assert (=> d!1541394 (= lt!1966841 (choose!34923 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541394 (forall!12471 (toList!7313 lm!2251) lambda!234540)))

(assert (=> d!1541394 (= (lemmaNotInItsHashBucketThenNotInMap!437 lm!2251 key!5322 hashF!1486) lt!1966841)))

(declare-fun bs!1160570 () Bool)

(assert (= bs!1160570 d!1541394))

(assert (=> bs!1160570 m!5802182))

(assert (=> bs!1160570 m!5802182))

(assert (=> bs!1160570 m!5802184))

(declare-fun m!5802346 () Bool)

(assert (=> bs!1160570 m!5802346))

(declare-fun m!5802348 () Bool)

(assert (=> bs!1160570 m!5802348))

(assert (=> b!4815908 d!1541394))

(declare-fun b!4816042 () Bool)

(declare-fun e!3008944 () Bool)

(declare-fun tp!1361884 () Bool)

(declare-fun tp!1361885 () Bool)

(assert (=> b!4816042 (= e!3008944 (and tp!1361884 tp!1361885))))

(assert (=> b!4815907 (= tp!1361876 e!3008944)))

(assert (= (and b!4815907 (is-Cons!54747 (toList!7313 lm!2251))) b!4816042))

(declare-fun b_lambda!188431 () Bool)

(assert (= b_lambda!188425 (or start!498300 b_lambda!188431)))

(declare-fun bs!1160571 () Bool)

(declare-fun d!1541398 () Bool)

(assert (= bs!1160571 (and d!1541398 start!498300)))

(assert (=> bs!1160571 (= (dynLambda!22161 lambda!234515 lt!1966734) (noDuplicateKeys!2406 (_2!32190 lt!1966734)))))

(declare-fun m!5802350 () Bool)

(assert (=> bs!1160571 m!5802350))

(assert (=> d!1541360 d!1541398))

(declare-fun b_lambda!188433 () Bool)

(assert (= b_lambda!188427 (or start!498300 b_lambda!188433)))

(declare-fun bs!1160572 () Bool)

(declare-fun d!1541400 () Bool)

(assert (= bs!1160572 (and d!1541400 start!498300)))

(assert (=> bs!1160572 (= (dynLambda!22161 lambda!234515 (h!61179 (toList!7313 lm!2251))) (noDuplicateKeys!2406 (_2!32190 (h!61179 (toList!7313 lm!2251)))))))

(declare-fun m!5802352 () Bool)

(assert (=> bs!1160572 m!5802352))

(assert (=> b!4815983 d!1541400))

(push 1)

(assert (not bs!1160572))

(assert (not b!4816013))

(assert (not d!1541354))

(assert (not d!1541380))

(assert (not d!1541368))

(assert (not b!4816007))

(assert tp_is_empty!34203)

(assert (not b!4815940))

(assert (not b!4815948))

(assert (not b!4816027))

(assert (not d!1541358))

(assert (not b!4816033))

(assert (not b!4815951))

(assert (not b!4815973))

(assert (not b!4816010))

(assert (not b!4815975))

(assert (not d!1541360))

(assert (not b!4816034))

(assert (not b!4816005))

(assert (not d!1541364))

(assert (not b!4815977))

(assert (not d!1541370))

(assert (not b!4816011))

(assert (not bs!1160571))

(assert (not b_lambda!188433))

(assert (not b!4815972))

(assert (not b!4815984))

(assert (not d!1541394))

(assert (not d!1541350))

(assert (not d!1541376))

(assert (not b_lambda!188431))

(assert (not d!1541378))

(assert (not d!1541352))

(assert (not b!4816042))

(assert (not d!1541362))

(assert (not d!1541386))

(assert (not b!4815976))

(assert (not b!4816009))

(assert (not b!4815942))

(assert (not b!4816012))

(assert (not bm!335960))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

